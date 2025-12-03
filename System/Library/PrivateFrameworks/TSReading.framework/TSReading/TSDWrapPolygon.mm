@interface TSDWrapPolygon
- (BOOL)intersectsSelf;
- (CGPoint)intersectionPointBetween:(CGPoint)between and:(CGPoint)and;
- (CGRect)bounds;
- (TSDWrapPolygon)initWithPath:(id)path;
- (id)bezierPath;
- (id)copyWithZone:(_NSZone *)zone;
- (int)p_countSegments;
- (void)dealloc;
- (void)p_computeIntersectionState;
- (void)p_freePolygon;
- (void)setPath:(id)path;
- (void)transformUsingAffineTransform:(CGAffineTransform *)transform;
@end

@implementation TSDWrapPolygon

- (TSDWrapPolygon)initWithPath:(id)path
{
  v7.receiver = self;
  v7.super_class = TSDWrapPolygon;
  v4 = [(TSDWrapPolygon *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TSDWrapPolygon *)v4 setPath:path];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSDWrapPolygon);
  [(TSDWrapPolygon *)v4 p_setPolygon:copyPolygon(self->mPolygon)];
  if (self->mComputedSelfIntersection)
  {
    [(TSDWrapPolygon *)v4 setIntersectsSelf:self->mIntersectsSelf];
  }

  return v4;
}

- (void)dealloc
{
  [(TSDWrapPolygon *)self p_freePolygon];
  v3.receiver = self;
  v3.super_class = TSDWrapPolygon;
  [(TSDWrapPolygon *)&v3 dealloc];
}

- (void)setPath:(id)path
{
  pathCopy = path;
  if (([path isFlat] & 1) == 0)
  {
    pathCopy = [pathCopy bezierPathByFlatteningPath];
  }

  if ([pathCopy isClockwise])
  {
    pathCopy = [pathCopy bezierPathByReversingPath];
  }

  self->mComputedSelfIntersection = 0;
  self->mComputedBounds = 0;
  [(TSDWrapPolygon *)self p_freePolygon];
  self->mPolygon = polygonFromBezier(pathCopy);
}

- (BOOL)intersectsSelf
{
  if (!self->mComputedSelfIntersection)
  {
    [(TSDWrapPolygon *)self p_computeIntersectionState];
    self->mComputedSelfIntersection = 1;
  }

  return self->mIntersectsSelf;
}

- (CGRect)bounds
{
  if (!self->mComputedBounds)
  {
    mPolygon = self->mPolygon;
    v4 = *(MEMORY[0x277CBF3A0] + 16);
    self->mBounds.origin = *MEMORY[0x277CBF3A0];
    self->mBounds.size = v4;
    if (mPolygon)
    {
      if (*mPolygon >= 1)
      {
        v5 = 0;
        v6 = 0;
        x = self->mBounds.origin.x;
        y = self->mBounds.origin.y;
        width = self->mBounds.size.width;
        height = self->mBounds.size.height;
        do
        {
          v11 = boundsForVertexList(*(mPolygon + 2) + v5);
          x = TSDUnionRect(x, y, width, height, v11, v12, v13, v14);
          y = v15;
          width = v16;
          height = v17;
          self->mBounds.origin.x = x;
          self->mBounds.origin.y = v15;
          self->mBounds.size.width = v16;
          self->mBounds.size.height = v17;
          ++v6;
          v5 += 16;
        }

        while (v6 < *mPolygon);
      }

      self->mComputedBounds = 1;
    }
  }

  v18 = self->mBounds.size.width;
  v19 = self->mBounds.size.height;
  v20 = self->mBounds.origin.x;
  v21 = self->mBounds.origin.y;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)bezierPath
{
  result = self->mPolygon;
  if (result)
  {
    return bezierFromPolygon(result);
  }

  return result;
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)transform
{
  mPolygon = self->mPolygon;
  if (mPolygon)
  {
    v4 = *mPolygon;
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = *(mPolygon + 2);
      do
      {
        v7 = *(v6 + 16 * v5);
        if (v7 >= 1)
        {
          v8 = *(v6 + 16 * v5 + 8);
          do
          {
            *v8 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v8[1]), *&transform->a, *v8));
            v8 += 2;
            --v7;
          }

          while (v7);
        }

        ++v5;
      }

      while (v5 != v4);
    }

    self->mComputedBounds = 0;
  }
}

- (CGPoint)intersectionPointBetween:(CGPoint)between and:(CGPoint)and
{
  mPolygon = self->mPolygon;
  v5 = 0.0;
  if (mPolygon)
  {
    v6 = *mPolygon;
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = *(mPolygon + 2);
      v9 = and.x - between.x;
      do
      {
        v10 = (v8 + 16 * v7);
        v11 = *v10;
        if (v11 >= 2)
        {
          v12 = *(v10 + 1);
          v13 = v12 + 16 * v11;
          v14 = *(v13 - 16);
          v15 = *(v13 - 8);
          v16 = (v12 + 8);
          do
          {
            v17 = v14;
            v18 = v15;
            v14 = *(v16 - 1);
            v15 = *v16;
            v19 = v17 - v14;
            v20 = v18 - *v16;
            v21 = v20 * v9 - v19 * (and.y - between.y);
            if (v21 != 0.0)
            {
              v22 = (v19 * (between.y - v15) - v20 * (between.x - v14)) / v21;
              v23 = ((between.x - v14) * -(and.y - between.y) + v9 * (between.y - v15)) / v21;
              v24 = v22 >= 0.0;
              if (v22 > 1.0)
              {
                v24 = 0;
              }

              v25 = v23 >= 0.0;
              if (v23 > 1.0)
              {
                v25 = 0;
              }

              v26 = fmax(v5, v22);
              if (v24 && v25)
              {
                v5 = v26;
              }
            }

            v16 += 2;
            --v11;
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v6);
    }
  }

  v27 = between.x + (and.x - between.x) * v5;
  v28 = between.y + (and.y - between.y) * v5;
  result.y = v28;
  result.x = v27;
  return result;
}

- (void)p_freePolygon
{
  mPolygon = self->mPolygon;
  if (mPolygon)
  {
    TSDgpc_free_polygon(mPolygon);
    free(self->mPolygon);
    self->mPolygon = 0;
  }
}

- (int)p_countSegments
{
  mPolygon = self->mPolygon;
  if (!mPolygon)
  {
    return 0;
  }

  v3 = *mPolygon;
  if (v3 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *(mPolygon + 2);
  do
  {
    v7 = *v5;
    v5 += 4;
    v6 = v7;
    v8 = v7 == 2;
    if (v7 <= 2)
    {
      v6 = 0;
    }

    if (v8)
    {
      v6 = 1;
    }

    result += v6;
    --v3;
  }

  while (v3);
  return result;
}

- (void)p_computeIntersectionState
{
  mPolygon = self->mPolygon;
  p_countSegments = [(TSDWrapPolygon *)self p_countSegments];
  self->mIntersectsSelf = 0;
  if (p_countSegments >= 1)
  {
    v5 = 0;
    v6 = 0.0;
    v7 = *mPolygon;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    while (1)
    {
      if (v7 >= 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = (*(mPolygon + 2) + 8);
        v18 = *mPolygon;
        while (1)
        {
          v19 = *(v17 - 2);
          if (v19 > 2)
          {
            v15 = *(v17 - 2);
          }

          if (v19 == 2)
          {
            v15 = 1;
          }

          if (v15 + v16 >= v5)
          {
            break;
          }

          v17 += 2;
          v16 += v15;
          if (!--v18)
          {
            goto LABEL_13;
          }
        }

        v20 = *v17;
        v21 = (v20 + 16 * ((v5 - v16) % v19));
        v13 = *v21;
        v14 = v21[1];
        v22 = (v20 + 16 * ((v5 - v16 + 1) % v19));
        v11 = *v22;
        v12 = v22[1];
      }

LABEL_13:
      if (++v5 < p_countSegments)
      {
        break;
      }

LABEL_36:
      if (v5 == p_countSegments)
      {
        return;
      }
    }

    v23 = v11 - v13;
    v24 = v5;
    while (1)
    {
      if (v7 >= 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = (*(mPolygon + 2) + 8);
        v28 = *mPolygon;
        while (1)
        {
          v29 = *(v27 - 2);
          if (v29 > 2)
          {
            v25 = *(v27 - 2);
          }

          if (v29 == 2)
          {
            v25 = 1;
          }

          if (v25 + v26 >= v24)
          {
            break;
          }

          v27 += 2;
          v26 += v25;
          if (!--v28)
          {
            goto LABEL_25;
          }
        }

        v30 = *v27;
        v31 = (v30 + 16 * ((v24 - v26) % v29));
        v9 = *v31;
        v10 = v31[1];
        v32 = (v30 + 16 * ((v24 - v26 + 1) % v29));
        v6 = *v32;
        v8 = v32[1];
      }

LABEL_25:
      v33 = (v6 - v9) * -(v12 - v14) + v23 * (v8 - v10);
      if (v33 != 0.0)
      {
        v34 = ((v14 - v10) * (v6 - v9) - (v13 - v9) * (v8 - v10)) / v33;
        if (v34 > 0.0 && v34 < 1.0)
        {
          v36 = ((v14 - v10) * v23 - (v13 - v9) * (v12 - v14)) / v33;
          if (v36 > 0.0 && v36 < 1.0)
          {
            break;
          }
        }
      }

      if (++v24 == p_countSegments)
      {
        goto LABEL_36;
      }
    }

    self->mIntersectsSelf = 1;
  }
}

@end