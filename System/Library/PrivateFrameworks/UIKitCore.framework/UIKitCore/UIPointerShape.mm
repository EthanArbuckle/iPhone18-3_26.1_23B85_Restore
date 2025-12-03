@interface UIPointerShape
+ (UIPointerShape)beamWithPreferredLength:(CGFloat)length axis:(UIAxis)axis;
+ (UIPointerShape)shapeWithPath:(UIBezierPath *)path;
+ (UIPointerShape)shapeWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius;
+ (id)_elasticRectShapePinnedAtPoint:(CGPoint)point;
+ (id)_linkPointerShape;
+ (id)_shapeWithSymbol:(id)symbol pointSize:(double)size;
- (BOOL)isCircle;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (CGPoint)inherentConstrainedSlip;
- (CGPoint)pinnedPoint;
- (CGRect)rect;
- (CGSize)size;
- (NSString)cornerCurve;
- (UIPointerShape)init;
- (double)effectiveCornerRadius;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation UIPointerShape

- (UIPointerShape)init
{
  v10.receiver = self;
  v10.super_class = UIPointerShape;
  v2 = [(UIPointerShape *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(UIPointerShape *)v2 setMaterialUsage:1];
    v4 = +[_UIPointerSettingsDomain rootSettings];
    freeformPointerSettings = [v4 freeformPointerSettings];

    [freeformPointerSettings slipFactorX];
    v7 = v6;
    [freeformPointerSettings slipFactorY];
    [(UIPointerShape *)v3 setInherentConstrainedSlip:v7, v8];
    [freeformPointerSettings defaultPointerCornerRadius];
    [(UIPointerShape *)v3 setDefaultCornerRadius:?];
    [(UIPointerShape *)v3 setPinnedPoint:1.79769313e308, 1.79769313e308];
  }

  return v3;
}

+ (UIPointerShape)shapeWithPath:(UIBezierPath *)path
{
  v3 = path;
  v4 = objc_opt_new();
  [v4 _setType:1];
  [v4 setPath:v3];

  return v4;
}

+ (UIPointerShape)shapeWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = objc_opt_new();
  [v9 _setType:0];
  [v9 setRect:{x, y, width, height}];
  [v9 setCornerRadius:cornerRadius];

  return v9;
}

+ (UIPointerShape)beamWithPreferredLength:(CGFloat)length axis:(UIAxis)axis
{
  v7 = +[_UIPointerSettingsDomain rootSettings];
  beamSettings = [v7 beamSettings];

  if (axis - 3 < 0xFFFFFFFFFFFFFFFELL)
  {
    axis = 2;
  }

  [beamSettings minLength];
  v10 = v9;
  [beamSettings maxLength];
  v12 = fmax(v10, fmin(length, v11));
  [beamSettings width];
  v14 = *MEMORY[0x1E695EFF8];
  v15 = *(MEMORY[0x1E695EFF8] + 8);
  if (axis == 2)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (axis != 2)
  {
    v12 = v13;
  }

  v26.origin.x = *MEMORY[0x1E695EFF8];
  v26.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v26.size.width = v16;
  v26.size.height = v12;
  Width = CGRectGetWidth(v26);
  v27.origin.x = v14;
  v27.origin.y = v15;
  v27.size.width = v16;
  v27.size.height = v12;
  Height = CGRectGetHeight(v27);
  if (Width < Height)
  {
    Height = Width;
  }

  v19 = [self shapeWithRoundedRect:v14 cornerRadius:{v15, v16, v12, Height * 0.5}];
  [v19 setMaterialUsage:2];
  [beamSettings slipFactorX];
  v21 = v20;
  [beamSettings slipFactorY];
  [v19 setInherentConstrainedSlip:{v21, v22}];
  if (axis == 1)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  [v19 _setType:v23];
  [v19 setBeamLength:length];

  return v19;
}

+ (id)_linkPointerShape
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)_elasticRectShapePinnedAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = objc_opt_new();
  [v5 setPinnedPoint:{x, y}];

  return v5;
}

+ (id)_shapeWithSymbol:(id)symbol pointSize:(double)size
{
  symbolCopy = symbol;
  v6 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:size];
  v7 = [UIImage systemImageNamed:symbolCopy withConfiguration:v6];

  _outlinePath = [v7 _outlinePath];
  v9 = _outlinePath;
  if (_outlinePath)
  {
    [_outlinePath bounds];
    v10 = -CGRectGetMinX(v16);
    [v9 bounds];
    MinY = CGRectGetMinY(v17);
    CGAffineTransformMakeTranslation(&v14, v10, -MinY);
    [v9 applyTransform:&v14];
    v12 = [UIPointerShape shapeWithPath:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGSize)size
{
  path = [(UIPointerShape *)self path];

  if (path)
  {
    path2 = [(UIPointerShape *)self path];
    [path2 bounds];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [(UIPointerShape *)self rect];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)isEmpty
{
  if ([(UIPointerShape *)self isElastic])
  {
    return 0;
  }

  path = [(UIPointerShape *)self path];

  if (path)
  {
    path2 = [(UIPointerShape *)self path];
    [path2 bounds];
    IsEmpty = CGRectIsEmpty(v12);

    return IsEmpty;
  }

  else
  {
    [(UIPointerShape *)self rect];

    return CGRectIsEmpty(*&v7);
  }
}

- (BOOL)isCircle
{
  if ([(UIPointerShape *)self isEmpty])
  {
    return 0;
  }

  path = [(UIPointerShape *)self path];

  if (path)
  {
    return 0;
  }

  [(UIPointerShape *)self rect];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v8 = CGRectGetWidth(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (vabdd_f64(v8, CGRectGetHeight(v14)) > 2.22044605e-16)
  {
    return 0;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetWidth(v15) * 0.5;
  [(UIPointerShape *)self effectiveCornerRadius];
  if (v11 > v10)
  {
    return 1;
  }

  [(UIPointerShape *)self effectiveCornerRadius];
  return vabdd_f64(v12, v10) <= 2.22044605e-16;
}

- (double)effectiveCornerRadius
{
  [(UIPointerShape *)self cornerRadius];
  v4 = v3;
  v5 = vabdd_f64(2.22507386e-308, v3);
  if (v4 < 0.0 || v5 <= 2.22044605e-16)
  {
    [(UIPointerShape *)self defaultCornerRadius];
    v4 = v7;
  }

  [(UIPointerShape *)self rect];

  return _UIClampedCornerRadius(15, v4, v8, v9, v10, v11);
}

- (NSString)cornerCurve
{
  [(UIPointerShape *)self cornerRadius];
  v4 = v3;
  [(UIPointerShape *)self rect];
  v9 = _UIClampedCornerRadius(15, v4, v5, v6, v7, v8);
  v10 = MEMORY[0x1E69796E8];
  if (v4 > v9)
  {
    v10 = MEMORY[0x1E69796E0];
  }

  v11 = *v10;

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 _setType:{-[UIPointerShape _type](self, "_type")}];
  path = [(UIPointerShape *)self path];
  [v4 setPath:path];

  [(UIPointerShape *)self rect];
  [v4 setRect:?];
  [(UIPointerShape *)self pinnedPoint];
  [v4 setPinnedPoint:?];
  [(UIPointerShape *)self cornerRadius];
  [v4 setCornerRadius:?];
  [(UIPointerShape *)self defaultCornerRadius];
  [v4 setDefaultCornerRadius:?];
  [(UIPointerShape *)self beamLength];
  [v4 setBeamLength:?];
  [(UIPointerShape *)self inherentConstrainedSlip];
  [v4 setInherentConstrainedSlip:?];
  [v4 setMaterialUsage:{-[UIPointerShape materialUsage](self, "materialUsage")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      _type = [(UIPointerShape *)v5 _type];
      if (_type != [(UIPointerShape *)self _type])
      {
LABEL_23:
        v13 = 0;
LABEL_24:

        goto LABEL_25;
      }

      path = [(UIPointerShape *)v5 path];
      path2 = [(UIPointerShape *)self path];
      v9 = path;
      v10 = path2;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        if (!v9 || !v10)
        {

LABEL_22:
          goto LABEL_23;
        }

        v12 = [v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      [(UIPointerShape *)v5 rect];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [(UIPointerShape *)self rect];
      v52.origin.x = v22;
      v52.origin.y = v23;
      v52.size.width = v24;
      v52.size.height = v25;
      v51.origin.x = v15;
      v51.origin.y = v17;
      v51.size.width = v19;
      v51.size.height = v21;
      if (CGRectEqualToRect(v51, v52))
      {
        [(UIPointerShape *)v5 pinnedPoint];
        v27 = v26;
        v29 = v28;
        [(UIPointerShape *)self pinnedPoint];
        if (v27 == v31 && v29 == v30)
        {
          [(UIPointerShape *)v5 cornerRadius];
          v33 = v32;
          [(UIPointerShape *)self cornerRadius];
          if (v33 == v34)
          {
            [(UIPointerShape *)v5 defaultCornerRadius];
            v36 = v35;
            [(UIPointerShape *)self defaultCornerRadius];
            if (v36 == v37)
            {
              [(UIPointerShape *)v5 beamLength];
              v39 = v38;
              [(UIPointerShape *)self beamLength];
              if (v39 == v40)
              {
                [(UIPointerShape *)v5 inherentConstrainedSlip];
                v42 = v41;
                v44 = v43;
                [(UIPointerShape *)self inherentConstrainedSlip];
                v46 = v45;
                v48 = v47;

                v13 = 0;
                if (v42 == v46 && v44 == v48)
                {
                  materialUsage = [(UIPointerShape *)v5 materialUsage];
                  v13 = materialUsage == [(UIPointerShape *)self materialUsage];
                }

                goto LABEL_24;
              }
            }
          }
        }
      }

      goto LABEL_22;
    }

    v13 = 0;
  }

LABEL_25:

  return v13;
}

- (unint64_t)hash
{
  _type = [(UIPointerShape *)self _type];
  if ([(UIPointerShape *)self isElastic])
  {
    [(UIPointerShape *)self pinnedPoint];
    v5 = v4;
    [(UIPointerShape *)self pinnedPoint];
    v7 = v6 ^ v5;
  }

  else
  {
    path = [(UIPointerShape *)self path];
    [path bounds];
    v32 = v9;
    path2 = [(UIPointerShape *)self path];
    [path2 bounds];
    v31 = v11;
    path3 = [(UIPointerShape *)self path];
    [path3 bounds];
    HIDWORD(v30) = v13;
    path4 = [(UIPointerShape *)self path];
    [path4 bounds];
    LODWORD(v30) = v15;

    [(UIPointerShape *)self rect];
    LODWORD(path) = v16;
    [(UIPointerShape *)self rect];
    LODWORD(path2) = v17;
    [(UIPointerShape *)self rect];
    LODWORD(path3) = v18;
    [(UIPointerShape *)self rect];
    LODWORD(path4) = v19;
    [(UIPointerShape *)self cornerRadius];
    v21 = v20;
    [(UIPointerShape *)self defaultCornerRadius];
    v23 = v22;
    [(UIPointerShape *)self beamLength];
    v25 = v24;
    [(UIPointerShape *)self inherentConstrainedSlip];
    v27 = v26;
    [(UIPointerShape *)self inherentConstrainedSlip];
    v7 = v31 ^ v32 ^ HIDWORD(v30) ^ v30 ^ path ^ path2 ^ path3 ^ v21 ^ path4 ^ v23 ^ v25 ^ v27 ^ v28;
  }

  return _type ^ [(UIPointerShape *)self materialUsage]^ v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  _type = [(UIPointerShape *)self _type];
  if (_type > 1)
  {
    if (_type == 2)
    {
      [(UIPointerShape *)self beamLength];
      [v3 appendFormat:@"; beamLength = %g (vertical)", v15];
    }

    else if (_type == 3)
    {
      [(UIPointerShape *)self beamLength];
      [v3 appendFormat:@"; beamLength = %g (horizontal)", v6];
    }
  }

  else if (_type)
  {
    if (_type == 1)
    {
      path = [(UIPointerShape *)self path];
      [v3 appendFormat:@"; path = <UIBezierPath: %p>", path];
    }
  }

  else
  {
    [(UIPointerShape *)self rect];
    v8 = v7;
    [(UIPointerShape *)self rect];
    v10 = v9;
    [(UIPointerShape *)self rect];
    v12 = v11;
    [(UIPointerShape *)self rect];
    [v3 appendFormat:@"; rect = (%g %g; %g %g)", v8, v10, v12, v13];
    [(UIPointerShape *)self cornerRadius];
    if (vabdd_f64(2.22507386e-308, v14) > 2.22044605e-16)
    {
      [v3 appendFormat:@"; cornerRadius = %g", *&v14];
    }
  }

  [v3 appendString:@">"];

  return v3;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)pinnedPoint
{
  x = self->_pinnedPoint.x;
  y = self->_pinnedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)inherentConstrainedSlip
{
  x = self->_inherentConstrainedSlip.x;
  y = self->_inherentConstrainedSlip.y;
  result.y = y;
  result.x = x;
  return result;
}

@end