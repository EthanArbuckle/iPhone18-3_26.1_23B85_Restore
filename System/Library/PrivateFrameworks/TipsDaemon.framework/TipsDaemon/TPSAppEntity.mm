@interface TPSAppEntity
- (TPSAppEntity)initWithDictionary:(id)a3;
@end

@implementation TPSAppEntity

- (TPSAppEntity)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSAppEntity;
  v5 = [(TPSAppEntity *)&v15 init];
  if (v5)
  {
    v6 = [v4 TPSSafeStringForKey:@"name"];
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

    v9 = [v4 TPSSafeStringForKey:@"bundleId"];
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

    v12 = [v4 TPSSafeObjectForKey:@"value"];
    value = v5->_value;
    v5->_value = v12;
  }

  return v5;
}

@end