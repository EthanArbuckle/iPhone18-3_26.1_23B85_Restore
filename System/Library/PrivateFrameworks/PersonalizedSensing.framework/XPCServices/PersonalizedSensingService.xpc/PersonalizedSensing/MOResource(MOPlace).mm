@interface MOResource(MOPlace)
- (id)metaData;
@end

@implementation MOResource(MOPlace)

- (id)metaData
{
  data = [(MOResource *)self data];
  v3 = [MODictionaryEncoder decodeToDictionary:data];

  return v3;
}

@end