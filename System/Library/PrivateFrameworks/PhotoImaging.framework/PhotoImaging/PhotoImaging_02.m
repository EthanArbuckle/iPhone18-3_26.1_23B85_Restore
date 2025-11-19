void sub_1C782DD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  CKernel::~CKernel(&STACK[0x3930]);
  if (*v69 == 1)
  {
    if (STACK[0x6B00])
    {
      (*(*STACK[0x6B00] + 8))(STACK[0x6B00]);
    }
  }

  CGrNavigator::~CGrNavigator(&a69);
  CGrNavigator::~CGrNavigator(&a53);
  CGrNavigator::~CGrNavigator(&a33);
  CGrNavigator::~CGrNavigator(&a43);
  _Unwind_Resume(a1);
}

unint64_t CMedian::CKernel16x128::IdealTSize(CMedian::CKernel16x128 *this)
{
  v1 = *(this + 1587);
  if (v1)
  {
    return CMedian::CxParms::IdealTSize(v1, 16);
  }

  else
  {
    return 0x10000000100;
  }
}

void CMedian::CKernel16x128::~CKernel16x128(CMedian::CKernel16x128 *this)
{
  CKernel::~CKernel(this);

  JUMPOUT(0x1CCA60F70);
}

uint64_t CMedian::CKernel16x128::Process_(CMedian::CKernel16x128 *this, const CGrNavigator *a2, const CGrNavigator *a3, unsigned int a4, const CGrNavigator *a5)
{
  v140 = *MEMORY[0x1E69E9840];
  v9 = CKernel::BorrowData(this);
  if (!v9)
  {
    return 7;
  }

  v121 = v9;
  v10 = *(v9 + 32) + 788016 * a4;
  v12 = *(a2 + 6);
  v11 = *(a2 + 7);
  v130[1] = 0;
  v131 = v10 + 394800;
  v132 = (2 * v12 + 14) & 0xFFFFFFF0;
  v133 = xmmword_1C7845DE0;
  v134 = v12;
  v135 = v11;
  v136 = 1;
  v137 = 1;
  v130[0] = &unk_1F46EA458;
  v123[1] = 0;
  v124 = v10 + 656944;
  v120 = a3;
  v13 = *(a3 + 3);
  v126 = xmmword_1C7845DE0;
  v127 = v13;
  v125 = (2 * v13 + 14) & 0xFFFFFFF0;
  v128 = 1;
  v129 = 1;
  v122 = this;
  v123[0] = &unk_1F46EA458;
  v14 = *(this + 1587);
  v15 = v10 + 67088;
  v16 = v10 + 132640;
  v17 = (v10 + 263728);
  bzero((v10 + 67088), *(v14 + 44) + 1);
  v18 = v11;
  v19 = *(v14 + 36);
  v20 = *(v14 + 28);
  if (v11)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = (*(a2 + 2) + *(a2 + 3) * v21);
      if (v12 < 0xA)
      {
        v53 = 0;
      }

      else
      {
        v24 = v23[1];
        v25 = *v23;
        v26 = 9;
        v27 = (*(a2 + 2) + *(a2 + 3) * v21);
        do
        {
          v28 = v27[2];
          v29 = *(v15 + v24);
          v30 = v27[3];
          v31 = *(v15 + v25) + 1;
          if (*(v15 + v25) == 255)
          {
            v139[v22++] = v25;
          }

          v32 = v25 ^ v24;
          *(v15 + v25) = v31;
          v33 = *(v15 + v28);
          v34 = v27[4];
          v35 = v29 + ((v32 - 1) >> 31) - 255;
          if (!v35)
          {
            v139[v22++] = v24;
          }

          v36 = v28 ^ v24;
          *(v15 + v24) = v35;
          v37 = *(v15 + v30);
          v38 = v27[5];
          v39 = v33 + ((v36 - 1) >> 31) - 255;
          if (!v39)
          {
            v139[v22++] = v28;
          }

          v40 = v30 ^ v28;
          *(v15 + v28) = v39;
          v41 = *(v15 + v34);
          v42 = v27[6];
          v43 = v37 + ((v40 - 1) >> 31) - 255;
          if (!v43)
          {
            v139[v22++] = v30;
          }

          v44 = v34 ^ v30;
          *(v15 + v30) = v43;
          v45 = *(v15 + v38);
          v46 = v27[7];
          v47 = v41 + ((v44 - 1) >> 31) - 255;
          if (!v47)
          {
            v139[v22++] = v34;
          }

          v48 = v38 ^ v34;
          *(v15 + v34) = v47;
          v49 = *(v15 + v42);
          v23 = v27 + 8;
          v25 = v27[8];
          v50 = v45 + ((v48 - 1) >> 31) - 255;
          if (!v50)
          {
            v139[v22++] = v38;
          }

          v51 = v42 ^ v38;
          *(v15 + v38) = v50;
          v52 = *(v15 + v46);
          v24 = v27[9];
          if (v49 + ((v51 - 1) >> 31) == 255)
          {
            v139[v22++] = v42;
          }

          *(v15 + v42) = v49 + (v51 - 1 < 0) + 1;
          if (v52 + (((v46 ^ v42) - 1) >> 31) == 255)
          {
            v139[v22++] = v46;
          }

          *(v15 + v46) = v52 + (((v46 ^ v42) - 1) < 0) + 1;
          v26 += 8;
          v27 += 8;
        }

        while (v26 < v12);
        v53 = ((v12 - 10) & 0xFFFFFFF8) + 8;
      }

      v54 = v12 >= v53;
      v55 = v12 - v53;
      if (v55 != 0 && v54)
      {
        do
        {
          v56 = *v23++;
          v57 = *(v15 + v56) + 1;
          v139[v22] = v56;
          v22 += v57 >> 8;
          *(v15 + v56) = v57;
          --v55;
        }

        while (v55);
      }

      ++v21;
    }

    while (v21 != v18);
    if (v22 >= 2)
    {
      v118 = v10;
      v119 = v14;
      v58 = v18;
      v59 = v20;
      bensort_(v139, 0, v22 - 1);
      v20 = v59;
      v18 = v58;
      v10 = v118;
      v14 = v119;
    }
  }

  else
  {
    v22 = 0;
  }

  v138 = -1;
  v139[v22] = -1;
  LODWORD(v61) = v22 - 1;
  LODWORD(v62) = v139[v22 - 1];
  v63 = *(v14 + 44);
  if (*(v14 + 46) == 1 && (*(v14 + 47) & 1) != 0)
  {
    LODWORD(v64) = 0;
LABEL_52:
    v68 = v122;
    *v17 = v64;
    v69 = (v64 + 1);
    v70 = 1;
    if ((v69 & 3) != 0 && v69 < v63)
    {
      v70 = 1;
      do
      {
        v71 = *(v15 + v69);
        if (v69 == v62)
        {
          v61 = v61;
          do
          {
            v71 += 256;
            v62 = v139[++v61];
          }

          while (v69 == v62);
        }

        *(v16 + 2 * v69) = v70;
        if (v71)
        {
          v72 = v70;
          do
          {
            v70 = (v72 + 1);
            v17[v72++] = v69;
            --v71;
          }

          while (v71);
        }

        ++v69;
      }

      while ((v69 & 3) != 0 && v69 < v63);
    }

    goto LABEL_66;
  }

  if (v20 + ~v19 < 0)
  {
    LODWORD(v63) = v63 + 1;
  }

  else
  {
    v65 = 0;
    ++v63;
    do
    {
      --v63;
      v65 += *(v15 + v63);
      if (v62 == v63)
      {
        v61 = v61;
        do
        {
          v65 += 256;
          v66 = v139[--v61];
        }

        while (v66 == v62);
        LODWORD(v62) = v66;
      }

      *(v16 + 2 * v63) = -1;
    }

    while (v65 <= v20 + ~v19);
  }

  LODWORD(v62) = v139[0];
  if (v19 < 0)
  {
    if ((v63 & 0x80000000) == 0)
    {
      LODWORD(v61) = 0;
      LODWORD(v69) = 0;
      *v17 = -1;
      v70 = 1;
      v68 = v122;
LABEL_66:
      if (v69 < v63 - 3)
      {
        do
        {
          v73 = v69;
          v74 = *(v15 + v69);
          j = bswap32(v74);
          if ((v69 ^ v62) < 4)
          {
            v79 = HIBYTE(j);
            *(v16 + 2 * v73) = v70;
            if (v62 == v73)
            {
              v61 = v61;
              do
              {
                v79 += 256;
                LODWORD(v62) = v139[++v61];
              }

              while (v62 == v73);
            }

            for (; v79; --v79)
            {
              v17[v70] = v73;
              v70 = (v70 + 1);
            }

            v80 = BYTE2(j);
            *(v16 + 2 * (v73 + 1)) = v70;
            if (v62 == v73 + 1)
            {
              v61 = v61;
              do
              {
                v80 += 256;
                v81 = v139[++v61];
              }

              while (v81 == v62);
              LODWORD(v62) = v81;
            }

            for (; v80; --v80)
            {
              v17[v70] = v73 + 1;
              v70 = (v70 + 1);
            }

            v82 = BYTE1(j);
            *(v16 + 2 * (v73 + 2)) = v70;
            if (v62 == v73 + 2)
            {
              v61 = v61;
              do
              {
                v82 += 256;
                v83 = v139[++v61];
              }

              while (v83 == v62);
              LODWORD(v62) = v83;
            }

            for (; v82; --v82)
            {
              v17[v70] = v73 + 2;
              v70 = (v70 + 1);
            }

            j = j;
            *(v16 + 2 * (v73 + 3)) = v70;
            if (v62 == v73 + 3)
            {
              v61 = v61;
              do
              {
                j += 256;
                v84 = v139[++v61];
              }

              while (v84 == v62);
              LODWORD(v62) = v84;
            }

            for (; j; --j)
            {
              v17[v70] = v73 + 3;
              v70 = (v70 + 1);
            }
          }

          else if (v74)
          {
            *(v16 + 2 * v69) = v70;
            for (i = HIBYTE(j); i; --i)
            {
              v17[v70] = v73;
              v70 = (v70 + 1);
            }

            v77 = BYTE2(j);
            *(v16 + 2 * (v73 + 1)) = v70;
            if (BYTE2(j))
            {
              do
              {
                v17[v70] = v73 + 1;
                v70 = (v70 + 1);
                --v77;
              }

              while (v77);
            }

            v78 = BYTE1(j);
            *(v16 + 2 * (v73 + 2)) = v70;
            if (BYTE1(j))
            {
              do
              {
                v17[v70] = v73 + 2;
                v70 = (v70 + 1);
                --v78;
              }

              while (v78);
            }

            *(v16 + 2 * (v73 + 3)) = v70;
            for (j = j; j; --j)
            {
              v17[v70] = v73 + 3;
              v70 = (v70 + 1);
            }
          }

          LODWORD(v69) = v73 + 4;
        }

        while (v73 + 4 < v63 - 3);
      }

      if (v69 >= v63)
      {
        LODWORD(v87) = v70;
      }

      else
      {
        v85 = v69;
        do
        {
          v86 = *(v15 + v85);
          if (v85 == v62)
          {
            v61 = v61;
            do
            {
              v86 += 256;
              v62 = v139[++v61];
            }

            while (v85 == v62);
          }

          *(v16 + 2 * v85) = v70;
          if (v86)
          {
            do
            {
              v87 = (v70 + 1);
              v17[v70] = v85;
              LODWORD(v70) = v70 + 1;
              --v86;
            }

            while (v86);
          }

          else
          {
            v87 = v70;
          }

          ++v85;
          v70 = v87;
        }

        while (v85 != v63);
      }

      *(v10 + 67072) = v87;
      v17[v87] = v63;
      v88 = (v18 - 1);
      if (v18 - 1 >= 0)
      {
        v89 = *(a2 + 2);
        v90 = *(a2 + 3);
        v91 = v131;
        v92 = v132;
        do
        {
          v93 = (v89 + v90 * v88);
          v94 = (v91 + v92 * v88);
          v95 = *v93;
          v96 = *(v16 + 2 * v95);
          if (v12 != 1)
          {
            v97 = v12 - 1;
            do
            {
              v99 = v93[1];
              ++v93;
              v98 = v99;
              if (v96 - 1 <= 0xFFFD)
              {
                *(v16 + 2 * v95) = v96 + 1;
              }

              v100 = *(v16 + 2 * v98);
              *v94++ = v96;
              LOWORD(v96) = v100;
              v95 = v98;
              --v97;
            }

            while (v97);
            v95 = *v93;
            v96 = *(v16 + 2 * v95);
          }

          *v94 = v96;
          if ((v96 - 1) < 0xFFFE)
          {
            *(v16 + 2 * v95) = v96 + 1;
          }
        }

        while (v88-- > 0);
      }

      goto LABEL_148;
    }

    v68 = v122;
  }

  else
  {
    v67 = 0;
    LODWORD(v61) = 0;
    v64 = -1;
    do
    {
      ++v64;
      v67 += *(v15 + v64);
      if (v64 == v62)
      {
        v61 = v61;
        do
        {
          v67 += 256;
          v62 = v139[++v61];
        }

        while (v64 == v62);
      }

      *(v16 + 2 * v64) = 0;
    }

    while (v67 <= v19);
    if (v64 < v63)
    {
      goto LABEL_52;
    }

    v68 = v122;
    if ((v64 & 0x80000000) == 0)
    {
      v102 = *(v120 + 14);
      if (*(v120 + 14))
      {
        v103 = 0;
        v104 = *(v120 + 12);
        v105 = *(v120 + 2);
        v106 = *(v120 + 3);
        v107 = *(v120 + 4);
        v108 = vdupq_n_s64(v104 - 1);
        v109 = vdupq_n_s64(8uLL);
        do
        {
          if (v104)
          {
            v110 = v105;
            v111 = (v104 + 7) & 0x1FFFFFFF8;
            v112 = xmmword_1C7845C80;
            v113 = xmmword_1C7845DB0;
            v114 = xmmword_1C7845E50;
            v115 = xmmword_1C7845E40;
            do
            {
              v116 = vmovn_s64(vcgeq_u64(v108, v112));
              if (vuzp1_s8(vuzp1_s16(v116, *v108.i8), *v108.i8).u8[0])
              {
                *v110 = v64;
              }

              if (vuzp1_s8(vuzp1_s16(v116, *&v108), *&v108).i8[1])
              {
                *(v110 + v107) = v64;
              }

              if (vuzp1_s8(vuzp1_s16(*&v108, vmovn_s64(vcgeq_u64(v108, *&v113))), *&v108).i8[2])
              {
                v110[v107] = v64;
                *(v110 + 3 * v107) = v64;
              }

              v117 = vmovn_s64(vcgeq_u64(v108, v114));
              if (vuzp1_s8(*&v108, vuzp1_s16(v117, *&v108)).i32[1])
              {
                v110[2 * v107] = v64;
              }

              if (vuzp1_s8(*&v108, vuzp1_s16(v117, *&v108)).i8[5])
              {
                *(v110 + 5 * v107) = v64;
              }

              if (vuzp1_s8(*&v108, vuzp1_s16(*&v108, vmovn_s64(vcgeq_u64(v108, *&v115)))).i8[6])
              {
                v110[3 * v107] = v64;
                *(v110 + 7 * v107) = v64;
              }

              v114 = vaddq_s64(v114, v109);
              v113 = vaddq_s64(v113, v109);
              v112 = vaddq_s64(v112, v109);
              v110 += 4 * v107;
              v115 = vaddq_s64(v115, v109);
              v111 -= 8;
            }

            while (v111);
          }

          ++v103;
          v105 = (v105 + v106);
        }

        while (v103 != v102);
      }

      goto LABEL_149;
    }
  }

LABEL_148:
  CMedian::Median16x128_(*(*(v68 + 1587) + 24), *(*(v68 + 1587) + 36), v130, v123, v10, *(v10 + 67072));
  CMedian::OrdinalTransform(v124, v125, v120, v17);
LABEL_149:
  CKernel::ReturnData(v68, v121);
  CGrNavigator::~CGrNavigator(v123);
  CGrNavigator::~CGrNavigator(v130);
  return 0;
}

void sub_1C782E890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  CGrNavigator::~CGrNavigator(va);
  CGrNavigator::~CGrNavigator(va1);
  _Unwind_Resume(a1);
}

void CMedian::Median16x128_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v10 = a2;
  v12 = *(a4 + 48);
  v58 = (2 * a1);
  v13 = v58 & 0xFFFFFFF0;
  if (((2 * a1) & 0xFFFFFF80) != 0)
  {
    v13 = 128;
  }

  if (v13 <= v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12 & 0xFFFFFFF0;
  }

  if (v14 >= v12)
  {
    v57 = *(a4 + 56);
    v29 = (2 * a1) | 1;
    bzero(a5, 0x10600uLL);
    v30 = a3[2];
    v31 = a3[3];
    if ((*(v30 + 2 * ((a1 & 0x7FFFFFFF) + (v14 >> 1)) + v31 * (a1 & 0x7FFFFFFF)) & 0xFFF0) != 0)
    {
      v32 = *(v30 + 2 * ((a1 & 0x7FFFFFFF) + (v14 >> 1)) + v31 * (a1 & 0x7FFFFFFF)) & 0xFFF0;
    }

    else
    {
      v32 = 16;
    }

    if (v14)
    {
      v33 = vdupq_n_s64(v14 - 1);
      v34 = xmmword_1C7845E40;
      v35 = xmmword_1C7845E50;
      v36 = xmmword_1C7845DB0;
      v37 = xmmword_1C7845C80;
      v38 = (a5 + 8);
      v39 = v14;
      v40 = vdupq_n_s64(8uLL);
      do
      {
        v41 = vmovn_s64(vcgeq_u64(v33, v37));
        if (vuzp1_s8(vuzp1_s16(v41, *v33.i8), *v33.i8).u8[0])
        {
          *(v38 - 4) = v32;
        }

        if (vuzp1_s8(vuzp1_s16(v41, *&v33), *&v33).i8[1])
        {
          *(v38 - 3) = v32;
        }

        if (vuzp1_s8(vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v36))), *&v33).i8[2])
        {
          *(v38 - 2) = v32;
          *(v38 - 1) = v32;
        }

        v42 = vmovn_s64(vcgeq_u64(v33, v35));
        if (vuzp1_s8(*&v33, vuzp1_s16(v42, *&v33)).i32[1])
        {
          *v38 = v32;
        }

        if (vuzp1_s8(*&v33, vuzp1_s16(v42, *&v33)).i8[5])
        {
          v38[1] = v32;
        }

        if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, *&v34)))).i8[6])
        {
          v38[2] = v32;
          v38[3] = v32;
        }

        v35 = vaddq_s64(v35, v40);
        v36 = vaddq_s64(v36, v40);
        v37 = vaddq_s64(v37, v40);
        v38 += 8;
        v34 = vaddq_s64(v34, v40);
        v39 -= 8;
      }

      while (v39);
    }

    v43 = a4;
    v44 = v6;
    v45 = 0;
    do
    {
      Hist16x128Inc(a5, a3[2] + a3[3] * v45++, v29, v32, v14);
    }

    while (v58 + 1 != v45);
    *(a5 + 1280) = 0;
    *(a5 + 66815) = 0;
    if (v14)
    {
      v46 = *(a5 + 768);
      v47 = v14 - 1;
      v48 = (a5 + 514);
      do
      {
        v49 = *v48++;
        v46 += v49;
        --v47;
      }

      while (v47);
      v50 = 129;
      v51 = a5;
      v52 = v14;
      do
      {
        *(v51 + 256) = v46;
        v46 = v46 + *(a5 + 512 + 2 * v50) - *(v51 + 514);
        v51 += 2;
        ++v50;
        --v52;
      }

      while (v52);
    }

    if (v57)
    {
      Hist16x128ReadC1(a5, *(a4 + 16), v10, v14, v44);
      if (v57 != 1)
      {
        v53 = 0;
        do
        {
          Hist16x128Step(a5, (a3[2] + a3[3] * (v58 + 1 + v53)), (a3[2] + a3[3] * v53), v29, v14);
          ++v53;
          Hist16x128ReadC1(a5, *(v43 + 16) + *(v43 + 24) * v53, v10, v14, v44);
        }

        while (v57 - 1 != v53);
      }
    }
  }

  else if (!__CFADD__(v12 - 1, v14))
  {
    v15 = a4;
    v16 = a6;
    v17 = a2;
    v18 = 0;
    v19 = 0;
    v54 = (v12 - 1 + v14) / v14;
    v56 = *(a4 + 48);
    v55 = v14;
    do
    {
      v20 = v14 + v18;
      if (v14 + v18 >= v12)
      {
        v20 = v12;
      }

      v21 = v18 - 8;
      if ((v20 & 0xF) == 0)
      {
        v21 = v18;
      }

      v22 = *(v15 + 56);
      v64 = v21;
      v65 = v20;
      v66 = v22;
      v23 = a3[7];
      v61 = v21;
      v62 = v20 + v58;
      v63 = v23;
      v24 = a3;
      v25 = v17;
      v14 = v16;
      CGrNavigator::CGrNavigator(v60, a3, &v61);
      v60[0] = &unk_1F46EA458;
      v26 = v15;
      *&v27 = CGrNavigator::CGrNavigator(v59, v15, &v64);
      v59[0] = &unk_1F46EA458;
      v28 = v14;
      CMedian::Median16x128_(a1, v25, v60, v59, a5, v14, v27);
      CGrNavigator::~CGrNavigator(v59);
      CGrNavigator::~CGrNavigator(v60);
      ++v19;
      LODWORD(v14) = v55;
      v18 += v55;
      v16 = v28;
      v15 = v26;
      v17 = v25;
      a3 = v24;
      v12 = v56;
    }

    while (v19 < v54);
  }
}

void sub_1C782ED14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  CGrNavigator::~CGrNavigator(&a16);
  CGrNavigator::~CGrNavigator(&a26);
  _Unwind_Resume(a1);
}

uint64_t Hist16x128Inc(uint64_t result, uint64_t a2, unsigned int a3, int a4, unsigned int a5)
{
  v5 = result + 1280;
  if (a5 >= 2)
  {
    v6 = 0;
    v7 = result + 512;
    v8 = result + 514;
    do
    {
      v9 = *(a2 + 2 * v6);
      v10 = *(a2 + 2 * a3 + 2 * v6);
      v11 = *(v8 + 2 * v6);
      v12 = v6 + 1;
      v13 = *(v7 + 2 * (v6 + 129));
      *(v5 + v9) = v6 + 1;
      *(v5 + v10) = v6 - 127;
      if (v9 >= a4)
      {
        v14 = v11;
      }

      else
      {
        v14 = v11 + 1;
      }

      if (v10 >= a4)
      {
        v15 = v13;
      }

      else
      {
        v15 = v13 + 1;
      }

      *(v8 + 2 * v6) = v14;
      *(v7 + 2 * (v6++ + 129)) = v15;
    }

    while (a5 - 1 != v12);
  }

  v16 = *(result + 768);
  LODWORD(v17) = a3 - (a5 - 1);
  if (a3 != a5 - 1)
  {
    v18 = (a2 + 2 * (a5 - 1));
    if (v17 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v17;
    }

    do
    {
      v20 = *v18++;
      v19 = v20;
      if (v20 < a4)
      {
        ++v16;
      }

      *(v5 + v19) = 0x80;
      --v17;
    }

    while (v17);
  }

  *(result + 768) = v16;
  return result;
}

uint64_t Hist16x128ReadC1(uint64_t result, uint64_t a2, unsigned int a3, int a4, unsigned int a5)
{
  if (a4)
  {
    v5 = 0;
    v6 = result + 256;
    v7 = result + 1280;
    do
    {
      v8 = *(v6 + 2 * v5);
      v9 = *(result + 2 * v5);
      v10 = v5 + 129;
      v11 = v9;
      if (v8 <= a3)
      {
        do
        {
          v11 = v9;
          if ((v9 & 0x3F) == 0)
          {
            if (v9 >= a5)
            {
              break;
            }

            *(v6 + 2 * v5) = v8;
            *(result + 2 * v5) = v9;
          }

          ++v9;
          v8 += ((*(v7 + v11) - v10) >> 7) & 1;
        }

        while (v8 <= a3);
      }

      else
      {
        do
        {
          if ((v11 & 0x3F) == 0)
          {
            if (!v11)
            {
              break;
            }

            *(v6 + 2 * v5) = v8;
            *(result + 2 * v5) = v11;
          }

          v8 += (*(v7 + --v11) - v10) << 24 >> 31;
        }

        while (v8 > a3);
      }

      *(a2 + 2 * v5++) = v11;
    }

    while (v5 != a4);
  }

  return result;
}

uint64_t Hist16x128Step(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned int a4, unsigned int a5)
{
  result = Hist16x128Delta1_(a1, a2, a3, a4, a5);
  v11 = a1 + 1280;
  if (a5 >= 2)
  {
    v12 = 1;
    v13 = a2;
    v14 = a3;
    do
    {
      v15 = v13[a4];
      v16 = *v13++;
      v17 = *v14;
      v18 = v14[a4];
      *(v11 + v16) = v12;
      *(v11 + v15) = v12 ^ 0x80;
      *(v11 + v17) = 0;
      *(v11 + v18) = 0;
      ++v12;
      ++v14;
    }

    while (a5 != v12);
  }

  v19 = a5 - 1;
  LODWORD(v20) = a4 - (a5 - 1);
  if (a4 != a5 - 1)
  {
    v21 = &a2[v19];
    v22 = &a3[v19];
    if (v20 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v20;
    }

    do
    {
      v24 = *v21++;
      v23 = v24;
      v25 = *v22++;
      *(v11 + v23) = 0x80;
      *(v11 + v25) = 0;
      --v20;
    }

    while (v20);
  }

  *(a1 + 1280) = 0;
  *(a1 + 66815) = 0;
  return result;
}

uint64_t Hist16x128Delta1_(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = result + 256;
    v8 = a4;
    do
    {
      v9 = *(result + 2 * v6);
      v10 = *(v7 + 2 * v6);
      if (v9 <= 1)
      {
        v9 = 1;
      }

      if (v6 < v6 + a4)
      {
        v11 = v5 + v8;
        v12 = a2;
        v13 = a3;
        do
        {
          v14 = *v12++;
          if (v14 < v9)
          {
            ++v10;
          }

          v15 = *v13++;
          v10 = (__PAIR64__(v10, v15) - v9) >> 32;
          --v11;
        }

        while (v11);
      }

      *(v7 + 2 * v6++) = v10;
      ++v8;
      --v5;
      ++a3;
      ++a2;
    }

    while (v6 != a5);
  }

  return result;
}

unint64_t CMedian::CKernel32x128::IdealTSize(CMedian::CKernel32x128 *this)
{
  v1 = *(this + 1587);
  if (v1)
  {
    return CMedian::CxParms::IdealTSize(v1, 16);
  }

  else
  {
    return 0x10000000100;
  }
}

void CMedian::CKernel32x128::~CKernel32x128(CMedian::CKernel32x128 *this)
{
  CKernel::~CKernel(this);

  JUMPOUT(0x1CCA60F70);
}

uint64_t CMedian::CKernel32x128::Process_(CMedian::CKernel32x128 *this, const CGrNavigator *a2, const CGrNavigator *a3, unsigned int a4, const CGrNavigator *a5)
{
  v7 = malloc_type_calloc(0x1F4600uLL, 1uLL, 0x1000040DAE1380EuLL);
  v8 = (v7 + 869888);
  v9 = (v7 + 345600);
  v10 = (v7 + 83456);
  v11 = *(a2 + 6);
  v12 = *(a2 + 7);
  v13 = (2 * v11 + 14) & 0xFFFFFFF0;
  v14 = v7 + 1394176;
  v78[1] = 0;
  v78[2] = v7 + 1394176;
  v78[3] = v13;
  v79 = xmmword_1C7845DE0;
  v80 = v11;
  v81 = v12;
  v82 = 1;
  v83 = 1;
  v78[0] = &unk_1F46EA458;
  v71[1] = 0;
  v72 = (v7 + 1656320);
  v15 = *(a3 + 3);
  v74 = xmmword_1C7845DE0;
  v75 = v15;
  v73 = (2 * v15 + 14) & 0xFFFFFFF0;
  v76 = 1;
  v77 = 1;
  v70 = v7;
  v71[0] = &unk_1F46EA458;
  v16 = v7 + 67072;
  v67 = a3;
  v68 = *(*(this + 1587) + 36);
  v17 = v7 + 75264;
  bzero(v7 + 67072, 0x4000uLL);
  if (v12)
  {
    v18 = 0;
    v19 = *(a2 + 2);
    v20 = *(a2 + 3);
    do
    {
      if (v11)
      {
        v21 = v19;
        v22 = v11;
        do
        {
          v23 = *v21++;
          ++v16[(v23 ^ (v23 >> 31)) & 0x7FF];
          --v22;
        }

        while (v22);
      }

      ++v18;
      v19 = (v19 + v20);
    }

    while (v18 != v12);
  }

  v24 = 0;
  v25 = 0;
  do
  {
    v26 = v16[v24];
    v16[v24] = v25;
    v25 += v26;
    ++v24;
  }

  while (v24 != 2048);
  if (v12)
  {
    v27 = 0;
    v28 = *(a2 + 2);
    v29 = *(a2 + 3);
    do
    {
      if (v11)
      {
        v30 = 0;
        v31 = v28;
        do
        {
          v32 = *v31++;
          v33 = ((v32 >> 31) | 0x80000000) ^ v32;
          v34 = v16[v33 & 0x7FF];
          v16[v33 & 0x7FF] = v34 + 1;
          v35 = (v33 >> 11) & 0x7FF;
          ++*&v17[4 * v35];
          v70[v34 + 41728] = v35;
          *&v70[2 * v34 + 172800] = (v27 << 11) | v30++ | v33 & 0xFFC00000;
        }

        while (v11 != v30);
      }

      ++v27;
      v28 = (v28 + v29);
    }

    while (v27 != v12);
  }

  v36 = 0;
  v37 = 0;
  do
  {
    v38 = *&v17[v36];
    *&v17[v36] = v37;
    v37 += v38;
    v36 += 4;
  }

  while (v36 != 0x2000);
  bzero(v16, 0x1000uLL);
  v39 = (v12 * v11);
  if (v39)
  {
    v40 = v9;
    v41 = (v12 * v11);
    do
    {
      v42 = *v10++;
      v43 = *&v17[4 * v42];
      *&v17[4 * v42] = v43 + 1;
      v44 = *v40++;
      ++*(v16 + ((v44 >> 20) & 0xFFC));
      *&v70[2 * v43 + 434944] = v44;
      --v41;
    }

    while (v41);
  }

  v45 = 0;
  v46 = 0;
  v47 = v68;
  do
  {
    v48 = v16[v45];
    v16[v45] = v46;
    v46 += v48;
    ++v45;
  }

  while (v45 != 2048);
  if (v39)
  {
    v49 = (v12 * v11);
    do
    {
      v50 = *v8++;
      v51 = (v50 >> 20) & 0xFFC;
      v52 = *(v16 + v51);
      *(v16 + v51) = v52 + 1;
      *&v70[2 * v52 + 172800] = v50;
      --v49;
    }

    while (v49);
  }

  v53 = *(a2 + 2);
  v54 = *(a2 + 3);
  LODWORD(v55) = v68 + 0x10000;
  if (v39 >= v68 + 0x10000)
  {
    v55 = v55;
  }

  else
  {
    v55 = v39;
  }

  if (v68)
  {
    v56 = v68;
    do
    {
      v57 = *v9++;
      *&v14[2 * (v57 & 0x7FF) + v13 * ((v57 >> 11) & 0x7FF)] = 0;
      --v56;
    }

    while (v56);
  }

  if (v55 > v68)
  {
    v58 = 0;
    do
    {
      v59 = *&v70[2 * v68 + 172800 + 2 * v58];
      v60 = (v59 >> 11) & 0x7FF;
      v61 = v59 & 0x7FF;
      v62 = *(v53 + 4 * v61 + v54 * v60);
      *&v14[2 * v61 + v13 * v60] = v58;
      *&v70[2 * v58++ + 893696] = v62;
    }

    while (v55 - v68 != v58);
    v47 = v55;
  }

  if (v47 < v39)
  {
    v63 = v39 - v47;
    v64 = &v70[2 * v47 + 172800];
    do
    {
      v65 = *v64++;
      *&v14[2 * (v65 & 0x7FF) + v13 * ((v65 >> 11) & 0x7FF)] = -1;
      --v63;
    }

    while (v63);
  }

  CMedian::Median16x128_(*(*(this + 1587) + 24), *(*(this + 1587) + 36), v78, v71, v70, 0xFFFFLL);
  CMedian::OrdinalTransform(v72, v73, v67, (v70 + 893696));
  free(v70);
  CGrNavigator::~CGrNavigator(v71);
  CGrNavigator::~CGrNavigator(v78);
  return 0;
}

void sub_1C782F4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  CGrNavigator::~CGrNavigator(va);
  CGrNavigator::~CGrNavigator(va1);
  _Unwind_Resume(a1);
}

unsigned __int16 *CMedian::OrdinalTransform(unsigned __int16 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 56);
  if (*(a3 + 56))
  {
    v5 = 0;
    v6 = *(a3 + 48);
    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    do
    {
      v9 = result;
      v10 = v7;
      for (i = v6; i; --i)
      {
        v12 = *v9++;
        *v10++ = *(a4 + 4 * v12);
      }

      ++v5;
      v7 = (v7 + v8);
      result = (result + a2);
    }

    while (v5 != v4);
  }

  return result;
}

void CMemEnv::Dispose(CMemEnv *this, void *a2)
{
  v4 = (*(*this + 56))(this);
  --*(this + 2);
  if (a2 && v4)
  {

    free(v4);
  }
}

uint64_t CMemEnv::Allocate(CMemEnv *this, size_t size, int a3)
{
  if (!a3)
  {
    result = malloc_type_malloc(size, 0xB6BDB15EuLL);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = malloc_type_calloc(size, 1uLL, 0xB26D7105uLL);
  if (result)
  {
LABEL_5:
    ++*(this + 2);
    return result ^ 0xCAFDECAFLL;
  }

  return result;
}

uint64_t CKernel::Process(CKernel *this, int64x2_t *a2, int64x2_t *a3, const CGrNavigator *a4)
{
  v5 = a3;
  v8 = vmovn_s64(a2[3]);
  v74 = vmovn_s64(a3[3]);
  v9 = (*(*this + 24))(this);
  v10 = 16 * v9;
  v11 = v74.i32[0];
  v12 = (16 * v9) >= v74.i32[0] && (16 * HIDWORD(v9)) >= v74.i32[1];
  v77 = v5;
  v78 = a4;
  if (!v12)
  {
    if (v74.i32[1])
    {
      v76 = a2;
      v13 = 0;
      v14 = vsub_s32(v8, v74);
      v72 = v14.i32[1];
      v73 = 16 * HIDWORD(v9);
      v75 = v14.i32[0] + v10;
      while (1)
      {
        v15 = 0;
        v16 = v13 + v73;
        v17 = v9;
        while (v15 < v11)
        {
          v18 = v15 + v10;
          v96 = __PAIR64__(v13, v15);
          v97 = v15 + v10;
          v98 = v13 + v73;
          v93 = __PAIR64__(v13, v15);
          v94 = v75 + v15;
          v95 = v72 + v13 + v73;
          CGrNavigator::CGrNavigator(v89, v5, &v96);
          *&v19 = CGrNavigator::CGrNavigator(v85, v76, &v93);
          if (v78)
          {
            *&v20 = CGrNavigator::CGrNavigator(v81, v78, &v96);
            v21 = (*(*this + 32))(this, v85, v89, v81, v20);
            CGrNavigator::~CGrNavigator(v81);
            if (!v21)
            {
              goto LABEL_14;
            }

            v22 = 0;
            v17 = v21;
          }

          else
          {
            v23 = (*(*this + 32))(this, v85, v89, 0, v19);
            if (!v23)
            {
LABEL_14:
              v22 = 1;
              goto LABEL_15;
            }

            v22 = 0;
            v17 = v23;
          }

LABEL_15:
          CGrNavigator::~CGrNavigator(v85);
          CGrNavigator::~CGrNavigator(v89);
          v15 = v18;
          v5 = v77;
          if ((v22 & 1) == 0)
          {
            return v17;
          }
        }

        v9 = v17;
        v13 += v73;
        v17 = 0;
        if (v16 >= v74.i32[1])
        {
          return v17;
        }
      }
    }

    return 0;
  }

  if (*(this + 33) == 1)
  {
    v24 = a2[1].i64[1] | a2[1].i64[0] | a2[2].i64[1];
    v25 = v24 & -v24;
    v26 = *(v5 + 3) | *(v5 + 2) | *(v5 + 5);
    v28 = (v26 & -v26) < 0x10 || v25 < 0x10;
    if (a4)
    {
      v29 = *(a4 + 3) | *(a4 + 2) | *(a4 + 5);
      v28 |= (v29 & -v29) < 0x10;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = *(v5 + 6);
  v31 = *(this + 6);
  v32 = *(this + 7);
  if (v30 % v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30 >= v31;
  }

  if (!v33 || (v28 & 1) != 0)
  {
    if (v30 <= v31)
    {
      LODWORD(v56) = *(this + 6);
    }

    else
    {
      v56 = *(v5 + 6);
    }

    if (v56 % v32)
    {
      v57 = (v32 + v56 - 1) & -v32;
    }

    else
    {
      v57 = v56;
    }

    CGrNavigator::CGrNavigator(v89, *(this + 2), v57 - v30 + a2[3].i64[0], a2[3].i64[1], a2[2].i64[0]);
    CGrNavigator::CGrNavigator(v85, *(this + 2), v57, *(v5 + 7), *(v5 + 4));
    if (v92 == 1 && (v88 & 1) != 0)
    {
      v58 = *(v5 + 4) * *(v5 + 6);
      if (a2[3].i64[1])
      {
        v59 = 0;
        v60 = (a2[2].i32[0] * a2[3].i32[0]);
        v61 = 1;
        do
        {
          memcpy((v90 + v91 * v59), (a2[1].i64[0] + a2[1].i64[1] * v59), v60);
          v59 = v61;
          v62 = a2[3].i64[1] > v61++;
        }

        while (v62);
      }

      if (*(this + 32) == 1 && *(v77 + 7) != 0)
      {
        v64 = 0;
        v65 = 1;
        do
        {
          memcpy((v86 + v87 * v64), (*(v77 + 2) + *(v77 + 3) * v64), v58);
          v64 = v65;
          v62 = *(v77 + 7) > v65++;
        }

        while (v62);
      }

      if (!v78)
      {
        v17 = (*(*this + 32))(this, v89, v85, 0);
        if (!v17)
        {
LABEL_81:
          if (*(v77 + 7))
          {
            v69 = 0;
            v70 = 1;
            do
            {
              memcpy((*(v77 + 2) + *(v77 + 3) * v69), (v86 + v87 * v69), v58);
              v69 = v70;
              v62 = *(v77 + 7) > v70++;
            }

            while (v62);
          }

          v17 = 0;
        }

LABEL_87:
        CGrNavigator::~CGrNavigator(v85);
        CGrNavigator::~CGrNavigator(v89);
        return v17;
      }

      CGrNavigator::CGrNavigator(v81, *(this + 2), v57, *(v78 + 7), *(v78 + 4));
      if (v84)
      {
        if (*(v78 + 7))
        {
          v66 = 0;
          v67 = (*(v78 + 8) * *(v78 + 12));
          v68 = 1;
          do
          {
            memcpy((v82 + v83 * v66), (*(v78 + 2) + *(v78 + 3) * v66), v67);
            v66 = v68;
            v62 = *(v78 + 7) > v68++;
          }

          while (v62);
        }

        v17 = (*(*this + 32))(this, v89, v85, v81);
        CGrNavigator::~CGrNavigator(v81);
        if (v17)
        {
          goto LABEL_87;
        }

        goto LABEL_81;
      }

      CGrNavigator::~CGrNavigator(v81);
    }

    v17 = 7;
    goto LABEL_87;
  }

  v34 = v74.i32[0] + v9 - 1;
  v35 = v34 / v9;
  v36 = (v74.i32[1] - 1 + HIDWORD(v9)) / HIDWORD(v9);
  v37 = v36 * v35;
  *(this + 16) = v37;
  if (!__CFADD__(v74.i32[1] - 1, HIDWORD(v9)))
  {
    v38 = 0;
    v39 = *&vsub_s32(v8, v74) & 0xFFFFFFFEFFFFFFFELL;
    do
    {
      if (v34 >= v9)
      {
        v40 = 0;
        v41 = 0;
        v42 = v38 * HIDWORD(v9) + HIDWORD(v9);
        if (v42 >= v74.i32[1])
        {
          v42 = v74.i32[1];
        }

        do
        {
          v43 = v38 * v35 + v41;
          if ((v31 + v40) <= v74.i32[0])
          {
            v44 = v40;
          }

          else
          {
            v44 = v74.i32[0] - v31;
          }

          v45 = (this + 16 * v43 + 8264);
          v46 = v44 + v9;
          v47 = v44 & ~(v44 >> 31);
          if (v46 >= v74.i32[0])
          {
            v46 = v74.i32[0];
          }

          *v45 = v47;
          v45[1] = (v38 * HIDWORD(v9)) & ~((v38 * HIDWORD(v9)) >> 31);
          v45[2] = v46;
          v45[3] = v42;
          v48 = (this + 16 * v43 + 4168);
          *v48->i8 = *v45;
          v48[1] = vadd_s32(v48[1], v39);
          *(this + v43 + 12360) = 0;
          ++v41;
          v40 += v9;
        }

        while (v41 < v35);
      }

      ++v38;
    }

    while (v38 < v36);
  }

  if (v37)
  {
    v49 = 0;
    *(this + 5) = a2;
    *(this + 6) = v5;
    v50 = (this + 80);
    *(this + 7) = a4;
    do
    {
      *(v50 - 1) = this;
      *v50 = v49;
      v50 += 4;
      ++v49;
    }

    while (v49 < v37);
    global_queue = dispatch_get_global_queue(0, 0);
    v52 = dispatch_group_create();
    if (v52)
    {
      v53 = v52;
      if (*(this + 16))
      {
        v54 = 0;
        v55 = MEMORY[0x1E69E9820];
        do
        {
          block[0] = v55;
          block[1] = 0x40000000;
          block[2] = ___ZN7CKernel7ProcessERK12CGrNavigatorS2_PS1__block_invoke;
          block[3] = &__block_descriptor_tmp;
          block[4] = this;
          v80 = v54;
          dispatch_group_async(v53, global_queue, block);
          ++v54;
        }

        while (v54 < *(this + 16));
      }

      dispatch_group_wait(v53, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v53);
    }
  }

  return 0;
}

void sub_1C782FD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  CGrNavigator::~CGrNavigator(&a22);
  CGrNavigator::~CGrNavigator(&a32);
  CGrNavigator::~CGrNavigator((v32 - 216));
  _Unwind_Resume(a1);
}

void ___ZN7CKernel7ProcessERK12CGrNavigatorS2_PS1__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32) + 16 * *(a1 + 40);
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  if ((*(v3 + 12360 + v2) & 1) == 0)
  {
    *(v3 + 12360 + v2) = 1;
    v4 = (v3 + 16 * v2);
    CGrNavigator::CGrNavigator(v10, *(v3 + 40), v4 + 521);
    *&v5 = CGrNavigator::CGrNavigator(v9, *(v3 + 48), v4 + 1033);
    v6 = *(v3 + 56);
    if (v6)
    {
      *&v7 = CGrNavigator::CGrNavigator(v8, v6, v4 + 1033);
      (**v3)(v3, v10, v9, 0, v8, v7);
      CGrNavigator::~CGrNavigator(v8);
    }

    else
    {
      (**v3)(v3, v10, v9, 0, 0, v5);
    }

    CGrNavigator::~CGrNavigator(v9);
    CGrNavigator::~CGrNavigator(v10);
  }
}

void sub_1C782FEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  CGrNavigator::~CGrNavigator(va);
  CGrNavigator::~CGrNavigator((v11 - 112));
  _Unwind_Resume(a1);
}

uint64_t CKernel::Process_(CKernel *this, const CGrNavigator *a2, const CGrNavigator *a3, unsigned int a4, const CGrNavigator *a5)
{
  v5 = *(a3 + 6);
  v6 = *(a3 + 7);
  v7 = v6;
  v8 = (*(a2 + 12) - v5);
  v9 = (*(a2 + 14) - v6) >> 1;
  v10 = *(a3 + 4);
  if (v10 == 1)
  {
    if (v6)
    {
      v31 = 0;
      v32 = v8 >> 1;
      do
      {
        if (v5)
        {
          v33 = 0;
          do
          {
            *(*(a3 + 2) + *(a3 + 3) * v31 + *(a3 + 4) * v33) = ~*(*(a2 + 2) + *(a2 + 3) * (v9 + v31) + *(a2 + 4) * (v32 + v33));
            ++v33;
          }

          while (v5 != v33);
        }

        ++v31;
      }

      while (v31 != v7);
    }
  }

  else
  {
    v11 = v8 >> 1;
    if (v10 == 2)
    {
      if (v6)
      {
        v22 = 0;
        v23 = *(a2 + 2);
        v24 = *(a2 + 3);
        v25 = *(a2 + 4);
        v26 = *(a3 + 2);
        v27 = *(a3 + 3);
        do
        {
          if (v5)
          {
            v28 = v11;
            v29 = v26;
            v30 = v5;
            do
            {
              *v29++ = 0x8000 - *(v23 + v24 * (v9 + v22) + v25 * v28++);
              --v30;
            }

            while (v30);
          }

          ++v22;
          v26 = (v26 + v27);
        }

        while (v22 != v7);
      }
    }

    else if (v10 == 4 && v6 != 0)
    {
      v13 = 0;
      v14 = *(a2 + 2);
      v15 = *(a2 + 3);
      v16 = *(a2 + 4);
      v18 = *(a3 + 2);
      v17 = *(a3 + 3);
      do
      {
        if (v5)
        {
          v19 = v11;
          v20 = v18;
          v21 = v5;
          do
          {
            *v20++ = 1.0 - *(v14 + v15 * (v9 + v13) + v16 * v19++);
            --v21;
          }

          while (v21);
        }

        ++v13;
        v18 = (v18 + v17);
      }

      while (v13 != v7);
    }
  }

  return 0;
}

void CKernel::~CKernel(CKernel *this)
{
  *this = &unk_1F46EA510;
  freeDataNodes(*(this + 1577));
  *(this + 1577) = 0;
  freeDataNodes(*(this + 1578));
  *(this + 1578) = 0;
  pthread_mutex_destroy((this + 12632));
  *(this + 8) = 0;
}

uint64_t freeDataNodes(uint64_t result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = v1[1];
      if (*v1)
      {
        (*(**v1 + 8))(*v1);
      }

      result = MEMORY[0x1CCA60F70](v1, 0x20C40A4A59CD2);
      v1 = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t CKernel::BorrowData(CKernel *this)
{
  pthread_mutex_lock((this + 12632));
  v2 = *(this + 1577);
  if (!v2)
  {
    operator new();
  }

  *(this + 1577) = v2[1];
  v2[1] = 0;
  v3 = *(this + 1578);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 8);
    }

    while (v3);
    v5 = (v4 + 8);
  }

  else
  {
    v5 = (this + 12624);
  }

  *v5 = v2;
  if (*v2)
  {
    (*(**v2 + 80))(*v2);
    v6 = *v2;
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock((this + 12632));
  return v6;
}

uint64_t CKernel::ReturnData(CKernel *this, CMemBlock *a2)
{
  pthread_mutex_lock((this + 12632));
  v4 = *(this + 1578);
  if (v4)
  {
    if (*v4 == a2)
    {
      *(this + 1578) = *(v4 + 8);
      *(v4 + 8) = 0;
      v6 = *v4;
      if (*v4)
      {
LABEL_8:
        (*(*v6 + 88))(v6);
      }

LABEL_9:
      v7 = *(this + 1577);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *(v7 + 8);
        }

        while (v7);
        v9 = (v8 + 8);
      }

      else
      {
        v9 = (this + 12616);
      }

      *v9 = v4;
    }

    else
    {
      while (1)
      {
        v5 = v4;
        v4 = *(v4 + 8);
        if (!v4)
        {
          break;
        }

        v6 = *v4;
        if (*v4 == a2)
        {
          *(v5 + 8) = *(v4 + 8);
          *(v4 + 8) = 0;
          if (v6)
          {
            goto LABEL_8;
          }

          goto LABEL_9;
        }
      }
    }
  }

  return pthread_mutex_unlock((this + 12632));
}

unint64_t CMedian::CKernel8C::IdealTSize(CMedian::CKernel8C *this)
{
  v1 = *(this + 1587);
  if (v1)
  {
    return CMedian::CxParms::IdealTSize(v1, 8);
  }

  else
  {
    return 0x10000000100;
  }
}

uint64_t CMedian::CKernel8C::Process_(CMedian::CKernel8C *this, const CGrNavigator *a2, const CGrNavigator *a3, unsigned int a4, int64x2_t *a5)
{
  v9 = this;
  v339 = *MEMORY[0x1E69E9840];
  v10 = CKernel::BorrowData(this);
  if (!v10)
  {
    return 7;
  }

  v11 = v10;
  v12 = (*(v10 + 32) + 576 * a4);
  v13 = *(v9 + 1587);
  if (*(v13 + 46) == 1 && a5 && (*(v13 + 47) & 1) != 0)
  {
    v14 = *(a2 + 2);
    v332 = 0;
    v333 = v14;
    v334 = *(a2 + 24);
    v335 = *(a2 + 40);
    v336 = *(a2 + 56);
    v337 = *(a2 + 72);
    v338 = 0;
    v331 = &unk_1F46EA598;
    v15 = *(a3 + 2);
    v324 = 0;
    v325 = v15;
    v16 = *(a3 + 40);
    v326 = *(a3 + 24);
    v327 = v16;
    v17 = *(a3 + 56);
    v328 = v17;
    v329 = *(a3 + 72);
    v330 = 0;
    v323 = &unk_1F46EA600;
    v18 = a5[1].i64[1];
    v318 = a5[1].i64[0];
    *v319 = v18;
    v19 = vshrq_n_s64(vshlq_n_s64(a5[3], 0x20uLL), 0x20uLL);
    *&v319[8] = a5[2];
    *&v319[24] = v19;
    *&v319[40] = a5[4].i64[0];
    v320 = 1;
    v316 = &unk_1F46EA598;
    v317 = 0;
    v284 = DWORD2(v16) - 1;
    v275 = v13 + 822;
    v20 = *(v13 + 822 + 2 * *v318);
    v274 = v13 + 53;
    v289 = *v318;
    v21 = *(v13 + 53 + v289);
    v22 = *(v13 + 16);
    if (v22)
    {
      v23 = *(v22 + 32);
    }

    else
    {
      v23 = 0;
    }

    v145 = v17;
    v307 = *(v13 + 24);
    v273 = v13 + 310;
    bzero(v12, 0x240uLL);
    v146 = v12 + 16;
    v308[0] = 0;
    v322 = v20;
    v277 = v23;
    v147 = v23 + (v289 << 7);
    v148 = v21;
    v149 = -v21;
    v150 = v333;
    v151 = v334;
    do
    {
      if (v149 >= 0)
      {
        v152 = v149;
      }

      else
      {
        v152 = -v149;
      }

      v153 = *(v147 + v152) - 1;
      v154 = (v150 + v151 * (v149 + v307) + (v307 - v153));
      if (v154)
      {
        v155 = (2 * v153) | 1u;
        do
        {
          v156 = *v154++;
          ++v146[v156];
          --v155;
        }

        while (v155);
      }
    }

    while (v149++ != v21);
    v278 = v20;
    v280 = v11;
    LODWORD(v158) = 0;
    v159 = 0;
    v282 = v13 + 1334;
    v160 = v307 - 1;
    v161 = v307 + 1;
    v162 = v277;
    v272 = v277 + 1;
    v163 = v284;
    v164 = 1;
LABEL_67:
    v283 = v289;
    v288 = -v148;
    v158 = v158;
    v287 = v307 - v148;
    v165 = v160 + v158;
    v166 = v161 + v158;
    v285 = (2 * v148) | 1;
    while (1)
    {
      v167 = v325;
      v168 = v326;
      if (v289)
      {
        v294 = v166;
        v296 = v165;
        v169 = v158;
        v303 = v163;
        v170 = Hist8CRead_(v146, v308, &v322);
        if (*(v282 + v289))
        {
          v158 = v169;
          v170 += ((*(v150 + (v159 + v307) + v151 * (v307 + v169)) - v170) * *(v282 + v289)) >> 8;
          v163 = v303;
        }

        else
        {
          v163 = v303;
          v158 = v169;
        }

        v165 = v296;
        v166 = v294;
      }

      else
      {
        LOBYTE(v170) = *(v150 + (v159 + v307) + v151 * (v307 + v158));
      }

      *(*(&v168 + 1) * v159 + v167 + v168 * v158) = v170;
      if (v159 != v163)
      {
        v181 = v159 - (v164 == -1);
        if (v164 < 1)
        {
          v182 = v318[v181 + *v319 * v158];
          v183 = v289;
          v186 = v182;
          v184 = v289;
          v185 = v318[v181 + *v319 * v158];
          LODWORD(v289) = v185;
          v162 = v277;
        }

        else
        {
          v182 = v318[v159 + 1 + *v319 * v158];
          v183 = v182;
          v184 = v318[v159 + 1 + *v319 * v158];
          v185 = v289;
          LODWORD(v289) = v184;
          v162 = v277;
          v186 = v283;
        }

        v187 = v322 - v278;
        v188 = *(v274 + v182);
        v278 = *(v275 + 2 * v182);
        v189 = v187 + v278;
        v304 = v163;
        v276 = v158;
        v299 = v188;
        if (*(v273 + 2 * v186) != *(v273 + 2 * v183))
        {
          v210 = v162 + (v185 << 7);
          LODWORD(v211) = *(v274 + v186);
          v212 = v162 + (v184 << 7);
          v213 = *(v274 + v183);
          v214 = v307 + v158;
          v150 = v333;
          v151 = v334;
          v215 = v333 + (v181 + v307);
          v216 = v308[0];
          if (v213 <= v211)
          {
            v211 = v211;
          }

          else
          {
            v211 = v213;
          }

          while (1)
          {
            v217 = *(v210 + v211);
            v218 = *(v212 + v211);
            v219 = v215 + v151 * (v214 - v211);
            v220 = v215 + v151 * (v214 + v211);
            if (*(v210 + v211))
            {
              v221 = 1 - v217;
              if (*(v212 + v211))
              {
                v222 = 2 - v218;
                if (v221 != 2 - v218)
                {
                  if (v221 >= v222)
                  {
                    v223 = 2 - v218;
                  }

                  else
                  {
                    v223 = 1 - v217;
                  }

                  if (v221 > v222)
                  {
                    v222 = 1 - v217;
                  }

                  if (v221 <= 2 - v218)
                  {
                    v224 = -v164;
                  }

                  else
                  {
                    v224 = v164;
                  }

                  v225 = v222 - v223;
                  if (v219)
                  {
                    v226 = (v219 + v223);
                    v227 = -v225;
                    do
                    {
                      v228 = *v226++;
                      v189 -= v224 & ((v228 - v216) >> 31);
                      v146[v228] += v224;
                      v229 = __CFADD__(v227++, 1);
                    }

                    while (!v229);
                  }

                  if (v211 && v220)
                  {
                    v230 = (v220 + v223);
                    v231 = -v225;
                    do
                    {
                      v232 = *v230++;
                      v189 -= v224 & ((v232 - v216) >> 31);
                      v146[v232] += v224;
                      v229 = __CFADD__(v231++, 1);
                    }

                    while (!v229);
                  }
                }

                v233 = v218 + 1;
                if (v218 + 1 != v217)
                {
                  if (v233 >= v217)
                  {
                    v234 = v217;
                  }

                  else
                  {
                    v234 = v233;
                  }

                  if (v233 <= v217)
                  {
                    v235 = v217;
                  }

                  else
                  {
                    v235 = v233;
                  }

                  if (v233 >= v217)
                  {
                    v236 = v164;
                  }

                  else
                  {
                    v236 = -v164;
                  }

                  v237 = (v219 + v234);
                  v238 = v235 - v234;
                  v239 = v238;
                  do
                  {
                    v240 = *v237++;
                    v189 -= v236 & ((v240 - v216) >> 31);
                    v146[v240] += v236;
                    --v239;
                  }

                  while (v239);
                  if (!v211)
                  {
                    goto LABEL_147;
                  }

                  v241 = (v220 + v234);
                  do
                  {
                    v242 = *v241++;
                    v189 -= v236 & ((v242 - v216) >> 31);
                    v146[v242] += v236;
                    --v238;
                  }

                  while (v238);
                }
              }

              else
              {
                v250 = 2 * v217 - 1;
                if (v219)
                {
                  v251 = (v219 + v221);
                  v252 = v250;
                  do
                  {
                    v253 = *v251++;
                    v189 += v164 & ((v253 - v216) >> 31);
                    v146[v253] -= v164;
                    --v252;
                  }

                  while (v252);
                }

                if (!v211)
                {
                  goto LABEL_147;
                }

                if (v220)
                {
                  v254 = (v220 + v221);
                  do
                  {
                    v255 = *v254++;
                    v189 += v164 & ((v255 - v216) >> 31);
                    v146[v255] -= v164;
                    --v250;
                  }

                  while (v250);
                }
              }
            }

            else
            {
              v243 = 2 - v218;
              v244 = (2 * v218 - 1);
              if (v219)
              {
                v245 = (v219 + v243);
                v246 = (2 * v218 - 1);
                do
                {
                  v247 = *v245++;
                  v189 -= v164 & ((v247 - v216) >> 31);
                  v146[v247] += v164;
                  --v246;
                }

                while (v246);
              }

              if (!v211)
              {
LABEL_147:
                v322 = v189;
                goto LABEL_152;
              }

              if (v220)
              {
                v248 = (v220 + v243);
                do
                {
                  v249 = *v248++;
                  v189 -= v164 & ((v249 - v216) >> 31);
                  v146[v249] += v164;
                  --v244;
                }

                while (v244);
              }
            }

            if (v211-- <= 0)
            {
              goto LABEL_147;
            }
          }
        }

        v190 = (v289 << 7);
        v150 = v333;
        v151 = v334;
        v191 = v308[0];
        v192 = v181 + v307;
        v193 = v181 + v307 + 1;
        v194 = (v307 + v158);
        if (v164 == 1)
        {
          if (v188)
          {
            v195 = (v272 + v190);
            do
            {
              v196 = *v195++;
              v197 = v151 * v166;
              v198 = (v193 - v196) + v150;
              v199 = (v192 + v196) + v150;
              v200 = *(v199 + v197);
              v201 = *(v198 + v197);
              ++v146[v200];
              v202 = v201 - v191;
              --v146[v201];
              v203 = v151 * v165;
              v204 = *(v199 + v203);
              v205 = *(v198 + v203);
              ++v146[v204];
              v189 += ((v200 - v191) >> 31) + (v202 >> 31) + ((v205 - v191) >> 31) + ((v204 - v191) >> 31);
              --v146[v205];
              --v165;
              ++v166;
              --v188;
            }

            while (v188);
          }

          v206 = *(v162 + v190);
          v207 = v150 + v151 * v194;
          v208 = *(v207 + (v193 - v206));
          v209 = *(v207 + (v192 + v206));
          LODWORD(v207) = v209 - v191;
          ++v146[v209];
          LOWORD(v209) = v146[v208];
          v322 = v189 + (v207 >> 31) + ((v208 - v191) >> 31);
          v146[v208] = v209 - 1;
        }

        else
        {
          if (v188)
          {
            v257 = (v272 + v190);
            do
            {
              v258 = *v257++;
              v259 = v151 * v166;
              v260 = (v193 - v258) + v150;
              v261 = *(v260 + v259);
              v262 = (v192 + v258) + v150;
              v263 = *(v262 + v259);
              ++v146[v261];
              v264 = v263 - v191;
              --v146[v263];
              v265 = v151 * v165;
              v266 = *(v260 + v265);
              v267 = *(v262 + v265);
              ++v146[v266];
              v189 += ((v261 - v191) >> 31) + (v264 >> 31) + ((v266 - v191) >> 31) + ((v267 - v191) >> 31);
              --v146[v267];
              --v165;
              ++v166;
              --v188;
            }

            while (v188);
          }

          v268 = *(v162 + v190);
          v269 = v150 + v151 * v194;
          v270 = *(v269 + (v193 - v268));
          v271 = *(v269 + (v192 + v268));
          ++v146[v270];
          LOWORD(v268) = v146[v271];
          v322 = v189 + ((v270 - v191) >> 31) + ((v271 - v191) >> 31);
          v146[v271] = v268 - 1;
        }

LABEL_152:
        if (v164 == 1)
        {
          v159 = v181 + 1;
        }

        else
        {
          v159 -= v164 == -1;
        }

        v161 = v307 + 1;
        v160 = v307 - 1;
        v163 = v304;
        LODWORD(v158) = v276;
        v148 = v299;
        goto LABEL_67;
      }

      if (v158 + 1 >= v145)
      {
        break;
      }

      v171 = v322;
      v150 = v333;
      v151 = v334;
      v172 = v308[0];
      v173 = v285;
      v174 = v287 + v163;
      v175 = v288;
      do
      {
        if (v175 >= 0)
        {
          v176 = v175;
        }

        else
        {
          v176 = -v175;
        }

        v177 = *(v162 + (v289 << 7) + v176);
        v178 = v150 + v174;
        v179 = *(v151 * (v307 + v158 + 1 - v177) + v178);
        v180 = *(v151 * (v307 + v158 + v177) + v178);
        ++v146[v180];
        v171 += ((v180 - v172) >> 31) + ((v179 - v172) >> 31);
        --v146[v179];
        ++v175;
        ++v174;
        --v173;
      }

      while (v173);
      v322 = v171;
      v164 = -v164;
      v159 = v163;
      v163 = v284 - v163;
      ++v165;
      ++v166;
      ++v158;
    }

    CGrNavigator::~CGrNavigator(&v316);
    CGrNavigator::~CGrNavigator(&v323);
    CGrNavigator::~CGrNavigator(&v331);
    v11 = v280;
    goto LABEL_157;
  }

  v24 = *(a2 + 2);
  v317 = 0;
  v318 = v24;
  *v319 = *(a2 + 24);
  *&v319[16] = *(a2 + 40);
  *&v319[32] = *(a2 + 56);
  v320 = *(a2 + 72);
  v316 = &unk_1F46EA598;
  v25 = *(a3 + 2);
  v309 = 0;
  v310 = v25;
  v26 = *(a3 + 40);
  v311 = *(a3 + 24);
  v312 = v26;
  v27 = *(a3 + 56);
  v313 = v27;
  v314 = *(a3 + 72);
  v315 = 0;
  *v308 = &unk_1F46EA600;
  v28 = *v319;
  v29 = DWORD2(v26);
  if (*(v13 + 48) != 1)
  {
    v301 = v27;
    v297 = *(v13 + 36);
    v89 = (2 * *(v13 + 24)) | 1u;
    v90 = (v13 + 1590);
    bzero(&v331, 0x400uLL);
    bzero(&v323, 0x400uLL);
    v91 = 0;
    v92 = 0;
    do
    {
      v93 = v90[v92];
      *(&v331 + v92) = v91 + v93;
      *(&v323 + v92++) = v89 + v91 - v93;
      v91 += v28;
    }

    while (v89 != v92);
    *(&v331 + v89) = 0;
    *(&v323 + v89) = 0;
    v306 = v89;
    bzero(v12, 0x240uLL);
    v94 = 0;
    v95 = v12 + 16;
    do
    {
      v96 = v90[v94];
      v97 = &v24[v96 + v28 * v94];
      if (v97)
      {
        v98 = (v89 - 2 * v96);
        do
        {
          v99 = *v97++;
          ++v95[v99];
          --v98;
        }

        while (v98);
      }

      ++v94;
    }

    while (v94 != v89);
    v279 = v11;
    v281 = v9;
    v100 = 0;
    v101 = 0;
    v102 = v29 - 1;
    v322 = 0;
    v321 = v297;
    v103 = v301 - 1;
    v104 = 1;
    v302 = v331;
    v286 = v103 & ~(v103 >> 31);
    v295 = v323;
    v298 = HIDWORD(v331);
    v105 = HIDWORD(v323);
    while (1)
    {
      v106 = v101;
      v291 = v102;
      v107 = v102;
LABEL_41:
      v108 = v106;
      v293 = v106;
      while (1)
      {
        *(v310 + v311 * v100 + *(&v311 + 1) * v108) = Hist8CRead_(v95, &v322, &v321);
        v109 = v318;
        v110 = *v319;
        if (v108 == v107)
        {
          break;
        }

        v111 = &v318[v108 + *v319 * v100];
        v112 = v306;
        if (v104 == 1)
        {
          v125 = v322;
          v126 = 2;
          v127 = v321;
          v128 = v105;
          v130 = v295;
          v129 = v298;
          v131 = v302;
          do
          {
            v132 = v111[v131];
            v133 = v111[v130];
            ++v95[v133];
            v134 = v132 - v125;
            --v95[v132];
            v135 = 4 * v126;
            v131 = v129;
            v129 = *(&v331 + v135);
            v127 += ((v133 - v125) >> 31) + (v134 >> 31);
            v130 = v128;
            v128 = *(&v323 + v135);
            ++v126;
            --v112;
          }

          while (v112);
          v321 = v127;
          v106 = v293 + 1;
          v104 = 1;
          goto LABEL_41;
        }

        v113 = v111 - 1;
        v114 = v322;
        v115 = 2;
        v116 = v321;
        v117 = v105;
        v119 = v295;
        v118 = v298;
        v120 = v302;
        do
        {
          v121 = v113[v120];
          v122 = v113[v119];
          v123 = v116 + ((v121 - v114) >> 31);
          ++v95[v121];
          --v95[v122];
          v124 = 4 * v115;
          v120 = v118;
          v118 = *(&v331 + v124);
          v116 = v123 + ((v122 - v114) >> 31);
          v119 = v117;
          v117 = *(&v323 + v124);
          ++v115;
          --v112;
        }

        while (v112);
        --v108;
        v321 = v116;
      }

      v136 = v90;
      v137 = v306;
      if (v100 == v286)
      {
        goto LABEL_54;
      }

      v138 = v322;
      v139 = v321;
      v101 = v291;
      v140 = v291;
      do
      {
        v141 = *v136++;
        v142 = &v109[v140];
        v143 = v142[v110 * (v100 + v141)];
        v144 = v142[v110 * (v306 + v100 - v141)];
        ++v95[v144];
        v139 += ((v144 - v138) >> 31) + ((v143 - v138) >> 31);
        --v95[v143];
        ++v140;
        --v137;
      }

      while (v137);
      v321 = v139;
      v104 = -v104;
      v102 = v29 - 1 - v291;
      ++v100;
    }
  }

  v30 = *(v13 + 24);
  if ((2 * v30) <= 0xFF)
  {
    v31 = v27;
    v32 = (2 * v30) | 1u;
    bzero(&v331, 0x400uLL);
    bzero(&v323, 0x400uLL);
    v33 = 0;
    v34 = 0;
    do
    {
      *(&v331 + v34) = v33;
      *(&v323 + v34++) = v32 + v33;
      v33 += v28;
    }

    while (v32 != v34);
    bzero(v12, 0x240uLL);
    v35 = 0;
    v36 = v12 + 16;
    do
    {
      v37 = &v24[v28 * v35];
      if (v37)
      {
        v38 = v32;
        do
        {
          v39 = *v37++;
          ++v36[v39];
          --v38;
        }

        while (v38);
      }

      ++v35;
    }

    while (v35 != v32);
    v279 = v11;
    v281 = v9;
    v40 = 0;
    v41 = 0;
    v322 = 0;
    v321 = (v32 * v32) >> 1;
    v305 = v331;
    v300 = HIDWORD(v331);
    v42 = 1;
    v43 = v29 - 1;
    v44 = v323;
    v45 = HIDWORD(v323);
    while (1)
    {
      v46 = v32;
      v47 = v41;
      v290 = v43;
      v48 = v43;
LABEL_18:
      v49 = v47;
      v292 = v47;
      while (1)
      {
        *(v310 + v311 * v40 + *(&v311 + 1) * v49) = Hist8CRead_(v36, &v322, &v321);
        v50 = v318;
        v51 = *v319 * v40;
        if (v49 == v48)
        {
          break;
        }

        v52 = &v318[v49 + v51];
        if (v42 == 1)
        {
          v67 = v322;
          v68 = &v332;
          v69 = &v324;
          v70 = v46;
          v71 = v321;
          v72 = v45;
          v73 = v300;
          v74 = v305;
          v75 = v44;
          do
          {
            v76 = v52[v74];
            v77 = v52[v75];
            ++v36[v77];
            v71 += ((v77 - v67) >> 31) + ((v76 - v67) >> 31);
            --v36[v76];
            v74 = v73;
            v78 = *v68++;
            v73 = v78;
            v75 = v72;
            v79 = *v69++;
            v72 = v79;
            --v70;
          }

          while (v70);
          v321 = v71;
          v47 = v292 + 1;
          v42 = 1;
          goto LABEL_18;
        }

        v53 = v52 - 1;
        v54 = v322;
        v55 = &v332;
        v56 = &v324;
        v57 = v46;
        v58 = v321;
        v59 = v45;
        v60 = v300;
        v61 = v305;
        v62 = v44;
        do
        {
          v63 = v53[v61];
          v64 = v53[v62];
          ++v36[v63];
          v58 += ((v63 - v54) >> 31) + ((v64 - v54) >> 31);
          --v36[v64];
          v61 = v60;
          v65 = *v55++;
          v60 = v65;
          v62 = v59;
          v66 = *v56++;
          v59 = v66;
          --v57;
        }

        while (v57);
        --v49;
        v321 = v58;
      }

      if (v40 == ((v31 - 1) & ~((v31 - 1) >> 31)))
      {
        break;
      }

      v32 = v46;
      v80 = *v319 * (v40 + v46);
      v81 = v322;
      v82 = v321;
      v41 = v290;
      v83 = v290;
      v84 = v46;
      do
      {
        v85 = &v50[v83];
        v86 = v85[v51];
        v87 = v85[v80];
        ++v36[v87];
        v82 += ((v87 - v81) >> 31) + ((v86 - v81) >> 31);
        --v36[v86];
        ++v83;
        --v84;
      }

      while (v84);
      v321 = v82;
      v42 = -v42;
      v43 = v29 - 1 - v290;
      ++v40;
    }

LABEL_54:
    v11 = v279;
    v9 = v281;
  }

  CGrNavigator::~CGrNavigator(v308);
  CGrNavigator::~CGrNavigator(&v316);
LABEL_157:
  CKernel::ReturnData(v9, v11);
  return 0;
}

uint64_t Hist8CRead_(unsigned __int16 *a1, unsigned int *a2, int *a3)
{
  result = *a2;
  v5 = -*a3;
  v6 = &a1[result];
  if (*a3 < 0)
  {
    v17 = v6 - 1;
    while (1)
    {
      v5 -= *v17;
      if (v5 < 1)
      {
        result = (result - 1);
        goto LABEL_31;
      }

      v5 -= *(v17 - 1);
      if (v5 < 1)
      {
        result = (result - 2);
        goto LABEL_31;
      }

      v5 -= *(v17 - 2);
      if (v5 < 1)
      {
        result = (result - 3);
        goto LABEL_31;
      }

      v5 -= *(v17 - 3);
      if (v5 < 1)
      {
        result = (result - 4);
        goto LABEL_31;
      }

      v5 -= *(v17 - 4);
      if (v5 < 1)
      {
        result = (result - 5);
        goto LABEL_31;
      }

      v5 -= *(v17 - 5);
      if (v5 < 1)
      {
        result = (result - 6);
        goto LABEL_31;
      }

      v5 -= *(v17 - 6);
      if (v5 < 1)
      {
        break;
      }

      v18 = *(v17 - 7);
      v17 -= 8;
      result = (result - 8);
      v8 = __OFSUB__(v5, v18);
      v5 -= v18;
      if ((v5 < 0) ^ v8 | (v5 == 0))
      {
        goto LABEL_31;
      }
    }

    result = (result - 7);
  }

  else
  {
    LODWORD(result) = result - 1;
    while (1)
    {
      v7 = *v6;
      v8 = __OFADD__(v5, v7);
      v9 = v5 + v7;
      if (!((v9 < 0) ^ v8 | (v9 == 0)))
      {
        result = (result + 1);
        goto LABEL_31;
      }

      v10 = v6[1];
      v8 = __OFADD__(v9, v10);
      v5 = v9 + v10;
      if (!((v5 < 0) ^ v8 | (v5 == 0)))
      {
        result = (result + 2);
        goto LABEL_30;
      }

      v11 = v6[2];
      v8 = __OFADD__(v5, v11);
      v9 = v5 + v11;
      if (!((v9 < 0) ^ v8 | (v9 == 0)))
      {
        result = (result + 3);
        goto LABEL_31;
      }

      v12 = v6[3];
      v8 = __OFADD__(v9, v12);
      v5 = v9 + v12;
      if (!((v5 < 0) ^ v8 | (v5 == 0)))
      {
        result = (result + 4);
        goto LABEL_30;
      }

      v13 = v6[4];
      v8 = __OFADD__(v5, v13);
      v9 = v5 + v13;
      if (!((v9 < 0) ^ v8 | (v9 == 0)))
      {
        result = (result + 5);
        goto LABEL_31;
      }

      v14 = v6[5];
      v8 = __OFADD__(v9, v14);
      v5 = v9 + v14;
      if (!((v5 < 0) ^ v8 | (v5 == 0)))
      {
        break;
      }

      v15 = v6[6];
      v8 = __OFADD__(v5, v15);
      v9 = v5 + v15;
      if (!((v9 < 0) ^ v8 | (v9 == 0)))
      {
        result = (result + 7);
        goto LABEL_31;
      }

      v16 = v6[7];
      v6 += 8;
      v5 = v9 + v16;
      result = (result + 8);
      if (v5 >= 1)
      {
        goto LABEL_30;
      }
    }

    result = (result + 6);
LABEL_30:
    v5 = v9;
  }

LABEL_31:
  *a2 = result;
  *a3 = -v5;
  return result;
}

uint64_t CMemBlock::Resize(CMemBlock *this, unint64_t a2, int a3, int a4)
{
  v18 = &unk_1F46EA6B8;
  v19 = 0;
  v20 = this;
  if (this && (*(*this + 80))(this))
  {
    goto LABEL_19;
  }

  v19 = 1;
  if (*(this + 5) == a2)
  {
    v8 = 0;
    if (a4 && (a3 & 1) == 0)
    {
      v8 = (*(*this + 72))(this);
    }

    goto LABEL_20;
  }

  v9 = *(this + 7);
  if (!v9 || (v10 = (*(*v9 + 24))(v9, (*(this + 12) + a2), 0)) == 0)
  {
LABEL_19:
    v8 = 7;
    goto LABEL_20;
  }

  v8 = (*(**(this + 7) + 40))(*(this + 7), v10);
  if (v8)
  {
LABEL_20:
    CLock::~CLock(&v18);
    return v8;
  }

  v11 = (*(**(this + 7) + 56))(*(this + 7), v10);
  v12 = *(this + 6);
  v13 = (v12 + v11) / v12 * v12;
  if (a3)
  {
    v14 = *(this + 4);
    if (*(this + 5) >= a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = *(this + 5);
    }

    if (v12 + v11 != (v12 + v11) % v12 && v14 != 0)
    {
      memcpy(v13, v14, v15);
    }
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v15 && a4)
  {
    bzero((v15 + v13), (a2 - v15));
  }

  (*(**(this + 7) + 48))(*(this + 7), v10);
  CLock::~CLock(&v18);
  (*(**(this + 7) + 32))(*(this + 7), *(this + 3));
  v8 = 0;
  *(this + 3) = v10;
  *(this + 4) = 0;
  *(this + 5) = a2;
  return v8;
}

void sub_1C7831874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CLock::~CLock(va);
  _Unwind_Resume(a1);
}

void CLock::~CLock(CLock *this)
{
  *this = &unk_1F46EA6B8;
  if (*(this + 8) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      (*(*v1 + 88))(v1);
    }
  }
}

{
  CLock::~CLock(this);

  JUMPOUT(0x1CCA60F70);
}

uint64_t CMemBlock::Unlock(uint64_t this)
{
  v1 = *(this + 16) - 1;
  *(this + 16) = v1;
  if (!v1)
  {
    v2 = this;
    this = *(this + 56);
    if (this)
    {
      this = (*(*this + 48))(this, *(v2 + 24));
      *(v2 + 32) = 0;
    }
  }

  return this;
}

uint64_t CMemBlock::Lock(CMemBlock *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 4) = v2 + 1;
LABEL_3:
    result = 0;
    *(this + 13) = 0;
    return result;
  }

  v4 = *(this + 7);
  if (!v4)
  {
    return 7;
  }

  result = (*(*v4 + 40))(v4, *(this + 3));
  if (!result)
  {
    ++*(this + 4);
    *(this + 4) = (*(this + 6) + (*(**(this + 7) + 56))(*(this + 7), *(this + 3))) / *(this + 6) * *(this + 6);
    if (*(this + 13) == 1)
    {
      *(this + 13) = 0;
      (*(*this + 72))(this);
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t CMemBlock::Zero(CMemBlock *this)
{
  if ((*(this + 13) & 1) == 0 || (*(*this + 48))(this))
  {
    if ((*(*this + 48))(this))
    {
      bzero(*(this + 4), *(this + 5));
    }

    else
    {
      *(this + 13) = 1;
    }
  }

  return 0;
}

uint64_t CMemBlock::Description@<X0>(CMemBlock *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F46EA620;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  v4 = *(this + 4);
  v3 = *(this + 5);
  result = (*(**(this + 7) + 56))(*(this + 7), *(this + 3));
  *(a2 + 16) = v3;
  *(a2 + 24) = v4 - result;
  *(a2 + 32) = 1;
  *(a2 + 64) = v3;
  *(a2 + 40) = 1;
  *(a2 + 8) = v4;
  return result;
}

void CMemDescriptor::~CMemDescriptor(void *this)
{
  if (this)
  {
    --CMemEnv::excount;
    free(this);
  }
}

uint64_t CMemBlock::Free(CMemBlock *this)
{
  result = *(this + 7);
  if (result)
  {
    v4 = *(this + 3);
    v3 = (this + 24);
    if (v4)
    {
      result = (*(*result + 32))(result);
      *v3 = 0;
      v3[1] = 0;
    }
  }

  return result;
}

uint64_t CMemBlock::Allocate(CMemBlock *this, uint64_t a2, char a3)
{
  *(this + 4) = 0;
  *(this + 13) = a3;
  *(this + 4) = 0;
  *(this + 5) = a2;
  v5 = *(this + 6);
  v4 = *(this + 7);
  v6 = v5 & -v5;
  *(this + 6) = v6;
  v7 = 7;
  if (v4)
  {
    v8 = (*(*v4 + 24))(v4, (v6 + a2));
    *(this + 3) = v8;
    if (v8)
    {
      return 0;
    }

    else
    {
      return 7;
    }
  }

  return v7;
}

void CMemBlock::~CMemBlock(CMemBlock *this)
{
  CMemBlock::~CMemBlock(this);

  CBaseRef::operator delete(v1);
}

{
  *this = &unk_1F46EA640;
  if (*(this + 2) <= 0 && *(this + 14) == 1)
  {
    v2 = (this + 24);
    if (*(this + 3))
    {
      v3 = *(this + 7);
      if (v3)
      {
        (*(*v3 + 32))(v3);
        *v2 = 0;
        *(this + 4) = 0;
      }
    }

    *(this + 12) = 0;
  }
}

void CMemBlock::CMemBlock(CMemBlock *this, CMemEnv *a2, uint64_t a3, char a4, uint64_t a5)
{
  *(this + 2) = 0;
  *this = &unk_1F46EA640;
  *(this + 12) = 0;
  *(this + 13) = a4;
  *(this + 14) = 1;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a3;
  *(this + 6) = -a5 & a5;
  *(this + 7) = a2;
  if (!CMemBlock::Allocate(this, a3, a4))
  {
    *(this + 12) = 1;
  }
}

unint64_t CMedian::CKernelBilateral::IdealTSize(CMedian::CKernelBilateral *this)
{
  v1 = *(this + 1587);
  if (v1)
  {
    return CMedian::CxParms::IdealTSize(v1, 8);
  }

  else
  {
    return 0x10000000100;
  }
}

void CMedian::CKernelBilateral::~CKernelBilateral(CMedian::CKernelBilateral *this)
{
  CKernel::~CKernel(this);

  JUMPOUT(0x1CCA60F70);
}

uint64_t CMedian::CKernelBilateral::Process_(CMedian::CKernelBilateral *this, const CGrNavigator *a2, const CGrNavigator *a3, unsigned int a4, const CGrNavigator *a5, double a6, double a7, double a8, double a9)
{
  if (*(a3 + 4) == 4)
  {
    v9 = *(this + 1587);
    v10 = *(v9 + 40);
    v11 = v10 * 0.0039062;
    if ((v10 * 0.0039062) >= 1.0)
    {
      v11 = v10 * 0.000015259;
    }

    v12 = *(a3 + 7);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(v9 + 24);
      v16 = 2 * v15;
      v17 = *(a3 + 6);
      v18 = v15 & 0x7FFFFFFF;
      v19 = *(a2 + 2);
      v20 = *(a2 + 3);
      v21 = *(v9 + 50);
      v22 = 2 * v15 / 6u;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2 * v15 / 6u;
      }

      v24 = v16 - 6 * v22;
      v25 = *(a3 + 2);
      v26 = *(a3 + 3);
      v27 = v24 | 1;
      do
      {
        if (v17)
        {
          v28 = 0;
          v30 = v26 * v13;
          do
          {
            v31 = 0;
            v32 = v19 + 4 * (v18 + v28);
            v29 = v20 * (v14 + v18);
            LODWORD(a8) = *(v32 + v29);
            if (v21)
            {
              LODWORD(a9) = *(v32 + v29);
            }

            else
            {
              *&a9 = 1.0;
            }

            *&a9 = *&a9 * v11;
            v34 = vdupq_lane_s32(*&a8, 0);
            v35 = vdupq_lane_s32(*&a9, 0);
            v36 = 0.0;
            v37 = 0.0;
            do
            {
              v33 = v19 + 4 * v28;
              v38 = (v33 + v20 * (v14 + v31));
              if (v16 >= 6)
              {
                v39 = v23;
                v40 = (v33 + v20 * (v14 + v31));
                do
                {
                  v41 = vabdq_f32(*v40, v34);
                  v42 = vaddq_f32(vabdq_f32(v35, v41), vsubq_f32(v35, v41));
                  v43 = vmulq_f32(v42, *v40);
                  v43.f32[0] = vaddv_f32(*&vpaddq_f32(v43, v43));
                  v44 = *v40[1].f32;
                  v45 = vabd_f32(v44, *v34.f32);
                  v46 = vadd_f32(vabd_f32(*v35.f32, v45), vsub_f32(*v35.f32, v45));
                  v43.f32[1] = v37;
                  v37 = vaddv_f32(vmla_f32(*v43.f32, v44, v46));
                  v36 = (v46.f32[0] + (v46.f32[1] + v36)) + vaddv_f32(*&vpaddq_f32(v42, v42));
                  v40 = (v40 + 24);
                  --v39;
                }

                while (v39);
                v38 += 6 * v23;
              }

              v47 = v27;
              do
              {
                v48 = *v38++;
                v49 = vabds_f32(v48, *&a8);
                v50 = vabds_f32(*&a9, v49) + (*&a9 - v49);
                v37 = v37 + (v50 * v48);
                v36 = v50 + v36;
                --v47;
              }

              while (v47);
              ++v31;
            }

            while (v31 != ((2 * v15) | 1));
            if (v36 <= 0.0)
            {
              v51 = 1.0;
            }

            else
            {
              v51 = v36;
            }

            *(4 * v28++ + v25 + v30) = v37 / v51;
          }

          while (v17 > v28);
        }

        v13 = ++v14;
      }

      while (v12 > v14);
    }
  }

  return 0;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
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

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SCMLImageLabelCoder(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SensitiveContentAnalysisML))
  {
    return dlopenHelper_SensitiveContentAnalysisML(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SCMLImageSanitizer(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SensitiveContentAnalysisML))
  {
    return dlopenHelper_SensitiveContentAnalysisML(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SCMLImageSanitizerConfiguration(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SensitiveContentAnalysisML))
  {
    return dlopenHelper_SensitiveContentAnalysisML(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SCMLImageSanitizerRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SensitiveContentAnalysisML))
  {
    return dlopenHelper_SensitiveContentAnalysisML(result);
  }

  return result;
}

double gotLoadHelper_x8__SCMLErrorDomain(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SensitiveContentAnalysisML))
  {
    return dlopenHelper_SensitiveContentAnalysisML(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_SensitiveContentAnalysisML(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SensitiveContentAnalysisML.framework/SensitiveContentAnalysisML", 0);
  atomic_store(1u, &dlopenHelperFlag_SensitiveContentAnalysisML);
  return a1;
}