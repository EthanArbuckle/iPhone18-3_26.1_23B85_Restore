@interface VKCMRCMADWrappedDataDetectorElement
- (CGRect)boundingBox;
- (VKCMRCMADWrappedDataDetectorElement)initWithCoder:(id)coder;
- (VKCMRCMADWrappedDataDetectorElement)initWithMADMRCResultItem:(id)item scannerResult:(id)result;
- (VKCMRCMADWrappedDataDetectorElement)initWithScannerResult:(id)result quad:(id)quad;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VKCMRCMADWrappedDataDetectorElement

- (VKCMRCMADWrappedDataDetectorElement)initWithMADMRCResultItem:(id)item scannerResult:(id)result
{
  resultCopy = result;
  itemCopy = item;
  v8 = [VKQuad alloc];
  [itemCopy bottomLeft];
  v10 = v9;
  v12 = v11;
  [itemCopy bottomRight];
  v14 = v13;
  v16 = v15;
  [itemCopy topLeft];
  v18 = v17;
  v20 = v19;
  [itemCopy topRight];
  v22 = v21;
  v24 = v23;

  v25 = [(VKQuad *)v8 initWithBottomLeft:v10 bottomRight:v12 topLeft:v14 topRight:v16, v18, v20, v22, v24];
  v26 = [(VKQuad *)v25 quadByFlippingPointsWithSourceFrame:0.0, 0.0, 1.0, 1.0];

  v27 = [(VKCMRCMADWrappedDataDetectorElement *)self initWithScannerResult:resultCopy quad:v26];
  return v27;
}

- (VKCMRCMADWrappedDataDetectorElement)initWithScannerResult:(id)result quad:(id)quad
{
  resultCopy = result;
  quadCopy = quad;
  v17.receiver = self;
  v17.super_class = VKCMRCMADWrappedDataDetectorElement;
  v9 = [(VKCBaseDataDetectorElement *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scannerResult, result);
    v10->_dataDetectorTypes = [(VKCBaseDataDetectorElement *)VKCMRCDataDetectorElement dataDetectorTypesForScannerResult:resultCopy];
    objc_storeStrong(&v10->_quad, quad);
    quad = [(VKCMRCMADWrappedDataDetectorElement *)v10 quad];
    [quad boundingBox];
    v10->_boundingBox.origin.x = v12;
    v10->_boundingBox.origin.y = v13;
    v10->_boundingBox.size.width = v14;
    v10->_boundingBox.size.height = v15;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  scannerResult = [(VKCMRCMADWrappedDataDetectorElement *)self scannerResult];
  [coderCopy encodeObject:scannerResult forKey:@"scanner"];

  quad = [(VKCMRCMADWrappedDataDetectorElement *)self quad];
  [coderCopy encodeObject:quad forKey:@"quad"];
}

- (VKCMRCMADWrappedDataDetectorElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quad"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scanner"];

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