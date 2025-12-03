@interface SSURLConnectionResponse(RadioAdditions)
- (id)radio_decompressedBodyData;
@end

@implementation SSURLConnectionResponse(RadioAdditions)

- (id)radio_decompressedBodyData
{
  uRLResponse = [self URLResponse];
  bodyData = [self bodyData];
  v4 = [uRLResponse radio_decompressedDataWithBodyData:bodyData];

  return v4;
}

@end