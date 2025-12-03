@interface PTCinematographyNetworkInputSchema
- (PTCinematographyNetworkInputSchema)initWithModelDictionary:(id)dictionary;
@end

@implementation PTCinematographyNetworkInputSchema

- (PTCinematographyNetworkInputSchema)initWithModelDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PTCinematographyNetworkInputSchema;
  v5 = [(PTCinematographyNetworkInputSchema *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"count"];
    v5->_count = [v8 unsignedIntegerValue];

    v9 = [dictionaryCopy copy];
    params = v5->_params;
    v5->_params = v9;
  }

  return v5;
}

@end