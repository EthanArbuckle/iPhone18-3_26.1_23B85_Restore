@interface _UIComplexBoundingPath
- (BOOL)_validateBitmap:(id)bitmap withOrientation:(int64_t)orientation scale:(double)scale forCoordinateSpace:(id)space;
- (BOOL)validateForCoordinateSpace;
- (CGRect)_inscribedRectInBoundingPathAndRect:(CGRect)rect byInsettingRect:(CGRect)insettingRect onEdges:(unint64_t)edges withOptions:(unint64_t)options;
- (CGRect)_largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect:(CGRect)rect portraitAspectRatio:(double)ratio;
- (CGRect)_largestInscribedRectInBoundingPathAndRect:(CGRect)rect withCenter:(CGPoint)center aspectRatio:(double)ratio;
- (CGRect)_portaitPixelRectWithPixelMinimumPaddingFromBoundingPath:(double)path againstPortraitEdge:(unint64_t)edge fromPortraitPixelRect:(CGRect)rect withPortraitPixelCornerRadii:(_UIIntegralCornerRadii *)radii;
- (CGRect)_portaitPixelRectWithPixelMinimumPaddingFromBoundingPath:(double)path inPortaitCorner:(unint64_t)corner fromPortraitPixelRect:(CGRect)rect withPortraitPixelCornerRadii:(_UIIntegralCornerRadii *)radii;
- (CGRect)_rectTuckedAgainstEdge:(unint64_t)edge ofBoundingPathAndRect:(CGRect)rect withSize:(double)size cornerRadii:(UIRectCornerRadii)radii minimumPadding:(double)padding;
- (CGRect)_rectTuckedInCorner:(unint64_t)corner ofBoundingPathAndRect:(CGRect)rect withSize:(CGSize)size cornerRadii:(UIRectCornerRadii)radii minimumPadding:(double)padding;
- (UIEdgeInsets)_centerEdgeInsetsOfBoundingPathAndRect:(CGRect)rect;
- (_UIComplexBoundingPath)initWithCoder:(id)coder;
- (_UIComplexBoundingPath)initWithCoordinateSpace:(id)space orientation:(int64_t)orientation scale:(double)scale boundingPathBitmap:(id)bitmap;
- (_UIComplexBoundingPath)initWithRectangularCoordinateSpace:(id)space orientation:(int64_t)orientation scale:(double)scale;
- (_UIIntegralRect)_rectByHorizontallyInsettingPortraitPixelRect:(SEL)rect onPortraitEdges:(_UIIntegralRect *)edges performCompleteTest:(unint64_t)test;
- (_UIIntegralRect)_rectByVerticallyInsettingPortraitPixelRect:(SEL)rect onPortraitEdges:(_UIIntegralRect *)edges performCompleteTest:(unint64_t)test;
- (id)_imageRepresentation;
- (id)boundingPathForCoordinateSpace:(id)space withCornerRadii:(UIRectCornerRadii)radii orientation:(int64_t)orientation scale:(double)scale;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setCoordinateSpace:(id)space;
@end

@implementation _UIComplexBoundingPath

- (BOOL)validateForCoordinateSpace
{
  selfCopy = self;
  bitmap = self->_bitmap;
  orientation = self->_orientation;
  scale = self->_scale;
  coordinateSpace = [(_UIBoundingPath *)self coordinateSpace];
  LOBYTE(selfCopy) = [(_UIComplexBoundingPath *)selfCopy _validateBitmap:bitmap withOrientation:orientation scale:coordinateSpace forCoordinateSpace:scale];

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIComplexBoundingPath;
  coderCopy = coder;
  [(_UIBoundingPath *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"scale" forKey:{self->_scale, v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_orientation forKey:@"orientation"];
  [coderCopy encodeObject:self->_bitmap forKey:@"bitmap"];
}

- (_UIComplexBoundingPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _UIComplexBoundingPath;
  v6 = [(_UIBoundingPath *)&v15 initWithCoder:coderCopy];
  if (v6)
  {
    [coderCopy decodeDoubleForKey:@"scale"];
    v6->_scale = v7;
    if (v7 <= 0.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"_UIComplexBoundingPath.m" lineNumber:49 description:{@"Invalid scale decoded: %f", *&v6->_scale}];
    }

    v8 = [coderCopy decodeIntegerForKey:@"orientation"];
    v6->_orientation = v8;
    if (!v8)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v6 file:@"_UIComplexBoundingPath.m" lineNumber:51 description:@"Orientation cannot be unknown"];
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bitmap"];
    bitmap = v6->_bitmap;
    v6->_bitmap = v9;

    if (!v6->_bitmap)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v6 file:@"_UIComplexBoundingPath.m" lineNumber:53 description:@"Failed to decode bitmap"];
    }
  }

  return v6;
}

- (_UIComplexBoundingPath)initWithCoordinateSpace:(id)space orientation:(int64_t)orientation scale:(double)scale boundingPathBitmap:(id)bitmap
{
  spaceCopy = space;
  bitmapCopy = bitmap;
  v18.receiver = self;
  v18.super_class = _UIComplexBoundingPath;
  v13 = [(_UIBoundingPath *)&v18 initWithCoordinateSpace:spaceCopy];
  if (v13)
  {
    if (!orientation)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v13 file:@"_UIComplexBoundingPath.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"orientation != UIInterfaceOrientationUnknown"}];
    }

    if (scale <= 0.0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v13 file:@"_UIComplexBoundingPath.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"scale > 0"}];

      if (bitmapCopy)
      {
        goto LABEL_6;
      }
    }

    else if (bitmapCopy)
    {
LABEL_6:
      [(_UIComplexBoundingPath *)v13 _validateBitmap:bitmapCopy withOrientation:orientation scale:spaceCopy forCoordinateSpace:scale];
      v13->_scale = scale;
      v13->_orientation = orientation;
      objc_storeStrong(&v13->_bitmap, bitmap);
      goto LABEL_7;
    }

    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:v13 file:@"_UIComplexBoundingPath.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"bitmap != nil"}];

    goto LABEL_6;
  }

LABEL_7:

  return v13;
}

- (_UIComplexBoundingPath)initWithRectangularCoordinateSpace:(id)space orientation:(int64_t)orientation scale:(double)scale
{
  spaceCopy = space;
  [spaceCopy bounds];
  v10 = vcvtpd_u64_f64(v9 * scale);
  [spaceCopy bounds];
  v12 = vcvtpd_u64_f64(v11 * scale);
  if ((orientation - 3) >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if ((orientation - 3) < 2)
  {
    v10 = v12;
  }

  memset(&v17[4], 0, 24);
  v17[0] = v10;
  v17[1] = v13;
  v17[2] = 0;
  v17[3] = v13;
  v14 = [[_UIBoundingPathBitmap alloc] initWithBitmapData:v17];
  v15 = [[_UIComplexBoundingPath alloc] initWithCoordinateSpace:spaceCopy orientation:orientation scale:v14 boundingPathBitmap:scale];

  return v15;
}

- (id)boundingPathForCoordinateSpace:(id)space withCornerRadii:(UIRectCornerRadii)radii orientation:(int64_t)orientation scale:(double)scale
{
  spaceCopy = space;
  if (!spaceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIComplexBoundingPath.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace != nil"}];
  }

  scaleCopy = scale;
  coordinateSpace = [(_UIBoundingPath *)self coordinateSpace];
  if (!coordinateSpace)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIComplexBoundingPath.m" lineNumber:93 description:@"The bounding path's coordinate space cannot be nil"];
  }

  [spaceCopy bounds];
  [coordinateSpace convertRect:spaceCopy fromCoordinateSpace:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [coordinateSpace bounds];
  v78.origin.x = v20;
  v78.origin.y = v21;
  v78.size.width = v22;
  v78.size.height = v23;
  v24 = v13;
  v71.origin.x = v13;
  v25 = v15;
  v71.origin.y = v15;
  v26 = v17;
  v71.size.width = v17;
  v27 = v19;
  v71.size.height = v19;
  v72 = CGRectIntersection(v71, v78);
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  if (CGRectIsNull(v72) || (v73.origin.x = x, v73.origin.y = y, v73.size.width = width, v73.size.height = height, CGRectIsEmpty(v73)))
  {
    v32 = [_UIRectangularBoundingPath alloc];
    v33 = [(_UIRectangularBoundingPath *)v32 initWithCoordinateSpace:spaceCopy boundingRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    goto LABEL_22;
  }

  bitmap = self->_bitmap;
  if (bitmap)
  {
    [(_UIBoundingPathBitmap *)bitmap bitmapData];
    v35 = self->_bitmap;
    v36 = v66;
    v37 = scaleCopy;
    if (v35)
    {
      [(_UIBoundingPathBitmap *)v35 bitmapData];
      v38 = *(&v62 + 1);
      goto LABEL_13;
    }
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    v36 = 0.0;
    v37 = scaleCopy;
  }

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v38 = 0.0;
LABEL_13:
  CGAffineTransformMakeScale(&v59, v37, v37);
  v74.origin.x = v24;
  v74.origin.y = v25;
  v74.size.width = v26;
  v74.size.height = v27;
  v75 = CGRectApplyAffineTransform(v74, &v59);
  v76.origin.x = _UIWindowConvertRectFromOrientationToOrientation(orientation, 1, v75.origin.x, v75.origin.y, v75.size.width, v75.size.height, v36, v38);
  v77 = CGRectIntegral(v76);
  v39 = (radii.topLeft * v37);
  v40 = (radii.bottomLeft * v37);
  v41 = (radii.bottomRight * v37);
  v42 = (radii.topRight * v37);
  if (orientation == 2)
  {
    v43 = (radii.topLeft * v37);
    v44 = (radii.topRight * v37);
    v42 = (radii.bottomRight * v37);
    v41 = (radii.bottomLeft * v37);
  }

  else if (orientation == 3)
  {
    v43 = (radii.topRight * v37);
    v44 = (radii.bottomRight * v37);
    v42 = (radii.bottomLeft * v37);
    v41 = (radii.topLeft * v37);
  }

  else
  {
    v43 = (radii.bottomLeft * v37);
    v44 = (radii.topLeft * v37);
    if (orientation != 4)
    {
      goto LABEL_20;
    }
  }

  v39 = v42;
  v42 = v41;
  v41 = v43;
  v40 = v44;
LABEL_20:
  v45 = self->_bitmap;
  *&v59.a = v77.origin.x;
  *&v59.b = v77.origin.y;
  *&v59.c = v77.size.width;
  *&v59.d = v77.size.height;
  v61[0] = v39;
  v61[1] = v40;
  v61[2] = v41;
  v61[3] = v42;
  v46 = [(_UIBoundingPathBitmap *)v45 boundingPathBitmapWithRect:&v59 cornerRadii:v61];
  if (os_variant_has_internal_diagnostics())
  {
    if (v46)
    {
      [v46 bitmapData];
    }

    else
    {
      v60 = 0;
      memset(&v59, 0, sizeof(v59));
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __91___UIComplexBoundingPath_boundingPathForCoordinateSpace_withCornerRadii_orientation_scale___block_invoke;
    v52[3] = &unk_1E710C3C0;
    v53 = coordinateSpace;
    v54 = spaceCopy;
    v55 = v24;
    v56 = v25;
    v57 = v26;
    v58 = v27;
    _UIBoundingPathBitmapDataAssertValid(&v59, v52);
  }

  v33 = [[_UIComplexBoundingPath alloc] initWithCoordinateSpace:spaceCopy orientation:orientation scale:v46 boundingPathBitmap:v37];

LABEL_22:

  return v33;
}

- (BOOL)_validateBitmap:(id)bitmap withOrientation:(int64_t)orientation scale:(double)scale forCoordinateSpace:(id)space
{
  v37 = *MEMORY[0x1E69E9840];
  bitmapCopy = bitmap;
  spaceCopy = space;
  if ((orientation - 3) > 1)
  {
    if (bitmapCopy)
    {
      [bitmapCopy bitmapData];
      v13 = v34;
      [bitmapCopy bitmapData];
      v14 = v32;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else if (bitmapCopy)
  {
    [bitmapCopy bitmapData];
    v13 = v35;
    [bitmapCopy bitmapData];
    v14 = v33;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  [spaceCopy bounds];
  v16 = v15;
  v18 = v17;
  CGAffineTransformMakeScale(v36, scale, scale);
  v19 = v16 * *v36 + v18 * *&v36[16];
  v20 = v16 * *&v36[8] + v18 * *&v36[24];
  v21 = v19 <= v13;
  if (v20 > v14)
  {
    v21 = 0;
  }

  if (_UIBoundingPathValidationAssertsEnabled == 1)
  {
    if (!v21)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v31 = [UIApplication stringForInterfaceOrientation:orientation];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIComplexBoundingPath.m" lineNumber:140 description:@"Bounding path likely out of sync with its coordinate space: The bitmap cannot be smaller than the coordinate space's bounds (in pixels), adjusted for orientation. Bitmap orientation-adjusted size: {width=%lu, height=%lu}; Orientation: %@; Scale: %.1f; Coordinate space: %@", v13, v14, v31, *&scale, spaceCopy];
LABEL_13:

LABEL_16:
      v23 = 0;
      goto LABEL_18;
    }
  }

  else if (!v21)
  {
    if (!os_variant_has_internal_diagnostics())
    {
      goto LABEL_16;
    }

    v27 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_19_3) + 8);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    currentHandler = v27;
    v31 = [UIApplication stringForInterfaceOrientation:orientation];
    *v36 = 134219010;
    *&v36[4] = v13;
    *&v36[12] = 2048;
    *&v36[14] = v14;
    *&v36[22] = 2112;
    *&v36[24] = v31;
    *&v36[32] = 2048;
    *&v36[34] = scale;
    *&v36[42] = 2112;
    *&v36[44] = spaceCopy;
    _os_log_impl(&dword_188A29000, currentHandler, OS_LOG_TYPE_ERROR, "Bounding path likely out of sync with its coordinate space: The bitmap cannot be smaller than the coordinate space's bounds (in pixels), adjusted for orientation. Bitmap orientation-adjusted size: {width=%lu, height=%lu}; Orientation: %@; Scale: %.1f; Coordinate space: %@", v36, 0x34u);
    goto LABEL_13;
  }

  if (v19 + scale < v13)
  {
    goto LABEL_16;
  }

  v23 = v20 + scale >= v14;
LABEL_18:
  if (_UIBoundingPathValidationAssertsEnabled == 1)
  {
    if (!v23)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [UIApplication stringForInterfaceOrientation:orientation];
    }
  }

  else if (!v23)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v28 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B1C0) + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        v30 = [UIApplication stringForInterfaceOrientation:orientation];
        *v36 = 134219010;
        *&v36[4] = v13;
        *&v36[12] = 2048;
        *&v36[14] = v14;
        *&v36[22] = 2112;
        *&v36[24] = v30;
        *&v36[32] = 2048;
        *&v36[34] = scale;
        *&v36[42] = 2112;
        *&v36[44] = spaceCopy;
      }
    }
  }

  return v23;
}

- (void)setCoordinateSpace:(id)space
{
  bitmap = self->_bitmap;
  orientation = self->_orientation;
  scale = self->_scale;
  spaceCopy = space;
  [(_UIComplexBoundingPath *)self _validateBitmap:bitmap withOrientation:orientation scale:spaceCopy forCoordinateSpace:scale];
  v8.receiver = self;
  v8.super_class = _UIComplexBoundingPath;
  [(_UIBoundingPath *)&v8 setCoordinateSpace:spaceCopy];
}

- (_UIIntegralRect)_rectByHorizontallyInsettingPortraitPixelRect:(SEL)rect onPortraitEdges:(_UIIntegralRect *)edges performCompleteTest:(unint64_t)test
{
  v35 = a6;
  var1 = edges->var1;
  retstr->var0 = edges->var0;
  retstr->var1 = var1;
  result = self->_bitmap;
  if (result)
  {
    result = [(_UIIntegralRect *)result bitmapData];
  }

  var0 = retstr->var0.var0;
  if ((test & 0xA) != 0xA)
  {
    v13 = retstr->var0.var1;
    v12 = retstr->var1.var0;
LABEL_19:
    v33 = retstr;
    if ((test & 0xA) == 0)
    {
      v28 = var0;
LABEL_53:
      v33->var0.var0 = v28;
      v33->var1.var0 = v12;
      return result;
    }

    v23 = (test >> 1) & 1;
    v24 = (test >> 3) & 1;
    v25 = v12 + var0;
    v26 = v13 + 1;
    v34 = retstr->var1.var1 + v13;
    v27 = v13 + 1;
    v28 = var0;
    while (1)
    {
      v29 = v12 + v28;
      if (var0 > v12 + v28 || v25 < v28 || v12 < 1)
      {
        goto LABEL_53;
      }

      if (v23)
      {
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0;
        result = _UIBoundingPathBitmapDataRowHitTest(&v36, var0, v27);
        if (result)
        {
          v32 = (v27 + 1) <= v34;
          LODWORD(v23) = (v27 + 1) <= v34 || v35;
          if ((v27 + 1) <= v34)
          {
            ++v27;
          }

          else
          {
            v27 = v13;
          }

          if (!v32)
          {
            ++var0;
          }

          if ((v24 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v28 = var0 + 1;
          v12 = v29 + ~var0;
          if (v12 < 1)
          {
            goto LABEL_53;
          }

          LODWORD(v23) = 1;
          v27 = v13;
          ++var0;
          if ((v24 & 1) == 0)
          {
LABEL_46:
            LODWORD(v24) = 0;
            goto LABEL_49;
          }
        }
      }

      else
      {
        LODWORD(v23) = 0;
        if ((v24 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0;
      result = _UIBoundingPathBitmapDataRowHitTest(&v36, v25, v26);
      if ((result & 1) == 0)
      {
        v12 += v25 + ~(v12 + v28);
LABEL_48:
        --v25;
        LODWORD(v24) = result ^ 1 | v35;
        v26 = v13;
        goto LABEL_49;
      }

      if (++v26 > v34)
      {
        goto LABEL_48;
      }

      LODWORD(v24) = 1;
LABEL_49:
      if (((v23 | v24) & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  v12 = retstr->var1.var0;
  v11 = retstr->var1.var1;
  v13 = retstr->var0.var1;
  while (v12 >= 1)
  {
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v15 = _UIBoundingPathBitmapDataRowHitTest(&v36, var0, v13);
    v16 = (v15 & 1) != 0 ? 0 : v14;
    v17 = v16 + var0;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    result = _UIBoundingPathBitmapDataRowHitTest(&v36, v17, v11 + v13);
    v19 = (result & 1) != 0 ? 0 : v18;
    v12 = v12 - v16 - v19;
    var0 = v19 + v17;
    if (v12 < 1)
    {
      break;
    }

    v20 = v15 & result;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    v21 = _UIBoundingPathBitmapDataRowHitTest(&v36, var0 + v12, v13);
    v22 = v21;
    v12 += *&v21 | 0xFFFFFFFFFFFFFFFELL;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    result = _UIBoundingPathBitmapDataRowHitTest(&v36, v12 + 1 + var0, v11 + v13);
    if (result)
    {
      ++v12;
    }

    if (v20 & 1) != 0 || (result & v22)
    {
      goto LABEL_19;
    }
  }

  retstr->var1.var0 = v12;
  retstr->var0.var0 = var0;
  return result;
}

- (_UIIntegralRect)_rectByVerticallyInsettingPortraitPixelRect:(SEL)rect onPortraitEdges:(_UIIntegralRect *)edges performCompleteTest:(unint64_t)test
{
  v34 = a6;
  var1 = edges->var1;
  retstr->var0 = edges->var0;
  retstr->var1 = var1;
  result = self->_bitmap;
  if (result)
  {
    result = [(_UIIntegralRect *)result bitmapData];
  }

  var0 = retstr->var0.var0;
  if ((test & 4) == 0 || (test & 1) == 0)
  {
    v13 = retstr->var0.var1;
    v12 = retstr->var1.var1;
LABEL_14:
    v32 = retstr;
    if ((((test & 4) == 0) & (test ^ 1)) != 0)
    {
      v26 = v13;
LABEL_46:
      v32->var0.var1 = v26;
      v32->var1.var1 = v12;
      return result;
    }

    v22 = (test >> 2) & 1;
    v23 = v12 + v13;
    v24 = var0 + 1;
    v33 = retstr->var1.var0 + var0;
    v25 = var0 + 1;
    v26 = v13;
    while (1)
    {
      v27 = v12 + v26;
      if (v13 > v12 + v26 || v23 < v26 || v12 < 1)
      {
        goto LABEL_46;
      }

      if (test)
      {
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0;
        result = _UIBoundingPathBitmapDataRowHitTest(&v35, v25, v13);
        if (result)
        {
          LODWORD(test) = (v30 + v25) <= v33 || v34;
          if ((v30 + v25) <= v33)
          {
            v25 += v30;
          }

          else
          {
            ++v13;
            v25 = var0;
          }

          if ((v22 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v26 = v13 + 1;
          v12 = v27 + ~v13;
          if (v12 < 1)
          {
            goto LABEL_46;
          }

          LODWORD(test) = 1;
          ++v13;
          v25 = var0;
          if ((v22 & 1) == 0)
          {
LABEL_39:
            LODWORD(v22) = 0;
            goto LABEL_42;
          }
        }
      }

      else
      {
        LODWORD(test) = 0;
        if ((v22 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
      result = _UIBoundingPathBitmapDataRowHitTest(&v35, v24, v23);
      if ((result & 1) == 0)
      {
        v12 += v23 + ~(v12 + v26);
LABEL_41:
        --v23;
        LODWORD(v22) = result ^ 1 | v34;
        v24 = var0;
        goto LABEL_42;
      }

      v24 += v31;
      if (v24 > v33)
      {
        goto LABEL_41;
      }

      LODWORD(v22) = 1;
LABEL_42:
      if (((test | v22) & 1) == 0)
      {
        goto LABEL_46;
      }
    }
  }

  v11 = retstr->var1.var0;
  v12 = retstr->var1.var1;
  v13 = retstr->var0.var1;
  while (v12 >= 1)
  {
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v14 = _UIBoundingPathBitmapDataRowHitTest(&v35, var0, v13);
    v15 = v14;
    v16 = ((v14 & 1) == 0) + v13;
    v17 = *&v14 | 0xFFFFFFFFFFFFFFFELL;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    result = _UIBoundingPathBitmapDataRowHitTest(&v35, v11 + var0, v16);
    v13 = !(result & 1) + v16;
    v12 += v17 + (result & 1);
    if (v12 < 1)
    {
      break;
    }

    v18 = result & v15;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    v19 = _UIBoundingPathBitmapDataRowHitTest(&v35, var0, v13 + v12);
    v20 = v19;
    v21 = (*&v19 | 0xFFFFFFFFFFFFFFFELL) + v12;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    result = _UIBoundingPathBitmapDataRowHitTest(&v35, v11 + var0, v21 + 1 + v13);
    if (result)
    {
      v12 = v21 + 1;
    }

    else
    {
      v12 = v21;
    }

    if ((result & v20 | v18))
    {
      goto LABEL_14;
    }
  }

  retstr->var1.var1 = v12;
  retstr->var0.var1 = v13;
  return result;
}

- (CGRect)_inscribedRectInBoundingPathAndRect:(CGRect)rect byInsettingRect:(CGRect)insettingRect onEdges:(unint64_t)edges withOptions:(unint64_t)options
{
  optionsCopy = options;
  y = insettingRect.origin.y;
  height = insettingRect.size.height;
  x = insettingRect.origin.x;
  width = insettingRect.size.width;
  r1 = rect.size.height;
  v8 = rect.size.width;
  v9 = rect.origin.y;
  v10 = rect.origin.x;
  coordinateSpace = [(_UIBoundingPath *)self coordinateSpace];
  if (!coordinateSpace)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIComplexBoundingPath.m" lineNumber:424 description:@"The bounding path's coordinate space cannot be nil"];
  }

  [coordinateSpace bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  scale = self->_scale;
  orientation = self->_orientation;
  bitmap = self->_bitmap;
  v57 = scale;
  if (bitmap)
  {
    [(_UIBoundingPathBitmap *)bitmap bitmapData];
    v25 = self->_bitmap;
    v58 = v72 / scale;
    if (v25)
    {
      [(_UIBoundingPathBitmap *)v25 bitmapData];
      v26 = *(&v68 + 1);
      goto LABEL_8;
    }
  }

  else
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v58 = 0.0 / scale;
  }

  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  v26 = 0.0;
LABEL_8:
  v76.origin.x = v10;
  v76.origin.y = v9;
  v76.size.width = v8;
  v76.size.height = r1;
  v87.origin.x = v15;
  v87.origin.y = v17;
  v87.size.width = v19;
  v87.size.height = v21;
  v77 = CGRectIntersection(v76, v87);
  [(_UIBoundingPath *)self _inscribedRectInBoundingRect:edges byInsettingRect:v77.origin.x onEdges:v77.origin.y, v77.size.width, v77.size.height, x, y, width, height];
  v27 = v78.origin.x;
  v28 = v78.origin.y;
  v29 = v78.size.width;
  v30 = v78.size.height;
  if (CGRectIsNull(v78) || v29 <= 0.0 || v30 <= 0.0 || ((v31 = v26 / v57, v32 = _UIWindowConvertRectFromOrientationToOrientation(orientation, 1, v27, v28, v29, v30, v58, v31), v34 = v33, v36 = v35, v38 = v37, v39 = _UIRectEdgeConvertedFromOrientationToPortrait(edges, orientation), CGAffineTransformMakeScale(&v67, v57, v57), v79.origin.x = v32, v79.origin.y = v34, v79.size.width = v36, v79.size.height = v38, v80 = CGRectApplyAffineTransform(v79, &v67), v81 = CGRectIntegral(v80), v81.size.width >= 1) ? (v40 = v81.size.height <= 0) : (v40 = 1), v40 || (*&v64 = v81.origin.x, *(&v64 + 1) = v81.origin.y, *&c = v81.size.width, *&d = v81.size.height, [(_UIComplexBoundingPath *)self _rectByHorizontallyInsettingPortraitPixelRect:&v64 onPortraitEdges:v39 performCompleteTest:(optionsCopy & 1) == 0, v81.origin.x, v81.origin.y], *&v67.c < 1 || *&v67.d <= 0 || (v64 = *&v67.a, c = v67.c, d = v67.d, [(_UIComplexBoundingPath *)self _rectByVerticallyInsettingPortraitPixelRect:&v64 onPortraitEdges:v39 performCompleteTest:(optionsCopy & 1) == 0], *&v67.c < 1) || *&v67.d <= 0)))
  {
    v41 = *MEMORY[0x1E695F050];
    v42 = *(MEMORY[0x1E695F050] + 8);
    v43 = *(MEMORY[0x1E695F050] + 16);
    v44 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v49 = *&v67.a;
    v50 = *&v67.b;
    v51 = *&v67.c;
    v52 = *&v67.d;
    CGAffineTransformMakeScale(&v67, 1.0 / v57, 1.0 / v57);
    v82.origin.x = v49;
    v82.origin.y = v50;
    v82.size.width = v51;
    v82.size.height = v52;
    v83 = CGRectApplyAffineTransform(v82, &v67);
    v88.origin.x = _UIWindowConvertRectFromOrientationToOrientation(1, orientation, v83.origin.x, v83.origin.y, v83.size.width, v83.size.height, v58, v31);
    v88.origin.y = v53;
    v88.size.width = v54;
    v88.size.height = v55;
    v84.origin.x = x;
    v84.size.width = width;
    v84.origin.y = y;
    v84.size.height = height;
    v85 = CGRectIntersection(v84, v88);
    v41 = v85.origin.x;
    v42 = v85.origin.y;
    v43 = v85.size.width;
    v44 = v85.size.height;
  }

  v45 = v41;
  v46 = v42;
  v47 = v43;
  v48 = v44;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (CGRect)_largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect:(CGRect)rect portraitAspectRatio:(double)ratio
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  bitmap = self->_bitmap;
  if (bitmap)
  {
    [(_UIBoundingPathBitmap *)bitmap bitmapData];
  }

  if (ratio <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIComplexBoundingPath.m" lineNumber:538 description:@"Invalid aspect ratio."];
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x4010000000;
  v60 = "";
  v61 = x;
  v62 = y;
  v63 = width;
  v64 = height;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x4010000000;
  v54[3] = "";
  v55 = 0u;
  v56 = 0u;
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  v70 = CGRectIntegral(v69);
  *&v55 = v70.origin.x;
  *(&v55 + 1) = v70.origin.y;
  *&v56 = v70.size.width;
  *(&v56 + 1) = v70.size.height;
  v47[0] = MEMORY[0x1E69E9820];
  if (ratio >= 1.0)
  {
    v12 = 1.0 / ratio;
  }

  else
  {
    v12 = 1.0;
  }

  v47[1] = 3221225472;
  v48 = __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke;
  v49 = &unk_1E710C3E8;
  v52 = fmin(ratio, 1.0);
  v53 = v12;
  v50 = &v57;
  v51 = v54;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke_2;
  v42[3] = &unk_1E710C410;
  v45 = v67;
  v44 = v66;
  v43 = v65;
  v46 = v68;
  v42[4] = v54;
  __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke(v47, v42);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v38 = v65;
  v37[2] = __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke_3;
  v37[3] = &unk_1E710C410;
  v39 = v66;
  v40 = v67;
  v41 = v68;
  v37[4] = v54;
  v48(v47, v37);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = v65;
  v32[2] = __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke_4;
  v32[3] = &unk_1E710C410;
  v34 = v66;
  v35 = v67;
  v36 = v68;
  v32[4] = v54;
  v48(v47, v32);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v28 = v65;
  v27[2] = __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke_5;
  v27[3] = &unk_1E710C410;
  v29 = v66;
  v30 = v67;
  v31 = v68;
  v27[4] = v54;
  v48(v47, v27);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v23 = v65;
  v22[2] = __116___UIComplexBoundingPath__largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect_portraitAspectRatio___block_invoke_6;
  v22[3] = &unk_1E710C410;
  v24 = v66;
  v25 = v67;
  v26 = v68;
  v22[4] = v54;
  v48(v47, v22);
  v13 = v58[4];
  v14 = v58[5];
  v15 = v58[6];
  v16 = v58[7];
  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&v57, 8);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_largestInscribedRectInBoundingPathAndRect:(CGRect)rect withCenter:(CGPoint)center aspectRatio:(double)ratio
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinateSpace = [(_UIBoundingPath *)self coordinateSpace];
  if (!coordinateSpace)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIComplexBoundingPath.m" lineNumber:586 description:@"The bounding path's coordinate space cannot be nil"];
  }

  [coordinateSpace bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  scale = self->_scale;
  orientation = self->_orientation;
  bitmap = self->_bitmap;
  if (!bitmap)
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v57 = 0.0 / scale;
    goto LABEL_7;
  }

  [(_UIBoundingPathBitmap *)bitmap bitmapData];
  v21 = self->_bitmap;
  v57 = v67 / scale;
  if (!v21)
  {
LABEL_7:
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v22 = 0.0;
    goto LABEL_8;
  }

  [(_UIBoundingPathBitmap *)v21 bitmapData];
  v22 = *(&v63 + 1);
LABEL_8:
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v79.origin.x = v11;
  v79.origin.y = v13;
  v79.size.width = v15;
  v79.size.height = v17;
  v72 = CGRectIntersection(v71, v79);
  [(_UIBoundingPath *)self _largestInscribedRectInBoundingRect:v72.origin.x withCenter:v72.origin.y aspectRatio:v72.size.width, v72.size.height, center.x, center.y, ratio];
  v23 = v73.origin.x;
  v24 = v73.origin.y;
  v25 = v73.size.width;
  v26 = v73.size.height;
  if (CGRectIsNull(v73) || v25 <= 0.0 || v26 <= 0.0 || (v27 = v22 / scale, v28 = _UIWindowConvertRectFromOrientationToOrientation(orientation, 1, v23, v24, v25, v26, v57, v22 / scale), v30 = v29, v32 = v31, v34 = v33, _UIAspectRatioConvertedFromOrientationToPortrait(ratio), v36 = v35, CGAffineTransformMakeScale(&v62, scale, scale), v74.origin.x = v28, v74.origin.y = v30, v74.size.width = v32, v74.size.height = v34, v75 = CGRectApplyAffineTransform(v74, &v62), [(_UIComplexBoundingPath *)self _largestInscribedPortraitPixelRectInBoundingPathWithPortraitPixelRect:v75.origin.x portraitAspectRatio:v75.origin.y, v75.size.width, v75.size.height, v36], v39 <= 0.0) || (v41 = v40, v40 <= 0.0))
  {
    v45 = *MEMORY[0x1E695F050];
    v47 = *(MEMORY[0x1E695F050] + 8);
    v49 = *(MEMORY[0x1E695F050] + 16);
    v51 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v42 = v37;
    v43 = v38;
    v44 = v39;
    CGAffineTransformMakeScale(&v62, 1.0 / scale, 1.0 / scale);
    v76.origin.x = v42;
    v76.origin.y = v43;
    v76.size.width = v44;
    v76.size.height = v41;
    v77 = CGRectApplyAffineTransform(v76, &v62);
    v45 = _UIWindowConvertRectFromOrientationToOrientation(1, orientation, v77.origin.x, v77.origin.y, v77.size.width, v77.size.height, v57, v27);
    v47 = v46;
    v49 = v48;
    v51 = v50;
  }

  v52 = v45;
  v53 = v47;
  v54 = v49;
  v55 = v51;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (CGRect)_portaitPixelRectWithPixelMinimumPaddingFromBoundingPath:(double)path inPortaitCorner:(unint64_t)corner fromPortraitPixelRect:(CGRect)rect withPortraitPixelCornerRadii:(_UIIntegralCornerRadii *)radii
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  bitmap = self->_bitmap;
  if (bitmap)
  {
    [(_UIBoundingPathBitmap *)bitmap bitmapData];
  }

  v13 = _UIDirectionVectorForCorner(corner);
  v15 = v14;
  v71 = y;
  v16 = x;
  while (1)
  {
    v76 = v80;
    v77 = v81;
    v78 = v82;
    v79 = v83;
    v17 = *&radii->var2;
    v74 = *&radii->var0;
    v75 = v17;
    if (isRectInBoundingPathCornerWithMinimumPadding(&v76, &v74, corner, v16, y, width, height, path))
    {
      break;
    }

    v84.size.width = v80;
    v84.size.height = *(&v80 + 1);
    v84.origin.x = 0.0;
    v84.origin.y = 0.0;
    v85 = CGRectInset(v84, -0.01, -0.01);
    v87.origin.x = v16;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    if (!CGRectContainsRect(v85, v87))
    {
      v18 = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_68;
    }

    v16 = v13 + v16;
    y = v15 + y;
  }

  v18 = v16;
  v19 = corner - 1;
  if (corner - 1 < 8 && ((0x8Bu >> v19) & 1) != 0)
  {
    v20 = dbl_18A67CD50[v19];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGFloat cornerAngleForCorner(UIRectCorner)"];
    [currentHandler handleFailureInFunction:v22 file:@"_UIComplexBoundingPath.m" lineNumber:825 description:{@"Invalid UIRectCorner value (%ld)", corner}];

    v20 = 0.0;
  }

  v23 = pointOnRectClosestToCorner(corner, x, v71, width, height);
  v25 = v24;
  v26 = pointOnRectClosestToCorner(corner, v18, y, width, height);
  v70 = v25;
  v72 = v23;
  v28 = sqrt((v26 - v23) * (v26 - v23) + (v27 - v25) * (v27 - v25));
  if (v28 > 1.41421356)
  {
    v68 = width;
    v69 = height;
    v29 = v20 + -0.785398163;
    v30 = v20 + 0.785398163;
    v31 = 0.5;
    v63 = v20 + -0.785398163;
    v62 = v20 + 0.785398163;
    while (1)
    {
      v67 = y;
      v32 = v28 + -1.41421356;
      v33 = 1.57079633 / ceil((v28 + -1.41421356) * 1.57079633 * v31);
      if (v29 >= v20 + -0.785398163)
      {
        v34 = v29;
      }

      else
      {
        v34 = v20 + -0.785398163;
      }

      if (v30 >= v20 + 0.785398163)
      {
        v35 = v20 + 0.785398163;
      }

      else
      {
        v35 = v30;
      }

      v36 = v20 + v33;
      v37 = v20 + v33 <= v35;
      v38 = v20 >= v34;
      if (v20 < v34 && v36 > v35)
      {
        y = v67;
        goto LABEL_63;
      }

      v64 = v28;
      v65 = v20;
      v39 = v67;
      v66 = v18;
      while (1)
      {
        if (!v38)
        {
          goto LABEL_39;
        }

        v40 = __sincos_stret(v20);
        v41 = llround(v72 + v32 * v40.__cosval);
        v42 = llround(v70 + v32 * v40.__sinval);
        if (corner > 3)
        {
          if (corner == 4)
          {
            v18 = v41;
            v44 = v69;
            v39 = v42 - v69;
            goto LABEL_36;
          }

          if (corner != 8)
          {
LABEL_32:
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect testRectForPointOnArcInCorner(CGRect, _UIIntegralPoint, UIRectCorner)"}];
            [currentHandler2 handleFailureInFunction:v46 file:@"_UIComplexBoundingPath.m" lineNumber:865 description:{@"Invalid UIRectCorner value (%ld)", corner}];

            goto LABEL_34;
          }

          v43 = v68;
          v44 = v69;
          v18 = v41 - v68;
          v39 = v42 - v69;
        }

        else
        {
          if (corner == 1)
          {
            v18 = v41;
            v39 = v42;
LABEL_34:
            v44 = v69;
LABEL_36:
            v43 = v68;
            goto LABEL_37;
          }

          if (corner != 2)
          {
            goto LABEL_32;
          }

          v43 = v68;
          v44 = v69;
          v18 = v41 - v68;
          v39 = v42;
        }

LABEL_37:
        v76 = v80;
        v77 = v81;
        v78 = v82;
        v79 = v83;
        v47 = *&radii->var2;
        v74 = *&radii->var0;
        v75 = v47;
        if (isRectInBoundingPathCornerWithMinimumPadding(&v76, &v74, corner, v18, v39, v43, v44, path))
        {
          goto LABEL_61;
        }

        v20 = v20 - v33;
LABEL_39:
        if (v37)
        {
          break;
        }

LABEL_54:
        v37 = v36 <= v35;
        v38 = v20 >= v34;
        if (v20 < v34 && v36 > v35)
        {
          v18 = v66;
          y = v67;
          v28 = v64;
          v20 = v65;
          goto LABEL_62;
        }
      }

      v48 = __sincos_stret(v36);
      v49 = llround(v72 + v32 * v48.__cosval);
      v50 = llround(v70 + v32 * v48.__sinval);
      if (corner > 3)
      {
        if (corner == 4)
        {
          v18 = v49;
          v52 = v69;
          v39 = v50 - v69;
          goto LABEL_51;
        }

        if (corner != 8)
        {
          goto LABEL_47;
        }

        v51 = v68;
        v52 = v69;
        v18 = v49 - v68;
        v39 = v50 - v69;
      }

      else
      {
        if (corner == 1)
        {
          v18 = v49;
          v39 = v50;
        }

        else
        {
          if (corner == 2)
          {
            v51 = v68;
            v52 = v69;
            v18 = v49 - v68;
            v39 = v50;
            goto LABEL_52;
          }

LABEL_47:
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGRect testRectForPointOnArcInCorner(CGRect, _UIIntegralPoint, UIRectCorner)"}];
          [currentHandler3 handleFailureInFunction:v54 file:@"_UIComplexBoundingPath.m" lineNumber:865 description:{@"Invalid UIRectCorner value (%ld)", corner}];
        }

        v52 = v69;
LABEL_51:
        v51 = v68;
      }

LABEL_52:
      v76 = v80;
      v77 = v81;
      v78 = v82;
      v79 = v83;
      v55 = *&radii->var2;
      v74 = *&radii->var0;
      v75 = v55;
      if ((isRectInBoundingPathCornerWithMinimumPadding(&v76, &v74, corner, v18, v39, v51, v52, path) & 1) == 0)
      {
        v36 = v33 + v36;
        goto LABEL_54;
      }

      v20 = v36;
LABEL_61:
      y = v39;
      v28 = v32;
LABEL_62:
      v29 = v63;
      v30 = v62;
      v31 = 0.5;
LABEL_63:
      if (v28 <= 1.41421356 || v28 != v32)
      {
        width = v68;
        height = v69;
        break;
      }
    }
  }

LABEL_68:
  v58 = v18;
  v59 = y;
  v60 = width;
  v61 = height;
  result.size.height = v61;
  result.size.width = v60;
  result.origin.y = v59;
  result.origin.x = v58;
  return result;
}

- (CGRect)_rectTuckedInCorner:(unint64_t)corner ofBoundingPathAndRect:(CGRect)rect withSize:(CGSize)size cornerRadii:(UIRectCornerRadii)radii minimumPadding:(double)padding
{
  width = rect.size.width;
  r1 = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinateSpace = [(_UIBoundingPath *)self coordinateSpace];
  if (!coordinateSpace)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIComplexBoundingPath.m" lineNumber:959 description:@"The bounding path's coordinate space cannot be nil"];
  }

  [coordinateSpace bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  scale = self->_scale;
  orientation = self->_orientation;
  bitmap = self->_bitmap;
  if (bitmap)
  {
    [(_UIBoundingPathBitmap *)bitmap bitmapData];
    v23 = self->_bitmap;
    v60 = v71 / scale;
    if (v23)
    {
      [(_UIBoundingPathBitmap *)v23 bitmapData];
      v24 = *(&v67 + 1);
      goto LABEL_8;
    }
  }

  else
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v60 = 0.0 / scale;
  }

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v24 = 0.0;
LABEL_8:
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = r1;
  v84.origin.x = v13;
  v84.origin.y = v15;
  v84.size.width = v17;
  v84.size.height = v19;
  v76 = CGRectIntersection(v75, v84);
  [(_UIBoundingPath *)self _rectTuckedInCorner:corner ofBoundingRect:v76.origin.x withSize:v76.origin.y minimumPadding:v76.size.width, v76.size.height, size.width, size.height, padding];
  v25 = v77.origin.x;
  v26 = v77.origin.y;
  v27 = v77.size.width;
  height = v77.size.height;
  if (CGRectIsNull(v77))
  {
    goto LABEL_17;
  }

  v29 = v24 / scale;
  v30 = _UIWindowConvertRectFromOrientationToOrientation(orientation, 1, v25, v26, v27, height, v60, v29);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = _UIRectCornerConvertedFromOrientationToPortrait(corner, orientation);
  CGAffineTransformMakeScale(&v66, scale, scale);
  v78.origin.x = v30;
  v78.origin.y = v32;
  v78.size.width = v34;
  v78.size.height = v36;
  v79 = CGRectApplyAffineTransform(v78, &v66);
  *&v38 = (radii.topLeft * scale);
  *&v39 = (radii.bottomLeft * scale);
  v40 = (radii.bottomRight * scale);
  v41 = (radii.topRight * scale);
  if (orientation == 2)
  {
    v42 = (radii.topLeft * scale);
    v43 = (radii.topRight * scale);
    v41 = (radii.bottomRight * scale);
    v40 = (radii.bottomLeft * scale);
    goto LABEL_15;
  }

  if (orientation == 3)
  {
    v42 = (radii.topRight * scale);
    v43 = (radii.bottomRight * scale);
    v41 = (radii.bottomLeft * scale);
    v40 = (radii.topLeft * scale);
    goto LABEL_15;
  }

  v42 = (radii.bottomLeft * scale);
  v43 = (radii.topLeft * scale);
  if (orientation == 4)
  {
LABEL_15:
    v38 = *&v41;
    v41 = v40;
    v40 = v42;
    v39 = *&v43;
  }

  v66.a = v38;
  v66.b = v39;
  *&v66.c = v40;
  *&v66.d = v41;
  [(_UIComplexBoundingPath *)self _portaitPixelRectWithPixelMinimumPaddingFromBoundingPath:v37 inPortaitCorner:&v66 fromPortraitPixelRect:scale * padding withPortraitPixelCornerRadii:v79.origin.x, v79.origin.y, v79.size.width, v79.size.height, *&v60];
  v44 = v80.origin.x;
  v45 = v80.origin.y;
  v46 = v80.size.width;
  v47 = v80.size.height;
  if (!CGRectIsNull(v80))
  {
    CGAffineTransformMakeScale(&v66, 1.0 / scale, 1.0 / scale);
    v81.origin.x = v44;
    v81.origin.y = v45;
    v81.size.width = v46;
    v81.size.height = v47;
    v82 = CGRectApplyAffineTransform(v81, &v66);
    v48 = _UIWindowConvertRectFromOrientationToOrientation(1, orientation, v82.origin.x, v82.origin.y, v82.size.width, v82.size.height, v61, v29);
    v49 = v52;
    v50 = v53;
    v51 = v54;
    goto LABEL_19;
  }

LABEL_17:
  v48 = *MEMORY[0x1E695F050];
  v49 = *(MEMORY[0x1E695F050] + 8);
  v50 = *(MEMORY[0x1E695F050] + 16);
  v51 = *(MEMORY[0x1E695F050] + 24);
LABEL_19:

  v55 = v48;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (CGRect)_portaitPixelRectWithPixelMinimumPaddingFromBoundingPath:(double)path againstPortraitEdge:(unint64_t)edge fromPortraitPixelRect:(CGRect)rect withPortraitPixelCornerRadii:(_UIIntegralCornerRadii *)radii
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bitmap = self->_bitmap;
  if (bitmap)
  {
    [(_UIBoundingPathBitmap *)bitmap bitmapData];
  }

  if (edge == 8 || edge == 2)
  {
    v142.origin.x = x;
    v142.origin.y = y;
    v142.size.width = width;
    v142.size.height = height;
    v14 = CGRectGetHeight(v142) * 0.333333333;
    v143.origin.x = x;
    v143.origin.y = y;
    v143.size.width = width;
    v143.size.height = height;
    v144 = CGRectInset(v143, 0.0, v14);
    v145 = CGRectIntegral(v144);
    v15 = v145.origin.x;
    v16 = v145.origin.y;
    v17 = v145.size.width;
    v18 = v145.size.height + v145.origin.y;
    v19 = v18;
    v20 = v145.origin.y;
    while (1)
    {
      x = v15;
      if (v20 > v19)
      {
        break;
      }

      v21 = (v15 + v17) + path;
      if (edge == 2)
      {
        v21 = x - path;
      }

      v22 = v21;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0;
      if (_UIBoundingPathBitmapDataRowHitTest(&v138, v21, v20))
      {
        ++v20;
      }

      else if (edge == 2)
      {
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0;
        _UIBoundingPathBitmapDataRowHitTest(&v138, v22, v20);
        v15 += v23;
      }

      else
      {
        v15 = (x + -1.0);
      }

      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0;
      v24 = _UIBoundingPathBitmapDataRowHitTest(&v138, v22, v19);
      v26 = (v15 + -1.0);
      if (edge == 2)
      {
        v26 = v25 + v15;
      }

      if (v24)
      {
        v19 = (v19 + -1.0);
      }

      else
      {
        v15 = v26;
      }

      if (v15 < 0 || v16 < 0 || v15 + v17 || v18)
      {
        goto LABEL_189;
      }
    }
  }

  else
  {
    v146.origin.x = x;
    v146.origin.y = y;
    v146.size.width = width;
    v146.size.height = height;
    v27 = CGRectGetWidth(v146) * 0.333333333;
    v147.origin.x = x;
    v147.origin.y = y;
    v147.size.width = width;
    v147.size.height = height;
    v148 = CGRectInset(v147, v27, 0.0);
    v149 = CGRectIntegral(v148);
    v28 = v149.origin.x;
    v29 = v149.origin.y;
    v30 = v149.size.height;
    v31 = v149.size.width + v149.origin.x;
    v32 = v149.origin.x;
    v33 = v31;
    while (1)
    {
      y = v29;
      if (v32 > v33)
      {
        break;
      }

      v34 = (v29 + v30) + path;
      if (edge == 1)
      {
        v34 = y - path;
      }

      v35 = v34;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0;
      if (_UIBoundingPathBitmapDataRowHitTest(&v138, v32, v34))
      {
        v32 += v36;
      }

      else if (edge == 1)
      {
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0;
        _UIBoundingPathBitmapDataRowHitTest(&v138, v32, v35);
        ++v29;
      }

      else
      {
        v29 = (y + -1.0);
      }

      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0;
      v37 = _UIBoundingPathBitmapDataRowHitTest(&v138, v33, v35);
      v38 = (v29 + -1.0);
      if (edge == 1)
      {
        v38 = v29 + 1;
      }

      if (v37)
      {
        v33 = (v33 + -1.0);
      }

      else
      {
        v29 = v38;
      }

      if (v28 < 0 || v29 < 0 || v31 || v29 + v30)
      {
        goto LABEL_189;
      }
    }
  }

  v39 = 1.0;
  v40 = fmin(path * 0.2 + 1.0, 5.0);
  v41 = v40 + v40;
  v42 = y - v40;
  v43 = v40 + y;
  v44 = height - (v40 + v40);
  if (height > v40 + v40)
  {
    v45 = height - (v40 + v40);
  }

  else
  {
    v45 = height;
  }

  if (height > v40 + v40)
  {
    v42 = v40 + y;
  }

  v46 = x - v40;
  v120 = v40 + v40;
  v121 = v40;
  v47 = v40 + x;
  v48 = width - v41;
  if (width > v41)
  {
    v49 = width - v41;
  }

  else
  {
    v49 = width;
  }

  if (width > v41)
  {
    v46 = v47;
  }

  if (edge != 8)
  {
    v49 = width;
    v46 = x;
  }

  if (edge == 4)
  {
    v49 = width;
  }

  else
  {
    v45 = height;
  }

  if (edge == 4)
  {
    v46 = x;
  }

  else
  {
    v42 = y;
  }

  if (height <= v41)
  {
    v44 = height;
  }

  if (width <= v41)
  {
    v48 = width;
  }

  if (edge != 2)
  {
    v48 = width;
    v47 = x;
  }

  v118 = height;
  v119 = width;
  if (edge == 1)
  {
    v48 = width;
  }

  else
  {
    v44 = height;
  }

  if (edge == 1)
  {
    v47 = x;
  }

  else
  {
    v43 = y;
  }

  if (edge <= 3)
  {
    v50 = v44;
  }

  else
  {
    v50 = v45;
  }

  if (edge <= 3)
  {
    v51 = v48;
  }

  else
  {
    v51 = v49;
  }

  if (edge <= 3)
  {
    v52 = v43;
  }

  else
  {
    v52 = v42;
  }

  if (edge <= 3)
  {
    v46 = v47;
  }

  var0 = radii->var0;
  v53 = var0 + path;
  var1 = radii->var1;
  v54 = var1 + path;
  var2 = radii->var2;
  v55 = var2 + path;
  v56 = (var0 + path) * 1.57079633 + (var1 + path) * 1.57079633 + (var2 + path) * 1.57079633;
  pathCopy = path;
  var3 = radii->var3;
  v57 = var3 + path;
  v58 = ceil((v56 + v57 * 1.57079633) * 0.5);
  if (v58 < 8.0)
  {
    v58 = 8.0;
  }

  v59 = edge == 8 || edge == 2;
  v60 = vcvtd_n_f64_u64(v58, 3uLL);
  v61 = vcvtpd_u64_f64(v60);
  if (v59)
  {
    v62 = 1.0;
  }

  else
  {
    v62 = 0.0;
  }

  if (edge != 4 && edge != 1)
  {
    v39 = 0.0;
  }

  v129 = v39;
  v130 = v62;
  if (v61)
  {
    v64 = 0;
    v125 = 0.785398163 / ceil(v60);
    while (v51 > 0.0 && v50 > 0.0)
    {
      v65 = 0;
      v134 = v46;
      v136 = v51;
      v137 = v50;
      v66 = v125 * v64;
      v128 = v46 + v51;
      v67 = v46 + v51 - var2;
      v131 = v52 + v50;
      v133 = v52;
      v68 = v52 + v50 - var2;
      v69 = 1;
      while (1)
      {
        v70 = v69;
        v71 = __sincos_stret(v66 + v65 * 0.785398163);
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0;
        v72 = _UIBoundingPathBitmapDataRowHitTest(&v138, llround(v67 + v55 * v71.__cosval), llround(v68 + v55 * v71.__sinval));
        if ((v72 & 1) == 0)
        {
          break;
        }

        v69 = 0;
        v65 = 1;
        if ((v70 & 1) == 0)
        {
          v65 = 2;
          goto LABEL_106;
        }
      }

      v136 = v136 - v129;
      v137 = v137 - v130;
LABEL_106:
      v73 = v72 ^ 1;
      while (1)
      {
        v74 = __sincos_stret(v66 + v65 * 0.785398163);
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0;
        if ((_UIBoundingPathBitmapDataRowHitTest(&v138, llround(v134 + var1 + v54 * v74.__cosval), llround(v131 - var1 + v54 * v74.__sinval)) & 1) == 0)
        {
          break;
        }

        if (++v65 == 4)
        {
          v76 = v133;
          v75 = v134;
          v132 = v134;
          goto LABEL_112;
        }
      }

      v75 = v134;
      v77 = v129 + v134;
      v51 = v136 - v129;
      v137 = v137 - v130;
      v76 = v133;
      if (v65 > 5)
      {
        v81 = v133;
        goto LABEL_118;
      }

      v132 = v129 + v134;
      v136 = v136 - v129;
      v73 = 1;
LABEL_112:
      v78 = v75 + var0;
      v79 = v76 + var0;
      while (1)
      {
        v80 = __sincos_stret(v66 + v65 * 0.785398163);
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0;
        if ((_UIBoundingPathBitmapDataRowHitTest(&v138, llround(v78 + v53 * v80.__cosval), llround(v79 + v53 * v80.__sinval)) & 1) == 0)
        {
          break;
        }

        if (++v65 == 6)
        {
          v76 = v133;
          v135 = v133;
          goto LABEL_120;
        }
      }

      v77 = v129 + v132;
      v51 = v136 - v129;
      v76 = v133;
      v81 = v130 + v133;
      v137 = v137 - v130;
LABEL_118:
      if (v65 > 7)
      {
        v50 = v137;
LABEL_127:
        v64 = 0;
      }

      else
      {
        v135 = v81;
        v136 = v51;
        v132 = v77;
        v73 = 1;
LABEL_120:
        v82 = v76 + var3;
        do
        {
          v83 = __sincos_stret(v66 + v65 * 0.785398163);
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v141 = 0;
          if ((_UIBoundingPathBitmapDataRowHitTest(&v138, llround(v128 - var3 + v57 * v83.__cosval), llround(v82 + v57 * v83.__sinval)) & 1) == 0)
          {
            v51 = v136 - v129;
            v81 = v130 + v135;
            v50 = v137 - v130;
            v77 = v132;
            goto LABEL_127;
          }

          ++v65;
        }

        while (v65 != 8);
        if (v73)
        {
          v51 = v136;
          v50 = v137;
          v77 = v132;
          v81 = v135;
          goto LABEL_127;
        }

        ++v64;
        v51 = v136;
        v50 = v137;
        v77 = v132;
        v81 = v135;
      }

      v46 = v77;
      v52 = v81;
      if (v64 >= v61)
      {
        goto LABEL_133;
      }
    }

    v77 = *MEMORY[0x1E695F050];
    v81 = *(MEMORY[0x1E695F050] + 8);
    v51 = *(MEMORY[0x1E695F050] + 16);
    v50 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v77 = v46;
    v81 = v52;
  }

LABEL_133:
  if (edge == 8 || edge == 2)
  {
    v84 = v81;
    v85 = v51;
    v86 = v77;
    v87 = v77 + v51;
    if (v50 <= 0.0)
    {
      v90 = v81;
      v88 = v50;
    }

    else
    {
      v88 = v50;
      v89 = v50;
      v90 = v81;
LABEL_137:
      if (v85 <= 0.0)
      {
        v90 = v84;
        v88 = v89;
      }

      else
      {
        v91 = llround(v86 + radii->var0);
        v92 = llround(v90 - pathCopy);
        v93 = llround(v87 - radii->var3);
        while (v91 <= v93)
        {
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v141 = 0;
          v94 = _UIBoundingPathBitmapDataRowHitTest(&v138, v91, v92);
          v91 += v95;
          if ((v94 & 1) == 0)
          {
            v90 = v90 + 1.0;
            v88 = v88 + -1.0;
            if (v88 > 0.0)
            {
              goto LABEL_137;
            }

            break;
          }
        }
      }
    }

    if (v88 <= 0.0)
    {
      goto LABEL_152;
    }

    v96 = v88;
LABEL_146:
    if (v85 <= 0.0)
    {
LABEL_152:
      v96 = v88;
    }

    else
    {
      v97 = llround(v86 + radii->var1);
      v98 = llround(v90 + v96 + pathCopy);
      v99 = llround(v87 - radii->var2);
      while (v97 <= v99)
      {
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0;
        v100 = _UIBoundingPathBitmapDataRowHitTest(&v138, v97, v98);
        v97 += v101;
        if ((v100 & 1) == 0)
        {
          v96 = v96 + -1.0;
          if (v96 > 0.0)
          {
            goto LABEL_146;
          }

          break;
        }
      }
    }

    v102 = v85;
  }

  else
  {
    v96 = v50;
    v90 = v81;
    v103 = v81 + v50;
    if (v51 <= 0.0)
    {
      v86 = v77;
    }

    else
    {
      v86 = v77;
      v104 = v51;
      v105 = v77;
LABEL_156:
      if (v96 <= 0.0)
      {
        v86 = v105;
        v51 = v104;
      }

      else
      {
        v106 = llround(v86 - pathCopy);
        v107 = llround(v90 + radii->var0);
        v108 = llround(v103 - radii->var1);
        while (v107 <= v108)
        {
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v141 = 0;
          v109 = _UIBoundingPathBitmapDataRowHitTest(&v138, v106, v107++);
          if ((v109 & 1) == 0)
          {
            v86 = v86 + 1.0;
            v51 = v51 + -1.0;
            if (v51 > 0.0)
            {
              goto LABEL_156;
            }

            break;
          }
        }
      }
    }

    if (v51 <= 0.0)
    {
      goto LABEL_171;
    }

    v102 = v51;
LABEL_165:
    if (v96 <= 0.0)
    {
LABEL_171:
      v102 = v51;
    }

    else
    {
      v110 = llround(v86 + v102 + pathCopy);
      v111 = llround(v90 + radii->var3);
      v112 = llround(v103 - radii->var2);
      while (v111 <= v112)
      {
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0;
        v113 = _UIBoundingPathBitmapDataRowHitTest(&v138, v110, v111++);
        if ((v113 & 1) == 0)
        {
          v102 = v102 + -1.0;
          if (v102 > 0.0)
          {
            goto LABEL_165;
          }

          break;
        }
      }
    }
  }

  if (edge > 3)
  {
    if (edge == 4)
    {
      if (v118 <= v120)
      {
        v90 = v121 + v90;
      }

      else
      {
        v90 = v90 - v121;
        v96 = v120 + v96;
      }
    }

    else if (edge == 8)
    {
      if (v119 <= v120)
      {
        v86 = v121 + v86;
      }

      else
      {
        v86 = v86 - v121;
        v102 = v120 + v102;
      }
    }
  }

  else if (edge == 1)
  {
    v90 = v90 - v121;
    if (v118 > v120)
    {
      v96 = v120 + v96;
    }
  }

  else if (edge == 2)
  {
    v86 = v86 - v121;
    if (v119 > v120)
    {
      v102 = v120 + v102;
    }
  }

  if (v102 <= 0.0 || v96 <= 0.0)
  {
LABEL_189:
    v86 = *MEMORY[0x1E695F050];
    v90 = *(MEMORY[0x1E695F050] + 8);
    v102 = *(MEMORY[0x1E695F050] + 16);
    v96 = *(MEMORY[0x1E695F050] + 24);
  }

  v114 = v86;
  v115 = v90;
  v116 = v102;
  v117 = v96;
  result.size.height = v117;
  result.size.width = v116;
  result.origin.y = v115;
  result.origin.x = v114;
  return result;
}

- (CGRect)_rectTuckedAgainstEdge:(unint64_t)edge ofBoundingPathAndRect:(CGRect)rect withSize:(double)size cornerRadii:(UIRectCornerRadii)radii minimumPadding:(double)padding
{
  r1 = rect.size.height;
  y = rect.origin.y;
  width = rect.size.width;
  x = rect.origin.x;
  coordinateSpace = [(_UIBoundingPath *)self coordinateSpace];
  if (!coordinateSpace)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIComplexBoundingPath.m" lineNumber:1331 description:@"The bounding path's coordinate space cannot be nil"];
  }

  [coordinateSpace bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  scale = self->_scale;
  orientation = self->_orientation;
  bitmap = self->_bitmap;
  if (bitmap)
  {
    [(_UIBoundingPathBitmap *)bitmap bitmapData];
    v23 = self->_bitmap;
    v60 = v70 / scale;
    if (v23)
    {
      [(_UIBoundingPathBitmap *)v23 bitmapData];
      v24 = *(&v66 + 1);
      goto LABEL_8;
    }
  }

  else
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    v60 = 0.0 / scale;
  }

  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  v24 = 0.0;
LABEL_8:
  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = r1;
  v83.origin.x = v13;
  v83.origin.y = v15;
  v83.size.width = v17;
  v83.size.height = v19;
  v75 = CGRectIntersection(v74, v83);
  [(_UIBoundingPath *)self _rectTuckedAgainstEdge:edge ofBoundingRect:v75.origin.x withSize:v75.origin.y minimumPadding:v75.size.width, v75.size.height, size, padding];
  v25 = v76.origin.x;
  v26 = v76.origin.y;
  v27 = v76.size.width;
  height = v76.size.height;
  if (CGRectIsNull(v76))
  {
    goto LABEL_17;
  }

  v29 = v24 / scale;
  v30 = _UIWindowConvertRectFromOrientationToOrientation(orientation, 1, v25, v26, v27, height, v60, v29);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = _UIRectEdgeConvertedFromOrientationToPortrait(edge, orientation);
  CGAffineTransformMakeScale(&v65, scale, scale);
  v77.origin.x = v30;
  v77.origin.y = v32;
  v77.size.width = v34;
  v77.size.height = v36;
  v78 = CGRectApplyAffineTransform(v77, &v65);
  *&v38 = (radii.topLeft * scale);
  *&v39 = (radii.bottomLeft * scale);
  v40 = (radii.bottomRight * scale);
  v41 = (radii.topRight * scale);
  if (orientation == 2)
  {
    v42 = (radii.topLeft * scale);
    v43 = (radii.topRight * scale);
    v41 = (radii.bottomRight * scale);
    v40 = (radii.bottomLeft * scale);
    goto LABEL_15;
  }

  if (orientation == 3)
  {
    v42 = (radii.topRight * scale);
    v43 = (radii.bottomRight * scale);
    v41 = (radii.bottomLeft * scale);
    v40 = (radii.topLeft * scale);
    goto LABEL_15;
  }

  v42 = (radii.bottomLeft * scale);
  v43 = (radii.topLeft * scale);
  if (orientation == 4)
  {
LABEL_15:
    v38 = *&v41;
    v41 = v40;
    v40 = v42;
    v39 = *&v43;
  }

  v65.a = v38;
  v65.b = v39;
  *&v65.c = v40;
  *&v65.d = v41;
  [(_UIComplexBoundingPath *)self _portaitPixelRectWithPixelMinimumPaddingFromBoundingPath:v37 againstPortraitEdge:&v65 fromPortraitPixelRect:scale * padding withPortraitPixelCornerRadii:v78.origin.x, v78.origin.y, v78.size.width, v78.size.height];
  v44 = v79.origin.x;
  v45 = v79.origin.y;
  v46 = v79.size.width;
  v47 = v79.size.height;
  if (!CGRectIsNull(v79))
  {
    CGAffineTransformMakeScale(&v65, 1.0 / scale, 1.0 / scale);
    v80.origin.x = v44;
    v80.origin.y = v45;
    v80.size.width = v46;
    v80.size.height = v47;
    v81 = CGRectApplyAffineTransform(v80, &v65);
    v48 = _UIWindowConvertRectFromOrientationToOrientation(1, orientation, v81.origin.x, v81.origin.y, v81.size.width, v81.size.height, v60, v29);
    v49 = v52;
    v50 = v53;
    v51 = v54;
    goto LABEL_19;
  }

LABEL_17:
  v48 = *MEMORY[0x1E695F050];
  v49 = *(MEMORY[0x1E695F050] + 8);
  v50 = *(MEMORY[0x1E695F050] + 16);
  v51 = *(MEMORY[0x1E695F050] + 24);
LABEL_19:

  v55 = v48;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (UIEdgeInsets)_centerEdgeInsetsOfBoundingPathAndRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = 1.0 / self->_scale;
  [(_UIComplexBoundingPath *)self _inscribedRectInBoundingPathAndRect:10 byInsettingRect:1 onEdges:x withOptions:rect.origin.y, width, rect.size.height, x, CGRectGetMidY(rect), width, v8];
  v9 = v32.origin.x;
  v10 = v32.origin.y;
  v11 = v32.size.width;
  rect = v32.size.height;
  if (CGRectIsNull(v32) || (v29 = v11, v30 = v10, v33.origin.x = x, v33.origin.y = y, v33.size.width = width, v33.size.height = height, [(_UIComplexBoundingPath *)self _inscribedRectInBoundingPathAndRect:5 byInsettingRect:1 onEdges:x withOptions:y, width, height, CGRectGetMidX(v33), y, v8, height], v12 = v34.origin.x, v13 = v34.origin.y, v28 = v34.size.width, v14 = v34.size.height, CGRectIsNull(v34)))
  {
    v15 = INFINITY;
    v16 = INFINITY;
    v17 = INFINITY;
    v18 = INFINITY;
  }

  else
  {
    v35.origin.x = v12;
    v35.origin.y = v13;
    v35.size.width = v28;
    v35.size.height = v14;
    v26 = v12;
    MinY = CGRectGetMinY(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v15 = MinY - CGRectGetMinY(v36);
    v37.origin.x = v9;
    v37.size.width = v29;
    v37.origin.y = v30;
    v37.size.height = rect;
    v27 = v9;
    MinX = CGRectGetMinX(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v16 = MinX - CGRectGetMinX(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    MaxY = CGRectGetMaxY(v39);
    v40.origin.x = v26;
    v40.origin.y = v13;
    v40.size.width = v28;
    v40.size.height = v14;
    v17 = MaxY - CGRectGetMaxY(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    MaxX = CGRectGetMaxX(v41);
    v42.origin.x = v27;
    v42.size.width = v29;
    v42.origin.y = v30;
    v42.size.height = rect;
    v18 = MaxX - CGRectGetMaxX(v42);
  }

  v22 = v15;
  v23 = v16;
  v24 = v17;
  result.right = v18;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  coordinateSpace = [(_UIBoundingPath *)self coordinateSpace];
  v6 = [UIApplication stringForInterfaceOrientation:self->_orientation];
  v7 = [v3 stringWithFormat:@"<%@: %p coordinateSpace=%@ orientation=%@; scale=%.1f; bitmap=%@>", v4, self, coordinateSpace, v6, *&self->_scale, self->_bitmap];;

  return v7;
}

- (id)_imageRepresentation
{
  _imageRepresentation = [(_UIBoundingPathBitmap *)self->_bitmap _imageRepresentation];
  scale = self->_scale;
  bitmap = self->_bitmap;
  if (bitmap)
  {
    [(_UIBoundingPathBitmap *)bitmap bitmapData];
    v6 = self->_bitmap;
    v7 = v28 / scale;
    if (v6)
    {
      [(_UIBoundingPathBitmap *)v6 bitmapData];
      v8 = *(&v24 + 1);
      goto LABEL_6;
    }
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v7 = 0.0 / scale;
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v8 = 0.0;
LABEL_6:
  v9 = v8 / scale;
  v10 = self->_orientation - 3;
  if (v10 >= 2)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8 / scale;
  }

  if (v10 >= 2)
  {
    v12 = v8 / scale;
  }

  else
  {
    v12 = v7;
  }

  v13 = objc_alloc_init(UIGraphicsImageRendererFormat);
  [(UIGraphicsImageRendererFormat *)v13 setScale:scale];
  [(UIGraphicsImageRendererFormat *)v13 setOpaque:1];
  [(UIGraphicsImageRendererFormat *)v13 setPreferredRange:2];
  v14 = [[UIGraphicsImageRenderer alloc] initWithSize:v13 format:v11, v12];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46___UIComplexBoundingPath__imageRepresentation__block_invoke;
  v18[3] = &unk_1E710C438;
  v20 = v11;
  v21 = v12;
  v22 = v7;
  v23 = v9;
  v18[4] = self;
  v19 = _imageRepresentation;
  v15 = _imageRepresentation;
  v16 = [(UIGraphicsImageRenderer *)v14 imageWithActions:v18];

  return v16;
}

@end