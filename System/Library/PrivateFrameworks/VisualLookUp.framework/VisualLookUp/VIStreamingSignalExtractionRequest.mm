@interface VIStreamingSignalExtractionRequest
- (VIStreamingSignalExtractionRequest)initWithObjectUUID:(id)d highResolutionFrame:(id)frame queryContext:(id)context;
@end

@implementation VIStreamingSignalExtractionRequest

- (VIStreamingSignalExtractionRequest)initWithObjectUUID:(id)d highResolutionFrame:(id)frame queryContext:(id)context
{
  dCopy = d;
  frameCopy = frame;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = VIStreamingSignalExtractionRequest;
  v11 = [(VIStreamingSignalExtractionRequest *)&v15 init];
  if (v11)
  {
    v12 = [dCopy copy];
    objectUUID = v11->_objectUUID;
    v11->_objectUUID = v12;

    objc_storeStrong(&v11->_highResolutionFrame, frame);
    objc_storeStrong(&v11->_queryContext, context);
  }

  return v11;
}

@end