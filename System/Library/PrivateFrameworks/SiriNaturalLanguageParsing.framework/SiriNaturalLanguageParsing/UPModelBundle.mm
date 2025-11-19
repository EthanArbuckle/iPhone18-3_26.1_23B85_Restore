@interface UPModelBundle
- (UPModelBundle)initWithLoadedModelConfiguration:(id)a3 parserModel:(id)a4 calibrationModel:(id)a5;
- (UPModelBundle)initWithPreprocessor:(id)a3 parserModel:(id)a4 calibrationModel:(id)a5;
@end

@implementation UPModelBundle

- (UPModelBundle)initWithLoadedModelConfiguration:(id)a3 parserModel:(id)a4 calibrationModel:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 preprocessor];
  v11 = [(UPModelBundle *)self initWithPreprocessor:v10 parserModel:v8 calibrationModel:v9];

  return v11;
}

- (UPModelBundle)initWithPreprocessor:(id)a3 parserModel:(id)a4 calibrationModel:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = UPModelBundle;
  v12 = [(UPModelBundle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_preprocessor, a3);
    objc_storeStrong(&v13->_parserModel, a4);
    objc_storeStrong(&v13->_calibrationModel, a5);
  }

  return v13;
}

@end