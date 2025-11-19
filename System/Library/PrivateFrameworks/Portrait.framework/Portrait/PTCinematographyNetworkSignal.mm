@interface PTCinematographyNetworkSignal
+ (Class)subclassForName:(id)a3;
+ (id)networkSignalWithModelDictionary:(id)a3;
- (BOOL)checkSignalForStream:(id)a3;
- (PTCinematographyNetworkSignal)initWithModelDictionary:(id)a3;
@end

@implementation PTCinematographyNetworkSignal

+ (id)networkSignalWithModelDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithModelDictionary:v4];

  return v5;
}

+ (Class)subclassForName:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"__rect"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"__uncertainty") & 1) == 0)
  {
    [v3 isEqualToString:@"__label_onehot"];
  }

  v4 = objc_opt_class();

  return v4;
}

- (PTCinematographyNetworkSignal)initWithModelDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"name"];
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v10 = [objc_alloc(objc_msgSend(objc_opt_class() subclassForName:{v5)), "initWithModelDictionary:", v4}];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PTCinematographyNetworkSignal;
    v7 = [(PTCinematographyNetworkSignal *)&v13 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_name, v5);
      v9 = [v4 objectForKeyedSubscript:@"count"];
      v8->_count = [v9 unsignedIntegerValue];
    }

    v10 = v8;
    self = v10;
  }

  v11 = v10;

  return v11;
}

- (BOOL)checkSignalForStream:(id)a3
{
  v4 = a3;
  v5 = [(PTCinematographyNetworkSignal *)self count];
  v6 = [v4 count];
  v7 = [v4 index];

  return v5 <= v6 - v7;
}

@end