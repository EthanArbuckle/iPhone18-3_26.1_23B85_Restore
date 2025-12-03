@interface SASportsEntityGroup(SiriUI)
- (uint64_t)siriui_containsAthletes;
- (uint64_t)siriui_containsTeams;
- (void)siriui_enumerateEntitiesWithGroupHandler:()SiriUI teamHandler:athleteHandler:;
@end

@implementation SASportsEntityGroup(SiriUI)

- (void)siriui_enumerateEntitiesWithGroupHandler:()SiriUI teamHandler:athleteHandler:
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v8[2](v8, self);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  entities = [self entities];
  v12 = [entities countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(entities);
        }

        [*(*(&v16 + 1) + 8 * v15++) siriui_enumerateEntitiesWithGroupHandler:v8 teamHandler:v9 athleteHandler:v10];
      }

      while (v13 != v15);
      v13 = [entities countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (uint64_t)siriui_containsTeams
{
  entities = [self entities];
  lastObject = [entities lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (uint64_t)siriui_containsAthletes
{
  entities = [self entities];
  lastObject = [entities lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end