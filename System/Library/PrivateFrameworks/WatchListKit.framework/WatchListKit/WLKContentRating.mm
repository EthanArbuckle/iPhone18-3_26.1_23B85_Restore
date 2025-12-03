@interface WLKContentRating
- (WLKContentRating)init;
- (WLKContentRating)initWithDictionary:(id)dictionary;
@end

@implementation WLKContentRating

- (WLKContentRating)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKContentRatingException" format:@"-init not supported"];

  return 0;
}

- (WLKContentRating)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v19.receiver = self;
    v19.super_class = WLKContentRating;
    v5 = [(WLKContentRating *)&v19 init];
    if (!v5)
    {
LABEL_11:
      self = v5;
      selfCopy = self;
      goto LABEL_12;
    }

    v6 = [dictionaryCopy wlk_stringForKey:@"system"];
    contentRatingSystem = v5->_contentRatingSystem;
    v5->_contentRatingSystem = v6;

    v8 = [dictionaryCopy wlk_numberForKey:@"value"];
    v5->_ratingValue = [v8 unsignedIntegerValue];

    v9 = [dictionaryCopy wlk_stringForKey:@"displayName"];
    v10 = [v9 copy];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [dictionaryCopy wlk_stringForKey:@"name"];
    v13 = [v12 copy];
    name = v5->_name;
    v5->_name = v13;

    v15 = [dictionaryCopy wlk_stringForKey:@"systemType"];
    if ([v15 isEqualToString:@"movies"])
    {
      v16 = 1;
    }

    else
    {
      if (![v15 isEqualToString:@"tv"])
      {
        v5->_systemType = 0;
        goto LABEL_10;
      }

      v16 = 2;
    }

    v5->_systemType = v16;
LABEL_10:

    goto LABEL_11;
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

@end