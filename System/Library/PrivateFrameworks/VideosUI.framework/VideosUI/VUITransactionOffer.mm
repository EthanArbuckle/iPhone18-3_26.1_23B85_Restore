@interface VUITransactionOffer
- (NSString)buyParams;
- (VUITransactionOffer)initWithDictionary:(id)a3;
@end

@implementation VUITransactionOffer

- (VUITransactionOffer)initWithDictionary:(id)a3
{
  v5 = a3;
  v34.receiver = self;
  v34.super_class = VUITransactionOffer;
  v6 = [(VUITransactionOffer *)&v34 init];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v6->_transactionOfferDict, a3);
      v7 = [v5 vui_arrayForKey:@"videosPlayables"];
      v8 = [v5 vui_dictionaryForKey:@"contentMetadata"];
      v9 = [VUIVideosPlayable videosPlayablesFromDictionaries:v7 andMetadataDictionary:v8];
      v10 = [v9 copy];
      videosPlayables = v6->_videosPlayables;
      v6->_videosPlayables = v10;

      v12 = [v5 vui_dictionaryForKey:@"offer"];
      v13 = [v12 copy];
      offer = v6->_offer;
      v6->_offer = v13;

      v6->_initiateFamilySetup = [v5 vui_BOOLForKey:@"initiateFamilySetup" defaultValue:0];
      v15 = [v5 vui_URLForKey:@"sharedWatchUrl"];
      sharedWatchUrl = v6->_sharedWatchUrl;
      v6->_sharedWatchUrl = v15;

      v17 = MEMORY[0x1E695DFA8];
      v18 = [(NSDictionary *)v6->_offer vui_arrayForKey:@"canonicalIds"];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = MEMORY[0x1E695E0F0];
      }

      v21 = [v17 setWithArray:v20];

      if (![v21 count] && -[NSArray count](v6->_videosPlayables, "count"))
      {
        v22 = [(NSArray *)v6->_videosPlayables firstObject];
        v23 = [v22 metadata];
        v24 = [v23 showCanonicalId];
        v25 = [v24 length];

        if (v25)
        {
          v26 = [v22 metadata];
          v27 = [v26 showCanonicalId];
          [v21 addObject:v27];
        }

        v28 = [v22 canonicalID];
        v29 = [v28 length];

        if (v29)
        {
          v30 = [v22 canonicalID];
          [v21 addObject:v30];
        }
      }

      v31 = [v21 allObjects];
      canonicalIDs = v6->_canonicalIDs;
      v6->_canonicalIDs = v31;
    }
  }

  return v6;
}

- (NSString)buyParams
{
  v3 = [(NSDictionary *)self->_transactionOfferDict vui_stringForKey:@"buyParams"];
  v4 = v3;
  if (!v3 || ![v3 length])
  {
    v5 = [(VUITransactionOffer *)self offer];
    v6 = [v5 vui_stringForKey:@"buyParams"];

    v4 = v6;
  }

  return v4;
}

@end