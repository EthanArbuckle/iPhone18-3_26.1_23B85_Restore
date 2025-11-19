@interface ICMediaAPIURLMapping
- (ICMediaAPIURLMapping)initWithResponseDictionary:(id)a3;
@end

@implementation ICMediaAPIURLMapping

- (ICMediaAPIURLMapping)initWithResponseDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICMediaAPIURLMapping;
  v5 = [(ICMediaAPIURLMapping *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

@end