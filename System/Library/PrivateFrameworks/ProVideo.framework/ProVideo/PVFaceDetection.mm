@interface PVFaceDetection
+ (id)faceDetection:(int64_t)detection :(BOOL)a4 :(double)a5 :(BOOL)a6 :(double)a7 :(CGRect)a8 :(int64_t)a9 :(id *)self0 :(id)self1;
+ (id)faceDetectionWithAngle:(int64_t)angle :(BOOL)a4 :(double)a5 :(BOOL)a6 :(double)a7 :(CGRect)a8 :(double)a9 :(id *)self0 :(id)self1;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFaceDetection:(id)detection;
- (CGRect)boundingBox;
- (id)debugDescription;
@end

@implementation PVFaceDetection

+ (id)faceDetection:(int64_t)detection :(BOOL)a4 :(double)a5 :(BOOL)a6 :(double)a7 :(CGRect)a8 :(int64_t)a9 :(id *)self0 :(id)self1
{
  v12 = a9;
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v22 = a11;
  v23 = objc_alloc_init(PVFaceDetection);
  v25 = v23;
  v23->_ID = detection;
  v23->_hasRollAngle = a4;
  v23->_hasYawAngle = a6;
  v23->_rollAngleInDegrees = a5;
  v23->_yawAngleInDegrees = a7;
  v23->_boundingBox.origin.x = x;
  v23->_boundingBox.origin.y = y;
  v23->_boundingBox.size.width = width;
  v23->_boundingBox.size.height = height;
  v26 = v12 & 7;
  if (v12 >= 5)
  {
    v26 = 0;
  }

  LODWORD(v24) = PVCardinalAnglesDegrees[qword_2603431E8[v26]];
  v23->_detectionHorizonAngle = v24;
  v27 = *&a10->var0;
  v23->_time.epoch = a10->var3;
  *&v23->_time.value = v27;
  faceObject = v23->_faceObject;
  v23->_faceObject = v22;

  return v25;
}

+ (id)faceDetectionWithAngle:(int64_t)angle :(BOOL)a4 :(double)a5 :(BOOL)a6 :(double)a7 :(CGRect)a8 :(double)a9 :(id *)self0 :(id)self1
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v22 = a11;
  v23 = objc_alloc_init(PVFaceDetection);
  v23->_ID = angle;
  v23->_hasRollAngle = a4;
  v23->_hasYawAngle = a6;
  v23->_rollAngleInDegrees = a5;
  v23->_yawAngleInDegrees = a7;
  v23->_boundingBox.origin.x = x;
  v23->_boundingBox.origin.y = y;
  v23->_boundingBox.size.width = width;
  v23->_boundingBox.size.height = height;
  v23->_detectionHorizonAngle = a9;
  v24 = *&a10->var0;
  v23->_time.epoch = a10->var3;
  *&v23->_time.value = v24;
  faceObject = v23->_faceObject;
  v23->_faceObject = v22;

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PVFaceDetection *)self isEqualToFaceDetection:equalCopy];

  return v5;
}

- (BOOL)isEqualToFaceDetection:(id)detection
{
  detectionCopy = detection;
  v5 = [(PVFaceDetection *)self ID];
  if (v5 == [detectionCopy ID] && (v6 = -[PVFaceDetection hasRollAngle](self, "hasRollAngle"), v6 == objc_msgSend(detectionCopy, "hasRollAngle")) && (!-[PVFaceDetection hasRollAngle](self, "hasRollAngle") || (-[PVFaceDetection rollAngleInDegrees](self, "rollAngleInDegrees"), v8 = v7, objc_msgSend(detectionCopy, "rollAngleInDegrees"), v8 == v9)) && (v10 = -[PVFaceDetection hasYawAngle](self, "hasYawAngle"), v10 == objc_msgSend(detectionCopy, "hasYawAngle")) && (!-[PVFaceDetection hasYawAngle](self, "hasYawAngle") || (-[PVFaceDetection yawAngleInDegrees](self, "yawAngleInDegrees"), v12 = v11, objc_msgSend(detectionCopy, "yawAngleInDegrees"), v12 == v13)) && (-[PVFaceDetection boundingBox](self, "boundingBox"), v15 = v14, v17 = v16, v19 = v18, v21 = v20, objc_msgSend(detectionCopy, "boundingBox"), v34.origin.x = v22, v34.origin.y = v23, v34.size.width = v24, v34.size.height = v25, v33.origin.x = v15, v33.origin.y = v17, v33.size.width = v19, v33.size.height = v21, CGRectEqualToRect(v33, v34)) && (-[PVFaceDetection detectionHorizonAngle](self, "detectionHorizonAngle"), v27 = v26, objc_msgSend(detectionCopy, "detectionHorizonAngle"), v27 == v28))
  {
    [(PVFaceDetection *)self time];
    if (detectionCopy)
    {
      [detectionCopy time];
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
    }

    v29 = CMTimeCompare(&time1, &v31) == 0;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  ID = self->_ID;
  rollAngleInDegrees = self->_rollAngleInDegrees;
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  detectionHorizonAngle = self->_detectionHorizonAngle;
  time = self->_time;
  v12 = [v3 stringWithFormat:@"<%@ %p> ID=%llu rollAngle=%.1f° bbox={{%.2f, %.2f}, {%.2f, %.2f}} orientation=%.1f° time=%f", v4, self, ID, *&rollAngleInDegrees, *&x, *&y, *&width, *&height, *&detectionHorizonAngle, CMTimeGetSeconds(&time)];

  return v12;
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