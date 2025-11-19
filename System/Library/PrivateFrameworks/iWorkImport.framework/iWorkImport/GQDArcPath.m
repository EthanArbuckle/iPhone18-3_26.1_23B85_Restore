@interface GQDArcPath
- (CGPath)createBezierPath;
- (CGSize)size;
- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4;
@end

@implementation GQDArcPath

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
  [(GQDArcPath *)self size];
  if (v3 == 0.0 && v4 == 0.0)
  {
    return 0;
  }

  if (v3 == 0.0 || v4 == 0.0)
  {
    if (v3 == 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v3;
    }

    if (v3 == 0.0)
    {
      v29 = v4;
    }

    else
    {
      v29 = 0.0;
    }

    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
    CGPathAddLineToPoint(Mutable, 0, v28, v29);
  }

  else
  {
    [(GQDArcPath *)self size];
    v7 = v6;
    v31 = v8;
    v9 = v6;
    v10 = (v9 * 0.5);
    [(GQDArcPath *)self arcWidth];
    v12 = v11 * 0.5;
    v13 = (v9 * 0.5) - v12;
    [(GQDArcPath *)self headAngle];
    v15 = v14 * 0.0174532925;
    v16 = CGPathCreateMutable();
    CGPathMoveToPoint(v16, 0, (v9 - v12), v10);
    CGPathAddArc(v16, 0, v10, v10, ((v9 * 0.5) + v12), 0.0, v15, 0);
    [(GQDArcPath *)self arrowWidth];
    *&v17 = v17;
    sub_4CF44(&v35, *&v17, v15);
    CurrentPoint = CGPathGetCurrentPoint(v16);
    v34.f64[0] = sub_4CF38(CurrentPoint.x, CurrentPoint.y, v35.f64[0]);
    v34.f64[1] = v19;
    CGPathAddLineToPoint(v16, 0, v34.f64[0], v19);
    [(GQDArcPath *)self arrowLength];
    *&v20 = v20;
    v21 = v15 + 1.57079633;
    sub_4CF44(&v35, *&v20, v21);
    sub_4CF44(&v34, v9 * 0.5, v15);
    v22 = sub_4CF38(v10, v10, v34.f64[0]);
    v34.f64[0] = sub_4CF38(v22, v23, v35.f64[0]);
    v34.f64[1] = v24;
    CGPathAddLineToPoint(v16, 0, v34.f64[0], v24);
    [(GQDArcPath *)self arrowWidth];
    *&v25 = v13 - v25;
    sub_4CF44(&v35, *&v25, v15);
    v34.f64[0] = sub_4CF38(v10, v10, v35.f64[0]);
    v34.f64[1] = v26;
    CGPathAddLineToPoint(v16, 0, v34.f64[0], v26);
    sub_4CF44(&v35, v13, v15);
    v34.f64[0] = sub_4CF38(v10, v10, v35.f64[0]);
    v34.f64[1] = v27;
    CGPathAddLineToPoint(v16, 0, v34.f64[0], v27);
    CGPathAddArc(v16, 0, v10, v10, v13, v15, 0.0, 1);
    CGPathCloseSubpath(v16);
    memset(&v33, 0, sizeof(v33));
    CGAffineTransformMakeScale(&v33, 1.0, v31 / v7);
    v32 = v33;
    Mutable = sub_4CF8C(v16, &v32);
    CGPathRelease(v16);
  }

  return Mutable;
}

- (int)readAttributesFromReader:(_xmlTextReader *)a3 processor:(id)a4
{
  if (!sub_426B0(a3, qword_A35E8, "headAngle", &self->mHeadAngle) || !sub_426B0(a3, qword_A35E8, "arcWidth", &self->mArcWidth))
  {
    return 3;
  }

  v6 = 3;
  if (sub_426B0(a3, qword_A35E8, "arrowWidth", &self->mArrowWidth))
  {
    if (sub_426B0(a3, qword_A35E8, "arrowLength", &self->mArrowLength))
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return v6;
}

@end