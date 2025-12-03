@interface VUITransactionOffer
- (NSString)buyParams;
- (VUITransactionOffer)initWithDictionary:(id)dictionary;
@end

@implementation VUITransactionOffer

- (VUITransactionOffer)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = VUITransactionOffer;
  v6 = [(VUITransactionOffer *)&v34 init];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v6->_transactionOfferDict, dictionary);
      v7 = [dictionaryCopy vui_arrayForKey:@"videosPlayables"];
      v8 = [dictionaryCopy vui_dictionaryForKey:@"contentMetadata"];
      v9 = [VUIVideosPlayable videosPlayablesFromDictionaries:v7 andMetadataDictionary:v8];
      v10 = [v9 copy];
      videosPlayables = v6->_videosPlayables;
      v6->_videosPlayables = v10;

      v12 = [dictionaryCopy vui_dictionaryForKey:@"offer"];
      v13 = [v12 copy];
      offer = v6->_offer;
      v6->_offer = v13;

      v6->_initiateFamilySetup = [dictionaryCopy vui_BOOLForKey:@"initiateFamilySetup" defaultValue:0];
      v15 = [dictionaryCopy vui_URLForKey:@"sharedWatchUrl"];
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
        firstObject = [(NSArray *)v6->_videosPlayables firstObject];
        metadata = [firstObject metadata];
        showCanonicalId = [metadata showCanonicalId];
        v25 = [showCanonicalId length];

        if (v25)
        {
          metadata2 = [firstObject metadata];
          showCanonicalId2 = [metadata2 showCanonicalId];
          [v21 addObject:showCanonicalId2];
        }

        canonicalID = [firstObject canonicalID];
        v29 = [canonicalID length];

        if (v29)
        {
          canonicalID2 = [firstObject canonicalID];
          [v21 addObject:canonicalID2];
        }
      }

      allObjects = [v21 allObjects];
      canonicalIDs = v6->_canonicalIDs;
      v6->_canonicalIDs = allObjects;
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
    offer = [(VUITransactionOffer *)self offer];
    v6 = [offer vui_stringForKey:@"buyParams"];

    v4 = v6;
  }

  return v4;
}

@end