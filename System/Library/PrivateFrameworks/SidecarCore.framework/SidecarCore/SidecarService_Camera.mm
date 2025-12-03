@interface SidecarService_Camera
+ (id)returnTypes;
- (id)mutableRequestMessage;
@end

@implementation SidecarService_Camera

- (id)mutableRequestMessage
{
  v23 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = SidecarService_Camera;
  mutableRequestMessage = [(SidecarService *)&v20 mutableRequestMessage];
  v3 = objc_opt_new();
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults valueForKey:@"ContinuityCameraImageQuality"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setObject:v5 forKey:@"ContinuityCameraImageQuality"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      if (v6 > 0.0 && v6 <= 1.0)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [v3 setObject:v8 forKey:@"ContinuityCameraImageQuality"];
      }
    }
  }

  v9 = [standardUserDefaults stringForKey:@"ContinuityCameraImageSize"];
  lowercaseString = [v9 lowercaseString];

  if (lowercaseString)
  {
    if ([&unk_2877BFD10 containsObject:lowercaseString])
    {
      [v3 setObject:lowercaseString forKey:@"ContinuityCameraImageSize"];
    }

    else
    {
      v25 = NSSizeFromString(lowercaseString);
      width = v25.width;
      height = v25.height;
      if (!NSEqualSizes(v25, *MEMORY[0x277CCA870]))
      {
        v26.width = width;
        v26.height = height;
        v13 = NSStringFromSize(v26);
        [v3 setObject:v13 forKey:@"ContinuityCameraImageSize"];
      }
    }
  }

  v14 = [standardUserDefaults stringForKey:@"ContinuityCameraImageType"];
  if (v14)
  {
    v15 = [MEMORY[0x277CE1CB8] _typeWithIdentifier:v14 allowUndeclared:1];
    if ([v15 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      [v3 setObject:v14 forKey:@"ContinuityCameraImageType"];
    }
  }

  if ([v3 count])
  {
    v16 = SidecarCoreLogSubsystem(OS_LOG_TYPE_INFO);
    v17 = v16;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v22 = v3;
      _os_log_impl(&dword_26604C000, v17, OS_LOG_TYPE_INFO, "defaults: %{public}@", buf, 0xCu);
    }

    SidecarMessageSetDefaults(mutableRequestMessage, v3);
  }

  v18 = *MEMORY[0x277D85DE8];

  return mutableRequestMessage;
}

+ (id)returnTypes
{
  if (returnTypes_once_609 != -1)
  {
    dispatch_once(&returnTypes_once_609, &__block_literal_global_610);
  }

  v3 = returnTypes_types_611;

  return v3;
}

@end