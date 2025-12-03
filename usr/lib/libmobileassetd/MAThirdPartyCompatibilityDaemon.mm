@interface MAThirdPartyCompatibilityDaemon
+ (BOOL)isThirdPartyAssetType:(id)type;
+ (id)_sanitizedURLPathComponentFor:(id)for;
+ (id)thirdPartyServerURLForAssetType:(id)type;
@end

@implementation MAThirdPartyCompatibilityDaemon

+ (BOOL)isThirdPartyAssetType:(id)type
{
  typeCopy = type;
  if (__isPlatformVersionAtLeast(2, 18, 6, 0))
  {
    v4 = [MAThirdPartyCompatibility isThirdPartyAssetType:typeCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)thirdPartyServerURLForAssetType:(id)type
{
  typeCopy = type;
  if (!__isPlatformVersionAtLeast(2, 18, 6, 0))
  {
    v11 = 0;
    goto LABEL_24;
  }

  v4 = [MAThirdPartyCompatibility compatibilityVersionStringForAssetType:typeCopy];
  if (v4)
  {
    v5 = _MAPreferencesCopyNSStringValue(@"ThirdPartyStagingPathComponent");
    if (v5)
    {
      v6 = [objc_opt_class() _sanitizedURLPathComponentFor:v5];
      if (v6)
      {
        v7 = v6;
        v8 = _MAPreferencesCopyNSStringValue(@"ThirdPartyStagingBucketPathComponent");
        if (v8)
        {
          v9 = [objc_opt_class() _sanitizedURLPathComponentFor:v8];
          if (v9)
          {
            v10 = v9;
            v11 = [NSString stringWithFormat:@"https://mesu.apple.com/3p/%@/%@/assets/%@/%@/", v7, v9, @"ios", v4];

LABEL_21:
LABEL_22:

            goto LABEL_23;
          }

          v15 = _MADLog(@"V2");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v18 = @"ThirdPartyStagingBucketPathComponent";
            v19 = 2112;
            v20 = v8;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "MAThirdPartyCompatibility: %@ override (%@) provided, with illegal characters.", buf, 0x16u);
          }
        }

        v11 = [NSString stringWithFormat:@"https://mesu.apple.com/3p/%@/assets/%@/%@/", v7, @"ios", v4];
        goto LABEL_21;
      }

      v12 = _MADLog(@"V2");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = @"ThirdPartyStagingPathComponent";
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "MAThirdPartyCompatibility: %@ override (%@) provided, with illegal characters.", buf, 0x16u);
      }
    }

    v13 = +[SUCoreDevice sharedDevice];
    isBootedOSSecureInternal = [v13 isBootedOSSecureInternal];

    if (isBootedOSSecureInternal)
    {
      [NSString stringWithFormat:@"https://mesu.apple.com/3p/staging/assets/%@/%@/", @"ios", v4];
    }

    else
    {
      [NSString stringWithFormat:@"https://mesu.apple.com/3p/assets/%@/%@/", @"ios", v4];
    }
    v11 = ;
    goto LABEL_22;
  }

  v11 = 0;
LABEL_23:

LABEL_24:

  return v11;
}

+ (id)_sanitizedURLPathComponentFor:(id)for
{
  forCopy = for;
  v4 = forCopy;
  if (forCopy && [forCopy length])
  {
    precomposedStringWithCanonicalMapping = [v4 precomposedStringWithCanonicalMapping];
    v6 = +[NSCharacterSet alphanumericCharacterSet];
    v7 = [v6 mutableCopy];

    [v7 addCharactersInString:@"-_"];
    invertedSet = [v7 invertedSet];
    if ([precomposedStringWithCanonicalMapping rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(precomposedStringWithCanonicalMapping, "length") <= 0x40)
    {
      v9 = precomposedStringWithCanonicalMapping;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end