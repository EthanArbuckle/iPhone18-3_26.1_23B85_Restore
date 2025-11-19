@interface PRSQueryRankingConfiguration
+ (void)updateMailVIP:(id)a3 phoneFavorites:(id)a4 meEmailAddresses:(id)a5;
@end

@implementation PRSQueryRankingConfiguration

+ (void)updateMailVIP:(id)a3 phoneFavorites:(id)a4 meEmailAddresses:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  updateVIPRankingQuery(v7);
  updatePhoneFavoritesQuery(v8);
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * v15) objectForKeyedSubscript:{@"emailAddresses", v18}];
        [v10 addObjectsFromArray:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  updateVIPList(v11, v10);
  updateMeEmailAddresses(v9);

  v17 = *MEMORY[0x1E69E9840];
}

@end