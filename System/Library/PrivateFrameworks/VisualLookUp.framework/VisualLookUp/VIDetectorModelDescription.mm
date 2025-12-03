@interface VIDetectorModelDescription
- (CGSize)inputImageSize;
- (VIDetectorModelDescription)initWithModelURL:(id)l modelID:(id)d modelOutputs:(id)outputs inputImageSize:(CGSize)size;
@end

@implementation VIDetectorModelDescription

- (VIDetectorModelDescription)initWithModelURL:(id)l modelID:(id)d modelOutputs:(id)outputs inputImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  dCopy = d;
  outputsCopy = outputs;
  v20.receiver = self;
  v20.super_class = VIDetectorModelDescription;
  v15 = [(VIDetectorModelDescription *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_modelURL, l);
    objc_storeStrong(&v16->_modelID, d);
    v17 = [outputsCopy copy];
    modelOutputs = v16->_modelOutputs;
    v16->_modelOutputs = v17;

    v16->_inputImageSize.width = width;
    v16->_inputImageSize.height = height;
  }

  return v16;
}

- (CGSize)inputImageSize
{
  width = self->_inputImageSize.width;
  height = self->_inputImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end