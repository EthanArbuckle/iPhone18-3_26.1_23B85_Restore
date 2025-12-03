@interface PSSystemConfiguration
+ (id)sharedInstance;
- (__CFString)dataServiceID;
- (__CFString)getServiceIDForPDPContext:(unsigned int)context;
- (__CFString)voicemailServiceID;
- (id)interfaceConfigurationValueForKey:(__CFString *)key serviceID:(__CFString *)d;
- (id)protocolConfiguration:(__CFString *)configuration serviceID:(__CFString *)d;
- (id)protocolConfigurationValueForKey:(__CFString *)key protocolType:(__CFString *)type serviceID:(__CFString *)d;
- (unsigned)synchronizeForWriting:(BOOL)writing;
- (void)cleanupPrefs;
- (void)dealloc;
- (void)setInterfaceConfigurationValue:(id)value forKey:(__CFString *)key serviceID:(__CFString *)d;
- (void)setProtocolConfiguration:(id)configuration protocolType:(__CFString *)type serviceID:(__CFString *)d;
- (void)setProtocolConfigurationValue:(id)value forKey:(__CFString *)key protocolType:(__CFString *)type serviceID:(__CFString *)d;
@end

@implementation PSSystemConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_cacheOnce != -1)
  {
    +[PSSystemConfiguration sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __39__PSSystemConfiguration_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PSSystemConfiguration);
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    CFRelease(prefs);
  }

  v4.receiver = self;
  v4.super_class = PSSystemConfiguration;
  [(PSSystemConfiguration *)&v4 dealloc];
}

- (unsigned)synchronizeForWriting:(BOOL)writing
{
  prefs = self->_prefs;
  if (!prefs)
  {
    v7 = SCPreferencesCreateWithAuthorization(0, @"com.apple.preferences", 0, 0);
    self->_prefs = v7;
    if (writing)
    {
      goto LABEL_6;
    }

LABEL_10:
    LOBYTE(v6) = 1;
    return v6;
  }

  if (!writing)
  {
    SCPreferencesSynchronize(prefs);
    goto LABEL_10;
  }

  v6 = SCPreferencesLock(prefs, 1u);
  if (v6)
  {
    goto LABEL_7;
  }

  SCPreferencesSynchronize(self->_prefs);
  v7 = self->_prefs;
LABEL_6:
  v6 = SCPreferencesLock(v7, 1u);
LABEL_7:
  if (!v6)
  {
    v8 = SCError();
    v9 = SCErrorString(v8);
    NSLog(&cfstr_Scpreferencesl.isa, v9);
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)cleanupPrefs
{
  prefs = self->_prefs;
  if (prefs)
  {
    CFRelease(prefs);
    self->_prefs = 0;
  }
}

- (__CFString)dataServiceID
{
  [(PSSystemConfiguration *)self synchronizeForWriting:0];
  v3 = SCNetworkSetCopyCurrent(self->_prefs);
  if (!v3)
  {
    v17 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  v5 = SCNetworkSetCopyServices(v3);
  if (!v5)
  {
    v17 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    Interface = SCNetworkServiceGetInterface(ValueAtIndex);
    if (!Interface)
    {
      goto LABEL_11;
    }

    v12 = Interface;
    InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
    if (!InterfaceType || !CFEqual(InterfaceType, @"com.apple.CommCenter"))
    {
      goto LABEL_11;
    }

    v14 = SCNetworkInterfaceGetConfiguration(v12);
    v15 = [v14 objectForKey:@"AllowNetworkAccess"];
    v16 = v15;
    if (v15)
    {
      if ([v15 BOOLValue])
      {
        break;
      }
    }

LABEL_11:
    if (v8 == ++v9)
    {
      goto LABEL_12;
    }
  }

  v17 = [(__CFString *)SCNetworkServiceGetServiceID(ValueAtIndex) copy];
  v19 = v17;

LABEL_13:
  CFRelease(v6);
LABEL_16:
  CFRelease(v4);
LABEL_17:
  [(PSSystemConfiguration *)self cleanupPrefs];
  return v17;
}

- (__CFString)voicemailServiceID
{
  [(PSSystemConfiguration *)self synchronizeForWriting:0];
  v3 = SCNetworkSetCopyCurrent(self->_prefs);
  if (!v3)
  {
    v17 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  v5 = SCNetworkSetCopyServices(v3);
  if (!v5)
  {
    v17 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    Interface = SCNetworkServiceGetInterface(ValueAtIndex);
    if (!Interface)
    {
      goto LABEL_11;
    }

    v12 = Interface;
    InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
    if (!InterfaceType || !CFEqual(InterfaceType, @"com.apple.CommCenter"))
    {
      goto LABEL_11;
    }

    v14 = SCNetworkInterfaceGetConfiguration(v12);
    v15 = [v14 objectForKey:@"AllowNetworkAccess"];
    v16 = v15;
    if (v15)
    {
      if (![v15 BOOLValue])
      {
        break;
      }
    }

LABEL_11:
    if (v8 == ++v9)
    {
      goto LABEL_12;
    }
  }

  v17 = [(__CFString *)SCNetworkServiceGetServiceID(ValueAtIndex) copy];
  v19 = v17;

LABEL_13:
  CFRelease(v6);
LABEL_16:
  CFRelease(v4);
LABEL_17:
  [(PSSystemConfiguration *)self cleanupPrefs];
  return v17;
}

- (__CFString)getServiceIDForPDPContext:(unsigned int)context
{
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"ip%d", context);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  [(PSSystemConfiguration *)self synchronizeForWriting:0];
  v6 = SCNetworkSetCopyCurrent(self->_prefs);
  if (v6)
  {
    v7 = v6;
    v8 = SCNetworkSetCopyServices(v6);
    if (v8)
    {
      v9 = v8;
      Count = CFArrayGetCount(v8);
      if (Count < 1)
      {
LABEL_12:
        v18 = 0;
      }

      else
      {
        v11 = Count;
        v12 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
          Interface = SCNetworkServiceGetInterface(ValueAtIndex);
          if (Interface)
          {
            v15 = Interface;
            InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
            if (InterfaceType)
            {
              if (CFEqual(InterfaceType, @"com.apple.CommCenter"))
              {
                BSDName = SCNetworkInterfaceGetBSDName(v15);
                if (BSDName)
                {
                  if (CFEqual(v5, BSDName))
                  {
                    break;
                  }
                }
              }
            }
          }

          if (v11 == ++v12)
          {
            goto LABEL_12;
          }
        }

        v18 = [(__CFString *)SCNetworkServiceGetServiceID(ValueAtIndex) copy];
        v20 = v18;
      }

      CFRelease(v9);
    }

    else
    {
      v18 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v18 = 0;
  }

  CFRelease(v5);
  [(PSSystemConfiguration *)self cleanupPrefs];
  return v18;
}

- (id)interfaceConfigurationValueForKey:(__CFString *)key serviceID:(__CFString *)d
{
  if (d)
  {
    [(PSSystemConfiguration *)self synchronizeForWriting:0];
    v7 = SCNetworkServiceCopy(self->_prefs, d);
    if (v7)
    {
      v8 = v7;
      Interface = SCNetworkServiceGetInterface(v7);
      if (Interface)
      {
        v10 = SCNetworkInterfaceGetConfiguration(Interface);
        v11 = v10;
        if (v10)
        {
          v12 = [v10 objectForKey:key];
          v13 = [v12 copy];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v13 = 0;
    }

    [(PSSystemConfiguration *)self cleanupPrefs];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setInterfaceConfigurationValue:(id)value forKey:(__CFString *)key serviceID:(__CFString *)d
{
  valueCopy = value;
  if (d && [(PSSystemConfiguration *)self synchronizeForWriting:1])
  {
    v8 = SCNetworkServiceCopy(self->_prefs, d);
    if (!v8)
    {
LABEL_17:
      [(PSSystemConfiguration *)self cleanupPrefs];
      goto LABEL_18;
    }

    v9 = v8;
    Interface = SCNetworkServiceGetInterface(v8);
    if (!Interface)
    {
LABEL_16:
      CFRelease(v9);
      goto LABEL_17;
    }

    v11 = Interface;
    v12 = SCNetworkInterfaceGetConfiguration(Interface);
    v13 = v12;
    if (!v12)
    {
      NSLog(&cfstr_Setinterfaceco.isa, key, valueCopy);
LABEL_15:

      goto LABEL_16;
    }

    v14 = [v12 mutableCopy];
    [v14 setObject:valueCopy forKey:key];
    [v14 setObject:*MEMORY[0x1E695E4D0] forKey:@"SettingsHaveBeenAlteredByPreferences"];
    if (SCNetworkInterfaceSetConfiguration(v11, v14))
    {
      if (SCPreferencesCommitChanges(self->_prefs))
      {
        if (SCPreferencesApplyChanges(self->_prefs))
        {
LABEL_14:

          goto LABEL_15;
        }

        v15 = @"SCPreferencesApplyChanges failed: %s";
      }

      else
      {
        v15 = @"SCPreferencesCommitChanges failed: %s";
      }
    }

    else
    {
      v15 = @"SCNetworkInterfaceSetConfiguration failed: %s";
    }

    v16 = SCError();
    v17 = SCErrorString(v16);
    NSLog(&v15->isa, v17);
    goto LABEL_14;
  }

LABEL_18:
}

- (id)protocolConfiguration:(__CFString *)configuration serviceID:(__CFString *)d
{
  if (d)
  {
    [(PSSystemConfiguration *)self synchronizeForWriting:0];
    v7 = SCNetworkServiceCopy(self->_prefs, d);
    if (v7)
    {
      v8 = v7;
      v9 = SCNetworkServiceCopyProtocol(v7, configuration);
      if (v9)
      {
        v10 = v9;
        v11 = SCNetworkProtocolGetConfiguration(v9);
        v12 = v11;
        if (v11)
        {
          v13 = [v11 copy];
        }

        else
        {
          v13 = 0;
        }

        CFRelease(v10);
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v13 = 0;
    }

    [(PSSystemConfiguration *)self cleanupPrefs];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setProtocolConfiguration:(id)configuration protocolType:(__CFString *)type serviceID:(__CFString *)d
{
  config = configuration;
  if (d && [(PSSystemConfiguration *)self synchronizeForWriting:1])
  {
    v8 = SCNetworkServiceCopy(self->_prefs, d);
    if (!v8)
    {
LABEL_14:
      [(PSSystemConfiguration *)self cleanupPrefs];
      goto LABEL_15;
    }

    v9 = v8;
    v10 = SCNetworkServiceCopyProtocol(v8, type);
    if (!v10)
    {
LABEL_13:
      CFRelease(v9);
      goto LABEL_14;
    }

    v11 = v10;
    if (SCNetworkProtocolSetConfiguration(v10, config))
    {
      if (SCPreferencesCommitChanges(self->_prefs))
      {
        if (SCPreferencesApplyChanges(self->_prefs))
        {
LABEL_12:
          CFRelease(v11);
          goto LABEL_13;
        }

        v12 = @"SCPreferencesApplyChanges failed: %s";
      }

      else
      {
        v12 = @"SCPreferencesCommitChanges failed: %s";
      }
    }

    else
    {
      v12 = @"SCNetworkProtocolSetConfiguration failed: %s";
    }

    v13 = SCError();
    v14 = SCErrorString(v13);
    NSLog(&v12->isa, v14);
    goto LABEL_12;
  }

LABEL_15:
}

- (id)protocolConfigurationValueForKey:(__CFString *)key protocolType:(__CFString *)type serviceID:(__CFString *)d
{
  if (d)
  {
    [(PSSystemConfiguration *)self synchronizeForWriting:0];
    v9 = SCNetworkServiceCopy(self->_prefs, d);
    if (v9)
    {
      v10 = v9;
      v11 = SCNetworkServiceCopyProtocol(v9, type);
      if (v11)
      {
        v12 = v11;
        v13 = SCNetworkProtocolGetConfiguration(v11);
        v14 = v13;
        if (v13)
        {
          v15 = [v13 objectForKey:key];
          v16 = [v15 copy];
        }

        else
        {
          v16 = 0;
        }

        CFRelease(v12);
      }

      else
      {
        v16 = 0;
      }

      CFRelease(v10);
    }

    else
    {
      v16 = 0;
    }

    [(PSSystemConfiguration *)self cleanupPrefs];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setProtocolConfigurationValue:(id)value forKey:(__CFString *)key protocolType:(__CFString *)type serviceID:(__CFString *)d
{
  valueCopy = value;
  if (d && [(PSSystemConfiguration *)self synchronizeForWriting:1])
  {
    v10 = SCNetworkServiceCopy(self->_prefs, d);
    if (!v10)
    {
LABEL_17:
      [(PSSystemConfiguration *)self cleanupPrefs];
      goto LABEL_18;
    }

    v11 = v10;
    v12 = SCNetworkServiceCopyProtocol(v10, type);
    if (!v12)
    {
LABEL_16:
      CFRelease(v11);
      goto LABEL_17;
    }

    v13 = v12;
    v14 = SCNetworkProtocolGetConfiguration(v12);
    v15 = v14;
    if (!v14)
    {
      NSLog(&cfstr_Setprotocolcon.isa, key, valueCopy);
LABEL_15:
      CFRelease(v13);

      goto LABEL_16;
    }

    v16 = [v14 mutableCopy];
    [v16 setObject:valueCopy forKey:key];
    if (SCNetworkProtocolSetConfiguration(v13, v16))
    {
      if (SCPreferencesCommitChanges(self->_prefs))
      {
        if (SCPreferencesApplyChanges(self->_prefs))
        {
LABEL_14:

          goto LABEL_15;
        }

        v17 = @"SCPreferencesApplyChanges failed: %s";
      }

      else
      {
        v17 = @"SCPreferencesCommitChanges failed: %s";
      }
    }

    else
    {
      v17 = @"SCNetworkProtocolSetConfiguration failed: %s";
    }

    v18 = SCError();
    v19 = SCErrorString(v18);
    NSLog(&v17->isa, v19);
    goto LABEL_14;
  }

LABEL_18:
}

@end