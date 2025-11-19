@interface PHADatasetBuilderHelper
- (PHADatasetBuilderHelper)initWithDataLabelArray:(id)a3 fingerprints:(id)a4;
@end

@implementation PHADatasetBuilderHelper

- (PHADatasetBuilderHelper)initWithDataLabelArray:(id)a3 fingerprints:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PHADatasetBuilderHelper;
  v9 = [(PHADatasetBuilderHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataLabelArray, a3);
    objc_storeStrong(&v10->_fingerprints, a4);
  }

  return v10;
}

@end