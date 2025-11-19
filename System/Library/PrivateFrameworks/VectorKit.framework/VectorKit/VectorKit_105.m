void sub_1B2F550DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::PathCurve::arcLength(_anonymous_namespace_::PathCurve *this, int a2, double a3, double a4)
{
  LODWORD(v27) = a2;
  *&v29 = a3;
  v7 = this + 24;
  v5 = *(this + 3);
  v6 = *(v7 + 1);
  if (v5)
  {
    v10 = a4 - a3;
    v11 = ((a4 - a3) * (10 * v6));
    if (v11 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = 0;
    *&v27 = (*(*v5 + 48))(v5, &v27, &v29);
    *(&v27 + 1) = v14;
    v28 = v15;
    v16 = 0.0;
    while (1)
    {
      LODWORD(v25) = a2;
      *&v29 = a3 + v10 * v13 * (1.0 / (v12 - 1));
      v17 = *(this + 3);
      if (!v17)
      {
        break;
      }

      v18 = (*(*v17 + 48))(v17, &v25, &v29);
      v19 = 0;
      *&v25 = v18;
      *(&v25 + 1) = v20;
      v26 = v21;
      do
      {
        *(&v29 + v19) = *(&v25 + v19) - *(&v27 + v19);
        v19 += 8;
      }

      while (v19 != 24);
      v22 = 0;
      v23 = 0.0;
      do
      {
        v23 = v23 + *(&v29 + v22) * *(&v29 + v22);
        v22 += 8;
      }

      while (v22 != 24);
      v27 = v25;
      v28 = v26;
      v16 = sqrt(v23) + v16;
      if (++v13 == v12)
      {
        return;
      }
    }
  }

  v24 = std::__throw_bad_function_call[abi:nn200100]();
}

void geo::ConstantStepSimpleSpline<anonymous namespace::PathCurve>::tangent(void *a1, double a2)
{
  v4 = a1[5];
  v5 = v4;
  v6 = (v3 * v4);
  v7 = v4 - 1;
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = (v3 - v8 / v5) / ((v8 + 1) / v5 - v8 / v5);
  v10 = v9;
  v11 = v9 + 0.001;
  if (v11 >= 1.0)
  {
    LODWORD(v32) = v8;
    *&v35 = v10;
    v20 = a1[3];
    if (v20)
    {
      v32 = (*(*v20 + 48))(v20, &v32, &v35);
      v33 = v21;
      LODWORD(v29) = v8;
      v34 = v22;
      *&v35 = v10 + -0.001;
      v23 = a1[3];
      if (v23)
      {
        v24 = (*(*v23 + 48))(v23, &v29, &v35);
        v25 = 0;
        v29 = v24;
        v30 = v26;
        v31 = v27;
        do
        {
          *(&v35 + v25) = *(&v32 + v25) - *(&v29 + v25);
          v25 += 8;
        }

        while (v25 != 24);
        goto LABEL_14;
      }
    }
  }

  else
  {
    LODWORD(v32) = v8;
    *&v35 = v11;
    v12 = a1[3];
    if (v12)
    {
      v32 = (*(*v12 + 48))(v12, &v32, &v35);
      v33 = v13;
      v34 = v14;
      *&v35 = v10;
      LODWORD(v29) = v8;
      v15 = a1[3];
      if (v15)
      {
        v16 = (*(*v15 + 48))(v15, &v29, &v35);
        v17 = 0;
        v29 = v16;
        v30 = v18;
        v31 = v19;
        do
        {
          *(&v35 + v17) = *(&v32 + v17) - *(&v29 + v17);
          v17 += 8;
        }

        while (v17 != 24);
LABEL_14:
        gm::Matrix<double,3,1>::normalized<int,void>(&v35);
        return;
      }
    }
  }

  v28 = std::__throw_bad_function_call[abi:nn200100]();
}

void anonymous namespace::AngleCurve::AngleCurve(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0;
  v2 = a2[1] - *a2;
  if (!((v2 >> 4) >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v2 >> 4);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B2F55664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  operator delete(v15);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v14);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<double ()(double)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

double geo::Frustum<double>::point(uint64_t a1, double a2, double a3, double a4)
{
  v4 = 0;
  v5 = 1.0 - a2;
  do
  {
    *(&v99 + v4) = *(a1 + 240 + v4) * v5;
    v4 += 8;
  }

  while (v4 != 24);
  v6 = 0;
  v81 = v99;
  v82 = v100;
  v7 = 1.0 - a3;
  do
  {
    *(&v99 + v6) = *(&v81 + v6) * v7;
    v6 += 8;
  }

  while (v6 != 24);
  v8 = 0;
  v83 = v99;
  v84 = v100;
  v9 = 1.0 - a4;
  do
  {
    *(&v99 + v8) = *(&v83 + v8) * v9;
    v8 += 8;
  }

  while (v8 != 24);
  v10 = 0;
  v85 = v99;
  v86 = v100;
  do
  {
    *(&v99 + v10) = *(a1 + 336 + v10) * a2;
    v10 += 8;
  }

  while (v10 != 24);
  v11 = 0;
  v75 = v99;
  v76 = v100;
  do
  {
    *(&v99 + v11) = *(&v75 + v11) * v7;
    v11 += 8;
  }

  while (v11 != 24);
  v12 = 0;
  v77 = v99;
  v78 = v100;
  do
  {
    *(&v99 + v12) = *(&v77 + v12) * v9;
    v12 += 8;
  }

  while (v12 != 24);
  v13 = 0;
  v79 = v99;
  v80 = v100;
  do
  {
    *(&v99 + v13) = *(&v79 + v13) + *(&v85 + v13);
    v13 += 8;
  }

  while (v13 != 24);
  v14 = 0;
  v87 = v99;
  v88 = v100;
  do
  {
    *(&v99 + v14) = *(a1 + 192 + v14) * v5;
    v14 += 8;
  }

  while (v14 != 24);
  v15 = 0;
  v69 = v99;
  v70 = v100;
  do
  {
    *(&v99 + v15) = *(&v69 + v15) * a3;
    v15 += 8;
  }

  while (v15 != 24);
  v16 = 0;
  v71 = v99;
  v72 = v100;
  do
  {
    *(&v99 + v16) = *(&v71 + v16) * v9;
    v16 += 8;
  }

  while (v16 != 24);
  v17 = 0;
  v73 = v99;
  v74 = v100;
  do
  {
    *(&v99 + v17) = *(&v73 + v17) + *(&v87 + v17);
    v17 += 8;
  }

  while (v17 != 24);
  v18 = 0;
  v89 = v99;
  v90 = v100;
  do
  {
    *(&v99 + v18) = *(a1 + 288 + v18) * a2;
    v18 += 8;
  }

  while (v18 != 24);
  v19 = 0;
  v63 = v99;
  v64 = v100;
  do
  {
    *(&v99 + v19) = *(&v63 + v19) * a3;
    v19 += 8;
  }

  while (v19 != 24);
  v20 = 0;
  v65 = v99;
  v66 = v100;
  do
  {
    *(&v99 + v20) = *(&v65 + v20) * v9;
    v20 += 8;
  }

  while (v20 != 24);
  v21 = 0;
  v67 = v99;
  v68 = v100;
  do
  {
    *(&v99 + v21) = *(&v67 + v21) + *(&v89 + v21);
    v21 += 8;
  }

  while (v21 != 24);
  v22 = 0;
  v91 = v99;
  v92 = v100;
  do
  {
    *(&v99 + v22) = *(a1 + 264 + v22) * v5;
    v22 += 8;
  }

  while (v22 != 24);
  v23 = 0;
  v57 = v99;
  v58 = v100;
  do
  {
    *(&v99 + v23) = *(&v57 + v23) * v7;
    v23 += 8;
  }

  while (v23 != 24);
  v24 = 0;
  v59 = v99;
  v60 = v100;
  do
  {
    *(&v99 + v24) = *(&v59 + v24) * a4;
    v24 += 8;
  }

  while (v24 != 24);
  v25 = 0;
  v61 = v99;
  v62 = v100;
  do
  {
    *(&v99 + v25) = *(&v61 + v25) + *(&v91 + v25);
    v25 += 8;
  }

  while (v25 != 24);
  v26 = 0;
  v93 = v99;
  v94 = v100;
  do
  {
    *(&v99 + v26) = *(a1 + 360 + v26) * a2;
    v26 += 8;
  }

  while (v26 != 24);
  v27 = 0;
  v51 = v99;
  v52 = v100;
  do
  {
    *(&v99 + v27) = *(&v51 + v27) * v7;
    v27 += 8;
  }

  while (v27 != 24);
  v28 = 0;
  v53 = v99;
  v54 = v100;
  do
  {
    *(&v99 + v28) = *(&v53 + v28) * a4;
    v28 += 8;
  }

  while (v28 != 24);
  v29 = 0;
  v55 = v99;
  v56 = v100;
  do
  {
    *(&v99 + v29) = *(&v55 + v29) + *(&v93 + v29);
    v29 += 8;
  }

  while (v29 != 24);
  v30 = 0;
  v95 = v99;
  v96 = v100;
  do
  {
    *(&v99 + v30) = *(a1 + 216 + v30) * v5;
    v30 += 8;
  }

  while (v30 != 24);
  v31 = 0;
  v45 = v99;
  v46 = v100;
  do
  {
    *(&v99 + v31) = *(&v45 + v31) * a3;
    v31 += 8;
  }

  while (v31 != 24);
  v32 = 0;
  v47 = v99;
  v48 = v100;
  do
  {
    *(&v99 + v32) = *(&v47 + v32) * a4;
    v32 += 8;
  }

  while (v32 != 24);
  v33 = 0;
  v49 = v99;
  v50 = v100;
  do
  {
    *(&v99 + v33) = *(&v49 + v33) + *(&v95 + v33);
    v33 += 8;
  }

  while (v33 != 24);
  v34 = 0;
  v97 = v99;
  v98 = v100;
  do
  {
    *(&v99 + v34) = *(a1 + 312 + v34) * a2;
    v34 += 8;
  }

  while (v34 != 24);
  v35 = 0;
  v39 = v99;
  v40 = v100;
  do
  {
    *(&v99 + v35) = *(&v39 + v35) * a3;
    v35 += 8;
  }

  while (v35 != 24);
  v36 = 0;
  v41 = v99;
  v42 = v100;
  do
  {
    *(&v99 + v36) = *(&v41 + v36) * a4;
    v36 += 8;
  }

  while (v36 != 24);
  v37 = 0;
  v43 = v99;
  v44 = v100;
  do
  {
    *(&v99 + v37) = *(&v43 + v37) + *(&v97 + v37);
    v37 += 8;
  }

  while (v37 != 24);
  return *&v99;
}

void *std::deque<anonymous namespace::PathAnimator::_pickRequiredPoints(BOOL *)::Path,std::allocator<anonymous namespace::PathAnimator::_pickRequiredPoints(BOOL *)::Path>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<geo::QuadTile *>::emplace_back<geo::QuadTile *&>(a1, &v10);
}

void sub_1B2F562CC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,anonymous namespace::PathAnimator::_pickRequiredPoints(BOOL *)::Path *>> &,std::__wrap_iter<std::pair<float,anonymous namespace::PathAnimator::_pickRequiredPoints(BOOL *)::Path *>*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = result + 16 * v3;
    v5 = a2 - 16;
    v6 = *(a2 - 16);
    v7 = *v4;
    if (*v4 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = -127;
    }

    if (*v4 > v6)
    {
      v8 = 1;
    }

    if (*v4 < v6)
    {
      v8 = -1;
    }

    if (v8 || ((v9 = *(v4 + 8), v10 = *(a2 - 8), v11 = v9 == v10, v9 < v10) ? (LOBYTE(v8) = -1) : (LOBYTE(v8) = 1), !v11))
    {
      if (v8 == 1)
      {
        v12 = *(a2 - 8);
        do
        {
          v13 = v5;
          v5 = v4;
          *v13 = v7;
          *(v13 + 8) = *(v4 + 8);
          if (!v3)
          {
            break;
          }

          v3 = (v3 - 1) >> 1;
          v4 = result + 16 * v3;
          v7 = *v4;
          if (*v4 == v6)
          {
            v14 = 0;
          }

          else
          {
            v14 = -127;
          }

          if (*v4 > v6)
          {
            v14 = 1;
          }

          if (*v4 < v6)
          {
            v14 = -1;
          }

          if (!v14)
          {
            v15 = *(v4 + 8);
            v16 = v15 == v12;
            LOBYTE(v14) = v15 < v12 ? -1 : 1;
            if (v16)
            {
              break;
            }
          }
        }

        while (v14 == 1);
        *v5 = v6;
        *(v5 + 8) = v12;
      }
    }
  }

  return result;
}

BOOL ___ZN12_GLOBAL__N_112PathAnimatorC2EPN2md13MapDataAccessERKN3geo14RigidTransformIddEEONSt3__16vectorINS1_3mun15CollectionPointENS9_9allocatorISC_EEEERKNS4_10GeocentricIdEERKNS1_13MuninSettingsEhbb_block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 616);
  v5 = *(v3 + 640);
  v6 = *(v3 + 648);
  if (v5 - v4 * v5 <= v6)
  {
    v10 = (v4 + -1.0 + v6 / v5) / (v6 / v5);
    v11 = fmax(*(v3 + 632) - v10 * v10 * v10 * *(v3 + 632), 0.2);
    *(v3 + 624) = v11;
    v8 = fmin(v11 * a2 / v5 + v4, 1.0);
    *(v3 + 616) = v8;
  }

  else
  {
    v7 = *(v3 + 624);
    v8 = v7 * a2 / v5 + v4;
    *(v3 + 616) = v8;
    v9 = v7 + *(a1 + 40) * a2;
    *(v3 + 624) = v9;
    *(v3 + 632) = v9;
  }

  v12 = v8;
  v13 = *(v3 + 304);
  v14 = (v3 + 312);
  if (v13 != (v3 + 312))
  {
    v15 = 0;
    v16 = *(v3 + 304);
    do
    {
      v17 = *(v16 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v16 + 2);
          v19 = *v18 == v16;
          v16 = v18;
        }

        while (!v19);
      }

      ++v15;
      v16 = v18;
    }

    while (v18 != v14);
    do
    {
      v20 = v15 >> 1;
      v21 = v13;
      if (v15 >= 2)
      {
        v22 = v15 >> 1;
        v23 = v13;
        do
        {
          v24 = *(v23 + 1);
          if (v24)
          {
            do
            {
              v21 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v21 = *(v23 + 2);
              v19 = *v21 == v23;
              v23 = v21;
            }

            while (!v19);
          }

          v23 = v21;
          v28 = v22-- <= 1;
        }

        while (!v28);
      }

      if (v21[9] <= v12)
      {
        v25 = *(v21 + 1);
        if (v25)
        {
          do
          {
            v13 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v13 = *(v21 + 2);
            v19 = *v13 == v21;
            v21 = v13;
          }

          while (!v19);
        }

        v20 = v15 + ~v20;
      }

      v15 = v20;
    }

    while (v20);
  }

  if (v14 == v13 || ((v26 = v13[8], v27 = v13[9], v26 <= v12) ? (v28 = v27 <= v12) : (v28 = 1), v28))
  {
    v29 = *(v3 + 320) - 1;
    v30 = 1.0;
  }

  else
  {
    v29 = *(v13 + 5);
    v30 = 0.0;
    if (v26 != v27)
    {
      v30 = (fminf(v27, v12) - v26) / (v27 - v26);
    }
  }

  v31 = *(v3 + 208);
  if (v29 != v31)
  {
    *(v3 + 208) = v29;
  }

  v32 = *(v3 + 8);
  if (!v32 || (v33 = std::__shared_weak_count::lock(v32)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:nn200100]();
    goto LABEL_48;
  }

  v2 = v33;
  v34 = *(v3 + 616);
  v44 = v29;
  v45 = v3;
  v42 = v34;
  v43 = v30;
  v35 = *(v3 + 552);
  if (!v35)
  {
    goto LABEL_48;
  }

  (*(*v35 + 48))(v35, &v45, v41, &v44, &v43, &v42);
  if (v29 != v31)
  {
    v36 = *(v3 + 504) + 1992 * *(v3 + 208);
    v44 = *(v3 + 208);
    v45 = v3;
    v37 = *(v3 + 584);
    if (v37)
    {
      (*(*v37 + 48))(v37, &v45, &v44, v41);
      goto LABEL_46;
    }

LABEL_48:
    v40 = std::__throw_bad_function_call[abi:nn200100]();
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    _Unwind_Resume(v40);
  }

LABEL_46:
  v38 = *(v3 + 616) >= 1.0;
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  return v38;
}

_anonymous_namespace_::PointSegment *anonymous namespace::PointSegment::PointSegment(_anonymous_namespace_::PointSegment *this, const md::mun::PointView *a2, const md::mun::PointView *a3)
{
  v5 = md::mun::PointView::PointView(this, a2);
  md::mun::PointView::PointView((v5 + 1992), a3);
  return this;
}

void sub_1B2F56738(_Unwind_Exception *a1)
{
  v3 = v1[239];
  if (v3 != v1[241])
  {
    free(v3);
  }

  v4 = v1[236];
  if (v4)
  {
    v1[237] = v4;
    operator delete(v4);
  }

  v5 = v1[233];
  if (v5)
  {
    v1[234] = v5;
    operator delete(v5);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((v1 + 11));
  _Unwind_Resume(a1);
}

md::mun::PointView *md::mun::PointView::PointView(md::mun::PointView *this, const md::mun::PointView *a2)
{
  *this = *a2;
  v4 = *(a2 + 8);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = v4;
  v5 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v5;
  *(this + 44) = *(a2 + 44);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(this + 11) = this + 120;
  v8 = (this + 88);
  *(this + 56) = v6;
  *(this + 72) = v7;
  *(this + 12) = this + 120;
  *(this + 13) = this + 120;
  *(this + 14) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(this + 11, *(a2 + 11), *(a2 + 12));
  v9 = *(a2 + 231);
  *(v8 + 1765) = *(a2 + 1853);
  v8[220] = v9;
  std::vector<std::pair<md::mun::ViewId,unsigned int>>::vector[abi:nn200100](v8 + 222, a2 + 233);
  std::vector<std::pair<md::mun::ViewId,unsigned int>>::vector[abi:nn200100](this + 236, a2 + 236);
  *(this + 239) = this + 1944;
  *(this + 240) = this + 1944;
  *(this + 241) = this + 1944;
  *(this + 242) = 6;
  geo::small_vector_base<md::mun::PointView::CameraLod>::append<md::mun::PointView::CameraLod const*>(this + 239, *(a2 + 239), *(a2 + 240));
  return this;
}

void sub_1B2F5687C(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 1896) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 1872) = v7;
    operator delete(v7);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v1);
  _Unwind_Resume(a1);
}

void geo::small_vector_base<md::mun::PointView::CameraLod>::append<md::mun::PointView::CameraLod const*>(void *a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = (a3 - a2) >> 3;
  v8 = a1[1];
  v9 = v8 - *a1;
  if (v7 > a1[3] - (v9 >> 3))
  {
    geo::small_vector_base<md::mun::PointView::CameraLod>::grow(a1, (v9 >> 3) + v7);
    v8 = a1[1];
  }

  if (v4 != a3)
  {
    do
    {
      v10 = *v4;
      v4 += 8;
      *v8++ = v10;
    }

    while (v4 != a3);
    v8 = a1[1];
  }

  a1[1] = v8 + v6;
}

void geo::small_vector_base<md::mun::PointView::CameraLod>::grow(uint64_t a1, unint64_t a2)
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

  v10 = malloc_type_malloc(8 * v9, 0x100004087EB8081uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12++;
      *v14++ = v15;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = v11 + v4 - v3;
  *(a1 + 24) = v9;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::PointView>>(unint64_t a1)
{
  if (a1 < 0x20E64C148FEF8DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::PointView>,md::mun::PointView*>(uint64_t result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      *a3 = *v6;
      v7 = *(v6 + 8);
      *(a3 + 24) = *(v6 + 24);
      *(a3 + 8) = v7;
      v8 = *(v6 + 32);
      *(a3 + 40) = *(v6 + 40);
      *(a3 + 32) = v8;
      *(a3 + 44) = *(v6 + 44);
      v9 = *(v6 + 56);
      *(a3 + 72) = *(v6 + 72);
      *(a3 + 56) = v9;
      geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base((a3 + 88), v6 + 88, a3 + 120);
      v10 = *(v6 + 1848);
      *(a3 + 1853) = *(v6 + 1853);
      *(a3 + 1848) = v10;
      *(a3 + 1864) = 0;
      *(a3 + 1872) = 0u;
      *(a3 + 1864) = *(v6 + 1864);
      *(a3 + 1872) = *(v6 + 1872);
      *(v6 + 1880) = 0;
      *(v6 + 1864) = 0u;
      *(a3 + 1904) = 0;
      *(a3 + 1888) = 0u;
      *(a3 + 1888) = *(v6 + 1888);
      *(a3 + 1904) = *(v6 + 1904);
      *(v6 + 1904) = 0;
      *(v6 + 1888) = 0u;
      v11 = (a3 + 1944);
      *(a3 + 1912) = a3 + 1944;
      *(a3 + 1920) = a3 + 1944;
      *(a3 + 1928) = a3 + 1944;
      *(a3 + 1936) = *(v6 + 1936);
      v12 = *(v6 + 1912);
      if (v12 == *(v6 + 1928))
      {
        *(a3 + 1920) = v11 + *(v6 + 1920) - v12;
        v13 = *(v6 + 1920);
        while (v12 != v13)
        {
          v14 = *v12++;
          *v11++ = v14;
        }
      }

      else
      {
        *(a3 + 1912) = v12;
        *(a3 + 1920) = *(v6 + 1920);
        *(v6 + 1912) = 0uLL;
        *(v6 + 1928) = 0uLL;
      }

      v6 += 1992;
      a3 += 1992;
    }

    while (v6 != a2);
    do
    {
      result = std::allocator_traits<std::allocator<md::mun::PointView>>::destroy[abi:nn200100]<md::mun::PointView,void,0>(v5);
      v5 += 249;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<md::mun::PointView>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1992;
    std::allocator_traits<std::allocator<md::mun::PointView>>::destroy[abi:nn200100]<md::mun::PointView,void,0>((i - 1992));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<gm::Range<float>,unsigned long>,std::__map_value_compare<gm::Range<float>,std::__value_type<gm::Range<float>,unsigned long>,geo::range_map<float,unsigned long,std::less<float>,std::allocator<std::pair<gm::Range<float> const,unsigned long>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<float>,unsigned long>>>::__emplace_unique_key_args<gm::Range<float>,std::pair<gm::Range<float> const,unsigned long>>(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 9);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v2;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return 0;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

double std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2}>,gm::Matrix<double,3,1> ()(int,double)>::operator()(uint64_t a1, int *a2, double *a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = *a3;
  if (*a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *a2;
  }

  v7 = *(a1 + 8);
  v8 = v7 + 24 * v6;
  v9 = *(v8 - 8);
  v10 = (v7 + 24 * v4);
  v11 = *(v10 + 2);
  v12 = *(v10 + 5);
  v13 = v4 + 2;
  if (v13 >= (-1431655765 * ((*(a1 + 16) - v7) >> 3) - 1))
  {
    v13 = -1431655765 * ((*(a1 + 16) - v7) >> 3) - 1;
  }

  v14 = (v7 + 24 * v13);
  v15 = *(v14 + 2);
  v48 = *(v8 - 24);
  v49 = v9;
  v46 = *v10;
  v47 = v11;
  v44 = *(v10 + 24);
  v45 = v12;
  v42 = *v14;
  v43 = v15;
  v16 = v5 * v5;
  do
  {
    *(&v50 + v3) = *(&v48 + v3) * -(v5 + v5 * v5 * (v5 + -2.0));
    v3 += 8;
  }

  while (v3 != 24);
  v17 = 0;
  v34 = v50;
  v35 = v51;
  do
  {
    *(&v50 + v17) = *(&v46 + v17) * ((v5 * 3.0 + -5.0) * v16 + 2.0);
    v17 += 8;
  }

  while (v17 != 24);
  v18 = 0;
  v19 = v5 + -1.0;
  v32 = v50;
  v33 = v51;
  do
  {
    *(&v50 + v18) = *(&v32 + v18) + *(&v34 + v18);
    v18 += 8;
  }

  while (v18 != 24);
  v20 = 0;
  v21 = (4.0 - v5 * 3.0) * (v5 * v5) + v5;
  v36 = v50;
  v37 = v51;
  do
  {
    *(&v50 + v20) = *(&v44 + v20) * v21;
    v20 += 8;
  }

  while (v20 != 24);
  v22 = 0;
  v30 = v50;
  v31 = v51;
  do
  {
    *(&v50 + v22) = *(&v30 + v22) + *(&v36 + v22);
    v22 += 8;
  }

  while (v22 != 24);
  v23 = 0;
  v24 = v16 * v19;
  v38 = v50;
  v39 = v51;
  do
  {
    *(&v50 + v23) = v24 * *(&v42 + v23);
    v23 += 8;
  }

  while (v23 != 24);
  v25 = 0;
  v28 = v50;
  v29 = v51;
  do
  {
    *(&v50 + v25) = *(&v28 + v25) + *(&v38 + v25);
    v25 += 8;
  }

  while (v25 != 24);
  v26 = 0;
  v40 = v50;
  v41 = v51;
  do
  {
    *(&v50 + v26) = *(&v40 + v26) * 0.5;
    v26 += 8;
  }

  while (v26 != 24);
  return *&v50;
}

void std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2}>,gm::Matrix<double,3,1> ()(int,double)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2}>,gm::Matrix<double,3,1> ()(int,double)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2}>,gm::Matrix<double,3,1> ()(int,double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18BA0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2}>,gm::Matrix<double,3,1> ()(int,double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18BA0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t *std::vector<gm::Matrix<double,3,1>>::resize(uint64_t *result, unint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    if (a2 >= v4)
    {
      return result;
    }

    v10 = v2 + 24 * a2;
  }

  else
  {
    v6 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v3) >> 3) < v5)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v2) >> 3);
        v8 = 2 * v7;
        if (2 * v7 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x555555555555555)
        {
          v9 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v9 = v8;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v9);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v3 + 24 * (24 * v5 / 0x18);
  }

  result[1] = v10;
  return result;
}

double std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::operator()(uint64_t a1, uint64_t a2, double *a3)
{
  v4 = *a3;
  v14[0] = gm::Ray<double,3>::at(a1 + 8, *a3);
  v14[1] = v5;
  v14[2] = v6;
  v7 = std::function<double ()(double)>::operator()(*(a1 + 80), v4);
  for (i = 0; i != 3; ++i)
  {
    *&v14[i + 3] = *(a1 + 88 + i * 8) * v7;
  }

  for (j = 0; j != 3; ++j)
  {
    *&v14[j] = *&v14[j] + *&v14[j + 3];
  }

  v10 = std::function<double ()(double)>::operator()(*(a1 + 136), v4);
  for (k = 0; k != 3; ++k)
  {
    *&v14[k + 3] = *(a1 + 144 + k * 8) * v10;
  }

  for (m = 0; m != 3; ++m)
  {
    *&v14[m] = *&v14[m] + *&v14[m + 3];
  }

  return *v14;
}

void std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 112);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 56);

  operator delete(a1);
}

uint64_t std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::destroy(uint64_t a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 112);

  return std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 56);
}

__n128 std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18B58;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v5;
  *(a2 + 8) = v4;
  std::__function::__value_func<double ()(double)>::__value_func[abi:nn200100](a2 + 56, a1 + 56);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  std::__function::__value_func<double ()(double)>::__value_func[abi:nn200100](a2 + 112, a1 + 112);
  result = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 144) = result;
  return result;
}

void sub_1B2F575A4(_Unwind_Exception *a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v1 + 56);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18B58;
  v1 = (a1 + 7);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 14));
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18B58;
  v2 = (a1 + 7);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 14));
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v2);
  return a1;
}

double std::__function::__func<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0,std::allocator<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0>,double ()(double)>::operator()(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = v3 - v2;
  if (v3 == v2)
  {
    return 0.0;
  }

  v5 = *a2;
  v6 = (v4 >> 4) - 1;
  v7 = (v2 + 16);
  v8 = 1 - (v4 >> 4);
  v9 = -1;
  while (v8 + v9 != -1)
  {
    v10 = *v7;
    v7 += 2;
    v11 = v10;
    ++v9;
    if (v10 >= v5)
    {
      return (v5 - *(v2 + 16 * v9)) * (*(v2 + 16 * v9 + 24) - *(v2 + 16 * v9 + 8)) / (v11 - *(v2 + 16 * v9)) + *(v2 + 16 * v9 + 8);
    }
  }

  return *(v2 + 16 * v6 + 8);
}

void std::__function::__func<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0,std::allocator<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0>,double ()(double)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0,std::allocator<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0>,double ()(double)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0,std::allocator<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18B10;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0,std::allocator<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18B10;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

double std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::operator()(uint64_t a1, double *a2)
{
  v3 = *a2;
  v4 = *(a1 + 72);
  if (v4 <= *a2)
  {
    v6 = *(a1 + 80);
    if (v6 >= v3)
    {
      v9 = (v3 - v4) / (v6 - v4);
      v10 = std::function<double ()(double)>::operator()(*(a1 + 32), *a2);
      v11 = std::function<double ()(double)>::operator()(*(a1 + 64), v3);
      v12 = v9;
      v13 = 1.0 - cos(v12 * 3.14159265);
      return v10 + (v11 - v10) * (v13 * 0.5);
    }

    v5 = *(a1 + 64);
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v7 = *a2;

  return std::function<double ()(double)>::operator()(v5, v7);
}

void std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 40);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::destroy(uint64_t a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 40);

  return std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 8);
}

__n128 std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18AC8;
  v4 = a2 + 40;
  std::__function::__value_func<double ()(double)>::__value_func[abi:nn200100](a2 + 8, a1 + 8);
  std::__function::__value_func<double ()(double)>::__value_func[abi:nn200100](v4, a1 + 40);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  return result;
}

void sub_1B2F57B3C(_Unwind_Exception *a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18AC8;
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 5));
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18AC8;
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 5));
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

double std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::operator()(uint64_t a1, double *a2)
{
  v2 = *(a1 + 32);
  result = 0.0;
  if ((v2 & 0x80000000) == 0)
  {
    v4 = *(a1 + 8);
    v5 = &v4[v2];
    v6 = (v2 + 1);
    v7 = 1.0;
    result = 0.0;
    do
    {
      v8 = *v4++;
      result = result + v8 * v7;
      v7 = v7 * (*a2 - v5[1]);
      --v6;
    }

    while (v6);
  }

  return result;
}

void std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void *std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A18A80;
  result = std::vector<gdc::Entity>::vector[abi:nn200100](a2 + 1, (a1 + 8));
  a2[4] = *(a1 + 32);
  return result;
}

void std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18A80;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18A80;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_0,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = atomic_load((v1 + 960));
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_0,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18D08;
  a2[1] = v2;
  return result;
}

void sub_1B2F58240(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 48));

  _Block_object_dispose(&STACK[0x820], 8);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(STACK[0x860]);
  v7 = STACK[0x850];
  STACK[0x850] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  _Block_object_dispose((v5 - 248), 8);
  v8 = *(v5 - 80);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  STACK[0x820] = v2;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&STACK[0x820]);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__334(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v2 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v2;
  v3 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v3;
  v4 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v4;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  result = *(a2 + 160);
  *(a1 + 160) = result;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a1 + 176) = *(a2 + 176);
  return result;
}

void __Block_byref_object_dispose__335(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (a1 + 48);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v3);
}

uint64_t std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 15);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = *(i + 15);
      if (v5 >= *&v6)
      {
        v9 = v5 % *&v6;
      }
    }

    else
    {
      v9 = (*&v6 - 1) & v5;
    }

    v10 = *(*a1 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v12 = *(v11 + 1);
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= *&v6)
        {
          v12 %= *&v6;
        }
      }

      else
      {
        v12 &= *&v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_18;
      }

LABEL_17:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v11 + 16, i + 16))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void ___ZZ38__VKMuninCameraController_tapAtPoint__ENK4__15clERKN12_GLOBAL__N_124PathAnimationDescriptionEONSt3__113unordered_mapIN3gdc19LayerDataRequestKeyENS4_10shared_ptrINS6_9LayerDataEEENS6_23LayerDataRequestKeyHashENS4_8equal_toIS7_EENS4_9allocatorINS4_4pairIKS7_SA_EEEEEE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(*(a1 + 32) + 8);
    memset(v35, 0, sizeof(v35));
    std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(v35, *(v3 + 48), *(v3 + 56), 0x63FB9AEB1FDCD759 * ((*(v3 + 56) - *(v3 + 48)) >> 3));
    v36 = *(v3 + 72);
    v4 = *(v3 + 88);
    v38 = *(v3 + 96);
    v5 = *(v3 + 112);
    v37 = v4;
    v39 = v5;
    v40 = *(v3 + 120);
    v41 = *(v3 + 136);
    v42 = *(v3 + 144);
    v6 = *(v3 + 160);
    v43 = *(v3 + 152);
    v44 = v6;
    v7 = *(v3 + 168);
    v45 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v3 + 176);
    v9 = *(a1 + 104);
    v17[2] = *(a1 + 88);
    v17[3] = v9;
    v10 = *(a1 + 136);
    v17[4] = *(a1 + 120);
    v17[5] = v10;
    v11 = *(a1 + 72);
    v17[0] = *(a1 + 56);
    v17[1] = v11;
    v19 = *(a1 + 160);
    v23 = *(a1 + 196);
    v12 = *(a1 + 208);
    v25 = *(a1 + 224);
    v46 = v8;
    v13 = *(a1 + 176);
    v14 = *(a1 + 184);
    v18 = *(a1 + 152);
    v20 = v13;
    v21 = v14;
    v22 = *(a1 + 192);
    v24 = v12;
    v26[0] = v27;
    v26[1] = v27;
    v26[2] = v27;
    v26[3] = 6;
    geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v26, *(a1 + 240), *(a1 + 248));
    *(v28 + 5) = *(a1 + 2005);
    v28[0] = *(a1 + 2000);
    v29 = *(a1 + 2016);
    v30 = *(a1 + 2032);
    v32 = *(a1 + 2056);
    v31 = *(a1 + 2040);
    v33 = *(a1 + 2064);
    v34 = *(a1 + 2072);
    std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>>::unordered_map(__p, *(*(a1 + 40) + 8) + 48);
    [WeakRetained pathAnimationPrepared:v35 tap:v17 preloadedViews:__p];
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(__p[2]);
    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }

    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v26);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    v47 = v35;
    std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v47);
  }
}

void sub_1B2F58838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(a12);
  if (__p)
  {
    operator delete(__p);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v13 + 184);
  if (*(v14 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v14 - 72));
  }

  *(v14 - 56) = v14 - 192;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100]((v14 - 56));

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_56c36_ZTSN12_GLOBAL__N_114TapDescriptionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  v4 = *(a2 + 88);
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 88) = v4;
  *(a1 + 152) = *(a2 + 152);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v7;
  v8 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v8;
  *(a1 + 196) = *(a2 + 196);
  v9 = *(a2 + 208);
  v10 = *(a2 + 224);
  *(a1 + 240) = a1 + 272;
  v11 = a1 + 240;
  *(a1 + 208) = v9;
  *(a1 + 224) = v10;
  *(a1 + 248) = a1 + 272;
  *(a1 + 256) = a1 + 272;
  *(a1 + 264) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a1 + 240), *(a2 + 240), *(a2 + 248));
  v12 = *(a2 + 2000);
  *(v11 + 1765) = *(a2 + 2005);
  *(v11 + 1760) = v12;
  v13 = *(a2 + 2016);
  *(v11 + 1792) = *(a2 + 2032);
  *(v11 + 1776) = v13;
  v14 = *(a2 + 2040);
  *(v11 + 1816) = *(a2 + 2056);
  *(v11 + 1800) = v14;
  result = *(a2 + 2064);
  *(v11 + 1824) = result;
  *(v11 + 1832) = *(a2 + 2072);
  return result;
}

void sub_1B2F58C68(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 1);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1B2F59024(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 1840));
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v1);
  _Unwind_Resume(a1);
}

void sub_1B2F59660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44)
{
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v46 + 224);
  objc_destroyWeak((v46 + 32));
  objc_destroyWeak((v47 - 152));
  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_40c36_ZTSN12_GLOBAL__N_114TapDescriptionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v3;
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v6;
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  *(a1 + 136) = *(a2 + 136);
  v7 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v7;
  v8 = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 168) = v8;
  *(a1 + 180) = *(a2 + 180);
  v9 = *(a2 + 192);
  v10 = *(a2 + 208);
  *(a1 + 224) = a1 + 256;
  v11 = a1 + 224;
  *(a1 + 192) = v9;
  *(a1 + 208) = v10;
  *(a1 + 232) = a1 + 256;
  *(a1 + 240) = a1 + 256;
  *(a1 + 248) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a1 + 224), *(a2 + 224), *(a2 + 232));
  v12 = *(a2 + 1984);
  *(v11 + 1765) = *(a2 + 1989);
  *(v11 + 1760) = v12;
  v13 = *(a2 + 2000);
  *(v11 + 1792) = *(a2 + 2016);
  *(v11 + 1776) = v13;
  v14 = *(a2 + 2024);
  *(v11 + 1816) = *(a2 + 2040);
  *(v11 + 1800) = v14;
  result = *(a2 + 2048);
  *(v11 + 1824) = result;
  *(v11 + 1832) = *(a2 + 2056);
  return result;
}

void sub_1B2F59C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(a12);
  if (__p)
  {
    operator delete(__p);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v12 + 184);
  if (*(v13 - 96))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v13 - 96));
  }

  *(v13 - 80) = v13 - 216;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100]((v13 - 80));
  _Unwind_Resume(a1);
}

void sub_1B2F5A354(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(STACK[0x1120]);
  v4 = STACK[0x1110];
  STACK[0x1110] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v1 + 320);
  if (STACK[0x918])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x918]);
  }

  *(v2 - 104) = &STACK[0x8A0];
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100]((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1B2F5AB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, void *a18, id a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v46 + 56) = v47;

  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v48 - 256);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v48 - 224);
  std::__function::__value_func<void ()(geo::Geocentric<double> const&)>::~__value_func[abi:nn200100](v48 - 192);
  MEMORY[0x1B8C62190](v46, 0x10A0C40F8EDBF0ELL);

  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a27);

  _Unwind_Resume(a1);
}

uint64_t ___ZN12_GLOBAL__N_112BumpAnimatorC2EN2gm6MatrixIdLi3ELi1EEERKS3_dddddNSt3__18functionIFvRKN3geo10GeocentricIdEEEEENS7_IFvvEEENS7_IFvbEEE_block_invoke(void *a1, __n128 a2)
{
  v3 = a2.n128_f32[0];
  a2.n128_u64[0] = a1[7];
  if (a2.n128_f64[0] <= v3)
  {
    v5 = a1[6];
    if ((*(v5 + 48) & 1) == 0)
    {
      *(v5 + 48) = 1;
      v6 = *(v5 + 136);
      if (v6)
      {
        (*(*v6 + 48))(v6);
        a2.n128_u64[0] = a1[7];
      }
    }

    a2.n128_f64[0] = (v3 - a2.n128_f64[0]) / (1.0 - a2.n128_f64[0]);
    a2.n128_f32[0] = a2.n128_f64[0];
    v4 = a1[5];
  }

  else
  {
    a2.n128_f64[0] = v3 / a2.n128_f64[0];
    a2.n128_f32[0] = a2.n128_f64[0];
    v4 = a1[4];
    a2.n128_f32[0] = 1.0 - a2.n128_f32[0];
  }

  v7 = *(v4 + 16);

  return v7(a2);
}

uint64_t ___ZN12_GLOBAL__N_112BumpAnimatorC2EN2gm6MatrixIdLi3ELi1EEERKS3_dddddNSt3__18functionIFvRKN3geo10GeocentricIdEEEEENS7_IFvvEEENS7_IFvbEEE_block_invoke_2(uint64_t result, float a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    v6[0] = gm::lerp<gm::Matrix<double,3,1>,double>(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), 1.0 - a2);
    v6[1] = v4;
    v6[2] = v5;
    return (*(*v3 + 48))(v3, v6);
  }

  return result;
}

int16x4_t ___ZN12_GLOBAL__N_112BumpAnimatorC2EN2gm6MatrixIdLi3ELi1EEERKS3_dddddNSt3__18functionIFvRKN3geo10GeocentricIdEEEEENS7_IFvvEEENS7_IFvbEEE_block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 32) + 168);
  if (v2)
  {
    return std::function<void ()(BOOL)>::operator()(v2, a2);
  }

  return result;
}

void ___ZZ74__VKMuninCameraController_runBumpAnimation_targetPoint_completionHandler__ENK4__14clEb_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 48));
    }

    v4 = [v5 cameraDelegate];
    [v4 didEndAnimatingAccess];

    WeakRetained = v5;
  }
}

void ___ZZ74__VKMuninCameraController_runBumpAnimation_targetPoint_completionHandler__ENK4__13clEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained cameraDelegate];
    [v2 mapLayerWasUnableToAnimate];

    WeakRetained = v3;
  }
}

void std::__shared_ptr_emplace<anonymous namespace::PathAnimator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A18A28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F5C8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, id location, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p)
{
  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100](&a37);
  objc_destroyWeak((v53 + 24));
  objc_destroyWeak(&location);
  if (__p)
  {
    operator delete(__p);
  }

  objc_destroyWeak(&a25);

  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17741(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (v2)
  {
    if (v2 == a2 + 48)
    {
      *(result + 72) = result + 48;
      return (*(**(a2 + 72) + 24))(*(a2 + 72), result + 48);
    }

    else
    {
      *(result + 72) = v2;
      *(a2 + 72) = 0;
    }
  }

  else
  {
    *(result + 72) = 0;
  }

  return result;
}

uint64_t ___ZN12_GLOBAL__N_112PathAnimator21setCompletionCallbackENSt3__18functionIFvPS0_bONS_12PointSegmentEEEE_block_invoke(void *a1, char a2)
{
  v2 = *(a1[4] + 8);
  v3 = *(a1[5] + 8);
  v8 = a1[6];
  v7 = a2;
  v4 = *(v2 + 72);
  if (v4)
  {
    return (*(*v4 + 48))(v4, &v8, &v7, v3 + 48);
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
}

uint64_t std::function<void ()(anonymous namespace::PathAnimator *,BOOL,anonymous namespace::PointSegment &&)>::~function(uint64_t a1)
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

void sub_1B2F5CE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a29 == 1)
  {
    *(v44 - 56) = v43;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100]((v44 - 56));
  }

  _Unwind_Resume(a1);
}

md::mun::PointView *anonymous namespace::PointSegment::PointSegment(md::mun::PointView *a1, uint64_t a2)
{
  v4 = md::mun::PointView::PointView(a1, a2);
  md::mun::PointView::PointView((v4 + 1992), (a2 + 1992));
  return a1;
}

void sub_1B2F5D4E8(_Unwind_Exception *a1)
{
  v3 = v1[239];
  if (v3 != v1[241])
  {
    free(v3);
  }

  v4 = v1[236];
  if (v4)
  {
    v1[237] = v4;
    operator delete(v4);
  }

  v5 = v1[233];
  if (v5)
  {
    v1[234] = v5;
    operator delete(v5);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((v1 + 11));
  _Unwind_Resume(a1);
}

void sub_1B2F5D9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<md::mun::ViewId>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::ViewId>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::ViewId>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B2F5DEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1B2F5E48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a45 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  if (a32 == 1)
  {
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&a57);
    if (!v58)
    {
LABEL_6:
      if (!v57)
      {
LABEL_11:

        _Unwind_Resume(a1);
      }

LABEL_10:
      operator delete(v57);
      goto LABEL_11;
    }
  }

  else if (!v58)
  {
    goto LABEL_6;
  }

  operator delete(v58);
  if (!v57)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

void sub_1B2F5E9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a43 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a30 == 1)
  {
    *(v44 - 40) = v43;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100]((v44 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F5EB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a43 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a30 == 1)
  {
    *(v44 - 40) = v43;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100]((v44 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F5EE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 3984) == 1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::mun::PointView::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  for (i = 32; i != 44; i += 4)
  {
    *(a1 + i) = *(a2 + i);
  }

  *(a1 + 44) = *(a2 + 44);
  for (j = 8; j != 32; j += 8)
  {
    *(a1 + j) = *(a2 + j);
  }

  *(a1 + 48) = *(a2 + 48);
  for (k = 56; k != 80; k += 8)
  {
    *(a1 + k) = *(a2 + k);
  }

  *(a1 + 80) = *(a2 + 80);
  if (a1 == a2)
  {
    v10 = *(a2 + 1848);
    *(a1 + 1853) = *(a2 + 1853);
    *(a1 + 1848) = v10;
  }

  else
  {
    geo::small_vector_base<md::mun::PhotoInfo>::copy((a1 + 88), (a2 + 88), (a1 + 120));
    v7 = *(a2 + 1848);
    *(a1 + 1853) = *(a2 + 1853);
    *(a1 + 1848) = v7;
    std::vector<std::pair<md::mun::ViewId,unsigned int>>::__assign_with_size[abi:nn200100]<std::pair<md::mun::ViewId,unsigned int>*,std::pair<md::mun::ViewId,unsigned int>*>((a1 + 1864), *(a2 + 1864), *(a2 + 1872), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1872) - *(a2 + 1864)) >> 3));
    std::vector<std::pair<md::mun::ViewId,unsigned int>>::__assign_with_size[abi:nn200100]<std::pair<md::mun::ViewId,unsigned int>*,std::pair<md::mun::ViewId,unsigned int>*>((a1 + 1888), *(a2 + 1888), *(a2 + 1896), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1896) - *(a2 + 1888)) >> 3));
    v8 = a1 + 1944;
    v9 = *(a1 + 1912);
    if (v9 != *(a1 + 1928))
    {
      free(v9);
    }

    *(a1 + 1928) = v8;
    *(a1 + 1912) = v8;
    *(a1 + 1920) = v8;
    *(a1 + 1936) = 6;
    geo::small_vector_base<md::mun::PointView::CameraLod>::append<md::mun::PointView::CameraLod const*>((a1 + 1912), *(a2 + 1912), *(a2 + 1920));
  }

  return a1;
}

char *std::vector<std::pair<md::mun::ViewId,unsigned int>>::__assign_with_size[abi:nn200100]<std::pair<md::mun::ViewId,unsigned int>*,std::pair<md::mun::ViewId,unsigned int>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::pair<md::mun::ViewId,unsigned int>>::__vallocate[abi:nn200100](a1, v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      *(result + 7) = *(v5 + 7);
      *result = v17;
      *(result + 4) = *(v5 + 4);
      v5 += 3;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        v14 = *v5;
        *(result + 7) = *(v5 + 7);
        *result = v14;
        *(result + 4) = *(v5 + 4);
        v5 += 3;
        result += 24;
      }

      while (v5 != v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v13 != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        v15 += 24;
        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_1B2F5F844(_Unwind_Exception *a1)
{
  STACK[0x7D0] = &STACK[0x808];
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&STACK[0x7D0]);

  _Unwind_Resume(a1);
}

uint64_t std::vector<md::mun::CollectionPoint>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<md::mun::CollectionPoint>::__emplace_back_slow_path<md::mun::CollectionPoint const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<md::mun::CollectionPoint>>::construct[abi:nn200100]<md::mun::CollectionPoint,md::mun::CollectionPoint const&,void,0>(a1[1], a2);
    result = v3 + 1864;
    a1[1] = v3 + 1864;
  }

  a1[1] = result;
  return result;
}

void sub_1B2F5FD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v12 - 104);

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v11 + 96);
  objc_destroyWeak(&a9);
  MEMORY[0x1B8C62190](v10, 0x10A0C401B67C7C3);

  _Unwind_Resume(a1);
}

void sub_1B2F5FFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a29 == 1)
  {
    *(v44 - 56) = v43;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100]((v44 - 56));
  }

  _Unwind_Resume(a1);
}

void ___ZZZ88__VKMuninCameraController_moveToPoint_withHeading_withPitch_animated_completionHandler__EN3__6clEN3gdc23RequestCompletionStatusEONSt3__113unordered_mapINS0_19LayerDataRequestKeyENS2_10shared_ptrINS0_9LayerDataEEENS0_23LayerDataRequestKeyHashENS2_8equal_toIS4_EENS2_9allocatorINS2_4pairIKS4_S7_EEEEEEENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained cameraDelegate];
    [v4 didEndAnimatingAccess];

    WeakRetained = v5;
  }
}

void sub_1B2F602DC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 1);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1B2F60658(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 1);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1B2F61164(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_40c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE48c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE56c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE64c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

void geo::small_vector_base<md::mun::PointView::CameraLod>::emplace_back<unsigned char const&,unsigned char &>(void *a1, _BYTE *a2, unsigned __int8 *a3)
{
  v6 = a1[1];
  v7 = ((v6 - *a1) >> 3) + 1;
  if (a1[3] < v7)
  {
    geo::small_vector_base<md::mun::PointView::CameraLod>::grow(a1, v7);
    v6 = a1[1];
  }

  v8 = *a3;
  *v6 = *a2;
  if (v8 >= 7)
  {
    v9 = 7;
  }

  else
  {
    v9 = v8;
  }

  *(v6 + 1) = v9;
  *(v6 + 2) = 0;
  *(v6 + 4) = 0;
  a1[1] = v6 + 8;
}

void sub_1B2F623A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (LOBYTE(STACK[0x748]) == 1)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(va);
  }

  _Unwind_Resume(a1);
}

void sub_1B2F62AD0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void gm::quaternionFromAngleAxis<float>(uint64_t a1, uint64_t a2, float a3)
{
  v12[0] = gm::Matrix<float,3,1>::normalized<int,void>(a2);
  v12[1] = v5;
  v12[2] = v6;
  v7 = a3 * 0.5;
  v8 = sinf(v7);
  for (i = 0; i != 3; ++i)
  {
    *(&v13 + i * 4) = *&v12[i] * v8;
  }

  v10 = v14;
  v11 = cosf(v7);
  *a1 = v13;
  *(a1 + 8) = v10;
  *(a1 + 12) = v11;
}

uint64_t md::COverlayRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 360) + 72);
  *(v3 + 28) = 127;
  *(v3 + 32) = 0;
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(a1 + 49) - *(a1 + 48) + 1), v3);
  *(a1 + 396) = result;
  return result;
}

void md::COverlayRenderLayer::layout(md::COverlayRenderLayer *this, const md::LayoutContext *a2)
{
  v387 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  v333 = gdc::Context::context<md::OverlaysContext>(v3);
  if (*(v333 + 177) != 1)
  {
    return;
  }

  v310 = md::LayoutContext::get<md::ElevationContext>(v3);
  v4 = md::LayoutContext::get<md::CameraContext>(v3);
  v5 = gdc::ToCoordinateSystem(v4[3784]);
  v6 = *(gdc::Camera::cameraFrame(v4) + 32);
  v322 = v5;
  if (v5)
  {
    v7 = gdc::Context::get<md::GeometryContext>(v3);
    if (!v7)
    {
      return;
    }

    v8 = *(this + 45);
    if (!*(v8 + 80))
    {
      v9 = v7;
      v10 = gdc::ToCoordinateSystem(*(v7 + 320));
      v11 = 2;
      if (v10)
      {
        v11 = 6;
      }

      v12 = &v9[v11];
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(v8 + 88);
      *(v8 + 80) = v14;
      *(v8 + 88) = v13;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }
    }
  }

  v16 = 234;
  if (!*(this + 87))
  {
    v16 = 196;
  }

  v17 = *(*(this + 47) + 8);
  v18 = *(v17 + v16);
  v19 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(v17 + v16));
  if (v19)
  {
    v19 = *(*(v19 + 16) + 8 * (v18 >> 8));
  }

  v20 = v19;
  ggl::CommandBuffer::clearRenderItems(v19);
  v326 = v20;
  *(v20 + 32) = 0;
  v21 = *(this + 45);
  v22 = *(v21 + 344);
  v356[0] = &unk_1F2A19608;
  v357 = v356;
  v23 = *(v22 + 32);
  v24 = *(v22 + 40);
  while (v23 != v24)
  {
    std::function<void ()(ggl::RenderItem *)>::operator()(v357, *v23++);
  }

  v329 = v4;
  v321 = this;
  std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](v356);
  ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(v21 + 344));
  v25 = *(v21 + 304);
  v26 = *(v25 + 4);
  v27 = *(v25 + 5);
  if (v26 != v27)
  {
    do
    {
      v356[0] = *v26;
      std::vector<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v25, v356);
      ++v26;
    }

    while (v26 != v27);
    v26 = *(v25 + 4);
    v27 = *(v25 + 5);
  }

  if (v26 != v27)
  {
    *(v25 + 5) = v26;
  }

  v28 = *(v21 + 312);
  v29 = *(v28 + 4);
  v30 = *(v28 + 5);
  if (v29 != v30)
  {
    do
    {
      v356[0] = *v29;
      std::vector<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v28, v356);
      ++v29;
    }

    while (v29 != v30);
    v29 = *(v28 + 4);
    v30 = *(v28 + 5);
  }

  if (v29 != v30)
  {
    *(v28 + 5) = v29;
  }

  ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(v21 + 136));
  ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>::pushAll(*(v21 + 128));
  v31 = *(v21 + 296);
  v32 = *(v31 + 4);
  v33 = *(v31 + 5);
  if (v32 != v33)
  {
    do
    {
      v356[0] = *v32;
      std::vector<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v31, v356);
      ++v32;
    }

    while (v32 != v33);
    v32 = *(v31 + 4);
    v33 = *(v31 + 5);
  }

  if (v32 != v33)
  {
    *(v31 + 5) = v32;
  }

  ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>::pushAll(*(v21 + 160));
  v34 = *(v21 + 440);
  v35 = *(v34 + 4);
  v36 = *(v34 + 5);
  if (v35 != v36)
  {
    do
    {
      v356[0] = *v35;
      std::vector<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v34, v356);
      ++v35;
    }

    while (v35 != v36);
    v35 = *(v34 + 4);
    v36 = *(v34 + 5);
  }

  if (v35 != v36)
  {
    *(v34 + 5) = v35;
  }

  v37 = *(v21 + 448);
  v38 = *(v37 + 4);
  v39 = *(v37 + 5);
  if (v38 != v39)
  {
    do
    {
      v356[0] = *v38;
      std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::push_back[abi:nn200100](v37, v356);
      ++v38;
    }

    while (v38 != v39);
    v38 = *(v37 + 4);
    v39 = *(v37 + 5);
  }

  if (v38 != v39)
  {
    *(v37 + 5) = v38;
  }

  v40 = *(v21 + 328);
  v41 = *v40;
  ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>::pushAll(*(*v40 + 48));
  v42 = ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>::pushAll(*(v41 + 56));
  v43 = *(v41 + 64);
  v44 = *(v43 + 32);
  v45 = *(v43 + 40);
  if (v44 != v45)
  {
    v46 = *(v43 + 8);
    do
    {
      v47 = *v44;
      v48 = *(v43 + 16);
      if (v46 >= v48)
      {
        v49 = (v46 - *v43) >> 3;
        if ((v49 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v50 = v48 - *v43;
        v51 = v50 >> 2;
        if (v50 >> 2 <= (v49 + 1))
        {
          v51 = v49 + 1;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF8)
        {
          v52 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v51;
        }

        v358 = v43 + 24;
        if (v52)
        {
          v53 = ggl::zone_mallocator::instance(v42);
          v54 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(v53, v52);
        }

        else
        {
          v54 = 0;
        }

        v56 = &v54[8 * v52];
        v55 = &v54[8 * v49];
        *v55 = v47;
        v46 = v55 + 8;
        v57 = *(v43 + 8) - *v43;
        v58 = &v55[-v57];
        memcpy(&v55[-v57], *v43, v57);
        v59 = *v43;
        *v43 = v58;
        v356[1] = v59;
        *(v43 + 8) = v46;
        v356[2] = v59;
        v60 = *(v43 + 16);
        *(v43 + 16) = v56;
        v357 = v60;
        v356[0] = v59;
        v42 = std::__split_buffer<ggl::PolygonOverlay::AntialiasPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::AntialiasPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v356);
      }

      else
      {
        *v46++ = v47;
      }

      *(v43 + 8) = v46;
      ++v44;
    }

    while (v44 != v45);
    v44 = *(v43 + 32);
    v45 = *(v43 + 40);
  }

  if (v44 != v45)
  {
    *(v43 + 40) = v44;
  }

  md::PolylineOverlaySharedResources::resetPools(*(*(v21 + 328) + 16));
  v61 = *(v21 + 336);
  v62 = *(v61 + 48);
  v63 = *(v62 + 4);
  v64 = *(v62 + 5);
  if (v63 != v64)
  {
    do
    {
      v356[0] = *v63;
      std::vector<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v62, v356);
      ++v63;
    }

    while (v63 != v64);
    v63 = *(v62 + 4);
    v64 = *(v62 + 5);
  }

  v65 = v321;
  if (v63 != v64)
  {
    *(v62 + 5) = v63;
  }

  v66 = *(v61 + 80);
  v67 = *(v66 + 4);
  v68 = *(v66 + 5);
  if (v67 != v68)
  {
    do
    {
      v356[0] = *v67;
      std::vector<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v66, v356);
      ++v67;
    }

    while (v67 != v68);
    v67 = *(v66 + 4);
    v68 = *(v66 + 5);
    v65 = v321;
  }

  if (v67 != v68)
  {
    *(v66 + 5) = v67;
  }

  md::PolylineOverlaySharedResources::resetPools(*(v65 + 46));
  v69 = md::LayoutContext::get<md::SceneContext>(*(a2 + 1));
  isFinishedLoadingRequiredLayers = md::SceneStateManager::isFinishedLoadingRequiredLayers(*v69);
  v305 = *(v321 + 48);
  if (isFinishedLoadingRequiredLayers)
  {
    v71 = *(v321 + 48) != *(v321 + 49);
  }

  else
  {
    v71 = 1;
  }

  *(v321 + 393) = v71;
  v306 = *(v321 + 99);
  *(v326 + 32) = *(*(v321 + 45) + 72);
  md::RibbonLayoutContext::RibbonLayoutContext(v356, a2);
  v364 = 0;
  v365 = 1065353216;
  v366 = 0;
  v370 = 0;
  v369 = 0;
  v367 = 0;
  v368 = 0;
  v371 = 255;
  v373 = 0;
  v372 = 0;
  v374 = 0;
  v375 = 1;
  v359 = *(v321 + 393);
  v72 = +[VKDebugSettings sharedSettings];
  [v72 ribbonCrispness];
  v73 = fabs(v6);
  v361 = v74;

  v75 = 0;
  v76 = *(v321 + 46);
  v77 = *(*(v76 + 256) + 8);
  v362 = v77;
  v364 = v76;
  v360 = 0;
  if (v73 > 0.0001)
  {
    md::LayoutContext::zoomAtCentrePoint(*(a2 + 1));
    v75 = v77 > 13.5;
  }

  BYTE4(v367) = v75;
  isSplinedEnabled = md::CameraContext::isSplinedEnabled(v329, v77);
  v79 = *(v321 + 34);
  v78 = *(v321 + 35);
  if (v79 == v78)
  {
    v330 = 0;
    v328 = 0;
  }

  else
  {
    v80 = 0;
    v330 = 0;
    v81 = 0;
    v328 = 0;
    v315 = *(v321 + 35);
    do
    {
      v82 = *(*v79 + 392);
      v83 = (v82 + 760);
      for (i = *(v82 + 768); i != v83; i = i[1])
      {
        if (i[13])
        {
          v85 = i[16];
          if (i[17] - v85 == 4)
          {
            v86 = *v85;
            LODWORD(v337[0]) = v86;
            v87 = v333[15];
            if (v87)
            {
              v88 = vcnt_s8(v87);
              v88.i16[0] = vaddlv_u8(v88);
              if (v88.u32[0] > 1uLL)
              {
                v89 = v86;
                if (*&v87 <= v86)
                {
                  v89 = v86 % v87.i32[0];
                }
              }

              else
              {
                v89 = (v87.i32[0] - 1) & v86;
              }

              v90 = *(v333[14] + 8 * v89);
              if (v90)
              {
                for (j = *v90; j; j = *j)
                {
                  v92 = j[1];
                  if (v92 == v86)
                  {
                    if (*(j + 4) == v86)
                    {
                      v93 = *(j + 12);
                      LODWORD(v354[0]) = *(j + 26);
                      WORD2(v354[0]) = *(j + 15);
                      v94 = *(j + 4);
                      v95 = *(j + 40);
                      v318 = *(j + 41);
                      LODWORD(v96) = *(j + 21);
                      v97 = *(j + 44);
                      LOBYTE(v334[0]) = *(j + 45);
                      v323 = v97;
                      if (v330 < v80)
                      {
                        *v330 = v86;
                        v330 += 4;
                        goto LABEL_107;
                      }

                      v311 = v81;
                      v98 = v79;
                      v99 = v93;
                      v100 = v95;
                      v101 = v96;
                      v96 = v330;
                      v102 = (v330 >> 2) + 1;
                      if (!(v102 >> 62))
                      {
                        if (v80 >> 1 > v102)
                        {
                          v102 = v80 >> 1;
                        }

                        if (v102)
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v102);
                        }

                        v103 = (4 * (v330 >> 2));
                        v80 = 0;
                        *v103 = v86;
                        v330 = (v103 + 1);
                        memcpy(0, 0, v96);
                        LODWORD(v96) = v101;
                        v95 = v100;
                        v93 = v99;
                        v79 = v98;
                        v81 = v311;
                        v78 = v315;
                        v97 = v323;
LABEL_107:
                        if (v97)
                        {
                          if (v96 == 0xFFFF)
                          {
                            LOWORD(v104) = 0;
                          }

                          else
                          {
                            v104 = (v96 + 1) % v93;
                          }

                          v376 = COERCE_DOUBLE(v337);
                          v110 = std::__hash_table<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v321 + 50, v337[0]);
                          *(v110 + 10) = v96;
                          *(v110 + 11) = v104;
                          *(v110 + 6) = 0;
                          break;
                        }

                        if (v328 < v81)
                        {
                          *v328 = v337[0];
                          v328 += 4;
                          goto LABEL_120;
                        }

                        v312 = v80;
                        v105 = v79;
                        v106 = v93;
                        v107 = v95;
                        v108 = v96;
                        v96 = v328;
                        v109 = (v328 >> 2) + 1;
                        if (!(v109 >> 62))
                        {
                          if (v81 >> 1 > v109)
                          {
                            v109 = v81 >> 1;
                          }

                          if (v109)
                          {
                            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v109);
                          }

                          v111 = (4 * (v328 >> 2));
                          v81 = 0;
                          *v111 = v337[0];
                          v328 = (v111 + 1);
                          memcpy(0, 0, v96);
                          LOWORD(v96) = v108;
                          v95 = v107;
                          v93 = v106;
                          v79 = v105;
                          v80 = v312;
                          v78 = v315;
LABEL_120:
                          v112 = *(v321 + 56);
                          if (v112)
                          {
                            v113 = vcnt_s8(v112);
                            v113.i16[0] = vaddlv_u8(v113);
                            if (v113.u32[0] > 1uLL)
                            {
                              v114 = LODWORD(v337[0]);
                              if (v112 <= LODWORD(v337[0]))
                              {
                                v114 = LODWORD(v337[0]) % v112;
                              }
                            }

                            else
                            {
                              v114 = (v112 - 1) & v337[0];
                            }

                            v115 = *(*(v321 + 55) + 8 * v114);
                            if (v115)
                            {
                              for (k = *v115; k; k = *k)
                              {
                                v117 = k[1];
                                if (v117 == LODWORD(v337[0]))
                                {
                                  if (*(k + 4) == LODWORD(v337[0]))
                                  {
                                    goto LABEL_155;
                                  }
                                }

                                else
                                {
                                  if (v113.u32[0] > 1uLL)
                                  {
                                    if (v117 >= v112)
                                    {
                                      v117 %= v112;
                                    }
                                  }

                                  else
                                  {
                                    v117 &= v112 - 1;
                                  }

                                  if (v117 != v114)
                                  {
                                    break;
                                  }
                                }
                              }
                            }
                          }

                          v118 = objc_alloc_init(VKTimedAnimation);
                          [(VKTimedAnimation *)v118 setDuration:v94];
                          [(VKTimedAnimation *)v118 setTimingFunction:VKAnimationCurveLinear];
                          if ((v95 & 1) == 0)
                          {
                            v119 = v93 / v94;
                            *&v119 = v119;
                            [(VKAnimation *)v118 setFrequency:v119];
                          }

                          [(VKAnimation *)v118 setRunsForever:1];
                          v338 = MEMORY[0x1E69E9820];
                          v339 = 3221225472;
                          v340 = ___ZN2md19COverlayRenderLayer24updateKeyframeAnimationsERKNSt3__16vectorIPNS_21MapTileDataRenderableINS_15OverlayTileDataEEENS1_9allocatorIS6_EEEEPKNS_15OverlaysContextE_block_invoke;
                          v341 = &__block_descriptor_71_e8_v12__0f8l;
                          v342 = v321;
                          v352 = v93;
                          LOWORD(v343) = v93;
                          *(&v343 + 2) = v354[0];
                          HIWORD(v343) = WORD2(v354[0]);
                          v344 = v94;
                          v345 = v95;
                          v346 = v318;
                          v347 = v96;
                          v348 = v323;
                          v350 = BYTE2(v334[0]);
                          v349 = v334[0];
                          v353 = v95;
                          v351 = v337[0];
                          [(VKTimedAnimation *)v118 setStepHandler:&v338];
                          v120 = v118;
                          v376 = COERCE_DOUBLE(&unk_1F2A4BA00);
                          p_super = &v120->super;
                          *&v377 = v120;
                          v121 = *(v321 + 56);
                          if (!v121)
                          {
                            goto LABEL_154;
                          }

                          v122 = vcnt_s8(v121);
                          v122.i16[0] = vaddlv_u8(v122);
                          if (v122.u32[0] > 1uLL)
                          {
                            v123 = LODWORD(v337[0]);
                            if (v121 <= LODWORD(v337[0]))
                            {
                              v123 = LODWORD(v337[0]) % v121;
                            }
                          }

                          else
                          {
                            v123 = (v121 - 1) & v337[0];
                          }

                          v124 = *(*(v321 + 55) + 8 * v123);
                          if (!v124 || (v125 = *v124) == 0)
                          {
LABEL_154:
                            operator new();
                          }

                          while (1)
                          {
                            v126 = v125[1];
                            if (v126 == LODWORD(v337[0]))
                            {
                              if (*(v125 + 4) == LODWORD(v337[0]))
                              {
                                v376 = COERCE_DOUBLE(&unk_1F2A4BA00);

                                v78 = v315;
                                md::AnimationRunner::runAnimation(*(v321 + 44), p_super);

                                goto LABEL_155;
                              }
                            }

                            else
                            {
                              if (v122.u32[0] > 1uLL)
                              {
                                if (v126 >= v121)
                                {
                                  v126 %= v121;
                                }
                              }

                              else
                              {
                                v126 &= v121 - 1;
                              }

                              if (v126 != v123)
                              {
                                goto LABEL_154;
                              }
                            }

                            v125 = *v125;
                            if (!v125)
                            {
                              goto LABEL_154;
                            }
                          }
                        }
                      }

                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }
                  }

                  else
                  {
                    if (v88.u32[0] > 1uLL)
                    {
                      if (v92 >= *&v87)
                      {
                        v92 %= *&v87;
                      }
                    }

                    else
                    {
                      v92 &= *&v87 - 1;
                    }

                    if (v92 != v89)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_155:
        ;
      }

      v79 += 8;
    }

    while (v79 != v78);
  }

  v325 = v306 - v305;
  v127 = v6;
  v128 = v321;
  v129 = *(v321 + 87) != 0;
  v130 = v321 + 416;
  v319 = (v321 + 416);
  while (1)
  {
    v130 = *v130;
    if (!v130)
    {
      break;
    }

    v131 = *(v130 + 4);
    v132 = *(v130 + 10);
    v133 = v333[20];
    std::mutex::lock((v133 + 232));
    v377 = 0uLL;
    v376 = 0.0;
    std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(&v376, *(v133 + 24 * v129 + 160), *(v133 + 24 * v129 + 168), 0xAAAAAAAAAAAAAAABLL * ((*(v133 + 24 * v129 + 168) - *(v133 + 24 * v129 + 160)) >> 3));
    v134 = v376;
    v135 = v377;
    while (*&v134 != v135)
    {
      v136 = *(*&v134 + 8);
      if ([v136 identifier] == v131)
      {
        goto LABEL_166;
      }

      *&v134 += 24;
    }

    v136 = 0;
LABEL_166:
    *&v354[0] = &v376;
    std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](v354);
    std::mutex::unlock((v133 + 232));
    if (v136)
    {
      v137 = [v136 rasterTileProvider];
      v138 = [v137 visibleKeyframeIndex] == v132;

      if (!v138)
      {
        v139 = [v136 rasterTileProvider];
        [v139 setVisibleKeyframeIndex:v132];
      }
    }

    v128 = v321;
  }

  v140 = *(v128 + 57);
  if (v140)
  {
    v141 = (v128 + 456);
    while (v328)
    {
      v142 = 0;
      while (*v142 != *(v140 + 16))
      {
        if (++v142 == v328)
        {
          goto LABEL_179;
        }
      }

      if (v142 == v328)
      {
        break;
      }

      v143 = *v140;
LABEL_206:
      v140 = v143;
      if (!v143)
      {
        goto LABEL_207;
      }
    }

LABEL_179:
    v144 = *(v140 + 32);
    [v144 stop];

    v128 = v321;
    v145 = *(v321 + 448);
    v146 = *(v140 + 8);
    v147 = vcnt_s8(v145);
    v147.i16[0] = vaddlv_u8(v147);
    if (v147.u32[0] > 1uLL)
    {
      if (v146 >= *&v145)
      {
        v146 %= *&v145;
      }
    }

    else
    {
      v146 &= *&v145 - 1;
    }

    v143 = *v140;
    v148 = *(v321 + 55);
    v149 = *(v148 + 8 * v146);
    do
    {
      v150 = v149;
      v149 = *v149;
    }

    while (v149 != v140);
    if (v150 == v141)
    {
      goto LABEL_389;
    }

    v151 = v150[1];
    if (v147.u32[0] > 1uLL)
    {
      if (v151 >= *&v145)
      {
        v151 %= *&v145;
      }
    }

    else
    {
      v151 &= *&v145 - 1;
    }

    v152 = *v140;
    if (v151 != v146)
    {
LABEL_389:
      if (v143)
      {
        v153 = *(v143 + 8);
        if (v147.u32[0] > 1uLL)
        {
          if (v153 >= *&v145)
          {
            v153 %= *&v145;
          }
        }

        else
        {
          v153 &= *&v145 - 1;
        }

        v152 = *v140;
        if (v153 == v146)
        {
          goto LABEL_199;
        }
      }

      *(v148 + 8 * v146) = 0;
      v152 = *v140;
    }

    if (!v152)
    {
LABEL_205:
      *v150 = v152;
      *v140 = 0;
      --*(v321 + 58);
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>>::operator()[abi:nn200100](1, v140);
      goto LABEL_206;
    }

LABEL_199:
    v154 = *(v152 + 8);
    if (v147.u32[0] > 1uLL)
    {
      if (v154 >= *&v145)
      {
        v154 %= *&v145;
      }
    }

    else
    {
      v154 &= *&v145 - 1;
    }

    if (v154 != v146)
    {
      *(*(v321 + 55) + 8 * v154) = v150;
      v152 = *v140;
    }

    goto LABEL_205;
  }

LABEL_207:
  v155 = *v319;
  v156 = v330;
  if (*v319)
  {
    while (v156)
    {
      v157 = 0;
      while (*v157 != *(v155 + 4))
      {
        if (++v157 == v330)
        {
          goto LABEL_215;
        }
      }

      if (v157 == v330)
      {
        break;
      }

      v158 = *v155;
LABEL_242:
      v155 = v158;
      v156 = v330;
      if (!v158)
      {
        goto LABEL_243;
      }
    }

LABEL_215:
    v159 = *(v128 + 408);
    v160 = *(v155 + 1);
    v161 = vcnt_s8(v159);
    v161.i16[0] = vaddlv_u8(v161);
    if (v161.u32[0] > 1uLL)
    {
      if (v160 >= *&v159)
      {
        v160 %= *&v159;
      }
    }

    else
    {
      v160 &= *&v159 - 1;
    }

    v158 = *v155;
    v162 = *(v128 + 50);
    v163 = *(v162 + 8 * v160);
    do
    {
      v164 = v163;
      v163 = *v163;
    }

    while (v163 != v155);
    if (v164 == v319)
    {
      goto LABEL_390;
    }

    v165 = *(v164 + 1);
    if (v161.u32[0] > 1uLL)
    {
      if (v165 >= *&v159)
      {
        v165 %= *&v159;
      }
    }

    else
    {
      v165 &= *&v159 - 1;
    }

    v166 = *v155;
    if (v165 != v160)
    {
LABEL_390:
      if (v158)
      {
        v167 = *(v158 + 1);
        if (v161.u32[0] > 1uLL)
        {
          if (v167 >= *&v159)
          {
            v167 %= *&v159;
          }
        }

        else
        {
          v167 &= *&v159 - 1;
        }

        v166 = *v155;
        if (v167 == v160)
        {
          goto LABEL_235;
        }
      }

      *(v162 + 8 * v160) = 0;
      v166 = *v155;
    }

    if (!v166)
    {
LABEL_241:
      *v164 = v166;
      *v155 = 0;
      --*(v128 + 53);
      operator delete(v155);
      goto LABEL_242;
    }

LABEL_235:
    v168 = *(v166 + 1);
    if (v161.u32[0] > 1uLL)
    {
      if (v168 >= *&v159)
      {
        v168 %= *&v159;
      }
    }

    else
    {
      v168 &= *&v159 - 1;
    }

    if (v168 != v160)
    {
      *(*(v128 + 50) + 8 * v168) = v164;
      v166 = *v155;
    }

    goto LABEL_241;
  }

LABEL_243:
  memset(v334, 0, sizeof(v334));
  v335 = 1065353216;
  v169 = v333[19];
  v355[0] = &unk_1F2A19698;
  v355[3] = v355;
  geo::TaskQueue::barrierSync(v169, v355);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v355);
  v170 = *(v128 + 34);
  v316 = *(v128 + 35);
  if (v170 == v316)
  {
    goto LABEL_381;
  }

  v171 = *(v128 + 87);
  if (v322)
  {
    v172 = 160;
  }

  else
  {
    v172 = 128;
  }

  v173 = 112;
  if (v322)
  {
    v173 = 144;
  }

  v308 = v173;
  v309 = v172;
  __asm { FMOV            V0.4S, #1.0 }

  v307 = _Q0;
  do
  {
    __p = *v170;
    v179 = (*v170)[49];
    if (!*(v179 + 776))
    {
      goto LABEL_380;
    }

    v180 = gdc::Context::context<md::TerrainMeshProviderContext>(*(a2 + 1));
    __src = v170;
    if (v180)
    {
      v181 = v180;
      v182 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(v180 + 1, (v179 + 168));
      if (v182)
      {
        v183 = *(v182 + 6);
      }

      else
      {
        v183 = v181 + 6;
      }

      v313 = v183 != v181 + 6 && v73 > 0.0001;
    }

    else
    {
      v313 = 0;
    }

    md::BaseMapTileDataRenderable::adjustZScale(__p, v310[4], v310[5]);
    v184 = *(__p + 56);
    v185 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v186 = 0;
    v187 = 1 << *(v179 + 169);
    v188 = (v187 + ~*(v179 + 172));
    v189 = 1.0 / v187;
    v190 = v184 + v189 * *(v179 + 176);
    v383 = 0;
    v381 = 0;
    v380 = 0u;
    v379 = 0u;
    v378 = 0u;
    v377 = 0u;
    v376 = v189;
    *&v379 = v189;
    v382 = v189;
    v384 = v190;
    v191 = v185 + 101;
    v385 = v189 * v188;
    v386 = xmmword_1B33B0740;
    do
    {
      v192 = 0;
      v193 = &v376;
      do
      {
        v194 = 0;
        v195 = 0.0;
        v196 = v191;
        do
        {
          v197 = *v196;
          v196 += 4;
          v195 = v195 + v193[v194++] * v197;
        }

        while (v194 != 4);
        *(&v338 + 4 * v192++ + v186) = v195;
        v193 += 4;
      }

      while (v192 != 4);
      ++v186;
      ++v191;
    }

    while (v186 != 4);
    v198 = 0;
    v199 = &v338;
    do
    {
      v201 = *v199;
      v200 = *(v199 + 1);
      v199 += 4;
      v337[v198++] = vcvt_hight_f32_f64(vcvt_f32_f64(v201), v200);
    }

    while (v198 != 4);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(&v338, *(v179 + 728), 1);
    v202 = v343;
    *v343 = v337[0];
    *(v202 + 1) = v337[1];
    *(v202 + 2) = v337[2];
    *(v202 + 3) = v337[3];
    v203 = v185[471] * v185[173] / (v185[171] * v189);
    v202[16] = v203;
    ggl::BufferMemory::~BufferMemory(&v338);
    v336 = (v179 + 880);
    v204 = pthread_rwlock_wrlock((v179 + 880));
    if (v204)
    {
      geo::read_write_lock::logFailure(v204, "write lock", v205);
    }

    v206 = (v179 + 760);
    v320 = v179;
    v207 = *(v179 + 768);
    v331 = (v179 + 760);
    while (v207 != v206)
    {
      v208 = v207[2];
      if (v208)
      {
        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v338, *(v208 + 64), 1);
        v209 = *(v208 + 48);
        v210 = v343;
        *v343 = *v209;
        v210[1] = v209[1];
        goto LABEL_271;
      }

      v211 = v207[13];
      if (v211)
      {
        v213 = *v211;
        v212 = v211[1];
        if (*v211 != v212)
        {
          do
          {
            md::OverlayTileData::OverlayTileResource::RasterTile::updateWithContext(v213, *(a2 + 1), v184);
            v213 = (v213 + 144);
          }

          while (v213 != v212);
        }
      }

      else
      {
        v214 = v207[14];
        if (v214)
        {
          v216 = *v214;
          v215 = v214[1];
          while (v216 != v215)
          {
            v217 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
            v218 = 0;
            v219 = 1 << *(v216 + 1);
            v220 = 1.0 / v219;
            v221 = (v219 + ~*(v216 + 4));
            v222 = v184 + v220 * *(v216 + 8);
            v383 = 0;
            v381 = 0;
            v380 = 0u;
            v379 = 0u;
            v378 = 0u;
            v377 = 0u;
            v376 = v220;
            *&v379 = v220;
            v382 = v220;
            v384 = v222;
            v223 = (v217 + 808);
            v385 = v220 * v221;
            v386 = xmmword_1B33B0740;
            do
            {
              v224 = 0;
              v225 = &v376;
              do
              {
                v226 = 0;
                v227 = 0.0;
                v228 = v223;
                do
                {
                  v229 = *v228;
                  v228 += 4;
                  v227 = v227 + v225[v226++] * v229;
                }

                while (v226 != 4);
                *(&v338 + 4 * v224++ + v218) = v227;
                v225 += 4;
              }

              while (v224 != 4);
              ++v218;
              ++v223;
            }

            while (v218 != 4);
            v230 = 0;
            v231 = &v338;
            do
            {
              v233 = *v231;
              v232 = *(v231 + 1);
              v231 += 4;
              v354[v230++] = vcvt_hight_f32_f64(vcvt_f32_f64(v233), v232);
            }

            while (v230 != 4);
            ggl::DataAccess<ggl::Tile::View>::DataAccess(&v338, *(v216 + 64), 1);
            v234 = v343;
            v235 = v354[1];
            *v343 = v354[0];
            *(v234 + 1) = v235;
            v236 = v354[3];
            *(v234 + 2) = v354[2];
            *(v234 + 3) = v236;
            ggl::BufferMemory::~BufferMemory(&v338);
            ggl::DataAccess<ggl::Tile::View>::DataAccess(&v338, *(v216 + 112), 1);
            v237 = *(v216 + 96);
            v238 = v343;
            *v343 = *(v216 + 128) * *v237;
            v238[1] = v237[1];
            ggl::BufferMemory::~BufferMemory(&v338);
            v216 += 144;
          }
        }

        else
        {
          v239 = v207[11];
          if (v239)
          {
            gdc::Tiled::unitsPerMeter((v179 + 168));
            v241 = v240;
            ggl::ConstantDataTyped<ggl::Grid::Style>::write(&v338, *(v239 + 8));
            ggl::ConstantDataTyped<ggl::Tile::Transform>::read(&v376, __p[30]);
            v242 = 0;
            v243 = v379;
            v244 = v343;
            do
            {
              v244[v242] = *(v243 + v242 * 4);
              ++v242;
            }

            while (v242 != 4);
            for (m = 0; m != 3; ++m)
            {
              v244[m + 4] = *(v243 + 16 + m * 4);
            }

            v246 = 0;
            v247 = v244 + 8;
            v248 = v243 + 32;
            do
            {
              for (n = 0; n != 16; n += 4)
              {
                *(v247 + n) = *(v248 + n);
              }

              ++v246;
              ++v247;
              v248 += 16;
            }

            while (v246 != 16);
            for (ii = 0; ii != 4; ++ii)
            {
              v244[ii + 72] = *(v243 + 288 + ii * 4);
            }

            for (jj = 0; jj != 3; ++jj)
            {
              v244[jj + 76] = *(v243 + 304 + jj * 4);
            }

            for (kk = 0; kk != 3; ++kk)
            {
              v244[kk + 80] = *(v243 + 320 + kk * 4);
            }

            goto LABEL_320;
          }

          v253 = v207[12];
          if (v253)
          {
            gdc::Tiled::unitsPerMeter((v179 + 168));
            v241 = v254;
            ggl::ConstantDataTyped<ggl::Grid::Style>::write(&v338, *(v253 + 8));
            ggl::ConstantDataTyped<ggl::Tile::Transform>::read(&v376, __p[30]);
            v255 = 0;
            v243 = v379;
            v244 = v343;
            do
            {
              v244[v255] = *(v243 + v255 * 4);
              ++v255;
            }

            while (v255 != 4);
            for (mm = 0; mm != 3; ++mm)
            {
              v244[mm + 4] = *(v243 + 16 + mm * 4);
            }

            v257 = 0;
            v258 = v244 + 8;
            v259 = v243 + 32;
            do
            {
              for (nn = 0; nn != 16; nn += 4)
              {
                *(v258 + nn) = *(v259 + nn);
              }

              ++v257;
              ++v258;
              v259 += 16;
            }

            while (v257 != 16);
            for (i1 = 0; i1 != 4; ++i1)
            {
              v244[i1 + 72] = *(v243 + 288 + i1 * 4);
            }

            for (i2 = 0; i2 != 3; ++i2)
            {
              v244[i2 + 76] = *(v243 + 304 + i2 * 4);
            }

            for (i3 = 0; i3 != 3; ++i3)
            {
              v244[i3 + 80] = *(v243 + 320 + i3 * 4);
            }

LABEL_320:
            v264 = *(v243 + 336);
            v244[88] = *(v243 + 352);
            *(v244 + 21) = v264;
            v244[84] = computeRouteZOffset(*(a2 + 1)) * v241;
            ggl::BufferMemory::~BufferMemory(&v376);
LABEL_271:
            ggl::BufferMemory::~BufferMemory(&v338);
          }
        }
      }

      v207 = v207[1];
      v206 = (v179 + 760);
    }

    geo::write_lock_guard::~write_lock_guard(&v336);
    v265 = v321;
    v170 = __src;
    if ((*(v333 + 209) & 1) == 0)
    {
      if (v320)
      {
        v265 = v321;
        v170 = __src;
        if (md::OverlayTileData::hasTileData(v320))
        {
          if (!_tileIsFallbackable(v320))
          {
            v273 = *(v321 + 34);
            v274 = *(v321 + 35);
            while (v273 != v274)
            {
              v275 = *(*v273 + 392);
              if (_tileIsFallbackable(v275))
              {
                v276 = (*(*v275 + 32))(v275);
                v277 = (*(*v320 + 32))(v320);
                if (*v277 >= *v276 && v277[3] <= v276[3])
                {
                  v278 = 0;
                  v279 = v276 + 4;
                  v280 = v277 + 4;
                  do
                  {
                    if (v278 == 2)
                    {
                      goto LABEL_354;
                    }

                    v281 = v278;
                    if (*(v280 - 3) < *(v279 - 3))
                    {
                      break;
                    }

                    v282 = *v280++;
                    v283 = v282;
                    v284 = *v279++;
                    ++v278;
                  }

                  while (v283 <= v284);
                  if (v281 > 1)
                  {
                    goto LABEL_354;
                  }
                }
              }

              v273 += 8;
            }
          }
        }
      }

      if (!v313 && *(v265 + 393) == 1)
      {
        v266 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
        if (v266)
        {
          v267 = v266;
          v268 = *(__p[49] + 169);
          *&v269 = COERCE_DOUBLE(ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v265 + 360) + 136)));
          v270 = *(*(v321 + 45) + v309);
          v271 = v270[1];
          if (v271 != *v270)
          {
            v272 = *(v271 - 8);
            v376 = v272;
            v270[1] = v271 - 8;
            goto LABEL_343;
          }

          v285 = v270[11];
          if (!v285)
          {
            goto LABEL_386;
          }

          v272 = COERCE_DOUBLE((*(*v285 + 48))(v285));
          v376 = v272;
LABEL_343:
          std::vector<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v270 + 4), &v376);
          v338 = v272;
          v286 = v270[15];
          if (!v286)
          {
LABEL_386:
            std::__throw_bad_function_call[abi:nn200100]();
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          (*(*v286 + 48))(v286, &v338);
          v287 = *(*&v272 + 136);
          v287[1] = 0;
          v288 = __p[28];
          *v287 = v288;
          v289 = *(*&v272 + 232);
          v290 = __p[29];
          if (v290)
          {
            atomic_fetch_add_explicit((v290 + 8), 1uLL, memory_order_relaxed);
          }

          v314 = v268;
          v291 = v289[1];
          *v289 = v288;
          v289[1] = v290;
          if (v291)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v291);
          }

          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*&v272 + 136), *(*&v272 + 232), __p[30], __p[31]);
          v292 = (*(v321 + 45) + v308);
          v338 = *v292;
          v293 = v292[1];
          v339 = v293;
          v294 = *&v269;
          if (v293)
          {
            atomic_fetch_add_explicit(&v293->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(*&v272, &v338);
            std::__shared_weak_count::__release_shared[abi:nn200100](v293);
          }

          else
          {
            ggl::PipelineSetup::setState(*&v272, &v338);
          }

          v170 = __src;
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v338, *(*(*&v272 + 136) + 32));
          v295 = v343;
          *v343 = v307;
          *(v295 + 1) = xmmword_1B33B0720;
          v265 = v321;
          *(*&v294 + 24) = *(*(v321 + 45) + 104);
          v296 = gdc::ToCoordinateSystem(*(v267 + 320));
          v297 = 16;
          if (v296)
          {
            v297 = 18;
          }

          *(*&v294 + 64) = v267[v297];
          *(*&v294 + 32) = v272;
          *(*&v294 + 48) = 0;
          *(*&v294 + 40) = v325 + v314;
          v376 = v294;
          std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v326 + 72), &v376);
          ggl::BufferMemory::~BufferMemory(&v338);
        }
      }
    }

LABEL_354:
    for (i4 = *(v320 + 96); i4 != v331; i4 = *(i4 + 1))
    {
      v299 = *(i4 + 17);
      v300 = *(i4 + 16);
      if (v299 != v300)
      {
        while (1)
        {
          v301 = v171 == 1 ? v333 + 5 : v333;
          v302 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(v301, *v300);
          if (v302)
          {
            break;
          }

          if (++v300 == v299)
          {
            v303 = 1;
            goto LABEL_364;
          }
        }

        v303 = (4 * *(v302 + 5)) | 1;
LABEL_364:
        if (v322)
        {
          md::COverlayRenderLayer::layoutResourceForGlobe(v265, i4 + 2, __p, v326, a2, v333, v356, v325, v303, 0);
        }

        else
        {
          md::COverlayRenderLayer::layoutResource(v265, i4 + 2, __p, v326, a2, v333, v356, v325, v127, v303, v334, 0);
        }

        v304 = *(i4 + 3) || *(i4 + 4) || *(i4 + 11) || *(i4 + 12) != 0;
        if (v73 > 0.0001 && *(v265 + 394) == 1 && (v171 != 1 || v304) && *(v333 + 176) == 1)
        {
          if (v322)
          {
            md::COverlayRenderLayer::layoutResourceForGlobe(v265, i4 + 2, __p, v326, a2, v333, v356, v325, v303, 1u);
          }

          else
          {
            md::COverlayRenderLayer::layoutResource(v265, i4 + 2, __p, v326, a2, v333, v356, v325, v127, v303, v334, 1u);
          }
        }
      }
    }

LABEL_380:
    ++v170;
  }

  while (v170 != v316);
LABEL_381:
  ggl::CommandBuffer::stableSortRenderItems(*(v326 + 72), *(v326 + 80));
  std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::~__hash_table(v334);
  if (v370)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v370);
  }
}

void sub_1B2F664B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  ggl::BufferMemory::~BufferMemory(&a50);
  std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::~__hash_table(&a35);
  if (STACK[0x2C0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2C0]);
  }

  _Unwind_Resume(a1);
}

ggl::zone_mallocator *md::COverlayRenderLayer::layoutResourceForGlobe(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, md::LayoutContext *this, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10)
{
  v12 = this;
  v17 = *(a3 + 392);
  v164 = *(v17 + 169) + a8;
  md::LayoutContext::frameState(this);
  a2[18] = *(v18 + 624);
  result = md::LayoutContext::get<md::CameraContext>(*(v12 + 1));
  v163 = result;
  if (*a2)
  {
    if (*(v17 + 168) == 255)
    {
      v84 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
      v86 = *(a1 + 360);
      if (a10)
      {
        v87 = v12;
        v88 = *a2;
        v89 = (v86 + 8 * *(*a2 + 80) + 48);
      }

      else
      {
        v87 = v12;
        if (*(a7 + 132) == 1)
        {
          v124 = 2 * (*(a1 + 348) == 0);
        }

        else
        {
          v124 = 0;
        }

        v88 = *a2;
        v89 = (v86 + 16 * v124 + 8 * *(*a2 + 80));
      }

      v125 = *v89;
      v126 = *(v88 + 72);
      *v171 = *(v88 + 64);
      *&v171[8] = v126;
      v127 = v88;
      if (v126)
      {
        atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
        v127 = *a2;
      }

      v128 = *(v127 + 40);
      v167 = *(v127 + 32);
      v168 = v128;
      if (v128)
      {
        atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LOWORD(v170[0]) = 257;
      BYTE2(v170[0]) = md::CameraContext::isSplinedEnabled(v163, v85);
      md::COverlayRenderLayer::drapeOnTerrainIfNecessary(a1, *(v87 + 1), a9, a10, v164, v17 + 168, v88, v84, v125, v171, &v167, (a3 + 224), (a3 + 240), v170);
      if (v128)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v128);
      }

      if (v126)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v126);
      }

      *v171 = v84;
      v119 = (a4 + 72);
      v120 = v171;
      return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100](v119, v120);
    }

    v20 = *(a3 + 25);
    v21 = *(a3 + 28);
    v22 = *(a3 + 24);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v167, *(*(a1 + 360) + 360));
    v23 = 0;
    v24 = (v163 + 552);
    do
    {
      v26 = *v24;
      v25 = v24[1];
      v24 += 2;
      *&v171[v23] = vcvt_hight_f32_f64(vcvt_f32_f64(v26), v25);
      v23 += 16;
    }

    while (v23 != 64);
    v27 = v169;
    *v169 = *v171;
    v27[1] = *&v171[16];
    v27[2] = *&v171[32];
    v27[3] = *&v171[48];
    ggl::BufferMemory::~BufferMemory(&v167);
    v28 = *(gdc::ServiceLocator::resolve<md::ConfigSettingProvider>(**(v12 + 2), *(*(v12 + 2) + 8)) + 160);
    v29 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v171, *(*(a1 + 360) + 376));
    v30 = -v28;
    v31 = *&v171[40];
    **&v171[40] = 0;
    *(v31 + 8) = 1065353216;
    *(v31 + 12) = v30;
    ggl::BufferMemory::~BufferMemory(v29);
    v33 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v32, *(*(a1 + 360) + 392));
    v34 = *&v171[40];
    **&v171[40] = 0;
    *(v34 + 8) = -1082130432;
    *(v34 + 12) = v30;
    ggl::BufferMemory::~BufferMemory(v33);
    v36 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v35, *(*(a1 + 360) + 408));
    **&v171[40] = xmmword_1B33B0720;
    ggl::BufferMemory::~BufferMemory(v36);
    v37 = 0;
    memset(&v171[40], 0, 32);
    v172 = 0;
    v175 = 0u;
    v174 = 0u;
    memset(&v171[8], 0, 32);
    *v171 = 0x415854A640000000;
    *&v171[40] = 0x415854A640000000;
    v176 = 0x3FF0000000000000;
    v173 = 0x41583FC4141C97D0;
    v38 = (v163 + 3160);
    do
    {
      v39 = 0;
      v40 = v171;
      do
      {
        v41 = 0;
        v42 = 0.0;
        v43 = v38;
        do
        {
          v44 = *v43;
          v43 += 4;
          v42 = v42 + *&v40[v41] * v44;
          v41 += 8;
        }

        while (v41 != 32);
        *(&v167 + 4 * v39++ + v37) = v42;
        v40 += 32;
      }

      while (v39 != 4);
      ++v37;
      ++v38;
    }

    while (v37 != 4);
    v45 = 0;
    v46 = &v167;
    do
    {
      v48 = *v46;
      v47 = *(v46 + 1);
      v46 += 4;
      v170[v45++] = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v47);
    }

    while (v45 != 4);
    v49 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
    v50 = *(a1 + 360);
    *(v49 + 24) = v50[12];
    *(v49 + 64) = v50[44];
    v51 = v50[55];
    v52 = v51[1];
    if (v52 == *v51)
    {
      v90 = v51[11];
      if (!v90)
      {
        goto LABEL_137;
      }

      v53 = (*(*v90 + 48))(v90);
      v166[0] = v53;
    }

    else
    {
      v53 = *(v52 - 8);
      v166[0] = v53;
      v51[1] = v52 - 8;
    }

    std::vector<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v51 + 4), v166);
    v167 = v53;
    v91 = v51[15];
    if (v91)
    {
      v92 = vrev64_s32(v21);
      (*(*v91 + 48))(v91, &v167);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v167, *(*(v53 + 136) + 16));
      v93 = v169;
      *(v169 + 80) = v22;
      *v93 = v170[0];
      *(v93 + 16) = v170[1];
      *(v93 + 32) = v170[2];
      *(v93 + 48) = v170[3];
      v94.i64[0] = v92.u32[0];
      v94.i64[1] = v92.u32[1];
      v95 = vadd_s32(v92, 0x100000001);
      __asm { FMOV            V3.2D, #1.0 }

      v101 = vdivq_f64(_Q3, vdupq_lane_s64(COERCE__INT64((1 << v20)), 0));
      v102 = vmulq_f64(vcvtq_f64_u64(v94), v101);
      v94.i64[0] = v95.u32[0];
      v94.i64[1] = v95.u32[1];
      *&v102.f64[0] = vcvt_f32_f64(v102);
      *(v93 + 64) = vsub_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v94), v101)), *&v102.f64[0]);
      *(v93 + 72) = v102.f64[0];
      ggl::BufferMemory::~BufferMemory(&v167);
      v103 = 408;
      if (v22 == 5)
      {
        v103 = 392;
      }

      if (v22 == 2)
      {
        v103 = 376;
      }

      v104 = (*(a1 + 360) + v103);
      v105 = *(v53 + 136);
      *(v105 + 40) = 0;
      v106 = *v104;
      *(v105 + 32) = *v104;
      v107 = *(v53 + 232);
      v108 = v104[1];
      if (v108)
      {
        atomic_fetch_add_explicit((v108 + 8), 1uLL, memory_order_relaxed);
      }

      v109 = *(v107 + 40);
      *(v107 + 32) = v106;
      *(v107 + 40) = v108;
      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v109);
      }

      v111 = *(*a2 + 32);
      v110 = *(*a2 + 40);
      if (v110)
      {
        atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
        **(v53 + 168) = v111;
        std::__shared_weak_count::__release_shared[abi:nn200100](v110);
      }

      else
      {
        **(v53 + 168) = v111;
      }

      v112 = *(a1 + 360);
      v113 = *(v112 + 432);
      v167 = *(v112 + 424);
      v168 = v113;
      if (v113)
      {
        atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v53, &v167);
        std::__shared_weak_count::__release_shared[abi:nn200100](v113);
      }

      else
      {
        ggl::PipelineSetup::setState(v53, &v167);
      }

      v114 = *(*a2 + 64);
      v115 = *(*a2 + 72);
      if (v115)
      {
        atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v116 = *(v53 + 136);
      *(v116 + 48) = v114;
      *(v116 + 56) = 0;
      v117 = *(v53 + 232);
      v118 = *(v117 + 56);
      *(v117 + 48) = 0;
      *(v117 + 56) = 0;
      if (v118)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v118);
      }

      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v115);
      }

      *(v49 + 32) = v53;
      *(v49 + 40) = v164;
      *(v49 + 48) = a9;
      ggl::RenderItem::assertValid(v49);
      v167 = v49;
      v119 = (a4 + 72);
      v120 = &v167;
      return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100](v119, v120);
    }

LABEL_137:
    v151 = std::__throw_bad_function_call[abi:nn200100]();
    if (a2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a2);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    _Unwind_Resume(v151);
  }

  v165 = a1;
  v156 = v17;
  if (a2[11])
  {
    LODWORD(v170[0]) = *a2[14];
    *v171 = v170;
    result = std::__hash_table<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 400), v170[0]);
    v54 = a2[11];
    v55 = *v54;
    v161 = v54[1];
    if (*v54 != v161)
    {
      v159 = *(result + 10);
      v155 = *(result + 11);
      v56 = *(result + 6);
      v57 = 168;
      if (a10)
      {
        v57 = 176;
      }

      v152 = v57;
      v153 = a4;
      v154 = v12;
      do
      {
        v58 = *(v55 + 64);
        v59 = a9;
        v60 = 1.0 - v56;
        if (v58 == v159 || v58 == v155 && (v59 = a9 + 1, v60 = v56, v56 > 0.0))
        {
          md::OverlayTileData::OverlayTileResource::RasterTile::setAlphaMultiplier(v55, v60);
          md::OverlayTileData::OverlayTileResource::RasterTile::updateWithContext(v55, *(v12 + 1), *(a3 + 56));
          v61 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
          if (*v55)
          {
            v157 = v59;
            v63 = ggl::FragmentedPool<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup>::pop(*(*(a1 + 360) + 312));
            v64 = v63;
            v66 = *(v55 + 120);
            v65 = *(v55 + 128);
            if (v65)
            {
              atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v67 = *(v55 + 16);
            v68 = *(v55 + 24);
            if (v68)
            {
              atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v69 = *(a1 + 360);
            v71 = *(v69 + 248);
            v70 = *(v69 + 256);
            if (v70)
            {
              atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v63 + 136), *(v63 + 232), *(a3 + 224), *(a3 + 232));
            ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v64 + 136), *(v64 + 232), *(a3 + 240), *(a3 + 248));
            ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v64 + 136), *(v64 + 232), v66, v65);
            **(v64 + 168) = v67;
            if (v70)
            {
              atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
              ggl::GlobeAtmosphere::BasePipelineSetup::setState(v64, v71, v70);
              std::__shared_weak_count::__release_shared[abi:nn200100](v70);
            }

            else
            {
              ggl::GlobeAtmosphere::BasePipelineSetup::setState(v64, v71, 0);
            }

            a4 = v153;
            a1 = v165;
            if (*(v165 + 394) == 1)
            {
              v75 = *(v64 + 136);
              *(v75 + 64) = *(*(v165 + 360) + v152);
              *(v75 + 72) = 0;
              v76 = *(v64 + 232);
              v77 = *(v76 + 72);
              *(v76 + 64) = 0;
              *(v76 + 72) = 0;
              if (v77)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v77);
              }
            }

            if (v70)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v70);
            }

            if (v68)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v68);
            }

            v17 = v156;
            if (v65)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v65);
            }

            *(*(v64 + 168) + 8) = *v55;
            TileScalar = md::COverlayRenderLayer::getTileScalar(*(*(v165 + 360) + 448), (a3 + 24), (v55 + 32));
            v79 = *(v64 + 136);
            *(v79 + 32) = TileScalar;
            *(v79 + 40) = 0;
            v80 = *(v64 + 232);
            v81 = *(v80 + 40);
            *(v80 + 32) = 0;
            *(v80 + 40) = 0;
            v12 = v154;
            if (v81)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v81);
            }

            v82 = *(v165 + 360);
            v83 = *(v82 + 96);
            *(v61 + 64) = *(v82 + 80);
            *(v61 + 24) = v83;
            *(v61 + 32) = v64;
            *(v61 + 48) = v157;
            *(v61 + 40) = v164;
          }

          else
          {
            v72 = *(*(a1 + 360) + 96);
            v73 = *(v55 + 128);
            *v171 = *(v55 + 120);
            *&v171[8] = v73;
            if (v73)
            {
              atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v74 = *(v55 + 24);
            v167 = *(v55 + 16);
            v168 = v74;
            if (v74)
            {
              atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            LOWORD(v166[0]) = 1;
            BYTE2(v166[0]) = md::CameraContext::isSplinedEnabled(v163, v62);
            md::COverlayRenderLayer::drapeOnTerrainIfNecessary(a1, *(v12 + 1), a9, a10, v164, v17 + 168, v55 + 32, v61, v72, v171, &v167, (a3 + 224), (a3 + 240), v166);
            if (v74)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v74);
            }

            if (v73)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v73);
            }

            *v171 = v61;
            std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a4 + 72), v171);
          }

          *v171 = v61;
          result = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a4 + 72), v171);
        }

        v55 += 144;
      }

      while (v55 != v161);
    }

    return result;
  }

  v121 = a2[12];
  if (!v121)
  {
    return result;
  }

  v122 = *(v17 + 24);
  if (v122 > 0x46)
  {
    if (v122 == 72)
    {
      v123 = 104;
    }

    else
    {
      if (v122 != 71)
      {
        return result;
      }

      v123 = 88;
    }
  }

  else if (v122 == 11)
  {
    v123 = 80;
  }

  else
  {
    if (v122 != 12)
    {
      return result;
    }

    v123 = 96;
  }

  v160 = *(a6 + v123);
  if (v160)
  {
    v129 = *v121;
    if (v121[1] != *v121)
    {
      v130 = 0;
      v158 = a2;
      while (1)
      {
        v162 = v130;
        v131 = *(a2[14] + 4 * v130);
        *&v171[4] = *(v17 + 172);
        *v171 = *(v17 + 168);
        *&v171[16] = *(v17 + 184);
        v171[24] = *(v17 + 192);
        *&v171[32] = v131;
        result = std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::find<md::SurfaceKey>(v160, v171);
        if (result)
        {
          result = std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::find<md::SurfaceKey>(v160, v171);
          if (!result)
          {
            abort();
          }

          v132 = *(result + 9);
          if (v132)
          {
            break;
          }
        }

LABEL_134:
        v130 = v162 + 1;
        v17 = v156;
        a2 = v158;
        v150 = v158[12];
        v129 = *v150;
        if (v162 + 1 >= 0x8E38E38E38E38E39 * ((v150[1] - *v150) >> 4))
        {
          return result;
        }
      }

      v133 = 0;
      v134 = (v129 + 144 * v162);
      while (v133 != *(v134 + 4))
      {
LABEL_130:
        v132 = *v132;
        ++v133;
        if (!v132)
        {
          goto LABEL_134;
        }
      }

      v135 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
      v136 = ggl::FragmentedPool<ggl::Textured::SRGBBlendPos2DUVPipelineSetup>::pop(*(*(a1 + 360) + 304));
      v167 = *(v134 + 14);
      v138 = *(v134 + 15);
      v168 = v138;
      if (v138)
      {
        atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v139 = v132[4];
      *&v170[0] = v132[3];
      *(&v170[0] + 1) = v139;
      if (v139)
      {
        atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      isSplinedEnabled = md::CameraContext::isSplinedEnabled(v163, v137);
      v141 = 200;
      if (isSplinedEnabled)
      {
        v141 = 216;
      }

      v142 = (*(v165 + 360) + v141);
      v143 = v142[1];
      v166[0] = *v142;
      v166[1] = v143;
      if (v143)
      {
        atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
        md::COverlayRenderLayer::setTexturePipeline<ggl::Textured::SRGBBlendPos2DUVPipelineSetup,ggl::Textured::SRGBBlendPos2DUVPipelineState>(v165, v136, *(a3 + 224), *(a3 + 232), (a3 + 240), &v167, v170, a10, v166);
        std::__shared_weak_count::__release_shared[abi:nn200100](v143);
        if (!v139)
        {
LABEL_125:
          if (v138)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v138);
          }

          a1 = v165;
          v144 = *(v165 + 360);
          v145 = *(v144 + 96);
          *(v135 + 64) = *(v144 + 80);
          *(v135 + 24) = v145;
          *(v135 + 32) = v136;
          *(v135 + 48) = a9;
          *(v135 + 40) = v164;
          v146 = md::COverlayRenderLayer::getTileScalar(*(v144 + 448), (a3 + 24), v134);
          v147 = *(v136 + 136);
          *(v147 + 32) = v146;
          *(v147 + 40) = 0;
          v148 = *(v136 + 232);
          v149 = *(v148 + 40);
          *(v148 + 32) = 0;
          *(v148 + 40) = 0;
          if (v149)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v149);
          }

          v167 = v135;
          result = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a4 + 72), &v167);
          goto LABEL_130;
        }
      }

      else
      {
        md::COverlayRenderLayer::setTexturePipeline<ggl::Textured::SRGBBlendPos2DUVPipelineSetup,ggl::Textured::SRGBBlendPos2DUVPipelineState>(v165, v136, *(a3 + 224), *(a3 + 232), (a3 + 240), &v167, v170, a10, v166);
        if (!v139)
        {
          goto LABEL_125;
        }
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v139);
      goto LABEL_125;
    }
  }

  return result;
}

void md::COverlayRenderLayer::layoutResource(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, md::LayoutContext *this, uint64_t a6, uint64_t a7, int a8, float a9, uint64_t a10, void *a11, unsigned __int8 a12)
{
  v18 = a12;
  v471 = *MEMORY[0x1E69E9840];
  v416 = a4;
  v411 = *(a3 + 392);
  v19 = *(v411 + 169);
  md::LayoutContext::frameState(this);
  v20 = a2;
  a2[18] = *(v21 + 624);
  v406 = a2;
  if (*(a1 + 394) == 1)
  {
    v22 = (fminf(a9, 0.4) * -1.25) + 1.0;
    if (v18)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1.0;
    }

    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&__y, *(*(a1 + 360) + 176));
    *v428 = v23;
    ggl::BufferMemory::~BufferMemory(&__y);
    v20 = a2;
  }

  v413 = v19 + a8;
  *(a7 + 133) = v18;
  v414 = v18;
  v415 = a1;
  if (*v20)
  {
    v24 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
    v25 = *(a1 + 360);
    if (v18)
    {
      v26 = *a2;
      v27 = (v25 + 8 * *(*a2 + 80) + 48);
    }

    else
    {
      v61 = *(a7 + 132) == 1 && *(a1 + 348) == 0;
      v26 = *a2;
      v27 = (v25 + 16 * v61 + 8 * *(*a2 + 80));
    }

    v62 = *v27;
    v63 = a10;
    v64 = *(v26 + 72);
    __y = *(v26 + 64);
    v424 = v64;
    v65 = v26;
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      v65 = *a2;
    }

    v66 = *(v65 + 40);
    __p.__r_.__value_.__r.__words[0] = *(v65 + 32);
    __p.__r_.__value_.__l.__size_ = v66;
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LOWORD(v453) = 256;
    BYTE2(v453) = 0;
    md::COverlayRenderLayer::drapeOnTerrainIfNecessary(a1, *(this + 1), v63, v18, v413, v411 + 168, v26, v24, v62, &__y, &__p, (a3 + 224), (a3 + 240), &v453);
    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v66);
    }

    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v64);
    }

    __y = v24;
    std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v416 + 72), &__y);
    return;
  }

  if (v20[11])
  {
    LODWORD(v466) = *v20[14];
    __y = &v466;
    v28 = std::__hash_table<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 400), v466);
    v29 = a2[11];
    v31 = *v29;
    v30 = v29[1];
    v32 = a1;
    if (*v29 == v30)
    {
      return;
    }

    v33 = *(v28 + 10);
    v407 = *(v28 + 11);
    v34 = *(v28 + 6);
    v35 = 168;
    if (v18)
    {
      v35 = 176;
    }

    *v403 = v35;
    while (1)
    {
      v36 = *(v31 + 64);
      if (v36 == v33)
      {
        break;
      }

      if (v36 == v407 && v34 > 0.0)
      {
        v37 = a10 + 1;
        v38 = v34;
        goto LABEL_19;
      }

LABEL_49:
      v31 += 144;
      if (v31 == v30)
      {
        return;
      }
    }

    v37 = a10;
    v38 = 1.0 - v34;
LABEL_19:
    md::OverlayTileData::OverlayTileResource::RasterTile::setAlphaMultiplier(v31, v38);
    v39 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v32 + 360) + 344));
    v42 = *(v415 + 360);
    if (v414)
    {
      v43 = (v42 + 8 * *(v31 + 140) + 48);
    }

    else
    {
      v43 = (v42 + 16 * *(a7 + 132) + 8 * *(v31 + 140));
    }

    v44 = *v43;
    if (*v31)
    {
      v45 = ggl::FragmentedPool<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup>::pop(*(v42 + 312));
      v46 = v45;
      v47 = *(v31 + 72);
      v48 = *(v31 + 80);
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        v49 = (v45 + 136);
        v50 = (v45 + 232);
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v45 + 136), *(v45 + 232), v47, v48);
        std::__shared_weak_count::__release_shared[abi:nn200100](v48);
      }

      else
      {
        v49 = (v45 + 136);
        v50 = (v45 + 232);
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v45 + 136), *(v45 + 232), v47, 0);
      }

      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*v49, *v50, *(v31 + 88), *(v31 + 96));
      v54 = *(v31 + 120);
      v55 = *(v31 + 128);
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*v49, *v50, v54, v55);
        std::__shared_weak_count::__release_shared[abi:nn200100](v55);
      }

      else
      {
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*v49, *v50, v54, 0);
      }

      v57 = *(v31 + 16);
      v56 = *(v31 + 24);
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        **(v46 + 168) = v57;
        std::__shared_weak_count::__release_shared[abi:nn200100](v56);
      }

      else
      {
        **(v46 + 168) = v57;
      }

      *(*(v46 + 168) + 8) = *v31;
      ggl::GlobeAtmosphere::BasePipelineSetup::setState(v46, *(*(v415 + 360) + 232), *(*(v415 + 360) + 240));
      if (*(v415 + 394) == 1)
      {
        v58 = *v49;
        *(v58 + 64) = *(*(v415 + 360) + *v403);
        *(v58 + 72) = 0;
        v59 = *v50;
        v60 = *(*v50 + 72);
        *(v59 + 64) = 0;
        *(v59 + 72) = 0;
        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v60);
        }
      }

      *(v39 + 64) = *(*(v415 + 360) + 64);
      *(v39 + 24) = v44;
      *(v39 + 32) = v46;
      *(v39 + 48) = v37;
      *(v39 + 40) = v413;
    }

    else
    {
      gdc::Tiled::Tiled(&__y, (v31 + 32), v40, v41);
      v51 = *(v31 + 128);
      __p.__r_.__value_.__r.__words[0] = *(v31 + 120);
      __p.__r_.__value_.__l.__size_ = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = *(v31 + 24);
      *&v453 = *(v31 + 16);
      *(&v453 + 1) = v52;
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v53 = *(v31 + 80);
      v469.__r_.__value_.__r.__words[0] = *(v31 + 72);
      v469.__r_.__value_.__l.__size_ = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LOWORD(v465[0]) = 0;
      BYTE2(v465[0]) = 0;
      md::COverlayRenderLayer::drapeOnTerrainIfNecessary(v415, *(this + 1), v37, v414, v413, v411 + 168, v31 + 32, v39, v44, &__p, &v453, &v469, (v31 + 88), v465);
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v52);
      }

      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v51);
      }
    }

    __y = v39;
    std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v416 + 72), &__y);
    v32 = v415;
    goto LABEL_49;
  }

  v67 = v20[12];
  if (!v67)
  {
    if (v20[1])
    {
      md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(*(a1 + 368), v20 + 1, v416, a7, v413, a10, 0, 0, v18 ^ 1);
      return;
    }

    if (v20[2])
    {
      md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(*(a1 + 368), v20 + 2, v416, a7, v413, a10, 0, 0, v18 ^ 1);
      return;
    }

    v88 = v20[9];
    if (v88)
    {
      v89 = *(this + 1);
      v90 = md::LayoutContext::get<md::ElevationContext>(v89);
      v91 = *(gdc::Context::get<md::StyleLogicContext>(v89) + 22) - 3;
      if (*(v90 + 4) <= 0.01)
      {
        v92 = *(v90 + 3);
      }

      else
      {
        v92 = 0;
      }

      md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(*(a1 + 368), v88, v416, a7, v413, a10, v91 < 0xFFFFFFFE, v92 & 1, v18 ^ 1);
      return;
    }

    v93 = v20[10];
    if (v93)
    {
      v94 = *(this + 1);
      v95 = md::LayoutContext::get<md::ElevationContext>(v94);
      v96 = *(gdc::Context::get<md::StyleLogicContext>(v94) + 22) - 3;
      if (*(v95 + 4) <= 0.01)
      {
        v97 = *(v95 + 3);
      }

      else
      {
        v97 = 0;
      }

      md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(*(a1 + 368), v93, v416, a7, v413, a10, v96 < 0xFFFFFFFE, v97 & 1, v18 ^ 1);
      return;
    }

    v98 = v20[3];
    if (v98)
    {
      v99 = a11;
      v101 = *v98;
      v100 = v98[1];
      if (v100)
      {
        atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
        v98 = v20[3];
      }

      v102 = *(v98 + 16) + *(a3 + 56);
      if (v18)
      {
        v103 = 256;
      }

      else
      {
        v103 = 0;
      }

      LOWORD(v465[0]) = v103 & 0xFF00 | v102;
      __y = v465;
      v104 = std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::__emplace_unique_key_args<std::pair<signed char,BOOL>,std::piecewise_construct_t const&,std::tuple<std::pair<signed char,BOOL> const&>,std::tuple<>>(v99, v102, HIBYTE(v103));
      v105 = 0x9DDFEA08EB382D69 * ((8 * (v101 & 0x1FFFFFFF) + 8) ^ HIDWORD(v101));
      v106 = 0x9DDFEA08EB382D69 * (HIDWORD(v101) ^ (v105 >> 47) ^ v105);
      v107 = 0x9DDFEA08EB382D69 * (v106 ^ (v106 >> 47));
      v108 = v104[4];
      if (v108)
      {
        v109 = vcnt_s8(v108);
        v109.i16[0] = vaddlv_u8(v109);
        if (v109.u32[0] > 1uLL)
        {
          v110 = v107;
          if (v107 >= *&v108)
          {
            v110 = v107 % *&v108;
          }
        }

        else
        {
          v110 = v107 & (*&v108 - 1);
        }

        v257 = v104[3][v110];
        if (v257)
        {
          for (i = *v257; i; i = *i)
          {
            v259 = i[1];
            if (v259 == v107)
            {
              if (i[2] == v101)
              {
                v267 = 0;
                goto LABEL_284;
              }
            }

            else
            {
              if (v109.u32[0] > 1uLL)
              {
                if (v259 >= *&v108)
                {
                  v259 %= *&v108;
                }
              }

              else
              {
                v259 &= *&v108 - 1;
              }

              if (v259 != v110)
              {
                break;
              }
            }
          }
        }
      }

      v267 = 1;
LABEL_284:
      __y = v465;
      std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::__emplace_unique_key_args<std::pair<signed char,BOOL>,std::piecewise_construct_t const&,std::tuple<std::pair<signed char,BOOL> const&>,std::tuple<>>(v99, v465[0], BYTE1(v465[0]));
      if (v267)
      {
        __y = v465;
        v260 = std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::__emplace_unique_key_args<std::pair<signed char,BOOL>,std::piecewise_construct_t const&,std::tuple<std::pair<signed char,BOOL> const&>,std::tuple<>>(v99, v465[0], BYTE1(v465[0]));
        v261 = v260[4];
        if (v261)
        {
          v262 = vcnt_s8(v261);
          v262.i16[0] = vaddlv_u8(v262);
          if (v262.u32[0] > 1uLL)
          {
            v263 = v107;
            if (v107 >= *&v261)
            {
              v263 = v107 % *&v261;
            }
          }

          else
          {
            v263 = v107 & (*&v261 - 1);
          }

          v264 = v260[3][v263];
          if (v264)
          {
            for (j = *v264; j; j = *j)
            {
              v266 = j[1];
              if (v266 == v107)
              {
                if (j[2] == v101)
                {
                  v268 = 0;
                  v269 = *(*(a1 + 360) + 320);
                  *(v101 + 56) = v269;
                  v270 = 1;
                  do
                  {
                    v271 = 0;
                    v272 = v270;
                    v273 = 1;
                    v274 = v101 + 104 + 16 * v268;
                    do
                    {
                      v275 = v273;
                      v276 = *(v274 + 8 * v271);
                      v277 = v269[1];
                      __y = *v269;
                      v424 = v277;
                      if (v277)
                      {
                        atomic_fetch_add_explicit(&v277->__shared_owners_, 1uLL, memory_order_relaxed);
                        ggl::PipelineSetup::setState(v276, &__y);
                        std::__shared_weak_count::__release_shared[abi:nn200100](v277);
                      }

                      else
                      {
                        ggl::PipelineSetup::setState(v276, &__y);
                      }

                      v273 = 0;
                      v271 = 1;
                    }

                    while ((v275 & 1) != 0);
                    v270 = 0;
                    v268 = 1;
                  }

                  while ((v272 & 1) != 0);
                  *(v101 + 48) = a8;
                  v278 = md::LayoutContext::get<md::CameraContext>(*(this + 1));
                  v279 = v278;
                  v280 = *(v101 + 8);
                  v281 = *(v101 + 24);
                  v282 = v102;
                  v283 = *v101 + v282;
                  v284 = *(v101 + 16) + v282;
                  if (v102)
                  {
                    v285 = v284;
                  }

                  else
                  {
                    v285 = *(v101 + 16);
                  }

                  if (v102)
                  {
                    v286 = v283;
                  }

                  else
                  {
                    v286 = *v101;
                  }

                  v287 = (v101 + 16 * (v102 != 0));
                  if (v414)
                  {
                    v288 = v287[18];
                    v289 = *(*(v101 + 56) + 32);
                  }

                  else
                  {
                    v290 = *(v415 + 348);
                    v291 = gdc::Camera::cameraFrame(v278);
                    v288 = v287[17];
                    v292 = *(v101 + 56);
                    if (*(v291 + 32) > 0.0 && v290 == 0)
                    {
                      v289 = *(v292 + 24);
                    }

                    else
                    {
                      v289 = *(v292 + 16);
                    }
                  }

                  *(v288 + 24) = v289;
                  v294 = 0;
                  v445 = 0u;
                  v295 = (v279 + 808);
                  v447 = 0;
                  v449 = 0;
                  v446 = 0u;
                  v444 = 0u;
                  *&__p.__r_.__value_.__r.__words[1] = 0u;
                  *&__p.__r_.__value_.__l.__data_ = v285 - v286;
                  *&v445 = v281 - v280;
                  v448 = v285 - v286;
                  v450 = v286;
                  v451 = v280;
                  v452 = xmmword_1B33B0740;
                  do
                  {
                    v296 = 0;
                    p_p = &__p;
                    do
                    {
                      v298 = 0;
                      v299 = 0.0;
                      v300 = v295;
                      do
                      {
                        v301 = *v300;
                        v300 += 4;
                        v299 = v299 + *(&p_p->__r_.__value_.__l.__data_ + v298) * v301;
                        v298 += 8;
                      }

                      while (v298 != 32);
                      *&(&(&__y)[4 * v296++])[v294] = v299;
                      p_p = (p_p + 32);
                    }

                    while (v296 != 4);
                    ++v294;
                    ++v295;
                  }

                  while (v294 != 4);
                  v302 = 0;
                  p_y = &__y;
                  do
                  {
                    v305 = *p_y;
                    v304 = *(p_y + 1);
                    p_y += 4;
                    *(&v453 + v302) = vcvt_hight_f32_f64(vcvt_f32_f64(v305), v304);
                    v302 += 16;
                  }

                  while (v302 != 64);
                  v306 = v287[9];
                  ggl::BufferMemory::BufferMemory(&__p);
                  ggl::ResourceAccessor::accessConstantData(&__y, 0, v306, 1);
                  ggl::BufferMemory::operator=(&__p, &__y);
                  ggl::BufferMemory::~BufferMemory(&__y);
                  v307 = v445;
                  *v445 = v453;
                  v307[1] = v454;
                  v307[2] = v455;
                  v307[3] = v456;
                  v308 = *(v101 + 32);
                  os_unfair_lock_lock((v308 + 44));
                  *&v469.__r_.__value_.__l.__data_ = *(v308 + 20);
                  os_unfair_lock_unlock((v308 + 44));
                  v309 = *(v101 + 32);
                  os_unfair_lock_lock((v309 + 44));
                  v466 = *(v309 + 4);
                  os_unfair_lock_unlock((v309 + 44));
                  v310 = *(v101 + 32);
                  os_unfair_lock_lock((v310 + 44));
                  v311 = *v310;
                  os_unfair_lock_unlock((v310 + 44));
                  if (v311 <= 0.0)
                  {
                    VKVectorOverlayAutomaticLineWidthForZoomLevel(fmaxf(*(v279 + 770) + *(v279 + 768), 1.0));
                  }

                  v312 = *(v101 + 32);
                  os_unfair_lock_lock(v312 + 11);
                  os_unfair_lock_unlock(v312 + 11);
                  v313 = *(v101 + 32);
                  os_unfair_lock_lock(v313 + 11);
                  os_unfair_lock_unlock(v313 + 11);
                  operator new();
                }
              }

              else
              {
                if (v262.u32[0] > 1uLL)
                {
                  if (v266 >= *&v261)
                  {
                    v266 %= *&v261;
                  }
                }

                else
                {
                  v266 &= *&v261 - 1;
                }

                if (v266 != v263)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }

      if (v100)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v100);
      }

      return;
    }

    v111 = v20[4];
    v400 = v20[5];
    if (v111 == v400)
    {
      return;
    }

    v112 = 168;
    if (v18)
    {
      v112 = 176;
    }

    v399 = v112;
    v398 = v18 ^ 1;
    v113 = 1.0;
    v114 = 0.000011921;
    v115 = 23.0;
    v116 = a1;
    while (1)
    {
      v117 = *v111;
      v118 = *(v116 + 360);
      v119 = *(v118 + 328);
      *(v117 + 12) = v119;
      v120 = *(v117 + 6);
      if (v120)
      {
        if (v119)
        {
          v119 = *(v119 + 16);
        }

        *(v120 + 232) = v119;
      }

      *v405 = v111;
      v121 = *(v117 + 39);
      if (v121)
      {
        *(v121 + 32) = *(v118 + 336);
      }

      *(v117 + 22) = v413;
      v122 = *(v116 + 348);
      v123 = *(v118 + v399);
      v124 = md::LayoutContext::get<md::CameraContext>(*(this + 1));
      *(v117 + 32) = 0;
      *(v117 + 262) = 0;
      v401 = v124;
      v126 = *(gdc::Camera::cameraFrame(v124) + 32) > 0.0 && v122 == 0;
      v127 = *(v117 + 7);
      os_unfair_lock_lock(v127 + 6);
      os_unfair_lock_unlock(v127 + 6);
      v462 = *&v127->_os_unfair_lock_opaque;
      v128 = *(v117 + 7);
      os_unfair_lock_lock((v128 + 24));
      v129 = *(v128 + 16);
      os_unfair_lock_unlock((v128 + 24));
      *(&v462 + 3) = *(&v462 + 3) * v129;
      v130 = vabds_f32(v113, *(&v462 + 3));
      v131 = v130 <= (fabsf(*(&v462 + 3) + v113) * v114);
      v402 = v131 || v130 < 1.1755e-38;
      v418 = v131 || v130 < 1.1755e-38;
      v132 = *(v117 + 39);
      v412 = v132 != 0;
      if (v132)
      {
        v133 = 0;
      }

      else
      {
        v133 = *(v117 + 4) != 0 && *(&v462 + 3) > 0.0;
      }

      v134 = *(v117 + 7);
      v136 = *(v134 + 32);
      v135 = *(v134 + 40);
      if (v135)
      {
        atomic_fetch_add_explicit(&v135->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_lock((v136 + 196));
      v137 = *(v136 + 148);
      os_unfair_lock_unlock((v136 + 196));
      if (v135)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v135);
      }

      v138 = v123;
      v139 = vabds_f32(v113, v137);
      v140 = v139 > (fabsf(v137 + v113) * v114);
      v141 = v139 >= 1.1755e-38;
      if (*(v117 + 6))
      {
        v409 = v137 > 0.0 || v412;
      }

      else
      {
        v409 = 0;
      }

      v142 = *(v117 + 7);
      os_unfair_lock_lock(v142 + 6);
      os_unfair_lock_opaque = v142[5]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v142 + 6);
      if (os_unfair_lock_opaque == 13)
      {
        v145 = *(v117 + 7);
        os_unfair_lock_lock((v145 + 24));
        v146 = *(v145 + 48);
        os_unfair_lock_unlock((v145 + 24));
        if (v146)
        {
          os_unfair_lock_opaque = 18;
        }
      }

      v147 = v126;
      v417 = os_unfair_lock_opaque;
      *(v117 + 256) = v133 & v398;
      v148 = v138;
      if (v133)
      {
        v149 = *(v117 + 5);
        if (v149)
        {
          v150 = v140 && v141;
          LODWORD(v151) = v409;
          LODWORD(v149) = (v150 | ~v409) & v398;
          goto LABEL_159;
        }
      }

      else
      {
        LODWORD(v149) = 0;
      }

      LODWORD(v151) = v409;
LABEL_159:
      *(v117 + 257) = v149;
      *(v117 + 258) = 16843009 * (v151 & v398);
      *(v117 + 262) = 16843009 * (v151 & v412 & v398);
      *(v117 + 268) = v133 & v414;
      *(v117 + 266) = v151 & v414;
      *(v117 + 267) = v151 & v414;
      *(v117 + 269) = v412;
      *&v453 = &v418;
      *(&v453 + 1) = &v462;
      *&v454 = &v417;
      *(&v454 + 1) = v138;
      *&v455 = v117;
      if ((v133 & v398) != 0)
      {
        md::PolygonOverlayRenderable::updateWithContext(md::LayoutContext const&,BOOL,BOOL,ggl::ConstantDataTyped<ggl::OverlayOcclusion::AlphaTint> *,float)::$_0::operator()(&v453, *(**(v117 + 12) + 16 * v402 + 8 * v147 + 72), *(v117 + 18));
        if ((*(v117 + 257) & 1) == 0)
        {
          goto LABEL_194;
        }
      }

      else if (!v149)
      {
        goto LABEL_194;
      }

      v152 = *(**(v117 + 12) + 64);
      v153 = v152[1];
      if (v153 == *v152)
      {
        v155 = v152[11];
        if (!v155)
        {
          goto LABEL_413;
        }

        v144 = (*(*v155 + 48))(v155);
        v154 = v144;
      }

      else
      {
        v154 = *(v153 - 8);
        v152[1] = v153 - 8;
      }

      v157 = v152[5];
      v156 = v152[6];
      if (v157 >= v156)
      {
        v159 = v152[4];
        v160 = (v157 - v159) >> 3;
        if ((v160 + 1) >> 61)
        {
          goto LABEL_414;
        }

        v161 = v156 - v159;
        v162 = v161 >> 2;
        if (v161 >> 2 <= (v160 + 1))
        {
          v162 = v160 + 1;
        }

        if (v161 >= 0x7FFFFFFFFFFFFFF8)
        {
          v163 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v163 = v162;
        }

        v427 = v152 + 7;
        if (v163)
        {
          v164 = ggl::zone_mallocator::instance(v144);
          v165 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(v164, v163);
        }

        else
        {
          v165 = 0;
        }

        v151 = &v165[8 * v163];
        v166 = &v165[8 * v160];
        *v166 = v154;
        v158 = v166 + 1;
        v167 = v152[4];
        v168 = v152[5] - v167;
        v169 = v166 - v168;
        memcpy(v166 - v168, v167, v168);
        v170 = v152[4];
        v152[4] = v169;
        v152[5] = v158;
        v171 = v152[6];
        v152[6] = v151;
        v425 = v170;
        v426 = v171;
        __y = v170;
        v424 = v170;
        std::__split_buffer<ggl::PolygonOverlay::AntialiasPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::AntialiasPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&__y);
        LOBYTE(v151) = v409;
      }

      else
      {
        *v157 = v154;
        v158 = v157 + 1;
      }

      v152[5] = v158;
      __y = v154;
      v172 = v152[15];
      if (!v172)
      {
        goto LABEL_413;
      }

      (*(*v172 + 48))(v172, &__y);
      v173 = *(v154 + 136);
      v173[1] = 0;
      v174 = *(v117 + 14);
      *v173 = v174;
      v175 = *(v154 + 232);
      v176 = *(v117 + 15);
      if (v176)
      {
        atomic_fetch_add_explicit((v176 + 8), 1uLL, memory_order_relaxed);
      }

      v177 = v175[1];
      *v175 = v174;
      v175[1] = v176;
      if (v177)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v177);
      }

      v178 = *(v154 + 136);
      *(v178 + 24) = 0;
      v179 = *(v117 + 16);
      *(v178 + 16) = v179;
      v180 = *(v154 + 232);
      v181 = *(v117 + 17);
      if (v181)
      {
        atomic_fetch_add_explicit((v181 + 8), 1uLL, memory_order_relaxed);
      }

      v182 = *(v180 + 24);
      *(v180 + 16) = v179;
      *(v180 + 24) = v181;
      if (v182)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v182);
      }

      **(v154 + 168) = *(*(v117 + 12) + 8);
      if (v148)
      {
        v183 = *(v154 + 136);
        *(v183 + 48) = v148;
        *(v183 + 56) = 0;
        v184 = *(v154 + 232);
        v185 = *(v184 + 56);
        *(v184 + 48) = 0;
        *(v184 + 56) = 0;
        if (v185)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v185);
        }
      }

      v186 = *(*(v154 + 136) + 32);
      v187 = *(v401 + 471);
      v188 = *(v401 + 171) * *(v117 + 13);
      ggl::BufferMemory::BufferMemory(&__p);
      ggl::ResourceAccessor::accessConstantData(&__y, 0, v186, 1);
      ggl::BufferMemory::operator=(&__p, &__y);
      ggl::BufferMemory::~BufferMemory(&__y);
      v189 = 0;
      v190 = v445;
      do
      {
        *(v190 + v189) = *(&v462 + v189);
        v189 += 4;
      }

      while (v189 != 16);
      v191 = v187 / v188;
      *(v190 + 16) = v191;
      *(v190 + 20) = v417;
      ggl::BufferMemory::~BufferMemory(&__p);
      v192 = *(v117 + 19);
      *(v192 + 24) = *(**(v117 + 12) + 8 * v147 + 104);
      *(v192 + 40) = *(v117 + 22);
      *(v192 + 32) = v154;
      *(v192 + 64) = *(v117 + 5);
LABEL_194:
      if (v151)
      {
        md::RibbonLayoutContext::RibbonLayoutContext(&__y, this);
        v433 = 0;
        v434 = 1065353216;
        v435 = 0;
        v438 = 0;
        v439 = 0;
        v436 = 0;
        v437 = 0;
        *v440 = 255;
        *&v440[8] = 0;
        *&v440[4] = 0;
        *&v440[16] = 0;
        v440[24] = 1;
        v429 = 0;
        v193 = +[VKDebugSettings sharedSettings];
        [v193 ribbonCrispness];
        v431 = v194;

        v195 = *(*(v117 + 12) + 16);
        v432 = *(*(v195 + 256) + 8);
        v433 = v195;
        v430 = *(v117 + 22);
        BYTE4(v436) = v147;
        BYTE5(v436) = v414;
        v435 = 1;
        LODWORD(v436) = v417;
        v197 = *(v117 + 9);
        v196 = *(v117 + 10);
        if (v196)
        {
          atomic_fetch_add_explicit(&v196->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v198 = v439;
        v438 = v197;
        v439 = v196;
        if (v198)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v198);
        }

        v437 = v412;
        v199 = *v117;
        *&v440[9] = *(v117 + 9);
        *v440 = v199;
        v441 = *(v117 + 328);
        v442 = *(v117 + 344);
        md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::layout(*(v117 + 6), &__y);
        if (v439)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v439);
        }
      }

      if (*(v117 + 268) == 1)
      {
        md::PolygonOverlayRenderable::updateWithContext(md::LayoutContext const&,BOOL,BOOL,ggl::ConstantDataTyped<ggl::OverlayOcclusion::AlphaTint> *,float)::$_0::operator()(&v453, *(**(v117 + 12) + 8 * v418 + 120), *(v117 + 30));
      }

      v116 = v415;
      if (*(v117 + 269) == 1)
      {
        v200 = *(v117 + 39);
        v201 = *(this + 1);
        v202 = md::LayoutContext::get<md::CameraContext>(v201);
        v203 = *(v202 + 3076);
        v204 = *(v202 + 3080);
        gdc::Context::get<md::StyleLogicContext>(v201);
        *(v200 + 184) = 0;
        *(v200 + 200) = 0;
        *(v200 + 192) = 0;
        v205 = *(v200 + 136);
        v206 = *(v200 + 144);
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&__y, v205, v206);
        if (v206)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v206);
        }

        if (v427 != 1)
        {
          goto LABEL_230;
        }

        v207 = fmaxf(v204 + v203, v113);
        if (v207 >= 0x17)
        {
          v208 = 23;
        }

        else
        {
          v208 = v207;
        }

        v209 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(__y[3], 91, v208, 2u, 0);
        *(v200 + 200) = v209;
        if (v209)
        {
          memset(&__p, 0, sizeof(__p));
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v469, __y[3], 0x88u, v208, 2);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v469;
          size = HIBYTE(v469.__r_.__value_.__r.__words[2]);
          if ((v469.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v211 = *md::LayoutContext::get<md::SharedResourcesContext>(*(this + 1));
            if (v211)
            {
              [v211 textureManager];
            }

            else
            {
              v466 = 0uLL;
            }

            LODWORD(v461[0]) = 0;
            LODWORD(v460[0]) = 0;
            LODWORD(v459[0]) = 0x40000000;
            LODWORD(v458[0]) = 1;
            LODWORD(v457[0]) = 1;
            LODWORD(v419) = 1;
            std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,float,ggl::Filter,ggl::Filter,ggl::Filter,0>();
          }

          v212 = __y[3];
          v213 = fminf(v207, v115);
          v214 = *v212;
          if (!*v212 || (v215 = *v214, LODWORD(v214) = *v214 == v113, *(v212 + 10) != 1) || v215 == 0.0 || v215 == v113)
          {
            v216 = *(v212 + v214 + 11);
            if (v216 != 2)
            {
              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(__y[3], 194, v216, 0, v213);
LABEL_228:
              *(v200 + 184) = v217;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

LABEL_230:
              v218 = +[VKDebugSettings sharedSettings];
              [v218 maskingOverlayOpacityFactor];
              v220 = v219;

              *(v200 + 184) = *(v200 + 184) * v220;
              v116 = v415;
              goto LABEL_231;
            }

            v215 = 0.0;
          }

          v469.__r_.__value_.__s.__data_[0] = 1;
          LOBYTE(v466) = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v212, 194, 0, &v469, v213);
          v245 = v114;
          v247 = v246;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v212, 194, 1, &v466, v213);
          v217 = v247 + ((v248 - v247) * v215);
          v115 = 23.0;
          v114 = v245;
          v113 = 1.0;
          goto LABEL_228;
        }

LABEL_231:
        if (v427 == 1)
        {
          (*(*__y + 56))(__y);
        }

        if (v426)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v426);
        }

        if (v424)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v424);
        }

        v221 = *(v117 + 39);
        if (*(v221 + 120))
        {
          if (*(v221 + 128))
          {
            v222 = *(v221 + 176);
            if (v222 < *(v221 + 168) && *(v117 + 4) && *(v221 + 200) == 1)
            {
              v223 = v222 + 1;
              *(v221 + 176) = v223;
              v224 = v223 >> 6;
              v225 = 1 << v223;
              *(*(v221 + 96) + 8 * (v223 >> 6)) &= ~(1 << v223);
              v226 = *(*(v221 + 72) + 8 * v223);
              v227 = *(*(v221 + 32) + 80);
              v228 = v227[1];
              if (v228 == *v227)
              {
                v230 = v227[11];
                if (!v230)
                {
                  goto LABEL_413;
                }

                v229 = (*(*v230 + 48))(v230);
                __p.__r_.__value_.__r.__words[0] = v229;
              }

              else
              {
                v229 = *(v228 - 8);
                __p.__r_.__value_.__r.__words[0] = v229;
                v227[1] = v228 - 8;
              }

              std::vector<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v227 + 4), &__p);
              __y = v229;
              v231 = v227[15];
              if (!v231)
              {
                goto LABEL_413;
              }

              (*(*v231 + 48))(v231, &__y);
              v232 = v229[17];
              v232[1] = 0;
              v233 = *(v221 + 40);
              *v232 = v233;
              v234 = v229[29];
              v235 = *(v221 + 48);
              if (v235)
              {
                atomic_fetch_add_explicit((v235 + 8), 1uLL, memory_order_relaxed);
              }

              v236 = v234[1];
              *v234 = v233;
              v234[1] = v235;
              if (v236)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v236);
              }

              v237 = v229[17];
              *(v237 + 24) = 0;
              v238 = *(v221 + 56);
              *(v237 + 16) = v238;
              v239 = v229[29];
              v240 = *(v221 + 64);
              if (v240)
              {
                atomic_fetch_add_explicit((v240 + 8), 1uLL, memory_order_relaxed);
              }

              v241 = *(v239 + 24);
              *(v239 + 16) = v238;
              *(v239 + 24) = v240;
              if (v241)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v241);
              }

              v242 = *(v221 + 32);
              v243 = *(v242 + 64);
              __y = *(v242 + 56);
              v424 = v243;
              if (v243)
              {
                atomic_fetch_add_explicit(&v243->__shared_owners_, 1uLL, memory_order_relaxed);
                ggl::PipelineSetup::setState(v229, &__y);
                std::__shared_weak_count::__release_shared[abi:nn200100](v243);
              }

              else
              {
                ggl::PipelineSetup::setState(v229, &__y);
              }

              *(v226 + 24) = *(*(v221 + 32) + 72);
              *(v226 + 32) = v229;
              *(v226 + 40) = 127;
              v244 = *(v117 + 4);
              *(v226 + 64) = v244;
              *(v221 + 152) = *(**(v244 + 64) + 48) - *(**(v244 + 64) + 40);
              *(v221 + 160) = *(*(v244 + 96) + 48) - *(*(v244 + 96) + 40);
              *(*(v221 + 96) + 8 * v224) |= v225;
              v116 = v415;
            }
          }
        }
      }

      v111 = (*v405 + 8);
      if ((*v405 + 8) == v400)
      {
        v249 = v406;
        v250 = v406[7];
        if (v250)
        {
          v251 = *(*(v116 + 360) + 336);
          *(v250 + 32) = v251;
          **(v250 + 96) &= ~1uLL;
          if (*(v250 + 120))
          {
            if (*(v250 + 128))
            {
              v252 = md::LayoutContext::get<md::CameraContext>(*(this + 1));
              v249 = v406;
              if (*(v250 + 200) == 1)
              {
                if (*(v250 + 192))
                {
                  v253 = v252;
                  v254 = *(v251 + 48);
                  v255 = v254[1];
                  if (v255 != *v254)
                  {
                    v256 = *(v255 - 8);
                    __p.__r_.__value_.__r.__words[0] = v256;
                    v254[1] = v255 - 8;
                    goto LABEL_338;
                  }

                  v314 = v254[11];
                  if (!v314)
                  {
                    goto LABEL_413;
                  }

                  v256 = (*(*v314 + 48))(v314);
                  __p.__r_.__value_.__r.__words[0] = v256;
LABEL_338:
                  std::vector<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v254 + 4), &__p);
                  __y = v256;
                  v315 = v254[15];
                  if (!v315)
                  {
LABEL_413:
                    std::__throw_bad_function_call[abi:nn200100]();
LABEL_414:
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  (*(*v315 + 48))(v315, &__y);
                  v316 = *(v256 + 136);
                  v316[1] = 0;
                  v317 = *(v250 + 40);
                  *v316 = v317;
                  v318 = *(v256 + 232);
                  v319 = *(v250 + 48);
                  if (v319)
                  {
                    atomic_fetch_add_explicit((v319 + 8), 1uLL, memory_order_relaxed);
                  }

                  v320 = v318[1];
                  *v318 = v317;
                  v318[1] = v319;
                  if (v320)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v320);
                  }

                  v321 = *(v256 + 136);
                  *(v321 + 24) = 0;
                  v322 = *(v250 + 56);
                  *(v321 + 16) = v322;
                  v323 = *(v256 + 232);
                  v324 = *(v250 + 64);
                  if (v324)
                  {
                    atomic_fetch_add_explicit((v324 + 8), 1uLL, memory_order_relaxed);
                  }

                  v325 = *(v323 + 24);
                  *(v323 + 16) = v322;
                  *(v323 + 24) = v324;
                  if (v325)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v325);
                  }

                  v326 = *(v250 + 32);
                  v327 = *(v326 + 24);
                  __y = *(v326 + 16);
                  v424 = v327;
                  if (v327)
                  {
                    atomic_fetch_add_explicit(&v327->__shared_owners_, 1uLL, memory_order_relaxed);
                    ggl::PipelineSetup::setState(v256, &__y);
                    std::__shared_weak_count::__release_shared[abi:nn200100](v327);
                  }

                  else
                  {
                    ggl::PipelineSetup::setState(v256, &__y);
                  }

                  **(v256 + 168) = *(v250 + 192);
                  v328 = *(gdc::Context::get<md::StyleLogicContext>(*(this + 1)) + 27);
                  v329 = *(*(v256 + 136) + 32);
                  ggl::BufferMemory::BufferMemory(&__p);
                  ggl::ResourceAccessor::accessConstantData(&__y, 0, v329, 1);
                  ggl::BufferMemory::operator=(&__p, &__y);
                  ggl::BufferMemory::~BufferMemory(&__y);
                  v330 = v445;
                  *(v445 + 20) = 0;
                  v331 = *(v253 + 5592);
                  if (!v331)
                  {
                    v331 = v253;
                  }

                  v332 = v331[471];
                  v333 = v331[171];
                  *&v334 = v332 * v331[173];
                  v335 = *&v334 * (1 << *(v250 + 1));
                  v336 = *(v250 + 192);
                  LODWORD(v334) = *(v336 + 80);
                  LODWORD(v332) = *(v336 + 84);
                  v337 = v333 * v328 / v335;
                  v338 = v337 / v334;
                  v339 = v337 / *&v332;
                  v340 = modf(v338 * *(v250 + 8), &__y);
                  v341 = modf(v339 * *(v250 + 4), &__y);
                  v342 = v340;
                  *&v341 = v341;
                  *v330 = v342;
                  *(v330 + 4) = LODWORD(v341);
                  *&v341 = v338;
                  v343 = v339;
                  *(v330 + 8) = LODWORD(v341);
                  *(v330 + 12) = v343;
                  *(v330 + 16) = *(v250 + 184);
                  ggl::BufferMemory::~BufferMemory(&__p);
                  v344 = *(v250 + 32);
                  v345 = 5;
                  if (*(v250 + 120) == 1)
                  {
                    v345 = 4;
                  }

                  v346 = **(v250 + 72);
                  *(v346 + 24) = v344[v345];
                  *(v346 + 32) = v256;
                  *(v346 + 40) = v413;
                  *(v346 + 64) = *v344;
                  **(v250 + 96) |= 1uLL;
                  *(v250 + 176) = 0;
                  v249 = v406;
                }
              }
            }
          }
        }

        v347 = v249[4];
        if (v249[5] != v347)
        {
          v348 = 0;
          do
          {
            v349 = *(v347 + 8 * v348);
            v421[0] = &unk_1F2A197B8;
            v421[1] = &a10;
            v421[2] = &v416;
            v422 = v421;
            v350 = *(v349 + 48);
            if (v350 && (v414 & 1) == 0)
            {
              v351 = *(v350 + 8);
              v352 = *(v350 + 16);
              while (v351 != v352)
              {
                v353 = *v351++;
                ggl::Batcher::reset((v353 + 1296));
                md::RenderItemPool::reset((v353 + 1376));
              }
            }

            v354 = 0;
            v419 = 0;
            do
            {
              if (*(v349 + 256 + v354) == 1)
              {
                switch(v354)
                {
                  case 2:
                    v371 = *(v349 + 48);
                    __p.__r_.__value_.__r.__words[0] = &unk_1F2A46C80;
                    __p.__r_.__value_.__l.__size_ = &v419;
                    __p.__r_.__value_.__r.__words[2] = v421;
                    *&v444 = &__p;
                    v372 = *(v371 + 8);
                    v373 = *(v371 + 16);
                    while (v372 != v373)
                    {
                      v374 = *v372;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, &__p);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v374, 1u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v372;
                    }

                    v396 = &__p;
                    goto LABEL_407;
                  case 3:
                    v359 = *(v349 + 48);
                    *&v453 = &unk_1F2A46CC8;
                    *(&v453 + 1) = &v419;
                    *&v454 = v421;
                    *(&v454 + 1) = &v453;
                    v360 = *(v359 + 8);
                    v361 = *(v359 + 16);
                    while (v360 != v361)
                    {
                      v362 = *v360;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, &v453);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v362, 2u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v360;
                    }

                    v396 = &v453;
                    goto LABEL_407;
                  case 4:
                    v379 = *(v349 + 48);
                    v469.__r_.__value_.__r.__words[0] = &unk_1F2A46D10;
                    v469.__r_.__value_.__l.__size_ = &v419;
                    v469.__r_.__value_.__r.__words[2] = v421;
                    v470 = &v469;
                    v380 = *(v379 + 8);
                    v381 = *(v379 + 16);
                    while (v380 != v381)
                    {
                      v382 = *v380;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, &v469);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v382, 4u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v380;
                    }

                    v396 = &v469;
                    goto LABEL_407;
                  case 5:
                    v384 = *(v349 + 48);
                    *&v466 = &unk_1F2A46D58;
                    *(&v466 + 1) = &v419;
                    v467 = v421;
                    v468 = &v466;
                    v385 = *(v384 + 8);
                    v386 = *(v384 + 16);
                    while (v385 != v386)
                    {
                      v387 = *v385;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, &v466);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v387, 8u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v385;
                    }

                    v396 = &v466;
                    goto LABEL_407;
                  case 6:
                    v375 = *(v349 + 48);
                    v465[0] = &unk_1F2A46DA0;
                    v465[1] = &v419;
                    v465[2] = v421;
                    v465[3] = v465;
                    v376 = *(v375 + 8);
                    v377 = *(v375 + 16);
                    while (v376 != v377)
                    {
                      v378 = *v376;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, v465);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v378, 0x10u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v376;
                    }

                    v396 = v465;
                    goto LABEL_407;
                  case 7:
                    v392 = *(v349 + 48);
                    *&v462 = &unk_1F2A46DE8;
                    *(&v462 + 1) = &v419;
                    v463 = v421;
                    v464 = &v462;
                    v393 = *(v392 + 8);
                    v394 = *(v392 + 16);
                    while (v393 != v394)
                    {
                      v395 = *v393;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, &v462);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v395, 0x20u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v393;
                    }

                    v396 = &v462;
                    goto LABEL_407;
                  case 8:
                    v367 = *(v349 + 48);
                    v461[0] = &unk_1F2A46E30;
                    v461[1] = &v419;
                    v461[2] = v421;
                    v461[3] = v461;
                    v368 = *(v367 + 8);
                    v369 = *(v367 + 16);
                    while (v368 != v369)
                    {
                      v370 = *v368;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, v461);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v370, 0x40u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v368;
                    }

                    v396 = v461;
                    goto LABEL_407;
                  case 9:
                    v388 = *(v349 + 48);
                    v460[0] = &unk_1F2A46E78;
                    v460[1] = &v419;
                    v460[2] = v421;
                    v460[3] = v460;
                    v389 = *(v388 + 8);
                    v390 = *(v388 + 16);
                    while (v389 != v390)
                    {
                      v391 = *v389;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, v460);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v391, 0x80u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v389;
                    }

                    v396 = v460;
                    goto LABEL_407;
                  case 10:
                    v355 = *(v349 + 48);
                    v459[0] = &unk_1F2A46EC0;
                    v459[1] = &v419;
                    v459[2] = v421;
                    v459[3] = v459;
                    v356 = *(v355 + 8);
                    v357 = *(v355 + 16);
                    while (v356 != v357)
                    {
                      v358 = *v356;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, v459);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v358, 0x100u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v356;
                    }

                    v396 = v459;
                    goto LABEL_407;
                  case 11:
                    v363 = *(v349 + 48);
                    v458[0] = &unk_1F2A46F08;
                    v458[1] = &v419;
                    v458[2] = v421;
                    v458[3] = v458;
                    v364 = *(v363 + 8);
                    v365 = *(v363 + 16);
                    while (v364 != v365)
                    {
                      v366 = *v364;
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](&__y, v458);
                      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v366, 0x200u, &__y);
                      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&__y);
                      ++v364;
                    }

                    v396 = v458;
LABEL_407:
                    std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v396);
                    break;
                  case 13:
                    v383 = *(v349 + 312);
                    v457[0] = &unk_1F2A46F50;
                    v457[1] = &v419;
                    v457[2] = v421;
                    v457[3] = v457;
                    md::MaskingOverlayRenderable::collectRenderItems(v383, 1, v457);
                    std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](v457);
                    break;
                  default:
                    std::function<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::operator()(v422, v354, *(v349 + 144 + 8 * v354));
                    break;
                }
              }

              v354 = v419 + 1;
              v419 = v354;
            }

            while (v354 < 0xE);
            std::__function::__value_func<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::~__value_func[abi:nn200100](v421);
            ++v348;
            v249 = v406;
            v347 = v406[4];
          }

          while (v348 < (v406[5] - v347) >> 3);
        }

        v397 = v249[7];
        if (v397)
        {
          v420[0] = &unk_1F2A19800;
          v420[1] = &a10;
          v420[2] = &v416;
          v420[3] = v420;
          md::MaskingOverlayRenderable::collectRenderItems(v397, 0, v420);
          std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](v420);
        }

        return;
      }
    }
  }

  v68 = *(v411 + 24);
  if (v68 > 0x46)
  {
    if (v68 == 72)
    {
      v69 = 104;
    }

    else
    {
      if (v68 != 71)
      {
        return;
      }

      v69 = 88;
    }
  }

  else if (v68 == 11)
  {
    v69 = 80;
  }

  else
  {
    if (v68 != 12)
    {
      return;
    }

    v69 = 96;
  }

  v404 = *(a6 + v69);
  if (v404)
  {
    v70 = *v67;
    if (v67[1] != *v67)
    {
      v71 = 0;
      do
      {
        v72 = *(v20[14] + 4 * v71);
        *(__p.__r_.__value_.__r.__words + 4) = *(v411 + 172);
        LOWORD(__p.__r_.__value_.__l.__data_) = *(v411 + 168);
        __p.__r_.__value_.__r.__words[2] = *(v411 + 184);
        LOBYTE(v444) = *(v411 + 192);
        DWORD2(v444) = v72;
        if (std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::find<md::SurfaceKey>(v404, &__p))
        {
          v73 = std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::find<md::SurfaceKey>(v404, &__p);
          if (!v73)
          {
            abort();
          }

          v74 = *(v73 + 9);
          if (v74)
          {
            v75 = 0;
            v76 = v70 + 144 * v71;
            do
            {
              if (v75 == *(v76 + 32))
              {
                v77 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(a1 + 360) + 344));
                v80 = *(a1 + 360);
                if (v414)
                {
                  v81 = (v80 + 8 * *(v76 + 132) + 48);
                }

                else
                {
                  v81 = (v80 + 16 * *(a7 + 132) + 8 * *(v76 + 132));
                }

                v82 = *v81;
                gdc::Tiled::Tiled(&__y, v76, v78, v79);
                v83 = a10;
                *&v453 = *(v76 + 112);
                v84 = *(v76 + 120);
                *(&v453 + 1) = v84;
                if (v84)
                {
                  atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v85 = v74[4];
                v469.__r_.__value_.__r.__words[0] = v74[3];
                v469.__r_.__value_.__l.__size_ = v85;
                if (v85)
                {
                  atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                *&v466 = *(v76 + 64);
                v86 = *(v76 + 72);
                *(&v466 + 1) = v86;
                if (v86)
                {
                  atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                LOWORD(v465[0]) = 0;
                BYTE2(v465[0]) = 0;
                md::COverlayRenderLayer::drapeOnTerrainIfNecessary(a1, *(this + 1), v83, v414, v413, v411 + 168, v76, v77, v82, &v453, &v469, &v466, (v76 + 80), v465);
                if (v86)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v86);
                }

                if (v85)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v85);
                }

                if (v84)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v84);
                }

                *&v453 = v77;
                std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v416 + 72), &v453);
              }

              v74 = *v74;
              ++v75;
            }

            while (v74);
          }
        }

        ++v71;
        v20 = v406;
        v87 = v406[12];
        v70 = *v87;
      }

      while (v71 < 0x8E38E38E38E38E39 * ((v87[1] - *v87) >> 4));
    }
  }
}

void sub_1B2F69C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  v28 = v26[3];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  operator delete(v26);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void md::COverlayRenderLayer::drapeOnTerrainIfNecessary(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, void *a11, uint64_t *a12, uint64_t *a13, _BYTE *a14)
{
  v20 = gdc::Context::context<md::TerrainMeshProviderContext>(a2);
  if (v20)
  {
    v21 = v20;
    v22 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(v20 + 1, a6);
    if (v22)
    {
      v87 = v21 + 6;
      if (*(v22 + 6) != v21 + 6)
      {
        v23 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(v21 + 1, a6);
        if (v23)
        {
          v87 = *(v23 + 6);
        }

        v24 = *(*(a1 + 360) + 296);
        shared_owners = v24->__shared_owners_;
        if (shared_owners == v24->__vftable)
        {
          shared_weak_owners = v24[3].__shared_weak_owners_;
          if (!shared_weak_owners)
          {
            goto LABEL_74;
          }

          on_zero_shared_weak = (*(*shared_weak_owners + 48))(shared_weak_owners);
          v90 = on_zero_shared_weak;
        }

        else
        {
          on_zero_shared_weak = shared_owners[-1].__on_zero_shared_weak;
          v90 = on_zero_shared_weak;
          v24->__shared_owners_ = &shared_owners[-1].__on_zero_shared_weak;
        }

        v86 = a5;
        std::vector<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](&v24[1].__shared_owners_, &v90);
        v91 = on_zero_shared_weak;
        v44 = v24[5].__vftable;
        if (v44)
        {
          (*(v44->~__shared_weak_count + 6))(v44, &v91);
          v45 = 264;
          if (a14[2])
          {
            v45 = 280;
          }

          v46 = (*(a1 + 360) + v45);
          v48 = *v46;
          v47 = v46[1];
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = *(on_zero_shared_weak + 136);
          v49[1] = 0;
          v50 = *a12;
          *v49 = *a12;
          v51 = *(on_zero_shared_weak + 232);
          v52 = a12[1];
          if (v52)
          {
            atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
          }

          v53 = v51[1];
          *v51 = v50;
          v51[1] = v52;
          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v53);
          }

          v54 = *(on_zero_shared_weak + 136);
          *(v54 + 24) = 0;
          v55 = *a13;
          *(v54 + 16) = *a13;
          v56 = *(on_zero_shared_weak + 232);
          v57 = a13[1];
          if (v57)
          {
            atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
          }

          v58 = *(v56 + 24);
          *(v56 + 16) = v55;
          *(v56 + 24) = v57;
          if (v58)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v58);
          }

          v59 = *(on_zero_shared_weak + 136);
          *(v59 + 56) = 0;
          v60 = *a10;
          *(v59 + 48) = *a10;
          v61 = *(on_zero_shared_weak + 232);
          v62 = a10[1];
          if (v62)
          {
            atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
          }

          v63 = *(v61 + 56);
          *(v61 + 48) = v60;
          *(v61 + 56) = v62;
          if (v63)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v63);
          }

          **(on_zero_shared_weak + 168) = *a11;
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            v91 = v48;
            v92 = v47;
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(on_zero_shared_weak, &v91);
            std::__shared_weak_count::__release_shared[abi:nn200100](v47);
            std::__shared_weak_count::__release_shared[abi:nn200100](v47);
          }

          else
          {
            v91 = v48;
            v92 = 0;
            ggl::PipelineSetup::setState(on_zero_shared_weak, &v91);
          }

          if (*(a1 + 394) == 1)
          {
            v64 = 168;
            if (a4)
            {
              v64 = 176;
            }

            v65 = *(*(a1 + 360) + v64);
            v66 = *(on_zero_shared_weak + 136);
            *(v66 + 64) = v65;
            *(v66 + 72) = 0;
            v67 = *(on_zero_shared_weak + 232);
            v68 = *(v67 + 72);
            *(v67 + 64) = 0;
            *(v67 + 72) = 0;
            if (v68)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v68);
            }
          }

          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v47);
          }

          if (*(a1 + 394) == 1)
          {
            v69 = 168;
            if (a4)
            {
              v69 = 176;
            }

            v70 = *(*(a1 + 360) + v69);
            v71 = *(on_zero_shared_weak + 136);
            *(v71 + 64) = v70;
            *(v71 + 72) = 0;
            v72 = *(on_zero_shared_weak + 232);
            v73 = *(v72 + 72);
            *(v72 + 64) = 0;
            *(v72 + 72) = 0;
            if (v73)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v73);
            }
          }

          v74 = v87[6];
          *(a8 + 64) = v74;
          *(a8 + 24) = a9;
          *(a8 + 32) = on_zero_shared_weak;
          *(a8 + 48) = a3;
          *(a8 + 40) = v86;
          if (a14[1] == 1)
          {
            v75 = (*(*(v74 + 96) + 48) - *(*(v74 + 96) + 40)) / *(*(v74 + 96) + 8) - v87[12];
            *(a8 + 72) = 0;
            *(a8 + 80) = v75;
            *(a8 + 88) = 0;
            *(a8 + 96) = 1;
          }

          v76 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>::pop(*(*(a1 + 360) + 448));
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v91, v76);
          if (*(a6 + 1) >= *(a7 + 1))
          {
            v80 = v93;
            *v93 = 15360;
            *(v80 + 2) = COERCE_UNSIGNED_INT(1.0);
            LOWORD(v81) = 0;
          }

          else
          {
            __powidf2();
            v78 = *(a6 + 8) * v77 - *(a7 + 8);
            v79 = *(a7 + 4) + ~*(a6 + 4) * v77 + 1;
            *&v77 = v77;
            v80 = v93;
            *v93 = LOWORD(v77);
            *(v80 + 1) = v78;
            *(v80 + 2) = LOWORD(v77);
            v81 = v79;
          }

          *(v80 + 3) = v81;
          ggl::BufferMemory::~BufferMemory(&v91);
          v82 = *(on_zero_shared_weak + 136);
          *(v82 + 32) = v76;
          *(v82 + 40) = 0;
          v83 = *(on_zero_shared_weak + 232);
          v84 = *(v83 + 40);
          *(v83 + 32) = 0;
          *(v83 + 40) = 0;
          if (v84)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v84);
          }

          return;
        }

LABEL_74:
        v85 = std::__throw_bad_function_call[abi:nn200100]();
        if ((a7 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v24);
        }

        _Unwind_Resume(v85);
      }
    }
  }

  v27 = ggl::FragmentedPool<ggl::Textured::SRGBBlendPos2DUVPipelineSetup>::pop(*(*(a1 + 360) + 304));
  v88 = a7;
  if (*a14 == 1)
  {
    v28 = *(a1 + 360);
    if (a14[2] == 1)
    {
      v29 = v28[27];
      v30 = v28[28];
      if (!v30)
      {
        goto LABEL_15;
      }

LABEL_13:
      v32 = 0;
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v91 = v29;
      v92 = v30;
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_16;
    }

    v29 = v28[25];
    v30 = v28[26];
    if (v30)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v31 = *(a1 + 360);
    v29 = *(v31 + 184);
    v30 = *(v31 + 192);
    if (v30)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v30 = 0;
  v91 = v29;
  v92 = 0;
  v32 = 1;
LABEL_16:
  md::COverlayRenderLayer::setTexturePipeline<ggl::Textured::SRGBBlendPos2DUVPipelineSetup,ggl::Textured::SRGBBlendPos2DUVPipelineState>(a1, v27, *a12, a12[1], a13, a10, a11, a4, &v91);
  if (v92)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v92);
  }

  if (*(a1 + 394) == 1)
  {
    v33 = 168;
    if (a4)
    {
      v33 = 176;
    }

    v34 = *(*(a1 + 360) + v33);
    v35 = *(v27 + 136);
    *(v35 + 64) = v34;
    *(v35 + 72) = 0;
    v36 = *(v27 + 232);
    v37 = *(v36 + 72);
    *(v36 + 64) = 0;
    *(v36 + 72) = 0;
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    }
  }

  v38 = *(a1 + 360);
  if ((*a14 & 1) == 0)
  {
    *(a8 + 64) = *(v38 + 64);
    *(a8 + 24) = a9;
    *(a8 + 32) = v27;
    *(a8 + 48) = a3;
    *(a8 + 40) = a5;
    if (v32)
    {
      return;
    }

    goto LABEL_29;
  }

  *(a8 + 64) = *(v38 + 80);
  *(a8 + 24) = a9;
  *(a8 + 32) = v27;
  *(a8 + 48) = a3;
  *(a8 + 40) = a5;
  TileScalar = md::COverlayRenderLayer::getTileScalar(*(v38 + 448), a6, v88);
  v40 = *(v27 + 136);
  *(v40 + 32) = TileScalar;
  *(v40 + 40) = 0;
  v41 = *(v27 + 232);
  v42 = *(v41 + 40);
  *(v41 + 32) = 0;
  *(v41 + 40) = 0;
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  if ((v32 & 1) == 0)
  {
LABEL_29:

    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t ggl::FragmentedPool<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(v7);
}

void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8, char a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = a6;
  v42 = a3;
  v11 = *a2;
  v12 = *(*a2 + 232);
  if (v12)
  {
    v13 = v12 == a1;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    *(v11 + 232) = a1;
  }

  *(a4 + 57) = a5;
  v14 = *(a4 + 80);
  v31[4] = *(a4 + 64);
  v31[5] = v14;
  v15 = *(a4 + 16);
  v31[0] = *a4;
  v31[1] = v15;
  v16 = *(a4 + 48);
  v31[2] = *(a4 + 32);
  v31[3] = v16;
  v17 = *(a4 + 112);
  v31[6] = *(a4 + 96);
  *v32 = v17;
  *&v32[9] = *(a4 + 121);
  v18 = *(a4 + 152);
  v33 = *(a4 + 144);
  v34 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *a2;
  }

  v36 = *(a4 + 164);
  v35 = *(a4 + 160);
  v37 = *(a4 + 176);
  v38 = *(a4 + 184);
  v19 = *(a4 + 208);
  v39 = *(a4 + 192);
  v40 = v19;
  v32[22] = a7;
  v32[23] = a8;
  v20 = v32[21] | a7;
  v32[21] |= a7;
  *&v32[8] = 1065353216;
  md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::layout(v11, v31);
  if (v32[24])
  {
    v21 = 255;
  }

  else
  {
    v21 = 15;
  }

  if (v20)
  {
    v22 = v21 | 0x300;
  }

  else
  {
    v22 = v21;
  }

  v23 = *a2;
  if (a9)
  {
    v44[0] = &unk_1F2A196E0;
    v44[1] = &v41;
    v44[2] = &v42;
    v44[3] = v44;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    while (v24 != v25)
    {
      v26 = *v24;
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v45, v44);
      if (*(v26 + 1424) == 1)
      {
        ggl::Batcher::reset((v26 + 1296));
        md::RenderItemPool::reset((v26 + 1376));
        std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v46, v45);
        md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v26, v22, v46);
        std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v46);
      }

      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v45);
      ++v24;
    }

    v30 = v44;
  }

  else
  {
    v43[0] = &unk_1F2A196E0;
    v43[1] = &v41;
    v43[2] = &v42;
    v43[3] = v43;
    v27 = *(v23 + 8);
    v28 = *(v23 + 16);
    while (v27 != v28)
    {
      v29 = *v27;
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v46, v43);
      md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v29, v22, v46);
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v46);
      ++v27;
    }

    v30 = v43;
  }

  std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v30);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }
}

void sub_1B2F6ACE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8, char a9)
{
  v9 = a2;
  v139 = *MEMORY[0x1E69E9840];
  v128 = a6;
  v129 = a3;
  v10 = *a2;
  v11 = *(*a2 + 232);
  if (v11)
  {
    v12 = v11 == a1;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    *(v10 + 232) = a1;
    v11 = a1;
  }

  *(a4 + 57) = a5;
  v13 = *(a4 + 80);
  v116 = *(a4 + 64);
  v117 = v13;
  v14 = *(a4 + 16);
  *v112 = *a4;
  v113 = v14;
  v15 = *(a4 + 48);
  v114 = *(a4 + 32);
  v115 = v15;
  v16 = *(a4 + 112);
  v118 = *(a4 + 96);
  *v119 = v16;
  *&v119[9] = *(a4 + 121);
  v17 = *(a4 + 152);
  v120 = *(a4 + 144);
  v121 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *a2;
    v11 = *(*a2 + 232);
  }

  v123 = *(a4 + 164);
  v122 = *(a4 + 160);
  v124 = *(a4 + 176);
  v125 = *(a4 + 184);
  v18 = *(a4 + 208);
  v126 = *(a4 + 192);
  v127 = v18;
  v119[22] = a7;
  v119[23] = a8;
  v19 = v119[21] | a7;
  v119[21] |= a7;
  *&v119[8] = 1065353216;
  if (*(v11 + 304) == 1)
  {
    v20 = *(v11 + 176);
    *(v10 + 56) = v20;
    if (v119[24] == 1)
    {
      *(v10 + 88) = v20;
    }
  }

  if (v119[20] == 1)
  {
    *(v10 + 64) = *(v11 + 200);
    *(v10 + 72) = *(v11 + 208);
    *(v10 + 80) = *(v11 + 240);
    v21 = v119[24];
    if (v119[24] == 1)
    {
      *(v10 + 96) = *(v11 + 200);
      *(v10 + 104) = *(v11 + 208);
      *(v10 + 112) = *(v11 + 240);
    }

    v22 = *(v11 + 248);
    *(v10 + 120) = v22;
    v23 = 128;
    goto LABEL_21;
  }

  v24 = BYTE8(v115);
  *(v10 + 64) = *(v11 + 184);
  *(v10 + 72) = *(v11 + 208);
  if (v24 == 1)
  {
    *(v10 + 80) = *(v11 + 232);
    v21 = v119[24];
    if (v119[24] == 1)
    {
      *(v10 + 96) = *(v11 + 184);
      *(v10 + 104) = *(v11 + 208);
      v22 = *(v11 + 232);
LABEL_20:
      v23 = 112;
LABEL_21:
      *(v10 + v23) = v22;
    }
  }

  else
  {
    *(v10 + 80) = *(v11 + 224);
    v21 = v119[24];
    if (v119[24] == 1)
    {
      *(v10 + 96) = *(v11 + 184);
      *(v10 + 104) = *(v11 + 208);
      v22 = *(v11 + 224);
      goto LABEL_20;
    }
  }

  v25 = *(v10 + 8);
  v108 = *(v10 + 16);
  if (v108 != v25 && (*(*v25 + 1456) & 1) == 0)
  {
    md::LayoutContext::frameState(v112[0]);
    if (*(v26 + 632))
    {
      v27 = *(v112[0] + 1);
      v110 = md::LayoutContext::get<md::CameraContext>(v27);
      v105 = v9;
      if (*(v110 + 3784))
      {
        v28 = *(v10 + 144);
        if (v28)
        {
          v29 = 0;
          v30 = 0;
          v31 = *(gdc::Camera::cameraFrame(v110) + 16);
          v109 = v28 + 1696;
          v32 = v28 + 32;
          do
          {
            for (i = 0; i != 4; ++i)
            {
              v34 = v29 | (4 * i);
              geo::Frustum<double>::transformed(v136, v110 + 984, v109 + 56 * v34);
              v35 = v32 + 104 * v34;
              v36 = *(v35 + 56);
              v37 = *(v35 + 88);
              v138[1] = *(v35 + 72);
              v138[2] = v37;
              v138[0] = v36;
              v132 = 0uLL;
              v133 = v31;
              gm::Box<double,3>::operator+=(v138, &v132);
              for (j = 0; j != 12; j += 2)
              {
                v39 = 0;
                v40 = *&v136[j + 1];
                v130 = v136[j];
                v131 = v40;
                do
                {
                  v41 = v138 + v39;
                  if (*(&v130 + v39) >= 0.0)
                  {
                    v41 = &v138[1] + v39 + 8;
                  }

                  *(&v132 + v39) = *v41;
                  v39 += 8;
                }

                while (v39 != 24);
                v42 = 0;
                v43 = 0.0;
                do
                {
                  v43 = v43 + *(&v136[j] + v42) * *(&v132 + v42);
                  v42 += 8;
                }

                while (v42 != 24);
                v44 = *(&v136[j + 1] + 1) + v43;
                if (v44 < 0.0)
                {
                  break;
                }
              }

              v45 = 1 << (4 * i + v29);
              if (v44 < 0.0)
              {
                v45 = 0;
              }

              v30 |= v45;
            }

            ++v29;
          }

          while (v29 != 4);
          goto LABEL_50;
        }

        ggl::DataAccess<ggl::Tile::View>::DataAccess(v136, *(v10 + 192), 0);
        v47 = v137;
        v48 = 0.0;
      }

      else
      {
        v46 = 0.0;
        if (*md::LayoutContext::get<md::ElevationContext>(v27) == 1 && *(v10 + 184) == 1)
        {
          v46 = *(gdc::Camera::cameraFrame(v110) + 16) * 0.0000000249532021 * (1 << *(v10 + 153));
        }

        ggl::DataAccess<ggl::Tile::View>::DataAccess(v136, *(v10 + 192), 0);
        v47 = v137;
        v48 = v46;
      }

      v30 = ggl::CullingGrid::intersectedCellsForView(v47, v48);
      ggl::BufferMemory::~BufferMemory(v136);
LABEL_50:
      v108 = *(v10 + 16);
      if (*(v10 + 8) == v108)
      {
        v25 = *(v10 + 8);
        v9 = v105;
      }

      else
      {
        v49 = vdupq_n_s64(2uLL);
        v25 = *(v10 + 8);
        v50 = v25;
        v9 = v105;
        do
        {
          v51 = *v50;
          v52 = *(*v50 + 1400);
          v53 = *(*v50 + 1408);
          if (v52 == v53)
          {
            v54 = 0;
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = *v52++;
              v56 = (*(v55 + 96) & v30) != 0;
              v54 |= v56;
              *(v55 + 48) = v56;
            }

            while (v52 != v53);
          }

          v57 = v54 & 1;
          v58 = (v51 + 264);
          v59 = 10;
          v60 = xmmword_1B33B0560;
          do
          {
            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v60)).u8[0])
            {
              *(v58 - 128) = v57;
            }

            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v60)).i32[1])
            {
              *v58 = v57;
            }

            v60 = vaddq_s64(v60, v49);
            v58 += 256;
            v59 -= 2;
          }

          while (v59);
          *(v51 + 1424) = v57;
          ++v50;
        }

        while (v50 != v108);
      }

      goto LABEL_66;
    }

    v25 = *(v10 + 8);
    v108 = *(v10 + 16);
  }

LABEL_66:
  if (v25 == v108)
  {
    goto LABEL_147;
  }

  v61 = v25;
  v106 = v9;
  v111 = vdupq_n_s64(2uLL);
  do
  {
    v62 = *v61;
    if (*(*v61 + 1424) == 1)
    {
      v107 = v61;
      md::PolylineOverlayStyle::layout(*(v62 + 1472), v112);
      v63 = *(v62 + 1472);
      os_unfair_lock_lock((v63 + 196));
      v64 = *(v63 + 152);
      v65 = *(v63 + 156);
      os_unfair_lock_unlock((v63 + 196));
      v66 = *(v62 + 1400);
      for (k = *(v62 + 1408); v66 != k; ++v66)
      {
        v68 = *v66;
        if (*(*v66 + 48) == 1)
        {
          v69 = *(v68 + 104) >= v64 && *(v68 + 100) <= v65;
          *(v68 + 48) = v69;
        }
      }

      v70 = **(v62 + 1472);
      v71 = (v62 + 264);
      v72 = 10;
      v73 = xmmword_1B33B0560;
      v61 = v107;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v73)).u8[0])
        {
          *(v71 - 128) = v70;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v73)).i32[1])
        {
          *v71 = v70;
        }

        v73 = vaddq_s64(v73, v111);
        v71 += 256;
        v72 -= 2;
      }

      while (v72);
      *(v62 + 1424) = v70;
      if (v70)
      {
        v74 = 0;
        LOBYTE(v132) = *(v62 + 1464);
        BYTE1(v132) = BYTE8(v117);
        BYTE2(v132) = v119[23];
        BYTE3(v132) = v119[22];
        v75 = *(*(v62 + 8) + 232);
        while (1)
        {
          v76 = v62 + 16 + (v74 << 7);
          if (*(*(v62 + 1472) + v74 + 120) == 1)
          {
            break;
          }

          *(v76 + 120) = 0;
LABEL_143:
          if (++v74 == 10)
          {
            v61 = v107;
            goto LABEL_145;
          }
        }

        *(v76 + 120) = 1;
        *(v76 + 40) = BYTE9(v115);
        if (v74 > 9u)
        {
          v79 = 0;
        }

        else
        {
          if (((1 << v74) & 0x255) != 0)
          {
            v77 = v75[20];
            v78 = v77[1];
            if (v78 == *v77)
            {
              v84 = v77[11];
              if (!v84)
              {
                goto LABEL_167;
              }

              v79 = (*(*v84 + 48))(v84, v73);
              *&v138[0] = v79;
            }

            else
            {
              v79 = *(v78 - 8);
              *&v138[0] = v79;
              v77[1] = v78 - 8;
            }

            std::vector<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v77 + 4), v138);
            *&v136[0] = v79;
            v85 = v77[15];
            if (!v85)
            {
              goto LABEL_167;
            }
          }

          else if (((1 << v74) & 0x122) != 0)
          {
            v80 = v75[19];
            v81 = v80[1];
            if (v81 == *v80)
            {
              v86 = v80[11];
              if (!v86)
              {
                goto LABEL_167;
              }

              v79 = (*(*v86 + 48))(v86, v73);
              *&v138[0] = v79;
            }

            else
            {
              v79 = *(v81 - 8);
              *&v138[0] = v79;
              v80[1] = v81 - 8;
            }

            std::vector<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v80 + 4), v138);
            *&v136[0] = v79;
            v85 = v80[15];
            if (!v85)
            {
              goto LABEL_167;
            }
          }

          else
          {
            v82 = v75[21];
            v83 = v82[1];
            if (v83 == *v82)
            {
              v87 = v82[11];
              if (!v87)
              {
                goto LABEL_167;
              }

              v79 = (*(*v87 + 48))(v87, v73);
              *&v138[0] = v79;
            }

            else
            {
              v79 = *(v83 - 8);
              *&v138[0] = v79;
              v82[1] = v83 - 8;
            }

            std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v82 + 4), v138);
            *&v136[0] = v79;
            v85 = v82[15];
            if (!v85)
            {
LABEL_167:
              std::__throw_bad_function_call[abi:nn200100]();
            }
          }

          (*(*v85 + 48))(v85, v136);
        }

        v88 = *(*(v62 + 8) + 232);
        if (v74 <= 4u)
        {
          if (v74 > 1u)
          {
            if (v74 != 2)
            {
              if (v74 != 3)
              {
                md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(v136, v88[12], &v132);
                goto LABEL_128;
              }

              goto LABEL_127;
            }

LABEL_119:
            md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(v136, v88[10], &v132);
            goto LABEL_128;
          }

          if (!v74)
          {
            md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(v136, v88[8], &v132);
            goto LABEL_128;
          }
        }

        else
        {
          if (v74 <= 7u)
          {
            if (v74 == 5)
            {
              md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaShader>>::pipelineStateForFunctionConstants(v136, v88[13], &v132);
              goto LABEL_128;
            }

            if (v74 == 6)
            {
              md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(v136, v88[14], &v132);
LABEL_128:
              v138[0] = v136[0];
LABEL_129:
              ggl::PipelineSetup::setState(v79, v138);
              if (*(&v138[0] + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v138[0] + 1));
              }

              **(v79 + 168) = *(v75[32] + 16);
              if (v79)
              {
                v89 = *(v62 + 1472);
                if (v89)
                {
                  os_unfair_lock_lock(v89 + 49);
                  os_unfair_lock_unlock(v89 + 49);
                  v90 = *(v62 + 1472);
                  os_unfair_lock_lock((v90 + 196));
                  os_unfair_lock_unlock((v90 + 196));
                  v92 = *(v90 + 168);
                  v91 = *(v90 + 176);
                  if (v92 != v91)
                  {
                    v93 = v92 + 20;
                    do
                    {
                      v94 = *(v93 - 8) < 1.0 || v93 == v91;
                      v93 += 20;
                    }

                    while (!v94);
                  }

                  operator new();
                }
              }

              *(v76 + 32) = v79;
              goto LABEL_143;
            }

LABEL_127:
            md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>::pipelineStateForFunctionConstants(v136, v88[11], &v132);
            goto LABEL_128;
          }

          if (v74 != 8)
          {
            if (v74 != 9)
            {
              v138[0] = 0uLL;
              goto LABEL_129;
            }

            goto LABEL_119;
          }
        }

        md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaShader>>::pipelineStateForFunctionConstants(v136, v88[9], &v132);
        goto LABEL_128;
      }
    }

LABEL_145:
    ++v61;
  }

  while (v61 != v108);
  v21 = v119[24];
  v19 = v119[21];
  v9 = v106;
LABEL_147:
  if (v21)
  {
    v95 = 255;
  }

  else
  {
    v95 = 15;
  }

  if (v19)
  {
    v96 = v95 | 0x300;
  }

  else
  {
    v96 = v95;
  }

  v97 = *v9;
  if (a9)
  {
    v135[0] = &unk_1F2A19728;
    v135[1] = &v128;
    v135[2] = &v129;
    v135[3] = v135;
    v98 = *(v97 + 8);
    v99 = *(v97 + 16);
    while (v98 != v99)
    {
      v100 = *v98;
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v138, v135);
      if (*(v100 + 1424) == 1)
      {
        ggl::Batcher::reset((v100 + 1296));
        md::RenderItemPool::reset((v100 + 1376));
        std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v136, v138);
        md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v100, v96, v136);
        std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v136);
      }

      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v138);
      ++v98;
    }

    v104 = v135;
  }

  else
  {
    v134[0] = &unk_1F2A19728;
    v134[1] = &v128;
    v134[2] = &v129;
    v134[3] = v134;
    v101 = *(v97 + 8);
    v102 = *(v97 + 16);
    while (v101 != v102)
    {
      v103 = *v101;
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](v136, v134);
      md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(v103, v96, v136);
      std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v136);
      ++v101;
    }

    v104 = v134;
  }

  std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v104);
  if (v121)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v121);
  }
}

void sub_1B2F6BD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v63 - 176);
  std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&a63);
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a40);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::__emplace_unique_key_args<std::pair<signed char,BOOL>,std::piecewise_construct_t const&,std::tuple<std::pair<signed char,BOOL> const&>,std::tuple<>>(void *a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v3 = ((a2 << 6) + (a2 >> 2) + a3 - 0x61C8864680B583EBLL) ^ a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = ((a2 << 6) + (a2 >> 2) + a3 - 0x61C8864680B583EBLL) ^ a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = v3 & (*&v4 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (*(v8 + 16) != a2 || *(v8 + 17) != a3)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_1B2F6C25C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::zone_mallocator *std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_2,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_2>,void ()(ggl::RenderItem *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 48) = **(a1 + 8) + 8;
  v4 = *v3;
  v6 = v2;
  return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v4 + 72), &v6);
}

__n128 std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_2,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_2>,void ()(ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A19800;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_1,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_1>,void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::operator()(ggl::zone_mallocator *result, unsigned __int8 *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  if (v5 > 6)
  {
    if (*a2 <= 0xAu)
    {
      if (v5 - 8 < 2)
      {
        v7 = **(result + 1) + 6;
        goto LABEL_22;
      }

      if (v5 == 7)
      {
        v7 = **(result + 1) + 5;
        goto LABEL_22;
      }

      if (v5 != 10)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v5 == 11)
    {
LABEL_18:
      v7 = **(result + 1) + 3;
      goto LABEL_22;
    }

    if (v5 == 13)
    {
      v7 = **(result + 1) + 7;
      goto LABEL_22;
    }

    if (v5 != 12)
    {
      return result;
    }

LABEL_17:
    v7 = **(result + 1);
    goto LABEL_22;
  }

  if (*a2 <= 2u)
  {
    if (v5 >= 2)
    {
      v7 = **(result + 1) + 1;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (v5 - 4 < 2)
  {
    goto LABEL_18;
  }

  if (v5 != 3)
  {
    if (v5 != 6)
    {
      return result;
    }

    v7 = **(result + 1) + 4;
    goto LABEL_22;
  }

LABEL_11:
  v7 = **(result + 1) + 2;
LABEL_22:
  v9[1] = v3;
  v9[2] = v4;
  *(v6 + 48) = v7;
  v8 = **(result + 2);
  v9[0] = v6;
  return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v8 + 72), v9);
}

__n128 std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_1,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_1>,void ()(md::PolygonOverlayRenderable::Pass,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A197B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_0,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_0>,void ()(ggl::RenderItem *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 48) = **(a1 + 8);
  v4 = *v3;
  v6 = v2;
  return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v4 + 72), &v6);
}

__n128 std::__function::__func<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_0,std::allocator<md::COverlayRenderLayer::layoutResource(md::OverlayTileData::OverlayTileResource const&,md::MapTileDataRenderable<md::OverlayTileData> const*,ggl::CommandBuffer *,md::LayoutContext const&,md::OverlaysContext const*,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,std::unordered_map<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,std::allocator<std::pair<std::pair<signed char,BOOL> const,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>> &,float,float,BOOL)::$_0>,void ()(ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A19770;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::shared_ptr<md::ARAssetOcclusionMeshData>,std::hash<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::equal_to<std::shared_ptr<md::ARAssetOcclusionMeshData>>,std::allocator<std::shared_ptr<md::ARAssetOcclusionMeshData>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 1424) == 1)
  {
    memset(&v50, 0, sizeof(v50));
    std::vector<unsigned int>::reserve(&v50, 5uLL);
    v6 = 0;
    v7 = 0;
    v48 = a1 + 16;
    v8 = (a1 + 136);
    do
    {
      if (((a2 >> v6) & 1) != 0 && *v8 == 1)
      {
        LODWORD(v51) = v6;
        std::vector<unsigned int>::push_back[abi:nn200100](&v50, &v51);
        v9 = *(*(a1 + 8) + 8 * v6 + 56);
        *(v8 - 12) = v9;
        v7 |= *(v9 + 58) == 1;
      }

      ++v6;
      v8 += 128;
    }

    while (v6 != 10);
    begin = v50.__begin_;
    if (v50.__begin_ != v50.__end_)
    {
      v11 = *(a1 + 1400);
      v12 = *(a1 + 1408);
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 16;
        if (v7)
        {
          v14 = 32;
        }

        v45 = *(a1 + 1408);
        v46 = v14;
        do
        {
          v15 = *v11;
          if (*(*v11 + 48) == 1)
          {
            if (*(v15 + 88) != v13)
            {
              v47 = v13;
              if (v13)
              {
                v16 = ggl::Batcher::commit((a1 + 1296), 0xC8u, v5);
                if (v16[1] != *v16)
                {
                  v17 = v50.__begin_;
                  end = v50.__end_;
                  if (v50.__begin_ != v50.__end_)
                  {
                    v19 = v16;
                    do
                    {
                      v20 = *v17;
                      v51 = &off_1F2A5D8B8;
                      v21 = v48 + (v20 << 7);
                      v52 = *(v21 + 8);
                      v53 = *(v21 + 24);
                      v54 = *(v21 + 40);
                      v58 = *(v21 + 104);
                      v57 = *(v21 + 88);
                      v56 = *(v21 + 72);
                      v55 = *(v21 + 56);
                      v22 = *(a1 + 1384);
                      v23 = v22[1];
                      if (v23 == *(a1 + 1392))
                      {
                        v22 = *v22;
                        if (!v22)
                        {
                          v22 = malloc_type_malloc(120 * v23 + 16, 0x1020040EDED9539uLL);
                          *v22 = 0;
                          v22[1] = 0;
                          **(a1 + 1384) = v22;
                        }

                        *(a1 + 1384) = v22;
                        v23 = v22[1];
                      }

                      v24 = &v22[15 * v23];
                      v22[1] = v23 + 1;
                      v24[2] = &off_1F2A5D8B8;
                      v25 = v52;
                      v26 = v53;
                      *(v24 + 7) = v54;
                      *(v24 + 5) = v26;
                      *(v24 + 3) = v25;
                      v27 = v55;
                      v28 = v56;
                      v29 = v57;
                      *(v24 + 15) = v58;
                      *(v24 + 13) = v29;
                      *(v24 + 11) = v28;
                      *(v24 + 9) = v27;
                      ggl::RenderItem::~RenderItem(&v51);
                      v24[10] = v47;
                      v30 = *v19;
                      v24[13] = *v19;
                      v24[14] = (v19[1] - v30) >> 4;
                      std::function<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v20, (v24 + 2));
                      ++v17;
                    }

                    while (v17 != end);
                  }
                }
              }

              v15 = *v11;
              v13 = *(*v11 + 88);
              v12 = v45;
            }

            ggl::Batcher::addRange(a1 + 1296, (v15 + v46));
          }

          ++v11;
        }

        while (v11 != v12);
        begin = v50.__begin_;
      }

      v31 = ggl::Batcher::commit((a1 + 1296), 0xC8u, v5);
      if (v31[1] != *v31)
      {
        v32 = v50.__end_;
        if (begin != v50.__end_)
        {
          v33 = v31;
          do
          {
            v34 = *begin;
            v51 = &off_1F2A5D8B8;
            v35 = v48 + (v34 << 7);
            v52 = *(v35 + 8);
            v53 = *(v35 + 24);
            v54 = *(v35 + 40);
            v58 = *(v35 + 104);
            v57 = *(v35 + 88);
            v56 = *(v35 + 72);
            v55 = *(v35 + 56);
            v36 = *(a1 + 1384);
            v37 = v36[1];
            if (v37 == *(a1 + 1392))
            {
              v36 = *v36;
              if (!v36)
              {
                v36 = malloc_type_malloc(120 * v37 + 16, 0x1020040EDED9539uLL);
                *v36 = 0;
                v36[1] = 0;
                **(a1 + 1384) = v36;
              }

              *(a1 + 1384) = v36;
              v37 = v36[1];
            }

            v38 = &v36[15 * v37];
            v36[1] = v37 + 1;
            v38[2] = &off_1F2A5D8B8;
            v39 = v56;
            v40 = v57;
            v41 = v58;
            *(v38 + 9) = v55;
            v42 = v52;
            v43 = v53;
            *(v38 + 7) = v54;
            *(v38 + 5) = v43;
            *(v38 + 3) = v42;
            *(v38 + 15) = v41;
            *(v38 + 13) = v40;
            *(v38 + 11) = v39;
            v38[10] = v13;
            v44 = *v33;
            v38[13] = *v33;
            v38[14] = (v33[1] - v44) >> 4;
            std::function<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v34, (v38 + 2));
            ++begin;
          }

          while (begin != v32);
          begin = v50.__begin_;
        }
      }
    }

    if (begin)
    {
      v50.__end_ = begin;
      operator delete(begin);
    }
  }
}

void sub_1B2F6CC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(uint64_t a1, char a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(v4);
}

ggl::zone_mallocator *std::__function::__func<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(ggl::zone_mallocator *result, _BYTE *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  if (v5 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v5 - 2 < 2)
      {
        v7 = **(result + 1) + 2;
        goto LABEL_20;
      }

      if (v5 == 4)
      {
        v7 = **(result + 1) + 3;
        goto LABEL_20;
      }

LABEL_21:
      v9[1] = v3;
      v9[2] = v4;
      v8 = **(result + 2);
      v9[0] = v6;
      return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v8 + 72), v9);
    }

    if (!*a2)
    {
      v7 = **(result + 1);
      goto LABEL_20;
    }

LABEL_13:
    v7 = **(result + 1) + 1;
    goto LABEL_20;
  }

  if (*a2 <= 7u)
  {
    if (v5 - 6 < 2)
    {
      v7 = **(result + 1) + 5;
LABEL_20:
      *(v6 + 48) = v7;
      goto LABEL_21;
    }

    if (v5 == 5)
    {
      v7 = **(result + 1) + 4;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v5 == 8)
  {
    goto LABEL_13;
  }

  if (v5 == 9)
  {
    v7 = **(result + 1) + 6;
    goto LABEL_20;
  }

  if (v5 != 10)
  {
    goto LABEL_21;
  }

  return result;
}

__n128 std::__function::__func<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A19728;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::collectRenderItemsForPassesNoReset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 1424) == 1)
  {
    memset(&v50, 0, sizeof(v50));
    std::vector<unsigned int>::reserve(&v50, 5uLL);
    v6 = 0;
    v7 = 0;
    v48 = a1 + 16;
    v8 = (a1 + 136);
    do
    {
      if (((a2 >> v6) & 1) != 0 && *v8 == 1)
      {
        LODWORD(v51) = v6;
        std::vector<unsigned int>::push_back[abi:nn200100](&v50, &v51);
        v9 = *(*(a1 + 8) + 8 * v6 + 56);
        *(v8 - 12) = v9;
        v7 |= *(v9 + 58) == 1;
      }

      ++v6;
      v8 += 128;
    }

    while (v6 != 10);
    begin = v50.__begin_;
    if (v50.__begin_ != v50.__end_)
    {
      v11 = *(a1 + 1400);
      v12 = *(a1 + 1408);
      if (v11 == v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 16;
        if (v7)
        {
          v14 = 32;
        }

        v45 = *(a1 + 1408);
        v46 = v14;
        do
        {
          v15 = *v11;
          if (*(*v11 + 48) == 1)
          {
            if (*(v15 + 88) != v13)
            {
              v47 = v13;
              if (v13)
              {
                v16 = ggl::Batcher::commit((a1 + 1296), 0xC8u, v5);
                if (v16[1] != *v16)
                {
                  v17 = v50.__begin_;
                  end = v50.__end_;
                  if (v50.__begin_ != v50.__end_)
                  {
                    v19 = v16;
                    do
                    {
                      v20 = *v17;
                      v51 = &off_1F2A5D8B8;
                      v21 = v48 + (v20 << 7);
                      v52 = *(v21 + 8);
                      v53 = *(v21 + 24);
                      v54 = *(v21 + 40);
                      v58 = *(v21 + 104);
                      v57 = *(v21 + 88);
                      v56 = *(v21 + 72);
                      v55 = *(v21 + 56);
                      v22 = *(a1 + 1384);
                      v23 = v22[1];
                      if (v23 == *(a1 + 1392))
                      {
                        v22 = *v22;
                        if (!v22)
                        {
                          v22 = malloc_type_malloc(120 * v23 + 16, 0x1020040EDED9539uLL);
                          *v22 = 0;
                          v22[1] = 0;
                          **(a1 + 1384) = v22;
                        }

                        *(a1 + 1384) = v22;
                        v23 = v22[1];
                      }

                      v24 = &v22[15 * v23];
                      v22[1] = v23 + 1;
                      v24[2] = &off_1F2A5D8B8;
                      v25 = v52;
                      v26 = v53;
                      *(v24 + 7) = v54;
                      *(v24 + 5) = v26;
                      *(v24 + 3) = v25;
                      v27 = v55;
                      v28 = v56;
                      v29 = v57;
                      *(v24 + 15) = v58;
                      *(v24 + 13) = v29;
                      *(v24 + 11) = v28;
                      *(v24 + 9) = v27;
                      ggl::RenderItem::~RenderItem(&v51);
                      v24[10] = v47;
                      v30 = *v19;
                      v24[13] = *v19;
                      v24[14] = (v19[1] - v30) >> 4;
                      std::function<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v20, (v24 + 2));
                      ++v17;
                    }

                    while (v17 != end);
                  }
                }
              }

              v15 = *v11;
              v13 = *(*v11 + 88);
              v12 = v45;
            }

            ggl::Batcher::addRange(a1 + 1296, (v15 + v46));
          }

          ++v11;
        }

        while (v11 != v12);
        begin = v50.__begin_;
      }

      v31 = ggl::Batcher::commit((a1 + 1296), 0xC8u, v5);
      if (v31[1] != *v31)
      {
        v32 = v50.__end_;
        if (begin != v50.__end_)
        {
          v33 = v31;
          do
          {
            v34 = *begin;
            v51 = &off_1F2A5D8B8;
            v35 = v48 + (v34 << 7);
            v52 = *(v35 + 8);
            v53 = *(v35 + 24);
            v54 = *(v35 + 40);
            v58 = *(v35 + 104);
            v57 = *(v35 + 88);
            v56 = *(v35 + 72);
            v55 = *(v35 + 56);
            v36 = *(a1 + 1384);
            v37 = v36[1];
            if (v37 == *(a1 + 1392))
            {
              v36 = *v36;
              if (!v36)
              {
                v36 = malloc_type_malloc(120 * v37 + 16, 0x1020040EDED9539uLL);
                *v36 = 0;
                v36[1] = 0;
                **(a1 + 1384) = v36;
              }

              *(a1 + 1384) = v36;
              v37 = v36[1];
            }

            v38 = &v36[15 * v37];
            v36[1] = v37 + 1;
            v38[2] = &off_1F2A5D8B8;
            v39 = v56;
            v40 = v57;
            v41 = v58;
            *(v38 + 9) = v55;
            v42 = v52;
            v43 = v53;
            *(v38 + 7) = v54;
            *(v38 + 5) = v43;
            *(v38 + 3) = v42;
            *(v38 + 15) = v41;
            *(v38 + 13) = v40;
            *(v38 + 11) = v39;
            v38[10] = v13;
            v44 = *v33;
            v38[13] = *v33;
            v38[14] = (v33[1] - v44) >> 4;
            std::function<void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(*(a3 + 24), v34, (v38 + 2));
            ++begin;
          }

          while (begin != v32);
          begin = v50.__begin_;
        }
      }
    }

    if (begin)
    {
      v50.__end_ = begin;
      operator delete(begin);
    }
  }
}

void sub_1B2F6D340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ggl::zone_mallocator *std::__function::__func<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::operator()(ggl::zone_mallocator *result, _BYTE *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  if (v5 <= 4)
  {
    if (*a2 > 1u)
    {
      if (v5 - 2 < 2)
      {
        v7 = **(result + 1) + 2;
        goto LABEL_20;
      }

      if (v5 == 4)
      {
        v7 = **(result + 1) + 3;
        goto LABEL_20;
      }

LABEL_21:
      v9[1] = v3;
      v9[2] = v4;
      v8 = **(result + 2);
      v9[0] = v6;
      return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v8 + 72), v9);
    }

    if (!*a2)
    {
      v7 = **(result + 1);
      goto LABEL_20;
    }

LABEL_13:
    v7 = **(result + 1) + 1;
    goto LABEL_20;
  }

  if (*a2 <= 7u)
  {
    if (v5 - 6 < 2)
    {
      v7 = **(result + 1) + 5;
LABEL_20:
      *(v6 + 48) = v7;
      goto LABEL_21;
    }

    if (v5 == 5)
    {
      v7 = **(result + 1) + 4;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v5 == 8)
  {
    goto LABEL_13;
  }

  if (v5 == 9)
  {
    v7 = **(result + 1) + 6;
    goto LABEL_20;
  }

  if (v5 != 10)
  {
    goto LABEL_21;
  }

  return result;
}

__n128 std::__function::__func<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1},std::allocator<void md::COverlayRenderLayer::layoutRibbon<md::Ribbons::PolylineOverlayRibbonDescriptor>(std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,ggl::CommandBuffer *,md::PolylineOverlayLayoutContext &,unsigned int,unsigned long long,BOOL,BOOL,BOOL,float)::{lambda(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)#1}>,void ()(md::Ribbons::PolylineOverlayRibbonDescriptor::Passes,ggl::RenderItem *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A196E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *>(uint64_t a1, void *a2)
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

uint64_t ggl::FragmentedPool<ggl::Textured::SRGBBlendPos2DUVPipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return md::COverlayRenderLayer::setTexturePipeline<ggl::Textured::SRGBBlendPos2DUVPipelineSetup,ggl::Textured::SRGBBlendPos2DUVPipelineState>(v7);
}

void md::COverlayRenderLayer::setTexturePipeline<ggl::Textured::SRGBBlendPos2DUVPipelineSetup,ggl::Textured::SRGBBlendPos2DUVPipelineState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void *a7, int a8, uint64_t *a9)
{
  v15 = *(a2 + 136);
  *v15 = a3;
  v15[1] = 0;
  v16 = *(a2 + 232);
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = v16[1];
  *v16 = a3;
  v16[1] = a4;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v18 = *(a2 + 136);
  v19 = *a5;
  v20 = a5[1];
  *(v18 + 16) = *a5;
  *(v18 + 24) = 0;
  v21 = *(a2 + 232);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = *(v21 + 24);
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  v23 = *(a2 + 136);
  v24 = *a6;
  v25 = a6[1];
  *(v23 + 48) = *a6;
  *(v23 + 56) = 0;
  v26 = *(a2 + 232);
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  v27 = *(v26 + 56);
  *(v26 + 48) = v24;
  *(v26 + 56) = v25;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  **(a2 + 168) = *a7;
  v28 = *a9;
  v29 = a9[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    v35 = v28;
    v36 = v29;
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::setState(a2, &v35);
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  else
  {
    v35 = *a9;
    v36 = 0;
    ggl::PipelineSetup::setState(a2, &v35);
  }

  if (*(a1 + 394) == 1)
  {
    v30 = 168;
    if (a8)
    {
      v30 = 176;
    }

    v31 = *(*(a1 + 360) + v30);
    v32 = *(a2 + 136);
    *(v32 + 64) = v31;
    *(v32 + 72) = 0;
    v33 = *(a2 + 232);
    v34 = *(v33 + 72);
    *(v33 + 64) = 0;
    *(v33 + 72) = 0;
    if (v34)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }
  }
}

ggl::zone_mallocator *md::COverlayRenderLayer::getTileScalar(md::COverlayRenderLayer *this, const geo::QuadTile *a2, const geo::QuadTile *a3)
{
  v5 = ggl::FragmentedPool<ggl::ConstantDataTyped<ggl::Textured::TileScalar>>::pop(this);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, v5);
  if (*(a2 + 1) >= *(a3 + 1))
  {
    v15 = v20;
    *v20 = 15360;
    v15[2] = COERCE_UNSIGNED_INT(1.0);
    _H0 = 0;
  }

  else
  {
    __powidf2();
    v7 = _D0;
    *&_D0 = 1.0 / _D0;
    v8 = *(a3 + 2) - *(a2 + 2) * v7;
    v9 = ~*(a3 + 1) + v7 + *(a2 + 1) * v7;
    __asm { FCVT            H1, S0 }

    v15 = v20;
    *v20 = _H1;
    _S2 = *&_D0 * v8;
    __asm { FCVT            H2, S2 }

    v15[1] = LOWORD(_S2);
    v15[2] = _H1;
    *&_D0 = *&_D0 * v9;
    __asm { FCVT            H0, S0 }
  }

  v15[3] = _H0;
  ggl::BufferMemory::~BufferMemory(v19);
  return v5;
}