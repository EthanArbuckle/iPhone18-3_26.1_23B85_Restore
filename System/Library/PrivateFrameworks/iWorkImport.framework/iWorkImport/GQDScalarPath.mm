@interface GQDScalarPath
- (CGPath)createBezierPath;
- (CGSize)size;
- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor;
@end

@implementation GQDScalarPath

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPath)createBezierPath
{
  [(GQDScalarPath *)self size];
  v4 = v3;
  v6 = v5;
  [(GQDScalarPath *)self scalar];
  v8 = v7;
  type = [(GQDScalarPath *)self type];
  if (v4 == 0.0 && v6 == 0.0)
  {
    return 0;
  }

  if (v4 != 0.0 && v6 != 0.0)
  {
    if (v8 <= 0.0)
    {
      Mutable = CGPathCreateMutable();
      v23.origin.x = 0.0;
      v23.origin.y = 0.0;
      v23.size.width = v4;
      v23.size.height = v6;
      CGPathAddRect(Mutable, 0, v23);
      return Mutable;
    }

    if (type == 1)
    {
      y = NSZeroRect.origin.y;
      memset(&v22, 0, sizeof(v22));
      sub_4B7F8(&v22, -1.0, -1.0, 2.0, 2.0, NSZeroRect.origin.x, y, v4, v6);
      v16 = v8;
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, &v22, 6.123234e-17, -1.0);
      if (v8 >= 1)
      {
        v17 = v16;
        v18 = 2;
        do
        {
          v19 = ((v18 / v17) + -0.5) * 3.14159265;
          v20 = __sincosf_stret(v19);
          CGPathAddLineToPoint(Mutable, &v22, v20.__cosval, v20.__sinval);
          v18 += 2;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      if (type)
      {
        return 0;
      }

      v11 = v4 * 0.5;
      if (v8 <= v4 * 0.5)
      {
        v11 = v8;
      }

      if (v11 <= v6 * 0.5)
      {
        v12 = v11;
      }

      else
      {
        v12 = v6 * 0.5;
      }

      v13 = v6 - v12;
      v14 = v4 - v12;
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, 0.0, v13);
      CGPathAddArc(Mutable, 0, v12, v12, v12, 3.14159265, 4.71238898, 0);
      CGPathAddArc(Mutable, 0, v14, v12, v12, 4.71238898, 0.0, 0);
      CGPathAddArc(Mutable, 0, v14, v13, v12, 0.0, 1.57079633, 0);
      CGPathAddArc(Mutable, 0, v12, v13, v12, 1.57079633, 3.14159265, 0);
    }

    CGPathCloseSubpath(Mutable);
    return Mutable;
  }

  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v6 = 0.0;
  }

  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, v4, v6);
  return Mutable;
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor
{
  self->mType = sub_42468(reader, qword_A35E8, "type", 0);
  if (sub_426B0(reader, qword_A35E8, "scalar", &self->mScalar))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end