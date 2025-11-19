@interface WLKContinuationMetadata
- (WLKContinuationMetadata)initWithDictionary:(id)a3 context:(id)a4;
@end

@implementation WLKContinuationMetadata

- (WLKContinuationMetadata)initWithDictionary:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = WLKContinuationMetadata;
  v8 = [(WLKContinuationMetadataBase *)&v22 initWithDictionary:v6 context:v7];
  if (v8)
  {
    v9 = [v6 wlk_dictionaryForKey:@"playable"];
    v10 = [v6 wlk_arrayForKey:@"playables"];
    if ([v10 count])
    {
      v11 = [v10 firstObject];

      v9 = v11;
    }

    if (v9)
    {
      v12 = [[WLKPlayable alloc] initWithDictionary:v9 context:v7];
      playable = v8->_playable;
      v8->_playable = v12;
    }

    v14 = [v6 wlk_stringForKey:@"deleteId"];
    deleteID = v8->_deleteID;
    v8->_deleteID = v14;

    v16 = [v6 wlk_numberForKey:@"siriActionsExpirationEpochMillis"];
    siriActionsExpirationEpochMillis = v8->_siriActionsExpirationEpochMillis;
    v8->_siriActionsExpirationEpochMillis = v16;

    v18 = [v6 wlk_arrayForKey:@"siriActionsCategories"];
    v19 = [v18 copy];
    siriActionsCategories = v8->_siriActionsCategories;
    v8->_siriActionsCategories = v19;
  }

  return v8;
}

@end