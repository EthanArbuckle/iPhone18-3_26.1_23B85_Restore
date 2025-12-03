@interface PUCropAspect
+ (id)allAspectsWithOriginalSize:(CGSize)size currentSize:(CGSize)currentSize;
+ (id)originalAspectForWidth:(unint64_t)width height:(unint64_t)height;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCropAspect:(id)aspect;
- (BOOL)isEquivalentToCropAspect:(id)aspect;
- (BOOL)isFreeformCrop;
- (CGRect)constrainRect:(CGRect)rect boundingRect:(CGRect)boundingRect boundingAngle:(double)angle minSize:(CGSize)size;
- (PUCropAspect)initWithWidth:(double)width height:(double)height;
- (double)ratio;
- (id)_initWithWidth:(double)width height:(double)height localizedName:(id)name;
- (id)description;
- (id)inverseAspect;
- (unint64_t)hash;
@end

@implementation PUCropAspect

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  localizedName = [(PUCropAspect *)self localizedName];
  [(PUCropAspect *)self width];
  v7 = v6;
  [(PUCropAspect *)self height];
  v9 = v8;
  isFreeformCrop = [(PUCropAspect *)self isFreeformCrop];
  v11 = 0;
  if (!isFreeformCrop)
  {
    [(PUCropAspect *)self ratio];
  }

  v12 = [v3 stringWithFormat:@"<%@ %p: '%@' width: %f height: %f ratio: %f>", v4, self, localizedName, v7, v9, v11];

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

- (CGRect)constrainRect:(CGRect)rect boundingRect:(CGRect)boundingRect boundingAngle:(double)angle minSize:(CGSize)size
{
  width = boundingRect.size.width;
  y = boundingRect.origin.y;
  x = boundingRect.origin.x;
  height = rect.size.height;
  v43 = rect.size.width;
  v10 = boundingRect.size.height;
  if (v53 >= boundingRect.size.width || v54 >= boundingRect.size.height)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropAspect.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"minSize.width < boundingRect.size.width && minSize.height < boundingRect.size.height"}];
  }

  PLRectGetCenter();
  v13 = v12;
  v15 = v14;
  memset(&v52, 0, sizeof(v52));
  CGAffineTransformMakeTranslation(&v52, -v12, -v14);
  CGAffineTransformMakeRotation(&t2, angle);
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

- (BOOL)isEquivalentToCropAspect:(id)aspect
{
  aspectCopy = aspect;
  if (!-[PUCropAspect isFreeformCrop](self, "isFreeformCrop") || (v5 = [aspectCopy isFreeformCrop], v6 = 1, aspectCopy) && (v5 & 1) == 0)
  {
    if (-[PUCropAspect isFreeformCrop](self, "isFreeformCrop") || ([aspectCopy isFreeformCrop] & 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      [(PUCropAspect *)self ratio];
      v8 = v7;
      [aspectCopy ratio];
      v6 = vabdd_f64(v8, v9) < 0.01;
    }
  }

  return v6;
}

- (BOOL)isEqualToCropAspect:(id)aspect
{
  aspectCopy = aspect;
  if (!-[PUCropAspect isFreeformCrop](self, "isFreeformCrop") || (v5 = [aspectCopy isFreeformCrop], v6 = 1, aspectCopy) && (v5 & 1) == 0)
  {
    localizedName = [(PUCropAspect *)self localizedName];
    localizedName2 = [aspectCopy localizedName];
    v9 = [localizedName isEqualToString:localizedName2];

    if (v9 && (-[PUCropAspect height](self, "height"), v11 = v10, [aspectCopy height], vabdd_f64(v11, v12) < 2.22044605e-16))
    {
      [(PUCropAspect *)self width];
      v14 = v13;
      [aspectCopy width];
      v6 = vabdd_f64(v14, v15) < 2.22044605e-16;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PUCropAspect *)self isEqualToCropAspect:equalCopy];
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
  isFreeformCrop = [(PUCropAspect *)self isFreeformCrop];
  result = 1.0;
  if (!isFreeformCrop)
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

- (id)_initWithWidth:(double)width height:(double)height localizedName:(id)name
{
  nameCopy = name;
  v10 = nameCopy;
  if (width < 0.0 || height < 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropAspect.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"width >= 0 && height >= 0"}];

    if (v10)
    {
      goto LABEL_4;
    }
  }

  else if (nameCopy)
  {
    goto LABEL_4;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUCropAspect.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];

LABEL_4:
  v17.receiver = self;
  v17.super_class = PUCropAspect;
  v11 = [(PUCropAspect *)&v17 init];
  if (v11)
  {
    v12 = [v10 copy];
    localizedName = v11->_localizedName;
    v11->_localizedName = v12;

    v11->_width = width;
    v11->_height = height;
    v11->_allowOrientationChange = width != height;
  }

  return v11;
}

- (PUCropAspect)initWithWidth:(double)width height:(double)height
{
  v7 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_TEMPLATE");
  v8 = PXLocalizedStringFromInteger();
  v12 = PXLocalizedStringFromInteger();
  v9 = PUStringWithValidatedFormat();

  v10 = [(PUCropAspect *)self _initWithWidth:v9 height:width localizedName:height, v8, v12];
  return v10;
}

+ (id)originalAspectForWidth:(unint64_t)width height:(unint64_t)height
{
  v7 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_ORIGINAL");
  v8 = [[self alloc] _initWithWidth:v7 height:width localizedName:height];

  return v8;
}

+ (id)allAspectsWithOriginalSize:(CGSize)size currentSize:(CGSize)currentSize
{
  height = currentSize.height;
  width = currentSize.width;
  v6 = size.height;
  v7 = size.width;
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
    v11 = [self originalAspectForWidth:? height:?];
    [v9 addObject:v11];
  }

  v12 = [self alloc];
  v13 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_FREEFORM");
  v14 = [v12 _initWithWidth:v13 height:0.0 localizedName:0.0];
  [v9 addObject:v14];

  v15 = [self alloc];
  v16 = PULocalizedString(@"PHOTOEDIT_CROP_ASPECT_RATIO_SQUARE");
  v17 = [v15 _initWithWidth:v16 height:1.0 localizedName:1.0];
  [v9 addObject:v17];

  v18 = MGCopyAnswer();
  if (([v18 isEqualToString:@"iPad"] & 1) == 0)
  {
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [px_mainScreen bounds];
    v21 = v20;
    v23 = v22;

    v24 = [self alloc];
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
        unsignedIntegerValue = [v32 unsignedIntegerValue];

        v34 = [v31 objectAtIndexedSubscript:1];
        unsignedIntegerValue2 = [v34 unsignedIntegerValue];

        if (width >= height)
        {
          v36 = unsignedIntegerValue2;
        }

        else
        {
          v36 = unsignedIntegerValue;
        }

        if (width >= height)
        {
          unsignedIntegerValue2 = unsignedIntegerValue;
        }

        v37 = [[self alloc] initWithWidth:v36 height:unsignedIntegerValue2];
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