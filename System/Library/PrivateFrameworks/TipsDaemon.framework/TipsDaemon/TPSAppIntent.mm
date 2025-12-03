@interface TPSAppIntent
- (TPSAppIntent)initWithDictionary:(id)dictionary;
@end

@implementation TPSAppIntent

- (TPSAppIntent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = TPSAppIntent;
  v5 = [(TPSAppIntent *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeStringForKey:@"name"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_284826B40;
    }

    objc_storeStrong(&v5->_name, v8);

    v9 = [dictionaryCopy TPSSafeStringForKey:@"bundleId"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_284826B40;
    }

    objc_storeStrong(&v5->_bundleId, v11);

    v12 = [dictionaryCopy TPSSafeObjectForKey:@"value"];
    value = v5->_value;
    v5->_value = v12;
  }

  return v5;
}

@end