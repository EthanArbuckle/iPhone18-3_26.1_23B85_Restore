@interface WLKContinuationMetadata
- (WLKContinuationMetadata)initWithDictionary:(id)dictionary context:(id)context;
@end

@implementation WLKContinuationMetadata

- (WLKContinuationMetadata)initWithDictionary:(id)dictionary context:(id)context
{
  dictionaryCopy = dictionary;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = WLKContinuationMetadata;
  v8 = [(WLKContinuationMetadataBase *)&v22 initWithDictionary:dictionaryCopy context:contextCopy];
  if (v8)
  {
    v9 = [dictionaryCopy wlk_dictionaryForKey:@"playable"];
    v10 = [dictionaryCopy wlk_arrayForKey:@"playables"];
    if ([v10 count])
    {
      firstObject = [v10 firstObject];

      v9 = firstObject;
    }

    if (v9)
    {
      v12 = [[WLKPlayable alloc] initWithDictionary:v9 context:contextCopy];
      playable = v8->_playable;
      v8->_playable = v12;
    }

    v14 = [dictionaryCopy wlk_stringForKey:@"deleteId"];
    deleteID = v8->_deleteID;
    v8->_deleteID = v14;

    v16 = [dictionaryCopy wlk_numberForKey:@"siriActionsExpirationEpochMillis"];
    siriActionsExpirationEpochMillis = v8->_siriActionsExpirationEpochMillis;
    v8->_siriActionsExpirationEpochMillis = v16;

    v18 = [dictionaryCopy wlk_arrayForKey:@"siriActionsCategories"];
    v19 = [v18 copy];
    siriActionsCategories = v8->_siriActionsCategories;
    v8->_siriActionsCategories = v19;
  }

  return v8;
}

@end