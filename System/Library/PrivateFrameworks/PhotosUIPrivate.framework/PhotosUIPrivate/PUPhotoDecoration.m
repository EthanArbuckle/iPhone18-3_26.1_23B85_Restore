@interface PUPhotoDecoration
+ (id)defaultDecoration;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)photoDecorationVariantsWithIncreasingAlpha:(int64_t)a3;
- (id)photoDecorationVariantsWithIncreasingBorderBrightness:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation PUPhotoDecoration

- (id)photoDecorationVariantsWithIncreasingBorderBrightness:(int64_t)a3
{
  if (a3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = a3;
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = 0;
    do
    {
      v7 = [(PUPhotoDecoration *)self copy];
      if (v6)
      {
        v8 = [v6 pu_colorWithIncreasedBrightness];

        v6 = v8;
      }

      else
      {
        v6 = [(PUPhotoDecoration *)self borderColor];
      }

      [v7 setBorderColor:v6];
      [v5 addObject:v7];

      --v3;
    }

    while (v3);
  }

  return v5;
}

- (id)photoDecorationVariantsWithIncreasingAlpha:(int64_t)a3
{
  if (a3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = a3;
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = 0;
    do
    {
      v7 = [(PUPhotoDecoration *)self copy];
      if (v6)
      {
        v8 = [v6 pu_colorWithIncreasedAlpha];

        v6 = v8;
      }

      else
      {
        v6 = [(PUPhotoDecoration *)self foregroundColor];
      }

      [v7 setForegroundColor:v6];
      [v5 addObject:v7];

      --v3;
    }

    while (v3);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PUPhotoDecoration *)self borderColor];
  [v4 setBorderColor:v5];

  [(PUPhotoDecoration *)self borderWidth];
  [v4 setBorderWidth:?];
  v6 = [(PUPhotoDecoration *)self foregroundColor];
  [v4 setForegroundColor:v6];

  return v4;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E69DC888];
  v4 = [(PUPhotoDecoration *)self borderColor];
  v5 = [v3 colorWithCGColor:{objc_msgSend(v4, "CGColor")}];

  v6 = MEMORY[0x1E69DC888];
  v7 = [(PUPhotoDecoration *)self foregroundColor];
  v8 = [v6 colorWithCGColor:{objc_msgSend(v7, "CGColor")}];

  [(PUPhotoDecoration *)self borderWidth];
  v10 = 1319 * ((1319 * (v9 * 1319.0)) ^ [v5 hash]);
  v11 = [v8 hash];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(PUPhotoDecoration *)self borderWidth];
    v7 = v6;
    [v5 borderWidth];
    if (v7 == v8 && (-[PUPhotoDecoration borderColor](self, "borderColor"), v9 = objc_claimAutoreleasedReturnValue(), [v5 borderColor], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v11))
    {
      v12 = [(PUPhotoDecoration *)self foregroundColor];
      v13 = [v5 foregroundColor];
      v14 = [v12 isEqual:v13];
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
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PUPhotoDecoration *)v2 setBorderColor:v3];

  PLPhysicalScreenScale();
  [(PUPhotoDecoration *)v2 setBorderWidth:1.0 / v4];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [(PUPhotoDecoration *)v2 setForegroundColor:v5];

  return v2;
}

@end