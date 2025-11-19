@interface UIPreviewParameters
- ($1AB5FA073B851C12C2339EC22442E995)_placeholderContentSize3D;
- (BOOL)isEqual:(id)a3;
- (UIBezierPath)effectiveShadowPath;
- (UIBezierPath)visiblePath;
- (UIColor)_effectiveBackgroundColor;
- (UIEdgeInsets)_textPathInsets;
- (UIPreviewParameters)init;
- (UIPreviewParameters)initWithTextLineRects:(NSArray *)textLineRects;
- (id)_initWithMode:(int64_t)a3 visiblePath:(id)a4 backgroundColor:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_setTextPathCornerRadius:(double)a3;
- (void)_setTextPathInsets:(UIEdgeInsets)a3;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
@end

@implementation UIPreviewParameters

- (UIPreviewParameters)init
{
  if (self)
  {
    v3 = _UIPreviewParametersDefaultBackgroundColor();
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v3;

    v5 = self;
  }

  return self;
}

- (UIBezierPath)effectiveShadowPath
{
  shadowPath = self->_shadowPath;
  if (!shadowPath)
  {
    shadowPath = self->_visiblePath;
  }

  return shadowPath;
}

- (UIColor)_effectiveBackgroundColor
{
  overrideBackgroundColor = self->_overrideBackgroundColor;
  if (!overrideBackgroundColor)
  {
    overrideBackgroundColor = self->_backgroundColor;
  }

  return overrideBackgroundColor;
}

- (UIBezierPath)visiblePath
{
  if (self->_previewMode == 1 && !self->_visiblePath)
  {
    v3 = _UIPreviewParametersGenerateTextPlatter(self->_textLineRects, self->_textPathInsets.top, self->_textPathInsets.left, self->_textPathInsets.bottom, self->_textPathInsets.right, self->_textPathCornerRadius);
    visiblePath = self->_visiblePath;
    self->_visiblePath = v3;
  }

  v5 = self->_visiblePath;

  return v5;
}

- (UIPreviewParameters)initWithTextLineRects:(NSArray *)textLineRects
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = textLineRects;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIPreviewParameters.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"textLineRects != nil"}];
  }

  objc_opt_class();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = [MEMORY[0x1E696AAA8] currentHandler];
          [v11 handleFailureInMethod:a2 object:self file:@"UIPreviewParameters.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"[supposedValue isKindOfClass:valueClass]"}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(UIPreviewParameters *)self init];
  if (v12)
  {
    v13 = [(NSArray *)v6 copy];
    v14 = v12->_textLineRects;
    v12->_textLineRects = v13;

    *&v12->_textPathInsets.top = _UIPreviewParametersTextMargins;
    *&v12->_textPathInsets.bottom = unk_18A679DC8;
    v12->_textPathCornerRadius = 13.0;
    v12->_previewMode = 1;
    v15 = v12;
  }

  return v12;
}

- (id)_initWithMode:(int64_t)a3 visiblePath:(id)a4 backgroundColor:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UIPreviewParameters *)self init];
  if (v10)
  {
    v11 = [v8 copy];
    visiblePath = v10->_visiblePath;
    v10->_visiblePath = v11;

    v13 = [v9 copy];
    backgroundColor = v10->_backgroundColor;
    v10->_backgroundColor = v13;

    v10->_previewMode = a3;
    v10->_isUsingCustomBackgroundColor = 1;
    v15 = v10;
  }

  return v10;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  v4 = backgroundColor;
  self->_isUsingCustomBackgroundColor = v4 != 0;
  v9 = v4;
  v5 = [(UIColor *)v4 copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = _UIPreviewParametersDefaultBackgroundColor();
  }

  v8 = self->_backgroundColor;
  self->_backgroundColor = v7;
}

- (void)_setTextPathInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_textPathInsets.top), vceqq_f64(v4, *&self->_textPathInsets.bottom)))) & 1) == 0)
  {
    self->_textPathInsets = a3;
    visiblePath = self->_visiblePath;
    self->_visiblePath = 0;
  }
}

- (void)_setTextPathCornerRadius:(double)a3
{
  if (self->_textPathCornerRadius != a3)
  {
    self->_textPathCornerRadius = a3;
    visiblePath = self->_visiblePath;
    self->_visiblePath = 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSArray *)self->_textLineRects copy];
  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  v7 = [(UIBezierPath *)self->_visiblePath copy];
  v8 = *(v4 + 6);
  *(v4 + 6) = v7;

  v9 = [(UIColor *)self->_backgroundColor copy];
  v10 = *(v4 + 8);
  *(v4 + 8) = v9;

  *(v4 + 9) = self->_previewMode;
  v4[17] = self->_appliesShadow;
  v4[18] = self->_hidesSourceViewDuringDropAnimation;
  v11 = *&self->_textPathInsets.top;
  *(v4 + 120) = *&self->_textPathInsets.bottom;
  *(v4 + 104) = v11;
  *(v4 + 3) = *&self->_textPathCornerRadius;
  v12 = [(UIBezierPath *)self->_shadowPath copy];
  v13 = *(v4 + 7);
  *(v4 + 7) = v12;

  v14 = *&self->_placeholderContentSize3D.width;
  *(v4 + 12) = *&self->_placeholderContentSize3D.depth;
  *(v4 + 5) = v14;
  v4[16] = self->_hiddenDuringDrag;
  objc_storeStrong(v4 + 4, self->_overrideBackgroundColor);
  objc_storeStrong(v4 + 5, self->_overrideCornerRadii);
  return v4;
}

- (unint64_t)hash
{
  v3 = [(UIPreviewParameters *)self visiblePath];
  v4 = [v3 hash];
  v5 = [(UIPreviewParameters *)self backgroundColor];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(UIPreviewParameters *)self _previewMode];
  v8 = v7 ^ [(UIPreviewParameters *)self appliesShadow];
  [(UIPreviewParameters *)self _textPathCornerRadius];
  v10 = v8 ^ v9;
  [(UIPreviewParameters *)self _textPathInsets];
  v12 = v11;
  [(UIPreviewParameters *)self _textPathInsets];
  v14 = v10 ^ v12 ^ v13;
  [(UIPreviewParameters *)self _textPathInsets];
  v16 = v15;
  [(UIPreviewParameters *)self _textPathInsets];
  v18 = v16 ^ v17;
  v19 = [(UIPreviewParameters *)self shadowPath];
  v20 = v14 ^ v18 ^ [v19 hash];
  [(UIPreviewParameters *)self _placeholderContentSize3D];
  v22 = v21;
  [(UIPreviewParameters *)self _placeholderContentSize3D];
  v24 = v22 ^ v23;
  [(UIPreviewParameters *)self _placeholderContentSize3D];
  v26 = v24 ^ [(UIPreviewParameters *)self _isHiddenDuringDrag]^ v25;

  return v20 ^ v26;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(UIPreviewParameters *)self visiblePath];
    v7 = [v5 visiblePath];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (v8 && v9)
      {
        v11 = [v8 isEqual:v9];
      }
    }

    v13 = [(UIPreviewParameters *)self backgroundColor];
    v14 = [v5 backgroundColor];
    v15 = v13;
    v16 = v14;
    v17 = v16;
    if (v15 == v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = 0;
      if (v15 && v16)
      {
        v18 = [v15 isEqual:v16];
      }
    }

    v19 = v11 & v18;
    v20 = [(UIPreviewParameters *)self _previewMode];
    if (v20 == [v5 _previewMode])
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = [(UIPreviewParameters *)self appliesShadow];
    v23 = v21 & ~(v22 ^ [v5 appliesShadow]);
    [(UIPreviewParameters *)self _textPathInsets];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [v5 _textPathInsets];
    v35 = v27 == v34;
    if (v25 != v36)
    {
      v35 = 0;
    }

    if (v31 != v33)
    {
      v35 = 0;
    }

    if (v29 != v32)
    {
      v35 = 0;
    }

    v37 = v23 & v35;
    [(UIPreviewParameters *)self _textPathCornerRadius];
    v39 = v38;
    [v5 _textPathCornerRadius];
    if (v39 == v40)
    {
      v41 = v37;
    }

    else
    {
      v41 = 0;
    }

    v42 = [(UIPreviewParameters *)self shadowPath];
    v43 = [v5 shadowPath];
    v44 = v42;
    v45 = v43;
    v46 = v45;
    if (v44 == v45)
    {
      v47 = 1;
    }

    else
    {
      v47 = 0;
      if (v44 && v45)
      {
        v47 = [v44 isEqual:v45];
      }
    }

    v48 = [(UIPreviewParameters *)self hidesSourceViewDuringDropAnimation];
    v49 = v41 & v47 & (v48 ^ [v5 hidesSourceViewDuringDropAnimation] ^ 1);
    [(UIPreviewParameters *)self _placeholderContentSize3D];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    [v5 _placeholderContentSize3D];
    v58 = 0;
    if (v51 == v59 && v53 == v56)
    {
      v58 = v55 == v57;
    }

    v60 = [(UIPreviewParameters *)self _isHiddenDuringDrag];
    v61 = v49 & v58 & (v60 ^ [v5 _isHiddenDuringDrag] ^ 1);
    v62 = [(UIPreviewParameters *)self _overrideBackgroundColor];
    v63 = [v5 backgroundColor];
    v64 = v62;
    v65 = v63;
    v66 = v65;
    if (v64 == v65)
    {
      v67 = 1;
    }

    else
    {
      v67 = 0;
      if (v64 && v65)
      {
        v67 = [v64 isEqual:v65];
      }
    }

    v68 = v61 & v67;
    v69 = [(UIPreviewParameters *)self _overrideCornerRadii];
    v70 = [v5 _overrideCornerRadii];
    v71 = v69;
    v72 = v70;
    v73 = v72;
    if (v71 == v72)
    {
      v74 = 1;
    }

    else
    {
      v74 = 0;
      if (v71 && v72)
      {
        v74 = [v71 isEqual:v72];
      }
    }

    v12 = v68 & v74;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [(UIPreviewParameters *)self backgroundColor];
  v6 = [v3 stringWithFormat:@"<%@: %p backgroundColor = %@", v4, self, v5];;

  v7 = [(UIPreviewParameters *)self visiblePath];

  if (v7)
  {
    v8 = [(UIPreviewParameters *)self visiblePath];
    [v6 appendFormat:@"; visiblePath = %@", v8];
  }

  v9 = [(UIPreviewParameters *)self shadowPath];

  if (v9)
  {
    v10 = [(UIPreviewParameters *)self shadowPath];
    [v6 appendFormat:@"; shadowPath = %@", v10];
  }

  [v6 appendString:@">"];

  return v6;
}

- (UIEdgeInsets)_textPathInsets
{
  top = self->_textPathInsets.top;
  left = self->_textPathInsets.left;
  bottom = self->_textPathInsets.bottom;
  right = self->_textPathInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)_placeholderContentSize3D
{
  width = self->_placeholderContentSize3D.width;
  height = self->_placeholderContentSize3D.height;
  depth = self->_placeholderContentSize3D.depth;
  result.var2 = depth;
  result.var1 = height;
  result.var0 = width;
  return result;
}

@end