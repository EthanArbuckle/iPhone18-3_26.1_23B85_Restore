@interface SecureMobileAssetManifestVerifier
+ (SecureMobileAssetManifestVerifier)sharedInstance;
- (BOOL)verifyManifest:(id)manifest manifestType:(unint64_t)type;
- (BOOL)verifyPlist:(id)plist manifest:(id)manifest manifestType:(unint64_t)type result:(id *)result error:(id *)error;
- (SecureMobileAssetManifestVerifier)init;
- (id)_manifestDigest:(id)digest;
- (int)_verifyPlist:(id)plist manifest:(id)manifest manifestType:(unint64_t)type result:(id *)result;
- (void)_logBase64Data:(id)data description:(id)description;
@end

@implementation SecureMobileAssetManifestVerifier

+ (SecureMobileAssetManifestVerifier)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SecureMobileAssetManifestVerifier sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

void __51__SecureMobileAssetManifestVerifier_sharedInstance__block_invoke(id a1)
{
  sharedInstance_instance_0 = objc_alloc_init(SecureMobileAssetManifestVerifier);

  _objc_release_x1();
}

- (SecureMobileAssetManifestVerifier)init
{
  v6.receiver = self;
  v6.super_class = SecureMobileAssetManifestVerifier;
  v2 = [(SecureMobileAssetManifestVerifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    cachedManifestVerificationResults = v2->_cachedManifestVerificationResults;
    v2->_cachedManifestVerificationResults = v3;
  }

  return v2;
}

- (BOOL)verifyManifest:(id)manifest manifestType:(unint64_t)type
{
  manifestCopy = manifest;
  v7 = [(SecureMobileAssetManifestVerifier *)self _manifestDigest:manifestCopy];
  cachedManifestVerificationResults = [(SecureMobileAssetManifestVerifier *)self cachedManifestVerificationResults];
  objc_sync_enter(cachedManifestVerificationResults);
  cachedManifestVerificationResults2 = [(SecureMobileAssetManifestVerifier *)self cachedManifestVerificationResults];
  v10 = [cachedManifestVerificationResults2 objectForKeyedSubscript:v7];

  if (!v10)
  {
    v13 = [(SecureMobileAssetManifestVerifier *)self _verifyPlist:0 manifest:manifestCopy manifestType:type result:0];
    bOOLValue2 = v13 == 0;
    if (v13)
    {
      v14 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v22 = 67109378;
        bOOLValue = v13;
        v24 = 2080;
        v25 = strerror(v13);
        v15 = "[SMA] Manifest verification failed: %d (%s)";
        v16 = v14;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 18;
LABEL_10:
        _os_log_impl(&dword_0, v16, v17, v15, &v22, v18);
      }
    }

    else
    {
      v14 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v15 = "[SMA] Manifest verification succeeded";
        v16 = v14;
        v17 = OS_LOG_TYPE_DEFAULT;
        v18 = 2;
        goto LABEL_10;
      }
    }

    v19 = [NSNumber numberWithInt:v13 == 0];
    cachedManifestVerificationResults3 = [(SecureMobileAssetManifestVerifier *)self cachedManifestVerificationResults];
    [cachedManifestVerificationResults3 setObject:v19 forKeyedSubscript:v7];

    goto LABEL_12;
  }

  v11 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109120;
    bOOLValue = [v10 BOOLValue];
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[SMA] Cached manifest verification result: %i", &v22, 8u);
  }

  bOOLValue2 = [v10 BOOLValue];
LABEL_12:

  objc_sync_exit(cachedManifestVerificationResults);
  return bOOLValue2;
}

- (BOOL)verifyPlist:(id)plist manifest:(id)manifest manifestType:(unint64_t)type result:(id *)result error:(id *)error
{
  v8 = [(SecureMobileAssetManifestVerifier *)self _verifyPlist:plist manifest:manifest manifestType:type result:result];
  v9 = _MADLog(@"SecureMA");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109378;
      v12[1] = v8;
      v13 = 2080;
      v14 = strerror(v8);
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[SMA] Info plist verification failed: %d (%s)", v12, 0x12u);
    }

    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v8 userInfo:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[SMA] Info plist verification succeeded", v12, 2u);
    }
  }

  return v8 == 0;
}

- (id)_manifestDigest:(id)digest
{
  digestCopy = digest;
  v9 = 0u;
  v10 = 0u;
  *md = 0u;
  CC_SHA384([digestCopy bytes], objc_msgSend(digestCopy, "length"), md);
  v4 = [NSMutableString stringWithCapacity:96];
  for (i = 0; i != 48; ++i)
  {
    [v4 appendFormat:@"%02hhX", md[i]];
  }

  v6 = [v4 copy];

  return v6;
}

- (int)_verifyPlist:(id)plist manifest:(id)manifest manifestType:(unint64_t)type result:(id *)result
{
  plistCopy = plist;
  manifestCopy = manifest;
  if ([manifestCopy length])
  {
    if (__isPlatformVersionAtLeast(2, 18, 0, 0))
    {
      if (image4_environment_new())
      {
        if (type == 2)
        {
          *buf = xmmword_4B49E0;
          v19 = *&off_4B49F0;
          v20 = xmmword_4B4A00;
          image4_environment_set_callbacks();
        }

        [manifestCopy bytes];
        [manifestCopy length];
        v16 = image4_trust_new();
        if (plistCopy)
        {
          [plistCopy bytes];
          [plistCopy length];
          image4_trust_set_payload();
        }

        v15 = 1;
        image4_trust_evaluate();
        image4_trust_destroy();
        image4_environment_destroy();
        [(SecureMobileAssetManifestVerifier *)self _logBase64Data:manifestCopy description:@"failing manifest"];
        if (plistCopy)
        {
          [(SecureMobileAssetManifestVerifier *)self _logBase64Data:plistCopy description:@"failing payload"];
        }

        v11 = v15;
      }

      else
      {
        v13 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[SMA] Failed to instantiate environment", buf, 2u);
        }

        v11 = 12;
      }
    }

    else
    {
      v11 = 45;
    }
  }

  else
  {
    v12 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[SMA] Manifest is empty", buf, 2u);
    }

    v11 = 22;
  }

  return v11;
}

- (void)_logBase64Data:(id)data description:(id)description
{
  descriptionCopy = description;
  v6 = [data base64EncodedStringWithOptions:0];
  v7 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543874;
    v9 = descriptionCopy;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = descriptionCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[SMA] %{public}@:<<<<<<<<<<\n%{public}@\n%{public}@:>>>>>>>>>>", &v8, 0x20u);
  }
}

@end