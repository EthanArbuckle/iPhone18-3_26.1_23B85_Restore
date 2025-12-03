@interface VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor
- (BOOL)isEqual:(id)equal;
- (VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor)initWithCoder:(id)coder;
- (VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor)initWithModelFileURL:(id)l labelsFileURL:(id)rL inputBlobName:(id)name outputBlobName:(id)blobName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor

- (VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"modelFileURL"];
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"labelsFileURL"];
  v8 = objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"inputBlobName"];
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:@"outputBlobName"];

  v11 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)self initWithModelFileURL:v6 labelsFileURL:v7 inputBlobName:v9 outputBlobName:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  modelFileURL = self->_modelFileURL;
  coderCopy = coder;
  [coderCopy encodeObject:modelFileURL forKey:@"modelFileURL"];
  [coderCopy encodeObject:self->_labelsFileURL forKey:@"labelsFileURL"];
  [coderCopy encodeObject:self->_inputBlobName forKey:@"inputBlobName"];
  [coderCopy encodeObject:self->_outputBlobName forKey:@"outputBlobName"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      modelFileURL = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)self modelFileURL];
      modelFileURL2 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)v5 modelFileURL];
      v8 = [modelFileURL isEqual:modelFileURL2];

      if (v8 && (-[VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor labelsFileURL](self, "labelsFileURL"), v9 = objc_claimAutoreleasedReturnValue(), -[VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor labelsFileURL](v5, "labelsFileURL"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11) && (-[VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor inputBlobName](self, "inputBlobName"), v12 = objc_claimAutoreleasedReturnValue(), -[VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor inputBlobName](v5, "inputBlobName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v12, v14))
      {
        outputBlobName = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)self outputBlobName];
        outputBlobName2 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)v5 outputBlobName];
        v17 = [outputBlobName isEqualToString:outputBlobName2];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor)initWithModelFileURL:(id)l labelsFileURL:(id)rL inputBlobName:(id)name outputBlobName:(id)blobName
{
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  blobNameCopy = blobName;
  v22.receiver = self;
  v22.super_class = VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor;
  v15 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_modelFileURL, l);
    objc_storeStrong(&v16->_labelsFileURL, rL);
    v17 = [nameCopy copy];
    inputBlobName = v16->_inputBlobName;
    v16->_inputBlobName = v17;

    v19 = [blobNameCopy copy];
    outputBlobName = v16->_outputBlobName;
    v16->_outputBlobName = v19;
  }

  return v16;
}

@end