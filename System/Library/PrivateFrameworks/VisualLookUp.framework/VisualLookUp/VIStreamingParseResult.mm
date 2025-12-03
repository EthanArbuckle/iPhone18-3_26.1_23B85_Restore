@interface VIStreamingParseResult
- (VIStreamingParseResult)initWithDetectedObjects:(id)objects;
@end

@implementation VIStreamingParseResult

- (VIStreamingParseResult)initWithDetectedObjects:(id)objects
{
  objectsCopy = objects;
  v9.receiver = self;
  v9.super_class = VIStreamingParseResult;
  v5 = [(VIStreamingParseResult *)&v9 init];
  if (v5)
  {
    v6 = [objectsCopy copy];
    detectedObjects = v5->_detectedObjects;
    v5->_detectedObjects = v6;
  }

  return v5;
}

@end