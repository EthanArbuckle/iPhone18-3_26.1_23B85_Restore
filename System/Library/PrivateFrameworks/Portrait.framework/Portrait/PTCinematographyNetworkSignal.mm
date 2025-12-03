@interface PTCinematographyNetworkSignal
+ (Class)subclassForName:(id)name;
+ (id)networkSignalWithModelDictionary:(id)dictionary;
- (BOOL)checkSignalForStream:(id)stream;
- (PTCinematographyNetworkSignal)initWithModelDictionary:(id)dictionary;
@end

@implementation PTCinematographyNetworkSignal

+ (id)networkSignalWithModelDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithModelDictionary:dictionaryCopy];

  return v5;
}

+ (Class)subclassForName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:@"__rect"] & 1) == 0 && (objc_msgSend(nameCopy, "isEqualToString:", @"__uncertainty") & 1) == 0)
  {
    [nameCopy isEqualToString:@"__label_onehot"];
  }

  v4 = objc_opt_class();

  return v4;
}

- (PTCinematographyNetworkSignal)initWithModelDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v10 = [objc_alloc(objc_msgSend(objc_opt_class() subclassForName:{v5)), "initWithModelDictionary:", dictionaryCopy}];
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
      v9 = [dictionaryCopy objectForKeyedSubscript:@"count"];
      v8->_count = [v9 unsignedIntegerValue];
    }

    v10 = v8;
    self = v10;
  }

  v11 = v10;

  return v11;
}

- (BOOL)checkSignalForStream:(id)stream
{
  streamCopy = stream;
  v5 = [(PTCinematographyNetworkSignal *)self count];
  v6 = [streamCopy count];
  index = [streamCopy index];

  return v5 <= v6 - index;
}

@end