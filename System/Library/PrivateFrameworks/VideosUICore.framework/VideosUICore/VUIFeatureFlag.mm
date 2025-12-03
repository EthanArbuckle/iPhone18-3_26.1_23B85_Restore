@interface VUIFeatureFlag
- (BOOL)_enabledFromDefaults;
- (BOOL)enabled;
- (VUIFeatureFlag)initWithFeatureDict:(id)dict;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation VUIFeatureFlag

- (VUIFeatureFlag)initWithFeatureDict:(id)dict
{
  dictCopy = dict;
  v22.receiver = self;
  v22.super_class = VUIFeatureFlag;
  v5 = [(VUIFeatureFlag *)&v22 init];
  if (v5)
  {
    v6 = [dictCopy objectForKey:@"defaultsKey"];
    defaultsKey = v5->_defaultsKey;
    v5->_defaultsKey = v6;

    v8 = [dictCopy objectForKey:@"featureName"];
    featureName = v5->_featureName;
    v5->_featureName = v8;

    v10 = [dictCopy objectForKey:@"featureDescription"];
    v11 = v10;
    v12 = v10 ? v10 : &stru_2880D3950;
    objc_storeStrong(&v5->_featureDescription, v12);

    v13 = [dictCopy objectForKey:@"isEnabledByDefault"];
    v5->_isEnabledByDefault = [v13 BOOLValue];

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_ebd", v5->_defaultsKey];
    isEnabledByDefaultKey = v5->_isEnabledByDefaultKey;
    v5->_isEnabledByDefaultKey = v14;

    v16 = [dictCopy objectForKey:@"isIOS"];
    v5->_isAvailableForOS = [v16 intValue] != 0;

    if (v5->_isAvailableForOS)
    {
      v17 = [dictCopy objectForKey:@"iOSDefaultsDomain"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [dictCopy objectForKey:@"defaultsDomain"];
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
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      defaultsDomain = [(VUIFeatureFlag *)self defaultsDomain];
      v11 = [bundleIdentifier isEqualToString:defaultsDomain];

      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      if (v11)
      {
        defaultsKey = [(VUIFeatureFlag *)self defaultsKey];
        [standardUserDefaults removeObjectForKey:defaultsKey];
      }

      else
      {
        defaultsDomain2 = [(VUIFeatureFlag *)self defaultsDomain];
        defaultsKey = [standardUserDefaults initWithSuiteName:defaultsDomain2];
        defaultsKey2 = [(VUIFeatureFlag *)self defaultsKey];
        [defaultsKey removeObjectForKey:defaultsKey2];

        standardUserDefaults = defaultsDomain2;
      }

      self->_enabled = 1;
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      isEnabledByDefaultKey = [(VUIFeatureFlag *)self isEnabledByDefaultKey];
      [standardUserDefaults2 setObject:MEMORY[0x277CBEC38] forKey:isEnabledByDefaultKey];

      return self->_enabled;
    }

    else
    {
      _enabledFromDefaults = [(VUIFeatureFlag *)self _enabledFromDefaults];
      self->_enabled = _enabledFromDefaults;
    }
  }

  else
  {
    _enabledFromDefaults = 0;
    self->_enabled = 0;
  }

  return _enabledFromDefaults;
}

- (BOOL)_enabledFromDefaults
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  defaultsDomain = [(VUIFeatureFlag *)self defaultsDomain];
  v6 = [bundleIdentifier isEqualToString:defaultsDomain];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (v6)
  {
    defaultsKey = [(VUIFeatureFlag *)self defaultsKey];
    v9 = [standardUserDefaults objectForKey:defaultsKey];

    if (v9)
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      defaultsKey2 = [(VUIFeatureFlag *)self defaultsKey];
      v12 = [standardUserDefaults2 BOOLForKey:defaultsKey2];

      return v12;
    }
  }

  else
  {
    defaultsDomain2 = [(VUIFeatureFlag *)self defaultsDomain];
    v15 = [standardUserDefaults initWithSuiteName:defaultsDomain2];
    defaultsKey3 = [(VUIFeatureFlag *)self defaultsKey];
    v17 = [v15 objectForKey:defaultsKey3];

    if (v17)
    {
      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      defaultsDomain3 = [(VUIFeatureFlag *)self defaultsDomain];
      v20 = [standardUserDefaults3 initWithSuiteName:defaultsDomain3];
      defaultsKey4 = [(VUIFeatureFlag *)self defaultsKey];
      v22 = [v20 BOOLForKey:defaultsKey4];

      return v22;
    }
  }

  return self->_isEnabledByDefault;
}

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  if (self->_isAvailableForOS)
  {
    enabledCopy = enabled;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    defaultsDomain = [(VUIFeatureFlag *)self defaultsDomain];
    v9 = [bundleIdentifier isEqualToString:defaultsDomain];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if (v9)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
      defaultsKey = [(VUIFeatureFlag *)self defaultsKey];
      [standardUserDefaults setObject:v10 forKey:defaultsKey];
    }

    else
    {
      defaultsDomain2 = [(VUIFeatureFlag *)self defaultsDomain];
      v10 = [standardUserDefaults initWithSuiteName:defaultsDomain2];
      defaultsKey = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
      defaultsKey2 = [(VUIFeatureFlag *)self defaultsKey];
      [v10 setObject:defaultsKey forKey:defaultsKey2];

      standardUserDefaults = defaultsDomain2;
    }
  }
}

@end