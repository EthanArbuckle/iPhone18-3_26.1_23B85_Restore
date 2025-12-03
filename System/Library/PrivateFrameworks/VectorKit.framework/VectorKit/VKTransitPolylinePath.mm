@interface VKTransitPolylinePath
- (VKTransitPolylinePath)initWithOverlay:(id)overlay section:(id)section points:(void *)points pointCount:(unint64_t)count reversePoints:(BOOL)reversePoints transform:(void *)transform routeStartIndex:(unsigned int)index routeEndIndex:(unsigned int)self0 lineID:(unint64_t)self1;
- (VKTransitPolylinePath)initWithOverlay:(id)overlay section:(id)section points:(void *)points pointCount:(unint64_t)count reversePoints:(BOOL)reversePoints transform:(void *)transform routeStartIndex:(unsigned int)index routeEndIndex:(unsigned int)self0 lineID:(unint64_t)self1 tileZ:(unsigned int)self2 vertexPrecision:(unsigned __int8)self3;
@end

@implementation VKTransitPolylinePath

- (VKTransitPolylinePath)initWithOverlay:(id)overlay section:(id)section points:(void *)points pointCount:(unint64_t)count reversePoints:(BOOL)reversePoints transform:(void *)transform routeStartIndex:(unsigned int)index routeEndIndex:(unsigned int)self0 lineID:(unint64_t)self1
{
  BYTE4(v12) = 0;
  LODWORD(v12) = 0;
  return [(VKTransitPolylinePath *)self initWithOverlay:overlay section:section points:points pointCount:count reversePoints:reversePoints transform:transform routeStartIndex:__PAIR64__(endIndex routeEndIndex:index) lineID:d tileZ:v12 vertexPrecision:?];
}

- (VKTransitPolylinePath)initWithOverlay:(id)overlay section:(id)section points:(void *)points pointCount:(unint64_t)count reversePoints:(BOOL)reversePoints transform:(void *)transform routeStartIndex:(unsigned int)index routeEndIndex:(unsigned int)self0 lineID:(unint64_t)self1 tileZ:(unsigned int)self2 vertexPrecision:(unsigned __int8)self3
{
  overlayCopy = overlay;
  sectionCopy = section;
  matchedPathSegments = self->super._matchedPathSegments;
  v52.receiver = self;
  v52.super_class = VKTransitPolylinePath;
  v22 = [(VKPolylinePath *)&v52 initWithOverlay:overlayCopy section:sectionCopy matchedPathSegments:matchedPathSegments];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_30;
  }

  *(v22 + 84) = index;
  *(v22 + 92) = endIndex;
  std::vector<gm::Matrix<float,3,1>>::resize(v22 + 4, count);
  std::vector<geo::PolylineCoordinate>::resize(v23 + 7, count);
  if (transform)
  {
    if (reversePoints)
    {
      if (!count)
      {
        goto LABEL_26;
      }

      v24 = (v23[4] + 12 * count - 4);
      v25 = 1;
      do
      {
        v26 = *points;
        points = points + 8;
        v24[-1] = vmla_f32(*(transform + 8), *transform, v26);
        v24->i32[0] = 0;
        v24 = (v24 - 12);
        v27 = v25++;
      }

      while (v27 < count);
    }

    else
    {
      if (!count)
      {
        goto LABEL_26;
      }

      v32 = (v23[4] + 8);
      v33 = 1;
      do
      {
        v34 = *points;
        points = points + 8;
        v32[-1] = vmla_f32(*(transform + 8), *transform, v34);
        v32->i32[0] = 0;
        v32 = (v32 + 12);
        v35 = v33++;
      }

      while (v35 < count);
    }
  }

  else if (reversePoints)
  {
    if (!count)
    {
      goto LABEL_26;
    }

    v28 = (v23[4] + 12 * count - 4);
    v29 = 1;
    do
    {
      v30 = *points;
      points = points + 8;
      v28[-1] = v30;
      v28->i32[0] = 0;
      v28 = (v28 - 12);
      v31 = v29++;
    }

    while (v31 < count);
  }

  else
  {
    if (!count)
    {
      goto LABEL_26;
    }

    v36 = (v23[4] + 8);
    v37 = 1;
    do
    {
      v38 = *points;
      points = points + 8;
      v36[-1] = v38;
      v36->i32[0] = 0;
      v36 = (v36 + 12);
      v39 = v37++;
    }

    while (v39 < count);
  }

  if (reversePoints)
  {
    v40 = 8 * count;
    v41 = index + count - 1;
    v42 = 1;
    do
    {
      v43 = v23[7] + v40;
      v44 = v42;
      *(v43 - 8) = v41;
      *(v43 - 4) = 0;
      v40 -= 8;
      --v41;
      ++v42;
    }

    while (v44 < count);
  }

  else
  {
    v45 = 0;
    v46 = 1;
    do
    {
      v47 = (v23[7] + v45);
      *v47 = index + v46 - 1;
      v47[1] = 0;
      v48 = v46;
      v45 += 8;
      ++v46;
    }

    while (v48 < count);
  }

LABEL_26:
  v23[17] = d;
  if (precision)
  {
    v49 = 1.0 / (1 << precision << z);
  }

  else
  {
    v49 = 0.0;
  }

  *(v23 + 18) = fmax(v49, 0.0000001);
  v50 = v23;
LABEL_30:

  return v23;
}

@end