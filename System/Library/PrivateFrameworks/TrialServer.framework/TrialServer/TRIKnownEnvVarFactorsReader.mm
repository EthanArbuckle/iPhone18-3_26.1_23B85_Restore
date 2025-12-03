@interface TRIKnownEnvVarFactorsReader
+ (id)_knownFactorsFromPlistURL:(id)l;
+ (id)knownFactorsFromPaths:(id)paths;
@end

@implementation TRIKnownEnvVarFactorsReader

+ (id)_knownFactorsFromPlistURL:(id)l
{
  v3 = MEMORY[0x277CBEAC0];
  lCopy = l;
  v5 = [[v3 alloc] initWithContentsOfURL:lCopy error:0];

  if (v5)
  {
    v6 = [v5 objectForKey:@"KnownFactors"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

+ (id)knownFactorsFromPaths:(id)paths
{
  v31 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v5 = objc_alloc(MEMORY[0x277CBEBC0]);
  allowEnvVarDefaultLevelsDir = [pathsCopy allowEnvVarDefaultLevelsDir];
  v7 = [v5 initWithString:allowEnvVarDefaultLevelsDir];

  if (v7)
  {
    v25 = pathsCopy;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v24 = v7;
    v9 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 errorHandler:&__block_literal_global_23];

    v10 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          pathExtension = [v16 pathExtension];
          v18 = [pathExtension isEqualToString:@"plist"];

          if (v18)
          {
            v19 = objc_autoreleasePoolPush();
            v20 = [self _knownFactorsFromPlistURL:v16];
            [v10 addObjectsFromArray:v20];

            objc_autoreleasePoolPop(v19);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    v21 = [v10 copy];
    v7 = v24;
    pathsCopy = v25;
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end