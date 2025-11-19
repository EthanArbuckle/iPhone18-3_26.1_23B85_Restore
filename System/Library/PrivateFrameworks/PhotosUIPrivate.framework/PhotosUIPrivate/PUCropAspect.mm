@interface PUCropAspect
+ (id)allAspectsWithOriginalSize:(CGSize)a3 currentSize:(CGSize)a4;
+ (id)originalAspectForWidth:(unint64_t)a3 height:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCropAspect:(id)a3;
- (BOOL)isEquivalentToCropAspect:(id)a3;
- (BOOL)isFreeformCrop;
- (CGRect)constrainRect:(CGRect)a3 boundingRect:(CGRect)a4 boundingAngle:(double)a5 minSize:(CGSize)a6;
- (PUCropAspect)initWithWidth:(double)a3 height:(double)a4;
- (double)ratio;
- (id)_initWithWidth:(double)a3 height:(double)a4 localizedName:(id)a5;
- (id)description;
- (id)inverseAspect;
- (unint64_t)hash;
@end

@implementation PUCropAspect

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PUCropAspect *)self localizedName];
  [(PUCropAspect *)self width];
  v7 = v6;
  [(PUCropAspect *)self height];
  v9 = v8;
  v10 = [(PUCropAspect *)self isFreeformCrop];
  v11 = 0;
  if (!v10)
  {
    [(PUCropAspect *)self ratio];
  }

  v12 = [v3 stringWithFormat:@"<%@ %p: '%@' width: %f height: %f ratio: %f>", v4, self, v5, v7, v9, v11];

  return v12;
}

- (id)inverseAspect
{
  [(PUCropAspect *)self height];
  v4 = v3;
  [(PUCropAspect *)self width];
  v6 = [[PUCropAspect alloc] initWithWidth:v4 height:v5];

  return v6;
}

- (CGRect)constrainRect:(CGRect)a3 boundingRect:(CGRect)a4 boundingAngle:(double)a5 minSize:(CGSize)a6
{
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  height = a3.size.height;
  v43 = a3.size.width;
  v10 = a4.size.height;
  if (v53 >= a4.size.width || v54 >= a4.size.height)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PUCropAspect.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"minSize.width < boundingRect.size.width && minSize.height < boundingRect.size.height"}];
  }

  PLRectGetCenter();
  v13 = v12;
  v15 = v14;
  memset(&v52, 0, sizeof(v52));
  CGAffineTransformMakeTranslation(&v52, -v12, -v14);
  CGAffineTransformMakeRotation(&t2, a5);
  t1 = v52;
  CGAffineTransformConcat(&v51, &t1, &t2);
  v52 = v51;
  CGAffineTransformMakeTranslation(&t2, v13, v15);
  t1 = v52;
  CGAffineTransformConcat(&v51, &t1, &t2);
  v52 = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PUCropAspect_constrainRect_boundingRect_boundingAngle_minSize___block_invoke;
  aBlock[3] = &unk_1E7B76350;
  *&aBlock[5] = v53;
  *&aBlock[6] = v54;
  aBlock[4] = self;
  v16 = _Block_copy(aBlock);
  v17 = v10;
  v18 = v16[2](width, v10, width, v10);
  v20 = v19;
  v51 = v52;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = v18;
  v55.size.height = v20;
  v56 = CGRectApplyAffineTransform(v55, &v51);
  v56.origin.x = fmin(width / v56.size.width, v10 / v56.size.height);
  v21 = (v16[2])(v16, v43, height, v18 * v56.origin.x, v20 * v56.origin.x);
  v23 = v22;
  PLRectGetCenter();
  v47 = v52.tx + v24 * v52.c + v52.a * v25;
  v44 = v52.ty + v24 * v52.d + v52.b * v25;
  v26 = v23;
  v41 = v23;
  v27 = v23 * v52.c + v52.a * v21;
  v28 = v26 * v52.d + v52.b * v21;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = v17;
  v42 = CGRectGetMinX(v57) + v27 * 0.5;
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = v17;
  v29 = CGRectGetMinY(v58) + v28 * 0.5;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = v17;
  MaxX = CGRectGetMaxX(v59);
  v60.size.height = v17;
  v31 = MaxX + v27 * -0.5;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v45 = fmax(v29, fmin(v44, CGRectGetMaxY(v60) + v28 * -0.5));
  t2 = v52;
  CGAffineTransformInvert(&v51, &t2);
  v32 = vaddq_f64(*&v51.tx, vmlaq_n_f64(vmulq_n_f64(*&v51.c, v45), *&v51.a, fmax(v42, fmin(v47, v31))));
  v33 = v32.f64[0] + v21 * -0.5;
  v34 = v32.f64[1] + v41 * -0.5;

  v35 = v33;
  v36 = v34;
  v37 = v21;
  v38 = v41;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

double __65__PUCropAspect_constrainRect_boundingRect_boundingAngle_minSize___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = a3 > a5 || a2 > a4;
  if (v8)
  {
    a2 = a4;
  }

  v9 = fmax(a2, *(a1 + 40));
  if (v8)
  {
    v10 = a5;
  }

  else
  {
    v10 = a3;
  }

  [*(a1 + 32) widthForHeight:{fmax(v10, *(a1 + 48))}];
  v12 = v11;
  [*(a1 + 32) heightForWidth:v9];
  v14 = v13 <= a5 && v13 >= *(a1 + 48);
  if (v12 <= a4 && v12 >= *(a1 + 40) && v14)
  {
    return fmax(v9, v12);
  }

  if (v14)
  {
    return v9;
  }

  return v12;
}

- (BOOL)isEquivalentToCropAspect:(id)a3
{
  v4 = a3;
  if (!-[PUCropAspect isFreeformCrop](self, "isFreeformCrop") || (v5 = [v4 isFreeformCrop], v6 = 1, v4) && (v5 & 1) == 0)
  {
    if (-[PUCropAspect isFreeformCrop](self, "isFreeformCrop") || ([v4 isFreeformCrop] & 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      [(PUCropAspect *)self ratio];
      v8 = v7;
      [v4 ratio];
      v6 = vabdd_f64(v8, v9) < 0.01;
    }
  }

  return v6;
}

- (BOOL)isEqualToCropAspect:(id)a3
{
  v4 = a3;
  if (!-[PUCropAspect isFreeformCrop](self, "isFreeformCrop") || (v5 = [v4 isFreeformCrop], v6 = 1, v4) && (v5 & 1) == 0)
  {
    v7 = [(PUCropAspect *)self localizedName];
    v8 = [v4 localizedName];
    v9 = [v7 isEqualToString:v8];

    if (v9 && (-[PUCropAspect height](self, "height"), v11 = v10, [v4 height], vabdd_f64(v11, v12) < 2.22044605e-16))
    {
      [(PUCropAspect *)self width];
      v14 = v13;
      [v4 width];
      v6 = vabdd_f64(v14, v15) < 2.22044605e-16;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUCropAspect *)self isEqualToCropAspect:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_width];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_height];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (double)ratio
{
  v3 = [(PUCropAspect *)self isFreeformCrop];
  result = 1.0;
  if (!v3)
  {
    [(PUCropAspect *)self width];
    v6 = v5;
    [(PUCropAspect *)self height];
    return v6 / v7;
  }

  return result;
}

- (BOOL)isFreeformCrop
{
  [(PUCropAspect *)self width];
  if (v3 == 0.0)
  {
    return 1;
  }

  [(PUCropAspect *)self height];
  return v5 == 0.0;
}

- (id)_initWithWidth:(double)a3 height:(double)a4 localizedName:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (a3 < 0.0 || a4 < 0.0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUCropAspect.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"width >= 0 && height >= 0"}];

    if (v10)
    {
      goto LABEL_4;
    }
  }

  else if (v9)
  {
    goto LABEL_4;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PUCropAspect.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];

LABEL_4:
  v17.receiver = self;
  v17.super_class = PUCropAspect;
  v11 = [(PUCropAspect *)&v17 init];
  if (v11)
  {
    v12 = [v10 copy];
    localizedName = v11->_localizedName;
    v11->_localizedName = v12;

    v11->_width = a3;
    v11->_height = a4;
    v11->_allowOrientationChange = a3 != a4;
  }

  return v11;
}

- (PUCropAspect)initWithWidth:(double)a3 height:(double)a4
{
  v7 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_TEMPLATE");
  v8 = PXLocalizedStringFromInteger();
  v12 = PXLocalizedStringFromInteger();
  v9 = PUStringWithValidatedFormat();

  v10 = [(PUCropAspect *)self _initWithWidth:v9 height:a3 localizedName:a4, v8, v12];
  return v10;
}

+ (id)originalAspectForWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v7 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_ORIGINAL");
  v8 = [[a1 alloc] _initWithWidth:v7 height:a3 localizedName:a4];

  return v8;
}

+ (id)allAspectsWithOriginalSize:(CGSize)a3 currentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v45 = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  if (v7)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = [a1 originalAspectForWidth:? height:?];
    [v9 addObject:v11];
  }

  v12 = [a1 alloc];
  v13 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_FREEFORM");
  v14 = [v12 _initWithWidth:v13 height:0.0 localizedName:0.0];
  [v9 addObject:v14];

  v15 = [a1 alloc];
  v16 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_SQUARE");
  v17 = [v15 _initWithWidth:v16 height:1.0 localizedName:1.0];
  [v9 addObject:v17];

  v18 = MGCopyAnswer();
  if (([v18 isEqualToString:@"iPad"] & 1) == 0)
  {
    v19 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;

    v24 = [a1 alloc];
    v25 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_WALLPAPER");
    v26 = [v24 _initWithWidth:v25 height:v21 localizedName:v23];

    [v26 setAllowOrientationChange:0];
    [v9 addObject:v26];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v27 = [&unk_1F2B7CD70 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(&unk_1F2B7CD70);
        }

        v31 = *(*(&v40 + 1) + 8 * i);
        v32 = [v31 objectAtIndexedSubscript:0];
        v33 = [v32 unsignedIntegerValue];

        v34 = [v31 objectAtIndexedSubscript:1];
        v35 = [v34 unsignedIntegerValue];

        if (width >= height)
        {
          v36 = v35;
        }

        else
        {
          v36 = v33;
        }

        if (width >= height)
        {
          v35 = v33;
        }

        v37 = [[a1 alloc] initWithWidth:v36 height:v35];
        [v9 addObject:v37];
      }

      v28 = [&unk_1F2B7CD70 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v28);
  }

  v38 = [v9 copy];

  return v38;
}

@end