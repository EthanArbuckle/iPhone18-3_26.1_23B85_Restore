@interface UPModelBundle
- (UPModelBundle)initWithLoadedModelConfiguration:(id)configuration parserModel:(id)model calibrationModel:(id)calibrationModel;
- (UPModelBundle)initWithPreprocessor:(id)preprocessor parserModel:(id)model calibrationModel:(id)calibrationModel;
@end

@implementation UPModelBundle

- (UPModelBundle)initWithLoadedModelConfiguration:(id)configuration parserModel:(id)model calibrationModel:(id)calibrationModel
{
  modelCopy = model;
  calibrationModelCopy = calibrationModel;
  preprocessor = [configuration preprocessor];
  v11 = [(UPModelBundle *)self initWithPreprocessor:preprocessor parserModel:modelCopy calibrationModel:calibrationModelCopy];

  return v11;
}

- (UPModelBundle)initWithPreprocessor:(id)preprocessor parserModel:(id)model calibrationModel:(id)calibrationModel
{
  preprocessorCopy = preprocessor;
  modelCopy = model;
  calibrationModelCopy = calibrationModel;
  v15.receiver = self;
  v15.super_class = UPModelBundle;
  v12 = [(UPModelBundle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preprocessor, preprocessor);
    objc_storeStrong(&v13->_parserModel, model);
    objc_storeStrong(&v13->_calibrationModel, calibrationModel);
  }

  return v13;
}

@end