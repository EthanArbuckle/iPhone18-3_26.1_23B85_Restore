@interface _UIPickerViewStyle_iOS
- (BOOL)sizeIsValid:(CGSize)a3;
- (CATransform3D)perspectiveTransform;
- (CATransform3D)transformForCellAtY:(SEL)a3 inBounds:(double)a4 rowHeight:(CGRect)a5 selectionBarRect:(double)a6;
- (CGSize)defaultSizeForTraitCollection:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forTraitCollection:(id)a4;
- (double)_yForY:(double)a3 inBounds:(CGRect)a4 rowHeight:(double)a5;
- (double)_zForUnitY:(double)a3 inBounds:(CGRect)a4 rowHeight:(double)a5;
- (double)defaultRowHeightForSize:(CGSize)a3;
- (double)horizontalBiasForEndTablesWithColumnFrame:(CGRect)a3 tableFrame:(CGRect)a4;
- (double)horizontalPaddingForCenterHighlightView;
- (double)horizontalPaddingForContents;
- (id)createCenterHighlightView;
- (void)configureMaskGradientLayer:(id)a3;
@end

@implementation _UIPickerViewStyle_iOS

- (CGSize)defaultSizeForTraitCollection:(id)a3
{
  v3 = a3;
  if (!dyld_program_sdk_at_least())
  {
    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v5 = 0x4074000000000000;
    }

    else
    {
      v8 = [v3 verticalSizeClass];
      v9 = [objc_opt_self() mainScreen];
      v10 = v9;
      if (v8 == 1)
      {
        [v9 _boundsForInterfaceOrientation:4];
        v5 = v11;

        v4 = 162.0;
        goto LABEL_12;
      }

      [v9 _boundsForInterfaceOrientation:1];
      v5 = v12;
    }

    v4 = 216.0;
    goto LABEL_12;
  }

  if ([v3 verticalSizeClass] == 1)
  {
    v4 = 162.0;
  }

  else
  {
    v4 = 216.0;
  }

  v5 = 0x4074000000000000;
LABEL_12:

  v13 = *&v5;
  v14 = v4;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forTraitCollection:(id)a4
{
  height = a3.height;
  width = a3.width;
  [(_UIPickerViewStyle_iOS *)self defaultSizeForTraitCollection:a4];
  if (height != 0.0)
  {
    v7 = 216.0;
    if (height < 216.0)
    {
      v7 = dbl_18A67E3C0[height < 180.0];
    }
  }

  if (width != 0.0)
  {
    v6 = width;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (BOOL)sizeIsValid:(CGSize)a3
{
  height = a3.height;
  if (dyld_program_sdk_at_least())
  {
    return 1;
  }

  v5 = height == 216.0;
  if (height == 180.0)
  {
    v5 = 1;
  }

  return height == 162.0 || v5;
}

- (double)defaultRowHeightForSize:(CGSize)a3
{
  result = 32.0;
  if (a3.height < 216.0)
  {
    return 24.0;
  }

  return result;
}

- (CATransform3D)perspectiveTransform
{
  v3 = MEMORY[0x1E69792E8];
  v4 = *(MEMORY[0x1E69792E8] + 80);
  *&retstr->m31 = *(MEMORY[0x1E69792E8] + 64);
  *&retstr->m33 = v4;
  v5 = v3[7];
  *&retstr->m41 = v3[6];
  *&retstr->m43 = v5;
  v6 = v3[1];
  *&retstr->m11 = *v3;
  *&retstr->m13 = v6;
  v7 = v3[3];
  *&retstr->m21 = v3[2];
  *&retstr->m23 = v7;
  retstr->m34 = -0.00111111111;
  return self;
}

- (void)configureMaskGradientLayer:(id)a3
{
  v11[6] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [UIColor colorWithWhite:0.0 alpha:0.0];
  v5 = [v4 CGColor];

  v6 = [UIColor colorWithWhite:0.0 alpha:0.71];
  v7 = [v6 CGColor];

  v8 = [UIColor colorWithWhite:0.0 alpha:0.8];
  v9 = [v8 CGColor];

  v11[0] = v5;
  v11[1] = v7;
  v11[2] = v9;
  v11[3] = v9;
  v11[4] = v7;
  v11[5] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];
  [v3 setColors:v10];

  [v3 setLocations:&unk_1EFE2C178];
}

- (id)createCenterHighlightView
{
  v2 = objc_opt_new();
  v3 = +[UIColor quaternarySystemFillColor];
  [v2 setBackgroundColor:v3];

  v4 = _UISolariumEnabled();
  v5 = *MEMORY[0x1E6979E40];
  if (!v4)
  {
    v5 = 8.0;
  }

  [v2 _setContinuousCornerRadius:v5];

  return v2;
}

- (double)horizontalPaddingForCenterHighlightView
{
  v2 = dyld_program_sdk_at_least();
  result = 0.0;
  if (v2)
  {
    return 9.0;
  }

  return result;
}

- (double)horizontalPaddingForContents
{
  v2 = dyld_program_sdk_at_least();
  result = 0.0;
  if (v2)
  {
    return 9.0;
  }

  return result;
}

- (double)_zForUnitY:(double)a3 inBounds:(CGRect)a4 rowHeight:(double)a5
{
  height = a4.size.height;
  [(_UIPickerViewStyle_iOS *)self _viewYForUnitY:a3 inBounds:?];
  [_UIPickerViewStyle_iOS _rotationForCellCenterY:"_rotationForCellCenterY:inBounds:rowHeight:" inBounds:? rowHeight:?];
  *&v7 = v7;
  return height / 3.14159265 * 1.05 * cosf(*&v7) - height / 3.14159265 * 1.05;
}

- (double)_yForY:(double)a3 inBounds:(CGRect)a4 rowHeight:(double)a5
{
  height = a4.size.height;
  [(_UIPickerViewStyle_iOS *)self _rotationForCellCenterY:a3 inBounds:a4.origin.x rowHeight:a4.origin.y, a4.size.width, a4.size.height, a5];
  *&v6 = v6;
  return height / -3.14159265 * 1.05 * sinf(*&v6);
}

- (CATransform3D)transformForCellAtY:(SEL)a3 inBounds:(double)a4 rowHeight:(CGRect)a5 selectionBarRect:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = MEMORY[0x1E69792E8];
  v45 = *(MEMORY[0x1E69792E8] + 80);
  v46 = *(MEMORY[0x1E69792E8] + 64);
  *&retstr->m31 = v46;
  *&retstr->m33 = v45;
  v43 = v15[7];
  v44 = v15[6];
  *&retstr->m41 = v44;
  *&retstr->m43 = v43;
  v41 = v15[1];
  v42 = *v15;
  *&retstr->m11 = *v15;
  *&retstr->m13 = v41;
  v39 = v15[3];
  v40 = v15[2];
  *&retstr->m21 = v40;
  *&retstr->m23 = v39;
  memset(&v52, 0, sizeof(v52));
  [(_UIPickerViewStyle_iOS *)self _rotationForCellCenterY:a4 inBounds:a5.origin.x rowHeight:?];
  CATransform3DMakeRotation(&v52, v16, 1.0, 0.0, 0.0);
  memset(&v51, 0, sizeof(v51));
  [(_UIPickerViewStyle_iOS *)self _distanceToCenterForY:a4 inBounds:x, y, width, height];
  CATransform3DMakeTranslation(&v51, 0.0, v17, 0.0);
  memset(&v50, 0, sizeof(v50));
  [(_UIPickerViewStyle_iOS *)self _yForY:a4 inBounds:x rowHeight:y, width, height, a6];
  v19 = v18;
  [(_UIPickerViewStyle_iOS *)self _unitYForViewY:a4 inBounds:x, y, width, height];
  [_UIPickerViewStyle_iOS _zForUnitY:"_zForUnitY:inBounds:rowHeight:" inBounds:? rowHeight:?];
  CATransform3DMakeTranslation(&v50, 0.0, v19, v20);
  result = [(_UIPickerViewStyle_iOS *)self _distanceToCenterForY:a4 inBounds:x, y, width, height];
  if (fabs(v22) > a7.size.height * 0.5)
  {
    *&a.m31 = v46;
    *&a.m33 = v45;
    *&a.m41 = v44;
    *&a.m43 = v43;
    *&a.m11 = v42;
    *&a.m13 = v41;
    *&a.m21 = v40;
    *&a.m23 = v39;
    b = v52;
    CATransform3DConcat(retstr, &a, &b);
    v23 = *&retstr->m33;
    *&b.m31 = *&retstr->m31;
    *&b.m33 = v23;
    v24 = *&retstr->m43;
    *&b.m41 = *&retstr->m41;
    *&b.m43 = v24;
    v25 = *&retstr->m13;
    *&b.m11 = *&retstr->m11;
    *&b.m13 = v25;
    v26 = *&retstr->m23;
    *&b.m21 = *&retstr->m21;
    *&b.m23 = v26;
    v47 = v51;
    CATransform3DConcat(&a, &b, &v47);
    v27 = *&a.m33;
    *&retstr->m31 = *&a.m31;
    *&retstr->m33 = v27;
    v28 = *&a.m43;
    *&retstr->m41 = *&a.m41;
    *&retstr->m43 = v28;
    v29 = *&a.m13;
    *&retstr->m11 = *&a.m11;
    *&retstr->m13 = v29;
    v30 = *&a.m23;
    *&retstr->m21 = *&a.m21;
    *&retstr->m23 = v30;
    v31 = *&retstr->m33;
    *&b.m31 = *&retstr->m31;
    *&b.m33 = v31;
    v32 = *&retstr->m43;
    *&b.m41 = *&retstr->m41;
    *&b.m43 = v32;
    v33 = *&retstr->m13;
    *&b.m11 = *&retstr->m11;
    *&b.m13 = v33;
    v34 = *&retstr->m23;
    *&b.m21 = *&retstr->m21;
    *&b.m23 = v34;
    v47 = v50;
    result = CATransform3DConcat(&a, &b, &v47);
    v35 = *&a.m33;
    *&retstr->m31 = *&a.m31;
    *&retstr->m33 = v35;
    v36 = *&a.m43;
    *&retstr->m41 = *&a.m41;
    *&retstr->m43 = v36;
    v37 = *&a.m13;
    *&retstr->m11 = *&a.m11;
    *&retstr->m13 = v37;
    v38 = *&a.m23;
    *&retstr->m21 = *&a.m21;
    *&retstr->m23 = v38;
  }

  return result;
}

- (double)horizontalBiasForEndTablesWithColumnFrame:(CGRect)a3 tableFrame:(CGRect)a4
{
  width = a4.size.width;
  x = a4.origin.x;
  v6 = a3.size.width;
  MidX = CGRectGetMidX(a3);
  v8 = 0.0;
  if (floor(width) > ceil(v6 / 3.0))
  {
    return (x + width * 0.5 - MidX) / -10.0;
  }

  return v8;
}

@end