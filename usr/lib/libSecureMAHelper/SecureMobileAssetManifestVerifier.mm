@interface SecureMobileAssetManifestVerifier
+ (id)sharedInstance;
- (BOOL)verifyManifest:(id)manifest manifestType:(unint64_t)type;
- (BOOL)verifyPlist:(id)plist manifest:(id)manifest manifestType:(unint64_t)type result:(id *)result error:(id *)error;
- (SecureMobileAssetManifestVerifier)init;
- (id)_manifestDigest:(id)digest;
- (int)_verifyPlist:(id)plist manifest:(id)manifest manifestType:(unint64_t)type result:(id *)result;
- (void)_logBase64Data:(id)data description:(id)description;
@end

@implementation SecureMobileAssetManifestVerifier

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SecureMobileAssetManifestVerifier sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __51__SecureMobileAssetManifestVerifier_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(SecureMobileAssetManifestVerifier);

  return MEMORY[0x2A1C71028]();
}

- (SecureMobileAssetManifestVerifier)init
{
  v6.receiver = self;
  v6.super_class = SecureMobileAssetManifestVerifier;
  v2 = [(SecureMobileAssetManifestVerifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    cachedManifestVerificationResults = v2->_cachedManifestVerificationResults;
    v2->_cachedManifestVerificationResults = v3;
  }

  return v2;
}

- (BOOL)verifyManifest:(id)manifest manifestType:(unint64_t)type
{
  v27 = *MEMORY[0x29EDCA608];
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
      v14 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = 67109378;
        bOOLValue = v13;
        v25 = 2080;
        v26 = strerror(v13);
        v15 = "[SMA] Manifest verification failed: %d (%s)";
        v16 = v14;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 18;
LABEL_10:
        _os_log_impl(&dword_2981ED000, v16, v17, v15, &v23, v18);
      }
    }

    else
    {
      v14 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        v15 = "[SMA] Manifest verification succeeded";
        v16 = v14;
        v17 = OS_LOG_TYPE_DEFAULT;
        v18 = 2;
        goto LABEL_10;
      }
    }

    v19 = [MEMORY[0x29EDBA070] numberWithInt:v13 == 0];
    cachedManifestVerificationResults3 = [(SecureMobileAssetManifestVerifier *)self cachedManifestVerificationResults];
    [cachedManifestVerificationResults3 setObject:v19 forKeyedSubscript:v7];

    goto LABEL_12;
  }

  v11 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109120;
    bOOLValue = [v10 BOOLValue];
    _os_log_impl(&dword_2981ED000, v11, OS_LOG_TYPE_DEFAULT, "[SMA] Cached manifest verification result: %i", &v23, 8u);
  }

  bOOLValue2 = [v10 BOOLValue];
LABEL_12:

  objc_sync_exit(cachedManifestVerificationResults);
  v21 = *MEMORY[0x29EDCA608];
  return bOOLValue2;
}

- (BOOL)verifyPlist:(id)plist manifest:(id)manifest manifestType:(unint64_t)type result:(id *)result error:(id *)error
{
  v16 = *MEMORY[0x29EDCA608];
  v8 = [(SecureMobileAssetManifestVerifier *)self _verifyPlist:plist manifest:manifest manifestType:type result:result];
  v9 = _MAClientLog(@"SecureMA");
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109378;
      v13[1] = v8;
      v14 = 2080;
      v15 = strerror(v8);
      _os_log_impl(&dword_2981ED000, v10, OS_LOG_TYPE_ERROR, "[SMA] Info plist verification failed: %d (%s)", v13, 0x12u);
    }

    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v8 userInfo:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_2981ED000, v10, OS_LOG_TYPE_DEFAULT, "[SMA] Info plist verification succeeded", v13, 2u);
    }
  }

  result = v8 == 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

- (id)_manifestDigest:(id)digest
{
  v12 = *MEMORY[0x29EDCA608];
  digestCopy = digest;
  v10 = 0u;
  v11 = 0u;
  *md = 0u;
  CC_SHA384([digestCopy bytes], objc_msgSend(digestCopy, "length"), md);
  v4 = [MEMORY[0x29EDBA050] stringWithCapacity:96];
  for (i = 0; i != 48; ++i)
  {
    [v4 appendFormat:@"%02hhX", md[i]];
  }

  v6 = [v4 copy];

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (int)_verifyPlist:(id)plist manifest:(id)manifest manifestType:(unint64_t)type result:(id *)result
{
  v22 = *MEMORY[0x29EDCA608];
  plistCopy = plist;
  manifestCopy = manifest;
  if ([manifestCopy length])
  {
    if (image4_environment_new())
    {
      if (type == 2)
      {
        *buf = xmmword_2A1EA37A8;
        v20 = *&off_2A1EA37B8;
        v21 = xmmword_2A1EA37C8;
        image4_environment_set_callbacks();
      }

      [manifestCopy bytes];
      [manifestCopy length];
      v17 = image4_trust_new();
      if (plistCopy)
      {
        [plistCopy bytes];
        [plistCopy length];
        image4_trust_set_payload();
      }

      v16 = 1;
      image4_trust_evaluate();
      image4_trust_destroy();
      image4_environment_destroy();
      [(SecureMobileAssetManifestVerifier *)self _logBase64Data:manifestCopy description:@"failing manifest"];
      if (plistCopy)
      {
        [(SecureMobileAssetManifestVerifier *)self _logBase64Data:plistCopy description:@"failing payload"];
      }

      v11 = v16;
    }

    else
    {
      v13 = _MAClientLog(@"SecureMA");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2981ED000, v13, OS_LOG_TYPE_ERROR, "[SMA] Failed to instantiate environment", buf, 2u);
      }

      v11 = 12;
    }
  }

  else
  {
    v12 = _MAClientLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2981ED000, v12, OS_LOG_TYPE_ERROR, "[SMA] Manifest is empty", buf, 2u);
    }

    v11 = 22;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

- (void)_logBase64Data:(id)data description:(id)description
{
  v15 = *MEMORY[0x29EDCA608];
  descriptionCopy = description;
  v6 = [data base64EncodedStringWithOptions:0];
  v7 = _MAClientLog(@"SecureMA");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543874;
    v10 = descriptionCopy;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = descriptionCopy;
    _os_log_impl(&dword_2981ED000, v7, OS_LOG_TYPE_ERROR, "[SMA] %{public}@:<<<<<<<<<<\n%{public}@\n%{public}@:>>>>>>>>>>", &v9, 0x20u);
  }

  v8 = *MEMORY[0x29EDCA608];
}

@end