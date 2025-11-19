double *new_tristrip(void *a1, uint64_t a2, double a3, double a4)
{
  do
  {
    v7 = a1;
    v8 = *a1;
    a1 = (*a1 + 24);
  }

  while (v8);
  v9 = gpc_malloc(0x28uLL);
  *v7 = v9;
  v9[3] = 0;
  *(*v7 + 8) = 0;
  *(*v7 + 16) = 0;
  v10 = *v7;
  *v10 = 1;
  v11 = (v10 + 2);
  do
  {
    v12 = v11;
    v13 = *v11;
    v11 = (*v11 + 2);
  }

  while (v13);
  result = gpc_malloc(0x18uLL);
  *v12 = result;
  *result = a3;
  result[1] = a4;
  result[2] = 0.0;
  *(a2 + 112) = *v7;
  return result;
}

char *create_contour_bboxes(int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  result = gpc_malloc(32 * v1);
  v4 = *a1;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 2);
    v7 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v8 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    do
    {
      v9 = &result[32 * v5];
      *v9 = v7;
      v9[1] = v8;
      v10 = (v6 + 16 * v5);
      v11 = *v10;
      if (v11 >= 1)
      {
        v12 = (*(v10 + 1) + 8);
        v13 = 1.79769313e308;
        v14 = -1.79769313e308;
        v15 = -1.79769313e308;
        v16 = 1.79769313e308;
        do
        {
          v17 = *(v12 - 1);
          if (v17 < v16)
          {
            *v9->i64 = v17;
            v16 = v17;
          }

          v18 = *v12;
          if (*v12 < v13)
          {
            *&v9->i64[1] = v18;
            v13 = v18;
          }

          if (v17 > v15)
          {
            *v9[1].i64 = v17;
            v15 = v17;
          }

          if (v18 > v14)
          {
            *&v9[1].i64[1] = v18;
            v14 = v18;
          }

          v12 += 2;
          --v11;
        }

        while (v11);
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t *insert_bound(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(a2 + 16);
    while (1)
    {
      v4 = *(v2 + 16);
      if (v3 < v4 || v3 == v4 && *(a2 + 64) < *(v2 + 64))
      {
        break;
      }

      result = (v2 + 160);
      v2 = *(v2 + 160);
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    *result = a2;
    *(a2 + 160) = v2;
  }

  else
  {
LABEL_7:
    *result = a2;
  }

  return result;
}

double *bound_list(double **a1, double a2)
{
  v3 = a1;
  v4 = *a1;
  if (*a1 && (v5 = *v4, *v4 <= a2))
  {
    while (1)
    {
      v6 = v4;
      if (v5 >= a2)
      {
        break;
      }

      v4 = *(v4 + 2);
      if (v4)
      {
        v5 = *v4;
        if (*v4 <= a2)
        {
          continue;
        }
      }

      v3 = (v6 + 2);
      goto LABEL_7;
    }
  }

  else
  {
LABEL_7:
    v7 = gpc_malloc(0x18uLL);
    *v3 = v7;
    *v7 = a2;
    v7[1] = 0.0;
    *(*v3 + 2) = v4;
    v6 = *v3;
  }

  return v6 + 1;
}

uint64_t TSDIntRectMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

CGFloat TSDIntRectFromCGRect@<D0>(uint64_t *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = a2;
  v11 = a3;
  v12 = (CGRectGetMaxX(*&a2) - a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  result = CGRectGetMaxY(v14) - a3;
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = result;
  return result;
}

CGFloat TSDIntRectFromCGRectWithScale@<D0>(uint64_t *a1@<X8>, double a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>)
{
  v7 = TSDMultiplyRectScalar(a2, a3, a4, a5, a6);

  return TSDIntRectFromCGRect(a1, v7, v8, v9, v10);
}

int64x2_t TSDIntRectMultiplyScalar@<Q0>(int64x2_t *a1@<X0>, int64x2_t *a2@<X8>, double a3@<D0>)
{
  v3 = vcvtq_s64_f64(vmulq_n_f64(vcvtq_f64_s64(*a1), a3));
  result = vcvtq_s64_f64(vmulq_n_f64(vcvtq_f64_s64(a1[1]), a3));
  *a2 = v3;
  a2[1] = result;
  return result;
}

BOOL CGRectContainsIntPoint(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7.x = a1;
  v7.y = a2;
  return CGRectContainsPoint(*&a3, v7);
}

BOOL TSDIntRectContainsPointInclusive(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= *a1 && a2 <= a1[2] + *a1 && (v3 = a1[1], a3 >= v3))
  {
    return a3 <= a1[3] + v3;
  }

  else
  {
    return 0;
  }
}

BOOL TSDIntRectContainsPoint(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= *a1)
  {
    return 0;
  }

  if (a2 >= a1[2] + *a1)
  {
    return 0;
  }

  v3 = a1[1];
  return a3 > v3 && a3 < a1[3] + v3;
}

void *TSDIntRectInset@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1] + a3;
  v5 = result[2] - 2 * a2;
  v6 = result[3] - 2 * a3;
  *a4 = *result + a2;
  a4[1] = v4;
  a4[2] = v5;
  a4[3] = v6;
  return result;
}

int64x2_t TSDIntRectGrowToPoint@<Q0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int64x2_t *a4@<X8>)
{
  v4.i64[0] = a2;
  v4.i64[1] = a3;
  v5 = vbslq_s8(vcgtq_s64(v4, *a1), *a1, v4);
  v6 = vaddq_s64(a1[1], *a1);
  result = vsubq_s64(vbslq_s8(vcgtq_s64(v6, v4), v6, v4), v5);
  *a4 = v5;
  a4[1] = result;
  return result;
}

uint64_t TSDIntOrthogonalDistance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 - a3;
  if (a1 - a3 < 0)
  {
    v4 = a3 - a1;
  }

  v5 = a2 - a4;
  if (a2 - a4 < 0)
  {
    v5 = a4 - a2;
  }

  return v4 + v5;
}

__n128 TSDExpandShapeRectToIncludePoint@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v7 = a1[1].n128_u64[1];
  if (!v7)
  {
    if (!a1[1].n128_u64[0])
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v9 = a1[1];
  v17 = *a1;
  v18 = v9;
  MinX = TSDIntRectGetMinX(&v17);
  v11 = a1[1].n128_u64[0];
  if (a2 == MinX)
  {
    --a1->n128_u64[0];
    a1[1].n128_u64[0] = ++v11;
  }

  v12 = a1[1];
  v17 = *a1;
  v18 = v12;
  if (a2 == TSDIntRectGetMaxX(&v17))
  {
    a1[1].n128_u64[0] = ++v11;
  }

  if (v11)
  {
LABEL_9:
    v13 = a1[1];
    v17 = *a1;
    v18 = v13;
    if (a3 == TSDIntRectGetMinY(&v17))
    {
      --a1->n128_u64[1];
      a1[1].n128_u64[1] = ++v7;
    }

    v14 = a1[1];
    v17 = *a1;
    v18 = v14;
    if (a3 == TSDIntRectGetMaxY(&v17))
    {
      a1[1].n128_u64[1] = v7 + 1;
    }
  }

LABEL_13:
  result = *a1;
  v16 = a1[1];
  *a4 = *a1;
  a4[1] = v16;
  return result;
}

void sub_26C8DAFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::push_back[abi:nn200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_26C8DB78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C8DBD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  v31 = *(v29 - 160);
  if (v31)
  {
    *(v29 - 152) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 136);
  if (v32)
  {
    *(v29 - 128) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSDOrthoPathCost::operator<(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return v2 ^ 1u;
  }

  v2 = a1[1];
  if (v2 != a2[1])
  {
    return v2 ^ 1u;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  v5 = v3 < v4;
  if (v3 != v4)
  {
    return v5;
  }

  v6 = *(a1 + 2);
  v7 = *(a2 + 2);
  v5 = v6 < v7;
  if (v6 != v7)
  {
    return v5;
  }

  v8 = *(a1 + 3);
  v9 = *(a2 + 3);
  v10 = v8 < v9;
  if (v8 != v9)
  {
    return v10;
  }

  v11 = *(a1 + 4);
  v12 = *(a2 + 4);
  v10 = v11 < v12;
  if (v11 != v12)
  {
    return v10;
  }

  v14 = *(a1 + 5);
  v15 = *(a2 + 5);
  return v14 == v15 || v14 < v15;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> addPointToXYs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  std::__tree<long>::__emplace_unique_key_args<long,long const&>(a3, &v6);
  std::__tree<long>::__emplace_unique_key_args<long,long const&>(a4, &v5);
}

uint64_t shapeAnchorInDirection(__int128 *a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v11 = a1[1];
      v12 = *a1;
      v13 = v11;
      MinX = TSDIntRectGetMinX(&v12);
    }

    else
    {
      if (a2 != 3)
      {
        return 0;
      }

      v6 = a1[1];
      v12 = *a1;
      v13 = v6;
      MinX = TSDIntRectGetMaxX(&v12);
    }

    v10 = *(a1 + 5);
    return TSDIntPointMake(MinX, v10);
  }

  if (!a2)
  {
    v3 = *(a1 + 4);
    v9 = a1[1];
    v12 = *a1;
    v13 = v9;
    MaxY = TSDIntRectGetMaxY(&v12);
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  MaxY = TSDIntRectGetMinY(&v12);
LABEL_10:
  v10 = MaxY;
  MinX = v3;
  return TSDIntPointMake(MinX, v10);
}

uint64_t insertShapeEdgeNodes(uint64_t a1, uint64_t *a2, __int128 *a3, int a4)
{
  v6 = 0;
  if (a4)
  {
    v7 = 66;
  }

  else
  {
    v7 = 2;
  }

  v8 = a3 + 56;
  do
  {
    v9 = a3[1];
    v22 = *a3;
    v23 = v9;
    v10 = *a2;
    v11 = a2[1];
    v12 = a2;
    if (TSDIntRectContainsPoint(&v22, *a2, v11))
    {
      do
      {
        v12 = v12[v6 + 2];
        v13 = a3[1];
        v22 = *a3;
        v23 = v13;
      }

      while (TSDIntRectContainsPoint(&v22, *v12, v12[1]));
      v10 = *v12;
      v11 = v12[1];
    }

    else
    {
      v12 = a2;
    }

    v14 = shapeAnchorInDirection(a3, v6);
    v16 = v15;
    result = TSDIntPointEquals(v14, v15, v10, v11);
    if ((result & 1) == 0)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v27 &= 0x80u;
      *&v22 = v14;
      *(&v22 + 1) = v16;
      std::vector<TSDOrthoGraphPoint>::push_back[abi:nn200100](a1, &v22);
      v18 = *(a1 + 8);
      result = TSDDirectionOpposite(v6);
      *(v18 - 72 + 8 * v6) = v12;
      v19 = &v12[result];
      v20 = v19[2];
      *(v18 - 72 + 8 * result) = v20;
      *(v20 + 8 * v6 + 16) = v18 - 88;
      v19[2] = v18 - 88;
      v12 = (v18 - 88);
    }

    *(v12 + 80) = v7 | v12[10] & 0xBD;
    *&v8[8 * v6++] = v12;
  }

  while (v6 != 4);
  return result;
}

void std::vector<TSDOrthoGraphPoint>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    v12 = v11 + 1;
    if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x1745D1745D1745DLL)
    {
      v14 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSDOrthoGraphPoint>>(a1, v14);
    }

    v15 = 88 * v11;
    v16 = *(a2 + 16);
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = *(a2 + 32);
    v18 = *(a2 + 48);
    v19 = *(a2 + 64);
    *(v15 + 80) = *(a2 + 80);
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    *(v15 + 32) = v17;
    v10 = 88 * v11 + 88;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 48) = v8;
    *(v4 + 64) = v9;
    *(v4 + 32) = v7;
    v10 = v4 + 88;
  }

  *(a1 + 8) = v10;
}

void sub_26C8DC938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(v27 - 240, *(v27 - 232));
  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(v27 - 216, *(v27 - 208));
  _Unwind_Resume(a1);
}

void *std::vector<TSDOrthoGraphPoint>::reserve(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSDOrthoGraphPoint>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<TSDOrthoGraphPoint *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<TSDOrthoGraphPoint *>::__append(a1, a2 - v2);
  }
}

double othoPathOverlap(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = a1;
    v3 = *a1;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    do
    {
      v8 = *(v2 + 176);
      v2 = v1;
      v9 = *v1;
      if ((v8 & 2) == 0 || (*(v1 + 176) & 2) == 0)
      {
        v10 = TSDIntSubtractPoints(*v3, v3[1], *v9);
        if (v10 == 0 && v11 > 0)
        {
          v4 = v4 + v11;
        }

        if (v10 == 0 && v11 < 0)
        {
          v5 = v5 - v11;
        }

        if (v11 == 0 && v10 > 0)
        {
          v7 = v7 + v10;
        }

        if (v11 == 0 && v10 < 0)
        {
          v6 = v6 - v10;
        }
      }

      v1 = *(v2 + 24);
      v3 = v9;
    }

    while (v1);
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
    v5 = 0.0;
    v4 = 0.0;
  }

  return fmin(v6, v7) + fmin(v4, v5);
}

double othoPathVariance(uint64_t a1)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v2 = (a1 + 24);
  v1 = *(a1 + 24);
  if (v1)
  {
    do
    {
      v11 = TSDIntOrthogonalDistance(**a1, *(*a1 + 8), **v1, (*v1)[1]);
      std::vector<double>::push_back[abi:nn200100](&v12, &v11);
      a1 = *v2;
      v3 = *v2;
      v4 = *(v3 + 24);
      v2 = (v3 + 24);
      v1 = v4;
    }

    while (v4);
    v5 = v12;
    v6 = v13;
    v7 = 0.0;
    if (v12 != v13)
    {
      v8 = v12;
      do
      {
        v9 = *v8++;
        v7 = v7 + v9 * v9;
      }

      while (v8 != v13);
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0.0;
  }

  return v7 / (v6 - v5);
}

void sub_26C8DCC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pathByAddingGraphPoint(uint64_t **a1, uint64_t *a2)
{
  if (a2)
  {
    TSDIntOrthogonalDistance(**a1, (*a1)[1], *a2, a2[1]);
    v4 = a1;
    do
    {
      if (*v4 == a2)
      {
        break;
      }

      v4 = v4[3];
    }

    while (v4);
    operator new();
  }

  return 0;
}

uint64_t extendInDirection(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 176) |= 2u;
  do
  {
    if (*result == a3)
    {
      break;
    }

    result = pathByAddingGraphPoint(result, *(*result + 8 * a2 + 16));
  }

  while (result);
  return result;
}

uint64_t estimateNumberOfCorners(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = TSDDirectionOpposite(a6);
  if (a1 == a4 && a2 == a5)
  {
    if (a3 == a6)
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    v14 = v12 == a3;
LABEL_7:
    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }

  if (v12 == a3)
  {
    v16 = TSDDirectionIntDelta(a3);
    v18 = v17;
    v19 = TSDIntSubtractPoints(a4, a5, a1);
    if (TSDIntDotPoints(v16, v18, v19, v20) < 0)
    {
      return 4;
    }

    v21 = TSDDirectionDelta(a3);
    if (a1 == a4 && v21 == 0.0)
    {
      return 0;
    }

    v14 = a2 == a5 && v22 == 0.0;
    v13 = 2;
    goto LABEL_7;
  }

  if (a3 == a6)
  {
    v23 = TSDDirectionDelta(a6);
    result = 4;
    if (a1 != a4 || v23 != 0.0)
    {
      if (a2 == a5 && v24 == 0.0)
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    v26 = TSDDirectionIntDelta(a3);
    v28 = v27;
    v29 = TSDIntSubtractPoints(a4, a5, a1);
    v31 = TSDIntDotPoints(v26, v28, v29, v30);
    v32 = TSDDirectionIntDelta(a6);
    v34 = v33;
    v35 = TSDIntSubtractPoints(a1, a2, a4);
    if ((v31 | TSDIntDotPoints(v32, v34, v35, v36)) >= 0)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t estimateCostToShape@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  *(a5 + 1) = 0u;
  *(a5 + 2) = 0u;
  *a5 = 0u;
  v27 = a3 + 8 * a4;
  v8 = *(v27 + 88);
  v9 = *a1;
  v30 = *(a1 + 16);
  v31 = a5;
  v29 = v8;
  if ((v30 & 1) != 0 || (*(v9 + 80) & 8) != 0)
  {
    v23 = *v9;
    v24 = *(v9 + 8);
    v25 = *v8;
    v26 = v8[1];
    a5[4] = TSDIntOrthogonalDistance(*v9, v24, *v8, v26);
    result = estimateNumberOfCorners(v23, v24, a1[1], v25, v26, a4);
    v19 = result;
  }

  else
  {
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *a2;
    v13 = *(a2 + 8);
    v14 = TSDIntOrthogonalDistance(*v9, v11, *a2, v13);
    v15 = *v8;
    v16 = v8[1];
    v17 = 0;
    a5[4] = v14 + TSDIntOrthogonalDistance(v12, v13, *v8, v16);
    v18 = a1[1];
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v20 = estimateNumberOfCorners(v10, v11, v18, v12, v13, v17);
      v21 = TSDDirectionOpposite(v17);
      result = estimateNumberOfCorners(v12, v13, v21, v15, v16, a4);
      if (v19 >= (result + v20))
      {
        v19 = (result + v20);
      }

      ++v17;
    }

    while (v17 != 4);
  }

  *(v31 + 1) = v19;
  if ((v30 & 1) == 0 && (*(a2 + 80) & 0x10) != 0 || (v29[10] & 0x10) != 0 || (*(*(v27 + 56) + 80) & 0x10) != 0)
  {
    *(v31 + 1) = 1;
  }

  return result;
}

double estimateCost@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X8>)
{
  v8 = 0;
  *a4 = xmmword_26CA668A0;
  *(a4 + 1) = unk_26CA668B0;
  *(a4 + 2) = xmmword_26CA668C0;
  do
  {
    estimateCostToShape(a1, a2, a3, v8, v12);
    if (TSDOrthoPathCost::operator<(a4, v12))
    {
      v9 = *(a4 + 1);
      v13 = *a4;
      v14 = v9;
      v15 = *(a4 + 2);
    }

    else
    {
      estimateCostToShape(a1, a2, a3, v8, &v13);
    }

    v10 = v14;
    *a4 = v13;
    *(a4 + 1) = v10;
    result = *&v15;
    *(a4 + 2) = v15;
    ++v8;
  }

  while (v8 != 4);
  return result;
}

void std::vector<TSDOrthoPathNode *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::__tree<long>::__emplace_unique_key_args<long,long const&>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSDOrthoGraphPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<TSDOrthoGraphPoint *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<EQKitLayoutContext *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TSDOrthoPathNode **>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) | 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = *v8 >= v10;
        v8 += *v8 < v10;
        if (!v11)
        {
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      if (*v8 >= *a4)
      {
        do
        {
          *a4 = v12;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 8 * v14);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v7 = v14;
          }

          else
          {
            v15 = v8[1];
            v11 = *v8 >= v15;
            v8 += *v8 < v15;
            if (v11)
            {
              v7 = v14;
            }
          }

          v12 = *v8;
        }

        while (*v8 >= v13);
        *a4 = v13;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSDOrthoPathNode *,TSDOrthoPathNode *),std::__wrap_iter<TSDOrthoPathNode **>>(void *a1, uint64_t (**a2)(void, void), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = (*a2)(a1[v6 + 1], a1[v6 + 2]);
      if (v11)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL (*&)(TSDOrthoPathNode *,TSDOrthoPathNode *),std::__wrap_iter<TSDOrthoPathNode **>>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void sub_26C8E4B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *std::__tree<objc_object  {objcproto19TSWPStorageObserver}*>::__emplace_unique_key_args<objc_object  {objcproto19TSWPStorageObserver},objc_object  {objcproto19TSWPStorageObserver} const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<objc_object  {objcproto19TSWPStorageObserver}*>::__erase_unique<objc_object  {objcproto19TSWPStorageObserver}>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_26C8F1258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = TSWPEditMenuController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C8F4584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSWPLayoutColumnChore::TSWPLayoutColumnChore(uint64_t a1, void *a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  TSWPLayoutChore::TSWPLayoutChore(a1, a2, a3, a4, a6, a5, a6, a7, 0);
}

{
  TSWPLayoutColumnChore::TSWPLayoutColumnChore(a1, a2, a3, a4, a5, a6, a7);
}

void TSWPLayoutColumnChore::~TSWPLayoutColumnChore(TSWPLayoutColumnChore *this)
{
  TSWPLayoutChore::~TSWPLayoutChore(this);

  JUMPOUT(0x26D6A9A30);
}

uint64_t TSWPLayoutColumnChore::layoutColumnsIntoTarget(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  *(a1 + 2056) = a2;
  v10 = [objc_msgSend(a2 "columns")];
  v11 = 0x8000;
  if (objc_opt_respondsToSelector())
  {
    if ([*(a1 + 16) invalidateOnExactTextRangeLayout])
    {
      v11 = 32769;
    }

    else
    {
      v11 = 0x8000;
    }
  }

  TSWPLayoutChore::protectedSetupLayoutState(a1, a2, a3, [v10 startCharIndex], a5);
  TSWPLayoutChore::protectedLayoutColumnsWithFlags(a1, v11, a3, a4, a2);

  return TSWPLayoutChore::pSetTargetColumnsTransform(a1);
}

uint64_t compareAttachments(objc_object *a1, objc_object *a2, void *a3)
{
  v4 = [-[objc_object objectAtIndexedSubscript:](a1 objectAtIndexedSubscript:{1), "unsignedIntegerValue"}];
  v5 = [-[objc_object objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{1), "unsignedIntegerValue"}];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

uint64_t TSWPLineStylingCTState::TSWPLineStylingCTState(uint64_t a1, void *a2, void *a3)
{
  *a1 = a2;
  *(a1 + 8) = *(a1 + 8) & 0xFE | [objc_msgSend(a2 "overrideCharacterStylePropertyMap")];
  v6 = [a2 options];
  v7 = [a3 length];
  v8 = [a3 charRangeMappedToStorage:{0, objc_msgSend(a3, "length")}];
  if (!a2 || !v7)
  {
    goto LABEL_19;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = v11++;
    v13 = [a3 characterAtIndex:v10];
    v14 = v13;
    if (v6 & 1) == 0 && v11 <= 1 && (IsWhitespaceCharacter(v13))
    {
      v11 = v12;
      goto LABEL_15;
    }

    if ((v6 & 1) == 0 && v14 == 65532)
    {
      v15 = [a3 attachmentAtCharIndex:v10];
      if ([v15 isDrawable] && objc_msgSend(v15, "isAnchored"))
      {
        v11 = v12;
      }

      goto LABEL_15;
    }

    if (IsParagraphBreakingCharacter(v14))
    {
      break;
    }

LABEL_15:
    if (v7 == ++v10)
    {
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  v7 = v10 + 1;
  if (v12)
  {
LABEL_17:
    *(a1 + 16) = v9;
    *(a1 + 24) = v7;
    v16 = v7 + v9;
    goto LABEL_20;
  }

LABEL_19:
  v16 = 0;
  *(a1 + 16) = xmmword_26CA637B0;
LABEL_20:
  *(a1 + 32) = v16;
  return a1;
}

uint64_t TSWPLineStylingCTState::TSWPLineStylingCTState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  return a1;
}

{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  return a1;
}

uint64_t TSWPLineStylingCTState::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {

    *a1 = *a2;
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  return a1;
}

void TSWPLineStylingCTState::~TSWPLineStylingCTState(id *this)
{
  *this = 0;
}

{

  *this = 0;
}

void TSWPLineStylingCTState::clear(id *this)
{
  *this = 0;
  *(this + 8) &= ~1u;
  this[3] = 0;
  this[4] = 0;
  this[2] = 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t TSWPLineStylingCTState::isAffectingCTAttributesEquallyTo(TSWPLineStylingCTState *this, const TSWPLineStylingCTState *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 8);
    v5 = *(a2 + 3);
    if (v5)
    {
      if ((*(a2 + 8) ^ v4))
      {
        return 0;
      }
    }

    else
    {
      if (v4)
      {
        return 0;
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = *(a2 + 3);
    if (v5 && (*(a2 + 8) & 1) != 0)
    {
      return 0;
    }
  }

  if ((*(a2 + 8) ^ *(this + 8)))
  {
    return 0;
  }

  v6 = *(this + 2) == *(a2 + 2) && v3 == v5;
  if (!v6 || *(this + 4) != *(a2 + 4))
  {
    return 0;
  }

  v7 = [objc_msgSend(*this "overrideCharacterStylePropertyMap")];
  v8 = [objc_msgSend(*a2 "overrideCharacterStylePropertyMap")];
  if (v7 == v8)
  {
    return 1;
  }

  return [v7 isEqual:v8];
}

uint64_t TSWPLineStylingCTState::textProperties(id *this)
{
  v1 = [*this overrideCharacterStylePropertyMap];
  v2 = +[TSWPCharacterStyle properties];

  return [v1 propertyMapWithProperties:v2];
}

TSWPCharacterStyle *TSWPLineStylingCTState::modifiedCharacterStyle(TSWPLineStylingCTState *this, TSSStylesheet *a2, TSWPCharacterStyle *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    return a3;
  }

  if (a3)
  {
    v5 = [objc_msgSend(*this "overrideCharacterStylePropertyMap")];

    return [(TSSStylesheet *)a2 variationOfStyle:a3 propertyMap:v5];
  }

  else
  {
    v7 = -[TSSStyle initWithContext:name:overridePropertyMap:isVariation:]([TSWPCharacterStyle alloc], "initWithContext:name:overridePropertyMap:isVariation:", -[TSPObject context](a2, "context"), 0, [objc_msgSend(*this "overrideCharacterStylePropertyMap")], 0);

    return v7;
  }
}

void TSWPLineStylingCTState::prepareForRelayout(void **a1, void *a2, void *a3)
{
  if (*a1 != a2)
  {
    TSWPLineStylingCTState::TSWPLineStylingCTState(v4, a2, a3);
    TSWPLineStylingCTState::operator=(a1, v4);
  }
}

uint64_t TSWPLineStylingLayoutState::TSWPLineStylingLayoutState(uint64_t a1, void *a2, void *a3)
{
  TSWPLineStylingCTState::TSWPLineStylingCTState(a1 + 8, a2, a3);
  *a1 = a2;
  if (a2)
  {
    v5 = [a2 lineCount];
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) &= ~1u;
  return a1;
}

void TSWPLineStylingLayoutState::TSWPLineStylingLayoutState(TSWPLineStylingLayoutState *this, id *a2)
{
  *(this + 1) = a2[1];
  v4 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v4;
  *this = *a2;
  v5 = *(a2 + 3);
  *(this + 8) = a2[8];
  *(this + 3) = v5;
}

uint64_t TSWPLineStylingLayoutState::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {

    *a1 = *a2;
  }

  TSWPLineStylingCTState::operator=(a1 + 8, a2 + 8);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  return a1;
}

void TSWPLineStylingLayoutState::~TSWPLineStylingLayoutState(id *this)
{
  *this = 0;

  this[1] = 0;
}

void TSWPLineStylingLayoutState::clear(id *this)
{
  *this = 0;

  this[1] = 0;
  *(this + 16) &= ~1u;
  this[3] = 0x7FFFFFFFFFFFFFFFLL;
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  *(this + 64) &= ~1u;
}

void *TSWPLineStylingLayoutState::updateWithNewLineAdded(void *this, uint64_t a2)
{
  v2 = this[7];
  v3 = this[6] + 1;
  this[6] = v3;
  if (v3 == v2)
  {
    v4 = this[3];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = a2 - v4;
      if (v5 < this[5])
      {
        this[5] = v5;
      }
    }
  }

  return this;
}

BOOL TSWPLineStylingLayoutState::canFinalize(TSWPLineStylingLayoutState *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return 0;
  }

  if (*(this + 64))
  {
    return 1;
  }

  return *(this + 6) >= v1;
}

uint64_t TSWPLineStylingLayoutState::clearLayoutState(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 64) &= ~1u;
  return this;
}

uint64_t TSWPLineStylingLayoutState::prepareForLayoutIteration(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 64) &= ~1u;
  return this;
}

void sub_26C8FC8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSWPHighlightAttributeArray::~TSWPHighlightAttributeArray(TSWPAttributeArray *this)
{
  TSWPStyleAttributeArray::~TSWPStyleAttributeArray(this);

  JUMPOUT(0x26D6A9A30);
}

void TSWPEnumerateWordsInStringWithBlock(CFStringRef string, CFRange range, CFLocaleRef locale, uint64_t a4)
{
  v5 = CFStringTokenizerCreate(0, string, range, 4uLL, locale);
  if (v5)
  {
    v6 = v5;
    Token = CFStringTokenizerAdvanceToNextToken(v5);
    if (Token)
    {
      LOBYTE(v8) = Token;
      do
      {
        if ((v8 & 0x10) == 0)
        {
          (*(a4 + 16))(a4, v6);
        }

        v8 = CFStringTokenizerAdvanceToNextToken(v6);
      }

      while (v8);
    }

    CFRelease(v6);
  }
}

void sub_26C8FEB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSWPParagraphAttributeArray::~TSWPParagraphAttributeArray(TSWPParagraphAttributeArray *this)
{
  this->var0 = &unk_287D34E98;
  if (this->var2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      (*(this->var0 + 24))(this, this->var4 + v2);
      ++v3;
      v2 += 16;
    }

    while (v3 < this->var2);
  }

  TSWPAttributeArray::~TSWPAttributeArray(this);
}

{
  TSWPParagraphAttributeArray::~TSWPParagraphAttributeArray(this);

  JUMPOUT(0x26D6A9A30);
}

id TSWPParagraphAttributeArray::retain(TSWPParagraphAttributeArray *this, const TSWPAttributeRecord *a2)
{
  result = (*(this->var0 + 3))(this);
  if (result)
  {
    v4 = *(a2 + 1);

    return v4;
  }

  return result;
}

void TSWPParagraphAttributeArray::release(TSWPParagraphAttributeArray *this, const TSWPAttributeRecord *a2)
{
  if ((*(this->var0 + 3))(this))
  {
    v3 = *(a2 + 1);
  }
}

void TSWPParagraphAttributeArray::adoptStylesheetWithMapper(TSWPAttributeArray *a1, uint64_t a2, void *a3)
{
  if (a1->var1 == 8)
  {
    if (a1->var2)
    {
      v6 = 0;
      v7 = 8;
      do
      {
        v8 = *(a1->var4 + v7);
        if (v8)
        {
          if (objc_opt_respondsToSelector())
          {
            [v8 adoptStylesheet:a2 withMapper:a3];
          }
        }

        ++v6;
        v7 += 16;
      }

      while (v6 < a1->var2);
    }
  }

  else if ((*(a1->var0 + 3))(a1))
  {
    var2 = a1->var2;
    if (var2)
    {
      v10 = 0;
      v11 = 8;
      do
      {
        var4 = a1->var4;
        v13 = *(var4 + v11);
        if (v13)
        {
          v14 = [a3 mappedStyleForStyle:*(var4 + v11)];
          if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v15 = [MEMORY[0x277D6C290] currentHandler];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"virtual void TSWPParagraphAttributeArray::adoptStylesheetWithMapper(TSSStylesheet *, id<TSKStyleMapper>)"}];
            v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"];
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            v20 = objc_opt_class();
            [v15 handleFailureInFunction:v16 file:v17 lineNumber:103 description:{@"Bad style mapping [%@ %p] -> [%@ %p]", v19, v13, NSStringFromClass(v20), v14}];
          }

          TSWPAttributeArray::replaceObjectForAttributeIndex(a1, v14, v10, 0, 0);
          var2 = a1->var2;
        }

        ++v10;
        v11 += 16;
      }

      while (v10 < var2);
    }
  }
}

unint64_t TSWPParagraphAttributeArray::paragraphRangeForCharRange(TSWPParagraphAttributeArray *this, _NSRange a2)
{
  length = a2.length;
  location = a2.location;
  v5 = TSWPAttributeArray::characterCount(this);
  v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, location);
  if (length)
  {
    v7 = location + length;
    if (v7 != v5 || (IsParagraphBreakingCharacter([this->var5 characterAtIndex:v5 - 1]) & 1) == 0)
    {
      v5 = v7 - 1;
    }
  }

  else
  {
    v5 = location;
  }

  TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, v5);
  return v6;
}

uint64_t TSWPParagraphAttributeArray::deletingWholeParagraphs(TSWPParagraphAttributeArray *this, _NSRange a2, TSWPAttributeArray *a3)
{
  if (!a3)
  {
    return 0;
  }

  length = a2.length;
  location = a2.location;
  v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, a2.location);
  v7 = location + length;
  v8 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, v7);
  var2 = a3->var2;
  if (v6 >= var2)
  {
    v10 = 0;
  }

  else
  {
    v10 = TSWPAttributeArray::charIndexForAttributeIndex(a3, v6) == location;
    var2 = a3->var2;
  }

  v12 = v8 < var2 && TSWPAttributeArray::charIndexForAttributeIndex(a3, v8) == v7;
  return v10 & v12;
}

void TSWPParagraphAttributeArray::assignAttributesAtFrontOfRange(TSWPParagraphAttributeArray *this, _NSRange a2, TSWPParagraphAttributeArray *a3, TSWPStorageTransaction *a4)
{
  length = a2.length;
  location = a2.location;
  v9 = TSWPParagraphAttributeArray::paragraphRangeForCharRange(a3, a2);
  v11 = v10;
  v12 = (*(this->var0 + 3))(this);
  v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, location + length);
  if (v12)
  {
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = *(this->var4 + 2 * v13 + 1);
      v22 = v23;
      v26.location = v9;
      v26.length = v11;
      TSWPParagraphAttributeArray::applyObjectToParagraphRange(this, v23, v26, a3, a4);

      return;
    }

    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPParagraphAttributeArray::assignAttributesAtFrontOfRange(NSRange, TSWPParagraphAttributeArray *, TSWPStorageTransaction *)"}];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"];
    v17 = v14;
    v18 = v15;
    v19 = 150;
  }

  else
  {
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = *(this->var4 + 4 * v13 + 2);
      TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(this, &v24, v9, v11, a3, a4);
      return;
    }

    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPParagraphAttributeArray::assignAttributesAtFrontOfRange(NSRange, TSWPParagraphAttributeArray *, TSWPStorageTransaction *)"}];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"];
    v17 = v20;
    v18 = v21;
    v19 = 162;
  }

  [v17 handleFailureInFunction:v18 file:v16 lineNumber:v19 description:@"Bad attribute index in break table."];
}

TSWPParagraphAttributeArray *TSWPParagraphAttributeArray::applyObjectToParagraphRange(TSWPParagraphAttributeArray *this, objc_object *a2, _NSRange a3, TSWPParagraphAttributeArray *a4, TSWPStorageTransaction *a5)
{
  length = a3.length;
  location = a3.location;
  v10 = this;
  if (!a3.length || !a4 || a3.location + a3.length > a4->var2)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPParagraphAttributeArray::applyObjectToParagraphRange(id, NSRange, TSWPParagraphAttributeArray *, TSWPStorageTransaction *)"}];
    this = [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"), 577, @"Bad par index range."}];
  }

  if (!a2 && a4 == v10)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPParagraphAttributeArray::applyObjectToParagraphRange(id, NSRange, TSWPParagraphAttributeArray *, TSWPStorageTransaction *)"}];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"];

    return [v13 handleFailureInFunction:v14 file:v15 lineNumber:578 description:@"Now allowed to delete paragraph styles.  Replace only!"];
  }

  if (v10 == a4 || !length)
  {
    if (!a4)
    {
      return this;
    }

    v16 = location + length;
  }

  else
  {
    v16 = location + length;
    if (location + length < a4->var2)
    {
      this = TSWPParagraphAttributeArray::isParagraphBreakSparse(v10, location + length, a4);
      if (this)
      {
        v17 = TSWPAttributeArray::charIndexForAttributeIndex(a4, location + length);
        this = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, v17);
        if (this == 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [MEMORY[0x277D6C290] currentHandler];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPParagraphAttributeArray::applyObjectToParagraphRange(id, NSRange, TSWPParagraphAttributeArray *, TSWPStorageTransaction *)"}];
          this = [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"), 589, @"Bad attribute index."}];
        }

        else
        {
          v30 = *(v10->var4 + 2 * this + 1);
          if (v30 != a2)
          {
            v32 = v17;
            v33 = v30;
            this = TSWPAttributeArray::insertAttribute(v10, &v32, &this->var0 + 1, 0, a5);
          }
        }
      }
    }
  }

  if (v16 <= a4->var2)
  {
    if (a2)
    {
      if (location < v16)
      {
        v20 = location;
        while (1)
        {
          v21 = TSWPAttributeArray::charIndexForAttributeIndex(a4, v20);
          v31 = 0x7FFFFFFFFFFFFFFFLL;
          v22 = TSWPParagraphAttributeArray::attributeIndexForParagraphIndex(v10, v20, a4, &v31);
          if (v22 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = 0;
          }

          else
          {
            v23 = *(v10->var4 + 2 * v22 + 1);
          }

          if (a4 == v10)
          {
            goto LABEL_34;
          }

          if (v31 != v21)
          {
            if (v23 != a2)
            {
              v32 = v21;
              v33 = a2;
              TSWPAttributeArray::insertAttribute(v10, &v32, v22 + 1, 0, a5);
            }

            goto LABEL_35;
          }

          if (v23 != a2)
          {
            break;
          }

LABEL_35:
          if (v16 == ++v20)
          {
            goto LABEL_46;
          }
        }

        if (v22)
        {
          v24 = *(v10->var4 + 2 * v22 - 1);
        }

        else
        {
          v24 = 0;
        }

        if (v24 == a2)
        {
          (*(v10->var0 + 7))(v10, v22, 1, a5);
          goto LABEL_35;
        }

LABEL_34:
        TSWPAttributeArray::replaceObjectForAttributeIndex(v10, a2, v22, 0, a5);
        goto LABEL_35;
      }
    }

    else
    {
      v25 = TSWPAttributeArray::charIndexForAttributeIndex(a4, location);
      v26 = TSWPAttributeArray::charIndexForAttributeIndex(a4, v16 - 1);
      v27 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, v25);
      if (v27 == 0x7FFFFFFFFFFFFFFFLL || (v28 = v27) == 0)
      {
        if (v10->var2 < 2 || (v28 = 1, TSWPAttributeArray::charIndexForAttributeIndex(v10, 1uLL) > v26))
        {
          v28 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      v29 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, v26);
      if (v29 != 0x7FFFFFFFFFFFFFFFLL && v29 >= v28)
      {
        (*(v10->var0 + 7))(v10, v28, v29 - v28 + 1, a5);
      }
    }

LABEL_46:
    v35.location = location;
    v35.length = length;
    return TSWPParagraphAttributeArray::didApplyAttributes(v10, v35, a4, a5);
  }

  return this;
}

uint64_t TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(TSWPParagraphAttributeArray *this, unsigned __int16 *a2, unint64_t a3, NSUInteger a4, TSWPAttributeArray *a5, TSWPStorageTransaction *a6)
{
  if (!a4 || !a5 || (v11 = a3 + a4, var2 = a5->var2, a3 + a4 > var2))
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(const TSWPParagraphData &, NSRange, TSWPParagraphAttributeArray *, TSWPStorageTransaction *)"}];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"), 718, @"Bad par index range."}];
    if (!a4)
    {
      v19 = 0;
      v20 = 0;
      v11 = a3;
      if (!a5)
      {
        return v20 & 1;
      }

      goto LABEL_14;
    }

    var2 = a5->var2;
    v11 = a3 + a4;
  }

  if (v11 < var2 && TSWPParagraphAttributeArray::isParagraphBreakSparse(this, v11, a5))
  {
    v15 = TSWPAttributeArray::charIndexForAttributeIndex(a5, v11);
    v16 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, v15);
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [MEMORY[0x277D6C290] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(const TSWPParagraphData &, NSRange, TSWPParagraphAttributeArray *, TSWPStorageTransaction *)"}];
      [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"), 728, @"Bad attribute index."}];
    }

    else
    {
      v21 = v16;
      v22 = this->var4 + 16 * v16;
      if (!TSWPParagraphAttributeArray::dataIsSame(this, a2, v22 + 4))
      {
        v31 = *(v22 + 2);
        v34 = v15;
        v35 = v31;
        TSWPAttributeArray::insertAttribute(this, &v34, v21 + 1, 0, a6);
        v19 = 1;
        goto LABEL_14;
      }
    }
  }

  v19 = 0;
LABEL_14:
  if (v11 <= a5->var2)
  {
    v32 = a3;
    if (a3 < v11)
    {
      for (i = a3; v11 != i; ++i)
      {
        v24 = TSWPAttributeArray::charIndexForAttributeIndex(a5, i);
        v25 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, v24);
        if (v25 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
        }

        v27 = TSWPAttributeArray::charIndexForAttributeIndex(this, v26);
        IsSame = TSWPParagraphAttributeArray::dataIsSame(this, a2, this->var4 + 8 * v26 + 4);
        if (v27 == v24)
        {
          if (!IsSame)
          {
            if (!v26 || !TSWPParagraphAttributeArray::dataIsSame(this, a2, this->var4 + 8 * v26 - 4))
            {
              *(this->var4 + 4 * v26 + 2) = *a2;
              goto LABEL_28;
            }

            v19 = 1;
            (*(this->var0 + 7))(this, v26, 1, a6);
          }
        }

        else if (!IsSame)
        {
          v29 = *a2;
          v34 = v24;
          v35 = v29;
          TSWPAttributeArray::insertAttribute(this, &v34, v26 + 1, 0, a6);
LABEL_28:
          v19 = 1;
        }
      }
    }

    v36.location = v32;
    v36.length = a4;
    TSWPParagraphAttributeArray::didApplyAttributes(this, v36, a5, a6);
  }

  v20 = v19;
  return v20 & 1;
}

void TSWPParagraphAttributeArray::willReplaceCharactersInRangeWithString(TSWPParagraphAttributeArray *a1, _NSRange a2, uint64_t a3, uint64_t a4, uint64_t a5, TSWPStorageTransaction *a6)
{
  length = a2.length;
  location = a2.location;
  v10 = a1;
  a1->var7 = 0;
  a1->var9 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 && a1->var1 != 8)
  {
    v11 = (a2.location + a2.length);
    v12 = [a1->var5 paragraphIndexAtCharIndex:a2.location + a2.length];
    a1 = (v12 + 1 >= v10->var2 ? TSWPAttributeArray::characterCount(v10) : [v10->var5 textRangeForParagraphAtIndex:?] - 1);
    v10->var7 = a1 == v11;
    if (a1 == v11)
    {
      var5 = v10->var5;
      if (var5)
      {
        [var5 paragraphEnumeratorAtCharIndex:location + length styleProvider:0];
      }

      else
      {
        memset(&v30, 0, sizeof(v30));
      }

      v14 = TSWPParagraphEnumerator::relevantParagraphIndex(&v30);
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (v14 != v12)
      {
        v15 = v14;
      }

      v10->var9 = v15;
      TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v30);
    }
  }

  if (length)
  {
    v16 = v10;
    if (v10->var1)
    {
      a1 = [v10->var5 attributeArrayForKind:0];
      v16 = a1;
    }

    if (!a4)
    {
      if (v16)
      {
        v31.location = location;
        v31.length = length;
        if (TSWPParagraphAttributeArray::deletingWholeParagraphs(a1, v31, v16))
        {
          if (v10->var1 != 8)
          {
            v32.location = location;
            v32.length = length;
            TSWPParagraphAttributeArray::assignAttributesAtFrontOfRange(v10, v32, v16, a6);
          }
        }
      }
    }

    v17 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, location);
    v18 = location + length;
    v19 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v10, location + length);
    var2 = v10->var2;
    if (v17 >= var2)
    {
      v21 = 0;
    }

    else
    {
      v21 = TSWPAttributeArray::charIndexForAttributeIndex(v10, v17) == location;
      var2 = v10->var2;
    }

    if (v19 >= var2)
    {
      v22 = 0;
    }

    else
    {
      v22 = TSWPAttributeArray::charIndexForAttributeIndex(v10, v19) == v18;
      var2 = v10->var2;
    }

    if (v17 + 1 < var2 && v18 >= TSWPAttributeArray::charIndexForAttributeIndex(v10, v17 + 1))
    {
      v23.length = length - v21 + v22;
      if (v23.length)
      {
        v23.location = location + v21;
        v24 = TSWPAttributeArray::calculateAttributeRangeForCharacterRange(v10, v23);
        if (v25)
        {
          v26 = v24;
          v27 = v25;
          if (!v16 || (v10->var1 | 8) == 8 || (v28 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v16, v18) + 1, v28 >= v16->var2) || !TSWPParagraphAttributeArray::isParagraphBreakSparse(v10, v28, v16) || (v29 = TSWPAttributeArray::charIndexForAttributeIndex(v16, v28), --v27, TSWPAttributeArray::replaceCharIndexForAttributeIndex(v10, v29, v27 + v26, a6), v27))
          {
            (*(v10->var0 + 7))(v10, v26, v27, a6);
            (*(v10->var0 + 29))(v10, v26, a6);
          }
        }
      }
    }
  }
}

BOOL TSWPParagraphAttributeArray::isParagraphBreakSparse(TSWPParagraphAttributeArray *this, unint64_t a2, TSWPAttributeArray *a3)
{
  if ((this->var1 | 8) == 8)
  {
    return 0;
  }

  v9[5] = v3;
  v9[6] = v4;
  if (a3->var2 <= a2)
  {
    return 0;
  }

  v9[0] = 0x7FFFFFFFFFFFFFFFLL;
  TSWPParagraphAttributeArray::attributeIndexForParagraphIndex(this, a2, a3, v9);
  v8 = v9[0];
  return v8 != TSWPAttributeArray::charIndexForAttributeIndex(a3, a2);
}

unint64_t TSWPParagraphAttributeArray::adjustCharIndexForCharRangeWithString(TSWPAttributeArray *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a3);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (a6 != a4)
  {
    TSWPAttributeArray::adjustCharIndexStartingAtAttributeIndex(a1, a2, v11 + 1, a6 - a4);
  }

  return v11;
}

uint64_t TSWPParagraphAttributeArray::didReplaceCharactersInRangeWithString(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = result;
    result = (*(*result + 80))(result, 5, a2, a3, a4, a5);
    if (a5)
    {
      v13 = result;
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        result = (*(*v12 + 168))(v12);
        if (result)
        {
          v14 = *(*v12 + 160);

          return v14(v12, a2, a3, a5, v13, a6, a7);
        }
      }
    }
  }

  return result;
}

float64x2_t TSWPParagraphAttributeArray::insertAttributesForMarkers(TSWPAttributeArray *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6, TSWPStorageTransaction *a7)
{
  if (((*(a1->var0 + 21))(a1) & 1) == 0)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"virtual void TSWPParagraphAttributeArray::insertAttributesForMarkers(NSRange, NSUInteger, TSWPAttributeIndex, markerArray &, TSWPStorageTransaction *)"}];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"), 304, @"insertAttributesForMarkers: we should not be in this method without objects or starts."}];
  }

  var1 = a1->var1;
  if (var1 > 7)
  {
    if (var1 == 8)
    {
      v34 = *a6;
      v33 = a6[1];
      if (*a6 != v33)
      {
        v35 = a2 + 1;
        do
        {
          if (*(v34 + 8) == 4)
          {
            ++a5;
            v55 = v35 + *v34;
            v56 = 0;
            TSWPAttributeArray::insertAttribute(a1, &v55, a5, 0, a7);
            v33 = a6[1];
          }

          v34 += 16;
        }

        while (v34 != v33);
      }
    }

    else if (var1 == 11)
    {
      for (i = *a6; i != a6[1]; i += 16)
      {
        if (IsParagraphBreakingCharacter(*(i + 8)))
        {
          var2 = a1[1].var2;
          if (var2 == 0x7FFFFFFFFFFFFFFFLL)
          {
            var2 = a5;
          }

          if (var2 < a1->var2)
          {
            if (*(a1->var4 + 4 * var2 + 2))
            {
              if (a4)
              {
                v47 = a2 + *i + 1;
                if (a2 + *i != 0x7FFFFFFFFFFFFFFELL)
                {
                  var5 = a1->var5;
                  if (var5)
                  {
                    v49 = a6[1];
                    if (v49 == *a6 || *(v49 - 16) != a4 - 1)
                    {
                      v50 = 0;
                    }

                    else
                    {
                      v50 = IsParagraphBreakingCharacter(*(v49 - 8));
                      var5 = a1->var5;
                    }

                    [var5 setListStart:0 forCharRange:v47 undoTransaction:{a2 + a4 - v47 + v50, a7}];
                  }
                }
              }
            }
          }

          break;
        }
      }
    }

    else if (var1 == 18 && a1[1].var2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [a1->var5 writingDirectionForParagraphAtParIndex:?];
      v19 = *a6;
      if (*a6 != a6[1])
      {
        v20 = v18;
        v21 = a2 + 1;
        do
        {
          if (IsParagraphBreakingCharacter(*(v19 + 8)))
          {
            [a1->var5 setParagraphWritingDirection:v20 forCharRange:v21 + *v19 undoTransaction:{1, a7}];
          }

          v19 += 16;
        }

        while (v19 != a6[1]);
      }
    }
  }

  else if (var1)
  {
    if (var1 == 1)
    {
      if (a1[1].var2 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = [a1->var5 paragraphLevelAtParIndex:?];
        v37 = *a6;
        if (*a6 != a6[1])
        {
          v38 = v36;
          v39 = a2 + 1;
          do
          {
            if (IsParagraphBreakingCharacter(*(v37 + 8)))
            {
              [a1->var5 setParagraphLevel:v38 forCharRange:v39 + *v37 undoTransaction:{1, a7}];
            }

            v37 += 16;
          }

          while (v37 != a6[1]);
        }
      }
    }

    else if (var1 == 2)
    {
      if (a4 && *&a1[1].var1 != 0x7FFFFFFFFFFFFFFFLL && (v16 = a1->var5) != 0)
      {
        v17 = [objc_msgSend(v16 "stylesheet")];
        if (!v17)
        {
          v17 = [objc_msgSend(a1->var5 "stylesheet")];
        }

        if ([a1->var5 listStyleAtCharIndex:*&a1[1].var1 effectiveRange:0] != v17)
        {
          [a1->var5 setListStyle:v17 forCharRange:*&a1[1].var1 undoTransaction:{a2 + a4 - *&a1[1].var1, a7}];
        }
      }

      else
      {
        v41 = a1[1].var2;
        if (v41 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v42 = [a1->var5 listStyleAtParIndex:v41 effectiveRange:0];
          v43 = *a6;
          if (*a6 != a6[1])
          {
            v44 = v42;
            v45 = a2 + 1;
            do
            {
              if (IsParagraphBreakingCharacter(*(v43 + 8)))
              {
                ++a5;
                v55 = v45 + *v43;
                v56 = v44;
                TSWPAttributeArray::insertAttribute(a1, &v55, a5, 0, a7);
              }

              v43 += 16;
            }

            while (v43 != a6[1]);
          }
        }
      }
    }
  }

  else
  {
    v54 = [a1->var5 isInInit];
    v53 = [objc_msgSend(a1->var5 "documentRoot")];
    v22 = *a6;
    if (*a6 != a6[1])
    {
      v23 = 0;
      v24 = a2 + 1;
      do
      {
        if (IsParagraphBreakingCharacter(*(v22 + 8)))
        {
          v25 = v24 + *v22;
          if (!v23)
          {
            v26 = a1[1].var2;
            var4 = a1->var4;
            if (v26 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = *(var4 + 2 * a5 + 1);
              v28 = v24 + *v22;
            }

            else
            {
              v23 = *(var4 + 2 * v26 + 1);
              v28 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v26);
            }

            if (!(v54 & 1 | ((a1[1].var0 & 1) == 0) | v53 & 1))
            {
              v29 = [v23 followingParagraphStyle];
              if (v29 && v29 != v23)
              {
                v31 = v29;
                if (*&a1[1].var1 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  *&a1[1].var1 = v28;
                  v32 = [a1->var5 attributeArrayForKind:2];
                  if (v32)
                  {
                    *(v32 + 64) = *&a1[1].var1;
                  }
                }

                v23 = v31;
              }
            }
          }

          ++a5;
          v55 = v25;
          v56 = v23;
          TSWPAttributeArray::insertAttribute(a1, &v55, a5, 0, a7);
        }

        v22 += 16;
      }

      while (v22 != a6[1]);
    }
  }

  LOBYTE(a1[1].var0) = 0;
  v51.f64[0] = NAN;
  v51.f64[1] = NAN;
  result = vnegq_f64(v51);
  *&a1[1].var1 = result;
  return result;
}

BOOL TSWPParagraphAttributeArray::canCollapseAttributes(TSWPParagraphAttributeArray *this, const TSWPAttributeRecord *a2, const TSWPAttributeRecord *a3)
{
  if ((*(this->var0 + 3))(this))
  {
    return *(a2 + 1) == *(a3 + 1);
  }

  return TSWPParagraphAttributeArray::dataIsSame(this, a2 + 4, a3 + 4);
}

BOOL TSWPParagraphAttributeArray::dataIsSame(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if ((*(*a1 + 32))(a1))
  {
    return *a2 == *a3 && a2[1] == a3[1];
  }

  else
  {
    if (!(*(*a1 + 40))(a1))
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSWPParagraphAttributeArray::dataIsSame(const TSWPParagraphData &, const TSWPParagraphData &) const"}];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"), 711, @"Do not call dataIsSame for this table."}];
      return 0;
    }

    return *a2 == *a3;
  }
}

TSWPParagraphAttributeArray *TSWPParagraphAttributeArray::collapseAttributesAtAttributeIndex(TSWPParagraphAttributeArray *this, unint64_t a2, TSWPStorageTransaction *a3)
{
  v5 = this;
  if (a2 && this->var2 > a2 && (this = (*(this->var0 + 26))(this, this->var4 + 16 * a2, this->var4 + 16 * a2 - 16), (this & 1) != 0) || v5->var2 - 1 == a2 && (v6 = TSWPAttributeArray::charIndexForAttributeIndex(v5, a2), this = TSWPAttributeArray::characterCount(v5), v6 > this))
  {
    v7 = *(v5->var0 + 7);

    return v7(v5, a2, 1, a3);
  }

  return this;
}

unint64_t TSWPParagraphAttributeArray::attributeIndexForParagraphIndex(TSWPParagraphAttributeArray *this, unint64_t a2, TSWPAttributeArray *a3, unint64_t *a4)
{
  v6 = TSWPAttributeArray::charIndexForAttributeIndex(a3, a2);
  v7 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(this, v6);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPAttributeIndex TSWPParagraphAttributeArray::attributeIndexForParagraphIndex(TSWPAttributeIndex, TSWPParagraphAttributeArray *, TSWPCharIndex *)"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphAttributeArray.mm"), 546, @"Bad attribute index."}];
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a4)
    {
      return v7;
    }

    goto LABEL_5;
  }

  v10 = TSWPAttributeArray::charIndexForAttributeIndex(this, v7);
  if (a4)
  {
LABEL_5:
    *a4 = v10;
  }

  return v7;
}

TSWPParagraphAttributeArray *TSWPParagraphAttributeArray::didApplyAttributes(TSWPParagraphAttributeArray *this, _NSRange a2, TSWPAttributeArray *a3, TSWPStorageTransaction *a4)
{
  v4 = a2.location + a2.length;
  if (!__CFADD__(a2.location, a2.length))
  {
    location = a2.location;
    v8 = this;
    do
    {
      if (location < a3->var2)
      {
        v9 = TSWPAttributeArray::charIndexForAttributeIndex(a3, location);
        v10 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v8, v9);
        this = (*(v8->var0 + 29))(v8, v10, a4);
      }

      ++location;
    }

    while (location <= v4);
  }

  return this;
}

void *TSWPParagraphAttributeArray::description(TSWPParagraphAttributeArray *this)
{
  var1 = this->var1;
  if (var1 > 10)
  {
    if (var1 == 11)
    {
      v3 = [MEMORY[0x277CCAB68] string];
      [v3 appendFormat:@"%s <%p> %@: Count: %lu.\n", (*(this->var0 + 22))(this), this, @"ParagraphListStarts", this->var2];
      if (this->var2)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          [v3 appendFormat:@"\t%u CharIndex: %lu, start %lu\n"], v11, TSWPAttributeArray::charIndexForAttributeIndex(this, v11), *(this->var4 + v12));
          ++v11;
          v12 += 16;
        }

        while (v11 < this->var2);
      }

      return v3;
    }

    if (var1 == 18)
    {
      v3 = [MEMORY[0x277CCAB68] string];
      [v3 appendFormat:@"%s <%p> %@: Count: %lu.\n", (*(this->var0 + 22))(this), this, @"ParagraphWritingDirection", this->var2];
      if (this->var2)
      {
        v6 = 0;
        v7 = 8;
        do
        {
          [v3 appendFormat:@"\t%u CharIndex: %lu, direction %d\n"], v6, TSWPAttributeArray::charIndexForAttributeIndex(this, v6), *(this->var4 + v7));
          ++v6;
          v7 += 16;
        }

        while (v6 < this->var2);
      }

      return v3;
    }
  }

  else
  {
    if (var1 == 1)
    {
      v3 = [MEMORY[0x277CCAB68] string];
      [v3 appendFormat:@"%s <%p> %@: Count: %lu.\n", (*(this->var0 + 22))(this), this, @"ParagraphData", this->var2];
      if (this->var2)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          [v3 appendFormat:@"\t%u CharIndex: %lu, level %d flags %d\n"], v10, TSWPAttributeArray::charIndexForAttributeIndex(this, v10), *(this->var4 + v9 + 8), *(this->var4 + v9 + 10));
          ++v10;
          v9 += 16;
        }

        while (v10 < this->var2);
      }

      return v3;
    }

    if (var1 == 10)
    {
      v3 = [MEMORY[0x277CCAB68] string];
      [v3 appendFormat:@"%s <%p> %@: Count: %u.\n", (*(this->var0 + 22))(this), this, @"CellData", this->var2];
      if (this->var2)
      {
        v4 = 0;
        v5 = 0;
        do
        {
          [v3 appendFormat:@"\t%u CharIndex: %lu, row %d column %d\n"], v5, TSWPAttributeArray::charIndexForAttributeIndex(this, v5), *(this->var4 + v4 + 8), *(this->var4 + v4 + 10));
          ++v5;
          v4 += 16;
        }

        while (v5 < this->var2);
      }

      return v3;
    }
  }

  return TSWPAttributeArray::description(this);
}

uint64_t TSWPParagraphAttributeArray::attributeIndexForOrderedParagraphData(void *a1, int *a2)
{
  v3 = *a2;
  v9 = 0;
  v10 = v3;
  v4 = a1[4];
  v5 = a1[2];
  if ((*(*a1 + 40))(a1))
  {
    v6 = singleComparator;
  }

  else
  {
    v6 = pairedComparator;
  }

  v7 = bsearch(&v9, v4, v5, 0x10uLL, v6);
  if (v7)
  {
    return (v7 - a1[4]) >> 4;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

uint64_t singleComparator(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t pairedComparator(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 != v3)
  {
    return 1;
  }

  v5 = a1[5];
  v6 = a2[5];
  v7 = v5 >= v6;
  v8 = v5 != v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL TSWPParagraphAttributeArray::hasSingleData(TSWPParagraphAttributeArray *this)
{
  if ((*(this->var0 + 3))(this))
  {
    return 0;
  }

  var1 = this->var1;
  return var1 == 11 || var1 == 18;
}

uint64_t TSWPTopicNumberHints::TSWPTopicNumberHints(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *(a1 + 24) = vnegq_f64(v3);
  *(a1 + 40) = a2;
  return a1;
}

TSWPTopicNumberHints *TSWPTopicNumberHints::setCharIndexAndValidCharIndex(TSWPTopicNumberHints *this, unint64_t a2, unint64_t a3)
{
  v5 = this;
  if (a2 != 0x7FFFFFFFFFFFFFFFLL && a2 > a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPTopicNumberHints::setCharIndexAndValidCharIndex(TSWPCharIndex, TSWPCharIndex)"}];
    this = [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTopicNumberHints.mm"), 58, @"Bad charIndex compared to validThroughCharIndex."}];
  }

  v5->_charIndex = a2;
  v5->_validThroughCharIndex = a3;
  return this;
}

void TSWPTopicNumberHints::TSWPTopicNumberHints(TSWPTopicNumberHints *this, const TSWPTopicNumberHints *a2)
{
  this->_numbersForListStyle.__tree_.__size_ = 0;
  this->_numbersForListStyle.__tree_.__end_node_.__left_ = 0;
  this->_numbersForListStyle.__tree_.__begin_node_ = &this->_numbersForListStyle.__tree_.__end_node_;
  if (this != a2)
  {
    std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__tree_node<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,void *> *,long>>(this, a2->_numbersForListStyle.__tree_.__begin_node_, &a2->_numbersForListStyle.__tree_.__end_node_.__left_);
  }

  TSWPTopicNumberHints::setCharIndexAndValidCharIndex(this, a2->_charIndex, a2->_validThroughCharIndex);
  this->_styleProvider = a2->_styleProvider;
}

TSWPTopicNumberHints *TSWPTopicNumberHints::operator=(TSWPTopicNumberHints *this, TSWPTopicNumberHints *a2)
{
  if (this != a2)
  {
    std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__tree_node<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,void *> *,long>>(this, a2->_numbersForListStyle.__tree_.__begin_node_, &a2->_numbersForListStyle.__tree_.__end_node_.__left_);
  }

  TSWPTopicNumberHints::setCharIndexAndValidCharIndex(this, a2->_charIndex, a2->_validThroughCharIndex);

  this->_styleProvider = a2->_styleProvider;
  return this;
}

BOOL TSWPTopicNumberHints::operator==(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v16 = v2;
  v17 = v3;
  if (*(a1 + 16) == a2[2])
  {
    v6 = (a1 + 8);
    v7 = *a1;
    if (*a1 == a1 + 8)
    {
      return *(a1 + 40) == a2[5];
    }

    v8 = *a2;
    while (std::__equal_to::operator()[abi:nn200100]<std::pair<TSWPListStyle const* const,std::vector<TSWPTopicNumberEntry>>,std::pair<TSWPListStyle const* const,std::vector<TSWPTopicNumberEntry>>>(&v15, v7 + 4, v8 + 4))
    {
      v9 = v7[1];
      v10 = v7;
      if (v9)
      {
        do
        {
          v7 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v7 = v10[2];
          v11 = *v7 == v10;
          v10 = v7;
        }

        while (!v11);
      }

      v12 = v8[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v8[2];
          v11 = *v13 == v8;
          v8 = v13;
        }

        while (!v11);
      }

      v8 = v13;
      if (v7 == v6)
      {
        return *(a1 + 40) == a2[5];
      }
    }
  }

  return 0;
}

BOOL TSWPTopicNumberHints::equivalentState(TSWPTopicNumberHints *this, const TSWPTopicNumberHints *a2)
{
  if (this->_numbersForListStyle.__tree_.__size_ == a2->_numbersForListStyle.__tree_.__size_)
  {
    begin_node = this->_numbersForListStyle.__tree_.__begin_node_;
    p_end_node = &this->_numbersForListStyle.__tree_.__end_node_;
    v3 = begin_node;
    if (begin_node == p_end_node)
    {
      return 1;
    }

    left = a2->_numbersForListStyle.__tree_.__end_node_.__left_;
    v5 = &a2->_numbersForListStyle.__tree_.__end_node_;
    v6 = left;
    if (left)
    {
      LOBYTE(v8) = 1;
      while (1)
      {
        v9 = v3[4].__left_;
        v10 = v5;
        v11 = v6;
        do
        {
          v12 = v11[4].__left_;
          v13 = v12 >= v9;
          v14 = v12 < v9;
          if (v13)
          {
            v10 = v11;
          }

          v11 = v11[v14].__left_;
        }

        while (v11);
        if (v10 == v5)
        {
          break;
        }

        if (v9 < v10[4].__left_)
        {
          break;
        }

        v15 = v3[5].__left_;
        v16 = v3[6].__left_ - v15;
        v18 = v10 + 5;
        v17 = v10[5].__left_;
        if (v16 != v18[1].__left_ - v17)
        {
          break;
        }

        if (v8)
        {
          v19 = (v16 >> 4) + 1;
          do
          {
            v8 = --v19 == 0;
            if (!v19)
            {
              break;
            }

            v21 = *v15;
            v15 += 2;
            v20 = v21;
            v22 = *v17;
            v17 += 2;
          }

          while (v20 == v22);
        }

        else
        {
          v8 = 0;
        }

        v23 = v3[1].__left_;
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = v23->__left_;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v3[2].__left_;
            v25 = v24->__left_ == v3;
            v3 = v24;
          }

          while (!v25);
        }

        v3 = v24;
        if (v24 == p_end_node)
        {
          return v8;
        }
      }
    }
  }

  return 0;
}

TSWPTopicNumberHints *TSWPTopicNumberHints::offsetCharIndex(TSWPTopicNumberHints *this, uint64_t a2, unint64_t a3)
{
  charIndex = this->_charIndex;
  validThroughCharIndex = this->_validThroughCharIndex;
  v6 = charIndex < a3 || charIndex == 0x7FFFFFFFFFFFFFFFLL;
  if (!v6)
  {
    charIndex += a2;
    begin_node = this->_numbersForListStyle.__tree_.__begin_node_;
    if (this->_numbersForListStyle.__tree_.__begin_node_ != &this->_numbersForListStyle.__tree_.__end_node_)
    {
      do
      {
        v8 = begin_node[5];
        v9 = begin_node[6] - v8;
        if (v9)
        {
          v10 = v9 >> 4;
          if (v10 <= 1)
          {
            v10 = 1;
          }

          v11 = (v8 + 8);
          do
          {
            if (*v11 >= a3)
            {
              *v11 += a2;
            }

            v11 += 2;
            --v10;
          }

          while (v10);
        }

        v12 = begin_node[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = v12->_numbersForListStyle.__tree_.__begin_node_;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = begin_node[2];
            v6 = v13->_numbersForListStyle.__tree_.__begin_node_ == begin_node;
            begin_node = &v13->_numbersForListStyle.__tree_.__begin_node_;
          }

          while (!v6);
        }

        begin_node = &v13->_numbersForListStyle.__tree_.__begin_node_;
      }

      while (v13 != &this->_numbersForListStyle.__tree_.__end_node_);
    }
  }

  if (validThroughCharIndex == 0x7FFFFFFFFFFFFFFFLL || validThroughCharIndex < a3)
  {
    a2 = 0;
  }

  v15 = a2 + validThroughCharIndex;
  if (charIndex <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = charIndex;
  }

  return TSWPTopicNumberHints::setCharIndexAndValidCharIndex(this, charIndex, v16);
}

uint64_t TSWPTopicNumberHints::nextTopicNumberForList(TSWPTopicNumberHints *this, TSWPListStyle *a2, unint64_t a3)
{
  if (!a2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSUInteger TSWPTopicNumberHints::nextTopicNumberForList(TSWPListStyle *, TSWPParagraphLevel) const"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTopicNumberHints.mm"), 159, @"invalid nil value for '%s'", "listStyle"}];
  }

  if (a3 >= 9)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSUInteger TSWPTopicNumberHints::nextTopicNumberForList(TSWPListStyle *, TSWPParagraphLevel) const"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTopicNumberHints.mm"), 160, @"Bad level value: %lu", a3}];
  }

  v10 = [(TSWPListStyle *)a2 baseStyleForTopicNumbers];
  left = this->_numbersForListStyle.__tree_.__end_node_.__left_;
  p_end_node = &this->_numbersForListStyle.__tree_.__end_node_;
  v11 = left;
  if (!left)
  {
    return 1;
  }

  v14 = p_end_node;
  do
  {
    v15 = *(v11 + 4);
    v16 = v15 >= v10;
    v17 = v15 < v10;
    if (v16)
    {
      v14 = v11;
    }

    v11 = *(v11 + v17);
  }

  while (v11);
  if (v14 == p_end_node)
  {
    return 1;
  }

  if (v10 < v14[4].__left_)
  {
    return 1;
  }

  v19 = v14 + 5;
  v18 = v14[5].__left_;
  if (a3 >= (v19[1].__left_ - v18) >> 4)
  {
    return 1;
  }

  else
  {
    return v18[2 * a3] + 1;
  }
}

uint64_t TSWPTopicNumberHints::previousCharIndexForList(TSWPTopicNumberHints *this, TSWPListStyle *a2, unint64_t a3)
{
  if (!a2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPTopicNumberHints::previousCharIndexForList(TSWPListStyle *, TSWPParagraphLevel) const"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTopicNumberHints.mm"), 186, @"invalid nil value for '%s'", "listStyle"}];
  }

  if (a3 >= 9)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPTopicNumberHints::previousCharIndexForList(TSWPListStyle *, TSWPParagraphLevel) const"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTopicNumberHints.mm"), 187, @"Bad level value: %lu", a3}];
  }

  v10 = [(TSWPListStyle *)a2 baseStyleForTopicNumbers];
  left = this->_numbersForListStyle.__tree_.__end_node_.__left_;
  p_end_node = &this->_numbersForListStyle.__tree_.__end_node_;
  v11 = left;
  if (left)
  {
    v14 = v10;
    v15 = p_end_node;
    do
    {
      v16 = *(v11 + 4);
      v17 = v16 >= v10;
      v18 = v16 < v10;
      if (v17)
      {
        v15 = v11;
      }

      v11 = *(v11 + v18);
    }

    while (v11);
    if (v15 != p_end_node)
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (v14 < v15[4].__left_)
      {
        return result;
      }

      v21 = v15 + 5;
      v20 = v15[5].__left_;
      v22 = (v21[1].__left_ - v20) >> 4;
      if (v22 >= a3 + 1)
      {
        v22 = a3 + 1;
      }

      v23 = v22 + 1;
      v24 = &v20[16 * v22 - 8];
      while (--v23)
      {
        v26 = *v24;
        v24 -= 2;
        v25 = v26;
        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return v25;
        }
      }
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

void TSWPTopicNumberHints::setTopicNumberForList(TSWPTopicNumberHints *this, TSWPListStyle *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!a2)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPTopicNumberHints::setTopicNumberForList(TSWPListStyle *, TSWPParagraphLevel, NSUInteger, TSWPCharIndex)"}];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTopicNumberHints.mm"), 214, @"invalid nil value for '%s'", "listStyle"}];
  }

  if (a3 >= 9)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPTopicNumberHints::setTopicNumberForList(TSWPListStyle *, TSWPParagraphLevel, NSUInteger, TSWPCharIndex)"}];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTopicNumberHints.mm"), 215, @"Bad level value: %lu", a3}];
  }

  if (a4 && [(TSWPListStyle *)a2 labelTypeForLevel:a3]== 3)
  {
    v14 = [(TSWPListStyle *)a2 baseStyleForTopicNumbers];
    v32 = 0;
    v33 = v14;
    __p = 0;
    v31 = 0;
    left = this->_numbersForListStyle.__tree_.__end_node_.__left_;
    if (!left)
    {
      goto LABEL_17;
    }

    p_end_node = &this->_numbersForListStyle.__tree_.__end_node_;
    do
    {
      v17 = left[4].__left_;
      v18 = v17 >= v14;
      v19 = v17 < v14;
      if (v18)
      {
        p_end_node = left;
      }

      left = left[v19].__left_;
    }

    while (left);
    if (p_end_node == &this->_numbersForListStyle.__tree_.__end_node_ || v14 < p_end_node[4].__left_ || &__p == &p_end_node[5])
    {
LABEL_17:
      v21 = 0;
      v20 = 0;
    }

    else
    {
      std::vector<TSWPTopicNumberEntry>::__assign_with_size[abi:nn200100]<TSWPTopicNumberEntry*,TSWPTopicNumberEntry*>(&__p, p_end_node[5].__left_, p_end_node[6].__left_, (p_end_node[6].__left_ - p_end_node[5].__left_) >> 4);
      v21 = __p;
      v20 = v31;
    }

    for (i = (v20 - v21) >> 4; i <= a3; i = (v20 - v21) >> 4)
    {
      *&v29 = 1;
      *(&v29 + 1) = 0x7FFFFFFFFFFFFFFFLL;
      if (v20 >= v32)
      {
        v20 = std::vector<TSWPTopicNumberEntry>::__emplace_back_slow_path<TSWPTopicNumberEntry const&>(&__p, &v29);
        v21 = __p;
      }

      else
      {
        *v20++ = xmmword_26CA66A20;
      }

      v31 = v20;
    }

    if (i > a3 + 1)
    {
      v23 = v20 - v21 - 16;
      do
      {
        --v20;
        v18 = a3 + 1 >= v23 >> 4;
        v23 -= 16;
      }

      while (!v18);
      v31 = v20;
    }

    v24 = &v21[16 * a3];
    *v24 = a4;
    v24[1] = a5;
    *&v29 = &v33;
    v25 = (std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::__emplace_unique_key_args<TSWPListStyle const*,std::piecewise_construct_t const&,std::tuple<TSWPListStyle const* const&>,std::tuple<>>(this, &v33) + 5);
    if (v25 != &__p)
    {
      std::vector<TSWPTopicNumberEntry>::__assign_with_size[abi:nn200100]<TSWPTopicNumberEntry*,TSWPTopicNumberEntry*>(v25, __p, v31, (v31 - __p) >> 4);
    }

    validThroughCharIndex = this->_validThroughCharIndex;
    if (validThroughCharIndex != 0x7FFFFFFFFFFFFFFFLL && validThroughCharIndex > a5)
    {
      v27 = [MEMORY[0x277D6C290] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSWPTopicNumberHints::setTopicNumberForList(TSWPListStyle *, TSWPParagraphLevel, NSUInteger, TSWPCharIndex)"}];
      [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTopicNumberHints.mm"), 245, @"Bad char index relative to _validThroughCharIndex"}];
    }

    TSWPTopicNumberHints::setCharIndexAndValidCharIndex(this, a5, a5);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }
}

void sub_26C903208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *TSWPTopicNumberHints::unarchiveSetEntriesForListStyle(uint64_t a1, unint64_t a2, __int128 **a3)
{
  v5[0] = a2;
  v5[2] = v5;
  result = (std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::__emplace_unique_key_args<TSWPListStyle const*,std::piecewise_construct_t const&,std::tuple<TSWPListStyle const* const&>,std::tuple<>>(a1, v5) + 5);
  if (result != a3)
  {
    return std::vector<TSWPTopicNumberEntry>::__assign_with_size[abi:nn200100]<TSWPTopicNumberEntry*,TSWPTopicNumberEntry*>(result, *a3, a3[1], a3[1] - *a3);
  }

  return result;
}

TSWPTopicNumberHints *TSWPTopicNumberHints::backUpByOneParagraph(TSWPTopicNumberHints *this, TSWPTopicNumberHints *a2, TSWPStorage *a3)
{
  charIndex = this->_charIndex;
  if (charIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = TSWPTopicNumberHints::operator=(this, a2);

    return TSWPTopicNumberHints::advanceToCharIndex(v5, charIndex, a3);
  }

  return this;
}

TSWPTopicNumberHints *TSWPTopicNumberHints::advanceToCharIndex(TSWPTopicNumberHints *this, NSUInteger a2, TSWPStorage *a3)
{
  if (this->_validThroughCharIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    validThroughCharIndex = 0;
  }

  else
  {
    validThroughCharIndex = this->_validThroughCharIndex;
  }

  if (a3 && validThroughCharIndex < a2)
  {
    if ([(TSWPStorage *)a3 length]<= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 + 1;
    }

    if (validThroughCharIndex <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = validThroughCharIndex;
    }

    if (validThroughCharIndex >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = validThroughCharIndex;
    }

    [(TSWPStorage *)a3 paragraphEnumeratorForCharRange:v9 styleProvider:v8 - v9, this->_styleProvider];
    charIndex = this->_charIndex;
    if (charIndex == TSWPParagraphEnumerator::paragraphTextRange(&v20) && !TSWPParagraphEnumerator::isLastParagraph(&v20))
    {
      TSWPParagraphEnumerator::operator++(&v20);
    }

    v11 = TSWPParagraphEnumerator::paragraphTextRange(&v20);
    if (v11 + v12 < [(TSWPStorage *)a3 length])
    {
      while (1)
      {
        if (TSWPParagraphEnumerator::paragraphTextRange(&v20) >= a2)
        {
          TSWPParagraphEnumerator::paragraphTextRange(&v20);
          if (v13)
          {
            break;
          }
        }

        v14 = TSWPParagraphEnumerator::paragraphLevel(&v20);
        v15 = TSWPParagraphEnumerator::paragraphListStyle(&v20);
        objc_opt_class();
        TSWPParagraphEnumerator::attachmentOrFootnoteAtCharIndex(&v20, 0);
        v16 = TSUDynamicCast();
        if (-[TSWPListStyle effectiveTypeForLevel:](v15, "effectiveTypeForLevel:", v14) == 3 && ([v16 isPartitioned] & 1) == 0)
        {
          TopicNumberForList = TSWPParagraphEnumerator::paragraphListStart(&v20);
          if (!TopicNumberForList)
          {
            TopicNumberForList = TSWPTopicNumberHints::nextTopicNumberForList(this, v15, v14);
          }

          v18 = TSWPParagraphEnumerator::paragraphTextRange(&v20);
          TSWPTopicNumberHints::setTopicNumberForList(this, v15, v14, TopicNumberForList, v18);
        }

        if (TSWPParagraphEnumerator::isLastParagraph(&v20))
        {
          break;
        }

        TSWPParagraphEnumerator::operator++(&v20);
      }
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v20);
  }

  return TSWPTopicNumberHints::setCharIndexAndValidCharIndex(this, this->_charIndex, a2);
}

void TSWPTopicNumberHints::reset(TSWPTopicNumberHints *this)
{
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  *&this->_charIndex = vnegq_f64(v2);
  p_end_node = &this->_numbersForListStyle.__tree_.__end_node_;
  std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::destroy(this, this->_numbersForListStyle.__tree_.__end_node_.__left_);
  this->_numbersForListStyle.__tree_.__begin_node_ = p_end_node;
  this->_numbersForListStyle.__tree_.__size_ = 0;
  p_end_node->__left_ = 0;
}

id TSWPTopicNumberHints::resetWithStyleProvider(uint64_t a1, void *a2)
{
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  *(a1 + 24) = vnegq_f64(v4);
  v5 = (a1 + 8);
  std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::destroy(a1, *(a1 + 8));
  *a1 = v5;
  *(a1 + 16) = 0;
  *v5 = 0;

  result = a2;
  *(a1 + 40) = result;
  return result;
}

void std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__tree_node<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v15[0] = v8 + 4;
          v15[1] = v8 + 5;
          std::pair<TSWPListStyle const*&,std::vector<TSWPTopicNumberEntry> &>::operator=[abi:nn200100]<TSWPListStyle const* const,std::vector<TSWPTopicNumberEntry>,0>(v15, (v9 + 4));
          std::__tree<unsigned long>::__node_insert_multi(v5, v14);
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v14;
          if (v14)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::__emplace_multi<std::pair<TSWPListStyle const* const,std::vector<TSWPTopicNumberEntry>> const&>();
  }

  return result;
}

void sub_26C903754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<TSWPListStyle const*&,std::vector<TSWPTopicNumberEntry> &>::operator=[abi:nn200100]<TSWPListStyle const* const,std::vector<TSWPTopicNumberEntry>,0>(uint64_t a1, uint64_t a2)
{
  **a1 = *a2;
  v3 = *(a1 + 8);
  if (v3 != (a2 + 8))
  {
    std::vector<TSWPTopicNumberEntry>::__assign_with_size[abi:nn200100]<TSWPTopicNumberEntry*,TSWPTopicNumberEntry*>(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 4);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](uint64_t a1)
{
  std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_26C903924(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<TSWPTopicNumberEntry>::__init_with_size[abi:nn200100]<TSWPTopicNumberEntry*,TSWPTopicNumberEntry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGPoint>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL std::__equal_to::operator()[abi:nn200100]<std::pair<TSWPListStyle const* const,std::vector<TSWPTopicNumberEntry>>,std::pair<TSWPListStyle const* const,std::vector<TSWPTopicNumberEntry>>>(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v4 = a2[1];
  v3 = a2[2];
  v5 = a3[1];
  if (v3 - v4 != a3[2] - v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  do
  {
    v6 = *v4;
    v7 = *(v4 + 1);
    v4 += 16;
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    result = v6 == v8 && v7 == v9;
  }

  while (result && v4 != v3);
  return result;
}

char *std::vector<TSWPTopicNumberEntry>::__assign_with_size[abi:nn200100]<TSWPTopicNumberEntry*,TSWPTopicNumberEntry*>(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CGPoint>::__vallocate[abi:nn200100](a1, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v18 = *v5++;
      *result = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 16;
        v12 -= 16;
      }

      while (v12);
      v11 = a1[1];
    }

    v15 = v11;
    if (v13 != a3)
    {
      v15 = v11;
      v16 = v11;
      do
      {
        v17 = *v13++;
        *v16 = v17;
        v16 += 16;
        v15 += 16;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t std::vector<TSWPTopicNumberEntry>::__emplace_back_slow_path<TSWPTopicNumberEntry const&>(uint64_t a1, _OWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CGPoint>>(a1, v7);
  }

  __p = 0;
  v11 = (16 * v2);
  *v11 = *a2;
  v12 = 16 * v2 + 16;
  v13 = 0;
  std::vector<TSWPTopicNumberEntry>::__swap_out_circular_buffer(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_26C903C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 **std::vector<TSWPTopicNumberEntry>::__swap_out_circular_buffer(__int128 **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void *std::__tree<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::__map_value_compare<TSWPListStyle const*,std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>,std::less<TSWPListStyle const*>,true>,std::allocator<std::__value_type<TSWPListStyle const*,std::vector<TSWPTopicNumberEntry>>>>::__emplace_unique_key_args<TSWPListStyle const*,std::piecewise_construct_t const&,std::tuple<TSWPListStyle const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPTargetHint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t TSWPAttributeEnumerator::TSWPAttributeEnumerator(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = [a2 length];
  *(a1 + 24) = [a2 attributeArrayForKind:a5];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x7FFFFFFFFFFFFFFFLL;
  v11.location = a3;
  v11.length = a4;
  TSWPAttributeEnumerator::resetRange(a1, v11);
  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = [a2 length];
  *(a1 + 24) = [a2 attributeArrayForKind:a5];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x7FFFFFFFFFFFFFFFLL;
  v11.location = a3;
  v11.length = a4;
  TSWPAttributeEnumerator::resetRange(a1, v11);
  return a1;
}

TSWPAttributeArray *TSWPAttributeEnumerator::resetRange(TSWPAttributeEnumerator *this, _NSRange a2)
{
  *(this + 2) = a2.location + a2.length;
  result = *(this + 3);
  if (result)
  {
    result = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(result, a2.location);
    *(this + 5) = result;
    v4 = *(this + 3) != 0;
  }

  else
  {
    v4 = 0;
  }

  *(this + 32) = v4;
  return result;
}

uint64_t TSWPAttributeEnumerator::nextAttributeIndex(id *this, _NSRange *a2)
{
  if ([*this length] != this[1])
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSWPAttributeRecord *TSWPAttributeEnumerator::nextAttributeIndex(NSRange *)"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPAttributeEnumerator.mm"), 56, @"Storage was modified while enumerating attributes"}];
  }

  if (this[4])
  {
    v6 = this[3];
    v7 = this[5];
    v8 = v6->var4 + 16 * v7;
    v9 = TSWPAttributeArray::charIndexForAttributeIndex(v6, v7);
    v10 = this[5] + 1;
    this[5] = v10;
    v11 = this[3];
    if (v10 >= v11->var2)
    {
      *(this + 32) = 0;
      v13 = [*this length];
      if (!a2)
      {
        return v8;
      }

      goto LABEL_16;
    }

    v12 = TSWPAttributeArray::charIndexForAttributeIndex(v11, v10);
    v13 = v12;
    v14 = this[2];
    if (v12 < v14 || v12 == v14 && v12 == [*this length])
    {
      *(this + 32) = 1;
      if (!a2)
      {
        return v8;
      }

      goto LABEL_16;
    }

    *(this + 32) = 0;
    if (a2)
    {
LABEL_16:
      v15 = v13 - v9;
      goto LABEL_17;
    }
  }

  else
  {
    if (a2)
    {
      v9 = [*this length];
      v15 = 0;
      v8 = 0;
LABEL_17:
      a2->location = v9;
      a2->length = v15;
      return v8;
    }

    return 0;
  }

  return v8;
}

uint64_t TSWPCharacterStylePropertyEnumerator::TSWPCharacterStylePropertyEnumerator(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, int a5)
{
  *a1 = a5;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a2;
  v9 = (a1 + 24);
  *(a1 + 32) = [a2 length];
  *(a1 + 48) = [a2 attributeArrayForKind:0];
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  v14.location = a3;
  v14.length = a4;
  TSWPAttributeEnumerator::resetRange(v9, v14);
  *(a1 + 72) = TSWPAttributeEnumerator::nextAttributeIndex(v9, (a1 + 80));
  v10 = TSUIntersectionRangeWithEdge();
  v12 = v11;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 96) = a2;
  *(a1 + 104) = [a2 length];
  *(a1 + 120) = [a2 attributeArrayForKind:3];
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  v15.location = v10;
  v15.length = v12;
  TSWPAttributeEnumerator::resetRange((a1 + 96), v15);
  *(a1 + 144) = TSWPAttributeEnumerator::nextAttributeIndex((a1 + 96), (a1 + 152));
  *(a1 + 168) = TSWPCharacterStylePropertyEnumerator::pNextBoxedValue(a1, (a1 + 176));
  return a1;
}

uint64_t TSWPCharacterStylePropertyEnumerator::pNextBoxedValue(TSWPCharacterStylePropertyEnumerator *this, _NSRange *a2)
{
  v3 = *(this + 9);
  if (!v3)
  {
    length = 0;
    v9 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

  v5 = *(this + 18);
  if (!v5)
  {
    v14 = *(v3 + 8);
    if (!v14 || (v9 = [v14 boxedValueForProperty:*this]) == 0)
    {
      v9 = [MEMORY[0x277CBEB68] null];
    }

    location = *(this + 10);
    length = *(this + 11);
    goto LABEL_17;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = [v6 boxedValueForProperty:*this];
    if (v7)
    {
      goto LABEL_9;
    }

    v3 = *(this + 9);
  }

  v8 = *(v3 + 8);
  if (!v8 || (v7 = [v8 boxedValueForProperty:*this]) == 0)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

LABEL_9:
  v9 = v7;
  v10 = NSIntersectionRange(*(this + 152), *(this + 5));
  location = v10.location;
  length = v10.length;
  AttributeIndex = TSWPAttributeEnumerator::nextAttributeIndex(this + 12, (this + 152));
  *(this + 18) = AttributeIndex;
  if (!AttributeIndex)
  {
    v16 = *(this + 10) - (v10.location + v10.length) + *(this + 11);
    *(this + 10) = v10.location + v10.length;
    *(this + 11) = v16;
    if (v16)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!*(this + 11))
  {
LABEL_17:
    *(this + 9) = TSWPAttributeEnumerator::nextAttributeIndex(this + 3, this + 5);
    v17 = NSIntersectionRange(*(this + 5), *(this + 8));
    *(this + 5) = v17;
    TSWPAttributeEnumerator::resetRange((this + 96), v17);
    *(this + 18) = TSWPAttributeEnumerator::nextAttributeIndex(this + 12, (this + 152));
  }

LABEL_18:
  a2->location = location;
  a2->length = length;
  return v9;
}

void TSWPCharacterStylePropertyEnumerator::~TSWPCharacterStylePropertyEnumerator(id *this)
{
}

{
}

id TSWPCharacterStylePropertyEnumerator::nextBoxedValue(NSRange *this, _NSRange *a2)
{
  length = this[10].length;
  if (!length)
  {
    i = 0;
    v5 = 0;
    location = 0x7FFFFFFFFFFFFFFFLL;
    if (!a2)
    {
      return v5;
    }

    goto LABEL_12;
  }

  v5 = length;
  location = this[11].location;
  for (i = this[11].length; ; i = v9.length)
  {
    BoxedValue = TSWPCharacterStylePropertyEnumerator::pNextBoxedValue(this, this + 11);
    this[10].length = BoxedValue;
    if (!BoxedValue)
    {
      v10 = 0;
      goto LABEL_11;
    }

    if (BoxedValue != v5 && ([BoxedValue isEqual:v5] & 1) == 0)
    {
      break;
    }

    v13.location = location;
    v13.length = i;
    v9 = NSUnionRange(v13, this[11]);
    location = v9.location;
  }

  v10 = this[10].length;
LABEL_11:
  v11 = v10;
  if (a2)
  {
LABEL_12:
    a2->location = location;
    a2->length = i;
  }

  return v5;
}

void sub_26C906AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned long,TSWPFontHeightCacheEntry>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,TSWPFontHeightCacheEntry>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,TSWPFontHeightCacheEntry>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_26C908024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TSWPParagraphEnumerator::TSWPParagraphEnumerator(TSWPParagraphEnumerator *this)
{
  *&this->var2 = 0u;
  *&this->var4 = 0u;
  *&this->var0 = 0u;
  this->var6 = 1;
}

{
  *&this->var2 = 0u;
  *&this->var4 = 0u;
  *&this->var0 = 0u;
  this->var6 = 1;
}

void TSWPParagraphEnumerator::TSWPParagraphEnumerator(TSWPParagraphEnumerator *this, const TSWPParagraphEnumerator *a2)
{
  *&this->var0 = *&a2->var0;
  *&this->var2 = *&a2->var2;
  *&this->var4 = *&a2->var4;
  this->var6 = 1;
}

{
  *&this->var0 = *&a2->var0;
  *&this->var2 = *&a2->var2;
  *&this->var4 = *&a2->var4;
  this->var6 = 1;
}

uint64_t TSWPParagraphEnumerator::TSWPParagraphEnumerator(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 24) = a5;
  *(result + 32) = a4;
  *(result + 40) = a4;
  *(result + 48) = a6;
  if (a3 == a2)
  {
    *(result + 8) = 0;
  }

  *(result + 16) = a4;
  return result;
}

{
  *result = a2;
  *(result + 8) = a3;
  *(result + 24) = a5;
  *(result + 32) = a4;
  *(result + 40) = a4;
  *(result + 48) = a6;
  if (a3 == a2)
  {
    *(result + 8) = 0;
  }

  *(result + 16) = a4;
  return result;
}

void *TSWPParagraphEnumerator::operator--(void *result)
{
  v1 = result[4] - 1;
  result[4] = v1;
  result[5] = v1;
  result[2] = v1;
  return result;
}

void *TSWPParagraphEnumerator::operator++(void *result)
{
  v1 = result[5] + 1;
  result[4] = v1;
  result[5] = v1;
  result[2] = v1;
  return result;
}

__n128 TSWPParagraphEnumerator::previous@<Q0>(TSWPParagraphEnumerator *this@<X0>, uint64_t a2@<X8>)
{
  result = *&this->var0;
  *a2 = *&this->var0;
  var3 = this->var3;
  var4 = this->var4;
  *(a2 + 48) = 1;
  *(a2 + 32) = --var4;
  *(a2 + 40) = var4;
  *(a2 + 16) = var4;
  *(a2 + 24) = var3;
  return result;
}

__n128 TSWPParagraphEnumerator::next@<Q0>(TSWPParagraphEnumerator *this@<X0>, uint64_t a2@<X8>)
{
  result = *&this->var0;
  *a2 = *&this->var0;
  var3 = this->var3;
  var5 = this->var5;
  *(a2 + 48) = 1;
  *(a2 + 32) = ++var5;
  *(a2 + 40) = var5;
  *(a2 + 16) = var5;
  *(a2 + 24) = var3;
  return result;
}

uint64_t TSWPParagraphEnumerator::paragraphStyle(TSWPParagraphEnumerator *this, _NSRange *a2)
{
  if (a2)
  {
    a2->location = TSWPParagraphEnumerator::paragraphTextRange(this);
    a2->length = v4;
  }

  if (this->var2 >= this->var3)
  {
    return 0;
  }

  var1 = this->var1;
  if (!var1)
  {
    return *(*([this->var0 attributeArrayForKind:0] + 32) + 16 * this->var2 + 8);
  }

  return [var1 paragraphStyleAtParIndex:? effectiveRange:?];
}

NSUInteger TSWPParagraphEnumerator::paragraphTextRange(TSWPParagraphEnumerator *this)
{
  result = TSWPAttributeArray::rangeForAttributeIndex([this->var0 attributeArrayForKind:0], this->var4);
  v3 = result;
  v5 = v4;
  if (this->var5 != this->var4)
  {
    v7.location = TSWPAttributeArray::rangeForAttributeIndex([this->var0 attributeArrayForKind:0], this->var5);
    v7.length = v6;
    v8.location = v3;
    v8.length = v5;

    return NSUnionRange(v8, v7).location;
  }

  return result;
}

uint64_t TSWPParagraphEnumerator::listLabelParagraphStyleOverride(TSWPParagraphEnumerator *this)
{
  if (this->var2 >= this->var3 || !this->var1 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  var1 = this->var1;
  var2 = this->var2;

  return [var1 listLabelParagraphStyleOverrideAtParIndex:var2];
}

uint64_t TSWPParagraphEnumerator::paragraphString(TSWPParagraphEnumerator *this)
{
  v3 = TSWPParagraphEnumerator::paragraphTextRange(this);
  var0 = this->var0;

  return [var0 substringWithRange:{v3, v2}];
}

uint64_t TSWPParagraphEnumerator::attachmentOrFootnoteAtCharIndex(TSWPParagraphEnumerator *this, uint64_t a2)
{
  v4 = TSWPParagraphEnumerator::paragraphTextRange(this);
  if (!v5)
  {
    return 0;
  }

  v6 = v4 + a2;
  var0 = this->var0;

  return [var0 attachmentOrFootnoteAtCharIndex:v6];
}

uint64_t TSWPParagraphEnumerator::paragraphLevel(TSWPParagraphEnumerator *this)
{
  var2 = this->var2;
  if (var2 >= this->var3)
  {
    return 0;
  }

  if (this->var1)
  {
    v3 = objc_opt_respondsToSelector();
    var2 = this->var2;
    if (v3)
    {
      result = [this->var1 paragraphLevelAtParIndex:var2];
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        return result;
      }

      var2 = this->var2;
    }
  }

  var0 = this->var0;

  return [var0 paragraphLevelAtParIndex:var2];
}

uint64_t TSWPParagraphEnumerator::paragraphListStyle(TSWPParagraphEnumerator *this)
{
  if (this->var1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    var1 = this->var1;
    var2 = this->var2;

    return [var1 listStyleAtParIndex:var2];
  }

  else
  {
    var0 = this->var0;
    v6 = this->var2;

    return [var0 listStyleAtParIndex:v6 effectiveRange:0];
  }
}

uint64_t TSWPParagraphEnumerator::coreTextPropertiesFilterDelegate(TSWPParagraphEnumerator *this)
{
  if (!this->var1 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  var1 = this->var1;
  var2 = this->var2;

  return [var1 coreTextPropertiesFilterDelegateAtParIndex:var2];
}

uint64_t TSWPParagraphEnumerator::paragraphListStart(TSWPParagraphEnumerator *this)
{
  var0 = this->var0;
  v2 = [this->var0 textRangeForParagraphAtIndex:this->var2];

  return [var0 listStartAtCharIndex:v2];
}

uint64_t TSWPParagraphEnumerator::paragraphListNumber(TSWPParagraphEnumerator *this, void *a2)
{
  if (!this->var1 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  var1 = this->var1;
  var2 = this->var2;

  return [var1 listNumberAtParIndex:var2 numberingData:a2];
}

void *TSWPParagraphEnumerator::paragraphHasListLabel(TSWPParagraphEnumerator *this)
{
  result = TSWPParagraphEnumerator::paragraphListStyle(this);
  if (result)
  {
    return ([result firstLabelType] != 0);
  }

  return result;
}

void sub_26C913804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C917634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C917FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 120);
  if (v26)
  {
    *(v24 - 112) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TSWPLFWritingDirectionRun>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPLFWritingDirectionRun>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

void sub_26C9185CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26C91C280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TSWPLFWritingDirectionRun>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void TSWPLineFragment::TSWPLineFragment(TSWPLineFragment *this)
{
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 61) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  *(this + 12) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 48) = 0;
  *(this + 10) = unk_26CA66FE8;
  *(this + 11) = 0u;
  *(this + 8) = unk_26CA66FC8;
  *(this + 9) = xmmword_26CA66FD8;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = 0u;
  v2 = *MEMORY[0x277CBF398];
  v1 = *(MEMORY[0x277CBF398] + 16);
  *(this + 2) = xmmword_26CA66AD0;
  *(this + 3) = v2;
  *(this + 6) = v1;
  *(this + 7) = gZeroHeightInfo;
  *(this + 4) = v1;
  *(this + 5) = v2;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
}

{
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 61) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  *(this + 12) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 48) = 0;
  *(this + 10) = unk_26CA66FE8;
  *(this + 11) = 0u;
  *(this + 8) = unk_26CA66FC8;
  *(this + 9) = xmmword_26CA66FD8;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = 0u;
  v2 = *MEMORY[0x277CBF398];
  v1 = *(MEMORY[0x277CBF398] + 16);
  *(this + 2) = xmmword_26CA66AD0;
  *(this + 3) = v2;
  *(this + 6) = v1;
  *(this + 7) = gZeroHeightInfo;
  *(this + 4) = v1;
  *(this + 5) = v2;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
}

void TSWPLineFragment::~TSWPLineFragment(TSWPLineFragment *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    TSWPListLabel::~TSWPListLabel(v2);
    MEMORY[0x26D6A9A30]();
    *(this + 22) = 0;
  }

  v3 = *(this + 58);
  if (v3)
  {
    CGColorRelease(*(v3 + 24));

    MEMORY[0x26D6A9A30](v3, 0x10A0C406E8A3FE5);
    *(this + 58) = 0;
  }

  v4 = *(this + 49);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      CFRelease(v5);
    }

    MEMORY[0x26D6A9A30](v4, 0x1060C4051B6AA0BLL);
    *(this + 49) = 0;
  }

  *(this + 23) = 0;
  *(this + 59) = 0;

  *(this + 64) = 0;
  *(this + 66) = 0;
  v6 = *(this + 67);
  if (v6)
  {
    CFRelease(v6);
    *(this + 67) = 0;
  }

  v7 = *(this + 61);
  if (v7)
  {
    *(this + 62) = v7;
    operator delete(v7);
  }

  v8 = (this + 440);
  std::vector<TSWPAdornments>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 368);
  std::vector<TSWPUIAttachmentData>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 344);
  std::vector<TSWPAdornmentLine>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 320);
  std::vector<TSWPAdornmentLine>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 296);
  std::vector<TSWPAdornmentLine>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 272);
  std::vector<TSWPAdornmentLine>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 248);
  std::vector<TSWPLineRef>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 224);
  std::vector<TSWPLineRef>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 192);
  std::vector<TSWPLineRef>::__destroy_vector::operator()[abi:ne200100](&v8);
}

double TSWPLineFragment::baselineAdjustAtCharIndex(TSWPLineFragment *this, void *a2, TSWPStorage *a3, TSWPColumn *a4, unint64_t a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v9 = [a2 characterStyleAtCharIndex:this left:a4 effectiveRange:0];
  if (![(TSWPStorage *)a3 styleProvider])
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"static CGFloat TSWPLineFragment::baselineAdjustAtCharIndex(TSWPCharIndex, TSWPStorage *, TSWPColumn *, BOOL, NSUInteger)"}];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 98, @"No style provider."}];
  }

  v12 = [-[TSWPStorage styleProvider](a3 "styleProvider")];
  v24[0] = v9;
  v24[1] = v12;
  v13 = TSWPResolveIntPropertyForStyles(v24, 2uLL, 36, 0);
  if (v13)
  {
    v14 = v13;
    FontForStyle = TSWPFastCreateFontForStyle(v9, v12, a5);
    Size = CTFontGetSize(FontForStyle);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(FontForStyle, Size * 1.5, 0, 0);
    v18 = CopyWithAttributes;
    if (v14 == 2)
    {
      Descent = CTFontGetDescent(CopyWithAttributes);
      v19 = Descent - CTFontGetDescent(FontForStyle);
    }

    else
    {
      v19 = 0.0;
      if (v14 == 1)
      {
        Ascent = CTFontGetAscent(CopyWithAttributes);
        v19 = CTFontGetAscent(FontForStyle) - Ascent;
      }
    }

    CFRelease(v18);
    CFRelease(FontForStyle);
  }

  else
  {
    v19 = 0.0;
  }

  TSWPResolveFloatPropertyForStyles(v24, 2uLL, 33);
  return v19 - v22;
}

double TSWPLineFragment::lowestBaselineInRange(TSWPLineFragment *this, _NSRange a2, TSWPColumn *a3)
{
  length = a2.length;
  location = a2.location;
  v35[2] = *MEMORY[0x277D85DE8];
  v7 = *(this + 4) + *(this + 5);
  v8 = [(TSWPColumn *)a3 storage];
  v9 = location + length;
  if (location < v9)
  {
    v10 = v8;
    do
    {
      v11 = *(this + 4);
      v12 = *(this + 5);
      v13 = [(TSWPStorage *)v10 characterStyleAtCharIndex:location effectiveRange:&v33];
      if (![(TSWPColumn *)a3 styleProvider])
      {
        v14 = [MEMORY[0x277D6C290] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::lowestBaselineInRange(NSRange, TSWPColumn *) const"}];
        [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 147, @"No style provider."}];
      }

      v16 = v11 + v12;
      v17 = [(TSWPStyleProvider *)[(TSWPColumn *)a3 styleProvider] paragraphStyleAtParIndex:[(TSWPStorage *)v10 paragraphIndexAtCharIndex:location] effectiveRange:&v31];
      v35[0] = v13;
      v35[1] = v17;
      v18 = TSWPResolvePropertyForStyles(v35, 2uLL, 36, 0);
      if (v18)
      {
        v19 = [v18 intValue];
        if (v19)
        {
          v20 = v19;
          FontForStyle = TSWPFastCreateFontForStyle(v13, v17, [(TSWPColumn *)a3 scaleTextPercent]);
          Size = CTFontGetSize(FontForStyle);
          CopyWithAttributes = CTFontCreateCopyWithAttributes(FontForStyle, Size * 1.5, 0, 0);
          if (v20 == 2)
          {
            Descent = CTFontGetDescent(FontForStyle);
            v16 = v16 - (Descent + CTFontGetDescent(CopyWithAttributes));
          }

          else if (v20 == 1)
          {
            Ascent = CTFontGetAscent(FontForStyle);
            v16 = v16 + Ascent - CTFontGetAscent(CopyWithAttributes);
          }

          CFRelease(CopyWithAttributes);
          CFRelease(FontForStyle);
        }
      }

      v26 = TSWPResolvePropertyForStyles(v35, 2uLL, 33, 0);
      if (v26)
      {
        [v26 doubleValue];
      }

      else
      {
        v27 = 0.0;
      }

      v28 = v16 - v27;
      if (v28 > v7)
      {
        v7 = v28;
      }

      v29 = v33 + v34;
      if (v33 + v34 >= (v32 + v31))
      {
        v29 = v32 + v31;
      }

      if (v34)
      {
        location = v29;
      }

      else
      {
        location = v32 + v31;
      }
    }

    while (location < v9);
  }

  return v7;
}

double TSWPLineFragment::baselineShiftFromRunAttributes(TSWPLineFragment *this, const __CFDictionary *a2)
{
  v3 = [(TSWPLineFragment *)this objectForKeyedSubscript:@"TSWPBaselineShift"];
  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = [(TSWPLineFragment *)this objectForKeyedSubscript:@"TSWPSuperscript"];
  if (v6)
  {
    v7 = [v6 unsignedIntValue];
    if (v7)
    {
      v8 = v7;
      v9 = [(TSWPLineFragment *)this objectForKeyedSubscript:@"TSWPUnadjustedFont"];
      v10 = *MEMORY[0x277CC4838];
      v11 = [(TSWPLineFragment *)this objectForKeyedSubscript:*MEMORY[0x277CC4838]];
      v12 = [(TSWPLineFragment *)this objectForKeyedSubscript:kTSWPAttachmentMap];
      if (v12)
      {
        v13 = [v12 lineRef];
        if (v13)
        {
          v14 = [(__CFArray *)CTLineGetGlyphRuns(v13) firstObject];
          if (v14)
          {
            v11 = [(__CFDictionary *)CTRunGetAttributes(v14) objectForKeyedSubscript:v10];
          }

          else
          {
            v15 = [MEMORY[0x277D6C290] currentHandler];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"static CGFloat TSWPLineFragment::baselineShiftFromRunAttributes(const CFDictionaryRef)"];
            [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 210, @"invalid nil value for '%s'", "run"}];
          }
        }
      }

      if (v8 == 2)
      {
        Descent = CTFontGetDescent(v11);
        Ascent = CTFontGetDescent(v9);
        return v5 + Descent - Ascent;
      }

      if (v8 == 1)
      {
        Descent = CTFontGetAscent(v9);
        Ascent = CTFontGetAscent(v11);
        return v5 + Descent - Ascent;
      }
    }
  }

  return v5;
}

NSUInteger TSWPLineFragment::rectsForLineRange@<X0>(TSWPLineFragment *this@<X0>, _NSRange a2@<0:X1, 8:X2>, NSArray **a3@<X6>, char a4@<W3>, char a5@<W4>, int a6@<W5>, void *a7@<X8>)
{
  length = a2.length;
  location = a2.location;
  if (a2.location < *this || a2.location + a2.length > *(this + 1) + *this)
  {
    v17 = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRectVector TSWPLineFragment::rectsForLineRange(NSRange, BOOL, BOOL, BOOL, NSArray **) const"}];
    [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 237, @"Bad range"}];
  }

  if (a3)
  {
    v82 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  }

  else
  {
    v82 = 0;
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v19 = *(this + 4);
  rect.origin = *(this + 3);
  rect.size = v19;
  if (a4)
  {
    if (a5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    rect.size.height = *(this + 14) + *(this + 18) + *(this + 16) + *(this + 17);
    if (a5)
    {
LABEL_9:
      if (length)
      {
        goto LABEL_10;
      }

LABEL_72:
      rect.origin.x = TSWPLineFragment::wpOffsetForCharIndex(this, location, 0, 1, 0);
      rect.size.width = 0.0;
      goto LABEL_83;
    }
  }

  v73 = *(this + 14);
  rect.origin.y = v73 + rect.origin.y;
  rect.size.height = rect.size.height - v73;
  if (!length)
  {
    goto LABEL_72;
  }

LABEL_10:
  v83 = *(this + 24);
  if (*(this + 25) == v83)
  {
    goto LABEL_83;
  }

  range1 = length;
  descent = 0.0;
  ascent = 0.0;
  if (a6)
  {
    if (*(this + 29) != *(this + 28))
    {
      CTLineGetTypographicBounds(*v83, &ascent, &descent, 0);
      v20 = *(this + 28);
      if (v20 != *(this + 29))
      {
        v21 = *(v83 + 16) - ascent;
        do
        {
          TypographicBounds = CTLineGetTypographicBounds(*v20, &ascent, &descent, 0);
          x = *(v20 + 8);
          height = ascent + descent;
          if (v20 == *(this + 28))
          {
            y = *(v20 + 16) - ascent;
          }

          else
          {
            v95.origin.x = v10;
            v95.origin.y = y;
            v95.size.width = v9;
            v95.size.height = v8;
            v24 = *(v20 + 16) - ascent;
            v96 = CGRectUnion(v95, *&x);
            x = v96.origin.x;
            y = v96.origin.y;
            TypographicBounds = v96.size.width;
            height = v96.size.height;
          }

          v20 += 48;
          v8 = height;
          v9 = TypographicBounds;
          v10 = x;
        }

        while (v20 != *(this + 29));
        if (y < v21)
        {
          v26 = v21 - y - *(this + 18);
          rect.origin.y = rect.origin.y - v26;
          rect.size.height = v26 + rect.size.height;
        }
      }
    }
  }

  __p = 0;
  v87 = 0;
  v88 = 0;
  TSWPLineFragment::fillWritingDirectionRuns(this, &__p);
  v27 = __p;
  length = range1;
  if (__p != v87)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v85 = v29;
      v92.location = location;
      v92.length = length;
      v30 = NSIntersectionRange(v92, *&v27[40 * v28 + 16]);
      if (v30.length)
      {
        CharIndexData = TSWPLineFragment::getCharIndexData(this);
        v32 = *CharIndexData;
        if (CharIndexData[1] == *CharIndexData)
        {
          v38 = -INFINITY;
          v39 = -INFINITY;
LABEL_37:
          v40 = [MEMORY[0x277D6C290] currentHandler];
          v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRectVector TSWPLineFragment::rectsForLineRange(NSRange, BOOL, BOOL, BOOL, NSArray **) const"}];
          [v40 handleFailureInFunction:v41 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 364, @"Failed to set start and end locations for sub-range %@", NSStringFromRange(v30)}];
        }

        else
        {
          v33 = a7;
          v34 = a3;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = -INFINITY;
          v39 = -INFINITY;
          do
          {
            if (*(v32 + v35 + 56) == v28)
            {
              if (NSIntersectionRange(*(v32 + v35), v30).length)
              {
                v32 = *CharIndexData;
                if ((v36 & 1) == 0)
                {
                  v38 = *(v32 + v35 + 32);
                }

                v39 = *(v32 + v35 + 40);
                v36 = 1;
              }

              else
              {
                if (v36)
                {
                  a3 = v34;
                  a7 = v33;
                  length = range1;
                  goto LABEL_38;
                }

                v36 = 0;
                v32 = *CharIndexData;
              }
            }

            ++v37;
            v35 += 64;
          }

          while (v37 < (CharIndexData[1] - v32) >> 6);
          a3 = v34;
          a7 = v33;
          length = range1;
          if ((v36 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

LABEL_38:
        v42 = *(this + 6);
        if ((v42 & 0x800) != 0)
        {
          v43 = v30.location + v30.length;
          if (v30.location + v30.length == *(this + 1) + *this)
          {
            if ((v42 & 0x1000) != 0)
            {
              v38 = TSWPLineFragment::wpOffsetForCharIndex(this, v43, 0, 1, 0) - *(v83 + 8) - *(this + 6);
            }

            else
            {
              v39 = TSWPLineFragment::wpOffsetForCharIndex(this, v43, 0, 1, 0) - *(v83 + 8) - *(this + 6);
            }
          }
        }

        v44 = *(this + 6);
        if ((v44 & 0x2000000) != 0)
        {
          v45 = *(this + 6);
          v46 = *(v83 + 8) + v45;
          if (v30.location == *this)
          {
            v47 = *(this + 7);
            v48 = *(this + 8);
            v49 = *(this + 9);
            if ((v44 & 0x1000) != 0)
            {
              v39 = CGRectGetMaxX(*&v45) - v46;
            }

            else
            {
              v38 = CGRectGetMinX(*&v45) - v46;
            }
          }

          if (v30.location + v30.length == *(this + 1) + *this)
          {
            v50 = *(this + 6);
            v51 = *(this + 7);
            v52 = *(this + 8);
            v53 = *(this + 9);
            if ((*(this + 25) & 0x10) != 0)
            {
              v38 = CGRectGetMinX(*&v50) - v46;
            }

            else
            {
              v39 = CGRectGetMaxX(*&v50) - v46;
            }
          }
        }

        rect.origin.x = v38 + *(v83 + 8) + *(this + 6);
        rect.size.width = v39 - v38;
        if (a6)
        {
          v54 = *(this + 28);
          if (*(this + 29) != v54)
          {
            v55 = v54 + 8;
            do
            {
              v56 = v55 - 8;
              v57 = CTLineGetTypographicBounds(*(v55 - 8), 0, 0, 0);
              if (NSIntersectionRange(v30, *(v55 + 16)).length)
              {
                v58 = *v55;
                v59 = *(this + 6);
                MinX = CGRectGetMinX(rect);
                v61 = v58 + v59;
                v62 = rect.origin.x;
                width = rect.size.width;
                if (v61 < MinX)
                {
                  v64 = rect.origin.y;
                  v65 = rect.size.height;
                  width = CGRectGetMaxX(*&v62) - v61;
                  rect.origin.x = v61;
                  rect.size.width = width;
                  v62 = v61;
                }

                v66 = rect.origin.y;
                v67 = rect.size.height;
                v68 = v57 + v61;
                if (v68 > CGRectGetMaxX(*&v62))
                {
                  rect.size.width = v68 - CGRectGetMinX(rect);
                }
              }

              v55 += 48;
            }

            while (v56 + 48 != *(this + 29));
          }
        }

        v69 = a7[1];
        if (*a7 == v69 || (MaxX = CGRectGetMaxX(*(v69 - 32)), vabdd_f64(MaxX, CGRectGetMinX(rect)) >= 0.00999999978))
        {
          std::vector<CGRect>::push_back[abi:ne200100](a7, &rect);
          if (a3)
          {
            -[NSArray addObject:](v82, "addObject:", [MEMORY[0x277CCAE60] valueWithRange:{v30.location, v30.length}]);
          }
        }

        else
        {
          v71 = a7[1];
          *(v71 - 32) = CGRectUnion(*(v71 - 32), rect);
          if (a3)
          {
            v93.location = [-[NSArray lastObject](v82 "lastObject")];
            v72 = NSUnionRange(v93, v30);
            -[NSArray setObject:atIndexedSubscript:](v82, "setObject:atIndexedSubscript:", [MEMORY[0x277CCAE60] valueWithRange:{v72.location, v72.length}], -[NSArray count](v82, "count") - 1);
          }
        }
      }

      v28 = (v85 + 1);
      v27 = __p;
      v29 = v85 + 1;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v87 - __p) >> 3) > v28);
    goto LABEL_81;
  }

  v94.location = location;
  v94.length = range1;
  v74 = NSIntersectionRange(v94, *this);
  if (v74.length)
  {
    v75 = *(this + 6);
    v76 = 0.0;
    if ((v75 & 0x800) != 0)
    {
      v77 = v74.location + v74.length;
      if (v74.location + v74.length == *(this + 1) + *this)
      {
        if ((v75 & 0x1000) == 0)
        {
          v78 = TSWPLineFragment::wpOffsetForCharIndex(this, v77, 0, 1, 0) - *(v83 + 8) - *(this + 6);
LABEL_80:
          rect.origin.x = v76 + *(v83 + 8) + *(this + 6);
          rect.size.width = v78 - v76;
          goto LABEL_81;
        }

        v76 = TSWPLineFragment::wpOffsetForCharIndex(this, v77, 0, 1, 0) - *(v83 + 8) - *(this + 6);
      }
    }

    v78 = 0.0;
    goto LABEL_80;
  }

LABEL_81:
  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

LABEL_83:
  if (*a7 == a7[1])
  {
    std::vector<CGRect>::push_back[abi:ne200100](a7, &rect);
  }

  result = [(NSArray *)v82 count];
  if (!result)
  {
    result = -[NSArray addObject:](v82, "addObject:", [MEMORY[0x277CCAE60] valueWithRange:{location, length}]);
  }

  if (a3)
  {
    *a3 = v82;
  }

  return result;
}

void sub_26C91D614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

double TSWPLineFragment::wpOffsetForCharIndex(TSWPLineFragment *this, unint64_t a2, BOOL a3, char a4, double *a5)
{
  v9 = *this;
  v10 = *(this + 1);
  if (a5)
  {
    *a5 = 0.0;
  }

  if (*(this + 54))
  {
    v11 = *(this + 6);
    v12 = *(this + 7);
    v13 = *(this + 8);
    v14 = *(this + 9);
    if ((*(this + 25) & 0x10) != 0)
    {
      if (v9 == a2)
      {
        goto LABEL_6;
      }
    }

    else if (v9 != a2)
    {
LABEL_6:
      MaxX = CGRectGetMaxX(*&v11);
      goto LABEL_20;
    }

    MaxX = CGRectGetMinX(*&v11);
LABEL_20:
    v25 = MaxX;
    if (a5)
    {
      *a5 = MaxX;
      if (a4)
      {
        return v25;
      }

      goto LABEL_56;
    }

LABEL_55:
    if (a4)
    {
      return v25;
    }

    goto LABEL_56;
  }

  v16 = *(this + 24);
  v17 = *(this + 25) - v16;
  if (!v17)
  {
    v25 = 0.0;
    if (a4)
    {
      return v25;
    }

    goto LABEL_56;
  }

  if (v10 + v9 != a2)
  {
    goto LABEL_23;
  }

  v18 = *(this + 6);
  if ((v18 & 0x800) != 0)
  {
    v34 = *(this + 23);
    if (!v34)
    {
      v35 = [MEMORY[0x277D6C290] currentHandler];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::wpOffsetForCharIndex(TSWPCharIndex, BOOL, BOOL, CGFloat *) const"}];
      [v35 handleFailureInFunction:v36 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1089, @"invalid nil value for '%s'", "_textSource"}];
      v34 = *(this + 23);
    }

    v37 = [v34 charIndexMappedFromStorage:a2 - 1];
    v38 = v37;
    secondaryOffset = 0.0;
    if ((*(this + 25) & 0x40) != 0)
    {
      v38 = v37 - *this + *(this + 2);
    }

    OffsetForStringIndex = CTLineGetOffsetForStringIndex(*v16, v38, &secondaryOffset);
    v40 = *(v16 + 8);
    v41 = OffsetForStringIndex + v40;
    v42 = v40 + secondaryOffset;
    secondaryOffset = v40 + secondaryOffset;
    if (a5)
    {
      *a5 = v42;
    }

    else if ((v18 & 0x1000) == 0)
    {
      v41 = v42;
    }

    v43 = [*(this + 23) characterAtIndex:v38];
    if (v43 <= 0xC && ((1 << v43) & 0x1030) != 0)
    {
      v44 = 0.0;
      if ((v18 & 0x1000) == 0)
      {
        v44 = *(this + 8);
      }

      v26 = v44;
      if (!a5)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v45 = 7.0;
      if ((v18 & 0x1000) != 0)
      {
        v45 = -7.0;
      }

      v26 = v45 + v41;
      if (!a5)
      {
        goto LABEL_52;
      }

      v44 = v45 + *a5;
    }

    *a5 = v44;
LABEL_52:
    v46 = *(this + 6);
    v25 = v26 + v46;
    if (!a5)
    {
      goto LABEL_55;
    }

    v47 = v46 + *a5;
    goto LABEL_54;
  }

  if ((*(this + 6) & 0x1002) != 2)
  {
LABEL_23:
    v26 = 0.0;
    if (v9 <= a2)
    {
      v27 = *(this + 23);
      if (!v27)
      {
        v28 = [MEMORY[0x277D6C290] currentHandler];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::wpOffsetForCharIndex(TSWPCharIndex, BOOL, BOOL, CGFloat *) const"}];
        [v28 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1144, @"invalid nil value for '%s'", "_textSource"}];
        v27 = *(this + 23);
      }

      v30 = [v27 charIndexMappedFromStorage:{a2, v26}];
      v31 = v30;
      if ((*(this + 25) & 0x40) != 0)
      {
        v31 = v30 - *this + *(this + 2);
      }

      secondaryOffset = 0.0;
      v32 = CTLineGetOffsetForStringIndex(*v16, v31, &secondaryOffset);
      v33 = *(v16 + 8);
      if (a5)
      {
        *a5 = v33 + secondaryOffset;
      }

      v26 = v32 + v33;
    }

    goto LABEL_52;
  }

  v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
  if (v19 <= 1)
  {
    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::wpOffsetForCharIndex(TSWPCharIndex, BOOL, BOOL, CGFloat *) const"}];
    [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1129, @"Missing hyphen line ref"}];
    v16 = *(this + 24);
    v19 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 25) - v16) >> 4);
  }

  v22 = 0.0;
  if (v19 >= 2)
  {
    v23 = v19 - 1;
    v24 = v16 + 48;
    while ((*(v24 + 40) & 2) == 0)
    {
      v24 += 48;
      if (!--v23)
      {
        goto LABEL_60;
      }
    }

    v51 = *(v24 + 8);
    v22 = v51 + CTLineGetTypographicBounds(*v24, 0, 0, 0);
  }

LABEL_60:
  if (a5)
  {
    *a5 = v22;
    v47 = v22 + *(this + 6);
    v25 = v47;
LABEL_54:
    *a5 = v47;
    goto LABEL_55;
  }

  v25 = v22 + *(this + 6);
  if (a4)
  {
    return v25;
  }

LABEL_56:
  v48 = fmin(v25, CGRectGetMaxX(*(this + 48)) + -1.0);
  v25 = fmax(v48, CGRectGetMinX(*(this + 48)));
  if (a5)
  {
    v49 = fmin(*a5, CGRectGetMaxX(*(this + 48)) + -1.0);
    *a5 = fmax(v49, CGRectGetMinX(*(this + 48)));
  }

  return v25;
}

void TSWPLineFragment::fillWritingDirectionRuns(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v91 = *MEMORY[0x277D85DE8];
  v4 = a1[24];
  if (a1[25] != v4 && (*(a1 + 25) & 0x40) == 0)
  {
    v5 = *v4;
    if (!a1[23])
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::fillWritingDirectionRuns(vector<TSWPLFWritingDirectionRun> &) const"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1973, @"invalid nil value for '%s'", "_textSource"}];
    }

    if (!a1[64])
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::fillWritingDirectionRuns(vector<TSWPLFWritingDirectionRun> &) const"];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1974, @"invalid nil value for '%s'", "_paragraphString"}];
    }

    v78 = a1[28];
    v79 = a1[29];
    v74 = *(a1 + 6);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = CTLineGetGlyphRuns(v5);
    v80 = [(__CFArray *)obj countByEnumeratingWithState:&v86 objects:v90 count:16];
    v2 = a2;
    if (v80)
    {
      v75 = 0;
      v77 = *v87;
      v10 = -1;
      v81 = 1;
      v82 = 1;
      v11 = -1;
      while (1)
      {
        for (i = 0; i != v80; ++i)
        {
          if (*v87 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v86 + 1) + 8 * i);
          StringRange = CTRunGetStringRange(v13);
          if (StringRange.length == 1 && v79 != v78)
          {
            Attributes = CTRunGetAttributes(v13);
            if (CFDictionaryContainsKey(Attributes, @"TSWPRubySpacingRunAttribute"))
            {
              continue;
            }
          }

          if ((v74 & 0x800000) != 0)
          {
            v16 = CTRunGetAttributes(v13);
            if (CFDictionaryContainsKey(v16, @"__TSWPTruncationKey"))
            {
              goto LABEL_49;
            }
          }

          Status = CTRunGetStatus(v13);
          if (v82)
          {
            v81 = (*(a1 + 25) & 0x10) == 0;
          }

          TSWPComposedCharacterAtIndexForTextSource(StringRange.location, a1[23]);
          v18 = TSWPGetBidiClass();
          v19 = v18;
          v20 = v18 == 3;
          if (v18 == 3 && StringRange.location != 0)
          {
            v22 = a1[64];
            location = CTRunGetStringRange(v13).location;
            v24 = CFStringGetRangeOfComposedCharactersAtIndex(v22, location - 1).location;
            TSWPComposedCharacterAtIndexForTextSource(v24, a1[23]);
            v25 = TSWPGetBidiClass() != 0;
            goto LABEL_26;
          }

          v25 = 0;
          if (((v81 ^ Status) & 1) == 0 || BYTE4(v75) & 1 | (v18 == 3))
          {
LABEL_26:
            if ((v82 & 1) == 0)
            {
              v84 = v81;
              buffer[0] = v11;
              buffer[1] = v10;
              v85 = v75 & 1;
              std::vector<TSWPLFWritingDirectionRun>::push_back[abi:ne200100](a2, buffer);
            }

            LOBYTE(v75) = v19 == 3 && v25;
            BYTE4(v75) = v20;
            v10 = -1;
            v11 = -1;
            v81 = (Status & 1) == 0;
          }

          else
          {
            BYTE4(v75) = 0;
          }

          GlyphCount = CTRunGetGlyphCount(v13);
          std::vector<long>::vector[abi:ne200100](buffer, GlyphCount);
          v92.location = 0;
          v92.length = GlyphCount;
          CTRunGetStringIndices(v13, v92, buffer[0]);
          if (GlyphCount >= 1)
          {
            for (j = 0; j != GlyphCount; ++j)
            {
              v28 = [a1[23] charIndexMappedToStorage:buffer[0][j]];
              if (v28 >= v11)
              {
                v29 = v11;
              }

              else
              {
                v29 = v28;
              }

              if (v11 == -1)
              {
                v11 = v28;
              }

              else
              {
                v11 = v29;
              }

              if (v28 <= v10)
              {
                v30 = v10;
              }

              else
              {
                v30 = v28;
              }

              if (v10 == -1)
              {
                v10 = v28;
              }

              else
              {
                v10 = v30;
              }
            }
          }

          if (buffer[0])
          {
            buffer[1] = buffer[0];
            operator delete(buffer[0]);
          }

          v82 = 0;
          continue;
        }

        v80 = [(__CFArray *)obj countByEnumeratingWithState:&v86 objects:v90 count:16];
        if (!v80)
        {
LABEL_49:
          v2 = a2;
          if (v11 != -1 && v10 != -1)
          {
            v84 = v81;
            buffer[0] = v11;
            buffer[1] = v10;
            v85 = v75 & 1;
            std::vector<TSWPLFWritingDirectionRun>::push_back[abi:ne200100](a2, buffer);
            v2 = a2;
          }

          break;
        }
      }
    }
  }

  v32 = *v2;
  v31 = v2[1];
  v33 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - *v2) >> 3);
  if (v31 != *v2)
  {
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = *a1;
      v37 = a1[1] + *a1;
      v38 = (v32 + 40 * v34);
      v39 = *v38;
      v40 = v38[1];
      v41 = (v32 + 8);
      v42 = 1;
      do
      {
        v43 = *(v41 - 1);
        v44 = *v41;
        v45 = *v41 > v36 && v44 <= v39;
        v46 = !v45;
        if (v43 <= v44)
        {
          v47 = *v41;
        }

        else
        {
          v47 = *(v41 - 1);
        }

        if (v43 >= v44)
        {
          v48 = *v41;
        }

        else
        {
          v48 = *(v41 - 1);
        }

        v49 = v46 == 0;
        if (v46)
        {
          v50 = v36;
        }

        else
        {
          v50 = *v41;
        }

        if (!v49)
        {
          v47 = *(v41 - 1);
        }

        if (v43 > v39 || v43 <= v36)
        {
          v36 = v50;
        }

        else
        {
          v36 = v47;
        }

        if (v40)
        {
          v52 = v44 < v37;
        }

        else
        {
          v52 = 0;
        }

        if (!v52 || v44 <= v40)
        {
          v44 = v37;
          v55 = *(v41 - 1);
        }

        else
        {
          v55 = v48;
        }

        if (v43 > v40 && v43 < v37)
        {
          v37 = v55;
        }

        else
        {
          v37 = v44;
        }

        v41 += 5;
        v45 = v33 > v42++;
      }

      while (v45);
      if (v37 >= v36)
      {
        v38[2] = v36;
        v38[3] = v37 - v36;
      }

      else
      {
        v57 = [MEMORY[0x277D6C290] currentHandler];
        v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::fillWritingDirectionRuns(vector<TSWPLFWritingDirectionRun> &) const"];
        [v57 handleFailureInFunction:v58 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2113, @"Bad ranges in runs."}];
        v32 = *a2;
        *(*a2 + 40 * v34 + 16) = xmmword_26CA637B0;
        v31 = a2[1];
      }

      v33 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - v32) >> 3);
      v34 = ++v35;
    }

    while (v33 > v35);
    v2 = a2;
  }

  if (v31 != v32)
  {
    v59 = 0;
    v60 = 0;
    do
    {
      if (v33 - 1 > v59 && (v61 = v32 + 40 * (v60 + 1), v62 = *(v61 + 16), v63 = v32 + 40 * v59, v64 = *(v63 + 16), v62 <= v64) && *(v61 + 24) + v62 >= *(v63 + 24) + v64)
      {
        v71 = v32 + 40 * v59;
        v72 = v31 - (v71 + 40);
        if (v31 != v71 + 40)
        {
          memmove((v32 + 40 * v59), (v71 + 40), v31 - (v71 + 40));
        }

        v31 = v71 + v72;
        v2[1] = v71 + v72;
        --v60;
      }

      else if (v60)
      {
        v65 = v32 + 40 * (v60 - 1);
        v66 = *(v65 + 16);
        v67 = v32 + 40 * v59;
        v68 = *(v67 + 16);
        if (v66 <= v68 && *(v65 + 24) + v66 >= *(v67 + 24) + v68)
        {
          v69 = v32 + 40 * v59;
          v70 = v31 - (v69 + 40);
          if (v31 != v69 + 40)
          {
            memmove((v32 + 40 * v59), (v69 + 40), v31 - (v69 + 40));
          }

          v31 = v69 + v70;
          v2[1] = v69 + v70;
          --v60;
        }
      }

      v32 = *v2;
      v33 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - *v2) >> 3);
      v59 = ++v60;
    }

    while (v33 > v60);
  }
}

void sub_26C91E19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPLineFragment::getCharIndexData(TSWPLineFragment *this)
{
  if (*(this + 25) != *(this + 24) && (*(this + 25) & 0x40) == 0)
  {
    v2 = *(this + 64);
    objc_sync_enter(v2);
    if (*(this + 61) == *(this + 62))
    {
      v70 = v2;
      if (!*(this + 23))
      {
        v3 = [MEMORY[0x277D6C290] currentHandler];
        v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const std::vector<TSWPLFCharIndexData> &TSWPLineFragment::getCharIndexData() const"];
        [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2278, @"invalid nil value for '%s'", "_textSource"}];
      }

      if (!*(this + 64))
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const std::vector<TSWPLFCharIndexData> &TSWPLineFragment::getCharIndexData() const"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2279, @"invalid nil value for '%s'", "_paragraphString"}];
      }

      __p = 0;
      v80 = 0;
      v81 = 0;
      TSWPLineFragment::fillWritingDirectionRuns(this, &__p);
      v7 = **(this + 24);
      if ((*(this + 26) & 0x80) != 0 && (GlyphRuns = CTLineGetGlyphRuns(**(this + 24)), (v9 = GlyphRuns) != 0) && (Count = CFArrayGetCount(GlyphRuns), Count >= 1))
      {
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v11);
          Attributes = CTRunGetAttributes(ValueAtIndex);
          if (CFDictionaryContainsKey(Attributes, @"__TSWPTruncationKey"))
          {
            break;
          }

          if (Count == ++v11)
          {
            goto LABEL_14;
          }
        }

        location = CTRunGetStringRange(ValueAtIndex).location;
      }

      else
      {
LABEL_14:
        location = 0x7FFFFFFFFFFFFFFFLL;
      }

      line = v7;
      v14 = *this;
      v15 = *(this + 1);
      v16 = [*(this + 23) charIndexRemappedFromStorage:*this];
      v18 = v15 + v14;
      if (v16 < v15 + v14)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        while (1)
        {
          v20 = [*(this + 23) charRangeMappedFromStorage:{v16, 1}];
          v21 = v20;
          if (location != 0x7FFFFFFFFFFFFFFFLL && location <= v20)
          {
            goto LABEL_70;
          }

          secondaryOffset = 0.0;
          OffsetForStringIndex = CTLineGetOffsetForStringIndex(line, v20, &secondaryOffset);
          v75[0] = secondaryOffset;
          v76 = 1;
          v77 = 0x7FFFFFFFFFFFFFFFLL;
          v22 = 0xCCCCCCCCCCCCCCCDLL * ((v80 - __p) >> 3);
          if (v19 < v22)
          {
            v23 = __p + 40 * v19;
            v25 = *(v23 + 2);
            v24 = *(v23 + 3);
            v27 = v16 >= v25;
            v26 = v16 - v25;
            v27 = !v27 || v26 >= v24;
            if (!v27)
            {
              goto LABEL_38;
            }
          }

          if (v80 != __p)
          {
            break;
          }

          v19 = 0;
LABEL_39:
          if (v19 < v22 && *(__p + 5 * v19 + 2) == v16)
          {
            v33 = v19 < v22 - 1;
          }

          else
          {
LABEL_42:
            v33 = 0;
          }

          if ((*(this + 25) & 0x10) != 0 && !v33)
          {
            v34 = [*(this + 23) characterAtIndex:v21];
            if (v34 == 9 || v34 == 65532 || v34 == 14)
            {
              OffsetForStringIndex = TSWPLineFragment::getLocalRunOffsetForCharIndex(this, v21, v75);
            }
          }

          v35 = *(this + 64);
          v36 = [*(this + 23) charIndexMappedFromStorage:v16];
          if ([v35 length] <= v36)
          {
            v43 = [MEMORY[0x277D6C290] currentHandler];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSUInteger countOfComposedCharacters(NSString *, NSUInteger)"}];
            [v43 handleFailureInFunction:v44 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1944, @"Index exceeds bounds. index: %ld string length: %ld", v36, objc_msgSend(v35, "length")}];
            v42 = 0;
          }

          else
          {
            v37 = [v35 rangeOfComposedCharacterSequenceAtIndex:v36];
            v39 = v38;
            if (v37 == 0x7FFFFFFFFFFFFFFFLL || !v38)
            {
              v40 = [MEMORY[0x277D6C290] currentHandler];
              v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSUInteger countOfComposedCharacters(NSString *, NSUInteger)"}];
              [v40 handleFailureInFunction:v41 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1951, @"Unexpected 0 length for composed sequence."}];
            }

            if (v39)
            {
              v42 = v39;
            }

            else
            {
              v42 = 1;
            }
          }

          v45 = [*(this + 23) charIndexMappedToStorage:v42 + v21];
          v46 = v42 + v16;
          v47 = v21 + v42;
          do
          {
            if (v45 >= v46)
            {
              break;
            }

            v45 = [*(this + 23) charIndexMappedToStorage:++v47];
          }

          while (v47 < [*(this + 23) length]);
          if (v16 <= v45)
          {
            v48 = v45;
          }

          else
          {
            v48 = v16;
          }

          if (v16 >= v45)
          {
            v49 = v45;
          }

          else
          {
            v49 = v16;
          }

          *&v73 = v49;
          *(&v73 + 1) = v48 - v49;
          std::vector<TSWPLFCharIndexData>::push_back[abi:ne200100](this + 488, &v73);
          if (v16 >= v45)
          {
            v50 = [MEMORY[0x277D6C290] currentHandler];
            v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"const std::vector<TSWPLFCharIndexData> &TSWPLineFragment::getCharIndexData() const"];
            [v50 handleFailureInFunction:v51 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2385, @"textSource failed to advance"}];
            goto LABEL_70;
          }

          v16 = v48;
          if (v48 >= v18)
          {
            goto LABEL_70;
          }
        }

        v28 = 0;
        if (v22 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = 0xCCCCCCCCCCCCCCCDLL * ((v80 - __p) >> 3);
        }

        v29 = (__p + 24);
        while (1)
        {
          v30 = *(v29 - 1);
          v27 = v16 >= v30;
          v31 = v16 - v30;
          if (v27 && v31 < *v29)
          {
            break;
          }

          v29 += 5;
          if (v19 == ++v28)
          {
            goto LABEL_42;
          }
        }

        v19 = v28;
LABEL_38:
        v76 = *(__p + 40 * v19 + 32);
        v77 = v19;
        goto LABEL_39;
      }

LABEL_70:
      v53 = *(this + 61);
      v52 = *(this + 62);
      v54 = (v52 - v53) >> 6;
      if (v52 != v53)
      {
        v55 = 0;
        v56 = v54 - 1;
        if (v54 <= 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = (v52 - v53) >> 6;
        }

        v58 = *(this + 6);
        do
        {
          if ((v58 & 0x1000) != 0)
          {
            v59 = 16;
          }

          else
          {
            v59 = 24;
          }

          v60 = *(v53 + v59 + v55 * 16);
          if (v56)
          {
            v61 = LOBYTE(v53[v55 + 3]);
            if (v61 == LOBYTE(v53[v55 + 7]) || (v58 & 0x1000) == 0)
            {
              v63 = 80;
            }

            else
            {
              v63 = 88;
            }

            v17.n128_u64[0] = *(&v53[v55] + v63);
          }

          else
          {
            *&v73 = 0;
            v17.n128_f64[0] = CTLineGetOffsetForStringIndex(line, [*(this + 23) charIndexMappedFromStorage:v18], &v73);
            v58 = *(this + 6);
            if ((v58 & 0x1000) != 0 && LOBYTE(v53[v55 + 3]))
            {
              v17.n128_f64[0] = *&v73;
            }

            LOBYTE(v61) = v53[v55 + 3];
            v53 = *(this + 61);
          }

          v64 = (v61 & 1) == 0;
          if (v61)
          {
            v65 = v60;
          }

          else
          {
            v65 = v17.n128_f64[0];
          }

          v66 = &v53[v55];
          if (v64)
          {
            v17.n128_f64[0] = v60;
          }

          *(v66 + 4) = v65;
          *(v66 + 5) = v17.n128_u64[0];
          --v56;
          v55 += 4;
          --v57;
        }

        while (v57);
        v52 = *(this + 62);
        v54 = (v52 - v53) >> 6;
      }

      *&v73 = compareByGlyphPosition;
      v67 = 126 - 2 * __clz(v54);
      if (v52 == v53)
      {
        v68 = 0;
      }

      else
      {
        v68 = v67;
      }

      v2 = v70;
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,false>(v53, v52, &v73, v68, 1, v17);
      if (__p)
      {
        v80 = __p;
        operator delete(__p);
      }
    }

    objc_sync_exit(v2);
  }

  return this + 488;
}

void sub_26C91E85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id obj, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void std::vector<CGRect>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::segment_data<double>>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void TSWPLineFragment::rectsForVisualRange(TSWPLineFragment *this@<X0>, _NSRange a2@<0:X1, 8:X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, char a5@<W5>, char a6@<W6>, int a7@<W7>, void *a8@<X8>, NSArray **a9)
{
  v14 = a4;
  length = a2.length;
  location = a2.location;
  v19 = a8;
  v70[1] = *MEMORY[0x277D85DE8];
  if (a2.location < *this || a2.location + a2.length > *(this + 1) + *this)
  {
    v20 = a6;
    v22 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRectVector TSWPLineFragment::rectsForVisualRange(NSRange, NSUInteger, NSUInteger, BOOL, BOOL, BOOL, NSArray **) const"}];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"];
    v25 = v22;
    v19 = a8;
    [v25 handleFailureInFunction:v23 file:v24 lineNumber:489 description:@"Bad range"];
    a6 = v20;
    v14 = a4;
  }

  v26 = *(this + 4);
  v68 = *(this + 3);
  *v69 = v26;
  if (a5)
  {
    if (a6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v69[1] = *(this + 14) + *(this + 18) + *(this + 16) + *(this + 17);
    if (a6)
    {
LABEL_6:
      if (length)
      {
        goto LABEL_7;
      }

LABEL_46:
      *&v68 = TSWPLineFragment::wpOffsetForCharIndex(this, location, 0, 1, 0);
      v69[0] = 0.0;
      goto LABEL_59;
    }
  }

  v60 = *(this + 14);
  *(&v68 + 1) = v60 + *(&v68 + 1);
  v69[1] = v69[1] - v60;
  if (!length)
  {
    goto LABEL_46;
  }

LABEL_7:
  v27 = *(this + 24);
  if (*(this + 25) != v27)
  {
    descent = 0.0;
    ascent = 0.0;
    if (a7)
    {
      if (*(this + 29) != *(this + 28))
      {
        CTLineGetTypographicBounds(*v27, &ascent, &descent, 0);
        v28 = *(this + 28);
        if (v28 != *(this + 29))
        {
          v29 = *(v27 + 16) - ascent;
          do
          {
            TypographicBounds = CTLineGetTypographicBounds(*v28, &ascent, &descent, 0);
            x = *(v28 + 8);
            height = ascent + descent;
            if (v28 == *(this + 28))
            {
              y = *(v28 + 16) - ascent;
            }

            else
            {
              v71.origin.x = v12;
              v71.origin.y = y;
              v71.size.width = v11;
              v71.size.height = v10;
              v32 = *(v28 + 16) - ascent;
              v72 = CGRectUnion(v71, *&x);
              x = v72.origin.x;
              y = v72.origin.y;
              TypographicBounds = v72.size.width;
              height = v72.size.height;
            }

            v28 += 48;
            v10 = height;
            v11 = TypographicBounds;
            v12 = x;
          }

          while (v28 != *(this + 29));
          if (y < v29)
          {
            v34 = v29 - y - *(this + 18);
            *(&v68 + 1) = *(&v68 + 1) - v34;
            v69[1] = v34 + v69[1];
          }
        }
      }
    }

    v36 = *MEMORY[0x277CBF398];
    v35 = *(MEMORY[0x277CBF398] + 8);
    v38 = *(MEMORY[0x277CBF398] + 16);
    v37 = *(MEMORY[0x277CBF398] + 24);
    CharIndexData = TSWPLineFragment::getCharIndexData(this);
    v40 = CharIndexData[1] - *CharIndexData;
    if (v40)
    {
      v41 = v40 >> 6;
      if (v41 <= 1)
      {
        v41 = 1;
      }

      v42 = (*CharIndexData + 32);
      v43 = v37;
      v44 = v38;
      v45 = v35;
      v46 = v36;
      do
      {
        v47 = *(v42 - 4);
        v48 = *(v42 - 3);
        v49 = a3 < v47 || a3 - v47 >= v48;
        v50 = !v49;
        if (v49 && (v14 < v47 || v14 - v47 >= v48))
        {
          goto LABEL_41;
        }

        v52 = v42[1] - *v42;
        v53 = *v42 + *(this + 6);
        v54 = *(v27 + 8);
        v55 = *(v27 + 16);
        v56 = v53 + v54;
        v57 = *(&v68 + 1) + v55;
        if (v50)
        {
          v36 = v53 + v54;
          v35 = *(&v68 + 1) + v55;
          v38 = v42[1] - *v42;
          v37 = v69[1];
        }

        v49 = v14 >= v47;
        v58 = v14 - v47;
        if (!v49 || v58 >= v48)
        {
LABEL_41:
          v56 = v46;
          v57 = v45;
          v52 = v44;
        }

        else
        {
          v43 = v69[1];
        }

        v42 += 8;
        v44 = v52;
        v45 = v57;
        v46 = v56;
        --v41;
      }

      while (v41);
    }

    else
    {
      v56 = v36;
      v57 = v35;
      v52 = v38;
      v43 = v37;
    }

    v61 = *(this + 6);
    v73.origin.x = v36;
    v73.origin.y = v35;
    v73.size.width = v38;
    v73.size.height = v37;
    if (CGRectIsEmpty(v73))
    {
      v35 = *(&v68 + 1);
      v37 = v69[1];
      if ((v61 & 0x1000) != 0)
      {
        v36 = *&v68 + v69[0] + -1.0;
      }

      else
      {
        v36 = *&v68;
      }

      v38 = 1.0;
    }

    v74.origin.x = v56;
    v74.origin.y = v57;
    v74.size.width = v52;
    v74.size.height = v43;
    if (CGRectIsEmpty(v74))
    {
      v57 = *(&v68 + 1);
      v43 = v69[1];
      if ((v61 & 0x1000) != 0)
      {
        v56 = *&v68;
      }

      else
      {
        v56 = *&v68 + v69[0] + -1.0;
      }

      v52 = 1.0;
    }

    v75.origin.x = v36;
    v75.origin.y = v35;
    v75.size.width = v38;
    v75.size.height = v37;
    v77.origin.x = v56;
    v77.origin.y = v57;
    v77.size.width = v52;
    v77.size.height = v43;
    v76 = CGRectUnion(v75, v77);
    *&v68 = v76.origin.x;
    *(&v68 + 1) = *&v76.origin.y;
    v69[0] = v76.size.width;
    v69[1] = v76.size.height;
  }

LABEL_59:
  *v19 = 0;
  v19[1] = 0;
  v19[2] = 0;
  std::vector<CGRect>::push_back[abi:ne200100](v19, &v68);
  if (a9)
  {
    if (a3 <= v14)
    {
      v62 = v14;
    }

    else
    {
      v62 = a3;
    }

    if (a3 >= v14)
    {
      v63 = v14;
    }

    else
    {
      v63 = a3;
    }

    v70[0] = [MEMORY[0x277CCAE60] valueWithRange:{v63, v62 - v63}];
    *a9 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:1];
  }
}

void sub_26C91EE28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPLineFragment::GetFakeContext(TSWPLineFragment *this)
{
  if (TSWPLineFragment::GetFakeContext(void)::onceToken != -1)
  {
    TSWPLineFragment::GetFakeContext();
  }

  return TSWPLineFragment::GetFakeContext(void)::sFakeContext;
}

CGContextRef ___ZN16TSWPLineFragment14GetFakeContextEv_block_invoke()
{
  v0 = TSUDeviceRGBColorSpace();
  result = CGBitmapContextCreate(0, 1uLL, 1uLL, 8uLL, 4uLL, v0, 5u);
  TSWPLineFragment::GetFakeContext(void)::sFakeContext = result;
  return result;
}

double TSWPLineFragment::glyphRectForLineRange(TSWPLineFragment *this, _NSRange a2, TSWPStorage *a3, int a4)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v9 = *(this + 4) + *(this + 5);
  v79 = v9 + TSWPLineFragment::baselineAdjustAtCharIndex(a2.location, [(TSWPStorage *)a3 storage], a3, 0, [(TSWPStorage *)a3 scaleTextPercent]);
  v10 = *(this + 31);
  v80 = this;
  v71 = *(this + 32);
  if (v10 == v71)
  {
    goto LABEL_98;
  }

  v11 = 0;
  do
  {
    v13 = v10[3];
    v12 = v10[4];
    v14 = *(v80 + 23);
    if (!v14)
    {
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect TSWPLineFragment::glyphRectForLineRange(NSRange, TSWPColumn *, BOOL) const"}];
      [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 631, @"invalid nil value for '%s'", "_textSource"}];
      v14 = *(v80 + 23);
    }

    v108.location = [v14 charRangeMappedFromStorage:{a2.location, a2.length}];
    v108.length = v17;
    v99.location = v13;
    v99.length = v12;
    v18 = NSIntersectionRange(v99, v108);
    if (v18.length)
    {
      obj = CTLineGetGlyphRuns(*v10);
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v77 = [(__CFArray *)obj countByEnumeratingWithState:&v92 objects:v97 count:16];
      if (v77)
      {
        v75 = *v93;
        do
        {
          for (i = 0; i != v77; ++i)
          {
            if (*v93 != v75)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v92 + 1) + 8 * i);
            GlyphCount = CTRunGetGlyphCount(v20);
            std::vector<long>::vector[abi:ne200100](&buffer, GlyphCount);
            v100.location = 0;
            v100.length = GlyphCount;
            CTRunGetStringIndices(v20, v100, *&buffer.x);
            std::vector<unsigned short>::vector[abi:ne200100](&ascent, GlyphCount);
            v101.location = 0;
            v101.length = GlyphCount;
            CTRunGetGlyphs(v20, v101, *&ascent.width);
            CTRunGetStringRange(v20);
            v102.location = 0;
            v102.length = 1;
            CTRunGetPositions(v20, v102, &v89);
            if (GlyphCount >= 1)
            {
              for (j = 0; j != GlyphCount; ++j)
              {
                v23 = *(*&buffer.x + 8 * j) + v13;
                v25 = v23 >= v18.location;
                v24 = v23 - v18.location;
                v25 = !v25 || v24 >= v18.length;
                if (!v25 && *(*&ascent.width + 2 * j) != -1)
                {
                  if (TSWPLineFragment::GetFakeContext(void)::onceToken != -1)
                  {
                    TSWPLineFragment::glyphRectForLineRange();
                  }

                  v109.location = j;
                  v109.length = 1;
                  ImageBounds = CTRunGetImageBounds(v20, TSWPLineFragment::GetFakeContext(void)::sFakeContext, v109);
                  x = ImageBounds.origin.x;
                  y = ImageBounds.origin.y;
                  width = ImageBounds.size.width;
                  height = ImageBounds.size.height;
                  memset(&v88, 0, sizeof(v88));
                  CGAffineTransformMakeTranslation(&v88, *(v80 + 6) + *(v10 + 1), v79 + *(v10 + 2));
                  v86 = v88;
                  CGAffineTransformRotate(&v87, &v86, -1.57079633);
                  v88 = v87;
                  v86 = v87;
                  CGAffineTransformScale(&v87, &v86, 1.0, -1.0);
                  v88 = v87;
                  v112.origin.x = x;
                  v112.origin.y = y;
                  v112.size.width = width;
                  v112.size.height = height;
                  v113 = CGRectApplyAffineTransform(v112, &v87);
                  v123.origin.x = v113.origin.x;
                  v123.size.width = v113.size.width;
                  v123.size.height = v113.size.height;
                  v123.origin.y = v113.origin.y - v89.x;
                  v113.origin.x = v5;
                  v113.origin.y = v6;
                  v113.size.width = v7;
                  v113.size.height = v8;
                  v114 = CGRectUnion(v113, v123);
                  v5 = v114.origin.x;
                  v6 = v114.origin.y;
                  v7 = v114.size.width;
                  v8 = v114.size.height;
                }
              }
            }

            if (*&ascent.width)
            {
              ascent.height = ascent.width;
              operator delete(*&ascent.width);
            }

            if (*&buffer.x)
            {
              buffer.y = buffer.x;
              operator delete(*&buffer.x);
            }
          }

          v77 = [(__CFArray *)obj countByEnumeratingWithState:&v92 objects:v97 count:16];
        }

        while (v77);
      }

      v11 = 1;
    }

    v10 += 6;
  }

  while (v10 != v71);
  if ((v11 & 1) == 0)
  {
LABEL_98:
    if (*(v80 + 25) != *(v80 + 24))
    {
      if (TSWPLineFragment::GetFakeContext(void)::onceToken != -1)
      {
        TSWPLineFragment::glyphRectForLineRange();
      }

      CGContextSetTextPosition(TSWPLineFragment::GetFakeContext(void)::sFakeContext, 0.0, 0.0);
      v30 = *(v80 + 25) - *(v80 + 24);
      if (v30)
      {
        v31 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 4);
        key = *MEMORY[0x277CC4838];
        do
        {
          --v31;
          v32 = *(v80 + 24) + 48 * v31;
          v88.a = *v32;
          *&v88.b = *(v32 + 8);
          *&v88.d = *(v32 + 24);
          LODWORD(v88.ty) = *(v32 + 40);
          cf = v88.a;
          if (*&v88.a)
          {
            CFRetain(*&v88.a);
          }

          if (v31)
          {
            location = a2.location;
            length = a2.length;
            if (!NSIntersectionRange(a2, *(&v88 + 24)).length)
            {
              goto LABEL_89;
            }
          }

          else
          {
            location = a2.location;
            length = a2.length;
            if (*(v80 + 24))
            {
              v119.origin.x = v5;
              v119.origin.y = v6;
              v119.size.width = v7;
              v119.size.height = v8;
              v120 = CGRectUnion(v119, *(v80 + 48));
              v5 = v120.origin.x;
              v6 = v120.origin.y;
              v7 = v120.size.width;
              v8 = v120.size.height;
              goto LABEL_89;
            }
          }

          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          GlyphRuns = CTLineGetGlyphRuns(*&cf);
          v35 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v82 objects:v96 count:16];
          if (!v35)
          {
            goto LABEL_89;
          }

          v76 = *v83;
          do
          {
            v36 = 0;
            obja = v35;
            do
            {
              if (*v83 != v76)
              {
                objc_enumerationMutation(GlyphRuns);
              }

              v78 = v36;
              v37 = *(*(&v82 + 1) + 8 * v36);
              v38 = CTRunGetGlyphCount(v37);
              if ((v38 - 65537) <= 0xFFFFFFFFFFFEFFFFLL)
              {
                v64 = [MEMORY[0x277D6C290] currentHandler];
                v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect TSWPLineFragment::glyphRectForLineRange(NSRange, TSWPColumn *, BOOL) const"}];
                [v64 handleFailureInFunction:v65 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 701, @"bad glyph count: %ld", v38}];
                goto LABEL_89;
              }

              std::vector<long>::vector[abi:ne200100](&v87, v38);
              v103.location = 0;
              v103.length = v38;
              CTRunGetStringIndices(v37, v103, *&v87.a);
              std::vector<unsigned short>::vector[abi:ne200100](&v86, v38);
              v104.location = 0;
              v104.length = v38;
              CTRunGetGlyphs(v37, v104, *&v86.a);
              Status = CTRunGetStatus(v37);
              v105.location = 0;
              v105.length = 1;
              CTRunGetPositions(v37, v105, &buffer);
              v40 = 0.0;
              if ((*(v80 + 25) & 0x20) != 0)
              {
                if ((Status & 4) != 0)
                {
                  Attributes = CTRunGetAttributes(v37);
                  Value = CFDictionaryGetValue(Attributes, key);
                  CTFontGetVerticalTranslationsForGlyphs(Value, *&v86.a, &ascent, 1);
                  buffer.x = ascent.height - buffer.y;
                }

                else
                {
                  ascent.width = 0.0;
                  v89.x = 0.0;
                  leading = 0.0;
                  v106.location = 0;
                  v106.length = 0;
                  CTRunGetTypographicBounds(v37, v106, &ascent.width, &v89.x, &leading);
                  v40 = (ascent.width - v89.x) * 0.5;
                }
              }

              v43 = 0;
              v44 = v79 + v40;
              do
              {
                if (!*(v80 + 23))
                {
                  v45 = [MEMORY[0x277D6C290] currentHandler];
                  v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect TSWPLineFragment::glyphRectForLineRange(NSRange, TSWPColumn *, BOOL) const"}];
                  [v45 handleFailureInFunction:v46 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 738, @"invalid nil value for '%s'", "_textSource"}];
                }

                if (v31)
                {
                  a = v86.a;
LABEL_57:
                  if (*(*&a + 2 * v43) == -1)
                  {
                    goto LABEL_67;
                  }

                  if (TSWPLineFragment::GetFakeContext(void)::onceToken != -1)
                  {
                    TSWPLineFragment::glyphRectForLineRange();
                    location = a2.location;
                    length = a2.length;
                  }

                  v110.location = v43;
                  v110.length = 1;
                  v115 = CTRunGetImageBounds(v37, TSWPLineFragment::GetFakeContext(void)::sFakeContext, v110);
                  v124.size.width = v115.size.width;
                  v124.size.height = v115.size.height;
                  v124.origin.x = v115.origin.x + buffer.x + *(v80 + 6) + v88.b;
                  v124.origin.y = v44 - v115.origin.y - v115.size.height + v88.c;
                  v115.origin.x = v5;
                  v115.origin.y = v6;
                  v115.size.width = v7;
                  v115.size.height = v8;
                  v116 = CGRectUnion(v115, v124);
LABEL_61:
                  v5 = v116.origin.x;
                  v6 = v116.origin.y;
                  v7 = v116.size.width;
                  v8 = v116.size.height;
                  goto LABEL_67;
                }

                v48 = [*(v80 + 23) charIndexMappedToStorage:*(*&v87.a + 8 * v43)];
                if (v48 >= location && v48 - location < length)
                {
                  a = v86.a;
                  if ((*(v80 + 24) & 4) == 0 || [*(v80 + 23) characterAtIndex:*(*&v87.a + 8 * v43)] != 65532)
                  {
                    goto LABEL_57;
                  }

                  v50 = [*(v80 + 23) attachmentAtCharIndex:*(*&v87.a + 8 * v43)];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v51 = *(v80 + 46);
                    v52 = *(v80 + 47);
                    if (v51 != v52)
                    {
                      while (*(v51 + 24) != *(*&v87.a + 8 * v43))
                      {
                        v51 += 32;
                        if (v51 == v52)
                        {
                          goto LABEL_67;
                        }
                      }

                      v53 = *(v51 + 8);
                      v54 = *(v51 + 16);
                      v55 = [*v51 size];
                      v57.n128_u64[0] = v56;
                      v59.n128_u64[0] = v58;
                      v60.n128_u64[0] = v53;
                      v126.origin.x = TSDRectWithOriginAndSize(v55, v60, v54, v57, v59);
                      v126.origin.y = v61;
                      v126.size.width = v62;
                      v126.size.height = v63;
                      v118.origin.x = v5;
                      v118.origin.y = v6;
                      v118.size.width = v7;
                      v118.size.height = v8;
                      v116 = CGRectUnion(v118, v126);
                      goto LABEL_61;
                    }
                  }

                  else if ([v50 isDrawable] && (objc_msgSend(v50, "isAnchored") & 1) == 0)
                  {
                    ascent = *MEMORY[0x277CBF3A8];
                    v107.location = v43;
                    v107.length = 1;
                    CTRunGetAdvances(v37, v107, &ascent);
                    v125.size.height = *(v80 + 15);
                    v125.size.width = ascent.width;
                    v125.origin.x = buffer.x + *(v80 + 6) + v88.b;
                    v125.origin.y = v44 - v125.size.height + v88.c;
                    v117.origin.x = v5;
                    v117.origin.y = v6;
                    v117.size.width = v7;
                    v117.size.height = v8;
                    v116 = CGRectUnion(v117, v125);
                    goto LABEL_61;
                  }
                }

LABEL_67:
                ++v43;
              }

              while (v43 != v38);
              if (*&v86.a)
              {
                v86.b = v86.a;
                operator delete(*&v86.a);
              }

              if (*&v87.a)
              {
                v87.b = v87.a;
                operator delete(*&v87.a);
              }

              v36 = v78 + 1;
            }

            while ((v78 + 1) != obja);
            v35 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v82 objects:v96 count:16];
          }

          while (v35);
LABEL_89:
          if (cf != 0.0)
          {
            CFRelease(*&cf);
          }
        }

        while (v31);
      }
    }
  }

  if (a4)
  {
    v121.origin.x = v5;
    v121.origin.y = v6;
    v121.size.width = v7;
    v121.size.height = v8;
    if (!CGRectIsEmpty(v121))
    {
      v122.origin.x = v5;
      v122.origin.y = v6;
      v122.size.width = v7;
      v122.size.height = v8;
      *&v5 = CGRectInset(v122, -1.0, -1.0);
    }
  }

  return v5;
}

double TSWPLineFragment::glyphRectForRubyField(TSWPLineFragment *this, uint64_t a2, _NSRange a3)
{
  v30 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v8 = *(this + 28);
  v7 = *(this + 29);
  if (v8 != v7)
  {
    while (*(v8 + 24) != a2)
    {
      v8 += 48;
      if (v8 == v7)
      {
        return x;
      }
    }

    GlyphRuns = CTLineGetGlyphRuns(*v8);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = GlyphRuns;
    v11 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          GlyphCount = CTRunGetGlyphCount(v16);
          v18 = v13;
          v32.location = v13;
          v32.length = GlyphCount;
          v19 = NSIntersectionRange(a3, v32);
          if (v19.length)
          {
            v20 = v19.location - v13;
            v31.location = v20;
            v31.length = 1;
            CTRunGetPositions(v16, v31, &buffer);
            if (TSWPLineFragment::GetFakeContext(void)::onceToken != -1)
            {
              TSWPLineFragment::glyphRectForLineRange();
            }

            v33.location = v20;
            v33.length = v19.length;
            ImageBounds = CTRunGetImageBounds(v16, TSWPLineFragment::GetFakeContext(void)::sFakeContext, v33);
            v36.size.width = ImageBounds.size.width;
            v36.size.height = ImageBounds.size.height;
            v36.origin.x = *(this + 6) + ImageBounds.origin.x + *(v8 + 8) + buffer.x;
            v36.origin.y = *(v8 + 16) + *(this + 4) + *(this + 5) - ImageBounds.origin.y - ImageBounds.size.height;
            ImageBounds.origin.x = x;
            ImageBounds.origin.y = y;
            ImageBounds.size.width = width;
            ImageBounds.size.height = height;
            v35 = CGRectUnion(ImageBounds, v36);
            x = v35.origin.x;
            y = v35.origin.y;
            width = v35.size.width;
            height = v35.size.height;
          }

          v13 = GlyphCount + v18;
        }

        v12 = [(__CFArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }
  }

  return x;
}

void TSWPLineFragment::emphasisMarkRectForLineRange(TSWPLineFragment *this, _NSRange a2)
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  v6 = *(this + 55);
  v7 = *(this + 56);
  if (v7 != v6 && *(this + 25) != *(this + 24))
  {
    length = a2.length;
    location = a2.location;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v6 + 200 * v11;
      if (*v13 == 4)
      {
        v14 = *(v13 + 104);
        if (*(v13 + 112) != v14)
        {
          v15 = 0;
          v16 = *(v13 + 176);
          v17 = *(v13 + 184);
          v18 = 1;
          do
          {
            v19 = *(*(v13 + 32) + 8 * v15);
            v21 = v19 >= location;
            v20 = v19 - location;
            v21 = !v21 || v20 >= length;
            if (!v21)
            {
              v22.size.height = *(v13 + 152);
              v22.size.width = *(v13 + 168);
              v22.origin.x = *(v14 + 16 * v15) + v16 + *(this + 6) + *(*(this + 24) + 8);
              v22.origin.y = v17 + *(this + 4) + *(this + 5) - v22.size.height;
              *&v2 = CGRectUnion(*&v2, v22);
              v6 = *(this + 55);
            }

            v15 = v18;
            v13 = v6 + 200 * v11;
            v14 = *(v13 + 104);
            ++v18;
          }

          while (v15 < (*(v13 + 112) - v14) >> 4);
          v7 = *(this + 56);
        }
      }

      v11 = ++v12;
    }

    while (0x8F5C28F5C28F5C29 * ((v7 - v6) >> 3) > v12);
  }
}

BOOL TSWPLineFragment::requiresGlyphVectorsForHeightMeasurement(TSWPLineFragment *this)
{
  if ((*(this + 24) & 0x80) != 0 || *(this + 29) != *(this + 28))
  {
    return 1;
  }

  v2 = *(this + 55);
  v3 = *(this + 56) - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0x8F5C28F5C28F5C29 * (v3 >> 3);
  v6 = 1;
  do
  {
    v7 = *(v2 + 200 * v4) == 4;
    result = v7;
    v4 = v6++;
  }

  while (!v7 && v5 > v4);
  return result;
}

void TSWPLineFragment::labelRect(TSWPLineFragment *this)
{
  v1 = *(this + 22);
  if (v1 && (*(v1 + 64) - 1) <= 2)
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    v6 = -*(v1 + 56);
    v7 = *(v1 + 72);
    if (*(v1 + 80) == 1)
    {
      v7 = *(this + 8) - v7 - v3;
    }

    v5 = *(this + 14) + (*(this + 16) + *(this + 17) - v4) * 0.5;
    v8 = CGRectOffset(*&v7, 0.0, *(this + 18));
    v9 = CGRectOffset(v8, 0.0, v6);
    CGRectOffset(v9, *(this + 6), *(this + 7));
  }
}

double TSWPLineFragment::labelTextPosition(TSWPLineFragment *this)
{
  v1 = *MEMORY[0x277CBF348];
  v2 = *(this + 22);
  if (!v2)
  {
    return v1;
  }

  if ((*(v2 + 64) & 0xFFFFFFFE) != 2)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGPoint TSWPLineFragment::labelTextPosition() const"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"];
    v9 = @"Text position only applies to text and numbers.";
    v10 = v6;
    v11 = v7;
    v12 = 992;
    goto LABEL_9;
  }

  TSWPLineFragment::labelRect(this);
  v1 = v4;
  if ((*(this + 25) & 0x20) == 0)
  {
    v5 = TSWPListLabel::labelFont(v2);
    if (v5)
    {
      if (*(v2 + 64) == 2)
      {
        memset(v16, 0, sizeof(v16));
        TSWPFontHeightInfoForFont(v5, v16);
      }

      return v1;
    }

    if (!CTLineGetGlyphCount(*(v2 + 16)))
    {
      return v1;
    }

    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGPoint TSWPLineFragment::labelTextPosition() const"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"];
    v9 = @"No label font but we need to render something";
    v10 = v14;
    v11 = v15;
    v12 = 968;
LABEL_9:
    [v10 handleFailureInFunction:v11 file:v8 lineNumber:v12 description:v9];
    return v1;
  }

  if (*(v2 + 81) == 1)
  {
    *&v16[0] = 0;
    CTLineGetTypographicBounds(*(v2 + 16), v16, 0, 0);
    return v1 + *v16;
  }

  return v1;
}

double TSWPLineFragment::textRect(TSWPLineFragment *this, char a2)
{
  v4 = *(this + 1) + *this + ((*(this + 6) << 20) >> 31);
  if (*this <= v4)
  {
    v5 = *(this + 1) + *this + ((*(this + 6) << 20) >> 31);
  }

  else
  {
    v5 = *this;
  }

  if (*this >= v4)
  {
    v6.location = *(this + 1) + *this + ((*(this + 6) << 20) >> 31);
  }

  else
  {
    v6.location = *this;
  }

  v6.length = v5 - v6.location;
  TSWPLineFragment::rectsForLineRange(this, v6, 0, a2, 1, 1, __p);
  TSWPUnionRects(__p);
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v15 = *(this + 6);
  if ((v15 & 2) == 0 || (v16 = *(this + 24), v17 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 25) - v16) >> 4), v17 < 2))
  {
LABEL_14:
    if ((v15 & 0x800000) == 0)
    {
      return x;
    }

    goto LABEL_15;
  }

  v18 = v17 - 1;
  v19 = v16 + 48;
  while ((*(v19 + 40) & 2) == 0)
  {
    v19 += 48;
    if (!--v18)
    {
      goto LABEL_14;
    }
  }

  v24 = *(v19 + 8);
  v31.size.width = CTLineGetTypographicBounds(*v19, 0, 0, 0);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v31.origin.x = v24;
  v31.origin.y = y;
  v31.size.height = height;
  v29 = CGRectUnion(v28, v31);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  if ((*(this + 6) & 0x800000) != 0)
  {
LABEL_15:
    v20 = *(this + 24);
    v21 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 25) - v20) >> 4);
    if (v21 >= 2)
    {
      v22 = v21 - 1;
      for (i = v20 + 48; (*(i + 40) & 4) == 0; i += 48)
      {
        if (!--v22)
        {
          return x;
        }
      }

      v25 = *(i + 8);
      v32.size.width = CTLineGetTypographicBounds(*i, 0, 0, 0);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      v32.origin.x = v25;
      v32.origin.y = y;
      v32.size.height = height;
      *&x = CGRectUnion(v30, v32);
    }
  }

  return x;
}

void sub_26C9202C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSWPLineFragment::leftMostCharIndex(TSWPLineFragment *this)
{
  CharIndexData = TSWPLineFragment::getCharIndexData(this);
  v3 = *CharIndexData;
  if (*CharIndexData == CharIndexData[1])
  {
    v3 = this;
  }

  return *v3;
}

uint64_t TSWPLineFragment::rightMostCharIndex(TSWPLineFragment *this)
{
  CharIndexData = TSWPLineFragment::getCharIndexData(this);
  v3 = CharIndexData[1];
  if (*CharIndexData == v3)
  {
    v4 = this;
  }

  else
  {
    v4 = (v3 - 64);
  }

  return *v4;
}

double TSWPLineFragment::wpOffsetForCharIndexForVisualSelection(TSWPLineFragment *this, unint64_t a2, int a3)
{
  v4 = *(this + 6);
  v5 = *(this + 24);
  if (*(this + 25) != v5 && CTLineGetGlyphCount(*v5))
  {
    if (*(this + 1) + *this <= a2)
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::wpOffsetForCharIndexForVisualSelection(TSWPCharIndex, BOOL) const"}];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1206, @"Bad char index"}];
    }

    v11 = *(this + 24);
    v10 = *(this + 25);
    if (v10 == v11)
    {
      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::wpOffsetForCharIndexForVisualSelection(TSWPCharIndex, BOOL) const"}];
      [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1207, @"Expected Line Refs"}];
      v11 = *(this + 24);
      v10 = *(this + 25);
    }

    v14 = 0.0;
    if (v10 == v11)
    {
      goto LABEL_52;
    }

    CharIndexData = TSWPLineFragment::getCharIndexData(this);
    v16 = *CharIndexData;
    v17 = CharIndexData[1];
    if (*CharIndexData == v17)
    {
      if (a3)
      {
        v14 = *(v11 + 8);
      }

      else
      {
        v35 = [*(this + 23) characterAtIndex:{objc_msgSend(*(this + 23), "charIndexMappedFromStorage:", a2)}];
        v36 = v35;
        v37 = IsParagraphBreakingCharacter(v35);
        if (v36 == 8232 || v37)
        {
          if (v36 > 0xC || ((1 << v36) & 0x1030) == 0)
          {
            v38 = 7.0;
            if ((v4 & 0x1000) != 0)
            {
              v38 = -7.0;
            }

            v14 = v38 + *(v11 + 8);
            goto LABEL_52;
          }

LABEL_47:
          if ((v4 & 0x1000) == 0)
          {
            v14 = *(this + 8);
          }
        }
      }

LABEL_52:
      v21 = 48;
      return v14 + *(this + v21);
    }

    v18 = (v17 - v16) >> 6;
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = (v16 + 32);
    v21 = 48;
    while (1)
    {
      v22 = *(v20 - 4);
      v24 = a2 >= v22;
      v23 = a2 - v22;
      v24 = !v24 || v23 >= *(v20 - 3);
      if (!v24)
      {
        break;
      }

      v20 += 8;
      if (!--v19)
      {
        return v14 + *(this + v21);
      }
    }

    v25 = v20[1];
    v26 = a3 ^ ((v4 & 0x1000) >> 12);
    if (v26)
    {
      v27 = v25 - *v20;
    }

    else
    {
      v27 = -(v25 - *v20);
    }

    if (v26)
    {
      v25 = *v20;
    }

    v28 = v25 + *(v11 + 8);
    if ((a3 & 1) == 0)
    {
      v29 = [*(this + 23) characterAtIndex:{objc_msgSend(*(this + 23), "charIndexMappedFromStorage:", a2)}];
      v30 = v29;
      v31 = IsParagraphBreakingCharacter(v29);
      if (v30 == 8232 || v31 != 0)
      {
        if (v30 > 0xC || ((1 << v30) & 0x1030) == 0)
        {
          v34 = 7.0;
          if ((v4 & 0x1000) != 0)
          {
            v34 = -7.0;
          }

          v14 = v28 + v34 + v27;
          goto LABEL_52;
        }

        goto LABEL_47;
      }
    }

    v21 = 48;
    v14 = v28;
    return v14 + *(this + v21);
  }

  v14 = *(this + 6);
  if ((v4 & 0x1000) != 0)
  {
    v21 = 64;
    return v14 + *(this + v21);
  }

  return v14;
}

CFIndex TSWPLineFragment::glyphCount(TSWPLineFragment *this)
{
  v1 = *(this + 24);
  if (*(this + 25) == v1)
  {
    return 0;
  }

  else
  {
    return CTLineGetGlyphCount(*v1);
  }
}

double TSWPLineFragment::wpOffsetForGlyphIndex(TSWPLineFragment *this, unint64_t a2, int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(this + 6);
  v5 = *(this + 24);
  if (*(this + 25) != v5 && CTLineGetGlyphCount(*v5))
  {
    v8 = *(this + 24);
    if (*(this + 25) == v8 || CTLineGetGlyphCount(*v8) <= a2)
    {
      v9 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::wpOffsetForGlyphIndex(NSUInteger, BOOL) const"}];
      [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1308, @"Bad glyph index"}];
    }

    v11 = *(this + 24);
    v12 = 0.0;
    if (*(this + 25) != v11)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      GlyphRuns = CTLineGetGlyphRuns(*v11);
      v14 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v14)
      {
        v15 = v14;
        v33 = v11;
        v34 = v4;
        v16 = 0;
        v17 = *v38;
        while (2)
        {
          v18 = 0;
          v19 = v16;
          do
          {
            if (*v38 != v17)
            {
              objc_enumerationMutation(GlyphRuns);
            }

            v20 = *(*(&v37 + 1) + 8 * v18);
            GlyphCount = CTRunGetGlyphCount(v20);
            v22 = GlyphCount;
            if ((GlyphCount - 65537) <= 0xFFFFFFFFFFFEFFFFLL)
            {
              v24 = [MEMORY[0x277D6C290] currentHandler];
              v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::wpOffsetForGlyphIndex(NSUInteger, BOOL) const"}];
              [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1321, @"bad glyph count: %ld", v22}];
              goto LABEL_33;
            }

            v16 = GlyphCount + v19;
            if (GlyphCount + v19 > a2)
            {
              v26 = a2 - v19;
              v43.location = v26;
              v43.length = 1;
              TypographicBounds = CTRunGetTypographicBounds(v20, v43, 0, 0, 0);
              v44.location = v26;
              v44.length = 1;
              CTRunGetPositions(v20, v44, &buffer);
              if (a3 == (v34 & 0x1000) >> 12)
              {
                v12 = TypographicBounds + buffer.x + *(v33 + 1);
                TypographicBounds = -TypographicBounds;
              }

              else
              {
                v12 = buffer.x + *(v33 + 1);
              }

              if ((a3 & 1) == 0)
              {
                v35 = 0;
                v45.location = v26;
                v45.length = 1;
                CTRunGetStringIndices(v20, v45, &v35);
                v28 = [*(this + 23) characterAtIndex:v35];
                v29 = v28;
                v30 = IsParagraphBreakingCharacter(v28);
                if (v29 == 8232 || v30)
                {
                  if (v29 <= 0xC && ((1 << v29) & 0x1030) != 0)
                  {
                    v12 = 0.0;
                    if ((v34 & 0x1000) == 0)
                    {
                      v12 = *(this + 8);
                    }
                  }

                  else
                  {
                    v31 = 7.0;
                    if ((v34 & 0x1000) != 0)
                    {
                      v31 = -7.0;
                    }

                    v12 = v12 + v31 + TypographicBounds;
                  }
                }
              }

              goto LABEL_33;
            }

            ++v18;
            v19 += GlyphCount;
          }

          while (v15 != v18);
          v15 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_33:
    v23 = 48;
    return v12 + *(this + v23);
  }

  v12 = *(this + 6);
  if ((v4 & 0x1000) != 0)
  {
    v23 = 64;
    return v12 + *(this + v23);
  }

  return v12;
}

double TSWPLineFragment::wpOffsetForCharIndex(TSWPLineFragment *this, unint64_t a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0.0;
  v6 = TSWPLineFragment::wpOffsetForCharIndex(this, a2, 0, 0, &v35);
  v7 = *(this + 23);
  if (!v7)
  {
    if (*(this + 24))
    {
      v7 = 0;
    }

    else
    {
      v8 = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::wpOffsetForCharIndex(TSWPCharIndex, BOOL) const"}];
      [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1383, @"Unexpected nil _textSource"}];
      v7 = *(this + 23);
    }
  }

  v10 = [v7 charIndexMappedFromStorage:a2];
  v11 = *(this + 24);
  if (*(this + 25) != v11)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    GlyphRuns = CTLineGetGlyphRuns(*v11);
    v13 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = v10 - ((v10 != 0) & ~a3);
      v15 = *v32;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(GlyphRuns);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          GlyphCount = CTRunGetGlyphCount(v17);
          if ((GlyphCount - 65537) < 0xFFFFFFFFFFFF0000)
          {
            v27 = [MEMORY[0x277D6C290] currentHandler];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSWPLineFragment::wpOffsetForCharIndex(TSWPCharIndex, BOOL) const"}];
            [v27 handleFailureInFunction:v28 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1403, @"bad glyph count: %ld", GlyphCount}];
            return v6;
          }

          std::vector<long>::vector[abi:ne200100](buffer, GlyphCount);
          v38.location = 0;
          v38.length = GlyphCount;
          CTRunGetStringIndices(v17, v38, buffer[0]);
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = buffer[0];
          v23 = 1;
          do
          {
            v24 = *v22++;
            v25 = (v24 > v14) | v20;
            v26 = (v24 <= v14) | v19;
            v21 |= v24 == v14;
            if (v24 != v14)
            {
              v20 = v25;
              v19 = v26;
            }

            if (v23 >= GlyphCount)
            {
              break;
            }

            ++v23;
          }

          while ((v21 & (v20 | v19) & 1) == 0);
          if ((v21 | v20 & v19) & 1) != 0 && ((CTRunGetStatus(v17) ^ ((*(this + 25) & 0x10) >> 4)))
          {
            v6 = v35;
          }

          if (buffer[0])
          {
            buffer[1] = buffer[0];
            operator delete(buffer[0]);
          }
        }

        v13 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  return v6;
}

void sub_26C920C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *TSWPLineFragment::fontAtCharIndex(TSWPLineFragment *this, unint64_t a2, BOOL *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = *(this + 24);
  v6 = *(this + 25);
  if (v6 == v7)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CTFontRef TSWPLineFragment::fontAtCharIndex(TSWPCharIndex, BOOL &) const"}];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1442, @"No line refs"}];
    v7 = *(this + 24);
    v6 = *(this + 25);
  }

  if (v6 == v7)
  {
    return 0;
  }

  v10 = *this;
  if (*this <= a2)
  {
    v10 = a2;
  }

  v11 = *(this + 1) + *this >= v10 ? v10 : *(this + 1) + *this;
  v12 = [*(this + 23) charIndexMappedFromStorage:v11];
  *a3 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  GlyphRuns = CTLineGetGlyphRuns(**(this + 24));
  v14 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = *v26;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v26 != v16)
      {
        objc_enumerationMutation(GlyphRuns);
      }

      v18 = *(*(&v25 + 1) + 8 * i);
      StringRange = CTRunGetStringRange(v18);
      if (v12 >= StringRange.location && v12 - StringRange.location < StringRange.length)
      {
        Attributes = CTRunGetAttributes(v18);
        Value = CFDictionaryGetValue(Attributes, @"TSWPUnadjustedFont");
        v21 = Value;
        if (!Value)
        {
          v21 = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
        }

        *a3 = (CTRunGetStatus(v18) & 4) != 0;
        return v21;
      }
    }

    v15 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v25 objects:v29 count:16];
    v21 = 0;
    if (v15)
    {
      continue;
    }

    break;
  }

  return v21;
}

void TSWPLineFragment::wpOffsetForInsertionPoint(TSWPLineFragment *this, unint64_t a2, BOOL a3, int a4, char a5)
{
  v22 = a3;
  v7 = TSWPLineFragment::glyphIndexForInsertionPoint(this, a2, &v22, a4);
  v8 = *(this + 24);
  if (*(this + 25) == v8)
  {
    v16 = 0.0;
    if (a5)
    {
      return;
    }

    goto LABEL_9;
  }

  v9 = v7;
  CharIndexData = TSWPLineFragment::getCharIndexData(this);
  v12 = *CharIndexData;
  v11 = CharIndexData[1];
  if (v11 == *CharIndexData)
  {
    v18 = *(v8 + 8);
    v19 = *(this + 6);
    if ((v19 & 0x800) != 0)
    {
      v20 = -7.0;
      if ((v19 & 0x1000) == 0)
      {
        v20 = 7.0;
      }

      v21 = v18 + v20;
      if (!v22)
      {
        v18 = v21;
      }
    }
  }

  else
  {
    v13 = (v11 - *CharIndexData) >> 6;
    if (v9 < v13 && *(v12 + (v9 << 6) + 48) != v22)
    {
      ++v9;
    }

    if (v9 == v13)
    {
      v14 = *(v8 + 8);
      v15 = *(v11 - 24);
    }

    else
    {
      v14 = *(v12 + (v9 << 6) + 32);
      v15 = *(v8 + 8);
    }

    v18 = v14 + v15;
  }

  v16 = v18 + *(this + 6);
  if ((a5 & 1) == 0)
  {
LABEL_9:
    v17 = fmin(v16, CGRectGetMaxX(*(this + 48)) + -1.0);
    fmax(v17, CGRectGetMinX(*(this + 48)));
  }
}

uint64_t TSWPLineFragment::glyphIndexForInsertionPoint(TSWPLineFragment *this, unint64_t a2, BOOL *a3, int a4)
{
  if (![*(this + 23) length])
  {
    goto LABEL_39;
  }

  v8 = *(this + 6) & 0x1000;
  v9 = [*(this + 23) charIndexRemappedFromStorage:*this];
  v10 = v9;
  v11 = 0;
  v12 = *(this + 1);
  if ((a4 & 1) == 0 && v9 < a2)
  {
    v13 = TSWPPreviousCharFromTextSource(a2, *(this + 23));
    v11 = TSWPLineFragment::writingDirectionForCharIndex(this, v13);
  }

  v14 = v12 + v10;
  if (v12 + v10 == a2 && *a3)
  {
    if (!a4)
    {
      v18 = TSWPPreviousCharFromTextSource(a2, *(this + 23));
      v24 = TSWPLineFragment::writingDirectionForCharIndex(this, v18);
      if (v24 != v8 >> 12 && v24 == v11)
      {
        v19 = 0;
LABEL_38:
        *a3 = v19;
        a2 = v18;
        goto LABEL_39;
      }
    }

LABEL_8:
    CharIndexData = TSWPLineFragment::getCharIndexData(this);
    v16 = *CharIndexData;
    v17 = *(CharIndexData + 8);
    if (v8)
    {
LABEL_9:
      if (v16 == v17)
      {
        v16 = this;
      }

      v18 = *v16;
      v19 = TSWPLineFragment::writingDirectionForCharIndex(this, *v16) ^ 1;
      goto LABEL_38;
    }

LABEL_20:
    if (v16 == v17)
    {
      v23 = this;
    }

    else
    {
      v23 = v17 - 8;
    }

    v18 = *v23;
    v19 = TSWPLineFragment::writingDirectionForCharIndex(this, *v23);
    goto LABEL_38;
  }

  if (v10 > a2 && !*a3)
  {
LABEL_19:
    v22 = TSWPLineFragment::getCharIndexData(this);
    v16 = *v22;
    v17 = *(v22 + 8);
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  if (a4)
  {
    goto LABEL_39;
  }

  v20 = TSWPLineFragment::writingDirectionForCharIndex(this, a2);
  v21 = v20;
  if (v10 != a2 || !*a3)
  {
    if (v14 - 1 == a2)
    {
      if (!*a3)
      {
        if (v20 != v8 >> 12 && v20 != v11)
        {
          goto LABEL_8;
        }

        goto LABEL_39;
      }
    }

    else if (!*a3)
    {
      v25 = TSWPNextCharFromTextSource(a2, *(this + 23));
      goto LABEL_35;
    }

    v25 = TSWPPreviousCharFromTextSource(a2, *(this + 23));
LABEL_35:
    v18 = v25;
    if (v21 != TSWPLineFragment::writingDirectionForCharIndex(this, v25) && v21 != v11)
    {
      v19 = !*a3;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (v20 != v8 >> 12 && v20 != v11)
  {
    goto LABEL_19;
  }

LABEL_39:

  return TSWPLineFragment::visualIndexForCharIndex(this, a2);
}

uint64_t TSWPLineFragment::writingDirectionForCharIndex(TSWPLineFragment *this, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  if (v2)
  {
    return 0;
  }

  v5 = *(this + 1) + *this;
  if (v5 == a2 || (v2 & 0x800) != 0 && v5 - 1 == a2)
  {
    return (v2 >> 12) & 1;
  }

  v7 = *(this + 23);
  if (!v7)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSWPWritingDirection TSWPLineFragment::writingDirectionForCharIndex(TSWPCharIndex) const"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2462, @"invalid nil value for '%s'", "_textSource"}];
    v7 = *(this + 23);
  }

  v10 = [v7 charIndexMappedFromStorage:a2];
  v11 = v10;
  v12 = *(this + 24);
  v13 = *(this + 25);
  if (v13 == v12 && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSWPWritingDirection TSWPLineFragment::writingDirectionForCharIndex(TSWPCharIndex) const"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2466, @"bad character index: %d", a2}];
    return 0;
  }

  result = 0;
  if (v13 != v12 && v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    GlyphRuns = CTLineGetGlyphRuns(*v12);
    result = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (result)
    {
      v17 = result;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(GlyphRuns);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          StringRange = CTRunGetStringRange(v20);
          if (v11 >= StringRange.location && v11 - StringRange.location < StringRange.length)
          {
            return CTRunGetStatus(v20) & 1;
          }
        }

        v17 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v23 objects:v27 count:16];
        result = 0;
      }

      while (v17);
    }
  }

  return result;
}

uint64_t TSWPLineFragment::visualIndexForCharIndex(TSWPLineFragment *this, unint64_t a2)
{
  CharIndexData = TSWPLineFragment::getCharIndexData(this);
  v5 = CharIndexData;
  if ((*(this + 25) & 0x10) != 0)
  {
    result = 0;
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = *CharIndexData;
    v7 = CharIndexData[1];
    if (*CharIndexData == v7)
    {
      return 0;
    }

    result = ((v7 - v6) >> 6) - 1;
  }

  v9 = v7 - v6;
  if (v9)
  {
    v10 = 0;
    v11 = v9 >> 6;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    for (i = (v6 + 8); ; i += 8)
    {
      v13 = *(i - 1);
      v15 = a2 >= v13;
      v14 = a2 - v13;
      v15 = !v15 || v14 >= *i;
      if (!v15)
      {
        break;
      }

      if (v11 == ++v10)
      {
        return result;
      }
    }

    return v10;
  }

  return result;
}

unint64_t TSWPLineFragment::charIndexForWPOffsetWithDirection(TSWPLineFragment *this, int a2, int a3, double a4)
{
  v6 = *(this + 24);
  if (*(this + 25) == v6)
  {
    goto LABEL_39;
  }

  v7 = *(this + 6);
  v8 = a4 - v7;
  v9 = v8 - *(v6 + 8);
  if (v9 <= *(this + 10) - v7 + 1.0)
  {
    v11 = *this;
    if ((*(this + 25) & 0x10) != 0)
    {
      v11 = v11 + *(this + 1) - 1;
    }

    goto LABEL_40;
  }

  if (v9 >= 0.0)
  {
    if (v8 >= *(this + 27) && (a3 & 1) != 0)
    {
      goto LABEL_39;
    }
  }

  else if (a3)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_44;
  }

  CharIndexData = TSWPLineFragment::getCharIndexData(this);
  v13 = *CharIndexData;
  v14 = CharIndexData[1] - *CharIndexData;
  if (v14)
  {
    v15 = v13[4];
    v16 = v13[5];
    v17 = v15 + (v16 - v15) * 0.5;
    v18 = v9 > v17;
    if (a2 || (v9 >= v15 ? (v19 = v9 > v17) : (v19 = 1), v19))
    {
      v21 = 0;
      v22 = v14 >> 6;
      v23 = v13 + 13;
      v24 = 0.0;
      while (1)
      {
        v20 = v21;
        v25 = v17;
        if (!a2 && v9 >= v17 && v9 <= v16)
        {
          break;
        }

        v27 = (v9 < v24 || v18) && v9 > v15;
        if (a2 != 1)
        {
          v27 = 1;
        }

        ++v21;
        if (v27 != 1 || v21 >= v22)
        {
          break;
        }

        v15 = *(v23 - 1);
        v16 = *v23;
        v17 = v15 + (*v23 - v15) * 0.5;
        v18 = v9 > v17;
        v23 += 8;
        v24 = v25;
        if (!a2)
        {
          v24 = v25;
          if (v9 >= v15)
          {
            v24 = v25;
            if (v9 <= v17)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      v20 = -1;
    }

    if (v9 < 0.0 && !a3)
    {
      v20 = 0;
      goto LABEL_37;
    }

    if (v20 != -1)
    {
LABEL_37:
      v11 = *&v13[8 * v20];
      if ((*(this + 25) & 0x40) != 0)
      {
        v11 = *this + v11 - *(this + 2);
      }

      goto LABEL_40;
    }
  }

LABEL_39:
  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_40:
  if ((a3 & 1) == 0 && v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = *this;
    if ((*(this + 25) & 0x10) != 0)
    {
      v11 += *(this + 1);
    }
  }

LABEL_44:
  if ((v11 != 0x7FFFFFFFFFFFFFFFLL || (a3 & 1) == 0) && (v11 < *this || v11 > *(this + 1) + *this))
  {
    v29 = [MEMORY[0x277D6C290] currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPLineFragment::charIndexForWPOffsetWithDirection(CGFloat, TSWPWritingDirection, BOOL) const"}];
    [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1763, @"TSWPLineFragment::charIndexForWPOffset: out-of-bounds result"}];
  }

  return v11;
}

unint64_t TSWPLineFragment::charIndexForWPOffset(TSWPLineFragment *this, double a2, int a3, char a4, BOOL *a5, char a6)
{
  v9 = *(this + 24);
  if (*(this + 25) == v9)
  {
    goto LABEL_22;
  }

  v10 = a3;
  v11 = a2 - *(this + 6);
  v12 = v11 - *(v9 + 8);
  if (v12 >= 0.0)
  {
    if (v11 >= *(this + 27) && (a4 & 1) != 0)
    {
      goto LABEL_22;
    }
  }

  else if (a4)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 1;
    goto LABEL_29;
  }

  if (!a3 || (a6 & 1) != 0)
  {
    CharIndexData = TSWPLineFragment::getCharIndexData(this);
    v21 = *CharIndexData;
    v22 = CharIndexData[1] - *CharIndexData;
    if (v22)
    {
      v23 = v22 >> 6;
      if (v23 <= 1)
      {
        v23 = 1;
      }

      v24 = *(v21 + 32);
      if (v24 <= v12)
      {
        v31 = 0;
        v32 = v23 - 1;
        v33 = v21 + 40;
        while (1)
        {
          v25 = v31;
          if (v24 + *v33) * 0.5 > v12 && (v10)
          {
            v14 = *(v33 + 8);
            goto LABEL_50;
          }

          if (v32 == v31)
          {
            break;
          }

          v24 = *(v33 + 56);
          v33 += 64;
          ++v31;
          if (v24 > v12)
          {
            v14 = v10 & *(v33 - 56) ^ 1;
            goto LABEL_46;
          }
        }

        v14 = v10 & *(v33 + 8) ^ 1;
        v25 = v32;
      }

      else
      {
        v25 = -1;
        v14 = 1;
LABEL_46:
        if (v25 == -1)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_24;
        }
      }

LABEL_50:
      v13 = *(v21 + (v25 << 6));
      if ((*(this + 25) & 0x40) != 0)
      {
        v13 = *this + v13 - *(this + 2);
      }

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v34.y = 0.0;
  v34.x = v11 - *(v9 + 8);
  StringIndexForPosition = CTLineGetStringIndexForPosition(*v9, v34);
  if (StringIndexForPosition < 0 || ((v16 = StringIndexForPosition, v17 = [*(this + 23) charRangeMappedFromStorage:{*this, *(this + 1)}], v16 >= v17) ? (v19 = v16 - v17 >= v18) : (v19 = 1), v19 && v17 + v18 != v16))
  {
LABEL_22:
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_23;
  }

  v13 = [*(this + 23) charIndexMappedToStorage:v16];
LABEL_23:
  v14 = 1;
LABEL_24:
  if ((a4 & 1) == 0 && v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = TSWPLineFragment::getCharIndexData(this);
    v27 = *v26;
    if (*v26 == *(v26 + 8))
    {
      v27 = this;
    }

    v13 = *v27;
    v14 = TSWPLineFragment::writingDirectionForCharIndex(this, *v27) == 0;
  }

LABEL_29:
  if ((v13 != 0x7FFFFFFFFFFFFFFFLL || (a4 & 1) == 0) && (v13 < *this || v13 > *(this + 1) + *this))
  {
    v28 = [MEMORY[0x277D6C290] currentHandler];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSWPCharIndex TSWPLineFragment::charIndexForWPOffset(CGFloat, BOOL, BOOL, BOOL *, BOOL) const"}];
    [v28 handleFailureInFunction:v29 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 1855, @"TSWPLineFragment::charIndexForWPOffset: out-of-bounds result: %lu {%lu, %lu}", v13, *this, *(this + 1)}];
  }

  if (a5)
  {
    *a5 = v14 & 1;
  }

  else if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 += (v14 & 1) == 0;
  }

  return v13;
}

double TSWPLineFragment::getLocalRunOffsetForCharIndex(TSWPLineFragment *this, unint64_t a2, double *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  *a3 = 0.0;
  v3 = *(this + 24);
  v4 = 0.0;
  if (*(this + 25) != v3 && (*(this + 25) & 0x40) == 0)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    GlyphRuns = CTLineGetGlyphRuns(*v3);
    v8 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = *v28;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(GlyphRuns);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          StringRange = CTRunGetStringRange(v11);
          if (a2 >= StringRange.location && a2 - StringRange.location < StringRange.length)
          {
            GlyphCount = CTRunGetGlyphCount(v11);
            v15 = GlyphCount;
            if (GlyphCount >= 1)
            {
              std::vector<long>::vector[abi:ne200100](buffer, GlyphCount);
              v33.location = 0;
              v33.length = v15;
              CTRunGetStringIndices(v11, v33, buffer[0]);
              v16 = 0;
              do
              {
                v17 = v16 + 1;
                if (v16 >= v15)
                {
                  break;
                }

                v18 = buffer[0][v16++];
              }

              while (v18 != a2);
              v19 = v17 - 1;
              v34.location = v17 - 1;
              v34.length = 1;
              TypographicBounds = CTRunGetTypographicBounds(v11, v34, 0, 0, 0);
              v35.location = v19;
              v35.length = 1;
              CTRunGetPositions(v11, v35, &v25);
              x = v25.x;
              *a3 = v25.x;
              TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(*v3);
              v23 = TypographicBounds + x;
              if (buffer[0])
              {
                buffer[1] = buffer[0];
                operator delete(buffer[0]);
              }

              return v23 - TrailingWhitespaceWidth;
            }

            return v4;
          }
        }

        v8 = [(__CFArray *)GlyphRuns countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  return v4;
}

void sub_26C921C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TSWPLFWritingDirectionRun>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLFWritingDirectionRun>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

uint64_t TSWPLineFragment::layoutOrderCharIndexForCaretCharIndex(TSWPLineFragment *this, uint64_t a2, TSWPStorage *a3)
{
  v5 = *(this + 1);
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<TSWPLFCharIndexData>::reserve(&__p, v5);
  TSWPLineFragment::fillCharIndicesAndOffsets(this, &__p);
  v7 = 126 - 2 * __clz((v15 - __p) >> 6);
  v17 = compareByCaretPosition;
  if (v15 == __p)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,false>(__p, v15, &v17, v8, 1, v6);
  v10 = __p;
  if (__p == v15)
  {
LABEL_8:
    if (!__p)
    {
      return a2;
    }
  }

  else
  {
    v11 = 0;
    v12 = __p;
    while (v12->n128_u64[0] != a2)
    {
      ++v11;
      v12 += 4;
      if (v12 == v15)
      {
        goto LABEL_8;
      }
    }

    v17 = compareByGlyphPosition;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,false>(__p, v15, &v17, 126 - 2 * __clz((v15 - __p) >> 6), 1, v9);
    v10 = __p;
    a2 = *(__p + 8 * v11);
  }

  v15 = v10;
  operator delete(v10);
  return a2;
}

void sub_26C921E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<TSWPLFCharIndexData>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLFCharIndexData>>(result, a2);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void TSWPLineFragment::fillCharIndicesAndOffsets(uint64_t a1, char **a2)
{
  if (*(a1 + 200) != *(a1 + 192) && (*(a1 + 25) & 0x40) == 0)
  {
    if (!*(a1 + 184))
    {
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void TSWPLineFragment::fillCharIndicesAndOffsets(std::vector<TSWPLFCharIndexData> &) const"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLineFragment.mm"), 2201, @"invalid nil value for '%s'", "_textSource"}];
    }

    __p = 0;
    v17 = 0;
    v18 = 0;
    TSWPLineFragment::fillWritingDirectionRuns(a1, &__p);
    CharIndexData = TSWPLineFragment::getCharIndexData(a1);
    if (CharIndexData != a2)
    {
      std::vector<TSWPLFCharIndexData>::__assign_with_size[abi:ne200100]<TSWPLFCharIndexData*,TSWPLFCharIndexData*>(a2, *CharIndexData, CharIndexData[1], (CharIndexData[1] - *CharIndexData) >> 6);
    }

    v7 = *(a1 + 24);
    if ((v7 & 0x200000) != 0)
    {
      *&v9 = *(a1 + 8) + *a1;
      *(&v9 + 1) = 1;
      v8 = *(a1 + 48);
      if ((v7 & 0x1000) != 0)
      {
        v10 = *(a1 + 48);
        v11 = v8;
        v12 = v8;
        v13 = v8;
        v14 = 0;
        v15 = 0;
        std::vector<TSWPLFCharIndexData>::insert(a2, *a2, &v9);
      }

      else
      {
        v10 = v8 + *(a1 + 64);
        v11 = v10;
        v12 = v10;
        v13 = v10;
        v14 = 1;
        v15 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - __p) >> 3) - 1;
        std::vector<TSWPLFCharIndexData>::push_back[abi:ne200100](a2, &v9);
      }
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }
}

void sub_26C922094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL compareByCaretPosition(double *a1, double *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v4 = *(a1 + 7);
  v5 = *(a2 + 7);
  v6 = v4 >= v5;
  if (v4 == v5)
  {
    if (*(a1 + 48) == 1)
    {
      v7 = *a1;
      v8 = *a2;
    }

    else
    {
      v7 = *a2;
      v8 = *a1;
    }

    v6 = v7 >= v8;
  }

  return !v6;
}

BOOL compareByGlyphPosition(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[7];
  v3 = a2[7];
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    if (*(a1 + 48) == 1)
    {
      v5 = *a1;
      v6 = *a2;
    }

    else
    {
      v5 = *a2;
      v6 = *a1;
    }

    v4 = v5 >= v6;
  }

  return !v4;
}

uint64_t TSWPLineFragment::caretCharIndexForLayoutOrderCharIndex(TSWPLineFragment *this, uint64_t a2, TSWPStorage *a3)
{
  v5 = *(this + 1);
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<TSWPLFCharIndexData>::reserve(&__p, v5);
  TSWPLineFragment::fillCharIndicesAndOffsets(this, &__p);
  v7 = __p;
  if (__p == v12)
  {
LABEL_5:
    if (!__p)
    {
      return a2;
    }
  }

  else
  {
    v8 = 0;
    v9 = __p;
    while (v9->n128_u64[0] != a2)
    {
      ++v8;
      v9 += 4;
      if (v9 == v12)
      {
        goto LABEL_5;
      }
    }

    v14 = compareByCaretPosition;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TSWPLFCharIndexData const&,TSWPLFCharIndexData const&),TSWPLFCharIndexData*,false>(__p, v12, &v14, 126 - 2 * __clz((v12 - __p) >> 6), 1, v6);
    v7 = __p;
    a2 = *(__p + 8 * v8);
  }

  v12 = v7;
  operator delete(v7);
  return a2;
}

void sub_26C922214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 *std::vector<TSWPLFCharIndexData>::insert(void *a1, __n128 *__src, unint64_t a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v13 = *a1;
    v14 = ((v6 - *a1) >> 6) + 1;
    if (v14 >> 58)
    {
      std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
    }

    v15 = __src - v13;
    v16 = v7 - v13;
    if (v16 >> 5 > v14)
    {
      v14 = v16 >> 5;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFC0)
    {
      v17 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v14;
    }

    v18 = v15 >> 6;
    v39 = a1;
    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TSWPLFCharIndexData>>(a1, v17);
    }

    v36 = 0;
    v37 = (v18 << 6);
    v38 = (v18 << 6);
    std::__split_buffer<TSWPLFCharIndexData>::emplace_back<TSWPLFCharIndexData const&>(&v36, a3);
    v22 = v37;
    memcpy(v38, v4, a1[1] - v4);
    v23 = *a1;
    v24 = v37;
    *&v38 = v38 + a1[1] - v4;
    a1[1] = v4;
    v25 = v4 - v23;
    v26 = v24 - (v4 - v23);
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v38;
    *&v38 = v27;
    *(&v38 + 1) = v28;
    v36 = v27;
    v37 = v27;
    if (v27)
    {
      operator delete(v27);
    }

    return v22;
  }

  else if (__src == v6)
  {
    v19 = *a3;
    v20 = *(a3 + 16);
    v21 = *(a3 + 48);
    v6[2] = *(a3 + 32);
    v6[3] = v21;
    *v6 = v19;
    v6[1] = v20;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 0x40)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 4;
      v10 = v6[-4];
      v11 = v6[-3];
      v12 = v6[-1];
      v6[2] = v6[-2];
      v6[3] = v12;
      *v6 = v10;
      v6[1] = v11;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[4], __src, v6 - v8);
      v9 = a1[1];
    }

    v29 = v9 <= a3 || v4 > a3;
    v30 = 64;
    if (v29)
    {
      v30 = 0;
    }

    v31 = (a3 + v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[3];
    v4[2] = v31[2];
    v4[3] = v34;
    *v4 = v32;
    v4[1] = v33;
  }

  return v4;
}