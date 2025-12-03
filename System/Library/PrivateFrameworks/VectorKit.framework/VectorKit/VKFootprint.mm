@interface VKFootprint
- (BOOL)containsGroundPoint:(const void *)point;
- (BOOL)rejectsRect:(const void *)rect;
- (Box<double,)_expandedBoundingRect;
- (Box<double,)boundingRect;
- (Matrix<double,)furthestGroundPoint;
- (Matrix<double,)nearestGroundPoint;
- (id)annotationCoordinateTest;
- (id)annotationRectTest;
- (void)computeFromCamera:(id)camera;
@end

@implementation VKFootprint

- (id)annotationRectTest
{
  [(VKFootprint *)self _expandedBoundingRect];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v3.f64[0] = v2;
  v3.f64[1] = v4;
  v9[2] = __33__VKFootprint_annotationRectTest__block_invoke;
  v9[3] = &__block_descriptor_80_e17_q40__0d8d16d24d32l;
  v10 = vcvtq_s64_f64(vbslq_s8(vcltzq_f64(v3), vnegq_f64(vrndpq_f64(vabsq_f64(v3))), v3));
  v11 = v2;
  v12 = v5;
  v13 = v4;
  v14 = v6;
  v7 = [v9 copy];

  return v7;
}

- (Box<double,)_expandedBoundingRect
{
  v2 = self->_boundingRect._minimum._e[0];
  v3 = self->_boundingRect._minimum._e[1];
  v4 = self->_boundingRect._maximum._e[0] - v2;
  v5 = self->_boundingRect._maximum._e[1] - v3;
  v6 = v3 + v5 * 0.5;
  v7 = fmax(v4, 0.0);
  v8 = fmax(v5, 0.0);
  v9 = v2 + v4 * 0.5 + v7 * -1.5;
  v10 = v6 + v8 * -1.5;
  v11 = v9 + v7 * 3.0;
  v12 = v10 + v8 * 3.0;
  v13 = fmax(v10, 0.0);
  v14 = fmin(v12, 1.0);
  result._maximum._e[1] = v14;
  result._maximum._e[0] = v11;
  result._minimum._e[1] = v13;
  result._minimum._e[0] = v9;
  return result;
}

uint64_t __33__VKFootprint_annotationRectTest__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v6 > v5)
  {
    return 0;
  }

  v8 = a1 + 48;
  v9 = a1 + 64;
  v10 = 1;
  do
  {
    v11 = 0;
    v20 = v6 + a2;
    v21 = a3;
    v22[0] = v6 + a4;
    v22[1] = a5;
    v12 = &v20;
    v13 = 1;
    while (*v12 >= *(v8 + 8 * v11) && v22[v11] <= *(v9 + 8 * v11))
    {
      v14 = v13;
      v13 = 0;
      v12 = &v21;
      v11 = 1;
      if ((v14 & 1) == 0)
      {
        return v10;
      }
    }

    v15 = 0;
    v16 = &v20;
    v17 = 1;
    while (*(v9 + 8 * v15) > *v16 && *(v8 + 8 * v15) < v22[v15])
    {
      v18 = v17;
      v17 = 0;
      v16 = &v21;
      v15 = 1;
      if ((v18 & 1) == 0)
      {
        return 2;
      }
    }

    result = 0;
  }

  while (v6++ != v5);
  return result;
}

- (Matrix<double,)nearestGroundPoint
{
  v2 = self->_nearestGroundPoint._e[0];
  v3 = self->_nearestGroundPoint._e[1];
  v4 = self->_nearestGroundPoint._e[2];
  result._e[2] = v4;
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (id)annotationCoordinateTest
{
  [(VKFootprint *)self _expandedBoundingRect];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v3.f64[0] = v2;
  v3.f64[1] = v4;
  v9[2] = __39__VKFootprint_annotationCoordinateTest__block_invoke;
  v9[3] = &__block_descriptor_80_e13_B24__0___dd_8l;
  v10 = vcvtq_s64_f64(vbslq_s8(vcltzq_f64(v3), vnegq_f64(vrndpq_f64(vabsq_f64(v3))), v3));
  v11 = v2;
  v12 = v5;
  v13 = v4;
  v14 = v6;
  v7 = [v9 copy];

  return v7;
}

BOOL __39__VKFootprint_annotationCoordinateTest__block_invoke(uint64_t a1, double a2, double a3)
{
  v5 = tan(a2 * 0.00872664626 + 0.785398163);
  v6 = log(v5);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v8 <= v7)
  {
    v11 = v6 * 0.159154943 + 0.5;
    v9 = 1;
    do
    {
      v12 = 0;
      v13 = a3 * 0.00277777778 + 0.5 + v8;
      v14 = 1;
      while (v13 >= *(a1 + 48 + 8 * v12) && v13 < *(a1 + 64 + 8 * v12))
      {
        v15 = v14;
        v14 = 0;
        v13 = v11;
        v12 = 1;
        if ((v15 & 1) == 0)
        {
          return v9;
        }
      }

      v16 = v8 == v7;
      v9 = v8++ < v7;
    }

    while (!v16);
  }

  else
  {
    return 0;
  }

  return v9;
}

- (Matrix<double,)furthestGroundPoint
{
  v2 = self->_furthestGroundPoint._e[0];
  v3 = self->_furthestGroundPoint._e[1];
  v4 = self->_furthestGroundPoint._e[2];
  result._e[2] = v4;
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (Box<double,)boundingRect
{
  v2 = self->_boundingRect._minimum._e[0];
  v3 = self->_boundingRect._minimum._e[1];
  v4 = self->_boundingRect._maximum._e[0];
  v5 = self->_boundingRect._maximum._e[1];
  result._maximum._e[1] = v5;
  result._maximum._e[0] = v4;
  result._minimum._e[1] = v3;
  result._minimum._e[0] = v2;
  return result;
}

- (BOOL)containsGroundPoint:(const void *)point
{
  v4 = 0;
  v5 = *point;
  v6 = *(point + 1);
  v7 = 1;
  v8 = *point;
  do
  {
    if (v8 < self->_boundingRect._minimum._e[v4] || v8 >= self->_boundingRect._maximum._e[v4])
    {
      return 0;
    }

    v9 = v7;
    v7 = 0;
    v8 = *(point + 1);
    v4 = 1;
  }

  while ((v9 & 1) != 0);
  memcpy(__dst, &self->_convexHull, sizeof(__dst));
  v10 = *(point + 2);
  *v25 = v5;
  v25[1] = v6;
  v25[2] = v10;
  v11 = LODWORD(__dst[0]);
  if (SLODWORD(__dst[0]) < 1)
  {
    return 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = 0;
      v15 = &__dst[3 * v12 + 1];
      v23 = *v15;
      v24 = v15[2];
      v16 = &__dst[3 * v12 + 19];
      v21 = *v16;
      v22 = v16[2];
      do
      {
        *&v25[v14 + 3] = *&v25[v14] - *(&v23 + v14 * 8);
        ++v14;
      }

      while (v14 != 3);
      v17 = 0;
      v18 = 0.0;
      do
      {
        v18 = v18 + *(&v21 + v17 * 8) * *&v25[v17 + 3];
        ++v17;
      }

      while (v17 != 3);
      if (v18 > 0.0)
      {
        break;
      }

      v13 = ++v12 >= v11;
    }

    while (v12 != v11);
  }

  return v13;
}

- (BOOL)rejectsRect:(const void *)rect
{
  v3 = 0;
  v4 = rect + 16;
  v5 = 1;
  do
  {
    if (*&v4[v3] <= self->_boundingRect._minimum._e[v3] || *(rect + v3) >= self->_boundingRect._maximum._e[v3])
    {
      return 1;
    }

    v6 = v5;
    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  p_convexHull = &self->_convexHull;
  edgeCount = self->_convexHull.edgeCount;
  if (edgeCount <= 0)
  {
    v12 = *rect;
  }

  else
  {
    v9 = 0;
    edgeOrigin = self->_convexHull.edgeOrigin;
    edgeNormal = self->_convexHull.edgeNormal;
    v12 = *rect;
    v13 = 1;
    do
    {
      v14 = &edgeOrigin[v9];
      v27 = *v14->_e;
      v28 = v14->_e[2];
      v15 = &edgeNormal[v9];
      v25 = *v15->_e;
      v26 = v15->_e[2];
      v23 = v12;
      v24 = 0;
      if (*&v25 < 0.0)
      {
        *&v23 = *v4;
      }

      if (*(&v25 + 1) < 0.0)
      {
        *(&v23 + 1) = *(rect + 3);
      }

      for (i = 0; i != 24; i += 8)
      {
        *(&v29 + i) = *(&v23 + i) - *(&v27 + i);
      }

      v17 = 0;
      v18 = 0.0;
      do
      {
        v18 = v18 + *(&v25 + v17) * *(&v29 + v17);
        v17 += 8;
      }

      while (v17 != 24);
      if (v18 > 0.0)
      {
        break;
      }

      v13 = ++v9 < edgeCount;
    }

    while (v9 != edgeCount);
    if (v13)
    {
      return 1;
    }
  }

  v22 = v12;
  v19 = *(rect + 3);
  *&v29 = v12;
  *(&v29 + 1) = v19;
  v30 = 0.0;
  v27 = v12;
  v28 = 0.0;
  if (edgeRejectsConvexHull(&v27, &v29, p_convexHull))
  {
    return 1;
  }

  v29 = v27;
  v30 = v28;
  v20 = *v4;
  *&v27 = *v4;
  *(&v27 + 1) = *(&v22 + 1);
  v28 = 0.0;
  if (edgeRejectsConvexHull(&v27, &v29, p_convexHull))
  {
    return 1;
  }

  v29 = v27;
  v30 = v28;
  *&v27 = v20;
  *(&v27 + 1) = v19;
  v28 = 0.0;
  if (edgeRejectsConvexHull(&v27, &v29, p_convexHull))
  {
    return 1;
  }

  v29 = v27;
  v30 = v28;
  *&v27 = v22;
  *(&v27 + 1) = v19;
  v28 = 0.0;
  return edgeRejectsConvexHull(&v27, &v29, p_convexHull);
}

- (void)computeFromCamera:(id)camera
{
  v75 = *MEMORY[0x1E69E9840];
  cameraCopy = camera;
  viewVolume = [cameraCopy viewVolume];
  position = [cameraCopy position];
  v74 = *position;
  v6 = *(position + 16);
  [cameraCopy forwardVector];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  corners = [viewVolume corners];
  v14 = 0;
  v15 = 0;
  self->_cornerGroundPointsCount = 0;
  cornerGroundPoints = self->_cornerGroundPoints;
  do
  {
    v17 = (&[VKFootprint computeFromCamera:]::edgeList + 8 * v15);
    v18 = *v17;
    LODWORD(v17) = v17[1];
    v19 = corners + 24 * v18;
    v71 = *(v19 + 16);
    v70 = *v19;
    v20 = corners + 24 * v17;
    v69 = *(v20 + 16);
    v68 = *v20;
    if (v71 != v69)
    {
      v21 = v71 / (v71 - v69);
      if (v21 >= 0.0 && v21 <= 1.0)
      {
        for (i = 0; i != 3; ++i)
        {
          *(&v72 + i * 8) = *(&v68 + i * 8) - v70.f64[i];
        }

        v24 = 0;
        v64 = v72;
        v65 = v73;
        do
        {
          *(&v72 + v24) = *(&v64 + v24) * v21;
          v24 += 8;
        }

        while (v24 != 24);
        v25 = 0;
        v66 = v72;
        v67 = v73;
        do
        {
          *(&v72 + v25 * 8) = *(&v66 + v25 * 8) + v70.f64[v25];
          ++v25;
        }

        while (v25 != 3);
        v26 = v73;
        v27 = &cornerGroundPoints[v14];
        v28 = v72;
        self->_cornerGroundPointsCount = ++v14;
        *v27->_e = v28;
        v27->_e[2] = v26;
      }
    }

    ++v15;
  }

  while (v15 != 12);
  v68 = v74;
  v69 = v6;
  *&v66 = v8;
  *(&v66 + 1) = v10;
  v67 = v12;
  *&self->_minDepth = xmmword_1B33B06C0;
  self->_maxDistance = 0.0;
  self->_minDistance = 1.79769313e308;
  if (v14 <= 0)
  {
    self->_boundingRect._minimum = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    self->_boundingRect._maximum = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    self->_convexHull.edgeCount = 0;
  }

  else
  {
    v29 = 0;
    v30 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v31 = 1.79769313e308;
    v32 = 0.0;
    v33 = 1.79769313e308;
    v34 = 0.0;
    v35 = 1.79769313e308;
    v36 = 1.79769313e308;
    do
    {
      v37 = 0;
      v38 = &cornerGroundPoints[v29];
      v70 = *v38->_e;
      v71 = v38->_e[2];
      v39 = v70;
      do
      {
        *(&v72 + v37 * 8) = v70.f64[v37] - *(&v68 + v37 * 8);
        ++v37;
      }

      while (v37 != 3);
      v40 = 0;
      v41 = 0.0;
      do
      {
        v41 = v41 + *(&v66 + v40) * *(&v72 + v40);
        v40 += 8;
      }

      while (v40 != 24);
      v42 = 0;
      v35 = fmin(v35, v39.f64[1]);
      do
      {
        *(&v72 + v42 * 8) = v70.f64[v42] - *(&v68 + v42 * 8);
        ++v42;
      }

      while (v42 != 3);
      v43 = 0;
      v34 = fmax(v41, v34);
      v44 = 0.0;
      do
      {
        v44 = v44 + *(&v72 + v43) * *(&v72 + v43);
        v43 += 8;
      }

      while (v43 != 24);
      v45 = sqrt(v44);
      if (v45 > v32)
      {
        *self->_furthestGroundPoint._e = *v38->_e;
        self->_furthestGroundPoint._e[2] = v38->_e[2];
        self->_maxDistance = v45;
        v32 = v45;
      }

      if (v45 < v31)
      {
        *self->_nearestGroundPoint._e = v70;
        self->_nearestGroundPoint._e[2] = v71;
        self->_minDistance = v45;
        v31 = v45;
      }

      v36 = fmin(v36, v39.f64[0]);
      v33 = fmin(v41, v33);
      v30 = vmaxnmq_f64(v30, v39);
      ++v29;
    }

    while (v29 != v14);
    v46 = 0;
    v47 = 0;
    self->_minDepth = v33;
    self->_maxDepth = v34;
    self->_boundingRect._minimum._e[0] = v36;
    self->_boundingRect._minimum._e[1] = v35;
    self->_boundingRect._maximum = v30;
    v48 = self->_cornerGroundPoints;
    self->_convexHull.edgeCount = 0;
    do
    {
      v49 = 0;
      v50 = &cornerGroundPoints[v46];
      v51 = self->_cornerGroundPoints;
      do
      {
        if (v46 != v49)
        {
          v52 = 0;
          v70 = *v50->_e;
          v71 = v50->_e[2];
          do
          {
            *(&v72 + v52 * 8) = v51->_e[v52] - v48->_e[v52];
            ++v52;
          }

          while (v52 != 3);
          v53 = 0;
          v54 = 0;
          *&v68 = -*(&v72 + 1);
          *(&v68 + 1) = v72;
          v69 = v73;
          do
          {
            if (v53 != v46 && v53 != v49)
            {
              v55 = 0;
              v56 = &cornerGroundPoints[v53];
              v66 = *v56->_e;
              v67 = v56->_e[2];
              do
              {
                *(&v72 + v55 * 8) = *(&v66 + v55 * 8) - v70.f64[v55];
                ++v55;
              }

              while (v55 != 3);
              v57 = 0;
              v58 = 0.0;
              do
              {
                v58 = v58 + *(&v68 + v57) * *(&v72 + v57);
                v57 += 8;
              }

              while (v57 != 24);
              if (v58 > 0.0)
              {
                break;
              }
            }

            v54 = ++v53 >= v14;
          }

          while (v53 != v14);
          if (v54 && v47 <= 5)
          {
            v59 = &self->_convexHull.edgeOrigin[v47];
            v60 = *v50->_e;
            v59->_e[2] = v50->_e[2];
            *v59->_e = v60;
            v61 = &self->_convexHull.edgeNormal[v47];
            v61->_e[2] = v69;
            *v61->_e = v68;
            self->_convexHull.edgeCount = ++v47;
          }
        }

        ++v49;
        ++v51;
      }

      while (v49 != v14);
      ++v46;
      ++v48;
    }

    while (v46 != v14);
  }

  if (v12 >= -0.00000011920929)
  {
    v62 = 3.40282347e38;
  }

  else
  {
    v62 = v6 / -v12;
  }

  self->_centerDepth = v62;
}

@end