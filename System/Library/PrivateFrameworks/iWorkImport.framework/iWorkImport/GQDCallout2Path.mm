@interface GQDCallout2Path
- (CGPath)createBezierPath;
- (CGPoint)tailCenter;
- (CGPoint)tailPosition;
- (CGSize)size;
- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor;
@end

@implementation GQDCallout2Path

- (CGPoint)tailCenter
{
  if (self->mTailAtCenter)
  {
    x = self->mSize.width * 0.5;
    y = self->mSize.height * 0.5;
  }

  else
  {
    x = self->mTailPosition.x;
    mCornerRadius = self->mCornerRadius;
    if (x <= mCornerRadius || x >= self->mSize.width - mCornerRadius)
    {
      y = self->mTailPosition.y;
      if (y <= mCornerRadius || y >= self->mSize.height - mCornerRadius)
      {
        v5 = x > mCornerRadius;
        x = self->mCornerRadius;
        if (v5)
        {
          x = self->mSize.width - mCornerRadius;
        }

        if (y <= mCornerRadius)
        {
          y = self->mCornerRadius;
        }

        else
        {
          y = self->mSize.height - mCornerRadius;
        }
      }

      else
      {
        x = self->mSize.width * 0.5;
      }
    }

    else
    {
      y = self->mSize.height * 0.5;
    }
  }

  result.y = y;
  result.x = x;
  return result;
}

- (CGPath)createBezierPath
{
  [(GQDCallout2Path *)self size];
  v4 = v3;
  v6 = v5;
  y = CGPointZero.y;
  mCornerRadius = self->mCornerRadius;
  v9 = sub_4F980(CGPointZero.x, y, 0.0, v5);
  v10 = sub_4F980(CGPointZero.x, y, v4, 0.0);
  Mutable = CGPathCreateMutable();
  v12 = Mutable;
  if (v6 >= v4)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  if (self->mCornerRadius >= v13 * 0.5)
  {
    v76.origin.x = 0.0;
    v76.origin.y = 0.0;
    v76.size.width = v4;
    v76.size.height = v6;
    CGPathAddEllipseInRect(Mutable, 0, v76);
  }

  else
  {
    v14 = v10 * 0.5;
    if (v9 * 0.5 < v14)
    {
      v14 = v9 * 0.5;
    }

    if (mCornerRadius < v14)
    {
      v14 = mCornerRadius;
    }

    v15 = v14;
    v16 = v15;
    v17 = sub_4CF38(0.0, v6, 0.0);
    CGPathMoveToPoint(v12, 0, v17, v18);
    v19 = sub_4CF38(CGPointZero.x, y, v16);
    CGPathAddArcToPoint(v12, 0, CGPointZero.x, y, v19, v20, v16);
    v21 = sub_4F99C(v4, 0.0, 0.0);
    CGPathAddArcToPoint(v12, 0, v4, 0.0, v21, v22, v16);
    v23 = sub_4F99C(v4, v6, v16);
    CGPathAddArcToPoint(v12, 0, v4, v6, v23, v24, v16);
    v25 = sub_4CF38(0.0, v6, 0.0);
    CGPathAddArcToPoint(v12, 0, 0.0, v6, v25, v26, v16);
  }

  CGPathCloseSubpath(v12);
  p_mTailPosition = &self->mTailPosition;
  if (!CGPathContainsPoint(v12, 0, self->mTailPosition, 1))
  {
    [(GQDCallout2Path *)self tailCenter];
    v30 = v28;
    v31 = v29;
    mTailSize = self->mTailSize;
    if (!self->mTailAtCenter)
    {
      v33 = sub_4F980(p_mTailPosition->x, self->mTailPosition.y, v28, v29);
      mTailSize = (v33 / sub_4F980(p_mTailPosition->x, self->mTailPosition.y, v4 * 0.5, v6 * 0.5)) * mTailSize;
    }

    v34 = sub_4F99C(p_mTailPosition->x, self->mTailPosition.y, v30);
    v36 = sub_4F9D8(v34, v35);
    v38 = sub_4F9A8(v36, v37, mTailSize);
    v40 = sub_4F9B8(1, v38, v39);
    v73 = *p_mTailPosition;
    x = p_mTailPosition->x;
    v42 = self->mTailPosition.y;
    v43 = sub_4CF38(v30, v31, v40);
    v44 = self->mTailPosition.y;
    v46 = sub_4F99C(v43, v45, p_mTailPosition->x);
    v48 = sub_4F9A8(v46, v47, 20.0);
    v74 = sub_4CF38(x, v42, v48);
    v75 = v49;
    v70 = *p_mTailPosition;
    v50 = p_mTailPosition->x;
    v51 = self->mTailPosition.y;
    v52 = sub_4F99C(v30, v31, v40);
    v53 = self->mTailPosition.y;
    v55 = sub_4F99C(v52, v54, p_mTailPosition->x);
    v57 = sub_4F9A8(v55, v56, 20.0);
    v71 = sub_4CF38(v50, v51, v57);
    v72 = v58;
    v59 = sub_4FF9C(v12, &v73);
    v61 = v60;
    v62 = sub_4FF9C(v12, &v70);
    v64 = v63;
    v65 = CGPathCreateMutable();
    CGPathMoveToPoint(v65, 0, v59, v61);
    CGPathAddLineToPoint(v65, 0, p_mTailPosition->x, p_mTailPosition->y);
    CGPathAddLineToPoint(v65, 0, v62, v64);
    v69[0] = v12;
    v69[1] = v65;
    v66 = CFArrayCreate(0, v69, 2, &kCFTypeArrayCallBacks);
    v67 = sub_50C8C(v66);
    CFRelease(v66);
    CFRelease(v12);
    CFRelease(v65);
    return v67;
  }

  return v12;
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)tailPosition
{
  x = self->mTailPosition.x;
  y = self->mTailPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor
{
  if (!sub_426B0(reader, qword_A35E8, "cornerRadius", &self->mCornerRadius))
  {
    return 3;
  }

  sub_428CC(reader, qword_A35E8, "tailPositionX", &self->mTailPosition.x);
  if (!v6)
  {
    return 3;
  }

  sub_428CC(reader, qword_A35E8, "tailPositionY", &self->mTailPosition.y);
  if (!v7)
  {
    return 3;
  }

  v8 = 3;
  if (sub_426B0(reader, qword_A35E8, "tailSize", &self->mTailSize))
  {
    if (sub_421B4(reader, qword_A35E8, "tailAtCenter", &self->mTailAtCenter))
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return v8;
}

@end