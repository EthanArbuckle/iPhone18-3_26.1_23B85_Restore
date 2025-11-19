@interface PVCameraFrameMetadata
+ (id)frameMetadata:(int64_t)a3 :(id)a4 :(double)a5 :(int64_t)a6 :(int64_t)a7;
+ (id)frameMetadataWithAngle:(int64_t)a3 :(id)a4 :(double)a5 :(int64_t)a6 :(double)a7;
- ($01BB1521EC52D44A8E7628F5261DCEC8)orientation;
- (id)description;
@end

@implementation PVCameraFrameMetadata

+ (id)frameMetadata:(int64_t)a3 :(id)a4 :(double)a5 :(int64_t)a6 :(int64_t)a7
{
  var3 = a4.var3;
  var2 = a4.var2;
  var1 = a4.var1;
  var0 = a4.var0;
  v15 = objc_alloc_init(PVCameraFrameMetadata);
  v15->_cameraPosition = a3;
  v15->_orientation.x = var0;
  v15->_orientation.y = var1;
  v15->_orientation.z = var2;
  v15->_orientation.w = var3;
  v15->_rollRadians = a5;
  v15->_interfaceOrientation = a6;
  v15->_captureVideoOrientation = a7;

  return v15;
}

+ (id)frameMetadataWithAngle:(int64_t)a3 :(id)a4 :(double)a5 :(int64_t)a6 :(double)a7
{
  var3 = a4.var3;
  var2 = a4.var2;
  var1 = a4.var1;
  var0 = a4.var0;
  v15 = objc_alloc_init(PVCameraFrameMetadata);
  v15->_cameraPosition = a3;
  v15->_orientation.y = var1;
  v15->_orientation.z = var2;
  v15->_orientation.w = var3;
  v15->_rollRadians = a5;
  v15->_interfaceOrientation = a6;
  v15->_captureHorizonAngle = a7;
  v15->_orientation.x = var0;

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PVCameraFrameMetadata *)self cameraPosition];
  [(PVCameraFrameMetadata *)self orientation];
  v7 = v6;
  [(PVCameraFrameMetadata *)self orientation];
  v9 = v8;
  [(PVCameraFrameMetadata *)self orientation];
  v11 = v10;
  [(PVCameraFrameMetadata *)self orientation];
  v13 = v12;
  [(PVCameraFrameMetadata *)self rollRadians];
  v15 = v14;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PVCameraFrameMetadata captureVideoOrientation](self, "captureVideoOrientation")}];
  v17 = [v3 stringWithFormat:@"<%@ %p> camPos: %ld | orientation: <%f %f %f %f> | rollRad: %f | AVCaptureVideoOrientation: %@ | interfaceOrientation: %ld", v4, self, v5, v7, v9, v11, v13, v15, v16, -[PVCameraFrameMetadata interfaceOrientation](self, "interfaceOrientation")];

  return v17;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)orientation
{
  x = self->_orientation.x;
  y = self->_orientation.y;
  z = self->_orientation.z;
  w = self->_orientation.w;
  result.var3 = w;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end