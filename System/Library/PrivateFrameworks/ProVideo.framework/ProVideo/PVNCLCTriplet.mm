@interface PVNCLCTriplet
- (PVNCLCTriplet)initWithColorPrimaryStr:(__CFString *)str hgColorPrimary:(int)primary transferFunctionStr:(__CFString *)functionStr hgTransformFunction:(int)function ycbcrMatrixStr:(__CFString *)matrixStr hgYCbCrMatrix:(int)matrix;
@end

@implementation PVNCLCTriplet

- (PVNCLCTriplet)initWithColorPrimaryStr:(__CFString *)str hgColorPrimary:(int)primary transferFunctionStr:(__CFString *)functionStr hgTransformFunction:(int)function ycbcrMatrixStr:(__CFString *)matrixStr hgYCbCrMatrix:(int)matrix
{
  v15.receiver = self;
  v15.super_class = PVNCLCTriplet;
  result = [(PVNCLCTriplet *)&v15 init];
  if (result)
  {
    result->_colorPrimary = str;
    result->_transferFunction = functionStr;
    result->_hgColorPrimary = primary;
    result->_hgTransferFunction = function;
    result->_ycbcrMatrix = matrixStr;
    result->_hgYCbCrMatrix = matrix;
  }

  return result;
}

@end