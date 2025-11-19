@interface VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor
- (BOOL)isEqual:(id)a3;
- (VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor)initWithCoder:(id)a3;
- (VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor)initWithModelFileURL:(id)a3 labelsFileURL:(id)a4 inputBlobName:(id)a5 outputBlobName:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor

- (VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"modelFileURL"];
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"labelsFileURL"];
  v8 = objc_opt_class();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"inputBlobName"];
  v10 = [v4 decodeObjectOfClass:v8 forKey:@"outputBlobName"];

  v11 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)self initWithModelFileURL:v6 labelsFileURL:v7 inputBlobName:v9 outputBlobName:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  modelFileURL = self->_modelFileURL;
  v5 = a3;
  [v5 encodeObject:modelFileURL forKey:@"modelFileURL"];
  [v5 encodeObject:self->_labelsFileURL forKey:@"labelsFileURL"];
  [v5 encodeObject:self->_inputBlobName forKey:@"inputBlobName"];
  [v5 encodeObject:self->_outputBlobName forKey:@"outputBlobName"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)self modelFileURL];
      v7 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)v5 modelFileURL];
      v8 = [v6 isEqual:v7];

      if (v8 && (-[VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor labelsFileURL](self, "labelsFileURL"), v9 = objc_claimAutoreleasedReturnValue(), -[VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor labelsFileURL](v5, "labelsFileURL"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11) && (-[VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor inputBlobName](self, "inputBlobName"), v12 = objc_claimAutoreleasedReturnValue(), -[VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor inputBlobName](v5, "inputBlobName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v12, v14))
      {
        v15 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)self outputBlobName];
        v16 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)v5 outputBlobName];
        v17 = [v15 isEqualToString:v16];
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

- (VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor)initWithModelFileURL:(id)a3 labelsFileURL:(id)a4 inputBlobName:(id)a5 outputBlobName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor;
  v15 = [(VisionCoreSceneNetInferenceNetworkCustomClassifierDescriptor *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_modelFileURL, a3);
    objc_storeStrong(&v16->_labelsFileURL, a4);
    v17 = [v13 copy];
    inputBlobName = v16->_inputBlobName;
    v16->_inputBlobName = v17;

    v19 = [v14 copy];
    outputBlobName = v16->_outputBlobName;
    v16->_outputBlobName = v19;
  }

  return v16;
}

@end