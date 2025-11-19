@interface GQDPointPath
- (CGPath)createBezierPath;
- (CGPoint)point;
- (CGSize)size;
- (int)mapStrType:(__CFString *)a3;
- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4;
@end

@implementation GQDPointPath

- (CGPoint)point
{
  x = self->mPoint.x;
  y = self->mPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

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
  [(GQDPointPath *)self size];
  v4 = v3;
  v6 = v5;
  v7 = [(GQDPointPath *)self type];
  [(GQDPointPath *)self point];
  v9 = v8;
  [(GQDPointPath *)self point];
  if (v4 == 0.0 && v6 == 0.0)
  {
    return 0;
  }

  if (v4 != 0.0 && v6 != 0.0)
  {
    v11 = 0;
    v12 = v6 * v10;
    if (v7 <= 9)
    {
      if (v7)
      {
        if (v7 != 1)
        {
          return v11;
        }

        v35.a = 0.0;
        v35.b = v6 * v10;
        v35.c = v4 - v9;
        v35.d = v6 * v10;
        v35.tx = v4 - v9;
        v35.ty = 0.0;
        v36 = v4;
        ty = v6 * 0.5;
        v38 = v4 - v9;
        v39 = v6;
        v21 = v6 - v12;
        v40 = v4 - v9;
        v41 = v21;
        v42 = 0.0;
      }

      else
      {
        v35.a = v4;
        v35.b = v6 * v10;
        v35.c = v9;
        v35.d = v6 * v10;
        *&v35.tx = *&v9;
        v36 = 0.0;
        ty = v6 * 0.5;
        v38 = v9;
        v21 = v6 - v12;
        v39 = v6;
        v40 = v9;
        v41 = v21;
        v42 = v4;
      }

      v43 = v21;
      Mutable = CGPathCreateMutable();
      v11 = Mutable;
      v20 = 7;
    }

    else
    {
      switch(v7)
      {
        case 10:
          v35.a = 0.0;
          v35.b = v6 * 0.5;
          *&v35.c = *&v9;
          v35.tx = v9;
          v35.ty = v6 * v10;
          v36 = v4 - v9;
          ty = v6 * v10;
          v38 = v4 - v9;
          v39 = 0.0;
          v40 = v4;
          v41 = v6 * 0.5;
          v42 = v4 - v9;
          v43 = v6;
          v44 = v4 - v9;
          v45 = v6 - v12;
          v46 = *&v9;
          v47 = v6 - v12;
          v48 = v9;
          v49 = v6;
          Mutable = CGPathCreateMutable();
          v11 = Mutable;
          v20 = 10;
          break;
        case 100:
          y = NSZeroRect.origin.y;
          memset(&v35, 0, sizeof(v35));
          [(GQDPointPath *)self point:sub_4B7F8(&v35];
          v24 = v23;
          [(GQDPointPath *)self point];
          v26 = v25;
          v11 = CGPathCreateMutable();
          CGPathMoveToPoint(v11, &v35, 6.123234e-17, -1.0);
          if (v24 >= 1)
          {
            v27 = v26;
            v28 = v24;
            v29 = 2;
            do
            {
              v30 = (((v29 - 1) / v28) + -0.5) * 3.14159265;
              v31 = __sincosf_stret(v30);
              CGPathAddLineToPoint(v11, &v35, (v31.__cosval * v27), (v31.__sinval * v27));
              v32 = ((v29 / v28) + -0.5) * 3.14159265;
              v33 = __sincosf_stret(v32);
              CGPathAddLineToPoint(v11, &v35, v33.__cosval, v33.__sinval);
              v29 += 2;
              --v24;
            }

            while (v24);
          }

          goto LABEL_26;
        case 200:
          [(GQDPointPath *)self point];
          *&v13 = (v4 - v13) * 0.5;
          v14 = v4;
          *&v15 = sub_4FB3C(*&v13, 0.0, v14);
          [(GQDPointPath *)self point];
          v17 = (v6 - v16) * 0.5;
          v18 = v6;
          *&v35.a = v15;
          v35.c = v4 - *&v15;
          v35.d = 0.0;
          v35.tx = v4 - *&v15;
          v35.ty = sub_4FB3C(v17, 0.0, v18);
          v36 = v4;
          ty = v35.ty;
          v38 = v4;
          v39 = v6 - v35.ty;
          v40 = v4 - *&v15;
          v41 = v6 - v35.ty;
          v42 = v4 - *&v15;
          v43 = v6;
          v44 = *&v15;
          v45 = v6;
          v46 = v15;
          v47 = v6 - v35.ty;
          v48 = 0.0;
          v49 = v6 - v35.ty;
          v50 = 0;
          v51 = v35.ty;
          v52 = v15;
          v53 = v35.ty;
          v54 = v15;
          v55 = 0;
          Mutable = CGPathCreateMutable();
          v11 = Mutable;
          v20 = 13;
          break;
        default:
          return v11;
      }
    }

    CGPathAddLines(Mutable, 0, &v35, v20);
LABEL_26:
    CGPathCloseSubpath(v11);
    return v11;
  }

  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v6 = 0.0;
  }

  v11 = CGPathCreateMutable();
  CGPathMoveToPoint(v11, 0, 0.0, 0.0);
  CGPathAddLineToPoint(v11, 0, v4, v6);
  return v11;
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4
{
  v5 = sub_4294C(a3, qword_A35E8, "type");
  if (!v5)
  {
    return 3;
  }

  v6 = v5;
  self->mType = [(GQDPointPath *)self mapStrType:v5];
  CFRelease(v6);
  return 1;
}

- (int)mapStrType:(__CFString *)a3
{
  if (CFStringCompare(a3, @"left", 1uLL) == kCFCompareEqualTo)
  {
    return 0;
  }

  v4 = 1;
  if (CFStringCompare(a3, @"right", 1uLL))
  {
    if (CFStringCompare(a3, @"double", 1uLL))
    {
      if (CFStringCompare(a3, @"star", 1uLL))
      {
        if (CFStringCompare(a3, @"plus", 1uLL))
        {
          return -1;
        }

        else
        {
          return 200;
        }
      }

      else
      {
        return 100;
      }
    }

    else
    {
      return 10;
    }
  }

  return v4;
}

@end