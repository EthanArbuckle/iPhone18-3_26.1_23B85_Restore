__int16 *sub_26233CA24(__int16 *result, __int16 *a2, _WORD *a3, _WORD *a4)
{
  v4 = a2[1];
  v5 = (result + 1);
  v6 = a3 + 1;
  v7 = a3[1];
  if (v4 <= result[1])
  {
    if (v7 > v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      v7 = a2[1];
      a2[1] = a3[1];
      a3[1] = v7;
      if (a2[1] > *v5)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
        v9 = result + 1;
        v12 = a2 + 1;
LABEL_10:
        v15 = *v9;
        *v9 = *v12;
        *v12 = v15;
        v7 = *v6;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v4)
    {
      *result = *a3;
      *a3 = v8;
      v9 = result + 1;
LABEL_9:
      v12 = a3 + 1;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v7 = *v6;
    if (v7 > v13)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v9 = a2 + 1;
      goto LABEL_9;
    }
  }

  if (a4[1] > v7)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    if (a3[1] > a2[1])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = a3[1];
      a3[1] = v19;
      if (a2[1] > *v5)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        v21 = result[1];
        result[1] = a2[1];
        a2[1] = v21;
      }
    }
  }

  return result;
}

BOOL sub_26233CB9C(__int16 *a1, char *a2)
{
  v4 = (a2 - a1) >> 2;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v17 = (a1 + 3);
      v18 = a1[3];
      v19 = a1 + 1;
      v20 = a1[1];
      v21 = *(a2 - 1);
      if (v18 <= v20)
      {
        if (v21 <= v18)
        {
          return 1;
        }

        v29 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v29;
        v30 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v30;
        if (a1[3] <= a1[1])
        {
          return 1;
        }

        v31 = *a1;
        *a1 = a1[2];
        a1[2] = v31;
      }

      else
      {
        v22 = *a1;
        if (v21 <= v18)
        {
          *a1 = a1[2];
          a1[2] = v22;
          a1[1] = v18;
          a1[3] = v20;
          if (*(a2 - 1) <= v20)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v22;
          v19 = a1 + 3;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v22;
        }

        v17 = a2 - 2;
      }

      v35 = *v19;
      *v19 = *v17;
      *v17 = v35;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_26233CA24(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(a2 - 1) > a1[7])
        {
          v7 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v7;
          v8 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v8;
          v9 = a1[7];
          v10 = a1[5];
          if (v9 > v10)
          {
            v11 = a1[4];
            v12 = a1[6];
            a1[4] = v12;
            a1[6] = v11;
            a1[5] = v9;
            a1[7] = v10;
            v13 = a1[3];
            if (v9 > v13)
            {
              v14 = a1[2];
              a1[2] = v12;
              a1[4] = v14;
              a1[3] = v9;
              a1[5] = v13;
              v15 = a1[1];
              if (v9 > v15)
              {
                v16 = *a1;
                *a1 = v12;
                a1[2] = v16;
                a1[1] = v9;
                a1[3] = v15;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_26233CA24(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) > a1[1])
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      v6 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v23 = a1[3];
  v25 = a1 + 1;
  v24 = a1[1];
  v27 = a1 + 5;
  v26 = a1[5];
  if (v23 > v24)
  {
    v28 = *a1;
    if (v26 <= v23)
    {
      *a1 = a1[2];
      a1[2] = v28;
      a1[1] = v23;
      a1[3] = v24;
      if (v26 <= v24)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v28;
      v25 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v28;
    }

    goto LABEL_33;
  }

  if (v26 > v23)
  {
    v32 = a1[2];
    v33 = a1[4];
    a1[2] = v33;
    a1[4] = v32;
    a1[3] = v26;
    a1[5] = v23;
    if (v26 > v24)
    {
      v34 = *a1;
      *a1 = v33;
      a1[2] = v34;
      v27 = a1 + 3;
LABEL_33:
      *v25 = v26;
      *v27 = v24;
    }
  }

LABEL_34:
  v36 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  v39 = (a1 + 4);
  while (1)
  {
    if (*(v36 + 1) > *(v39 + 1))
    {
      v40 = *v36;
      v41 = v37;
      while (1)
      {
        *(a1 + v41 + 12) = *(a1 + v41 + 8);
        if (v41 == -8)
        {
          break;
        }

        v42 = *(a1 + v41 + 6);
        v41 -= 4;
        if (v42 >= HIWORD(v40))
        {
          v43 = (a1 + v41 + 12);
          goto LABEL_42;
        }
      }

      v43 = a1;
LABEL_42:
      *v43 = v40;
      if (++v38 == 8)
      {
        return v36 + 4 == a2;
      }
    }

    v39 = v36;
    v37 += 4;
    v36 += 4;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void sub_26233CF0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      sub_2621CBF10(a4);
    }

    sub_2621CBEB0();
  }
}

void sub_26233CF88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26233CFA4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8)
{
  memset(v33, 0, sizeof(v33));
  memset(__p, 0, sizeof(__p));
  if (a8 == 1)
  {
    sub_2623399A8(a2, a6, a7, v33);
    sub_2623399A8(a4, a6, a7, __p);
  }

  else
  {
    sub_26233D254(a2, a6, a7, v33);
    sub_26233D254(a4, a6, a7, __p);
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_26233D440(a2, a3, v33, &v29, &v26);
  sub_26233D440(a4, a5, __p, &v23, &v20);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v15 = v29;
  sub_2621DE214(a1, v29, v30, (v30 - v29) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v16 = v26;
  sub_2621C8E70((a1 + 3), v26, v27, (v27 - v26) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v17 = v23;
  sub_2621DE214((a1 + 6), v23, v24, (v24 - v23) >> 4);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  v18 = v20;
  sub_2621C8E70((a1 + 9), v20, v21, (v21 - v20) >> 2);
  if (v18)
  {
    operator delete(v18);
  }

  if (v17)
  {
    operator delete(v17);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v15)
  {
    operator delete(v15);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v19 = v33[0];
  if (v33[0])
  {

    operator delete(v19);
  }
}

void sub_26233D1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21)
{
  v26 = *v23;
  if (*v23)
  {
    *(v21 + 56) = v26;
    operator delete(v26);
  }

  v27 = *v22;
  if (*v22)
  {
    *(v21 + 32) = v27;
    operator delete(v27);
  }

  v28 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v28;
    operator delete(v28);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v29 = *(v24 - 88);
  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_26233D254(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v25 = 0;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      v8 = *a2;
      if (a2[1] != *a2)
      {
        v9 = 0;
        while (2)
        {
          v10 = 0;
          v11 = *a1 + 16 * v7;
          v12 = (v8 + 16 * v9);
          LODWORD(v23) = *(*a3 + 8 * v9);
          LODWORD(v13) = HIDWORD(*(*a3 + 8 * v9));
          memset(__p, 0, sizeof(__p));
          v14 = 1;
          do
          {
            v15 = v14;
            v24 = vsub_f32(vrev64_s32(*(v11 + 8 * v10)), *v12);
            v16 = (atan2f(v24.f32[0], v24.f32[1]) * 180.0) / 3.1416;
            if (v23 >= v16 || v16 >= v13)
            {
              v18 = v16 + 360.0;
              if (v23 >= v18 || v18 >= v13)
              {
                if (__p[0])
                {
                  operator delete(__p[0]);
                }

                goto LABEL_23;
              }
            }

            v26 = sqrtf(vaddv_f32(vmul_f32(v24, v24))) - v12[1].f32[0];
            sub_2621C8F2C(__p, &v26);
            v14 = 0;
            v10 = 1;
          }

          while ((v15 & 1) != 0);
          v21 = *__p[0];
          v20 = *(__p[0] + 1);
          if (*__p[0] > 7.0 && v20 < -7.0)
          {
            operator delete(__p[0]);
LABEL_26:
            sub_2621C9004(a4, &v25);
            break;
          }

          operator delete(__p[0]);
          if (v21 < -7.0 && v20 > 7.0)
          {
            goto LABEL_26;
          }

LABEL_23:
          ++v9;
          v8 = *a2;
          if (v9 < (a2[1] - *a2) >> 4)
          {
            continue;
          }

          break;
        }
      }

      v25 = ++v7;
    }

    while (v7 < (a1[1] - *a1) >> 4);
  }
}

void sub_26233D428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26233D440(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v8 = a1[1];
  if (v8 != *a1)
  {
    v12 = 0;
    do
    {
      v13 = *a3;
      v14 = *(a3 + 8) - *a3;
      if (v14)
      {
        v15 = v14 >> 3;
        if (v15 <= 1)
        {
          v15 = 1;
        }

        while (1)
        {
          v16 = *v13++;
          if (v12 == v16)
          {
            break;
          }

          if (!--v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        sub_2621DE070(a4, (v9 + 16 * v12));
        v9 = *a1;
        v8 = a1[1];
      }

      ++v12;
    }

    while (v12 < (v8 - v9) >> 4);
  }

  v18 = *a2;
  v17 = a2[1];
  if (v17 != *a2)
  {
    v19 = 0;
    do
    {
      v20 = *a3;
      v21 = *(a3 + 8) - *a3;
      if (v21)
      {
        v22 = v21 >> 3;
        if (v22 <= 1)
        {
          v22 = 1;
        }

        while (1)
        {
          v23 = *v20++;
          if (v19 == v23)
          {
            break;
          }

          if (!--v22)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        sub_2621C8F2C(a5, (v18 + 4 * v19));
        v18 = *a2;
        v17 = a2[1];
      }

      ++v19;
    }

    while (v19 < (v17 - v18) >> 2);
  }
}

uint64_t sub_26233D538(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_26233D780(uint64_t a1, float32x2_t a2)
{
  v2 = vsub_f32(a2, *(a1 + 64));
  v3 = vaddv_f32(vmul_f32(*(a1 + 96), v2));
  v4 = vmul_f32(v2, *(a1 + 88));
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = v3 / *&v5;
  v8 = -v7;
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = vaddv_f32(v4);
  v11 = v8 - v8;
  if (v11 < 0.5)
  {
    v12 = v9;
  }

  else
  {
    v12 = v9 + 1;
  }

  v13 = (v9 & 1) + v9;
  if (v11 != 0.5)
  {
    v13 = v12;
  }

  v14 = v10 / *(&v5 + 1);
  v15 = -v14;
  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  v16 = v15;
  v17 = v15 - v15;
  if (v17 < 0.5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v16 + 1;
  }

  v19 = (v16 & 1) + v16;
  if (v17 != 0.5)
  {
    v19 = v18;
  }

  if (v7 < 0.0)
  {
    v13 = -v13;
  }

  v20 = (v13 + v6 / 2);
  if (v14 < 0.0)
  {
    v19 = -v19;
  }

  v21 = v19 + SDWORD1(v6) / 2;
  if (v21 < 0)
  {
    v22 = -1;
  }

  else
  {
    v22 = v21;
  }

  if (v21 >= SDWORD1(v6))
  {
    v23 = 0xFFFFFFFFLL;
  }

  else
  {
    v23 = v22;
  }

  if (v20 >= v6 || v20 <= -1)
  {
    v20 = 0xFFFFFFFFLL;
  }

  return v20 | (v23 << 32);
}

void sub_26233D868(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 2016686640)
  {
    v4 = 505;
  }

  else
  {
    v4 = 500;
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  v6 = MEMORY[0x277CD7058];
  Width = IOSurfaceGetWidth(IOSurface);
  Height = IOSurfaceGetHeight(IOSurface);
  v14 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(v6, v9, v4, Width, Height, 0);
  objc_msgSend_setUsage_(v14, v10, 3);
  v12 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(*(a1 + 8), v11, v14, IOSurface, 0);
  v13 = *(a1 + 24);
  *(a1 + 24) = v12;
}

void sub_26233D958(uint64_t a1)
{
  sub_26229CECC(a1);

  JUMPOUT(0x266727420);
}

BOOL sub_26233D994(uint64_t a1, uint64_t a2, float32x2_t a3)
{
  if (((a2 - a1) >> 3) < 1)
  {
    v7 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = ((a2 - a1) >> 3) & 0x7FFFFFFF;
    v7 = 0.0;
    do
    {
      v8 = vsub_f32(*(a1 + 8 * v5), a3);
      v9 = v5 + 1;
      if (v6 - 1 == v5)
      {
        v10 = 0;
      }

      else
      {
        v10 = (v5 + 1);
      }

      v11 = vsub_f32(*(a1 + 8 * v10), a3);
      v7 = v7 + atan2f((-v8.f32[1] * v11.f32[0]) + (v8.f32[0] * v11.f32[1]), vmuls_lane_f32(v8.f32[1], v11, 1) + (v8.f32[0] * v11.f32[0]));
      v5 = v9;
    }

    while (v6 != v9);
  }

  return fabsf(v7) > 0.1;
}

void sub_26233DA58(void *a1, float32x2_t *a2, uint64_t a3)
{
  if ((a3 - a2) > 0x10)
  {
    v5 = &a2[(a3 - a2) >> 4];
    v6 = v5[-1];
    v19[0] = *a2;
    v19[1] = v6;
    v7 = *(a3 - 8);
    v18[0] = *v5;
    v18[1] = v7;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    __p = 0;
    v13 = 0;
    v14 = 0;
    sub_26233DBCC(&v15, v19, a2, &v5[-1], 3.0);
    sub_26233DBCC(&__p, v18, v5, a3 - 8, 3.0);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v8 = v15;
    v9 = v16;
    while (v8 != v9)
    {
      sub_2621CBA84(a1, v8);
      v8 += 2;
    }

    v10 = __p;
    v11 = v13;
    if (__p != v13)
    {
      do
      {
        sub_2621CBA84(a1, v10);
        v10 += 2;
      }

      while (v10 != v11);
      v11 = v13;
    }

    sub_2621CBA84(a1, v11 - 1);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_26233DB80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_26233DBCC(uint64_t a1, float32x2_t *a2, float32x2_t *a3, unint64_t a4, float a5)
{
  if ((((a4 - a3) >> 3) + 1) >= 2)
  {
    v7 = 0.0;
    v8 = a3;
    if (a4 > a3)
    {
      v9 = vsub_f32(a2[1], *a2);
      v10 = vaddv_f32(vmul_f32(v9, v9));
      v11 = 0.000001;
      if (v10 >= 0.000001)
      {
        v11 = v10;
      }

      v7 = 0.0;
      v12 = a3;
      v8 = a3;
      v13 = a3;
      do
      {
        v14 = *v13++;
        v15 = vsub_f32(vmla_n_f32(*a2, v9, vaddv_f32(vmul_f32(vsub_f32(v14, *a2), v9)) / v11), v14);
        v16 = sqrtf(vaddv_f32(vmul_f32(v15, v15)));
        if (v16 > v7)
        {
          v7 = v16;
          v8 = v12;
        }

        v12 = v13;
      }

      while (v13 < a4);
    }

    if (v7 >= a5)
    {
      v20 = *v8;
      v21 = a2[1];
      v31[0] = *a2;
      v31[1] = v20;
      v30[0] = v20;
      v30[1] = v21;
      sub_26233DBCC(a1, v31, a5);
      sub_26233DBCC(a1, v30, a5);
    }

    else
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
      if (v18 >= v17)
      {
        v22 = (v18 - *a1) >> 4;
        v23 = v22 + 1;
        if ((v22 + 1) >> 60)
        {
          sub_2621CBEB0();
        }

        v24 = v17 - *a1;
        if (v24 >> 3 > v23)
        {
          v23 = v24 >> 3;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF0)
        {
          v25 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          sub_2621CBF10(v25);
        }

        v26 = (16 * v22);
        *v26 = *a2->f32;
        v19 = 16 * v22 + 16;
        v27 = *(a1 + 8) - *a1;
        v28 = v26 - v27;
        memcpy(v26 - v27, *a1, v27);
        v29 = *a1;
        *a1 = v28;
        *(a1 + 8) = v19;
        *(a1 + 16) = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        *v18 = *a2->f32;
        v19 = (v18 + 1);
      }

      *(a1 + 8) = v19;
    }
  }
}

void sub_26233DD98(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*a2 == *(a2 + 8))
  {
    *a1 = &unk_2874EEC38;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 257;
  }

  else
  {
    v8 = 0;
    memset(&v7[1], 0, 32);
    v7[0] = vdupq_n_s64(a3);
    v5 = sub_26225F3EC(a1, v7);
    sub_26225F4E8(v5, &v8);
    LOBYTE(v7[0]) = 1;
    if (*a2 != *(a2 + 8))
    {
      v6 = vcvt_s32_f32(**a2);
      sub_2621CBEC8(1uLL);
    }

    sub_2621DA470(a1, 0, 0);
  }
}

void sub_26233DF58(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  *v1 = &unk_2874EEC38;
  v4 = v1[16];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26233DFA8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *a1;
  if (*a1 == v2)
  {
    return 0;
  }

  v4 = 0x80000000800000;
  do
  {
    v5 = *v3++;
    v4 = vbsl_s8(vcgt_f32(v5, v4), v5, v4);
  }

  while (v3 != v2);
  v6 = vrndp_f32(vadd_f32(v4, 0x3F0000003F000000));
  if (v6.f32[0] < v6.f32[1])
  {
    v6.f32[0] = v6.f32[1];
  }

  sub_26233DD98(v15, a1, v6.f32[0]);
  sub_26222D2A8(&v10, v15);
  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v7 = sub_26233BACC(v9);
  v10 = &unk_2874EEC38;
  if (v14)
  {
    sub_2621D1B78(v14);
  }

  v15[0] = &unk_2874EEC38;
  if (v16)
  {
    sub_2621D1B78(v16);
  }

  return v7;
}

void sub_26233E0C8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_26233DD98(&v18, a2, a4);
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  sub_26222D2A8(&v49, &v18);
  v46 = v50;
  v47 = v51;
  v48 = v52;
  *&v18 = &unk_2874EEC38;
  if (v26)
  {
    sub_2621D1B78(v26);
  }

  sub_26233DD98(&v18, a3, a4);
  v40 = 0u;
  v38 = 0u;
  v39 = 0u;
  sub_26222D2A8(&v41, &v18);
  v38 = v42;
  v39 = v43;
  v40 = v44;
  *&v18 = &unk_2874EEC38;
  if (v26)
  {
    sub_2621D1B78(v26);
  }

  sub_26233B674(v10, &v46, &v38);
  v20 = 0u;
  v21 = v10[0];
  v22 = v10[1];
  v23 = v10[2];
  v24 = v10[3];
  v25 = v10[4];
  v18 = 0u;
  v19 = 0u;
  v26 = v10[5];
  sub_26222D2A8(&v27, &v11);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  sub_26222D2A8(&v32, &v16);
  v35 = 0u;
  v36 = 0u;
  v37 = 2;
  v18 = v21;
  v19 = v22;
  v34 = 0u;
  v20 = v23;
  v7 = sub_26233B93C(&v18);
  v32 = &unk_2874EEC38;
  if (v33)
  {
    sub_2621D1B78(v33);
  }

  v27 = &unk_2874EEC38;
  if (v28)
  {
    sub_2621D1B78(v28);
  }

  v16 = &unk_2874EEC38;
  if (v17)
  {
    sub_2621D1B78(v17);
  }

  v11 = &unk_2874EEC38;
  if (v12)
  {
    sub_2621D1B78(v12);
  }

  v8 = sub_26233BACC(&v46);
  v9 = sub_26233BACC(&v38);
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  v41 = &unk_2874EEC38;
  if (v45)
  {
    sub_2621D1B78(v45);
  }

  v49 = &unk_2874EEC38;
  if (v53)
  {
    sub_2621D1B78(v53);
  }
}

void sub_26233E3BC(_Unwind_Exception *a1)
{
  STACK[0x420] = &unk_2874EEC38;
  if (STACK[0x4A0])
  {
    sub_2621D1B78(STACK[0x4A0]);
  }

  STACK[0x4F0] = &unk_2874EEC38;
  if (STACK[0x570])
  {
    sub_2621D1B78(STACK[0x570]);
  }

  _Unwind_Resume(a1);
}

void sub_26233E420(unint64_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t **a4, double a5)
{
  v7 = a2;
  v9 = 0x80000000800000;
  v10 = vneg_f32(0x80000000800000);
  if (a2 != a3)
  {
    v11 = a2;
    do
    {
      v12 = *v11++;
      v10 = vbsl_s8(vcgt_f32(v10, v12), v12, v10);
      v9 = vbsl_s8(vcgt_f32(v12, v9), v12, v9);
    }

    while (v11 != a3);
  }

  v13 = *a4;
  v14 = a4[1];
  if (*a4 != v14)
  {
    v15 = *a4;
    do
    {
      v16 = *v15++;
      v10 = vbsl_s8(vcgt_f32(v10, v16), v16, v10);
      v9 = vbsl_s8(vcgt_f32(v16, v9), v16, v9);
    }

    while (v15 != v14);
  }

  v17 = vsub_f32(v9, v10);
  v18 = vcvtpd_u64_f64((v17.f32[0] / *&a5) + 0.5);
  v19 = vcvtpd_u64_f64((v17.f32[1] / *&a5) + 0.5);
  if (v18 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  memset(v27, 0, sizeof(v27));
  if (a2 != a3)
  {
    v24 = a5;
    v21 = vdup_lane_s32(*&a5, 0);
    do
    {
      __p[0] = vrev64_s32(vrndm_f32(vdiv_f32(vsub_f32(*v7, v10), v21)));
      sub_2621CBA84(v27, __p);
      ++v7;
    }

    while (v7 != a3);
    v13 = *a4;
    v14 = a4[1];
    a5 = v24;
  }

  memset(__p, 0, sizeof(__p));
  if (v13 != v14)
  {
    v22 = vdup_lane_s32(*&a5, 0);
    do
    {
      v25 = vrev64_s32(vrndm_f32(vdiv_f32(vsub_f32(*v13, v10), v22)));
      sub_2621CBA84(__p, &v25);
      ++v13;
    }

    while (v13 != v14);
  }

  sub_26233E0C8(a1, v27, __p, v20);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v23 = v27[0];
  if (v27[0])
  {

    operator delete(v23);
  }
}

void sub_26233E5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_26233E620(float32x2_t *a1, float32x2_t *a2)
{
  v2 = 0x80000000800000;
  v3 = vneg_f32(0x80000000800000);
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      v5 = *v4++;
      v3 = vbsl_s8(vcgt_f32(v3, v5), v5, v3);
      v2 = vbsl_s8(vcgt_f32(v5, v2), v5, v2);
    }

    while (v4 != a2);
  }

  v6 = vsub_f32(v2, v3);
  v27 = (v6.f32[1] / 0.03) + 10;
  v28 = (v6.f32[0] / 0.03) + 10;
  if (a1 != a2)
  {
    __asm { FMOV            V10.2S, #5.0 }

    v12 = vadd_f32(vdiv_f32(vsub_f32(*a1, v3), vdup_n_s32(0x3CF5C28Fu)), _D10);
    sub_2621CBEC8(1uLL);
  }

  sub_2622D4838(&v13, &v28, &v27);
  sub_26225F17C(v26, 0, &v13);
  v25 = 1;
  sub_2621DA470(v26, 0, 0);
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  sub_26222D2A8(&v16, v26);
  v23 = 0;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  sub_26233EBDC(v24, &v13);
}

void sub_26233EA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a29)
  {
    sub_2621D1B78(a29);
  }

  STACK[0x290] = &unk_2874EF0B8;
  if (STACK[0x310])
  {
    sub_2621D1B78(STACK[0x310]);
  }

  STACK[0x330] = &unk_2874EEC38;
  if (STACK[0x3B0])
  {
    sub_2621D1B78(STACK[0x3B0]);
  }

  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_26233EBDC(uint64_t a1, __int128 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  sub_262223DB8();
}

void sub_26233FAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::locale a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47)
{
  std::locale::~locale(&a41);
  sub_2621C57C8(&a47);
  if (a26)
  {
    sub_2621D1B78(a26);
  }

  _Unwind_Resume(a1);
}

void sub_26233FBA8(uint64_t a1, _OWORD *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262224B84();
}

void sub_2623408D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  v29 = *(v27 + 128);
  if (v29)
  {
    sub_2621D1B78(v29);
  }

  _Unwind_Resume(a1);
}

void sub_262340938(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  sub_262341090(v32, a2, a3);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_262341B78(*a3, &v29);
  v6 = 0;
  v7 = a2 + 8;
  v8 = v29;
  v9 = v30 - v29;
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v30 - v29;
  }

  v11 = v10 - 1;
  v12 = 1;
  v13 = 1;
  do
  {
    v14 = v12;
    if (v30 != v29)
    {
      if (*v29 == v6)
      {
LABEL_7:
        v13 *= *(v7 + 8 * v6);
      }

      else
      {
        v15 = 0;
        while (v11 != v15)
        {
          v16 = v29[++v15];
          if (v16 == v6)
          {
            if (v15 < v9)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }
    }

    v12 = 0;
    v6 = 1;
  }

  while ((v14 & 1) != 0);
  if (v36 == 1)
  {
    v17 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v18 = sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v18, " ", 1);
    v19 = MEMORY[0x277D82670];
    v20 = MEMORY[0x266727260](MEMORY[0x277D82670], 726);
    sub_2621D552C(v20, " ", 1);
    sub_2621D552C(v20, "operator/=", 10);
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D5EE8("err", "scalar assign should create a storage first");
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v22 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
  }

  v23 = v13;
  v24 = v33;
  v25 = v37;
  if (v35)
  {
    if (v33)
    {
      do
      {
        *v25 = *v25 / v23;
        ++v25;
        --v24;
      }

      while (v24);
    }
  }

  else if (v33)
  {
    v26 = 0;
    v27 = v32[7];
    v28 = v32[1];
    do
    {
      v25[v27 * v26] = v25[v27 * v26] / v23;
      if (v26 + 1 == v28)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }

      --v24;
    }

    while (v24);
  }

  sub_262229F7C(a1, v32);
  if (v8)
  {
    operator delete(v8);
  }

  v32[0] = &unk_2874EF6A8;
  if (v34)
  {
    sub_2621D1B78(v34);
  }
}

void sub_262340C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  std::locale::~locale((v30 - 72));
  if (v29)
  {
    operator delete(v29);
  }

  if (a29)
  {
    sub_2621D1B78(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_262340CB8(uint64_t a1, int *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 1125);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "at", 2);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = *a2;
  v24[0] = v13;
  v22 = 0;
  if (*(a1 + 8) <= v13)
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 1133);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "at", 2);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_2621DA198("err", "shape", &v22, "=", v24, "should smaller then", (a1 + 8));
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  v20 = *MEMORY[0x277D85DE8];
  return *(a1 + 144) + 4 * *(a1 + 56) * v13;
}

void sub_262341090(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v186[7] = *MEMORY[0x277D85DE8];
  v182 = 0;
  v183 = 0;
  v184 = 0;
  sub_262341B78(*a3, &v182);
  v5 = 0;
  v6 = a2 + 8;
  v7 = v182;
  v8 = v183;
  v9 = v183 - v182;
  v163 = v9;
  if (v9 <= 1)
  {
    v9 = 1;
  }

  memset(v181, 0, sizeof(v181));
  v10 = v9 - 1;
  v11 = 1;
  do
  {
    v12 = v11;
    if (v8 != v7)
    {
      if (*v7 == v5)
      {
LABEL_6:
        *&__b[0] = 1;
        sub_2621C9004(v181, __b);
        goto LABEL_12;
      }

      v13 = 0;
      while (v10 != v13)
      {
        v14 = v7[++v13];
        if (v14 == v5)
        {
          if (v13 < v163)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    sub_2621C9004(v181, (v6 + 8 * v5));
LABEL_12:
    v11 = 0;
    v5 = 1;
  }

  while ((v12 & 1) != 0);
  sub_2621D6CA4(__b, v181);
  v178 = 0u;
  v179 = 0u;
  v177[0] = *(&__b[0] + 1);
  v177[1] = 1;
  sub_262224008(v164, __b);
  v15 = *(v8 - 1);
  v162 = v15;
  v159 = a1;
  if (v15 == 1)
  {
    if (v163 != 1)
    {
      v16 = *(v8 - 2);
      if (v7[v163 - 1] - v16 == 1)
      {
        v17 = &v7[v163 - 3];
        v18 = v163 - 2;
        do
        {
          v15 = v16;
          if (!v18)
          {
            break;
          }

          v16 = *v17;
          v19 = v17[1];
          --v17;
          --v18;
        }

        while (v19 - v16 == 1);
        goto LABEL_19;
      }
    }

    v174 = 0;
    v175 = 0;
    v176 = 0;
    v171 = 0;
    v172 = 0;
    v15 = 1;
    v173 = 0;
  }

  else
  {
LABEL_19:
    v174 = 0;
    v175 = 0;
    v176 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    if (!v15)
    {
      v20 = 1;
      v21 = 1;
      v161 = 1;
LABEL_34:
      v28 = 8 * v20;
      v29 = 1;
      do
      {
        v29 *= *(v6 + v28);
        v28 += 8;
      }

      while (v28 != 16);
      goto LABEL_38;
    }
  }

  v22 = 0;
  v21 = 1;
  while (2)
  {
    v23 = v15;
    v24 = (v6 + 8 * v22);
    v25 = *v24;
    sub_2621C9004(&v174, v24);
    if (v8 != v7)
    {
      if (*v7 == v22)
      {
LABEL_25:
        v186[0] = 0;
        sub_2621C9004(&v171, v186);
        goto LABEL_31;
      }

      v26 = 0;
      while (v10 != v26)
      {
        v27 = v7[++v26];
        if (v27 == v22)
        {
          if (v26 < v163)
          {
            goto LABEL_25;
          }

          break;
        }
      }
    }

    sub_2621C9004(&v171, &v177[v22]);
LABEL_31:
    v21 *= v25;
    ++v22;
    v15 = v23;
    if (v22 != v23)
    {
      continue;
    }

    break;
  }

  v161 = 0;
  if (v23 + 1 <= 1)
  {
    v20 = 0;
    v15 = -1;
    goto LABEL_34;
  }

  v29 = 1;
LABEL_38:
  v30 = *(v6 + 8 * v15);
  if (v162 == 1)
  {
    v31 = *(v6 + 8 * v15);
  }

  else
  {
    v31 = 1;
  }

  v158 = v31;
  v32 = v166;
  if (v162 == 1)
  {
    v33 = v21;
  }

  else
  {
    v33 = v30;
  }

  if (v162 == 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v21;
  }

  memset(v186, 0, 48);
  memset(v185, 0, sizeof(v185));
  v35 = v161;
  if (v161)
  {
    __p = 0;
    sub_2621C9004(&v174, &__p);
    v36 = v159;
    v37 = 0;
    __p = 0;
    v169 = 0;
    v170 = 0;
    goto LABEL_60;
  }

  v156 = v34;
  v157 = v15;
  v38 = 0;
  __p = 0;
  v169 = 0;
  v170 = 0;
  v167 = 0;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  while (2)
  {
    if (v8 == v7)
    {
LABEL_57:
      sub_2621C9004(&__p, &v167);
    }

    else if (*v7 != v38)
    {
      v39 = 0;
      while (v10 != v39)
      {
        v40 = v7[++v39];
        if (v40 == v38)
        {
          if (v39 < v163)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        }
      }

      goto LABEL_57;
    }

LABEL_58:
    v167 = ++v38;
    if (v38 != v15)
    {
      continue;
    }

    break;
  }

  v34 = v156;
  v15 = v157;
  v37 = v157 - 1;
  v36 = v159;
  v35 = v161;
LABEL_60:
  v41 = v29 * v158;
  v42 = *(a2 + 136);
  if (v162 == 1)
  {
    if (*(a2 + 136))
    {
      if (v33)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = *(a2 + 144);
        v47 = v174;
        v48 = (v46 + 4);
        if (v41 <= 1)
        {
          v49 = 1;
        }

        else
        {
          v49 = v29 * v158;
        }

        v50 = v171;
        v51 = 4 * v49;
        v52 = 1;
        v53 = v32;
        while (1)
        {
          v54 = *(v46 + 4 * v44);
          if (v41 < 2)
          {
            break;
          }

          v55 = v41 - 1;
          v56 = v48;
          do
          {
            v57 = *v56++;
            v54 = v54 + v57;
            --v55;
          }

          while (v55);
          v44 += v41;
          if (!v52)
          {
            goto LABEL_73;
          }

LABEL_74:
          *v53 = v54;
          v58 = v37;
          do
          {
            v59 = v186[v58] + 1;
            v186[v58] = v59;
            if (v59 != v47[v58])
            {
              break;
            }

            v186[v58] = 0;
            v60 = v58-- <= 0;
          }

          while (!v60);
          if (v35)
          {
            v52 = 0;
            v61 = 0;
          }

          else
          {
            v61 = 0;
            v62 = v186;
            v63 = v50;
            v64 = v15;
            do
            {
              v66 = *v62++;
              v65 = v66;
              v67 = *v63++;
              v61 += v67 * v65;
              --v64;
            }

            while (v64);
            v52 = v61 > v45;
            if (v61 > v45)
            {
              v45 = v61;
            }
          }

          v53 = &v32[v61];
          ++v43;
          v48 = (v48 + v51);
          if (v43 == v33)
          {
            goto LABEL_176;
          }
        }

        ++v44;
        if (v52)
        {
          goto LABEL_74;
        }

LABEL_73:
        v54 = v54 + *v53;
        goto LABEL_74;
      }
    }

    else if (v33)
    {
      v94 = 0;
      v95 = 0;
      v96 = v174;
      v97 = v171;
      v98 = *(a2 + 56);
      v99 = *(a2 + 64);
      v100 = 1;
      v101 = v32;
      v102 = *(a2 + 144);
      do
      {
        v103 = *(v102 + 4 * v99 * v185[1] + 4 * v98 * v185[0]);
        v104 = (a2 + 16);
        for (i = 1; i != -1; --i)
        {
          v106 = v185[i] + 1;
          v185[i] = v106;
          v107 = *v104--;
          if (v106 != v107)
          {
            break;
          }

          v185[i] = 0;
        }

        if (v41 >= 2)
        {
          for (j = 1; j != v41; ++j)
          {
            v109 = 0;
            v103 = v103 + *(v102 + 4 * v99 * v185[1] + 4 * v98 * v185[0]);
            do
            {
              v110 = v185[v109 + 1] + 1;
              v185[v109 + 1] = v110;
              if (v110 != *(a2 + 16 + v109 * 8))
              {
                break;
              }

              v185[v109-- + 1] = 0;
            }

            while (v109 != -2);
          }
        }

        if (!v100)
        {
          v103 = v103 + *v101;
        }

        *v101 = v103;
        v111 = v37;
        do
        {
          v112 = v186[v111] + 1;
          v186[v111] = v112;
          if (v112 != v96[v111])
          {
            break;
          }

          v186[v111] = 0;
          v60 = v111-- <= 0;
        }

        while (!v60);
        if (v35)
        {
          v100 = 0;
          v113 = 0;
        }

        else
        {
          v113 = 0;
          v114 = v186;
          v115 = v97;
          v116 = v15;
          do
          {
            v118 = *v114++;
            v117 = v118;
            v119 = *v115++;
            v113 += v119 * v117;
            --v116;
          }

          while (v116);
          v100 = v113 > v95;
          if (v113 > v95)
          {
            v95 = v113;
          }
        }

        v101 = &v32[v113];
        ++v94;
      }

      while (v94 != v33);
    }
  }

  else if (*(a2 + 136))
  {
    if (v34)
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = v174;
      v72 = 1;
      v73 = v171;
      v74 = v32;
      do
      {
        if (v72)
        {
          if (v41)
          {
            v75 = *(a2 + 144);
            v76 = v74;
            v77 = v29 * v158;
            do
            {
              *v76++ = *(v75 + 4 * v69++);
              --v77;
            }

            while (v77);
          }
        }

        else if (v41)
        {
          v78 = *(a2 + 144);
          v79 = v74;
          v80 = v29 * v158;
          do
          {
            *v79 = *(v78 + 4 * v69) + *v79;
            ++v79;
            ++v69;
            --v80;
          }

          while (v80);
        }

        if (v33 >= 2)
        {
          for (k = 1; k != v33; ++k)
          {
            if (v41)
            {
              v82 = *(a2 + 144);
              v83 = v74;
              v84 = v29 * v158;
              do
              {
                *v83 = *(v82 + 4 * v69) + *v83;
                ++v83;
                ++v69;
                --v84;
              }

              while (v84);
            }
          }
        }

        v85 = v37;
        do
        {
          v86 = v186[v85] + 1;
          v186[v85] = v86;
          if (v86 != v71[v85])
          {
            break;
          }

          v186[v85] = 0;
          v60 = v85-- <= 0;
        }

        while (!v60);
        if (v35)
        {
          v72 = 0;
          v87 = 0;
        }

        else
        {
          v87 = 0;
          v88 = v186;
          v89 = v73;
          v90 = v15;
          do
          {
            v92 = *v88++;
            v91 = v92;
            v93 = *v89++;
            v87 += v93 * v91;
            --v90;
          }

          while (v90);
          v72 = v87 > v70;
          if (v87 > v70)
          {
            v70 = v87;
          }
        }

        v74 = &v32[v87];
        ++v68;
      }

      while (v68 != v34);
    }
  }

  else if (v34)
  {
    v120 = 0;
    v121 = 0;
    v122 = v174;
    v123 = a2 + 16;
    v124 = v171;
    v125 = 1;
    v126 = v32;
    do
    {
      if (v125)
      {
        if (v41)
        {
          v127 = 0;
          v128 = *(a2 + 144);
          v130 = *(a2 + 56);
          v129 = *(a2 + 64);
          do
          {
            v131 = 0;
            v126[v127] = *(v128 + 4 * v129 * v185[1] + 4 * v130 * v185[0]);
            do
            {
              v132 = v185[v131 + 1] + 1;
              v185[v131 + 1] = v132;
              if (v132 != *(v123 + v131 * 8))
              {
                break;
              }

              v185[v131-- + 1] = 0;
            }

            while (v131 != -2);
            ++v127;
          }

          while (v127 != v41);
        }
      }

      else if (v41)
      {
        v133 = 0;
        v134 = *(a2 + 144);
        v136 = *(a2 + 56);
        v135 = *(a2 + 64);
        do
        {
          v137 = 0;
          v126[v133] = *(v134 + 4 * v135 * v185[1] + 4 * v136 * v185[0]) + v126[v133];
          do
          {
            v138 = v185[v137 + 1] + 1;
            v185[v137 + 1] = v138;
            if (v138 != *(v123 + v137 * 8))
            {
              break;
            }

            v185[v137-- + 1] = 0;
          }

          while (v137 != -2);
          ++v133;
        }

        while (v133 != v41);
      }

      v139 = v37;
      if (v33 >= 2)
      {
        for (m = 1; m != v33; ++m)
        {
          if (v41)
          {
            v141 = 0;
            v142 = *(a2 + 144);
            v144 = *(a2 + 56);
            v143 = *(a2 + 64);
            do
            {
              v145 = 0;
              v126[v141] = *(v142 + 4 * v143 * v185[1] + 4 * v144 * v185[0]) + v126[v141];
              do
              {
                v146 = v185[v145 + 1] + 1;
                v185[v145 + 1] = v146;
                if (v146 != *(v123 + v145 * 8))
                {
                  break;
                }

                v185[v145-- + 1] = 0;
              }

              while (v145 != -2);
              ++v141;
            }

            while (v141 != v41);
          }
        }

        v139 = v37;
      }

      do
      {
        v147 = v186[v139] + 1;
        v186[v139] = v147;
        if (v147 != v122[v139])
        {
          break;
        }

        v186[v139] = 0;
        v60 = v139-- <= 0;
      }

      while (!v60);
      if (v35)
      {
        v125 = 0;
        v148 = 0;
      }

      else
      {
        v148 = 0;
        v149 = v186;
        v150 = v124;
        v151 = v15;
        do
        {
          v153 = *v149++;
          v152 = v153;
          v154 = *v150++;
          v148 += v154 * v152;
          --v151;
        }

        while (v151);
        v125 = v148 > v121;
        if (v148 > v121)
        {
          v121 = v148;
        }
      }

      v126 = &v32[v148];
      ++v120;
    }

    while (v120 != v34);
  }

LABEL_176:
  if (__p)
  {
    operator delete(__p);
  }

  if (v171)
  {
    operator delete(v171);
  }

  if (v174)
  {
    operator delete(v174);
  }

  if (v181[0])
  {
    operator delete(v181[0]);
  }

  if (v7)
  {
    operator delete(v7);
  }

  sub_262208CB8(v36, v164, *a3);
  v164[0] = &unk_2874EF0B8;
  if (v165)
  {
    sub_2621D1B78(v165);
  }

  v155 = *MEMORY[0x277D85DE8];
}

void sub_262341AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, void *a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a34)
  {
    sub_2621D1B78(a34);
  }

  v47 = *(v45 - 256);
  if (v47)
  {
    operator delete(v47);
  }

  if (v44)
  {
    operator delete(v44);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262341B78(unsigned int a1, uint64_t *a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    v3 = (a1 + 2);
  }

  else
  {
    v3 = a1;
  }

  v30.__locale_ = v3;
  sub_2621C9004(a2, &v30);
  v4 = *a2;
  v5 = a2[1];
  v6 = MEMORY[0x277D82670];
  if (v5 != *a2)
  {
    v7 = 0;
    v8 = MEMORY[0x277D82680];
    do
    {
      if (*(v4 + 8 * v7) >= 2uLL)
      {
        v9 = sub_2621D552C(v6, "runtime_err in ", 15);
        v10 = sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        v11 = sub_2621D552C(v10, " ", 1);
        v12 = MEMORY[0x266727260](v11, 28);
        v13 = sub_2621D552C(v12, " ", 1);
        v14 = sub_2621D552C(v13, "format_reduce_axes", 18);
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v15 = std::locale::use_facet(&v30, v8);
        (v15->__vftable[2].~facet_0)(v15, 10);
        std::locale::~locale(&v30);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "reduce axis larger than dim-1");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v16 = std::locale::use_facet(&v30, v8);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(&v30);
        std::ostream::put();
        std::ostream::flush();
        v4 = *a2;
        v5 = a2[1];
      }

      ++v7;
    }

    while (v7 < (v5 - v4) >> 3);
  }

  result = std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  v19 = *a2;
  v18 = a2[1];
  if (v18 - *a2 != 8)
  {
    v20 = 0;
    v21 = MEMORY[0x277D82680];
    do
    {
      if (*(v19 + 8 * v20) == *(v19 + 8 * v20 + 8))
      {
        v22 = sub_2621D552C(v6, "runtime_err in ", 15);
        v23 = sub_2621D552C(v22, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../common/reduce_helper.hpp", 118);
        v24 = sub_2621D552C(v23, " ", 1);
        v25 = MEMORY[0x266727260](v24, 33);
        v26 = sub_2621D552C(v25, " ", 1);
        v27 = sub_2621D552C(v26, "format_reduce_axes", 18);
        std::ios_base::getloc((v27 + *(*v27 - 24)));
        v28 = std::locale::use_facet(&v30, v21);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(&v30);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6B98("err", "duplicate axis in reduce axis");
        std::ios_base::getloc((v6 + *(*v6 - 24)));
        v29 = std::locale::use_facet(&v30, v21);
        (v29->__vftable[2].~facet_0)(v29, 10);
        std::locale::~locale(&v30);
        std::ostream::put();
        result = std::ostream::flush();
        v19 = *a2;
        v18 = a2[1];
      }

      ++v20;
    }

    while (v20 < ((v18 - v19) >> 3) - 1);
  }

  return result;
}

void sub_262341F64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      sub_2621CBEC8(a4);
    }

    sub_2621CBEB0();
  }
}

void sub_262341FE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262341FFC(void *a1, float32x2_t **a2, float32x2_t **a3)
{
  v51 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x80000000800000;
  v7 = 0x80000000800000;
  if (*a2 != v5)
  {
    do
    {
      v8 = *v4++;
      v7 = vbsl_s8(vcgt_f32(v8, v7), v8, v7);
    }

    while (v4 != v5);
    v7 = vadd_f32(v7, 0x3F0000003F000000);
  }

  v9 = vrndp_f32(v7);
  if (v9.f32[0] < v9.f32[1])
  {
    v9.f32[0] = v9.f32[1];
  }

  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v12 = 0x80000000800000;
    do
    {
      v13 = *v10++;
      v12 = vbsl_s8(vcgt_f32(v13, v12), v13, v12);
    }

    while (v10 != v11);
    v6 = vadd_f32(v12, 0x3F0000003F000000);
  }

  v14 = vrndp_f32(v6);
  if (v14.f32[0] < v14.f32[1])
  {
    v14.f32[0] = v14.f32[1];
  }

  if (v9.f32[0] <= v14.f32[0])
  {
    v15 = v14.f32[0];
  }

  else
  {
    v15 = v9.f32[0];
  }

  sub_26233DD98(v49, a2, v15);
  sub_26233DD98(v48, a3, v15);
  sub_26222D2A8(&v26, v49);
  sub_26222D2A8(v28, v48);
  v16 = 0;
  v17 = 1;
  do
  {
    v18 = *(v27 + v16);
    v19 = v28[v16 + 1];
    if ((v17 & 1) == 0)
    {
      break;
    }

    v17 = 0;
    v16 = 1;
  }

  while (v18 == v19);
  if (v18 != v19)
  {
    v20 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v21 = sub_2621D552C(v20, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
    sub_2621D552C(v21, " ", 1);
    v22 = MEMORY[0x277D82670];
    v23 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
    sub_2621D552C(v23, " ", 1);
    sub_2621D552C(v23, "TensorBinaryExp", 15);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v24 = std::locale::use_facet(v50, MEMORY[0x277D82680]);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(v50);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6B98("err", "Binary Exp shape should equal");
    std::ios_base::getloc((v22 + *(*v22 - 24)));
    v25 = std::locale::use_facet(v50, MEMORY[0x277D82680]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(v50);
    std::ostream::put();
    std::ostream::flush();
  }

  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = v27[0];
  v33 = v27[1];
  v34 = v27[2];
  sub_26222D2A8(v35, &v26);
  sub_26222D2A8(v36, v28);
  v29 = v32;
  v30 = v33;
  v31 = v34;
  v47 = 0;
  v42 = 0u;
  v43 = 0u;
  v37 = v32;
  v38 = v33;
  v39 = v34;
  v36[20] = &unk_2874EEC90;
  v40 = *(&v32 + 1);
  v41 = 1;
  v44 = v32 * *(&v32 + 1);
  v46 = 0;
  v45 = 0;
  sub_262223B08();
}

void sub_2623442BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&STACK[0x5C0]);
  sub_2621C57C8(&STACK[0x5F0]);
  if (STACK[0x3D8])
  {
    sub_2621D1B78(STACK[0x3D8]);
  }

  sub_2623445EC(&a65);
  sub_262344668(&a21);
  STACK[0x3F0] = &unk_2874EEC38;
  if (STACK[0x470])
  {
    sub_2621D1B78(STACK[0x470]);
  }

  STACK[0x488] = &unk_2874EEC38;
  if (STACK[0x508])
  {
    sub_2621D1B78(STACK[0x508]);
  }

  sub_262232140(&a21);
  _Unwind_Resume(a1);
}

void *sub_2623445EC(void *a1)
{
  a1[31] = &unk_2874EEC38;
  v2 = a1[47];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[12] = &unk_2874EEC38;
  v3 = a1[28];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

void *sub_262344668(void *a1)
{
  a1[25] = &unk_2874EEC38;
  v2 = a1[41];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[6] = &unk_2874EEC38;
  v3 = a1[22];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

void sub_2623446E4(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v147 = a2 - 4;
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = (a2 - v8) >> 5;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                sub_262345088(v8, v8 + 4, v147);
                return;
              case 4:
                sub_262345088(v8, v8 + 4, v8 + 8);
                v65 = *(a2 - 1);
                v66 = v8[11];
                if (v65 > v66)
                {
                  v67 = *(a2 - 4);
                  v8[11] = v65;
                  *(a2 - 1) = v66;
                  v69 = v8[7];
                  v68 = v8[8];
                  v8[8] = v67;
                  *(a2 - 4) = v68;
                  v70 = v8[9];
                  v8[9] = *(a2 - 3);
                  *(a2 - 3) = v70;
                  v72 = v8[10];
                  v71 = v8[11];
                  v8[10] = *(a2 - 2);
                  *(a2 - 2) = v72;
                  if (v71 > v69)
                  {
                    v73 = v8[8];
                    v74 = v8[9];
                    v75 = *(v8 + 2);
                    v8[4] = v73;
                    v8[5] = v74;
                    *(v8 + 4) = v75;
                    v76 = v8[6];
                    v77 = v8[10];
                    v8[6] = v77;
                    v8[7] = v71;
                    v8[10] = v76;
                    v8[11] = v69;
                    v78 = v8[3];
                    if (v71 > v78)
                    {
                      v79 = *v8;
                      *v8 = v73;
                      v8[1] = v74;
                      *(v8 + 2) = v79;
                      v80 = v8[2];
                      v8[2] = v77;
                      v8[3] = v71;
                      v8[6] = v80;
                      v8[7] = v78;
                    }
                  }
                }

                return;
              case 5:

                sub_2623451C8(v8, v8 + 4, v8 + 8, v8 + 12, v147);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              v60 = *(a2 - 1);
              v61 = v8[3];
              if (v60 > v61)
              {
                v62 = *v8;
                *v8 = *(a2 - 4);
                *(a2 - 4) = v62;
                v63 = v8[1];
                v8[1] = *(a2 - 3);
                *(a2 - 3) = v63;
                v64 = v8[2];
                v8[2] = *(a2 - 2);
                v8[3] = v60;
                *(a2 - 2) = v64;
                *(a2 - 1) = v61;
              }

              return;
            }
          }

          if (v9 <= 23)
          {
            v81 = v8 + 4;
            v83 = v8 == a2 || v81 == a2;
            if (a4)
            {
              if (!v83)
              {
                v84 = 0;
                v85 = v8;
                do
                {
                  v86 = v81;
                  v87 = v85[7];
                  if (v87 > v85[3])
                  {
                    v88 = 0;
                    v148 = *v81;
                    v89 = v85[6];
                    *v81 = 0;
                    v81[1] = 0;
                    v90 = v84;
                    v81[2] = 0;
                    while (1)
                    {
                      v91 = a1 + v90;
                      if (v88)
                      {
                        *(v91 + 5) = v88;
                        operator delete(v88);
                        *(v91 + 6) = 0;
                      }

                      *(v91 + 2) = *v91;
                      v92 = *(v91 + 2);
                      v93 = *(v91 + 3);
                      *(v91 + 1) = 0;
                      *(v91 + 2) = 0;
                      *v91 = 0;
                      *(v91 + 6) = v92;
                      *(v91 + 7) = v93;
                      if (!v90)
                      {
                        break;
                      }

                      v94 = (a1 + v90);
                      if (v87 <= *(a1 + v90 - 8))
                      {
                        goto LABEL_96;
                      }

                      v88 = *v91;
                      v90 -= 32;
                    }

                    v94 = a1;
LABEL_96:
                    v95 = *v94;
                    if (*v94)
                    {
                      v94[1] = v95;
                      operator delete(v95);
                    }

                    *v94 = v148;
                    v94[2] = v89;
                    v94[3] = v87;
                  }

                  v81 = v86 + 4;
                  v84 += 32;
                  v85 = v86;
                }

                while (v86 + 4 != a2);
              }
            }

            else if (!v83)
            {
              do
              {
                v137 = v81;
                v138 = a1[7];
                if (v138 > a1[3])
                {
                  v139 = *v137;
                  v140 = a1[6];
                  *v137 = 0;
                  v137[1] = 0;
                  v137[2] = 0;
                  while (1)
                  {
                    *(a1 + 2) = *a1;
                    v142 = a1[2];
                    v141 = a1[3];
                    a1[1] = 0;
                    a1[2] = 0;
                    *a1 = 0;
                    a1[6] = v142;
                    a1[7] = v141;
                    if (v138 <= *(a1 - 1))
                    {
                      break;
                    }

                    a1 -= 4;
                  }

                  *a1 = v139;
                  a1[2] = v140;
                  a1[3] = v138;
                }

                v81 = v137 + 4;
                a1 = v137;
              }

              while (v137 + 4 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v96 = v10 >> 1;
              v97 = v10 >> 1;
              do
              {
                v98 = v97;
                if (v96 >= v97)
                {
                  v99 = (2 * v97) | 1;
                  v100 = &a1[4 * v99];
                  if (2 * v98 + 2 < v9)
                  {
                    v101 = v100[3];
                    v102 = v100[7];
                    v100 += 4 * (v101 > v102);
                    if (v101 > v102)
                    {
                      v99 = 2 * v98 + 2;
                    }
                  }

                  v103 = &a1[4 * v98];
                  v104 = v103[3];
                  if (v100[3] <= v104)
                  {
                    v105 = 0;
                    v149 = *v103;
                    v106 = v103[2];
                    v103[1] = 0;
                    v103[2] = 0;
                    *v103 = 0;
                    while (1)
                    {
                      v107 = v100;
                      if (v105)
                      {
                        v103[1] = v105;
                        operator delete(v105);
                        *v103 = 0;
                        v103[1] = 0;
                        v103[2] = 0;
                      }

                      *v103 = *v107;
                      v108 = v107[3];
                      v103[2] = v107[2];
                      *v107 = 0;
                      v107[1] = 0;
                      v107[2] = 0;
                      v103[3] = v108;
                      if (v96 < v99)
                      {
                        break;
                      }

                      v100 = &a1[4 * ((2 * v99) | 1)];
                      if (2 * v99 + 2 >= v9)
                      {
                        v99 = (2 * v99) | 1;
                      }

                      else
                      {
                        v109 = v100[3];
                        v110 = v100[7];
                        v100 += 4 * (v109 > v110);
                        v99 = v109 <= v110 ? (2 * v99) | 1 : 2 * v99 + 2;
                      }

                      if (v100[3] > v104)
                      {
                        break;
                      }

                      v105 = *v107;
                      v103 = v107;
                    }

                    *v107 = v149;
                    v107[2] = v106;
                    v107[3] = v104;
                  }
                }

                v97 = v98 - 1;
              }

              while (v98);
              do
              {
                v111 = 0;
                v112 = *a1;
                v113 = a1[1];
                v114 = a1[2];
                v115 = a1[3];
                a1[1] = 0;
                a1[2] = 0;
                v116 = a1;
                *a1 = 0;
                do
                {
                  v117 = &v116[4 * v111];
                  v118 = v117 + 4;
                  v119 = (2 * v111) | 1;
                  v111 = 2 * v111 + 2;
                  if (v111 >= v9)
                  {
                    v111 = v119;
                  }

                  else
                  {
                    v120 = v117[7];
                    v121 = v117[11];
                    v122 = v117 + 8;
                    if (v120 <= v121)
                    {
                      v111 = v119;
                    }

                    else
                    {
                      v118 = v122;
                    }
                  }

                  *v116 = *v118;
                  v123 = v118[3];
                  v116[2] = v118[2];
                  *v118 = 0;
                  v118[1] = 0;
                  v118[2] = 0;
                  v116[3] = v123;
                  v116 = v118;
                }

                while (v111 <= ((v9 - 2) >> 1));
                v124 = a2 - 4;
                if (v118 == a2 - 4)
                {
                  v136 = *v118;
                  if (*v118)
                  {
                    v118[1] = v136;
                    operator delete(v136);
                  }

                  *v118 = v112;
                  v118[1] = v113;
                  v118[2] = v114;
                  v118[3] = v115;
                }

                else
                {
                  *v118 = *(a2 - 2);
                  v125 = *(a2 - 1);
                  v118[2] = *(a2 - 2);
                  v118[3] = v125;
                  *(a2 - 4) = v112;
                  *(a2 - 3) = v113;
                  *(a2 - 2) = v114;
                  *(a2 - 1) = v115;
                  v126 = (v118 - a1 + 32) >> 5;
                  v127 = v126 < 2;
                  v128 = v126 - 2;
                  if (!v127)
                  {
                    v129 = v128 >> 1;
                    v130 = &a1[4 * (v128 >> 1)];
                    v131 = v118[3];
                    if (v130[3] > v131)
                    {
                      v132 = 0;
                      v150 = *v118;
                      v133 = v118[2];
                      v118[1] = 0;
                      v118[2] = 0;
                      *v118 = 0;
                      while (1)
                      {
                        v134 = v130;
                        if (v132)
                        {
                          v118[1] = v132;
                          operator delete(v132);
                          *v118 = 0;
                          v118[1] = 0;
                          v118[2] = 0;
                        }

                        *v118 = *v134;
                        v135 = v134[3];
                        v118[2] = v134[2];
                        *v134 = 0;
                        v134[1] = 0;
                        v134[2] = 0;
                        v118[3] = v135;
                        if (!v129)
                        {
                          break;
                        }

                        v129 = (v129 - 1) >> 1;
                        v130 = &a1[4 * v129];
                        if (v130[3] <= v131)
                        {
                          break;
                        }

                        v132 = *v134;
                        v118 = v134;
                      }

                      *v134 = v150;
                      v134[2] = v133;
                      v134[3] = v131;
                    }
                  }
                }

                a2 = v124;
                v127 = v9-- <= 2;
              }

              while (!v127);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = &v8[4 * (v9 >> 1)];
          if (v9 < 0x81)
          {
            sub_262345088(&a1[4 * (v9 >> 1)], a1, v147);
          }

          else
          {
            sub_262345088(a1, &a1[4 * (v9 >> 1)], v147);
            sub_262345088(a1 + 4, v12 - 4, a2 - 8);
            sub_262345088(a1 + 8, &a1[4 * v11 + 4], a2 - 12);
            sub_262345088(v12 - 4, &a1[4 * (v9 >> 1)], &a1[4 * v11 + 4]);
            v13 = *a1;
            *a1 = *v12;
            *v12 = v13;
            v14 = a1[2];
            v15 = a1[3];
            v16 = v12[3];
            a1[2] = v12[2];
            a1[3] = v16;
            v12[2] = v14;
            v12[3] = v15;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v17 = a1[3];
          if (*(a1 - 1) > v17)
          {
            goto LABEL_17;
          }

          v40 = *a1;
          v41 = a1[2];
          a1[1] = 0;
          a1[2] = 0;
          *a1 = 0;
          if (v17 <= *(a2 - 1))
          {
            v44 = a1 + 4;
            do
            {
              v8 = v44;
              if (v44 >= a2)
              {
                break;
              }

              v45 = v44[3];
              v44 += 4;
            }

            while (v17 <= v45);
          }

          else
          {
            v42 = a1;
            do
            {
              v8 = v42 + 4;
              v43 = v42[7];
              v42 += 4;
            }

            while (v17 <= v43);
          }

          v46 = a2;
          if (v8 < a2)
          {
            v47 = a2;
            do
            {
              v46 = v47 - 4;
              v48 = *(v47 - 1);
              v47 -= 4;
            }

            while (v17 > v48);
          }

          while (v8 < v46)
          {
            v49 = *v8;
            *v8 = *v46;
            *v46 = v49;
            v50 = v8[1];
            v8[1] = v46[1];
            v46[1] = v50;
            v51 = v8[2];
            v52 = v8[3];
            v53 = v46[3];
            v8[2] = v46[2];
            v8[3] = v53;
            v46[2] = v51;
            v46[3] = v52;
            do
            {
              v54 = v8[7];
              v8 += 4;
            }

            while (v17 <= v54);
            do
            {
              v55 = *(v46 - 1);
              v46 -= 4;
            }

            while (v17 > v55);
          }

          v56 = (v8 - 4);
          if (v8 - 4 == a1)
          {
            v59 = *v56;
            if (*v56)
            {
              *(v8 - 3) = v59;
              v146 = v40;
              operator delete(v59);
              v40 = v146;
            }
          }

          else
          {
            v57 = *a1;
            if (*a1)
            {
              a1[1] = v57;
              v145 = v40;
              operator delete(v57);
              v40 = v145;
              *a1 = 0;
              a1[1] = 0;
              a1[2] = 0;
            }

            *a1 = *(v8 - 2);
            v58 = *(v8 - 1);
            a1[2] = *(v8 - 2);
            *v56 = 0;
            *(v8 - 3) = 0;
            *(v8 - 2) = 0;
            a1[3] = v58;
          }

          a4 = 0;
          *(v8 - 2) = v40;
          *(v8 - 2) = v41;
          *(v8 - 1) = v17;
        }

        v17 = a1[3];
LABEL_17:
        v18 = *a1;
        v19 = a1[2];
        a1[1] = 0;
        a1[2] = 0;
        v20 = a1;
        *a1 = 0;
        do
        {
          v21 = v20;
          v20 += 4;
        }

        while (v21[7] > v17);
        v22 = a2;
        if (v21 == a1)
        {
          v25 = a2;
          while (v20 < v25)
          {
            v23 = v25 - 4;
            v26 = *(v25 - 1);
            v25 -= 4;
            if (v26 > v17)
            {
              goto LABEL_27;
            }
          }

          v23 = v25;
        }

        else
        {
          do
          {
            v23 = v22 - 4;
            v24 = *(v22 - 1);
            v22 -= 4;
          }

          while (v24 <= v17);
        }

LABEL_27:
        v8 = v20;
        if (v20 < v23)
        {
          v27 = v23;
          do
          {
            v28 = *v8;
            *v8 = *v27;
            *v27 = v28;
            v29 = v8[1];
            v8[1] = v27[1];
            v27[1] = v29;
            v30 = v8[2];
            v31 = v8[3];
            v32 = v27[3];
            v8[2] = v27[2];
            v8[3] = v32;
            v27[2] = v30;
            v27[3] = v31;
            do
            {
              v33 = v8[7];
              v8 += 4;
            }

            while (v33 > v17);
            do
            {
              v34 = *(v27 - 1);
              v27 -= 4;
            }

            while (v34 <= v17);
          }

          while (v8 < v27);
        }

        v35 = (v8 - 4);
        if (v8 - 4 == a1)
        {
          v38 = *v35;
          if (*v35)
          {
            *(v8 - 3) = v38;
            v144 = v18;
            operator delete(v38);
            v18 = v144;
          }
        }

        else
        {
          v36 = *a1;
          if (*a1)
          {
            a1[1] = v36;
            v143 = v18;
            operator delete(v36);
            v18 = v143;
            *a1 = 0;
            a1[1] = 0;
            a1[2] = 0;
          }

          *a1 = *(v8 - 2);
          v37 = *(v8 - 1);
          a1[2] = *(v8 - 2);
          *v35 = 0;
          *(v8 - 3) = 0;
          *(v8 - 2) = 0;
          a1[3] = v37;
        }

        *(v8 - 2) = v18;
        *(v8 - 2) = v19;
        *(v8 - 1) = v17;
        if (v20 >= v23)
        {
          break;
        }

LABEL_42:
        sub_2623446E4(a1, v8 - 4, a3, a4 & 1);
        a4 = 0;
      }

      v39 = sub_2623453E0(a1, v8 - 4);
      if (sub_2623453E0(v8, a2))
      {
        break;
      }

      if (!v39)
      {
        goto LABEL_42;
      }
    }

    a2 = v8 - 4;
    if (!v39)
    {
      continue;
    }

    break;
  }
}

uint64_t *sub_262345088(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[3];
  v4 = result[3];
  v5 = a3[3];
  if (v3 <= v4)
  {
    if (v5 > v3)
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      v10 = a2[1];
      a2[1] = a3[1];
      a3[1] = v10;
      v11 = a3[2];
      a2[3] = v5;
      a3[3] = v3;
      v13 = a2[2];
      v12 = a2[3];
      a2[2] = v11;
      a3[2] = v13;
      v14 = result[3];
      if (v12 > v14)
      {
        v15 = *result;
        *result = *a2;
        *a2 = v15;
        v16 = result[1];
        result[1] = a2[1];
        a2[1] = v16;
        v17 = result[2];
        result[2] = a2[2];
        result[3] = v12;
        a2[2] = v17;
        a2[3] = v14;
      }
    }
  }

  else
  {
    v6 = *result;
    if (v5 <= v3)
    {
      *result = *a2;
      *a2 = v6;
      v18 = result[1];
      result[1] = a2[1];
      a2[1] = v18;
      v19 = result[2];
      result[2] = a2[2];
      result[3] = v3;
      a2[2] = v19;
      a2[3] = v4;
      v20 = a3[3];
      if (v20 <= v4)
      {
        return result;
      }

      v21 = *a2;
      *a2 = *a3;
      *a3 = v21;
      v22 = a2[1];
      a2[1] = a3[1];
      a3[1] = v22;
      v23 = a2[2];
      a2[2] = a3[2];
      a2[3] = v20;
      a3[2] = v23;
    }

    else
    {
      *result = *a3;
      *a3 = v6;
      v7 = result[1];
      result[1] = a3[1];
      a3[1] = v7;
      v8 = result[2];
      result[2] = a3[2];
      result[3] = v5;
      a3[2] = v8;
    }

    a3[3] = v4;
  }

  return result;
}

uint64_t *sub_2623451C8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_262345088(a1, a2, a3);
  v11 = a4[3];
  v12 = a3[3];
  if (v11 > v12)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = a3[1];
    a3[1] = a4[1];
    a4[1] = v14;
    v15 = a4[2];
    a3[3] = v11;
    a4[3] = v12;
    v17 = a3[2];
    v16 = a3[3];
    a3[2] = v15;
    a4[2] = v17;
    v18 = a2[3];
    if (v16 > v18)
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      v20 = a2[1];
      a2[1] = a3[1];
      a3[1] = v20;
      v21 = a3[2];
      a2[3] = v16;
      a3[3] = v18;
      v23 = a2[2];
      v22 = a2[3];
      a2[2] = v21;
      a3[2] = v23;
      v24 = a1[3];
      if (v22 > v24)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = a1[1];
        a1[1] = a2[1];
        a2[1] = v26;
        v27 = a1[2];
        a1[2] = a2[2];
        a1[3] = v22;
        a2[2] = v27;
        a2[3] = v24;
      }
    }
  }

  v28 = a5[3];
  v29 = a4[3];
  if (v28 > v29)
  {
    v30 = *a4;
    *a4 = *a5;
    *a5 = v30;
    v31 = a4[1];
    a4[1] = a5[1];
    a5[1] = v31;
    v32 = a5[2];
    a4[3] = v28;
    a5[3] = v29;
    v34 = a4[2];
    v33 = a4[3];
    a4[2] = v32;
    a5[2] = v34;
    v35 = a3[3];
    if (v33 > v35)
    {
      v36 = *a3;
      *a3 = *a4;
      *a4 = v36;
      v37 = a3[1];
      a3[1] = a4[1];
      a4[1] = v37;
      v38 = a4[2];
      a3[3] = v33;
      a4[3] = v35;
      v40 = a3[2];
      v39 = a3[3];
      a3[2] = v38;
      a4[2] = v40;
      v41 = a2[3];
      if (v39 > v41)
      {
        v42 = *a2;
        *a2 = *a3;
        *a3 = v42;
        v43 = a2[1];
        a2[1] = a3[1];
        a3[1] = v43;
        v44 = a3[2];
        a2[3] = v39;
        a3[3] = v41;
        v46 = a2[2];
        v45 = a2[3];
        a2[2] = v44;
        a3[2] = v46;
        v47 = a1[3];
        if (v45 > v47)
        {
          v48 = *a1;
          *a1 = *a2;
          *a2 = v48;
          v49 = a1[1];
          a1[1] = a2[1];
          a2[1] = v49;
          v50 = a1[2];
          a1[2] = a2[2];
          a1[3] = v45;
          a2[2] = v50;
          a2[3] = v47;
        }
      }
    }
  }

  return result;
}

BOOL sub_2623453E0(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_262345088(a1, a1 + 4, a2 - 4);
        break;
      case 4:
        sub_262345088(a1, a1 + 4, a1 + 8);
        v23 = *(a2 - 1);
        v24 = a1[11];
        if (v23 > v24)
        {
          v25 = *(a2 - 4);
          a1[11] = v23;
          *(a2 - 1) = v24;
          v27 = a1[7];
          v26 = a1[8];
          a1[8] = v25;
          *(a2 - 4) = v26;
          v28 = a1[9];
          a1[9] = *(a2 - 3);
          *(a2 - 3) = v28;
          v30 = a1[10];
          v29 = a1[11];
          a1[10] = *(a2 - 2);
          *(a2 - 2) = v30;
          if (v29 > v27)
          {
            v31 = a1[8];
            v32 = a1[9];
            v33 = *(a1 + 2);
            a1[4] = v31;
            a1[5] = v32;
            *(a1 + 4) = v33;
            v34 = a1[6];
            v35 = a1[10];
            a1[6] = v35;
            a1[7] = v29;
            a1[10] = v34;
            a1[11] = v27;
            v36 = a1[3];
            if (v29 > v36)
            {
              v37 = *a1;
              *a1 = v31;
              a1[1] = v32;
              *(a1 + 2) = v37;
              v38 = a1[2];
              a1[2] = v35;
              a1[3] = v29;
              a1[6] = v38;
              a1[7] = v36;
            }
          }
        }

        return 1;
      case 5:
        sub_2623451C8(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = a1[3];
    if (v5 > v6)
    {
      v7 = *a1;
      *a1 = *(a2 - 4);
      *(a2 - 4) = v7;
      v8 = a1[1];
      a1[1] = *(a2 - 3);
      *(a2 - 3) = v8;
      v9 = a1[2];
      a1[2] = *(a2 - 2);
      a1[3] = v5;
      *(a2 - 2) = v9;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_11:
  v10 = a1 + 8;
  sub_262345088(a1, a1 + 4, a1 + 8);
  v11 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = v11[3];
    if (v14 > v10[3])
    {
      v15 = 0;
      v40 = *v11;
      v16 = v11[2];
      v11[1] = 0;
      v11[2] = 0;
      v17 = v12;
      *v11 = 0;
      while (1)
      {
        v18 = a1 + v17;
        if (v15)
        {
          *(v18 + 13) = v15;
          operator delete(v15);
          *(v18 + 14) = 0;
        }

        *(v18 + 6) = *(v18 + 4);
        *(v18 + 8) = 0;
        *(v18 + 9) = 0;
        v19 = *(v18 + 10);
        v20 = *(v18 + 11);
        *(v18 + 10) = 0;
        *(v18 + 14) = v19;
        *(v18 + 15) = v20;
        if (v17 == -64)
        {
          v21 = a1;
          goto LABEL_22;
        }

        if (v14 <= *(a1 + v17 + 56))
        {
          break;
        }

        v15 = *(v18 + 8);
        v17 -= 32;
      }

      v21 = a1 + v17 + 64;
LABEL_22:
      v22 = *v21;
      if (*v21)
      {
        *(v21 + 8) = v22;
        operator delete(v22);
      }

      *v21 = v40;
      *(v21 + 16) = v16;
      *(v21 + 24) = v14;
      if (++v13 == 8)
      {
        return v11 + 4 == a2;
      }
    }

    v10 = v11;
    v12 += 32;
    v11 += 4;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_262345680(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2623456E4(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v52 = a3;
  v8 = objc_msgSend_parentIdentifier(v5, v6, v7);
  v53 = sub_262345A08(a1, v5);
  v9 = v5;
  objc_msgSend_quad(v9, v10, v11);
  v61 = v12;
  objc_msgSend_quad(v9, v13, v14);
  v59 = v15;

  v16 = v9;
  objc_msgSend_quad(v16, v17, v18);
  v57 = v19;
  objc_msgSend_quad(v16, v20, v21);
  v56 = v22;

  v23 = v16;
  objc_msgSend_quad(v23, v24, v25);
  v55 = v26;
  objc_msgSend_quad(v23, v27, v28);
  v54 = v29;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v30 = v52;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v63, v68, 16);
  if (v34)
  {
    v35 = vsubq_f32(v61, v59);
    v36 = vmulq_f32(v35, v35);
    v36.f32[0] = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32)) * 0.5;
    v62 = *v36.f32;
    v37 = vsubq_f32(v57, v56);
    v38 = vmulq_f32(v37, v37);
    v38.f32[0] = sqrtf(v38.f32[2] + vaddv_f32(*v38.f32)) * 0.5;
    v60 = *v38.f32;
    v39 = vsubq_f32(v55, v54);
    v40 = vmulq_f32(v39, v39);
    *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
    *v40.f32 = vrsqrte_f32(v41);
    *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
    v58 = vmulq_n_f32(v39, vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
    v42 = *v64;
    while (2)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v64 != v42)
        {
          objc_enumerationMutation(v30);
        }

        v44 = *(*(&v63 + 1) + 8 * i);
        v45 = objc_msgSend_identifier(v44, v32, v33);
        isEqual = objc_msgSend_isEqual_(v45, v46, v8);

        if (isEqual)
        {
          v48 = sub_262345B78(v44);
          v49 = vmlaq_n_f32(v53, v58, v60.f32[0]);
          v50 = vmlsq_lane_f32(v53, v58, v60, 0);
          src[0] = vmlsq_lane_f32(v49, v48, v62, 0);
          src[1] = vmlaq_n_f32(v49, v48, v62.f32[0]);
          src[2] = vmlaq_n_f32(v50, v48, v62.f32[0]);
          src[3] = vmlsq_lane_f32(v50, v48, v62, 0);
          if (v23)
          {
            objc_copyStruct(v23 + 272, src, 64, 1, 0);
          }

          goto LABEL_12;
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v63, v68, 16);
      if (v34)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v51 = *MEMORY[0x277D85DE8];
}

__n128 sub_262345A08(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (a1)
  {
    objc_msgSend_quad(v3, v4, v5);
    v53 = v7;
    objc_msgSend_quad(v6, v8, v9);
    v52 = v10;
    objc_msgSend_quad(v6, v11, v12);
    v51 = v13;
    objc_msgSend_quad(v6, v14, v15);
    v50 = v16;
    objc_msgSend_quad(v6, v17, v18);
    v49 = v19;
    objc_msgSend_quad(v6, v20, v21);
    v48 = v22;
    objc_msgSend_quad(v6, v23, v24);
    v47 = v25;
    objc_msgSend_quad(v6, v26, v27);
    v46 = v28;
    objc_msgSend_quad(v6, v29, v30);
    v45 = v31;
    objc_msgSend_quad(v6, v32, v33);
    v44 = v34;
    objc_msgSend_quad(v6, v35, v36);
    v43 = v37;
    objc_msgSend_quad(v6, v38, v39);
    *&v40 = 0.25 * vaddq_f32(vaddq_f32(vaddq_f32(v53, v52), v51), v50).f32[0];
    DWORD1(v40) = vmuls_lane_f32(0.25, *&vaddq_f32(vaddq_f32(vaddq_f32(v49, v48), v47), v46), 1);
    DWORD2(v40) = vmuls_lane_f32(0.25, vaddq_f32(vaddq_f32(vaddq_f32(v45, v44), v43), v41), 2);
    v54 = v40;
  }

  else
  {
    v54 = 0u;
  }

  return v54;
}

__n128 sub_262345B78(void *a1)
{
  v1 = a1;
  objc_msgSend_quad(v1, v2, v3);
  v12 = v4;
  objc_msgSend_quad(v1, v5, v6);
  v8 = vsubq_f32(v12, v7);
  v9 = vmulq_f32(v8, v8);
  *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v10);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
  v13 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);

  return v13;
}

uint64_t sub_262345C14(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v14 = sub_262345A08(*(a1 + 48), a2).n128_u64[0];
  v6 = sub_262345A08(*(a1 + 48), v5).n128_u64[0];
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = vmul_f32(v7, vsub_f32(v14, *&v8));
  v10 = vmul_f32(v7, vsub_f32(v6, *&v8));
  v11 = vadd_f32(vzip1_s32(v9, v10), vzip2_s32(v9, v10));
  if (v11.f32[0] < v11.f32[1])
  {
    v12 = -1;
  }

  else
  {
    v12 = v11.f32[0] > v11.f32[1];
  }

  return v12;
}

float *sub_262345CC0(void *a1, __n128 a2, __n128 a3, float a4)
{
  v5 = a1;
  v8 = objc_msgSend_copy(v5, v6, v7);
  v9 = v8;
  v10 = a2;
  v11 = a3;
  v11.n128_u32[2] = a2.n128_u32[2];
  src[0] = a2;
  src[1] = v11;
  v10.n128_u32[2] = a3.n128_u32[2];
  src[2] = a3;
  src[3] = v10;
  if (v8)
  {
    objc_copyStruct((v8 + 272), src, 64, 1, 0);
    v9[27] = a4;
  }

  return v9;
}

void sub_2623468BC(_Unwind_Exception *a1)
{
  if (v6)
  {
    free(v6);
    if (!v5)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v5)
  {
    goto LABEL_3;
  }

  free(v5);
  if (!v2)
  {
LABEL_5:
    sub_26230AD68(v4);
    sub_262283C10(v1 + 520);
    sub_262283C10(v3);
    _Unwind_Resume(a1);
  }

LABEL_4:
  free(v2);
  goto LABEL_5;
}

void sub_262346BD0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = objc_msgSend_type(*(a1 + 864), a2, a3);
  v8 = objc_msgSend_type(*(a1 + 856), v6, v7);
  if (*(a1 + 928) != 1)
  {
LABEL_37:
    v14 = 3;
    goto LABEL_38;
  }

  v11 = *(a1 + 1000);
  if (v11 == 3)
  {
    return;
  }

  if (v11 == -1)
  {
    v11 = v3 - 1;
  }

  v12 = 1;
  if (!v8)
  {
    v12 = 2;
  }

  if ((v5 == 0) != (v8 == 0))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      v15 = v5 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (*(a1 + 832) != *(a1 + 840) && (v8 | v5) == 0)
    {
      v14 = 3;
    }

    if (v16 == 1 && !*(a1 + 904))
    {
      v18 = objc_msgSend_date(MEMORY[0x277CBEAA8], v9, v10);
      v19 = *(a1 + 904);
      *(a1 + 904) = v18;
    }

    v20 = objc_msgSend_date(MEMORY[0x277CBEAA8], v9, v10);
    objc_msgSend_timeIntervalSinceDate_(v20, v21, *(a1 + 896));
    v23 = v22;

    v26 = *(a1 + 904);
    if (v26)
    {
      v27 = objc_msgSend_date(MEMORY[0x277CBEAA8], v24, v25);
      objc_msgSend_timeIntervalSinceDate_(v27, v28, *(a1 + 904));
      v30 = v29;

      LODWORD(v26) = v30 > 5.0;
    }

    if (v23 > 10.0 || (v16 & v26) != 0)
    {
      v31 = [RSTextCoachingSignal alloc];
      if (v31)
      {
        v31 = sub_2622E743C(v31, 0, 1.0);
      }

      v32 = *(a1 + 864);
      *(a1 + 864) = v31;

      v33 = [RSTextCoachingSignal alloc];
      if (v33)
      {
        v33 = sub_2622E743C(v33, 0, 1.0);
      }

      v34 = *(a1 + 856);
      *(a1 + 856) = v33;

      goto LABEL_37;
    }
  }

LABEL_38:
  *(a1 + 1000) = v14;
}

void sub_262346D9C(uint64_t a1)
{
  sub_262346DD4(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_262346DD4(uint64_t a1)
{
  *a1 = &unk_2874EED40;
  v6 = (a1 + 136);
  sub_2621E1D40(&v6);
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  *(a1 + 32) = v3;
  v4 = *(a1 + 48);
  *(a1 + 56) = v4;
  if (v4)
  {
    operator delete(v4);
    v3 = *(a1 + 24);
  }

  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_262346E6C(uint64_t a1, void *a2, float32x2_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a4[1] == *a4 || a5[1] == *a5)
  {
    return 0;
  }

  v12 = a3 + 4;
  v13 = sub_2621DCEC8(a3, a3 + 4);
  v15 = 7;
  if (!v13)
  {
    v15 = 6;
  }

  v16 = a3->i32[v15];
  v17 = 15;
  if (!v14)
  {
    v17 = 14;
  }

  v18 = a3->i32[v17];
  v19 = a2 + 18;
  v20 = a2[18];
  v192 = v13;
  v193 = v14;
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = a2 + 18;
  v22 = a2 + 18;
  v23 = a2[18];
  do
  {
    if (*(v23 + 32) >= v16)
    {
      v22 = v23;
    }

    v23 = *(v23 + 8 * (*(v23 + 32) < v16));
  }

  while (v23);
  if (v22 != v19 && *(v22 + 8) <= v16 && v22[7] > 1uLL)
  {
    return 0;
  }

  do
  {
    if (*(v20 + 32) >= v18)
    {
      v21 = v20;
    }

    v20 = *(v20 + 8 * (*(v20 + 32) < v18));
  }

  while (v20);
  if (v21 != v19 && *(v21 + 8) <= v18)
  {
    v24 = v21[7] > 1uLL;
  }

  else
  {
LABEL_20:
    v24 = 0;
  }

  v25 = 0;
  if (v24 || v16 == v18)
  {
    return v25;
  }

  v189 = a4;
  v190 = a6;
  v29 = a3[sub_2621DCEC8(a3, v12)];
  v31 = v12[v30];
  v226 = v29;
  v227[0] = v31;
  v32 = a2[39];
  v33 = a2 + 40;
  if (v32 == a2 + 40)
  {
LABEL_34:
    v38 = 1;
  }

  else
  {
    v34 = *(a1 + 80);
    while (1)
    {
      v35 = *(v32 + 8);
      if (v35 != v34 && v35 != *(a1 + 84))
      {
        v26.i64[0] = v32[5];
        v27.i64[0] = v32[6];
        *v28.f32 = v29;
        if (sub_2621DD0C0(v26, v27, v28, v31))
        {
          break;
        }
      }

      v36 = v32[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v32[2];
          v43 = *v37 == v32;
          v32 = v37;
        }

        while (!v43);
      }

      v32 = v37;
      if (v37 == v33)
      {
        goto LABEL_34;
      }
    }

    v38 = 0;
  }

  v39 = a2[20];
  if (v39 != (a2 + 21))
  {
    v40 = vsub_f32(v31, v29);
    v41 = vaddv_f32(vmul_f32(v40, v40));
    if (v41 < 0.000001)
    {
      v41 = 0.000001;
    }

    do
    {
      v42 = v39[4].i32[0];
      v43 = v42 == v16 || v42 == v18;
      if (!v43)
      {
        v44 = v39[5];
        v45 = vmla_n_f32(v29, v40, vaddv_f32(vmul_f32(vsub_f32(v44, v29), v40)) / v41);
        if (vaddv_f32(vmul_f32(vsub_f32(v45, v29), vsub_f32(v45, v31))) <= 0.00001)
        {
          v46 = vsub_f32(v44, v45);
          v47 = vmul_f32(v46, v46);
          if (sqrtf(vadd_f32(v47, vdup_lane_s32(v47, 1)).f32[0]) < 0.3)
          {
            return 0;
          }
        }
      }

      v48 = v39[1];
      if (v48)
      {
        do
        {
          v49 = v48;
          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        do
        {
          v49 = v39[2];
          v43 = *v49 == v39;
          v39 = v49;
        }

        while (!v43);
      }

      v39 = v49;
    }

    while (v49 != a2 + 21);
  }

  if (!v38)
  {
    return 0;
  }

  v50 = *a3;
  v51 = a3[1];
  v224 = *a3;
  v225 = v51;
  v52 = a3[5];
  v187 = a3;
  v188 = a5;
  v222 = a3[4];
  v223 = v52;
  v53 = *(a5[1] - 16);
  LODWORD(v208) = 0;
  if (a2[11])
  {
    LODWORD(v54) = 0;
    do
    {
      v212[0] = &v208;
      if (!*(sub_2621C580C((a2 + 9), v54) + 15))
      {
        v212[0] = &v208;
        v203 = sub_2621C580C((a2 + 9), v208)[5];
        v212[0] = &v208;
        v197 = HIDWORD(sub_2621C580C((a2 + 9), v208)[5]);
        v212[0] = &v208;
        v198 = sub_2621C580C((a2 + 9), v208)[6];
        v212[0] = &v208;
        v55 = HIDWORD(sub_2621C580C((a2 + 9), v208)[6]);
        sub_2621CBF10(1uLL);
      }

      v54 = v208 + 1;
      LODWORD(v208) = v208 + 1;
    }

    while (a2[11] > v54);
    v56 = (a1 + 80);
    v57 = 0;
  }

  else
  {
    v57 = 0;
    v56 = (a1 + 80);
  }

  v59 = vmul_f32(vadd_f32(v50, v51), 0x3F0000003F000000);
  v60 = v226;
  v61 = v227[0];
  v62 = sub_2621DCE38(v226, v227[0], v53, v59);
  if (!v62)
  {
    v63 = -1;
  }

  else
  {
    v63 = 0;
  }

  v64 = vdup_n_s32(v63);
  v65 = vbsl_s8(v64, v61, v60);
  if (!v62)
  {
    v66 = &v224;
  }

  else
  {
    v66 = &v222;
  }

  v67 = *v66;
  v68 = &v223;
  if (!v62)
  {
    v68 = &v225;
  }

  v69 = *v68;
  v70 = vsub_f32(*v68, v67);
  v71 = vmul_f32(v70, v70);
  v72 = vaddv_f32(v71);
  if (v72 < 0.000001)
  {
    v72 = 0.000001;
  }

  v73 = vbsl_s8(v64, v60, v61);
  v74 = vsub_f32(v73, v67);
  if (sqrtf(vaddv_f32(vmul_f32(v74, v74))) >= 0.000001)
  {
    v82 = vsub_f32(v73, v69);
    v83 = 0;
    if (sqrtf(vaddv_f32(vmul_f32(v82, v82))) >= 0.000001)
    {
      goto LABEL_89;
    }

    v76 = vsub_f32(v65, v73);
    v84 = vmul_f32(v76, v76);
    v84.i32[0] = vadd_f32(v84, vdup_lane_s32(v84, 1)).u32[0];
    v85 = vrsqrte_f32(v84.u32[0]);
    v86 = vmul_f32(v85, vrsqrts_f32(v84.u32[0], vmul_f32(v85, v85)));
    v80 = vmul_n_f32(v76, vmul_f32(v86, vrsqrts_f32(v84.u32[0], vmul_f32(v86, v86))).f32[0]);
    v81 = vsub_f32(v67, v69);
    v87 = vmul_f32(v81, v81);
    v75 = vadd_f32(v87, vdup_lane_s32(v87, 1)).u32[0];
  }

  else
  {
    v75 = vadd_f32(v71, vdup_lane_s32(v71, 1)).u32[0];
    v76 = vsub_f32(v65, v73);
    v77 = vmul_f32(v76, v76);
    v77.i32[0] = vadd_f32(v77, vdup_lane_s32(v77, 1)).u32[0];
    v78 = vrsqrte_f32(v77.u32[0]);
    v79 = vmul_f32(v78, vrsqrts_f32(v77.u32[0], vmul_f32(v78, v78)));
    v80 = vmul_n_f32(v76, vmul_f32(v79, vrsqrts_f32(v77.u32[0], vmul_f32(v79, v79))).f32[0]);
    v81 = v70;
  }

  v199 = v81;
  v204 = vsub_f32(v53, vmla_n_f32(v67, v70, vaddv_f32(vmul_f32(vsub_f32(v53, v67), v70)) / v72));
  v88 = vrsqrte_f32(v75);
  v89 = vmul_f32(v88, vrsqrts_f32(v75, vmul_f32(v88, v88)));
  v90 = (acosf(vaddv_f32(vmul_f32(v80, vmul_n_f32(v81, vmul_f32(v89, vrsqrts_f32(v75, vmul_f32(v89, v89))).f32[0])))) * 180.0) / 3.1416;
  v91 = __sincosf_stret(((180.0 - v90) / 180.0) * 3.1416);
  v92.f32[0] = -v91.__sinval;
  v92.i32[1] = LODWORD(v91.__cosval);
  v93 = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v91.__sinval), LODWORD(v91.__cosval)), v199.f32[0]), v92, v199, 1);
  if (vaddv_f32(vmul_f32(v93, v76)) >= 0.0)
  {
    goto LABEL_87;
  }

  v94 = vmul_f32(v93, v93);
  v200 = v92;
  v94.i32[0] = vadd_f32(v94, vdup_lane_s32(v94, 1)).u32[0];
  v95 = vrsqrte_f32(v94.u32[0]);
  v96 = vmul_f32(v95, vrsqrts_f32(v94.u32[0], vmul_f32(v95, v95)));
  v97 = vaddv_f32(vmul_f32(vmul_n_f32(v93, vmul_f32(v96, vrsqrts_f32(v94.u32[0], vmul_f32(v96, v96))).f32[0]), v80));
  v98 = 1.0;
  if (v97 <= 1.0)
  {
    v98 = v97;
  }

  v99 = v97 >= -1.0 ? v98 : -1.0;
  v100 = acosf(v99);
  v101 = __PAIR64__(LODWORD(v91.__sinval), LODWORD(v91.__cosval));
  v102 = v200;
  v103 = (v100 * 180.0) / 3.1416;
  if (v103 > 180.0 || v103 <= 175.0)
  {
LABEL_87:
    v105 = __sincosf_stret(((v90 + -180.0) / 180.0) * 3.1416);
    v102.f32[0] = -v105.__sinval;
    v102.i32[1] = LODWORD(v105.__cosval);
    v101 = __PAIR64__(LODWORD(v105.__sinval), LODWORD(v105.__cosval));
  }

  v83 = vmla_lane_f32(vmul_n_f32(v101, v204.f32[0]), v102, v204, 1);
LABEL_89:
  v106 = vsub_f32(v60, v61);
  v70.f32[0] = sqrtf(vaddv_f32(vmul_f32(v106, v106)));
  if (v70.f32[0] > *(a1 + 52))
  {
    return 0;
  }

  v107 = *v56;
  v108 = *v190;
  v109 = v190[1] - *v190;
  if (v109 <= v107)
  {
    return 0;
  }

  v110 = *(a1 + 84);
  if (v109 <= v110 || *(v108 + v107) == 3 && *(v108 + v110) == 3)
  {
    return 0;
  }

  if (v70.f32[0] < *(a1 + 56))
  {
    return 0;
  }

  v185 = v70;
  v111 = vsub_f32(v224, v225);
  v112 = vmul_f32(v111, v111);
  v113.i32[1] = v223.i32[1];
  v114 = vsub_f32(v222, v223);
  v115 = vmul_f32(v114, v114);
  v113.i32[0] = *(a1 + 72);
  v116 = vcgt_f32(vdup_lane_s32(v113, 0), vsqrt_f32(vadd_f32(vzip1_s32(v115, v112), vzip2_s32(v115, v112))));
  if ((v116.i32[1] | v116.i32[0]))
  {
    return 0;
  }

  v117 = sub_2621C92AC(&v224, &v222, 0);
  if (v117 >= (180.0 - v117))
  {
    v117 = 180.0 - v117;
  }

  if (v117 <= 60.0)
  {
    return 0;
  }

  v184 = v83;
  v219 = 0;
  v220 = 0;
  v221 = 0;
  memset(v218, 0, sizeof(v218));
  memset(v217, 0, sizeof(v217));
  v118 = *v188;
  if (v188[1] != *v188)
  {
    v119 = 0;
    v186 = vmul_f32(vadd_f32(v60, v61), 0x3F0000003F000000);
    v195 = v56;
    do
    {
      v120 = (v118 + 16 * v119);
      v121 = *v56;
      v122 = sub_262348104(0, 0, v60, v61, *v120);
      v123 = v122;
      v212[0] = v122;
      v124 = sub_2621C92AC(&v226, v120, 0);
      *&v208 = v124;
      v125 = *v120;
      v126 = *&v120[1];
      *v127.f32 = v60;
      *v128.f32 = v61;
      *v129.f32 = *v120;
      LODWORD(v120) = sub_2621DD0C0(v127, v128, v129, *&v126);
      v130 = sub_2621DC5F8(v60, v61, v125, v126);
      v201 = v119;
      v191 = v124;
      if (!v120)
      {
        goto LABEL_104;
      }

      if (v131)
      {
        v132 = 0;
        v133 = vrev64_s32(v130);
      }

      else
      {
LABEL_104:
        v132 = 1;
        v133 = v186;
      }

      v134 = vsub_f32(v133, v125);
      v135 = sqrtf(vaddv_f32(vmul_f32(v134, v134)));
      *&v214 = v135;
      sub_2621C8F2C(&v219, &v214);
      sub_2621C8F2C(v218, &v208);
      sub_2621DC7FC(v217, v212);
      if (((v132 | v123) & 1) == 0)
      {
        if (v135 > 5.0)
        {
          goto LABEL_172;
        }

        v136 = *(a1 + 68);
        if (v191 > v136 && v191 < (180.0 - v136))
        {
          goto LABEL_172;
        }
      }

      ++v119;
      v118 = *v188;
      v56 = v195;
    }

    while (v201 + 1 < ((v188[1] - *v188) >> 4));
  }

  v137 = v187 + 1;
  if (!v192)
  {
    v137 = v187;
  }

  v138 = v187 + 4;
  if (v193)
  {
    v138 = v187 + 5;
  }

  v139 = a2[39];
  if (v139 != v33)
  {
    v140 = *v137;
    v141 = *v138;
    v142 = *(a1 + 80);
    v143 = *(a1 + 84);
    v144 = v139;
    do
    {
      v145 = v144[4].i32[0];
      if (v145 == v142)
      {
        v146 = 0;
      }

      else
      {
        sub_2621DCBD8(v140, v144[5], v144[6], 0.1, 0.00001);
        v146 = v147;
      }

      if (v145 == v143)
      {
        v148 = 0;
      }

      else
      {
        sub_2621DCBD8(v141, v144[5], v144[6], 0.1, 0.00001);
      }

      if ((v146 | v148))
      {
        v25 = 0;
        goto LABEL_184;
      }

      v149 = v144[1];
      if (v149)
      {
        do
        {
          v150 = v149;
          v149 = *v149;
        }

        while (v149);
      }

      else
      {
        do
        {
          v150 = v144[2];
          v43 = *v150 == v144;
          v144 = v150;
        }

        while (!v43);
      }

      v144 = v150;
    }

    while (v150 != v33);
    v57 = 0;
    while (1)
    {
      v151 = v139[5];
      v152 = v139[6];
      if (sub_2621DD42C(v60, v61, v151, v152) < 0.09)
      {
        v153 = sub_2621DCA3C(v151, v152, v60, v61);
        v154 = sub_2621DCA3C(v60, v61, v151, v152);
        v155 = *(a1 + 60);
        if (v153 >= v155 || v154 >= v155)
        {
          break;
        }
      }

      v157 = v139[1];
      if (v157)
      {
        do
        {
          v158 = v157;
          v157 = *v157;
        }

        while (v157);
      }

      else
      {
        do
        {
          v158 = v139[2];
          v43 = *v158 == v139;
          v139 = v158;
        }

        while (!v43);
      }

      v139 = v158;
      if (v158 == v33)
      {
        goto LABEL_142;
      }
    }

LABEL_172:
    v25 = 0;
    goto LABEL_184;
  }

LABEL_142:
  v159 = (*v185.i32 / 0.06 + 1.0);
  v214 = 0;
  v215 = 0;
  v216 = 0;
  if (v159 >= 1)
  {
    v160 = 0;
    v161 = vdiv_f32(vsub_f32(v61, v60), vdup_lane_s32(v185, 0));
    do
    {
      v162 = v160 * 0.03 + v160 * 0.03;
      v212[0] = vmla_n_f32(v60, v161, v162);
      sub_2621CBA84(&v214, v212);
      ++v160;
    }

    while (v159 != v160);
  }

  sub_2621CBA84(&v214, v227);
  v163 = v214;
  v164 = v215 - v214;
  if (v215 == v214)
  {
    v181 = 0;
    v25 = 0;
    if (!v214)
    {
      goto LABEL_184;
    }
  }

  else
  {
    v165 = v164 >> 3;
    __p = (v164 >> 3);
    sub_26222AF58(&v208, &__p);
    sub_26234819C(v212, &v208);
    v167 = *v189;
    v166 = v189[1];
    v168 = 0xAAAAAAAAAAAAAAABLL * ((v166 - *v189) >> 3);
    v169 = (v168 - *(a1 + 76)) & ~((v168 - *(a1 + 76)) >> 31);
    if (v168 > v169)
    {
      v196 = v219;
      v170 = (v220 - v219) >> 2;
      v202 = v217[0];
      v194 = v218[0];
      if (v170 <= v169)
      {
        v170 = (v168 - *(a1 + 76)) & ~((v168 - *(a1 + 76)) >> 31);
      }

      v205 = v170;
      do
      {
        if (v169 == v205)
        {
          break;
        }

        if (((*&v202[(v169 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v169) & 1) == 0 && v196[v169] <= 5.0)
        {
          v171 = v194[v169];
          v172 = *(a1 + 68);
          if (v171 > v172 && v171 < (180.0 - v172))
          {
            continue;
          }
        }

        v174 = a1;
        v175 = v57;
        v176 = 0;
        LODWORD(v208) = 0;
        do
        {
          if (sub_262348208(*(*v189 + 24 * v169), *(*v189 + 24 * v169 + 8), v163[v176]))
          {
            *sub_262340CB8(v212, &v208) = 1065353216;
          }

          LODWORD(v208) = ++v176;
        }

        while (v165 > v176);
        v167 = *v189;
        v166 = v189[1];
        v57 = v175;
        a1 = v174;
        ++v169;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v166 - v167) >> 3) > v169);
    }

    sub_262348308(&__p, *(v188[1] - 16), *(v188[1] - 8));
    if (v165 <= 1)
    {
      v177 = 1;
    }

    else
    {
      v177 = v165;
    }

    v178 = __p;
    v179 = v207;
    v180 = v163;
    while (!sub_262348208(v178, v179, *v180))
    {
      ++v180;
      if (!--v177)
      {
        goto LABEL_177;
      }
    }

    sub_2623484FC(v212);
    if ((v182 / v212[1]) < *(a1 + 64))
    {
LABEL_177:
      v181 = 0;
      goto LABEL_179;
    }

    v183 = v187[6].i32[0];
    LODWORD(v208) = v187[2].i32[0];
    *(&v208 + 4) = __PAIR64__(v16, v183);
    HIDWORD(v208) = v18;
    v209 = v60;
    v210 = v61;
    v211 = v184;
    sub_262348578(a1, &v208);
    v181 = 1;
LABEL_179:
    if (__p)
    {
      v207 = __p;
      operator delete(__p);
    }

    v212[0] = &unk_2874EF6A8;
    if (v213)
    {
      sub_2621D1B78(v213);
    }
  }

  operator delete(v163);
  v25 = v181;
LABEL_184:
  if (v217[0])
  {
    operator delete(v217[0]);
  }

  if (v218[0])
  {
    operator delete(v218[0]);
  }

  if (v219)
  {
    operator delete(v219);
  }

  return v25;
}

void sub_262347EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a59)
  {
    sub_2621D1B78(a59);
  }

  if (a62)
  {
    operator delete(a62);
  }

  if (a65)
  {
    operator delete(a65);
  }

  v68 = *(v66 - 248);
  if (v68)
  {
    operator delete(v68);
  }

  v69 = *(v66 - 224);
  if (v69)
  {
    operator delete(v69);
  }

  if (v65)
  {
    operator delete(v65);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_262347FBC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3);
  v7 = v6 + 1;
  if (v6 + 1 > 0x666666666666666)
  {
    sub_2621CBEB0();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - v3) >> 3) > v7)
  {
    v7 = 0x999999999999999ALL * ((*(a1 + 16) - v3) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v3) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    if (v8 <= 0x666666666666666)
    {
      operator new();
    }

    sub_2621C6A34();
  }

  v9 = 8 * ((v4 - v3) >> 3);
  v10 = *(a2 + 8);
  *v9 = *a2;
  *(v9 + 8) = v10;
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = *(a2 + 32);
  v11 = v9 - (v4 - v3);
  if (v3 != v4)
  {
    v12 = 8 * ((v4 - v3) >> 3) - (v4 - v3);
    do
    {
      *v12 = *v3;
      *(v12 + 8) = v3[1];
      v13 = *(v3 + 1);
      *(v12 + 32) = v3[4];
      *(v12 + 16) = v13;
      v3 += 5;
      v12 += 40;
    }

    while (v3 != v4);
    v3 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = v9 + 40;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 40 * v6 + 40;
}

uint64_t sub_262348104(float32x2_t *a1, float32x2_t *a2, float32x2_t a3, float32x2_t a4, float32x2_t a5)
{
  if (a2 == a1)
  {
    return 0xFFFFFFFF00000000;
  }

  v6 = 0;
  v7 = vmul_f32(vadd_f32(a3, a4), 0x3F0000003F000000);
  if (((a2 - a1) >> 4) <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (a2 - a1) >> 4;
  }

  for (i = a1 + 1; !sub_2621DCE38(i[-1], *i, a5, v7); i += 2)
  {
    if (v8 == ++v6)
    {
      return 0xFFFFFFFF00000000;
    }
  }

  return (v6 << 32) | 1;
}

uint64_t sub_26234819C(uint64_t a1, _OWORD *a2)
{
  v5 = 0;
  v2 = sub_262224FE8(a1, a2);
  return sub_26226B214(v2, &v5, v3);
}

void sub_2623481D4(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2874EF6A8;
  v3 = v1[16];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262348208(float32x4_t *a1, float32x4_t *a2, double a3)
{
  v3 = 0;
  if (a2 != a1)
  {
    v4 = a2 - a1;
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2 - a1;
    }

    v6 = 1;
    for (i = a1; ; ++i)
    {
      v8 = *i;
      LODWORD(v9) = HIDWORD(i->i64[0]);
      v10 = v4 <= v6 ? 0 : v6;
      v11 = a1[v10];
      if (vabds_f32(v8.f32[0], *&a3) < 0.00001 && vabds_f32(v9, *(&a3 + 1)) < 0.00001)
      {
        break;
      }

      if (vabds_f32(v11.f32[0], *&a3) < 0.00001 && vabds_f32(v11.f32[1], *(&a3 + 1)) < 0.00001)
      {
        break;
      }

      if (v11.f32[1] >= v9)
      {
        LODWORD(v12) = HIDWORD(i->i64[0]);
      }

      else
      {
        LODWORD(v12) = HIDWORD(a1[v10].i64[0]);
      }

      if (*(&a3 + 1) > v12)
      {
        LODWORD(v13) = v9 >= v11.f32[1] ? HIDWORD(i->i64[0]) : HIDWORD(a1[v10].i64[0]);
        if (*(&a3 + 1) <= v13)
        {
          v14 = v8.f32[0] + (((*(&a3 + 1) - v9) * vsubq_f32(v11, v8).f32[0]) / ((v11.f32[1] - v9) + 0.00000011921));
          if (vabds_f32(v14, *&a3) < 0.00001)
          {
            break;
          }

          if (v14 > *&a3)
          {
            v3 ^= 1u;
          }
        }
      }

      ++v6;
      if (!--v5)
      {
        return v3 & 1;
      }
    }

    v3 = 1;
  }

  return v3 & 1;
}

double sub_262348308(void *a1, float32x2_t a2, float32x2_t a3)
{
  v3 = vsub_f32(a3, a2);
  v4 = vmul_f32(v3, v3);
  v5 = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
  v6 = sqrtf(vaddv_f32(v4));
  v7 = vrsqrte_f32(v5);
  v8 = vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7)));
  v9 = vmul_n_f32(v3, vmul_f32(v8, vrsqrts_f32(v5, vmul_f32(v8, v8))).f32[0]);
  v10 = vmla_lane_f32(vmul_n_f32(0x3ED8616D3F6803C9, v9.f32[0]), 0x3F6803C9BED8616DLL, v9, 1);
  v11 = vmul_f32(v10, v10);
  v11.i32[0] = vadd_f32(v11, vdup_lane_s32(v11, 1)).u32[0];
  v12 = vrsqrte_f32(v11.u32[0]);
  v13 = vmul_f32(v12, vrsqrts_f32(v11.u32[0], vmul_f32(v12, v12)));
  v11.i32[0] = vmul_f32(v13, vrsqrts_f32(v11.u32[0], vmul_f32(v13, v13))).u32[0];
  v14 = vmla_lane_f32(vmul_n_f32(0xBED8616D3F6803C9, v9.f32[0]), 0x3F6803C93ED8616DLL, v9, 1);
  v15 = vmul_f32(v14, v14);
  v16 = vmul_n_f32(v10, v11.f32[0]);
  v11.i32[0] = vadd_f32(v15, vdup_lane_s32(v15, 1)).u32[0];
  v17 = vrsqrte_f32(v11.u32[0]);
  v18 = vmul_f32(v17, vrsqrts_f32(v11.u32[0], vmul_f32(v17, v17)));
  v35 = vmla_n_f32(a2, vmul_n_f32(v14, vmul_f32(v18, vrsqrts_f32(v11.u32[0], vmul_f32(v18, v18))).f32[0]), v6);
  v36 = vmla_n_f32(a2, v9, v6);
  v37 = vmla_n_f32(a2, v16, v6);
  v19 = sub_26229CBDC(a1, 4uLL);
  v20 = *v19;
  LODWORD(v21) = a2.i32[0];
  HIDWORD(v21) = HIDWORD(**v19);
  *(*v19 + 2) = *(*v19 + 1);
  *v20 = v21;
  v22 = *v19;
  v23 = **v19;
  *(*v19 + 2) = DWORD2(v23);
  DWORD1(v23) = a2.i32[1];
  *v22 = v23;
  v24 = *v19;
  LODWORD(v21) = v35.i32[0];
  HIDWORD(v21) = HIDWORD(*(*v19 + 2));
  *(*v19 + 6) = *(*v19 + 3);
  *(v24 + 2) = v21;
  v25 = *v19;
  v26 = (*v19)[1];
  *(*v19 + 6) = DWORD2(v26);
  DWORD1(v26) = v35.i32[1];
  *(v25 + 2) = v26;
  v27 = *v19;
  LODWORD(v21) = v36.i32[0];
  HIDWORD(v21) = HIDWORD(*(*v19 + 4));
  *(*v19 + 10) = *(*v19 + 5);
  *(v27 + 4) = v21;
  v28 = *v19;
  v29 = (*v19)[2];
  *(*v19 + 10) = DWORD2(v29);
  DWORD1(v29) = v36.i32[1];
  *(v28 + 4) = v29;
  v30 = *v19;
  LODWORD(v21) = v37.i32[0];
  HIDWORD(v21) = HIDWORD(*(*v19 + 6));
  *(*v19 + 14) = *(*v19 + 7);
  *(v30 + 6) = v21;
  v31 = *v19;
  v32 = (*v19)[3];
  *(*v19 + 14) = DWORD2(v32);
  DWORD1(v32) = v37.i32[1];
  *(v31 + 6) = v32;
  return *&v32;
}

uint64_t sub_2623484FC(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 136) == 1)
  {
    v2 = *(result + 144);
    v3 = *v2;
    if (v1 >= 2)
    {
      v4 = v1 - 1;
      v5 = v2 + 1;
      do
      {
        v6 = *v5++;
        v3 = v3 + v6;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v7 = *(result + 144);
    v8 = *v7;
    if (v1 >= 2)
    {
      v9 = v1 - 1;
      v10 = 1;
      do
      {
        v8 = v8 + v7[*(result + 56) * v10];
        if (v10 + 1 == v1)
        {
          v10 = 0;
        }

        else
        {
          ++v10;
        }

        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_262348578(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_262347FBC(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
    result = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2623485D8(void *a1, float *a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  sub_262348C40(v61, (v2 - *a1) >> 4);
  v5 = a1[1] - *a1;
  if (v5)
  {
    v6 = v5 >> 4;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = v61[0] + 4;
    v8 = (*a1 + 4);
    do
    {
      *(v7 - 1) = *(v8 - 1);
      v9 = *v8;
      v8 += 4;
      *v7 = v9;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  sub_262348C40(__p, 2uLL);
  v11 = *a2;
  v12 = __p[0];
  *__p[0] = *a2;
  v13 = a2[1];
  v12->f32[1] = v13;
  v14 = *(a2 + 1);
  v12[1].i32[0] = v14;
  v15 = a2[3];
  v12[1].f32[1] = v15;
  v16 = v61[0];
  v18 = *a1;
  v17 = a1[1];
  v62 = 0;
  v63 = 0;
  v19 = 0;
  v21 = v17 - v18;
  v20 = v21 == 0;
  v22 = v21 >> 4;
  if (!v20)
  {
    v23 = v61[0];
    v24 = v22;
    do
    {
      v25 = *v23++;
      v19 = vadd_f32(v19, v25);
      --v24;
    }

    while (v24);
  }

  v26 = *v12;
  *v26.i32 = v22;
  v27 = vadd_f32(vdiv_f32(v19, vdup_lane_s32(v26, 0)), vmul_f32(vadd_f32(vadd_f32(*v12, 0), v12[1]), 0xBF000000BF000000));
  v28 = vceqz_f32(v27);
  if (v28.i8[0] & v28.i8[4])
  {
    v29 = 1.0;
  }

  else
  {
    v29 = v27.f32[0];
  }

  if (v22 <= 1)
  {
    v30 = 0;
    v31 = v27.f32[1];
  }

  else
  {
    v30 = 0;
    v31 = v27.f32[1];
    v32 = vmuls_lane_f32(*(v61[0] + 1), v27, 1) + (v29 * *v61[0]);
    v33 = (v61[0] + 12);
    for (i = 1; i != v22; ++i)
    {
      v35 = v27.f32[1] * *v33;
      if ((v35 + (v29 * *(v33 - 1))) > v32)
      {
        v30 = i;
        v32 = v35 + (v29 * *(v33 - 1));
      }

      v33 += 2;
    }
  }

  v37 = vsub_f32(*(v61[0] + 8 * v30), v12[(-(v31 * v15) - (v29 * *&v14)) > (-(v31 * v13) - (v29 * *&v11))]);
  if ((COERCE_FLOAT(vmul_f32(v27, v37).i32[1]) + (v37.f32[0] * v29)) > 0.0)
  {
    v38 = 0;
    v39 = vneg_f32(v37);
    v40 = &v63;
    v41 = 1;
LABEL_23:
    if (v38 <= 0x3E7)
    {
      v42 = 999;
    }

    else
    {
      v42 = v38;
    }

    v43 = v38;
    v44 = v37;
    do
    {
      if (v22 <= 1)
      {
        v45 = 0;
        v46 = v39.f32[1];
      }

      else
      {
        v45 = 0;
        v46 = v39.f32[1];
        v47 = vmuls_lane_f32(v16[1], v39, 1) + (v39.f32[0] * *v16);
        v48 = v16 + 3;
        for (j = 1; j != v22; ++j)
        {
          v50 = v39.f32[1] * *v48;
          if ((v50 + (v39.f32[0] * *(v48 - 1))) > v47)
          {
            v45 = j;
            v47 = v50 + (v39.f32[0] * *(v48 - 1));
          }

          v48 += 2;
        }
      }

      v51 = vsub_f32(*&v16[2 * v45], v12[(-(v46 * v15) - (v39.f32[0] * *&v14)) > (-(v46 * v13) - (v39.f32[0] * *&v11))]);
      *v40 = v51;
      if ((COERCE_FLOAT(vmul_f32(v39, v51).i32[1]) + (v51.f32[0] * v39.f32[0])) <= 0.00000001)
      {
        break;
      }

      v52 = vneg_f32(v51);
      if (v41)
      {
        v41 = 0;
        v36 = 0;
        v55 = vsub_f32(v37, v51);
        v56 = vneg_f32(v55);
        v57 = vmla_n_f32(vmul_n_f32(v56, COERCE_FLOAT(vmul_f32(v55, v52).i32[1]) + (v52.f32[0] * v55.f32[0])), v52, COERCE_FLOAT(vmul_f32(v55, v55).i32[1]) + (v55.f32[0] * v55.f32[0]));
        v39 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32((COERCE_FLOAT(vmul_f32(v57, v57).i32[1]) + (v57.f32[0] * v57.f32[0])) == 0.0), 0x1FuLL)), vext_s8(v55, v56, 4uLL), v57);
        v40 = &v62;
        v58 = v38 >= 0x3E7;
        v38 = v43 + 1;
        if (v58)
        {
          goto LABEL_45;
        }

        goto LABEL_23;
      }

      v53 = vsub_f32(v44, v51);
      v54 = vsub_f32(v63, v51);
      *v10.i32 = vmuls_lane_f32(v53.f32[1], v54, 1) + (v54.f32[0] * v53.f32[0]);
      v39 = vmla_n_f32(vmul_n_f32(vneg_f32(v54), vmuls_lane_f32(v53.f32[1], v53, 1) + (v53.f32[0] * v53.f32[0])), v53, *v10.i32);
      if ((COERCE_FLOAT(vmul_f32(v39, v52).i32[1]) + (v39.f32[0] * v52.f32[0])) < 0.0)
      {
        v39 = vmla_f32(vmul_n_f32(vneg_f32(v53), (v54.f32[1] * v54.f32[1]) + (v54.f32[0] * v54.f32[0])), vdup_lane_s32(v10, 0), v54);
        v44 = v63;
        if ((COERCE_FLOAT(vmul_f32(v39, v52).i32[1]) + (v39.f32[0] * v52.f32[0])) < 0.0)
        {
          v36 = 1;
          goto LABEL_45;
        }
      }

      v63 = v62;
      v20 = v43++ == v42;
    }

    while (!v20);
  }

  v36 = 0;
LABEL_45:
  __p[1] = v12;
  operator delete(v12);
  if (v61[0])
  {
    v61[1] = v61[0];
    operator delete(v61[0]);
  }

  return v36;
}

void sub_26234898C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t *sub_2623489A8(size_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v15[4] = v2;
    if (v9)
    {
      sub_2621E1E3C(v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = 24 * v6 + 24;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = sub_26220AA90(v15);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  v2[1] = v5;
  return result;
}

void sub_262348AE4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_2621CBEB0();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_262348BE8(v11);
    }

    v12 = 40 * v8;
    v13 = *a2;
    v14 = a2[1];
    *(v12 + 32) = *(a2 + 4);
    *v12 = v13;
    *(v12 + 16) = v14;
    v7 = 40 * v8 + 40;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

void sub_262348BE8(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_2621C6A34();
}

void *sub_262348C40(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2621CBEB0();
  }

  return result;
}

void sub_262348CC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262348CE4(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_262348D3C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      sub_2621CBEB0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_262348CE4(v11);
    }

    v12 = 48 * v8;
    v13 = *a2;
    v14 = a2[2];
    *(v12 + 16) = a2[1];
    *(v12 + 32) = v14;
    *v12 = v13;
    v7 = 48 * v8 + 48;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    v3[1] = a2[1];
    v3[2] = v6;
    *v3 = v5;
    v7 = (v3 + 3);
  }

  *(a1 + 8) = v7;
}

uint64_t sub_262348E40(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  if (0xEEEEEEEEEEEEEEEFLL * ((v1 - v2) >> 3) < 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v2 + v4;
    v7 = *(v2 + v4 + 40);
    v8 = *(v7 + 24);
    v9 = *(v7 + 72);
    v10 = *(v2 + v4 + 160);
    v11 = *(v10 + 24);
    if (vabds_f32(v8, v9) < 0.01 && vabds_f32(v11, *(v10 + 72)) < 0.01 && vabds_f32(v8, v11) < 0.01)
    {
      break;
    }

    if (vabds_f32(v9, v11) < 0.01)
    {
      v12 = (v7 + 16);
      v13 = *vld2_f32(v12).val;
      v14 = (v7 + 64);
      v15 = *vld2_f32(v14).val;
      v33[0] = v13;
      v33[1] = v15;
      v16 = *(v6 + 160);
      v17 = v16 + 4;
      v18 = *vld2_f32(v17).val;
      v16 += 16;
      v19 = *vld2_f32(v16).val;
      v32[0] = v18;
      v32[1] = v19;
      if (sub_2621C92AC(v33, v32, 0) > 179.0)
      {
        *(*(v6 + 40) + 72) = *(*(v6 + 160) + 72);
        *(*(v6 + 40) + 64) = *(*(v6 + 160) + 64);
        v34 = 0;
        v35 = 0;
        v21 = *(a1 + 40);
        v22 = 120 * v5;
        v23 = 120 * v5 + v21;
        v36 = 0;
        v37 = &v34;
        do
        {
          sub_2623490EC(&v37, v21);
          v21 += 120;
        }

        while (v21 != v23);
        v24 = *(a1 + 48);
        v25 = v22 + *(a1 + 40) + 120;
        v37 = &v34;
        while (v25 != v24)
        {
          sub_2623490EC(&v37, v25);
          v25 += 120;
        }

        sub_2622E9198(a1, &v34);
        v38 = &v34;
        v26 = &v38;
        goto LABEL_23;
      }

      v2 = *(a1 + 40);
      v1 = *(a1 + 48);
    }

    ++v5;
    v4 += 120;
    if (0xEEEEEEEEEEEEEEEFLL * ((v1 - v2) >> 3) <= v5)
    {
      return 0;
    }
  }

  *(v7 + 72) = v8;
  *(*(v6 + 40) + 64) = *(*(v6 + 160) + 64);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v27 = *(a1 + 40);
  v28 = 120 * v5;
  v29 = 120 * v5 + v27;
  v32[0] = &v34;
  do
  {
    sub_2623490EC(v32, v27);
    v27 += 120;
  }

  while (v27 != v29);
  v30 = *(a1 + 48);
  v31 = v28 + *(a1 + 40) + 120;
  v32[0] = &v34;
  while (v31 != v30)
  {
    sub_2623490EC(v32, v31);
    v31 += 120;
  }

  sub_2622E9198(a1, &v34);
  v33[0] = &v34;
  v26 = v33;
LABEL_23:
  sub_262324F40(v26);
  return 1;
}

void sub_2623490AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, char a14)
{
  a12 = &a14;
  sub_262324F40(&a12);
  _Unwind_Resume(a1);
}

uint64_t **sub_2623490EC(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  if (v4 >= (*a1)[2])
  {
    v5 = sub_2622E94A4(*a1, a2);
  }

  else
  {
    sub_2622E9338((*a1)[1], a2);
    v5 = v4 + 120;
    v3[1] = v4 + 120;
  }

  v3[1] = v5;
  return a1;
}

void **sub_262349150(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = result[1];
      v10 = *result;
      if (v9 != v8)
      {
        v11 = v9 - 48;
        v12 = v9 - 48;
        v13 = v9 - 48;
        do
        {
          v14 = *v13;
          v13 -= 48;
          (*v14)(v12);
          v11 -= 48;
          v15 = v12 == v8;
          v12 = v13;
        }

        while (!v15);
        v10 = *v6;
      }

      v6[1] = v8;
      operator delete(v10);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v17 = 2 * v16;
      if (2 * v16 <= a4)
      {
        v17 = a4;
      }

      if (v16 >= 0x2AAAAAAAAAAAAAALL)
      {
        v18 = 0x555555555555555;
      }

      else
      {
        v18 = v17;
      }

      sub_2622E9834(v6, v18);
    }

    sub_2621CBEB0();
  }

  v19 = result[1];
  v20 = v19 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v19 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v28 = *(v5 + 16);
        *(v8 + 8) = *(v5 + 32);
        *(v8 + 1) = v28;
        v5 += 48;
        v8 += 48;
      }

      while (v5 != a3);
      v19 = result[1];
    }

    if (v19 != v8)
    {
      v29 = v19 - 48;
      v30 = v19 - 48;
      v31 = v19 - 48;
      do
      {
        v32 = *v31;
        v31 -= 48;
        result = (*v32)(v30);
        v29 -= 48;
        v15 = v30 == v8;
        v30 = v31;
      }

      while (!v15);
    }

    v6[1] = v8;
  }

  else
  {
    if (v19 != v8)
    {
      v21 = a2 + v20;
      v22 = v8 + 16;
      v23 = (a2 + 16);
      do
      {
        v24 = *v23;
        *(v22 + 4) = *(v23 + 4);
        *v22 = v24;
        v22 += 48;
        v23 += 3;
        v20 -= 48;
      }

      while (v20);
      v19 = result[1];
      v5 = v21;
    }

    v25 = v19;
    if (v5 != a3)
    {
      v26 = v19;
      v25 = v19;
      do
      {
        *v25 = &unk_2874EEFE0;
        v27 = *(v5 + 16);
        v25[8] = *(v5 + 32);
        *(v25 + 1) = v27;
        v5 += 48;
        v25 += 12;
        v26 += 48;
      }

      while (v5 != a3);
    }

    result[1] = v25;
  }

  return result;
}

uint64_t sub_2623493F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, float32x4_t _Q2, double a8, double a9, int8x16_t a10)
{
  *result = &unk_2874EF020;
  *(result + 8) = 0;
  *(result + 11) = 0;
  v10 = (a4 - a3) >> 4;
  if (v10 >= 1)
  {
    v11 = 0uLL;
    v12 = 0.0;
    if (a3 != a4)
    {
      __asm { FMOV            V2.4S, #1.0 }

      do
      {
        a10.i32[0] = *(a3 + 8);
        a10 = vcltzq_s32(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*a10.i8)), 0x1FuLL));
        v11 = vbslq_s8(a10, vaddq_f32(v11, _Q2), v11);
        if (*(a3 + 12))
        {
          v12 = v12 + 1.0;
        }

        a3 += 16;
      }

      while (a3 != a4);
    }

    _Q2.f32[0] = v10;
    v17 = vand_s8(vmovn_s32(vcgtq_f32(vdivq_f32(v11, vdupq_lane_s32(*_Q2.f32, 0)), vzip2q_s32(vzip1q_s32(*(a2 + 24), vextq_s8(*(a2 + 24), *(a2 + 24), 0xCuLL)), *(a2 + 24)))), 0x1000100010001);
    *(result + 8) = vuzp1_s8(v17, v17).u32[0];
    *(result + 12) = (v12 / v10) > *(a2 + 40);
  }

  return result;
}

char *sub_2623494C4(char *__src, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2 - __src;
  if (a2 != __src)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 16 == a2)
    {
      v29 = *__src;
      memmove(__src, a2, a3 - a2);
      v3 = &__src[v6];
      *&__src[v6] = v29;
    }

    else if (a2 + 16 == a3)
    {
      v7 = a3 - 16;
      v8 = *(a3 - 1);
      v3 = __src + 16;
      v9 = a3 - 16 - __src;
      if (v7 != __src)
      {
        v30 = v8;
        memmove(__src + 16, __src, v9);
        v8 = v30;
      }

      *__src = v8;
    }

    else
    {
      v10 = v4 >> 4;
      if (v4 >> 4 == v6 >> 4)
      {
        v11 = __src + 16;
        v12 = a2 + 16;
        do
        {
          v13 = *(v11 - 1);
          *(v11 - 1) = *(v12 - 1);
          *(v12 - 1) = v13;
          if (v11 == a2)
          {
            break;
          }

          v11 += 16;
          v14 = v12 == a3;
          v12 += 16;
        }

        while (!v14);
        return a2;
      }

      else
      {
        v15 = v6 >> 4;
        v16 = v4 >> 4;
        do
        {
          v17 = v16;
          v16 = v15;
          v15 = v17 % v15;
        }

        while (v15);
        v18 = &__src[16 * v16];
        do
        {
          v19 = *(v18 - 1);
          v18 -= 16;
          v20 = v19;
          v21 = &v18[v4];
          v22 = v18;
          do
          {
            v23 = v21;
            *v22 = *v21;
            v24 = &v21[16 * v10];
            v25 = __OFSUB__(v10, (a3 - v21) >> 4);
            v27 = v10 - ((a3 - v21) >> 4);
            v26 = (v27 < 0) ^ v25;
            v21 = &__src[16 * v27];
            if (v26)
            {
              v21 = v24;
            }

            v22 = v23;
          }

          while (v21 != v18);
          *v23 = v20;
        }

        while (v18 != __src);
        return &__src[v6];
      }
    }
  }

  return v3;
}

uint64_t sub_262349634(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2623497A8(result, a4);
  }

  return result;
}

void sub_262349694(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2623496B0(uint64_t result, int a2, uint64_t *a3, float a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 28) = a2;
  *(result + 32) = a4;
  v4 = *a3;
  if (result != a3)
  {
    v5 = a3[1];
    v6 = v5 - v4;
    if (v5 != v4)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
      if (v7 < 0x1555555555555556)
      {
        sub_2623497A8(result, v7);
      }

      sub_2621CBEB0();
    }

    *(result + 8) = v6;
  }

  *(result + 24) = -1431655765 * ((a3[1] - v4) >> 2);
  *(result + 36) = 0;
  return result;
}

void sub_26234978C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2623497A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_262241270(a2);
  }

  sub_2621CBEB0();
}

void sub_262349810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    while (1)
    {
      sub_26229EFDC(v16, v6, (a4 + 8), (a1 + 8));
      if (v16[0] == 1)
      {
        break;
      }

      sub_26225A86C(v6, 0);
      v15 = *(v6 + 8);
      if (v15)
      {
        v14.i32[0] = -1;
LABEL_12:
        *(v15 + 120) = v14.i32[0];
      }

LABEL_13:

      if (v18 < 0)
      {
        operator delete(__p);
      }

      v6 += 176;
      if (v6 == a3)
      {
        return;
      }
    }

    v8 = sub_262259864(a4, &__p);
    *&v9 = sub_2621DCC54(*(v6 + 16), *(v6 + 24), v8[2], v8[3]);
    v10 = v9;
    DWORD2(v10) = *(v6 + 64);
    v12 = v11;
    DWORD2(v12) = *(v6 + 68);
    *(v6 + 16) = v9;
    *(v6 + 24) = v11;
    DWORD2(v9) = DWORD2(v12);
    DWORD2(v11) = DWORD2(v10);
    *(v6 + 32) = v10;
    *(v6 + 48) = v12;
    v13 = *(v6 + 8);
    src[0] = v9;
    src[1] = v12;
    src[2] = v11;
    src[3] = v10;
    if (v13)
    {
      objc_copyStruct((v13 + 272), src, 64, 1, 0);
    }

    sub_26225A86C(v6, v19);
    v14 = v8[1];
    if (v14)
    {
      v14.i32[0] = *(*&v14 + 116);
    }

    v15 = *(v6 + 8);
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }
}

void sub_26234994C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26225AAA0(va);
  _Unwind_Resume(a1);
}

void sub_262349964(std::string **a1, void *a2, uint64_t a3)
{
  v49 = a3;
  v6 = a2;
  for (i = 0; objc_msgSend_count(v6, v4, v5, v49) > i; ++i)
  {
    std::operator+<char>();
    std::to_string(&v55, i);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v55;
    }

    else
    {
      v8 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v55.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v56, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v57, "\n", 1uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v59 = v12->__r_.__value_.__r.__words[2];
    v58 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v59 >= 0)
    {
      v14 = &v58;
    }

    else
    {
      v14 = v58;
    }

    if (v59 >= 0)
    {
      v15 = HIBYTE(v59);
    }

    else
    {
      v15 = *(&v58 + 1);
    }

    std::string::append(*a1, v14, v15);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    v17 = objc_msgSend_objectAtIndexedSubscript_(v6, v16, i);
    objc_msgSend_color(v17, v18, v19);
    std::to_string(&v52, v20);
    v21 = std::string::insert(&v52, 0, "Kd ", 3uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v53, " ", 1uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v26 = objc_msgSend_objectAtIndexedSubscript_(v6, v25, i);
    objc_msgSend_color(v26, v27, v28);
    std::to_string(&v51, v29);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v51;
    }

    else
    {
      v30 = v51.__r_.__value_.__r.__words[0];
    }

    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v51.__r_.__value_.__l.__size_;
    }

    v32 = std::string::append(&v54, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v55, " ", 1uLL);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v56.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v56.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v37 = objc_msgSend_objectAtIndexedSubscript_(v6, v36, i);
    objc_msgSend_color(v37, v38, v39);
    std::to_string(&v50, v40);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v50;
    }

    else
    {
      v41 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v50.__r_.__value_.__l.__size_;
    }

    v43 = std::string::append(&v56, v41, v42);
    v44 = *&v43->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v44;
    v43->__r_.__value_.__l.__size_ = 0;
    v43->__r_.__value_.__r.__words[2] = 0;
    v43->__r_.__value_.__r.__words[0] = 0;
    v45 = std::string::append(&v57, "\n", 1uLL);
    v46 = *&v45->__r_.__value_.__l.__data_;
    v59 = v45->__r_.__value_.__r.__words[2];
    v58 = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    if (v59 >= 0)
    {
      v47 = &v58;
    }

    else
    {
      v47 = v58;
    }

    if (v59 >= 0)
    {
      v48 = HIBYTE(v59);
    }

    else
    {
      v48 = *(&v58 + 1);
    }

    std::string::append(*a1, v47, v48);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    std::string::append(*a1, "illum 0\n", 8uLL);
  }
}

void sub_262349D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v58 - 105) < 0)
  {
    operator delete(*(v58 - 128));
  }

  if (*(v58 - 137) < 0)
  {
    operator delete(*(v58 - 160));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_262349E9C(std::string **a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_count(v3, v4, v5))
  {
    std::operator+<char>();
    v6 = std::string::append(&v50, "\n", 1uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v52 = v6->__r_.__value_.__r.__words[2];
    v51 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (v52 >= 0)
    {
      v8 = &v51;
    }

    else
    {
      v8 = v51;
    }

    if (v52 >= 0)
    {
      v9 = HIBYTE(v52);
    }

    else
    {
      v9 = *(&v51 + 1);
    }

    std::string::append(*a1, v8, v9);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    v11 = objc_msgSend_objectAtIndexedSubscript_(v3, v10, 0);
    objc_msgSend_color(v11, v12, v13);
    std::to_string(&v45, v14);
    v15 = std::string::insert(&v45, 0, "Kd ", 3uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v46, " ", 1uLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v20 = objc_msgSend_objectAtIndexedSubscript_(v3, v19, 0);
    objc_msgSend_color(v20, v21, v22);
    std::to_string(&v44, v23);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v44;
    }

    else
    {
      v24 = v44.__r_.__value_.__r.__words[0];
    }

    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v44.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v47, v24, size);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v48, " ", 1uLL);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v31 = objc_msgSend_objectAtIndexedSubscript_(v3, v30, 0);
    objc_msgSend_color(v31, v32, v33);
    std::to_string(&v43, v34);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v43;
    }

    else
    {
      v35 = v43.__r_.__value_.__r.__words[0];
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = v43.__r_.__value_.__l.__size_;
    }

    v37 = std::string::append(&v49, v35, v36);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    v39 = std::string::append(&v50, "\n", 1uLL);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v52 = v39->__r_.__value_.__r.__words[2];
    v51 = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    if (v52 >= 0)
    {
      v41 = &v51;
    }

    else
    {
      v41 = v51;
    }

    if (v52 >= 0)
    {
      v42 = HIBYTE(v52);
    }

    else
    {
      v42 = *(&v51 + 1);
    }

    std::string::append(*a1, v41, v42);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    std::string::append(*a1, "illum 0\n", 8uLL);
  }
}

uint64_t *sub_26234A32C(uint64_t *a1, uint64_t *a2)
{
  a1[58] = 0;
  v4 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v5 = *(MEMORY[0x277D82810] + 16);
  v6 = *(MEMORY[0x277D82810] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 1);
  v8 = MEMORY[0x277D82860] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[52] = v4;
  MEMORY[0x2667271F0](a1 + 1);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_26234A4B4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x266727390](v1);
  _Unwind_Resume(a1);
}

void *sub_26234A4EC(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x266727200](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x266727390](a1 + 52);
  return a1;
}

void sub_26234A5B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCAAA0];
  v5 = objc_msgSend_dictionaryRepresentation(a1, a2, a3);
  v10 = objc_msgSend_dataWithJSONObject_options_error_(v4, v6, v5, 1, 0);

  if (*(a2 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, a2);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, *a2);
  }
  v8 = ;
  objc_msgSend_writeToFile_atomically_(v10, v9, v8, 1);
}

void sub_26234A690(void *a1, std::string *a2)
{
  v481[19] = *MEMORY[0x277D85DE8];
  v446 = a1;
  v458 = 0;
  sub_2621D0F64(&__p, "");
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  __str = a2;
  if ((v3 & 0x80000000) == 0)
  {
    __dst = *a2;
LABEL_4:
    v4 = 0;
    size = v3;
    v6 = a2;
    goto LABEL_5;
  }

  sub_2621CC810(&__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v6 = a2->__r_.__value_.__r.__words[0];
  size = a2->__r_.__value_.__l.__size_;
  v4 = 1;
LABEL_5:
  if (size >= 1)
  {
    v7 = v6 + size;
    v8 = v6;
    do
    {
      v9 = memchr(v8, 47, size);
      if (!v9)
      {
        break;
      }

      if (*v9 == 47)
      {
        if (v9 != v7 && v9 - v6 != -1)
        {
          v10 = __str->__r_.__value_.__r.__words[0];
          v11 = __str->__r_.__value_.__l.__size_;
          if (!v4)
          {
            v10 = __str;
            v11 = v3;
          }

          v12 = v10 + v11;
          while (v11)
          {
            v13 = *--v12;
            --v11;
            if (v13 == 47)
            {
              v14 = v12 - v10 + 1;
              goto LABEL_21;
            }
          }

          v14 = 0;
LABEL_21:
          std::string::basic_string(v473, __str, 0, v14, &v470);
          if (SHIBYTE(v457) < 0)
          {
            operator delete(__p);
          }

          __p = *v473;
          v457 = *&v473[16];
          v15 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
          v16 = __str->__r_.__value_.__r.__words[0];
          if (v15 >= 0)
          {
            v16 = __str;
          }

          if (v15 < 0)
          {
            v15 = __str->__r_.__value_.__l.__size_;
          }

          v17 = v16 + v15;
          v18 = v15;
          v19 = v16 + v15;
          while (v18)
          {
            v20 = *--v19;
            --v18;
            if (v20 == 47)
            {
              v21 = v19 - v16 + 1;
              goto LABEL_32;
            }
          }

          v21 = 0;
LABEL_32:
          v22 = 1;
          v23 = v15;
          while (v23)
          {
            v24 = *--v17;
            --v23;
            if (v24 == 47)
            {
              v22 = v16 - v17;
              break;
            }
          }

          std::string::basic_string(v473, __str, v21, v22 + v15, &v470);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst = *v473;
        }

        break;
      }

      v8 = (v9 + 1);
      size = v7 - v8;
    }

    while (v7 - v8 >= 1);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __dst.__r_.__value_.__l.__size_;
  }

  v26 = &v452;
  sub_262245A54(&v452, v25 + 4);
  if ((v454 & 0x80u) != 0)
  {
    v26 = v452;
  }

  if (v25)
  {
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    memmove(v26, p_dst, v25);
  }

  strcpy(v26 + v25, ".mtl");
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__dst;
  }

  else
  {
    v28 = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = __dst.__r_.__value_.__l.__size_;
  }

  if (v29 >= 1)
  {
    v30 = v28 + v29;
    v31 = v29;
    v32 = v28;
    do
    {
      v33 = memchr(v32, 46, v31);
      if (!v33)
      {
        break;
      }

      if (*v33 == 46)
      {
        if (v33 != v30 && v33 - v28 != -1)
        {
          while (v29)
          {
            v34 = *--v30;
            --v29;
            if (v34 == 46)
            {
              v35 = v30 - v28 + 1;
              goto LABEL_67;
            }
          }

          v35 = 0;
LABEL_67:
          std::string::basic_string(v473, &__dst, 0, v35, &v469);
          v36 = std::string::append(v473, "mtl", 3uLL);
          v37 = v36->__r_.__value_.__r.__words[0];
          v470.__r_.__value_.__r.__words[0] = v36->__r_.__value_.__l.__size_;
          *(v470.__r_.__value_.__r.__words + 7) = *(&v36->__r_.__value_.__r.__words[1] + 7);
          v38 = HIBYTE(v36->__r_.__value_.__r.__words[2]);
          v36->__r_.__value_.__l.__size_ = 0;
          v36->__r_.__value_.__r.__words[2] = 0;
          v36->__r_.__value_.__r.__words[0] = 0;
          if (v454 < 0)
          {
            operator delete(v452);
          }

          v452 = v37;
          *v453 = v470.__r_.__value_.__r.__words[0];
          *&v453[7] = *(v470.__r_.__value_.__r.__words + 7);
          v454 = v38;
          if ((v473[23] & 0x80000000) != 0)
          {
            operator delete(*v473);
          }
        }

        break;
      }

      v32 = (v33 + 1);
      v31 = v30 - v32;
    }

    while (v30 - v32 >= 1);
  }

  if (v457 >= 0)
  {
    v39 = HIBYTE(v457);
  }

  else
  {
    v39 = *(&__p + 1);
  }

  if ((v454 & 0x80u) == 0)
  {
    v40 = v454;
  }

  else
  {
    v40 = *v453;
  }

  v41 = v450;
  sub_262245A54(v450, v40 + v39);
  if ((v451 & 0x80u) != 0)
  {
    v41 = v450[0];
  }

  if (v39)
  {
    if (v457 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    memmove(v41, p_p, v39);
  }

  v43 = v41 + v39;
  if (v40)
  {
    if ((v454 & 0x80u) == 0)
    {
      v44 = &v452;
    }

    else
    {
      v44 = v452;
    }

    memmove(v43, v44, v40);
  }

  v43[v40] = 0;
  std::operator+<char>();
  v45 = std::string::append(v473, "\n", 1uLL);
  v48 = *&v45->__r_.__value_.__l.__data_;
  v449.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v449.__r_.__value_.__l.__data_ = v48;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v49 = objc_msgSend_walls(v446, v46, v47);
  sub_2621D0F64(v473, "Wall");
  sub_26234DCC0(v49, v473, &v449, &v458);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v52 = objc_msgSend_openings(v446, v50, v51);
  sub_2621D0F64(v473, "Opening");
  sub_26234DCC0(v52, v473, &v449, &v458);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v55 = objc_msgSend_windows(v446, v53, v54);
  sub_2621D0F64(v473, "Window");
  sub_26234DCC0(v55, v473, &v449, &v458);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v58 = objc_msgSend_doors(v446, v56, v57);
  sub_2621D0F64(v473, "Door");
  sub_26234DCC0(v58, v473, &v449, &v458);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v61 = objc_msgSend_opendoors(v446, v59, v60);
  sub_2621D0F64(v473, "Opendoor");
  sub_26234DCC0(v61, v473, &v449, &v458);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v444 = objc_msgSend_objects(v446, v62, v63);
  sub_2621D0F64(v447, "Objects");
  v64 = v444;
  v65 = @"ultimate";
  if (objc_msgSend_count(v64, v66, v67))
  {
    for (i = 0; objc_msgSend_count(v64, v68, v69) > i; ++i)
    {
      std::operator+<char>();
      std::to_string(&v468, i);
      if ((v468.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v71 = &v468;
      }

      else
      {
        v71 = v468.__r_.__value_.__r.__words[0];
      }

      if ((v468.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v72 = HIBYTE(v468.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v72 = v468.__r_.__value_.__l.__size_;
      }

      v73 = std::string::append(&v469, v71, v72);
      v74 = *&v73->__r_.__value_.__l.__data_;
      v470.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
      *&v470.__r_.__value_.__l.__data_ = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      v75 = std::string::append(&v470, "\n", 1uLL);
      v76 = *&v75->__r_.__value_.__l.__data_;
      *&v473[16] = *(&v75->__r_.__value_.__l + 2);
      *v473 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      if (v473[23] >= 0)
      {
        v77 = v473;
      }

      else
      {
        v77 = *v473;
      }

      if (v473[23] >= 0)
      {
        v78 = v473[23];
      }

      else
      {
        v78 = *&v473[8];
      }

      std::string::append(&v449, v77, v78);
      if ((v473[23] & 0x80000000) != 0)
      {
        operator delete(*v473);
      }

      if (SHIBYTE(v470.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v470.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v468.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v469.__r_.__value_.__l.__data_);
      }

      v80 = objc_msgSend_objectAtIndexedSubscript_(v64, v79, i);
      v81 = @"ultimate";
      if (objc_msgSend_hasBoxesDict_(v80, v82, @"ultimate"))
      {
        v478 = 0u;
        v479 = 0u;
        v476 = 0u;
        v477 = 0u;
        v474 = 0u;
        v475 = 0u;
        memset(v473, 0, sizeof(v473));
        v85 = objc_msgSend_boxesDict(v80, v83, v84);
        v87 = objc_msgSend_objectForKeyedSubscript_(v85, v86, @"ultimate");
        sub_262211250(v473, v87);

        memset(&v470, 0, sizeof(v470));
        for (j = 112; ; j = v89)
        {
          v89 = j - 16;
          if (j == -16)
          {
            break;
          }

          sub_2621D9F60(&v470, &v473[j]);
        }

        v459 = *&v470.__r_.__value_.__l.__data_;

        memset(&v461, 0, sizeof(v461));
        sub_2621DDA38(&v461, v459, *(&v459 + 1), (*(&v459 + 1) - v459) >> 4);
        sub_2621D0F64(&v460, "");
        std::string::append(&v460, "# obj_start\n", 0xCuLL);
        v90 = *&v461.__r_.__value_.__l.__data_;
        v91 = v461.__r_.__value_.__r.__words[0];
        if (v461.__r_.__value_.__r.__words[0] == v461.__r_.__value_.__l.__size_)
        {
          v110 = v461.__r_.__value_.__r.__words[0];
          memset(v473, 0, 24);
        }

        else
        {
          do
          {
            std::to_string(&v465, *v91);
            v92 = std::string::insert(&v465, 0, "v ", 2uLL);
            v93 = *&v92->__r_.__value_.__l.__data_;
            v466.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
            *&v466.__r_.__value_.__l.__data_ = v93;
            v92->__r_.__value_.__l.__size_ = 0;
            v92->__r_.__value_.__r.__words[2] = 0;
            v92->__r_.__value_.__r.__words[0] = 0;
            v94 = std::string::append(&v466, " ", 1uLL);
            v95 = *&v94->__r_.__value_.__l.__data_;
            v467.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
            *&v467.__r_.__value_.__l.__data_ = v95;
            v94->__r_.__value_.__l.__size_ = 0;
            v94->__r_.__value_.__r.__words[2] = 0;
            v94->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v464, v91[1]);
            if ((v464.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v96 = &v464;
            }

            else
            {
              v96 = v464.__r_.__value_.__r.__words[0];
            }

            if ((v464.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v97 = HIBYTE(v464.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v97 = v464.__r_.__value_.__l.__size_;
            }

            v98 = std::string::append(&v467, v96, v97);
            v99 = *&v98->__r_.__value_.__l.__data_;
            v468.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
            *&v468.__r_.__value_.__l.__data_ = v99;
            v98->__r_.__value_.__l.__size_ = 0;
            v98->__r_.__value_.__r.__words[2] = 0;
            v98->__r_.__value_.__r.__words[0] = 0;
            v100 = std::string::append(&v468, " ", 1uLL);
            v101 = *&v100->__r_.__value_.__l.__data_;
            v469.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
            *&v469.__r_.__value_.__l.__data_ = v101;
            v100->__r_.__value_.__l.__size_ = 0;
            v100->__r_.__value_.__r.__words[2] = 0;
            v100->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v463, v91[2]);
            if ((v463.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v102 = &v463;
            }

            else
            {
              v102 = v463.__r_.__value_.__r.__words[0];
            }

            if ((v463.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v103 = HIBYTE(v463.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v103 = v463.__r_.__value_.__l.__size_;
            }

            v104 = std::string::append(&v469, v102, v103);
            v105 = *&v104->__r_.__value_.__l.__data_;
            v470.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
            *&v470.__r_.__value_.__l.__data_ = v105;
            v104->__r_.__value_.__l.__size_ = 0;
            v104->__r_.__value_.__r.__words[2] = 0;
            v104->__r_.__value_.__r.__words[0] = 0;
            v106 = std::string::append(&v470, " \n", 2uLL);
            v107 = *&v106->__r_.__value_.__l.__data_;
            *&v473[16] = *(&v106->__r_.__value_.__l + 2);
            *v473 = v107;
            v106->__r_.__value_.__l.__size_ = 0;
            v106->__r_.__value_.__r.__words[2] = 0;
            v106->__r_.__value_.__r.__words[0] = 0;
            if (v473[23] >= 0)
            {
              v108 = v473;
            }

            else
            {
              v108 = *v473;
            }

            if (v473[23] >= 0)
            {
              v109 = v473[23];
            }

            else
            {
              v109 = *&v473[8];
            }

            std::string::append(&v460, v108, v109);
            if ((v473[23] & 0x80000000) != 0)
            {
              operator delete(*v473);
            }

            if (SHIBYTE(v470.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v470.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v463.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v469.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v468.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v464.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v464.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v467.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v466.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v466.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v465.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v465.__r_.__value_.__l.__data_);
            }

            v91 += 4;
          }

          while (v91 != *(&v90 + 1));
          memset(v473, 0, 24);
          v110 = v90;
          if (((*(&v90 + 1) - v90) >> 4) <= 1)
          {
            v111 = 1;
          }

          else
          {
            v111 = (*(&v90 + 1) - v90) >> 4;
          }

          v112 = v458 + 1;
          do
          {
            std::to_string(&v470, v112);
            sub_26234DF58(v473, &v470);
            if (SHIBYTE(v470.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v470.__r_.__value_.__l.__data_);
            }

            ++v112;
            --v111;
          }

          while (v111);
        }

        sub_2621D0F64(&v462, "");
        std::operator+<char>();
        v113 = std::string::append(&v463, " ", 1uLL);
        v114 = *&v113->__r_.__value_.__l.__data_;
        v464.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
        *&v464.__r_.__value_.__l.__data_ = v114;
        v113->__r_.__value_.__l.__size_ = 0;
        v113->__r_.__value_.__r.__words[2] = 0;
        v113->__r_.__value_.__r.__words[0] = 0;
        v115 = *(*v473 + 47);
        if (v115 >= 0)
        {
          v116 = (*v473 + 24);
        }

        else
        {
          v116 = *(*v473 + 24);
        }

        if (v115 >= 0)
        {
          v117 = *(*v473 + 47);
        }

        else
        {
          v117 = *(*v473 + 32);
        }

        v118 = std::string::append(&v464, v116, v117);
        v119 = *&v118->__r_.__value_.__l.__data_;
        v465.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
        *&v465.__r_.__value_.__l.__data_ = v119;
        v118->__r_.__value_.__l.__size_ = 0;
        v118->__r_.__value_.__r.__words[2] = 0;
        v118->__r_.__value_.__r.__words[0] = 0;
        v120 = std::string::append(&v465, " ", 1uLL);
        v121 = *&v120->__r_.__value_.__l.__data_;
        v466.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
        *&v466.__r_.__value_.__l.__data_ = v121;
        v120->__r_.__value_.__l.__size_ = 0;
        v120->__r_.__value_.__r.__words[2] = 0;
        v120->__r_.__value_.__r.__words[0] = 0;
        v122 = *(*v473 + 71);
        if (v122 >= 0)
        {
          v123 = (*v473 + 48);
        }

        else
        {
          v123 = *(*v473 + 48);
        }

        if (v122 >= 0)
        {
          v124 = *(*v473 + 71);
        }

        else
        {
          v124 = *(*v473 + 56);
        }

        v125 = std::string::append(&v466, v123, v124);
        v126 = *&v125->__r_.__value_.__l.__data_;
        v467.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
        *&v467.__r_.__value_.__l.__data_ = v126;
        v125->__r_.__value_.__l.__size_ = 0;
        v125->__r_.__value_.__r.__words[2] = 0;
        v125->__r_.__value_.__r.__words[0] = 0;
        v127 = std::string::append(&v467, " ", 1uLL);
        v128 = *&v127->__r_.__value_.__l.__data_;
        v468.__r_.__value_.__r.__words[2] = v127->__r_.__value_.__r.__words[2];
        *&v468.__r_.__value_.__l.__data_ = v128;
        v127->__r_.__value_.__l.__size_ = 0;
        v127->__r_.__value_.__r.__words[2] = 0;
        v127->__r_.__value_.__r.__words[0] = 0;
        v129 = *(*v473 + 95);
        if (v129 >= 0)
        {
          v130 = (*v473 + 72);
        }

        else
        {
          v130 = *(*v473 + 72);
        }

        if (v129 >= 0)
        {
          v131 = *(*v473 + 95);
        }

        else
        {
          v131 = *(*v473 + 80);
        }

        v132 = std::string::append(&v468, v130, v131);
        v133 = *&v132->__r_.__value_.__l.__data_;
        v469.__r_.__value_.__r.__words[2] = v132->__r_.__value_.__r.__words[2];
        *&v469.__r_.__value_.__l.__data_ = v133;
        v132->__r_.__value_.__l.__size_ = 0;
        v132->__r_.__value_.__r.__words[2] = 0;
        v132->__r_.__value_.__r.__words[0] = 0;
        v134 = std::string::append(&v469, "\n", 1uLL);
        v135 = *&v134->__r_.__value_.__l.__data_;
        v470.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
        *&v470.__r_.__value_.__l.__data_ = v135;
        v134->__r_.__value_.__l.__size_ = 0;
        v134->__r_.__value_.__r.__words[2] = 0;
        v134->__r_.__value_.__r.__words[0] = 0;
        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v136 = &v470;
        }

        else
        {
          v136 = v470.__r_.__value_.__r.__words[0];
        }

        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v137 = HIBYTE(v470.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v137 = v470.__r_.__value_.__l.__size_;
        }

        std::string::append(&v462, v136, v137);
        if (SHIBYTE(v470.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v470.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v469.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v468.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v467.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v466.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v466.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v465.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v465.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v464.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v464.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v463.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v138 = std::string::append(&v463, " ", 1uLL);
        v139 = *&v138->__r_.__value_.__l.__data_;
        v464.__r_.__value_.__r.__words[2] = v138->__r_.__value_.__r.__words[2];
        *&v464.__r_.__value_.__l.__data_ = v139;
        v138->__r_.__value_.__l.__size_ = 0;
        v138->__r_.__value_.__r.__words[2] = 0;
        v138->__r_.__value_.__r.__words[0] = 0;
        v140 = *(*v473 + 119);
        if (v140 >= 0)
        {
          v141 = (*v473 + 96);
        }

        else
        {
          v141 = *(*v473 + 96);
        }

        if (v140 >= 0)
        {
          v142 = *(*v473 + 119);
        }

        else
        {
          v142 = *(*v473 + 104);
        }

        v143 = std::string::append(&v464, v141, v142);
        v144 = *&v143->__r_.__value_.__l.__data_;
        v465.__r_.__value_.__r.__words[2] = v143->__r_.__value_.__r.__words[2];
        *&v465.__r_.__value_.__l.__data_ = v144;
        v143->__r_.__value_.__l.__size_ = 0;
        v143->__r_.__value_.__r.__words[2] = 0;
        v143->__r_.__value_.__r.__words[0] = 0;
        v145 = std::string::append(&v465, " ", 1uLL);
        v146 = *&v145->__r_.__value_.__l.__data_;
        v466.__r_.__value_.__r.__words[2] = v145->__r_.__value_.__r.__words[2];
        *&v466.__r_.__value_.__l.__data_ = v146;
        v145->__r_.__value_.__l.__size_ = 0;
        v145->__r_.__value_.__r.__words[2] = 0;
        v145->__r_.__value_.__r.__words[0] = 0;
        v147 = *(*v473 + 143);
        if (v147 >= 0)
        {
          v148 = (*v473 + 120);
        }

        else
        {
          v148 = *(*v473 + 120);
        }

        if (v147 >= 0)
        {
          v149 = *(*v473 + 143);
        }

        else
        {
          v149 = *(*v473 + 128);
        }

        v150 = std::string::append(&v466, v148, v149);
        v151 = *&v150->__r_.__value_.__l.__data_;
        v467.__r_.__value_.__r.__words[2] = v150->__r_.__value_.__r.__words[2];
        *&v467.__r_.__value_.__l.__data_ = v151;
        v150->__r_.__value_.__l.__size_ = 0;
        v150->__r_.__value_.__r.__words[2] = 0;
        v150->__r_.__value_.__r.__words[0] = 0;
        v152 = std::string::append(&v467, " ", 1uLL);
        v153 = *&v152->__r_.__value_.__l.__data_;
        v468.__r_.__value_.__r.__words[2] = v152->__r_.__value_.__r.__words[2];
        *&v468.__r_.__value_.__l.__data_ = v153;
        v152->__r_.__value_.__l.__size_ = 0;
        v152->__r_.__value_.__r.__words[2] = 0;
        v152->__r_.__value_.__r.__words[0] = 0;
        v154 = *(*v473 + 47);
        if (v154 >= 0)
        {
          v155 = (*v473 + 24);
        }

        else
        {
          v155 = *(*v473 + 24);
        }

        if (v154 >= 0)
        {
          v156 = *(*v473 + 47);
        }

        else
        {
          v156 = *(*v473 + 32);
        }

        v157 = std::string::append(&v468, v155, v156);
        v158 = *&v157->__r_.__value_.__l.__data_;
        v469.__r_.__value_.__r.__words[2] = v157->__r_.__value_.__r.__words[2];
        *&v469.__r_.__value_.__l.__data_ = v158;
        v157->__r_.__value_.__l.__size_ = 0;
        v157->__r_.__value_.__r.__words[2] = 0;
        v157->__r_.__value_.__r.__words[0] = 0;
        v159 = std::string::append(&v469, "\n", 1uLL);
        v160 = *&v159->__r_.__value_.__l.__data_;
        v470.__r_.__value_.__r.__words[2] = v159->__r_.__value_.__r.__words[2];
        *&v470.__r_.__value_.__l.__data_ = v160;
        v159->__r_.__value_.__l.__size_ = 0;
        v159->__r_.__value_.__r.__words[2] = 0;
        v159->__r_.__value_.__r.__words[0] = 0;
        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v161 = &v470;
        }

        else
        {
          v161 = v470.__r_.__value_.__r.__words[0];
        }

        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v162 = HIBYTE(v470.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v162 = v470.__r_.__value_.__l.__size_;
        }

        std::string::append(&v462, v161, v162);
        if (SHIBYTE(v470.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v470.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v469.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v468.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v467.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v466.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v466.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v465.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v465.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v464.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v464.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v463.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v163 = std::string::append(&v463, " ", 1uLL);
        v164 = *&v163->__r_.__value_.__l.__data_;
        v464.__r_.__value_.__r.__words[2] = v163->__r_.__value_.__r.__words[2];
        *&v464.__r_.__value_.__l.__data_ = v164;
        v163->__r_.__value_.__l.__size_ = 0;
        v163->__r_.__value_.__r.__words[2] = 0;
        v163->__r_.__value_.__r.__words[0] = 0;
        v165 = *(*v473 + 95);
        if (v165 >= 0)
        {
          v166 = (*v473 + 72);
        }

        else
        {
          v166 = *(*v473 + 72);
        }

        if (v165 >= 0)
        {
          v167 = *(*v473 + 95);
        }

        else
        {
          v167 = *(*v473 + 80);
        }

        v168 = std::string::append(&v464, v166, v167);
        v169 = *&v168->__r_.__value_.__l.__data_;
        v465.__r_.__value_.__r.__words[2] = v168->__r_.__value_.__r.__words[2];
        *&v465.__r_.__value_.__l.__data_ = v169;
        v168->__r_.__value_.__l.__size_ = 0;
        v168->__r_.__value_.__r.__words[2] = 0;
        v168->__r_.__value_.__r.__words[0] = 0;
        v170 = std::string::append(&v465, " ", 1uLL);
        v171 = *&v170->__r_.__value_.__l.__data_;
        v466.__r_.__value_.__r.__words[2] = v170->__r_.__value_.__r.__words[2];
        *&v466.__r_.__value_.__l.__data_ = v171;
        v170->__r_.__value_.__l.__size_ = 0;
        v170->__r_.__value_.__r.__words[2] = 0;
        v170->__r_.__value_.__r.__words[0] = 0;
        v172 = *(*v473 + 191);
        if (v172 >= 0)
        {
          v173 = (*v473 + 168);
        }

        else
        {
          v173 = *(*v473 + 168);
        }

        if (v172 >= 0)
        {
          v174 = *(*v473 + 191);
        }

        else
        {
          v174 = *(*v473 + 176);
        }

        v175 = std::string::append(&v466, v173, v174);
        v176 = *&v175->__r_.__value_.__l.__data_;
        v467.__r_.__value_.__r.__words[2] = v175->__r_.__value_.__r.__words[2];
        *&v467.__r_.__value_.__l.__data_ = v176;
        v175->__r_.__value_.__l.__size_ = 0;
        v175->__r_.__value_.__r.__words[2] = 0;
        v175->__r_.__value_.__r.__words[0] = 0;
        v177 = std::string::append(&v467, " ", 1uLL);
        v178 = *&v177->__r_.__value_.__l.__data_;
        v468.__r_.__value_.__r.__words[2] = v177->__r_.__value_.__r.__words[2];
        *&v468.__r_.__value_.__l.__data_ = v178;
        v177->__r_.__value_.__l.__size_ = 0;
        v177->__r_.__value_.__r.__words[2] = 0;
        v177->__r_.__value_.__r.__words[0] = 0;
        v179 = *(*v473 + 119);
        if (v179 >= 0)
        {
          v180 = (*v473 + 96);
        }

        else
        {
          v180 = *(*v473 + 96);
        }

        if (v179 >= 0)
        {
          v181 = *(*v473 + 119);
        }

        else
        {
          v181 = *(*v473 + 104);
        }

        v182 = std::string::append(&v468, v180, v181);
        v183 = *&v182->__r_.__value_.__l.__data_;
        v469.__r_.__value_.__r.__words[2] = v182->__r_.__value_.__r.__words[2];
        *&v469.__r_.__value_.__l.__data_ = v183;
        v182->__r_.__value_.__l.__size_ = 0;
        v182->__r_.__value_.__r.__words[2] = 0;
        v182->__r_.__value_.__r.__words[0] = 0;
        v184 = std::string::append(&v469, "\n", 1uLL);
        v185 = *&v184->__r_.__value_.__l.__data_;
        v470.__r_.__value_.__r.__words[2] = v184->__r_.__value_.__r.__words[2];
        *&v470.__r_.__value_.__l.__data_ = v185;
        v184->__r_.__value_.__l.__size_ = 0;
        v184->__r_.__value_.__r.__words[2] = 0;
        v184->__r_.__value_.__r.__words[0] = 0;
        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v186 = &v470;
        }

        else
        {
          v186 = v470.__r_.__value_.__r.__words[0];
        }

        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v187 = HIBYTE(v470.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v187 = v470.__r_.__value_.__l.__size_;
        }

        std::string::append(&v462, v186, v187);
        if (SHIBYTE(v470.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v470.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v469.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v468.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v467.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v466.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v466.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v465.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v465.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v464.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v464.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v463.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v188 = std::string::append(&v463, " ", 1uLL);
        v189 = *&v188->__r_.__value_.__l.__data_;
        v464.__r_.__value_.__r.__words[2] = v188->__r_.__value_.__r.__words[2];
        *&v464.__r_.__value_.__l.__data_ = v189;
        v188->__r_.__value_.__l.__size_ = 0;
        v188->__r_.__value_.__r.__words[2] = 0;
        v188->__r_.__value_.__r.__words[0] = 0;
        v190 = *(*v473 + 143);
        if (v190 >= 0)
        {
          v191 = (*v473 + 120);
        }

        else
        {
          v191 = *(*v473 + 120);
        }

        if (v190 >= 0)
        {
          v192 = *(*v473 + 143);
        }

        else
        {
          v192 = *(*v473 + 128);
        }

        v193 = std::string::append(&v464, v191, v192);
        v194 = *&v193->__r_.__value_.__l.__data_;
        v465.__r_.__value_.__r.__words[2] = v193->__r_.__value_.__r.__words[2];
        *&v465.__r_.__value_.__l.__data_ = v194;
        v193->__r_.__value_.__l.__size_ = 0;
        v193->__r_.__value_.__r.__words[2] = 0;
        v193->__r_.__value_.__r.__words[0] = 0;
        v195 = std::string::append(&v465, " ", 1uLL);
        v196 = *&v195->__r_.__value_.__l.__data_;
        v466.__r_.__value_.__r.__words[2] = v195->__r_.__value_.__r.__words[2];
        *&v466.__r_.__value_.__l.__data_ = v196;
        v195->__r_.__value_.__l.__size_ = 0;
        v195->__r_.__value_.__r.__words[2] = 0;
        v195->__r_.__value_.__r.__words[0] = 0;
        v197 = *(*v473 + 167);
        if (v197 >= 0)
        {
          v198 = (*v473 + 144);
        }

        else
        {
          v198 = *(*v473 + 144);
        }

        if (v197 >= 0)
        {
          v199 = *(*v473 + 167);
        }

        else
        {
          v199 = *(*v473 + 152);
        }

        v200 = std::string::append(&v466, v198, v199);
        v201 = *&v200->__r_.__value_.__l.__data_;
        v467.__r_.__value_.__r.__words[2] = v200->__r_.__value_.__r.__words[2];
        *&v467.__r_.__value_.__l.__data_ = v201;
        v200->__r_.__value_.__l.__size_ = 0;
        v200->__r_.__value_.__r.__words[2] = 0;
        v200->__r_.__value_.__r.__words[0] = 0;
        v202 = std::string::append(&v467, " ", 1uLL);
        v203 = *&v202->__r_.__value_.__l.__data_;
        v468.__r_.__value_.__r.__words[2] = v202->__r_.__value_.__r.__words[2];
        *&v468.__r_.__value_.__l.__data_ = v203;
        v202->__r_.__value_.__l.__size_ = 0;
        v202->__r_.__value_.__r.__words[2] = 0;
        v202->__r_.__value_.__r.__words[0] = 0;
        v204 = *(*v473 + 71);
        if (v204 >= 0)
        {
          v205 = (*v473 + 48);
        }

        else
        {
          v205 = *(*v473 + 48);
        }

        if (v204 >= 0)
        {
          v206 = *(*v473 + 71);
        }

        else
        {
          v206 = *(*v473 + 56);
        }

        v207 = std::string::append(&v468, v205, v206);
        v208 = *&v207->__r_.__value_.__l.__data_;
        v469.__r_.__value_.__r.__words[2] = v207->__r_.__value_.__r.__words[2];
        *&v469.__r_.__value_.__l.__data_ = v208;
        v207->__r_.__value_.__l.__size_ = 0;
        v207->__r_.__value_.__r.__words[2] = 0;
        v207->__r_.__value_.__r.__words[0] = 0;
        v209 = std::string::append(&v469, "\n", 1uLL);
        v210 = *&v209->__r_.__value_.__l.__data_;
        v470.__r_.__value_.__r.__words[2] = v209->__r_.__value_.__r.__words[2];
        *&v470.__r_.__value_.__l.__data_ = v210;
        v209->__r_.__value_.__l.__size_ = 0;
        v209->__r_.__value_.__r.__words[2] = 0;
        v209->__r_.__value_.__r.__words[0] = 0;
        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v211 = &v470;
        }

        else
        {
          v211 = v470.__r_.__value_.__r.__words[0];
        }

        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v212 = HIBYTE(v470.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v212 = v470.__r_.__value_.__l.__size_;
        }

        std::string::append(&v462, v211, v212);
        if (SHIBYTE(v470.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v470.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v469.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v468.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v467.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v466.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v466.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v465.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v465.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v464.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v464.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v463.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v213 = std::string::append(&v463, " ", 1uLL);
        v214 = *&v213->__r_.__value_.__l.__data_;
        v464.__r_.__value_.__r.__words[2] = v213->__r_.__value_.__r.__words[2];
        *&v464.__r_.__value_.__l.__data_ = v214;
        v213->__r_.__value_.__l.__size_ = 0;
        v213->__r_.__value_.__r.__words[2] = 0;
        v213->__r_.__value_.__r.__words[0] = 0;
        v215 = *(*v473 + 167);
        if (v215 >= 0)
        {
          v216 = (*v473 + 144);
        }

        else
        {
          v216 = *(*v473 + 144);
        }

        if (v215 >= 0)
        {
          v217 = *(*v473 + 167);
        }

        else
        {
          v217 = *(*v473 + 152);
        }

        v218 = std::string::append(&v464, v216, v217);
        v219 = *&v218->__r_.__value_.__l.__data_;
        v465.__r_.__value_.__r.__words[2] = v218->__r_.__value_.__r.__words[2];
        *&v465.__r_.__value_.__l.__data_ = v219;
        v218->__r_.__value_.__l.__size_ = 0;
        v218->__r_.__value_.__r.__words[2] = 0;
        v218->__r_.__value_.__r.__words[0] = 0;
        v220 = std::string::append(&v465, " ", 1uLL);
        v221 = *&v220->__r_.__value_.__l.__data_;
        v466.__r_.__value_.__r.__words[2] = v220->__r_.__value_.__r.__words[2];
        *&v466.__r_.__value_.__l.__data_ = v221;
        v220->__r_.__value_.__l.__size_ = 0;
        v220->__r_.__value_.__r.__words[2] = 0;
        v220->__r_.__value_.__r.__words[0] = 0;
        v222 = *(*v473 + 191);
        if (v222 >= 0)
        {
          v223 = (*v473 + 168);
        }

        else
        {
          v223 = *(*v473 + 168);
        }

        if (v222 >= 0)
        {
          v224 = *(*v473 + 191);
        }

        else
        {
          v224 = *(*v473 + 176);
        }

        v225 = std::string::append(&v466, v223, v224);
        v226 = *&v225->__r_.__value_.__l.__data_;
        v467.__r_.__value_.__r.__words[2] = v225->__r_.__value_.__r.__words[2];
        *&v467.__r_.__value_.__l.__data_ = v226;
        v225->__r_.__value_.__l.__size_ = 0;
        v225->__r_.__value_.__r.__words[2] = 0;
        v225->__r_.__value_.__r.__words[0] = 0;
        v227 = std::string::append(&v467, " ", 1uLL);
        v228 = *&v227->__r_.__value_.__l.__data_;
        v468.__r_.__value_.__r.__words[2] = v227->__r_.__value_.__r.__words[2];
        *&v468.__r_.__value_.__l.__data_ = v228;
        v227->__r_.__value_.__l.__size_ = 0;
        v227->__r_.__value_.__r.__words[2] = 0;
        v227->__r_.__value_.__r.__words[0] = 0;
        v229 = *(*v473 + 95);
        if (v229 >= 0)
        {
          v230 = (*v473 + 72);
        }

        else
        {
          v230 = *(*v473 + 72);
        }

        if (v229 >= 0)
        {
          v231 = *(*v473 + 95);
        }

        else
        {
          v231 = *(*v473 + 80);
        }

        v232 = std::string::append(&v468, v230, v231);
        v233 = *&v232->__r_.__value_.__l.__data_;
        v469.__r_.__value_.__r.__words[2] = v232->__r_.__value_.__r.__words[2];
        *&v469.__r_.__value_.__l.__data_ = v233;
        v232->__r_.__value_.__l.__size_ = 0;
        v232->__r_.__value_.__r.__words[2] = 0;
        v232->__r_.__value_.__r.__words[0] = 0;
        v234 = std::string::append(&v469, "\n", 1uLL);
        v235 = *&v234->__r_.__value_.__l.__data_;
        v470.__r_.__value_.__r.__words[2] = v234->__r_.__value_.__r.__words[2];
        *&v470.__r_.__value_.__l.__data_ = v235;
        v234->__r_.__value_.__l.__size_ = 0;
        v234->__r_.__value_.__r.__words[2] = 0;
        v234->__r_.__value_.__r.__words[0] = 0;
        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v236 = &v470;
        }

        else
        {
          v236 = v470.__r_.__value_.__r.__words[0];
        }

        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v237 = HIBYTE(v470.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v237 = v470.__r_.__value_.__l.__size_;
        }

        std::string::append(&v462, v236, v237);
        if (SHIBYTE(v470.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v470.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v469.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v468.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v467.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v466.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v466.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v465.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v465.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v464.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v464.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v463.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v238 = std::string::append(&v463, " ", 1uLL);
        v239 = *&v238->__r_.__value_.__l.__data_;
        v464.__r_.__value_.__r.__words[2] = v238->__r_.__value_.__r.__words[2];
        *&v464.__r_.__value_.__l.__data_ = v239;
        v238->__r_.__value_.__l.__size_ = 0;
        v238->__r_.__value_.__r.__words[2] = 0;
        v238->__r_.__value_.__r.__words[0] = 0;
        v240 = *(*v473 + 143);
        if (v240 >= 0)
        {
          v241 = (*v473 + 120);
        }

        else
        {
          v241 = *(*v473 + 120);
        }

        if (v240 >= 0)
        {
          v242 = *(*v473 + 143);
        }

        else
        {
          v242 = *(*v473 + 128);
        }

        v243 = std::string::append(&v464, v241, v242);
        v244 = *&v243->__r_.__value_.__l.__data_;
        v465.__r_.__value_.__r.__words[2] = v243->__r_.__value_.__r.__words[2];
        *&v465.__r_.__value_.__l.__data_ = v244;
        v243->__r_.__value_.__l.__size_ = 0;
        v243->__r_.__value_.__r.__words[2] = 0;
        v243->__r_.__value_.__r.__words[0] = 0;
        v245 = std::string::append(&v465, " ", 1uLL);
        v246 = *&v245->__r_.__value_.__l.__data_;
        v466.__r_.__value_.__r.__words[2] = v245->__r_.__value_.__r.__words[2];
        *&v466.__r_.__value_.__l.__data_ = v246;
        v245->__r_.__value_.__l.__size_ = 0;
        v245->__r_.__value_.__r.__words[2] = 0;
        v245->__r_.__value_.__r.__words[0] = 0;
        v247 = *(*v473 + 167);
        if (v247 >= 0)
        {
          v248 = (*v473 + 144);
        }

        else
        {
          v248 = *(*v473 + 144);
        }

        if (v247 >= 0)
        {
          v249 = *(*v473 + 167);
        }

        else
        {
          v249 = *(*v473 + 152);
        }

        v250 = std::string::append(&v466, v248, v249);
        v251 = *&v250->__r_.__value_.__l.__data_;
        v467.__r_.__value_.__r.__words[2] = v250->__r_.__value_.__r.__words[2];
        *&v467.__r_.__value_.__l.__data_ = v251;
        v250->__r_.__value_.__l.__size_ = 0;
        v250->__r_.__value_.__r.__words[2] = 0;
        v250->__r_.__value_.__r.__words[0] = 0;
        v252 = std::string::append(&v467, " ", 1uLL);
        v253 = *&v252->__r_.__value_.__l.__data_;
        v468.__r_.__value_.__r.__words[2] = v252->__r_.__value_.__r.__words[2];
        *&v468.__r_.__value_.__l.__data_ = v253;
        v252->__r_.__value_.__l.__size_ = 0;
        v252->__r_.__value_.__r.__words[2] = 0;
        v252->__r_.__value_.__r.__words[0] = 0;
        v254 = *(*v473 + 191);
        if (v254 >= 0)
        {
          v255 = (*v473 + 168);
        }

        else
        {
          v255 = *(*v473 + 168);
        }

        if (v254 >= 0)
        {
          v256 = *(*v473 + 191);
        }

        else
        {
          v256 = *(*v473 + 176);
        }

        v257 = std::string::append(&v468, v255, v256);
        v258 = *&v257->__r_.__value_.__l.__data_;
        v469.__r_.__value_.__r.__words[2] = v257->__r_.__value_.__r.__words[2];
        *&v469.__r_.__value_.__l.__data_ = v258;
        v257->__r_.__value_.__l.__size_ = 0;
        v257->__r_.__value_.__r.__words[2] = 0;
        v257->__r_.__value_.__r.__words[0] = 0;
        v259 = std::string::append(&v469, "\n", 1uLL);
        v260 = *&v259->__r_.__value_.__l.__data_;
        v470.__r_.__value_.__r.__words[2] = v259->__r_.__value_.__r.__words[2];
        *&v470.__r_.__value_.__l.__data_ = v260;
        v259->__r_.__value_.__l.__size_ = 0;
        v259->__r_.__value_.__r.__words[2] = 0;
        v259->__r_.__value_.__r.__words[0] = 0;
        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v261 = &v470;
        }

        else
        {
          v261 = v470.__r_.__value_.__r.__words[0];
        }

        if ((v470.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v262 = HIBYTE(v470.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v262 = v470.__r_.__value_.__l.__size_;
        }

        std::string::append(&v462, v261, v262);
        if (SHIBYTE(v470.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v470.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v469.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v468.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v467.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v466.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v466.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v465.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v465.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v464.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v464.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v463.__r_.__value_.__l.__data_);
        }

        v470.__r_.__value_.__r.__words[0] = v473;
        sub_2621DED18(&v470);
        if ((v462.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v263 = &v462;
        }

        else
        {
          v263 = v462.__r_.__value_.__r.__words[0];
        }

        if ((v462.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v264 = HIBYTE(v462.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v264 = v462.__r_.__value_.__l.__size_;
        }

        std::string::append(&v460, v263, v264);
        if (SHIBYTE(v462.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v462.__r_.__value_.__l.__data_);
        }

        v458 += (*(&v90 + 1) - v110) >> 4;
        std::string::append(&v460, "# obj_end\n\n", 0xBuLL);
        if ((v460.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v265 = &v460;
        }

        else
        {
          v265 = v460.__r_.__value_.__r.__words[0];
        }

        if ((v460.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v266 = HIBYTE(v460.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v266 = v460.__r_.__value_.__l.__size_;
        }

        std::string::append(&v449, v265, v266);
        if (SHIBYTE(v460.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v460.__r_.__value_.__l.__data_);
        }

        if (v461.__r_.__value_.__r.__words[0])
        {
          operator delete(v461.__r_.__value_.__l.__data_);
        }

        if (v459)
        {
          operator delete(v459);
        }
      }

      else
      {
        LOBYTE(v459) = 0;
      }
    }
  }

  if (v448 < 0)
  {
    operator delete(v447[0]);
  }

  v269 = objc_msgSend_floors(v446, v267, v268);
  sub_2621D0F64(&v467, "Floor");
  v270 = v269;
  if (objc_msgSend_count(v270, v271, v272))
  {
    for (k = 0; objc_msgSend_count(v270, v273, v274) > k; ++k)
    {
      std::operator+<char>();
      std::to_string(&v468, k);
      if ((v468.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v276 = &v468;
      }

      else
      {
        v276 = v468.__r_.__value_.__r.__words[0];
      }

      if ((v468.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v277 = HIBYTE(v468.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v277 = v468.__r_.__value_.__l.__size_;
      }

      v278 = std::string::append(&v469, v276, v277);
      v279 = *&v278->__r_.__value_.__l.__data_;
      v470.__r_.__value_.__r.__words[2] = v278->__r_.__value_.__r.__words[2];
      *&v470.__r_.__value_.__l.__data_ = v279;
      v278->__r_.__value_.__l.__size_ = 0;
      v278->__r_.__value_.__r.__words[2] = 0;
      v278->__r_.__value_.__r.__words[0] = 0;
      v280 = std::string::append(&v470, "\n", 1uLL);
      v281 = *&v280->__r_.__value_.__l.__data_;
      *&v473[16] = *(&v280->__r_.__value_.__l + 2);
      *v473 = v281;
      v280->__r_.__value_.__l.__size_ = 0;
      v280->__r_.__value_.__r.__words[2] = 0;
      v280->__r_.__value_.__r.__words[0] = 0;
      if (v473[23] >= 0)
      {
        v282 = v473;
      }

      else
      {
        v282 = *v473;
      }

      if (v473[23] >= 0)
      {
        v283 = v473[23];
      }

      else
      {
        v283 = *&v473[8];
      }

      std::string::append(&v449, v282, v283);
      if ((v473[23] & 0x80000000) != 0)
      {
        operator delete(*v473);
      }

      if (SHIBYTE(v470.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v470.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v468.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v469.__r_.__value_.__l.__data_);
      }

      v285 = objc_msgSend_objectAtIndexedSubscript_(v270, v284, k);
      memset(&v470, 0, sizeof(v470));
      if (objc_msgSend_polygonSize(v285, v286, v287) <= 2)
      {
        for (m = 0; m != 64; m += 16)
        {
          objc_msgSend_quad(v285, v288, v289);
          *&v473[8] = v298;
          *&v473[24] = v299;
          *v473 = v300;
          *&v473[16] = v301;
          DWORD2(v474) = v302;
          DWORD2(v475) = v303;
          *&v474 = v304;
          *&v475 = v305;
          *&v469.__r_.__value_.__l.__data_ = vaddq_f32(*&v473[m], xmmword_2623A7D00);
          sub_2621D9F60(&v470, &v469);
          objc_msgSend_quad(v285, v306, v307);
          *&v473[8] = v308;
          *&v473[24] = v309;
          DWORD2(v474) = v310;
          *v473 = v311;
          *&v473[16] = v312;
          DWORD2(v475) = v313;
          *&v474 = v314;
          *&v475 = v315;
          sub_2621D9F60(&v470, &v473[m]);
        }
      }

      else
      {
        v290 = 0;
        for (n = 0; n < objc_msgSend_polygonSize(v285, v288, v289); ++n)
        {
          *v473 = vaddq_f32(*(objc_msgSend_polygon(v285, v292, v293) + v290), xmmword_2623A7D00);
          sub_2621D9F60(&v470, v473);
          v296 = objc_msgSend_polygon(v285, v294, v295);
          sub_2621D9F60(&v470, (v296 + v290));
          v290 += 16;
        }
      }

      sub_26234E084(v473, &v470, &v458);
      if (v473[23] >= 0)
      {
        v316 = v473;
      }

      else
      {
        v316 = *v473;
      }

      if (v473[23] >= 0)
      {
        v317 = v473[23];
      }

      else
      {
        v317 = *&v473[8];
      }

      std::string::append(&v449, v316, v317);
      if ((v473[23] & 0x80000000) != 0)
      {
        operator delete(*v473);
      }

      if (v470.__r_.__value_.__r.__words[0])
      {
        operator delete(v470.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v467.__r_.__value_.__l.__data_);
  }

  v320 = objc_msgSend_curvedWalls(v446, v318, v319);
  sub_2621D0F64(v473, "CurvedWall");
  sub_26234EA08(v320, v473, &v449, &v458);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v323 = objc_msgSend_curvedWindows(v446, v321, v322);
  sub_2621D0F64(v473, "CurvedWindow");
  sub_26234EA08(v323, v473, &v449, &v458);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v326 = objc_msgSend_curvedDoors(v446, v324, v325);
  sub_2621D0F64(v473, "CurvedDoor");
  sub_26234EA08(v326, v473, &v449, &v458);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  sub_26234A32C(&v470, __str);
  if (v471)
  {
    if ((v449.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v327 = &v449;
    }

    else
    {
      v327 = v449.__r_.__value_.__r.__words[0];
    }

    if ((v449.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v328 = HIBYTE(v449.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v328 = v449.__r_.__value_.__l.__size_;
    }

    sub_2621D552C(&v470, v327, v328);
    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v470 + *(v470.__r_.__value_.__r.__words[0] - 24)), *(&v470 + *(v470.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
    }
  }

  else
  {
    v329 = sub_2621D552C(MEMORY[0x277D82670], "Write to ", 9);
    v330 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v330 >= 0)
    {
      v331 = __str;
    }

    else
    {
      v331 = __str->__r_.__value_.__r.__words[0];
    }

    if (v330 >= 0)
    {
      v332 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v332 = __str->__r_.__value_.__l.__size_;
    }

    v333 = sub_2621D552C(v329, v331, v332);
    v334 = sub_2621D552C(v333, " failed", 7);
    std::ios_base::getloc((v334 + *(*v334 - 24)));
    v335 = std::locale::use_facet(v473, MEMORY[0x277D82680]);
    (v335->__vftable[2].~facet_0)(v335, 10);
    std::locale::~locale(v473);
    std::ostream::put();
    std::ostream::flush();
  }

  v336 = v446;
  sub_2621D0F64(&v461, "");
  v447[0] = &v461;
  v339 = objc_msgSend_walls(v336, v337, v338);
  sub_2621D0F64(v473, "Wall");
  sub_262349964(v447, v339, v473);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v342 = objc_msgSend_openings(v336, v340, v341);
  sub_2621D0F64(v473, "Opening");
  sub_262349964(v447, v342, v473);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v345 = objc_msgSend_windows(v336, v343, v344);
  sub_2621D0F64(v473, "Window");
  sub_262349964(v447, v345, v473);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v348 = objc_msgSend_doors(v336, v346, v347);
  sub_2621D0F64(v473, "Door");
  sub_262349964(v447, v348, v473);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v351 = objc_msgSend_objects(v336, v349, v350);
  sub_2621D0F64(&v460, "Objects");
  v354 = v351;
  for (ii = 0; objc_msgSend_count(v354, v352, v353) > ii; ++ii)
  {
    std::operator+<char>();
    std::to_string(&v467, ii);
    if ((v467.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v356 = &v467;
    }

    else
    {
      v356 = v467.__r_.__value_.__r.__words[0];
    }

    if ((v467.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v357 = HIBYTE(v467.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v357 = v467.__r_.__value_.__l.__size_;
    }

    v358 = std::string::append(&v468, v356, v357);
    v359 = *&v358->__r_.__value_.__l.__data_;
    v469.__r_.__value_.__r.__words[2] = v358->__r_.__value_.__r.__words[2];
    *&v469.__r_.__value_.__l.__data_ = v359;
    v358->__r_.__value_.__l.__size_ = 0;
    v358->__r_.__value_.__r.__words[2] = 0;
    v358->__r_.__value_.__r.__words[0] = 0;
    v360 = std::string::append(&v469, "\n", 1uLL);
    v361 = *&v360->__r_.__value_.__l.__data_;
    *&v473[16] = *(&v360->__r_.__value_.__l + 2);
    *v473 = v361;
    v360->__r_.__value_.__l.__size_ = 0;
    v360->__r_.__value_.__r.__words[2] = 0;
    v360->__r_.__value_.__r.__words[0] = 0;
    if (v473[23] >= 0)
    {
      v362 = v473;
    }

    else
    {
      v362 = *v473;
    }

    if (v473[23] >= 0)
    {
      v363 = v473[23];
    }

    else
    {
      v363 = *&v473[8];
    }

    std::string::append(&v461, v362, v363);
    if ((v473[23] & 0x80000000) != 0)
    {
      operator delete(*v473);
    }

    if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v469.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v467.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v468.__r_.__value_.__l.__data_);
    }

    std::to_string(&v464, 0.9);
    v364 = std::string::insert(&v464, 0, "Kd ", 3uLL);
    v365 = *&v364->__r_.__value_.__l.__data_;
    v465.__r_.__value_.__r.__words[2] = v364->__r_.__value_.__r.__words[2];
    *&v465.__r_.__value_.__l.__data_ = v365;
    v364->__r_.__value_.__l.__size_ = 0;
    v364->__r_.__value_.__r.__words[2] = 0;
    v364->__r_.__value_.__r.__words[0] = 0;
    v366 = std::string::append(&v465, " ", 1uLL);
    v367 = *&v366->__r_.__value_.__l.__data_;
    v466.__r_.__value_.__r.__words[2] = v366->__r_.__value_.__r.__words[2];
    *&v466.__r_.__value_.__l.__data_ = v367;
    v366->__r_.__value_.__l.__size_ = 0;
    v366->__r_.__value_.__r.__words[2] = 0;
    v366->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v463, 0.1);
    if ((v463.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v368 = &v463;
    }

    else
    {
      v368 = v463.__r_.__value_.__r.__words[0];
    }

    if ((v463.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v369 = HIBYTE(v463.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v369 = v463.__r_.__value_.__l.__size_;
    }

    v370 = std::string::append(&v466, v368, v369);
    v371 = *&v370->__r_.__value_.__l.__data_;
    v467.__r_.__value_.__r.__words[2] = v370->__r_.__value_.__r.__words[2];
    *&v467.__r_.__value_.__l.__data_ = v371;
    v370->__r_.__value_.__l.__size_ = 0;
    v370->__r_.__value_.__r.__words[2] = 0;
    v370->__r_.__value_.__r.__words[0] = 0;
    v372 = std::string::append(&v467, " ", 1uLL);
    v373 = *&v372->__r_.__value_.__l.__data_;
    v468.__r_.__value_.__r.__words[2] = v372->__r_.__value_.__r.__words[2];
    *&v468.__r_.__value_.__l.__data_ = v373;
    v372->__r_.__value_.__l.__size_ = 0;
    v372->__r_.__value_.__r.__words[2] = 0;
    v372->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v462, 0.1);
    if ((v462.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v374 = &v462;
    }

    else
    {
      v374 = v462.__r_.__value_.__r.__words[0];
    }

    if ((v462.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v375 = HIBYTE(v462.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v375 = v462.__r_.__value_.__l.__size_;
    }

    v376 = std::string::append(&v468, v374, v375);
    v377 = *&v376->__r_.__value_.__l.__data_;
    v469.__r_.__value_.__r.__words[2] = v376->__r_.__value_.__r.__words[2];
    *&v469.__r_.__value_.__l.__data_ = v377;
    v376->__r_.__value_.__l.__size_ = 0;
    v376->__r_.__value_.__r.__words[2] = 0;
    v376->__r_.__value_.__r.__words[0] = 0;
    v378 = std::string::append(&v469, "\n", 1uLL);
    v379 = *&v378->__r_.__value_.__l.__data_;
    *&v473[16] = *(&v378->__r_.__value_.__l + 2);
    *v473 = v379;
    v378->__r_.__value_.__l.__size_ = 0;
    v378->__r_.__value_.__r.__words[2] = 0;
    v378->__r_.__value_.__r.__words[0] = 0;
    if (v473[23] >= 0)
    {
      v380 = v473;
    }

    else
    {
      v380 = *v473;
    }

    if (v473[23] >= 0)
    {
      v381 = v473[23];
    }

    else
    {
      v381 = *&v473[8];
    }

    std::string::append(&v461, v380, v381);
    if ((v473[23] & 0x80000000) != 0)
    {
      operator delete(*v473);
    }

    if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v469.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v462.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v462.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v468.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v467.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v463.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v466.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v466.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v465.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v465.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v464.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v464.__r_.__value_.__l.__data_);
    }

    std::string::append(&v461, "illum 0\n", 8uLL);
  }

  if (SHIBYTE(v460.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v460.__r_.__value_.__l.__data_);
  }

  v384 = objc_msgSend_floors(v336, v382, v383);
  sub_2621D0F64(v473, "Floor");
  sub_262349964(v447, v384, v473);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  *&v459 = &v461;
  v387 = objc_msgSend_curvedWalls(v336, v385, v386);
  sub_2621D0F64(v473, "CurvedWall");
  sub_262349E9C(&v459, v387);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v390 = objc_msgSend_curvedWindows(v336, v388, v389);
  sub_2621D0F64(v473, "CurvedWindow");
  sub_262349E9C(&v459, v390);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v393 = objc_msgSend_curvedDoors(v336, v391, v392);
  sub_2621D0F64(v473, "CurvedDoor");
  sub_262349E9C(&v459, v393);
  if ((v473[23] & 0x80000000) != 0)
  {
    operator delete(*v473);
  }

  v396 = objc_msgSend_roomTypes(v336, v394, v395);
  sub_2621D0F64(&v460, "RoomType");
  v399 = v396;
  for (jj = 0; objc_msgSend_count(v399, v397, v398) > jj; ++jj)
  {
    std::operator+<char>();
    std::to_string(&v467, jj);
    if ((v467.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v401 = &v467;
    }

    else
    {
      v401 = v467.__r_.__value_.__r.__words[0];
    }

    if ((v467.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v402 = HIBYTE(v467.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v402 = v467.__r_.__value_.__l.__size_;
    }

    v403 = std::string::append(&v468, v401, v402);
    v404 = *&v403->__r_.__value_.__l.__data_;
    v469.__r_.__value_.__r.__words[2] = v403->__r_.__value_.__r.__words[2];
    *&v469.__r_.__value_.__l.__data_ = v404;
    v403->__r_.__value_.__l.__size_ = 0;
    v403->__r_.__value_.__r.__words[2] = 0;
    v403->__r_.__value_.__r.__words[0] = 0;
    v405 = std::string::append(&v469, "\n", 1uLL);
    v406 = *&v405->__r_.__value_.__l.__data_;
    *&v473[16] = *(&v405->__r_.__value_.__l + 2);
    *v473 = v406;
    v405->__r_.__value_.__l.__size_ = 0;
    v405->__r_.__value_.__r.__words[2] = 0;
    v405->__r_.__value_.__r.__words[0] = 0;
    if (v473[23] >= 0)
    {
      v407 = v473;
    }

    else
    {
      v407 = *v473;
    }

    if (v473[23] >= 0)
    {
      v408 = v473[23];
    }

    else
    {
      v408 = *&v473[8];
    }

    std::string::append(&v461, v407, v408);
    if ((v473[23] & 0x80000000) != 0)
    {
      operator delete(*v473);
    }

    if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v469.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v467.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v468.__r_.__value_.__l.__data_);
    }

    std::to_string(&v468, 0.3);
    v409 = std::string::insert(&v468, 0, "d ", 2uLL);
    v410 = *&v409->__r_.__value_.__l.__data_;
    v469.__r_.__value_.__r.__words[2] = v409->__r_.__value_.__r.__words[2];
    *&v469.__r_.__value_.__l.__data_ = v410;
    v409->__r_.__value_.__l.__size_ = 0;
    v409->__r_.__value_.__r.__words[2] = 0;
    v409->__r_.__value_.__r.__words[0] = 0;
    v411 = std::string::append(&v469, "\n", 1uLL);
    v412 = *&v411->__r_.__value_.__l.__data_;
    *&v473[16] = *(&v411->__r_.__value_.__l + 2);
    *v473 = v412;
    v411->__r_.__value_.__l.__size_ = 0;
    v411->__r_.__value_.__r.__words[2] = 0;
    v411->__r_.__value_.__r.__words[0] = 0;
    if (v473[23] >= 0)
    {
      v413 = v473;
    }

    else
    {
      v413 = *v473;
    }

    if (v473[23] >= 0)
    {
      v414 = v473[23];
    }

    else
    {
      v414 = *&v473[8];
    }

    std::string::append(&v461, v413, v414);
    if ((v473[23] & 0x80000000) != 0)
    {
      operator delete(*v473);
    }

    if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v469.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v468.__r_.__value_.__l.__data_);
    }

    std::to_string(&v464, 0.1);
    v415 = std::string::insert(&v464, 0, "Kd ", 3uLL);
    v416 = *&v415->__r_.__value_.__l.__data_;
    v465.__r_.__value_.__r.__words[2] = v415->__r_.__value_.__r.__words[2];
    *&v465.__r_.__value_.__l.__data_ = v416;
    v415->__r_.__value_.__l.__size_ = 0;
    v415->__r_.__value_.__r.__words[2] = 0;
    v415->__r_.__value_.__r.__words[0] = 0;
    v417 = std::string::append(&v465, " ", 1uLL);
    v418 = *&v417->__r_.__value_.__l.__data_;
    v466.__r_.__value_.__r.__words[2] = v417->__r_.__value_.__r.__words[2];
    *&v466.__r_.__value_.__l.__data_ = v418;
    v417->__r_.__value_.__l.__size_ = 0;
    v417->__r_.__value_.__r.__words[2] = 0;
    v417->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v463, 0.8);
    if ((v463.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v419 = &v463;
    }

    else
    {
      v419 = v463.__r_.__value_.__r.__words[0];
    }

    if ((v463.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v420 = HIBYTE(v463.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v420 = v463.__r_.__value_.__l.__size_;
    }

    v421 = std::string::append(&v466, v419, v420);
    v422 = *&v421->__r_.__value_.__l.__data_;
    v467.__r_.__value_.__r.__words[2] = v421->__r_.__value_.__r.__words[2];
    *&v467.__r_.__value_.__l.__data_ = v422;
    v421->__r_.__value_.__l.__size_ = 0;
    v421->__r_.__value_.__r.__words[2] = 0;
    v421->__r_.__value_.__r.__words[0] = 0;
    v423 = std::string::append(&v467, " ", 1uLL);
    v424 = *&v423->__r_.__value_.__l.__data_;
    v468.__r_.__value_.__r.__words[2] = v423->__r_.__value_.__r.__words[2];
    *&v468.__r_.__value_.__l.__data_ = v424;
    v423->__r_.__value_.__l.__size_ = 0;
    v423->__r_.__value_.__r.__words[2] = 0;
    v423->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v462, 0.1);
    if ((v462.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v425 = &v462;
    }

    else
    {
      v425 = v462.__r_.__value_.__r.__words[0];
    }

    if ((v462.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v426 = HIBYTE(v462.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v426 = v462.__r_.__value_.__l.__size_;
    }

    v427 = std::string::append(&v468, v425, v426);
    v428 = *&v427->__r_.__value_.__l.__data_;
    v469.__r_.__value_.__r.__words[2] = v427->__r_.__value_.__r.__words[2];
    *&v469.__r_.__value_.__l.__data_ = v428;
    v427->__r_.__value_.__l.__size_ = 0;
    v427->__r_.__value_.__r.__words[2] = 0;
    v427->__r_.__value_.__r.__words[0] = 0;
    v429 = std::string::append(&v469, "\n", 1uLL);
    v430 = *&v429->__r_.__value_.__l.__data_;
    *&v473[16] = *(&v429->__r_.__value_.__l + 2);
    *v473 = v430;
    v429->__r_.__value_.__l.__size_ = 0;
    v429->__r_.__value_.__r.__words[2] = 0;
    v429->__r_.__value_.__r.__words[0] = 0;
    if (v473[23] >= 0)
    {
      v431 = v473;
    }

    else
    {
      v431 = *v473;
    }

    if (v473[23] >= 0)
    {
      v432 = v473[23];
    }

    else
    {
      v432 = *&v473[8];
    }

    std::string::append(&v461, v431, v432);
    if ((v473[23] & 0x80000000) != 0)
    {
      operator delete(*v473);
    }

    if (SHIBYTE(v469.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v469.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v462.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v462.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v468.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v468.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v467.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v467.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v463.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v463.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v466.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v466.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v465.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v465.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v464.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v464.__r_.__value_.__l.__data_);
    }

    std::string::append(&v461, "illum 0\n", 8uLL);
  }

  if (SHIBYTE(v460.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v460.__r_.__value_.__l.__data_);
  }

  sub_26234A32C(v473, v450);
  if (v480)
  {
    if ((v461.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v433 = &v461;
    }

    else
    {
      v433 = v461.__r_.__value_.__r.__words[0];
    }

    if ((v461.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v434 = HIBYTE(v461.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v434 = v461.__r_.__value_.__l.__size_;
    }

    sub_2621D552C(v473, v433, v434);
    if (!std::filebuf::close())
    {
      std::ios_base::clear(&v473[*(*v473 - 24)], *(&v474 + *(*v473 - 24)) | 4);
    }
  }

  else
  {
    v435 = sub_2621D552C(MEMORY[0x277D82670], "Write to ", 9);
    if ((v451 & 0x80u) == 0)
    {
      v436 = v450;
    }

    else
    {
      v436 = v450[0];
    }

    if ((v451 & 0x80u) == 0)
    {
      v437 = v451;
    }

    else
    {
      v437 = v450[1];
    }

    v438 = sub_2621D552C(v435, v436, v437);
    v439 = sub_2621D552C(v438, " failed", 7);
    std::ios_base::getloc((v439 + *(*v439 - 24)));
    v440 = std::locale::use_facet(&v469, MEMORY[0x277D82680]);
    (v440->__vftable[2].~facet_0)(v440, 10);
    std::locale::~locale(&v469);
    std::ostream::put();
    std::ostream::flush();
  }

  *v473 = *MEMORY[0x277D82810];
  v441 = *v473;
  v442 = *(MEMORY[0x277D82810] + 24);
  *&v473[*(*v473 - 24)] = v442;
  MEMORY[0x266727200](&v473[8]);
  std::ostream::~ostream();
  MEMORY[0x266727390](v481);
  if (SHIBYTE(v461.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v461.__r_.__value_.__l.__data_);
  }

  v470.__r_.__value_.__r.__words[0] = v441;
  *(v470.__r_.__value_.__r.__words + *(v441 - 24)) = v442;
  MEMORY[0x266727200](&v470.__r_.__value_.__r.__words[1]);
  std::ostream::~ostream();
  MEMORY[0x266727390](&v472);
  if (SHIBYTE(v449.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v449.__r_.__value_.__l.__data_);
  }

  if (v451 < 0)
  {
    operator delete(v450[0]);
  }

  if (v454 < 0)
  {
    operator delete(v452);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v457) < 0)
  {
    operator delete(__p);
  }

  v443 = *MEMORY[0x277D85DE8];
}