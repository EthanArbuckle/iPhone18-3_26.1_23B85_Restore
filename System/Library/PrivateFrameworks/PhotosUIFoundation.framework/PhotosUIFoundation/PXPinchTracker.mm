@interface PXPinchTracker
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGPoint)pinchLocation1;
- (CGPoint)pinchLocation2;
- (CGSize)size;
- (PXDisplayVelocity)velocity;
- (PXPinchTracker)init;
- (PXPinchTracker)initWithCenter:(CGPoint)a3 size:(CGSize)a4 transform:(CGAffineTransform *)a5;
- (void)_setCenter:(CGPoint)a3;
- (void)_setScale:(double)a3;
- (void)_setScaleDirection:(int64_t)a3;
- (void)_setSize:(CGSize)a3;
- (void)_setTransform:(CGAffineTransform *)a3;
- (void)_setVelocity:(PXDisplayVelocity)a3;
- (void)_transformPinchLocation1:(CGPoint)a3 location2:(CGPoint)a4 intoCenter:(CGPoint *)a5 distance:(double *)a6 angle:(double *)a7;
- (void)_updateGeometryIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateInitialValuesIfNeeded;
- (void)didPerformChanges;
- (void)performChanges:(id)a3;
- (void)setPinchLocation1:(CGPoint)a3;
- (void)setPinchLocation2:(CGPoint)a3;
@end

@implementation PXPinchTracker

- (PXDisplayVelocity)velocity
{
  x = self->_velocity.x;
  y = self->_velocity.y;
  scale = self->_velocity.scale;
  rotation = self->_velocity.rotation;
  result.rotation = rotation;
  result.scale = scale;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[10].b;
  *&retstr->a = *&self[9].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[10].d;
  return self;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pinchLocation2
{
  x = self->_pinchLocation2.x;
  y = self->_pinchLocation2.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pinchLocation1
{
  x = self->_pinchLocation1.x;
  y = self->_pinchLocation1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_updateGeometryIfNeeded
{
  v87[2] = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.geometry)
  {
    self->_needsUpdateFlags.geometry = 0;
    [(PXPinchTracker *)self pinchLocation1];
    v4 = v3;
    v6 = v5;
    [(PXPinchTracker *)self pinchLocation2];
    if (self->_didSetInitialValues)
    {
      v9 = v4 == INFINITY && v6 == INFINITY;
      if (!v9 && (v7 != INFINITY || v8 != INFINITY))
      {
        v10 = MEMORY[0x1E695EFF8];
        v86 = *MEMORY[0x1E695EFF8];
        v84 = 0.0;
        v85 = 0.0;
        [(PXPinchTracker *)self _transformPinchLocation1:&v86 location2:&v85 intoCenter:&v84 distance:v4 angle:v6];
        v11 = *&v86 - self->_initialPinchCenter.x;
        v12 = *(&v86 + 1) - self->_initialPinchCenter.y;
        v13 = self->_initialTransformInverse.tx + v12 * self->_initialTransformInverse.c + self->_initialTransformInverse.a * v11;
        v14 = self->_initialTransformInverse.ty + v12 * self->_initialTransformInverse.d + self->_initialTransformInverse.b * v11;
        v15 = v85 / self->_initialPinchDistance;
        v16 = v84 - self->_initialPinchAngle;
        pinchRotationFilter = self->_pinchRotationFilter;
        if (!pinchRotationFilter)
        {
          v18 = objc_alloc_init(PXAngleNumberFilter);
          v19 = objc_alloc_init(PXInitialHysteresisNumberFilter);
          [(PXPinchTracker *)self rotationHysteris];
          [(PXInitialHysteresisNumberFilter *)v19 setHysteresis:?];
          v20 = objc_alloc_init(PXCompoundNumberFilter);
          v87[0] = v18;
          v87[1] = v19;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
          [(PXCompoundNumberFilter *)v20 setFilters:v21];

          v22 = self->_pinchRotationFilter;
          self->_pinchRotationFilter = &v20->super;

          pinchRotationFilter = self->_pinchRotationFilter;
        }

        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __41__PXPinchTracker__updateGeometryIfNeeded__block_invoke;
        v83[3] = &__block_descriptor_40_e33_v16__0___PXMutableNumberFilter__8l;
        *&v83[4] = v16;
        [(PXNumberFilter *)pinchRotationFilter performChanges:v83];
        [(PXNumberFilter *)self->_pinchRotationFilter output];
        v24 = v23;
        v25 = *MEMORY[0x1E695EFD0];
        v26 = *(MEMORY[0x1E695EFD0] + 32);
        *&v82.c = *(MEMORY[0x1E695EFD0] + 16);
        *&v82.tx = v26;
        x = self->_initialPinchOrigin.x;
        y = self->_initialPinchOrigin.y;
        *&v81.a = v25;
        *&v81.c = *&v82.c;
        *&v81.tx = v26;
        *&v82.a = v25;
        CGAffineTransformTranslate(&v82, &v81, x, y);
        *&t1.c = *&v82.c;
        *&t1.tx = *&v82.tx;
        v29 = *&self->_initialTransform.c;
        *&t2.a = *&self->_initialTransform.a;
        *&t2.c = v29;
        *&t2.tx = *&self->_initialTransform.tx;
        *&t1.a = *&v82.a;
        CGAffineTransformConcat(&v81, &t1, &t2);
        v82 = v81;
        t1 = v81;
        CGAffineTransformTranslate(&v81, &t1, v13, v14);
        v82 = v81;
        t1 = v81;
        CGAffineTransformScale(&v81, &t1, v15, v15);
        v82 = v81;
        t1 = v81;
        CGAffineTransformRotate(&v81, &t1, v24);
        v82 = v81;
        t1 = v81;
        CGAffineTransformTranslate(&v81, &t1, -x, -y);
        v82 = v81;
        v30 = self->_initialCenter.x;
        v31 = self->_initialCenter.y;
        p_initialSize = &self->_initialSize;
        width = self->_initialSize.width;
        height = self->_initialSize.height;
        t2 = v81;
        memset(&t1, 0, sizeof(t1));
        PXAffineTransformMakeWithTranslationScaleRotationTransform(&t2, &t1, v30, v31, width, height, 0.0);
        a = t1.a;
        b = t1.b;
        tx = t1.tx;
        ty = t1.ty;
        v39 = atan2(t1.b, t1.a);
        v40 = __sincos_stret(v39);
        if (fabs(v40.__cosval) <= fabs(v40.__sinval))
        {
          v41 = b / v40.__sinval;
          v42 = -t1.c / v40.__sinval;
        }

        else
        {
          v41 = a / v40.__cosval;
          v42 = t1.d / v40.__cosval;
        }

        v43 = v41 / width;
        if ([(PXPinchTracker *)self shouldResize])
        {
          v72 = v41;
          v73 = v42;
          CGAffineTransformMakeRotation(&v81, v39);
        }

        else
        {
          v44 = v41;
          v45 = p_initialSize->width;
          v46 = self->_initialSize.height;
          v47 = v44 / p_initialSize->width;
          v48 = *v10;
          v49 = v10[1];
          memset(&v81, 0, sizeof(v81));
          PXAffineTransformMakeWithTranslationScaleRotationTransform(MEMORY[0x1E695EFD0], &v81, v48, v49, v47, v42 / v46, v39);
          v72 = v45;
          v73 = v46;
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v51 = v50;
        horizontalVelocityFilter = self->_horizontalVelocityFilter;
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __41__PXPinchTracker__updateGeometryIfNeeded__block_invoke_2;
        v78[3] = &__block_descriptor_56_e33_v16__0___PXMutableNumberFilter__8l;
        *&v78[4] = tx;
        *&v78[5] = ty;
        v78[6] = v50;
        [(PXNumberFilter *)horizontalVelocityFilter performChanges:v78];
        verticalVelocityFilter = self->_verticalVelocityFilter;
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __41__PXPinchTracker__updateGeometryIfNeeded__block_invoke_3;
        v77[3] = &__block_descriptor_56_e33_v16__0___PXMutableNumberFilter__8l;
        *&v77[4] = tx;
        *&v77[5] = ty;
        v77[6] = v51;
        [(PXNumberFilter *)verticalVelocityFilter performChanges:v77];
        scaleVelocityFilter = self->_scaleVelocityFilter;
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __41__PXPinchTracker__updateGeometryIfNeeded__block_invoke_4;
        v76[3] = &__block_descriptor_48_e33_v16__0___PXMutableNumberFilter__8l;
        *&v76[4] = v43;
        v76[5] = v51;
        [(PXNumberFilter *)scaleVelocityFilter performChanges:v76];
        rotationalVelocityFilter = self->_rotationalVelocityFilter;
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __41__PXPinchTracker__updateGeometryIfNeeded__block_invoke_5;
        v75[3] = &__block_descriptor_48_e33_v16__0___PXMutableNumberFilter__8l;
        *&v75[4] = v39;
        v75[5] = v51;
        [(PXNumberFilter *)rotationalVelocityFilter performChanges:v75];
        [(PXNumberFilter *)self->_horizontalVelocityFilter output];
        v57 = v56;
        [(PXNumberFilter *)self->_verticalVelocityFilter output];
        v59 = v58;
        [(PXNumberFilter *)self->_scaleVelocityFilter output];
        v60 = v43;
        v61 = tx;
        v63 = v62;
        [(PXNumberFilter *)self->_rotationalVelocityFilter output];
        v65 = v64;
        scaleDirectionFilter = self->_scaleDirectionFilter;
        if (!scaleDirectionFilter)
        {
          v67 = objc_alloc_init(PXChangeDirectionNumberFilter);
          v68 = self->_scaleDirectionFilter;
          self->_scaleDirectionFilter = v67;

          v69 = self->_scaleDirectionFilter;
          [(PXPinchTracker *)self scaleHysteresis];
          [(PXChangeDirectionNumberFilter *)v69 setMinimumChange:?];
          scaleDirectionFilter = self->_scaleDirectionFilter;
        }

        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __41__PXPinchTracker__updateGeometryIfNeeded__block_invoke_6;
        v74[3] = &__block_descriptor_40_e33_v16__0___PXMutableNumberFilter__8l;
        *&v74[4] = v60;
        [(PXNumberFilter *)scaleDirectionFilter performChanges:v74];
        [(PXNumberFilter *)self->_scaleDirectionFilter output];
        v71 = llround(v70);
        [(PXPinchTracker *)self _setCenter:v61, ty];
        [(PXPinchTracker *)self _setSize:v72, v73];
        t2 = v81;
        [(PXPinchTracker *)self _setTransform:&t2];
        [(PXPinchTracker *)self _setVelocity:v57, v59, v63, v65];
        [(PXPinchTracker *)self _setScale:v60];
        [(PXPinchTracker *)self _setScaleDirection:v71];
      }
    }
  }
}

void __41__PXPinchTracker__updateGeometryIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setInput:v3];
  [v4 setTime:*(a1 + 48)];
}

void __41__PXPinchTracker__updateGeometryIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setInput:v3];
  [v4 setTime:*(a1 + 48)];
}

void __41__PXPinchTracker__updateGeometryIfNeeded__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setInput:v3];
  [v4 setTime:*(a1 + 40)];
}

void __41__PXPinchTracker__updateGeometryIfNeeded__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setInput:v3];
  [v4 setTime:*(a1 + 40)];
}

- (void)_updateInitialValuesIfNeeded
{
  if (self->_needsUpdateFlags.initialValues)
  {
    v28 = v7;
    v29 = v6;
    v30 = v5;
    v31 = v4;
    v32 = v2;
    v33 = v3;
    self->_needsUpdateFlags.initialValues = 0;
    if (!self->_didSetInitialValues)
    {
      [(PXPinchTracker *)self pinchLocation1];
      v10 = v9;
      v12 = v11;
      [(PXPinchTracker *)self pinchLocation2];
      v15 = v13;
      if (v10 != INFINITY || v12 != INFINITY)
      {
        v17 = v14;
        if (v13 != INFINITY || v14 != INFINITY)
        {
          [(PXPinchTracker *)self center];
          self->_initialCenter.x = v18;
          self->_initialCenter.y = v19;
          [(PXPinchTracker *)self size];
          self->_initialSize.width = v20;
          self->_initialSize.height = v21;
          [(PXPinchTracker *)self transform];
          v22 = *&v27.c;
          *&self->_initialTransform.a = *&v27.a;
          *&self->_initialTransform.c = v22;
          *&self->_initialTransform.tx = *&v27.tx;
          v23 = *&self->_initialTransform.c;
          *&v26.a = *&self->_initialTransform.a;
          *&v26.c = v23;
          *&v26.tx = *&self->_initialTransform.tx;
          CGAffineTransformInvert(&v27, &v26);
          v24 = *&v27.c;
          *&self->_initialTransformInverse.a = *&v27.a;
          *&self->_initialTransformInverse.c = v24;
          *&self->_initialTransformInverse.tx = *&v27.tx;
          [(PXPinchTracker *)self _transformPinchLocation1:&self->_initialPinchCenter location2:&self->_initialPinchDistance intoCenter:&self->_initialPinchAngle distance:v10 angle:v12, v15, v17];
          v25 = vsubq_f64(self->_initialPinchCenter, self->_initialCenter);
          self->_initialPinchOrigin = v25;
          self->_initialPinchOrigin = vaddq_f64(*&self->_initialTransformInverse.tx, vmlaq_n_f64(vmulq_laneq_f64(*&self->_initialTransformInverse.c, v25, 1), *&self->_initialTransformInverse.a, v25.x));
          self->_didSetInitialValues = 1;
        }
      }
    }
  }
}

- (void)_updateIfNeeded
{
  if ([(PXPinchTracker *)self _needsUpdate])
  {
    [(PXPinchTracker *)self _updateInitialValuesIfNeeded];
    [(PXPinchTracker *)self _updateGeometryIfNeeded];
    if ([(PXPinchTracker *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PXPinchTracker.m" lineNumber:210 description:@"update still needed after update pass"];
    }
  }
}

- (void)setPinchLocation2:(CGPoint)a3
{
  x = self->_pinchLocation2.x;
  y = self->_pinchLocation2.y;
  if (a3.x != x || a3.y != y)
  {
    self->_pinchLocation2 = a3;
    if (x == INFINITY && y == INFINITY)
    {
      [(PXPinchTracker *)self _invalidateInitialValues];
    }

    [(PXPinchTracker *)self _invalidateGeometry];
  }
}

- (void)setPinchLocation1:(CGPoint)a3
{
  x = self->_pinchLocation1.x;
  y = self->_pinchLocation1.y;
  if (a3.x != x || a3.y != y)
  {
    self->_pinchLocation1 = a3;
    if (x == INFINITY && y == INFINITY)
    {
      [(PXPinchTracker *)self _invalidateInitialValues];
    }

    [(PXPinchTracker *)self _invalidateGeometry];
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXPinchTracker;
  [(PXObservable *)&v3 didPerformChanges];
  [(PXPinchTracker *)self _updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXPinchTracker;
  [(PXObservable *)&v3 performChanges:a3];
}

- (void)_transformPinchLocation1:(CGPoint)a3 location2:(CGPoint)a4 intoCenter:(CGPoint *)a5 distance:(double *)a6 angle:(double *)a7
{
  y = a3.y;
  x = a3.x;
  v12 = a4.x - a3.x;
  v13 = a4.y - a3.y;
  v14 = hypot(a4.x - a3.x, a4.y - a3.y);
  v15 = atan2(v13, v12);
  if (a5)
  {
    a5->x = x + v12 * 0.5;
    a5->y = y + v13 * 0.5;
  }

  if (a6)
  {
    *a6 = v14;
  }

  if (a7)
  {
    *a7 = v15;
  }
}

- (void)_setScaleDirection:(int64_t)a3
{
  if (self->_scaleDirection != a3)
  {
    self->_scaleDirection = a3;
    [(PXObservable *)self signalChange:32];
  }
}

- (void)_setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(PXObservable *)self signalChange:16];
  }
}

- (void)_setVelocity:(PXDisplayVelocity)a3
{
  v3.f64[0] = a3.x;
  v3.f64[1] = a3.y;
  v4.f64[0] = a3.scale;
  v4.f64[1] = a3.rotation;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_velocity.x), vceqq_f64(v4, *&self->_velocity.scale)))) & 1) == 0)
  {
    self->_velocity = a3;
    [(PXObservable *)self signalChange:8];
  }
}

- (void)_setTransform:(CGAffineTransform *)a3
{
  p_transform = &self->_transform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_transform.c;
  *&v10.a = *&self->_transform.a;
  *&v10.c = v7;
  *&v10.tx = *&self->_transform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_transform->c = *&a3->c;
    *&p_transform->tx = v9;
    *&p_transform->a = v8;
    [(PXObservable *)self signalChange:4];
  }
}

- (void)_setSize:(CGSize)a3
{
  if (a3.width != self->_size.width || a3.height != self->_size.height)
  {
    self->_size = a3;
    [(PXObservable *)self signalChange:2];
  }
}

- (void)_setCenter:(CGPoint)a3
{
  if (a3.x != self->_center.x || a3.y != self->_center.y)
  {
    self->_center = a3;
    [(PXObservable *)self signalChange:1];
  }
}

- (PXPinchTracker)initWithCenter:(CGPoint)a3 size:(CGSize)a4 transform:(CGAffineTransform *)a5
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v23.receiver = self;
  v23.super_class = PXPinchTracker;
  v10 = [(PXObservable *)&v23 init];
  v11 = v10;
  if (v10)
  {
    *(v10 + 51) = x;
    *(v10 + 52) = y;
    *(v10 + 53) = width;
    *(v10 + 54) = height;
    v12 = *&a5->a;
    v13 = *&a5->tx;
    *(v10 + 488) = *&a5->c;
    *(v10 + 504) = v13;
    *(v10 + 472) = v12;
    *(v10 + 376) = PXPointNull;
    *(v10 + 392) = PXPointNull;
    v14 = +[PXVelocityNumberFilter gestureVelocityFilter];
    horizontalVelocityFilter = v11->_horizontalVelocityFilter;
    v11->_horizontalVelocityFilter = v14;

    v16 = +[PXVelocityNumberFilter gestureVelocityFilter];
    verticalVelocityFilter = v11->_verticalVelocityFilter;
    v11->_verticalVelocityFilter = v16;

    v18 = +[PXVelocityNumberFilter gestureVelocityFilter];
    scaleVelocityFilter = v11->_scaleVelocityFilter;
    v11->_scaleVelocityFilter = v18;

    v20 = +[PXVelocityNumberFilter gestureVelocityFilter];
    rotationalVelocityFilter = v11->_rotationalVelocityFilter;
    v11->_rotationalVelocityFilter = v20;

    v11->_rotationHysteris = 0.0872664626;
    v11->_scaleHysteresis = 0.05;
    v11->_shouldResize = 1;
  }

  return v11;
}

- (PXPinchTracker)init
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [(PXPinchTracker *)self initWithCenter:v8 size:v2 transform:v3, v4, v5];
}

@end