@interface VKCameraRegionRestriction
- ($F24F406B2B787EFB06265DBA3D28CBD5)clampedCoordinate:(id)a3;
- (BOOL)containsCoordinate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (Matrix<double,)clampedPosition:()Matrix<double;
- (Matrix<double,)clampedPositionForOrigin:()Matrix<double delta:()2;
- (VKCameraRegionRestriction)initWithCoder:(id)a3;
- (VKCameraRegionRestriction)initWithMapRegion:(id)a3;
- (void)clampedPosition:(double)a3 usingSingleRestriction:(double)a4 westOfDatelineRestriction:(double)a5 eastOfDatelineRestriction:(double)a6 wrapRange:(double)a7;
- (void)encodeWithCoder:(id)a3;
- (void)radianSingleRect:(void *)a3 westOfDatelineRect:(void *)a4 eastOfDatelineRect:(void *)a5;
@end

@implementation VKCameraRegionRestriction

- (VKCameraRegionRestriction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VKCameraRegionRestrictionMapRegion"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A2200]) initWithData:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(VKCameraRegionRestriction *)self initWithMapRegion:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  mapRegion = self->_mapRegion;
  if (mapRegion)
  {
    v5 = [(GEOMapRegion *)mapRegion data];
    [v6 encodeObject:v5 forKey:@"VKCameraRegionRestrictionMapRegion"];
  }
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapRegion = self->_mapRegion;
    v7 = mapRegion;
    if (!mapRegion)
    {
      v3 = [v5 mapRegion];
      if (!v3)
      {
        v9 = 1;
LABEL_9:

        goto LABEL_10;
      }

      v7 = self->_mapRegion;
    }

    v8 = [v5 mapRegion];
    v9 = [(GEOMapRegion *)v7 isEqual:v8];

    if (!mapRegion)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (void)radianSingleRect:(void *)a3 westOfDatelineRect:(void *)a4 eastOfDatelineRect:(void *)a5
{
  if (a3)
  {
    v5 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v6 = vmulq_f64(self->_singleRestrictionCoord._minimum, v5);
    v7 = vmulq_f64(self->_singleRestrictionCoord._maximum, v5);
    *a3 = v6;
    *(a3 + 1) = v7;
  }

  if (a4)
  {
    v8 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v9 = vmulq_f64(self->_westOfDatelineCoord._minimum, v8);
    v10 = vmulq_f64(self->_westOfDatelineCoord._maximum, v8);
    *a4 = v9;
    *(a4 + 1) = v10;
  }

  if (a5)
  {
    v11 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v12 = vmulq_f64(self->_eastOfDatelineCoord._minimum, v11);
    v13 = vmulq_f64(self->_eastOfDatelineCoord._maximum, v11);
    *a5 = v12;
    *(a5 + 1) = v13;
  }
}

- (Matrix<double,)clampedPositionForOrigin:()Matrix<double delta:()2
{
  v4 = a4._e[0];
  v5 = a3._e[1];
  v6 = a3._e[0];
  v8 = a4._e[0] + a3._e[0];
  v9 = a4._e[1] + a3._e[1];
  if (![(VKCameraRegionRestriction *)self isEmpty])
  {
    v10 = 0;
    v11 = 0;
    maximum = self->_singleRestrictionMercator._maximum;
    v13 = &minimum;
    minimum = self->_singleRestrictionMercator._minimum;
    v52 = maximum;
    v14 = self->_westOfDatelineMercator._maximum;
    v49 = self->_westOfDatelineMercator._minimum;
    v50 = v14;
    v15 = self->_eastOfDatelineMercator._maximum;
    v47 = self->_eastOfDatelineMercator._minimum;
    v48 = v15;
    do
    {
      v16 = v52._e[v11];
      v17 = v13->_e[0];
      if (v10)
      {
        break;
      }

      v10 = 1;
      v13 = &minimum._e[1];
      v11 = 1;
    }

    while (v16 >= v17);
    if (v16 >= v17)
    {
      v32 = 0;
      p_minimum = &minimum;
      v34 = 1;
      v35 = v6;
      while (v35 >= p_minimum->_e[0] && v35 <= v52._e[v32])
      {
        v36 = v34;
        v34 = 0;
        p_minimum = &minimum._e[1];
        v35 = v5;
        v32 = 1;
        if ((v36 & 1) == 0)
        {
          v28 = fmin(fmax(v8, minimum._e[0]), v52._e[0]);
          v9 = fmin(fmax(v9, minimum._e[1]), v52._e[1]);
          goto LABEL_15;
        }
      }
    }

    v18 = 0;
    v19 = 0;
    v20 = &v49;
    do
    {
      v21 = v50._e[v19];
      v22 = v20->_e[0];
      if (v18)
      {
        break;
      }

      v18 = 1;
      v20 = &v49._e[1];
      v19 = 1;
    }

    while (v21 >= v22);
    if (v21 >= v22)
    {
      v23 = 0;
      v24 = 0;
      v25 = &v47;
      do
      {
        v26 = v48._e[v24];
        v27 = v25->_e[0];
        if (v23)
        {
          break;
        }

        v23 = 1;
        v25 = &v47._e[1];
        v24 = 1;
      }

      while (v26 >= v27);
      if (v26 >= v27)
      {
        v37 = 0;
        v9 = fmin(fmax(v9, v49._e[1]), v50._e[1]);
        v38 = &v49;
        v39 = 1;
        v40 = v6;
        while (v40 >= v38->_e[0] && v40 <= v50._e[v37])
        {
          v41 = v39;
          v39 = 0;
          v38 = &v49._e[1];
          v40 = v5;
          v37 = 1;
          if ((v41 & 1) == 0)
          {
            if (v4 >= 0.0 || (v28 = v49._e[0], v8 >= v49._e[0]))
            {
              if (v4 <= 0.0 || v50._e[0] >= v8)
              {
LABEL_42:
                v28 = v8;
              }

              else
              {
                v42 = v8 + -1.0;
                v28 = v48._e[0];
                if (v8 + -1.0 < v48._e[0])
                {
LABEL_39:
                  v28 = v42;
                }
              }
            }

            goto LABEL_15;
          }
        }

        v43 = 0;
        v44 = &v47;
        v45 = 1;
        while (v6 >= v44->_e[0] && v6 <= v48._e[v43])
        {
          v46 = v45;
          v45 = 0;
          v44 = &v47._e[1];
          v6 = v5;
          v43 = 1;
          if ((v46 & 1) == 0)
          {
            if (v4 < 0.0 && v8 < v47._e[0])
            {
              v28 = v49._e[0];
              v42 = v8 + 1.0;
              if (v49._e[0] >= v8 + 1.0)
              {
                goto LABEL_15;
              }

              goto LABEL_39;
            }

            if (v4 > 0.0)
            {
              v28 = v48._e[0];
              if (v48._e[0] < v8)
              {
                goto LABEL_15;
              }
            }

            goto LABEL_42;
          }
        }
      }
    }

    [(VKCameraRegionRestriction *)self clampedPosition:v8, v9, v47];
    v9 = v29;
LABEL_15:
    v8 = v28;
  }

  v30 = v8;
  v31 = v9;
  result._e[1] = v31;
  result._e[0] = v30;
  return result;
}

- (void)clampedPosition:(double)a3 usingSingleRestriction:(double)a4 westOfDatelineRestriction:(double)a5 eastOfDatelineRestriction:(double)a6 wrapRange:(double)a7
{
  v25 = 0;
  v26 = 0;
  v27 = &v74;
  v74 = a3;
  v75 = a4;
  *v76 = a5;
  *&v76[1] = a6;
  v71 = a17;
  v72 = a18;
  v73[0] = a19;
  v73[1] = a20;
  v68 = a21;
  v69 = a22;
  v70[0] = a23;
  v70[1] = a24;
  do
  {
    v28 = *&v76[v26];
    v29 = *v27;
    if (v25)
    {
      break;
    }

    v25 = 1;
    v27 = &v75;
    v26 = 1;
  }

  while (v28 >= v29);
  if (v28 < v29)
  {
LABEL_9:
    v35 = 0;
    v36 = 0;
    v37 = &v71;
    do
    {
      v38 = *&v73[v36];
      v39 = *v37;
      if (v35)
      {
        break;
      }

      v35 = 1;
      v37 = &v72;
      v36 = 1;
    }

    while (v38 >= v39);
    if (v38 < v39)
    {
      return;
    }

    v40 = 0;
    v41 = 0;
    v42 = &v68;
    do
    {
      v43 = *&v70[v41];
      v44 = *v42;
      if (v40)
      {
        break;
      }

      v40 = 1;
      v42 = &v69;
      v41 = 1;
    }

    while (v43 >= v44);
    if (v43 < v44)
    {
      return;
    }

    v45 = 0;
    v46 = 0.0;
    v47 = &v71;
    v48 = 1;
    v49 = a1;
    v50 = 1;
    while (1)
    {
      v51 = v48;
      v52 = *&v73[v45];
      if (v49 > v52)
      {
        break;
      }

      if (v49 < *v47)
      {
        v50 = 0;
        v53 = *v47 - v49;
        goto LABEL_22;
      }

LABEL_23:
      v48 = 0;
      v47 = &v72;
      v49 = a2;
      v45 = 1;
      if ((v51 & 1) == 0)
      {
        if (v50)
        {
          return;
        }

        v54 = 0;
        v55 = 0.0;
        v56 = &v68;
        v57 = 1;
        v58 = a1;
        while (2)
        {
          v59 = v57;
          v60 = *&v70[v54];
          if (v58 > v60)
          {
            v61 = v58 - v60;
            goto LABEL_30;
          }

          if (v58 < *v56)
          {
            v61 = *v56 - v58;
LABEL_30:
            v55 = v55 + v61 * v61;
          }

          v57 = 0;
          v56 = &v69;
          v58 = a2;
          v54 = 1;
          if ((v59 & 1) == 0)
          {
            return;
          }

          continue;
        }
      }
    }

    v50 = 0;
    v53 = v49 - v52;
LABEL_22:
    v46 = v46 + v53 * v53;
    goto LABEL_23;
  }

  v30 = 0;
  v31 = &v74;
  v32 = 1;
  v33 = a1;
  while (v33 >= *v31 && v33 < *&v76[v30])
  {
    v34 = v32;
    v32 = 0;
    v31 = &v75;
    v33 = a2;
    v30 = 1;
    if ((v34 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (a1 < a3 || a1 > a5)
  {
    v63 = a25 + (a26 + a25) * -0.5;
    v64 = v63 + a1;
    v65 = a26 - a25;
    v66 = fmod(a3 - (v63 + a1), a26 - a25);
    fabs(fmod(v66 + v65, v65) + v63);
    v67 = fmod(a5 - v64, a26 - a25);
    fmod(v67 + v65, v65);
  }
}

- (Matrix<double,)clampedPosition:()Matrix<double
{
  v3 = a3._e[1];
  v4 = a3._e[0];
  if (![(VKCameraRegionRestriction *)self isEmpty])
  {
      ;
    }

      ;
    }

    [(VKCameraRegionRestriction *)self clampedPosition:v4 usingSingleRestriction:v3 westOfDatelineRestriction:self->_singleRestrictionMercator._minimum._e[0] eastOfDatelineRestriction:self->_singleRestrictionMercator._minimum._e[1] wrapRange:self->_singleRestrictionMercator._maximum._e[0], self->_singleRestrictionMercator._maximum._e[1], *&self->_westOfDatelineMercator._minimum._e[0], *&self->_westOfDatelineMercator._minimum._e[1], *&self->_westOfDatelineMercator._maximum._e[0], *&self->_westOfDatelineMercator._maximum._e[1], *&self->_eastOfDatelineMercator._minimum._e[0], *&self->_eastOfDatelineMercator._minimum._e[1], *&self->_eastOfDatelineMercator._maximum._e[0], *&self->_eastOfDatelineMercator._maximum._e[1], 0, 0x3FF0000000000000];
    v4 = v6;
    v3 = v7;
  }

  v8 = v4;
  v9 = v3;
  result._e[1] = v9;
  result._e[0] = v8;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)clampedCoordinate:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (![(VKCameraRegionRestriction *)self isEmpty])
  {
    [(VKCameraRegionRestriction *)self clampedPosition:var1 usingSingleRestriction:var0 westOfDatelineRestriction:self->_singleRestrictionCoord._minimum._e[0] eastOfDatelineRestriction:self->_singleRestrictionCoord._minimum._e[1] wrapRange:self->_singleRestrictionCoord._maximum._e[0], self->_singleRestrictionCoord._maximum._e[1], *&self->_westOfDatelineCoord._minimum._e[0], *&self->_westOfDatelineCoord._minimum._e[1], *&self->_westOfDatelineCoord._maximum._e[0], *&self->_westOfDatelineCoord._maximum._e[1], *&self->_eastOfDatelineCoord._minimum._e[0], *&self->_eastOfDatelineCoord._minimum._e[1], *&self->_eastOfDatelineCoord._maximum._e[0], *&self->_eastOfDatelineCoord._maximum._e[1], 0xC066800000000000, 0x4066800000000000];
    var1 = v6;
    var0 = v7;
  }

  v8 = var0;
  v9 = var1;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (BOOL)containsCoordinate:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ([(VKCameraRegionRestriction *)self isEmpty])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    p_singleRestrictionCoord = &self->_singleRestrictionCoord;
    p_maximum = &self->_singleRestrictionCoord._maximum;
    do
    {
      v11 = p_maximum->_e[v8];
      v12 = p_singleRestrictionCoord->_minimum._e[v8];
      if (v7)
      {
        break;
      }

      v7 = 1;
      v8 = 1;
    }

    while (v11 >= v12);
    if (v11 >= v12)
    {
      v16 = 0;
      v17 = 0;
      while (var1 >= p_singleRestrictionCoord->_minimum._e[v17])
      {
        v18 = var1;
        v19 = p_maximum->_e[v17];
        v20 = v16 | (var1 >= v19);
        v16 = 1;
        var1 = var0;
        v17 = 1;
        if (v20)
        {
LABEL_19:
          LOBYTE(v6) = v18 < v19;
          return v6;
        }
      }
    }

    else
    {
      v6 = 0;
      v13 = 1;
      v14 = var1;
      while (v14 >= self->_westOfDatelineCoord._minimum._e[v6] && v14 < self->_westOfDatelineCoord._maximum._e[v6])
      {
        v15 = v13;
        v13 = 0;
        v6 = 1;
        v14 = var0;
        if ((v15 & 1) == 0)
        {
          return v6;
        }
      }

      v21 = 0;
      v22 = 0;
      while (var1 >= self->_eastOfDatelineCoord._minimum._e[v22])
      {
        v18 = var1;
        v19 = self->_eastOfDatelineCoord._maximum._e[v22];
        v22 = 1;
        v23 = (var1 < v19) & ~v21;
        v21 = 1;
        var1 = var0;
        if ((v23 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (VKCameraRegionRestriction)initWithMapRegion:(id)a3
{
  v5 = a3;
  v83.receiver = self;
  v83.super_class = VKCameraRegionRestriction;
  v6 = [(VKCameraRegionRestriction *)&v83 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapRegion, a3);
    if (v5)
    {
      [v5 westLng];
      v9 = v8;
      [v5 eastLng];
      if (v9 > v10)
      {
        v11 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v7->_singleRestrictionMercator._minimum = v11;
        v12 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v7->_singleRestrictionMercator._maximum = v12;
        v7->_singleRestrictionCoord._minimum = v11;
        v7->_singleRestrictionCoord._maximum = v12;
        [v5 southLat];
        v14 = v13;
        [v5 westLng];
        v16 = v15;
        [v5 northLat];
        v18 = v17;
        v19 = tan(v14 * 0.00872664626 + 0.785398163);
        v20 = log(v19) * 0.159154943 + 0.5;
        v21 = tan(v18 * 0.00872664626 + 0.785398163);
        v22 = log(v21);
        v7->_westOfDatelineMercator._minimum._e[0] = v16 * 0.00277777778 + 0.5;
        v7->_westOfDatelineMercator._minimum._e[1] = v20;
        v7->_westOfDatelineMercator._maximum._e[0] = 1.0;
        v7->_westOfDatelineMercator._maximum._e[1] = v22 * 0.159154943 + 0.5;
        [v5 southLat];
        v24 = tan(v23 * 0.00872664626 + 0.785398163);
        v25 = log(v24);
        [v5 northLat];
        v27 = v26;
        [v5 eastLng];
        v81 = v28;
        v29 = tan(v27 * 0.00872664626 + 0.785398163);
        v30 = log(v29);
        v7->_eastOfDatelineMercator._minimum._e[0] = 0.0;
        v31.f64[0] = v81;
        v31.f64[1] = v30;
        v7->_eastOfDatelineMercator._minimum._e[1] = v25 * 0.159154943 + 0.5;
        __asm { FMOV            V1.2D, #0.5 }

        v7->_eastOfDatelineMercator._maximum = vmlaq_f64(_Q1, xmmword_1B33B0700, v31);
        [v5 westLng];
        v38 = v37;
        [v5 southLat];
        v40 = v39;
        [v5 northLat];
        v7->_westOfDatelineCoord._minimum._e[0] = v38;
        v7->_westOfDatelineCoord._minimum._e[1] = v40;
        v7->_westOfDatelineCoord._maximum._e[0] = 180.0;
        v7->_westOfDatelineCoord._maximum._e[1] = v41;
        [v5 southLat];
        v43 = v42;
        [v5 eastLng];
        v45 = v44;
        [v5 northLat];
        v47 = 0xC066800000000000;
LABEL_8:
        *&v7->_eastOfDatelineCoord._minimum._e[0] = v47;
        *&v7->_eastOfDatelineCoord._minimum._e[1] = v43;
        *&v7->_eastOfDatelineCoord._maximum._e[0] = v45;
        *&v7->_eastOfDatelineCoord._maximum._e[1] = v46;
        goto LABEL_9;
      }

      [v5 southLat];
      v65 = v64;
      [v5 westLng];
      v67 = v66;
      v68 = tan(v65 * 0.00872664626 + 0.785398163);
      v69 = log(v68);
      [v5 northLat];
      v71 = v70;
      [v5 eastLng];
      v82 = v72;
      v73 = tan(v71 * 0.00872664626 + 0.785398163);
      v74 = log(v73);
      v75.f64[0] = v82;
      v75.f64[1] = v74;
      v7->_singleRestrictionMercator._minimum._e[0] = v67 * 0.00277777778 + 0.5;
      v7->_singleRestrictionMercator._minimum._e[1] = v69 * 0.159154943 + 0.5;
      __asm { FMOV            V1.2D, #0.5 }

      v7->_singleRestrictionMercator._maximum = vmlaq_f64(_Q1, xmmword_1B33B0700, v75);
      [v5 westLng];
      v60 = v77;
      [v5 southLat];
      v62 = v78;
      [v5 eastLng];
      v57 = v79;
      [v5 northLat];
      v48 = 96;
      v49 = 88;
      v50 = 80;
      v51 = 72;
      v52 = 64;
      v53 = 56;
      v54 = 48;
      v55 = 40;
      v56 = 128;
      v58 = 120;
      v59 = 112;
      v61 = 104;
    }

    else
    {
      v7->_empty = 1;
      v7->_singleRestrictionMercator._minimum = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v48 = 128;
      v49 = 120;
      v50 = 112;
      v51 = 104;
      v52 = 96;
      v53 = 88;
      v54 = 80;
      v55 = 72;
      v7->_singleRestrictionMercator._maximum = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v56 = 64;
      v57 = 0xFFEFFFFFFFFFFFFFLL;
      v58 = 56;
      v59 = 48;
      v60 = 0x7FEFFFFFFFFFFFFFLL;
      v61 = 40;
      v62 = 0x7FEFFFFFFFFFFFFFLL;
      v63 = 0xFFEFFFFFFFFFFFFFLL;
    }

    *(&v7->super.isa + v61) = v60;
    *(&v7->super.isa + v59) = v62;
    *(&v7->super.isa + v58) = v57;
    *(&v7->super.isa + v56) = v63;
    *(&v7->super.isa + v55) = 0x7FEFFFFFFFFFFFFFLL;
    *(&v7->super.isa + v54) = 0x7FEFFFFFFFFFFFFFLL;
    *(&v7->super.isa + v53) = 0xFFEFFFFFFFFFFFFFLL;
    *(&v7->super.isa + v52) = 0xFFEFFFFFFFFFFFFFLL;
    *(&v7->super.isa + v51) = 0x7FEFFFFFFFFFFFFFLL;
    *(&v7->super.isa + v50) = 0x7FEFFFFFFFFFFFFFLL;
    *(&v7->super.isa + v49) = 0xFFEFFFFFFFFFFFFFLL;
    *(&v7->super.isa + v48) = 0xFFEFFFFFFFFFFFFFLL;
    v7->_westOfDatelineCoord._minimum = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v7->_westOfDatelineCoord._maximum = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v45 = 0xFFEFFFFFFFFFFFFFLL;
    v47 = 0x7FEFFFFFFFFFFFFFLL;
    v43 = 0x7FEFFFFFFFFFFFFFLL;
    v46 = 0xFFEFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

LABEL_9:

  return v7;
}

@end