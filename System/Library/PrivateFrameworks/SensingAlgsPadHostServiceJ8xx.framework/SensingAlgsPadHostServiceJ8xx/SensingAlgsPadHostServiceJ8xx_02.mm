uint64_t PadFireflyJointNpcLcmCompensationWithDetectedPeak::estNpLcmParamsCleanLcm(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, float *a7, unsigned int a8, __n128 a9, uint64_t a10, unsigned __int8 a11, float *a12, unsigned __int8 a13)
{
  v69 = a8;
  v67 = a7;
  v17 = a9.n128_f32[0];
  v71 = a12;
  v75 = *MEMORY[0x277D85DE8];
  v20 = *(*(a1 + 208) + 20);
  MEMORY[0x28223BE20](a9);
  v22 = &v65[-v21];
  bzero(&v65[-v21], v23);
  v70 = a1;
  v24 = *(a1 + 184);
  v68 = a11;
  if (a11)
  {
    v25 = 1094;
    if (a13)
    {
      v25 = 1095;
    }

    v26 = *(v24 + v25);
    *v71 = v26;
    v27 = 1088;
    if (!a13)
    {
      v27 = 1084;
    }

    v28 = *(v24 + v27);
    *v22 = v26;
    v29 = 1;
  }

  else
  {
    v49 = 1092;
    if (a13)
    {
      v49 = 1093;
    }

    v50 = *(v24 + v49);
    *v71 = v50;
    v51 = 1076;
    if (a13)
    {
      v51 = 1080;
    }

    if (((*(a5 + 4 * v50) * *(a5 + 4 * v50)) + (*(a4 + 4 * v50) * *(a4 + 4 * v50))) <= 0.0)
    {
      goto LABEL_38;
    }

    v52 = *(v70 + 208);
    v53 = *(v52 + 80);
    v54 = (v50 - v53) & ~((v50 - v53) >> 31);
    v55 = v53 + v50;
    if ((a6 - 1) < v55)
    {
      LOBYTE(v55) = a6 - 1;
    }

    if (v55 < v54)
    {
      goto LABEL_38;
    }

    v29 = 0;
    v28 = *(v24 + v51);
    v56 = *v52;
    do
    {
      if (((*(a5 + 4 * v54) * *(a5 + 4 * v54)) + (*(a4 + 4 * v54) * *(a4 + 4 * v54))) >= v56)
      {
        v22[v29++] = v54;
      }

      LOBYTE(v54) = v54 + 1;
    }

    while (v54 <= v55);
    if (!v29)
    {
LABEL_38:
      result = 1;
      goto LABEL_49;
    }
  }

  v66 = a13;
  v31 = __sincosf_stret(v28 + v17);
  v30.n128_f32[0] = v31.__sinval;
  if (!a6)
  {
    goto LABEL_24;
  }

  v32 = 0;
  do
  {
    a2[v32] = (v31.__sinval * *(a3 + 4 * v32)) + (a2[v32] * v31.__cosval);
    *(a3 + 4 * v32++) = 0;
  }

  while (a6 > v32);
  v33 = v70;
  v34 = (*(v70 + 218) + 15) & 0x1F0;
  v35 = MEMORY[0x28223BE20](v30);
  v38 = &v65[-v37];
  v39 = 0;
  v40 = 0;
  v41 = v22[v29 - 1];
  v42 = *v22;
  v43 = a6 - 1;
  v44 = v41 + v69;
  v45 = a6 - 1 >= v41 + v69 ? v41 + v69 : a6 - 1;
  v46 = v42 - v69;
  do
  {
    if (v46 > v39 || v45 < v39)
    {
      v38[v40++] = v39;
    }

    ++v39;
  }

  while (a6 != v39);
  if (!v40)
  {
LABEL_24:
    result = 2;
    goto LABEL_49;
  }

  v71 = v36;
  if (v68 != 1 || (**(v33 + 232) & 1) == 0)
  {
    if (!PadFireflyJointNpcLcmCompensationWithDetectedPeak::estimateNpLcmParameters(v35, v38, v40, v67, a2, v74))
    {
LABEL_48:
      result = 3;
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  memcpy(v73, v67, 4 * a6);
  v47 = memcpy(v72, a2, 4 * a6);
  if (v42 <= v69)
  {
    LOBYTE(v43) = 0;
    v72[0] = 0.0;
    v73[0] = 0.0;
  }

  else
  {
    if (v44 < v43)
    {
      goto LABEL_47;
    }

    v72[v43] = 0.0;
    v73[v43] = 0.0;
  }

  v38[v40++] = v43;
LABEL_47:
  if (!PadFireflyJointNpcLcmCompensationWithDetectedPeak::estimateNpLcmParameters(v47, v38, v40, v73, v72, v74))
  {
    goto LABEL_48;
  }

LABEL_40:
  v57 = 0;
  v58 = v74[2];
  *v71 = v74[3];
  v59 = v74[0];
  v60 = v74[1];
  do
  {
    a2[v57] = a2[v57] - (v58 + ((v60 * v57) + (v59 * (v57 * v57))));
    ++v57;
  }

  while (a6 > v57);
  v61 = *(v33 + 424);
  result = 0;
  if (*(v61 + 30) == v66)
  {
    v62 = v68;
    v63 = (v61 + 12 * v68);
    *v63 = v59;
    v63[1] = v60;
    v63[2] = v58;
    *(v61 + v62 + 56) = 1;
  }

LABEL_49:
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PadFireflyJointNpcLcmCompensationWithDetectedPeak::findTouchIdx(PadFireflyJointNpcLcmCompensationWithDetectedPeak *this, float *a2, int a3, unsigned __int8 *a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      if (a2[v4] > v5)
      {
        v5 = a2[v4];
      }

      ++v4;
    }

    while (a3 > v4);
    v6 = 0;
    v7 = 0;
    v8 = fmaxf(v5 * *(*(this + 26) + 60), *(*(this + 26) + 56));
    do
    {
      if (a2[v6] > v8)
      {
        a4[v7++] = v6;
      }

      ++v6;
    }

    while (a3 > v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

uint64_t PadFireflyJointNpcLcmCompensationWithDetectedPeak::findTipIdx(PadFireflyJointNpcLcmCompensationWithDetectedPeak *this, float *a2, int a3, float a4, unsigned __int8 *a5)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0.0;
  do
  {
    if (a2[v5] >= a4 && a2[v5] > v7)
    {
      v6 = v5;
      v7 = a2[v5];
    }

    ++v5;
  }

  while (a3 != v5);
  if (v7 <= 0.0)
  {
    return 0;
  }

  v8 = *(*(this + 26) + 80);
  v9 = (v6 - v8) & ~((v6 - v8) >> 31);
  v10 = v8 + v6;
  if (a3 - 1 < v10)
  {
    LOBYTE(v10) = a3 - 1;
  }

  if (v10 >= v9)
  {
    v11 = 0;
    do
    {
      if (a2[v9] >= a4)
      {
        a5[v11++] = v9;
      }

      LOBYTE(v9) = v9 + 1;
    }

    while (v9 <= v10);
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t PadFireflyJointNpcLcmCompensationWithDetectedPeak::isTouchPresent(unint64_t this, const float *a2, int a3, const unsigned __int8 *a4, int a5, char a6)
{
  result = 0;
  if (a3 && (a6 & 1) == 0)
  {
    v8 = 0;
    v9 = *(this + 208);
    v10 = *(v9 + 68);
    LODWORD(this) = a4[a5 - 1] + v10;
    if (a3 - 1 >= this)
    {
      this = this;
    }

    else
    {
      this = (a3 - 1);
    }

    while (1)
    {
      v11 = a2[v8];
      if (v8 < *a4 - v10 || v8 > this)
      {
        if (v11 > *(v9 + 56))
        {
          return 1;
        }
      }

      else if (v11 > *(v9 + 64))
      {
        return 1;
      }

      if (a3 == ++v8)
      {
        return 0;
      }
    }
  }

  return result;
}

float PadFireflyJointNpcLcmCompensationWithDetectedPeak::gainEstimationCombinedAxis(PadFireflyJointNpcLcmCompensationWithDetectedPeak *this, float *a2, float *a3, const float *a4, const float *a5, const unsigned __int8 *a6, const unsigned __int8 *a7, int a8, float a9, float a10, unsigned __int8 a11, float *a12, float *a13, float *a14)
{
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (a11)
  {
    v17 = 0;
    do
    {
      v18 = a7[v17];
      v19 = fmaxf(a5[v18], 0.0);
      v16 = v16 + (v19 * v19);
      v15 = v15 + (v19 * a3[v18]);
      ++v17;
    }

    while (a11 > v17);
  }

  v20 = 0.0;
  if (a8)
  {
    v21 = 0;
    v14 = 0.0;
    do
    {
      v22 = a6[v21];
      v23 = fmaxf(a4[v22], 0.0);
      v20 = v20 + (v23 * v23);
      v14 = v14 + (v23 * a2[v22]);
      ++v21;
    }

    while (a8 > v21);
  }

  v24 = (a9 * a9) * v16;
  v25 = v15 * a9;
  *a12 = (v25 + v14) / (v24 + v20);
  v26 = (v20 - v24) / (v24 + v20);
  v27 = 1.0 - v26;
  v28 = v26 + 1.0;
  v29 = ((v27 * v14) - (v28 * v25)) / (((v24 * (v20 * 4.0)) / (v24 + v20)) + *(*(this + 26) + 92));
  *a13 = v27 * v29;
  result = -(v29 * v28);
  *a14 = result;
  return result;
}

BOOL PadFireflyJointNpcLcmCompensationWithDetectedPeak::estimateNpLcmParameters(PadFireflyJointNpcLcmCompensationWithDetectedPeak *this, const unsigned __int8 *a2, signed int a3, float *a4, float *a5, float *a6)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    do
    {
      v21 = a2[v8];
      v22 = a5[v21];
      v23 = v21;
      *v6.i32 = v23 * v23;
      v24 = fmaxf(a4[v21], 0.0);
      v10 = v10 + (*v6.i32 * *v6.i32);
      v11 = v11 + ((v23 * v23) * v23);
      v12 = v12 - (v24 * (v23 * v23));
      v9 = vadd_f32(v9, vdup_lane_s32(v6, 0));
      v20 = v20 + v21;
      v19 = v19 - (v24 * v21);
      v18 = v18 - v24;
      v17 = v17 + (v24 * v24);
      v16 = v16 + ((v23 * v23) * v22);
      v15 = v15 + (v21 * v22);
      v14 = v14 + v22;
      v13 = v13 - (v24 * v22);
      ++v8;
    }

    while (a3 > v8);
    v25 = a3;
  }

  else
  {
    v9 = 0;
    v20 = 0.0;
    v19 = 0.0;
    v25 = 0.0;
    v18 = 0.0;
    v17 = 0.0;
    v16 = 0.0;
    v15 = 0.0;
    v14 = 0.0;
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
    v10 = 0.0;
  }

  v35[0] = v10;
  v35[1] = v11;
  v36 = v9;
  v37 = v20;
  v38 = v25;
  v39 = v12;
  v40 = v19;
  v41 = v18;
  v42 = v17;
  __src = v16;
  *v44 = v15;
  *&v44[1] = v14;
  *&v44[2] = v13;
  if (!a3)
  {
    goto LABEL_10;
  }

  v26 = 0;
  v9.i32[0] = 0;
  v27 = 0.0;
  do
  {
    v27 = v27 + fmaxf(a4[a2[v26++]], 0.0);
  }

  while (a3 > v26);
  if (v27 > 0.0)
  {
    v28 = 4;
  }

  else
  {
LABEL_10:
    v28 = 3;
  }

  Cholesky::solveSymmetricLinearEquViaLDL(v28, v35, &__src, a4, v9.f32[0]);
  v29 = v28;
  if (__src == 0.0)
  {
    v31 = 0;
    while (v28 - 1 != v31)
    {
      v32 = *&v44[v31++];
      if (v32 != 0.0)
      {
        v30 = v31 < v28;
        goto LABEL_18;
      }
    }

    v30 = 0;
  }

  else
  {
    v30 = 1;
LABEL_18:
    memcpy(a6, &__src, 4 * v29);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t HoverCommon::applyTsThreshold(uint64_t this, const float *a2, float *a3, int a4)
{
  v4 = a4;
  if (!a3)
  {
    LOBYTE(v7) = 0;
    v13 = -1;
    v11 = -1;
    if (a4)
    {
      return this;
    }

    goto LABEL_29;
  }

  v5 = 0;
  LOWORD(v6) = 0;
  v7 = 0;
  v8 = a4 ^ 1;
  v9 = a3;
  v10 = a3 - 1;
  v11 = -1;
  v12 = -1;
  v13 = -1;
  v24 = a2;
  v25 = this;
  do
  {
    v14 = *(this + 4 * v5);
    if (v14 > 100.0)
    {
      if (v13 == 0xFFFF)
      {
        v13 = v5;
      }

      a2[v5] = v14;
      v15 = v8 & v7;
      if (v6)
      {
        v15 = v7;
      }

      if (((v6 == 0) & v4) != 0)
      {
        v12 = v5;
      }

      v14 = *(this + 4 * v5);
      v7 = (v14 >= 250.0) | v15;
      LOWORD(v6) = v6 + 1;
      v11 = v5;
    }

    if (v14 <= 100.0 || v10 == v5)
    {
      if (v14 <= 100.0)
      {
        a2[v5] = 0.0;
      }

      if ((v6 - 5) < 0xFFFCu)
      {
        v17 = 1;
      }

      else
      {
        v17 = v8;
      }

      if (((v17 | v7) & 1) == 0 && v5 >= v12)
      {
        bzero(&a2[v12], 4 * (v5 - v12) + 4);
        a2 = v24;
        this = v25;
      }

      v6 = v6 & (v6 >> 31);
    }

    ++v5;
  }

  while (v9 != v5);
  if ((v4 & 1) == 0)
  {
LABEL_29:
    if ((v13 & 0x8000) == 0 && (v11 - v13) <= 3u && (v7 & 1) == 0 && v13 <= v11)
    {
      v18 = 0;
      if (v11 >= v13)
      {
        v19 = v11 - v13;
      }

      else
      {
        v19 = 0;
      }

      v20 = (v19 + 4) & 0xFFFFFFFC;
      v21 = vdupq_n_s32(v19);
      do
      {
        v22 = v13 + v18;
        v23 = vmovn_s32(vcgeq_u32(v21, vorrq_s8(vdupq_n_s32(v18), xmmword_2655A9790)));
        if (v23.i8[0])
        {
          a2[(v13 + v18)] = 0.0;
        }

        if (v23.i8[2])
        {
          a2[(v22 + 1)] = 0.0;
        }

        if (v23.i8[4])
        {
          a2[(v22 + 2)] = 0.0;
        }

        if (v23.i8[6])
        {
          a2[(v22 + 3)] = 0.0;
        }

        v18 += 4;
      }

      while (v20 != v18);
    }
  }

  return this;
}

uint64_t HoverCommon::searchSignalSegmentsAndCentroids(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  *a2 = 0;
  v14 = (*(*a1 + 40))(a1);
  result = (*(*a3 + 40))(a3);
  v34 = result;
  if (v14)
  {
    v16 = 0;
    v17 = a1 + 32;
    v32 = a4 + 32;
    v33 = a3 + 32;
    v18 = a5 + 32;
    v19 = a6 + 32;
    do
    {
      result = (*(*v17 + 8))(v17);
      v20 = *(result + 4 * v16);
      if (v20 <= a7)
      {
        LODWORD(v23) = v16;
      }

      else
      {
        v21 = *a2 + 1;
        *a2 = v21;
        v22 = v20 * v16;
        v23 = v16 + 1;
        if (v23 >= v14)
        {
          v24 = v16;
        }

        else
        {
          result = (*(*v17 + 8))(v17);
          v24 = v16;
          if (*(result + 4 * v23) > a7)
          {
            v25 = v20;
            while (1)
            {
              v26 = v23;
              result = (*(*v17 + 8))(v17);
              v27 = *(result + 4 * v23);
              v20 = v20 + v27;
              if (v27 > v25)
              {
                v24 = v23;
              }

              if (v14 - 1 == v23)
              {
                break;
              }

              if (v27 > v25)
              {
                v25 = *(result + 4 * v23);
              }

              result = (*(*v17 + 8))(v17);
              v28 = *(result + 4 * v23++ + 4);
              if (v28 <= a7)
              {
                goto LABEL_17;
              }
            }

            LODWORD(v23) = v14;
LABEL_17:
            v22 = v27 * v26;
          }

          v21 = *a2;
        }

        if (v21 < v34)
        {
          *((*(*v33 + 8))(v33) + 4 * v21) = v16;
          v29 = *a2;
          *((*(*v32 + 8))(v32) + 4 * v29) = v23;
          v30 = *a2;
          *((*(*v18 + 8))(v18) + 4 * v30) = v24;
          if (v20 > 0.0)
          {
            v24 = (v22 / v20);
          }

          v31 = *a2;
          result = (*(*v19 + 8))(v19);
          *(result + 4 * v31) = v24;
        }
      }

      v16 = v23 + 1;
    }

    while (v23 + 1 < v14);
  }

  return result;
}

uint64_t HoverCommon::fillAmatr1D(HoverCommon *this, const unsigned __int16 *a2, const float *a3, int a4, _DWORD *a5, float *a6)
{
  if (a4)
  {
    if (!a3)
    {
      v10 = 1;
      return (v10 + 3);
    }

    v6 = a3;
    v7 = a5;
    v8 = this;
    do
    {
      v9 = *v8;
      v8 = (v8 + 2);
      *v7++ = *&a2[2 * v9];
      --v6;
    }

    while (v6);
    v10 = 1;
  }

  else
  {
    v10 = 0;
    if (!a3)
    {
      return (v10 + 3);
    }
  }

  v11 = a3;
  v12 = &a5[(v10 | 2) * a3];
  v13 = &a5[a3 + v10 * a3];
  v14 = &a5[v10 * a3];
  do
  {
    v15 = *this;
    this = (this + 2);
    *v14++ = v15 * v15;
    *v13++ = v15;
    *v12++ = 1065353216;
    --v11;
  }

  while (v11);
  return (v10 + 3);
}

float *HoverCommon::cmptUpperTriMatrixAmultAt(float *this, const float *a2, unsigned int a3, float *a4, float *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 4 * a3;
    do
    {
      v7 = this;
      v8 = v5;
      do
      {
        v9 = 0.0;
        if (a3)
        {
          v10 = a3;
          v11 = v7;
          v12 = this;
          do
          {
            v13 = *v11++;
            v14 = v13;
            v15 = *v12++;
            v9 = v9 + (v14 * v15);
            --v10;
          }

          while (v10);
        }

        *a4++ = v9;
        ++v8;
        v7 += v6;
      }

      while (v8 != a2);
      ++v5;
      this = (this + v6);
    }

    while (v5 != a2);
  }

  return this;
}

int *HoverCommon::createFullMatFromUpperTriMat(int *this, const float *a2, _DWORD *a3, float *a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 4 * a2;
    v6 = a2;
    do
    {
      v7 = v6;
      v8 = a3;
      v9 = a3;
      do
      {
        v10 = *this++;
        *v8 = v10;
        *v9++ = v10;
        v8 = (v8 + v5);
        --v7;
      }

      while (v7);
      ++v4;
      a3 = (a3 + v5 + 4);
      --v6;
    }

    while (v4 != a2);
  }

  return this;
}

uint64_t HoverCommon::calculateProjectionMatrixForDtnTs(int a1, const unsigned __int16 *a2, const float *a3, float *a4, uint64_t a5, float *a6)
{
  v7 = a3;
  v76[15] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = 0;
    v9 = a3;
    v10 = vdupq_n_s64(a3 - 1);
    v11 = xmmword_2655A97A0;
    v12 = xmmword_2655A97B0;
    v13 = xmmword_26541FD20;
    v14 = xmmword_26541FD30;
    v15 = v76;
    v16 = vdupq_n_s64(8uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v10, v14));
      if (vuzp1_s8(vuzp1_s16(v17, *v10.i8), *v10.i8).u8[0])
      {
        *(v15 - 4) = v8;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v10), *&v10).i8[1])
      {
        *(v15 - 3) = v8 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v13))), *&v10).i8[2])
      {
        *(v15 - 2) = v8 | 2;
        *(v15 - 1) = v8 | 3;
      }

      v18 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s8(*&v10, vuzp1_s16(v18, *&v10)).i32[1])
      {
        *v15 = v8 | 4;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(v18, *&v10)).i8[5])
      {
        v15[1] = v8 | 5;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11)))).i8[6])
      {
        v15[2] = v8 | 6;
        v15[3] = v8 | 7;
      }

      v8 += 8;
      v12 = vaddq_s64(v12, v16);
      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v11 = vaddq_s64(v11, v16);
      v15 += 8;
    }

    while (((a3 + 7) & 0x1FFF8) != v8);
    v19 = 0.0;
    v20 = a2;
    v21 = a3;
    do
    {
      v22 = *v20++;
      v19 = v19 + fabsf(v22);
      --v21;
    }

    while (v21);
    v23 = v19 > 100.0;
  }

  else
  {
    v9 = 0;
    v23 = 0;
  }

  v24 = v74;
  v25 = HoverCommon::fillAmatr1D(v75, a2, a3, v23, v74, a6);
  v26 = 0;
  v27 = v25;
  v28 = 4 * v9;
  v29 = v73;
  do
  {
    v30 = v24;
    v31 = v26;
    do
    {
      v32 = 0.0;
      if (v7)
      {
        v33 = v30;
        v34 = v24;
        v35 = v9;
        do
        {
          v36 = *v33++;
          v37 = v36;
          v38 = *v34++;
          v32 = v32 + (v37 * v38);
          --v35;
        }

        while (v35);
      }

      *v29++ = v32;
      ++v31;
      v30 = (v30 + v28);
    }

    while (v31 != v25);
    ++v26;
    v24 = (v24 + v28);
  }

  while (v26 != v25);
  v70 = 0;
  v71 = v25;
  HIBYTE(v69) = 76;
  v39 = v73;
  spptrf_(&v69 + 7, &v71, v73, &v70);
  spptri_(&v69 + 7, &v71, v73, &v70);
  v41 = 0;
  v42 = v72;
  v43 = v27;
  do
  {
    v44 = v42;
    v45 = v42;
    v46 = v43;
    do
    {
      v47 = *v39++;
      v40.n128_u32[0] = v47;
      *v44 = v47;
      *v45++ = v47;
      v44 += v27;
      --v46;
    }

    while (v46);
    ++v41;
    --v43;
    v42 += v27 + 1;
  }

  while (v41 != v27);
  result = MEMORY[0x28223BE20](v40);
  v51 = (&v69 - v50);
  if (v7)
  {
    v52 = 0;
    v53 = v74;
    do
    {
      v54 = 0;
      v55 = v72;
      do
      {
        v56 = 0.0;
        v57 = v27;
        v58 = v53;
        v59 = v55;
        do
        {
          v56 = v56 + (*v58 * *v59);
          v59 = (v59 + v49);
          v58 = (v58 + v28);
          --v57;
        }

        while (v57);
        v51[v52 * v27 + v54++] = v56;
        ++v55;
      }

      while (v54 != v27);
      ++v52;
      ++v53;
    }

    while (v52 != v9);
    v60 = 0;
    do
    {
      v61 = 0;
      v62 = v74;
      do
      {
        v63 = 0.0;
        v64 = v27;
        v65 = v62;
        v66 = v51;
        do
        {
          v67 = *v66++;
          v63 = v63 + (v67 * *v65);
          v65 = (v65 + v28);
          --v64;
        }

        while (v64);
        a4[v60 * v7 + v61++] = -v63;
        ++v62;
      }

      while (v61 != v9);
      ++v60;
      v51 = (v51 + v49);
    }

    while (v60 != v9);
    do
    {
      *a4 = *a4 + 1.0;
      a4 = (a4 + v28 + 4);
      --v9;
    }

    while (v9);
  }

  v68 = *MEMORY[0x277D85DE8];
  return result;
}

float *HoverCommon::scale1Dvector(float *this, const float *a2, float *a3, float *a4, float a5)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = *this++;
      *a3++ = v6 * a5;
      --v5;
    }

    while (v5);
  }

  return this;
}

float HoverCommon::difference1Dvector(HoverCommon *this, float *a2, const float *a3, float *a4, float *a5)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *this;
      this = (this + 4);
      v7 = v6;
      v8 = *a2++;
      result = v7 - v8;
      *a4++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

float *HoverCommon::multiplyAccumulate1Dvector(float *this, float *a2, const float *a3, float a4)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v5 = *a2++;
      *this = *this + (a4 * v5);
      ++this;
      --v4;
    }

    while (v4);
  }

  return this;
}

double HoverCommon::calculateComplexNorm(HoverCommon *this, float *a2, const float *a3)
{
  if (!a3)
  {
    return 0.0;
  }

  v3 = a3;
  result = 0.0;
  do
  {
    v5 = *this;
    this = (this + 4);
    v6 = v5;
    v7 = *a2++;
    *&result = *&result + ((v7 * v7) + (v6 * v6));
    --v3;
  }

  while (v3);
  return result;
}

double HoverCommon::calculateNormSquared(HoverCommon *this, const float *a2)
{
  if (!a2)
  {
    return 0.0;
  }

  v2 = a2;
  result = 0.0;
  do
  {
    v4 = *this;
    this = (this + 4);
    *&result = *&result + (v4 * v4);
    --v2;
  }

  while (v2);
  return result;
}

float *HoverCommon::multiplyMatrixByVector(float *this, float *a2, const float *a3, unsigned int a4, uint64_t a5, float *a6)
{
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = 0.0;
      if (a4)
      {
        v8 = a4;
        v9 = a2;
        v10 = this;
        do
        {
          v11 = *v10++;
          v12 = v11;
          v13 = *v9++;
          v7 = v7 + (v12 * v13);
          --v8;
        }

        while (v8);
      }

      *(a5 + 4 * v6++) = v7;
      this += a4;
    }

    while (v6 != a3);
  }

  return this;
}

float *HoverCommon::clipParams(float *this, float *a2, float a3, float a4)
{
  if (*this < a3)
  {
    v4 = 0;
  }

  else
  {
    a3 = *this;
    v4 = *this <= a4;
  }

  if (!v4)
  {
    if (a3 > a4)
    {
      a3 = a4;
    }

    *this = a3;
  }

  return this;
}

uint64_t HoverCommon::findIndexOfLargestLowerElement(HoverCommon *this, float a2, const float *a3)
{
  if (*(this + a3 - 1) == a2)
  {
    LOWORD(a3) = a3 - 2;
  }

  else if (a3)
  {
    v4 = 0;
    while (*(this + v4) <= a2)
    {
      if (a3 == ++v4)
      {
        return a3;
      }
    }

    LOWORD(a3) = v4 - 1;
  }

  return a3;
}

uint64_t HoverCommon::findIndexOfNearestElement(HoverCommon *this, float a2, const float *a3)
{
  if (a3 < 2)
  {
LABEL_5:
    v3 = 0;
  }

  else
  {
    v3 = 1;
    while (1)
    {
      v4 = *(this + v3);
      if (v4 >= a2)
      {
        break;
      }

      if (a3 <= ++v3)
      {
        goto LABEL_5;
      }
    }

    if (vabds_f32(*(this + v3 - 1), a2) <= vabds_f32(v4, a2))
    {
      --v3;
    }
  }

  return v3;
}

float HoverCommon::calculateRootMeanSquare(HoverCommon *this, const float *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = 0.0;
    do
    {
      v4 = *this;
      this = (this + 4);
      v3 = v3 + (v4 * v4);
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0.0;
  }

  return sqrtf(v3 / a2);
}

float HoverCommon::getScalingFactor(int a1, float a2, float a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(a5 + 954);
  v12 = (*(*(a5 + 464) + 8))();
  v13 = (*(*(a5 + 520) + 8))();
  v14 = (*(*(a5 + 576) + 8))();
  if (a1)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = 952;
  if (a1)
  {
    v16 = 953;
  }

  v17 = *(a5 + v16);
  v18 = *v14;
  v19 = v14[v11 - 1];
  if (*v14 <= a3)
  {
    v18 = a3;
  }

  if (v18 <= v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = v14[v11 - 1];
  }

  if (v19 == v20)
  {
    LOBYTE(v11) = v11 - 2;
  }

  else if (v11)
  {
    v40 = 0;
    while (v14[v40] <= v20)
    {
      if (v11 == ++v40)
      {
        goto LABEL_13;
      }
    }

    LOBYTE(v11) = v40 - 1;
  }

LABEL_13:
  v21 = v14[v11];
  v22 = v14[(v11 + 1)];
  v23 = *v15;
  v24 = v15[v17 - 1];
  if (*v15 <= a2)
  {
    v23 = a2;
  }

  if (v23 <= v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = v15[v17 - 1];
  }

  if (v24 == v25)
  {
    v26 = v17 - 2;
  }

  else if (v17)
  {
    v41 = 0;
    while (v15[v41] <= v25)
    {
      if (v17 == ++v41)
      {
        v26 = v17;
        goto LABEL_20;
      }
    }

    v26 = v41 - 1;
  }

  else
  {
    v26 = 0;
  }

LABEL_20:
  v27 = 216;
  if (!a1)
  {
    v27 = 144;
  }

  v28 = v15[v26];
  v29 = v15[(v26 + 1)];
  v30 = (a5 + v27);
  v31 = v30[4];
  v30 += 4;
  v32 = (*(v31 + 8))(v30);
  (*(*v30 + 32))(v30);
  v33 = (*(*v30 + 24))(v30) * a6;
  v34 = v32 + 4 * v33 * (*(*v30 + 32))(v30);
  v35 = *(v34 + 4 * (v11 * v17 + v26));
  v36 = *(v34 + 4 * (v11 * v17 + (v26 + 1)));
  v37 = (v11 + 1) * v17;
  v38 = v35 + (((*(v34 + 4 * (v37 + v26)) - v35) / (v22 - v21)) * (v20 - v21));
  return v38 + ((((v36 + (((*(v34 + 4 * (v37 + (v26 + 1))) - v36) / (v22 - v21)) * (v20 - v21))) - v38) / (v29 - v28)) * (v25 - v28));
}

double PadFireflyPathTrack::reset(PadFireflyPathTrack *this)
{
  *(*(this + 13) + 16) = 0;
  v2 = *(this + 7);
  v3 = *(*(this + 6) + 64);
  *(this + 58) = v3;
  *(this + 59) = v3;
  *(this + 65) = *(v2 + 12);
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 106) = 5000;
  *(this + 33) = 3213232786;
  *(this + 68) = 1070141403;
  PadFireflyGhFilter::reset((this + 732));
  *(this + 61) = 0;
  *(this + 62) = 0;
  result = 0.0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  return result;
}

uint64_t PadFireflyPathTrack::PadFireflyPathTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  *a1 = a2 + 28;
  *(a1 + 8) = a2 + 240;
  *(a1 + 16) = a3 + 28;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7 + 28;
  *(a1 + 56) = a8 + 28;
  *(a1 + 64) = a9 + 28;
  *(a1 + 72) = a10 + 28;
  *(a1 + 80) = a11 + 28;
  *(a1 + 88) = a12 + 28;
  *(a1 + 96) = a13;
  *(a1 + 104) = a14 + 28;
  *(a1 + 112) = a15;
  *(a1 + 128) = a16;
  *(a1 + 136) = a17;
  *(a1 + 668) = 18;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  PadFireflyGhFilter::PadFireflyGhFilter((a1 + 732));
  PadFireflyPathTrack::reset(a1);
  return a1;
}

float PadFireflyPathTrack::updateFuzzyAngle(PadFireflyPathTrack *this, float a2, float *a3, float *a4)
{
  if (a2 == 0.0 || *(this + 213) == 1)
  {
    *&v4 = *a4;
    *a3 = *a4;
  }

  else
  {
    v5 = *a4;
    if (vabds_f32(*a3, *a4) > 4.71238898)
    {
      v5 = dbl_2655A97F0[v5 < 0.0] + v5;
      *a4 = v5;
    }

    v6 = ((1.0 - a2) * v5) + (a2 * *a3);
    *a4 = v6;
    v4 = v6;
    if (v4 <= 3.14159265)
    {
      if (v4 >= -3.14159265)
      {
        return *&v4;
      }

      v7 = 6.28318531;
    }

    else
    {
      v7 = -6.28318531;
    }

    *&v4 = v4 + v7;
    *a4 = *&v4;
  }

  return *&v4;
}

float PadFireflyPathTrack::updateTiltAndAzimuth(uint64_t a1, uint64_t a2, int a3, float a4)
{
  v8 = *(a1 + 104);
  if (a3)
  {
    v9 = (v8 + 8);
    v10 = (v8 + 12);
    v11 = (a1 + 276);
    v12 = (a1 + 280);
    v13 = *(a1 + 16);
    v14 = v13 + 1;
    v15 = 204;
    v16 = 200;
  }

  else
  {
    v10 = (v8 + 4);
    v11 = (a1 + 260);
    v12 = (a1 + 264);
    v13 = (a1 + 192);
    v14 = (a1 + 196);
    v15 = 212;
    v16 = 208;
    v9 = *(a1 + 104);
  }

  v17 = *(a1 + v16);
  v18 = *(a1 + v15);
  v19 = *(a1 + 296);
  if (v19 == 1)
  {
    if (*(v8 + 16) != 2)
    {
      goto LABEL_9;
    }

    *v11 = *v9;
    *v12 = *v10;
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  *(v8 + 17) = v20;
LABEL_9:
  v21 = sqrtf((v18 * v18) + (v17 * v17));
  if (v21 >= 7200.0)
  {
    v22 = *v11;
  }

  else
  {
    v22 = 1.57079633 - atan2f(sqrtf(51840000.0 - (v21 * v21)), v21);
  }

  v37 = v22;
  v36 = atan2f(v18, v17);
  if ((v19 & 1) == 0)
  {
    PadFireflyPathTrack::updateFuzzyAngle(a1, a4, v11, &v37);
    PadFireflyPathTrack::updateFuzzyAngle(a1, a4, v12, &v36);
    if (a3)
    {
LABEL_38:
      v34 = v37;
      if (*(a2 + 28) == 1)
      {
        v34 = PadFireflyPathTrack::correctTilt(a1, v37);
      }

      v12 = &v36;
      goto LABEL_41;
    }

    v24 = *(a1 + 96);
    if (*(v24 + 633))
    {
      if (a4 != 0.0)
      {
        goto LABEL_22;
      }
    }

    else if (a4 != 0.0 || (*(v24 + 634) & 1) == 0)
    {
      goto LABEL_22;
    }

    *(a1 + 268) = *(a1 + 260);
    *(a1 + 272) = *(a1 + 264);
    goto LABEL_22;
  }

  if (a3)
  {
    goto LABEL_38;
  }

LABEL_22:
  v25 = *(a1 + 852);
  v26 = v25 - 1;
  if (v25 == 1)
  {
    v27 = v37;
LABEL_25:
    *(a1 + 4 * (v26 & 0xF) + 304) = v27;
    *(a1 + 300) = 16;
    *(a1 + 192) = v27;
    *(a1 + 256) = v36;
    *(a1 + 252) = PadFireflyPathTrack::correctTilt(a1, v27);
    goto LABEL_34;
  }

  v27 = v37;
  if (*(a1 + 296) == 1)
  {
    goto LABEL_25;
  }

  *(a1 + 252) = *(a1 + 192);
  *(a1 + 304 + 4 * (v26 & 0xF)) = v27;
  v28 = 16;
  *(a1 + 300) = 16;
  *(a1 + 192) = v27;
  if (v26 <= 0xF)
  {
    *(a1 + 300) = v25 - 1;
    v28 = v25 - 1;
  }

  v29 = v25 - v28;
  if (v25 - v28 >= v25)
  {
    LODWORD(v23) = 2143289344;
  }

  else
  {
    v23 = 0.0;
    v30 = 1;
    v31 = 0.0;
    do
    {
      v32 = v29++ & 0xF;
      v31 = v31 + v30;
      *&v23 = *&v23 + (*(a1 + 304 + 4 * v32) * v30++);
      --v28;
    }

    while (v28);
    *&v23 = *&v23 / v31;
  }

  v37 = *&v23;
  v33 = v36;
  *&v23 = v36;
  v36 = alg_AverageAngles0_180(v23, *(a1 + 256), 0);
  *(a1 + 256) = v33;
LABEL_34:
  if (*(a1 + 296) != 1 || a3)
  {
    goto LABEL_38;
  }

  if (*(*(a1 + 104) + 17) == 1)
  {
    v34 = *v11;
  }

  else
  {
    v34 = *v11;
    if (*(a2 + 28) == 1)
    {
      v34 = PadFireflyPathTrack::correctTilt(a1, v34);
    }
  }

LABEL_41:
  *v13 = v34;
  result = *v12;
  *v14 = *v12;
  return result;
}

float PadFireflyPathTrack::correctTilt(PadFireflyPathTrack *this, float a2)
{
  v2 = *(this + 7);
  v3 = 0.0;
  if (*v2 <= a2)
  {
    v4 = 1;
    while (1)
    {
      v5 = v2[v4];
      if (v5 > a2)
      {
        break;
      }

      if (++v4 == 7)
      {
        v5 = v2[7];
        break;
      }
    }

    v6 = PadFireflyPathTrack::kCorrectedTiltAngles[v4] + ((-(PadFireflyPathTrack::kCorrectedTiltAngles[v4] - PadFireflyPathTrack::kCorrectedTiltAngles[v4 - 1]) / (v5 - v2[v4 - 1])) * (v5 - a2));
    v3 = 1.3963;
    if (v6 <= 1.3963)
    {
      return v6;
    }
  }

  return v3;
}

float32x2_t PadFireflyPathTrack::correctZTotZDen(float32x2_t *a1, uint64_t a2, float32x2_t result)
{
  if (*(a2 + 28) == 1)
  {
    v4 = a1[24].f32[0];
    v5 = 1;
    v6 = 1.2217;
    while (v4 >= PadFireflyPathTrack::kCorrectedTiltAngles[v5])
    {
      if (++v5 == 7)
      {
        goto LABEL_7;
      }
    }

    v6 = PadFireflyPathTrack::kCorrectedTiltAngles[v5];
LABEL_7:
    v3 = a1[7];
    v7 = fmaxf(*(*&v3 + 32 + 4 * v5) + ((-(*(*&v3 + 32 + 4 * v5) - *(*&v3 + 32 + 4 * v5 - 4)) / (v6 - PadFireflyPathTrack::kCorrectedTiltAngles[v5 - 1])) * (v6 - v4)), *(*&v3 + 60));
    if (result.f32[0] == 0.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = result.f32[0] + ((1.0 - result.f32[0]) * v7);
    }

    result = vmul_n_f32(a1[19], v8);
    a1[19] = result;
  }

  return result;
}

void PadFireflyPathTrack::adaptZTotThresh(PadFireflyPathTrack *this, uint64_t a2, float a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v12 = *(this + 213);
  LODWORD(a9) = *(this + 38);
  v13 = *(this + 6);
  v14 = *(v13 + 8);
  v15 = *(v13 + 12);
  *(this + ((v12 - 1) & 7) + 158) = LODWORD(a9);
  if (v12 < 8)
  {
    v18 = 0.0;
    v20 = 0.7;
  }

  else
  {
    v16 = 0;
    v17 = vdupq_lane_s32(*&a9, 0);
    v18 = 0.0;
    do
    {
      v19 = vabdq_f32(*(this + v16 + 632), v17);
      v18 = (((v18 + v19.f32[0]) + v19.f32[1]) + v19.f32[2]) + v19.f32[3];
      v16 += 16;
    }

    while (v16 != 32);
    v20 = 0.25;
  }

  v21 = *&a9 * v14;
  v22 = *(this + 48);
  if (v22 >= 0.96)
  {
    v34 = 0;
  }

  else
  {
    v54 = LODWORD(a9);
    v23 = wFfuzzifyAndClip(v22, 0.82, 0.96);
    v24 = wFtoRepulsion(v23, 0.97);
    v21 = v21 * v24;
    if (v24 == 0.0)
    {
      v34 = 0;
      LODWORD(a9) = v54;
    }

    else
    {
      v25 = *(this + 88);
      LODWORD(a9) = v54;
      if (v25 < a2 && v25 > *(this + 89))
      {
        v26 = v24 * *(this + 38);
        v27 = *(this + 213) < 9u;
        v28 = *(this + 59);
        v29 = v26 < v28;
        v30 = 0.00003;
        if (v27 && v29)
        {
          v30 = 0.003;
        }

        v31 = 0.002;
        if (v27 && v29)
        {
          v31 = 0.005;
        }

        v32 = ((1.0 - v31) * *(this + 58)) + (v31 * v26);
        v33 = (v26 * v30) + (1.0 - v30) * v28;
        *(this + 58) = v32;
        *(this + 59) = v33;
      }

      v34 = 1;
    }
  }

  v35 = *&a9 * v15;
  v36 = *(this + 6);
  v37 = v36[4];
  v38 = *(this + 38);
  v39 = *(this + 59);
  if (v21 >= v37 && v38 <= v39)
  {
    v41 = v36[6];
    if (v38 >= (v39 * v41) && v18 < 0.3125)
    {
      v45 = v36[8];
      v46 = *"33s?";
      if (v45 > v21)
      {
        v46 = v20;
      }

      v36[8] = (v45 * (1.0 - v46)) + (v46 * v21);
      goto LABEL_39;
    }
  }

  v41 = v36[6];
  if (v38 < (v39 * v41))
  {
    v43 = v38 < (v39 * v36[14]) || v21 < v37;
    v44 = !v43 && v18 < 0.15625;
    if (v44 && *(this + 213) >= 8u && *(this + 54) > v36[15] && *(*(this + 3) + 28) == 3)
    {
      v36[8] = v21;
    }
  }

  if (v21 >= v37)
  {
LABEL_39:
    v47 = *(this + 58);
    v48 = v47 * v41;
    if (v38 <= (v47 * v36[7]) && v38 >= v48)
    {
      v50 = v34 ^ 1;
      if (v18 >= 0.3125)
      {
        v50 = 1;
      }

      if ((v50 & 1) == 0 && *(this + 296) != 1 || PadFireflyPathTrack::isInwardFastSwipe(this))
      {
        v51 = v36[5];
        v52 = *"33s?";
        if (v51 > v21)
        {
          v52 = v20;
        }

        v36[5] = (v51 * (1.0 - v52)) + (v52 * v35);
      }
    }
  }

  if (a3 == 0.0 && *(this + 57) > 0.0 && v36[5] > v35)
  {
    v53 = v35 * v36[3];
    if (v53 >= v37)
    {
      v36[5] = v53;
    }
  }

  *(this + 57) = a3;
}

BOOL PadFireflyPathTrack::isInwardFastSwipe(PadFireflyPathTrack *this)
{
  v1 = *(this + 166);
  if (v1 >= 2)
  {
    if (v1 != 4 && fabsf(*(this + 42)) > 76800.0)
    {
      v2 = *(this + 72);
      return fabsf(v2) > 76800.0;
    }
  }

  else if (fabsf(*(this + 41)) > 76800.0)
  {
    v2 = *(this + 71);
    return fabsf(v2) > 76800.0;
  }

  return 0;
}

void PadFireflyPathTrack::updatePositions(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4, double a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  v12 = *(a1 + 852);
  v13 = a1 + 8 * ((v12 - 1) & 0x10);
  *(v13 + 372) = a4.i32[0];
  *(v13 + 376) = LODWORD(a5);
  if (*(a3 + 28) == 1)
  {
    PadFireflyGhFilter::updateFilter(a1 + 732, v12, *(a1 + 728), a1 + 144, (a1 + 208), a2, a4, *&a5, a6, a7, a8, a9, a10, a11);
  }

  else
  {
    *(a1 + 144) = a4.i32[0];
    *(a1 + 148) = LODWORD(a5);
    if (a2 < 1)
    {
      a4.i64[0] = 0;
    }

    else
    {
      a4.i32[1] = LODWORD(a5);
      *&a5 = a2;
      *a4.f32 = vdiv_f32(vmul_f32(vsub_f32(*a4.f32, *a4.f32), vdup_n_s32(0x45400000u)), vdup_lane_s32(*&a5, 0));
    }

    *(a1 + 164) = a4.i64[0];
    *(a1 + 208) = LODWORD(a6);
    *(a1 + 212) = LODWORD(a7);
  }
}

void PadFireflyPathTrack::updateStylusPathTrajectory(PadFireflyPathTrack *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t a7, double a8, double a9, double a10, double a11, double a12, double a13, int32x4_t a14)
{
  v14 = a6;
  v15 = a5;
  v17 = *&a10;
  v18 = *&a9;
  v19 = *&a8;
  v20 = a7.f32[0];
  v23 = *(*this + 204);
  v22 = *(*this + 208);
  v24 = *(this + 12);
  v25 = *(v24 + 633);
  if (*(this + 213) == 1)
  {
    if ((v25 & 1) != 0 || *(v24 + 634) == 1)
    {
      v26 = a2;
      v64 = a4;
      *(this + 268) = 0x3FC90FDB00000000;
      v29 = *(this + 14);
      v28 = *(this + 15);
      v30 = *(this + 16);
      v31 = PadFireflyPathTrack::correctTilt(this, 0.0);
      if (v25)
      {
        v20 = v20 + PadUtils::postCentroidCorrectionForPathPerAxis(v24, 0, v29, (v28 + 28), v30, v20, v31, 1.5708);
      }

      if (*(v24 + 634) == 1)
      {
        v19 = v19 + PadUtils::postCentroidCorrectionForPathPerAxis(v24, 1, v29, (v28 + 28), v30, v19, v31, 1.5708);
      }

      v15 = a5;
      a4 = v64;
      a2 = v26;
    }

    *(this + 87) = a3;
    *(this + 20) = 0;
    *(this + 21) = 0;
    *&a9 = v18 - v20;
    *&a10 = v17 - v19;
    *(this + 50) = (v18 - v20) * 1000.0;
    *(this + 51) = (v17 - v19) * 1000.0;
    v43 = (this + 8 * ((*(this + 213) - 1) & 0xF));
    v43[93] = v20;
    v43[94] = v19;
    *(this + 61) = v20;
    *(this + 62) = v19;
    *(this + 18) = *(this + 244);
    v43[126] = v18 - v20;
    v43[127] = v17 - v19;
    *(this + 52) = v18 - v20;
    *(this + 53) = v17 - v19;
    *(this + 60) = v23;
    *(this + 38) = v23;
    *(this + 39) = v22;
    *(this + 57) = 0;
    *(this + 71) = 0;
    *(this + 36) = 0;
    *(this + 55) = v20;
    *(this + 56) = v19;
    *(this + 54) = 0;
    a7.f32[0] = v20;
    *&a8 = v19;
    PadFireflyPathTrack::updatePositions(this, a2, a4, a7, a8, a9, a10, a11, a12, a13, a14);
    v44 = *(this + 36);
    v45 = *(this + 37);
  }

  else
  {
    if ((v25 & 1) != 0 || *(v24 + 634) == 1)
    {
      v32 = a2;
      v33 = a4;
      v36 = *(this + 14);
      v35 = *(this + 15);
      v37 = *(this + 16);
      v38 = PadFireflyPathTrack::correctTilt(this, *(this + 67));
      v39 = *(this + 68);
      if (v25)
      {
        v20 = v20 + PadUtils::postCentroidCorrectionForPathPerAxis(v24, 0, v36, (v35 + 28), v37, v20, v38, *(this + 68));
      }

      if (*(v24 + 634) == 1)
      {
        v19 = v19 + PadUtils::postCentroidCorrectionForPathPerAxis(v24, 1, v36, (v35 + 28), v37, v19, v38, v39);
      }

      v15 = a5;
      a4 = v33;
      a2 = v32;
      v14 = a6;
    }

    *&a9 = v18 - v20;
    *&a10 = v17 - v19;
    *(this + 50) = v18 - v20;
    *(this + 51) = v17 - v19;
    *(this + 244) = *(this + 18);
    *(this + 60) = *(this + 38);
    a7.i64[0] = *(this + 164);
    *(this + 284) = a7.i64[0];
    *(this + 73) = *(this + 43);
    v40 = (this + 8 * ((*(this + 213) - 1) & 0xF));
    v40[126] = v18 - v20;
    v40[127] = v17 - v19;
    *(this + 52) = v18 - v20;
    *(this + 53) = v17 - v19;
    *(this + 38) = v23;
    a7.f32[0] = v20;
    *&a8 = v19;
    PadFireflyPathTrack::updatePositions(this, a2, a4, a7, a8, a9, a10, a11, a12, a13, a14);
    *(this + 43) = sqrtf((*(this + 42) * *(this + 42)) + (*(this + 41) * *(this + 41)));
    v41 = *(this + 36) - *(this + 55);
    v42 = sqrtf(((*(this + 37) - *(this + 56)) * (*(this + 37) - *(this + 56))) + (v41 * v41));
    if (v42 > *(this + 54))
    {
      *(this + 54) = v42;
    }
  }

  *(this + 39) = v22;
  *(this + 166) = 4;
  SurfaceGrid::computeMinDistToEdges(*(this + 14), 61);
  v47 = v46;
  v48 = 0.0;
  if (v46 < 25200.0)
  {
    v48 = wFfuzzifyAndClipDecreasing(v46, 10800.0, 25200.0);
    *(this + 166) = SurfaceGrid::findSwipeEdgeType(*(this + 14), *(this + 36), *(this + 37), *(this + 41), *(this + 42));
  }

  *(this + 22) = vadd_f32(*(this + 144), *(this + 208));
  SurfaceGrid::computeMinDistToEdges(*(this + 14), 61);
  v50 = *(this + 8);
  v51 = *(v50 + 2);
  if (*(v50 + 2) && (v52 = *(v50 + 3)) != 0 && (v53 = *(this + 14), (((*(v53 + 101) << 16) - (*(v53 + 112) << 17)) >> 16) - 1 != v51) && (((*(v53 + 165) << 16) - (*(v53 + 176) << 17)) >> 16) - 1 != v52 && v49 >= *(*(this + 11) + 28))
  {
    v54 = 0;
    if (**(this + 9) <= 0.0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v54 = 1;
  }

  if (*(this + 213) <= 1u)
  {
    *(this + 296) = 1;
    goto LABEL_39;
  }

LABEL_30:
  if (v54 & 1) == 0 && (*(this + 296))
  {
    if (*(*(this + 4) + 28) == 0.0)
    {
      v55 = *(*(this + 11) + 24);
      if (v49 < v47 && v49 > v55 || (v54 = 0, v47 > v55) && v49 > v47)
      {
        v54 = 0;
        *(this + 296) = 0;
      }
    }

    else
    {
      v54 = 0;
    }
  }

LABEL_39:
  PadFireflyPathTrack::updateTiltAndAzimuth(this, v15, 0, fmaxf(**(this + 9), v54));
  v56 = 1;
  PadFireflyPathTrack::updateTiltAndAzimuth(this, v15, 1, fmaxf(**(this + 9), v54));
  v57.f32[0] = v48;
  PadFireflyPathTrack::correctZTotZDen(this, v14, v57);
  PadFireflyPathTrack::adaptZTotThresh(this, a3, v48, v58, v59, v60, v61, v62, v63);
  if ((v54 & 1) == 0 && (*(this + 296) & 1) == 0)
  {
    v56 = **(this + 9) > 0.0;
  }

  *(this + 297) = v56;
}

float PadFireflyPathTrack::detectAndSetStylusPathMake(PadFireflyPathTrack *this)
{
  v1 = *(this + 6);
  result = v1[8];
  v3 = *(this + 668);
  v4 = *(this + 38);
  if ((v4 > result || *(this + 39) > v1[9] && *(*(this + 9) + 4) == 1) && (v4 >= *(this + 60) || *(this + 213) == 1))
  {
    *(this + 88) = *(*(this + 17) + 24);
    *(this + 169) |= 1 << v3;
    if (v1[5] > result)
    {
      result = result * v1[3];
      v1[5] = result;
    }
  }

  return result;
}

float PadFireflyPathTrack::detectStylusPathTransitions(PadFireflyPathTrack *this)
{
  v2 = *(this + 668);
  v3 = *(this + 6);
  v4 = v3[5];
  v5 = v3[9] * v3[10];
  if (*(*(this + 5) + 28))
  {
    v6 = wFfuzzifyAndClip(*(this + 43), v3[11], v3[12]);
    v7 = wFtoRepulsion(v6, *(*(this + 6) + 52));
    v4 = v4 * v7;
    v5 = v5 * v7;
  }

  v8 = 1 << v2;
  if (*(this + 213) == 1)
  {
    *(this + 168) |= v8;
    *(this + 87) = *(*(this + 17) + 24);
LABEL_14:

    return PadFireflyPathTrack::detectAndSetStylusPathMake(this);
  }

  if (*(this + 88) <= *(this + 89))
  {
    goto LABEL_14;
  }

  result = *(this + 38);
  if ((result < v4 && *(*(this + 9) + 4) != 1 || *(this + 39) < v5 && *(*(this + 9) + 4) == 1) && result < *(this + 60))
  {
    *(this + 89) = *(*(this + 17) + 24);
    *(this + 171) |= v8;
    v10 = *(this + 6);
    result = v10[8];
    if (v4 > result)
    {
      result = result * v10[3];
      v10[5] = result;
    }
  }

  return result;
}

uint64_t PadFireflyPathTrack::concludePathStageTransitions(uint64_t this)
{
  v1 = 1 << *(this + 668);
  v2 = *(this + 704);
  v3 = *(this + 696);
  if (v2 >= v3 && *(this + 712) < v2)
  {
    *(this + 684) |= v1;
    *(this + 712) = *(*(this + 136) + 24);
  }

  if (*(this + 720) <= v3)
  {
    *(this + 688) |= v1;
    *(this + 720) = *(*(this + 136) + 24);
  }

  return this;
}

void PadFireflyPathTrack::updateTrajectoryFromProbes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(a1 + 24) + 28) == 1)
  {
    v8 = 7;
  }

  else
  {
    v8 = 11;
  }

  *(a1 + 669) = v8;
  PathStages::clearPathsInStagesBitmaps(a1 + 672);
  v16 = *a1;
  v17.i32[0] = *(*a1 + 204);
  v18 = *(a1 + 48);
  if (v17.f32[0] <= v18[1] || v17.f32[0] < *v18 && *(a1 + 852) < 2u || *(*(a1 + 24) + 28) == 4)
  {
    ++*(a1 + 848);
    if (*(a1 + 852))
    {
      *(a1 + 244) = *(a1 + 144);
      *(a1 + 240) = *(a1 + 152);
      *(a1 + 160) = 0;
      *(a1 + 168) = 0;
      *(a1 + 152) = 0;
      PadFireflyPathTrack::concludePathStageTransitions(a1);
      *(a1 + 852) = 0;
    }

    v19 = *(a1 + 80);
    *v19 = 0;
    v19[1] = 0;
    v20 = *a1;
  }

  else
  {
    v17.i32[0] = *(v16 + 164);
    LODWORD(v9) = *(v16 + 184);
    v22 = *(a1 + 8);
    LODWORD(v10) = *(v22 + 164);
    LODWORD(v11) = *(v22 + 184);
    ++*(a1 + 852);
    PadFireflyPathTrack::updateStylusPathTrajectory(a1, *(*(a1 + 136) + 40), *(*(a1 + 136) + 24), a2, a3, a4, v17, v9, v10, v11, v12, v13, v14, v15);
    PadFireflyPathTrack::detectStylusPathTransitions(a1);
    v20 = *a1;
    v23 = *(*a1 + 188);
    *(a1 + 184) = *(*a1 + 168);
    *(a1 + 188) = v23;
    *(a1 + 848) = 0;
  }

  if (*(v20 + 204) == 0.0)
  {
    v21 = *(a1 + 244);
    *(a1 + 144) = v21;
    *(v20 + 164) = v21;
    *(v20 + 184) = HIDWORD(v21);
  }
}

uint64_t PadFireflyPathTrack::setPathStage(PadFireflyPathTrack *this)
{
  result = PathStages::deriveTouchRangeStage(this + 87, *(*(this + 17) + 24));
  *(this + 728) = result;
  return result;
}

float PadUtils::postCentroidCorrectionForPathPerAxis(uint64_t a1, int a2, uint64_t a3, _BYTE *a4, uint64_t a5, float a6, float a7, float a8)
{
  v8 = a6;
  if (a2)
  {
    v13 = -1.5708;
    if (a8 <= 1.5708)
    {
      if (a8 > -1.5708)
      {
        v14 = 1.5708 - a8;
LABEL_13:
        if (v14 <= 1.5708)
        {
          v49 = v14;
        }

        else
        {
          v49 = 3.1416 - v14;
        }

        v50 = wFfuzzifyAndClip(a7, 0.34907, 0.5236);
        v51 = *(*(*(a1 + 496) + 8))(a1 + 496);
        v52 = *((*(*(a1 + 496) + 8))(a1 + 496) + 4);
        v53 = *((*(*(a1 + 496) + 8))(a1 + 496) + 8);
        v54 = (*(*(a1 + 496) + 8))(a1 + 496);
        v55 = v51 + (v52 / (expf(v53 * (v49 + *(v54 + 12))) + 1.0));
        v56 = *(*(*(a1 + 608) + 8))(a1 + 608);
        v57 = *((*(*(a1 + 608) + 8))(a1 + 608) + 4);
        v58 = *((*(*(a1 + 608) + 8))(a1 + 608) + 8);
        v59 = (*(*(a1 + 608) + 8))(a1 + 608);
        v27 = v50 * v55;
        v28 = (1.0 - v50) + ((v56 + (v57 / (expf(v58 * (v49 + *(v59 + 12))) + 1.0))) * v50);
        v61 = *(a3 + 152);
        v60 = a3 + 152;
        v8 = a6;
        v62 = (a6 / ((*(v60 - 120) / *(v60 - 116)) * 1000.0));
        v63 = *(a1 + 638);
        v64 = *(a1 + 632);
        v65 = (v62 + 1);
        v66 = (*(v61 + 8))(v60);
        v67.n128_f32[0] = a6;
        PadUtils::correctCentroidLut(v63, a1 + 344, a4, v64, a5, v67, *(v66 + 4 * v65), *(a1 + 16));
        v38 = v68;
        v39 = *(a1 + 638);
        v40 = *(a1 + 632);
        if (v49 > 1.5708)
        {
          v42 = *((*(*v60 + 8))(v60) + 4 * (v62 + 2));
          v43 = *(a1 + 16);
          v44 = a1 + 216;
          goto LABEL_18;
        }

        v46 = *((*(*v60 + 8))(v60) + 4 * v65);
        v47 = *(a1 + 16);
        v48 = a1 + 216;
LABEL_20:
        v45.n128_f32[0] = v8;
        PadUtils::correctCentroidLut(v39, v48, a4, v40, a5, v45, v46, v47);
        return (v28 * v38) + (v70 * v27);
      }

      v13 = 4.7124;
    }

    v14 = a8 + v13;
    goto LABEL_13;
  }

  v15 = fabsf(a8);
  if (v15 <= 1.5708)
  {
    v16 = v15;
  }

  else
  {
    v16 = 3.1416 - v15;
  }

  v17 = wFfuzzifyAndClip(a7, 0.34907, 0.5236);
  v18 = *(*(*(a1 + 440) + 8))(a1 + 440);
  v19 = *((*(*(a1 + 440) + 8))(a1 + 440) + 4);
  v20 = *((*(*(a1 + 440) + 8))(a1 + 440) + 8);
  v21 = (*(*(a1 + 440) + 8))(a1 + 440);
  v22 = v18 + (v19 / (expf(v20 * (v16 + *(v21 + 12))) + 1.0));
  v23 = *(*(*(a1 + 552) + 8))(a1 + 552);
  v24 = *((*(*(a1 + 552) + 8))(a1 + 552) + 4);
  v25 = *((*(*(a1 + 552) + 8))(a1 + 552) + 8);
  v26 = (*(*(a1 + 552) + 8))(a1 + 552);
  v27 = v17 * v22;
  v28 = (1.0 - v17) + ((v23 + (v24 / (expf(v25 * (v16 + *(v26 + 12))) + 1.0))) * v17);
  v30 = *(a3 + 88);
  v29 = a3 + 88;
  v31 = (v8 / ((*(v29 - 48) / *(v29 - 44)) * 1000.0));
  v32 = *(a1 + 637);
  v33 = *(a1 + 632);
  v34 = (v31 + 1);
  v35 = (*(v30 + 8))(v29);
  v36.n128_f32[0] = v8;
  PadUtils::correctCentroidLut(v32, a1 + 280, a4, v33, a5, v36, *(v35 + 4 * v34), *(a1 + 12));
  v38 = v37;
  v39 = *(a1 + 637);
  v40 = *(a1 + 632);
  if (v16 <= 1.5708)
  {
    v46 = *((*(*v29 + 8))(v29) + 4 * v34);
    v47 = *(a1 + 12);
    v48 = a1 + 152;
    goto LABEL_20;
  }

  v42 = *((*(*v29 + 8))(v29) + 4 * (v31 + 2));
  v43 = *(a1 + 12);
  v44 = a1 + 152;
LABEL_18:
  v41.n128_f32[0] = v8;
  PadUtils::correctCentroidLut(v39, v44, a4, v40, a5, v41, v42, v43);
  v70 = -v69;
  return (v28 * v38) + (v70 * v27);
}

uint64_t PadUtils::correctCentroidLut(uint64_t result, uint64_t a2, _BYTE *a3, int a4, uint64_t a5, __n128 a6, float a7, float a8)
{
  v8 = a6.n128_f32[0];
  a6.n128_u64[0] = 0;
  v9 = result - 2;
  if (result >= 2)
  {
    if (a4)
    {
      v13 = a3 + 16;
      if (a3[16] && (v13 = a3 + 19, a3[19]) && (v13 = a3 + 22, a3[22]))
      {
        v14 = a3 + 18;
      }

      else
      {
        v16 = v13[2];
        v14 = ((*(*(a5 + 32) + 8))(a5 + 32, a6) + v16);
      }

      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    v17 = vabds_f32(v8, a7);
    if (((v17 / a8) & ~((v17 / a8) >> 31)) >= v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = (v17 / a8) & ~((v17 / a8) >> 31);
    }

    v19 = v17 - (v18 * a8);
    v21 = *(a2 + 32);
    v20 = a2 + 32;
    v22 = (*(v21 + 8))(v20);
    v23 = *(v22 + 4 * (v18 + (*(*v20 + 24))(v20) * v15));
    v24 = (*(*v20 + 8))(v20);
    v25 = *(v24 + 4 * (v18 + (*(*v20 + 24))(v20) * v15 + 1));
    v26 = (*(*v20 + 8))(v20);
    result = (*(*v20 + 24))(v20);
    v27 = ((v19 * (v25 - *(v26 + 4 * (v18 + result * v15)))) + (v23 * a8)) / a8;
  }

  return result;
}

uint64_t PadFireflyBloomingStep::PadFireflyBloomingStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v27 = &unk_2876F2948;
  AlgDataNode::AlgDataNode((v27 + 10), 0x377A34E1248190CLL, 0);
  *(a1 + 80) = &unk_2876F0108;
  *(a1 + 108) = 0;
  *(a1 + 96) = 20480;
  *(a1 + 104) = 1;
  *(a1 + 112) = a11;
  *(a1 + 120) = a3;
  *(a1 + 128) = a4 + 28;
  *(a1 + 136) = a5;
  *(a1 + 144) = a6;
  *(a1 + 152) = a7;
  *(a1 + 160) = a8;
  *(a1 + 168) = a12;
  *(a1 + 176) = a13;
  *(a1 + 184) = a14;
  *(a1 + 192) = a15;
  *(a1 + 200) = a16;
  *(a1 + 208) = a17;
  *(a1 + 216) = a18;
  *(a1 + 224) = a19;
  *(a1 + 232) = a9;
  *(a1 + 240) = a10;
  *(a1 + 248) = a20;
  PadFireflyBloomingStep::runNodeRegistrations(a1);
  *(a1 + 108) = 1;
  return a1;
}

{
  return PadFireflyBloomingStep::PadFireflyBloomingStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_2653F5A54(_Unwind_Exception *a1)
{
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

void *PadFireflyBloomingStep::runNodeRegistrations(PadFireflyBloomingStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 56, this + 80);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 15) + 8);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 15) + 72);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 31));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 18));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 19));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 20));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 29));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 21));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 22));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 23));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 24));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 25));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 26));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 27));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 28));
  v2 = *(this + 14);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

__int16 *PadFireflyBloomingStep::applyBloomingCorrection(PadFireflyBloomingStep *this)
{
  if (!**(this + 16))
  {
    PadFireflyBloomingStep::findPeakIndices(this);
  }

  v2 = *(this + 14);
  v3 = PadFireflyBloomingStep::find2ndPeakIndex(this, *(this + 19), 0, *(v2 + 28));
  v4 = PadFireflyBloomingStep::find2ndPeakIndex(this, *(this + 20), 0, *(v2 + 29));
  MagSquared = PadFireflyBloomingStep::getMagSquared(this, *(this + 20), 0, *(v2 + 29));
  v6 = PadFireflyBloomingStep::getMagSquared(this, *(this + 19), 0, *(v2 + 28));
  v7 = PadFireflyBloomingStep::getMagSquared(this, *(this + 20), 0, v4);
  v8 = PadFireflyBloomingStep::getMagSquared(this, *(this + 19), 0, v3);
  if (v6 > 360000.0 || MagSquared > 360000.0)
  {
    *(*(this + 31) + 28) = 1;
  }

  v9 = 1.0;
  if (*(this + 108) == 1 && v6 > 0.0)
  {
    v10 = 1.0;
    if (MagSquared > 0.0)
    {
      v11 = *(this + 29);
      v12 = v11 + 44;
      if (v11[44] && (v12 = v11 + 47, v11[47]) && (v12 = v11 + 50, v11[50]))
      {
        v13 = v11 + 46;
      }

      else
      {
        v14 = v12[2];
        v13 = ((*(*(*(this + 30) + 32) + 8))() + v14);
      }

      v15 = *v13;
      v16 = *(this + 15);
      v17 = *(v2 + 29);
      v18 = v16[5];
      v16 += 5;
      v19 = (*(v18 + 8))(v16);
      v20 = *(v19 + 4 * (v17 + (*(*v16 + 24))(v16) * v15));
      v21 = *(this + 15);
      v22 = v21[5];
      v21 += 5;
      v23 = (*(v22 + 8))(v21);
      v10 = ((v7 * *(v23 + 4 * (v4 + (*(*v21 + 24))(v21) * v15))) + (v20 * MagSquared)) / (MagSquared + v7);
      v24 = *(this + 15);
      LODWORD(v23) = *(v2 + 28);
      v25 = v24[13];
      v24 += 13;
      v26 = (*(v25 + 8))(v24);
      v27 = *(v26 + 4 * (v23 + (*(*v24 + 24))(v24) * v15));
      v28 = *(this + 15);
      v29 = v28[13];
      v28 += 13;
      v30 = (*(v29 + 8))(v28);
      v9 = ((v8 * *(v30 + 4 * (v3 + (*(*v28 + 24))(v28) * v15))) + (v27 * v6)) / (v6 + v8);
    }
  }

  else
  {
    v10 = 1.0;
  }

  v31 = *(this + 17);
  v32 = v31[4];
  v31 += 4;
  v33 = (*(v32 + 8))(v31);
  (*(*v31 + 32))(v31);
  (*(*v31 + 24))(v31);
  (*(*v31 + 32))(v31);
  v34 = *(this + 17);
  v35 = v34[4];
  v34 += 4;
  v177 = (*(v35 + 8))(v34);
  v175 = (*(*v34 + 32))(v34);
  (*(*v34 + 24))(v34);
  (*(*v34 + 32))(v34);
  v36 = *(this + 17);
  v37 = v36[4];
  v36 += 4;
  v173 = (*(v37 + 8))(v36);
  (*(*v36 + 32))(v36);
  v171 = (*(*v36 + 24))(v36);
  v169 = (*(*v36 + 32))(v36);
  v38 = *(this + 17);
  v39 = v38[4];
  v38 += 4;
  v167 = (*(v39 + 8))(v38);
  v165 = (*(*v38 + 32))(v38);
  v163 = (*(*v38 + 24))(v38);
  v161 = (*(*v38 + 32))(v38);
  v40 = *(this + 21);
  v41 = v40[4];
  v40 += 4;
  v42 = (*(v41 + 8))(v40);
  (*(*v40 + 24))(v40);
  v43 = *(this + 21);
  v44 = v43[4];
  v43 += 4;
  v159 = (*(v44 + 8))(v43);
  v157 = (*(*v43 + 24))(v43);
  v45 = *(this + 23);
  v46 = v45[4];
  v45 += 4;
  v47 = (*(v46 + 8))(v45);
  (*(*v45 + 24))(v45);
  v48 = *(this + 23);
  v49 = v48[4];
  v48 += 4;
  v155 = (*(v49 + 8))(v48);
  v153 = (*(*v48 + 24))(v48);
  v50 = *(this + 19);
  v51 = v50[4];
  v50 += 4;
  v52 = (*(v51 + 8))(v50);
  (*(*v50 + 32))(v50);
  (*(*v50 + 24))(v50);
  (*(*v50 + 32))(v50);
  v53 = *(this + 19);
  v54 = v53[4];
  v53 += 4;
  v151 = (*(v54 + 8))(v53);
  v149 = (*(*v53 + 32))(v53);
  (*(*v53 + 24))(v53);
  (*(*v53 + 32))(v53);
  v55 = *(this + 19);
  v56 = v55[4];
  v55 += 4;
  v147 = (*(v56 + 8))(v55);
  (*(*v55 + 32))(v55);
  v145 = (*(*v55 + 24))(v55);
  v143 = (*(*v55 + 32))(v55);
  v57 = *(this + 19);
  v58 = v57[4];
  v57 += 4;
  v141 = (*(v58 + 8))(v57);
  v139 = (*(*v57 + 32))(v57);
  v137 = (*(*v57 + 24))(v57);
  v135 = (*(*v57 + 32))(v57);
  v59 = *(this + 25);
  v60 = v59[4];
  v59 += 4;
  v61 = (*(v60 + 8))(v59);
  (*(*v59 + 24))(v59);
  v62 = *(this + 25);
  v63 = v62[4];
  v62 += 4;
  v133 = (*(v63 + 8))(v62);
  v64 = (*(*v62 + 24))(v62);
  v65 = *(this + 27);
  v66 = v65[4];
  v65 += 4;
  v67 = (*(v66 + 8))(v65);
  (*(*v65 + 24))(v65);
  v68 = *(this + 27);
  v69 = v68[4];
  v68 += 4;
  v70 = (*(v69 + 8))(v68);
  v71 = (*(*v68 + 24))(v68);
  v72 = (*(**(this + 17) + 56))(*(this + 17));
  if (v72)
  {
    v73 = 0;
    v74 = 0;
    v75 = (v167 + 2 * (v165 + v161 * v163));
    v76 = (v173 + 2 * (v169 * v171));
    v77 = (v177 + 2 * v175);
    do
    {
      v78 = *v33++;
      *(v42 + v73) = v10 * v78;
      v79 = *v77++;
      *(v159 + 4 * v157 + v73) = v10 * v79;
      v80 = *v76++;
      *(v47 + v73) = v80;
      v81 = *v75++;
      *(v155 + 4 * v153 + v73) = v81;
      *(v61 + v73) = v10 * *(v52 + v73);
      *(v133 + 4 * v64 + v73) = v10 * *(v151 + 4 * v149 + v73);
      *(v67 + v73) = *(v147 + 4 * (v143 * v145) + v73);
      *(v70 + 4 * v71 + v73) = *(v141 + 4 * (v139 + v135 * v137) + v73);
      ++v74;
      v73 += 4;
    }

    while (v72 > v74);
  }

  v82 = *(this + 18);
  v83 = v82[4];
  v82 += 4;
  v84 = (*(v83 + 8))(v82);
  (*(*v82 + 32))(v82);
  (*(*v82 + 24))(v82);
  (*(*v82 + 32))(v82);
  v85 = *(this + 18);
  v86 = v85[4];
  v85 += 4;
  v178 = (*(v86 + 8))(v85);
  v176 = (*(*v85 + 32))(v85);
  (*(*v85 + 24))(v85);
  (*(*v85 + 32))(v85);
  v87 = *(this + 18);
  v88 = v87[4];
  v87 += 4;
  v174 = (*(v88 + 8))(v87);
  (*(*v87 + 32))(v87);
  v172 = (*(*v87 + 24))(v87);
  v170 = (*(*v87 + 32))(v87);
  v89 = *(this + 18);
  v90 = v89[4];
  v89 += 4;
  v168 = (*(v90 + 8))(v89);
  v166 = (*(*v89 + 32))(v89);
  v164 = (*(*v89 + 24))(v89);
  v162 = (*(*v89 + 32))(v89);
  v91 = *(this + 22);
  v92 = v91[4];
  v91 += 4;
  v93 = (*(v92 + 8))(v91);
  (*(*v91 + 24))(v91);
  v94 = *(this + 22);
  v95 = v94[4];
  v94 += 4;
  v160 = (*(v95 + 8))(v94);
  v158 = (*(*v94 + 24))(v94);
  v96 = *(this + 24);
  v97 = v96[4];
  v96 += 4;
  v98 = (*(v97 + 8))(v96);
  (*(*v96 + 24))(v96);
  v99 = *(this + 24);
  v100 = v99[4];
  v99 += 4;
  v156 = (*(v100 + 8))(v99);
  v154 = (*(*v99 + 24))(v99);
  v101 = *(this + 20);
  v102 = v101[4];
  v101 += 4;
  v103 = (*(v102 + 8))(v101);
  (*(*v101 + 32))(v101);
  (*(*v101 + 24))(v101);
  (*(*v101 + 32))(v101);
  v104 = *(this + 20);
  v105 = v104[4];
  v104 += 4;
  v152 = (*(v105 + 8))(v104);
  v150 = (*(*v104 + 32))(v104);
  (*(*v104 + 24))(v104);
  (*(*v104 + 32))(v104);
  v106 = *(this + 20);
  v107 = v106[4];
  v106 += 4;
  v148 = (*(v107 + 8))(v106);
  (*(*v106 + 32))(v106);
  v146 = (*(*v106 + 24))(v106);
  v144 = (*(*v106 + 32))(v106);
  v108 = *(this + 20);
  v109 = v108[4];
  v108 += 4;
  v142 = (*(v109 + 8))(v108);
  v140 = (*(*v108 + 32))(v108);
  v138 = (*(*v108 + 24))(v108);
  v136 = (*(*v108 + 32))(v108);
  v110 = *(this + 26);
  v111 = v110[4];
  v110 += 4;
  v112 = (*(v111 + 8))(v110);
  (*(*v110 + 24))(v110);
  v113 = *(this + 26);
  v114 = v113[4];
  v113 += 4;
  v134 = (*(v114 + 8))(v113);
  v115 = (*(*v113 + 24))(v113);
  v116 = *(this + 28);
  v117 = v116[4];
  v116 += 4;
  v118 = (*(v117 + 8))(v116);
  (*(*v116 + 24))(v116);
  v119 = *(this + 28);
  v120 = v119[4];
  v119 += 4;
  v121 = (*(v120 + 8))(v119);
  v122 = (*(*v119 + 24))(v119);
  result = (*(**(this + 18) + 56))(*(this + 18));
  v124 = result;
  if (result)
  {
    v125 = 0;
    v126 = 0;
    result = (v168 + 2 * (v166 + v162 * v164));
    v127 = (v174 + 2 * (v170 * v172));
    v128 = (v178 + 2 * v176);
    do
    {
      v129 = *v84++;
      *(v93 + v125) = v9 * v129;
      v130 = *v128++;
      *(v160 + 4 * v158 + v125) = v9 * v130;
      v131 = *v127++;
      *(v98 + v125) = v131;
      v132 = *result++;
      *(v156 + 4 * v154 + v125) = v132;
      *(v112 + v125) = v9 * *(v103 + v125);
      *(v134 + 4 * v115 + v125) = v9 * *(v152 + 4 * v150 + v125);
      *(v118 + v125) = *(v148 + 4 * (v144 * v146) + v125);
      *(v121 + 4 * v122 + v125) = *(v142 + 4 * (v140 + v136 * v138) + v125);
      ++v126;
      v125 += 4;
    }

    while (v124 > v126);
  }

  return result;
}

uint64_t PadFireflyBloomingStep::findPeakIndex(uint64_t a1, void *a2, int a3)
{
  v3 = a2;
  v4 = (*(*a2 + 56))(a2);
  v5 = v3[4];
  v3 += 4;
  v26 = (*(v5 + 8))(v3);
  (*(*v3 + 32))(v3);
  (*(*v3 + 24))(v3);
  (*(*v3 + 32))(v3);
  v6 = (*(*v3 + 8))(v3);
  v7 = (*(*v3 + 32))(v3);
  (*(*v3 + 24))(v3);
  (*(*v3 + 32))(v3);
  v8 = (*(*v3 + 8))(v3);
  (*(*v3 + 32))(v3);
  v9 = (*(*v3 + 24))(v3);
  v10 = (*(*v3 + 32))(v3);
  v11 = (*(*v3 + 8))(v3);
  v12 = (*(*v3 + 32))(v3);
  v13 = (*(*v3 + 24))(v3);
  v14 = (*(*v3 + 32))(v3);
  v15 = 0;
  if (v4)
  {
    v16 = v4 - 1;
    v17 = (v6 + 4 * (v7 + v4 - 1));
    if (a3)
    {
      v17 = (v11 + 4 * (v12 + v16 + v14 * v13));
    }

    v18 = (v26 + 4 * v16);
    if (a3)
    {
      v18 = (v8 + 4 * (v16 + v10 * v9));
    }

    v19 = 0.0;
    do
    {
      v20 = *v18--;
      v21 = v20;
      v22 = *v17--;
      v23 = (v22 * v22) + (v21 * v21);
      if (v23 > v19)
      {
        v15 = v16;
        v19 = v23;
      }

      v24 = v16;
      LOWORD(v16) = v16 - 1;
    }

    while (v24);
  }

  return v15;
}

uint64_t PadFireflyBloomingStep::find2ndPeakIndex(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if ((*(*a2 + 56))(a2) - 1 == a4)
  {
    return (a4 - 1);
  }

  else if (a4)
  {
    MagSquared = PadFireflyBloomingStep::getMagSquared(a1, a2, a3, (a4 - 1));
    if (MagSquared <= PadFireflyBloomingStep::getMagSquared(a1, a2, a3, (a4 + 1)))
    {
      return (a4 + 1);
    }

    else
    {
      return (a4 - 1);
    }
  }

  else
  {
    return 1;
  }
}

float PadFireflyBloomingStep::getMagSquared(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2 + 32;
  v7 = (*(*(a2 + 32) + 8))(a2 + 32);
  (*(*v6 + 32))(v6);
  v8 = (*(*v6 + 24))(v6) * a3;
  v9 = *(v7 + 4 * (a4 + v8 * (*(*v6 + 32))(v6)));
  v10 = (*(*v6 + 8))(v6);
  v11 = (*(*v6 + 32))(v6) + a4;
  v12 = (*(*v6 + 24))(v6) * a3;
  v13 = (*(*v6 + 32))(v6);
  return (*(v10 + 4 * (v11 + v12 * v13)) * *(v10 + 4 * (v11 + v12 * v13))) + (v9 * v9);
}

uint64_t PadFireflyBloomingStep::findPeakIndices(PadFireflyBloomingStep *this)
{
  v2 = *(this + 14);
  PeakIndex = PadFireflyBloomingStep::findPeakIndex(this, *(this + 19), 0);
  v2[28] = PeakIndex;
  v4 = PadFireflyBloomingStep::findPeakIndex(PeakIndex, *(this + 20), 0);
  v2[29] = v4;
  v5 = PadFireflyBloomingStep::findPeakIndex(v4, *(this + 19), 1);
  v2[30] = v5;
  result = PadFireflyBloomingStep::findPeakIndex(v5, *(this + 20), 1);
  v2[31] = result;
  return result;
}

void PadFireflyBloomingStep::~PadFireflyBloomingStep(PadFireflyBloomingStep *this)
{
  *this = &unk_2876F2948;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2948;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t PadHomography::PadHomography(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = *(a3 + 165) - 2 * *(a3 + 176);
  *(result + 18) = *(a3 + 101) - 2 * *(a3 + 112);
  return result;
}

float PadHomography::rotateAndTranslate2D(uint64_t a1, float *a2)
{
  v2 = *(*a1 + 112);
  v3 = *a2 - v2;
  v4 = a2[1] - *(*a1 + 116);
  v5 = 1.0 / (*(*a1 + 76) + ((v4 * *(*a1 + 72)) + (*(*a1 + 68) * v3)));
  v6 = v5 * (*(*a1 + 52) + ((v4 * *(*a1 + 48)) + (*(*a1 + 44) * v3)));
  v7 = v5 * (*(*a1 + 64) + ((v4 * *(*a1 + 60)) + (*(*a1 + 56) * v3)));
  return v2 + v6;
}

uint64_t PadHomography::deriveHomography(float **this)
{
  v18 = *MEMORY[0x277D85DE8];
  PadHomography::initOffsetReferencePoints(this);
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  v13 = 0uLL;
  v12 = 0uLL;
  v2 = *this;
  v3 = *(v2 + 20);
  v2 += 20;
  v4 = vsubq_f32(v3, vcvtq_f32_s32(vmovl_s16(*(v2 - 13))));
  v12 = vsubq_f32(*(v2 + 4), vcvtq_f32_s32(vmovl_s16(*(v2 - 11))));
  v13 = v4;
  PadHomography::equationToMatrix(v5, v17, v14, v2, v2 + 4, v13.f32, v12.f32);
  v6 = v15;
  result = solveLeastSquare_f(v17, v15, v14, 8, 8);
  v8 = 0;
  v16 = 1065353216;
  v9 = v2 - 9;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v9[i] = *(v6 + i * 4);
    }

    ++v8;
    v9 += 3;
    v6 = (v6 + 12);
  }

  while (v8 != 3);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

float PadHomography::initOffsetReferencePoints(float **this)
{
  v2 = *this;
  v3 = *(this + 9);
  v2[28] = *((*(*(this[1] + 11) + 8))() + 4 * v3) * 0.5;
  v4 = *(this + 8);
  v2[29] = *((*(*(this[1] + 19) + 8))() + 4 * v4) * 0.5;
  v5 = v2[28];
  v2[20] = v2[20] - (v5 - *((*(*(this[1] + 11) + 8))() + 4));
  v6 = v2[28];
  v2[21] = v2[21] + (v6 - *((*(*(this[1] + 11) + 8))() + 4));
  v7 = v2[28];
  v2[22] = v2[22] + (v7 - *((*(*(this[1] + 11) + 8))() + 4));
  v8 = v2[28];
  v2[23] = v2[23] - (v8 - *((*(*(this[1] + 11) + 8))() + 4));
  v9 = v2[29];
  v2[24] = v2[24] - (v9 - *((*(*(this[1] + 19) + 8))() + 4));
  v10 = v2[29];
  v2[25] = v2[25] - (v10 - *((*(*(this[1] + 19) + 8))() + 4));
  v11 = v2[29];
  v2[26] = v2[26] + (v11 - *((*(*(this[1] + 19) + 8))() + 4));
  v12 = v2[29];
  result = v2[27] + (v12 - *((*(*(this[1] + 19) + 8))() + 4));
  v2[27] = result;
  return result;
}

float PadHomography::equationToMatrix(PadHomography *this, float *a2, float *a3, const float *a4, const float *a5, const float *a6, const float *a7)
{
  v7 = 0;
  v8 = 0;
  do
  {
    if (v8 > 3)
    {
      v13 = v8 & 3;
      v14 = &a2[v7];
      v14[24] = a4[v13];
      v10 = &a5[v13];
      v14[32] = a5[v13];
      v14[40] = 1.0;
      v11 = -a4[v13];
      v12 = &a7[v13];
    }

    else
    {
      v9 = &a2[v7];
      *v9 = a4[v7];
      v10 = &a5[v7];
      v9[8] = a5[v7];
      v9[16] = 1.0;
      v11 = -a4[v7];
      v12 = &a6[v7];
    }

    v15 = &a2[v7];
    v15[48] = *v12 * v11;
    v15[56] = -(*v10 * *v12);
    ++v8;
    ++v7;
  }

  while (v7 != 8);
  for (i = 0; i != 4; ++i)
  {
    v17 = &a3[i];
    *v17 = a6[i];
    result = a7[i];
    v17[4] = result;
  }

  return result;
}

uint64_t PadHoverPathCollectionCuratingStep::PadHoverPathCollectionCuratingStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, PadFireflyPathCollection *a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  AlgWorkNode::AlgWorkNode(a1);
  PadHomography::PadHomography(v31 + 80, a18, a10);
  *a1 = &unk_2876F2998;
  *(a1 + 104) = a3 + 28;
  *(a1 + 112) = a4 + 28;
  *(a1 + 120) = a5 + 28;
  *(a1 + 128) = a6 + 28;
  *(a1 + 136) = a10;
  *(a1 + 144) = PadFireflyPathCollection::getInputDetectionState(a8);
  *(a1 + 152) = PadFireflyPathCollection::getMutableNumContacts(a8);
  *(a1 + 160) = PadFireflyPathCollection::getMutableContact(a8);
  *(a1 + 168) = PadFireflyPathCollection::setUnfilteredAngles(a8);
  *(a1 + 176) = PadFireflyPathCollection::getPreviousFireflyContact(a8);
  *(a1 + 184) = a9;
  PadHoverPathTrack::PadHoverPathTrack(a1 + 192, *(a1 + 104), a7 + 28, a14, a17, a10, a11, a19, a21, a23);
  *(a1 + 280) = a20;
  *(a1 + 288) = 0;
  *(a1 + 296) = a11 + 28;
  *(a1 + 304) = a13 + 28;
  *(a1 + 312) = *a12;
  *(a1 + 320) = a15 + 28;
  *(a1 + 328) = a16;
  AlgDataNode::AlgDataNode((a1 + 336), 0x72426E63B6586B00, 0);
  *(a1 + 336) = &unk_2876F0108;
  *(a1 + 364) = 0;
  *(a1 + 352) = 20480;
  *(a1 + 360) = 1;
  AlgDataNode::AlgDataNode((a1 + 368), 0xDF497BF0B16A0CA3, 0);
  *(a1 + 368) = &unk_2876F0108;
  *(a1 + 396) = 0;
  *(a1 + 384) = 20480;
  *(a1 + 392) = 1;
  AlgDataNode::AlgDataNode((a1 + 400), 0x377A34E1248190CLL, 0);
  *(a1 + 400) = &unk_2876F0108;
  *(a1 + 428) = 0;
  *(a1 + 416) = 20480;
  *(a1 + 424) = 1;
  *(a1 + 432) = a21;
  *(a1 + 440) = a22;
  *(a1 + 448) = a24;
  *(a1 + 456) = a23 + 28;
  AlgDataNode::AlgDataNode((a1 + 464), 0x92A70C3ED8B1B6F6, 0);
  *(a1 + 464) = &unk_2876F0108;
  *(a1 + 492) = 0;
  *(a1 + 480) = 20480;
  *(a1 + 488) = 1;
  AlgDataNode::AlgDataNode((a1 + 496), 0x50841B2089138985, 0);
  *(a1 + 528) = 513;
  *(a1 + 532) = 0;
  *(a1 + 512) = 39424;
  *(a1 + 520) = 0x500100000010;
  *(a1 + 496) = &unk_2876F2A18;
  *(a1 + 544) = 0u;
  AlgDataNode::AlgDataNode((a1 + 560), 0x5158126BC94EA640, 0);
  *(a1 + 592) = 513;
  *(a1 + 596) = 0;
  *(a1 + 576) = 39424;
  *(a1 + 584) = 0x500100000010;
  *(a1 + 560) = &unk_2876F2A18;
  *(a1 + 608) = 0u;
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 336);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 368);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 464);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a23);
  *(a1 + 364) = 1;
  *(a1 + 396) = 1;
  *(a1 + 492) = 1;
  *(a1 + 428) = 1;
  return a1;
}

{
  return PadHoverPathCollectionCuratingStep::PadHoverPathCollectionCuratingStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

void sub_2653F8220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  *v15 = &unk_2876F3810;
  *v14 = &unk_2876F3810;
  *a11 = &unk_2876F3810;
  *v13 = &unk_2876F3810;
  *a12 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v12);
  _Unwind_Resume(a1);
}

uint64_t PadHoverPathCollectionCuratingStep::run(float32x2_t **this)
{
  if (*(this + 428) == 1 && this[38][4].i16[0])
  {
    PadHoverPathTrack::updateTrajectory((this + 24));
    PadHoverPathCollectionCuratingStep::modifyContact(this);
    *this[15] = vmul_f32(*this[15], vdup_n_s32(0x447A0000u));
    PadHoverPathCollectionCuratingStep::updateTiltAndAzimuth(this, &this[21][3] + 1, &this[21][4], 0);
    PadHoverPathCollectionCuratingStep::maintainRecentHoverAngles(this);
    if (*(this + 63) || *(this + 62) <= 3u)
    {
      v2 = 0;
    }

    else
    {
      v2 = 4096;
    }

    this[18][3].i16[2] = v2;
  }

  return 0;
}

float PadHoverPathCollectionCuratingStep::modifyContact(PadHoverPathCollectionCuratingStep *this)
{
  v2 = vdup_n_s32(0x447A0000u);
  v3 = *(this + 14);
  **(this + 13) = vmul_f32(**(this + 13), v2);
  v4 = *(this + 16);
  v5 = vmul_f32(*v4, v2);
  *v4 = v5;
  v5.i16[0] = *(this + 156);
  *v3 = vmul_n_f32(vmul_f32(*v3, v2), v5.u32[0]);
  PadHoverPathCollectionCuratingStep::updatePathStage(this);
  PadHoverPathCollectionCuratingStep::setHomographyPos(this, this + 336);
  v19 = 0;
  PadHoverPathCollectionCuratingStep::updateTiltAndAzimuth(this, &v19 + 1, &v19, 1);
  v6 = *(this + 20);
  if (*(v6 + 1) == 2)
  {
    v7 = *(this + 13);
    v8 = *v7;
    *(&_Q0 + 1) = **(this + 14);
    *(v6 + 4) = _Q0;
    *(v6 + 32) = 0x3F800000447A0000;
    LODWORD(_Q0) = HIDWORD(v19);
    *(v6 + 28) = v19;
    *(v6 + 48) = _Q0;
    *(v6 + 40) = 0;
    *(v6 + 52) = **(this + 16);
    *(v6 + 60) = *(v7 + 2);
    __asm { FMOV            V0.2S, #1.0 }

    *(v6 + 20) = _Q0;
    *(v6 + 44) = 4096;
    *v6 = 18;
    *(v6 + 2) = 7;
    if (*(*(this + 56) + 28) == 1)
    {
      *(v6 + 44) = 12288;
    }
  }

  else
  {
    v14 = *(this + 22);
    _Q0 = *v14;
    v15 = v14[1];
    v16 = v14[3];
    *(v6 + 32) = v14[2];
    *(v6 + 48) = v16;
    *v6 = _Q0;
    *(v6 + 16) = v15;
    v17 = *(this + 20);
    *(v17 + 1) = *(this + 288);
    *(v17 + 32) = 0;
    LODWORD(_Q0) = HIDWORD(v19);
    *(v17 + 28) = v19;
    *(v17 + 48) = _Q0;
  }

  return *&_Q0;
}

double PadHoverPathCollectionCuratingStep::maintainRecentHoverAngles(PadHoverPathCollectionCuratingStep *this)
{
  if ((PadHoverPathTrack::getHighResidualStatus((this + 192)) & 1) == 0)
  {
    v3 = *(this + 20);
    v4 = *(this + 21);
    v5 = *(this + 40);
    v6 = *(v3 + 28);
    *v5 = *(v3 + 48);
    *(v5 + 4) = v6;
    result = *(v4 + 28);
    *(v5 + 8) = result;
    *(v5 + 16) = 2;
  }

  return result;
}

uint64_t PadHoverPathCollectionCuratingStep::updatePathStage(PadHoverPathCollectionCuratingStep *this)
{
  PadHoverPathCollectionCuratingStep::applyHysteresisOnPathStage(this);
  result = PadHoverPathCollectionCuratingStep::applyGracefulMitigations(this);
  **(this + 19) = 1;
  if (!*(this + 63) && *(this + 62) >= 4u && (*(*(this + 41) + 28) & 1) == 0)
  {
    *(*(this + 23) + 28) = 0;
    **(this + 19) = 0;
  }

  *(this + 288) = *(*(this + 20) + 1);
  return result;
}

uint64_t PadHoverPathCollectionCuratingStep::applyHysteresisOnPathStage(PadHoverPathCollectionCuratingStep *this)
{
  result = PadHoverPathTrack::getHoverInOutOfRangeRegion((this + 192));
  if (result && *(*(this + 41) + 28) != 1)
  {
    result = PadHoverPathTrack::getHoverInOutOfRangeRegion((this + 192));
    if (result == 2)
    {
      *(*(this + 20) + 1) = *(this + 288);
    }

    else
    {
      *(*(this + 20) + 1) = 7;
      *(*(this + 35) + 2) = 1;
    }
  }

  else
  {
    *(*(this + 20) + 1) = 2;
  }

  return result;
}

uint64_t PadHoverPathCollectionCuratingStep::applyGracefulMitigations(PadHoverPathCollectionCuratingStep *this)
{
  result = PadHoverPathTrack::getHighRingEnergyStatus((this + 192));
  if ((result & 1) != 0 || (result = PadHoverPathTrack::getHighResidualStatus((this + 192)), result))
  {
    *(*(this + 20) + 1) = 7;
  }

  return result;
}

void PadHoverPathCollectionCuratingStep::setHomographyPos(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 28) == 1)
  {
    v6[3] = v2;
    v6[4] = v3;
    v4 = *(a1 + 104);
    v6[0] = *v4;
    *v4 = PadHomography::rotateAndTranslate2D(a1 + 80, v6);
    *(v4 + 4) = v5;
  }
}

void PadHoverPathCollectionCuratingStep::updateTiltAndAzimuth(PadHoverPathCollectionCuratingStep *this, float *a2, float *a3, int a4)
{
  v8 = 120;
  if (a4)
  {
    v8 = 128;
  }

  v9 = *(this + v8);
  v10 = *v9;
  v11 = v9[1];
  v12 = sqrtf((v11 * v11) + (v10 * v10));
  v13 = 7200.0;
  if (v12 <= 7200.0)
  {
    v13 = v12;
  }

  v14 = 1.57079633 - atan2f(sqrtf(51840000.0 - (v13 * v13)), v13);
  *a2 = v14;
  *a3 = atan2f(v11, v10);
  v15 = *a2;
  if (*(this + 396) == 1)
  {
    PadHoverPathCollectionCuratingStep::correctTilt(this, v15);
  }

  *a2 = v15;
  if (*(this + 492) == 1 && a4)
  {

    PadHoverPathCollectionCuratingStep::applyAnglesLinearityCorrection(this, a2, a3);
  }
}

uint64_t PadHoverPathCollectionCuratingStep::correctTilt(PadHoverPathCollectionCuratingStep *this, float a2)
{
  v4 = (*(*(*(this + 55) + 872) + 8))(*(this + 55) + 872);
  result = (*(*(*(this + 55) + 928) + 8))(*(this + 55) + 928);
  if (*v4 <= a2)
  {
    v6 = *(*(this + 55) + 885) - 1;
    if (v6 >= 2 && v4[1] <= a2)
    {
      v8 = 1;
      do
      {
        ++v8;
      }

      while (v6 > v8 && v4[v8] <= a2);
      v7 = v8 - 1;
    }

    else
    {
      v7 = 0;
    }

    *(result + 4 * v7);
    v4[v7];
  }

  return result;
}

void PadHoverPathCollectionCuratingStep::applyAnglesLinearityCorrection(PadHoverPathCollectionCuratingStep *this, float *a2, float *a3)
{
  v6 = *(this + 57);
  if (*(this + 63) > *(v6 + 28))
  {
    v7 = sqrtf((*(*(this + 14) + 4) * *(*(this + 14) + 4)) + (**(this + 14) * **(this + 14))) < *(v6 + 56);
    PadHoverPathCollectionCuratingStep::applyAnglesLinearityCorrPerAngle(this, this + 496, v7, 1, a3);
    PadHoverPathCollectionCuratingStep::applyAnglesLinearityCorrPerAngle(this, this + 560, v7, 0, a2);
  }

  v8 = *(this + 69);
  v9 = *(this + 68);
  if (v8 >= 2)
  {
    v9 = (v9 & 1) == 0;
    *(this + 68) = v9;
    --v8;
  }

  *(this + 69) = v8 + 1;
  v10 = v9 >= 2 - v8;
  v11 = (this + 4 * (v9 - (2 - v8)) + 532);
  v12 = (this + 4 * v9 + 4 * v8 + 532);
  if (v10)
  {
    v12 = v11;
  }

  *v12 = *a3;
  v13 = *(this + 77);
  v14 = *(this + 76);
  if (v13 >= 2)
  {
    v14 = (v14 & 1) == 0;
    *(this + 76) = v14;
    --v13;
  }

  *(this + 77) = v13 + 1;
  v10 = v14 >= 2 - v13;
  v15 = (this + 4 * (v14 - (2 - v13)) + 596);
  v16 = (this + 4 * v14 + 4 * v13 + 596);
  if (v10)
  {
    v16 = v15;
  }

  *v16 = *a2;
}

float PadHoverPathCollectionCuratingStep::applyAnglesLinearityCorrPerAngle(uint64_t a1, uint64_t a2, int a3, int a4, float *a5)
{
  v5 = *(a1 + 456);
  v6 = 44;
  if (!a4)
  {
    v6 = 32;
  }

  v7 = (v5 + v6);
  v8 = *(a2 + 48);
  v9 = a2 + 4 * v8 + 36;
  v10 = 4;
  if (v8)
  {
    v10 = -4;
  }

  LODWORD(v11) = *(v9 + v10);
  v12 = v8 >= 2;
  v13 = -8;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = *&v11 - *(v9 + v13);
  v15 = *a5;
  v16 = *a5 - *&v11;
  if (a4 != 1)
  {
    goto LABEL_18;
  }

  v17 = v14;
  if (v14 <= -3.14159265)
  {
    v18 = 6.28318531;
    goto LABEL_12;
  }

  if (v17 > 3.14159265)
  {
    v18 = -6.28318531;
LABEL_12:
    v14 = v18 + v17;
  }

  v19 = v16;
  if (v16 <= -3.14159265)
  {
    v20 = 6.28318531;
  }

  else
  {
    if (v19 <= 3.14159265)
    {
      goto LABEL_18;
    }

    v20 = -6.28318531;
  }

  v16 = v20 + v19;
LABEL_18:
  v21 = fabsf(v14) < *v7;
  v22 = fabsf(v16);
  if (v21)
  {
    v23 = 0;
    if (!a3)
    {
      return *&v11;
    }
  }

  else
  {
    v23 = v22 >= v7[1];
    if (!a3)
    {
      return *&v11;
    }
  }

  if (v22 >= v7[2])
  {
    v24 = (v5 + 24);
  }

  else
  {
    if (!v23)
    {
      goto LABEL_28;
    }

    v24 = (v5 + 20);
  }

  v15 = *&v11 + (v16 * *v24);
  *a5 = v15;
LABEL_28:
  if (a4 == 1)
  {
    v11 = v15;
    if (v15 <= -3.14159265)
    {
      v25 = 6.28318531;
    }

    else
    {
      if (v11 <= 3.14159265)
      {
        return *&v11;
      }

      v25 = -6.28318531;
    }

    *&v11 = v25 + v11;
    *a5 = *&v11;
  }

  return *&v11;
}

void PadHoverPathCollectionCuratingStep::~PadHoverPathCollectionCuratingStep(PadHoverPathCollectionCuratingStep *this)
{
  *this = &unk_2876F2998;
  *(this + 70) = &unk_2876F3810;
  *(this + 62) = &unk_2876F3810;
  *(this + 58) = &unk_2876F3810;
  *(this + 50) = &unk_2876F3810;
  *(this + 46) = &unk_2876F3810;
  *(this + 42) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2998;
  *(this + 70) = &unk_2876F3810;
  *(this + 62) = &unk_2876F3810;
  *(this + 58) = &unk_2876F3810;
  *(this + 50) = &unk_2876F3810;
  *(this + 46) = &unk_2876F3810;
  *(this + 42) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

{
  *this = &unk_2876F2998;
  *(this + 70) = &unk_2876F3810;
  *(this + 62) = &unk_2876F3810;
  *(this + 58) = &unk_2876F3810;
  *(this + 50) = &unk_2876F3810;
  *(this + 46) = &unk_2876F3810;
  *(this + 42) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

uint64_t PadFireflyMultiStylusDetectStep::PadFireflyMultiStylusDetectStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = AlgWorkNode::AlgWorkNode(a1);
  *v15 = &unk_2876F2A80;
  v15[10] = a6 + 28;
  v15[11] = a5 + 28;
  v15[12] = a3;
  v15[13] = a4;
  v15[14] = a7;
  v15[15] = a8;
  v16 = (v15 + 17);
  *(v15 + 128) = 1;
  AlgDataNode::AlgDataNode((v15 + 17), 0x377A34E1248190CLL, 0);
  *(a1 + 136) = &unk_2876F0108;
  *(a1 + 164) = 0;
  *(a1 + 152) = 20480;
  *(a1 + 160) = 1;
  AlgWorkNode::registerAlgDataNode(a1 + 8, a7);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a8);
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 104));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 104));
  AlgWorkNode::registerAlgDataNode(a1 + 56, v16);
  *(a1 + 164) = *(a5 + 60);
  return a1;
}

uint64_t PadFireflyMultiStylusDetectStep::run(PadFireflyMultiStylusDetectStep *this)
{
  if (*(this + 164) == 1 && *(*(this + 13) + 28) == 3 && PadFireflyMultiStylusDetectStep::detectMultiplePeaks(this))
  {
    *(*(this + 13) + 28) = 4;
  }

  return 0;
}

uint64_t PadFireflyMultiStylusDetectStep::detectMultiplePeaks(PadFireflyMultiStylusDetectStep *this)
{
  v1 = this;
  if ((*(*(this + 10) + 10) & *(*(this + 12) + 40)) != 0 || !**(this + 11))
  {
    this = PadFireflyMultiStylusDetectStep::detectMultiplePeaks1D(this, *(this + 14));
    v2 = this;
    *(v1 + 128) = this;
  }

  else
  {
    v2 = *(this + 128);
  }

  return (v2 | PadFireflyMultiStylusDetectStep::detectMultiplePeaks1D(this, *(v1 + 15))) & 1;
}

uint64_t PadFireflyMultiStylusDetectStep::detectMultiplePeaks1D(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = (*(*a2 + 56))(a2) - 1;
  v4 = v2[4];
  v2 += 4;
  v5 = (*(v4 + 8))(v2);
  (*(*v2 + 32))(v2);
  (*(*v2 + 24))(v2);
  (*(*v2 + 32))(v2);
  v6 = (*(*v2 + 8))(v2);
  v7 = (*(*v2 + 32))(v2);
  (*(*v2 + 24))(v2);
  (*(*v2 + 32))(v2);
  if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (v6 + 2 * (v7 + v3));
  v12 = 0.0;
  v13 = 0.0;
  v14 = (v5 + 2 * v3);
  do
  {
    v15 = *v14--;
    v16 = v15;
    v17 = *v11--;
    v18 = v10;
    v19 = (v17 * v17) + (v16 * v16);
    if (v19 > 360000.0)
    {
      ++v8;
      if (v19 <= v12)
      {
        if (v19 > v13)
        {
          v9 = v3;
          v13 = v19;
        }
      }

      else
      {
        v10 = v3;
        v9 = v18;
        v13 = v12;
        v12 = v19;
      }
    }

    v20 = v3;
    LOWORD(v3) = v3 - 1;
  }

  while (v20 > 0);
  v21 = v10;
  v22 = v8;
  v23 = v21 - v9;
  if (v23 < 0)
  {
    v23 = -v23;
  }

  v24 = v23 > 1;
  v25 = v8 == 2 && v24;
  return v22 > 2 || v25;
}

void PadFireflyMultiStylusDetectStep::~PadFireflyMultiStylusDetectStep(PadFireflyMultiStylusDetectStep *this)
{
  *this = &unk_2876F2A80;
  *(this + 17) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2A80;
  *(this + 17) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t PadFireflyPeakDetectionStep::PadFireflyPeakDetectionStep(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v28 = &unk_2876F2AD0;
  v29 = (v28 + 10);
  AlgDataNode::AlgDataNode((v28 + 10), 0x377A34E1248190CLL, 0);
  *(a1 + 80) = &unk_2876F0108;
  *(a1 + 108) = 0;
  *(a1 + 96) = 20480;
  *(a1 + 104) = 1;
  *(a1 + 112) = a3;
  *(a1 + 120) = a4;
  *(a1 + 128) = a5;
  *(a1 + 136) = a6;
  *(a1 + 144) = a7;
  *(a1 + 152) = a8;
  *(a1 + 160) = a9;
  *(a1 + 168) = a18;
  *(a1 + 176) = a10;
  *(a1 + 184) = a11;
  *(a1 + 192) = a12;
  *(a1 + 200) = a13;
  *(a1 + 208) = a14;
  *(a1 + 216) = a15 + 28;
  *(a1 + 224) = a16 + 28;
  *(a1 + 232) = a17 + 28;
  *(a1 + 248) = a19;
  *(a1 + 256) = a20;
  *(a1 + 264) = a21 + 28;
  AlgDataNode::AlgDataNode((a1 + 272), 0x4848AF96B1668A17, 0);
  *(a1 + 272) = &unk_2876F01A8;
  *(a1 + 300) = 0;
  *(a1 + 288) = 20482;
  *(a1 + 296) = 1;
  AlgWorkNode::registerAlgDataNode(a1 + 56, a17);
  AlgWorkNode::registerAlgDataNode(a1 + 56, v29);
  AlgWorkNode::registerAlgDataNode(a1 + 24, *(a1 + 256));
  AlgWorkNode::registerAlgDataNode(a1 + 24, a21);
  AlgWorkNode::registerAlgDataNode(a1 + 24, a1 + 272);
  *(a1 + 108) = 1;
  return a1;
}

{
  return PadFireflyPeakDetectionStep::PadFireflyPeakDetectionStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

void sub_2653F9550(_Unwind_Exception *a1)
{
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

uint64_t PadFireflyPeakDetectionStep::run(PadFireflyPeakDetectionStep *this)
{
  if (*(this + 108) == 1)
  {
    PadFireflyPeakDetectionStep::runFireflyPeakDetection(this, 0);
    PadFireflyPeakDetectionStep::runFireflyPeakDetection(this, 1u);
    *(*(this + 32) + 28) = *(*(this + 33) + 1092);
  }

  return 0;
}

uint64_t PadFireflyPeakDetectionStep::runFireflyPeakDetection(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 120);
  v5 = v4[4];
  v4 += 4;
  v6 = (*(v5 + 8))(v4);
  (*(*v4 + 32))(v4);
  v7 = (*(*v4 + 24))(v4) * a2;
  v81 = v6 + 2 * v7 * (*(*v4 + 32))(v4);
  v8 = *(a1 + 120);
  v9 = v8[4];
  v8 += 4;
  v10 = (*(v9 + 8))(v8);
  v11 = (*(*v8 + 32))(v8);
  v12 = (*(*v8 + 24))(v8) * a2;
  v80 = v10 + 2 * (v11 + v12 * (*(*v8 + 32))(v8));
  v13 = *(a1 + 128);
  v14 = v13[4];
  v13 += 4;
  v15 = (*(v14 + 8))(v13);
  (*(*v13 + 32))(v13);
  v16 = (*(*v13 + 24))(v13) * a2;
  v79 = v15 + 2 * v16 * (*(*v13 + 32))(v13);
  v17 = *(a1 + 128);
  v18 = v17[4];
  v17 += 4;
  v19 = (*(v18 + 8))(v17);
  v20 = (*(*v17 + 32))(v17);
  v21 = (*(*v17 + 24))(v17) * a2;
  v78 = v19 + 2 * (v20 + v21 * (*(*v17 + 32))(v17));
  v22 = *(a1 + 136);
  v23 = v22[4];
  v22 += 4;
  v75 = (*(v23 + 8))(v22);
  (*(*v22 + 32))(v22);
  v74 = (*(*v22 + 24))(v22);
  v73 = (*(*v22 + 32))(v22);
  v24 = *(a1 + 136);
  v25 = v24[4];
  v24 += 4;
  v72 = (*(v25 + 8))(v24);
  v71 = (*(*v24 + 32))(v24);
  v70 = (*(*v24 + 24))(v24);
  v69 = (*(*v24 + 32))(v24);
  v26 = *(a1 + 144);
  v27 = v26[4];
  v26 += 4;
  v68 = (*(v27 + 8))(v26);
  (*(*v26 + 32))(v26);
  v67 = (*(*v26 + 24))(v26);
  v66 = (*(*v26 + 32))(v26);
  v28 = *(a1 + 144);
  v29 = v28[4];
  v28 += 4;
  v65 = (*(v29 + 8))(v28);
  v64 = (*(*v28 + 32))(v28);
  v63 = (*(*v28 + 24))(v28);
  v62 = (*(*v28 + 32))(v28);
  v30 = *(a1 + 264);
  if (a2)
  {
    v31 = 1094;
  }

  else
  {
    v31 = 1092;
  }

  if (a2)
  {
    v32 = 1095;
  }

  else
  {
    v32 = 1093;
  }

  v33 = 1084;
  if (!a2)
  {
    v33 = 1076;
  }

  v34 = (v30 + v33);
  v35 = 1064;
  if (!a2)
  {
    v35 = 1056;
  }

  v76 = v35;
  if (a2)
  {
    v36 = 1068;
  }

  else
  {
    v36 = 1060;
  }

  if (a2)
  {
    v37 = 1074;
  }

  else
  {
    v37 = 1072;
  }

  if (a2)
  {
    v38 = 1075;
  }

  else
  {
    v38 = 1073;
  }

  v39 = *(a1 + 176);
  v40 = v39 + 44;
  if (v39[44] == a2 || (v40 = v39 + 47, v39[47] == a2) || (v40 = v39 + 50, v39[50] == a2))
  {
    v41 = v40[2];
    v42 = ((*(*(*(a1 + 208) + 32) + 8))() + v41);
  }

  else
  {
    v42 = v39 + 46;
  }

  v43 = (v30 + v31);
  v44 = (v30 + v32);
  v45 = *v42;
  v46 = (*(**(a1 + 192) + 40))(*(a1 + 192));
  v47 = **(a1 + 232);
  if (v47 && v46 > v45 && (v47 != 2 || *(a1 + 168) > v45))
  {
    if (v47 == 2)
    {
      v56 = *(a1 + 216);
      v55 = *(a1 + 224);
      if (*v55 > *v56 || v55[1] > v56[1])
      {
        PadFireflyModelBasedGridSearch::determineComputationBound(*(a1 + 248), 1, a2);
        v57 = *(a1 + 248);
        *(v57 + 392) = 0;
        if (a2)
        {
          if (a2 == 1)
          {
            PadFireflyModelBasedGridSearch::runModelBasedGridSearch(v57, 1, 0);
            if (*(a1 + 240) == 1)
            {
              PadFireflyModelBasedGridSearch::runModelBasedGridSearch(*(a1 + 248), 1, 1);
              *(*(a1 + 248) + 392) = 2;
              PadFireflyPeakDetectionStep::updateInitialConditionState(a1);
            }

            PadFireflyPeakDetectionStep::populatePatchFromModelBasedInitialConditionState(a1);
          }
        }

        else
        {
          v59 = *(*(a1 + 232) + 31);
          *(a1 + 240) = 0;
          PadFireflyModelBasedGridSearch::runModelBasedGridSearch(v57, 0, v59);
          if (v59 == 1)
          {
            *(a1 + 240) = PadFireflyPeakDetectionStep::isModelBasedPeak2FAmbiguous(a1);
          }
        }

        *(*(a1 + 264) + 1096) = *(*(a1 + 248) + 392);
      }
    }

    else
    {
      if (v47 != 3)
      {
        goto LABEL_29;
      }

      v77 = (v30 + v76);
      v51 = (v30 + v36);
      v52 = (v30 + v37);
      v53 = (v30 + v38);
      if (*(a1 + 112) == 1)
      {
        v54 = (*(**(a1 + 120) + 56))(*(a1 + 120));
        v60 = (*(**(a1 + 128) + 56))(*(a1 + 128));
        PadFireflyPeakDetectionStep::findFireflyPeakPhaseIndex(a1, 1, a2, v45, 0, 1, v81, v80, v79, v78, (v68 + 4 * v67 * a2 * v66), (v65 + 4 * (v64 + v63 * a2 * v62)), v54, v60, v43, v34, v44, v34 + 1, v52, v53, v77, v51);
      }

      else
      {
        v58 = (*(**(a1 + 128) + 56))(*(a1 + 128));
        v61 = (*(**(a1 + 120) + 56))(*(a1 + 120));
        PadFireflyPeakDetectionStep::findFireflyPeakPhaseIndex(a1, 0, a2, v45, 1, 0, v79, v78, v81, v80, (v75 + 4 * v74 * a2 * v73), (v72 + 4 * (v71 + v70 * a2 * v69)), v58, v61, v44, v34 + 1, v43, v34, v52, v53, v77, v51);
      }
    }

    LOBYTE(v47) = 3;
    goto LABEL_29;
  }

  v48 = (*(**(a1 + 120) + 56))(*(a1 + 120));
  PadFireflyPeakDetectionStep::peakDetectionPerAxisMaxMag(a1, v81, v80, v48, 0, a2, v34, v43);
  v49 = (*(**(a1 + 128) + 56))(*(a1 + 128));
  PadFireflyPeakDetectionStep::peakDetectionPerAxisMaxMag(a1, v79, v78, v49, 1, a2, v34 + 1, v44);
  LOBYTE(v47) = 0;
LABEL_29:
  *(a1 + 300) = v47;
  return 1;
}

void PadFireflyPeakDetectionStep::peakDetectionPerAxisMaxMag(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, float *a7, unsigned __int8 *a8)
{
  v8 = a4 - 1;
  if (a6 == 1)
  {
    v9 = 1092;
    if (a5)
    {
      v9 = 1093;
    }

    v10 = *(*(a1 + 264) + v9);
    v11 = *(*(a1 + 184) + 97);
    v12 = fmax((v10 - v11), 0.0);
    v8 = fmin((v11 + v10), v8);
    if (v12 > v8)
    {
      *a8 = 0;
      return;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v13 = 0;
  v14 = 0.0;
  do
  {
    v15 = *(a2 + 2 * v12);
    v16 = *(a3 + 2 * v12);
    v17 = v16 * v16;
    if ((v17 + (v15 * v15)) > v14)
    {
      v13 = v12;
      v14 = v17 + (v15 * v15);
    }

    LOBYTE(v12) = v12 + 1;
  }

  while (v12 <= v8);
  *a8 = v13;
  if (v14 > 0.0)
  {
    *a7 = atan2f(*(a3 + 2 * v13), *(a2 + 2 * v13));
  }
}

void PadFireflyPeakDetectionStep::findFireflyPeakPhaseIndex(uint64_t a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, float *a11, float *a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 *a15, float *a16, _BYTE *a17, float *a18, _BYTE *a19, _BYTE *a20, float *a21, float *a22)
{
  v64 = *MEMORY[0x277D85DE8];
  PadFireflyPeakDetectionStep::peakDetectionPerAxisMaxMag(a1, a7, a8, a13, a5, a3, a16, a15);
  v26 = PadFireflyPeakDetectionStep::estimatePhase(v25, a11, a12, a14);
  v27 = *(a1 + 192);
  v28 = v27[4];
  v27 += 4;
  v59 = (*(v28 + 8))(v27);
  (*(*v27 + 32))(v27);
  v58 = (*(*v27 + 24))(v27);
  v29 = (*(*v27 + 32))(v27);
  v30 = *(a1 + 200);
  v31 = v30[4];
  v30 += 4;
  v32 = (*(v31 + 8))(v30);
  (*(*v30 + 32))(v30);
  v33 = (*(*v30 + 24))(v30);
  v34 = (*(*v30 + 32))(v30);
  v35 = __sincosf_stret(v26);
  if (a14)
  {
    v36 = 0;
    do
    {
      v63[v36] = (v35.__sinval * *(a10 + 2 * v36)) + (*(a9 + 2 * v36) * v35.__cosval);
      ++v36;
    }

    while (a14 > v36);
  }

  v37 = v26 + 3.14159265;
  v38 = __sincosf_stret(v37);
  if (a14)
  {
    v39 = 0;
    do
    {
      v62[v39] = (v38.__sinval * *(a10 + 2 * v39)) + (*(a9 + 2 * v39) * v38.__cosval);
      ++v39;
    }

    while (a14 > v39);
  }

  v40 = v32 + 4 * (v33 * a4 * v34);
  v41 = v59 + 4 * (v58 * a4 * v29);
  *a19 = PadFireflyPeakDetectionStep::findInitialPeakIdx(a1, v63, a14, a3, a6);
  InitialPeakIdx = PadFireflyPeakDetectionStep::findInitialPeakIdx(a1, v62, a14, a3, a6);
  *a20 = InitialPeakIdx;
  v43 = *a15 * a14;
  v44 = v43 + InitialPeakIdx;
  if (a2)
  {
    v45 = 1.0;
  }

  else
  {
    v45 = -1.0;
  }

  v46 = atan2f(v45 * *(v40 + 4 * (v43 + *a19)), *(v41 + 4 * (v43 + *a19)));
  v47 = *a16 - atan2f(v45 * *(v40 + 4 * v44), *(v41 + 4 * v44));
  v48 = vabds_f32(*a16 - v46, v26);
  if (v48 > 6.28318531)
  {
    v49 = v48 + -6.28318531;
    v48 = v49;
  }

  if (v48 > 3.14159265)
  {
    v50 = 6.28318531 - v48;
    v48 = v50;
  }

  *a21 = v48;
  v51 = vabds_f32(v47, v37);
  if (v51 > 6.28318531)
  {
    v52 = v51 + -6.28318531;
    v51 = v52;
  }

  if (v51 > 3.14159265)
  {
    v53 = 6.28318531 - v51;
    v51 = v53;
  }

  *a22 = v51;
  v54 = *a21 > v51;
  if (*a21 <= v51)
  {
    v55 = v26;
  }

  else
  {
    v55 = v26 + 3.14159265;
  }

  *a18 = v55;
  if (v54)
  {
    v56 = a20;
  }

  else
  {
    v56 = a19;
  }

  *a17 = *v56;
  v57 = *MEMORY[0x277D85DE8];
}

BOOL PadFireflyPeakDetectionStep::isModelBasedPeak2FAmbiguous(PadFireflyPeakDetectionStep *this)
{
  v1 = *(this + 31);
  v2 = *(v1 + 384);
  if (*(v2 + 52) < (*(*(this + 29) + 12) * *(v1 + 292)) || !PadFireflyPeakDetectionStep::isModelBasedOneAxisPeak2FAmbiguous(this, *(v2 + 28), *(v1 + 268), *(this + 19)))
  {
    return 0;
  }

  v4 = *(v2 + 29);
  v5 = *(v1 + 269);
  v6 = *(this + 20);

  return PadFireflyPeakDetectionStep::isModelBasedOneAxisPeak2FAmbiguous(this, v4, v5, v6);
}

float PadFireflyPeakDetectionStep::updateInitialConditionState(PadFireflyPeakDetectionStep *this)
{
  v1 = *(*(this + 29) + 16);
  v2 = *(this + 31);
  result = v1 * *(*(v2 + 384) + 56);
  if (*(v2 + 296) <= result)
  {
    return PadFireflyModelBasedGridSearch::replaceInitialConditionByNextBestResult(v2);
  }

  return result;
}

__n128 PadFireflyPeakDetectionStep::populatePatchFromModelBasedInitialConditionState(PadFireflyPeakDetectionStep *this)
{
  v1 = *(*(this + 31) + 384);
  v2 = *(this + 33);
  *(v2 + 1092) = *(v1 + 28);
  *(v2 + 1094) = *(v1 + 32);
  result = *(v1 + 36);
  *(v2 + 1076) = result;
  return result;
}

float PadFireflyPeakDetectionStep::estimatePhase(PadFireflyPeakDetectionStep *this, float *a2, float *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = *a2++;
      v8 = v7;
      v9 = *a3++;
      v5 = v5 + ((v8 * v8) - (v9 * v9));
      v6 = v6 + ((v8 * v9) + (v8 * v9));
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
    v5 = 0.0;
  }

  return atan2f(v6, v5) * 0.5;
}

uint64_t PadFireflyPeakDetectionStep::findInitialPeakIdx(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a3 - 1;
  if (a4 == 1)
  {
    v6 = 1092;
    if (a5)
    {
      v6 = 1093;
    }

    v7 = *(*(a1 + 264) + v6);
    v8 = *(*(a1 + 184) + 97);
    v9 = fmax((v7 - v8), 0.0);
    v5 = fmin((v8 + v7), v5);
    if (v9 > v5)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v10 = 0;
  v11 = -INFINITY;
  do
  {
    if (*(a2 + 4 * v9) > v11)
    {
      v10 = v9;
      v11 = *(a2 + 4 * v9);
    }

    LOBYTE(v9) = v9 + 1;
  }

  while (v9 <= v5);
  return v10;
}

BOOL PadFireflyPeakDetectionStep::isModelBasedOneAxisPeak2FAmbiguous(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a1 + 232);
  v8 = *(v7 + 20);
  v9 = *(v7 + 24);
  v10 = *(v7 + 28);
  v11 = *(v7 + 29);
  v12 = *(v7 + 30);
  v38[0] = 0;
  SA1DArrayDynamicSize<unsigned int>::SA1DArrayDynamicSize(v36, 0x49C3079CCD23AEC9, 5u);
  SA1DArrayDynamicSize<unsigned int>::SA1DArrayDynamicSize(v34, 0xF5B96B1F83B734B2, 5u);
  SA1DArrayDynamicSize<unsigned int>::SA1DArrayDynamicSize(v33, 0xACE6DCC803E66EDCLL, 5u);
  SA1DArrayDynamicSize<unsigned int>::SA1DArrayDynamicSize(v31, 0xF5B96B6545628532, 5u);
  HoverCommon::searchSignalSegmentsAndCentroids(a4, v38, v36, v34, v33, v31, v8);
  if (v38[0] != v10)
  {
LABEL_11:
    v26 = 0;
    goto LABEL_23;
  }

  v13 = *(*(v33[4] + 8))();
  v15 = *(a4 + 32);
  v14 = a4 + 32;
  v16 = (*(v15 + 8))(v14);
  if (v10)
  {
    v17 = 0;
    v18 = *(v16 + 4 * v13);
    v19 = v12;
    do
    {
      v20 = *((*(v35[0] + 8))(v35) + 4 * v17);
      v21 = (*(v37[0] + 8))(v37);
      v22 = (v20 - *(v21 + 4 * v17));
      if (v11 < (v20 - *(v21 + 4 * v17)))
      {
        goto LABEL_11;
      }

      if (v17)
      {
        v23 = *((*(v32[0] + 8))(v32) + 4 * v17);
        if ((v23 - *((*(v32[0] + 8))(v32) + 4 * (v17 - 1))) < v19)
        {
          goto LABEL_11;
        }

        v24 = *((*(*v14 + 8))(v14) + 4 * v23);
        if (fminf(v24, v18) < (v9 * fmaxf(v24, v18)))
        {
          goto LABEL_11;
        }
      }

      v17 = v17 + 1;
    }

    while (v17 < v10);
  }

  v25 = *(*(v37[0] + 8))(v37) > a2 || *(*(v35[0] + 8))() <= a2;
  v27 = *((*(v37[0] + 8))(v37) + 4) <= a2 && *((*(v35[0] + 8))() + 4) > a2;
  v28 = *(*(v37[0] + 8))(v37) <= a3 && *(*(v35[0] + 8))() > a3;
  v29 = *((*(v37[0] + 8))(v37) + 4) > a3 || *((*(v35[0] + 8))() + 4) <= a3;
  v26 = !v25 && !v29 || v28 && v27;
LABEL_23:
  SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(v31);
  SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(v33);
  SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(v34);
  SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(v36);
  return v26;
}

void sub_2653FAD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(&a9);
  SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(&a16);
  SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(&a23);
  SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(&a30);
  _Unwind_Resume(a1);
}

AlgDataNode *SA1DArrayDynamicSize<unsigned int>::SA1DArrayDynamicSize(AlgDataNode *a1, uint64_t a2, unsigned int a3)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *v5 = &unk_2876F2B20;
  *(v5 + 32) = &unk_2876F2B68;
  *(v5 + 40) = 20486;
  *(v5 + 44) = 1;
  *(v5 + 16) = 39424;
  *(v5 + 22) = 8;
  *(v5 + 45) = a3;
  *(v5 + 24) = 4 * a3 + 8;
  *(a1 + 6) = operator new(4 * a3);
  return a1;
}

void SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(void *a1)
{
  SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void *SA1DArrayDynamicSize<unsigned int>::injectBuffer(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *(a1 + 22);
  memcpy((a1 + 40), a2, v4);
  v5 = &a2[v4];
  (*(*v3 + 40))(v3);
  v6 = v3[4];
  v3 += 4;
  v7 = (*(v6 + 8))(v3);
  result = (**v3)(v3);
  if (v7 != v5)
  {

    return memcpy(v7, v5, 4 * result);
  }

  return result;
}

void *SA1DArrayDynamicSize<unsigned int>::~SA1DArrayDynamicSize(void *a1)
{
  *a1 = &unk_2876F2B20;
  a1[4] = &unk_2876F2B68;
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x266758580](v2, 0x1000C8052888210);
  }

  *a1 = &unk_2876F3810;
  return a1;
}

uint64_t PadHoverSgFilter::PadHoverSgFilter(uint64_t a1, unsigned __int16 *a2)
{
  AlgDataNode::AlgDataNode((a1 + 88), 0x760C926CFC46651ELL, 0);
  *(a1 + 168) = 0;
  *(a1 + 148) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 2561;
  *(a1 + 104) = 39424;
  *(a1 + 112) = 0x500100000030;
  *(a1 + 88) = &unk_2876F2BC0;
  *(a1 + 176) = 0;
  AlgDataNode::AlgDataNode((a1 + 184), 0xF68B2B8EC200EAB1, 0);
  *(a1 + 240) = 0;
  *(a1 + 216) = 2305;
  *(a1 + 228) = 0;
  *(a1 + 220) = 0;
  *(a1 + 236) = 0;
  *(a1 + 200) = 39424;
  *(a1 + 208) = 0x50040000001CLL;
  *(a1 + 184) = &unk_2876F2C28;
  *(a1 + 248) = 0;
  AlgDataNode::AlgDataNode((a1 + 256), 0xCBC97CDC6BE25E38, 0);
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 288) = 2305;
  *(a1 + 272) = 39424;
  *(a1 + 280) = 0x50010000002CLL;
  *(a1 + 256) = &unk_2876F2C90;
  *(a1 + 336) = 0;
  *(a1 + 344) = a2;
  v4 = a2[15];
  *a1 = v4;
  v5 = a2[16];
  *(a1 + 84) = v5;
  LODWORD(a2) = a2[17];
  *(a1 + 86) = a2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  memset_pattern16((a1 + 4), &unk_2655A9990, 0x28uLL);
  memset_pattern16((a1 + 44), &unk_2655A9990, 0x28uLL);
  PadHoverSgFilter::calcFilterVals(a1, v5, a2, v4, (a1 + 4), v6);
  return a1;
}

void sub_2653FB2B0(_Unwind_Exception *a1)
{
  *v3 = &unk_2876F3810;
  *v2 = &unk_2876F3810;
  *v1 = &unk_2876F3810;
  _Unwind_Resume(a1);
}

int *PadHoverSgFilter::calcFilterVals(PadHoverSgFilter *this, int a2, int a3, unsigned int a4, float *a5, __n128 a6)
{
  v10 = 0;
  v77 = *MEMORY[0x277D85DE8];
  v11 = a2 + 1;
  v12 = 1;
  do
  {
    v10 += v12++;
  }

  while (v11 >= v12);
  v13 = *(this + 31);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(this + 30);
    v17 = this + 2 * v16 + 202;
    v18 = 9;
    do
    {
      v19 = (v17 + 18);
      if (v16 >= v18)
      {
        v19 = v17;
      }

      v14 += *v19;
      ++v15;
      v17 += 2;
      --v18;
    }

    while (v13 > v15);
  }

  v20 = *(this + 42);
  v21 = a4;
  MEMORY[0x28223BE20](a6);
  v23 = &v73[-v22];
  v25 = MEMORY[0x28223BE20](v24);
  v30 = &v73[-v29];
  if (a4)
  {
    v31 = 0;
    v28.n128_f32[0] = vcvts_n_f32_s32(a4 + v27 - 1, 1uLL);
    v32 = vdupq_n_s64(a4 - 1);
    v33 = xmmword_26541FD20;
    v34 = xmmword_26541FD30;
    v35 = vdupq_n_s64(4uLL);
    v36 = (v23 + 2);
    do
    {
      v37 = vmovn_s64(vcgeq_u64(v32, v34));
      if (vuzp1_s16(v37, v28.n128_u64[0]).u8[0])
      {
        *(v36 - 2) = v31 - v28.n128_f32[0];
      }

      if (vuzp1_s16(v37, *&v28).i8[2])
      {
        *(v36 - 1) = (v31 | 1u) - v28.n128_f32[0];
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v32, *&v33))).i32[1])
      {
        *v36 = (v31 | 2u) - v28.n128_f32[0];
        v36[1] = (v31 | 3u) - v28.n128_f32[0];
      }

      v31 += 4;
      v33 = vaddq_s64(v33, v35);
      v34 = vaddq_s64(v34, v35);
      v36 += 4;
    }

    while (((a4 + 3) & 0x1FFFC) != v31);
    if (v27 && a4 != 1)
    {
      v38 = *(v25 + 240);
      v39 = v25 + 2 * v38 + 220;
      v40 = v23 + 1;
      v28.n128_u32[0] = *v23;
      v41 = 9;
      do
      {
        v42 = (v39 - 18);
        if (v38 < v41)
        {
          v42 = v39;
        }

        v33.i16[0] = *v42;
        *v33.i32 = v33.u32[0];
        v28.n128_f32[0] = (v28.n128_f32[0] + *v33.i32) + 1.0;
        *v40++ = v28.n128_u32[0];
        v39 += 2;
        --v41;
      }

      while (a4 + v41 != 10);
    }
  }

  if (v26)
  {
    v43 = 0;
    v44 = (v23 + 1);
    v45 = *(v25 + 328);
    v46 = v25 + 4 * v45 + 256;
    v47 = 9;
    do
    {
      v48 = (v46 + 36);
      if (v45 >= v47)
      {
        v48 = v46;
      }

      v28.n128_f32[0] = *v48 + *v44;
      *v44++ = v28.n128_f32[0];
      ++v43;
      v46 += 4;
      --v47;
    }

    while (v26 > v43);
  }

  v49 = 4 * a4;
  if (a4)
  {
    memset_pattern16(v30, &unk_2655A99A0, 4 * v21);
  }

  if (a2)
  {
    v50 = 0;
    v51 = &v30[4 * a4];
    do
    {
      v52 = a4;
      v53 = v23;
      v54 = v51;
      if (a4)
      {
        do
        {
          v55 = *v53;
          *v54++ = *v53;
          v28.n128_f32[0] = v55 * v55;
          *v53++ = v28.n128_f32[0];
          --v52;
        }

        while (v52);
      }

      ++v50;
      v51 = (v51 + v49);
    }

    while (v50 != a2);
  }

  MEMORY[0x28223BE20](v28);
  v57 = &v73[-v56];
  v58 = v11;
  HoverCommon::cmptUpperTriMatrixAmultAt(v30, v58, a4, &v73[-v56], v59);
  __info = 0;
  __n = v11;
  __uplo = 76;
  spptrf_(&__uplo, &__n, v57, &__info);
  spptri_(&__uplo, &__n, v57, &__info);
  MEMORY[0x28223BE20](v60);
  v62 = &v73[-v61];
  result = HoverCommon::createFullMatFromUpperTriMat(v57, v58, &v73[-v61], v63);
  if (a4)
  {
    v65 = 0;
    if (((a2 + 1) & 0xFFFE) != 0)
    {
      v66 = (a2 + 1);
    }

    else
    {
      v66 = 1;
    }

    do
    {
      v67 = 0.0;
      v68 = v66;
      v69 = v30;
      v70 = &v62[4 * v58 * a3];
      do
      {
        v71 = *v70++;
        v67 = v67 + (v71 * *v69);
        v69 = (v69 + v49);
        --v68;
      }

      while (v68);
      a5[v65++] = v67;
      v30 += 4;
    }

    while (v65 != a4);
  }

  v72 = *MEMORY[0x277D85DE8];
  return result;
}

void *PadHoverSgFilter::resetPathFiltering(void *this)
{
  this[21] = 0;
  this[22] = 0;
  this[30] = 0;
  this[31] = 0;
  this[41] = 0;
  this[42] = 0;
  return this;
}

void *PadHoverSgFilter::pushIntoMem(void *this, float a2, __int16 a3, float a4)
{
  v4 = *this;
  v5 = this[22];
  if (v5 >= v4)
  {
    v6 = this[31];
    v7 = this[42];
    do
    {
      if (v5)
      {
        this[21] = (this[21] + 1) % 0xAuLL;
        --v5;
      }

      if (v6)
      {
        --v6;
        this[30] = (this[30] + 1) % 9uLL;
        this[31] = v6;
      }

      if (v7)
      {
        --v7;
        this[41] = (this[41] + 1) % 9uLL;
        this[42] = v7;
      }
    }

    while (v5 >= v4);
  }

  v8 = this[21];
  if (v5 >= 0xA)
  {
    v8 = (v8 + 1) % 0xA;
    this[21] = v8;
    --v5;
  }

  this[22] = v5 + 1;
  v9 = v8 >= 10 - v5;
  v10 = this + 4 * (v8 - (10 - v5)) + 124;
  v11 = this + v8 + v5 + 31;
  if (v9)
  {
    v11 = v10;
  }

  *v11 = a2;
  if (v5)
  {
    v13 = this[30];
    v12 = this[31];
    if (v12 >= 9)
    {
      v13 = (v13 + 1) % 9;
      this[30] = v13;
      --v12;
    }

    this[31] = v12 + 1;
    v9 = v13 >= 9 - v12;
    v14 = this + 2 * (v13 - (9 - v12)) + 220;
    v15 = this + v13 + v12 + 110;
    if (v9)
    {
      v15 = v14;
    }

    *v15 = a3;
    v16 = this[42];
    if (v16)
    {
      v17 = this[41];
      v18 = this + 292;
      v19 = this + v17 - (10 - v16) + 73;
      if (v17 < 10 - v16)
      {
        v19 = this + v17 + v16 + 72;
      }

      v20 = *v19 + a4;
      if (v16 >= 9)
      {
        v17 = (v17 + 1) % 9;
        this[41] = v17;
        --v16;
      }

      this[42] = v16 + 1;
      v21 = &v18[4 * (v17 - (9 - v16))];
      v22 = &v18[4 * v17 + 4 * v16];
      if (v17 >= 9 - v16)
      {
        v22 = v21;
      }

      *v22 = v20;
    }

    else
    {
      v23 = this[41];
      this[42] = 1;
      v24 = this + 4 * v23;
      v9 = v23 >= 9;
      v25 = -36;
      if (!v9)
      {
        v25 = 0;
      }

      *&v24[v25 + 292] = a4;
    }
  }

  return this;
}

BOOL PadHoverSgFilter::anyNanInMem(PadHoverSgFilter *this)
{
  v1 = *(this + 31);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *(this + 30);
    while (1)
    {
      v5 = v4 >= 9 - v2;
      v6 = this + 2 * (v4 - (9 - v2)) + 220;
      v7 = (this + 2 * v4 + 2 * v2 + 220);
      if (v5)
      {
        v7 = v6;
      }

      if (*v7)
      {
        return 1;
      }

      v2 = ++v3;
      if (v1 <= v3)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = *(this + 42);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = *(this + 41);
      v12 = this + 292;
      v13 = this + 4 * v11 + 292;
      do
      {
        v5 = v11 >= 9 - v9;
        v14 = &v12[4 * (v11 - (9 - v9))];
        v15 = &v13[4 * v9];
        if (v5)
        {
          v15 = v14;
        }

        result = *v15 > 0.0;
        if (*v15 > 0.0)
        {
          break;
        }

        v9 = ++v10;
      }

      while (v8 > v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL PadHoverSgFilter::getFilterVals(PadHoverSgFilter *this, unsigned int a2, unsigned int a3, unsigned int a4, __n128 a5)
{
  v6 = *(this + 44);
  if (v6 > a3)
  {
    if (v6 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = *(this + 44);
    }

    if (v6 < a4 || PadHoverSgFilter::anyNanInMem(this))
    {
      PadHoverSgFilter::calcFilterVals(this, v8, a3, v6, this + 11, a5);
    }
  }

  return v6 > a3;
}

double PadHoverSgFilter::run(PadHoverSgFilter *this, float a2, __int16 a3, float a4)
{
  PadHoverSgFilter::pushIntoMem(this, a2, a3, a4);
  v5 = *(this + 22);
  if (PadHoverSgFilter::getFilterVals(this, *(this + 42), *(this + 43), *this, v6))
  {
    if (v5 >= *this)
    {
      if (PadHoverSgFilter::anyNanInMem(this))
      {
        v8 = 44;
      }

      else
      {
        v8 = 4;
      }
    }

    else
    {
      v8 = 44;
    }

    if (v5)
    {
      v9 = 0;
      v10 = *(this + 21);
      v11 = this + v8;
      result = 0.0;
      do
      {
        v12 = 10 - v9;
        v13 = v10 >= v12;
        v14 = (this + 4 * (v10 - v12) + 124);
        if (!v13)
        {
          v14 = (this + 4 * v10 + 4 * v9 + 124);
        }

        *&result = *&result + (*v14 * *&v11[4 * v9++]);
      }

      while (v5 > v9);
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    LODWORD(result) = 2143289344;
  }

  return result;
}

uint64_t PadHoverJointNpcLcmCompensationStep::PadHoverJointNpcLcmCompensationStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v18 = &unk_2876F2CE0;
  v18[10] = a4;
  v18[11] = a5;
  v18[12] = a6;
  v18[13] = a7;
  v18[14] = a8;
  v18[15] = a9;
  v18[16] = a10 + 28;
  v18[17] = a11;
  v19 = (v18 + 20);
  v18[18] = a12 + 28;
  AlgDataNode::AlgDataNode((v18 + 20), 0x377A34E1248190CLL, 0);
  *(a1 + 160) = &unk_2876F0108;
  *(a1 + 188) = 0;
  *(a1 + 176) = 20480;
  *(a1 + 184) = 1;
  v20 = *(a3 + 10);
  *(a1 + 152) = v20;
  v21 = *(a3 + 13);
  *(a1 + 153) = v21;
  if (v20 <= v21)
  {
    LOBYTE(v20) = v21;
  }

  *(a1 + 154) = v20;
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 80));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 88));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 96));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 104));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 112));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 120));
  AlgWorkNode::registerAlgDataNode(a1 + 8, a10);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a4);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a5);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a6);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a7);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a10);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a12);
  AlgWorkNode::registerAlgDataNode(a1 + 56, v19);
  *(a1 + 188) = 1;
  return a1;
}

{
  return PadHoverJointNpcLcmCompensationStep::PadHoverJointNpcLcmCompensationStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t PadHoverJointNpcLcmCompensationStep::run(PadHoverJointNpcLcmCompensationStep *this)
{
  if (*(this + 188) == 1)
  {
    PadHoverJointNpcLcmCompensationStep::runHoverJointNpcLcm(this);
  }

  return 0;
}

uint64_t PadHoverJointNpcLcmCompensationStep::runHoverJointNpcLcm(PadHoverJointNpcLcmCompensationStep *this)
{
  v39 = 0;
  v40 = 0;
  v2 = *(this + 153);
  v3 = *(this + 152);
  memset(v35, 0, sizeof(v35));
  v36 = *(this + 154);
  v37 = v36;
  v38 = 0;
  v4 = (*(*(*(this + 10) + 32) + 8))();
  v5 = (*(*(*(this + 11) + 32) + 8))();
  v6 = (*(*(*(this + 12) + 32) + 8))();
  v34 = (*(*(*(this + 13) + 32) + 8))();
  v7 = (*(*(*(this + 14) + 32) + 8))();
  v8 = (*(*(*(this + 15) + 32) + 8))();
  v9 = *(this + 17);
  v11 = PadHoverJointNpcLcmCompensationStep::jointNpLcmCompensation(this, v4, v7, v2, &v40 + 1, v9, v5, v8, v10, v3, &v40, v9 + 1, v35);
  if (v11 == 1 && (PadHoverJointNpcLcmCompensationStep::cleanLcmTipRingNoTipDetected(this, v4, v5, v2, v3, v12), (*(*(this + 18) + 4) & 1) == 0))
  {
    PadHoverJointNpcLcmCompensationStep::cleanLcmTipRingNoTipDetected(this, v6, v34, v2, v3, v12);
    return 0;
  }

  else
  {
    v13 = v3;
    v14 = 1;
    v35[0] = 1;
    *&v35[1] = *v9;
    v36 = *(this + 154);
    v37 = v36;
    if (v11 == 2)
    {
      v38 = 1;
      PadHoverJointNpcLcmCompensationStep::jointNpLcmCompensation(this, v6, v7, v2, &v39 + 1, v9 + 4, v34, v8, v12, v13, &v39, v9 + 5, v35);
    }

    else
    {
      v15 = v13;
      v16 = PadHoverJointNpcLcmCompensationStep::jointNpLcmCompensation(this, v6, v7, v2, &v39 + 1, v9 + 4, v34, v8, v12, v13, &v39, v9 + 5, v35);
      if (v11)
      {
        if (v11 == 3)
        {
          v17 = *(this + 16);
          if (v2)
          {
            v18 = 0;
            v19 = *v17;
            do
            {
              v4[v18] = v4[v18] + (v19 * fmaxf(v7[v18], 0.0));
              ++v18;
            }

            while (v2 > v18);
          }

          if (v15)
          {
            v20 = 0;
            v21 = v17[1];
            do
            {
              v5[v20] = v5[v20] + (v21 * fmaxf(v8[v20], 0.0));
              ++v20;
            }

            while (v15 > v20);
          }

          if (v2)
          {
            v22 = 0;
            v23 = v17[2];
            do
            {
              v6[v22] = v6[v22] + (v23 * fmaxf(v7[v22], 0.0));
              ++v22;
            }

            while (v2 > v22);
          }

          if (v15)
          {
            v24 = 0;
            v25 = v17[3];
            do
            {
              v34[v24] = v34[v24] + (v25 * fmaxf(v8[v24], 0.0));
              ++v24;
            }

            while (v15 > v24);
          }
        }
      }

      else
      {
        v26 = v40;
        v27 = *(this + 16);
        *v27 = HIDWORD(v40);
        *(v27 + 4) = v26;
        if (v16 == 3)
        {
          if (v2)
          {
            v28 = 0;
            v29 = *(v27 + 8);
            do
            {
              v6[v28] = v6[v28] + (v29 * fmaxf(v7[v28], 0.0));
              ++v28;
            }

            while (v2 > v28);
          }

          if (v15)
          {
            v30 = 0;
            v31 = *(v27 + 12);
            do
            {
              v34[v30] = v34[v30] + (v31 * fmaxf(v8[v30], 0.0));
              ++v30;
            }

            while (v15 > v30);
          }
        }

        else
        {
          v32 = v39;
          *(v27 + 8) = HIDWORD(v39);
          *(v27 + 12) = v32;
        }
      }

      return 1;
    }
  }

  return v14;
}

uint64_t PadHoverJointNpcLcmCompensationStep::jointNpLcmCompensation(uint64_t a1, float *a2, float *a3, int a4, float *a5, unsigned __int8 *a6, float *a7, float *a8, __n128 a9, unsigned __int8 a10, float *a11, unsigned __int8 *a12, unsigned __int8 *a13)
{
  v131 = a8;
  v133 = *MEMORY[0x277D85DE8];
  v19 = *a13;
  v20 = *(a1 + 144);
  v130 = a11;
  if (v19)
  {
    v21 = v20[18];
    v22 = v20[19];
    if ((v20[4] & 1) == 0)
    {
      v23 = *a6;
      if (v23 <= v21 || (~v21 + a4) <= v23)
      {
        ++v21;
      }

      v25 = *a12;
      if (v25 <= v22 || (~v22 + a10) <= v25)
      {
        ++v22;
      }
    }
  }

  else
  {
    v21 = v20[16];
    v22 = v20[17];
  }

  v132 = 0;
  v27 = a13[1];
  v125 = v21;
  v28 = PadHoverJointNpcLcmCompensationStep::estNpLcmParamsCleanLcm(a1, a2, a4, a3, v21, a5, v19, v27, a9, &v132 + 1);
  v29 = *a13;
  v30 = a13[2];
  v126 = v22;
  v31 = v131;
  v33 = PadHoverJointNpcLcmCompensationStep::estNpLcmParamsCleanLcm(a1, a7, a10, v131, v22, v130, v29, v30, v32, &v132);
  if (v28 == 1 || v33 == 1)
  {
    result = 1;
  }

  else
  {
    v123 = a5;
    v124 = v117;
    v37 = (*(a1 + 154) + 15) & 0x1F0;
    MEMORY[0x28223BE20](v34);
    v38 = a3;
    v40 = &v117[-v39];
    v128 = v38;
    v127 = a4;
    TouchIdx = PadHoverJointNpcLcmCompensationStep::findTouchIdx(a1, v38, a4, &v117[-v39]);
    v43 = HIBYTE(v132);
    v44 = *(a1 + 154);
    v45 = v44;
    if (TouchIdx)
    {
      v46 = TouchIdx;
      v47 = v40;
      v45 = *(a1 + 154);
      do
      {
        v48 = *v47++;
        v49 = v48 - HIBYTE(v132);
        if (v49 < 0)
        {
          v49 = -v49;
        }

        if (v49 < v45)
        {
          v45 = v49;
        }

        --v46;
      }

      while (v46);
    }

    v120 = TouchIdx;
    a13[3] = v45;
    MEMORY[0x28223BE20](v42);
    v51 = &v117[-v50];
    v129 = a1;
    v52 = PadHoverJointNpcLcmCompensationStep::findTouchIdx(a1, v31, a10, &v117[-v50]);
    if (v52)
    {
      v54 = v52;
      v55 = v51;
      do
      {
        v56 = *v55++;
        v57 = v56 - v132;
        if (v57 < 0)
        {
          v57 = -v57;
        }

        if (v57 < v44)
        {
          v44 = v57;
        }

        --v54;
      }

      while (v54);
    }

    v121 = v52;
    a13[4] = v44;
    v58 = *(*(v129 + 18) + 20);
    MEMORY[0x28223BE20](v53);
    v63 = &v117[-v60];
    v118 = *a13;
    v119 = v61;
    if (v118)
    {
      *v63 = v43;
      MEMORY[0x28223BE20](v62);
      v67 = &v117[-v66];
      v117[-v66] = v68;
      v69 = 1;
      v122 = 1;
    }

    else
    {
      v70 = *(v61 + 24);
      TipIdx = PadHoverJointNpcLcmCompensationStep::findTipIdx(v129, a2, v59, v70, &v117[-v60]);
      MEMORY[0x28223BE20](v72);
      v67 = &v117[-v73];
      v74 = PadHoverJointNpcLcmCompensationStep::findTipIdx(v129, a7, a10, v70, &v117[-v73]);
      v69 = TipIdx;
      v64 = v127;
      v122 = v74;
      v65 = v129;
    }

    v75 = a13[5];
    v76 = v65;
    v77 = v69;
    isTouchPresent = PadHoverJointNpcLcmCompensationStep::isTouchPresent(v65, v128, v64, v63, v69, v75);
    if (isTouchPresent & 1) != 0 || (isTouchPresent = PadHoverJointNpcLcmCompensationStep::isTouchPresent(v76, v131, a10, v67, v122, v75), (isTouchPresent))
    {
      if (v118)
      {
        v80 = v119;
        v81 = v120;
        v82 = v121;
      }

      else
      {
        v80 = v119;
        v79 = *(v119 + 28);
        v81 = v120;
        v82 = v121;
        if (**(v129 + 16) < v79 && (*(v119 + 4) & 1) == 0)
        {
          v83 = *(v119 + 76);
          v125 = (v125 - v83) & ~((v125 - v83) >> 31);
          v126 = (v126 - v83) & ~((v126 - v83) >> 31);
        }
      }

      v84 = 0;
      if (v81)
      {
        v85 = v125 + v63[v77 - 1] + 1;
        v86 = (*v63 + ~v125) & ~((*v63 + ~v125) >> 31);
        v87 = v81;
        v88 = v40;
        do
        {
          v90 = *v88++;
          v89 = v90;
          if (v90 < v86 || v89 > v85)
          {
            v40[v84++] = v89;
          }

          --v87;
        }

        while (v87);
      }

      v91 = 0;
      if (v82)
      {
        v92 = v126 + v67[v122 - 1] + 1;
        v93 = (*v67 + ~v126) & ~((*v67 + ~v126) >> 31);
        v94 = v82;
        v95 = v51;
        do
        {
          v97 = *v95++;
          v96 = v97;
          if (v97 < v93 || v96 > v92)
          {
            v51[v91++] = v96;
          }

          --v94;
        }

        while (v94);
      }

      v98 = v91;
      if (v91 + v84 >= *(v80 + 32))
      {
        v99 = v84;
        if (v84)
        {
          v100 = 0;
          do
          {
            a2[v40[v100]] = -a2[v40[v100]];
            ++v100;
          }

          while (v84 > v100);
        }

        if (v98)
        {
          v101 = 0;
          do
          {
            a7[v51[v101]] = -a7[v51[v101]];
            ++v101;
          }

          while (v98 > v101);
        }

        v102 = v123;
        v103 = v84;
        PadHoverJointNpcLcmCompensationStep::gainEstimationCombinedAxis(isTouchPresent, a2, a7, v128, v131, v40, v51, v84, *(v80 + 36), v79, v98, v123);
        v104 = v130;
        *v130 = *v102 * *(*(v129 + 18) + 36);
        if (v103)
        {
          v105 = 0;
          do
          {
            a2[v40[v105]] = -a2[v40[v105]];
            ++v105;
          }

          while (v99 > v105);
        }

        v106 = v127;
        if (v98)
        {
          v107 = 0;
          do
          {
            a7[v51[v107]] = -a7[v51[v107]];
            ++v107;
          }

          while (v98 > v107);
        }

        v108 = v131;
        v109 = v128;
        if (v106)
        {
          v110 = 0;
          v111 = *v123;
          do
          {
            a2[v110] = a2[v110] + (v111 * fmaxf(v109[v110], 0.0));
            ++v110;
          }

          while (v106 > v110);
        }

        if (a10)
        {
          v112 = 0;
          v113 = *v104;
          do
          {
            a7[v112] = a7[v112] + (v113 * fmaxf(v108[v112], 0.0));
            ++v112;
          }

          while (a10 > v112);
        }

        if (v106)
        {
          v114 = 0;
          do
          {
            a2[v114] = fmaxf(a2[v114], 0.0);
            ++v114;
          }

          while (v106 > v114);
        }

        if (a10)
        {
          v115 = 0;
          do
          {
            a7[v115] = fmaxf(a7[v115], 0.0);
            ++v115;
          }

          while (a10 > v115);
        }

        result = 0;
      }

      else
      {
        result = 3;
      }
    }

    else
    {
      *v123 = 0.0;
      *v130 = 0.0;
      result = 2;
    }
  }

  v116 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL PadHoverJointNpcLcmCompensationStep::cleanLcmTipRingNoTipDetected(PadHoverJointNpcLcmCompensationStep *this, float *a2, float *a3, unsigned int a4, unsigned int a5, __n128 a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v11 = 4 * *(this + 154);
  MEMORY[0x28223BE20](a6);
  v13 = (&v32 - v12);
  bzero(&v32 - v12, v14);
  bzero(a2, 4 * a4);
  bzero(a3, 4 * a5);
  v15 = *(this + 154);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  bzero(&v32 - v17, v19);
  if (a4 <= a5)
  {
    v21 = a5;
  }

  else
  {
    v21 = a4;
  }

  if (v21)
  {
    v22 = 0;
    do
    {
      v18[v22] = v22;
      ++v22;
    }

    while (v21 > v22);
  }

  v35 = 0;
  v36 = 0;
  v23 = PadFireflyJointNpcLcmCompensationWithDetectedPeak::estimateNpLcmParameters(v20, v18, a4, v13, a2, &v35);
  if (v23 && a4)
  {
    v24 = 0;
    v25 = v35;
    v26 = *&v36;
    do
    {
      a2[v24] = a2[v24] - (v26 + ((*(&v25 + 1) * v24) + (*&v25 * (v24 * v24))));
      ++v24;
    }

    while (a4 > v24);
  }

  v33 = 0;
  v34 = 0;
  result = PadFireflyJointNpcLcmCompensationWithDetectedPeak::estimateNpLcmParameters(v23, v18, a5, v13, a3, &v33);
  if (result && a5)
  {
    v28 = 0;
    v29 = v33;
    v30 = *&v34;
    do
    {
      a3[v28] = a3[v28] - (v30 + ((*(&v29 + 1) * v28) + (*&v29 * (v28 * v28))));
      ++v28;
    }

    while (a5 > v28);
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PadHoverJointNpcLcmCompensationStep::estNpLcmParamsCleanLcm(uint64_t a1, float *a2, int a3, float *a4, int a5, float *a6, int a7, int a8, __n128 a9, unsigned __int8 *a10)
{
  v43 = a6;
  v45 = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 144);
  v18 = *(v17 + 20);
  MEMORY[0x28223BE20](a9);
  v20 = &v44[-2] - v19;
  bzero(&v44[-2] - v19, v21);
  if (a7)
  {
    v23 = *(v17 + 69);
    v24 = a8 - v23;
    v25 = v23 + a8;
    v26 = a3 - 1;
    if (a3 - 1 >= v25)
    {
      v26 = v25;
    }

    if (v24 <= v26)
    {
      v27 = 0;
      v29 = v24 & ~(v24 >> 31);
      v22.n128_u64[0] = 0;
      do
      {
        if (a2[v29] > v22.n128_f32[0])
        {
          v27 = v29;
          v22.n128_f32[0] = a2[v29];
        }

        LOBYTE(v29) = v29 + 1;
      }

      while (v29 <= v26);
    }

    else
    {
      v27 = 0;
    }

    *v20 = v27;
    *a10 = v27;
  }

  else if (!PadHoverJointNpcLcmCompensationStep::findTipIdxRange(a1, a2, a3, *v17, v20, a10))
  {
    result = 1;
    goto LABEL_28;
  }

  v30 = *(a1 + 154);
  v31 = MEMORY[0x28223BE20](v22);
  v33 = &v44[-2] - v32;
  if (!a3)
  {
    goto LABEL_26;
  }

  v34 = 0;
  v35 = 0;
  v36 = v20[v31 - 1] + a5;
  if (a3 - 1 < v36)
  {
    v36 = a3 - 1;
  }

  v37 = *v20 - a5;
  do
  {
    if (v37 > v34 || v36 < v34)
    {
      v33[v35++] = v34;
    }

    ++v34;
  }

  while (a3 != v34);
  if (v35)
  {
    if (PadFireflyJointNpcLcmCompensationWithDetectedPeak::estimateNpLcmParameters(v31, v33, v35, a4, a2, v44))
    {
      v38 = 0;
      v39 = v44[2];
      *v43 = v44[3];
      v40 = v44[0];
      v41 = v44[1];
      do
      {
        a2[v38] = a2[v38] - (v39 + ((v41 * v38) + (v40 * (v38 * v38))));
        ++v38;
      }

      while (a3 > v38);
      result = 0;
    }

    else
    {
      result = 3;
    }
  }

  else
  {
LABEL_26:
    result = 2;
  }

LABEL_28:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PadHoverJointNpcLcmCompensationStep::findTouchIdx(PadHoverJointNpcLcmCompensationStep *this, float *a2, int a3, unsigned __int8 *a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      if (a2[v4] > v5)
      {
        v5 = a2[v4];
      }

      ++v4;
    }

    while (a3 > v4);
    v6 = 0;
    v7 = 0;
    v8 = fmaxf(v5 * *(*(this + 18) + 60), *(*(this + 18) + 56));
    do
    {
      if (a2[v6] > v8)
      {
        a4[v7++] = v6;
      }

      ++v6;
    }

    while (a3 > v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

uint64_t PadHoverJointNpcLcmCompensationStep::findTipIdx(PadHoverJointNpcLcmCompensationStep *this, float *a2, int a3, float a4, unsigned __int8 *a5)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0.0;
  do
  {
    if (a2[v5] >= a4 && a2[v5] > v7)
    {
      v6 = v5;
      v7 = a2[v5];
    }

    ++v5;
  }

  while (a3 != v5);
  if (v7 <= 0.0)
  {
    return 0;
  }

  v8 = *(*(this + 18) + 80);
  v9 = (v6 - v8) & ~((v6 - v8) >> 31);
  v10 = v8 + v6;
  if (a3 - 1 < v10)
  {
    LOBYTE(v10) = a3 - 1;
  }

  if (v10 >= v9)
  {
    v11 = 0;
    do
    {
      if (a2[v9] >= a4)
      {
        a5[v11++] = v9;
      }

      LOBYTE(v9) = v9 + 1;
    }

    while (v9 <= v10);
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t PadHoverJointNpcLcmCompensationStep::isTouchPresent(unint64_t this, const float *a2, int a3, const unsigned __int8 *a4, int a5, char a6)
{
  result = 0;
  if (a3 && (a6 & 1) == 0)
  {
    v8 = 0;
    v9 = *(this + 144);
    v10 = *(v9 + 68);
    LODWORD(this) = a4[a5 - 1] + v10;
    if (a3 - 1 >= this)
    {
      this = this;
    }

    else
    {
      this = (a3 - 1);
    }

    while (1)
    {
      v11 = a2[v8];
      if (v8 < *a4 - v10 || v8 > this)
      {
        if (v11 > *(v9 + 56))
        {
          return 1;
        }
      }

      else if (v11 > *(v9 + 64))
      {
        return 1;
      }

      if (a3 == ++v8)
      {
        return 0;
      }
    }
  }

  return result;
}

float PadHoverJointNpcLcmCompensationStep::gainEstimationCombinedAxis(PadHoverJointNpcLcmCompensationStep *this, float *a2, float *a3, const float *a4, const float *a5, const unsigned __int8 *a6, const unsigned __int8 *a7, int a8, float a9, float a10, unsigned __int8 a11, float *a12)
{
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  if (a11)
  {
    v15 = 0;
    do
    {
      v16 = a7[v15];
      v17 = fmaxf(a5[v16], 0.0);
      v14 = v14 + (v17 * v17);
      v13 = v13 + (v17 * a3[v16]);
      ++v15;
    }

    while (a11 > v15);
  }

  v18 = 0.0;
  if (a8)
  {
    v19 = 0;
    v12 = 0.0;
    do
    {
      v20 = a6[v19];
      v21 = fmaxf(a4[v20], 0.0);
      v18 = v18 + (v21 * v21);
      v12 = v12 + (v21 * a2[v20]);
      ++v19;
    }

    while (a8 > v19);
  }

  result = (v12 + (a9 * v13)) / (v18 + ((a9 * a9) * v14));
  *a12 = result;
  return result;
}

uint64_t PadHoverJointNpcLcmCompensationStep::findTipIdxRange(PadHoverJointNpcLcmCompensationStep *this, float *a2, int a3, float a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  if (!a3)
  {
    v7 = 0;
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0.0;
  do
  {
    if (a2[v6] > v8)
    {
      v7 = v6;
      v8 = a2[v6];
    }

    ++v6;
  }

  while (a3 != v6);
  if (v8 <= 0.0)
  {
    goto LABEL_16;
  }

  v9 = *(*(this + 18) + 80);
  v10 = (v7 - v9) & ~((v7 - v9) >> 31);
  v11 = v9 + v7;
  if (a3 - 1 < v11)
  {
    LOWORD(v11) = a3 - 1;
  }

  v12 = v11;
  if (v11 < v10)
  {
    goto LABEL_16;
  }

  v13 = 0;
  do
  {
    if ((a2[v10] * a2[v10]) >= a4)
    {
      a5[v13++] = v10;
    }

    LOBYTE(v10) = v10 + 1;
  }

  while (v12 >= v10);
LABEL_17:
  *a6 = v7;
  return v13;
}

void PadHoverJointNpcLcmCompensationStep::~PadHoverJointNpcLcmCompensationStep(PadHoverJointNpcLcmCompensationStep *this)
{
  *this = &unk_2876F2CE0;
  *(this + 20) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2CE0;
  *(this + 20) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void Cholesky::solveSymmetricLinearEquViaLDL(Cholesky *this, float *a2, float *a3, float *a4, float a5)
{
  if (!this)
  {
    goto LABEL_10;
  }

  a5 = 0.0000001;
  if (fabsf(*a2) < 0.0000001)
  {
    goto LABEL_7;
  }

  v8 = 1;
  do
  {
    v9 = v8;
    if (this == v8)
    {
      break;
    }

    v10 = fabsf(a2[Cholesky::isDiagElementZero(unsigned char,float const*)::kTabDiagElemIndex[v8++]]);
  }

  while (v10 >= 0.0000001);
  if (v9 < this)
  {
LABEL_7:

    bzero(a3, 4 * this);
  }

  else
  {
LABEL_10:
    Cholesky::cmptLDLDecompSLE(this, a2, a3, a5);

    Cholesky::solveSLEQWithDecompMatrix(this, a2, a3, v11);
  }
}

float Cholesky::cmptLDLDecompSLE(Cholesky *this, float *a2, float *a3, float result)
{
  if (this > 2)
  {
    if (this == 3)
    {
      v38 = *a2;
      v37 = a2[1];
      v39 = v37 / *a2;
      v40 = a2[3];
      v41 = a2[2] - (v37 * v39);
      v42 = a2[5];
      v43 = a2[4] - (v40 * v39);
      a2[1] = v39;
      a2[2] = v41;
      v44 = v40 / v38;
      v45 = v43 / v41;
      a2[3] = v44;
      a2[4] = v45;
      result = (v42 - (v40 * v44)) - (v43 * v45);
      a2[5] = result;
      return result;
    }

    if (this == 4)
    {
      v7 = *a2;
      v6 = a2[1];
      v8 = v6 / *a2;
      v9 = a2[3];
      v10 = a2[2] - (v6 * v8);
      a2[1] = v8;
      a2[2] = v10;
      v11 = v9 / v7;
      v12 = a2[5];
      v13 = a2[4] - (v9 * v8);
      v14 = v13 / v10;
      a2[3] = v9 / v7;
      a2[4] = v13 / v10;
      v15 = (v12 - (v9 * (v9 / v7))) - (v13 * (v13 / v10));
      v16 = a2[6];
      v17 = a2[7];
      a2[5] = v15;
      a2[6] = v16 / v7;
      v18 = (v17 - (v16 * v8)) / v10;
      v19 = a2[9];
      v20 = ((a2[8] + (-((v16 / v7) * v11) * v7)) + (-(v18 * v14) * v10)) / v15;
      a2[7] = v18;
      a2[8] = v20;
      result = ((v19 + (-((v16 / v7) * (v16 / v7)) * v7)) + (-(v18 * v18) * v10)) + (-(v20 * v20) * v15);
      a2[9] = result;
      return result;
    }
  }

  else
  {
    if (!this)
    {
      return result;
    }

    if (this == 2)
    {
      v4 = a2[1];
      v5 = v4 / *a2;
      result = a2[2] - (v4 * v5);
      a2[1] = v5;
      a2[2] = result;
      return result;
    }
  }

  v21 = 0;
  v22 = this;
  do
  {
    if (v21)
    {
      v23 = 0;
      v24 = Cholesky::kTabCol0Addr[v21];
      v25 = &a2[v24];
      v26 = v25;
      do
      {
        v27 = Cholesky::kTabCol0Addr[v23];
        v28 = *v26;
        if (v23)
        {
          v29 = v23;
          v30 = a2;
          v31 = Cholesky::kTabCol0Addr;
          do
          {
            v32 = *v31++;
            v28 = v28 + (-(v30[v24] * v30[v27]) * v30[v32]);
            *v26 = v28;
            ++v30;
            --v29;
          }

          while (v29);
        }

        *v26++ = v28 / a2[v27 + v23++];
      }

      while (v23 != v21);
      result = v25[v21];
      v33 = v21;
      v34 = a2;
      v35 = Cholesky::kTabCol0Addr;
      do
      {
        v36 = *v35++;
        result = result + (-(v34[v24] * v34[v24]) * v34[v36]);
        v25[v21] = result;
        ++v34;
        --v33;
      }

      while (v33);
    }

    ++v21;
  }

  while (v21 != v22);
  return result;
}

void Cholesky::solveSLEQWithDecompMatrix(Cholesky *this, float *a2, float *a3, float *a4)
{
  if (!this)
  {
    return;
  }

  v4 = this;
  if (fabsf(*a2) < 0.0000001)
  {
    goto LABEL_7;
  }

  v5 = 1;
  do
  {
    v6 = v5;
    if (this == v5)
    {
      break;
    }

    v7 = fabsf(a2[Cholesky::isDiagElementZero(unsigned char,float const*)::kTabDiagElemIndex[v5++]]);
  }

  while (v7 >= 0.0000001);
  if (v6 < this)
  {
LABEL_7:
    bzero(a3, 4 * this);
    return;
  }

  if (this > 2)
  {
    if (this == 3)
    {
      v38 = *a3;
      v39 = a3[1] - (a2[1] * *a3);
      a3[1] = v39;
      v40 = a3[2] - (a2[3] * v38);
      a3[2] = v40;
      v41 = v40 - (a2[4] * v39);
      a3[2] = v41;
      v42 = v41 / a2[5];
      a3[2] = v42;
      v43 = v39 / a2[2];
      a3[1] = v43;
      v44 = v43 - (a2[4] * v42);
      a3[1] = v44;
      v45 = v38 / *a2;
      *a3 = v45;
      v46 = v45 - (a2[1] * v44);
      *a3 = v46;
      v12 = v46 - (a2[3] * v42);
      goto LABEL_26;
    }

    if (this == 4)
    {
      v13 = *a3;
      v14 = a3[1] - (a2[1] * *a3);
      a3[1] = v14;
      v15 = a3[3];
      v16 = a3[2] - (a2[3] * v13);
      a3[2] = v16;
      v17 = v16 - (a2[4] * v14);
      a3[2] = v17;
      v18 = v15 - (a2[6] * v13);
      a3[3] = v18;
      v19 = v18 - (a2[7] * v14);
      a3[3] = v19;
      v20 = v19 - (a2[8] * v17);
      a3[3] = v20;
      v21 = v20 / a2[9];
      a3[3] = v21;
      v22 = v17 / a2[5];
      a3[2] = v22;
      v23 = v22 - (a2[8] * v21);
      a3[2] = v23;
      v24 = v14 / a2[2];
      a3[1] = v24;
      v25 = v24 - (a2[4] * v23);
      a3[1] = v25;
      v26 = v25 - (a2[7] * v21);
      a3[1] = v26;
      v27 = v13 / *a2;
      *a3 = v27;
      v28 = v27 - (a2[1] * v26);
      *a3 = v28;
      v29 = v28 - (a2[3] * v23);
      *a3 = v29;
      v12 = v29 - (a2[6] * v21);
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (this != 1)
  {
    if (this == 2)
    {
      v8 = *a3;
      v9 = a3[1] - (a2[1] * *a3);
      a3[1] = v9;
      v10 = v9 / a2[2];
      a3[1] = v10;
      v11 = v8 / *a2;
      *a3 = v11;
      v12 = v11 - (a2[1] * v10);
LABEL_26:
      *a3 = v12;
      return;
    }

LABEL_15:
    v30 = 1;
    do
    {
      v31 = 0;
      v32 = &a2[Cholesky::kTabCol0Addr[v30]];
      v33 = a3[v30];
      do
      {
        v33 = v33 - (v32[v31] * a3[v31]);
        a3[v30] = v33;
        ++v31;
      }

      while (v30 != v31);
      ++v30;
    }

    while (v30 != this);
    goto LABEL_19;
  }

  do
  {
LABEL_19:
    v34 = &a2[v4 - 1];
    v35 = a3[v4 - 1] / v34[Cholesky::kTabCol0Addr[v4 - 1]];
    a3[v4 - 1] = v35;
    if (v4 < this)
    {
      v36 = v4;
      do
      {
        v35 = v35 - (v34[Cholesky::kTabCol0Addr[v36]] * a3[v36]);
        a3[v4 - 1] = v35;
        ++v36;
      }

      while (this > v36);
    }
  }

  while (v4-- >= 2);
}

uint64_t PadHoverXYZMeasurementStep::PadHoverXYZMeasurementStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v19 = &unk_2876F2D30;
  AlgDataNode::AlgDataNode((v19 + 10), 0x377A34E1248190CLL, 0);
  *(a1 + 80) = &unk_2876F0108;
  *(a1 + 108) = 0;
  *(a1 + 96) = 20480;
  *(a1 + 104) = 1;
  *(a1 + 112) = a3;
  *(a1 + 120) = a4;
  *(a1 + 128) = a5;
  *(a1 + 136) = a6;
  *(a1 + 144) = a7;
  *(a1 + 152) = a8;
  *(a1 + 160) = a9;
  *(a1 + 168) = a10;
  *(a1 + 176) = a11;
  *(a1 + 184) = a12;
  PadHoverXYZMeasurementStep::runNodeRegistrations(a1);
  *(a1 + 108) = 1;
  return a1;
}

{
  return PadHoverXYZMeasurementStep::PadHoverXYZMeasurementStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void sub_2653FD7D0(_Unwind_Exception *a1)
{
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

void *PadHoverXYZMeasurementStep::runNodeRegistrations(PadHoverXYZMeasurementStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 56, this + 80);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 15));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 20));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 19));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 19) + 64);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 19) + 128);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 19) + 192);
  AlgWorkNode::registerAlgDataNode(this + 24, *(this + 16));
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 21));
  v2 = *(this + 22);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

uint64_t PadHoverXYZMeasurementStep::run(PadHoverXYZMeasurementStep *this)
{
  if (*(this + 108) == 1)
  {
    v2 = *(this + 20);
    v3 = *(this + 23);
    v4 = v2 + 44;
    if (v2[44] && (v4 = v2 + 47, v2[47]) && (v4 = v2 + 50, v2[50]))
    {
      v5 = v2 + 46;
    }

    else
    {
      v6 = v4[2];
      v3 = (*(*(v3 + 32) + 8))();
      v5 = (v3 + v6);
    }

    v7 = *v5;
    v9 = *(this + 15);
    v8 = *(this + 16);
    v10 = *(this + 17);
    PadHoverXYZMeasurementStep::localizeViaCentroidingTip(v3, v8 + 28, *(this + 19), *(v9 + 37));
    PadHoverXYZMeasurementStep::localizeViaCentroidingTip(v11, v8 + 44, (*(this + 19) + 128), *(v9 + 37));
    v12.i32[0] = *(v8 + 36);
    v13 = *(v10 + 4 * v7 + 64) * ((*(v8 + 40) + *(v8 + 56)) * 0.0039062);
    *(v8 + 60) = v13;
    v12.i32[1] = *(v8 + 52);
    *(v8 + 104) = vmul_f32(v12, *(*(this + 14) + 4));
    v14 = PadHoverXYZMeasurementStep::computeHeightfromLUT(this, v13);
    *(v8 + 112) = LODWORD(v14);
    if (*(v8 + 100) == 1)
    {
      v15 = *(this + 21);
      v16 = *(v8 + 104);
      *(v15 + 36) = *(v8 + 112);
      *(v15 + 28) = v16;
      v17 = *(this + 22);
      v18 = *(v8 + 116);
      *(v17 + 36) = *(v8 + 124);
      *(v17 + 28) = v18;
    }
  }

  return 0;
}

float PadHoverXYZMeasurementStep::localizeViaCentroidingTip(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v7 = (*(*a3 + 40))(a3);
  v8 = (*(a3[4] + 8))(a3 + 4);
  v10 = (a4 - 1 + (((a4 - 1) & 0x8000u) >> 15)) >> 1;
  *(a2 + 2) = a4;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    v9.n128_u64[0] = 0;
    do
    {
      if (*(v8 + 4 * v11) > v9.n128_f32[0])
      {
        v9.n128_u32[0] = *(v8 + 4 * v11);
        v12 = v11;
      }

      ++v11;
    }

    while (v7 != v11);
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  *(a2 + 4) = v12 - v10;
  *(a2 + 5) = v12 + v10;
  v13 = MEMORY[0x28223BE20](v9);
  v20 = (v45 - v19);
  if (a4)
  {
    v21 = (v16 + 3) & 0x1FC;
    v22 = vdupq_n_s64(v16 - 1);
    v23 = -v18;
    v24 = xmmword_26541FD20;
    v25 = xmmword_26541FD30;
    v26 = v20 + 2;
    v27 = vdupq_n_s64(4uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v22, v25));
      if (vuzp1_s16(v28, *v22.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v22).i8[2])
      {
        *(v26 - 1) = (v23 + 1);
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v24))).i32[1])
      {
        *v26 = (v23 + 2);
        v26[1] = (v23 + 3);
      }

      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v23 += 4;
      v26 += 4;
      v21 -= 4;
    }

    while (v21);
  }

  v29 = v14;
  v30 = 0.0;
  v31 = 0.0;
  if (v17 >= v14)
  {
    v32 = v14;
    v33 = v14;
    do
    {
      v34 = *(v13 + 4 * v33);
      v30 = v30 + v34;
      v31 = v31 + (v20[v32 - v14] * v34);
      v32 = ++v33;
    }

    while (v17 >= v33);
  }

  v35 = v15;
  v36 = (v31 / v30) + v35;
  *(a2 + 8) = v36;
  *(a2 + 12) = v30;
  v37 = v36 - v35;
  v38 = 1.0 - fabsf(v37 + v37);
  if (v37 <= 0.0)
  {
    v20[v16] = v38 * v20[v16];
  }

  else
  {
    *v20 = v38 * *v20;
  }

  v39 = 0.0;
  v40 = 0.0;
  if (v17 >= v14)
  {
    v41 = v14;
    do
    {
      v42 = *(v13 + 4 * v14);
      v39 = v39 + v42;
      v40 = v40 + (v20[v29 - v41] * v42);
      v29 = ++v14;
    }

    while (v17 >= v14);
  }

  result = ((v40 / v39) + v35) + -2.0;
  *(a2 + 8) = result;
  *(a2 + 12) = v39;
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

double PadHoverXYZMeasurementStep::computeHeightfromLUT(PadHoverXYZMeasurementStep *this, float a2)
{
  v4 = (*(*(*(this + 18) + 632) + 8))(*(this + 18) + 632);
  v6 = *(this + 18);
  v7 = *(v6 + 958);
  if (*(v6 + 958))
  {
    v8 = 0;
    v5.n128_u32[0] = 2.0;
    v9 = 1;
    do
    {
      v10 = vabds_f32(a2, *(v4 + 4 * v8));
      if (v10 < v5.n128_f32[0])
      {
        v5.n128_f32[0] = v10;
        v9 = v8;
      }

      ++v8;
    }

    while (v7 != v8);
  }

  else
  {
    v9 = 1;
  }

  if (!v9 || v7 - 1 == v9)
  {
    *((*(*(v6 + 688) + 8))(v5) + 4 * v9) = 0;
    return 0.0;
  }

  else
  {

    *&result = PadHoverXYZMeasurementStep::interpolateFineHeight(this, a2, v9);
  }

  return result;
}

float PadHoverXYZMeasurementStep::interpolateFineHeight(PadHoverXYZMeasurementStep *this, float a2, unsigned int a3)
{
  v6 = a3 - 1;
  v7 = *((*(*(*(this + 18) + 632) + 8))(*(this + 18) + 632) + 4 * (a3 - 1));
  v8 = *((*(*(*(this + 18) + 632) + 8))(*(this + 18) + 632) + 4 * a3);
  v9 = *((*(*(*(this + 18) + 632) + 8))(*(this + 18) + 632) + 4 * (a3 + 1));
  v10 = a2 - v8;
  v11 = (((a2 - v8) / (v7 - v8)) * (a2 - v9)) / (v7 - v9);
  v12 = a2 - v7;
  v13 = (((a2 - v7) / (v8 - v7)) * (a2 - v9)) / (v8 - v9);
  v14 = (v10 * (v12 / (v9 - v7))) / (v9 - v8);
  v15 = *((*(*(*(this + 18) + 688) + 8))(*(this + 18) + 688) + 4 * v6);
  v16 = (v13 * *((*(*(*(this + 18) + 688) + 8))(*(this + 18) + 688) + 4 * a3)) + (v11 * v15);
  return v16 + (v14 * *((*(*(*(this + 18) + 688) + 8))(*(this + 18) + 688) + 4 * (a3 + 1)));
}

void PadHoverXYZMeasurementStep::~PadHoverXYZMeasurementStep(PadHoverXYZMeasurementStep *this)
{
  *this = &unk_2876F2D30;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2D30;
  *(this + 10) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

uint64_t PadHoverTask::PadHoverTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, PadFireflyPathCollection *a23, uint64_t a24)
{
  v29 = ConditionalAlgTaskNode::ConditionalAlgTaskNode();
  *v29 = &unk_2876F2D80;
  v29[13] = a5;
  v29[14] = a6;
  v29[15] = a17;
  v29[16] = a18;
  v29[17] = a15;
  v29[18] = a16;
  PadHoverProjection::PadHoverProjection((v29 + 19), *(a20 + 10), *(a20 + 13), 2);
  *(a1 + 416) = a19;
  v30 = *(a1 + 112);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 424), 0x875F13E164A0C7B5, *(a20 + 13));
  *(a1 + 424) = &unk_2876F0E30;
  *(a1 + 456) = &unk_2876F0E78;
  *(a1 + 480) = v30;
  v31 = *(a1 + 112);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 488), 0x875F13E164A0C7D6, *(a20 + 10));
  *(a1 + 488) = &unk_2876F0E30;
  *(a1 + 520) = &unk_2876F0E78;
  *(a1 + 544) = v31;
  v32 = *(a1 + 112);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 552), 0x7341900DF40E9258, *(a20 + 13));
  *(a1 + 552) = &unk_2876F0E30;
  *(a1 + 584) = &unk_2876F0E78;
  *(a1 + 608) = v32;
  v33 = *(a1 + 112);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 616), 0x7341900DF40E9279, *(a20 + 10));
  *(a1 + 616) = &unk_2876F0E30;
  *(a1 + 648) = &unk_2876F0E78;
  *(a1 + 672) = v33;
  v34 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 680), 0x876005E3C1EF6D0DLL, 0);
  *(a1 + 712) = 0;
  *(a1 + 696) = 20699;
  *(a1 + 704) = 12;
  *(a1 + 680) = &unk_2876F2E60;
  *(a1 + 720) = v34;
  v35 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 728), 0x7360C25BFFDBF610, 0);
  *(a1 + 760) = 0;
  *(a1 + 744) = 20699;
  *(a1 + 752) = 12;
  *(a1 + 728) = &unk_2876F2E60;
  *(a1 + 768) = v35;
  v36 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 776), 0x5157BE0FCE4BEFE0, 0);
  *(a1 + 808) = 0;
  *(a1 + 792) = 20699;
  *(a1 + 800) = 12;
  *(a1 + 776) = &unk_2876F2E60;
  *(a1 + 816) = v36;
  v37 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 824), 0xC85E779034AA838FLL, 0);
  *(a1 + 856) = 0;
  *(a1 + 840) = 20699;
  *(a1 + 848) = 12;
  v59 = v38;
  *(a1 + 824) = &unk_2876F2E60;
  *(a1 + 864) = v37;
  AlgDataNode::AlgDataNode((a1 + 872), 0x72283025910179BELL, 0);
  *(a1 + 872) = &unk_2876F2EC8;
  *(a1 + 904) = 0;
  *(a1 + 888) = 20699;
  *(a1 + 896) = 12;
  v39 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 912), 0xB109DE78145D0796, 0);
  *(a1 + 944) = 0;
  *(a1 + 928) = 20699;
  *(a1 + 936) = 12;
  *(a1 + 912) = &unk_2876F2E60;
  *(a1 + 952) = v39;
  v40 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 960), 0xD245AD7A9FFCE1B9, 0);
  *(a1 + 992) = 0;
  *(a1 + 976) = 20699;
  *(a1 + 984) = 12;
  *(a1 + 960) = &unk_2876F2E60;
  *(a1 + 1000) = v40;
  v41 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 1008), 0x1DC5FA1C7A5F0BCBLL, 0);
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 20699;
  *(a1 + 1032) = 12;
  v58 = v42;
  *(a1 + 1008) = &unk_2876F2E60;
  *(a1 + 1048) = v41;
  AlgDataNode::AlgDataNode((a1 + 1056), 0xE33A6AD9277D577ALL, 0);
  v57 = v43;
  *(a1 + 1056) = &unk_2876F2EC8;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 20699;
  *(a1 + 1080) = 12;
  v44 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 1096), 0x3F225C5EDB22FEC2, 0);
  *(a1 + 1128) = 0;
  *(a1 + 1112) = 20699;
  *(a1 + 1120) = 12;
  *(a1 + 1096) = &unk_2876F2E60;
  *(a1 + 1136) = v44;
  v45 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 1144), 0x236DE83A3F81BE65, 0);
  *(a1 + 1176) = 0;
  *(a1 + 1160) = 20699;
  *(a1 + 1168) = 12;
  *(a1 + 1144) = &unk_2876F2E60;
  *(a1 + 1184) = v45;
  v46 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 1192), 0xE934F3D014CAC59DLL, 0);
  *(a1 + 1220) = 0;
  *(a1 + 1208) = 20480;
  *(a1 + 1216) = 1;
  v56 = v47;
  *(a1 + 1192) = &unk_2876F0EB0;
  *(a1 + 1224) = v46;
  HoverModelSelector::HoverModelSelector((a1 + 1232), *(a1 + 104) + 40, *(a1 + 416), *(a1 + 104) + 840);
  AlgDataNode::AlgDataNode((a1 + 1256), 0xAA893695C1E8975FLL, 0);
  *(a1 + 1256) = &unk_2876F0108;
  *(a1 + 1284) = 0;
  *(a1 + 1272) = 20480;
  *(a1 + 1280) = 1;
  ConditionalAlgTaskNode::ConditionalAlgTaskNode(a1 + 1288, 0x3406E4810A9F3522, a1 + 1256);
  AlgDataNode::AlgDataNode((a1 + 1392), 0x9C401C2E9A9403ALL, 0);
  v55 = v48;
  *(a1 + 1392) = &unk_2876F1160;
  *(a1 + 1420) = 0u;
  *(a1 + 1408) = 20693;
  *(a1 + 1416) = 16;
  v49 = *(a1 + 112);
  AlgDataNode::AlgDataNode((a1 + 1440), 0x3FA65298D09C9E5BLL, 0);
  *(a1 + 1564) = 0;
  *(a1 + 1532) = 0u;
  *(a1 + 1548) = 0u;
  *(a1 + 1500) = 0u;
  *(a1 + 1516) = 0u;
  *(a1 + 1468) = 0u;
  *(a1 + 1484) = 0u;
  *(a1 + 1456) = 20706;
  *(a1 + 1464) = 100;
  *(a1 + 1440) = &unk_2876F2F00;
  *(a1 + 1568) = v49;
  AlgDataNode::AlgDataNode((a1 + 1576));
  *(a1 + 1576) = &unk_2876F0108;
  *(a1 + 1604) = 0;
  *(a1 + 1592) = 20480;
  *(a1 + 1600) = 1;
  *&v53 = a1 + 424;
  *(&v53 + 1) = a1 + 488;
  PadHoverInitialConditionsStep::PadHoverInitialConditionsStep(a1 + 1608, 0xCC0BF8A66AC86949, a20, *(a1 + 112), *(a1 + 136), *(a1 + 144), *(a1 + 104) + 2904, a9, v53, a1 + 552, a1 + 616);
  v50 = *(a1 + 104);
  *(&v54 + 1) = a1 + 488;
  *&v54 = a1 + 424;
  PadHoverRefinementStep::PadHoverRefinementStep(a1 + 2080, 0x32021F279439C6F2, a20, *(a1 + 416), a4, v50 + 1520, v50 + 1176, v50 + 840, v50 + 2848, *(a1 + 112), v54, a1 + 552, a1 + 616, *(a1 + 136) + 944, *(a1 + 136) + 1008, a1 + 680, a1 + 728, a1 + 912, a1 + 960, a1 + 776, v50 + 924, v50 + 1140, v50 + 808, a1 + 1096, a1 + 1144);
  PadHoverTransitioningStep::PadHoverTransitioningStep(a1 + 2672, 0x9DCAEC91FFD9414ELL, a7, a8, *(a1 + 416), *(a1 + 104) + 840, *(a1 + 104) + 1520, a1 + 680, a1 + 728);
  PadHoverJointNpcLcmCompensationStep::PadHoverJointNpcLcmCompensationStep(a1 + 2840, 0xFE19BEB38E5E8916, a20, a1 + 424, a1 + 488, a1 + 552, a1 + 616, *(a1 + 120), *(a1 + 128), v55, *(*(a1 + 144) + 384) + 28, *(a1 + 104) + 968);
  PadHoverTransferSampleStep::PadHoverTransferSampleStep(a1 + 3032, 0x9B5FEA0911EAD60DLL, a1 + 424, a1 + 488, a1 + 552, a1 + 616, a1 + 152);
  PadHoverXYZMeasurementStep::PadHoverXYZMeasurementStep(a1 + 3152, 0x47BF38CE53E5B7B6, *(a1 + 104) + 1140, *(a1 + 104) + 1096, a1 + 1440, a14, *(a1 + 104) + 1520, a1 + 152, *(a1 + 416), a1 + 680, a1 + 728, *(a1 + 104) + 840);
  PadHoverPathFilteringStep::PadHoverPathFilteringStep(a1 + 3344, 0x3C8ECB9AD1BAD116, a1 + 680, a1 + 912, a1 + 776, a1 + 960, *(a1 + 104) + 2568, v58, v57, v59, a1 + 872, a1 + 1096, a1 + 1144, *(a1 + 104) + 1140, a1 + 1220);
  v51 = *(a1 + 104);
  PadHoverPathCollectionCuratingStep::PadHoverPathCollectionCuratingStep(a1 + 6008, 0xD9339770AA61C76FLL, v58, v57, a1 + 776, v59, a1 + 1096, a23, a24, a21, v51 + 2520, (v51 + 1172), a7, a15 + 120, a10, a11, a12, a13, a22, v51 + 2744, v51 + 1140, v51 + 1520, v51 + 2760, v56);
  PadHoverTask::runNodeRegistrations(a1);
  return a1;
}

{
  return PadHoverTask::PadHoverTask(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

void sub_2653FEB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, void *a31, uint64_t a32, void *a33, AlgWorkNode *a34, void *a35, void *a36)
{
  PadHoverPathCollectionCuratingStep::~PadHoverPathCollectionCuratingStep((v36 + v37));
  PadHoverPathFilteringStep::~PadHoverPathFilteringStep((v36 + 418));
  v36[394] = &unk_2876F2D30;
  v36[404] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v40);
  AlgWorkNode::~AlgWorkNode((v36 + 379));
  v36[355] = &unk_2876F2CE0;
  v36[375] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v38);
  v36[334] = &unk_2876F31E0;
  v36[351] = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(a34);
  PadHoverRefinementStep::~PadHoverRefinementStep((v36 + 260));
  PadHoverInitialConditionsStep::~PadHoverInitialConditionsStep((v36 + 201));
  *a28 = &unk_2876F3810;
  *v41 = &unk_2876F3810;
  *a31 = &unk_2876F3810;
  AlgTaskNode::~AlgTaskNode((v36 + 161));
  *a29 = &unk_2876F3810;
  *a33 = &unk_2876F3810;
  *a35 = &unk_2876F3810;
  *v39 = &unk_2876F3810;
  *a36 = &unk_2876F3810;
  **(v42 - 208) = &unk_2876F3810;
  **(v42 - 152) = &unk_2876F3810;
  **(v42 - 144) = &unk_2876F3810;
  **(v42 - 200) = &unk_2876F3810;
  **(v42 - 192) = &unk_2876F3810;
  **(v42 - 184) = &unk_2876F3810;
  **(v42 - 136) = &unk_2876F3810;
  **(v42 - 128) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(*(v42 - 176));
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(*(v42 - 120));
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(*(v42 - 112));
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(*(v42 - 168));
  PadHoverProjection::~PadHoverProjection((v36 + 19));
  AlgTaskNode::~AlgTaskNode(v36);
  _Unwind_Resume(a1);
}

uint64_t PadHoverTask::runNodeRegistrations(PadHoverTask *this)
{
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 1072);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 1072);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 176);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 240);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 304);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 368);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 432);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 496);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 560);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 624);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 15));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 16));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 944);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 1008);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 52));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 13) + 2520);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 424);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 488);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 552);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 616);
  AlgWorkNode::registerAlgDataNode(this + 24, *(*(this + 18) + 384));
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1192);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 1256);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 152);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 216);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 280);
  AlgWorkNode::registerAlgDataNode(this + 24, this + 344);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 13) + 896);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 13) + 2520);
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1608));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 2080));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 2672));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 1288));
  ConditionalInjExtAndTaskNode::registerChild((this + 1288), (this + 2840));
  ConditionalInjExtAndTaskNode::registerChild((this + 1288), (this + 3032));
  ConditionalInjExtAndTaskNode::registerChild((this + 1288), (this + 3152));
  ConditionalInjExtAndTaskNode::registerChild(this, (this + 3344));

  return ConditionalInjExtAndTaskNode::registerChild(this, (this + 6008));
}

void PadHoverProjection::PadHoverProjection(PadHoverProjection *this, int a2, int a3, int a4)
{
  v5 = a3;
  v8 = a3 + 2 * a4;
  v9 = SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize(this, 0x14FEA75CAD4BD308, v8);
  *v9 = &unk_2876F2DF8;
  *(v9 + 4) = &unk_2876F2E40;
  *(v9 + 14) = a4;
  *(v9 + 60) = a4;
  *(v9 + 61) = a4 + v5;
  *(v9 + 62) = v5;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((v9 + 64), 0xB4D392F256A1FCCBLL, v8);
  *(this + 8) = &unk_2876F2DF8;
  *(this + 12) = &unk_2876F2E40;
  *(this + 30) = a4;
  *(this + 124) = a4;
  *(this + 125) = a4 + v5;
  *(this + 126) = v5;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 128), 0x14FEA75CAD4BD309, 2 * a4 + a2);
  *(this + 16) = &unk_2876F2DF8;
  *(this + 20) = &unk_2876F2E40;
  *(this + 46) = a4;
  *(this + 188) = a4;
  *(this + 189) = a4 + a2;
  *(this + 190) = a2;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((this + 192), 0xB4D392F256A1FCCCLL, 2 * a4 + a2);
  *(this + 24) = &unk_2876F2DF8;
  *(this + 28) = &unk_2876F2E40;
  *(this + 62) = a4;
  *(this + 252) = a4;
  *(this + 253) = a4 + a2;
  *(this + 254) = a2;
  *(this + 256) = a2;
  *(this + 257) = v5;
  *(this + 258) = a4;
}

void sub_2653FF48C(_Unwind_Exception *a1)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v3);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v2);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v1);
  _Unwind_Resume(a1);
}

void SensorVector<float>::~SensorVector(void *a1)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a1);

  JUMPOUT(0x266758590);
}

void PadHoverPathFilteringStep::~PadHoverPathFilteringStep(PadHoverPathFilteringStep *this)
{
  *this = &unk_2876F3308;
  *(this + 329) = &unk_2876F3810;
  *(this + 308) = &unk_2876F3810;
  *(this + 299) = &unk_2876F3810;
  *(this + 287) = &unk_2876F3810;
  *(this + 247) = &unk_2876F3810;
  *(this + 238) = &unk_2876F3810;
  *(this + 226) = &unk_2876F3810;
  *(this + 186) = &unk_2876F3810;
  *(this + 177) = &unk_2876F3810;
  *(this + 165) = &unk_2876F3810;
  *(this + 125) = &unk_2876F3810;
  *(this + 116) = &unk_2876F3810;
  *(this + 104) = &unk_2876F3810;
  *(this + 64) = &unk_2876F3810;
  *(this + 55) = &unk_2876F3810;
  *(this + 43) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F3308;
  *(this + 329) = &unk_2876F3810;
  *(this + 308) = &unk_2876F3810;
  *(this + 299) = &unk_2876F3810;
  *(this + 287) = &unk_2876F3810;
  *(this + 247) = &unk_2876F3810;
  *(this + 238) = &unk_2876F3810;
  *(this + 226) = &unk_2876F3810;
  *(this + 186) = &unk_2876F3810;
  *(this + 177) = &unk_2876F3810;
  *(this + 165) = &unk_2876F3810;
  *(this + 125) = &unk_2876F3810;
  *(this + 116) = &unk_2876F3810;
  *(this + 104) = &unk_2876F3810;
  *(this + 64) = &unk_2876F3810;
  *(this + 55) = &unk_2876F3810;
  *(this + 43) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F3308;
  *(this + 329) = &unk_2876F3810;
  *(this + 308) = &unk_2876F3810;
  *(this + 299) = &unk_2876F3810;
  *(this + 287) = &unk_2876F3810;
  *(this + 247) = &unk_2876F3810;
  *(this + 238) = &unk_2876F3810;
  *(this + 226) = &unk_2876F3810;
  *(this + 186) = &unk_2876F3810;
  *(this + 177) = &unk_2876F3810;
  *(this + 165) = &unk_2876F3810;
  *(this + 125) = &unk_2876F3810;
  *(this + 116) = &unk_2876F3810;
  *(this + 104) = &unk_2876F3810;
  *(this + 64) = &unk_2876F3810;
  *(this + 55) = &unk_2876F3810;
  *(this + 43) = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PadHoverRefinementStep::~PadHoverRefinementStep(PadHoverRefinementStep *this)
{
  *this = &unk_2876F3008;
  *(this + 70) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 46);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 38);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 30);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 22);

  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F3008;
  *(this + 70) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 46);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 38);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 30);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 22);

  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F3008;
  *(this + 70) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 46);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 38);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 30);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 22);
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PadHoverInitialConditionsStep::~PadHoverInitialConditionsStep(PadHoverInitialConditionsStep *this)
{
  *this = &unk_2876F2FB8;
  *(this + 55) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 47);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 39);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 31);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 23);

  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2FB8;
  *(this + 55) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 47);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 39);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 31);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 23);

  AlgWorkNode::~AlgWorkNode(this);
}

{
  *this = &unk_2876F2FB8;
  *(this + 55) = &unk_2876F3810;
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 47);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 39);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 31);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 23);
  AlgWorkNode::~AlgWorkNode(this);

  JUMPOUT(0x266758590);
}

void PadHoverProjection::~PadHoverProjection(PadHoverProjection *this)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 24);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 16);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this + 8);

  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(this);
}

uint64_t PadGatedSimpleDataNode<SA3DPoint>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(*(result + 40) + 28) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

uint64_t PadGatedSimpleDataNode<HoverXYZMeasurementStatePacket>::sendCallback(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  if (*(*(result + 128) + 28) == 1)
  {
    *(a3 + 56) = result + 28;
    return a2(a3);
  }

  return result;
}

double PadFireflyGhFilter::reset(PadFireflyGhFilter *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 17) = 0;
  *(this + 56) = 0;
  return result;
}

void PadFireflyGhFilter::PadFireflyGhFilter(PadFireflyGhFilter *this)
{
  *(this + 72) = xmmword_2655A9B90;
  *(this + 88) = xmmword_2655A9BA0;
  *(this + 13) = 0x4348000040666666;
  *(this + 56) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
}

void PadFireflyGhFilter::updateFilter(uint64_t a1, int a2, int a3, uint64_t a4, int32x2_t *a5, uint64_t a6, float32x4_t a7, float a8, double a9, double a10, double a11, double a12, double a13, int32x4_t a14)
{
  v17 = *&a10;
  v18 = *&a9;
  LODWORD(a10) = 950977342;
  v20 = a6 * 0.000083333;
  if (a2 == 1)
  {
LABEL_5:
    LOWORD(v21) = 0;
    goto LABEL_6;
  }

  if (a3 != 4)
  {
    if (a3 == 3)
    {
      LOWORD(v21) = 1;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v21 = *(a1 + 112);
  if (v21 < 0x14)
  {
    LOWORD(v21) = v21 + 1;
  }

LABEL_6:
  *(a1 + 112) = v21;
  v22 = *a4;
  a7.f32[0] = a7.f32[0] / 1000.0;
  *&a9 = a6 * 0.000083333;
  v23.f32[0] = PadFireflyGhFilter::adaptiveGhFilter(a1, a1 + 72, a1, a7, a8 / 1000.0, a9, a10, a11, a12, a13, a14);
  v23.i32[1] = v24;
  v25 = vdup_n_s32(0x447A0000u);
  *v26.f32 = vmul_f32(v23, v25);
  *a4 = v26.i64[0];
  v26.f32[0] = v18 / 1000.0;
  *&v27 = v20;
  v33.f32[0] = PadFireflyGhFilter::adaptiveGhFilter(a1, a1 + 92, (a1 + 36), v26, v17 / 1000.0, v27, v28, v29, v30, v31, v32);
  v33.i32[1] = v34;
  v35 = vmul_f32(v33, v25);
  *a5 = v35;
  if (a6 < 1)
  {
    v36 = 0;
  }

  else
  {
    *v35.i32 = a6;
    v36 = vdiv_f32(vand_s8(vmul_f32(vsub_f32(*a4, v22), vdup_n_s32(0x45400000u)), vcgez_s32(vshl_n_s32(vdup_n_s32(*(a1 + 112) == 0), 0x1FuLL))), vdup_lane_s32(v35, 0));
  }

  *(a4 + 20) = v36;
}

float32_t PadFireflyGhFilter::adaptiveGhFilter(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x4_t a4, float a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = *&a6;
  v15 = *(a1 + 112);
  if (!*(a1 + 112))
  {
    a3->i32[0] = a4.i32[0];
    a3->f32[1] = a5;
    v16 = a5;
    v17 = a4.f32[0];
    goto LABEL_5;
  }

  if (v15 == 1)
  {
    v17 = a3->f32[0];
    v16 = a3->f32[1];
LABEL_5:
    a3[1].f32[0] = (1.0 / v11) * (a4.f32[0] - v17);
    a3[1].f32[1] = (1.0 / v11) * (a5 - v16);
    v18 = a3[1];
    a3[2] = v18;
    v19 = v18.f32[0];
    a3[3].i32[0] = 0;
    v20 = v18.f32[1];
    v15 = *(a1 + 112);
    goto LABEL_7;
  }

  v19 = a3[1].f32[0];
  v20 = a3[1].f32[1];
  v17 = a3->f32[0];
  v16 = a3->f32[1];
LABEL_7:
  v21 = v20 * v11;
  v22 = (v19 * v11) + v17;
  v23 = v21 + v16;
  v24 = a4.f32[0] - v22;
  v25 = a5 - (v21 + v16);
  if (v15)
  {
    a4.f32[0] = (hypotf(a5 - (v21 + v16), v24) + (a3[3].f32[0] * (v15 - 1))) / v15;
    a3[3].i32[0] = a4.i32[0];
  }

  else
  {
    a4.i32[0] = a3[3].i32[0];
  }

  v26 = fabsf(a3[2].f32[0]) + fabsf(a3[2].f32[1]);
  LODWORD(a6) = *a2;
  v27 = *(a2 + 4);
  v28 = *(a2 + 12);
  if (v28 < a4.f32[0])
  {
    a4.i32[0] = *(a2 + 12);
  }

  *&a10 = *&a6 - v27;
  v29 = v27 + ((*(a2 + 16) * ((*&a6 - (a4.f32[0] * ((*&a6 - v27) / v28))) - v27)) / (v26 + *(a2 + 16)));
  a4.f32[0] = v22;
  *&a6 = v24;
  PadFireflyGhFilter::simpleGhFilter(a4, v23, a6, v25, v29, v11, a10, a11, a1, a2, a3);
  if (*(a1 + 112))
  {
    a3[2] = vmul_n_f32(vadd_f32(vmul_n_f32(a3[2], (*(a1 + 112) - 1)), a3[1]), 1.0 / *(a1 + 112));
  }

  result = a3->f32[0];
  v31 = a3->i32[1];
  return result;
}

float32x4_t PadFireflyGhFilter::simpleGhFilter(float32x4_t a1, float32_t a2, double a3, float a4, float a5, float a6, double a7, int32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = 0.293;
  if (a5 >= 0.293)
  {
    v11 = a5;
    if (a5 > 1.0)
    {
      v11 = 1.0;
    }
  }

  *a8.i32 = 1.0 - (v11 * v11);
  *&v12 = (*(a10 + 8) * ((1.0 - v11) * (1.0 - v11))) / a6;
  v13 = *(a11 + 8);
  *(&a3 + 1) = a4;
  a8.i32[1] = v12;
  a1.f32[1] = a2;
  a1.i64[1] = *(a11 + 8);
  result = vaddq_f32(a1, vmulq_f32(vdupq_lane_s64(*&a3, 0), vzip1q_s32(a8, a8)));
  *a11 = result;
  return result;
}

uint64_t PadFireflyWatershedStep::PadFireflyWatershedStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v11 = &unk_2876F2F68;
  AlgDataNode::AlgDataNode((v11 + 10), 0x377A34E1248190CLL, 0);
  *(a1 + 80) = &unk_2876F0108;
  *(a1 + 108) = 0;
  *(a1 + 96) = 20480;
  *(a1 + 104) = 1;
  *(a1 + 112) = a3;
  *(a1 + 120) = a4;
  *(a1 + 128) = a5;
  *(a1 + 136) = a6;
  if (*(a6 + 53) <= *(a6 + 197))
  {
    v12 = *(a6 + 197);
  }

  else
  {
    v12 = *(a6 + 53);
  }

  SA1DArrayDynamicSize<unsigned char>::SA1DArrayDynamicSize((a1 + 144), 0x6D7279E0BC12355DLL, v12);
  *(a1 + 144) = &unk_2876F0A60;
  *(a1 + 176) = &unk_2876F0AA8;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0;
  *(a1 + 205) = v12;
  *(a1 + 206) = v12;
  PadFireflyWatershedStep::runNodeRegistrations(a1);
  *(a1 + 108) = 1;
  return a1;
}

void sub_2653FFF0C(_Unwind_Exception *a1)
{
  SA1DArrayDynamicSize<unsigned char>::~SA1DArrayDynamicSize(v3);
  *v2 = &unk_2876F3810;
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

void *PadFireflyWatershedStep::runNodeRegistrations(PadFireflyWatershedStep *this)
{
  AlgWorkNode::registerAlgDataNode(this + 56, this + 80);
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 14));
  AlgWorkNode::registerAlgDataNode(this + 56, *(this + 15));
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 8);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 80);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 152);
  AlgWorkNode::registerAlgDataNode(this + 8, *(this + 17) + 224);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 17) + 296);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 17) + 368);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 17) + 440);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 17) + 512);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 17) + 584);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 17) + 648);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 17) + 712);
  AlgWorkNode::registerAlgDataNode(this + 40, *(this + 17) + 776);
  v2 = *(this + 16);

  return AlgWorkNode::registerAlgDataNode(this + 40, v2);
}

uint64_t PadFireflyWatershedStep::run(PadFireflyWatershedStep *this)
{
  if (*(this + 108) == 1)
  {
    PadFireflyWatershedStep::resetPatches(this, *(this + 16) + 28);
    PadFireflyWatershedStep::resetPatches(v2, *(this + 16) + 240);
    PadFireflyWatershedStep::subtractAndThresholdAllPaddedVectors(this);
    PadFireflyWatershedStep::diffuseAllPaddedVectors(this);
    PadFireflyWatershedStep::markBackgroundInAllVectorPatchMaps(this);
    PadFireflyWatershedStep::hikeAllVectorsFromNonBackgroundPixels(this);
  }

  return 0;
}

uint64_t PadFireflyWatershedStep::subtractAndThresholdAllPaddedVectors(PadFireflyWatershedStep *this)
{
  v2 = PadFireflyWatershedStep::subtractAndThresholdPaddedVector(this, (*(this + 17) + 8), (*(this + 15) + 28));
  v3 = PadFireflyWatershedStep::subtractAndThresholdPaddedVector(v2, (*(this + 17) + 152), (*(this + 15) + 32));
  v4 = PadFireflyWatershedStep::subtractAndThresholdPaddedVector(v3, (*(this + 17) + 80), (*(this + 15) + 36));
  v5 = (*(this + 17) + 224);
  v6 = (*(this + 15) + 40);

  return PadFireflyWatershedStep::subtractAndThresholdPaddedVector(v4, v5, v6);
}

uint64_t PadFireflyWatershedStep::diffuseAllPaddedVectors(PadFireflyWatershedStep *this)
{
  v2 = PadFireflyWatershedStep::diffusePaddedVector(this, (*(this + 17) + 8), (*(this + 17) + 296));
  v3 = PadFireflyWatershedStep::diffusePaddedVector(v2, (*(this + 17) + 152), (*(this + 17) + 440));
  v4 = PadFireflyWatershedStep::diffusePaddedVector(v3, (*(this + 17) + 80), (*(this + 17) + 368));
  v5 = *(this + 17);

  return PadFireflyWatershedStep::diffusePaddedVector(v4, (v5 + 224), (v5 + 512));
}

uint64_t PadFireflyWatershedStep::markBackgroundInAllVectorPatchMaps(PadFireflyWatershedStep *this)
{
  v2 = *(this + 14);
  v3 = PadFireflyWatershedStep::markBackgroundInVector(v2[18], this, *(this + 17) + 8, *(this + 17) + 296, *(this + 17) + 584);
  v4 = PadFireflyWatershedStep::markBackgroundInVector(v2[19], v3, *(this + 17) + 152, *(this + 17) + 440, *(this + 17) + 712);
  v5 = PadFireflyWatershedStep::markBackgroundInVector(v2[20], v4, *(this + 17) + 80, *(this + 17) + 368, *(this + 17) + 648);
  v6 = *(this + 17);
  v7 = v2[21];

  return PadFireflyWatershedStep::markBackgroundInVector(v7, v5, v6 + 224, v6 + 512, v6 + 776);
}

uint64_t PadFireflyWatershedStep::hikeAllVectorsFromNonBackgroundPixels(PadFireflyWatershedStep *this)
{
  v2 = *(this + 14);
  v3 = *(this + 16);
  PadFireflyWatershedStep::hikeVectorFromNonBackgroundPixels(this, *(this + 17) + 8, *(this + 17) + 296, (*(this + 17) + 584), v3 + 188, (v3 + 28), v2[14]);
  PadFireflyWatershedStep::hikeVectorFromNonBackgroundPixels(this, *(this + 17) + 152, *(this + 17) + 440, (*(this + 17) + 712), v3 + 189, (v3 + 108), v2[15]);
  v4 = *(this + 17);
  v5 = v3[188];
  v6 = 1.0;
  v7 = 1.0;
  if (v5 >= 3)
  {
    v8 = (v3 + 76);
    v9 = v5 - 2;
    do
    {
      v10 = *v8;
      v8 += 10;
      v11 = v10;
      if ((*(v4 + 53) - 2) == v10 || v11 == 1)
      {
        v7 = 0.6;
      }

      --v9;
    }

    while (v9);
  }

  v13 = v3[189];
  if (v13 >= 3)
  {
    v14 = (v3 + 156);
    v15 = v13 - 2;
    v6 = 1.0;
    do
    {
      v16 = *v14;
      v14 += 10;
      v17 = v16;
      if ((*(v4 + 197) - 2) == v16 || v17 == 1)
      {
        v6 = 0.6;
      }

      --v15;
    }

    while (v15);
  }

  PadFireflyWatershedStep::hikeVectorFromNonBackgroundPixels(this, v4 + 80, v4 + 368, (v4 + 648), v3 + 400, (v3 + 240), v6 * v2[16]);
  v19 = PadFireflyWatershedStep::hikeVectorFromNonBackgroundPixels(this, *(this + 17) + 224, *(this + 17) + 512, (*(this + 17) + 776), v3 + 401, (v3 + 320), v7 * v2[17]);
  v20 = PadFireflyWatershedStep::mergeNeighborPatches(v19, *(this + 17) + 368, (v3 + 240), *(this + 17) + 648, v3 + 400);
  v21 = *(this + 17);

  return PadFireflyWatershedStep::mergeNeighborPatches(v20, v21 + 512, (v3 + 320), v21 + 776, v3 + 401);
}

void PadFireflyWatershedStep::resetPatches(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 162) = *(a2 + 160);
  *(a2 + 160) = 514;
  v3 = *(a2 + 164);
  v4 = *(a2 + 184);
  v5 = a2 + 93;
  do
  {
    *(v5 - 85) = 0;
    *(v5 - 93) = 0;
    *(v5 - 77) = 0;
    *(v5 - 80) = v2;
    *(v5 - 85) = -1;
    *(v5 - 5) = 0;
    *(v5 - 13) = 0;
    *v5 = v2++;
    *(v5 + 3) = 0;
    *(v5 - 5) = -1;
    v5 += 20;
  }

  while (v2 != 4);
  *(a2 + 184) = 0u;
  *(a2 + 196) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 164) = v3;
  *(a2 + 184) = v4;
}

uint64_t PadFireflyWatershedStep::subtractAndThresholdPaddedVector(uint64_t a1, void *a2, __int16 *a3)
{
  result = (*(*a2 + 40))(a2);
  if ((result - 3) <= 0xFFFFFFFD)
  {
    v6 = 1;
    do
    {
      v7 = (*(a2[4] + 8))(a2 + 4);
      if ((*(v7 + 4 * v6) - a3[1]) <= *a3)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = *(v7 + 4 * v6) - a3[1];
      }

      *((*(a2[4] + 8))(a2 + 4) + 4 * v6++) = v8;
      result = (*(*a2 + 40))(a2);
    }

    while (result - 1 > v6);
  }

  return result;
}

uint64_t PadFireflyWatershedStep::diffusePaddedVector(uint64_t a1, void *a2, void *a3)
{
  if ((*(*a2 + 40))(a2) - 3 <= 0xFFFFFFFD)
  {
    v5 = 1;
    v6 = 1;
    do
    {
      v7 = *((*(a2[4] + 8))(a2 + 4) + 4 * (v5 - 1));
      v8 = v7 + (*((*(a2[4] + 8))(a2 + 4) + 4 * v6) * 2.0);
      v9 = (v8 + *((*(a2[4] + 8))(a2 + 4) + 4 * v6 + 4)) * 0.25;
      *((*(a3[4] + 8))(a3 + 4) + 4 * v6++) = v9;
      v5 = v6;
    }

    while ((*(*a2 + 40))(a2) - 1 > v6);
  }

  v10 = a3 + 4;
  *(*(a3[4] + 8))(a3 + 4) = 0;
  v11 = (*(*a3 + 40))(a3) - 1;
  result = (*(*v10 + 8))(v10);
  *(result + 4 * v11) = 0;
  return result;
}

uint64_t PadFireflyWatershedStep::markBackgroundInVector(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a3 + 32;
  (*(*a3 + 40))(a3);
  v10 = 0;
  v11 = a4 + 32;
  v12 = a5 + 32;
  do
  {
    v13 = *((*(*v9 + 8))(v9) + 4 * v10) <= 0.0 || *((*(*v11 + 8))(v11) + 4 * v10) <= a1;
    *((*(*v12 + 8))(v12) + v10++) = v13;
    result = (*(*a3 + 40))(a3);
  }

  while (result - 1 >= v10);
  return result;
}

uint64_t PadFireflyWatershedStep::hikeVectorFromNonBackgroundPixels(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5, uint64_t a6, float a7)
{
  result = (*(*a4 + 40))(a4);
  if (result != 2)
  {
    v15 = 1;
    do
    {
      if (!*((*(a4[4] + 8))(a4 + 4) + v15))
      {
        PadFireflyWatershedStep::hikeTheRidgeAndMark(a1, v15, a2, a3, a4, a5, a6, a7);
      }

      ++v15;
      result = (*(*a4 + 40))(a4);
    }

    while (result - 2 >= v15);
  }

  return result;
}

uint64_t PadFireflyWatershedStep::mergeNeighborPatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*a2 + 40))(a2);
  if ((result & 0xFFFFFFFE) != 2)
  {
    v10 = 0;
    v11 = a4 + 32;
    v12 = a2 + 32;
    v13 = 1;
    v14 = 1;
    do
    {
      if (*((*(*v11 + 8))(v11) + v14) < 2u || (v15 = v13 + 1, *((*(*v11 + 8))(v11) + v15) < 2u))
      {
        v10 = 1;
      }

      else
      {
        v16 = *((*(*v11 + 8))(v11) + v14);
        v17 = *((*(*v11 + 8))(v11) + v14);
        if (v17 != *((*(*v11 + 8))(v11) + v15))
        {
          if (v10)
          {
            --*a5;
          }

          *((*(*v11 + 8))(v11) + v15) = v16;
          v18 = a3 + 20 * v16;
          ++*(v18 + 10);
          *(v18 + 12) = v15;
          v19 = *(v18 + 8);
          v20 = *((*(*v12 + 8))(a2 + 32) + 4 * v19);
          v21 = *(v18 + 28);
          v10 = 0;
          if (v20 < *((*(*v12 + 8))(a2 + 32) + 4 * v21))
          {
            *(v18 + 8) = *(v18 + 28);
          }
        }
      }

      v13 = ++v14;
      result = (*(*a2 + 40))(a2);
    }

    while (result - 2 > v14);
  }

  return result;
}

uint64_t PadFireflyWatershedStep::hikeTheRidgeAndMark(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, float a8)
{
  v23 = a2;
  v15 = a1 + 176;
  SA1DArrayBase<unsigned char>::fill(a1 + 176, 0);
  v16 = 0;
  do
  {
    v17 = v16;
    v18 = v23;
    *((*(*(a1 + 176) + 8))(v15) + v16) = v18;
    LargestNeighborCell = PadFireflyWatershedStep::findLargestNeighborCell(a8, a1, a3, a4, a5, &v23, a6, a7);
    if (LargestNeighborCell)
    {
      break;
    }

    v16 = v17 + 1;
  }

  while (*(a1 + 189) > (v17 + 1));
  v20 = (a7 + 20 * LargestNeighborCell);
  do
  {
    v21 = (*(*v15 + 8))(v15);
    result = PadFireflyWatershedStep::addPixelToPatch(v21, *(v21 + v17--), v20, a5);
  }

  while (v17 != -1);
  return result;
}

uint64_t PadFireflyWatershedStep::findLargestNeighborCell(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, _BYTE *a7, uint64_t a8)
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = *a6;
  v11 = a3 + 32;
  v12 = *((*(*(a3 + 32) + 8))(a3 + 32) + 4 * v10);
  *v38 = v12;
  v13 = *((*(*v11 + 8))(v11) + 4 * (v10 - 1));
  *&v38[1] = v13;
  v14 = *((*(*v11 + 8))(v11) + 4 * v10 + 4);
  *&v38[2] = v14;
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if (v13 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  v17 = v12;
  if (v12 > v16 || (v13 > v15 ? (v18 = 1) : (v18 = 2 * (v14 > v12)), v17 = v16, !v18))
  {
    v18 = 0;
    v19 = 2u;
    do
    {
      if (*&v38[v19] == v12)
      {
        if (v18)
        {
          v20 = 0;
        }

        else
        {
          v20 = v19 == 2;
        }

        if (v20)
        {
          v21 = 2;
        }

        else
        {
          v21 = v18;
        }

        v22 = PadFireflyWatershedStep::adjacent_index_offsets_[v19] + v10;
        v23 = *((*(*v11 + 8))(v11) + 4 * v22);
        v24 = *((*(*v11 + 8))(v11) + 4 * (v22 - 1));
        v25 = (*(*v11 + 8))(v11) + 4 * v22;
        v26 = *(v25 + 4);
        if (v26 > v17)
        {
          v27 = *(v25 + 4);
        }

        else
        {
          v27 = v17;
        }

        if (v24 > v27)
        {
          v28 = v24;
        }

        else
        {
          v28 = v27;
        }

        if (v23 > v28 || (v26 <= v17 ? (v29 = v24 <= v27) : (v29 = 0), v23 = v28, v18 = v19, v29))
        {
          v28 = v23;
          v18 = v21;
        }
      }

      else
      {
        v28 = v17;
      }

      v17 = v28;
      v29 = v19-- > 1;
    }

    while (v29);
  }

  v30 = PadFireflyWatershedStep::adjacent_index_offsets_[v18] + v10;
  v31 = (*(*(a5 + 32) + 8))();
  if (v18 | *(v31 + v30))
  {
    result = *(v31 + v30);
  }

  else
  {
    result = PadFireflyWatershedStep::startPatchAtPeak(a1, v31, v30, a4, a5, a7, a8);
  }

  *a6 = v30;
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PadFireflyWatershedStep::addPixelToPatch(uint64_t a1, unsigned int a2, _BYTE *a3, uint64_t a4)
{
  v6 = a3[13];
  result = (*(*(a4 + 32) + 8))();
  *(result + a2) = v6;
  if (a3[13] >= 2u)
  {
    ++a3[10];
    if (a3[12] < a2)
    {
      a3[12] = a2;
    }

    if (a3[11] > a2)
    {
      a3[11] = a2;
    }
  }

  return result;
}

uint64_t PadFireflyWatershedStep::startPatchAtPeak(float a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v8 = a3;
  if (*a6 >= 4u)
  {
    v11 = a3;
    goto LABEL_5;
  }

  v11 = a3;
  if (*((*(*(a4 + 32) + 8))(a4 + 32) + 4 * a3) < a1)
  {
LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  v12 = *a6;
  *a6 = v12 + 1;
  v13 = a7 + 20 * v12;
  *(v13 + 10) = 0;
  *(v13 + 8) = v8;
  *(v13 + 11) = v8;
  *(v13 + 12) = v8;
LABEL_6:
  *((*(*(a5 + 32) + 8))(a5 + 32) + v11) = v12;
  return v12;
}

uint64_t PadHoverInitialConditionsStep::PadHoverInitialConditionsStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v18 = &unk_2876F2FB8;
  *(v18 + 80) = *(a3 + 10);
  v19 = *(a3 + 13);
  *(v18 + 81) = v19;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5 + 1072;
  *(v18 + 104) = a5 + 1144;
  *(v18 + 112) = a6;
  *(v18 + 120) = *(a6 + 384) + 28;
  *(v18 + 128) = a7 + 28;
  *(v18 + 136) = *(a6 + 376) + 28;
  *(v18 + 144) = a8 + 28;
  *(v18 + 152) = a9;
  *(v18 + 168) = a10;
  *(v18 + 176) = a11;
  v20 = v18 + 184;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((v18 + 184), 0x875F13E164A0C7BDLL, v19);
  *(a1 + 184) = &unk_2876F0E30;
  *(a1 + 216) = &unk_2876F0E78;
  *(a1 + 240) = a4;
  v21 = *(a1 + 88);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 248), 0x875F13E164A0C7DELL, *(a1 + 80));
  v25 = a7;
  *(a1 + 248) = &unk_2876F0E30;
  *(a1 + 280) = &unk_2876F0E78;
  *(a1 + 304) = v21;
  v22 = *(a1 + 88);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 312), 0x7341900DF40E9260, *(a1 + 81));
  *(a1 + 312) = &unk_2876F0E30;
  *(a1 + 344) = &unk_2876F0E78;
  *(a1 + 368) = v22;
  v23 = *(a1 + 88);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 376), 0x7341900DF40E9281, *(a1 + 80));
  *(a1 + 376) = &unk_2876F0E30;
  *(a1 + 408) = &unk_2876F0E78;
  *(a1 + 432) = v23;
  AlgDataNode::AlgDataNode((a1 + 440), 0x377A34E1248190CLL, 0);
  *(a1 + 440) = &unk_2876F0108;
  *(a1 + 468) = 0;
  *(a1 + 456) = 20480;
  *(a1 + 464) = 1;
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 1072);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 1144);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 176);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 240);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 304);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 368);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 432);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 496);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 560);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 624);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 944);
  AlgWorkNode::registerAlgDataNode(a1 + 8, a5 + 1008);
  AlgWorkNode::registerAlgDataNode(a1 + 24, *(a6 + 384));
  AlgWorkNode::registerAlgDataNode(a1 + 24, *(a6 + 376));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 152));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 160));
  AlgWorkNode::registerAlgDataNode(a1 + 40, v20);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a1 + 248);
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 168));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 176));
  AlgWorkNode::registerAlgDataNode(a1 + 40, a1 + 312);
  AlgWorkNode::registerAlgDataNode(a1 + 40, a1 + 376);
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 440);
  AlgWorkNode::registerAlgDataNode(a1 + 56, v25);
  *(a1 + 468) = 1;
  return a1;
}

{
  return PadHoverInitialConditionsStep::PadHoverInitialConditionsStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_265401794(_Unwind_Exception *a1)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v5);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v4);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v3);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v2);
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

uint64_t PadHoverInitialConditionsStep::run(PadHoverInitialConditionsStep *this)
{
  if (*(this + 468) == 1)
  {
    v2 = *(this + 14);
    if (v2[19].i32[0])
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    PadFireflyModelBasedGridSearch::determineComputationBound(v2, v3, 0);
    PadFireflyModelBasedGridSearch::runModelBasedGridSearch(*(this + 14), 0, 0);
    v4 = *(this + 14);
    if (v4[29].i8[0] == 1)
    {
      PadFireflyModelBasedGridSearch::determineComputationBound(v4, v3, 1u);
      PadFireflyModelBasedGridSearch::runModelBasedGridSearch(*(this + 14), 1, 0);
    }

    PadHoverInitialConditionsStep::dePhaseSignal(this, 0);
    PadHoverInitialConditionsStep::dePhaseSignal(this, 1);
  }

  return 0;
}

void PadHoverInitialConditionsStep::dePhaseSignal(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = 168;
  if (a2)
  {
    v5 = 344;
  }

  else
  {
    v4 = 152;
    v5 = 216;
  }

  if (a2)
  {
    v6 = 176;
  }

  else
  {
    v6 = 160;
  }

  if (a2)
  {
    v7 = 408;
  }

  else
  {
    v7 = 280;
  }

  if (a2)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v9 = *(a1 + v4);
  if (a2)
  {
    v10 = 20;
  }

  else
  {
    v10 = 12;
  }

  v11 = (*(*(v9 + 32) + 8))();
  v12 = (*(*(a1 + v5) + 8))();
  v13 = (*(*(*(a1 + v6) + 32) + 8))();
  v14 = (*(*(a1 + v7) + 8))();
  v15 = *(a1 + 120);
  v16 = *(v15 + v8);
  v17 = *(a1 + 144);
  if (*(v17 + 25) == 1)
  {
    v18 = *(v17 + 24);
    v19 = !v2 && v18 == 1;
    v20 = v19;
    v21 = v2 == 1 && v18 == 2;
    if (v21 ? 1 : v20)
    {
      v2 = 2;
    }
  }

  v58 = v2;
  v23 = *(v15 + v10);
  v24 = *(a1 + 96);
  v25 = v24[4];
  v24 += 4;
  v57 = (*(v25 + 8))(v24);
  (*(*v24 + 32))(v24);
  v56 = (*(*v24 + 24))(v24);
  v55 = (*(*v24 + 32))(v24);
  v26 = *(a1 + 96);
  v27 = v26[4];
  v26 += 4;
  v28 = (*(v27 + 8))(v26);
  v29 = (*(*v26 + 32))(v26);
  v30 = (*(*v26 + 24))(v26);
  v31 = (*(*v26 + 32))(v26);
  v32 = *(a1 + 81);
  v35 = __sincosf_stret(v16);
  v34.n128_f32[0] = v35.__cosval;
  v33.n128_f32[0] = v35.__sinval;
  if (v32)
  {
    v36 = 0;
    v37 = v57 + 4 * (v56 * v58 * v55);
    v38 = v28 + 4 * (v29 + v30 * v58 * v31);
    do
    {
      *(v11 + 4 * v36) = (v35.__sinval * *(v38 + 4 * v36)) + (*(v37 + 4 * v36) * v35.__cosval);
      *(v12 + 4 * v36) = (v35.__cosval * *(v38 + 4 * v36)) + (*(v37 + 4 * v36) * -v35.__sinval);
      ++v36;
    }

    while (v32 > v36);
  }

  v39 = *(a1 + 104);
  v40 = v39[4];
  v39 += 4;
  v41 = (*(v40 + 8))(v39, v33, v34);
  (*(*v39 + 32))(v39);
  v42 = (*(*v39 + 24))(v39);
  v43 = (*(*v39 + 32))(v39);
  v44 = *(a1 + 104);
  v45 = v44[4];
  v44 += 4;
  v46 = (*(v45 + 8))(v44);
  v47 = (*(*v44 + 32))(v44);
  v48 = (*(*v44 + 24))(v44);
  v49 = (*(*v44 + 32))(v44);
  v50 = *(a1 + 80);
  v51 = __sincosf_stret(v23);
  if (v50)
  {
    v52 = 0;
    v53 = v41 + 4 * (v42 * v58 * v43);
    v54 = v46 + 4 * (v47 + v48 * v58 * v49);
    do
    {
      *(v13 + 4 * v52) = (v51.__sinval * *(v54 + 4 * v52)) + (*(v53 + 4 * v52) * v51.__cosval);
      *(v14 + 4 * v52) = (v51.__cosval * *(v54 + 4 * v52)) + (*(v53 + 4 * v52) * -v51.__sinval);
      ++v52;
    }

    while (v50 > v52);
  }
}

uint64_t PadHoverRefinementStep::PadHoverRefinementStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  AlgWorkNode::AlgWorkNode(a1);
  *v31 = &unk_2876F3008;
  *(v31 + 88) = a4;
  *(v31 + 96) = a5;
  *(v31 + 104) = a6;
  *(v31 + 112) = a7;
  v32 = a3;
  *(v31 + 120) = a8;
  *(v31 + 128) = a9 + 28;
  *(v31 + 136) = a10;
  *(v31 + 144) = a11;
  *(v31 + 160) = a12;
  *(v31 + 168) = a13;
  v33 = v31 + 176;
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((v31 + 176), 0x7501B2DBBAA8DBCCLL, *(v32 + 13));
  *(a1 + 176) = &unk_2876F0E30;
  *(a1 + 208) = &unk_2876F0E78;
  *(a1 + 232) = a10;
  v34 = *(a1 + 136);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 240), 0x7501B2DBBAA8DBCDLL, *(v32 + 10));
  *(a1 + 240) = &unk_2876F0E30;
  *(a1 + 272) = &unk_2876F0E78;
  *(a1 + 296) = v34;
  v35 = *(a1 + 136);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 304), 0x15380E530FA01E0FLL, *(v32 + 13));
  *(a1 + 304) = &unk_2876F0E30;
  *(a1 + 336) = &unk_2876F0E78;
  *(a1 + 360) = v35;
  v36 = *(a1 + 136);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 368), 0x15380E530FA01E10, *(v32 + 10));
  *(a1 + 368) = &unk_2876F0E30;
  *(a1 + 400) = &unk_2876F0E78;
  *(a1 + 424) = v36;
  *(a1 + 432) = (*(*(a14 + 32) + 8))(a14 + 32);
  *(a1 + 440) = (*(*(a15 + 32) + 8))(a15 + 32);
  *(a1 + 448) = a16;
  *(a1 + 456) = a17;
  *(a1 + 464) = a18;
  *(a1 + 472) = a19;
  *(a1 + 480) = a20;
  *(a1 + 488) = a21;
  *(a1 + 496) = a22;
  *(a1 + 504) = a23 + 28;
  *(a1 + 512) = *(a21 + 16);
  v37 = *(a21 + 20);
  DWORD1(v37) = *a21;
  v38 = *(a21 + 4);
  *(&v37 + 1) = *(a21 + 4);
  *(a1 + 516) = v37;
  *(a1 + 532) = *(a21 + 12);
  *(a1 + 536) = *(a21 + 24);
  *(a1 + 544) = a24;
  *(a1 + 552) = a25;
  AlgDataNode::AlgDataNode((a1 + 560), 0x377A34E1248190CLL, 0);
  *(a1 + 560) = &unk_2876F0108;
  *(a1 + 588) = 0;
  *(a1 + 576) = 20480;
  *(a1 + 584) = 1;
  v39 = *(v32 + 10);
  *(a1 + 80) = v39;
  v40 = *(v32 + 13);
  *(a1 + 81) = v40;
  if (v39 <= v40)
  {
    LOBYTE(v39) = v40;
  }

  *(a1 + 82) = v39;
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 144));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 152));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 160));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 168));
  AlgWorkNode::registerAlgDataNode(a1 + 8, *(a1 + 88));
  AlgWorkNode::registerAlgDataNode(a1 + 24, v33);
  AlgWorkNode::registerAlgDataNode(a1 + 24, a1 + 240);
  AlgWorkNode::registerAlgDataNode(a1 + 24, a1 + 304);
  AlgWorkNode::registerAlgDataNode(a1 + 24, a1 + 368);
  AlgWorkNode::registerAlgDataNode(a1 + 24, *(a1 + 544));
  AlgWorkNode::registerAlgDataNode(a1 + 24, *(a1 + 552));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 448));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 456));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 480));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 464));
  AlgWorkNode::registerAlgDataNode(a1 + 40, *(a1 + 472));
  AlgWorkNode::registerAlgDataNode(a1 + 56, a1 + 560);
  *(a1 + 588) = 1;
  return a1;
}

{
  return PadHoverRefinementStep::PadHoverRefinementStep(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

void sub_265402394(_Unwind_Exception *a1)
{
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v4);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v3);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v2);
  AlgWorkNode::~AlgWorkNode(v1);
  _Unwind_Resume(a1);
}

uint64_t PadHoverRefinementStep::run(PadHoverRefinementStep *this)
{
  if (*(this + 588) == 1)
  {
    PadHoverRefinementStep::runRefinementStep(this);
    v3 = *(this + 56);
    v2 = *(this + 57);
    LODWORD(v4) = *(v2 + 32);
    LODWORD(v5) = *(v2 + 36);
    v6 = *(v3 + 32);
    v7 = *(v3 + 36);
    v8 = HoverCommon::find3DVectorDifference(*(v2 + 28), v4, v5, *(v3 + 28));
    v9 = *(this + 60);
    *(v9 + 28) = v8;
    *(v9 + 32) = v10;
    *(v9 + 36) = v11;
  }

  return 0;
}

uint64_t PadHoverRefinementStep::runRefinementStep(PadHoverRefinementStep *this)
{
  v2 = *(this + 16);
  v3 = *(this + 56);
  *(v3 + 28) = *v2;
  v4 = *(v2 + 8);
  *(v3 + 36) = *((*(*(*(this + 14) + 32) + 8))() + 4 * v4);
  v5 = *(this + 16);
  v6 = *(this + 57);
  *(v6 + 28) = *(v5 + 12);
  v7 = *(v5 + 20);
  *(v6 + 36) = *((*(*(*(this + 14) + 32) + 8))() + 4 * v7);
  PadHoverRefinementStep::calculateRegularizationScale(this);
  PadHoverRefinementStep::runRefinement(this, *(this + 18), *(this + 19), this + 176, this + 240, 0, (*(this + 56) + 28), (*(this + 58) + 28));
  PadHoverRefinementStep::runRefinement(this, *(this + 20), *(this + 21), this + 304, this + 368, 1, (*(this + 57) + 28), (*(this + 59) + 28));
  return 1;
}

void PadHoverRefinementStep::calculateRegularizationScale(PadHoverRefinementStep *this)
{
  v2 = *(this + 16);
  v3 = PadHoverRefinementStep::calculateRegularizationScalePerAxis(this, *v2, *(this + 81));
  v4 = PadHoverRefinementStep::calculateRegularizationScalePerAxis(this, v2[1], *(this + 80));
  if (v3 > v4)
  {
    v4 = v3;
  }

  *(this + 134) = v4;
}

uint64_t PadHoverRefinementStep::runRefinement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x2_t *a7, float *a8)
{
  v9 = a6;
  v145 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 88);
  v16 = *(a1 + 120);
  v17 = v15 + 44;
  v18 = v15[44] == a6;
  v128 = a8;
  if (v18 || (v17 = v15 + 47, v15[47] == a6) || (v17 = v15 + 50, v15[50] == a6))
  {
    v20 = v17[2];
    v21 = ((*(*(v16 + 32) + 8))() + v20);
    v9 = a6;
  }

  else
  {
    v21 = v15 + 46;
  }

  v22 = *v21;
  v23 = (*(*(a2 + 32) + 8))(a2 + 32);
  v24 = (*(*(a3 + 32) + 8))(a3 + 32);
  v25 = (*(*(a4 + 32) + 8))(a4 + 32);
  v26 = (*(*(a5 + 32) + 8))(a5 + 32);
  v27 = *(a1 + 81);
  v28 = *(a1 + 432);
  v29 = v23;
  v30 = v26;
  v129 = v25;
  HoverCommon::project1Dvector(v29, v27, v25, v28, v31);
  HoverCommon::project1Dvector(v24, *(a1 + 80), v30, *(a1 + 440), v32);
  if (*(a1 + 512))
  {
    v34 = 0;
    do
    {
      v136 = &v128;
      v35 = a7->f32[0];
      v36 = a7->f32[1];
      v37 = a7[1].f32[0];
      v38 = (4 * *(a1 + 81) + 15) & 0x7F0;
      MEMORY[0x28223BE20](v33);
      v40 = (&v128 - v39);
      v41 = 4 * *(a1 + 80);
      MEMORY[0x28223BE20](v42);
      v44 = (&v128 - ((v43 + 15) & 0x7F0));
      v140 = 0;
      v141 = 0;
      v139 = 0;
      v45 = *(a1 + 81);
      MEMORY[0x28223BE20](v46);
      v134 = &v128 - ((v47 + 15) & 0x7F0);
      MEMORY[0x28223BE20](v48);
      v50 = (&v128 - v49);
      v133 = &v128 - v49;
      MEMORY[0x28223BE20](v51);
      v135 = &v128 - v52;
      MEMORY[0x28223BE20](v53);
      v55 = (&v128 - v54);
      v132 = &v128 - v54;
      v56 = *(a1 + 96);
      v131 = v40;
      HoverModelSelector::evalEstimatedProfile(v56, 0, v9, v57, v40, &v141 + 1, &v141, &v140 + 1, v35, v37, v59, v58);
      v60 = *(a1 + 96);
      v61 = *(a1 + 80);
      v127 = v55;
      v62 = v44;
      v130 = v44;
      HoverModelSelector::evalEstimatedProfile(v60, 1, v9, v61, v44, &v140, &v139 + 1, &v139, v36, v37, v50, v127);
      v63 = *(a1 + 81);
      v65 = MEMORY[0x28223BE20](v64);
      v66 = a7;
      v67 = v30;
      v69 = (&v128 - v68);
      v70 = (4 * *(a1 + 80) + 15) & 0x7F0;
      MEMORY[0x28223BE20](v65);
      v72 = (&v128 - v71);
      HoverCommon::project1Dvector(v40, v73, v69, *(a1 + 432), v74);
      HoverCommon::project1Dvector(v62, *(a1 + 80), v72, *(a1 + 440), v75);
      ScalingFactor = HoverCommon::getScalingFactor(0, v36, v37, v9, *(a1 + 104), v22);
      v77 = HoverCommon::getScalingFactor(1, v35, v37, v9, *(a1 + 104), v22);
      HoverCommon::scale1Dvector(v69, *(a1 + 81), v69, v78, ScalingFactor);
      HoverCommon::scale1Dvector(v72, *(a1 + 80), v72, v79, v77);
      v80 = 4 * (*(a1 + 80) + *(a1 + 81));
      MEMORY[0x28223BE20](v81);
      v83 = (&v128 - v82);
      v84 = v22;
      v85 = v9;
      v87 = (&v128 + 4 * v86 - v82);
      v88 = v69;
      v30 = v67;
      a7 = v66;
      HoverCommon::difference1Dvector(v129, v88, v86, (&v128 - v82), v89);
      v90 = v87;
      v9 = v85;
      v22 = v84;
      HoverCommon::difference1Dvector(v30, v72, *(a1 + 80), v90, v91);
      v137 = 0;
      v138 = 0;
      PadHoverRefinementStep::getEdgeScalingFactorDerivative(v36, v37, v92, 0, v9, *(a1 + 104), v84, &v138 + 1, &v138);
      v94.n128_f32[0] = PadHoverRefinementStep::getEdgeScalingFactorDerivative(v35, v37, v93, 1, v9, *(a1 + 104), v84, &v137 + 1, &v137);
      v95 = *(a1 + 81);
      v96 = *(a1 + 80);
      v97 = MEMORY[0x28223BE20](v94);
      v99 = (&v128 - v98);
      v97.n128_f32[0] = v35;
      *&v100 = v36;
      *&v101 = v37;
      *&v102 = ScalingFactor;
      *&v103 = v77;
      HoverModelSelector::evalJacobian(v97, v100, v101, 1.0, v102, v103, *(&v138 + 1), *&v138, *(a1 + 96), v9, &v141 + 4, &v141, &v140 + 4, v134, v135, &v140, &v139 + 4, &v139, v133, v132, v104, v105, v131, v130, *(&v137 + 1), *&v137, *(a1 + 432), *(a1 + 440), (&v128 - v98));
      PadHoverRefinementStep::calculateGaussNewtonStep(a1, v99, v83, 3, (*(a1 + 80) + *(a1 + 81)), v34 == *(a1 + 512) - 1, v144, &v142, v106);
      *v66 = vsub_f32(*v66, v142);
      v66[1].f32[0] = v66[1].f32[0] - v143;
      v107 = *(a1 + 520);
      v108 = -v107;
      LOBYTE(v109) = *(a1 + 81);
      v110 = v107 + v109;
      v111 = *(a1 + 524);
      v112 = -v111;
      LOBYTE(v113) = *(a1 + 80);
      v114 = v111 + v113;
      v115 = *(a1 + 528);
      v116 = *(a1 + 532);
      HoverCommon::clipParams(v66, v117, v108, v110);
      HoverCommon::clipParams(v66 + 1, v118, v112, v114);
      HoverCommon::clipParams(&v66[1], v119, v115, v116);
      ++v34;
    }

    while (v34 < *(a1 + 512));
  }

  PadHoverRefinementStep::calculateResiduals(a1, a7, v9, v22, v129, v30, v33);
  v120 = *(a1 + 496);
  v121 = **(a1 + 504) * 0.5;
  v122 = v121 * v144[4];
  v123 = v128;
  *v128 = v144[0] * v121;
  v123->f32[1] = v122;
  v123[1].f32[0] = v121 * v144[8];
  v124 = *(v120 + 4);
  *a7 = vmul_f32(*a7, v124);
  *v123 = vmul_f32(v124, vmul_f32(v124, *v123));
  v125 = *MEMORY[0x277D85DE8];
  return 1;
}

float PadHoverRefinementStep::getEdgeScalingFactorDerivative(float a1, float a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, float *a8, float *a9)
{
  v35 = a2;
  v36 = a1;
  v15 = *(a6 + 954);
  v16 = (*(*(a6 + 464) + 8))();
  v17 = (*(*(a6 + 520) + 8))();
  v18 = (*(*(a6 + 576) + 8))();
  v20 = v18;
  if (!a4)
  {
    v16 = v17;
  }

  v21 = 952;
  if (a4)
  {
    v21 = 953;
  }

  v22 = *(a6 + v21);
  HoverCommon::clipParams(&v35, v19, *v18, v18[v15 - 1]);
  IndexOfLargestLowerElement = HoverCommon::findIndexOfLargestLowerElement(v20, v35, v15);
  v24 = *(v20 + IndexOfLargestLowerElement);
  v25 = *(v20 + (IndexOfLargestLowerElement + 1));
  HoverCommon::clipParams(&v36, v26, *v16, v16[v22 - 1]);
  v27 = HoverCommon::findIndexOfLargestLowerElement(v16, v36, v22);
  v28 = v16[v27];
  v29 = v16[(v27 + 1)];
  ScalingFactor = HoverCommon::getScalingFactor(a4, v28, v35, a5, a6, a7);
  v31 = HoverCommon::getScalingFactor(a4, v29, v35, a5, a6, a7);
  v32 = HoverCommon::getScalingFactor(a4, v36, v24, a5, a6, a7);
  v33 = HoverCommon::getScalingFactor(a4, v36, v25, a5, a6, a7);
  *a8 = (v31 - ScalingFactor) / (v29 - v28);
  result = (v33 - v32) / (v25 - v24);
  *a9 = result;
  return result;
}

PadHoverRefinementStep *PadHoverRefinementStep::calculateGaussNewtonStep(PadHoverRefinementStep *this, float *a2, float *a3, const float *a4, const float *a5, int a6, float *a7, float *a8, __n128 a9)
{
  v48 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a9);
  v18 = (&v38 - v17);
  v21 = HoverCommon::cmptUpperTriMatrixAmultAt(v19, a4, v20, __ap, v20);
  v22.n128_u32[0] = *(this + 134);
  if (v22.n128_f32[0] != 0.0)
  {
    v43 = a2;
    if (a6)
    {
      v22 = *__ap;
      *v44 = *__ap;
      v45 = v47;
    }

    v21 = MEMORY[0x28223BE20](v22);
    v25 = &v38 - v23;
    if (a4)
    {
      v38 = v24;
      v39 = a3;
      v40 = a8;
      v41 = a6;
      v42 = a7;
      v26 = v43;
      v27 = (&v38 - v23);
      v28 = a4;
      do
      {
        v29 = *(this + 134);
        v30 = HoverCommon::calculateNormSquared(v26, a5);
        *v27++ = v29 * *&v30;
        v26 = (v26 + 4 * a5);
        --v28;
      }

      while (v28);
      v31 = 0;
      v32 = 0;
      a7 = v42;
      a6 = v41;
      a3 = v39;
      a8 = v40;
      do
      {
        __ap[v32] = *&v25[4 * v31] + __ap[v32];
        v32 = v32 + a4 - v31++;
      }

      while (a4 != v31);
    }

    a2 = v43;
  }

  PadHoverRefinementStep::calculateInverseOfJJt(v21, __ap, a4, a7);
  HoverCommon::multiplyMatrixByVector(a2, a3, a4, a5, v18, v33);
  result = HoverCommon::multiplyMatrixByVector(a7, v18, a4, a4, a8, v34);
  if (*(this + 134) != 0.0 && a6 != 0)
  {
    result = PadHoverRefinementStep::calculateInverseOfJJt(result, v44, a4, a7);
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void PadHoverRefinementStep::calculateResiduals(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, HoverCommon *a5, HoverCommon *a6, __n128 a7)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v13 = 4 * (*(a1 + 80) + *(a1 + 81));
  MEMORY[0x28223BE20](a7);
  v15 = (v34 - ((v14 + 15) & 0xFF0));
  v17 = &v15[v16];
  v19 = MEMORY[0x28223BE20](v18);
  v22 = (v34 + 4 * v21 - v20);
  PadHoverRefinementStep::calculateResidualPerAxis(v19, v23, v24, 0, a4, a5, v15, (v34 - v20), v25);
  PadHoverRefinementStep::calculateResidualPerAxis(a1, a2, a3, 1, a4, a6, v17, v22, v26);
  v27 = HoverCommon::calculateRootMeanSquare(v15, *(a1 + 81));
  v28 = HoverCommon::calculateRootMeanSquare(v17, *(a1 + 80));
  v29 = HoverCommon::calculateRootMeanSquare(a5, *(a1 + 81));
  v30 = v28 / (HoverCommon::calculateRootMeanSquare(a6, *(a1 + 80)) + 0.68);
  v31 = 552;
  if (!a3)
  {
    v31 = 544;
  }

  v32 = *(a1 + v31);
  *(v32 + 28) = v27 / (v29 + 0.68);
  *(v32 + 32) = v30;
  *(v32 + 36) = 0;
  v33 = *MEMORY[0x277D85DE8];
}

int *PadHoverRefinementStep::calculateInverseOfJJt(PadHoverRefinementStep *this, __CLPK_real *__ap, const float *a3, float *a4)
{
  __info = 0;
  __n = a3;
  __uplo = 76;
  spptrf_(&__uplo, &__n, __ap, &__info);
  spptri_(&__uplo, &__n, __ap, &__info);
  return HoverCommon::createFullMatFromUpperTriMat(__ap, a3, a4, v7);
}

float PadHoverRefinementStep::calculateRegularizationScalePerAxis(PadHoverRefinementStep *this, float a2, int a3)
{
  if (((a3 - 1) - a2) <= a2)
  {
    a2 = (a3 - 1) - a2;
  }

  v3 = *(this + 61);
  if (*(v3 + 36) >= a2)
  {
    v4 = 32;
    if (*(v3 + 38) < a2)
    {
      v4 = 28;
    }
  }

  else
  {
    v4 = 24;
  }

  return *(v3 + v4);
}

void PadHoverRefinementStep::calculateResidualPerAxis(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, int a5, HoverCommon *a6, float *a7, float *a8, __n128 a9)
{
  v36[1] = v36;
  v37 = a7;
  v39[1] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = a2[1];
  if (a4)
  {
    a9.n128_u32[0] = a2[1];
  }

  else
  {
    a9.n128_u32[0] = *a2;
  }

  if (a4)
  {
    v17 = *a2;
  }

  else
  {
    v17 = *(a2 + 1);
  }

  v18 = *(a2 + 2);
  v19 = 80;
  if (!a4)
  {
    v19 = 81;
  }

  v20 = *(a1 + v19);
  v21 = 440;
  if (!a4)
  {
    v21 = 432;
  }

  v22 = *(a1 + v21);
  v39[0] = 0;
  v38 = 0;
  MEMORY[0x28223BE20](a9);
  v23 = (4 * v20 + 15) & 0x7F0;
  v25 = MEMORY[0x28223BE20](v24);
  HoverModelSelector::evalEstimatedProfile(*(v25 + 96), v27, v26, v20, a8, v39 + 1, v39, &v38, v29, v18, v28, (v36 - v23));
  MEMORY[0x28223BE20](v30);
  HoverCommon::project1Dvector(a8, v20, (v36 - v23), v22, v31);
  ScalingFactor = HoverCommon::getScalingFactor(a4, v17, v18, a3, *(a1 + 104), a5);
  HoverCommon::scale1Dvector((v36 - v23), v20, (v36 - v23), v33, ScalingFactor);
  HoverCommon::difference1Dvector(a6, (v36 - v23), v20, v37, v34);
  v35 = *MEMORY[0x277D85DE8];
}

BOOL PadCalBlobHandler<MTDOCalParams>::checkCal(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 4);
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  do
  {
    v8 = *(a2 + v2);
    v9 = vmovl_u8(*v8.i8);
    v10 = vmovl_high_u8(v8);
    v7 = vaddw_high_u16(v7, v10);
    v6 = vaddw_u16(v6, *v10.i8);
    v5 = vaddw_high_u16(v5, v9);
    v4 = vaddw_u16(v4, *v9.i8);
    v2 += 16;
  }

  while (v2 != 128);
  v11 = vaddvq_s32(vaddq_s32(vaddq_s32(v4, v6), vaddq_s32(v5, v7)));
  v12 = v3 == 0xFFFF || v3 == 512;
  v13 = !v12;
  if (v12)
  {
    v14 = 4;
  }

  else
  {
    v14 = 5;
  }

  if (*a2 == -1164730384)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v11)
  {
    v15 |= 8u;
  }

  **(a1 + 32) = v15;
  return v15 != 0;
}

BOOL PadCalBlobHandler<AlgsFireflyCalParams>::checkCal(uint64_t a1, char *a2)
{
  v2 = 0;
  v3 = *(a2 + 2);
  v4 = *a2;
  v5 = 3240;
  do
  {
    --v5;
    v6 = *a2++;
    v2 += v6;
  }

  while (v5);
  v7 = v3 == 0xFFFF || v3 == 256;
  v8 = !v7;
  if (v7)
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  if (v4 == -257998522)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v2)
  {
    v11 = v10 | 8;
  }

  else
  {
    v11 = v10;
  }

  **(a1 + 32) = v11;
  return v11 != 0;
}

BOOL PadCalBlobHandler<FireflyCalParams700>::checkCal(uint64_t a1, char *a2)
{
  v2 = 0;
  v3 = *(a2 + 2);
  v4 = *a2;
  v5 = 7492;
  do
  {
    --v5;
    v6 = *a2++;
    v2 += v6;
  }

  while (v5);
  v7 = v3 == 0xFFFF || v3 == 1792;
  v8 = !v7;
  if (v7)
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  if (v4 == -257977179)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v2)
  {
    v11 = v10 | 8;
  }

  else
  {
    v11 = v10;
  }

  **(a1 + 32) = v11;
  return v11 != 0;
}

BOOL PadCalBlobHandler<P100CalParams400>::checkCal(uint64_t a1, char *a2)
{
  v2 = 0;
  v3 = *(a2 + 2);
  v4 = *a2;
  v5 = 1848;
  do
  {
    --v5;
    v6 = *a2++;
    v2 += v6;
  }

  while (v5);
  v7 = v3 == 0xFFFF || v3 == 1024;
  v8 = !v7;
  if (v7)
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  if (v4 == -257976691)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v2)
  {
    v11 = v10 | 8;
  }

  else
  {
    v11 = v10;
  }

  **(a1 + 32) = v11;
  return v11 != 0;
}

uint64_t PadHoverOneLiraFilter::PadHoverOneLiraFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 80) = a2;
  PadHoverSgFilter::PadHoverSgFilter(a1 + 88);
  *(a1 + 440) = a3;
  *(a1 + 448) = a4;
  *(a1 + 456) = a5;
  *(a1 + 464) = a6;
  v16 = vrev64q_s32(*a2);
  v16.i64[0] = *a2;
  *(a1 + 472) = a7;
  *(a1 + 480) = a8;
  *a1 = v16;
  *(a1 + 16) = *(a2 + 16);
  v17 = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 36) = v17;
  v18 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v18;
  v19 = *(a2 + 60);
  *(a1 + 32) = *(a2 + 68);
  *(a1 + 24) = v19;
  *(a1 + 60) = *(a2 + 28);
  *(a1 + 64) = 3212836864;
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  PadHoverSgFilter::resetPathFiltering((a1 + 88));
  return a1;
}

void sub_265403A30(_Unwind_Exception *a1)
{
  v1[43] = &unk_2876F3810;
  v1[34] = &unk_2876F3810;
  v1[22] = &unk_2876F3810;
  _Unwind_Resume(a1);
}

void *PadHoverOneLiraFilter::reset(PadHoverOneLiraFilter *this)
{
  *(this + 8) = 3212836864;
  *(this + 18) = 0;
  *(this + 76) = 1;
  return PadHoverSgFilter::resetPathFiltering(this + 11);
}

void PadHoverOneLiraFilter::newtonRaphson(PadHoverOneLiraFilter *this, float *a2, int a3, float a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    if (((a3 + 1) & 0xFFFE) != 0)
    {
      v6 = (a3 + 1);
    }

    else
    {
      v6 = 1;
    }

    if ((a3 + 1) <= 2u)
    {
      v7 = 2;
    }

    else
    {
      v7 = (a3 + 1);
    }

    v8 = INFINITY;
    do
    {
      v10 = 1.0;
      v11 = 0.0;
      v12 = &a2[a3];
      v13 = v6;
      do
      {
        v14 = *v12--;
        v11 = v11 + (v14 * v10);
        v10 = a4 * v10;
        --v13;
      }

      while (v13);
      if (a3)
      {
        v15 = 1.0;
        v16 = 0.0;
        v17 = &a2[a3 - 1];
        v18 = 1;
        do
        {
          v19 = *v17--;
          v16 = v16 + ((v19 * v18) * v15);
          v15 = a4 * v15;
          ++v18;
        }

        while (v7 != v18);
      }

      else
      {
        v16 = 0.0;
      }

      a4 = a4 - (v11 / v16);
      if (fabsf(v11) < fabsf(v8))
      {
        v8 = v11;
      }

      ++v5;
    }

    while (v5 < a5);
  }
}

void PadHoverOneLiraFilter::calcNextAlpha(PadHoverOneLiraFilter *this, float a2, float a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = PadHoverOneLiraFilter::determineLambdaCurrentFrame(this);
  v9 = (((1.0 - v6) * a2) * a2) / ((v6 * a3) + (((1.0 - v6) * a2) * a2));
  v10 = 1.0;
  v11 = vmul_n_f32(0x41000000C0A00000, v9);
  v12 = v9 * -4.0;
  PadHoverOneLiraFilter::newtonRaphson(v7, &v10, 3, 0.0, *(this + 30));
  v8 = *MEMORY[0x277D85DE8];
}

float PadHoverOneLiraFilter::determineLambdaCurrentFrame(PadHoverOneLiraFilter *this)
{
  v1 = *(this + 57);
  v2 = *(this + 59);
  v3 = *v1 < (*(this + 12) + v2[4]) || *v1 > (*(this + 9) + v2[6]);
  v4 = v1[1];
  if (v4 < (*(this + 13) + v2[5]) || v4 > (*(this + 10) + v2[7]))
  {
    v3 = 1;
  }

  v5 = v1[2];
  v6 = *(this + 4);
  if (v5 <= v6)
  {
    result = *this;
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = *(this + 2);
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  if (*(this + 116) <= 1u)
  {
    if (v5 <= v6)
    {
      result = *(this + 1);
    }

    else
    {
      result = *(this + 3);
    }
  }

LABEL_16:
  if (**(this + 60) == 1)
  {
    return *(this + 5);
  }

  return result;
}

void PadHoverOneLiraFilter::run(PadHoverOneLiraFilter *this, float a2, float *a3, float *a4, float a5, unsigned int a6, float a7)
{
  v12 = a2;
  v14 = PadHoverSgFilter::run((this + 88), a2, a6, a7);
  *a4 = *&v14;
  if (a6)
  {
    *(this + 17) = *(this + 17) + ((a6 + a7) * *&v14);
  }

  if (*(this + 76) == 1)
  {
    *(this + 76) = 0;
  }

  else
  {
    PadHoverOneLiraFilter::calcNextAlpha(this, fabsf(*a4), a5);
    v12 = ((1.0 - v15) * *(this + 17)) + (v15 * v12);
  }

  *(this + 17) = v12;
  *a3 = v12;
}

double PadHoverPathTrack::PadHoverPathTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4 + 28;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7 + 28;
  *(a1 + 48) = a8;
  *(a1 + 64) = a9;
  *(a1 + 72) = a10 + 28;
  *(a1 + 82) = 0;
  *&result = 5000;
  *(a1 + 56) = 5000;
  *(a1 + 80) = 3;
  return result;
}

uint64_t PadHoverPathTrack::updateTrajectory(PadHoverPathTrack *this)
{
  PadHoverPathTrack::updateHoverInOutOfRangeRegion(this);
  result = PadHoverPathTrack::detectHighRingEnergy(this);
  v3 = *(this + 9);
  v4 = *(this + 1);
  v5 = *(v3 + 16);
  v6 = *v4 > *(v3 + 12);
  if (v4[1] > v5)
  {
    v6 = 1;
  }

  *(this + 82) = v6;
  if ((*(this + 81) & 1) == 0 && *(this + 80) != 1 && !v6)
  {
    v8 = *(this + 15) + 1;
    *(this + 14) = 0;
    *(this + 15) = v8;
    return result;
  }

  result = PadHoverPathTrack::determineBreakTouchStatus(this);
  if (!result)
  {
    v7 = *(this + 15);
    ++*(this + 14);
    if (!v7)
    {
      return result;
    }

    goto LABEL_9;
  }

  *(this + 14) = 0;
  if (*(this + 15))
  {
LABEL_9:
    *(this + 15) = 0;
  }

  return result;
}

uint64_t PadHoverPathTrack::updateHoverInOutOfRangeRegion(uint64_t this)
{
  v1 = *(this + 40);
  v3 = v1[2];
  v2 = v1[3];
  v4 = *this;
  v5 = **this;
  v6 = *(this + 64);
  v7 = v6[4];
  v9 = v5 <= (v3 + v7) || v5 >= (v6[6] - v3) || (v8 = v4[1], v8 <= (v3 + v6[5])) || v8 >= (v6[7] - v3);
  v11 = v5 < (v2 + v7) || v5 > (v6[6] - v2) || (v10 = v4[1], v10 < (v2 + v6[5])) || v10 > (v6[7] - v2);
  v12 = v4[2];
  if (v12 >= *v1 || v9)
  {
    if (v12 > v1[1] || v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    *(this + 80) = v13;
  }

  else
  {
    *(this + 80) = 0;
  }

  return this;
}

uint64_t PadHoverPathTrack::detectHighRingEnergy(uint64_t this)
{
  v1 = *(this + 72);
  v2 = *(this + 16);
  v3 = v2[2];
  v4 = v1[1];
  v5 = v1[2];
  v6 = v3 <= v4 || v3 <= (v5 * *v2);
  v10 = (!v6 || ((v7 = v2[3], v8 = v5 * v2[1], v7 > v4) ? (v9 = v7 <= v8) : (v9 = 1), !v9)) && *(*this + 8) > *v1;
  *(this + 81) = v10;
  return this;
}

uint64_t PadHoverPathTrack::determineBreakTouchStatus(PadHoverPathTrack *this)
{
  v1 = *(this + 3);
  if (*(v1 + 56))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = *(v1 + 48);
    do
    {
      v7 = 6 - v2;
      v8 = v6 - (6 - v2);
      v9 = (v1 + 36 + v6 + v2);
      if (v6 >= 6 - v2)
      {
        v9 = (v1 + 36 + v8);
      }

      v10 = *v9;
      v11 = v10 > 7;
      v12 = (1 << v10) & 0xA1;
      if (!v11 && v12 != 0)
      {
        *v9 = 7;
        v1 = *(this + 3);
        v6 = *(v1 + 48);
        v8 = v6 - v7;
        v5 = 1;
      }

      v14 = (v1 + 36 + v8);
      v15 = (v1 + 36 + v6 + v2);
      if (v6 >= v7)
      {
        v15 = v14;
      }

      v4 |= *v15 - 3 < 2;
      v2 = ++v3;
    }

    while (*(v1 + 56) > v3);
    v16 = v5 & v4;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void MtdoCalBlobHandler::MtdoCalBlobHandler(AlgDataNode *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AlgDataNode::AlgDataNode(a1, a2, 0);
  *(v8 + 32) = a5;
  *(v8 + 40) = a3;
  *(v8 + 16) = 1;
  *(v8 + 24) = 128;
  *v8 = &unk_2876F30B8;
  *(v8 + 48) = a4;
}

uint64_t MtdoCalBlobHandler::injectBuffer(MtdoCalBlobHandler *this, unsigned __int8 *a2)
{
  result = (*(*this + 40))(this);
  if (!**(this + 4))
  {
    result = MtdoCalBlobHandler::loadMtdoOffsets(this, a2);
    *(*(this + 6) + 28) = 1;
  }

  return result;
}

uint64_t MtdoCalBlobHandler::loadMtdoOffsets(uint64_t a1, _WORD *a2)
{
  result = MtdoCalBlobHandler::loadCalFiducialOffset();
  v5 = *(a1 + 40);
  v5[14] = a2[38];
  v5[15] = a2[40];
  v5[16] = a2[44];
  v5[17] = a2[42];
  v5[18] = a2[39];
  v5[19] = a2[41];
  v5[20] = a2[45];
  v5[21] = a2[43];
  return result;
}

uint64_t PadFireflyShapeNoiseProjection::PadFireflyShapeNoiseProjection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  *(a1 + 48) = a11;
  AlgDataNode::AlgDataNode((a1 + 56), 0xF3D38C6D071DC339, 0);
  *(a1 + 88) = 769;
  *(a1 + 92) = 0;
  *(a1 + 94) = 0;
  *(a1 + 72) = 39424;
  *(a1 + 80) = 0x50020000000CLL;
  *(a1 + 56) = &unk_2876F3110;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = *(a3 + 10);
  *(a1 + 117) = *(a3 + 13);
  v13 = *(a1 + 8);
  AlgDataNode::AlgDataNode((a1 + 120), 0x75FFD225E3E4F609, 0);
  *(a1 + 156) = 0;
  *(a1 + 148) = 0;
  *(a1 + 136) = 20708;
  *(a1 + 144) = 16;
  *(a1 + 120) = &unk_2876F3178;
  *(a1 + 168) = v13;
  v14 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 176), 0x6D90D40DB261FA17, *(a3 + 13));
  *(a1 + 176) = &unk_2876F0E30;
  *(a1 + 208) = &unk_2876F0E78;
  *(a1 + 232) = v14;
  v15 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 240), 0x6D90D40DB261FA1FLL, *(a3 + 13));
  *(a1 + 240) = &unk_2876F0E30;
  *(a1 + 272) = &unk_2876F0E78;
  *(a1 + 296) = v15;
  v16 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 304), 0x6D90D40DB261FA38, *(a3 + 10));
  *(a1 + 304) = &unk_2876F0E30;
  *(a1 + 336) = &unk_2876F0E78;
  *(a1 + 360) = v16;
  v17 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 368), 0x6D90D40DB261FA40, *(a3 + 10));
  *(a1 + 368) = &unk_2876F0E30;
  *(a1 + 400) = &unk_2876F0E78;
  *(a1 + 424) = v17;
  v18 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 432), 0x1FAB55C3F9F610FALL, *(a3 + 13));
  *(a1 + 432) = &unk_2876F0E30;
  *(a1 + 464) = &unk_2876F0E78;
  *(a1 + 488) = v18;
  v19 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 496), 0x1FAB55C3F9F61102, *(a3 + 13));
  *(a1 + 496) = &unk_2876F0E30;
  *(a1 + 528) = &unk_2876F0E78;
  *(a1 + 552) = v19;
  v20 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 560), 0x1FAB55C3F9F6111BLL, *(a3 + 10));
  *(a1 + 560) = &unk_2876F0E30;
  *(a1 + 592) = &unk_2876F0E78;
  *(a1 + 616) = v20;
  v21 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 624), 0x1FAB55C3F9F61123, *(a3 + 10));
  *(a1 + 624) = &unk_2876F0E30;
  *(a1 + 656) = &unk_2876F0E78;
  *(a1 + 680) = v21;
  v22 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 688), 0xB7D7D66ED2CF85D9, *(a3 + 13));
  *(a1 + 688) = &unk_2876F0E30;
  *(a1 + 720) = &unk_2876F0E78;
  *(a1 + 744) = v22;
  v23 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 752), 0xB7D7D66ED2CF85E1, *(a3 + 13));
  *(a1 + 752) = &unk_2876F0E30;
  *(a1 + 784) = &unk_2876F0E78;
  *(a1 + 808) = v23;
  v24 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 816), 0xB7D7D66ED2CF85FALL, *(a3 + 10));
  *(a1 + 816) = &unk_2876F0E30;
  *(a1 + 848) = &unk_2876F0E78;
  *(a1 + 872) = v24;
  v25 = *(a1 + 8);
  SA1DArrayDynamicSize<float>::SA1DArrayDynamicSize((a1 + 880), 0xB7D7D66ED2CF8602, *(a3 + 10));
  *(a1 + 880) = &unk_2876F0E30;
  *(a1 + 912) = &unk_2876F0E78;
  *(a1 + 936) = v25;
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 944), 0xB7D88EA1AFBC7A93, *(a3 + 13), *(a3 + 13), 0, 0);
  SA2DArrayDynamicSize<float>::SA2DArrayDynamicSize((a1 + 1008), 0xB7D88EA1AFBC7A94, *(a3 + 10), *(a3 + 10), 0, 0);
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((a1 + 1072), 0x6C76BBBFE12AAB9, 3, 2, *(a3 + 13));
  SA3DArrayDynamicSize<float>::SA3DArrayDynamicSize((a1 + 1144), 0x6C76BBC0067D35ALL, 3, 2, *(a3 + 10));
  *(a1 + 1216) = a9;
  *(a1 + 1224) = a10;
  return a1;
}

{
  return PadFireflyShapeNoiseProjection::PadFireflyShapeNoiseProjection(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_2654049B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  SA3DArrayDynamicSize<float>::~SA3DArrayDynamicSize(v21 + 134);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v21 + 126);
  SA2DArrayDynamicSize<float>::~SA2DArrayDynamicSize(v21 + 118);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v22);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v20);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v19);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v18);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v17);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v16);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(v23);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a10);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a11);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a12);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a13);
  SA1DArrayDynamicSize<float>::~SA1DArrayDynamicSize(a14);
  *a15 = &unk_2876F3810;
  *a16 = &unk_2876F3810;
  _Unwind_Resume(a1);
}

void PadFireflyShapeNoiseProjection::runFireflySignalProjection(uint64_t a1, int a2)
{
  PadFireflyShapeNoiseProjection::updateFreqHoppingState(a1);
  PadFireflyShapeNoiseProjection::calculateProjectionMatrix(a1);
  PadFireflyShapeNoiseProjection::scaleRawFireflySignal(a1);
  PadFireflyShapeNoiseProjection::projectSignal(a1);
  *(a1 + 112) = a2;
}

void *PadFireflyShapeNoiseProjection::updateFreqHoppingState(void *this)
{
  v1 = *this;
  if (*(*this + 36) < 2u)
  {
    *(this[6] + 52) = 0;
  }

  else
  {
    if (*(v1 + 54))
    {
      *(this[6] + 52) = *(v1 + 54);
      v2 = this[13];
    }

    else
    {
      v2 = this[13];
      if (v2)
      {
        v3 = 0;
        v4 = 0;
        v5 = this[12];
        while (1)
        {
          v6 = v5 >= 3 - v3;
          v7 = this + v5 - (3 - v3) + 92;
          v8 = this + v5 + v3 + 92;
          if (v6)
          {
            v8 = v7;
          }

          v9 = *v8;
          if (v9)
          {
            break;
          }

          v3 = ++v4;
          if (v2 <= v4)
          {
            goto LABEL_12;
          }
        }

        *(this[6] + 52) = v9;
      }

      else
      {
LABEL_12:
        *(this[6] + 52) = 0;
      }
    }

    v10 = this[12];
    if (v2 >= 3)
    {
      v10 = (v10 + 1) % 3;
      this[12] = v10;
      --v2;
    }

    this[13] = v2 + 1;
    v11 = *(v1 + 54);
    v6 = v10 >= 3 - v2;
    v12 = this + v10 - (3 - v2) + 92;
    v13 = this + v10 + v2 + 92;
    if (v6)
    {
      v13 = v12;
    }

    *v13 = v11;
  }

  return this;
}

uint64_t PadFireflyShapeNoiseProjection::calculateProjectionMatrix(PadFireflyShapeNoiseProjection *this)
{
  v2 = (*(*(*(this + 4) + 32) + 8))();
  v3 = (*(*(*(this + 152) + 32) + 8))();
  v4 = (*(*(this + 122) + 8))();
  v5 = *(this + 117);
  HoverCommon::applyTsThreshold(v2, v3, v5, 0);
  HoverCommon::calculateProjectionMatrixForDtnTs(0, v3, v5, v4, v6, v7);
  v8 = (*(*(*(this + 5) + 32) + 8))();
  v9 = (*(*(*(this + 153) + 32) + 8))();
  v10 = (*(*(this + 130) + 8))();
  v11 = *(this + 116);
  HoverCommon::applyTsThreshold(v8, v9, v11, 0);

  return HoverCommon::calculateProjectionMatrixForDtnTs(1, v9, v11, v10, v12, v13);
}

uint64_t PadFireflyShapeNoiseProjection::scaleRawFireflySignal(PadFireflyShapeNoiseProjection *this)
{
  SA1DArrayBase<float>::copyArrayStaticCast<short>(this + 1104, *(this + 2) + 32);
  SA1DArrayBase<float>::copyArrayStaticCast<short>(this + 1176, *(this + 3) + 32);
  SA1DArrayBase<float>::scaleElementwise(this + 1104, this + 1104, 0.5);

  return SA1DArrayBase<float>::scaleElementwise(this + 1176, this + 1176, 0.5);
}

void PadFireflyShapeNoiseProjection::projectSignal(PadFireflyShapeNoiseProjection *this)
{
  PadFireflyShapeNoiseProjection::projectSignalPerDSP(this, this + 176, this + 240, this + 304, this + 368, 0);
  PadFireflyShapeNoiseProjection::projectSignalPerDSP(this, this + 432, this + 496, this + 560, this + 624, 1);
  if (*(*(this + 6) + 52))
  {

    PadFireflyShapeNoiseProjection::projectSignalPerDSP(this, this + 688, this + 752, this + 816, this + 880, 2);
  }
}

float SA1DArrayBase<float>::copyArrayStaticCast<short>(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 8))(a1);
  v4 = (*(*a2 + 8))(a2);
  v5 = (**a2)(a2);
  result = *v4;
  *v3 = result;
  if (v5 >= 2)
  {
    v7 = v4 + 1;
    v8 = v3 + 1;
    v9 = v5 - 1;
    do
    {
      v10 = *v7++;
      result = v10;
      *v8++ = v10;
      --v9;
    }

    while (v9);
  }

  return result;
}

void PadFireflyShapeNoiseProjection::projectSignalPerDSP(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a1 + 1104;
  v13 = (*(*(a1 + 1104) + 8))(a1 + 1104);
  (*(*(a1 + 1104) + 32))(v12);
  v14 = (*(*(a1 + 1104) + 24))(v12) * a6;
  v15 = (v13 + 4 * v14 * (*(*(a1 + 1104) + 32))(v12));
  v16 = *(a1 + 117);
  v17 = (*(*(a2 + 32) + 8))(a2 + 32);
  v18 = (*(*(a1 + 976) + 8))(a1 + 976);
  HoverCommon::project1Dvector(v15, v16, v17, v18, v19);
  v20 = (*(*(a1 + 1104) + 8))(v12);
  LODWORD(v16) = (*(*(a1 + 1104) + 32))(v12);
  LODWORD(v17) = (*(*(a1 + 1104) + 24))(v12) * a6;
  v21 = (v20 + 4 * (v16 + v17 * (*(*(a1 + 1104) + 32))(v12)));
  v22 = *(a1 + 117);
  v23 = (*(*(a3 + 32) + 8))(a3 + 32);
  v24 = (*(*(a1 + 976) + 8))(a1 + 976);
  HoverCommon::project1Dvector(v21, v22, v23, v24, v25);
  v26 = (*(*(a1 + 1176) + 8))(a1 + 1176);
  (*(*(a1 + 1176) + 32))(a1 + 1176);
  LODWORD(a2) = (*(*(a1 + 1176) + 24))(a1 + 1176) * a6;
  v27 = (v26 + 4 * a2 * (*(*(a1 + 1176) + 32))(a1 + 1176));
  v28 = *(a1 + 116);
  v29 = (*(*(a4 + 32) + 8))(a4 + 32);
  v30 = (*(*(a1 + 1040) + 8))(a1 + 1040);
  HoverCommon::project1Dvector(v27, v28, v29, v30, v31);
  v32 = (*(*(a1 + 1176) + 8))(a1 + 1176);
  LODWORD(v28) = (*(*(a1 + 1176) + 32))(a1 + 1176);
  v33 = (*(*(a1 + 1176) + 24))(a1 + 1176) * a6;
  v34 = (v32 + 4 * (v28 + v33 * (*(*(a1 + 1176) + 32))(a1 + 1176)));
  v35 = *(a1 + 116);
  v36 = (*(*(a5 + 32) + 8))(a5 + 32);
  v37 = (*(*(a1 + 1040) + 8))(a1 + 1040);

  HoverCommon::project1Dvector(v34, v35, v36, v37, v38);
}

void PadFireflyShapeNoiseProjection::calculateSignalEnergy(PadFireflyShapeNoiseProjection *this)
{
  PadFireflyShapeNoiseProjection::calculateSignalEnergyPerDSP(this, 0);
  PadFireflyShapeNoiseProjection::calculateSignalEnergyPerDSP(this, 1);
  v2 = *(this + 6);
  if (*(v2 + 52))
  {

    PadFireflyShapeNoiseProjection::calculateSignalEnergyPerDSP(this, 2);
  }

  else
  {
    *(v2 + 44) = 0;
    *(v2 + 48) = 0;
  }
}

void PadFireflyShapeNoiseProjection::calculateSignalEnergyPerDSP(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 720;
    if (a2 == 1)
    {
      v3 = 464;
      v4 = 528;
    }

    else
    {
      v4 = 784;
    }

    if (a2 == 1)
    {
      v5 = 36;
    }

    else
    {
      v5 = 44;
    }

    if (a2 == 1)
    {
      v6 = 592;
    }

    else
    {
      v6 = 848;
    }

    if (a2 == 1)
    {
      v7 = 656;
    }

    else
    {
      v7 = 912;
    }

    if (a2 == 1)
    {
      v8 = 40;
    }

    else
    {
      v8 = 48;
    }
  }

  else
  {
    v8 = 32;
    v7 = 400;
    v6 = 336;
    v5 = 28;
    v4 = 272;
    v3 = 208;
  }

  v9 = (*(*(a1 + v3) + 8))();
  v10 = (*(*(a1 + v4) + 8))();
  v11 = HoverCommon::calculateComplexNorm(v9, v10, *(a1 + 117));
  *(*(a1 + 48) + v5) = LODWORD(v11);
  v12 = (*(*(a1 + v6) + 8))();
  v13 = (*(*(a1 + v7) + 8))();
  v14 = HoverCommon::calculateComplexNorm(v12, v13, *(a1 + 116));
  *(*(a1 + 48) + v8) = LODWORD(v14);
}

void *PadFireflyShapeNoiseProjection::switchToListenSignal(PadFireflyShapeNoiseProjection *this)
{
  v2 = *(*(this + 6) + 52);
  v3 = (*(*(this + 90) + 8))();
  if (v2 == 1)
  {
    v4 = (*(*(this + 26) + 8))(this + 208);
    v5 = (**(this + 26))(this + 208);
    if (v4 != v3)
    {
      memcpy(v4, v3, 4 * v5);
    }

    v6 = (*(*(this + 98) + 8))();
    v7 = (*(*(this + 34) + 8))(this + 272);
    v8 = (**(this + 34))(this + 272);
    if (v7 != v6)
    {
      memcpy(v7, v6, 4 * v8);
    }

    v9 = (*(*(this + 106) + 8))();
    v10 = (*(*(this + 42) + 8))(this + 336);
    v11 = (**(this + 42))(this + 336);
    if (v10 != v9)
    {
      memcpy(v10, v9, 4 * v11);
    }

    v12 = (*(*(this + 114) + 8))();
    v13 = (*(*(this + 50) + 8))(this + 400);
    result = (**(this + 50))(this + 400);
    if (v13 != v12)
    {
      result = memcpy(v13, v12, 4 * result);
    }

    v15 = 46;
    v16 = 45;
  }

  else
  {
    v17 = (*(*(this + 58) + 8))(this + 464);
    v18 = (**(this + 58))(this + 464);
    if (v17 != v3)
    {
      memcpy(v17, v3, 4 * v18);
    }

    v19 = (*(*(this + 98) + 8))();
    v20 = (*(*(this + 66) + 8))(this + 528);
    v21 = (**(this + 66))(this + 528);
    if (v20 != v19)
    {
      memcpy(v20, v19, 4 * v21);
    }

    v22 = (*(*(this + 106) + 8))();
    v23 = (*(*(this + 74) + 8))(this + 592);
    v24 = (**(this + 74))(this + 592);
    if (v23 != v22)
    {
      memcpy(v23, v22, 4 * v24);
    }

    v25 = (*(*(this + 114) + 8))();
    v26 = (*(*(this + 82) + 8))(this + 656);
    result = (**(this + 82))(this + 656);
    if (v26 != v25)
    {
      result = memcpy(v26, v25, 4 * result);
    }

    v15 = 49;
    v16 = 48;
  }

  v27 = *this;
  *(v27 + v16) = *(*this + 51);
  *(v27 + v15) = *(v27 + 52);
  return result;
}