@interface VIDetectorModelDescription
- (CGSize)inputImageSize;
- (VIDetectorModelDescription)initWithModelURL:(id)a3 modelID:(id)a4 modelOutputs:(id)a5 inputImageSize:(CGSize)a6;
@end

@implementation VIDetectorModelDescription

- (VIDetectorModelDescription)initWithModelURL:(id)a3 modelID:(id)a4 modelOutputs:(id)a5 inputImageSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v20.receiver = self;
  v20.super_class = VIDetectorModelDescription;
  v15 = [(VIDetectorModelDescription *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_modelURL, a3);
    objc_storeStrong(&v16->_modelID, a4);
    v17 = [v14 copy];
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