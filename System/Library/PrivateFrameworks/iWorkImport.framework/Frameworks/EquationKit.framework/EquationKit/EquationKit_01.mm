void sub_275C989D8(_Unwind_Exception *exception_object)
{
  v3 = v1[7];
  if (v3)
  {
    v1[8] = v3;
    operator delete(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275C98A20(uint64_t a1)
{
  CGPathRelease(*a1);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_275C98A84(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    v5 = *a2;
    if (*a2)
    {
      v5 = MEMORY[0x277C8C900]();
    }

    *a1 = v5;
    sub_275C9A9F4((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 4);
    sub_275C9AB20((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
    sub_275C9AC4C((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
    *(a1 + 80) = *(a2 + 80);
    v6 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v6;
    *(a1 + 120) = *(a2 + 120);
    v7 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v7;
  }

  return a1;
}

const __CTFont *sub_275C98B34(UniChar a1, CTFontRef font)
{
  v2 = font;
  characters = a1;
  glyphs = -1;
  if (font)
  {
    if (CTFontGetGlyphsForCharacters(font, &characters, &glyphs, 1))
    {
      memset(&v4, 0, sizeof(v4));
      CGAffineTransformMakeScale(&v4, 1.0, -1.0);
      if (CTFontCreatePathForGlyph(v2, glyphs, &v4))
      {
        operator new();
      }
    }

    return 0;
  }

  return v2;
}

uint64_t sub_275C98C14(CGGlyph a1, const __CTFont *a2)
{
  memset(&v5, 0, sizeof(v5));
  CGAffineTransformMakeScale(&v5, 1.0, -1.0);
  if (CTFontCreatePathForGlyph(a2, a1, &v5))
  {
    operator new();
  }

  return 0;
}

void sub_275C98CD0(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    *(a1 + 80) = 1;
    info[0] = 0;
    info[1] = a1;
    v2 = 0;
    CGPathApply(*a1, info, sub_275C98348);
  }
}

CGFloat *sub_275C98D24(uint64_t a1)
{
  v1 = a1;
  *(a1 + 120) = 1;
  PathBoundingBox = CGPathGetPathBoundingBox(*a1);
  v1[11] = PathBoundingBox.origin.x;
  v1[12] = PathBoundingBox.origin.y;
  v1 += 11;
  v1[2] = PathBoundingBox.size.width;
  v1[3] = PathBoundingBox.size.height;
  return v1;
}

BOOL sub_275C98D60(void *a1, unint64_t a2, float64x2_t *a3, float64x2_t *a4)
{
  sub_275C98CD0(a1);
  v8 = *MEMORY[0x277CBF348];
  v9 = a1[4];
  if (a2 >= (a1[5] - v9) >> 4 || ((v10 = (v9 + 16 * a2), v11 = *v10, v32 = *MEMORY[0x277CBF348], v11 > 3) ? (v12 = 0) : (v12 = qword_275D0B848[v11]), (sub_275C98F04(a1, a2, &v33), v33 >= a2) ? (v13 = v34 + v33) : (v13 = a2), (v14 = v13 - 1, v15 = v13 == v34 + v33, v33 >= v14) ? (v16 = v34 + v33) : (v16 = v14), (v17 = v16 - 1, (v35 & v15) == 0) ? (v18 = v14) : (v18 = v17), v18 != 0x7FFFFFFFFFFFFFFFLL && (v19 = sub_275C98FD4(a1, v18), v19 != 0x7FFFFFFFFFFFFFFFLL) ? (v8 = *(a1[1] + 16 * v19), v20 = 1) : (v20 = 0, v8 = v32), v21 = *(v10 + 1), v21 >= v21 + v12))
  {
    result = 0;
    v25 = v8;
  }

  else
  {
    v22 = (a1[1] + 16 * v21);
    v23 = v12;
    v24 = v20;
    v25 = v8;
    do
    {
      v26 = *v22;
      if (v24)
      {
        v8 = vbslq_s8(vcgtq_f64(v8, v26), v26, v8);
        v27 = vmovn_s64(vcgtq_f64(v26, v25));
        v28 = v27.i8[4];
        if (v27.i8[0])
        {
          v29 = v22->f64[0];
        }

        else
        {
          v29 = v25.f64[0];
        }

        v25.f64[0] = v29;
        v26.f64[0] = v29;
        if (v28)
        {
          v30 = -1;
        }

        else
        {
          v30 = 0;
        }

        v25 = vbslq_s8(vdupq_n_s64(v30), v26, v25);
      }

      else
      {
        v8 = *v22;
        v25 = *v22;
      }

      ++v24;
      ++v22;
      --v23;
    }

    while (v23);
    result = (v12 + v20) > 1;
  }

  *a3 = v8;
  *a4 = v25;
  return result;
}

void sub_275C98F04(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_275C98CD0(a1);
  *a3 = xmmword_275D0B800;
  *(a3 + 16) = 0;
  v6 = a1[4];
  v7 = (a1[5] - v6) >> 4;
  if (v7 > a2)
  {
    v9 = a1[7];
    v8 = a1[8];
    if (v8 == v9)
    {
      v11 = a1[8];
    }

    else
    {
      v10 = v8 - v9;
      v11 = a1[7];
      do
      {
        v12 = v10 >> 1;
        v13 = &v11[v10 >> 1];
        v15 = *v13;
        v14 = v13 + 1;
        v10 += ~(v10 >> 1);
        if (v15 > a2)
        {
          v10 = v12;
        }

        else
        {
          v11 = v14;
        }
      }

      while (v10);
    }

    if (v9 != v11)
    {
      v16 = *(v11 - 1);
      if (v8 != v11)
      {
        v7 = *v11;
      }

      v17 = *(v6 + 16 * v7 - 16);
      *a3 = v16;
      *(a3 + 8) = v7 - v16;
      *(a3 + 16) = v17 == 4;
    }
  }
}

uint64_t sub_275C98FD4(uint64_t a1, unint64_t a2)
{
  sub_275C98CD0(a1);
  v4 = *(a1 + 32);
  if (a2 >= (*(a1 + 40) - v4) >> 4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = (v4 + 16 * a2);
  v6 = *v5;
  if (v6 > 3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_275D0B828[v6] + *(v5 + 1);
  }
}

void sub_275C99038(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  sub_275C98CD0(a1);
  v10 = a1[4];
  if (a2 < (a1[5] - v10) >> 4)
  {
    v11 = (v10 + 16 * a2);
    v12 = *v11;
    if (*v11 - 2 < 2)
    {
      sub_275C98F04(a1, a2, &v30);
      if (v30 >= a2)
      {
        v20 = v31 + v30;
      }

      else
      {
        v20 = a2;
      }

      v21 = v20 - 1;
      v22 = v20 == v31 + v30;
      if (v30 >= v21)
      {
        v23 = v31 + v30;
      }

      else
      {
        v23 = v21;
      }

      v24 = v23 - 1;
      if ((v32 & v22) != 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = v21;
      }

      if (v25 == 0x7FFFFFFFFFFFFFFFLL || (v26 = sub_275C98FD4(a1, v25), v26 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v27 = 0;
      }

      else
      {
        v14 = *(a1[1] + 16 * v26);
        *v33 = v14;
        v27 = 1;
      }

      v28 = *v11;
      if (v28 > 3)
      {
        v29 = 0;
      }

      else
      {
        v29 = qword_275D0B848[v28];
        memcpy(&v33[2 * v27], (a1[1] + 16 * *(v11 + 1)), 16 * v29);
      }

      sub_275C9962C(v33, v29 + v27, a3, a4, a5, *&v14, v15, v16, v17, v18, v19);
    }

    else if (v12 == 4 || v12 == 1)
    {
      v33[0] = 0x7FFFFFFFFFFFFFFFLL;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      if (sub_275C9920C(a1, a2, v33, &v30, 0))
      {
        sub_275C99344(a3, a4, a5, *(a1[1] + 16 * v33[0]), *(a1[1] + 16 * v33[0] + 8), *(a1[1] + 16 * v30), *(a1[1] + 16 * v30 + 8));
      }
    }
  }
}

BOOL sub_275C9920C(void *a1, unint64_t a2, uint64_t *a3, uint64_t *a4, __int128 *a5)
{
  if (a5)
  {
    v22 = *a5;
    v23 = *(a5 + 2);
  }

  else
  {
    sub_275C98F04(a1, a2, &v22);
  }

  *a3 = 0x7FFFFFFFFFFFFFFFLL;
  *a4 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = v22;
  if (a2 < v22 || a2 - v22 >= *(&v22 + 1))
  {
    return 0;
  }

  if (a2 <= v22)
  {
    v12 = *(&v22 + 1) + v22;
  }

  else
  {
    v12 = a2;
  }

  v13 = v12 - 1;
  v14 = a1[4];
  v15 = *(v14 + 16 * a2);
  if (a2 == v22 && ((v16 = *(v14 + 16 * v13), !v15) ? (v17 = v16 == 4) : (v17 = 0), v17))
  {
    v18 = *(&v22 + 1) + a2;
    if (v13 > a2)
    {
      v18 = v13;
    }

    v13 = v18 - 1;
  }

  else
  {
    if (a2 + 1 == *(&v22 + 1) + v22 && v15 == 4)
    {
      v19 = a1;
      goto LABEL_26;
    }

    if (v15 != 1)
    {
      v20 = *a3;
      return *a4 != 0x7FFFFFFFFFFFFFFFLL && v20 != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v19 = a1;
  v9 = a2;
LABEL_26:
  *a4 = sub_275C98FD4(v19, v9);
  v20 = sub_275C98FD4(a1, v13);
  *a3 = v20;
  return *a4 != 0x7FFFFFFFFFFFFFFFLL && v20 != 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t sub_275C99344(uint64_t result, uint64_t a2, uint64_t *a3, double a4, double a5, double a6, double a7)
{
  if ((result & 0xFFFFFFFD) != 0)
  {
    return result;
  }

  v7 = result & 0xFFFFFFFE;
  v8 = *a3;
  v9 = (a3[1] - *a3) >> 3;
  if (a5 == a7)
  {
    v10 = a5 * *(a2 + 8);
    v11 = (floorf(v10) - *a2);
    goto LABEL_5;
  }

  v14 = *(a2 + 8);
  v15 = a5 * v14;
  v16 = *a2;
  v11 = (floorf(v15) - v16);
  v17 = a7 * v14;
  v18 = floorf(v17);
  v19 = (v18 - v16);
  if (a4 == a6)
  {
    if (v11 <= v19)
    {
      v20 = (v18 - v16);
    }

    else
    {
      v20 = v11;
    }

    if (v11 >= v19)
    {
      v11 = (v18 - v16);
    }

    v21 = v11 & ~(v11 >> 63);
    v22 = v9 - 1;
    if (v20 < v22)
    {
      v22 = v20;
    }

    if (v21 <= v22)
    {
      if (a6 >= a4)
      {
        v23 = a4;
      }

      else
      {
        v23 = a6;
      }

      if (a4 < a6)
      {
        a4 = a6;
      }

      v24 = v21 - 1;
      v25 = (v8 + 8 * v21);
      do
      {
        v26 = *v25;
        if (v7 == 2)
        {
          if (v26 >= a4)
          {
            v27 = *v25;
          }

          else
          {
            v27 = a4;
          }
        }

        else if (v23 >= v26)
        {
          v27 = *v25;
        }

        else
        {
          v27 = v23;
        }

        *v25++ = v27;
        ++v24;
      }

      while (v24 < v22);
    }
  }

  else
  {
    v28 = v11 <= v19;
    if (v11 == v19)
    {
LABEL_5:
      if (v11 < 0 || v9 <= v11)
      {
        return result;
      }

      v12 = *(v8 + 8 * v11);
      if (v7 == 2)
      {
        if (a4 < a6)
        {
          a4 = a6;
        }

        v13 = v12 < a4;
      }

      else
      {
        if (a6 < a4)
        {
          a4 = a6;
        }

        v13 = a4 < v12;
      }

      if (!v13)
      {
        a4 = *(v8 + 8 * v11);
      }

LABEL_40:
      *(v8 + 8 * v11) = a4;
      return result;
    }

    if (v11 > v19)
    {
      v29 = a4;
    }

    else
    {
      v29 = a6;
    }

    if (v11 > v19)
    {
      v30 = v19;
    }

    else
    {
      v30 = v11;
    }

    if (v11 > v19)
    {
      v31 = a5;
    }

    else
    {
      v11 = v19;
      v31 = a7;
    }

    if (v28)
    {
      a6 = a4;
      v32 = a5;
    }

    else
    {
      v32 = a7;
    }

    v33 = (v29 - a6) / (v31 - v32);
    v34 = v30 + 1;
    a4 = a6 + ((v30 + 1 + *a2) / v14 - v32) * v33;
    if ((v30 & 0x8000000000000000) == 0 && v30 < v9)
    {
      v35 = *(v8 + 8 * v30);
      if (a4 >= a6)
      {
        v36 = a6;
      }

      else
      {
        v36 = a4;
      }

      if (v36 >= v35)
      {
        v36 = *(v8 + 8 * v30);
      }

      if (a6 < a4)
      {
        a6 = a4;
      }

      if (v35 >= a6)
      {
        a6 = *(v8 + 8 * v30);
      }

      if (v7 != 2)
      {
        a6 = v36;
      }

      *(v8 + 8 * v30) = a6;
    }

    if (v34 < v11)
    {
      v37 = *(a2 + 16);
      do
      {
        v38 = a4;
        a4 = a4 + v33 * v37;
        if ((v34 & 0x8000000000000000) == 0 && v34 < v9)
        {
          v39 = *(v8 + 8 * v34);
          if (a4 >= v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = a4;
          }

          if (v40 >= v39)
          {
            v40 = *(v8 + 8 * v34);
          }

          if (v38 < a4)
          {
            v38 = a4;
          }

          if (v39 >= v38)
          {
            v38 = *(v8 + 8 * v34);
          }

          if (v7 != 2)
          {
            v38 = v40;
          }

          *(v8 + 8 * v34) = v38;
        }

        ++v34;
      }

      while (v11 != v34);
    }

    if ((v11 & 0x8000000000000000) == 0 && v11 < v9)
    {
      v41 = *(v8 + 8 * v11);
      if (v29 >= a4)
      {
        v42 = a4;
      }

      else
      {
        v42 = v29;
      }

      if (v42 >= v41)
      {
        v42 = *(v8 + 8 * v11);
      }

      if (a4 < v29)
      {
        a4 = v29;
      }

      if (v41 >= a4)
      {
        a4 = *(v8 + 8 * v11);
      }

      if (v7 != 2)
      {
        a4 = v42;
      }

      goto LABEL_40;
    }
  }

  return result;
}

uint64_t sub_275C9962C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  v67 = *MEMORY[0x277D85DE8];
  v14 = a3 & 0xFFFFFFFD;
  v15 = *result;
  v16 = vdupq_laneq_s64(*result, 1);
  if (a2 < 2)
  {
    v20 = *result;
    v19 = *result;
    if (v14)
    {
      return result;
    }
  }

  else
  {
    v17 = a2 - 1;
    v18 = (result + 24);
    v19 = *result;
    v20 = *result;
    do
    {
      v21 = *(v18 - 1);
      if (v21 < v19)
      {
        v19 = *(v18 - 1);
      }

      if (v20 < v21)
      {
        v20 = *(v18 - 1);
      }

      v22.f64[1] = v16.f64[1];
      *&v22.f64[0] = *v18;
      v23.f64[0] = v16.f64[0];
      *&v23.f64[1] = *v18;
      a11 = vcgtq_f64(v23, v22);
      v16 = vbslq_s8(a11, vdupq_lane_s64(*v18, 0), v16);
      v18 += 2;
      --v17;
    }

    while (v17);
    if (v14)
    {
      return result;
    }
  }

  *a11.i32 = *a4;
  v24 = vcvtq_s64_f64(vcvtq_f64_f32(vsub_f32(vrndm_f32(vcvt_f32_f64(vmulq_n_f64(v16, *(a4 + 8)))), vdup_lane_s32(*a11.i8, 0))));
  if (v24.i64[0] == v24.i64[1])
  {
    if ((v24.i64[0] & 0x8000000000000000) == 0)
    {
      v25 = *a5;
      if (((a5[1] - *a5) >> 3) > v24.i64[0])
      {
        v26 = *(v25 + 8 * v24.i64[0]);
        if ((a3 & 0xFFFFFFFE) == 2)
        {
          if (v19 >= v20)
          {
            v20 = v19;
          }

          _NF = v26 < v20;
        }

        else
        {
          if (v20 >= v19)
          {
            v20 = v19;
          }

          _NF = v20 < v26;
        }

        if (_NF)
        {
          v26 = v20;
        }

        *(v25 + 8 * v24.i64[0]) = v26;
      }
    }
  }

  else if (v20 - v19 <= *(a4 + 24))
  {
    v50 = result + 16 * a2;
    v51 = *(v50 - 16);
    v52 = *(v50 - 8);
    v30 = *(result + 8);
LABEL_33:

    return sub_275C99344(a3, a4, a5, v15.f64[0], v30, v51, v52);
  }

  else
  {
    v28 = result + 16 * a2;
    if (a2 <= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = a2;
    }

    v30 = *(result + 8);
    v31 = (result + 24);
    v32 = v29 - 2;
    v33 = 1;
    do
    {
      if (!v32)
      {
        goto LABEL_32;
      }

      ++v33;
      v34 = *(v28 - 16) - v15.f64[0];
      v35 = *(v28 - 8) - v15.f64[1];
      v36 = fabs(v34 * (v15.f64[1] - *v31) - (v15.f64[0] - *(v31 - 1)) * v35);
      *&v34 = v35 * v35 + v34 * v34;
      v31 += 2;
      --v32;
    }

    while (v36 / sqrtf(*&v34) <= *(a4 + 32));
    if (v33 >= a2)
    {
LABEL_32:
      v51 = *(v28 - 16);
      v52 = *(v28 - 8);
      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v53 = (result + 16);
      v69 = vld2q_f64(v53);
      __asm { FMOV            V4.2D, #0.5 }

      v55 = vmulq_f64(vaddq_f64(vextq_s8(vdupq_lane_s64(*&v15.f64[0], 0), v69.val[0], 8uLL), v69.val[0]), _Q4);
      v56 = vmulq_f64(vaddq_f64(vextq_s8(v15, v69.val[1], 8uLL), v69.val[1]), _Q4);
      v63 = *result;
      v64 = vzip1q_s64(v55, v56);
      v65 = vmulq_f64(vpaddq_f64(v55, v56), _Q4);
      v59 = v65;
      v60 = vzip2q_s64(v55, v56);
      v61 = *(result + 32);
      sub_275C9962C(&v63, 3, a3, a4, a5);
      v49 = 3;
    }

    else
    {
      if (a2 != 4)
      {
        return result;
      }

      v37 = 0;
      __asm { FMOV            V1.2D, #0.5 }

      do
      {
        v42 = *(result + v37 * 16 + 16);
        v57[v37++] = vmulq_f64(vaddq_f64(v15, v42), _Q1);
        v15 = v42;
      }

      while (v37 != 3);
      v43 = v57;
      v44 = v58;
      v45 = vld1q_dup_f64(v43++);
      v70 = vld2q_f64(v44);
      v46 = vld1q_dup_f64(v43);
      v47 = vmulq_f64(vaddq_f64(vextq_s8(v45, v70.val[0], 8uLL), v70.val[0]), _Q1);
      v70.val[0] = vmulq_f64(vaddq_f64(vextq_s8(v46, v70.val[1], 8uLL), v70.val[1]), _Q1);
      v63 = *result;
      v64 = v57[0];
      v65 = vzip1q_s64(v47, v70.val[0]);
      v66 = vmulq_f64(vpaddq_f64(v47, v70.val[0]), _Q1);
      v59 = v66;
      v60 = vzip2q_s64(v47, v70.val[0]);
      v48 = *(result + 48);
      v61 = v58[1];
      v62 = v48;
      sub_275C9962C(&v63, 4, a3, a4, a5);
      v49 = 4;
    }

    return sub_275C9962C(&v59, v49, a3, a4, a5);
  }

  return result;
}

BOOL sub_275C999F4(uint64_t a1, unint64_t a2, _OWORD *a3, void *a4)
{
  sub_275C98CD0(a1);
  v8 = sub_275C98FD4(a1, a2);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = (a1 + 8);
  v12 = (v10 - v9) >> 4;
  if (v8 < v12)
  {
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = v11;
    }

    *a3 = *(*v13 + 16 * v8);
  }

  return v8 < v12;
}

unint64_t sub_275C99A68(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4)
{
  sub_275C98CD0(a1);
  if (a2 <= 3)
  {
    v8 = *(a1 + qword_275D0B868[a2]);
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_40;
    }
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 40) - *(a1 + 32);
  if (!v10)
  {
    return v9;
  }

  v11 = 0;
  v12 = MEMORY[0x277CBF348];
  v13 = v10 >> 4;
  v15 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  if (v13 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v23 = *v12;
    if (!sub_275C999F4(a1, v11, &v23, 0))
    {
      goto LABEL_12;
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
LABEL_11:
      v8 = v11;
      v14 = v18;
      v15 = v17;
      goto LABEL_12;
    }

    if (a2 == 2)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*&v23 > v15)
      {
        goto LABEL_11;
      }

      if (*&v23 == v15 && *(&v23 + 1) < v14)
      {
        goto LABEL_11;
      }
    }

    else if (a2 == 1)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*(&v23 + 1) < v14)
      {
        goto LABEL_11;
      }

      if (*(&v23 + 1) == v14 && *&v23 < v15)
      {
        goto LABEL_11;
      }
    }

    else if (a2)
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*(&v23 + 1) > v14 || *(&v23 + 1) == v14 && *&v23 < v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v18 = *(&v23 + 1);
      v17 = *&v23;
      if (*&v23 < v15 || *&v23 == v15 && *(&v23 + 1) < v14)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    ++v11;
  }

  while (v16 != v11);
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a2 <= 3)
    {
      *(a1 + qword_275D0B868[a2]) = v8;
    }

LABEL_40:
    if (a4)
    {
      v21 = a4;
    }

    else
    {
      v21 = (a1 + 8);
    }

    sub_275C999F4(a1, v8, a3, v21);
    return v8;
  }

  return v9;
}

void sub_275C99C28(void *a1, CGPath *a2, const CGAffineTransform *a3, void *a4)
{
  sub_275C98CD0(a1);
  if (!a4)
  {
    a4 = a1 + 1;
  }

  if (a4[1] - *a4 == a1[2] - a1[1])
  {
    for (i = a1[4]; i != a1[5]; i += 16)
    {
      v9 = *i;
      if (*i == 4)
      {
        CGPathCloseSubpath(a2);
      }

      else
      {
        v10 = (*a4 + 16 * *(i + 8));
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            CGPathAddQuadCurveToPoint(a2, a3, *v10, v10[1], v10[2], v10[3]);
          }

          else if (v9 == 3)
          {
            CGPathAddCurveToPoint(a2, a3, *v10, v10[1], v10[2], v10[3], v10[4], v10[5]);
          }
        }

        else if (v9)
        {
          if (v9 == 1)
          {
            CGPathAddLineToPoint(a2, a3, *v10, v10[1]);
          }
        }

        else
        {
          CGPathMoveToPoint(a2, a3, *v10, v10[1]);
        }
      }
    }
  }
}

uint64_t sub_275C99D48(void *a1, int a2, double *a3)
{
  *a3 = 0.0;
  sub_275C98CD0(a1);
  v6 = a1[4];
  v7 = a1[5];
  if (v7 == v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x277CBF348];
  while (1)
  {
    if (*(v6 + v8) != 3)
    {
      goto LABEL_36;
    }

    v11 = v6 + v8;
    v12 = *(v6 + v8 + 8);
    v13 = v12 + 1;
    v14 = v12 + 2;
    v15 = a1[1];
    v16 = (a1[2] - v15) >> 4;
    v17 = (v16 <= v13 ? v10 : v15 + 16 * v13);
    v18 = *v17;
    v19 = v17[1];
    v20 = (v16 <= v14 ? v10 : v15 + 16 * v14);
    v21 = v20[1];
    v22 = *v20 - v18;
    v23 = v21 - v19;
    v24 = a2 == 1 ? v21 - v19 : *v20 - v18;
    if (v24 != 0.0)
    {
      goto LABEL_36;
    }

    sub_275C98F04(a1, v9, v40);
    v25 = v40[0];
    if (v9 + 1 < v40[1] + v40[0])
    {
      v25 = v9 + 1;
    }

    v6 = a1[4];
    v26 = v6 + 16 * v25;
    if (*v26 == 3)
    {
      v27 = *(v11 + 8) + 2;
      v28 = *(v26 + 8);
      v29 = a1[1];
      v30 = (a1[2] - v29) >> 4;
      v31 = (v30 <= v27 ? v10 : v29 + 16 * v27);
      v32 = v31[1];
      v33 = (v30 <= v28 ? v10 : v29 + 16 * v28);
      v34 = v33[1];
      v35 = *v33 - *v31;
      v36 = v34 - v32;
      v37 = a2 == 1 ? v34 - v32 : *v33 - *v31;
      if (v37 == 0.0)
      {
        if (v22 > 0.0 && v35 > 0.0)
        {
          goto LABEL_40;
        }

        if (v22 < 0.0 && v35 < 0.0)
        {
          v39 = -1.0;
          if (v22 <= 0.0)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        if (v23 > 0.0 && v36 > 0.0)
        {
          goto LABEL_40;
        }

        if (v23 < 0.0 && v36 < 0.0)
        {
          break;
        }
      }
    }

    v7 = a1[5];
LABEL_36:
    ++v9;
    v8 += 16;
    if (v9 >= (v7 - v6) >> 4)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v39 = -1.0;
  if (v23 > 0.0)
  {
LABEL_40:
    v39 = 1.0;
  }

LABEL_41:
  *a3 = v39;
  return v9;
}

unint64_t sub_275C99F2C(uint64_t a1, unint64_t a2)
{
  v4 = sub_275C98FD4(a1, a2);
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = a1 + 8;
    v6 = *(a1 + 8);
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v8 = v10;
    v13 = *(v6 + 16 * v4);
    v12.n128_u64[1] = (*(v9 - 2) - v6) >> 4;
    v12.n128_u64[0] = 1;
    if (a2 + 1 >= (v9[1] - v10) >> 4)
    {
      sub_275C98620(v9, &v12);
    }

    else
    {
      sub_275C99FE4(v9, (v8 + 16 * (a2 + 1)), &v12);
    }

    sub_275C98548(v7, &v13);
    return v12.n128_u64[1];
  }

  return v5;
}

__n128 *sub_275C99FE4(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_275C8D77C();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      sub_275C9A8F4(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    sub_275C9AD78(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_275C9A180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C9A1B8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  *&v24 = MinX;
  *(&v24 + 1) = CGRectGetMinY(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  *&v23 = MaxX;
  *(&v23 + 1) = CGRectGetMinY(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v12 = CGRectGetMaxX(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  *&v22 = v12;
  *(&v22 + 1) = CGRectGetMaxY(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  v13 = CGRectGetMinX(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  *&v21 = v13;
  *(&v21 + 1) = CGRectGetMaxY(v31);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  a1 += 8;
  *&v20 = 0;
  *(&v20 + 1) = (v15 - v14) >> 4;
  *(&v19 + 1) = *(&v20 + 1) + 1;
  *&v19 = 1;
  *(&v18 + 1) = *(&v20 + 1) + 2;
  *&v18 = 1;
  *(&v17 + 1) = *(&v20 + 1) + 3;
  *&v17 = 1;
  v16 = xmmword_275D0B810;
  sub_275C98548(a1, &v21);
  sub_275C98548(a1, &v22);
  sub_275C98548(a1, &v23);
  sub_275C98548(a1, &v24);
  sub_275C98620(a1 + 24, &v20);
  sub_275C98620(a1 + 24, &v19);
  sub_275C98620(a1 + 24, &v18);
  sub_275C98620(a1 + 24, &v17);
  sub_275C98620(a1 + 24, &v16);
}

unint64_t sub_275C9A36C@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v48[1] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  result = sub_275C99A68(a1, a2, &v45, 0);
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = result;
    sub_275C98F04(a1, result, &v43);
    v41 = 0;
    v42 = 0;
    v40 = 0;
    result = sub_275C9920C(a1, v7, &v42, &v41, &v43);
    if (result)
    {
      v8 = v41;
      v9 = v42;
      v10 = a1[1];
      v11 = (v10 + 16 * v42);
      v12 = v10 + 16 * v41;
      if ((a2 & 0xFFFFFFFD) == 1)
      {
        ++v11;
      }

      if (vabdd_f64(*v11, *(v12 + 8 * ((a2 & 0xFFFFFFFD) == 1))) >= 0.00100000005)
      {
        *&v46 = v42;
        *(&v46 + 1) = v41;
        v25 = v43;
        v26 = *(&v43 + 1) + v43;
        if (v7 + 1 < *(&v43 + 1) + v43)
        {
          v27 = v7 + 1;
        }

        else
        {
          v27 = v43;
        }

        if (v27 + 1 < v26)
        {
          v25 = v27 + 1;
        }

        if (((v27 == v26 - 1) & v44) != 0)
        {
          v28 = v25;
        }

        else
        {
          v28 = v27;
        }

        result = sub_275C9920C(a1, v28, &v40, &v47, &v43);
        if (result && v40 == *(&v46 + 1))
        {
          v29 = v43;
          v30 = *(&v43 + 1) + v43;
          if (v28 + 1 < *(&v43 + 1) + v43)
          {
            v31 = v28 + 1;
          }

          else
          {
            v31 = v43;
          }

          if (v31 + 1 < v30)
          {
            v29 = v31 + 1;
          }

          v32 = ((v31 == v30 - 1) & v44) != 0 ? v29 : v31;
          result = sub_275C9920C(a1, v32, &v40, v48, &v43);
          if (result)
          {
            if (v40 == v47)
            {
              v33 = a1[1];
              v34 = (v33 + 16 * *(&v46 + 1));
              if ((a2 & 0xFFFFFFFD) == 1)
              {
                ++v34;
              }

              if (vabdd_f64(*v34, *(v33 + 16 * v40 + 8 * ((a2 & 0xFFFFFFFD) == 1))) < 0.00100000005)
              {
                goto LABEL_30;
              }
            }
          }
        }
      }

      else
      {
        *(&v46 + 1) = v42;
        v47 = v41;
        if (v43 >= v7)
        {
          v13 = *(&v43 + 1) + v43;
        }

        else
        {
          v13 = v7;
        }

        v14 = v13 - 1;
        v15 = v13 == *(&v43 + 1) + v43;
        if (v43 >= v14)
        {
          v16 = *(&v43 + 1) + v43;
        }

        else
        {
          v16 = v14;
        }

        v17 = v16 - 1;
        if ((v44 & v15) != 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = v14;
        }

        result = sub_275C9920C(a1, v18, &v46, &v40, &v43);
        if (result)
        {
          v19 = v40 == v9;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          v20 = v43;
          v21 = *(&v43 + 1) + v43;
          if (v7 + 1 < *(&v43 + 1) + v43)
          {
            v22 = v7 + 1;
          }

          else
          {
            v22 = v43;
          }

          if (v22 + 1 < v21)
          {
            v20 = v22 + 1;
          }

          v23 = ((v22 == v21 - 1) & v44) != 0 ? v20 : v22;
          result = sub_275C9920C(a1, v23, &v40, v48, &v43);
          if (result)
          {
            if (v40 == v8)
            {
LABEL_30:
              result = sub_275C980A0(v35, a2, a1, &v46);
              if (v35 != a3)
              {
                *a3 = v35[0];
                v24 = v37;
                *(a3 + 8) = v36;
                *(a3 + 24) = v24;
                *(a3 + 40) = v38;
                *(a3 + 56) = v39;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_275C9A6A0(void *a1, CGPath *a2, double *a3, unsigned int a4, uint64_t a5, double a6)
{
  if (a2)
  {
    if (!a5 || a6 == 0.0)
    {
      *__p = *MEMORY[0x277CBF348];
      if (sub_275C99A68(a1, a4, __p, 0) != 0x7FFFFFFFFFFFFFFFLL)
      {
        memset(&v14, 0, sizeof(v14));
        CGAffineTransformMakeTranslation(&v14, *a3 - *__p, a3[1] - *&__p[1]);
        sub_275C99C28(a1, a2, &v14, 0);
        v13 = a4 > 2 ? 1 : dword_275D0B888[a4];
        if (sub_275C99A68(a1, v13, __p, 0))
        {
          *a3 = vaddq_f64(*&v14.tx, vmlaq_n_f64(vmulq_n_f64(*&v14.c, *&__p[1]), *&v14.a, *__p));
        }
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v17 = 0;
      sub_275C938A4(__p, a1[1], a1[2], (a1[2] - a1[1]) >> 4);
      sub_275C98270(a5, a1, __p, a6);
      v15 = *MEMORY[0x277CBF348];
      if (sub_275C99A68(a1, a4, &v15, __p) != 0x7FFFFFFFFFFFFFFFLL)
      {
        memset(&v14, 0, sizeof(v14));
        CGAffineTransformMakeTranslation(&v14, *a3 - *&v15, a3[1] - *(&v15 + 1));
        sub_275C99C28(a1, a2, &v14, __p);
        if (a4 > 2)
        {
          v12 = 1;
        }

        else
        {
          v12 = dword_275D0B888[a4];
        }

        if (sub_275C99A68(a1, v12, &v15, __p))
        {
          *a3 = vaddq_f64(*&v14.tx, vmlaq_n_f64(vmulq_n_f64(*&v14.c, *(&v15 + 1)), *&v14.a, *&v15));
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_275C9A8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275C9A8D4(uint64_t result, uint64_t a2, void *a3, double a4)
{
  if (a2)
  {
    if (a4 != 0.0)
    {
      return sub_275C98270(a2, result, a3, a4);
    }
  }

  return result;
}

void sub_275C9A8F4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_275C8D86C();
}

void sub_275C9A93C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_275C9A8F4(a1, a2);
  }

  sub_275C8D77C();
}

uint64_t sub_275C9A978(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_275C8D740(result, a4);
  }

  return result;
}

void sub_275C9A9D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_275C9A9F4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

      sub_275C93920(v6, v10);
    }

    sub_275C8D77C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

void *sub_275C9AB20(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

      sub_275C9A93C(v6, v10);
    }

    sub_275C8D77C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

void *sub_275C9AC4C(void *result, char *__src, char *a3, unint64_t a4)
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

      sub_275C8D740(v6, v10);
    }

    sub_275C8D77C();
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

__n128 sub_275C9AD78(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      sub_275C9A8F4(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void sub_275C9AE80(void *a1, void *a2)
{
  *a1 = &unk_2884CB310;
  a1[2] = 0;
  v3 = objc_opt_class();
  v6 = objc_msgSend_objectForKey_(a2, v4, @"STIX", v5);
  sub_275C950F4(v3, v6);
  operator new();
}

void *sub_275C9AF60(void *a1)
{
  *a1 = &unk_2884CB310;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_275C9AFCC(void *a1)
{
  *a1 = &unk_2884CB310;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x277C8CFC0);
}

uint64_t *sub_275C9B0B8(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sub_275C9B9E0(v2);
    MEMORY[0x277C8CFC0](v3, 0x10E0C40B27302BALL);
  }

  return a1;
}

void sub_275C9B100(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = *a2 > 1uLL;
  v5 = objc_opt_class();
  v8 = objc_msgSend_objectForKey_(a3, v6, @"quantization", v7);
  v9 = sub_275C950F4(v5, v8);
  sub_275C9809C(a1 + 24, v9);
  operator new();
}

uint64_t sub_275C9B340(uint64_t **a1)
{
  pthread_rwlock_rdlock((a1 + 9));
  v2 = *(a1 + 48);
  result = pthread_rwlock_unlock((a1 + 9));
  if (v2 == 1)
  {
    pthread_rwlock_wrlock((a1 + 9));
    if (*(a1 + 48) == 1)
    {
      v4 = **a1;
      v19 = 0;
      v5 = 0uLL;
      v18 = 0u;
      v6 = a1[3];
      if (v6)
      {
        do
        {
          v7 = v6[8];
          sub_275C9DA6C(v16, (v6 + 2));
          v17 = v4 - v7;
          v8 = *(&v18 + 1);
          if (*(&v18 + 1) >= v19)
          {
            v9 = sub_275C9BD40(&v18, v16);
          }

          else
          {
            sub_275C9DA6C(*(&v18 + 1), v16);
            *(v8 + 32) = v17;
            v9 = v8 + 40;
          }

          *(&v18 + 1) = v9;
          sub_275C9DAF0(v16);
          v6 = *v6;
        }

        while (v6);
        v5 = v18;
      }

      v10 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((*(&v5 + 1) - v5) >> 3));
      v20 = sub_275C9BD2C;
      if (*(&v5 + 1) == v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      sub_275C9BFCC(v5, *(&v5 + 1), &v20, v11, 1);
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v18 + 1) - v18) >> 3);
      v13 = a1[8];
      v14 = v12 - v13;
      if (v12 > v13)
      {
        v15 = 40 * v13;
        do
        {
          if (sub_275C9D704(a1 + 1, v18 + v15))
          {
            sub_275C9D818(a1 + 1, v18 + v15);
          }

          v15 += 40;
          --v14;
        }

        while (v14);
      }

      *(a1 + 48) = 0;
      v16[0] = &v18;
      sub_275C9D9E8(v16);
    }

    return pthread_rwlock_unlock((a1 + 9));
  }

  return result;
}

void sub_275C9B4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  sub_275C9D9E8(&a10);
  _Unwind_Resume(a1);
}

double sub_275C9B51C(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9, double a10)
{
  v63 = 0.0;
  v10 = 0.0;
  if (*(a1 + 16) == 1)
  {
    v14 = a4;
    v17 = a2;
    objc_msgSend_erasableBounds(a3, a2, a3, a4);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    objc_msgSend_erasableBounds(a5, v27, v28, v29);
    y = v64.origin.y;
    x = v64.origin.x;
    height = v64.size.height;
    width = v64.size.width;
    MinX = CGRectGetMinX(v64);
    v31 = a8;
    v32 = a10;
    v47 = v31;
    v33 = v31 + MinX;
    v65.origin.x = v20;
    v65.origin.y = v22;
    v65.size.width = v24;
    v65.size.height = v26;
    if (v33 - (a6 + CGRectGetMaxX(v65)) < v32)
    {
      v36 = v32;
      memset(v61, 0, sizeof(v61));
      v62 = 2;
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      if (v17 == 2)
      {
        v66.origin.x = v20;
        v66.origin.y = v22;
        v66.size.width = v24;
        v66.size.height = v26;
        MaxX = CGRectGetMaxX(v66);
        v38 = a9;
        v67.origin.x = v20;
        v67.origin.y = v22;
        v67.size.width = v24;
        v67.size.height = v26;
        MinY = CGRectGetMinY(v67);
        v68.origin.x = v20;
        v68.origin.y = v22;
        v68.size.width = v24;
        v68.size.height = v26;
        v40 = CGRectGetHeight(v68);
        sub_275CD8470(v61, a6 + MaxX, a7 + MinY, v40);
        appended = 1;
      }

      else
      {
        appended = 0;
        v38 = a9;
        if (!v17)
        {
          appended = objc_msgSend_appendOpticalAlignToSpec_offset_(a3, v34, v61, v35, a6, a7);
        }
      }

      if (v14 == 2)
      {
        v69.origin.y = y;
        v69.origin.x = x;
        v69.size.height = height;
        v69.size.width = width;
        v42 = CGRectGetMinX(v69);
        v70.origin.y = y;
        v70.origin.x = x;
        v70.size.height = height;
        v70.size.width = width;
        v43 = CGRectGetMinY(v70);
        v71.origin.y = y;
        v71.origin.x = x;
        v71.size.height = height;
        v71.size.width = width;
        v44 = CGRectGetHeight(v71);
        sub_275CD8470(v59, v47 + v42, v38 + v43, v44);
        v41 = 1;
      }

      else
      {
        if (v14)
        {
LABEL_13:
          v57 = v59;
          sub_275C9B95C(&v57);
          v59[0] = v61;
          sub_275C9B95C(v59);
          return v63;
        }

        v41 = objc_msgSend_appendOpticalAlignToSpec_offset_(a5, v34, v59, v35, v47, v38);
      }

      if ((appended & v41) == 1)
      {
        sub_275C9FBAC(&v57, v61, a1 + 24, *a1);
        sub_275C9FBAC(&v55, v59, a1 + 24, *a1);
        v54[0] = *MEMORY[0x277CBF348];
        v54[1] = v54[0];
        sub_275C9FBB0(&v57, &v55, &v63, v54, 0, v36);
        *&v54[0] = &v56;
        sub_275C9B850(v54);
        v55 = &v58;
        sub_275C9B850(&v55);
      }

      goto LABEL_13;
    }
  }

  return v10;
}

void sub_275C9B7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, void ***a26, uint64_t a27, uint64_t a28, uint64_t a29, void **a30)
{
  a17 = (v30 + 8);
  sub_275C9B850(&a17);
  a22 = &a27;
  sub_275C9B850(&a22);
  a26 = &a30;
  sub_275C9B95C(&a26);
  a30 = (v31 - 168);
  sub_275C9B95C(&a30);
  _Unwind_Resume(a1);
}

void sub_275C9B850(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_275C9B8A4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_275C9B8A4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_275C9B8F0(v4);
    }
  }

  a1[1] = v2;
}

void sub_275C9B8F0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_275C9B95C(void ***a1)
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
        v4 = sub_275CD8190(v4 - 72);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_275C9B9E0(uint64_t a1)
{
  pthread_rwlock_destroy((a1 + 72));
  _Block_release(*(a1 + 272));
  sub_275C9BA20(a1 + 8);
  return a1;
}

uint64_t sub_275C9BA20(uint64_t a1)
{
  sub_275C9BA5C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_275C9BA5C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_275C9BAA0((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_275C9BAA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_275C9B8F0(v2);
  }

  return sub_275C9DAF0(a1);
}

void sub_275C9BB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_275C9BBF4(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C9BB74(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275C9BBB4(uint64_t a1, uint64_t a2)
{
  if (sub_275C9BC50(a2, &unk_2884CB390))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_275C9BBF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2)
    {
      *(a2 + 40) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x277C8CFC0);
  }
}

BOOL sub_275C9BC50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_275C9BCA4(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_275D0B8C0;
  pthread_rwlock_init((a1 + 72), 0);
  *(a1 + 272) = _Block_copy(a3);
  return a1;
}

uint64_t sub_275C9BD40(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_275C8D77C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_275C9BE78(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  v15 = 40 * v2;
  *(sub_275C9DA6C(40 * v2, a2) + 32) = *(a2 + 32);
  *&v15 = v15 + 40;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_275C9BED0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_275C9BF7C(&v13);
  return v12;
}

void sub_275C9BE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_275C9BF7C(va);
  _Unwind_Resume(a1);
}

void sub_275C9BE78(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_275C8D86C();
}

uint64_t sub_275C9BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_275C9DA6C(a4, v8);
      *(a4 + 32) = *(v8 + 32);
      v8 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_275C9DAF0(v6);
      v6 += 40;
    }
  }

  return result;
}

void sub_275C9BF58(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = sub_275C9DAF0(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275C9BF7C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_275C9DAF0(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_275C9BFCC(uint64_t result, unint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v45 = a2;
  v46 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v43 = *a3;
        v45 = v7 - 40;
        result = (v43)(v7 - 40);
        if (result)
        {
          v42 = &v46;
          v44 = &v45;
          return sub_275C9C698(v42, v44);
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
      v45 = v7 - 40;
      return sub_275C9C714(v8, v8 + 40, v8 + 80, v7 - 40, a3);
    }

    if (v11 == 5)
    {
      v45 = v7 - 40;
      v50 = v8 + 40;
      v51[0] = v8;
      v48 = v8 + 120;
      v49 = v8 + 80;
      v47 = v7 - 40;
      sub_275C9C714(v8, v8 + 40, v8 + 80, v8 + 120, a3);
      result = (*a3)(v7 - 40, v8 + 120);
      if (result)
      {
        sub_275C9C698(&v48, &v47);
        result = (*a3)(v48, v8 + 80);
        if (result)
        {
          sub_275C9C698(&v49, &v48);
          result = (*a3)(v49, v8 + 40);
          if (result)
          {
            sub_275C9C698(&v50, &v49);
            result = (*a3)(v50, v8);
            goto LABEL_92;
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v10 <= 959)
    {
      if (a5)
      {
        return sub_275C9C854(v8, v7, a3);
      }

      else
      {
        return sub_275C9C978(v8, v7, a3);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return sub_275C9D158(v8, v7, v7, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = v8 + 40 * (v11 >> 1);
    v14 = v7 - 40;
    if (v10 < 0x1401)
    {
      v50 = v8;
      v51[0] = v8 + 40 * (v11 >> 1);
      v49 = v14;
      v18 = (*a3)(v8, v13);
      v19 = (*a3)(v14, v8);
      if (v18)
      {
        if (v19)
        {
          v20 = v51;
          goto LABEL_37;
        }

        sub_275C9C698(v51, &v50);
        if ((*a3)(v49, v50))
        {
          v20 = &v50;
LABEL_37:
          v22 = &v49;
LABEL_38:
          sub_275C9C698(v20, v22);
        }
      }

      else if (v19)
      {
        sub_275C9C698(&v50, &v49);
        if ((*a3)(v50, v51[0]))
        {
          v20 = v51;
          v22 = &v50;
          goto LABEL_38;
        }
      }

      v8 = v46;
      if (a5)
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }

    v50 = v8 + 40 * (v11 >> 1);
    v51[0] = v8;
    v49 = v14;
    v15 = (*a3)(v13, v8);
    v16 = (*a3)(v14, v13);
    if (v15)
    {
      if (v16)
      {
        v17 = v51;
      }

      else
      {
        sub_275C9C698(v51, &v50);
        if (!(*a3)(v49, v50))
        {
          goto LABEL_29;
        }

        v17 = &v50;
      }

      v21 = &v49;
      goto LABEL_28;
    }

    if (v16)
    {
      sub_275C9C698(&v50, &v49);
      if ((*a3)(v50, v51[0]))
      {
        v17 = v51;
        v21 = &v50;
LABEL_28:
        sub_275C9C698(v17, v21);
      }
    }

LABEL_29:
    v8 = v46;
    v23 = v46 + 40 * v12;
    v50 = v23 - 40;
    v51[0] = v46 + 40;
    v49 = v45 - 80;
    v24 = (*a3)(v23 - 40);
    v25 = (*a3)(v45 - 80, v23 - 40);
    if (v24)
    {
      if (v25)
      {
        v26 = v51;
      }

      else
      {
        sub_275C9C698(v51, &v50);
        if (!(*a3)(v49, v50))
        {
          goto LABEL_45;
        }

        v26 = &v50;
      }

      v27 = &v49;
      goto LABEL_44;
    }

    if (v25)
    {
      sub_275C9C698(&v50, &v49);
      if ((*a3)(v50, v51[0]))
      {
        v26 = v51;
        v27 = &v50;
LABEL_44:
        sub_275C9C698(v26, v27);
      }
    }

LABEL_45:
    v50 = v23 + 40;
    v51[0] = v46 + 80;
    v49 = v45 - 120;
    v28 = (*a3)(v23 + 40);
    v29 = (*a3)(v45 - 120, v23 + 40);
    if (v28)
    {
      if (v29)
      {
        sub_275C9C698(v51, &v49);
        goto LABEL_54;
      }

      sub_275C9C698(v51, &v50);
      if ((*a3)(v49, v50))
      {
        v30 = &v50;
        v31 = &v49;
        goto LABEL_53;
      }
    }

    else if (v29)
    {
      sub_275C9C698(&v50, &v49);
      if ((*a3)(v50, v51[0]))
      {
        v30 = v51;
        v31 = &v50;
LABEL_53:
        sub_275C9C698(v30, v31);
      }
    }

LABEL_54:
    v50 = v46 + 40 * v12;
    v51[0] = v23 - 40;
    v49 = v23 + 40;
    v32 = (*a3)(v23, v23 - 40);
    v33 = (*a3)(v23 + 40, v23);
    if (v32)
    {
      if (v33)
      {
        v34 = v51;
      }

      else
      {
        sub_275C9C698(v51, &v50);
        if (!(*a3)(v49, v50))
        {
          goto LABEL_64;
        }

        v34 = &v50;
      }

      v35 = &v49;
      goto LABEL_63;
    }

    if (v33)
    {
      sub_275C9C698(&v50, &v49);
      if ((*a3)(v50, v51[0]))
      {
        v34 = v51;
        v35 = &v50;
LABEL_63:
        sub_275C9C698(v34, v35);
      }
    }

LABEL_64:
    sub_275C9DA6C(v51, v46);
    sub_275C9DAF4(v46, v23);
    sub_275C9DAF4(v23, v51);
    sub_275C9DAF0(v51);
    v36 = *(v46 + 32);
    *(v46 + 32) = *(v23 + 32);
    *(v23 + 32) = v36;
    if (a5)
    {
LABEL_40:
      v7 = v45;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v45;
    if (((*a3)(v8 - 40, v8) & 1) == 0)
    {
      result = sub_275C9CA60(v8, v45, a3);
      v8 = result;
      goto LABEL_75;
    }

LABEL_66:
    v37 = sub_275C9CC18(v8, v7, a3);
    if ((v38 & 1) == 0)
    {
      goto LABEL_73;
    }

    v39 = sub_275C9CDC4(v8, v37, a3);
    result = sub_275C9CDC4(v37 + 40, v7, a3);
    if (result)
    {
      if (v39)
      {
        return result;
      }

      v45 = v37;
      v7 = v37;
    }

    else
    {
      if (!v39)
      {
LABEL_73:
        result = sub_275C9BFCC(v8, v37, a3, -i, a5 & 1);
        v8 = v37 + 40;
LABEL_75:
        a5 = 0;
        v46 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v46 = v37 + 40;
      v8 = v37 + 40;
    }
  }

  v40 = v8 + 40;
  v45 = v7 - 40;
  v50 = v8 + 40;
  v51[0] = v8;
  v49 = v7 - 40;
  v41 = (*a3)(v8 + 40, v8);
  result = (*a3)(v7 - 40, v40);
  if (v41)
  {
    if (result)
    {
      v42 = v51;
    }

    else
    {
      sub_275C9C698(v51, &v50);
      result = (*a3)(v49, v50);
      if (!result)
      {
        return result;
      }

      v42 = &v50;
    }

    v44 = &v49;
    return sub_275C9C698(v42, v44);
  }

  if (result)
  {
    sub_275C9C698(&v50, &v49);
    result = (*a3)(v50, v51[0]);
LABEL_92:
    if (result)
    {
      v42 = v51;
      v44 = &v50;
      return sub_275C9C698(v42, v44);
    }
  }

  return result;
}

void sub_275C9C684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_275C9DAF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C9C698(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_275C9DA6C(v6, *a1);
  sub_275C9DAF4(v2, v3);
  sub_275C9DAF4(v3, v6);
  result = sub_275C9DAF0(v6);
  v5 = *(v2 + 32);
  *(v2 + 32) = *(v3 + 32);
  *(v3 + 32) = v5;
  return result;
}

uint64_t sub_275C9C714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v17 = a2;
  v18 = a1;
  v15 = a4;
  v16 = a3;
  v20 = a2;
  v21 = a1;
  v19 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v21;
LABEL_9:
      v13 = &v19;
      goto LABEL_10;
    }

    sub_275C9C698(&v21, &v20);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_275C9C698(&v20, &v19);
    if ((*a5)(v20, v21))
    {
      v12 = &v21;
      v13 = &v20;
LABEL_10:
      sub_275C9C698(v12, v13);
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    sub_275C9C698(&v16, &v15);
    result = (*a5)(v16, a2);
    if (result)
    {
      sub_275C9C698(&v17, &v16);
      result = (*a5)(v17, a1);
      if (result)
      {
        return sub_275C9C698(&v18, &v17);
      }
    }
  }

  return result;
}

uint64_t sub_275C9C854(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 40;
    if (result + 40 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        result = (*a3)(v5, v8);
        if (result)
        {
          sub_275C9DA6C(v13, v9);
          v14 = *(v8 + 72);
          v10 = v7;
          while (1)
          {
            sub_275C9DAF4(v4 + v10 + 40, v4 + v10);
            *(v4 + v10 + 72) = *(v4 + v10 + 32);
            if (!v10)
            {
              break;
            }

            v11 = (*a3)(v13, v4 + v10 - 40);
            v10 -= 40;
            if ((v11 & 1) == 0)
            {
              v12 = v4 + v10 + 40;
              goto LABEL_10;
            }
          }

          v12 = v4;
LABEL_10:
          sub_275C9DAF4(v12, v13);
          *(v12 + 32) = v14;
          result = sub_275C9DAF0(v13);
        }

        v5 = v9 + 40;
        v7 += 40;
        v8 = v9;
      }

      while (v9 + 40 != a2);
    }
  }

  return result;
}

void sub_275C9C960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C9DAF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C9C978(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 40;
    if (result + 40 != a2)
    {
      do
      {
        v7 = v5;
        result = (*a3)(v5, v4);
        if (result)
        {
          sub_275C9DA6C(v8, v7);
          v9 = *(v4 + 72);
          do
          {
            sub_275C9DAF4(v4 + 40, v4);
            *(v4 + 72) = *(v4 + 32);
            v4 -= 40;
          }

          while (((*a3)(v8, v4) & 1) != 0);
          sub_275C9DAF4(v4 + 40, v8);
          *(v4 + 72) = v9;
          result = sub_275C9DAF0(v8);
        }

        v5 = v7 + 40;
        v4 = v7;
      }

      while (v7 + 40 != a2);
    }
  }

  return result;
}

void sub_275C9CA48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C9DAF0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_275C9CA60(uint64_t a1, unint64_t a2, unsigned int (**a3)(_BYTE *))
{
  v15 = a1;
  v14 = a2;
  sub_275C9DA6C(v12, a1);
  v13 = *(a1 + 32);
  if ((*a3)(v12, a2 - 40))
  {
    v6 = a1;
    do
    {
      v6 += 40;
      v15 = v6;
    }

    while (((*a3)(v12, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 40;
    do
    {
      v6 = v7;
      v15 = v7;
      if (v7 >= v14)
      {
        break;
      }

      v8 = (*a3)(v12, v7);
      v7 = v6 + 40;
    }

    while (!v8);
  }

  v9 = v14;
  if (v6 < v14)
  {
    do
    {
      v9 -= 40;
      v14 = v9;
    }

    while (((*a3)(v12, v9) & 1) != 0);
    v6 = v15;
  }

  if (v6 < v9)
  {
    do
    {
      sub_275C9C698(&v15, &v14);
      do
      {
        v15 += 40;
      }

      while (!(*a3)(v12));
      do
      {
        v14 -= 40;
      }

      while (((*a3)(v12) & 1) != 0);
      v6 = v15;
    }

    while (v15 < v14);
  }

  if (v6 - 40 != a1)
  {
    sub_275C9DAF4(a1, v6 - 40);
    *(a1 + 32) = *(v6 - 8);
  }

  sub_275C9DAF4(v6 - 40, v12);
  *(v6 - 8) = v13;
  v10 = v15;
  sub_275C9DAF0(v12);
  return v10;
}

void sub_275C9CBE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C9DAF0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_275C9CC18(uint64_t a1, unint64_t a2, uint64_t (**a3)(void))
{
  v15 = a2;
  sub_275C9DA6C(v13, a1);
  v5 = 0;
  v14 = *(a1 + 32);
  do
  {
    v16 = a1 + v5 + 40;
    v5 += 40;
  }

  while (((*a3)() & 1) != 0);
  v6 = v15;
  if (v5 == 40)
  {
    v9 = a1 + 40;
    do
    {
      if (v9 >= v6)
      {
        break;
      }

      v10 = *a3;
      v6 -= 40;
      v15 = v6;
    }

    while (((v10)(v6, v13) & 1) == 0);
  }

  else
  {
    v7 = v15 - 40;
    do
    {
      v15 = v7;
      v8 = (*a3)(v7, v13);
      v7 -= 40;
    }

    while (!v8);
    v9 = v16;
  }

  v11 = v9;
  if (v9 < v15)
  {
    do
    {
      sub_275C9C698(&v16, &v15);
      do
      {
        v16 += 40;
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v15 -= 40;
      }

      while (!(*a3)());
      v11 = v16;
    }

    while (v16 < v15);
  }

  if (v11 - 40 != a1)
  {
    sub_275C9DAF4(a1, v11 - 40);
    *(a1 + 32) = *(v11 - 8);
  }

  sub_275C9DAF4(v11 - 40, v13);
  *(v11 - 8) = v14;
  sub_275C9DAF0(v13);
  return v11 - 40;
}

void sub_275C9CD98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C9DAF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C9CDC4(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v28 = a2;
  v29 = a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v28 = a2 - 40;
      if ((v7)())
      {
        v8 = &v29;
        v9 = &v28;
LABEL_30:
        sub_275C9C698(v8, v9);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v16 = a1 + 80;
    v26[0] = a1;
    v32 = a1 + 80;
    v33 = a1 + 40;
    v17 = (*a3)(a1 + 40, a1);
    v18 = (*a3)(a1 + 80, a1 + 40);
    if (v17)
    {
      if (v18)
      {
        v19 = v26;
      }

      else
      {
        sub_275C9C698(v26, &v33);
        if (!(*a3)(v32, v33))
        {
          goto LABEL_35;
        }

        v19 = &v33;
      }

      v20 = &v32;
    }

    else
    {
      if (!v18 || (sub_275C9C698(&v33, &v32), !(*a3)(v33, v26[0])))
      {
LABEL_35:
        v21 = a1 + 120;
        if (v21 != a2)
        {
          v22 = 0;
          while (1)
          {
            if ((*a3)(v21, v16))
            {
              sub_275C9DA6C(v26, v21);
              v27 = *(v21 + 32);
              do
              {
                v23 = v16;
                sub_275C9DAF4(v16 + 40, v16);
                *(v16 + 72) = *(v16 + 32);
                if (v16 == v29)
                {
                  break;
                }

                v16 -= 40;
              }

              while (((*a3)(v26, v23 - 40) & 1) != 0);
              sub_275C9DAF4(v23, v26);
              *(v23 + 32) = v27;
              if (++v22 == 8)
              {
                v24 = v21 + 40 == v28;
                sub_275C9DAF0(v26);
                return v24;
              }

              sub_275C9DAF0(v26);
            }

            v16 = v21;
            v21 += 40;
            if (v21 == v28)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = v26;
      v20 = &v33;
    }

    sub_275C9C698(v19, v20);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      sub_275C9C714(a1, a1 + 40, a1 + 80, a2 - 40, a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v26[0] = a1;
    v32 = a1 + 80;
    v33 = a1 + 40;
    v10 = a2 - 40;
    v30 = a2 - 40;
    v31 = a1 + 120;
    sub_275C9C714(a1, a1 + 40, a1 + 80, a1 + 120, a3);
    if (!(*a3)(v10, a1 + 120))
    {
      return 1;
    }

    sub_275C9C698(&v31, &v30);
    if (!(*a3)(v31, a1 + 80))
    {
      return 1;
    }

    sub_275C9C698(&v32, &v31);
    if (!(*a3)(v32, a1 + 40))
    {
      return 1;
    }

    sub_275C9C698(&v33, &v32);
    v11 = (*a3)(v33, a1);
    goto LABEL_22;
  }

  v12 = a1 + 40;
  v13 = a2 - 40;
  v26[0] = a1;
  v32 = a2 - 40;
  v33 = a1 + 40;
  v14 = (*a3)(a1 + 40, a1);
  v15 = (*a3)(v13, v12);
  if (v14)
  {
    if (v15)
    {
      v8 = v26;
    }

    else
    {
      sub_275C9C698(v26, &v33);
      if (!(*a3)(v32, v33))
      {
        return 1;
      }

      v8 = &v33;
    }

    v9 = &v32;
    goto LABEL_30;
  }

  if (v15)
  {
    sub_275C9C698(&v33, &v32);
    v11 = (*a3)(v33, v26[0]);
LABEL_22:
    if (v11)
    {
      v8 = v26;
      v9 = &v33;
      goto LABEL_30;
    }
  }

  return 1;
}

void sub_275C9D140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C9DAF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C9D158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 40 * v10;
      do
      {
        sub_275C9D2A8(v7, a4, v9, v12);
        v12 -= 40;
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if ((*a4)(v13, v18))
        {
          sub_275C9C698(&v17, &v18);
          sub_275C9D2A8(v18, a4, v9, v18);
        }

        v13 = v17 + 40;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 41)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      do
      {
        sub_275C9D440(v7, v6, a4, v14);
        v6 -= 40;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_275C9D2A8(uint64_t result, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - result) >> 3)))
    {
      v10 = (0x999999999999999ALL * ((a4 - result) >> 3)) | 1;
      v11 = result + 40 * v10;
      v12 = 0x999999999999999ALL * ((a4 - result) >> 3) + 2;
      if (v12 < a3 && (*a2)(result + 40 * v10, v11 + 40))
      {
        v11 += 40;
        v10 = v12;
      }

      result = (*a2)(v11, v5);
      if ((result & 1) == 0)
      {
        sub_275C9DA6C(v15, v5);
        v16 = *(v5 + 32);
        do
        {
          v13 = v11;
          sub_275C9DAF4(v5, v11);
          *(v5 + 32) = *(v11 + 32);
          if (v7 < v10)
          {
            break;
          }

          v14 = (2 * v10) | 1;
          v11 = v6 + 40 * v14;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v14;
          }

          else if ((*a2)(v6 + 40 * v14, v11 + 40))
          {
            v11 += 40;
          }

          else
          {
            v10 = v14;
          }

          v5 = v13;
        }

        while (!(*a2)(v11, v15));
        sub_275C9DAF4(v13, v15);
        *(v13 + 32) = v16;
        return sub_275C9DAF0(v15);
      }
    }
  }

  return result;
}

void sub_275C9D428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C9DAF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C9D440(uint64_t result, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    sub_275C9DA6C(v10, result);
    v11 = *(v7 + 32);
    v8 = sub_275C9D540(v7, a3, a4);
    v9 = v8;
    if (v8 == a2 - 40)
    {
      sub_275C9DAF4(v8, v10);
      *(v9 + 32) = v11;
    }

    else
    {
      sub_275C9DAF4(v8, a2 - 40);
      *(v9 + 32) = *(a2 - 8);
      sub_275C9DAF4(a2 - 40, v10);
      *(a2 - 8) = v11;
      sub_275C9D604(v7, v9 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v9 + 40 - v7) >> 3));
    }

    return sub_275C9DAF0(v10);
  }

  return result;
}

void sub_275C9D52C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C9DAF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C9D540(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 40 * v6;
    v9 = v8 + 40;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 80;
      if ((*a2)(v8 + 40, v8 + 80))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    sub_275C9DAF4(a1, v9);
    *(a1 + 32) = *(v9 + 32);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t sub_275C9D604(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = result + 40 * (v4 >> 1);
    v10 = a2 - 40;
    result = (*a3)(v9, a2 - 40);
    if (result)
    {
      sub_275C9DA6C(v12, v10);
      v13 = *(a2 - 8);
      do
      {
        v11 = v9;
        sub_275C9DAF4(v10, v9);
        *(v10 + 32) = *(v9 + 32);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = v7 + 40 * v8;
        v10 = v11;
      }

      while (((*a3)(v9, v12) & 1) != 0);
      sub_275C9DAF4(v11, v12);
      *(v11 + 32) = v13;
      return sub_275C9DAF0(v12);
    }
  }

  return result;
}

void sub_275C9D6EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275C9DAF0(va);
  _Unwind_Resume(a1);
}

void *sub_275C9D704(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4 ^ *(a2 + 24) ^ (*(a2 + 8) << 16);
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4 ^ *(a2 + 24) ^ (*(a2 + 8) << 16);
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = v6 & (*&v5 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_275C9DB58((v11 + 2), a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t *sub_275C9D818(void *a1, uint64_t a2)
{
  result = sub_275C9D704(a1, a2);
  if (result)
  {
    sub_275C9D850(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_275C9D850(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_275C9D8AC(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_275C9BAA0(v3 + 16);
    }

    operator delete(v3);
  }

  return v2;
}

void *sub_275C9D8AC@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void sub_275C9D9E8(void ***a1)
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
        v4 = sub_275C9DAF0(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_275C9DA6C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

const void **sub_275C9DABC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_275C9DAF4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    v5 = *a2;
    *a1 = *a2;
    if (v5)
    {
      CFRetain(v5);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

BOOL sub_275C9DB58(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  if (*a1 == v3)
  {
    return 1;
  }

  result = 0;
  if (v2)
  {
    if (v3)
    {
      return CFStringCompare(v2, v3, 0) == kCFCompareEqualTo;
    }
  }

  return result;
}

uint64_t sub_275C9DBE0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = *(a2 + 24);
  *(a1 + 8) = 4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = CTFontCreateWithName(*a2, *(a2 + 16), 0);
  memset(&matrix, 0, sizeof(matrix));
  CGAffineTransformMakeScale(&matrix, 1.0, -1.0);
  if (v6)
  {
    v7 = CTFontCreatePathForGlyph(v6, *(a2 + 8), &matrix);
  }

  else
  {
    v7 = 0;
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_275C9DCE0(a1, v7, a3, v9);
  CGPathRelease(v7);
  if (v6)
  {
    CFRelease(v6);
  }

  return a1;
}

void sub_275C9DCBC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C9DCE0(unsigned int *a1, uint64_t a2, __int128 *a3, unint64_t ***a4)
{
  *(a1 + 2) = 0;
  v5 = (a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 7) = 0x7FF8000000000000;
  if (a2)
  {
    v8 = *a1;
    sub_275C98870(v40, a2);
    if (v43[32] == 1)
    {
      v9 = v43;
    }

    else
    {
      v9 = sub_275C98D24(v40);
    }

    v11 = *v9;
    v10 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    v14 = *v9;
    v15 = v10;
    v16 = v13;
    v17 = v12;
    if ((v8 | 2) == 2)
    {
      v18 = CGRectGetMinY(*&v14) * *(a1 + 1);
      *(a1 + 2) = vcvtms_s32_f32(v18);
      v44.origin.x = v11;
      v44.origin.y = v10;
      v44.size.width = v13;
      v44.size.height = v12;
      v19 = CGRectGetMaxY(v44) * *(a1 + 1);
      v20 = ceilf(v19);
    }

    else
    {
      v21 = CGRectGetMinX(*&v14) * *(a1 + 1);
      *(a1 + 2) = vcvtms_s32_f32(v21);
      v45.origin.x = v11;
      v45.origin.y = v10;
      v45.size.width = v13;
      v45.size.height = v12;
      v22 = CGRectGetMaxX(v45) * *(a1 + 1);
      v20 = floorf(v22);
    }

    *(a1 + 3) = v20;
    v23 = v20 - *(a1 + 2);
    v37 = 0x7FF8000000000000;
    sub_275C9E05C(a1 + 4, v23 + 1, &v37);
    v37 = *v5;
    v24 = a3[1];
    v38 = *a3;
    v39 = v24;
    v25 = *a4;
    if (*a4)
    {
      for (i = *v25; i != v25[1]; ++i)
      {
        sub_275C99038(v40, *i, *a1, &v37, a1 + 4);
        v25 = *a4;
      }
    }

    else
    {
      sub_275C98CD0(v40);
      if (v42 != v41)
      {
        v27 = 0;
        if (((v42 - v41) >> 4) <= 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = (v42 - v41) >> 4;
        }

        do
        {
          sub_275C99038(v40, v27++, *a1, &v37, a1 + 4);
        }

        while (v28 != v27);
      }
    }

    v29 = *(a1 + 4);
    v30 = *(a1 + 5) - v29;
    if (v30)
    {
      v31 = v30 >> 3;
      v32 = *a1 & 0xFFFFFFFE;
      if (v31 <= 1)
      {
        v31 = 1;
      }

      v33 = 1;
      do
      {
        v34 = *v29;
        if ((v33 & 1) == 0)
        {
          v35 = *(a1 + 7);
          v36 = v34 < v35;
          if (v32 == 2)
          {
            v36 = v35 < v34;
          }

          if (!v36)
          {
            v34 = *(a1 + 7);
          }
        }

        v33 = 0;
        *(a1 + 7) = v34;
        ++v29;
        --v31;
      }

      while (v31);
    }

    sub_275C98A80(v40);
  }

  else
  {
    v40[0] = 0x7FF8000000000000;
    sub_275C9E05C(a1 + 4, 1uLL, v40);
  }
}

void sub_275C9DF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_275C98A80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275C9DFAC(uint64_t a1, int a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = 4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a5 + 8);
  v8[0] = *a5;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_275C9DCE0(a1, a3, a4, v8);
  if (v6)
  {
    sub_275C9B8F0(v6);
  }

  return a1;
}

void sub_275C9E034(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_275C9B8F0(v2);
  }

  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_275C9E05C(void *a1, unint64_t a2, uint64_t *a3)
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
    sub_275C9FFA0(a1, a2 - v3, a3);
  }
}

uint64_t sub_275C9E08C(uint64_t a1, double a2)
{
  v3 = a2 - (*(*a1 + 24))(a1);
  v4 = v3 / (*(*a1 + 56))(a1);
  v5 = vcvtms_s32_f32(v4);
  if ((v5 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if ((*(*a1 + 48))(a1) <= v5)
  {
    return (*(*a1 + 48))(a1) - 1;
  }

  return v5;
}

uint64_t sub_275C9E180(_DWORD *a1, _DWORD *a2, double *a3, _OWORD *a4, uint64_t a5, double a6)
{
  v6 = 0;
  if ((a1[2] & 0xFFFFFFFE) == 2 && a6 >= 0.0 && (a2[2] & 0xFFFFFFFE) != 2)
  {
    v14 = (*(*a2 + 40))(a2);
    if (v14 - (*(*a1 + 40))(a1) >= a6 || (v15 = (*(*a1 + 32))(a1) + a6, v15 <= (*(*a2 + 24))(a2)) || (v16 = (*(*a2 + 32))(a2) + a6, v16 <= (*(*a1 + 24))(a1)))
    {
      v6 = 0;
    }

    else
    {
      v17 = a1[2];
      v18 = (*(*a1 + 48))(a1);
      v19 = (*(*a2 + 48))(a2);
      v20 = (*(*a1 + 88))(a1, 0);
      v21 = (*(*a2 + 88))(a2, 0);
      v6 = 0;
      if (v20 < v18)
      {
        v22 = v21;
        v105 = v19;
        if (v21 < v19)
        {
          v97 = a4;
          v98 = a3;
          v23 = v17 & 0xFFFFFFFD;
          v24 = a6 * a6;
          v25 = v20;
          *&v121 = (*(*a1 + 64))(a1, v20);
          *(&v121 + 1) = v26;
          v122 = v27;
          v99 = 0;
          *&v119 = (*(*a2 + 64))(a2, v22);
          *(&v119 + 1) = v28;
          v120 = v29;
          v30 = 1.79769313e308;
          v31 = v22;
          v32 = v20;
          v33 = v31;
          v102 = v23;
          v101 = a5;
          do
          {
            v117 = *MEMORY[0x277CBF348];
            v118 = v117;
            v34 = sub_275C9FE34(&v121, &v119, v23 == 0, &v117);
            if (v34 < v24)
            {
              if (v34 < v30)
              {
                v35 = v118;
                *v97 = v117;
                v97[1] = v35;
                v30 = v34;
              }

              if (a5)
              {
                v36 = *(a5 + 8);
                v37 = *(a5 + 16);
                if (v36 >= v37)
                {
                  v40 = (v36 - *a5) >> 5;
                  v41 = v40 + 1;
                  if ((v40 + 1) >> 59)
                  {
                    sub_275C8D77C();
                  }

                  v42 = v37 - *a5;
                  if (v42 >> 4 > v41)
                  {
                    v41 = v42 >> 4;
                  }

                  if (v42 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v43 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  if (v43)
                  {
                    sub_275C9FF58(a5, v43);
                  }

                  v44 = v31;
                  v45 = (32 * v40);
                  v46 = v118;
                  *v45 = v117;
                  v45[1] = v46;
                  v39 = 32 * v40 + 32;
                  v47 = *(a5 + 8) - *a5;
                  v48 = v45 - v47;
                  memcpy(v45 - v47, *a5, v47);
                  v49 = *a5;
                  *a5 = v48;
                  *(a5 + 8) = v39;
                  *(a5 + 16) = 0;
                  if (v49)
                  {
                    operator delete(v49);
                  }

                  v31 = v44;
                }

                else
                {
                  v38 = v118;
                  *v36 = v117;
                  v36[1] = v38;
                  v39 = (v36 + 2);
                }

                *(a5 + 8) = v39;
                v23 = v102;
              }

              if (*&v119 < *&v121)
              {
                v50 = v120;
                v51 = *(&v121 + 1);
                v52 = v122 > *(&v119 + 1) && v120 > *(&v121 + 1);
                if (!v52)
                {
                  if (v122 >= *(&v119 + 1))
                  {
                    if (v23)
                    {
                      v53 = v120;
                      v50 = *&v119;
                      v54 = *(&v121 + 1);
                      v51 = *&v121;
                    }

                    else
                    {
                      v53 = *&v119;
                      v54 = *&v121;
                    }
                  }

                  else
                  {
                    if (v23)
                    {
                      v53 = *(&v119 + 1);
                    }

                    else
                    {
                      v53 = *&v119;
                    }

                    if (v23)
                    {
                      v50 = *&v119;
                    }

                    else
                    {
                      v50 = *(&v119 + 1);
                    }

                    if (v23)
                    {
                      v54 = v122;
                    }

                    else
                    {
                      v54 = *&v121;
                    }

                    if (v23)
                    {
                      v51 = *&v121;
                    }

                    else
                    {
                      v51 = v122;
                    }
                  }

                  *&v117 = v54;
                  *(&v117 + 1) = v51;
                  *&v118 = v53;
                  *(&v118 + 1) = v50;
                }
              }

              v55 = (*&v118 - *&v117) * (*&v118 - *&v117);
              if (!v23)
              {
                v55 = (*(&v118 + 1) - *(&v117 + 1)) * (*(&v118 + 1) - *(&v117 + 1));
              }

              v56 = *&v121 + sqrt(v24 - v55) - *&v119;
              if (*v98 >= v56)
              {
                v56 = *v98;
              }

              *v98 = v56;
              v99 = 1;
            }

            v57 = (*(*a1 + 88))(a1, v25 + 1);
            v104 = v31;
            v58 = (*(*a2 + 88))(a2, v31 + 1);
            v31 = v58;
            if (v57 >= v18 || v58 >= v105)
            {
              if (v57 < v18)
              {
                *&v121 = (*(*a1 + 64))(a1, v57);
                *(&v121 + 1) = v81;
                v122 = v82;
                v31 = v104;
              }

              else
              {
                if (v58 >= v105)
                {
                  break;
                }

                *&v119 = (*(*a2 + 64))(a2, v58);
                *(&v119 + 1) = v60;
                v120 = v61;
                v57 = v25;
              }

              v62 = v105;
            }

            else
            {
              v103 = v25;
              v52 = v32 > v25;
              v62 = v105;
              if (!v52)
              {
                v63 = *&v121;
                v32 = v57;
                do
                {
                  if ((*(*a1 + 72))(a1, v32) > v63)
                  {
                    break;
                  }

                  v32 = (*(*a1 + 88))(a1, v32 + 1);
                }

                while (v32 < v18);
              }

              if (v33 <= v104)
              {
                v64 = *&v119;
                v33 = v31;
                do
                {
                  if ((*(*a2 + 72))(a2, v33) < v64)
                  {
                    break;
                  }

                  v33 = (*(*a2 + 88))(a2, v33 + 1);
                }

                while (v33 < v105);
              }

              *&v115 = (*(*a1 + 64))(a1, v57);
              *(&v115 + 1) = v65;
              v116 = v66;
              *&v113 = (*(*a2 + 64))(a2, v31);
              *(&v113 + 1) = v67;
              v114 = v68;
              v69 = sub_275C9FE34(&v121, &v113, v23 == 0, v112);
              if (v33 >= v105)
              {
                v100 = v33;
                a5 = v101;
              }

              else
              {
                *&v106 = (*(*a2 + 64))(a2, v33);
                *(&v106 + 1) = v70;
                *&v107 = v71;
                v110 = *MEMORY[0x277CBF348];
                v111 = v110;
                v72 = sub_275C9FE34(&v121, &v106, v23 == 0, &v110);
                if (v72 >= v69)
                {
                  v73 = v69;
                  v78 = v33;
                  a5 = v101;
                }

                else
                {
                  v73 = v72;
                  if (v32 >= v18)
                  {
                    v74 = v103;
                  }

                  else
                  {
                    v74 = v32;
                  }

                  (*(*a1 + 64))(a1, v74);
                  v76 = (*(*a2 + 80))(a2, v75);
                  if (v31 <= v76)
                  {
                    v77 = v76;
                  }

                  else
                  {
                    v77 = v31;
                  }

                  v78 = v33;
                  if (v77 < v33)
                  {
                    *&v106 = (*(*a2 + 64))(a2, v77);
                    *(&v106 + 1) = v79;
                    *&v107 = v80;
                    v73 = sub_275C9FE34(&v121, &v106, v102 == 0, &v110);
                    v78 = v77;
                  }

                  a5 = v101;
                  if (v73 >= v69)
                  {
                    v73 = v69;
                  }

                  else
                  {
                    v114 = *&v107;
                    v112[0] = v110;
                    v112[1] = v111;
                    v113 = v106;
                    v31 = v78;
                  }
                }

                v100 = v78;
                v69 = v73;
              }

              v23 = v102;
              v83 = sub_275C9FE34(&v115, &v119, v102 == 0, &v110);
              if (v32 < v18)
              {
                *&v108 = (*(*a1 + 64))(a1, v32);
                *(&v108 + 1) = v84;
                v109 = v85;
                v106 = *MEMORY[0x277CBF348];
                v107 = v106;
                v86 = sub_275C9FE34(&v108, &v119, v102 == 0, &v106);
                if (v86 >= v83)
                {
                  a5 = v101;
                  v23 = v102;
                }

                else
                {
                  v87 = v86;
                  if (v100 >= v105)
                  {
                    v88 = v104;
                  }

                  else
                  {
                    v88 = v100;
                  }

                  (*(*a2 + 64))(a2, v88);
                  v90 = (*(*a1 + 80))(a1, v89);
                  if (v57 <= v90)
                  {
                    v91 = v90;
                  }

                  else
                  {
                    v91 = v57;
                  }

                  v92 = v32;
                  v23 = v102;
                  if (v91 < v32)
                  {
                    *&v108 = (*(*a1 + 64))(a1, v91);
                    *(&v108 + 1) = v93;
                    v109 = v94;
                    v87 = sub_275C9FE34(&v108, &v119, v102 == 0, &v106);
                    v92 = v91;
                  }

                  a5 = v101;
                  if (v87 < v83)
                  {
                    v115 = v108;
                    v116 = v109;
                    v110 = v106;
                    v111 = v107;
                    v57 = v92;
                    v83 = v87;
                  }
                }
              }

              if (v69 <= v83)
              {
                v119 = v113;
                v120 = v114;
                v57 = v103;
              }

              else
              {
                v121 = v115;
                v122 = v116;
                v31 = v104;
              }
            }

            v95 = v57 >= v18 || v31 >= v62;
            v25 = v57;
          }

          while (!v95);
          v6 = v99;
        }
      }
    }
  }

  return v6 & 1;
}

double sub_275C9ECAC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(v1 + 16);
  return *(a1 + 32) + v2 * (*(*a1 + 56))(a1);
}

double sub_275C9ED18(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(v1 + 24);
  return *(a1 + 32) + v2 * (*(*a1 + 56))(a1);
}

double sub_275C9ED84(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return *(a1 + 40) + *(v1 + 56) * *(a1 + 64);
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_275C9EDA8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return *(v1 + 24) - *(v1 + 16) + 1;
  }

  else
  {
    return 1;
  }
}

double sub_275C9EDC8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return *(a1 + 64) * (1.0 / *(v1 + 8));
  }

  else
  {
    return 1.0;
  }
}

double sub_275C9EDF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    return *(a1 + 40) + *(*(v2 + 32) + 8 * a2) * *(a1 + 64);
  }

  else
  {
    return 0.0;
  }
}

double sub_275C9EE58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    return *(a1 + 40) + *(*(v2 + 32) + 8 * a2) * *(a1 + 64);
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_275C9EE88(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 48))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return a2;
}

void sub_275C9EED0(uint64_t a1, CGPath *a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v5 = *v2;
    v6 = *(v2 + 1);
    v7 = *(a1 + 64);
    memset(&v29, 0, sizeof(v29));
    CGAffineTransformMakeTranslation(&v29, *(a1 + 16), *(a1 + 24));
    v8 = *(v2 + 2);
    if (v8 <= *(v2 + 3))
    {
      v9 = 0;
      v10 = v7 * (1.0 / v6);
      v11 = 0.0;
      do
      {
        v12 = *(v2 + 2);
        v13 = __OFSUB__(v8, v12);
        v14 = v8 - v12;
        if (v14 < 0 != v13 || (v15 = *(v2 + 4), v14 >= ((*(v2 + 5) - v15) >> 3)))
        {
          v16 = 1.79769313e308;
          if ((*v2 & 0xFFFFFFFE) == 2)
          {
            v16 = -1.79769313e308;
          }
        }

        else
        {
          v16 = *(v15 + 8 * v14);
        }

        v17 = v16 * *(a1 + 64);
        if ((v9 & 1) == 0)
        {
          v20 = v8;
          if ((v5 | 2) == 2)
          {
            CGPathMoveToPoint(a2, &v29, v17, v10 * v20);
            v21 = v8 + 1;
            v22 = v10 * (v8 + 1);
            v23 = a2;
            v24 = v17;
          }

          else
          {
            CGPathMoveToPoint(a2, &v29, v10 * v20, v17);
            v21 = v8 + 1;
            v24 = v10 * (v8 + 1);
            v23 = a2;
            v22 = v17;
          }

          CGPathAddLineToPoint(v23, &v29, v24, v22);
          v9 = 1;
          v11 = v17;
          goto LABEL_22;
        }

        v18 = v5 | 2;
        if (v17 == v11)
        {
          if (v18 != 2)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v19 = v8;
          if (v18 != 2)
          {
            CGPathAddLineToPoint(a2, &v29, v10 * v19, v17);
LABEL_20:
            v21 = v8 + 1;
            v27 = v10 * (v8 + 1);
            v26 = a2;
            v25 = v17;
            goto LABEL_21;
          }

          CGPathAddLineToPoint(a2, &v29, v17, v10 * v19);
        }

        v21 = v8 + 1;
        v25 = v10 * (v8 + 1);
        v26 = a2;
        v27 = v17;
LABEL_21:
        CGPathAddLineToPoint(v26, &v29, v27, v25);
        v9 = 1;
LABEL_22:
        v2 = *(a1 + 48);
        v28 = v8 < *(v2 + 3);
        v8 = v21;
      }

      while (v28);
    }
  }
}

double sub_275C9F114(uint64_t a1)
{
  result = *(a1 + 48);
  if (result <= 0.0)
  {
    return 1.0;
  }

  return result;
}

double sub_275C9F128(double *a1)
{
  v1 = a1[5];
  (*(*a1 + 56))(a1);
  return v1;
}

void sub_275C9F188(uint64_t a1, CGMutablePathRef path)
{
  if (path)
  {
    if ((*(a1 + 8) | 2) == 2)
    {
      CGPathMoveToPoint(path, 0, *(a1 + 40), *(a1 + 32));
      v4 = *(a1 + 40);
      v5 = *(a1 + 32) + *(a1 + 48);
    }

    else
    {
      CGPathMoveToPoint(path, 0, *(a1 + 32), *(a1 + 40));
      v5 = *(a1 + 40);
      v4 = *(a1 + 32) + *(a1 + 48);
    }

    CGPathAddLineToPoint(path, 0, v4, v5);
  }
}

uint64_t sub_275C9F220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = a1;
  v5 = *(a2 + 24);
  *(a1 + 8) = 0;
  *a1 = v5;
  v6 = 0uLL;
  *(a1 + 16) = 0u;
  v7 = *a2;
  if (*a2 != *(a2 + 8))
  {
    v8 = *(a2 + 24);
    do
    {
      v9 = *v7;
      if (*v7 == 1)
      {
        sub_275CD82E0(v7);
        operator new();
      }

      if (v9 == 2)
      {
        v10 = *(v7 + 32);
        if (a4 && v10)
        {
          LOWORD(matrix.b) = *(v7 + 40);
          matrix.c = 12.0;
          LODWORD(matrix.d) = v8;
          *&matrix.a = CTFontCopyPostScriptName(v10);
          sub_275C9F940(a4, &matrix, v17);
          v17[0] = 0;
          v17[1] = 0;
          sub_275C9DABC(&matrix);
          goto LABEL_14;
        }

        if (v10)
        {
          CopyWithAttributes = CTFontCreateCopyWithAttributes(*(v7 + 32), 12.0, 0, 0);
          if (CopyWithAttributes)
          {
            memset(&matrix, 0, sizeof(matrix));
            CGAffineTransformMakeScale(&matrix, 1.0, -1.0);
            CTFontCreatePathForGlyph(CopyWithAttributes, *(v7 + 40), &matrix);
            operator new();
          }

LABEL_14:
          operator new();
        }
      }

      else if (v9 == 3)
      {
        operator new();
      }

      v7 += 72;
    }

    while (v7 != *(a2 + 8));
    v6 = *(a1 + 8);
    v4 = a1;
  }

  v12 = 126 - 2 * __clz((*(&v6 + 1) - v6) >> 4);
  v17[0] = sub_275C9FB10;
  if (*(&v6 + 1) == v6)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_275CA0BAC(v6, *(&v6 + 1), v17, v13, 1);
  return v4;
}

void sub_275C9F6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = a12;
  sub_275C9B850(&a15);
  _Unwind_Resume(a1);
}

void sub_275C9F7FC()
{
  if (v1)
  {
    sub_275C9B8F0(v1);
  }

  if (v0)
  {
    MEMORY[0x277C8CFC0](v2, 0x1080C4076FF3075);
  }

  JUMPOUT(0x275C9F7E4);
}

void **sub_275C9F82C(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_275C8D77C();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_275CA029C(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_275CA02E4(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_275C9F940(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  pthread_rwlock_rdlock((a1 + 9));
  v6 = sub_275C9D704(a1 + 1, a2);
  v7 = v6;
  if (v6)
  {
    v6[8] = **a1;
    v8 = v6[6];
    v9 = v6[7];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a3 = v8;
    a3[1] = v9;
  }

  else
  {
    v9 = 0;
  }

  pthread_rwlock_unlock((a1 + 9));
  if (!v7 && (a1[34][2])())
  {
    pthread_rwlock_wrlock((a1 + 9));
    v10 = sub_275C9D704(a1 + 1, a2);
    if (v10)
    {
      v10[8] = **a1;
      v11 = v10[6];
      v12 = v10[7];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v15 = **a1;
      v13 = sub_275CA0498(a1 + 1, a2);
      v14 = v13[7];
      v13[6] = 0;
      v13[7] = 0;
      if (v14)
      {
        sub_275C9B8F0(v14);
      }

      v13[8] = v15;
      if (a1[4] > a1[7])
      {
        *(a1 + 48) = 1;
      }

      v11 = 0;
      v12 = 0;
    }

    *a3 = v11;
    a3[1] = v12;
    if (v9)
    {
      sub_275C9B8F0(v9);
    }

    pthread_rwlock_unlock((a1 + 9));
  }
}

void sub_275C9FAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_275C9B8F0(a11);
  }

  if (v11)
  {
    sub_275C9B8F0(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275C9FB10(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    if (*a2)
    {
      v4 = (*(*result + 24))(result);
      return v4 < (*(**a2 + 24))();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_275C9FBB0(int *a1, uint64_t a2, double *a3, double *a4, uint64_t a5, double a6)
{
  v6 = *a1;
  *a3 = 0.0;
  v7 = *(a1 + 1);
  if (v7 == *(a1 + 2))
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v28 = v6 & 0xFFFFFFFD;
    v14 = MEMORY[0x277CBF348];
    do
    {
      v26 = v7;
      v16 = *v7;
      v15 = *(v7 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v15;
      for (i = *(a2 + 8); i != *(a2 + 16); i += 16)
      {
        v18 = *i;
        v19 = *(i + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = *v14;
        v30 = v29;
        if (v16 && v18 && sub_275C9E180(v16, v18, a3, &v29, a5, a6))
        {
          if ((v13 & 1) == 0 || (!v28 ? (v20 = *&v30 - *&v29, v21 = a4[2], v22 = *a4) : (v20 = *(&v30 + 1) - *(&v29 + 1), v21 = a4[3], v22 = a4[1]), v20 < v21 - v22))
          {
            v23 = v30;
            *a4 = v29;
            *(a4 + 1) = v23;
          }

          v13 = 1;
        }

        if (v19)
        {
          sub_275C9B8F0(v19);
        }
      }

      if (v27)
      {
        sub_275C9B8F0(v27);
      }

      v7 = v26 + 16;
    }

    while (v26 + 16 != *(a1 + 2));
  }

  return v13 & 1;
}

void sub_275C9FD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (v11)
  {
    sub_275C9B8F0(v11);
  }

  if (a11)
  {
    sub_275C9B8F0(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_275C9FD64(void *a1)
{
  *a1 = &unk_2884CB3C8;
  v2 = a1[7];
  if (v2)
  {
    sub_275C9B8F0(v2);
  }

  return a1;
}

void sub_275C9FDB0(void *a1)
{
  *a1 = &unk_2884CB3C8;
  v1 = a1[7];
  if (v1)
  {
    sub_275C9B8F0(v1);
  }

  JUMPOUT(0x277C8CFC0);
}

double sub_275C9FE34(double *a1, double *a2, int a3, double *a4)
{
  v4 = a2[1];
  v5 = a2[2];
  v7 = a1[1];
  v6 = a1[2];
  if (v6 > v4 && v5 > v7)
  {
    if (v7 >= v4)
    {
      v4 = a1[1];
    }

    if (v5 < v6)
    {
      v6 = a2[2];
    }

    v28 = v6 + v4;
    v27 = v28 * 0.5;
    v25 = *a1;
    if (a3)
    {
      v24 = *a1;
    }

    else
    {
      v24 = v28 * 0.5;
    }

    if (a3)
    {
      v25 = v27;
      v26 = *a2;
    }

    else
    {
      v26 = v27;
    }

    if (!a3)
    {
      v27 = *a2;
    }
  }

  else
  {
    if (a3)
    {
      v9 = *a1;
    }

    else
    {
      v9 = a1[1];
    }

    if (a3)
    {
      v10 = a1[1];
    }

    else
    {
      v10 = *a1;
    }

    if (a3)
    {
      v11 = *a2;
    }

    else
    {
      v11 = a2[2];
    }

    if (a3)
    {
      v12 = a2[2];
    }

    else
    {
      v12 = *a2;
    }

    if (a3)
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2[1];
    }

    if (a3)
    {
      v14 = a2[1];
    }

    else
    {
      v14 = *a2;
    }

    if (a3)
    {
      v15 = *a1;
    }

    else
    {
      v15 = a1[2];
    }

    if (a3)
    {
      v16 = a1[2];
    }

    else
    {
      v16 = *a1;
    }

    if (v6 < v4)
    {
      v9 = v15;
      v10 = v16;
      v11 = v13;
      v12 = v14;
    }

    if (a3)
    {
      v17 = *a2;
    }

    else
    {
      v17 = a2[2];
    }

    if (a3)
    {
      v18 = a2[2];
    }

    else
    {
      v18 = *a2;
    }

    if (a3)
    {
      v19 = *a2;
    }

    else
    {
      v19 = a1[1];
    }

    if (a3)
    {
      v20 = *a2;
    }

    else
    {
      v7 = *a2;
      v20 = a2[1];
    }

    if (a3)
    {
      v21 = a2[1];
    }

    else
    {
      v21 = *a2;
    }

    if (a3)
    {
      v5 = *a2;
      v22 = a1[2];
    }

    else
    {
      v22 = *a2;
    }

    v23 = v6 < v4;
    if (v6 < v4)
    {
      v24 = v5;
    }

    else
    {
      v24 = v19;
    }

    if (v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v7;
    }

    if (v23)
    {
      v26 = v20;
    }

    else
    {
      v26 = v17;
    }

    if (v23)
    {
      v27 = v21;
    }

    else
    {
      v27 = v18;
    }

    if (*a2 >= *a1)
    {
      v24 = v9;
      v25 = v10;
      v26 = v11;
      v27 = v12;
    }
  }

  *a4 = v24;
  a4[1] = v25;
  a4[2] = v26;
  a4[3] = v27;
  result = (v27 - v25) * (v27 - v25) + (v26 - v24) * (v26 - v24);
  if (*a2 < *a1 && a2[2] > a1[1] && a1[2] > a2[1])
  {
    return -result;
  }

  return result;
}

void sub_275C9FF58(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_275C8D86C();
}

void sub_275C9FFA0(uint64_t a1, unint64_t a2, uint64_t *a3)
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
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_275D0BA00)));
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
      sub_275C8D77C();
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
      sub_275C8D794(a1, v11);
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
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_275D0BA00)));
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

void sub_275CA01D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_275D01FA4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CA01F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CA022C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_275CA025C(uint64_t a1, uint64_t a2)
{
  if (sub_275C9BC50(a2, &unk_2884CB528))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_275CA029C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_275C8D86C();
}

void **sub_275CA02E4(void **a1)
{
  sub_275CA0318(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_275CA0318(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_275C9B8F0(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_275CA03D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_275D01FA4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CA03F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CA0428(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_275CA0458(uint64_t a1, uint64_t a2)
{
  if (sub_275C9BC50(a2, &unk_2884CB5A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_275CA0498(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = CFHash(v4);
  }

  v5 = *(a2 + 8) << 16;
  v6 = v4 ^ *(a2 + 24);
  v7 = v6 ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6 ^ v5;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = v7 & (*&v8 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    sub_275CA0724();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (!sub_275C9DB58((v13 + 2), a2))
  {
    goto LABEL_19;
  }

  return v13;
}

void sub_275CA0710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CA07A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA07A0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_275C9BAA0(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_275CA07EC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  return a1;
}

void sub_275CA0844(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_275CA0934(a1, prime);
    }
  }
}

void sub_275CA0934(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_275C8D86C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_275CA0B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_275C9BBF4(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CA0B2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C8CFC0);
}

uint64_t sub_275CA0B6C(uint64_t a1, uint64_t a2)
{
  if (sub_275C9BC50(a2, &unk_2884CB608))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_275CA0BAC(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:
          sub_275CA0F58(v9, v9 + 2, a2 - 2, a3);
          return;
        case 4uLL:
          sub_275CA12C8(v9, v9 + 2, v9 + 4, a2 - 2, a3);
          return;
        case 5uLL:
          sub_275CA14F4(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2, a3);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v23 = *a3;
        v24 = *(a2 - 1);
        v35 = *(a2 - 2);
        v36 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = v9[1];
        v33 = *v9;
        v34 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = v23(&v35, &v33);
        if (v34)
        {
          sub_275C9B8F0(v34);
        }

        if (v36)
        {
          sub_275C9B8F0(v36);
        }

        if (v26)
        {
          v27 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v27;
          v28 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v28;
        }

        return;
      }
    }

    if (v12 <= 23)
    {
      if (a5)
      {
        sub_275CA17C8(v9, a2, a3);
      }

      else
      {
        sub_275CA19A4(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      break;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      sub_275CA0F58(&v9[2 * (v12 >> 1)], v9, a2 - 2, a3);
      if (a5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_275CA0F58(v9, &v9[2 * (v12 >> 1)], a2 - 2, a3);
      sub_275CA0F58(v9 + 2, v14 - 2, a2 - 4, a3);
      sub_275CA0F58(v9 + 4, &v9[2 * v13 + 2], a2 - 6, a3);
      sub_275CA0F58(v14 - 2, v14, &v9[2 * v13 + 2], a3);
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_25;
      }
    }

    v16 = *a3;
    v17 = *(v9 - 1);
    v31 = *(v9 - 2);
    v32 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v9[1];
    v29 = *v9;
    v30 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v16(&v31, &v29);
    if (v30)
    {
      sub_275C9B8F0(v30);
    }

    if (v32)
    {
      sub_275C9B8F0(v32);
    }

    if ((v19 & 1) == 0)
    {
      v9 = sub_275CA1B58(v9, a2, a3);
      goto LABEL_30;
    }

LABEL_25:
    v20 = sub_275CA1F1C(v9, a2, a3);
    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

    v22 = sub_275CA2280(v9, v20, a3);
    v9 = v20 + 2;
    if (sub_275CA2280(v20 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_28:
      sub_275CA0BAC(a1, v20, a3, -v11, a5 & 1);
      v9 = v20 + 2;
LABEL_30:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v9 != a2)
  {
    sub_275CA25C8(v9, a2, a2, a3);
  }
}

void sub_275CA0F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    sub_275C9B8F0(a16);
  }

  if (a18)
  {
    sub_275C9B8F0(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CA0F58(void *a1, void *a2, void *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  v8 = *a4;
  v10 = (a2 + 1);
  v9 = a2[1];
  v55 = *a2;
  v56 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = (a1 + 1);
  v11 = a1[1];
  v53 = *a1;
  v54 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v8(&v55, &v53);
  if (v54)
  {
    sub_275C9B8F0(v54);
  }

  if (v56)
  {
    sub_275C9B8F0(v56);
  }

  v14 = *a4;
  v15 = (a3 + 1);
  if (v13)
  {
    v16 = *v15;
    v43 = *a3;
    v44 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = a2[1];
    v41 = *a2;
    v42 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v14(&v43, &v41);
    if (v42)
    {
      sub_275C9B8F0(v42);
    }

    if (v44)
    {
      sub_275C9B8F0(v44);
    }

    v19 = *a1;
    if (v18)
    {
      *a1 = *a3;
      *a3 = v19;
    }

    else
    {
      *a1 = *a2;
      *a2 = v19;
      v30 = a1[1];
      a1[1] = a2[1];
      a2[1] = v30;
      v31 = *a4;
      v32 = a3[1];
      v39 = *a3;
      v40 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v30 = *v10;
      }

      v37 = *a2;
      v38 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = v31(&v39, &v37);
      if (v38)
      {
        sub_275C9B8F0(v38);
      }

      if (v40)
      {
        sub_275C9B8F0(v40);
      }

      if (!v33)
      {
        return 1;
      }

      v34 = *a2;
      *a2 = *a3;
      *a3 = v34;
      v12 = v10;
    }

    v10 = (a3 + 1);
LABEL_50:
    v35 = *v12;
    *v12 = *v10;
    *v10 = v35;
    return 1;
  }

  v20 = *v15;
  v51 = *a3;
  v52 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = a2[1];
  v49 = *a2;
  v50 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v14(&v51, &v49);
  if (v50)
  {
    sub_275C9B8F0(v50);
  }

  if (v52)
  {
    sub_275C9B8F0(v52);
  }

  if (v22)
  {
    v23 = *a2;
    *a2 = *a3;
    *a3 = v23;
    v24 = a2[1];
    a2[1] = a3[1];
    a3[1] = v24;
    v25 = *a4;
    v26 = a2[1];
    v47 = *a2;
    v48 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v27 = a1[1];
    v45 = *a1;
    v46 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = v25(&v47, &v45);
    if (v46)
    {
      sub_275C9B8F0(v46);
    }

    if (v48)
    {
      sub_275C9B8F0(v48);
    }

    if (!v28)
    {
      return 1;
    }

    v29 = *a1;
    *a1 = *a2;
    *a2 = v29;
    goto LABEL_50;
  }

  return 0;
}

void sub_275CA1234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a10)
  {
    sub_275C9B8F0(a10);
  }

  if (a12)
  {
    sub_275C9B8F0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CA12C8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  sub_275CA0F58(a1, a2, a3, a5);
  v10 = *a5;
  v11 = a4[1];
  v38 = *a4;
  v39 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a3[1];
  v36 = *a3;
  v37 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v10(&v38, &v36);
  if (v37)
  {
    sub_275C9B8F0(v37);
  }

  if (v39)
  {
    sub_275C9B8F0(v39);
  }

  if (v13)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a5;
    v17 = a3[1];
    v34 = *a3;
    v35 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = a2[1];
    v32 = *a2;
    v33 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v16(&v34, &v32);
    if (v33)
    {
      sub_275C9B8F0(v33);
    }

    if (v35)
    {
      sub_275C9B8F0(v35);
    }

    if (v19)
    {
      v20 = *a2;
      *a2 = *a3;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a5;
      v23 = a2[1];
      v30 = *a2;
      v31 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = a1[1];
      v28 = *a1;
      v29 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = v22(&v30, &v28);
      if (v29)
      {
        sub_275C9B8F0(v29);
      }

      if (v31)
      {
        sub_275C9B8F0(v31);
      }

      if (v25)
      {
        v26 = *a1;
        *a1 = *a2;
        *a2 = v26;
        v27 = a1[1];
        a1[1] = a2[1];
        a2[1] = v27;
      }
    }
  }
}

void sub_275CA1498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a10)
  {
    sub_275C9B8F0(a10);
  }

  if (a12)
  {
    sub_275C9B8F0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CA14F4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  sub_275CA12C8(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = a5[1];
  v50 = *a5;
  v51 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  v48 = *a4;
  v49 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v12(&v50, &v48);
  if (v49)
  {
    sub_275C9B8F0(v49);
  }

  if (v51)
  {
    sub_275C9B8F0(v51);
  }

  if (v15)
  {
    v16 = *a4;
    *a4 = *a5;
    *a5 = v16;
    v17 = a4[1];
    a4[1] = a5[1];
    a5[1] = v17;
    v18 = *a6;
    v19 = a4[1];
    v46 = *a4;
    v47 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = a3[1];
    v44 = *a3;
    v45 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v18(&v46, &v44);
    if (v45)
    {
      sub_275C9B8F0(v45);
    }

    if (v47)
    {
      sub_275C9B8F0(v47);
    }

    if (v21)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a6;
      v25 = a3[1];
      v42 = *a3;
      v43 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = a2[1];
      v40 = *a2;
      v41 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v24(&v42, &v40);
      if (v41)
      {
        sub_275C9B8F0(v41);
      }

      if (v43)
      {
        sub_275C9B8F0(v43);
      }

      if (v27)
      {
        v28 = *a2;
        *a2 = *a3;
        *a3 = v28;
        v29 = a2[1];
        a2[1] = a3[1];
        a3[1] = v29;
        v30 = *a6;
        v31 = a2[1];
        v38 = *a2;
        v39 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = a1[1];
        v36 = *a1;
        v37 = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = v30(&v38, &v36);
        if (v37)
        {
          sub_275C9B8F0(v37);
        }

        if (v39)
        {
          sub_275C9B8F0(v39);
        }

        if (v33)
        {
          v34 = *a1;
          *a1 = *a2;
          *a2 = v34;
          v35 = a1[1];
          a1[1] = a2[1];
          a2[1] = v35;
        }
      }
    }
  }
}

void sub_275CA1750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a10)
  {
    sub_275C9B8F0(a10);
  }

  if (a12)
  {
    sub_275C9B8F0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CA17C8(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  if (a1 == a2)
  {
    return;
  }

  v5 = a1 + 2;
  if (a1 + 2 == a2)
  {
    return;
  }

  v7 = 0;
  v8 = a1;
  do
  {
    v9 = v8;
    v8 = v5;
    v10 = *a3;
    v11 = v9[3];
    v31 = v9[2];
    v32 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v9[1];
    v29 = *v9;
    v30 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v10(&v31, &v29);
    if (v30)
    {
      sub_275C9B8F0(v30);
    }

    if (v32)
    {
      sub_275C9B8F0(v32);
    }

    if (!v13)
    {
      goto LABEL_32;
    }

    v14 = *v8;
    v15 = v9[3];
    v16 = v7;
    *v8 = 0;
    v8[1] = 0;
    while (1)
    {
      v17 = a1 + v16;
      v18 = *(a1 + v16);
      *v17 = 0;
      *(v17 + 1) = 0;
      v19 = *(a1 + v16 + 24);
      *(v17 + 1) = v18;
      if (v19)
      {
        sub_275C9B8F0(v19);
      }

      if (!v16)
      {
        v23 = a1;
        goto LABEL_30;
      }

      v20 = *a3;
      v27 = v14;
      v28 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = *(a1 + v16 - 8);
      v25 = *(a1 + v16 - 16);
      v26 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v20(&v27, &v25);
      if (v26)
      {
        sub_275C9B8F0(v26);
      }

      if (!v28)
      {
        break;
      }

      sub_275C9B8F0(v28);
      if ((v22 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_27:
      v16 -= 16;
    }

    if (v22)
    {
      goto LABEL_27;
    }

LABEL_29:
    v23 = (a1 + v16);
LABEL_30:
    v24 = v23[1];
    *v23 = v14;
    v23[1] = v15;
    if (v24)
    {
      sub_275C9B8F0(v24);
    }

LABEL_32:
    v5 = v8 + 2;
    v7 += 16;
  }

  while (v8 + 2 != a2);
}

void sub_275CA195C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_275C9B8F0(a14);
  }

  if (a16)
  {
    sub_275C9B8F0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CA19A4(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v7 = (a1 + 3);
      do
      {
        v8 = v4;
        v4 = v5;
        v9 = *a3;
        v10 = v8[3];
        v28 = v8[2];
        v29 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = v8[1];
        v26 = *v8;
        v27 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = v9(&v28, &v26);
        if (v27)
        {
          sub_275C9B8F0(v27);
        }

        if (v29)
        {
          sub_275C9B8F0(v29);
        }

        if (v12)
        {
          v13 = *v4;
          v14 = v8[3];
          v15 = v7;
          *v4 = 0;
          v4[1] = 0;
          do
          {
            v16 = *(v15 - 3);
            *(v15 - 3) = 0;
            *(v15 - 2) = 0;
            v17 = *v15;
            *(v15 - 1) = v16;
            if (v17)
            {
              sub_275C9B8F0(v17);
            }

            v18 = *a3;
            v24 = v13;
            v25 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v19 = *(v15 - 4);
            v22 = *(v15 - 5);
            v23 = v19;
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v20 = v18(&v24, &v22);
            if (v23)
            {
              sub_275C9B8F0(v23);
            }

            if (v25)
            {
              sub_275C9B8F0(v25);
            }

            v15 -= 2;
          }

          while ((v20 & 1) != 0);
          v21 = *v15;
          *(v15 - 1) = v13;
          *v15 = v14;
          if (v21)
          {
            sub_275C9B8F0(v21);
          }
        }

        v5 = v4 + 2;
        v7 += 2;
      }

      while (v4 + 2 != a2);
    }
  }
}

void sub_275CA1B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_275C9B8F0(a14);
  }

  if (a16)
  {
    sub_275C9B8F0(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_275CA1B58(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v7 = *a1;
  v6 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v8 = *a3;
  v56 = v7;
  v57 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 - 1);
  v54 = *(a2 - 2);
  v55 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v8(&v56, &v54);
  if (v55)
  {
    sub_275C9B8F0(v55);
  }

  if (v57)
  {
    sub_275C9B8F0(v57);
  }

  if (v10)
  {
    i = a1;
    do
    {
      v12 = *a3;
      v52 = v7;
      v53 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = i[3];
      v50 = i[2];
      v51 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v12(&v52, &v50);
      if (v51)
      {
        sub_275C9B8F0(v51);
      }

      if (v53)
      {
        sub_275C9B8F0(v53);
      }

      i += 2;
    }

    while ((v14 & 1) == 0);
  }

  else
  {
    for (i = a1 + 2; i < v4; i += 2)
    {
      v15 = *a3;
      v48 = v7;
      v49 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = i[1];
      v46 = *i;
      v47 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = v15(&v48, &v46);
      if (v47)
      {
        sub_275C9B8F0(v47);
      }

      if (v49)
      {
        sub_275C9B8F0(v49);
      }

      if (v17)
      {
        break;
      }
    }
  }

  if (i < v4)
  {
    do
    {
      v18 = *a3;
      v44 = v7;
      v45 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = *(v4 - 1);
      v42 = *(v4 - 2);
      v43 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v18(&v44, &v42);
      if (v43)
      {
        sub_275C9B8F0(v43);
      }

      if (v45)
      {
        sub_275C9B8F0(v45);
      }

      v4 -= 2;
    }

    while ((v20 & 1) != 0);
  }

  while (i < v4)
  {
    v21 = *i;
    *i = *v4;
    *v4 = v21;
    v22 = i[1];
    i[1] = v4[1];
    v4[1] = v22;
    do
    {
      v23 = *a3;
      v40 = v7;
      v41 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = i[3];
      v38 = i[2];
      v39 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = v23(&v40, &v38);
      if (v39)
      {
        sub_275C9B8F0(v39);
      }

      if (v41)
      {
        sub_275C9B8F0(v41);
      }

      i += 2;
    }

    while (!v25);
    do
    {
      v26 = *a3;
      v36 = v7;
      v37 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = *(v4 - 1);
      v34 = *(v4 - 2);
      v35 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = v26(&v36, &v34);
      if (v35)
      {
        sub_275C9B8F0(v35);
      }

      if (v37)
      {
        sub_275C9B8F0(v37);
      }

      v4 -= 2;
    }

    while ((v28 & 1) != 0);
  }

  v29 = (i - 2);
  if (i - 2 != a1)
  {
    v30 = *v29;
    *v29 = 0;
    *(i - 1) = 0;
    v31 = a1[1];
    *a1 = v30;
    if (v31)
    {
      sub_275C9B8F0(v31);
    }
  }

  v32 = *(i - 1);
  *(i - 2) = v7;
  *(i - 1) = v6;
  if (v32)
  {
    sub_275C9B8F0(v32);
  }

  return i;
}

void sub_275CA1E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v29 = *(v27 - 104);
  if (v29)
  {
    sub_275C9B8F0(v29);
  }

  v30 = *(v27 - 88);
  if (v30)
  {
    sub_275C9B8F0(v30);
  }

  if (v26)
  {
    sub_275C9B8F0(v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_275CA1F1C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = 0;
  v8 = *a1;
  v7 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  do
  {
    v9 = *a3;
    v10 = a1[v6 + 3];
    v56 = a1[v6 + 2];
    v57 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v54 = v8;
    v55 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v9(&v56, &v54);
    if (v55)
    {
      sub_275C9B8F0(v55);
    }

    if (v57)
    {
      sub_275C9B8F0(v57);
    }

    v6 += 2;
  }

  while ((v11 & 1) != 0);
  v12 = &a1[v6];
  if (v6 == 2)
  {
    if (v12 < a2)
    {
      for (a2 -= 2; ; a2 -= 2)
      {
        v17 = *a3;
        v18 = a2[1];
        v52 = *a2;
        v53 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = v8;
        v51 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = v17(&v52, &v50);
        if (v51)
        {
          sub_275C9B8F0(v51);
        }

        if (v53)
        {
          sub_275C9B8F0(v53);
        }

        v20 = v12 >= a2 ? 1 : v19;
        if (v20)
        {
          break;
        }
      }
    }
  }

  else
  {
    do
    {
      v14 = *(a2 - 2);
      v13 = *(a2 - 1);
      a2 -= 2;
      v15 = *a3;
      v48 = v14;
      v49 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v46 = v8;
      v47 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = v15(&v48, &v46);
      if (v47)
      {
        sub_275C9B8F0(v47);
      }

      if (v49)
      {
        sub_275C9B8F0(v49);
      }
    }

    while ((v16 & 1) == 0);
  }

  if (v12 >= a2)
  {
    v21 = &a1[v6];
  }

  else
  {
    v21 = &a1[v6];
    v22 = a2;
    do
    {
      v23 = *v21;
      *v21 = *v22;
      *v22 = v23;
      v24 = v21[1];
      v21[1] = v22[1];
      v22[1] = v24;
      do
      {
        v26 = v21[2];
        v25 = v21[3];
        v21 += 2;
        v27 = *a3;
        v44 = v26;
        v45 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = v8;
        v43 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v27(&v44, &v42);
        if (v43)
        {
          sub_275C9B8F0(v43);
        }

        if (v45)
        {
          sub_275C9B8F0(v45);
        }
      }

      while ((v28 & 1) != 0);
      do
      {
        v30 = *(v22 - 2);
        v29 = *(v22 - 1);
        v22 -= 2;
        v31 = *a3;
        v40 = v30;
        v41 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = v8;
        v39 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = v31(&v40, &v38);
        if (v39)
        {
          sub_275C9B8F0(v39);
        }

        if (v41)
        {
          sub_275C9B8F0(v41);
        }
      }

      while (!v32);
    }

    while (v21 < v22);
  }

  v33 = (v21 - 2);
  if (v21 - 2 != a1)
  {
    v34 = *v33;
    *v33 = 0;
    *(v21 - 1) = 0;
    v35 = a1[1];
    *a1 = v34;
    if (v35)
    {
      sub_275C9B8F0(v35);
    }
  }

  v36 = *(v21 - 1);
  *(v21 - 2) = v8;
  *(v21 - 1) = v7;
  if (v36)
  {
    sub_275C9B8F0(v36);
  }

  return v21 - 2;
}

void sub_275CA21E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a23)
  {
    sub_275C9B8F0(a23);
  }

  if (a25)
  {
    sub_275C9B8F0(a25);
  }

  if (v25)
  {
    sub_275C9B8F0(v25);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275CA2280(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v8 = *(a2 - 1);
        v44 = *(a2 - 2);
        v45 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = a1[1];
        v42 = *a1;
        v43 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = v7(&v44, &v42);
        if (v43)
        {
          sub_275C9B8F0(v43);
        }

        if (v45)
        {
          sub_275C9B8F0(v45);
        }

        if (v10)
        {
          v11 = *a1;
          *a1 = *(v4 - 2);
          *(v4 - 2) = v11;
          v12 = a1[1];
          a1[1] = *(v4 - 1);
          *(v4 - 1) = v12;
        }

        return 1;
      }

      goto LABEL_19;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_275CA0F58(a1, a1 + 2, a2 - 2, a3);
      return 1;
    case 4:
      sub_275CA12C8(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      sub_275CA14F4(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
  }

LABEL_19:
  v13 = a1 + 4;
  sub_275CA0F58(a1, a1 + 2, a1 + 4, a3);
  v14 = a1 + 6;
  if (a1 + 6 == v4)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  v32 = v4;
  while (1)
  {
    v17 = *a3;
    v18 = v14[1];
    v40 = *v14;
    v41 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v13[1];
    v38 = *v13;
    v39 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = v17(&v40, &v38);
    if (v39)
    {
      sub_275C9B8F0(v39);
    }

    if (v41)
    {
      sub_275C9B8F0(v41);
    }

    if (v20)
    {
      v33 = v16;
      v21 = *v14;
      v22 = v14[1];
      v23 = v15;
      *v14 = 0;
      v14[1] = 0;
      while (1)
      {
        v24 = a1 + v23;
        v25 = *(a1 + v23 + 32);
        *(v24 + 4) = 0;
        *(v24 + 5) = 0;
        v26 = *(a1 + v23 + 56);
        *(v24 + 3) = v25;
        if (v26)
        {
          sub_275C9B8F0(v26);
        }

        if (v23 == -32)
        {
          break;
        }

        v27 = *a3;
        v36 = v21;
        v37 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = *(a1 + v23 + 24);
        v34 = *(a1 + v23 + 16);
        v35 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = v27(&v36, &v34);
        if (v35)
        {
          sub_275C9B8F0(v35);
        }

        if (v37)
        {
          sub_275C9B8F0(v37);
          if ((v29 & 1) == 0)
          {
            v13 = (a1 + v23 + 32);
            goto LABEL_46;
          }
        }

        else if (!v29)
        {
          goto LABEL_46;
        }

        v13 -= 2;
        v23 -= 16;
      }

      v13 = a1;
LABEL_46:
      v30 = v13[1];
      *v13 = v21;
      v13[1] = v22;
      if (v30)
      {
        sub_275C9B8F0(v30);
      }

      v16 = v33 + 1;
      v4 = v32;
      if (v33 == 7)
      {
        return v14 + 2 == v32;
      }
    }

    v13 = v14;
    v15 += 16;
    v14 += 2;
    if (v14 == v4)
    {
      return 1;
    }
  }
}

void sub_275CA2568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20)
  {
    sub_275C9B8F0(a20);
  }

  if (a22)
  {
    sub_275C9B8F0(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_275CA25C8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t *, uint64_t *))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_275CA2760(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *a4;
        v14 = v12[1];
        v23 = *v12;
        v24 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = a1[1];
        v21 = *a1;
        v22 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = v13(&v23, &v21);
        if (v22)
        {
          sub_275C9B8F0(v22);
        }

        if (v24)
        {
          sub_275C9B8F0(v24);
        }

        if (v16)
        {
          v17 = *v12;
          *v12 = *a1;
          *a1 = v17;
          v18 = v12[1];
          v12[1] = a1[1];
          a1[1] = v18;
          sub_275CA2760(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        sub_275CA2A8C(a1, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_275CA273C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_275C9B8F0(a10);
  }

  if (a12)
  {
    sub_275C9B8F0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CA2760(uint64_t a1, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v5 = a4;
  v6 = a1;
  v36 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 4)
  {
    return;
  }

  v9 = (a4 - a1) >> 3;
  v10 = v9 + 1;
  v11 = (a1 + 16 * (v9 + 1));
  v12 = v9 + 2;
  if (v9 + 2 < a3)
  {
    v13 = *a2;
    v50 = *v11;
    if (*(&v50 + 1))
    {
      atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v11 + 3);
    v48 = *(v11 + 2);
    v49 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v13(&v50, &v48);
    if (v49)
    {
      sub_275C9B8F0(v49);
    }

    if (*(&v50 + 1))
    {
      sub_275C9B8F0(*(&v50 + 1));
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v15)
    {
LABEL_12:
      ++v11;
      v10 = v12;
    }
  }

LABEL_13:
  v16 = *a2;
  v17 = *(v11 + 1);
  v46 = *v11;
  v47 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5[1];
  v44 = *v5;
  v45 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v16(&v46, &v44);
  if (v45)
  {
    sub_275C9B8F0(v45);
  }

  if (v47)
  {
    sub_275C9B8F0(v47);
  }

  if ((v19 & 1) == 0)
  {
    v20 = v5[1];
    v35 = *v5;
    *v5 = 0;
    v5[1] = 0;
    v21 = v6;
    while (1)
    {
      v22 = v11;
      v23 = *v11;
      *v11 = 0;
      *(v11 + 1) = 0;
      v24 = v5[1];
      *v5 = v23;
      if (v24)
      {
        sub_275C9B8F0(v24);
      }

      if (v36 < v10)
      {
LABEL_48:
        v34 = v22[1];
        *v22 = v35;
        v22[1] = v20;
        if (v34)
        {
          sub_275C9B8F0(v34);
        }

        return;
      }

      v25 = 2 * v10;
      v10 = (2 * v10) | 1;
      v11 = (v6 + 16 * v10);
      v26 = v25 + 2;
      if (v25 + 2 < a3)
      {
        v27 = *a2;
        v28 = *v11;
        v43 = v28;
        if (*(&v28 + 1))
        {
          atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v29 = *(v11 + 3);
        v41 = *(v11 + 2);
        v42 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v30 = v27(&v43, &v41);
        if (v42)
        {
          sub_275C9B8F0(v42);
        }

        if (!*(&v43 + 1))
        {
          if (!v30)
          {
            goto LABEL_36;
          }

LABEL_35:
          ++v11;
          v10 = v26;
          goto LABEL_36;
        }

        sub_275C9B8F0(*(&v43 + 1));
        if (v30)
        {
          goto LABEL_35;
        }
      }

LABEL_36:
      v31 = *a2;
      v32 = *(v11 + 1);
      v39 = *v11;
      v40 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = v35;
      v38 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = v31(&v39, &v37);
      v6 = v21;
      if (v38)
      {
        sub_275C9B8F0(v38);
      }

      if (v40)
      {
        sub_275C9B8F0(v40);
      }

      v5 = v22;
      if (v33)
      {
        goto LABEL_48;
      }
    }
  }
}

void sub_275CA2A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_275C9B8F0(a24);
  }

  if (*(v24 - 88))
  {
    sub_275C9B8F0(*(v24 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_275CA2A8C(uint64_t *a1, uint64_t a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = sub_275CA2B9C(a1, a3, a4);
    v10 = v9;
    if (v9 == (a2 - 16))
    {
      v15 = v9[1];
      *v10 = v8;
      v10[1] = v7;
      if (v15)
      {

        sub_275C9B8F0(v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        sub_275C9B8F0(v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        sub_275C9B8F0(v14);
      }

      sub_275CA2CDC(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_275CA2B84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_275C9B8F0(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_275CA2B9C(void *a1, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 >= a3)
    {
      goto LABEL_12;
    }

    v12 = *a2;
    v13 = v8[3];
    v23 = v8[2];
    v24 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = v8[4];
    v14 = v8[5];
    v16 = v8 + 4;
    v21 = v15;
    v22 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v12(&v23, &v21);
    if (v22)
    {
      sub_275C9B8F0(v22);
    }

    if (v24)
    {
      sub_275C9B8F0(v24);
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_11:
      v9 = v16;
      v6 = v11;
      goto LABEL_12;
    }

    if (v17)
    {
      goto LABEL_11;
    }

LABEL_12:
    v18 = *v9;
    *v9 = 0;
    v9[1] = 0;
    v19 = a1[1];
    *a1 = v18;
    if (v19)
    {
      sub_275C9B8F0(v19);
    }

    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_275CA2CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_275C9B8F0(a10);
  }

  if (a12)
  {
    sub_275C9B8F0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_275CA2CDC(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, uint64_t *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 16 * (v4 >> 1));
    v10 = *a3;
    v11 = *v9;
    v29 = v11;
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a2 - 8);
    v13 = (a2 - 16);
    v27 = *(a2 - 16);
    v28 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = v10(&v29, &v27);
    if (v28)
    {
      sub_275C9B8F0(v28);
    }

    if (*(&v29 + 1))
    {
      sub_275C9B8F0(*(&v29 + 1));
    }

    if (v14)
    {
      v16 = *(a2 - 16);
      v15 = *(a2 - 8);
      *v13 = 0;
      v13[1] = 0;
      do
      {
        v17 = v9;
        v18 = *v9;
        *v9 = 0;
        v9[1] = 0;
        v19 = v13[1];
        *v13 = v18;
        if (v19)
        {
          sub_275C9B8F0(v19);
        }

        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 16 * v8);
        v20 = *a3;
        v21 = *v9;
        v26 = v21;
        if (*(&v21 + 1))
        {
          atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v24 = v16;
        v25 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v20(&v26, &v24);
        if (v25)
        {
          sub_275C9B8F0(v25);
        }

        if (*(&v26 + 1))
        {
          sub_275C9B8F0(*(&v26 + 1));
        }

        v13 = v17;
      }

      while ((v22 & 1) != 0);
      v23 = v17[1];
      *v17 = v16;
      v17[1] = v15;
      if (v23)
      {
        sub_275C9B8F0(v23);
      }
    }
  }
}

void sub_275CA2E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    sub_275C9B8F0(a14);
  }

  if (a16)
  {
    sub_275C9B8F0(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275CA2E90(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  *(a1 + 40) = objc_msgSend_kerningManager(a3, a2, a3, a4);
  *(a1 + 48) = objc_msgSend_layoutConfig(a3, v8, v9, v10);
  objc_msgSend_baseFontSize(a2, v11, v12, v13);
  v17 = objc_msgSend_fontManager(a3, v14, v15, v16);
  v18 = sub_275C9B058(v17);
  v22 = objc_msgSend_baseFontName(a2, v19, v20, v21);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_textMacroFontSize(a2, v23, v24, v25);
  }

  else
  {
    objc_msgSend_baseFontSize(a2, v23, v24, v25);
  }

  sub_275CB7944(a1 + 56, v18, v22);
  *(a1 + 208) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 504) = 1065353216;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = a3;
  *(a1 + 616) = a4;
  *a1 = a2;
  objc_msgSend_baseFontSize(a2, v26, v27, v28);
  *(a1 + 8) = v29;
  objc_msgSend_containerSize(a2, v30, v31, v32);
  *(a1 + 16) = v33;
  *(a1 + 24) = v34;
  v38 = objc_msgSend_baseFontName(a2, v35, v36, v37);
  *(a1 + 32) = v38;
  if (v38)
  {
    CFRetain(v38);
  }

  v42 = objc_msgSend_fontManager(a3, v39, v40, v41);
  v43 = sub_275C9B058(v42);
  v47 = objc_msgSend_baseFontName(a2, v44, v45, v46);
  sub_275CB7944(v49, v43, v47);
  sub_275CAF624((a1 + 256), v49);
  sub_275CB7E48(v49);
  return a1;
}

void sub_275CA3038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275CB7E48(va);
  sub_275CAE340(v3 + 44);
  sub_275CAE4B8(v3 + 38);
  sub_275CAF5D8((v3 + 33));
  sub_275C8D2AC(v3 + 27);
  v6 = v2[50];
  if (v6)
  {
    v2[51] = v6;
    operator delete(v6);
  }

  sub_275CAE5FC(v2 + 44);
  sub_275C8D2AC(v2 + 38);
  sub_275CAE758(v4);
  sub_275C8D2AC(v3);
  sub_275CB7E48(v2 + 7);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA30B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  sub_275CAE340((a1 + 560));
  sub_275CAE4B8((a1 + 512));
  sub_275CAF5D8(a1 + 472);
  sub_275C8D2AC((a1 + 424));
  v3 = *(a1 + 400);
  if (v3)
  {
    *(a1 + 408) = v3;
    operator delete(v3);
  }

  sub_275CAE5FC((a1 + 352));
  sub_275C8D2AC((a1 + 304));
  sub_275CAE758((a1 + 256));
  sub_275C8D2AC((a1 + 208));
  sub_275CB7E48(a1 + 56);
  return a1;
}

unint64_t sub_275CA3150(void *a1)
{
  v1 = a1[37];
  if (v1)
  {
    return *(a1[33] + 8 * ((v1 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v1 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    return (a1 + 7);
  }
}

double sub_275CA31A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 296);
  if (v6)
  {
    v7 = *(*(a1 + 264) + 8 * ((v6 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v6 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v7 = a1 + 56;
  }

  v8 = objc_msgSend_operatorDictionary(*(a1 + 608), a2, a3, a4);
  v12 = objc_msgSend_operatorId(a2, v9, v10, v11);
  v13 = sub_275CA3338(a1, a2);
  v14 = sub_275CC8220(v8, v12, v13);
  if (v14)
  {
    v15 = v14;
    v19 = sub_275CBB138(v14, *(v7 + 24));
    if (v19 != 0.0)
    {
      v20 = *(a1 + 392) + *(a1 + 384) - 1;
      if (*(*(*(a1 + 360) + 8 * (v20 / 0x19)) + 160 * (v20 % 0x19) + 152) == 2)
      {
        if (v15[6] < 0)
        {
          v23 = *(v15 + 5);
        }

        else
        {
          v21 = objc_msgSend_fontManager(*(a1 + 608), v16, v17, v18);
          v22 = sub_275C9B058(v21);
          (*(*v22 + 48))(v22, 1);
        }

        v19 = v19 * v23;
      }
    }
  }

  else
  {
    v19 = 0.0;
  }

  return sub_275CA3458(a1, 10, a2, v19);
}

uint64_t sub_275CA3338(uint64_t a1, void *a2)
{
  v25 = 0;
  v4 = *(a1 + 616);
  v26 = a2;
  v27 = 15;
  sub_275C8D3A8(v4, v4 + 344, &v26, &v25);
  result = v25;
  if (!v25)
  {
    v9 = objc_msgSend_operatorId(a2, v5, v6, v7);
    v13 = objc_msgSend_operatorDictionary(*(a1 + 608), v10, v11, v12);
    result = sub_275CC82B8(v13, v9);
    v25 = result;
    if (!result)
    {
      v17 = objc_msgSend_operatorDictionary(*(a1 + 608), v14, v15, v16);
      v18 = sub_275CC8300(v17, v9);
      v19 = *(a1 + 248);
      if (v19)
      {
        v19 = *(*(*(a1 + 216) + (((v19 + *(a1 + 240) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v19 + *(a1 + 240) - 1) & 0x1FF));
      }

      v20 = v19 & v18;
      if ((v18 & 8) != 0)
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      if ((v18 & 2) != 0)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      if ((v20 & 4) != 0)
      {
        v23 = 2;
      }

      else
      {
        v23 = v22;
      }

      if ((v20 & 8) != 0)
      {
        v24 = 3;
      }

      else
      {
        v24 = v23;
      }

      if ((v20 & 2) != 0)
      {
        return 1;
      }

      else
      {
        return v24;
      }
    }
  }

  return result;
}

uint64_t sub_275CA342C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_fontManager(*(a1 + 608), a2, a3, a4);

  return sub_275C9B058(v4);
}

double sub_275CA3458(void *a1, int a2, uint64_t a3, double a4)
{
  LODWORD(v10) = 1;
  *(&v10 + 1) = 0;
  v11 = a3;
  v6 = a1[77];
  v12 = a2;
  if (sub_275CAF228(v6, v6 + 32, &v11, &v10))
  {
    v7 = a1[37];
    if (v7)
    {
      v8 = *(a1[33] + 8 * ((v7 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v7 + a1[36] - 1) % 0x1AuLL);
    }

    else
    {
      v8 = (a1 + 7);
    }

    return sub_275CBB0A0(&v10, v8, a4);
  }

  return a4;
}

double sub_275CA3514(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 296);
  if (v6)
  {
    v7 = *(*(a1 + 264) + 8 * ((v6 + *(a1 + 288) - 1) / 0x1AuLL)) + 152 * ((v6 + *(a1 + 288) - 1) % 0x1AuLL);
  }

  else
  {
    v7 = a1 + 56;
  }

  v8 = objc_msgSend_operatorDictionary(*(a1 + 608), a2, a3, a4);
  v12 = objc_msgSend_operatorId(a2, v9, v10, v11);
  v13 = sub_275CA3338(a1, a2);
  v14 = sub_275CC8220(v8, v12, v13);
  if (v14)
  {
    v15 = v14;
    v19 = sub_275CBB138((v14 + 2), *(v7 + 24));
    if (v19 != 0.0)
    {
      v20 = *(a1 + 392) + *(a1 + 384) - 1;
      if (*(*(*(a1 + 360) + 8 * (v20 / 0x19)) + 160 * (v20 % 0x19) + 152) == 2)
      {
        if (v15[6] < 0)
        {
          v23 = *(v15 + 5);
        }

        else
        {
          v21 = objc_msgSend_fontManager(*(a1 + 608), v16, v17, v18);
          v22 = sub_275C9B058(v21);
          (*(*v22 + 48))(v22, 1);
        }

        v19 = v19 * v23;
      }
    }
  }

  else
  {
    v19 = 0.0;
  }

  return sub_275CA3458(a1, 11, a2, v19);
}

CGPath *sub_275CA36B0(void *a1, void *a2, int a3)
{
  Mutable = CGPathCreateMutable();
  objc_msgSend_width(a2, v7, v8, v9);
  v11 = v10;
  objc_msgSend_vsize(a2, v12, v13, v14);
  v16 = v15.n128_f64[0];
  v17 = a1[37];
  if (v17)
  {
    v18 = *(a1[33] + 8 * ((v17 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v17 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v18 = (a1 + 7);
  }

  v19 = *(v18 + 88);
  if (*(v18 + 120))
  {
    v15.n128_u64[0] = *(v18 + 128);
  }

  else
  {
    v15.n128_f64[0] = sub_275CB80C0(v18);
  }

  v20 = (*(*v19 + 40))(v19, 24, v18 + 8, v15);
  v21 = v20;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v26 = v11 * 0.5;
      CGPathMoveToPoint(Mutable, 0, v26, -v20);
      v23 = v16 + v21;
      v24 = Mutable;
      v22 = v26;
      goto LABEL_16;
    }

    if (a3 == 4)
    {
      v25 = v16 * 0.5;
      CGPathMoveToPoint(Mutable, 0, -v20, v25);
      v22 = v11 + v21;
      v24 = Mutable;
      v23 = v25;
      goto LABEL_16;
    }
  }

  else
  {
    if (a3 == 1)
    {
      CGPathMoveToPoint(Mutable, 0, -v20, v16 + v20);
      v22 = v11 + v21;
      v24 = Mutable;
      v23 = -v21;
      goto LABEL_16;
    }

    if (a3 == 2)
    {
      CGPathMoveToPoint(Mutable, 0, -v20, -v20);
      v22 = v11 + v21;
      v23 = v16 + v21;
      v24 = Mutable;
LABEL_16:
      CGPathAddLineToPoint(v24, 0, v22, v23);
    }
  }

  return Mutable;
}

id sub_275CA388C(uint64_t *a1, void *a2, void *a3, void *a4, void *a5, double *a6, BOOL *a7)
{
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  *a3 = 0;
  v27[3] = a3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  *a4 = 0;
  v26[3] = a4;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  *a5 = 0;
  v25[3] = a5;
  *a6 = 1.79769313e308;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  LODWORD(v19[0]) = 0;
  v11 = a1[77];
  v20 = a2;
  v21 = 7;
  v12 = sub_275C8D3A8(v11, v11 + 320, &v20, v19) ^ 1;
  if ((v19[0] & 0xFFFFFFFD) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  sub_275CA3B14(a1, 1, 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_275CA3BE0;
  v23[3] = &unk_27A677398;
  v23[4] = a2;
  v23[5] = v24;
  v23[6] = v27;
  v23[7] = v26;
  v23[8] = v25;
  v23[9] = a1;
  sub_275CA4030(a1, a2, 0, v13, 0, v23);
  sub_275CA3D74(a1, &v20);
  v14 = v20;
  if (v13 & 1 | ((*(a1[6] + 5) & 1) == 0))
  {
    v15 = 0;
  }

  else
  {
    v15 = (v22 & 0x1C00u) > 0x800;
  }

  *a7 = v15;
  sub_275C93D90(v19, 0, 0.0);
  if (sub_275C940E4(&v20, 1, v19))
  {
    *a6 = sub_275C93E84(v19, v14, v16, v17);
  }

  sub_275C93E08(v19);
  sub_275C93FE4(&v20);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v27, 8);
  return v14;
}

void sub_275CA3AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_275C93FE4(&a12);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Block_object_dispose((v29 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA3B14(void *a1, char a2, uint64_t a3)
{
  if ((a2 & 1) != 0 || (v4 = a1[49]) == 0)
  {
    sub_275CD21CC(v7, a3);
    sub_275CB15EC(a1 + 44, v7);
    return sub_275CD23FC(v7);
  }

  else
  {
    v5 = *(a1[45] + 8 * ((v4 + a1[48] - 1) / 0x19uLL)) + 160 * ((v4 + a1[48] - 1) % 0x19uLL);

    return sub_275CD2784(v5);
  }
}

void sub_275CA3BE0(void *a1, uint64_t a2)
{
  if (a1[4] == a2)
  {
    v3 = a1[9];
    v4 = v3[37];
    if (*(v3[6] + 4) == 1)
    {
      if (v4)
      {
        v5 = *(v3[33] + 8 * ((v4 + v3[36] - 1) / 0x1AuLL)) + 152 * ((v4 + v3[36] - 1) % 0x1AuLL);
      }

      else
      {
        v5 = (v3 + 7);
      }

      v7 = v3[4];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = @"Times New Roman";
      }

      v9 = CTFontCreateWithName(v8, *(v5 + 24), 0);
    }

    else
    {
      if (v4)
      {
        v6 = *(v3[33] + 8 * ((v4 + v3[36] - 1) / 0x1AuLL)) + 152 * ((v4 + v3[36] - 1) % 0x1AuLL);
      }

      else
      {
        v6 = (v3 + 7);
      }

      v9 = sub_275CB7EDC(v6);
    }

    *(*(a1[5] + 8) + 24) = v9;
    v10 = *(*(a1[5] + 8) + 24);
    if (v10)
    {
      **(*(a1[6] + 8) + 24) = CTFontGetAscent(v10);
      **(*(a1[7] + 8) + 24) = CTFontGetDescent(*(*(a1[5] + 8) + 24));
      **(*(a1[8] + 8) + 24) = CTFontGetLeading(*(*(a1[5] + 8) + 24));
      v11 = *(*(a1[5] + 8) + 24);

      CFRelease(v11);
    }
  }
}

void *sub_275CA3D74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_275C93F10(a2, 0);
  v5 = a1[49];
  if (v5)
  {
    v6 = *(a1[45] + 8 * ((v5 + a1[48] - 1) / 0x19uLL)) + 160 * ((v5 + a1[48] - 1) % 0x19uLL);
    if (*(v6 + 64))
    {
      return sub_275CD2794(v6);
    }

    else if (v5 == 1 || (*(v6 + 156) & 1) == 0)
    {
      sub_275CD2B00(v6, a1[5]);
      sub_275CD280C(v6, v8);
      sub_275C93FE8(a2, v8);
      sub_275C93FE4(v8);
      return sub_275CB1880(a1 + 44);
    }

    else
    {
      sub_275CD236C(v8, v6);
      sub_275CB1880(a1 + 44);
      v7 = a1[49] + a1[48] - 1;
      sub_275CD25D0(*(a1[45] + 8 * (v7 / 0x19)) + 160 * (v7 % 0x19), v8);
      return sub_275CD23FC(v8);
    }
  }

  return result;
}

void sub_275CA3EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_275C93FE4(&a9);
  sub_275C93FE4(v9);
  _Unwind_Resume(a1);
}

void *sub_275CA3EF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a1[37];
  if (v4)
  {
    v5 = *(a1[33] + 8 * ((v4 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v4 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v5 = (a1 + 7);
  }

  return sub_275CA3F54(a1, a2, 0, *(v5 + 16), 0, 0, a3, a4);
}

void *sub_275CA3F54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_275CA3B14(a1, 1, 0);
  v16 = a1[49] + a1[48] - 1;
  *(*(a1[45] + 8 * (v16 / 0x19)) + 160 * (v16 % 0x19) + 152) = a5;
  sub_275CA4030(a1, a2, a3, a4, a6, a7);

  return sub_275CA3D74(a1, a8);
}

uint64_t sub_275CA4030(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v50 = a2;
  v11 = a1[37] + a1[36] - 1;
  v12 = *(a1[33] + 8 * (v11 / 0x1A));
  if (a6)
  {
    sub_275CB02AC(a1 + 38, &v49);
  }

  LODWORD(v46[0]) = 0;
  v13 = a1[77];
  v47 = a2;
  v48 = 8;
  sub_275C8D3A8(v13, v13 + 8, &v47, v46);
  if (LODWORD(v46[0]) == 2)
  {
    a4 = 1;
  }

  else if (LODWORD(v46[0]) == 1)
  {
    a4 = 0;
  }

  v17 = sub_275CA51B0(a1, v14, v15, v16);
  v18 = v17;
  v20 = a1[51];
  v19 = a1[52];
  if (v20 >= v19)
  {
    v22 = a1[50];
    v23 = (v20 - v22) >> 3;
    if ((v23 + 1) >> 61)
    {
      sub_275C8D77C();
    }

    v44 = v12;
    v45 = a5;
    v24 = v19 - v22;
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      sub_275CB0934((a1 + 50), v26);
    }

    v27 = a3;
    v28 = v17;
    v29 = (8 * v23);
    *v29 = a2;
    v21 = 8 * v23 + 8;
    v30 = a1[50];
    v31 = a1[51] - v30;
    v32 = v29 - v31;
    memcpy(v29 - v31, v30, v31);
    v33 = a1[50];
    a1[50] = v32;
    a1[51] = v21;
    a1[52] = 0;
    if (v33)
    {
      operator delete(v33);
    }

    v18 = v28;
    a5 = v45;
    a3 = v27;
    v12 = v44;
  }

  else
  {
    *v20 = a2;
    v21 = (v20 + 1);
  }

  a1[51] = v21;
  sub_275CB7DAC(&v47, a1, v12 + 152 * (v11 % 0x1A), a2, a3, a4, a5);
  sub_275CAF624(a1 + 32, &v47);
  sub_275CB7E48(&v47);
  v36 = sub_275CA524C(a1, a2, v34, v35);
  if (v36)
  {
    sub_275CB097C(a1 + 53, &v50);
  }

  sub_275CC6C88(&v47);
  *&v46[0] = v50;
  v37 = sub_275CAFE50(a1 + 59, v46);
  if (v37)
  {
    sub_275CA52C8(a1, (v37 + 3), v46);
    sub_275CC6CB0(&v47, v46);
  }

  else
  {
    if (v50)
    {
      objc_msgSend_layoutSchemata(v50, v38, v39, v40);
    }

    else
    {
      memset(v46, 0, sizeof(v46));
    }

    sub_275CC6CB0(&v47, v46);
  }

  sub_275CC6C4C(v46);
  if (v36)
  {
    v41 = v50;
  }

  else
  {
    v41 = 0;
  }

  sub_275CA53F0(a1, &v47, v18, v41);
  v42 = a1[43];
  if (v42)
  {
    (*(*(*(a1[39] + (((v42 + a1[42] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v42 + a1[42] - 1) & 0x1FF)) + 16))();
  }

  if (v36)
  {
    --a1[58];
    sub_275C8DF70(a1 + 53, 1);
  }

  sub_275CAFD20(a1 + 32);
  a1[51] -= 8;
  if (v49)
  {
    --a1[43];
    sub_275C8DF70(a1 + 38, 1);
  }

  return sub_275CC6C4C(&v47);
}

void sub_275CA4364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_275CC6C4C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA43AC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[37];
  if (v3)
  {
    v4 = *(a1[33] + 8 * ((v3 + a1[36] - 1) / 0x1AuLL)) + 152 * ((v3 + a1[36] - 1) % 0x1AuLL);
  }

  else
  {
    v4 = (a1 + 7);
  }

  return sub_275CA4030(a1, a2, 0, *(v4 + 16), 0, a3);
}

uint64_t sub_275CA440C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_275CA3B14(a1, 1, 0);
  sub_275CA4030(a1, a3, a4, a5, 0, a6);
  v12 = a1[49];
  if (v12)
  {
    sub_275CD236C(v15, *(a1[45] + 8 * ((v12 + a1[48] - 1) / 0x19uLL)) + 160 * ((v12 + a1[48] - 1) % 0x19uLL));
    sub_275CD2400(a2, v15);
    sub_275CD23FC(v15);
    sub_275CD2B00(a2, a1[5]);
    sub_275CD2DA4(a2);
  }

  sub_275CA3D74(a1, v14);
  return sub_275C93FE4(v14);
}

void sub_275CA4518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_275CD23FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA452C(uint64_t result, double a2)
{
  if (a2 != 0.0)
  {
    v3 = result;
    v4 = [EQKitHSpace alloc];
    v8 = objc_msgSend_initWithWidth_(v4, v5, v6, v7, a2);
    sub_275C93F10(v11, v8);
    sub_275C940AC(v11, 1);
    sub_275C940CC(v11, 6);
    sub_275C93F58(v10, v11);
    sub_275CA45F8(v3, v10, 0, v9);
    sub_275C93FE4(v10);

    return sub_275C93FE4(v11);
  }

  return result;
}

void sub_275CA45D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_275C93FE4(&a9);
  sub_275C93FE4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_275CA45F8(uint64_t result, uint64_t a2, const char *a3, uint64_t a4)
{
  if (!*(result + 392))
  {
    return result;
  }

  v6 = result;
  v7 = *(a2 + 32);
  v8 = (v7 >> 4) & 3;
  if (v8 <= 1)
  {
    if (v8)
    {
      v9 = 31;
    }

    else
    {
      v9 = 30;
    }

    goto LABEL_9;
  }

  if (v8 == 2)
  {
    v9 = 32;
LABEL_9:
    sub_275CAC500(result, v9, a3, a4);
    v11 = v10;
    LOWORD(v7) = *(a2 + 32);
    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:
  v12 = v7 >> 6;
  if (v12 <= 1)
  {
    if (v12)
    {
      v13 = 31;
    }

    else
    {
      v13 = 30;
    }

    goto LABEL_17;
  }

  v14 = 0;
  if (v12 == 2)
  {
    v13 = 32;
LABEL_17:
    sub_275CAC500(v6, v13, a3, a4);
  }

  *(a2 + 40) = v11;
  *(a2 + 48) = v14;
  v15 = v6[49] + v6[48] - 1;
  v16 = *(v6[45] + 8 * (v15 / 0x19)) + 160 * (v15 % 0x19);

  return sub_275CD2428(v16, a3, a2, a4);
}

void *sub_275CA471C(void *result, double a2)
{
  v3 = result;
  v4 = result[49];
  if (v4)
  {
    v5 = *(result[45] + 8 * ((v4 + result[48] - 1) / 0x19uLL)) + 160 * ((v4 + result[48] - 1) % 0x19uLL);
    v6 = *(v5 + 144);
    v7 = fmax(a2 - v6, 0.0);
    if (v6 > 0.0)
    {
      a2 = v7;
    }

    *(v5 + 144) = 0;
  }

  if (a2 != 0.0)
  {
    v8 = [EQKitHSpace alloc];
    v12 = objc_msgSend_initWithWidth_(v8, v9, v10, v11, a2);
    sub_275C93F10(v15, v12);
    sub_275C940AC(v15, 1);
    sub_275C940CC(v15, 6);
    sub_275C93F58(v14, v15);
    sub_275CA45F8(v3, v14, 0, v13);
    sub_275C93FE4(v14);

    return sub_275C93FE4(v15);
  }

  return result;
}

void sub_275CA482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_275C93FE4(&a9);
  sub_275C93FE4(&a16);
  _Unwind_Resume(a1);
}

void *sub_275CA4850(void *result, double a2)
{
  v3 = result;
  v4 = result[49];
  if (v4)
  {
    *(*(result[45] + 8 * ((v4 + result[48] - 1) / 0x19uLL)) + 160 * ((v4 + result[48] - 1) % 0x19uLL) + 144) = a2;
  }

  if (a2 != 0.0)
  {
    v5 = [EQKitHSpace alloc];
    v9 = objc_msgSend_initWithWidth_(v5, v6, v7, v8, a2);
    sub_275C93F10(v12, v9);
    sub_275C940AC(v12, 1);
    sub_275C940CC(v12, 6);
    sub_275C93F58(v11, v12);
    sub_275CA45F8(v3, v11, 0, v10);
    sub_275C93FE4(v11);

    return sub_275C93FE4(v12);
  }

  return result;
}

void sub_275CA4948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_275C93FE4(&a9);
  sub_275C93FE4(&a16);
  _Unwind_Resume(a1);
}

void *sub_275CA496C(void *a1, void *a2, double a3, double a4)
{
  v21 = a2;
  v19 = a4;
  v20 = a3;
  v7 = sub_275CAFE50(a1 + 59, &v21);
  if (v7)
  {
    v8 = v7 + 2;
    if (*(v7 + 8) != 2)
    {
      return v8 + 1;
    }

    v10 = *(v7 + 5);
    v9 = *(v7 + 6);
    if (v10 >= a3 && v9 >= a4)
    {
      return v8 + 1;
    }

    if (v10 <= a3)
    {
      v10 = a3;
    }

    if (v9 <= a4)
    {
      v9 = a4;
    }

    v19 = v9;
    v20 = v10;
  }

  sub_275CA4A50(a1, v21, &v20, &v19);
  sub_275CB6328(v17, v21, 2, v20, v19, 0.0);
  v12 = sub_275CAFF3C(a1 + 59, &v21);
  if ((v13 & 1) == 0)
  {
    v14 = v18;
    v15 = v17[1];
    *(v12 + 3) = v17[0];
    *(v12 + 5) = v15;
    v12[7] = v14;
  }

  v8 = v12 + 2;
  return v8 + 1;
}