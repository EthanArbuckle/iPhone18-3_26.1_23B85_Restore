@interface SSURLConnectionResponse(RadioAdditions)
- (id)radio_decompressedBodyData;
@end

@implementation SSURLConnectionResponse(RadioAdditions)

- (id)radio_decompressedBodyData
{
  v2 = [a1 URLResponse];
  v3 = [a1 bodyData];
  v4 = [v2 radio_decompressedDataWithBodyData:v3];

  return v4;
}

@end