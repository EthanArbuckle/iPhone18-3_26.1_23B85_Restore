@interface ASAssetMetadataUpdatePolicy
+ (id)policy;
- (char)actualTrainName;
- (char)syntheticTrainName;
- (id)_stringPreferenceValueForKey:(id)a3;
- (id)checkPreferencesForOverride:(id)a3;
- (id)getSystemAppURL:(id)a3 assetType:(id)a4;
- (id)serverURLForAssetType:(id)a3;
- (void)getDelay:(double *)a3 andGracePeriod:(double *)a4 forUpdateInterval:(double)a5;
@end

@implementation ASAssetMetadataUpdatePolicy

+ (id)policy
{
  if (policy_once != -1)
  {
    +[ASAssetMetadataUpdatePolicy policy];
  }

  v3 = policy_policy;

  return v3;
}

void __37__ASAssetMetadataUpdatePolicy_policy__block_invoke(id a1)
{
  policy_policy = objc_alloc_init(ASAssetMetadataUpdatePolicy);

  _objc_release_x1();
}

- (void)getDelay:(double *)a3 andGracePeriod:(double *)a4 forUpdateInterval:(double)a5
{
  v5 = fmax(a5 + 86400.0, 43200.0);
  v6 = fmax(a5, 0.0);
  v7 = a5 < 0.0;
  v8 = 259200.0;
  if (v7)
  {
    v8 = v5;
  }

  *a3 = v6;
  *a4 = v8;
}

- (id)_stringPreferenceValueForKey:(id)a3
{
  v3 = a3;
  v4 = _MAPreferencesCopyValue(v3);
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = _MADLog(@"V2");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v9 = 138543874;
        v10 = v3;
        v11 = 2114;
        v12 = v4;
        v13 = 2114;
        v14 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Ignoring preference; key %{public}@ has unexpected class: %{public}@ value: '%{public}@'", &v9, 0x20u);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (char)syntheticTrainName
{
  if (syntheticTrainName_onceToken != -1)
  {
    [ASAssetMetadataUpdatePolicy syntheticTrainName];
  }

  return syntheticTrainName_trainName;
}

void __49__ASAssetMetadataUpdatePolicy_syntheticTrainName__block_invoke(id a1)
{
  v1 = getDownloadManager();
  v2 = [v1 trainName];

  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v2 length])
      {
        v3 = _MADLog(@"V2");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "DownloadManager returned a valid train name", buf, 2u);
        }

        v4 = malloc(0x200uLL);
        syntheticTrainName_trainName = v4;
        if (v4)
        {
          v4[30] = 0u;
          v4[31] = 0u;
          v4[28] = 0u;
          v4[29] = 0u;
          v4[26] = 0u;
          v4[27] = 0u;
          v4[24] = 0u;
          v4[25] = 0u;
          v4[22] = 0u;
          v4[23] = 0u;
          v4[20] = 0u;
          v4[21] = 0u;
          v4[18] = 0u;
          v4[19] = 0u;
          v4[16] = 0u;
          v4[17] = 0u;
          v4[14] = 0u;
          v4[15] = 0u;
          v4[12] = 0u;
          v4[13] = 0u;
          v4[10] = 0u;
          v4[11] = 0u;
          v4[8] = 0u;
          v4[9] = 0u;
          v4[6] = 0u;
          v4[7] = 0u;
          v4[4] = 0u;
          v4[5] = 0u;
          v4[2] = 0u;
          v4[3] = 0u;
          *v4 = 0u;
          v4[1] = 0u;
          [v2 getCString:v4 maxLength:511 encoding:4];
          v5 = _MADLog(@"V2");
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v15 = syntheticTrainName_trainName;
            v6 = "Using train name(%{public}s) from download manager";
LABEL_18:
            _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
            goto LABEL_19;
          }

          goto LABEL_19;
        }
      }
    }
  }

  v7 = "$SIDEBUILD_PARENT_TRAIN";
  v8 = [NSString stringWithFormat:@"%s", "$SIDEBUILD_PARENT_TRAIN"];
  if ([v8 isEqualToString:&stru_4BD3F0])
  {
  }

  else
  {
    v9 = [NSString stringWithFormat:@"%s", "$SIDEBUILD_PARENT_TRAIN"];
    v10 = [v9 isEqualToString:@"$SIDEBUILD_PARENT_TRAIN"];

    if ((v10 & 1) == 0)
    {
LABEL_15:
      syntheticTrainName_trainName = v7;
      goto LABEL_16;
    }
  }

  v7 = "LuckB";
  v11 = [NSString stringWithFormat:@"%s", "LuckB"];
  if ([v11 isEqualToString:&stru_4BD3F0])
  {

    goto LABEL_16;
  }

  v12 = [NSString stringWithFormat:@"%s", "LuckB"];
  v13 = [v12 isEqualToString:@"$RC_RELEASE"];

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  v5 = _MADLog(@"V2");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v15 = syntheticTrainName_trainName;
    v6 = "Using train name(%{public}s) from legacy method";
    goto LABEL_18;
  }

LABEL_19:
}

- (char)actualTrainName
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __46__ASAssetMetadataUpdatePolicy_actualTrainName__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  if (actualTrainName_onceToken != -1)
  {
    dispatch_once(&actualTrainName_onceToken, block);
  }

  return actualTrainName_trainName;
}

void __46__ASAssetMetadataUpdatePolicy_actualTrainName__block_invoke(uint64_t a1)
{
  v2 = "LuckB";
  v3 = [NSString stringWithFormat:@"%s", "LuckB"];
  if ([v3 isEqualToString:&stru_4BD3F0])
  {
  }

  else
  {
    v4 = [NSString stringWithFormat:@"%s", "LuckB"];
    v5 = [v4 isEqualToString:@"$RC_RELEASE"];

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (actualTrainName_trainName)
  {
    return;
  }

  v2 = [*(a1 + 32) syntheticTrainName];
LABEL_6:
  actualTrainName_trainName = v2;
}

- (id)serverURLForAssetType:(id)a3
{
  v4 = a3;
  IsInternalAllowed = _MAPreferencesIsInternalAllowed();
  v6 = MGCopyAnswer();
  v7 = MGCopyAnswer();
  if (isSystemAppType(v4))
  {
    if (IsInternalAllowed)
    {
      v8 = @"https://basejumper.apple.com/systemassets/";
    }

    else
    {
      v8 = @"https://mesu.apple.com/systemassets/";
    }

    v10 = [(ASAssetMetadataUpdatePolicy *)self getSystemAppURL:v8 assetType:v4];
    goto LABEL_44;
  }

  if (isBuildAlignedType(v4))
  {
    if (v6 && v7)
    {
      v9 = 1;
      goto LABEL_14;
    }

    v11 = _MADLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v30 = v4;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Asset-Type (%@) is build aligned but the OS is missing information: (BuildID:%@ -- BuildVersion:%@)", buf, 0x20u);
    }
  }

  v9 = 0;
LABEL_14:
  if (IsInternalAllowed)
  {
    v12 = [(ASAssetMetadataUpdatePolicy *)self syntheticTrainName];
    if (v12)
    {
      v13 = v12;
      v14 = [(ASAssetMetadataUpdatePolicy *)self actualTrainName];
      if (v14)
      {
        if (v9)
        {
          [NSString stringWithFormat:@"https://basejumper.apple.com/assets/%s/%s%@/", v14, v14, v6];
        }

        else
        {
          [NSString stringWithFormat:@"https://basejumper.apple.com/livability/%s/", v13, v27, v28];
        }

        goto LABEL_24;
      }
    }

    v15 = _MADLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Train name was nil, falling back to customer path, defaulting to mesu", buf, 2u);
    }
  }

  v16 = @"https://mesu.apple.com/assets/";
  if (!v9)
  {
    goto LABEL_25;
  }

  [NSString stringWithFormat:@"%@builds/%@/", @"https://mesu.apple.com/assets/", v7, v28];
  v16 = LABEL_24:;
LABEL_25:
  if (v4)
  {
    if ([MAThirdPartyCompatibilityDaemon isThirdPartyAssetType:v4])
    {
      v17 = [MAThirdPartyCompatibilityDaemon thirdPartyServerURLForAssetType:v4];
      v18 = v17;
      if (v17)
      {
        v19 = v16;
        v16 = v17;
      }

      else
      {
        v19 = _MADLog(@"V2");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = v4;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "Asset-Type: (%@) is a 3rd party asset, but contains no server URL.", buf, 0xCu);
        }
      }

      v20 = IsInternalAllowed ^ 1;
    }

    else
    {
      v20 = 0;
    }

    v21 = v16;
    v22 = [(ASAssetMetadataUpdatePolicy *)self checkPreferencesForOverride:v4];
    objc_opt_class();
    v23 = v21;
    if (objc_opt_isKindOfClass())
    {
      if (v20)
      {
        v24 = _MADLog(@"V2");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v30 = v4;
          v31 = 2112;
          v32 = v22;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Asset-Type: (%@) has an overridden URL (%@) that will not be honored.", buf, 0x16u);
        }

        v23 = v21;
      }

      else
      {
        v23 = v22;
        v24 = v21;
      }
    }

    if (([v23 hasSuffix:@"/"] & 1) == 0)
    {
      v25 = [NSString stringWithFormat:@"%@/", v23];

      v23 = v25;
    }

    v10 = [NSURL URLWithString:v23];
  }

  else
  {
    v10 = [NSURL URLWithString:v16];
  }

LABEL_44:

  return v10;
}

- (id)getSystemAppURL:(id)a3 assetType:(id)a4
{
  v6 = a3;
  v7 = [NSString stringWithFormat:@"%@-%@", @"MobileAssetServerURL", a4];
  v8 = [(ASAssetMetadataUpdatePolicy *)self _stringPreferenceValueForKey:v7];
  if (!v8)
  {
    v8 = v6;
  }

  v9 = [NSURL URLWithString:v8];

  return v9;
}

- (id)checkPreferencesForOverride:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%@-%@", @"MobileAssetServerURL", v4];
  v6 = [(ASAssetMetadataUpdatePolicy *)self _stringPreferenceValueForKey:v5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [NSString stringWithFormat:@"default-%@-%@", @"MobileAssetServerURL", v4];

    v9 = [(ASAssetMetadataUpdatePolicy *)self _stringPreferenceValueForKey:v8];
    if (!v9)
    {
      v9 = [(ASAssetMetadataUpdatePolicy *)self _stringPreferenceValueForKey:@"MobileAssetServerURL"];
    }

    v7 = v9;
    v5 = v8;
  }

  return v7;
}

@end