@interface VUIFeatureFlag
- (BOOL)_enabledFromDefaults;
- (BOOL)enabled;
- (VUIFeatureFlag)initWithFeatureDict:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation VUIFeatureFlag

- (VUIFeatureFlag)initWithFeatureDict:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = VUIFeatureFlag;
  v5 = [(VUIFeatureFlag *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"defaultsKey"];
    defaultsKey = v5->_defaultsKey;
    v5->_defaultsKey = v6;

    v8 = [v4 objectForKey:@"featureName"];
    featureName = v5->_featureName;
    v5->_featureName = v8;

    v10 = [v4 objectForKey:@"featureDescription"];
    v11 = v10;
    v12 = v10 ? v10 : &stru_2880D3950;
    objc_storeStrong(&v5->_featureDescription, v12);

    v13 = [v4 objectForKey:@"isEnabledByDefault"];
    v5->_isEnabledByDefault = [v13 BOOLValue];

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_ebd", v5->_defaultsKey];
    isEnabledByDefaultKey = v5->_isEnabledByDefaultKey;
    v5->_isEnabledByDefaultKey = v14;

    v16 = [v4 objectForKey:@"isIOS"];
    v5->_isAvailableForOS = [v16 intValue] != 0;

    if (v5->_isAvailableForOS)
    {
      v17 = [v4 objectForKey:@"iOSDefaultsDomain"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [v4 objectForKey:@"defaultsDomain"];
      }

      defaultsDomain = v5->_defaultsDomain;
      v5->_defaultsDomain = v19;

      if (!v5->_defaultsDomain)
      {
        v5->_defaultsDomain = @"com.apple.tv";
      }
    }
  }

  return v5;
}

- (BOOL)enabled
{
  if (self->_isAvailableForOS)
  {
    if (self->_isEnabledByDefault && ([MEMORY[0x277CBEBD0] standardUserDefaults], v3 = objc_claimAutoreleasedReturnValue(), -[VUIFeatureFlag isEnabledByDefaultKey](self, "isEnabledByDefaultKey"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKey:", v4), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v3, !v5))
    {
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [v8 bundleIdentifier];
      v10 = [(VUIFeatureFlag *)self defaultsDomain];
      v11 = [v9 isEqualToString:v10];

      v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      if (v11)
      {
        v13 = [(VUIFeatureFlag *)self defaultsKey];
        [v12 removeObjectForKey:v13];
      }

      else
      {
        v14 = [(VUIFeatureFlag *)self defaultsDomain];
        v13 = [v12 initWithSuiteName:v14];
        v15 = [(VUIFeatureFlag *)self defaultsKey];
        [v13 removeObjectForKey:v15];

        v12 = v14;
      }

      self->_enabled = 1;
      v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v17 = [(VUIFeatureFlag *)self isEnabledByDefaultKey];
      [v16 setObject:MEMORY[0x277CBEC38] forKey:v17];

      return self->_enabled;
    }

    else
    {
      v6 = [(VUIFeatureFlag *)self _enabledFromDefaults];
      self->_enabled = v6;
    }
  }

  else
  {
    v6 = 0;
    self->_enabled = 0;
  }

  return v6;
}

- (BOOL)_enabledFromDefaults
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [(VUIFeatureFlag *)self defaultsDomain];
  v6 = [v4 isEqualToString:v5];

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (v6)
  {
    v8 = [(VUIFeatureFlag *)self defaultsKey];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v11 = [(VUIFeatureFlag *)self defaultsKey];
      v12 = [v10 BOOLForKey:v11];

      return v12;
    }
  }

  else
  {
    v14 = [(VUIFeatureFlag *)self defaultsDomain];
    v15 = [v7 initWithSuiteName:v14];
    v16 = [(VUIFeatureFlag *)self defaultsKey];
    v17 = [v15 objectForKey:v16];

    if (v17)
    {
      v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v19 = [(VUIFeatureFlag *)self defaultsDomain];
      v20 = [v18 initWithSuiteName:v19];
      v21 = [(VUIFeatureFlag *)self defaultsKey];
      v22 = [v20 BOOLForKey:v21];

      return v22;
    }
  }

  return self->_isEnabledByDefault;
}

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  if (self->_isAvailableForOS)
  {
    v4 = a3;
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 bundleIdentifier];
    v8 = [(VUIFeatureFlag *)self defaultsDomain];
    v9 = [v7 isEqualToString:v8];

    v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (v9)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:v4];
      v11 = [(VUIFeatureFlag *)self defaultsKey];
      [v14 setObject:v10 forKey:v11];
    }

    else
    {
      v12 = [(VUIFeatureFlag *)self defaultsDomain];
      v10 = [v14 initWithSuiteName:v12];
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v4];
      v13 = [(VUIFeatureFlag *)self defaultsKey];
      [v10 setObject:v11 forKey:v13];

      v14 = v12;
    }
  }
}

@end