@interface VIStreamingParseResult
- (VIStreamingParseResult)initWithDetectedObjects:(id)a3;
@end

@implementation VIStreamingParseResult

- (VIStreamingParseResult)initWithDetectedObjects:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VIStreamingParseResult;
  v5 = [(VIStreamingParseResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    detectedObjects = v5->_detectedObjects;
    v5->_detectedObjects = v6;
  }

  return v5;
}

@end