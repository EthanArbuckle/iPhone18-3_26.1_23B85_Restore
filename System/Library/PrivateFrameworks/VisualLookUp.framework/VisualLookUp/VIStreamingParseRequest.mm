@interface VIStreamingParseRequest
- (VIStreamingParseRequest)initWithFrame:(id)frame;
@end

@implementation VIStreamingParseRequest

- (VIStreamingParseRequest)initWithFrame:(id)frame
{
  frameCopy = frame;
  v9.receiver = self;
  v9.super_class = VIStreamingParseRequest;
  v6 = [(VIStreamingParseRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_frame, frame);
  }

  return v7;
}

@end