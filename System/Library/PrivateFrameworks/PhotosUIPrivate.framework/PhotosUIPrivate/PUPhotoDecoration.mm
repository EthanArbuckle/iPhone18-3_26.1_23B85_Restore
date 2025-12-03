@interface PUPhotoDecoration
+ (id)defaultDecoration;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)photoDecorationVariantsWithIncreasingAlpha:(int64_t)alpha;
- (id)photoDecorationVariantsWithIncreasingBorderBrightness:(int64_t)brightness;
- (unint64_t)hash;
@end

@implementation PUPhotoDecoration

- (id)photoDecorationVariantsWithIncreasingBorderBrightness:(int64_t)brightness
{
  if (brightness < 1)
  {
    array = 0;
  }

  else
  {
    brightnessCopy = brightness;
    array = [MEMORY[0x1E695DF70] array];
    borderColor = 0;
    do
    {
      v7 = [(PUPhotoDecoration *)self copy];
      if (borderColor)
      {
        pu_colorWithIncreasedBrightness = [borderColor pu_colorWithIncreasedBrightness];

        borderColor = pu_colorWithIncreasedBrightness;
      }

      else
      {
        borderColor = [(PUPhotoDecoration *)self borderColor];
      }

      [v7 setBorderColor:borderColor];
      [array addObject:v7];

      --brightnessCopy;
    }

    while (brightnessCopy);
  }

  return array;
}

- (id)photoDecorationVariantsWithIncreasingAlpha:(int64_t)alpha
{
  if (alpha < 1)
  {
    array = 0;
  }

  else
  {
    alphaCopy = alpha;
    array = [MEMORY[0x1E695DF70] array];
    foregroundColor = 0;
    do
    {
      v7 = [(PUPhotoDecoration *)self copy];
      if (foregroundColor)
      {
        pu_colorWithIncreasedAlpha = [foregroundColor pu_colorWithIncreasedAlpha];

        foregroundColor = pu_colorWithIncreasedAlpha;
      }

      else
      {
        foregroundColor = [(PUPhotoDecoration *)self foregroundColor];
      }

      [v7 setForegroundColor:foregroundColor];
      [array addObject:v7];

      --alphaCopy;
    }

    while (alphaCopy);
  }

  return array;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  borderColor = [(PUPhotoDecoration *)self borderColor];
  [v4 setBorderColor:borderColor];

  [(PUPhotoDecoration *)self borderWidth];
  [v4 setBorderWidth:?];
  foregroundColor = [(PUPhotoDecoration *)self foregroundColor];
  [v4 setForegroundColor:foregroundColor];

  return v4;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E69DC888];
  borderColor = [(PUPhotoDecoration *)self borderColor];
  v5 = [v3 colorWithCGColor:{objc_msgSend(borderColor, "CGColor")}];

  v6 = MEMORY[0x1E69DC888];
  foregroundColor = [(PUPhotoDecoration *)self foregroundColor];
  v8 = [v6 colorWithCGColor:{objc_msgSend(foregroundColor, "CGColor")}];

  [(PUPhotoDecoration *)self borderWidth];
  v10 = 1319 * ((1319 * (v9 * 1319.0)) ^ [v5 hash]);
  v11 = [v8 hash];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(PUPhotoDecoration *)self borderWidth];
    v7 = v6;
    [v5 borderWidth];
    if (v7 == v8 && (-[PUPhotoDecoration borderColor](self, "borderColor"), v9 = objc_claimAutoreleasedReturnValue(), [v5 borderColor], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v11))
    {
      foregroundColor = [(PUPhotoDecoration *)self foregroundColor];
      foregroundColor2 = [v5 foregroundColor];
      v14 = [foregroundColor isEqual:foregroundColor2];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)defaultDecoration
{
  v2 = objc_alloc_init(PUPhotoDecoration);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PUPhotoDecoration *)v2 setBorderColor:systemBackgroundColor];

  PLPhysicalScreenScale();
  [(PUPhotoDecoration *)v2 setBorderWidth:1.0 / v4];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(PUPhotoDecoration *)v2 setForegroundColor:clearColor];

  return v2;
}

@end