@interface PXContextualMemoriesPeopleSetting
- (NSString)headerTitle;
- (NSString)title;
- (PXContextualMemoriesPeopleSetting)init;
- (void)resetToDefault;
@end

@implementation PXContextualMemoriesPeopleSetting

- (void)resetToDefault
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  px_dispatch_on_main_queue();
}

void __51__PXContextualMemoriesPeopleSetting_resetToDefault__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPeopleNames:MEMORY[0x1E695E0F0]];
  v1 = objc_opt_new();
  v2 = [v1 peopleProximityDate];
  [WeakRetained requestPeopleNamesUpdateSinceDate:v2 withCompletionHandler:&__block_literal_global_3907];
}

- (NSString)title
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PXContextualMemoriesPeopleSetting *)self peopleNames];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        if (-v7 == i)
        {
          v10 = @"• %@";
        }

        else
        {
          v10 = @"\n• %@";
        }

        [v3 appendFormat:v10, *(*(&v12 + 1) + 8 * i)];
      }

      v7 += v6;
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSString)headerTitle
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 localizedStringForKey:@"People" value:&stru_1F1741150 table:0];

  return v3;
}

- (PXContextualMemoriesPeopleSetting)init
{
  v3.receiver = self;
  v3.super_class = PXContextualMemoriesPeopleSetting;
  return [(PXContextualMemoriesPeopleSetting *)&v3 init];
}

@end