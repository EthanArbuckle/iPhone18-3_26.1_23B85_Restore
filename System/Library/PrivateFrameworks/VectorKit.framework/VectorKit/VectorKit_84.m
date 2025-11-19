void md::RouteCollisionObject<md::GeocentricPointSource>::computeRayBoundsWithinFrustum(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, double *a5)
{
  v10 = a2 + 24;
LABEL_2:
  if (*a3)
  {
    v47 = *(a3 + 24);
    v48 = *(a3 + 40);
    v49 = *(a3 + 48);
    v50 = *(a3 + 64);
    v33 = gm::Box<double,3>::center<double>(&v47);
    v34 = 0;
    *&v51 = v33;
    *(&v51 + 1) = v35;
    v52 = v36;
    do
    {
      v53.f64[v34] = *(&v51 + v34 * 8) - *(a2 + v34 * 8);
      ++v34;
    }

    while (v34 != 3);
    v37 = 0;
    v38 = 0.0;
    do
    {
      v38 = v38 + v53.f64[v37] * *(v10 + v37 * 8);
      ++v37;
    }

    while (v37 != 3);
    for (i = 0; i != 24; i += 8)
    {
      *(&v47 + i) = fabs(*(v10 + i));
    }

    v40 = 0;
    v51 = v47;
    v52 = v48;
    v47 = *(a3 + 24);
    v48 = *(a3 + 40);
    v41 = *(a3 + 48);
    v50 = *(a3 + 64);
    v49 = v41;
    do
    {
      v53.f64[v40] = *(&v49 + v40 * 8) - *(&v47 + v40 * 8);
      ++v40;
    }

    while (v40 != 3);
    v42 = 0;
    v43 = 0.0;
    v53 = vmaxnmq_f64(v53, 0);
    v54 = fmax(v54, 0.0);
    do
    {
      v43 = v43 + v53.f64[v42] * *(&v51 + v42 * 8);
      ++v42;
    }

    while (v42 != 3);
    v44 = v43 * 0.5;
    v45 = v38 - v44;
    v46 = fmax(v44 + v38, a5[1]);
    *a5 = fmin(*a5, v45);
    a5[1] = v46;
  }

  else if (gm::Range<md::PointSource::SegmentIndex>::overlapsRange((a3 + 88), a4))
  {
    v11 = 0;
    v47 = *(a3 + 24);
    v48 = *(a3 + 40);
    v49 = *(a3 + 48);
    v50 = *(a3 + 64);
    while (1)
    {
      v12 = 0;
      v13 = *(a1 + v11 + 16);
      v51 = *(a1 + v11);
      v52 = v13;
      do
      {
        v14 = (&v47 + v12 * 8);
        if (*(&v51 + v12 * 8) >= 0.0)
        {
          v14 = (&v49 + v12 * 8);
        }

        v53.f64[v12++] = *v14;
      }

      while (v12 != 3);
      v15 = 0;
      v16 = 0.0;
      do
      {
        v16 = v16 + *(a1 + v11 + v15 * 8) * v53.f64[v15];
        ++v15;
      }

      while (v15 != 3);
      if (*(a1 + v11 + 24) + v16 < 0.0)
      {
        break;
      }

      v11 += 32;
      if (v11 == 192)
      {
        v18 = *a5;
        v17 = a5[1];
        if (v17 < *a5)
        {
          goto LABEL_28;
        }

        v47 = *(a3 + 24);
        v48 = *(a3 + 40);
        v49 = *(a3 + 48);
        v50 = *(a3 + 64);
        v19 = gm::Box<double,3>::center<double>(&v47);
        v20 = 0;
        *&v51 = v19;
        *(&v51 + 1) = v21;
        v52 = v22;
        do
        {
          v53.f64[v20] = *(&v51 + v20 * 8) - *(a2 + v20 * 8);
          ++v20;
        }

        while (v20 != 3);
        v23 = 0;
        v24 = 0.0;
        do
        {
          v24 = v24 + v53.f64[v23] * *(v10 + v23 * 8);
          ++v23;
        }

        while (v23 != 3);
        for (j = 0; j != 24; j += 8)
        {
          *(&v47 + j) = fabs(*(v10 + j));
        }

        v26 = 0;
        v51 = v47;
        v52 = v48;
        v47 = *(a3 + 24);
        v48 = *(a3 + 40);
        v49 = *(a3 + 48);
        v50 = *(a3 + 64);
        do
        {
          v53.f64[v26] = *(&v49 + v26 * 8) - *(&v47 + v26 * 8);
          ++v26;
        }

        while (v26 != 3);
        v27 = 0;
        v28 = 0.0;
        v53 = vmaxnmq_f64(v53, 0);
        v54 = fmax(v54, 0.0);
        do
        {
          v28 = v28 + v53.f64[v27] * *(&v51 + v27 * 8);
          ++v27;
        }

        while (v27 != 3);
        v29 = v28 * 0.5;
        v30 = v24 - v29;
        v31 = v29 + v24;
        if (v18 > v30 || v31 > v17)
        {
LABEL_28:
          md::RouteCollisionObject<md::GeocentricPointSource>::computeRayBoundsWithinFrustum(a1, a2, *(a3 + 8), a4, a5);
          a3 = *(a3 + 16);
          goto LABEL_2;
        }

        return;
      }
    }
  }
}

void md::GeocentricRouteCollider::intersectRouteWithFrustum(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = a3;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  v11 = v9;
  if ([v9 pointCount])
  {
    v10 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v8, v11);
    if (v10)
    {
      md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustum(v10, a2, a4, a5);
    }
  }
}

void sub_1B2DC6D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustum(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v8 = *(a3 + 8);
  v9 = *a3;
  if (v8 > *a3 || (v10 = *a3, v8 == v9) && (v10 = *(a3 + 8), *(a3 + 12) > *(a3 + 4)))
  {
    if (v9 >= [*(a1 + 8) pointCount] - 1)
    {
      return;
    }

    v10 = *a3;
  }

  v11 = md::RouteCollisionObject<md::GeocentricPointSource>::segmentIndexForVertexIndex(a1, v10, 0);
  v12 = v11;
  if (*(a3 + 12) <= 0.0)
  {
    v13 = *(a3 + 8);
  }

  else
  {
    v13 = *(a3 + 8) + 1;
  }

  v14 = v11;
  v15 = md::RouteCollisionObject<md::GeocentricPointSource>::segmentIndexForVertexIndex(a1, v13, 1);
  if (v14 < v15 || (v14 == v15 ? (v17 = HIWORD(v12) >= HIWORD(v15)) : (v17 = 1), v16 = v12, !v17))
  {
    v16 = v15;
  }

  v94[0] = md::GeocentricPointSource::segmentWorldPoint(*(a1 + 128), v12, 0);
  v94[1] = v18;
  v94[2] = v19;
  md::GeocentricPointSource::segmentWorldPoint(*(a1 + 128), v16, 1);
  for (i = 0; i != 192; i += 32)
  {
    v21 = 0;
    v22 = a2 + i;
    v23 = 0.0;
    do
    {
      v23 = v23 + *(v22 + v21 * 8) * *&v94[v21];
      ++v21;
    }

    while (v21 != 3);
    v24 = *(v22 + 24) + v23;
    if (v24 < 0.0)
    {
      break;
    }
  }

  v25 = *(a1 + 72);
  v93[0] = v12;
  v93[1] = v16;
  md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustumEdges(a1, a2, v25, v93, &v95);
  v27 = v95;
  v28 = v96;
  v29 = 126 - 2 * __clz((v96 - v95) >> 3);
  v30 = v96 - v95;
  if (v96 == v95)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,false>(v95, v96, v31, 1, v26);
  if (v30 >= 9)
  {
    v32 = *(v27 + 2);
    if (v32 >= *a3 && (v32 != *a3 || *(v27 + 3) >= *(a3 + 4)))
    {
      goto LABEL_32;
    }

    v30 = v28 - (v27 + 16);
    if (v28 != v27 + 16)
    {
      memmove(v27, v27 + 16, v28 - (v27 + 16));
    }

    v28 -= 16;
    v96 = &v27[v30];
    if (v30 >= 9)
    {
LABEL_32:
      v33 = *&v27[v30 - 16];
      v34 = *(a3 + 8);
      if (v33 > v34 || v33 == v34 && *&v27[v30 - 12] > *(a3 + 12))
      {
        v96 = v28 - 16;
        v28 -= 16;
      }
    }
  }

  if (v28 == v27)
  {
    v35 = v27;
  }

  else
  {
    if (*v27 < *a3 || *v27 == *a3 && *(v27 + 1) < *(a3 + 4))
    {
      *v27 = *a3;
    }

    v36 = *(v28 - 2);
    v37 = *(a3 + 8);
    if (v36 > v37 || v36 == v37 && *(v28 - 1) > *(a3 + 12))
    {
      *(v28 - 1) = *(a3 + 8);
      v27 = v95;
      v28 = v96;
    }

    v35 = v28;
  }

  v38 = (((v35 - v27) >> 3) + 1) >> 1;
  if (v24 < 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = v38 + 1;
  }

  std::vector<gm::Range<geo::PolylineCoordinate>>::reserve(a4, v39);
  v40 = v27;
  if (v24 < 0.0)
  {
LABEL_75:
    if (v40 == v28)
    {
      goto LABEL_105;
    }

    v61 = v40 + 8;
    while (1)
    {
      v63 = *(v61 - 2);
      v62 = *(v61 - 1);
      if (v61 == v28)
      {
        break;
      }

      v64 = a4[1];
      v65 = a4[2];
      if (v64 >= v65)
      {
        v68 = (v64 - *a4) >> 4;
        v69 = v68 + 1;
        if ((v68 + 1) >> 60)
        {
          goto LABEL_110;
        }

        v70 = v65 - *a4;
        if (v70 >> 3 > v69)
        {
          v69 = v70 >> 3;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF0)
        {
          v71 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v69;
        }

        if (v71)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v71);
        }

        v72 = 16 * v68;
        v73 = *v61;
        *v72 = v63;
        *(v72 + 4) = v62;
        *(v72 + 8) = v73;
        v67 = 16 * v68 + 16;
        v74 = a4[1] - *a4;
        v75 = (16 * v68 - v74);
        memcpy(v75, *a4, v74);
        v76 = *a4;
        *a4 = v75;
        a4[1] = v67;
        a4[2] = 0;
        if (v76)
        {
          operator delete(v76);
        }
      }

      else
      {
        v66 = *v61;
        *v64 = v63;
        *(v64 + 1) = v62;
        *(v64 + 1) = v66;
        v67 = (v64 + 16);
      }

      a4[1] = v67;
      v77 = v61 + 8;
      v61 += 16;
      if (v77 == v28)
      {
        goto LABEL_105;
      }
    }

    v78 = a4[1];
    v79 = a4[2];
    if (v78 < v79)
    {
      v80 = *(a3 + 8);
      *v78 = v63;
      v78[1] = v62;
      *(v78 + 1) = v80;
      v47 = (v78 + 4);
      goto LABEL_104;
    }

    v81 = (v78 - *a4) >> 4;
    v82 = v81 + 1;
    if (!((v81 + 1) >> 60))
    {
      v83 = v79 - *a4;
      if (v83 >> 3 > v82)
      {
        v82 = v83 >> 3;
      }

      if (v83 >= 0x7FFFFFFFFFFFFFF0)
      {
        v84 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v84 = v82;
      }

      if (v84)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v84);
      }

      v85 = 16 * v81;
      v86 = *(a3 + 8);
      *v85 = v63;
      *(v85 + 4) = v62;
      *(v85 + 8) = v86;
      v47 = 16 * v81 + 16;
      v87 = a4[1] - *a4;
      v88 = v85 - v87;
      memcpy((v85 - v87), *a4, v87);
      v89 = *a4;
      *a4 = v88;
      a4[1] = v47;
      a4[2] = 0;
      if (!v89)
      {
        goto LABEL_104;
      }

      goto LABEL_103;
    }

    goto LABEL_110;
  }

  if (v27 != v28)
  {
    v41 = a4[1];
    v42 = a4[2];
    if (v41 >= v42)
    {
      v48 = (v41 - *a4) >> 4;
      v49 = v48 + 1;
      if ((v48 + 1) >> 60)
      {
        goto LABEL_110;
      }

      v50 = v42 - *a4;
      if (v50 >> 3 > v49)
      {
        v49 = v50 >> 3;
      }

      if (v50 >= 0x7FFFFFFFFFFFFFF0)
      {
        v51 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v51);
      }

      v56 = (16 * v48);
      v57 = *v27;
      *v56 = *a3;
      v56[1] = v57;
      v44 = 16 * v48 + 16;
      v58 = a4[1] - *a4;
      v59 = 16 * v48 - v58;
      memcpy(v56 - v58, *a4, v58);
      v60 = *a4;
      *a4 = v59;
      a4[1] = v44;
      a4[2] = 0;
      if (v60)
      {
        operator delete(v60);
      }
    }

    else
    {
      v43 = *v27;
      *v41 = *a3;
      *(v41 + 1) = v43;
      v44 = (v41 + 16);
    }

    v40 = v27 + 8;
    a4[1] = v44;
    goto LABEL_75;
  }

  v46 = a4[1];
  v45 = a4[2];
  if (v46 >= v45)
  {
    v52 = (v46 - *a4) >> 4;
    v53 = v52 + 1;
    if (!((v52 + 1) >> 60))
    {
      v54 = v45 - *a4;
      if (v54 >> 3 > v53)
      {
        v53 = v54 >> 3;
      }

      if (v54 >= 0x7FFFFFFFFFFFFFF0)
      {
        v55 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53;
      }

      if (v55)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v55);
      }

      v90 = (16 * v52);
      *v90 = *a3;
      v47 = 16 * v52 + 16;
      v91 = a4[1] - *a4;
      v92 = v90 - v91;
      memcpy(v90 - v91, *a4, v91);
      v89 = *a4;
      *a4 = v92;
      a4[1] = v47;
      a4[2] = 0;
      if (!v89)
      {
        goto LABEL_104;
      }

LABEL_103:
      operator delete(v89);
      goto LABEL_104;
    }

LABEL_110:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v46 = *a3;
  v47 = (v46 + 16);
LABEL_104:
  a4[1] = v47;
LABEL_105:
  if (v27)
  {
    v96 = v27;
    operator delete(v27);
  }
}

void sub_1B2DC73AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

double md::GeocentricPointSource::segmentWorldPoint(uint64_t a1, int a2, int a3)
{
  v4 = HIWORD(a2);
  v5 = *(a1 + 8 * a2);
  v6 = [v5 points];
  if (v5)
  {
    [v5 bounds];
    v8 = v21;
    v7 = v22;
    v10 = v23;
    v9 = v24;
  }

  else
  {
    v9 = 0.0;
    v7 = 0.0;
    v10 = 0.0;
    v8 = 0.0;
  }

  v11 = v4;
  if (a3 == 1)
  {
    v11 = v4 + 1;
  }

  v12 = (v6 + 12 * v11);
  v13 = (v8 + v10 * *v12) * 6.28318531 / *MEMORY[0x1E69A1690];
  v14 = exp(3.14159265 - (v7 + v9 * (1.0 - v12[1])) * 6.28318531 / *(MEMORY[0x1E69A1690] + 8));
  v15 = atan(v14) * 2.0 + -1.57079633;
  v16 = fmod(v13, 6.28318531);
  v17 = fmod(v16 + 6.28318531, 6.28318531) + -3.14159265;
  v18 = __sincos_stret(v15);
  v19 = 6378137.0 / sqrt(v18.__sinval * v18.__sinval * -0.00669437999 + 1.0) * v18.__cosval * __sincos_stret(v17).__cosval;

  return v19;
}

void md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustumEdges(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
LABEL_1:
  if (*a3)
  {
    v23 = *(a3 + 72);
    if (v23)
    {
      for (i = 0; i < v23; ++i)
      {
        v25 = (*(a3 + 80) + 4 * i);
        v26 = *v25;
        v27 = v25[1];
        v28 = *a4;
        if (v28 >= v26 && (v28 != v26 || a4[1] > v27))
        {
          continue;
        }

        v30 = a4[2];
        if (v30 <= v26 && (v30 != v26 || a4[3] < v27))
        {
          continue;
        }

        *&v51 = md::GeocentricPointSource::segmentWorldPoint(*(a1 + 128), v26 | (v27 << 16), 0);
        *(&v51 + 1) = v32;
        v52 = v33;
        v34 = md::GeocentricPointSource::segmentWorldPoint(*(a1 + 128), v26 | (v27 << 16), 1);
        v35 = 0;
        *&v49 = v34;
        *(&v49 + 1) = v36;
        v50 = v37;
        do
        {
          *(&v43 + v35) = *(&v49 + v35) - *(&v51 + v35);
          v35 += 8;
        }

        while (v35 != 24);
        v38 = v44;
        v39 = v43;
        v43 = v51;
        v44 = v52;
        v45 = v39;
        v46 = v38;
        *&v51 = 0;
        *&v49 = 0;
        if (geo::Intersect::internal::intersection<double,std::array<gm::Plane3<double>,6ul>>(a2, &v43, 2, &v51, &v49))
        {
          v40 = [*(*(a1 + 48) + 8 * v26) startPointIndex] + v27;
          if (*&v51 > 0.0)
          {
            v41 = *&v51;
            *&v47 = __PAIR64__(LODWORD(v41), v40);
            if (v41 >= 1.0)
            {
              LODWORD(v47) = v40 + vcvtms_u32_f32(v41);
              *(&v47 + 1) = v41 - floorf(v41);
            }

            std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a5, &v47);
          }

          if (*&v49 < 1.0)
          {
            v42 = *&v49;
            *&v47 = __PAIR64__(LODWORD(v42), v40);
            if (v42 >= 1.0)
            {
              LODWORD(v47) = v40 + vcvtms_u32_f32(v42);
              *(&v47 + 1) = v42 - floorf(v42);
            }

            std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a5, &v47);
          }
        }

        v23 = *(a3 + 72);
      }
    }
  }

  else if (gm::Range<md::PointSource::SegmentIndex>::overlapsRange((a3 + 88), a4))
  {
    v10 = 0;
    v11 = 0;
    v43 = *(a3 + 24);
    v44 = *(a3 + 40);
    v45 = *(a3 + 48);
    v46 = *(a3 + 64);
    while (1)
    {
      v12 = 0;
      v13 = *(a2 + v11 + 16);
      v49 = *(a2 + v11);
      v50 = v13;
      do
      {
        v14 = &v43 + v12;
        if (*(&v49 + v12) >= 0.0)
        {
          v14 = &v45 + v12;
        }

        *(&v51 + v12) = *v14;
        v12 += 8;
      }

      while (v12 != 24);
      v15 = 0;
      v47 = v51;
      v48 = v52;
      v16 = 0.0;
      do
      {
        v16 = v16 + *(a2 + v11 + v15) * *(&v47 + v15);
        v15 += 8;
      }

      while (v15 != 24);
      v17 = *(a2 + v11 + 24);
      if (v17 + v16 < 0.0)
      {
        break;
      }

      for (j = 0; j != 24; j += 8)
      {
        *(&v51 + j) = -*(a2 + v11 + j);
      }

      v19 = 0;
      v49 = v51;
      v50 = v52;
      do
      {
        v20 = &v43 + v19;
        if (*(&v49 + v19) >= 0.0)
        {
          v20 = &v45 + v19;
        }

        *(&v51 + v19) = *v20;
        v19 += 8;
      }

      while (v19 != 24);
      v21 = 0;
      v22 = 0.0;
      do
      {
        v22 = v22 + *(a2 + v11 + v21) * *(&v51 + v21);
        v21 += 8;
      }

      while (v21 != 24);
      if (v17 + v22 >= 0.0)
      {
        ++v10;
      }

      v11 += 32;
      if (v11 == 192)
      {
        if (v10 == 6)
        {
          return;
        }

        md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustumEdges(a1, a2, *(a3 + 8), a4, a5);
        a3 = *(a3 + 16);
        goto LABEL_1;
      }
    }
  }
}

void md::GeocentricRouteCollider::intersectRouteWithFrustum(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v9 = a3;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v7 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v6, v9);
  v8 = v9;
  if (v7)
  {
    v10 = 0;
    v11 = [v9 pointCount] - 1;
    v12 = 0;
    md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustum(v7, a2, &v10, a4);
    v8 = v9;
  }
}

void sub_1B2DC79C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void md::GeocentricRouteCollider::~GeocentricRouteCollider(md::GeocentricRouteCollider *this)
{
  v1 = *(this + 1);
  *this = &unk_1F2A001D0;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = v1;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
    MEMORY[0x1B8C62190](v1, 0x20C40960023A9);
  }

  JUMPOUT(0x1B8C62190);
}

{
  v1 = *(this + 1);
  *this = &unk_1F2A001D0;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = v1;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
    MEMORY[0x1B8C62190](v1, 0x20C40960023A9);
  }
}

void *geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A4C308;
  a1[1] = v3;
  return a1;
}

md::PointSource *md::PointSource::PointSource(md::PointSource *this, GEOComposedRoute *a2)
{
  v3 = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  v4 = [(GEOComposedRoute *)v3 sections];
  v5 = [v4 count];

  std::vector<GEOComposedRouteSection * {__strong}>::resize(this, v5);
  if (v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [(GEOComposedRoute *)v3 sections];
      v9 = [v8 objectAtIndexedSubscript:v6];

      v10 = *(*this + 8 * v6);
      *(*this + 8 * v6) = v9;

      v6 = v7;
    }

    while (v5 > v7++);
  }

  return this;
}

void sub_1B2DC7C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::vector<GEOComposedRouteSection * {__strong}>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 8 * a2;
      while (v4 != v11)
      {
        v12 = *(v4 - 8);
        v4 -= 8;
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v13 = a1;
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    a1[1] = v4 + 8 * v6;
  }
}

void std::vector<md::PointSource::SegmentIndex>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

void md::RouteCollisionObject<md::MercatorPointSource>::buildTopDownAABBTree(void *a1, char **a2, int *a3, int *a4)
{
  v4 = a4;
  v7 = a1;
  while (1)
  {
    v8 = v7[15];
    if (!v8)
    {
      v9 = malloc_type_malloc(80 * v7[13], 0x1022040D9F4F753uLL);
      v189 = *&v9;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>((v7 + 10), v9);
      v8 = v7[15];
      v10 = &v9[80 * v7[13] - 80];
      if (v10 >= v9)
      {
        do
        {
          v11 = v10;
          *v10 = v8;
          v10 -= 80;
          v8 = v11;
        }

        while (v10 >= v9);
        v8 = v10 + 80;
      }

      v7[15] = v8;
    }

    v7[15] = *v8;
    *a2 = v8;
    if (v4 == a3)
    {
      v12 = 1.79769313e308;
      v13 = -1.79769313e308;
      v14 = -1.79769313e308;
      v15 = 1.79769313e308;
    }

    else
    {
      v15 = 1.79769313e308;
      v13 = -1.79769313e308;
      v16 = a3;
      v14 = -1.79769313e308;
      v12 = 1.79769313e308;
      do
      {
        v17 = md::MercatorPointSource::segmentWorldPoint(v7[16], *v16, 0);
        v18 = fmin(v17, v15);
        v19 = fmax(v14, v17);
        v21 = fmin(v20, v12);
        v22 = fmax(v13, v20);
        v23 = *v16++;
        v24 = md::MercatorPointSource::segmentWorldPoint(v7[16], v23, 1);
        v15 = fmin(v24, v18);
        v14 = fmax(v19, v24);
        v12 = fmin(v25, v21);
        v13 = fmax(v22, v25);
      }

      while (v16 != v4);
    }

    *(v8 + 3) = v15;
    *(v8 + 4) = v12;
    *(v8 + 5) = v14;
    *(v8 + 6) = v13;
    LODWORD(v189) = -1;
    LODWORD(v187) = 0;
    if (v4 <= a3)
    {
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      LOWORD(v26) = 0;
      LOWORD(v27) = 0;
      v28 = 0xFFFF;
      LOWORD(v29) = -1;
      v30 = a3;
      do
      {
        v31 = *v30;
        v32 = v31 == v29;
        if (v31 > v29 || (v33 = v30, v32) && (v33 = v30, v28 < *(v30 + 1)))
        {
          v33 = &v189;
        }

        v29 = *v33;
        LODWORD(v189) = v29;
        v34 = v31 == v27;
        if (v31 < v27 || (v35 = v30, v34) && (v35 = v30, *(v30 + 1) < v26))
        {
          v35 = &v187;
        }

        v28 = WORD1(v29);
        v27 = *v35;
        LODWORD(v187) = v27;
        v30 = (v30 + 4);
        v26 = WORD1(v27);
      }

      while (v30 < v4);
      v36 = v29 | (v27 << 32);
    }

    v37 = (v4 - a3) >> 2;
    *(v8 + 9) = v36;
    if (v37 <= 4)
    {
      break;
    }

    *v8 = 0;
    *(v8 + 14) = v37;
    v38 = vmaxnmq_f64(vsubq_f64(*(v8 + 40), *(v8 + 24)), 0);
    v179 = v8;
    *(v8 + 8) = 0;
    v181 = a3;
    a3 += (v4 - a3 + ((v4 - a3) >> 63)) >> 1;
    v185 = v7;
    v186 = *&vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v38, 1), v38)) & 1;
    if (a3 != v4)
    {
      v39 = v181;
      v40 = v4;
      v180 = a3;
      do
      {
        v41 = v40 - v39;
        if (v41 < 2)
        {
          break;
        }

        if (v41 == 3)
        {
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::MercatorPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,2> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(v39, v39 + 1, v40 - 1, &v185);
          break;
        }

        if (v41 == 2)
        {
          v151 = v185;
          v189 = md::MercatorPointSource::segmentWorldPoint(v185[16], *(v40 - 1), 0);
          v190 = v152;
          v153 = v186;
          v154 = *(&v189 + v186);
          v187 = md::MercatorPointSource::segmentWorldPoint(v151[16], *(v40 - 1), 1);
          v188 = v155;
          v156 = (*(&v187 + v153) + v154) * 0.5;
          v189 = md::MercatorPointSource::segmentWorldPoint(v151[16], *v39, 0);
          v190 = v157;
          v158 = *(&v189 + v153);
          v187 = md::MercatorPointSource::segmentWorldPoint(v151[16], *v39, 1);
          v188 = v159;
          if (v156 < (*(&v187 + v153) + v158) * 0.5)
          {
            v160 = *v39;
            *v39 = *(v40 - 1);
            *(v40 - 1) = v160;
          }

          break;
        }

        v182 = v40;
        if (v41 <= 7)
        {
          v161 = v40 - 1;
          if (v40 - 1 != v39)
          {
            v184 = v40 - 1;
            do
            {
              v162 = v39++;
              if (v162 != v40 && v39 != v182)
              {
                v163 = v185;
                v164 = v186;
                v165 = v39;
                v166 = v162;
                v167 = v39;
                do
                {
                  v189 = md::MercatorPointSource::segmentWorldPoint(v163[16], *v165, 0);
                  v190 = v168;
                  v169 = *(&v189 + v164);
                  v170 = *v167++;
                  v187 = md::MercatorPointSource::segmentWorldPoint(v163[16], v170, 1);
                  v188 = v171;
                  v172 = (*(&v187 + v164) + v169) * 0.5;
                  v189 = md::MercatorPointSource::segmentWorldPoint(v163[16], *v166, 0);
                  v190 = v173;
                  v174 = *(&v189 + v164);
                  v187 = md::MercatorPointSource::segmentWorldPoint(v163[16], *v166, 1);
                  v188 = v175;
                  if (v172 < (*(&v187 + v164) + v174) * 0.5)
                  {
                    v166 = v165;
                  }

                  v165 = v167;
                }

                while (v167 != v182);
                v4 = a4;
                a3 = v180;
                v161 = v184;
                if (v166 != v162)
                {
                  v176 = *v162;
                  *v162 = *v166;
                  *v166 = v176;
                }
              }

              v40 = v182;
            }

            while (v39 != v161);
          }

          break;
        }

        v42 = &v39[(v40 - v39) >> 3];
        v43 = v40 - 1;
        v183 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::MercatorPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,2> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(v39, v42, v40 - 1, &v185);
        v44 = v185;
        v189 = md::MercatorPointSource::segmentWorldPoint(v185[16], *v39, 0);
        v190 = v45;
        v46 = v186;
        v47 = *(&v189 + v186);
        v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v39, 1);
        v188 = v48;
        v49 = (*(&v187 + v46) + v47) * 0.5;
        v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v42, 0);
        v190 = v50;
        v51 = *(&v189 + v46);
        v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v42, 1);
        v188 = v52;
        if (v49 < (*(&v187 + v46) + v51) * 0.5)
        {
LABEL_42:
          v65 = v39 + 1;
          if (v39 + 1 >= v43)
          {
            v69 = v39 + 1;
          }

          else
          {
            v66 = v39 + 1;
            while (1)
            {
              v67 = v185;
              v68 = v186;
              do
              {
                v69 = v66;
                v189 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v66, 0);
                v190 = v70;
                v71 = *(&v189 + v68);
                v72 = *v66++;
                v187 = md::MercatorPointSource::segmentWorldPoint(v67[16], v72, 1);
                v188 = v73;
                v74 = (*(&v187 + v68) + v71) * 0.5;
                v189 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v42, 0);
                v190 = v75;
                v76 = *(&v189 + v68);
                v187 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v42, 1);
                v188 = v77;
              }

              while (v74 < (*(&v187 + v68) + v76) * 0.5);
              do
              {
                v78 = *--v43;
                v189 = md::MercatorPointSource::segmentWorldPoint(v67[16], v78, 0);
                v190 = v79;
                v80 = *(&v189 + v68);
                v187 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v43, 1);
                v188 = v81;
                v82 = (*(&v187 + v68) + v80) * 0.5;
                v189 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v42, 0);
                v190 = v83;
                v84 = *(&v189 + v68);
                v187 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v42, 1);
                v188 = v85;
              }

              while (v82 >= (*(&v187 + v68) + v84) * 0.5);
              if (v69 >= v43)
              {
                break;
              }

              v86 = *v69;
              *v69 = *v43;
              *v43 = v86;
              ++v183;
              if (v42 == v69)
              {
                v42 = v43;
              }
            }

            v4 = a4;
            v40 = v182;
          }

          v87 = v183;
          if (v69 != v42)
          {
            v88 = v185;
            v189 = md::MercatorPointSource::segmentWorldPoint(v185[16], *v42, 0);
            v190 = v89;
            v90 = v186;
            v91 = *(&v189 + v186);
            v187 = md::MercatorPointSource::segmentWorldPoint(v88[16], *v42, 1);
            v188 = v92;
            v93 = (*(&v187 + v90) + v91) * 0.5;
            v189 = md::MercatorPointSource::segmentWorldPoint(v88[16], *v69, 0);
            v190 = v94;
            v95 = *(&v189 + v90);
            v187 = md::MercatorPointSource::segmentWorldPoint(v88[16], *v69, 1);
            v188 = v96;
            if (v93 < (*(&v187 + v90) + v95) * 0.5)
            {
              v97 = *v69;
              *v69 = *v42;
              *v42 = v97;
              v87 = v183 + 1;
            }

            v40 = v182;
          }

          a3 = v180;
          if (v69 == v180)
          {
            break;
          }

          if (!v87)
          {
            v99 = v185;
            v100 = v186;
            if (v69 <= v180)
            {
              v116 = v69 + 1;
              while (v116 != v40)
              {
                v189 = md::MercatorPointSource::segmentWorldPoint(v99[16], *v116, 0);
                v190 = v117;
                v118 = *(&v189 + v100);
                v187 = md::MercatorPointSource::segmentWorldPoint(v99[16], *v116, 1);
                v188 = v119;
                v120 = (*(&v187 + v100) + v118) * 0.5;
                v189 = md::MercatorPointSource::segmentWorldPoint(v99[16], *(v116 - 1), 0);
                v190 = v121;
                v122 = *(&v189 + v100);
                v187 = md::MercatorPointSource::segmentWorldPoint(v99[16], *(v116 - 1), 1);
                v188 = v123;
                ++v116;
                if (v120 < (*(&v187 + v100) + v122) * 0.5)
                {
                  goto LABEL_59;
                }
              }
            }

            else
            {
              while (v65 != v69)
              {
                v189 = md::MercatorPointSource::segmentWorldPoint(v99[16], *v65, 0);
                v190 = v101;
                v102 = *(&v189 + v100);
                v187 = md::MercatorPointSource::segmentWorldPoint(v99[16], *v65, 1);
                v188 = v103;
                v104 = (*(&v187 + v100) + v102) * 0.5;
                v189 = md::MercatorPointSource::segmentWorldPoint(v99[16], *(v65 - 1), 0);
                v190 = v105;
                v106 = *(&v189 + v100);
                v187 = md::MercatorPointSource::segmentWorldPoint(v99[16], *(v65 - 1), 1);
                v188 = v107;
                ++v65;
                if (v104 < (*(&v187 + v100) + v106) * 0.5)
                {
                  goto LABEL_59;
                }
              }
            }

            break;
          }

LABEL_59:
          if (v69 <= v180)
          {
            v98 = v69 + 1;
          }

          else
          {
            v40 = v69;
            v98 = v39;
          }
        }

        else
        {
          v53 = v40 - 2;
          while (v53 != v39)
          {
            v54 = v53;
            v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v53, 0);
            v190 = v55;
            v56 = *(&v189 + v46);
            v57 = *v53--;
            v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], v57, 1);
            v188 = v58;
            v59 = (*(&v187 + v46) + v56) * 0.5;
            v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v42, 0);
            v190 = v60;
            v61 = *(&v189 + v46);
            v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v42, 1);
            v188 = v62;
            if (v59 < (*(&v187 + v46) + v61) * 0.5)
            {
              v63 = *v39;
              *v39 = *v54;
              *v54 = v63;
              if (v183)
              {
                v64 = 2;
              }

              else
              {
                v64 = 1;
              }

              v183 = v64;
              v43 = v54;
              v40 = v182;
              goto LABEL_42;
            }
          }

          v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v39, 0);
          v190 = v108;
          v109 = *(&v189 + v46);
          v110 = v39 + 1;
          v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v39, 1);
          v188 = v111;
          v112 = (*(&v187 + v46) + v109) * 0.5;
          v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v43, 0);
          v190 = v113;
          v114 = *(&v189 + v46);
          v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v43, 1);
          v188 = v115;
          if (v112 >= (*(&v187 + v46) + v114) * 0.5)
          {
            a3 = v180;
            if (v110 == v43)
            {
              break;
            }

            while (1)
            {
              v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v39, 0);
              v190 = v124;
              v125 = *(&v189 + v46);
              v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v39, 1);
              v188 = v126;
              v127 = (*(&v187 + v46) + v125) * 0.5;
              v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v110, 0);
              v190 = v128;
              v129 = *(&v189 + v46);
              v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v110, 1);
              v188 = v130;
              if (v127 < (*(&v187 + v46) + v129) * 0.5)
              {
                break;
              }

              if (++v110 == v43)
              {
                goto LABEL_28;
              }
            }

            v131 = *v110;
            *v110++ = *v43;
            *v43 = v131;
          }

          else
          {
            a3 = v180;
          }

          if (v110 == v43)
          {
            break;
          }

          while (1)
          {
            v133 = v185;
            v134 = v186;
            do
            {
              v98 = v110;
              v189 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v39, 0);
              v190 = v135;
              v136 = *(&v189 + v134);
              v187 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v39, 1);
              v188 = v137;
              v138 = (*(&v187 + v134) + v136) * 0.5;
              v189 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v110, 0);
              v190 = v139;
              v140 = *(&v189 + v134);
              v141 = *v110++;
              v187 = md::MercatorPointSource::segmentWorldPoint(v133[16], v141, 1);
              v188 = v142;
            }

            while (v138 >= (*(&v187 + v134) + v140) * 0.5);
            do
            {
              v189 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v39, 0);
              v190 = v143;
              v144 = *(&v189 + v134);
              v187 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v39, 1);
              v188 = v145;
              v146 = *--v43;
              v147 = (*(&v187 + v134) + v144) * 0.5;
              v189 = md::MercatorPointSource::segmentWorldPoint(v133[16], v146, 0);
              v190 = v148;
              v149 = *(&v189 + v134);
              v187 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v43, 1);
              v188 = v150;
            }

            while (v147 < (*(&v187 + v134) + v149) * 0.5);
            if (v98 >= v43)
            {
              break;
            }

            v132 = *v98;
            *v98 = *v43;
            *v43 = v132;
          }

          v40 = v182;
          if (v98 > a3)
          {
            break;
          }
        }

        v39 = v98;
      }

      while (v40 != a3);
    }

LABEL_28:
    v7 = a1;
    md::RouteCollisionObject<md::MercatorPointSource>::buildTopDownAABBTree(a1, v179 + 8, v181, a3);
    a2 = (v179 + 16);
  }

  *v8 = 1;
  *(v8 + 14) = v37;
  *(v8 + 8) = a3;
}

uint64_t geo::Pool<md::RouteCollisionObject<md::MercatorPointSource>::Node>::~Pool(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v3 = (a1 + 40);
  for (i = *(a1 + 40); i; *v3 = i)
  {
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v10, i);
    i = **v3;
  }

  v4 = (a1 + 8);
  v5 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      free(v5[4]);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v4;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11[0]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2DC8AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::MercatorPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,2> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(int *a1, int *a2, int *a3, int *a4)
{
  v8 = *a4;
  v55 = md::MercatorPointSource::segmentWorldPoint(*(*a4 + 128), *a2, 0);
  v56 = v9;
  v10 = *(&v55 + a4[2]);
  v53 = md::MercatorPointSource::segmentWorldPoint(*(v8 + 128), *a2, 1);
  v54 = v11;
  v12 = (*(&v53 + a4[2]) + v10) * 0.5;
  v55 = md::MercatorPointSource::segmentWorldPoint(*(v8 + 128), *a1, 0);
  v56 = v13;
  v14 = *(&v55 + a4[2]);
  v53 = md::MercatorPointSource::segmentWorldPoint(*(v8 + 128), *a1, 1);
  v54 = v15;
  v16 = *a4;
  if (v12 >= (*(&v53 + a4[2]) + v14) * 0.5)
  {
    v55 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a3, 0);
    v56 = v26;
    v27 = *(&v55 + a4[2]);
    v53 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a3, 1);
    v54 = v28;
    v29 = (*(&v53 + a4[2]) + v27) * 0.5;
    v55 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a2, 0);
    v56 = v30;
    v31 = *(&v55 + a4[2]);
    v25 = 0;
    v53 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a2, 1);
    v54 = v32;
    if (v29 < (*(&v53 + a4[2]) + v31) * 0.5)
    {
      v33 = *a2;
      *a2 = *a3;
      *a3 = v33;
      v34 = *a4;
      v55 = md::MercatorPointSource::segmentWorldPoint(*(*a4 + 128), *a2, 0);
      v56 = v35;
      v36 = *(&v55 + a4[2]);
      v25 = 1;
      v53 = md::MercatorPointSource::segmentWorldPoint(*(v34 + 128), *a2, 1);
      v54 = v37;
      v38 = (*(&v53 + a4[2]) + v36) * 0.5;
      v55 = md::MercatorPointSource::segmentWorldPoint(*(v34 + 128), *a1, 0);
      v56 = v39;
      v40 = *(&v55 + a4[2]);
      v53 = md::MercatorPointSource::segmentWorldPoint(*(v34 + 128), *a1, 1);
      v54 = v41;
      if (v38 < (*(&v53 + a4[2]) + v40) * 0.5)
      {
        v42 = *a1;
        *a1 = *a2;
        *a2 = v42;
      }
    }
  }

  else
  {
    v55 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a3, 0);
    v56 = v17;
    v18 = *(&v55 + a4[2]);
    v53 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a3, 1);
    v54 = v19;
    v20 = (*(&v53 + a4[2]) + v18) * 0.5;
    v55 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a2, 0);
    v56 = v21;
    v22 = *(&v55 + a4[2]);
    v53 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a2, 1);
    v54 = v23;
    v24 = *a1;
    if (v20 >= (*(&v53 + a4[2]) + v22) * 0.5)
    {
      *a1 = *a2;
      *a2 = v24;
      v43 = *a4;
      v55 = md::MercatorPointSource::segmentWorldPoint(*(*a4 + 128), *a3, 0);
      v56 = v44;
      v45 = *(&v55 + a4[2]);
      v25 = 1;
      v53 = md::MercatorPointSource::segmentWorldPoint(*(v43 + 128), *a3, 1);
      v54 = v46;
      v47 = (*(&v53 + a4[2]) + v45) * 0.5;
      v55 = md::MercatorPointSource::segmentWorldPoint(*(v43 + 128), *a2, 0);
      v56 = v48;
      v49 = *(&v55 + a4[2]);
      v53 = md::MercatorPointSource::segmentWorldPoint(*(v43 + 128), *a2, 1);
      v54 = v50;
      if (v47 < (*(&v53 + a4[2]) + v49) * 0.5)
      {
        v51 = *a2;
        *a2 = *a3;
        *a3 = v51;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v24;
      return 1;
    }
  }

  return v25;
}

uint64_t std::__split_buffer<GEOComposedRouteSection * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::RouteCollisionObject<md::MercatorPointSource>>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 152);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
  geo::Pool<md::RouteCollisionObject<md::MercatorPointSource>::Node>::~Pool(a1 + 104);
  v4 = (a1 + 72);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  *(a1 + 24) = &unk_1F2A4C308;
  v3 = *(a1 + 32);
}

void std::__shared_ptr_emplace<md::RouteCollisionObject<md::MercatorPointSource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RouteCollisionObject<md::GeocentricPointSource>::buildTopDownAABBTree(void *a1, char **a2, int *a3, int *a4)
{
  v41 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v40 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  while (1)
  {
    v8 = a1[15];
    if (!v8)
    {
      v9 = malloc_type_malloc(96 * a1[13], 0x102204091D8B105uLL);
      *&v42[0] = v9;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>((a1 + 10), v9);
      v8 = a1[15];
      v10 = &v9[96 * a1[13] - 96];
      if (v10 >= v9)
      {
        do
        {
          v11 = v10;
          *v10 = v8;
          v10 -= 96;
          v8 = v11;
        }

        while (v10 >= v9);
        v8 = v10 + 96;
      }

      a1[15] = v8;
    }

    a1[15] = *v8;
    *a2 = v8;
    v42[0] = v41;
    v42[1] = xmmword_1B33B0520;
    v42[2] = v40;
    if (a4 != a3)
    {
      v12 = a3;
      do
      {
        v13 = md::GeocentricPointSource::segmentWorldPoint(a1[16], *v12, 0);
        v14 = 0;
        v43 = v13;
        v44 = v15;
        v45 = v16;
        do
        {
          v17 = (v42 + v14);
          v18 = *(&v43 + v14);
          *v17 = fmin(v18, *(v42 + v14));
          v17[3] = fmax(*(&v42[1] + v14 + 8), v18);
          v14 += 8;
        }

        while (v14 != 24);
        v19 = md::GeocentricPointSource::segmentWorldPoint(a1[16], *v12, 1);
        v20 = 0;
        v43 = v19;
        v44 = v21;
        v45 = v22;
        do
        {
          v23 = (v42 + v20);
          v24 = *(&v43 + v20);
          *v23 = fmin(v24, *(v42 + v20));
          v23[3] = fmax(*(&v42[1] + v20 + 8), v24);
          v20 += 8;
        }

        while (v20 != 24);
        ++v12;
      }

      while (v12 != a4);
    }

    v25 = 0;
    v26 = (a4 - a3) >> 2;
    do
    {
      *&v8[v25 + 24] = *(v42 + v25);
      v25 += 8;
    }

    while (v25 != 24);
    for (i = 0; i != 24; i += 8)
    {
      *&v8[i + 48] = *(&v42[1] + i + 8);
    }

    LODWORD(v42[0]) = -1;
    LODWORD(v43) = 0;
    if (a4 <= a3)
    {
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      LOWORD(v28) = 0;
      LOWORD(v29) = 0;
      v30 = 0xFFFF;
      LOWORD(v31) = -1;
      v32 = a3;
      do
      {
        v33 = *v32;
        v34 = v33 == v31;
        if (v33 > v31 || (v35 = v32, v34) && (v35 = v32, v30 < *(v32 + 1)))
        {
          v35 = v42;
        }

        v31 = *v35;
        LODWORD(v42[0]) = v31;
        v36 = v33 == v29;
        if (v33 < v29 || (v37 = v32, v36) && (v37 = v32, *(v32 + 1) < v28))
        {
          v37 = &v43;
        }

        v30 = WORD1(v31);
        v29 = *v37;
        LODWORD(v43) = v29;
        ++v32;
        v28 = WORD1(v29);
      }

      while (v32 < a4);
      v38 = v31 | (v29 << 32);
    }

    *(v8 + 11) = v38;
    if (v26 <= 4)
    {
      break;
    }

    *v8 = 0;
    *(v8 + 18) = v26;
    *(v8 + 10) = 0;
    v39 = md::RouteCollisionObject<md::GeocentricPointSource>::partitionSegments(a1, a3, a4, (v8 + 24));
    md::RouteCollisionObject<md::GeocentricPointSource>::buildTopDownAABBTree(a1, v8 + 8, a3, v39);
    a2 = (v8 + 16);
    a3 = v39;
  }

  *v8 = 1;
  *(v8 + 18) = v26;
  *(v8 + 10) = a3;
}

uint64_t geo::Pool<md::RouteCollisionObject<md::GeocentricPointSource>::Node>::~Pool(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v3 = (a1 + 40);
  for (i = *(a1 + 40); i; *v3 = i)
  {
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v10, i);
    i = **v3;
  }

  v4 = (a1 + 8);
  v5 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      free(v5[4]);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v4;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11[0]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2DC9404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

int *md::RouteCollisionObject<md::GeocentricPointSource>::partitionSegments(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  for (i = 0; i != 24; i += 8)
  {
    *(&v208 + i) = *(a4 + i + 24) - *(a4 + i);
  }

  v7 = fmax(v208, 0.0);
  v8 = fmax(v209, 0.0);
  v9 = fmax(v210, 0.0);
  v10 = v8 > v7;
  if (v8 > v7)
  {
    v7 = v8;
  }

  if (v9 > v7)
  {
    v10 = 2;
  }

  v203 = a1;
  v204 = v10;
  v202 = &a2[(a3 - a2 + ((a3 - a2) >> 63)) >> 1];
  if (v202 != a3)
  {
    do
    {
      v12 = v4 - v5;
      if (v12 < 2)
      {
        break;
      }

      if (v12 == 3)
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::GeocentricPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,3> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(v5, v5 + 1, v4 - 1, &v203);
        return v202;
      }

      if (v12 == 2)
      {
        v166 = v203;
        v208 = md::GeocentricPointSource::segmentWorldPoint(*(v203 + 128), *(v4 - 1), 0);
        v209 = v167;
        v210 = v168;
        v169 = v204;
        v170 = *(&v208 + v204);
        v205 = md::GeocentricPointSource::segmentWorldPoint(*(v166 + 128), *(v4 - 1), 1);
        v206 = v171;
        v207 = v172;
        v173 = (*(&v205 + v169) + v170) * 0.5;
        v208 = md::GeocentricPointSource::segmentWorldPoint(*(v166 + 128), *v5, 0);
        v209 = v174;
        v210 = v175;
        v176 = *(&v208 + v169);
        v205 = md::GeocentricPointSource::segmentWorldPoint(*(v166 + 128), *v5, 1);
        v206 = v177;
        v207 = v178;
        if (v173 < (*(&v205 + v169) + v176) * 0.5)
        {
          v179 = *v5;
          *v5 = *(v4 - 1);
          *(v4 - 1) = v179;
        }

        return v202;
      }

      v201 = v4;
      if (v12 <= 7)
      {
        v180 = v4 - 1;
        if (v4 - 1 != v5)
        {
          v200 = v4 - 1;
          do
          {
            v181 = v5++;
            if (v181 != v4 && v5 != v201)
            {
              v182 = v203;
              v183 = v204;
              v184 = v5;
              v185 = v181;
              v186 = v5;
              do
              {
                v208 = md::GeocentricPointSource::segmentWorldPoint(*(v182 + 128), *v184, 0);
                v209 = v187;
                v210 = v188;
                v189 = *(&v208 + v183);
                v190 = *v186++;
                v205 = md::GeocentricPointSource::segmentWorldPoint(*(v182 + 128), v190, 1);
                v206 = v191;
                v207 = v192;
                v193 = (*(&v205 + v183) + v189) * 0.5;
                v208 = md::GeocentricPointSource::segmentWorldPoint(*(v182 + 128), *v185, 0);
                v209 = v194;
                v210 = v195;
                v196 = *(&v208 + v183);
                v205 = md::GeocentricPointSource::segmentWorldPoint(*(v182 + 128), *v185, 1);
                v206 = v197;
                v207 = v198;
                if (v193 < (*(&v205 + v183) + v196) * 0.5)
                {
                  v185 = v184;
                }

                v184 = v186;
              }

              while (v186 != v201);
              v180 = v200;
              if (v185 != v181)
              {
                v199 = *v181;
                *v181 = *v185;
                *v185 = v199;
              }
            }

            v4 = v201;
          }

          while (v5 != v180);
        }

        return v202;
      }

      v13 = v4;
      v14 = &v5[(v4 - v5) >> 3];
      v15 = v13 - 1;
      v16 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::GeocentricPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,3> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(v5, v14, v13 - 1, &v203);
      v17 = v203;
      v208 = md::GeocentricPointSource::segmentWorldPoint(*(v203 + 128), *v5, 0);
      v209 = v18;
      v210 = v19;
      v20 = v204;
      v21 = *(&v208 + v204);
      v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v5, 1);
      v206 = v22;
      v207 = v23;
      v24 = (*(&v205 + v20) + v21) * 0.5;
      v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v14, 0);
      v209 = v25;
      v210 = v26;
      v27 = *(&v208 + v20);
      v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v14, 1);
      v206 = v28;
      v207 = v29;
      if (v24 < (*(&v205 + v20) + v27) * 0.5)
      {
LABEL_21:
        v45 = v5 + 1;
        if (v5 + 1 >= v15)
        {
          v49 = v5 + 1;
        }

        else
        {
          for (j = v16; ; ++j)
          {
            v47 = v203;
            v48 = v204;
            do
            {
              v49 = v45;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v45, 0);
              v209 = v50;
              v210 = v51;
              v52 = *(&v208 + v48);
              v53 = *v45++;
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), v53, 1);
              v206 = v54;
              v207 = v55;
              v56 = (*(&v205 + v48) + v52) * 0.5;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v14, 0);
              v209 = v57;
              v210 = v58;
              v59 = *(&v208 + v48);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v14, 1);
              v206 = v60;
              v207 = v61;
            }

            while (v56 < (*(&v205 + v48) + v59) * 0.5);
            do
            {
              v62 = *--v15;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), v62, 0);
              v209 = v63;
              v210 = v64;
              v65 = *(&v208 + v48);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v15, 1);
              v206 = v66;
              v207 = v67;
              v68 = (*(&v205 + v48) + v65) * 0.5;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v14, 0);
              v209 = v69;
              v210 = v70;
              v71 = *(&v208 + v48);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v14, 1);
              v206 = v72;
              v207 = v73;
            }

            while (v68 >= (*(&v205 + v48) + v71) * 0.5);
            if (v49 >= v15)
            {
              break;
            }

            v74 = *v49;
            *v49 = *v15;
            *v15 = v74;
            if (v14 == v49)
            {
              v14 = v15;
            }
          }

          v16 = j;
          v45 = v5 + 1;
        }

        if (v49 != v14)
        {
          v75 = v203;
          v208 = md::GeocentricPointSource::segmentWorldPoint(*(v203 + 128), *v14, 0);
          v209 = v76;
          v210 = v77;
          v78 = v204;
          v79 = *(&v208 + v204);
          v205 = md::GeocentricPointSource::segmentWorldPoint(*(v75 + 128), *v14, 1);
          v206 = v80;
          v207 = v81;
          v82 = (*(&v205 + v78) + v79) * 0.5;
          v208 = md::GeocentricPointSource::segmentWorldPoint(*(v75 + 128), *v49, 0);
          v209 = v83;
          v210 = v84;
          v85 = *(&v208 + v78);
          v205 = md::GeocentricPointSource::segmentWorldPoint(*(v75 + 128), *v49, 1);
          v206 = v86;
          v207 = v87;
          if (v82 < (*(&v205 + v78) + v85) * 0.5)
          {
            v88 = *v49;
            *v49 = *v14;
            *v14 = v88;
            ++v16;
          }
        }

        v4 = v201;
        if (v49 == v202)
        {
          return v202;
        }

        if (!v16)
        {
          v90 = v203;
          v91 = v204;
          if (v49 <= v202)
          {
            v126 = v49 + 1;
            while (v126 != v201)
            {
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *v126, 0);
              v209 = v127;
              v210 = v128;
              v129 = *(&v208 + v91);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *v126, 1);
              v206 = v130;
              v207 = v131;
              v132 = (*(&v205 + v91) + v129) * 0.5;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *(v126 - 1), 0);
              v209 = v133;
              v210 = v134;
              v135 = *(&v208 + v91);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *(v126 - 1), 1);
              v206 = v136;
              v207 = v137;
              ++v126;
              if (v132 < (*(&v205 + v91) + v135) * 0.5)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
            while (v45 != v49)
            {
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *v45, 0);
              v209 = v92;
              v210 = v93;
              v94 = *(&v208 + v91);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *v45, 1);
              v206 = v95;
              v207 = v96;
              v97 = (*(&v205 + v91) + v94) * 0.5;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *(v45 - 1), 0);
              v209 = v98;
              v210 = v99;
              v100 = *(&v208 + v91);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *(v45 - 1), 1);
              v206 = v101;
              v207 = v102;
              ++v45;
              if (v97 < (*(&v205 + v91) + v100) * 0.5)
              {
                goto LABEL_37;
              }
            }
          }

          return v202;
        }

LABEL_37:
        if (v49 <= v202)
        {
          v89 = v49 + 1;
        }

        else
        {
          v4 = v49;
          v89 = v5;
        }
      }

      else
      {
        v30 = v13 - 2;
        while (v30 != v5)
        {
          v31 = v30;
          v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v30, 0);
          v209 = v32;
          v210 = v33;
          v34 = *(&v208 + v20);
          v35 = *v30--;
          v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), v35, 1);
          v206 = v36;
          v207 = v37;
          v38 = (*(&v205 + v20) + v34) * 0.5;
          v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v14, 0);
          v209 = v39;
          v210 = v40;
          v41 = *(&v208 + v20);
          v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v14, 1);
          v206 = v42;
          v207 = v43;
          if (v38 < (*(&v205 + v20) + v41) * 0.5)
          {
            v44 = *v5;
            *v5 = *v31;
            *v31 = v44;
            if (v16)
            {
              v16 = 2;
            }

            else
            {
              v16 = 1;
            }

            v15 = v31;
            goto LABEL_21;
          }
        }

        v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v5, 0);
        v209 = v103;
        v210 = v104;
        v105 = *(&v208 + v20);
        v106 = v5 + 1;
        v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v5, 1);
        v206 = v107;
        v207 = v108;
        v109 = (*(&v205 + v20) + v105) * 0.5;
        v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v15, 0);
        v209 = v110;
        v210 = v111;
        v112 = *(&v208 + v20);
        v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v15, 1);
        v206 = v113;
        v207 = v114;
        if (v109 >= (*(&v205 + v20) + v112) * 0.5)
        {
          while (v106 != v15)
          {
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v5, 0);
            v209 = v115;
            v210 = v116;
            v117 = *(&v208 + v20);
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v5, 1);
            v206 = v118;
            v207 = v119;
            v120 = (*(&v205 + v20) + v117) * 0.5;
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v106, 0);
            v209 = v121;
            v210 = v122;
            v123 = *(&v208 + v20);
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v106, 1);
            v206 = v124;
            v207 = v125;
            if (v120 < (*(&v205 + v20) + v123) * 0.5)
            {
              v138 = *v106;
              *v106++ = *v15;
              *v15 = v138;
              goto LABEL_53;
            }

            ++v106;
          }

          return v202;
        }

LABEL_53:
        if (v106 == v15)
        {
          return v202;
        }

        while (1)
        {
          v139 = v203;
          v140 = v204;
          do
          {
            v89 = v106;
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v5, 0);
            v209 = v141;
            v210 = v142;
            v143 = *(&v208 + v140);
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v5, 1);
            v206 = v144;
            v207 = v145;
            v146 = (*(&v205 + v140) + v143) * 0.5;
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v106, 0);
            v209 = v147;
            v210 = v148;
            v149 = *(&v208 + v140);
            v150 = *v106++;
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), v150, 1);
            v206 = v151;
            v207 = v152;
          }

          while (v146 >= (*(&v205 + v140) + v149) * 0.5);
          do
          {
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v5, 0);
            v209 = v153;
            v210 = v154;
            v155 = *(&v208 + v140);
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v5, 1);
            v206 = v156;
            v207 = v157;
            v158 = *--v15;
            v159 = (*(&v205 + v140) + v155) * 0.5;
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), v158, 0);
            v209 = v160;
            v210 = v161;
            v162 = *(&v208 + v140);
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v15, 1);
            v206 = v163;
            v207 = v164;
          }

          while (v159 < (*(&v205 + v140) + v162) * 0.5);
          if (v89 >= v15)
          {
            break;
          }

          v165 = *v89;
          *v89 = *v15;
          *v15 = v165;
        }

        v4 = v201;
        if (v89 > v202)
        {
          return v202;
        }
      }

      v5 = v89;
    }

    while (v4 != v202);
  }

  return v202;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::GeocentricPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,3> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(int *a1, int *a2, int *a3, int *a4)
{
  v8 = *a4;
  v76 = md::GeocentricPointSource::segmentWorldPoint(*(*a4 + 128), *a2, 0);
  v77 = v9;
  v78 = v10;
  v11 = *(&v76 + a4[2]);
  v73 = md::GeocentricPointSource::segmentWorldPoint(*(v8 + 128), *a2, 1);
  v74 = v12;
  v75 = v13;
  v14 = (*(&v73 + a4[2]) + v11) * 0.5;
  v76 = md::GeocentricPointSource::segmentWorldPoint(*(v8 + 128), *a1, 0);
  v77 = v15;
  v78 = v16;
  v17 = *(&v76 + a4[2]);
  v73 = md::GeocentricPointSource::segmentWorldPoint(*(v8 + 128), *a1, 1);
  v74 = v18;
  v75 = v19;
  v20 = *a4;
  if (v14 >= (*(&v73 + a4[2]) + v17) * 0.5)
  {
    v76 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a3, 0);
    v77 = v34;
    v78 = v35;
    v36 = *(&v76 + a4[2]);
    v73 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a3, 1);
    v74 = v37;
    v75 = v38;
    v39 = (*(&v73 + a4[2]) + v36) * 0.5;
    v76 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a2, 0);
    v77 = v40;
    v78 = v41;
    v42 = *(&v76 + a4[2]);
    v33 = 0;
    v73 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a2, 1);
    v74 = v43;
    v75 = v44;
    if (v39 < (*(&v73 + a4[2]) + v42) * 0.5)
    {
      v45 = *a2;
      *a2 = *a3;
      *a3 = v45;
      v46 = *a4;
      v76 = md::GeocentricPointSource::segmentWorldPoint(*(*a4 + 128), *a2, 0);
      v77 = v47;
      v78 = v48;
      v49 = *(&v76 + a4[2]);
      v33 = 1;
      v73 = md::GeocentricPointSource::segmentWorldPoint(*(v46 + 128), *a2, 1);
      v74 = v50;
      v75 = v51;
      v52 = (*(&v73 + a4[2]) + v49) * 0.5;
      v76 = md::GeocentricPointSource::segmentWorldPoint(*(v46 + 128), *a1, 0);
      v77 = v53;
      v78 = v54;
      v55 = *(&v76 + a4[2]);
      v73 = md::GeocentricPointSource::segmentWorldPoint(*(v46 + 128), *a1, 1);
      v74 = v56;
      v75 = v57;
      if (v52 < (*(&v73 + a4[2]) + v55) * 0.5)
      {
        v58 = *a1;
        *a1 = *a2;
        *a2 = v58;
      }
    }
  }

  else
  {
    v76 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a3, 0);
    v77 = v21;
    v78 = v22;
    v23 = *(&v76 + a4[2]);
    v73 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a3, 1);
    v74 = v24;
    v75 = v25;
    v26 = (*(&v73 + a4[2]) + v23) * 0.5;
    v76 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a2, 0);
    v77 = v27;
    v78 = v28;
    v29 = *(&v76 + a4[2]);
    v73 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a2, 1);
    v74 = v30;
    v75 = v31;
    v32 = *a1;
    if (v26 >= (*(&v73 + a4[2]) + v29) * 0.5)
    {
      *a1 = *a2;
      *a2 = v32;
      v59 = *a4;
      v76 = md::GeocentricPointSource::segmentWorldPoint(*(*a4 + 128), *a3, 0);
      v77 = v60;
      v78 = v61;
      v62 = *(&v76 + a4[2]);
      v33 = 1;
      v73 = md::GeocentricPointSource::segmentWorldPoint(*(v59 + 128), *a3, 1);
      v74 = v63;
      v75 = v64;
      v65 = (*(&v73 + a4[2]) + v62) * 0.5;
      v76 = md::GeocentricPointSource::segmentWorldPoint(*(v59 + 128), *a2, 0);
      v77 = v66;
      v78 = v67;
      v68 = *(&v76 + a4[2]);
      v73 = md::GeocentricPointSource::segmentWorldPoint(*(v59 + 128), *a2, 1);
      v74 = v69;
      v75 = v70;
      if (v65 < (*(&v73 + a4[2]) + v68) * 0.5)
      {
        v71 = *a2;
        *a2 = *a3;
        *a3 = v71;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v32;
      return 1;
    }
  }

  return v33;
}

void std::__shared_ptr_emplace<md::RouteCollisionObject<md::GeocentricPointSource>>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 152);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
  geo::Pool<md::RouteCollisionObject<md::GeocentricPointSource>::Node>::~Pool(a1 + 104);
  v4 = (a1 + 72);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  *(a1 + 24) = &unk_1F2A4C308;
  v3 = *(a1 + 32);
}

void std::__shared_ptr_emplace<md::RouteCollisionObject<md::GeocentricPointSource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::DaVinciGroundLayerDataSource::updateRequest(uint64_t a1, unsigned __int8 **a2, uint64_t a3, unsigned __int16 **a4)
{
  v48[1] = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap(&v37, *(a1 + 592), *a4, a4[1]);
  v8 = v37;
  v7 = v38[0];
  if (v38[0])
  {
    atomic_fetch_add_explicit(v38[0] + 1, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (!v8 || *(a1 + 848) != 1)
  {
    v13 = 0;
    goto LABEL_32;
  }

  v9 = *(v8 + 144);
  v10 = *(v8 + 152);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  geo::codec::VectorTile::daVinciTileMaterialList(v45, v9);
  if (!v47)
  {
    v13 = 0;
    goto LABEL_30;
  }

  v11 = *a4;
  v12 = a4[1];
  while (1)
  {
    if (v11 == v12)
    {
      v14 = **a2;
      goto LABEL_14;
    }

    if (*v11 == 36)
    {
      break;
    }

    v11 += 24;
  }

  v14 = **a2;
  if (v11 == v12 || !*(v11 + 4))
  {
LABEL_14:
    v15 = v46;
    if (!v46)
    {
LABEL_28:
      v13 = 1;
      goto LABEL_30;
    }

    while (1)
    {
      v16 = v15[2];
      v17 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((*(a1 + 800) + 16), v16);
      if (v17)
      {
        v18 = v17[3];
        v19 = v17[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18 && (v14 || *(std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((*(a1 + 800) + 56), v16) + 24) != 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = *(*a2 + 14);
      v48[0] = v16;
      gdc::ResourceKey::ResourceKey(&v37, v14, 36, v48, 1, v20);
      gdc::LayerDataRequest::request(*a2, &v37, 0);
      if (v38[0] != v39)
      {
        free(v38[0]);
      }

LABEL_25:
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  v35 = v10;
  v22 = *(v11 + 3);
  if (v22)
  {
    while (1)
    {
      v37 = v22[2];
      v38[0] = v41;
      v38[1] = v41;
      v39 = v41;
      v40 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(v38, v22[3], v22[4]);
      v23 = v22[11];
      v42 = *(v22 + 6);
      v25 = v22[14];
      v24 = v22[15];
      v41[4] = v23;
      v43 = v25;
      v44 = v24;
      if (v24)
      {
        v26 = 1;
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v25 = v43;
        v27 = v44;
        if (v44)
        {
          v26 = 0;
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v27 = 0;
        v26 = 1;
      }

      UInt64 = gdc::ResourceKey::getUInt64(v38[0], 0);
      v29 = *(a1 + 800);
      v30 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((v29 + 16), UInt64);
      if (!v30)
      {
        break;
      }

      v31 = v30[3];
      v32 = v30[4];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v31)
      {
        v29 = *(a1 + 800);
        goto LABEL_51;
      }

      if (!v14)
      {
        v29 = *(a1 + 800);
        if (*(std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v29 + 56), UInt64) + 24) == 1)
        {
          goto LABEL_51;
        }
      }

LABEL_55:
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v32);
      }

      if ((v26 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v27);
      }

      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v44);
      }

      if (v38[0] != v39)
      {
        free(v38[0]);
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_64;
      }
    }

    v32 = 0;
LABEL_51:
    LOBYTE(v48[0]) = *v25 == 1;
    v33 = *(v25 + 144);
    v34 = *(v25 + 152);
    v36[0] = v33;
    v36[1] = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gms::MaterialManager<ggl::Texture2D>::replaceMaterialSheet(v29, UInt64, v36);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    goto LABEL_55;
  }

LABEL_64:
  v13 = 0;
  v10 = v35;
LABEL_30:
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v45);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

LABEL_32:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v13;
}

void sub_1B2DCA728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciGroundLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  gdc::LayerDataSource::getResourceFromMap(&v6, *(a1 + 592), *a3, a3[1]);
  v5 = v7;
  v10[3] = v6;
  v10[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  memset(v10, 0, 24);
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], v10);
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v9, (a1 + 816));
  md::RegistryManager::vendRegistry(&v8);
}

void sub_1B2DCA9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  if (a35 != -1)
  {
    (off_1F2A00310[a35])(v37 - 81, &a23);
  }

  a35 = -1;
  if (a13 != a15)
  {
    free(a13);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  std::unique_ptr<gdc::Registry>::~unique_ptr[abi:nn200100]((v37 - 152));
  v39 = *(v37 - 136);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  v40 = *(v37 - 128);
  if (v40)
  {
    operator delete(v40);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  _Unwind_Resume(a1);
}

uint64_t md::DaVinciGroundLayerDataSource::isReadyToDecode(md::DaVinciGroundLayerDataSource *this)
{
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v3, this + 98);
  if (v3)
  {
    v1 = atomic_load((*(v3 + 16) + 2786));
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v1 & 1;
}

void md::DaVinciGroundLayerDataSource::~DaVinciGroundLayerDataSource(md::DaVinciGroundLayerDataSource *this)
{
  *this = &unk_1F2A00278;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 832);
  v2 = *(this + 103);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 101);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 99);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A00278;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 832);
  v2 = *(this + 103);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 101);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 99);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void sub_1B2DCAD94(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void md::MuninLabelLayerData::~MuninLabelLayerData(md::MuninLabelLayerData *this)
{
  md::MuninLabelLayerData::~MuninLabelLayerData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A00368;
  *(this + 80) = &unk_1F2A003A8;
  v2 = *(this + 94);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 92);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::MapTileData::~MapTileData(this);
}

void std::__shared_ptr_emplace<md::MuninLabelLayerData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A003C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

id md::ARWalkingCustomSceneMapEngineMode::getSession(md::ARWalkingCustomSceneMapEngineMode *this)
{
  v1 = +[MDARSession newPositionalTrackingSession];

  return v1;
}

uint64_t md::ARWalkingCustomSceneMapEngineMode::buildScene(void *a1, int a2, void *a3)
{
  v101 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2 == 2)
  {
    v7 = a1[82];
    v64 = v6;
    v8 = +[VKDebugSettings sharedSettings];
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
    v81 = 0;
    v80 = 0x415854A640000000uLL;
    gdc::CameraFrame<geo::Degrees,double>::createLocalEcefFrame(&v72, &v80);
    v80 = v72;
    v82 = v74;
    v81 = v73;
    v83 = v75;
    v84 = v76;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v85 = &unk_1F2A0CD20;
    v86 = v9;
    v87 = 1;
    [v8 arDebugSceneFeatureDistance];
    v71[0] = 0;
    v71[1] = 0;
    *&v71[2] = -v10;
    [v8 arDebugSceneFeatureHeading];
    v12 = v11;
    if ([v8 arDebugSceneFeatureType])
    {
      v91 = xmmword_1B33B0F00;
      LODWORD(v92) = 6;
      HIDWORD(v92) = [v8 arDebugScenePoiType];
      v93 = xmmword_1B33B0F10;
      v94 = xmmword_1B33B0F20;
      *&v95 = 0x1000000A4;
      std::vector<GeoCodecsFeatureStylePair>::vector[abi:nn200100](&v98, &v91, 8uLL);
      v91 = v82;
      v92 = v83;
      *&v93 = v84;
      v13 = gm::Quaternion<double>::operator*(&v91, v71);
      v14 = 0;
      v69 = v13;
      v70.f64[0] = v15;
      v70.f64[1] = v16;
      do
      {
        v88.f64[v14] = *(&v69 + v14 * 8) + *(&v80 + v14 * 8);
        ++v14;
      }

      while (v14 != 3);
      md::ARDebugCustomSceneBuilder::convertPointToCoordinate(&v91, v87, v88.f64[0], v88.f64[1], v89);
      v17 = v91;
      v18 = v92;
      v19 = objc_alloc_init(MEMORY[0x1E69A1DB0]);
      [v19 replaceAttributes:? count:?];
      v20 = [[VKARWalkingArrivalFeature alloc] initWithPosition:v19 iconStyleAttributes:*&v17, v18];
      [v86 addObject:v20];

      v21 = v98;
      if (v98 != 0.0)
      {
        v99 = v98;
LABEL_19:
        operator delete(*&v21);
      }
    }

    else
    {
      v89 = 0.0;
      v88 = 0x415854A640000000uLL;
      gdc::CameraFrame<geo::Degrees,double>::createLocalEcefBasis(v91.f64, v88.f64);
      gm::quaternionFromAngleAxis<double>(&v69, &v94 + 8, v12 * 0.0174532925);
      v88.f64[0] = gm::Quaternion<double>::operator*(&v69, &v91);
      v88.f64[1] = v22;
      v89 = v23;
      *&v67 = gm::Matrix<double,3,1>::normalized<int,void>(&v88);
      *(&v67 + 1) = v24;
      v68 = v25;
      v26 = [v8 arDebugSceneFeatureText];
      if (v26)
      {
        v3 = [v8 arDebugSceneFeatureText];
        v27 = v3;
        v28 = [v3 UTF8String];
      }

      else
      {
        v28 = "";
      }

      std::string::basic_string[abi:nn200100]<0>(__p, v28);
      if (v26)
      {
      }

      v88 = v82;
      v89 = v83;
      v90 = v84;
      v29 = gm::Quaternion<double>::operator*(&v88, v71);
      v30 = 0;
      *&v77 = v29;
      *(&v77 + 1) = v31;
      v78 = v32;
      do
      {
        *(&v98 + v30) = *(&v77 + v30) + *(&v80 + v30);
        v30 += 8;
      }

      while (v30 != 24);
      md::ARDebugCustomSceneBuilder::convertPointToCoordinate(&v88, v87, v98, v99, v100);
      v33 = gm::Quaternion<double>::operator*(&v82, &v67);
      v35 = v34;
      v36 = v88;
      v37 = v89;
      if (v66 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v38, v33}];
      v40 = [[VKARWalkingManeuverFeature alloc] initWithDisplayLocation:0 routeCoordinate:v39 maneuverHeading:0 displayText:*&v36 elevationModel:v37, (acos(v35) * 57.2957795)];
      [v86 addObject:v40];

      if (v66 < 0)
      {
        v21 = *__p;
        goto LABEL_19;
      }
    }

    v41 = a1[77];
    v42 = v64;
    if (HIBYTE(v87) == 1)
    {
      v98 = 0.0;
      v99 = 0.0;
      v100 = 0.0;
      v91 = v82;
      v92 = v83;
      *&v93 = v84;
      v43 = gm::Quaternion<double>::operator*(&v91, &v98);
      v44 = 0;
      v69 = v43;
      v70.f64[0] = v45;
      v70.f64[1] = v46;
      do
      {
        v88.f64[v44] = *(&v69 + v44 * 8) + *(&v80 + v44 * 8);
        ++v44;
      }

      while (v44 != 3);
      md::ARDebugCustomSceneBuilder::convertPointToCoordinate(&v69, v87, v88.f64[0], v88.f64[1], v89);
      v47 = v69;
      v48 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v69);
      v63 = v70;
      v49 = tan(v47 * 0.00872664626 + 0.785398163);
      v50 = log(v49);
      v51.f64[0] = v63.f64[0];
      v93 = 0uLL;
      v51.f64[1] = v50;
      v52 = v51;
      __asm { FMOV            V3.2D, #0.5 }

      v91 = vmlaq_f64(_Q3, xmmword_1B33B0700, v52);
      v92 = vmuld_lane_f64(0.0000000249532021, v63, 1);
      *&v94 = 0;
      *(&v94 + 1) = 0x3FF0000000000000;
      v95 = v48 * 75.0;
      v96 = v48 * 75.0;
      __asm { FMOV            V0.4S, #1.0 }

      v77 = _Q0;
      v97 = 0x3FF0000000000000;
      v98 = COERCE_DOUBLE(&unk_1F2A43EB8);
      v99 = 0.0;
      v89 = 0.0;
      v88 = 0uLL;
      geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v90, &v98);
      v67 = xmmword_1B33B0720;
      __asm { FMOV            V0.2S, #1.0 }

      v79 = _D0;
      gdc::Registry::create(v41);
    }

    v60 = v86;
    operator new();
  }

  v61 = a1[87];

  return v61;
}

double gdc::CameraFrame<geo::Degrees,double>::createLocalEcefFrame(uint64_t a1, uint64_t a2)
{
  gdc::CameraFrame<geo::Degrees,double>::createLocalEcefBasis(&v13, a2);
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  gm::quaternionFromRotationMatrix<double>(&v10, &v5);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v10;
  *(a1 + 40) = v11;
  result = v12;
  *(a1 + 48) = v12;
  return result;
}

double gdc::CameraFrame<geo::Degrees,double>::createLocalEcefBasis(double *a1, double *a2)
{
  geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(a2, &v25);
  v4 = v26;
  v5 = v25.f64[1] * 0.0174532925 + 0.000000174532925;
  v6 = __sincos_stret(v25.f64[0] * 0.0174532925);
  v7 = 6378137.0 / sqrt(v6.__sinval * v6.__sinval * -0.00669437999 + 1.0);
  v8 = (v7 + v4) * v6.__cosval;
  v9 = __sincos_stret(v5);
  v24[0] = v8 * v9.__cosval;
  v24[1] = v8 * v9.__sinval;
  v24[2] = (v4 + v7 * 0.99330562) * v6.__sinval;
  v10 = gm::Matrix<double,3,1>::normalized<int,void>(a2);
  v12 = v11;
  v14 = v13;
  v15 = 0;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v13;
  do
  {
    *(&v27 + v15 * 8) = v24[v15] - a2[v15];
    ++v15;
  }

  while (v15 != 3);
  v16 = gm::Matrix<double,3,1>::normalized<int,void>(&v27);
  v19 = -(v12 * v17 - v14 * v18);
  v20 = -(v14 * v16 - v10 * v17);
  v21 = -(v10 * v18 - v12 * v16);
  a1[6] = v19;
  a1[7] = v20;
  a1[8] = v21;
  v22 = -(v20 * v14 - v21 * v12);
  result = -(v21 * v10 - v19 * v14);
  *a1 = v22;
  a1[1] = result;
  a1[2] = -(v19 * v12 - v20 * v10);
  return result;
}

void geo::_retain_ptr<NSMutableArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A0CD20;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSMutableArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A0CD20;

  return a1;
}

void md::ARWalkingCustomSceneMapEngineMode::~ARWalkingCustomSceneMapEngineMode(md::ARWalkingCustomSceneMapEngineMode *this)
{
  *this = &unk_1F2A003F8;
  v2 = *(this + 87);
  *(this + 87) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v3 = *(this + 82);
  *(this + 82) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 78);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A003F8;
  v2 = *(this + 87);
  *(this + 87) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v3 = *(this + 82);
  *(this + 82) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 78);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapEngineMode::~MapEngineMode(this);
}

void geo::_retain_ptr<ARSession * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4C1F8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<ARSession * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4C1F8;

  return a1;
}

double GEOMapRectEnclosingCameraProperties(double *a1, float a2)
{
  v4 = [[VKCamera alloc] initWithRunLoopController:0];
  [(VKCamera *)v4 setAspectRatio:a2];
  v5 = a1[3];
  v6 = __sincos_stret(a1[2] * 0.00872664626);
  v7 = __sincos_stret(v5 * 0.00872664626);
  v8.f64[0] = v7.__cosval;
  v9.f64[0] = v6.__cosval;
  v10.f64[0] = v6.__sinval;
  v8.f64[1] = v6.__cosval;
  v9.f64[1] = v6.__sinval;
  v10.f64[1] = v7.__cosval;
  v25[0] = vmulq_n_f64(v9, v7.__sinval);
  v25[1] = vmulq_f64(v8, v10);
  [(VKCamera *)v4 setOrientation:v25];
  v11 = *a1;
  v12 = a1[1];
  v13 = tan(*a1 * 0.00872664626 + 0.785398163);
  v14 = v12 * 0.00277777778 + 0.5;
  v15 = log(v13) * 0.159154943 + 0.5;
  *v24 = v14;
  *&v24[1] = v15;
  v24[2] = 0;
  v16 = a1[3];
  v17 = a1[4];
  if (v16 < 90.0)
  {
    v17 = v17 / cos(v16 * 0.0174532925);
  }

  *v23 = v14;
  *&v23[1] = v15;
  *&v23[2] = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v11) * v17;
  v22[0] = gm::rotateAboutPoint<double>(v23, v25, v24);
  v22[1] = v18;
  v22[2] = v19;
  [(VKCamera *)v4 setPosition:v22];
  v20 = *(MEMORY[0x1E69A1680] + 16);
  v26[0] = *MEMORY[0x1E69A1680];
  v26[1] = v20;
  VKCameraCalculateEnclosingRegion(v4, 0, v26, 0.0, 0.0, 0.0, 0.0);

  return *v26;
}

double GEOPDCameraPathFrameFromVKCameraFrame@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 16) = *(a1 + 16);
  v2 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  *(a2 + 24) = vmulq_f64(*a1, v2);
  v4 = *(a1 + 32);
  v3.f64[0] = *(a1 + 40);
  v3.f64[1] = *(a1 + 24);
  *(a2 + 80) = 0;
  *(a2 + 40) = vmulq_f64(v3, v2);
  result = v4 * 0.0174532925;
  *(a2 + 80) = 760;
  *(a2 + 64) = v4 * 0.0174532925;
  return result;
}

double VKCameraFrameFromGEOPDCameraPathFrame@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = vdupq_n_s64(0x404CA5DC1A63C1F8uLL);
  *a2 = vmulq_f64(*(a1 + 24), v2);
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 40);
  v3.f64[0] = *(a1 + 48);
  v3.f64[1] = *(a1 + 64);
  *(a2 + 24) = vmulq_f64(v3, v2);
  result = v4 * 57.2957795;
  *(a2 + 40) = v4 * 57.2957795;
  return result;
}

void VKCameraPropertiesForStoreFrontView(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if (v3)
  {
    v6 = v3;
    md::mun::cameraFrameFromStorefront(&v7, v3);
    v4 = vmulq_f64(v7, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
    *(a2 + 32) = v8;
    v5 = vmulq_f64(v9, xmmword_1B33B0F30);
    *a2 = v4;
    *(a2 + 16) = vextq_s8(v5, v5, 8uLL);
    v3 = v6;
  }
}

void md::mun::MuninLabelLayerDataSource::createLayerData(uint64_t a1@<X1>, unsigned __int16 **a2@<X2>, void *a3@<X8>)
{
  gdc::Tiled::tileFromLayerDataKey(&v74, *(a1 + 16));
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v72, 24, *a2, a2[1]);
  if (v72)
  {
    v6 = *a2;
    v5 = a2[1];
    while (v6 != v5)
    {
      if (*v6 == 22)
      {
        if (v6 != v5)
        {
          v7 = *(v6 + 3);
          if (v7)
          {
            v8 = 0;
            v9 = 0;
            do
            {
              v11 = v7[14];
              v10 = v7[15];
              if (v11)
              {
                v12 = (v11 - 8);
              }

              else
              {
                v12 = 0;
              }

              if (v10)
              {
                atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v14 = v12[27];
              v13 = v12[28];
              v16 = v12[19];
              v15 = v12[20];
              if (v10)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v10);
              }

              v8 -= 0x30C30C30C30C30C3 * ((v13 - v14) >> 3);
              v9 += 0x63FB9AEB1FDCD759 * ((v15 - v16) >> 3);
              v7 = *v7;
            }

            while (v7);
            v77 = 0;
            v78 = 0uLL;
            v75 = 0;
            v76 = 0uLL;
            if (v8)
            {
              if (v8 <= 0x186186186186186)
              {
                v82 = &v77;
                std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>>(v8);
              }

LABEL_70:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }
          }

          else
          {
            v9 = 0;
            v77 = 0;
            v78 = 0uLL;
            v75 = 0;
            v76 = 0uLL;
          }

          std::vector<md::mun::CollectionPoint>::reserve(&v75, v9);
          for (i = *(v6 + 3); i; i = *i)
          {
            v18 = i[14];
            v19 = i[15];
            if (v18)
            {
              v20 = (v18 - 8);
            }

            else
            {
              v20 = 0;
            }

            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v71 = v19;
            v21 = v20[27];
            v22 = v20[28];
            v23 = v22 - v21;
            if (v22 - v21 >= 1)
            {
              v24 = v78;
              if (*(&v78 + 1) - v78 >= v23)
              {
                if (v22 != v21)
                {
                  v27 = v78;
                  do
                  {
                    v28 = v27;
                    v29 = *(v21 + 16);
                    *v27 = *v21;
                    *(v27 + 16) = v29;
                    v30 = *(v21 + 32);
                    v31 = *(v21 + 48);
                    v32 = *(v21 + 64);
                    *(v27 + 80) = *(v21 + 80);
                    *(v27 + 48) = v31;
                    *(v27 + 64) = v32;
                    v33 = v27 + 120;
                    *(v28 + 88) = v33;
                    *(v28 + 32) = v30;
                    *(v28 + 96) = v33;
                    *(v28 + 104) = v33;
                    *(v28 + 112) = 1;
                    geo::small_vector_base<md::mun::OrientedPlane>::append<md::mun::OrientedPlane const*>((v28 + 88), *(v21 + 88), *(v21 + 96));
                    v21 += 168;
                    v27 = v28 + 168;
                  }

                  while (v21 != v22);
                  v24 = (v28 + 168);
                }

                *&v78 = v24;
              }

              else
              {
                v25 = 0xCF3CF3CF3CF3CF3DLL * ((v78 - v77) >> 3) - 0x30C30C30C30C30C3 * (v23 >> 3);
                if (v25 > 0x186186186186186)
                {
                  goto LABEL_70;
                }

                if (0x9E79E79E79E79E7ALL * ((*(&v78 + 1) - v77) >> 3) > v25)
                {
                  v25 = 0x9E79E79E79E79E7ALL * ((*(&v78 + 1) - v77) >> 3);
                }

                if (0xCF3CF3CF3CF3CF3DLL * ((*(&v78 + 1) - v77) >> 3) >= 0xC30C30C30C30C3)
                {
                  v26 = 0x186186186186186;
                }

                else
                {
                  v26 = v25;
                }

                v82 = &v77;
                if (v26)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>>(v26);
                }

                v34 = 0;
                v35 = 8 * ((v78 - v77) >> 3);
                v79 = 0;
                v80 = v35;
                v81 = v35;
                do
                {
                  v36 = v35 + v34;
                  v37 = *(v21 + v34 + 16);
                  *v36 = *(v21 + v34);
                  *(v36 + 16) = v37;
                  v38 = *(v21 + v34 + 32);
                  v39 = *(v21 + v34 + 48);
                  v40 = *(v21 + v34 + 64);
                  *(v36 + 80) = *(v21 + v34 + 80);
                  *(v36 + 48) = v39;
                  *(v36 + 64) = v40;
                  *(v36 + 32) = v38;
                  v41 = v35 + v34 + 120;
                  *(v36 + 96) = v41;
                  *(v36 + 104) = v41;
                  *(v36 + 112) = 1;
                  *(v36 + 88) = v41;
                  geo::small_vector_base<md::mun::OrientedPlane>::append<md::mun::OrientedPlane const*>((v35 + v34 + 88), *(v21 + v34 + 88), *(v21 + v34 + 96));
                  v34 += 168;
                }

                while (v23 != v34);
                *&v81 = v35 + v23;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>,md::mun::StorefrontBundle*>(v24, v78, v35 + v23);
                *&v81 = v81 + v78 - v24;
                *&v78 = v24;
                v42 = (v80 + v77 - v24);
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>,md::mun::StorefrontBundle*>(v77, v24, v42);
                v43 = v77;
                v44 = *(&v78 + 1);
                v77 = v42;
                v78 = v81;
                *&v81 = v43;
                *(&v81 + 1) = v44;
                v79 = v43;
                v80 = v43;
                std::__split_buffer<md::mun::StorefrontBundle>::~__split_buffer(&v79);
              }
            }

            v46 = v20[19];
            v45 = v20[20];
            v47 = v45 - v46;
            if (v45 - v46 >= 1)
            {
              v48 = v76;
              if (*(&v76 + 1) - v76 >= v47)
              {
                if (v45 != v46)
                {
                  v51 = v76;
                  do
                  {
                    v52 = v51;
                    *v51 = *v46;
                    v53 = *(v46 + 8);
                    *(v51 + 24) = *(v46 + 24);
                    *(v51 + 8) = v53;
                    v54 = *(v46 + 32);
                    *(v52 + 40) = *(v46 + 40);
                    *(v52 + 32) = v54;
                    *(v52 + 44) = *(v46 + 44);
                    v55 = *(v46 + 56);
                    v56 = *(v46 + 72);
                    *(v52 + 88) = v52 + 120;
                    *(v52 + 56) = v55;
                    *(v52 + 72) = v56;
                    *(v52 + 96) = v52 + 120;
                    *(v52 + 104) = v52 + 120;
                    *(v52 + 112) = 6;
                    geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((v52 + 88), *(v46 + 88), *(v46 + 96));
                    v57 = *(v46 + 1848);
                    *(v52 + 1853) = *(v46 + 1853);
                    *(v52 + 1848) = v57;
                    v46 += 1864;
                    v51 = v52 + 1864;
                  }

                  while (v46 != v45);
                  v48 = v52 + 1864;
                }

                *&v76 = v48;
              }

              else
              {
                v49 = 0x63FB9AEB1FDCD759 * ((v76 - v75) >> 3) + 0x63FB9AEB1FDCD759 * (v47 >> 3);
                if (v49 > 0x2328A701194538)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                if (0xC7F735D63FB9AEB2 * ((*(&v76 + 1) - v75) >> 3) > v49)
                {
                  v49 = 0xC7F735D63FB9AEB2 * ((*(&v76 + 1) - v75) >> 3);
                }

                if ((0x63FB9AEB1FDCD759 * ((*(&v76 + 1) - v75) >> 3)) >= 0x119453808CA29CLL)
                {
                  v50 = 0x2328A701194538;
                }

                else
                {
                  v50 = v49;
                }

                v82 = &v75;
                if (v50)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::CollectionPoint>>(v50);
                }

                v58 = 0;
                v59 = 8 * ((v76 - v75) >> 3);
                v79 = 0;
                v80 = v59;
                v81 = v59;
                do
                {
                  v60 = v59 + v58;
                  *v60 = *(v46 + v58);
                  v61 = *(v46 + v58 + 8);
                  *(v60 + 24) = *(v46 + v58 + 24);
                  *(v60 + 8) = v61;
                  v62 = *(v46 + v58 + 32);
                  *(v60 + 40) = *(v46 + v58 + 40);
                  *(v60 + 32) = v62;
                  *(v60 + 44) = *(v46 + v58 + 44);
                  v63 = *(v46 + v58 + 56);
                  v64 = *(v46 + v58 + 72);
                  v65 = v59 + v58 + 120;
                  *(v59 + v58 + 88) = v65;
                  v66 = (v59 + v58 + 88);
                  *(v66 - 2) = v63;
                  *(v66 - 1) = v64;
                  v66[1] = v65;
                  v66[2] = v65;
                  v66[3] = 6;
                  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v66, *(v46 + v58 + 88), *(v46 + v58 + 96));
                  v67 = *(v46 + v58 + 1848);
                  *(v60 + 1853) = *(v46 + v58 + 1853);
                  *(v60 + 1848) = v67;
                  v58 += 1864;
                }

                while (v47 != v58);
                *&v81 = v59 + v47;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::CollectionPoint>,md::mun::CollectionPoint*>(v48, v76, v59 + v47);
                *&v81 = v81 + v76 - v48;
                *&v76 = v48;
                v68 = v80 + v75 - v48;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::CollectionPoint>,md::mun::CollectionPoint*>(v75, v48, v68);
                v69 = v75;
                v70 = *(&v76 + 1);
                v75 = v68;
                v76 = v81;
                *&v81 = v69;
                *(&v81 + 1) = v70;
                v79 = v69;
                v80 = v69;
                std::__split_buffer<md::mun::CollectionPoint>::~__split_buffer(&v79);
              }
            }

            if (v71)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v71);
            }
          }

          operator new();
        }

        break;
      }

      v6 += 24;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v73);
  }
}

void sub_1B2DCCC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  v29 = *(v27 - 136);
  if (v29)
  {
    operator delete(v29);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  (*(*v24 + 8))(v24);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a23);
  }

  _Unwind_Resume(a1);
}

void *std::vector<md::mun::CollectionPoint>::reserve(void *result, unint64_t a2)
{
  if (0x63FB9AEB1FDCD759 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2328A701194539)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::CollectionPoint>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 1864;
        geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((v4 - 1776));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<md::mun::StorefrontBundle>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 10);
        if (v6 != *(v4 - 8))
        {
          free(v6);
        }

        v4 -= 168;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<md::mun::CollectionPoint const*,md::mun::CollectionPoint const*,md::mun::CollectionPoint*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      for (i = 32; i != 44; i += 4)
      {
        *(a3 + i) = *(v5 + i);
      }

      *(a3 + 44) = *(v5 + 44);
      for (j = 8; j != 32; j += 8)
      {
        *(a3 + j) = *(v5 + j);
      }

      *(a3 + 48) = *(v5 + 48);
      for (k = 56; k != 80; k += 8)
      {
        *(a3 + k) = *(v5 + k);
      }

      *(a3 + 80) = *(v5 + 80);
      if (a3 != v5)
      {
        geo::small_vector_base<md::mun::PhotoInfo>::copy((a3 + 88), (v5 + 88), (a3 + 120));
      }

      v9 = *(v5 + 1848);
      *(a3 + 1853) = *(v5 + 1853);
      *(a3 + 1848) = v9;
      v5 += 1864;
      a3 += 1864;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::CollectionPoint>>(unint64_t a1)
{
  if (a1 < 0x2328A701194539)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<md::mun::CollectionPoint>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1864;
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(i - 1776);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::CollectionPoint>,md::mun::CollectionPoint*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 88;
    v6 = a3 + 120;
    do
    {
      *(v6 - 120) = *(v5 - 88);
      v7 = *(v5 - 80);
      *(v6 - 96) = *(v5 - 64);
      *(v6 - 112) = v7;
      v8 = *(v5 - 56);
      *(v6 - 80) = *(v5 - 48);
      *(v6 - 88) = v8;
      *(v6 - 76) = *(v5 - 44);
      v9 = *(v5 - 16);
      *(v6 - 64) = *(v5 - 32);
      *(v6 - 48) = v9;
      geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base((v6 - 32), v5, v6);
      v10 = *(v5 + 1760);
      *(v6 + 1733) = *(v5 + 1765);
      *(v6 + 1728) = v10;
      v11 = v5 + 1776;
      v5 += 1864;
      v6 += 1864;
    }

    while (v11 != a2);
    do
    {
      result = geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v4 + 88);
      v4 += 1864;
    }

    while (v4 != a2);
  }

  return result;
}

void *geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = a3;
  a1[2] = a3;
  v4 = *(a2 + 16);
  a1[3] = *(a2 + 24);
  v5 = *a2;
  if (*a2 == v4)
  {
    a1[1] = a3 + *(a2 + 8) - v5;
    geo::uninitialized_move<md::mun::PhotoInfo *,md::mun::PhotoInfo *>(v5, *(a2 + 8), a3);
  }

  else
  {
    v6 = *(a2 + 8);
    *a1 = v5;
    a1[1] = v6;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return a1;
}

char **geo::uninitialized_move<md::mun::PhotoInfo *,md::mun::PhotoInfo *>(char **result, char **a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    result = (a3 + 248);
    v5 = (v4 + 31);
    do
    {
      v6 = *(v5 - 248);
      *(result - 29) = *(v5 - 232);
      *(result - 31) = v6;
      v7 = *(v5 - 224);
      *(result - 54) = *(v5 - 216);
      *(result - 28) = v7;
      *(result - 212) = *(v5 - 212);
      v8 = *(v5 - 204);
      v9 = *(v5 - 188);
      v10 = *(v5 - 172);
      *(result - 156) = *(v5 - 156);
      *(result - 172) = v10;
      *(result - 188) = v9;
      *(result - 204) = v8;
      v11 = *(v5 - 140);
      v12 = *(v5 - 124);
      v13 = *(v5 - 108);
      *(result - 92) = *(v5 - 92);
      *(result - 108) = v13;
      *(result - 124) = v12;
      *(result - 140) = v11;
      v14 = *(v5 - 76);
      v15 = *(v5 - 60);
      v16 = *(v5 - 44);
      *(result - 28) = *(v5 - 28);
      *(result - 44) = v16;
      *(result - 60) = v15;
      *(result - 76) = v14;
      *(result - 3) = *(v5 - 12);
      *(result - 8) = *(v5 - 8);
      result = geo::small_vector_base<unsigned char>::small_vector_base(result, v5, result + 32) + 36;
      v17 = v5 + 40;
      v5 += 288;
    }

    while (v17 != a2);
  }

  return result;
}

void geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = a1[1];
  v8 = 0x8E38E38E38E38E39 * ((v7 - *a1) >> 5);
  if (0x8E38E38E38E38E39 * ((a3 - a2) >> 5) > a1[3] - v8)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::grow(a1, v8 - 0x71C71C71C71C71C7 * ((a3 - a2) >> 5));
    v7 = a1[1];
  }

  if (v4 != a3)
  {
    do
    {
      v9 = *v4;
      v7[2] = *(v4 + 2);
      *v7 = v9;
      v10 = *(v4 + 3);
      *(v7 + 8) = *(v4 + 8);
      v7[3] = v10;
      *(v7 + 36) = *(v4 + 36);
      v11 = *(v4 + 172);
      v12 = *(v4 + 188);
      v13 = *(v4 + 204);
      v14 = *(v4 + 220);
      v15 = *(v4 + 108);
      v16 = *(v4 + 124);
      v17 = *(v4 + 140);
      v18 = *(v4 + 156);
      v19 = *(v4 + 44);
      v20 = *(v4 + 60);
      v21 = *(v4 + 76);
      v22 = *(v4 + 92);
      v23 = v7 + 35;
      v7[31] = v7 + 35;
      v24 = v7 + 31;
      *(v24 - 156) = v22;
      *(v24 - 172) = v21;
      *(v24 - 188) = v20;
      *(v24 - 204) = v19;
      *(v24 - 92) = v18;
      *(v24 - 108) = v17;
      *(v24 - 124) = v16;
      *(v24 - 140) = v15;
      *(v24 - 28) = v14;
      *(v24 - 44) = v13;
      *(v24 - 60) = v12;
      *(v24 - 76) = v11;
      *(v24 - 3) = *(v4 + 59);
      *(v24 - 8) = *(v4 + 240);
      v24[1] = v23;
      v24[2] = v23;
      v24[3] = 2;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(v24, *(v4 + 31), *(v4 + 32));
      v4 += 18;
      v7 = v24 + 5;
    }

    while (v4 != a3);
    v7 = a1[1];
  }

  a1[1] = v7 + v6;
}

void geo::small_vector_base<md::mun::PhotoInfo>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(288 * v9, 0x1010040C6D9B592uLL);
  geo::uninitialized_move<md::mun::PhotoInfo *,md::mun::PhotoInfo *>(*a1, *(a1 + 8), v10);
  v11 = *a1;
  v12 = *(a1 + 8);
  while (v11 != v12)
  {
    v13 = v11[31];
    if (v13 != v11[33])
    {
      free(v13);
    }

    v11 += 36;
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v10;
  *(a1 + 8) = &v10[v4 - v3];
  *(a1 + 24) = v9;
}

void geo::small_vector_base<md::mun::PhotoInfo>::copy(__int128 **a1, __int128 **a2, __int128 *a3)
{
  if (a1 != a2)
  {
    v7 = *a1;
    v8 = a1[1];
    if (*a1 != v8)
    {
      do
      {
        v9 = *(v7 + 31);
        if (v9 != *(v7 + 33))
        {
          free(v9);
        }

        v7 += 18;
      }

      while (v7 != v8);
      v7 = *a1;
    }

    if (v7 != a1[2])
    {
      free(v7);
    }

    *a1 = a3;
    a1[1] = a3;
    a1[2] = a3;
    a1[3] = 6;
    v10 = *a2;
    v11 = a2[1];

    geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(a1, v10, v11);
  }
}

void geo::small_vector_base<md::mun::PhotoInfo>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      do
      {
        v8 = v6[31];
        if (v8 != v6[33])
        {
          free(v8);
        }

        v6 += 36;
      }

      while (v6 != v7);
      v6 = *a1;
    }

    if (v6 != *(a1 + 16))
    {
      free(v6);
    }

    *(a1 + 16) = a3;
    if (*a2 == *(a2 + 16))
    {
      *a1 = a3;
      v11 = *a2;
      *(a1 + 8) = a3 + *(a2 + 8) - *a2;
      geo::uninitialized_move<md::mun::PhotoInfo *,md::mun::PhotoInfo *>(v11, *(a2 + 8), a3);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v10;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    *(a1 + 24) = v9;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>>(unint64_t a1)
{
  if (a1 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<md::mun::StorefrontBundle>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 168;
    v4 = *(v2 - 80);
    if (v4 == *(v2 - 64))
    {
      v2 -= 168;
    }

    else
    {
      free(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>,md::mun::StorefrontBundle*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3 + 120;
    v6 = a1;
    do
    {
      v7 = *v6;
      *(v5 - 104) = v6[1];
      *(v5 - 120) = v7;
      v8 = v6[2];
      v9 = v6[3];
      v10 = v6[4];
      *(v5 - 40) = *(v6 + 80);
      *(v5 - 56) = v10;
      *(v5 - 72) = v9;
      *(v5 - 88) = v8;
      geo::small_vector_base<md::mun::OrientedPlane>::small_vector_base((v5 - 32), v6 + 11, v5);
      v6 = (v6 + 168);
      v5 += 168;
    }

    while (v6 != a2);
    do
    {
      v11 = *(v4 + 11);
      if (v11 != *(v4 + 13))
      {
        free(v11);
      }

      v4 = (v4 + 168);
    }

    while (v4 != a2);
  }
}

float geo::small_vector_base<md::mun::OrientedPlane>::small_vector_base(__int128 **a1, __int128 **a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = a3;
  a1[2] = a3;
  v3 = a2[2];
  a1[3] = a2[3];
  v4 = *a2;
  if (*a2 == v3)
  {
    a1[1] = (a3 + a2[1] - v4);
    v7 = a2[1];
    while (v4 != v7)
    {
      v8 = *v4;
      *(a3 + 16) = *(v4 + 2);
      *a3 = v8;
      v9 = *(v4 + 3);
      *(a3 + 32) = *(v4 + 8);
      *(a3 + 24) = v9;
      result = *(v4 + 9);
      *(a3 + 36) = result;
      *(a3 + 40) = *(v4 + 5);
      a3 += 48;
      v4 += 3;
    }
  }

  else
  {
    v5 = a2[1];
    *a1 = v4;
    a1[1] = v5;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

void geo::small_vector_base<md::mun::OrientedPlane>::append<md::mun::OrientedPlane const*>(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = a1[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 4);
  if (0xAAAAAAAAAAAAAAABLL * (a3 - a2) > a1[3] - v8)
  {
    geo::small_vector_base<md::mun::OrientedPlane>::grow(a1, v8 - 0x5555555555555555 * (a3 - a2));
    v7 = a1[1];
  }

  if (v4 != a3)
  {
    do
    {
      v9 = *v4;
      *(v7 + 16) = *(v4 + 2);
      *v7 = v9;
      v10 = *(v4 + 3);
      *(v7 + 32) = *(v4 + 8);
      *(v7 + 24) = v10;
      *(v7 + 36) = *(v4 + 9);
      *(v7 + 40) = *(v4 + 5);
      v4 += 3;
      v7 += 48;
    }

    while (v4 != a3);
    v7 = a1[1];
  }

  a1[1] = v7 + v6;
}

void geo::small_vector_base<md::mun::OrientedPlane>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(48 * v9, 0x1000040EED21634uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      v16 = v12[3];
      *(v14 + 8) = *(v12 + 8);
      *(v14 + 3) = v16;
      *(v14 + 9) = *(v12 + 9);
      *(v14 + 5) = v12[5];
      v14 += 48;
      v12 += 6;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = &v11[v4 - v3];
  *(a1 + 24) = v9;
}

void md::mun::MuninLabelLayerDataSource::constructRequests(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v26, *v4);
      v6 = *v4;
      gdc::Tiled::tileFromLayerDataKey(v25, *(*v4 + 16));
      v7 = v27;
      Int32 = gdc::ResourceKey::getInt32(v27, 0);
      v32 = gdc::ResourceKey::getInt32(v7, 1u);
      LODWORD(v33) = gdc::ResourceKey::getInt32(v7, 2u);
      HIDWORD(v33) = gdc::ResourceKey::getInt32(v7, 3u);
      gdc::ResourceKey::ResourceKey(v22, 0, 24, &Int32, 4, *(v6 + 112), 2147483646);
      gdc::LayerDataRequest::request(*v4, v22, 0);
      for (i = -1; i != 2; ++i)
      {
        for (j = -1; j != 2; ++j)
        {
          v10 = v27;
          LODWORD(v29) = gdc::ResourceKey::getInt32(v27, 0) + j;
          HIDWORD(v29) = gdc::ResourceKey::getInt32(v10, 1u) + i;
          LODWORD(v30) = gdc::ResourceKey::getInt32(v10, 2u);
          DWORD1(v30) = gdc::ResourceKey::getInt32(v10, 3u);
          gdc::ResourceKey::ResourceKey(&Int32, 0, 22, &v29, 4, *(*v4 + 112), 2147483646);
          gdc::LayerDataRequest::request(*v4, &Int32, 0);
          if (v33 != v35)
          {
            free(v33);
          }
        }
      }

      v11 = [MEMORY[0x1E69A2478] modernManager];
      v12 = [v11 activeTileGroup];

      for (k = 0; k < [v12 regionalResourcesCount]; ++k)
      {
        v14 = [v12 regionalResourceAtIndex:k];
        for (m = 0; m < [v14 regionsCount]; ++m)
        {
          v29 = 0;
          v30 = 0uLL;
          if (v14)
          {
            [v14 regionAtIndex:m];
            v16 = HIDWORD(v30);
            v17 = v30;
            v18 = *(&v30 + 4);
            v19 = v29;
          }

          else
          {
            v19 = 0;
            v18 = 0;
            v17 = 0;
            v16 = 0;
          }

          Int32 = v16;
          v32 = v17;
          v33 = v18;
          v34 = v19;
          if (md::TiledGEOResourceFetcher::regionContainsTile(&Int32, v25))
          {
            v20 = *(a1 + 592);
            v21 = *(*v4 + 112);
            v36[0] = k;
            v36[1] = v20;
            gdc::ResourceKey::ResourceKey(&Int32, 0, 18, v36, 2, v21, -1073741827);
            gdc::LayerDataRequest::request(*v4, &Int32, 0);
            if (v33 != v35)
            {
              free(v33);
            }

            break;
          }
        }
      }

      if (v23 != v24)
      {
        free(v23);
      }

      if (v27 != v28)
      {
        free(v27);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }
}

void sub_1B2DCDDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, void *a30)
{
  if (a11 != a13)
  {
    free(a11);
  }

  if (a28 != a30)
  {
    free(a28);
  }

  _Unwind_Resume(exception_object);
}

void md::mun::MuninLabelLayerDataSource::didDeactivate(md::mun::MuninLabelLayerDataSource *this)
{
  v2 = *(this + 83);
  *(this + 41) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void md::mun::MuninLabelLayerDataSource::didActivate(md::mun::MuninLabelLayerDataSource *this)
{
  v2 = *(this + 81);
  if (v2)
  {
    (*(*v2 + 48))(&v7);
    v4 = v7;
    v3 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *(this + 82) = v4;
    v5 = *(this + 83);
    *(this + 83) = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
      v3 = v8;
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    md::mun::MuninLabelLayerDataSource::~MuninLabelLayerDataSource(v6);
  }
}

void md::mun::MuninLabelLayerDataSource::~MuninLabelLayerDataSource(md::mun::MuninLabelLayerDataSource *this)
{
  *this = &unk_1F2A00458;
  v2 = *(this + 83);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 624);
  *(this + 75) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A00458;
  v2 = *(this + 83);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 624);
  *(this + 75) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);
}

void ___ZN2md3mun20MuninRenderResourcesC2EPKNS_6DeviceE_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v12, *(a1 + 32), 0, (*(*(a1 + 32) + 48) - *(*(a1 + 32) + 40)) / *(*(a1 + 32) + 8), 1, 0, 0);
  v2 = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  v13 = _D0;
  v14 = 1065353216;
  __asm { FMOV            V2.2S, #1.0 }

  v15[0] = 0x3F80000000000000;
  *&v15[2] = -_D2;
  LODWORD(v16) = 1065353216;
  v17 = _D2;
  v18 = _D2;
  v19 = 1065353216;
  v20 = 1065353216;
  v21 = -_D0;
  v23 = 0;
  v22 = 1065353216;
  v9 = v12[5];
  do
  {
    v10 = v9 + v2 * 8;
    *v10 = *(&v13 + v2 * 8);
    *(v10 + 8) = *(&v13 + v2 * 8 + 8);
    *(v10 + 16) = v15[v2];
    v2 += 4;
  }

  while (v2 != 16);
  ggl::BufferMemory::~BufferMemory(v12);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(&v13, *(a1 + 48), 0, (*(*(a1 + 48) + 48) - *(*(a1 + 48) + 40)) / *(*(a1 + 48) + 8), 1, 0, 0);
  v11 = v16;
  *v16 = 0x2000200010000;
  *(v11 + 2) = 3;
  ggl::BufferMemory::~BufferMemory(&v13);
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::VSView::StretchAlphaPipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::VSView::StretchAlphaPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::VSView::StretchAlphaPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::VSView::StretchAlphaPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::VSView::PipelineSetup>>::reset[abi:nn200100](void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::VSView::PipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::VSView::PipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::VSView::PipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<std::unique_ptr<ggl::RenderState>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ggl::ConstantDataTyped<ggl::VSTextured::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VSTextured::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::FragmentedPool<ggl::VSView::PipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::VSView::PipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::VSView::PipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::PipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::PipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

ggl::zone_mallocator *std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::PipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::PipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::PipelineSetup *>(v5, v4);
  }

  return a1;
}

void ggl::ConstantDataTyped<ggl::VSView::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VSView::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::mun::MuninRenderResources::MuninRenderResources(md::Device const*)::$_1,std::allocator<md::mun::MuninRenderResources::MuninRenderResources(md::Device const*)::$_1>,ggl::VSView::PipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A006A0;
  a2[1] = v2;
  return result;
}

void *ggl::FragmentedPool<ggl::VSView::StretchAlphaPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::VSView::StretchAlphaPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::VSView::StretchAlphaPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::StretchAlphaPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::StretchAlphaPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

ggl::zone_mallocator *std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::StretchAlphaPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::StretchAlphaPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::StretchAlphaPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__func<md::mun::MuninRenderResources::MuninRenderResources(md::Device const*)::$_0,std::allocator<md::mun::MuninRenderResources::MuninRenderResources(md::Device const*)::$_0>,ggl::VSView::StretchAlphaPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A005B8;
  a2[1] = v2;
  return result;
}

void ggl::ConstantDataTyped<ggl::VSView::Shared>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VSView::Shared>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::VSCommon::Mesh *,std::shared_ptr<ggl::VSCommon::Mesh>::__shared_ptr_default_delete<ggl::VSCommon::Mesh,ggl::VSCommon::Mesh>,std::allocator<ggl::VSCommon::Mesh>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::VSCommon::Mesh *,std::shared_ptr<ggl::VSCommon::Mesh>::__shared_ptr_default_delete<ggl::VSCommon::Mesh,ggl::VSCommon::Mesh>,std::allocator<ggl::VSCommon::Mesh>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void __destroy_helper_block_ea8_32c72_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_8VSCommon6VertexEEEEE48c51_ZTSNSt3__110shared_ptrIN3ggl14IndexDataTypedItEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *__copy_helper_block_ea8_32c72_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_8VSCommon6VertexEEEEE48c51_ZTSNSt3__110shared_ptrIN3ggl14IndexDataTypedItEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<ggl::VSTextured::CompositingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A008F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VSView::StretchAlphaPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A008C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Clear::ClearMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_1>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::Clear::ClearData>::DataAccess(v8, **(a1 + 8), *a2);
  v4 = v9;
  *v9 = xmmword_1B33B0F50;
  v4[1] = xmmword_1B33B0F40;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v6, **(a1 + 16), 0, 6, 1, 0, v3);
  v5 = v7;
  *v7 = 0x2000200010000;
  *(v5 + 2) = 3;
  ggl::BufferMemory::~BufferMemory(v6);
  ggl::BufferMemory::~BufferMemory(v8);
}

__n128 std::__function::__func<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_1>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A00840;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Clear::ClearData>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Clear::ClearData>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Clear::ClearData>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  ggl::DataAccess<ggl::Clear::ClearConstants>::DataAccess(v3, *(*(a1 + 8) + 112), *a2);
  v2 = v4;
  *v4 = xmmword_1B33B0F60;
  *(v2 + 4) = 1065353216;
  ggl::BufferMemory::~BufferMemory(v3);
}

uint64_t std::__function::__func<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A007F8;
  a2[1] = v2;
  return result;
}

void ggl::ConstantDataTyped<ggl::Clear::ClearConstants>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Clear::ClearConstants>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Clear::ClearPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5C038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VSTextured::PassthroughPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A007C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VSView::PipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MaskedIconLabelPart::populateMeshDescriptor(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x1E69E9840];
  *(a2 + 3) = 1;
  v3[0] = &unk_1F2A00D00;
  v3[1] = a1;
  v3[3] = v3;
  std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::swap[abi:nn200100](v3, (a2 + 8));
  return std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v3);
}

__n128 std::__function::__func<md::MaskedIconLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0,std::allocator<md::MaskedIconLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  md::IconLabelPart::populateMesh(v4, a3);
  result = v4[52];
  *(a3 + 116) = result;
  *(a3 + 112) = 0;
  return result;
}

uint64_t std::__function::__func<md::MaskedIconLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0,std::allocator<md::MaskedIconLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A00D00;
  a2[1] = v2;
  return result;
}

uint64_t md::MaskedIconLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  a1[105].i32[1] = 1086918619;
  a1[105].i32[0] = a1[104].i32[1];
  if (a3)
  {
    v10 = *(a3 + 24);
    v11 = *(a3 + 32);
    if (0x8E38E38E38E38E39 * ((v11 - v10) >> 4) <= a1[70].u8[3])
    {
      if (v10 == v11 || (*(a3 + 89) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 += 18 * a1[70].u8[3];
    }

    if (v10)
    {
      v12 = *v10;
      v13 = v10[1];
      if (*v10 != v13)
      {
        v14 = *v10;
        while (*(v14 + 16) != 3)
        {
          v14 += 24;
          if (v14 == v13)
          {
            goto LABEL_13;
          }
        }

        v15 = md::LabelAnimation::property(v12, v13, 3) * 6.28318531;
        a1[105].f32[1] = v15;
      }
    }
  }

LABEL_13:
  md::IconLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
  return 37;
}

float md::LabelAnimation::property(uint64_t a1, uint64_t a2, int a3)
{
  result = 1.0;
  while (a1 != a2)
  {
    if (*(a1 + 16) == a3)
    {
      return *(a1 + 8) + (*(**a1 + 32 * *(*a1 + 32) + 8) * (*(a1 + 12) - *(a1 + 8)));
    }

    a1 += 24;
  }

  return result;
}

float md::MaskedIconLabelPart::prepareForDisplay(md::MaskedIconLabelPart *this, md::LabelManager *a2)
{
  v3 = *(this + 153);
  if (v3 == *(this + 204))
  {
    v4 = 0;
    v5 = 1;
    while (*(this + v4 + 80) >= *(this + v4 + 78))
    {
      v6 = v5;
      v5 = 0;
      v4 = 1;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  *(this + 204) = v3;
  (*(*this + 920))(this, 1, this + 640, this + 312);
LABEL_7:
  if (*(this + 565) == 1)
  {
    operator new();
  }

  v7 = (*(*this + 928))(this);
  v11 = *(this + 153);
  v12 = v11 == 1.0;
  v13 = v7 * v11;
  v14 = v8 * v11;
  v15 = v9 * v11;
  v16 = v10 * v11;
  if (!v12)
  {
    v7 = v13;
    v8 = v14;
    v9 = v15;
    v10 = v16;
  }

  v17 = fminf(v10 - v8, v9 - v7);
  *(this + 209) = v17;
  result = (v17 * 0.5) + -1.0;
  *(this + 208) = result;
  return result;
}

void md::MaskedIconLabelPart::~MaskedIconLabelPart(md::MaskedIconLabelPart *this)
{
  md::IconLabelPart::~IconLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void *md::GraphTraversalPath::GraphTraversalPath(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if (!((v5 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v5 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::vector<md::MuninRoadEdge const*>::vector[abi:nn200100](a1 + 3, a2 + 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v7 = a2[6];
  v6 = a2[7];
  if (v6 != v7)
  {
    if (v6 - v7 >= 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

void sub_1B2DD01A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void md::GraphTraversalPath::visit(md::GraphTraversalPath *this, const md::MuninJunction *a2)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = (v4 - *this) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *this;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v9);
    }

    v10 = (8 * v6);
    *v10 = a2;
    v5 = 8 * v6 + 8;
    v11 = *(this + 1) - *this;
    v12 = v10 - v11;
    memcpy(v10 - v11, *this, v11);
    v13 = *this;
    *this = v12;
    *(this + 1) = v5;
    *(this + 2) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(this + 1) = v5;
  v15 = *(this + 7);
  v14 = *(this + 8);
  if (v15 >= v14)
  {
    v17 = *(this + 6);
    v18 = (v15 - v17);
    v19 = v15 - v17 + 1;
    if (v19 < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v14 - v17;
    if (2 * v20 > v19)
    {
      v19 = 2 * v20;
    }

    if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      operator new();
    }

    v22 = v15 - v17;
    *v18 = 0;
    v16 = v18 + 1;
    memcpy(0, v17, v22);
    *(this + 6) = 0;
    *(this + 7) = v18 + 1;
    *(this + 8) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v15 = 0;
    v16 = v15 + 1;
  }

  *(this + 7) = v16;
}

void md::GraphTraversalPath::visit(md::GraphTraversalPath *this, const MuninRoadEdge *a2)
{
  v4 = *(this + 4);
  v3 = *(this + 5);
  if (v4 >= v3)
  {
    v6 = *(this + 3);
    v7 = (v4 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - v6;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v10);
    }

    v11 = (8 * v7);
    *v11 = a2;
    v5 = 8 * v7 + 8;
    v12 = *(this + 3);
    v13 = *(this + 4) - v12;
    v14 = v11 - v13;
    memcpy(v11 - v13, v12, v13);
    v15 = *(this + 3);
    *(this + 3) = v14;
    *(this + 4) = v5;
    *(this + 5) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(this + 4) = v5;
  v17 = *(this + 7);
  v16 = *(this + 8);
  if (v17 >= v16)
  {
    v19 = *(this + 6);
    v20 = (v17 - v19);
    v21 = v17 - v19 + 1;
    if (v21 < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v22 = v16 - v19;
    if (2 * v22 > v21)
    {
      v21 = 2 * v22;
    }

    if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      operator new();
    }

    v24 = v17 - v19;
    *v20 = 1;
    v18 = v20 + 1;
    memcpy(0, v19, v24);
    *(this + 6) = 0;
    *(this + 7) = v20 + 1;
    *(this + 8) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v17 = 1;
    v18 = v17 + 1;
  }

  *(this + 7) = v18;
}

uint64_t md::GraphTraversalPath::depth(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return (*(a1 + 32) - *(a1 + 24)) >> 3;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  do
  {
    v6 = *v2++;
    v5 = v5 + std::function<BOOL ()(md::MuninJunction const*)>::operator()(*(a2 + 24), v6);
  }

  while (v2 != v3);
  return v5;
}

uint64_t *std::function<BOOL ()(md::MuninJunction const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v5);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, v4);
}

uint64_t *std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t md::FlyoverDsmLayerDataSource::createResourceKey(uint64_t a1, const geo::QuadTile *a2, char a3, int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v25 = *MEMORY[0x1E69E9840];
  md::FlyoverMetaData::tileCacheLookup(&v18, a2, a5, 0, 0);
  if (v24)
  {
    v13 = v23;
  }

  else
  {
    v13 = 0;
  }

  v18 = vrev64_s32(*(a5 + 4));
  v14 = *a5;
  v19 = a5[1];
  v20 = v14;
  if ((v13 & 0x100000000) == 0 || a4 == 50)
  {
    LODWORD(v13) = 0;
  }

  v21 = 0;
  v22 = v13;
  if ((a7 & 0x100000000) != 0)
  {
    v16 = a7;
  }

  else
  {
    v16 = 2147483646;
  }

  return gdc::ResourceKey::ResourceKey(a1, a3, a4, &v18, 6, a6, v16);
}

void md::FlyoverDsmLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  memset(__p, 0, sizeof(__p));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], __p);
  gdc::LayerDataSource::getResourceFromMap(&v8, 50, *a3, a3[1]);
  v4 = *(&v8 + 1);
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  gdc::LayerDataSource::getResourceFromMap(&v8, 20, *a3, a3[1]);
  v5 = v8;
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v5 + 1));
  }

  if (v5 && (v6 = *(v5 + 144)) != 0 && *v6 != v6[1])
  {
    if (*(&v5 + 1))
    {
      atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (!v4)
    {
LABEL_14:
      operator new();
    }
  }

  else if (!v4)
  {
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  goto LABEL_14;
}

void sub_1B2DD0AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    if (!v14)
    {
LABEL_3:
      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  if (!v13)
  {
LABEL_4:
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  if (!v12)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  goto LABEL_6;
}

void std::__shared_ptr_emplace<md::FlyoverDsmTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00DF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::FlyoverDsmLayerDataSource::constructRequests(uint64_t a1, char **a2, char **a3)
{
  v6 = (*(**(a1 + 24) + 24))(*(a1 + 24), 20);
  v8 = v7;
  v9 = (*(**(a1 + 24) + 24))(*(a1 + 24), 50);
  if (a2 != a3)
  {
    v11 = v9;
    v12 = v10;
    v13 = HIDWORD(v9);
    v14 = v8 ^ 1;
    while (1)
    {
      *&v15 = gdc::Tiled::tileFromLayerDataKey(&v44, *(*a2 + 2));
      (*(**(a1 + 24) + 16))(v39, v15);
      if (v43 != 1)
      {
        break;
      }

      md::FlyoverMetaData::adjustedTile(v37, *(a1 + 760), v39, 1);
      v16 = v38;
      if (v37[32] == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = v38;
      }

      if (((v17 | v14) & 1) == 0 && v6 <= v39[1] && HIDWORD(v6) >= v39[1])
      {
        md::FlyoverMetaData::tileCacheLookup(v32, *(a1 + 760), v39, 0, 0);
        if (v36)
        {
          v24 = v35;
        }

        else
        {
          v24 = 0;
        }

        if ((v24 & 0x100000000) != 0)
        {
          if (v24)
          {
            md::FlyoverDsmLayerDataSource::createResourceKey(v32, *(a1 + 760), **a2, 20, v39, *(*a2 + 14), *(*a2 + 12) & 0xFFFFFFFFFFLL);
            gdc::LayerDataRequest::request(*a2, v32, v16 ^ 1);
            if (v33 != v34)
            {
              free(v33);
            }
          }
        }
      }

      if ((v43 & 1) == 0)
      {
        v25 = std::__throw_bad_optional_access[abi:nn200100]();
        md::FlyoverDsmLayerDataSource::didProcessNewLayerData(v25);
        return;
      }

      v29 = v40;
      v28 = *v39;
      v30 = v41;
      v31 = v42;
      (*(**(a1 + 24) + 16))(v26);
      if ((v27 & v12 & 1) != 0 && v11 <= BYTE1(v26[0]) && v13 >= BYTE1(v26[0]))
      {
        v18 = **a2;
        v19 = *(*a2 + 14);
        v20 = *(*a2 + 12);
        v21 = *(a1 + 760);
        v22 = v26;
LABEL_20:
        md::FlyoverDsmLayerDataSource::createResourceKey(v32, v21, v18, 50, v22, v19, v20 & 0xFFFFFFFFFFLL);
        gdc::LayerDataRequest::request(*a2, v32, 0);
        if (v33 != v34)
        {
          free(v33);
        }
      }

LABEL_22:
      a2 += 2;
      if (a2 == a3)
      {
        return;
      }
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (v11 > v45 || v13 < v45)
    {
      goto LABEL_22;
    }

    v18 = **a2;
    v19 = *(*a2 + 14);
    v20 = *(*a2 + 12);
    v21 = *(a1 + 760);
    v22 = &v44;
    goto LABEL_20;
  }
}

void md::FlyoverDsmLayerDataSource::didProcessNewLayerData(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 776);
  if (v2)
  {
    v3 = *(v2 + 128);
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = *a2;
        v6 = a2[1];
        if (*a2 != v6)
        {
          do
          {
            gdc::Tiled::tileFromLayerDataKey(&v12, *(v5 + 24));
            v7 = 1.0 / (1 << v13);
            v8 = v7 * v15;
            v9 = v7 * ((1 << v13) + ~v14);
            v10 = v8 + v7;
            v11 = v9 + v7;
            md::MercatorTerrainHeightCache::invalidateRect(v4, &v8);
            v5 += 120;
          }

          while (v5 != v6);
        }
      }
    }
  }
}

void md::FlyoverDsmLayerDataSource::~FlyoverDsmLayerDataSource(md::FlyoverDsmLayerDataSource *this)
{
  *this = &unk_1F2A00D48;
  v2 = *(this + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A00D48;
  v2 = *(this + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

uint64_t md::mun::MuninLayer::render(md::mun::MuninLayer *this, const md::LayoutContext *a2)
{
  v210 = *MEMORY[0x1E69E9840];
  result = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1));
  if (!result)
  {
    return result;
  }

  v3 = result;
  md::RenderItemPool::reset((*(this + 8) + 192));
  v4 = *(*(this + 8) + 232);
  v5 = *(v4 + 4);
  v6 = *(v4 + 5);
  if (v5 != v6)
  {
    do
    {
      v204.n128_u64[0] = *v5;
      std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v4, &v204);
      ++v5;
    }

    while (v5 != v6);
    v5 = *(v4 + 4);
    v6 = *(v4 + 5);
  }

  if (v5 != v6)
  {
    *(v4 + 5) = v5;
  }

  v7 = *(*(this + 8) + 256);
  v8 = *(v7 + 4);
  v9 = *(v7 + 5);
  if (v8 != v9)
  {
    do
    {
      v204.n128_u64[0] = *v8;
      std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v7, &v204);
      ++v8;
    }

    while (v8 != v9);
    v8 = *(v7 + 4);
    v9 = *(v7 + 5);
  }

  if (v8 != v9)
  {
    *(v7 + 5) = v8;
  }

  v10 = *(*(this + 8) + 168);
  ggl::BufferMemory::BufferMemory(v202);
  ggl::ResourceAccessor::accessConstantData(&v204, 0, v10, 1);
  ggl::BufferMemory::operator=(v202, &v204);
  ggl::BufferMemory::~BufferMemory(&v204);
  v11 = *a2;
  [v11 sizeInPixels];
  *&v12 = v12;
  *v203 = LODWORD(v12);

  v13 = *a2;
  [v13 sizeInPixels];
  v15 = v14;
  *(v203 + 4) = v15;

  *(v203 + 8) = 0x4228000040800000;
  ggl::DataAccess<ggl::Clear::ClearConstants>::DataAccess(&v204, *(*(this + 8) + 112), 0);
  *v205 = xmmword_1B33B0F60;
  ggl::BufferMemory::~BufferMemory(&v204);
  ggl::BufferMemory::~BufferMemory(v202);
  v17 = *(v3 + 192);
  v16 = *(v3 + 200);
  v18 = v16 - v17;
  if (v16 == v17)
  {
    result = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1));
    if (result)
    {
      v70 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), 0);
      if (v70)
      {
        v71 = **(v70 + 16);
      }

      else
      {
        v71 = 0;
      }

      ggl::CommandBuffer::clearRenderItems(v71);
      ggl::CommandBuffer::clearBufferLoadItems(v71);
      result = ggl::CommandBuffer::clearTextureLoadItems(v71);
      *(v71 + 32) = *(*(this + 8) + 104);
    }

    return result;
  }

  v19 = *(a2 + 1);
  result = gdc::Context::context<md::MuninSceneContext>(v19);
  v188 = result;
  if (v18 != 8)
  {
    v198 = *(*(this + 5) + 24);
    v72 = md::FrameGraph::renderQueueForPass(*(v198 + 8), 0);
    if (v72)
    {
      v73 = **(v72 + 16);
    }

    else
    {
      v73 = 0;
    }

    v74 = *(this + 8);
    *(v73 + 4) = *(v74 + 104);
    v75 = md::LayoutContext::get<md::CameraContext>(v19);
    v76 = *(v74 + 264);
    ggl::BufferMemory::BufferMemory(v202);
    ggl::ResourceAccessor::accessConstantData(&v204, 0, v76, 1);
    ggl::BufferMemory::operator=(v202, &v204);
    ggl::BufferMemory::~BufferMemory(&v204);
    v78 = *(v188 + 192);
    v77 = *(v188 + 200);
    v79 = v77 - v78;
    if (v77 == v78)
    {
      v89 = v203;
      *v203 = 1065353216;
      *(v89 + 8) = 0;
      *(v89 + 12) = 0x100000001;
      v90 = 1;
    }

    else
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = v79 >> 3;
      while (v84 != v80)
      {
        v85 = *(v78 + 8 * v80);
        if (v85 == *(v188 + 80))
        {
          v83 = v80;
        }

        if (v85 == *(v188 + 96))
        {
          v81 = v80;
        }

        if (v85 == *(v188 + 112))
        {
          v82 = v80;
        }

        ++v80;
      }

      v86 = *(*(v198 + 40) + 8 * v83);
      if (v86)
      {
        v87 = *(v86 + 32);
        v88 = *(*(v198 + 8) + 96);
        if (v87 >= (*(*(v198 + 8) + 104) - v88) >> 3)
        {
          v86 = 0;
        }

        else
        {
          v86 = *(*(v88 + 8 * v87) + 16);
        }
      }

      **(*(*(this + 8) + 296) + 168) = v86;
      v91 = *(*(v198 + 88) + 24 * v83 + 16);
      if (v91)
      {
        v92 = *(v91 + 32);
        v93 = *(*(v198 + 8) + 96);
        if (v92 >= (*(*(v198 + 8) + 104) - v93) >> 3)
        {
          v91 = 0;
        }

        else
        {
          v91 = *(*(v93 + 8 * v92) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 8) = v91;
      v94 = *(*(v198 + 40) + 8 * v82);
      if (v94)
      {
        v95 = *(v94 + 32);
        v96 = *(*(v198 + 8) + 96);
        if (v95 >= (*(*(v198 + 8) + 104) - v96) >> 3)
        {
          v94 = 0;
        }

        else
        {
          v94 = *(*(v96 + 8 * v95) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 16) = v94;
      v97 = *(*(v198 + 88) + 24 * v82 + 16);
      if (v97)
      {
        v98 = *(v97 + 32);
        v99 = *(*(v198 + 8) + 96);
        if (v98 >= (*(*(v198 + 8) + 104) - v99) >> 3)
        {
          v97 = 0;
        }

        else
        {
          v97 = *(*(v99 + 8 * v98) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 24) = v97;
      v100 = *(*(v198 + 40) + 8 * v81);
      if (v100)
      {
        v101 = *(v100 + 32);
        v102 = *(*(v198 + 8) + 96);
        if (v101 >= (*(*(v198 + 8) + 104) - v102) >> 3)
        {
          v100 = 0;
        }

        else
        {
          v100 = *(*(v102 + 8 * v101) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 32) = v100;
      v103 = *(*(v198 + 88) + 24 * v81 + 16);
      if (v103)
      {
        v104 = *(v103 + 32);
        v105 = *(*(v198 + 8) + 96);
        if (v104 >= (*(*(v198 + 8) + 104) - v105) >> 3)
        {
          v103 = 0;
        }

        else
        {
          v103 = *(*(v105 + 8 * v104) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 40) = v103;
      v106 = *(v188 + 120);
      if (v106 < 0.5)
      {
        v81 = v83;
      }

      v107 = *(*(v198 + 64) + 8 * v81);
      if (v107)
      {
        v108 = *(v107 + 32);
        v109 = *(*(v198 + 8) + 96);
        if (v108 >= (*(*(v198 + 8) + 104) - v109) >> 3)
        {
          v107 = 0;
        }

        else
        {
          v107 = *(*(v109 + 8 * v108) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 48) = v107;
      v89 = v203;
      *v203 = v106;
      *(v89 + 4) = *(v188 + 124);
      v110 = *(v188 + 72);
      v111 = *(v188 + 104);
      v112 = v111 - v110;
      if (v110 > v111)
      {
        v112 = v110 - v111;
      }

      *(v89 + 12) = v112 < 0xEA61;
      v113 = *(v188 + 88);
      v114 = v113 - v110;
      v115 = v110 > v113;
      v116 = v110 - v113;
      if (!v115)
      {
        v116 = v114;
      }

      *(v89 + 16) = v116 < 0xEA61;
      v117 = v113 - v111;
      v115 = v111 > v113;
      v118 = v111 - v113;
      if (v115)
      {
        v117 = v118;
      }

      v90 = v117 < 0xEA61;
    }

    *(v89 + 20) = v90;
    ggl::BufferMemory::~BufferMemory(v202);
    v119 = md::FrameGraph::renderQueueForPass(*(v198 + 8), 3);
    if (v119)
    {
      v119 = **(v119 + 2);
    }

    result = ggl::CommandBuffer::pushRenderItem(v119, *(*(this + 8) + 304));
    v120 = *(v198 + 112);
    if (v120)
    {
      v121 = *(v120 + 32);
      v122 = *(*(v198 + 8) + 96);
      v123 = this;
      if (v121 >= (*(*(v198 + 8) + 104) - v122) >> 3)
      {
        v120 = 0;
      }

      else
      {
        v120 = *(*(v122 + 8 * v121) + 16);
      }
    }

    else
    {
      v123 = this;
    }

    **(*(*(this + 8) + 328) + 168) = v120;
    v124 = *(v198 + 120);
    if (v124)
    {
      v125 = *(v124 + 32);
      v126 = *(*(v198 + 8) + 96);
      if (v125 >= (*(*(v198 + 8) + 104) - v126) >> 3)
      {
        v124 = 0;
      }

      else
      {
        v124 = *(*(v126 + 8 * v125) + 16);
      }
    }

    *(*(*(*(v123 + 8) + 328) + 168) + 8) = v124;
    if (*(v188 + 200) != *(v188 + 192))
    {
      result = ggl::CommandBuffer::pushRenderItem(v73, *(*(v123 + 8) + 336));
    }

    v190 = 0;
    v127 = 0;
    v200 = v75 + 808;
    v128 = v198;
    while (1)
    {
      if (v127 >= *(v128 + 32))
      {
        return result;
      }

      v192 = v127;
      v194 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v188 + 152), *(*(v188 + 192) + 8 * v127));
      v129 = *(this + 9);
      if (v127 >= (*(this + 10) - v129) >> 3)
      {
        v130 = *md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 1));
        v131 = *(*([v130 device] + 24) + 56);
        if (v131)
        {
          atomic_fetch_add_explicit((v131 + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      v132 = *(v129 + 8 * v127);
      *(v132 + 8) = *v132;
      result = md::FrameGraph::renderQueueForPass(*(v128 + 8), (16 * v127) | 1u);
      if (result)
      {
        v133 = **(result + 16);
      }

      else
      {
        v133 = 0;
      }

      *(v133 + 4) = *(*(this + 8) + 104);
      v135 = *(v194 + 3);
      v134 = *(v194 + 4);
      if (v134 != v135)
      {
        v136 = 0;
        do
        {
          v137 = v135 + 16 * v136;
          v138 = *(*v137 + 176);
          if (*(*v137 + 184) != v138)
          {
            v196 = v136;
            v139 = 0;
            do
            {
              v140 = *(*(this + 8) + 232);
              v141 = v140[1];
              if (v141 == *v140)
              {
                v143 = v140[11];
                if (!v143)
                {
                  goto LABEL_187;
                }

                v142 = (*(*v143 + 48))(v143);
                v202[0] = v142;
              }

              else
              {
                v142 = *(v141 - 8);
                v202[0] = v142;
                v140[1] = v141 - 8;
              }

              std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v140 + 4), v202);
              v204.n128_u64[0] = v142;
              v144 = v140[15];
              if (!v144)
              {
LABEL_187:
                std::__throw_bad_function_call[abi:nn200100]();
LABEL_188:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              (*(*v144 + 48))(v144, &v204);
              v145 = v138 + 88 * v139;
              **(v142 + 168) = *(v145 + 16);
              v146 = *(this + 8);
              v147 = *(v146 + 184);
              v148 = (*(*v137 + 176) + 88 * v139);
              v149 = v148->n128_u64[0];
              v204 = v148[2];
              md::RenderItemPool::construct(v146 + 192, v147, v149, &v204);
              v151 = v150;
              *(v150 + 24) = *(*(this + 8) + 136);
              *(v150 + 32) = v142;
              geo::RigidTransform<double,float>::toMatrix(v202, v145 + 48);
              v152 = 0;
              v153 = v200;
              do
              {
                v154 = 0;
                v155 = v202;
                do
                {
                  v156 = 0;
                  v157 = 0.0;
                  v158 = v153;
                  do
                  {
                    v159 = *v158;
                    v158 += 4;
                    v157 = v157 + *&v155[v156++] * v159;
                  }

                  while (v156 != 4);
                  v204.n128_f64[4 * v154++ + v152] = v157;
                  v155 += 4;
                }

                while (v154 != 4);
                ++v152;
                ++v153;
              }

              while (v152 != 4);
              v160 = 0;
              v161 = &v204;
              do
              {
                v163 = *v161;
                v162 = v161[1];
                v161 += 2;
                *(&v206 + v160) = vcvt_hight_f32_f64(vcvt_f32_f64(v163), v162);
                v160 += 16;
              }

              while (v160 != 64);
              ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v204, **(v142 + 136));
              v164 = v205;
              v165 = v207;
              *v205 = v206;
              v164[1] = v165;
              v166 = v209;
              v164[2] = v208;
              v164[3] = v166;
              ggl::BufferMemory::~BufferMemory(&v204);
              v168 = *(v132 + 8);
              v167 = *(v132 + 16);
              if (v168 >= v167)
              {
                v170 = (v168 - *v132) >> 4;
                v171 = v170 + 1;
                if ((v170 + 1) >> 60)
                {
                  goto LABEL_188;
                }

                v172 = v167 - *v132;
                if (v172 >> 3 > v171)
                {
                  v171 = v172 >> 3;
                }

                if (v172 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v173 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v173 = v171;
                }

                if (v173)
                {
                  if (!(v173 >> 60))
                  {
                    operator new();
                  }

LABEL_189:
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v174 = (16 * v170);
                *v174 = v142;
                v174[1] = v151;
                v169 = 16 * v170 + 16;
                v175 = *(v132 + 8) - *v132;
                v176 = 16 * v170 - v175;
                memcpy(v174 - v175, *v132, v175);
                v177 = *v132;
                *v132 = v176;
                *(v132 + 8) = v169;
                *(v132 + 16) = 0;
                if (v177)
                {
                  operator delete(v177);
                }
              }

              else
              {
                *v168 = v142;
                v168[1] = v151;
                v169 = (v168 + 2);
              }

              *(v132 + 8) = v169;
              result = ggl::CommandBuffer::pushRenderItem(v133, *(v169 - 8));
              ++v139;
              v138 = *(*v137 + 176);
            }

            while (v139 < 0x2E8BA2E8BA2E8BA3 * ((*(*v137 + 184) - v138) >> 3));
            v136 = v196;
            v135 = *(v194 + 3);
            v134 = *(v194 + 4);
          }

          ++v136;
        }

        while (v136 < (v134 - v135) >> 4);
      }

      v128 = v198;
      v178 = *(*(v198 + 40) + 8 * v192);
      if (v178)
      {
        v179 = *(v178 + 32);
        v180 = *(*(v198 + 8) + 96);
        if (v179 >= (*(*(v198 + 8) + 104) - v180) >> 3)
        {
          v178 = 0;
        }

        else
        {
          v178 = *(*(v180 + 8 * v179) + 16);
        }
      }

      v181 = v190;
      for (i = 3; i != 6; ++i)
      {
        **(*(*(v132 + 8 * i) + 8) + 168) = v178;
        v183 = md::FrameGraph::renderQueueForPass(*(v128 + 8), (16 * v181) & 0xFC | 2);
        if (v183)
        {
          v183 = **(v183 + 2);
        }

        result = ggl::CommandBuffer::pushRenderItem(v183, **(v132 + 8 * i));
        v128 = v198;
        v178 = *(*(v198 + 88) + 8 * v181);
        if (v178)
        {
          v184 = *(v178 + 32);
          v185 = *(*(v198 + 8) + 96);
          if (v184 >= (*(*(v198 + 8) + 104) - v185) >> 3)
          {
            v178 = 0;
          }

          else
          {
            v178 = *(*(v185 + 8 * v184) + 16);
          }
        }

        ++v181;
      }

      v127 = v192 + 1;
      v190 += 3;
    }
  }

  if (!result)
  {
    return result;
  }

  v20 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), 0);
  v21 = v20 ? **(v20 + 16) : 0;
  ggl::CommandBuffer::clearRenderItems(v21);
  ggl::CommandBuffer::clearBufferLoadItems(v21);
  result = ggl::CommandBuffer::clearTextureLoadItems(v21);
  v193 = v21;
  *(v21 + 32) = *(*(this + 8) + 104);
  v22 = *(v188 + 192);
  if (*(v188 + 200) == v22)
  {
    return result;
  }

  v23 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v188 + 152), *v22);
  v25 = *(result + 24);
  v24 = *(result + 32);
  v187 = result;
  if (v24 == v25)
  {
    return result;
  }

  v26 = 0;
  v191 = v23 + 808;
  do
  {
    v197 = v25 + 16 * v26;
    v27 = *(*v197 + 176);
    if (*(*v197 + 184) == v27)
    {
      goto LABEL_61;
    }

    v28 = 0;
    if (v26 <= 6)
    {
      v29 = 6;
    }

    else
    {
      v29 = v26;
    }

    v189 = v29;
    v199 = v26;
    do
    {
      v30 = *(*(this + 8) + 256);
      v31 = v30[1];
      if (v31 == *v30)
      {
        v33 = v30[11];
        if (!v33)
        {
          goto LABEL_187;
        }

        v32 = (*(*v33 + 48))(v33);
        v202[0] = v32;
      }

      else
      {
        v32 = *(v31 - 8);
        v202[0] = v32;
        v30[1] = v31 - 8;
      }

      std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v30 + 4), v202);
      v204.n128_u64[0] = v32;
      v34 = v30[15];
      if (!v34)
      {
        goto LABEL_187;
      }

      (*(*v34 + 48))(v34, &v204);
      v35 = v27 + 88 * v28;
      **(v32 + 168) = *(v35 + 16);
      v36 = *(this + 8);
      v37 = *(v36 + 184);
      v38 = (*(*v197 + 176) + 88 * v28);
      v39 = v38->n128_u64[0];
      v204 = v38[2];
      v40 = md::RenderItemPool::construct(v36 + 192, v37, v39, &v204);
      v195 = v41;
      v42 = *(this + 8);
      v44 = *(v42 + 144);
      v43 = *(v42 + 152);
      v45 = (v43 - v44) >> 3;
      v46 = v199;
      if (v45 <= v199)
      {
        v47 = v189 - v45;
        if (v189 <= v45)
        {
          if (v189 < v45)
          {
            v52 = (v44 + 8 * v189);
            while (v43 != v52)
            {
              v54 = *--v43;
              v53 = v54;
              *v43 = 0;
              if (v54)
              {
                (*(*v53 + 8))(v53, v40);
              }
            }

            *(v42 + 152) = v52;
          }
        }

        else
        {
          v48 = *(v42 + 160);
          if (v47 > (v48 - v43) >> 3)
          {
            if (v199 >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v49 = v48 - v44;
            v50 = v49 >> 2;
            if (v49 >> 2 <= v189)
            {
              v50 = v189;
            }

            if (v49 >= 0x7FFFFFFFFFFFFFF8)
            {
              v51 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v51 = v50;
            }

            if (!(v51 >> 61))
            {
              operator new();
            }

            goto LABEL_189;
          }

          bzero(*(v42 + 152), 8 * v47);
          *(v42 + 152) = &v43[v47];
        }

        v44 = *(v42 + 144);
        v46 = v199;
      }

      if (!*(v44 + 8 * v46))
      {
        operator new();
      }

      *(v195 + 3) = *(*(v42 + 144) + 8 * v46);
      *(v195 + 4) = v32;
      geo::RigidTransform<double,float>::toMatrix(v202, v35 + 48);
      v55 = 0;
      v56 = v191;
      do
      {
        v57 = 0;
        v58 = v202;
        do
        {
          v59 = 0;
          v60 = 0.0;
          v61 = v56;
          do
          {
            v62 = *v61;
            v61 += 4;
            v60 = v60 + *&v58[v59++] * v62;
          }

          while (v59 != 4);
          v204.n128_f64[4 * v57++ + v55] = v60;
          v58 += 4;
        }

        while (v57 != 4);
        ++v55;
        ++v56;
      }

      while (v55 != 4);
      v63 = 0;
      v64 = &v204;
      do
      {
        v66 = *v64;
        v65 = v64[1];
        v64 += 2;
        *(&v206 + v63) = vcvt_hight_f32_f64(vcvt_f32_f64(v66), v65);
        v63 += 16;
      }

      while (v63 != 64);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v204, **(v32 + 136));
      v67 = v205;
      v68 = v207;
      *v205 = v206;
      v67[1] = v68;
      v69 = v209;
      v67[2] = v208;
      v67[3] = v69;
      ggl::BufferMemory::~BufferMemory(&v204);
      result = ggl::CommandBuffer::pushRenderItem(v193, v195);
      ++v28;
      v26 = v199;
      v27 = *(*v197 + 176);
    }

    while (v28 < 0x2E8BA2E8BA2E8BA3 * ((*(*v197 + 184) - v27) >> 3));
    v25 = *(v187 + 24);
    v24 = *(v187 + 32);
LABEL_61:
    ++v26;
  }

  while (v26 < (v24 - v25) >> 4);
  return result;
}

void sub_1B2DD2DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  ggl::BufferMemory::~BufferMemory(va);
  _Unwind_Resume(a1);
}

void *gdc::Context::context<md::MuninSceneContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xC83717EF586624DCLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xC83717EF586624DCLL)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double geo::RigidTransform<double,float>::toMatrix(uint64_t a1, uint64_t a2)
{
  gm::Quaternion<float>::toMatrix(v11, (a2 + 24));
  for (i = 0; i != 9; ++i)
  {
    v12[i] = v11[i];
  }

  v5 = 0;
  v6 = v12;
  v7 = a1;
  do
  {
    v8 = 0;
    v9 = v7;
    do
    {
      *v9 = *&v6[v8];
      v9 += 4;
      v8 += 3;
    }

    while (v8 != 9);
    ++v5;
    ++v7;
    ++v6;
  }

  while (v5 != 3);
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a2;
  result = *(a2 + 16);
  *(a1 + 112) = result;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::StretchAlphaPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t **std::unique_ptr<ggl::Drawable>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[1];
    v2[1] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_emplace<ggl::Blur::YPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Blur::XPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00ED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Blur::Downsample4XPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t *std::allocator_traits<std::allocator<std::unique_ptr<md::mun::PassData>>>::destroy[abi:nn200100]<std::unique_ptr<md::mun::PassData>,void,0>(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    for (i = 40; i != 16; i -= 8)
    {
      std::unique_ptr<ggl::Drawable>::reset[abi:nn200100]((v1 + i), 0);
    }

    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::PipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void md::mun::MuninLayer::prepare(md::mun::MuninLayer *this, md::LayoutContext *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  md::LayoutContext::frameState(a2);
  if ((*(v4 + 117) & 1) == 0)
  {
    v5 = *(*(this + 5) + 24);
    v6 = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1));
    v7 = v6[3];
    if (*(v7 + 32))
    {
      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(v7 + 24));
      *(v7 + 24) = 0;
      v8 = *(v7 + 16);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          *(*(v7 + 8) + 8 * i) = 0;
        }
      }

      *(v7 + 32) = 0;
    }

    for (j = v6[21]; j; j = *j)
    {
      v11 = j[3];
      v12 = j[4];
      while (v11 != v12)
      {
        v13 = *v11;
        v11 += 2;
        FillRect = grl::IconMetricsRenderResult::getFillRect(v13);
        std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>((v7 + 8), FillRect);
      }
    }

    v15 = *(this + 8);
    v16 = *a2;
    v17 = [v16 format];
    v18 = *(v5 + 192);
    v40 = *(v5 + 176);
    v41 = v18;
    v19 = *(*(v15 + 64) + 24);
    v20 = v19[1];
    v39 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *(*(v15 + 64) + 24);
    }

    v21 = v19[6];
    v22 = v19[7];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(v15 + 16);
    if (v23 != *(v17 + 16) || *(v15 + 24) != *(v17 + 24) || *(v15 + 28) != *(v17 + 28))
    {
      goto LABEL_24;
    }

    if (v23)
    {
      v24 = v15;
      v25 = v17;
      while (1)
      {
        v27 = *v24++;
        v26 = v27;
        v28 = *v25++;
        if (v26 != v28)
        {
          break;
        }

        if (!--v23)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v29 = *(v17 + 16);
      *v15 = *v17;
      *(v15 + 16) = v29;
      v30 = *(*(v21 + 80) + 16);
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      v45 = 0;
      v46 = 0;
      v47 = 0;
      operator new();
    }

LABEL_27:
    v31 = *(v15 + 48);
    if (*(v15 + 48) != v41)
    {
LABEL_33:
      v37 = v41;
      *(v15 + 32) = v40;
      *(v15 + 48) = v37;
      v38 = *(*(v21 + 80) + 40);
      if (v38)
      {
        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      operator new();
    }

    if (v31)
    {
      v32 = &v40;
      v33 = (v15 + 32);
      do
      {
        v35 = *v33++;
        v34 = v35;
        v36 = *v32++;
        if (v34 != v36)
        {
          goto LABEL_33;
        }
      }

      while (--v31);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v39);
    }
  }
}

void sub_1B2DD4C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void md::mun::MuninLayer::~MuninLayer(md::mun::MuninLayer *this)
{
  md::mun::MuninLayer::~MuninLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A00E28;
  v3 = (this + 72);
  std::vector<std::unique_ptr<md::mun::PassData>>::__destroy_vector::operator()[abi:nn200100](&v3);
  std::unique_ptr<md::mun::MuninRenderResources>::reset[abi:nn200100](this + 8, 0);

  *this = &unk_1F2A16858;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void std::vector<std::unique_ptr<md::mun::PassData>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::allocator_traits<std::allocator<std::unique_ptr<md::mun::PassData>>>::destroy[abi:nn200100]<std::unique_ptr<md::mun::PassData>,void,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<md::mun::MuninRenderResources>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 336);
    *(v2 + 336) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 328);
    *(v2 + 328) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v2 + 320);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v2 + 304);
    *(v2 + 304) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(v2 + 296);
    *(v2 + 296) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(v2 + 288);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(v2 + 272);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = *(v2 + 256);
    *(v2 + 256) = 0;
    if (v10)
    {
      v11 = ggl::FragmentedPool<ggl::VSView::PipelineSetup>::~FragmentedPool(v10);
      MEMORY[0x1B8C62190](v11, 0x10A0C405CD4001ALL);
    }

    v12 = *(v2 + 248);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = *(v2 + 232);
    *(v2 + 232) = 0;
    if (v13)
    {
      v14 = ggl::FragmentedPool<ggl::VSView::StretchAlphaPipelineSetup>::~FragmentedPool(v13);
      MEMORY[0x1B8C62190](v14, 0x10A0C405CD4001ALL);
    }

    v15 = *(v2 + 224);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    md::FrameAllocator<ggl::RenderItem>::reset(v2 + 192);
    free(*(v2 + 192));
    v16 = *(v2 + 184);
    *(v2 + 184) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(v2 + 176);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    v25 = (v2 + 144);
    std::vector<std::unique_ptr<ggl::RenderState>>::__destroy_vector::operator()[abi:nn200100](&v25);
    v18 = *(v2 + 136);
    *(v2 + 136) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = *(v2 + 128);
    *(v2 + 128) = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(v2 + 120);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    }

    v21 = *(v2 + 104);
    *(v2 + 104) = 0;
    if (v21)
    {
      MEMORY[0x1B8C62190](v21, 0x1000C4049ECCB0CLL);
    }

    v22 = *(v2 + 96);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    v23 = *(v2 + 80);
    *(v2 + 80) = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

md::TileGroupNotificationManager *std::unique_ptr<md::TileGroupNotificationManager>::reset[abi:nn200100](md::TileGroupNotificationManager **a1, md::TileGroupNotificationManager *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    md::TileGroupNotificationManager::~TileGroupNotificationManager(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,NSStringMapComparison,true>,geo::allocator_adapter<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,NSStringMapComparison,true>,geo::allocator_adapter<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,NSStringMapComparison,true>,geo::allocator_adapter<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,mdm::zone_mallocator>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v4 = mdm::zone_mallocator::instance(v3);
    v5 = pthread_rwlock_rdlock((v4 + 32));
    if (v5)
    {
      geo::read_write_lock::logFailure(v5, "read lock", v6);
    }

    atomic_fetch_add((v4 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v4, a1);

    geo::read_write_lock::unlock((v4 + 32));
  }
}

void sub_1B2DD5430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKInternalIconManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2DD5668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  v24 = *(v22 - 72);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DD59A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a5);
  }

  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::string>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned short,grl::ImageProvider>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void sub_1B2DD5E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DD6154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a5);
  }

  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DD6590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1B2DD66FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DD6848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DD687C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x1B2DD686CLL);
  }

  JUMPOUT(0x1B2DD6868);
}

void sub_1B2DD6BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a5);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_1B2DD71A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, char a8, uint64_t a9, std::__shared_weak_count *a10, ...)
{
  va_start(va, a10);
  if (a8 == 1)
  {
    (*(*a4 + 56))(a4);
  }

  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a7);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a5);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v12 - 144));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);

  _Unwind_Resume(a1);
}

void sub_1B2DD7628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, pthread_rwlock_t *a22, void *a23)
{
  geo::read_write_lock::unlock((v26 + 32));
  geo::write_lock_guard::~write_lock_guard(&a22);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    v24 = a23;
  }

  _Unwind_Resume(a1);
}

uint64_t std::default_delete<gss::ClientStyleState<gss::PropertyID>>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((result + 240));
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v1 + 216));
    geo::read_write_lock::~read_write_lock((v1 + 16));
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<gss::ClientStyleState<gss::PropertyID> *,std::shared_ptr<gss::ClientStyleState<gss::PropertyID>>::__shared_ptr_default_delete<gss::ClientStyleState<gss::PropertyID>,gss::ClientStyleState<gss::PropertyID>>,std::allocator<gss::ClientStyleState<gss::PropertyID>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::weak_ptr<gss::FeatureQueryImpl<gss::PropertyID>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_pointer<gss::StylesheetManager<gss::PropertyID> *,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::__shared_ptr_default_delete<gss::StylesheetManager<gss::PropertyID>,gss::StylesheetManager<gss::PropertyID>>,std::allocator<gss::StylesheetManager<gss::PropertyID>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned int,unsigned char>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x1000040CE7E837CuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        v4 = 24 * v3;
        v5 = v2 + 8;
        do
        {
          geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(v5);
          v5 += 24;
          v4 -= 24;
        }

        while (v4);
        v2 = *a1;
      }

      v6 = gss::zone_mallocator::instance(a1);
      v7 = pthread_rwlock_rdlock((v6 + 32));
      if (v7)
      {
        geo::read_write_lock::logFailure(v7, "read lock", v8);
      }

      if (v2)
      {
        atomic_fetch_add((v6 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v6, v2);
      geo::read_write_lock::unlock((v6 + 32));
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 4 * a2, 0x100004052888210uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(a1 + 8))
      {
        v3 = 24 * *(a1 + 8);
        v4 = v2 + 8;
        do
        {
          geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(v4);
          v4 += 24;
          v3 -= 24;
        }

        while (v3);
        v2 = *a1;
      }

      v5 = gss::zone_mallocator::instance(a1);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(a1 + 5) = 0;
  *a1 = 0;
}

void geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>>::deallocateStorage(char **a1)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(a1 + 4))
      {
        v3 = 16 * *(a1 + 4);
        do
        {
          geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::deallocateStorage(v2);
          v2 += 16;
          v3 -= 16;
        }

        while (v3);
        v2 = *a1;
      }

      v4 = gss::zone_mallocator::instance(a1);
      v5 = pthread_rwlock_rdlock((v4 + 32));
      if (v5)
      {
        geo::read_write_lock::logFailure(v5, "read lock", v6);
      }

      if (v2)
      {
        atomic_fetch_add((v4 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v4, v2);
      geo::read_write_lock::unlock((v4 + 32));
    }
  }

  *(a1 + 5) = 0;
  *a1 = 0;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::ConditionalStyle<gss::PropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::PropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *gss::CartoStyle<gss::PropertyID>::~CartoStyle(void *a1)
{
  *a1 = &unk_1F2A29E40;
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    MEMORY[0x1B8C62170](v2, 0x1000C8077774924);
  }

  v3 = a1[12];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[10];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage((a1 + 7));
  geo::intern_vector<gss::ZoomStyle<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::PropertyID>,gss::zone_mallocator>>::deallocateStorage((a1 + 5));
  geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage((a1 + 3));
  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void geo::intern_vector<gss::ZoomStyle<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::PropertyID>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(a1 + 8))
      {
        v3 = 24 * *(a1 + 8);
        v4 = v2 + 2;
        do
        {
          a1 = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }

          v4 += 3;
          v3 -= 24;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(a1);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::StyleCondition>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x101004036CA7CB0uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t gss::ConditionalStyle<gss::PropertyID>::to_string@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v19);
  if (*(*(a1 + 144) + 104))
  {
    v3 = *(*(a1 + 144) + 104);
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v3, v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, "-condStyle-", 11);
  v5 = MEMORY[0x1B8C61C90](&v20, *(a1 + 156));
  v25[0] = 45;
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, v25, 1);
  v7 = MEMORY[0x1B8C61C90](v6, *(a1 + 152));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "-{", 2);
  if (*(a1 + 136))
  {
    v8 = *(a1 + 128);
    v9 = &v8[6 * *(a1 + 136)];
    do
    {
      v10 = *v8;
      v25[0] = 64;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
      v11 = MEMORY[0x1B8C61C90](&v20, v10);
      v25[0] = 61;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v25, 1);
      if (*(v8 + 8))
      {
        v12 = 0;
        v13 = *(v8 + 1);
        v14 = 4 * *(v8 + 8);
        do
        {
          v15 = *v13;
          if (v12)
          {
            v25[0] = 44;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
          }

          MEMORY[0x1B8C61C90](&v20, v15);
          ++v13;
          v12 = 1;
          v14 -= 4;
        }

        while (v14);
      }

      v25[0] = 59;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
      v8 += 6;
    }

    while (v8 != v9);
  }

  v25[0] = 125;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
  std::stringbuf::str[abi:nn200100](a2, &v21);
  v19[0] = *MEMORY[0x1E69E54D8];
  v16 = *(MEMORY[0x1E69E54D8] + 72);
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v20 = v16;
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v24);
}

void sub_1B2DD81D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a10 = *MEMORY[0x1E69E54D8];
  v30 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a12 = v30;
  a13 = MEMORY[0x1E69E5548] + 16;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  a13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a14);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a29);
  _Unwind_Resume(a1);
}

void gss::ConditionalStyle<gss::PropertyID>::~ConditionalStyle(void *a1)
{
  *a1 = &unk_1F2A29EA0;
  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage((a1 + 16));
  gss::CartoStyle<gss::PropertyID>::~CartoStyle(a1);

  JUMPOUT(0x1B8C62190);
}

void *gss::ConditionalStyle<gss::PropertyID>::~ConditionalStyle(void *a1)
{
  *a1 = &unk_1F2A29EA0;
  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage((a1 + 16));

  return gss::CartoStyle<gss::PropertyID>::~CartoStyle(a1);
}

void gss::CartoStyle<gss::PropertyID>::to_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 104))
  {
    v3 = *(a1 + 104);
  }

  else
  {
    v3 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(&v7, v3);
  v4 = std::string::insert(&v7, 0, "[", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v8.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v8.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v8, "]", 1uLL);
  *a2 = *v6;
  v6->__r_.__value_.__r.__words[0] = 0;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1B2DD848C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gss::CartoStyle<gss::PropertyID>::~CartoStyle(void *a1)
{
  gss::CartoStyle<gss::PropertyID>::~CartoStyle(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gss::ConditionalStyle<gss::PropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::PropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::ConditionalStyle<gss::PropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::PropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::ConditionalStyle<gss::PropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::PropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29E68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned int,unsigned char>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x28uLL, 0x1020040172BAE94uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleCondition>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(a1 + 8))
      {
        v3 = 16 * *(a1 + 8);
        v4 = v2 + 1;
        do
        {
          a1 = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }

          v4 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(a1);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylePropertySet<gss::PropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::PropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylePropertySet<gss::PropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::PropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::__on_zero_shared(uint64_t a1)
{
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 128));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 104));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 80));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 56));

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 32));
}

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::PropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29DD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(a1 + 8))
      {
        v3 = 16 * *(a1 + 8);
        v4 = v2 + 1;
        do
        {
          a1 = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }

          v4 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(a1);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

void std::__shared_ptr_emplace<gss::GlobalProperties>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#2},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#2}>,void ()(BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A29F10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#1},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A29EC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A29D88;
  v2 = *(a1 + 8);
  *(a2 + 17) = *(a1 + 17);
  *(a2 + 8) = v2;
  return std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](a2 + 40, a1 + 40);
}

void std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29D88;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 5));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29D88;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 5));
  return a1;
}

gss::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100](gss::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::vector<std::unique_ptr<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100]((v4 - 8));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100]((v4 - 8));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100]((v4 - 40));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<gss::StyleSheet<gss::PropertyID>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 3023) < 0)
  {
    operator delete(*(a1 + 3000));
  }

  std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100]((a1 + 2984), 0);
  std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100]((a1 + 2976), 0);
  std::mutex::~mutex((a1 + 2912));
  std::mutex::~mutex((a1 + 2848));
  std::future<void>::~future((a1 + 2840));
  std::future<void>::~future((a1 + 2832));
  MEMORY[0x1B8C61FC0](a1 + 2824);
  MEMORY[0x1B8C61FC0](a1 + 2816);
  std::__hash_table<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::hash<gss::StyleSheetResultCacheKey>,std::equal_to<gss::StyleSheetResultCacheKey>,true>,std::__unordered_map_equal<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::equal_to<gss::StyleSheetResultCacheKey>,std::hash<gss::StyleSheetResultCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,gss::zone_mallocator>>::__deallocate_node(*(a1 + 2776));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100]((a1 + 2752));
  geo::read_write_lock::~read_write_lock((a1 + 2552));
  v2 = (a1 + 2488);
  v3 = -2048;
  do
  {
    std::mutex::~mutex(v2);
    v2 = (v4 - 64);
    v3 += 64;
  }

  while (v3);
  v10 = (a1 + 472);
  std::vector<std::unique_ptr<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v10 = (a1 + 440);
  std::vector<std::unique_ptr<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v10 = (a1 + 408);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v10 = (a1 + 376);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v10 = (a1 + 336);
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v10 = (a1 + 296);
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v10 = (a1 + 256);
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&v10);
  std::mutex::~mutex((a1 + 192));
  std::unique_ptr<gss::StyleMatchingTree<gss::CartoStyle<gss::PropertyID>>>::reset[abi:nn200100]((a1 + 184), 0);
  geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 168);
  v5 = *(a1 + 152);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 88);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {

    std::__shared_weak_count::__release_weak(v9);
  }
}

void std::__shared_ptr_emplace<gss::StyleSheet<gss::PropertyID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29D50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__destroy_at[abi:nn200100]<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::PropertyID>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t __Block_byref_object_copy__8238(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void geo::_retain_ptr<NSData * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A608E0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSData * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A608E0;

  return a1;
}

id std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A29FA0;
  v4 = (a2 + 4);
  geo::_retain_ptr<NSData * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 1, a1 + 8);
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 32);
    v4->__r_.__value_.__r.__words[2] = *(a1 + 48);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = *(a1 + 56);
  a2[7] = result;
  return result;
}

void sub_1B2DD93EC(_Unwind_Exception *a1)
{
  *(v1 + 8) = &unk_1F2A608E0;

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A29FA0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 8) = &unk_1F2A608E0;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A29FA0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 8) = &unk_1F2A608E0;

  return a1;
}

void sub_1B2DD9710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, uint64_t a11, uint64_t a12, char a13)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v14);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a13);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B2DD9BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v16);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a15);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<grl::FontManager  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<grl::FontManager  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::RenderState>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundShadowMapPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundShadowMapPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<ggl::DaVinci::GroundShadowMapPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4B718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<gdc::DebugTreeNode>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<gdc::DebugTreeNode>::__base_destruct_at_end[abi:nn200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<gdc::DebugTreeProperty>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<gdc::DebugTreeProperty>::__base_destruct_at_end[abi:nn200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<gdc::DebugTreeProperty>::__base_destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 3;
    do
    {
      v6 = v5;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v6);
      v6 = v5 - 3;
      std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&v6);
      if (*(v5 - 33) < 0)
      {
        operator delete(*(v5 - 7));
      }

      v5 -= 10;
    }

    while (v5 + 3 != a2);
  }

  *(a1 + 8) = a2;
}

void std::vector<gdc::DebugTreeNode>::__base_destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 6;
    do
    {
      v7 = v5 + 3;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v7);
      v7 = v5;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v7);
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 3));
      }

      if (*(v5 - 25) < 0)
      {
        operator delete(*(v5 - 6));
      }

      v6 = v5 - 6;
      v5 -= 12;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_1B2DDB0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v73 = a11;
  v73[96] = a9;

  a24 = &a64;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a24);
  a24 = &a61;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a24);
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DDB934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v69 = v70;
  v69[80] = v71;

  a34 = &a61;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a34);
  a34 = &a58;
  std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&a34);
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DDBEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DDC188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_1B2DDC454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

void sub_1B2DDC7FC(_Unwind_Exception *a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a11, a10, a3);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
  while (2)
  {
    v244 = a2 - 1;
    v241 = a2 - 3;
    v242 = a2 - 2;
    v8 = v7;
    v252 = a2;
    v9 = a3;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v10 = v8;
          v11 = a2 - v8;
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v121 = *(*v9 + 48);

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v8, v8 + 1, v244, v121);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v8, v8 + 1, v8 + 2, v244, v9);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v8, v8 + 1, v8 + 2, v8 + 3, v244, v9);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            v9 = a3;
            if (v11 == 2)
            {
              v115 = *v244;
              v116 = *v8;
              v117 = *(*a3 + 48);
              v118 = v117 + 96 * *v244;
              v119 = v117 + 96 * *v8;
              if (*(v118 + 23) < 0)
              {
                if (*(v118 + 8))
                {
                  v120 = *v118;
                }

                else
                {
                  v120 = "";
                }
              }

              else if (*(v118 + 23))
              {
                v120 = (v117 + 96 * *v244);
              }

              else
              {
                v120 = "";
              }

              v238 = strlen(v120);
              if (*(v119 + 23) < 0)
              {
                if (*(v119 + 8))
                {
                  v239 = *v119;
                }

                else
                {
                  v239 = "";
                }
              }

              else if (*(v119 + 23))
              {
                v239 = v119;
              }

              else
              {
                v239 = "";
              }

              v240 = strlen(v239);
              result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v120, v238, v239, v240);
              if ((result & 0x80) != 0)
              {
                *v8 = v115;
                *v244 = v116;
              }

              return result;
            }
          }

          v255 = v8;
          if (v11 <= 23)
          {
            v122 = v8 + 1;
            v123 = v8 == a2 || v122 == a2;
            v124 = v123;
            if (a5)
            {
              if ((v124 & 1) == 0)
              {
                v125 = *(*a3 + 48);
                v126 = 8;
                v127 = v8;
                v266 = v125;
                do
                {
                  v128 = v122;
                  v129 = v127[1];
                  v130 = v125 + 96 * v129;
                  if (*(v130 + 23) < 0)
                  {
                    if (*(v130 + 8))
                    {
                      v131 = *v130;
                    }

                    else
                    {
                      v131 = "";
                    }
                  }

                  else if (*(v130 + 23))
                  {
                    v131 = (v125 + 96 * v129);
                  }

                  else
                  {
                    v131 = "";
                  }

                  v132 = *v127;
                  v133 = v125 + 96 * *v127;
                  v134 = strlen(v131);
                  if (*(v133 + 23) < 0)
                  {
                    if (*(v133 + 8))
                    {
                      v135 = *v133;
                    }

                    else
                    {
                      v135 = "";
                    }
                  }

                  else if (*(v133 + 23))
                  {
                    v135 = v133;
                  }

                  else
                  {
                    v135 = "";
                  }

                  v136 = strlen(v135);
                  result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v131, v134, v135, v136);
                  if ((result & 0x80) != 0)
                  {
                    v137 = *a3;
                    v138 = v126;
                    while (1)
                    {
                      *(v255 + v138) = v132;
                      v139 = v138 - 8;
                      if (v138 == 8)
                      {
                        break;
                      }

                      v140 = *(v137 + 48);
                      v141 = v140 + 96 * v129;
                      if (*(v141 + 23) < 0)
                      {
                        if (*(v141 + 8))
                        {
                          v142 = *v141;
                        }

                        else
                        {
                          v142 = "";
                        }
                      }

                      else if (*(v141 + 23))
                      {
                        v142 = (v140 + 96 * v129);
                      }

                      else
                      {
                        v142 = "";
                      }

                      v132 = *(v255 + v138 - 16);
                      v143 = (v140 + 96 * v132);
                      v144 = strlen(v142);
                      if (v143[23] < 0)
                      {
                        if (*(v143 + 1))
                        {
                          v143 = *v143;
                        }

                        else
                        {
                          v143 = "";
                        }
                      }

                      else if (!v143[23])
                      {
                        v143 = "";
                      }

                      v145 = strlen(v143);
                      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v142, v144, v143, v145);
                      v138 = v139;
                      if ((result & 0x80) == 0)
                      {
                        v146 = (v255 + v139);
                        goto LABEL_267;
                      }
                    }

                    v146 = v255;
LABEL_267:
                    *v146 = v129;
                    v125 = v266;
                  }

                  v122 = v128 + 1;
                  v126 += 8;
                  v127 = v128;
                }

                while (v128 + 1 != v252);
              }
            }

            else if ((v124 & 1) == 0)
            {
              v223 = *(*a3 + 48);
              do
              {
                v224 = v122;
                v225 = v10;
                v226 = v10[1];
                v227 = v223 + 96 * v226;
                if (*(v227 + 23) < 0)
                {
                  if (*(v227 + 8))
                  {
                    v228 = *v227;
                  }

                  else
                  {
                    v228 = "";
                  }
                }

                else if (*(v227 + 23))
                {
                  v228 = (v223 + 96 * v226);
                }

                else
                {
                  v228 = "";
                }

                v229 = *v225;
                v230 = (v223 + 96 * *v225);
                v231 = strlen(v228);
                if (v230[23] < 0)
                {
                  if (*(v230 + 1))
                  {
                    v230 = *v230;
                  }

                  else
                  {
                    v230 = "";
                  }
                }

                else if (!v230[23])
                {
                  v230 = "";
                }

                v232 = strlen(v230);
                result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v228, v231, v230, v232);
                if ((result & 0x80) != 0)
                {
                  v233 = v224;
                  do
                  {
                    *v233 = v229;
                    if (*(v227 + 23) < 0)
                    {
                      v234 = "";
                      if (*(v227 + 8))
                      {
                        v234 = *v227;
                      }
                    }

                    else if (*(v227 + 23))
                    {
                      v234 = (v223 + 96 * v226);
                    }

                    else
                    {
                      v234 = "";
                    }

                    v229 = *(v233 - 2);
                    v235 = (v223 + 96 * v229);
                    v236 = strlen(v234);
                    if (v235[23] < 0)
                    {
                      if (*(v235 + 1))
                      {
                        v235 = *v235;
                      }

                      else
                      {
                        v235 = "";
                      }
                    }

                    else if (!v235[23])
                    {
                      v235 = "";
                    }

                    v237 = strlen(v235);
                    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v234, v236, v235, v237);
                    --v233;
                  }

                  while ((result & 0x80) != 0);
                  *v233 = v226;
                }

                v122 = v224 + 1;
                v10 = v224;
              }

              while (v224 + 1 != v252);
            }

            return result;
          }

          if (!a4)
          {
            if (v8 != a2)
            {
              v246 = *a3;
              v257 = v12 >> 1;
              v261 = a2 - v8;
              v147 = v12 >> 1;
              do
              {
                v148 = v147;
                if (v257 >= v147)
                {
                  v149 = (2 * v147) | 1;
                  v150 = &v255[v149];
                  v151 = *(v246 + 48);
                  if (2 * v147 + 2 < v11)
                  {
                    v152 = v151 + 96 * *v150;
                    if (*(v152 + 23) < 0)
                    {
                      if (*(v152 + 8))
                      {
                        v153 = *v152;
                      }

                      else
                      {
                        v153 = "";
                      }
                    }

                    else if (*(v152 + 23))
                    {
                      v153 = (v151 + 96 * *v150);
                    }

                    else
                    {
                      v153 = "";
                    }

                    v154 = v150[1];
                    ++v150;
                    v155 = (v151 + 96 * v154);
                    v156 = strlen(v153);
                    if (v155[23] < 0)
                    {
                      if (*(v155 + 1))
                      {
                        v155 = *v155;
                      }

                      else
                      {
                        v155 = "";
                      }
                    }

                    else if (!v155[23])
                    {
                      v155 = "";
                    }

                    v157 = strlen(v155);
                    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v153, v156, v155, v157) & 0x80u) != 0)
                    {
                      v149 = 2 * v148 + 2;
                    }

                    else
                    {
                      v150 = &v255[v149];
                    }
                  }

                  v158 = &v255[v148];
                  v159 = *v150;
                  v267 = *v158;
                  v160 = v151 + 96 * *v150;
                  if (*(v160 + 23) < 0)
                  {
                    if (*(v160 + 8))
                    {
                      v161 = *v160;
                    }

                    else
                    {
                      v161 = "";
                    }
                  }

                  else if (*(v160 + 23))
                  {
                    v161 = (v151 + 96 * v159);
                  }

                  else
                  {
                    v161 = "";
                  }

                  v162 = v151 + 96 * v267;
                  v163 = strlen(v161);
                  if (*(v162 + 23) < 0)
                  {
                    if (*(v162 + 8))
                    {
                      v164 = *v162;
                    }

                    else
                    {
                      v164 = "";
                    }
                  }

                  else if (*(v162 + 23))
                  {
                    v164 = v162;
                  }

                  else
                  {
                    v164 = "";
                  }

                  v165 = strlen(v164);
                  result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v161, v163, v164, v165);
                  v11 = v261;
                  if ((result & 0x80) == 0)
                  {
                    v248 = v148;
                    v251 = *a3;
                    do
                    {
                      v166 = v150;
                      *v158 = v159;
                      if (v257 < v149)
                      {
                        break;
                      }

                      v167 = (2 * v149) | 1;
                      v150 = &v255[v167];
                      v168 = *(v251 + 48);
                      if (2 * v149 + 2 >= v11)
                      {
                        v149 = (2 * v149) | 1;
                      }

                      else
                      {
                        v169 = v168 + 96 * *v150;
                        if (*(v169 + 23) < 0)
                        {
                          v170 = *(v169 + 8) ? *v169 : "";
                        }

                        else
                        {
                          v170 = *(v169 + 23) ? (v168 + 96 * *v150) : "";
                        }

                        v171 = v150[1];
                        ++v150;
                        v172 = (v168 + 96 * v171);
                        v173 = strlen(v170);
                        if (v172[23] < 0)
                        {
                          v174 = *(v172 + 1) ? *v172 : "";
                        }

                        else
                        {
                          v174 = v172[23] ? v172 : "";
                        }

                        v175 = strlen(v174);
                        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v170, v173, v174, v175) & 0x80u) != 0)
                        {
                          v149 = 2 * v149 + 2;
                        }

                        else
                        {
                          v150 = &v255[v167];
                          v149 = (2 * v149) | 1;
                        }
                      }

                      v159 = *v150;
                      v176 = v168 + 96 * *v150;
                      if (*(v176 + 23) < 0)
                      {
                        v177 = *(v176 + 8) ? *v176 : "";
                      }

                      else
                      {
                        v177 = *(v176 + 23) ? (v168 + 96 * *v150) : "";
                      }

                      v178 = v168 + 96 * v267;
                      v179 = strlen(v177);
                      if (*(v178 + 23) < 0)
                      {
                        v180 = *(v178 + 8) ? *v178 : "";
                      }

                      else
                      {
                        v180 = *(v178 + 23) ? (v168 + 96 * v267) : "";
                      }

                      v181 = strlen(v180);
                      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v177, v179, v180, v181);
                      v158 = v166;
                      v11 = v261;
                    }

                    while ((result & 0x80) == 0);
                    *v166 = v267;
                    v148 = v248;
                  }
                }

                v147 = v148 - 1;
              }

              while (v148);
              v258 = *a3;
              v182 = v252;
              v183 = v255;
              do
              {
                v253 = v182;
                v184 = 0;
                v262 = *v183;
                v185 = (v11 - 2) >> 1;
                v268 = *a3;
                do
                {
                  v186 = &v183[v184];
                  v187 = v186 + 1;
                  v188 = (2 * v184) | 1;
                  v189 = 2 * v184 + 2;
                  if (v189 >= v11)
                  {
                    v184 = (2 * v184) | 1;
                  }

                  else
                  {
                    v190 = v11;
                    v193 = v186[2];
                    v192 = v186 + 2;
                    v191 = v193;
                    v194 = *(v268 + 48);
                    v195 = v194 + 96 * *(v192 - 1);
                    if (*(v195 + 23) < 0)
                    {
                      if (*(v195 + 8))
                      {
                        v196 = *v195;
                      }

                      else
                      {
                        v196 = "";
                      }
                    }

                    else if (*(v195 + 23))
                    {
                      v196 = (v194 + 96 * *(v192 - 1));
                    }

                    else
                    {
                      v196 = "";
                    }

                    v197 = (v194 + 96 * v191);
                    v198 = strlen(v196);
                    if (v197[23] < 0)
                    {
                      if (*(v197 + 1))
                      {
                        v197 = *v197;
                      }

                      else
                      {
                        v197 = "";
                      }
                    }

                    else if (!v197[23])
                    {
                      v197 = "";
                    }

                    v199 = strlen(v197);
                    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v196, v198, v197, v199);
                    if ((result & 0x80u) == 0)
                    {
                      v184 = v188;
                    }

                    else
                    {
                      v187 = v192;
                      v184 = v189;
                    }

                    v11 = v190;
                  }

                  *v183 = *v187;
                  v183 = v187;
                }

                while (v184 <= v185);
                v200 = v253 - 1;
                v123 = v187 == v253 - 1;
                v254 = v253 - 1;
                if (v123)
                {
                  *v187 = v262;
                }

                else
                {
                  *v187 = *v200;
                  *v200 = v262;
                  v201 = (v187 - v255 + 8) >> 3;
                  v202 = v201 < 2;
                  v203 = v201 - 2;
                  if (!v202)
                  {
                    v263 = v11;
                    v204 = v203 >> 1;
                    v205 = &v255[v203 >> 1];
                    v206 = *v205;
                    v207 = *(v258 + 48);
                    v208 = v207 + 96 * *v205;
                    if (*(v208 + 23) < 0)
                    {
                      v209 = "";
                      if (*(v208 + 8))
                      {
                        v210 = *v208;
                      }

                      else
                      {
                        v210 = "";
                      }
                    }

                    else
                    {
                      v209 = "";
                      if (*(v208 + 23))
                      {
                        v210 = (v207 + 96 * *v205);
                      }

                      else
                      {
                        v210 = "";
                      }
                    }

                    v211 = *v187;
                    v212 = v207 + 96 * *v187;
                    v213 = strlen(v210);
                    if (*(v212 + 23) < 0)
                    {
                      if (*(v212 + 8))
                      {
                        v209 = *v212;
                      }
                    }

                    else if (*(v212 + 23))
                    {
                      v209 = v212;
                    }

                    v214 = strlen(v209);
                    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v210, v213, v209, v214);
                    v11 = v263;
                    if ((result & 0x80) != 0)
                    {
                      v269 = *a3;
                      do
                      {
                        v215 = v205;
                        *v187 = v206;
                        if (!v204)
                        {
                          break;
                        }

                        v204 = (v204 - 1) >> 1;
                        v205 = &v255[v204];
                        v206 = *v205;
                        v216 = *(v269 + 48);
                        v217 = v216 + 96 * *v205;
                        if (*(v217 + 23) < 0)
                        {
                          v218 = *(v217 + 8) ? *v217 : "";
                        }

                        else
                        {
                          v218 = *(v217 + 23) ? (v216 + 96 * *v205) : "";
                        }

                        v219 = (v216 + 96 * v211);
                        v220 = strlen(v218);
                        if (v219[23] < 0)
                        {
                          v221 = *(v219 + 1) ? *v219 : "";
                        }

                        else
                        {
                          v221 = v219[23] ? v219 : "";
                        }

                        v222 = strlen(v221);
                        result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v218, v220, v221, v222);
                        v187 = v215;
                      }

                      while ((result & 0x80) != 0);
                      *v215 = v211;
                      v11 = v263;
                    }
                  }
                }

                v202 = v11-- <= 2;
                v182 = v254;
                v183 = v255;
              }

              while (!v202);
            }

            return result;
          }

          v13 = v11 >> 1;
          v14 = &v8[v11 >> 1];
          v15 = *(*v9 + 48);
          if (v11 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(&v10[v11 >> 1], v10, v244, v15);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v10, &v10[v11 >> 1], v244, v15);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v10 + 1, v14 - 1, v242, *(*v9 + 48));
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v10 + 2, &v10[v13 + 1], v241, *(*v9 + 48));
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v14 - 1, v14, &v10[v13 + 1], *(*v9 + 48));
            v16 = *v10;
            *v10 = *v14;
            *v14 = v16;
          }

          v17 = *v10;
          v18 = *v9;
          v245 = *v10;
          v247 = a4 - 1;
          if (a5)
          {
            break;
          }

          v19 = *(v18 + 48);
          v21 = v19 + 96 * *(v10 - 1);
          if (*(v21 + 23) < 0)
          {
            if (*(v21 + 8))
            {
              v22 = *v21;
            }

            else
            {
              v22 = "";
            }
          }

          else if (*(v21 + 23))
          {
            v22 = (v19 + 96 * *(v10 - 1));
          }

          else
          {
            v22 = "";
          }

          v23 = v19 + 96 * v17;
          v24 = strlen(v22);
          v20 = *(v23 + 23);
          v259 = v23;
          if ((v20 & 0x80) != 0)
          {
            if (*(v23 + 8))
            {
              v25 = *v23;
            }

            else
            {
              v25 = "";
            }
          }

          else if (*(v23 + 23))
          {
            v25 = (v19 + 96 * v17);
          }

          else
          {
            v25 = "";
          }

          v26 = strlen(v25);
          if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v22, v24, v25, v26) & 0x80) != 0)
          {
            goto LABEL_32;
          }

          if ((v20 & 0x80) != 0)
          {
            v71 = v20;
            if (*(v259 + 8))
            {
              v72 = *v259;
            }

            else
            {
              v72 = "";
            }
          }

          else
          {
            v71 = v20;
            if (v20)
            {
              v72 = (v19 + 96 * v17);
            }

            else
            {
              v72 = "";
            }
          }

          v73 = v19 + 96 * *v244;
          v74 = strlen(v72);
          if (*(v73 + 23) < 0)
          {
            if (*(v73 + 8))
            {
              v75 = *v73;
            }

            else
            {
              v75 = "";
            }
          }

          else if (*(v73 + 23))
          {
            v75 = (v19 + 96 * *v244);
          }

          else
          {
            v75 = "";
          }

          v76 = strlen(v75);
          result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v72, v74, v75, v76);
          if (v71)
          {
            v77 = v259;
          }

          else
          {
            v77 = "";
          }

          if ((result & 0x80) != 0)
          {
            v8 = v255;
            do
            {
              v84 = v77;
              if ((v71 & 0x80) != 0)
              {
                if (*(v259 + 8))
                {
                  v84 = *v259;
                }

                else
                {
                  v84 = "";
                }
              }

              v85 = v8[1];
              ++v8;
              v86 = v19 + 96 * v85;
              v87 = strlen(v84);
              if (*(v86 + 23) < 0)
              {
                if (*(v86 + 8))
                {
                  v88 = *v86;
                }

                else
                {
                  v88 = "";
                }
              }

              else if (*(v86 + 23))
              {
                v88 = v86;
              }

              else
              {
                v88 = "";
              }

              a2 = v252;
              v89 = strlen(v88);
              result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v84, v87, v88, v89);
            }

            while ((result & 0x80) == 0);
          }

          else
          {
            v78 = v255 + 1;
            do
            {
              v8 = v78;
              if (v78 >= a2)
              {
                break;
              }

              v79 = v77;
              if ((v71 & 0x80) != 0)
              {
                if (*(v259 + 8))
                {
                  v79 = *v259;
                }

                else
                {
                  v79 = "";
                }
              }

              v80 = (v19 + 96 * *v78);
              v81 = strlen(v79);
              if (v80[23] < 0)
              {
                v82 = *(v80 + 1) ? *v80 : "";
              }

              else
              {
                v82 = v80[23] ? v80 : "";
              }

              a2 = v252;
              v83 = strlen(v82);
              result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v79, v81, v82, v83);
              v78 = v8 + 1;
            }

            while ((result & 0x80) == 0);
          }

          v90 = a2;
          if (v8 < a2)
          {
            if (v71)
            {
              v91 = v259;
            }

            else
            {
              v91 = "";
            }

            v90 = v252;
            do
            {
              v92 = v91;
              if ((v71 & 0x80) != 0)
              {
                if (*(v259 + 8))
                {
                  v92 = *v259;
                }

                else
                {
                  v92 = "";
                }
              }

              v93 = *--v90;
              v94 = v19 + 96 * v93;
              v95 = strlen(v92);
              if (*(v94 + 23) < 0)
              {
                if (*(v94 + 8))
                {
                  v96 = *v94;
                }

                else
                {
                  v96 = "";
                }
              }

              else if (*(v94 + 23))
              {
                v96 = v94;
              }

              else
              {
                v96 = "";
              }

              v97 = strlen(v96);
              result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v92, v95, v96, v97);
            }

            while ((result & 0x80) != 0);
          }

          if (v8 < v90)
          {
            v265 = v19;
            v98 = *v8;
            v99 = *v90;
            do
            {
              *v8 = v99;
              *v90 = v98;
              v100 = *(v259 + 23);
              if (*(v259 + 23))
              {
                v101 = v259;
              }

              else
              {
                v101 = "";
              }

              do
              {
                v102 = v8[1];
                ++v8;
                v98 = v102;
                v103 = v101;
                if (v100 < 0)
                {
                  if (*(v259 + 8))
                  {
                    v103 = *v259;
                  }

                  else
                  {
                    v103 = "";
                  }
                }

                v104 = v265 + 96 * v98;
                v105 = strlen(v103);
                if (*(v104 + 23) < 0)
                {
                  if (*(v104 + 8))
                  {
                    v106 = *v104;
                  }

                  else
                  {
                    v106 = "";
                  }
                }

                else if (*(v104 + 23))
                {
                  v106 = (v265 + 96 * v98);
                }

                else
                {
                  v106 = "";
                }

                v107 = strlen(v106);
              }

              while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v103, v105, v106, v107) & 0x80) == 0);
              do
              {
                v108 = *--v90;
                v99 = v108;
                v109 = v101;
                if (v100 < 0)
                {
                  if (*(v259 + 8))
                  {
                    v109 = *v259;
                  }

                  else
                  {
                    v109 = "";
                  }
                }

                v110 = v265 + 96 * v99;
                v111 = strlen(v109);
                if (*(v110 + 23) < 0)
                {
                  if (*(v110 + 8))
                  {
                    v112 = *v110;
                  }

                  else
                  {
                    v112 = "";
                  }
                }

                else if (*(v110 + 23))
                {
                  v112 = (v265 + 96 * v99);
                }

                else
                {
                  v112 = "";
                }

                v113 = strlen(v112);
                result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v109, v111, v112, v113);
              }

              while ((result & 0x80) != 0);
            }

            while (v8 < v90);
          }

          v114 = v8 - 1;
          if (v8 - 1 != v255)
          {
            *v255 = *v114;
          }

          a5 = 0;
          a4 = v247;
          *v114 = v245;
          a2 = v252;
          v9 = a3;
        }

        v19 = *(v18 + 48);
        v20 = *(v19 + 96 * v17 + 23);
LABEL_32:
        v264 = v19 + 96 * v17;
        v27 = v20 ? (v19 + 96 * v17) : "";
        v260 = v255;
        do
        {
          v28 = v260[1];
          ++v260;
          v29 = v19 + 96 * v28;
          if (*(v29 + 23) < 0)
          {
            if (*(v29 + 8))
            {
              v30 = *v29;
            }

            else
            {
              v30 = "";
            }
          }

          else if (*(v29 + 23))
          {
            v30 = (v19 + 96 * v28);
          }

          else
          {
            v30 = "";
          }

          v31 = strlen(v30);
          v32 = v27;
          if ((v20 & 0x80) != 0)
          {
            if (*(v264 + 8))
            {
              v32 = *v264;
            }

            else
            {
              v32 = "";
            }
          }

          v33 = strlen(v32);
        }

        while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v30, v31, v32, v33) & 0x80) != 0);
        v34 = v20;
        v35 = a2;
        v256 = v260 - 1;
        v36 = v19;
        if (v260 - 1 == v255)
        {
          v35 = a2;
          do
          {
            if (v260 >= v35)
            {
              break;
            }

            v44 = v35 - 1;
            v45 = v19 + 96 * *(v35 - 1);
            if (*(v45 + 23) < 0)
            {
              if (*(v45 + 8))
              {
                v46 = *v45;
              }

              else
              {
                v46 = "";
              }
            }

            else if (*(v45 + 23))
            {
              v46 = (v19 + 96 * *(v35 - 1));
            }

            else
            {
              v46 = "";
            }

            v47 = strlen(v46);
            v48 = v27;
            if (v34 < 0)
            {
              if (*(v264 + 8))
              {
                v48 = *v264;
              }

              else
              {
                v48 = "";
              }
            }

            v49 = strlen(v48);
            v50 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v46, v47, v48, v49);
            v19 = v36;
            v35 = v44;
          }

          while ((v50 & 0x80) == 0);
        }

        else
        {
          do
          {
            v37 = v35 - 1;
            v38 = v19 + 96 * *(v35 - 1);
            if (*(v38 + 23) < 0)
            {
              if (*(v38 + 8))
              {
                v39 = *v38;
              }

              else
              {
                v39 = "";
              }
            }

            else if (*(v38 + 23))
            {
              v39 = (v19 + 96 * *(v35 - 1));
            }

            else
            {
              v39 = "";
            }

            v40 = strlen(v39);
            v41 = v27;
            if (v34 < 0)
            {
              if (*(v264 + 8))
              {
                v41 = *v264;
              }

              else
              {
                v41 = "";
              }
            }

            v42 = strlen(v41);
            v43 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v39, v40, v41, v42);
            v19 = v36;
            v35 = v37;
          }

          while ((v43 & 0x80) == 0);
        }

        v250 = v35;
        if (v260 < v35)
        {
          v51 = v35;
          v52 = *v35;
          v53 = v260;
          do
          {
            *v53 = v52;
            *v51 = v28;
            v54 = *(v264 + 23);
            if (*(v264 + 23))
            {
              v55 = v264;
            }

            else
            {
              v55 = "";
            }

            do
            {
              v56 = v53[1];
              ++v53;
              v28 = v56;
              v57 = v19 + 96 * v56;
              if (*(v57 + 23) < 0)
              {
                if (*(v57 + 8))
                {
                  v58 = *v57;
                }

                else
                {
                  v58 = "";
                }
              }

              else if (*(v57 + 23))
              {
                v58 = v57;
              }

              else
              {
                v58 = "";
              }

              v59 = strlen(v58);
              v60 = v55;
              if (v54 < 0)
              {
                if (*(v264 + 8))
                {
                  v60 = *v264;
                }

                else
                {
                  v60 = "";
                }
              }

              v61 = strlen(v60);
              v62 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v58, v59, v60, v61);
              v19 = v36;
            }

            while (v62 < 0);
            v256 = v53 - 1;
            do
            {
              v63 = *--v51;
              v52 = v63;
              v64 = v19 + 96 * v63;
              if (*(v64 + 23) < 0)
              {
                if (*(v64 + 8))
                {
                  v65 = *v64;
                }

                else
                {
                  v65 = "";
                }
              }

              else if (*(v64 + 23))
              {
                v65 = v64;
              }

              else
              {
                v65 = "";
              }

              v66 = strlen(v65);
              v67 = v55;
              if (v54 < 0)
              {
                if (*(v264 + 8))
                {
                  v67 = *v264;
                }

                else
                {
                  v67 = "";
                }
              }

              v68 = strlen(v67);
              v69 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v65, v66, v67, v68);
              v19 = v36;
            }

            while ((v69 & 0x80) == 0);
          }

          while (v53 < v51);
        }

        v7 = v255;
        if (v256 != v255)
        {
          *v255 = *v256;
        }

        a4 = v247;
        *v256 = v245;
        a2 = v252;
        v9 = a3;
        if (v260 >= v250)
        {
          break;
        }

LABEL_112:
        result = std::__introsort<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,false>(v255, v256, a3, v247, a5 & 1);
        a5 = 0;
        v8 = v256 + 1;
      }

      v70 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *>(v255, v256, a3);
      v8 = v256 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *>(v256 + 1, v252, a3);
      if (result)
      {
        break;
      }

      if (!v70)
      {
        goto LABEL_112;
      }
    }

    a2 = v256;
    if (!v70)
    {
      continue;
    }

    return result;
  }
}