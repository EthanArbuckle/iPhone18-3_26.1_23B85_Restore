@interface VIStreamingParseRequest
- (VIStreamingParseRequest)initWithFrame:(id)a3;
@end

@implementation VIStreamingParseRequest

- (VIStreamingParseRequest)initWithFrame:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VIStreamingParseRequest;
  v6 = [(VIStreamingParseRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_frame, a3);
  }

  return v7;
}

@end