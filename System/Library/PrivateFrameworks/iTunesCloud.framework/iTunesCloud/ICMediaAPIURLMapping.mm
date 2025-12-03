@interface ICMediaAPIURLMapping
- (ICMediaAPIURLMapping)initWithResponseDictionary:(id)dictionary;
@end

@implementation ICMediaAPIURLMapping

- (ICMediaAPIURLMapping)initWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICMediaAPIURLMapping;
  v5 = [(ICMediaAPIURLMapping *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

@end