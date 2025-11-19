uint64_t Shape::TesteIntersection(double a1, double a2, double a3, int32x4_t a4, int32x4_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, float *a10, float *a11, float *a12, char a13)
{
  v13 = *(a7 + 64);
  v14 = *(a7 + 72);
  v15 = v13[5] + 32 * v14;
  v16 = *(v15 + 8);
  v17 = *(v15 + 12);
  v18 = *(a8 + 64);
  v19 = *(a8 + 72);
  v20 = v18[5] + 32 * v19;
  v21 = *(v20 + 8);
  v22 = *(v20 + 12);
  v23 = v13[7] + (v14 << 6);
  v24 = v18[7] + (v19 << 6);
  if (v16 >= v17)
  {
    v25 = v16;
  }

  else
  {
    v25 = v17;
  }

  if (v16 >= v17)
  {
    v26 = v17;
  }

  else
  {
    v26 = v16;
  }

  if (v21 >= v22)
  {
    v27 = v21;
  }

  else
  {
    v27 = v22;
  }

  if (v21 >= v22)
  {
    v28 = v22;
  }

  else
  {
    v28 = v21;
  }

  v29 = v13[11];
  v30 = *(v29 + 48 * v26 + 36);
  v31 = *(v29 + 48 * v25 + 36);
  v32 = v18[11];
  v33 = *(v32 + 48 * v28 + 36);
  v34 = *(v32 + 48 * v27 + 36);
  if (v30 >= v31)
  {
    if (v33 >= v34)
    {
      if (v31 > v33 || v30 < v34)
      {
        return 0;
      }
    }

    else if (v30 < v33 || v31 > v34)
    {
      return 0;
    }
  }

  else if (v33 >= v34)
  {
    if (v30 > v33 || v31 < v34)
    {
      return 0;
    }
  }

  else if (v31 < v33 || v30 > v34)
  {
    return 0;
  }

  v39 = vcvtq_f64_f32(*(v23 + 4));
  v40 = vcvtq_f64_f32(*(v24 + 4));
  a4.i32[0] = v16;
  a5.i32[0] = v17;
  v41 = vdupq_lane_s32(*&vcgtq_s32(a5, a4), 0);
  v42 = vnegq_f64(v39);
  v43 = vbslq_s8(v41, v39, v42);
  LODWORD(v39.f64[0]) = v21;
  v42.i32[0] = v22;
  v44 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v42, v39), 0), v40, vnegq_f64(v40));
  v45 = -*&v43.i64[1];
  if (-*&v43.i64[1] * *v44.i64 + *v43.i64 * *&v44.i64[1] <= 0.0)
  {
    return 0;
  }

  if (v13 == v18 && v26 == v28)
  {
    if (v25 != v27)
    {
      *a9 = v30;
      *a10 = *(v29 + 48 * v26 + 40);
      *a11 = -1.0;
      *a12 = -1.0;
      return 1;
    }

    return 0;
  }

  if (v25 == v27)
  {
    a13 = 1;
  }

  if (v13 == v18 && (a13 & 1) != 0)
  {
    return 0;
  }

  v48 = v29 + 48 * v16;
  v49 = v32 + 48 * v21;
  v50 = *(v48 + 36);
  v51 = *(v48 + 40);
  v52 = *(v49 + 36);
  v53 = *(v49 + 40);
  v54 = v29 + 48 * v17;
  v55 = *(v54 + 36);
  v56 = *v44.i64 * (v51 - v53) - *&v44.i64[1] * (v50 - v52);
  v57 = *v44.i64 * (*(v54 + 40) - v53) - *&v44.i64[1] * (v55 - v52);
  v58 = (v53 - v51);
  v59 = v32 + 48 * v22;
  v60 = *(v59 + 36);
  v61 = v45 * (v52 - v50) + *v43.i64 * v58;
  v62 = v45 * (v60 - v50) + *v43.i64 * (*(v59 + 40) - v51);
  if ((v56 < 0.0 || v57 < 0.0) && (v56 > 0.0 || v57 > 0.0))
  {
    if ((v61 < 0.0 || v62 < 0.0) && (v61 > 0.0 || v62 > 0.0))
    {
      if (*(v23 + 48) <= *(v24 + 48))
      {
        v70 = v56 - v57;
        v71 = (v56 * v55 - v57 * v50) / (v56 - v57);
        *a9 = v71;
        v69 = (v56 * *(v29 + 48 * v17 + 40) - v57 * *(v29 + 48 * v16 + 40)) / (v56 - v57);
        v67 = v61 - v62;
      }

      else
      {
        v67 = v61 - v62;
        v68 = (v61 * v60 - v62 * v52) / (v61 - v62);
        *a9 = v68;
        v69 = (v61 * *(v32 + 48 * v22 + 40) - v62 * *(v32 + 48 * v21 + 40)) / (v61 - v62);
        v70 = v56 - v57;
      }

      v72 = v69;
      *a10 = v72;
      v73 = v56 / v70;
      *a11 = v73;
      v63 = v61 / v67;
      goto LABEL_59;
    }

    if (v61 == 0.0)
    {
LABEL_66:
      if (v21 >= v22)
      {
        return 0;
      }

      goto LABEL_67;
    }

    if (v62 == 0.0)
    {
      if (v21 <= v22)
      {
        return 0;
      }

      goto LABEL_79;
    }

    if (v16 < v17 && v61 > 0.0 && v62 > 0.0)
    {
      if (v61 >= v62)
      {
        if (v22 < v21)
        {
          goto LABEL_79;
        }
      }

      else if (v21 < v22)
      {
LABEL_67:
        *a9 = v52;
        *a10 = *(v32 + 48 * v21 + 40);
        *a12 = 0.0;
LABEL_80:
        v66 = v56 / (v56 - v57);
        *a11 = v66;
        return 1;
      }
    }

    result = 0;
    if (v61 >= 0.0)
    {
      return result;
    }

    if (v62 >= 0.0 || v17 >= v16)
    {
      return result;
    }

    if (v61 > v62)
    {
      goto LABEL_66;
    }

    if (v22 >= v21)
    {
      return 0;
    }

LABEL_79:
    *a9 = v60;
    *a10 = *(v32 + 48 * v22 + 40);
    *a12 = 1.0;
    goto LABEL_80;
  }

  if (v56 == 0.0)
  {
    goto LABEL_53;
  }

  if (v57 == 0.0)
  {
    if (v16 <= v17)
    {
      return 0;
    }

    goto LABEL_57;
  }

  if (v56 > 0.0 && v57 > 0.0 && v22 < v21)
  {
    if (v56 >= v57)
    {
      if (v17 < v16)
      {
        goto LABEL_57;
      }
    }

    else if (v16 < v17)
    {
LABEL_54:
      *a9 = v50;
      *a10 = *(v29 + 48 * v16 + 40);
      *a11 = 0.0;
LABEL_58:
      v63 = v61 / (v61 - v62);
LABEL_59:
      v64 = v63;
      *a12 = v64;
      return 1;
    }
  }

  result = 0;
  if (v21 < v22 && v56 < 0.0 && v57 < 0.0)
  {
    if (v56 > v57)
    {
LABEL_53:
      if (v16 >= v17)
      {
        return 0;
      }

      goto LABEL_54;
    }

    if (v17 >= v16)
    {
      return 0;
    }

LABEL_57:
    *a9 = v55;
    *a10 = *(v29 + 48 * v17 + 40);
    *a11 = 1.0;
    goto LABEL_58;
  }

  return result;
}

uint64_t Shape::PushIncidence(Shape *this, Shape *a2, int a3, int a4, float a5)
{
  if (a5 < 0.0 || a5 > 1.0)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(this + 38);
  if (result >= *(this + 39))
  {
    v13 = (2 * result) | 1;
    *(this + 39) = v13;
    v14 = malloc_type_realloc(*(this + 20), 12 * v13, 0x10000403E1C8BA9uLL);
    *(this + 20) = v14;
    if (!v14)
    {
      TSUSetCrashReporterInfo();
      v17 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "int Shape::PushIncidence(Shape *, int, int, float)", "int Shape::PushIncidence(Shape *, int, int, float)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm", 1564);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweep.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v19, v21, 1564, 1, "Unable to allocate memory.");

      TSUCrashBreakpoint();
      abort();
    }

    v12 = v14;
    result = *(this + 38);
  }

  else
  {
    v12 = *(this + 20);
  }

  *(this + 38) = result + 1;
  v15 = *(a2 + 8) + 56 * a3;
  v16 = &v12[12 * result];
  *v16 = *(v15 + 8);
  *(v16 + 1) = a4;
  *(v16 + 2) = a5;
  *(v15 + 8) = result;
  return result;
}

uint64_t Shape::CreateIncidence(Shape *this, Shape *a2, int a3, int a4)
{
  v4 = *(a2 + 7) + (a3 << 6);
  v5 = (*(this + 3) + 28 * a4);
  v6 = *(a2 + 11) + 48 * *(*(a2 + 5) + 32 * a3 + 8);
  v7 = *(v4 + 32) * (*(v4 + 8) * (v5[1] - *(v6 + 40)) + (*v5 - *(v6 + 36)) * *(v4 + 4));
  return Shape::PushIncidence(this, a2, a3, a4, v7);
}

uint64_t Shape::Winding(Shape *this, int a2)
{
  v2 = *(*(this + 11) + 48 * a2 + 32);
  if ((v2 & 0x80000000) != 0)
  {
    return 0;
  }

  if (v2 > *(this + 9))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 5) + 32 * v2;
  v5 = *(this + 9) + 32 * v2;
  if (*(v4 + 8) >= *(v4 + 12))
  {
    return *(v5 + 20);
  }

  else
  {
    return *(v5 + 16);
  }
}

uint64_t Shape::Winding(Shape *this, float a2, float a3)
{
  v3 = *(this + 8);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(this + 11);
    v8 = (*(this + 5) + 12);
    for (i = (*(this + 7) + 8); ; i += 16)
    {
      v10 = v7 + 48 * *(v8 - 1);
      v11 = *(v10 + 36);
      v12 = *(v10 + 40);
      v13 = v7 + 48 * *v8;
      v15 = *(v13 + 36);
      v14 = *(v13 + 40);
      v16 = *(i - 2);
      if (v11 >= v15)
      {
        if (v11 < a2 || v15 > a2)
        {
          goto LABEL_39;
        }
      }

      else if (v11 > a2 || v15 < a2)
      {
        goto LABEL_39;
      }

      if (v11 == a2)
      {
        if (v12 < a3 && v15 != a2)
        {
          if (v15 >= a2)
          {
            v20 = *(i - 2);
          }

          else
          {
            v20 = 0;
          }

          if (v15 >= a2)
          {
            v16 = 0;
          }

          v6 -= v20;
          v5 += v16;
        }
      }

      else if (v15 == a2)
      {
        if (v14 < a3)
        {
          if (v11 >= a2)
          {
            v21 = *(i - 2);
          }

          else
          {
            v21 = 0;
          }

          v6 += v21;
          if (v11 >= a2)
          {
            v16 = 0;
          }

          v5 -= v16;
        }
      }

      else if (v12 >= v14)
      {
        if (v14 < a3)
        {
LABEL_38:
          v22 = *(i - 1) * (a3 - v12) - (a2 - v11) * *i;
          if (v22 != 0.0)
          {
            if (v22 >= 0.0)
            {
              if (v11 < a2)
              {
                v4 -= v16;
              }
            }

            else if (v11 > a2)
            {
              v4 += v16;
            }
          }
        }
      }

      else if (v12 < a3)
      {
        goto LABEL_38;
      }

LABEL_39:
      v8 += 8;
      if (!--v3)
      {
        return (v4 + (v5 + v6) / 2);
      }
    }
  }

  return 0;
}

unsigned int *Shape::AssemblePoints(unsigned int *this, Shape *a2)
{
  v2 = this[4];
  if (v2 >= 1)
  {
    v4 = this;
    this = Shape::AssemblePoints(this, 0, v2);
    v5 = *(a2 + 8);
    if (v5 >= 1)
    {
      v6 = *(v4 + 11);
      v7 = (*(a2 + 8) + 16);
      do
      {
        v8 = *(v6 + 48 * *v7 + 4);
        *(v7 - 1) = *(v6 + 48 * *(v7 - 1) + 4);
        *v7 = v8;
        v7 += 14;
        --v5;
      }

      while (v5);
    }

    v9 = v4[38];
    if (v9 >= 1)
    {
      v10 = *(v4 + 11);
      v11 = (*(v4 + 20) + 4);
      do
      {
        *v11 = *(v10 + 48 * *v11 + 4);
        v11 += 3;
        --v9;
      }

      while (v9);
    }

    v4[4] = this;
  }

  return this;
}

uint64_t Shape::TesteIntersection(Shape *this, Shape *a2, Shape *a3, int a4, int a5, float *a6, float *a7, float *a8, float *a9, BOOL a10)
{
  v10 = *(a2 + 5) + 32 * a4;
  v11 = *(v10 + 8);
  v12 = *(a3 + 5) + 32 * a5;
  v13 = *(v12 + 8);
  v14 = *(v12 + 12);
  if (v11 == v13 || v11 == v14)
  {
    return 0;
  }

  v16 = *(v10 + 12);
  if (v16 == v13 || v16 == v14)
  {
    return 0;
  }

  v18 = *(a2 + 11);
  v19 = *(v18 + 48 * v11 + 36);
  v20 = *(v18 + 48 * v16 + 36);
  v21 = *(a3 + 11);
  v22 = *(v21 + 48 * v13 + 36);
  v23 = *(v21 + 48 * v14 + 36);
  *v24.f32 = v19;
  *&v24.u32[2] = v22;
  *v25.f32 = v20;
  *&v25.u32[2] = v23;
  v26 = vcgtq_f32(v24, v25);
  v27 = vmovn_s32(v26);
  *v28.i8 = v23;
  v28.u64[1] = v20;
  *v29.i8 = v22;
  v29.u64[1] = v19;
  if (vmaxv_u16(vmovn_s32(vcgtq_f32(vbslq_s8(vmovl_s16(vext_s8(v27, v27, 4uLL)), v28, v29), vbslq_s8(v26, v24, v25)))))
  {
    return 0;
  }

  v30 = *(a2 + 7) + (a4 << 6);
  v31 = *(v30 + 4);
  v32 = *(v30 + 8);
  v33 = *(a3 + 7) + (a5 << 6);
  v34 = *(v33 + 8);
  v35 = *(v33 + 4);
  v36 = vsub_f32(v20, v22);
  v37 = v35 * (v19.f32[1] - v22.f32[1]) - v34 * vsub_f32(v19, v22).f32[0];
  v38 = v35 * v36.f32[1] - v34 * v36.f32[0];
  if (v37 >= 0.0 && v38 >= 0.0)
  {
    return 0;
  }

  if (v37 <= 0.0 && v38 <= 0.0)
  {
    return 0;
  }

  v39 = v31;
  v40 = v32;
  v41 = vsub_f32(v23, v19);
  v42 = v31 * (v22.f32[1] - v19.f32[1]) - v40 * vsub_f32(v22, v19).f32[0];
  v43 = v39 * v41.f32[1] - v40 * v41.f32[0];
  if (v42 >= 0.0 && v43 >= 0.0)
  {
    return 0;
  }

  if (v42 <= 0.0 && v43 <= 0.0)
  {
    return 0;
  }

  v45 = v42 - v43;
  v46 = v37 - v38;
  v47 = -(v42 - v43);
  if (v42 - v43 >= 0.0)
  {
    v47 = v42 - v43;
  }

  v48 = -v46;
  if (v46 >= 0.0)
  {
    v48 = v37 - v38;
  }

  if (v47 <= v48)
  {
    v51 = (v37 * v20.f32[0] - v38 * v19.f32[0]) / v46;
    *a6 = v51;
    v50 = (v37 * *(v18 + 48 * v16 + 40) - v38 * *(v18 + 48 * v11 + 40)) / v46;
  }

  else
  {
    v49 = (v42 * v23.f32[0] - v43 * v22.f32[0]) / v45;
    *a6 = v49;
    v50 = (v42 * *(v21 + 48 * v14 + 40) - v43 * *(v21 + 48 * v13 + 40)) / v45;
  }

  v52 = v50;
  *a7 = v52;
  v53 = v37 / v46;
  *a8 = v53;
  v54 = v42 / v45;
  *a9 = v54;
  return 1;
}

BOOL Shape::TesteAdjacency(Shape *this, Shape *a2, int a3, float a4, float a5, int a6, int a7)
{
  v7 = *(a2 + 8) + 56 * a3;
  if (*(v7 + 12) == a6)
  {
    return 0;
  }

  if (*(v7 + 16) == a6)
  {
    return 0;
  }

  v13 = *(a2 + 11) + 48 * *(*(a2 + 5) + 32 * a3 + 8);
  v14 = *(a2 + 7) + (a3 << 6);
  v15 = *(v14 + 4);
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = a4 - *(v13 + 36);
  v19 = a5 - *(v13 + 40);
  v20 = *(v14 + 32);
  v21 = (v15 * v19 - v18 * v16) * *(v14 + 40);
  if (fabsf(ldexpf(v21, 5)) >= 3.0)
  {
    return 0;
  }

  v22 = ldexpf(0.505, -5);
  v23 = v18 - v22;
  v24 = v19 - v22;
  v25 = v18 + v22;
  v26 = v19 + v22;
  v27 = -(v23 * v16);
  v28 = v27 + v15 * v24;
  v29 = -(v25 * v16);
  v30 = v29 + v15 * v26;
  if (v28 < 0.0 && v30 > 0.0 || v28 > 0.0 && v30 < 0.0 || (v31 = v29 + v15 * v24, v32 = v27 + v15 * v26, v31 < 0.0) && v32 > 0.0 || (result = 0, v31 > 0.0) && v32 < 0.0)
  {
    v34 = v19 * v16 + v18 * v15;
    result = v34 < v17 && v34 > 0.0;
    if (result && a7 != 0)
    {
      v36 = v20 * v34;
      Shape::PushIncidence(this, a2, a3, a6, v36);
      return 1;
    }
  }

  return result;
}

uint64_t Shape::Validate(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  if (v2 >= 1)
  {
    v3 = *(this + 24);
    v4 = (*(this + 88) + 36);
    do
    {
      v5 = *v3;
      v3 = (v3 + 28);
      *v4 = v5;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  v6 = *(this + 32);
  if (v6 >= 1)
  {
    v7 = *(this + 40);
    v8 = (*(this + 56) + 4);
    v9 = *(this + 32);
    do
    {
      v10 = *v7;
      v7 += 4;
      *v8 = v10;
      v8 += 8;
      --v9;
    }

    while (v9);
    v11 = 0;
    do
    {
      v12 = v11++;
      if (v11 < v6)
      {
        v13 = v11;
        do
        {
          v16 = 0;
          this = Shape::TesteIntersection(this, v1, v1, v12, v13, &v16 + 1, &v16, &v15, &v14, 0);
          if (this)
          {
            this = printf("%i %i  %f %f \n", v12, v13, *(&v16 + 1), *&v16);
            v6 = *(v1 + 8);
          }

          ++v13;
        }

        while (v13 < v6);
      }
    }

    while (v11 < v6);
  }

  return this;
}

void Shape::Avance(uint64_t a1, signed int a2, int a3, Shape *a4, int a5, uint64_t a6, Shape *a7, int a8)
{
  v15 = ldexpf(1.0, -5);
  v17 = a4 != a7 || (a8 & 0xFFFFFFFE) != 2;
  v18 = *(a4 + 8);
  v19 = a5;
  v20 = (v18 + 56 * a5);
  if (v20[12] < a3)
  {
    v21 = v15;
    v23 = v20[6];
    v22 = v20[7];
    v24 = v20[11];
    v25 = (v24 & 0x80000000) == 0 && (v15 + *(*(a1 + 24) + 28 * v24 + 4)) == *(*(a1 + 24) + 28 * a3 + 4);
    v26 = *(a4 + 7) + (a5 << 6);
    v27 = *(v26 + 8);
    v28 = v27 <= 0.0;
    if (v27 == 0.0)
    {
      if (*(v26 + 4) >= 0.0)
      {
        if (v23 <= v22)
        {
          do
          {
            Shape::DoEdgeTo(a1, a4, a5, v23++, v17, 1);
          }

          while (v22 + 1 != v23);
          goto LABEL_39;
        }
      }

      else if (v23 <= v22)
      {
        do
        {
          Shape::DoEdgeTo(a1, a4, a5, v23++, v17, 0);
        }

        while (v22 + 1 != v23);
LABEL_39:
        v24 = v22;
      }

LABEL_100:
      v18 = *(a4 + 8);
      v19 = a5;
      *(v18 + 56 * a5 + 44) = v24;
      goto LABEL_101;
    }

    v29 = *(v26 + 4);
    if (v28)
    {
      if (v29 >= 0.0)
      {
        if (v22 < v23)
        {
          goto LABEL_100;
        }

        v74 = a2;
        v62 = 0;
        v76 = v22 + 1;
        do
        {
          v63 = v24;
          v24 = v22 + v62;
          if (v62)
          {
            v64 = 0;
          }

          else
          {
            v64 = v25;
          }

          if (v64 && (v65 = *(a1 + 24), v66 = *(v65 + 28 * v63), *(v65 + 28 * v22) == (v66 - v21)))
          {
            v67 = v22 < *(a1 + 16) && v76 < a2;
            if (v67 && *(v65 + 28 * v76) == v66)
            {
              Shape::DoEdgeTo(a1, a4, a5, v76, v17, 0);
            }

            v68 = a1;
            v69 = a4;
            v70 = a5;
            v71 = v22;
          }

          else
          {
            v68 = a1;
            v69 = a4;
            v70 = a5;
            v71 = v22 + v62;
          }

          Shape::DoEdgeTo(v68, v69, v70, v71, v17, 0);
          --v62;
        }

        while (v22 + v62 + 1 > v23);
LABEL_98:
        v24 = v23;
        goto LABEL_99;
      }

      if (v23 > v22)
      {
        goto LABEL_100;
      }

      v74 = a2;
      v40 = 0;
      v72 = v23 - 1;
      v42 = v23 < 1 || v23 <= a3;
      v77 = v42;
      do
      {
        v43 = v24;
        v24 = v23 + v40;
        if (v40)
        {
          v44 = 0;
        }

        else
        {
          v44 = v25;
        }

        if (v44 && (v45 = *(a1 + 24), v46 = *(v45 + 28 * v43), *(v45 + 28 * v23) == (v21 + v46)))
        {
          if (!v77 && *(v45 + 28 * v72) == v46)
          {
            Shape::DoEdgeTo(a1, a4, a5, v72, v17, 0);
          }

          v47 = a1;
          v48 = a4;
          v49 = a5;
          v50 = v23;
        }

        else
        {
          v47 = a1;
          v48 = a4;
          v49 = a5;
          v50 = v23 + v40;
        }

        Shape::DoEdgeTo(v47, v48, v49, v50, v17, 0);
        ++v40;
      }

      while (v22 - v23 + 1 != v40);
    }

    else
    {
      if (v29 < 0.0)
      {
        if (v22 < v23)
        {
          goto LABEL_100;
        }

        v74 = a2;
        v30 = 0;
        v75 = v22 + 1;
        do
        {
          v31 = v24;
          v24 = v22 + v30;
          if (v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v25;
          }

          if (v32 && (v33 = *(a1 + 24), v34 = *(v33 + 28 * v31), *(v33 + 28 * v22) == (v34 - v21)))
          {
            v35 = v22 < *(a1 + 16) && v75 < a2;
            if (v35 && *(v33 + 28 * v75) == v34)
            {
              Shape::DoEdgeTo(a1, a4, a5, v75, v17, 1);
            }

            v36 = a1;
            v37 = a4;
            v38 = a5;
            v39 = v22;
          }

          else
          {
            v36 = a1;
            v37 = a4;
            v38 = a5;
            v39 = v22 + v30;
          }

          Shape::DoEdgeTo(v36, v37, v38, v39, v17, 1);
          --v30;
        }

        while (v22 + v30 + 1 > v23);
        goto LABEL_98;
      }

      if (v23 > v22)
      {
        goto LABEL_100;
      }

      v74 = a2;
      v51 = 0;
      v73 = v23 - 1;
      v53 = v23 < 1 || v23 <= a3;
      v78 = v53;
      do
      {
        v54 = v24;
        v24 = v23 + v51;
        if (v51)
        {
          v55 = 0;
        }

        else
        {
          v55 = v25;
        }

        if (v55 && (v56 = *(a1 + 24), v57 = *(v56 + 28 * v54), *(v56 + 28 * v23) == (v21 + v57)))
        {
          if (!v78 && *(v56 + 28 * v73) == v57)
          {
            Shape::DoEdgeTo(a1, a4, a5, v73, v17, 1);
          }

          v58 = a1;
          v59 = a4;
          v60 = a5;
          v61 = v23;
        }

        else
        {
          v58 = a1;
          v59 = a4;
          v60 = a5;
          v61 = v23 + v51;
        }

        Shape::DoEdgeTo(v58, v59, v60, v61, v17, 1);
        ++v51;
      }

      while (v22 - v23 + 1 != v51);
    }

    v24 = v22;
LABEL_99:
    a2 = v74;
    goto LABEL_100;
  }

LABEL_101:
  *(v18 + 56 * v19 + 48) = a2 - 1;
}

uint64_t Shape::DoEdgeTo(Shape *this, Shape *a2, int a3, unsigned int a4, int a5, int a6)
{
  v9 = a3;
  v10 = *(a2 + 8) + 56 * a3;
  v11 = *(v10 + 44);
  if (a6)
  {
    if (!a5)
    {
LABEL_3:
      v12 = a4;
      goto LABEL_6;
    }
  }

  else if (a5)
  {
    goto LABEL_3;
  }

  v12 = *(v10 + 44);
  v11 = a4;
LABEL_6:
  result = Shape::AddEdge(this, v12, v11);
  if ((result & 0x80000000) != 0)
  {
    *(*(a2 + 8) + 56 * v9 + 44) = a4;
  }

  else
  {
    if ((*(this + 53) & 2) != 0)
    {
      v15 = *(a2 + 12) + 16 * v9;
      v16 = *(this + 12);
      v14 = result;
      *(v16 + 16 * result) = *v15;
      v17 = *(a2 + 7) + (v9 << 6);
      if (*(v17 + 16) >= 0.00001)
      {
        v21 = *(v17 + 32);
        v22 = *(a2 + 11) + 48 * *(*(a2 + 5) + 32 * v9 + 8);
        v23 = (v22 + 36);
        v24 = *(v17 + 4);
        v25 = *(v17 + 8);
        v26 = *(this + 3);
        v27 = *(this + 5) + 32 * result;
        v28 = (v26 + 28 * *(v27 + 8));
        v29.i32[0] = *v28;
        v30.i32[0] = v28[1];
        v31 = (v26 + 28 * *(v27 + 12));
        v32 = *(v15 + 8);
        v33 = *(v15 + 12);
        v29.i32[1] = *v31;
        v34 = (v22 + 40);
        v19 = (v16 + 16 * result);
        v35 = vld1_dup_f32(v23);
        v30.i32[1] = v31[1];
        v36 = vsub_f32(v29, v35);
        v37 = vld1_dup_f32(v34);
        v38 = vmul_n_f32(vmla_n_f32(vmul_n_f32(vsub_f32(v30, v37), v25), v36, v24), v21);
        __asm { FMOV            V1.2S, #1.0 }

        v20 = vmla_n_f32(vmul_n_f32(v38, v33), vsub_f32(_D1, v38), v32);
      }

      else
      {
        v18 = (v15 + 8);
        v19 = (v16 + 16 * result);
        v20 = vld1_dup_f32(v18);
      }

      v19[1] = v20;
    }

    else
    {
      v14 = result;
    }

    v44 = *(a2 + 8) + 56 * v9;
    v47 = *(v44 + 8);
    v45 = (v44 + 8);
    v46 = v47;
    v45[9] = a4;
    *(*(this + 8) + 56 * v14 + 8) = v47;
    if ((v47 & 0x80000000) == 0)
    {
      v48 = *(this + 11);
      do
      {
        v49 = v48 + 48 * v46;
        *(v49 + 32) = result;
        v46 = *(v49 + 16);
      }

      while ((v46 & 0x80000000) == 0);
    }

    *v45 = -1;
  }

  return result;
}

void sub_2767C0194(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_thumbnailImageDataForImageData_(v5, v6, v4);

  (*(*(a1 + 32) + 16))();
}

void sub_2767C2C88(uint64_t a1, CGContextRef c)
{
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextTranslateCTM(c, -*(a1 + 48), -*(a1 + 56));
  if (objc_msgSend_shouldDistortToFit(*(a1 + 32), v4, v5))
  {
    v6 = *(a1 + 64) / *(a1 + 96);
    v7 = *(a1 + 72) / *(a1 + 104);
    v8 = c;
  }

  else
  {
    v6 = *(a1 + 112);
    v8 = c;
    v7 = v6;
  }

  CGContextScaleCTM(v8, v6, v7);
  v9 = *(a1 + 136);
  *&v14.a = *(a1 + 120);
  *&v14.c = v9;
  *&v14.tx = *(a1 + 152);
  CGContextConcatCTM(c, &v14);
  CGContextSaveGState(c);
  objc_msgSend_drawInContext_(*(a1 + 40), v10, c);
  CGContextRestoreGState(c);
  if ((objc_msgSend_shouldNotAddContainedReps(*(a1 + 32), v11, v12) & 1) == 0)
  {
    CGContextSaveGState(c);
    objc_msgSend_recursivelyDrawChildrenInContext_keepingChildrenPassingTest_(*(a1 + 40), v13, c, 0);
    CGContextRestoreGState(c);
  }
}

void sub_2767C3B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2767C3B74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2767C3B8C(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v3, v7);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_2767C3C0C(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v3, v7);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_2767C3C8C(uint64_t a1)
{
  v2 = [TSDInfoCollectionSelectionHelper alloc];
  v5 = objc_msgSend_initWithInteractiveInfos_nonInteractiveInfos_(v2, v3, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
  objc_msgSend_setSelectionHelper_(*(a1 + 32), v4, v5);
}

uint64_t *sub_2767C3E04(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *(v1 + 64);
    v3 = *(v2 + 40) + 32 * *(v1 + 72);
    v5 = *(v3 + 8);
    v4 = *(v3 + 12);
    v6 = *(v2 + 88);
    if (v5 > v4)
    {
      v4 = v5;
    }

    --*(v6 + 48 * v4 + 8);
    *(v1 + 56) = 0;
  }

  v7 = result[1];
  if (v7)
  {
    v8 = *(v7 + 64);
    v9 = *(v8 + 40) + 32 * *(v7 + 72);
    v11 = *(v9 + 8);
    v10 = *(v9 + 12);
    v12 = *(v8 + 88);
    if (v11 > v10)
    {
      v10 = v11;
    }

    --*(v12 + 48 * v10 + 8);
    *(v7 + 48) = 0;
  }

  *result = 0;
  result[1] = 0;
  return result;
}

void *sub_2767C3E8C(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  v3 = malloc_type_malloc(40 * a2, 0x1020040EF90260EuLL);
  *(a1 + 16) = v3;
  if (!v3)
  {
    TSUSetCrashReporterInfo();
    v5 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "static void SweepEvent::CreateQueue(SweepEventQueue &, int)", "static void SweepEvent::CreateQueue(SweepEventQueue &, int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweepUtils.mm", 65);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweepUtils.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v7, v9, 65, 1, "Unable to allocate memory.");
    goto LABEL_6;
  }

  result = malloc_type_malloc(4 * *(a1 + 4), 0x100004052888210uLL);
  *(a1 + 8) = result;
  if (!result)
  {
    TSUSetCrashReporterInfo();
    v11 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "static void SweepEvent::CreateQueue(SweepEventQueue &, int)", "static void SweepEvent::CreateQueue(SweepEventQueue &, int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweepUtils.mm", 68);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweepUtils.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v14, v7, v9, 68, 1, "Unable to allocate memory.");
LABEL_6:

    TSUCrashBreakpoint();
    abort();
  }

  return result;
}

void sub_2767C4038(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    free(v3);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_2767C4078(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6, float a7)
{
  v7 = *a3;
  if (*a3 >= *(a3 + 4))
  {
    return 0;
  }

  *a3 = v7 + 1;
  v10 = *(a3 + 8);
  v9 = *(a3 + 16);
  result = v9 + 40 * v7;
  *(result + 16) = a4;
  *(result + 20) = a5;
  *(result + 24) = a6;
  *(result + 28) = a7;
  *result = a1;
  *(result + 8) = a2;
  *(a1 + 56) = result;
  *(a2 + 48) = result;
  v12 = *(a1 + 64);
  v13 = *(v12 + 40) + 32 * *(a1 + 72);
  v15 = *(v13 + 8);
  v14 = *(v13 + 12);
  v16 = *(v12 + 88);
  if (v15 > v14)
  {
    v14 = v15;
  }

  ++*(v16 + 48 * v14 + 8);
  v17 = *(a2 + 64);
  v18 = *(v17 + 40) + 32 * *(a2 + 72);
  v20 = *(v18 + 8);
  v19 = *(v18 + 12);
  if (v20 > v19)
  {
    v19 = v20;
  }

  v21 = *(v17 + 88) + 48 * v19;
  ++*(v21 + 8);
  *(result + 32) = v7;
  *(v10 + 4 * v7) = v7;
  if (v7 >= 1)
  {
    v22 = v7;
    do
    {
      v23 = v22 - 1;
      v24 = (v22 - 1) >> 1;
      v25 = *(v10 + 4 * v24);
      v26 = v9 + 40 * v25;
      v27 = *(v26 + 20);
      if (v27 <= a5 && (v27 != a5 || *(v26 + 16) <= a4))
      {
        break;
      }

      *(result + 32) = v24;
      *(v9 + 40 * v25 + 32) = v22;
      *(v10 + 4 * v24) = v7;
      *(v10 + 4 * v22) = v25;
      v22 = v23 >> 1;
    }

    while (v23 > 1);
  }

  return result;
}

void sub_2767C4188(uint64_t a1, int *a2)
{
  if (*a2 <= 1)
  {
    sub_2767C3E04(a1);
    *a2 = 0;
    return;
  }

  v3 = *(a1 + 32);
  v4 = *(*(a2 + 1) + 4 * v3);
  sub_2767C3E04(a1);
  v5 = *(a2 + 2);
  v6 = *a2 - 1;
  *a2 = v6;
  sub_2767C43BC((v5 + 40 * v6), a2, v4);
  v7 = *a2;
  if (v7 != v3)
  {
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = *(v8 + 4 * v7);
    v11 = v9 + 40 * v10;
    *(v11 + 32) = v3;
    v12 = (v11 + 32);
    *(v8 + 4 * v3) = v10;
    v13 = *(v12 - 4);
    v14 = *(v12 - 3);
    if (v3 >= 1)
    {
      for (i = 0; ; i = 1)
      {
        v16 = v3 - 1;
        v17 = (v3 - 1) >> 1;
        v18 = *(v8 + 4 * v17);
        v19 = v9 + 40 * v18;
        v20 = *(v19 + 20);
        if (v14 >= v20 && (v14 != v20 || v13 >= *(v19 + 16)))
        {
          break;
        }

        *v12 = v17;
        *(v9 + 40 * v18 + 32) = v3;
        *(v8 + 4 * v17) = v10;
        *(v8 + 4 * v3) = v18;
        v3 = v16 >> 1;
        if (v16 < 2)
        {
          return;
        }
      }

      if (i)
      {
        return;
      }
    }

    v21 = (2 * v3) | 1;
    v22 = *a2;
    if (v21 >= *a2)
    {
      return;
    }

    v23 = 2 * v3;
    while (1)
    {
      v24 = v23 + 2;
      v25 = (v8 + 4 * v21);
      v26 = *v25;
      v27 = *v25;
      v28 = v9 + 40 * *v25;
      v29 = *(v28 + 20);
      if (v24 >= v22)
      {
        if (v14 > v29 || v14 == v29 && v13 > *(v28 + 16))
        {
          *v12 = v21;
          *(v9 + 40 * v27 + 32) = v3;
          *v25 = v10;
          *(v8 + 4 * v3) = v26;
        }

        return;
      }

      v30 = (v8 + 4 * v24);
      v31 = *v30;
      if (v14 > v29 || v14 == v29 && v13 > *(v28 + 16))
      {
        break;
      }

      v34 = v9 + 40 * v31;
      v35 = *(v34 + 20);
      if (v14 > v35)
      {
        goto LABEL_23;
      }

      if (v14 != v35)
      {
        return;
      }

      v36 = *(v34 + 16);
      v21 = v24;
      v27 = *v30;
      v25 = (v8 + 4 * v24);
      v26 = *v30;
      if (v13 <= v36)
      {
        return;
      }

LABEL_26:
      v37 = v21;
      *v12 = v21;
      *(v9 + 40 * v27 + 32) = v3;
      *v25 = v10;
      *(v8 + 4 * v3) = v26;
      v23 = 2 * v21;
      v21 = (2 * v21) | 1;
      v22 = *a2;
      v3 = v37;
      if (v21 >= *a2)
      {
        return;
      }
    }

    v32 = v9 + 40 * v31;
    v33 = *(v32 + 20);
    if (v33 > v29 || v33 == v29 && *(v32 + 16) > *(v28 + 16))
    {
      goto LABEL_26;
    }

LABEL_23:
    v21 = v24;
    v27 = *v30;
    v25 = (v8 + 4 * v24);
    v26 = *v30;
    goto LABEL_26;
  }
}

__n128 sub_2767C43BC(__int128 *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  if (*(v3 + 4 * v4) != a3)
  {
    v5 = *(a2 + 16) + 40 * a3;
    v7 = *a1;
    result = a1[1];
    *v5 = *a1;
    *(v5 + 16) = result;
    *(v7 + 56) = v5;
    *(*(&v7 + 1) + 48) = v5;
    *(v5 + 32) = v4;
    *(v3 + 4 * *(a1 + 8)) = a3;
  }

  return result;
}

BOOL sub_2767C4404(void *a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v7 = *a7;
  if (*a7 >= 1)
  {
    *a1 = *(*(a7 + 16) + 40 * **(a7 + 8));
    *a2 = *(*(a7 + 16) + 40 * **(a7 + 8) + 8);
    v8 = (*(a7 + 16) + 40 * **(a7 + 8));
    *a3 = v8[4];
    *a4 = v8[5];
    *a5 = v8[6];
    *a6 = v8[7];
  }

  return v7 > 0;
}

BOOL sub_2767C4474(void *a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, uint64_t a7)
{
  v7 = *a7;
  if (*a7 >= 1)
  {
    *a1 = *(*(a7 + 16) + 40 * **(a7 + 8));
    *a2 = *(*(a7 + 16) + 40 * **(a7 + 8) + 8);
    v8 = (*(a7 + 16) + 40 * **(a7 + 8));
    *a3 = v8[4];
    *a4 = v8[5];
    *a5 = v8[6];
    *a6 = v8[7];
    sub_2767C4188(v8, a7);
  }

  return v7 > 0;
}

uint64_t sub_2767C4504(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  *(result + 56) = 0;
  *(result + 64) = a2;
  *(result + 72) = a3;
  *(result + 48) = 0;
  *(result + 80) = a5;
  v5 = *(a2 + 40) + 32 * a3;
  *(result + 76) = (a4 >= 0) ^ (*(v5 + 8) >= *(v5 + 12));
  return result;
}

void *sub_2767C4540(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  result = malloc_type_malloc(88 * a2, 0x1020040EB7F0E25uLL);
  *(a1 + 8) = result;
  if (!result)
  {
    TSUSetCrashReporterInfo();
    v4 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "static void SweepTree::CreateList(SweepTreeList &, int)", "static void SweepTree::CreateList(SweepTreeList &, int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweepUtils.mm", 291);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/ShapeSweepUtils.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v6, v8, 291, 1, "Unable to allocate memory.");

    TSUCrashBreakpoint();
    abort();
  }

  *(a1 + 16) = 0;
  return result;
}

void sub_2767C4644(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_2767C4678(uint64_t a1, int a2, int a3, int a4, int *a5)
{
  v5 = *a5;
  if (*a5 >= a5[1])
  {
    return 0;
  }

  *a5 = v5 + 1;
  v11 = *(a5 + 1) + 88 * v5;
  sub_27677A380(v11);
  *(v11 + 56) = 0;
  *(v11 + 64) = a1;
  *(v11 + 72) = a2;
  *(v11 + 48) = 0;
  *(v11 + 80) = a4;
  v12 = *(a1 + 40) + 32 * a2;
  *(v11 + 76) = (a3 >= 0) ^ (*(v12 + 8) >= *(v12 + 12));
  return *(a5 + 1) + 88 * v5;
}

uint64_t sub_2767C4734(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4, int a5, float a6, float a7)
{
  v7 = a6;
  v8 = a7;
  do
  {
    while (1)
    {
      v9 = a1;
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      v12 = v10[5] + 32 * v11;
      v13 = *(v12 + 8);
      v14 = v10[11] + 48 * v13;
      v15 = v10[7] + (v11 << 6);
      v16 = *(v15 + 4);
      v17 = *(v15 + 8);
      if (v13 <= *(v12 + 12))
      {
        v16 = -v16;
      }

      else
      {
        v17 = -v17;
      }

      v18 = v16;
      v19 = (v8 - *(v14 + 40)) * v18 + v17 * (v7 - *(v14 + 36));
      if (fabs(v19) < 0.000001)
      {
        v20 = *(a2 + 64);
        v21 = *(a2 + 72);
        v22 = *(v20 + 56) + (v21 << 6);
        v23 = *(v22 + 4);
        v24 = *(v22 + 8);
        if (*(*(v20 + 40) + 32 * v21 + 8) <= *(*(v20 + 40) + 32 * v21 + 12))
        {
          v23 = -v23;
        }

        else
        {
          v24 = -v24;
        }

        v25 = v23;
        v19 = a5 ? v17 * v25 - v24 * v18 : v24 * v18 - v17 * v25;
        if (v19 == 0.0)
        {
          v19 = v18 * v25 + v17 * v24;
          if (v19 == 0.0)
          {
            *a3 = a1;
            *a4 = *(a1 + 8);
            return 1;
          }
        }
      }

      if (v19 >= 0.0)
      {
        break;
      }

      a1 = *(a1 + 24);
      if (!a1)
      {
        *a4 = v9;
        v28 = *v9;
        *a3 = v28;
        if (v28)
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }
    }

    a1 = *(a1 + 32);
  }

  while (a1);
  *a3 = v9;
  v26 = v9[1];
  *a4 = v26;
  if (v26)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void sub_2767C4894(uint64_t a1, int *a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    sub_2767C4188(v4, a2);
  }

  *(a1 + 48) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    sub_2767C4188(v5, a2);
  }

  *(a1 + 56) = 0;
}

void sub_2767C48E0(uint64_t a1, int *a2, int a3)
{
  if (a3)
  {
    v4 = (a1 + 48);
    v3 = *(a1 + 48);
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = (a1 + 56);
  v3 = *(a1 + 56);
  if (v3)
  {
LABEL_5:
    sub_2767C4188(v3, a2);
  }

LABEL_6:
  *v4 = 0;
}

uint64_t sub_2767C4920(uint64_t *a1, uint64_t a2, int *a3, int a4)
{
  sub_2767C4894(a1, a3);
  v14 = *(a2 + 16);
  v7 = sub_27677AA04(a1, &v14, a4);
  *(a2 + 16) = v14;
  v8 = a1[6];
  if (v8)
  {
    *(v8 + 8) = 0;
  }

  v9 = a1[7];
  if (v9)
  {
    *v9 = 0;
  }

  a1[6] = 0;
  a1[7] = 0;
  sub_27677A3B0(a1);
  v10 = *a2;
  if (*a2 > 1)
  {
    v11 = *(a2 + 8);
    if (*(a2 + 16) == v11 + 88 * v10 - 88)
    {
      *(a2 + 16) = a1;
    }

    v12 = v10 - 1;
    *a2 = v12;
    sub_2767C49F8((v11 + 88 * v12), a1);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return v7;
}

uint64_t *sub_2767C49F8(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    result = sub_27677AE54(result, a2);
    v4 = v3[8];
    *(a2 + 64) = v4;
    v5 = *(v3 + 18);
    *(a2 + 72) = v5;
    *(a2 + 76) = *(v3 + 76);
    v7 = v3[6];
    v6 = v3[7];
    *(a2 + 48) = v7;
    *(a2 + 56) = v6;
    *(a2 + 80) = *(v3 + 20);
    v8 = *(v4 + 64);
    if (v8)
    {
      *(v8 + 56 * v5) = a2;
    }

    v9 = *(v4 + 80);
    if (v9)
    {
      *(v9 + 48 * v5) = a2;
    }

    if (v7)
    {
      *(v7 + 8) = a2;
    }

    if (v6)
    {
      *v6 = a2;
    }
  }

  return result;
}

uint64_t sub_2767C4A8C(void *a1, uint64_t a2, int *a3, uint64_t a4, int a5, int a6, int a7)
{
  result = *(a2 + 16);
  if (!result)
  {
    *(a2 + 16) = a1;
    return result;
  }

  v24 = 0;
  v25 = 0;
  v12 = (*(a4 + 24) + 28 * a5);
  v13 = sub_2767C4734(result, a1, &v25, &v24, a7, *v12, v12[1]);
  v14 = v13;
  if ((v13 & 6) != 2)
  {
    if (v13 == 4)
    {
      v18 = v24;
      v19 = v24[6];
      if (v19)
      {
        sub_2767C4188(v19, a3);
      }

      v18[6] = 0;
      v17 = v25;
    }

    else
    {
      if (v13 != 1)
      {
        goto LABEL_18;
      }

      v15 = v24;
      if (v24)
      {
        v16 = v24[6];
        if (v16)
        {
          sub_2767C4188(v16, a3);
        }

        v15[6] = 0;
      }

      v17 = v25;
      if (!v25)
      {
        goto LABEL_18;
      }
    }

    v22 = v17[7];
    v21 = v17 + 7;
    v20 = v22;
    if (v22)
    {
      sub_2767C4188(v20, a3);
    }

    *v21 = 0;
  }

LABEL_18:
  v23 = *(a2 + 16);
  result = sub_27677ACD0(a1, &v23, v14, v25, v24, a6);
  *(a2 + 16) = v23;
  return result;
}

uint64_t sub_2767C4BA8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v10 = *(a2 + 16);
  if (!v10)
  {
    result = 0;
    *(a2 + 16) = a1;
    return result;
  }

  v12 = a5;
  v14 = *(a1 + 64);
  v15 = *(v14 + 40) + 32 * *(a1 + 72);
  v16 = *v15;
  v17 = *(v15 + 4);
  if (*(v15 + 8) > *(v15 + 12))
  {
    v16 = -v16;
    v17 = -v17;
  }

  if (!a8)
  {
    v16 = -v16;
    v17 = -v17;
  }

  v18 = *(*(a5 + 64) + 40) + 32 * *(a5 + 72);
  v19 = *v18;
  v20 = *(v18 + 4);
  if (*(v18 + 8) <= *(v18 + 12))
  {
    v20 = -v20;
  }

  else
  {
    v19 = -v19;
  }

  v21 = v16 * v20 + v19 * v17;
  if (v21 == 0.0)
  {
    v22 = *(a5 + 8);
  }

  else
  {
    v27 = *(v14 + 88) + 48 * a6;
    v28 = *(v27 + 36);
    v29 = *(v27 + 40);
    if (v21 <= 0.0)
    {
      if (v21 >= 0.0)
      {
        v12 = 0;
      }

      else
      {
        v22 = a5;
        while (1)
        {
          v12 = v22;
          v22 = v22[1];
          if (!v22)
          {
            break;
          }

          v43 = v22[8];
          v44 = *(v43 + 40) + 32 * *(v22 + 18);
          v45 = *(v44 + 8);
          if (v43 == v14)
          {
            v46 = *(v44 + 12);
            v51 = a6;
            if (v45 != a6)
            {
              v51 = *(v44 + 8);
              v40 = v46 == a6;
              v46 = a6;
              if (!v40)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
            v46 = *(v44 + 12);
            v47 = *(v43 + 88);
            v48 = v47 + 48 * v45;
            if (*(v48 + 36) == v28 && *(v48 + 40) == v29)
            {
              v51 = *(v44 + 8);
            }

            else
            {
              v49 = v47 + 48 * v46;
              if (*(v49 + 36) != v28)
              {
                goto LABEL_11;
              }

              v50 = *(v49 + 40);
              v51 = *(v44 + 8);
              if (v50 != v29)
              {
                goto LABEL_11;
              }
            }
          }

          v52 = *v44;
          v53 = *(v44 + 4);
          if (v51 <= v46)
          {
            v53 = -v53;
          }

          else
          {
            v52 = -v52;
          }

          if (v16 * v53 + v52 * v17 > 0.0)
          {
            goto LABEL_11;
          }
        }
      }

      v30 = 0;
LABEL_60:
      if (v12)
      {
        v54 = 4;
      }

      else
      {
        v54 = 2;
      }

      if (v30)
      {
        v23 = v54;
      }

      else
      {
        v23 = 3;
      }

      v22 = v30;
      goto LABEL_67;
    }

    v22 = *(a5 + 8);
    while (1)
    {
      v30 = v12;
      v31 = *(v12 + 64);
      v32 = *(v31 + 40) + 32 * *(v12 + 72);
      v33 = *(v32 + 8);
      if (v31 == v14)
      {
        v34 = *(v32 + 12);
        v39 = a6;
        if (v33 != a6)
        {
          v39 = *(v32 + 8);
          v40 = v34 == a6;
          v34 = a6;
          if (!v40)
          {
            break;
          }
        }
      }

      else
      {
        v34 = *(v32 + 12);
        v35 = *(v31 + 88);
        v36 = v35 + 48 * v33;
        if (*(v36 + 36) == v28 && *(v36 + 40) == v29)
        {
          v39 = *(v32 + 8);
        }

        else
        {
          v37 = v35 + 48 * v34;
          if (*(v37 + 36) != v28)
          {
            break;
          }

          v38 = *(v37 + 40);
          v39 = *(v32 + 8);
          if (v38 != v29)
          {
            break;
          }
        }
      }

      v41 = *v32;
      v42 = *(v32 + 4);
      if (v39 <= v34)
      {
        v42 = -v42;
      }

      else
      {
        v41 = -v41;
      }

      if (v16 * v42 + v41 * v17 <= 0.0)
      {
        break;
      }

      v12 = *v12;
      v22 = v30;
      if (!*v30)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_11:
  if (v22)
  {
    v23 = 4;
  }

  else
  {
    v23 = 3;
  }

  if (v22)
  {
    v24 = v22[6];
    if (v24)
    {
      sub_2767C4188(v24, a3);
    }

    v22[6] = 0;
    v25 = *(v12 + 56);
    if (v25)
    {
      sub_2767C4188(v25, a3);
    }

    *(v12 + 56) = 0;
    v10 = *(a2 + 16);
  }

LABEL_67:
  v55 = v10;
  result = sub_27677ACD0(a1, &v55, v23, v12, v22, a7);
  *(a2 + 16) = v55;
  return result;
}

uint64_t sub_2767C4EFC(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 64);
  v3 = *(result + 72);
  *(*(v2 + 64) + 56 * v3) = v1;
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *(*(v4 + 64) + 56 * v5) = result;
  *(result + 64) = v4;
  *(v1 + 64) = v2;
  *(result + 72) = v5;
  *(v1 + 72) = v3;
  LODWORD(v2) = *(result + 80);
  *(result + 80) = *(v1 + 80);
  *(v1 + 80) = v2;
  LOBYTE(v2) = *(result + 76);
  *(result + 76) = *(v1 + 76);
  *(v1 + 76) = v2;
  return result;
}

uint64_t sub_2767C4F60(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::AbstractGuideCommandArchive::AbstractGuideCommandArchive(&TSD::_AbstractGuideCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_AbstractGuideCommandArchive_default_instance_);
}

uint64_t sub_2767C4FD0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F7530 = v4;
  TSD::_AbstractStyleCommandArchive_default_instance_ = &unk_28857A4E8;
  if (atomic_load_explicit(scc_info_AbstractStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7540 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_AbstractStyleCommandArchive_default_instance_);
}

uint64_t sub_2767C5080(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7580 = v4;
  TSD::_BaseApplyPresetCommandArchive_default_instance_ = &unk_28857A648;
  if (atomic_load_explicit(scc_info_BaseApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7590 = 0;
  unk_2812F7598 = 0;
  qword_2812F75A0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_BaseApplyPresetCommandArchive_default_instance_);
}

uint64_t sub_2767C5134(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7618 = v4;
  TSD::_BaseStyleSetValueCommandArchive_default_instance_ = &unk_28857A908;
  if (atomic_load_explicit(scc_info_BaseStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7628 = 0;
  unk_2812F7630 = 0;
  byte_2812F7638 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_BaseStyleSetValueCommandArchive_default_instance_);
}

uint64_t sub_2767C51E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F7D90 = v4;
  TSD::_CanvasSelectionTransformerArchive_default_instance_ = &unk_28857BDA8;
  if (atomic_load_explicit(scc_info_CanvasSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7DA0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_CanvasSelectionTransformerArchive_default_instance_);
}

uint64_t sub_2767C5298(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F79D0 = v4;
  TSD::_CommentInvalidatingCommandSelectionBehaviorArchive_default_instance_ = &unk_28857B2A8;
  if (atomic_load_explicit(scc_info_CommentInvalidatingCommandSelectionBehaviorArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F79E0 = 0;
  unk_2812F79E8 = 0;
  dword_2812F79F0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_CommentInvalidatingCommandSelectionBehaviorArchive_default_instance_);
}

uint64_t sub_2767C534C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7428 = v4;
  TSD::_ConnectionLineConnectCommandArchive_default_instance_ = &unk_28857A178;
  if (atomic_load_explicit(scc_info_ConnectionLineConnectCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7458 = 0;
  unk_2812F7448 = 0u;
  unk_2812F7438 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ConnectionLineConnectCommandArchive_default_instance_);
}

uint64_t sub_2767C5408(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::ContainerInsertChildrenCommandArchive::ContainerInsertChildrenCommandArchive(&TSD::_ContainerInsertChildrenCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_ContainerInsertChildrenCommandArchive_default_instance_);
}

uint64_t sub_2767C5478(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::ContainerInsertDrawablesCommandArchive::ContainerInsertDrawablesCommandArchive(&TSD::_ContainerInsertDrawablesCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_ContainerInsertDrawablesCommandArchive_default_instance_);
}

uint64_t sub_2767C54E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::ContainerRemoveChildrenCommandArchive::ContainerRemoveChildrenCommandArchive(&TSD::_ContainerRemoveChildrenCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_ContainerRemoveChildrenCommandArchive_default_instance_);
}

uint64_t sub_2767C5558(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7298 = v4;
  TSD::_ContainerRemoveDrawablesCommandArchive_default_instance_ = &unk_288579D58;
  if (atomic_load_explicit(scc_info_ContainerRemoveDrawablesCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F72A8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ContainerRemoveDrawablesCommandArchive_default_instance_);
}

uint64_t sub_2767C5608(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::ContainerReorderChildrenCommandArchive::ContainerReorderChildrenCommandArchive(&TSD::_ContainerReorderChildrenCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_ContainerReorderChildrenCommandArchive_default_instance_);
}

uint64_t sub_2767C5678(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::DrawableAccessibilityDescriptionCommandArchive::DrawableAccessibilityDescriptionCommandArchive(&TSD::_DrawableAccessibilityDescriptionCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_DrawableAccessibilityDescriptionCommandArchive_default_instance_);
}

uint64_t sub_2767C56E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7500 = v4;
  TSD::_DrawableApplyThemeCommandArchive_default_instance_ = &unk_28857A438;
  if (atomic_load_explicit(scc_info_DrawableApplyThemeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7510 = 0;
  unk_2812F7518 = 0;
  qword_2812F7520 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_DrawableApplyThemeCommandArchive_default_instance_);
}

uint64_t sub_2767C579C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7BE8 = v4;
  TSD::_DrawableAspectRatioLockedCommandArchive_default_instance_ = &unk_28857B778;
  if (atomic_load_explicit(scc_info_DrawableAspectRatioLockedCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  word_2812F7C00 = 0;
  qword_2812F7BF8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_DrawableAspectRatioLockedCommandArchive_default_instance_);
}

uint64_t sub_2767C5850(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::DrawableHyperlinkCommandArchive::DrawableHyperlinkCommandArchive(&TSD::_DrawableHyperlinkCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_DrawableHyperlinkCommandArchive_default_instance_);
}

uint64_t sub_2767C58C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7B08 = v4;
  TSD::_DrawableInfoCommentCommandArchive_default_instance_ = &unk_28857B4B8;
  if (atomic_load_explicit(scc_info_DrawableInfoCommentCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F7B28 = 0u;
  unk_2812F7B18 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_DrawableInfoCommentCommandArchive_default_instance_);
}

uint64_t sub_2767C5978(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7AE0 = v4;
  TSD::_DrawableLockCommandArchive_default_instance_ = &unk_28857B408;
  if (atomic_load_explicit(scc_info_DrawableLockCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  word_2812F7AF8 = 0;
  qword_2812F7AF0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_DrawableLockCommandArchive_default_instance_);
}

uint64_t sub_2767C5A2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F74A0 = v4;
  TSD::_DrawablePathSourceCommandArchive_default_instance_ = &unk_28857A2D8;
  if (atomic_load_explicit(scc_info_DrawablePathSourceCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F74B0 = 0;
  unk_2812F74B8 = 0;
  qword_2812F74C0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_DrawablePathSourceCommandArchive_default_instance_);
}

uint64_t sub_2767C5AE0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7B40 = v4;
  TSD::_DrawablePencilAnnotationCommandArchive_default_instance_ = &unk_28857B568;
  if (atomic_load_explicit(scc_info_DrawablePencilAnnotationCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7B50 = 0;
  unk_2812F7B58 = 0;
  qword_2812F7B60 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_DrawablePencilAnnotationCommandArchive_default_instance_);
}

uint64_t sub_2767C5B94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F7D50 = v4;
  TSD::_DrawableSelectionTransformerArchive_default_instance_ = &unk_28857BC48;
  if (atomic_load_explicit(scc_info_DrawableSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7D60 = 0;
  unk_2812F7D68 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_DrawableSelectionTransformerArchive_default_instance_);
}

uint64_t sub_2767C5C44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::DrawablesCommandGroupArchive::DrawablesCommandGroupArchive(&TSD::_DrawablesCommandGroupArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_DrawablesCommandGroupArchive_default_instance_);
}

uint64_t sub_2767C5CB4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7960 = v4;
  TSD::_ExteriorTextWrapCommandArchive_default_instance_ = &unk_28857B148;
  if (atomic_load_explicit(scc_info_ExteriorTextWrapCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F798D = 0;
  unk_2812F7980 = 0u;
  unk_2812F7970 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ExteriorTextWrapCommandArchive_default_instance_);
}

uint64_t sub_2767C5D70(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7E58 = v4;
  TSD::_FreehandDrawingAnimationCommandArchive_default_instance_ = &unk_28857C1C8;
  if (atomic_load_explicit(scc_info_FreehandDrawingAnimationCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7E68 = 0;
  unk_2812F7E70 = 0;
  qword_2812F7E78 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_FreehandDrawingAnimationCommandArchive_default_instance_);
}

uint64_t sub_2767C5E24(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7E28 = v4;
  TSD::_FreehandDrawingOpacityCommandArchive_default_instance_ = &unk_28857C118;
  if (atomic_load_explicit(scc_info_FreehandDrawingOpacityCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7E38 = 0;
  unk_2812F7E40 = 0;
  qword_2812F7E48 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_FreehandDrawingOpacityCommandArchive_default_instance_);
}

uint64_t sub_2767C5ED8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::GroupDrawablesCommandArchive::GroupDrawablesCommandArchive(&TSD::_GroupDrawablesCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_GroupDrawablesCommandArchive_default_instance_);
}

uint64_t sub_2767C5F48(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7DE8 = v4;
  TSD::_GroupSelectionTransformerArchive_default_instance_ = &unk_28857BFB8;
  if (atomic_load_explicit(scc_info_GroupSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7DF8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_GroupSelectionTransformerArchive_default_instance_);
}

uint64_t sub_2767C5FF8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::GroupUngroupInformativeCommandArchive::GroupUngroupInformativeCommandArchive(&TSD::_GroupUngroupInformativeCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_GroupUngroupInformativeCommandArchive_default_instance_);
}

uint64_t sub_2767C6068(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7BC0 = v4;
  TSD::_GuideCommandArchive_default_instance_ = &unk_28857B6C8;
  if (atomic_load_explicit(scc_info_GuideCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7BD0 = 0;
  unk_2812F7BD8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_GuideCommandArchive_default_instance_);
}

uint64_t sub_2767C6118(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7890 = v4;
  TSD::_ImageAdjustmentsCommandArchive_default_instance_ = &unk_28857AF38;
  if (atomic_load_explicit(scc_info_ImageAdjustmentsCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F78E0 = 0;
  unk_2812F78D0 = 0u;
  unk_2812F78C0 = 0u;
  unk_2812F78B0 = 0u;
  unk_2812F78A0 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ImageAdjustmentsCommandArchive_default_instance_);
}

uint64_t sub_2767C61DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7C78 = v4;
  TSD::_ImageInfoAbstractGeometryCommandArchive_default_instance_ = &unk_28857B988;
  if (atomic_load_explicit(scc_info_ImageInfoAbstractGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F7CC2 = 0u;
  unk_2812F7CB8 = 0u;
  unk_2812F7CA8 = 0u;
  unk_2812F7C98 = 0u;
  unk_2812F7C88 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ImageInfoAbstractGeometryCommandArchive_default_instance_);
}

uint64_t sub_2767C62A0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7CE0 = v4;
  TSD::_ImageInfoGeometryCommandArchive_default_instance_ = &unk_28857BA38;
  if (atomic_load_explicit(scc_info_ImageInfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7CF0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ImageInfoGeometryCommandArchive_default_instance_);
}

uint64_t sub_2767C6350(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7D00 = v4;
  TSD::_ImageInfoMaskGeometryCommandArchive_default_instance_ = &unk_28857BAE8;
  if (atomic_load_explicit(scc_info_ImageInfoMaskGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7D10 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ImageInfoMaskGeometryCommandArchive_default_instance_);
}

uint64_t sub_2767C6400(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7858 = v4;
  TSD::_ImageMaskCommandArchive_default_instance_ = &unk_28857AE88;
  if (atomic_load_explicit(scc_info_ImageMaskCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7868 = 0;
  unk_2812F7870 = 0;
  word_2812F7880 = 0;
  qword_2812F7878 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ImageMaskCommandArchive_default_instance_);
}

uint64_t sub_2767C64B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7708 = v4;
  TSD::_ImageMediaCommandArchive_default_instance_ = &unk_28857ABC8;
  if (atomic_load_explicit(scc_info_ImageMediaCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F77A8 = 0u;
  unk_2812F7798 = 0u;
  unk_2812F7788 = 0u;
  unk_2812F7778 = 0u;
  unk_2812F7768 = 0u;
  unk_2812F7758 = 0u;
  unk_2812F7748 = 0u;
  unk_2812F7738 = 0u;
  unk_2812F7728 = 0u;
  unk_2812F7718 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ImageMediaCommandArchive_default_instance_);
}

uint64_t sub_2767C6590(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7828 = v4;
  TSD::_ImageNaturalSizeCommandArchive_default_instance_ = &unk_28857ADD8;
  if (atomic_load_explicit(scc_info_ImageNaturalSizeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7838 = 0;
  unk_2812F7840 = 0;
  qword_2812F7848 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ImageNaturalSizeCommandArchive_default_instance_);
}

uint64_t sub_2767C6644(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7A00 = v4;
  TSD::_ImageReplaceCommandArchive_default_instance_ = &unk_28857B358;
  if (atomic_load_explicit(scc_info_ImageReplaceCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7AD0 = 0;
  unk_2812F7AC0 = 0u;
  unk_2812F7AB0 = 0u;
  unk_2812F7AA0 = 0u;
  unk_2812F7A90 = 0u;
  unk_2812F7A80 = 0u;
  unk_2812F7A70 = 0u;
  unk_2812F7A60 = 0u;
  unk_2812F7A50 = 0u;
  unk_2812F7A40 = 0u;
  unk_2812F7A30 = 0u;
  unk_2812F7A20 = 0u;
  unk_2812F7A10 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ImageReplaceCommandArchive_default_instance_);
}

uint64_t sub_2767C6728(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::InfoCollectionSelectionTransformerHelperArchive::InfoCollectionSelectionTransformerHelperArchive(&TSD::_InfoCollectionSelectionTransformerHelperArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_InfoCollectionSelectionTransformerHelperArchive_default_instance_);
}

uint64_t sub_2767C6798(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7400 = v4;
  TSD::_InfoCommandArchive_default_instance_ = &unk_28857A0C8;
  if (atomic_load_explicit(scc_info_InfoCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7410 = 0;
  unk_2812F7418 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_InfoCommandArchive_default_instance_);
}

uint64_t sub_2767C6848(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7468 = v4;
  TSD::_InfoGeometryCommandArchive_default_instance_ = &unk_28857A228;
  if (atomic_load_explicit(scc_info_InfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7478 = 0;
  unk_2812F7480 = 0;
  dword_2812F7490 = 0;
  qword_2812F7488 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_InfoGeometryCommandArchive_default_instance_);
}

uint64_t sub_2767C6900(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::_InfoHyperlinkSelectionTransformerArchive_default_instance_ = &unk_28857BCF8;
  *algn_2812F7D78 = 0;
  dword_2812F7D80 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_InfoHyperlinkSelectionTransformerArchive_default_instance_);
}

uint64_t sub_2767C6978(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::InsertCaptionOrTitleCommandArchive::InsertCaptionOrTitleCommandArchive(&TSD::_InsertCaptionOrTitleCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_InsertCaptionOrTitleCommandArchive_default_instance_);
}

uint64_t sub_2767C69E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F74D0 = v4;
  TSD::_InstantAlphaCommandArchive_default_instance_ = &unk_28857A388;
  if (atomic_load_explicit(scc_info_InstantAlphaCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F74E0 = 0;
  unk_2812F74E8 = 0;
  qword_2812F74F0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_InstantAlphaCommandArchive_default_instance_);
}

uint64_t sub_2767C6A9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F75D0 = v4;
  TSD::_MediaApplyPresetCommandArchive_default_instance_ = &unk_28857A7A8;
  if (atomic_load_explicit(scc_info_MediaApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F75E0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_MediaApplyPresetCommandArchive_default_instance_);
}

uint64_t sub_2767C6B4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::MediaFlagsCommandArchive::MediaFlagsCommandArchive(&TSD::_MediaFlagsCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_MediaFlagsCommandArchive_default_instance_);
}

uint64_t sub_2767C6BBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F77F8 = v4;
  TSD::_MediaInfoGeometryCommandArchive_default_instance_ = &unk_28857AD28;
  if (atomic_load_explicit(scc_info_MediaInfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7808 = 0;
  unk_2812F7810 = 0;
  qword_2812F7818 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_MediaInfoGeometryCommandArchive_default_instance_);
}

uint64_t sub_2767C6C70(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::MediaOriginalSizeCommandArchive::MediaOriginalSizeCommandArchive(&TSD::_MediaOriginalSizeCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_MediaOriginalSizeCommandArchive_default_instance_);
}

uint64_t sub_2767C6CE0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F76E0 = v4;
  TSD::_MediaStyleSetValueCommandArchive_default_instance_ = &unk_28857AB18;
  if (atomic_load_explicit(scc_info_MediaStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F76F0 = 0;
  unk_2812F76F8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_MediaStyleSetValueCommandArchive_default_instance_);
}

uint64_t sub_2767C6D90(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7698 = v4;
  TSD::_MovieSetValueCommandArchive_default_instance_ = &unk_28857AA68;
  if (atomic_load_explicit(scc_info_MovieSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F76C4 = 0u;
  unk_2812F76B8 = 0u;
  unk_2812F76A8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_MovieSetValueCommandArchive_default_instance_);
}

uint64_t sub_2767C6E4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7648 = v4;
  TSD::_MovieSetValueCommandArchive_PropertyValue_default_instance_ = &unk_28857A9B8;
  if (atomic_load_explicit(scc_info_MovieSetValueCommandArchive_PropertyValue_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  word_2812F7688 = 0;
  unk_2812F7678 = 0u;
  unk_2812F7668 = 0u;
  unk_2812F7658 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_MovieSetValueCommandArchive_PropertyValue_default_instance_);
}

uint64_t sub_2767C6F0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7C40 = v4;
  TSD::_PasteStyleCommandArchive_default_instance_ = &unk_28857B8D8;
  if (atomic_load_explicit(scc_info_PasteStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7C50 = 0;
  unk_2812F7C58 = 0;
  byte_2812F7C68 = 0;
  qword_2812F7C60 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_PasteStyleCommandArchive_default_instance_);
}

uint64_t sub_2767C6FC4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::_PathSelectionTransformerArchive_default_instance_ = &unk_28857BE58;
  unk_2812F7DB0 = 0;
  dword_2812F7DB8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_PathSelectionTransformerArchive_default_instance_);
}

uint64_t sub_2767C703C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7E08 = v4;
  TSD::_PencilAnnotationSelectionTransformerArchive_default_instance_ = &unk_28857C068;
  if (atomic_load_explicit(scc_info_PencilAnnotationSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7E18 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_PencilAnnotationSelectionTransformerArchive_default_instance_);
}

uint64_t sub_2767C70EC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::RemoveCaptionOrTitleCommandArchive::RemoveCaptionOrTitleCommandArchive(&TSD::_RemoveCaptionOrTitleCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_RemoveCaptionOrTitleCommandArchive_default_instance_);
}

uint64_t sub_2767C715C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::SetCaptionOrTitleVisibilityCommandArchive::SetCaptionOrTitleVisibilityCommandArchive(&TSD::_SetCaptionOrTitleVisibilityCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_SetCaptionOrTitleVisibilityCommandArchive_default_instance_);
}

uint64_t sub_2767C71CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F75B0 = v4;
  TSD::_ShapeApplyPresetCommandArchive_default_instance_ = &unk_28857A6F8;
  if (atomic_load_explicit(scc_info_ShapeApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F75C0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ShapeApplyPresetCommandArchive_default_instance_);
}

uint64_t sub_2767C727C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F7DC8 = v4;
  TSD::_ShapeSelectionTransformerArchive_default_instance_ = &unk_28857BF08;
  if (atomic_load_explicit(scc_info_ShapeSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7DD8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ShapeSelectionTransformerArchive_default_instance_);
}

uint64_t sub_2767C732C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F75F0 = v4;
  TSD::_ShapeStyleSetValueCommandArchive_default_instance_ = &unk_28857A858;
  if (atomic_load_explicit(scc_info_ShapeStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7600 = 0;
  unk_2812F7608 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ShapeStyleSetValueCommandArchive_default_instance_);
}

uint64_t sub_2767C73DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F7550 = v4;
  TSD::_StyledInfoSetStyleCommandArchive_default_instance_ = &unk_28857A598;
  if (atomic_load_explicit(scc_info_StyledInfoSetStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F7560 = 0;
  unk_2812F7568 = 0;
  qword_2812F7570 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_StyledInfoSetStyleCommandArchive_default_instance_);
}

uint64_t sub_2767C7490(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::UndoObjectArchive::UndoObjectArchive(&TSD::_UndoObjectArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_UndoObjectArchive_default_instance_);
}

uint64_t sub_2767C7500(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDCommandArchives.pb.cc", a4);
  TSD::UngroupGroupCommandArchive::UngroupGroupCommandArchive(&TSD::_UngroupGroupCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_UngroupGroupCommandArchive_default_instance_);
}

TSP::Reference *TSD::UndoObjectArchive::clear_stylesheet(TSD::UndoObjectArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSD::UndoObjectArchive::clear_objects(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSD::UndoObjectArchive *TSD::UndoObjectArchive::UndoObjectArchive(TSD::UndoObjectArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288579A98;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 10) = a2;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  if (atomic_load_explicit(scc_info_UndoObjectArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 11) = 0;
  return this;
}

void sub_2767C77BC(_Unwind_Exception *a1)
{
  if (*(v2 + 76) >= 1)
  {
    sub_27680D478(v4);
  }

  sub_27680224C(v3);
  sub_27676C890(v1);
  _Unwind_Resume(a1);
}

TSD::UndoObjectArchive *TSD::UndoObjectArchive::UndoObjectArchive(TSD::UndoObjectArchive *this, const TSD::UndoObjectArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288579A98;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27676CA94(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_2768022E8(this + 2, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  v15 = *(a2 + 18);
  if (v15)
  {
    sub_2766C3850(this + 18, v15);
    v16 = *(this + 10);
    *(this + 18) += *(a2 + 18);
    memcpy(v16, *(a2 + 10), 4 * *(a2 + 18));
  }

  v17 = *(a2 + 1);
  if (v17)
  {
    sub_27670B0F8(v4, (v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 11) = 0;
  return this;
}

void sub_2767C79B8(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v3, 0x1081C407D3F2757);
  if (*(v1 + 76) >= 1)
  {
    v5 = *(v1 + 80);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  sub_27680224C(v2);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::UndoObjectArchive::~UndoObjectArchive(TSD::UndoObjectArchive *this)
{
  if (this != &TSD::_UndoObjectArchive_default_instance_)
  {
    v2 = *(this + 11);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  if (*(this + 19) >= 1)
  {
    v3 = *(this + 10);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  sub_27680224C(this + 6);
  sub_27676C890(this + 3);
}

{
  TSD::UndoObjectArchive::~UndoObjectArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::UndoObjectArchive::default_instance(TSD::UndoObjectArchive *this)
{
  if (atomic_load_explicit(scc_info_UndoObjectArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_UndoObjectArchive_default_instance_;
}

uint64_t *TSD::UndoObjectArchive::Clear(TSD::UndoObjectArchive *this)
{
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  result = sub_276802200(this + 48);
  *(this + 18) = 0;
  if (*(this + 16))
  {
    result = TSP::Reference::Clear(*(this + 11));
  }

  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_27670B144(v6);
  }

  return result;
}

google::protobuf::internal *TSD::UndoObjectArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  while (1)
  {
LABEL_2:
    if (sub_27670AF08(a3, &v40))
    {
      return v40;
    }

    v5 = (v40 + 1);
    v6 = *v40;
    if ((*v40 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v40 + 2);
LABEL_6:
      v40 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v7 - 128));
    v40 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v37;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      break;
    }

    if (v8 != 1)
    {
      if (v8 == 2 && v6 == 18)
      {
        *(a1 + 16) |= 1u;
        v10 = *(a1 + 88);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C9BB20](v11);
          LODWORD(v10) = v12;
          *(a1 + 88) = v12;
          v5 = v40;
        }

        v13 = sub_27680B6EC(a3, v10, v5);
        goto LABEL_72;
      }

      goto LABEL_65;
    }

    if (v6 == 10)
    {
      v20 = v5 - 1;
      while (1)
      {
        v21 = (v20 + 1);
        v40 = (v20 + 1);
        v22 = *(a1 + 40);
        if (!v22)
        {
          goto LABEL_38;
        }

        v28 = *(a1 + 32);
        v23 = *v22;
        if (v28 < *v22)
        {
          *(a1 + 32) = v28 + 1;
          v25 = *&v22[2 * v28 + 2];
          goto LABEL_42;
        }

        if (v23 == *(a1 + 36))
        {
LABEL_38:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v22 = *(a1 + 40);
          v23 = *v22;
        }

        *v22 = v23 + 1;
        v24 = MEMORY[0x277C9BB20](*(a1 + 24));
        LODWORD(v25) = v24;
        v26 = *(a1 + 32);
        v27 = *(a1 + 40) + 8 * v26;
        *(a1 + 32) = v26 + 1;
        *(v27 + 8) = v24;
        v21 = v40;
LABEL_42:
        v20 = sub_27680B6EC(a3, v25, v21);
        v40 = v20;
        if (!v20)
        {
          return 0;
        }

        if (*a3 <= v20 || *v20 != 10)
        {
          goto LABEL_2;
        }
      }
    }

LABEL_65:
    if (v6)
    {
      v38 = (v6 & 7) == 4;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      *(a3 + 80) = v6 - 1;
      return v40;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_72:
    v40 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  if (v8 == 3)
  {
    if (v6 != 26)
    {
      goto LABEL_65;
    }

    v29 = v5 - 1;
    while (1)
    {
      v40 = (v29 + 1);
      v30 = *(a1 + 64);
      if (!v30)
      {
        goto LABEL_55;
      }

      v31 = *(a1 + 56);
      v32 = *v30;
      if (v31 >= *v30)
      {
        break;
      }

      *(a1 + 56) = v31 + 1;
LABEL_57:
      v29 = google::protobuf::internal::InlineGreedyStringParser();
      v40 = v29;
      if (!v29)
      {
        return 0;
      }

      if (*a3 <= v29 || *v29 != 26)
      {
        goto LABEL_2;
      }
    }

    if (v32 == *(a1 + 60))
    {
LABEL_55:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
      v30 = *(a1 + 64);
      v32 = *v30;
    }

    *v30 = v32 + 1;
    v33 = sub_276802120(*(a1 + 48));
    v34 = *(a1 + 56);
    v35 = *(a1 + 64) + 8 * v34;
    *(a1 + 56) = v34 + 1;
    *(v35 + 8) = v33;
    goto LABEL_57;
  }

  if (v8 != 4)
  {
    goto LABEL_65;
  }

  if (v6 != 32)
  {
    if (v6 == 34)
    {
      v13 = google::protobuf::internal::PackedUInt32Parser();
      goto LABEL_72;
    }

    goto LABEL_65;
  }

  v14 = v5 - 1;
  while (1)
  {
    v40 = (v14 + 1);
    v15 = v14[1];
    if (v14[1] < 0)
    {
      v16 = v15 + (v14[2] << 7);
      v15 = v16 - 128;
      if (v14[2] < 0)
      {
        v14 = google::protobuf::internal::VarintParseSlow32((v14 + 1), (v16 - 128));
        v15 = v17;
      }

      else
      {
        v14 += 3;
      }
    }

    else
    {
      v14 += 2;
    }

    v40 = v14;
    v18 = *(a1 + 72);
    if (v18 == *(a1 + 76))
    {
      v19 = v18 + 1;
      sub_2766C3850((a1 + 72), v18 + 1);
      *(*(a1 + 80) + 4 * v18) = v15;
      v14 = v40;
    }

    else
    {
      *(*(a1 + 80) + 4 * v18) = v15;
      v19 = v18 + 1;
    }

    *(a1 + 72) = v19;
    if (!v14)
    {
      return 0;
    }

    if (*a3 <= v14 || *v14 != 32)
    {
      goto LABEL_2;
    }
  }
}

google::protobuf::UnknownFieldSet *TSD::UndoObjectArchive::_InternalSerialize(TSD::UndoObjectArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 5) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        *(a2 + 1) = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          *(a2 + 2) = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        *(a2 + 1) = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 11);
    *a2 = 18;
    v15 = *(v14 + 5);
    if (v15 > 0x7F)
    {
      *(a2 + 1) = v15 | 0x80;
      v17 = v15 >> 7;
      if (v15 >> 14)
      {
        v16 = a2 + 3;
        do
        {
          *(v16 - 1) = v17 | 0x80;
          v18 = v17 >> 7;
          ++v16;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
        *(v16 - 1) = v18;
      }

      else
      {
        *(a2 + 2) = v17;
        v16 = a2 + 3;
      }
    }

    else
    {
      *(a2 + 1) = v15;
      v16 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v14, v16, a3);
  }

  v20 = *(this + 14);
  if (v20 >= 1)
  {
    v21 = 8;
    do
    {
      a2 = sub_2767C826C(a3, 3, *(*(this + 8) + v21), a2);
      v21 += 8;
      --v20;
    }

    while (v20);
  }

  v22 = *(this + 18);
  if (v22 >= 1)
  {
    for (j = 0; j != v22; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = *(*(this + 10) + 4 * j);
      *a2 = 32;
      if (v24 > 0x7F)
      {
        *(a2 + 1) = v24 | 0x80;
        v25 = v24 >> 7;
        if (v24 >> 14)
        {
          a2 = (a2 + 3);
          do
          {
            *(a2 - 1) = v25 | 0x80;
            v26 = v25 >> 7;
            a2 = (a2 + 1);
            v27 = v25 >> 14;
            v25 >>= 7;
          }

          while (v27);
          *(a2 - 1) = v26;
        }

        else
        {
          *(a2 + 2) = v25;
          a2 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v24;
        a2 = (a2 + 2);
      }
    }
  }

  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v28 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

uint64_t sub_2767C826C(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB40]();
}

uint64_t TSD::UndoObjectArchive::ByteSizeLong(TSD::UndoObjectArchive *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  if (v8 >= 1)
  {
    v10 = (*(this + 8) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = google::protobuf::internal::WireFormatLite::UInt32Size() + *(this + 18) + v9;
  if (*(this + 16))
  {
    v15 = TSP::Reference::ByteSizeLong(*(this + 11));
    v14 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v14;
    return v14;
  }
}

uint64_t TSD::UndoObjectArchive::MergeFrom(TSD::UndoObjectArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::UndoObjectArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::UndoObjectArchive::MergeFrom(uint64_t this, const TSD::UndoObjectArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27676CA94(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_2768022E8((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 18);
  if (v15)
  {
    v16 = *(v3 + 72);
    sub_2766C3850((v3 + 72), v16 + v15);
    v17 = *(v3 + 80);
    *(v3 + 72) += *(a2 + 18);
    this = memcpy((v17 + 4 * v16), *(a2 + 10), 4 * *(a2 + 18));
  }

  if (*(a2 + 16))
  {
    v18 = *(a2 + 11);
    *(v3 + 16) |= 1u;
    v19 = *(v3 + 88);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C9BB20](v20);
      *(v3 + 88) = v19;
      v18 = *(a2 + 11);
    }

    if (v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v19, v21);
  }

  return this;
}

TSD::UndoObjectArchive *TSD::UndoObjectArchive::CopyFrom(TSD::UndoObjectArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::UndoObjectArchive::Clear(this);

    return TSD::UndoObjectArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::UndoObjectArchive *TSD::UndoObjectArchive::CopyFrom(TSD::UndoObjectArchive *this, const TSD::UndoObjectArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::UndoObjectArchive::Clear(this);

    return TSD::UndoObjectArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::UndoObjectArchive::IsInitialized(TSD::UndoObjectArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 11));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::UndoObjectArchive::InternalSwap(TSD::UndoObjectArchive *this, TSD::UndoObjectArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 9);
  v10 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  v12 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v12;
  return result;
}

TSK::CommandArchive *TSD::GroupDrawablesCommandArchive::clear_super(TSD::GroupDrawablesCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSD::GroupDrawablesCommandArchive::clear_drawables(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSP::Reference *TSD::GroupDrawablesCommandArchive::clear_group(TSD::GroupDrawablesCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::GroupDrawablesCommandArchive *TSD::GroupDrawablesCommandArchive::GroupDrawablesCommandArchive(TSD::GroupDrawablesCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288579B48;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_GroupDrawablesCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TSD::GroupDrawablesCommandArchive *TSD::GroupDrawablesCommandArchive::GroupDrawablesCommandArchive(TSD::GroupDrawablesCommandArchive *this, const TSD::GroupDrawablesCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288579B48;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27676CA94(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_27670B0F8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v11 = *(a2 + 4);
  if (v11)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  return this;
}

void sub_2767C8BB4(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x1081C407D3F2757);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::GroupDrawablesCommandArchive::~GroupDrawablesCommandArchive(TSD::GroupDrawablesCommandArchive *this)
{
  if (this != &TSD::_GroupDrawablesCommandArchive_default_instance_)
  {
    if (*(this + 6))
    {
      v2 = MEMORY[0x277C9B420]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  sub_27676C890(this + 3);
}

{
  TSD::GroupDrawablesCommandArchive::~GroupDrawablesCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::GroupDrawablesCommandArchive::default_instance(TSD::GroupDrawablesCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupDrawablesCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GroupDrawablesCommandArchive_default_instance_;
}

uint64_t *TSD::GroupDrawablesCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSK::CommandArchive::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27670B144(v6);
  }

  return this;
}

google::protobuf::internal *TSD::GroupDrawablesCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  while (1)
  {
    if (sub_27670AF08(a3, &v30))
    {
      return v30;
    }

    v5 = (v30 + 1);
    v6 = *v30;
    if ((*v30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v30 + 2);
LABEL_6:
      v30 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v7 - 128));
    v30 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v28;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 == 26)
      {
        *(a1 + 16) |= 2u;
        v21 = *(a1 + 56);
        if (!v21)
        {
          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x277C9BB20](v22);
          LODWORD(v21) = v23;
          *(a1 + 56) = v23;
          v5 = v30;
        }

        v11 = sub_27680B6EC(a3, v21, v5);
        goto LABEL_44;
      }

      goto LABEL_13;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      v12 = v5 - 1;
LABEL_22:
      v13 = (v12 + 1);
      v30 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
LABEL_23:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v14 = *(a1 + 40);
        v15 = *v14;
        goto LABEL_24;
      }

      v20 = *(a1 + 32);
      v15 = *v14;
      if (v20 >= *v14)
      {
        if (v15 == *(a1 + 36))
        {
          goto LABEL_23;
        }

LABEL_24:
        *v14 = v15 + 1;
        v16 = MEMORY[0x277C9BB20](*(a1 + 24));
        LODWORD(v17) = v16;
        v18 = *(a1 + 32);
        v19 = *(a1 + 40) + 8 * v18;
        *(a1 + 32) = v18 + 1;
        *(v19 + 8) = v16;
        v13 = v30;
      }

      else
      {
        *(a1 + 32) = v20 + 1;
        v17 = *&v14[2 * v20 + 2];
      }

      v12 = sub_27680B6EC(a3, v17, v13);
      v30 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        continue;
      }

      goto LABEL_22;
    }

    if (v8 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v24 = *(a1 + 48);
      if (!v24)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x277C9BA50](v25);
        LODWORD(v24) = v26;
        *(a1 + 48) = v26;
        v5 = v30;
      }

      v11 = sub_27680C3D8(a3, v24, v5);
      goto LABEL_44;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_44:
    v30 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v30;
}

unsigned __int8 *TSD::GroupDrawablesCommandArchive::_InternalSerialize(TSD::GroupDrawablesCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 8);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = a2 + 3;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          a2[2] = v18;
          v17 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v16;
        v17 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v15, v17, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(this + 7);
    *a2 = 26;
    v22 = *(v21 + 5);
    if (v22 > 0x7F)
    {
      a2[1] = v22 | 0x80;
      v24 = v22 >> 7;
      if (v22 >> 14)
      {
        v23 = a2 + 3;
        do
        {
          *(v23 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          ++v23;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(v23 - 1) = v25;
      }

      else
      {
        a2[2] = v24;
        v23 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v22;
      v23 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::GroupDrawablesCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[6]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if ((this[2] & 2) != 0)
  {
    v11 = TSP::Reference::ByteSizeLong(this[7]);
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSD::GroupDrawablesCommandArchive::MergeFrom(TSD::GroupDrawablesCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::GroupDrawablesCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::GroupDrawablesCommandArchive::MergeFrom(uint64_t this, const TSD::GroupDrawablesCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27676CA94(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C9BA50](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v14 = *(v3 + 56);
      if (!v14)
      {
        v15 = *(v3 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C9BB20](v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v14, v16);
    }
  }

  return this;
}

uint64_t *TSD::GroupDrawablesCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GroupDrawablesCommandArchive::Clear(this);

    return TSD::GroupDrawablesCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::GroupDrawablesCommandArchive::CopyFrom(uint64_t *this, const TSD::GroupDrawablesCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GroupDrawablesCommandArchive::Clear(this);

    return TSD::GroupDrawablesCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::GroupDrawablesCommandArchive::IsInitialized(TSD::GroupDrawablesCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::GroupDrawablesCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v7 = this[3].n128_u64[0];
  v8 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = v8;
  return result;
}

TSK::CommandArchive *TSD::UngroupGroupCommandArchive::clear_super(TSD::UngroupGroupCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSD::UngroupGroupCommandArchive::clear_drawables(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSP::Reference *TSD::UngroupGroupCommandArchive::clear_group(TSD::UngroupGroupCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::UngroupGroupCommandArchive *TSD::UngroupGroupCommandArchive::UngroupGroupCommandArchive(TSD::UngroupGroupCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288579BF8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_UngroupGroupCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TSD::UngroupGroupCommandArchive *TSD::UngroupGroupCommandArchive::UngroupGroupCommandArchive(TSD::UngroupGroupCommandArchive *this, const TSD::UngroupGroupCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288579BF8;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27676CA94(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_27670B0F8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v11 = *(a2 + 4);
  if (v11)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  return this;
}

void sub_2767C9A28(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x1081C407D3F2757);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::UngroupGroupCommandArchive::~UngroupGroupCommandArchive(TSD::UngroupGroupCommandArchive *this)
{
  if (this != &TSD::_UngroupGroupCommandArchive_default_instance_)
  {
    if (*(this + 6))
    {
      v2 = MEMORY[0x277C9B420]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  sub_27676C890(this + 3);
}

{
  TSD::UngroupGroupCommandArchive::~UngroupGroupCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::UngroupGroupCommandArchive::default_instance(TSD::UngroupGroupCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_UngroupGroupCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_UngroupGroupCommandArchive_default_instance_;
}

uint64_t *TSD::UngroupGroupCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSK::CommandArchive::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27670B144(v6);
  }

  return this;
}

google::protobuf::internal *TSD::UngroupGroupCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  while (1)
  {
    if (sub_27670AF08(a3, &v30))
    {
      return v30;
    }

    v5 = (v30 + 1);
    v6 = *v30;
    if ((*v30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v30 + 2);
LABEL_6:
      v30 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v7 - 128));
    v30 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v28;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 == 26)
      {
        *(a1 + 16) |= 2u;
        v21 = *(a1 + 56);
        if (!v21)
        {
          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x277C9BB20](v22);
          LODWORD(v21) = v23;
          *(a1 + 56) = v23;
          v5 = v30;
        }

        v11 = sub_27680B6EC(a3, v21, v5);
        goto LABEL_44;
      }

      goto LABEL_13;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      v12 = v5 - 1;
LABEL_22:
      v13 = (v12 + 1);
      v30 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
LABEL_23:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v14 = *(a1 + 40);
        v15 = *v14;
        goto LABEL_24;
      }

      v20 = *(a1 + 32);
      v15 = *v14;
      if (v20 >= *v14)
      {
        if (v15 == *(a1 + 36))
        {
          goto LABEL_23;
        }

LABEL_24:
        *v14 = v15 + 1;
        v16 = MEMORY[0x277C9BB20](*(a1 + 24));
        LODWORD(v17) = v16;
        v18 = *(a1 + 32);
        v19 = *(a1 + 40) + 8 * v18;
        *(a1 + 32) = v18 + 1;
        *(v19 + 8) = v16;
        v13 = v30;
      }

      else
      {
        *(a1 + 32) = v20 + 1;
        v17 = *&v14[2 * v20 + 2];
      }

      v12 = sub_27680B6EC(a3, v17, v13);
      v30 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        continue;
      }

      goto LABEL_22;
    }

    if (v8 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v24 = *(a1 + 48);
      if (!v24)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x277C9BA50](v25);
        LODWORD(v24) = v26;
        *(a1 + 48) = v26;
        v5 = v30;
      }

      v11 = sub_27680C3D8(a3, v24, v5);
      goto LABEL_44;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_44:
    v30 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v30;
}

unsigned __int8 *TSD::UngroupGroupCommandArchive::_InternalSerialize(TSD::UngroupGroupCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 8);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = a2 + 3;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          a2[2] = v18;
          v17 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v16;
        v17 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v15, v17, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(this + 7);
    *a2 = 26;
    v22 = *(v21 + 5);
    if (v22 > 0x7F)
    {
      a2[1] = v22 | 0x80;
      v24 = v22 >> 7;
      if (v22 >> 14)
      {
        v23 = a2 + 3;
        do
        {
          *(v23 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          ++v23;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(v23 - 1) = v25;
      }

      else
      {
        a2[2] = v24;
        v23 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v22;
      v23 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::UngroupGroupCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[6]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if ((this[2] & 2) != 0)
  {
    v11 = TSP::Reference::ByteSizeLong(this[7]);
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSD::UngroupGroupCommandArchive::MergeFrom(TSD::UngroupGroupCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::UngroupGroupCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::UngroupGroupCommandArchive::MergeFrom(uint64_t this, const TSD::UngroupGroupCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27676CA94(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C9BA50](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v14 = *(v3 + 56);
      if (!v14)
      {
        v15 = *(v3 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C9BB20](v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v14, v16);
    }
  }

  return this;
}

uint64_t *TSD::UngroupGroupCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::UngroupGroupCommandArchive::Clear(this);

    return TSD::UngroupGroupCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::UngroupGroupCommandArchive::CopyFrom(uint64_t *this, const TSD::UngroupGroupCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::UngroupGroupCommandArchive::Clear(this);

    return TSD::UngroupGroupCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::UngroupGroupCommandArchive::IsInitialized(TSD::UngroupGroupCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::UngroupGroupCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v7 = this[3].n128_u64[0];
  v8 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = v8;
  return result;
}

TSK::CommandArchive *TSD::ContainerRemoveChildrenCommandArchive::clear_super(TSD::ContainerRemoveChildrenCommandArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSD::ContainerRemoveChildrenCommandArchive::clear_container_id_path(TSD::ContainerRemoveChildrenCommandArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TSD::ContainerRemoveChildrenCommandArchive::clear_args_list(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::RemoveIdOperationArgs::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t TSD::ContainerRemoveChildrenCommandArchive::clear_children(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TSD::ContainerRemoveChildrenCommandArchive *TSD::ContainerRemoveChildrenCommandArchive::ContainerRemoveChildrenCommandArchive(TSD::ContainerRemoveChildrenCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288579CA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_ContainerRemoveChildrenCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  return this;
}

void sub_2767CA78C(_Unwind_Exception *a1)
{
  sub_27676C890(v2);
  sub_276802394(v1);
  _Unwind_Resume(a1);
}

TSD::ContainerRemoveChildrenCommandArchive *TSD::ContainerRemoveChildrenCommandArchive::ContainerRemoveChildrenCommandArchive(TSD::ContainerRemoveChildrenCommandArchive *this, const TSD::ContainerRemoveChildrenCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288579CA8;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_276802418(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_27676CA94(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 1);
  if (v15)
  {
    sub_27670B0F8(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v16 = *(a2 + 4);
  if (v16)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v16 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  return this;
}

void sub_2767CA974(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v3, 0x10A1C40290C9B23);
  sub_27676C890(v2);
  sub_276802394((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::ContainerRemoveChildrenCommandArchive::~ContainerRemoveChildrenCommandArchive(TSD::ContainerRemoveChildrenCommandArchive *this)
{
  if (this != &TSD::_ContainerRemoveChildrenCommandArchive_default_instance_)
  {
    if (*(this + 9))
    {
      v2 = MEMORY[0x277C9B420]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
    }

    if (*(this + 10))
    {
      v3 = MEMORY[0x277C9B7C0]();
      MEMORY[0x277C9C1D0](v3, 0x10A1C40290C9B23);
    }
  }

  sub_2766FFE58(this + 1);
  sub_27676C890(this + 6);
  sub_276802394(this + 3);
}

{
  TSD::ContainerRemoveChildrenCommandArchive::~ContainerRemoveChildrenCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::ContainerRemoveChildrenCommandArchive::default_instance(TSD::ContainerRemoveChildrenCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ContainerRemoveChildrenCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ContainerRemoveChildrenCommandArchive_default_instance_;
}

uint64_t *TSD::ContainerRemoveChildrenCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::RemoveIdOperationArgs::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      this = TSK::CommandArchive::Clear(*(v1 + 72));
    }

    if ((v8 & 2) != 0)
    {
      this = TSP::UUIDPath::Clear(*(v1 + 80));
    }
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_27670B144(v9);
  }

  return this;
}

google::protobuf::internal *TSD::ContainerRemoveChildrenCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  while (1)
  {
LABEL_2:
    if (sub_27670AF08(a3, &v39))
    {
      return v39;
    }

    v5 = (v39 + 1);
    v6 = *v39;
    if ((*v39 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v39 + 2);
LABEL_6:
      v39 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v7 - 128));
    v39 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v37;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_53;
        }

        v14 = v5 - 1;
        while (1)
        {
          v15 = (v14 + 1);
          v39 = (v14 + 1);
          v16 = *(a1 + 64);
          if (!v16)
          {
            goto LABEL_24;
          }

          v22 = *(a1 + 56);
          v17 = *v16;
          if (v22 < *v16)
          {
            *(a1 + 56) = v22 + 1;
            v19 = *&v16[2 * v22 + 2];
            goto LABEL_28;
          }

          if (v17 == *(a1 + 60))
          {
LABEL_24:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v16 = *(a1 + 64);
            v17 = *v16;
          }

          *v16 = v17 + 1;
          v18 = MEMORY[0x277C9BB20](*(a1 + 48));
          LODWORD(v19) = v18;
          v20 = *(a1 + 56);
          v21 = *(a1 + 64) + 8 * v20;
          *(a1 + 56) = v20 + 1;
          *(v21 + 8) = v18;
          v15 = v39;
LABEL_28:
          v14 = sub_27680B6EC(a3, v19, v15);
          v39 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 34)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 26)
      {
        goto LABEL_53;
      }

      v26 = v5 - 1;
      while (1)
      {
        v27 = (v26 + 1);
        v39 = (v26 + 1);
        v28 = *(a1 + 40);
        if (!v28)
        {
          goto LABEL_43;
        }

        v34 = *(a1 + 32);
        v29 = *v28;
        if (v34 < *v28)
        {
          *(a1 + 32) = v34 + 1;
          v31 = *&v28[2 * v34 + 2];
          goto LABEL_47;
        }

        if (v29 == *(a1 + 36))
        {
LABEL_43:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v28 = *(a1 + 40);
          v29 = *v28;
        }

        *v28 = v29 + 1;
        v30 = MEMORY[0x277C9BB60](*(a1 + 24));
        LODWORD(v31) = v30;
        v32 = *(a1 + 32);
        v33 = *(a1 + 40) + 8 * v32;
        *(a1 + 32) = v32 + 1;
        *(v33 + 8) = v30;
        v27 = v39;
LABEL_47:
        v26 = sub_27680EBD0(a3, v31, v27);
        v39 = v26;
        if (!v26)
        {
          return 0;
        }

        if (*a3 <= v26 || *v26 != 26)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 1)
    {
      if (v6 == 10)
      {
        *(a1 + 16) |= 1u;
        v23 = *(a1 + 72);
        if (!v23)
        {
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C9BA50](v24);
          LODWORD(v23) = v25;
          *(a1 + 72) = v25;
          v5 = v39;
        }

        v13 = sub_27680C3D8(a3, v23, v5);
        goto LABEL_60;
      }
    }

    else if (v8 == 2 && v6 == 18)
    {
      *(a1 + 16) |= 2u;
      v10 = *(a1 + 80);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C9BB10](v11);
        LODWORD(v10) = v12;
        *(a1 + 80) = v12;
        v5 = v39;
      }

      v13 = sub_27680EB00(a3, v10, v5);
      goto LABEL_60;
    }

LABEL_53:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_60:
    v39 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v39;
}

unsigned __int8 *TSD::ContainerRemoveChildrenCommandArchive::_InternalSerialize(TSD::ContainerRemoveChildrenCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 9);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 10);
    *a2 = 18;
    v14 = *(v13 + 10);
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = a2 + 3;
        do
        {
          *(v15 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v15;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v15 - 1) = v17;
      }

      else
      {
        a2[2] = v16;
        v15 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v14;
      v15 = a2 + 2;
    }

    a2 = TSP::UUIDPath::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(this + 8);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
      v22 = *(v21 + 5);
      if (v22 > 0x7F)
      {
        a2[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = a2 + 3;
          do
          {
            *(v23 - 1) = v24 | 0x80;
            v25 = v24 >> 7;
            ++v23;
            v26 = v24 >> 14;
            v24 >>= 7;
          }

          while (v26);
          *(v23 - 1) = v25;
        }

        else
        {
          a2[2] = v24;
          v23 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v22;
        v23 = a2 + 2;
      }

      a2 = TSCK::RemoveIdOperationArgs::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 14);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(this + 8) + 8 * j + 8);
      *a2 = 34;
      v30 = *(v29 + 5);
      if (v30 > 0x7F)
      {
        a2[1] = v30 | 0x80;
        v32 = v30 >> 7;
        if (v30 >> 14)
        {
          v31 = a2 + 3;
          do
          {
            *(v31 - 1) = v32 | 0x80;
            v33 = v32 >> 7;
            ++v31;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
          *(v31 - 1) = v33;
        }

        else
        {
          a2[2] = v32;
          v31 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v30;
        v31 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v35 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ContainerRemoveChildrenCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[9]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSCK::RemoveIdOperationArgs::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = this[8];
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = TSP::Reference::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  if ((this[2] & 2) != 0)
  {
    v18 = TSP::UUIDPath::ByteSizeLong(this[10]);
    v12 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

uint64_t TSD::ContainerRemoveChildrenCommandArchive::MergeFrom(TSD::ContainerRemoveChildrenCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ContainerRemoveChildrenCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ContainerRemoveChildrenCommandArchive::MergeFrom(uint64_t this, const TSD::ContainerRemoveChildrenCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276802418(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_27676CA94(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      *(v3 + 16) |= 1u;
      v16 = *(v3 + 72);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C9BA50](v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 9))
      {
        v18 = *(a2 + 9);
      }

      else
      {
        v18 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v16, v18);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v19 = *(v3 + 80);
      if (!v19)
      {
        v20 = *(v3 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277C9BB10](v20);
        *(v3 + 80) = v19;
      }

      if (*(a2 + 10))
      {
        v21 = *(a2 + 10);
      }

      else
      {
        v21 = MEMORY[0x277D80A10];
      }

      return TSP::UUIDPath::MergeFrom(v19, v21);
    }
  }

  return this;
}

uint64_t *TSD::ContainerRemoveChildrenCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerRemoveChildrenCommandArchive::Clear(this);

    return TSD::ContainerRemoveChildrenCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ContainerRemoveChildrenCommandArchive::CopyFrom(uint64_t *this, const TSD::ContainerRemoveChildrenCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerRemoveChildrenCommandArchive::Clear(this);

    return TSD::ContainerRemoveChildrenCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ContainerRemoveChildrenCommandArchive::IsInitialized(TSD::ContainerRemoveChildrenCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSCK::RemoveIdOperationArgs::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 4);
  if (v9)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 2) == 0)
  {
    return 1;
  }

  result = TSP::UUIDPath::IsInitialized(*(this + 10));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::ContainerRemoveChildrenCommandArchive::InternalSwap(TSD::ContainerRemoveChildrenCommandArchive *this, TSD::ContainerRemoveChildrenCommandArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 9);
  v10 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  return result;
}

TSD::ContainerRemoveDrawablesCommandArchive *TSD::ContainerRemoveDrawablesCommandArchive::ContainerRemoveDrawablesCommandArchive(TSD::ContainerRemoveDrawablesCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288579D58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ContainerRemoveDrawablesCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288579D58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ContainerRemoveDrawablesCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::ContainerRemoveDrawablesCommandArchive *TSD::ContainerRemoveDrawablesCommandArchive::ContainerRemoveDrawablesCommandArchive(TSD::ContainerRemoveDrawablesCommandArchive *this, const TSD::ContainerRemoveDrawablesCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288579D58;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSD::ContainerRemoveDrawablesCommandArchive::~ContainerRemoveDrawablesCommandArchive(TSD::ContainerRemoveDrawablesCommandArchive *this)
{
  if (this != &TSD::_ContainerRemoveDrawablesCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::ContainerRemoveChildrenCommandArchive::~ContainerRemoveChildrenCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ContainerRemoveDrawablesCommandArchive::~ContainerRemoveDrawablesCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ContainerRemoveDrawablesCommandArchive::default_instance(TSD::ContainerRemoveDrawablesCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ContainerRemoveDrawablesCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ContainerRemoveDrawablesCommandArchive_default_instance_;
}

uint64_t *TSD::ContainerRemoveDrawablesCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::ContainerRemoveChildrenCommandArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::ContainerRemoveDrawablesCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_27670AF08(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::ContainerRemoveChildrenCommandArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_27680ECA0(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *TSD::ContainerRemoveDrawablesCommandArchive::_InternalSerialize(TSD::ContainerRemoveDrawablesCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSD::ContainerRemoveChildrenCommandArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ContainerRemoveDrawablesCommandArchive::ByteSizeLong(TSK::CommandArchive ***this)
{
  if (this[2])
  {
    v3 = TSD::ContainerRemoveChildrenCommandArchive::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::ContainerRemoveDrawablesCommandArchive::MergeFrom(TSD::ContainerRemoveDrawablesCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ContainerRemoveDrawablesCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ContainerRemoveDrawablesCommandArchive::MergeFrom(uint64_t this, const TSD::ContainerRemoveDrawablesCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::ContainerRemoveChildrenCommandArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSD::_ContainerRemoveChildrenCommandArchive_default_instance_;
    }

    return TSD::ContainerRemoveChildrenCommandArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::ContainerRemoveDrawablesCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerRemoveDrawablesCommandArchive::Clear(this);

    return TSD::ContainerRemoveDrawablesCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ContainerRemoveDrawablesCommandArchive::CopyFrom(uint64_t *this, const TSD::ContainerRemoveDrawablesCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerRemoveDrawablesCommandArchive::Clear(this);

    return TSD::ContainerRemoveDrawablesCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ContainerRemoveDrawablesCommandArchive::IsInitialized(TSD::ContainerRemoveChildrenCommandArchive **this)
{
  if (this[2])
  {
    return TSD::ContainerRemoveChildrenCommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::ContainerRemoveDrawablesCommandArchive::InternalSwap(TSD::ContainerRemoveDrawablesCommandArchive *this, TSD::ContainerRemoveDrawablesCommandArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSK::CommandArchive *TSD::ContainerInsertChildrenCommandArchive::clear_super(TSD::ContainerInsertChildrenCommandArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSD::ContainerInsertChildrenCommandArchive::clear_container_id_path(TSD::ContainerInsertChildrenCommandArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TSD::ContainerInsertChildrenCommandArchive::clear_children(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t TSD::ContainerInsertChildrenCommandArchive::clear_args_list(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::AddIdOperationArgs::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

uint64_t TSD::ContainerInsertChildrenCommandArchive::clear_custom_format_keys(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 88) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

TSP::Reference *TSD::ContainerInsertChildrenCommandArchive::clear_undo_object(TSD::ContainerInsertChildrenCommandArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::ContainerInsertChildrenCommandArchive *TSD::ContainerInsertChildrenCommandArchive::ContainerInsertChildrenCommandArchive(TSD::ContainerInsertChildrenCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288579E08;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 9) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (atomic_load_explicit(scc_info_ContainerInsertChildrenCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  return this;
}

void sub_2767CC254(_Unwind_Exception *a1)
{
  sub_27680255C(v3);
  sub_2768024D8(v2);
  sub_27676C890(v1);
  _Unwind_Resume(a1);
}

TSD::ContainerInsertChildrenCommandArchive *TSD::ContainerInsertChildrenCommandArchive::ContainerInsertChildrenCommandArchive(TSD::ContainerInsertChildrenCommandArchive *this, const TSD::ContainerInsertChildrenCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288579E08;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27676CA94(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_2768025E0(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_2768026A0(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 1);
  if (v20)
  {
    sub_27670B0F8(v4, (v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v21 = *(a2 + 4);
  if (v21)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v21 & 2) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v21 & 4) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  return this;
}

void sub_2767CC4F0(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v4, 0x1081C407D3F2757);
  sub_27680255C(v3);
  sub_2768024D8(v2);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::ContainerInsertChildrenCommandArchive::~ContainerInsertChildrenCommandArchive(TSD::ContainerInsertChildrenCommandArchive *this)
{
  if (this != &TSD::_ContainerInsertChildrenCommandArchive_default_instance_)
  {
    if (*(this + 12))
    {
      v2 = MEMORY[0x277C9B420]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
    }

    if (*(this + 13))
    {
      v3 = MEMORY[0x277C9B7C0]();
      MEMORY[0x277C9C1D0](v3, 0x10A1C40290C9B23);
    }

    v4 = *(this + 14);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  sub_27680255C(this + 9);
  sub_2768024D8(this + 6);
  sub_27676C890(this + 3);
}

{
  TSD::ContainerInsertChildrenCommandArchive::~ContainerInsertChildrenCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::ContainerInsertChildrenCommandArchive::default_instance(TSD::ContainerInsertChildrenCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ContainerInsertChildrenCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ContainerInsertChildrenCommandArchive_default_instance_;
}

uint64_t *TSD::ContainerInsertChildrenCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      this = TSCK::AddIdOperationArgs::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      this = TSP::UUID::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 7) != 0)
  {
    if (v11)
    {
      this = TSK::CommandArchive::Clear(*(v1 + 96));
      if ((v11 & 2) == 0)
      {
LABEL_16:
        if ((v11 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

    this = TSP::UUIDPath::Clear(*(v1 + 104));
    if ((v11 & 4) != 0)
    {
LABEL_17:
      this = TSP::Reference::Clear(*(v1 + 112));
    }
  }

LABEL_18:
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_27670B144(v12);
  }

  return this;
}

google::protobuf::internal *TSD::ContainerInsertChildrenCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v51 = a2;
  while (1)
  {
LABEL_2:
    if (sub_27670AF08(a3, &v51))
    {
      return v51;
    }

    v5 = (v51 + 1);
    v6 = *v51;
    if ((*v51 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v51 + 2);
LABEL_6:
      v51 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v51, (v7 - 128));
    v51 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v49;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 3)
    {
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          if (v8 == 6 && v6 == 50)
          {
            *(a1 + 16) |= 4u;
            v19 = *(a1 + 112);
            if (!v19)
            {
              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x277C9BB20](v20);
              LODWORD(v19) = v21;
              *(a1 + 112) = v21;
              v5 = v51;
            }

            v22 = sub_27680B6EC(a3, v19, v5);
            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v6 != 42)
        {
          goto LABEL_74;
        }

        v38 = v5 - 1;
        while (1)
        {
          v39 = (v38 + 1);
          v51 = (v38 + 1);
          v40 = *(a1 + 88);
          if (!v40)
          {
            goto LABEL_64;
          }

          v46 = *(a1 + 80);
          v41 = *v40;
          if (v46 < *v40)
          {
            *(a1 + 80) = v46 + 1;
            v43 = *&v40[2 * v46 + 2];
            goto LABEL_68;
          }

          if (v41 == *(a1 + 84))
          {
LABEL_64:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v40 = *(a1 + 88);
            v41 = *v40;
          }

          *v40 = v41 + 1;
          v42 = MEMORY[0x277C9BAE0](*(a1 + 72));
          LODWORD(v43) = v42;
          v44 = *(a1 + 80);
          v45 = *(a1 + 88) + 8 * v44;
          *(a1 + 80) = v44 + 1;
          *(v45 + 8) = v42;
          v39 = v51;
LABEL_68:
          v38 = sub_27680C988(a3, v43, v39);
          v51 = v38;
          if (!v38)
          {
            return 0;
          }

          if (*a3 <= v38 || *v38 != 42)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 34)
      {
        goto LABEL_74;
      }

      v26 = v5 - 1;
      while (1)
      {
        v27 = (v26 + 1);
        v51 = (v26 + 1);
        v28 = *(a1 + 64);
        if (!v28)
        {
          goto LABEL_45;
        }

        v34 = *(a1 + 56);
        v29 = *v28;
        if (v34 < *v28)
        {
          *(a1 + 56) = v34 + 1;
          v31 = *&v28[2 * v34 + 2];
          goto LABEL_49;
        }

        if (v29 == *(a1 + 60))
        {
LABEL_45:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v28 = *(a1 + 64);
          v29 = *v28;
        }

        *v28 = v29 + 1;
        v30 = MEMORY[0x277C9BB50](*(a1 + 48));
        LODWORD(v31) = v30;
        v32 = *(a1 + 56);
        v33 = *(a1 + 64) + 8 * v32;
        *(a1 + 56) = v32 + 1;
        *(v33 + 8) = v30;
        v27 = v51;
LABEL_49:
        v26 = sub_27680ED70(a3, v31, v27);
        v51 = v26;
        if (!v26)
        {
          return 0;
        }

        if (*a3 <= v26 || *v26 != 34)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 1)
    {
      if (v6 == 10)
      {
        *(a1 + 16) |= 1u;
        v23 = *(a1 + 96);
        if (!v23)
        {
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C9BA50](v24);
          LODWORD(v23) = v25;
          *(a1 + 96) = v25;
          v5 = v51;
        }

        v22 = sub_27680C3D8(a3, v23, v5);
        goto LABEL_81;
      }
    }

    else
    {
      if (v8 != 2)
      {
        if (v8 != 3 || v6 != 26)
        {
          goto LABEL_74;
        }

        v10 = v5 - 1;
        while (1)
        {
          v11 = (v10 + 1);
          v51 = (v10 + 1);
          v12 = *(a1 + 40);
          if (!v12)
          {
            goto LABEL_17;
          }

          v18 = *(a1 + 32);
          v13 = *v12;
          if (v18 < *v12)
          {
            *(a1 + 32) = v18 + 1;
            v15 = *&v12[2 * v18 + 2];
            goto LABEL_21;
          }

          if (v13 == *(a1 + 36))
          {
LABEL_17:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v12 = *(a1 + 40);
            v13 = *v12;
          }

          *v12 = v13 + 1;
          v14 = MEMORY[0x277C9BB20](*(a1 + 24));
          LODWORD(v15) = v14;
          v16 = *(a1 + 32);
          v17 = *(a1 + 40) + 8 * v16;
          *(a1 + 32) = v16 + 1;
          *(v17 + 8) = v14;
          v11 = v51;
LABEL_21:
          v10 = sub_27680B6EC(a3, v15, v11);
          v51 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 26)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 == 18)
      {
        *(a1 + 16) |= 2u;
        v35 = *(a1 + 104);
        if (!v35)
        {
          v36 = *(a1 + 8);
          if (v36)
          {
            v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
          }

          v37 = MEMORY[0x277C9BB10](v36);
          LODWORD(v35) = v37;
          *(a1 + 104) = v37;
          v5 = v51;
        }

        v22 = sub_27680EB00(a3, v35, v5);
        goto LABEL_81;
      }
    }

LABEL_74:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v22 = google::protobuf::internal::UnknownFieldParse();
LABEL_81:
    v51 = v22;
    if (!v22)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v51;
}

unsigned __int8 *TSD::ContainerInsertChildrenCommandArchive::_InternalSerialize(TSD::ContainerInsertChildrenCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 12);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 13);
    *a2 = 18;
    v14 = *(v13 + 10);
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = a2 + 3;
        do
        {
          *(v15 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v15;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v15 - 1) = v17;
      }

      else
      {
        a2[2] = v16;
        v15 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v14;
      v15 = a2 + 2;
    }

    a2 = TSP::UUIDPath::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(this + 8);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
      v22 = *(v21 + 5);
      if (v22 > 0x7F)
      {
        a2[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = a2 + 3;
          do
          {
            *(v23 - 1) = v24 | 0x80;
            v25 = v24 >> 7;
            ++v23;
            v26 = v24 >> 14;
            v24 >>= 7;
          }

          while (v26);
          *(v23 - 1) = v25;
        }

        else
        {
          a2[2] = v24;
          v23 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v22;
        v23 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 14);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(this + 8) + 8 * j + 8);
      *a2 = 34;
      v30 = *(v29 + 5);
      if (v30 > 0x7F)
      {
        a2[1] = v30 | 0x80;
        v32 = v30 >> 7;
        if (v30 >> 14)
        {
          v31 = a2 + 3;
          do
          {
            *(v31 - 1) = v32 | 0x80;
            v33 = v32 >> 7;
            ++v31;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
          *(v31 - 1) = v33;
        }

        else
        {
          a2[2] = v32;
          v31 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v30;
        v31 = a2 + 2;
      }

      a2 = TSCK::AddIdOperationArgs::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(this + 20);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v37 = *(*(this + 11) + 8 * k + 8);
      *a2 = 42;
      v38 = *(v37 + 5);
      if (v38 > 0x7F)
      {
        a2[1] = v38 | 0x80;
        v40 = v38 >> 7;
        if (v38 >> 14)
        {
          v39 = a2 + 3;
          do
          {
            *(v39 - 1) = v40 | 0x80;
            v41 = v40 >> 7;
            ++v39;
            v42 = v40 >> 14;
            v40 >>= 7;
          }

          while (v42);
          *(v39 - 1) = v41;
        }

        else
        {
          a2[2] = v40;
          v39 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v38;
        v39 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v37, v39, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v43 = *(this + 14);
    *a2 = 50;
    v44 = *(v43 + 5);
    if (v44 > 0x7F)
    {
      a2[1] = v44 | 0x80;
      v46 = v44 >> 7;
      if (v44 >> 14)
      {
        v45 = a2 + 3;
        do
        {
          *(v45 - 1) = v46 | 0x80;
          v47 = v46 >> 7;
          ++v45;
          v48 = v46 >> 14;
          v46 >>= 7;
        }

        while (v48);
        *(v45 - 1) = v47;
      }

      else
      {
        a2[2] = v46;
        v45 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v44;
      v45 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v43, v45, a3);
  }

  v49 = *(this + 1);
  if ((v49 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v49 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ContainerInsertChildrenCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[12]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = this[8];
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = TSCK::AddIdOperationArgs::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 20);
  v19 = v12 + v18;
  v20 = this[11];
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = TSP::UUID::ByteSizeLong(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(this + 4);
  if ((v25 & 6) != 0)
  {
    if ((v25 & 2) != 0)
    {
      v26 = TSP::UUIDPath::ByteSizeLong(this[13]);
      v19 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v25 & 4) != 0)
    {
      v27 = TSP::Reference::ByteSizeLong(this[14]);
      v19 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v19;
    return v19;
  }
}

uint64_t TSD::ContainerInsertChildrenCommandArchive::MergeFrom(TSD::ContainerInsertChildrenCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ContainerInsertChildrenCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ContainerInsertChildrenCommandArchive::MergeFrom(uint64_t this, const TSD::ContainerInsertChildrenCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27676CA94(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_2768025E0(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_2768026A0(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 4);
  if ((v20 & 7) != 0)
  {
    if (v20)
    {
      *(v3 + 16) |= 1u;
      v21 = *(v3 + 96);
      if (!v21)
      {
        v22 = *(v3 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x277C9BA50](v22);
        *(v3 + 96) = v21;
      }

      if (*(a2 + 12))
      {
        v23 = *(a2 + 12);
      }

      else
      {
        v23 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v21, v23);
      if ((v20 & 2) == 0)
      {
LABEL_15:
        if ((v20 & 4) == 0)
        {
          return this;
        }

        goto LABEL_33;
      }
    }

    else if ((v20 & 2) == 0)
    {
      goto LABEL_15;
    }

    *(v3 + 16) |= 2u;
    v24 = *(v3 + 104);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C9BB10](v25);
      *(v3 + 104) = v24;
    }

    if (*(a2 + 13))
    {
      v26 = *(a2 + 13);
    }

    else
    {
      v26 = MEMORY[0x277D80A10];
    }

    this = TSP::UUIDPath::MergeFrom(v24, v26);
    if ((v20 & 4) != 0)
    {
LABEL_33:
      *(v3 + 16) |= 4u;
      v27 = *(v3 + 112);
      if (!v27)
      {
        v28 = *(v3 + 8);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = MEMORY[0x277C9BB20](v28);
        *(v3 + 112) = v27;
      }

      if (*(a2 + 14))
      {
        v29 = *(a2 + 14);
      }

      else
      {
        v29 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v27, v29);
    }
  }

  return this;
}

uint64_t *TSD::ContainerInsertChildrenCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerInsertChildrenCommandArchive::Clear(this);

    return TSD::ContainerInsertChildrenCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ContainerInsertChildrenCommandArchive::CopyFrom(uint64_t *this, const TSD::ContainerInsertChildrenCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerInsertChildrenCommandArchive::Clear(this);

    return TSD::ContainerInsertChildrenCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ContainerInsertChildrenCommandArchive::IsInitialized(TSD::ContainerInsertChildrenCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSCK::AddIdOperationArgs::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 20);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::UUID::IsInitialized(*(*(this + 11) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(this + 4);
  if (v12)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v12 = *(this + 4);
  }

  if ((v12 & 2) != 0)
  {
    result = TSP::UUIDPath::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v12 = *(this + 4);
  }

  if ((v12 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 14));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::ContainerInsertChildrenCommandArchive::InternalSwap(TSD::ContainerInsertChildrenCommandArchive *this, TSD::ContainerInsertChildrenCommandArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v11 = *(this + 12);
  v12 = *(this + 13);
  result = *(a2 + 6);
  *(this + 6) = result;
  *(a2 + 12) = v11;
  *(a2 + 13) = v12;
  v14 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v14;
  return result;
}

uint64_t TSD::ContainerInsertDrawablesCommandArchive::clear_drawables(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSD::ContainerInsertDrawablesCommandArchive *TSD::ContainerInsertDrawablesCommandArchive::ContainerInsertDrawablesCommandArchive(TSD::ContainerInsertDrawablesCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288579EB8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ContainerInsertDrawablesCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSD::ContainerInsertDrawablesCommandArchive *TSD::ContainerInsertDrawablesCommandArchive::ContainerInsertDrawablesCommandArchive(TSD::ContainerInsertDrawablesCommandArchive *this, const TSD::ContainerInsertDrawablesCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288579EB8;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27676CA94(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_27670B0F8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_2767CDA00(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x10A1C40F8006E37);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::ContainerInsertDrawablesCommandArchive::~ContainerInsertDrawablesCommandArchive(TSD::ContainerInsertDrawablesCommandArchive *this)
{
  if (this != &TSD::_ContainerInsertDrawablesCommandArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSD::ContainerInsertChildrenCommandArchive::~ContainerInsertChildrenCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  sub_27676C890(this + 3);
}

{
  TSD::ContainerInsertDrawablesCommandArchive::~ContainerInsertDrawablesCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::ContainerInsertDrawablesCommandArchive::default_instance(TSD::ContainerInsertDrawablesCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ContainerInsertDrawablesCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ContainerInsertDrawablesCommandArchive_default_instance_;
}

uint64_t *TSD::ContainerInsertDrawablesCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSD::ContainerInsertChildrenCommandArchive::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_27670B144(v5);
  }

  return this;
}

google::protobuf::internal *TSD::ContainerInsertDrawablesCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while (1)
  {
LABEL_2:
    if (sub_27670AF08(a3, &v25))
    {
      return v25;
    }

    v5 = (v25 + 1);
    v6 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v25 + 2);
LABEL_6:
      v25 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v7 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v23;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = v5 - 1;
      while (1)
      {
        v12 = (v11 + 1);
        v25 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v19 = *(a1 + 32);
        v14 = *v13;
        if (v19 < *v13)
        {
          *(a1 + 32) = v19 + 1;
          v16 = *&v13[2 * v19 + 2];
          goto LABEL_26;
        }

        if (v14 == *(a1 + 36))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v13 = *(a1 + 40);
          v14 = *v13;
        }

        *v13 = v14 + 1;
        v15 = MEMORY[0x277C9BB20](*(a1 + 24));
        LODWORD(v16) = v15;
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v15;
        v12 = v25;
LABEL_26:
        v11 = sub_27680B6EC(a3, v16, v12);
        v25 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      inserted = *(a1 + 48);
      if (!inserted)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        inserted = google::protobuf::Arena::CreateMaybeMessage<TSD::ContainerInsertChildrenCommandArchive>(v21);
        *(a1 + 48) = inserted;
        v5 = v25;
      }

      v10 = sub_27680EE40(a3, inserted, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v25 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v25;
}

unsigned __int8 *TSD::ContainerInsertDrawablesCommandArchive::_InternalSerialize(TSD::ContainerInsertDrawablesCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSD::ContainerInsertChildrenCommandArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v14, v16, a3);
    }
  }

  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ContainerInsertDrawablesCommandArchive::ByteSizeLong(TSK::CommandArchive ***this)
{
  if (this[2])
  {
    v3 = TSD::ContainerInsertChildrenCommandArchive::ByteSizeLong(this[6]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSD::ContainerInsertDrawablesCommandArchive::MergeFrom(TSD::ContainerInsertDrawablesCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ContainerInsertDrawablesCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ContainerInsertDrawablesCommandArchive::MergeFrom(uint64_t this, const TSD::ContainerInsertDrawablesCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27676CA94(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    inserted = *(v3 + 48);
    if (!inserted)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      inserted = google::protobuf::Arena::CreateMaybeMessage<TSD::ContainerInsertChildrenCommandArchive>(v12);
      *(v3 + 48) = inserted;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &TSD::_ContainerInsertChildrenCommandArchive_default_instance_;
    }

    return TSD::ContainerInsertChildrenCommandArchive::MergeFrom(inserted, v13);
  }

  return this;
}

uint64_t *TSD::ContainerInsertDrawablesCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerInsertDrawablesCommandArchive::Clear(this);

    return TSD::ContainerInsertDrawablesCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ContainerInsertDrawablesCommandArchive::CopyFrom(uint64_t *this, const TSD::ContainerInsertDrawablesCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerInsertDrawablesCommandArchive::Clear(this);

    return TSD::ContainerInsertDrawablesCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ContainerInsertDrawablesCommandArchive::IsInitialized(TSD::ContainerInsertDrawablesCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSD::ContainerInsertChildrenCommandArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::ContainerInsertDrawablesCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

TSK::CommandArchive *TSD::ContainerReorderChildrenCommandArchive::clear_super(TSD::ContainerReorderChildrenCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSD::ContainerReorderChildrenCommandArchive::clear_container_id_path(TSD::ContainerReorderChildrenCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t TSD::ContainerReorderChildrenCommandArchive::clear_args_list(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::RearrangeIdOperationArgs::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSD::ContainerReorderChildrenCommandArchive *TSD::ContainerReorderChildrenCommandArchive::ContainerReorderChildrenCommandArchive(TSD::ContainerReorderChildrenCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288579F68;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ContainerReorderChildrenCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TSD::ContainerReorderChildrenCommandArchive *TSD::ContainerReorderChildrenCommandArchive::ContainerReorderChildrenCommandArchive(TSD::ContainerReorderChildrenCommandArchive *this, const TSD::ContainerReorderChildrenCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288579F68;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_2768027E4(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_27670B0F8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v11 = *(a2 + 4);
  if (v11)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  return this;
}

void sub_2767CE6A4(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x10A1C40290C9B23);
  sub_276802760((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::ContainerReorderChildrenCommandArchive::~ContainerReorderChildrenCommandArchive(TSD::ContainerReorderChildrenCommandArchive *this)
{
  if (this != &TSD::_ContainerReorderChildrenCommandArchive_default_instance_)
  {
    if (*(this + 6))
    {
      v2 = MEMORY[0x277C9B420]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
    }

    if (*(this + 7))
    {
      v3 = MEMORY[0x277C9B7C0]();
      MEMORY[0x277C9C1D0](v3, 0x10A1C40290C9B23);
    }
  }

  sub_2766FFE58(this + 1);
  sub_276802760(this + 3);
}

{
  TSD::ContainerReorderChildrenCommandArchive::~ContainerReorderChildrenCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::ContainerReorderChildrenCommandArchive::default_instance(TSD::ContainerReorderChildrenCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ContainerReorderChildrenCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ContainerReorderChildrenCommandArchive_default_instance_;
}

uint64_t *TSD::ContainerReorderChildrenCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::RearrangeIdOperationArgs::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSK::CommandArchive::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSP::UUIDPath::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27670B144(v6);
  }

  return this;
}

google::protobuf::internal *TSD::ContainerReorderChildrenCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  while (1)
  {
LABEL_2:
    if (sub_27670AF08(a3, &v30))
    {
      return v30;
    }

    v5 = (v30 + 1);
    v6 = *v30;
    if ((*v30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v30 + 2);
LABEL_6:
      v30 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v7 - 128));
    v30 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v28;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      v15 = v5 - 1;
      while (1)
      {
        v16 = (v15 + 1);
        v30 = (v15 + 1);
        v17 = *(a1 + 40);
        if (!v17)
        {
          goto LABEL_29;
        }

        v23 = *(a1 + 32);
        v18 = *v17;
        if (v23 < *v17)
        {
          *(a1 + 32) = v23 + 1;
          v20 = *&v17[2 * v23 + 2];
          goto LABEL_33;
        }

        if (v18 == *(a1 + 36))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v17 = *(a1 + 40);
          v18 = *v17;
        }

        *v17 = v18 + 1;
        v19 = MEMORY[0x277C9BB70](*(a1 + 24));
        LODWORD(v20) = v19;
        v21 = *(a1 + 32);
        v22 = *(a1 + 40) + 8 * v21;
        *(a1 + 32) = v21 + 1;
        *(v22 + 8) = v19;
        v16 = v30;
LABEL_33:
        v15 = sub_27680EF10(a3, v20, v16);
        v30 = v15;
        if (!v15)
        {
          return 0;
        }

        if (*a3 <= v15 || *v15 != 26)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 2)
    {
      if (v6 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 56);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C9BB10](v13);
          LODWORD(v12) = v14;
          *(a1 + 56) = v14;
          v5 = v30;
        }

        v11 = sub_27680EB00(a3, v12, v5);
        goto LABEL_44;
      }
    }

    else if (v8 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v24 = *(a1 + 48);
      if (!v24)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x277C9BA50](v25);
        LODWORD(v24) = v26;
        *(a1 + 48) = v26;
        v5 = v30;
      }

      v11 = sub_27680C3D8(a3, v24, v5);
      goto LABEL_44;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_44:
    v30 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v30;
}

unsigned __int8 *TSD::ContainerReorderChildrenCommandArchive::_InternalSerialize(TSD::ContainerReorderChildrenCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 7);
    *a2 = 18;
    v14 = *(v13 + 10);
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = a2 + 3;
        do
        {
          *(v15 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v15;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v15 - 1) = v17;
      }

      else
      {
        a2[2] = v16;
        v15 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v14;
      v15 = a2 + 2;
    }

    a2 = TSP::UUIDPath::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(this + 8);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
      v22 = *(v21 + 5);
      if (v22 > 0x7F)
      {
        a2[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = a2 + 3;
          do
          {
            *(v23 - 1) = v24 | 0x80;
            v25 = v24 >> 7;
            ++v23;
            v26 = v24 >> 14;
            v24 >>= 7;
          }

          while (v26);
          *(v23 - 1) = v25;
        }

        else
        {
          a2[2] = v24;
          v23 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v22;
        v23 = a2 + 2;
      }

      a2 = TSCK::RearrangeIdOperationArgs::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ContainerReorderChildrenCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[6]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSCK::RearrangeIdOperationArgs::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if ((this[2] & 2) != 0)
  {
    v11 = TSP::UUIDPath::ByteSizeLong(this[7]);
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}