@interface VCGuardedPreferencesManager
+ (BOOL)setInteger:(int64_t)integer forKey:(id)key inDomain:(id)domain withAccessSpecifier:(id)specifier error:(id *)error;
+ (id)keyWithPreferenceKey:(id)key bundleId:(id)id;
@end

@implementation VCGuardedPreferencesManager

+ (id)keyWithPreferenceKey:(id)key bundleId:(id)id
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = id;
  v12[1] = key;
  v5 = MEMORY[0x277CBEA60];
  idCopy = id;
  keyCopy = key;
  v8 = [v5 arrayWithObjects:v12 count:2];

  v9 = [v8 componentsJoinedByString:@"-"];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)setInteger:(int64_t)integer forKey:(id)key inDomain:(id)domain withAccessSpecifier:(id)specifier error:(id *)error
{
  keyCopy = key;
  domainCopy = domain;
  specifierCopy = specifier;
  if (keyCopy)
  {
    if (domainCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCGuardedPreferencesManager.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"domain"}];

    if (specifierCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCGuardedPreferencesManager.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"key"}];

  if (!domainCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (specifierCopy)
  {
    goto LABEL_4;
  }

LABEL_18:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"VCGuardedPreferencesManager.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

LABEL_4:
  associatedAppBundleIdentifier = [specifierCopy associatedAppBundleIdentifier];
  if ([associatedAppBundleIdentifier length])
  {
  }

  else
  {
    bundleIdentifier = [specifierCopy bundleIdentifier];
    v18 = [bundleIdentifier length];

    if (!v18)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7A388] code:1011 userInfo:0];
      v19 = v25;
      if (error)
      {
        v26 = v25;
        v23 = 0;
        *error = v19;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_12;
    }
  }

  v19 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:domainCopy];
  associatedAppBundleIdentifier2 = [specifierCopy associatedAppBundleIdentifier];
  bundleIdentifier2 = associatedAppBundleIdentifier2;
  if (!associatedAppBundleIdentifier2)
  {
    bundleIdentifier2 = [specifierCopy bundleIdentifier];
  }

  v22 = [self keyWithPreferenceKey:keyCopy bundleId:bundleIdentifier2];
  [v19 setInteger:integer forKey:v22];

  if (!associatedAppBundleIdentifier2)
  {
  }

  v23 = CFPreferencesAppSynchronize(*MEMORY[0x277CBF028]) != 0;
LABEL_12:

  return v23;
}

@end