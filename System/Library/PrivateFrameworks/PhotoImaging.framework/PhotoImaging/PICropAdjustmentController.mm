@interface PICropAdjustmentController
- (BOOL)isCropConstrained;
- (BOOL)isCropIdentityForImageSize:(CGSize)size;
- (BOOL)isGeometryIdentityForImageSize:(CGSize)size;
- (BOOL)isSettingEqual:(id)equal forKey:(id)key;
- (CGRect)cropRect;
- (PICropAdjustmentController)initWithAdjustment:(id)adjustment;
- (double)angle;
- (double)pitch;
- (double)yaw;
- (id)visualInputKeys;
- (int64_t)constraintHeight;
- (int64_t)constraintWidth;
- (void)setAngle:(double)angle;
- (void)setConstraintHeight:(int64_t)height;
- (void)setConstraintWidth:(int64_t)width;
- (void)setCropRect:(CGRect)rect;
- (void)setPitch:(double)pitch;
- (void)setYaw:(double)yaw;
@end

@implementation PICropAdjustmentController

- (BOOL)isSettingEqual:(id)equal forKey:(id)key
{
  equalCopy = equal;
  keyCopy = key;
  adjustment = [(PIAdjustmentController *)self adjustment];
  v9 = [adjustment objectForKeyedSubscript:keyCopy];

  v10 = [equalCopy objectForKeyedSubscript:keyCopy];
  v11 = +[PICropAdjustmentController angleKey];
  if ([keyCopy isEqualToString:v11])
  {
    goto LABEL_4;
  }

  v12 = +[PICropAdjustmentController pitchKey];
  if (![keyCopy isEqualToString:v12])
  {
    v20 = +[PICropAdjustmentController yawKey];
    v21 = [keyCopy isEqualToString:v20];

    if (v21)
    {
      goto LABEL_5;
    }

    v22 = +[PICropAdjustmentController xOriginKey];
    if (([keyCopy isEqualToString:v22] & 1) == 0)
    {
      v23 = +[PICropAdjustmentController yOriginKey];
      if (([keyCopy isEqualToString:v23] & 1) == 0)
      {
        v24 = +[PICropAdjustmentController widthKey];
        if (![keyCopy isEqualToString:v24])
        {
          v28 = +[PICropAdjustmentController heightKey];
          v29 = [keyCopy isEqualToString:v28];

          if ((v29 & 1) == 0)
          {
            v30.receiver = self;
            v30.super_class = PICropAdjustmentController;
            v18 = [(PIAdjustmentController *)&v30 isSettingEqual:equalCopy forKey:keyCopy];
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }
    }

LABEL_15:
    [v9 doubleValue];
    v26 = v25;
    [v10 doubleValue];
    v16 = vabdd_f64(v26, v27);
    v17 = MEMORY[0x1E69B3DA8];
    goto LABEL_6;
  }

LABEL_4:
LABEL_5:
  [v9 doubleValue];
  v14 = v13;
  [v10 doubleValue];
  v16 = vabdd_f64(v14, v15);
  v17 = MEMORY[0x1E69B3D98];
LABEL_6:
  v18 = v16 < *v17;
LABEL_7:

  return v18;
}

- (void)setYaw:(double)yaw
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PICropAdjustmentController_setYaw___block_invoke;
  block[3] = &unk_1E82AC670;
  block[4] = self;
  if (setYaw__onceToken != -1)
  {
    dispatch_once(&setYaw__onceToken, block);
  }

  v5 = *&setYaw__minAngle;
  yawCopy = *&setYaw__maxAngle;
  if (*&setYaw__maxAngle > yaw)
  {
    yawCopy = yaw;
  }

  if (*&setYaw__minAngle < yawCopy)
  {
    v5 = yawCopy;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v9 = +[PICropAdjustmentController yawKey];
  [adjustment setObject:v7 forKeyedSubscript:v9];
}

void __37__PICropAdjustmentController_setYaw___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) adjustment];
  v2 = [v1 schema];
  v3 = [v2 settings];
  v4 = +[PICropAdjustmentController yawKey];
  v9 = [v3 objectForKeyedSubscript:v4];

  v5 = [v9 minimumValue];
  [v5 doubleValue];
  setYaw__minAngle = v6;

  v7 = [v9 maximumValue];
  [v7 doubleValue];
  setYaw__maxAngle = v8;
}

- (void)setPitch:(double)pitch
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PICropAdjustmentController_setPitch___block_invoke;
  block[3] = &unk_1E82AC670;
  block[4] = self;
  if (setPitch__onceToken != -1)
  {
    dispatch_once(&setPitch__onceToken, block);
  }

  v5 = *&setPitch__minAngle;
  pitchCopy = *&setPitch__maxAngle;
  if (*&setPitch__maxAngle > pitch)
  {
    pitchCopy = pitch;
  }

  if (*&setPitch__minAngle < pitchCopy)
  {
    v5 = pitchCopy;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v9 = +[PICropAdjustmentController pitchKey];
  [adjustment setObject:v7 forKeyedSubscript:v9];
}

void __39__PICropAdjustmentController_setPitch___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) adjustment];
  v2 = [v1 schema];
  v3 = [v2 settings];
  v4 = +[PICropAdjustmentController pitchKey];
  v9 = [v3 objectForKeyedSubscript:v4];

  v5 = [v9 minimumValue];
  [v5 doubleValue];
  setPitch__minAngle = v6;

  v7 = [v9 maximumValue];
  [v7 doubleValue];
  setPitch__maxAngle = v8;
}

- (void)setAngle:(double)angle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PICropAdjustmentController_setAngle___block_invoke;
  block[3] = &unk_1E82AC670;
  block[4] = self;
  if (setAngle__onceToken != -1)
  {
    dispatch_once(&setAngle__onceToken, block);
  }

  v5 = *&setAngle__minAngle;
  angleCopy = *&setAngle__maxAngle;
  if (*&setAngle__maxAngle > angle)
  {
    angleCopy = angle;
  }

  if (*&setAngle__minAngle < angleCopy)
  {
    v5 = angleCopy;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v9 = +[PICropAdjustmentController angleKey];
  [adjustment setObject:v7 forKeyedSubscript:v9];
}

void __39__PICropAdjustmentController_setAngle___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) adjustment];
  v2 = [v1 schema];
  v3 = [v2 settings];
  v4 = +[PICropAdjustmentController angleKey];
  v9 = [v3 objectForKeyedSubscript:v4];

  v5 = [v9 minimumValue];
  [v5 doubleValue];
  setAngle__minAngle = v6;

  v7 = [v9 maximumValue];
  [v7 doubleValue];
  setAngle__maxAngle = v8;
}

- (void)setConstraintHeight:(int64_t)height
{
  if (height)
  {
    adjustment2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    adjustment = [(PIAdjustmentController *)self adjustment];
    v5 = +[PICropAdjustmentController constraintHeightKey];
    [adjustment setObject:adjustment2 forKeyedSubscript:v5];
  }

  else
  {
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    adjustment = +[PICropAdjustmentController constraintHeightKey];
    [adjustment2 setObject:0 forKeyedSubscript:adjustment];
  }
}

- (void)setConstraintWidth:(int64_t)width
{
  if (width)
  {
    adjustment2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    adjustment = [(PIAdjustmentController *)self adjustment];
    v5 = +[PICropAdjustmentController constraintWidthKey];
    [adjustment setObject:adjustment2 forKeyedSubscript:v5];
  }

  else
  {
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    adjustment = +[PICropAdjustmentController constraintWidthKey];
    [adjustment2 setObject:0 forKeyedSubscript:adjustment];
  }
}

- (void)setCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v37 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(rect))
  {
    v19 = NUAssertLogger_12487();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot set empty crop rect"];
      *buf = 138543362;
      v34 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_12487();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(*v21);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols = [v28 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v27;
        v35 = 2114;
        v36 = v31;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v26;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:x];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v10 = +[PICropAdjustmentController xOriginKey];
  [adjustment setObject:v8 forKeyedSubscript:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v13 = +[PICropAdjustmentController yOriginKey];
  [adjustment2 setObject:v11 forKeyedSubscript:v13];

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  adjustment3 = [(PIAdjustmentController *)self adjustment];
  v16 = +[PICropAdjustmentController widthKey];
  [adjustment3 setObject:v14 forKeyedSubscript:v16];

  v32 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  adjustment4 = [(PIAdjustmentController *)self adjustment];
  v18 = +[PICropAdjustmentController heightKey];
  [adjustment4 setObject:v32 forKeyedSubscript:v18];
}

- (double)yaw
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PICropAdjustmentController yawKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)pitch
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PICropAdjustmentController pitchKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)angle
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PICropAdjustmentController angleKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (int64_t)constraintHeight
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PICropAdjustmentController constraintHeightKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (int64_t)constraintWidth
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PICropAdjustmentController constraintWidthKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (CGRect)cropRect
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v25 = +[PICropAdjustmentController xOriginKey];
  v3 = [adjustment objectForKeyedSubscript:v25];
  [v3 doubleValue];
  v5 = v4;
  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v7 = +[PICropAdjustmentController yOriginKey];
  v8 = [adjustment2 objectForKeyedSubscript:v7];
  [v8 doubleValue];
  v10 = v9;
  adjustment3 = [(PIAdjustmentController *)self adjustment];
  v12 = +[PICropAdjustmentController widthKey];
  v13 = [adjustment3 objectForKeyedSubscript:v12];
  [v13 doubleValue];
  v15 = v14;
  adjustment4 = [(PIAdjustmentController *)self adjustment];
  v17 = +[PICropAdjustmentController heightKey];
  v18 = [adjustment4 objectForKeyedSubscript:v17];
  [v18 doubleValue];
  v20 = v19;

  v21 = v5;
  v22 = v10;
  v23 = v15;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (BOOL)isCropIdentityForImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PICropAdjustmentController *)self cropRect];
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = width;
  v12.size.height = height;
  v6 = CGRectEqualToRect(v11, v12);
  if (v6)
  {
    [(PICropAdjustmentController *)self angle];
    if (fabs(v7) >= 0.0000000596046448 || ([(PICropAdjustmentController *)self pitch], fabs(v8) >= 0.0000000596046448))
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      [(PICropAdjustmentController *)self yaw];
      LOBYTE(v6) = fabs(v9) < 0.0000000596046448;
    }
  }

  return v6;
}

- (BOOL)isCropConstrained
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v4 = +[PICropAdjustmentController constraintWidthKey];
  v5 = [adjustment objectForKeyedSubscript:v4];
  integerValue = [v5 integerValue];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  v8 = +[PICropAdjustmentController constraintHeightKey];
  v9 = [adjustment2 objectForKeyedSubscript:v8];
  integerValue2 = [v9 integerValue];

  return integerValue > 0 && integerValue2 > 0;
}

- (BOOL)isGeometryIdentityForImageSize:(CGSize)size
{
  v4 = [(PICropAdjustmentController *)self isCropIdentityForImageSize:size.width, size.height];
  if (v4)
  {
    LOBYTE(v4) = ![(PICropAdjustmentController *)self isCropConstrained];
  }

  return v4;
}

- (id)visualInputKeys
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = +[PICropAdjustmentController angleKey];
  v3 = +[PICropAdjustmentController pitchKey];
  v13[1] = v3;
  v4 = +[PICropAdjustmentController yawKey];
  v13[2] = v4;
  v5 = +[PICropAdjustmentController xOriginKey];
  v13[3] = v5;
  v6 = +[PICropAdjustmentController yOriginKey];
  v13[4] = v6;
  v7 = +[PICropAdjustmentController widthKey];
  v13[5] = v7;
  v8 = +[PICropAdjustmentController heightKey];
  v13[6] = v8;
  v9 = +[PICropAdjustmentController constraintWidthKey];
  v13[7] = v9;
  v10 = +[PICropAdjustmentController constraintHeightKey];
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

- (PICropAdjustmentController)initWithAdjustment:(id)adjustment
{
  v4.receiver = self;
  v4.super_class = PICropAdjustmentController;
  return [(PIAdjustmentController *)&v4 initWithAdjustment:adjustment];
}

@end