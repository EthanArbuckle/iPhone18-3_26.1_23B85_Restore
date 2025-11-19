@interface VKTransitPolylinePath
- (VKTransitPolylinePath)initWithOverlay:(id)a3 section:(id)a4 points:(void *)a5 pointCount:(unint64_t)a6 reversePoints:(BOOL)a7 transform:(void *)a8 routeStartIndex:(unsigned int)a9 routeEndIndex:(unsigned int)a10 lineID:(unint64_t)a11;
- (VKTransitPolylinePath)initWithOverlay:(id)a3 section:(id)a4 points:(void *)a5 pointCount:(unint64_t)a6 reversePoints:(BOOL)a7 transform:(void *)a8 routeStartIndex:(unsigned int)a9 routeEndIndex:(unsigned int)a10 lineID:(unint64_t)a11 tileZ:(unsigned int)a12 vertexPrecision:(unsigned __int8)a13;
@end

@implementation VKTransitPolylinePath

- (VKTransitPolylinePath)initWithOverlay:(id)a3 section:(id)a4 points:(void *)a5 pointCount:(unint64_t)a6 reversePoints:(BOOL)a7 transform:(void *)a8 routeStartIndex:(unsigned int)a9 routeEndIndex:(unsigned int)a10 lineID:(unint64_t)a11
{
  BYTE4(v12) = 0;
  LODWORD(v12) = 0;
  return [(VKTransitPolylinePath *)self initWithOverlay:a3 section:a4 points:a5 pointCount:a6 reversePoints:a7 transform:a8 routeStartIndex:__PAIR64__(a10 routeEndIndex:a9) lineID:a11 tileZ:v12 vertexPrecision:?];
}

- (VKTransitPolylinePath)initWithOverlay:(id)a3 section:(id)a4 points:(void *)a5 pointCount:(unint64_t)a6 reversePoints:(BOOL)a7 transform:(void *)a8 routeStartIndex:(unsigned int)a9 routeEndIndex:(unsigned int)a10 lineID:(unint64_t)a11 tileZ:(unsigned int)a12 vertexPrecision:(unsigned __int8)a13
{
  v19 = a3;
  v20 = a4;
  matchedPathSegments = self->super._matchedPathSegments;
  v52.receiver = self;
  v52.super_class = VKTransitPolylinePath;
  v22 = [(VKPolylinePath *)&v52 initWithOverlay:v19 section:v20 matchedPathSegments:matchedPathSegments];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_30;
  }

  *(v22 + 84) = a9;
  *(v22 + 92) = a10;
  std::vector<gm::Matrix<float,3,1>>::resize(v22 + 4, a6);
  std::vector<geo::PolylineCoordinate>::resize(v23 + 7, a6);
  if (a8)
  {
    if (a7)
    {
      if (!a6)
      {
        goto LABEL_26;
      }

      v24 = (v23[4] + 12 * a6 - 4);
      v25 = 1;
      do
      {
        v26 = *a5;
        a5 = a5 + 8;
        v24[-1] = vmla_f32(*(a8 + 8), *a8, v26);
        v24->i32[0] = 0;
        v24 = (v24 - 12);
        v27 = v25++;
      }

      while (v27 < a6);
    }

    else
    {
      if (!a6)
      {
        goto LABEL_26;
      }

      v32 = (v23[4] + 8);
      v33 = 1;
      do
      {
        v34 = *a5;
        a5 = a5 + 8;
        v32[-1] = vmla_f32(*(a8 + 8), *a8, v34);
        v32->i32[0] = 0;
        v32 = (v32 + 12);
        v35 = v33++;
      }

      while (v35 < a6);
    }
  }

  else if (a7)
  {
    if (!a6)
    {
      goto LABEL_26;
    }

    v28 = (v23[4] + 12 * a6 - 4);
    v29 = 1;
    do
    {
      v30 = *a5;
      a5 = a5 + 8;
      v28[-1] = v30;
      v28->i32[0] = 0;
      v28 = (v28 - 12);
      v31 = v29++;
    }

    while (v31 < a6);
  }

  else
  {
    if (!a6)
    {
      goto LABEL_26;
    }

    v36 = (v23[4] + 8);
    v37 = 1;
    do
    {
      v38 = *a5;
      a5 = a5 + 8;
      v36[-1] = v38;
      v36->i32[0] = 0;
      v36 = (v36 + 12);
      v39 = v37++;
    }

    while (v39 < a6);
  }

  if (a7)
  {
    v40 = 8 * a6;
    v41 = a9 + a6 - 1;
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

    while (v44 < a6);
  }

  else
  {
    v45 = 0;
    v46 = 1;
    do
    {
      v47 = (v23[7] + v45);
      *v47 = a9 + v46 - 1;
      v47[1] = 0;
      v48 = v46;
      v45 += 8;
      ++v46;
    }

    while (v48 < a6);
  }

LABEL_26:
  v23[17] = a11;
  if (a13)
  {
    v49 = 1.0 / (1 << a13 << a12);
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