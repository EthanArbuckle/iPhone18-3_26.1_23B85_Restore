@interface PHADatasetBuilderHelper
- (PHADatasetBuilderHelper)initWithDataLabelArray:(id)array fingerprints:(id)fingerprints;
@end

@implementation PHADatasetBuilderHelper

- (PHADatasetBuilderHelper)initWithDataLabelArray:(id)array fingerprints:(id)fingerprints
{
  arrayCopy = array;
  fingerprintsCopy = fingerprints;
  v12.receiver = self;
  v12.super_class = PHADatasetBuilderHelper;
  v9 = [(PHADatasetBuilderHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataLabelArray, array);
    objc_storeStrong(&v10->_fingerprints, fingerprints);
  }

  return v10;
}

@end