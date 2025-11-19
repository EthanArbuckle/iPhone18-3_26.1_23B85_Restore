@interface MOResource(MOPlace)
- (id)metaData;
@end

@implementation MOResource(MOPlace)

- (id)metaData
{
  v2 = [(MOResource *)self data];
  v3 = [MODictionaryEncoder decodeToDictionary:v2];

  return v3;
}

@end