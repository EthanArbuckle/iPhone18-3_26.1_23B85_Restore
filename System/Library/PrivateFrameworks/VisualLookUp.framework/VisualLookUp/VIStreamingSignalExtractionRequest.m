@interface VIStreamingSignalExtractionRequest
- (VIStreamingSignalExtractionRequest)initWithObjectUUID:(id)a3 highResolutionFrame:(id)a4 queryContext:(id)a5;
@end

@implementation VIStreamingSignalExtractionRequest

- (VIStreamingSignalExtractionRequest)initWithObjectUUID:(id)a3 highResolutionFrame:(id)a4 queryContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = VIStreamingSignalExtractionRequest;
  v11 = [(VIStreamingSignalExtractionRequest *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    objectUUID = v11->_objectUUID;
    v11->_objectUUID = v12;

    objc_storeStrong(&v11->_highResolutionFrame, a4);
    objc_storeStrong(&v11->_queryContext, a5);
  }

  return v11;
}

@end