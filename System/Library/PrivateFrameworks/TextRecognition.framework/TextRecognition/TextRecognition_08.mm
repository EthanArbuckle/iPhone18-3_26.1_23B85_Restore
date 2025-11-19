void sub_1B41887E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void PolygonApproximateContourC(int32x2_t **a1, uint64_t *a2, float a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 - *a1;
  if (v8 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 - *a1;
  }

  v10 = 0;
  if (v7 != v6)
  {
    v11 = *a1;
    v12 = v9;
    do
    {
      v13 = *v11++;
      v10 = vadd_s32(v13, v10);
      --v12;
    }

    while (v12);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v10.i32[0] / v8;
  v18 = v6 + 1;
  v19 = v10.i32[1] / v8;
  do
  {
    if ((*(v18 - 1) - v17) * (*(v18 - 1) - v17) + (*v18 - v19) * (*v18 - v19) > v16)
    {
      v16 = (*(v18 - 1) - v17) * (*(v18 - 1) - v17) + (*v18 - v19) * (*v18 - v19);
      v15 = v14;
    }

    ++v14;
    v18 += 2;
  }

  while (v9 != v14);
  __p = 0;
  v23 = 0;
  v24 = 0;
  if (v7 != v6)
  {
    v20 = 0;
    v21 = v15;
    do
    {
      std::vector<PixelPosition>::push_back[abi:ne200100](&__p, &v6[(v21 + v20++) % (v8 - 1)]);
      v6 = *a1;
      v8 = a1[1] - *a1;
    }

    while (v8 > v20);
  }

  PolygonApproximateContour(&__p, a2, a3);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

void sub_1B4188954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void RectangleFinder::traceAllContoursWithoutFiltering(RectangleFinder *this@<X0>, const vImage_Buffer *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v39 = 0;
  v40 = 0uLL;
  v3 = *(this + 2);
  count = *(this + 1);
  if (v3)
  {
    v4 = *(this + 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *this;
    if (*this)
    {
      v6 = a2;
      v7 = malloc_type_calloc(v3, 8uLL, 0x10040436913F5uLL);
      v8 = 0;
      do
      {
        v7[v8++] = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
      }

      while (v3 != v8);
      v9 = 0;
      v27 = count - 1;
      do
      {
        *(v5 + v9) = v6;
        *(v5 + (count - 1) * v3 + v9++) = v6;
      }

      while (v3 != v9);
      v35 = v7;
      if (count >= 2)
      {
        v10 = (v5 + v3);
        v11 = count - 1;
        do
        {
          *v10 = v6;
          *(v10 - 1) = v6;
          v10 += v3;
          --v11;
        }

        while (v11);
      }

      v31 = v5;
      if (v27 > 1)
      {
        v30 = 0;
        v36 = (v7 + 1);
        v26 = v5 + 1;
        v12 = v5 + 1 + v3;
        v13 = 1;
        v14 = 2;
        v15 = 0x100000001;
        v33 = 1;
        while (1)
        {
          v28 = v14;
          if (v3 - 1 >= 2)
          {
            break;
          }

LABEL_42:
          ++v13;
          v14 = v28 + 1;
          ++v30;
          v15 += 0x100000000;
          v12 += v3;
          if (v13 == v27)
          {
            goto LABEL_43;
          }
        }

        v16 = 0;
        v17 = 0;
        v18 = v26 + v3 * v14;
        v32 = v26 + v3 * v30;
        while (1)
        {
          if (*(v12 + v16) == v6)
          {
            goto LABEL_41;
          }

          v19 = *&v36[8 * v16];
          v20 = *(v19 + 4 * v13);
          if (v20)
          {
            break;
          }

          if (*(v32 + v16) == v6)
          {
            *(v19 + 4 * v13) = v33;
            RectangleFinder::TraceSingleContour(v31, v35, v3, count, v15 + v16, 0, v33, v6, &v37);
            if (v39)
            {
              *&v40 = v39;
              operator delete(v39);
            }

            v39 = v37;
            v40 = v38;
            if (v38 != v37)
            {
              std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](a3, &v39);
            }

            ++v33;
            v19 = *&v36[8 * v16];
            v20 = *(v19 + 4 * v13);
            if (v20)
            {
              break;
            }

            if (*(v32 + v16) == v6)
            {
              goto LABEL_40;
            }
          }

          v20 = 0;
          v21 = 1;
          v22 = 1;
LABEL_28:
          if (*(v18 + v16) == v6)
          {
            v23 = (v19 + 4 * v13);
            if (!v20)
            {
              v20 = (*(v35 + (v17 >> 29)))[v13];
              *v23 = v20;
            }

            if (v23[1] != -1)
            {
              RectangleFinder::TraceSingleContour(v31, v35, v3, count, v15 + v16, v22, v20, v6, &v37);
              if (v39)
              {
                *&v40 = v39;
                operator delete(v39);
              }

              v39 = v37;
              v40 = v38;
              if (v38 == v37)
              {
                v24 = 1;
              }

              else
              {
                v24 = v21;
              }

              if ((v24 & 1) == 0)
              {
                std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](a3, &v39);
              }
            }

            goto LABEL_41;
          }

          if (!v20)
          {
LABEL_40:
            *(v19 + 4 * v13) = (*(v35 + (v17 >> 29)))[v13];
          }

LABEL_41:
          v17 += 0x100000000;
          if (v3 - 2 == ++v16)
          {
            goto LABEL_42;
          }
        }

        v21 = 0;
        v22 = 2;
        goto LABEL_28;
      }

LABEL_43:
      v25 = 0;
      do
      {
        free(v35[v25++]);
      }

      while (v3 != v25);
      free(v35);
      if (v39)
      {
        *&v40 = v39;
        operator delete(v39);
      }
    }
  }
}

void sub_1B4188D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(v13 - 104);
  if (v15)
  {
    *(v13 - 96) = v15;
    operator delete(v15);
  }

  *(v13 - 104) = a13;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100]((v13 - 104));
  _Unwind_Resume(a1);
}

void RectangleFinder::identifyRectangleContours(uint64_t *a1@<X2>, void *a2@<X8>)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v3 = *a1;
  if (a1[1] == *a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(&v47, *(v3 + v5), *(v3 + v5 + 8), (*(v3 + v5 + 8) - *(v3 + v5)) >> 3);
      v7 = v47;
      if ((v48 - v47) >= 0x11)
      {
        PolygonApproximateContourC(&v47, &v50, 20.0);
        if (v51 - v50 == 40)
        {
          std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](&v53, &v50);
        }

        v43 = 0;
        v44 = 0;
        __p = 0;
        std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(&__p, v47, v48, (v48 - v47) >> 3);
        RectangleFinder::generateConvexHull(&__p, &v45);
        if (__p)
        {
          v43 = __p;
          operator delete(__p);
        }

        v8 = v45;
        if (v46 != v45)
        {
          PolygonApproximateContourC(&v45, &v50, 20.0);
          if (v51 - v50 == 40)
          {
            std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](&v53, &v50);
          }

          v8 = v45;
        }

        if (v8)
        {
          v46 = v8;
          operator delete(v8);
        }

        v7 = v47;
      }

      if (v7)
      {
        v48 = v7;
        operator delete(v7);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      ++v6;
      v3 = *a1;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v6);
    v9 = v53;
    v10 = v54;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    if (v10 != v9)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(v9 + v11);
        if (*(v9 + v11 + 8) - v13 == 40)
        {
          v14 = *v13;
          if (*v13 == v13[8])
          {
            v15 = v13[1];
            if (v15 == v13[9])
            {
              v16 = v13[2];
              v17 = v13[3];
              v18 = sqrt(((v14 - v16) * (v14 - v16) + (v15 - v17) * (v15 - v17)));
              v19 = v13[6];
              v20 = v13[7];
              v21 = sqrt(((v14 - v19) * (v14 - v19) + (v15 - v20) * (v15 - v20)));
              v23 = v13[4];
              v22 = v13[5];
              v24 = sqrt(((v16 - v23) * (v16 - v23) + (v17 - v22) * (v17 - v22)));
              v25 = sqrt(((v23 - v19) * (v23 - v19) + (v22 - v20) * (v22 - v20)));
              v26 = v18 <= v24 || v25 <= v21;
              v27 = !v26;
              v28 = !v27 || v18 <= v21;
              v29 = v28 || v25 <= v24;
              if (!v29 || (v24 > v18 ? (v30 = v21 <= v25) : (v30 = 1), !v30 ? (v31 = v21 <= v18) : (v31 = 1), !v31 ? (v32 = v24 <= v25) : (v32 = 1), !v32))
              {
                if (v24 >= v21)
                {
                  v33 = v21;
                }

                else
                {
                  v33 = v24;
                }

                v34 = v33;
                if (v24 <= v21)
                {
                  v35 = v21;
                }

                else
                {
                  v35 = v24;
                }

                v36 = v34 / v35;
                if (v18 >= v25)
                {
                  v37 = v25;
                }

                else
                {
                  v37 = v18;
                }

                if (v18 <= v25)
                {
                  v18 = v25;
                }

                v38 = v37 / v18;
                if (v24 >= v21)
                {
                  v39 = v21;
                }

                else
                {
                  v39 = v24;
                }

                if (v24 > v21)
                {
                  v21 = v24;
                }

                if (v27)
                {
                  v18 = v21;
                  v40 = v39;
                }

                else
                {
                  v40 = v37;
                }

                if (v27)
                {
                  v36 = v38;
                }

                if (((1.0 - v36) * 100.0) < 20.0 && ((1.0 - (v40 / v18)) * 100.0) < 50.0)
                {
                  std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](a2, (v9 + v11));
                  v9 = v53;
                  v10 = v54;
                }
              }
            }
          }
        }

        ++v12;
        v11 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3) > v12);
    }
  }

  v50 = &v53;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&v50);
}

void sub_1B41890A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&a19);
  a19 = (v20 - 88);
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t RectangleFinder::pointAboveOrRightOfLineSegment(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIDWORD(a2);
  v4 = (HIDWORD(a1) - HIDWORD(a2)) * (a3 - a2) + (HIDWORD(a3) - HIDWORD(a2)) * (a2 - a1);
  if (v4)
  {
    if (v4 > 0)
    {
      return 1;
    }
  }

  else
  {
    if (SHIDWORD(a3) < SHIDWORD(a2))
    {
      LODWORD(v3) = HIDWORD(a3);
    }

    if (v3 < SHIDWORD(a1))
    {
      return 1;
    }
  }

  return 0;
}

float RectangleFinder::angleBetweenLines(RectangleFinder *this, CGPoint a2, CGPoint a3, CGPoint a4)
{
  v4 = ((a3.y - a2.y) * (a4.y - a2.y) + (a3.x - a2.x) * (a4.x - a2.x)) / (sqrt((a3.y - a2.y) * (a3.y - a2.y) + (a3.x - a2.x) * (a3.x - a2.x)) * sqrt((a4.y - a2.y) * (a4.y - a2.y) + (a4.x - a2.x) * (a4.x - a2.x)));
  v5 = -1.0;
  if (v4 >= -1.0)
  {
    v5 = v4;
    if (v4 > 1.0)
    {
      v5 = 1.0;
    }
  }

  return acos(v5) * 180.0 / 3.14159265;
}

uint64_t RectangleFinder::linesIntersect(RectangleFinder *this, CGPoint a2, CGPoint a3, CGPoint a4, CGPoint a5, CGPoint *a6)
{
  v6 = a3.x - a2.x;
  v7 = a3.y - a2.y;
  v8 = a5.x - a4.x;
  v9 = a5.y - a4.y;
  v10 = v6 * v9 - v8 * v7;
  result = 0;
  if (fabsf(v10) > 1.0e-10)
  {
    v12 = a2.x - a4.x;
    v13 = a2.y - a4.y;
    v14 = v10;
    v15 = (v6 * v13 - v7 * v12) / v14;
    if (v15 >= 0.0 && v15 <= 1.0)
    {
      v17 = (v8 * v13 - v9 * v12) / v14;
      if (v17 >= 0.0 && v17 <= 1.0)
      {
        if (a6)
        {
          v19 = v17;
          a6->x = a2.x + v19 * v6;
          a6->y = a2.y + v19 * v7;
        }

        return 1;
      }
    }
  }

  return result;
}

BOOL RectangleFinder::pointInPolygon(RectangleFinder *this, CGPoint *a2, CGPoint a3)
{
  v3 = 0;
  result = 0;
  p_y = &a2->y;
  v6 = 3;
  do
  {
    v7 = v6;
    v6 = v3;
    v8 = *p_y;
    y = a2[v7].y;
    v10 = *p_y <= a3.y && a3.y < y;
    if (v10 || (a3.y < v8 ? (v11 = y > a3.y) : (v11 = 1), !v11))
    {
      if (a3.x < *(p_y - 1) + (a3.y - v8) * (a2[v7].x - *(p_y - 1)) / (y - v8))
      {
        result = !result;
      }
    }

    ++v3;
    p_y += 2;
  }

  while (v6 != 3);
  return result;
}

float RectangleFinder::percentageOfPtsOnEdge(RectangleFinder *this, vImage_Buffer *a2, CGPoint *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = a3[v3++];
    v7 = vcvt_f32_f64(v6);
    v8 = vcvt_f32_f64(a3[v3 & 3]);
    *&v6.f64[0] = vabd_f32(v8, v7);
    v9 = vcgt_f32(vdup_lane_s32(*&v6.f64[0], 1), *&v6.f64[0]).u8[0];
    v10 = v8.f32[1];
    v11 = v7.f32[1];
    if (v9)
    {
      v12 = v7.f32[0];
      v7.i32[0] = v7.i32[1];
      v11 = v12;
      v13 = v8.f32[0];
    }

    else
    {
      v13 = v8.f32[1];
      v10 = v8.f32[0];
    }

    if (v7.f32[0] <= v10)
    {
      v15 = v13;
      v13 = v11;
    }

    else
    {
      v14 = v7.f32[0];
      v7.f32[0] = v10;
      v10 = v14;
      v15 = v11;
    }

    if (v13 < v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = -1;
    }

    if (v10 > v7.f32[0])
    {
      v17 = vabds_f32(v15, v13);
      v18 = v7.f32[0];
      v19 = v13;
      v20 = 0.0;
      v21 = v17 / (v10 - v7.f32[0]);
      do
      {
        v22 = v18 - 3;
        v23 = v18 + 3;
        v24 = v19 + 3;
        v25 = 0;
        if (v9)
        {
          do
          {
            v26 = v22;
            v27 = v19 - 4;
            do
            {
              ++v27;
              if (v26 >= 1 && v27 >= 1 && a2->height > v26 && a2->width > v27)
              {
                v25 |= *(a2->data + a2->rowBytes * v26 + v27) == 0;
              }
            }

            while (v27 < v24);
            v22 = v26 + 1;
          }

          while (v26 < v23);
        }

        else
        {
          do
          {
            v28 = v22;
            LODWORD(v29) = v19 - 4;
            do
            {
              v29 = (v29 + 1);
              if (v28 >= 1 && v29 >= 1 && a2->width > v28 && a2->height > v29)
              {
                v25 |= *(a2->data + a2->rowBytes * v29 + v28) == 0;
              }
            }

            while (v29 < v24);
            v22 = v28 + 1;
          }

          while (v28 < v23);
        }

        ++v4;
        v5 += v25 & 1;
        v20 = v21 + v20;
        if (v20 < 0.5)
        {
          v30 = 0;
        }

        else
        {
          v20 = v20 + -1.0;
          v30 = v16;
        }

        v19 += v30;
        ++v18;
      }

      while (v10 > v18);
    }
  }

  while (v3 != 4);
  return (v5 * 100.0) / v4;
}

uint64_t RectangleFinder::peakHistogramPtsInPolygon(RectangleFinder *this, vImage_Buffer *a2, CGPoint *a3)
{
  v32[258] = *MEMORY[0x1E69E9840];
  data = a2->data;
  bzero(v32, 0x800uLL);
  height = a2->height;
  if (height)
  {
    for (i = 0; i != height; ++i)
    {
      v8 = 0;
      v9 = 0;
      v10 = i;
      p_y = &a3->y;
      v12 = 3;
      do
      {
        v13 = v8;
        v14 = *p_y;
        y = a3[v12].y;
        v16 = *p_y >= v10 || y < v10;
        if (!v16 || (v14 >= v10 ? (v17 = y < v10) : (v17 = 0), v17))
        {
          *(&v32[256] + v9++) = (*(p_y - 1) + (i - v14) / (y - v14) * (a3[v12].x - *(p_y - 1)));
        }

        ++v8;
        p_y += 2;
        v12 = v13;
      }

      while (v13 != 3);
      if (v9 > 1)
      {
        v18 = 0;
        do
        {
          v19 = v18;
          v20 = *(&v32[256] + v18);
          v21 = v19 + 1;
          v22 = *(&v32[256] + v19 + 1);
          if (v20 > v22)
          {
            *(&v32[256] + v19) = v22;
            *(&v32[256] + v21) = v20;
            LODWORD(v21) = v19 - 1;
            if (!v19)
            {
              LODWORD(v21) = 0;
            }
          }

          v18 = v21;
        }

        while (v21 < v9 - 1);
      }

      if (v9 >= 1)
      {
        v23 = 0;
        width = a2->width;
        do
        {
          v25 = SLODWORD(v32[v23 + 256]);
          if (width <= v25)
          {
            break;
          }

          v26 = *(&v32[256] + ((v23 * 2) | 1));
          if (v26 >= 1)
          {
            if ((v25 & 0x80000000) != 0)
            {
              LODWORD(v25) = 0;
              LODWORD(v32[v23 + 256]) = 0;
            }

            if (width >= v26)
            {
              v26 = v26;
            }

            else
            {
              v26 = width;
            }

            *(&v32[256] + ((v23 * 2) | 1)) = v26;
            if (v25 < v26)
            {
              v27 = v26 - v25;
              v28 = &data[width * i + v25];
              do
              {
                v29 = *v28++;
                ++v32[v29];
                --v27;
              }

              while (v27);
            }
          }

          ++v23;
        }

        while (v9 > (v23 * 2));
      }
    }
  }

  v30 = 0;
  LODWORD(result) = 0;
  do
  {
    if (v32[v30] <= v32[result])
    {
      result = result;
    }

    else
    {
      result = v30;
    }

    ++v30;
  }

  while (v30 != 255);
  return result;
}

void RectangleFinder::bestContours(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, void *a5@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *a3;
  v7 = a3[1];
  if (v7 != *a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1.0;
    v12 = 20.0;
    v13 = 0.005;
    *&v14 = 63.333;
    do
    {
      v15 = *(v6 + v9);
      if (*(v6 + v9 + 8) - v15 == 40)
      {
        v16 = *v15;
        if (*v15 == v15[8])
        {
          v17 = v15[1];
          if (v17 == v15[9])
          {
            v18 = v15[2];
            v19 = v15[3];
            v20 = sqrt(((v16 - v18) * (v16 - v18) + (v17 - v19) * (v17 - v19)));
            v21 = v15[6];
            v22 = v15[7];
            v23 = sqrt(((v16 - v21) * (v16 - v21) + (v17 - v22) * (v17 - v22)));
            v24 = v15[4];
            v25 = v15[5];
            v26 = sqrt(((v18 - v24) * (v18 - v24) + (v19 - v25) * (v19 - v25)));
            v27 = sqrt(((v24 - v21) * (v24 - v21) + (v25 - v22) * (v25 - v22)));
            v28 = v20 <= v26 || v27 <= v23;
            v29 = !v28;
            v30 = !v29 || v20 <= v23;
            v31 = v30 || v27 <= v26;
            if (!v31 || (v26 > v20 ? (v32 = v23 <= v27) : (v32 = 1), !v32 ? (v33 = v23 <= v20) : (v33 = 1), !v33 ? (v34 = v26 <= v27) : (v34 = 1), !v34))
            {
              if (v26 >= v23)
              {
                v35 = v23;
              }

              else
              {
                v35 = v26;
              }

              v36 = v35;
              if (v26 <= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v26;
              }

              v38 = v36 / v37;
              if (v20 >= v27)
              {
                v39 = v27;
              }

              else
              {
                v39 = v20;
              }

              if (v20 <= v27)
              {
                v40 = v27;
              }

              else
              {
                v40 = v20;
              }

              v41 = v39 / v40;
              if (v26 >= v23)
              {
                v42 = v23;
              }

              else
              {
                v42 = v26;
              }

              if (v26 <= v23)
              {
                v43 = v23;
              }

              else
              {
                v43 = v26;
              }

              v44 = !v29;
              if (v29)
              {
                v45 = v43;
              }

              else
              {
                v45 = v40;
              }

              if (!v44)
              {
                v39 = v42;
                v38 = v41;
              }

              if (((v11 - v38) * 100.0) < v12 && ((v11 - (v39 / v45)) * 100.0) < 50.0 && v20 >= 31 && v26 >= 31 && v27 >= 31 && v23 >= 31)
              {
                if (v20 > v27)
                {
                  v27 = v20;
                }

                if (v26 <= v23)
                {
                  v26 = v23;
                }

                if (v27 * v26 > (*(a2 + 16) * v13 * *(a2 + 8)))
                {
                  v70 = *&v14;
                  v71 = v13;
                  v51 = v16;
                  v52 = v17;
                  v53 = v18;
                  v54 = v19;
                  v55 = v24;
                  v56 = v25;
                  v57 = v21;
                  v58 = v22;
                  v88.x = v16;
                  v88.y = v17;
                  v94.x = v18;
                  v94.y = v19;
                  v100.x = v21;
                  v100.y = v22;
                  v75 = RectangleFinder::angleBetweenLines(0x42480000, v88, v94, v100);
                  v89.x = v53;
                  v89.y = v54;
                  v95.x = v51;
                  v95.y = v52;
                  v101.x = v55;
                  v101.y = v56;
                  v74 = RectangleFinder::angleBetweenLines(v59, v89, v95, v101);
                  v90.x = v55;
                  v90.y = v56;
                  v96.x = v53;
                  v96.y = v54;
                  v102.x = v57;
                  v102.y = v58;
                  v73 = RectangleFinder::angleBetweenLines(v60, v90, v96, v102);
                  v91.x = v57;
                  v91.y = v58;
                  v97.x = v51;
                  v97.y = v52;
                  v103.x = v55;
                  v103.y = v56;
                  v72 = RectangleFinder::angleBetweenLines(v61, v91, v97, v103);
                  v69 = *(a1 + 88);
                  v92.x = v51;
                  v92.y = v52;
                  v98.x = v53;
                  v98.y = v54;
                  v104.x = v55;
                  v104.y = v56;
                  v106.x = v57;
                  v106.y = v58;
                  v63 = RectangleFinder::linesIntersect(v62, v92, v98, v104, v106, 0);
                  if (v63)
                  {
                    v64 = 0;
                  }

                  else
                  {
                    v93.x = v53;
                    v93.y = v54;
                    v99.x = v55;
                    v99.y = v56;
                    v105.x = v51;
                    v105.y = v52;
                    v107.x = v57;
                    v107.y = v58;
                    v63 = RectangleFinder::linesIntersect(v63, v93, v99, v105, v107, 0);
                    v64 = v63 == 0;
                  }

                  v80.x = v51;
                  v80.y = v52;
                  v81 = v53;
                  v82 = v54;
                  v83 = v55;
                  v84 = v56;
                  v85 = v57;
                  v86 = v58;
                  if (fmaxf(vabds_f32(v75, v74), vabds_f32(v73, v72)) >= 30.0)
                  {
                    v11 = 1.0;
                    v12 = 20.0;
                    v13 = v71;
                    *&v14 = v70;
                  }

                  else
                  {
                    *&v14 = v70;
                    v11 = 1.0;
                    v65 = vabds_f32(fmaxf(v23 / v20, v20 / v23), v69) >= 1.0 || !v64;
                    v12 = 20.0;
                    v13 = v71;
                    if (!v65)
                    {
                      v66 = a4[1];
                      *&v79.data = *a4;
                      *&v79.width = v66;
                      if (RectangleFinder::percentageOfPtsOnEdge(v63, &v79, &v80) > v70)
                      {
                        v68 = *(a2 + 16);
                        *&v79.data = *a2;
                        *&v79.width = v68;
                        if (RectangleFinder::peakHistogramPtsInPolygon(v67, &v79, &v80) - 70 <= 0xA2)
                        {
                          std::vector<std::vector<PixelPosition>>::push_back[abi:ne200100](a5, (v6 + v9));
                          v6 = *a3;
                          v7 = a3[1];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v10;
      v9 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) > v10);
  }
}

void sub_1B4189BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RectangleFinder::bestContour(RectangleFinder *a1, uint64_t a2, void *a3, _OWORD *a4)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = a3[1] - *a3;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = (*a3 + 8);
  v10 = 15.0;
  v11 = 0xFFFFFFFFLL;
  v12 = 66.667;
  v13 = 1.0;
  v14 = 20.0;
  v15 = 0.005;
  *&v16 = 0.95;
  do
  {
    v17 = *(v9 - 1);
    if (*v9 - v17 == 40)
    {
      v18 = *v17;
      if (*v17 == v17[8])
      {
        v19 = v17[1];
        if (v19 == v17[9])
        {
          v20 = v17[2];
          v21 = v17[3];
          v22 = sqrt(((v18 - v20) * (v18 - v20) + (v19 - v21) * (v19 - v21)));
          v23 = v17[6];
          v24 = v17[7];
          v25 = sqrt(((v18 - v23) * (v18 - v23) + (v19 - v24) * (v19 - v24)));
          v26 = v17[4];
          v27 = v17[5];
          v28 = sqrt(((v20 - v26) * (v20 - v26) + (v21 - v27) * (v21 - v27)));
          v29 = sqrt(((v26 - v23) * (v26 - v23) + (v27 - v24) * (v27 - v24)));
          v30 = v22 <= v28 || v29 <= v25;
          v31 = !v30;
          v32 = !v31 || v22 <= v25;
          v33 = v32 || v29 <= v28;
          if (!v33 || (v28 > v22 ? (v34 = v25 <= v29) : (v34 = 1), !v34 ? (v35 = v25 <= v22) : (v35 = 1), !v35 ? (v36 = v28 <= v29) : (v36 = 1), !v36))
          {
            if (v28 >= v25)
            {
              v37 = v25;
            }

            else
            {
              v37 = v28;
            }

            v38 = v37;
            if (v28 <= v25)
            {
              v39 = v25;
            }

            else
            {
              v39 = v28;
            }

            v40 = v38 / v39;
            if (v22 >= v29)
            {
              v41 = v29;
            }

            else
            {
              v41 = v22;
            }

            if (v22 <= v29)
            {
              v42 = v29;
            }

            else
            {
              v42 = v22;
            }

            v43 = v41 / v42;
            if (v28 >= v25)
            {
              v44 = v25;
            }

            else
            {
              v44 = v28;
            }

            if (v28 <= v25)
            {
              v45 = v25;
            }

            else
            {
              v45 = v28;
            }

            if (v31)
            {
              v42 = v45;
              v41 = v44;
              v40 = v43;
            }

            if (((v13 - v40) * 100.0) < v14 && ((v13 - (v41 / v42)) * 100.0) < 50.0 && v22 >= 31 && v28 >= 31 && v29 >= 31 && v25 >= 31)
            {
              if (v22 > v29)
              {
                v29 = v22;
              }

              if (v28 <= v25)
              {
                v28 = v25;
              }

              if (v29 * v28 > (*(a2 + 16) * v15 * *(a2 + 8)))
              {
                v79 = *&v16;
                v80 = v15;
                v81 = v12;
                v82 = v10;
                v51 = a1;
                v83 = a4;
                v52 = v18;
                v53 = v19;
                v54 = v20;
                v55 = v21;
                v56 = v26;
                v57 = v27;
                v58 = v23;
                v59 = v24;
                v93.x = v18;
                v93.y = v19;
                v99.x = v20;
                v99.y = v21;
                v105.x = v23;
                v105.y = v24;
                v78 = RectangleFinder::angleBetweenLines(a1, v93, v99, v105);
                v94.x = v54;
                v94.y = v55;
                v100.x = v52;
                v100.y = v53;
                v106.x = v56;
                v106.y = v57;
                v77 = RectangleFinder::angleBetweenLines(v60, v94, v100, v106);
                v95.x = v56;
                v95.y = v57;
                v101.x = v54;
                v101.y = v55;
                v107.x = v58;
                v107.y = v59;
                v76 = RectangleFinder::angleBetweenLines(v61, v95, v101, v107);
                v96.x = v58;
                v96.y = v59;
                v102.x = v52;
                v102.y = v53;
                v108.x = v56;
                v108.y = v57;
                v75 = RectangleFinder::angleBetweenLines(v62, v96, v102, v108);
                v74 = v51[22];
                v97.x = v52;
                v97.y = v53;
                v103.x = v54;
                v103.y = v55;
                v109.x = v56;
                v109.y = v57;
                v111.x = v58;
                v111.y = v59;
                v64 = RectangleFinder::linesIntersect(v63, v97, v103, v109, v111, 0);
                if (v64)
                {
                  v65 = 0;
                }

                else
                {
                  v98.x = v54;
                  v98.y = v55;
                  v104.x = v56;
                  v104.y = v57;
                  v110.x = v52;
                  v110.y = v53;
                  v112.x = v58;
                  v112.y = v59;
                  v64 = RectangleFinder::linesIntersect(v64, v98, v104, v110, v112, 0);
                  v65 = v64 == 0;
                }

                v66 = fmaxf(vabds_f32(v78, v77), vabds_f32(v76, v75));
                v85.x = v52;
                v85.y = v53;
                v86 = v54;
                v87 = v55;
                v88 = v56;
                v89 = v57;
                v90 = v58;
                v91 = v59;
                v10 = v82;
                a4 = v83;
                if (v66 >= (v10 + v10))
                {
                  v12 = v81;
                  v13 = 1.0;
                  *&v16 = v79;
                }

                else
                {
                  v13 = 1.0;
                  v67 = vabds_f32(fmaxf(v25 / v22, v22 / v25), v74) >= 1.0 || !v65;
                  v12 = v81;
                  *&v16 = v79;
                  if (!v67)
                  {
                    v68 = v66;
                    v69 = v83[1];
                    *&v84.data = *v83;
                    *&v84.width = v69;
                    v71 = RectangleFinder::percentageOfPtsOnEdge(v64, &v84, &v85);
                    if (v71 > (v81 * v79))
                    {
                      v72 = *(a2 + 16);
                      *&v84.data = *a2;
                      *&v84.width = v72;
                      if (RectangleFinder::peakHistogramPtsInPolygon(v70, &v84, &v85) - 70 >= 0xA3)
                      {
                        v11 = v11;
                      }

                      else
                      {
                        v12 = v71;
                        v10 = v68;
                        v11 = v6;
                      }
                    }

                    a4 = v83;
                  }
                }

                a1 = v51;
                v14 = 20.0;
                v15 = v80;
              }
            }
          }
        }
      }
    }

    ++v6;
    v9 += 3;
  }

  while (v8 != v6);
  return v11;
}

void RectangleFinder::findCodeRectPoints(RectangleFinder *this@<X0>, vImage_Buffer *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v8 = malloc_type_calloc(a2->rowBytes * a2->height, 1uLL, 0x100004077774924uLL);
  v92.data = v8;
  *&v92.height = *&a2->height;
  v92.rowBytes = a2->rowBytes;
  v9 = *&a2->width;
  v81 = *&a2->data;
  v82 = v9;
  if (a3 == 95192327)
  {
    v10 = 7;
    v11 = 3;
  }

  else
  {
    v10 = 13;
    v11 = 7;
  }

  adaptiveThresholdIntegralImage(&v81, &v92, v10, v11);
  if (TRShouldLogImages() >= 4)
  {
    v81 = *&v92.data;
    v82 = *&v92.width;
    writeBufferWithMetadata(&v81, @"/tmp/CoreRecognitionImages/Debug/threshold200.png", 0);
  }

  RectangleFinder::TraceAllContours(&v92, 255, &v90);
  v12 = *&a2->width;
  v81 = *&a2->data;
  v82 = v12;
  v88 = v92;
  RectangleFinder::bestContours(this, &v81, &v90, &v88, v89);
  v13 = *&a2->width;
  v81 = *&a2->data;
  v82 = v13;
  v88 = v92;
  *(this + 28) = RectangleFinder::bestContour(this, &v81, &v90, &v88);
  if (TRShouldLogImages() >= 4)
  {
    v85 = 0;
    v86 = 0;
    v87 = 0;
    std::vector<std::vector<PixelPosition>>::__init_with_size[abi:ne200100]<std::vector<PixelPosition>*,std::vector<PixelPosition>*>(&v85, v90, v91, 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3));
    data = a2->data;
    height = a2->height;
    width = a2->width;
    rowBytes = a2->rowBytes;
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v19 = CGBitmapContextCreate(data, width, height, 8uLL, rowBytes, DeviceGray, 0);
    CGColorSpaceRelease(DeviceGray);
    Image = CGBitmapContextCreateImage(v19);
    CGContextRelease(v19);
    v21 = CGImageGetWidth(Image);
    v22 = CGImageGetHeight(Image);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v24 = malloc_type_malloc(v22 * 4 * v21, 0x100004077774924uLL);
    v25 = CGBitmapContextCreate(v24, v21, v22, 8uLL, 4 * v21, DeviceRGB, 5u);
    CGColorSpaceRelease(DeviceRGB);
    v93.size.width = v21;
    v93.origin.x = 0.0;
    v93.origin.y = 0.0;
    v93.size.height = v22;
    CGContextDrawImage(v25, v93, Image);
    CGImageRelease(Image);
    CGContextTranslateCTM(v25, 0.0, v22);
    CGContextScaleCTM(v25, 1.0, -1.0);
    v26 = v85;
    if (v86 - v85 >= 1)
    {
      v27 = 0;
      if (0xAAAAAAAAAAAAAAABLL * ((v86 - v85) >> 3) <= 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = 0xAAAAAAAAAAAAAAABLL * ((v86 - v85) >> 3);
      }

      do
      {
        if (*(v26 + 24 * v27 + 8) - *(v26 + 24 * v27) >= 9uLL)
        {
          v29 = rand();
          v30 = rand();
          v31 = rand();
          v32 = (10 * v29) / 10.0;
          v33 = (10 * v30) / 10.0;
          v34 = (10 * v31) / 10.0;
          v35 = v32;
          v36 = v33;
          v37 = v34;
          CGContextSetRGBStrokeColor(v25, v32, v33, v34, 0.0);
          CGContextSetRGBFillColor(v25, v35, v36, v37, 0.0);
          CGContextSetLineWidth(v25, 1.0);
          CGContextBeginPath(v25);
          CGContextMoveToPoint(v25, **(v85 + 24 * v27), *(*(v85 + 24 * v27) + 4));
          CGContextSetRGBStrokeColor(v25, v35, v36, v37, 1.0);
          CGContextSetRGBFillColor(v25, v35, v36, v37, 1.0);
          CGContextSetLineWidth(v25, 1.0);
          v38 = *(v85 + 24 * v27);
          if ((*(v85 + 24 * v27 + 8) - v38) >= 9)
          {
            v39 = 0;
            v40 = 1;
            do
            {
              CGContextAddLineToPoint(v25, *(v38 + v39 + 8), *(v38 + v39 + 12));
              ++v40;
              v38 = *(v85 + 24 * v27);
              v39 += 8;
            }

            while (v40 < (*(v85 + 24 * v27 + 8) - v38) >> 3);
          }

          CGContextStrokePath(v25);
          v26 = v85;
          v41 = *(v85 + 24 * v27);
          if (*(v85 + 24 * v27 + 8) != v41)
          {
            v42 = 0;
            v43 = 0;
            do
            {
              v94.origin.x = *(v41 + v42);
              v94.origin.y = *(v41 + v42 + 4);
              v94.size.width = 3.0;
              v94.size.height = 3.0;
              CGContextFillRect(v25, v94);
              ++v43;
              v26 = v85;
              v41 = *(v85 + 24 * v27);
              v42 += 8;
            }

            while (v43 < (*(v85 + 24 * v27 + 8) - v41) >> 3);
          }
        }

        ++v27;
      }

      while (v27 != v28);
    }

    v44 = CGBitmapContextCreateImage(v25);
    CGContextRelease(v25);
    free(v24);
    *&v81.x = &v85;
    std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&v81);
    writeCGImageWithMetadata(v44, @"/tmp/CoreRecognitionImages/Debug/contours.png", 0);
    CGImageRelease(v44);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v45 = *(this + 28);
  if ((v45 & 0x80000000) == 0)
  {
    v46 = *(v90 + 24 * v45);
    v47 = *(v46 + 16);
    v48.i64[0] = *v46;
    v48.i64[1] = HIDWORD(*v46);
    v49 = vcvtq_f64_s64(v48);
    v48.i64[0] = v47;
    v48.i64[1] = SDWORD1(v47);
    v50 = vcvtq_f64_s64(v48);
    v48.i64[0] = *(v46 + 8);
    v48.i64[1] = HIDWORD(*v46);
    v51 = vcvtq_f64_s64(v48);
    v48.i64[0] = SDWORD2(v47);
    v48.i64[1] = SHIDWORD(v47);
    v83 = v50;
    v84 = vcvtq_f64_s64(v48);
    v81 = v49;
    v82 = v51;
    std::vector<CRRectCorners>::push_back[abi:ne200100](a4, &v81);
  }

  v52 = v90;
  if (v91 != v90)
  {
    v53 = 0;
    do
    {
      v54 = 0;
      v55 = *(v52 + 24 * v53);
      v56 = *(v55 + 16);
      v57.i64[0] = *v55;
      v57.i64[1] = HIDWORD(*v55);
      v58 = vcvtq_f64_s64(v57);
      v57.i64[0] = v56;
      v57.i64[1] = SDWORD1(v56);
      v59 = vcvtq_f64_s64(v57);
      v57.i64[0] = *(v55 + 8);
      v57.i64[1] = HIDWORD(*v55);
      v60 = vcvtq_f64_s64(v57);
      v57.i64[0] = SDWORD2(v56);
      v57.i64[1] = SHIDWORD(v56);
      v83 = v59;
      v84 = vcvtq_f64_s64(v57);
      v81 = v58;
      v82 = v60;
      v61 = a2->data;
      do
      {
        v62 = &v81.x + 2 * v54;
        v64 = *v62;
        v63 = v62[1];
        v65 = (*v62 + -2.0);
        v66 = *v62 + 2.0;
        v67 = v65;
        if (v66 >= v65)
        {
          v68 = (v63 + -2.0);
          v69 = v63 + 2.0;
          do
          {
            if (v69 >= v68)
            {
              v70 = v68;
              v71 = v68;
              do
              {
                if (v65 >= 1 && v71 >= 1 && a2->width > v65 && a2->height > v71 && v61[(v65 + v71 * a2->rowBytes)] < v61[(v64 + a2->rowBytes * v63)])
                {
                  v64 = v67;
                  v63 = v70;
                }

                v70 = ++v71;
              }

              while (v69 >= v71);
            }

            v67 = ++v65;
          }

          while (v66 >= v65);
        }

        *v62 = v64;
        v62[1] = v63;
        ++v54;
      }

      while (v54 != 4);
      v72 = a2->width;
      v73 = a2->height;
      v74 = v81;
      v95.origin.x = 0.0;
      v95.origin.y = 0.0;
      v95.size.width = v72;
      v95.size.height = v73;
      if (CGRectContainsPoint(v95, v81))
      {
        v75 = v82;
        v96.origin.x = 0.0;
        v96.origin.y = 0.0;
        v96.size.width = v72;
        v96.size.height = v73;
        if (CGRectContainsPoint(v96, v82))
        {
          v97.origin.x = 0.0;
          v97.origin.y = 0.0;
          v97.size.width = v72;
          v97.size.height = v73;
          y = v83.y;
          x = v83.x;
          if (CGRectContainsPoint(v97, v83))
          {
            v98.origin.x = 0.0;
            v98.origin.y = 0.0;
            v98.size.width = v72;
            v76 = v84.f64[1];
            v98.size.height = v73;
            v77 = v84.f64[0];
            if (CGRectContainsPoint(v98, v84))
            {
              v78 = a4[1];
              if (v78 == *a4 || *(v78 - 64) != v74.x || *(v78 - 56) != v74.y || *(v78 - 48) != v75.x || *(v78 - 40) != v75.y || *(v78 - 32) != x || *(v78 - 24) != y || *(v78 - 16) != v77 || *(v78 - 8) != v76)
              {
                std::vector<CRRectCorners>::push_back[abi:ne200100](a4, &v81);
              }
            }
          }
        }
      }

      ++v53;
      v52 = v90;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3) > v53);
  }

  free(v8);
  *&v81.x = v89;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&v81);
  *&v81.x = &v90;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&v81);
}

void sub_1B418A874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, char a31)
{
  v33 = *v31;
  if (*v31)
  {
    *(v31 + 8) = v33;
    operator delete(v33);
  }

  a11 = &a28;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&a11);
  a28 = &a31;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void std::vector<CRRectCorners>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = *a1;
    v10 = v3 - *a1;
    v11 = v10 >> 6;
    v12 = (v10 >> 6) + 1;
    if (v12 >> 58)
    {
      std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
    }

    v13 = v4 - v9;
    if (v13 >> 5 > v12)
    {
      v12 = v13 >> 5;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFC0)
    {
      v14 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = (v11 << 6);
    v16 = a2[1];
    *v15 = *a2;
    v15[1] = v16;
    v17 = a2[3];
    v15[2] = a2[2];
    v15[3] = v17;
    v8 = (v11 << 6) + 64;
    v18 = &v15[-4 * (v10 >> 6)];
    memcpy(v18, v9, v10);
    *a1 = v18;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    v8 = (v3 + 4);
  }

  *(a1 + 8) = v8;
}

void PolygonApproximateContour(uint64_t *a1, uint64_t *a2, float a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = &v6[-*a1];
  v8 = v7 >> 3;
  if ((v7 >> 3) >= 3)
  {
    v10 = 0;
    v11 = 0;
    v12 = *v5;
    v13 = v5 + v7;
    v14 = *(v13 - 8);
    v15 = *(v13 - 4);
    v16 = (v5 + 4);
    v17 = *(v5 + 4);
    v18 = v14;
    v19 = v15;
    v20 = v18 - v12;
    v21 = v19 - v17;
    v22 = (v21 * v21) + (v20 * v20);
    v23 = sqrtf(v22);
    v24 = 0.0;
    do
    {
      v25 = *(v16 - 1);
      v26 = *v16;
      v27 = ((v21 * (v26 - v17)) + ((v25 - v12) * v20)) / v22;
      if (v27 < 0.0 || v27 > 1.0)
      {
        v29 = ((v26 - v17) * (v26 - v17)) + ((v25 - v12) * (v25 - v12));
        v30 = ((v26 - v19) * (v26 - v19)) + ((v25 - v18) * (v25 - v18));
        v31 = sqrtf(v30);
        v32 = sqrtf(v29);
        if (v29 >= v30)
        {
          v33 = v31;
        }

        else
        {
          v33 = v32;
        }
      }

      else
      {
        v33 = v23 * fabsf((((v17 - v26) * v20) - ((v12 - v25) * v21)) / v22);
      }

      v16 += 2;
      if (v33 > v24)
      {
        v11 = v10;
        v24 = v33;
      }

      ++v10;
    }

    while (v8 != v10);
    if (v24 <= a3)
    {
      a2[1] = *a2;
      std::vector<PixelPosition>::push_back[abi:ne200100](a2, v5);
      v43 = (a1[1] - 8);

      std::vector<PixelPosition>::push_back[abi:ne200100](a2, v43);
    }

    else
    {
      v34 = 8 * v11 + 8;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      std::vector<PixelPosition>::__init_with_size[abi:ne200100]<std::__wrap_iter<PixelPosition const*>,std::__wrap_iter<PixelPosition const*>>(&v53, v5, v34 + v5, v34 >> 3);
      v35 = a1[1];
      v36 = v34 + *a1;
      v51 = 0;
      v52 = 0;
      v50 = 0;
      std::vector<PixelPosition>::__init_with_size[abi:ne200100]<std::__wrap_iter<PixelPosition const*>,std::__wrap_iter<PixelPosition const*>>(&v50, v36, v35, (v35 - v36) >> 3);
      v47 = 0;
      v48 = 0;
      v49 = 0;
      __p = 0;
      v45 = 0;
      v46 = 0;
      PolygonApproximateContour(&v53, &v47, a3);
      PolygonApproximateContour(&v50, &__p, a3);
      a2[1] = *a2;
      if (v48 != v47)
      {
        v37 = 0;
        if (((v48 - v47) >> 3) <= 1)
        {
          v38 = 1;
        }

        else
        {
          v38 = (v48 - v47) >> 3;
        }

        do
        {
          std::vector<PixelPosition>::push_back[abi:ne200100](a2, v47 + v37);
          v37 += 8;
          --v38;
        }

        while (v38);
      }

      v39 = __p;
      v40 = (v45 - __p) >> 3;
      if (v40 >= 2)
      {
        v41 = v40 - 1;
        v42 = 8;
        do
        {
          std::vector<PixelPosition>::push_back[abi:ne200100](a2, __p + v42);
          v42 += 8;
          --v41;
        }

        while (v41);
        v39 = __p;
      }

      if (v39)
      {
        v45 = v39;
        operator delete(v39);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }
    }
  }

  else if (a2 != a1)
  {

    std::vector<PixelPosition>::__assign_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(a2, v5, v6, v8);
  }
}

void sub_1B418ACD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<PixelPosition>::__assign_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<PixelPosition>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<PixelPosition>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<PixelPosition>::__init_with_size[abi:ne200100]<std::__wrap_iter<PixelPosition const*>,std::__wrap_iter<PixelPosition const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PixelPosition>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B418AF0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<PixelPosition>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<PixelPosition>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::vector<std::vector<PixelPosition>>::__construct_one_at_end[abi:ne200100]<std::vector<PixelPosition> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<PixelPosition>>::__emplace_back_slow_path<std::vector<PixelPosition> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<PixelPosition>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<PixelPosition>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B418B144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<PixelPosition>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<PixelPosition>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<PixelPosition>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<PixelPosition>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<PixelPosition>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PixelPosition>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B418B2F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,false>(int32x2_t *result, int32x2_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v112 = a2[-1].i32[0];
      v113 = v112 == v9->i32[0];
      v114 = v112 < v9->i32[0];
      if (v113)
      {
        v114 = a2[-1].i32[1] < v9->i32[1];
      }

      if (v114)
      {
        v96 = *v9;
LABEL_144:
        *v9 = a2[-1];
LABEL_145:
        a2[-1] = v96;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,PixelPosition *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = a2[-1].i32[0];
    v15 = a2[-1].i32[1];
    if (v12 >= 0x81)
    {
      v16 = v13->i32[0];
      v17 = v13->i32[1];
      v18 = v13->i32[0] < v9->i32[0];
      if (v13->i32[0] == v9->i32[0])
      {
        v18 = v17 < v9->i32[1];
      }

      v19 = v15 < v17;
      v113 = v14 == v16;
      v20 = v14 < v16;
      if (v113)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      if (v18)
      {
        v22 = *v9;
        if (v21)
        {
          *v9 = a2[-1];
          goto LABEL_45;
        }

        *v9 = *v13;
        *v13 = v22;
        v36 = a2[-1].i32[0];
        v113 = v36 == v22.i32[0];
        v37 = v36 < v22.i32[0];
        if (v113)
        {
          v37 = a2[-1].i32[1] < v22.i32[1];
        }

        if (v37)
        {
          *v13 = a2[-1];
LABEL_45:
          a2[-1] = v22;
        }
      }

      else if (v21)
      {
        v30 = *v13;
        *v13 = a2[-1];
        a2[-1] = v30;
        v31 = v13->i32[0] < v9->i32[0];
        if (v13->i32[0] == v9->i32[0])
        {
          v31 = v13->i32[1] < v9->i32[1];
        }

        if (v31)
        {
          v32 = *v9;
          *v9 = *v13;
          *v13 = v32;
        }
      }

      v39 = v13[-1].i32[0];
      v40 = v13[-1].i32[1];
      v38 = v13 - 1;
      v41 = v9[1].i32[0];
      v113 = v39 == v41;
      v42 = v39 < v41;
      if (v113)
      {
        v42 = v40 < v9[1].i32[1];
      }

      v43 = a2[-2].i32[0];
      v44 = a2[-2].i32[1] < v40;
      v113 = v43 == v39;
      v45 = v43 < v39;
      if (!v113)
      {
        v44 = v45;
      }

      if (v42)
      {
        v46 = v9[1];
        if (v44)
        {
          v9[1] = a2[-2];
          goto LABEL_69;
        }

        v9[1] = *v38;
        *v38 = v46;
        v53 = a2[-2].i32[0];
        v113 = v53 == v46.i32[0];
        v54 = v53 < v46.i32[0];
        if (v113)
        {
          v54 = a2[-2].i32[1] < v46.i32[1];
        }

        if (v54)
        {
          *v38 = a2[-2];
LABEL_69:
          a2[-2] = v46;
        }
      }

      else if (v44)
      {
        v47 = *v38;
        *v38 = a2[-2];
        a2[-2] = v47;
        v48 = v9[1].i32[0];
        v49 = v38->i32[0] < v48;
        if (v38->i32[0] == v48)
        {
          v49 = v13[-1].i32[1] < v9[1].i32[1];
        }

        if (v49)
        {
          v50 = v9[1];
          v9[1] = *v38;
          *v38 = v50;
        }
      }

      v56 = v13[1].i32[0];
      v57 = v13[1].i32[1];
      v55 = v13 + 1;
      v58 = v9[2].i32[0];
      v113 = v56 == v58;
      v59 = v56 < v58;
      if (v113)
      {
        v59 = v57 < v9[2].i32[1];
      }

      v60 = a2[-3].i32[0];
      v61 = a2[-3].i32[1] < v57;
      v113 = v60 == v56;
      v62 = v60 < v56;
      if (!v113)
      {
        v61 = v62;
      }

      if (v59)
      {
        v63 = v9[2];
        if (v61)
        {
          v9[2] = a2[-3];
          goto LABEL_86;
        }

        v9[2] = *v55;
        *v55 = v63;
        v68 = a2[-3].i32[0];
        v113 = v68 == v63.i32[0];
        v69 = v68 < v63.i32[0];
        if (v113)
        {
          v69 = a2[-3].i32[1] < v63.i32[1];
        }

        if (v69)
        {
          *v55 = a2[-3];
LABEL_86:
          a2[-3] = v63;
        }
      }

      else if (v61)
      {
        v64 = *v55;
        *v55 = a2[-3];
        a2[-3] = v64;
        v65 = v9[2].i32[0];
        v66 = v55->i32[0] < v65;
        if (v55->i32[0] == v65)
        {
          v66 = v13[1].i32[1] < v9[2].i32[1];
        }

        if (v66)
        {
          v67 = v9[2];
          v9[2] = *v55;
          *v55 = v67;
        }
      }

      v70 = v13->i32[0];
      v71 = v13->i32[1];
      v72 = v38->i32[0];
      v73 = v13[-1].i32[1];
      if (v13->i32[0] == v38->i32[0])
      {
        v74 = v71 < v73;
      }

      else
      {
        v74 = v13->i32[0] < v38->i32[0];
      }

      v75 = v55->i32[0];
      v76 = v13[1].i32[1];
      v77 = v76 < v71;
      v113 = v55->i32[0] == v70;
      v78 = v55->i32[0] < v70;
      if (!v113)
      {
        v77 = v78;
      }

      if (v74)
      {
        v79 = *v38;
        if (v77)
        {
          *v38 = *v55;
          *v55 = v79;
          v79 = *v13;
        }

        else
        {
          *v38 = *v13;
          *v13 = v79;
          v82 = v76 < v79.i32[1];
          if (v75 != v79.i32[0])
          {
            v82 = v75 < v79.i32[0];
          }

          if (v82)
          {
            v83 = *v55;
            *v13 = *v55;
            *v55 = v79;
            v79 = v83;
          }
        }
      }

      else
      {
        v79 = *v13;
        if (v77)
        {
          v80 = *v55;
          *v13 = *v55;
          *v55 = v79;
          v81 = v73 > v80.i32[1];
          if (v72 != v80.i32[0])
          {
            v81 = v72 > v80.i32[0];
          }

          if (v81)
          {
            v79 = *v38;
            *v38 = v80;
            *v13 = v79;
          }

          else
          {
            v79 = v80;
          }
        }
      }

      v84 = *v9;
      *v9 = v79;
      *v13 = v84;
      if (a5)
      {
        goto LABEL_109;
      }

      goto LABEL_106;
    }

    v23 = v9->i32[0];
    v24 = v9->i32[1];
    v25 = v9->i32[0] < v13->i32[0];
    if (v9->i32[0] == v13->i32[0])
    {
      v25 = v24 < v13->i32[1];
    }

    v26 = v15 < v24;
    v113 = v14 == v23;
    v27 = v14 < v23;
    if (v113)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    if (v25)
    {
      v29 = *v13;
      if (v28)
      {
        *v13 = a2[-1];
        goto LABEL_62;
      }

      *v13 = *v9;
      *v9 = v29;
      v51 = a2[-1].i32[0];
      v113 = v51 == v29.i32[0];
      v52 = v51 < v29.i32[0];
      if (v113)
      {
        v52 = a2[-1].i32[1] < v29.i32[1];
      }

      if (v52)
      {
        *v9 = a2[-1];
LABEL_62:
        a2[-1] = v29;
      }

LABEL_63:
      if (a5)
      {
        goto LABEL_109;
      }

      goto LABEL_106;
    }

    if (!v28)
    {
      goto LABEL_63;
    }

    v33 = *v9;
    *v9 = a2[-1];
    a2[-1] = v33;
    v34 = v9->i32[0] < v13->i32[0];
    if (v9->i32[0] == v13->i32[0])
    {
      v34 = v9->i32[1] < v13->i32[1];
    }

    if (!v34)
    {
      goto LABEL_63;
    }

    v35 = *v13;
    *v13 = *v9;
    *v9 = v35;
    if (a5)
    {
      goto LABEL_109;
    }

LABEL_106:
    v85 = v9[-1].i32[0];
    v113 = v85 == v9->i32[0];
    v86 = v85 < v9->i32[0];
    if (v113)
    {
      v86 = v9[-1].i32[1] < v9->i32[1];
    }

    if (!v86)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PixelPosition *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_114;
    }

LABEL_109:
    v87 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PixelPosition *,std::__less<void,void> &>(v9, a2);
    if ((v88 & 1) == 0)
    {
      goto LABEL_112;
    }

    v89 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(v9, v87);
    v9 = (v87 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>((v87 + 1), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v87;
      if (v89)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v89)
    {
LABEL_112:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,false>(v8, v87, a3, -v11, a5 & 1);
      v9 = (v87 + 1);
LABEL_114:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,0>(v9, &v9[1], &v9[2], &a2[-1]);
    }

    if (v12 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,0>(v9, &v9[1], &v9[2], &v9[3]);
      v99 = a2[-1].i32[0];
      v100 = v9[3].i32[0];
      v113 = v99 == v100;
      v101 = v99 < v100;
      if (v113)
      {
        v101 = a2[-1].i32[1] < v9[3].i32[1];
      }

      if (v101)
      {
        v102 = v9[3];
        v9[3] = a2[-1];
        a2[-1] = v102;
        v102.i32[0] = v9[3].i32[0];
        v103 = v9[2].i32[0];
        v113 = v102.i32[0] == v103;
        v104 = v102.i32[0] < v103;
        if (v113)
        {
          v104 = v9[3].i32[1] < v9[2].i32[1];
        }

        if (v104)
        {
          v106 = v9[2];
          v105 = v9[3];
          v9[2] = v105;
          v9[3] = v106;
          v107 = v9[1].i32[0];
          v113 = v107 == v105.i32[0];
          v108 = v107 > v105.i32[0];
          if (v113)
          {
            v108 = v9[1].i32[1] > v105.i32[1];
          }

          if (v108)
          {
            v109 = v9[1];
            v9[1] = v105;
            v9[2] = v109;
            v110 = v9->i32[1] > v105.i32[1];
            if (v9->i32[0] != v105.i32[0])
            {
              v110 = v9->i32[0] > v105.i32[0];
            }

            if (v110)
            {
              v111 = *v9;
              *v9 = v105;
              v9[1] = v111;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_11;
  }

  v90 = v9[1].i32[0];
  v91 = v9[1].i32[1];
  v92 = v90 < v9->i32[0];
  if (v90 == v9->i32[0])
  {
    v92 = v91 < v9->i32[1];
  }

  v93 = a2[-1].i32[0];
  v94 = a2[-1].i32[1] < v91;
  v113 = v93 == v90;
  v95 = v93 < v90;
  if (!v113)
  {
    v94 = v95;
  }

  if (v92)
  {
    v96 = *v9;
    if (v94)
    {
      goto LABEL_144;
    }

    *v9 = v9[1];
    v9[1] = v96;
    v97 = a2[-1].i32[0];
    v113 = v97 == v96.i32[0];
    v98 = v97 < v96.i32[0];
    if (v113)
    {
      v98 = a2[-1].i32[1] < v96.i32[1];
    }

    if (v98)
    {
      v9[1] = a2[-1];
      goto LABEL_145;
    }
  }

  else if (v94)
  {
    v115 = v9[1];
    v9[1] = a2[-1];
    a2[-1] = v115;
    v115.i32[0] = v9[1].i32[0];
    v113 = v115.i32[0] == v9->i32[0];
    v116 = v115.i32[0] < v9->i32[0];
    if (v113)
    {
      v116 = v9[1].i32[1] < v9->i32[1];
    }

    if (v116)
    {
      *v9->i8 = vextq_s8(*v9->i8, *v9->i8, 8uLL);
    }
  }

  return result;
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,0>(int *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 < result[1];
  if (*a2 != *result)
  {
    v6 = *a2 < *result;
  }

  LODWORD(v7) = a3[1];
  v8 = v7 < v5;
  v9 = *a3 == v4;
  v10 = *a3 < v4;
  if (!v9)
  {
    v8 = v10;
  }

  if (v6)
  {
    v11 = *result;
    if (v8)
    {
      *result = *a3;
      *a3 = v11;
      v7 = HIDWORD(v11);
    }

    else
    {
      *result = *a2;
      *a2 = v11;
      LODWORD(v7) = a3[1];
      v14 = *a3 < v11;
      if (*a3 == v11)
      {
        v14 = v7 < SHIDWORD(v11);
      }

      if (v14)
      {
        *a2 = *a3;
        *a3 = v11;
        v7 = HIDWORD(v11);
      }
    }
  }

  else if (v8)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v13 = *a2 < *result;
    if (*a2 == *result)
    {
      v13 = a2[1] < result[1];
    }

    if (v13)
    {
      v7 = *result;
      *result = *a2;
      *a2 = v7;
      LODWORD(v7) = a3[1];
    }

    else
    {
      v7 = HIDWORD(v12);
    }
  }

  v15 = a4[1] < v7;
  if (*a4 != *a3)
  {
    v15 = *a4 < *a3;
  }

  if (v15)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v17 = a3[1] < a2[1];
    }

    if (v17)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = *a2 < *result;
      if (*a2 == *result)
      {
        v19 = a2[1] < result[1];
      }

      if (v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
      }
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4[2];
        v6 = v4[3];
        v7 = *v4;
        v8 = v4[1];
        v4 = v2;
        v9 = v6 < v8;
        v10 = v5 == v7;
        v11 = v5 < v7;
        if (!v10)
        {
          v9 = v11;
        }

        if (v9)
        {
          v12 = *v4;
          v13 = HIDWORD(*v4);
          v14 = v3;
          while (1)
          {
            v15 = result + v14;
            *(result + v14 + 8) = *(result + v14);
            if (!v14)
            {
              break;
            }

            v16 = *(v15 - 2);
            v17 = *(v15 - 1) > v13;
            v10 = v16 == v12;
            v18 = v16 > v12;
            if (!v10)
            {
              v17 = v18;
            }

            v14 -= 8;
            if (!v17)
            {
              v19 = (result + v14 + 8);
              goto LABEL_14;
            }
          }

          v19 = result;
LABEL_14:
          *v19 = v12;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

_DWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    while (result + 2 != a2)
    {
      v2 = result[2];
      v3 = result[3];
      v4 = *result;
      v5 = result[1];
      result += 2;
      v6 = v3 < v5;
      v7 = v2 == v4;
      v8 = v2 < v4;
      if (!v7)
      {
        v6 = v8;
      }

      if (v6)
      {
        v9 = *result;
        v10 = HIDWORD(*result);
        v11 = result;
        do
        {
          v12 = v11;
          v13 = *--v11;
          *v12 = v13;
          v14 = *(v12 - 4);
          v15 = *(v12 - 3) > v10;
          v7 = v14 == v9;
          v16 = v14 > v9;
          if (!v7)
          {
            v15 = v16;
          }
        }

        while (v15);
        *v11 = v9;
      }
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PixelPosition *,std::__less<void,void> &>(int *a1, void *a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  v4 = *(a2 - 2);
  v5 = v4 == *a1;
  v6 = v4 > *a1;
  if (v5)
  {
    v6 = *(a2 - 1) > v3;
  }

  if (v6)
  {
    v7 = a1;
    do
    {
      v8 = v7[2];
      v9 = v7[3];
      v7 += 2;
      v10 = v9 > v3;
      v5 = v8 == v2;
      v11 = v8 > v2;
      if (v5)
      {
        v11 = v10;
      }
    }

    while (!v11);
  }

  else
  {
    v12 = a1 + 2;
    do
    {
      v7 = v12;
      if (v12 >= a2)
      {
        break;
      }

      v13 = *v12;
      v14 = v7[1] > v3;
      v5 = v13 == v2;
      v15 = v13 > v2;
      if (!v5)
      {
        v14 = v15;
      }

      v12 = v7 + 2;
    }

    while (!v14);
  }

  if (v7 < a2)
  {
    do
    {
      v16 = *(a2 - 2);
      v17 = *(a2-- - 1);
      v18 = v17 > v3;
      v5 = v16 == v2;
      v19 = v16 > v2;
      if (v5)
      {
        v19 = v18;
      }
    }

    while (v19);
  }

  while (v7 < a2)
  {
    v20 = *v7;
    *v7 = *a2;
    *a2 = v20;
    do
    {
      v21 = v7[2];
      v22 = v7[3];
      v7 += 2;
      v23 = v22 > v3;
      v5 = v21 == v2;
      v24 = v21 > v2;
      if (v5)
      {
        v24 = v23;
      }
    }

    while (!v24);
    do
    {
      v25 = *(a2 - 2);
      v26 = *(a2-- - 1);
      v27 = v26 > v3;
      v5 = v25 == v2;
      v28 = v25 > v2;
      if (v5)
      {
        v28 = v27;
      }
    }

    while (v28);
  }

  if (v7 - 2 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v2;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PixelPosition *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = HIDWORD(*a1);
  do
  {
    v5 = a1[v2 + 1];
    v6 = SHIDWORD(a1[v2 + 1]) < v4;
    v7 = v5 == v3;
    v8 = v5 < v3;
    if (!v7)
    {
      v6 = v8;
    }

    ++v2;
  }

  while (v6);
  v9 = &a1[v2];
  v10 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v15 = *(a2 - 2);
      v16 = *(a2-- - 1);
      v17 = v16 < v4;
      v7 = v15 == v3;
      v18 = v15 < v3;
      if (v7)
      {
        v18 = v17;
      }
    }

    while (!v18);
  }

  else
  {
    do
    {
      v11 = *(a2 - 2);
      v12 = *(a2-- - 1);
      v13 = v12 < v4;
      v7 = v11 == v3;
      v14 = v11 < v3;
      if (v7)
      {
        v14 = v13;
      }
    }

    while (!v14);
  }

  if (v9 < a2)
  {
    v19 = v9;
    v20 = a2;
    do
    {
      v21 = *v19;
      *v19 = *v20;
      *v20 = v21;
      do
      {
        v22 = *(v19 + 8);
        v23 = *(v19 + 12);
        v19 += 8;
        v24 = v23 < v4;
        v7 = v22 == v3;
        v25 = v22 < v3;
        if (v7)
        {
          v25 = v24;
        }
      }

      while (v25);
      do
      {
        v26 = *(v20 - 2);
        v27 = *(v20-- - 1);
        v28 = v27 < v4;
        v7 = v26 == v3;
        v29 = v26 < v3;
        if (v7)
        {
          v29 = v28;
        }
      }

      while (!v29);
    }

    while (v19 < v20);
    v10 = (v19 - 8);
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v3;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(int8x16_t *a1, int8x16_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v22 = a1->i32[2];
        v23 = a1->i32[3];
        v24 = v22 < a1->i32[0];
        if (v22 == a1->i32[0])
        {
          v24 = v23 < a1->i32[1];
        }

        v25 = a2[-1].i32[2];
        v26 = a2[-1].i32[3] < v23;
        v6 = v25 == v22;
        v27 = v25 < v22;
        if (!v6)
        {
          v26 = v27;
        }

        if (!v24)
        {
          if (v26)
          {
            v39 = a1->i64[1];
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v39;
            LODWORD(v39) = a1->i32[2];
            v6 = v39 == a1->i32[0];
            v40 = v39 < a1->i32[0];
            if (v6)
            {
              v40 = a1->i32[3] < a1->i32[1];
            }

            if (v40)
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }

          return 1;
        }

        v8 = a1->i64[0];
        if (!v26)
        {
          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v8;
          v46 = a2[-1].i32[2];
          v6 = v46 == v8;
          v47 = v46 < v8;
          if (v6)
          {
            v47 = a2[-1].i32[3] < SHIDWORD(v8);
          }

          if (!v47)
          {
            return 1;
          }

          a1->i64[1] = a2[-1].i64[1];
          goto LABEL_31;
        }

LABEL_30:
        a1->i64[0] = a2[-1].i64[1];
LABEL_31:
        a2[-1].i64[1] = v8;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,0>(a1->i32, &a1->i32[2], a1[1].i32, &a2[-1].i32[2]);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,0>(a1->i32, &a1->i32[2], a1[1].i32, &a1[1].i32[2]);
        v9 = a2[-1].i32[2];
        v10 = a1[1].i32[2];
        v6 = v9 == v10;
        v11 = v9 < v10;
        if (v6)
        {
          v11 = a2[-1].i32[3] < a1[1].i32[3];
        }

        if (v11)
        {
          v12 = a1[1].i64[1];
          a1[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v12;
          LODWORD(v12) = a1[1].i32[2];
          v13 = a1[1].i32[0];
          v6 = v12 == v13;
          v14 = v12 < v13;
          if (v6)
          {
            v14 = a1[1].i32[3] < a1[1].i32[1];
          }

          if (v14)
          {
            v16 = a1[1].i64[0];
            v15 = a1[1].i64[1];
            a1[1].i64[0] = v15;
            a1[1].i64[1] = v16;
            v17 = a1->i32[2];
            v6 = v17 == v15;
            v18 = v17 > v15;
            if (v6)
            {
              v18 = a1->i32[3] > SHIDWORD(v15);
            }

            if (v18)
            {
              v19 = a1->i64[1];
              a1->i64[1] = v15;
              a1[1].i64[0] = v19;
              v20 = a1->i32[1] > SHIDWORD(v15);
              if (a1->i32[0] != v15)
              {
                v20 = a1->i32[0] > v15;
              }

              if (v20)
              {
                v21 = a1->i64[0];
                a1->i64[0] = v15;
                a1->i64[1] = v21;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2[-1].i32[2];
      v6 = v5 == a1->i32[0];
      v7 = v5 < a1->i32[0];
      if (v6)
      {
        v7 = a2[-1].i32[3] < a1->i32[1];
      }

      if (!v7)
      {
        return 1;
      }

      v8 = a1->i64[0];
      goto LABEL_30;
    }
  }

  v28 = a1 + 1;
  v29 = a1[1].i32[0];
  v30 = a1->i32[2];
  v31 = a1->i32[3];
  v32 = a1->i32[0];
  v33 = a1->i32[1];
  v34 = v30 < a1->i32[0];
  if (v30 == a1->i32[0])
  {
    v34 = v31 < v33;
  }

  v35 = a1[1].i32[1];
  v36 = v35 < v31;
  v6 = v29 == v30;
  v37 = v29 < v30;
  if (v6)
  {
    v37 = v36;
  }

  if (v34)
  {
    v38 = a1->i64[0];
    if (v37)
    {
      a1->i64[0] = a1[1].i64[0];
LABEL_58:
      a1[1].i64[0] = v38;
      goto LABEL_59;
    }

    a1->i64[0] = a1->i64[1];
    a1->i64[1] = v38;
    v6 = v29 == v38;
    v48 = v29 < v38;
    if (v6)
    {
      v48 = v35 < SHIDWORD(v38);
    }

    if (v48)
    {
      a1->i64[1] = a1[1].i64[0];
      goto LABEL_58;
    }
  }

  else if (v37)
  {
    v42 = a1->i64[1];
    v41 = a1[1].i64[0];
    a1->i64[1] = v41;
    a1[1].i64[0] = v42;
    v43 = v33 > SHIDWORD(v41);
    v6 = v32 == v41;
    v44 = v32 > v41;
    if (v6)
    {
      v44 = v43;
    }

    if (v44)
    {
      v45 = a1->i64[0];
      a1->i64[0] = v41;
      a1->i64[1] = v45;
    }
  }

LABEL_59:
  v49 = &a1[1].i32[2];
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = v28->i32[0];
    v53 = v49[1] < v28->i32[1];
    if (*v49 != v52)
    {
      v53 = *v49 < v52;
    }

    if (v53)
    {
      v54 = *v49;
      v55 = HIDWORD(*v49);
      v56 = v50;
      while (1)
      {
        v57 = &a1->i8[v56];
        *(&a1[1].i64[1] + v56) = *(a1[1].i64 + v56);
        if (v56 == -16)
        {
          break;
        }

        v58 = *(v57 + 2);
        v59 = *(v57 + 3) > v55;
        v6 = v58 == v54;
        v60 = v58 > v54;
        if (!v6)
        {
          v59 = v60;
        }

        v56 -= 8;
        if (!v59)
        {
          v61 = (&a1[1].i64[1] + v56);
          goto LABEL_71;
        }
      }

      v61 = a1;
LABEL_71:
      *v61 = v54;
      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v28 = v49;
    v50 += 8;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

int32x2_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,PixelPosition *>(int32x2_t *a1, int32x2_t *a2, int32x2_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = v12->i32[0] < a1->i32[0];
        if (v12->i32[0] == a1->i32[0])
        {
          v13 = v12->i32[1] < a1->i32[1];
        }

        if (v13)
        {
          v14 = *v12;
          *v12 = *a1;
          *a1 = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(a1, &v17[1], a4, &v17[1] - a1);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(uint64_t result, uint64_t a2, uint64_t a3, int32x2_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v12 = v8->i32[0];
      }

      else
      {
        v10 = v8[1];
        v11 = vcgt_s32(v10, *v8);
        v12 = *v8;
        v13 = v11.i8[4];
        if (v12 != v10.i32[0])
        {
          v13 = v11.i8[0];
        }

        if (v13)
        {
          v12 = v8[1];
          ++v8;
          v7 = v9;
        }
      }

      v14 = v8->i32[1] < a4->i32[1];
      v15 = v12 == a4->i32[0];
      v16 = v12 < a4->i32[0];
      if (!v15)
      {
        v14 = v16;
      }

      if (!v14)
      {
        v17 = *a4;
        v18 = HIDWORD(*a4);
        do
        {
          v19 = a4;
          a4 = v8;
          *v19 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v20 = (2 * v7) | 1;
          v8 = (result + 8 * v20);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v23 = v8->i32[0];
            v7 = v20;
          }

          else
          {
            v21 = v8[1];
            v22 = vcgt_s32(v21, *v8);
            v23 = *v8;
            v24 = v22.i8[4];
            if (v23 != v21.i32[0])
            {
              v24 = v22.i8[0];
            }

            if (v24)
            {
              v23 = v8[1];
              ++v8;
            }

            else
            {
              v7 = v20;
            }
          }

          v25 = v8->i32[1] < v18;
          v15 = v23 == v17.i32[0];
          v26 = v23 < v17.i32[0];
          if (!v15)
          {
            v25 = v26;
          }
        }

        while (!v25);
        *a4 = v17;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3];
    v5 = v4 + 1;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v8 = *(v4 + 4);
      v7 = v4 + 2;
      v9 = *(v7 - 2);
      v10 = v9 < v8;
      if (v9 == v8)
      {
        v10 = *(v7 - 1) < *(v7 + 1);
      }

      if (v10)
      {
        v5 = v7;
      }

      else
      {
        v3 = v6;
      }
    }

    *a1 = *v5;
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v7 = *(a2 - 8);
    v6 = (a2 - 8);
    v8 = vcgt_s32(v7, *v5);
    v9 = (vceq_s32(*v5, v7).u8[0] & 1) != 0 ? v8.i8[4] : v8.i8[0];
    if (v9)
    {
      v10 = *v6;
      v11 = HIDWORD(*v6);
      do
      {
        v12 = v6;
        v6 = v5;
        *v12 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v13 = v5->i32[0] < v10.i32[0];
        if (v5->i32[0] == v10.i32[0])
        {
          v13 = v5->i32[1] < v11;
        }
      }

      while (v13);
      *v6 = v10;
    }
  }

  return result;
}

uint64_t std::vector<std::vector<PixelPosition>>::__init_with_size[abi:ne200100]<std::vector<PixelPosition>*,std::vector<PixelPosition>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<PixelPosition>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B418C818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<PixelPosition>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<PixelPosition>>>(a1, a2);
  }

  std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<PixelPosition>>,std::vector<PixelPosition>*,std::vector<PixelPosition>*,std::vector<PixelPosition>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<PixelPosition>>,std::vector<PixelPosition>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<PixelPosition>>,std::vector<PixelPosition>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<PixelPosition>>,std::vector<PixelPosition>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<PixelPosition>>,std::vector<PixelPosition>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v5 != v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3);
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<PixelPosition>>>(a1 + 48, v6);
    }

    std::vector<std::vector<std::vector<BreakPoint>>>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v7 = *(a2 + 104);
  *(a1 + 112) = 0;
  *(a1 + 104) = v7;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 112, *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 3);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 136, *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 3);
  v9 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v9;
  return result;
}

void sub_1B418D1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v17 = *v15;
  if (*v15)
  {
    *(v14 + 120) = v17;
    operator delete(v17);
  }

  std::vector<std::vector<std::vector<BreakPoint>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<BreakPoint>::__init_with_size[abi:ne200100]<BreakPoint*,BreakPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<BreakPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B418DAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<BreakPoint>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<BreakPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<BreakPoint>>(a1, a2);
  }

  std::vector<std::vector<std::vector<BreakPoint>>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<BreakPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<BreakPoint>,BreakPoint*,BreakPoint*,BreakPoint*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 8) = *(v6 + 2);
      *v4 = v7;
      *(v4 + 16) = v6[2];
      *(v4 + 24) = v6[3];
      *(v4 + 32) = v6[4];
      v6 += 5;
      v4 += 40;
    }

    while (v6 != a3);
    v12 = v4;
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<BreakPoint>,BreakPoint*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<BreakPoint>,BreakPoint*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<BreakPoint>,std::reverse_iterator<BreakPoint*>,std::reverse_iterator<BreakPoint*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<BreakPoint>,std::reverse_iterator<BreakPoint*>,std::reverse_iterator<BreakPoint*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v6 -= 40;
    }

    while (v6 != a5);
  }
}

void std::vector<BreakPoint>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<BreakPoint>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<BreakPoint>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 40)
  {
  }

  *(a1 + 8) = a2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<BreakPoint>>,std::vector<BreakPoint>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v4 -= 3;
      v5 = v4;
      std::vector<BreakPoint>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::vector<std::vector<BreakPoint>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<BreakPoint>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<BreakPoint>>>,std::vector<std::vector<BreakPoint>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v4 -= 3;
      v5 = v4;
      std::vector<std::vector<BreakPoint>>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::vector<std::vector<std::vector<BreakPoint>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<BreakPoint>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B418DFB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B418EACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B418F0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B41905BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a41)
  {
    operator delete(a41);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  _Unwind_Resume(a1);
}

void std::vector<anonymous namespace::FieldCandidateEntry>::reserve(uint64_t a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a2)
  {
    if (a2 >= 0x555555555555556)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = &v8[-v3];
    memcpy(&v8[-v3], *a1, v3);
    v5 = *a1;
    *a1 = v4;
    v6 = *(a1 + 16);
    *(a1 + 8) = v9;
    *&v9 = v5;
    *(&v9 + 1) = v6;
    v7 = v5;
    v8 = v5;
    if (v5)
    {
      operator delete(v5);
    }
  }
}

void anonymous namespace::applyGeometryFiltering(void *a1, uint64_t *a2, double *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      v8 = *(v6 + 32) / a3[1];
      if (v8 >= 0.005)
      {
        v9 = *(v6 + 24) / *a3;
        if (v9 >= 0.005)
        {
          v10 = v9 >= v8 ? *(v6 + 24) / *a3 : *(v6 + 32) / a3[1];
          v11 = v8 >= v9 ? *(v6 + 24) / *a3 : *(v6 + 32) / a3[1];
          v12 = v10 <= v11 * 50.0 && v9 <= 1.0;
          if (v12 && v8 <= 0.3)
          {
          }
        }
      }

      v6 += 48;
    }

    while (v6 != v7);
  }

  v13 = CROSLogForCategory(6);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
    v15 = v14 + 0x5555555555555555 * ((a1[1] - *a1) >> 4);
    v16 = 136315650;
    v17 = "applyGeometryFiltering";
    v18 = 2048;
    v19 = v15;
    v20 = 2048;
    v21 = v14;
    _os_log_impl(&dword_1B40D2000, v13, OS_LOG_TYPE_DEBUG, "%s: Filtered %lu/%lu candidates based on geometrical rules.", &v16, 0x20u);
  }
}

void std::vector<anonymous namespace::FieldCandidateEntry>::insert[abi:ne200100]<std::__wrap_iter<anonymous namespace::FieldCandidateEntry*>,0>(uint64_t a1, char *__dst, char *__src, char *a4)
{
  v4 = a4 - __src;
  if (a4 - __src < 1)
  {
    return;
  }

  v5 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 - v9 < v4)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4) - 0x5555555555555555 * (&v9[-*a1] >> 4);
    if (v11 > 0x555555555555555)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 4);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4) - 0x5555555555555555 * (&v9[-*a1] >> 4);
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v14;
    }

    v16 = v44;
    v17 = (v44 + v4);
    do
    {
      v18 = *v5;
      v19 = v5[2];
      v16[1] = v5[1];
      v16[2] = v19;
      *v16 = v18;
      v16 += 3;
      v5 += 3;
      v4 -= 48;
    }

    while (v4);
    *&v44 = v17;
    memcpy(v17, __dst, *(a1 + 8) - __dst);
    v20 = *a1;
    v21 = v43;
    *&v44 = v44 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v22 = (__dst - v20);
    v23 = &v21[-(__dst - v20)];
    memcpy(v23, v20, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = *(a1 + 16);
    *(a1 + 8) = v44;
    *&v44 = v24;
    *(&v44 + 1) = v25;
    v42 = v24;
    v43 = v24;
    if (v24)
    {
      operator delete(v24);
    }

    return;
  }

  v26 = v9 - __dst;
  if (v9 - __dst >= v4)
  {
    v34 = &__dst[v4];
    v35 = &v9[-v4];
    v36 = *(a1 + 8);
    while (v35 < v9)
    {
      v37 = *v35;
      v38 = *(v35 + 2);
      v36[1] = *(v35 + 1);
      v36[2] = v38;
      *v36 = v37;
      v36 += 3;
      v35 += 48;
    }

    *(a1 + 8) = v36;
    if (v9 != v34)
    {
      memmove(&__dst[v4], __dst, v9 - v34);
    }

    v39 = __dst;
    v40 = v5;
    v41 = v4;
    goto LABEL_30;
  }

  v27 = a4 - &__src[v26];
  if (a4 != &__src[v26])
  {
    memmove(*(a1 + 8), &__src[v26], a4 - &__src[v26]);
  }

  v28 = &v9[v27];
  *(a1 + 8) = &v9[v27];
  if (v26 >= 1)
  {
    v29 = &__dst[v4];
    v30 = &v28[-v4];
    v31 = &v9[v27];
    while (v30 < v9)
    {
      v32 = *v30;
      v33 = *(v30 + 2);
      *(v31 + 1) = *(v30 + 1);
      *(v31 + 2) = v33;
      *v31 = v32;
      v31 += 48;
      v30 += 48;
    }

    *(a1 + 8) = v31;
    if (v28 != v29)
    {
      memmove(&__dst[v4], __dst, v28 - v29);
    }

    v39 = __dst;
    v40 = v5;
    v41 = v9 - __dst;
LABEL_30:

    memmove(v39, v40, v41);
  }
}

void anonymous namespace::applyNonMaximaSuppression(void *a1, uint64_t *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2 + 1;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
  buf[0] = 1;
  std::vector<BOOL>::vector(&__p, v5);
  v6 = *v4;
  v7 = *a2;
  if (*v4 == *a2)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((*v4 - *a2) >> 4);
  }

  else
  {
    v8 = 0;
    do
    {
      if ((*(__p + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
      {
        v9 = v8 + 1;
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 4);
        if (v8 + 1 < v10)
        {
          v11 = v7 + 48 * v8;
          v12 = 48 * v8;
          v13 = v8 + 1;
          do
          {
            if ((*(__p + (v13 >> 6)) & (1 << v13)) != 0)
            {
              v14 = v7 + v12;
              v32 = CGRectIntersection(*(v11 + 8), *(v7 + v12 + 56));
              width = v32.size.width;
              height = v32.size.height;
              v33 = CGRectUnion(*(v11 + 8), *(v14 + 56));
              if (v33.size.width != 0.0 && v33.size.height != 0.0 && (width * height / (v33.size.width * v33.size.height) >= 0.074928 || width * height / fmin(*(v11 + 24) * *(v11 + 32), *(v14 + 72) * *(v14 + 80)) >= 0.358648))
              {
                *(__p + (v13 >> 6)) &= ~(1 << v13);
              }
            }

            ++v13;
            v7 = *a2;
            v6 = a2[1];
            v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);
            v12 += 48;
          }

          while (v13 < v10);
        }
      }

      else
      {
        v9 = v8 + 1;
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 4);
      }

      v8 = v9;
    }

    while (v9 < v10);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v17 = *a2;
  v18 = a2[1];
  if (v18 != *a2)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      if ((*(__p + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20))
      {
        v17 = *a2;
        v18 = a2[1];
      }

      ++v20;
      v19 += 48;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 4));
  }

  v21 = CROSLogForCategory(6);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4);
    v23 = v22 + 0x5555555555555555 * ((a1[1] - *a1) >> 4);
    *buf = 136315650;
    v26 = "applyNonMaximaSuppression";
    v27 = 2048;
    v28 = v23;
    v29 = 2048;
    v30 = v22;
    _os_log_impl(&dword_1B40D2000, v21, OS_LOG_TYPE_DEBUG, "%s: Filtered %lu/%lu candidates.", buf, 0x20u);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_1B4191098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = *a9;
  if (*a9)
  {
    *(a9 + 8) = v11;
    operator delete(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<anonymous namespace::FieldCandidateEntry>::emplace_back<float &,CGRect,unsigned long &>(char **a1, _DWORD *a2, _OWORD *a3, uint64_t *a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v8 >= v9)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 4);
    v14 = v13 + 1;
    if ((v13 + 1) > 0x555555555555555)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 4);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x2AAAAAAAAAAAAAALL)
    {
      v16 = 0x555555555555555;
    }

    else
    {
      v16 = v14;
    }

    v17 = *a4;
    v19 = v29;
    v18 = v30;
    *v30 = *a2;
    v20 = a3[1];
    *(v18 + 8) = *a3;
    *(v18 + 24) = v20;
    *(v18 + 40) = v17;
    v21 = *a1;
    v22 = a1[1] - *a1;
    v23 = &v19[-v22];
    *&v30 = v18 + 48;
    memcpy(&v19[-v22], v21, v22);
    v24 = *a1;
    *a1 = v23;
    v25 = a1[2];
    v26 = v30;
    *(a1 + 1) = v30;
    *&v30 = v24;
    *(&v30 + 1) = v25;
    v28 = v24;
    v29 = v24;
    if (v24)
    {
      v27 = v26;
      operator delete(v24);
      v26 = v27;
    }

    v12 = v26;
  }

  else
  {
    v10 = *a4;
    *v8 = *a2;
    v11 = a3[1];
    *(v8 + 8) = *a3;
    *(v8 + 24) = v11;
    *(v8 + 40) = v10;
    v12 = v8 + 48;
  }

  a1[1] = v12;
}

void *std::__split_buffer<anonymous namespace::FieldCandidateEntry>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *result = 0;
  result[1] = 48 * a3;
  result[2] = 48 * a3;
  result[3] = 0;
  return result;
}

void std::vector<anonymous namespace::FieldCandidateEntry>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x555555555555555)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v13 = v24;
    v15 = a2[1];
    v14 = a2[2];
    *v24 = *a2;
    *(v13 + 16) = v15;
    *(v13 + 32) = v14;
    *&v24 = v13 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = &v23[-v16];
    memcpy(&v23[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    v19 = *(a1 + 16);
    v20 = v24;
    *(a1 + 8) = v24;
    *&v24 = v18;
    *(&v24 + 1) = v19;
    v22 = v18;
    v23 = v18;
    if (v18)
    {
      v21 = v20;
      operator delete(v18);
      v20 = v21;
    }

    v8 = v20;
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v5[1] = a2[1];
    v5[2] = v7;
    *v5 = v6;
    v8 = v5 + 3;
  }

  *(a1 + 8) = v8;
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void *std::vector<CGRect>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CGRect>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B41916FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGRect>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<anonymous namespace::FieldCandidateEntry *>,std::__wrap_iter<anonymous namespace::FieldCandidateEntry *>>(char *__src, char *a2, char *a3)
{
  v3 = a2 - __src;
  if (a2 != __src)
  {
    v5 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 48 == a2)
    {
      v29 = *__src;
      v32 = *(__src + 1);
      v34 = *(__src + 2);
      memmove(__src, a2, a3 - a2);
      a3 = &__src[v5];
      *a3 = v29;
      *(a3 + 1) = v32;
      *(a3 + 2) = v34;
    }

    else if (a2 + 48 == a3)
    {
      v30 = *(a3 - 3);
      v33 = *(a3 - 2);
      v35 = *(a3 - 1);
      v6 = a3 - 48 - __src;
      if (v6)
      {
        memmove(__src + 48, __src, v6);
      }

      *__src = v30;
      *(__src + 1) = v33;
      *(__src + 2) = v35;
      return __src + 48;
    }

    else
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 4);
      if (0xAAAAAAAAAAAAAAABLL * (v3 >> 4) == v7)
      {
        v8 = __src + 48;
        v9 = a2 + 48;
        do
        {
          v10 = *(v8 - 3);
          v11 = *(v8 - 2);
          v12 = *(v8 - 1);
          v14 = *(v9 - 2);
          v13 = *(v9 - 1);
          *(v8 - 3) = *(v9 - 3);
          *(v8 - 2) = v14;
          *(v8 - 1) = v13;
          *(v9 - 2) = v11;
          *(v9 - 1) = v12;
          *(v9 - 3) = v10;
          if (v8 == a2)
          {
            break;
          }

          v8 += 48;
          v15 = v9 == a3;
          v9 += 48;
        }

        while (!v15);
        return a2;
      }

      else
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 4);
        do
        {
          v17 = v16;
          v16 = v7;
          v7 = v17 % v7;
        }

        while (v7);
        v18 = &__src[48 * v16];
        do
        {
          v19 = *(v18 - 3);
          v20 = *(v18 - 2);
          v21 = *(v18 - 1);
          v18 -= 48;
          v31 = v19;
          v36 = v21;
          v22 = &v18[v3];
          v23 = v18;
          do
          {
            v24 = v22;
            v25 = *v22;
            v26 = *(v22 + 2);
            *(v23 + 1) = *(v22 + 1);
            *(v23 + 2) = v26;
            *v23 = v25;
            v27 = a3 - v22;
            v22 += 16 * (v3 >> 4);
            if (v3 >= v27)
            {
              v22 = &a2[-v27];
            }

            v23 = v24;
          }

          while (v22 != v18);
          *(v24 + 1) = v20;
          *(v24 + 2) = v36;
          *v24 = v31;
        }

        while (v18 != __src);
        return &__src[v5];
      }
    }
  }

  return a3;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[CRFormDetector detectFormFieldsInImage:document:outputCandidateResults:]::$_2 &,anonymous namespace::FieldCandidateEntry *,0>(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 <= *a1)
  {
    if (v7 > v6)
    {
      result = *a2;
      v12 = *(a2 + 16);
      v13 = *(a2 + 32);
      v15 = *(a3 + 16);
      v14 = *(a3 + 32);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      *(a3 + 16) = v12;
      *(a3 + 32) = v13;
      *a3 = result;
      if (*a2 > *a1)
      {
        result = *a1;
        v16 = *(a1 + 16);
        v17 = *(a1 + 32);
        v19 = *(a2 + 16);
        v18 = *(a2 + 32);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *(a2 + 16) = v16;
        *(a2 + 32) = v17;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      v8 = *(a1 + 16);
      v9 = *(a1 + 32);
      v11 = *(a3 + 16);
      v10 = *(a3 + 32);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *(a3 + 16) = v8;
      *(a3 + 32) = v9;
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v23 = *(a2 + 16);
    v22 = *(a2 + 32);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *(a2 + 16) = v20;
    *(a2 + 32) = v21;
    *a2 = result;
    if (*a3 > *a2)
    {
      result = *a2;
      v8 = *(a2 + 16);
      v9 = *(a2 + 32);
      v25 = *(a3 + 16);
      v24 = *(a3 + 32);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a2 + 32) = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    result = *a3;
    v26 = *(a3 + 16);
    v27 = *(a3 + 32);
    v29 = a4[1];
    v28 = a4[2];
    *a3 = *a4;
    *(a3 + 16) = v29;
    *(a3 + 32) = v28;
    a4[1] = v26;
    a4[2] = v27;
    *a4 = result;
    if (*a3 > *a2)
    {
      result = *a2;
      v30 = *(a2 + 16);
      v31 = *(a2 + 32);
      v33 = *(a3 + 16);
      v32 = *(a3 + 32);
      *a2 = *a3;
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *(a3 + 16) = v30;
      *(a3 + 32) = v31;
      *a3 = result;
      if (*a2 > *a1)
      {
        result = *a1;
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v37 = *(a2 + 16);
        v36 = *(a2 + 32);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *(a2 + 16) = v34;
        *(a2 + 32) = v35;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = *a5;
  if (*a5 > *a4)
  {
    result = *a4;
    v38 = a4[1];
    v39 = a4[2];
    v41 = *(a5 + 16);
    v40 = *(a5 + 32);
    *a4 = *a5;
    a4[1] = v41;
    a4[2] = v40;
    *(a5 + 16) = v38;
    *(a5 + 32) = v39;
    *a5 = result;
    result.n128_u32[0] = *a4;
    if (*a4 > *a3)
    {
      result = *a3;
      v42 = *(a3 + 16);
      v43 = *(a3 + 32);
      v45 = a4[1];
      v44 = a4[2];
      *a3 = *a4;
      *(a3 + 16) = v45;
      *(a3 + 32) = v44;
      a4[1] = v42;
      a4[2] = v43;
      *a4 = result;
      result.n128_u32[0] = *a3;
      if (*a3 > *a2)
      {
        result = *a2;
        v46 = *(a2 + 16);
        v47 = *(a2 + 32);
        v49 = *(a3 + 16);
        v48 = *(a3 + 32);
        *a2 = *a3;
        *(a2 + 16) = v49;
        *(a2 + 32) = v48;
        *(a3 + 16) = v46;
        *(a3 + 32) = v47;
        *a3 = result;
        result.n128_u32[0] = *a2;
        if (*a2 > *a1)
        {
          result = *a1;
          v50 = *(a1 + 16);
          v51 = *(a1 + 32);
          v53 = *(a2 + 16);
          v52 = *(a2 + 32);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *(a2 + 16) = v50;
          *(a2 + 32) = v51;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRFormDetector detectFormFieldsInImage:document:outputCandidateResults:]::$_2 &,anonymous namespace::FieldCandidateEntry *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 48);
      v7 = *(a1 + 48);
      v8 = *(a2 - 48);
      v4 = (a2 - 48);
      v9 = v8;
      if (v7 > *a1)
      {
        if (v9 > v7)
        {
LABEL_12:
          v10 = *a1;
          v11 = *(a1 + 16);
          v12 = *(a1 + 32);
          v14 = v4[1];
          v13 = v4[2];
          *a1 = *v4;
          *(a1 + 16) = v14;
          *(a1 + 32) = v13;
LABEL_13:
          v4[1] = v11;
          v4[2] = v12;
          result = 1;
          *v4 = v10;
          return result;
        }

        v56 = *(a1 + 16);
        v55 = *(a1 + 32);
        v57 = *a1;
        v58 = *(a1 + 64);
        *a1 = *v6;
        *(a1 + 16) = v58;
        *(a1 + 32) = *(a1 + 80);
        *v6 = v57;
        *(a1 + 64) = v56;
        *(a1 + 80) = v55;
        if (*v4 > *(a1 + 48))
        {
          v10 = *v6;
          v11 = *(a1 + 64);
          v12 = *(a1 + 80);
          v60 = v4[1];
          v59 = v4[2];
          *v6 = *v4;
          *(a1 + 64) = v60;
          *(a1 + 80) = v59;
          goto LABEL_13;
        }

        return 1;
      }

      if (v9 <= v7)
      {
        return 1;
      }

      v34 = *v6;
      v35 = *(a1 + 64);
      v36 = *(a1 + 80);
      v38 = v4[1];
      v37 = v4[2];
      *v6 = *v4;
      *(a1 + 64) = v38;
      *(a1 + 80) = v37;
      v4[1] = v35;
      v4[2] = v36;
      *v4 = v34;
LABEL_50:
      if (*(a1 + 48) > *a1)
      {
        v89 = *(a1 + 16);
        v88 = *(a1 + 32);
        v90 = *a1;
        v91 = v6[1];
        *a1 = *v6;
        *(a1 + 16) = v91;
        *(a1 + 32) = v6[2];
        *v6 = v90;
        v6[1] = v89;
        result = 1;
        v6[2] = v88;
        return result;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      return 1;
    }

    v6 = (a1 + 48);
    v25 = *(a1 + 48);
    v26 = (a1 + 96);
    v27 = *(a1 + 96);
    v28 = (a2 - 48);
    v29 = *a1;
    if (v25 <= *a1)
    {
      if (v27 > v25)
      {
        v48 = *(a1 + 64);
        v47 = *(a1 + 80);
        v49 = *v6;
        v50 = *(a1 + 112);
        *v6 = *v26;
        *(a1 + 64) = v50;
        *(a1 + 80) = *(a1 + 128);
        *v26 = v49;
        *(a1 + 112) = v48;
        *(a1 + 128) = v47;
        if (*v6 > v29)
        {
          v52 = *(a1 + 16);
          v51 = *(a1 + 32);
          v53 = *a1;
          v54 = *(a1 + 64);
          *a1 = *v6;
          *(a1 + 16) = v54;
          *(a1 + 32) = *(a1 + 80);
          *v6 = v53;
          *(a1 + 64) = v52;
          *(a1 + 80) = v51;
        }
      }

      goto LABEL_47;
    }

    if (v27 <= v25)
    {
      v75 = *(a1 + 16);
      v74 = *(a1 + 32);
      v76 = *a1;
      v77 = *(a1 + 64);
      *a1 = *v6;
      *(a1 + 16) = v77;
      *(a1 + 32) = *(a1 + 80);
      *v6 = v76;
      *(a1 + 64) = v75;
      *(a1 + 80) = v74;
      if (v27 <= *(a1 + 48))
      {
        goto LABEL_47;
      }

      v31 = *(a1 + 64);
      v30 = *(a1 + 80);
      v32 = *v6;
      v78 = *(a1 + 112);
      *v6 = *v26;
      *(a1 + 64) = v78;
      *(a1 + 80) = *(a1 + 128);
    }

    else
    {
      v31 = *(a1 + 16);
      v30 = *(a1 + 32);
      v32 = *a1;
      v33 = *(a1 + 112);
      *a1 = *v26;
      *(a1 + 16) = v33;
      *(a1 + 32) = *(a1 + 128);
    }

    *v26 = v32;
    *(a1 + 112) = v31;
    *(a1 + 128) = v30;
LABEL_47:
    if (*v28 <= *v26)
    {
      return 1;
    }

    v79 = *v26;
    v80 = *(a1 + 112);
    v81 = *(a1 + 128);
    v83 = *(a2 - 32);
    v82 = *(a2 - 16);
    *v26 = *v28;
    *(a1 + 112) = v83;
    *(a1 + 128) = v82;
    *(a2 - 32) = v80;
    *(a2 - 16) = v81;
    *v28 = v79;
    if (*v26 <= *v6)
    {
      return 1;
    }

    v85 = *(a1 + 64);
    v84 = *(a1 + 80);
    v86 = *v6;
    v87 = *(a1 + 112);
    *v6 = *v26;
    *(a1 + 64) = v87;
    *(a1 + 80) = *(a1 + 128);
    *v26 = v86;
    *(a1 + 112) = v85;
    *(a1 + 128) = v84;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 48);
    v4 = (a2 - 48);
    if (v5 <= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v16 = (a1 + 96);
  v17 = *(a1 + 96);
  v18 = (a1 + 48);
  v19 = *(a1 + 48);
  v20 = *a1;
  if (v19 <= *a1)
  {
    if (v17 > v19)
    {
      v40 = *(a1 + 64);
      v39 = *(a1 + 80);
      v41 = *v18;
      v42 = *(a1 + 112);
      *v18 = *v16;
      *(a1 + 64) = v42;
      *(a1 + 80) = *(a1 + 128);
      *v16 = v41;
      *(a1 + 112) = v40;
      *(a1 + 128) = v39;
      if (*v18 > v20)
      {
        v44 = *(a1 + 16);
        v43 = *(a1 + 32);
        v45 = *a1;
        v46 = *(a1 + 64);
        *a1 = *v18;
        *(a1 + 16) = v46;
        *(a1 + 32) = *(a1 + 80);
        *v18 = v45;
        *(a1 + 64) = v44;
        *(a1 + 80) = v43;
      }
    }
  }

  else
  {
    if (v17 <= v19)
    {
      v62 = *(a1 + 16);
      v61 = *(a1 + 32);
      v63 = *a1;
      v64 = *(a1 + 64);
      *a1 = *v18;
      *(a1 + 16) = v64;
      *(a1 + 32) = *(a1 + 80);
      *v18 = v63;
      *(a1 + 64) = v62;
      *(a1 + 80) = v61;
      if (v17 <= *(a1 + 48))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 64);
      v21 = *(a1 + 80);
      v23 = *v18;
      v65 = *(a1 + 112);
      *v18 = *v16;
      *(a1 + 64) = v65;
      *(a1 + 80) = *(a1 + 128);
    }

    else
    {
      v22 = *(a1 + 16);
      v21 = *(a1 + 32);
      v23 = *a1;
      v24 = *(a1 + 112);
      *a1 = *v16;
      *(a1 + 16) = v24;
      *(a1 + 32) = *(a1 + 128);
    }

    *v16 = v23;
    *(a1 + 112) = v22;
    *(a1 + 128) = v21;
  }

LABEL_33:
  v66 = a1 + 144;
  if (a1 + 144 == a2)
  {
    return 1;
  }

  v67 = 0;
  v68 = 0;
  while (1)
  {
    v69 = *v66;
    if (*v66 > *v16)
    {
      v92 = *(v66 + 4);
      *v93 = *(v66 + 20);
      *&v93[12] = *(v66 + 32);
      v70 = v67;
      while (1)
      {
        v71 = a1 + v70;
        v72 = *(a1 + v70 + 112);
        *(v71 + 144) = *(a1 + v70 + 96);
        *(v71 + 160) = v72;
        *(v71 + 176) = *(a1 + v70 + 128);
        if (v70 == -96)
        {
          break;
        }

        v70 -= 48;
        if (v69 <= *(v71 + 48))
        {
          v73 = a1 + v70 + 144;
          goto LABEL_41;
        }
      }

      v73 = a1;
LABEL_41:
      *v73 = v69;
      *(v73 + 4) = v92;
      *(v73 + 20) = *v93;
      *(v73 + 32) = *&v93[12];
      if (++v68 == 8)
      {
        return v66 + 48 == a2;
      }
    }

    v16 = v66;
    v67 += 48;
    v66 += 48;
    if (v66 == a2)
    {
      return 1;
    }
  }
}

void sub_1B4194BB8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B4194CA8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B4194D98(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B4194E88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B41955A4(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_1B41956C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1B4195B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  __cxa_guard_abort(&qword_1ED95FE40);

  _Unwind_Resume(a1);
}

void sub_1B419866C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B419A320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_1B419ACD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B419BAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, void *a12, uint64_t a13, void *a14, CRTableStructureRecognizerResultParsed *a15, void *a16, void *a17, uint64_t a18, _Unwind_Exception *exception_objecta, CRTableStructureRecognizerResultParsed *a20, CRTableStructureRecognizerInputFeatures *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, CRTableStructureRecognizerResultParsed *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  CRTableStructureRecognizerResultParsed::~CRTableStructureRecognizerResultParsed(&a23);

  CRTableStructureRecognizerResultParsed::~CRTableStructureRecognizerResultParsed(&STACK[0x220]);
  CRTableStructureRecognizerInputFeatures::~CRTableStructureRecognizerInputFeatures(&a51);

  if (__pa)
  {
    a69 = __pa;
    operator delete(__pa);
  }

  _Unwind_Resume(a1);
}

void CRTableStructureRecognizerResultParsed::~CRTableStructureRecognizerResultParsed(CRTableStructureRecognizerResultParsed *this)
{
  begin = this->merges.__begin_;
  if (begin)
  {
    this->merges.__end_ = begin;
    operator delete(begin);
  }

  v3 = this->columnWidths.__begin_;
  if (v3)
  {
    this->columnWidths.__end_ = v3;
    operator delete(v3);
  }

  v4 = this->rowHeights.__begin_;
  if (v4)
  {
    this->rowHeights.__end_ = v4;
    operator delete(v4);
  }
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B419CBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v13 = STACK[0x2E8];
  if (STACK[0x2E8])
  {
    STACK[0x2F0] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void sub_1B419CF08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B419D780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  v33 = *(v31 - 160);
  if (v33)
  {
    *(v31 - 152) = v33;
    operator delete(v33);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a28)
  {
    operator delete(a28);
  }

  CRTableStructureRecognizerResultParsed::~CRTableStructureRecognizerResultParsed(v30);

  _Unwind_Resume(a1);
}

CRNormalizedQuad *transformRectWithHomography(CGRect a1, CGSize a2, simd_float3x3 a3)
{
  width = a2.width;
  x = a1.origin.x;
  *v11.i32 = a1.origin.y;
  v13 = vdupq_lane_s32(v11, 0);
  v14 = vmulq_n_f32(a3.columns[0], x);
  v15 = vaddq_f32(a3.columns[2], vmlaq_n_f32(v14, a3.columns[1], *v11.i32));
  if (v15.f32[2] == 0.0)
  {
    v16 = a1.origin.x;
    y = a1.origin.y;
  }

  else
  {
    v16 = (v15.f32[0] / v15.f32[2]);
    y = (v15.f32[1] / v15.f32[2]);
  }

  v18 = a1.origin.x + a1.size.width;
  v19 = v18;
  v20 = vmulq_n_f32(a3.columns[0], v19);
  v22 = vaddq_f32(a3.columns[2], vmlaq_f32(v20, v13, a3.columns[1]));
  v21 = (v22.f32[0] / v22.f32[2]);
  *v22.i64 = (v22.f32[1] / v22.f32[2]);
  if (v22.f32[2] == 0.0)
  {
    v23 = v18;
  }

  else
  {
    v23 = v21;
  }

  if (v22.f32[2] == 0.0)
  {
    v24 = a1.origin.y;
  }

  else
  {
    v24 = *v22.i64;
  }

  v25 = a1.origin.y + a1.size.height;
  *&a1.size.height = v25;
  v26 = vdupq_lane_s32(*&a1.size.height, 0);
  v28 = vaddq_f32(a3.columns[2], vmlaq_n_f32(v20, a3.columns[1], *&a1.size.height));
  v27 = (v28.f32[0] / v28.f32[2]);
  *v28.i64 = (v28.f32[1] / v28.f32[2]);
  if (v28.f32[2] == 0.0)
  {
    v29 = v18;
  }

  else
  {
    v29 = v27;
  }

  if (v28.f32[2] == 0.0)
  {
    v30 = v25;
  }

  else
  {
    v30 = *v28.i64;
  }

  v32 = vaddq_f32(a3.columns[2], vmlaq_f32(v14, v26, a3.columns[1]));
  v31 = (v32.f32[0] / v32.f32[2]);
  *v32.i64 = (v32.f32[1] / v32.f32[2]);
  if (v32.f32[2] == 0.0)
  {
    v33 = a1.origin.x;
  }

  else
  {
    v33 = v31;
  }

  if (v32.f32[2] == 0.0)
  {
    v34 = v25;
  }

  else
  {
    v34 = *v32.i64;
  }

  v35 = [[CRNormalizedQuad alloc] initWithNormalizedTopLeft:v16 topRight:y bottomRight:v23 bottomLeft:v24 size:v29, v30, v33, v34, *&width, *&a2.height];

  return v35;
}

void sub_1B419EFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B419F364(_Unwind_Exception *a1)
{
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void **std::unique_ptr<CoreRecognition::EspressoModelWrapper>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CoreRecognition::EspressoModelWrapper::~EspressoModelWrapper(result);

    JUMPOUT(0x1B8C73EF0);
  }

  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B419F65C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::vector<CRTableStructureMerge>::__init_with_size[abi:ne200100]<CRTableStructureMerge*,CRTableStructureMerge*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGRect>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B419F840(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B419F8BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::vector<CRTableStructureMerge>::__assign_with_size[abi:ne200100]<CRTableStructureMerge*,CRTableStructureMerge*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CGRect>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *std::vector<_NSRange>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B419FBC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_NSRange>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<CGRect>::__init_with_size[abi:ne200100]<CGRect*,CGRect*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGRect>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B419FCC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange*,_NSRange*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B419FD44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<unsigned long>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<unsigned long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B419FF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*,std::vector<unsigned long>*,std::vector<unsigned long>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<PixelPosition>>,std::vector<PixelPosition>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void sub_1B41A0B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B41A3064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B41A42B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a54, 8);

  _Unwind_Resume(a1);
}

void sub_1B41A4910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

void sub_1B41A4D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  v18 = v17;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B41A5B84(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<double *>::emplace_back<double *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1B41A64F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B41A6660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CRDetectorUtils::makeCenterPoint(CRDetectorUtils *this, CGPoint *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v3 = vcvt_f32_f64(vaddq_f64(*(this + v2), vcvtq_f64_f32(v3)));
    v2 += 16;
  }

  while (v2 != 64);
  __asm { FMOV            V1.2D, #0.25 }

  *&result = *&vmulq_f64(vcvtq_f64_f32(v3), _Q1);
  return result;
}

float CRDetectorUtils::rectIntersectionOverUnion(CGRect *this, const CGRect *a2, const CGRect *a3)
{
  v6 = CGRectIntersection(*this, *a2);
  *&v6.origin.x = v6.size.width * v6.size.height;
  *&v6.origin.y = a2->size.width * a2->size.height + this->size.width * this->size.height - *&v6.origin.x;
  return *&v6.origin.x / *&v6.origin.y;
}

uint64_t CRDetectorUtils::convertPointToRect(uint64_t this, const CGPoint *a2)
{
  v2 = (this + 8);
  v3 = 1.79769313e308;
  v4 = 2.22507386e-308;
  v5 = 4;
  v6 = 2.22507386e-308;
  v7 = 1.79769313e308;
  do
  {
    v8 = *(v2 - 1);
    v9 = *v2;
    if (v8 >= v6)
    {
      v6 = *(v2 - 1);
    }

    if (v8 <= v7)
    {
      v7 = *(v2 - 1);
    }

    if (v9 >= v4)
    {
      v4 = *v2;
    }

    if (v9 <= v3)
    {
      v3 = *v2;
    }

    v2 += 2;
    --v5;
  }

  while (v5);
  return this;
}

void CRDetectorUtils::rotatePolygon(CRDetectorUtils *this, const CGPoint *a2, const CGPoint *a3, double a4, CGPoint *a5)
{
  v8 = a4;
  v9 = __sincosf_stret(v8);
  cosval = v9.__cosval;
  sinval = v9.__sinval;
  p_y = &a3->y;
  v13 = (this + 8);
  v14 = 4;
  do
  {
    y = a2->y;
    v16 = *(v13 - 1) - a2->x;
    v17 = *v13 - y;
    *(p_y - 1) = a2->x + v16 * cosval - v17 * sinval;
    *p_y = y + v17 * cosval + v16 * sinval;
    p_y += 2;
    v13 += 2;
    --v14;
  }

  while (v14);
}

void CRDetectorUtils::rotateContour(uint64_t *a1, double *a2, void *a3, double a4)
{
  v7 = a4;
  v8 = __sincosf_stret(v7);
  v9 = *a1;
  if (a1[1] != *a1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v9 + v10);
      v13 = a2[1];
      v14 = (*v12 - *a2);
      v15 = (v12[1] - v13);
      *(*a3 + 8 * v11++) = (*a2 + ((-v8.__sinval * v15) + (v14 * v8.__cosval))) | ((v13 + ((v8.__cosval * v15) + (v14 * v8.__sinval))) << 32);
      v9 = *a1;
      v10 += 8;
    }

    while (v11 < (a1[1] - *a1) >> 3);
  }
}

CGFloat CRDetectorUtils::rotatePointBasedOnCenter(CRDetectorUtils *this, const CGPoint *a2, const CGPoint *a3, double a4)
{
  v6 = a4;
  v7 = __sincosf_stret(v6);
  return a2->x + (*this - a2->x) * v7.__cosval - (*(this + 1) - a2->y) * v7.__sinval;
}

double CRDetectorUtils::smoothAngleForPointPairBetweenNeighbors(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  __x = a2 - a4;
  v18 = a3 - a5;
  v19 = *a1;
  v20 = a1[1];
  v22 = a1[2];
  v21 = a1[3];
  v23 = a6 - a8;
  v24 = a7 - a9;
  v25 = atan2(v20 - v21, *a1 - v22);
  v26 = atan2(v18, __x);
  v27 = ((atan2(v24, v23) - v26) * 0.5 - (v25 - v26)) * a10;
  v28 = (v19 + v22) * 0.5;
  v29 = (v20 + v21) * 0.5;
  *&v27 = v27;
  v30 = __sincosf_stret(*&v27);
  *a1 = v28 + (v19 - v28) * v30.__cosval - (v20 - v29) * v30.__sinval;
  a1[1] = v29 + (v20 - v29) * v30.__cosval + (v19 - v28) * v30.__sinval;
  result = v29 + (v21 - v29) * v30.__cosval + (v22 - v28) * v30.__sinval;
  a1[2] = v28 + (v22 - v28) * v30.__cosval - (v21 - v29) * v30.__sinval;
  a1[3] = result;
  return result;
}

uint64_t CRDetectorUtils::computeConnectedComponents(CRDetectorUtils *this, float *a2, unint64_t a3, uint64_t a4, CRDetectorUtils::CRTextDetectorConnectedComponentResult *a5)
{
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (a2)
      {
        v10 = 0;
        v11 = v8 * a2;
        v27 = v8 * a2;
        v28 = v8;
        do
        {
          if (*(this + v10 + v11) >= 0.8 && (!*(*a4 + 8 * *(a4 + 104) * v8 + 8 * v10) || v9 == 0))
          {
            v34 = __PAIR64__(v10, v8);
            std::deque<std::pair<int,int>>::push_back(v35, &v34);
            v31 = ++v9;
            CRDetectorUtils::CRTextDetectorConnectedComponentResult::setLabel(a4, v8, v10, v9);
            v13 = *(&v36 + 1);
            if (*(&v36 + 1))
            {
              v29 = v10;
              v30 = v9;
              do
              {
                v14 = (*(*(&v35[0] + 1) + ((v36 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v36 & 0x1FF));
                v15 = *v14;
                v16 = v14[1];
                *&v36 = v36 + 1;
                *(&v36 + 1) = v13 - 1;
                if (v36 > 0x3FF)
                {
                  operator delete(**(&v35[0] + 1));
                  *(&v35[0] + 1) += 8;
                  *&v36 = v36 - 512;
                }

                for (i = 0; i != 8; ++i)
                {
                  v18 = dword_1B42AF340[i] + v15;
                  v19 = dword_1B42AF360[i];
                  v20 = v19 + v16;
                  v33 = v19 + v16;
                  LODWORD(v34) = v18;
                  if ((v18 & 0x80000000) == 0 && v18 < a3 && (v20 & 0x80000000) == 0 && v20 < a2 && *(this + v20 + v18 * a2) >= 0.8 && !*(*a4 + 8 * *(a4 + 104) * v18 + 8 * v20))
                  {
                    std::deque<std::pair<int,int>>::emplace_back<int &,int &>(v35, &v34, &v33);
                    CRDetectorUtils::CRTextDetectorConnectedComponentResult::setLabel(a4, v18, v20, v31);
                  }
                }

                v13 = *(&v36 + 1);
              }

              while (*(&v36 + 1));
              v8 = v28;
              v10 = v29;
              v9 = v30;
              v11 = v27;
            }
          }

          ++v10;
        }

        while (v10 != a2);
      }

      ++v8;
    }

    while (v8 != a3);
  }

  if (*(a4 + 137) == 1)
  {
    v21 = *(a4 + 8);
    v22 = *(a4 + 16) - v21;
    if (v22)
    {
      v23 = v22 >> 3;
      v24 = *(a4 + 56);
      if (v23 <= 1)
      {
        v23 = 1;
      }

      do
      {
        v25 = *v21++;
        *v24 = vdivq_f64(*v24, vdupq_lane_s64(COERCE__INT64(v25), 0));
        ++v24;
        --v23;
      }

      while (v23);
    }
  }

  return std::deque<std::pair<int,int>>::~deque[abi:ne200100](v35);
}

void sub_1B41AB188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CRDetectorUtils::CRTextDetectorConnectedComponentResult::setLabel(CRDetectorUtils::CRTextDetectorConnectedComponentResult *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  *(*this + 8 * *(this + 13) * a2 + 8 * a3) = a4;
  v8 = a4 - *(this + 30);
  v10 = (this + 8);
  v9 = *(this + 1);
  if (v8 >= (*(this + 2) - v9) >> 3)
  {
    v41 = 0;
    std::vector<unsigned long>::resize(this + 1, v8 + 1, &v41);
    v9 = *v10;
    v11 = 1;
  }

  else
  {
    v11 = *(v9 + 8 * v8) + 1;
  }

  *(v9 + 8 * v8) = v11;
  v12 = *(this + 10);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 11) - v12) >> 3) <= v8)
  {
    std::vector<std::vector<CGPoint>>::resize(this + 10, v8 + 1);
    v12 = *(this + 10);
  }

  v13 = a3;
  v14 = (v12 + 24 * v8);
  v15 = a2;
  v17 = v14[1];
  v16 = v14[2];
  if (v17 >= v16)
  {
    v19 = *v14;
    v20 = v17 - *v14;
    v21 = v20 >> 4;
    v22 = (v20 >> 4) + 1;
    if (v22 >> 60)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v23 = v16 - v19;
    if (v23 >> 3 > v22)
    {
      v22 = v23 >> 3;
    }

    v24 = v23 >= 0x7FFFFFFFFFFFFFF0;
    v25 = 0xFFFFFFFFFFFFFFFLL;
    if (!v24)
    {
      v25 = v22;
    }

    if (v25)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(v14, v25);
    }

    v26 = (16 * v21);
    *v26 = v13;
    v26[1] = v15;
    v18 = 16 * v21 + 16;
    memcpy(0, v19, v20);
    v27 = *v14;
    *v14 = 0;
    v14[1] = v18;
    v14[2] = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = v13;
    v17[1] = v15;
    v18 = (v17 + 2);
  }

  v14[1] = v18;
  ++*(this + 16);
  if (*(this + 136) == 1)
  {
    v28 = *(this + 4);
    if (v8 >= (*(this + 5) - v28) >> 5)
    {
      std::vector<CRDetectorUtils::CRTextDetectorCCBoundary>::resize(this + 4, a4);
      v34 = (*(this + 4) + 32 * v8);
      v34[2] = a3;
      v34[3] = a3;
      *v34 = a2;
      v34[1] = a2;
    }

    else
    {
      v29 = (v28 + 32 * v8);
      v30 = v29[2];
      v31 = v29[3];
      if (v30 >= a3)
      {
        v30 = a3;
      }

      if (v31 <= a3)
      {
        v31 = a3;
      }

      v29[2] = v30;
      v29[3] = v31;
      v32 = *v29;
      v33 = v29[1];
      if (*v29 >= a2)
      {
        v32 = a2;
      }

      if (v33 <= a2)
      {
        v33 = a2;
      }

      *v29 = v32;
      v29[1] = v33;
    }
  }

  if (*(this + 137) == 1)
  {
    v35 = *(this + 7);
    v36 = *(this + 8);
    v37 = (this + 56);
    if (v8 >= (v36 - v35) >> 4)
    {
      std::vector<CGPoint>::resize(v37, a4);
      v40 = (*v37 + 16 * v8);
      *v40 = v13;
      v40[1] = v15;
    }

    else
    {
      v38 = (v35 + 16 * v8);
      v39 = v38[1] + v15;
      *v38 = *v38 + v13;
      v38[1] = v39;
    }
  }
}

uint64_t CRDetectorUtils::recomputeConnectedComponentsForLabelsInRect(uint64_t this, CRDetectorUtils::CRTextDetectorConnectedComponentResult *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v7 = *(this + 16) - *(this + 8);
  v8 = *(this + 120) + (v7 >> 3);
  if (v8 > a2)
  {
    v9 = a2;
    v51 = a2 + a3;
    if (a2 + a3 - 1 < v8)
    {
      v12 = this;
      v55 = 0u;
      memset(v54, 0, sizeof(v54));
      v44 = v7 >> 3;
      v45 = (v7 >> 3) - 1;
      if (a6 <= a7)
      {
        v49 = (v7 >> 3) - 1;
        v15 = a6;
        do
        {
          if (a4 <= a5)
          {
            v16 = a4;
            v47 = v15;
            do
            {
              v17 = *(*v12 + 8 * *(v12 + 104) * v15 + 8 * v16);
              if (v17 >= v9 && v17 < v51)
              {
                v53 = __PAIR64__(v16, v15);
                std::deque<std::pair<int,int>>::push_back(v54, &v53);
                v48 = v16;
                CRDetectorUtils::CRTextDetectorConnectedComponentResult::setLabel(v12, v15, v16, ++v49 + *(v12 + 120));
                while (*(&v55 + 1))
                {
                  v19 = (*(*(&v54[0] + 1) + ((v55 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v55 & 0x1FF));
                  v20 = *v19;
                  v21 = v19[1];
                  *&v55 = v55 + 1;
                  --*(&v55 + 1);
                  if (v55 > 0x3FF)
                  {
                    operator delete(**(&v54[0] + 1));
                    *(&v54[0] + 1) += 8;
                    *&v55 = v55 - 512;
                  }

                  for (i = 0; i != 8; ++i)
                  {
                    v23 = dword_1B42AF340[i] + v20;
                    v24 = dword_1B42AF360[i];
                    v25 = v24 + v21;
                    v52 = v24 + v21;
                    LODWORD(v53) = v23;
                    if (v23 >= a6 && v23 <= a7 && v25 >= a4 && v25 <= a5)
                    {
                      v29 = *(*v12 + 8 * *(v12 + 104) * v23 + 8 * v25);
                      if (v29 >= a2 && v29 < v51)
                      {
                        std::deque<std::pair<int,int>>::emplace_back<int &,int &>(v54, &v53, &v52);
                        CRDetectorUtils::CRTextDetectorConnectedComponentResult::setLabel(v12, v23, v25, v49 + *(v12 + 120));
                      }
                    }
                  }
                }

                v9 = a2;
                v15 = v47;
                v16 = v48;
              }

              ++v16;
            }

            while (v16 <= a5);
          }

          ++v15;
        }

        while (v15 <= a7);
      }

      v31 = a3;
      if (v51 > v9)
      {
        v32 = *(v12 + 120);
        v33 = (24 * v9 - 24 * v32 + *(v12 + 80) + 8);
        v34 = (*(v12 + 8) - 8 * v32 + 8 * v9);
        do
        {
          *v34++ = 0;
          *v33 = *(v33 - 1);
          v33 += 3;
          --v31;
        }

        while (v31);
      }

      if (*(v12 + 137))
      {
        v35 = *(v12 + 8);
        v36 = *(v12 + 16) - v35;
        if (v36)
        {
          v37 = *(v12 + 120);
          if (v45 >= v37)
          {
            v38 = v36 >> 3;
            if (v45 - v37 + 1 < v38)
            {
              v39 = v38 + v37 - v44;
              v40 = (*(v12 + 56) - 16 * v37 + 16 * v44);
              v41 = (v35 - 8 * v37 + 8 * v44);
              do
              {
                v43 = *v41++;
                v42 = v43;
                if (v43)
                {
                  *v40 = vdivq_f64(*v40, vdupq_lane_s64(COERCE__INT64(v42), 0));
                }

                ++v40;
                --v39;
              }

              while (v39);
            }
          }
        }
      }

      return std::deque<std::pair<int,int>>::~deque[abi:ne200100](v54);
    }
  }

  return this;
}

void sub_1B41AB730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CRDetectorUtils::growConnectedComponents(uint64_t a1, uint64_t *a2, int **a3, uint64_t a4, void *a5, float a6)
{
  v6 = *(a1 + 16) - *(a1 + 8);
  if (v6)
  {
    v11 = *(a1 + 104);
    v12 = *(a1 + 112);
    v13 = v6 >> 3;
    std::vector<std::vector<PixelPosition>>::vector[abi:ne200100](&__p, v6 >> 3);
    std::vector<std::vector<PixelPosition>>::vector[abi:ne200100](&p_p, v13);
    v14 = 0;
    v15 = 0;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      std::vector<PixelPosition>::reserve(__p + v14, *(*(a1 + 8) + 8 * v15++));
      v14 += 24;
    }

    while (v13 != v15);
    if (v12 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = v12 & 0x7FFFFFFF;
      do
      {
        if (v11 >= 1)
        {
          v19 = 0;
          do
          {
            v20 = *(*a1 + v16 * *(a1 + 104) + 8 * v19);
            if (v20)
            {
              v21 = v20 - *(a1 + 120);
              if ((*(*a5 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21))
              {
                v82[0] = __PAIR64__(v17, v19);
                std::vector<PixelPosition>::push_back[abi:ne200100](__p + 24 * v21, v82);
                CRDetectorUtils::CRTextDetectorConnectedComponentResult::setLabel(a4, v17, v19, *(*a1 + v16 * *(a1 + 104) + 8 * v19));
              }
            }

            ++v19;
          }

          while ((v11 & 0x7FFFFFFF) != v19);
        }

        ++v17;
        v16 += 8;
      }

      while (v17 != v18);
    }

    v23 = *a3;
    v22 = a3[1];
    v24 = (*a3 + 1);
    if (*a3 != v22 && v24 != v22)
    {
      v26 = *v23;
      v27 = *a3 + 1;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v30 = v26 < v29;
        if (v26 <= v29)
        {
          v26 = v28;
        }

        if (v30)
        {
          v23 = v24;
        }

        v24 = v27;
      }

      while (v27 != v22);
    }

    if (*v23 >= 1)
    {
      v71 = 0;
      v69 = v23;
      do
      {
        v31 = p_p;
        v32 = v77;
        if (v77 == p_p)
        {
          v52 = 0xAAAAAAAAAAAAAAABLL * (v77 - p_p);
        }

        else
        {
          v33 = 0;
          do
          {
            if (*a3)[v33] >= v71 && ((*(*a5 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v33))
            {
              v34 = __p + 24 * v33;
              v75 = &v31[3 * v33];
              std::vector<PixelPosition>::reserve(v75, (v34[1] - *v34) >> 2);
              v35 = *v34;
              v73 = v34[1];
              if (*v34 != v73)
              {
                v36 = *a2;
                v37 = (*(a4 + 112) - 1);
                v38 = (*(a4 + 104) - 1);
                do
                {
                  v39 = v33;
                  v40 = *v35;
                  v41 = v35[1];
                  v74 = v35;
                  v42 = fmax((v41 - 1), 0.0);
                  v43 = fmin(v37, (v41 + 1));
                  if (v42 <= v43)
                  {
                    v44 = v42;
                    v45 = v43;
                    do
                    {
                      v46 = a2[2] * v44;
                      v81 = __PAIR64__(v44, v40);
                      if (*(v36 + 4 * v40 + 4 * v46) >= a6 && *(*a4 + 8 * *(a4 + 104) * v44 + 8 * v40) < *(a4 + 120))
                      {
                        std::vector<PixelPosition>::push_back[abi:ne200100](v75, &v81);
                        CRDetectorUtils::CRTextDetectorConnectedComponentResult::setLabel(a4, v44, v40, *(a4 + 120) + v39);
                      }

                      v44 += 2;
                    }

                    while (v44 <= v45);
                  }

                  v47 = fmax((v40 - 1), 0.0);
                  v48 = fmin(v38, (v40 + 1));
                  v33 = v39;
                  if (v47 <= v48)
                  {
                    v49 = v47;
                    v50 = v48;
                    do
                    {
                      v51 = a2[2];
                      v81 = __PAIR64__(v41, v49);
                      if (*(v36 + 4 * v41 * v51 + 4 * v49) >= a6 && *(*a4 + 8 * *(a4 + 104) * v41 + 8 * v49) < *(a4 + 120))
                      {
                        std::vector<PixelPosition>::push_back[abi:ne200100](v75, &v81);
                        CRDetectorUtils::CRTextDetectorConnectedComponentResult::setLabel(a4, v41, v49, *(a4 + 120) + v39);
                      }

                      v49 += 2;
                    }

                    while (v49 <= v50);
                  }

                  v35 = v74 + 2;
                }

                while (v74 + 2 != v73);
              }
            }

            ++v33;
            v31 = p_p;
            v32 = v77;
            v52 = 0xAAAAAAAAAAAAAAABLL * (v77 - p_p);
          }

          while (v52 > v33);
          v23 = v69;
        }

        v53 = v80;
        v54 = __p;
        if (0xAAAAAAAAAAAAAAABLL * ((v80 - __p) >> 3) < v52)
        {
          if (__p)
          {
            v55 = v79;
            v56 = __p;
            if (v79 != __p)
            {
              v57 = v79;
              do
              {
                v59 = *(v57 - 3);
                v57 -= 24;
                v58 = v59;
                if (v59)
                {
                  *(v55 - 2) = v58;
                  operator delete(v58);
                }

                v55 = v57;
              }

              while (v57 != v54);
              v56 = __p;
            }

            v79 = v54;
            operator delete(v56);
            v53 = 0;
            __p = 0;
            v79 = 0;
            v80 = 0;
          }

          if (v52 <= 0xAAAAAAAAAAAAAAALL)
          {
            v60 = 0xAAAAAAAAAAAAAAABLL * (v53 >> 3);
            v61 = 2 * v60;
            if (2 * v60 <= v52)
            {
              v61 = v52;
            }

            if (v60 >= 0x555555555555555)
            {
              v62 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v62 = v61;
            }

            std::vector<std::vector<PixelPosition>>::__vallocate[abi:ne200100](&__p, v62);
          }

          std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
        }

        v63 = v79 - __p;
        if (0xAAAAAAAAAAAAAAABLL * ((v79 - __p) >> 3) >= v52)
        {
          v64 = std::__copy_impl::operator()[abi:ne200100]<std::vector<PixelPosition> *,std::vector<PixelPosition> *,std::vector<PixelPosition> *>(v31, v32, __p);
          v65 = v79;
          if (v79 != v64)
          {
            v66 = v79;
            do
            {
              v68 = *(v66 - 3);
              v66 -= 24;
              v67 = v68;
              if (v68)
              {
                *(v65 - 2) = v67;
                operator delete(v67);
              }

              v65 = v66;
            }

            while (v66 != v64);
          }
        }

        else
        {
          std::__copy_impl::operator()[abi:ne200100]<std::vector<PixelPosition> *,std::vector<PixelPosition> *,std::vector<PixelPosition> *>(v31, (v31 + v63), __p);
          v64 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<PixelPosition>>,std::vector<PixelPosition>*,std::vector<PixelPosition>*,std::vector<PixelPosition>*>(&__p, (v31 + v63), v32, v79);
        }

        v79 = v64;
        ++v71;
      }

      while (v71 < *v23);
    }

    v82[0] = &p_p;
    std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](v82);
    p_p = &__p;
    std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&p_p);
  }
}

void sub_1B41ABCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19)
{
  a16 = &a19;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void *std::vector<PixelPosition>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void CRDetectorUtils::erodeConnectedComponentForLabel(CRDetectorUtils *this, CRDetectorUtils::CRTextDetectorConnectedComponentResult *a2, int *a3, unint64_t a4, unint64_t a5)
{
  v7 = this;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v8 = *(this + 30);
  v9 = (*(this + 4) + 32 * (a2 - v8));
  v10 = *v9;
  v38 = v9[1];
  if (*v9 > v38)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_32;
  }

  v16 = v9[3];
  v39 = v9[2];
  v40 = v16;
  v37 = a4 >> 1;
  v17 = 8 * v10 - 8 * (a4 >> 1);
  do
  {
    if (v39 > v16)
    {
      goto LABEL_27;
    }

    v18 = 8 * v39 - 8 * (a5 >> 1);
    v19 = v39;
    v42 = v17;
    do
    {
      if (!a4)
      {
        goto LABEL_26;
      }

      v20 = *(v7 + 13);
      if (*(*v7 + 8 * v20 * v10 + 8 * v19) != a2)
      {
        goto LABEL_26;
      }

      v21 = 0;
      LOBYTE(v22) = 0;
      v23 = *(v7 + 14);
      v24 = (*v7 + v18 + v17 * v20);
      v25 = a3;
      do
      {
        if (a5)
        {
          v26 = &v10[v21 - v37];
          v27 = v25;
          v28 = -(a5 >> 1);
          v29 = v24;
          for (i = a5; i; --i)
          {
            if (v22)
            {
              LOBYTE(v22) = 1;
            }

            else
            {
              v22 = *v27;
              if (*v27)
              {
                v31 = v19 + v28;
                if (v26 == v10)
                {
                  LOBYTE(v22) = 0;
                  if (v31 >= v20 || !v28 || v26 >= v23)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                  LOBYTE(v22) = 0;
                  if (v26 >= v23 || v31 >= v20)
                  {
                    goto LABEL_22;
                  }
                }

                LOBYTE(v22) = *v29 != a2;
              }
            }

LABEL_22:
            ++v29;
            ++v28;
            ++v27;
          }
        }

        v21 = (v21 + 1);
        v24 += v20;
        v25 += a5;
      }

      while (v21 != a4);
      if (v22)
      {
        v43 = __PAIR64__(v10, v19);
        std::vector<PixelPosition>::push_back[abi:ne200100](&v44, &v43);
        v16 = v40;
        v7 = this;
        v17 = v42;
      }

LABEL_26:
      ++v19;
      v18 += 8;
    }

    while (v19 <= v16);
LABEL_27:
    ++v10;
    v17 += 8;
  }

  while (v10 <= v38);
  v13 = v44;
  v11 = v45;
  LODWORD(v8) = *(v7 + 30);
  if (v44 != v45)
  {
    v32 = *v7;
    v33 = v44;
    do
    {
      v34 = *v33;
      v35 = v33[1];
      v33 += 2;
      *(v32 + 8 * *(v7 + 13) * v35 + 8 * v34) = v8 - 1;
    }

    while (v33 != v11);
  }

  v12 = v13;
LABEL_32:
  v36 = v11 - v12;
  *(*(v7 + 1) + 8 * (a2 - v8)) -= v36 >> 3;
  *(v7 + 16) -= v36 >> 3;
  if (v13)
  {
    v45 = v13;
    operator delete(v13);
  }
}

void sub_1B41AC040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CRDetectorUtils::dilateConnectedComponentForLabel(CRDetectorUtils *this, CRDetectorUtils::CRTextDetectorConnectedComponentResult *a2, int *a3, unint64_t a4, unint64_t a5)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v5 = (*(this + 4) + 32 * (a2 - *(this + 30)));
  v6 = *v5;
  v7 = *v5 - (a4 >> 1);
  v38 = v5[1] + (a4 >> 1);
  if (v7 > v38)
  {
    return;
  }

  v11 = this;
  v12 = a4 >> 1;
  v14 = v5 + 2;
  v13 = v5[2];
  v15 = a5 >> 1;
  v40 = v13 - (a5 >> 1);
  v16 = v14[1] + (a5 >> 1);
  v17 = 8 * v6 - 16 * v12;
  v34 = v13 - 2 * v15;
  v35 = v12;
  v36 = v16;
  do
  {
    if (v40 > v16)
    {
      goto LABEL_27;
    }

    v18 = v34;
    v19 = v40;
    v39 = v17;
    do
    {
      v20 = *(v11 + 14);
      if (v7 >= v20)
      {
        goto LABEL_26;
      }

      v21 = *(v11 + 13);
      if (v19 >= v21 || !a4 || *(*v11 + 8 * v21 * v7 + 8 * v19) != *(v11 + 30) - 1)
      {
        goto LABEL_26;
      }

      v22 = 0;
      LOBYTE(v23) = 0;
      v24 = *v11 + v17 * v21;
      v25 = a3;
      do
      {
        if (a5)
        {
          v26 = v22 + v7 - v35;
          v27 = v25;
          v28 = v15;
          v29 = v18;
          for (i = a5; i; --i)
          {
            if (v23)
            {
              LOBYTE(v23) = 1;
            }

            else
            {
              v23 = *v27;
              if (*v27)
              {
                if (v26 == v7)
                {
                  LOBYTE(v23) = 0;
                  if (v29 >= v21 || !v28)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                  LOBYTE(v23) = 0;
                  if (v26 >= v20 || v29 >= v21)
                  {
                    goto LABEL_22;
                  }
                }

                LOBYTE(v23) = *(v24 + 8 * v29) == a2;
              }
            }

LABEL_22:
            ++v29;
            --v28;
            ++v27;
          }
        }

        v22 = (v22 + 1);
        v24 += 8 * v21;
        v25 += a5;
      }

      while (v22 != a4);
      if (v23)
      {
        v31 = a3;
        v41 = __PAIR64__(v7, v19);
        std::vector<PixelPosition>::push_back[abi:ne200100](&v42, &v41);
        a3 = v31;
        v16 = v36;
        v11 = this;
        v17 = v39;
      }

LABEL_26:
      ++v19;
      ++v18;
    }

    while (v19 <= v16);
LABEL_27:
    ++v7;
    v17 += 8;
  }

  while (v7 <= v38);
  v32 = v42;
  v33 = v43;
  if (v42 != v43)
  {
    do
    {
      CRDetectorUtils::CRTextDetectorConnectedComponentResult::setLabel(v11, v32[1], *v32, a2);
      v32 += 2;
    }

    while (v32 != v33);
    v32 = v42;
  }

  if (v32)
  {
    v43 = v32;
    operator delete(v32);
  }
}

void sub_1B41AC290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t CRDetectorUtils::estimateVerticalIsthmusMergedLineCountInConnectedComponents(CRDetectorUtils *this, const CRDetectorUtils::CRTextDetectorConnectedComponentResult *a2, unint64_t a3)
{
  v3 = (*(this + 4) + 32 * a2);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3] - v6 + 1;
  v8 = v5 - *v3 + 1 >= 3 && v7 >= 4;
  if (!v8)
  {
    return 1;
  }

  v10 = fmin(v7, a3);
  v32[0] = 0;
  v32[1] = 0;
  v30 = 1;
  v31 = v32;
  if (v10)
  {
    v13 = 0;
    v14 = 0;
    v28 = 1;
    do
    {
      v29 = 0;
      if (v5 >= v4)
      {
        v15 = 0;
        v16 = 0;
        v17 = *(this + 13);
        v18 = *this + 8 * v6 + 8 * (v13 * v7 / v10);
        v19 = a2 + *(this + 30);
        v20 = v4;
        do
        {
          v21 = (*(v18 + 8 * v20 * v17) == v19) & v15;
          if (*(v18 + 8 * v20 * v17) == v19 && (v15 & 1) == 0)
          {
            v29 = ++v16;
            v21 = 1;
          }

          ++v20;
          v15 = v21;
        }

        while (v20 <= v5);
        if (v16 > 1)
        {
          v22 = v32[0];
          if (!v32[0])
          {
            goto LABEL_23;
          }

          v23 = v32;
          do
          {
            v24 = v22[4];
            v8 = v24 >= v16;
            v25 = v24 < v16;
            if (v8)
            {
              v23 = v22;
            }

            v22 = v22[v25];
          }

          while (v22);
          if (v23 == v32 || v16 < v23[4])
          {
LABEL_23:
            v33 = &v29;
            std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v31, &v29)[5] = 0;
          }

          v33 = &v29;
          v26 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v31, &v29);
          ++v26[5];
          v33 = &v29;
          if (std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v31, &v29)[5] > v14 || (v33 = &v29, std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v31, &v29)[5] == v14) && (v33 = &v29, std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v31, &v29)[5] > v28))
          {
            v33 = &v29;
            v14 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v31, &v29)[5];
            v28 = v29;
            v30 = v29;
          }
        }
      }

      ++v13;
    }

    while (v13 != v10);
  }

  v33 = &v30;
  if (v10 * 0.2 > std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v31, &v30)[5])
  {
    v9 = 1;
  }

  else
  {
    v9 = v30;
  }

  std::__tree<CRCHuint128>::destroy(&v31, v32[0]);
  return v9;
}

vImage_Error CRDetectorUtils::erodeImageMap@<X0>(const vImage_Buffer *this@<X0>, vImage_Buffer *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = __const__ZN15CRDetectorUtils13erodeImageMapEP13vImage_Buffer_kernel;
  v9[1] = unk_1B42AF390;
  v10 = 1065353216;
  v5 = malloc_type_calloc(this->height * this->width, 4uLL, 0x100004052888210uLL);
  height = this->height;
  width = this->width;
  a2->data = v5;
  a2->height = height;
  a2->width = width;
  a2->rowBytes = 4 * width;
  return vImageErode_PlanarF(this, a2, 0, 0, v9, 3uLL, 3uLL, 8u);
}

vImage_Error CRDetectorUtils::dilateImageMap@<X0>(const vImage_Buffer *this@<X0>, vImage_Buffer *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[0] = __const__ZN15CRDetectorUtils14dilateImageMapEP13vImage_Buffer_kernel;
  v9[1] = unk_1B42AF3B4;
  v10 = 1065353216;
  v5 = malloc_type_calloc(this->height * this->width, 4uLL, 0x100004052888210uLL);
  height = this->height;
  width = this->width;
  a2->data = v5;
  a2->height = height;
  a2->width = width;
  a2->rowBytes = 4 * width;
  return vImageDilate_PlanarF(this, a2, 0, 0, v9, 3uLL, 3uLL, 8u);
}

void sub_1B41AC9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  a46 = &unk_1F2BAF728;
  cv::SmartPtr::release(&a46);
  CRDetectorUtils::CRTextDetectorConnectedComponentResult::~CRTextDetectorConnectedComponentResult((v46 - 192));
  _Unwind_Resume(a1);
}

void CRDetectorUtils::sortQuadWithRotation(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v9 = *a1;
  v10 = v2;
  v3 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v3;
  memset(v8, 0, 24);
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint const*,CGPoint const*>(v8, &v9, v13, 4uLL);
  CRDetectorUtils::rotatePolygon(a1, (a1 + 88), &v9, *(a1 + 104), v4);
  v8[3] = *&v9.x;
  v8[4] = v10;
  v8[5] = v11;
  v8[6] = v12;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>();
}

void sub_1B41ACD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void CRDetectorUtils::generateConvexHull(uint64_t *a1@<X0>, void **a2@<X8>)
{
  __p = 0;
  v37 = 0;
  v38 = 0;
  std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(&__p, *a1, a1[1], (a1[1] - *a1) >> 3);
  v3 = v37 - __p;
  std::vector<PixelPosition>::vector[abi:ne200100](a2, (v37 - __p) >> 2);
  if (v3 < 0x19)
  {
    if (&__p == a2)
    {
      goto LABEL_50;
    }

    v6 = __p;
    v7 = v37;
    v15 = (v37 - __p) >> 3;
LABEL_49:
    std::vector<PixelPosition>::__assign_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(a2, v6, v7, v15);
    goto LABEL_50;
  }

  v4 = 126 - 2 * __clz((v37 - __p) >> 3);
  if (v37 == __p)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PixelPosition *,false>(__p, v37, &v39, v5, 1);
  v6 = __p;
  v7 = v37;
  if (__p == v37)
  {
    v14 = __p;
LABEL_25:
    if (v14 != v7)
    {
      v7 = v14;
      v37 = v14;
    }
  }

  else
  {
    v8 = (__p - 8);
    while (&v8[2] != v37)
    {
      v10 = v8[1].i32[0];
      ++v8;
      v9.i32[0] = v10;
      if (v10 == v8[1].i32[0] && v8->i32[1] == v8[1].i32[1])
      {
        v12 = v8 + 2;
        if (&v8[2] != v37)
        {
          do
          {
            if (v9.i32[0] != v12->i32[0] || v8->i32[1] != v12->i32[1])
            {
              v9 = *v12;
              v8[1] = *v12;
              ++v8;
            }

            ++v12;
          }

          while (v12 != v7);
          v7 = v37;
        }

        v14 = v8 + 1;
        goto LABEL_25;
      }
    }
  }

  v15 = (v7 - v6) >> 3;
  if (v15 < 4)
  {
    if (&__p == a2)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v16 = 0;
  for (i = 0; i != v15; ++i)
  {
    v18 = *a2;
    if (v16 >= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v16;
    }

    v20 = *(__p + i);
    v21 = &v18[v16 - 1];
    while (1)
    {
      v22 = __OFSUB__(v16--, 1);
      if ((v16 < 0) ^ v22 | (v16 == 0))
      {
        break;
      }

      v24 = *v21;
      v23 = v21[1];
      v25 = *(v21 - 1);
      v21 -= 2;
      if ((HIDWORD(v20) - HIDWORD(v25)) * (v24 - v25) + (v23 - HIDWORD(v25)) * (v25 - v20) >= 1)
      {
        v19 = v16 + 1;
        break;
      }
    }

    v16 = v19 + 1;
    v18[v19] = v20;
  }

  v26 = v15 - 1;
  v27 = v19 + 1;
  do
  {
    v28 = __p + 8 * v15;
    v15 = v26;
    v29 = *a2;
    v30 = v27;
    if (v27 >= v16)
    {
      v31 = v16;
    }

    else
    {
      v31 = v27;
    }

    v32 = *(v28 - 2);
    v33 = v27 + 1;
    v34 = &v29[v27 - 1];
    while (v30 > v16)
    {
      --v30;
      v35 = (HIDWORD(v32) - HIDWORD(*(v34 - 1))) * (*v34 - *(v34 - 1)) + (v34[1] - HIDWORD(*(v34 - 1))) * (*(v34 - 1) - v32);
      --v33;
      v34 -= 2;
      if (v35 >= 1)
      {
        goto LABEL_46;
      }
    }

    v33 = v31;
LABEL_46:
    v27 = v33 + 1;
    v29[v33] = v32;
    v26 = v15 - 1;
  }

  while (v15 != 1);
  std::vector<PixelPosition>::resize(a2, v33);
  std::vector<PixelPosition>::push_back[abi:ne200100](a2, __p);
LABEL_50:
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }
}

void sub_1B41AD03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PixelPosition>::resize(void *a1, unint64_t a2)
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
    std::vector<PixelPosition>::__append(a1, a2 - v2);
  }
}

uint64_t CRDetectorUtils::findRoot(uint64_t a1, void *a2)
{
  v2 = a1;
  if (*(*a2 + 8 * a1) != a1)
  {
    Root = CRDetectorUtils::findRoot();
    *(*a2 + 8 * v2) = Root;
    return Root;
  }

  return v2;
}

BOOL CRDetectorUtils::isContourInQuad(int **a1, double *a2, int a3, float a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    return 0;
  }

  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&m.a = *MEMORY[0x1E695EFD0];
  *&m.c = v10;
  *&m.tx = *(MEMORY[0x1E695EFD0] + 32);
  v11 = 0.0;
  v12 = 0.0;
  v13 = v4;
  do
  {
    v14 = *v13;
    v15 = v13[1];
    v13 += 2;
    v11 = v11 + v14;
    v12 = v12 + v15;
  }

  while (v13 != v5);
  v16 = ((v5 - v4) >> 3);
  v17 = v11 / v16;
  v18 = *(MEMORY[0x1E695EFD0] + 16);
  *&v38.a = *MEMORY[0x1E695EFD0];
  *&v38.c = v18;
  *&v38.tx = *(MEMORY[0x1E695EFD0] + 32);
  v19 = v12 / v16;
  CGAffineTransformTranslate(&m, &v38, v11 / v16, v12 / v16);
  v37 = m;
  CGAffineTransformScale(&v38, &v37, (1.0 - a4), (1.0 - a4));
  m = v38;
  v37 = v38;
  CGAffineTransformTranslate(&v38, &v37, -v17, -v19);
  m = v38;
  Mutable = CGPathCreateMutable();
  v22 = *a2;
  v23 = a2[1];
  v21 = a2 + 3;
  CGPathMoveToPoint(Mutable, 0, v22, v23);
  v24 = 3;
  do
  {
    CGPathAddLineToPoint(Mutable, 0, *(v21 - 1), *v21);
    v21 += 2;
    --v24;
  }

  while (v24);
  CGPathCloseSubpath(Mutable);
  v27 = a1;
  v25 = *a1;
  v26 = v27[1];
  if (a3 >= ((v26 - v25) >> 3))
  {
    if (v25 == v26)
    {
      v31 = 1;
    }

    else
    {
      do
      {
        v32 = *v25;
        v33 = v25[1];
        v25 += 2;
        v41.x = v32;
        v41.y = v33;
        v34 = CGPathContainsPoint(Mutable, &m, v41, 0);
      }

      while (v34 && v25 != v26);
      v31 = v34;
    }
  }

  else
  {
    if (v25 == v26)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = *v25;
        v30 = v25[1];
        v25 += 2;
        v40.x = v29;
        v40.y = v30;
        v28 += CGPathContainsPoint(Mutable, &m, v40, 0);
      }

      while (v25 != v26);
    }

    v31 = v28 >= a3;
  }

  CGPathRelease(Mutable);
  return v31;
}

void CRDetectorUtils::writeImageBufferToFile(CRDetectorUtils *this, vImage_Buffer *a2, NSString *a3)
{
  v5 = a2;
  v4 = [[CRImage alloc] initWithFloatBuffer:*this width:*(this + 2) height:*(this + 1)];
  [(CRImage *)v4 writeToFile:v5];
}

float CRDetectorUtils::distPointToLine(CRDetectorUtils *this, const CGPoint *a2, const CGPoint *a3, const CGPoint *a4)
{
  y = a2->y;
  v5 = a3->y;
  result = 0.0;
  if (a2->x != a3->x || y != v5)
  {
    return fabs((a3->x - a2->x) * (y - *(this + 1)) - (a2->x - *this) * (v5 - y)) / sqrt((v5 - y) * (v5 - y) + (a3->x - a2->x) * (a3->x - a2->x));
  }

  return result;
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<std::vector<CGPoint>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<CGPoint>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<CRDetectorUtils::CRTextDetectorCCBoundary>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<CRDetectorUtils::CRTextDetectorCCBoundary>::__append(a1, a2 - v2);
  }
}

void std::vector<CGPoint>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<CGPoint>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1B42AF280)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1B42AF280)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::vector<std::vector<CGPoint>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<PixelPosition>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<PixelPosition>>::~__split_buffer(v18);
  }
}

void std::vector<CRDetectorUtils::CRTextDetectorCCBoundary>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
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

void std::vector<CGPoint>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
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

void *std::deque<std::pair<int,int>>::emplace_back<int &,int &>(void *result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  v6 = result[2];
  v7 = result[1];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v6 - v7) << 6) - 1;
  }

  v9 = result[5];
  v10 = v9 + result[4];
  if (v8 == v10)
  {
    result = std::deque<std::pair<int,int>>::__add_back_capacity(result);
    v9 = v5[5];
    v7 = v5[1];
    v10 = v5[4] + v9;
  }

  v11 = (*(v7 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF));
  *v11 = *a2;
  v11[1] = *a3;
  v5[5] = v9 + 1;
  return result;
}

void *std::deque<std::pair<int,int>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(a1, &v10);
}

void sub_1B41ADCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_front<std::pair<int,int> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *> &>::emplace_back<std::pair<int,int> *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *> &>::emplace_front<std::pair<int,int> *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<std::pair<int,int>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void CRDetectorUtils::CRTextDetectorConnectedComponentResult::CRTextDetectorConnectedComponentResult(CRDetectorUtils::CRTextDetectorConnectedComponentResult *this, uint64_t a2, uint64_t a3, int a4, char a5, char a6)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 12) = 0;
  *(this + 13) = a2;
  *(this + 14) = a3;
  *(this + 30) = a4;
  *(this + 16) = 0;
  *(this + 136) = a5;
  *(this + 137) = a6;
  operator new[]();
}

void sub_1B41AE320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 10);
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = v10[7];
  if (v12)
  {
    v10[8] = v12;
    operator delete(v12);
  }

  v13 = v10[4];
  if (v13)
  {
    v10[5] = v13;
    operator delete(v13);
  }

  v14 = v10[1];
  if (v14)
  {
    v10[2] = v14;
    operator delete(v14);
  }

  v15 = *v10;
  *v10 = 0;
  if (v15)
  {
    MEMORY[0x1B8C73ED0](v15, 0x1000C8000313F17);
  }

  _Unwind_Resume(a1);
}

void CRDetectorUtils::CRTextDetectorConnectedComponentResult::~CRTextDetectorConnectedComponentResult(CRDetectorUtils::CRTextDetectorConnectedComponentResult *this)
{
  v6 = (this + 80);
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  v5 = *this;
  *this = 0;
  if (v5)
  {
    MEMORY[0x1B8C73ED0](v5, 0x1000C8000313F17);
  }
}

void *std::vector<std::vector<PixelPosition>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<PixelPosition>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::deque<std::pair<int,int>>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<std::pair<int,int>>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<PixelPosition> *,std::vector<PixelPosition> *,std::vector<PixelPosition> *>(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<PixelPosition>::__assign_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(a3, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

uint64_t std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint const*,CGPoint const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_NSRange>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B41AE6D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41AE77C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B41AE7F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,CRDetectorUtils::sortQuadWithRotation(CRDetectorUtils::CRTextDetectorQuad &)::$_0 &,int *,false>(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v85 = *(a2 - 1);
        v86 = *v10;
        if (*(**a3 + 8 * v85) < *(**a3 + 8 * v86))
        {
          *v10 = v85;
          *(a2 - 1) = v86;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v94 = v10 + 1;
      v95 = v10[1];
      v96 = v10 + 2;
      v97 = v10[2];
      v98 = *v10;
      v99 = **a3;
      v100 = *(v99 + 8 * v95);
      v101 = *(v99 + 8 * *v10);
      v102 = v97;
      v103 = *(v99 + 8 * v97);
      if (v100 >= v101)
      {
        if (v103 < v100)
        {
          v104 = v95;
          *v94 = v97;
          *v96 = v95;
          v105 = v10;
          v106 = v10 + 1;
          v102 = v95;
          if (v103 < v101)
          {
            goto LABEL_174;
          }

LABEL_176:
          v159 = *(a2 - 1);
          if (*(v99 + 8 * v159) < *(v99 + 8 * v102))
          {
            *v96 = v159;
            *(a2 - 1) = v95;
            v160 = *v96;
            v161 = *v94;
            v162 = *(v99 + 8 * v160);
            if (v162 < *(v99 + 8 * v161))
            {
              v10[1] = v160;
              v10[2] = v161;
              v163 = *v10;
              if (v162 < *(v99 + 8 * v163))
              {
                *v10 = v160;
                v10[1] = v163;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v104 = v98;
        if (v103 < v100)
        {
          v105 = v10;
          v106 = v10 + 2;
          v95 = *v10;
          goto LABEL_174;
        }

        *v10 = v95;
        v10[1] = v98;
        v105 = v10 + 1;
        v106 = v10 + 2;
        v95 = v98;
        if (v103 < v101)
        {
LABEL_174:
          *v105 = v97;
          *v106 = v98;
          v102 = v104;
          goto LABEL_176;
        }
      }

      v95 = v97;
      goto LABEL_176;
    }

    if (v11 == 5)
    {
      v84 = **a3;

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorUtils::sortQuadWithRotation(CRDetectorUtils::CRTextDetectorQuad &)::$_0 &,int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, v84);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v107 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v108 = **a3;
            v109 = 4;
            v110 = v10;
            do
            {
              v112 = *v110;
              v111 = v110[1];
              v110 = v107;
              v113 = *(v108 + 8 * v111);
              if (v113 < *(v108 + 8 * v112))
              {
                v114 = v109;
                while (1)
                {
                  *(v10 + v114) = v112;
                  v115 = v114 - 4;
                  if (v114 == 4)
                  {
                    break;
                  }

                  v112 = *(v10 + v114 - 8);
                  v114 -= 4;
                  if (v113 >= *(v108 + 8 * v112))
                  {
                    v116 = (v10 + v115);
                    goto LABEL_124;
                  }
                }

                v116 = v10;
LABEL_124:
                *v116 = v111;
              }

              v107 = v110 + 1;
              v109 += 4;
            }

            while (v110 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v153 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v154 = **a3;
          do
          {
            v156 = *v9;
            v155 = v9[1];
            v9 = v153;
            v157 = *(v154 + 8 * v155);
            if (v157 < *(v154 + 8 * v156))
            {
              do
              {
                *v153 = v156;
                v156 = *(v153 - 2);
                --v153;
              }

              while (v157 < *(v154 + 8 * v156));
              *v153 = v155;
            }

            v153 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v117 = (v11 - 2) >> 1;
        v118 = *a3;
        v119 = v117;
        do
        {
          v120 = v119;
          if (v117 >= v119)
          {
            v121 = (2 * v119) | 1;
            v122 = &v10[v121];
            v123 = 2 * v119 + 2;
            v124 = *v118;
            if (v123 < v11 && *(v124 + 8 * *v122) < *(v124 + 8 * v122[1]))
            {
              ++v122;
              v121 = 2 * v120 + 2;
            }

            v125 = &v10[v120];
            result = *v122;
            v126 = *v125;
            v127 = *(v124 + 8 * v126);
            if (*(v124 + 8 * result) >= v127)
            {
              do
              {
                v128 = v122;
                *v125 = result;
                if (v117 < v121)
                {
                  break;
                }

                v129 = 2 * v121;
                v121 = (2 * v121) | 1;
                v122 = &v10[v121];
                v130 = v129 + 2;
                if (v130 < v11 && *(v124 + 8 * *v122) < *(v124 + 8 * v122[1]))
                {
                  ++v122;
                  v121 = v130;
                }

                result = *v122;
                v125 = v128;
              }

              while (*(v124 + 8 * result) >= v127);
              *v128 = v126;
            }
          }

          v119 = v120 - 1;
        }

        while (v120);
        do
        {
          v131 = 0;
          v132 = *v10;
          v133 = *a3;
          v134 = v10;
          do
          {
            v135 = v134;
            v136 = &v134[v131];
            v134 = v136 + 1;
            v137 = 2 * v131;
            v131 = (2 * v131) | 1;
            v138 = v137 + 2;
            if (v138 < v11)
            {
              v140 = v136[2];
              v139 = v136 + 2;
              result = *(v139 - 1);
              if (*(*v133 + 8 * result) < *(*v133 + 8 * v140))
              {
                v134 = v139;
                v131 = v138;
              }
            }

            *v135 = *v134;
          }

          while (v131 <= ((v11 - 2) >> 1));
          if (v134 == --a2)
          {
            *v134 = v132;
          }

          else
          {
            *v134 = *a2;
            *a2 = v132;
            v141 = (v134 - v10 + 4) >> 2;
            v142 = v141 < 2;
            v143 = v141 - 2;
            if (!v142)
            {
              v144 = v143 >> 1;
              v145 = &v10[v144];
              v146 = *v145;
              v147 = *v134;
              v148 = *v133;
              v149 = *(v148 + 8 * v147);
              if (*(v148 + 8 * v146) < v149)
              {
                do
                {
                  v150 = v145;
                  *v134 = v146;
                  if (!v144)
                  {
                    break;
                  }

                  v144 = (v144 - 1) >> 1;
                  v145 = &v10[v144];
                  v146 = *v145;
                  v134 = v150;
                }

                while (*(v148 + 8 * v146) < v149);
                *v150 = v147;
              }
            }
          }

          v142 = v11-- <= 2;
        }

        while (!v142);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *(v14 + 8 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 8 * v17);
      v20 = *(v14 + 8 * v18);
      if (v19 >= v20)
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(v14 + 8 * v25) < *(v14 + 8 * v26))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v29 = *(a2 - 1);
        if (*(v14 + 8 * v29) < v20)
        {
          *v12 = v29;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v30 = v12 - 1;
      v31 = *(v12 - 1);
      v32 = v10[1];
      v33 = *(v14 + 8 * v31);
      v34 = *(v14 + 8 * v32);
      v35 = *(a2 - 2);
      v36 = *(v14 + 8 * v35);
      if (v33 >= v34)
      {
        if (v36 < v33)
        {
          *v30 = v35;
          *(a2 - 2) = v31;
          v37 = *v30;
          v38 = v10[1];
          if (*(v14 + 8 * v37) < *(v14 + 8 * v38))
          {
            v10[1] = v37;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v36 < v33)
        {
          v10[1] = v35;
          goto LABEL_39;
        }

        v10[1] = v31;
        *v30 = v32;
        v40 = *(a2 - 2);
        if (*(v14 + 8 * v40) < v34)
        {
          *v30 = v40;
LABEL_39:
          *(a2 - 2) = v32;
        }
      }

      v43 = v12[1];
      v41 = v12 + 1;
      v42 = v43;
      v44 = v10[2];
      v45 = *(v14 + 8 * v43);
      v46 = *(v14 + 8 * v44);
      v47 = *(a2 - 3);
      v48 = *(v14 + 8 * v47);
      if (v45 >= v46)
      {
        if (v48 < v45)
        {
          *v41 = v47;
          *(a2 - 3) = v42;
          v49 = *v41;
          v50 = v10[2];
          if (*(v14 + 8 * v49) < *(v14 + 8 * v50))
          {
            v10[2] = v49;
            *v41 = v50;
          }
        }
      }

      else
      {
        if (v48 < v45)
        {
          v10[2] = v47;
          goto LABEL_48;
        }

        v10[2] = v42;
        *v41 = v44;
        v51 = *(a2 - 3);
        if (*(v14 + 8 * v51) < v46)
        {
          *v41 = v51;
LABEL_48:
          *(a2 - 3) = v44;
        }
      }

      v52 = *v13;
      v53 = *v30;
      v54 = *(v14 + 8 * v52);
      v55 = *(v14 + 8 * v53);
      v56 = *v41;
      v57 = *(v14 + 8 * v56);
      if (v54 >= v55)
      {
        if (v57 >= v54)
        {
          goto LABEL_56;
        }

        *v13 = v56;
        *v41 = v52;
        v41 = v13;
        LODWORD(v52) = v53;
        if (v57 >= v55)
        {
          LODWORD(v52) = v56;
          goto LABEL_56;
        }
      }

      else if (v57 >= v54)
      {
        *v30 = v52;
        *v13 = v53;
        v30 = v13;
        LODWORD(v52) = v56;
        if (v57 >= v55)
        {
          LODWORD(v52) = v53;
LABEL_56:
          v58 = *v10;
          *v10 = v52;
          *v13 = v58;
          goto LABEL_57;
        }
      }

      *v30 = v56;
      *v41 = v53;
      goto LABEL_56;
    }

    v21 = *v10;
    v22 = *v13;
    v23 = *(v14 + 8 * v21);
    v24 = *(v14 + 8 * v22);
    if (v23 >= v24)
    {
      if (v16 < v23)
      {
        *v10 = v15;
        *(a2 - 1) = v21;
        v27 = *v10;
        v28 = *v13;
        if (*(v14 + 8 * v27) < *(v14 + 8 * v28))
        {
          *v13 = v27;
          *v10 = v28;
        }
      }

      goto LABEL_57;
    }

    if (v16 < v23)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v22;
      goto LABEL_57;
    }

    *v13 = v21;
    *v10 = v22;
    v39 = *(a2 - 1);
    if (*(v14 + 8 * v39) < v24)
    {
      *v10 = v39;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v59 = *v10;
    if (a5)
    {
      v60 = *(v14 + 8 * v59);
LABEL_60:
      v61 = 0;
      do
      {
        v62 = v10[++v61];
      }

      while (*(v14 + 8 * v62) < v60);
      v63 = &v10[v61];
      v64 = a2;
      if (v61 == 1)
      {
        v64 = a2;
        do
        {
          if (v63 >= v64)
          {
            break;
          }

          v66 = *--v64;
        }

        while (*(v14 + 8 * v66) >= v60);
      }

      else
      {
        do
        {
          v65 = *--v64;
        }

        while (*(v14 + 8 * v65) >= v60);
      }

      if (v63 >= v64)
      {
        v73 = v63 - 1;
      }

      else
      {
        v67 = *v64;
        v68 = v62;
        v69 = &v10[v61];
        v70 = v64;
        do
        {
          *v69 = v67;
          *v70 = v68;
          do
          {
            v71 = v69[1];
            ++v69;
            v68 = v71;
          }

          while (*(v14 + 8 * v71) < v60);
          do
          {
            v72 = *--v70;
            v67 = v72;
          }

          while (*(v14 + 8 * v72) >= v60);
        }

        while (v69 < v70);
        v73 = v69 - 1;
      }

      if (v73 != v10)
      {
        *v10 = *v73;
      }

      *v73 = v59;
      if (v63 < v64)
      {
        goto LABEL_81;
      }

      v74 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorUtils::sortQuadWithRotation(CRDetectorUtils::CRTextDetectorQuad &)::$_0 &,int *>(v10, v73, *a3);
      v10 = v73 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorUtils::sortQuadWithRotation(CRDetectorUtils::CRTextDetectorQuad &)::$_0 &,int *>(v73 + 1, a2, *a3);
      if (result)
      {
        a2 = v73;
        if (!v74)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v74)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,CRDetectorUtils::sortQuadWithRotation(CRDetectorUtils::CRTextDetectorQuad &)::$_0 &,int *,false>(v9, v73, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v73 + 1;
      }
    }

    else
    {
      v60 = *(v14 + 8 * v59);
      if (*(v14 + 8 * *(v10 - 1)) < v60)
      {
        goto LABEL_60;
      }

      if (v60 >= *(v14 + 8 * *(a2 - 1)))
      {
        v76 = v10 + 1;
        do
        {
          v10 = v76;
          if (v76 >= a2)
          {
            break;
          }

          ++v76;
        }

        while (v60 >= *(v14 + 8 * *v10));
      }

      else
      {
        do
        {
          v75 = v10[1];
          ++v10;
        }

        while (v60 >= *(v14 + 8 * v75));
      }

      v77 = a2;
      if (v10 < a2)
      {
        v77 = a2;
        do
        {
          v78 = *--v77;
        }

        while (v60 < *(v14 + 8 * v78));
      }

      if (v10 < v77)
      {
        v79 = *v10;
        v80 = *v77;
        do
        {
          *v10 = v80;
          *v77 = v79;
          do
          {
            v81 = v10[1];
            ++v10;
            v79 = v81;
          }

          while (v60 >= *(v14 + 8 * v81));
          do
          {
            v82 = *--v77;
            v80 = v82;
          }

          while (v60 < *(v14 + 8 * v82));
        }

        while (v10 < v77);
      }

      v83 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v83;
      }

      a5 = 0;
      *v83 = v59;
    }
  }

  v87 = *v10;
  v88 = v10[1];
  v89 = **a3;
  v90 = *(v89 + 8 * v88);
  v91 = *(v89 + 8 * v87);
  v92 = *(a2 - 1);
  v93 = *(v89 + 8 * v92);
  if (v90 >= v91)
  {
    if (v93 < v90)
    {
      v10[1] = v92;
      *(a2 - 1) = v88;
      v152 = *v10;
      v151 = v10[1];
      if (*(v89 + 8 * v151) < *(v89 + 8 * v152))
      {
        *v10 = v151;
        v10[1] = v152;
      }
    }
  }

  else
  {
    if (v93 >= v90)
    {
      *v10 = v88;
      v10[1] = v87;
      v158 = *(a2 - 1);
      if (*(v89 + 8 * v158) >= v91)
      {
        return result;
      }

      v10[1] = v158;
    }

    else
    {
      *v10 = v92;
    }

    *(a2 - 1) = v87;
  }

  return result;
}