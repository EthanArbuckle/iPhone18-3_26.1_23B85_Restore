@interface _UIShape
+ (_UIShape)shapeWithPath:(id)path;
+ (_UIShape)shapeWithRoundedRect:(CGRect)rect cornerRadii:(CACornerRadii *)radii cornerCurve:(id)curve;
+ (_UIShape)shapeWithRoundedRect:(CGRect)rect cornerRadius:(double)radius cornerCurve:(id)curve cornerMask:(unint64_t)mask;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRect;
- (CACornerRadii)cornerRadii;
- (CGRect)bounds;
- (CGRect)rect;
- (CGSize)size;
- (UIBezierPath)outline;
- (_UIShape)zeroOriginShape;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)shapeConvertedFromCoordinateSpace:(id)space toCoordinateSpace:(id)coordinateSpace;
@end

@implementation _UIShape

- (CACornerRadii)cornerRadii
{
  v3 = *&self[1].maxXMaxY.height;
  retstr->minXMaxY = *&self[1].minXMaxY.height;
  retstr->maxXMaxY = v3;
  v4 = *&self[1].minXMinY.height;
  retstr->maxXMinY = *&self[1].maxXMinY.height;
  retstr->minXMinY = v4;
  return self;
}

+ (_UIShape)shapeWithPath:(id)path
{
  pathCopy = path;
  v4 = objc_opt_new();
  if ([pathCopy _isRoundedRect])
  {
    [pathCopy bounds];
    *(v4 + 40) = v5;
    *(v4 + 48) = v6;
    *(v4 + 56) = v7;
    *(v4 + 64) = v8;
    [pathCopy _cornerRadius];
    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    *(v4 + 16) = v9;
    _hasContinuousCorners = [pathCopy _hasContinuousCorners];
    v11 = MEMORY[0x1E69796E8];
    if (!_hasContinuousCorners)
    {
      v11 = MEMORY[0x1E69796E0];
    }

    objc_storeStrong((v4 + 24), *v11);
    *(v4 + 32) = [pathCopy _cornerMask];
  }

  else
  {
    v12 = [pathCopy copy];
    v13 = *(v4 + 8);
    *(v4 + 8) = v12;
  }

  return v4;
}

+ (_UIShape)shapeWithRoundedRect:(CGRect)rect cornerRadius:(double)radius cornerCurve:(id)curve cornerMask:(unint64_t)mask
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  curveCopy = curve;
  v13 = objc_opt_new();
  v14 = v13;
  radiusCopy = radius;
  *(v13 + 40) = x;
  *(v13 + 48) = y;
  *(v13 + 56) = width;
  *(v13 + 64) = height;
  if (radius < 0.0)
  {
    radiusCopy = 0.0;
  }

  *(v13 + 16) = radiusCopy;
  v16 = *(v13 + 24);
  *(v13 + 24) = curveCopy;

  v14[4] = mask;

  return v14;
}

+ (_UIShape)shapeWithRoundedRect:(CGRect)rect cornerRadii:(CACornerRadii *)radii cornerCurve:(id)curve
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  curveCopy = curve;
  v11 = objc_opt_new();
  v12 = v11;
  *(v11 + 40) = x;
  *(v11 + 48) = y;
  *(v11 + 56) = width;
  *(v11 + 64) = height;
  maxXMinY = radii->maxXMinY;
  minXMinY = radii->minXMinY;
  maxXMaxY = radii->maxXMaxY;
  *(v11 + 72) = radii->minXMaxY;
  *(v11 + 120) = minXMinY;
  *(v11 + 104) = maxXMinY;
  *(v11 + 88) = maxXMaxY;
  v16 = vbslq_s8(vcgtq_f64(radii->maxXMinY, radii->minXMinY), radii->maxXMinY, radii->minXMinY);
  v17 = vbslq_s8(vcgtq_f64(radii->minXMaxY, v16), radii->minXMaxY, v16);
  v18 = vbslq_s8(vcgtq_f64(radii->maxXMaxY, v17), radii->maxXMaxY, v17);
  if (*v18.i64 < *&v18.i64[1])
  {
    v18.i64[0] = v18.i64[1];
  }

  *(v11 + 16) = v18.i64[0];
  v19 = *(v11 + 24);
  *(v11 + 24) = curveCopy;

  v12[4] = 15;

  return v12;
}

- (id)shapeConvertedFromCoordinateSpace:(id)space toCoordinateSpace:(id)coordinateSpace
{
  spaceCopy = space;
  coordinateSpaceCopy = coordinateSpace;
  v8 = [(_UIShape *)self copy];
  v9 = v8;
  if (spaceCopy != coordinateSpaceCopy)
  {
    if ([v8 isRect])
    {
      [v9 rect];
      [spaceCopy convertRect:coordinateSpaceCopy toCoordinateSpace:?];
      v9[5] = v10;
      v9[6] = v11;
      v9[7] = v12;
      v9[8] = v13;
    }

    else
    {
      v14 = [(UIBezierPath *)self->_path _bezierPathConvertedFromCoordinateSpace:spaceCopy toCoordinateSpace:coordinateSpaceCopy];
      v15 = v9[1];
      v9[1] = v14;
    }
  }

  return v9;
}

- (CGSize)size
{
  [(_UIShape *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGRect)bounds
{
  if ([(_UIShape *)self isRect])
  {
    [(_UIShape *)self rect];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    path = [(_UIShape *)self path];
    [path bounds];
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)isRect
{
  path = [(_UIShape *)self path];
  v3 = path == 0;

  return v3;
}

- (UIBezierPath)outline
{
  path = [(_UIShape *)self path];
  if (!path)
  {
    [(_UIShape *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(_UIShape *)self cornerRadius];
    v13 = v12;
    cornerCurve = [(_UIShape *)self cornerCurve];
    v15 = *MEMORY[0x1E69796E8];

    v16 = _UIClampedCornerRadius(self->_cornerMask, v13, v5, v7, v9, v11);
    v17 = self->_cornerMask & 0xF;
    if (cornerCurve == v15)
    {
      [UIBezierPath bezierPathWithRoundedRect:v17 byRoundingCorners:v5 cornerRadii:v7, v9, v11, v16, v16];
    }

    else
    {
      [UIBezierPath _roundedRectBezierPath:v17 withRoundedCorners:16 cornerRadius:1 segments:v5 legacyCorners:v7, v9, v11, v16];
    }
    path = ;
  }

  return path;
}

- (_UIShape)zeroOriginShape
{
  if ([(_UIShape *)self isRect])
  {
    [(_UIShape *)self rect];
    v4 = v3;
    v6 = v5;
    [(_UIShape *)self cornerRadius];
    v8 = v7;
    cornerCurve = [(_UIShape *)self cornerCurve];
    v10 = [_UIShape shapeWithRoundedRect:cornerCurve cornerRadius:[(_UIShape *)self cornerMask] cornerCurve:0.0 cornerMask:0.0, v4, v6, v8];
  }

  else
  {
    path = [(_UIShape *)self path];
    v12 = [path copy];

    memset(&v17, 0, sizeof(v17));
    [v12 bounds];
    v13 = -CGRectGetMinX(v19);
    [v12 bounds];
    MinY = CGRectGetMinY(v20);
    CGAffineTransformMakeTranslation(&v17, v13, -MinY);
    v16 = v17;
    [v12 applyTransform:&v16];
    v10 = [_UIShape shapeWithPath:v12];
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(cornerMask) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      path = [(_UIShape *)v5 path];
      path2 = [(_UIShape *)self path];
      v8 = path;
      v9 = path2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        LOBYTE(cornerMask) = 0;
        cornerCurve2 = v9;
        cornerCurve = v8;
        if (!v8 || !v9)
        {
          goto LABEL_17;
        }

        LODWORD(cornerMask) = [v8 isEqual:v9];

        if (!cornerMask)
        {
          goto LABEL_18;
        }
      }

      [(_UIShape *)v5 rect];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [(_UIShape *)self rect];
      v31.origin.x = v22;
      v31.origin.y = v23;
      v31.size.width = v24;
      v31.size.height = v25;
      v30.origin.x = v15;
      v30.origin.y = v17;
      v30.size.width = v19;
      v30.size.height = v21;
      if (!CGRectEqualToRect(v30, v31) || ([(_UIShape *)v5 cornerRadius], v27 = v26, [(_UIShape *)self cornerRadius], v27 != v28))
      {
        LOBYTE(cornerMask) = 0;
LABEL_18:

        goto LABEL_19;
      }

      cornerCurve = [(_UIShape *)v5 cornerCurve];
      cornerCurve2 = [(_UIShape *)self cornerCurve];
      if (cornerCurve == cornerCurve2)
      {
        cornerMask = [(_UIShape *)v5 cornerMask];
        LOBYTE(cornerMask) = cornerMask == [(_UIShape *)self cornerMask];
      }

      else
      {
        LOBYTE(cornerMask) = 0;
      }

LABEL_17:

      goto LABEL_18;
    }

    LOBYTE(cornerMask) = 0;
  }

LABEL_19:

  return cornerMask;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  path = [(_UIShape *)self path];
  v6 = v4[1];
  v4[1] = path;

  [(_UIShape *)self rect];
  v4[5] = v7;
  v4[6] = v8;
  v4[7] = v9;
  v4[8] = v10;
  [(_UIShape *)self cornerRadius];
  v4[2] = v11;
  cornerCurve = [(_UIShape *)self cornerCurve];
  v13 = v4[3];
  v4[3] = cornerCurve;

  v4[4] = [(_UIShape *)self cornerMask];
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  if ([(_UIShape *)self isRect])
  {
    [(_UIShape *)self rect];
    [v3 appendFormat:@"; rect = (%g %g; %g %g)", v4, v5, v6, v7];
    [(_UIShape *)self cornerRadius];
    if (fabs(v8) >= 2.22044605e-16)
    {
      [(_UIShape *)self cornerRadius];
      [v3 appendFormat:@"; cornerRadius = %g", v9];
      cornerCurve = [(_UIShape *)self cornerCurve];
      v11 = *MEMORY[0x1E69796E8];

      if (cornerCurve == v11)
      {
        v12 = @"; cornerCurve = continuous";
      }

      else
      {
        v12 = @"; cornerCurve = circular";
      }

      [v3 appendFormat:v12];
    }
  }

  else
  {
    path = [(_UIShape *)self path];
    [path bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    path2 = [(_UIShape *)self path];
    v23 = objc_opt_class();
    path3 = [(_UIShape *)self path];
    [v3 appendFormat:@"; path = <%@: %p; bounds = (%g %g; %g %g)>", v23, path3, v15, v17, v19, v21];
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

@end