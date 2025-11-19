@interface MobileAssetKeyManager
- (BOOL)decryptContentEncryptedAssetAtURL:(id)a3 assetAttributes:(id)a4 error:(id *)a5;
- (BOOL)decryptFileAtURL:(id)a3 metadata:(id)a4 key:(id)a5 error:(id *)a6;
- (BOOL)isWellFormedTokenFileName:(id)a3;
- (BOOL)keyManagerResult:(int64_t)a3 underlying:(id)a4 description:(id)a5 error:(id *)a6;
- (BOOL)shouldDisableUIForUsage:(id)a3 assetAttributes:(id)a4 downloadOptions:(id)a5;
- (MobileAssetKeyManager)init;
- (MobileAssetKeyManager)initWithDelegate:(id)a3;
- (id)base64EncodedStringFromString:(id)a3;
- (id)buildKeyManagerError:(int64_t)a3 underlying:(id)a4 description:(id)a5;
- (id)copyDawToken:(BOOL)a3 useAppleConnect:(BOOL)a4 error:(id *)a5;
- (id)copyDawTokenFileName;
- (id)copyDawTokenFromOverrides;
- (id)copyDawTokenInternal:(BOOL)a3 useAppleConnect:(BOOL)a4 error:(id *)a5;
- (id)copyPersonalizationSSOToken:(BOOL)a3 error:(id *)a4;
- (id)copyPersonalizationSSOTokenInternal:(BOOL)a3 error:(id *)a4;
- (id)createGetDecryptionKeyRequestForKnox:(id)a3 authData:(id)a4 keyFetchBaseURLString:(id)a5 apTicket:(id)a6 assetAttributes:(id)a7 error:(id *)a8;
- (id)fetchDSMEKey;
- (id)getDecryptionKey:(id)a3 downloadOptions:(id)a4 apTicket:(id)a5 skipKnoxLookup:(BOOL)a6 disableUI:(BOOL)a7 error:(id *)a8;
- (id)getDecryptionKeyFromAssetMetadataOrDownloadOptions:(id)a3 downloadOptions:(id)a4 error:(id *)a5;
- (id)getDecryptionKeyFromAssetMetadataOrDownloadOptionsInternal:(id)a3 downloadOptions:(id)a4 error:(id *)a5;
- (id)getDecryptionKeyFromKnoxUsingAssetAttributes:(id)a3 downloadOptions:(id)a4 apTicket:(id)a5 disableUI:(BOOL)a6 error:(id *)a7;
- (id)getDecryptionKeyFromKnoxUsingAssetAttributesInternal:(id)a3 downloadOptions:(id)a4 apTicket:(id)a5 disableUI:(BOOL)a6 error:(id *)a7;
- (id)normalizedAuthToken:(id)a3 source:(id)a4;
- (id)requestServerForDecryptionKey:(id)a3 recipientPrivateKey:(__SecKey *)a4 downloadOptions:(id)a5 disableUI:(BOOL)a6 err:(id *)a7;
- (void)appendPEMEncodedCertificate:(__SecCertificate *)a3 toString:(id)a4;
- (void)appendPEMEncodedData:(id)a3 type:(id)a4 toString:(id)a5;
- (void)dealloc;
@end

@implementation MobileAssetKeyManager

- (MobileAssetKeyManager)init
{
  v3 = [[MAKeyManagerDownloadSessionDelegate alloc] initWithName:@"KeyManagerSession" certType:1];
  v4 = [(MobileAssetKeyManager *)self initWithDelegate:v3];

  return v4;
}

- (MobileAssetKeyManager)initWithDelegate:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = MobileAssetKeyManager;
  v6 = [(MobileAssetKeyManager *)&v22 init];
  if (v6)
  {
    v7 = [@"com.apple.MobileAsset.keyManagerQueue" UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    keyManagerQueue = v6->_keyManagerQueue;
    v6->_keyManagerQueue = v9;

    v11 = [@"com.apple.MobileAsset.KeyManager.SSOQueue" UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    ssoQueue = v6->_ssoQueue;
    v6->_ssoQueue = v13;

    v15 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    knoxSessionConfig = v6->_knoxSessionConfig;
    v6->_knoxSessionConfig = v15;

    [(NSURLSessionConfiguration *)v6->_knoxSessionConfig setTimeoutIntervalForRequest:90.0];
    [(NSURLSessionConfiguration *)v6->_knoxSessionConfig setTimeoutIntervalForResource:90.0];
    [(NSURLSessionConfiguration *)v6->_knoxSessionConfig setAllowsCellularAccess:1];
    [(NSURLSessionConfiguration *)v6->_knoxSessionConfig setWaitsForConnectivity:1];
    [(NSURLSessionConfiguration *)v6->_knoxSessionConfig set_downloadFileProtectionType:NSFileProtectionNone];
    [(NSURLSessionConfiguration *)v6->_knoxSessionConfig set_shouldSkipPreferredClientCertificateLookup:1];
    objc_storeStrong(&v6->_downloadSessionDelegate, a3);
    v17 = v6->_knoxSessionConfig;
    v18 = [v5 queue];
    v19 = [NSURLSession sessionWithConfiguration:v17 delegate:v5 delegateQueue:v18];
    knoxSession = v6->_knoxSession;
    v6->_knoxSession = v19;
  }

  return v6;
}

- (void)dealloc
{
  [(NSURLSession *)self->_knoxSession invalidateAndCancel];
  v3.receiver = self;
  v3.super_class = MobileAssetKeyManager;
  [(MobileAssetKeyManager *)&v3 dealloc];
}

- (id)buildKeyManagerError:(int64_t)a3 underlying:(id)a4 description:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 domain];
  v10 = [v9 isEqualToString:@"MAKeyManagerErrorDomain"];

  if (v10)
  {
    v11 = v7;
  }

  else
  {
    v12 = objc_opt_new();
    [v12 setSafeObject:v8 forKey:NSLocalizedDescriptionKey];
    if (v7)
    {
      [v12 setSafeObject:v7 forKey:NSUnderlyingErrorKey];
    }

    v11 = [NSError errorWithDomain:@"MAKeyManagerErrorDomain" code:a3 userInfo:v12];
  }

  return v11;
}

- (BOOL)keyManagerResult:(int64_t)a3 underlying:(id)a4 description:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [(MobileAssetKeyManager *)self buildKeyManagerError:a3 underlying:a4 description:a5];
  }

  return 0;
}

- (BOOL)isWellFormedTokenFileName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (isWellFormedTokenFileName__once == -1)
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:
    v5 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "TokenFileName passed in was null";
      v7 = buf;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  [MobileAssetKeyManager isWellFormedTokenFileName:];
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v6 = "TokenFileName passed in is not a string";
      v7 = &v13;
      goto LABEL_20;
    }

LABEL_21:

    v8 = 0;
    goto LABEL_22;
  }

  if ([v4 length] < 5 || objc_msgSend(v4, "length") >= 0x81)
  {
    v5 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v6 = "TokenFileName passed in has an invalid length";
      v7 = &v12;
LABEL_20:
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if ([v4 rangeOfCharacterFromSet:isWellFormedTokenFileName__disallowedSet] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v6 = "TokenFileName passed in contains invalid characters in string";
      v7 = &v11;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (([v4 hasSuffix:@".tok"] & 1) == 0)
  {
    v5 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v6 = "TokenFileName passed in has an invalid file suffix";
      v7 = &v10;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v8 = 1;
LABEL_22:

  return v8;
}

void __51__MobileAssetKeyManager_isWellFormedTokenFileName___block_invoke(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_-/"];
  v3 = [v2 invertedSet];
  v4 = isWellFormedTokenFileName__disallowedSet;
  isWellFormedTokenFileName__disallowedSet = v3;

  objc_autoreleasePoolPop(v1);
}

- (id)copyDawTokenFileName
{
  v3 = [(MobileAssetKeyManager *)self copyPreferencesValue:@"MobileAssetTokenFile"];
  if (v3 && [(MobileAssetKeyManager *)self isWellFormedTokenFileName:v3])
  {
    v4 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[MobileAssetKeyManager copyDawTokenFileName]";
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s: Using token file name from preferences (%@)", buf, 0x16u);
    }

    v5 = v3;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __45__MobileAssetKeyManager_copyDawTokenFileName__block_invoke;
    block[3] = &unk_4B2AA0;
    block[4] = self;
    if (copyDawTokenFileName_readDawTokenFileNameFromNVRAMOnce != -1)
    {
      dispatch_once(&copyDawTokenFileName_readDawTokenFileNameFromNVRAMOnce, block);
    }

    if (!copyDawTokenFileName_nvramTokenFileName)
    {
      v7 = 0;
      goto LABEL_14;
    }

    v6 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[MobileAssetKeyManager copyDawTokenFileName]";
      v12 = 2112;
      v13 = copyDawTokenFileName_nvramTokenFileName;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%s: Using token file name from NVRAM (%@)", buf, 0x16u);
    }

    v5 = copyDawTokenFileName_nvramTokenFileName;
  }

  v7 = v5;
LABEL_14:

  return v7;
}

void __45__MobileAssetKeyManager_copyDawTokenFileName__block_invoke(uint64_t a1)
{
  v2 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[MobileAssetKeyManager copyDawTokenFileName]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%s: Attempting to read daw token file name from nvram", buf, 0xCu);
  }

  mainPort = 0;
  v3 = IOMasterPort(bootstrap_port, &mainPort);
  if (!v3)
  {
    v10 = IORegistryEntryFromPath(mainPort, "IODeviceTree:/options");
    if (v10)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v10, @"ma-token-file", kCFAllocatorDefault, 0);
      if (CFProperty)
      {
        v12 = CFProperty;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [[NSString alloc] initWithData:v12 encoding:4];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v5 = 0;
LABEL_20:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 32) isWellFormedTokenFileName:v5])
            {
              v14 = v5;
              v15 = copyDawTokenFileName_nvramTokenFileName;
              copyDawTokenFileName_nvramTokenFileName = v14;
            }

            else
            {
              v15 = _MAClientLog(@"KeyManager");
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v16 = @"YES";
                }

                else
                {
                  v16 = @"NO";
                }

                v17 = [*(a1 + 32) isWellFormedTokenFileName:v5];
                *buf = 136315650;
                v21 = "[MobileAssetKeyManager copyDawTokenFileName]_block_invoke";
                if (v17)
                {
                  v18 = @"YES";
                }

                else
                {
                  v18 = @"NO";
                }

                v22 = 2112;
                v23 = v16;
                v24 = 2112;
                v25 = v18;
                _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%s: Value read from nvram is invalid. Valid Class: %@ WellFormedName:%@", buf, 0x20u);
              }
            }

            goto LABEL_32;
          }

          v13 = [v12 copy];
        }

        v5 = v13;
        goto LABEL_20;
      }

      v5 = _MAClientLog(@"KeyManager");
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 136315138;
      v21 = "[MobileAssetKeyManager copyDawTokenFileName]_block_invoke";
      v6 = "%s: No token file name set in nvram";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v5 = _MAClientLog(@"KeyManager");
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      *buf = 136315138;
      v21 = "[MobileAssetKeyManager copyDawTokenFileName]_block_invoke";
      v6 = "%s: Unable to get token file path from NVRAM (unable to get options entry from the device tree)";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
    }

    v9 = 12;
    goto LABEL_15;
  }

  v4 = v3;
  v5 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[MobileAssetKeyManager copyDawTokenFileName]_block_invoke";
    v22 = 1024;
    LODWORD(v23) = v4;
    v6 = "%s: Unable to get token file path from NVRAM (Could not get main port [%d])";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 18;
LABEL_15:
    _os_log_impl(&dword_0, v7, v8, v6, buf, v9);
  }

LABEL_32:
}

- (id)normalizedAuthToken:(id)a3 source:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  v9 = [v8 rangeOfString:@" "];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v5;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Read stashed token from %{public}@ (raw)", &v17, 0xCu);
    }
  }

  else
  {
    v12 = v9;
    v13 = v10;
    v11 = [v8 substringToIndex:v9];
    v14 = [v8 substringFromIndex:&v12[v13]];

    v15 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Read stashed token from %{public}@ (Authorization: %{public}@)", &v17, 0x16u);
    }

    v8 = v14;
  }

  return v8;
}

- (id)copyDawTokenFromOverrides
{
  p_super = &self->super;
  v3 = [(MobileAssetKeyManager *)self copyPreferencesValue:@"MobileAssetTokenOverride"];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v4 = [p_super copyDawTokenFileName];
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = [NSURL fileURLWithPath:@"/private/var/MobileSoftwareUpdate/MobileAsset/" isDirectory:1];
    v6 = [NSURL fileURLWithPath:v4 isDirectory:0 relativeToURL:v5];
    v7 = [v6 absoluteURL];

    v8 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Attempting to read stashed token from %@", buf, 0xCu);
    }

    v17 = 0;
    v9 = [NSFileHandle fileHandleForReadingFromURL:v7 error:&v17];
    v10 = v17;
    if (v9)
    {
      v16 = 0;
      v11 = [v9 readDataUpToLength:2048 error:&v16];
      v12 = v16;
      if (v11)
      {
        v13 = [[NSString alloc] initWithData:v11 encoding:4];

        p_super = [p_super normalizedAuthToken:v13 source:@"file"];

        v14 = 0;
        v3 = v13;
        goto LABEL_16;
      }

      p_super = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = v7;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_ERROR, "Failed to read stashed token from %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v12 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = v7;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to get handle for token file %@: %@", buf, 0x16u);
      }
    }

    v14 = 1;
LABEL_16:

    if (!v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    p_super = 0;
    goto LABEL_18;
  }

  p_super = [p_super normalizedAuthToken:v3 source:@"defaults"];
  v4 = 0;
LABEL_18:

  return p_super;
}

- (id)copyDawTokenInternal:(BOOL)a3 useAppleConnect:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_ssoQueue);
  v9 = [(MobileAssetKeyManager *)self copyDawTokenFromOverrides];
  v10 = _MAClientLog(@"KeyManager");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Using DAW token set via override.", &v22, 2u);
    }

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  if (!a4)
  {
    if (v11)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Not querying AppleConnect for token", &v22, 2u);
    }

    v9 = 0;
    goto LABEL_20;
  }

  if (v11)
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Querying AppleConnect for token", &v22, 2u);
  }

  if (MSUSSOIsAvailable(@"177666"))
  {
    v12 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"default";
      if (v7)
      {
        v13 = @"silent";
      }

      v22 = 138412290;
      v23 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "SSO supported. Attempting to get daw token using %@ interactivity level", &v22, 0xCu);
    }

    v9 = copyDawToken(@"177666", v7);
    v14 = _MAClientLog(@"KeyManager");
    v15 = v14;
    if (v9)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Successfully read out token", &v22, 2u);
      }

      goto LABEL_20;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = @"Failed to read daw token from AppleConnect";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%@", &v22, 0xCu);
    }

    v19 = @"Failed to read daw token from AppleConnect";
    v20 = self;
    v21 = 30016;
  }

  else
  {
    v18 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = @"AppleConnect not installed in this environment";
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%@", &v22, 0xCu);
    }

    v19 = @"AppleConnect not installed in this environment";
    v20 = self;
    v21 = 30015;
  }

  v16 = [(MobileAssetKeyManager *)v20 buildKeyManagerError:v21 underlying:0 description:v19];
  v9 = 0;
  if (a5 && v16)
  {
    v16 = v16;
    v9 = 0;
    *a5 = v16;
  }

LABEL_21:

  return v9;
}

- (id)copyPersonalizationSSOTokenInternal:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_ssoQueue);
  v7 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Querying AppleConnect for token", buf, 2u);
  }

  v8 = MSUSSOIsAvailable(@"177666");
  v9 = _MAClientLog(@"KeyManager");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"default";
      if (v5)
      {
        v11 = @"silent";
      }

      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "SSO supported. Attempting to get daw token using %@ interactivity level", buf, 0xCu);
    }

    v24 = @"stealthMode";
    v12 = [NSNumber numberWithBool:v5];
    v25 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    v23 = 0;
    v14 = copyPersonalizationSSOToken(v13, &v23);
    v15 = v23;
    v16 = [v14 objectForKeyedSubscript:@"ssodata"];
    v17 = _MAClientLog(@"KeyManager");
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Successfully read out token", buf, 2u);
      }

      if (!a4)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (v15)
      {
        v20 = v15;
        *a4 = v15;
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = @"Failed to read daw token from AppleConnect";
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v19 = [(MobileAssetKeyManager *)self buildKeyManagerError:30016 underlying:0 description:@"Failed to read daw token from AppleConnect"];

    v16 = 0;
    v15 = v19;
    if (a4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = @"AppleConnect not installed in this environment";
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v15 = [(MobileAssetKeyManager *)self buildKeyManagerError:30015 underlying:0 description:@"AppleConnect not installed in this environment"];
    v13 = 0;
    v14 = 0;
    v16 = 0;
    if (a4)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  v21 = v16;

  return v21;
}

- (BOOL)shouldDisableUIForUsage:(id)a3 assetAttributes:(id)a4 downloadOptions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSMutableArray array];
  if (v9)
  {
    if ([v9 discretionary])
    {
      [v10 addObject:@"discretionary download"];
    }

    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && [v9 disableUI])
    {
      [v10 addObject:@"non-ui download"];
    }
  }

  if (v8)
  {
    v11 = [v8 objectForKeyedSubscript:@"AssetType"];
    v12 = [v8 objectForKeyedSubscript:@"_AllowUserInteraction"];
    if (!v12)
    {
      if (isUserInteractionAllowedType(v11))
      {
        v12 = &__kCFBooleanTrue;
      }

      else
      {
        v12 = 0;
      }
    }

    if (([v12 BOOLValue] & 1) == 0)
    {
      [v10 addObject:@"non-ui asset"];
    }
  }

  else
  {
    v11 = @"any";
  }

  v13 = [v10 count];
  v14 = _MAClientLog(@"KeyManager");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = [v10 componentsJoinedByString:{@", "}];
      v18 = 138543874;
      v19 = v7;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "AppleConnect prompt disabled for %{public}@ (%{public}@): %{public}@", &v18, 0x20u);
    }
  }

  else if (v15)
  {
    v18 = 138543618;
    v19 = v7;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "AppleConnect prompt allowed for %{public}@ (%{public}@)", &v18, 0x16u);
  }

  return v13 != 0;
}

- (void)appendPEMEncodedData:(id)a3 type:(id)a4 toString:(id)a5
{
  v7 = a5;
  v10 = a4;
  v8 = a3;
  [v7 appendFormat:@"-----BEGIN %@-----\n", v10];
  v9 = [v8 base64EncodedStringWithOptions:33];

  [v7 appendString:v9];
  [v7 appendFormat:@"\n-----END %@-----\n", v10];
}

- (void)appendPEMEncodedCertificate:(__SecCertificate *)a3 toString:(id)a4
{
  v6 = a4;
  v7 = SecCertificateCopyData(a3);
  [(MobileAssetKeyManager *)self appendPEMEncodedData:v7 type:@"CERTIFICATE" toString:v6];
}

- (id)base64EncodedStringFromString:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

- (id)createGetDecryptionKeyRequestForKnox:(id)a3 authData:(id)a4 keyFetchBaseURLString:(id)a5 apTicket:(id)a6 assetAttributes:(id)a7 error:(id *)a8
{
  v13 = a3;
  v45 = a4;
  v14 = a5;
  v44 = a6;
  v15 = a7;
  v16 = [(MobileAssetKeyManager *)self keyManagerQueue];
  dispatch_assert_queue_V2(v16);

  v42 = v14;
  v39 = [v14 stringByAppendingString:@"/keys/fetch"];
  v40 = [NSURL URLWithString:?];
  v17 = [NSMutableURLRequest requestWithURL:?];
  v18 = objc_opt_new();
  v19 = MGCopyAnswer();
  v41 = v15;
  v20 = [v15 objectForKeyedSubscript:@"AssetType"];
  v21 = @"unknownAssetType";
  if (v20)
  {
    v21 = v20;
  }

  v22 = @"unknownBuildVersion";
  if (v19)
  {
    v22 = v19;
  }

  v43 = [NSString stringWithFormat:@"MobileAsset/%s MAAssetType/%@ BuildVersion/%@", "1", v21, v22];
  v23 = +[NSMutableString string];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v24 = v13;
  v25 = [v24 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(MobileAssetKeyManager *)self appendPEMEncodedCertificate:*(*(&v47 + 1) + 8 * i) toString:v23];
      }

      v26 = [v24 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v26);
  }

  v29 = [(MobileAssetKeyManager *)self base64EncodedStringFromString:v23];
  [(__CFString *)v18 setObject:v29 forKeyedSubscript:@"cert-chain"];

  [(__CFString *)v18 setObject:v45 forKeyedSubscript:@"auth-data"];
  [(__CFString *)v18 setObject:v44 forKeyedSubscript:@"ap-ticket"];
  if ([NSJSONSerialization isValidJSONObject:v18])
  {
    v30 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = v18;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "[KnoxDecryptionKeyRequest]: Params for knox request are : %{public}@", buf, 0xCu);
    }

    v46 = 0;
    v31 = [NSJSONSerialization dataWithJSONObject:v18 options:1 error:&v46];
    v32 = v46;
    if (v31)
    {
      [v17 setHTTPBody:v31];
      [v17 setValue:v43 forHTTPHeaderField:@"User-Agent"];
      [v17 setCachePolicy:4];
      [v17 setHTTPMethod:@"POST"];
      [v17 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      [v17 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
      v33 = 0;
      goto LABEL_24;
    }

    v33 = [(MobileAssetKeyManager *)self buildKeyManagerError:30011 underlying:0 description:@"Failed to convert valid server params to json"];
    v34 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v52 = @"Failed to convert valid server params to json";
      v53 = 2114;
      v54 = v18;
      v55 = 2114;
      v56 = v32;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "[KnoxDecryptionKeyRequest]: %{public}@ : Params: %{public}@, Error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v33 = [(MobileAssetKeyManager *)self buildKeyManagerError:30011 underlying:0 description:@"Server params cannot be converted to json"];
    v34 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v52 = @"Server params cannot be converted to json";
      v53 = 2114;
      v54 = v18;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "[KnoxDecryptionKeyRequest]: %{public}@ : Params: %{public}@", buf, 0x16u);
    }

    v32 = 0;
  }

  v17 = 0;
  if (a8 && v33)
  {
    v35 = v33;
    v17 = 0;
    v31 = 0;
    *a8 = v33;
  }

  else
  {
    v31 = 0;
  }

LABEL_24:
  v36 = v17;

  return v17;
}

- (id)requestServerForDecryptionKey:(id)a3 recipientPrivateKey:(__SecKey *)a4 downloadOptions:(id)a5 disableUI:(BOOL)a6 err:(id *)a7
{
  v11 = a3;
  v12 = a5;
  dispatch_assert_queue_V2(self->_keyManagerQueue);
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__19;
  v56 = __Block_byref_object_dispose__19;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__19;
  v50 = __Block_byref_object_dispose__19;
  v51 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = __105__MobileAssetKeyManager_requestServerForDecryptionKey_recipientPrivateKey_downloadOptions_disableUI_err___block_invoke;
  v40[3] = &unk_4B6548;
  v42 = &v46;
  v43 = &v58;
  v40[4] = self;
  v44 = &v52;
  v45 = a4;
  v13 = dispatch_semaphore_create(0);
  v41 = v13;
  v14 = objc_retainBlock(v40);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __105__MobileAssetKeyManager_requestServerForDecryptionKey_recipientPrivateKey_downloadOptions_disableUI_err___block_invoke_1290;
  v25[3] = &unk_4B6570;
  v15 = v12;
  v31 = &v36;
  v35 = a6;
  v26 = v15;
  v27 = self;
  v16 = v11;
  v28 = v16;
  v32 = &v46;
  v33 = &v52;
  v34 = &v58;
  v17 = v14;
  v30 = v17;
  v18 = v13;
  v29 = v18;
  v19 = objc_retainBlock(v25);
  (v19[2])(v19, 0, 0);
  v20 = v53[5];
  if (!v20)
  {
    if (*(v59 + 24) != 1 || (v37[3] & 1) != 0 || ((v19[2])(v19, 1, 1), (v20 = v53[5]) == 0))
    {
      v20 = 0;
      if (a7)
      {
        v21 = v47[5];
        if (v21)
        {
          *a7 = v21;
          v20 = v53[5];
        }
      }
    }
  }

  v22 = v20;

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  return v22;
}

void __105__MobileAssetKeyManager_requestServerForDecryptionKey_recipientPrivateKey_downloadOptions_disableUI_err___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[KnoxServerResponse]: Running knoxKeyReadTask callback", buf, 2u);
  }

  v61 = v8;
  if (v9)
  {
    v11 = [(__CFString *)v9 description];
    v12 = [NSString stringWithFormat:@"Got networking error from Knox key read request: %@", v11];

    v13 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v65 = v9;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[KnoxServerResponse]: Request failed with network error: %{public}@", buf, 0xCu);
    }

    v14 = [*(a1 + 32) buildKeyManagerError:30018 underlying:v9 description:v12];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v60 = 0;
    goto LABEL_37;
  }

  v22 = v8;
  v23 = [v22 statusCode];
  v24 = [NSHTTPURLResponse localizedStringForStatusCode:v23];
  v60 = v24;
  if (v23 != stru_B8.segname)
  {
    v34 = [[NSString alloc] initWithData:v7 encoding:4];
    v35 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v12 = [v34 stringByTrimmingCharactersInSet:v35];

    v36 = [NSString stringWithFormat:@"%ld %@: %@", v23, v24, v12];
    v37 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v65 = v36;
      v66 = 2114;
      v67 = v22;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "[KnoxServerResponse]: Request failed with HTTP error: %{public}@\n%{public}@", buf, 0x16u);
    }

    v38 = [*(a1 + 32) buildKeyManagerError:30019 underlying:0 description:v36];
    v39 = *(*(a1 + 48) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v38;

    *(*(*(a1 + 56) + 8) + 24) = (v23 & 0xFFFFFFFFFFFFFFFDLL) == 401;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_37;
  }

  v25 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v7 length];
    *buf = 134218498;
    v65 = (&stru_B8 + 16);
    v66 = 2114;
    v67 = v24;
    v68 = 2048;
    v69 = v26;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "[KnoxServerResponse]: Request succeeded: %ld %{public}@ (%lu bytes)", buf, 0x20u);
  }

  if (!v7)
  {
    v48 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v65 = @"No data in response from Knox";
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "[KnoxServerResponse]: %{public}@", buf, 0xCu);
    }

    v49 = [*(a1 + 32) buildKeyManagerError:30020 underlying:0 description:@"No data in response from Knox"];
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_36;
  }

  v63 = 0;
  v21 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v63];
  v20 = v63;
  if (v20 || !v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v59 = v7;
    v41 = [v20 description];
    if (v21)
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = @"YES";
    }

    else
    {
      v43 = @"NO";
    }

    v12 = [NSString stringWithFormat:@"Response data from Knox invalid Error:%@ responseDictPresent: %@ responseDictTypeValid: %@", v41, v42, v43];

    v44 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v65 = v12;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "[KnoxServerResponse]: %{public}@", buf, 0xCu);
    }

    v45 = [*(a1 + 32) buildKeyManagerError:30021 underlying:v20 description:v12];
    v46 = *(*(a1 + 48) + 8);
    v47 = *(v46 + 40);
    *(v46 + 40) = v45;

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v7 = v59;
    goto LABEL_37;
  }

  v18 = [v21 objectForKeyedSubscript:@"enc-request"];
  v27 = [v21 objectForKeyedSubscript:@"wrapped-key"];
  v17 = v27;
  if (!v18 || !v27)
  {
    v51 = @"Absent";
    if (v27)
    {
      v52 = @"Present";
    }

    else
    {
      v52 = @"Absent";
    }

    if (v18)
    {
      v51 = @"Present";
    }

    v12 = [NSString stringWithFormat:@"Knox did not return expected info. enc-request: %@ wrapped-key:%@", v52, v51];
    v53 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v65 = v12;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "[KnoxServerResponse] : %{public}@", buf, 0xCu);
    }

    v54 = [*(a1 + 32) buildKeyManagerError:30021 underlying:0 description:v12];
    v55 = *(*(a1 + 48) + 8);
    v56 = *(v55 + 40);
    *(v55 + 40) = v54;

    v19 = 0;
    v20 = 0;
    goto LABEL_37;
  }

  v28 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "[KnoxServerResponse]: Server returned valid objects. Proceeding to unwrap key", buf, 2u);
  }

  v58 = [[NSData alloc] initWithBase64EncodedString:v17 options:0];
  v29 = [[NSData alloc] initWithBase64EncodedString:v18 options:0];
  v30 = *(a1 + 72);
  v62 = 0;
  v31 = [_TtC21MobileAssetKeyManager16CryptoKitWrapper decryptKnoxKeyWithEncData:v58 encapsulatedKey:v29 recipientPrivateKey:v30 error:&v62];
  v19 = v62;
  v32 = *(*(a1 + 64) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

  if (!*(*(*(a1 + 64) + 8) + 40) || v19)
  {
    v57 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v65 = @"Failed to unwrap decryption key";
      _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "[KnoxServerResponse]: %{public}@", buf, 0xCu);
    }

    v49 = [*(a1 + 32) buildKeyManagerError:30023 underlying:v19 description:@"Failed to unwrap decryption key"];
    v20 = 0;
LABEL_36:
    v50 = *(*(a1 + 48) + 8);
    v12 = *(v50 + 40);
    *(v50 + 40) = v49;
LABEL_37:

    goto LABEL_38;
  }

  v20 = 0;
LABEL_38:
  dispatch_semaphore_signal(*(a1 + 40));
}

void __105__MobileAssetKeyManager_requestServerForDecryptionKey_recipientPrivateKey_downloadOptions_disableUI_err___block_invoke_1290(uint64_t a1, uint64_t a2, int a3)
{
  v6 = [*(a1 + 32) downloadAuthorizationHeader];
  if ([v6 length])
  {
    v7 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[KnoxServerAuth] Using downloadAuthorizationHeader", buf, 2u);
    }

    v8 = v6;
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {
    v9 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "enabled";
      if (*(a1 + 104))
      {
        v11 = "disabled";
      }

      else
      {
        v11 = "enabled";
      }

      if (!a2)
      {
        v10 = "disabled";
      }

      *buf = 136446466;
      v29 = v11;
      v30 = 2082;
      v31 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[KnoxServerAuth] Attempting to fetch DAW token with UI %{public}s, SSO %{public}s", buf, 0x16u);
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 104);
    v27 = 0;
    v14 = [v12 copyDawToken:v13 useAppleConnect:a2 error:&v27];
    v15 = v27;
    v16 = [v14 length];
    v17 = _MAClientLog(@"KeyManager");
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[KnoxServerAuth] Using fetched DAW token", buf, 2u);
      }

      v19 = [NSString stringWithFormat:@"Bearer %@", v14];

      *(*(*(a1 + 72) + 8) + 24) = 1;
      v8 = v19;
    }

    else
    {
      if (v18)
      {
        *buf = 138412290;
        v29 = v15;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[KnoxServerAuth] Failed to fetch DAW token: %@", buf, 0xCu);
      }
    }
  }

  v20 = [*(a1 + 48) mutableCopy];
  if ([v8 length])
  {
    [v20 setValue:v8 forHTTPHeaderField:@"Authorization"];
LABEL_30:
    v23 = *(*(a1 + 80) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = 0;

    v25 = *(*(a1 + 88) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = 0;

    *(*(*(a1 + 96) + 8) + 24) = 0;
    v22 = [*(*(a1 + 40) + 24) dataTaskWithRequest:v20 completionHandler:*(a1 + 64)];
    [v22 resume];
    dispatch_semaphore_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_31;
  }

  v21 = _MAClientLog(@"KeyManager");
  v22 = v21;
  if (!a3)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[KnoxServerAuth] Proceeding without Authorization header", buf, 2u);
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "[KnoxServerAuth] Failing without Authorization header", buf, 2u);
  }

LABEL_31:
}

- (id)getDecryptionKeyFromKnoxUsingAssetAttributesInternal:(id)a3 downloadOptions:(id)a4 apTicket:(id)a5 disableUI:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(MobileAssetKeyManager *)self keyManagerQueue];
  dispatch_assert_queue_V2(v15);

  v54 = 0;
  v16 = objc_autoreleasePoolPush();
  v17 = v16;
  if (v12)
  {
    v51 = v13;
    v18 = [v12 objectForKeyedSubscript:@"__WKMSAuthData"];
    if (!v18)
    {
      v34 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v56 = @"Asset attributes do not contain KnoxWKMSAuthData";
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "[KnoxKeyRead]: %{public}@", buf, 0xCu);
      }

      v31 = [(MobileAssetKeyManager *)self buildKeyManagerError:30003 underlying:0 description:@"Asset attributes do not contain KnoxWKMSAuthData"];
      goto LABEL_37;
    }

    v19 = v18;
    v20 = [v12 objectForKeyedSubscript:@"__WKMSURL"];
    v21 = _MAClientLog(@"KeyManager");
    v22 = v21;
    if (!v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v56 = @"Asset attributes do not contain KnoxWKMSURL";
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "[KnoxKeyRead]: %{public}@", buf, 0xCu);
      }

      v31 = [(MobileAssetKeyManager *)self buildKeyManagerError:30024 underlying:0 description:@"Asset attributes do not contain KnoxWKMSURL"];
LABEL_36:

LABEL_37:
      v32 = 0;
      v33 = 0;
      v13 = v51;
      goto LABEL_38;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[KnoxKeyRead]: Attempting to generate BAA cert", buf, 2u);
    }

    v49 = v17;

    if (os_variant_has_internal_content())
    {
      v23 = [(MobileAssetKeyManager *)self copyPreferencesValue:@"DisableBAAForWKMS"];
      v24 = [v23 BOOLValue];

      v25 = [(MobileAssetKeyManager *)self downloadSessionDelegate];
      if (v24)
      {
LABEL_20:
        v35 = [v25 copyKeyAndSelfSignedCertificateChain:&v54];
        if (v35)
        {
LABEL_21:
          v33 = v35;
          v48 = v25;
          v50 = v20;
          v53 = 0;
          v36 = self;
          v37 = [(MobileAssetKeyManager *)self createGetDecryptionKeyRequestForKnox:v54 authData:v19 keyFetchBaseURLString:v50 apTicket:v14 assetAttributes:v12 error:&v53];
          v38 = v53;
          v39 = v38;
          if (!v37 || v38)
          {
            v31 = [(MobileAssetKeyManager *)v36 buildKeyManagerError:30009 underlying:v38 description:@"Failed to create decryptionKeyRequest for knox"];
            v43 = _MAClientLog(@"KeyManager");
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v56 = v31;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "[KnoxKeyRead]: Failed to create decryptionKeyRequest for knox: %{public}@", buf, 0xCu);
            }

            v32 = 0;
          }

          else
          {
            v52 = 0;
            v32 = [(MobileAssetKeyManager *)v36 requestServerForDecryptionKey:v37 recipientPrivateKey:v33 downloadOptions:v51 disableUI:v8 err:&v52];
            v40 = v52;
            v41 = v40;
            if (!v32 || (v31 = 0, v40))
            {
              v42 = _MAClientLog(@"KeyManager");
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v56 = @"Request to knox for decryption key returned failure";
                _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "[KnoxKeyRead]: %@", buf, 0xCu);
              }

              v31 = [(MobileAssetKeyManager *)v36 buildKeyManagerError:30010 underlying:v41 description:@"Request to knox for decryption key returned failure"];
            }
          }

          v13 = v51;
          v17 = v49;
          goto LABEL_38;
        }

        v44 = v25;
        v45 = _MAClientLog(@"KeyManager");
        v17 = v49;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v56 = @"Failed to generate cert for knox request";
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "[KnoxKeyRead]: %{public}@", buf, 0xCu);
        }

        v31 = [(MobileAssetKeyManager *)self buildKeyManagerError:30007 underlying:0 description:@"Failed to generate cert for knox request"];

        goto LABEL_36;
      }
    }

    else
    {
      v25 = [(MobileAssetKeyManager *)self downloadSessionDelegate];
    }

    v35 = [v25 copyKeyAndBAACerificateChain:&v54];
    if (v35)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v26 = a7;
  v27 = v14;
  v28 = v16;
  v29 = [NSString stringWithFormat:@"Missing AssetAttributes"];
  v30 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v56 = v29;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "[KnoxKeyRead]: %{public}@", buf, 0xCu);
  }

  v31 = [(MobileAssetKeyManager *)self buildKeyManagerError:30001 underlying:0 description:v29];

  v32 = 0;
  v33 = 0;
  v17 = v28;
  v14 = v27;
  a7 = v26;
  v12 = 0;
LABEL_38:
  objc_autoreleasePoolPop(v17);
  if (a7 && v31)
  {
    v46 = v31;
    *a7 = v31;
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v32;
}

- (id)getDecryptionKeyFromAssetMetadataOrDownloadOptionsInternal:(id)a3 downloadOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MobileAssetKeyManager *)self keyManagerQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  if (v8 | v9)
  {
    if (v8)
    {
      v12 = [v8 objectForKeyedSubscript:@"ArchiveDecryptionKey"];
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = [[NSData alloc] initWithBase64EncodedString:v12 options:0];
        v14 = _MAClientLog(@"KeyManager");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[KeyFromMetaDataOrOptions]: Decryption key found in asset attributes dict. Returning key from attributes.", buf, 2u);
        }
      }

      else
      {
        v13 = 0;
      }

      if (!v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = 0;
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    if (!v13)
    {
      v17 = [v9 decryptionKey];

      if (!v17)
      {
        v13 = 0;
        if (!v8)
        {
          goto LABEL_52;
        }

LABEL_21:
        if (!v13)
        {
          v19 = [v8 objectForKey:@"ArchiveDecryptionKeyFile"];
          v20 = v19;
          if (v19 && [v19 hasPrefix:@"com.apple.MobileAsset.DecryptionKey."])
          {
            v47 = self;
            v49 = v11;
            v50 = a5;
            v51 = v9;
            v52 = v8;
            v21 = [NSMutableArray alloc];
            v22 = [@"/var/MobileAsset/AssetsV2/DecryptionKeys" stringByAppendingPathComponent:v20];
            v63 = v22;
            v23 = [NSArray arrayWithObjects:&v63 count:1];
            v24 = [v21 initWithArray:v23];

            if (os_variant_has_internal_content())
            {
              v25 = [@"/AppleInternal/System/Library/AssetsV2/DecryptionKeys" stringByAppendingPathComponent:v20];
              [v24 insertObject:v25 atIndex:0];
            }

            v48 = v20;
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v26 = v24;
            v27 = [v26 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v55;
LABEL_28:
              v30 = 0;
              while (1)
              {
                if (*v55 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v54 + 1) + 8 * v30);
                v32 = +[NSFileManager defaultManager];
                v33 = [v32 fileExistsAtPath:v31];

                if ((v33 & 1) == 0)
                {
                  v36 = _MAClientLog(@"KeyManager");
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v59 = v31;
                    _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "[KeyFromMetaDataOrOptions]: Found decryption key path in attributes, but file does not exist at path: %{public}@", buf, 0xCu);
                  }

                  goto LABEL_47;
                }

                v34 = +[NSFileManager defaultManager];
                v53 = 0;
                v35 = [v34 attributesOfItemAtPath:v31 error:&v53];
                v36 = v53;

                if ([v35 fileSize])
                {
                  v37 = +[NSFileManager defaultManager];
                  v13 = [v37 contentsAtPath:v31];

                  if (v13)
                  {
                    if ([v13 length]== &stru_20.nsects + 1 || [v13 length]== &stru_20)
                    {
                      v44 = _MAClientLog(@"KeyManager");
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543362;
                        v59 = v31;
                        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "[KeyFromMetaDataOrOptions]: Found and successfully loaded decryption key via file path: %{public}@", buf, 0xCu);
                      }

                      v43 = v26;
                      v16 = 0;
                      v9 = v51;
                      v8 = v52;
                      goto LABEL_56;
                    }

                    v38 = _MAClientLog(@"KeyManager");
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                    {
                      v39 = [v13 length];
                      *buf = 134218242;
                      v59 = v39;
                      v60 = 2114;
                      v61 = v31;
                      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "[KeyFromMetaDataOrOptions]: Invalid decryption key length: %lu (should be 32 or 97 bytes) for path: %{public}@", buf, 0x16u);
                    }

                    goto LABEL_46;
                  }

                  v13 = _MAClientLog(@"KeyManager");
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v59 = v31;
                    v40 = v13;
                    v41 = "[KeyFromMetaDataOrOptions]: Found decryption key path in attributes, but no key was loaded from path: %{public}@";
                    v42 = 12;
                    goto LABEL_45;
                  }
                }

                else
                {
                  v13 = _MAClientLog(@"KeyManager");
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v59 = v31;
                    v60 = 2114;
                    v61 = v36;
                    v40 = v13;
                    v41 = "[KeyFromMetaDataOrOptions]: Found decryption key path in attributes, but file does not have any contents at path: %{public}@, error: %{public}@";
                    v42 = 22;
LABEL_45:
                    _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, v41, buf, v42);
                  }
                }

LABEL_46:

LABEL_47:
                if (v28 == ++v30)
                {
                  v28 = [v26 countByEnumeratingWithState:&v54 objects:v62 count:16];
                  if (v28)
                  {
                    goto LABEL_28;
                  }

                  break;
                }
              }
            }

            v16 = [(MobileAssetKeyManager *)v47 buildKeyManagerError:30012 underlying:0 description:@"Unable to read valid key from provided key file"];
            v13 = 0;
            v9 = v51;
            v8 = v52;
            v43 = v26;
LABEL_56:
            v11 = v49;
            a5 = v50;
            v20 = v48;
          }

          else
          {
            v16 = 0;
            v13 = 0;
          }

          goto LABEL_58;
        }

LABEL_52:
        objc_autoreleasePoolPop(v11);
        v16 = 0;
        goto LABEL_61;
      }

      v13 = [v9 decryptionKey];
      v18 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[KeyFromMetaDataOrOptions]: Decryption key found in client provided downloadOptions. Returning key from options.", buf, 2u);
      }
    }

LABEL_20:
    if (!v8)
    {
      goto LABEL_52;
    }

    goto LABEL_21;
  }

  v15 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v59 = "[MobileAssetKeyManager getDecryptionKeyFromAssetMetadataOrDownloadOptionsInternal:downloadOptions:error:]";
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "[KeyFromMetaDataOrOptions]: No asset attributes or downloadOptions passed into %{public}s", buf, 0xCu);
  }

  v16 = [(MobileAssetKeyManager *)self buildKeyManagerError:30001 underlying:0 description:@"No attributes dict or download options passed to get decryption key function"];
  v13 = 0;
LABEL_58:
  objc_autoreleasePoolPop(v11);
  if (a5 && v16)
  {
    v45 = v16;
    *a5 = v16;
  }

LABEL_61:

  return v13;
}

- (id)fetchDSMEKey
{
  if (!__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    v3 = _MAClientLog(@"KeyManager");
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v5 = "Fetching of dsme key not supported here";
LABEL_10:
    v6 = buf;
    goto LABEL_11;
  }

  if (!aks_get_dsme_key)
  {
    v3 = _MAClientLog(@"KeyManager");
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v5 = "Fetching of dsme key not supported here";
    goto LABEL_10;
  }

  v10 = 0;
  *buf = 0;
  dsme_key = aks_get_dsme_key(buf);
  v3 = _MAClientLog(@"KeyManager");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (dsme_key)
  {
    if (v4)
    {
      *v9 = 0;
      v5 = "Failed to fetch dsme key";
      v6 = v9;
LABEL_11:
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }

LABEL_12:

    v7 = 0;
    goto LABEL_13;
  }

  if (v4)
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Successfully fetched dsme key", v9, 2u);
  }

  v7 = [NSData dataWithBytesNoCopy:*buf length:v10 freeWhenDone:1];
LABEL_13:

  return v7;
}

- (BOOL)decryptFileAtURL:(id)a3 metadata:(id)a4 key:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v51 = a5;
  v11 = [v10 objectForKeyedSubscript:@"compressed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 BOOLValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 objectForKeyedSubscript:@"offset"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 unsignedLongLongValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v10 objectForKeyedSubscript:@"tag"];
  v16 = [v10 objectForKeyedSubscript:@"nonce"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v47 = v12;
    v17 = [[NSData alloc] initWithBase64EncodedString:v15 options:0];
    v18 = [[NSData alloc] initWithBase64EncodedString:v16 options:0];
    v48 = v18;
    v49 = v17;
    if (v17 && v18)
    {
      ParallelCompressionEnterThreadErrorContext();
      Mutable = CFArrayCreateMutable(0, 0, &kAAByteStreamArrayCallBacks);
      v20 = AAFileStreamOpenWithPath([v9 fileSystemRepresentation], 2, 0x1B6u);
      if (v20)
      {
        v21 = v20;
        v44 = a6;
        v45 = v9;
        CFArrayAppendValue(Mutable, v20);
        LOBYTE(buffer) = 0;
        v22 = calloc(1uLL, 0x20uLL);
        *v22 = v21;
        v22[2] = v14;
        v22[3] = 0;
        v23 = dispatch_data_create(&buffer, 0, 0, 0);
        v24 = v22[1];
        v22[1] = v23;

        v25 = AACustomByteStreamOpen();
        AACustomByteStreamSetData(v25, v22);
        AACustomByteStreamSetReadProc(v25, _inPlaceStreamRead);
        AACustomByteStreamSetWriteProc(v25, _inPlaceStreamWrite);
        AACustomByteStreamSetCloseProc(v25, _inPlaceStreamClose);
        theArray = Mutable;
        CFArrayAppendValue(Mutable, v25);
        v46 = v48;
        v41 = v49;
        v26 = v51;
        v27 = calloc(1uLL, 0x20uLL);
        ostream = v25;
        *v27 = v25;
        objc_storeStrong(v27 + 2, v49);
        *(v27 + 6) = -4304;
        v28 = [v26 bytes];
        v29 = [v26 length];

        if (CCCryptorCreateWithMode(1u, 0xBu, 0, 0, 0, v28, v29, 0, 0, 0, 0, v27 + 1) || ([v46 bytes], objc_msgSend(v46, "length"), CCCryptorGCMSetIV()))
        {
          _gcmDecryptionStreamClose(v27);
          v30 = 0;
        }

        else
        {
          v30 = AACustomByteStreamOpen();
          AACustomByteStreamSetData(v30, v27);
          AACustomByteStreamSetReadProc(v30, _gcmDecryptionStreamRead);
          AACustomByteStreamSetCloseProc(v30, _gcmDecryptionStreamClose);
        }

        v31 = Mutable;
        CFArrayAppendValue(Mutable, v30);
        a6 = v44;
        v9 = v45;
        p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
        if (v47)
        {
          v30 = AADecompressionInputStreamOpen(v30, 0, 1);
          CFArrayAppendValue(theArray, v30);
        }

        v33 = AAByteStreamProcess(v30, ostream);
      }

      else
      {
        v33 = -1;
        v31 = Mutable;
        p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      }

      CFRelease(v31);
      v38 = _maLeaveAAErrorContext();
      if (v33 < 0)
      {
        v34 = [p_weak_ivar_lyt[226] stringWithFormat:@"failed to decrypt file (%lld)", v33];
        v39 = _MAClientLog(@"KeyManager");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          buffer = 138412546;
          v53 = v34;
          v54 = 2112;
          v55 = v38;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "[DecryptFileAtURL]: %@: %@", &buffer, 0x16u);
        }

        v36 = [(MobileAssetKeyManager *)self keyManagerResult:30029 underlying:v38 description:v34 error:a6];
      }

      else
      {
        v34 = 0;
        v36 = 1;
      }
    }

    else
    {
      v34 = [NSString stringWithFormat:@"metadata contains invalid tag/iv"];
      v37 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        buffer = 138412290;
        v53 = v34;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "[DecryptFileAtURL]: %@", &buffer, 0xCu);
      }

      v36 = [(MobileAssetKeyManager *)self keyManagerResult:30029 underlying:0 description:v34 error:a6];
    }
  }

  else
  {
    v34 = [NSString stringWithFormat:@"metadata is missing tag/iv"];
    v35 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      buffer = 138412290;
      v53 = v34;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "[DecryptFileAtURL]: %@", &buffer, 0xCu);
    }

    v36 = [(MobileAssetKeyManager *)self keyManagerResult:30029 underlying:0 description:v34 error:a6];
  }

  return v36;
}

- (id)copyDawToken:(BOOL)a3 useAppleConnect:(BOOL)a4 error:(id *)a5
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__19;
  v27 = __Block_byref_object_dispose__19;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__19;
  v21 = __Block_byref_object_dispose__19;
  v22 = 0;
  v9 = objc_autoreleasePoolPush();
  ssoQueue = self->_ssoQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __60__MobileAssetKeyManager_copyDawToken_useAppleConnect_error___block_invoke;
  v14[3] = &unk_4B65C0;
  v14[4] = self;
  v14[5] = &v23;
  v15 = a3;
  v16 = a4;
  v14[6] = &v17;
  dispatch_sync(ssoQueue, v14);
  objc_autoreleasePoolPop(v9);
  if (a5)
  {
    v11 = v18[5];
    if (v11)
    {
      *a5 = v11;
    }
  }

  v12 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v12;
}

void __60__MobileAssetKeyManager_copyDawToken_useAppleConnect_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 57);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v2 copyDawTokenInternal:v3 useAppleConnect:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)copyPersonalizationSSOToken:(BOOL)a3 error:(id *)a4
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__19;
  v24 = __Block_byref_object_dispose__19;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  v7 = objc_autoreleasePoolPush();
  ssoQueue = self->_ssoQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __59__MobileAssetKeyManager_copyPersonalizationSSOToken_error___block_invoke;
  v12[3] = &unk_4B65E8;
  v12[4] = self;
  v12[5] = &v20;
  v13 = a3;
  v12[6] = &v14;
  dispatch_sync(ssoQueue, v12);
  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    v9 = v15[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10;
}

void __59__MobileAssetKeyManager_copyPersonalizationSSOToken_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 copyPersonalizationSSOTokenInternal:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getDecryptionKeyFromAssetMetadataOrDownloadOptions:(id)a3 downloadOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__19;
  v31 = __Block_byref_object_dispose__19;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__19;
  v25 = __Block_byref_object_dispose__19;
  v26 = 0;
  v10 = [(MobileAssetKeyManager *)self keyManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __98__MobileAssetKeyManager_getDecryptionKeyFromAssetMetadataOrDownloadOptions_downloadOptions_error___block_invoke;
  block[3] = &unk_4B6610;
  v19 = &v27;
  block[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v20 = &v21;
  dispatch_sync(v10, block);

  if (a5)
  {
    v13 = v22[5];
    if (v13)
    {
      *a5 = v13;
    }
  }

  v14 = v28[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

void __98__MobileAssetKeyManager_getDecryptionKeyFromAssetMetadataOrDownloadOptions_downloadOptions_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 getDecryptionKeyFromAssetMetadataOrDownloadOptionsInternal:v3 downloadOptions:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)getDecryptionKeyFromKnoxUsingAssetAttributes:(id)a3 downloadOptions:(id)a4 apTicket:(id)a5 disableUI:(BOOL)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__19;
  v39 = __Block_byref_object_dispose__19;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__19;
  v33 = __Block_byref_object_dispose__19;
  v34 = 0;
  v15 = [(MobileAssetKeyManager *)self keyManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __111__MobileAssetKeyManager_getDecryptionKeyFromKnoxUsingAssetAttributes_downloadOptions_apTicket_disableUI_error___block_invoke;
  block[3] = &unk_4B6638;
  v26 = &v35;
  block[4] = self;
  v16 = v12;
  v23 = v16;
  v17 = v13;
  v24 = v17;
  v18 = v14;
  v28 = a6;
  v25 = v18;
  v27 = &v29;
  dispatch_sync(v15, block);

  if (a7)
  {
    v19 = v30[5];
    if (v19)
    {
      *a7 = v19;
    }
  }

  v20 = v36[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v20;
}

void __111__MobileAssetKeyManager_getDecryptionKeyFromKnoxUsingAssetAttributes_downloadOptions_apTicket_disableUI_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v7 = *(*(a1 + 72) + 8);
  obj = *(v7 + 40);
  v8 = [v2 getDecryptionKeyFromKnoxUsingAssetAttributesInternal:v3 downloadOptions:v4 apTicket:v5 disableUI:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)getDecryptionKey:(id)a3 downloadOptions:(id)a4 apTicket:(id)a5 skipKnoxLookup:(BOOL)a6 disableUI:(BOOL)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__19;
  v50 = __Block_byref_object_dispose__19;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__19;
  v44 = __Block_byref_object_dispose__19;
  v45 = 0;
  v17 = [(MobileAssetKeyManager *)self keyManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __98__MobileAssetKeyManager_getDecryptionKey_downloadOptions_apTicket_skipKnoxLookup_disableUI_error___block_invoke;
  block[3] = &unk_4B6660;
  v36 = &v46;
  block[4] = self;
  v18 = v14;
  v33 = v18;
  v19 = v15;
  v34 = v19;
  v37 = &v40;
  v38 = a6;
  v20 = v16;
  v35 = v20;
  v39 = a7;
  dispatch_sync(v17, block);

  if (a8)
  {
    v21 = v41[5];
    if (v21)
    {
      *a8 = v21;
    }
  }

  v22 = v47[5];
  if (v22)
  {
    if ([v22 length] == &stru_20.nsects + 1 || objc_msgSend(v47[5], "length") == &stru_20)
    {
      v23 = _MAClientLog(@"KeyManager");
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v24 = "[GetDecryptionKey]: Successfully obtained decryption key";
      v25 = v23;
      v26 = OS_LOG_TYPE_DEFAULT;
      v27 = 2;
      goto LABEL_14;
    }

    v23 = _MAClientLog(@"KeyManager");
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v29 = [v47[5] length];
    *buf = 134217984;
    v53 = v29;
    v24 = "[GetDecryptionKey]: Length of decryption key(%lu) is invalid";
    v25 = v23;
    v26 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v23 = _MAClientLog(@"KeyManager");
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v28 = v41[5];
    *buf = 138543362;
    v53 = v28;
    v24 = "[GetDecryptionKey]: Failed to obtain decryption key with error: %{public}@";
    v25 = v23;
    v26 = OS_LOG_TYPE_ERROR;
  }

  v27 = 12;
LABEL_14:
  _os_log_impl(&dword_0, v25, v26, v24, buf, v27);
LABEL_15:

  v30 = v47[5];
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);

  return v30;
}

void __98__MobileAssetKeyManager_getDecryptionKey_downloadOptions_apTicket_skipKnoxLookup_disableUI_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 72) + 8);
  obj = *(v5 + 40);
  v6 = [v2 getDecryptionKeyFromAssetMetadataOrDownloadOptionsInternal:v3 downloadOptions:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(*(a1 + 64) + 8) + 40) || *(*(*(a1 + 72) + 8) + 40))
  {
    v9 = *(a1 + 80);
    v10 = _MAClientLog(@"KeyManager");
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 == 1)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[GetDecryptionKey]: Decryption key not found in asset metadata or download options and Knox lookup is disabled. Returning", buf, 2u);
      }
    }

    else
    {
      if (v11)
      {
        v12 = *(*(a1 + 72) + 8);
        v13 = *(v12 + 40);
        if (v13)
        {
          v14 = [*(v12 + 40) description];
        }

        else
        {
          v14 = @"None";
        }

        *buf = 138543362;
        v28 = v14;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[GetDecryptionKey]: Unable to obtain key from asset metadata (err: %{public}@). Attempting to query Knox", buf, 0xCu);
        if (v13)
        {
        }
      }

      v15 = *(*(a1 + 72) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;

      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      v21 = *(a1 + 81);
      v22 = *(*(a1 + 72) + 8);
      v25 = *(v22 + 40);
      v23 = [v17 getDecryptionKeyFromKnoxUsingAssetAttributesInternal:v18 downloadOptions:v19 apTicket:v20 disableUI:v21 error:&v25];
      objc_storeStrong((v22 + 40), v25);
      v24 = *(*(a1 + 64) + 8);
      v10 = *(v24 + 40);
      *(v24 + 40) = v23;
    }
  }
}

- (BOOL)decryptContentEncryptedAssetAtURL:(id)a3 assetAttributes:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NSFileManager defaultManager];
  if (!v8 || !v9)
  {
    v36 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = @"Invalid arguments passed to decrypt content encrypted asset function";
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "[DecryptContentEncryptedAsset] : %@", buf, 0xCu);
    }

    v34 = @"Invalid arguments passed to decrypt content encrypted asset function";
    v35 = [(MobileAssetKeyManager *)self keyManagerResult:30001 underlying:0 description:@"Invalid arguments passed to decrypt content encrypted asset function" error:a5];
    goto LABEL_42;
  }

  v11 = [v9 objectForKeyedSubscript:@"_ContentEncryption"];
  if (v11)
  {
    v12 = v11;
    if (![&off_4F7088 containsObject:v11])
    {
      v34 = [NSString stringWithFormat:@"ContentEncryptionType %@ is unsupported", v12];
      v37 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v34;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "[DecryptContentEncryptedAsset]: %@", buf, 0xCu);
      }

      v35 = [(MobileAssetKeyManager *)self keyManagerResult:30001 underlying:0 description:v34 error:a5];
      goto LABEL_41;
    }

    v13 = [(MobileAssetKeyManager *)self fetchDSMEKey];
    v14 = [v8 URLByAppendingPathComponent:@"ContentProtection.plist" isDirectory:0];
    v60 = 0;
    v15 = [NSDictionary dictionaryWithContentsOfURL:v14 error:&v60];
    v16 = v60;
    v54 = v13;
    v51 = v16;
    v52 = v15;
    if (v15)
    {
      if (v13)
      {
        v46 = a5;
        v47 = v14;
        v48 = v12;
        v49 = v10;
        v50 = v9;
        v53 = v8;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v57;
          while (2)
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v57 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v56 + 1) + 8 * i);
              v23 = objc_autoreleasePoolPush();
              *buf = 0;
              v24 = [v17 objectForKeyedSubscript:v22];
              v25 = [v53 URLByAppendingPathComponent:v22 isDirectory:0];
              v26 = self;
              v27 = [(MobileAssetKeyManager *)self decryptFileAtURL:v25 metadata:v24 key:v54 error:buf];
              v28 = *buf;

              objc_autoreleasePoolPop(v23);
              if ((v27 & 1) == 0)
              {
                if (v46)
                {
                  v42 = v28;
                  *v46 = v28;
                }

                v34 = 0;
                v35 = 0;
                v8 = v53;
                v32 = v54;
                v10 = v49;
                v9 = v50;
                v14 = v47;
                v12 = v48;
                goto LABEL_35;
              }

              self = v26;
            }

            v19 = [v17 countByEnumeratingWithState:&v56 objects:v61 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v29 = _MAClientLog(@"KeyManager");
        v8 = v53;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v53;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "[DecryptContentEncryptedAsset]: Successfully decrypted all files under %@", buf, 0xCu);
        }

        v55 = 0;
        v10 = v49;
        v14 = v47;
        v30 = [v49 removeItemAtURL:v47 error:&v55];
        v31 = v55;
        v9 = v50;
        v12 = v48;
        v32 = v54;
        if ((v30 & 1) == 0)
        {
          v33 = _MAClientLog(@"Download");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v31;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "[DecryptContentEncryptedAsset]: Failed to delete content encryption manifest: %{public}@", buf, 0xCu);
          }

          v32 = v54;
        }

        v34 = 0;
        v35 = 1;
LABEL_35:
        v43 = v52;
        goto LABEL_40;
      }

      v34 = [NSString stringWithFormat:@"Failed to fetch %@ key for content encrypted asset", v12];
      v44 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v34;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "[DecryptContentEncryptedAsset]: %@", buf, 0xCu);
      }

      v40 = self;
      v41 = 30026;
    }

    else
    {
      v38 = v16;
      v39 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = @"Failed to read content encrypted asset manifest";
        v63 = 2112;
        v64 = v38;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "[DecryptContentEncryptedAsset]: %@ : %@", buf, 0x16u);
      }

      v34 = @"Failed to read content encrypted asset manifest";
      v40 = self;
      v41 = 30027;
    }

    v35 = [(MobileAssetKeyManager *)v40 keyManagerResult:v41 underlying:0 description:v34 error:a5];
    v43 = v52;
    v32 = v54;
LABEL_40:

LABEL_41:
LABEL_42:

    goto LABEL_43;
  }

  v35 = 1;
LABEL_43:

  return v35;
}

@end