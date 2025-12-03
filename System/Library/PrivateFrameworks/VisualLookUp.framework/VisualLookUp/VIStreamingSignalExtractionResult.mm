@interface VIStreamingSignalExtractionResult
- (VIStreamingSignalExtractionResult)initWithImageRegion:(id)region payload:(id)payload;
@end

@implementation VIStreamingSignalExtractionResult

- (VIStreamingSignalExtractionResult)initWithImageRegion:(id)region payload:(id)payload
{
  regionCopy = region;
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = VIStreamingSignalExtractionResult;
  v9 = [(VIStreamingSignalExtractionResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageRegion, region);
    objc_storeStrong(&v10->_payload, payload);
  }

  return v10;
}

@end