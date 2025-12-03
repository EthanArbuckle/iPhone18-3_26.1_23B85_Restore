@interface PUPinchTracker
- (PUPinchTracker)init;
- (PUPinchTracker)initWithInitialCenter:(CGPoint)center initialSize:(CGSize)size initialTransform:(CGAffineTransform *)transform;
- (void)_transformPinchLocation1:(CGPoint)location1 location2:(CGPoint)location2 intoCenter:(CGPoint *)center distance:(double *)distance angle:(double *)angle;
- (void)setPinchLocation1:(CGPoint)location1 location2:(CGPoint)location2;
@end

@implementation PUPinchTracker

- (void)_transformPinchLocation1:(CGPoint)location1 location2:(CGPoint)location2 intoCenter:(CGPoint *)center distance:(double *)distance angle:(double *)angle
{
  y = location2.y;
  x = location2.x;
  v12 = location1.y;
  v13 = location1.x;
  v14 = location2.x - location1.x;
  v15 = location2.y - location1.y;
  v16 = hypot(location2.x - location1.x, location2.y - location1.y);
  v17 = atan2(v15, v14);
  if (center)
  {
    center->x = x * 0.5 + v13 * 0.5;
    center->y = y * 0.5 + v12 * 0.5;
  }

  if (distance)
  {
    *distance = v16;
  }

  if (angle)
  {
    *angle = v17;
  }
}

- (void)setPinchLocation1:(CGPoint)location1 location2:(CGPoint)location2
{
  y = location1.y;
  x = location1.x;
  v61[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695EFF8];
  if (!self->_didSetInitialPinchValues)
  {
    v8 = self->_initialCenter.x;
    v9 = self->_initialCenter.y;
    v10 = x - v8;
    v11 = y - v9;
    location2Copy = location2;
    v12 = location2.x - v8;
    v13 = location2.y - v9;
    a = self->_initialTransformInverse.a;
    b = self->_initialTransformInverse.b;
    c = self->_initialTransformInverse.c;
    d = self->_initialTransformInverse.d;
    tx = self->_initialTransformInverse.tx;
    ty = self->_initialTransformInverse.ty;
    v20 = tx + v11 * c + a * v10;
    v21 = ty + v11 * d + b * v10;
    v57.a = v20;
    v57.b = v21;
    v22 = tx + v13 * c + a * v12;
    v23 = ty + v13 * d + b * v12;
    v56.a = v22;
    v56.b = v23;
    width = self->_initialSize.width;
    height = self->_initialSize.height;
    if (![(PUPinchTracker *)self allowTrackingOutside])
    {
      PUAdjustPointsToBeWithinRect(&v57, &v56, *v7 - width * 0.5, v7[1] - height * 0.5, width, height);
      v20 = v57.a;
      v21 = v57.b;
      v22 = v56.a;
      v23 = v56.b;
    }

    [(PUPinchTracker *)self _transformPinchLocation1:&self->_initialPinchCenter location2:&self->_initialPinchDistance intoCenter:&self->_initialPinchAngle distance:self->_initialTransform.tx + v21 * self->_initialTransform.c + self->_initialTransform.a * v20 + self->_initialCenter.x angle:self->_initialTransform.ty + v21 * self->_initialTransform.d + self->_initialTransform.b * v20 + self->_initialCenter.y, self->_initialTransform.tx + self->_initialTransform.c * v23 + self->_initialTransform.a * v22 + self->_initialCenter.x, self->_initialTransform.ty + self->_initialTransform.d * v23 + self->_initialTransform.b * v22 + self->_initialCenter.y];
    self->_initialPinchOrigin = vaddq_f64(*&self->_initialTransformInverse.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_initialTransformInverse.c, self->_initialPinchCenter.y - self->_initialCenter.y), *&self->_initialTransformInverse.a, self->_initialPinchCenter.x - self->_initialCenter.x));
    self->_didSetInitialPinchValues = 1;
    location2 = location2Copy;
  }

  v60 = *v7;
  v58 = 0.0;
  v59 = 0.0;
  [(PUPinchTracker *)self _transformPinchLocation1:&v60 location2:&v59 intoCenter:&v58 distance:x angle:y, location2.x, location2.y];
  v26 = *&v60 - self->_initialPinchCenter.x;
  v27 = *(&v60 + 1) - self->_initialPinchCenter.y;
  v28 = self->_initialTransformInverse.tx + v27 * self->_initialTransformInverse.c + self->_initialTransformInverse.a * v26;
  v29 = self->_initialTransformInverse.ty + v27 * self->_initialTransformInverse.d + self->_initialTransformInverse.b * v26;
  v30 = v59 / self->_initialPinchDistance;
  v31 = v58 - self->_initialPinchAngle;
  pinchRotationValueFilter = self->_pinchRotationValueFilter;
  if (!pinchRotationValueFilter)
  {
    v33 = objc_alloc_init(PUAngleValueFilter);
    v34 = objc_alloc_init(PUInitialHysteresisValueFilter);
    [(PUPinchTracker *)self rotationHysteresisDegrees];
    [(PUInitialHysteresisValueFilter *)v34 setThresholdValue:v35 * 3.14159265 / 180.0];
    v36 = objc_alloc_init(PUGroupValueFilter);
    v61[0] = v33;
    v61[1] = v34;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
    [(PUGroupValueFilter *)v36 setFilters:v37];

    v38 = self->_pinchRotationValueFilter;
    self->_pinchRotationValueFilter = &v36->super;

    pinchRotationValueFilter = self->_pinchRotationValueFilter;
  }

  [(PUValueFilter *)pinchRotationValueFilter setInputValue:v31];
  [(PUValueFilter *)self->_pinchRotationValueFilter outputValue];
  v40 = v39;
  v41 = *MEMORY[0x1E695EFD0];
  v42 = *(MEMORY[0x1E695EFD0] + 32);
  *&v57.c = *(MEMORY[0x1E695EFD0] + 16);
  *&v57.tx = v42;
  v43 = self->_initialPinchOrigin.x;
  v44 = self->_initialPinchOrigin.y;
  *&v56.a = v41;
  *&v56.c = *&v57.c;
  *&v56.tx = v42;
  *&v57.a = v41;
  CGAffineTransformTranslate(&v57, &v56, v43, v44);
  *&t1.c = *&v57.c;
  *&t1.tx = *&v57.tx;
  v45 = *&self->_initialTransform.c;
  *&t2.a = *&self->_initialTransform.a;
  *&t2.c = v45;
  *&t2.tx = *&self->_initialTransform.tx;
  *&t1.a = *&v57.a;
  CGAffineTransformConcat(&v56, &t1, &t2);
  v57 = v56;
  t1 = v56;
  CGAffineTransformTranslate(&v56, &t1, v28, v29);
  v57 = v56;
  t1 = v56;
  CGAffineTransformScale(&v56, &t1, v30, v30);
  v57 = v56;
  t1 = v56;
  CGAffineTransformRotate(&v56, &t1, v40);
  v57 = v56;
  t1 = v56;
  CGAffineTransformTranslate(&v56, &t1, -v43, -v44);
  v57 = v56;
  initialCenter = self->_initialCenter;
  initialSize = self->_initialSize;
  *&t2.a = initialCenter;
  memset(v52, 0, sizeof(v52));
  t1 = v56;
  PUComposeTransform(&t1, v52, initialCenter.x, initialCenter.y, initialSize.width, initialSize.height, 0.0);
  angle = 0.0;
  PUDecomposeTransform(v52, &t2, &initialSize.width, &initialSize.height, &angle);
  CGAffineTransformMakeRotation(&v56, angle);
  updateHandler = [(PUPinchTracker *)self updateHandler];

  if (updateHandler)
  {
    updateHandler2 = [(PUPinchTracker *)self updateHandler];
    v49 = updateHandler2[2];
    t1 = v56;
    v49(updateHandler2, &t1, t2.a, t2.b, initialSize.width, initialSize.height);
  }
}

- (PUPinchTracker)initWithInitialCenter:(CGPoint)center initialSize:(CGSize)size initialTransform:(CGAffineTransform *)transform
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  if (size.width == 0.0 || size.height == 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPinchTracker.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"initialSize.width != 0.0f && initialSize.height != 0.0f"}];
  }

  v22.receiver = self;
  v22.super_class = PUPinchTracker;
  v12 = [(PUPinchTracker *)&v22 init];
  v13 = v12;
  if (v12)
  {
    *(v12 + 1) = x;
    *(v12 + 2) = y;
    *(v12 + 3) = width;
    *(v12 + 4) = height;
    v14 = *&transform->a;
    v15 = *&transform->c;
    *(v12 + 72) = *&transform->tx;
    *(v12 + 56) = v15;
    *(v12 + 40) = v14;
    v16 = *&transform->c;
    *&v20.a = *&transform->a;
    *&v20.c = v16;
    *&v20.tx = *&transform->tx;
    CGAffineTransformInvert(&v21, &v20);
    v17 = *&v21.c;
    *(v13 + 88) = *&v21.a;
    *(v13 + 104) = v17;
    *(v13 + 120) = *&v21.tx;
    *(v13 + 27) = 0x4014000000000000;
  }

  return v13;
}

- (PUPinchTracker)init
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [(PUPinchTracker *)self initWithInitialCenter:v8 initialSize:v2 initialTransform:v3, v4, v5];
}

@end