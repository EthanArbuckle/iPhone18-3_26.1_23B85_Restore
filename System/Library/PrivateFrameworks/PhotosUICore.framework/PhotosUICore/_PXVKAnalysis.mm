@interface _PXVKAnalysis
- (_PXVKAnalysis)initWithAsset:(id)a3 analysis:(id)a4;
@end

@implementation _PXVKAnalysis

- (_PXVKAnalysis)initWithAsset:(id)a3 analysis:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PXVKAnalysis;
  v9 = [(_PXVKAnalysis *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    objc_storeStrong(&v10->_analysis, a4);
  }

  return v10;
}

@end