void Read4_NoCompression<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t a9, unint64_t a10, unsigned int a11, __int16 *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v70 = v22;
  v67[1] = a1;
  v67[2] = v21;
  v71 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v68 = *(a4 + 52) + HIDWORD(v22) * v20;
  v69 = v21;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v67);
  v28 = *a6;
  if (*(*a6 + 24))
  {
    _D0 = *v28;
  }

  else
  {
    _D0 = NAN;
  }

  v30 = *(v28 + 16);
  if (v30 == 2)
  {
    *v24.i32 = _D0;
  }

  else if (v30 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v72) = _H0;
    LOWORD(v72) = _H0;
    v24.i32[0] = v72;
  }

  else
  {
    v24.i32[0] = _D0;
  }

  v36 = *a7;
  if (*(*a7 + 24))
  {
    _D0 = *v36;
  }

  else
  {
    _D0 = NAN;
  }

  v38 = *(v36 + 16);
  if (v38 == 2)
  {
    *&v27 = _D0;
  }

  else if (v38 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v72) = _H0;
    LOWORD(v72) = _H0;
    LODWORD(v27) = v72;
  }

  else
  {
    LODWORD(v27) = _D0;
  }

  v63 = v26;
  v64 = v27;
  v40 = *a8;
  if (*(*a8 + 24))
  {
    *&_Q0 = *v40;
  }

  else
  {
    *&_Q0 = 0x7FF8000000000000;
  }

  v41 = *(v40 + 16);
  if (v41 == 2)
  {
    *&_Q0 = *&_Q0;
  }

  else if (v41 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v72) = _H0;
    LOWORD(v72) = _H0;
    LODWORD(_Q0) = v72;
  }

  else
  {
    LODWORD(_Q0) = *&_Q0;
  }

  v43 = *(a3 + 56);
  v44 = *(a4 + 52);
  if (*(a4 + 56) + v44 < HIDWORD(v43))
  {
    v46 = *(a4 + 28) * HIDWORD(v43);
    v47 = a1 + a2;
    v48 = v27;
    v49 = _Q0;
    v50 = vqtbl2q_s8(*v24.i8, xmmword_296B8F230);
    v24.i16[1] = _Q0;
    v62 = v24;
    do
    {
      v65 = v26;
      v66 = v50;
      v68 = v46 + v44;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v67);
      if (v67[0])
      {
        v51 = 0;
        v52 = (v47 - v67[0]) >> 1;
        if (v47 <= v67[0])
        {
          v52 = 0;
        }

        if (v52 >= a10)
        {
          v52 = a10;
        }

        v53 = a12;
        v54 = v63;
        v55 = v64;
        v56 = v65;
        v57 = v66;
        v58 = 0x1110030211100100;
        if (v52 >= 4)
        {
          v59 = 0;
          v60 = 0;
          v53 = a12;
          do
          {
            v54.i64[0] = *(v67[0] + v59);
            v56 = vqtbl2q_s8(*v54.i8, xmmword_296B8FDC0);
            vst2q_s16(v53, *v56.i8);
            v53 += 16;
            v51 = v60 + 4;
            v59 += 8;
            v61 = v60 + 8;
            v60 += 4;
          }

          while (v61 <= v52);
        }

        v65 = v56;
        v63 = v54;
        if (v51 < v52)
        {
          do
          {
            v58.i16[0] = *(v67[0] + 2 * v51);
            v58.i16[2] = v48;
            v58 = vzip1_s16(vuzp1_s16(v58, v58), v62);
            *v53 = v58;
            v53 += 4;
            ++v51;
          }

          while (v52 != v51);
          v51 = v52;
        }

        if (a10 > v51)
        {
          bzero(v53, 8 * (a10 - v51));
        }
      }

      a12 = (a12 + a13);
      v44 += a11;
      v26 = v65;
      v50 = v66;
    }

    while (v44 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t a9, unint64_t a10, unsigned int a11, int32x4_t *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v71 = v22;
  v68[1] = a1;
  v68[2] = v21;
  v72 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v69 = *(a4 + 52) + HIDWORD(v22) * v20;
  v70 = v21;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v68);
  v27 = *a6;
  if (*(*a6 + 24))
  {
    _D0 = *v27;
  }

  else
  {
    _D0 = NAN;
  }

  v29 = *(v27 + 16);
  if (v29 == 2)
  {
    *v24.i32 = _D0;
  }

  else if (v29 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v73) = _H0;
    LOWORD(v73) = _H0;
    v24.i32[0] = v73;
  }

  else
  {
    v24.i32[0] = _D0;
  }

  v35 = *a7;
  if (*(*a7 + 24))
  {
    _D0 = *v35;
  }

  else
  {
    _D0 = NAN;
  }

  v37 = *(v35 + 16);
  if (v37 == 2)
  {
    *v25.i32 = _D0;
  }

  else if (v37 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v73) = _H0;
    LOWORD(v73) = _H0;
    v25.i32[0] = v73;
  }

  else
  {
    v25.i32[0] = _D0;
  }

  v39 = *a8;
  if (*(*a8 + 24))
  {
    _Q0.i64[0] = *v39;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v40 = *(v39 + 16);
  if (v40 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v40 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v73) = _H0;
    LOWORD(v73) = _H0;
    _Q0.i32[0] = v73;
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v42 = *(a3 + 56);
  v43 = *(a4 + 52);
  if (*(a4 + 56) + v43 < HIDWORD(v42))
  {
    v45 = v25.i32[0];
    v46 = a2;
    v47 = *(a4 + 28) * HIDWORD(v42);
    v48 = a1 + v46;
    v49 = vuzp1q_s32(v24, _Q0);
    v50 = vuzp1q_s32(v49, v49);
    v24.i32[1] = _Q0.i32[0];
    v63 = v25;
    v64 = v24;
    v62 = vdupq_lane_s32(*v25.i8, 0);
    do
    {
      v65 = v26;
      v67 = v50;
      v69 = v47 + v43;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v68);
      v26 = v65;
      v50 = v67;
      v52 = v68[0];
      if (v68[0])
      {
        v53 = 0;
        v54 = (v48 - v68[0]) >> 2;
        if (v48 <= v68[0])
        {
          v54 = 0;
        }

        if (v54 >= a10)
        {
          v54 = a10;
        }

        v55 = a12;
        if (v54 >= 4)
        {
          v56 = 0;
          v57 = a12;
          do
          {
            v58 = *v52++;
            v26 = vzip2q_s32(v58, v62);
            v51 = vzip1q_s32(v58, v63);
            v51.i32[3] = v63.i32[0];
            v59 = v67;
            v55 = (v57 + 16);
            vst2q_f32(v57, *v51.i8);
            v60 = v57 + 8;
            vst2q_f32(v60, *v26.i8);
            v53 = v56 + 4;
            v61 = v56 + 8;
            v56 += 4;
            v57 = v55;
          }

          while (v61 <= v54);
        }

        if (v53 < v54)
        {
          do
          {
            v51.i32[0] = *(v68[0] + 4 * v53);
            v51.i32[2] = v45;
            v51 = vzip1q_s32(vuzp1q_s32(v51, v51), v64);
            *v55++ = v51;
            ++v53;
          }

          while (v54 != v53);
          v53 = v54;
        }

        if (a10 > v53)
        {
          v66 = v26;
          bzero(v55, 16 * (a10 - v53));
          v26 = v66;
          v50 = v67;
        }
      }

      a12 = (a12 + a13);
      v43 += a11;
    }

    while (v43 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, int8x16_t _Q0, uint64_t a10, unint64_t a11, unsigned int a12, __int16 *a13, uint64_t a14)
{
  v20 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.i64[0] = *v20;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v21 = *(v20 + 16);
  if (v21 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v21 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v61[0]) = _H0;
    LOWORD(v61[0]) = _H0;
    _Q0.i32[0] = v61[0];
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v58 = _Q0;
  v27 = *(a3 + 60);
  v28 = *(a6 + 8);
  v29 = *(a4 + 24);
  v64 = v29;
  v61[1] = a1;
  v61[2] = v28;
  v65 = *(a4 + 60);
  LODWORD(v28) = *(a4 + 44);
  v62 = *(a4 + 52) + HIDWORD(v29) * v27;
  v63 = v28;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v61);
  v34 = *a7;
  if (*(*a7 + 24))
  {
    _Q0.i64[0] = *v34;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v35 = *(v34 + 16);
  if (v35 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v35 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v66) = _H0;
    LOWORD(v66) = _H0;
    _Q0.i32[0] = v66;
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v37 = *a8;
  if (*(*a8 + 24))
  {
    *&_Q1 = *v37;
  }

  else
  {
    *&_Q1 = 0x7FF8000000000000;
  }

  v38 = *(v37 + 16);
  if (v38 == 2)
  {
    *&v32 = *&_Q1;
  }

  else if (v38 == 1)
  {
    __asm { FCVT            H1, D1 }

    HIWORD(v66) = _Q1;
    LOWORD(v66) = _Q1;
    LODWORD(v32) = v66;
  }

  else
  {
    LODWORD(_Q1) = *&_Q1;
    if (v38)
    {
      *&v32 = *_Q0.i32;
    }

    else
    {
      *&v32 = *&_Q1;
    }
  }

  v56 = _Q1;
  v57 = v32;
  v39 = *(a3 + 56);
  v40 = *(a4 + 52);
  if (*(a4 + 56) + v40 < HIDWORD(v39))
  {
    v42 = *(a4 + 28) * HIDWORD(v39);
    v43 = a1 + a2;
    v67.val[0] = v58;
    v67.val[1] = _Q0;
    v44 = vqtbl2q_s8(v67, xmmword_296B8F230);
    v67.val[0].i16[2] = _Q0.i16[0];
    v45 = vuzp1_s16(*v67.val[0].i8, *v67.val[0].i8);
    do
    {
      v59 = v44;
      v60 = v33;
      v62 = v42 + v40;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v61);
      if (v61[0])
      {
        v46 = 0;
        v47 = (v43 - v61[0]) >> 1;
        if (v43 <= v61[0])
        {
          v47 = 0;
        }

        if (a11 < v47)
        {
          v47 = a11;
        }

        v48 = a13;
        v49 = v56;
        v50 = v57;
        v51 = v59;
        v52 = v60;
        if (v47 >= 4)
        {
          v53 = 0;
          v54 = 0;
          v48 = a13;
          do
          {
            *&v49 = *(v61[0] + v53);
            v52 = vqtbl2q_s8(*&v49, xmmword_296B8FDC0);
            vst2q_s16(v48, *v51.i8);
            v48 += 16;
            v46 = v54 + 4;
            v53 += 8;
            v55 = v54 + 8;
            v54 += 4;
          }

          while (v55 <= v47);
        }

        v60 = v52;
        v56 = v49;
        if (v46 < v47)
        {
          do
          {
            LOWORD(v49) = *(v61[0] + 2 * v46);
            WORD1(v49) = v57;
            *&v49 = vzip1_s16(v45, *&v49);
            *v48 = v49;
            v48 += 4;
            ++v46;
          }

          while (v47 != v46);
          v46 = v47;
        }

        if (a11 > v46)
        {
          bzero(v48, 8 * (a11 - v46));
        }
      }

      a13 = (a13 + a14);
      v40 += a12;
      v44 = v59;
      v33 = v60;
    }

    while (v40 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, int32x4_t _Q0, uint64_t a10, unint64_t a11, unsigned int a12, int32x4_t *a13, uint64_t a14)
{
  v20 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.i64[0] = *v20;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v21 = *(v20 + 16);
  if (v21 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v21 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v69[0]) = _H0;
    LOWORD(v69[0]) = _H0;
    _Q0.i32[0] = v69[0];
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v65 = _Q0;
  v27 = *(a3 + 60);
  v28 = *(a6 + 8);
  v29 = *(a4 + 24);
  v72 = v29;
  v69[1] = a1;
  v69[2] = v28;
  v73 = *(a4 + 60);
  LODWORD(v28) = *(a4 + 44);
  v70 = *(a4 + 52) + HIDWORD(v29) * v27;
  v71 = v28;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v69);
  v33 = *a7;
  if (*(*a7 + 24))
  {
    _Q0.i64[0] = *v33;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v34 = *(v33 + 16);
  if (v34 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v34 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v74) = _H0;
    LOWORD(v74) = _H0;
    _Q0.i32[0] = v74;
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v36 = *a8;
  if (*(*a8 + 24))
  {
    _D1 = *v36;
  }

  else
  {
    _D1 = NAN;
  }

  v38 = *(v36 + 16);
  if (v38 == 2)
  {
    *v31.i32 = _D1;
  }

  else if (v38 == 1)
  {
    __asm { FCVT            H1, D1 }

    HIWORD(v74) = _H1;
    LOWORD(v74) = _H1;
    v31.i32[0] = v74;
  }

  else
  {
    LODWORD(v39) = _D1;
    if (v38)
    {
      v31.i32[0] = _Q0.i32[0];
    }

    else
    {
      *v31.i32 = v39;
    }
  }

  v41 = *(a3 + 56);
  v42 = *(a4 + 52);
  if (*(a4 + 56) + v42 < HIDWORD(v41))
  {
    v44 = _Q0.i32[0];
    v45 = v31.i32[0];
    v46 = a2;
    v47 = *(a4 + 28) * HIDWORD(v41);
    v48 = a1 + v46;
    v49 = v65;
    v50 = vuzp1q_s32(v65, _Q0);
    v51 = vuzp1q_s32(v50, v50);
    v49.i32[2] = v44;
    v64 = v31;
    v62 = vuzp1q_s32(v49, v49);
    v63 = vdupq_lane_s32(*v31.i8, 0);
    do
    {
      v66 = v51;
      v67 = v32;
      v70 = v47 + v42;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v69);
      v51 = v66;
      v32 = v67;
      v53 = v69[0];
      if (v69[0])
      {
        v54 = 0;
        v55 = (v48 - v69[0]) >> 2;
        if (v48 <= v69[0])
        {
          v55 = 0;
        }

        if (a11 < v55)
        {
          v55 = a11;
        }

        v56 = a13;
        if (v55 >= 4)
        {
          v57 = 0;
          v58 = a13;
          do
          {
            v59 = *v53++;
            v52.i64[1] = v59.i64[1];
            v75.val[1] = vzip1q_s32(v59, v64);
            v75.val[1].i32[3] = v64.i32[0];
            v32 = vzip2q_s32(v59, v63);
            v56 = (v58 + 16);
            v75.val[0] = v66;
            vst2q_f32(v58, v75);
            v60 = v58 + 8;
            vst2q_f32(v60, *(&v32 - 1));
            v54 = v57 + 4;
            v61 = v57 + 8;
            v57 += 4;
            v58 = v56;
          }

          while (v61 <= v55);
        }

        if (v54 < v55)
        {
          do
          {
            v52.i32[0] = *(v69[0] + 4 * v54);
            v52.i32[1] = v45;
            v52 = vzip1q_s32(v62, v52);
            *v56++ = v52;
            ++v54;
          }

          while (v55 != v54);
          v54 = v55;
        }

        if (a11 > v54)
        {
          v68 = v32;
          bzero(v56, 16 * (a11 - v54));
          v51 = v66;
          v32 = v68;
        }
      }

      a13 = (a13 + a14);
      v42 += a12;
    }

    while (v42 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, unint64_t a10, unsigned int a11, __int16 *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v71 = v22;
  v68[1] = a1;
  v68[2] = v21;
  v72 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v69 = *(a4 + 52) + HIDWORD(v22) * v20;
  v70 = v21;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v68);
  v23 = *(a3 + 60);
  v24 = *(a6 + 8);
  v25 = *(a4 + 24);
  v66 = v25;
  v63[1] = a1;
  v63[2] = v24;
  v67 = *(a4 + 60);
  LODWORD(v24) = *(a4 + 44);
  v64 = *(a4 + 52) + HIDWORD(v25) * v23;
  v65 = v24;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v63);
  v30 = *a7;
  if (*(*a7 + 24))
  {
    _D0 = *v30;
  }

  else
  {
    _D0 = NAN;
  }

  v32 = *(v30 + 16);
  switch(v32)
  {
    case 2:
      *&v27 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      HIWORD(v73) = _H0;
      LOWORD(v73) = _H0;
      LODWORD(v27) = v73;
      break;
    case 0:
      LODWORD(v27) = _D0;
      break;
  }

  v38 = *a8;
  if (*(*a8 + 24))
  {
    _D0 = *v38;
  }

  else
  {
    _D0 = NAN;
  }

  v40 = *(v38 + 16);
  switch(v40)
  {
    case 2:
      *&v29 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      HIWORD(v73) = _H0;
      LOWORD(v73) = _H0;
      LODWORD(v29) = v73;
      break;
    case 0:
      LODWORD(v29) = _D0;
      break;
  }

  v42 = *(a3 + 56);
  v43 = *(a4 + 52);
  if (*(a4 + 56) + v43 < HIDWORD(v42))
  {
    v45 = *(a4 + 28) * HIDWORD(v42);
    v56 = a1 + a2;
    v46 = v27;
    v47 = v29;
    do
    {
      v57 = v28;
      v59 = v29;
      v60 = v26;
      v62 = v27;
      v69 = v45 + v43;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v68);
      v64 = v45 + v43;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v63);
      v28 = v57;
      v29 = v59;
      v26 = v60;
      v27 = v62;
      if (v68[0] && v63[0])
      {
        v48 = 0;
        v49 = (v56 - v68[0]) >> 1;
        if (v56 <= v68[0])
        {
          v49 = 0;
        }

        if (v49 >= a10)
        {
          v49 = a10;
        }

        v50 = (v56 - v63[0]) >> 1;
        if (v56 <= v63[0])
        {
          v50 = 0;
        }

        if (v49 < v50)
        {
          v50 = v49;
        }

        v51 = a12;
        if (v50 >= 4)
        {
          v52 = 0;
          v53 = 0;
          v51 = a12;
          do
          {
            *&v26 = *(v68[0] + v52);
            *&v28 = *(v63[0] + v52);
            v74.val[0] = vqtbl2q_s8(*&v26, xmmword_296B8FDC0);
            v74.val[1] = vqtbl2q_s8(*&v28, xmmword_296B8FDC0);
            vst2q_s16(v51, v74);
            v51 += 16;
            v48 = v53 + 4;
            v52 += 8;
            v54 = v53 + 8;
            v53 += 4;
          }

          while (v54 <= v50);
        }

        if (v48 < v50)
        {
          do
          {
            LOWORD(v55) = *(v68[0] + 2 * v48);
            WORD1(v55) = *(v63[0] + 2 * v48);
            WORD2(v55) = v46;
            HIWORD(v55) = v47;
            *v51 = v55;
            v51 += 4;
            ++v48;
          }

          while (v50 != v48);
          v48 = v50;
        }

        if (a10 > v48)
        {
          v61 = v26;
          v58 = v28;
          bzero(v51, 8 * (a10 - v48));
          v28 = v58;
          v29 = v59;
          v26 = v61;
          v27 = v62;
        }
      }

      a12 = (a12 + a13);
      v43 += a11;
    }

    while (v43 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, unint64_t a10, unsigned int a11, float *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v74 = v22;
  v71[1] = a1;
  v71[2] = v21;
  v75 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v72 = *(a4 + 52) + HIDWORD(v22) * v20;
  v73 = v21;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v71);
  v23 = *(a3 + 60);
  v24 = *(a6 + 8);
  v25 = *(a4 + 24);
  v69 = v25;
  v66[1] = a1;
  v66[2] = v24;
  v70 = *(a4 + 60);
  LODWORD(v24) = *(a4 + 44);
  v67 = *(a4 + 52) + HIDWORD(v25) * v23;
  v68 = v24;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v66);
  v28 = *a7;
  if (*(*a7 + 24))
  {
    _D0 = *v28;
  }

  else
  {
    _D0 = NAN;
  }

  v30 = *(v28 + 16);
  switch(v30)
  {
    case 2:
      *v26.i32 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      HIWORD(v76) = _H0;
      LOWORD(v76) = _H0;
      v26.i32[0] = v76;
      break;
    case 0:
      v26.i32[0] = _D0;
      break;
  }

  v36 = *a8;
  if (*(*a8 + 24))
  {
    _D0 = *v36;
  }

  else
  {
    _D0 = NAN;
  }

  v38 = *(v36 + 16);
  switch(v38)
  {
    case 2:
      *v27.i32 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      HIWORD(v76) = _H0;
      LOWORD(v76) = _H0;
      v27.i32[0] = v76;
      break;
    case 0:
      v27.i32[0] = _D0;
      break;
  }

  v40 = *(a3 + 56);
  v41 = *(a4 + 52);
  if (*(a4 + 56) + v41 < HIDWORD(v40))
  {
    v43 = v26.i32[0];
    v44 = a2;
    v45 = v27.i32[0];
    v46 = *(a4 + 28) * HIDWORD(v40);
    v61 = a1 + v44;
    v64 = v27;
    v65 = v26;
    v62 = vdupq_lane_s32(*v27.i8, 0);
    v63 = vdupq_lane_s32(*v26.i8, 0);
    do
    {
      v72 = v46 + v41;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v71);
      v67 = v46 + v41;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v66);
      v47 = v71[0];
      if (v71[0])
      {
        v48 = v66[0];
        if (v66[0])
        {
          v49 = 0;
          v50 = (v61 - v71[0]) >> 2;
          if (v61 <= v71[0])
          {
            v50 = 0;
          }

          if (v50 >= a10)
          {
            v50 = a10;
          }

          v51 = (v61 - v66[0]) >> 2;
          if (v61 <= v66[0])
          {
            v51 = 0;
          }

          if (v50 >= v51)
          {
            v50 = v51;
          }

          v52 = a12;
          if (v50 >= 4)
          {
            v53 = 0;
            v54 = a12;
            do
            {
              v55 = *v47++;
              v56 = v55;
              v57 = *v48++;
              v77.val[0] = vzip1q_s32(v56, v65);
              v77.val[0].i32[3] = v65.i32[0];
              v77.val[1] = vzip1q_s32(v57, v64);
              v77.val[1].i32[3] = v64.i32[0];
              v52 = v54 + 16;
              vst2q_f32(v54, v77);
              v58 = v54 + 8;
              v77.val[0] = vzip2q_s32(v56, v63);
              v77.val[1] = vzip2q_s32(v57, v62);
              vst2q_f32(v58, v77);
              v49 = v53 + 4;
              v59 = v53 + 8;
              v53 += 4;
              v54 = v52;
            }

            while (v59 <= v50);
          }

          if (v49 < v50)
          {
            do
            {
              LODWORD(v60) = *(v71[0] + 4 * v49);
              DWORD1(v60) = *(v66[0] + 4 * v49);
              *(&v60 + 1) = __PAIR64__(v45, v43);
              *v52 = v60;
              v52 += 4;
              ++v49;
            }

            while (v50 != v49);
            v49 = v50;
          }

          if (a10 > v49)
          {
            bzero(v52, 16 * (a10 - v49));
          }
        }
      }

      a12 = (a12 + a13);
      v41 += a11;
    }

    while (v41 + *(a4 + 56) < *(a3 + 60));
  }
}

__n128 Read4_NoCompression<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t *a8, __n128 _Q0, __n128 a10, __n128 a11, uint64_t a12, unint64_t a13, unsigned int a14, __int16 *a15, uint64_t a16)
{
  v21 = *a5;
  if (*(*a5 + 24))
  {
    _D0 = *v21;
  }

  else
  {
    _D0 = NAN;
  }

  v23 = *(v21 + 16);
  if (v23 == 2)
  {
    a10.n128_f32[0] = _D0;
  }

  else if (v23 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v65[0]) = _H0;
    LOWORD(v65[0]) = _H0;
    a10.n128_u32[0] = v65[0];
  }

  else
  {
    a10.n128_u32[0] = _D0;
  }

  v29 = *a6;
  if (*(*a6 + 24))
  {
    _Q0.n128_u64[0] = *v29;
  }

  else
  {
    _Q0.n128_u64[0] = 0x7FF8000000000000;
  }

  v30 = *(v29 + 16);
  v59 = a10;
  if (v30 == 2)
  {
    _Q0.n128_f32[0] = _Q0.n128_f64[0];
  }

  else if (v30 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v65[0]) = _H0;
    LOWORD(v65[0]) = _H0;
    _Q0.n128_u32[0] = v65[0];
  }

  else
  {
    _Q0.n128_u32[0] = _Q0.n128_f64[0];
  }

  v61 = _Q0;
  v32 = *(a3 + 60);
  v33 = *(a7 + 8);
  v34 = *(a4 + 24);
  v68 = v34;
  v65[1] = a1;
  v65[2] = v33;
  v69 = *(a4 + 60);
  LODWORD(v33) = *(a4 + 44);
  v66 = *(a4 + 52) + HIDWORD(v34) * v32;
  v67 = v33;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v65);
  v36 = *a8;
  if (*(*a8 + 24))
  {
    result.n128_u64[0] = *v36;
  }

  else
  {
    result.n128_u64[0] = 0x7FF8000000000000;
  }

  v37 = *(v36 + 16);
  v38 = v61;
  if (v37 == 2)
  {
    result.n128_f32[0] = result.n128_f64[0];
  }

  else if (v37 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v70) = _H0;
    LOWORD(v70) = _H0;
    result.n128_u32[0] = v70;
  }

  else
  {
    result.n128_u32[0] = result.n128_f64[0];
  }

  v40 = *(a3 + 56);
  v41 = *(a4 + 52);
  if (*(a4 + 56) + v41 < HIDWORD(v40))
  {
    v43 = *(a4 + 28) * HIDWORD(v40);
    v44 = a1 + a2;
    v45 = result.n128_u16[0];
    v46 = result;
    result = xmmword_296B8F230;
    v47 = vqtbl2q_s8(*v38.n128_u64, xmmword_296B8F230);
    v38.n128_u16[1] = v45;
    v62 = v38.n128_u64[0];
    do
    {
      v63 = result;
      v64 = v47;
      v66 = v43 + v41;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v65);
      if (v65[0])
      {
        v48 = 0;
        v49 = (v44 - v65[0]) >> 1;
        if (v44 <= v65[0])
        {
          v49 = 0;
        }

        if (a13 < v49)
        {
          v49 = a13;
        }

        v50 = a15;
        v51 = v59;
        v52 = a11;
        v53 = v63;
        v54 = v64;
        if (v49 >= 4)
        {
          v55 = 0;
          v56 = 0;
          v50 = a15;
          do
          {
            v52.n128_u64[0] = *(v65[0] + v55);
            v53 = vqtbl2q_s8(*v51.n128_u64, xmmword_296B8FDF0);
            vst2q_s16(v50, *v53.i8);
            v50 += 16;
            v48 = v56 + 4;
            v55 += 8;
            v57 = v56 + 8;
            v56 += 4;
          }

          while (v57 <= v49);
        }

        v63 = v53;
        if (v48 < v49)
        {
          do
          {
            v58 = v59.n128_u64[0];
            v58.i16[2] = *(v65[0] + 2 * v48);
            *v50 = vzip1_s16(vuzp1_s16(v58, v58), v62);
            v50 += 4;
            ++v48;
          }

          while (v49 != v48);
          v48 = v49;
        }

        a11 = v52;
        if (a13 > v48)
        {
          bzero(v50, 8 * (a13 - v48));
        }
      }

      a15 = (a15 + a16);
      v41 += a14;
      result = v63;
      v47 = v64;
    }

    while (v41 + *(a4 + 56) < *(a3 + 60));
  }

  return result;
}

void Read4_NoCompression<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t *a8, int32x4_t _Q0, int32x4_t a10, uint64_t a11, unint64_t a12, unsigned int a13, int32x4_t *a14, uint64_t a15)
{
  v20 = *a5;
  if (*(*a5 + 24))
  {
    _D0 = *v20;
  }

  else
  {
    _D0 = NAN;
  }

  v22 = *(v20 + 16);
  if (v22 == 2)
  {
    *a10.i32 = _D0;
  }

  else if (v22 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v65[0]) = _H0;
    LOWORD(v65[0]) = _H0;
    a10.i32[0] = v65[0];
  }

  else
  {
    a10.i32[0] = _D0;
  }

  v28 = *a6;
  if (*(*a6 + 24))
  {
    _Q0.i64[0] = *v28;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v29 = *(v28 + 16);
  v62 = a10;
  if (v29 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v29 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v65[0]) = _H0;
    LOWORD(v65[0]) = _H0;
    _Q0.i32[0] = v65[0];
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v60 = _Q0;
  v31 = *(a3 + 60);
  v32 = *(a7 + 8);
  v33 = *(a4 + 24);
  v68 = v33;
  v65[1] = a1;
  v65[2] = v32;
  v69 = *(a4 + 60);
  LODWORD(v32) = *(a4 + 44);
  v66 = *(a4 + 52) + HIDWORD(v33) * v31;
  v67 = v32;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v65);
  v36 = *a8;
  if (*(*a8 + 24))
  {
    _Q0.i64[0] = *v36;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v37 = *(v36 + 16);
  if (v37 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v37 == 1)
  {
    __asm { FCVT            H0, D0 }

    HIWORD(v70) = _H0;
    LOWORD(v70) = _H0;
    _Q0.i32[0] = v70;
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v39 = *(a3 + 56);
  v40 = *(a4 + 52);
  if (*(a4 + 56) + v40 < HIDWORD(v39))
  {
    v42 = *(a4 + 28) * HIDWORD(v39);
    v43 = a1 + a2;
    v44 = v60;
    v45 = vuzp1q_s32(v60, _Q0);
    v46 = vuzp1q_s32(v45, v45);
    v44.i32[1] = _Q0.i32[0];
    v59 = vdupq_lane_s32(*v62.i8, 0);
    v61 = v44;
    do
    {
      v63 = v35;
      v64 = v46;
      v66 = v42 + v40;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v65);
      v47 = v65[0];
      if (v65[0])
      {
        v48 = 0;
        v49 = (v43 - v65[0]) >> 2;
        if (v43 <= v65[0])
        {
          v49 = 0;
        }

        if (a12 < v49)
        {
          v49 = a12;
        }

        v50 = a14;
        v51 = v63;
        v52 = v64;
        if (v49 >= 4)
        {
          v53 = 0;
          v54 = a14;
          do
          {
            v55 = *v47++;
            v51 = vzip2q_s32(v59, v55);
            v71.val[0] = vzip1q_s32(v62, v55);
            v71.val[0].i32[2] = v62.i32[0];
            v71.val[1] = v64;
            v50 = (v54 + 16);
            vst2q_f32(v54, v71);
            v56 = v54 + 8;
            vst2q_f32(v56, *v51.i8);
            v48 = v53 + 4;
            v57 = v53 + 8;
            v53 += 4;
            v54 = v50;
          }

          while (v57 <= v49);
        }

        v63 = v51;
        if (v48 < v49)
        {
          do
          {
            v58 = v62;
            v58.i32[2] = *(v65[0] + 4 * v48);
            *v50++ = vzip1q_s32(vuzp1q_s32(v58, v58), v61);
            ++v48;
          }

          while (v49 != v48);
          v48 = v49;
        }

        if (a12 > v48)
        {
          bzero(v50, 16 * (a12 - v48));
        }
      }

      a14 = (a14 + a15);
      v40 += a13;
      v35 = v63;
      v46 = v64;
    }

    while (v40 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, unint64_t a10, unsigned int a11, __int16 *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v70 = v22;
  v67[1] = a1;
  v67[2] = v21;
  v71 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v68 = *(a4 + 52) + HIDWORD(v22) * v20;
  v69 = v21;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v67);
  v25 = *a6;
  if (*(*a6 + 24))
  {
    _Q0.i64[0] = *v25;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v26 = *(v25 + 16);
  if (v26 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v26 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v62[0]) = _H0;
    LOWORD(v62[0]) = _H0;
    _Q0.i32[0] = v62[0];
  }

  else
  {
    v58 = v24;
    if (v26)
    {
      goto LABEL_11;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  v58 = _Q0;
LABEL_11:
  v32 = *(a3 + 60);
  v33 = *(a7 + 8);
  v34 = *(a4 + 24);
  v65 = v34;
  v62[1] = a1;
  v62[2] = v33;
  v66 = *(a4 + 60);
  LODWORD(v33) = *(a4 + 44);
  v63 = *(a4 + 52) + HIDWORD(v34) * v32;
  v64 = v33;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v62);
  v37 = *a8;
  if (*(*a8 + 24))
  {
    _D1 = *v37;
  }

  else
  {
    _D1 = NAN;
  }

  v39 = *(v37 + 16);
  switch(v39)
  {
    case 2:
      *v35.i32 = _D1;
      break;
    case 1:
      __asm { FCVT            H0, D1 }

      HIWORD(v72) = _H0;
      LOWORD(v72) = _H0;
      v35.i32[0] = v72;
      break;
    case 0:
      v35.i32[0] = _D1;
      break;
  }

  v41 = *(a3 + 56);
  v42 = *(a4 + 52);
  if (*(a4 + 56) + v42 < HIDWORD(v41))
  {
    v44 = *(a4 + 28) * HIDWORD(v41);
    v45 = a1 + a2;
    v73.val[0] = v58;
    v73.val[1] = v35;
    v46 = vqtbl2q_s8(v73, xmmword_296B8F230);
    v73.val[0].i16[1] = v35.i16[0];
    v59 = *v73.val[0].i8;
    do
    {
      v60 = v36;
      v61 = v46;
      v68 = v44 + v42;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v67);
      v63 = v44 + v42;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v62);
      if (v67[0] && v62[0])
      {
        v49 = 0;
        v50 = (v45 - v67[0]) >> 1;
        if (v45 <= v67[0])
        {
          v50 = 0;
        }

        if (v50 >= a10)
        {
          v50 = a10;
        }

        v51 = (v45 - v62[0]) >> 1;
        if (v45 <= v62[0])
        {
          v51 = 0;
        }

        if (v50 < v51)
        {
          v51 = v50;
        }

        v52 = a12;
        v53 = v60;
        v54 = v61;
        if (v51 >= 4)
        {
          v55 = 0;
          v56 = 0;
          v52 = a12;
          do
          {
            v47.i64[0] = *(v67[0] + v55);
            v48.i64[0] = *(v62[0] + v55);
            v53 = vzip1q_s16(v47, v48);
            vst2q_s16(v52, *v53.i8);
            v52 += 16;
            v49 = v56 + 4;
            v55 += 8;
            v57 = v56 + 8;
            v56 += 4;
          }

          while (v57 <= v51);
        }

        v60 = v53;
        if (v49 < v51)
        {
          do
          {
            v47.i16[0] = *(v67[0] + 2 * v49);
            v47.i16[2] = *(v62[0] + 2 * v49);
            *v47.i8 = vzip1_s16(vuzp1_s16(*v47.i8, *v47.i8), v59);
            *v52 = v47.i64[0];
            v52 += 4;
            ++v49;
          }

          while (v51 != v49);
          v49 = v51;
        }

        if (a10 > v49)
        {
          bzero(v52, 8 * (a10 - v49));
        }
      }

      a12 = (a12 + a13);
      v42 += a11;
      v36 = v60;
      v46 = v61;
    }

    while (v42 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, unint64_t a10, unsigned int a11, int32x4_t *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v78 = v22;
  v75[1] = a1;
  v75[2] = v21;
  v79 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v76 = *(a4 + 52) + HIDWORD(v22) * v20;
  v77 = v21;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v75);
  v25 = *a6;
  if (*(*a6 + 24))
  {
    _Q0.i64[0] = *v25;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v26 = *(v25 + 16);
  if (v26 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v26 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v70[0]) = _H0;
    LOWORD(v70[0]) = _H0;
    _Q0.i32[0] = v70[0];
  }

  else
  {
    v66 = v24;
    if (v26)
    {
      goto LABEL_11;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  v66 = _Q0;
LABEL_11:
  v32 = *(a3 + 60);
  v33 = *(a7 + 8);
  v34 = *(a4 + 24);
  v73 = v34;
  v70[1] = a1;
  v70[2] = v33;
  v74 = *(a4 + 60);
  LODWORD(v33) = *(a4 + 44);
  v71 = *(a4 + 52) + HIDWORD(v34) * v32;
  v72 = v33;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v70);
  v37 = *a8;
  if (*(*a8 + 24))
  {
    _D1 = *v37;
  }

  else
  {
    _D1 = NAN;
  }

  v39 = *(v37 + 16);
  switch(v39)
  {
    case 2:
      *v35.i32 = _D1;
      break;
    case 1:
      __asm { FCVT            H0, D1 }

      HIWORD(v80) = _H0;
      LOWORD(v80) = _H0;
      v35.i32[0] = v80;
      break;
    case 0:
      v35.i32[0] = _D1;
      break;
  }

  v41 = *(a3 + 56);
  v42 = *(a4 + 52);
  if (*(a4 + 56) + v42 < HIDWORD(v41))
  {
    v44 = *(a4 + 28) * HIDWORD(v41);
    v45 = a1 + a2;
    v46 = v66;
    v47 = vuzp1q_s32(v66, v35);
    v48 = vuzp1q_s32(v47, v47);
    v46.i32[1] = v35.i32[0];
    v67 = v46;
    do
    {
      v68 = v36;
      v69 = v48;
      v76 = v44 + v42;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v75);
      v71 = v44 + v42;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v70);
      v50 = v75[0];
      if (v75[0])
      {
        v51 = v70[0];
        if (v70[0])
        {
          v52 = 0;
          v53 = (v45 - v75[0]) >> 2;
          if (v45 <= v75[0])
          {
            v53 = 0;
          }

          if (v53 >= a10)
          {
            v53 = a10;
          }

          v54 = (v45 - v70[0]) >> 2;
          if (v45 <= v70[0])
          {
            v54 = 0;
          }

          if (v53 >= v54)
          {
            v53 = v54;
          }

          v55 = a12;
          v56 = v68;
          v57 = v69;
          if (v53 >= 4)
          {
            v58 = 0;
            v59 = a12;
            do
            {
              v60 = *v50++;
              v61 = v60;
              v62 = *v51++;
              v56 = vzip2q_s32(v61, v62);
              v49 = vzip1q_s32(v61, v62);
              v63 = v69;
              v55 = (v59 + 16);
              vst2q_f32(v59, *v49.i8);
              v64 = v59 + 8;
              vst2q_f32(v64, *v56.i8);
              v52 = v58 + 4;
              v65 = v58 + 8;
              v58 += 4;
              v59 = v55;
            }

            while (v65 <= v53);
          }

          v68 = v56;
          if (v52 < v53)
          {
            do
            {
              v49.i32[0] = *(v75[0] + 4 * v52);
              v49.i32[2] = *(v70[0] + 4 * v52);
              v49 = vzip1q_s32(vuzp1q_s32(v49, v49), v67);
              *v55++ = v49;
              ++v52;
            }

            while (v53 != v52);
            v52 = v53;
          }

          if (a10 > v52)
          {
            bzero(v55, 16 * (a10 - v52));
          }
        }
      }

      a12 = (a12 + a13);
      v42 += a11;
      v36 = v68;
      v48 = v69;
    }

    while (v42 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, __n128 _Q0, __n128 a10, __n128 a11, uint64_t a12, unint64_t a13, unsigned int a14, __int16 *a15, uint64_t a16)
{
  v22 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.n128_u64[0] = *v22;
  }

  else
  {
    _Q0.n128_u64[0] = 0x7FF8000000000000;
  }

  v23 = *(v22 + 16);
  if (v23 == 2)
  {
    _Q0.n128_f32[0] = _Q0.n128_f64[0];
  }

  else if (v23 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v69[0]) = _H0;
    LOWORD(v69[0]) = _H0;
    _Q0.n128_u32[0] = v69[0];
  }

  else
  {
    v59 = a10;
    if (v23)
    {
      goto LABEL_11;
    }

    _Q0.n128_u32[0] = _Q0.n128_f64[0];
  }

  v59 = _Q0;
  a11 = a10;
LABEL_11:
  v29 = *(a3 + 60);
  v30 = *(a6 + 8);
  v31 = *(a4 + 24);
  v72 = v31;
  v69[1] = a1;
  v69[2] = v30;
  v73 = *(a4 + 60);
  LODWORD(v30) = *(a4 + 44);
  v70 = *(a4 + 52) + HIDWORD(v31) * v29;
  v71 = v30;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v69);
  v32 = *(a3 + 60);
  v33 = *(a7 + 8);
  v34 = *(a4 + 24);
  v67 = v34;
  v64[1] = a1;
  v64[2] = v33;
  v68 = *(a4 + 60);
  LODWORD(v33) = *(a4 + 44);
  v65 = *(a4 + 52) + HIDWORD(v34) * v32;
  v66 = v33;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v64);
  v37 = *a8;
  if (*(*a8 + 24))
  {
    _D0 = *v37;
  }

  else
  {
    _D0 = NAN;
  }

  v39 = *(v37 + 16);
  switch(v39)
  {
    case 2:
      *&v36 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      HIWORD(v74) = _H0;
      LOWORD(v74) = _H0;
      LODWORD(v36) = v74;
      break;
    case 0:
      LODWORD(v36) = _D0;
      break;
  }

  v41 = *(a3 + 56);
  v42 = *(a4 + 52);
  if (*(a4 + 56) + v42 < HIDWORD(v41))
  {
    v44 = *(a4 + 28) * HIDWORD(v41);
    v58 = a1 + a2;
    v45 = v36;
    do
    {
      v61 = v35;
      v63 = v36;
      v70 = v44 + v42;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v69);
      v65 = v44 + v42;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v64);
      v35 = v61;
      v36 = v63;
      if (v69[0] && v64[0])
      {
        v47 = 0;
        v48 = (v58 - v69[0]) >> 1;
        if (v58 <= v69[0])
        {
          v48 = 0;
        }

        if (a13 < v48)
        {
          v48 = a13;
        }

        v49 = (v58 - v64[0]) >> 1;
        if (v58 <= v64[0])
        {
          v49 = 0;
        }

        if (v48 < v49)
        {
          v49 = v48;
        }

        v50 = a15;
        v51 = v59;
        v52 = a11;
        if (v49 >= 4)
        {
          v53 = 0;
          v54 = 0;
          v50 = a15;
          do
          {
            *&v35 = *(v69[0] + v53);
            v52.n128_u64[0] = *(v64[0] + v53);
            v55 = vqtbl2q_s8(*v51.n128_u64, xmmword_296B8FDF0);
            v46 = vqtbl2q_s8(*&v35, xmmword_296B8FDC0);
            vst2q_s16(v50, *(&v46 - 1));
            v50 += 16;
            v47 = v54 + 4;
            v53 += 8;
            v56 = v54 + 8;
            v54 += 4;
          }

          while (v56 <= v49);
        }

        if (v47 < v49)
        {
          do
          {
            v57 = v59.n128_u64[0];
            v57.i16[2] = *(v64[0] + 2 * v47);
            v46.i16[0] = *(v69[0] + 2 * v47);
            v46.i16[1] = v45;
            *v50 = vzip1_s16(vuzp1_s16(v57, v57), *v46.i8);
            v50 += 4;
            ++v47;
          }

          while (v49 != v47);
          v47 = v49;
        }

        a11 = v52;
        if (a13 > v47)
        {
          v62 = v35;
          bzero(v50, 8 * (a13 - v47));
          v35 = v62;
          v36 = v63;
        }
      }

      a15 = (a15 + a16);
      v42 += a14;
    }

    while (v42 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, int32x4_t _Q0, int32x4_t a10, uint64_t a11, unint64_t a12, unsigned int a13, int32x4_t *a14, uint64_t a15)
{
  v21 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.i64[0] = *v21;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v22 = *(v21 + 16);
  if (v22 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v22 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v70[0]) = _H0;
    LOWORD(v70[0]) = _H0;
    _Q0.i32[0] = v70[0];
  }

  else
  {
    if (v22)
    {
      goto LABEL_11;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  a10 = _Q0;
LABEL_11:
  v28 = *(a3 + 60);
  v29 = *(a6 + 8);
  v30 = *(a4 + 24);
  v73 = v30;
  v70[1] = a1;
  v70[2] = v29;
  v74 = *(a4 + 60);
  LODWORD(v29) = *(a4 + 44);
  v71 = *(a4 + 52) + HIDWORD(v30) * v28;
  v72 = v29;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v70);
  v31 = *(a3 + 60);
  v32 = *(a7 + 8);
  v33 = *(a4 + 24);
  v68 = v33;
  v65[1] = a1;
  v65[2] = v32;
  v69 = *(a4 + 60);
  LODWORD(v32) = *(a4 + 44);
  v66 = *(a4 + 52) + HIDWORD(v33) * v31;
  v67 = v32;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v65);
  v35 = *a8;
  if (*(*a8 + 24))
  {
    _D0 = *v35;
  }

  else
  {
    _D0 = NAN;
  }

  v37 = *(v35 + 16);
  switch(v37)
  {
    case 2:
      *v34.i32 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      HIWORD(v75) = _H0;
      LOWORD(v75) = _H0;
      v34.i32[0] = v75;
      break;
    case 0:
      v34.i32[0] = _D0;
      break;
  }

  v39 = *(a3 + 56);
  v40 = *(a4 + 52);
  if (*(a4 + 56) + v40 < HIDWORD(v39))
  {
    v42 = v34.i32[0];
    v43 = a2;
    v44 = *(a4 + 28) * HIDWORD(v39);
    v60 = a1 + v43;
    v62 = vdupq_lane_s32(*a10.i8, 0);
    v63 = v34;
    v61 = vdupq_lane_s32(*v34.i8, 0);
    do
    {
      v71 = v44 + v40;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v70);
      v66 = v44 + v40;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v65);
      v46 = v70[0];
      if (v70[0])
      {
        v47 = v65[0];
        if (v65[0])
        {
          v48 = 0;
          v49 = (v60 - v70[0]) >> 2;
          if (v60 <= v70[0])
          {
            v49 = 0;
          }

          if (a12 < v49)
          {
            v49 = a12;
          }

          v50 = (v60 - v65[0]) >> 2;
          if (v60 <= v65[0])
          {
            v50 = 0;
          }

          if (v49 >= v50)
          {
            v49 = v50;
          }

          v51 = a14;
          if (v49 >= 4)
          {
            v52 = 0;
            v53 = a14;
            do
            {
              v54 = *v46++;
              v55 = v54;
              v56 = *v47++;
              v76.val[0] = vzip1q_s32(a10, v56);
              v76.val[0].i32[2] = a10.i32[0];
              v76.val[1] = vzip1q_s32(v55, v63);
              v76.val[1].i32[3] = v63.i32[0];
              v51 = (v53 + 16);
              vst2q_f32(v53, v76);
              v57 = v53 + 8;
              v45 = vzip2q_s32(v62, v56);
              v76.val[0] = vzip2q_s32(v55, v61);
              vst2q_f32(v57, *v45.i8);
              v48 = v52 + 4;
              v58 = v52 + 8;
              v52 += 4;
              v53 = v51;
            }

            while (v58 <= v49);
          }

          if (v48 < v49)
          {
            do
            {
              v59 = a10;
              v59.i32[2] = *(v65[0] + 4 * v48);
              v45.i32[0] = *(v70[0] + 4 * v48);
              v45.i32[1] = v42;
              *v51++ = vzip1q_s32(vuzp1q_s32(v59, v59), v45);
              ++v48;
            }

            while (v49 != v48);
            v48 = v49;
          }

          if (a12 > v48)
          {
            bzero(v51, 16 * (a12 - v48));
          }
        }
      }

      a14 = (a14 + a15);
      v40 += a13;
    }

    while (v40 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, unint64_t a10, unsigned int a11, __int16 *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v72 = v22;
  v69[1] = a1;
  v69[2] = v21;
  v73 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v70 = *(a4 + 52) + HIDWORD(v22) * v20;
  v71 = v21;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v69);
  v23 = *(a3 + 60);
  v24 = *(a6 + 8);
  v25 = *(a4 + 24);
  v67 = v25;
  v64[1] = a1;
  v64[2] = v24;
  v68 = *(a4 + 60);
  LODWORD(v24) = *(a4 + 44);
  v65 = *(a4 + 52) + HIDWORD(v25) * v23;
  v66 = v24;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v64);
  v26 = *(a3 + 60);
  v27 = *(a7 + 8);
  v28 = *(a4 + 24);
  v62 = v28;
  v59[1] = a1;
  v59[2] = v27;
  v63 = *(a4 + 60);
  LODWORD(v27) = *(a4 + 44);
  v60 = *(a4 + 52) + HIDWORD(v28) * v26;
  v61 = v27;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v59);
  v31 = *a8;
  if (*(*a8 + 24))
  {
    _D0 = *v31;
  }

  else
  {
    _D0 = NAN;
  }

  v33 = *(v31 + 16);
  switch(v33)
  {
    case 2:
      *&v30 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      HIWORD(v74) = _H0;
      LOWORD(v74) = _H0;
      LODWORD(v30) = v74;
      break;
    case 0:
      LODWORD(v30) = _D0;
      break;
  }

  v39 = *(a3 + 56);
  v40 = *(a4 + 52);
  if (*(a4 + 56) + v40 < HIDWORD(v39))
  {
    v42 = *(a4 + 28) * HIDWORD(v39);
    v43 = a1 + a2;
    v44 = v30;
    do
    {
      v56 = v29;
      v58 = v30;
      v70 = v42 + v40;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v69);
      v65 = v42 + v40;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v64);
      v60 = v42 + v40;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v59);
      v29 = v56;
      v30 = v58;
      if (v69[0] && v64[0] && v59[0])
      {
        v47 = 0;
        v48 = (v43 - v69[0]) >> 1;
        if (v43 <= v69[0])
        {
          v48 = 0;
        }

        if (v48 >= a10)
        {
          v48 = a10;
        }

        v49 = (v43 - v64[0]) >> 1;
        if (v43 <= v64[0])
        {
          v49 = 0;
        }

        if (v48 < v49)
        {
          v49 = v48;
        }

        v50 = (v43 - v59[0]) >> 1;
        if (v43 <= v59[0])
        {
          v50 = 0;
        }

        if (v49 < v50)
        {
          v50 = v49;
        }

        v51 = a12;
        if (v50 >= 4)
        {
          v52 = 0;
          v53 = 0;
          v51 = a12;
          do
          {
            v45.i64[0] = *(v69[0] + v52);
            *&v29 = *(v64[0] + v52);
            v46.i64[0] = *(v59[0] + v52);
            v45 = vzip1q_s16(v45, v46);
            v46 = vqtbl2q_s8(*&v29, xmmword_296B8FDC0);
            vst2q_s16(v51, *v45.i8);
            v51 += 16;
            v47 = v53 + 4;
            v52 += 8;
            v54 = v53 + 8;
            v53 += 4;
          }

          while (v54 <= v50);
        }

        if (v47 < v50)
        {
          do
          {
            LOWORD(v55) = *(v69[0] + 2 * v47);
            WORD1(v55) = *(v64[0] + 2 * v47);
            WORD2(v55) = *(v59[0] + 2 * v47);
            HIWORD(v55) = v44;
            *v51 = v55;
            v51 += 4;
            ++v47;
          }

          while (v50 != v47);
          v47 = v50;
        }

        if (a10 > v47)
        {
          v57 = v29;
          bzero(v51, 8 * (a10 - v47));
          v29 = v57;
          v30 = v58;
        }
      }

      a12 = (a12 + a13);
      v40 += a11;
    }

    while (v40 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, unint64_t a10, unsigned int a11, float *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v78 = v22;
  v75[1] = a1;
  v75[2] = v21;
  v79 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v76 = *(a4 + 52) + HIDWORD(v22) * v20;
  v77 = v21;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v75);
  v23 = *(a3 + 60);
  v24 = *(a6 + 8);
  v25 = *(a4 + 24);
  v73 = v25;
  v70[1] = a1;
  v70[2] = v24;
  v74 = *(a4 + 60);
  LODWORD(v24) = *(a4 + 44);
  v71 = *(a4 + 52) + HIDWORD(v25) * v23;
  v72 = v24;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v70);
  v26 = *(a3 + 60);
  v27 = *(a7 + 8);
  v28 = *(a4 + 24);
  v68 = v28;
  v65[1] = a1;
  v65[2] = v27;
  v69 = *(a4 + 60);
  LODWORD(v27) = *(a4 + 44);
  v66 = *(a4 + 52) + HIDWORD(v28) * v26;
  v67 = v27;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v65);
  v30 = *a8;
  if (*(*a8 + 24))
  {
    _D0 = *v30;
  }

  else
  {
    _D0 = NAN;
  }

  v32 = *(v30 + 16);
  switch(v32)
  {
    case 2:
      *v29.i32 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      HIWORD(v80) = _H0;
      LOWORD(v80) = _H0;
      v29.i32[0] = v80;
      break;
    case 0:
      v29.i32[0] = _D0;
      break;
  }

  v38 = *(a3 + 56);
  v39 = *(a4 + 52);
  if (*(a4 + 56) + v39 < HIDWORD(v38))
  {
    v41 = v29.i32[0];
    v42 = *(a4 + 28) * HIDWORD(v38);
    v43 = a1 + a2;
    v63 = vdupq_lane_s32(*v29.i8, 0);
    v64 = v29;
    do
    {
      v76 = v42 + v39;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v75);
      v71 = v42 + v39;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v70);
      v66 = v42 + v39;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v65);
      v44 = v75[0];
      if (v75[0])
      {
        v45 = v70[0];
        if (v70[0])
        {
          v46 = v65[0];
          if (v65[0])
          {
            v47 = 0;
            v48 = (v43 - v75[0]) >> 2;
            if (v43 <= v75[0])
            {
              v48 = 0;
            }

            if (v48 >= a10)
            {
              v48 = a10;
            }

            v49 = (v43 - v70[0]) >> 2;
            if (v43 <= v70[0])
            {
              v49 = 0;
            }

            if (v48 >= v49)
            {
              v48 = v49;
            }

            v50 = (v43 - v65[0]) >> 2;
            if (v43 <= v65[0])
            {
              v50 = 0;
            }

            if (v48 >= v50)
            {
              v48 = v50;
            }

            v51 = a12;
            if (v48 >= 4)
            {
              v52 = 0;
              v53 = a12;
              do
              {
                v54 = *v44++;
                v55 = v54;
                v56 = *v45++;
                v57 = v56;
                v58 = *v46++;
                v81.val[0] = vzip1q_s32(v55, v58);
                v81.val[1] = vzip1q_s32(v57, v64);
                v81.val[1].i32[3] = v64.i32[0];
                v51 = v53 + 16;
                vst2q_f32(v53, v81);
                v59 = v53 + 8;
                v60 = vzip2q_s32(v55, v58);
                v81.val[0] = vzip2q_s32(v57, v63);
                vst2q_f32(v59, v81);
                v47 = v52 + 4;
                v61 = v52 + 8;
                v52 += 4;
                v53 = v51;
              }

              while (v61 <= v48);
            }

            if (v47 < v48)
            {
              do
              {
                LODWORD(v62) = *(v75[0] + 4 * v47);
                DWORD1(v62) = *(v70[0] + 4 * v47);
                DWORD2(v62) = *(v65[0] + 4 * v47);
                HIDWORD(v62) = v41;
                *v51 = v62;
                v51 += 4;
                ++v47;
              }

              while (v48 != v47);
              v47 = v48;
            }

            if (a10 > v47)
            {
              bzero(v51, 16 * (a10 - v47));
            }
          }
        }
      }

      a12 = (a12 + a13);
      v39 += a11;
    }

    while (v39 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, int8x16_t _Q0, __n128 a10, __n128 a11, uint64_t a12, unint64_t a13, unsigned int a14, __int16 *a15, uint64_t a16)
{
  v20 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.i64[0] = *v20;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v21 = *(v20 + 16);
  if (v21 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v21 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v62[0]) = _H0;
    LOWORD(v62[0]) = _H0;
    _Q0.i32[0] = v62[0];
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v59 = _Q0;
  v27 = *a6;
  if (*(*a6 + 24))
  {
    _D0 = *v27;
  }

  else
  {
    _D0 = NAN;
  }

  v29 = *(v27 + 16);
  if (v29 == 2)
  {
    a10.n128_f32[0] = _D0;
  }

  else if (v29 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v62[0]) = _H0;
    LOWORD(v62[0]) = _H0;
    a10.n128_u32[0] = v62[0];
  }

  else
  {
    a10.n128_u32[0] = _D0;
  }

  v31 = *a7;
  if (*(*a7 + 24))
  {
    _Q0.i64[0] = *v31;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v32 = *(v31 + 16);
  v57 = a10;
  if (v32 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v32 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v62[0]) = _H0;
    LOWORD(v62[0]) = _H0;
    _Q0.i32[0] = v62[0];
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v56 = _Q0;
  v34 = *(a3 + 60);
  v35 = *(a8 + 8);
  v36 = *(a4 + 24);
  v65 = v36;
  v62[1] = a1;
  v62[2] = v35;
  v66 = *(a4 + 60);
  LODWORD(v35) = *(a4 + 44);
  v63 = *(a4 + 52) + HIDWORD(v36) * v34;
  v64 = v35;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v62);
  v38 = *(a3 + 56);
  v39 = *(a4 + 52);
  if (*(a4 + 56) + v39 < HIDWORD(v38))
  {
    v41 = *(a4 + 28) * HIDWORD(v38);
    v42 = a1 + a2;
    v67.val[0] = v59;
    v67.val[1] = v56;
    v43 = vqtbl2q_s8(v67, xmmword_296B8F230);
    v67.val[0].i16[2] = v56.i16[0];
    v44 = vuzp1_s16(*v67.val[0].i8, *v67.val[0].i8);
    do
    {
      v60 = v43;
      v61 = v37;
      v63 = v41 + v39;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v62);
      if (v62[0])
      {
        v45 = 0;
        v46 = (v42 - v62[0]) >> 1;
        if (v42 <= v62[0])
        {
          v46 = 0;
        }

        if (a13 < v46)
        {
          v46 = a13;
        }

        v47 = a15;
        v48 = v57;
        v49 = a11;
        v50 = v60;
        v51 = v61;
        if (v46 >= 4)
        {
          v52 = 0;
          v53 = 0;
          v47 = a15;
          do
          {
            v49.n128_u64[0] = *(v62[0] + v52);
            v51 = vqtbl2q_s8(*v48.n128_u64, xmmword_296B8FDF0);
            vst2q_s16(v47, *v50.i8);
            v47 += 16;
            v45 = v53 + 4;
            v52 += 8;
            v54 = v53 + 8;
            v53 += 4;
          }

          while (v54 <= v46);
        }

        v61 = v51;
        if (v45 < v46)
        {
          do
          {
            v55 = v57.n128_u64[0];
            v55.i16[1] = *(v62[0] + 2 * v45);
            *v47 = vzip1_s16(v44, v55);
            v47 += 4;
            ++v45;
          }

          while (v46 != v45);
          v45 = v46;
        }

        a11 = v49;
        if (a13 > v45)
        {
          bzero(v47, 8 * (a13 - v45));
        }
      }

      a15 = (a15 + a16);
      v39 += a14;
      v43 = v60;
      v37 = v61;
    }

    while (v39 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, int32x4_t _Q0, int32x4_t a10, uint64_t a11, unint64_t a12, unsigned int a13, int32x4_t *a14, uint64_t a15)
{
  v19 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.i64[0] = *v19;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v20 = *(v19 + 16);
  if (v20 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v20 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v63[0]) = _H0;
    LOWORD(v63[0]) = _H0;
    _Q0.i32[0] = v63[0];
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v59 = _Q0;
  v26 = *a6;
  if (*(*a6 + 24))
  {
    _D0 = *v26;
  }

  else
  {
    _D0 = NAN;
  }

  v28 = *(v26 + 16);
  if (v28 == 2)
  {
    *a10.i32 = _D0;
  }

  else if (v28 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v63[0]) = _H0;
    LOWORD(v63[0]) = _H0;
    a10.i32[0] = v63[0];
  }

  else
  {
    a10.i32[0] = _D0;
  }

  v30 = *a7;
  if (*(*a7 + 24))
  {
    _Q0.i64[0] = *v30;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v31 = *(v30 + 16);
  v58 = a10;
  if (v31 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v31 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v63[0]) = _H0;
    LOWORD(v63[0]) = _H0;
    _Q0.i32[0] = v63[0];
  }

  else
  {
    _Q0.i32[0] = *_Q0.i64;
  }

  v56 = _Q0;
  v33 = *(a3 + 60);
  v34 = *(a8 + 8);
  v35 = *(a4 + 24);
  v66 = v35;
  v63[1] = a1;
  v63[2] = v34;
  v67 = *(a4 + 60);
  LODWORD(v34) = *(a4 + 44);
  v64 = *(a4 + 52) + HIDWORD(v35) * v33;
  v65 = v34;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v63);
  v37 = *(a3 + 56);
  v38 = *(a4 + 52);
  if (*(a4 + 56) + v38 < HIDWORD(v37))
  {
    v40 = *(a4 + 28) * HIDWORD(v37);
    v41 = a1 + a2;
    v42 = v59;
    v43 = vuzp1q_s32(v59, v56);
    v44 = vuzp1q_s32(v43, v43);
    v42.i32[2] = v56.i32[0];
    v55 = vuzp1q_s32(v42, v42);
    v57 = vdupq_lane_s32(*v58.i8, 0);
    do
    {
      v60 = v44;
      v61 = v36;
      v64 = v40 + v38;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v63);
      v44 = v60;
      v36 = v61;
      v45 = v63[0];
      if (v63[0])
      {
        v46 = 0;
        v47 = (v41 - v63[0]) >> 2;
        if (v41 <= v63[0])
        {
          v47 = 0;
        }

        if (a12 < v47)
        {
          v47 = a12;
        }

        v48 = a14;
        if (v47 >= 4)
        {
          v49 = 0;
          v50 = a14;
          do
          {
            v51 = *v45++;
            v68.val[1] = vzip1q_s32(v58, v51);
            v68.val[1].i32[2] = v58.i32[0];
            v36 = vzip2q_s32(v57, v51);
            v48 = (v50 + 16);
            v68.val[0] = v60;
            vst2q_f32(v50, v68);
            v52 = v50 + 8;
            vst2q_f32(v52, *(&v36 - 1));
            v46 = v49 + 4;
            v53 = v49 + 8;
            v49 += 4;
            v50 = v48;
          }

          while (v53 <= v47);
        }

        if (v46 < v47)
        {
          do
          {
            v54 = v58;
            v54.i32[1] = *(v63[0] + 4 * v46);
            *v48++ = vzip1q_s32(v55, v54);
            ++v46;
          }

          while (v47 != v46);
          v46 = v47;
        }

        if (a12 > v46)
        {
          v62 = v36;
          bzero(v48, 16 * (a12 - v46));
          v44 = v60;
          v36 = v62;
        }
      }

      a14 = (a14 + a15);
      v38 += a13;
    }

    while (v38 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, unint64_t a10, unsigned int a11, __int16 *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v70 = v22;
  v67[1] = a1;
  v67[2] = v21;
  v71 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v68 = *(a4 + 52) + HIDWORD(v22) * v20;
  v69 = v21;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v67);
  v26 = *a6;
  if (*(*a6 + 24))
  {
    _D0 = *v26;
  }

  else
  {
    _D0 = NAN;
  }

  v28 = *(v26 + 16);
  switch(v28)
  {
    case 2:
      *&v24 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      WORD1(v62[0]) = _H0;
      LOWORD(v62[0]) = _H0;
      LODWORD(v24) = v62[0];
      break;
    case 0:
      LODWORD(v24) = _D0;
      break;
  }

  v34 = *a7;
  if (*(*a7 + 24))
  {
    *&_Q0 = *v34;
  }

  else
  {
    *&_Q0 = 0x7FF8000000000000;
  }

  v35 = *(v34 + 16);
  v58 = v24;
  v59 = v25;
  if (v35 == 2)
  {
    *&v24 = *&_Q0;
  }

  else if (v35 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v62[0]) = _Q0;
    LOWORD(v62[0]) = _Q0;
    LODWORD(v24) = v62[0];
  }

  else
  {
    v60 = v24;
    v61 = v25;
    if (v35)
    {
      goto LABEL_20;
    }

    LODWORD(v24) = *&_Q0;
  }

  v60 = _Q0;
  v61 = v24;
LABEL_20:
  v36 = *(a3 + 60);
  v37 = *(a8 + 8);
  v38 = *(a4 + 24);
  v65 = v38;
  v62[1] = a1;
  v62[2] = v37;
  v66 = *(a4 + 60);
  LODWORD(v37) = *(a4 + 44);
  v63 = *(a4 + 52) + HIDWORD(v38) * v36;
  v64 = v37;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v62);
  v39 = *(a3 + 56);
  v40 = *(a4 + 52);
  if (*(a4 + 56) + v40 < HIDWORD(v39))
  {
    v42 = *(a4 + 28) * HIDWORD(v39);
    v57 = a1 + a2;
    do
    {
      v68 = v42 + v40;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v67);
      v63 = v42 + v40;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v62);
      if (v67[0] && v62[0])
      {
        v44 = 0;
        v45 = (v57 - v67[0]) >> 1;
        if (v57 <= v67[0])
        {
          v45 = 0;
        }

        if (v45 >= a10)
        {
          v45 = a10;
        }

        v46 = (v57 - v62[0]) >> 1;
        if (v57 <= v62[0])
        {
          v46 = 0;
        }

        if (v45 < v46)
        {
          v46 = v45;
        }

        v47 = a12;
        v48 = v58;
        v49 = v59;
        v50 = v60;
        v51 = v61;
        if (v46 >= 4)
        {
          v52 = 0;
          v53 = 0;
          v47 = a12;
          do
          {
            *&v50 = *(v67[0] + v52);
            v43 = vqtbl2q_s8(*&v50, xmmword_296B8FDC0);
            *&v49 = *(v62[0] + v52);
            v54 = vqtbl2q_s8(*&v48, xmmword_296B8FDF0);
            vst2q_s16(v47, *v43.i8);
            v47 += 16;
            v44 = v53 + 4;
            v52 += 8;
            v55 = v53 + 8;
            v53 += 4;
          }

          while (v55 <= v46);
        }

        v60 = v50;
        if (v44 < v46)
        {
          do
          {
            v43.i16[0] = *(v67[0] + 2 * v44);
            v43.i16[2] = v61;
            v56 = v58;
            v56.i16[1] = *(v62[0] + 2 * v44);
            *v43.i8 = vzip1_s16(vuzp1_s16(*v43.i8, *v43.i8), v56);
            *v47 = v43.i64[0];
            v47 += 4;
            ++v44;
          }

          while (v46 != v44);
          v44 = v46;
        }

        v59 = v49;
        if (a10 > v44)
        {
          bzero(v47, 8 * (a10 - v44));
        }
      }

      a12 = (a12 + a13);
      v40 += a11;
    }

    while (v40 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, unint64_t a10, unsigned int a11, int32x4_t *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v71 = v22;
  v68[1] = a1;
  v68[2] = v21;
  v72 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v69 = *(a4 + 52) + HIDWORD(v22) * v20;
  v70 = v21;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v68);
  v25 = *a6;
  if (*(*a6 + 24))
  {
    _D0 = *v25;
  }

  else
  {
    _D0 = NAN;
  }

  v27 = *(v25 + 16);
  switch(v27)
  {
    case 2:
      *v24.i32 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      WORD1(v63[0]) = _H0;
      LOWORD(v63[0]) = _H0;
      v24.i32[0] = v63[0];
      break;
    case 0:
      v24.i32[0] = _D0;
      break;
  }

  v33 = *a7;
  if (*(*a7 + 24))
  {
    _Q0.i64[0] = *v33;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v34 = *(v33 + 16);
  v61 = v24;
  if (v34 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v34 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v63[0]) = _H0;
    LOWORD(v63[0]) = _H0;
    _Q0.i32[0] = v63[0];
  }

  else
  {
    v62 = v24;
    if (v34)
    {
      goto LABEL_20;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  v62 = _Q0;
LABEL_20:
  v36 = *(a3 + 60);
  v37 = *(a8 + 8);
  v38 = *(a4 + 24);
  v66 = v38;
  v63[1] = a1;
  v63[2] = v37;
  v67 = *(a4 + 60);
  LODWORD(v37) = *(a4 + 44);
  v64 = *(a4 + 52) + HIDWORD(v38) * v36;
  v65 = v37;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v63);
  v39 = *(a3 + 56);
  v40 = *(a4 + 52);
  if (*(a4 + 56) + v40 < HIDWORD(v39))
  {
    v42 = a2;
    v43 = *(a4 + 28) * HIDWORD(v39);
    v58 = a1 + v42;
    v59 = vdupq_lane_s32(*v61.i8, 0);
    v60 = vdupq_lane_s32(*v62.i8, 0);
    do
    {
      v69 = v43 + v40;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v68);
      v64 = v43 + v40;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v63);
      v45 = v68[0];
      if (v68[0])
      {
        v46 = v63[0];
        if (v63[0])
        {
          v47 = 0;
          v48 = (v58 - v68[0]) >> 2;
          if (v58 <= v68[0])
          {
            v48 = 0;
          }

          if (v48 >= a10)
          {
            v48 = a10;
          }

          v49 = (v58 - v63[0]) >> 2;
          if (v58 <= v63[0])
          {
            v49 = 0;
          }

          if (v48 >= v49)
          {
            v48 = v49;
          }

          v50 = a12;
          if (v48 >= 4)
          {
            v51 = 0;
            v52 = a12;
            do
            {
              v53 = *v45++;
              v44 = v53;
              v54 = *v46++;
              v73.val[0] = vzip1q_s32(v44, v62);
              v73.val[0].i32[3] = v62.i32[0];
              v73.val[1] = vzip1q_s32(v61, v54);
              v73.val[1].i32[2] = v61.i32[0];
              v50 = (v52 + 16);
              vst2q_f32(v52, v73);
              v55 = v52 + 8;
              v73.val[0] = vzip2q_s32(v44, v60);
              v73.val[1] = vzip2q_s32(v59, v54);
              vst2q_f32(v55, v73);
              v47 = v51 + 4;
              v56 = v51 + 8;
              v51 += 4;
              v52 = v50;
            }

            while (v56 <= v48);
          }

          if (v47 < v48)
          {
            do
            {
              v44.i32[0] = *(v68[0] + 4 * v47);
              v44.i32[2] = v62.i32[0];
              v57 = v61;
              v57.i32[1] = *(v63[0] + 4 * v47);
              v44 = vzip1q_s32(vuzp1q_s32(v44, v44), v57);
              *v50++ = v44;
              ++v47;
            }

            while (v48 != v47);
            v47 = v48;
          }

          if (a10 > v47)
          {
            bzero(v50, 16 * (a10 - v47));
          }
        }
      }

      a12 = (a12 + a13);
      v40 += a11;
    }

    while (v40 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, int8x16_t _Q0, int8x16_t a10, uint64_t a11, unint64_t a12, unsigned int a13, __int16 *a14, uint64_t a15)
{
  v21 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.i64[0] = *v21;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v22 = *(v21 + 16);
  if (v22 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v22 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v66[0]) = _H0;
    LOWORD(v66[0]) = _H0;
    _Q0.i32[0] = v66[0];
  }

  else
  {
    if (v22)
    {
      goto LABEL_11;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  a10 = _Q0;
LABEL_11:
  v28 = *(a3 + 60);
  v29 = *(a6 + 8);
  v30 = *(a4 + 24);
  v69 = v30;
  v66[1] = a1;
  v66[2] = v29;
  v70 = *(a4 + 60);
  LODWORD(v29) = *(a4 + 44);
  v67 = *(a4 + 52) + HIDWORD(v30) * v28;
  v68 = v29;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v66);
  v33 = *a7;
  if (*(*a7 + 24))
  {
    _Q0.i64[0] = *v33;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v34 = *(v33 + 16);
  if (v34 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v34 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v61[0]) = _H0;
    LOWORD(v61[0]) = _H0;
    _Q0.i32[0] = v61[0];
  }

  else
  {
    v56 = v32;
    if (v34)
    {
      goto LABEL_21;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  v56 = _Q0;
LABEL_21:
  v36 = *(a3 + 60);
  v37 = *(a8 + 8);
  v38 = *(a4 + 24);
  v64 = v38;
  v61[1] = a1;
  v61[2] = v37;
  v65 = *(a4 + 60);
  LODWORD(v37) = *(a4 + 44);
  v62 = *(a4 + 52) + HIDWORD(v38) * v36;
  v63 = v37;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v61);
  v40 = *(a3 + 56);
  v41 = *(a4 + 52);
  if (*(a4 + 56) + v41 < HIDWORD(v40))
  {
    v43 = *(a4 + 28) * HIDWORD(v40);
    v44 = a1 + a2;
    v71.val[0] = a10;
    v71.val[1] = v56;
    v45 = vqtbl2q_s8(v71, xmmword_296B8F230);
    v71.val[0].i16[2] = v56.i16[0];
    v46 = vuzp1_s16(*v71.val[0].i8, *v71.val[0].i8);
    do
    {
      v58 = v45;
      v59 = v39;
      v67 = v43 + v41;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v66);
      v62 = v43 + v41;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v61);
      v45 = v58;
      v39 = v59;
      if (v66[0] && v61[0])
      {
        v49 = 0;
        v50 = (v44 - v66[0]) >> 1;
        if (v44 <= v66[0])
        {
          v50 = 0;
        }

        if (a12 < v50)
        {
          v50 = a12;
        }

        v51 = (v44 - v61[0]) >> 1;
        if (v44 <= v61[0])
        {
          v51 = 0;
        }

        if (v50 < v51)
        {
          v51 = v50;
        }

        v52 = a14;
        if (v51 >= 4)
        {
          v53 = 0;
          v54 = 0;
          v52 = a14;
          do
          {
            v47.i64[0] = *(v66[0] + v53);
            v48.i64[0] = *(v61[0] + v53);
            v39 = vzip1q_s16(v47, v48);
            vst2q_s16(v52, *(&v39 - 1));
            v52 += 16;
            v49 = v54 + 4;
            v53 += 8;
            v55 = v54 + 8;
            v54 += 4;
          }

          while (v55 <= v51);
        }

        if (v49 < v51)
        {
          do
          {
            v47.i16[0] = *(v66[0] + 2 * v49);
            v47.i16[1] = *(v61[0] + 2 * v49);
            *v47.i8 = vzip1_s16(v46, *v47.i8);
            *v52 = v47.i64[0];
            v52 += 4;
            ++v49;
          }

          while (v51 != v49);
          v49 = v51;
        }

        if (a12 > v49)
        {
          v60 = v39;
          bzero(v52, 8 * (a12 - v49));
          v45 = v58;
          v39 = v60;
        }
      }

      a14 = (a14 + a15);
      v41 += a13;
    }

    while (v41 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, int32x4_t _Q0, int32x4_t a10, uint64_t a11, unint64_t a12, unsigned int a13, int32x4_t *a14, uint64_t a15)
{
  v21 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.i64[0] = *v21;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v22 = *(v21 + 16);
  if (v22 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v22 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v72[0]) = _H0;
    LOWORD(v72[0]) = _H0;
    _Q0.i32[0] = v72[0];
  }

  else
  {
    if (v22)
    {
      goto LABEL_11;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  a10 = _Q0;
LABEL_11:
  v28 = *(a3 + 60);
  v29 = *(a6 + 8);
  v30 = *(a4 + 24);
  v75 = v30;
  v72[1] = a1;
  v72[2] = v29;
  v76 = *(a4 + 60);
  LODWORD(v29) = *(a4 + 44);
  v73 = *(a4 + 52) + HIDWORD(v30) * v28;
  v74 = v29;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v72);
  v33 = *a7;
  if (*(*a7 + 24))
  {
    _Q0.i64[0] = *v33;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v34 = *(v33 + 16);
  if (v34 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v34 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v67[0]) = _H0;
    LOWORD(v67[0]) = _H0;
    _Q0.i32[0] = v67[0];
  }

  else
  {
    v61 = v32;
    if (v34)
    {
      goto LABEL_21;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  v61 = _Q0;
LABEL_21:
  v36 = *(a3 + 60);
  v37 = *(a8 + 8);
  v38 = *(a4 + 24);
  v70 = v38;
  v67[1] = a1;
  v67[2] = v37;
  v71 = *(a4 + 60);
  LODWORD(v37) = *(a4 + 44);
  v68 = *(a4 + 52) + HIDWORD(v38) * v36;
  v69 = v37;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v67);
  v40 = *(a3 + 56);
  v41 = *(a4 + 52);
  if (*(a4 + 56) + v41 < HIDWORD(v40))
  {
    v43 = *(a4 + 28) * HIDWORD(v40);
    v44 = a1 + a2;
    v45 = a10;
    v46 = vuzp1q_s32(a10, v61);
    v47 = vuzp1q_s32(v46, v46);
    v45.i32[2] = v61.i32[0];
    v62 = vuzp1q_s32(v45, v45);
    do
    {
      v64 = v47;
      v65 = v39;
      v73 = v43 + v41;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v72);
      v68 = v43 + v41;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v67);
      v47 = v64;
      v39 = v65;
      v49 = v72[0];
      if (v72[0])
      {
        v50 = v67[0];
        if (v67[0])
        {
          v51 = 0;
          v52 = (v44 - v72[0]) >> 2;
          if (v44 <= v72[0])
          {
            v52 = 0;
          }

          if (a12 < v52)
          {
            v52 = a12;
          }

          v53 = (v44 - v67[0]) >> 2;
          if (v44 <= v67[0])
          {
            v53 = 0;
          }

          if (v52 >= v53)
          {
            v52 = v53;
          }

          v54 = a14;
          if (v52 >= 4)
          {
            v55 = 0;
            v56 = a14;
            do
            {
              v57 = *v49++;
              v48 = v57;
              v58 = *v50++;
              v77.val[1] = vzip1q_s32(v48, v58);
              v39 = vzip2q_s32(v48, v58);
              v54 = (v56 + 16);
              v77.val[0] = v64;
              vst2q_f32(v56, v77);
              v59 = v56 + 8;
              vst2q_f32(v59, *(&v39 - 1));
              v51 = v55 + 4;
              v60 = v55 + 8;
              v55 += 4;
              v56 = v54;
            }

            while (v60 <= v52);
          }

          if (v51 < v52)
          {
            do
            {
              v48.i32[0] = *(v72[0] + 4 * v51);
              v48.i32[1] = *(v67[0] + 4 * v51);
              v48 = vzip1q_s32(v62, v48);
              *v54++ = v48;
              ++v51;
            }

            while (v52 != v51);
            v51 = v52;
          }

          if (a12 > v51)
          {
            v66 = v39;
            bzero(v54, 16 * (a12 - v51));
            v47 = v64;
            v39 = v66;
          }
        }
      }

      a14 = (a14 + a15);
      v41 += a13;
    }

    while (v41 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, unint64_t a10, unsigned int a11, __int16 *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v71 = v22;
  v68[1] = a1;
  v68[2] = v21;
  v72 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v69 = *(a4 + 52) + HIDWORD(v22) * v20;
  v70 = v21;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v68);
  v23 = *(a3 + 60);
  v24 = *(a6 + 8);
  v25 = *(a4 + 24);
  v66 = v25;
  v63[1] = a1;
  v63[2] = v24;
  v67 = *(a4 + 60);
  LODWORD(v24) = *(a4 + 44);
  v64 = *(a4 + 52) + HIDWORD(v25) * v23;
  v65 = v24;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v63);
  v29 = *a7;
  if (*(*a7 + 24))
  {
    *&_Q0 = *v29;
  }

  else
  {
    *&_Q0 = 0x7FF8000000000000;
  }

  v30 = *(v29 + 16);
  if (v30 == 2)
  {
    *&v27 = *&_Q0;
  }

  else if (v30 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v58[0]) = _Q0;
    LOWORD(v58[0]) = _Q0;
    LODWORD(v27) = v58[0];
  }

  else
  {
    v56 = v27;
    v57 = v28;
    if (v30)
    {
      goto LABEL_11;
    }

    LODWORD(v27) = *&_Q0;
  }

  v56 = _Q0;
  v57 = v27;
LABEL_11:
  v35 = *(a3 + 60);
  v36 = *(a8 + 8);
  v37 = *(a4 + 24);
  v61 = v37;
  v58[1] = a1;
  v58[2] = v36;
  v62 = *(a4 + 60);
  LODWORD(v36) = *(a4 + 44);
  v59 = *(a4 + 52) + HIDWORD(v37) * v35;
  v60 = v36;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v58);
  v38 = *(a3 + 56);
  v39 = *(a4 + 52);
  if (*(a4 + 56) + v39 < HIDWORD(v38))
  {
    v41 = *(a4 + 28) * HIDWORD(v38);
    v42 = a1 + a2;
    do
    {
      v69 = v41 + v39;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v68);
      v64 = v41 + v39;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v63);
      v59 = v41 + v39;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v58);
      if (v68[0] && v63[0] && v58[0])
      {
        v45 = 0;
        v46 = (v42 - v68[0]) >> 1;
        if (v42 <= v68[0])
        {
          v46 = 0;
        }

        if (v46 >= a10)
        {
          v46 = a10;
        }

        v47 = (v42 - v63[0]) >> 1;
        if (v42 <= v63[0])
        {
          v47 = 0;
        }

        if (v46 < v47)
        {
          v47 = v46;
        }

        v48 = (v42 - v58[0]) >> 1;
        if (v42 <= v58[0])
        {
          v48 = 0;
        }

        if (v47 < v48)
        {
          v48 = v47;
        }

        v49 = a12;
        v50 = v56;
        v51 = v57;
        if (v48 >= 4)
        {
          v52 = 0;
          v53 = 0;
          v49 = a12;
          do
          {
            *&v50 = *(v68[0] + v52);
            v43.i64[0] = *(v63[0] + v52);
            v73.val[0] = vqtbl2q_s8(*&v50, xmmword_296B8FDC0);
            v44.i64[0] = *(v58[0] + v52);
            v73.val[1] = vzip1q_s16(v43, v44);
            vst2q_s16(v49, v73);
            v49 += 16;
            v45 = v53 + 4;
            v52 += 8;
            v54 = v53 + 8;
            v53 += 4;
          }

          while (v54 <= v48);
        }

        v56 = v50;
        if (v45 < v48)
        {
          do
          {
            LOWORD(v55) = *(v68[0] + 2 * v45);
            WORD1(v55) = *(v63[0] + 2 * v45);
            WORD2(v55) = v57;
            HIWORD(v55) = *(v58[0] + 2 * v45);
            *v49 = v55;
            v49 += 4;
            ++v45;
          }

          while (v48 != v45);
          v45 = v48;
        }

        if (a10 > v45)
        {
          bzero(v49, 8 * (a10 - v45));
        }
      }

      a12 = (a12 + a13);
      v39 += a11;
    }

    while (v39 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, unint64_t a10, unsigned int a11, float *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v76 = v22;
  v73[1] = a1;
  v73[2] = v21;
  v77 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v74 = *(a4 + 52) + HIDWORD(v22) * v20;
  v75 = v21;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v73);
  v23 = *(a3 + 60);
  v24 = *(a6 + 8);
  v25 = *(a4 + 24);
  v71 = v25;
  v68[1] = a1;
  v68[2] = v24;
  v72 = *(a4 + 60);
  LODWORD(v24) = *(a4 + 44);
  v69 = *(a4 + 52) + HIDWORD(v25) * v23;
  v70 = v24;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v68);
  v28 = *a7;
  if (*(*a7 + 24))
  {
    _Q0.i64[0] = *v28;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v29 = *(v28 + 16);
  if (v29 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v29 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v63[0]) = _H0;
    LOWORD(v63[0]) = _H0;
    _Q0.i32[0] = v63[0];
  }

  else
  {
    v62 = v27;
    if (v29)
    {
      goto LABEL_11;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  v62 = _Q0;
LABEL_11:
  v35 = *(a3 + 60);
  v36 = *(a8 + 8);
  v37 = *(a4 + 24);
  v66 = v37;
  v63[1] = a1;
  v63[2] = v36;
  v67 = *(a4 + 60);
  LODWORD(v36) = *(a4 + 44);
  v64 = *(a4 + 52) + HIDWORD(v37) * v35;
  v65 = v36;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v63);
  v38 = *(a3 + 56);
  v39 = *(a4 + 52);
  if (*(a4 + 56) + v39 < HIDWORD(v38))
  {
    v41 = *(a4 + 28) * HIDWORD(v38);
    v42 = a1 + a2;
    v61 = vdupq_lane_s32(*v62.i8, 0);
    do
    {
      v74 = v41 + v39;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v73);
      v69 = v41 + v39;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v68);
      v64 = v41 + v39;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v63);
      v43 = v73[0];
      if (v73[0])
      {
        v44 = v68[0];
        if (v68[0])
        {
          v45 = v63[0];
          if (v63[0])
          {
            v46 = 0;
            v47 = (v42 - v73[0]) >> 2;
            if (v42 <= v73[0])
            {
              v47 = 0;
            }

            if (v47 >= a10)
            {
              v47 = a10;
            }

            v48 = (v42 - v68[0]) >> 2;
            if (v42 <= v68[0])
            {
              v48 = 0;
            }

            if (v47 >= v48)
            {
              v47 = v48;
            }

            v49 = (v42 - v63[0]) >> 2;
            if (v42 <= v63[0])
            {
              v49 = 0;
            }

            if (v47 >= v49)
            {
              v47 = v49;
            }

            v50 = a12;
            if (v47 >= 4)
            {
              v51 = 0;
              v52 = a12;
              do
              {
                v53 = *v43++;
                v54 = v53;
                v55 = *v44++;
                v56 = v55;
                v57 = *v45++;
                v78.val[0] = vzip1q_s32(v54, v62);
                v78.val[0].i32[3] = v62.i32[0];
                v78.val[1] = vzip1q_s32(v56, v57);
                v50 = v52 + 16;
                vst2q_f32(v52, v78);
                v58 = v52 + 8;
                v78.val[0] = vzip2q_s32(v54, v61);
                v78.val[1] = vzip2q_s32(v56, v57);
                vst2q_f32(v58, v78);
                v46 = v51 + 4;
                v59 = v51 + 8;
                v51 += 4;
                v52 = v50;
              }

              while (v59 <= v47);
            }

            if (v46 < v47)
            {
              do
              {
                LODWORD(v60) = *(v73[0] + 4 * v46);
                DWORD1(v60) = *(v68[0] + 4 * v46);
                DWORD2(v60) = v62.i32[0];
                HIDWORD(v60) = *(v63[0] + 4 * v46);
                *v50 = v60;
                v50 += 4;
                ++v46;
              }

              while (v47 != v46);
              v46 = v47;
            }

            if (a10 > v46)
            {
              bzero(v50, 16 * (a10 - v46));
            }
          }
        }
      }

      a12 = (a12 + a13);
      v39 += a11;
    }

    while (v39 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, __n128 _Q0, __n128 a10, __n128 a11, uint64_t a12, unint64_t a13, unsigned int a14, __int16 *a15, uint64_t a16)
{
  v21 = *a5;
  if (*(*a5 + 24))
  {
    _D0 = *v21;
  }

  else
  {
    _D0 = NAN;
  }

  v23 = *(v21 + 16);
  switch(v23)
  {
    case 2:
      a10.n128_f32[0] = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      WORD1(v65[0]) = _H0;
      LOWORD(v65[0]) = _H0;
      a10.n128_u32[0] = v65[0];
      break;
    case 0:
      a10.n128_u32[0] = _D0;
      break;
  }

  v29 = *a6;
  if (*(*a6 + 24))
  {
    _Q0.n128_u64[0] = *v29;
  }

  else
  {
    _Q0.n128_u64[0] = 0x7FF8000000000000;
  }

  v30 = *(v29 + 16);
  v56 = a10;
  v57 = a11;
  if (v30 == 2)
  {
    _Q0.n128_f32[0] = _Q0.n128_f64[0];
  }

  else if (v30 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v65[0]) = _H0;
    LOWORD(v65[0]) = _H0;
    _Q0.n128_u32[0] = v65[0];
  }

  else
  {
    v58 = a10;
    v59 = a11;
    if (v30)
    {
      goto LABEL_20;
    }

    _Q0.n128_u32[0] = _Q0.n128_f64[0];
  }

  v58 = _Q0;
  v59 = a10;
LABEL_20:
  v32 = *(a3 + 60);
  v33 = *(a7 + 8);
  v34 = *(a4 + 24);
  v68 = v34;
  v65[1] = a1;
  v65[2] = v33;
  v69 = *(a4 + 60);
  LODWORD(v33) = *(a4 + 44);
  v66 = *(a4 + 52) + HIDWORD(v34) * v32;
  v67 = v33;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v65);
  v35 = *(a3 + 60);
  v36 = *(a8 + 8);
  v37 = *(a4 + 24);
  v63 = v37;
  v60[1] = a1;
  v60[2] = v36;
  v64 = *(a4 + 60);
  LODWORD(v36) = *(a4 + 44);
  v61 = *(a4 + 52) + HIDWORD(v37) * v35;
  v62 = v36;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v60);
  v38 = *(a3 + 56);
  v39 = *(a4 + 52);
  if (*(a4 + 56) + v39 < HIDWORD(v38))
  {
    v41 = *(a4 + 28) * HIDWORD(v38);
    v42 = a1 + a2;
    do
    {
      v66 = v41 + v39;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v65);
      v61 = v41 + v39;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v60);
      if (v65[0] && v60[0])
      {
        v43 = 0;
        v44 = (v42 - v65[0]) >> 1;
        if (v42 <= v65[0])
        {
          v44 = 0;
        }

        if (a13 < v44)
        {
          v44 = a13;
        }

        v45 = (v42 - v60[0]) >> 1;
        if (v42 <= v60[0])
        {
          v45 = 0;
        }

        if (v44 < v45)
        {
          v45 = v44;
        }

        v46 = a15;
        v47 = v56;
        v48 = v57;
        v49 = v58;
        v50 = v59;
        if (v45 >= 4)
        {
          v51 = 0;
          v52 = 0;
          v46 = a15;
          do
          {
            v48.n128_u64[0] = *(v65[0] + v51);
            v70.val[0] = vqtbl2q_s8(*v47.n128_u64, xmmword_296B8FDF0);
            v50.n128_u64[0] = *(v60[0] + v51);
            v70.val[1] = vqtbl2q_s8(*v49.n128_u64, xmmword_296B8FDF0);
            vst2q_s16(v46, v70);
            v46 += 16;
            v43 = v52 + 4;
            v51 += 8;
            v53 = v52 + 8;
            v52 += 4;
          }

          while (v53 <= v45);
        }

        if (v43 < v45)
        {
          do
          {
            v54 = v56.n128_u64[0];
            v54.i16[2] = *(v65[0] + 2 * v43);
            v55 = v58.n128_u64[0];
            v55.i16[1] = *(v60[0] + 2 * v43);
            *v46 = vzip1_s16(vuzp1_s16(v54, v54), v55);
            v46 += 4;
            ++v43;
          }

          while (v45 != v43);
          v43 = v45;
        }

        v59 = v50;
        v57 = v48;
        if (a13 > v43)
        {
          bzero(v46, 8 * (a13 - v43));
        }
      }

      a15 = (a15 + a16);
      v39 += a14;
    }

    while (v39 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, int32x4_t _Q0, int32x4_t a10, uint64_t a11, unint64_t a12, unsigned int a13, int32x4_t *a14, uint64_t a15)
{
  v20 = *a5;
  if (*(*a5 + 24))
  {
    _D0 = *v20;
  }

  else
  {
    _D0 = NAN;
  }

  v22 = *(v20 + 16);
  switch(v22)
  {
    case 2:
      *a10.i32 = _D0;
      break;
    case 1:
      __asm { FCVT            H0, D0 }

      WORD1(v66[0]) = _H0;
      LOWORD(v66[0]) = _H0;
      a10.i32[0] = v66[0];
      break;
    case 0:
      a10.i32[0] = _D0;
      break;
  }

  v28 = *a6;
  if (*(*a6 + 24))
  {
    _Q0.i64[0] = *v28;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v29 = *(v28 + 16);
  v59 = a10;
  if (v29 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v29 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v66[0]) = _H0;
    LOWORD(v66[0]) = _H0;
    _Q0.i32[0] = v66[0];
  }

  else
  {
    v60 = a10;
    if (v29)
    {
      goto LABEL_20;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  v60 = _Q0;
LABEL_20:
  v31 = *(a3 + 60);
  v32 = *(a7 + 8);
  v33 = *(a4 + 24);
  v69 = v33;
  v66[1] = a1;
  v66[2] = v32;
  v70 = *(a4 + 60);
  LODWORD(v32) = *(a4 + 44);
  v67 = *(a4 + 52) + HIDWORD(v33) * v31;
  v68 = v32;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v66);
  v34 = *(a3 + 60);
  v35 = *(a8 + 8);
  v36 = *(a4 + 24);
  v64 = v36;
  v61[1] = a1;
  v61[2] = v35;
  v65 = *(a4 + 60);
  LODWORD(v35) = *(a4 + 44);
  v62 = *(a4 + 52) + HIDWORD(v36) * v34;
  v63 = v35;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v61);
  v37 = *(a3 + 56);
  v38 = *(a4 + 52);
  if (*(a4 + 56) + v38 < HIDWORD(v37))
  {
    v40 = *(a4 + 28) * HIDWORD(v37);
    v41 = a1 + a2;
    v57 = vdupq_lane_s32(*v60.i8, 0);
    v58 = vdupq_lane_s32(*v59.i8, 0);
    do
    {
      v67 = v40 + v38;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v66);
      v62 = v40 + v38;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v61);
      v42 = v66[0];
      if (v66[0])
      {
        v43 = v61[0];
        if (v61[0])
        {
          v44 = 0;
          v45 = (v41 - v66[0]) >> 2;
          if (v41 <= v66[0])
          {
            v45 = 0;
          }

          if (a12 < v45)
          {
            v45 = a12;
          }

          v46 = (v41 - v61[0]) >> 2;
          if (v41 <= v61[0])
          {
            v46 = 0;
          }

          if (v45 >= v46)
          {
            v45 = v46;
          }

          v47 = a14;
          if (v45 >= 4)
          {
            v48 = 0;
            v49 = a14;
            do
            {
              v50 = *v42++;
              v51 = v50;
              v52 = *v43++;
              v71.val[0] = vzip1q_s32(v59, v51);
              v71.val[0].i32[2] = v59.i32[0];
              v71.val[1] = vzip1q_s32(v60, v52);
              v71.val[1].i32[2] = v60.i32[0];
              v47 = (v49 + 16);
              vst2q_f32(v49, v71);
              v53 = v49 + 8;
              v71.val[0] = vzip2q_s32(v58, v51);
              v71.val[1] = vzip2q_s32(v57, v52);
              vst2q_f32(v53, v71);
              v44 = v48 + 4;
              v54 = v48 + 8;
              v48 += 4;
              v49 = v47;
            }

            while (v54 <= v45);
          }

          if (v44 < v45)
          {
            do
            {
              v55 = v59;
              v55.i32[2] = *(v66[0] + 4 * v44);
              v56 = v60;
              v56.i32[1] = *(v61[0] + 4 * v44);
              *v47++ = vzip1q_s32(vuzp1q_s32(v55, v55), v56);
              ++v44;
            }

            while (v45 != v44);
            v44 = v45;
          }

          if (a12 > v44)
          {
            bzero(v47, 16 * (a12 - v44));
          }
        }
      }

      a14 = (a14 + a15);
      v38 += a13;
    }

    while (v38 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unsigned int a11, __int16 *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v72 = v22;
  v69[1] = a1;
  v69[2] = v21;
  v73 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v70 = *(a4 + 52) + HIDWORD(v22) * v20;
  v71 = v21;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v69);
  v26 = *a6;
  if (*(*a6 + 24))
  {
    *&_Q0 = *v26;
  }

  else
  {
    *&_Q0 = 0x7FF8000000000000;
  }

  v27 = *(v26 + 16);
  if (v27 == 2)
  {
    *&_Q0 = *&_Q0;
  }

  else if (v27 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v64[0]) = _H0;
    LOWORD(v64[0]) = _H0;
    LODWORD(_Q0) = v64[0];
  }

  else
  {
    v57 = v24;
    v58 = v25;
    if (v27)
    {
      goto LABEL_11;
    }

    LODWORD(_Q0) = *&_Q0;
  }

  v57 = _Q0;
  v58 = v24;
LABEL_11:
  v33 = *(a3 + 60);
  v34 = *(a7 + 8);
  v35 = *(a4 + 24);
  v67 = v35;
  v64[1] = a1;
  v64[2] = v34;
  v68 = *(a4 + 60);
  LODWORD(v34) = *(a4 + 44);
  v65 = *(a4 + 52) + HIDWORD(v35) * v33;
  v66 = v34;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v64);
  v36 = *(a3 + 60);
  v37 = *(a8 + 8);
  v38 = *(a4 + 24);
  v62 = v38;
  v59[1] = a1;
  v59[2] = v37;
  v63 = *(a4 + 60);
  LODWORD(v37) = *(a4 + 44);
  v60 = *(a4 + 52) + HIDWORD(v38) * v36;
  v61 = v37;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v59);
  v39 = *(a3 + 56);
  v40 = *(a4 + 52);
  if (*(a4 + 56) + v40 < HIDWORD(v39))
  {
    v42 = *(a4 + 28) * HIDWORD(v39);
    v43 = a1 + a2;
    do
    {
      v70 = v42 + v40;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v69);
      v65 = v42 + v40;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v64);
      v60 = v42 + v40;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v59);
      if (v69[0] && v64[0] && v59[0])
      {
        v46 = 0;
        v47 = (v43 - v69[0]) >> 1;
        if (v43 <= v69[0])
        {
          v47 = 0;
        }

        if (v47 >= a10)
        {
          v47 = a10;
        }

        v48 = (v43 - v64[0]) >> 1;
        if (v43 <= v64[0])
        {
          v48 = 0;
        }

        if (v47 < v48)
        {
          v48 = v47;
        }

        v49 = (v43 - v59[0]) >> 1;
        if (v43 <= v59[0])
        {
          v49 = 0;
        }

        if (v48 < v49)
        {
          v49 = v48;
        }

        v50 = a12;
        v51 = v57;
        v52 = v58;
        if (v49 >= 4)
        {
          v53 = 0;
          v54 = 0;
          v50 = a12;
          do
          {
            v44.i64[0] = *(v69[0] + v53);
            v45.i64[0] = *(v64[0] + v53);
            v44 = vzip1q_s16(v44, v45);
            *&v52 = *(v59[0] + v53);
            v45 = vqtbl2q_s8(*&v51, xmmword_296B8FDF0);
            vst2q_s16(v50, *v44.i8);
            v50 += 16;
            v46 = v54 + 4;
            v53 += 8;
            v55 = v54 + 8;
            v54 += 4;
          }

          while (v55 <= v49);
        }

        if (v46 < v49)
        {
          do
          {
            v44.i16[0] = *(v69[0] + 2 * v46);
            v44.i16[2] = *(v64[0] + 2 * v46);
            v56 = v57;
            v56.i16[1] = *(v59[0] + 2 * v46);
            *v44.i8 = vzip1_s16(vuzp1_s16(*v44.i8, *v44.i8), v56);
            *v50 = v44.i64[0];
            v50 += 4;
            ++v46;
          }

          while (v49 != v46);
          v46 = v49;
        }

        v58 = v52;
        if (a10 > v46)
        {
          bzero(v50, 8 * (a10 - v46));
        }
      }

      a12 = (a12 + a13);
      v40 += a11;
    }

    while (v40 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unsigned int a11, int32x4_t *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v78 = v22;
  v75[1] = a1;
  v75[2] = v21;
  v79 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v76 = *(a4 + 52) + HIDWORD(v22) * v20;
  v77 = v21;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v75);
  v25 = *a6;
  if (*(*a6 + 24))
  {
    _Q0.i64[0] = *v25;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v26 = *(v25 + 16);
  if (v26 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v26 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v70[0]) = _H0;
    LOWORD(v70[0]) = _H0;
    _Q0.i32[0] = v70[0];
  }

  else
  {
    v64 = v24;
    if (v26)
    {
      goto LABEL_11;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  v64 = _Q0;
LABEL_11:
  v32 = *(a3 + 60);
  v33 = *(a7 + 8);
  v34 = *(a4 + 24);
  v73 = v34;
  v70[1] = a1;
  v70[2] = v33;
  v74 = *(a4 + 60);
  LODWORD(v33) = *(a4 + 44);
  v71 = *(a4 + 52) + HIDWORD(v34) * v32;
  v72 = v33;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v70);
  v35 = *(a3 + 60);
  v36 = *(a8 + 8);
  v37 = *(a4 + 24);
  v68 = v37;
  v65[1] = a1;
  v65[2] = v36;
  v69 = *(a4 + 60);
  LODWORD(v36) = *(a4 + 44);
  v66 = *(a4 + 52) + HIDWORD(v37) * v35;
  v67 = v36;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v65);
  v38 = *(a3 + 56);
  v39 = *(a4 + 52);
  if (*(a4 + 56) + v39 < HIDWORD(v38))
  {
    v41 = *(a4 + 28) * HIDWORD(v38);
    v42 = a1 + a2;
    v63 = vdupq_lane_s32(*v64.i8, 0);
    do
    {
      v76 = v41 + v39;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v75);
      v71 = v41 + v39;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v70);
      v66 = v41 + v39;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v65);
      v44 = v75[0];
      if (v75[0])
      {
        v45 = v70[0];
        if (v70[0])
        {
          v46 = v65[0];
          if (v65[0])
          {
            v47 = 0;
            v48 = (v42 - v75[0]) >> 2;
            if (v42 <= v75[0])
            {
              v48 = 0;
            }

            if (v48 >= a10)
            {
              v48 = a10;
            }

            v49 = (v42 - v70[0]) >> 2;
            if (v42 <= v70[0])
            {
              v49 = 0;
            }

            if (v48 >= v49)
            {
              v48 = v49;
            }

            v50 = (v42 - v65[0]) >> 2;
            if (v42 <= v65[0])
            {
              v50 = 0;
            }

            if (v48 >= v50)
            {
              v48 = v50;
            }

            v51 = a12;
            if (v48 >= 4)
            {
              v52 = 0;
              v53 = a12;
              do
              {
                v54 = *v44++;
                v55 = v54;
                v56 = *v45++;
                v57 = v56;
                v58 = *v46++;
                v80.val[0] = vzip1q_s32(v55, v57);
                v80.val[1] = vzip1q_s32(v64, v58);
                v80.val[1].i32[2] = v64.i32[0];
                v51 = (v53 + 16);
                vst2q_f32(v53, v80);
                v59 = v53 + 8;
                v43 = vzip2q_s32(v55, v57);
                v60 = vzip2q_s32(v63, v58);
                vst2q_f32(v59, *v43.i8);
                v47 = v52 + 4;
                v61 = v52 + 8;
                v52 += 4;
                v53 = v51;
              }

              while (v61 <= v48);
            }

            if (v47 < v48)
            {
              do
              {
                v43.i32[0] = *(v75[0] + 4 * v47);
                v43.i32[2] = *(v70[0] + 4 * v47);
                v62 = v64;
                v62.i32[1] = *(v65[0] + 4 * v47);
                v43 = vzip1q_s32(vuzp1q_s32(v43, v43), v62);
                *v51++ = v43;
                ++v47;
              }

              while (v48 != v47);
              v47 = v48;
            }

            if (a10 > v47)
            {
              bzero(v51, 16 * (a10 - v47));
            }
          }
        }
      }

      a12 = (a12 + a13);
      v39 += a11;
    }

    while (v39 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 _Q0, __n128 a10, __n128 a11, uint64_t a12, unint64_t a13, unsigned int a14, __int16 *a15, uint64_t a16)
{
  v22 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.n128_u64[0] = *v22;
  }

  else
  {
    _Q0.n128_u64[0] = 0x7FF8000000000000;
  }

  v23 = *(v22 + 16);
  if (v23 == 2)
  {
    _Q0.n128_f32[0] = _Q0.n128_f64[0];
  }

  else if (v23 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v70[0]) = _H0;
    LOWORD(v70[0]) = _H0;
    _Q0.n128_u32[0] = v70[0];
  }

  else
  {
    v58 = a10;
    if (v23)
    {
      goto LABEL_11;
    }

    _Q0.n128_u32[0] = _Q0.n128_f64[0];
  }

  v58 = _Q0;
  a11 = a10;
LABEL_11:
  v29 = *(a3 + 60);
  v30 = *(a6 + 8);
  v31 = *(a4 + 24);
  v73 = v31;
  v70[1] = a1;
  v70[2] = v30;
  v74 = *(a4 + 60);
  LODWORD(v30) = *(a4 + 44);
  v71 = *(a4 + 52) + HIDWORD(v31) * v29;
  v72 = v30;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v70);
  v32 = *(a3 + 60);
  v33 = *(a7 + 8);
  v34 = *(a4 + 24);
  v68 = v34;
  v65[1] = a1;
  v65[2] = v33;
  v69 = *(a4 + 60);
  LODWORD(v33) = *(a4 + 44);
  v66 = *(a4 + 52) + HIDWORD(v34) * v32;
  v67 = v33;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v65);
  v35 = *(a3 + 60);
  v36 = *(a8 + 8);
  v37 = *(a4 + 24);
  v63 = v37;
  v60[1] = a1;
  v60[2] = v36;
  v64 = *(a4 + 60);
  LODWORD(v36) = *(a4 + 44);
  v61 = *(a4 + 52) + HIDWORD(v37) * v35;
  v62 = v36;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v60);
  v38 = *(a3 + 56);
  v39 = *(a4 + 52);
  if (*(a4 + 56) + v39 < HIDWORD(v38))
  {
    v41 = *(a4 + 28) * HIDWORD(v38);
    v42 = a1 + a2;
    do
    {
      v71 = v41 + v39;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v70);
      v66 = v41 + v39;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v65);
      v61 = v41 + v39;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v60);
      if (v70[0] && v65[0] && v60[0])
      {
        v46 = 0;
        v47 = (v42 - v70[0]) >> 1;
        if (v42 <= v70[0])
        {
          v47 = 0;
        }

        if (a13 < v47)
        {
          v47 = a13;
        }

        v48 = (v42 - v65[0]) >> 1;
        if (v42 <= v65[0])
        {
          v48 = 0;
        }

        if (v47 < v48)
        {
          v48 = v47;
        }

        v49 = (v42 - v60[0]) >> 1;
        if (v42 <= v60[0])
        {
          v49 = 0;
        }

        if (v48 < v49)
        {
          v49 = v48;
        }

        v50 = a15;
        v51 = v58;
        v52 = a11;
        if (v49 >= 4)
        {
          v53 = 0;
          v54 = 0;
          v50 = a15;
          do
          {
            v43.i64[0] = *(v70[0] + v53);
            v52.n128_u64[0] = *(v65[0] + v53);
            v44 = vqtbl2q_s8(*v51.n128_u64, xmmword_296B8FDF0);
            v45.i64[0] = *(v60[0] + v53);
            v55 = vzip1q_s16(v43, v45);
            vst2q_s16(v50, *v44.i8);
            v50 += 16;
            v46 = v54 + 4;
            v53 += 8;
            v56 = v54 + 8;
            v54 += 4;
          }

          while (v56 <= v49);
        }

        if (v46 < v49)
        {
          do
          {
            v57 = v58.n128_u64[0];
            v57.i16[2] = *(v65[0] + 2 * v46);
            v44.i16[0] = *(v70[0] + 2 * v46);
            v44.i16[1] = *(v60[0] + 2 * v46);
            *v50 = vzip1_s16(vuzp1_s16(v57, v57), *v44.i8);
            v50 += 4;
            ++v46;
          }

          while (v49 != v46);
          v46 = v49;
        }

        a11 = v52;
        if (a13 > v46)
        {
          bzero(v50, 8 * (a13 - v46));
        }
      }

      a15 = (a15 + a16);
      v39 += a14;
    }

    while (v39 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, int32x4_t _Q0, int32x4_t a10, uint64_t a11, unint64_t a12, unsigned int a13, int32x4_t *a14, uint64_t a15)
{
  v21 = *a5;
  if (*(*a5 + 24))
  {
    _Q0.i64[0] = *v21;
  }

  else
  {
    _Q0.i64[0] = 0x7FF8000000000000;
  }

  v22 = *(v21 + 16);
  if (v22 == 2)
  {
    *_Q0.i32 = *_Q0.i64;
  }

  else if (v22 == 1)
  {
    __asm { FCVT            H0, D0 }

    WORD1(v72[0]) = _H0;
    LOWORD(v72[0]) = _H0;
    _Q0.i32[0] = v72[0];
  }

  else
  {
    if (v22)
    {
      goto LABEL_11;
    }

    _Q0.i32[0] = *_Q0.i64;
  }

  a10 = _Q0;
LABEL_11:
  v28 = *(a3 + 60);
  v29 = *(a6 + 8);
  v30 = *(a4 + 24);
  v75 = v30;
  v72[1] = a1;
  v72[2] = v29;
  v76 = *(a4 + 60);
  LODWORD(v29) = *(a4 + 44);
  v73 = *(a4 + 52) + HIDWORD(v30) * v28;
  v74 = v29;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v72);
  v31 = *(a3 + 60);
  v32 = *(a7 + 8);
  v33 = *(a4 + 24);
  v70 = v33;
  v67[1] = a1;
  v67[2] = v32;
  v71 = *(a4 + 60);
  LODWORD(v32) = *(a4 + 44);
  v68 = *(a4 + 52) + HIDWORD(v33) * v31;
  v69 = v32;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v67);
  v34 = *(a3 + 60);
  v35 = *(a8 + 8);
  v36 = *(a4 + 24);
  v65 = v36;
  v62[1] = a1;
  v62[2] = v35;
  v66 = *(a4 + 60);
  LODWORD(v35) = *(a4 + 44);
  v63 = *(a4 + 52) + HIDWORD(v36) * v34;
  v64 = v35;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v62);
  v37 = *(a3 + 56);
  v38 = *(a4 + 52);
  if (*(a4 + 56) + v38 < HIDWORD(v37))
  {
    v40 = *(a4 + 28) * HIDWORD(v37);
    v41 = a1 + a2;
    v60 = vdupq_lane_s32(*a10.i8, 0);
    do
    {
      v73 = v40 + v38;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v72);
      v68 = v40 + v38;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v67);
      v63 = v40 + v38;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v62);
      v43 = v72[0];
      if (v72[0])
      {
        v44 = v67[0];
        if (v67[0])
        {
          v45 = v62[0];
          if (v62[0])
          {
            v46 = 0;
            v47 = (v41 - v72[0]) >> 2;
            if (v41 <= v72[0])
            {
              v47 = 0;
            }

            if (a12 < v47)
            {
              v47 = a12;
            }

            v48 = (v41 - v67[0]) >> 2;
            if (v41 <= v67[0])
            {
              v48 = 0;
            }

            if (v47 >= v48)
            {
              v47 = v48;
            }

            v49 = (v41 - v62[0]) >> 2;
            if (v41 <= v62[0])
            {
              v49 = 0;
            }

            if (v47 >= v49)
            {
              v47 = v49;
            }

            v50 = a14;
            if (v47 >= 4)
            {
              v51 = 0;
              v52 = a14;
              do
              {
                v53 = *v43++;
                v54 = v53;
                v55 = *v44++;
                v42 = v55;
                v56 = *v45++;
                v77.val[0] = vzip1q_s32(a10, v42);
                v77.val[0].i32[2] = a10.i32[0];
                v77.val[1] = vzip1q_s32(v54, v56);
                v50 = (v52 + 16);
                vst2q_f32(v52, v77);
                v57 = v52 + 8;
                v77.val[0] = vzip2q_s32(v60, v42);
                v77.val[1] = vzip2q_s32(v54, v56);
                vst2q_f32(v57, v77);
                v46 = v51 + 4;
                v58 = v51 + 8;
                v51 += 4;
                v52 = v50;
              }

              while (v58 <= v47);
            }

            if (v46 < v47)
            {
              do
              {
                v59 = a10;
                v59.i32[2] = *(v67[0] + 4 * v46);
                v42.i32[0] = *(v72[0] + 4 * v46);
                v42.i32[1] = *(v62[0] + 4 * v46);
                *v50++ = vzip1q_s32(vuzp1q_s32(v59, v59), v42);
                ++v46;
              }

              while (v47 != v46);
              v46 = v47;
            }

            if (a12 > v46)
            {
              bzero(v50, 16 * (a12 - v46));
            }
          }
        }
      }

      a14 = (a14 + a15);
      v38 += a13;
    }

    while (v38 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unsigned int a11, __int16 *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v69 = v22;
  v66[1] = a1;
  v66[2] = v21;
  v70 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v67 = *(a4 + 52) + HIDWORD(v22) * v20;
  v68 = v21;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v66);
  v23 = *(a3 + 60);
  v24 = *(a6 + 8);
  v25 = *(a4 + 24);
  v64 = v25;
  v61[1] = a1;
  v61[2] = v24;
  v65 = *(a4 + 60);
  LODWORD(v24) = *(a4 + 44);
  v62 = *(a4 + 52) + HIDWORD(v25) * v23;
  v63 = v24;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v61);
  v26 = *(a3 + 60);
  v27 = *(a7 + 8);
  v28 = *(a4 + 24);
  v59 = v28;
  v56[1] = a1;
  v56[2] = v27;
  v60 = *(a4 + 60);
  LODWORD(v27) = *(a4 + 44);
  v57 = *(a4 + 52) + HIDWORD(v28) * v26;
  v58 = v27;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v56);
  v29 = *(a3 + 60);
  v30 = *(a8 + 8);
  v31 = *(a4 + 24);
  v54 = v31;
  v51[1] = a1;
  v51[2] = v30;
  v55 = *(a4 + 60);
  LODWORD(v30) = *(a4 + 44);
  v52 = *(a4 + 52) + HIDWORD(v31) * v29;
  v53 = v30;
  AXRStream<unsigned short,(StreamType)1>::SetDataP(v51);
  v32 = *(a3 + 56);
  v33 = *(a4 + 52);
  if (*(a4 + 56) + v33 < HIDWORD(v32))
  {
    v35 = *(a4 + 28) * HIDWORD(v32);
    v36 = a1 + a2;
    do
    {
      v67 = v35 + v33;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v66);
      v62 = v35 + v33;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v61);
      v57 = v35 + v33;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v56);
      v52 = v35 + v33;
      AXRStream<unsigned short,(StreamType)1>::SetDataP(v51);
      if (v66[0] && v61[0] && v56[0] && v51[0])
      {
        v40 = 0;
        v41 = (v36 - v66[0]) >> 1;
        if (v36 <= v66[0])
        {
          v41 = 0;
        }

        if (v41 >= a10)
        {
          v41 = a10;
        }

        v42 = (v36 - v61[0]) >> 1;
        if (v36 <= v61[0])
        {
          v42 = 0;
        }

        if (v41 < v42)
        {
          v42 = v41;
        }

        v43 = (v36 - v56[0]) >> 1;
        if (v36 <= v56[0])
        {
          v43 = 0;
        }

        if (v42 < v43)
        {
          v43 = v42;
        }

        v44 = (v36 - v51[0]) >> 1;
        if (v36 <= v51[0])
        {
          v44 = 0;
        }

        if (v43 < v44)
        {
          v44 = v43;
        }

        v45 = a12;
        if (v44 >= 4)
        {
          v46 = 0;
          v47 = 0;
          v45 = a12;
          do
          {
            v37.i64[0] = *(v66[0] + v46);
            v38.i64[0] = *(v61[0] + v46);
            v39.i64[0] = *(v56[0] + v46);
            v39 = vzip1q_s16(v37, v39);
            v37.i64[0] = *(v51[0] + v46);
            v48 = vzip1q_s16(v38, v37);
            vst2q_s16(v45, *v39.i8);
            v45 += 16;
            v40 = v47 + 4;
            v46 += 8;
            v49 = v47 + 8;
            v47 += 4;
          }

          while (v49 <= v44);
        }

        if (v40 < v44)
        {
          do
          {
            LOWORD(v50) = *(v66[0] + 2 * v40);
            WORD1(v50) = *(v61[0] + 2 * v40);
            WORD2(v50) = *(v56[0] + 2 * v40);
            HIWORD(v50) = *(v51[0] + 2 * v40);
            *v45 = v50;
            v45 += 4;
            ++v40;
          }

          while (v44 != v40);
          v40 = v44;
        }

        if (a10 > v40)
        {
          bzero(v45, 8 * (a10 - v40));
        }
      }

      a12 = (a12 + a13);
      v33 += a11;
    }

    while (v33 + *(a4 + 56) < *(a3 + 60));
  }
}

void Read4_NoCompression<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unsigned int a11, float *a12, uint64_t a13)
{
  v20 = *(a3 + 60);
  v21 = *(a5 + 8);
  v22 = *(a4 + 24);
  v77 = v22;
  v74[1] = a1;
  v74[2] = v21;
  v78 = *(a4 + 60);
  LODWORD(v21) = *(a4 + 44);
  v75 = *(a4 + 52) + HIDWORD(v22) * v20;
  v76 = v21;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v74);
  v23 = *(a3 + 60);
  v24 = *(a6 + 8);
  v25 = *(a4 + 24);
  v72 = v25;
  v69[1] = a1;
  v69[2] = v24;
  v73 = *(a4 + 60);
  LODWORD(v24) = *(a4 + 44);
  v70 = *(a4 + 52) + HIDWORD(v25) * v23;
  v71 = v24;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v69);
  v26 = *(a3 + 60);
  v27 = *(a7 + 8);
  v28 = *(a4 + 24);
  v67 = v28;
  v64[1] = a1;
  v64[2] = v27;
  v68 = *(a4 + 60);
  LODWORD(v27) = *(a4 + 44);
  v65 = *(a4 + 52) + HIDWORD(v28) * v26;
  v66 = v27;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v64);
  v29 = *(a3 + 60);
  v30 = *(a8 + 8);
  v31 = *(a4 + 24);
  v62 = v31;
  v59[1] = a1;
  v59[2] = v30;
  v63 = *(a4 + 60);
  LODWORD(v30) = *(a4 + 44);
  v60 = *(a4 + 52) + HIDWORD(v31) * v29;
  v61 = v30;
  AXRStream<unsigned int,(StreamType)1>::SetDataP(v59);
  v32 = *(a3 + 56);
  v33 = *(a4 + 52);
  if (*(a4 + 56) + v33 < HIDWORD(v32))
  {
    v35 = *(a4 + 28) * HIDWORD(v32);
    v36 = a1 + a2;
    do
    {
      v75 = v35 + v33;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v74);
      v70 = v35 + v33;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v69);
      v65 = v35 + v33;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v64);
      v60 = v35 + v33;
      AXRStream<unsigned int,(StreamType)1>::SetDataP(v59);
      v37 = v74[0];
      if (v74[0])
      {
        v38 = v69[0];
        if (v69[0])
        {
          v39 = v64[0];
          if (v64[0])
          {
            v40 = v59[0];
            if (v59[0])
            {
              v41 = 0;
              v42 = (v36 - v74[0]) >> 2;
              if (v36 <= v74[0])
              {
                v42 = 0;
              }

              if (v42 >= a10)
              {
                v42 = a10;
              }

              v43 = (v36 - v69[0]) >> 2;
              if (v36 <= v69[0])
              {
                v43 = 0;
              }

              if (v42 >= v43)
              {
                v42 = v43;
              }

              v44 = (v36 - v64[0]) >> 2;
              if (v36 <= v64[0])
              {
                v44 = 0;
              }

              if (v42 >= v44)
              {
                v42 = v44;
              }

              v45 = (v36 - v59[0]) >> 2;
              if (v36 <= v59[0])
              {
                v45 = 0;
              }

              if (v42 >= v45)
              {
                v42 = v45;
              }

              v46 = a12;
              if (v42 >= 4)
              {
                v47 = 0;
                v48 = a12;
                do
                {
                  v49 = *v37++;
                  v50 = v49;
                  v51 = *v38++;
                  v52 = v51;
                  v53 = *v39++;
                  v54 = v53;
                  v55 = *v40++;
                  v79.val[0] = vzip1q_s32(v50, v54);
                  v79.val[1] = vzip1q_s32(v52, v55);
                  v46 = v48 + 16;
                  vst2q_f32(v48, v79);
                  v56 = v48 + 8;
                  v79.val[0] = vzip2q_s32(v50, v54);
                  v79.val[1] = vzip2q_s32(v52, v55);
                  vst2q_f32(v56, v79);
                  v41 = v47 + 4;
                  v57 = v47 + 8;
                  v47 += 4;
                  v48 = v46;
                }

                while (v57 <= v42);
              }

              if (v41 < v42)
              {
                do
                {
                  LODWORD(v58) = *(v74[0] + 4 * v41);
                  DWORD1(v58) = *(v69[0] + 4 * v41);
                  DWORD2(v58) = *(v64[0] + 4 * v41);
                  HIDWORD(v58) = *(v59[0] + 4 * v41);
                  *v46 = v58;
                  v46 += 4;
                  ++v41;
                }

                while (v42 != v41);
                v41 = v42;
              }

              if (a10 > v41)
              {
                bzero(v46, 16 * (a10 - v41));
              }
            }
          }
        }
      }

      a12 = (a12 + a13);
      v33 += a11;
    }

    while (v33 + *(a4 + 56) < *(a3 + 60));
  }
}

float MakeYccMatrix(float *a1)
{
  v1 = a1[3];
  v2 = a1[6];
  v3 = a1[7];
  v4 = v1 / v3;
  v5 = (1.0 - v1 - v3) / v3;
  v6 = *a1;
  v7 = a1[4];
  v8 = a1[5];
  v9 = v2 - v8;
  v10 = a1[2];
  v11 = v8 - v7;
  v12 = a1[1];
  v13 = v11 * v10 + v9 * v6 + (v7 - v2) * v12;
  v14 = v4 + v5;
  v15 = v2 + -1.0 + v14 * v2;
  v16 = v8 + -1.0 + v14 * v8;
  v17 = (v16 * v10 - (v15 * v12 - v4 * v9)) / v13;
  v18 = v7 + -1.0 + v14 * v7;
  return v17 * v7 / ((v18 * v12 - (v16 * v6 - v4 * v11)) / v13 * v2 + v17 * v7 + (v4 * (v7 - v2) + v15 * v6 - v18 * v10) / v13 * v8);
}

void TileDecoder_NoCompression::~TileDecoder_NoCompression(void **this)
{
  *this = &unk_2A1DE96E8;
  free(this[8]);
}

{
  *this = &unk_2A1DE96E8;
  free(this[8]);

  JUMPOUT(0x29C25E8F0);
}

void TileDecoder_Zip::~TileDecoder_Zip(void **this)
{
  *this = &unk_2A1DE96E8;
  free(this[8]);
}

{
  *this = &unk_2A1DE96E8;
  free(this[8]);

  JUMPOUT(0x29C25E8F0);
}

uint64_t DoAggregateBlock<ReadPixelsArgs>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = v2 * a2;
  if (v2 >= *(result + 24) - v2 * a2)
  {
    v4 = *(result + 24) - v2 * a2;
  }

  else
  {
    v4 = *(result + 16);
  }

  if (v4)
  {
    v5 = result;
    do
    {
      result = (*v5)(*(v5 + 8), v3++);
      --v4;
    }

    while (v4);
  }

  return result;
}

__n128 _YCCAtoRGBA<half,1u,16>(const __int16 **a1, const __int16 **a2, __int16 **a3, uint64_t a4)
{
  v4 = *a1;
  *a1 += 32;
  v32 = vld2q_s16(v4);
  v4 += 16;
  v31 = vld2q_s16(v4);
  v5 = *a2;
  *a2 += 32;
  v33 = vld2q_s16(v5);
  v5 += 16;
  v34 = vld2q_s16(v5);
  v6 = vcvtq_f32_f16(*v32.val[0].i8);
  v7 = vcvtq_f32_f16(*&vextq_s8(v32.val[0], v32.val[0], 8uLL));
  v8 = vcvtq_f32_f16(*v31.val[0].i8);
  v9 = vcvtq_f32_f16(*&vextq_s8(v31.val[0], v31.val[0], 8uLL));
  v10 = vcvtq_f32_f16(*v33.val[0].i8);
  v11 = vcvtq_f32_f16(*&vextq_s8(v33.val[0], v33.val[0], 8uLL));
  v12 = vcvtq_f32_f16(*v34.val[0].i8);
  v13 = vcvtq_f32_f16(*&vextq_s8(v34.val[0], v34.val[0], 8uLL));
  v14 = vcvtq_f32_f16(*v33.val[1].i8);
  v33.val[0] = vcvtq_f32_f16(*&vextq_s8(v33.val[1], v33.val[1], 8uLL));
  v33.val[1] = vcvtq_f32_f16(*v34.val[1].i8);
  v34.val[0] = vcvtq_f32_f16(*&vextq_s8(v34.val[1], v34.val[1], 8uLL));
  v34.val[1] = vmlaq_f32(v6, v14, v6);
  v15 = vmlaq_f32(v7, v33.val[0], v7);
  v16 = vmlaq_f32(v8, v33.val[1], v8);
  v33.val[1] = vmlaq_f32(v9, v34.val[0], v9);
  v34.val[0] = vmlaq_f32(v9, v13, v9);
  v17 = vmlaq_f32(v8, v12, v8);
  v18 = vmlaq_f32(v7, v11, v7);
  v33.val[0] = vmlaq_f32(v6, v10, v6);
  v10.i32[0] = *(a4 + 8);
  v11.i32[0] = *a4;
  v19 = vmlsq_lane_f32(vmlsq_lane_f32(v6, v34.val[1], *v11.f32, 0), v33.val[0], *v10.f32, 0);
  v20 = vmlsq_lane_f32(vmlsq_lane_f32(v7, v15, *v11.f32, 0), v18, *v10.f32, 0);
  v21 = vmlsq_lane_f32(vmlsq_lane_f32(v8, v16, *v11.f32, 0), v17, *v10.f32, 0);
  v22 = vmlsq_lane_f32(vmlsq_lane_f32(v9, v33.val[1], *v11.f32, 0), v34.val[0], *v10.f32, 0);
  v10.i64[0] = *(a4 + 4);
  v23 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_n_f32(v19, v10.f32[0])), vmulq_n_f32(v20, v10.f32[0]));
  v24 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_n_f32(v21, v10.f32[0])), vmulq_n_f32(v22, v10.f32[0]));
  v34.val[1] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v34.val[1]), v33.val[0]), xmmword_296B8FE00);
  v25 = vzip1q_s16(v23, v32.val[1]);
  v26 = *a3;
  v27 = *a3 + 32;
  v28 = *a3 + 48;
  vst2q_s16(v26, *(&v34 + 16));
  v26 += 16;
  v34.val[1] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v15), v18), xmmword_296B8FE00);
  v29 = vzip2q_s16(v23, v32.val[1]);
  vst2q_s16(v26, *(&v34 + 16));
  v32.val[0] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v16), v17), xmmword_296B8FE00);
  v32.val[1] = vzip1q_s16(v24, v31.val[1]);
  vst2q_s16(v27, v32);
  v32.val[0] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v33.val[1]), v34.val[0]), xmmword_296B8FE00);
  v32.val[1] = vzip2q_s16(v24, v31.val[1]);
  vst2q_s16(v28, v32);
  *a3 += 64;
  return v31.val[0];
}

__n128 _YCCAtoRGBA<half,2u,16>(const __int16 **a1, int32x4_t **a2, __int16 **a3, uint64_t a4)
{
  v4 = *a1;
  *a1 += 32;
  v41 = vld2q_s16(v4);
  v4 += 16;
  v40 = vld2q_s16(v4);
  v5 = **a2;
  v6 = (*a2)[1];
  *a2 += 2;
  v7 = vzip2q_s32(v6, v6);
  v8 = vzip1q_s32(v6, v6);
  v9 = vzip2q_s32(v5, v5);
  v10 = vzip1q_s32(v5, v5);
  v11 = vcvtq_f32_f16(*v41.val[0].i8);
  v12 = vcvtq_f32_f16(*&vextq_s8(v41.val[0], v41.val[0], 8uLL));
  v13 = vcvtq_f32_f16(*v40.val[0].i8);
  v14 = vcvtq_f32_f16(*&vextq_s8(v40.val[0], v40.val[0], 8uLL));
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = vcvtq_f32_f16(vuzp1_s16(*v10.i8, v15));
  v17 = vcvtq_f32_f16(*&vuzp1q_s16(v9, v40.val[0]));
  v18 = vextq_s8(v8, v8, 8uLL).u64[0];
  v19 = vcvtq_f32_f16(vuzp1_s16(*v8.i8, v18));
  v20 = vextq_s8(v7, v7, 8uLL).u64[0];
  v21 = vmlaq_f32(v11, vcvtq_f32_f16(vuzp2_s16(*v10.i8, v15)), v11);
  v22 = vmlaq_f32(v12, vcvtq_f32_f16(*&vuzp2q_s16(v9, v40.val[0])), v12);
  v23 = vmlaq_f32(v13, vcvtq_f32_f16(vuzp2_s16(*v8.i8, v18)), v13);
  v24 = vmlaq_f32(v14, vcvtq_f32_f16(vuzp2_s16(*v7.i8, v20)), v14);
  v25 = vmlaq_f32(v14, vcvtq_f32_f16(vuzp1_s16(*v7.i8, v20)), v14);
  v26 = vmlaq_f32(v13, v19, v13);
  v27 = vmlaq_f32(v12, v17, v12);
  v28 = vmlaq_f32(v11, v16, v11);
  v16.i32[0] = *(a4 + 8);
  v17.i32[0] = *a4;
  v29 = vmlsq_lane_f32(vmlsq_lane_f32(v11, v21, *v17.f32, 0), v28, *v16.f32, 0);
  v30 = vmlsq_lane_f32(vmlsq_lane_f32(v12, v22, *v17.f32, 0), v27, *v16.f32, 0);
  v31 = vmlsq_lane_f32(vmlsq_lane_f32(v13, v23, *v17.f32, 0), v26, *v16.f32, 0);
  v32 = vmlsq_lane_f32(vmlsq_lane_f32(v14, v24, *v17.f32, 0), v25, *v16.f32, 0);
  v16.i64[0] = *(a4 + 4);
  v33 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_n_f32(v29, v16.f32[0])), vmulq_n_f32(v30, v16.f32[0]));
  v34 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_n_f32(v31, v16.f32[0])), vmulq_n_f32(v32, v16.f32[0]));
  v42.val[0] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v21), v28), xmmword_296B8FE00);
  v42.val[1] = vzip1q_s16(v33, v41.val[1]);
  v35 = *a3;
  v36 = *a3 + 32;
  v37 = *a3 + 48;
  vst2q_s16(v35, v42);
  v35 += 16;
  v38 = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v22), v27), xmmword_296B8FE00);
  v42.val[0] = vzip2q_s16(v33, v41.val[1]);
  vst2q_s16(v35, v42);
  v41.val[0] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v23), v26), xmmword_296B8FE00);
  v41.val[1] = vzip1q_s16(v34, v40.val[1]);
  vst2q_s16(v36, v41);
  v41.val[0] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v24), v25), xmmword_296B8FE00);
  v41.val[1] = vzip2q_s16(v34, v40.val[1]);
  vst2q_s16(v37, v41);
  *a3 += 64;
  return v40.val[0];
}

int32x4_t _YCCAtoRGBA<float,1u,16>(float32x4_t **a1, uint64_t *a2, float **a3, uint64_t a4)
{
  v4 = *a1;
  *a1 += 8;
  v5 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v12 = v4[6];
  v11 = v4[7];
  v13 = *a2;
  *a2 += 128;
  v14 = *(v13 + 96);
  v15 = *(v13 + 112);
  v16 = *(v13 + 64);
  v17 = *(v13 + 80);
  v18 = *(v13 + 32);
  v19 = *(v13 + 48);
  v21 = *v13;
  v20 = *(v13 + 16);
  v22 = vuzp1q_s32(v5, v6);
  v23 = vmlaq_f32(v22, vuzp2q_s32(*v13, v20), v22);
  v24 = vmlaq_f32(v6, v20, v6);
  v25 = vmlaq_f32(v5, *v13, v5);
  v20.i32[0] = *(a4 + 8);
  v21.i32[0] = *a4;
  v26 = *(a4 + 4);
  v27 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v22, v23, *v21.i8, 0), vuzp1q_s32(v25, v24), *v20.f32, 0), *&v26);
  v52.val[0] = vzip2q_s32(v23, vuzp1q_s32(v23, v24));
  v52.val[1] = vzip2q_s32(v27, vuzp2q_s32(v27, v6));
  v50.val[0] = vtrn1q_s32(vzip1q_s32(v23, v25), v25);
  v50.val[1] = vtrn2q_s32(vzip1q_s32(v27, v27), v5);
  v28 = *a3;
  v29 = *a3 + 16;
  v30 = *a3 + 24;
  v31 = *a3 + 32;
  v32 = *a3 + 40;
  v33 = *a3;
  vst2q_f32(v33, v50);
  v33 += 8;
  vst2q_f32(v33, v52);
  v50.val[0] = vuzp1q_s32(v8, v7);
  v50.val[1] = vmlaq_f32(v50.val[0], vuzp2q_s32(v18, v19), v50.val[0]);
  v34 = vmlaq_f32(v7, v19, v7);
  v35 = vmlaq_f32(v8, v18, v8);
  v36 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v50.val[0], v50.val[1], *v21.i8, 0), vuzp1q_s32(v35, v34), *v20.f32, 0), *&v26);
  v51.val[0] = vtrn1q_s32(vzip1q_s32(v50.val[1], v35), v35);
  v51.val[1] = vtrn2q_s32(vzip1q_s32(v36, v36), v8);
  vst2q_f32(v29, v51);
  v37 = v28 + 48;
  v28 += 56;
  v50.val[0] = vuzp1q_s32(v12, v11);
  v51.val[0] = vmlaq_f32(v50.val[0], vuzp2q_s32(v14, v15), v50.val[0]);
  v38 = vuzp1q_s32(v9, v10);
  v51.val[1] = vmlaq_f32(v38, vuzp2q_s32(v16, v17), v38);
  v39 = vmlaq_f32(v11, v15, v11);
  v40 = vmlaq_f32(v12, v14, v12);
  v41 = vmlaq_f32(v10, v17, v10);
  v42 = vmlaq_f32(v9, v16, v9);
  v43 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v38, v51.val[1], *v21.i8, 0), vuzp1q_s32(v42, v41), *v20.f32, 0), *&v26);
  v44 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v50.val[0], v51.val[0], *v21.i8, 0), vuzp1q_s32(v40, v39), *v20.f32, 0), *&v26);
  v49.val[0] = vzip2q_s32(v51.val[0], vuzp1q_s32(v51.val[0], v39));
  v45 = vzip2q_s32(v51.val[1], vuzp1q_s32(v51.val[1], v41));
  v50.val[0] = vzip2q_s32(v43, vuzp2q_s32(v43, v10));
  v52.val[0] = vzip2q_s32(v50.val[1], vuzp1q_s32(v50.val[1], v34));
  v52.val[1] = vzip2q_s32(v36, vuzp2q_s32(v36, v7));
  v48.val[0] = vtrn1q_s32(vzip1q_s32(v51.val[1], v42), v42);
  vst2q_f32(v30, v52);
  v48.val[1] = vtrn2q_s32(vzip1q_s32(v43, v43), v9);
  vst2q_f32(v31, v48);
  v46 = vtrn1q_s32(vzip1q_s32(v51.val[0], v40), v40);
  vst2q_f32(v32, v50);
  v48.val[0] = vtrn2q_s32(vzip1q_s32(v44, v44), v12);
  vst2q_f32(v37, v48);
  result = vuzp2q_s32(v44, v11);
  v49.val[1] = vzip2q_s32(v44, result);
  vst2q_f32(v28, v49);
  *a3 += 64;
  return result;
}

int32x4_t _YCCAtoRGBA<float,2u,16>(float32x4_t **a1, int32x4_t **a2, float **a3, uint64_t a4)
{
  v4 = *a1;
  *a1 += 8;
  v6 = *v4;
  v5 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v12 = v4[6];
  v11 = v4[7];
  v14 = (*a2)[2];
  v13 = (*a2)[3];
  v16 = **a2;
  v15 = (*a2)[1];
  *a2 += 4;
  v17 = vdupq_lane_s64(v16.i64[0], 0);
  v18 = vdupq_laneq_s64(v16, 1);
  v19 = vtrn2q_s32(v16, v16);
  v20 = vuzp1q_s32(v6, v5);
  v21 = vmlaq_f32(v20, v19, v20);
  v22 = vmlaq_f32(v5, v18, v5);
  v23 = vmlaq_f32(v6, v17, v6);
  v19.i32[0] = *(a4 + 8);
  v17.i32[0] = *a4;
  v18.i64[0] = *(a4 + 4);
  v24 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v20, v21, *v17.f32, 0), vuzp1q_s32(v23, v22), *v19.f32, 0), v18.f32[0]);
  v53.val[0] = vzip2q_s32(v21, vuzp1q_s32(v21, v22));
  v52.val[0] = vtrn1q_s32(vzip1q_s32(v21, v23), v23);
  v52.val[1] = vtrn2q_s32(vzip1q_s32(v24, v24), v6);
  v25 = *a3;
  v26 = *a3 + 16;
  v27 = *a3 + 24;
  v28 = *a3 + 32;
  v29 = *a3 + 40;
  v30 = *a3 + 48;
  v31 = *a3 + 56;
  vst2q_f32(v25, v52);
  v25 += 8;
  v53.val[1] = vzip2q_s32(v24, vuzp2q_s32(v24, v5));
  vst2q_f32(v25, v53);
  v32 = vdupq_lane_s64(v15.i64[0], 0);
  v52.val[0] = vuzp1q_s32(v8, v7);
  v52.val[1] = vmlaq_f32(v52.val[0], vtrn2q_s32(v15, v15), v52.val[0]);
  v33 = vmlaq_f32(v7, vdupq_laneq_s64(v15, 1), v7);
  v34 = vmlaq_f32(v8, v32, v8);
  v35 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v52.val[0], v52.val[1], *v17.f32, 0), vuzp1q_s32(v34, v33), *v19.f32, 0), v18.f32[0]);
  v36 = vtrn1q_s32(vzip1q_s32(v52.val[1], v34), v34);
  v53.val[0] = vtrn2q_s32(vzip1q_s32(v35, v35), v8);
  vst2q_f32(v26, v53);
  v37 = vdupq_lane_s64(v14.i64[0], 0);
  v38 = vdupq_laneq_s64(v14, 1);
  v52.val[0] = vdupq_lane_s64(v13.i64[0], 0);
  v39 = vdupq_laneq_s64(v13, 1);
  v53.val[0] = vuzp1q_s32(v12, v11);
  v53.val[1] = vmlaq_f32(v53.val[0], vtrn2q_s32(v13, v13), v53.val[0]);
  v40 = vuzp1q_s32(v9, v10);
  v41 = vmlaq_f32(v40, vtrn2q_s32(v14, v14), v40);
  v42 = vmlaq_f32(v11, v39, v11);
  v43 = vmlaq_f32(v12, v52.val[0], v12);
  v52.val[0] = vmlaq_f32(v10, v38, v10);
  v44 = vmlaq_f32(v9, v37, v9);
  v45 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v40, v41, *v17.f32, 0), vuzp1q_s32(v44, v52.val[0]), *v19.f32, 0), v18.f32[0]);
  v46 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v53.val[0], v53.val[1], *v17.f32, 0), vuzp1q_s32(v43, v42), *v19.f32, 0), v18.f32[0]);
  v51.val[0] = vzip2q_s32(v53.val[1], vuzp1q_s32(v53.val[1], v42));
  v47 = vzip2q_s32(v41, vuzp1q_s32(v41, v52.val[0]));
  v52.val[0] = vzip2q_s32(v45, vuzp2q_s32(v45, v10));
  v54.val[0] = vzip2q_s32(v52.val[1], vuzp1q_s32(v52.val[1], v33));
  v54.val[1] = vzip2q_s32(v35, vuzp2q_s32(v35, v7));
  v50.val[0] = vtrn1q_s32(vzip1q_s32(v41, v44), v44);
  vst2q_f32(v27, v54);
  v50.val[1] = vtrn2q_s32(vzip1q_s32(v45, v45), v9);
  vst2q_f32(v28, v50);
  v48 = vtrn1q_s32(vzip1q_s32(v53.val[1], v43), v43);
  vst2q_f32(v29, v52);
  v50.val[0] = vtrn2q_s32(vzip1q_s32(v46, v46), v12);
  vst2q_f32(v30, v50);
  result = vuzp2q_s32(v46, v11);
  v51.val[1] = vzip2q_s32(v46, result);
  vst2q_f32(v31, v51);
  *a3 += 64;
  return result;
}

float16x8_t **_YCCtoRGBA<half,1u,16>(float16x8_t **result, const __int16 **a2, __int16 **a3, uint64_t a4, __int16 *a5)
{
  v7 = *result;
  *result += 2;
  v9 = *v7;
  v8 = v7[1];
  v10 = *a2;
  *a2 += 32;
  v38 = vld2q_s16(v10);
  v10 += 16;
  v39 = vld2q_s16(v10);
  v11 = vcvtq_f32_f16(*v9.i8);
  v12 = vcvt_hight_f32_f16(v9);
  v13 = vcvtq_f32_f16(*v8.i8);
  v14 = vcvt_hight_f32_f16(v8);
  v15 = vcvtq_f32_f16(*v38.val[0].i8);
  v16 = vcvtq_f32_f16(*&vextq_s8(v38.val[0], v38.val[0], 8uLL));
  v17 = vcvtq_f32_f16(*v39.val[0].i8);
  v18 = vcvtq_f32_f16(*&vextq_s8(v39.val[0], v39.val[0], 8uLL));
  v19 = vcvtq_f32_f16(*v38.val[1].i8);
  v38.val[0] = vcvtq_f32_f16(*&vextq_s8(v38.val[1], v38.val[1], 8uLL));
  v38.val[1] = vcvtq_f32_f16(*v39.val[1].i8);
  v39.val[0] = vcvtq_f32_f16(*&vextq_s8(v39.val[1], v39.val[1], 8uLL));
  v39.val[1] = vmlaq_f32(v11, v19, v11);
  v20 = vmlaq_f32(v12, v38.val[0], v12);
  v38.val[0] = vmlaq_f32(v13, v38.val[1], v13);
  v38.val[1] = vmlaq_f32(v14, v39.val[0], v14);
  v39.val[0] = vmlaq_f32(v14, v18, v14);
  v21 = vmlaq_f32(v13, v17, v13);
  v22 = vmlaq_f32(v12, v16, v12);
  v23 = vmlaq_f32(v11, v15, v11);
  v15.i32[0] = *(a4 + 8);
  v5.i32[0] = *a4;
  v24 = vmlsq_lane_f32(vmlsq_lane_f32(v11, v39.val[1], v5, 0), v23, *v15.f32, 0);
  v25 = vmlsq_lane_f32(vmlsq_lane_f32(v12, v20, v5, 0), v22, *v15.f32, 0);
  v26 = vmlsq_lane_f32(vmlsq_lane_f32(v13, v38.val[0], v5, 0), v21, *v15.f32, 0);
  v27 = vmlsq_lane_f32(vmlsq_lane_f32(v14, v38.val[1], v5, 0), v39.val[0], *v15.f32, 0);
  v15.i64[0] = *(a4 + 4);
  v28 = vmulq_n_f32(v27, v15.f32[0]);
  v29 = vmulq_n_f32(v26, v15.f32[0]);
  v30 = vmulq_n_f32(v25, v15.f32[0]);
  v31 = vmulq_n_f32(v24, v15.f32[0]);
  *v15.f32 = vcvt_f16_f32(v20);
  v40.val[0] = vcvt_hight_f16_f32(vcvt_f16_f32(v31), v30);
  v32 = vcvt_hight_f16_f32(vcvt_f16_f32(v29), v28);
  v6.i16[0] = *a5;
  v33 = vcvt_hight_f16_f32(*v15.f32, v22);
  v40.val[1] = v6;
  v37.val[0] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v39.val[1]), v23), xmmword_296B8FE00);
  v37.val[1] = vqtbl2q_s8(v40, xmmword_296B8FDC0);
  v34 = *a3;
  v35 = *a3 + 32;
  v36 = *a3 + 48;
  vst2q_s16(v34, v37);
  v34 += 16;
  v37.val[0] = vqtbl1q_s8(v33, xmmword_296B8FE00);
  v37.val[1] = vqtbl2q_s8(v40, xmmword_296B8FE10);
  vst2q_s16(v34, v37);
  v37.val[0] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v38.val[0]), v21), xmmword_296B8FE00);
  v37.val[1] = vqtbl2q_s8(*(&v6 - 1), xmmword_296B8FDC0);
  vst2q_s16(v35, v37);
  v37.val[0] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v38.val[1]), v39.val[0]), xmmword_296B8FE00);
  v37.val[1] = vqtbl2q_s8(*(&v6 - 1), xmmword_296B8FE10);
  vst2q_s16(v36, v37);
  *a3 += 64;
  return result;
}

float32x4_t _YCCtoRGBA<half,2u,16>(float16x8_t **a1, int32x4_t **a2, __int16 **a3, uint64_t a4, __int16 *a5)
{
  v5 = *a1;
  *a1 += 2;
  v7 = *v5;
  v6 = v5[1];
  v8 = **a2;
  v9 = (*a2)[1];
  *a2 += 2;
  v10 = vzip2q_s32(v9, v9);
  v11 = vzip1q_s32(v9, v9);
  v12 = vzip2q_s32(v8, v8);
  v13 = vzip1q_s32(v8, v8);
  v14 = vcvtq_f32_f16(*v7.i8);
  v15 = vcvt_hight_f32_f16(v7);
  v16 = vcvtq_f32_f16(*v6.i8);
  v17 = vcvt_hight_f32_f16(v6);
  v18 = vextq_s8(v13, v13, 8uLL);
  v19 = vcvtq_f32_f16(vuzp1_s16(*v13.i8, *v18.i8));
  v20 = vcvtq_f32_f16(*&vuzp1q_s16(v12, v18));
  v21 = vextq_s8(v11, v11, 8uLL).u64[0];
  v22 = vcvtq_f32_f16(vuzp1_s16(*v11.i8, v21));
  v23 = vextq_s8(v10, v10, 8uLL).u64[0];
  v24 = vcvtq_f32_f16(vuzp1_s16(*v10.i8, v23));
  v25 = vcvtq_f32_f16(vuzp2_s16(*v13.i8, *v18.i8));
  v26 = vcvtq_f32_f16(vuzp2_s16(*v11.i8, v21));
  v27 = vmlaq_f32(v14, v25, v14);
  v28 = vmlaq_f32(v15, vcvtq_f32_f16(*&vuzp2q_s16(v12, v25)), v15);
  v29 = vmlaq_f32(v16, v26, v16);
  v30 = vmlaq_f32(v17, vcvtq_f32_f16(vuzp2_s16(*v10.i8, v23)), v17);
  v31 = vmlaq_f32(v17, v24, v17);
  v32 = vmlaq_f32(v16, v22, v16);
  v33 = vmlaq_f32(v15, v20, v15);
  result = vmlaq_f32(v14, v19, v14);
  v19.i32[0] = *(a4 + 8);
  v20.i32[0] = *a4;
  v35 = vmlsq_lane_f32(vmlsq_lane_f32(v14, v27, *v20.f32, 0), result, *v19.f32, 0);
  v36 = vmlsq_lane_f32(vmlsq_lane_f32(v15, v28, *v20.f32, 0), v33, *v19.f32, 0);
  v37 = vmlsq_lane_f32(vmlsq_lane_f32(v16, v29, *v20.f32, 0), v32, *v19.f32, 0);
  v38 = vmlsq_lane_f32(vmlsq_lane_f32(v17, v30, *v20.f32, 0), v31, *v19.f32, 0);
  v19.i64[0] = *(a4 + 4);
  v39 = vmulq_n_f32(v38, v19.f32[0]);
  v40 = vmulq_n_f32(v37, v19.f32[0]);
  v47.val[1] = vmulq_n_f32(v36, v19.f32[0]);
  v41 = vmulq_n_f32(v35, v19.f32[0]);
  *v19.f32 = vcvt_f16_f32(v28);
  v50.val[0] = vcvt_hight_f16_f32(vcvt_f16_f32(v41), v47.val[1]);
  v47.val[0] = vcvt_hight_f16_f32(vcvt_f16_f32(v40), v39);
  v42 = vcvt_hight_f16_f32(vcvt_f16_f32(v30), v31);
  v47.val[1].i16[0] = *a5;
  v43 = vcvt_hight_f16_f32(vcvt_f16_f32(v29), v32);
  v50.val[1] = v47.val[1];
  v51.val[0] = vqtbl1q_s8(vcvt_hight_f16_f32(vcvt_f16_f32(v27), result), xmmword_296B8FE00);
  v51.val[1] = vqtbl2q_s8(v50, xmmword_296B8FDC0);
  v44 = *a3;
  v45 = *a3 + 32;
  v46 = *a3 + 48;
  vst2q_s16(v44, v51);
  v44 += 16;
  v49.val[0] = vqtbl1q_s8(vcvt_hight_f16_f32(*v19.f32, v33), xmmword_296B8FE00);
  v49.val[1] = vqtbl2q_s8(v50, xmmword_296B8FE10);
  vst2q_s16(v44, v49);
  v49.val[0] = vqtbl1q_s8(v43, xmmword_296B8FE00);
  v49.val[1] = vqtbl2q_s8(v47, xmmword_296B8FDC0);
  vst2q_s16(v45, v49);
  v48.val[0] = vqtbl1q_s8(v42, xmmword_296B8FE00);
  v48.val[1] = vqtbl2q_s8(v47, xmmword_296B8FE10);
  vst2q_s16(v46, v48);
  *a3 += 64;
  return result;
}

int32x4_t _YCCtoRGBA<float,1u,16>(float32x4_t **a1, const float **a2, float **a3, uint64_t a4, __int32 *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, float32x2_t a13)
{
  v15 = *a1;
  *a1 += 4;
  v17 = *v15;
  v16 = v15[1];
  v19 = v15[2];
  v18 = v15[3];
  v20 = *a2;
  *a2 += 32;
  v21 = v20;
  v46 = vld2q_f32(v21);
  v21 += 8;
  v43 = vld2q_f32(v21);
  v22 = v20 + 16;
  v44 = vld2q_f32(v22);
  v20 += 24;
  v45 = vld2q_f32(v20);
  v23 = vmlaq_f32(v17, v46.val[1], v17);
  v24 = vmlaq_f32(v17, v46.val[0], v17);
  a13.i32[0] = *(a4 + 8);
  v13.i32[0] = *a4;
  v25 = *(a4 + 4);
  v46.val[0] = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v17, v23, v13, 0), v24, a13, 0), *&v25);
  v14.i32[0] = *a5;
  v26 = vdupq_lane_s32(*v14.i8, 0);
  v46.val[1] = vzip1q_s32(v23, v24);
  v27 = vzip1q_s32(v46.val[0], v14);
  v27.i32[3] = *a5;
  v28 = *a3;
  v29 = *a3 + 16;
  v30 = *a3 + 24;
  v31 = *a3 + 32;
  v32 = *a3;
  vst2q_f32(v32, *(&v46 + 16));
  v32 += 8;
  v46.val[1] = vzip2q_s32(v23, v24);
  v33 = vzip2q_s32(v46.val[0], v26);
  vst2q_f32(v32, *(&v46 + 16));
  v34 = v28 + 40;
  v35 = v28 + 48;
  v28 += 56;
  v36 = vmlaq_f32(v18, v45.val[1], v18);
  v37 = vmlaq_f32(v19, v44.val[1], v19);
  v46.val[0] = vmlaq_f32(v16, v43.val[1], v16);
  v46.val[1] = vmlaq_f32(v16, v43.val[0], v16);
  v43.val[0] = vmlaq_f32(v19, v44.val[0], v19);
  v43.val[1] = vmlaq_f32(v18, v45.val[0], v18);
  v38 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v16, v46.val[0], v13, 0), v46.val[1], a13, 0), *&v25);
  v39 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v19, v37, v13, 0), v43.val[0], a13, 0), *&v25);
  result = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v18, v36, v13, 0), v43.val[1], a13, 0), *&v25);
  v44.val[0] = vzip1q_s32(v36, v43.val[1]);
  v44.val[1] = vzip1q_s32(result, v14);
  v45.val[0] = vzip1q_s32(v37, v43.val[0]);
  v45.val[1] = vzip1q_s32(v39, v14);
  v47.val[0] = vzip1q_s32(v46.val[0], v46.val[1]);
  v47.val[1] = vzip1q_s32(v38, v14);
  v47.val[1].i32[3] = v14.i32[0];
  vst2q_f32(v29, v47);
  v46.val[0] = vzip2q_s32(v46.val[0], v46.val[1]);
  v46.val[1] = vzip2q_s32(v38, v26);
  vst2q_f32(v30, v46);
  v45.val[1].i32[3] = v14.i32[0];
  vst2q_f32(v31, v45);
  v41 = vzip2q_s32(v37, v43.val[0]);
  v43.val[0] = vzip2q_s32(v39, v26);
  vst2q_f32(v34, v43);
  v44.val[1].i32[3] = v14.i32[0];
  vst2q_f32(v35, v44);
  v42.val[0] = vzip2q_s32(v36, v43.val[1]);
  v42.val[1] = vzip2q_s32(result, v26);
  vst2q_f32(v28, v42);
  *a3 += 64;
  return result;
}

int32x4_t _YCCtoRGBA<float,2u,16>(float32x4_t **a1, int32x4_t **a2, float **a3, uint64_t a4, __int32 *a5)
{
  v6 = *a1;
  *a1 += 4;
  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v12 = **a2;
  v11 = (*a2)[1];
  v13 = (*a2)[2];
  v14 = (*a2)[3];
  *a2 += 4;
  v15 = vtrn1q_s32(v12, v12);
  v16 = vtrn2q_s32(v12, v12);
  v17 = vmlaq_f32(v8, v16, v8);
  v18 = vmlaq_f32(v8, v15, v8);
  v16.i32[0] = *(a4 + 8);
  v15.i32[0] = *a4;
  v19 = *(a4 + 4);
  v20 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v8, v17, *v15.f32, 0), v18, *v16.f32, 0), *&v19);
  v5.i32[0] = *a5;
  v21 = vdupq_lane_s32(*v5.i8, 0);
  v43.val[0] = vzip1q_s32(v17, v18);
  v43.val[1] = vzip1q_s32(v20, v5);
  v43.val[1].i32[3] = *a5;
  v22 = *a3;
  v23 = *a3 + 16;
  v24 = *a3 + 24;
  v25 = *a3 + 32;
  v26 = *a3;
  vst2q_f32(v26, v43);
  v26 += 8;
  v42.val[0] = vzip2q_s32(v17, v18);
  v42.val[1] = vzip2q_s32(v20, v21);
  vst2q_f32(v26, v42);
  v27 = v22 + 40;
  v28 = v22 + 48;
  v22 += 56;
  v42.val[0] = vtrn1q_s32(v14, v14);
  v42.val[1] = vtrn1q_s32(v13, v13);
  v43.val[0] = vmlaq_f32(v9, vtrn2q_s32(v14, v14), v9);
  v29 = vmlaq_f32(v10, vtrn2q_s32(v13, v13), v10);
  v30 = vmlaq_f32(v7, vtrn2q_s32(v11, v11), v7);
  v31 = vmlaq_f32(v7, vtrn1q_s32(v11, v11), v7);
  v32 = vmlaq_f32(v10, v42.val[1], v10);
  v42.val[1] = vmlaq_f32(v9, v42.val[0], v9);
  v33 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v7, v30, *v15.f32, 0), v31, *v16.f32, 0), *&v19);
  v34 = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v10, v29, *v15.f32, 0), v32, *v16.f32, 0), *&v19);
  result = vmulq_n_f32(vmlsq_lane_f32(vmlsq_lane_f32(v9, v43.val[0], *v15.f32, 0), v42.val[1], *v16.f32, 0), *&v19);
  v41.val[0] = vzip1q_s32(v43.val[0], v42.val[1]);
  v41.val[1] = vzip1q_s32(result, v5);
  v36 = vzip1q_s32(v29, v32);
  v42.val[0] = vzip1q_s32(v34, v5);
  v43.val[1] = vzip1q_s32(v30, v31);
  v37 = vzip1q_s32(v33, v5);
  v37.i32[3] = v5.i32[0];
  vst2q_f32(v23, *(&v43 + 16));
  v40.val[0] = vzip2q_s32(v30, v31);
  v40.val[1] = vzip2q_s32(v33, v21);
  vst2q_f32(v24, v40);
  v42.val[0].i32[3] = v5.i32[0];
  vst2q_f32(v25, v42);
  v38 = vzip2q_s32(v29, v32);
  v40.val[0] = vzip2q_s32(v34, v21);
  vst2q_f32(v27, v40);
  v41.val[1].i32[3] = v5.i32[0];
  vst2q_f32(v28, v41);
  v39.val[0] = vzip2q_s32(v43.val[0], v42.val[1]);
  v39.val[1] = vzip2q_s32(result, v21);
  vst2q_f32(v22, v39);
  *a3 += 64;
  return result;
}

uint64_t DoAggregateBlock<ReadPlanesArgs>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = v2 * a2;
  if (v2 >= *(result + 24) - v2 * a2)
  {
    v4 = *(result + 24) - v2 * a2;
  }

  else
  {
    v4 = *(result + 16);
  }

  if (v4)
  {
    v5 = result;
    do
    {
      result = (*v5)(*(v5 + 8), v3++);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t AXRStreamPXR24<unsigned int,(StreamType)1>::SetDataP(uint64_t result)
{
  v1 = *(result + 24);
  v3 = *(result + 32);
  v2 = *(result + 36);
  v4 = *(*(v1 + 40) + 8 * *(result + 40));
  if (*(v4 + 12) - 1 < v3)
  {
    v3 = *(v4 + 12) - 1;
  }

  if (*(v1 + 104) == 1)
  {
    v5 = (*(v4 + 8 * v2 + 24) + 8 * v3);
  }

  else
  {
    v6 = (v3 * *(v1 + 108)) >> *(v1 + 112);
    if (v6 >= *(v4 + 20) - 1)
    {
      LODWORD(v6) = *(v4 + 20) - 1;
    }

    v5 = (*(v4 + 8 * v2 + 24) + 8 * v6);
  }

  v7 = *v5;
  if (HIDWORD(v7))
  {
    v8 = *(result + 8) + v7;
  }

  else
  {
    v8 = 0;
  }

  *result = v8;
  return result;
}

uint64_t AXRSplitStream<unsigned short,(StreamType)1>::SetDataP(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  v3 = *(result + 32);
  v4 = *(*(v1 + 40) + 8 * *(result + 36));
  if (*(v4 + 12) - 1 < v2)
  {
    v2 = *(v4 + 12) - 1;
  }

  if (*(v1 + 104) == 1)
  {
    v5 = (*(v4 + 8 * v3 + 24) + 8 * v2);
  }

  else
  {
    v6 = (v2 * *(v1 + 108)) >> *(v1 + 112);
    if (v6 >= *(v4 + 20) - 1)
    {
      LODWORD(v6) = *(v4 + 20) - 1;
    }

    v5 = (*(v4 + 8 * v3 + 24) + 8 * v6);
  }

  v7 = *v5;
  if (HIDWORD(v7))
  {
    v8 = __CFADD__(v7, 1);
    LODWORD(v7) = (v7 + 1) >> 1;
    if (v8)
    {
      v7 = 0x80000000;
    }

    else
    {
      v7 = v7;
    }

    v9 = *(result + 8) + *(result + 28) + v7;
  }

  else
  {
    v9 = 0;
  }

  *result = v9;
  return result;
}

uint64_t AXRStream<unsigned short,(StreamType)1>::SetDataP(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  v3 = *(result + 32);
  v4 = *(*(v1 + 40) + 8 * *(result + 36));
  if (*(v4 + 12) - 1 < v2)
  {
    v2 = *(v4 + 12) - 1;
  }

  if (*(v1 + 104) == 1)
  {
    v5 = (*(v4 + 8 * v3 + 24) + 8 * v2);
  }

  else
  {
    v6 = (v2 * *(v1 + 108)) >> *(v1 + 112);
    if (v6 >= *(v4 + 20) - 1)
    {
      LODWORD(v6) = *(v4 + 20) - 1;
    }

    v5 = (*(v4 + 8 * v3 + 24) + 8 * v6);
  }

  v7 = *v5;
  if (HIDWORD(v7))
  {
    v8 = *(result + 8) + v7 + 2 * *(result + 28);
  }

  else
  {
    v8 = 0;
  }

  *result = v8;
  return result;
}

uint64_t AXRSplitStream<unsigned int,(StreamType)1>::SetDataP(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  v3 = *(result + 32);
  v4 = *(*(v1 + 40) + 8 * *(result + 36));
  if (*(v4 + 12) - 1 < v2)
  {
    v2 = *(v4 + 12) - 1;
  }

  if (*(v1 + 104) == 1)
  {
    v5 = (*(v4 + 8 * v3 + 24) + 8 * v2);
  }

  else
  {
    v6 = (v2 * *(v1 + 108)) >> *(v1 + 112);
    if (v6 >= *(v4 + 20) - 1)
    {
      LODWORD(v6) = *(v4 + 20) - 1;
    }

    v5 = (*(v4 + 8 * v3 + 24) + 8 * v6);
  }

  v7 = *v5;
  if (HIDWORD(v7))
  {
    v8 = __CFADD__(v7, 1);
    LODWORD(v7) = (v7 + 1) >> 1;
    if (v8)
    {
      v7 = 0x80000000;
    }

    else
    {
      v7 = v7;
    }

    v9 = *(result + 8) + v7 + 2 * *(result + 28);
  }

  else
  {
    v9 = 0;
  }

  *result = v9;
  return result;
}

uint64_t AXRStream<unsigned int,(StreamType)1>::SetDataP(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  v3 = *(result + 32);
  v4 = *(*(v1 + 40) + 8 * *(result + 36));
  if (*(v4 + 12) - 1 < v2)
  {
    v2 = *(v4 + 12) - 1;
  }

  if (*(v1 + 104) == 1)
  {
    v5 = (*(v4 + 8 * v3 + 24) + 8 * v2);
  }

  else
  {
    v6 = (v2 * *(v1 + 108)) >> *(v1 + 112);
    if (v6 >= *(v4 + 20) - 1)
    {
      LODWORD(v6) = *(v4 + 20) - 1;
    }

    v5 = (*(v4 + 8 * v3 + 24) + 8 * v6);
  }

  v7 = *v5;
  if (HIDWORD(v7))
  {
    v8 = *(result + 8) + v7 + 4 * *(result + 28);
  }

  else
  {
    v8 = 0;
  }

  *result = v8;
  return result;
}

uint64_t AXRLUTStream<unsigned short,(StreamType)1>::SetDataP(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  v3 = *(result + 32);
  v4 = *(*(v1 + 40) + 8 * *(result + 48));
  if (*(v4 + 12) - 1 < v2)
  {
    v2 = *(v4 + 12) - 1;
  }

  if (*(v1 + 104) == 1)
  {
    v5 = (*(v4 + 8 * v3 + 24) + 8 * v2);
  }

  else
  {
    v6 = (v2 * *(v1 + 108)) >> *(v1 + 112);
    if (v6 >= *(v4 + 20) - 1)
    {
      LODWORD(v6) = *(v4 + 20) - 1;
    }

    v5 = (*(v4 + 8 * v3 + 24) + 8 * v6);
  }

  v7 = *v5;
  if (HIDWORD(v7))
  {
    v8 = *(result + 8) + v7 + 2 * *(result + 28);
  }

  else
  {
    v8 = 0;
  }

  *result = v8;
  return result;
}

uint64_t AXRLUTStream<unsigned int,(StreamType)1>::SetDataP(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  v3 = *(result + 32);
  v4 = *(*(v1 + 40) + 8 * *(result + 48));
  if (*(v4 + 12) - 1 < v2)
  {
    v2 = *(v4 + 12) - 1;
  }

  if (*(v1 + 104) == 1)
  {
    v5 = (*(v4 + 8 * v3 + 24) + 8 * v2);
  }

  else
  {
    v6 = (v2 * *(v1 + 108)) >> *(v1 + 112);
    if (v6 >= *(v4 + 20) - 1)
    {
      LODWORD(v6) = *(v4 + 20) - 1;
    }

    v5 = (*(v4 + 8 * v3 + 24) + 8 * v6);
  }

  v7 = *v5;
  if (HIDWORD(v7))
  {
    v8 = *(result + 8) + v7 + 4 * *(result + 28);
  }

  else
  {
    v8 = 0;
  }

  *result = v8;
  return result;
}

void AXRLogicalImageList::AXRLogicalImageList(AXRLogicalImageList *this, const void **a2, const void **a3, axr_error_t *a4, uint64_t a5, axr_error_t *a6)
{
  *(this + 1) = 0;
  v8 = (this + 8);
  *this = 0;
  v9 = *a2;
  if (!*a2)
  {
    if (!a4)
    {
      return;
    }

    v25 = -7;
LABEL_13:
    *a4 = v25;
    return;
  }

  v11 = *a3;
  if (*a3 <= 3 || (v13 = *v9, *a2 = v9 + 1, *a3 = v11 - 4, v13 != 1920496243))
  {
    if (!a4)
    {
      return;
    }

    v25 = -2;
    goto LABEL_13;
  }

  if ((v11 - 4) <= 3)
  {
    v15 = 0;
    v16 = 0;
    if (!a4)
    {
LABEL_7:
      if (GetFlagsOnceToken != -1)
      {
        OUTLINED_FUNCTION_0();
        dispatch_once_f(v32, v33, v34);
      }

      OUTLINED_FUNCTION_1();
      if ((v24 & 2) != 0)
      {
        AXRLogError("Serialized axr_logical_image_list version (%u) too new", v17, v18, v19, v20, v21, v22, v23, v16);
      }

      return;
    }

LABEL_6:
    *a4 = axr_error_unknown_file_type;
    v16 = v15;
    goto LABEL_7;
  }

  v26 = v9[1];
  *a2 = v9 + 2;
  *a3 = v11 - 8;
  if (v26 != 0x1000000)
  {
    v15 = bswap32(v26);
    v16 = v15;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((v11 - 8) <= 7)
  {
    if (!a4)
    {
      return;
    }

    v25 = -4;
    goto LABEL_13;
  }

  v27 = *(v9 + 1);
  *a2 = v9 + 4;
  *a3 = v11 - 16;
  if (v27)
  {
    v28 = 0;
    v29 = bswap64(v27);
    do
    {
      v30 = AXRImageGroup::Deserialize(a2, a3, 1, a5, a4, a6);
      if (!v30)
      {
        break;
      }

      v31 = (v28 ? v28 : v8);
      *v31 = v30;
      ++*this;
      v28 = v30;
      --v29;
    }

    while (v29);
  }
}

BOOL AXRImageLayer::IsEqual(AXRImageLayer *this, const AXRImageLayer *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  v7[0] = *(a2 + 8);
  v7[1] = v3;
  v4 = *(a2 + 56);
  v7[2] = *(a2 + 40);
  v7[3] = v4;
  v5 = *(this + 12);
  if (v5 <= 3)
  {
    memcpy(&v7[2] + 4 * v5 + 12, this + 4 * v5 + 52, (16 - 4 * v5));
  }

  return memcmp(this + 8, v7, 0x30uLL) == 0;
}

axr_logical_image_list_t axr_data_create_logical_image_list(axr_data_t data)
{
  if (!data)
  {
    return 0;
  }

  objc_opt_class();
  v2 = _os_object_alloc();
  v9 = v2;
  if (v2)
  {
    AXRLogicalImageList::AXRLogicalImageList((v2 + 16), data, v3, v4, v5, v6, v7, v8);
  }

  return v9;
}

unint64_t axr_logical_image_list_get_view_count(unint64_t list)
{
  if (list)
  {
    return *(list + 16);
  }

  return list;
}

size_t axr_logical_image_list_serialize(axr_logical_image_list_t list, void *where, size_t size)
{
  if (!list)
  {
    return size;
  }

  if (!where)
  {
    isa = list[4].isa;
    if (GetFlagsOnceToken != -1)
    {
      OUTLINED_FUNCTION_0();
      v20 = v16;
      dispatch_once_f(v17, v18, v19);
      LODWORD(isa) = v20;
    }

    if (((kDefaultAXRLogFlags | isa) & 2) != 0)
    {
      AXRLogError("%s: error where = NULL", where, size, v3, v4, v5, v6, v7, "axr_logical_image_list_serialize");
    }

    return size;
  }

  v9 = size - 4;
  if (size < 4)
  {
    return size;
  }

  *where = 1920496243;
  if (v9 >= 4)
  {
    *(where + 1) = 0x1000000;
    v9 = size - 8;
    if (size - 8 >= 8)
    {
      v11 = list[2].isa;
      v10 = list[3].isa;
      *(where + 1) = bswap64(v11);
      v21 = size - 16;
      v22 = where + 16;
      do
      {
        if (!v10)
        {
          break;
        }

        v12 = *v10;
        v13 = AXRImageGroup::Serialize(v10, &v22, &v21);
        v10 = v12;
      }

      while (v13);
      return v21;
    }
  }

  return v9;
}

axr_logical_image_list_t axr_logical_image_list_deserialize(const void **where, size_t *size, axr_error_t *outErr, axr_flags_t flags)
{
  if (!where || !*where)
  {
    if (GetFlagsOnceToken != -1)
    {
      OUTLINED_FUNCTION_0();
      dispatch_once_f(v16, v17, v18);
    }

    if (((kDefaultAXRLogFlags | flags) & 2) != 0)
    {
      AXRLogError("%s: error NULL data pointer", size, outErr, flags, v4, v5, v6, v7, "axr_logical_image_list_deserialize");
    }

    return 0;
  }

  if (!size)
  {
    if (GetFlagsOnceToken != -1)
    {
      OUTLINED_FUNCTION_0();
      dispatch_once_f(v19, v20, v21);
    }

    if (((kDefaultAXRLogFlags | flags) & 2) != 0)
    {
      AXRLogError("%s: error NULL size", size, outErr, flags, v4, v5, v6, v7, "axr_logical_image_list_deserialize");
    }

    return 0;
  }

  objc_opt_class();
  v12 = _os_object_alloc();
  v14 = v12;
  if (v12)
  {
    v22 = axr_error_success;
    AXRLogicalImageList::AXRLogicalImageList((v12 + 16), where, size, &v22, flags, v13);
    if (v22)
    {

      v14 = 0;
      if (outErr)
      {
        *outErr = v22;
      }
    }
  }

  return v14;
}

void axr_logical_image_list_get_default_view_index_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v8, v9, v10);
  }

  AXRLogError("%s: NULL list provided", a2, a3, a4, a5, a6, a7, a8, "axr_logical_image_list_get_default_view_index");
}

void axr_logical_image_list_get_view_name_cold_1()
{
  OUTLINED_FUNCTION_2();
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  OUTLINED_FUNCTION_1();
  if ((v8 & 2) != 0)
  {
    AXRLogError("%s: view index out of bounds", v1, v2, v3, v4, v5, v6, v7, "axr_logical_image_list_get_view_name");
  }

  *v0 = &unk_296B90CDB;
}

void axr_logical_image_list_get_view_name_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v8, v9, v10);
  }

  AXRLogError("%s: NULL list provided", a2, a3, a4, a5, a6, a7, a8, "axr_logical_image_list_get_view_name");
}

void axr_logical_image_list_get_image_count_cold_1()
{
  OUTLINED_FUNCTION_2();
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  OUTLINED_FUNCTION_1();
  if ((v8 & 2) != 0)
  {
    AXRLogError("%s: view index out of bounds", v1, v2, v3, v4, v5, v6, v7, "axr_logical_image_list_get_image_count");
  }

  *v0 = 0;
}

void axr_logical_image_list_get_image_count_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v8, v9, v10);
  }

  AXRLogError("%s: NULL list provided", a2, a3, a4, a5, a6, a7, a8, "axr_logical_image_list_get_image_count");
}

void axr_logical_image_list_get_default_image_index_cold_1()
{
  OUTLINED_FUNCTION_2();
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  OUTLINED_FUNCTION_1();
  if ((v8 & 2) != 0)
  {
    AXRLogError("%s: view index out of bounds", v1, v2, v3, v4, v5, v6, v7, "axr_logical_image_list_get_default_image_index");
  }

  *v0 = 0;
}

void axr_logical_image_list_get_default_image_index_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v8, v9, v10);
  }

  AXRLogError("%s: NULL list provided", a2, a3, a4, a5, a6, a7, a8, "axr_logical_image_list_get_default_image_index");
}

void axr_logical_image_list_get_image_name_cold_1()
{
  OUTLINED_FUNCTION_2();
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  OUTLINED_FUNCTION_1();
  if ((v8 & 2) != 0)
  {
    AXRLogError("%s: image index out of bounds", v1, v2, v3, v4, v5, v6, v7, "axr_logical_image_list_get_image_name");
  }

  *v0 = &unk_296B90CDB;
}

void axr_logical_image_list_get_image_name_cold_2()
{
  OUTLINED_FUNCTION_2();
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  OUTLINED_FUNCTION_1();
  if ((v8 & 2) != 0)
  {
    AXRLogError("%s: view index out of bounds", v1, v2, v3, v4, v5, v6, v7, "axr_logical_image_list_get_image_name");
  }

  *v0 = &unk_296B90CDB;
}

void axr_logical_image_list_get_image_name_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v8, v9, v10);
  }

  AXRLogError("%s: NULL list provided", a2, a3, a4, a5, a6, a7, a8, "axr_logical_image_list_get_image_name");
}

double axr_logical_image_list_get_image_info_cold_1()
{
  OUTLINED_FUNCTION_2();
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  OUTLINED_FUNCTION_1();
  if ((v7 & 2) != 0)
  {
    AXRLogError("%s: image index out of bounds", v0, v1, v2, v3, v4, v5, v6, "axr_logical_image_list_get_image_info");
  }

  return OUTLINED_FUNCTION_3();
}

double axr_logical_image_list_get_image_info_cold_2()
{
  OUTLINED_FUNCTION_2();
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  OUTLINED_FUNCTION_1();
  if ((v7 & 2) != 0)
  {
    AXRLogError("%s: view index out of bounds", v0, v1, v2, v3, v4, v5, v6, "axr_logical_image_list_get_image_info");
  }

  return OUTLINED_FUNCTION_3();
}

double axr_logical_image_list_get_image_info_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  AXRLogError("%s: NULL list provided", a2, a3, a4, a5, a6, a7, a8, "axr_logical_image_list_get_image_info");
  return OUTLINED_FUNCTION_3();
}

void axr_logical_image_list_create_decoder_cold_1(uint64_t a1, void *a2)
{
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v11, v12, v13);
  }

  OUTLINED_FUNCTION_1();
  if ((v10 & 2) != 0)
  {
    AXRLogError("%s: image index out of bounds", v3, v4, v5, v6, v7, v8, v9, "axr_logical_image_list_create_decoder");
  }

  *a2 = 0;
}

void axr_logical_image_list_create_decoder_cold_2(uint64_t a1, void *a2)
{
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v11, v12, v13);
  }

  OUTLINED_FUNCTION_1();
  if ((v10 & 2) != 0)
  {
    AXRLogError("%s: view index out of bounds", v3, v4, v5, v6, v7, v8, v9, "axr_logical_image_list_create_decoder");
  }

  *a2 = 0;
}

void axr_logical_image_list_create_decoder_cold_3(uint64_t a1, void *a2)
{
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v11, v12, v13);
  }

  OUTLINED_FUNCTION_1();
  if ((v10 & 2) != 0)
  {
    AXRLogError("%s: NULL list provided", v3, v4, v5, v6, v7, v8, v9, "axr_logical_image_list_create_decoder");
  }

  *a2 = 0;
}

uint64_t *Part::GetImageProperty@<X0>(Part *this@<X0>, char *a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char **a9@<X8>)
{
  result = Part::GetProperty(this, a4, a3, a3, a5, a6, a7, a8);
  v12 = *result;
  v13 = result[3];
  v14 = &a2[*result];
  v15 = *result == v13;
  if (*result == v13)
  {
    v14 = 0;
  }

  *a9 = v14;
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = &a2[result[1]];
  }

  v17 = result[2];
  a9[1] = v16;
  a9[2] = v17;
  if (v12 == v13)
  {
    v18 = 0;
  }

  else
  {
    v18 = &a2[v13];
  }

  v19 = result[4];
  a9[3] = v18;
  a9[4] = v19;
  return result;
}

unint64_t Attribute::Init(Attribute *this, const char *a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  *this = a4;
  *(this + 1) = a4;
  *(this + 3) = a4;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v5 = a3 - a4;
  if (a3 > a4)
  {
    v9 = strnlen(&a2[a4], a3 - a4);
    v10 = v9 + 1 < v5 ? v9 + 1 : v5;
    v11 = v10 + v4;
    if (v10 != 1 && v11 <= a3)
    {
      v13 = v5 - v10;
      v14 = strnlen(&a2[v11], v5 - v10);
      if (v14 + 1 < v13)
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = v13;
      }

      v4 = v15 + v11;
      if (v15 + v11 > a3)
      {
        return v11;
      }

      else
      {
        *(this + 1) = v11;
        v16 = v4 + 4;
        if (v4 + 4 <= a3)
        {
          v17 = *&a2[v4];
          if ((v17 & 0x80000000) == 0 && v17 + v4 + 4 <= a3)
          {
            *(this + 2) = v17;
            *(this + 3) = v16;
            return v16 + v17;
          }
        }
      }
    }
  }

  return v4;
}

char *Part::GetChunk(Part *this, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v7 = *(*(*(*(this + 35) + 8 * a4) + 16) + 8 * a5);
  if (v7 < *(this + 28) + *(this + 44))
  {
    v10 = 0;
    result = 0;
  }

  else
  {
    v8 = &a2[v7];
    CompressedDataSize = AXRChunkHeader::GetCompressedDataSize(&a2[v7], *(this + 52), *this - v7);
    v10 = CompressedDataSize;
    if (CompressedDataSize)
    {
      result = v8;
    }

    else
    {
      result = 0;
    }
  }

  *a6 = v10;
  return result;
}

void Part::GetChannel(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v11, v12, v13);
  }

  if (((kDefaultAXRLogFlags | a1) & 2) != 0)
  {
    AXRLogError("Error: channel index (%lu) is out of bounds.", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = -1;
  __cxa_throw(exception, MEMORY[0x29EDC94D0], 0);
}

void Part::GetProperty(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (GetFlagsOnceToken != -1)
  {
    goto LABEL_5;
  }

  while (1)
  {
    if (((kDefaultAXRLogFlags | a1) & 2) != 0)
    {
      AXRLogError("Error: property index (%lu) is out of bounds.", a2, a3, a4, a5, a6, a7, a8, v8);
    }

    __break(1u);
LABEL_5:
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v10, v11, v12);
  }
}

void TileDecoder::MakeReadPixelsArgs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 8);
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  if (((kDefaultAXRLogFlags | v8) & 2) != 0)
  {
    AXRLogError("All channels in the pixel must be of the same type.", a2, a3, a4, a5, a6, a7, a8, v12);
  }

  OUTLINED_FUNCTION_2_0();
}

{
  v8 = *(a1 + 8);
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  if (((kDefaultAXRLogFlags | v8) & 2) != 0)
  {
    AXRLogError("All channels in the pixel must have the same X sampling rate.", a2, a3, a4, a5, a6, a7, a8, v12);
  }

  OUTLINED_FUNCTION_2_0();
}

{
  v8 = *(a1 + 8);
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  if (((kDefaultAXRLogFlags | v8) & 2) != 0)
  {
    AXRLogError("All channels in the pixel must have the same Y sampling rate.", a2, a3, a4, a5, a6, a7, a8, v12);
  }

  OUTLINED_FUNCTION_2_0();
}

void TileDecoder::IsInterleavedValid()
{
  OUTLINED_FUNCTION_3_0();
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  if (((kDefaultAXRLogFlags | v1) & 2) != 0)
  {
    AXRLogError("Error: axr_decoder_read_pixels requires that all channels have the same x sampling rate.\n\t%d vs %d", v2, v3, v4, v5, v6, v7, v8, *v0);
  }

  OUTLINED_FUNCTION_2_0();
}

{
  OUTLINED_FUNCTION_3_0();
  if (GetFlagsOnceToken != -1)
  {
    OUTLINED_FUNCTION_0();
    dispatch_once_f(v9, v10, v11);
  }

  if (((kDefaultAXRLogFlags | v1) & 2) != 0)
  {
    AXRLogError("Error: axr_decoder_read_pixels requires that all channels have the same y sampling rate.\n\t%d vs %d", v2, v3, v4, v5, v6, v7, v8, *v0);
  }

  OUTLINED_FUNCTION_2_0();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}