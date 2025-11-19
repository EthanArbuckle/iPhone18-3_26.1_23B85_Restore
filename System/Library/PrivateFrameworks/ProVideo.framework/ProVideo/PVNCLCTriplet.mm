@interface PVNCLCTriplet
- (PVNCLCTriplet)initWithColorPrimaryStr:(__CFString *)a3 hgColorPrimary:(int)a4 transferFunctionStr:(__CFString *)a5 hgTransformFunction:(int)a6 ycbcrMatrixStr:(__CFString *)a7 hgYCbCrMatrix:(int)a8;
@end

@implementation PVNCLCTriplet

- (PVNCLCTriplet)initWithColorPrimaryStr:(__CFString *)a3 hgColorPrimary:(int)a4 transferFunctionStr:(__CFString *)a5 hgTransformFunction:(int)a6 ycbcrMatrixStr:(__CFString *)a7 hgYCbCrMatrix:(int)a8
{
  v15.receiver = self;
  v15.super_class = PVNCLCTriplet;
  result = [(PVNCLCTriplet *)&v15 init];
  if (result)
  {
    result->_colorPrimary = a3;
    result->_transferFunction = a5;
    result->_hgColorPrimary = a4;
    result->_hgTransferFunction = a6;
    result->_ycbcrMatrix = a7;
    result->_hgYCbCrMatrix = a8;
  }

  return result;
}

@end