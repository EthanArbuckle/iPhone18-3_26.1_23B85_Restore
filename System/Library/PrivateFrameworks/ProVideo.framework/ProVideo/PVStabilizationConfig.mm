@interface PVStabilizationConfig
+ (id)configWithHomography:(double)homography cleanAperture:(double)aperture cropRect:(double)rect fillMode:(double)mode;
- (BOOL)isValidWithReason:(id *)reason;
- (CGRect)cleanAperture;
- (CGRect)cropRect;
- (CGRect)normalizedCleanAperture;
- (PVStabilizationConfig)initWithCoder:(id)coder;
- (PVStabilizationConfig)initWithHomography:(double)homography cleanAperture:(double)aperture cropRect:(double)rect fillMode:(double)mode;
- (__n128)setHomography:(__n128)homography;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setFillMode:(int)mode;
@end

@implementation PVStabilizationConfig

+ (id)configWithHomography:(double)homography cleanAperture:(double)aperture cropRect:(double)rect fillMode:(double)mode
{
  v18 = [[self alloc] initWithHomography:a10 cleanAperture:a2 cropRect:homography fillMode:{aperture, rect, mode, a7, a8, a16, a17, a18}];

  return v18;
}

- (PVStabilizationConfig)initWithHomography:(double)homography cleanAperture:(double)aperture cropRect:(double)rect fillMode:(double)mode
{
  v30.receiver = self;
  v30.super_class = PVStabilizationConfig;
  v24 = [(PVStabilizationConfig *)&v30 init];
  v25 = v24;
  if (v24)
  {
    [(PVStabilizationConfig *)v24 setHomography:a2, homography, aperture];
    [(PVStabilizationConfig *)v25 setCleanAperture:rect, mode, a7, a8];
    [(PVStabilizationConfig *)v25 setCropRect:a12, a13, a14, a15];
    [(PVStabilizationConfig *)v25 setFillMode:a10];
  }

  return v25;
}

- (CGRect)normalizedCleanAperture
{
  width = self->_cleanAperture.size.width;
  height = self->_cleanAperture.size.height;
  v4 = fmax(width, height);
  v5 = width / v4;
  v6 = height / v4;
  v7 = *MEMORY[0x277CBF348] - v5 * 0.5;
  v8 = *(MEMORY[0x277CBF348] + 8) - v6 * 0.5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (BOOL)isValidWithReason:(id *)reason
{
  width = self->_cleanAperture.size.width;
  if (fabs(width) < 0.0000001 || (height = self->_cleanAperture.size.height, fabs(height) < 0.0000001))
  {
    if (reason)
    {
      v5 = @"Clean aperture has zero area";
LABEL_5:
      result = 0;
      *reason = v5;
      return result;
    }

    return 0;
  }

  if (width < 2.0 || height < 2.0)
  {
    if (reason)
    {
      v5 = @"Clean aperture has side shorter than 2. Only pixel based clean aperture is supported.";
      goto LABEL_5;
    }

    return 0;
  }

  v8 = self->_cropRect.size.width;
  if (fabs(v8) < 0.0000001 || (v9 = self->_cropRect.size.height, fabs(v9) < 0.0000001))
  {
    if (reason)
    {
      v5 = @"Crop rect has zero area";
      goto LABEL_5;
    }

    return 0;
  }

  if (v8 > 1.5 || v9 > 1.5)
  {
    if (reason)
    {
      v5 = @"Crop rect has side longer than 1.5. Only normalized crop rect is supported.";
      goto LABEL_5;
    }

    return 0;
  }

  return 1;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCAE60];
  coderCopy = coder;
  [(PVStabilizationConfig *)self homography];
  v5 = [v4 valueWithSIMDFloat3x3:?];
  [coderCopy encodeObject:v5 forKey:@"homography"];

  v6 = MEMORY[0x277CCAE60];
  [(PVStabilizationConfig *)self cleanAperture];
  v7 = [v6 valueWithCGRect:?];
  [coderCopy encodeObject:v7 forKey:@"cleanAperture"];

  v8 = MEMORY[0x277CCAE60];
  [(PVStabilizationConfig *)self cropRect];
  v9 = [v8 valueWithCGRect:?];
  [coderCopy encodeObject:v9 forKey:@"cropRect"];

  [coderCopy encodeInteger:-[PVStabilizationConfig fillMode](self forKey:{"fillMode"), @"fillMode"}];
}

- (PVStabilizationConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homography"];
  [v5 SIMDFloat3x3Value];
  v31 = v7;
  v32 = v6;
  v30 = v8;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cleanAperture"];
  [v9 CGRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cropRect"];
  [v18 CGRectValue];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [coderCopy decodeIntegerForKey:@"fillMode"];

  v28 = [(PVStabilizationConfig *)self initWithHomography:v27 cleanAperture:v32 cropRect:v31 fillMode:v30, v11, v13, v15, v17, v20, v22, v24, v26];
  return v28;
}

- (void)setFillMode:(int)mode
{
  if (self->_fillMode != mode)
  {
    if (mode >= 0xF)
    {
      modeCopy = 0;
    }

    else
    {
      modeCopy = mode;
    }

    self->_fillMode = modeCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PVStabilizationConfig alloc];
  [(PVStabilizationConfig *)self homography];
  v22 = v6;
  v23 = v5;
  v21 = v7;
  [(PVStabilizationConfig *)self cleanAperture];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(PVStabilizationConfig *)self cropRect];
  return [(PVStabilizationConfig *)v4 initWithHomography:[(PVStabilizationConfig *)self fillMode] cleanAperture:v23 cropRect:v22 fillMode:v21, v9, v11, v13, v15, v16, v17, v18, v19];
}

- (id)description
{
  v33 = 0;
  v3 = [(PVStabilizationConfig *)self isValidWithReason:&v33];
  v4 = MEMORY[0x277CCACA8];
  v32.receiver = self;
  v32.super_class = PVStabilizationConfig;
  v5 = v33;
  v6 = [(PVStabilizationConfig *)&v32 description];
  [(PVStabilizationConfig *)self homography];
  v7 = NSStringFromSIMDFloat3x3(4, v35);
  [(PVStabilizationConfig *)self cleanAperture];
  *(&v9 + 1) = v8;
  *(&v11 + 1) = v10;
  v30 = v9;
  v31 = v11;
  v12 = NSStringFromSIMDDouble4(&v30, 3);
  [(PVStabilizationConfig *)self normalizedCleanAperture];
  *(&v14 + 1) = v13;
  *(&v16 + 1) = v15;
  v30 = v14;
  v31 = v16;
  v17 = NSStringFromSIMDDouble4(&v30, 3);
  [(PVStabilizationConfig *)self cropRect];
  *(&v19 + 1) = v18;
  *(&v21 + 1) = v20;
  v30 = v19;
  v31 = v21;
  v22 = NSStringFromSIMDDouble4(&v30, 3);
  fillMode = [(PVStabilizationConfig *)self fillMode];
  if (fillMode >= 0xF)
  {
    v24 = 0;
  }

  else
  {
    v24 = fillMode;
  }

  v25 = PVViewContentModeNames[v24];
  v26 = @"N";
  if (v3)
  {
    v26 = @"Y";
  }

  v27 = &stru_2872E16E0;
  if (v5)
  {
    v27 = v5;
  }

  v28 = [v4 stringWithFormat:@"%@\nhomography:\n%@\ncleanAperture: %@\ncleanAperture (normalized/centered): %@\ncropRect: %@\nfillMode: %s\nisValid: %@ %@", v6, v7, v12, v17, v22, v25, v26, v27];

  return v28;
}

- (__n128)setHomography:(__n128)homography
{
  result[5] = a2;
  result[6] = homography;
  result[7] = a4;
  return result;
}

- (CGRect)cleanAperture
{
  x = self->_cleanAperture.origin.x;
  y = self->_cleanAperture.origin.y;
  width = self->_cleanAperture.size.width;
  height = self->_cleanAperture.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end