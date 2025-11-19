@interface VKCMRCMADWrappedDataDetectorElement
- (CGRect)boundingBox;
- (VKCMRCMADWrappedDataDetectorElement)initWithCoder:(id)a3;
- (VKCMRCMADWrappedDataDetectorElement)initWithMADMRCResultItem:(id)a3 scannerResult:(id)a4;
- (VKCMRCMADWrappedDataDetectorElement)initWithScannerResult:(id)a3 quad:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VKCMRCMADWrappedDataDetectorElement

- (VKCMRCMADWrappedDataDetectorElement)initWithMADMRCResultItem:(id)a3 scannerResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [VKQuad alloc];
  [v7 bottomLeft];
  v10 = v9;
  v12 = v11;
  [v7 bottomRight];
  v14 = v13;
  v16 = v15;
  [v7 topLeft];
  v18 = v17;
  v20 = v19;
  [v7 topRight];
  v22 = v21;
  v24 = v23;

  v25 = [(VKQuad *)v8 initWithBottomLeft:v10 bottomRight:v12 topLeft:v14 topRight:v16, v18, v20, v22, v24];
  v26 = [(VKQuad *)v25 quadByFlippingPointsWithSourceFrame:0.0, 0.0, 1.0, 1.0];

  v27 = [(VKCMRCMADWrappedDataDetectorElement *)self initWithScannerResult:v6 quad:v26];
  return v27;
}

- (VKCMRCMADWrappedDataDetectorElement)initWithScannerResult:(id)a3 quad:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = VKCMRCMADWrappedDataDetectorElement;
  v9 = [(VKCBaseDataDetectorElement *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scannerResult, a3);
    v10->_dataDetectorTypes = [(VKCBaseDataDetectorElement *)VKCMRCDataDetectorElement dataDetectorTypesForScannerResult:v7];
    objc_storeStrong(&v10->_quad, a4);
    v11 = [(VKCMRCMADWrappedDataDetectorElement *)v10 quad];
    [v11 boundingBox];
    v10->_boundingBox.origin.x = v12;
    v10->_boundingBox.origin.y = v13;
    v10->_boundingBox.size.width = v14;
    v10->_boundingBox.size.height = v15;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VKCMRCMADWrappedDataDetectorElement *)self scannerResult];
  [v4 encodeObject:v5 forKey:@"scanner"];

  v6 = [(VKCMRCMADWrappedDataDetectorElement *)self quad];
  [v4 encodeObject:v6 forKey:@"quad"];
}

- (VKCMRCMADWrappedDataDetectorElement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quad"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scanner"];

  v7 = [(VKCMRCMADWrappedDataDetectorElement *)self initWithScannerResult:v6 quad:v5];
  return v7;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end