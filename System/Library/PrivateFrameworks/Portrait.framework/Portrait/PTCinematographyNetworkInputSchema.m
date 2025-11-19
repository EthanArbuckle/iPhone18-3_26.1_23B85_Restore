@interface PTCinematographyNetworkInputSchema
- (PTCinematographyNetworkInputSchema)initWithModelDictionary:(id)a3;
@end

@implementation PTCinematographyNetworkInputSchema

- (PTCinematographyNetworkInputSchema)initWithModelDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PTCinematographyNetworkInputSchema;
  v5 = [(PTCinematographyNetworkInputSchema *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 objectForKeyedSubscript:@"count"];
    v5->_count = [v8 unsignedIntegerValue];

    v9 = [v4 copy];
    params = v5->_params;
    v5->_params = v9;
  }

  return v5;
}

@end