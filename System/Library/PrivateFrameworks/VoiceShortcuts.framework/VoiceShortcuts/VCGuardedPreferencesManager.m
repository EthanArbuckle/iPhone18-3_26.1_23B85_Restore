@interface VCGuardedPreferencesManager
+ (BOOL)setInteger:(int64_t)a3 forKey:(id)a4 inDomain:(id)a5 withAccessSpecifier:(id)a6 error:(id *)a7;
+ (id)keyWithPreferenceKey:(id)a3 bundleId:(id)a4;
@end

@implementation VCGuardedPreferencesManager

+ (id)keyWithPreferenceKey:(id)a3 bundleId:(id)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a4;
  v12[1] = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:v12 count:2];

  v9 = [v8 componentsJoinedByString:@"-"];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)setInteger:(int64_t)a3 forKey:(id)a4 inDomain:(id)a5 withAccessSpecifier:(id)a6 error:(id *)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_17:
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"VCGuardedPreferencesManager.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"domain"}];

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:a1 file:@"VCGuardedPreferencesManager.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"key"}];

  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_18:
  v29 = [MEMORY[0x277CCA890] currentHandler];
  [v29 handleFailureInMethod:a2 object:a1 file:@"VCGuardedPreferencesManager.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"accessSpecifier"}];

LABEL_4:
  v16 = [v15 associatedAppBundleIdentifier];
  if ([v16 length])
  {
  }

  else
  {
    v17 = [v15 bundleIdentifier];
    v18 = [v17 length];

    if (!v18)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7A388] code:1011 userInfo:0];
      v19 = v25;
      if (a7)
      {
        v26 = v25;
        v23 = 0;
        *a7 = v19;
      }

      else
      {
        v23 = 0;
      }

      goto LABEL_12;
    }
  }

  v19 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v14];
  v20 = [v15 associatedAppBundleIdentifier];
  v21 = v20;
  if (!v20)
  {
    v21 = [v15 bundleIdentifier];
  }

  v22 = [a1 keyWithPreferenceKey:v13 bundleId:v21];
  [v19 setInteger:a3 forKey:v22];

  if (!v20)
  {
  }

  v23 = CFPreferencesAppSynchronize(*MEMORY[0x277CBF028]) != 0;
LABEL_12:

  return v23;
}

@end