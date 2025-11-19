float32x4_t *sub_2779D68DC()
{
  result = MEMORY[0x28223BE20]();
  v7 = v6;
  v8 = result;
  v43 = *MEMORY[0x277D85DE8];
  v9 = 98893;
  v10 = *(v6 + 48);
  if (v10 <= 8)
  {
    if (v10 == 3)
    {
      v11 = &unk_27A71D4C0;
    }

    else
    {
      if (v10 != 6)
      {
        return result;
      }

      v9 = 98894;
      v11 = &unk_27A71D5A8;
    }
  }

  else
  {
    switch(v10)
    {
      case 9u:
        v9 = 98895;
        v11 = &unk_27A71D690;
        break;
      case 0xCu:
        v9 = 98896;
        v11 = &unk_27A71D778;
        break;
      case 0xFu:
        v9 = 98897;
        v11 = &unk_27A71D860;
        break;
      default:
        return result;
    }
  }

  v12 = result->u32[v9];
  if ((v12 & 0x80000000) == 0)
  {
    v13 = &result[40268].i32[2];
    v14 = byte_277C3BCB6[*(v6 + 48)];
    v15 = flt_277BCCF58[result[24728].i32[0] - 1];
    v16 = 0x7FFFFFFFLL;
    if (v3 < 0x7FFFFFFF)
    {
      v16 = v3;
    }

    v42.f32[0] = (((*(v1 + 16920) * 0.0078125) * 0.0019531) / (1 << v14)) * v2;
    v42.f32[1] = (v16 >> v14);
    v17 = **(v1 + 128) >> (v5 - 8);
    v42.f32[2] = v4;
    v42.i32[3] = vcvts_n_f32_u32(v17 * v17, 8uLL);
    sub_2779D4488(result[17013].i64[1], result[40268].i32[3] != 0, &v42, 4, 2);
    if ((v8[15351].i8[0] & 0xFD) != 0 && *v13 && (v41 = 0u, v40 = 0u, v39 = 0u, v38 = 0u, v37 = 0u, v36 = 0u, v35 = 0u, v34 = 0u, v33 = 0u, v32 = 0u, v31 = 0u, v30 = 0u, v29 = 0u, v28 = 0u, v27 = 0u, v26 = 0u, v25 = 0u, v24 = 0u, v23 = 0u, v22 = 0u, *&v21[16] = 0u, *v21 = 0u, memset(v20, 0, sizeof(v20)), LODWORD(v20[0]) = 2, *&v21[12] = v42, (v8[40270].i64[1])(v8[40269].i64[1], v20), memset(v18, 0, 512), result = (v8[40271].i64[0])(v8[40269].i64[1], v18), !result))
    {
      *(v7 + 296) = v19;
    }

    else
    {
      LODWORD(v18[0]) = 0;
      result = sub_2779D28B0(&v42, v11, v18);
      if ((*v18 * 100.0) >= (v15 * v12))
      {
        *(v7 + 296) = 0;
      }
    }
  }

  return result;
}

unsigned __int8 *sub_2779D6C38(unsigned __int8 *result, uint64_t a2)
{
  v2 = byte_277C3CAFE[*(a2 + 48)];
  if (v2 <= byte_277C3CAFE[result[1]])
  {
    if (v2 > byte_277C3CAFE[*result])
    {
      return result;
    }

    *(a2 + 296) = 0;
    *(a2 + 288) = 0;
    if (*(a2 + 40))
    {
      if (*(a2 + 44))
      {
        *(a2 + 300) = 0;
      }
    }

    v3 = *(a2 + 300) == 0;
    v4 = 284;
  }

  else
  {
    v3 = 0;
    *(a2 + 284) = 0;
    *(a2 + 296) = 0x100000000;
    v4 = 292;
  }

  *(a2 + v4) = v3;
  return result;
}

float32x4_t *sub_2779D6CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  result = MEMORY[0x28223BE20]();
  v17 = v16;
  v18 = v11;
  v19 = v10;
  v20 = result;
  v121 = *MEMORY[0x277D85DE8];
  v21 = &result[24720].i32[3];
  if (v14 && result[17005].i8[15] == 1)
  {
    v22 = vtst_s32(*(v15 + 288), *(v15 + 288));
  }

  else
  {
    v22 = 0;
  }

  v23 = v22.i8[0] & 1;
  v24 = v22.i8[4] & 1;
  if (*v21)
  {
    if (*v21 != 1)
    {
      v28 = *v11;
      v26 = v28 == 1 || v28 == 3;
      v27 = v28 == 2 || v28 == 3;
      goto LABEL_21;
    }

    v25 = *v11;
    if (v25 == 1)
    {
      v26 = 1;
    }

    else
    {
      if (v12 <= 31 && !*v11)
      {
        v27 = 1;
        v26 = 1;
        goto LABEL_21;
      }

      v26 = v25 == 3;
      if (v25 == 2)
      {
        v27 = 1;
        goto LABEL_21;
      }
    }

    v27 = v25 == 3;
LABEL_21:
    v23 &= v26;
    v24 &= v27;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v30 = vnegq_f64(v29);
    *(v15 + 232) = vbicq_s8(*(v15 + 232), vceqq_s64(*(v15 + 232), v30));
    *(v15 + 248) = vbicq_s8(*(v15 + 248), vceqq_s64(*(v15 + 248), v30));
    *(v15 + 200) = vbicq_s8(*(v15 + 200), vceqq_s64(*(v15 + 200), v30));
    *(v15 + 216) = vbicq_s8(*(v15 + 216), vceqq_s64(*(v15 + 216), v30));
  }

  *a9 = v23;
  a9[1] = v23;
  if (*v21)
  {
    v31 = *(v15 + 208);
    v32 = *(v15 + 200) + *(v15 + 240);
    _VF = __OFADD__(v32, v31);
    v34 = v32 + v31;
    if (v34 < 0 != _VF)
    {
      v34 += 15;
    }

    v35 = v34 >> 4;
    v36 = 14;
    if (*v21 != 1)
    {
      v36 = 15;
    }

    if (v35 * v36 >= v13)
    {
      v37 = 0;
    }

    else
    {
      v37 = v23;
    }

    if ((*(v15 + 216) + *(v15 + 232) + *(v15 + 224)) / 16 * v36 >= v13)
    {
      v23 = 0;
    }

    *a9 = v37;
    a9[1] = v23;
  }

  else
  {
    v37 = v23;
  }

  a9[2] = v24;
  a9[3] = v24;
  if (*v21)
  {
    v38 = *(v15 + 200) + *(v15 + 256);
    v39 = *(v15 + 216);
    _VF = __OFADD__(v38, v39);
    v40 = v38 + v39;
    if (v40 < 0 != _VF)
    {
      v40 += 15;
    }

    v41 = v40 >> 4;
    v42 = 14;
    if (*v21 != 1)
    {
      v42 = 15;
    }

    if (v41 * v42 >= v13)
    {
      v43 = 0;
    }

    else
    {
      v43 = v24;
    }

    if ((*(v15 + 208) + *(v15 + 248) + *(v15 + 224)) / 16 * v42 >= v13)
    {
      v24 = 0;
    }

    a9[2] = v43;
    a9[3] = v24;
  }

  else
  {
    v43 = v24;
  }

  if (result[24721].i32[1] && v14 && *(v15 + 288) && *(v15 + 292))
  {
    v44 = *(v10 + 153152);
    v45 = __clz(v44) ^ 0x1F;
    v46 = v44 ? v45 + 1 : 0;
    if (v13 <= 999999999)
    {
      v47 = *(v15 + 48);
      if (v47 >= 3 && v47 - 6 <= 9 && ((0x249u >> (v47 - 6)) & 1) != 0)
      {
        v79 = *(v15 + 48);
        v48 = 0;
        v49 = *(&off_27A71D948 + (v47 - 6));
        v82[0].f32[0] = *v11;
        v82[0].f32[1] = v46;
        v80 = 0u;
        v81 = 0u;
        v50 = &v80;
        v51 = 1;
        do
        {
          v52 = v51;
          v53 = *(v15 + 232 + 8 * v48);
          if ((v53 - 1) < 0x3B9AC9FF)
          {
            *v50 = v53;
          }

          v51 = 0;
          v50 = (&v80 + 4);
          v48 = 1;
        }

        while ((v52 & 1) != 0);
        v54 = 0;
        for (i = 8; i != 16; i += 4)
        {
          v56 = *(v15 + 248 + 8 * v54);
          if ((v56 - 1) < 0x3B9AC9FF)
          {
            *(&v80 + i) = v56;
          }

          v54 = 1;
        }

        v57 = *(v15 + 200);
        v58 = *(v15 + 216);
        v59.i64[0] = -1;
        v59.i64[1] = -1;
        v60 = vaddq_s64(v57, v59);
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v60)), *v58.i8).u8[0])
        {
          LODWORD(v81) = *(v15 + 200);
        }

        v61 = vaddq_s64(v58, v59);
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v60)), *&v58).i8[2])
        {
          DWORD1(v81) = v57.i32[2];
        }

        if (vuzp1_s16(*&v58, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v61))).i32[1])
        {
          DWORD2(v81) = v58.i32[0];
        }

        v62 = vuzp1_s16(*v58.i8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3B9AC9FFuLL), v61)));
        if (v62.i8[6])
        {
          HIDWORD(v81) = v58.i32[2];
        }

        v63 = 0;
        *v62.i32 = v13;
        v64 = vdupq_n_s32(v13);
        v65 = vdupq_lane_s32(v62, 0);
        __asm { FMOV            V2.4S, #1.0 }

        do
        {
          *(&v82[v63] + 8) = vbslq_s8(vorrq_s8(vclezq_s32(*(&v80 + v63 * 16)), vcgeq_s32(*(&v80 + v63 * 16), v64)), _Q2, vdivq_f32(vcvtq_f32_u32(*(&v80 + v63 * 16)), v65));
          ++v63;
        }

        while (v63 != 2);
        if ((result[15351].i8[0] & 0xFD) == 0 || (sub_2779D4488(result[17013].i64[1], result[40268].i32[3] != 0, v82, 10, 6), (v20[15351].i8[0] & 0xFD) == 0) || !v20[40268].i32[2] || (*&v120[4] = 0u, *v118 = 0u, memset(v117, 0, sizeof(v117)), LODWORD(v117[0]) = 6, *&v118[12] = v82[0], v119 = v82[1], *v120 = v83, (v20[40270].i64[1])(v20[40269].i64[1], v117), v114 = 0u, v115 = 0u, v112 = 0u, v113 = 0u, v110 = 0u, v111 = 0u, v108 = 0u, v109 = 0u, v106 = 0u, v107 = 0u, v104 = 0u, v105 = 0u, v102 = 0u, v103 = 0u, v100 = 0u, v101 = 0u, v98 = 0u, v99 = 0u, v96 = 0u, v97 = 0u, v94 = 0u, v95 = 0u, v92 = 0u, v93 = 0u, v90 = 0u, v91 = 0u, v88 = 0u, v89 = 0u, v86 = 0u, v87 = 0u, v84 = 0u, v85 = 0u, result = (v20[40271].i64[0])(v20[40269].i64[1], &v84), result))
        {
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          result = sub_2779D28B0(v82, v49, &v84);
          v70 = 0;
          v71 = vdupq_n_s32(0xFFFFFC18);
          v72 = vdupq_n_s32(0x42C80000u);
          do
          {
            v73 = vcvtq_s32_f32(vmulq_f32(*(&v84 + v70 * 16), v72));
            v117[v70] = v73;
            v71 = vmaxq_s32(v71, v73);
            ++v70;
          }

          while (v70 != 4);
          v24 = 0;
          v43 = 0;
          v23 = 0;
          v37 = 0;
          v74 = 0;
          v75 = vmaxvq_s32(v71);
          v76 = v75 - 150;
          if (v79 != 6)
          {
            v76 = v75;
          }

          v77 = v75 - 100;
          if (v79 != 9)
          {
            v77 = v76;
          }

          *a9 = 0;
          *(a9 + 1) = 0;
          while (*(v117 + v74) < v77)
          {
LABEL_93:
            if (++v74 == 16)
            {
              goto LABEL_99;
            }
          }

          if (v74)
          {
            v37 = 1;
            *a9 = 1;
            if ((v74 & 2) == 0)
            {
LABEL_89:
              if ((v74 & 4) == 0)
              {
                goto LABEL_91;
              }

              goto LABEL_90;
            }
          }

          else if ((v74 & 2) == 0)
          {
            goto LABEL_89;
          }

          v23 = 1;
          a9[1] = 1;
          if ((v74 & 4) == 0)
          {
LABEL_91:
            if (v74 >= 8)
            {
              v24 = 1;
              a9[3] = 1;
            }

            goto LABEL_93;
          }

LABEL_90:
          v43 = 1;
          a9[2] = 1;
          goto LABEL_91;
        }

        v78 = v116;
        v23 = DWORD1(v116);
        *a9 = v116;
        v43 = DWORD2(v78);
        v24 = HIDWORD(v78);
        v37 = v78;
      }
    }
  }

LABEL_99:
  if (v21[25] >= 2)
  {
    if (!v37 || (result = sub_2779D74B0(v18, 1, v17, *(v19 + 16904), 0, 1), *a9 = result & v37, v21[25] >= 2))
    {
      if (!v23 || (result = sub_2779D74B0(v18, 1, v17, *(v19 + 16904), 2, 3), a9[1] = result & v23, v21[25] >= 2))
      {
        if (!v43 || (result = sub_2779D74B0(v18, 2, v17, *(v19 + 16904), 0, 2), a9[2] = result & v43, v21[25] >= 2))
        {
          if (v24)
          {
            result = sub_2779D74B0(v18, 2, v17, *(v19 + 16904), 1, 3);
            a9[3] = result & v24;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_2779D74B0(unsigned __int8 *a1, int a2, int *a3, int a4, int a5, int a6)
{
  v6 = 510 - 2 * a4;
  v8 = __OFSUB__(v6, 254);
  v7 = v6 == 254;
  v9 = 3 * (v6 / 255);
  if (!((256 - 2 * a4 < 0) ^ v8 | v7))
  {
    v9 = 3;
  }

  if (a3)
  {
    if (a2 == 1)
    {
      v10 = *a3;
    }

    else
    {
      v10 = a3[1];
    }
  }

  else
  {
    v10 = *a1 == a2;
  }

  v11 = *&a1[8 * a5 + 208];
  if (v11)
  {
    v12 = v10 != 0;
    if (!*v11)
    {
      ++v12;
    }
  }

  else if (v10)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&a1[8 * a6 + 208];
  if (v13)
  {
    v14 = *v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  return v14 + v12 >= v9;
}

double sub_2779D7568(uint64_t a1, int *a2, uint64_t a3, unsigned __int8 *a4, int a5, int a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = *(*(a1 + 270312) + 28);
  memset(v16, 0, sizeof(v16));
  if (a2)
  {
    sub_2779B3658(a1, a2, a3, a5, a6, v9);
  }

  if (*(a1 + 395120))
  {
    v10 = 7;
  }

  else
  {
    v10 = 1;
  }

  sub_277978170(a1 + 245616, a3 + 416, **(a3 + 8280), v10, v13, a3 + 8728, a3 + 10584, v14, &v15);
  if (*(v13 | v10))
  {
    v11 = (a3 + 8728 + (v10 << 6));
  }

  else
  {
    v11 = &v14[v10];
  }

  *(v16 + v10) = (((v11[1] + ((v11[1] & 0x8000) == 0)) << 13) + 24576) & 0xFFFF0000 | ((*v11 + ((*v11 & 0x8000) == 0) + 3) >> 3);
  *&result = sub_2779D7714(a4, v16).n128_u64[0];
  return result;
}

__n128 sub_2779D7714(unsigned __int8 *a1, __int128 *a2)
{
  while (1)
  {
    v4 = *a2;
    *(a1 + 56) = a2[1];
    *(a1 + 40) = v4;
    result = 0uLL;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    if (*a1 < 3u)
    {
      break;
    }

    sub_2779D7714(*(a1 + 1), a2);
    sub_2779D7714(*(a1 + 2), a2);
    sub_2779D7714(*(a1 + 3), a2);
    a1 = *(a1 + 4);
  }

  return result;
}

uint64_t sub_2779D778C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = 0;
  v5 = a1;
  do
  {
    v6 = v4++;
    v7 = v5 > 0x7F;
    v5 >>= 7;
  }

  while (v7);
  v8 = 0xFFFFFFFFLL;
  if (!HIDWORD(a1) && v6 <= 7 && a4 && a3 && v6 < a2)
  {
    v9 = 0;
    do
    {
      v10 = a1 > 0x7F;
      v11 = a1 & 0x7F;
      a1 >>= 7;
      *(a3 + v9++) = v11 | (v10 << 7);
    }

    while (v4 != v9);
    v8 = 0;
    *a4 = v4;
  }

  return v8;
}

uint64_t sub_2779D7808(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  _W8 = -1;
  if (a3 >= 8)
  {
    do
    {
      v5 = *a2;
      a2 += 4;
      _X9 = v5;
      __asm { CRC32CX         W8, W8, X9 }

      a3 -= 8;
    }

    while (a3 > 7);
  }

  if (a3 >= 4)
  {
    v11 = *a2;
    a2 += 2;
    _W10 = v11;
    __asm { CRC32CW         W8, W8, W10 }

    a3 -= 4;
  }

  if (a3 >= 2)
  {
    v13 = *a2++;
    _W10 = v13;
    __asm { CRC32CH         W8, W8, W10 }

    a3 -= 2;
  }

  if (a3)
  {
    _W9 = *a2;
    __asm { CRC32CB         W8, W8, W9 }
  }

  return ~_W8;
}

uint64_t sub_2779D7864(__int32 *a1, int a2, __int32 *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -4;
  do
  {
    v8.i32[0] = *a1;
    v8.i32[1] = *(a1 + a2);
    v9.i32[0] = *a3;
    v9.i32[1] = *(a3 + a4);
    v10 = vsubl_u8(v8, v9);
    v5 = vaddq_s16(v10, v5);
    v6 = vmlal_high_s16(vmlal_s16(v6, *v10.i8, *v10.i8), v10, v10);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v7 += 2;
  }

  while (v7);
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(v6);
  *a5 = v12;
  return v12 - ((v11 * v11) >> 4);
}

uint64_t sub_2779D78DC(__int32 *a1, int a2, __int32 *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -8;
  do
  {
    v8.i32[0] = *a1;
    v8.i32[1] = *(a1 + a2);
    v9.i32[0] = *a3;
    v9.i32[1] = *(a3 + a4);
    v10 = vsubl_u8(v8, v9);
    v5 = vaddq_s16(v10, v5);
    v6 = vmlal_high_s16(vmlal_s16(v6, *v10.i8, *v10.i8), v10, v10);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v7 += 2;
  }

  while (v7);
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(v6);
  *a5 = v12;
  return v12 - ((v11 * v11) >> 5);
}

uint64_t sub_2779D7954(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  do
  {
    v9 = vsubl_u8(*a1, *a3);
    v5 = vaddq_s16(v9, v5);
    v6 = vmlal_s16(v6, *v9.i8, *v9.i8);
    v8 = vmlal_high_s16(v8, v9, v9);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v12;
  return v12 - ((v11 * v11) >> 5);
}

uint64_t sub_2779D79BC(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  do
  {
    v9 = vsubl_u8(*a1, *a3);
    v5 = vaddq_s16(v9, v5);
    v6 = vmlal_s16(v6, *v9.i8, *v9.i8);
    v8 = vmlal_high_s16(v8, v9, v9);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v12;
  return v12 - ((v11 * v11) >> 6);
}

uint64_t sub_2779D7A24(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  do
  {
    v9 = vsubl_u8(*a1, *a3);
    v5 = vaddq_s16(v9, v5);
    v6 = vmlal_s16(v6, *v9.i8, *v9.i8);
    v8 = vmlal_high_s16(v8, v9, v9);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v12;
  return v12 - ((v11 * v11) >> 7);
}

uint64_t sub_2779D7A8C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -8;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 7);
}

uint64_t sub_2779D7B0C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -16;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 8);
}

uint64_t sub_2779D7B8C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 9);
}

uint64_t sub_2779D7C0C(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(a1 + v10);
      v14 = *(a3 + v10);
      v15 = vsubl_u8(*v13.i8, *v14.i8);
      v16 = vsubl_high_u8(v13, v14);
      v7 = vaddq_s16(v15, v7);
      v8 = vaddq_s16(v16, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v15.i8, *v15.i8), *v16.i8, *v16.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v15, v15), v16, v16);
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 16);
  v17 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v7), v8));
  v18 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v18;
  return v18 - ((v17 * v17) >> 9);
}

uint64_t sub_2779D7CAC(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(a1 + v10);
      v14 = *(a3 + v10);
      v15 = vsubl_u8(*v13.i8, *v14.i8);
      v16 = vsubl_high_u8(v13, v14);
      v7 = vaddq_s16(v15, v7);
      v8 = vaddq_s16(v16, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v15.i8, *v15.i8), *v16.i8, *v16.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v15, v15), v16, v16);
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 32);
  v17 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v7), v8));
  v18 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v18;
  return v18 - ((v17 * v17) >> 10);
}

uint64_t sub_2779D7D4C(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(a1 + v10);
      v14 = *(a3 + v10);
      v15 = vsubl_u8(*v13.i8, *v14.i8);
      v16 = vsubl_high_u8(v13, v14);
      v7 = vaddq_s16(v15, v7);
      v8 = vaddq_s16(v16, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v15.i8, *v15.i8), *v16.i8, *v16.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v15, v15), v16, v16);
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 64);
  v17 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v8), v7));
  v18 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v18;
  return v18 - ((v17 * v17) >> 11);
}

uint64_t sub_2779D7DEC(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    do
    {
      v11 = *(a1 + v10);
      v12 = *(a3 + v10);
      v13 = vsubl_u8(*v11.i8, *v12.i8);
      v14 = vsubl_high_u8(v11, v12);
      v7 = vaddq_s16(v13, v7);
      v8 = vaddq_s16(v14, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v13.i8, *v13.i8), *v14.i8, *v14.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v13, v13), v14, v14);
      v15 = v10 >= 0x30;
      v10 += 16;
    }

    while (!v15);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 32);
  v16 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v8), v7));
  v17 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v17;
  return v17 - ((v16 * v16) >> 11);
}

uint64_t sub_2779D7E88(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 32;
  do
  {
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = v5;
    do
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + v13);
        v15 = *(a3 + v13);
        v16 = vsubl_u8(*v14.i8, *v15.i8);
        v17 = vsubl_high_u8(v14, v15);
        v10 = vaddq_s16(v16, v10);
        v11 = vaddq_s16(v17, v11);
        v6 = vmlal_s16(vmlal_s16(v6, *v16.i8, *v16.i8), *v17.i8, *v17.i8);
        v7 = vmlal_high_s16(vmlal_high_s16(v7, v16, v16), v17, v17);
        v18 = v13 >= 0x30;
        v13 += 16;
      }

      while (!v18);
      a1 += a2;
      a3 += a4;
      ++v12;
    }

    while (v12 < v9);
    if (v9 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v9;
    }

    v8 = vpadalq_s16(vpadalq_s16(v8, v10), v11);
    v9 += 32;
  }

  while (v5 < 0x40);
  v19 = vaddvq_s32(v8);
  v20 = vaddvq_s32(vaddq_s32(v7, v6));
  *a5 = v20;
  return v20 - ((v19 * v19) >> 12);
}

uint64_t sub_2779D7F48(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 32;
  do
  {
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = v5;
    do
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + v13);
        v15 = *(a3 + v13);
        v16 = vsubl_u8(*v14.i8, *v15.i8);
        v17 = vsubl_high_u8(v14, v15);
        v10 = vaddq_s16(v16, v10);
        v11 = vaddq_s16(v17, v11);
        v6 = vmlal_s16(vmlal_s16(v6, *v16.i8, *v16.i8), *v17.i8, *v17.i8);
        v7 = vmlal_high_s16(vmlal_high_s16(v7, v16, v16), v17, v17);
        v18 = v13 >= 0x30;
        v13 += 16;
      }

      while (!v18);
      a1 += a2;
      a3 += a4;
      ++v12;
    }

    while (v12 < v9);
    if (v9 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v9;
    }

    v8 = vpadalq_s16(vpadalq_s16(v8, v10), v11);
    v9 += 32;
  }

  while (v5 < 0x80);
  v19 = vaddvq_s32(v8);
  v20 = vaddvq_s32(vaddq_s32(v7, v6));
  *a5 = v20;
  return v20 - ((v19 * v19) >> 13);
}

uint64_t sub_2779D8008(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 16;
  do
  {
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = v5;
    do
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + v13);
        v15 = *(a3 + v13);
        v16 = vsubl_u8(*v14.i8, *v15.i8);
        v17 = vsubl_high_u8(v14, v15);
        v10 = vaddq_s16(v16, v10);
        v11 = vaddq_s16(v17, v11);
        v6 = vmlal_s16(vmlal_s16(v6, *v16.i8, *v16.i8), *v17.i8, *v17.i8);
        v7 = vmlal_high_s16(vmlal_high_s16(v7, v16, v16), v17, v17);
        v18 = v13 >= 0x70;
        v13 += 16;
      }

      while (!v18);
      a1 += a2;
      a3 += a4;
      ++v12;
    }

    while (v12 < v9);
    if (v9 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v9;
    }

    v8 = vpadalq_s16(vpadalq_s16(v8, v10), v11);
    v9 += 16;
  }

  while (v5 < 0x40);
  v19 = vaddvq_s32(v8);
  v20 = vaddvq_s32(vaddq_s32(v7, v6));
  *a5 = v20;
  return v20 - ((v19 * v19) >> 13);
}

uint64_t sub_2779D80C8(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 16;
  do
  {
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = v5;
    do
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + v13);
        v15 = *(a3 + v13);
        v16 = vsubl_u8(*v14.i8, *v15.i8);
        v17 = vsubl_high_u8(v14, v15);
        v10 = vaddq_s16(v16, v10);
        v11 = vaddq_s16(v17, v11);
        v6 = vmlal_s16(vmlal_s16(v6, *v16.i8, *v16.i8), *v17.i8, *v17.i8);
        v7 = vmlal_high_s16(vmlal_high_s16(v7, v16, v16), v17, v17);
        v18 = v13 >= 0x70;
        v13 += 16;
      }

      while (!v18);
      a1 += a2;
      a3 += a4;
      ++v12;
    }

    while (v12 < v9);
    if (v9 <= (v5 + 1))
    {
      ++v5;
    }

    else
    {
      v5 = v9;
    }

    v8 = vpadalq_s16(vpadalq_s16(v8, v10), v11);
    v9 += 16;
  }

  while (v5 < 0x80);
  v19 = vaddvq_s32(v8);
  v20 = vaddvq_s32(vaddq_s32(v7, v6));
  *a5 = v20;
  return v20 - ((v19 * v19) >> 14);
}

uint64_t sub_2779D8188(__int32 *a1, int a2, __int32 *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -16;
  do
  {
    v8.i32[0] = *a1;
    v8.i32[1] = *(a1 + a2);
    v9.i32[0] = *a3;
    v9.i32[1] = *(a3 + a4);
    v10 = vsubl_u8(v8, v9);
    v5 = vaddq_s16(v10, v5);
    v6 = vmlal_high_s16(vmlal_s16(v6, *v10.i8, *v10.i8), v10, v10);
    a1 = (a1 + 2 * a2);
    a3 = (a3 + 2 * a4);
    v7 += 2;
  }

  while (v7);
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(v6);
  *a5 = v12;
  return v12 - ((v11 * v11) >> 6);
}

uint64_t sub_2779D8200(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -32;
  v8 = 0uLL;
  do
  {
    v9 = vsubl_u8(*a1, *a3);
    v5 = vaddq_s16(v9, v5);
    v6 = vmlal_s16(v6, *v9.i8, *v9.i8);
    v8 = vmlal_high_s16(v8, v9, v9);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v11 = vaddlvq_s16(v5);
  v12 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v12;
  return v12 - ((v11 * v11) >> 8);
}

uint64_t sub_2779D8268(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -4;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 6);
}

uint64_t sub_2779D82E8(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, int *a5)
{
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = -64;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = vsubl_u8(*a1, *a3);
    v11 = vsubl_high_u8(*a1->i8, *a3->i8);
    v5 = vaddq_s16(v10, v5);
    v9 = vaddq_s16(v11, v9);
    v6 = vmlal_s16(vmlal_s16(v6, *v10.i8, *v10.i8), *v11.i8, *v11.i8);
    v8 = vmlal_high_s16(vmlal_high_s16(v8, v10, v10), v11, v11);
    a1 = (a1 + a2);
    a3 = (a3 + a4);
  }

  while (!__CFADD__(v7++, 1));
  v13 = vaddlvq_s16(vaddq_s16(v5, v9));
  v14 = vaddvq_s32(vaddq_s32(v8, v6));
  *a5 = v14;
  return v14 - ((v13 * v13) >> 10);
}

uint64_t sub_2779D8368(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = *(a1 + v10);
      v14 = *(a3 + v10);
      v15 = vsubl_u8(*v13.i8, *v14.i8);
      v16 = vsubl_high_u8(v13, v14);
      v7 = vaddq_s16(v15, v7);
      v8 = vaddq_s16(v16, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v15.i8, *v15.i8), *v16.i8, *v16.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v15, v15), v16, v16);
      v10 = 16;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 8);
  v17 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v7), v8));
  v18 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v18;
  return v18 - ((v17 * v17) >> 8);
}

uint64_t sub_2779D8408(uint64_t a1, int a2, uint64_t a3, int a4, int *a5)
{
  v5 = 0;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = 0;
    do
    {
      v11 = *(a1 + v10);
      v12 = *(a3 + v10);
      v13 = vsubl_u8(*v11.i8, *v12.i8);
      v14 = vsubl_high_u8(v11, v12);
      v7 = vaddq_s16(v13, v7);
      v8 = vaddq_s16(v14, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v13.i8, *v13.i8), *v14.i8, *v14.i8);
      v9 = vmlal_high_s16(vmlal_high_s16(v9, v13, v13), v14, v14);
      v15 = v10 >= 0x30;
      v10 += 16;
    }

    while (!v15);
    a1 += a2;
    a3 += a4;
    ++v5;
  }

  while (v5 != 16);
  v16 = vaddvq_s32(vpadalq_s16(vpaddlq_s16(v7), v8));
  v17 = vaddvq_s32(vaddq_s32(v9, v6));
  *a5 = v17;
  return v17 - ((v16 * v16) >> 10);
}

uint64_t sub_2779D84A4(uint64_t result, int a2, uint64_t a3, int a4, int32x4_t *a5, int32x4_t *a6, _DWORD *a7, _DWORD *a8, uint64_t a9)
{
  for (i = 0; i != 4; ++i)
  {
    v10 = (result + 8 * i);
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = -8;
    v14 = 0uLL;
    v15 = (a3 + 8 * i);
    do
    {
      v16 = vsubl_u8(*v10, *v15);
      v11 = vaddq_s16(v16, v11);
      v12 = vmlal_s16(v12, *v16.i8, *v16.i8);
      v14 = vmlal_high_s16(v14, v16, v16);
      v10 = (v10 + a2);
      v15 = (v15 + a4);
    }

    while (!__CFADD__(v13++, 1));
    a6->i32[i] = vaddlvq_s16(v11);
    a5->i32[i] = vaddvq_s32(vaddq_s32(v14, v12));
  }

  v18 = 0;
  *a7 += vaddvq_s32(*a5);
  *a8 += vaddvq_s32(*a6);
  do
  {
    *(a9 + v18 * 4) = a5->i32[v18] - ((a6->i32[v18] * a6->i32[v18]) >> 6);
    ++v18;
  }

  while (v18 != 4);
  return result;
}

uint64_t sub_2779D8574(uint64_t result, int a2, uint64_t a3, int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  v8 = 0;
  v24 = 0;
  v25 = 0;
  v9 = &v25;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = (result + 16 * v8);
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = -16;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = (a3 + 16 * v8);
    do
    {
      v19 = vsubl_u8(*v12, *v18);
      v20 = vsubl_high_u8(*v12->i8, *v18->i8);
      v13 = vaddq_s16(v19, v13);
      v17 = vaddq_s16(v20, v17);
      v14 = vmlal_s16(vmlal_s16(v14, *v19.i8, *v19.i8), *v20.i8, *v20.i8);
      v16 = vmlal_high_s16(vmlal_high_s16(v16, v19, v19), v20, v20);
      v12 = (v12 + a2);
      v18 = (v18 + a4);
    }

    while (!__CFADD__(v15++, 1));
    v10 = 0;
    *v9 = vaddlvq_s16(vaddq_s16(v13, v17));
    a5[v8] = vaddvq_s32(vaddq_s32(v16, v14));
    v9 = &v24;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  *a6 += a5[1] + *a5;
  v23 = v24;
  v22 = v25;
  *a7 += v24 + v25;
  *a8 = *a5 - ((v22 * v22) >> 8);
  a8[1] = a5[1] - ((v23 * v23) >> 8);
  return result;
}

float sub_2779D866C(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, float *a5)
{
  v5 = 0uLL;
  v6 = -8;
  v7 = 0uLL;
  do
  {
    v8 = *a1;
    v9 = *(a1 + a2);
    a1 = (a1 + a2 + a2);
    v10 = *a3;
    v11 = *(a3 + a4);
    a3 = (a3 + a4 + a4);
    v12 = vsubl_u8(v8, v10);
    v13 = vsubl_u8(v9, v11);
    v5 = vmlal_high_s16(vmlal_s16(v5, *v12.i8, *v12.i8), v12, v12);
    v7 = vmlal_high_s16(vmlal_s16(v7, *v13.i8, *v13.i8), v13, v13);
    v6 += 2;
  }

  while (v6);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v7, v5)));
  *a5 = result;
  return result;
}

float sub_2779D86D4(uint8x8_t *a1, int a2, uint8x8_t *a3, int a4, float *a5)
{
  v5 = 0uLL;
  v6 = -16;
  v7 = 0uLL;
  do
  {
    v8 = *a1;
    v9 = *(a1 + a2);
    a1 = (a1 + a2 + a2);
    v10 = *a3;
    v11 = *(a3 + a4);
    a3 = (a3 + a4 + a4);
    v12 = vsubl_u8(v8, v10);
    v13 = vsubl_u8(v9, v11);
    v5 = vmlal_high_s16(vmlal_s16(v5, *v12.i8, *v12.i8), v12, v12);
    v7 = vmlal_high_s16(vmlal_s16(v7, *v13.i8, *v13.i8), v13, v13);
    v6 += 2;
  }

  while (v6);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(v7, v5)));
  *a5 = result;
  return result;
}

float sub_2779D873C(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, float *a5)
{
  v5 = 0uLL;
  v6 = -8;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = *a1;
    v11 = *(a1 + a2);
    a1 = (a1 + a2 + a2);
    v12 = *a3;
    v13 = *(a3 + a4);
    a3 = (a3 + a4 + a4);
    v14 = vsubl_u8(*v10.i8, *v12.i8);
    v15 = vsubl_high_u8(v10, v12);
    v16 = vsubl_u8(*v11.i8, *v13.i8);
    v17 = vsubl_high_u8(v11, v13);
    v5 = vmlal_high_s16(vmlal_s16(v5, *v14.i8, *v14.i8), v14, v14);
    v7 = vmlal_high_s16(vmlal_s16(v7, *v15.i8, *v15.i8), v15, v15);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v16.i8, *v16.i8), v16, v16);
    v9 = vmlal_high_s16(vmlal_s16(v9, *v17.i8, *v17.i8), v17, v17);
    v6 += 2;
  }

  while (v6);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v7, v5), vaddq_s32(v8, v9))));
  *a5 = result;
  return result;
}

float sub_2779D87CC(uint8x16_t *a1, int a2, uint8x16_t *a3, int a4, float *a5)
{
  v5 = 0uLL;
  v6 = -16;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  do
  {
    v10 = *a1;
    v11 = *(a1 + a2);
    a1 = (a1 + a2 + a2);
    v12 = *a3;
    v13 = *(a3 + a4);
    a3 = (a3 + a4 + a4);
    v14 = vsubl_u8(*v10.i8, *v12.i8);
    v15 = vsubl_high_u8(v10, v12);
    v16 = vsubl_u8(*v11.i8, *v13.i8);
    v17 = vsubl_high_u8(v11, v13);
    v5 = vmlal_high_s16(vmlal_s16(v5, *v14.i8, *v14.i8), v14, v14);
    v7 = vmlal_high_s16(vmlal_s16(v7, *v15.i8, *v15.i8), v15, v15);
    v8 = vmlal_high_s16(vmlal_s16(v8, *v16.i8, *v16.i8), v16, v16);
    v9 = vmlal_high_s16(vmlal_s16(v9, *v17.i8, *v17.i8), v17, v17);
    v6 += 2;
  }

  while (v6);
  result = COERCE_FLOAT(vaddvq_s32(vaddq_s32(vaddq_s32(v7, v5), vaddq_s32(v8, v9))));
  *a5 = result;
  return result;
}

uint8x8_t *sub_2779D885C(uint8x8_t *result, int a2, uint16x8_t *a3, unsigned int a4, int a5, int a6)
{
  v6 = 2 * a4;
  if (a5 == 8)
  {
    v7 = 0uLL;
    do
    {
      v8 = vsubw_u8(*a3, *result);
      v9 = vsubw_u8(*(a3 + 2 * a4), *(result + a2));
      v7 = vpadalq_u32(v7, vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v8.i8, *v8.i8), v8, v8), *v9.i8, *v9.i8), v9, v9));
      result = (result + 2 * a2);
      a3 = (a3 + 2 * v6);
      a6 -= 2;
    }

    while (a6);
  }

  else
  {
    v10 = 2 * v6;
    v11 = 0uLL;
    do
    {
      v12.i32[0] = result->i32[0];
      v12.i32[1] = *(result->i32 + a2);
      v13.i32[0] = *(result->i32 + 2 * a2);
      v13.i32[1] = *(result->i32 + 3 * a2);
      v14.i64[0] = a3->i64[0];
      v14.i64[1] = *(a3->i64 + 2 * a4);
      v15.i64[0] = *(a3->i64 + v10);
      v15.i64[1] = *(a3->i64 + 2 * a4 + v10);
      v16 = vsubw_u8(v14, v12);
      v17 = vsubw_u8(v15, v13);
      v11 = vpadalq_u32(v11, vmlal_high_s16(vmlal_s16(vmlal_high_s16(vmull_s16(*v16.i8, *v16.i8), v16, v16), *v17.i8, *v17.i8), v17, v17));
      result = (result + 4 * a2);
      a3 = (a3 + 8 * a4);
      a6 -= 4;
    }

    while (a6);
  }

  return result;
}

double sub_2779D893C(uint16x4_t *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = (a1 - 4 * a2);
  v7 = (a1 - 2 * a2);
  v8 = (a1 + 2 * a2);
  *v13.i8 = *v6;
  v9 = vabd_u16(*v7, *a1);
  v10 = vsra_n_u16(vadd_s16(v9, v9), vabd_u16(*v6, *v8), 1uLL);
  *v11.i8 = *v7;
  v11.u64[1] = *a1;
  v12 = vcgt_u16(v10, vdup_n_s16(a3 << (a6 - 8)));
  v13.u64[1] = *v8;
  v14 = vabdq_u16(v11, v13);
  v15 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), v14);
  v16 = vand_s8(vbic_s8(*&vextq_s8(v15, v15, 8uLL), v12), *v15.i8);
  v15.i16[0] = vaddv_s16(v16);
  if (v15.i32[0])
  {
    v17 = vcgtq_u16(v14, vdupq_n_s16(*a5 << (a6 - 8)));
    *v17.i8 = vand_s8(vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), v16);
    *v18.i8 = v16;
    v18.u64[1] = v16;
    v19.u64[1] = *v8;
    *v19.i8 = *v7;
    v20 = vsubq_s16(vextq_s8(v11, v13, 8uLL), v19);
    v21 = 1 << (a6 - 1);
    v22 = vdup_n_s16(-v21);
    v23 = vdup_n_s16(v21 - 1);
    v24 = vmla_s16(vand_s8(*v17.i8, vmin_s16(vmax_s16(*&vextq_s8(v20, v20, 8uLL), v22), v23)), *v20.i8, 0x3000300030003);
    *v20.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v24, 0x4000400040004), v22), v23), 3uLL);
    *v25.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v24, 0x3000300030003), v22), v23), 3uLL);
    *v26.i8 = vrshr_n_s16(*v20.i8, 1uLL);
    v26.u64[1] = vneg_s16(*v26.i8);
    v25.u64[1] = vneg_s16(*v20.i8);
    v27 = vaddq_s16(v25, v11);
    v28 = vdupq_n_s16(~(-1 << a6));
    v29 = vbslq_s8(v18, vminq_u16(vmaxq_s16(v27, 0), v28), v11);
    *v30.i8 = veor_s8(*v17.i8, v16);
    v30.i64[1] = v30.i64[0];
    v13 = vbslq_s8(v30, vminq_u16(vmaxq_s16(vaddq_s16(v26, v13), 0), v28), v13);
    *v6 = *v13.i8;
    *v7 = *v29.i8;
    *a1 = vextq_s8(v29, v29, 8uLL).u64[0];
    v13.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
    *v8 = *v13.i8;
  }

  return *v13.i64;
}

double sub_2779D8AAC(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v7 = *(a1 - 4);
  v6 = (a1 - 4);
  v8 = (v6 + 2 * a2);
  v9 = (v6 + 4 * a2);
  v10 = (v6 + 6 * a2);
  v11 = vtrn1_s16(v7, *v8);
  v12 = vtrn2_s16(v7, *v8);
  v13 = vtrn1_s16(*v9, *v10);
  v14 = vtrn2_s16(*v9, *v10);
  *v22.i8 = vzip1_s32(v11, v13);
  v15 = vzip2_s32(v11, v13);
  *v16.i8 = vzip1_s32(v12, v14);
  v17 = vzip2_s32(v12, v14);
  v18 = vabd_u16(*v16.i8, v15);
  v19 = vsra_n_u16(vadd_s16(v18, v18), vabd_u16(*v22.i8, v17), 1uLL);
  v20.i64[0] = v16.i64[0];
  v20.u64[1] = v15;
  v21 = vcgt_u16(v19, vdup_n_s16(a3 << (a6 - 8)));
  v22.u64[1] = v17;
  v23 = vabdq_u16(v20, v22);
  v24 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), v23);
  v25 = vand_s8(vbic_s8(*&vextq_s8(v24, v24, 8uLL), v21), *v24.i8);
  v24.i16[0] = vaddv_s16(v25);
  if (v24.i32[0])
  {
    v26 = vcgtq_u16(v23, vdupq_n_s16(*a5 << (a6 - 8)));
    *v26.i8 = vand_s8(vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), v25);
    *v27.i8 = v25;
    v27.u64[1] = v25;
    v16.u64[1] = v17;
    v28 = vsubq_s16(vextq_s8(v20, v22, 8uLL), v16);
    v29 = 1 << (a6 - 1);
    v30 = vdup_n_s16(-v29);
    v31 = vdup_n_s16(v29 - 1);
    v32 = vmla_s16(vand_s8(*v26.i8, vmin_s16(vmax_s16(*&vextq_s8(v28, v28, 8uLL), v30), v31)), *v28.i8, 0x3000300030003);
    *v28.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v32, 0x4000400040004), v30), v31), 3uLL);
    *v33.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v32, 0x3000300030003), v30), v31), 3uLL);
    *v34.i8 = vrshr_n_s16(*v28.i8, 1uLL);
    v34.u64[1] = vneg_s16(*v34.i8);
    v33.u64[1] = vneg_s16(*v28.i8);
    v35 = vaddq_s16(v33, v20);
    v36 = vdupq_n_s16(~(-1 << a6));
    v37 = vbslq_s8(v27, vminq_u16(vmaxq_s16(v35, 0), v36), v20);
    *v38.i8 = veor_s8(*v26.i8, v25);
    v38.i64[1] = v38.i64[0];
    v22 = vbslq_s8(v38, vminq_u16(vmaxq_s16(vaddq_s16(v34, v22), 0), v36), v22);
    v38.i64[0] = vextq_s8(v37, v37, 8uLL).u64[0];
    v35.i64[0] = vextq_s8(v22, v22, 8uLL).u64[0];
    *v36.i8 = vtrn1_s16(*v22.i8, *v37.i8);
    *v22.i8 = vtrn2_s16(*v22.i8, *v37.i8);
    *v37.i8 = vtrn1_s16(*v38.i8, *v35.i8);
    *v38.i8 = vtrn2_s16(*v38.i8, *v35.i8);
    *v6 = vzip1_s32(*v36.i8, *v37.i8);
    *v8 = vzip1_s32(*v22.i8, *v38.i8);
    *v22.i8 = vzip2_s32(*v22.i8, *v38.i8);
    *v9 = vzip2_s32(*v36.i8, *v37.i8);
    *v10 = *v22.i8;
  }

  return *v22.i64;
}

double sub_2779D8C5C(uint16x4_t *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = (a1 - 4 * a2);
  v7 = (a1 - 2 * a2);
  v8 = (a1 + 2 * a2);
  *v14.i8 = *(a1 - 6 * a2);
  *v13.i8 = *v6;
  v9 = a6 - 8;
  v10 = vabd_u16(*v7, *a1);
  v11 = vsra_n_u16(vadd_s16(v10, v10), vabd_u16(*v6, *v8), 1uLL);
  *v12.i8 = *v7;
  v12.u64[1] = *a1;
  v13.u64[1] = *v8;
  v14.u64[1] = *(a1 + 4 * a2);
  v15 = vcgt_u16(v11, vdup_n_s16(a3 << (a6 - 8)));
  v16 = vabdq_u16(v12, v13);
  v17 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(v16, vabdq_u16(v13, v14)));
  *v18.i8 = vand_s8(vbic_s8(*&vextq_s8(v17, v17, 8uLL), v15), *v17.i8);
  v17.i16[0] = vaddv_s16(*v18.i8);
  if (v17.i32[0])
  {
    v19 = vcgeq_u16(vdupq_n_s16(1 << v9), vmaxq_u16(v16, vabdq_u16(v12, v14)));
    *v19.i8 = vand_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    v20 = vcgtq_u16(v16, vdupq_n_s16(*a5 << v9));
    *v20.i8 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    *v21.i8 = *v7;
    v21.u64[1] = *v8;
    v22 = 1 << (a6 - 1);
    v23 = vdup_n_s16(-v22);
    v24 = vdup_n_s16(v22 - 1);
    v25 = vsubq_s16(vextq_s8(v12, v13, 8uLL), v21);
    v20.i64[1] = v20.i64[0];
    v18.i64[1] = v18.i64[0];
    *v21.i8 = vmla_s16(vand_s8(*v20.i8, vmin_s16(vmax_s16(*&vextq_s8(v25, v25, 8uLL), v23), v24)), *v25.i8, 0x3000300030003);
    *v25.i8 = vmin_s16(vmax_s16(vadd_s16(*v21.i8, 0x4000400040004), v23), v24);
    *v21.i8 = vmin_s16(vmax_s16(vadd_s16(*v21.i8, 0x3000300030003), v23), v24);
    *v25.i8 = vshr_n_s16(*v25.i8, 3uLL);
    *v26.i8 = vrshr_n_s16(*v25.i8, 1uLL);
    v26.u64[1] = vneg_s16(*v26.i8);
    *v21.i8 = vshr_n_s16(*v21.i8, 3uLL);
    v21.u64[1] = vneg_s16(*v25.i8);
    v27 = vaddq_s16(v21, v12);
    v28 = vdupq_n_s16(~(-1 << a6));
    v29 = vminq_u16(vmaxq_s16(v27, 0), v28);
    v30 = vbslq_s8(v20, v13, vminq_u16(vmaxq_s16(vaddq_s16(v26, v13), 0), v28));
    if (v19.i64[0])
    {
      v19.i64[1] = v19.i64[0];
      v31 = vaddq_s16(v13, v12);
      v32 = vaddq_s16(v31, v14);
      v33.u64[1] = *v7;
      *v33.i8 = *a1;
      v34 = vaddq_s16(vaddq_s16(v14, v33), vaddq_s16(v32, v32));
      v13 = vbslq_s8(v18, vbslq_s8(v19, vrshrq_n_u16(v34, 3uLL), v30), v13);
      v35 = vbslq_s8(v18, vbslq_s8(v19, vrshrq_n_u16(vaddq_s16(vsubq_s16(vextq_s8(v31, v31, 8uLL), vaddq_s16(v14, v14)), v34), 3uLL), v29), v12);
    }

    else
    {
      v13 = vbslq_s8(v18, v30, v13);
      v35 = vbslq_s8(v18, v29, v12);
    }

    *v6 = *v13.i8;
    *v7 = *v35.i8;
    *a1 = vextq_s8(v35, v35, 8uLL).u64[0];
    v13.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
    *v8 = *v13.i8;
  }

  return *v13.i64;
}

double sub_2779D8E58(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = *(a1 - 6);
  v7 = a1 - 6 + 2 * a2;
  v8 = a1 - 6 + 4 * a2;
  v9 = a1 - 6 + 6 * a2;
  v10 = vtrn1q_s16(v6, *v7);
  v23 = vtrn2q_s16(v6, *v7);
  v11 = vtrn1q_s16(*v8, *v9);
  v13 = vtrn2q_s16(*v8, *v9);
  v19 = vtrn1q_s32(v10, v11);
  v12 = vtrn2q_s32(v10, v11).u64[0];
  v20 = vtrn1q_s32(v23, v13);
  v13.i64[0] = vtrn2q_s32(v23, v13).u64[0];
  v14 = vextq_s8(v19, v19, 8uLL).u64[0];
  v15 = a6 - 8;
  v16 = vabd_u16(v12, *v13.i8);
  v17 = vadd_s16(v16, v16);
  *v18.i8 = v12;
  v18.i64[1] = v13.i64[0];
  v19.i64[1] = v20.i64[1];
  v20.u64[1] = v14;
  *v23.i8 = vcgt_u16(vsra_n_u16(v17, vabd_u16(*v20.i8, v14), 1uLL), vdup_n_s16(a3 << (a6 - 8)));
  v21 = vabdq_u16(v18, v20);
  v22 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(v21, vabdq_u16(v20, v19)));
  *v23.i8 = vand_s8(vbic_s8(*&vextq_s8(v22, v22, 8uLL), *v23.i8), *v22.i8);
  v22.i16[0] = vaddv_s16(*v23.i8);
  if (v22.i32[0])
  {
    v24 = vcgeq_u16(vdupq_n_s16(1 << v15), vmaxq_u16(v21, vabdq_u16(v18, v19)));
    *v24.i8 = vand_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v25 = vcgtq_u16(v21, vdupq_n_s16(*a5 << v15));
    *v25.i8 = vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
    *v26.i8 = v12;
    v26.u64[1] = v14;
    v27 = 1 << (a6 - 1);
    v28 = vdup_n_s16(-v27);
    v29 = vdup_n_s16(v27 - 1);
    v30 = vsubq_s16(vextq_s8(v18, v20, 8uLL), v26);
    v25.i64[1] = v25.i64[0];
    v23.i64[1] = v23.i64[0];
    *v26.i8 = vmla_s16(vand_s8(*v25.i8, vmin_s16(vmax_s16(*&vextq_s8(v30, v30, 8uLL), v28), v29)), *v30.i8, 0x3000300030003);
    *v30.i8 = vmin_s16(vmax_s16(vadd_s16(*v26.i8, 0x4000400040004), v28), v29);
    *v26.i8 = vmin_s16(vmax_s16(vadd_s16(*v26.i8, 0x3000300030003), v28), v29);
    *v30.i8 = vshr_n_s16(*v30.i8, 3uLL);
    *v31.i8 = vrshr_n_s16(*v30.i8, 1uLL);
    v31.u64[1] = vneg_s16(*v31.i8);
    *v26.i8 = vshr_n_s16(*v26.i8, 3uLL);
    v26.u64[1] = vneg_s16(*v30.i8);
    v32 = vaddq_s16(v26, v18);
    v33 = vdupq_n_s16(~(-1 << a6));
    v34 = vminq_u16(vmaxq_s16(v32, 0), v33);
    v35 = vbslq_s8(v25, v20, vminq_u16(vmaxq_s16(vaddq_s16(v31, v20), 0), v33));
    if (v24.i64[0])
    {
      v24.i64[1] = v24.i64[0];
      v36 = vaddq_s16(v18, v20);
      v37 = vaddq_s16(v36, v19);
      v13.u64[1] = v12;
      v38 = vaddq_s16(vaddq_s16(v13, v19), vaddq_s16(v37, v37));
      v39 = vrshrq_n_u16(v38, 3uLL);
      v40 = vrshrq_n_u16(vaddq_s16(vsubq_s16(vextq_s8(v36, v36, 8uLL), vaddq_s16(v19, v19)), v38), 3uLL);
      v19 = vbslq_s8(v23, vbslq_s8(v24, v39, v35), v20);
      v41 = vbslq_s8(v23, vbslq_s8(v24, v40, v34), v18);
    }

    else
    {
      v19 = vbslq_s8(v23, v35, v20);
      v41 = vbslq_s8(v23, v34, v18);
    }

    v42 = vextq_s8(v41, v41, 8uLL).u64[0];
    v43 = vextq_s8(v19, v19, 8uLL).u64[0];
    v44 = vtrn1_s16(*v19.i8, *v41.i8);
    v45 = vtrn2_s16(*v19.i8, *v41.i8);
    v46 = vtrn1_s16(v42, v43);
    v47 = vtrn2_s16(v42, v43);
    *(a1 - 4) = vzip1_s32(v44, v46);
    *(v7 + 2) = vzip1_s32(v45, v47);
    *v19.i8 = vzip2_s32(v45, v47);
    *(v8 + 2) = vzip2_s32(v44, v46);
    *(v9 + 2) = v19.i64[0];
  }

  return *v19.i64;
}

double sub_2779D9090(uint16x4_t *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = (a1 - 6 * a2);
  v7 = (a1 - 4 * a2);
  v8 = (a1 - 2 * a2);
  v9 = (a1 + 2 * a2);
  v10 = (a1 + 4 * a2);
  *v17.i8 = a1[-a2];
  v11 = a6 - 8;
  v12 = vabd_u16(*v8, *a1);
  v13 = vcgt_u16(vsra_n_u16(vadd_s16(v12, v12), vabd_u16(*v7, *v9), 1uLL), vdup_n_s16(a3 << (a6 - 8)));
  *v14.i8 = *v8;
  v14.u64[1] = *a1;
  *v15.i8 = *v7;
  v15.u64[1] = *v9;
  v16.i64[0] = *v6;
  v16.i64[1] = *v10;
  v17.u64[1] = *(a1 + 6 * a2);
  v18 = vabdq_u16(v14, v15);
  v20 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(vmaxq_u16(v18, vabdq_u16(v15, v16)), vabdq_u16(v16, v17)));
  v19 = vbic_s8(*&vextq_s8(v20, v20, 8uLL), v13);
  *v20.i8 = vand_s8(v19, *v20.i8);
  v19.i16[0] = vaddv_s16(*v20.i8);
  if (v19.i32[0])
  {
    v21 = vcgeq_u16(vdupq_n_s16(1 << v11), vmaxq_u16(vmaxq_u16(v18, vabdq_u16(v14, v16)), vabdq_u16(v14, v17)));
    *v21.i8 = vand_s8(vand_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), *v20.i8);
    v22 = vcgtq_u16(v18, vdupq_n_s16(*a5 << v11));
    *v23.i8 = *v8;
    v23.u64[1] = *v9;
    v24 = 1 << (a6 - 1);
    v25 = vdup_n_s16(-v24);
    v26 = vdup_n_s16(v24 - 1);
    v27 = vsubq_s16(vextq_s8(v14, v15, 8uLL), v23);
    *v28.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v28.i64[1] = v28.i64[0];
    v20.i64[1] = v20.i64[0];
    v29 = vmla_s16(vand_s8(*v28.i8, vmin_s16(vmax_s16(*&vextq_s8(v27, v27, 8uLL), v25), v26)), *v27.i8, 0x3000300030003);
    *v22.i8 = vmin_s16(vmax_s16(vadd_s16(v29, 0x3000300030003), v25), v26);
    *v27.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v29, 0x4000400040004), v25), v26), 3uLL);
    *v30.i8 = vrshr_n_s16(*v27.i8, 1uLL);
    v30.u64[1] = vneg_s16(*v30.i8);
    *v22.i8 = vshr_n_s16(*v22.i8, 3uLL);
    v22.u64[1] = vneg_s16(*v27.i8);
    v31 = vdupq_n_s16(~(-1 << a6));
    v32 = vminq_u16(vmaxq_s16(vaddq_s16(v22, v14), 0), v31);
    v33 = vbslq_s8(v28, v15, vminq_u16(vmaxq_s16(vaddq_s16(v30, v15), 0), v31));
    if (v21.i64[0])
    {
      v21.i64[1] = v21.i64[0];
      v34 = vaddq_s16(v17, v16);
      v35.u64[1] = *v8;
      v36 = vaddq_s16(v17, v15);
      *v35.i8 = *a1;
      v37 = vaddq_s16(vaddq_s16(vaddq_s16(v35, v14), v36), vaddq_s16(v34, v34));
      v38.u64[1] = *v7;
      *v38.i8 = *v9;
      v39 = vaddq_s16(vaddq_s16(v38, v15), vsubq_s16(v37, v34));
      v40.i64[1] = *v6;
      v40.i64[0] = *v10;
      v16 = vbslq_s8(v21, vrshrq_n_u16(v37, 3uLL), v16);
      v41 = vbslq_s8(v20, vbslq_s8(v21, vrshrq_n_u16(v39, 3uLL), v33), v15);
      v42 = vbslq_s8(v20, vbslq_s8(v21, vrshrq_n_u16(vaddq_s16(vsubq_s16(vaddq_s16(v40, v14), v36), v39), 3uLL), v32), v14);
    }

    else
    {
      v41 = vbslq_s8(v20, v33, v15);
      v42 = vbslq_s8(v20, v32, v14);
    }

    *v6 = v16.i64[0];
    *v7 = *v41.i8;
    *v8 = *v42.i8;
    *a1 = vextq_s8(v42, v42, 8uLL).u64[0];
    *v9 = vextq_s8(v41, v41, 8uLL).u64[0];
    v16.i64[0] = vextq_s8(v16, v16, 8uLL).u64[0];
    *v10 = v16.i64[0];
  }

  return *v16.i64;
}

double sub_2779D92F8(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v7 = *(a1 - 8);
  v6 = (a1 - 8);
  v8 = (v6 + 2 * a2);
  v9 = (v6 + 4 * a2);
  v10 = (v6 + 6 * a2);
  v11 = vtrn1q_s16(v7, *v8);
  v12 = vtrn1q_s16(*v9, *v10);
  v13 = vrev64q_s32(vtrn2q_s16(v7, *v8));
  v14 = vrev64q_s32(vtrn2q_s16(*v9, *v10));
  v15 = vzip1q_s32(v11, v12);
  v26 = vzip2q_s32(v11, v12);
  v16 = vzip1q_s32(v13, v14);
  v17 = vzip2q_s32(v13, v14);
  v18 = vzip2q_s64(v15, v17);
  v19.i64[0] = v15.i64[0];
  v19.i64[1] = v17.i64[0];
  v20.i64[0] = v16.i64[0];
  v20.i64[1] = v26.i64[0];
  v21 = vzip2q_s64(v16, v26);
  v22 = a6 - 8;
  v23 = vextq_s8(v18, v18, 8uLL);
  *v26.i8 = vabd_u16(*v16.i8, *v26.i8);
  v24 = vabdq_u16(v20, v18);
  v25 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(vmaxq_u16(v24, vabdq_u16(v18, v21)), vabdq_u16(v21, v19)));
  *v26.i8 = vand_s8(vbic_s8(*&vextq_s8(v25, v25, 8uLL), vcgt_u16(vsra_n_u16(vadd_s16(*v26.i8, *v26.i8), vabd_u16(*v18.i8, *v23.i8), 1uLL), vdup_n_s16(a3 << (a6 - 8)))), *v25.i8);
  v25.i16[0] = vaddv_s16(*v26.i8);
  if (v25.i32[0])
  {
    v27 = vcgeq_u16(vdupq_n_s16(1 << v22), vmaxq_u16(vmaxq_u16(v24, vabdq_u16(v20, v21)), vabdq_u16(v20, v19)));
    *v27.i8 = vand_s8(vand_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)), *v26.i8);
    v28 = vcgtq_u16(v24, vdupq_n_s16(*a5 << v22));
    *v28.i8 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v16.i64[1] = v23.i64[0];
    v29 = 1 << (a6 - 1);
    v30 = vdup_n_s16(-v29);
    v31 = vdup_n_s16(v29 - 1);
    v32 = vsubq_s16(vextq_s8(v20, v18, 8uLL), v16);
    v28.i64[1] = v28.i64[0];
    v26.i64[1] = v26.i64[0];
    v33 = vmla_s16(vand_s8(*v28.i8, vmin_s16(vmax_s16(*&vextq_s8(v32, v32, 8uLL), v30), v31)), *v32.i8, 0x3000300030003);
    *v32.i8 = vmin_s16(vmax_s16(vadd_s16(v33, 0x4000400040004), v30), v31);
    v34 = vmin_s16(vmax_s16(vadd_s16(v33, 0x3000300030003), v30), v31);
    *v32.i8 = vshr_n_s16(*v32.i8, 3uLL);
    *v35.i8 = vrshr_n_s16(*v32.i8, 1uLL);
    v35.u64[1] = vneg_s16(*v35.i8);
    *v36.i8 = vshr_n_s16(v34, 3uLL);
    v36.u64[1] = vneg_s16(*v32.i8);
    v37 = vaddq_s16(v36, v20);
    v38 = vdupq_n_s16(~(-1 << a6));
    v39 = vminq_u16(vmaxq_s16(v37, 0), v38);
    v40 = vbslq_s8(v28, v18, vminq_u16(vmaxq_s16(vaddq_s16(v35, v18), 0), v38));
    if (v27.i64[0])
    {
      v27.i64[1] = v27.i64[0];
      v41 = vaddq_s16(v21, v19);
      v42 = vaddq_s16(v18, v19);
      v43 = vaddq_s16(vaddq_s16(vaddq_s16(v42, v20), vextq_s8(v20, v20, 8uLL)), vaddq_s16(v41, v41));
      v44 = vaddq_s16(vaddq_s16(v23, v18), vsubq_s16(v43, v41));
      v45 = vrshrq_n_u16(v44, 3uLL);
      v46 = vrshrq_n_u16(vaddq_s16(vaddq_s16(vsubq_s16(v20, v42), vextq_s8(v21, v21, 8uLL)), v44), 3uLL);
      v21 = vbslq_s8(v27, vrshrq_n_u16(v43, 3uLL), v21);
      v47 = vbslq_s8(v26, vbslq_s8(v27, v45, v40), v18);
      v48 = vbslq_s8(v26, vbslq_s8(v27, v46, v39), v20);
    }

    else
    {
      v47 = vbslq_s8(v26, v40, v18);
      v48 = vbslq_s8(v26, v39, v20);
    }

    v49 = vtrn1q_s16(v48, v47);
    v50 = vtrn2q_s16(v48, v47);
    v51 = vtrn1q_s16(v21, v19);
    v52 = vtrn2q_s16(v21, v19);
    v53 = vtrn1q_s32(v49, v51);
    v54 = vtrn2q_s32(v49, v51);
    v55 = vtrn1q_s32(v50, v52);
    v19 = vtrn2q_s32(v50, v52);
    *v50.i8 = vrev64_s16(*v53.i8);
    v50.i64[1] = vextq_s8(v53, v53, 8uLL).u64[0];
    *v53.i8 = vrev64_s16(*v55.i8);
    v53.i64[1] = vextq_s8(v55, v55, 8uLL).u64[0];
    *v6 = v50;
    *v8 = v53;
    *v53.i8 = vrev64_s16(*v54.i8);
    v53.i64[1] = vextq_s8(v54, v54, 8uLL).u64[0];
    *v9 = v53;
    *v53.i8 = vrev64_s16(*v19.i8);
    v19.i64[0] = vextq_s8(v19, v19, 8uLL).u64[0];
    v53.i64[1] = v19.i64[0];
    *v10 = v53;
  }

  return *v19.i64;
}

double sub_2779D9580(uint16x4_t *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = &a1[-a2];
  v7 = (a1 - 6 * a2);
  v8 = (a1 - 4 * a2);
  v9 = (a1 - 2 * a2);
  v10 = (a1 + 2 * a2);
  v11 = (a1 + 4 * a2);
  v12 = (a1 + 6 * a2);
  *v13.i8 = *v10;
  v14.i64[0] = *v11;
  v15 = a3;
  v16 = a6 - 8;
  v17 = vabd_u16(*v9, *a1);
  v18 = vcgt_u16(vsra_n_u16(vadd_s16(v17, v17), vabd_u16(*v8, *v10), 1uLL), vdup_n_s16(v15 << (a6 - 8)));
  *v19.i8 = *v9;
  v19.u64[1] = *a1;
  *v20.i8 = *v8;
  v20.u64[1] = *v10;
  v21.i64[0] = *v7;
  v21.i64[1] = *v11;
  v22.i64[0] = *v6;
  v22.i64[1] = *v12;
  v23 = vabdq_u16(v19, v20);
  v25 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(vmaxq_u16(v23, vabdq_u16(v20, v21)), vabdq_u16(v21, v22)));
  v24 = vbic_s8(*&vextq_s8(v25, v25, 8uLL), v18);
  *v25.i8 = vand_s8(v24, *v25.i8);
  v24.i16[0] = vaddv_s16(*v25.i8);
  if (v24.i32[0])
  {
    v26 = (a1 - 12 * a2);
    v27 = (a1 - 10 * a2);
    v28 = (a1 + 10 * a2);
    v29 = vdupq_n_s16(1 << v16);
    v30 = vcgeq_u16(v29, vmaxq_u16(vmaxq_u16(v23, vabdq_u16(v19, v21)), vabdq_u16(v19, v22)));
    *v31.i8 = vand_s8(vand_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)), *v25.i8);
    v32 = vcgtq_u16(v23, vdupq_n_s16(*a5 << v16));
    v33 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v34.i64[0] = *v27;
    v34.u64[1] = a1[a2];
    v35.i64[0] = *v26;
    v35.i64[1] = v28->i64[0];
    *v36.i8 = *v9;
    v36.u64[1] = *v10;
    v37 = 1 << (a6 - 1);
    v38 = vdup_n_s16(-v37);
    v39 = vdup_n_s16(v37 - 1);
    v40 = vsubq_s16(vextq_s8(v19, v20, 8uLL), v36);
    *v41.i8 = v33;
    v41.u64[1] = v33;
    v25.i64[1] = v25.i64[0];
    v42 = vmla_s16(vand_s8(vmin_s16(vmax_s16(*&vextq_s8(v40, v40, 8uLL), v38), v39), v33), *v40.i8, 0x3000300030003);
    v43 = vmin_s16(vmax_s16(vadd_s16(v42, 0x3000300030003), v38), v39);
    *v40.i8 = vshr_n_s16(vmin_s16(vmax_s16(vadd_s16(v42, 0x4000400040004), v38), v39), 3uLL);
    *v44.i8 = vrshr_n_s16(*v40.i8, 1uLL);
    v44.u64[1] = vneg_s16(*v44.i8);
    *v45.i8 = vshr_n_s16(v43, 3uLL);
    v45.u64[1] = vneg_s16(*v40.i8);
    v46 = vdupq_n_s16(~(-1 << a6));
    v47 = vminq_u16(vmaxq_s16(vaddq_s16(v45, v19), 0), v46);
    v48 = vbslq_s8(v41, v20, vminq_u16(vmaxq_s16(vaddq_s16(v44, v20), 0), v46));
    if (v31.i64[0])
    {
      *v49.i8 = *(a1 - 14 * a2);
      v49.u64[1] = *(a1 + 12 * a2);
      v50 = vcgeq_u16(v29, vmaxq_u16(vmaxq_u16(vabdq_u16(v19, v34), vabdq_u16(v19, v35)), vabdq_u16(v19, v49)));
      *v50.i8 = vand_s8(vand_s8(*&vextq_s8(v50, v50, 8uLL), *v50.i8), *v31.i8);
      v31.i64[1] = v31.i64[0];
      v51 = vaddq_s16(v22, v21);
      *v52.i8 = *a1;
      v52.u64[1] = *v9;
      v53 = vaddq_s16(v22, v20);
      v54 = vaddq_s16(v52, v19);
      v55 = vaddq_s16(vaddq_s16(v54, v53), vaddq_s16(v51, v51));
      v56 = vrshrq_n_u16(v55, 3uLL);
      v13.u64[1] = *v8;
      v57 = vaddq_s16(vaddq_s16(v13, v20), vsubq_s16(v55, v51));
      v14.i64[1] = *v7;
      v58 = vrshrq_n_u16(v57, 3uLL);
      v59 = vrshrq_n_u16(vaddq_s16(vsubq_s16(vaddq_s16(v14, v19), v53), v57), 3uLL);
      if (v50.i64[0])
      {
        v50.i64[1] = v50.i64[0];
        v60.i64[0] = 0x7000700070007;
        v60.i64[1] = 0x7000700070007;
        v61 = vaddq_s16(v35, v34);
        v62 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v54, v20), vaddq_s16(v21, v22)), v49, v60), vaddq_s16(v61, v61));
        v63 = vaddq_s16(vaddq_s16(v22, v13), vsubq_s16(v62, vaddq_s16(v49, v49)));
        v64 = vaddq_s16(vsubq_s16(vaddq_s16(v14, v21), vaddq_s16(v35, v49)), v63);
        v65.i64[1] = *v6;
        v66 = vrshrq_n_u16(v64, 4uLL);
        v65.i64[0] = *v12;
        v67 = vaddq_s16(vsubq_s16(vaddq_s16(v65, v20), vaddq_s16(v34, v49)), v64);
        v68 = vrshrq_n_u16(v67, 4uLL);
        v69.i64[1] = *v27;
        *v69.i8 = a1[a2];
        v70 = vaddq_s16(vsubq_s16(vaddq_s16(v19, v69), vaddq_s16(v22, v49)), v67);
        v71.u64[1] = *v9;
        *v71.i8 = *a1;
        v72 = vrshrq_n_u16(vaddq_s16(vsubq_s16(vaddq_s16(*v28, v71), vaddq_s16(v49, v21)), v70), 4uLL);
        v35 = vbslq_s8(v50, vrshrq_n_u16(v62, 4uLL), v35);
        v34 = vbslq_s8(v50, vrshrq_n_u16(v63, 4uLL), v34);
        v22 = vbslq_s8(v50, v66, v22);
        v21 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vandq_s8(v25, v31), 0xFuLL)), vbslq_s8(v50, v68, v56), v21);
        v73 = vbslq_s8(v25, vbslq_s8(v31, vbslq_s8(v50, vrshrq_n_u16(v70, 4uLL), v58), v48), v20);
        v74 = vbslq_s8(v31, vbslq_s8(v50, v72, v59), v47);
      }

      else
      {
        v21 = vbslq_s8(v31, v56, v21);
        v73 = vbslq_s8(v25, vbslq_s8(v31, v58, v48), v20);
        v74 = vbslq_s8(v31, v59, v47);
      }

      v75 = vbslq_s8(v25, v74, v19);
    }

    else
    {
      v73 = vbslq_s8(v25, v48, v20);
      v75 = vbslq_s8(v25, v47, v19);
    }

    *v26 = v35.i64[0];
    *v27 = v34.i64[0];
    *v6 = v22.i64[0];
    *v7 = v21.i64[0];
    *v8 = *v73.i8;
    *v9 = *v75.i8;
    *a1 = vextq_s8(v75, v75, 8uLL).u64[0];
    *v10 = vextq_s8(v73, v73, 8uLL).u64[0];
    *v11 = vextq_s8(v21, v21, 8uLL).u64[0];
    *v12 = vextq_s8(v22, v22, 8uLL).u64[0];
    a1[a2] = vextq_s8(v34, v34, 8uLL).u64[0];
    v21.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
    v28->i64[0] = v21.i64[0];
  }

  return *v21.i64;
}

int32x4_t sub_2779D9988(int16x8_t *a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 *a5, char a6)
{
  v6 = a1[-1];
  v7 = (a1 + 2 * a2 - 16);
  v8 = (a1 + 4 * a2 - 16);
  v9 = (a1 + 6 * a2 - 16);
  v10 = *(a1 + 2 * a2);
  v11 = vtrn1q_s16(v6, *v7);
  v12 = vtrn2q_s16(v6, *v7);
  v13 = *(a1 + 4 * a2);
  v14 = *(a1 + 6 * a2);
  v15 = vtrn1q_s16(*v8, *v9);
  v16 = vtrn2q_s16(*v8, *v9);
  v17 = vtrn1q_s32(v11, v15);
  result = vtrn2q_s32(v11, v15);
  v19 = vtrn1q_s32(v12, v16);
  v20 = vtrn2q_s32(v12, v16);
  v35 = vtrn1q_s16(*a1, v10);
  v21 = vtrn2q_s16(*a1, v10);
  v22 = vtrn1q_s16(v13, v14);
  v23 = vtrn2q_s16(v13, v14);
  v24 = vtrn1q_s32(v35, v22);
  v25 = vtrn2q_s32(v35, v22);
  v26 = vtrn1q_s32(v21, v23);
  v27 = vtrn2q_s32(v21, v23);
  v28 = a6 - 8;
  *v22.i8 = vabd_u16(*&vextq_s8(v20, v20, 8uLL), *v24.i8);
  *v35.i8 = vcgt_u16(vsra_n_u16(vadd_s16(*v22.i8, *v22.i8), vabd_u16(*&vextq_s8(result, result, 8uLL), *v26.i8), 1uLL), vdup_n_s16(a3 << (a6 - 8)));
  v29 = vextq_s8(v20, v24, 8uLL);
  v30 = vextq_s8(result, v26, 8uLL);
  v31 = vextq_s8(v19, v25, 8uLL);
  v32 = vextq_s8(v17, v27, 8uLL);
  v33 = vabdq_u16(v29, v30);
  v34 = vcgeq_u16(vdupq_n_s16(a4 << (a6 - 8)), vmaxq_u16(vmaxq_u16(v33, vabdq_u16(v30, v31)), vabdq_u16(v31, v32)));
  *v35.i8 = vand_s8(vbic_s8(*&vextq_s8(v34, v34, 8uLL), *v35.i8), *v34.i8);
  v34.i16[0] = vaddv_s16(*v35.i8);
  if (v34.i32[0])
  {
    v36 = vdupq_n_s16(1 << v28);
    v37 = vcgeq_u16(v36, vmaxq_u16(vmaxq_u16(v33, vabdq_u16(v29, v31)), vabdq_u16(v29, v32)));
    *v37.i8 = vand_s8(vand_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)), *v35.i8);
    v39 = vcgtq_u16(v33, vdupq_n_s16(*a5 << v28));
    *v38.i8 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
    v39.i64[0] = vextq_s8(v24, v24, 8uLL).u64[0];
    v40.i64[0] = v20.i64[0];
    v40.i64[1] = v39.i64[0];
    result.i64[1] = v26.i64[1];
    v19.i64[1] = v25.i64[1];
    v17.i64[1] = v27.i64[1];
    v41.i64[0] = v29.i64[0];
    v41.i64[1] = v30.i64[1];
    v42 = 1 << (a6 - 1);
    v43 = vdup_n_s16(-v42);
    v44 = vdup_n_s16(v42 - 1);
    v45 = vsubq_s16(vextq_s8(v29, v30, 8uLL), v41);
    v38.i64[1] = v38.i64[0];
    v35.i64[1] = v35.i64[0];
    v46 = vmla_s16(vand_s8(*v38.i8, vmin_s16(vmax_s16(*&vextq_s8(v45, v45, 8uLL), v43), v44)), *v45.i8, 0x3000300030003);
    *v45.i8 = vmin_s16(vmax_s16(vadd_s16(v46, 0x4000400040004), v43), v44);
    v47 = vmin_s16(vmax_s16(vadd_s16(v46, 0x3000300030003), v43), v44);
    *v45.i8 = vshr_n_s16(*v45.i8, 3uLL);
    *v48.i8 = vrshr_n_s16(*v45.i8, 1uLL);
    v48.u64[1] = vneg_s16(*v48.i8);
    *v49.i8 = vshr_n_s16(v47, 3uLL);
    v49.u64[1] = vneg_s16(*v45.i8);
    v50 = vaddq_s16(v49, v29);
    v51 = vdupq_n_s16(~(-1 << a6));
    v52 = vminq_u16(vmaxq_s16(v50, 0), v51);
    v53 = vbslq_s8(v38, v30, vminq_u16(vmaxq_s16(vaddq_s16(v48, v30), 0), v51));
    if (v37.i64[0])
    {
      v54 = vcgeq_u16(v36, vmaxq_u16(vmaxq_u16(vabdq_u16(v29, v40), vabdq_u16(v29, result)), vabdq_u16(v29, v19)));
      *v54.i8 = vand_s8(*&vextq_s8(v54, v54, 8uLL), vand_s8(*v54.i8, *v37.i8));
      v37.i64[1] = v37.i64[0];
      v55 = vaddq_s16(v31, v32);
      v56 = vextq_s8(v29, v29, 8uLL);
      v57 = vaddq_s16(v30, v32);
      v58 = vaddq_s16(vaddq_s16(vaddq_s16(v56, v29), v57), vaddq_s16(v55, v55));
      v59 = vrshrq_n_u16(v58, 3uLL);
      v60 = vextq_s8(v30, v30, 8uLL);
      v61 = vaddq_s16(vaddq_s16(v60, v30), vsubq_s16(v58, v55));
      v62 = vrshrq_n_u16(v61, 3uLL);
      v63 = vextq_s8(v31, v31, 8uLL);
      v64 = vrshrq_n_u16(vaddq_s16(vaddq_s16(vsubq_s16(v29, v57), v63), v61), 3uLL);
      if (v54.i64[0])
      {
        v54.i64[1] = v54.i64[0];
        v65.i64[0] = 0x7000700070007;
        v65.i64[1] = 0x7000700070007;
        v66 = vaddq_s16(v40, result);
        v67 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v55, v30), vaddq_s16(v29, v56)), v19, v65), vaddq_s16(v66, v66));
        v68 = vrshrq_n_u16(v67, 4uLL);
        v69 = vaddq_s16(vaddq_s16(v60, v32), vsubq_s16(v67, vaddq_s16(v19, v19)));
        v70 = vrshrq_n_u16(v69, 4uLL);
        v71 = vaddq_s16(vaddq_s16(vsubq_s16(v31, vaddq_s16(v19, result)), v63), v69);
        v72 = vrshrq_n_u16(v71, 4uLL);
        v73 = vaddq_s16(vaddq_s16(vsubq_s16(v30, vaddq_s16(v40, v19)), vextq_s8(v32, v32, 8uLL)), v71);
        v74 = vrshrq_n_u16(v73, 4uLL);
        v39.i64[1] = v20.i64[0];
        v75 = vaddq_s16(vaddq_s16(vsubq_s16(v29, vaddq_s16(v32, v19)), v39), v73);
        v76 = vaddq_s16(result, v29);
        v77 = vrshrq_n_u16(vaddq_s16(vsubq_s16(vextq_s8(v76, v76, 8uLL), vaddq_s16(v19, v31)), v75), 4uLL);
        result = vbslq_s8(v54, v68, result);
        v40 = vbslq_s8(v54, v70, v40);
        v32 = vbslq_s8(v54, v72, v32);
        v31 = vbslq_s8(vcltzq_s16(vshlq_n_s16(vandq_s8(v35, v37), 0xFuLL)), vbslq_s8(v54, v74, v59), v31);
        v78 = vbslq_s8(v35, vbslq_s8(v37, vbslq_s8(v54, vrshrq_n_u16(v75, 4uLL), v62), v53), v30);
        v79 = vbslq_s8(v37, vbslq_s8(v54, v77, v64), v52);
      }

      else
      {
        v31 = vbslq_s8(v37, v59, v31);
        v78 = vbslq_s8(v35, vbslq_s8(v37, v62, v53), v30);
        v79 = vbslq_s8(v37, v64, v52);
      }

      v80 = vbslq_s8(v35, v79, v29);
    }

    else
    {
      v78 = vbslq_s8(v35, v53, v30);
      v80 = vbslq_s8(v35, v52, v29);
    }

    v81.i64[0] = v17.i64[0];
    v81.i64[1] = v32.i64[0];
    v82 = vzip2q_s64(v32, v17);
    v83.i64[0] = v19.i64[0];
    v83.i64[1] = v31.i64[0];
    v84.i64[0] = result.i64[0];
    v84.i64[1] = v78.i64[0];
    v85 = vzip2q_s64(v31, v19);
    v86 = vzip2q_s64(v78, result);
    v87.i64[0] = v40.i64[0];
    v87.i64[1] = v80.i64[0];
    v88 = vzip2q_s64(v80, v40);
    v89 = vtrn1q_s16(v81, v83);
    v90 = vtrn2q_s16(v81, v83);
    v91 = vtrn1q_s16(v84, v87);
    v92 = vtrn2q_s16(v84, v87);
    v93 = vtrn1q_s32(v89, v91);
    v94 = vtrn2q_s32(v89, v91);
    v95 = vtrn1q_s32(v90, v92);
    v96 = vtrn2q_s32(v90, v92);
    v97 = vtrn1q_s16(v88, v86);
    v98 = vtrn2q_s16(v88, v86);
    v99 = vtrn1q_s16(v85, v82);
    a1[-1] = v93;
    *a1 = vtrn1q_s32(v97, v99);
    v100 = vtrn2q_s16(v85, v82);
    *v7 = v95;
    *(a1 + 2 * a2) = vtrn1q_s32(v98, v100);
    *v8 = v94;
    *(a1 + 4 * a2) = vtrn2q_s32(v97, v99);
    result = vtrn2q_s32(v98, v100);
    *v9 = v96;
    *(a1 + 6 * a2) = result;
  }

  return result;
}

uint64_t sub_2779D9D84()
{
  v0 = getenv("AOM_SIMD_CAPS");
  if (v0 && *v0)
  {
    v1 = strtol(v0, 0, 0);
  }

  else
  {
    v14 = 8;
    v15 = 0;
    v2 = sysctlbyname("hw.optional.armv8_crc32", &v15, &v14, 0, 0);
    if (v15)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    v14 = 8;
    v15 = 0;
    v5 = sysctlbyname("hw.optional.arm.FEAT_DotProd", &v15, &v14, 0, 0);
    if (v15)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v4 |= 4u;
    }

    v14 = 8;
    v15 = 0;
    v7 = sysctlbyname("hw.optional.arm.FEAT_I8MM", &v15, &v14, 0, 0);
    if (v15)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = v4 | 8;
    }

    else
    {
      v9 = v4;
    }

    v10 = getenv("AOM_SIMD_CAPS_MASK");
    if (v10 && *v10)
    {
      v11 = strtol(v10, 0, 0);
    }

    else
    {
      v11 = -1;
    }

    v1 = v11 & v9;
  }

  v12 = v1 & 0xFFFFFFF3;
  if ((v1 & 4) != 0)
  {
    v12 = v1;
  }

  if ((v12 & 4) == 0)
  {
    v12 &= 0xFFFFFFEB;
  }

  if ((v12 & 8) == 0)
  {
    v12 &= 0xFFFFFFE7;
  }

  if ((v12 & 0x10) != 0)
  {
    return v12;
  }

  else
  {
    return v12 & 0xFFFFFFCF;
  }
}

uint64_t sub_2779D9ED4(uint64_t a1, unsigned int a2, int a3)
{
  memset(v4, 0, sizeof(v4));
  sub_2779D9F18(a1, a2, a3, v4);
  return sub_2779DA010(v4, 0, 1, 0);
}

uint64_t sub_2779D9F18(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v4 = **(result + 8280);
  v5 = result + 2608 * a2;
  v6 = 10574;
  if (!a2)
  {
    v6 = 9944;
  }

  v7 = 31160;
  if (!a2)
  {
    v7 = 30040;
  }

  v8 = *(result + 11064) + v6;
  *(a4 + 24) = *(v5 + 592);
  *(a4 + 32) = v8;
  *(a4 + 40) = result + v7;
  *(a4 + 8) = *(v4 + a2 + 142);
  v9 = byte_277C3CAE8[a3];
  v10 = byte_277C3CAFE[a3];
  v11 = ((*(result + 8352) >> 31) & (*(result + 8352) >> 3)) + v9;
  v12 = ((*(result + 8344) >> 31) & (*(result + 8344) >> 3)) + v10;
  v13 = v10 >> *(v5 + 436);
  v14 = a2 > 0;
  v15 = v9 >> *(v5 + 440) < 4;
  if (v14 && v13 < 4)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  *(a4 + 12) = v16 + v13;
  if (v14 && v15)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  *a4 = v17 + (v11 >> *(v5 + 440));
  *(a4 + 4) = (v12 >> *(v5 + 436)) + v16;
  return result;
}

uint64_t sub_2779DA010(int *a1, _BYTE **a2, int a3, int a4)
{
  v4 = a1[1] - 1;
  v48 = *a1;
  v47 = (v4 + *a1);
  if (v47 < 2)
  {
    v5 = 0;
    goto LABEL_70;
  }

  v5 = 0;
  v6 = *(a1 + 3);
  v8 = a1[2];
  v7 = a1[3];
  v9 = v8 - 2;
  LODWORD(v10) = v8 - 1;
  if (v8 - 1 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v10;
  }

  v45 = v4;
  v46 = a1[1] - 1;
  v11 = *(a1 + 4) + 90 * v9;
  v12 = *(a1 + 5) + 160 * v9;
  for (i = 1; i != v47; ++i)
  {
    if (i >= v4)
    {
      v14 = v4;
    }

    else
    {
      v14 = i;
    }

    v15 = i - v48;
    if (i - v48 < 0)
    {
      v15 = -1;
    }

    if (v14 <= v15)
    {
      goto LABEL_67;
    }

    if (i >= v45)
    {
      v16 = v45;
    }

    else
    {
      v16 = i;
    }

    do
    {
      v17 = i - v16;
      if ((v16 != 0) != i > v16)
      {
        v18 = v17 < 1;
        if (v17 >= 1)
        {
          v19 = (i - v14) * v7;
        }

        else
        {
          v19 = v7 * v17;
        }

        if (v18)
        {
          v20 = v16 + (i - v14) * v7 - 1;
        }

        else
        {
          v20 = v16 + (i - v14 - 1) * v7;
        }

        v21 = *(v6 + v20);
        LODWORD(v22) = *(v6 + v16 + v19);
        v23 = v21 == v22;
        if (v21 <= v22)
        {
          v24 = 0;
          v29 = 0;
          if (!v23)
          {
LABEL_30:
            if (!a3)
            {
              goto LABEL_58;
            }

LABEL_31:
            v5 += *(v12 + 32 * v29 + 4 * v22);
            goto LABEL_66;
          }
        }

        else
        {
          v24 = v22 + 1;
        }

        v29 = 0;
        LODWORD(v22) = v24;
        goto LABEL_30;
      }

      v22 = v6 + v17 * v7;
      v51 = *(v22 + v16 - 1);
      v25 = v51;
      v26 = v6 + (v17 - 1) * v7;
      v52 = *(v26 + v16);
      v27 = *(v26 + v16 - 1);
      v53 = v27;
      v50 = 1;
      v49 = 514;
      if (v51 == v52)
      {
        LOBYTE(v49) = 4;
        v52 = -1;
        if (v51 == v27)
        {
          LOBYTE(v49) = 5;
          v28 = 1;
        }

        else
        {
          HIBYTE(v49) = 1;
          v52 = v27;
          v28 = 2;
        }

        goto LABEL_48;
      }

      if (v51 == v27)
      {
        LOBYTE(v49) = 3;
        v28 = 2;
        goto LABEL_39;
      }

      if (v52 != v27)
      {
        v28 = 3;
LABEL_39:
        if (v52 == 255)
        {
          goto LABEL_40;
        }

        if (v51 <= v52 || v51 == v27)
        {
          goto LABEL_48;
        }

        v31 = 2;
LABEL_47:
        LOBYTE(v49) = v31;
        v51 = v52;
        HIBYTE(v49) = 2;
        v52 = v25;
        goto LABEL_48;
      }

      if (v52 != 255)
      {
        v31 = 3;
        v28 = 2;
        goto LABEL_47;
      }

      v28 = 2;
LABEL_40:
      HIBYTE(v49) = 1;
      v52 = v27;
LABEL_48:
      v32 = 0;
      v33 = *(v22 + v16);
      LODWORD(v22) = v33;
      while (1)
      {
        v34 = *(&v51 + v32);
        if (v34 <= v33)
        {
          break;
        }

        LODWORD(v22) = v22 + 1;
LABEL_52:
        if (v28 == ++v32)
        {
          goto LABEL_55;
        }
      }

      if (v34 != v33)
      {
        goto LABEL_52;
      }

      LODWORD(v22) = v32;
LABEL_55:
      v35 = 0;
      v36 = 0;
      do
      {
        v36 += byte_277BEB853[v35] * *(&v49 + v35);
        ++v35;
      }

      while (v28 != v35);
      v29 = 9 - v36;
      if (a3)
      {
        goto LABEL_31;
      }

LABEL_58:
      **a2 = **a2 & 0xF8 | v22 & 7;
      **a2 = **a2 & 0xF | (16 * v29);
      ++*a2;
      if (a4)
      {
        v37 = 0;
        v38 = v11 + 18 * v29;
        v39 = *(v38 + 2 * v8);
        v40 = (v8 > 3) + (v39 >> 4) + 4;
        v22 = v22;
        do
        {
          v41 = *(v38 + 2 * v37);
          v42 = v41 + ((0x8000 - v41) >> v40);
          if (v37 >= v22)
          {
            LOWORD(v42) = v41 - (v41 >> v40);
          }

          *(v38 + 2 * v37++) = v42;
        }

        while (v10 != v37);
        v43 = *(v38 + 2 * v8);
        if (v39 < 0x20)
        {
          ++v43;
        }

        *(v38 + 2 * v8) = v43;
      }

LABEL_66:
      --v16;
      --v14;
    }

    while (v16 > v15);
LABEL_67:
    v4 = v46;
  }

LABEL_70:
  if (a3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_2779DA394(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v13 = a1 + 432;
  v14 = *(a1 + 8352);
  v15 = byte_277C3CAE8[a3];
  if (v14 < 0)
  {
    v15 += v14 >> (*(v13 + 2608 * a7 + 8) + 3);
  }

  v16 = v15 >> 2;
  v17 = byte_277C3CAFE[a3];
  v18 = *(a1 + 8344);
  if (v18 < 0)
  {
    v17 += v18 >> (*(v13 + 2608 * a7 + 4) + 3);
  }

  v19 = v17 >> 2;
  v20 = __OFSUB__(v16, a4);
  v21 = v16 - a4;
  if ((v21 < 0) ^ v20 | (v21 == 0))
  {
    v22 = 1;
  }

  else
  {
    v22 = v19 <= a5;
  }

  if (!v22)
  {
    v23 = **(a1 + 8280);
    if (a7 || v23[(a5 >> byte_277BFC806[a3]) + 146 + (a4 >> byte_277BFC81C[a3] << byte_277BFC832[a3])] == a2)
    {
      v24 = byte_277C3BCDE[4 * *v23 + 2 * *(v13 + 2608 * a7 + 4) + *(v13 + 2608 * a7 + 8)];
      if (*(a8 + 20))
      {

        sub_277A38314();
      }

      else
      {

        sub_277A39A78(a7, a6, a4, a5, v24, a2, a8);
      }
    }

    else
    {
      v25 = *&byte_277BFDB54[4 * a2];
      if (v25 >= v21)
      {
        v25 = v21;
      }

      v26 = v19 - a5;
      if (*&byte_277BFDBA0[4 * a2] >= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = *&byte_277BFDBA0[4 * a2];
      }

      v33 = v25;
      if (v25 >= 1)
      {
        v28 = 0;
        v29 = byte_277C3295E[a2];
        v30 = *&byte_277BFDBA0[4 * v29];
        v32 = *&byte_277BFDB54[4 * v29];
        do
        {
          if (v27 >= 1)
          {
            for (i = 0; i < v27; i += v30)
            {
              v34 = a6;
              sub_2779DA394(a1, v29, a3, (v28 + a4), (a5 + i), a6, 0, a8);
              a6 = (v34 + v32 * v30);
            }
          }

          v28 += v32;
        }

        while (v28 < v33);
      }
    }
  }
}

void sub_2779DA624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, signed int a10, unsigned int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = MEMORY[0x28223BE20]();
  v17 = v16;
  v128 = v19;
  v129 = v18;
  v21 = v20;
  v126 = v22;
  v127 = v23;
  v24 = v15;
  v150 = *MEMORY[0x277D85DE8];
  v125 = byte_277C3CAE8[v25];
  v124 = byte_277C3CAFE[v25];
  if (*(v15 + 24) >= *(v15 + 16))
  {
    v26 = *(v15 + 16);
  }

  else
  {
    v26 = *(v15 + 24);
  }

  v27 = a10 / 20.0;
  v28 = v27 * v27;
  if (v27 * v27 <= 1.0)
  {
    v29 = v27 * v27;
  }

  else
  {
    v29 = 1.0;
  }

  v30 = vcvtd_n_f64_s32(a10, 6uLL);
  v31 = v30 * v30;
  v32 = vcvtd_n_f64_s32(a11, 2uLL);
  v33 = v32 * v32;
  memset(v143, 0, sizeof(v143));
  bzero(v141, 0x900uLL);
  bzero(v140, 0x1000uLL);
  v34 = 0;
  v35 = fmax(v26 * 0.1, 1.0);
  v36 = (v17 + 2);
  do
  {
    *(v143 + v34) = fmax(sqrt(*(v36 - 1) * *(v36 - 1) + *v36 * *v36) / v35, 1.0);
    v34 += 8;
    v36 += 2;
  }

  while (v34 != 32);
  v37 = 0.00001;
  if (v28 >= 0.00001)
  {
    v38 = v29;
  }

  else
  {
    v38 = 0.00001;
  }

  v39 = 1.0;
  if (v33 <= 1.0)
  {
    v40 = v33;
  }

  else
  {
    v40 = 1.0;
  }

  if (a10 > 127)
  {
    v38 = v31 * 0.5;
  }

  if (v33 >= 0.00001)
  {
    v37 = v40;
  }

  v122 = v37;
  v123 = v38;
  if (v21 >= 1)
  {
    v41 = 0;
    v131 = 0;
    v120 = v24 + 32;
    v121 = v129 + 16;
    v118 = v21;
    v119 = v24 + 40;
    do
    {
      v42 = *(v121 + 2608 * v41 + 4);
      v43 = *(v121 + 2608 * v41 + 8);
      v44 = v125 >> v43;
      v45 = *(v129 + 24);
      v46 = v42 - *(v129 + 20);
      v47 = *(v120 + 4 * (v41 != 0));
      v48 = *(v119 + 8 * v41);
      v49 = v43 - v45;
      v50 = v41;
      v51 = v124 >> v42;
      if (v41)
      {
        v52 = v39 / ((1 << (v43 - v45 + v46)) + 25);
      }

      else
      {
        v52 = 0.04;
      }

      v53 = log(*(v128 + 8 * v41) * 2.0 + 5.0);
      v130 = v50;
      if (v50 == 1 && v44)
      {
        v54 = 0;
        v55 = 1 << v49;
        LODWORD(v56) = 1 << v46;
        if (1 << v46 <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = v56;
        }

        if (v55 <= 1)
        {
          v55 = 1;
        }

        v57 = -7.0;
        v58 = 0.5;
        v60 = xmmword_277BB73B0;
        v59 = xmmword_277BB73C0;
        do
        {
          if (v51)
          {
            for (i = 0; i != v51; ++i)
            {
              if (v49 != 31)
              {
                v62 = 0;
                v63 = i + 32 * v54;
                v64 = ((36 * (v54 << v49)) | 2) + (i << v46);
                do
                {
                  if (v46 != 31)
                  {
                    v65 = v140[v63];
                    v66 = v64;
                    v67 = v56;
                    do
                    {
                      v65 += v141[v66++];
                      --v67;
                    }

                    while (v67);
                    v140[v63] = v65;
                  }

                  ++v62;
                  v64 += 36;
                }

                while (v62 != v55);
              }
            }
          }

          ++v54;
        }

        while (v54 != v44);
      }

      else
      {
        v57 = -7.0;
        v58 = 0.5;
        v60 = xmmword_277BB73B0;
        v59 = xmmword_277BB73C0;
      }

      v68 = 0;
      v69 = 0;
      v70 = a13 + v131;
      v71 = 1.0 / (v122 * (v123 * (v53 + 0.5)));
      if (v44 <= 1)
      {
        v72 = 1;
      }

      else
      {
        v72 = v44;
      }

      v73 = a13 + v131;
      v74 = &v142;
      v75 = a9;
      do
      {
        v76 = 0;
        v77 = v74;
        do
        {
          v78 = vabdq_u8(*(v48 + v51 * v127 + v44 * v126 * v47 + v68 + v76), *(v73 + v76));
          v77[-1] = vmull_u8(*v78.i8, *v78.i8);
          *v77 = vmull_high_u8(v78, v78);
          v76 += 16;
          v77 += 2;
        }

        while (v76 < v51);
        ++v69;
        v74 = (v74 + 72);
        v73 += v51;
        v68 += v47;
      }

      while (v69 != v72);
      v139[0] = unk_277BEB860;
      v139[1] = unk_277BEB870;
      v139[2] = unk_277BEB880;
      v139[3] = unk_277BEB890;
      if (v51)
      {
        v79 = 0;
        v80 = (v51 - 4);
        do
        {
          v81 = &v141[v79];
          for (j = 32; j != 80; j += 16)
          {
            v83 = *v81;
            if (v79)
            {
              if (v79 >= v80)
              {
                v83 = vqtbl1q_s8(v83, v60);
              }
            }

            else
            {
              v83 = vqtbl1q_s8(v83, v59);
            }

            *(&v144 + j) = v83;
            v81 = (v81 + 72);
          }

          v144 = v146;
          v145 = v146;
          if (v44)
          {
            for (k = 0; k != v44; ++k)
            {
              for (m = 0; m != 4; ++m)
              {
                v86 = 0;
                v87 = 0uLL;
                do
                {
                  v87 = vpadalq_u16(v87, vandq_s8(*(&v144 + v86), v139[m]));
                  v86 += 16;
                }

                while (v86 != 80);
                *&v149[128 * k + 4 * (m | v79)] = vaddvq_s32(v87);
              }

              v144 = v145;
              v145 = v146;
              v146 = v147;
              v147 = v148;
              if (k <= (v44 - 4))
              {
                v88 = *v81;
                if (v79)
                {
                  if (v79 >= v80)
                  {
                    v88 = vqtbl1q_s8(v88, v60);
                  }
                }

                else
                {
                  v88 = vqtbl1q_s8(v88, v59);
                }

                v148 = v88;
                v81 = (v81 + 72);
              }

              else
              {
                v148 = v147;
              }
            }
          }

          v79 += 4;
        }

        while (v79 < v51);
      }

      v89 = a14 + 4 * v131;
      v90 = a15 + 2 * v131;
      if (a12)
      {
        if (v44)
        {
          v91 = 0;
          v92 = 0;
          v93 = v44 >> 1;
          v94 = v140;
          v95 = v149;
          do
          {
            if (v51)
            {
              for (n = 0; n != v51; ++n)
              {
                if (n < v51 >> 1)
                {
                  v97 = 2 * (v91 >= v93);
                }

                else
                {
                  v97 = 2 * (v91 >= v93) + 1;
                }

                v98 = v71 * (*(v143 + v97) * (*(a9 + 4 * v97) * 0.00833333333 + v52 * (v94[n] + *&v95[4 * n]) * 0.0416666667));
                if (v98 >= 7.0)
                {
                  v98 = 7.0;
                }

                v99 = v98;
                v100 = v92 + n;
                v101 = ((COERCE_FLOAT((v99 * -12102000.0) + 1065292415) * 1000.0) + v58);
                v102 = *(v90 + 2 * (v92 + n));
                *(v89 + 4 * v100) += v101 * *(v70 + n);
                *(v90 + 2 * v100) = v102 + v101;
              }

              v92 += n;
            }

            ++v91;
            v94 += 32;
            v95 += 128;
            v70 += v51;
          }

          while (v91 != v44);
        }
      }

      else if (v44)
      {
        v103 = 0;
        v104 = 0;
        v132 = v44 >> 1;
        v133 = v44;
        v105 = v51 >> 1;
        v106 = v140;
        v107 = v149;
        v135 = v51;
        do
        {
          if (v51)
          {
            v108 = 0;
            v134 = v103;
            v136 = 2 * (v103 >= v132);
            v137 = v107;
            do
            {
              v138 = *(v70 + v108);
              v109 = v136;
              if (v108 >= v105)
              {
                v109 = v136 + 1;
              }

              v110 = *(v75 + 4 * v109);
              v111 = v104 + v108;
              v112 = v71 * (*(v143 + v109) * (v110 * 0.00833333333 + v52 * (v106[v108] + *&v107[4 * v108]) * 0.0416666667));
              v113 = -v112;
              if (v112 >= 7.0)
              {
                v113 = v57;
              }

              v114 = v70;
              v115 = v104;
              v116 = exp(v113);
              v107 = v137;
              v104 = v115;
              v70 = v114;
              v57 = -7.0;
              v117 = v116 * 1000.0;
              *(v89 + 4 * v111) += v117 * v138;
              *(v90 + 2 * v111) += v117;
              v51 = v135;
              v75 = a9;
              ++v108;
            }

            while (v135 != v108);
            v104 = (v115 + v108);
            v44 = v133;
            v103 = v134;
          }

          ++v103;
          v106 += 32;
          v107 += 128;
          v70 += v51;
        }

        while (v103 != v44);
      }

      v131 += v51 * v44;
      v41 = v130 + 1;
      v39 = 1.0;
    }

    while (v130 + 1 != v118);
  }
}

void sub_2779DAE30()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = 0;
  v832 = *MEMORY[0x277D85DE8];
  v4 = vdupq_n_s16(0x16A1u);
  v5 = vdupq_n_s16(0xE95Fu);
  v6 = vdupq_n_s16(0x1D90u);
  v7 = vdupq_n_s16(0xC3Fu);
  v8 = vdupq_n_s16(0xE270u);
  v624 = vdupq_n_s16(0xF3C1u);
  v622 = vdupq_n_s16(0x1F63u);
  v9 = vdupq_n_s16(0x63Eu);
  v620 = vdupq_n_s16(0xE09Du);
  v618 = vdupq_n_s16(0x11C7u);
  v10 = vdupq_n_s16(0x1A9Bu);
  v616 = vdupq_n_s16(0xEE39u);
  v11 = vdupq_n_s16(0x1FD9u);
  v12 = vdupq_n_s16(0x323u);
  v13 = vdupq_n_s16(0xE027u);
  v14 = vdupq_n_s16(0x144Du);
  do
  {
    v15 = 0;
    v16 = v0;
    do
    {
      v627[v15++] = *v16;
      v16 = (v16 + 2 * v2);
    }

    while (v15 != 16);
    for (i = 0; i != 16; ++i)
    {
      v627[i] = vshlq_n_s16(v627[i], 2uLL);
    }

    v18 = 0;
    for (j = 15; j != 7; --j)
    {
      *&v807[v18 * 16] = vqaddq_s16(v627[v18], v627[j]);
      ++v18;
    }

    v20 = 8;
    do
    {
      *&v807[v20 * 16] = vqsubq_s16(v627[j--], v627[v20]);
      ++v20;
    }

    while (j != -1);
    v21 = 0;
    for (k = 112; k != 48; k -= 16)
    {
      *(&v767 + v21) = vqaddq_s16(*&v807[v21], *&v807[k]);
      v21 += 16;
    }

    v23 = 64;
    do
    {
      *(&v767 + v23) = vqsubq_s16(*&v807[k], *&v807[v23]);
      k -= 16;
      v23 += 16;
    }

    while (k != -16);
    v24 = 0;
    v25 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v810.i8, *v4.i8), *v813.i8, *v4.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v810, v4), v813, v4), 0xDuLL);
    v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v810.i8, *v5.i8), *v813.i8, *v4.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v810, v5), v813, v4), 0xDuLL);
    v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v811.i8, *v4.i8), *v812.i8, *v4.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v811, v4), v812, v4), 0xDuLL);
    v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v811.i8, *v5.i8), *v812.i8, *v4.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v811, v5), v812, v4), 0xDuLL);
    v29 = vqaddq_s16(v767, v770);
    v30 = vqaddq_s16(v768, v769);
    v31 = vqsubq_s16(v768, v769);
    v32 = vqsubq_s16(v767, v770);
    v33 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v772.i8, *v4.i8), *v773.i8, *v4.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v772, v4), v773, v4), 0xDuLL);
    v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v772.i8, *v5.i8), *v773.i8, *v4.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v772, v5), v773, v4), 0xDuLL);
    v35 = vqaddq_s16(v808, v28);
    v36 = vqaddq_s16(v809, v26);
    v37 = vqsubq_s16(v809, v26);
    v38 = vqsubq_s16(v808, v28);
    v39 = vqsubq_s16(v815, v27);
    v40 = vqsubq_s16(v814, v25);
    v41 = vqaddq_s16(v814, v25);
    v42 = vqaddq_s16(v815, v27);
    v43 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v30.i8, *v4.i8), *v29.i8, *v4.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v30, v4), v29, v4), 0xDuLL);
    v44 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v30.i8, *v5.i8), *v29.i8, *v4.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v30, v5), v29, v4), 0xDuLL);
    v45 = vmlal_s16(vmull_s16(*v31.i8, *v7.i8), *v32.i8, *v6.i8);
    v46 = vmlal_high_s16(vmull_high_s16(v31, v7), v32, v6);
    v47 = vmlal_s16(vmull_s16(*v31.i8, *v8.i8), *v32.i8, *v7.i8);
    v48 = vmlal_high_s16(vmull_high_s16(v31, v8), v32, v7);
    v49 = vrshrn_high_n_s32(vrshrn_n_s32(v45, 0xDuLL), v46, 0xDuLL);
    v50 = vrshrn_high_n_s32(vrshrn_n_s32(v47, 0xDuLL), v48, 0xDuLL);
    v51 = vqaddq_s16(v771, v34);
    v52 = vqsubq_s16(v771, v34);
    v53 = vqsubq_s16(v774, v33);
    v54 = vqaddq_s16(v774, v33);
    v55 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v36.i8, *v7.i8), *v41.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v36, v7), v41, v6), 0xDuLL);
    v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v36.i8, *v8.i8), *v41.i8, *v7.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v36, v8), v41, v7), 0xDuLL);
    v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v37.i8, *v8.i8), *v40.i8, *v7.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v37, v8), v40, v7), 0xDuLL);
    v58 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v37.i8, *v624.i8), *v40.i8, *v8.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v37, v624), v40, v8), 0xDuLL);
    v59 = vmlal_s16(vmull_s16(*v52.i8, *v616.i8), *v53.i8, *v10.i8);
    v60 = vmlal_high_s16(vmull_high_s16(v52, v616), v53, v10);
    v61 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v52.i8, *v10.i8), *v53.i8, *v618.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v52, v10), v53, v618), 0xDuLL);
    v62 = vrshrn_high_n_s32(vrshrn_n_s32(v59, 0xDuLL), v60, 0xDuLL);
    v63 = vqaddq_s16(v35, v56);
    v64 = vqsubq_s16(v35, v56);
    v65 = vqsubq_s16(v38, v58);
    v66 = vqaddq_s16(v38, v58);
    v67 = vqaddq_s16(v39, v57);
    v68 = vqsubq_s16(v39, v57);
    v69 = vqsubq_s16(v42, v55);
    v70 = vqaddq_s16(v42, v55);
    v627[0] = v43;
    v627[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v63.i8, *v12.i8), *v70.i8, *v11.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v63, v12), v70, v11), 0xDuLL);
    v627[14] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v51.i8, *v620.i8), *v54.i8, *v9.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v51, v620), v54, v9), 0xDuLL);
    v627[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v63.i8, *v13.i8), *v70.i8, *v12.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v63, v13), v70, v12), 0xDuLL);
    v71 = vdupq_n_s16(0x18BDu);
    v72 = vdupq_n_s16(0x1C39u);
    v73 = vdupq_n_s16(0xF16u);
    v74 = vmlal_s16(vmull_s16(*v65.i8, *v73.i8), *v68.i8, *v72.i8);
    v75 = vmlal_high_s16(vmull_high_s16(v65, v73), v68, v72);
    v76 = vdupq_n_s16(0xE3C7u);
    v77 = vmlal_s16(vmull_s16(*v65.i8, *v76.i8), *v68.i8, *v73.i8);
    v78 = vmlal_high_s16(vmull_high_s16(v65, v76), v68, v73);
    v79 = vdupq_n_s16(0x94Au);
    v80 = vdupq_n_s16(0x1E9Fu);
    v81 = vmlal_s16(vmull_s16(*v66.i8, *v80.i8), *v67.i8, *v79.i8);
    v82 = vmlal_high_s16(vmull_high_s16(v66, v80), v67, v79);
    v83 = vdupq_n_s16(0xF6B6u);
    v84 = vmlal_s16(vmull_s16(*v66.i8, *v83.i8), *v67.i8, *v80.i8);
    v85 = vmlal_high_s16(vmull_high_s16(v66, v83), v67, v80);
    v86 = vdupq_n_s16(0xEBB3u);
    v627[8] = v44;
    v627[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v64.i8, *v71.i8), *v69.i8, *v14.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v64, v71), v69, v14), 0xDuLL);
    v627[6] = v62;
    v627[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v64.i8, *v86.i8), *v69.i8, *v71.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v64, v86), v69, v71), 0xDuLL);
    v627[4] = v49;
    v627[5] = vrshrn_high_n_s32(vrshrn_n_s32(v74, 0xDuLL), v75, 0xDuLL);
    v627[10] = v61;
    v627[11] = vrshrn_high_n_s32(vrshrn_n_s32(v77, 0xDuLL), v78, 0xDuLL);
    v627[12] = v50;
    v627[13] = vrshrn_high_n_s32(vrshrn_n_s32(v81, 0xDuLL), v82, 0xDuLL);
    v627[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v51.i8, *v9.i8), *v54.i8, *v622.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v51, v9), v54, v622), 0xDuLL);
    v627[3] = vrshrn_high_n_s32(vrshrn_n_s32(v84, 0xDuLL), v85, 0xDuLL);
    do
    {
      v627[v24] = vrshrq_n_s16(v627[v24], 4uLL);
      ++v24;
    }

    while (v24 != 16);
    v87 = 0;
    v88 = 1;
    do
    {
      v89 = &v627[8 * v87];
      v90 = v89[1];
      v91 = vtrn1q_s16(*v89, v90);
      v92 = vtrn2q_s16(*v89, v90);
      v93 = v89[2];
      v94 = v89[3];
      v95 = vtrn1q_s16(v93, v94);
      v96 = vtrn2q_s16(v93, v94);
      v97 = v89[4];
      v98 = v89[5];
      v99 = vtrn1q_s16(v97, v98);
      v100 = vtrn2q_s16(v97, v98);
      v101 = v89[6];
      v102 = v89[7];
      v103 = vtrn1q_s16(v101, v102);
      v104 = vtrn2q_s16(v101, v102);
      v105 = vtrn1q_s32(v91, v95);
      v106 = vtrn2q_s32(v91, v95);
      v107 = vtrn1q_s32(v92, v96);
      v108 = vtrn2q_s32(v92, v96);
      v109 = vtrn1q_s32(v99, v103);
      v110 = vtrn2q_s32(v99, v103);
      v111 = vtrn1q_s32(v100, v104);
      v112 = vtrn2q_s32(v100, v104);
      v113 = vzip2q_s64(v105, v109);
      v105.i64[1] = v109.i64[0];
      v114 = vzip2q_s64(v107, v111);
      v107.i64[1] = v111.i64[0];
      v115 = vzip2q_s64(v106, v110);
      v106.i64[1] = v110.i64[0];
      v116 = vzip2q_s64(v108, v112);
      v108.i64[1] = v112.i64[0];
      v117 = &v626[1024 * v87 + 128 * v3];
      *v117 = v105;
      v117[1] = v107;
      LOBYTE(v89) = v88;
      v117[2] = v106;
      v117[3] = v108;
      v117[4] = v113;
      v117[5] = v114;
      v117[6] = v115;
      v117[7] = v116;
      v87 = 1;
      v88 = 0;
    }

    while ((v89 & 1) != 0);
    ++v3;
    v0 += 16;
  }

  while (v3 != 8);
  v118 = 0;
  v119 = 1;
  v120 = vdupq_n_s16(0x16A0u);
  v121 = vdupq_n_s16(0xE960u);
  v456 = vneg_f16(0x8888888888888888);
  v625 = v120;
  v623 = v121;
  do
  {
    v122 = 0;
    v123 = v119;
    v124 = 63;
    v125 = &v626[1024 * v118];
    do
    {
      *&v807[v122 * 16] = vqaddq_s16(v125[v122], v125[v124--]);
      ++v122;
    }

    while (v124 != 31);
    v126 = 32;
    do
    {
      *&v807[v126 * 16] = vqsubq_s16(v125[v124--], v125[v126]);
      ++v126;
    }

    while (v124 != -1);
    v127 = 0;
    for (m = 496; m != 240; m -= 16)
    {
      *(&v767 + v127) = vqaddq_s16(*&v807[v127], *&v807[m]);
      v127 += 16;
    }

    v129 = 256;
    do
    {
      *(&v767 + v129) = vqsubq_s16(*&v807[m], *&v807[v129]);
      m -= 16;
      v129 += 16;
    }

    while (m != -16);
    v130 = 0;
    v806 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v816.i8, *v120.i8), *v831.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v816, v120), v831, v120), 0xDuLL);
    v805 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v817.i8, *v120.i8), *v830.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v817, v120), v830, v120), 0xDuLL);
    v791 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v816.i8, *v121.i8), *v831.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v816, v121), v831, v120), 0xDuLL);
    v792 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v817.i8, *v121.i8), *v830.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v817, v121), v830, v120), 0xDuLL);
    v804 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v818.i8, *v120.i8), *v829.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v818, v120), v829, v120), 0xDuLL);
    v803 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v819.i8, *v120.i8), *v828.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v819, v120), v828, v120), 0xDuLL);
    v793 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v818.i8, *v121.i8), *v829.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v818, v121), v829, v120), 0xDuLL);
    v794 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v819.i8, *v121.i8), *v828.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v819, v121), v828, v120), 0xDuLL);
    v802 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v820.i8, *v120.i8), *v827.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v820, v120), v827, v120), 0xDuLL);
    v801 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v821.i8, *v120.i8), *v826.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v821, v120), v826, v120), 0xDuLL);
    v795 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v820.i8, *v121.i8), *v827.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v820, v121), v827, v120), 0xDuLL);
    v796 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v821.i8, *v121.i8), *v826.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v821, v121), v826, v120), 0xDuLL);
    v800 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v822.i8, *v120.i8), *v825.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v822, v120), v825, v120), 0xDuLL);
    v799 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v823.i8, *v120.i8), *v824.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v823, v120), v824, v120), 0xDuLL);
    v797 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v822.i8, *v121.i8), *v825.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v822, v121), v825, v120), 0xDuLL);
    v798 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v823.i8, *v121.i8), *v824.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v823, v121), v824, v120), 0xDuLL);
    for (n = 240; n != 112; n -= 16)
    {
      *&v726[v130] = vqaddq_s16(*(&v767 + v130), *(&v767 + n));
      v130 += 16;
    }

    v132 = 128;
    do
    {
      *&v726[v132] = vqsubq_s16(*(&v767 + n), *(&v767 + v132));
      n -= 16;
      v132 += 16;
    }

    while (n != -16);
    v735 = v775;
    v736 = v776;
    v737 = v777;
    v738 = v778;
    v746 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v779.i8, *v120.i8), *v786.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v779, v120), v786, v120), 0xDuLL);
    v745 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v780.i8, *v120.i8), *v785.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v780, v120), v785, v120), 0xDuLL);
    v739 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v779.i8, *v121.i8), *v786.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v779, v121), v786, v120), 0xDuLL);
    v740 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v780.i8, *v121.i8), *v785.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v780, v121), v785, v120), 0xDuLL);
    v744 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v781.i8, *v120.i8), *v784.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v781, v120), v784, v120), 0xDuLL);
    v743 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v782.i8, *v120.i8), *v783.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v782, v120), v783, v120), 0xDuLL);
    v741 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v781.i8, *v121.i8), *v784.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v781, v121), v784, v120), 0xDuLL);
    v742 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v782.i8, *v121.i8), *v783.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v782, v121), v783, v120), 0xDuLL);
    v747 = v787;
    v748 = v788;
    v749 = v789;
    v750 = v790;
    v133 = 512;
    for (ii = 752; ii != 624; ii -= 16)
    {
      *&v726[v133] = vqaddq_s16(*&v807[v133], *(&v767 + ii));
      v133 += 16;
    }

    v135 = 640;
    do
    {
      *&v726[v135] = vqsubq_s16(*&v807[ii], *(&v767 + v135));
      ii -= 16;
      v135 += 16;
    }

    while (ii != 496);
    v136 = 768;
    for (jj = 1008; jj != 880; jj -= 16)
    {
      *&v726[v136] = vqsubq_s16(*&v807[jj], *(&v767 + v136));
      v136 += 16;
    }

    v138 = 880;
    for (kk = 896; kk != 1024; kk += 16)
    {
      *&v726[kk] = vqaddq_s16(*&v807[kk], *(&v767 + v138));
      v138 -= 16;
    }

    v140 = 0;
    for (mm = 112; mm != 48; mm -= 16)
    {
      *(&v682 + v140) = vqaddq_s16(*&v726[v140], *&v726[mm]);
      v140 += 16;
    }

    v142 = 64;
    do
    {
      *(&v682 + v142) = vqsubq_s16(*&v726[mm], *&v726[v142]);
      mm -= 16;
      v142 += 16;
    }

    while (mm != -16);
    v693 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v729.i8, *v120.i8), *v732.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v729, v120), v732, v120), 0xDuLL);
    v692 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v730.i8, *v120.i8), *v731.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v730, v120), v731, v120), 0xDuLL);
    v690 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v729.i8, *v121.i8), *v732.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v729, v121), v732, v120), 0xDuLL);
    v691 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v730.i8, *v121.i8), *v731.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v730, v121), v731, v120), 0xDuLL);
    v143 = 256;
    for (nn = 368; nn != 304; nn -= 16)
    {
      *(&v682 + v143) = vqaddq_s16(*&v726[v143], *&v726[nn]);
      v143 += 16;
    }

    v145 = 320;
    do
    {
      *(&v682 + v145) = vqsubq_s16(*&v726[nn], *&v726[v145]);
      nn -= 16;
      v145 += 16;
    }

    while (nn != 240);
    v146 = 384;
    for (i1 = 496; i1 != 432; i1 -= 16)
    {
      *(&v682 + v146) = vqsubq_s16(*&v726[i1], *&v726[v146]);
      v146 += 16;
    }

    v148 = 432;
    for (i2 = 448; i2 != 512; i2 += 16)
    {
      *(&v682 + i2) = vqaddq_s16(*&v726[i2], *&v726[v148]);
      v148 -= 16;
    }

    v150 = vdupq_n_s16(0x1D90u);
    v151 = vdupq_n_s16(0xC3Eu);
    v152 = vdupq_n_s16(0xE270u);
    v725 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v751.i8, *v151.i8), *v766.i8, *v150.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v751, v151), v766, v150), 0xDuLL);
    v724 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v752.i8, *v151.i8), *v765.i8, *v150.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v752, v151), v765, v150), 0xDuLL);
    v710 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v751.i8, *v152.i8), *v766.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v751, v152), v766, v151), 0xDuLL);
    v711 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v752.i8, *v152.i8), *v765.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v752, v152), v765, v151), 0xDuLL);
    v723 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v753.i8, *v151.i8), *v764.i8, *v150.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v753, v151), v764, v150), 0xDuLL);
    v722 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v754.i8, *v151.i8), *v763.i8, *v150.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v754, v151), v763, v150), 0xDuLL);
    v712 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v753.i8, *v152.i8), *v764.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v753, v152), v764, v151), 0xDuLL);
    v713 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v754.i8, *v152.i8), *v763.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v754, v152), v763, v151), 0xDuLL);
    v153 = vdupq_n_s16(0xF3C2u);
    v721 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v755.i8, *v152.i8), *v762.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v755, v152), v762, v151), 0xDuLL);
    v720 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v756.i8, *v152.i8), *v761.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v756, v152), v761, v151), 0xDuLL);
    v714 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v755.i8, *v153.i8), *v762.i8, *v152.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v755, v153), v762, v152), 0xDuLL);
    v715 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v756.i8, *v153.i8), *v761.i8, *v152.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v756, v153), v761, v152), 0xDuLL);
    v719 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v757.i8, *v152.i8), *v760.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v757, v152), v760, v151), 0xDuLL);
    v718 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v758.i8, *v152.i8), *v759.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v758, v152), v759, v151), 0xDuLL);
    v716 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v757.i8, *v153.i8), *v760.i8, *v152.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v757, v153), v760, v152), 0xDuLL);
    v717 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v758.i8, *v153.i8), *v759.i8, *v152.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v758, v153), v759, v152), 0xDuLL);
    v628 = vqaddq_s16(v682, v685);
    v629 = vqaddq_s16(v683, v684);
    v630 = vqsubq_s16(v683, v684);
    v631 = vqsubq_s16(v682, v685);
    v633 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v687.i8, *v120.i8), *v688.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v687, v120), v688, v120), 0xDuLL);
    v632 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v687.i8, *v121.i8), *v688.i8, *v120.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v687, v121), v688, v120), 0xDuLL);
    v634 = vqaddq_s16(v727, v691);
    v635 = vqaddq_s16(v728, v690);
    v636 = vqsubq_s16(v728, v690);
    v637 = vqsubq_s16(v727, v691);
    v638 = vqsubq_s16(v734, v692);
    v639 = vqsubq_s16(v733, v693);
    v640 = vqaddq_s16(v733, v693);
    v641 = vqaddq_s16(v734, v692);
    v649 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v696.i8, *v151.i8), *v707.i8, *v150.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v696, v151), v707, v150), 0xDuLL);
    v648 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v697.i8, *v151.i8), *v706.i8, *v150.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v697, v151), v706, v150), 0xDuLL);
    v642 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v696.i8, *v152.i8), *v707.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v696, v152), v707, v151), 0xDuLL);
    v643 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v697.i8, *v152.i8), *v706.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v697, v152), v706, v151), 0xDuLL);
    v647 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v698.i8, *v152.i8), *v705.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v698, v152), v705, v151), 0xDuLL);
    v646 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v699.i8, *v152.i8), *v704.i8, *v151.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v699, v152), v704, v151), 0xDuLL);
    v644 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v698.i8, *v153.i8), *v705.i8, *v152.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v698, v153), v705, v152), 0xDuLL);
    v645 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v699.i8, *v153.i8), *v704.i8, *v152.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v699, v153), v704, v152), 0xDuLL);
    v154 = 512;
    for (i3 = 624; i3 != 560; i3 -= 16)
    {
      *(&v628 + v154) = vqaddq_s16(*&v726[v154], *(&v682 + i3));
      v154 += 16;
    }

    v156 = 576;
    do
    {
      *(&v628 + v156) = vqsubq_s16(*&v726[i3], *(&v682 + v156));
      i3 -= 16;
      v156 += 16;
    }

    while (i3 != 496);
    v157 = 640;
    for (i4 = 752; i4 != 688; i4 -= 16)
    {
      *(&v628 + v157) = vqsubq_s16(*&v726[i4], *(&v682 + v157));
      v157 += 16;
    }

    v159 = 688;
    for (i5 = 704; i5 != 768; i5 += 16)
    {
      *(&v628 + i5) = vqaddq_s16(*&v726[i5], *(&v682 + v159));
      v159 -= 16;
    }

    v161 = 768;
    for (i6 = 880; i6 != 816; i6 -= 16)
    {
      *(&v628 + v161) = vqaddq_s16(*&v726[v161], *(&v682 + i6));
      v161 += 16;
    }

    v163 = 832;
    do
    {
      *(&v628 + v163) = vqsubq_s16(*&v726[i6], *(&v682 + v163));
      i6 -= 16;
      v163 += 16;
    }

    while (i6 != 752);
    v164 = 896;
    for (i7 = 1008; i7 != 944; i7 -= 16)
    {
      *(&v628 + v164) = vqsubq_s16(*&v726[i7], *(&v682 + v164));
      v164 += 16;
    }

    v166 = 944;
    for (i8 = 960; i8 != 1024; i8 += 16)
    {
      *(&v628 + i8) = vqaddq_s16(*&v726[i8], *(&v682 + v166));
      v166 -= 16;
    }

    v168 = 0;
    v621 = vmlal_s16(vmull_s16(*v630.i8, *v151.i8), *v631.i8, *v150.i8);
    v619 = vmlal_high_s16(vmull_high_s16(v630, v151), v631, v150);
    v617 = vmlal_s16(vmull_s16(*v630.i8, *v152.i8), *v631.i8, *v151.i8);
    v615 = vmlal_high_s16(vmull_high_s16(v630, v152), v631, v151);
    v169 = vmlal_s16(vmull_s16(*v635.i8, *v151.i8), *v640.i8, *v150.i8);
    v170 = vmlal_high_s16(vmull_high_s16(v635, v151), v640, v150);
    v171 = vmlal_s16(vmull_s16(*v635.i8, *v152.i8), *v640.i8, *v151.i8);
    v172 = vmlal_high_s16(vmull_high_s16(v635, v152), v640, v151);
    v173 = vqaddq_s16(v695, v642);
    v174 = vqsubq_s16(v695, v642);
    v175 = vqsubq_s16(v708, v649);
    v176 = vdupq_n_s16(0x1F62u);
    v177 = vdupq_n_s16(0x63Eu);
    v572 = vmlal_s16(vmull_s16(*v636.i8, *v152.i8), *v639.i8, *v151.i8);
    v178 = vqaddq_s16(v708, v649);
    v179 = vdupq_n_s16(0xE09Eu);
    v570 = vmlal_high_s16(vmull_high_s16(v636, v152), v639, v151);
    v568 = vmlal_s16(vmull_s16(*v636.i8, *v153.i8), *v639.i8, *v152.i8);
    v566 = vmlal_high_s16(vmull_high_s16(v636, v153), v639, v152);
    v180 = vmlal_s16(vmull_s16(*v652.i8, *v177.i8), *v679.i8, *v176.i8);
    v181 = vmlal_high_s16(vmull_high_s16(v652, v177), v679, v176);
    v182 = vmlal_s16(vmull_s16(*v652.i8, *v179.i8), *v679.i8, *v177.i8);
    v183 = vmlal_high_s16(vmull_high_s16(v652, v179), v679, v177);
    v560 = vmlal_s16(vmull_s16(*v653.i8, *v177.i8), *v678.i8, *v176.i8);
    v556 = vmlal_high_s16(vmull_high_s16(v653, v177), v678, v176);
    v554 = vmlal_s16(vmull_s16(*v653.i8, *v179.i8), *v678.i8, *v177.i8);
    v551 = vmlal_high_s16(vmull_high_s16(v653, v179), v678, v177);
    v580 = vmlal_s16(vmull_s16(*v654.i8, *v179.i8), *v677.i8, *v177.i8);
    v578 = vmlal_high_s16(vmull_high_s16(v654, v179), v677, v177);
    v184 = vdupq_n_s16(0xF9C2u);
    v576 = vmlal_s16(vmull_s16(*v654.i8, *v184.i8), *v677.i8, *v179.i8);
    v574 = vmlal_high_s16(vmull_high_s16(v654, v184), v677, v179);
    v185 = vmlal_s16(vmull_s16(*v655.i8, *v179.i8), *v676.i8, *v177.i8);
    v186 = vmlal_high_s16(vmull_high_s16(v655, v179), v676, v177);
    v187 = vmlal_s16(vmull_s16(*v655.i8, *v184.i8), *v676.i8, *v179.i8);
    v188 = vmlal_high_s16(vmull_high_s16(v655, v184), v676, v179);
    v189 = vqaddq_s16(v686, v632);
    v190 = vqaddq_s16(v689, v633);
    v614 = vmlal_s16(vmull_s16(*v189.i8, *v177.i8), *v190.i8, *v176.i8);
    v613 = vmlal_high_s16(vmull_high_s16(v189, v177), v190, v176);
    v612 = vmlal_s16(vmull_s16(*v189.i8, *v179.i8), *v190.i8, *v177.i8);
    v611 = vmlal_high_s16(vmull_high_s16(v189, v179), v190, v177);
    v584 = vmlal_s16(vmull_s16(*v173.i8, *v177.i8), *v178.i8, *v176.i8);
    v582 = vmlal_high_s16(vmull_high_s16(v173, v177), v178, v176);
    v558 = vmlal_s16(vmull_s16(*v173.i8, *v179.i8), *v178.i8, *v177.i8);
    v191 = vmlal_high_s16(vmull_high_s16(v173, v179), v178, v177);
    v541 = vmlal_s16(vmull_s16(*v174.i8, *v179.i8), *v175.i8, *v177.i8);
    v539 = vmlal_high_s16(vmull_high_s16(v174, v179), v175, v177);
    v535 = vmlal_high_s16(vmull_high_s16(v174, v184), v175, v179);
    v537 = vmlal_s16(vmull_s16(*v174.i8, *v184.i8), *v175.i8, *v179.i8);
    v192 = vqsubq_s16(v686, v632);
    v193 = vqsubq_s16(v689, v633);
    v194 = vqsubq_s16(v700, v645);
    v195 = vqaddq_s16(v700, v645);
    v196 = vqaddq_s16(v703, v646);
    v197 = vqsubq_s16(v703, v646);
    v198 = vdupq_n_s16(0x11C8u);
    v199 = vdupq_n_s16(0x1A9Cu);
    v200 = vmlal_s16(vmull_s16(*v660.i8, *v199.i8), *v671.i8, *v198.i8);
    v201 = vmlal_high_s16(vmull_high_s16(v660, v199), v671, v198);
    v202 = vdupq_n_s16(0xEE38u);
    v203 = vmlal_s16(vmull_s16(*v660.i8, *v202.i8), *v671.i8, *v199.i8);
    v204 = vmlal_high_s16(vmull_high_s16(v660, v202), v671, v199);
    v594 = vmlal_s16(vmull_s16(*v661.i8, *v199.i8), *v670.i8, *v198.i8);
    v592 = vmlal_high_s16(vmull_high_s16(v661, v199), v670, v198);
    v590 = vmlal_s16(vmull_s16(*v661.i8, *v202.i8), *v670.i8, *v199.i8);
    v588 = vmlal_high_s16(vmull_high_s16(v661, v202), v670, v199);
    v602 = vmlal_s16(vmull_s16(*v662.i8, *v202.i8), *v669.i8, *v199.i8);
    v205 = vdupq_n_s16(0xE564u);
    v600 = vmlal_high_s16(vmull_high_s16(v662, v202), v669, v199);
    v598 = vmlal_s16(vmull_s16(*v662.i8, *v205.i8), *v669.i8, *v202.i8);
    v596 = vmlal_high_s16(vmull_high_s16(v662, v205), v669, v202);
    v206 = vmlal_s16(vmull_s16(*v663.i8, *v202.i8), *v668.i8, *v199.i8);
    v207 = vmlal_high_s16(vmull_high_s16(v663, v202), v668, v199);
    v208 = vmlal_s16(vmull_s16(*v663.i8, *v205.i8), *v668.i8, *v202.i8);
    v209 = vmlal_high_s16(vmull_high_s16(v663, v205), v668, v202);
    v608 = vmlal_s16(vmull_s16(*v192.i8, *v199.i8), *v193.i8, *v198.i8);
    v607 = vmlal_high_s16(vmull_high_s16(v192, v199), v193, v198);
    v606 = vmlal_s16(vmull_s16(*v192.i8, *v202.i8), *v193.i8, *v199.i8);
    v605 = vmlal_high_s16(vmull_high_s16(v192, v202), v193, v199);
    v533 = vmlal_s16(vmull_s16(*v194.i8, *v199.i8), *v197.i8, *v198.i8);
    v531 = vmlal_high_s16(vmull_high_s16(v194, v199), v197, v198);
    v529 = vmlal_s16(vmull_s16(*v194.i8, *v202.i8), *v197.i8, *v199.i8);
    v527 = vmlal_high_s16(vmull_high_s16(v194, v202), v197, v199);
    v545 = vmlal_s16(vmull_s16(*v195.i8, *v202.i8), *v196.i8, *v199.i8);
    v543 = vmlal_high_s16(vmull_high_s16(v195, v202), v196, v199);
    v521 = vmlal_high_s16(vmull_high_s16(v195, v205), v196, v202);
    v523 = vmlal_s16(vmull_s16(*v195.i8, *v205.i8), *v196.i8, *v202.i8);
    v210 = vrshrn_high_n_s32(vrshrn_n_s32(v169, 0xDuLL), v170, 0xDuLL);
    v211 = vrshrn_high_n_s32(vrshrn_n_s32(v171, 0xDuLL), v172, 0xDuLL);
    v212 = vrshrn_high_n_s32(vrshrn_n_s32(v180, 0xDuLL), v181, 0xDuLL);
    v213 = vrshrn_high_n_s32(vrshrn_n_s32(v182, 0xDuLL), v183, 0xDuLL);
    v214 = vqaddq_s16(v651, v213);
    v215 = vqsubq_s16(v651, v213);
    v216 = vqsubq_s16(v680, v212);
    v217 = vqaddq_s16(v680, v212);
    v218 = vqaddq_s16(v634, v211);
    v219 = vdupq_n_s16(0x1FD8u);
    v220 = vqaddq_s16(v641, v210);
    v221 = vdupq_n_s16(0x322u);
    v478 = vmlal_s16(vmull_s16(*v218.i8, *v221.i8), *v220.i8, *v219.i8);
    v604 = vmlal_high_s16(vmull_high_s16(v218, v221), v220, v219);
    v222 = vdupq_n_s16(0xE028u);
    v610 = vmlal_s16(vmull_s16(*v218.i8, *v222.i8), *v220.i8, *v221.i8);
    v609 = vmlal_high_s16(vmull_high_s16(v218, v222), v220, v221);
    v223 = vmlal_s16(vmull_s16(*v214.i8, *v221.i8), *v217.i8, *v219.i8);
    v224 = vmlal_high_s16(vmull_high_s16(v214, v221), v217, v219);
    v225 = vmlal_s16(vmull_s16(*v214.i8, *v222.i8), *v217.i8, *v221.i8);
    v226 = vmlal_high_s16(vmull_high_s16(v214, v222), v217, v221);
    v227 = vmlal_s16(vmull_s16(*v215.i8, *v222.i8), *v216.i8, *v221.i8);
    v228 = vmlal_high_s16(vmull_high_s16(v215, v222), v216, v221);
    v229 = vdupq_n_s16(0xFCDEu);
    v230 = vmlal_s16(vmull_s16(*v215.i8, *v229.i8), *v216.i8, *v222.i8);
    v231 = vmlal_high_s16(vmull_high_s16(v215, v229), v216, v222);
    v232 = vrshrn_high_n_s32(vrshrn_n_s32(v185, 0xDuLL), v186, 0xDuLL);
    v233 = vrshrn_high_n_s32(vrshrn_n_s32(v187, 0xDuLL), v188, 0xDuLL);
    v234 = vqsubq_s16(v634, v211);
    v235 = vqsubq_s16(v641, v210);
    v236 = vqsubq_s16(v656, v233);
    v237 = vqaddq_s16(v656, v233);
    v238 = vqaddq_s16(v675, v232);
    v239 = vqsubq_s16(v675, v232);
    v240 = vdupq_n_s16(0x144Cu);
    v241 = vdupq_n_s16(0x18BCu);
    v242 = vmlal_s16(vmull_s16(*v234.i8, *v241.i8), *v235.i8, *v240.i8);
    v243 = vmlal_high_s16(vmull_high_s16(v234, v241), v235, v240);
    v244 = vdupq_n_s16(0xEBB4u);
    v587 = vmlal_s16(vmull_s16(*v234.i8, *v244.i8), *v235.i8, *v241.i8);
    v586 = vmlal_high_s16(vmull_high_s16(v234, v244), v235, v241);
    v476 = vmlal_s16(vmull_s16(*v236.i8, *v241.i8), *v239.i8, *v240.i8);
    v245 = vmlal_high_s16(vmull_high_s16(v236, v241), v239, v240);
    v246 = vmlal_s16(vmull_s16(*v236.i8, *v244.i8), *v239.i8, *v241.i8);
    v247 = vmlal_high_s16(vmull_high_s16(v236, v244), v239, v241);
    v493 = vmlal_s16(vmull_s16(*v237.i8, *v244.i8), *v238.i8, *v241.i8);
    v491 = vmlal_high_s16(vmull_high_s16(v237, v244), v238, v241);
    v248 = vdupq_n_s16(0xE744u);
    v485 = vmlal_high_s16(vmull_high_s16(v237, v248), v238, v244);
    v487 = vmlal_s16(vmull_s16(*v237.i8, *v248.i8), *v238.i8, *v244.i8);
    v249 = vrshrn_high_n_s32(vrshrn_n_s32(v572, 0xDuLL), v570, 0xDuLL);
    v250 = vrshrn_high_n_s32(vrshrn_n_s32(v568, 0xDuLL), v566, 0xDuLL);
    v251 = vrshrn_high_n_s32(vrshrn_n_s32(v200, 0xDuLL), v201, 0xDuLL);
    v252 = vrshrn_high_n_s32(vrshrn_n_s32(v203, 0xDuLL), v204, 0xDuLL);
    v253 = vqaddq_s16(v659, v252);
    v254 = vqsubq_s16(v659, v252);
    v255 = vqsubq_s16(v672, v251);
    v256 = vqaddq_s16(v672, v251);
    v257 = vqsubq_s16(v637, v250);
    v258 = vqsubq_s16(v638, v249);
    v259 = vdupq_n_s16(0x1C38u);
    v260 = vdupq_n_s16(0xF16u);
    v573 = vmlal_s16(vmull_s16(*v257.i8, *v260.i8), *v258.i8, *v259.i8);
    v571 = vmlal_high_s16(vmull_high_s16(v257, v260), v258, v259);
    v261 = vdupq_n_s16(0xE3C8u);
    v569 = vmlal_s16(vmull_s16(*v257.i8, *v261.i8), *v258.i8, *v260.i8);
    v567 = vmlal_high_s16(vmull_high_s16(v257, v261), v258, v260);
    v501 = vmlal_s16(vmull_s16(*v253.i8, *v260.i8), *v256.i8, *v259.i8);
    v499 = vmlal_high_s16(vmull_high_s16(v253, v260), v256, v259);
    v497 = vmlal_s16(vmull_s16(*v253.i8, *v261.i8), *v256.i8, *v260.i8);
    v495 = vmlal_high_s16(vmull_high_s16(v253, v261), v256, v260);
    v262 = vmlal_s16(vmull_s16(*v254.i8, *v261.i8), *v255.i8, *v260.i8);
    v513 = vmlal_high_s16(vmull_high_s16(v254, v261), v255, v260);
    v263 = vdupq_n_s16(0xF0EAu);
    v507 = vmlal_high_s16(vmull_high_s16(v254, v263), v255, v261);
    v509 = vmlal_s16(vmull_s16(*v254.i8, *v263.i8), *v255.i8, *v261.i8);
    v264 = vrshrn_high_n_s32(vrshrn_n_s32(v206, 0xDuLL), v207, 0xDuLL);
    v265 = vrshrn_high_n_s32(vrshrn_n_s32(v208, 0xDuLL), v209, 0xDuLL);
    v266 = vqaddq_s16(v637, v250);
    v267 = vqaddq_s16(v638, v249);
    v268 = vqsubq_s16(v664, v265);
    v269 = vqaddq_s16(v664, v265);
    v270 = vqaddq_s16(v667, v264);
    v271 = vdupq_n_s16(0x94Au);
    v272 = vdupq_n_s16(0x1EA0u);
    v273 = vqsubq_s16(v667, v264);
    v565 = vmlal_s16(vmull_s16(*v266.i8, *v272.i8), *v267.i8, *v271.i8);
    v274 = vdupq_n_s16(0xF6B6u);
    v564 = vmlal_high_s16(vmull_high_s16(v266, v272), v267, v271);
    v563 = vmlal_s16(vmull_s16(*v266.i8, *v274.i8), *v267.i8, *v272.i8);
    v562 = vmlal_high_s16(vmull_high_s16(v266, v274), v267, v272);
    v511 = vmlal_s16(vmull_s16(*v268.i8, *v272.i8), *v273.i8, *v271.i8);
    v506 = vmlal_high_s16(vmull_high_s16(v268, v272), v273, v271);
    v504 = vmlal_s16(vmull_s16(*v268.i8, *v274.i8), *v273.i8, *v272.i8);
    v503 = vmlal_high_s16(vmull_high_s16(v268, v274), v273, v272);
    v275 = vmlal_s16(vmull_s16(*v269.i8, *v274.i8), *v270.i8, *v272.i8);
    v276 = vdupq_n_s16(0xE160u);
    v277 = vmlal_high_s16(vmull_high_s16(v269, v274), v270, v272);
    v278 = vmlal_s16(vmull_s16(*v269.i8, *v276.i8), *v270.i8, *v274.i8);
    v279 = vmlal_high_s16(vmull_high_s16(v269, v276), v270, v274);
    v280 = vrshrn_high_n_s32(vrshrn_n_s32(v584, 0xDuLL), v582, 0xDuLL);
    v281 = vrshrn_high_n_s32(vrshrn_n_s32(v558, 0xDuLL), v191, 0xDuLL);
    v282 = vqaddq_s16(v694, v643);
    v283 = vqaddq_s16(v709, v648);
    v284 = vqaddq_s16(v282, v281);
    v285 = vdupq_n_s16(0x1FF6u);
    v286 = vqaddq_s16(v283, v280);
    v287 = vdupq_n_s16(0x192u);
    v559 = vmlal_s16(vmull_s16(*v284.i8, *v287.i8), *v286.i8, *v285.i8);
    v553 = vmlal_high_s16(vmull_high_s16(v284, v287), v286, v285);
    v288 = vdupq_n_s16(0xE00Au);
    v585 = vmlal_s16(vmull_s16(*v284.i8, *v288.i8), *v286.i8, *v287.i8);
    v583 = vmlal_high_s16(vmull_high_s16(v284, v288), v286, v287);
    v289 = vqsubq_s16(v282, v281);
    v290 = vdupq_n_s16(0x157Eu);
    v291 = vdupq_n_s16(0x17B6u);
    v292 = vqsubq_s16(v283, v280);
    v550 = vmlal_s16(vmull_s16(*v289.i8, *v291.i8), *v292.i8, *v290.i8);
    v293 = vdupq_n_s16(0xEA82u);
    v549 = vmlal_high_s16(vmull_high_s16(v289, v291), v292, v290);
    v548 = vmlal_s16(vmull_s16(*v289.i8, *v293.i8), *v292.i8, *v291.i8);
    v547 = vmlal_high_s16(vmull_high_s16(v289, v293), v292, v291);
    v294 = vqsubq_s16(v694, v643);
    v295 = vqsubq_s16(v709, v648);
    v296 = vrshrn_high_n_s32(vrshrn_n_s32(v541, 0xDuLL), v539, 0xDuLL);
    v297 = vrshrn_high_n_s32(vrshrn_n_s32(v537, 0xDuLL), v535, 0xDuLL);
    v298 = vqsubq_s16(v294, v297);
    v299 = vqsubq_s16(v295, v296);
    v300 = vdupq_n_s16(0x1CEEu);
    v301 = vdupq_n_s16(0xDAEu);
    v538 = vmlal_s16(vmull_s16(*v298.i8, *v301.i8), *v299.i8, *v300.i8);
    v536 = vmlal_high_s16(vmull_high_s16(v298, v301), v299, v300);
    v302 = vdupq_n_s16(0xE312u);
    v525 = vmlal_high_s16(vmull_high_s16(v298, v302), v299, v301);
    v526 = vmlal_s16(vmull_s16(*v298.i8, *v302.i8), *v299.i8, *v301.i8);
    v303 = vqaddq_s16(v294, v297);
    v304 = vdupq_n_s16(0xF538u);
    v305 = vqaddq_s16(v295, v296);
    v306 = vmull_s16(*v303.i8, *v304.i8);
    v307 = vmull_high_s16(v303, v304);
    v308 = vdupq_n_s16(0x1E22u);
    v517 = vmlal_high_s16(v307, v305, v308);
    v518 = vmlal_s16(v306, *v305.i8, *v308.i8);
    v309 = vrshrn_high_n_s32(vrshrn_n_s32(v533, 0xDuLL), v531, 0xDuLL);
    v310 = vrshrn_high_n_s32(vrshrn_n_s32(v529, 0xDuLL), v527, 0xDuLL);
    v311 = vqsubq_s16(v701, v644);
    v312 = vqsubq_s16(v702, v647);
    v313 = vqaddq_s16(v311, v310);
    v314 = vqaddq_s16(v312, v309);
    v315 = vdupq_n_s16(0x1F0Au);
    v316 = vdupq_n_s16(0x7C6u);
    v516 = vmlal_s16(vmull_s16(*v313.i8, *v316.i8), *v314.i8, *v315.i8);
    v515 = vmlal_high_s16(vmull_high_s16(v313, v316), v314, v315);
    v317 = vdupq_n_s16(0xE0F6u);
    v540 = vmlal_high_s16(vmull_high_s16(v313, v317), v314, v316);
    v542 = vmlal_s16(vmull_s16(*v313.i8, *v317.i8), *v314.i8, *v316.i8);
    v318 = vqsubq_s16(v311, v310);
    v319 = vdupq_n_s16(0x1074u);
    v320 = vqsubq_s16(v312, v309);
    v321 = vdupq_n_s16(0x1B72u);
    v532 = vmlal_s16(vmull_s16(*v318.i8, *v321.i8), *v320.i8, *v319.i8);
    v528 = vmlal_high_s16(vmull_high_s16(v318, v321), v320, v319);
    v322 = vdupq_n_s16(0xEF8Cu);
    v534 = vmlal_s16(vmull_s16(*v318.i8, *v322.i8), *v320.i8, *v321.i8);
    v530 = vmlal_high_s16(vmull_high_s16(v318, v322), v320, v321);
    v323 = vqaddq_s16(v701, v644);
    v324 = vqaddq_s16(v702, v647);
    v325 = vrshrn_high_n_s32(vrshrn_n_s32(v545, 0xDuLL), v543, 0xDuLL);
    v326 = vrshrn_high_n_s32(vrshrn_n_s32(v523, 0xDuLL), v521, 0xDuLL);
    v327 = vqsubq_s16(v323, v326);
    v328 = vdupq_n_s16(0x19B4u);
    v329 = vdupq_n_s16(0x1310u);
    v330 = vqsubq_s16(v324, v325);
    v524 = vmlal_s16(vmull_s16(*v327.i8, *v329.i8), *v330.i8, *v328.i8);
    v331 = vdupq_n_s16(0xE64Cu);
    v522 = vmlal_s16(vmull_s16(*v327.i8, *v331.i8), *v330.i8, *v329.i8);
    v519 = vmlal_high_s16(vmull_high_s16(v327, v329), v330, v328);
    v520 = vmlal_high_s16(vmull_high_s16(v327, v331), v330, v329);
    v332 = vqaddq_s16(v323, v326);
    v333 = vqaddq_s16(v324, v325);
    v334 = vdupq_n_s16(0x4B2u);
    v335 = vdupq_n_s16(0x1FA8u);
    v546 = vmlal_s16(vmull_s16(*v332.i8, *v335.i8), *v333.i8, *v334.i8);
    v544 = vmlal_high_s16(vmull_high_s16(v332, v335), v333, v334);
    v336 = vdupq_n_s16(0xFB4Eu);
    v489 = vmlal_high_s16(vmull_high_s16(v332, v336), v333, v335);
    v490 = vmlal_s16(vmull_s16(*v332.i8, *v336.i8), *v333.i8, *v335.i8);
    v337 = vrshrn_high_n_s32(vrshrn_n_s32(v560, 0xDuLL), v556, 0xDuLL);
    v338 = vrshrn_high_n_s32(vrshrn_n_s32(v554, 0xDuLL), v551, 0xDuLL);
    v473 = vrshrn_high_n_s32(vrshrn_n_s32(v223, 0xDuLL), v224, 0xDuLL);
    v483 = vrshrn_high_n_s32(vrshrn_n_s32(v225, 0xDuLL), v226, 0xDuLL);
    v482 = vqaddq_s16(v650, v338);
    v472 = vqaddq_s16(v681, v337);
    v339 = vqsubq_s16(v482, v483);
    v340 = vdupq_n_s16(0x1610u);
    v341 = vqsubq_s16(v472, v473);
    v342 = vdupq_n_s16(0x172Eu);
    v561 = vmlal_s16(vmull_s16(*v339.i8, *v342.i8), *v341.i8, *v340.i8);
    v557 = vmlal_high_s16(vmull_high_s16(v339, v342), v341, v340);
    v343 = vdupq_n_s16(0xE9F0u);
    v555 = vmlal_s16(vmull_s16(*v339.i8, *v343.i8), *v341.i8, *v342.i8);
    v552 = vmlal_high_s16(vmull_high_s16(v339, v343), v341, v342);
    v344 = vqsubq_s16(v650, v338);
    v345 = vqsubq_s16(v681, v337);
    v346 = vrshrn_high_n_s32(vrshrn_n_s32(v227, 0xDuLL), v228, 0xDuLL);
    v347 = vrshrn_high_n_s32(vrshrn_n_s32(v230, 0xDuLL), v231, 0xDuLL);
    v348 = vqsubq_s16(v344, v347);
    v349 = vdupq_n_s16(0x1D42u);
    v350 = vdupq_n_s16(0xCF8u);
    v351 = vqsubq_s16(v345, v346);
    v475 = vmlal_s16(vmull_s16(*v348.i8, *v350.i8), *v351.i8, *v349.i8);
    v352 = vdupq_n_s16(0xE2BEu);
    v474 = vmlal_high_s16(vmull_high_s16(v348, v350), v351, v349);
    v484 = vmlal_s16(vmull_s16(*v348.i8, *v352.i8), *v351.i8, *v350.i8);
    v481 = vmlal_high_s16(vmull_high_s16(v348, v352), v351, v350);
    v353 = vqaddq_s16(v344, v347);
    v354 = vqaddq_s16(v345, v346);
    v355 = vdupq_n_s16(0xB84u);
    v356 = vdupq_n_s16(0x1DDCu);
    v480 = vmlal_s16(vmull_s16(*v353.i8, *v356.i8), *v354.i8, *v355.i8);
    v479 = vmlal_high_s16(vmull_high_s16(v353, v356), v354, v355);
    v357 = vdupq_n_s16(0xF47Cu);
    v470 = vmlal_high_s16(vmull_high_s16(v353, v357), v354, v356);
    v471 = vmlal_s16(vmull_s16(*v353.i8, *v357.i8), *v354.i8, *v356.i8);
    v358 = vrshrn_high_n_s32(vrshrn_n_s32(v580, 0xDuLL), v578, 0xDuLL);
    v359 = vrshrn_high_n_s32(vrshrn_n_s32(v576, 0xDuLL), v574, 0xDuLL);
    v360 = vrshrn_high_n_s32(vrshrn_n_s32(v476, 0xDuLL), v245, 0xDuLL);
    v361 = vrshrn_high_n_s32(vrshrn_n_s32(v246, 0xDuLL), v247, 0xDuLL);
    v362 = vqsubq_s16(v657, v359);
    v363 = vqsubq_s16(v674, v358);
    v364 = vqaddq_s16(v362, v361);
    v365 = vdupq_n_s16(0x1F38u);
    v366 = vqaddq_s16(v363, v360);
    v367 = vdupq_n_s16(0x702u);
    v467 = vmlal_s16(vmull_s16(*v364.i8, *v367.i8), *v366.i8, *v365.i8);
    v465 = vmlal_high_s16(vmull_high_s16(v364, v367), v366, v365);
    v368 = vdupq_n_s16(0xE0C8u);
    v581 = vmlal_s16(vmull_s16(*v364.i8, *v368.i8), *v366.i8, *v367.i8);
    v579 = vmlal_high_s16(vmull_high_s16(v364, v368), v366, v367);
    v369 = vqsubq_s16(v362, v361);
    v370 = vdupq_n_s16(0x111Eu);
    v371 = vdupq_n_s16(0x1B0Au);
    v372 = vqsubq_s16(v363, v360);
    v577 = vmlal_s16(vmull_s16(*v369.i8, *v371.i8), *v372.i8, *v370.i8);
    v373 = vdupq_n_s16(0xEEE2u);
    v575 = vmlal_high_s16(vmull_high_s16(v369, v371), v372, v370);
    v477 = vmlal_s16(vmull_s16(*v369.i8, *v373.i8), *v372.i8, *v371.i8);
    v469 = vmlal_high_s16(vmull_high_s16(v369, v373), v372, v371);
    v374 = vqaddq_s16(v657, v359);
    v375 = vqaddq_s16(v674, v358);
    v376 = vrshrn_high_n_s32(vrshrn_n_s32(v493, 0xDuLL), v491, 0xDuLL);
    v377 = vrshrn_high_n_s32(vrshrn_n_s32(v487, 0xDuLL), v485, 0xDuLL);
    v378 = vqsubq_s16(v374, v377);
    v379 = vqsubq_s16(v375, v376);
    v380 = vdupq_n_s16(0x1A2Au);
    v381 = vdupq_n_s16(0x126Eu);
    v468 = vmlal_s16(vmull_s16(*v378.i8, *v381.i8), *v379.i8, *v380.i8);
    v466 = vmlal_high_s16(vmull_high_s16(v378, v381), v379, v380);
    v382 = vdupq_n_s16(0xE5D6u);
    v486 = vmlal_high_s16(vmull_high_s16(v378, v382), v379, v381);
    v488 = vmlal_s16(vmull_s16(*v378.i8, *v382.i8), *v379.i8, *v381.i8);
    v383 = vqaddq_s16(v374, v377);
    v384 = vdupq_n_s16(0x578u);
    v385 = vqaddq_s16(v375, v376);
    v386 = vdupq_n_s16(0x1F88u);
    v494 = vmlal_s16(vmull_s16(*v383.i8, *v386.i8), *v385.i8, *v384.i8);
    v492 = vmlal_high_s16(vmull_high_s16(v383, v386), v385, v384);
    v387 = vdupq_n_s16(0xFA88u);
    v463 = vmlal_high_s16(vmull_high_s16(v383, v387), v385, v386);
    v464 = vmlal_s16(vmull_s16(*v383.i8, *v387.i8), *v385.i8, *v386.i8);
    v388 = vrshrn_high_n_s32(vrshrn_n_s32(v594, 0xDuLL), v592, 0xDuLL);
    v389 = vrshrn_high_n_s32(vrshrn_n_s32(v590, 0xDuLL), v588, 0xDuLL);
    v390 = vrshrn_high_n_s32(vrshrn_n_s32(v501, 0xDuLL), v499, 0xDuLL);
    v391 = vrshrn_high_n_s32(vrshrn_n_s32(v497, 0xDuLL), v495, 0xDuLL);
    v392 = vqaddq_s16(v658, v389);
    v393 = vqaddq_s16(v673, v388);
    v394 = vqaddq_s16(v392, v391);
    v395 = vdupq_n_s16(0x1FC2u);
    v396 = vdupq_n_s16(0x3EAu);
    v397 = vqaddq_s16(v393, v390);
    v498 = vmlal_s16(vmull_s16(*v394.i8, *v396.i8), *v397.i8, *v395.i8);
    v398 = vdupq_n_s16(0xE03Eu);
    v496 = vmlal_high_s16(vmull_high_s16(v394, v396), v397, v395);
    v595 = vmlal_s16(vmull_s16(*v394.i8, *v398.i8), *v397.i8, *v396.i8);
    v593 = vmlal_high_s16(vmull_high_s16(v394, v398), v397, v396);
    v399 = vqsubq_s16(v392, v391);
    v400 = vqsubq_s16(v393, v390);
    v401 = vdupq_n_s16(0x13B0u);
    v402 = vdupq_n_s16(0x193Au);
    v591 = vmlal_s16(vmull_s16(*v399.i8, *v402.i8), *v400.i8, *v401.i8);
    v589 = vmlal_high_s16(vmull_high_s16(v399, v402), v400, v401);
    v403 = vdupq_n_s16(0xEC50u);
    v500 = vmlal_high_s16(vmull_high_s16(v399, v403), v400, v402);
    v502 = vmlal_s16(vmull_s16(*v399.i8, *v403.i8), *v400.i8, *v402.i8);
    v404 = vqsubq_s16(v658, v389);
    v461 = vqsubq_s16(v673, v388);
    v405 = vrshrn_high_n_s32(vrshrn_n_s32(v262, 0xDuLL), v513, 0xDuLL);
    v406 = vrshrn_high_n_s32(vrshrn_n_s32(v509, 0xDuLL), v507, 0xDuLL);
    v407 = vqsubq_s16(v404, v406);
    v408 = vdupq_n_s16(0x1BD8u);
    v409 = vqsubq_s16(v461, v405);
    v410 = vdupq_n_s16(0xFC6u);
    v508 = vmlal_s16(vmull_s16(*v407.i8, *v410.i8), *v409.i8, *v408.i8);
    v462 = vmlal_high_s16(vmull_high_s16(v407, v410), v409, v408);
    v411 = vdupq_n_s16(0xE428u);
    v514 = vmlal_s16(vmull_s16(*v407.i8, *v411.i8), *v409.i8, *v410.i8);
    v510 = vmlal_high_s16(vmull_high_s16(v407, v411), v409, v410);
    v412 = vrshrn_high_n_s32(vrshrn_n_s32(v602, 0xDuLL), v600, 0xDuLL);
    v413 = vrshrn_high_n_s32(vrshrn_n_s32(v598, 0xDuLL), v596, 0xDuLL);
    v414 = vrshrn_high_n_s32(vrshrn_n_s32(v511, 0xDuLL), v506, 0xDuLL);
    v415 = vrshrn_high_n_s32(vrshrn_n_s32(v504, 0xDuLL), v503, 0xDuLL);
    v512 = vqsubq_s16(v665, v413);
    v457 = vqsubq_s16(v666, v412);
    v416 = vqsubq_s16(v512, v415);
    v417 = vdupq_n_s16(0xE64u);
    v418 = vdupq_n_s16(0x1C96u);
    v419 = vqsubq_s16(v457, v414);
    v603 = vmlal_s16(vmull_s16(*v416.i8, *v418.i8), *v419.i8, *v417.i8);
    v420 = vdupq_n_s16(0xF19Cu);
    v601 = vmlal_high_s16(vmull_high_s16(v416, v418), v419, v417);
    v505 = vmlal_s16(vmull_s16(*v416.i8, *v420.i8), *v419.i8, *v418.i8);
    v460 = vmlal_high_s16(vmull_high_s16(v416, v420), v419, v418);
    v421 = vqaddq_s16(v665, v413);
    v422 = vqaddq_s16(v666, v412);
    v423 = vrshrn_high_n_s32(vrshrn_n_s32(v275, 0xDuLL), v277, 0xDuLL);
    v424 = vrshrn_high_n_s32(vrshrn_n_s32(v278, 0xDuLL), v279, 0xDuLL);
    v425 = vqsubq_s16(v421, v424);
    v426 = vqsubq_s16(v422, v423);
    v427 = vdupq_n_s16(0x183Cu);
    v428 = vdupq_n_s16(0x14E6u);
    v459 = vmlal_s16(vmull_s16(*v425.i8, *v428.i8), *v426.i8, *v427.i8);
    v458 = vmlal_high_s16(vmull_high_s16(v425, v428), v426, v427);
    v429 = vdupq_n_s16(0xE7C4u);
    v430 = vqaddq_s16(v421, v424);
    v431 = vdupq_n_s16(0x25Au);
    v432 = vqaddq_s16(v422, v423);
    v433 = vdupq_n_s16(0x1FEAu);
    v599 = vmlal_s16(vmull_s16(*v430.i8, *v433.i8), *v432.i8, *v431.i8);
    v597 = vmlal_high_s16(vmull_high_s16(v430, v433), v432, v431);
    v434 = vdupq_n_s16(0xFDA6u);
    v435 = vmlal_s16(vmull_s16(*v430.i8, *v434.i8), *v432.i8, *v433.i8);
    v436 = vmlal_high_s16(vmull_high_s16(v430, v434), v432, v433);
    v437 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v628.i8, *v625.i8), *v629.i8, *v625.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v628, v625), v629, v625), 0xDuLL);
    v438 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v628.i8, *v623.i8), *v629.i8, *v625.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v628, v623), v629, v625), 0xDuLL);
    v439 = vqaddq_s16(v482, v483);
    v440 = vqaddq_s16(v404, v406);
    v441 = vqaddq_s16(v512, v415);
    v442 = vqaddq_s16(v457, v414);
    v443 = vqaddq_s16(v461, v405);
    v444 = vqaddq_s16(v472, v473);
    v445 = vdupq_n_s16(0x1FFEu);
    v446 = vmlal_s16(vmull_s16(*v439.i8, 0xCA00CA00CA00CALL), *v444.i8, *v445.i8);
    v403.i64[0] = 0xCA00CA00CA00CALL;
    v403.i64[1] = 0xCA00CA00CA00CALL;
    v447 = vmlal_high_s16(vmull_high_s16(v439, v403), v444, v445);
    v448 = vdupq_n_s16(0xE002u);
    v125[63] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v439.i8, *v448.i8), *v444.i8, 0xCA00CA00CA00CALL), 0xDuLL), vmlal_high_s16(vmull_high_s16(v439, v448), v444, v403), 0xDuLL);
    *v125 = v437;
    v125[1] = vrshrn_high_n_s32(vrshrn_n_s32(v446, 0xDuLL), v447, 0xDuLL);
    v125[2] = vrshrn_high_n_s32(vrshrn_n_s32(v559, 0xDuLL), v553, 0xDuLL);
    v125[3] = vrshrn_high_n_s32(vrshrn_n_s32(v435, 0xDuLL), v436, 0xDuLL);
    v125[4] = vrshrn_high_n_s32(vrshrn_n_s32(v478, 0xDuLL), v604, 0xDuLL);
    v125[5] = vrshrn_high_n_s32(vrshrn_n_s32(v498, 0xDuLL), v496, 0xDuLL);
    v125[6] = vrshrn_high_n_s32(vrshrn_n_s32(v490, 0xDuLL), v489, 0xDuLL);
    v125[7] = vrshrn_high_n_s32(vrshrn_n_s32(v464, 0xDuLL), v463, 0xDuLL);
    v449 = vdupq_n_s16(0x1ED8u);
    v450 = vdupq_n_s16(0xF778u);
    v451 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v440.i8, *v450.i8), *v443.i8, *v449.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v440, v450), v443, v449), 0xDuLL);
    v125[8] = vrshrn_high_n_s32(vrshrn_n_s32(v614, 0xDuLL), v613, 0xDuLL);
    v125[9] = vrshrn_high_n_s32(vrshrn_n_s32(v467, 0xDuLL), v465, 0xDuLL);
    v452 = vdupq_n_s16(0x1E62u);
    v125[10] = vrshrn_high_n_s32(vrshrn_n_s32(v516, 0xDuLL), v515, 0xDuLL);
    v125[11] = v451;
    v125[12] = vrshrn_high_n_s32(vrshrn_n_s32(v563, 0xDuLL), v562, 0xDuLL);
    v125[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v441.i8, 0xA0A0A0A0A0A0A0ALL), *v442.i8, *v452.i8), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v441, v441, 8uLL), 0xA0A0A0A0A0A0A0ALL), v442, v452), 0xDuLL);
    v125[14] = vrshrn_high_n_s32(vrshrn_n_s32(v518, 0xDuLL), v517, 0xDuLL);
    v125[15] = vrshrn_high_n_s32(vrshrn_n_s32(v471, 0xDuLL), v470, 0xDuLL);
    v125[16] = vrshrn_high_n_s32(vrshrn_n_s32(v621, 0xDuLL), v619, 0xDuLL);
    v125[17] = vrshrn_high_n_s32(vrshrn_n_s32(v475, 0xDuLL), v474, 0xDuLL);
    v125[18] = vrshrn_high_n_s32(vrshrn_n_s32(v538, 0xDuLL), v536, 0xDuLL);
    v125[19] = vrshrn_high_n_s32(vrshrn_n_s32(v505, 0xDuLL), v460, 0xDuLL);
    v125[20] = vrshrn_high_n_s32(vrshrn_n_s32(v573, 0xDuLL), v571, 0xDuLL);
    v125[21] = vrshrn_high_n_s32(vrshrn_n_s32(v508, 0xDuLL), v462, 0xDuLL);
    v125[22] = vrshrn_high_n_s32(vrshrn_n_s32(v534, 0xDuLL), v530, 0xDuLL);
    v125[23] = vrshrn_high_n_s32(vrshrn_n_s32(v477, 0xDuLL), v469, 0xDuLL);
    v125[24] = vrshrn_high_n_s32(vrshrn_n_s32(v606, 0xDuLL), v605, 0xDuLL);
    v125[25] = vrshrn_high_n_s32(vrshrn_n_s32(v468, 0xDuLL), v466, 0xDuLL);
    v125[26] = vrshrn_high_n_s32(vrshrn_n_s32(v524, 0xDuLL), v519, 0xDuLL);
    v125[27] = vrshrn_high_n_s32(vrshrn_n_s32(v502, 0xDuLL), v500, 0xDuLL);
    v125[28] = vrshrn_high_n_s32(vrshrn_n_s32(v587, 0xDuLL), v586, 0xDuLL);
    v125[29] = vrshrn_high_n_s32(vrshrn_n_s32(v459, 0xDuLL), v458, 0xDuLL);
    v125[30] = vrshrn_high_n_s32(vrshrn_n_s32(v548, 0xDuLL), v547, 0xDuLL);
    v125[31] = vrshrn_high_n_s32(vrshrn_n_s32(v555, 0xDuLL), v552, 0xDuLL);
    v125[32] = v438;
    v125[33] = vrshrn_high_n_s32(vrshrn_n_s32(v561, 0xDuLL), v557, 0xDuLL);
    v125[34] = vrshrn_high_n_s32(vrshrn_n_s32(v550, 0xDuLL), v549, 0xDuLL);
    v125[35] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v425.i8, *v429.i8), *v426.i8, *v428.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v425, v429), v426, v428), 0xDuLL);
    v125[36] = vrshrn_high_n_s32(vrshrn_n_s32(v242, 0xDuLL), v243, 0xDuLL);
    v125[37] = vrshrn_high_n_s32(vrshrn_n_s32(v591, 0xDuLL), v589, 0xDuLL);
    v125[38] = vrshrn_high_n_s32(vrshrn_n_s32(v522, 0xDuLL), v520, 0xDuLL);
    v125[39] = vrshrn_high_n_s32(vrshrn_n_s32(v488, 0xDuLL), v486, 0xDuLL);
    v125[41] = vrshrn_high_n_s32(vrshrn_n_s32(v577, 0xDuLL), v575, 0xDuLL);
    v125[42] = vrshrn_high_n_s32(vrshrn_n_s32(v532, 0xDuLL), v528, 0xDuLL);
    v125[40] = vrshrn_high_n_s32(vrshrn_n_s32(v608, 0xDuLL), v607, 0xDuLL);
    v125[45] = vrshrn_high_n_s32(vrshrn_n_s32(v603, 0xDuLL), v601, 0xDuLL);
    v125[46] = vrshrn_high_n_s32(vrshrn_n_s32(v526, 0xDuLL), v525, 0xDuLL);
    v125[43] = vrshrn_high_n_s32(vrshrn_n_s32(v514, 0xDuLL), v510, 0xDuLL);
    v125[44] = vrshrn_high_n_s32(vrshrn_n_s32(v569, 0xDuLL), v567, 0xDuLL);
    v125[47] = vrshrn_high_n_s32(vrshrn_n_s32(v484, 0xDuLL), v481, 0xDuLL);
    v453 = vdupq_n_s16(0xE19Eu);
    v125[49] = vrshrn_high_n_s32(vrshrn_n_s32(v480, 0xDuLL), v479, 0xDuLL);
    v125[48] = vrshrn_high_n_s32(vrshrn_n_s32(v617, 0xDuLL), v615, 0xDuLL);
    v125[51] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v441.i8, *v453.i8), *v442.i8, 0xA0A0A0A0A0A0A0ALL), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v442, v442, 8uLL), 0xA0A0A0A0A0A0A0ALL), v441, v453), 0xDuLL);
    v125[52] = vrshrn_high_n_s32(vrshrn_n_s32(v565, 0xDuLL), v564, 0xDuLL);
    v125[53] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v440.i8, *v449.i8), *v443.i8, v456), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v443, v443, 8uLL), v456), v440, v449), 0xDuLL);
    v125[54] = vrshrn_high_n_s32(vrshrn_n_s32(v542, 0xDuLL), v540, 0xDuLL);
    v125[55] = vrshrn_high_n_s32(vrshrn_n_s32(v581, 0xDuLL), v579, 0xDuLL);
    v125[56] = vrshrn_high_n_s32(vrshrn_n_s32(v612, 0xDuLL), v611, 0xDuLL);
    v125[57] = vrshrn_high_n_s32(vrshrn_n_s32(v494, 0xDuLL), v492, 0xDuLL);
    v125[58] = vrshrn_high_n_s32(vrshrn_n_s32(v546, 0xDuLL), v544, 0xDuLL);
    v125[59] = vrshrn_high_n_s32(vrshrn_n_s32(v595, 0xDuLL), v593, 0xDuLL);
    v125[60] = vrshrn_high_n_s32(vrshrn_n_s32(v610, 0xDuLL), v609, 0xDuLL);
    v125[61] = vrshrn_high_n_s32(vrshrn_n_s32(v599, 0xDuLL), v597, 0xDuLL);
    v125[62] = vrshrn_high_n_s32(vrshrn_n_s32(v585, 0xDuLL), v583, 0xDuLL);
    v454 = (v1 + 16 + 32 * v118);
    do
    {
      v455 = v125[v168];
      v454[-1] = vmovl_s16(*v455.i8);
      *v454 = vmovl_high_s16(v455);
      ++v168;
      v454 += 4;
    }

    while (v168 != 32);
    v119 = 0;
    v118 = 1;
    v120 = v625;
    v121 = v623;
  }

  while ((v123 & 1) != 0);

  bzero((v1 + 2048), 0x800uLL);
}

uint64_t sub_2779DD5F4()
{
  v0 = MEMORY[0x28223BE20]();
  v459 = v2;
  v3 = 0;
  v843 = *MEMORY[0x277D85DE8];
  v4 = v636;
  v5 = 1;
  v6 = vdupq_n_s16(0x16A1u);
  v7 = vdupq_n_s16(0xE95Fu);
  v461 = vneg_f16(0x6161616161616161);
  v462 = vneg_f16(0x6565656565656565);
  v460 = vneg_f16(0x7777777777777777);
  v634 = v6;
  v632 = v7;
  do
  {
    v8 = 0;
    v9 = v5;
    v10 = (v0 + 2 * v3);
    do
    {
      v638[v8++] = *v10;
      v10 = (v10 + 2 * v1);
    }

    while (v8 != 64);
    v11 = 0;
    for (i = 63; i != 31; --i)
    {
      *&v818[v11 * 16] = vqaddq_s16(v638[v11], v638[i]);
      ++v11;
    }

    v13 = 32;
    do
    {
      *&v818[v13 * 16] = vqsubq_s16(v638[i--], v638[v13]);
      ++v13;
    }

    while (i != -1);
    v14 = 0;
    for (j = 496; j != 240; j -= 16)
    {
      *(&v778 + v14) = vqaddq_s16(*&v818[v14], *&v818[j]);
      v14 += 16;
    }

    v16 = 256;
    do
    {
      *(&v778 + v16) = vqsubq_s16(*&v818[j], *&v818[v16]);
      j -= 16;
      v16 += 16;
    }

    while (j != -16);
    v17 = 0;
    v817 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v827.i8, *v6.i8), *v842.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v827, v6), v842, v6), 0xDuLL);
    v816 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v828.i8, *v6.i8), *v841.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v828, v6), v841, v6), 0xDuLL);
    v802 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v827.i8, *v7.i8), *v842.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v827, v7), v842, v6), 0xDuLL);
    v803 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v828.i8, *v7.i8), *v841.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v828, v7), v841, v6), 0xDuLL);
    v815 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v829.i8, *v6.i8), *v840.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v829, v6), v840, v6), 0xDuLL);
    v814 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v830.i8, *v6.i8), *v839.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v830, v6), v839, v6), 0xDuLL);
    v804 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v829.i8, *v7.i8), *v840.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v829, v7), v840, v6), 0xDuLL);
    v805 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v830.i8, *v7.i8), *v839.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v830, v7), v839, v6), 0xDuLL);
    v813 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v831.i8, *v6.i8), *v838.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v831, v6), v838, v6), 0xDuLL);
    v812 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v832.i8, *v6.i8), *v837.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v832, v6), v837, v6), 0xDuLL);
    v806 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v831.i8, *v7.i8), *v838.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v831, v7), v838, v6), 0xDuLL);
    v807 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v832.i8, *v7.i8), *v837.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v832, v7), v837, v6), 0xDuLL);
    v811 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v833.i8, *v6.i8), *v836.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v833, v6), v836, v6), 0xDuLL);
    v810 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v834.i8, *v6.i8), *v835.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v834, v6), v835, v6), 0xDuLL);
    v808 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v833.i8, *v7.i8), *v836.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v833, v7), v836, v6), 0xDuLL);
    v809 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v834.i8, *v7.i8), *v835.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v834, v7), v835, v6), 0xDuLL);
    for (k = 240; k != 112; k -= 16)
    {
      *&v737[v17] = vqaddq_s16(*(&v778 + v17), *(&v778 + k));
      v17 += 16;
    }

    v19 = 128;
    for (m = 112; m != -16; m -= 16)
    {
      *&v737[v19] = vqsubq_s16(*(&v778 + m), *(&v778 + v19));
      v19 += 16;
    }

    v746 = v786;
    v747 = v787;
    v748 = v788;
    v749 = v789;
    v757 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v790.i8, *v6.i8), *v797.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v790, v6), v797, v6), 0xDuLL);
    v756 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v791.i8, *v6.i8), *v796.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v791, v6), v796, v6), 0xDuLL);
    v750 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v790.i8, *v7.i8), *v797.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v790, v7), v797, v6), 0xDuLL);
    v751 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v791.i8, *v7.i8), *v796.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v791, v7), v796, v6), 0xDuLL);
    v755 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v792.i8, *v6.i8), *v795.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v792, v6), v795, v6), 0xDuLL);
    v754 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v793.i8, *v6.i8), *v794.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v793, v6), v794, v6), 0xDuLL);
    v752 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v792.i8, *v7.i8), *v795.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v792, v7), v795, v6), 0xDuLL);
    v753 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v793.i8, *v7.i8), *v794.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v793, v7), v794, v6), 0xDuLL);
    v758 = v798;
    v759 = v799;
    v760 = v800;
    v761 = v801;
    v21 = 512;
    for (n = 752; n != 624; n -= 16)
    {
      *&v737[v21] = vqaddq_s16(*&v818[v21], *(&v778 + n));
      v21 += 16;
    }

    v23 = 640;
    do
    {
      *&v737[v23] = vqsubq_s16(*&v818[n], *(&v778 + v23));
      n -= 16;
      v23 += 16;
    }

    while (n != 496);
    v24 = 768;
    for (ii = 1008; ii != 880; ii -= 16)
    {
      *&v737[v24] = vqsubq_s16(*&v818[ii], *(&v778 + v24));
      v24 += 16;
    }

    v26 = 880;
    for (jj = 896; jj != 1024; jj += 16)
    {
      *&v737[jj] = vqaddq_s16(*&v818[jj], *(&v778 + v26));
      v26 -= 16;
    }

    v28 = 0;
    for (kk = 112; kk != 48; kk -= 16)
    {
      *(&v693 + v28) = vqaddq_s16(*&v737[v28], *&v737[kk]);
      v28 += 16;
    }

    v30 = 64;
    do
    {
      *(&v693 + v30) = vqsubq_s16(*&v737[kk], *&v737[v30]);
      kk -= 16;
      v30 += 16;
    }

    while (kk != -16);
    v704 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v740.i8, *v6.i8), *v743.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v740, v6), v743, v6), 0xDuLL);
    v703 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v741.i8, *v6.i8), *v742.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v741, v6), v742, v6), 0xDuLL);
    v701 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v740.i8, *v7.i8), *v743.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v740, v7), v743, v6), 0xDuLL);
    v702 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v741.i8, *v7.i8), *v742.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v741, v7), v742, v6), 0xDuLL);
    v31 = 256;
    for (mm = 368; mm != 304; mm -= 16)
    {
      *(&v693 + v31) = vqaddq_s16(*&v737[v31], *&v737[mm]);
      v31 += 16;
    }

    v33 = 320;
    do
    {
      *(&v693 + v33) = vqsubq_s16(*&v737[mm], *&v737[v33]);
      mm -= 16;
      v33 += 16;
    }

    while (mm != 240);
    v34 = 384;
    for (nn = 496; nn != 432; nn -= 16)
    {
      *(&v693 + v34) = vqsubq_s16(*&v737[nn], *&v737[v34]);
      v34 += 16;
    }

    v36 = 432;
    for (i1 = 448; i1 != 512; i1 += 16)
    {
      *(&v693 + i1) = vqaddq_s16(*&v737[i1], *&v737[v36]);
      v36 -= 16;
    }

    v38 = vdupq_n_s16(0x1D90u);
    v39 = vdupq_n_s16(0xC3Fu);
    v40 = vdupq_n_s16(0xE270u);
    v736 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v762.i8, *v39.i8), *v777.i8, *v38.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v762, v39), v777, v38), 0xDuLL);
    v735 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v763.i8, *v39.i8), *v776.i8, *v38.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v763, v39), v776, v38), 0xDuLL);
    v721 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v762.i8, *v40.i8), *v777.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v762, v40), v777, v39), 0xDuLL);
    v722 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v763.i8, *v40.i8), *v776.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v763, v40), v776, v39), 0xDuLL);
    v734 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v764.i8, *v39.i8), *v775.i8, *v38.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v764, v39), v775, v38), 0xDuLL);
    v733 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v765.i8, *v39.i8), *v774.i8, *v38.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v765, v39), v774, v38), 0xDuLL);
    v723 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v764.i8, *v40.i8), *v775.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v764, v40), v775, v39), 0xDuLL);
    v724 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v765.i8, *v40.i8), *v774.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v765, v40), v774, v39), 0xDuLL);
    v41 = vdupq_n_s16(0xF3C1u);
    v732 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v766.i8, *v40.i8), *v773.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v766, v40), v773, v39), 0xDuLL);
    v731 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v767.i8, *v40.i8), *v772.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v767, v40), v772, v39), 0xDuLL);
    v725 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v766.i8, *v41.i8), *v773.i8, *v40.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v766, v41), v773, v40), 0xDuLL);
    v726 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v767.i8, *v41.i8), *v772.i8, *v40.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v767, v41), v772, v40), 0xDuLL);
    v730 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v768.i8, *v40.i8), *v771.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v768, v40), v771, v39), 0xDuLL);
    v729 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v769.i8, *v40.i8), *v770.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v769, v40), v770, v39), 0xDuLL);
    v727 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v768.i8, *v41.i8), *v771.i8, *v40.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v768, v41), v771, v40), 0xDuLL);
    v728 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v769.i8, *v41.i8), *v770.i8, *v40.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v769, v41), v770, v40), 0xDuLL);
    v639 = vqaddq_s16(v693, v696);
    v640 = vqaddq_s16(v694, v695);
    v641 = vqsubq_s16(v694, v695);
    v642 = vqsubq_s16(v693, v696);
    v644 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v698.i8, *v6.i8), *v699.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v698, v6), v699, v6), 0xDuLL);
    v643 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v698.i8, *v7.i8), *v699.i8, *v6.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v698, v7), v699, v6), 0xDuLL);
    v645 = vqaddq_s16(v738, v702);
    v646 = vqaddq_s16(v739, v701);
    v647 = vqsubq_s16(v739, v701);
    v648 = vqsubq_s16(v738, v702);
    v649 = vqsubq_s16(v745, v703);
    v650 = vqsubq_s16(v744, v704);
    v651 = vqaddq_s16(v744, v704);
    v652 = vqaddq_s16(v745, v703);
    v660 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v707.i8, *v39.i8), *v718.i8, *v38.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v707, v39), v718, v38), 0xDuLL);
    v659 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v708.i8, *v39.i8), *v717.i8, *v38.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v708, v39), v717, v38), 0xDuLL);
    v653 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v707.i8, *v40.i8), *v718.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v707, v40), v718, v39), 0xDuLL);
    v654 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v708.i8, *v40.i8), *v717.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v708, v40), v717, v39), 0xDuLL);
    v658 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v709.i8, *v40.i8), *v716.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v709, v40), v716, v39), 0xDuLL);
    v657 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v710.i8, *v40.i8), *v715.i8, *v39.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v710, v40), v715, v39), 0xDuLL);
    v655 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v709.i8, *v41.i8), *v716.i8, *v40.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v709, v41), v716, v40), 0xDuLL);
    v656 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v710.i8, *v41.i8), *v715.i8, *v40.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v710, v41), v715, v40), 0xDuLL);
    v42 = 512;
    for (i2 = 624; i2 != 560; i2 -= 16)
    {
      *(&v639 + v42) = vqaddq_s16(*&v737[v42], *(&v693 + i2));
      v42 += 16;
    }

    v44 = 576;
    do
    {
      *(&v639 + v44) = vqsubq_s16(*&v737[i2], *(&v693 + v44));
      i2 -= 16;
      v44 += 16;
    }

    while (i2 != 496);
    v45 = 640;
    for (i3 = 752; i3 != 688; i3 -= 16)
    {
      *(&v639 + v45) = vqsubq_s16(*&v737[i3], *(&v693 + v45));
      v45 += 16;
    }

    v47 = 688;
    for (i4 = 704; i4 != 768; i4 += 16)
    {
      *(&v639 + i4) = vqaddq_s16(*&v737[i4], *(&v693 + v47));
      v47 -= 16;
    }

    v49 = 768;
    for (i5 = 880; i5 != 816; i5 -= 16)
    {
      *(&v639 + v49) = vqaddq_s16(*&v737[v49], *(&v693 + i5));
      v49 += 16;
    }

    v51 = 832;
    do
    {
      *(&v639 + v51) = vqsubq_s16(*&v737[i5], *(&v693 + v51));
      i5 -= 16;
      v51 += 16;
    }

    while (i5 != 752);
    v52 = 896;
    for (i6 = 1008; i6 != 944; i6 -= 16)
    {
      *(&v639 + v52) = vqsubq_s16(*&v737[i6], *(&v693 + v52));
      v52 += 16;
    }

    v54 = 944;
    for (i7 = 960; i7 != 1024; i7 += 16)
    {
      *(&v639 + i7) = vqaddq_s16(*&v737[i7], *(&v693 + v54));
      v54 -= 16;
    }

    v56 = 0;
    v630 = vmlal_s16(vmull_s16(*v641.i8, *v39.i8), *v642.i8, *v38.i8);
    v628 = vmlal_high_s16(vmull_high_s16(v641, v39), v642, v38);
    v626 = vmlal_s16(vmull_s16(*v641.i8, *v40.i8), *v642.i8, *v39.i8);
    v625 = vmlal_high_s16(vmull_high_s16(v641, v40), v642, v39);
    v57 = vmlal_s16(vmull_s16(*v646.i8, *v39.i8), *v651.i8, *v38.i8);
    v58 = vmlal_high_s16(vmull_high_s16(v646, v39), v651, v38);
    v59 = vmlal_s16(vmull_s16(*v646.i8, *v40.i8), *v651.i8, *v39.i8);
    v60 = vmlal_high_s16(vmull_high_s16(v646, v40), v651, v39);
    v61 = vqaddq_s16(v706, v653);
    v62 = vqsubq_s16(v706, v653);
    v63 = vqsubq_s16(v719, v660);
    v64 = vqaddq_s16(v719, v660);
    v65 = vdupq_n_s16(0x1F63u);
    v581 = vmlal_s16(vmull_s16(*v647.i8, *v40.i8), *v650.i8, *v39.i8);
    v66 = vdupq_n_s16(0x63Eu);
    v67 = vdupq_n_s16(0xE09Du);
    v579 = vmlal_high_s16(vmull_high_s16(v647, v40), v650, v39);
    v577 = vmlal_s16(vmull_s16(*v647.i8, *v41.i8), *v650.i8, *v40.i8);
    v573 = vmlal_high_s16(vmull_high_s16(v647, v41), v650, v40);
    v68 = vmlal_s16(vmull_s16(*v663.i8, *v66.i8), *v690.i8, *v65.i8);
    v69 = vmlal_high_s16(vmull_high_s16(v663, v66), v690, v65);
    v70 = vmlal_s16(vmull_s16(*v663.i8, *v67.i8), *v690.i8, *v66.i8);
    v71 = vmlal_high_s16(vmull_high_s16(v663, v67), v690, v66);
    v563 = vmlal_s16(vmull_s16(*v664.i8, *v66.i8), *v689.i8, *v65.i8);
    v561 = vmlal_high_s16(vmull_high_s16(v664, v66), v689, v65);
    v559 = vmlal_s16(vmull_s16(*v664.i8, *v67.i8), *v689.i8, *v66.i8);
    v557 = vmlal_high_s16(vmull_high_s16(v664, v67), v689, v66);
    v589 = vmlal_s16(vmull_s16(*v665.i8, *v67.i8), *v688.i8, *v66.i8);
    v587 = vmlal_high_s16(vmull_high_s16(v665, v67), v688, v66);
    v72 = vdupq_n_s16(0xF9C2u);
    v585 = vmlal_s16(vmull_s16(*v665.i8, *v72.i8), *v688.i8, *v67.i8);
    v583 = vmlal_high_s16(vmull_high_s16(v665, v72), v688, v67);
    v73 = vmlal_s16(vmull_s16(*v666.i8, *v67.i8), *v687.i8, *v66.i8);
    v74 = vmlal_high_s16(vmull_high_s16(v666, v67), v687, v66);
    v75 = vmlal_s16(vmull_s16(*v666.i8, *v72.i8), *v687.i8, *v67.i8);
    v76 = vmlal_high_s16(vmull_high_s16(v666, v72), v687, v67);
    v77 = vqaddq_s16(v697, v643);
    v78 = vqaddq_s16(v700, v644);
    v624 = vmlal_s16(vmull_s16(*v77.i8, *v66.i8), *v78.i8, *v65.i8);
    v623 = vmlal_high_s16(vmull_high_s16(v77, v66), v78, v65);
    v622 = vmlal_s16(vmull_s16(*v77.i8, *v67.i8), *v78.i8, *v66.i8);
    v621 = vmlal_high_s16(vmull_high_s16(v77, v67), v78, v66);
    v593 = vmlal_s16(vmull_s16(*v61.i8, *v66.i8), *v64.i8, *v65.i8);
    v591 = vmlal_high_s16(vmull_high_s16(v61, v66), v64, v65);
    v555 = vmlal_s16(vmull_s16(*v61.i8, *v67.i8), *v64.i8, *v66.i8);
    v553 = vmlal_high_s16(vmull_high_s16(v61, v67), v64, v66);
    v571 = vmlal_s16(vmull_s16(*v62.i8, *v67.i8), *v63.i8, *v66.i8);
    v569 = vmlal_high_s16(vmull_high_s16(v62, v67), v63, v66);
    v567 = vmlal_s16(vmull_s16(*v62.i8, *v72.i8), *v63.i8, *v67.i8);
    v565 = vmlal_high_s16(vmull_high_s16(v62, v72), v63, v67);
    v79 = vqsubq_s16(v697, v643);
    v80 = vqsubq_s16(v700, v644);
    v81 = vqsubq_s16(v711, v656);
    v82 = vqaddq_s16(v711, v656);
    v83 = vqaddq_s16(v714, v657);
    v84 = vqsubq_s16(v714, v657);
    v85 = vdupq_n_s16(0x11C7u);
    v86 = vdupq_n_s16(0x1A9Bu);
    v87 = vmlal_s16(vmull_s16(*v671.i8, *v86.i8), *v682.i8, *v85.i8);
    v88 = vmlal_high_s16(vmull_high_s16(v671, v86), v682, v85);
    v89 = vdupq_n_s16(0xEE39u);
    v90 = vmlal_s16(vmull_s16(*v671.i8, *v89.i8), *v682.i8, *v86.i8);
    v91 = vmlal_high_s16(vmull_high_s16(v671, v89), v682, v86);
    v603 = vmlal_s16(vmull_s16(*v672.i8, *v86.i8), *v681.i8, *v85.i8);
    v601 = vmlal_high_s16(vmull_high_s16(v672, v86), v681, v85);
    v599 = vmlal_s16(vmull_s16(*v672.i8, *v89.i8), *v681.i8, *v86.i8);
    v597 = vmlal_high_s16(vmull_high_s16(v672, v89), v681, v86);
    v611 = vmlal_s16(vmull_s16(*v673.i8, *v89.i8), *v680.i8, *v86.i8);
    v609 = vmlal_high_s16(vmull_high_s16(v673, v89), v680, v86);
    v607 = vmlal_s16(vmull_s16(*v673.i8, v462), *v680.i8, *v89.i8);
    v605 = vmlal_high_s16(vmull_s16(*&vextq_s8(v673, v673, 8uLL), v462), v680, v89);
    v92 = vmlal_s16(vmull_s16(*v674.i8, *v89.i8), *v679.i8, *v86.i8);
    v93 = vmlal_high_s16(vmull_high_s16(v674, v89), v679, v86);
    v94 = vmlal_s16(vmull_s16(*v674.i8, v462), *v679.i8, *v89.i8);
    v95 = vmlal_high_s16(vmull_s16(*&vextq_s8(v674, v674, 8uLL), v462), v679, v89);
    v618 = vmlal_s16(vmull_s16(*v79.i8, *v86.i8), *v80.i8, *v85.i8);
    v617 = vmlal_high_s16(vmull_high_s16(v79, v86), v80, v85);
    v616 = vmlal_s16(vmull_s16(*v79.i8, *v89.i8), *v80.i8, *v86.i8);
    v615 = vmlal_high_s16(vmull_high_s16(v79, v89), v80, v86);
    v551 = vmlal_s16(vmull_s16(*v81.i8, *v86.i8), *v84.i8, *v85.i8);
    v549 = vmlal_high_s16(vmull_high_s16(v81, v86), v84, v85);
    v547 = vmlal_s16(vmull_s16(*v81.i8, *v89.i8), *v84.i8, *v86.i8);
    v545 = vmlal_high_s16(vmull_high_s16(v81, v89), v84, v86);
    v539 = vmlal_s16(vmull_s16(*v82.i8, *v89.i8), *v83.i8, *v86.i8);
    v537 = vmlal_high_s16(vmull_high_s16(v82, v89), v83, v86);
    v533 = vmlal_high_s16(vmull_s16(*&vextq_s8(v82, v82, 8uLL), v462), v83, v89);
    v535 = vmlal_s16(vmull_s16(*v82.i8, v462), *v83.i8, *v89.i8);
    v96 = vrshrn_high_n_s32(vrshrn_n_s32(v57, 0xDuLL), v58, 0xDuLL);
    v97 = vrshrn_high_n_s32(vrshrn_n_s32(v59, 0xDuLL), v60, 0xDuLL);
    v98 = vrshrn_high_n_s32(vrshrn_n_s32(v68, 0xDuLL), v69, 0xDuLL);
    v99 = vrshrn_high_n_s32(vrshrn_n_s32(v70, 0xDuLL), v71, 0xDuLL);
    v100 = vqaddq_s16(v662, v99);
    v101 = vqsubq_s16(v662, v99);
    v102 = vqsubq_s16(v691, v98);
    v103 = vqaddq_s16(v691, v98);
    v104 = vqaddq_s16(v645, v97);
    v105 = vqaddq_s16(v652, v96);
    v106 = vdupq_n_s16(0x1FD9u);
    v107 = vdupq_n_s16(0x323u);
    v614 = vmlal_s16(vmull_s16(*v104.i8, *v107.i8), *v105.i8, *v106.i8);
    v613 = vmlal_high_s16(vmull_high_s16(v104, v107), v105, v106);
    v108 = vdupq_n_s16(0xE027u);
    v620 = vmlal_s16(vmull_s16(*v104.i8, *v108.i8), *v105.i8, *v107.i8);
    v619 = vmlal_high_s16(vmull_high_s16(v104, v108), v105, v107);
    v109 = vmlal_s16(vmull_s16(*v100.i8, *v107.i8), *v103.i8, *v106.i8);
    v110 = vmlal_high_s16(vmull_high_s16(v100, v107), v103, v106);
    v111 = vmlal_s16(vmull_s16(*v100.i8, *v108.i8), *v103.i8, *v107.i8);
    v112 = vmlal_high_s16(vmull_high_s16(v100, v108), v103, v107);
    v113 = vmlal_s16(vmull_s16(*v101.i8, *v108.i8), *v102.i8, *v107.i8);
    v114 = vmlal_high_s16(vmull_high_s16(v101, v108), v102, v107);
    v115 = vdupq_n_s16(0xFCDDu);
    v116 = vmlal_s16(vmull_s16(*v101.i8, *v115.i8), *v102.i8, *v108.i8);
    v117 = vmlal_high_s16(vmull_high_s16(v101, v115), v102, v108);
    v118 = vrshrn_high_n_s32(vrshrn_n_s32(v73, 0xDuLL), v74, 0xDuLL);
    v119 = vrshrn_high_n_s32(vrshrn_n_s32(v75, 0xDuLL), v76, 0xDuLL);
    v120 = vqsubq_s16(v645, v97);
    v121 = vqsubq_s16(v652, v96);
    v122 = vqsubq_s16(v667, v119);
    v123 = vqaddq_s16(v667, v119);
    v124 = vqaddq_s16(v686, v118);
    v125 = vdupq_n_s16(0x144Du);
    v126 = vdupq_n_s16(0x18BDu);
    v127 = vqsubq_s16(v686, v118);
    v128 = vmlal_s16(vmull_s16(*v120.i8, *v126.i8), *v121.i8, *v125.i8);
    v129 = vdupq_n_s16(0xEBB3u);
    v130 = vmlal_high_s16(vmull_high_s16(v120, v126), v121, v125);
    v596 = vmlal_s16(vmull_s16(*v120.i8, *v129.i8), *v121.i8, *v126.i8);
    v595 = vmlal_high_s16(vmull_high_s16(v120, v129), v121, v126);
    v483 = vmlal_s16(vmull_s16(*v122.i8, *v126.i8), *v127.i8, *v125.i8);
    v131 = vmlal_high_s16(vmull_high_s16(v122, v126), v127, v125);
    v132 = vmlal_s16(vmull_s16(*v122.i8, *v129.i8), *v127.i8, *v126.i8);
    v133 = vmlal_high_s16(vmull_high_s16(v122, v129), v127, v126);
    v497 = vmlal_s16(vmull_s16(*v123.i8, *v129.i8), *v124.i8, *v126.i8);
    v134 = vdupq_n_s16(0xE743u);
    v495 = vmlal_high_s16(vmull_high_s16(v123, v129), v124, v126);
    v493 = vmlal_s16(vmull_s16(*v123.i8, *v134.i8), *v124.i8, *v129.i8);
    v490 = vmlal_high_s16(vmull_high_s16(v123, v134), v124, v129);
    v135 = vrshrn_high_n_s32(vrshrn_n_s32(v581, 0xDuLL), v579, 0xDuLL);
    v136 = vrshrn_high_n_s32(vrshrn_n_s32(v577, 0xDuLL), v573, 0xDuLL);
    v137 = vrshrn_high_n_s32(vrshrn_n_s32(v87, 0xDuLL), v88, 0xDuLL);
    v138 = vrshrn_high_n_s32(vrshrn_n_s32(v90, 0xDuLL), v91, 0xDuLL);
    v139 = vqaddq_s16(v670, v138);
    v140 = vqsubq_s16(v670, v138);
    v141 = vqsubq_s16(v683, v137);
    v142 = vqaddq_s16(v683, v137);
    v143 = vqsubq_s16(v648, v136);
    v144 = vdupq_n_s16(0x1C39u);
    v145 = vdupq_n_s16(0xF16u);
    v146 = vqsubq_s16(v649, v135);
    v147 = vmlal_s16(vmull_s16(*v143.i8, *v145.i8), *v146.i8, *v144.i8);
    v148 = vdupq_n_s16(0xE3C7u);
    v582 = vmlal_high_s16(vmull_high_s16(v143, v145), v146, v144);
    v580 = vmlal_s16(vmull_s16(*v143.i8, *v148.i8), *v146.i8, *v145.i8);
    v578 = vmlal_high_s16(vmull_high_s16(v143, v148), v146, v145);
    v507 = vmlal_s16(vmull_s16(*v139.i8, *v145.i8), *v142.i8, *v144.i8);
    v505 = vmlal_high_s16(vmull_high_s16(v139, v145), v142, v144);
    v503 = vmlal_s16(vmull_s16(*v139.i8, *v148.i8), *v142.i8, *v145.i8);
    v501 = vmlal_high_s16(vmull_high_s16(v139, v148), v142, v145);
    v515 = vmlal_s16(vmull_s16(*v140.i8, *v148.i8), *v141.i8, *v145.i8);
    v149 = vdupq_n_s16(0xF0EAu);
    v513 = vmlal_high_s16(vmull_high_s16(v140, v148), v141, v145);
    v509 = vmlal_high_s16(vmull_high_s16(v140, v149), v141, v148);
    v511 = vmlal_s16(vmull_s16(*v140.i8, *v149.i8), *v141.i8, *v148.i8);
    v150 = vrshrn_high_n_s32(vrshrn_n_s32(v92, 0xDuLL), v93, 0xDuLL);
    v151 = vrshrn_high_n_s32(vrshrn_n_s32(v94, 0xDuLL), v95, 0xDuLL);
    v152 = vqaddq_s16(v648, v136);
    v153 = vqaddq_s16(v649, v135);
    v154 = vqsubq_s16(v675, v151);
    v155 = vqaddq_s16(v675, v151);
    v156 = vqaddq_s16(v678, v150);
    v157 = vdupq_n_s16(0x94Au);
    v158 = vqsubq_s16(v678, v150);
    v159 = vdupq_n_s16(0x1E9Fu);
    v160 = vmlal_s16(vmull_s16(*v152.i8, *v159.i8), *v153.i8, *v157.i8);
    v576 = vmlal_high_s16(vmull_high_s16(v152, v159), v153, v157);
    v161 = vdupq_n_s16(0xF6B6u);
    v575 = vmlal_s16(vmull_s16(*v152.i8, *v161.i8), *v153.i8, *v159.i8);
    v574 = vmlal_high_s16(vmull_high_s16(v152, v161), v153, v159);
    v523 = vmlal_s16(vmull_s16(*v154.i8, *v159.i8), *v158.i8, *v157.i8);
    v521 = vmlal_high_s16(vmull_high_s16(v154, v159), v158, v157);
    v519 = vmlal_s16(vmull_s16(*v154.i8, *v161.i8), *v158.i8, *v159.i8);
    v517 = vmlal_high_s16(vmull_high_s16(v154, v161), v158, v159);
    v162 = vmlal_s16(vmull_s16(*v155.i8, *v161.i8), *v156.i8, *v159.i8);
    v163 = vmlal_high_s16(vmull_high_s16(v155, v161), v156, v159);
    v164 = vmlal_s16(vmull_s16(*v155.i8, v461), *v156.i8, *v161.i8);
    v165 = vmlal_high_s16(vmull_s16(*&vextq_s8(v155, v155, 8uLL), v461), v156, v161);
    v166 = vrshrn_high_n_s32(vrshrn_n_s32(v593, 0xDuLL), v591, 0xDuLL);
    v167 = vrshrn_high_n_s32(vrshrn_n_s32(v555, 0xDuLL), v553, 0xDuLL);
    v168 = vqaddq_s16(v705, v654);
    v169 = vqaddq_s16(v720, v659);
    v170 = vqaddq_s16(v168, v167);
    v171 = vqaddq_s16(v169, v166);
    v172 = vdupq_n_s16(0x1FF6u);
    v173 = vdupq_n_s16(0x192u);
    v556 = vmlal_s16(vmull_s16(*v170.i8, *v173.i8), *v171.i8, *v172.i8);
    v554 = vmlal_high_s16(vmull_high_s16(v170, v173), v171, v172);
    v174 = vdupq_n_s16(0xE00Au);
    v594 = vmlal_s16(vmull_s16(*v170.i8, *v174.i8), *v171.i8, *v173.i8);
    v592 = vmlal_high_s16(vmull_high_s16(v170, v174), v171, v173);
    v175 = vqsubq_s16(v168, v167);
    v176 = vqsubq_s16(v169, v166);
    v177 = vdupq_n_s16(0x157Du);
    v178 = vdupq_n_s16(0x17B6u);
    v544 = vmlal_s16(vmull_s16(*v175.i8, *v178.i8), *v176.i8, *v177.i8);
    v543 = vmlal_high_s16(vmull_high_s16(v175, v178), v176, v177);
    v179 = vdupq_n_s16(0xEA83u);
    v541 = vmlal_high_s16(vmull_high_s16(v175, v179), v176, v178);
    v542 = vmlal_s16(vmull_s16(*v175.i8, *v179.i8), *v176.i8, *v178.i8);
    v180 = vqsubq_s16(v705, v654);
    v181 = vqsubq_s16(v720, v659);
    v182 = vrshrn_high_n_s32(vrshrn_n_s32(v571, 0xDuLL), v569, 0xDuLL);
    v183 = vrshrn_high_n_s32(vrshrn_n_s32(v567, 0xDuLL), v565, 0xDuLL);
    v184 = vqsubq_s16(v180, v183);
    v185 = vqsubq_s16(v181, v182);
    v186 = vdupq_n_s16(0x1CEDu);
    v187 = vdupq_n_s16(0xDAFu);
    v568 = vmlal_s16(vmull_s16(*v184.i8, *v187.i8), *v185.i8, *v186.i8);
    v566 = vmlal_high_s16(vmull_high_s16(v184, v187), v185, v186);
    v188 = vdupq_n_s16(0xE313u);
    v572 = vmlal_s16(vmull_s16(*v184.i8, *v188.i8), *v185.i8, *v187.i8);
    v570 = vmlal_high_s16(vmull_high_s16(v184, v188), v185, v187);
    v189 = vqaddq_s16(v180, v183);
    v190 = vqaddq_s16(v181, v182);
    v191 = vdupq_n_s16(0xF538u);
    v192 = vmull_s16(*v189.i8, *v191.i8);
    v193 = vmull_high_s16(v189, v191);
    v194 = vdupq_n_s16(0x1E21u);
    v529 = vmlal_high_s16(v193, v190, v194);
    v530 = vmlal_s16(v192, *v190.i8, *v194.i8);
    v195 = vrshrn_high_n_s32(vrshrn_n_s32(v551, 0xDuLL), v549, 0xDuLL);
    v196 = vrshrn_high_n_s32(vrshrn_n_s32(v547, 0xDuLL), v545, 0xDuLL);
    v197 = vqsubq_s16(v712, v655);
    v198 = vqsubq_s16(v713, v658);
    v199 = vqaddq_s16(v197, v196);
    v200 = vqaddq_s16(v198, v195);
    v201 = vdupq_n_s16(0x1F0Au);
    v202 = vdupq_n_s16(0x7C6u);
    v526 = vmlal_s16(vmull_s16(*v199.i8, *v202.i8), *v200.i8, *v201.i8);
    v525 = vmlal_high_s16(vmull_high_s16(v199, v202), v200, v201);
    v203 = vdupq_n_s16(0xE0F6u);
    v552 = vmlal_s16(vmull_s16(*v199.i8, *v203.i8), *v200.i8, *v202.i8);
    v550 = vmlal_high_s16(vmull_high_s16(v199, v203), v200, v202);
    v204 = vqsubq_s16(v197, v196);
    v205 = vqsubq_s16(v198, v195);
    v206 = vdupq_n_s16(0x1074u);
    v207 = vdupq_n_s16(0x1B73u);
    v548 = vmlal_s16(vmull_s16(*v204.i8, *v207.i8), *v205.i8, *v206.i8);
    v546 = vmlal_high_s16(vmull_high_s16(v204, v207), v205, v206);
    v208 = vdupq_n_s16(0xEF8Cu);
    v531 = vmlal_high_s16(vmull_high_s16(v204, v208), v205, v207);
    v532 = vmlal_s16(vmull_s16(*v204.i8, *v208.i8), *v205.i8, *v207.i8);
    v209 = vqaddq_s16(v712, v655);
    v210 = vqaddq_s16(v713, v658);
    v211 = vrshrn_high_n_s32(vrshrn_n_s32(v539, 0xDuLL), v537, 0xDuLL);
    v212 = vrshrn_high_n_s32(vrshrn_n_s32(v535, 0xDuLL), v533, 0xDuLL);
    v213 = vqsubq_s16(v209, v212);
    v214 = vqsubq_s16(v210, v211);
    v215 = vdupq_n_s16(0x19B4u);
    v216 = vdupq_n_s16(0x1310u);
    v528 = vmlal_s16(vmull_s16(*v213.i8, *v216.i8), *v214.i8, *v215.i8);
    v527 = vmlal_high_s16(vmull_high_s16(v213, v216), v214, v215);
    v217 = vdupq_n_s16(0xE64Cu);
    v534 = vmlal_high_s16(vmull_high_s16(v213, v217), v214, v216);
    v536 = vmlal_s16(vmull_s16(*v213.i8, *v217.i8), *v214.i8, *v216.i8);
    v218 = vqaddq_s16(v209, v212);
    v219 = vqaddq_s16(v210, v211);
    v220 = vdupq_n_s16(0x4B2u);
    v221 = vdupq_n_s16(0x1FA7u);
    v540 = vmlal_s16(vmull_s16(*v218.i8, *v221.i8), *v219.i8, *v220.i8);
    v538 = vmlal_high_s16(vmull_high_s16(v218, v221), v219, v220);
    v222 = vdupq_n_s16(0xFB4Eu);
    v499 = vmlal_high_s16(vmull_high_s16(v218, v222), v219, v221);
    v500 = vmlal_s16(vmull_s16(*v218.i8, *v222.i8), *v219.i8, *v221.i8);
    v223 = vrshrn_high_n_s32(vrshrn_n_s32(v563, 0xDuLL), v561, 0xDuLL);
    v224 = vrshrn_high_n_s32(vrshrn_n_s32(v559, 0xDuLL), v557, 0xDuLL);
    v482 = vrshrn_high_n_s32(vrshrn_n_s32(v109, 0xDuLL), v110, 0xDuLL);
    v485 = vrshrn_high_n_s32(vrshrn_n_s32(v111, 0xDuLL), v112, 0xDuLL);
    v486 = vqaddq_s16(v661, v224);
    v481 = vqaddq_s16(v692, v223);
    v225 = vqsubq_s16(v486, v485);
    v226 = vqsubq_s16(v481, v482);
    v227 = vdupq_n_s16(0x1611u);
    v228 = vdupq_n_s16(0x172Du);
    v564 = vmlal_s16(vmull_s16(*v225.i8, *v228.i8), *v226.i8, *v227.i8);
    v562 = vmlal_high_s16(vmull_high_s16(v225, v228), v226, v227);
    v229 = vdupq_n_s16(0xE9EFu);
    v560 = vmlal_s16(vmull_s16(*v225.i8, *v229.i8), *v226.i8, *v228.i8);
    v558 = vmlal_high_s16(vmull_high_s16(v225, v229), v226, v228);
    v230 = vqsubq_s16(v661, v224);
    v231 = vqsubq_s16(v692, v223);
    v232 = vrshrn_high_n_s32(vrshrn_n_s32(v113, 0xDuLL), v114, 0xDuLL);
    v233 = vrshrn_high_n_s32(vrshrn_n_s32(v116, 0xDuLL), v117, 0xDuLL);
    v234 = vqsubq_s16(v230, v233);
    v235 = vqsubq_s16(v231, v232);
    v236 = vdupq_n_s16(0x1D41u);
    v237 = vdupq_n_s16(0xCF8u);
    v480 = vmlal_s16(vmull_s16(*v234.i8, *v237.i8), *v235.i8, *v236.i8);
    v479 = vmlal_high_s16(vmull_high_s16(v234, v237), v235, v236);
    v238 = vdupq_n_s16(0xE2BFu);
    v492 = vmlal_s16(vmull_s16(*v234.i8, *v238.i8), *v235.i8, *v237.i8);
    v489 = vmlal_high_s16(vmull_high_s16(v234, v238), v235, v237);
    v239 = vqaddq_s16(v230, v233);
    v240 = vqaddq_s16(v231, v232);
    v241 = vdupq_n_s16(0xB84u);
    v242 = vdupq_n_s16(0x1DDBu);
    v488 = vmlal_s16(vmull_s16(*v239.i8, *v242.i8), *v240.i8, *v241.i8);
    v487 = vmlal_high_s16(vmull_high_s16(v239, v242), v240, v241);
    v243 = vdupq_n_s16(0xF47Cu);
    v477 = vmlal_high_s16(vmull_high_s16(v239, v243), v240, v242);
    v478 = vmlal_s16(vmull_s16(*v239.i8, *v243.i8), *v240.i8, *v242.i8);
    v244 = vrshrn_high_n_s32(vrshrn_n_s32(v589, 0xDuLL), v587, 0xDuLL);
    v245 = vrshrn_high_n_s32(vrshrn_n_s32(v585, 0xDuLL), v583, 0xDuLL);
    v246 = vrshrn_high_n_s32(vrshrn_n_s32(v483, 0xDuLL), v131, 0xDuLL);
    v247 = vrshrn_high_n_s32(vrshrn_n_s32(v132, 0xDuLL), v133, 0xDuLL);
    v248 = vqsubq_s16(v668, v245);
    v249 = vqsubq_s16(v685, v244);
    v250 = vqaddq_s16(v248, v247);
    v251 = vqaddq_s16(v249, v246);
    v252 = vdupq_n_s16(0x1F39u);
    v253 = vdupq_n_s16(0x703u);
    v484 = vmlal_s16(vmull_s16(*v250.i8, *v253.i8), *v251.i8, *v252.i8);
    v476 = vmlal_high_s16(vmull_high_s16(v250, v253), v251, v252);
    v254 = vdupq_n_s16(0xE0C7u);
    v590 = vmlal_s16(vmull_s16(*v250.i8, *v254.i8), *v251.i8, *v253.i8);
    v588 = vmlal_high_s16(vmull_high_s16(v250, v254), v251, v253);
    v255 = vqsubq_s16(v248, v247);
    v256 = vqsubq_s16(v249, v246);
    v257 = vdupq_n_s16(0x111Fu);
    v258 = vdupq_n_s16(0x1B09u);
    v586 = vmlal_s16(vmull_s16(*v255.i8, *v258.i8), *v256.i8, *v257.i8);
    v584 = vmlal_high_s16(vmull_high_s16(v255, v258), v256, v257);
    v259 = vdupq_n_s16(0xEEE1u);
    v474 = vmlal_high_s16(vmull_high_s16(v255, v259), v256, v258);
    v475 = vmlal_s16(vmull_s16(*v255.i8, *v259.i8), *v256.i8, *v258.i8);
    v260 = vqaddq_s16(v668, v245);
    v261 = vqaddq_s16(v685, v244);
    v262 = vrshrn_high_n_s32(vrshrn_n_s32(v497, 0xDuLL), v495, 0xDuLL);
    v263 = vrshrn_high_n_s32(vrshrn_n_s32(v493, 0xDuLL), v490, 0xDuLL);
    v264 = vqsubq_s16(v260, v263);
    v265 = vqsubq_s16(v261, v262);
    v266 = vdupq_n_s16(0x1A2Au);
    v267 = vdupq_n_s16(0x126Du);
    v473 = vmlal_s16(vmull_s16(*v264.i8, *v267.i8), *v265.i8, *v266.i8);
    v472 = vmlal_high_s16(vmull_high_s16(v264, v267), v265, v266);
    v268 = vdupq_n_s16(0xE5D6u);
    v491 = vmlal_high_s16(vmull_high_s16(v264, v268), v265, v267);
    v269 = vqaddq_s16(v260, v263);
    v270 = vqaddq_s16(v261, v262);
    v271 = vdupq_n_s16(0x579u);
    v272 = vdupq_n_s16(0x1F87u);
    v498 = vmlal_s16(vmull_s16(*v269.i8, *v272.i8), *v270.i8, *v271.i8);
    v494 = vmlal_s16(vmull_s16(*v264.i8, *v268.i8), *v265.i8, *v267.i8);
    v496 = vmlal_high_s16(vmull_high_s16(v269, v272), v270, v271);
    v273 = vdupq_n_s16(0xFA87u);
    v470 = vmlal_high_s16(vmull_high_s16(v269, v273), v270, v272);
    v471 = vmlal_s16(vmull_s16(*v269.i8, *v273.i8), *v270.i8, *v272.i8);
    v274 = vrshrn_high_n_s32(vrshrn_n_s32(v603, 0xDuLL), v601, 0xDuLL);
    v275 = vrshrn_high_n_s32(vrshrn_n_s32(v599, 0xDuLL), v597, 0xDuLL);
    v276 = vrshrn_high_n_s32(vrshrn_n_s32(v507, 0xDuLL), v505, 0xDuLL);
    v277 = vrshrn_high_n_s32(vrshrn_n_s32(v503, 0xDuLL), v501, 0xDuLL);
    v278 = vqaddq_s16(v669, v275);
    v279 = vqaddq_s16(v684, v274);
    v280 = vqaddq_s16(v278, v277);
    v281 = vqaddq_s16(v279, v276);
    v282 = vdupq_n_s16(0x1FC2u);
    v283 = vdupq_n_s16(0x3EBu);
    v504 = vmlal_s16(vmull_s16(*v280.i8, *v283.i8), *v281.i8, *v282.i8);
    v502 = vmlal_high_s16(vmull_high_s16(v280, v283), v281, v282);
    v284 = vdupq_n_s16(0xE03Eu);
    v604 = vmlal_s16(vmull_s16(*v280.i8, *v284.i8), *v281.i8, *v283.i8);
    v602 = vmlal_high_s16(vmull_high_s16(v280, v284), v281, v283);
    v285 = vqsubq_s16(v278, v277);
    v286 = vqsubq_s16(v279, v276);
    v287 = vdupq_n_s16(0x13B0u);
    v288 = vdupq_n_s16(0x193Au);
    v600 = vmlal_s16(vmull_s16(*v285.i8, *v288.i8), *v286.i8, *v287.i8);
    v598 = vmlal_high_s16(vmull_high_s16(v285, v288), v286, v287);
    v289 = vdupq_n_s16(0xEC50u);
    v506 = vmlal_high_s16(vmull_high_s16(v285, v289), v286, v288);
    v508 = vmlal_s16(vmull_s16(*v285.i8, *v289.i8), *v286.i8, *v288.i8);
    v290 = vqsubq_s16(v669, v275);
    v291 = vqsubq_s16(v684, v274);
    v292 = vrshrn_high_n_s32(vrshrn_n_s32(v515, 0xDuLL), v513, 0xDuLL);
    v293 = vrshrn_high_n_s32(vrshrn_n_s32(v511, 0xDuLL), v509, 0xDuLL);
    v294 = vqsubq_s16(v290, v293);
    v295 = vqsubq_s16(v291, v292);
    v296 = vdupq_n_s16(0x1BD8u);
    v297 = vdupq_n_s16(0xFC6u);
    v469 = vmlal_s16(vmull_s16(*v294.i8, *v297.i8), *v295.i8, *v296.i8);
    v468 = vmlal_high_s16(vmull_high_s16(v294, v297), v295, v296);
    v298 = vdupq_n_s16(0xE428u);
    v512 = vmlal_high_s16(vmull_high_s16(v294, v298), v295, v297);
    v514 = vmlal_s16(vmull_s16(*v294.i8, *v298.i8), *v295.i8, *v297.i8);
    v299 = vqaddq_s16(v290, v293);
    v300 = vqaddq_s16(v291, v292);
    v301 = vdupq_n_s16(0x889u);
    v302 = vdupq_n_s16(0x1ED7u);
    v516 = vmlal_s16(vmull_s16(*v299.i8, *v302.i8), *v300.i8, *v301.i8);
    v510 = vmlal_high_s16(vmull_high_s16(v299, v302), v300, v301);
    v467 = vmlal_s16(vmull_s16(*v299.i8, v460), *v300.i8, *v302.i8);
    v466 = vmlal_high_s16(vmull_s16(*&vextq_s8(v299, v299, 8uLL), v460), v300, v302);
    v303 = vrshrn_high_n_s32(vrshrn_n_s32(v611, 0xDuLL), v609, 0xDuLL);
    v304 = vrshrn_high_n_s32(vrshrn_n_s32(v607, 0xDuLL), v605, 0xDuLL);
    v305 = vrshrn_high_n_s32(vrshrn_n_s32(v523, 0xDuLL), v521, 0xDuLL);
    v306 = vrshrn_high_n_s32(vrshrn_n_s32(v519, 0xDuLL), v517, 0xDuLL);
    v522 = vqsubq_s16(v676, v304);
    v524 = vqsubq_s16(v677, v303);
    v307 = vqsubq_s16(v522, v306);
    v308 = vqsubq_s16(v524, v305);
    v309 = vdupq_n_s16(0xE63u);
    v310 = vdupq_n_s16(0x1C95u);
    v612 = vmlal_s16(vmull_s16(*v307.i8, *v310.i8), *v308.i8, *v309.i8);
    v610 = vmlal_high_s16(vmull_high_s16(v307, v310), v308, v309);
    v311 = vdupq_n_s16(0xF19Du);
    v518 = vmlal_s16(vmull_s16(*v307.i8, *v311.i8), *v308.i8, *v310.i8);
    v464 = vmlal_high_s16(vmull_high_s16(v307, v311), v308, v310);
    v312 = vqaddq_s16(v676, v304);
    v313 = vqaddq_s16(v677, v303);
    v314 = vrshrn_high_n_s32(vrshrn_n_s32(v162, 0xDuLL), v163, 0xDuLL);
    v315 = vrshrn_high_n_s32(vrshrn_n_s32(v164, 0xDuLL), v165, 0xDuLL);
    v316 = vqsubq_s16(v312, v315);
    v317 = vdupq_n_s16(0x183Bu);
    v318 = vqsubq_s16(v313, v314);
    v319 = vdupq_n_s16(0x14E7u);
    v463 = vmlal_s16(vmull_s16(*v316.i8, *v319.i8), *v318.i8, *v317.i8);
    v320 = vmlal_high_s16(vmull_high_s16(v316, v319), v318, v317);
    v321 = vdupq_n_s16(0xE7C5u);
    v520 = vmlal_s16(vmull_s16(*v316.i8, *v321.i8), *v318.i8, *v319.i8);
    v465 = vmlal_high_s16(vmull_high_s16(v316, v321), v318, v319);
    v322 = vqaddq_s16(v312, v315);
    v323 = vdupq_n_s16(0x25Bu);
    v324 = vdupq_n_s16(0x1FEAu);
    v325 = vqaddq_s16(v313, v314);
    v608 = vmlal_s16(vmull_s16(*v322.i8, *v324.i8), *v325.i8, *v323.i8);
    v326 = vdupq_n_s16(0xFDA5u);
    v606 = vmlal_high_s16(vmull_high_s16(v322, v324), v325, v323);
    v327 = vmlal_s16(vmull_s16(*v322.i8, *v326.i8), *v325.i8, *v324.i8);
    v328 = vmlal_high_s16(vmull_high_s16(v322, v326), v325, v324);
    v329 = vqaddq_s16(v486, v485);
    v330 = vqaddq_s16(v481, v482);
    v331 = vdupq_n_s16(0x1FFEu);
    v332 = vmlal_s16(vmull_s16(*v329.i8, 0xC900C900C900C9), *v330.i8, *v331.i8);
    v311.i64[0] = 0xC900C900C900C9;
    v311.i64[1] = 0xC900C900C900C9;
    v333 = vmlal_high_s16(vmull_high_s16(v329, v311), v330, v331);
    v334 = vdupq_n_s16(0xE002u);
    v638[63] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v329.i8, *v334.i8), *v330.i8, 0xC900C900C900C9), 0xDuLL), vmlal_high_s16(vmull_high_s16(v329, v334), v330, v311), 0xDuLL);
    v638[1] = vrshrn_high_n_s32(vrshrn_n_s32(v332, 0xDuLL), v333, 0xDuLL);
    v638[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v639.i8, *v634.i8), *v640.i8, *v634.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v639, v634), v640, v634), 0xDuLL);
    v335 = vqaddq_s16(v522, v306);
    v638[3] = vrshrn_high_n_s32(vrshrn_n_s32(v327, 0xDuLL), v328, 0xDuLL);
    v638[2] = vrshrn_high_n_s32(vrshrn_n_s32(v556, 0xDuLL), v554, 0xDuLL);
    v336 = vqaddq_s16(v524, v305);
    v638[5] = vrshrn_high_n_s32(vrshrn_n_s32(v504, 0xDuLL), v502, 0xDuLL);
    v638[4] = vrshrn_high_n_s32(vrshrn_n_s32(v614, 0xDuLL), v613, 0xDuLL);
    v638[7] = vrshrn_high_n_s32(vrshrn_n_s32(v471, 0xDuLL), v470, 0xDuLL);
    v638[6] = vrshrn_high_n_s32(vrshrn_n_s32(v500, 0xDuLL), v499, 0xDuLL);
    v638[9] = vrshrn_high_n_s32(vrshrn_n_s32(v484, 0xDuLL), v476, 0xDuLL);
    v638[8] = vrshrn_high_n_s32(vrshrn_n_s32(v624, 0xDuLL), v623, 0xDuLL);
    v638[11] = vrshrn_high_n_s32(vrshrn_n_s32(v467, 0xDuLL), v466, 0xDuLL);
    v638[10] = vrshrn_high_n_s32(vrshrn_n_s32(v526, 0xDuLL), v525, 0xDuLL);
    v337 = vdupq_n_s16(0x1E63u);
    v638[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v335.i8, 0xA0A0A0A0A0A0A0ALL), *v336.i8, *v337.i8), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v335, v335, 8uLL), 0xA0A0A0A0A0A0A0ALL), v336, v337), 0xDuLL);
    v638[12] = vrshrn_high_n_s32(vrshrn_n_s32(v575, 0xDuLL), v574, 0xDuLL);
    v638[15] = vrshrn_high_n_s32(vrshrn_n_s32(v478, 0xDuLL), v477, 0xDuLL);
    v638[14] = vrshrn_high_n_s32(vrshrn_n_s32(v530, 0xDuLL), v529, 0xDuLL);
    v638[17] = vrshrn_high_n_s32(vrshrn_n_s32(v480, 0xDuLL), v479, 0xDuLL);
    v638[16] = vrshrn_high_n_s32(vrshrn_n_s32(v630, 0xDuLL), v628, 0xDuLL);
    v638[19] = vrshrn_high_n_s32(vrshrn_n_s32(v518, 0xDuLL), v464, 0xDuLL);
    v638[18] = vrshrn_high_n_s32(vrshrn_n_s32(v568, 0xDuLL), v566, 0xDuLL);
    v638[21] = vrshrn_high_n_s32(vrshrn_n_s32(v469, 0xDuLL), v468, 0xDuLL);
    v638[20] = vrshrn_high_n_s32(vrshrn_n_s32(v147, 0xDuLL), v582, 0xDuLL);
    v638[23] = vrshrn_high_n_s32(vrshrn_n_s32(v475, 0xDuLL), v474, 0xDuLL);
    v638[22] = vrshrn_high_n_s32(vrshrn_n_s32(v532, 0xDuLL), v531, 0xDuLL);
    v638[25] = vrshrn_high_n_s32(vrshrn_n_s32(v473, 0xDuLL), v472, 0xDuLL);
    v638[24] = vrshrn_high_n_s32(vrshrn_n_s32(v616, 0xDuLL), v615, 0xDuLL);
    v638[27] = vrshrn_high_n_s32(vrshrn_n_s32(v508, 0xDuLL), v506, 0xDuLL);
    v638[26] = vrshrn_high_n_s32(vrshrn_n_s32(v528, 0xDuLL), v527, 0xDuLL);
    v638[29] = vrshrn_high_n_s32(vrshrn_n_s32(v463, 0xDuLL), v320, 0xDuLL);
    v638[28] = vrshrn_high_n_s32(vrshrn_n_s32(v596, 0xDuLL), v595, 0xDuLL);
    v638[31] = vrshrn_high_n_s32(vrshrn_n_s32(v560, 0xDuLL), v558, 0xDuLL);
    v638[30] = vrshrn_high_n_s32(vrshrn_n_s32(v542, 0xDuLL), v541, 0xDuLL);
    v638[33] = vrshrn_high_n_s32(vrshrn_n_s32(v564, 0xDuLL), v562, 0xDuLL);
    v638[32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v639.i8, *v632.i8), *v640.i8, *v634.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v639, v632), v640, v634), 0xDuLL);
    v638[35] = vrshrn_high_n_s32(vrshrn_n_s32(v520, 0xDuLL), v465, 0xDuLL);
    v638[34] = vrshrn_high_n_s32(vrshrn_n_s32(v544, 0xDuLL), v543, 0xDuLL);
    v638[37] = vrshrn_high_n_s32(vrshrn_n_s32(v600, 0xDuLL), v598, 0xDuLL);
    v638[36] = vrshrn_high_n_s32(vrshrn_n_s32(v128, 0xDuLL), v130, 0xDuLL);
    v638[39] = vrshrn_high_n_s32(vrshrn_n_s32(v494, 0xDuLL), v491, 0xDuLL);
    v638[38] = vrshrn_high_n_s32(vrshrn_n_s32(v536, 0xDuLL), v534, 0xDuLL);
    v638[41] = vrshrn_high_n_s32(vrshrn_n_s32(v586, 0xDuLL), v584, 0xDuLL);
    v638[40] = vrshrn_high_n_s32(vrshrn_n_s32(v618, 0xDuLL), v617, 0xDuLL);
    v638[43] = vrshrn_high_n_s32(vrshrn_n_s32(v514, 0xDuLL), v512, 0xDuLL);
    v638[42] = vrshrn_high_n_s32(vrshrn_n_s32(v548, 0xDuLL), v546, 0xDuLL);
    v638[45] = vrshrn_high_n_s32(vrshrn_n_s32(v612, 0xDuLL), v610, 0xDuLL);
    v638[44] = vrshrn_high_n_s32(vrshrn_n_s32(v580, 0xDuLL), v578, 0xDuLL);
    v638[47] = vrshrn_high_n_s32(vrshrn_n_s32(v492, 0xDuLL), v489, 0xDuLL);
    v638[46] = vrshrn_high_n_s32(vrshrn_n_s32(v572, 0xDuLL), v570, 0xDuLL);
    v338 = vdupq_n_s16(0xE19Du);
    v638[49] = vrshrn_high_n_s32(vrshrn_n_s32(v488, 0xDuLL), v487, 0xDuLL);
    v638[48] = vrshrn_high_n_s32(vrshrn_n_s32(v626, 0xDuLL), v625, 0xDuLL);
    v638[51] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v335.i8, *v338.i8), *v336.i8, 0xA0A0A0A0A0A0A0ALL), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v336, v336, 8uLL), 0xA0A0A0A0A0A0A0ALL), v335, v338), 0xDuLL);
    v638[52] = vrshrn_high_n_s32(vrshrn_n_s32(v160, 0xDuLL), v576, 0xDuLL);
    v638[53] = vrshrn_high_n_s32(vrshrn_n_s32(v516, 0xDuLL), v510, 0xDuLL);
    v638[54] = vrshrn_high_n_s32(vrshrn_n_s32(v552, 0xDuLL), v550, 0xDuLL);
    v638[55] = vrshrn_high_n_s32(vrshrn_n_s32(v590, 0xDuLL), v588, 0xDuLL);
    v638[56] = vrshrn_high_n_s32(vrshrn_n_s32(v622, 0xDuLL), v621, 0xDuLL);
    v638[57] = vrshrn_high_n_s32(vrshrn_n_s32(v498, 0xDuLL), v496, 0xDuLL);
    v638[58] = vrshrn_high_n_s32(vrshrn_n_s32(v540, 0xDuLL), v538, 0xDuLL);
    v638[59] = vrshrn_high_n_s32(vrshrn_n_s32(v604, 0xDuLL), v602, 0xDuLL);
    v638[60] = vrshrn_high_n_s32(vrshrn_n_s32(v620, 0xDuLL), v619, 0xDuLL);
    v638[61] = vrshrn_high_n_s32(vrshrn_n_s32(v608, 0xDuLL), v606, 0xDuLL);
    v638[62] = vrshrn_high_n_s32(vrshrn_n_s32(v594, 0xDuLL), v592, 0xDuLL);
    do
    {
      v638[v56] = vrshrq_n_s16(v638[v56], 2uLL);
      ++v56;
    }

    while (v56 != 64);
    v339 = v4 + 4;
    for (i8 = 112; i8 != 1136; i8 += 128)
    {
      v341 = *&v637[i8 + 1808];
      v342 = *&v637[i8 + 1824];
      v343 = vtrn1q_s16(v341, v342);
      v344 = vtrn2q_s16(v341, v342);
      v345 = *&v637[i8 + 1840];
      v346 = *&v637[i8 + 1856];
      v347 = vtrn1q_s16(v345, v346);
      v348 = vtrn2q_s16(v345, v346);
      v349 = *&v637[i8 + 1872];
      v350 = *&v637[i8 + 1888];
      v351 = vtrn1q_s16(v349, v350);
      v352 = vtrn2q_s16(v349, v350);
      v353 = *&v637[i8 + 1904];
      v354 = v638[i8 / 0x10];
      v355 = vtrn1q_s16(v353, v354);
      v356 = vtrn2q_s16(v353, v354);
      v357 = vtrn1q_s32(v343, v347);
      v358 = vtrn2q_s32(v343, v347);
      v359 = vtrn1q_s32(v344, v348);
      v360 = vtrn2q_s32(v344, v348);
      v361 = vtrn1q_s32(v351, v355);
      v362 = vtrn2q_s32(v351, v355);
      v363 = vzip2q_s64(v357, v361);
      v357.i64[1] = v361.i64[0];
      v364 = vtrn1q_s32(v352, v356);
      v365 = vtrn2q_s32(v352, v356);
      v366 = vzip2q_s64(v359, v364);
      v359.i64[1] = v364.i64[0];
      v367 = vzip2q_s64(v358, v362);
      v358.i64[1] = v362.i64[0];
      v362.i64[0] = v360.i64[0];
      v362.i64[1] = v365.i64[0];
      v339[-4] = v357;
      v339[-3] = v359;
      v339[-2] = v358;
      v339[-1] = v362;
      *v339 = v363;
      v339[1] = v366;
      v339[2] = v367;
      v339[3] = vzip2q_s64(v360, v365);
      v339 += 16;
    }

    v5 = 0;
    v4 = v637;
    v3 = 8;
    v6 = v634;
    v7 = v632;
  }

  while ((v9 & 1) != 0);
  v368 = 0;
  v369 = v459 + 1;
  v370 = vdupq_n_s16(0x16A0u);
  v371 = vdupq_n_s16(0xE960u);
  v372 = vdupq_n_s16(0x1D90u);
  v373 = vdupq_n_s16(0xC3Eu);
  v374 = vdupq_n_s16(0xE270u);
  v635 = vdupq_n_s16(0xF3C2u);
  v633 = vdupq_n_s16(0x1F62u);
  v375 = vdupq_n_s16(0x63Eu);
  v631 = vdupq_n_s16(0xE09Eu);
  v629 = vdupq_n_s16(0x11C8u);
  v376 = vdupq_n_s16(0x1A9Cu);
  v627 = vdupq_n_s16(0xEE38u);
  v377 = vdupq_n_s16(0x1FD8u);
  v378 = vdupq_n_s16(0x322u);
  v379 = vdupq_n_s16(0xE028u);
  v380 = vdupq_n_s16(0x144Cu);
  result = 2378;
  v382 = v636;
  do
  {
    v383 = 0;
    v384 = &v636[256 * v368];
    for (i9 = 240; i9 != 112; i9 -= 16)
    {
      *&v818[v383] = vqaddq_s16(*&v382[v383], *&v382[i9]);
      v383 += 16;
    }

    v386 = 128;
    do
    {
      *&v818[v386] = vqsubq_s16(*&v382[i9], *&v382[v386]);
      i9 -= 16;
      v386 += 16;
    }

    while (i9 != -16);
    v387 = 0;
    for (i10 = 112; i10 != 48; i10 -= 16)
    {
      *(&v778 + v387) = vqaddq_s16(*&v818[v387], *&v818[i10]);
      v387 += 16;
    }

    v389 = 64;
    do
    {
      *(&v778 + v389) = vqsubq_s16(*&v818[i10], *&v818[v389]);
      i10 -= 16;
      v389 += 16;
    }

    while (i10 != -16);
    v390 = 0;
    v391 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v821.i8, *v370.i8), *v824.i8, *v370.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v821, v370), v824, v370), 0xDuLL);
    v392 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v821.i8, *v371.i8), *v824.i8, *v370.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v821, v371), v824, v370), 0xDuLL);
    v393 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v822.i8, *v370.i8), *v823.i8, *v370.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v822, v370), v823, v370), 0xDuLL);
    v394 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v822.i8, *v371.i8), *v823.i8, *v370.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v822, v371), v823, v370), 0xDuLL);
    v395 = vqaddq_s16(v778, v781);
    v396 = vqaddq_s16(v779, v780);
    v397 = vqsubq_s16(v779, v780);
    v398 = vqsubq_s16(v778, v781);
    v399 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v783.i8, *v370.i8), *v784.i8, *v370.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v783, v370), v784, v370), 0xDuLL);
    v400 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v783.i8, *v371.i8), *v784.i8, *v370.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v783, v371), v784, v370), 0xDuLL);
    v401 = vqaddq_s16(v819, v394);
    v402 = vqaddq_s16(v820, v392);
    v403 = vqsubq_s16(v820, v392);
    v404 = vqsubq_s16(v819, v394);
    v405 = vqsubq_s16(v826, v393);
    v406 = vqsubq_s16(v825, v391);
    v407 = vqaddq_s16(v825, v391);
    v408 = vqaddq_s16(v826, v393);
    v409 = vmlal_s16(vmull_s16(*v396.i8, *v371.i8), *v395.i8, *v370.i8);
    v410 = vmlal_high_s16(vmull_high_s16(v396, v371), v395, v370);
    v411 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v396.i8, *v370.i8), *v395.i8, *v370.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v396, v370), v395, v370), 0xDuLL);
    v412 = vrshrn_high_n_s32(vrshrn_n_s32(v409, 0xDuLL), v410, 0xDuLL);
    v413 = vmlal_s16(vmull_s16(*v397.i8, *v373.i8), *v398.i8, *v372.i8);
    v414 = vmlal_high_s16(vmull_high_s16(v397, v373), v398, v372);
    v415 = vmlal_s16(vmull_s16(*v397.i8, *v374.i8), *v398.i8, *v373.i8);
    v416 = vmlal_high_s16(vmull_high_s16(v397, v374), v398, v373);
    v417 = vrshrn_high_n_s32(vrshrn_n_s32(v413, 0xDuLL), v414, 0xDuLL);
    v418 = vrshrn_high_n_s32(vrshrn_n_s32(v415, 0xDuLL), v416, 0xDuLL);
    v419 = vqaddq_s16(v782, v400);
    v420 = vqsubq_s16(v782, v400);
    v421 = vqsubq_s16(v785, v399);
    v422 = vqaddq_s16(v785, v399);
    v423 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v402.i8, *v373.i8), *v407.i8, *v372.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v402, v373), v407, v372), 0xDuLL);
    v424 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v402.i8, *v374.i8), *v407.i8, *v373.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v402, v374), v407, v373), 0xDuLL);
    v425 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v403.i8, *v374.i8), *v406.i8, *v373.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v403, v374), v406, v373), 0xDuLL);
    v426 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v403.i8, *v635.i8), *v406.i8, *v374.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v403, v635), v406, v374), 0xDuLL);
    v427 = vmlal_s16(vmull_s16(*v420.i8, *v627.i8), *v421.i8, *v376.i8);
    v428 = vmlal_high_s16(vmull_high_s16(v420, v627), v421, v376);
    v429 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v420.i8, *v376.i8), *v421.i8, *v629.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v420, v376), v421, v629), 0xDuLL);
    v430 = vrshrn_high_n_s32(vrshrn_n_s32(v427, 0xDuLL), v428, 0xDuLL);
    v431 = vqaddq_s16(v401, v424);
    v432 = vqsubq_s16(v401, v424);
    v433 = vqsubq_s16(v404, v426);
    v434 = vqaddq_s16(v404, v426);
    v435 = vqaddq_s16(v405, v425);
    v436 = vqsubq_s16(v405, v425);
    v437 = vqsubq_s16(v408, v423);
    v438 = vqaddq_s16(v408, v423);
    *v384 = v411;
    v384[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v431.i8, *v378.i8), *v438.i8, *v377.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v431, v378), v438, v377), 0xDuLL);
    v439 = vdupq_n_s16(0x18BCu);
    v440 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v431.i8, *v379.i8), *v438.i8, *v378.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v431, v379), v438, v378), 0xDuLL);
    v441 = vdupq_n_s16(0x1C38u);
    v442 = vdupq_n_s16(0xF16u);
    v384[14] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v419.i8, *v631.i8), *v422.i8, *v375.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v419, v631), v422, v375), 0xDuLL);
    v384[15] = v440;
    v443 = vmlal_s16(vmull_s16(*v433.i8, *v442.i8), *v436.i8, *v441.i8);
    v444 = vdupq_n_s16(0xE3C8u);
    v445 = vmlal_high_s16(vmull_high_s16(v433, v442), v436, v441);
    v446 = vmlal_s16(vmull_s16(*v433.i8, *v444.i8), *v436.i8, *v442.i8);
    v447 = vmull_high_s16(v433, v444);
    v448 = vdupq_n_s16(0x94Au);
    v449 = vmlal_high_s16(v447, v436, v442);
    v450 = vdupq_n_s16(0x1EA0u);
    v451 = vmlal_s16(vmull_s16(*v434.i8, *v450.i8), *v435.i8, *v448.i8);
    v452 = vmlal_high_s16(vmull_high_s16(v434, v450), v435, v448);
    v453 = vdupq_n_s16(0xF6B6u);
    v454 = vmlal_s16(vmull_s16(*v434.i8, *v453.i8), *v435.i8, *v450.i8);
    v455 = vmlal_high_s16(vmull_high_s16(v434, v453), v435, v450);
    v456 = vdupq_n_s16(0xEBB4u);
    v384[8] = v412;
    v384[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v432.i8, *v439.i8), *v437.i8, *v380.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v432, v439), v437, v380), 0xDuLL);
    v384[6] = v430;
    v384[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v432.i8, *v456.i8), *v437.i8, *v439.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v432, v456), v437, v439), 0xDuLL);
    v384[4] = v417;
    v384[5] = vrshrn_high_n_s32(vrshrn_n_s32(v443, 0xDuLL), v445, 0xDuLL);
    v384[10] = v429;
    v384[11] = vrshrn_high_n_s32(vrshrn_n_s32(v446, 0xDuLL), v449, 0xDuLL);
    v384[12] = v418;
    v384[13] = vrshrn_high_n_s32(vrshrn_n_s32(v451, 0xDuLL), v452, 0xDuLL);
    v384[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v419.i8, *v375.i8), *v422.i8, *v633.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v419, v375), v422, v633), 0xDuLL);
    v384[3] = vrshrn_high_n_s32(vrshrn_n_s32(v454, 0xDuLL), v455, 0xDuLL);
    v457 = v369;
    do
    {
      v458 = *&v382[v390];
      v457[-1] = vmovl_s16(*v458.i8);
      *v457 = vmovl_high_s16(v458);
      v390 += 16;
      v457 += 8;
    }

    while (v390 != 256);
    ++v368;
    v382 += 256;
    v369 += 2;
  }

  while (v368 != 4);
  return result;
}

uint64_t sub_2779DFDDC(__int16 *a1, int32x4_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a3;
  v7 = a1;
  v48 = *MEMORY[0x277D85DE8];
  if ((0xF1FEuLL >> a4))
  {
    memset(v39, 0, 64);
    sub_277A78D0C(a4, 0xAu, v39);
    return sub_277A78E90(v7, a2, v5, v39, v40.i32, a5);
  }

  v8 = off_28866DB20[a4];
  v9 = off_28866D820[a4];
  v10 = 1;
  if (a4 <= 0xF)
  {
    if (((1 << a4) & 0x4110) != 0)
    {
LABEL_9:
      v7 = &a1[7 * a3];
      v5 = -a3;
      goto LABEL_10;
    }

    if (((1 << a4) & 0x80A0) != 0)
    {
      v10 = 0;
      goto LABEL_10;
    }

    if (a4 == 6)
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

LABEL_10:
  for (i = 0; i != 4; ++i)
  {
    (v8)(&v7[8 * i], &v40, v5, 13);
    for (j = 0; j != 128; j += 16)
    {
      *(&v40 + j) = vrshrq_n_s16(*(&v40 + j), 2uLL);
    }

    v15 = vtrn1q_s16(v40, v41);
    v16 = vtrn2q_s16(v40, v41);
    v17 = vtrn1q_s16(v42, v43);
    v18 = vtrn2q_s16(v42, v43);
    v19 = vtrn1q_s16(v44, v45);
    v20 = vtrn2q_s16(v44, v45);
    v21 = vtrn1q_s16(v46, v47);
    v22 = vtrn2q_s16(v46, v47);
    v23 = vtrn1q_s32(v15, v17);
    v24 = vtrn2q_s32(v15, v17);
    v25 = vtrn1q_s32(v16, v18);
    v26 = vtrn2q_s32(v16, v18);
    v27 = vtrn1q_s32(v19, v21);
    v28 = vtrn2q_s32(v19, v21);
    v29 = vzip2q_s64(v23, v27);
    v23.i64[1] = v27.i64[0];
    v30 = vtrn1q_s32(v20, v22);
    v31 = vtrn2q_s32(v20, v22);
    v32 = vzip2q_s64(v25, v30);
    v25.i64[1] = v30.i64[0];
    v33 = vzip2q_s64(v24, v28);
    v24.i64[1] = v28.i64[0];
    v28.i64[0] = v26.i64[0];
    v28.i64[1] = v31.i64[0];
    v34 = &v39[8 * i];
    *v34 = v23;
    v34[1] = v25;
    v34[2] = v24;
    v34[3] = v28;
    v34[4] = v29;
    v34[5] = v32;
    v34[6] = v33;
    v34[7] = vzip2q_s64(v26, v31);
  }

  if (v10)
  {
    v35 = v39;
  }

  else
  {
    v36 = v39;
    for (k = 496; k != -16; k -= 16)
    {
      v38 = *v36++;
      *(&v40 + k) = v38;
    }

    v35 = &v40;
  }

  return (v9)(v35, a2, 8, 12);
}

int32x4_t sub_2779E0024(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v10 = *MEMORY[0x277D85DE8];
  do
  {
    *&v9[v3] = vshlq_n_s16(*(a1 + v3), 2uLL);
    v3 += 16;
  }

  while (v3 != 512);
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = *&v9[v4];
    v7 = vmovl_s16(*v6.i8);
    result = vmovl_high_s16(v6);
    v5[-1] = v7;
    *v5 = result;
    v4 += 16;
    v5 = (v5 + 4 * a3);
  }

  while (v4 != 512);
  return result;
}

uint64_t sub_2779E00C4(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v266 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v202 = xmmword_277BEB8A0[16 * a4 - 157];
  v204 = xmmword_277BEB8A0[16 * a4 - 158];
  v206 = xmmword_277BEB8A0[16 * a4 - 155];
  v208 = xmmword_277BEB8A0[16 * a4 - 154];
  v209 = xmmword_277BEB8A0[16 * a4 - 153];
  v210 = xmmword_277BEB8A0[16 * a4 - 156];
  for (i = 496; i != 240; i -= 16)
  {
    *&v257[v4] = vqaddq_s16(*(result + v4), *(result + i));
    v4 += 16;
  }

  v8 = 240;
  v9 = 256;
  do
  {
    *&v257[v9] = vqsubq_s16(*(result + v8), *(result + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  for (j = 240; j != 112; j -= 16)
  {
    *&v240[v10] = vqaddq_s16(*&v257[v10], *&v257[j]);
    v10 += 16;
  }

  v12 = 112;
  v13 = 128;
  do
  {
    *&v240[v13] = vqsubq_s16(*&v257[v12], *&v257[v13]);
    v12 -= 16;
    v13 += 16;
  }

  while (v12 != -16);
  v14 = 0;
  v256 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v258.i8, *v6.i8, 1), *v265.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v258, *v6.i8, 1), v265, *v6.i8, 0), 0xDuLL);
  v255 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v6.i8, 1), *v264.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v6.i8, 1), v264, *v6.i8, 0), 0xDuLL);
  v249 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v258.i8, *v6.i8, 2), *v265.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v258, *v6.i8, 2), v265, *v6.i8, 1), 0xDuLL);
  v250 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v6.i8, 2), *v264.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v6.i8, 2), v264, *v6.i8, 1), 0xDuLL);
  v254 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v260.i8, *v6.i8, 1), *v263.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v260, *v6.i8, 1), v263, *v6.i8, 0), 0xDuLL);
  v253 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v261.i8, *v6.i8, 1), *v262.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v261, *v6.i8, 1), v262, *v6.i8, 0), 0xDuLL);
  v251 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v260.i8, *v6.i8, 2), *v263.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v260, *v6.i8, 2), v263, *v6.i8, 1), 0xDuLL);
  v252 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v261.i8, *v6.i8, 2), *v262.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v261, *v6.i8, 2), v262, *v6.i8, 1), 0xDuLL);
  for (k = 112; k != 48; k -= 16)
  {
    *(&v212 + v14) = vqaddq_s16(*&v240[v14], *&v240[k]);
    v14 += 16;
  }

  v16 = 48;
  v17 = 64;
  do
  {
    *(&v212 + v17) = vqsubq_s16(*&v240[v16], *&v240[v17]);
    v16 -= 16;
    v17 += 16;
  }

  while (v16 != -16);
  v223 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v243.i8, *v6.i8, 1), *v246.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v243, *v6.i8, 1), v246, *v6.i8, 0), 0xDuLL);
  v222 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v244.i8, *v6.i8, 1), *v245.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v244, *v6.i8, 1), v245, *v6.i8, 0), 0xDuLL);
  v18 = 368;
  v220 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v243.i8, *v6.i8, 2), *v246.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v243, *v6.i8, 2), v246, *v6.i8, 1), 0xDuLL);
  v221 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v244.i8, *v6.i8, 2), *v245.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v244, *v6.i8, 2), v245, *v6.i8, 1), 0xDuLL);
  v19 = 256;
  do
  {
    *(&v212 + v19) = vqaddq_s16(*&v257[v19], *&v240[v18]);
    v18 -= 16;
    v19 += 16;
  }

  while (v18 != 304);
  v20 = 320;
  do
  {
    *(&v212 + v20) = vqsubq_s16(*&v257[v18], *&v240[v20]);
    v18 -= 16;
    v20 += 16;
  }

  while (v18 != 240);
  v21 = 496;
  v22 = 384;
  do
  {
    *(&v212 + v22) = vqsubq_s16(*&v257[v21], *&v240[v22]);
    v21 -= 16;
    v22 += 16;
  }

  while (v21 != 432);
  v23 = 448;
  v24 = 432;
  do
  {
    *(&v212 + v23) = vqaddq_s16(*&v257[v23], *&v240[v24]);
    v23 += 16;
    v24 -= 16;
  }

  while (v23 != 512);
  v25 = 0;
  v26 = vqaddq_s16(v212, v215);
  v27 = vqaddq_s16(v213, v214);
  v28 = vqsubq_s16(v213, v214);
  v29 = vqsubq_s16(v212, v215);
  v30 = vmlal_lane_s16(vmull_lane_s16(*v217.i8, *v6.i8, 2), *v218.i8, *v6.i8, 1);
  v31 = vmlal_high_lane_s16(vmull_high_lane_s16(v217, *v6.i8, 2), v218, *v6.i8, 1);
  v32 = vqaddq_s16(v242, v220);
  v33 = vqsubq_s16(v242, v220);
  v34 = vqsubq_s16(v247, v223);
  v35 = vqaddq_s16(v247, v223);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(*v226.i8, v6, 5), *v237.i8, v6, 4);
  v37 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v226, v6, 5), v237, v6, 4);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(*v226.i8, v6, 6), *v237.i8, v6, 5);
  v39 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v226, v6, 6), v237, v6, 5);
  v176 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v6, 5), *v236.i8, v6, 4);
  v173 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v6, 5), v236, v6, 4);
  v169 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v6, 6), v236, v6, 5);
  v171 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v6, 6), *v236.i8, v6, 5);
  v40 = vmlal_laneq_s16(vmull_laneq_s16(*v228.i8, v6, 6), *v235.i8, v6, 5);
  v41 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v228, v6, 6), v235, v6, 5);
  v42 = vmlal_laneq_s16(vmull_laneq_s16(*v228.i8, v6, 7), *v235.i8, v6, 6);
  v43 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v228, v6, 7), v235, v6, 6);
  v44 = vmlal_laneq_s16(vmull_laneq_s16(*v229.i8, v6, 6), *v234.i8, v6, 5);
  v45 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v229, v6, 6), v234, v6, 5);
  v46 = vmlal_laneq_s16(vmull_laneq_s16(*v229.i8, v6, 7), *v234.i8, v6, 6);
  v47 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v229, v6, 7), v234, v6, 6);
  v201 = vmlal_lane_s16(vmull_lane_s16(*v27.i8, *v6.i8, 1), *v26.i8, *v6.i8, 0);
  v200 = vmlal_high_lane_s16(vmull_high_lane_s16(v27, *v6.i8, 1), v26, *v6.i8, 0);
  v198 = vmlal_high_lane_s16(vmull_high_lane_s16(v27, *v6.i8, 2), v26, *v6.i8, 1);
  v199 = vmlal_lane_s16(vmull_lane_s16(*v27.i8, *v6.i8, 2), *v26.i8, *v6.i8, 1);
  v197 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 5), *v29.i8, v6, 4);
  v196 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 5), v29, v6, 4);
  v194 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 6), v29, v6, 5);
  v195 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 6), *v29.i8, v6, 5);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v6, 5), *v35.i8, v6, 4);
  v49 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v32, v6, 5), v35, v6, 4);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v6, 6), *v35.i8, v6, 5);
  v51 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v32, v6, 6), v35, v6, 5);
  v52 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v6, 6), *v34.i8, v6, 5);
  v53 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v6, 6), v34, v6, 5);
  v54 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v6, 7), *v34.i8, v6, 6);
  v55 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v6, 7), v34, v6, 6);
  v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v217.i8, *v6.i8, 1), *v218.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v217, *v6.i8, 1), v218, *v6.i8, 0), 0xDuLL);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(v30, 0xDuLL), v31, 0xDuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(v38, 0xDuLL), v39, 0xDuLL);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(v44, 0xDuLL), v45, 0xDuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xDuLL), v47, 0xDuLL);
  v62 = vqaddq_s16(v216, v57);
  v63 = vqsubq_s16(v216, v57);
  v64 = vqsubq_s16(v219, v56);
  v65 = vqaddq_s16(v219, v56);
  v66 = vqaddq_s16(v225, v59);
  v67 = vqsubq_s16(v225, v59);
  v68 = vqsubq_s16(v230, v61);
  v69 = vqaddq_s16(v230, v61);
  v70 = vqaddq_s16(v233, v60);
  v71 = vqsubq_s16(v233, v60);
  v72 = vqsubq_s16(v238, v58);
  v73 = vqaddq_s16(v238, v58);
  v191 = vmlal_lane_s16(vmull_lane_s16(*v62.i8, *v5.i8, 1), *v65.i8, *v5.i8, 0);
  v190 = vmlal_high_lane_s16(vmull_high_lane_s16(v62, *v5.i8, 1), v65, *v5.i8, 0);
  v193 = vmlal_lane_s16(vmull_lane_s16(*v62.i8, *v5.i8, 2), *v65.i8, *v5.i8, 1);
  v192 = vmlal_high_lane_s16(vmull_high_lane_s16(v62, *v5.i8, 2), v65, *v5.i8, 1);
  v189 = vmlal_laneq_s16(vmull_laneq_s16(*v63.i8, v5, 4), *v64.i8, v5, 5);
  v188 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v63, v5, 4), v64, v5, 5);
  v187 = vmlal_laneq_s16(vmull_laneq_s16(*v63.i8, v5, 7), *v64.i8, v5, 4);
  v186 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v63, v5, 7), v64, v5, 4);
  v182 = vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v5.i8, 1), *v73.i8, *v5.i8, 0);
  v181 = vmlal_high_lane_s16(vmull_high_lane_s16(v66, *v5.i8, 1), v73, *v5.i8, 0);
  v179 = vmlal_high_lane_s16(vmull_high_lane_s16(v66, *v5.i8, 2), v73, *v5.i8, 1);
  v180 = vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v5.i8, 2), *v73.i8, *v5.i8, 1);
  v74 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v5.i8, 2), *v72.i8, *v5.i8, 1);
  v75 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v5.i8, 2), v72, *v5.i8, 1);
  v76 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v5.i8, 3), *v72.i8, *v5.i8, 2);
  v77 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v5.i8, 3), v72, *v5.i8, 2);
  v78 = vmlal_laneq_s16(vmull_laneq_s16(*v68.i8, v5, 4), *v71.i8, v5, 5);
  v79 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v68, v5, 4), v71, v5, 5);
  v80 = vmlal_laneq_s16(vmull_laneq_s16(*v68.i8, v5, 7), *v71.i8, v5, 4);
  v81 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v68, v5, 7), v71, v5, 4);
  v162 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v5, 7), *v70.i8, v5, 4);
  v161 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v5, 7), v70, v5, 4);
  v160 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v5, 6), *v70.i8, v5, 7);
  v159 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v5, 6), v70, v5, 7);
  v82 = vqaddq_s16(v241, v221);
  v83 = vqsubq_s16(v241, v221);
  v84 = vqsubq_s16(v248, v222);
  v85 = vqaddq_s16(v248, v222);
  v86 = vrshrn_high_n_s32(vrshrn_n_s32(v48, 0xDuLL), v49, 0xDuLL);
  v87 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xDuLL), v51, 0xDuLL);
  v88 = vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xDuLL), v53, 0xDuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
  v90 = vqsubq_s16(v82, v87);
  v91 = vqsubq_s16(v85, v86);
  v185 = vmlal_laneq_s16(vmull_laneq_s16(*v90.i8, v202, 4), *v91.i8, v202, 5);
  v184 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v90, v202, 4), v91, v202, 5);
  v167 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v90, v202, 7), v91, v202, 4);
  v168 = vmlal_laneq_s16(vmull_laneq_s16(*v90.i8, v202, 7), *v91.i8, v202, 4);
  v92 = vqsubq_s16(v83, v89);
  v93 = vqsubq_s16(v84, v88);
  v178 = vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v202.i8, 1), *v93.i8, *v202.i8, 0);
  v175 = vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v202.i8, 1), v93, *v202.i8, 0);
  v165 = vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v202.i8, 2), v93, *v202.i8, 1);
  v166 = vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v202.i8, 2), *v93.i8, *v202.i8, 1);
  v94 = vqaddq_s16(v82, v87);
  v95 = vqaddq_s16(v83, v89);
  v96 = vqaddq_s16(v84, v88);
  v97 = vqaddq_s16(v85, v86);
  v203 = vmlal_lane_s16(vmull_lane_s16(*v94.i8, *v204.i8, 1), *v97.i8, *v204.i8, 0);
  v183 = vmlal_high_lane_s16(vmull_high_lane_s16(v94, *v204.i8, 1), v97, *v204.i8, 0);
  v156 = vmlal_high_lane_s16(vmull_high_lane_s16(v94, *v204.i8, 2), v97, *v204.i8, 1);
  v157 = vmlal_lane_s16(vmull_lane_s16(*v94.i8, *v204.i8, 2), *v97.i8, *v204.i8, 1);
  v164 = vmlal_laneq_s16(vmull_laneq_s16(*v95.i8, v204, 4), *v96.i8, v204, 5);
  v163 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v95, v204, 4), v96, v204, 5);
  v158 = vmlal_laneq_s16(vmull_laneq_s16(*v95.i8, v204, 7), *v96.i8, v204, 4);
  v205 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v95, v204, 7), v96, v204, 4);
  v98 = vrshrn_high_n_s32(vrshrn_n_s32(v176, 0xDuLL), v173, 0xDuLL);
  v99 = vrshrn_high_n_s32(vrshrn_n_s32(v171, 0xDuLL), v169, 0xDuLL);
  v100 = vrshrn_high_n_s32(vrshrn_n_s32(v40, 0xDuLL), v41, 0xDuLL);
  v101 = vrshrn_high_n_s32(vrshrn_n_s32(v42, 0xDuLL), v43, 0xDuLL);
  v102 = vrshrn_high_n_s32(vrshrn_n_s32(v74, 0xDuLL), v75, 0xDuLL);
  v103 = vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xDuLL), v77, 0xDuLL);
  v104 = vrshrn_high_n_s32(vrshrn_n_s32(v78, 0xDuLL), v79, 0xDuLL);
  v105 = vrshrn_high_n_s32(vrshrn_n_s32(v80, 0xDuLL), v81, 0xDuLL);
  v106 = vqsubq_s16(v224, v99);
  v107 = vqsubq_s16(v239, v98);
  v108 = vqaddq_s16(v106, v103);
  v109 = vqaddq_s16(v107, v102);
  v177 = vmlal_laneq_s16(vmull_laneq_s16(*v108.i8, v206, 4), *v109.i8, v206, 5);
  v174 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v108, v206, 4), v109, v206, 5);
  v172 = vmlal_laneq_s16(vmull_laneq_s16(*v108.i8, v206, 7), *v109.i8, v206, 4);
  v170 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v108, v206, 7), v109, v206, 4);
  v110 = vqsubq_s16(v231, v101);
  v111 = vqsubq_s16(v232, v100);
  v112 = vqaddq_s16(v110, v105);
  v113 = vqaddq_s16(v111, v104);
  v155 = vmlal_lane_s16(vmull_lane_s16(*v112.i8, *v206.i8, 1), *v113.i8, *v206.i8, 0);
  v154 = vmlal_high_lane_s16(vmull_high_lane_s16(v112, *v206.i8, 1), v113, *v206.i8, 0);
  v114 = vmlal_lane_s16(vmull_lane_s16(*v112.i8, *v206.i8, 2), *v113.i8, *v206.i8, 1);
  v207 = vmlal_high_lane_s16(vmull_high_lane_s16(v112, *v206.i8, 2), v113, *v206.i8, 1);
  v115 = vqsubq_s16(v106, v103);
  v116 = vqsubq_s16(v110, v105);
  v117 = vqsubq_s16(v111, v104);
  v118 = vqsubq_s16(v107, v102);
  v119 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v208.i8, 1), *v118.i8, *v208.i8, 0);
  v120 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v208.i8, 1), v118, *v208.i8, 0);
  v121 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v208.i8, 2), *v118.i8, *v208.i8, 1);
  v122 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v208.i8, 2), v118, *v208.i8, 1);
  v152 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v208, 4), *v117.i8, v208, 5);
  v153 = v114;
  v123 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v208, 4), v117, v208, 5);
  v124 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v208, 7), *v117.i8, v208, 4);
  v125 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v208, 7), v117, v208, 4);
  v126 = vqaddq_s16(v224, v99);
  v127 = vqaddq_s16(v231, v101);
  v128 = vqaddq_s16(v232, v100);
  v129 = vqaddq_s16(v239, v98);
  v130 = vrshrn_high_n_s32(vrshrn_n_s32(v182, 0xDuLL), v181, 0xDuLL);
  v131 = vrshrn_high_n_s32(vrshrn_n_s32(v180, 0xDuLL), v179, 0xDuLL);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(v162, 0xDuLL), v161, 0xDuLL);
  v133 = vrshrn_high_n_s32(vrshrn_n_s32(v160, 0xDuLL), v159, 0xDuLL);
  v134 = vqsubq_s16(v126, v131);
  v135 = vqsubq_s16(v129, v130);
  v136 = vmlal_laneq_s16(vmull_laneq_s16(*v134.i8, v209, 4), *v135.i8, v209, 5);
  v137 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v134, v209, 4), v135, v209, 5);
  v138 = vmlal_laneq_s16(vmull_laneq_s16(*v134.i8, v209, 7), *v135.i8, v209, 4);
  v139 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v134, v209, 7), v135, v209, 4);
  v140 = vqsubq_s16(v127, v133);
  v141 = vqsubq_s16(v128, v132);
  v142 = vmlal_lane_s16(vmull_lane_s16(*v140.i8, *v209.i8, 1), *v141.i8, *v209.i8, 0);
  v143 = vmlal_high_lane_s16(vmull_high_lane_s16(v140, *v209.i8, 1), v141, *v209.i8, 0);
  v144 = vmlal_lane_s16(vmull_lane_s16(*v140.i8, *v209.i8, 2), *v141.i8, *v209.i8, 1);
  v145 = vmlal_high_lane_s16(vmull_high_lane_s16(v140, *v209.i8, 2), v141, *v209.i8, 1);
  v146 = vqaddq_s16(v126, v131);
  v147 = vqaddq_s16(v127, v133);
  v148 = vqaddq_s16(v128, v132);
  v149 = vqaddq_s16(v129, v130);
  v211[0] = vrshrn_high_n_s32(vrshrn_n_s32(v201, 0xDuLL), v200, 0xDuLL);
  v211[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v146.i8, *v210.i8, 1), *v149.i8, *v210.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v146, *v210.i8, 1), v149, *v210.i8, 0), 0xDuLL);
  v211[30] = vrshrn_high_n_s32(vrshrn_n_s32(v157, 0xDuLL), v156, 0xDuLL);
  v211[31] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v146.i8, *v210.i8, 2), *v149.i8, *v210.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v146, *v210.i8, 2), v149, *v210.i8, 1), 0xDuLL);
  v211[16] = vrshrn_high_n_s32(vrshrn_n_s32(v199, 0xDuLL), v198, 0xDuLL);
  v211[17] = vrshrn_high_n_s32(vrshrn_n_s32(v136, 0xDuLL), v137, 0xDuLL);
  v211[14] = vrshrn_high_n_s32(vrshrn_n_s32(v168, 0xDuLL), v167, 0xDuLL);
  v211[15] = vrshrn_high_n_s32(vrshrn_n_s32(v138, 0xDuLL), v139, 0xDuLL);
  v211[8] = vrshrn_high_n_s32(vrshrn_n_s32(v197, 0xDuLL), v196, 0xDuLL);
  v211[9] = vrshrn_high_n_s32(vrshrn_n_s32(v119, 0xDuLL), v120, 0xDuLL);
  v211[22] = vrshrn_high_n_s32(vrshrn_n_s32(v166, 0xDuLL), v165, 0xDuLL);
  v211[23] = vrshrn_high_n_s32(vrshrn_n_s32(v121, 0xDuLL), v122, 0xDuLL);
  v211[24] = vrshrn_high_n_s32(vrshrn_n_s32(v195, 0xDuLL), v194, 0xDuLL);
  v211[25] = vrshrn_high_n_s32(vrshrn_n_s32(v177, 0xDuLL), v174, 0xDuLL);
  v211[6] = vrshrn_high_n_s32(vrshrn_n_s32(v158, 0xDuLL), v205, 0xDuLL);
  v211[7] = vrshrn_high_n_s32(vrshrn_n_s32(v172, 0xDuLL), v170, 0xDuLL);
  v211[4] = vrshrn_high_n_s32(vrshrn_n_s32(v191, 0xDuLL), v190, 0xDuLL);
  v211[5] = vrshrn_high_n_s32(vrshrn_n_s32(v155, 0xDuLL), v154, 0xDuLL);
  v211[26] = vrshrn_high_n_s32(vrshrn_n_s32(v164, 0xDuLL), v163, 0xDuLL);
  v211[27] = vrshrn_high_n_s32(vrshrn_n_s32(v153, 0xDuLL), v207, 0xDuLL);
  v211[20] = vrshrn_high_n_s32(vrshrn_n_s32(v189, 0xDuLL), v188, 0xDuLL);
  v211[21] = vrshrn_high_n_s32(vrshrn_n_s32(v152, 0xDuLL), v123, 0xDuLL);
  v211[10] = vrshrn_high_n_s32(vrshrn_n_s32(v178, 0xDuLL), v175, 0xDuLL);
  v211[11] = vrshrn_high_n_s32(vrshrn_n_s32(v124, 0xDuLL), v125, 0xDuLL);
  v211[12] = vrshrn_high_n_s32(vrshrn_n_s32(v187, 0xDuLL), v186, 0xDuLL);
  v211[13] = vrshrn_high_n_s32(vrshrn_n_s32(v142, 0xDuLL), v143, 0xDuLL);
  v211[18] = vrshrn_high_n_s32(vrshrn_n_s32(v185, 0xDuLL), v184, 0xDuLL);
  v211[19] = vrshrn_high_n_s32(vrshrn_n_s32(v144, 0xDuLL), v145, 0xDuLL);
  v211[28] = vrshrn_high_n_s32(vrshrn_n_s32(v193, 0xDuLL), v192, 0xDuLL);
  v211[29] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v147.i8, v210, 4), *v148.i8, v210, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v147, v210, 4), v148, v210, 5), 0xDuLL);
  v211[2] = vrshrn_high_n_s32(vrshrn_n_s32(v203, 0xDuLL), v183, 0xDuLL);
  v211[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v147.i8, v210, 7), *v148.i8, v210, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v147, v210, 7), v148, v210, 4), 0xDuLL);
  v150 = a2 + 1;
  do
  {
    v151 = v211[v25];
    v150[-1] = vmovl_s16(*v151.i8);
    *v150 = vmovl_high_s16(v151);
    ++v25;
    v150 = (v150 + 4 * a3);
  }

  while (v25 != 32);
  return result;
}

int16x8_t sub_2779E0D2C(_OWORD *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *a1;
    v3 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v3 != 128);
  for (i = 0; i != 128; i += 16)
  {
    *&v7[i] = vshlq_n_s16(*&v7[i], 2uLL);
  }

  for (j = 0; j != 128; j += 16)
  {
    result = vaddq_s16(*&v7[j], *&v7[j]);
    *(a2 + j) = result;
  }

  return result;
}

int16x8_t sub_2779E0DD8(int16x8_t *a1, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v52 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v44 + v4) = *a1;
    v4 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 128);
  for (i = 0; i != 128; i += 16)
  {
    *(&v44 + i) = vshlq_n_s16(*(&v44 + i), 2uLL);
  }

  v6 = &xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 158];
  v8 = xmmword_277BEB8A0[16 * a4 - 157];
  v9 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v47.i8, *v6, 3), *v48.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v47, *v6, 3), v48, *v6, 0), 0xDuLL);
  v10 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v47.i8, *v6, 2), *v48.i8, *v6, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v47, *v6, 2), v48, *v6, 3), 0xDuLL);
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v49.i8, *v6, 1), *v46.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v49, *v6, 1), v46, *v6, 0), 0xDuLL);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v49.i8, *v6, 2), *v46.i8, *v6, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v49, *v6, 2), v46, *v6, 1), 0xDuLL);
  v13 = vqaddq_s16(v44, v9);
  v14 = vqsubq_s16(v10, v51);
  v15 = vqsubq_s16(v44, v9);
  v16 = vqaddq_s16(v51, v10);
  v17 = vqsubq_s16(v12, v45);
  v18 = vqaddq_s16(v50, v11);
  v19 = vqaddq_s16(v45, v12);
  v20 = vqsubq_s16(v50, v11);
  v21 = vmlal_laneq_s16(vmull_laneq_s16(*v18.i8, *v6->i8, 5), *v17.i8, *v6->i8, 4);
  v22 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v18, *v6->i8, 5), v17, *v6->i8, 4);
  v23 = vmlal_laneq_s16(vmull_laneq_s16(*v18.i8, *v6->i8, 6), *v17.i8, *v6->i8, 5);
  v24 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v18, *v6->i8, 6), v17, *v6->i8, 5);
  v25 = vrshrn_high_n_s32(vrshrn_n_s32(v21, 0xDuLL), v22, 0xDuLL);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(v23, 0xDuLL), v24, 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v19.i8, *v6->i8, 5), *v20.i8, *v6->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v19, *v6->i8, 5), v20, *v6->i8, 4), 0xDuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v19.i8, *v6->i8, 6), *v20.i8, *v6->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v19, *v6->i8, 6), v20, *v6->i8, 5), 0xDuLL);
  v29 = vqaddq_s16(v13, v25);
  v30 = vqaddq_s16(v14, v26);
  v31 = vqaddq_s16(v15, v27);
  v32 = vqsubq_s16(v28, v16);
  v33 = vqsubq_s16(v13, v25);
  v34 = vqsubq_s16(v14, v26);
  v35 = vqsubq_s16(v15, v27);
  v36 = vqaddq_s16(v16, v28);
  v37 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v30.i8, *v7.i8, 1), *v29.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v30, *v7.i8, 1), v29, *v7.i8, 0), 0xDuLL);
  v38 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v30.i8, *v7.i8, 2), *v29.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v30, *v7.i8, 2), v29, *v7.i8, 1), 0xDuLL);
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v32.i8, *v8.i8, 2), *v31.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v32, *v8.i8, 2), v31, *v8.i8, 1), 0xDuLL);
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v34.i8, v8, 4), *v33.i8, v8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v34, v8, 4), v33, v8, 5), 0xDuLL);
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v34.i8, v8, 7), *v33.i8, v8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v34, v8, 7), v33, v8, 4), 0xDuLL);
  a2[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v32.i8, *v8.i8, 1), *v31.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v32, *v8.i8, 1), v31, *v8.i8, 0), 0xDuLL);
  v39 = vmlal_laneq_s16(vmull_laneq_s16(*v36.i8, v7, 5), *v35.i8, v7, 4);
  v40 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v36, v7, 5), v35, v7, 4);
  v41 = vmlal_laneq_s16(vmull_laneq_s16(*v36.i8, v7, 6), *v35.i8, v7, 5);
  v42 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v36, v7, 6), v35, v7, 5);
  result = vrshrn_high_n_s32(vrshrn_n_s32(v39, 0xDuLL), v40, 0xDuLL);
  a2[6] = result;
  a2[7] = v37;
  *a2 = v38;
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(v41, 0xDuLL), v42, 0xDuLL);
  return result;
}

int16x8_t sub_2779E1060(_OWORD *a1, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v48 = *MEMORY[0x277D85DE8];
  do
  {
    *&v39[v4] = *a1;
    v4 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 128);
  for (i = 0; i != 128; i += 16)
  {
    *&v39[i] = vshlq_n_s16(*&v39[i], 2uLL);
  }

  v6 = 0;
  v8 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  for (j = 112; j != 48; j -= 16)
  {
    *(&v40 + v6) = vqaddq_s16(*&v39[v6], *&v39[j]);
    v6 += 16;
  }

  v10 = 48;
  v11 = 64;
  do
  {
    *(&v40 + v11) = vqsubq_s16(*&v39[v10], *&v39[v11]);
    v10 -= 16;
    v11 += 16;
  }

  while (v10 != -16);
  v12 = vqaddq_s16(v40, v43);
  v13 = vqaddq_s16(v41, v42);
  v14 = vqsubq_s16(v41, v42);
  v15 = vqsubq_s16(v40, v43);
  v16 = vmlal_lane_s16(vmull_lane_s16(*v45.i8, *v8.i8, 2), *v46.i8, *v8.i8, 1);
  v17 = vmlal_high_lane_s16(vmull_high_lane_s16(v45, *v8.i8, 2), v46, *v8.i8, 1);
  v18 = vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v8.i8, 1), *v12.i8, *v8.i8, 0);
  v19 = vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v8.i8, 1), v12, *v8.i8, 0);
  v20 = vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v8.i8, 2), *v12.i8, *v8.i8, 1);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v8.i8, 2), v12, *v8.i8, 1);
  v22 = vmlal_laneq_s16(vmull_laneq_s16(*v14.i8, v8, 5), *v15.i8, v8, 4);
  v23 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v14, v8, 5), v15, v8, 4);
  v24 = vmlal_laneq_s16(vmull_laneq_s16(*v14.i8, v8, 6), *v15.i8, v8, 5);
  v25 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v14, v8, 6), v15, v8, 5);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v45.i8, *v8.i8, 1), *v46.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v45, *v8.i8, 1), v46, *v8.i8, 0), 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(v16, 0xDuLL), v17, 0xDuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xDuLL), v21, 0xDuLL);
  v29 = vrshrn_high_n_s32(vrshrn_n_s32(v24, 0xDuLL), v25, 0xDuLL);
  v30 = vqaddq_s16(v44, v27);
  v31 = vqsubq_s16(v44, v27);
  v32 = vqsubq_s16(v47, v26);
  v33 = vqaddq_s16(v47, v26);
  *a2 = vrshrn_high_n_s32(vrshrn_n_s32(v18, 0xDuLL), v19, 0xDuLL);
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v30.i8, *v7.i8, 1), *v33.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v30, *v7.i8, 1), v33, *v7.i8, 0), 0xDuLL);
  a2[6] = v29;
  a2[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v30.i8, *v7.i8, 2), *v33.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v30, *v7.i8, 2), v33, *v7.i8, 1), 0xDuLL);
  v34 = vmlal_laneq_s16(vmull_laneq_s16(*v31.i8, v7, 4), *v32.i8, v7, 5);
  v35 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v31, v7, 4), v32, v7, 5);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(*v31.i8, v7, 7), *v32.i8, v7, 4);
  v37 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v31, v7, 7), v32, v7, 4);
  result = vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xDuLL), v35, 0xDuLL);
  a2[4] = v28;
  a2[5] = result;
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(v22, 0xDuLL), v23, 0xDuLL);
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  return result;
}

uint64_t sub_2779E129C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v128 = *MEMORY[0x277D85DE8];
  v5 = off_28866DE20[a4];
  v6 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) != 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (a4 == 6)
  {
    v6 = 0;
LABEL_7:
    a1 += 62 * a3;
    a3 = -a3;
  }

LABEL_8:
  (off_28866D7A0[a4])(a1, &v96, a3, 12);
  for (i = 0; i != 512; i += 16)
  {
    *(&v96 + i) = vrshrq_n_s16(*(&v96 + i), 2uLL);
  }

  v8 = 0;
  v9 = vtrn1q_s16(v96, v97);
  v10 = vtrn2q_s16(v96, v97);
  v11 = vtrn1q_s16(v98, v99);
  v12 = vtrn2q_s16(v98, v99);
  v13 = vtrn1q_s16(v100, v101);
  v14 = vtrn2q_s16(v100, v101);
  v15 = vtrn1q_s16(v102, v103);
  v16 = vtrn2q_s16(v102, v103);
  v17 = vtrn1q_s32(v9, v11);
  v18 = vtrn1q_s32(v10, v12);
  v19 = vtrn1q_s32(v13, v15);
  v20 = vzip2q_s64(v17, v19);
  v17.i64[1] = v19.i64[0];
  v21 = vtrn1q_s32(v14, v16);
  v22 = vzip2q_s64(v18, v21);
  v18.i64[1] = v21.i64[0];
  v23 = vtrn2q_s32(v9, v11);
  v24 = vtrn2q_s32(v13, v15);
  v25 = vzip2q_s64(v23, v24);
  v23.i64[1] = v24.i64[0];
  v26 = vtrn2q_s32(v10, v12);
  v27 = vtrn2q_s32(v14, v16);
  v28 = vzip2q_s64(v26, v27);
  v26.i64[1] = v27.i64[0];
  v95[0] = v17;
  v95[1] = v18;
  v95[2] = v23;
  v95[3] = v26;
  v95[4] = v20;
  v95[5] = v22;
  v95[6] = v25;
  v95[7] = v28;
  v29 = vtrn1q_s16(v104, v105);
  v30 = vtrn2q_s16(v104, v105);
  v31 = vtrn1q_s16(v106, v107);
  v32 = vtrn2q_s16(v106, v107);
  v33 = vtrn1q_s16(v108, v109);
  v34 = vtrn2q_s16(v108, v109);
  v35 = vtrn1q_s16(v110, v111);
  v36 = vtrn2q_s16(v110, v111);
  v37 = vtrn1q_s32(v29, v31);
  v38 = vtrn2q_s32(v29, v31);
  v39 = vtrn1q_s32(v30, v32);
  v40 = vtrn2q_s32(v30, v32);
  v41 = vtrn1q_s32(v33, v35);
  v42 = vtrn2q_s32(v33, v35);
  v43 = vtrn1q_s32(v34, v36);
  v44 = vtrn2q_s32(v34, v36);
  v45 = vzip2q_s64(v37, v41);
  v37.i64[1] = v41.i64[0];
  v46 = vzip2q_s64(v39, v43);
  v39.i64[1] = v43.i64[0];
  v47 = vzip2q_s64(v38, v42);
  v38.i64[1] = v42.i64[0];
  v48 = vzip2q_s64(v40, v44);
  v40.i64[1] = v44.i64[0];
  v95[8] = v37;
  v95[9] = v39;
  v95[10] = v38;
  v95[11] = v40;
  v95[12] = v45;
  v95[13] = v46;
  v95[14] = v47;
  v95[15] = v48;
  v49 = vtrn1q_s16(v112, v113);
  v50 = vtrn2q_s16(v112, v113);
  v51 = vtrn1q_s16(v114, v115);
  v52 = vtrn2q_s16(v114, v115);
  v53 = vtrn1q_s16(v116, v117);
  v54 = vtrn2q_s16(v116, v117);
  v55 = vtrn1q_s16(v118, v119);
  v56 = vtrn2q_s16(v118, v119);
  v57 = vtrn1q_s32(v49, v51);
  v58 = vtrn2q_s32(v49, v51);
  v59 = vtrn1q_s32(v50, v52);
  v60 = vtrn2q_s32(v50, v52);
  v61 = vtrn1q_s32(v53, v55);
  v62 = vtrn2q_s32(v53, v55);
  v63 = vtrn1q_s32(v54, v56);
  v64 = vtrn2q_s32(v54, v56);
  v65 = vzip2q_s64(v57, v61);
  v57.i64[1] = v61.i64[0];
  v66 = vzip2q_s64(v59, v63);
  v59.i64[1] = v63.i64[0];
  v67 = vzip2q_s64(v58, v62);
  v58.i64[1] = v62.i64[0];
  v68 = vzip2q_s64(v60, v64);
  v60.i64[1] = v64.i64[0];
  v95[16] = v57;
  v95[17] = v59;
  v95[18] = v58;
  v95[19] = v60;
  v95[20] = v65;
  v95[21] = v66;
  v95[22] = v67;
  v95[23] = v68;
  v69 = vtrn1q_s16(v120, v121);
  v70 = vtrn2q_s16(v120, v121);
  v71 = vtrn1q_s16(v122, v123);
  v72 = vtrn2q_s16(v122, v123);
  v73 = vtrn1q_s16(v124, v125);
  v74 = vtrn2q_s16(v124, v125);
  v75 = vtrn1q_s16(v126, v127);
  v76 = vtrn2q_s16(v126, v127);
  v77 = vtrn1q_s32(v69, v71);
  v78 = vtrn2q_s32(v69, v71);
  v79 = vtrn1q_s32(v70, v72);
  v80 = vtrn2q_s32(v70, v72);
  v81 = vtrn1q_s32(v73, v75);
  v82 = vtrn2q_s32(v73, v75);
  v83 = vtrn1q_s32(v74, v76);
  v84 = vtrn2q_s32(v74, v76);
  v85 = vzip2q_s64(v77, v81);
  v77.i64[1] = v81.i64[0];
  v86 = vzip2q_s64(v79, v83);
  v79.i64[1] = v83.i64[0];
  v87 = vzip2q_s64(v78, v82);
  v78.i64[1] = v82.i64[0];
  v88 = vzip2q_s64(v80, v84);
  v80.i64[1] = v84.i64[0];
  v95[24] = v77;
  v95[25] = v79;
  v95[26] = v78;
  v95[27] = v80;
  v95[28] = v85;
  v95[29] = v86;
  v89 = v95;
  v95[30] = v87;
  v95[31] = v88;
  do
  {
    if (v6)
    {
      v90 = &v95[8 * v8];
    }

    else
    {
      v91 = v89;
      for (j = 112; j != -16; j -= 16)
      {
        v93 = *v91++;
        v90 = &v96;
        *(&v96 + j) = v93;
      }
    }

    result = (v5)(v90, a2 + 32 * v8++, 32, 12);
    v89 += 8;
  }

  while (v8 != 4);
  return result;
}

int32x4_t sub_2779E15FC(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v10 = *MEMORY[0x277D85DE8];
  do
  {
    *&v9[v3] = vaddq_s16(*(a1 + v3), *(a1 + v3));
    v3 += 16;
  }

  while (v3 != 128);
  v4 = 0;
  v5 = a2 + 1;
  do
  {
    v6 = *&v9[v4];
    v7 = vmovl_s16(*v6.i8);
    result = vmovl_high_s16(v6);
    v5[-1] = v7;
    *v5 = result;
    v4 += 16;
    v5 = (v5 + 4 * a3);
  }

  while (v4 != 128);
  return result;
}

int32x4_t sub_2779E1694(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v48 = *MEMORY[0x277D85DE8];
  v5 = &xmmword_277BEB8A0[16 * a4 - 160];
  v6 = xmmword_277BEB8A0[16 * a4 - 158];
  v7 = xmmword_277BEB8A0[16 * a4 - 157];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v5, 3), *v10.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v5, 3), v10, *v5, 0), 0xDuLL);
  v13 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v5, 2), *v10.i8, *v5, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v5, 2), v10, *v5, 3), 0xDuLL);
  v14 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v11.i8, *v5, 1), *v9.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v11, *v5, 1), v9, *v5, 0), 0xDuLL);
  v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v11.i8, *v5, 2), *v9.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v11, *v5, 2), v9, *v5, 1), 0xDuLL);
  v16 = a1[1];
  v17 = vqaddq_s16(*a1, v12);
  v19 = a1[6];
  v18 = a1[7];
  v20 = vqsubq_s16(v13, v18);
  v21 = vqsubq_s16(*a1, v12);
  v22 = vqaddq_s16(v18, v13);
  v23 = vqsubq_s16(v15, v16);
  v24 = vqaddq_s16(v19, v14);
  v25 = vqaddq_s16(v16, v15);
  v26 = vqsubq_s16(v19, v14);
  v27 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, *v5->i8, 5), *v23.i8, *v5->i8, 4);
  v28 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, *v5->i8, 5), v23, *v5->i8, 4);
  v29 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, *v5->i8, 6), *v23.i8, *v5->i8, 5);
  v30 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, *v5->i8, 6), v23, *v5->i8, 5);
  v31 = vrshrn_high_n_s32(vrshrn_n_s32(v27, 0xDuLL), v28, 0xDuLL);
  v32 = vrshrn_high_n_s32(vrshrn_n_s32(v29, 0xDuLL), v30, 0xDuLL);
  v33 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v5->i8, 5), *v26.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v5->i8, 5), v26, *v5->i8, 4), 0xDuLL);
  v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v5->i8, 6), *v26.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v5->i8, 6), v26, *v5->i8, 5), 0xDuLL);
  v35 = vqaddq_s16(v17, v31);
  v36 = vqaddq_s16(v20, v32);
  v37 = vqaddq_s16(v21, v33);
  v38 = vqsubq_s16(v34, v22);
  v39 = vqsubq_s16(v17, v31);
  v40 = vqsubq_s16(v20, v32);
  v41 = vqsubq_s16(v21, v33);
  v42 = vqaddq_s16(v22, v34);
  v47[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v38.i8, *v7.i8, 2), *v37.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v38, *v7.i8, 2), v37, *v7.i8, 1), 0xDuLL);
  v47[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v40.i8, v7, 4), *v39.i8, v7, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v40, v7, 4), v39, v7, 5), 0xDuLL);
  v47[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v40.i8, v7, 7), *v39.i8, v7, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v40, v7, 7), v39, v7, 4), 0xDuLL);
  v47[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v38.i8, *v7.i8, 1), *v37.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v38, *v7.i8, 1), v37, *v7.i8, 0), 0xDuLL);
  v47[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, v6, 5), *v41.i8, v6, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, v6, 5), v41, v6, 4), 0xDuLL);
  v47[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v36.i8, *v6.i8, 1), *v35.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v36, *v6.i8, 1), v35, *v6.i8, 0), 0xDuLL);
  v47[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v36.i8, *v6.i8, 2), *v35.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v36, *v6.i8, 2), v35, *v6.i8, 1), 0xDuLL);
  v47[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, v6, 6), *v41.i8, v6, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, v6, 6), v41, v6, 5), 0xDuLL);
  v43 = a2 + 1;
  do
  {
    v44 = v47[v4];
    v45 = vmovl_s16(*v44.i8);
    result = vmovl_high_s16(v44);
    v43[-1] = v45;
    *v43 = result;
    ++v4;
    v43 = (v43 + 4 * a3);
  }

  while (v4 != 8);
  return result;
}

int32x4_t sub_2779E1908(uint64_t a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v46 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  for (i = 112; i != 48; i -= 16)
  {
    *(&v38 + v4) = vqaddq_s16(*(a1 + v4), *(a1 + i));
    v4 += 16;
  }

  v8 = 48;
  v9 = 64;
  do
  {
    *(&v38 + v9) = vqsubq_s16(*(a1 + v8), *(a1 + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  v11 = vqaddq_s16(v38, v41);
  v12 = vqaddq_s16(v39, v40);
  v13 = vqsubq_s16(v39, v40);
  v14 = vqsubq_s16(v38, v41);
  v15 = vmlal_lane_s16(vmull_lane_s16(*v43.i8, *v6.i8, 2), *v44.i8, *v6.i8, 1);
  v16 = vmlal_high_lane_s16(vmull_high_lane_s16(v43, *v6.i8, 2), v44, *v6.i8, 1);
  v17 = vmlal_lane_s16(vmull_lane_s16(*v12.i8, *v6.i8, 1), *v11.i8, *v6.i8, 0);
  v18 = vmlal_high_lane_s16(vmull_high_lane_s16(v12, *v6.i8, 1), v11, *v6.i8, 0);
  v19 = vmlal_lane_s16(vmull_lane_s16(*v12.i8, *v6.i8, 2), *v11.i8, *v6.i8, 1);
  v20 = vmlal_high_lane_s16(vmull_high_lane_s16(v12, *v6.i8, 2), v11, *v6.i8, 1);
  v21 = vmlal_laneq_s16(vmull_laneq_s16(*v13.i8, v6, 5), *v14.i8, v6, 4);
  v22 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v13, v6, 5), v14, v6, 4);
  v23 = vmlal_laneq_s16(vmull_laneq_s16(*v13.i8, v6, 6), *v14.i8, v6, 5);
  v24 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v13, v6, 6), v14, v6, 5);
  v25 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v43.i8, *v6.i8, 1), *v44.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v43, *v6.i8, 1), v44, *v6.i8, 0), 0xDuLL);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(v15, 0xDuLL), v16, 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(v19, 0xDuLL), v20, 0xDuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(v23, 0xDuLL), v24, 0xDuLL);
  v29 = vqaddq_s16(v42, v26);
  v30 = vqsubq_s16(v42, v26);
  v31 = vqsubq_s16(v45, v25);
  v32 = vqaddq_s16(v45, v25);
  v37[0] = vrshrn_high_n_s32(vrshrn_n_s32(v17, 0xDuLL), v18, 0xDuLL);
  v37[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v29.i8, *v5.i8, 1), *v32.i8, *v5.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v29, *v5.i8, 1), v32, *v5.i8, 0), 0xDuLL);
  v37[6] = v28;
  v37[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v29.i8, *v5.i8, 2), *v32.i8, *v5.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v29, *v5.i8, 2), v32, *v5.i8, 1), 0xDuLL);
  v37[4] = v27;
  v37[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v5, 4), *v31.i8, v5, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v5, 4), v31, v5, 5), 0xDuLL);
  v37[2] = vrshrn_high_n_s32(vrshrn_n_s32(v21, 0xDuLL), v22, 0xDuLL);
  v37[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v5, 7), *v31.i8, v5, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v5, 7), v31, v5, 4), 0xDuLL);
  v33 = a2 + 1;
  do
  {
    v34 = v37[v10];
    v35 = vmovl_s16(*v34.i8);
    result = vmovl_high_s16(v34);
    v33[-1] = v35;
    *v33 = result;
    ++v10;
    v33 = (v33 + 4 * a3);
  }

  while (v10 != 8);
  return result;
}

int16x8_t sub_2779E1B28(_OWORD *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *a1;
    v3 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v3 != 512);
  for (i = 0; i != 512; i += 16)
  {
    *&v7[i] = vshlq_n_s16(*&v7[i], 2uLL);
  }

  for (j = 0; j != 512; j += 16)
  {
    result = vshlq_n_s16(*&v7[j], 2uLL);
    *(a2 + j) = result;
  }

  return result;
}

_OWORD *sub_2779E1BDC(_OWORD *result, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v264 = *MEMORY[0x277D85DE8];
  do
  {
    *&v209[v4] = *result;
    v4 += 16;
    result = (result + 2 * a3);
  }

  while (v4 != 512);
  for (i = 0; i != 512; i += 16)
  {
    *&v209[i] = vshlq_n_s16(*&v209[i], 2uLL);
  }

  v6 = 0;
  v8 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  v200 = xmmword_277BEB8A0[16 * a4 - 157];
  v202 = xmmword_277BEB8A0[16 * a4 - 158];
  v204 = xmmword_277BEB8A0[16 * a4 - 155];
  v206 = xmmword_277BEB8A0[16 * a4 - 154];
  v207 = xmmword_277BEB8A0[16 * a4 - 153];
  v208 = xmmword_277BEB8A0[16 * a4 - 156];
  for (j = 496; j != 240; j -= 16)
  {
    *&v255[v6] = vqaddq_s16(*&v209[v6], *&v209[j]);
    v6 += 16;
  }

  v10 = 240;
  v11 = 256;
  do
  {
    *&v255[v11] = vqsubq_s16(*&v209[v10], *&v209[v11]);
    v10 -= 16;
    v11 += 16;
  }

  while (v10 != -16);
  v12 = 0;
  for (k = 240; k != 112; k -= 16)
  {
    *&v238[v12] = vqaddq_s16(*&v255[v12], *&v255[k]);
    v12 += 16;
  }

  v14 = 112;
  v15 = 128;
  do
  {
    *&v238[v15] = vqsubq_s16(*&v255[v14], *&v255[v15]);
    v14 -= 16;
    v15 += 16;
  }

  while (v14 != -16);
  v16 = 0;
  v254 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v256.i8, *v8.i8, 1), *v263.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v256, *v8.i8, 1), v263, *v8.i8, 0), 0xDuLL);
  v253 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v257.i8, *v8.i8, 1), *v262.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v257, *v8.i8, 1), v262, *v8.i8, 0), 0xDuLL);
  v247 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v256.i8, *v8.i8, 2), *v263.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v256, *v8.i8, 2), v263, *v8.i8, 1), 0xDuLL);
  v248 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v257.i8, *v8.i8, 2), *v262.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v257, *v8.i8, 2), v262, *v8.i8, 1), 0xDuLL);
  v252 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v258.i8, *v8.i8, 1), *v261.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v258, *v8.i8, 1), v261, *v8.i8, 0), 0xDuLL);
  v251 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v8.i8, 1), *v260.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v8.i8, 1), v260, *v8.i8, 0), 0xDuLL);
  v249 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v258.i8, *v8.i8, 2), *v261.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v258, *v8.i8, 2), v261, *v8.i8, 1), 0xDuLL);
  v250 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v8.i8, 2), *v260.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v8.i8, 2), v260, *v8.i8, 1), 0xDuLL);
  for (m = 112; m != 48; m -= 16)
  {
    *(&v210 + v16) = vqaddq_s16(*&v238[v16], *&v238[m]);
    v16 += 16;
  }

  v18 = 48;
  v19 = 64;
  do
  {
    *(&v210 + v19) = vqsubq_s16(*&v238[v18], *&v238[v19]);
    v18 -= 16;
    v19 += 16;
  }

  while (v18 != -16);
  v221 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v241.i8, *v8.i8, 1), *v244.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v241, *v8.i8, 1), v244, *v8.i8, 0), 0xDuLL);
  v220 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v242.i8, *v8.i8, 1), *v243.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v242, *v8.i8, 1), v243, *v8.i8, 0), 0xDuLL);
  v20 = 368;
  v218 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v241.i8, *v8.i8, 2), *v244.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v241, *v8.i8, 2), v244, *v8.i8, 1), 0xDuLL);
  v219 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v242.i8, *v8.i8, 2), *v243.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v242, *v8.i8, 2), v243, *v8.i8, 1), 0xDuLL);
  v21 = 256;
  do
  {
    *(&v210 + v21) = vqaddq_s16(*&v255[v21], *&v238[v20]);
    v20 -= 16;
    v21 += 16;
  }

  while (v20 != 304);
  v22 = 320;
  do
  {
    *(&v210 + v22) = vqsubq_s16(*&v255[v20], *&v238[v22]);
    v20 -= 16;
    v22 += 16;
  }

  while (v20 != 240);
  v23 = 496;
  v24 = 384;
  do
  {
    *(&v210 + v24) = vqsubq_s16(*&v255[v23], *&v238[v24]);
    v23 -= 16;
    v24 += 16;
  }

  while (v23 != 432);
  v25 = 448;
  v26 = 432;
  do
  {
    *(&v210 + v25) = vqaddq_s16(*&v255[v25], *&v238[v26]);
    v25 += 16;
    v26 -= 16;
  }

  while (v25 != 512);
  v27 = vqaddq_s16(v210, v213);
  v28 = vqaddq_s16(v211, v212);
  v29 = vqsubq_s16(v211, v212);
  v30 = vqsubq_s16(v210, v213);
  v31 = vmlal_lane_s16(vmull_lane_s16(*v215.i8, *v8.i8, 2), *v216.i8, *v8.i8, 1);
  v32 = vmlal_high_lane_s16(vmull_high_lane_s16(v215, *v8.i8, 2), v216, *v8.i8, 1);
  v33 = vqaddq_s16(v240, v218);
  v34 = vqsubq_s16(v240, v218);
  v35 = vqsubq_s16(v245, v221);
  v36 = vqaddq_s16(v245, v221);
  v37 = vmlal_laneq_s16(vmull_laneq_s16(*v224.i8, v8, 5), *v235.i8, v8, 4);
  v38 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v224, v8, 5), v235, v8, 4);
  v39 = vmlal_laneq_s16(vmull_laneq_s16(*v224.i8, v8, 6), *v235.i8, v8, 5);
  v40 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v224, v8, 6), v235, v8, 5);
  v173 = vmlal_laneq_s16(vmull_laneq_s16(*v225.i8, v8, 5), *v234.i8, v8, 4);
  v171 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v225, v8, 5), v234, v8, 4);
  v167 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v225, v8, 6), v234, v8, 5);
  v169 = vmlal_laneq_s16(vmull_laneq_s16(*v225.i8, v8, 6), *v234.i8, v8, 5);
  v41 = vmlal_laneq_s16(vmull_laneq_s16(*v226.i8, v8, 6), *v233.i8, v8, 5);
  v42 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v226, v8, 6), v233, v8, 5);
  v43 = vmlal_laneq_s16(vmull_laneq_s16(*v226.i8, v8, 7), *v233.i8, v8, 6);
  v44 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v226, v8, 7), v233, v8, 6);
  v45 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v8, 6), *v232.i8, v8, 5);
  v46 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v8, 6), v232, v8, 5);
  v47 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v8, 7), *v232.i8, v8, 6);
  v48 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v8, 7), v232, v8, 6);
  v199 = vmlal_lane_s16(vmull_lane_s16(*v28.i8, *v8.i8, 1), *v27.i8, *v8.i8, 0);
  v198 = vmlal_high_lane_s16(vmull_high_lane_s16(v28, *v8.i8, 1), v27, *v8.i8, 0);
  v196 = vmlal_high_lane_s16(vmull_high_lane_s16(v28, *v8.i8, 2), v27, *v8.i8, 1);
  v197 = vmlal_lane_s16(vmull_lane_s16(*v28.i8, *v8.i8, 2), *v27.i8, *v8.i8, 1);
  v195 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v8, 5), *v30.i8, v8, 4);
  v194 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v8, 5), v30, v8, 4);
  v192 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v8, 6), v30, v8, 5);
  v193 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v8, 6), *v30.i8, v8, 5);
  v49 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v8, 5), *v36.i8, v8, 4);
  v50 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v8, 5), v36, v8, 4);
  v51 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v8, 6), *v36.i8, v8, 5);
  v52 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v8, 6), v36, v8, 5);
  v53 = vmlal_laneq_s16(vmull_laneq_s16(*v34.i8, v8, 6), *v35.i8, v8, 5);
  v54 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v34, v8, 6), v35, v8, 5);
  v55 = vmlal_laneq_s16(vmull_laneq_s16(*v34.i8, v8, 7), *v35.i8, v8, 6);
  v56 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v34, v8, 7), v35, v8, 6);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v215.i8, *v8.i8, 1), *v216.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v215, *v8.i8, 1), v216, *v8.i8, 0), 0xDuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(v31, 0xDuLL), v32, 0xDuLL);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(v37, 0xDuLL), v38, 0xDuLL);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(v39, 0xDuLL), v40, 0xDuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v45, 0xDuLL), v46, 0xDuLL);
  v62 = vrshrn_high_n_s32(vrshrn_n_s32(v47, 0xDuLL), v48, 0xDuLL);
  v63 = vqaddq_s16(v214, v58);
  v64 = vqsubq_s16(v214, v58);
  v65 = vqsubq_s16(v217, v57);
  v66 = vqaddq_s16(v217, v57);
  v67 = vqaddq_s16(v223, v60);
  v68 = vqsubq_s16(v223, v60);
  v69 = vqsubq_s16(v228, v62);
  v70 = vqaddq_s16(v228, v62);
  v71 = vqaddq_s16(v231, v61);
  v72 = vqsubq_s16(v231, v61);
  v73 = vqsubq_s16(v236, v59);
  v74 = vqaddq_s16(v236, v59);
  v189 = vmlal_lane_s16(vmull_lane_s16(*v63.i8, *v7.i8, 1), *v66.i8, *v7.i8, 0);
  v188 = vmlal_high_lane_s16(vmull_high_lane_s16(v63, *v7.i8, 1), v66, *v7.i8, 0);
  v191 = vmlal_lane_s16(vmull_lane_s16(*v63.i8, *v7.i8, 2), *v66.i8, *v7.i8, 1);
  v190 = vmlal_high_lane_s16(vmull_high_lane_s16(v63, *v7.i8, 2), v66, *v7.i8, 1);
  v187 = vmlal_laneq_s16(vmull_laneq_s16(*v64.i8, v7, 4), *v65.i8, v7, 5);
  v186 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v64, v7, 4), v65, v7, 5);
  v185 = vmlal_laneq_s16(vmull_laneq_s16(*v64.i8, v7, 7), *v65.i8, v7, 4);
  v184 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v64, v7, 7), v65, v7, 4);
  v180 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v7.i8, 1), *v74.i8, *v7.i8, 0);
  v179 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v7.i8, 1), v74, *v7.i8, 0);
  v177 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v7.i8, 2), v74, *v7.i8, 1);
  v178 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v7.i8, 2), *v74.i8, *v7.i8, 1);
  v75 = vmlal_lane_s16(vmull_lane_s16(*v68.i8, *v7.i8, 2), *v73.i8, *v7.i8, 1);
  v76 = vmlal_high_lane_s16(vmull_high_lane_s16(v68, *v7.i8, 2), v73, *v7.i8, 1);
  v77 = vmlal_lane_s16(vmull_lane_s16(*v68.i8, *v7.i8, 3), *v73.i8, *v7.i8, 2);
  v78 = vmlal_high_lane_s16(vmull_high_lane_s16(v68, *v7.i8, 3), v73, *v7.i8, 2);
  v79 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v7, 4), *v72.i8, v7, 5);
  v80 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v7, 4), v72, v7, 5);
  v81 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v7, 7), *v72.i8, v7, 4);
  v82 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v7, 7), v72, v7, 4);
  v160 = vmlal_laneq_s16(vmull_laneq_s16(*v70.i8, v7, 7), *v71.i8, v7, 4);
  v159 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v70, v7, 7), v71, v7, 4);
  v158 = vmlal_laneq_s16(vmull_laneq_s16(*v70.i8, v7, 6), *v71.i8, v7, 7);
  v157 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v70, v7, 6), v71, v7, 7);
  v83 = vqaddq_s16(v239, v219);
  v84 = vqsubq_s16(v239, v219);
  v85 = vqsubq_s16(v246, v220);
  v86 = vqaddq_s16(v246, v220);
  v87 = vrshrn_high_n_s32(vrshrn_n_s32(v49, 0xDuLL), v50, 0xDuLL);
  v88 = vrshrn_high_n_s32(vrshrn_n_s32(v51, 0xDuLL), v52, 0xDuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(v53, 0xDuLL), v54, 0xDuLL);
  v90 = vrshrn_high_n_s32(vrshrn_n_s32(v55, 0xDuLL), v56, 0xDuLL);
  v91 = vqsubq_s16(v83, v88);
  v92 = vqsubq_s16(v86, v87);
  v183 = vmlal_laneq_s16(vmull_laneq_s16(*v91.i8, v200, 4), *v92.i8, v200, 5);
  v182 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v91, v200, 4), v92, v200, 5);
  v165 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v91, v200, 7), v92, v200, 4);
  v166 = vmlal_laneq_s16(vmull_laneq_s16(*v91.i8, v200, 7), *v92.i8, v200, 4);
  v93 = vqsubq_s16(v84, v90);
  v94 = vqsubq_s16(v85, v89);
  v176 = vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v200.i8, 1), *v94.i8, *v200.i8, 0);
  v175 = vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v200.i8, 1), v94, *v200.i8, 0);
  v163 = vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v200.i8, 2), v94, *v200.i8, 1);
  v164 = vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v200.i8, 2), *v94.i8, *v200.i8, 1);
  v95 = vqaddq_s16(v83, v88);
  v96 = vqaddq_s16(v84, v90);
  v97 = vqaddq_s16(v85, v89);
  v98 = vqaddq_s16(v86, v87);
  v201 = vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v202.i8, 1), *v98.i8, *v202.i8, 0);
  v181 = vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v202.i8, 1), v98, *v202.i8, 0);
  v154 = vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v202.i8, 2), v98, *v202.i8, 1);
  v155 = vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v202.i8, 2), *v98.i8, *v202.i8, 1);
  v162 = vmlal_laneq_s16(vmull_laneq_s16(*v96.i8, v202, 4), *v97.i8, v202, 5);
  v161 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v96, v202, 4), v97, v202, 5);
  v156 = vmlal_laneq_s16(vmull_laneq_s16(*v96.i8, v202, 7), *v97.i8, v202, 4);
  v203 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v96, v202, 7), v97, v202, 4);
  v99 = vrshrn_high_n_s32(vrshrn_n_s32(v173, 0xDuLL), v171, 0xDuLL);
  v100 = vrshrn_high_n_s32(vrshrn_n_s32(v169, 0xDuLL), v167, 0xDuLL);
  v101 = vrshrn_high_n_s32(vrshrn_n_s32(v41, 0xDuLL), v42, 0xDuLL);
  v102 = vrshrn_high_n_s32(vrshrn_n_s32(v43, 0xDuLL), v44, 0xDuLL);
  v103 = vrshrn_high_n_s32(vrshrn_n_s32(v75, 0xDuLL), v76, 0xDuLL);
  v104 = vrshrn_high_n_s32(vrshrn_n_s32(v77, 0xDuLL), v78, 0xDuLL);
  v105 = vrshrn_high_n_s32(vrshrn_n_s32(v79, 0xDuLL), v80, 0xDuLL);
  v106 = vrshrn_high_n_s32(vrshrn_n_s32(v81, 0xDuLL), v82, 0xDuLL);
  v107 = vqsubq_s16(v222, v100);
  v108 = vqsubq_s16(v237, v99);
  v109 = vqaddq_s16(v107, v104);
  v110 = vqaddq_s16(v108, v103);
  v174 = vmlal_laneq_s16(vmull_laneq_s16(*v109.i8, v204, 4), *v110.i8, v204, 5);
  v170 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v109, v204, 4), v110, v204, 5);
  v172 = vmlal_laneq_s16(vmull_laneq_s16(*v109.i8, v204, 7), *v110.i8, v204, 4);
  v168 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v109, v204, 7), v110, v204, 4);
  v111 = vqsubq_s16(v229, v102);
  v112 = vqsubq_s16(v230, v101);
  v113 = vqaddq_s16(v111, v106);
  v114 = vqaddq_s16(v112, v105);
  v153 = vmlal_lane_s16(vmull_lane_s16(*v113.i8, *v204.i8, 1), *v114.i8, *v204.i8, 0);
  v151 = vmlal_high_lane_s16(vmull_high_lane_s16(v113, *v204.i8, 1), v114, *v204.i8, 0);
  v152 = vmlal_lane_s16(vmull_lane_s16(*v113.i8, *v204.i8, 2), *v114.i8, *v204.i8, 1);
  v205 = vmlal_high_lane_s16(vmull_high_lane_s16(v113, *v204.i8, 2), v114, *v204.i8, 1);
  v115 = vqsubq_s16(v107, v104);
  v116 = vqsubq_s16(v111, v106);
  v117 = vqsubq_s16(v112, v105);
  v118 = vqsubq_s16(v108, v103);
  v119 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v206.i8, 1), *v118.i8, *v206.i8, 0);
  v120 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v206.i8, 1), v118, *v206.i8, 0);
  v121 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v206.i8, 2), *v118.i8, *v206.i8, 1);
  v122 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v206.i8, 2), v118, *v206.i8, 1);
  v123 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v206, 4), *v117.i8, v206, 5);
  v124 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v206, 4), v117, v206, 5);
  v125 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v206, 7), *v117.i8, v206, 4);
  v126 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v206, 7), v117, v206, 4);
  v127 = vqaddq_s16(v222, v100);
  v128 = vqaddq_s16(v229, v102);
  v129 = vqaddq_s16(v230, v101);
  v130 = vqaddq_s16(v237, v99);
  v131 = vrshrn_high_n_s32(vrshrn_n_s32(v180, 0xDuLL), v179, 0xDuLL);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(v178, 0xDuLL), v177, 0xDuLL);
  v133 = vrshrn_high_n_s32(vrshrn_n_s32(v160, 0xDuLL), v159, 0xDuLL);
  v134 = vrshrn_high_n_s32(vrshrn_n_s32(v158, 0xDuLL), v157, 0xDuLL);
  v135 = vqsubq_s16(v127, v132);
  v136 = vqsubq_s16(v130, v131);
  v137 = vmlal_laneq_s16(vmull_laneq_s16(*v135.i8, v207, 4), *v136.i8, v207, 5);
  v138 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v135, v207, 4), v136, v207, 5);
  v139 = vmlal_laneq_s16(vmull_laneq_s16(*v135.i8, v207, 7), *v136.i8, v207, 4);
  v140 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v135, v207, 7), v136, v207, 4);
  v141 = vqsubq_s16(v128, v134);
  v142 = vqsubq_s16(v129, v133);
  v143 = vmlal_lane_s16(vmull_lane_s16(*v141.i8, *v207.i8, 1), *v142.i8, *v207.i8, 0);
  v144 = vmlal_high_lane_s16(vmull_high_lane_s16(v141, *v207.i8, 1), v142, *v207.i8, 0);
  v145 = vmlal_lane_s16(vmull_lane_s16(*v141.i8, *v207.i8, 2), *v142.i8, *v207.i8, 1);
  v146 = vmlal_high_lane_s16(vmull_high_lane_s16(v141, *v207.i8, 2), v142, *v207.i8, 1);
  v147 = vqaddq_s16(v127, v132);
  v148 = vqaddq_s16(v128, v134);
  v149 = vqaddq_s16(v129, v133);
  v150 = vqaddq_s16(v130, v131);
  *a2 = vrshrn_high_n_s32(vrshrn_n_s32(v199, 0xDuLL), v198, 0xDuLL);
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v147.i8, *v208.i8, 1), *v150.i8, *v208.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v147, *v208.i8, 1), v150, *v208.i8, 0), 0xDuLL);
  a2[30] = vrshrn_high_n_s32(vrshrn_n_s32(v155, 0xDuLL), v154, 0xDuLL);
  a2[31] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v147.i8, *v208.i8, 2), *v150.i8, *v208.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v147, *v208.i8, 2), v150, *v208.i8, 1), 0xDuLL);
  a2[16] = vrshrn_high_n_s32(vrshrn_n_s32(v197, 0xDuLL), v196, 0xDuLL);
  a2[17] = vrshrn_high_n_s32(vrshrn_n_s32(v137, 0xDuLL), v138, 0xDuLL);
  a2[14] = vrshrn_high_n_s32(vrshrn_n_s32(v166, 0xDuLL), v165, 0xDuLL);
  a2[15] = vrshrn_high_n_s32(vrshrn_n_s32(v139, 0xDuLL), v140, 0xDuLL);
  a2[8] = vrshrn_high_n_s32(vrshrn_n_s32(v195, 0xDuLL), v194, 0xDuLL);
  a2[9] = vrshrn_high_n_s32(vrshrn_n_s32(v119, 0xDuLL), v120, 0xDuLL);
  a2[22] = vrshrn_high_n_s32(vrshrn_n_s32(v164, 0xDuLL), v163, 0xDuLL);
  a2[23] = vrshrn_high_n_s32(vrshrn_n_s32(v121, 0xDuLL), v122, 0xDuLL);
  a2[24] = vrshrn_high_n_s32(vrshrn_n_s32(v193, 0xDuLL), v192, 0xDuLL);
  a2[25] = vrshrn_high_n_s32(vrshrn_n_s32(v174, 0xDuLL), v170, 0xDuLL);
  a2[6] = vrshrn_high_n_s32(vrshrn_n_s32(v156, 0xDuLL), v203, 0xDuLL);
  a2[7] = vrshrn_high_n_s32(vrshrn_n_s32(v172, 0xDuLL), v168, 0xDuLL);
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(v189, 0xDuLL), v188, 0xDuLL);
  a2[5] = vrshrn_high_n_s32(vrshrn_n_s32(v153, 0xDuLL), v151, 0xDuLL);
  a2[26] = vrshrn_high_n_s32(vrshrn_n_s32(v162, 0xDuLL), v161, 0xDuLL);
  a2[27] = vrshrn_high_n_s32(vrshrn_n_s32(v152, 0xDuLL), v205, 0xDuLL);
  a2[20] = vrshrn_high_n_s32(vrshrn_n_s32(v187, 0xDuLL), v186, 0xDuLL);
  a2[21] = vrshrn_high_n_s32(vrshrn_n_s32(v123, 0xDuLL), v124, 0xDuLL);
  a2[10] = vrshrn_high_n_s32(vrshrn_n_s32(v176, 0xDuLL), v175, 0xDuLL);
  a2[11] = vrshrn_high_n_s32(vrshrn_n_s32(v125, 0xDuLL), v126, 0xDuLL);
  a2[12] = vrshrn_high_n_s32(vrshrn_n_s32(v185, 0xDuLL), v184, 0xDuLL);
  a2[13] = vrshrn_high_n_s32(vrshrn_n_s32(v143, 0xDuLL), v144, 0xDuLL);
  a2[18] = vrshrn_high_n_s32(vrshrn_n_s32(v183, 0xDuLL), v182, 0xDuLL);
  a2[19] = vrshrn_high_n_s32(vrshrn_n_s32(v145, 0xDuLL), v146, 0xDuLL);
  a2[28] = vrshrn_high_n_s32(vrshrn_n_s32(v191, 0xDuLL), v190, 0xDuLL);
  a2[29] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v148.i8, v208, 4), *v149.i8, v208, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v148, v208, 4), v149, v208, 5), 0xDuLL);
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(v201, 0xDuLL), v181, 0xDuLL);
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v148.i8, v208, 7), *v149.i8, v208, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v148, v208, 7), v149, v208, 4), 0xDuLL);
  return result;
}

uint64_t sub_2779E2824(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v6 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v7 = off_28866D9A0[a4];
  v8 = off_28866DDA0[a4];
  v9 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) == 0)
  {
    if (a4 != 6)
    {
      goto LABEL_8;
    }

    v9 = 0;
LABEL_7:
    v6 = a1 + 6 * a3;
    v4 = -a3;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  v10 = 0;
  v11 = v30;
  v12 = 1;
  do
  {
    v13 = v12;
    (v7)(v6 + 2 * v10, &v32, v4, 13);
    for (i = 0; i != 64; i += 16)
    {
      *(&v32 + i) = vrhaddq_s16(*(&v32 + i), 0);
    }

    v12 = 0;
    v15 = vtrn1q_s16(v32, v33);
    v16 = vtrn2q_s16(v32, v33);
    v17 = vtrn1q_s16(v34, v35);
    v18 = vtrn2q_s16(v34, v35);
    v19 = vtrn1q_s32(v15, v17);
    v20 = vtrn2q_s32(v15, v17);
    v21 = vtrn1q_s32(v16, v18);
    v22 = vtrn2q_s32(v16, v18);
    v18.i64[0] = vextq_s8(v19, v19, 8uLL).u64[0];
    v19.i64[1] = v21.i64[0];
    v23.i64[0] = vextq_s8(v20, v20, 8uLL).u64[0];
    v20.i64[1] = v22.i64[0];
    *v11 = v19;
    v11[1] = v20;
    v18.i64[1] = vextq_s8(v21, v21, 8uLL).u64[0];
    v23.i64[1] = vextq_s8(v22, v22, 8uLL).u64[0];
    v11[2] = v18;
    v11[3] = v23;
    v11 = &v31;
    v10 = 8;
  }

  while ((v13 & 1) != 0);
  if (v9)
  {
    v24 = v30;
  }

  else
  {
    v25 = v30;
    for (j = 120; j != -8; j -= 8)
    {
      v27 = *v25++;
      v24 = v29;
      *&v29[j] = v27;
    }
  }

  return (v8)(v24, a2, 4, 13);
}

int32x4_t sub_2779E29F4(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  v4 = vdup_n_s16(0x2D42u);
  do
  {
    *&v7[v3] = vqrshrn_n_s32(vmull_s16(*(a1 + v3), v4), 0xCuLL);
    v3 += 8;
  }

  while (v3 != 128);
  for (i = 0; i != 128; i += 8)
  {
    result = vmovl_s16(*&v7[i]);
    *a2 = result;
    a2 = (a2 + 4 * a3);
  }

  return result;
}

int16x4_t *sub_2779E2A90(int16x4_t *result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v89[16] = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v8 = result[6];
  v7 = result[7];
  v9 = result[8];
  v10 = result[9];
  v11 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v7, *v6.i8, 3), v9, *v6.i8, 0), 0xDuLL);
  v12 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v7, *v6.i8, 2), v9, *v6.i8, 3), 0xDuLL);
  v14 = result[10];
  v13 = result[11];
  v15 = result[4];
  v16 = result[5];
  v17 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v13, *v6.i8, 1), v15, *v6.i8, 0), 0xDuLL);
  v18 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v13, *v6.i8, 2), v15, *v6.i8, 1), 0xDuLL);
  v19 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v10, *v6.i8, 1), v8, *v6.i8, 0), 0xDuLL);
  v20 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v10, *v6.i8, 2), v8, *v6.i8, 1), 0xDuLL);
  v21 = vmlal_lane_s16(vmull_lane_s16(v16, *v6.i8, 2), v14, *v6.i8, 3);
  v22 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v16, *v6.i8, 3), v14, *v6.i8, 0), 0xDuLL);
  v23 = vqrshrn_n_s32(v21, 0xDuLL);
  v24 = result[1];
  *v21.i8 = vqadd_s16(*result, v11);
  v26 = result[14];
  v25 = result[15];
  v27 = vqsub_s16(v12, v25);
  v28 = vqsub_s16(*result, v11);
  v29 = vqadd_s16(v25, v12);
  v31 = result[2];
  v30 = result[3];
  v32 = vqsub_s16(v18, v30);
  v33 = result[12];
  v34 = result[13];
  v35 = vqadd_s16(v33, v17);
  v36 = vqadd_s16(v30, v18);
  v37 = vqsub_s16(v33, v17);
  v38 = xmmword_277BEB8A0[16 * a4 - 156];
  v39 = xmmword_277BEB8A0[16 * a4 - 155];
  v40 = vqsub_s16(v20, v24);
  v41 = vqadd_s16(v26, v19);
  v42 = xmmword_277BEB8A0[16 * a4 - 154];
  v43 = xmmword_277BEB8A0[16 * a4 - 153];
  v44 = vqadd_s16(v24, v20);
  v45 = vqsub_s16(v26, v19);
  v46 = vqadd_s16(v31, v22);
  v47 = vqsub_s16(v23, v34);
  v48 = vqsub_s16(v31, v22);
  v49 = vqadd_s16(v34, v23);
  v50 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v35, v6, 5), v32, v6, 4), 0xDuLL);
  v51 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v35, v6, 6), v32, v6, 5), 0xDuLL);
  v52 = vmlal_laneq_s16(vmull_laneq_s16(v36, v6, 6), v37, v6, 5);
  v53 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v36, v6, 5), v37, v6, 4), 0xDuLL);
  v54 = vqrshrn_n_s32(v52, 0xDuLL);
  v55 = vmlal_laneq_s16(vmull_laneq_s16(v47, v6, 5), v46, v6, 4);
  v56 = vmlal_laneq_s16(vmull_laneq_s16(v47, v6, 6), v46, v6, 5);
  v57 = vqrshrn_n_s32(v55, 0xDuLL);
  *v56.i8 = vqrshrn_n_s32(v56, 0xDuLL);
  v58 = vmlal_laneq_s16(vmull_laneq_s16(v49, v6, 7), v48, v6, 4);
  v59 = vmlal_laneq_s16(vmull_laneq_s16(v49, v6, 6), v48, v6, 7);
  *v6.i8 = vqrshrn_n_s32(v58, 0xDuLL);
  v60 = vqrshrn_n_s32(v59, 0xDuLL);
  *v59.i8 = vqadd_s16(*v21.i8, v50);
  *v58.i8 = vqadd_s16(v27, v51);
  v61 = vqadd_s16(v28, v53);
  v62 = vqsub_s16(v54, v29);
  *v21.i8 = vqsub_s16(*v21.i8, v50);
  v63 = vqsub_s16(v27, v51);
  v64 = vqsub_s16(v28, v53);
  v65 = vqadd_s16(v29, v54);
  v66 = vqadd_s16(v40, v57);
  v67 = vqadd_s16(v41, *v56.i8);
  v68 = vqsub_s16(v60, v44);
  v69 = vqadd_s16(v45, *v6.i8);
  v70 = vqsub_s16(v40, v57);
  *v56.i8 = vqsub_s16(v41, *v56.i8);
  v71 = vqadd_s16(v44, v60);
  *v6.i8 = vqsub_s16(v45, *v6.i8);
  v72 = vmlal_lane_s16(vmull_lane_s16(v67, *v5.i8, 2), v66, *v5.i8, 1);
  v73 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v67, *v5.i8, 1), v66, *v5.i8, 0), 0xDuLL);
  v74 = vqrshrn_n_s32(v72, 0xDuLL);
  *v72.i8 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v69, v5, 4), v68, v5, 5), 0xDuLL);
  v75 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v69, v5, 7), v68, v5, 4), 0xDuLL);
  v76 = vmlal_lane_s16(vmull_lane_s16(v70, *v5.i8, 0), *v56.i8, *v5.i8, 1);
  v77 = vmlal_lane_s16(vmull_lane_s16(v70, *v5.i8, 3), *v56.i8, *v5.i8, 0);
  *v56.i8 = vqrshrn_n_s32(v76, 0xDuLL);
  *v77.i8 = vqrshrn_n_s32(v77, 0xDuLL);
  v78 = vmlal_laneq_s16(vmull_laneq_s16(v71, v5, 4), *v6.i8, v5, 5);
  v79 = vmlal_laneq_s16(vmull_laneq_s16(v71, v5, 7), *v6.i8, v5, 4);
  *v5.i8 = vqrshrn_n_s32(v78, 0xDuLL);
  *v6.i8 = vqrshrn_n_s32(v79, 0xDuLL);
  *v79.i8 = vqadd_s16(*v59.i8, v73);
  *v78.i8 = vqadd_s16(*v58.i8, v74);
  v80 = vqadd_s16(v61, *v72.i8);
  v81 = vqadd_s16(v62, v75);
  v82 = vqadd_s16(*v21.i8, *v77.i8);
  v83 = vqadd_s16(v63, *v56.i8);
  v84 = vqadd_s16(v64, *v5.i8);
  v85 = vqsub_s16(*v6.i8, v65);
  *v59.i8 = vqsub_s16(*v59.i8, v73);
  *v58.i8 = vqsub_s16(*v58.i8, v74);
  *v72.i8 = vqsub_s16(v61, *v72.i8);
  v86 = vqsub_s16(v62, v75);
  v87 = vqsub_s16(*v21.i8, *v77.i8);
  v88 = vqsub_s16(v63, *v56.i8);
  *v5.i8 = vqsub_s16(v64, *v5.i8);
  *v6.i8 = vqadd_s16(v65, *v6.i8);
  v89[6] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v85, *v43.i8, 2), v84, *v43.i8, 1), 0xDuLL);
  v89[7] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v58.i8, v43, 4), *v59.i8, v43, 5), 0xDuLL);
  v89[8] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v58.i8, v43, 7), *v59.i8, v43, 4), 0xDuLL);
  v89[9] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v85, *v43.i8, 1), v84, *v43.i8, 0), 0xDuLL);
  v89[4] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v83, *v42.i8, 2), v82, *v42.i8, 1), 0xDuLL);
  v89[5] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v86, v42, 4), *v72.i8, v42, 5), 0xDuLL);
  v89[10] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v86, v42, 7), *v72.i8, v42, 4), 0xDuLL);
  v89[11] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v83, *v42.i8, 1), v82, *v42.i8, 0), 0xDuLL);
  v89[2] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v81, *v39.i8, 2), v80, *v39.i8, 1), 0xDuLL);
  v89[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v88, v39, 4), v87, v39, 5), 0xDuLL);
  v89[12] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v88, v39, 7), v87, v39, 4), 0xDuLL);
  v89[13] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v81, *v39.i8, 1), v80, *v39.i8, 0), 0xDuLL);
  v89[14] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v6.i8, v38, 5), *v5.i8, v38, 4), 0xDuLL);
  v89[15] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v78.i8, *v38.i8, 1), *v79.i8, *v38.i8, 0), 0xDuLL);
  v89[0] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v78.i8, *v38.i8, 2), *v79.i8, *v38.i8, 1), 0xDuLL);
  v89[1] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v6.i8, v38, 6), *v5.i8, v38, 5), 0xDuLL);
  do
  {
    *a2 = vmovl_s16(v89[v4++]);
    a2 = (a2 + 4 * a3);
  }

  while (v4 != 16);
  return result;
}

int32x4_t sub_2779E2E10(uint64_t a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v72 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v7 = xmmword_277BEB8A0[16 * a4 - 158];
  v8 = xmmword_277BEB8A0[16 * a4 - 157];
  for (i = 120; i != 56; i -= 8)
  {
    *&v63[v4] = vqadd_s16(*(a1 + v4), *(a1 + i));
    v4 += 8;
  }

  v10 = 56;
  v11 = 64;
  do
  {
    *&v63[v11] = vqsub_s16(*(a1 + v10), *(a1 + v11));
    v10 -= 8;
    v11 += 8;
  }

  while (v10 != -8);
  v12 = 0;
  for (j = 56; j != 24; j -= 8)
  {
    *(&v55 + v12) = vqadd_s16(*&v63[v12], *&v63[j]);
    v12 += 8;
  }

  v14 = 24;
  v15 = 32;
  do
  {
    *(&v55 + v15) = vqsub_s16(*&v63[v14], *&v63[v15]);
    v14 -= 8;
    v15 += 8;
  }

  while (v14 != -8);
  v16 = 0;
  v17 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v66, *v6.i8, 1), v69, *v6.i8, 0), 0xDuLL);
  v18 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v66, *v6.i8, 2), v69, *v6.i8, 1), 0xDuLL);
  v19 = vmlal_lane_s16(vmull_lane_s16(v67, *v6.i8, 2), v68, *v6.i8, 1);
  v20 = vqadd_s16(v55, v58);
  v21 = vqadd_s16(v56, v57);
  v22 = vqsub_s16(v56, v57);
  v23 = vqsub_s16(v55, v58);
  v24 = vmlal_lane_s16(vmull_lane_s16(v60, *v6.i8, 1), v61, *v6.i8, 0);
  v25 = vmlal_lane_s16(vmull_lane_s16(v60, *v6.i8, 2), v61, *v6.i8, 1);
  v26 = vqadd_s16(v65, v18);
  v27 = vqsub_s16(v65, v18);
  v28 = vqsub_s16(v70, v17);
  v29 = vqadd_s16(v70, v17);
  v30 = vmlal_lane_s16(vmull_lane_s16(v21, *v6.i8, 1), v20, *v6.i8, 0);
  v31 = vmlal_lane_s16(vmull_lane_s16(v21, *v6.i8, 2), v20, *v6.i8, 1);
  v32 = vmlal_laneq_s16(vmull_laneq_s16(v22, v6, 5), v23, v6, 4);
  v33 = vmlal_laneq_s16(vmull_laneq_s16(v22, v6, 6), v23, v6, 5);
  v34 = vmlal_laneq_s16(vmull_laneq_s16(v26, v6, 5), v29, v6, 4);
  v35 = vmlal_laneq_s16(vmull_laneq_s16(v26, v6, 6), v29, v6, 5);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(v27, v6, 6), v28, v6, 5);
  v37 = vmlal_laneq_s16(vmull_laneq_s16(v27, v6, 7), v28, v6, 6);
  v38 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v67, *v6.i8, 1), v68, *v6.i8, 0), 0xDuLL);
  v39 = vqrshrn_n_s32(v19, 0xDuLL);
  *v19.i8 = vqrshrn_n_s32(v24, 0xDuLL);
  *v25.i8 = vqrshrn_n_s32(v25, 0xDuLL);
  *v24.i8 = vqadd_s16(v64, v39);
  v40 = vqsub_s16(v64, v39);
  v41 = vqsub_s16(v71, v38);
  v42 = vqadd_s16(v71, v38);
  v43 = vqrshrn_n_s32(v32, 0xDuLL);
  v44 = vqrshrn_n_s32(v33, 0xDuLL);
  *v33.i8 = vqadd_s16(v59, *v25.i8);
  *v32.i8 = vqsub_s16(v59, *v25.i8);
  *v25.i8 = vqsub_s16(v62, *v19.i8);
  *v19.i8 = vqadd_s16(v62, *v19.i8);
  *v34.i8 = vqrshrn_n_s32(v34, 0xDuLL);
  v45 = vqrshrn_n_s32(v35, 0xDuLL);
  *v36.i8 = vqrshrn_n_s32(v36, 0xDuLL);
  *v37.i8 = vqrshrn_n_s32(v37, 0xDuLL);
  v46 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, *v5.i8, 1), *v19.i8, *v5.i8, 0);
  v47 = vmlal_lane_s16(vmull_lane_s16(*v33.i8, *v5.i8, 2), *v19.i8, *v5.i8, 1);
  *v19.i8 = vqrshrn_n_s32(v46, 0xDuLL);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v5, 4), *v25.i8, v5, 5);
  v49 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v5, 7), *v25.i8, v5, 4);
  v50 = vqrshrn_n_s32(v48, 0xDuLL);
  *v25.i8 = vqadd_s16(*v24.i8, v45);
  v51 = vqsub_s16(*v24.i8, v45);
  *v24.i8 = vqsub_s16(v40, *v37.i8);
  *v37.i8 = vqadd_s16(v40, *v37.i8);
  v52 = vqadd_s16(v41, *v36.i8);
  *v36.i8 = vqsub_s16(v41, *v36.i8);
  *v48.i8 = vqsub_s16(v42, *v34.i8);
  *v34.i8 = vqadd_s16(v42, *v34.i8);
  v54[0] = vqrshrn_n_s32(v30, 0xDuLL);
  v54[1] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v7.i8, 1), *v34.i8, *v7.i8, 0), 0xDuLL);
  v54[14] = vqrshrn_n_s32(v47, 0xDuLL);
  v54[15] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v7.i8, 2), *v34.i8, *v7.i8, 1), 0xDuLL);
  v54[8] = vqrshrn_n_s32(v31, 0xDuLL);
  v54[9] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v51, v8, 4), *v48.i8, v8, 5), 0xDuLL);
  v54[6] = vqrshrn_n_s32(v49, 0xDuLL);
  v54[7] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v51, v8, 7), *v48.i8, v8, 4), 0xDuLL);
  v54[4] = v43;
  v54[5] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v8.i8, 1), *v36.i8, *v8.i8, 0), 0xDuLL);
  v54[10] = v50;
  v54[11] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v24.i8, *v8.i8, 2), *v36.i8, *v8.i8, 1), 0xDuLL);
  v54[12] = v44;
  v54[13] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v37.i8, v7, 4), v52, v7, 5), 0xDuLL);
  v54[2] = v19.i64[0];
  v54[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v37.i8, v7, 7), v52, v7, 4), 0xDuLL);
  do
  {
    result = vmovl_s16(v54[v16]);
    *a2 = result;
    ++v16;
    a2 = (a2 + 4 * a3);
  }

  while (v16 != 16);
  return result;
}

_OWORD *sub_2779E3134(_OWORD *result, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *result;
    v3 += 16;
    result = (result + 2 * a3);
  }

  while (v3 != 64);
  for (i = 0; i != 64; i += 16)
  {
    *&v7[i] = vshlq_n_s16(*&v7[i], 2uLL);
  }

  v5 = 0;
  v6 = vdupq_n_s16(0x16A1u);
  do
  {
    *(a2 + v5) = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*&v7[v5], *v6.i8), 0xCuLL), vmull_high_s16(*&v7[v5], v6), 0xCuLL);
    v5 += 16;
  }

  while (v5 != 64);
  return result;
}

int16x8_t sub_2779E31F4(int16x8_t *a1, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v22 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v18 + v4) = *a1;
    v4 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 64);
  for (i = 0; i != 64; i += 16)
  {
    *(&v18 + i) = vshlq_n_s16(*(&v18 + i), 2uLL);
  }

  v6 = qword_277BEBCA0[a4 - 10];
  v7 = vqaddq_s16(v18, v19);
  v8 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*v18.i8, v6, 0), *v19.i8, v6, 1), *v21.i8, v6, 3), *v20.i8, v6, 2);
  v9 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v18, v6, 0), v19, v6, 1), v21, v6, 3), v20, v6, 2);
  v10 = vmlal_lane_s16(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*v18.i8, v6, 3), *v20.i8, v6, 2), *v19.i8, v6, 0), *v21.i8, v6, 1);
  v11 = vmlal_high_lane_s16(vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmull_high_lane_s16(v18, v6, 3), v20, v6, 2), v19, v6, 0), v21, v6, 1);
  v12 = vmlsl_lane_s16(vmull_lane_s16(*v7.i8, v6, 2), *v21.i8, v6, 2);
  v13 = vmlsl_high_lane_s16(vmull_high_lane_s16(v7, v6, 2), v21, v6, 2);
  v14 = vmul_s16(v6, 0x3000300030003);
  v15 = vmlal_lane_s16(vsubq_s32(v10, v8), *v20.i8, v14, 2);
  v16 = vmlal_high_lane_s16(vsubq_s32(v11, v9), v20, v14, 2);
  *a2 = vrshrn_high_n_s32(vrshrn_n_s32(v8, 0xDuLL), v9, 0xDuLL);
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(v12, 0xDuLL), v13, 0xDuLL);
  result = vrshrn_high_n_s32(vrshrn_n_s32(v10, 0xDuLL), v11, 0xDuLL);
  a2[2] = result;
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(v15, 0xDuLL), v16, 0xDuLL);
  return result;
}

int16x8_t sub_2779E332C(int16x8_t *a1, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v22 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v18 + v4) = *a1;
    v4 += 16;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 64);
  for (i = 0; i != 64; i += 16)
  {
    *(&v18 + i) = vshlq_n_s16(*(&v18 + i), 2uLL);
  }

  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = vqaddq_s16(v18, v21);
  v8 = vqaddq_s16(v19, v20);
  v9 = vqsubq_s16(v19, v20);
  v10 = vqsubq_s16(v18, v21);
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v6.i8, 1), *v7.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v6.i8, 1), v7, *v6.i8, 0), 0xDuLL);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v6.i8, 2), *v7.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v6.i8, 2), v7, *v6.i8, 1), 0xDuLL);
  v13 = vmlal_laneq_s16(vmull_laneq_s16(*v9.i8, v6, 5), *v10.i8, v6, 4);
  v14 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v9, v6, 5), v10, v6, 4);
  v15 = vmlal_laneq_s16(vmull_laneq_s16(*v9.i8, v6, 6), *v10.i8, v6, 5);
  v16 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v9, v6, 6), v10, v6, 5);
  result = vrshrn_high_n_s32(vrshrn_n_s32(v13, 0xDuLL), v14, 0xDuLL);
  *a2 = v11;
  a2[1] = result;
  a2[2] = v12;
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(v15, 0xDuLL), v16, 0xDuLL);
  return result;
}

void sub_2779E3450(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v43[16] = *MEMORY[0x277D85DE8];
  v5 = off_28866DD20[a4];
  v6 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) != 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (a4 == 6)
  {
    v6 = 0;
LABEL_7:
    a1 += 30 * a3;
    a3 = -a3;
  }

LABEL_8:
  (off_28866DCA0[a4])(a1, v43, a3, 13);
  v11 = 0;
  v12.i64[1] = 0;
  do
  {
    v43[v11] = vrhadd_s16(v43[v11], 0);
    ++v11;
  }

  while (v11 != 16);
  v13 = 0;
  v12.i64[0] = v43[0];
  v7.i64[0] = v43[1];
  v14 = vzip1q_s16(v12, v7);
  v7.i64[0] = v43[2];
  v8.i64[0] = v43[3];
  v15 = vzip1q_s16(v7, v8);
  v8.i64[0] = v43[4];
  v9.i64[0] = v43[5];
  v16 = vzip1q_s16(v8, v9);
  v9.i64[0] = v43[6];
  v10.i64[0] = v43[7];
  v17 = vzip1q_s16(v9, v10);
  v18 = vzip1q_s32(v14, v15);
  v19 = vzip2q_s32(v14, v15);
  v20 = vzip1q_s32(v16, v17);
  v21 = vzip2q_s32(v16, v17);
  v22 = vzip2q_s64(v18, v20);
  v18.i64[1] = v20.i64[0];
  v41[0] = v18;
  v41[1] = v22;
  v23 = vzip2q_s64(v19, v21);
  v19.i64[1] = v21.i64[0];
  v41[2] = v19;
  v41[3] = v23;
  v19.i64[0] = v43[8];
  v23.i64[0] = v43[9];
  v24 = vzip1q_s16(v19, v23);
  v23.i64[0] = v43[10];
  v21.i64[0] = v43[11];
  v25 = vzip1q_s16(v23, v21);
  v21.i64[0] = v43[12];
  v22.i64[0] = v43[13];
  v26 = vzip1q_s16(v21, v22);
  v22.i64[0] = v43[14];
  v18.i64[0] = v43[15];
  v27 = vzip1q_s16(v22, v18);
  v28 = vzip1q_s32(v24, v25);
  v29 = vzip2q_s32(v24, v25);
  v30 = vzip1q_s32(v26, v27);
  v31 = vzip2q_s64(v28, v30);
  v28.i64[1] = v30.i64[0];
  v32 = vzip2q_s32(v26, v27);
  v33 = vzip2q_s64(v29, v32);
  v29.i64[1] = v32.i64[0];
  v42[0] = v28;
  v42[1] = v31;
  v42[2] = v29;
  v42[3] = v33;
  v34 = v41;
  v35 = 1;
  do
  {
    v36 = v35;
    v37 = a2 + 4 * v13;
    if ((v6 & 1) == 0)
    {
      for (i = 48; i != -16; i -= 16)
      {
        v39 = *v34++;
        *&v40[i] = v39;
      }

      v34 = v40;
    }

    (v5)(v34, v37, 16, 12);
    v35 = 0;
    v34 = v42;
    v13 = 8;
  }

  while ((v36 & 1) != 0);
}

int32x4_t sub_2779E3644(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v11 = *MEMORY[0x277D85DE8];
  v4 = vdupq_n_s16(0x16A1u);
  do
  {
    *&v10[v3] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*(a1 + v3), *v4.i8), 0xCuLL), vmull_high_s16(*(a1 + v3), v4), 0xCuLL);
    v3 += 16;
  }

  while (v3 != 64);
  v5 = 0;
  v6 = a2 + 1;
  do
  {
    v7 = *&v10[v5];
    v8 = vmovl_s16(*v7.i8);
    result = vmovl_high_s16(v7);
    v6[-1] = v8;
    *v6 = result;
    v5 += 16;
    v6 = (v6 + 4 * a3);
  }

  while (v5 != 64);
  return result;
}

int32x4_t sub_2779E36F0(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v5 = qword_277BEBCA0[a4 - 10];
  v6 = a1[1];
  v7 = vqaddq_s16(*a1, v6);
  v9 = a1[2];
  v8 = a1[3];
  v10 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*a1->i8, v5, 0), *v6.i8, v5, 1), *v8.i8, v5, 3), *v9.i8, v5, 2);
  v11 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*a1, v5, 0), v6, v5, 1), v8, v5, 3), v9, v5, 2);
  v12 = vmlal_lane_s16(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*a1->i8, v5, 3), *v9.i8, v5, 2), *v6.i8, v5, 0), *v8.i8, v5, 1);
  v13 = vmlal_high_lane_s16(vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmull_high_lane_s16(*a1, v5, 3), v9, v5, 2), v6, v5, 0), v8, v5, 1);
  v14 = vmlsl_lane_s16(vmull_lane_s16(*v7.i8, v5, 2), *v8.i8, v5, 2);
  v15 = vmlsl_high_lane_s16(vmull_high_lane_s16(v7, v5, 2), v8, v5, 2);
  v16 = vmul_s16(v5, 0x3000300030003);
  v21[0] = vrshrn_high_n_s32(vrshrn_n_s32(v10, 0xDuLL), v11, 0xDuLL);
  v21[1] = vrshrn_high_n_s32(vrshrn_n_s32(v14, 0xDuLL), v15, 0xDuLL);
  v21[2] = vrshrn_high_n_s32(vrshrn_n_s32(v12, 0xDuLL), v13, 0xDuLL);
  v21[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vsubq_s32(v12, v10), *v9.i8, v16, 2), 0xDuLL), vmlal_high_lane_s16(vsubq_s32(v13, v11), v9, v16, 2), 0xDuLL);
  v17 = a2 + 1;
  do
  {
    v18 = v21[v4];
    v19 = vmovl_s16(*v18.i8);
    result = vmovl_high_s16(v18);
    v17[-1] = v19;
    *v17 = result;
    ++v4;
    v17 = (v17 + 4 * a3);
  }

  while (v4 != 4);
  return result;
}

int32x4_t sub_2779E3814(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v5 = xmmword_277BEB8A0[16 * a4 - 160];
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = vqaddq_s16(*a1, v7);
  v10 = vqaddq_s16(v6, v8);
  v11 = vqsubq_s16(v6, v8);
  v12 = vqsubq_s16(*a1, v7);
  v17[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5.i8, 1), *v9.i8, *v5.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5.i8, 1), v9, *v5.i8, 0), 0xDuLL);
  v17[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v11.i8, v5, 5), *v12.i8, v5, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v11, v5, 5), v12, v5, 4), 0xDuLL);
  v17[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5.i8, 2), *v9.i8, *v5.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5.i8, 2), v9, *v5.i8, 1), 0xDuLL);
  v17[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v11.i8, v5, 6), *v12.i8, v5, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v11, v5, 6), v12, v5, 5), 0xDuLL);
  v13 = a2 + 1;
  do
  {
    v14 = v17[v4];
    v15 = vmovl_s16(*v14.i8);
    result = vmovl_high_s16(v14);
    v13[-1] = v15;
    *v13 = result;
    ++v4;
    v13 = (v13 + 4 * a3);
  }

  while (v4 != 4);
  return result;
}

void *sub_2779E3924(void *result, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *result;
    v3 += 8;
    result = (result + 2 * a3);
  }

  while (v3 != 128);
  for (i = 0; i != 128; i += 8)
  {
    *&v7[i] = vshl_n_s16(*&v7[i], 2uLL);
  }

  v5 = 0;
  v6 = vdup_n_s16(0x2D42u);
  do
  {
    *(a2 + v5) = vqrshrn_n_s32(vmull_s16(*&v7[v5], v6), 0xCuLL);
    v5 += 8;
  }

  while (v5 != 128);
  return result;
}

int16x4_t *sub_2779E39DC(int16x4_t *result, int16x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v96 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v80 + v4) = *result;
    v4 += 8;
    result = (result + 2 * a3);
  }

  while (v4 != 128);
  for (i = 0; i != 128; i += 8)
  {
    *(&v80 + i) = vshl_n_s16(*(&v80 + i), 2uLL);
  }

  v6 = &xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  v8 = xmmword_277BEB8A0[16 * a4 - 156];
  v9 = xmmword_277BEB8A0[16 * a4 - 155];
  v10 = xmmword_277BEB8A0[16 * a4 - 154];
  v11 = xmmword_277BEB8A0[16 * a4 - 153];
  v12 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v87, *v6, 3), v88, *v6, 0), 0xDuLL);
  v13 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v87, *v6, 2), v88, *v6, 3), 0xDuLL);
  v14 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v91, *v6, 1), v84, *v6, 0), 0xDuLL);
  v15 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v91, *v6, 2), v84, *v6, 1), 0xDuLL);
  v16 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v89, *v6, 1), v86, *v6, 0), 0xDuLL);
  v17 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v89, *v6, 2), v86, *v6, 1), 0xDuLL);
  v18 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v85, *v6, 3), v90, *v6, 0), 0xDuLL);
  v19 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v85, *v6, 2), v90, *v6, 3), 0xDuLL);
  v20 = vqadd_s16(v80, v12);
  v21 = vqsub_s16(v13, v95);
  v22 = vqsub_s16(v80, v12);
  v23 = vqadd_s16(v95, v13);
  v24 = vqsub_s16(v15, v83);
  v25 = vqadd_s16(v92, v14);
  v26 = vqadd_s16(v83, v15);
  v27 = vqsub_s16(v92, v14);
  v28 = vqsub_s16(v17, v81);
  v29 = vqadd_s16(v94, v16);
  v30 = vqadd_s16(v81, v17);
  v31 = vqsub_s16(v94, v16);
  v32 = vqadd_s16(v82, v18);
  v33 = vqsub_s16(v19, v93);
  v34 = vqsub_s16(v82, v18);
  v35 = vqadd_s16(v93, v19);
  v36 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v25, *v6->i8, 5), v24, *v6->i8, 4), 0xDuLL);
  v37 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v25, *v6->i8, 6), v24, *v6->i8, 5), 0xDuLL);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(v26, *v6->i8, 5), v27, *v6->i8, 4);
  v39 = vmlal_laneq_s16(vmull_laneq_s16(v26, *v6->i8, 6), v27, *v6->i8, 5);
  v40 = vqrshrn_n_s32(v38, 0xDuLL);
  *v39.i8 = vqrshrn_n_s32(v39, 0xDuLL);
  v41 = vmlal_laneq_s16(vmull_laneq_s16(v33, *v6->i8, 5), v32, *v6->i8, 4);
  v42 = vmlal_laneq_s16(vmull_laneq_s16(v33, *v6->i8, 6), v32, *v6->i8, 5);
  v43 = vqrshrn_n_s32(v41, 0xDuLL);
  *v42.i8 = vqrshrn_n_s32(v42, 0xDuLL);
  v44 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v35, *v6->i8, 7), v34, *v6->i8, 4), 0xDuLL);
  v45 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v35, *v6->i8, 6), v34, *v6->i8, 7), 0xDuLL);
  v46 = vqadd_s16(v20, v36);
  *v41.i8 = vqadd_s16(v21, v37);
  v47 = vqadd_s16(v22, v40);
  v48 = vqsub_s16(*v39.i8, v23);
  v49 = vqsub_s16(v20, v36);
  v50 = vqsub_s16(v21, v37);
  v51 = vqsub_s16(v22, v40);
  v52 = vqadd_s16(v23, *v39.i8);
  v53 = vqadd_s16(v28, v43);
  *v39.i8 = vqadd_s16(v29, *v42.i8);
  v54 = vqsub_s16(v45, v30);
  v55 = vqadd_s16(v31, v44);
  v56 = vqsub_s16(v28, v43);
  v57 = vqsub_s16(v29, *v42.i8);
  v58 = vqadd_s16(v30, v45);
  v59 = vqsub_s16(v31, v44);
  v60 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v39.i8, *v7.i8, 1), v53, *v7.i8, 0), 0xDuLL);
  v61 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v39.i8, *v7.i8, 2), v53, *v7.i8, 1), 0xDuLL);
  *v39.i8 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v55, v7, 4), v54, v7, 5), 0xDuLL);
  v62 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v55, v7, 7), v54, v7, 4), 0xDuLL);
  v63 = vmlal_lane_s16(vmull_lane_s16(v56, *v7.i8, 0), v57, *v7.i8, 1);
  v64 = vmlal_lane_s16(vmull_lane_s16(v56, *v7.i8, 3), v57, *v7.i8, 0);
  v65 = vqrshrn_n_s32(v63, 0xDuLL);
  *v64.i8 = vqrshrn_n_s32(v64, 0xDuLL);
  v66 = vmlal_laneq_s16(vmull_laneq_s16(v58, v7, 4), v59, v7, 5);
  v67 = vmlal_laneq_s16(vmull_laneq_s16(v58, v7, 7), v59, v7, 4);
  *v7.i8 = vqrshrn_n_s32(v66, 0xDuLL);
  v68 = vqrshrn_n_s32(v67, 0xDuLL);
  *v67.i8 = vqadd_s16(v46, v60);
  *v66.i8 = vqadd_s16(*v41.i8, v61);
  v69 = vqadd_s16(v47, *v39.i8);
  v70 = vqadd_s16(v48, v62);
  v71 = vqadd_s16(v49, *v64.i8);
  v72 = vqadd_s16(v50, v65);
  v73 = vqadd_s16(v51, *v7.i8);
  v74 = vqsub_s16(v68, v52);
  v75 = vqsub_s16(v46, v60);
  *v41.i8 = vqsub_s16(*v41.i8, v61);
  v76 = vqsub_s16(v47, *v39.i8);
  v77 = vqsub_s16(v48, v62);
  v78 = vqsub_s16(v49, *v64.i8);
  *v39.i8 = vqsub_s16(v50, v65);
  *v7.i8 = vqsub_s16(v51, *v7.i8);
  v79 = vqadd_s16(v52, v68);
  a2[6] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v74, *v11.i8, 2), v73, *v11.i8, 1), 0xDuLL);
  a2[7] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v11, 4), v75, v11, 5), 0xDuLL);
  a2[8] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v11, 7), v75, v11, 4), 0xDuLL);
  a2[9] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v74, *v11.i8, 1), v73, *v11.i8, 0), 0xDuLL);
  a2[4] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v72, *v10.i8, 2), v71, *v10.i8, 1), 0xDuLL);
  a2[5] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v77, v10, 4), v76, v10, 5), 0xDuLL);
  a2[10] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v77, v10, 7), v76, v10, 4), 0xDuLL);
  a2[11] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v72, *v10.i8, 1), v71, *v10.i8, 0), 0xDuLL);
  a2[2] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v70, *v9.i8, 2), v69, *v9.i8, 1), 0xDuLL);
  a2[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v39.i8, v9, 4), v78, v9, 5), 0xDuLL);
  a2[12] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v39.i8, v9, 7), v78, v9, 4), 0xDuLL);
  a2[13] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v70, *v9.i8, 1), v69, *v9.i8, 0), 0xDuLL);
  a2[14] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v79, v8, 5), *v7.i8, v8, 4), 0xDuLL);
  a2[15] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v8.i8, 1), *v67.i8, *v8.i8, 0), 0xDuLL);
  *a2 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v8.i8, 2), *v67.i8, *v8.i8, 1), 0xDuLL);
  a2[1] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v79, v8, 6), *v7.i8, v8, 5), 0xDuLL);
  return result;
}

int16x4_t sub_2779E3D78(void *a1, int16x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v73 = *MEMORY[0x277D85DE8];
  do
  {
    *&v55[v4] = *a1;
    v4 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 128);
  for (i = 0; i != 128; i += 8)
  {
    *&v55[i] = vshl_n_s16(*&v55[i], 2uLL);
  }

  v6 = 0;
  v8 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  v9 = xmmword_277BEB8A0[16 * a4 - 158];
  v10 = xmmword_277BEB8A0[16 * a4 - 157];
  for (j = 120; j != 56; j -= 8)
  {
    *&v64[v6] = vqadd_s16(*&v55[v6], *&v55[j]);
    v6 += 8;
  }

  v12 = 56;
  v13 = 64;
  do
  {
    *&v64[v13] = vqsub_s16(*&v55[v12], *&v55[v13]);
    v12 -= 8;
    v13 += 8;
  }

  while (v12 != -8);
  v14 = 0;
  for (k = 56; k != 24; k -= 8)
  {
    *(&v56 + v14) = vqadd_s16(*&v64[v14], *&v64[k]);
    v14 += 8;
  }

  v16 = 24;
  v17 = 32;
  do
  {
    *(&v56 + v17) = vqsub_s16(*&v64[v16], *&v64[v17]);
    v16 -= 8;
    v17 += 8;
  }

  while (v16 != -8);
  v18 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v67, *v8.i8, 1), v70, *v8.i8, 0), 0xDuLL);
  v19 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v67, *v8.i8, 2), v70, *v8.i8, 1), 0xDuLL);
  v20 = vmlal_lane_s16(vmull_lane_s16(v68, *v8.i8, 2), v69, *v8.i8, 1);
  v21 = vqadd_s16(v56, v59);
  v22 = vqadd_s16(v57, v58);
  v23 = vqsub_s16(v57, v58);
  v24 = vqsub_s16(v56, v59);
  v25 = vmlal_lane_s16(vmull_lane_s16(v61, *v8.i8, 1), v62, *v8.i8, 0);
  v26 = vmlal_lane_s16(vmull_lane_s16(v61, *v8.i8, 2), v62, *v8.i8, 1);
  v27 = vqadd_s16(v66, v19);
  v28 = vqsub_s16(v66, v19);
  v29 = vqsub_s16(v71, v18);
  v30 = vqadd_s16(v71, v18);
  v31 = vmlal_lane_s16(vmull_lane_s16(v22, *v8.i8, 1), v21, *v8.i8, 0);
  v32 = vmlal_lane_s16(vmull_lane_s16(v22, *v8.i8, 2), v21, *v8.i8, 1);
  v33 = vmlal_laneq_s16(vmull_laneq_s16(v23, v8, 5), v24, v8, 4);
  v34 = vmlal_laneq_s16(vmull_laneq_s16(v23, v8, 6), v24, v8, 5);
  v35 = vmlal_laneq_s16(vmull_laneq_s16(v27, v8, 5), v30, v8, 4);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(v27, v8, 6), v30, v8, 5);
  v37 = vmlal_laneq_s16(vmull_laneq_s16(v28, v8, 6), v29, v8, 5);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(v28, v8, 7), v29, v8, 6);
  v39 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v68, *v8.i8, 1), v69, *v8.i8, 0), 0xDuLL);
  v40 = vqrshrn_n_s32(v20, 0xDuLL);
  *v20.i8 = vqrshrn_n_s32(v25, 0xDuLL);
  *v26.i8 = vqrshrn_n_s32(v26, 0xDuLL);
  *v25.i8 = vqadd_s16(v65, v40);
  v41 = vqsub_s16(v65, v40);
  v42 = vqsub_s16(v72, v39);
  v43 = vqadd_s16(v72, v39);
  v44 = vqrshrn_n_s32(v33, 0xDuLL);
  v45 = vqrshrn_n_s32(v34, 0xDuLL);
  *v34.i8 = vqadd_s16(v60, *v26.i8);
  *v33.i8 = vqsub_s16(v60, *v26.i8);
  *v26.i8 = vqsub_s16(v63, *v20.i8);
  *v20.i8 = vqadd_s16(v63, *v20.i8);
  *v35.i8 = vqrshrn_n_s32(v35, 0xDuLL);
  v46 = vqrshrn_n_s32(v36, 0xDuLL);
  *v37.i8 = vqrshrn_n_s32(v37, 0xDuLL);
  *v38.i8 = vqrshrn_n_s32(v38, 0xDuLL);
  v47 = vmlal_lane_s16(vmull_lane_s16(*v34.i8, *v7.i8, 1), *v20.i8, *v7.i8, 0);
  v48 = vmlal_lane_s16(vmull_lane_s16(*v34.i8, *v7.i8, 2), *v20.i8, *v7.i8, 1);
  *v20.i8 = vqrshrn_n_s32(v47, 0xDuLL);
  v49 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v7, 4), *v26.i8, v7, 5);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v7, 7), *v26.i8, v7, 4);
  v51 = vqrshrn_n_s32(v49, 0xDuLL);
  *v26.i8 = vqadd_s16(*v25.i8, v46);
  v52 = vqsub_s16(*v25.i8, v46);
  *v25.i8 = vqsub_s16(v41, *v38.i8);
  *v38.i8 = vqadd_s16(v41, *v38.i8);
  v53 = vqadd_s16(v42, *v37.i8);
  *v37.i8 = vqsub_s16(v42, *v37.i8);
  *v49.i8 = vqsub_s16(v43, *v35.i8);
  *v35.i8 = vqadd_s16(v43, *v35.i8);
  *a2 = vqrshrn_n_s32(v31, 0xDuLL);
  a2[1] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v26.i8, *v9.i8, 1), *v35.i8, *v9.i8, 0), 0xDuLL);
  a2[14] = vqrshrn_n_s32(v48, 0xDuLL);
  a2[15] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v26.i8, *v9.i8, 2), *v35.i8, *v9.i8, 1), 0xDuLL);
  a2[8] = vqrshrn_n_s32(v32, 0xDuLL);
  a2[9] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v52, v10, 4), *v49.i8, v10, 5), 0xDuLL);
  a2[6] = vqrshrn_n_s32(v50, 0xDuLL);
  a2[7] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v52, v10, 7), *v49.i8, v10, 4), 0xDuLL);
  a2[4] = v44;
  a2[5] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v10.i8, 1), *v37.i8, *v10.i8, 0), 0xDuLL);
  a2[10] = v51;
  a2[11] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v10.i8, 2), *v37.i8, *v10.i8, 1), 0xDuLL);
  a2[12] = v45;
  a2[13] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v38.i8, v9, 4), v53, v9, 5), 0xDuLL);
  result = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v38.i8, v9, 7), v53, v9, 4), 0xDuLL);
  a2[2] = *v20.i8;
  a2[3] = result;
  return result;
}

uint64_t sub_2779E40C0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = 0;
  v58 = *MEMORY[0x277D85DE8];
  v8 = off_28866D7A0[v7];
  v9 = v56;
  do
  {
    (v8)(v5 + 16 * v6, v57, v2, 12);
    for (i = 0; i != 512; i += 16)
    {
      *&v57[i] = vrshrq_n_s16(*&v57[i], 4uLL);
    }

    v11 = v9;
    for (j = 112; j != 624; j += 128)
    {
      v13 = *&v56[j + 3920];
      v14 = *&v56[j + 3936];
      v15 = vtrn1q_s16(v13, v14);
      v16 = vtrn2q_s16(v13, v14);
      v17 = *&v56[j + 3952];
      v18 = *&v56[j + 3968];
      v19 = vtrn1q_s16(v17, v18);
      v20 = vtrn2q_s16(v17, v18);
      v21 = *&v56[j + 3984];
      v22 = *&v56[j + 4000];
      v23 = vtrn1q_s16(v21, v22);
      v24 = vtrn2q_s16(v21, v22);
      v25 = *&v56[j + 4016];
      v26 = *&v57[j];
      v27 = vtrn1q_s16(v25, v26);
      v28 = vtrn2q_s16(v25, v26);
      v29 = vtrn1q_s32(v15, v19);
      v30 = vtrn2q_s32(v15, v19);
      v31 = vtrn1q_s32(v16, v20);
      v32 = vtrn2q_s32(v16, v20);
      v33 = vtrn1q_s32(v23, v27);
      v34 = vtrn2q_s32(v23, v27);
      v35 = vzip2q_s64(v29, v33);
      v29.i64[1] = v33.i64[0];
      v36 = vtrn1q_s32(v24, v28);
      v37 = vtrn2q_s32(v24, v28);
      v38 = vzip2q_s64(v31, v36);
      v31.i64[1] = v36.i64[0];
      v39 = vzip2q_s64(v30, v34);
      v30.i64[1] = v34.i64[0];
      v34.i64[0] = v32.i64[0];
      v34.i64[1] = v37.i64[0];
      v11[-4] = v29;
      v11[-3] = v31;
      v11[-2] = v30;
      v11[-1] = v34;
      *v11 = v35;
      v11[1] = v38;
      v11[2] = v39;
      v11[3] = vzip2q_s64(v32, v37);
      v11 += 64;
    }

    ++v6;
    v9 += 8;
  }

  while (v6 != 8);
  v40 = 0;
  v41 = (v4 + 16);
  v42 = &v55;
  v53 = vdupq_n_s32(0x16A1u);
  do
  {
    for (k = 0; k != 1024; k += 16)
    {
      v44 = *&v42[k];
      *&v54[k + 1024] = vmovl_s16(*v44.i8);
      *&v54[k] = vmovl_high_s16(v44);
    }

    sub_2779E436C();
    result = sub_2779E436C();
    for (m = 0; m != 512; m += 16)
    {
      *&v54[m + 1024] = vrshrq_n_s32(*&v54[m + 1024], 2uLL);
    }

    for (n = 0; n != 512; n += 16)
    {
      *&v54[n] = vrshrq_n_s32(*&v54[n], 2uLL);
    }

    for (ii = 0; ii != 512; ii += 16)
    {
      *&v54[ii + 1024] = vrshrq_n_s32(vmulq_s32(*&v54[ii + 1024], v53), 0xCuLL);
    }

    for (jj = 0; jj != 512; jj += 16)
    {
      *&v54[jj] = vrshrq_n_s32(vmulq_s32(*&v54[jj], v53), 0xCuLL);
    }

    v50 = 0;
    v51 = v41;
    do
    {
      v52 = *&v54[v50];
      *(v51 - 1) = *&v54[v50 + 1024];
      *v51 = v52;
      v50 += 16;
      v51 += 8;
    }

    while (v50 != 512);
    ++v40;
    v42 += 1024;
    v41 += 2;
  }

  while (v40 != 4);
  return result;
}

uint64_t sub_2779E436C()
{
  result = MEMORY[0x28223BE20]();
  v2 = 0;
  v439 = *MEMORY[0x277D85DE8];
  v4 = &xmmword_277BEB8A0[16 * (v3 - 10)];
  v6 = *v4;
  v5 = v4[1];
  v246 = v4[3];
  v248 = v4[2];
  v250 = v4[5];
  v252 = v4[6];
  v254 = v4[7];
  v256 = v4[4];
  v261 = v4[10];
  v262 = v4[11];
  v263 = v4[12];
  v260 = v4[13];
  v7 = 1008;
  v258 = v4[9];
  v259 = v4[14];
  v264 = v4[15];
  v265 = v4[8];
  do
  {
    *&v422[v2] = vqaddq_s32(*(result + v2), *(result + v7));
    v7 -= 16;
    v2 += 16;
  }

  while (v7 != 496);
  v8 = 496;
  v9 = 512;
  do
  {
    *&v422[v9] = vqsubq_s32(*(result + v8), *(result + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  for (i = 496; i != 240; i -= 16)
  {
    *&v397[v10] = vqaddq_s32(*&v422[v10], *&v422[i]);
    v10 += 16;
  }

  v12 = 240;
  v13 = 256;
  do
  {
    *&v397[v13] = vqsubq_s32(*&v422[v12], *&v422[v13]);
    v12 -= 16;
    v13 += 16;
  }

  while (v12 != -16);
  v14 = 0;
  v15 = vmovl_s16(*v6.i8);
  v16 = vmovl_s16(vdup_lane_s16(*v6.i8, 0));
  v17 = vmovl_s16(vdup_lane_s16(*v6.i8, 1));
  v18 = vmovl_s16(vdup_lane_s16(*v6.i8, 2));
  v421 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v438, v16), v423, v17), 0xDuLL);
  v420 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v437, v16), v424, v17), 0xDuLL);
  v406 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v438, v17), v423, v18), 0xDuLL);
  v407 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v437, v17), v424, v18), 0xDuLL);
  v419 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v436, v16), v425, v17), 0xDuLL);
  v418 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v435, v16), v426, v17), 0xDuLL);
  v408 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v436, v17), v425, v18), 0xDuLL);
  v409 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v435, v17), v426, v18), 0xDuLL);
  v417 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v434, v16), v427, v17), 0xDuLL);
  v416 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v433, v16), v428, v17), 0xDuLL);
  v410 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v434, v17), v427, v18), 0xDuLL);
  v411 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v433, v17), v428, v18), 0xDuLL);
  v19 = vdupq_lane_s32(*v15.i8, 0);
  v20 = vdupq_lane_s32(*v15.i8, 1);
  v21 = vdupq_laneq_s32(v15, 2);
  v415 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v432, v16), v429, v17), 0xDuLL);
  v414 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v431, v16), v430, v17), 0xDuLL);
  v412 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v432, v17), v429, v18), 0xDuLL);
  v413 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v431, v17), v430, v18), 0xDuLL);
  for (j = 240; j != 112; j -= 16)
  {
    *&v364[v14] = vqaddq_s32(*&v397[v14], *&v397[j]);
    v14 += 16;
  }

  v23 = 112;
  v24 = 128;
  do
  {
    *&v364[v24] = vqsubq_s32(*&v397[v23], *&v397[v24]);
    v23 -= 16;
    v24 += 16;
  }

  while (v23 != -16);
  v380 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v405, v19), v398, v20), 0xDuLL);
  v379 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v404, v19), v399, v20), 0xDuLL);
  v373 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v405, v20), v398, v21), 0xDuLL);
  v374 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v404, v20), v399, v21), 0xDuLL);
  v378 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v403, v19), v400, v20), 0xDuLL);
  v377 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v402, v19), v401, v20), 0xDuLL);
  v25 = 752;
  v375 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v403, v20), v400, v21), 0xDuLL);
  v376 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v402, v20), v401, v21), 0xDuLL);
  v26 = 512;
  do
  {
    *&v364[v26] = vqaddq_s32(*&v422[v26], *&v397[v25]);
    v25 -= 16;
    v26 += 16;
  }

  while (v25 != 624);
  v27 = 640;
  do
  {
    *&v364[v27] = vqsubq_s32(*&v422[v25], *&v397[v27]);
    v25 -= 16;
    v27 += 16;
  }

  while (v25 != 496);
  v28 = 1008;
  v29 = 768;
  do
  {
    *&v364[v29] = vqsubq_s32(*&v422[v28], *&v397[v29]);
    v28 -= 16;
    v29 += 16;
  }

  while (v28 != 880);
  v30 = 896;
  v31 = 880;
  do
  {
    *&v364[v30] = vqaddq_s32(*&v422[v30], *&v397[v31]);
    v30 += 16;
    v31 -= 16;
  }

  while (v30 != 1024);
  v32 = 0;
  for (k = 112; k != 48; k -= 16)
  {
    *(&v320 + v32) = vqaddq_s32(*&v364[v32], *&v364[k]);
    v32 += 16;
  }

  v34 = 48;
  v35 = 64;
  do
  {
    *(&v320 + v35) = vqsubq_s32(*&v364[v34], *&v364[v35]);
    v34 -= 16;
    v35 += 16;
  }

  while (v34 != -16);
  v331 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v370, v19), v367, v20), 0xDuLL);
  v330 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v369, v19), v368, v20), 0xDuLL);
  v36 = 368;
  v328 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v370, v20), v367, v21), 0xDuLL);
  v329 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v369, v20), v368, v21), 0xDuLL);
  v37 = 256;
  do
  {
    *(&v320 + v37) = vqaddq_s32(*&v397[v37], *&v364[v36]);
    v36 -= 16;
    v37 += 16;
  }

  while (v36 != 304);
  v38 = 320;
  do
  {
    *(&v320 + v38) = vqsubq_s32(*&v397[v36], *&v364[v38]);
    v36 -= 16;
    v38 += 16;
  }

  while (v36 != 240);
  v39 = 496;
  v40 = 384;
  do
  {
    *(&v320 + v40) = vqsubq_s32(*&v397[v39], *&v364[v40]);
    v39 -= 16;
    v40 += 16;
  }

  while (v39 != 432);
  v41 = 448;
  v42 = 432;
  do
  {
    *(&v320 + v41) = vqaddq_s32(*&v397[v41], *&v364[v42]);
    v41 += 16;
    v42 -= 16;
  }

  while (v41 != 512);
  v43 = vmovl_high_s16(v6);
  v44 = vdupq_lane_s32(*v43.i8, 0);
  v45 = vdupq_lane_s32(*v43.i8, 1);
  v46 = vmovl_s16(vdup_laneq_s16(v6, 4));
  v47 = vmovl_s16(vdup_laneq_s16(v6, 5));
  v48 = vmovl_s16(vdup_laneq_s16(v6, 6));
  v363 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v396, v46), v381, v47), 0xDuLL);
  v362 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v395, v46), v382, v47), 0xDuLL);
  v348 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v396, v47), v381, v48), 0xDuLL);
  v349 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v395, v47), v382, v48), 0xDuLL);
  v361 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v394, v46), v383, v47), 0xDuLL);
  v360 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v393, v46), v384, v47), 0xDuLL);
  v350 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v394, v47), v383, v48), 0xDuLL);
  v351 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v393, v47), v384, v48), 0xDuLL);
  v49 = vmovl_s16(vdup_laneq_s16(v6, 7));
  v359 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v392, v47), v385, v48), 0xDuLL);
  v358 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v391, v47), v386, v48), 0xDuLL);
  v352 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v392, v48), v385, v49), 0xDuLL);
  v353 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v391, v48), v386, v49), 0xDuLL);
  v357 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v390, v47), v387, v48), 0xDuLL);
  v356 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v389, v47), v388, v48), 0xDuLL);
  v354 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v390, v48), v387, v49), 0xDuLL);
  v355 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v389, v48), v388, v49), 0xDuLL);
  v266 = vqaddq_s32(v320, v323);
  v267 = vqaddq_s32(v321, v322);
  v268 = vqsubq_s32(v321, v322);
  v269 = vqsubq_s32(v320, v323);
  v270 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v326, v20), v325, v21), 0xDuLL);
  v271 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v326, v19), v325, v20), 0xDuLL);
  v272 = vqaddq_s32(v365, v329);
  v273 = vqaddq_s32(v366, v328);
  v274 = vqsubq_s32(v366, v328);
  v275 = vqsubq_s32(v365, v329);
  v276 = vqsubq_s32(v372, v330);
  v277 = vqsubq_s32(v371, v331);
  v50 = vdupq_laneq_s32(v43, 2);
  v278 = vqaddq_s32(v371, v331);
  v279 = vqaddq_s32(v372, v330);
  v286 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v344, v46), v335, v47), 0xDuLL);
  v287 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v345, v46), v334, v47), 0xDuLL);
  v51 = vdupq_laneq_s32(v43, 3);
  v280 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v345, v47), v334, v48), 0xDuLL);
  v281 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v344, v47), v335, v48), 0xDuLL);
  v284 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v342, v47), v337, v48), 0xDuLL);
  v285 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v343, v47), v336, v48), 0xDuLL);
  v52 = 624;
  v53 = 512;
  v282 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v343, v48), v336, v49), 0xDuLL);
  v283 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v342, v48), v337, v49), 0xDuLL);
  do
  {
    *(&v266 + v53) = vqaddq_s32(*&v364[v53], *(&v320 + v52));
    v52 -= 16;
    v53 += 16;
  }

  while (v52 != 560);
  v54 = 576;
  do
  {
    *(&v266 + v54) = vqsubq_s32(*&v364[v52], *(&v320 + v54));
    v52 -= 16;
    v54 += 16;
  }

  while (v52 != 496);
  v55 = 752;
  v56 = 640;
  do
  {
    *(&v266 + v56) = vqsubq_s32(*&v364[v55], *(&v320 + v56));
    v55 -= 16;
    v56 += 16;
  }

  while (v55 != 688);
  v57 = 704;
  v58 = 688;
  do
  {
    *(&v266 + v57) = vqaddq_s32(*&v364[v57], *(&v320 + v58));
    v57 += 16;
    v58 -= 16;
  }

  while (v57 != 768);
  v59 = 880;
  v60 = 768;
  do
  {
    *(&v266 + v60) = vqaddq_s32(*&v364[v60], *(&v320 + v59));
    v59 -= 16;
    v60 += 16;
  }

  while (v59 != 816);
  v61 = 832;
  do
  {
    *(&v266 + v61) = vqsubq_s32(*&v364[v59], *(&v320 + v61));
    v59 -= 16;
    v61 += 16;
  }

  while (v59 != 752);
  v62 = 1008;
  v63 = 896;
  do
  {
    *(&v266 + v63) = vqsubq_s32(*&v364[v62], *(&v320 + v63));
    v62 -= 16;
    v63 += 16;
  }

  while (v62 != 944);
  v64 = 960;
  v65 = 944;
  do
  {
    *(&v266 + v64) = vqaddq_s32(*&v364[v64], *(&v320 + v65));
    v64 += 16;
    v65 -= 16;
  }

  while (v64 != 1024);
  v244 = vmlaq_s32(vmulq_s32(v266, v19), v267, v20);
  v245 = vmlaq_s32(vmulq_s32(v269, v44), v268, v45);
  v66 = vmlaq_s32(vmulq_s32(v278, v44), v273, v45);
  v67 = vmlaq_s32(vmulq_s32(v278, v45), v273, v50);
  v68 = vmlaq_s32(vmulq_s32(v277, v45), v274, v50);
  v69 = vmlaq_s32(vmulq_s32(v277, v50), v274, v51);
  v70 = vqaddq_s32(v333, v280);
  v71 = vqsubq_s32(v333, v280);
  v72 = vqsubq_s32(v346, v287);
  v73 = vqaddq_s32(v346, v287);
  v74 = vmovl_s16(vdup_lane_s16(*v5.i8, 0));
  v75 = vmovl_s16(vdup_lane_s16(*v5.i8, 1));
  v76 = vmlaq_s32(vmulq_s32(v317, v74), v290, v75);
  v77 = vmovl_s16(vdup_lane_s16(*v5.i8, 2));
  v78 = vmlaq_s32(vmulq_s32(v317, v75), v290, v77);
  v231 = vmlaq_s32(vmulq_s32(v316, v74), v291, v75);
  v233 = vmlaq_s32(vmulq_s32(v316, v75), v291, v77);
  v236 = vmlaq_s32(vmulq_s32(v315, v75), v292, v77);
  v79 = vmovl_s16(vdup_lane_s16(*v5.i8, 3));
  v238 = vmlaq_s32(vmulq_s32(v315, v77), v292, v79);
  v80 = vmlaq_s32(vmulq_s32(v314, v75), v293, v77);
  v81 = vmlaq_s32(vmulq_s32(v314, v77), v293, v79);
  v243 = vmlaq_s32(vmulq_s32(vqaddq_s32(v327, v271), v74), vqaddq_s32(v324, v270), v75);
  v82 = vmlaq_s32(vmulq_s32(v73, v74), v70, v75);
  v83 = vmlaq_s32(vmulq_s32(v73, v75), v70, v77);
  v226 = vmlaq_s32(vmulq_s32(v72, v75), v71, v77);
  v229 = vmlaq_s32(vmulq_s32(v72, v77), v71, v79);
  v84 = vqsubq_s32(v338, v283);
  v85 = vqaddq_s32(v338, v283);
  v86 = vqaddq_s32(v341, v284);
  v87 = vqsubq_s32(v341, v284);
  v88 = vmovl_s16(vdup_laneq_s16(v5, 5));
  v89 = vmovl_s16(vdup_laneq_s16(v5, 4));
  v90 = vmlaq_s32(vmulq_s32(v309, v88), v298, v89);
  v91 = vmovl_s16(vdup_laneq_s16(v5, 7));
  v92 = vmlaq_s32(vmulq_s32(v309, v89), v298, v91);
  v235 = vmlaq_s32(vmulq_s32(v308, v88), v299, v89);
  v237 = vmlaq_s32(vmulq_s32(v308, v89), v299, v91);
  v240 = vmlaq_s32(vmulq_s32(v307, v89), v300, v91);
  v93 = vmovl_s16(vdup_laneq_s16(v5, 6));
  v94 = vmlaq_s32(vmulq_s32(v306, v89), v301, v91);
  v95 = vmlaq_s32(vmulq_s32(v306, v91), v301, v93);
  v241 = vmlaq_s32(vmulq_s32(v307, v91), v300, v93);
  v242 = vmlaq_s32(vmulq_s32(vqsubq_s32(v327, v271), v89), vqsubq_s32(v324, v270), v91);
  v96 = vmlaq_s32(vmulq_s32(v87, v88), v84, v89);
  v97 = vmlaq_s32(vmulq_s32(v87, v89), v84, v91);
  v98 = vmlaq_s32(vmulq_s32(v86, v89), v85, v91);
  v99 = vmlaq_s32(vmulq_s32(v86, v91), v85, v93);
  v100 = vrshrq_n_s32(v78, 0xDuLL);
  v101 = vqaddq_s32(v289, v100);
  v102 = vqsubq_s32(v289, v100);
  v103 = vrshrq_n_s32(v76, 0xDuLL);
  v104 = vqsubq_s32(v318, v103);
  v105 = vqaddq_s32(v318, v103);
  v106 = vrshrq_n_s32(v66, 0xDuLL);
  v107 = vrshrq_n_s32(v67, 0xDuLL);
  v108 = vmovl_s16(vdup_lane_s16(*v248.i8, 0));
  v109 = vmovl_s16(vdup_lane_s16(*v248.i8, 1));
  v239 = vmlaq_s32(vmulq_s32(vqaddq_s32(v279, v106), v108), vqaddq_s32(v272, v107), v109);
  v110 = vmovl_s16(vdup_lane_s16(*v248.i8, 2));
  v111 = vmlaq_s32(vmulq_s32(v105, v108), v101, v109);
  v112 = vmlaq_s32(vmulq_s32(v105, v109), v101, v110);
  v113 = vmlaq_s32(vmulq_s32(v104, v109), v102, v110);
  v225 = vmlaq_s32(vmulq_s32(v104, v110), v102, vmovl_s16(vdup_lane_s16(*v248.i8, 3)));
  v114 = vqsubq_s32(v279, v106);
  v115 = vrshrq_n_s32(v81, 0xDuLL);
  v116 = vqsubq_s32(v294, v115);
  v117 = vqaddq_s32(v294, v115);
  v118 = vrshrq_n_s32(v80, 0xDuLL);
  v119 = vqaddq_s32(v313, v118);
  v120 = vqsubq_s32(v313, v118);
  v121 = vmovl_s16(vdup_laneq_s16(v246, 4));
  v122 = vmovl_s16(vdup_laneq_s16(v246, 7));
  v234 = vmlaq_s32(vmulq_s32(v114, v121), vqsubq_s32(v272, v107), v122);
  v123 = vmlaq_s32(vmulq_s32(v120, vmovl_s16(vdup_laneq_s16(v246, 5))), v116, v121);
  v124 = vmlaq_s32(vmulq_s32(v120, v121), v116, v122);
  v125 = vmlaq_s32(vmulq_s32(v119, v121), v117, v122);
  v126 = vmlaq_s32(vmulq_s32(v119, v122), v117, vmovl_s16(vdup_laneq_s16(v246, 6)));
  v127 = vrshrq_n_s32(v92, 0xDuLL);
  v128 = vqaddq_s32(v297, v127);
  v129 = vqsubq_s32(v297, v127);
  v130 = vrshrq_n_s32(v90, 0xDuLL);
  v131 = vqsubq_s32(v310, v130);
  v132 = vqaddq_s32(v310, v130);
  v133 = vrshrq_n_s32(v68, 0xDuLL);
  v134 = vrshrq_n_s32(v69, 0xDuLL);
  v135 = vmovl_s16(vdup_lane_s16(*v246.i8, 0));
  v136 = vmovl_s16(vdup_lane_s16(*v246.i8, 1));
  v232 = vmlaq_s32(vmulq_s32(vqsubq_s32(v276, v133), v135), vqsubq_s32(v275, v134), v136);
  v137 = vmovl_s16(vdup_lane_s16(*v246.i8, 2));
  v138 = vmlaq_s32(vmulq_s32(v132, v135), v128, v136);
  v139 = vmlaq_s32(vmulq_s32(v132, v136), v128, v137);
  v140 = vmlaq_s32(vmulq_s32(v131, v136), v129, v137);
  v141 = vmlaq_s32(vmulq_s32(v131, v137), v129, vmovl_s16(vdup_lane_s16(*v246.i8, 3)));
  v142 = vqaddq_s32(v275, v134);
  v143 = vrshrq_n_s32(v95, 0xDuLL);
  v144 = vqsubq_s32(v302, v143);
  v145 = vqaddq_s32(v302, v143);
  v146 = vrshrq_n_s32(v94, 0xDuLL);
  v147 = vqaddq_s32(v305, v146);
  v148 = vqsubq_s32(v305, v146);
  v149 = vmovl_s16(vdup_laneq_s16(v248, 4));
  v150 = vmovl_s16(vdup_laneq_s16(v248, 7));
  v247 = vmlaq_s32(vmulq_s32(vqaddq_s32(v276, v133), v149), v142, v150);
  v151 = vmlaq_s32(vmulq_s32(v148, vmovl_s16(vdup_laneq_s16(v248, 5))), v144, v149);
  v152 = vmlaq_s32(vmulq_s32(v148, v149), v144, v150);
  v153 = vmlaq_s32(vmulq_s32(v147, v149), v145, v150);
  v154 = vmlaq_s32(vmulq_s32(v147, v150), v145, vmovl_s16(vdup_laneq_s16(v248, 6)));
  v155 = vrshrq_n_s32(v82, 0xDuLL);
  v156 = vqaddq_s32(v347, v286);
  v157 = vrshrq_n_s32(v83, 0xDuLL);
  v158 = vqaddq_s32(v332, v281);
  v228 = vmlaq_s32(vmulq_s32(vqaddq_s32(v156, v155), vmovl_s16(vdup_lane_s16(*v256.i8, 0))), vqaddq_s32(v158, v157), vmovl_s16(vdup_lane_s16(*v256.i8, 1)));
  v249 = vmlaq_s32(vmulq_s32(vqsubq_s32(v156, v155), vmovl_s16(vdup_laneq_s16(v254, 4))), vqsubq_s32(v158, v157), vmovl_s16(vdup_laneq_s16(v254, 7)));
  v159 = vqsubq_s32(v332, v281);
  v160 = vqsubq_s32(v347, v286);
  v161 = vrshrq_n_s32(v226, 0xDuLL);
  v162 = vrshrq_n_s32(v229, 0xDuLL);
  v230 = vmlaq_s32(vmulq_s32(vqsubq_s32(v160, v161), vmovl_s16(vdup_lane_s16(*v252.i8, 0))), vqsubq_s32(v159, v162), vmovl_s16(vdup_lane_s16(*v252.i8, 1)));
  v227 = vmlaq_s32(vmulq_s32(vqaddq_s32(v160, v161), vmovl_s16(vdup_laneq_s16(v250, 4))), vqaddq_s32(v159, v162), vmovl_s16(vdup_laneq_s16(v250, 7)));
  v163 = vrshrq_n_s32(v96, 0xDuLL);
  v164 = vqsubq_s32(v340, v285);
  v165 = vrshrq_n_s32(v97, 0xDuLL);
  v166 = vqsubq_s32(v339, v282);
  v251 = vmlaq_s32(vmulq_s32(vqaddq_s32(v164, v163), vmovl_s16(vdup_lane_s16(*v250.i8, 0))), vqaddq_s32(v166, v165), vmovl_s16(vdup_lane_s16(*v250.i8, 1)));
  v253 = vmlaq_s32(vmulq_s32(vqsubq_s32(v164, v163), vmovl_s16(vdup_laneq_s16(v252, 4))), vqsubq_s32(v166, v165), vmovl_s16(vdup_laneq_s16(v252, 7)));
  v167 = vqaddq_s32(v339, v282);
  v168 = vqaddq_s32(v340, v285);
  v169 = vrshrq_n_s32(v98, 0xDuLL);
  v170 = vrshrq_n_s32(v99, 0xDuLL);
  v255 = vmlaq_s32(vmulq_s32(vqsubq_s32(v168, v169), vmovl_s16(vdup_lane_s16(*v254.i8, 0))), vqsubq_s32(v167, v170), vmovl_s16(vdup_lane_s16(*v254.i8, 1)));
  v257 = vmlaq_s32(vmulq_s32(vqaddq_s32(v168, v169), vmovl_s16(vdup_laneq_s16(v256, 4))), vqaddq_s32(v167, v170), vmovl_s16(vdup_laneq_s16(v256, 7)));
  v171 = vrshrq_n_s32(v231, 0xDuLL);
  v172 = vrshrq_n_s32(v111, 0xDuLL);
  v173 = vqaddq_s32(v319, v171);
  v174 = vrshrq_n_s32(v233, 0xDuLL);
  v175 = vrshrq_n_s32(v112, 0xDuLL);
  v176 = vqaddq_s32(v288, v174);
  v177 = vmlaq_s32(vmulq_s32(vqaddq_s32(v173, v172), vmovl_s16(vdup_lane_s16(*v265.i8, 0))), vqaddq_s32(v176, v175), vmovl_s16(vdup_lane_s16(*v265.i8, 1)));
  v178 = vmlaq_s32(vmulq_s32(vqsubq_s32(v173, v172), vmovl_s16(vdup_laneq_s16(v264, 4))), vqsubq_s32(v176, v175), vmovl_s16(vdup_laneq_s16(v264, 7)));
  v179 = vqsubq_s32(v288, v174);
  v180 = vqsubq_s32(v319, v171);
  v181 = vrshrq_n_s32(v113, 0xDuLL);
  v182 = vrshrq_n_s32(v225, 0xDuLL);
  v183 = vmlaq_s32(vmulq_s32(vqsubq_s32(v180, v181), vmovl_s16(vdup_lane_s16(*v263.i8, 0))), vqsubq_s32(v179, v182), vmovl_s16(vdup_lane_s16(*v263.i8, 1)));
  v184 = vmlaq_s32(vmulq_s32(vqaddq_s32(v180, v181), vmovl_s16(vdup_laneq_s16(v262, 4))), vqaddq_s32(v179, v182), vmovl_s16(vdup_laneq_s16(v262, 7)));
  v185 = vrshrq_n_s32(v236, 0xDuLL);
  v186 = vrshrq_n_s32(v123, 0xDuLL);
  v187 = vqsubq_s32(v312, v185);
  v188 = vrshrq_n_s32(v238, 0xDuLL);
  v189 = vrshrq_n_s32(v124, 0xDuLL);
  v190 = vqsubq_s32(v295, v188);
  v191 = vmlaq_s32(vmulq_s32(vqaddq_s32(v187, v186), vmovl_s16(vdup_lane_s16(*v261.i8, 0))), vqaddq_s32(v190, v189), vmovl_s16(vdup_lane_s16(*v261.i8, 1)));
  v192 = vmlaq_s32(vmulq_s32(vqsubq_s32(v187, v186), vmovl_s16(vdup_laneq_s16(v260, 4))), vqsubq_s32(v190, v189), vmovl_s16(vdup_laneq_s16(v260, 7)));
  v193 = vqaddq_s32(v295, v188);
  v194 = vqaddq_s32(v312, v185);
  v195 = vrshrq_n_s32(v125, 0xDuLL);
  v196 = vrshrq_n_s32(v126, 0xDuLL);
  v197 = vmlaq_s32(vmulq_s32(vqsubq_s32(v194, v195), vmovl_s16(vdup_lane_s16(*v259.i8, 0))), vqsubq_s32(v193, v196), vmovl_s16(vdup_lane_s16(*v259.i8, 1)));
  v198 = vmlaq_s32(vmulq_s32(vqaddq_s32(v194, v195), vmovl_s16(vdup_laneq_s16(v258, 4))), vqaddq_s32(v193, v196), vmovl_s16(vdup_laneq_s16(v258, 7)));
  v199 = vrshrq_n_s32(v235, 0xDuLL);
  v200 = vrshrq_n_s32(v138, 0xDuLL);
  v201 = vqaddq_s32(v311, v199);
  v202 = vrshrq_n_s32(v237, 0xDuLL);
  v203 = vrshrq_n_s32(v139, 0xDuLL);
  v204 = vqaddq_s32(v296, v202);
  v205 = vmlaq_s32(vmulq_s32(vqaddq_s32(v201, v200), vmovl_s16(vdup_lane_s16(*v258.i8, 0))), vqaddq_s32(v204, v203), vmovl_s16(vdup_lane_s16(*v258.i8, 1)));
  v206 = vmlaq_s32(vmulq_s32(vqsubq_s32(v201, v200), vmovl_s16(vdup_laneq_s16(v259, 4))), vqsubq_s32(v204, v203), vmovl_s16(vdup_laneq_s16(v259, 7)));
  v207 = vqsubq_s32(v296, v202);
  v208 = vqsubq_s32(v311, v199);
  v209 = vrshrq_n_s32(v140, 0xDuLL);
  v210 = vrshrq_n_s32(v141, 0xDuLL);
  v211 = vmlaq_s32(vmulq_s32(vqsubq_s32(v208, v209), vmovl_s16(vdup_lane_s16(*v260.i8, 0))), vqsubq_s32(v207, v210), vmovl_s16(vdup_lane_s16(*v260.i8, 1)));
  v212 = vmlaq_s32(vmulq_s32(vqaddq_s32(v208, v209), vmovl_s16(vdup_laneq_s16(v261, 4))), vqaddq_s32(v207, v210), vmovl_s16(vdup_laneq_s16(v261, 7)));
  v213 = vrshrq_n_s32(v240, 0xDuLL);
  v214 = vrshrq_n_s32(v151, 0xDuLL);
  v215 = vqsubq_s32(v304, v213);
  v216 = vrshrq_n_s32(v241, 0xDuLL);
  v217 = vrshrq_n_s32(v152, 0xDuLL);
  v218 = vqsubq_s32(v303, v216);
  v219 = vmlaq_s32(vmulq_s32(vqaddq_s32(v215, v214), vmovl_s16(vdup_lane_s16(*v262.i8, 0))), vqaddq_s32(v218, v217), vmovl_s16(vdup_lane_s16(*v262.i8, 1)));
  v220 = vmlaq_s32(vmulq_s32(vqsubq_s32(v215, v214), vmovl_s16(vdup_laneq_s16(v263, 4))), vqsubq_s32(v218, v217), vmovl_s16(vdup_laneq_s16(v263, 7)));
  v221 = vqaddq_s32(v303, v216);
  v222 = vqaddq_s32(v304, v213);
  v223 = vrshrq_n_s32(v153, 0xDuLL);
  v224 = vrshrq_n_s32(v154, 0xDuLL);
  *v1 = vrshrq_n_s32(v244, 0xDuLL);
  v1[1] = vrshrq_n_s32(v177, 0xDuLL);
  v1[2] = vrshrq_n_s32(v228, 0xDuLL);
  v1[3] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(vqaddq_s32(v222, v223), vmovl_s16(vdup_laneq_s16(v265, 4))), vqaddq_s32(v221, v224), vmovl_s16(vdup_laneq_s16(v265, 7))), 0xDuLL);
  v1[4] = vrshrq_n_s32(v239, 0xDuLL);
  v1[5] = vrshrq_n_s32(v205, 0xDuLL);
  v1[6] = vrshrq_n_s32(v257, 0xDuLL);
  v1[7] = vrshrq_n_s32(v198, 0xDuLL);
  v1[8] = vrshrq_n_s32(v243, 0xDuLL);
  v1[9] = vrshrq_n_s32(v191, 0xDuLL);
  v1[10] = vrshrq_n_s32(v251, 0xDuLL);
  v1[11] = vrshrq_n_s32(v212, 0xDuLL);
  v1[12] = vrshrq_n_s32(v247, 0xDuLL);
  v1[13] = vrshrq_n_s32(v219, 0xDuLL);
  v1[14] = vrshrq_n_s32(v227, 0xDuLL);
  v1[15] = vrshrq_n_s32(v184, 0xDuLL);
  v1[16] = vrshrq_n_s32(v245, 0xDuLL);
  v1[17] = vrshrq_n_s32(v183, 0xDuLL);
  v1[18] = vrshrq_n_s32(v230, 0xDuLL);
  v1[19] = vrshrq_n_s32(v220, 0xDuLL);
  v1[20] = vrshrq_n_s32(v232, 0xDuLL);
  v1[21] = vrshrq_n_s32(v211, 0xDuLL);
  v1[22] = vrshrq_n_s32(v253, 0xDuLL);
  v1[23] = vrshrq_n_s32(v192, 0xDuLL);
  v1[24] = vrshrq_n_s32(v242, 0xDuLL);
  v1[25] = vrshrq_n_s32(v197, 0xDuLL);
  v1[26] = vrshrq_n_s32(v255, 0xDuLL);
  v1[27] = vrshrq_n_s32(v206, 0xDuLL);
  v1[28] = vrshrq_n_s32(v234, 0xDuLL);
  v1[29] = vrshrq_n_s32(vmlaq_s32(vmulq_s32(vqsubq_s32(v222, v223), vmovl_s16(vdup_lane_s16(*v264.i8, 0))), vqsubq_s32(v221, v224), vmovl_s16(vdup_lane_s16(*v264.i8, 1))), 0xDuLL);
  v1[30] = vrshrq_n_s32(v249, 0xDuLL);
  v1[31] = vrshrq_n_s32(v178, 0xDuLL);
  return result;
}

uint64_t sub_2779E57A8()
{
  v0 = MEMORY[0x28223BE20]();
  v378 = v2;
  v3 = 0;
  v739 = *MEMORY[0x277D85DE8];
  v4 = v552;
  v5 = vdupq_n_s16(0x16A1u);
  v6 = vdupq_n_s16(0xE95Fu);
  v380 = vneg_f16(0x6161616161616161);
  v381 = vneg_f16(0x6565656565656565);
  v379 = vneg_f16(0x7777777777777777);
  v549 = v5;
  v548 = v6;
  do
  {
    v7 = 0;
    v8 = v0;
    do
    {
      v553[v7++] = *v8;
      v8 = (v8 + 2 * v1);
    }

    while (v7 != 64);
    v9 = 0;
    for (i = 63; i != 31; --i)
    {
      v722[v9] = vqaddq_s16(v553[v9], v553[i]);
      ++v9;
    }

    v11 = 32;
    do
    {
      v722[v11] = vqsubq_s16(v553[i--], v553[v11]);
      ++v11;
    }

    while (i != -1);
    v12 = 0;
    for (j = 31; j != 15; --j)
    {
      v693[v12] = vqaddq_s16(v722[v12], v722[j]);
      ++v12;
    }

    v14 = 16;
    do
    {
      v693[v14] = vqsubq_s16(v722[j--], v722[v14]);
      ++v14;
    }

    while (j != -1);
    v15 = 0;
    v721 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v723.i8, *v5.i8), *v738.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v723, v5), v738, v5), 0xDuLL);
    v720 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v724.i8, *v5.i8), *v737.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v724, v5), v737, v5), 0xDuLL);
    v706 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v723.i8, *v6.i8), *v738.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v723, v6), v738, v5), 0xDuLL);
    v707 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v724.i8, *v6.i8), *v737.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v724, v6), v737, v5), 0xDuLL);
    v719 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v725.i8, *v5.i8), *v736.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v725, v5), v736, v5), 0xDuLL);
    v718 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v726.i8, *v5.i8), *v735.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v726, v5), v735, v5), 0xDuLL);
    v708 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v725.i8, *v6.i8), *v736.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v725, v6), v736, v5), 0xDuLL);
    v709 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v726.i8, *v6.i8), *v735.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v726, v6), v735, v5), 0xDuLL);
    v717 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v727.i8, *v5.i8), *v734.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v727, v5), v734, v5), 0xDuLL);
    v716 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v728.i8, *v5.i8), *v733.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v728, v5), v733, v5), 0xDuLL);
    v710 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v727.i8, *v6.i8), *v734.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v727, v6), v734, v5), 0xDuLL);
    v711 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v728.i8, *v6.i8), *v733.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v728, v6), v733, v5), 0xDuLL);
    v715 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v729.i8, *v5.i8), *v732.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v729, v5), v732, v5), 0xDuLL);
    v714 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v730.i8, *v5.i8), *v731.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v730, v5), v731, v5), 0xDuLL);
    v712 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v729.i8, *v6.i8), *v732.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v729, v6), v732, v5), 0xDuLL);
    v713 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v730.i8, *v6.i8), *v731.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v730, v6), v731, v5), 0xDuLL);
    for (k = 15; k != 7; --k)
    {
      *&v652[v15 * 16] = vqaddq_s16(v693[v15], v693[k]);
      ++v15;
    }

    v17 = 8;
    do
    {
      *&v652[v17 * 16] = vqsubq_s16(v693[k--], v693[v17]);
      ++v17;
    }

    while (k != -1);
    v661 = v693[16];
    v662 = v693[17];
    v663 = v693[18];
    v664 = v693[19];
    v672 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v694.i8, *v5.i8), *v701.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v694, v5), v701, v5), 0xDuLL);
    v671 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v695.i8, *v5.i8), *v700.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v695, v5), v700, v5), 0xDuLL);
    v665 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v694.i8, *v6.i8), *v701.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v694, v6), v701, v5), 0xDuLL);
    v666 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v695.i8, *v6.i8), *v700.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v695, v6), v700, v5), 0xDuLL);
    v670 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v696.i8, *v5.i8), *v699.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v696, v5), v699, v5), 0xDuLL);
    v669 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v697.i8, *v5.i8), *v698.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v697, v5), v698, v5), 0xDuLL);
    v667 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v696.i8, *v6.i8), *v699.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v696, v6), v699, v5), 0xDuLL);
    v668 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v697.i8, *v6.i8), *v698.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v697, v6), v698, v5), 0xDuLL);
    v673 = v702;
    v674 = v703;
    v675 = v704;
    v676 = v705;
    v18 = 32;
    for (m = 47; m != 39; --m)
    {
      *&v652[v18 * 16] = vqaddq_s16(v722[v18], v693[m]);
      ++v18;
    }

    v20 = 40;
    do
    {
      *&v652[v20 * 16] = vqsubq_s16(v722[m--], v693[v20]);
      ++v20;
    }

    while (m != 31);
    v21 = 48;
    for (n = 63; n != 55; --n)
    {
      *&v652[v21 * 16] = vqsubq_s16(v722[n], v693[v21]);
      ++v21;
    }

    v23 = 55;
    for (ii = 56; ii != 64; ++ii)
    {
      *&v652[ii * 16] = vqaddq_s16(v722[ii], v693[v23--]);
    }

    v25 = 0;
    for (jj = 112; jj != 48; jj -= 16)
    {
      *(&v608 + v25) = vqaddq_s16(*&v652[v25], *&v652[jj]);
      v25 += 16;
    }

    v27 = 64;
    do
    {
      *(&v608 + v27) = vqsubq_s16(*&v652[jj], *&v652[v27]);
      jj -= 16;
      v27 += 16;
    }

    while (jj != -16);
    v619 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v655.i8, *v5.i8), *v658.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v655, v5), v658, v5), 0xDuLL);
    v618 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v656.i8, *v5.i8), *v657.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v656, v5), v657, v5), 0xDuLL);
    v616 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v655.i8, *v6.i8), *v658.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v655, v6), v658, v5), 0xDuLL);
    v617 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v656.i8, *v6.i8), *v657.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v656, v6), v657, v5), 0xDuLL);
    v28 = 256;
    for (kk = 368; kk != 304; kk -= 16)
    {
      *(&v608 + v28) = vqaddq_s16(*&v652[v28], *&v652[kk]);
      v28 += 16;
    }

    v30 = 320;
    do
    {
      *(&v608 + v30) = vqsubq_s16(*&v652[kk], *&v652[v30]);
      kk -= 16;
      v30 += 16;
    }

    while (kk != 240);
    v31 = 384;
    for (mm = 496; mm != 432; mm -= 16)
    {
      *(&v608 + v31) = vqsubq_s16(*&v652[mm], *&v652[v31]);
      v31 += 16;
    }

    v33 = 432;
    for (nn = 448; nn != 512; nn += 16)
    {
      *(&v608 + nn) = vqaddq_s16(*&v652[nn], *&v652[v33]);
      v33 -= 16;
    }

    v35 = vdupq_n_s16(0x1D90u);
    v36 = vdupq_n_s16(0xC3Fu);
    v37 = vdupq_n_s16(0xE270u);
    v651 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v677.i8, *v36.i8), *v692.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v677, v36), v692, v35), 0xDuLL);
    v650 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v678.i8, *v36.i8), *v691.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v678, v36), v691, v35), 0xDuLL);
    v636 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v677.i8, *v37.i8), *v692.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v677, v37), v692, v36), 0xDuLL);
    v637 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v678.i8, *v37.i8), *v691.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v678, v37), v691, v36), 0xDuLL);
    v649 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v679.i8, *v36.i8), *v690.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v679, v36), v690, v35), 0xDuLL);
    v648 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v680.i8, *v36.i8), *v689.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v680, v36), v689, v35), 0xDuLL);
    v638 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v679.i8, *v37.i8), *v690.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v679, v37), v690, v36), 0xDuLL);
    v639 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v680.i8, *v37.i8), *v689.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v680, v37), v689, v36), 0xDuLL);
    v38 = vdupq_n_s16(0xF3C1u);
    v647 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v681.i8, *v37.i8), *v688.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v681, v37), v688, v36), 0xDuLL);
    v646 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v682.i8, *v37.i8), *v687.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v682, v37), v687, v36), 0xDuLL);
    v640 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v681.i8, *v38.i8), *v688.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v681, v38), v688, v37), 0xDuLL);
    v641 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v682.i8, *v38.i8), *v687.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v682, v38), v687, v37), 0xDuLL);
    v645 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v683.i8, *v37.i8), *v686.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v683, v37), v686, v36), 0xDuLL);
    v644 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v684.i8, *v37.i8), *v685.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v684, v37), v685, v36), 0xDuLL);
    v642 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v683.i8, *v38.i8), *v686.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v683, v38), v686, v37), 0xDuLL);
    v643 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v684.i8, *v38.i8), *v685.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v684, v38), v685, v37), 0xDuLL);
    v554 = vqaddq_s16(v608, v611);
    v555 = vqaddq_s16(v609, v610);
    v556 = vqsubq_s16(v609, v610);
    v557 = vqsubq_s16(v608, v611);
    v559 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v613.i8, *v5.i8), *v614.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v613, v5), v614, v5), 0xDuLL);
    v558 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v613.i8, *v6.i8), *v614.i8, *v5.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v613, v6), v614, v5), 0xDuLL);
    v560 = vqaddq_s16(v653, v617);
    v561 = vqaddq_s16(v654, v616);
    v562 = vqsubq_s16(v654, v616);
    v563 = vqsubq_s16(v653, v617);
    v564 = vqsubq_s16(v660, v618);
    v565 = vqsubq_s16(v659, v619);
    v566 = vqaddq_s16(v659, v619);
    v567 = vqaddq_s16(v660, v618);
    v575 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v622.i8, *v36.i8), *v633.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v622, v36), v633, v35), 0xDuLL);
    v574 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v623.i8, *v36.i8), *v632.i8, *v35.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v623, v36), v632, v35), 0xDuLL);
    v568 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v622.i8, *v37.i8), *v633.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v622, v37), v633, v36), 0xDuLL);
    v569 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v623.i8, *v37.i8), *v632.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v623, v37), v632, v36), 0xDuLL);
    v573 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v624.i8, *v37.i8), *v631.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v624, v37), v631, v36), 0xDuLL);
    v572 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v625.i8, *v37.i8), *v630.i8, *v36.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v625, v37), v630, v36), 0xDuLL);
    v570 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v624.i8, *v38.i8), *v631.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v624, v38), v631, v37), 0xDuLL);
    v571 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v625.i8, *v38.i8), *v630.i8, *v37.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v625, v38), v630, v37), 0xDuLL);
    v39 = 512;
    for (i1 = 624; i1 != 560; i1 -= 16)
    {
      *(&v554 + v39) = vqaddq_s16(*&v652[v39], *(&v608 + i1));
      v39 += 16;
    }

    v41 = 576;
    do
    {
      *(&v554 + v41) = vqsubq_s16(*&v652[i1], *(&v608 + v41));
      i1 -= 16;
      v41 += 16;
    }

    while (i1 != 496);
    v42 = 640;
    for (i2 = 752; i2 != 688; i2 -= 16)
    {
      *(&v554 + v42) = vqsubq_s16(*&v652[i2], *(&v608 + v42));
      v42 += 16;
    }

    v44 = 688;
    for (i3 = 704; i3 != 768; i3 += 16)
    {
      *(&v554 + i3) = vqaddq_s16(*&v652[i3], *(&v608 + v44));
      v44 -= 16;
    }

    v46 = 768;
    for (i4 = 880; i4 != 816; i4 -= 16)
    {
      *(&v554 + v46) = vqaddq_s16(*&v652[v46], *(&v608 + i4));
      v46 += 16;
    }

    v48 = 832;
    do
    {
      *(&v554 + v48) = vqsubq_s16(*&v652[i4], *(&v608 + v48));
      i4 -= 16;
      v48 += 16;
    }

    while (i4 != 752);
    v49 = 896;
    for (i5 = 1008; i5 != 944; i5 -= 16)
    {
      *(&v554 + v49) = vqsubq_s16(*&v652[i5], *(&v608 + v49));
      v49 += 16;
    }

    v51 = 944;
    for (i6 = 960; i6 != 1024; i6 += 16)
    {
      *(&v554 + i6) = vqaddq_s16(*&v652[i6], *(&v608 + v51));
      v51 -= 16;
    }

    v53 = 0;
    v547 = vmlal_s16(vmull_s16(*v556.i8, *v36.i8), *v557.i8, *v35.i8);
    v546 = vmlal_high_s16(vmull_high_s16(v556, v36), v557, v35);
    v545 = vmlal_s16(vmull_s16(*v556.i8, *v37.i8), *v557.i8, *v36.i8);
    v544 = vmlal_high_s16(vmull_high_s16(v556, v37), v557, v36);
    v54 = vmlal_s16(vmull_s16(*v561.i8, *v36.i8), *v566.i8, *v35.i8);
    v55 = vmlal_high_s16(vmull_high_s16(v561, v36), v566, v35);
    v56 = vmlal_s16(vmull_s16(*v561.i8, *v37.i8), *v566.i8, *v36.i8);
    v57 = vmlal_high_s16(vmull_high_s16(v561, v37), v566, v36);
    v58 = vqaddq_s16(v621, v568);
    v59 = vqsubq_s16(v621, v568);
    v60 = vqsubq_s16(v634, v575);
    v61 = vqaddq_s16(v634, v575);
    v62 = vdupq_n_s16(0x1F63u);
    v500 = vmlal_s16(vmull_s16(*v562.i8, *v37.i8), *v565.i8, *v36.i8);
    v63 = vdupq_n_s16(0x63Eu);
    v64 = vdupq_n_s16(0xE09Du);
    v498 = vmlal_high_s16(vmull_high_s16(v562, v37), v565, v36);
    v496 = vmlal_s16(vmull_s16(*v562.i8, *v38.i8), *v565.i8, *v37.i8);
    v492 = vmlal_high_s16(vmull_high_s16(v562, v38), v565, v37);
    v65 = vmlal_s16(vmull_s16(*v578.i8, *v63.i8), *v605.i8, *v62.i8);
    v66 = vmlal_high_s16(vmull_high_s16(v578, v63), v605, v62);
    v67 = vmlal_s16(vmull_s16(*v578.i8, *v64.i8), *v605.i8, *v63.i8);
    v68 = vmlal_high_s16(vmull_high_s16(v578, v64), v605, v63);
    v482 = vmlal_s16(vmull_s16(*v579.i8, *v63.i8), *v604.i8, *v62.i8);
    v480 = vmlal_high_s16(vmull_high_s16(v579, v63), v604, v62);
    v478 = vmlal_s16(vmull_s16(*v579.i8, *v64.i8), *v604.i8, *v63.i8);
    v476 = vmlal_high_s16(vmull_high_s16(v579, v64), v604, v63);
    v508 = vmlal_s16(vmull_s16(*v580.i8, *v64.i8), *v603.i8, *v63.i8);
    v506 = vmlal_high_s16(vmull_high_s16(v580, v64), v603, v63);
    v69 = vdupq_n_s16(0xF9C2u);
    v504 = vmlal_s16(vmull_s16(*v580.i8, *v69.i8), *v603.i8, *v64.i8);
    v502 = vmlal_high_s16(vmull_high_s16(v580, v69), v603, v64);
    v70 = vmlal_s16(vmull_s16(*v581.i8, *v64.i8), *v602.i8, *v63.i8);
    v71 = vmlal_high_s16(vmull_high_s16(v581, v64), v602, v63);
    v72 = vmlal_s16(vmull_s16(*v581.i8, *v69.i8), *v602.i8, *v64.i8);
    v73 = vmlal_high_s16(vmull_high_s16(v581, v69), v602, v64);
    v74 = vqaddq_s16(v612, v558);
    v75 = vqaddq_s16(v615, v559);
    v543 = vmlal_s16(vmull_s16(*v74.i8, *v63.i8), *v75.i8, *v62.i8);
    v542 = vmlal_high_s16(vmull_high_s16(v74, v63), v75, v62);
    v541 = vmlal_s16(vmull_s16(*v74.i8, *v64.i8), *v75.i8, *v63.i8);
    v540 = vmlal_high_s16(vmull_high_s16(v74, v64), v75, v63);
    v512 = vmlal_s16(vmull_s16(*v58.i8, *v63.i8), *v61.i8, *v62.i8);
    v510 = vmlal_high_s16(vmull_high_s16(v58, v63), v61, v62);
    v474 = vmlal_s16(vmull_s16(*v58.i8, *v64.i8), *v61.i8, *v63.i8);
    v472 = vmlal_high_s16(vmull_high_s16(v58, v64), v61, v63);
    v490 = vmlal_s16(vmull_s16(*v59.i8, *v64.i8), *v60.i8, *v63.i8);
    v488 = vmlal_high_s16(vmull_high_s16(v59, v64), v60, v63);
    v486 = vmlal_s16(vmull_s16(*v59.i8, *v69.i8), *v60.i8, *v64.i8);
    v484 = vmlal_high_s16(vmull_high_s16(v59, v69), v60, v64);
    v76 = vqsubq_s16(v612, v558);
    v77 = vqsubq_s16(v615, v559);
    v78 = vqsubq_s16(v626, v571);
    v79 = vqaddq_s16(v626, v571);
    v80 = vqaddq_s16(v629, v572);
    v81 = vqsubq_s16(v629, v572);
    v82 = vdupq_n_s16(0x11C7u);
    v83 = vdupq_n_s16(0x1A9Bu);
    v84 = vmlal_s16(vmull_s16(*v586.i8, *v83.i8), *v597.i8, *v82.i8);
    v85 = vmlal_high_s16(vmull_high_s16(v586, v83), v597, v82);
    v86 = vdupq_n_s16(0xEE39u);
    v87 = vmlal_s16(vmull_s16(*v586.i8, *v86.i8), *v597.i8, *v83.i8);
    v88 = vmlal_high_s16(vmull_high_s16(v586, v86), v597, v83);
    v522 = vmlal_s16(vmull_s16(*v587.i8, *v83.i8), *v596.i8, *v82.i8);
    v520 = vmlal_high_s16(vmull_high_s16(v587, v83), v596, v82);
    v518 = vmlal_s16(vmull_s16(*v587.i8, *v86.i8), *v596.i8, *v83.i8);
    v516 = vmlal_high_s16(vmull_high_s16(v587, v86), v596, v83);
    v530 = vmlal_s16(vmull_s16(*v588.i8, *v86.i8), *v595.i8, *v83.i8);
    v528 = vmlal_high_s16(vmull_high_s16(v588, v86), v595, v83);
    v526 = vmlal_s16(vmull_s16(*v588.i8, v381), *v595.i8, *v86.i8);
    v524 = vmlal_high_s16(vmull_s16(*&vextq_s8(v588, v588, 8uLL), v381), v595, v86);
    v89 = vmlal_s16(vmull_s16(*v589.i8, *v86.i8), *v594.i8, *v83.i8);
    v90 = vmlal_high_s16(vmull_high_s16(v589, v86), v594, v83);
    v91 = vmlal_s16(vmull_s16(*v589.i8, v381), *v594.i8, *v86.i8);
    v92 = vmlal_high_s16(vmull_s16(*&vextq_s8(v589, v589, 8uLL), v381), v594, v86);
    v537 = vmlal_s16(vmull_s16(*v76.i8, *v83.i8), *v77.i8, *v82.i8);
    v536 = vmlal_high_s16(vmull_high_s16(v76, v83), v77, v82);
    v535 = vmlal_s16(vmull_s16(*v76.i8, *v86.i8), *v77.i8, *v83.i8);
    v534 = vmlal_high_s16(vmull_high_s16(v76, v86), v77, v83);
    v470 = vmlal_s16(vmull_s16(*v78.i8, *v83.i8), *v81.i8, *v82.i8);
    v468 = vmlal_high_s16(vmull_high_s16(v78, v83), v81, v82);
    v466 = vmlal_s16(vmull_s16(*v78.i8, *v86.i8), *v81.i8, *v83.i8);
    v464 = vmlal_high_s16(vmull_high_s16(v78, v86), v81, v83);
    v458 = vmlal_s16(vmull_s16(*v79.i8, *v86.i8), *v80.i8, *v83.i8);
    v456 = vmlal_high_s16(vmull_high_s16(v79, v86), v80, v83);
    v452 = vmlal_high_s16(vmull_s16(*&vextq_s8(v79, v79, 8uLL), v381), v80, v86);
    v454 = vmlal_s16(vmull_s16(*v79.i8, v381), *v80.i8, *v86.i8);
    v93 = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
    v94 = vrshrn_high_n_s32(vrshrn_n_s32(v56, 0xDuLL), v57, 0xDuLL);
    v95 = vrshrn_high_n_s32(vrshrn_n_s32(v65, 0xDuLL), v66, 0xDuLL);
    v96 = vrshrn_high_n_s32(vrshrn_n_s32(v67, 0xDuLL), v68, 0xDuLL);
    v97 = vqaddq_s16(v577, v96);
    v98 = vqsubq_s16(v577, v96);
    v99 = vqsubq_s16(v606, v95);
    v100 = vqaddq_s16(v606, v95);
    v101 = vqaddq_s16(v560, v94);
    v102 = vqaddq_s16(v567, v93);
    v103 = vdupq_n_s16(0x1FD9u);
    v104 = vdupq_n_s16(0x323u);
    v533 = vmlal_s16(vmull_s16(*v101.i8, *v104.i8), *v102.i8, *v103.i8);
    v532 = vmlal_high_s16(vmull_high_s16(v101, v104), v102, v103);
    v105 = vdupq_n_s16(0xE027u);
    v539 = vmlal_s16(vmull_s16(*v101.i8, *v105.i8), *v102.i8, *v104.i8);
    v538 = vmlal_high_s16(vmull_high_s16(v101, v105), v102, v104);
    v106 = vmlal_s16(vmull_s16(*v97.i8, *v104.i8), *v100.i8, *v103.i8);
    v107 = vmlal_high_s16(vmull_high_s16(v97, v104), v100, v103);
    v108 = vmlal_s16(vmull_s16(*v97.i8, *v105.i8), *v100.i8, *v104.i8);
    v109 = vmlal_high_s16(vmull_high_s16(v97, v105), v100, v104);
    v110 = vmlal_s16(vmull_s16(*v98.i8, *v105.i8), *v99.i8, *v104.i8);
    v111 = vmlal_high_s16(vmull_high_s16(v98, v105), v99, v104);
    v112 = vdupq_n_s16(0xFCDDu);
    v113 = vmlal_s16(vmull_s16(*v98.i8, *v112.i8), *v99.i8, *v105.i8);
    v114 = vmlal_high_s16(vmull_high_s16(v98, v112), v99, v105);
    v115 = vrshrn_high_n_s32(vrshrn_n_s32(v70, 0xDuLL), v71, 0xDuLL);
    v116 = vrshrn_high_n_s32(vrshrn_n_s32(v72, 0xDuLL), v73, 0xDuLL);
    v117 = vqsubq_s16(v560, v94);
    v118 = vqsubq_s16(v567, v93);
    v119 = vqsubq_s16(v582, v116);
    v120 = vqaddq_s16(v582, v116);
    v121 = vqaddq_s16(v601, v115);
    v122 = vdupq_n_s16(0x144Du);
    v123 = vdupq_n_s16(0x18BDu);
    v124 = vqsubq_s16(v601, v115);
    v125 = vmlal_s16(vmull_s16(*v117.i8, *v123.i8), *v118.i8, *v122.i8);
    v126 = vdupq_n_s16(0xEBB3u);
    v127 = vmlal_high_s16(vmull_high_s16(v117, v123), v118, v122);
    v515 = vmlal_s16(vmull_s16(*v117.i8, *v126.i8), *v118.i8, *v123.i8);
    v514 = vmlal_high_s16(vmull_high_s16(v117, v126), v118, v123);
    v402 = vmlal_s16(vmull_s16(*v119.i8, *v123.i8), *v124.i8, *v122.i8);
    v128 = vmlal_high_s16(vmull_high_s16(v119, v123), v124, v122);
    v129 = vmlal_s16(vmull_s16(*v119.i8, *v126.i8), *v124.i8, *v123.i8);
    v130 = vmlal_high_s16(vmull_high_s16(v119, v126), v124, v123);
    v416 = vmlal_s16(vmull_s16(*v120.i8, *v126.i8), *v121.i8, *v123.i8);
    v131 = vdupq_n_s16(0xE743u);
    v414 = vmlal_high_s16(vmull_high_s16(v120, v126), v121, v123);
    v412 = vmlal_s16(vmull_s16(*v120.i8, *v131.i8), *v121.i8, *v126.i8);
    v409 = vmlal_high_s16(vmull_high_s16(v120, v131), v121, v126);
    v132 = vrshrn_high_n_s32(vrshrn_n_s32(v500, 0xDuLL), v498, 0xDuLL);
    v133 = vrshrn_high_n_s32(vrshrn_n_s32(v496, 0xDuLL), v492, 0xDuLL);
    v134 = vrshrn_high_n_s32(vrshrn_n_s32(v84, 0xDuLL), v85, 0xDuLL);
    v135 = vrshrn_high_n_s32(vrshrn_n_s32(v87, 0xDuLL), v88, 0xDuLL);
    v136 = vqaddq_s16(v585, v135);
    v137 = vqsubq_s16(v585, v135);
    v138 = vqsubq_s16(v598, v134);
    v139 = vqaddq_s16(v598, v134);
    v140 = vqsubq_s16(v563, v133);
    v141 = vdupq_n_s16(0x1C39u);
    v142 = vdupq_n_s16(0xF16u);
    v143 = vqsubq_s16(v564, v132);
    v144 = vmlal_s16(vmull_s16(*v140.i8, *v142.i8), *v143.i8, *v141.i8);
    v145 = vdupq_n_s16(0xE3C7u);
    v501 = vmlal_high_s16(vmull_high_s16(v140, v142), v143, v141);
    v499 = vmlal_s16(vmull_s16(*v140.i8, *v145.i8), *v143.i8, *v142.i8);
    v497 = vmlal_high_s16(vmull_high_s16(v140, v145), v143, v142);
    v426 = vmlal_s16(vmull_s16(*v136.i8, *v142.i8), *v139.i8, *v141.i8);
    v424 = vmlal_high_s16(vmull_high_s16(v136, v142), v139, v141);
    v422 = vmlal_s16(vmull_s16(*v136.i8, *v145.i8), *v139.i8, *v142.i8);
    v420 = vmlal_high_s16(vmull_high_s16(v136, v145), v139, v142);
    v434 = vmlal_s16(vmull_s16(*v137.i8, *v145.i8), *v138.i8, *v142.i8);
    v146 = vdupq_n_s16(0xF0EAu);
    v432 = vmlal_high_s16(vmull_high_s16(v137, v145), v138, v142);
    v428 = vmlal_high_s16(vmull_high_s16(v137, v146), v138, v145);
    v430 = vmlal_s16(vmull_s16(*v137.i8, *v146.i8), *v138.i8, *v145.i8);
    v147 = vrshrn_high_n_s32(vrshrn_n_s32(v89, 0xDuLL), v90, 0xDuLL);
    v148 = vrshrn_high_n_s32(vrshrn_n_s32(v91, 0xDuLL), v92, 0xDuLL);
    v149 = vqaddq_s16(v563, v133);
    v150 = vqaddq_s16(v564, v132);
    v151 = vqsubq_s16(v590, v148);
    v152 = vqaddq_s16(v590, v148);
    v153 = vqaddq_s16(v593, v147);
    v154 = vdupq_n_s16(0x94Au);
    v155 = vqsubq_s16(v593, v147);
    v156 = vdupq_n_s16(0x1E9Fu);
    v157 = vmlal_s16(vmull_s16(*v149.i8, *v156.i8), *v150.i8, *v154.i8);
    v495 = vmlal_high_s16(vmull_high_s16(v149, v156), v150, v154);
    v158 = vdupq_n_s16(0xF6B6u);
    v494 = vmlal_s16(vmull_s16(*v149.i8, *v158.i8), *v150.i8, *v156.i8);
    v493 = vmlal_high_s16(vmull_high_s16(v149, v158), v150, v156);
    v442 = vmlal_s16(vmull_s16(*v151.i8, *v156.i8), *v155.i8, *v154.i8);
    v440 = vmlal_high_s16(vmull_high_s16(v151, v156), v155, v154);
    v438 = vmlal_s16(vmull_s16(*v151.i8, *v158.i8), *v155.i8, *v156.i8);
    v436 = vmlal_high_s16(vmull_high_s16(v151, v158), v155, v156);
    v159 = vmlal_s16(vmull_s16(*v152.i8, *v158.i8), *v153.i8, *v156.i8);
    v160 = vmlal_high_s16(vmull_high_s16(v152, v158), v153, v156);
    v161 = vmlal_s16(vmull_s16(*v152.i8, v380), *v153.i8, *v158.i8);
    v162 = vmlal_high_s16(vmull_s16(*&vextq_s8(v152, v152, 8uLL), v380), v153, v158);
    v163 = vrshrn_high_n_s32(vrshrn_n_s32(v512, 0xDuLL), v510, 0xDuLL);
    v164 = vrshrn_high_n_s32(vrshrn_n_s32(v474, 0xDuLL), v472, 0xDuLL);
    v165 = vqaddq_s16(v620, v569);
    v166 = vqaddq_s16(v635, v574);
    v167 = vqaddq_s16(v165, v164);
    v168 = vqaddq_s16(v166, v163);
    v169 = vdupq_n_s16(0x1FF6u);
    v170 = vdupq_n_s16(0x192u);
    v475 = vmlal_s16(vmull_s16(*v167.i8, *v170.i8), *v168.i8, *v169.i8);
    v473 = vmlal_high_s16(vmull_high_s16(v167, v170), v168, v169);
    v171 = vdupq_n_s16(0xE00Au);
    v513 = vmlal_s16(vmull_s16(*v167.i8, *v171.i8), *v168.i8, *v170.i8);
    v511 = vmlal_high_s16(vmull_high_s16(v167, v171), v168, v170);
    v172 = vqsubq_s16(v165, v164);
    v173 = vqsubq_s16(v166, v163);
    v174 = vdupq_n_s16(0x157Du);
    v175 = vdupq_n_s16(0x17B6u);
    v463 = vmlal_s16(vmull_s16(*v172.i8, *v175.i8), *v173.i8, *v174.i8);
    v462 = vmlal_high_s16(vmull_high_s16(v172, v175), v173, v174);
    v176 = vdupq_n_s16(0xEA83u);
    v460 = vmlal_high_s16(vmull_high_s16(v172, v176), v173, v175);
    v461 = vmlal_s16(vmull_s16(*v172.i8, *v176.i8), *v173.i8, *v175.i8);
    v177 = vqsubq_s16(v620, v569);
    v178 = vqsubq_s16(v635, v574);
    v179 = vrshrn_high_n_s32(vrshrn_n_s32(v490, 0xDuLL), v488, 0xDuLL);
    v180 = vrshrn_high_n_s32(vrshrn_n_s32(v486, 0xDuLL), v484, 0xDuLL);
    v181 = vqsubq_s16(v177, v180);
    v182 = vqsubq_s16(v178, v179);
    v183 = vdupq_n_s16(0x1CEDu);
    v184 = vdupq_n_s16(0xDAFu);
    v487 = vmlal_s16(vmull_s16(*v181.i8, *v184.i8), *v182.i8, *v183.i8);
    v485 = vmlal_high_s16(vmull_high_s16(v181, v184), v182, v183);
    v185 = vdupq_n_s16(0xE313u);
    v491 = vmlal_s16(vmull_s16(*v181.i8, *v185.i8), *v182.i8, *v184.i8);
    v489 = vmlal_high_s16(vmull_high_s16(v181, v185), v182, v184);
    v186 = vqaddq_s16(v177, v180);
    v187 = vqaddq_s16(v178, v179);
    v188 = vdupq_n_s16(0xF538u);
    v189 = vmull_s16(*v186.i8, *v188.i8);
    v190 = vmull_high_s16(v186, v188);
    v191 = vdupq_n_s16(0x1E21u);
    v448 = vmlal_high_s16(v190, v187, v191);
    v449 = vmlal_s16(v189, *v187.i8, *v191.i8);
    v192 = vrshrn_high_n_s32(vrshrn_n_s32(v470, 0xDuLL), v468, 0xDuLL);
    v193 = vrshrn_high_n_s32(vrshrn_n_s32(v466, 0xDuLL), v464, 0xDuLL);
    v194 = vqsubq_s16(v627, v570);
    v195 = vqsubq_s16(v628, v573);
    v196 = vqaddq_s16(v194, v193);
    v197 = vqaddq_s16(v195, v192);
    v198 = vdupq_n_s16(0x1F0Au);
    v199 = vdupq_n_s16(0x7C6u);
    v445 = vmlal_s16(vmull_s16(*v196.i8, *v199.i8), *v197.i8, *v198.i8);
    v444 = vmlal_high_s16(vmull_high_s16(v196, v199), v197, v198);
    v200 = vdupq_n_s16(0xE0F6u);
    v471 = vmlal_s16(vmull_s16(*v196.i8, *v200.i8), *v197.i8, *v199.i8);
    v469 = vmlal_high_s16(vmull_high_s16(v196, v200), v197, v199);
    v201 = vqsubq_s16(v194, v193);
    v202 = vqsubq_s16(v195, v192);
    v203 = vdupq_n_s16(0x1074u);
    v204 = vdupq_n_s16(0x1B73u);
    v467 = vmlal_s16(vmull_s16(*v201.i8, *v204.i8), *v202.i8, *v203.i8);
    v465 = vmlal_high_s16(vmull_high_s16(v201, v204), v202, v203);
    v205 = vdupq_n_s16(0xEF8Cu);
    v450 = vmlal_high_s16(vmull_high_s16(v201, v205), v202, v204);
    v451 = vmlal_s16(vmull_s16(*v201.i8, *v205.i8), *v202.i8, *v204.i8);
    v206 = vqaddq_s16(v627, v570);
    v207 = vqaddq_s16(v628, v573);
    v208 = vrshrn_high_n_s32(vrshrn_n_s32(v458, 0xDuLL), v456, 0xDuLL);
    v209 = vrshrn_high_n_s32(vrshrn_n_s32(v454, 0xDuLL), v452, 0xDuLL);
    v210 = vqsubq_s16(v206, v209);
    v211 = vqsubq_s16(v207, v208);
    v212 = vdupq_n_s16(0x19B4u);
    v213 = vdupq_n_s16(0x1310u);
    v447 = vmlal_s16(vmull_s16(*v210.i8, *v213.i8), *v211.i8, *v212.i8);
    v446 = vmlal_high_s16(vmull_high_s16(v210, v213), v211, v212);
    v214 = vdupq_n_s16(0xE64Cu);
    v453 = vmlal_high_s16(vmull_high_s16(v210, v214), v211, v213);
    v455 = vmlal_s16(vmull_s16(*v210.i8, *v214.i8), *v211.i8, *v213.i8);
    v215 = vqaddq_s16(v206, v209);
    v216 = vqaddq_s16(v207, v208);
    v217 = vdupq_n_s16(0x4B2u);
    v218 = vdupq_n_s16(0x1FA7u);
    v459 = vmlal_s16(vmull_s16(*v215.i8, *v218.i8), *v216.i8, *v217.i8);
    v457 = vmlal_high_s16(vmull_high_s16(v215, v218), v216, v217);
    v219 = vdupq_n_s16(0xFB4Eu);
    v418 = vmlal_high_s16(vmull_high_s16(v215, v219), v216, v218);
    v419 = vmlal_s16(vmull_s16(*v215.i8, *v219.i8), *v216.i8, *v218.i8);
    v220 = vrshrn_high_n_s32(vrshrn_n_s32(v482, 0xDuLL), v480, 0xDuLL);
    v221 = vrshrn_high_n_s32(vrshrn_n_s32(v478, 0xDuLL), v476, 0xDuLL);
    v401 = vrshrn_high_n_s32(vrshrn_n_s32(v106, 0xDuLL), v107, 0xDuLL);
    v404 = vrshrn_high_n_s32(vrshrn_n_s32(v108, 0xDuLL), v109, 0xDuLL);
    v405 = vqaddq_s16(v576, v221);
    v400 = vqaddq_s16(v607, v220);
    v222 = vqsubq_s16(v405, v404);
    v223 = vqsubq_s16(v400, v401);
    v224 = vdupq_n_s16(0x1611u);
    v225 = vdupq_n_s16(0x172Du);
    v483 = vmlal_s16(vmull_s16(*v222.i8, *v225.i8), *v223.i8, *v224.i8);
    v481 = vmlal_high_s16(vmull_high_s16(v222, v225), v223, v224);
    v226 = vdupq_n_s16(0xE9EFu);
    v479 = vmlal_s16(vmull_s16(*v222.i8, *v226.i8), *v223.i8, *v225.i8);
    v477 = vmlal_high_s16(vmull_high_s16(v222, v226), v223, v225);
    v227 = vqsubq_s16(v576, v221);
    v228 = vqsubq_s16(v607, v220);
    v229 = vrshrn_high_n_s32(vrshrn_n_s32(v110, 0xDuLL), v111, 0xDuLL);
    v230 = vrshrn_high_n_s32(vrshrn_n_s32(v113, 0xDuLL), v114, 0xDuLL);
    v231 = vqsubq_s16(v227, v230);
    v232 = vqsubq_s16(v228, v229);
    v233 = vdupq_n_s16(0x1D41u);
    v234 = vdupq_n_s16(0xCF8u);
    v399 = vmlal_s16(vmull_s16(*v231.i8, *v234.i8), *v232.i8, *v233.i8);
    v398 = vmlal_high_s16(vmull_high_s16(v231, v234), v232, v233);
    v235 = vdupq_n_s16(0xE2BFu);
    v411 = vmlal_s16(vmull_s16(*v231.i8, *v235.i8), *v232.i8, *v234.i8);
    v408 = vmlal_high_s16(vmull_high_s16(v231, v235), v232, v234);
    v236 = vqaddq_s16(v227, v230);
    v237 = vqaddq_s16(v228, v229);
    v238 = vdupq_n_s16(0xB84u);
    v239 = vdupq_n_s16(0x1DDBu);
    v407 = vmlal_s16(vmull_s16(*v236.i8, *v239.i8), *v237.i8, *v238.i8);
    v406 = vmlal_high_s16(vmull_high_s16(v236, v239), v237, v238);
    v240 = vdupq_n_s16(0xF47Cu);
    v396 = vmlal_high_s16(vmull_high_s16(v236, v240), v237, v239);
    v397 = vmlal_s16(vmull_s16(*v236.i8, *v240.i8), *v237.i8, *v239.i8);
    v241 = vrshrn_high_n_s32(vrshrn_n_s32(v508, 0xDuLL), v506, 0xDuLL);
    v242 = vrshrn_high_n_s32(vrshrn_n_s32(v504, 0xDuLL), v502, 0xDuLL);
    v243 = vrshrn_high_n_s32(vrshrn_n_s32(v402, 0xDuLL), v128, 0xDuLL);
    v244 = vrshrn_high_n_s32(vrshrn_n_s32(v129, 0xDuLL), v130, 0xDuLL);
    v245 = vqsubq_s16(v583, v242);
    v246 = vqsubq_s16(v600, v241);
    v247 = vqaddq_s16(v245, v244);
    v248 = vqaddq_s16(v246, v243);
    v249 = vdupq_n_s16(0x1F39u);
    v250 = vdupq_n_s16(0x703u);
    v403 = vmlal_s16(vmull_s16(*v247.i8, *v250.i8), *v248.i8, *v249.i8);
    v395 = vmlal_high_s16(vmull_high_s16(v247, v250), v248, v249);
    v251 = vdupq_n_s16(0xE0C7u);
    v509 = vmlal_s16(vmull_s16(*v247.i8, *v251.i8), *v248.i8, *v250.i8);
    v507 = vmlal_high_s16(vmull_high_s16(v247, v251), v248, v250);
    v252 = vqsubq_s16(v245, v244);
    v253 = vqsubq_s16(v246, v243);
    v254 = vdupq_n_s16(0x111Fu);
    v255 = vdupq_n_s16(0x1B09u);
    v505 = vmlal_s16(vmull_s16(*v252.i8, *v255.i8), *v253.i8, *v254.i8);
    v503 = vmlal_high_s16(vmull_high_s16(v252, v255), v253, v254);
    v256 = vdupq_n_s16(0xEEE1u);
    v393 = vmlal_high_s16(vmull_high_s16(v252, v256), v253, v255);
    v394 = vmlal_s16(vmull_s16(*v252.i8, *v256.i8), *v253.i8, *v255.i8);
    v257 = vqaddq_s16(v583, v242);
    v258 = vqaddq_s16(v600, v241);
    v259 = vrshrn_high_n_s32(vrshrn_n_s32(v416, 0xDuLL), v414, 0xDuLL);
    v260 = vrshrn_high_n_s32(vrshrn_n_s32(v412, 0xDuLL), v409, 0xDuLL);
    v261 = vqsubq_s16(v257, v260);
    v262 = vqsubq_s16(v258, v259);
    v263 = vdupq_n_s16(0x1A2Au);
    v264 = vdupq_n_s16(0x126Du);
    v392 = vmlal_s16(vmull_s16(*v261.i8, *v264.i8), *v262.i8, *v263.i8);
    v391 = vmlal_high_s16(vmull_high_s16(v261, v264), v262, v263);
    v265 = vdupq_n_s16(0xE5D6u);
    v410 = vmlal_high_s16(vmull_high_s16(v261, v265), v262, v264);
    v266 = vqaddq_s16(v257, v260);
    v267 = vqaddq_s16(v258, v259);
    v268 = vdupq_n_s16(0x579u);
    v269 = vdupq_n_s16(0x1F87u);
    v417 = vmlal_s16(vmull_s16(*v266.i8, *v269.i8), *v267.i8, *v268.i8);
    v413 = vmlal_s16(vmull_s16(*v261.i8, *v265.i8), *v262.i8, *v264.i8);
    v415 = vmlal_high_s16(vmull_high_s16(v266, v269), v267, v268);
    v270 = vdupq_n_s16(0xFA87u);
    v389 = vmlal_high_s16(vmull_high_s16(v266, v270), v267, v269);
    v390 = vmlal_s16(vmull_s16(*v266.i8, *v270.i8), *v267.i8, *v269.i8);
    v271 = vrshrn_high_n_s32(vrshrn_n_s32(v522, 0xDuLL), v520, 0xDuLL);
    v272 = vrshrn_high_n_s32(vrshrn_n_s32(v518, 0xDuLL), v516, 0xDuLL);
    v273 = vrshrn_high_n_s32(vrshrn_n_s32(v426, 0xDuLL), v424, 0xDuLL);
    v274 = vrshrn_high_n_s32(vrshrn_n_s32(v422, 0xDuLL), v420, 0xDuLL);
    v275 = vqaddq_s16(v584, v272);
    v276 = vqaddq_s16(v599, v271);
    v277 = vqaddq_s16(v275, v274);
    v278 = vqaddq_s16(v276, v273);
    v279 = vdupq_n_s16(0x1FC2u);
    v280 = vdupq_n_s16(0x3EBu);
    v423 = vmlal_s16(vmull_s16(*v277.i8, *v280.i8), *v278.i8, *v279.i8);
    v421 = vmlal_high_s16(vmull_high_s16(v277, v280), v278, v279);
    v281 = vdupq_n_s16(0xE03Eu);
    v523 = vmlal_s16(vmull_s16(*v277.i8, *v281.i8), *v278.i8, *v280.i8);
    v521 = vmlal_high_s16(vmull_high_s16(v277, v281), v278, v280);
    v282 = vqsubq_s16(v275, v274);
    v283 = vqsubq_s16(v276, v273);
    v284 = vdupq_n_s16(0x13B0u);
    v285 = vdupq_n_s16(0x193Au);
    v519 = vmlal_s16(vmull_s16(*v282.i8, *v285.i8), *v283.i8, *v284.i8);
    v517 = vmlal_high_s16(vmull_high_s16(v282, v285), v283, v284);
    v286 = vdupq_n_s16(0xEC50u);
    v425 = vmlal_high_s16(vmull_high_s16(v282, v286), v283, v285);
    v427 = vmlal_s16(vmull_s16(*v282.i8, *v286.i8), *v283.i8, *v285.i8);
    v287 = vqsubq_s16(v584, v272);
    v288 = vqsubq_s16(v599, v271);
    v289 = vrshrn_high_n_s32(vrshrn_n_s32(v434, 0xDuLL), v432, 0xDuLL);
    v290 = vrshrn_high_n_s32(vrshrn_n_s32(v430, 0xDuLL), v428, 0xDuLL);
    v291 = vqsubq_s16(v287, v290);
    v292 = vqsubq_s16(v288, v289);
    v293 = vdupq_n_s16(0x1BD8u);
    v294 = vdupq_n_s16(0xFC6u);
    v388 = vmlal_s16(vmull_s16(*v291.i8, *v294.i8), *v292.i8, *v293.i8);
    v387 = vmlal_high_s16(vmull_high_s16(v291, v294), v292, v293);
    v295 = vdupq_n_s16(0xE428u);
    v431 = vmlal_high_s16(vmull_high_s16(v291, v295), v292, v294);
    v433 = vmlal_s16(vmull_s16(*v291.i8, *v295.i8), *v292.i8, *v294.i8);
    v296 = vqaddq_s16(v287, v290);
    v297 = vqaddq_s16(v288, v289);
    v298 = vdupq_n_s16(0x889u);
    v299 = vdupq_n_s16(0x1ED7u);
    v435 = vmlal_s16(vmull_s16(*v296.i8, *v299.i8), *v297.i8, *v298.i8);
    v429 = vmlal_high_s16(vmull_high_s16(v296, v299), v297, v298);
    v386 = vmlal_s16(vmull_s16(*v296.i8, v379), *v297.i8, *v299.i8);
    v385 = vmlal_high_s16(vmull_s16(*&vextq_s8(v296, v296, 8uLL), v379), v297, v299);
    v300 = vrshrn_high_n_s32(vrshrn_n_s32(v530, 0xDuLL), v528, 0xDuLL);
    v301 = vrshrn_high_n_s32(vrshrn_n_s32(v526, 0xDuLL), v524, 0xDuLL);
    v302 = vrshrn_high_n_s32(vrshrn_n_s32(v442, 0xDuLL), v440, 0xDuLL);
    v303 = vrshrn_high_n_s32(vrshrn_n_s32(v438, 0xDuLL), v436, 0xDuLL);
    v441 = vqsubq_s16(v591, v301);
    v443 = vqsubq_s16(v592, v300);
    v304 = vqsubq_s16(v441, v303);
    v305 = vqsubq_s16(v443, v302);
    v306 = vdupq_n_s16(0xE63u);
    v307 = vdupq_n_s16(0x1C95u);
    v531 = vmlal_s16(vmull_s16(*v304.i8, *v307.i8), *v305.i8, *v306.i8);
    v529 = vmlal_high_s16(vmull_high_s16(v304, v307), v305, v306);
    v308 = vdupq_n_s16(0xF19Du);
    v437 = vmlal_s16(vmull_s16(*v304.i8, *v308.i8), *v305.i8, *v307.i8);
    v383 = vmlal_high_s16(vmull_high_s16(v304, v308), v305, v307);
    v309 = vqaddq_s16(v591, v301);
    v310 = vqaddq_s16(v592, v300);
    v311 = vrshrn_high_n_s32(vrshrn_n_s32(v159, 0xDuLL), v160, 0xDuLL);
    v312 = vrshrn_high_n_s32(vrshrn_n_s32(v161, 0xDuLL), v162, 0xDuLL);
    v313 = vqsubq_s16(v309, v312);
    v314 = vdupq_n_s16(0x183Bu);
    v315 = vqsubq_s16(v310, v311);
    v316 = vdupq_n_s16(0x14E7u);
    v382 = vmlal_s16(vmull_s16(*v313.i8, *v316.i8), *v315.i8, *v314.i8);
    v317 = vmlal_high_s16(vmull_high_s16(v313, v316), v315, v314);
    v318 = vdupq_n_s16(0xE7C5u);
    v439 = vmlal_s16(vmull_s16(*v313.i8, *v318.i8), *v315.i8, *v316.i8);
    v384 = vmlal_high_s16(vmull_high_s16(v313, v318), v315, v316);
    v319 = vqaddq_s16(v309, v312);
    v320 = vdupq_n_s16(0x25Bu);
    v321 = vdupq_n_s16(0x1FEAu);
    v322 = vqaddq_s16(v310, v311);
    v527 = vmlal_s16(vmull_s16(*v319.i8, *v321.i8), *v322.i8, *v320.i8);
    v323 = vdupq_n_s16(0xFDA5u);
    v525 = vmlal_high_s16(vmull_high_s16(v319, v321), v322, v320);
    v324 = vmlal_s16(vmull_s16(*v319.i8, *v323.i8), *v322.i8, *v321.i8);
    v325 = vmlal_high_s16(vmull_high_s16(v319, v323), v322, v321);
    v326 = vqaddq_s16(v405, v404);
    v327 = vqaddq_s16(v400, v401);
    v328 = vdupq_n_s16(0x1FFEu);
    v329 = vmlal_s16(vmull_s16(*v326.i8, 0xC900C900C900C9), *v327.i8, *v328.i8);
    v308.i64[0] = 0xC900C900C900C9;
    v308.i64[1] = 0xC900C900C900C9;
    v330 = vmlal_high_s16(vmull_high_s16(v326, v308), v327, v328);
    v331 = vdupq_n_s16(0xE002u);
    v553[63] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v326.i8, *v331.i8), *v327.i8, 0xC900C900C900C9), 0xDuLL), vmlal_high_s16(vmull_high_s16(v326, v331), v327, v308), 0xDuLL);
    v553[1] = vrshrn_high_n_s32(vrshrn_n_s32(v329, 0xDuLL), v330, 0xDuLL);
    v553[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v554.i8, *v549.i8), *v555.i8, *v549.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v554, v549), v555, v549), 0xDuLL);
    v332 = vqaddq_s16(v441, v303);
    v553[3] = vrshrn_high_n_s32(vrshrn_n_s32(v324, 0xDuLL), v325, 0xDuLL);
    v553[2] = vrshrn_high_n_s32(vrshrn_n_s32(v475, 0xDuLL), v473, 0xDuLL);
    v333 = vqaddq_s16(v443, v302);
    v553[5] = vrshrn_high_n_s32(vrshrn_n_s32(v423, 0xDuLL), v421, 0xDuLL);
    v553[4] = vrshrn_high_n_s32(vrshrn_n_s32(v533, 0xDuLL), v532, 0xDuLL);
    v553[7] = vrshrn_high_n_s32(vrshrn_n_s32(v390, 0xDuLL), v389, 0xDuLL);
    v553[6] = vrshrn_high_n_s32(vrshrn_n_s32(v419, 0xDuLL), v418, 0xDuLL);
    v553[9] = vrshrn_high_n_s32(vrshrn_n_s32(v403, 0xDuLL), v395, 0xDuLL);
    v553[8] = vrshrn_high_n_s32(vrshrn_n_s32(v543, 0xDuLL), v542, 0xDuLL);
    v553[11] = vrshrn_high_n_s32(vrshrn_n_s32(v386, 0xDuLL), v385, 0xDuLL);
    v553[10] = vrshrn_high_n_s32(vrshrn_n_s32(v445, 0xDuLL), v444, 0xDuLL);
    v334 = vdupq_n_s16(0x1E63u);
    v553[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v332.i8, 0xA0A0A0A0A0A0A0ALL), *v333.i8, *v334.i8), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v332, v332, 8uLL), 0xA0A0A0A0A0A0A0ALL), v333, v334), 0xDuLL);
    v553[12] = vrshrn_high_n_s32(vrshrn_n_s32(v494, 0xDuLL), v493, 0xDuLL);
    v553[15] = vrshrn_high_n_s32(vrshrn_n_s32(v397, 0xDuLL), v396, 0xDuLL);
    v553[14] = vrshrn_high_n_s32(vrshrn_n_s32(v449, 0xDuLL), v448, 0xDuLL);
    v553[17] = vrshrn_high_n_s32(vrshrn_n_s32(v399, 0xDuLL), v398, 0xDuLL);
    v553[16] = vrshrn_high_n_s32(vrshrn_n_s32(v547, 0xDuLL), v546, 0xDuLL);
    v553[19] = vrshrn_high_n_s32(vrshrn_n_s32(v437, 0xDuLL), v383, 0xDuLL);
    v553[18] = vrshrn_high_n_s32(vrshrn_n_s32(v487, 0xDuLL), v485, 0xDuLL);
    v553[21] = vrshrn_high_n_s32(vrshrn_n_s32(v388, 0xDuLL), v387, 0xDuLL);
    v553[20] = vrshrn_high_n_s32(vrshrn_n_s32(v144, 0xDuLL), v501, 0xDuLL);
    v553[23] = vrshrn_high_n_s32(vrshrn_n_s32(v394, 0xDuLL), v393, 0xDuLL);
    v553[22] = vrshrn_high_n_s32(vrshrn_n_s32(v451, 0xDuLL), v450, 0xDuLL);
    v553[25] = vrshrn_high_n_s32(vrshrn_n_s32(v392, 0xDuLL), v391, 0xDuLL);
    v553[24] = vrshrn_high_n_s32(vrshrn_n_s32(v535, 0xDuLL), v534, 0xDuLL);
    v553[27] = vrshrn_high_n_s32(vrshrn_n_s32(v427, 0xDuLL), v425, 0xDuLL);
    v553[26] = vrshrn_high_n_s32(vrshrn_n_s32(v447, 0xDuLL), v446, 0xDuLL);
    v553[29] = vrshrn_high_n_s32(vrshrn_n_s32(v382, 0xDuLL), v317, 0xDuLL);
    v553[28] = vrshrn_high_n_s32(vrshrn_n_s32(v515, 0xDuLL), v514, 0xDuLL);
    v553[31] = vrshrn_high_n_s32(vrshrn_n_s32(v479, 0xDuLL), v477, 0xDuLL);
    v553[30] = vrshrn_high_n_s32(vrshrn_n_s32(v461, 0xDuLL), v460, 0xDuLL);
    v553[33] = vrshrn_high_n_s32(vrshrn_n_s32(v483, 0xDuLL), v481, 0xDuLL);
    v553[32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v554.i8, *v548.i8), *v555.i8, *v549.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v554, v548), v555, v549), 0xDuLL);
    v553[35] = vrshrn_high_n_s32(vrshrn_n_s32(v439, 0xDuLL), v384, 0xDuLL);
    v553[34] = vrshrn_high_n_s32(vrshrn_n_s32(v463, 0xDuLL), v462, 0xDuLL);
    v553[37] = vrshrn_high_n_s32(vrshrn_n_s32(v519, 0xDuLL), v517, 0xDuLL);
    v553[36] = vrshrn_high_n_s32(vrshrn_n_s32(v125, 0xDuLL), v127, 0xDuLL);
    v553[39] = vrshrn_high_n_s32(vrshrn_n_s32(v413, 0xDuLL), v410, 0xDuLL);
    v553[38] = vrshrn_high_n_s32(vrshrn_n_s32(v455, 0xDuLL), v453, 0xDuLL);
    v553[41] = vrshrn_high_n_s32(vrshrn_n_s32(v505, 0xDuLL), v503, 0xDuLL);
    v553[40] = vrshrn_high_n_s32(vrshrn_n_s32(v537, 0xDuLL), v536, 0xDuLL);
    v553[43] = vrshrn_high_n_s32(vrshrn_n_s32(v433, 0xDuLL), v431, 0xDuLL);
    v553[42] = vrshrn_high_n_s32(vrshrn_n_s32(v467, 0xDuLL), v465, 0xDuLL);
    v553[45] = vrshrn_high_n_s32(vrshrn_n_s32(v531, 0xDuLL), v529, 0xDuLL);
    v553[44] = vrshrn_high_n_s32(vrshrn_n_s32(v499, 0xDuLL), v497, 0xDuLL);
    v553[47] = vrshrn_high_n_s32(vrshrn_n_s32(v411, 0xDuLL), v408, 0xDuLL);
    v553[46] = vrshrn_high_n_s32(vrshrn_n_s32(v491, 0xDuLL), v489, 0xDuLL);
    v335 = vdupq_n_s16(0xE19Du);
    v553[49] = vrshrn_high_n_s32(vrshrn_n_s32(v407, 0xDuLL), v406, 0xDuLL);
    v553[48] = vrshrn_high_n_s32(vrshrn_n_s32(v545, 0xDuLL), v544, 0xDuLL);
    v553[51] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v332.i8, *v335.i8), *v333.i8, 0xA0A0A0A0A0A0A0ALL), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v333, v333, 8uLL), 0xA0A0A0A0A0A0A0ALL), v332, v335), 0xDuLL);
    v553[52] = vrshrn_high_n_s32(vrshrn_n_s32(v157, 0xDuLL), v495, 0xDuLL);
    v553[53] = vrshrn_high_n_s32(vrshrn_n_s32(v435, 0xDuLL), v429, 0xDuLL);
    v553[54] = vrshrn_high_n_s32(vrshrn_n_s32(v471, 0xDuLL), v469, 0xDuLL);
    v553[55] = vrshrn_high_n_s32(vrshrn_n_s32(v509, 0xDuLL), v507, 0xDuLL);
    v553[56] = vrshrn_high_n_s32(vrshrn_n_s32(v541, 0xDuLL), v540, 0xDuLL);
    v553[57] = vrshrn_high_n_s32(vrshrn_n_s32(v417, 0xDuLL), v415, 0xDuLL);
    v553[58] = vrshrn_high_n_s32(vrshrn_n_s32(v459, 0xDuLL), v457, 0xDuLL);
    v553[59] = vrshrn_high_n_s32(vrshrn_n_s32(v523, 0xDuLL), v521, 0xDuLL);
    v553[60] = vrshrn_high_n_s32(vrshrn_n_s32(v539, 0xDuLL), v538, 0xDuLL);
    v553[61] = vrshrn_high_n_s32(vrshrn_n_s32(v527, 0xDuLL), v525, 0xDuLL);
    v553[62] = vrshrn_high_n_s32(vrshrn_n_s32(v513, 0xDuLL), v511, 0xDuLL);
    do
    {
      v553[v53] = vrshrq_n_s16(v553[v53], 2uLL);
      ++v53;
    }

    while (v53 != 64);
    v336 = v4;
    for (i7 = 112; i7 != 624; i7 += 128)
    {
      v338 = *&v552[i7 + 3920];
      v339 = *&v552[i7 + 3936];
      v340 = vtrn1q_s16(v338, v339);
      v341 = vtrn2q_s16(v338, v339);
      v342 = *&v552[i7 + 3952];
      v343 = *&v552[i7 + 3968];
      v344 = vtrn1q_s16(v342, v343);
      v345 = vtrn2q_s16(v342, v343);
      v346 = *&v552[i7 + 3984];
      v347 = *&v552[i7 + 4000];
      v348 = vtrn1q_s16(v346, v347);
      v349 = vtrn2q_s16(v346, v347);
      v350 = *&v552[i7 + 4016];
      v351 = v553[i7 / 0x10];
      v352 = vtrn1q_s16(v350, v351);
      v353 = vtrn2q_s16(v350, v351);
      v354 = vtrn1q_s32(v340, v344);
      v355 = vtrn2q_s32(v340, v344);
      v356 = vtrn1q_s32(v341, v345);
      v357 = vtrn2q_s32(v341, v345);
      v358 = vtrn1q_s32(v348, v352);
      v359 = vtrn2q_s32(v348, v352);
      v360 = vzip2q_s64(v354, v358);
      v354.i64[1] = v358.i64[0];
      v361 = vtrn1q_s32(v349, v353);
      v362 = vtrn2q_s32(v349, v353);
      v363 = vzip2q_s64(v356, v361);
      v356.i64[1] = v361.i64[0];
      v364 = vzip2q_s64(v355, v359);
      v355.i64[1] = v359.i64[0];
      v359.i64[0] = v357.i64[0];
      v359.i64[1] = v362.i64[0];
      v336[-4] = v354;
      v336[-3] = v356;
      v336[-2] = v355;
      v336[-1] = v359;
      *v336 = v360;
      v336[1] = v363;
      v336[2] = v364;
      v336[3] = vzip2q_s64(v357, v362);
      v336 += 32;
    }

    ++v3;
    v0 += 16;
    v4 += 8;
    v5 = v549;
    v6 = v548;
  }

  while (v3 != 4);
  v365 = 0;
  v366 = v378 + 1;
  v367 = &v551;
  v550 = vdupq_n_s32(0x16A1u);
  do
  {
    for (i8 = 0; i8 != 32; ++i8)
    {
      v369 = *&v367[i8 * 16];
      v722[i8] = vmovl_s16(*v369.i8);
      v693[i8] = vmovl_high_s16(v369);
    }

    sub_2779E7BA4(v722, v722);
    result = sub_2779E7BA4(v693, v693);
    for (i9 = 0; i9 != 32; ++i9)
    {
      v722[i9] = vrshrq_n_s32(v722[i9], 2uLL);
    }

    for (i10 = 0; i10 != 32; ++i10)
    {
      v693[i10] = vrshrq_n_s32(v693[i10], 2uLL);
    }

    for (i11 = 0; i11 != 32; ++i11)
    {
      v722[i11] = vrshrq_n_s32(vmulq_s32(v722[i11], v550), 0xCuLL);
    }

    for (i12 = 0; i12 != 32; ++i12)
    {
      v693[i12] = vrshrq_n_s32(vmulq_s32(v693[i12], v550), 0xCuLL);
    }

    v375 = 0;
    v376 = v366;
    do
    {
      v377 = v693[v375];
      v376[-1] = v722[v375];
      *v376 = v377;
      ++v375;
      v376 += 8;
    }

    while (v375 != 32);
    ++v365;
    v367 += 512;
    v366 += 2;
  }

  while (v365 != 4);
  return result;
}

uint64_t sub_2779E7BA4(uint64_t result, int32x4_t *a2)
{
  v2 = 0;
  v218 = *MEMORY[0x277D85DE8];
  for (i = 496; i != 240; i -= 16)
  {
    *(&v156 + v2) = vqaddq_s32(*(result + v2), *(result + i));
    v2 += 16;
  }

  v4 = 240;
  v5 = 256;
  do
  {
    *(&v156 + v5) = vqsubq_s32(*(result + v4), *(result + v5));
    v4 -= 16;
    v5 += 16;
  }

  while (v4 != -16);
  v6 = 0;
  for (j = 240; j != 112; j -= 16)
  {
    *(&v188 + v6) = vqaddq_s32(*(&v156 + v6), *(&v156 + j));
    v6 += 16;
  }

  v8 = 112;
  v9 = 128;
  do
  {
    *(&v188 + v9) = vqsubq_s32(*(&v156 + v8), *(&v156 + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  v202 = v172;
  v203 = v173;
  v204 = v174;
  v205 = v175;
  v11 = vdupq_n_s32(0x16A0u);
  v12 = vdupq_n_s32(0xFFFFE960);
  v213 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v176, v183), v11), 0xDuLL);
  v212 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v177, v182), v11), 0xDuLL);
  v206 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v183, v11), v176, v12), 0xDuLL);
  v207 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v182, v11), v177, v12), 0xDuLL);
  v211 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v178, v181), v11), 0xDuLL);
  v210 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v179, v180), v11), 0xDuLL);
  v208 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v181, v11), v178, v12), 0xDuLL);
  v209 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v180, v11), v179, v12), 0xDuLL);
  v214 = v184;
  v215 = v185;
  v216 = v186;
  v217 = v187;
  for (k = 112; k != 48; k -= 16)
  {
    *(&v156 + v10) = vqaddq_s32(*(&v188 + v10), *(&v188 + k));
    v10 += 16;
  }

  v14 = 48;
  v15 = 64;
  do
  {
    *(&v156 + v15) = vqsubq_s32(*(&v188 + v14), *(&v188 + v15));
    v14 -= 16;
    v15 += 16;
  }

  while (v14 != -16);
  v164 = v194;
  v165 = v195;
  v16 = vdupq_n_s32(0x16A0u);
  v17 = vdupq_n_s32(0xFFFFE960);
  v168 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v197, v198), v16), 0xDuLL);
  v169 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v196, v199), v16), 0xDuLL);
  v166 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v199, v16), v196, v17), 0xDuLL);
  v167 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v198, v16), v197, v17), 0xDuLL);
  v170 = v200;
  v171 = v201;
  v18 = 368;
  v19 = 256;
  do
  {
    *(&v156 + v19) = vqaddq_s32(*(&v188 + v19), *(&v188 + v18));
    v18 -= 16;
    v19 += 16;
  }

  while (v18 != 304);
  v20 = 320;
  do
  {
    *(&v156 + v20) = vqsubq_s32(*(&v188 + v18), *(&v188 + v20));
    v18 -= 16;
    v20 += 16;
  }

  while (v18 != 240);
  v21 = 496;
  v22 = 384;
  do
  {
    *(&v156 + v22) = vqsubq_s32(*(&v188 + v21), *(&v188 + v22));
    v21 -= 16;
    v22 += 16;
  }

  while (v21 != 432);
  v23 = 448;
  v24 = 432;
  do
  {
    *(&v156 + v23) = vqaddq_s32(*(&v188 + v23), *(&v188 + v24));
    v23 += 16;
    v24 -= 16;
  }

  while (v23 != 512);
  v150 = vdupq_n_s32(0x16A0u);
  v155 = vdupq_n_s32(0xFFFFE960);
  v25 = vdupq_n_s32(0x1D90u);
  v26 = vdupq_n_s32(0xC40u);
  v27 = vdupq_n_s32(0xFFFFE270);
  v28 = vmlaq_s32(vmulq_s32(v184, v25), v175, v26);
  v152 = vmlaq_s32(vmulq_s32(v183, v26), v176, v27);
  v29 = vdupq_n_s32(0xFFFFF3C0);
  v30 = vmlaq_s32(vmulq_s32(v183, v27), v176, v29);
  v31 = vmlaq_s32(vmulq_s32(v182, v27), v177, v29);
  v190 = vqsubq_s32(v157, v158);
  v191 = vqsubq_s32(v156, v159);
  v153 = vmlaq_s32(vmulq_s32(v191, v25), v190, v26);
  v154 = vmlaq_s32(vmulq_s32(v191, v26), v190, v27);
  v200 = vqaddq_s32(v170, v169);
  v201 = vqaddq_s32(v171, v168);
  v195 = vqaddq_s32(v165, v166);
  v196 = vqsubq_s32(v165, v166);
  v198 = vqsubq_s32(v171, v168);
  v199 = vqsubq_s32(v170, v169);
  v197 = vqsubq_s32(v164, v167);
  v32 = vmlaq_s32(vmulq_s32(v199, v27), v196, v29);
  v215 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v185, v25), v174, v26), 0xDuLL);
  v204 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v185, v26), v174, v27), 0xDuLL);
  v33 = vqaddq_s32(v173, v204);
  v34 = vqsubq_s32(v173, v204);
  v192 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v162, v150), v161, v155), 0xDuLL);
  v193 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v161, v162), v150), 0xDuLL);
  v35 = vqaddq_s32(v160, v192);
  v36 = vqaddq_s32(v163, v193);
  v37 = vdupq_n_s32(0x1F64u);
  v38 = vdupq_n_s32(0x640u);
  v149 = vmlaq_s32(vmulq_s32(v36, v37), v35, v38);
  v39 = vdupq_n_s32(0xFFFFE09C);
  v151 = vmlaq_s32(vmulq_s32(v36, v38), v35, v39);
  v40 = vqaddq_s32(v186, v215);
  v41 = vmlaq_s32(vmulq_s32(v40, v37), v33, v38);
  v42 = vmlaq_s32(vmulq_s32(v40, v38), v33, v39);
  v43 = vqsubq_s32(v186, v215);
  v44 = vmlaq_s32(vmulq_s32(v43, v38), v34, v39);
  v45 = vmlaq_s32(vmulq_s32(v43, v39), v34, vdupq_n_s32(0xFFFFF9C0));
  v46 = vqsubq_s32(v160, v192);
  v47 = vqsubq_s32(v163, v193);
  v48 = vrshrq_n_s32(v31, 0xDuLL);
  v49 = vqsubq_s32(v178, v48);
  v50 = vqaddq_s32(v178, v48);
  v51 = vdupq_n_s32(0x11C8u);
  v52 = vdupq_n_s32(0x1A9Cu);
  v148 = vmlaq_s32(vmulq_s32(v47, v51), v46, v52);
  v53 = vmulq_s32(v47, v52);
  v54 = vdupq_n_s32(0xFFFFEE38);
  v147 = vmlaq_s32(v53, v46, v54);
  v55 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v182, v26), v177, v27), 0xDuLL);
  v56 = vqsubq_s32(v181, v55);
  v57 = vmlaq_s32(vmulq_s32(v56, v51), v49, v52);
  v58 = vmlaq_s32(vmulq_s32(v56, v52), v49, v54);
  v59 = vqaddq_s32(v181, v55);
  v60 = vmlaq_s32(vmulq_s32(v59, v52), v50, v54);
  v61 = vmlaq_s32(vmulq_s32(v59, v54), v50, vdupq_n_s32(0xFFFFE564));
  v194 = vqaddq_s32(v164, v167);
  v62 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v200, v25), v195, v26), 0xDuLL);
  v63 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v200, v26), v195, v27), 0xDuLL);
  v64 = vqaddq_s32(v201, v62);
  v65 = vqaddq_s32(v194, v63);
  v66 = vdupq_n_s32(0x324u);
  v67 = vmlaq_s32(vmulq_s32(v64, vdupq_n_s32(0x1FD8u)), v65, v66);
  v146 = vmlaq_s32(vmulq_s32(v64, v66), v65, vdupq_n_s32(0xFFFFE028));
  v68 = vqsubq_s32(v194, v63);
  v69 = vqsubq_s32(v201, v62);
  v70 = vdupq_n_s32(0x18BCu);
  v71 = vmlaq_s32(vmulq_s32(v69, vdupq_n_s32(0x144Cu)), v68, v70);
  v72 = vmlaq_s32(vmulq_s32(v69, v70), v68, vdupq_n_s32(0xFFFFEBB4));
  v73 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v199, v26), v196, v27), 0xDuLL);
  v74 = vrshrq_n_s32(v32, 0xDuLL);
  v75 = vqsubq_s32(v198, v73);
  v76 = vqsubq_s32(v197, v74);
  v77 = vdupq_n_s32(0xF14u);
  v78 = vmlaq_s32(vmulq_s32(v75, vdupq_n_s32(0x1C38u)), v76, v77);
  v79 = vmlaq_s32(vmulq_s32(v75, v77), v76, vdupq_n_s32(0xFFFFE3C8));
  v80 = vqaddq_s32(v197, v74);
  v81 = vqaddq_s32(v198, v73);
  v82 = vdupq_n_s32(0x1EA0u);
  v83 = vmlaq_s32(vmulq_s32(v81, vdupq_n_s32(0x94Cu)), v80, v82);
  v84 = vmlaq_s32(vmulq_s32(v81, v82), v80, vdupq_n_s32(0xFFFFF6B4));
  v85 = vrshrq_n_s32(v28, 0xDuLL);
  v86 = vrshrq_n_s32(v41, 0xDuLL);
  v87 = vrshrq_n_s32(v42, 0xDuLL);
  v88 = vqaddq_s32(v187, v85);
  v89 = vqaddq_s32(v88, v86);
  v90 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v184, v26), v175, v27), 0xDuLL);
  v91 = vqaddq_s32(v172, v90);
  v92 = vdupq_n_s32(0x190u);
  v93 = vqaddq_s32(v91, v87);
  v94 = vmlaq_s32(vmulq_s32(v89, vdupq_n_s32(0x1FF8u)), v93, v92);
  v95 = vmlaq_s32(vmulq_s32(v89, v92), v93, vdupq_n_s32(0xFFFFE008));
  v96 = vqsubq_s32(v91, v87);
  v97 = vqsubq_s32(v88, v86);
  v98 = vdupq_n_s32(0x17B4u);
  v99 = vmlaq_s32(vmulq_s32(v97, vdupq_n_s32(0x157Cu)), v96, v98);
  v100 = vmlaq_s32(vmulq_s32(v97, v98), v96, vdupq_n_s32(0xFFFFEA84));
  v101 = vqsubq_s32(v172, v90);
  v102 = vqsubq_s32(v187, v85);
  v103 = vrshrq_n_s32(v44, 0xDuLL);
  v104 = vrshrq_n_s32(v45, 0xDuLL);
  v105 = vqsubq_s32(v102, v103);
  v106 = vqsubq_s32(v101, v104);
  v107 = vdupq_n_s32(0xDB0u);
  v108 = vmlaq_s32(vmulq_s32(v105, vdupq_n_s32(0x1CECu)), v106, v107);
  v109 = vmlaq_s32(vmulq_s32(v105, v107), v106, vdupq_n_s32(0xFFFFE314));
  v110 = vqaddq_s32(v101, v104);
  v111 = vqaddq_s32(v102, v103);
  v112 = vdupq_n_s32(0x1E20u);
  v113 = vmlaq_s32(vmulq_s32(v111, vdupq_n_s32(0xAC8u)), v110, v112);
  v114 = vmlaq_s32(vmulq_s32(v111, v112), v110, vdupq_n_s32(0xFFFFF538));
  v115 = vrshrq_n_s32(v152, 0xDuLL);
  v116 = vrshrq_n_s32(v30, 0xDuLL);
  v117 = vrshrq_n_s32(v57, 0xDuLL);
  v118 = vrshrq_n_s32(v58, 0xDuLL);
  v119 = vqsubq_s32(v180, v115);
  v120 = vqaddq_s32(v119, v117);
  v121 = vdupq_n_s32(0x7C8u);
  v122 = vqsubq_s32(v179, v116);
  v123 = vqaddq_s32(v122, v118);
  v124 = vmlaq_s32(vmulq_s32(v120, vdupq_n_s32(0x1F0Cu)), v123, v121);
  v125 = vmlaq_s32(vmulq_s32(v120, v121), v123, vdupq_n_s32(0xFFFFE0F4));
  v126 = vqsubq_s32(v122, v118);
  v127 = vqsubq_s32(v119, v117);
  v128 = vdupq_n_s32(0x1B74u);
  v129 = vmlaq_s32(vmulq_s32(v127, vdupq_n_s32(0x1074u)), v126, v128);
  v130 = vmlaq_s32(vmulq_s32(v127, v128), v126, vdupq_n_s32(0xFFFFEF8C));
  v131 = vqaddq_s32(v179, v116);
  v132 = vqaddq_s32(v180, v115);
  v133 = vrshrq_n_s32(v60, 0xDuLL);
  v134 = vrshrq_n_s32(v61, 0xDuLL);
  v135 = vqsubq_s32(v132, v133);
  v136 = vqsubq_s32(v131, v134);
  v137 = vdupq_n_s32(0x1310u);
  v138 = vmlaq_s32(vmulq_s32(v135, vdupq_n_s32(0x19B4u)), v136, v137);
  v139 = vmlaq_s32(vmulq_s32(v135, v137), v136, vdupq_n_s32(0xFFFFE64C));
  v140 = vqaddq_s32(v131, v134);
  v141 = vqaddq_s32(v132, v133);
  v142 = vdupq_n_s32(0x1FA8u);
  v143 = vmlaq_s32(vmulq_s32(v141, vdupq_n_s32(0x4B4u)), v140, v142);
  v144 = vmlaq_s32(vmulq_s32(v141, v142), v140, vdupq_n_s32(0xFFFFFB4C));
  v188 = vqaddq_s32(v156, v159);
  v189 = vqaddq_s32(v157, v158);
  v145 = vmlaq_s32(vmulq_s32(v188, v150), v189, v155);
  *a2 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v189, v188), v150), 0xDuLL);
  a2[1] = vrshrq_n_s32(v94, 0xDuLL);
  a2[2] = vrshrq_n_s32(v67, 0xDuLL);
  a2[3] = vrshrq_n_s32(v144, 0xDuLL);
  a2[4] = vrshrq_n_s32(v149, 0xDuLL);
  a2[5] = vrshrq_n_s32(v124, 0xDuLL);
  a2[6] = vrshrq_n_s32(v84, 0xDuLL);
  a2[7] = vrshrq_n_s32(v114, 0xDuLL);
  a2[8] = vrshrq_n_s32(v153, 0xDuLL);
  a2[9] = vrshrq_n_s32(v108, 0xDuLL);
  a2[10] = vrshrq_n_s32(v78, 0xDuLL);
  a2[11] = vrshrq_n_s32(v130, 0xDuLL);
  a2[12] = vrshrq_n_s32(v147, 0xDuLL);
  a2[13] = vrshrq_n_s32(v138, 0xDuLL);
  a2[14] = vrshrq_n_s32(v72, 0xDuLL);
  a2[15] = vrshrq_n_s32(v100, 0xDuLL);
  a2[16] = vrshrq_n_s32(v145, 0xDuLL);
  a2[17] = vrshrq_n_s32(v99, 0xDuLL);
  a2[18] = vrshrq_n_s32(v71, 0xDuLL);
  a2[19] = vrshrq_n_s32(v139, 0xDuLL);
  a2[20] = vrshrq_n_s32(v148, 0xDuLL);
  a2[21] = vrshrq_n_s32(v129, 0xDuLL);
  a2[22] = vrshrq_n_s32(v79, 0xDuLL);
  a2[23] = vrshrq_n_s32(v109, 0xDuLL);
  a2[24] = vrshrq_n_s32(v154, 0xDuLL);
  a2[25] = vrshrq_n_s32(v113, 0xDuLL);
  a2[26] = vrshrq_n_s32(v83, 0xDuLL);
  a2[27] = vrshrq_n_s32(v125, 0xDuLL);
  a2[28] = vrshrq_n_s32(v151, 0xDuLL);
  a2[29] = vrshrq_n_s32(v143, 0xDuLL);
  a2[30] = vrshrq_n_s32(v146, 0xDuLL);
  a2[31] = vrshrq_n_s32(v95, 0xDuLL);
  return result;
}

uint64_t sub_2779E858C(__int16 *a1, int32x4_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a3;
  v7 = a1;
  v80 = *MEMORY[0x277D85DE8];
  if ((0xF1FEuLL >> a4))
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    sub_277A78D0C(a4, 0xAu, &v63);
    return sub_277A78E90(v7, a2, v5, &v63, v79, a5);
  }

  v8 = off_28866D6A0[a4];
  v9 = off_28866DC20[a4];
  v10 = 1;
  if (a4 <= 0xF)
  {
    if (((1 << a4) & 0x4110) == 0)
    {
      if (((1 << a4) & 0x80A0) != 0)
      {
        v10 = 0;
        goto LABEL_10;
      }

      if (a4 != 6)
      {
        goto LABEL_10;
      }

      v10 = 0;
    }

    v7 = &a1[15 * a3];
    v5 = -a3;
  }

LABEL_10:
  for (i = 0; i != 4; ++i)
  {
    (v8)(&v7[8 * i], &v63, v5, 13);
    for (j = 0; j != 256; j += 16)
    {
      *(&v63 + j) = vrshrq_n_s16(*(&v63 + j), 4uLL);
    }

    v15 = vtrn1q_s16(v63, v64);
    v16 = vtrn2q_s16(v63, v64);
    v17 = vtrn1q_s16(v65, v66);
    v18 = vtrn2q_s16(v65, v66);
    v19 = vtrn1q_s16(v67, v68);
    v20 = vtrn2q_s16(v67, v68);
    v21 = vtrn1q_s16(v69, v70);
    v22 = vtrn2q_s16(v69, v70);
    v23 = vtrn1q_s32(v15, v17);
    v24 = vtrn2q_s32(v15, v17);
    v25 = vtrn1q_s32(v16, v18);
    v26 = vtrn2q_s32(v16, v18);
    v27 = vtrn1q_s32(v19, v21);
    v28 = vtrn2q_s32(v19, v21);
    v29 = vtrn1q_s32(v20, v22);
    v30 = vtrn2q_s32(v20, v22);
    v31 = vzip2q_s64(v23, v27);
    v23.i64[1] = v27.i64[0];
    v32 = vzip2q_s64(v25, v29);
    v25.i64[1] = v29.i64[0];
    v33 = vzip2q_s64(v24, v28);
    v24.i64[1] = v28.i64[0];
    v34 = vzip2q_s64(v26, v30);
    v26.i64[1] = v30.i64[0];
    v35 = &v79[32 * i];
    *v35 = v23;
    *(v35 + 1) = v25;
    *(v35 + 2) = v24;
    *(v35 + 3) = v26;
    *(v35 + 4) = v31;
    *(v35 + 5) = v32;
    *(v35 + 6) = v33;
    *(v35 + 7) = v34;
    v36 = &v79[32 * i + 128];
    v37 = vtrn1q_s16(v71, v72);
    v38 = vtrn2q_s16(v71, v72);
    v39 = vtrn1q_s16(v73, v74);
    v40 = vtrn2q_s16(v73, v74);
    v41 = vtrn1q_s16(v75, v76);
    v42 = vtrn2q_s16(v75, v76);
    v43 = vtrn1q_s16(v77, v78);
    v44 = vtrn2q_s16(v77, v78);
    v45 = vtrn1q_s32(v37, v39);
    v46 = vtrn2q_s32(v37, v39);
    v47 = vtrn1q_s32(v38, v40);
    v48 = vtrn2q_s32(v38, v40);
    v49 = vtrn1q_s32(v41, v43);
    v50 = vtrn2q_s32(v41, v43);
    v51 = vtrn1q_s32(v42, v44);
    v52 = vtrn2q_s32(v42, v44);
    v53 = vzip2q_s64(v45, v49);
    v45.i64[1] = v49.i64[0];
    v54 = vzip2q_s64(v47, v51);
    v47.i64[1] = v51.i64[0];
    v55 = vzip2q_s64(v46, v50);
    v46.i64[1] = v50.i64[0];
    v56 = vzip2q_s64(v48, v52);
    v48.i64[1] = v52.i64[0];
    *v36 = v45;
    *(v36 + 1) = v47;
    *(v36 + 2) = v46;
    *(v36 + 3) = v48;
    *(v36 + 4) = v53;
    *(v36 + 5) = v54;
    *(v36 + 6) = v55;
    *(v36 + 7) = v56;
  }

  v57 = 0;
  v58 = 1;
  do
  {
    v59 = v58;
    v60 = &v79[128 * v57];
    if ((v10 & 1) == 0)
    {
      for (k = 496; k != -16; k -= 16)
      {
        v62 = *v60++;
        *(&v63 + k) = v62;
      }

      v60 = &v63;
    }

    result = (v9)(v60, &a2[2 * v57], 16, 13);
    v58 = 0;
    v57 = 1;
  }

  while ((v59 & 1) != 0);
  return result;
}

uint64_t sub_2779E8870(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v9 = *MEMORY[0x277D85DE8];
  do
  {
    *&v8[v3] = vshlq_n_s16(*(result + v3), 2uLL);
    v3 += 16;
  }

  while (v3 != 512);
  v4 = 0;
  v5 = a2 + 1;
  v6 = vdupq_n_s16(0x16A1u);
  do
  {
    v7 = *&v8[v4];
    v5[-1] = vrshrq_n_s32(vmull_s16(*v7.i8, *v6.i8), 0xCuLL);
    *v5 = vrshrq_n_s32(vmull_high_s16(v7, v6), 0xCuLL);
    v4 += 16;
    v5 = (v5 + 4 * a3);
  }

  while (v4 != 512);
  return result;
}

uint64_t sub_2779E8920(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v267 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v203 = xmmword_277BEB8A0[16 * a4 - 157];
  v205 = xmmword_277BEB8A0[16 * a4 - 158];
  v207 = xmmword_277BEB8A0[16 * a4 - 155];
  v209 = xmmword_277BEB8A0[16 * a4 - 154];
  v210 = xmmword_277BEB8A0[16 * a4 - 153];
  v211 = xmmword_277BEB8A0[16 * a4 - 156];
  for (i = 496; i != 240; i -= 16)
  {
    *&v258[v4] = vqaddq_s16(*(result + v4), *(result + i));
    v4 += 16;
  }

  v8 = 240;
  v9 = 256;
  do
  {
    *&v258[v9] = vqsubq_s16(*(result + v8), *(result + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  for (j = 240; j != 112; j -= 16)
  {
    *&v241[v10] = vqaddq_s16(*&v258[v10], *&v258[j]);
    v10 += 16;
  }

  v12 = 112;
  v13 = 128;
  do
  {
    *&v241[v13] = vqsubq_s16(*&v258[v12], *&v258[v13]);
    v12 -= 16;
    v13 += 16;
  }

  while (v12 != -16);
  v14 = 0;
  v257 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v6.i8, 1), *v266.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v6.i8, 1), v266, *v6.i8, 0), 0xDuLL);
  v256 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v260.i8, *v6.i8, 1), *v265.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v260, *v6.i8, 1), v265, *v6.i8, 0), 0xDuLL);
  v250 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v6.i8, 2), *v266.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v6.i8, 2), v266, *v6.i8, 1), 0xDuLL);
  v251 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v260.i8, *v6.i8, 2), *v265.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v260, *v6.i8, 2), v265, *v6.i8, 1), 0xDuLL);
  v255 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v261.i8, *v6.i8, 1), *v264.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v261, *v6.i8, 1), v264, *v6.i8, 0), 0xDuLL);
  v254 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v262.i8, *v6.i8, 1), *v263.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v262, *v6.i8, 1), v263, *v6.i8, 0), 0xDuLL);
  v252 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v261.i8, *v6.i8, 2), *v264.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v261, *v6.i8, 2), v264, *v6.i8, 1), 0xDuLL);
  v253 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v262.i8, *v6.i8, 2), *v263.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v262, *v6.i8, 2), v263, *v6.i8, 1), 0xDuLL);
  for (k = 112; k != 48; k -= 16)
  {
    *(&v213 + v14) = vqaddq_s16(*&v241[v14], *&v241[k]);
    v14 += 16;
  }

  v16 = 48;
  v17 = 64;
  do
  {
    *(&v213 + v17) = vqsubq_s16(*&v241[v16], *&v241[v17]);
    v16 -= 16;
    v17 += 16;
  }

  while (v16 != -16);
  v224 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v244.i8, *v6.i8, 1), *v247.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v244, *v6.i8, 1), v247, *v6.i8, 0), 0xDuLL);
  v223 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v245.i8, *v6.i8, 1), *v246.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v245, *v6.i8, 1), v246, *v6.i8, 0), 0xDuLL);
  v18 = 368;
  v221 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v244.i8, *v6.i8, 2), *v247.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v244, *v6.i8, 2), v247, *v6.i8, 1), 0xDuLL);
  v222 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v245.i8, *v6.i8, 2), *v246.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v245, *v6.i8, 2), v246, *v6.i8, 1), 0xDuLL);
  v19 = 256;
  do
  {
    *(&v213 + v19) = vqaddq_s16(*&v258[v19], *&v241[v18]);
    v18 -= 16;
    v19 += 16;
  }

  while (v18 != 304);
  v20 = 320;
  do
  {
    *(&v213 + v20) = vqsubq_s16(*&v258[v18], *&v241[v20]);
    v18 -= 16;
    v20 += 16;
  }

  while (v18 != 240);
  v21 = 496;
  v22 = 384;
  do
  {
    *(&v213 + v22) = vqsubq_s16(*&v258[v21], *&v241[v22]);
    v21 -= 16;
    v22 += 16;
  }

  while (v21 != 432);
  v23 = 448;
  v24 = 432;
  do
  {
    *(&v213 + v23) = vqaddq_s16(*&v258[v23], *&v241[v24]);
    v23 += 16;
    v24 -= 16;
  }

  while (v23 != 512);
  v25 = 0;
  v26 = vqaddq_s16(v213, v216);
  v27 = vqaddq_s16(v214, v215);
  v28 = vqsubq_s16(v214, v215);
  v29 = vqsubq_s16(v213, v216);
  v30 = vmlal_lane_s16(vmull_lane_s16(*v218.i8, *v6.i8, 2), *v219.i8, *v6.i8, 1);
  v31 = vmlal_high_lane_s16(vmull_high_lane_s16(v218, *v6.i8, 2), v219, *v6.i8, 1);
  v32 = vqaddq_s16(v243, v221);
  v33 = vqsubq_s16(v243, v221);
  v34 = vqsubq_s16(v248, v224);
  v35 = vqaddq_s16(v248, v224);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v6, 5), *v238.i8, v6, 4);
  v37 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v6, 5), v238, v6, 4);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v6, 6), *v238.i8, v6, 5);
  v39 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v6, 6), v238, v6, 5);
  v177 = vmlal_laneq_s16(vmull_laneq_s16(*v228.i8, v6, 5), *v237.i8, v6, 4);
  v174 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v228, v6, 5), v237, v6, 4);
  v170 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v228, v6, 6), v237, v6, 5);
  v172 = vmlal_laneq_s16(vmull_laneq_s16(*v228.i8, v6, 6), *v237.i8, v6, 5);
  v40 = vmlal_laneq_s16(vmull_laneq_s16(*v229.i8, v6, 6), *v236.i8, v6, 5);
  v41 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v229, v6, 6), v236, v6, 5);
  v42 = vmlal_laneq_s16(vmull_laneq_s16(*v229.i8, v6, 7), *v236.i8, v6, 6);
  v43 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v229, v6, 7), v236, v6, 6);
  v44 = vmlal_laneq_s16(vmull_laneq_s16(*v230.i8, v6, 6), *v235.i8, v6, 5);
  v45 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v230, v6, 6), v235, v6, 5);
  v46 = vmlal_laneq_s16(vmull_laneq_s16(*v230.i8, v6, 7), *v235.i8, v6, 6);
  v47 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v230, v6, 7), v235, v6, 6);
  v202 = vmlal_lane_s16(vmull_lane_s16(*v27.i8, *v6.i8, 1), *v26.i8, *v6.i8, 0);
  v201 = vmlal_high_lane_s16(vmull_high_lane_s16(v27, *v6.i8, 1), v26, *v6.i8, 0);
  v199 = vmlal_high_lane_s16(vmull_high_lane_s16(v27, *v6.i8, 2), v26, *v6.i8, 1);
  v200 = vmlal_lane_s16(vmull_lane_s16(*v27.i8, *v6.i8, 2), *v26.i8, *v6.i8, 1);
  v198 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 5), *v29.i8, v6, 4);
  v197 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 5), v29, v6, 4);
  v195 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 6), v29, v6, 5);
  v196 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 6), *v29.i8, v6, 5);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v6, 5), *v35.i8, v6, 4);
  v49 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v32, v6, 5), v35, v6, 4);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v6, 6), *v35.i8, v6, 5);
  v51 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v32, v6, 6), v35, v6, 5);
  v52 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v6, 6), *v34.i8, v6, 5);
  v53 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v6, 6), v34, v6, 5);
  v54 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v6, 7), *v34.i8, v6, 6);
  v55 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v6, 7), v34, v6, 6);
  v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v218.i8, *v6.i8, 1), *v219.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v218, *v6.i8, 1), v219, *v6.i8, 0), 0xDuLL);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(v30, 0xDuLL), v31, 0xDuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(v38, 0xDuLL), v39, 0xDuLL);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(v44, 0xDuLL), v45, 0xDuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xDuLL), v47, 0xDuLL);
  v62 = vqaddq_s16(v217, v57);
  v63 = vqsubq_s16(v217, v57);
  v64 = vqsubq_s16(v220, v56);
  v65 = vqaddq_s16(v220, v56);
  v66 = vqaddq_s16(v226, v59);
  v67 = vqsubq_s16(v226, v59);
  v68 = vqsubq_s16(v231, v61);
  v69 = vqaddq_s16(v231, v61);
  v70 = vqaddq_s16(v234, v60);
  v71 = vqsubq_s16(v234, v60);
  v72 = vqsubq_s16(v239, v58);
  v73 = vqaddq_s16(v239, v58);
  v192 = vmlal_lane_s16(vmull_lane_s16(*v62.i8, *v5.i8, 1), *v65.i8, *v5.i8, 0);
  v191 = vmlal_high_lane_s16(vmull_high_lane_s16(v62, *v5.i8, 1), v65, *v5.i8, 0);
  v194 = vmlal_lane_s16(vmull_lane_s16(*v62.i8, *v5.i8, 2), *v65.i8, *v5.i8, 1);
  v193 = vmlal_high_lane_s16(vmull_high_lane_s16(v62, *v5.i8, 2), v65, *v5.i8, 1);
  v190 = vmlal_laneq_s16(vmull_laneq_s16(*v63.i8, v5, 4), *v64.i8, v5, 5);
  v189 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v63, v5, 4), v64, v5, 5);
  v188 = vmlal_laneq_s16(vmull_laneq_s16(*v63.i8, v5, 7), *v64.i8, v5, 4);
  v187 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v63, v5, 7), v64, v5, 4);
  v183 = vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v5.i8, 1), *v73.i8, *v5.i8, 0);
  v182 = vmlal_high_lane_s16(vmull_high_lane_s16(v66, *v5.i8, 1), v73, *v5.i8, 0);
  v180 = vmlal_high_lane_s16(vmull_high_lane_s16(v66, *v5.i8, 2), v73, *v5.i8, 1);
  v181 = vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v5.i8, 2), *v73.i8, *v5.i8, 1);
  v74 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v5.i8, 2), *v72.i8, *v5.i8, 1);
  v75 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v5.i8, 2), v72, *v5.i8, 1);
  v76 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v5.i8, 3), *v72.i8, *v5.i8, 2);
  v77 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v5.i8, 3), v72, *v5.i8, 2);
  v78 = vmlal_laneq_s16(vmull_laneq_s16(*v68.i8, v5, 4), *v71.i8, v5, 5);
  v79 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v68, v5, 4), v71, v5, 5);
  v80 = vmlal_laneq_s16(vmull_laneq_s16(*v68.i8, v5, 7), *v71.i8, v5, 4);
  v81 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v68, v5, 7), v71, v5, 4);
  v163 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v5, 7), *v70.i8, v5, 4);
  v162 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v5, 7), v70, v5, 4);
  v161 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v5, 6), *v70.i8, v5, 7);
  v160 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v5, 6), v70, v5, 7);
  v82 = vqaddq_s16(v242, v222);
  v83 = vqsubq_s16(v242, v222);
  v84 = vqsubq_s16(v249, v223);
  v85 = vqaddq_s16(v249, v223);
  v86 = vrshrn_high_n_s32(vrshrn_n_s32(v48, 0xDuLL), v49, 0xDuLL);
  v87 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xDuLL), v51, 0xDuLL);
  v88 = vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xDuLL), v53, 0xDuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
  v90 = vqsubq_s16(v82, v87);
  v91 = vqsubq_s16(v85, v86);
  v186 = vmlal_laneq_s16(vmull_laneq_s16(*v90.i8, v203, 4), *v91.i8, v203, 5);
  v185 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v90, v203, 4), v91, v203, 5);
  v168 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v90, v203, 7), v91, v203, 4);
  v169 = vmlal_laneq_s16(vmull_laneq_s16(*v90.i8, v203, 7), *v91.i8, v203, 4);
  v92 = vqsubq_s16(v83, v89);
  v93 = vqsubq_s16(v84, v88);
  v179 = vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v203.i8, 1), *v93.i8, *v203.i8, 0);
  v176 = vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v203.i8, 1), v93, *v203.i8, 0);
  v166 = vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v203.i8, 2), v93, *v203.i8, 1);
  v167 = vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v203.i8, 2), *v93.i8, *v203.i8, 1);
  v94 = vqaddq_s16(v82, v87);
  v95 = vqaddq_s16(v83, v89);
  v96 = vqaddq_s16(v84, v88);
  v97 = vqaddq_s16(v85, v86);
  v204 = vmlal_lane_s16(vmull_lane_s16(*v94.i8, *v205.i8, 1), *v97.i8, *v205.i8, 0);
  v184 = vmlal_high_lane_s16(vmull_high_lane_s16(v94, *v205.i8, 1), v97, *v205.i8, 0);
  v157 = vmlal_high_lane_s16(vmull_high_lane_s16(v94, *v205.i8, 2), v97, *v205.i8, 1);
  v158 = vmlal_lane_s16(vmull_lane_s16(*v94.i8, *v205.i8, 2), *v97.i8, *v205.i8, 1);
  v165 = vmlal_laneq_s16(vmull_laneq_s16(*v95.i8, v205, 4), *v96.i8, v205, 5);
  v164 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v95, v205, 4), v96, v205, 5);
  v159 = vmlal_laneq_s16(vmull_laneq_s16(*v95.i8, v205, 7), *v96.i8, v205, 4);
  v206 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v95, v205, 7), v96, v205, 4);
  v98 = vrshrn_high_n_s32(vrshrn_n_s32(v177, 0xDuLL), v174, 0xDuLL);
  v99 = vrshrn_high_n_s32(vrshrn_n_s32(v172, 0xDuLL), v170, 0xDuLL);
  v100 = vrshrn_high_n_s32(vrshrn_n_s32(v40, 0xDuLL), v41, 0xDuLL);
  v101 = vrshrn_high_n_s32(vrshrn_n_s32(v42, 0xDuLL), v43, 0xDuLL);
  v102 = vrshrn_high_n_s32(vrshrn_n_s32(v74, 0xDuLL), v75, 0xDuLL);
  v103 = vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xDuLL), v77, 0xDuLL);
  v104 = vrshrn_high_n_s32(vrshrn_n_s32(v78, 0xDuLL), v79, 0xDuLL);
  v105 = vrshrn_high_n_s32(vrshrn_n_s32(v80, 0xDuLL), v81, 0xDuLL);
  v106 = vqsubq_s16(v225, v99);
  v107 = vqsubq_s16(v240, v98);
  v108 = vqaddq_s16(v106, v103);
  v109 = vqaddq_s16(v107, v102);
  v178 = vmlal_laneq_s16(vmull_laneq_s16(*v108.i8, v207, 4), *v109.i8, v207, 5);
  v175 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v108, v207, 4), v109, v207, 5);
  v173 = vmlal_laneq_s16(vmull_laneq_s16(*v108.i8, v207, 7), *v109.i8, v207, 4);
  v171 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v108, v207, 7), v109, v207, 4);
  v110 = vqsubq_s16(v232, v101);
  v111 = vqsubq_s16(v233, v100);
  v112 = vqaddq_s16(v110, v105);
  v113 = vqaddq_s16(v111, v104);
  v156 = vmlal_lane_s16(vmull_lane_s16(*v112.i8, *v207.i8, 1), *v113.i8, *v207.i8, 0);
  v155 = vmlal_high_lane_s16(vmull_high_lane_s16(v112, *v207.i8, 1), v113, *v207.i8, 0);
  v114 = vmlal_lane_s16(vmull_lane_s16(*v112.i8, *v207.i8, 2), *v113.i8, *v207.i8, 1);
  v208 = vmlal_high_lane_s16(vmull_high_lane_s16(v112, *v207.i8, 2), v113, *v207.i8, 1);
  v115 = vqsubq_s16(v106, v103);
  v116 = vqsubq_s16(v110, v105);
  v117 = vqsubq_s16(v111, v104);
  v118 = vqsubq_s16(v107, v102);
  v119 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v209.i8, 1), *v118.i8, *v209.i8, 0);
  v120 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v209.i8, 1), v118, *v209.i8, 0);
  v121 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v209.i8, 2), *v118.i8, *v209.i8, 1);
  v122 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v209.i8, 2), v118, *v209.i8, 1);
  v153 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v209, 4), *v117.i8, v209, 5);
  v154 = v114;
  v123 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v209, 4), v117, v209, 5);
  v124 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v209, 7), *v117.i8, v209, 4);
  v125 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v209, 7), v117, v209, 4);
  v126 = vqaddq_s16(v225, v99);
  v127 = vqaddq_s16(v232, v101);
  v128 = vqaddq_s16(v233, v100);
  v129 = vqaddq_s16(v240, v98);
  v130 = vrshrn_high_n_s32(vrshrn_n_s32(v183, 0xDuLL), v182, 0xDuLL);
  v131 = vrshrn_high_n_s32(vrshrn_n_s32(v181, 0xDuLL), v180, 0xDuLL);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(v163, 0xDuLL), v162, 0xDuLL);
  v133 = vrshrn_high_n_s32(vrshrn_n_s32(v161, 0xDuLL), v160, 0xDuLL);
  v134 = vqsubq_s16(v126, v131);
  v135 = vqsubq_s16(v129, v130);
  v136 = vmlal_laneq_s16(vmull_laneq_s16(*v134.i8, v210, 4), *v135.i8, v210, 5);
  v137 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v134, v210, 4), v135, v210, 5);
  v138 = vmlal_laneq_s16(vmull_laneq_s16(*v134.i8, v210, 7), *v135.i8, v210, 4);
  v139 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v134, v210, 7), v135, v210, 4);
  v140 = vqsubq_s16(v127, v133);
  v141 = vqsubq_s16(v128, v132);
  v142 = vmlal_lane_s16(vmull_lane_s16(*v140.i8, *v210.i8, 1), *v141.i8, *v210.i8, 0);
  v143 = vmlal_high_lane_s16(vmull_high_lane_s16(v140, *v210.i8, 1), v141, *v210.i8, 0);
  v144 = vmlal_lane_s16(vmull_lane_s16(*v140.i8, *v210.i8, 2), *v141.i8, *v210.i8, 1);
  v145 = vmlal_high_lane_s16(vmull_high_lane_s16(v140, *v210.i8, 2), v141, *v210.i8, 1);
  v146 = vqaddq_s16(v126, v131);
  v147 = vqaddq_s16(v127, v133);
  v148 = vqaddq_s16(v128, v132);
  v149 = vqaddq_s16(v129, v130);
  v212[0] = vrshrn_high_n_s32(vrshrn_n_s32(v202, 0xDuLL), v201, 0xDuLL);
  v212[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v146.i8, *v211.i8, 1), *v149.i8, *v211.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v146, *v211.i8, 1), v149, *v211.i8, 0), 0xDuLL);
  v212[30] = vrshrn_high_n_s32(vrshrn_n_s32(v158, 0xDuLL), v157, 0xDuLL);
  v212[31] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v146.i8, *v211.i8, 2), *v149.i8, *v211.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v146, *v211.i8, 2), v149, *v211.i8, 1), 0xDuLL);
  v212[16] = vrshrn_high_n_s32(vrshrn_n_s32(v200, 0xDuLL), v199, 0xDuLL);
  v212[17] = vrshrn_high_n_s32(vrshrn_n_s32(v136, 0xDuLL), v137, 0xDuLL);
  v212[14] = vrshrn_high_n_s32(vrshrn_n_s32(v169, 0xDuLL), v168, 0xDuLL);
  v212[15] = vrshrn_high_n_s32(vrshrn_n_s32(v138, 0xDuLL), v139, 0xDuLL);
  v212[8] = vrshrn_high_n_s32(vrshrn_n_s32(v198, 0xDuLL), v197, 0xDuLL);
  v212[9] = vrshrn_high_n_s32(vrshrn_n_s32(v119, 0xDuLL), v120, 0xDuLL);
  v212[22] = vrshrn_high_n_s32(vrshrn_n_s32(v167, 0xDuLL), v166, 0xDuLL);
  v212[23] = vrshrn_high_n_s32(vrshrn_n_s32(v121, 0xDuLL), v122, 0xDuLL);
  v212[24] = vrshrn_high_n_s32(vrshrn_n_s32(v196, 0xDuLL), v195, 0xDuLL);
  v212[25] = vrshrn_high_n_s32(vrshrn_n_s32(v178, 0xDuLL), v175, 0xDuLL);
  v212[6] = vrshrn_high_n_s32(vrshrn_n_s32(v159, 0xDuLL), v206, 0xDuLL);
  v212[7] = vrshrn_high_n_s32(vrshrn_n_s32(v173, 0xDuLL), v171, 0xDuLL);
  v212[4] = vrshrn_high_n_s32(vrshrn_n_s32(v192, 0xDuLL), v191, 0xDuLL);
  v212[5] = vrshrn_high_n_s32(vrshrn_n_s32(v156, 0xDuLL), v155, 0xDuLL);
  v212[26] = vrshrn_high_n_s32(vrshrn_n_s32(v165, 0xDuLL), v164, 0xDuLL);
  v212[27] = vrshrn_high_n_s32(vrshrn_n_s32(v154, 0xDuLL), v208, 0xDuLL);
  v212[20] = vrshrn_high_n_s32(vrshrn_n_s32(v190, 0xDuLL), v189, 0xDuLL);
  v212[21] = vrshrn_high_n_s32(vrshrn_n_s32(v153, 0xDuLL), v123, 0xDuLL);
  v212[10] = vrshrn_high_n_s32(vrshrn_n_s32(v179, 0xDuLL), v176, 0xDuLL);
  v212[11] = vrshrn_high_n_s32(vrshrn_n_s32(v124, 0xDuLL), v125, 0xDuLL);
  v212[12] = vrshrn_high_n_s32(vrshrn_n_s32(v188, 0xDuLL), v187, 0xDuLL);
  v212[13] = vrshrn_high_n_s32(vrshrn_n_s32(v142, 0xDuLL), v143, 0xDuLL);
  v212[18] = vrshrn_high_n_s32(vrshrn_n_s32(v186, 0xDuLL), v185, 0xDuLL);
  v212[19] = vrshrn_high_n_s32(vrshrn_n_s32(v144, 0xDuLL), v145, 0xDuLL);
  v212[28] = vrshrn_high_n_s32(vrshrn_n_s32(v194, 0xDuLL), v193, 0xDuLL);
  v212[29] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v147.i8, v211, 4), *v148.i8, v211, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v147, v211, 4), v148, v211, 5), 0xDuLL);
  v212[2] = vrshrn_high_n_s32(vrshrn_n_s32(v204, 0xDuLL), v184, 0xDuLL);
  v212[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v147.i8, v211, 7), *v148.i8, v211, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v147, v211, 7), v148, v211, 4), 0xDuLL);
  v150 = a2 + 1;
  do
  {
    v151 = v212[v25];
    v152 = vdupq_n_s16(0x16A1u);
    v150[-1] = vrshrq_n_s32(vmull_s16(*v151.i8, *v152.i8), 0xCuLL);
    *v150 = vrshrq_n_s32(vmull_high_s16(v151, v152), 0xCuLL);
    ++v25;
    v150 = (v150 + 4 * a3);
  }

  while (v25 != 32);
  return result;
}