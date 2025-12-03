@interface SREQueryIntent
+ (id)queryIntentWithGenres:(id)genres;
- (SREQueryIntent)init;
@end

@implementation SREQueryIntent

+ (id)queryIntentWithGenres:(id)genres
{
  v18 = *MEMORY[0x277D85DE8];
  genresCopy = genres;
  v4 = objc_alloc_init(SREQueryIntent);
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(genresCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = genresCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{*(*(&v13 + 1) + 8 * i), v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(SREQueryIntent *)v4 setGenres:v5];
  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (SREQueryIntent)init
{
  v3.receiver = self;
  v3.super_class = SREQueryIntent;
  return [(SREQueryIntent *)&v3 init];
}

@end