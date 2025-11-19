uint64_t sub_100144738(uint64_t a1, void *(*a2)(int a1, size_t __size), void (*a3)(int a1, void *a2), uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = sub_100134FA4;
  }

  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = sub_100134FAC;
  }

  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  if (a2)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 56) = v7;
  *(a1 + 116) = 0;
  sub_1001352C0(a1 + 8);
  v8 = *(a1 + 664);
  *a1 = 0;
  *(a1 + 72) = 0;
  *(a1 + 120) = 0;
  *(a1 + 336) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 664) = v8 & 0xFFC0 | 0x10;
  *(a1 + 668) = 0;
  *(a1 + 100) = xmmword_1003E2D30;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 84) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 384) = 63;
  *(a1 + 696) = sub_100135240();
  *(a1 + 704) = sub_1001329F8();
  return 1;
}

double sub_10014481C(uint64_t a1)
{
  *(a1 + 264) = 0;
  *(a1 + 272) = xmmword_1003E2D40;
  *(a1 + 288) = xmmword_1003E2D50;
  *(a1 + 304) = xmmword_1003E2D60;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 680) = 0u;
  return result;
}

uint64_t sub_100144868(uint64_t a1)
{
  (*(a1 + 48))(*(a1 + 56), *(a1 + 688));
  *(a1 + 688) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 680));
  *(a1 + 680) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 336));
  *(a1 + 336) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 168));
  *(a1 + 168) = 0;
  (*(a1 + 48))(*(a1 + 56), *(a1 + 192));
  *(a1 + 192) = 0;
  result = (*(a1 + 48))(*(a1 + 56), *(a1 + 216));
  *(a1 + 216) = 0;
  return result;
}

uint64_t sub_1001448E8(uint64_t a1)
{
  sub_100144868(a1);
  (*(a1 + 48))(*(a1 + 56), *(a1 + 120));
  *(a1 + 120) = 0;
  result = (*(a1 + 48))(*(a1 + 56), *(a1 + 240));
  *(a1 + 240) = 0;
  return result;
}

BOOL sub_10014492C(uint64_t a1, uint64_t a2, __int16 a3, int a4, unsigned int a5)
{
  v6 = a4;
  v9 = (*(a1 + 40))(*(a1 + 56), (4 * (a4 + 376) + 8) * a5);
  *(a2 + 16) = a3;
  *(a2 + 18) = v6;
  *(a2 + 20) = a5;
  *a2 = v9;
  *(a2 + 8) = v9 + 8 * a5;
  return v9 != 0;
}

uint64_t sub_10014499C(uint64_t a1, uint64_t a2, int8x16_t *a3, unsigned int a4, int8x16_t a5)
{
  v6 = a2;
  if (!a2)
  {
    return v6;
  }

  v8 = 0;
  v9 = -a2;
  v10 = 8;
  v11 = &unk_1003EBA20;
  v12 = xmmword_1003E2380;
  v5.i32[0] = -1;
  v13.i64[0] = -1;
  v13.i64[1] = -1;
  v14.i64[0] = 0x800000008;
  v14.i64[1] = 0x800000008;
  v15 = 1;
  v16 = a3->u64 + a4;
  do
  {
    v17 = &a3->u8[5];
    if (a3->u64 + 5 > v16)
    {
      return 0;
    }

    v18 = (a3->i64 + 4);
    v19 = a3->u32[0];
    v20 = v19 >> 16;
    v21 = a3->i32[0];
    if (v21 == 0xFFFF && !v18->i8[0])
    {
      if (v19 < 0x10000)
      {
        break;
      }

      if (&v17[v20] <= v16)
      {
        v87 = v16;
        if (v20 + v8 <= v6)
        {
          v83 = HIWORD(a3->i32[0]);
        }

        else
        {
          v83 = v6 - v8;
        }

        v84 = v10;
        v85 = v11;
        v88 = v5;
        v89 = v12;
        memcpy((a1 + v8), v17, v83);
        v14.i64[0] = 0x800000008;
        v14.i64[1] = 0x800000008;
        v13.i64[0] = -1;
        v13.i64[1] = -1;
        v5 = v88;
        v12 = v89;
        v11 = v85;
        v10 = v84;
        v8 = v8 + v83;
        a3 = &v17[v83];
        v16 = v87;
        continue;
      }

      return 0;
    }

    a5.i32[0] = a3->i32[0];
    *a5.i8 = vcnt_s8(*a5.i8);
    a5.i16[0] = vaddlv_u8(*a5.i8);
    v22 = (v18 + a5.u32[0]);
    if (v8 + 128 > v6 || a3[11].u64 + 4 > v16)
    {
      a5.i32[0] = HIWORD(a3->i32[0]);
      *a5.i8 = vcnt_s8(*a5.i8);
      a5.i16[0] = vaddlv_u8(*a5.i8);
      a3 = (v22 + (2 * a5.i32[0]));
      if (a3 > v16)
      {
        return 0;
      }

      v72 = 1;
      while (1)
      {
        v73 = v8;
        if ((v72 & v20) != 0)
        {
          v74 = v22->u16[0];
          v22 = (v22 + 2);
          v10 = v74;
        }

        if ((v72 & v21) != 0)
        {
          v76 = v18->u8[0];
          v18 = (v18 + 1);
          v75 = v76;
        }

        else
        {
          v75 = 0;
        }

        a5.i32[0] = v75;
        *a5.i8 = vcnt_s8(*a5.i8);
        a5.i16[0] = vaddlv_u8(*a5.i8);
        if (a3->u64 + a5.u32[0] > v16 || v8 < v10 && v75 != 255)
        {
          return 0;
        }

        v77 = 0;
        v78 = v8 - v10;
        v79 = v9 + v8;
        while (1)
        {
          LODWORD(v8) = v73 + v77;
          if (v77 == 8)
          {
            break;
          }

          v80 = 1 << v77;
          v81 = v77 + 1;
          v82 = (a1 + (v78 + v77));
          if ((v80 & v75) != 0)
          {
            v82 = a3;
            a3 = (a3 + 1);
          }

          *(a1 + v8) = v82->i8[0];
          v77 = v81;
          if (!(v79 + v81))
          {
            return v6;
          }
        }

        v72 *= 2;
        if (v72 >= 0x10000)
        {
          v8 = (v73 + 8);
          goto LABEL_56;
        }
      }
    }

    v23 = vcntq_s8(vdupq_n_s16(v20));
    v24 = vaddq_s8(v23, v23).u16[0];
    a5 = vorrq_s8(vandq_s8(vdupq_n_s16(v10), vcltzq_s8(v11[BYTE2(v19)])), vqtbl1q_s8(*v22, v11[BYTE2(v19)]));
    v25 = *(v22 + v24);
    a3 = (v22 + ((v24 + HIBYTE(v24)) & 0x3E));
    v26 = vorrq_s8(vandq_s8(vdupq_laneq_s16(a5, 7), vcltzq_s8(*(v11 + ((v19 >> 20) & 0xFF0)))), vqtbl1q_s8(v25, *(v11 + ((v19 >> 20) & 0xFF0))));
    v10 = v26.u16[7];
    if (v6 <= v8)
    {
      continue;
    }

    v27 = 0;
    *v28.i8 = qword_1003EAA20[v19];
    v25.i32[0] = v19;
    v29 = vcnt_s8(*v25.i8);
    v29.i16[0] = vaddlv_u8(v29);
    v28.u64[1] = vqadd_u8(qword_1003EAA20[BYTE1(v19)], vdup_lane_s8(v29, 0));
    v30 = vqtbl1q_s8(*v18, v28);
    v31 = vextq_s8(v26, v26, 8uLL).u64[0];
    v32 = vextq_s8(v30, v30, 8uLL).u64[0];
    v33 = vzip2_s8(v32, *a5.i8);
    *v25.i8 = vzip1_s8(v32, *a5.i8);
    v34 = vextq_s8(a5, a5, 8uLL).u64[0];
    v35 = vzip2_s8(*v30.i8, *a5.i8);
    v36 = vzip1_s8(*v30.i8, *a5.i8);
    do
    {
      if (v27 > 1)
      {
        v37 = *v26.i8;
        v38 = *v25.i8;
        if (v27 != 2)
        {
          v37 = v31;
          v38 = v33;
        }
      }

      else
      {
        v37 = *a5.i8;
        v38 = v36;
        if (v27)
        {
          v37 = v34;
          v38 = v35;
        }
      }

      v39 = vdupq_n_s32(v8);
      v40 = vaddq_s32(v39, v12);
      v41 = vceq_s16((*&v38 & 0xFF00FF00FF00FFLL), 0xFF00FF00FF00FFLL);
      v42 = vmovl_s16(vbic_s8(vmovn_s32(vcgtq_u32(vmovl_u16(v37), v40)), v41));
      v42.i32[0] = vmaxvq_u32(v42);
      v43 = v42.i32[0];
      if (v42.i32[0] < 0)
      {
        return 0;
      }

      v44 = vuzp1_s8(v38, *a5.i8);
      v91 = v44.i32[0];
      v44.i16[2] = v44.i16[1];
      v45 = vandq_s8(vandq_s8(vsubw_u16(v40, v37), vmovl_s16(vmvn_s8(v41))), vdupq_lane_s32(*&vcgtq_s32(v42, v5), 0));
      v46 = v44.u16[1];
      v44.i32[0] = v44.u16[0];
      v47 = vcnt_s8(v44);
      v47.i16[0] = vaddlv_u8(v47);
      v48 = qword_1003EAA20[BYTE1(v91)];
      v49 = v47.i32[0];
      *v50.i8 = qword_1003EAA20[v91];
      v47.i32[0] = v91;
      v51 = vcnt_s8(v47);
      v51.i16[0] = vaddlv_u8(v51);
      v50.u64[1] = vqadd_u8(v48, vdup_lane_s8(v51, 0));
      *v52.i8 = qword_1003EAA20[v46];
      v53 = vqtbl1q_s8(*a3, v50);
      v48.i32[0] = v46;
      v54 = vcnt_s8(v48);
      v54.i16[0] = vaddlv_u8(v54);
      v55 = vdup_lane_s8(v54, 0);
      v56 = vceqq_s8(v50, v13);
      v52.u64[1] = vqadd_u8(qword_1003EAA20[HIBYTE(v46)], v55);
      v57 = vqtbl1q_s8(*(a3 + v49), v52);
      v58 = vceqq_s8(v52, v13);
      if ((vminvq_u32(vcgeq_u32(v39, vaddq_s32(v45, v14))) & 0x80000000) != 0)
      {
        v68.i64[0] = *(a1 + v45.u32[0]);
        v69.i64[0] = *(a1 + v45.u32[2]);
        v68.i64[1] = *(a1 + v45.u32[1]);
        v69.i64[1] = *(a1 + v45.u32[3]);
        v67 = vorrq_s8(vandq_s8(v69, v58), v57);
        v70 = (a1 + v8);
        *v70 = vorrq_s8(vandq_s8(v68, v56), v53);
        v70[1] = v67;
        v8 = (v8 + 32);
        goto LABEL_29;
      }

      v59 = 0;
      v60 = vextq_s8(v57, v57, 8uLL).u64[0];
      v61 = vextq_s8(v58, v58, 8uLL).u64[0];
      v62 = vextq_s8(v53, v53, 8uLL).u64[0];
      v63 = vextq_s8(v56, v56, 8uLL).u64[0];
      while (1)
      {
        v90 = v45;
        v64 = *(a1 + *(&v90 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))));
        if (v59 > 1)
        {
          break;
        }

        if (v59)
        {
          v65 = *&v63;
        }

        else
        {
          v65 = *v56.i64;
        }

        if (v59)
        {
          v66 = *&v62;
        }

        else
        {
          v66 = *v53.i64;
        }

LABEL_26:
        *(a1 + v8) = vorr_s8(vand_s8(v64, *&v65), *&v66);
        LODWORD(v8) = v8 + 8;
        ++v59;
      }

      v65 = *v58.i64;
      v66 = *v57.i64;
      if (v59 == 2)
      {
        goto LABEL_26;
      }

      *v67.i8 = vorr_s8(vand_s8(v64, v61), v60);
      *(a1 + v8) = v67.i64[0];
      v8 = (v8 + 8);
LABEL_29:
      v15 &= ~(v43 >> 31);
      v67.i32[0] = v46;
      v71 = vcnt_s8(*v67.i8);
      v71.i16[0] = vaddlv_u8(v71);
      a3 = (a3 + v71.i32[0] + v49);
      if (v27 > 2)
      {
        break;
      }

      ++v27;
    }

    while (v8 < v6);
LABEL_56:
    ;
  }

  while (v8 < v6);
  v6 = v8;
  if (!v15)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_100144EF0(char *__dst, _BYTE *__n, unsigned __int8 *a3, unint64_t a4)
{
  v18 = a3;
  v19 = __dst;
  v5 = __dst;
  if (!__n)
  {
    return v5 - __dst;
  }

  v7 = __n;
  v5 = __dst;
  while (1)
  {
    if (a4 < 4)
    {
      return 0;
    }

    v8 = *a3;
    if (*a3 == 758412898)
    {
      break;
    }

    if (v8 != 825521762)
    {
      if (v8 == 607417954)
      {
        return v5 - __dst;
      }

      else
      {
        return 0;
      }
    }

    v9 = a4 - 12;
    if (a4 < 0xC)
    {
      return 0;
    }

    v11 = *(a3 + 1);
    v10 = *(a3 + 2);
    v12 = a3 + 12;
    v18 = a3 + 12;
    a4 = v9 - v10;
    if (v9 < v10 || v7 >= 0x81 && v10 >= 0x81 && lz4_decode_asm(&v19, __dst, &v7[v5 - 128], &v18, &v10[v12 - 128]))
    {
      return 0;
    }

    if (sub_10036CFC8(&v19, __dst, &v7[v5], &v18, &v10[v12]))
    {
      return 0;
    }

    v13 = v19;
    v14 = v19 - v5;
    if ((v19 - v5) == v7)
    {
      return v13 - __dst;
    }

    result = 0;
    if (v14 != v11)
    {
      return result;
    }

    a3 = v18;
    if ((v18 - v12) != v10)
    {
      return result;
    }

    v5 = v19;
LABEL_20:
    v7 -= v14;
    if (!v7)
    {
      return v5 - __dst;
    }
  }

  v16 = a4 - 8;
  if (a4 < 8)
  {
    return 0;
  }

  v14 = *(a3 + 1);
  v17 = a3 + 8;
  v18 = a3 + 8;
  a4 = v16 - v14;
  if (v16 < v14)
  {
    return 0;
  }

  if (v7 > v14)
  {
    memcpy(v5, v17, v14);
    v5 = &v19[v14];
    a3 = &v18[v14];
    v18 += v14;
    v19 += v14;
    goto LABEL_20;
  }

  memcpy(v5, v17, v7);
  v13 = &v7[v19];
  return v13 - __dst;
}

__n128 sub_1001450A0(__n128 *a1, void *__b)
{
  memset_pattern16(__b, &unk_1003E2EB0, 0x7580uLL);
  result.n128_u64[0] = 0x100000001;
  result.n128_u64[1] = 0x100000001;
  *a1 = result;
  a1[1].n128_u64[0] = __b;
  a1[1].n128_u8[13] = 0;
  return result;
}

uint64_t sub_10014513C(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a2 <= 2 && a1)
  {
    v3 = dword_1003E2F10[a2];
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 80) = v3;
    *(a1 + 84) = a2;
    if (a2)
    {
      v4 = 18;
    }

    else
    {
      v4 = 15;
    }

    v5 = 2 << v4;
    *(a1 + 88) = v4;
    *(a1 + 92) = (2 << v4) + 16;
    v6 = ((v3 & 1) << 14) + 0x4000;
    *(a1 + 96) = v6;
    *(a1 + 100) = 0x30000000002;
    v7 = (v3 >> 2) & 1 | 0xC;
    v8 = v6 >> 2;
    *(a1 + 108) = v7;
    *(a1 + 112) = v6 >> 2;
    v9 = (v6 >> 2) | 3;
    *(a1 + 116) = v9;
    v10 = (a1 + 199) & 0xFFFFFFFFFFFFFFC0;
    v11 = (v10 + (v5 + 79)) & 0xFFFFFFFFFFFFFFC0;
    *a1 = v10;
    *(a1 + 8) = v11;
    v12 = v11 + (v6 >> 2) + 66;
    v13 = (v12 + (v6 >> 2)) & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 16) = v12 & 0xFFFFFFFFFFFFFFC0;
    *(a1 + 24) = v13;
    *(a1 + 32) = (v13 + 3135) & 0xFFFFFFFFFFFFFFC0;
    return (v5 + v8 + v9 + 5080);
  }

  return v2;
}

uint64_t sub_10014521C(int *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  result = sub_10014513C(a5, a6);
  if (result)
  {
    result = 0;
    *(a5 + 56) = a4;
    *(a5 + 40) = a3;
    *(a5 + 48) = a1 + a2 - 31;
    if (a1)
    {
      if (a2 >= 0x23)
      {
        v12 = (a1 + 1);
        *a1 = (*(a5 + 80) << 24) | 0x4D425A;
        v13 = *a5;
        v14 = *(a5 + 92);
        *&v15 = 0x8000800080008;
        *(&v15 + 1) = 0x8000800080008;
        v24[0] = v15;
        v24[1] = v15;
        if (v14 >= 0x20)
        {
          v17 = 0;
          do
          {
            v18 = (v13 + v17);
            *v18 = v15;
            v18[1] = v15;
            v16 = v17 + 32;
            v19 = v17 + 64;
            v17 += 32;
          }

          while (v19 <= v14);
        }

        else
        {
          v16 = 0;
        }

        memcpy((v13 + v16), v24, v14 - v16);
        if (a4)
        {
          v20 = 0;
          v21 = *(a5 + 96);
          while (1)
          {
            v22 = a4 - v20 >= v21 ? v21 : a4 - v20;
            result = sub_10014535C(a5, v12, v20, v22);
            if (!result)
            {
              break;
            }

            v12 = result;
            v21 = *(a5 + 96);
            v20 += v21;
            if (v20 >= a4)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
LABEL_15:
          v23 = sub_10014535C(a5, v12, 0, 0);
          if (v23)
          {
            return (v23 - a1);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

char *sub_10014535C(uint64_t *a1, uint64_t a2, unsigned int a3, size_t __n)
{
  v4 = 0;
  if (a2)
  {
    v5 = a2;
    v6 = a1;
    v7 = a1[6];
    v8 = (a2 + 6);
    if (a2 + 6 <= v7)
    {
      v9 = __n;
      v10 = a3;
      if (__n < 0x91)
      {
        goto LABEL_174;
      }

      v344 = (a2 + 15);
      if (a2 + 15 > v7)
      {
        goto LABEL_174;
      }

      v11 = *(a1 + 26);
      if (v11)
      {
        v12 = 0;
        v13 = a1[3];
        v14 = xmmword_10037C0E0;
        v15 = xmmword_10037C0F0;
        v16.i64[0] = 0x800000008;
        v16.i64[1] = 0x800000008;
        do
        {
          *v13 = v15;
          v13[1] = v14;
          v13 += 2;
          v12 += 8;
          v15 = vaddq_s32(v15, v16);
          v14 = vaddq_s32(v14, v16);
        }

        while (v12 < v11);
      }

      v17 = *(a1 + 21);
      v327 = __n;
      v325 = (a2 + 6);
      switch(v17)
      {
        case 2:
          v34 = a1[5];
          v36 = a1[2];
          v35 = a1[3];
          v338 = a1[1];
          v37 = *(a1 + 14) - 16;
          if (v9 + v10 < v37)
          {
            v37 = v9 + v10;
          }

          v376 = 0u;
          v377 = 0u;
          v374 = 0u;
          v375 = 0u;
          v372 = 0u;
          v373 = 0u;
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v358 = 0u;
          v359 = 0u;
          v356 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          v346 = 0u;
          v347 = 0u;
          v386 = 0u;
          v387 = 0u;
          v324 = v37;
          if (v10 + 128 > v37)
          {
            v38 = 0;
            v39 = 0;
            v40 = 8;
            v41 = v10;
LABEL_77:
            v196 = ((v9 + 63) & 0xFFFFFFC0) + v10;
            if (v344 + v39 + v196 - v41 > v6[6])
            {
              goto LABEL_107;
            }

            for (; v41 < v196; v41 += 8)
            {
              v197 = 0;
              v198 = 0;
              v199 = (v41 - v10) >> 3;
              v36[v199] = 0;
              do
              {
                if (v41 + v198 < *(v6 + 14))
                {
                  v200 = *(v34 + v41 + v198);
                  if (v200 != *(v34 + v41 - v40 + v198))
                  {
                    *(v344 + v39) = v200;
                    v197 = (v36[v199] | (1 << v198));
                    v36[v199] |= 1 << v198;
                    ++v39;
                  }
                }

                ++v198;
              }

              while (v198 != 8);
              v35[v197] += 0x10000;
            }

            v111 = v39;
            *(v6 + 30) = v39;
            *(v6 + 31) = v38;
LABEL_116:
            v257 = v344 + v111;
            break;
          }

          v39 = 0;
          v38 = 0;
          v322 = v5 + 143;
          v112 = 8;
          v113 = vdupq_n_s32(0x9E3779B1);
          v114.i64[0] = 0x202020202020202;
          v114.i64[1] = 0x202020202020202;
          v115.i64[0] = 0x8000800080008;
          v115.i64[1] = 0x8000800080008;
          v41 = v10;
          v331 = v35;
          v334 = v34;
          v329 = v36;
          while (v322 + v39 <= v6[6])
          {
            v116 = 0;
            v117 = &v346;
            v118 = vnegq_s32(vdupq_n_s32(32 - *(v6 + 22)));
            do
            {
              v389 = *(v34 + v41 + v116);
              *v117 = vshlq_u32(vmulq_s32(vqtbl1q_s8(v389.val[0], xmmword_1003E23A0), v113), v118);
              v117[1] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v389.val[0], xmmword_1003E23B0), v113), v118);
              v117[2] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v389.val[0], xmmword_1003E23C0), v113), v118);
              v117[3] = vshlq_u32(vmulq_s32(vqtbl2q_s8(v389, xmmword_1003E23D0), v113), v118);
              v117 += 4;
              v49 = v116 >= 0x70;
              v116 += 16;
            }

            while (!v49);
            if (!v41)
            {
              *v36 = 255;
              v35[255] += 0x10000;
              *v344 = *v34;
              v39 = 8;
              v41 = 8;
            }

            for (i = v41 == 8; i != 16; ++i)
            {
              v120 = v41;
              v121 = (v34 + v41);
              v122 = *v121;
              v123 = (v41 - v10) >> 3;
              v124 = (&v346 + 2 * i);
              if (v121->i64[0] == *(v121->i64 - v112))
              {
                v36[v123] = 0;
                *v35 += 0x10000;
                v125 = *v6;
                *(v125 + 2 * v124[1]) = (v120 + 1) | (*(*v6 + 2 * v124[1]) << 16);
                *(v125 + 2 * v124[2]) = (v120 + 2) | (*(v125 + 2 * v124[2]) << 16);
                *(v125 + 2 * v124[3]) = (v120 + 3) | (*(v125 + 2 * v124[3]) << 16);
                *(v125 + 2 * v124[5]) = (v120 + 5) | (*(v125 + 2 * v124[5]) << 16);
                *(v125 + 2 * v124[6]) = (v120 + 6) | (*(v125 + 2 * v124[6]) << 16);
                *(v125 + 2 * v124[7]) = (v120 + 7) | (*(v125 + 2 * v124[7]) << 16);
                *(v125 + 2 * v124[4]) = (v120 + 4) | (*(v125 + 2 * v124[4]) << 16);
                *(v125 + 2 * *v124) = v120 | (*(v125 + 2 * *v124) << 16);
              }

              else
              {
                v342 = v39;
                v126 = *v6;
                v127 = 2 * *v124;
                v128 = *(*v6 + v127);
                v129 = 2 * v124[4];
                v130 = *(*v6 + v129);
                v131 = 2 * v124[2];
                v132 = *(*v6 + v131);
                v133 = 2 * v124[3];
                v134 = *(*v6 + v133);
                v135 = 2 * v124[1];
                v136 = *(*v6 + v135);
                v137 = 2 * v124[5];
                v138 = *(*v6 + v137);
                v139 = 2 * v124[6];
                v140 = *(*v6 + v139);
                v141 = 2 * v124[7];
                v142 = *(*v6 + v141);
                *(v126 + v135) = (v120 + 1) | (v136 << 16);
                *(v126 + v131) = (v120 + 2) | (*(v126 + v131) << 16);
                *(v126 + v133) = (v120 + 3) | (*(v126 + v133) << 16);
                *(v126 + v137) = (v120 + 5) | (*(v126 + v137) << 16);
                *(v126 + v139) = (v120 + 6) | (*(v126 + v139) << 16);
                *(v126 + v141) = (v120 + 7) | (*(v126 + v141) << 16);
                *(v126 + v129) = (v120 + 4) | (*(v126 + v129) << 16);
                *(v126 + v127) = v120 | (*(v126 + v127) << 16);
                v382.i16[0] = v120 - v128;
                v382.i16[1] = v120 + 4 - v130;
                v382.i16[2] = v120 + 2 - v132;
                v382.i16[3] = v120 + 3 - v134;
                v382.i16[4] = v120 + 1 - v136;
                v382.i16[5] = v120 + 5 - v138;
                v382.i16[6] = v120 + 6 - v140;
                v382.i16[7] = v120 + 7 - v142;
                v143 = *(v121 - (v120 - v128));
                v144 = *(v121 - v382.u16[1]);
                v145 = *(v121 - v382.u16[2]);
                v146 = *(v121 - v382.u16[3]);
                v147 = *(v121 - v382.u16[4]);
                v148 = *(v121 - v382.u16[5]);
                v149 = *(v121 - v382.u16[6]);
                v150 = *(v121 - v382.u16[7]);
                v383.i16[0] = v120 - HIWORD(v128);
                v151 = *(v121 - (v120 - HIWORD(v128)));
                v383.i16[1] = v120 + 4 - HIWORD(v130);
                v152 = *(v121 - v383.u16[1]);
                v383.i16[2] = v120 + 2 - HIWORD(v132);
                v153 = *(v121 - v383.u16[2]);
                v383.i16[3] = v120 + 3 - HIWORD(v134);
                v154 = *(v121 - v383.u16[3]);
                v383.i16[4] = v120 + 1 - HIWORD(v136);
                v155 = *(v121 - v383.u16[4]);
                v383.i16[5] = v120 + 5 - HIWORD(v138);
                v156 = *(v121 - v383.u16[5]);
                v383.i16[6] = v120 + 6 - HIWORD(v140);
                v157 = *(v121 - v383.u16[6]);
                v383.i16[7] = v120 + 7 - HIWORD(v142);
                v158 = vceqzq_s8(vuzp2q_s8(v382, v383));
                v159 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v143, v122)))));
                v160 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v144, v122)))));
                v161 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v145, v122)))));
                v162 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v146, v122)))));
                v163 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v147, v122)))));
                v164 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v148, v122)))));
                v165 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v149, v122)))));
                v166.i64[0] = vzip2q_s32(v159, v160).u64[0];
                v167.i64[0] = vzip2q_s32(v163, v164).u64[0];
                v166.i64[1] = __PAIR64__(v162.u32[2], v161.u32[2]);
                v167.i32[2] = v165.i32[2];
                v168 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v150, v122)))));
                v167.i32[3] = v168.i32[2];
                v159.i64[0] = vzip1q_s32(v159, v160).u64[0];
                v164.i64[0] = vzip1q_s32(v163, v164).u64[0];
                v159.i64[1] = __PAIR64__(v162.u32[0], v161.u32[0]);
                v164.i64[1] = __PAIR64__(v168.u32[0], v165.u32[0]);
                v169 = vuzp1q_s16(v159, v164);
                v170 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v151, v122)))));
                v171 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v152, v122)))));
                v172 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v153, v122)))));
                v173 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v154, v122)))));
                v174 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v155, v122)))));
                v175 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v156, v122)))));
                v176 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v157, v122)))));
                v177 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(v121 - v383.u16[7]), v122)))));
                v164.i64[0] = vzip2q_s32(v170, v171).u64[0];
                v163.i64[0] = vzip2q_s32(v174, v175).u64[0];
                v164.i64[1] = __PAIR64__(v173.u32[2], v172.u32[2]);
                v163.i64[1] = __PAIR64__(v177.u32[2], v176.u32[2]);
                v171.i64[0] = vzip1q_s32(v170, v171).u64[0];
                v175.i64[0] = vzip1q_s32(v174, v175).u64[0];
                v385 = 0;
                v384 = v112;
                v386 = vsubq_s8(vbicq_s8(v114, v158), v158);
                v380 = 0;
                v381 = 0;
                v171.i64[1] = __PAIR64__(v173.u32[0], v172.u32[0]);
                v175.i64[1] = __PAIR64__(v177.u32[0], v176.u32[0]);
                v178 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(v121 - v112), v122)))));
                LOBYTE(v126) = v178.i8[0];
                v179 = v178.i16[0] & 0xFF00 | (v178.i16[4] << 8);
                v380 = (v178.i16[0] | (v178.i16[4] << 8));
                v379 = vorrq_s8(vshlq_n_s16(vuzp1q_s16(v164, v163), 8uLL), vorrq_s8(vuzp1q_s16(v171, v175), vcgtq_u16(v115, v383)));
                v378 = vorrq_s8(vorrq_s8(vshlq_n_s16(vuzp1q_s16(v166, v167), 8uLL), v169), vcgtq_u16(v115, v382));
                v180 = vcntq_s8(v378);
                v181 = vcntq_s8(v379);
                v182 = vaddq_s8(vshlq_n_s8(vaddq_s8(vuzp1q_s8(v180, v181), v386), 2uLL), vuzp2q_s8(v180, v181));
                v345 = v182;
                v183 = vceqzq_s16(v379);
                v184 = vminvq_u16(vbicq_s8(vtstq_s16(v378, v378), v183));
                v183.i32[0] = v126;
                *v183.i8 = vcnt_s8(*v183.i8);
                v183.i16[0] = vaddlv_u8(*v183.i8);
                LODWORD(v126) = v183.i32[0];
                v183.i32[0] = v179;
                *v183.i8 = vcnt_s8(*v183.i8);
                v183.i16[0] = vaddlv_u8(*v183.i8);
                v185 = v183.i32[0] + 4 * v126;
                if ((v184 & 0x8000) != 0)
                {
                  v191 = vminvq_s16(vminq_s16(vzip1q_s8(xmmword_1003E2EF0, v182), vzip2q_s8(xmmword_1003E2EF0, v182)));
                  v188 = v191;
                  if (v185 <= v191 >> 8)
                  {
                    v188 = 16;
                  }

                  v10 = a3;
                  v189 = v342;
                  v6 = a1;
                  v35 = v331;
                  v34 = v334;
                  v36 = v329;
                }

                else
                {
                  v186 = 0;
                  v187 = 0;
                  v188 = 16;
                  v10 = a3;
                  v189 = v342;
                  v6 = a1;
                  v35 = v331;
                  v34 = v334;
                  v36 = v329;
                  do
                  {
                    v190 = v345.u8[v186] - v187;
                    if (v185 > v190)
                    {
                      v187 = 4 * (v378.i16[v186] == 0);
                      v185 = v190;
                      v188 = v186;
                    }

                    ++v186;
                  }

                  while (v186 != 16);
                }

                v112 = v382.u16[v188];
                v192 = v378.u8[2 * v188];
                *(v338 + v38) = v112;
                v193 = v386.u8[v188];
                v38 += v193;
                *(v344 + v189) = vqtbl1_s8(v122, qword_1003EB220[*&v192]);
                v194 = v192.i32[0] | (v193 << 8);
                v195 = vcnt_s8(v192);
                v195.i16[0] = vaddlv_u8(v195);
                v36[v123] = v194;
                v39 = v189 + v195.i32[0];
                v35[v194] += 0x10000;
              }

              v41 = v120 + 8;
            }

            if (v120 + 136 > v324)
            {
              v40 = v112;
              v9 = v327;
              v5 = a2;
              goto LABEL_77;
            }
          }

          v257 = 0;
          v9 = v327;
          v5 = a2;
          break;
        case 1:
          v26 = a1[5];
          v27 = a1[2];
          v28 = a1[3];
          v337 = a1[1];
          if (__n + a3 >= *(a1 + 14) - 16)
          {
            v29 = *(a1 + 14) - 16;
          }

          else
          {
            v29 = __n + a3;
          }

          v30 = 0uLL;
          v376 = 0u;
          v377 = 0u;
          v374 = 0u;
          v375 = 0u;
          v372 = 0u;
          v373 = 0u;
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v358 = 0u;
          v359 = 0u;
          v356 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          v346 = 0u;
          v347 = 0u;
          v321 = 8;
          v383 = 0uLL;
          v333 = v29;
          if (a3 + 128 > v29)
          {
            v31 = 0;
            v32 = 0;
            v33 = a3;
LABEL_45:
            v106 = ((v9 + 63) & 0xFFFFFFC0) + v10;
            if (v344 + v32 + v106 - v33 > v6[6])
            {
              goto LABEL_107;
            }

            for (; v33 < v106; v33 += 8)
            {
              v107 = 0;
              v108 = 0;
              v109 = (v33 - v10) >> 3;
              v27[v109] = 0;
              do
              {
                if (v33 + v108 < *(v6 + 14))
                {
                  v110 = *(v26 + v33 + v108);
                  if (v110 != *(v26 + v33 - v321 + v108))
                  {
                    *(v344 + v32++) = v110;
                    v107 = (v27[v109] | (1 << v108));
                    v27[v109] |= 1 << v108;
                  }
                }

                ++v108;
              }

              while (v108 != 8);
              v28[v107] += 0x10000;
            }

            v111 = v32;
            *(v6 + 30) = v32;
            *(v6 + 31) = v31;
            goto LABEL_116;
          }

          v32 = 0;
          v31 = 0;
          v330 = a2 + 143;
          v328 = -a3;
          v42 = vdupq_n_s32(0x9E3779B1);
          v43.i64[0] = 0xFF00FF00FF00FFLL;
          v43.i64[1] = 0xFF00FF00FF00FFLL;
          v44.i64[0] = 0x8000800080008;
          v44.i64[1] = 0x8000800080008;
          v33 = a3;
          v45 = 8;
          while (v330 + v32 <= v6[6])
          {
            v46 = 0;
            v47 = &v346;
            v48 = vnegq_s32(vdupq_n_s32(32 - *(v6 + 22)));
            do
            {
              v390 = *(v26 + v33 + v46);
              *v47 = vshlq_u32(vmulq_s32(vqtbl1q_s8(v390.val[0], xmmword_1003E23A0), v42), v48);
              v47[1] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v390.val[0], xmmword_1003E23B0), v42), v48);
              v47[2] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v390.val[0], xmmword_1003E23C0), v42), v48);
              v47[3] = vshlq_u32(vmulq_s32(vqtbl2q_s8(v390, xmmword_1003E23D0), v42), v48);
              v47 += 4;
              v49 = v46 >= 0x70;
              v46 += 16;
            }

            while (!v49);
            if (!v33)
            {
              *v27 = 255;
              v28[255] += 0x10000;
              *v344 = *v26;
              v32 = 8;
              v33 = 8;
            }

            v50 = v328 + v33;
            v51 = (&v347 + 2 * (v33 == 8));
            if (v33 == 8)
            {
              v52 = -15;
            }

            else
            {
              v52 = -16;
            }

            do
            {
              v53 = (v26 + v33);
              v54 = *v53;
              if (v53->i64[0] == *(v53->i64 - v45))
              {
                v27[v50 >> 3] = 0;
                *v28 += 0x10000;
                v55 = *v6;
                *(*v6 + 2 * *(v51 - 3)) = v33 + 1;
                *(v55 + 2 * *(v51 - 2)) = v33 + 2;
                *(v55 + 2 * *(v51 - 1)) = v33 + 3;
                *(v55 + 2 * v51[1]) = v33 + 5;
                *(v55 + 2 * v51[2]) = v33 + 6;
                *(v55 + 2 * v51[3]) = v33 + 7;
                *(v55 + 2 * *v51) = v33 + 4;
                *(v55 + 2 * *(v51 - 4)) = v33;
              }

              else
              {
                v56 = *v6;
                v58 = *(v51 - 4);
                v57 = *(v51 - 3);
                v59 = *(*v6 + 2 * v58);
                v60 = *v51;
                v61 = v51[1];
                v62 = v31;
                v63 = *(v56 + 2 * v60);
                v64 = v28;
                v65 = v26;
                v66 = v27;
                v67 = *(v51 - 2);
                v68 = *(v51 - 1);
                v69 = *(v56 + 2 * v67);
                v70 = *(v56 + 2 * v68);
                v71 = *(v56 + 2 * v57);
                v72 = *(v56 + 2 * v61);
                v341 = v45;
                v73 = v51[2];
                v74 = v51[3];
                v75 = *(v56 + 2 * v73);
                v76 = *(v56 + 2 * v74);
                *(v56 + 2 * v57) = v33 + 1;
                *(v56 + 2 * v67) = v33 + 2;
                *(v56 + 2 * v68) = v33 + 3;
                *(v56 + 2 * v61) = v33 + 5;
                *(v56 + 2 * v73) = v33 + 6;
                *(v56 + 2 * v74) = v33 + 7;
                *(v56 + 2 * v60) = v33 + 4;
                *(v56 + 2 * v58) = v33;
                v378.i16[0] = v33 - v59;
                v27 = v66;
                v26 = v65;
                v28 = v64;
                v378.i16[1] = v33 + 4 - v63;
                v378.i16[2] = v33 + 2 - v69;
                v378.i16[3] = v33 + 3 - v70;
                v378.i16[4] = v33 + 1 - v71;
                v378.i16[5] = v33 + 5 - v72;
                v378.i16[6] = v33 + 6 - v75;
                v378.i16[7] = v33 + 7 - v76;
                v77 = *(v53 - (v33 - v59));
                v78 = *(v53 - v378.u16[1]);
                v79 = *(v53 - v378.u16[2]);
                v80 = *(v53 - v378.u16[3]);
                v81 = *(v53 - v378.u16[4]);
                v82 = *(v53 - v378.u16[5]);
                v379 = v341;
                v83 = vmovn_s16(vcgtq_u16(v378, v43));
                v84 = vand_s8(v83, 0x202020202020202);
                v85 = vmvn_s8(v83);
                v86 = vextq_s8(v30, v30, 8uLL).u64[0];
                *v30.i8 = vsub_s8(v84, v85);
                v87 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v77, v54)))));
                v88 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v78, v54)))));
                v89 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v79, v54)))));
                v90 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v80, v54)))));
                v91 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v81, v54)))));
                v92 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(v82, v54)))));
                v93 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(v53 - v378.u16[6]), v54)))));
                v94 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(v53 - v378.u16[7]), v54)))));
                v95.i64[0] = vzip2q_s32(v87, v88).u64[0];
                v96.i64[0] = vzip2q_s32(v91, v92).u64[0];
                v95.i64[1] = __PAIR64__(v90.u32[2], v89.u32[2]);
                v96.i64[1] = __PAIR64__(v94.u32[2], v93.u32[2]);
                v87.i64[0] = vzip1q_s32(v87, v88).u64[0];
                v88.i64[0] = vzip1q_s32(v91, v92).u64[0];
                v87.i64[1] = __PAIR64__(v90.u32[0], v89.u32[0]);
                v88.i64[1] = __PAIR64__(v94.u32[0], v93.u32[0]);
                v97 = vorrq_s8(vshlq_n_s16(vuzp1q_s16(v95, v96), 8uLL), vorrq_s8(vuzp1q_s16(v87, v88), vcgtq_u16(v44, v378)));
                v98 = vcntq_s8(v97);
                v30.i64[1] = v86;
                v387 = 0uLL;
                v6 = a1;
                v99 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(v53 - v341), v54)))));
                LOBYTE(v56) = v99.i8[0];
                v100 = v99.i16[0] & 0xFF00 | (v99.i16[4] << 8);
                *&v387 = (v99.i16[0] | (v99.i16[4] << 8));
                v386 = v97;
                v99.i64[0] = vuzp2q_s8(v98, xmmword_1003E23A0).u64[0];
                *v97.i8 = vadd_s8(vshl_n_s8(vadd_s8(vmovn_s16(v98), *v30.i8), 2uLL), *v99.i8);
                v99.i32[0] = v56;
                *v99.i8 = vcnt_s8(*v99.i8);
                v99.i16[0] = vaddlv_u8(*v99.i8);
                LODWORD(v56) = v99.i32[0];
                v99.i32[0] = v100;
                *v99.i8 = vcnt_s8(*v99.i8);
                v99.i16[0] = vaddlv_u8(*v99.i8);
                v101 = vminvq_s16(vzip1q_s8(xmmword_1003E2F00, v97));
                if (v99.i32[0] + 4 * v56 <= v101 >> 8)
                {
                  v102 = 8;
                }

                else
                {
                  v102 = v101;
                }

                v45 = v378.u16[v102];
                v103 = v386.u8[2 * v102];
                *(v337 + v62) = v45;
                v382 = v30;
                v104 = v382.u8[v102];
                *(v344 + v32) = vqtbl1_s8(v54, qword_1003EB220[*&v103]);
                v27[v50 >> 3] = v103.i16[0] | (v104 << 8);
                v64[v103.i32[0] | (v104 << 8)] += 0x10000;
                v31 = v62 + v104;
                v105 = vcnt_s8(v103);
                v105.i16[0] = vaddlv_u8(v105);
                v32 += v105.i32[0];
              }

              v33 += 8;
              v50 += 8;
              v51 += 8;
              v49 = __CFADD__(v52++, 1);
            }

            while (!v49);
            v9 = v327;
            v5 = a2;
            if (v33 + 128 > v333)
            {
              v321 = v45;
              v10 = a3;
              goto LABEL_45;
            }
          }

          v257 = 0;
          v10 = a3;
          break;
        case 0:
          v18 = a1[5];
          v19 = a1[2];
          v20 = a1[3];
          v340 = a1[1];
          if (__n + a3 >= *(a1 + 14) - 16)
          {
            v21 = *(a1 + 14) - 16;
          }

          else
          {
            v21 = __n + a3;
          }

          v22 = 0uLL;
          v376 = 0u;
          v377 = 0u;
          v374 = 0u;
          v375 = 0u;
          v372 = 0u;
          v373 = 0u;
          v370 = 0u;
          v371 = 0u;
          v368 = 0u;
          v369 = 0u;
          v366 = 0u;
          v367 = 0u;
          v364 = 0u;
          v365 = 0u;
          v362 = 0u;
          v363 = 0u;
          v360 = 0u;
          v361 = 0u;
          v358 = 0u;
          v359 = 0u;
          v356 = 0u;
          v357 = 0u;
          v354 = 0u;
          v355 = 0u;
          v352 = 0u;
          v353 = 0u;
          v350 = 0u;
          v351 = 0u;
          v348 = 0u;
          v349 = 0u;
          v346 = 0u;
          v347 = 0u;
          v323 = 8;
          v383 = 0uLL;
          v336 = v21;
          if (a3 + 128 <= v21)
          {
            v24 = 0;
            v23 = 0;
            v335 = a2 + 143;
            v332 = -a3;
            v201 = vdupq_n_s32(0x9E3779B1);
            v202.i64[0] = 0xFF00FF00FF00FFLL;
            v202.i64[1] = 0xFF00FF00FF00FFLL;
            v203.i64[0] = 0x8000800080008;
            v203.i64[1] = 0x8000800080008;
            v25 = a3;
            v204 = 8;
            while (v335 + v24 <= v6[6])
            {
              v205 = 0;
              v206 = &v346;
              v207 = vnegq_s32(vdupq_n_s32(32 - *(v6 + 22)));
              do
              {
                v391 = *(v18 + v25 + v205);
                *v206 = vshlq_u32(vmulq_s32(vqtbl1q_s8(v391.val[0], xmmword_1003E23A0), v201), v207);
                v206[1] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v391.val[0], xmmword_1003E23B0), v201), v207);
                v208 = vshlq_u32(vmulq_s32(vqtbl2q_s8(v391, xmmword_1003E23D0), v201), v207);
                v206[2] = vshlq_u32(vmulq_s32(vqtbl1q_s8(v391.val[0], xmmword_1003E23C0), v201), v207);
                v206[3] = v208;
                v206 += 4;
                v49 = v205 >= 0x70;
                v205 += 16;
              }

              while (!v49);
              if (!v25)
              {
                *v19 = 255;
                v20[255] += 0x10000;
                *v344 = *v18;
                v24 = 8;
                v25 = 8;
              }

              v209 = v332 + v25;
              v210 = (&v347 + 2 * (v25 == 8));
              if (v25 == 8)
              {
                v211 = -15;
              }

              else
              {
                v211 = -16;
              }

              do
              {
                v212 = (v18 + v25);
                v213 = *v212;
                if (v212->i64[0] == *(v212->i64 - v204))
                {
                  v19[v209 >> 3] = 0;
                  *v20 += 0x10000;
                  v214 = *v6;
                  *(*v6 + 2 * *(v210 - 3)) = v25 + 1;
                  *(v214 + 2 * *(v210 - 2)) = v25 + 2;
                  *(v214 + 2 * *(v210 - 1)) = v25 + 3;
                  *(v214 + 2 * v210[1]) = v25 + 5;
                  *(v214 + 2 * v210[2]) = v25 + 6;
                  *(v214 + 2 * v210[3]) = v25 + 7;
                  *(v214 + 2 * *v210) = v25 + 4;
                  *(v214 + 2 * *(v210 - 4)) = v25;
                }

                else
                {
                  v215 = *v6;
                  v217 = *(v210 - 4);
                  v216 = *(v210 - 3);
                  v218 = *(*v6 + 2 * v217);
                  v219 = v20;
                  v220 = v18;
                  v221 = v23;
                  v222 = v19;
                  v224 = *v210;
                  v223 = v210[1];
                  v225 = *(v215 + 2 * v224);
                  v226 = *(v210 - 2);
                  v227 = *(v210 - 1);
                  v228 = *(v215 + 2 * v226);
                  v229 = *(v215 + 2 * v227);
                  v230 = *(v215 + 2 * v216);
                  v231 = *(v215 + 2 * v223);
                  v232 = v24;
                  v234 = v210[2];
                  v233 = v210[3];
                  v235 = *(v215 + 2 * v234);
                  v236 = *(v215 + 2 * v233);
                  *(v215 + 2 * v216) = v25 + 1;
                  *(v215 + 2 * v226) = v25 + 2;
                  *(v215 + 2 * v227) = v25 + 3;
                  *(v215 + 2 * v223) = v25 + 5;
                  *(v215 + 2 * v234) = v25 + 6;
                  *(v215 + 2 * v233) = v25 + 7;
                  *(v215 + 2 * v224) = v25 + 4;
                  *(v215 + 2 * v217) = v25;
                  v378.i16[0] = v25 - v218;
                  v19 = v222;
                  v237 = v221;
                  v18 = v220;
                  v20 = v219;
                  v378.i16[1] = v25 + 4 - v225;
                  v378.i16[2] = v25 + 2 - v228;
                  v378.i16[3] = v25 + 3 - v229;
                  v378.i16[4] = v25 + 1 - v230;
                  v378.i16[5] = v25 + 5 - v231;
                  v378.i16[6] = v25 + 6 - v235;
                  v378.i16[7] = v25 + 7 - v236;
                  v208.i64[0] = *(v212->i64 - (v25 - v218));
                  v238 = *&v212->i8[-v378.u16[5]];
                  v239 = *&v212->i8[-v378.u16[4]];
                  v240 = *&v212->i8[-v378.u16[3]];
                  v241.i64[0] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[6]], *v213.i8)))));
                  v241.i64[1] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[7]], *v213.i8)))));
                  v379 = v204;
                  v242 = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(v238, *v213.i8)))));
                  v243.i64[0] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(v239, *v213.i8)))));
                  v243.i64[1] = v242;
                  v244 = vmovn_s16(vcgtq_u16(v378, v202));
                  *v243.i8 = vqtbl1_s8(v243, 0xFFFF0800FFFFFFFFLL);
                  v243.i16[3] = vqtbl1_s8(v241, 0x800FFFFFFFFFFFFLL).i16[3];
                  v6 = a1;
                  v245.i64[0] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[2]], *v213.i8)))));
                  v245.i64[1] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(v240, *v213.i8)))));
                  v208.i16[0] = vzip1_s8(vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*v208.i8, *v213.i8))))), vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v378.u16[1]], *v213.i8)))))).u16[0];
                  v246 = vextq_s8(v22, v22, 8uLL).u64[0];
                  v208.i16[1] = vqtbl1_s8(v245, -4160684033).i16[1];
                  v208.i32[1] = v243.i32[1];
                  *v22.i8 = vsub_s8(vand_s8(v244, 0x202020202020202), vmvn_s8(v244));
                  v247 = vorr_s8(*v208.i8, vmovn_s16(vcgtq_u16(v203, v378)));
                  *v208.i8 = vadd_s8(vcnt_s8(v247), *v22.i8);
                  v22.i64[1] = v246;
                  v382 = v22;
                  v386.i64[1] = 0;
                  v386.i8[8] = vpaddl_u32(vpaddl_u16(vpaddl_u8(vbic_s8(0x8040201008040201, vceq_s8(*&v212->i8[-v204], *v213.i8)))));
                  *v386.i8 = v247;
                  v248 = vzip1q_s8(xmmword_1003E2F00, v208);
                  v208.i32[0] = v386.u8[8];
                  v249 = vcnt_s8(*v208.i8);
                  v249.i16[0] = vaddlv_u8(v249);
                  v250 = vminvq_s16(v248);
                  if (v249.i32[0] <= v250 >> 8)
                  {
                    v251 = 8;
                  }

                  else
                  {
                    v251 = v250;
                  }

                  v204 = v378.u16[v251];
                  v252 = v386.u8[v251];
                  v253 = v382.u8[v251];
                  *(v340 + v237) = v204;
                  v254 = vqtbl1_s8(v213, qword_1003EB220[v252]);
                  *(v344 + v232) = v254;
                  v19[v209 >> 3] = v252 | (v253 << 8);
                  v219[v252 | (v253 << 8)] += 0x10000;
                  v23 = v237 + v253;
                  v254.i32[0] = v252;
                  v255 = vcnt_s8(v254);
                  v255.i16[0] = vaddlv_u8(v255);
                  v24 = v255.i32[0] + v232;
                }

                v25 += 8;
                v209 += 8;
                v210 += 8;
                v49 = __CFADD__(v211++, 1);
              }

              while (!v49);
              v9 = v327;
              v5 = a2;
              v10 = a3;
              if (v25 + 128 > v336)
              {
                v323 = v204;
                goto LABEL_106;
              }
            }

            goto LABEL_107;
          }

          v23 = 0;
          v24 = 0;
          v25 = a3;
LABEL_106:
          v256 = ((v9 + 63) & 0xFFFFFFC0) + v10;
          if (v344 + v24 + v256 - v25 > v6[6])
          {
LABEL_107:
            v257 = 0;
            break;
          }

          for (; v25 < v256; v25 += 8)
          {
            v258 = 0;
            v259 = 0;
            v260 = (v25 - v10) >> 3;
            v19[v260] = 0;
            do
            {
              if (v25 + v259 < *(v6 + 14))
              {
                v261 = *(v18 + v25 + v259);
                if (v261 != *(v18 + v25 - v323 + v259))
                {
                  *(v344 + v24++) = v261;
                  v258 = (v19[v260] | (1 << v259));
                  v19[v260] |= 1 << v259;
                }
              }

              ++v259;
            }

            while (v259 != 8);
            v20[v258] += 0x10000;
          }

          v111 = v24;
          *(v6 + 30) = v24;
          *(v6 + 31) = v23;
          goto LABEL_116;
        default:
LABEL_174:
          v4 = &v8[v9];
          if (v4 <= v6[6])
          {
            memcpy(v8, (v6[5] + v10), v9);
          }

          else
          {
            v4 = 0;
          }

LABEL_177:
          *v5 = (v4 - v5) | (v9 << 24);
          *(v5 + 4) = v9 >> 8;
          return v4;
      }

      v8 = v325;
      if (v257)
      {
        v262 = *(v6 + 31);
        v263 = &v257[v262];
        if (&v257[v262] <= v6[6])
        {
          memcpy(v257, v6[1], v262);
          v264 = 0;
          v265 = 0;
          do
          {
            v266 = 0;
            v267 = vdupq_n_s32(65537 * v265 + 16777472);
            v268 = v6[4] + 2 * v264;
            do
            {
              v269 = (v268 + v266);
              *v269 = v267;
              v269[1] = v267;
              v266 += 32;
            }

            while (v266 < 0x1E1);
            ++v265;
            v264 += 256;
          }

          while (v265 <= *(v6 + 25));
          v270 = ((v9 + 63) >> 3) & 0x1FFFFFF8;
          v271 = v6[3];
          v273 = *(v6 + 26);
          v272 = *(v6 + 27);
          v274 = 0;
          if (!v273)
          {
            goto LABEL_147;
          }

          v275 = v6[3];
          do
          {
            v276 = *v275++;
            *(v271 + 4 * v274) = v276;
            if ((v276 & 0xFFFF0000) != 0)
            {
              ++v274;
            }

            --v273;
          }

          while (v273);
          if (v274 > v272)
          {
            v277 = 0;
            v10 = a3;
            do
            {
              v278 = v277;
              v279 = *(v271 + 4 * v277);
              v280 = v274 - 1;
              v281 = *(v271 + 4 * (v274 - 1));
              if (v279 > v281)
              {
                *(v271 + 4 * v277) = v281;
                *(v271 + 4 * v280) = v279;
                v281 = v279;
              }

              v282 = (v277 + v274) >> 1;
              v283 = *(v271 + 4 * v282);
              if (v283 > v281)
              {
                *(v271 + 4 * v282) = v281;
                *(v271 + 4 * v280) = v283;
                v283 = *(v271 + 4 * v282);
              }

              v284 = *(v271 + 4 * v277);
              if (v283 > v284)
              {
                *(v271 + 4 * v278) = v283;
                *(v271 + 4 * v282) = v284;
                v284 = *(v271 + 4 * v278);
              }

              v285 = v278 - 1;
              v286 = v274;
              while (1)
              {
                do
                {
                  v287 = *(v271 + 4 * ++v285);
                }

                while (v287 > v284);
                v288 = v286 + 1;
                do
                {
                  v289 = v288 - 2;
                  v290 = *(v271 + 4 * (v288 - 2));
                  --v288;
                }

                while (v290 < v284);
                v286 = v288 - 1;
                if (v285 >= v288 - 1)
                {
                  break;
                }

                *(v271 + 4 * v289) = v287;
                *(v271 + 4 * v285) = v290;
              }

              if (v288 < v272)
              {
                v277 = v288;
              }

              else
              {
                v274 = v288;
                v277 = v278;
              }
            }

            while (v272 != v288);
          }

          else
          {
LABEL_147:
            bzero((v271 + 4 * v274), 4 * (v272 - v274));
            v10 = a3;
          }

          *(v6 + 60) = 0;
          v291 = (v6 + 60);
          *(v6 + 68) = 0;
          *(v6 + 19) = 0;
          LODWORD(v292) = ((v9 + 63) >> 3) & 0x1FFFFFF8;
          v8 = v325;
          if (*(v6 + 27))
          {
            v293 = 0;
            v294 = 0;
            v295 = v6[3];
            LODWORD(v292) = ((v9 + 63) >> 3) & 0x1FFFFFF8;
            do
            {
              if (*(v295 + 4 * v294) < 0x10000u)
              {
                break;
              }

              v296 = *(v295 + 4 * v294);
              *(v291 + ((v293 >> 3) & 0x1FFFFFFE)) |= v296 << (v293 & 0xE);
              *(v6[4] + 2 * v296) = v294 + *(v6 + 25) + 1;
              v8 = v325;
              LODWORD(v292) = v292 - *(v295 + 4 * v294++ + 2);
              v293 += 10;
            }

            while (v294 < *(v6 + 27));
          }

          *(v6 + 32) = v292;
          v297 = v6[6];
          if (&v263[v292] <= v297)
          {
            if (v270)
            {
              v298 = 0;
              v299 = v6[4];
              v300 = ((v9 + 63) >> 3) & 0x1FFFFFF8;
              v302 = v6[1];
              v301 = v6[2];
              do
              {
                v303 = *(v299 + 2 * *v301);
                *v302++ = v303;
                v304 = *v301;
                v301 += 2;
                v263[v298] = v304;
                v298 += v303 >> 8;
                --v300;
              }

              while (v300);
              v292 = *(v6 + 32);
              v297 = v6[6];
              v8 = v325;
            }

            else
            {
              v292 = v292;
            }

            v305 = &v263[v292];
            if (&v263[v292 + (v270 >> 1)] <= v297)
            {
              if ((v6[10] & 4) != 0)
              {
                v306 = v6[1];
              }

              else
              {
                v306 = v6[2];
                v270 = sub_10014AC30(v306, v6[1], v270);
              }

              if (v270 >= 0x20)
              {
                v308 = 32;
                v309 = v306;
                v310 = v305;
                do
                {
                  v388 = vld2q_s8(v309);
                  v309 += 32;
                  *v310++ = vorrq_s8(vshlq_n_s8(v388.val[1], 4uLL), v388.val[0]);
                  v308 += 32;
                }

                while (v308 <= v270);
                v307 = v270 & 0xFFFFFFE0;
              }

              else
              {
                v307 = 0;
              }

              bzero(&v305->i8[v307 >> 1], (v270 + 1 - v307) >> 1);
              if (v307 < v270)
              {
                v311 = v270 - v307;
                v312 = 4 * v307;
                v313 = (v306 + v307);
                do
                {
                  v314 = *v313++;
                  *(v305->i32 + ((v312 >> 3) & 0x1FFFFFFE)) |= v314 << (v312 & 0xC);
                  v312 += 4;
                  --v311;
                }

                while (v311);
              }

              v315 = &v305->i8[(v270 + 1) >> 1];
              v6 = a1;
              v4 = v315 + 17;
              v10 = a3;
              v8 = v325;
              if ((v315 + 17) <= a1[6])
              {
                v316 = *v291;
                v315[16] = *(v291 + 16);
                *v315 = v316;
                v317 = (*(a1 + 30) + 15);
                v318 = (*(a1 + 31) + v317);
                v319 = (*(a1 + 32) + v318);
                *(v5 + 6) = v317 + (v318 << 24) + (v319 << 48);
                *(v5 + 14) = BYTE2(v319);
                if (&v4[-v5] < v9 + 6)
                {
                  goto LABEL_177;
                }
              }
            }
          }
        }
      }

      goto LABEL_174;
    }
  }

  return v4;
}

uint64_t lz4_decode_asm(int8x16_t **a1, unint64_t a2, unint64_t a3, unsigned __int8 **a4, unint64_t a5)
{
  v5 = *a4;
  v6 = *a1;
  while (1)
  {
    v7 = v6;
    v8 = v5;
    if (v5 >= a5 || v6 >= a3)
    {
      break;
    }

    v10 = *v5;
    v9 = v5 + 1;
    v11 = v10 >> 4;
    v12 = (v10 & 0xF) + 4;
    if (v11 > 0xE)
    {
      while (v9 < a5)
      {
        v13 = *v9;
        v9 = (v9 + 1);
        v11 += v13;
        if (v13 != 255)
        {
          v14 = v9;
          v15 = v6;
          v16 = (v9 + v11);
          v17 = (v6 + v11);
          if (v16 < a5 && v17 < a3)
          {
            v19 = *v14;
            v20 = v14[1];
            v18 = v14 + 2;
            *v15 = v19;
            v15[1] = v20;
            v21 = v15 + 2;
            do
            {
              v22 = *v18;
              v23 = v18[1];
              v18 += 2;
              *v21 = v22;
              v21[1] = v23;
              v21 += 2;
            }

            while (v17 > v21);
            goto LABEL_13;
          }

          goto LABEL_36;
        }
      }

      break;
    }

    *v6 = *v9;
    v16 = (v9 + v11);
    v17 = (v6 + v11);
LABEL_13:
    if (v16 >= a5)
    {
      break;
    }

    v25 = *v16;
    v5 = (v16 + 1);
    v24 = v25;
    if (!v25 || (v26 = (v17 - v24), v17 - v24 < a2))
    {
      v47 = -1;
      goto LABEL_37;
    }

    v27 = v17;
    v6 = (v17 + v12);
    if (v12 == 19)
    {
      while (v5 < a5)
      {
        v28 = *v5++;
        v6 = (v6 + v28);
        if (v28 != 255)
        {
          if (v6 >= a3)
          {
            goto LABEL_36;
          }

          goto LABEL_24;
        }
      }

      break;
    }

    if (v12 > 0x10)
    {
LABEL_24:
      if (v24 > 0x1F)
      {
        v36 = *v26;
        v35 = v26 + 1;
        *v27 = v36;
        v37 = v27 + 1;
        do
        {
          v38 = *v35;
          v39 = v35[1];
          v35 += 2;
          *v37 = v38;
          v37[1] = v39;
          v37 += 2;
        }

        while (v6 > v37);
      }

      else if (v24 > 0xF)
      {
        v41 = *v26;
        v40 = v26 + 1;
        *v27 = v41;
        v42 = v27 + 1;
        do
        {
          v44 = *v40;
          v43 = v40 + 1;
          *v42 = v44;
          v45 = v42 + 1;
          v46 = *v43;
          v40 = v43 + 1;
          *v45 = v46;
          v42 = v45 + 1;
        }

        while (v6 > v42);
      }

      else
      {
        v29 = &qword_100147180[4 * v24];
        v30 = vqtbl1q_s8(*v26, *v29);
        v31 = vqtbl1q_s8(*v26, v29[1]);
        v32 = *(qword_100147380 + v24);
        *v27 = v30;
        v27[1] = v31;
        v33 = (v27 + v32);
        do
        {
          *v33 = v30;
          v33[1] = v31;
          v34 = (v33 + v32);
          *v34 = v30;
          v34[1] = v31;
          v33 = (v34 + v32);
        }

        while (v6 > v33);
      }
    }

    else if (v24 <= 0xF)
    {
      *v27 = vqtbl1q_s8(*v26, *&qword_100147180[4 * v24]);
    }

    else
    {
      *v27 = *v26;
    }
  }

LABEL_36:
  v47 = 0;
LABEL_37:
  *a4 = v8;
  *a1 = v7;
  return v47;
}

double sub_100147390(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001473A0(uint64_t a1, uint64_t a2)
{
  sub_100166DB4(a1, *(a2 + 16));
  *(a2 + 16) = 0;
  result = sub_100166DB4(a1, *(a2 + 24));
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1001473E0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v11 = result;
  if (!a3)
  {
    v19 = (result + 24);
    if (*(result + 24))
    {
      return result;
    }

    v20 = 0;
    goto LABEL_40;
  }

  v15 = 0;
  v16 = a2;
  v17 = a3;
  do
  {
    v18 = *v16;
    v16 += 4;
    v15 += v18;
    --v17;
  }

  while (v17);
  if (v15)
  {
    result = sub_100166C7C(result);
  }

  else
  {
    result = 0;
  }

  if (*(v11 + 24))
  {
    return result;
  }

  v580 = result;
  v537 = a8;
  v542 = v11;
  v551 = (v11 + 24);
  v21 = 0;
  v22 = a6 + 1;
  v23 = a3;
  v24 = (a2 + 4);
  do
  {
    v25 = a5 & a6;
    v26 = *(v24 - 1);
    if (v25 + v26 > a6)
    {
      v27 = v22 - v25;
      result = memcpy(&v580[v21], (a4 + v25), v22 - v25);
      v25 = 0;
      v21 += v27;
      v26 -= v27;
    }

    if (v26)
    {
      result = memcpy(&v580[v21], (a4 + v25), v26);
      v21 += v26;
    }

    v28 = *v24;
    v24 += 4;
    a5 = v26 + v25 + (v28 & 0x1FFFFFF);
    --v23;
  }

  while (v23);
  if (v15 >> 7 <= 0x1A8)
  {
    v29 = v15 / 0x220u + 1;
  }

  else
  {
    v29 = 100;
  }

  if (!v15)
  {
    a8 = v537;
    v11 = v542;
    v19 = v551;
    v20 = v580;
LABEL_40:
    *a8 = 1;
    goto LABEL_41;
  }

  v11 = v542;
  v20 = v580;
  if (v15 > 0x7F)
  {
    result = sub_100166C7C(v542);
    if (*(v542 + 24))
    {
      return result;
    }

    v556 = result;
    v62 = result;
    v63 = v29;
    do
    {
      bzero(v62, 0x408uLL);
      v62[129] = 0x7FF0000000000000;
      v62 += 130;
      --v63;
    }

    while (v63);
    v64 = 0;
    LODWORD(v65) = 7;
    do
    {
      v66 = v64 * v15 / v29;
      if (v64)
      {
        v65 = (16807 * v65);
        v66 += v65 % (v15 / v29);
      }

      v67 = 0;
      if (v66 + 70 >= v15)
      {
        v68 = v15 - 71;
      }

      else
      {
        v68 = v66;
      }

      v69 = &v556[1040 * v64];
      v70 = &v580[v68];
      *(v69 + 128) += 70;
      do
      {
        ++*&v69[4 * v70[v67++]];
      }

      while (v67 != 70);
      ++v64;
    }

    while (v64 != v29);
    v71 = v29 + 2 * v15 / 0x46 + 99;
    v72 = v71 / v29 * v29;
    if (v71 != v71 % v29)
    {
      v73 = 0;
      LODWORD(v74) = 7;
      do
      {
        bzero(v585, 0x408uLL);
        v74 = (16807 * v74);
        v75 = &v580[v74 % (v15 - 69)];
        v76 = -70;
        do
        {
          v77 = *v75++;
          ++*(v585 + v77);
          v78 = __CFADD__(v76++, 1);
        }

        while (!v78);
        v79 = 0;
        v80 = 0;
        v81 = &v556[1040 * (v73 % v29)];
        *(v81 + 128) += 70;
        do
        {
          *&v81[4 * v80] = vaddq_s32(*&v81[4 * v80], *&v585[v79]);
          v80 += 4;
          v79 += 2;
        }

        while (v79 != 128);
        ++v73;
      }

      while (v73 < v72);
    }

    v82 = sub_100166C7C(v542);
    v83 = sub_100166C7C(v542);
    v84 = sub_100166C7C(v542);
    v85 = ((v29 + 7) >> 3) * v15 ? sub_100166C7C(v542) : 0;
    v20 = v580;
    result = sub_100166C7C(v542);
    v128 = *(a7 + 4) <= 10 ? 3 : 10;
    if (*(v542 + 24))
    {
      return result;
    }

    __b = result;
    v518 = v85;
    v129 = 0;
    __src = v82 - 2;
    v514 = v82;
    v526 = v128;
    do
    {
      v546 = v129;
      if (v29 > 1)
      {
        v523 = (v29 + 7) >> 3;
        bzero(v83, v29 << 11);
        v132 = 0;
        v133 = (v556 + 1024);
        do
        {
          v134 = *v133;
          if (v134 > 0xFF)
          {
            v135 = log2(v134);
          }

          else
          {
            v135 = dbl_1003EDA70[v134];
          }

          v133 += 260;
          *&v83[8 * v132++] = v135;
        }

        while (v29 != v132);
        v136 = &v83[2040 * v29];
        v137 = (v556 + 1020);
        v138 = 256;
        do
        {
          v139 = 0;
          --v138;
          v140 = v137;
          do
          {
            v141 = *&v83[8 * v139];
            v142 = *v140;
            if (v142)
            {
              if (v142 > 0xFF)
              {
                v143 = log2(v142);
              }

              else
              {
                v143 = dbl_1003EDA70[v142];
              }
            }

            else
            {
              v143 = -2.0;
            }

            v140 += 260;
            *&v136[8 * v139++] = v141 - v143;
          }

          while (v29 != v139);
          v136 -= 8 * v29;
          --v137;
        }

        while (v138);
        bzero(v84, 8 * v29);
        bzero(v518, v523 * v15);
        v144 = 0;
        v20 = v580;
        v82 = v514;
        do
        {
          v145 = 0;
          v146 = &v83[8 * v29 * v580[v144]];
          v147 = 1.0e99;
          do
          {
            v148 = *&v146[8 * v145] + *(v84 + v145);
            *(v84 + v145) = v148;
            if (v148 < v147)
            {
              *(v514 + v144) = v145;
              v147 = v148;
            }

            ++v145;
          }

          while (v29 != v145);
          v149 = 28.1;
          if (v144 <= 0x7CF)
          {
            v149 = (v144 * 0.07 / 2000.0 + 0.77) * 28.1;
          }

          for (i = 0; i != v29; ++i)
          {
            v151 = *(v84 + i) - v147;
            *(v84 + i) = v151;
            if (v151 >= v149)
            {
              *(v84 + i) = v149;
              v518[v144 * v523 + (i >> 3)] |= 1 << (i & 7);
            }
          }

          ++v144;
        }

        while (v144 != v15);
        v152 = *(v514 + v15 - 1);
        v153 = &v518[(v15 - 2) * v523];
        v154 = v15;
        v130 = 1;
        v131 = __b;
        do
        {
          if ((v153[v152 >> 3] >> (v152 & 7)))
          {
            if (v152 != __src[v154])
            {
              ++v130;
            }

            v152 = __src[v154];
          }

          v153 -= v523;
          __src[v154--] = v152;
        }

        while (v154 != 1);
      }

      else
      {
        bzero(v82, v15);
        v130 = 1;
        v131 = __b;
      }

      if (v29)
      {
        memset_pattern16(v131, &unk_1003E2F50, 2 * v29);
      }

      v155 = 0;
      v156 = 0;
      do
      {
        v157 = v82[v155];
        if (*(v131 + v157) == 256)
        {
          *(v131 + v157) = v156++;
        }

        ++v155;
      }

      while (v15 != v155);
      for (j = 0; j != v15; ++j)
      {
        v82[j] = *(v131 + v82[j]);
      }

      v29 = v156;
      if (v156)
      {
        v159 = v556;
        v160 = v156;
        do
        {
          bzero(v159, 0x408uLL);
          v159[129] = 0x7FF0000000000000;
          v159 += 130;
          --v160;
        }

        while (v160);
      }

      for (k = 0; k != v15; ++k)
      {
        v162 = &v556[1040 * v82[k]];
        ++*&v162[4 * *(v20 + k)];
        ++*(v162 + 128);
      }

      v129 = v546 + 1;
    }

    while (v546 + 1 != v526);
    sub_100166DB4(v542, v83);
    sub_100166DB4(v542, v84);
    sub_100166DB4(v542, v518);
    sub_100166DB4(v542, __b);
    sub_100166DB4(v542, v556);
    v524 = v130;
    if (v130)
    {
      v487 = sub_100166C7C(v542);
      v163 = sub_100166C7C(v542);
      v164 = 16 * v130 + 1008;
      v165 = v164 >> 6;
      if (v164 >= 0x40)
      {
        v167 = sub_100166C7C(v542);
        v166 = sub_100166C7C(v542);
      }

      else
      {
        v166 = 0;
        v167 = 0;
      }

      v490 = sub_100166C7C(v542);
    }

    else
    {
      v167 = sub_100166C7C(v542);
      v166 = sub_100166C7C(v542);
      v163 = 0;
      v487 = 0;
      v490 = 0;
      v165 = 15;
    }

    result = sub_100166C7C(v542);
    v488 = result;
    v649 = 0u;
    v648 = 0u;
    v647 = 0u;
    v646 = 0u;
    v645 = 0u;
    v644 = 0u;
    v643 = 0u;
    v642 = 0u;
    v641 = 0u;
    v640 = 0u;
    v639 = 0u;
    v638 = 0u;
    v637 = 0u;
    v636 = 0u;
    v635 = 0u;
    v634 = 0u;
    v633 = 0u;
    v632 = 0u;
    v631 = 0u;
    v630 = 0u;
    v629 = 0u;
    v628 = 0u;
    v627 = 0u;
    v626 = 0u;
    v625 = 0u;
    v624 = 0u;
    v623 = 0u;
    v622 = 0u;
    v621 = 0u;
    v620 = 0u;
    v619 = 0u;
    v618 = 0u;
    v617 = 0u;
    v616 = 0u;
    v615 = 0u;
    v614 = 0u;
    v613 = 0u;
    v612 = 0u;
    v611 = 0u;
    v610 = 0u;
    v609 = 0u;
    v608 = 0u;
    v607 = 0u;
    v606 = 0u;
    v605 = 0u;
    v604 = 0u;
    v603 = 0u;
    v602 = 0u;
    v601 = 0u;
    v600 = 0u;
    v599 = 0u;
    v598 = 0u;
    v597 = 0u;
    v596 = 0u;
    v595 = 0u;
    v594 = 0u;
    v593 = 0u;
    v592 = 0u;
    v591 = 0u;
    v590 = 0u;
    v589 = 0u;
    v588 = 0u;
    v587 = 0u;
    v586 = 0u;
    v19 = v551;
    if (*(v542 + 24))
    {
      goto LABEL_209;
    }

    bzero(v163, 4 * v130);
    v168 = 0;
    v169 = (v514 + 1);
    do
    {
      ++v163[v168];
      if (v15 == 1 || *(v169 - 1) != *v169)
      {
        ++v168;
      }

      ++v169;
      --v15;
    }

    while (v15);
    if (v130)
    {
      v527 = 0;
      __ba = 0;
      v557 = 0;
      v507 = v165;
      v511 = 0;
      v519 = 0;
      v547 = v487;
      v170 = v130;
      v171 = v166;
      v172 = v167;
      v173 = v490;
      while (1)
      {
        __srca = v172;
        v499 = v171;
        v503 = v165;
        v174 = 0;
        v492 = v170 - 64;
        if (v170 >= 0x40)
        {
          v170 = 64;
        }

        v175 = v170 <= 1 ? 1 : v170;
        v176 = v511;
        do
        {
          v177 = (v173 + 1040 * v174);
          bzero(v177, 0x408uLL);
          v177[129] = 0x7FF0000000000000;
          if (v163[&v557[v174]])
          {
            v178 = 0;
            do
            {
              ++*(v177 + v176[v20 + v178++]);
              v177[128] = v178;
            }

            while (v178 < v163[&v557[v174]]);
            v176 += v178;
          }

          sub_10015B22C(v173 + 1040 * v174);
          v177[129] = v179;
          *(&v618 + v174) = v174;
          *(&v602 + v174) = v174;
          *(&v634 + v174++) = 1;
        }

        while (v174 != v175);
        v180 = v524 - v557 >= 0x40 ? 64 : v524 - v557;
        result = sub_10015C0F4(v173, &v634, &v602, &v618, v488, v180, v180, 0x40uLL, 0x800uLL);
        v573 = result;
        v511 = v176;
        if (v503 >= __ba + result)
        {
          v167 = __srca;
          v182 = v499;
          v183 = v503;
        }

        else
        {
          if (v503)
          {
            v181 = v503;
          }

          else
          {
            v181 = __ba + result;
          }

          v182 = v499;
          do
          {
            v183 = v181;
            v181 *= 2;
          }

          while (v183 < __ba + result);
          v184 = sub_100166C7C(v542);
          v167 = v184;
          if (*(v542 + 24))
          {
            v185 = 1;
          }

          else
          {
            v185 = v503 == 0;
          }

          if (!v185)
          {
            memcpy(v184, __srca, 1040 * v503);
          }

          sub_100166DB4(v542, __srca);
          result = v573;
        }

        if (v507 >= result + v527)
        {
          v187 = v507;
          v166 = v182;
          v19 = v551;
        }

        else
        {
          if (v507)
          {
            v186 = v507;
          }

          else
          {
            v186 = result + v527;
          }

          do
          {
            v187 = v186;
            v186 *= 2;
          }

          while (v187 < result + v527);
          v188 = sub_100166C7C(v542);
          v166 = v188;
          if (*(v542 + 24))
          {
            v189 = 1;
          }

          else
          {
            v189 = v507 == 0;
          }

          if (!v189)
          {
            memcpy(v188, v182, 4 * v507);
          }

          sub_100166DB4(v542, v182);
          v19 = v551;
          result = v573;
        }

        if (*v19)
        {
          goto LABEL_209;
        }

        if (result)
        {
          v190 = 0;
          v504 = v166;
          v191 = (v167 + 1040 * __ba);
          v192 = v166 + 4 * v527;
          do
          {
            v193 = *(&v618 + v190);
            memcpy(v191, (v490 + 1040 * v193), 0x410uLL);
            result = v573;
            *(v192 + 4 * v190) = *(&v634 + v193);
            *(&v586 + *(&v618 + v190)) = v190;
            v190 = v190 + 1;
            v191 += 1040;
          }

          while (v573 != v190);
          __ba = v190 + __ba;
          v527 += v190;
          v20 = v580;
          v166 = v504;
        }

        v194 = &v602;
        v195 = v547;
        do
        {
          v196 = *v194++;
          *v195++ = *(&v586 + v196) + v519;
          --v175;
        }

        while (v175);
        v519 += result;
        v547 += 64;
        v165 = v183;
        v171 = v166;
        v507 = v187;
        v172 = v167;
        v557 += 64;
        v173 = v490;
        v170 = v492;
        if (v557 >= v524)
        {
          goto LABEL_323;
        }
      }
    }

    v519 = 0;
    v173 = v490;
LABEL_323:
    v239 = v542;
    result = sub_100166DB4(v542, v173);
    v240 = v519;
    if (v519 << 6 >= (v519 >> 1) * v519)
    {
      v241 = (v519 >> 1) * v519;
    }

    else
    {
      v241 = v519 << 6;
    }

    if (v241 < 0x801)
    {
      v19 = v551;
    }

    else
    {
      sub_100166DB4(v542, v488);
      result = sub_100166C7C(v542);
      v488 = result;
      v19 = v551;
      if (*(v542 + 24))
      {
        goto LABEL_209;
      }

      v239 = v542;
      v240 = v519;
    }

    if (v240)
    {
      result = sub_100166C7C(v239);
      v19 = v551;
      v574 = result;
      if (*(v239 + 24))
      {
        goto LABEL_209;
      }

      v242 = 0;
      v243 = v524;
      v244 = vdupq_n_s64(v519 - 1);
      v245 = xmmword_10037C710;
      v246 = xmmword_1003772E0;
      v247 = (result + 8);
      v248 = vdupq_n_s64(4uLL);
      do
      {
        v249 = vmovn_s64(vcgeq_u64(v244, v246));
        if (vuzp1_s16(v249, *v244.i8).u8[0])
        {
          *(v247 - 2) = v242;
        }

        if (vuzp1_s16(v249, *&v244).i8[2])
        {
          *(v247 - 1) = v242 + 1;
        }

        if (vuzp1_s16(*&v244, vmovn_s64(vcgeq_u64(v244, *&v245))).i32[1])
        {
          *v247 = v242 + 2;
          v247[1] = v242 + 3;
        }

        v242 += 4;
        v245 = vaddq_s64(v245, v248);
        v246 = vaddq_s64(v246, v248);
        v247 += 4;
      }

      while (((v519 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v242);
      v250 = v542;
    }

    else
    {
      if (*v19)
      {
        goto LABEL_209;
      }

      v574 = 0;
      v250 = v542;
      v243 = v524;
    }

    v559 = sub_10015C0F4(v167, v166, v487, v574, v488, v519, v243, 0x100uLL, v241);
    sub_100166DB4(v250, v488);
    result = sub_100166DB4(v250, v166);
    if (v519)
    {
      result = sub_100166C7C(v250);
      v19 = v551;
      if (*(v250 + 24))
      {
        goto LABEL_209;
      }

      v275 = result;
      v276 = v167;
      memset(result, 255, 4 * v519);
    }

    else
    {
      v19 = v551;
      if (*v551)
      {
        goto LABEL_209;
      }

      v276 = v167;
      v275 = 0;
    }

    v548 = v275;
    if (v524)
    {
      __bd = 0;
      v304 = 0;
      v305 = 0;
      do
      {
        bzero(v585, 0x408uLL);
        v585[129] = 0x7FF0000000000000;
        if (v163[v304])
        {
          v306 = 0;
          do
          {
            ++*(v585 + *(v20 + v305 + v306++));
          }

          while (v306 < v163[v304]);
          v585[128] = v306;
          v305 += v306;
        }

        v307 = v304 - 1;
        if (!v304)
        {
          v307 = 0;
        }

        v308 = v487[v307];
        v309 = sub_10015C3D0(v585, v276 + 1040 * v308);
        v310 = v559;
        if (v559)
        {
          v311 = v309;
          v312 = v574;
          do
          {
            v313 = sub_10015C3D0(v585, v276 + 1040 * *v312);
            if (v313 < v311)
            {
              v308 = *v312;
              v311 = v313;
            }

            ++v312;
            --v310;
          }

          while (v310);
        }

        v487[v304] = v308;
        v275 = v548;
        if (*(v548 + 4 * v308) == -1)
        {
          *(v548 + 4 * v308) = __bd++;
        }

        ++v304;
      }

      while (v304 != v524);
    }

    sub_100166DB4(v542, v574);
    result = sub_100166DB4(v542, v276);
    v314 = *(v537 + 4);
    v315 = v524;
    if (v314 < v524)
    {
      if (!v314)
      {
        v314 = v524;
      }

      do
      {
        v316 = v314;
        v314 *= 2;
      }

      while (v316 < v524);
      v317 = sub_100166C7C(v542);
      v318 = v317;
      if (!*(v542 + 24))
      {
        v319 = *(v537 + 4);
        if (v319)
        {
          memcpy(v317, *(v537 + 2), v319);
        }
      }

      result = sub_100166DB4(v542, *(v537 + 2));
      *(v537 + 2) = v318;
      *(v537 + 4) = v316;
      v315 = v524;
      v275 = v548;
    }

    v320 = *(v537 + 5);
    v78 = v320 >= v315;
    v19 = v551;
    if (!v78)
    {
      if (!v320)
      {
        v320 = v524;
      }

      do
      {
        v321 = v320;
        v320 *= 2;
      }

      while (v321 < v524);
      v322 = sub_100166C7C(v542);
      v323 = v322;
      if (!*(v542 + 24))
      {
        v324 = *(v537 + 5);
        if (v324)
        {
          memcpy(v322, *(v537 + 3), 4 * v324);
        }
      }

      result = sub_100166DB4(v542, *(v537 + 3));
      *(v537 + 3) = v323;
      *(v537 + 5) = v321;
      v19 = v551;
    }

    if (!*v19)
    {
      v325 = v524;
      if (v524)
      {
        v326 = 0;
        v327 = 0;
        v328 = 0;
        v329 = v487 + 1;
        v330 = v163;
        v331 = v537;
        do
        {
          v332 = *v330++;
          v328 += v332;
          v333 = *(v329 - 1);
          if (v325 == 1 || v333 != *v329)
          {
            v334 = *(v275 + 4 * v333);
            *(*(v537 + 2) + v327) = v334;
            *(*(v537 + 3) + 4 * v327) = v328;
            if (v326 <= v334)
            {
              v326 = v334;
            }

            ++v327;
            v328 = 0;
          }

          ++v329;
          --v325;
        }

        while (v325);
        v335 = v326 + 1;
      }

      else
      {
        v327 = 0;
        v335 = 1;
        v331 = v537;
      }

      *v331 = v335;
      v331[1] = v327;
      v11 = v542;
      sub_100166DB4(v542, v275);
      sub_100166DB4(v542, v163);
      result = sub_100166DB4(v542, v487);
      if (!*(v542 + 24))
      {
        result = sub_100166DB4(v542, v514);
      }

      v19 = v551;
      v20 = v580;
      goto LABEL_41;
    }

LABEL_209:
    v11 = v542;
    goto LABEL_41;
  }

  v30 = *(v537 + 4);
  v31 = *(v537 + 1) + 1;
  if (v30 < v31)
  {
    if (!v30)
    {
      v30 = *(v537 + 1) + 1;
    }

    do
    {
      v32 = v30;
      v30 *= 2;
    }

    while (v32 < v31);
    v33 = sub_100166C7C(v542);
    v34 = v33;
    if (!*(v542 + 24))
    {
      v35 = *(v537 + 4);
      if (v35)
      {
        memcpy(v33, *(v537 + 2), v35);
      }
    }

    result = sub_100166DB4(v542, *(v537 + 2));
    *(v537 + 2) = v34;
    *(v537 + 4) = v32;
    v31 = *(v537 + 1) + 1;
  }

  v36 = *(v537 + 5);
  if (v36 < v31)
  {
    if (!v36)
    {
      v36 = v31;
    }

    do
    {
      v37 = v36;
      v36 *= 2;
    }

    while (v37 < v31);
    v38 = sub_100166C7C(v542);
    v39 = v38;
    if (!*(v542 + 24))
    {
      v40 = *(v537 + 5);
      if (v40)
      {
        memcpy(v38, *(v537 + 3), 4 * v40);
      }
    }

    result = sub_100166DB4(v542, *(v537 + 3));
    *(v537 + 3) = v39;
    *(v537 + 5) = v37;
  }

  if (*v551)
  {
    return result;
  }

  *v537 = 1;
  *(*(v537 + 2) + *(v537 + 1)) = 0;
  v41 = *(v537 + 1);
  *(*(v537 + 3) + 4 * v41) = v15;
  v42 = v41 + 1;
  v19 = v551;
  *(v537 + 1) = v42;
LABEL_41:
  if (*v19)
  {
    return result;
  }

  v552 = v19;
  result = sub_100166DB4(v11, v20);
  if (!a3)
  {
    if (*v552)
    {
      return result;
    }

    *a9 = 1;
    result = sub_100166DB4(v11, 0);
    v86 = 0;
    goto LABEL_92;
  }

  result = sub_100166C7C(v11);
  if (*(v11 + 24))
  {
    return result;
  }

  v43 = result;
  v44 = 0;
  v45 = (a2 + 12);
  do
  {
    v46 = *v45;
    v45 += 8;
    *(result + 2 * v44++) = v46;
  }

  while (a3 != v44);
  if (a3 <= 0x6783)
  {
    v47 = a3 / 0x212u + 1;
  }

  else
  {
    v47 = 50;
  }

  if (a3 <= 0x7F)
  {
    v48 = *(a9 + 32);
    v49 = *(a9 + 8) + 1;
    if (v48 < v49)
    {
      if (!v48)
      {
        v48 = *(a9 + 8) + 1;
      }

      do
      {
        v50 = v48;
        v48 *= 2;
      }

      while (v50 < v49);
      v51 = sub_100166C7C(v11);
      v52 = v51;
      if (!*(v11 + 24))
      {
        v53 = *(a9 + 32);
        if (v53)
        {
          memcpy(v51, *(a9 + 16), v53);
        }
      }

      result = sub_100166DB4(v11, *(a9 + 16));
      *(a9 + 16) = v52;
      *(a9 + 32) = v50;
      v49 = *(a9 + 8) + 1;
    }

    v54 = *(a9 + 40);
    if (v54 < v49)
    {
      if (!v54)
      {
        v54 = v49;
      }

      do
      {
        v55 = v54;
        v54 *= 2;
      }

      while (v55 < v49);
      v56 = sub_100166C7C(v11);
      v57 = v56;
      if (!*(v11 + 24))
      {
        v58 = *(a9 + 40);
        if (v58)
        {
          memcpy(v56, *(a9 + 24), 4 * v58);
        }
      }

      result = sub_100166DB4(v11, *(a9 + 24));
      *(a9 + 24) = v57;
      *(a9 + 40) = v55;
    }

    if (*v552)
    {
      return result;
    }

    *a9 = 1;
    *(*(a9 + 16) + *(a9 + 8)) = 0;
    v59 = *(a9 + 8);
    *(*(a9 + 24) + 4 * v59) = a3;
    v60 = v59 + 1;
    v61 = v552;
    *(a9 + 8) = v60;
    goto LABEL_373;
  }

  result = sub_100166C7C(v11);
  if (*(v11 + 24))
  {
    return result;
  }

  v543 = v11;
  v572 = result;
  v105 = result;
  v106 = v47;
  do
  {
    bzero(v105, 0xB08uLL);
    v105[353] = 0x7FF0000000000000;
    v105 += 354;
    --v106;
  }

  while (v106);
  v107 = 0;
  LODWORD(v108) = 7;
  do
  {
    v109 = v107 * a3 / v47;
    if (v107)
    {
      v108 = (16807 * v108);
      v109 += v108 % (a3 / v47);
    }

    v110 = 0;
    if (v109 + 40 >= a3)
    {
      v111 = a3 - 41;
    }

    else
    {
      v111 = v109;
    }

    v112 = &v572[2832 * v107];
    v113 = v43 + 2 * v111;
    *(v112 + 352) += 40;
    do
    {
      ++*&v112[4 * *(v113 + v110)];
      v110 += 2;
    }

    while (v110 != 80);
    ++v107;
  }

  while (v107 != v47);
  v545 = v43;
  v114 = v47 + 2 * a3 / 0x28 + 99;
  v115 = v114 / v47 * v47;
  if (v114 != v114 % v47)
  {
    v116 = 0;
    LODWORD(v117) = 7;
    do
    {
      bzero(v585, 0xB08uLL);
      v117 = (16807 * v117);
      v118 = (v43 + 2 * (v117 % (a3 - 39)));
      v119 = -40;
      do
      {
        v120 = *v118++;
        ++*(v585 + v120);
        v78 = __CFADD__(v119++, 1);
      }

      while (!v78);
      v121 = 0;
      v122 = 0;
      v123 = &v572[2832 * (v116 % v47)];
      *(v123 + 352) += 40;
      do
      {
        *&v123[4 * v122] = vaddq_s32(*&v123[4 * v122], *&v585[v121]);
        v122 += 4;
        v121 += 2;
      }

      while (v121 != 352);
      ++v116;
    }

    while (v116 < v115);
  }

  v124 = sub_100166C7C(v543);
  v125 = sub_100166C7C(v543);
  v126 = sub_100166C7C(v543);
  v127 = ((v47 + 7) >> 3) * a3 ? sub_100166C7C(v543) : 0;
  result = sub_100166C7C(v543);
  v197 = *(a7 + 4) <= 10 ? 3 : 10;
  if (*(v543 + 24))
  {
    return result;
  }

  v538 = result;
  v198 = 0;
  v199 = a3;
  v520 = v127;
  v500 = (v124 - 2);
  __bb = v197;
  do
  {
    v558 = v198;
    if (v47 > 1)
    {
      bzero(v125, 5632 * v47);
      v202 = 0;
      v203 = (v572 + 2816);
      do
      {
        v204 = *v203;
        if (v204 > 0xFF)
        {
          v205 = log2(v204);
        }

        else
        {
          v205 = dbl_1003EDA70[v204];
        }

        v203 += 708;
        *&v125[8 * v202++] = v205;
      }

      while (v47 != v202);
      v528 = (v47 + 7) >> 3;
      v206 = &v125[5624 * v47];
      v207 = (v572 + 2812);
      v208 = 704;
      do
      {
        v209 = 0;
        --v208;
        v210 = v207;
        do
        {
          v211 = *&v125[8 * v209];
          v212 = *v210;
          if (v212)
          {
            if (v212 > 0xFF)
            {
              v213 = log2(v212);
            }

            else
            {
              v213 = dbl_1003EDA70[v212];
            }
          }

          else
          {
            v213 = -2.0;
          }

          v210 += 708;
          *&v206[8 * v209++] = v211 - v213;
        }

        while (v47 != v209);
        v206 -= 8 * v47;
        --v207;
      }

      while (v208);
      bzero(v126, 8 * v47);
      v199 = a3;
      bzero(v520, v528 * a3);
      v214 = 0;
      v43 = v545;
      do
      {
        v215 = 0;
        v216 = &v125[8 * v47 * *(v545 + 2 * v214)];
        v217 = 1.0e99;
        do
        {
          v218 = *&v216[8 * v215] + *(v126 + v215);
          *(v126 + v215) = v218;
          if (v218 < v217)
          {
            v124[v214] = v215;
            v217 = v218;
          }

          ++v215;
        }

        while (v47 != v215);
        v219 = 13.5;
        if (v214 <= 0x7CF)
        {
          v219 = (v214 * 0.07 / 2000.0 + 0.77) * 13.5;
        }

        for (m = 0; m != v47; ++m)
        {
          v221 = *(v126 + m) - v217;
          *(v126 + m) = v221;
          if (v221 >= v219)
          {
            *(v126 + m) = v219;
            v520[v214 * v528 + (m >> 3)] |= 1 << (m & 7);
          }
        }

        ++v214;
      }

      while (v214 != a3);
      v222 = v124[a3 - 1];
      v223 = &v520[(a3 - 2) * v528];
      v224 = a3;
      v200 = 1;
      v201 = v538;
      do
      {
        if ((v223[v222 >> 3] >> (v222 & 7)))
        {
          if (v222 != v500[v224])
          {
            ++v200;
          }

          v222 = v500[v224];
        }

        v223 -= v528;
        v500[v224--] = v222;
      }

      while (v224 != 1);
    }

    else
    {
      bzero(v124, v199);
      v200 = 1;
      v201 = v538;
    }

    if (v47)
    {
      memset_pattern16(v201, &unk_1003E2F50, 2 * v47);
    }

    v225 = 0;
    v226 = 0;
    do
    {
      v227 = v124[v225];
      if (*(v201 + v227) == 256)
      {
        *(v201 + v227) = v226++;
      }

      ++v225;
    }

    while (v199 != v225);
    for (n = 0; n != v199; ++n)
    {
      v124[n] = *(v201 + v124[n]);
    }

    v47 = v226;
    if (v226)
    {
      v229 = v572;
      v230 = v226;
      do
      {
        bzero(v229, 0xB08uLL);
        v229[353] = 0x7FF0000000000000;
        v229 += 354;
        --v230;
      }

      while (v230);
    }

    for (ii = 0; ii != v199; ++ii)
    {
      v232 = &v572[2832 * v124[ii]];
      ++*&v232[4 * *(v43 + 2 * ii)];
      ++*(v232 + 352);
    }

    v198 = v558 + 1;
  }

  while (v558 + 1 != __bb);
  sub_100166DB4(v543, v125);
  sub_100166DB4(v543, v126);
  sub_100166DB4(v543, v520);
  sub_100166DB4(v543, v538);
  sub_100166DB4(v543, v572);
  v233 = 4 * v200;
  v521 = v200;
  if (v200)
  {
    v234 = v200;
    v486 = sub_100166C7C(v543);
    v200 = sub_100166C7C(v543);
    v235 = 16 * v234 + 1008;
    v236 = v235 >> 6;
    if (v235 >= 0x40)
    {
      v238 = sub_100166C7C(v543);
      v237 = sub_100166C7C(v543);
    }

    else
    {
      v237 = 0;
      v238 = 0;
    }

    v491 = sub_100166C7C(v543);
  }

  else
  {
    v238 = sub_100166C7C(v543);
    v237 = sub_100166C7C(v543);
    v486 = 0;
    v491 = 0;
    v236 = 15;
  }

  result = sub_100166C7C(v543);
  v489 = result;
  v649 = 0u;
  v648 = 0u;
  v647 = 0u;
  v646 = 0u;
  v645 = 0u;
  v644 = 0u;
  v643 = 0u;
  v642 = 0u;
  v641 = 0u;
  v640 = 0u;
  v639 = 0u;
  v638 = 0u;
  v637 = 0u;
  v636 = 0u;
  v635 = 0u;
  v634 = 0u;
  v633 = 0u;
  v632 = 0u;
  v631 = 0u;
  v630 = 0u;
  v629 = 0u;
  v628 = 0u;
  v627 = 0u;
  v626 = 0u;
  v625 = 0u;
  v624 = 0u;
  v623 = 0u;
  v622 = 0u;
  v621 = 0u;
  v620 = 0u;
  v619 = 0u;
  v618 = 0u;
  v617 = 0u;
  v616 = 0u;
  v615 = 0u;
  v614 = 0u;
  v613 = 0u;
  v612 = 0u;
  v611 = 0u;
  v610 = 0u;
  v609 = 0u;
  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  v596 = 0u;
  v595 = 0u;
  v594 = 0u;
  v593 = 0u;
  v592 = 0u;
  v591 = 0u;
  v590 = 0u;
  v589 = 0u;
  v588 = 0u;
  v587 = 0u;
  v586 = 0u;
  v61 = v552;
  if (*(v543 + 24))
  {
    goto LABEL_372;
  }

  bzero(v200, v233);
  v277 = v238;
  v278 = v237;
  v279 = 0;
  v280 = v124 + 1;
  v281 = a3;
  do
  {
    ++*(v200 + 4 * v279);
    if (v281 == 1 || *(v280 - 1) != *v280)
    {
      ++v279;
    }

    ++v280;
    --v281;
  }

  while (v281);
  v282 = v521;
  if (v521)
  {
    v529 = 0;
    __bc = 0;
    v576 = 0;
    v581 = 0;
    v512 = 0;
    v539 = v486;
    v501 = v237;
    v505 = v236;
    __srcb = v277;
    while (1)
    {
      v515 = v236;
      v283 = 0;
      v493 = v282 - 64;
      if (v282 >= 0x40)
      {
        v282 = 64;
      }

      v284 = v282 <= 1 ? 1 : v282;
      do
      {
        v285 = (v491 + 2832 * v283);
        bzero(v285, 0xB08uLL);
        v285[353] = 0x7FF0000000000000;
        if (*(v200 + 4 * &v576[v283]))
        {
          v286 = 0;
          do
          {
            ++*(v285 + *(v43 + 2 * v581 + 2 * v286++));
          }

          while (v286 < *(v200 + 4 * &v576[v283]));
          v285[352] = v286;
          v581 = v581 + v286;
        }

        sub_10015B604(v491 + 2832 * v283);
        v285[353] = v287;
        *(&v618 + v283) = v283;
        *(&v602 + v283) = v283;
        *(&v634 + v283++) = 1;
      }

      while (v283 != v284);
      v288 = (v521 - v576) >= 0x40 ? 64 : v521 - v576;
      result = sub_10015CCF0(v491, &v634, &v602, &v618, v489, v288, v288, 0x40uLL, 0x800uLL);
      v560 = result;
      if (v505 >= __bc + result)
      {
        v277 = __srcb;
        v290 = v505;
      }

      else
      {
        if (v505)
        {
          v289 = v505;
        }

        else
        {
          v289 = __bc + result;
        }

        do
        {
          v290 = v289;
          v289 *= 2;
        }

        while (v290 < __bc + result);
        v291 = sub_100166C7C(v543);
        v292 = v291;
        if (*(v543 + 24))
        {
          v293 = 1;
        }

        else
        {
          v293 = v505 == 0;
        }

        if (!v293)
        {
          memcpy(v291, __srcb, 2832 * v505);
        }

        sub_100166DB4(v543, __srcb);
        v277 = v292;
        result = v560;
      }

      v508 = v277;
      if (v236 >= result + v529)
      {
        v278 = v501;
        v61 = v552;
      }

      else
      {
        if (v236)
        {
          v294 = v236;
        }

        else
        {
          v294 = result + v529;
        }

        do
        {
          v236 = v294;
          v294 *= 2;
        }

        while (v236 < result + v529);
        v295 = sub_100166C7C(v543);
        v278 = v295;
        if (*(v543 + 24))
        {
          v296 = 1;
        }

        else
        {
          v296 = v515 == 0;
        }

        if (!v296)
        {
          memcpy(v295, v501, 4 * v515);
        }

        sub_100166DB4(v543, v501);
        v61 = v552;
        v277 = v508;
        result = v560;
      }

      if (*v61)
      {
        goto LABEL_372;
      }

      if (result)
      {
        v297 = 0;
        v298 = &v277[2832 * __bc];
        v516 = v278;
        v299 = v278 + 4 * v529;
        do
        {
          v300 = *(&v618 + v297);
          memcpy(v298, (v491 + 2832 * v300), 0xB10uLL);
          result = v560;
          *(v299 + 4 * v297) = *(&v634 + v300);
          *(&v586 + *(&v618 + v297)) = v297;
          v297 = v297 + 1;
          v298 += 2832;
        }

        while (v560 != v297);
        __bc = v297 + __bc;
        v529 += v297;
        v43 = v545;
        v277 = v508;
        v278 = v516;
      }

      v301 = &v602;
      v302 = v539;
      do
      {
        v303 = *v301++;
        *v302++ = *(&v586 + v303) + v512;
        --v284;
      }

      while (v284);
      v512 += result;
      v539 += 64;
      v282 = v493;
      v501 = v278;
      v505 = v290;
      __srcb = v277;
      v576 += 64;
      if (v576 >= v521)
      {
        goto LABEL_473;
      }
    }
  }

  v512 = 0;
LABEL_473:
  v336 = v277;
  v337 = v543;
  result = sub_100166DB4(v543, v491);
  v338 = v512;
  if (v512 << 6 >= (v512 >> 1) * v512)
  {
    v339 = (v512 >> 1) * v512;
  }

  else
  {
    v339 = v512 << 6;
  }

  if (v339 >= 0x801)
  {
    sub_100166DB4(v543, v489);
    result = sub_100166C7C(v543);
    v489 = result;
    v61 = v552;
    if (*(v543 + 24))
    {
      goto LABEL_372;
    }

    v337 = v543;
    v338 = v512;
  }

  if (v338)
  {
    result = sub_100166C7C(v337);
    v577 = result;
    v61 = v552;
    if (*(v337 + 24))
    {
      goto LABEL_372;
    }

    v340 = v336;
    v341 = 0;
    v342 = vdupq_n_s64(v512 - 1);
    v343 = xmmword_10037C710;
    v344 = xmmword_1003772E0;
    v345 = v577 + 2;
    v346 = vdupq_n_s64(4uLL);
    do
    {
      v347 = vmovn_s64(vcgeq_u64(v342, v344));
      if (vuzp1_s16(v347, *v342.i8).u8[0])
      {
        *(v345 - 2) = v341;
      }

      if (vuzp1_s16(v347, *&v342).i8[2])
      {
        *(v345 - 1) = v341 + 1;
      }

      if (vuzp1_s16(*&v342, vmovn_s64(vcgeq_u64(v342, *&v343))).i32[1])
      {
        *v345 = v341 + 2;
        v345[1] = v341 + 3;
      }

      v341 += 4;
      v343 = vaddq_s64(v343, v346);
      v344 = vaddq_s64(v344, v346);
      v345 += 4;
    }

    while (((v512 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v341);
  }

  else
  {
    v61 = v552;
    if (*v552)
    {
      goto LABEL_372;
    }

    v340 = v336;
    v577 = 0;
  }

  v562 = sub_10015CCF0(v340, v278, v486, v577, v489, v512, v521, 0x100uLL, v339);
  sub_100166DB4(v543, v489);
  result = sub_100166DB4(v543, v278);
  if (v512)
  {
    result = sub_100166C7C(v543);
    v582 = result;
    v43 = v545;
    v61 = v552;
    if (*(v543 + 24))
    {
      goto LABEL_372;
    }

    v387 = v336;
    memset(result, 255, 4 * v512);
  }

  else
  {
    v43 = v545;
    v61 = v552;
    if (*v552)
    {
      goto LABEL_372;
    }

    v387 = v336;
    v582 = 0;
  }

  if (v521)
  {
    v541 = 0;
    v417 = 0;
    v418 = 0;
    do
    {
      bzero(v585, 0xB08uLL);
      v585[353] = 0x7FF0000000000000;
      if (*(v200 + 4 * v417))
      {
        v419 = 0;
        do
        {
          ++*(v585 + *(v545 + 2 * v418 + 2 * v419++));
        }

        while (v419 < *(v200 + 4 * v417));
        v585[352] = v419;
        v418 += v419;
      }

      v420 = v417 - 1;
      if (!v417)
      {
        v420 = 0;
      }

      v421 = v486[v420];
      v422 = v387;
      v423 = sub_10015CFCC(v585, v387 + 2832 * v421);
      v424 = v562;
      if (v562)
      {
        v425 = v423;
        v426 = v577;
        do
        {
          v427 = sub_10015CFCC(v585, v422 + 2832 * *v426);
          if (v427 < v425)
          {
            v421 = *v426;
            v425 = v427;
          }

          ++v426;
          --v424;
        }

        while (v424);
      }

      v486[v417] = v421;
      if (v582[v421] == -1)
      {
        v582[v421] = v541++;
      }

      v387 = v422;
      ++v417;
    }

    while (v417 != v521);
  }

  sub_100166DB4(v543, v577);
  result = sub_100166DB4(v543, v387);
  v428 = *(a9 + 32);
  if (v428 < v521)
  {
    if (!v428)
    {
      v428 = v521;
    }

    do
    {
      v429 = v428;
      v428 *= 2;
    }

    while (v429 < v521);
    v430 = sub_100166C7C(v543);
    v431 = v430;
    if (!*(v543 + 24))
    {
      v432 = *(a9 + 32);
      if (v432)
      {
        memcpy(v430, *(a9 + 16), v432);
      }
    }

    result = sub_100166DB4(v543, *(a9 + 16));
    *(a9 + 16) = v431;
    *(a9 + 32) = v429;
  }

  v433 = *(a9 + 40);
  if (v433 < v521)
  {
    if (!v433)
    {
      v433 = v521;
    }

    do
    {
      v434 = v433;
      v433 *= 2;
    }

    while (v434 < v521);
    v435 = sub_100166C7C(v543);
    v436 = v435;
    if (!*(v543 + 24))
    {
      v437 = *(a9 + 40);
      if (v437)
      {
        memcpy(v435, *(a9 + 24), 4 * v437);
      }
    }

    result = sub_100166DB4(v543, *(a9 + 24));
    *(a9 + 24) = v436;
    *(a9 + 40) = v434;
  }

  v43 = v545;
  v61 = v552;
  if (!*v552)
  {
    v438 = v521;
    if (v521)
    {
      v439 = 0;
      v438 = 0;
      v440 = 0;
      v441 = v486 + 1;
      v442 = v200;
      v443 = v521;
      do
      {
        v444 = *v442++;
        v440 += v444;
        v445 = *(v441 - 1);
        v446 = v443;
        if (v443 == 1 || v445 != *v441)
        {
          v447 = v582[v445];
          v438[*(a9 + 16)] = v447;
          *(*(a9 + 24) + 4 * v438) = v440;
          if (v439 <= v447)
          {
            v439 = v447;
          }

          ++v438;
          v440 = 0;
        }

        ++v441;
        --v443;
      }

      while (v446 != 1);
      v448 = v439 + 1;
    }

    else
    {
      v448 = 1;
    }

    *a9 = v448;
    *(a9 + 8) = v438;
    v11 = v543;
    sub_100166DB4(v543, v582);
    sub_100166DB4(v543, v200);
    result = sub_100166DB4(v543, v486);
    v43 = v545;
    v61 = v552;
    if (!*(v543 + 24))
    {
      result = sub_100166DB4(v543, v124);
      v61 = v552;
    }

    goto LABEL_373;
  }

LABEL_372:
  v11 = v543;
LABEL_373:
  if (*v61)
  {
    return result;
  }

  sub_100166DB4(v11, v43);
  result = sub_100166C7C(v11);
  v86 = result;
LABEL_92:
  v87 = v552;
  if (*v552)
  {
    return result;
  }

  v88 = a3;
  if (!a3)
  {
    goto LABEL_203;
  }

  v89 = 0;
  v90 = (a2 + 14);
  do
  {
    if ((*(v90 - 5) & 0x1FFFFFF) != 0 && *(v90 - 1) >= 0x80u)
    {
      *(v86 + 2 * v89++) = *v90 & 0x3FF;
    }

    v90 += 8;
    --v88;
  }

  while (v88);
  v91 = v89 >> 6 <= 0x1A8 ? v89 / 0x220u + 1 : 50;
  v87 = v552;
  if (!v89)
  {
LABEL_203:
    *a10 = 1;
    goto LABEL_204;
  }

  if (v89 > 0x7F)
  {
    result = sub_100166C7C(v11);
    if (*(v11 + 24))
    {
      return result;
    }

    v575 = result;
    v251 = result;
    v252 = v91;
    do
    {
      bzero(v251, 0x888uLL);
      v251[273] = 0x7FF0000000000000;
      v251 += 274;
      --v252;
    }

    while (v252);
    v253 = 0;
    LODWORD(v254) = 7;
    do
    {
      v255 = v253 * v89 / v91;
      if (v253)
      {
        v254 = (16807 * v254);
        v255 += v254 % (v89 / v91);
      }

      v256 = 0;
      if (v255 + 40 >= v89)
      {
        v257 = v89 - 41;
      }

      else
      {
        v257 = v255;
      }

      v258 = &v575[2192 * v253];
      v259 = v86 + 2 * v257;
      *(v258 + 272) += 40;
      do
      {
        ++*&v258[4 * *(v259 + v256)];
        v256 += 2;
      }

      while (v256 != 80);
      ++v253;
    }

    while (v253 != v91);
    v565 = v89;
    v260 = v91 + 2 * v89 / 0x28 + 99;
    v261 = v260 / v91 * v91;
    if (v260 != v260 % v91)
    {
      v262 = 0;
      v263 = v89 - 39;
      LODWORD(v89) = 7;
      do
      {
        bzero(v585, 0x888uLL);
        v89 = (16807 * v89);
        v264 = (v86 + 2 * (v89 % v263));
        v265 = -40;
        do
        {
          v266 = *v264++;
          ++*(v585 + v266);
          v78 = __CFADD__(v265++, 1);
        }

        while (!v78);
        v267 = 0;
        v268 = 0;
        v269 = &v575[2192 * (v262 % v91)];
        *(v269 + 272) += 40;
        do
        {
          *&v269[4 * v268] = vaddq_s32(*&v269[4 * v268], *&v585[v267]);
          v268 += 4;
          v267 += 2;
        }

        while (v267 != 272);
        ++v262;
      }

      while (v262 < v261);
    }

    v270 = v565;
    v271 = sub_100166C7C(v11);
    v272 = sub_100166C7C(v11);
    v273 = sub_100166C7C(v11);
    if (((v91 + 7) >> 3) * v565)
    {
      v274 = sub_100166C7C(v11);
    }

    else
    {
      v274 = 0;
    }

    result = sub_100166C7C(v11);
    v348 = 3;
    if (*(a7 + 4) > 10)
    {
      v348 = 10;
    }

    v554 = v348;
    if (*(v11 + 24))
    {
      return result;
    }

    v349 = result;
    v350 = 0;
    v540 = v86;
    v544 = v11;
    v561 = result;
    v509 = (v271 - 2);
    do
    {
      v569 = v350;
      if (v91 > 1)
      {
        bzero(v272, 4352 * v91);
        v352 = 0;
        v353 = (v575 + 2176);
        do
        {
          v354 = *v353;
          if (v354 > 0xFF)
          {
            v355 = log2(v354);
          }

          else
          {
            v355 = dbl_1003EDA70[v354];
          }

          v353 += 548;
          *&v272[8 * v352++] = v355;
        }

        while (v91 != v352);
        v549 = (v91 + 7) >> 3;
        v356 = &v272[4344 * v91];
        v357 = (v575 + 2172);
        v358 = 544;
        do
        {
          v359 = 0;
          --v358;
          v360 = v357;
          do
          {
            v361 = *&v272[8 * v359];
            v362 = *v360;
            if (v362)
            {
              if (v362 > 0xFF)
              {
                v363 = log2(v362);
              }

              else
              {
                v363 = dbl_1003EDA70[v362];
              }
            }

            else
            {
              v363 = -2.0;
            }

            v360 += 548;
            *&v356[8 * v359++] = v361 - v363;
          }

          while (v91 != v359);
          v356 -= 8 * v91;
          --v357;
        }

        while (v358);
        bzero(v273, 8 * v91);
        v270 = v565;
        bzero(v274, v549 * v565);
        v364 = 0;
        v86 = v540;
        v11 = v544;
        do
        {
          v365 = 0;
          v366 = &v272[8 * v91 * v540[v364]];
          v367 = 1.0e99;
          do
          {
            v368 = *&v366[8 * v365] + *(v273 + v365);
            *(v273 + v365) = v368;
            if (v368 < v367)
            {
              v271[v364] = v365;
              v367 = v368;
            }

            ++v365;
          }

          while (v91 != v365);
          v369 = 14.6;
          if (v364 <= 0x7CF)
          {
            v369 = (v364 * 0.07 / 2000.0 + 0.77) * 14.6;
          }

          for (jj = 0; jj != v91; ++jj)
          {
            v371 = *(v273 + jj) - v367;
            *(v273 + jj) = v371;
            if (v371 >= v369)
            {
              *(v273 + jj) = v369;
              v274[v364 * v549 + (jj >> 3)] |= 1 << (jj & 7);
            }
          }

          ++v364;
        }

        while (v364 != v565);
        v372 = v271[v565 - 1];
        v373 = &v274[(v565 - 2) * v549];
        v374 = v565;
        v351 = 1;
        v349 = v561;
        do
        {
          if ((v373[v372 >> 3] >> (v372 & 7)))
          {
            if (v372 != v509[v374])
            {
              ++v351;
            }

            v372 = v509[v374];
          }

          v373 -= v549;
          v509[v374--] = v372;
        }

        while (v374 != 1);
      }

      else
      {
        bzero(v271, v270);
        v351 = 1;
      }

      if (v91)
      {
        memset_pattern16(v349, &unk_1003E2F50, 2 * v91);
      }

      v375 = 0;
      v376 = 0;
      do
      {
        v377 = v271[v375];
        if (*(v349 + v377) == 256)
        {
          *(v349 + v377) = v376++;
        }

        ++v375;
      }

      while (v270 != v375);
      for (kk = 0; kk != v270; ++kk)
      {
        v271[kk] = *(v349 + v271[kk]);
      }

      v91 = v376;
      if (v376)
      {
        v379 = v575;
        v380 = v376;
        do
        {
          bzero(v379, 0x888uLL);
          v379[273] = 0x7FF0000000000000;
          v379 += 274;
          --v380;
        }

        while (v380);
      }

      v381 = 0;
      v270 = v565;
      do
      {
        v382 = &v575[2192 * v271[v381]];
        ++*&v382[4 * *(v86 + 2 * v381)];
        ++*(v382 + 272);
        ++v381;
      }

      while (v565 != v381);
      v350 = v569 + 1;
      v349 = v561;
    }

    while (v569 + 1 != v554);
    sub_100166DB4(v11, v272);
    sub_100166DB4(v11, v273);
    sub_100166DB4(v11, v274);
    sub_100166DB4(v11, v561);
    sub_100166DB4(v11, v575);
    v555 = v351;
    if (v351)
    {
      v494 = sub_100166C7C(v11);
      v383 = sub_100166C7C(v11);
      v384 = 16 * v351 + 1008;
      v525 = v384 >> 6;
      if (v384 >= 0x40)
      {
        v386 = sub_100166C7C(v11);
        v385 = sub_100166C7C(v11);
      }

      else
      {
        v385 = 0;
        v386 = 0;
      }

      v502 = sub_100166C7C(v11);
      v86 = v540;
    }

    else
    {
      v386 = sub_100166C7C(v11);
      v385 = sub_100166C7C(v11);
      v383 = 0;
      v494 = 0;
      v502 = 0;
      v525 = 15;
    }

    result = sub_100166C7C(v11);
    __srcc = result;
    v649 = 0u;
    v648 = 0u;
    v647 = 0u;
    v646 = 0u;
    v645 = 0u;
    v644 = 0u;
    v643 = 0u;
    v642 = 0u;
    v641 = 0u;
    v640 = 0u;
    v639 = 0u;
    v638 = 0u;
    v637 = 0u;
    v636 = 0u;
    v635 = 0u;
    v634 = 0u;
    v633 = 0u;
    v632 = 0u;
    v631 = 0u;
    v630 = 0u;
    v629 = 0u;
    v628 = 0u;
    v627 = 0u;
    v626 = 0u;
    v625 = 0u;
    v624 = 0u;
    v623 = 0u;
    v622 = 0u;
    v621 = 0u;
    v620 = 0u;
    v619 = 0u;
    v618 = 0u;
    v617 = 0u;
    v616 = 0u;
    v615 = 0u;
    v614 = 0u;
    v613 = 0u;
    v612 = 0u;
    v611 = 0u;
    v610 = 0u;
    v609 = 0u;
    v608 = 0u;
    v607 = 0u;
    v606 = 0u;
    v605 = 0u;
    v604 = 0u;
    v603 = 0u;
    v602 = 0u;
    v601 = 0u;
    v600 = 0u;
    v599 = 0u;
    v598 = 0u;
    v597 = 0u;
    v596 = 0u;
    v595 = 0u;
    v594 = 0u;
    v593 = 0u;
    v592 = 0u;
    v591 = 0u;
    v590 = 0u;
    v589 = 0u;
    v588 = 0u;
    v587 = 0u;
    v586 = 0u;
    v87 = v552;
    if (*(v11 + 24))
    {
      goto LABEL_555;
    }

    bzero(v383, 4 * v351);
    v388 = 0;
    v389 = v271 + 1;
    v390 = v565;
    do
    {
      ++v383[v388];
      if (v390 == 1 || *(v389 - 1) != *v389)
      {
        ++v388;
      }

      ++v389;
      --v390;
    }

    while (v390);
    if (v351)
    {
      v563 = 0;
      v566 = 0;
      v391 = 0;
      v583 = 0;
      v517 = 0;
      v522 = v385;
      v570 = v494;
      v392 = v351;
      __be = v525;
      v513 = v386;
      v86 = v540;
      while (1)
      {
        v393 = 0;
        v506 = v392 - 64;
        if (v392 >= 0x40)
        {
          v392 = 64;
        }

        v394 = v392 <= 1 ? 1 : v392;
        do
        {
          v395 = &v502[2192 * v393];
          bzero(v395, 0x888uLL);
          *(v395 + 273) = 0x7FF0000000000000;
          if (v383[v393 + v391])
          {
            v396 = 0;
            do
            {
              ++*&v395[4 * *(v86 + 2 * v583 + 2 * v396++)];
            }

            while (v396 < v383[v393 + v391]);
            *(v395 + 272) = v396;
            v583 = v583 + v396;
          }

          sub_10015B9F4(&v502[2192 * v393]);
          *(v395 + 273) = v397;
          *(&v618 + v393) = v393;
          *(&v602 + v393) = v393;
          *(&v634 + v393++) = 1;
        }

        while (v393 != v394);
        v398 = v555 - v391 >= 0x40 ? 64 : v555 - v391;
        result = sub_10015D8EC(v502, &v634, &v602, &v618, __srcc, v398, v398, 0x40uLL, 0x800uLL);
        v578 = result;
        v510 = v391;
        if (v525 >= result + v566)
        {
          v402 = v513;
          v400 = v525;
        }

        else
        {
          if (v525)
          {
            v399 = v525;
          }

          else
          {
            v399 = result + v566;
          }

          do
          {
            v400 = v399;
            v399 *= 2;
          }

          while (v400 < result + v566);
          v401 = sub_100166C7C(v544);
          v402 = v401;
          if (*(v544 + 24))
          {
            v403 = 1;
          }

          else
          {
            v403 = v525 == 0;
          }

          if (!v403)
          {
            memcpy(v401, v513, 2192 * v525);
          }

          sub_100166DB4(v544, v513);
          result = v578;
        }

        v550 = v402;
        v404 = __be;
        if (__be >= v563 + result)
        {
          v407 = v522;
          v87 = v552;
        }

        else
        {
          if (__be)
          {
            v405 = __be;
          }

          else
          {
            v405 = v563 + result;
          }

          do
          {
            v404 = v405;
            v405 *= 2;
          }

          while (v404 < v563 + result);
          v406 = sub_100166C7C(v544);
          v407 = v406;
          if (*(v544 + 24))
          {
            v408 = 1;
          }

          else
          {
            v408 = __be == 0;
          }

          if (!v408)
          {
            memcpy(v406, v522, 4 * __be);
          }

          sub_100166DB4(v544, v522);
          v87 = v552;
          result = v578;
        }

        if (*v87)
        {
          goto LABEL_555;
        }

        if (result)
        {
          v409 = 0;
          v410 = &v550[2192 * v566];
          __bf = v407;
          v411 = v407 + 4 * v563;
          do
          {
            v412 = *(&v618 + v409);
            memcpy(v410, &v502[2192 * v412], 0x890uLL);
            result = v578;
            *(v411 + 4 * v409) = *(&v634 + v412);
            *(&v586 + *(&v618 + v409)) = v409;
            v409 = v409 + 1;
            v410 += 2192;
          }

          while (v578 != v409);
          v566 += v409;
          v563 = v409 + v563;
          v407 = __bf;
          v86 = v540;
        }

        v413 = &v602;
        v414 = v570;
        do
        {
          v415 = *v413++;
          *v414++ = *(&v586 + v415) + v517;
          --v394;
        }

        while (v394);
        v517 += result;
        v522 = v407;
        v570 += 256;
        v392 = v506;
        v525 = v400;
        __be = v404;
        v391 = v510 + 64;
        v416 = v550;
        v513 = v550;
        if (v510 + 64 >= v555)
        {
          goto LABEL_658;
        }
      }
    }

    v517 = 0;
    v416 = v386;
    v407 = v385;
LABEL_658:
    result = sub_100166DB4(v544, v502);
    if (v517 << 6 >= (v517 >> 1) * v517)
    {
      v449 = (v517 >> 1) * v517;
    }

    else
    {
      v449 = v517 << 6;
    }

    if (v449 >= 0x801)
    {
      sub_100166DB4(v544, __srcc);
      result = sub_100166C7C(v544);
      __srcc = result;
      v87 = v552;
      v86 = v540;
      if (*(v544 + 24))
      {
        goto LABEL_555;
      }
    }

    if (v517)
    {
      result = sub_100166C7C(v544);
      v571 = result;
      v87 = v552;
      v86 = v540;
      if (*(v544 + 24))
      {
        goto LABEL_555;
      }

      v450 = 0;
      v451 = vdupq_n_s64(v517 - 1);
      v452 = xmmword_10037C710;
      v453 = xmmword_1003772E0;
      v454 = (result + 8);
      v455 = vdupq_n_s64(4uLL);
      do
      {
        v456 = vmovn_s64(vcgeq_u64(v451, v453));
        if (vuzp1_s16(v456, *v451.i8).u8[0])
        {
          *(v454 - 2) = v450;
        }

        if (vuzp1_s16(v456, *&v451).i8[2])
        {
          *(v454 - 1) = v450 + 1;
        }

        if (vuzp1_s16(*&v451, vmovn_s64(vcgeq_u64(v451, *&v452))).i32[1])
        {
          *v454 = v450 + 2;
          v454[1] = v450 + 3;
        }

        v450 += 4;
        v452 = vaddq_s64(v452, v455);
        v453 = vaddq_s64(v453, v455);
        v454 += 4;
      }

      while (((v517 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v450);
    }

    else
    {
      v87 = v552;
      v86 = v540;
      if (*v552)
      {
        goto LABEL_555;
      }

      v571 = 0;
    }

    v579 = sub_10015D8EC(v416, v407, v494, v571, __srcc, v517, v555, 0x100uLL, v449);
    sub_100166DB4(v544, __srcc);
    result = sub_100166DB4(v544, v407);
    if (v517)
    {
      result = sub_100166C7C(v544);
      v584 = result;
      v87 = v552;
      v86 = v540;
      if (!*(v544 + 24))
      {
        memset(result, 255, 4 * v517);
        goto LABEL_684;
      }
    }

    else
    {
      v87 = v552;
      v86 = v540;
      if (!*v552)
      {
        v584 = 0;
LABEL_684:
        if (v555)
        {
          v567 = 0;
          v457 = 0;
          v458 = 0;
          do
          {
            bzero(v585, 0x888uLL);
            v585[273] = 0x7FF0000000000000;
            if (v383[v457])
            {
              v459 = 0;
              do
              {
                ++*(v585 + v540[v458 + v459++]);
              }

              while (v459 < v383[v457]);
              v585[272] = v459;
              v458 += v459;
            }

            v460 = v457 - 1;
            if (!v457)
            {
              v460 = 0;
            }

            v461 = v494[v460];
            v462 = sub_10015DBC8(v585, v416 + 2192 * v461);
            if (v579)
            {
              v463 = v462;
              v464 = v571;
              v465 = v579;
              do
              {
                v466 = sub_10015DBC8(v585, v416 + 2192 * *v464);
                if (v466 < v463)
                {
                  v461 = *v464;
                  v463 = v466;
                }

                ++v464;
                --v465;
              }

              while (v465);
            }

            v494[v457] = v461;
            if (v584[v461] == -1)
            {
              v584[v461] = v567++;
            }

            ++v457;
          }

          while (v457 != v555);
        }

        sub_100166DB4(v544, v571);
        result = sub_100166DB4(v544, v416);
        v467 = *(a10 + 32);
        if (v467 < v555)
        {
          if (!v467)
          {
            v467 = v555;
          }

          do
          {
            v468 = v467;
            v467 *= 2;
          }

          while (v468 < v555);
          v469 = sub_100166C7C(v544);
          v470 = v469;
          if (!*(v544 + 24))
          {
            v471 = *(a10 + 32);
            if (v471)
            {
              memcpy(v469, *(a10 + 16), v471);
            }
          }

          result = sub_100166DB4(v544, *(a10 + 16));
          *(a10 + 16) = v470;
          *(a10 + 32) = v468;
        }

        v472 = *(a10 + 40);
        if (v472 < v555)
        {
          if (!v472)
          {
            v472 = v555;
          }

          do
          {
            v473 = v472;
            v472 *= 2;
          }

          while (v473 < v555);
          v474 = sub_100166C7C(v544);
          v475 = v474;
          if (!*(v544 + 24))
          {
            v476 = *(a10 + 40);
            if (v476)
            {
              memcpy(v474, *(a10 + 24), 4 * v476);
            }
          }

          result = sub_100166DB4(v544, *(a10 + 24));
          *(a10 + 24) = v475;
          *(a10 + 40) = v473;
        }

        v87 = v552;
        v86 = v540;
        if (!*v552)
        {
          if (v555)
          {
            v477 = 0;
            v478 = 0;
            v479 = 0;
            v480 = v494 + 1;
            v481 = v383;
            do
            {
              v482 = *v481++;
              v479 += v482;
              v483 = *(v480 - 1);
              if (v555 == 1 || v483 != *v480)
              {
                v484 = v584[v483];
                *(*(a10 + 16) + v478) = v484;
                *(*(a10 + 24) + 4 * v478) = v479;
                if (v477 <= v484)
                {
                  v477 = v484;
                }

                ++v478;
                v479 = 0;
              }

              ++v480;
              --v555;
            }

            while (v555);
            v485 = v477 + 1;
          }

          else
          {
            v478 = 0;
            v485 = 1;
          }

          *a10 = v485;
          *(a10 + 8) = v478;
          v11 = v544;
          sub_100166DB4(v544, v584);
          sub_100166DB4(v544, v383);
          result = sub_100166DB4(v544, v494);
          v87 = v552;
          v86 = v540;
          if (!*(v544 + 24))
          {
            result = sub_100166DB4(v544, v271);
            v87 = v552;
          }

          goto LABEL_204;
        }
      }
    }

LABEL_555:
    v11 = v544;
LABEL_204:
    if (!*v87)
    {
      return sub_100166DB4(v11, v86);
    }

    return result;
  }

  v92 = *(a10 + 32);
  v93 = *(a10 + 8) + 1;
  if (v92 < v93)
  {
    if (!v92)
    {
      v92 = *(a10 + 8) + 1;
    }

    do
    {
      v94 = v92;
      v92 *= 2;
    }

    while (v94 < v93);
    v95 = sub_100166C7C(v11);
    v96 = v95;
    if (!*(v11 + 24))
    {
      v97 = *(a10 + 32);
      if (v97)
      {
        memcpy(v95, *(a10 + 16), v97);
      }
    }

    result = sub_100166DB4(v11, *(a10 + 16));
    *(a10 + 16) = v96;
    *(a10 + 32) = v94;
    v93 = *(a10 + 8) + 1;
  }

  v98 = *(a10 + 40);
  if (v98 < v93)
  {
    if (!v98)
    {
      v98 = v93;
    }

    do
    {
      v99 = v98;
      v98 *= 2;
    }

    while (v99 < v93);
    v100 = sub_100166C7C(v11);
    v101 = v100;
    if (!*(v11 + 24))
    {
      v102 = *(a10 + 40);
      if (v102)
      {
        memcpy(v100, *(a10 + 24), 4 * v102);
      }
    }

    result = sub_100166DB4(v11, *(a10 + 24));
    *(a10 + 24) = v101;
    *(a10 + 40) = v99;
  }

  if (!*v552)
  {
    *a10 = 1;
    *(*(a10 + 16) + *(a10 + 8)) = 0;
    v103 = *(a10 + 8);
    *(*(a10 + 24) + 4 * v103) = v89;
    v104 = v103 + 1;
    v87 = v552;
    *(a10 + 8) = v104;
    goto LABEL_204;
  }

  return result;
}

uint64_t sub_10014AC30(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + a3) = xmmword_1003E2F60;
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (a2 + v3);
      v6 = *v5;
      v7 = *(v5 + 1);
      *(a1 + v4) = *v5;
      v8 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v6, v7), xmmword_1003E2EE0))));
      LODWORD(v5) = __clz(__rbit32(((v8.i32[0] | (v8.i32[2] << 8)) >> 1) & (((v8.i32[0] | (v8.i32[2] << 8)) & 0xFFFCu) >> 2) & (v8.i32[0] | (v8.i32[2] << 8)) | 0x2000)) + 1;
      v3 += v5;
      v4 += v5;
      if ((((v8.i32[0] | (v8.i32[2] << 8)) >> 1) & (((v8.i32[0] | (v8.i32[2] << 8)) & 0xFFFCu) >> 2) & (v8.i32[0] | (v8.i32[2] << 8))) != 0)
      {
        v9 = v4 + 1;
        *(a1 + v4) = 15;
        v3 += 3;
        do
        {
          v10 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vbicq_s8(xmmword_1003E2EE0, vceqq_s8(*(a2 + v3 - 1), *(a2 + v3))))));
          v11 = __clz(__rbit32(v10.i16[0] | (v10.i16[4] << 8) | 0xFFFF8000));
          v4 = v9 + 1;
          *(a1 + v9) = v11;
          v3 += v11;
          ++v9;
        }

        while (v11 == 15);
      }
    }

    while (v3 < a3);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v4 + a3 - v3;
}

uint64_t sub_10014AD2C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 == 15 || a2 == 0)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v6.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  do
  {
    v7 = *&a3[v4];
    *(a1 + v5) = v7;
    v8 = vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v6), xmmword_1003E2EE0))));
    v9 = __clz(__rbit32((v8.i16[0] | (v8.i16[4] << 8)) | 0x10000));
    v5 += v9;
    v4 += v9;
    if (v8.i16[0] | (v8.i16[4] << 8))
    {
      v10 = v4 + 1;
      v11 = &a3[v4 - 1];
      v12 = vld1q_dup_s8(v11);
      *(a1 + v5) = v12;
      v5 += 3;
      do
      {
        v4 = v10 + 1;
        v13 = a3[v10];
        *(a1 + v5) = v12;
        v5 += v13;
        v14 = v13 < 0xF || v5 >= a2;
        v10 = v4;
      }

      while (!v14);
    }
  }

  while (v5 < a2);
  return a2;
}

uint64_t sub_10014ADE8(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v3 = a3 * a2;
  v4 = a1[1];
  v5 = v4 - v3;
  if (v4 < v3)
  {
    return 0;
  }

  v6 = *a1;
  *a1 += v3;
  a1[1] = v5;
  return v6;
}

unint64_t sub_10014AE18(int a1)
{
  v2 = sub_100160300(a1);
  if (a1 == 2050)
  {
    v3 = 2305;
  }

  else
  {
    v3 = 2304;
  }

  result = sub_100136794(v3);
  if (v2 > result)
  {
    return v2;
  }

  return result;
}

char *sub_10014AE58(uint64_t a1, unint64_t a2, const float *__src, size_t __n, int8x16_t *a5, int a6)
{
  v10 = __n;
  if (__n >= 8)
  {
    if (__n > 0xFFF)
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      v10 = __n;
      if (!sub_100160358(&v20, a6, a5))
      {
        *(&v22 + 1) = a1;
        *&v23 = a1;
        *(&v23 + 1) = a1 + a2;
        v17 = __n;
        v10 = __n;
        *&v20 = __src;
        *(&v21 + 1) = 0;
        if (__n < 0x7FFFFFFF)
        {
LABEL_21:
          *(&v20 + 1) = v17;
          *&v22 = v17 - 8;
          if (!sub_1001604A0(&v20) && !sub_1001607F8(&v20))
          {
            return (*(&v22 + 1) - a1);
          }
        }

        else
        {
          *(&v20 + 1) = 0x40000;
          *&v22 = 262136;
          v10 = __n;
          if (!sub_1001604A0(&v20))
          {
            v18 = __n;
            while (1)
            {
              *(&v20 + 1) = 0x80000;
              *&v22 = 524280;
              if (sub_1001604A0(&v20))
              {
                break;
              }

              sub_100160420(&v20, 0x40000uLL);
              v17 = v18 - 0x40000;
              v19 = (v18 - 0x80000) >> 18;
              v18 -= 0x40000;
              if (!v19)
              {
                v10 = v17 - 0x40000;
                goto LABEL_21;
              }
            }

            v10 = v18 - 0x40000;
          }
        }
      }
    }

    else
    {
      v10 = __n;
      if (a2 >= 0x11)
      {
        v11 = a1 + 12;
        v12 = a2 - 16;
        v13 = a6 == 2050 ? 2305 : 2304;
        v14 = sub_1001367A8((a1 + 12), v12, __src, __n, a5, v13);
        v10 = __n;
        if (v14)
        {
          v10 = __n;
          if (v14 < __n)
          {
            *a1 = 1853388386;
            *(a1 + 4) = __n;
            *(a1 + 8) = v14;
            *&v14[v11] = 611874402;
            return v14 + 16;
          }
        }
      }
    }
  }

  result = 0;
  if (__n <= 0x7FFFFFFE && __n + 12 <= a2)
  {
    *a1 = 762869346;
    *(a1 + 4) = v10;
    v16 = (a1 + 8);
    memcpy(v16, __src, __n);
    *&v16[__n] = 611874402;
    return (__n + 12);
  }

  return result;
}

uint64_t sub_10014B060(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, int8x16_t a5)
{
  if ((a4 | a2) >> 32)
  {
    return 0;
  }

  else
  {
    return sub_10014499C(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_10014B094(uint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  if (HIDWORD(a4))
  {
    return 0;
  }

  if (a2 >= 0xFFFFFFFF)
  {
    LODWORD(a2) = -1;
  }

  return sub_10013708C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10014B0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, int8x16_t a7)
{
  if ((a4 | a2) >> 32)
  {
    return 0;
  }

  else
  {
    return sub_10013545C(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_10014B120(int *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6)
{
  if (HIDWORD(a4))
  {
    return 0;
  }

  if (a2 >= 0xFFFFFFFF)
  {
    LODWORD(a2) = -1;
  }

  return sub_10014521C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10014B198(int a1)
{
  v1 = 0x10000;
  v2 = 172392;
  if (a1 != 3104)
  {
    v2 = 0;
  }

  if (a1 != 3088)
  {
    v1 = v2;
  }

  if (a1 == 3072)
  {
    return 0x8000;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10014B1C4(int a1)
{
  if (a1 == 3104)
  {
    return 5632;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10014B1D4(_WORD *a1, unint64_t a2, _BYTE *a3, unint64_t a4, void *a5, int a6)
{
  v6 = -16777216;
  if (a4 > 0xFFFFFFFFFF000000)
  {
    return 0;
  }

  if (a2 < 0xFFFFFFFFFF000000)
  {
    v6 = a2;
  }

  v8 = a6 & 0xFFFFFFF0;
  if ((a6 & 0xFFFFFFF0) == 0xC00)
  {
    return sub_100136BB4(a1, v6, a3, a4, a5);
  }

  if (v8 == 3104)
  {
    return sub_100143C98(a1, v6, a3, a4, a5);
  }

  if (v8 != 3088)
  {
    return 0;
  }

  return sub_10014F15C(a1, v6, a3, a4, a5);
}

uint64_t sub_10014B23C(char *a1, unint64_t a2, char *a3, unint64_t a4, char *a5, int a6)
{
  v6 = a6 & 0xFFFFFFF0;
  if ((a6 & 0xFFFFFFF0) == 0xC20)
  {
    return sub_10014356C(a1, a2, a3, a4, a5);
  }

  if (v6 == 3088)
  {
    return sub_10014EF80(a1, a2, a3, a4);
  }

  if (v6 == 3072)
  {
    return sub_1001369B0(a1, a2, a3, a4);
  }

  return 0;
}

uint64_t lzfse_decode_lmd(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (*a1 + *(a1 + 120));
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 92);
  v8 = *(a1 + 96);
  v9 = *(a1 + 124);
  v10 = *(a1 + 126);
  v11 = *(a1 + 128);
  v12 = *(a1 + 40) - v1 - 32;
  v13 = *(a1 + 80);
  if (v6 | v7)
  {
    goto LABEL_7;
  }

  if (*(a1 + 72))
  {
    while (1)
    {
      v2 = (v2 - ((63 - v4) >> 3));
      if (v2 < *(a1 + 8))
      {
        return -3;
      }

      v3 = *v2;
      v14 = (a1 + 136 + 8 * v9);
      v15 = *v14;
      v16 = v4 + ((63 - v4) & 0xFFFFFFFFFFFFFFF8) - v15;
      v17 = *v2 >> v16;
      v18 = v17 & ~(-1 << v15);
      LOBYTE(v15) = v14[1];
      v9 = (v18 >> v15) + *(v14 + 1);
      v6 = (v17 & ~(-1 << v15)) + *(v14 + 1);
      v19 = (a1 + 648 + 8 * v10);
      v20 = *v19;
      v21 = v16 - v20;
      v22 = *v2 >> v21;
      v23 = v22 & ~(-1 << v20);
      LOBYTE(v20) = v19[1];
      v10 = (v23 >> v20) + *(v19 + 1);
      v7 = (v22 & ~(-1 << v20)) + *(v19 + 1);
      v24 = (a1 + 1160 + 8 * v11);
      v25 = *v24;
      v4 = v21 - v25;
      v26 = *v2 >> v4;
      v27 = v26 & ~(-1 << v25);
      LOBYTE(v25) = v24[1];
      v11 = (v27 >> v25) + *(v24 + 1);
      v28 = (v26 & ~(-1 << v25)) + *(v24 + 1);
      if (v28)
      {
        v8 = v28;
      }

      --v5;
LABEL_7:
      if (v8 > v1 + v6 - *(a1 + 32) || a1 + *(a1 + 7304) + 7308 < &v13[v6])
      {
        return -3;
      }

      v29 = v12 < (v6 + v7);
      v12 -= v6 + v7;
      if (v29)
      {
        v40 = v12 + v6 + v7 + 32;
        if (v6)
        {
          do
          {
            v41 = v40-- != 0;
            if (!v41)
            {
              goto LABEL_30;
            }

            v42 = *v13++;
            *v1 = v42;
            v1 = (v1 + 1);
          }

          while (--v6);
        }

        if (v7)
        {
          v43 = v1 - v8;
          while (1)
          {
            v41 = v40-- != 0;
            if (!v41)
            {
              break;
            }

            v44 = *v43++;
            *v1 = v44;
            v1 = (v1 + 1);
            if (!--v7)
            {
              goto LABEL_28;
            }
          }

LABEL_30:
          *(a1 + 24) = v1;
          *(a1 + 120) = v2 - *a1;
          *(a1 + 104) = v3;
          *(a1 + 112) = v4;
          *(a1 + 72) = v5;
          *(a1 + 88) = v6;
          *(a1 + 92) = v7;
          *(a1 + 96) = v8;
          *(a1 + 124) = v9;
          *(a1 + 126) = v10;
          *(a1 + 128) = v11;
          *(a1 + 80) = v13;
          return -2;
        }

LABEL_28:
        v12 = v40 - 32;
        if (!v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        do
        {
          v30 = *v13;
          v31 = *(v13 + 1);
          v13 += 16;
          *v1 = v30;
          v1[1] = v31;
          v1 += 2;
          v29 = v6 > 0x10;
          v6 -= 16;
        }

        while (v29);
        v32 = (v1 + v6);
        v13 += v6;
        v33 = (v32 - v8);
        if (v8 < 0x10)
        {
          v36 = (&unk_1003E2F70 + 32 * v8);
          v37 = byte_1003E3170[v8];
          v38 = vqtbl1q_s8(*v33, *v36);
          v39 = vqtbl1q_s8(*v33, v36[1]);
          do
          {
            *v32 = v38;
            v32[1] = v39;
            v32 = (v32 + v37);
            v29 = v7 > v37;
            v7 -= v37;
          }

          while (v29);
          v1 = (v32->i64 + v7);
          if (!v5)
          {
            goto LABEL_29;
          }
        }

        else
        {
          do
          {
            v34 = v33->i64[0];
            v35 = v33->i64[1];
            ++v33;
            v32->i64[0] = v34;
            v32->i64[1] = v35;
            ++v32;
            v29 = v7 > 0x10;
            v7 -= 16;
          }

          while (v29);
          v1 = (v32->i64 + v7);
          if (!v5)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  else
  {
LABEL_29:
    *(a1 + 24) = v1;
    return 0;
  }
}

unint64_t sub_10014B524(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  v5 = a2 + 0x7FFF;
  v6 = (a2 + 0x7FFF) >> 15;
  if (!v6)
  {
    return 0;
  }

  v7 = a4;
  v8 = (4 * v6 - 4);
  if (v8 >= a4)
  {
    return 0;
  }

  v9 = (v5 >> 15);
  if (!(v5 >> 15))
  {
    return 0;
  }

  v11 = a3;
  v13 = 0;
  v14 = 0;
  v112 = 4 * v6 - 4;
  v113 = a3 - 4;
  __n_4 = (a5 + 65792);
  v111 = v9;
  do
  {
    if (v14)
    {
      v15 = *(v113 + 4 * v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 + v8;
    if (v14 + 1 == v9)
    {
      v17 = v7 - v16;
    }

    else
    {
      v17 = *(v11 + 4 * v14) - v15;
    }

    if (v17 + v16 > v7)
    {
      return 0;
    }

    v114 = v14 + 1;
    __n = v17;
    v120 = (v11 + v16);
    v121 = v120 + v17;
    v18 = a2 - v13;
    v122 = 0;
    v123 = 0;
    sub_10015E36C(a5);
    if (v13 + 0x8000 <= a2)
    {
      v18 = 0x8000;
    }

    v19 = v13;
    if (!v18)
    {
LABEL_140:
      if (v19 - v13 >= 11)
      {
        v101 = 0;
        do
        {
          v102 = (a1 + v13 + v101);
          if (*v102 == 232)
          {
            v103 = *(v102 + 1);
            v104 = -v101;
            v105 = v103 >= -v101 && v103 < 12000000;
            if (v105)
            {
              if (v103 < 0)
              {
                v104 = 12000000;
              }

              *(v102 + 1) = v104 + v103;
            }

            v106 = 5;
          }

          else
          {
            v106 = 1;
          }

          v101 += v106;
        }

        while ((v101 + 10) < v19 - v13);
      }

      goto LABEL_154;
    }

    v115 = 0;
    v19 = v13;
    v116 = v13;
    do
    {
      v20 = v19;
      LODWORD(v21) = __n;
      if (__n == v18)
      {
        v115 = 1;
        v22 = 4;
      }

      else
      {
        v23 = v123;
        if (v123 >= 49)
        {
          v24 = v122;
        }

        else
        {
          v24 = v122;
          v25 = (v120 + 1);
          v26 = 48 - v123;
          v27 = v123;
          while (v25 <= v121)
          {
            v28 = *(v25 - 2);
            v23 = v27 + 16;
            LODWORD(v123) = v27 + 16;
            v24 |= v28 << v26;
            v120 = v25;
            v122 = v24;
            v25 += 2;
            v26 -= 16;
            v105 = v27 < 33;
            v27 += 16;
            if (!v105)
            {
              goto LABEL_25;
            }
          }

          v23 = v27;
          if (v27 < 3)
          {
            return 0;
          }
        }

LABEL_25:
        v22 = v24 >> 61;
        v29 = 8 * v24;
        v122 = v29;
        v30 = v23 - 3;
        LODWORD(v123) = v23 - 3;
        if ((v22 - 1) > 2)
        {
          return 0;
        }

        if (v23 > 0x33)
        {
          goto LABEL_32;
        }

        v31 = v23 + 13;
        v32 = (v120 + 1);
        v33 = 51 - v23;
        while (v32 <= v121)
        {
          v34 = *(v32 - 2);
          LODWORD(v123) = v31;
          v29 |= v34 << v33;
          v120 = v32;
          v122 = v29;
          v35 = v31 + 16;
          v32 += 2;
          v36 = v31 - 16;
          v33 -= 16;
          v31 += 16;
          if (v36 >= 33)
          {
            v30 = v35 - 16;
            goto LABEL_32;
          }
        }

        v30 = v31 - 16;
        if ((v31 - 16) < 1)
        {
          return 0;
        }

LABEL_32:
        v37 = 2 * v29;
        v122 = 2 * v29;
        v38 = v30 - 1;
        LODWORD(v123) = v30 - 1;
        if (v29 < 0)
        {
          LODWORD(v21) = v18;
        }

        else
        {
          if (v30 > 0x31)
          {
            goto LABEL_40;
          }

          v39 = v30 + 15;
          v40 = (v120 + 1);
          v41 = 49 - v30;
          while (v40 <= v121)
          {
            v42 = *(v40 - 2);
            LODWORD(v123) = v39;
            v37 |= v42 << v41;
            v120 = v40;
            v122 = v37;
            v43 = v39 + 16;
            v40 += 2;
            v44 = v39 - 16;
            v41 -= 16;
            v39 += 16;
            if (v44 >= 33)
            {
              v38 = v43 - 16;
              goto LABEL_40;
            }
          }

          v38 = v39 - 16;
          if ((v39 - 16) < 16)
          {
            return 0;
          }

LABEL_40:
          v122 = v37 << 16;
          LODWORD(v123) = v38 - 16;
          if (v37 > 0x8000FFFFFFFFFFFFLL)
          {
            return 0;
          }

          v21 = HIWORD(v37);
        }
      }

      if (v18 < v21)
      {
        return 0;
      }

      v19 += v21;
      if (v19 > a2)
      {
        return 0;
      }

      v45 = v21;
      if (v22 != 3)
      {
        if (v22 == 4)
        {
          if ((v123 & 7) != 0)
          {
            return 0;
          }

          v46 = v120 - (v123 >> 3);
          v120 = v46;
          v122 = 0;
          LODWORD(v123) = 0;
          v47 = &v46[v21];
          if (v47 > v121)
          {
            return 0;
          }

          memcpy((a1 + v20), v46, v21);
          v120 = v47;
          goto LABEL_138;
        }

        if (!v21)
        {
          goto LABEL_138;
        }

        if (v22 == 2)
        {
          v55 = 0;
          v56 = v123;
          v58 = v121;
          v57 = v122;
          v59 = v120;
          do
          {
            if (v56 > 48)
            {
              v61 = v59;
              v63 = v56;
            }

            else
            {
              v60 = 48 - v56;
              while (1)
              {
                v61 = v59 + 1;
                if ((v59 + 1) > v58)
                {
                  break;
                }

                v62 = *v59;
                v63 = v56 + 16;
                LODWORD(v123) = v56 + 16;
                v57 |= v62 << v60;
                v120 = v61;
                v122 = v57;
                v60 -= 16;
                v59 = v61;
                v105 = v56 < 33;
                v56 += 16;
                if (!v105)
                {
                  goto LABEL_66;
                }
              }

              v61 = v59;
              v63 = v56;
              if (v56 < 3)
              {
                return 0;
              }
            }

LABEL_66:
            v64 = v57 >> 61;
            v57 *= 8;
            v122 = v57;
            v56 = v63 - 3;
            LODWORD(v123) = v63 - 3;
            __n_4[v55++] = v64;
            v59 = v61;
          }

          while (v55 != 8);
          sub_1001334A8(__n_4);
        }

        if (!sub_1001338A0((a5 + 4), &v120, 0, 256, a5 + 49343) && !sub_1001338A0((a5 + 4), &v120, 0x100uLL, 240, a5 + 49343) && !sub_1001334A8(a5 + 16) && !sub_1001338A0((a5 + 32898), &v120, 0, 249, a5 + 49343) && !sub_1001334A8(a5 + 131592))
        {
          v65 = v45;
          while (1)
          {
            while (1)
            {
              v125 = 0;
              if (sub_100133790(&v125, &v120, (a5 + 4)))
              {
                return 0;
              }

              if (v125 > 0xFFu)
              {
                break;
              }

              *(a1 + v20++) = v125;
              if (!--v65)
              {
                goto LABEL_138;
              }
            }

            v66 = v125 & 7;
            if (v66 == 7)
            {
              v124 = 0;
              if (sub_100133790(&v124, &v120, (a5 + 32898)))
              {
                return 0;
              }

              v67 = v124 + 9;
            }

            else
            {
              v67 = v66 + 2;
            }

            v90 = v65 >= v67;
            v65 -= v67;
            if (!v90)
            {
              return 0;
            }

            v68 = (v125 - 256) >> 3;
            if (v68 == 2)
            {
              break;
            }

            if (v68 == 1)
            {
              v69 = a5[1];
              a5[1] = *a5;
              goto LABEL_91;
            }

            if (!v68)
            {
              v69 = *a5;
              if (*a5)
              {
                goto LABEL_120;
              }

LABEL_92:
              v70 = 0;
              goto LABEL_93;
            }

            v73 = dword_1003E3180[v68];
            v70 = dword_1003E31F8[v68];
            v124 = 0;
            if (v22 == 2 && (v68 - 8) <= 0x15)
            {
              v74 = v73 - 3;
              if ((v73 - 3) > 0x30)
              {
                return 0;
              }

              v108 = v70;
              if (v73 == 3)
              {
                LODWORD(v71) = 0;
              }

              else
              {
                v75 = v123;
                if (v123 <= 48)
                {
                  v76 = v122;
                  v77 = (v120 + 1);
                  v78 = 48 - v123;
                  while (v77 <= v121)
                  {
                    v79 = *(v77 - 2);
                    v80 = v75 + 16;
                    LODWORD(v123) = v75 + 16;
                    v76 |= v79 << v78;
                    v120 = v77;
                    v122 = v76;
                    v77 += 2;
                    v78 -= 16;
                    v105 = v75 < 33;
                    v75 += 16;
                    if (!v105)
                    {
                      goto LABEL_111;
                    }
                  }
                }

                v80 = v75;
LABEL_111:
                if (v80 < v74)
                {
                  return 0;
                }

                v87 = v122 >> (67 - v73);
                v122 <<= v74;
                LODWORD(v123) = v80 - v74;
                LODWORD(v71) = 8 * v87;
              }

              v88 = sub_100133790(&v124, &v120, __n_4);
              v70 = v108;
              if (v88)
              {
                return 0;
              }

              v72 = v124 - 2;
              goto LABEL_119;
            }

            if (v68 >= 4)
            {
              v81 = v123;
              if (v123 <= 48)
              {
                v82 = v122;
                v83 = (v120 + 1);
                v84 = 48 - v123;
                while (v83 <= v121)
                {
                  v85 = *(v83 - 2);
                  v86 = v81 + 16;
                  LODWORD(v123) = v81 + 16;
                  v82 |= v85 << v84;
                  v120 = v83;
                  v122 = v82;
                  v83 += 2;
                  v84 -= 16;
                  v105 = v81 < 33;
                  v81 += 16;
                  if (!v105)
                  {
                    goto LABEL_114;
                  }
                }
              }

              v86 = v81;
LABEL_114:
              if (v86 < v73)
              {
                return 0;
              }

              v71 = v122 >> -v73;
              v122 <<= v73;
              LODWORD(v123) = v86 - v73;
              goto LABEL_94;
            }

LABEL_93:
            LODWORD(v71) = 0;
LABEL_94:
            v72 = -2;
LABEL_119:
            v69 = v72 + v70 + v71;
            *(a5 + 1) = *a5;
            *a5 = v69;
LABEL_120:
            v89 = v69;
            if (v69)
            {
              v90 = v20 >= v69;
            }

            else
            {
              v90 = 0;
            }

            if (!v90)
            {
              return 0;
            }

            v91 = -v20;
            v92 = (a1 + v20);
            v93 = -v89;
            do
            {
              *v92 = v92[v93];
              ++v92;
              --v91;
              --v67;
            }

            while (v67);
            v20 = -v91;
            if (!v65)
            {
              goto LABEL_138;
            }
          }

          v69 = a5[2];
          a5[2] = *a5;
LABEL_91:
          *a5 = v69;
          if (v69)
          {
            goto LABEL_120;
          }

          goto LABEL_92;
        }

        return 0;
      }

      v48 = v123;
      v49 = v123 & 0xF;
      if ((v123 & 0xF) == 0)
      {
        v49 = 16;
      }

      if (v123 <= 48)
      {
        v50 = v122;
        v51 = (v120 + 1);
        v52 = 48 - v123;
        while (v51 <= v121)
        {
          v53 = *(v51 - 2);
          v54 = v48 + 16;
          LODWORD(v123) = v48 + 16;
          v50 |= v53 << v52;
          v120 = v51;
          v122 = v50;
          v51 += 2;
          v52 -= 16;
          v105 = v48 < 33;
          v48 += 16;
          if (!v105)
          {
            goto LABEL_130;
          }
        }
      }

      v54 = v48;
LABEL_130:
      v94 = __OFSUB__(v54, v49);
      v95 = v54 - v49;
      if (v95 < 0 != v94)
      {
        return 0;
      }

      if ((v95 & 7) != 0)
      {
        return 0;
      }

      v96 = v121;
      v97 = (v120 - (v95 >> 3));
      v120 = v97;
      v122 = 0;
      LODWORD(v123) = 0;
      v98 = (v97 + 6);
      if ((v97 + 6) > v121)
      {
        return 0;
      }

      v99 = *(v97 + 2);
      *a5 = *v97;
      a5[2] = v99;
      v120 = v97 + 6;
      v122 = 0;
      LODWORD(v123) = 0;
      v100 = &v98[v45];
      if (&v98[v45] > v96)
      {
        return 0;
      }

      memcpy((a1 + v20), v98, v45);
      v120 = v100;
      if ((v45 & 1) != 0 && v96 != v100)
      {
        v122 = 0;
        LODWORD(v123) = 0;
        if ((v100 + 1) > v96)
        {
          return 0;
        }

        v120 = (v100 + 1);
      }

LABEL_138:
      v18 -= v45;
      v13 = v116;
    }

    while (v18);
    v11 = a3;
    v7 = a4;
    if (!v115)
    {
      goto LABEL_140;
    }

LABEL_154:
    v13 = v19;
    v14 = v114;
    v9 = v111;
    LODWORD(v8) = v112;
  }

  while (v114 != v111);
  return v19;
}

uint64_t sub_10014BE40(uint64_t result, int a2, unsigned int a3)
{
  *(result + 64) = a2;
  *(result + 68) = a3;
  v3 = a3 + 16;
  v4 = a2 + 1;
  if (*(result + 36))
  {
    if (a3 > 0x7FFFFFFB)
    {
      v13 = -2147483636;
      a3 = 2147483644;
    }

    else
    {
      v5 = -1;
      v6 = -1 << a2;
      v7 = -5;
      v8 = ((2147483644 - a3) >> a2) + 4;
      do
      {
        ++v5;
        v7 += 2;
        v9 = v8 > 3;
        v8 >>= 1;
      }

      while (v9);
      v10 = (((((2147483644 - a3) >> a2) + 4) >> v5) & 1) + v7;
      if (v10 == -1)
      {
        v13 = a3 + 16;
      }

      else
      {
        v11 = v10 >> 1;
        v12 = (v10 & 1) << ((v10 >> 1) + 1);
        v13 = a3 + ((v10 << a2) | ~v6) + 17;
        a3 = a3 - v6 + (((6 << v11) + v12 - 5) << a2);
      }
    }

    v14 = v3 + (62 << v4);
  }

  else
  {
    v14 = v3 + (24 << v4);
    a3 += (1 << (a2 + 26)) + (-1 << (a2 + 2));
    v13 = v14;
  }

  *(result + 72) = v14;
  *(result + 76) = v13;
  *(result + 80) = a3;
  return result;
}

void sub_10014BF54(uint64_t a1, uint64_t a2, size_t a3, size_t a4, uint64_t a5, unsigned __int8 a6, unsigned __int8 a7, uint64_t a8, unint64_t a9, int a10, uint64_t a11)
{
  v12 = 0;
  v13 = 0;
  v14 = *(a5 + 96);
  v15 = *(a5 + 64);
  v102 = *(a5 + 80);
  v103 = v14;
  v16 = *(a5 + 96);
  v17 = *(a5 + 128);
  v104 = *(a5 + 112);
  v105 = v17;
  v18 = *(a5 + 32);
  v19 = *a5;
  v98 = *(a5 + 16);
  v99 = v18;
  v20 = *(a5 + 32);
  v21 = *(a5 + 64);
  v100 = *(a5 + 48);
  v101 = v21;
  v22 = *a5;
  v94 = v16;
  v95 = v104;
  v96 = *(a5 + 128);
  v97 = v22;
  v91[2] = v20;
  v91[3] = v100;
  v92 = v15;
  v93 = v102;
  v91[0] = v19;
  v91[1] = v98;
  v23 = 1;
  v24 = 1.0e99;
  v25 = v21;
  v26 = DWORD1(v21);
  do
  {
    if (v12 > 0xF)
    {
LABEL_12:
      v12 = (v12 - 1) >> 1;
    }

    else
    {
      while (1)
      {
        v90 = 0.0;
        sub_10014BE40(v91, v13, v12 << v13);
        if (v12 << v13 == v26 && v13 == v25)
        {
          v23 = 0;
        }

        if (!sub_10014C670(a8, a9, &v101, &v92, &v90))
        {
          break;
        }

        v28 = v90;
        if (v90 > v24)
        {
          break;
        }

        *(a5 + 64) = v92;
        *(a5 + 80) = v93;
        ++v12;
        v24 = v28;
        if (v12 == 16)
        {
          v24 = v28;
          goto LABEL_12;
        }
      }

      if (v12)
      {
        v12 = (v12 - 1) >> 1;
      }

      else
      {
        v12 = 0;
      }
    }

    ++v13;
  }

  while (v13 != 4);
  if (v23)
  {
    v90 = 0.0;
    sub_10014C670(a8, a9, &v101, &v101, &v90);
    if (v90 < v24)
    {
      *(a5 + 64) = v101;
      *(a5 + 80) = v102;
    }
  }

  if (v25 == *(a5 + 64))
  {
    v29 = a1;
    if (!a9 || v26 == *(a5 + 68))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v29 = a1;
    if (!a9)
    {
      goto LABEL_35;
    }
  }

  v30 = v26 + 16;
  v31 = a8 + 8;
  v32 = a9;
  do
  {
    if ((*(v31 - 4) & 0x1FFFFFF) != 0 && *(v31 + 4) >= 0x80u)
    {
      v33 = *(v31 + 6);
      v34 = v33 & 0x3FF;
      if (v34 >= v30)
      {
        v34 = ((v34 - v26 - 16) & ~(-1 << v25)) + v30 + ((((((v34 - v26 - 16) >> v25) & 1 | 2) << (v33 >> 10)) + *v31 - 4) << v25);
      }

      v35 = v34;
      v36 = *(a5 + 68);
      v37 = v36 + 16;
      if (v36 + 16 <= v34)
      {
        v39 = *(a5 + 64);
        v40 = v35 - v36 + (4 << v39) - 16;
        v41 = (__clz(v40) ^ 0x1F) - 1;
        v42 = ((v40 >> v41) & 1 | 2) << v41;
        LODWORD(v35) = ((v40 & ~(-1 << v39)) + v37 + ((((v40 >> v41) & 1 | (2 * (v41 - v39))) + 65534) << v39)) | ((v41 - v39) << 10);
        v38 = (v40 - v42) >> v39;
      }

      else
      {
        LODWORD(v38) = 0;
      }

      *(v31 + 6) = v35;
      *v31 = v38;
    }

    v31 += 16;
    --v32;
  }

  while (v32);
LABEL_35:
  sub_1001473E0(v29, a8, a9, a2, a3, a4, a5, a11, a11 + 48, a11 + 96);
  if (*(v29 + 24))
  {
    return;
  }

  v43 = *a11;
  if (*(a5 + 32))
  {
    v85 = 0;
    v44 = 1;
  }

  else
  {
    if (v43)
    {
      v85 = sub_100166C7C(v29);
      if (*(v29 + 24))
      {
        return;
      }

      v43 = *a11;
      if (*a11)
      {
        v45 = (v43 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v46 = vdupq_n_s64(v43 - 1);
        v47 = xmmword_10037C710;
        v48 = xmmword_1003772E0;
        v49 = (v85 + 8);
        v50 = vdupq_n_s64(4uLL);
        v44 = 64;
        do
        {
          v51 = vmovn_s64(vcgeq_u64(v46, v48));
          if (vuzp1_s16(v51, *v46.i8).u8[0])
          {
            *(v49 - 2) = a10;
          }

          if (vuzp1_s16(v51, *&v46).i8[2])
          {
            *(v49 - 1) = a10;
          }

          if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v47))).i32[1])
          {
            *v49 = a10;
            v49[1] = a10;
          }

          v47 = vaddq_s64(v47, v50);
          v48 = vaddq_s64(v48, v50);
          v49 += 4;
          v45 -= 4;
        }

        while (v45);
        goto LABEL_53;
      }
    }

    else
    {
      v85 = 0;
    }

    v44 = 64;
  }

LABEL_53:
  v52 = v43 * v44;
  if (v43 * v44)
  {
    v83 = sub_100166C7C(v29);
    if (*(v29 + 24))
    {
      return;
    }

    v53 = v52;
    v54 = v83;
    do
    {
      bzero(v54, 0x408uLL);
      v54[129] = 0x7FF0000000000000;
      v54 += 130;
      --v53;
    }

    while (v53);
  }

  else
  {
    if (*(v29 + 24))
    {
      return;
    }

    v83 = 0;
  }

  v55 = 4 * *(a11 + 96);
  if (v55)
  {
    v56 = sub_100166C7C(v29);
    if (*(v29 + 24))
    {
      return;
    }

    v57 = v56;
    v80 = v56;
    do
    {
      bzero(v57, 0x888uLL);
      v57[273] = 0x7FF0000000000000;
      v57 += 274;
      --v55;
    }

    while (v55);
    v58 = v80;
  }

  else
  {
    if (*(v29 + 24))
    {
      return;
    }

    v58 = 0;
  }

  v59 = *(a11 + 48);
  *(a11 + 200) = v59;
  if (v59)
  {
    v60 = sub_100166C7C(v29);
  }

  else
  {
    v60 = 0;
  }

  *(a11 + 192) = v60;
  if (!*(v29 + 24))
  {
    v61 = *(a11 + 200);
    if (v61)
    {
      do
      {
        bzero(v60, 0xB08uLL);
        v60[353] = 0x7FF0000000000000;
        v60 += 354;
        --v61;
      }

      while (v61);
      v60 = *(a11 + 192);
    }

    sub_10016BFDC(a8, a9, a11, a11 + 48, a11 + 96, a2, a3, a4, a6, a7, v85, v83, v60, v58);
    sub_100166DB4(v29, v85);
    v62 = *a11 << 6;
    *(a11 + 152) = v62;
    v63 = v62 ? sub_100166C7C(v29) : 0;
    *(a11 + 144) = v63;
    if (!*(v29 + 24))
    {
      v64 = *(a11 + 152);
      *(a11 + 184) = v64;
      if (v64)
      {
        v65 = sub_100166C7C(v29);
        v66 = *(v29 + 24);
        *(a11 + 176) = v65;
        if (v66)
        {
          return;
        }

        v67 = v65;
      }

      else
      {
        v67 = 0;
        *(a11 + 176) = 0;
      }

      sub_10015C760(v29, v83, v52, 0x100uLL, v67, (a11 + 184), *(a11 + 144));
      if (!*(v29 + 24))
      {
        sub_100166DB4(v29, v83);
        if (*(a5 + 32))
        {
          v68 = *a11;
          if (*a11)
          {
            v69 = *(a11 + 144);
            v70 = v69 + (v68 << 8);
            do
            {
              --v68;
              v71 = (v69 + 4 * v68);
              v72 = vld1q_dup_f32(v71);
              v73 = -256;
              do
              {
                *(v70 + v73) = v72;
                v73 += 16;
              }

              while (v73);
              v70 -= 256;
            }

            while (v68);
          }
        }

        v74 = *(a11 + 96);
        *(a11 + 168) = 4 * v74;
        v75 = 4 * v74 ? sub_100166C7C(v29) : 0;
        *(a11 + 160) = v75;
        if (!*(v29 + 24))
        {
          v76 = *(a11 + 168);
          *(a11 + 216) = v76;
          if (v76)
          {
            v77 = sub_100166C7C(v29);
            v78 = *(v29 + 24);
            *(a11 + 208) = v77;
            if (v78)
            {
              return;
            }

            v79 = v77;
          }

          else
          {
            v79 = 0;
            *(a11 + 208) = 0;
          }

          sub_10015DF58(v29, v58, *(a11 + 168), 0x100uLL, v79, (a11 + 216), *(a11 + 160));
          if (!*(v29 + 24))
          {

            sub_100166DB4(v29, v58);
          }
        }
      }
    }
  }
}

uint64_t sub_10014C670(uint64_t a1, uint64_t a2, int *a3, int *a4, double *a5)
{
  bzero(v25, 0x888uLL);
  v27 = 0x7FF0000000000000;
  v10 = *a3;
  v11 = *a4;
  v12 = *a3 != *a4 || a3[1] != a4[1];
  v13 = 0;
  if (a2)
  {
    v14 = a1 + 8;
    v15 = 0.0;
    while (1)
    {
      if ((*(v14 - 4) & 0x1FFFFFF) != 0 && *(v14 + 4) >= 0x80u)
      {
        v16 = *(v14 + 6);
        if (v12)
        {
          v17 = v16 & 0x3FF;
          v18 = a3[1];
          if (v17 >= v18 + 16)
          {
            v17 = v18 + 16 + ((v17 - v18 - 16) & ~(-1 << v10)) + ((((((v17 - v18 - 16) >> v10) & 1 | 2) << (v16 >> 10)) + *v14 - 4) << v10);
          }

          if (*(a4 + 2) < v17)
          {
            return 0;
          }

          v19 = a4[1];
          v20 = v19 + 16;
          if (v19 + 16 <= v17)
          {
            v21 = (4 << v11) - 16 + v17 - v19;
            v22 = __clz(v21);
            v16 = ((v21 & ~(-1 << v11)) + v20 + ((((v21 >> ((v22 ^ 0x1F) - 1)) & 1 | (2 * ((v22 ^ 0x1F) - 1 - v11))) + 65534) << v11)) | (((v22 ^ 0x1F) - 1 - v11) << 10);
          }

          else
          {
            LOWORD(v16) = v17;
          }
        }

        ++v25[v16 & 0x3FF];
        ++v13;
        v15 = v15 + (v16 >> 10);
      }

      v14 += 16;
      if (!--a2)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = 0.0;
LABEL_19:
  v26 = v13;
  sub_10015B9F4(v25);
  *a5 = v15 + v23;
  return 1;
}

void sub_10014C854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unint64_t a8, uint64_t a9, unsigned int *a10, unint64_t a11, uint64_t a12)
{
  if (a8 == 1)
  {
    v85 = 0;
    v83 = 0u;
    memset(v84, 0, sizeof(v84));
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    v16 = 0;
    if (a11)
    {
      v17 = a11;
      v18 = a10;
      do
      {
        v19 = *v18;
        v18 += 4;
        v16 += v19;
        --v17;
      }

      while (v17);
    }

    sub_10014CF6C(a1, &v81, v16, a12, (a12 + 176), (a12 + 184));
    if (!*(a1 + 24))
    {
      sub_10014D110(a1, &v73, a11, a12 + 48, (a12 + 192), (a12 + 200));
      if (!*(a1 + 24))
      {
        sub_10014D2B8(a1, &v65, a11, a12 + 96, (a12 + 208), (a12 + 216));
        if (!*(a1 + 24))
        {
          if (a11)
          {
            for (i = 0; i != a11; ++i)
            {
              v21 = &a10[4 * i];
              v23 = *v21;
              v22 = v21[1];
              v24 = *(v21 + 6);
              v25 = *(v21 + 7);
              sub_10014D45C(&v73, *(v21 + 6));
              if (v23)
              {
                do
                {
                  sub_10014D4A4(&v81, *(a2 + (a3++ & a4)));
                  --v23;
                }

                while (v23);
              }

              v26 = v22 & 0x1FFFFFF;
              if (v26)
              {
                if (v24 >= 0x80)
                {
                  sub_10014D4EC(&v65, v25 & 0x3FF);
                }
              }

              a3 += v26;
            }
          }

          sub_10014D534(&v81, 1);
          sub_10014E310(&v73);
          sub_10014E8F8(&v65);
        }
      }
    }
  }

  else
  {
    memset(v84 + 8, 0, 264);
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    if (a11)
    {
      v28 = 0;
      v29 = a11;
      v30 = a10;
      do
      {
        v31 = *v30;
        v30 += 4;
        v28 += v31;
        --v29;
      }

      while (v29);
      v32 = v28 >> 9;
    }

    else
    {
      v32 = 0;
    }

    *&v81 = 256;
    *(&v81 + 1) = a8;
    *&v82 = 0x100 / a8;
    *(&v82 + 1) = 512;
    v83 = 0x4079000000000000uLL;
    *&v84[0] = a12;
    *&v84[1] = a12 + 184;
    *(&v84[1] + 1) = 512;
    if (v32 + 1 >= 0x100 / a8 + 1)
    {
      v33 = 0x100 / a8 + 1;
    }

    else
    {
      v33 = v32 + 1;
    }

    v63 = v33;
    v85 = 0;
    v84[2] = 0uLL;
    v34 = *(a12 + 32);
    if (v34 <= v32)
    {
      if (!v34)
      {
        v34 = v32 + 1;
      }

      do
      {
        v35 = v34;
        v34 *= 2;
      }

      while (v35 <= v32);
      v36 = sub_100166C7C(a1);
      v37 = v36;
      if (!*(a1 + 24))
      {
        v38 = *(a12 + 32);
        if (v38)
        {
          memcpy(v36, *(a12 + 16), v38);
        }
      }

      sub_100166DB4(a1, *(a12 + 16));
      *(a12 + 16) = v37;
      *(a12 + 32) = v35;
    }

    v39 = *(a12 + 40);
    if (v39 <= v32)
    {
      if (!v39)
      {
        v39 = v32 + 1;
      }

      do
      {
        v40 = v39;
        v39 *= 2;
      }

      while (v40 <= v32);
      v41 = sub_100166C7C(a1);
      v42 = v41;
      if (!*(a1 + 24))
      {
        v43 = *(a12 + 40);
        if (v43)
        {
          memcpy(v41, *(a12 + 24), 4 * v43);
        }
      }

      sub_100166DB4(a1, *(a12 + 24));
      *(a12 + 24) = v42;
      *(a12 + 40) = v40;
    }

    if (!*(a1 + 24))
    {
      *(a12 + 8) = v32 + 1;
      *(a12 + 184) = v63 * a8;
      if (v63 * a8)
      {
        v44 = sub_100166C7C(a1);
        v45 = *(a1 + 24);
        *(a12 + 176) = v44;
        *(&v84[0] + 1) = v44;
        if (v45)
        {
          return;
        }

        v46 = v44;
      }

      else
      {
        v46 = 0;
        *(a12 + 176) = 0;
        *(&v84[0] + 1) = 0;
      }

      v47 = a5;
      v64 = a6;
      if (a8 <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = a8;
      }

      do
      {
        bzero(v46, 0x408uLL);
        v46[129] = 0x7FF0000000000000;
        v46 += 130;
        --v48;
      }

      while (v48);
      v84[3] = 0uLL;
      if (!*(a1 + 24))
      {
        sub_10014D110(a1, &v73, a11, a12 + 48, (a12 + 192), (a12 + 200));
        if (!*(a1 + 24))
        {
          sub_10014D2B8(a1, &v65, a11, a12 + 96, (a12 + 208), (a12 + 216));
          if (!*(a1 + 24))
          {
            if (a11)
            {
              v49 = 0;
              while (1)
              {
                v60 = v49;
                v50 = &a10[4 * v49];
                v51 = *v50;
                v56 = *(v50 + 7);
                v57 = *(v50 + 6);
                v58 = v50[1];
                sub_10014D45C(&v73, v57);
                if (v51)
                {
                  break;
                }

LABEL_61:
                v55 = v58 & 0x1FFFFFF;
                a3 += v55;
                if (v55)
                {
                  v64 = *(a2 + ((a3 - 2) & a4));
                  v47 = *(a2 + ((a3 - 1) & a4));
                  if (v57 >= 0x80)
                  {
                    sub_10014D4EC(&v65, v56 & 0x3FF);
                  }
                }

                v49 = v60 + 1;
                if (v60 + 1 == a11)
                {
                  goto LABEL_65;
                }
              }

              while (1)
              {
                v52 = *(a7 + 256 + v64);
                v53 = v47;
                v47 = *(a2 + (a3 & a4));
                v64 = v53;
                v54 = *(&v84[0] + 1) + 1040 * *(&v84[2] + 1) + 1040 * *(a9 + 4 * (v52 | *(a7 + v53)));
                ++*(v54 + 4 * v47);
                ++*(v54 + 1024);
                if (++*&v84[2] == *(&v84[1] + 1))
                {
                  sub_10014DB00(&v81, a1, 0);
                }

                if (*(a1 + 24))
                {
                  break;
                }

                ++a3;
                if (!--v51)
                {
                  goto LABEL_61;
                }
              }
            }

            else
            {
LABEL_65:
              sub_10014DB00(&v81, a1, 1);
              if (!*(a1 + 24))
              {
                sub_10014E310(&v73);
                sub_10014E8F8(&v65);
                sub_10014EEE0(a1, a8, a9, a12);
              }
            }
          }
        }
      }
    }
  }
}

void sub_10014CE58(unsigned int a1, void *a2)
{
  if (a2[23])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      sub_10013CDD0(0x100uLL, (a2[22] + v4), v10);
      ++v5;
      v4 += 1040;
    }

    while (v5 < a2[23]);
  }

  if (a2[25])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      sub_10013CDD0(0x2C0uLL, (a2[24] + v6), v10);
      ++v7;
      v6 += 2832;
    }

    while (v7 < a2[25]);
  }

  if (a2[27])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      sub_10013CDD0(a1, (a2[26] + v8), v10);
      ++v9;
      v8 += 2192;
    }

    while (v9 < a2[27]);
  }
}

void sub_10014CF6C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v11 = a3 >> 9;
  v12 = (a3 >> 9) + 1;
  if (v12 < 0x101)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = 257;
  }

  *a2 = xmmword_1003E3270;
  *(a2 + 16) = 0x4079000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = a4;
  *(a2 + 48) = a6;
  *(a2 + 56) = 512;
  *(a2 + 112) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v14 = *(a4 + 32);
  if (v14 <= a3 >> 9)
  {
    if (!v14)
    {
      v14 = (a3 >> 9) + 1;
    }

    do
    {
      v15 = v14;
      v14 *= 2;
    }

    while (v15 <= v11);
    v16 = sub_100166C7C(a1);
    v17 = v16;
    if (!*(a1 + 24))
    {
      v18 = *(a4 + 32);
      if (v18)
      {
        memcpy(v16, *(a4 + 16), v18);
      }
    }

    sub_100166DB4(a1, *(a4 + 16));
    *(a4 + 16) = v17;
    *(a4 + 32) = v15;
  }

  v19 = *(a4 + 40);
  if (v19 <= v11)
  {
    if (!v19)
    {
      v19 = v12;
    }

    do
    {
      v20 = v19;
      v19 *= 2;
    }

    while (v20 <= v11);
    v21 = sub_100166C7C(a1);
    v22 = v21;
    if (!*(a1 + 24))
    {
      v23 = *(a4 + 40);
      if (v23)
      {
        memcpy(v21, *(a4 + 24), 4 * v23);
      }
    }

    sub_100166DB4(a1, *(a4 + 24));
    *(a4 + 24) = v22;
    *(a4 + 40) = v20;
  }

  if (!*(a1 + 24))
  {
    *(*(a2 + 32) + 8) = v12;
    *a6 = v13;
    v24 = sub_100166C7C(a1);
    *a5 = v24;
    *(a2 + 40) = v24;
    if (!*(a1 + 24))
    {
      v25 = v24;
      bzero(v24, 0x408uLL);
      v25[129] = 0x7FF0000000000000;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
    }
  }
}

void sub_10014D110(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v11 = a3 >> 10;
  v12 = (a3 >> 10) + 1;
  if (v12 < 0x101)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = 257;
  }

  *a2 = xmmword_1003E3280;
  *(a2 + 16) = 0x407F400000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = a4;
  *(a2 + 48) = a6;
  *(a2 + 56) = 1024;
  *(a2 + 112) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v14 = *(a4 + 32);
  if (v14 <= a3 >> 10)
  {
    if (!v14)
    {
      v14 = (a3 >> 10) + 1;
    }

    do
    {
      v15 = v14;
      v14 *= 2;
    }

    while (v15 <= v11);
    v16 = sub_100166C7C(a1);
    v17 = v16;
    if (!*(a1 + 24))
    {
      v18 = *(a4 + 32);
      if (v18)
      {
        memcpy(v16, *(a4 + 16), v18);
      }
    }

    sub_100166DB4(a1, *(a4 + 16));
    *(a4 + 16) = v17;
    *(a4 + 32) = v15;
  }

  v19 = *(a4 + 40);
  if (v19 <= v11)
  {
    if (!v19)
    {
      v19 = v12;
    }

    do
    {
      v20 = v19;
      v19 *= 2;
    }

    while (v20 <= v11);
    v21 = sub_100166C7C(a1);
    v22 = v21;
    if (!*(a1 + 24))
    {
      v23 = *(a4 + 40);
      if (v23)
      {
        memcpy(v21, *(a4 + 24), 4 * v23);
      }
    }

    sub_100166DB4(a1, *(a4 + 24));
    *(a4 + 24) = v22;
    *(a4 + 40) = v20;
  }

  if (!*(a1 + 24))
  {
    *(*(a2 + 32) + 8) = v12;
    *a6 = v13;
    v24 = sub_100166C7C(a1);
    *a5 = v24;
    *(a2 + 40) = v24;
    if (!*(a1 + 24))
    {
      v25 = v24;
      bzero(v24, 0xB08uLL);
      v25[353] = 0x7FF0000000000000;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
    }
  }
}

void sub_10014D2B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v11 = a3 >> 9;
  v12 = (a3 >> 9) + 1;
  if (v12 < 0x101)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = 257;
  }

  *a2 = xmmword_1003E3290;
  *(a2 + 16) = 0x4059000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = a4;
  *(a2 + 48) = a6;
  *(a2 + 56) = 512;
  *(a2 + 112) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v14 = *(a4 + 32);
  if (v14 <= a3 >> 9)
  {
    if (!v14)
    {
      v14 = (a3 >> 9) + 1;
    }

    do
    {
      v15 = v14;
      v14 *= 2;
    }

    while (v15 <= v11);
    v16 = sub_100166C7C(a1);
    v17 = v16;
    if (!*(a1 + 24))
    {
      v18 = *(a4 + 32);
      if (v18)
      {
        memcpy(v16, *(a4 + 16), v18);
      }
    }

    sub_100166DB4(a1, *(a4 + 16));
    *(a4 + 16) = v17;
    *(a4 + 32) = v15;
  }

  v19 = *(a4 + 40);
  if (v19 <= v11)
  {
    if (!v19)
    {
      v19 = v12;
    }

    do
    {
      v20 = v19;
      v19 *= 2;
    }

    while (v20 <= v11);
    v21 = sub_100166C7C(a1);
    v22 = v21;
    if (!*(a1 + 24))
    {
      v23 = *(a4 + 40);
      if (v23)
      {
        memcpy(v21, *(a4 + 24), 4 * v23);
      }
    }

    sub_100166DB4(a1, *(a4 + 24));
    *(a4 + 24) = v22;
    *(a4 + 40) = v20;
  }

  if (!*(a1 + 24))
  {
    *(*(a2 + 32) + 8) = v12;
    *a6 = v13;
    v24 = sub_100166C7C(a1);
    *a5 = v24;
    *(a2 + 40) = v24;
    if (!*(a1 + 24))
    {
      v25 = v24;
      bzero(v24, 0x888uLL);
      v25[273] = 0x7FF0000000000000;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
    }
  }
}

void sub_10014D45C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40) + 2832 * *(a1 + 72);
  ++*(v2 + 4 * a2);
  ++*(v2 + 2816);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64) + 1;
  *(a1 + 64) = v4;
  if (v4 == v3)
  {
    sub_10014E310(a1);
  }
}

void sub_10014D4A4(void *a1, uint64_t a2)
{
  v2 = a1[5] + 1040 * a1[9];
  ++*(v2 + 4 * a2);
  ++*(v2 + 1024);
  v3 = a1[7];
  v4 = a1[8] + 1;
  a1[8] = v4;
  if (v4 == v3)
  {
    sub_10014D534(a1, 0);
  }
}

void sub_10014D4EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40) + 2192 * *(a1 + 72);
  ++*(v2 + 4 * a2);
  ++*(v2 + 2176);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64) + 1;
  *(a1 + 64) = v4;
  if (v4 == v3)
  {
    sub_10014E8F8(a1);
  }
}

void sub_10014D534(void *a1, int a2)
{
  v3 = a1;
  v4 = a1[4];
  v5 = a1[5];
  if (a1[8] <= a1[1])
  {
    v6 = a1[1];
  }

  else
  {
    v6 = a1[8];
  }

  a1[8] = v6;
  if (!a1[3])
  {
    v13 = 0;
    v14 = 0;
    v15 = v4[2];
    *v4[3] = v6;
    *v15 = 0;
    v16 = &v5[*a1];
    v17 = 0.0;
    v18 = v5;
    if (*a1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      if (v18 >= v16)
      {
        v27 = v13;
        if (v13)
        {
          if (v13 > 0xFF)
          {
            v28 = log2(v13);
          }

          else
          {
            v28 = dbl_1003EDA70[v13];
          }

          v17 = v17 + v27 * v28;
        }

        if (v17 >= v27)
        {
          v29 = v17;
        }

        else
        {
          v29 = v13;
        }

        *(v3 + 12) = v29;
        *(v3 + 13) = v29;
        ++v3[3];
        ++*v4;
        v30 = v3[9] + 1;
        v3[9] = v30;
        if (v30 < *v3[6])
        {
          v31 = &v5[260 * v30];
          bzero(v31, 0x408uLL);
          *(v31 + 129) = 0x7FF0000000000000;
        }

        v3[8] = 0;
        goto LABEL_83;
      }

      v20 = *v18++;
      v19 = v20;
      v14 = v13 + v20;
      v21 = v20;
      if (v20 > 0xFF)
      {
        v22 = log2(v21);
      }

      else
      {
        v22 = dbl_1003EDA70[v19];
      }

      v17 = v17 - v21 * v22;
LABEL_14:
      v24 = *v18++;
      v23 = v24;
      v13 = v14 + v24;
      v25 = v24;
      if (v24 > 0xFF)
      {
        v26 = log2(v25);
      }

      else
      {
        v26 = dbl_1003EDA70[v23];
      }

      v17 = v17 - v25 * v26;
    }
  }

  if (!v6)
  {
    goto LABEL_83;
  }

  v88 = a1[3];
  v89 = v6;
  v7 = 0;
  v8 = 0;
  v95 = a1 + 12;
  v96 = v5;
  v9 = &v5[260 * a1[9]];
  v10 = *a1;
  v11 = &v9[*a1];
  v12 = 0.0;
  __src = v9;
  if ((*a1 & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v37 = *v9++;
    v36 = v37;
    v7 = v8 + v37;
    v38 = v37;
    v39 = v37 > 0xFF ? log2(v38) : dbl_1003EDA70[v36];
    v12 = v12 - v38 * v39;
LABEL_29:
    if (v9 >= v11)
    {
      break;
    }

    v33 = *v9++;
    v32 = v33;
    v8 = v7 + v33;
    v34 = v33;
    if (v33 > 0xFF)
    {
      v35 = log2(v34);
    }

    else
    {
      v35 = dbl_1003EDA70[v32];
    }

    v12 = v12 - v34 * v35;
  }

  v40 = v7;
  v91 = a2;
  v90 = v4;
  if (v7)
  {
    if (v7 > 0xFF)
    {
      v41 = log2(v7);
    }

    else
    {
      v41 = dbl_1003EDA70[v7];
    }

    v12 = v12 + v40 * v41;
  }

  v42 = 0;
  v92 = v3;
  v94 = v3 + 10;
  v43 = __dst;
  if (v12 < v40)
  {
    v12 = v40;
  }

  v44 = &v100;
  v45 = &v98;
  v46 = 1;
  do
  {
    v47 = v46;
    v48 = v94[v42];
    memcpy(v43, __src, 0x410uLL);
    v49 = 0;
    v50 = &v96[260 * v48];
    *(v43 + 128) += *(v50 + 128);
    do
    {
      v43[v49] += v50[v49];
      ++v49;
    }

    while (v49 != 256);
    v51 = 0;
    v52 = 0;
    v53 = &v43[v10];
    v54 = 0.0;
    if (v10)
    {
      goto LABEL_57;
    }

    while (v43 < v53)
    {
      v56 = *v43++;
      v55 = v56;
      v52 = v51 + v56;
      v57 = v56;
      if (v56 > 0xFF)
      {
        v58 = log2(v57);
      }

      else
      {
        v58 = dbl_1003EDA70[v55];
      }

      v54 = v54 - v57 * v58;
LABEL_57:
      v62 = *v43++;
      v61 = v62;
      v51 = v52 + v62;
      v63 = v62;
      if (v62 > 0xFF)
      {
        v64 = log2(v63);
      }

      else
      {
        v64 = dbl_1003EDA70[v61];
      }

      v54 = v54 - v63 * v64;
    }

    v59 = v51;
    if (v51)
    {
      if (v51 > 0xFF)
      {
        v60 = log2(v51);
      }

      else
      {
        v60 = dbl_1003EDA70[v51];
      }

      v54 = v54 + v59 * v60;
    }

    v46 = 0;
    if (v54 >= v59)
    {
      v65 = v54;
    }

    else
    {
      v65 = v51;
    }

    *v44 = v65;
    *v45 = v65 - v12 - *&v95[v42];
    v44 = &v99;
    v45 = &v97;
    v43 = v102;
    v42 = 1;
  }

  while ((v47 & 1) != 0);
  v4 = v90;
  v66 = *v90;
  a2 = v91;
  if (*v90 >= 0x100uLL)
  {
    v67 = v97;
    v68 = v98;
    v3 = v92;
    v71 = v96;
    v73 = v88;
    v72 = v89;
  }

  else
  {
    v67 = v97;
    v68 = v98;
    v3 = v92;
    v69 = *(v92 + 2);
    v70 = v98 <= v69 || v97 <= v69;
    v71 = v96;
    v73 = v88;
    v72 = v89;
    if (!v70)
    {
      v74 = v90[2];
      *(v90[3] + 4 * v88) = v89;
      *(v74 + v88) = v66;
      v75 = v92[9];
      v92[11] = v92[10];
      v76 = *v90;
      v77 = v92[12];
      *(v92 + 12) = v12;
      v92[13] = v77;
      ++v92[3];
      v92[10] = v76;
      ++*v90;
      v92[9] = v75 + 1;
      if ((v75 + 1) < *v92[6])
      {
        v78 = &v96[260 * v75 + 260];
        bzero(v78, 0x408uLL);
        *(v78 + 129) = 0x7FF0000000000000;
      }

      v92[14] = 0;
      v79 = v92[1];
      v92[8] = 0;
LABEL_82:
      v3[7] = v79;
      goto LABEL_83;
    }
  }

  v80 = (v90[3] + 4 * v73);
  if (v67 < v68 + -20.0)
  {
    *v80 = v72;
    *(v90[2] + v73) = *(v90[2] + v73 - 2);
    v81 = v3[10];
    v82 = v3[11];
    v3[10] = v82;
    v3[11] = v81;
    memcpy(&v71[260 * v82], v102, 0x410uLL);
    v83 = v3[12];
    v3[12] = v99;
    v3[13] = v83;
    ++v3[3];
    v3[8] = 0;
    v84 = &v71[260 * v3[9]];
    bzero(v84, 0x408uLL);
    *(v84 + 129) = 0x7FF0000000000000;
    v3[14] = 0;
    v79 = v3[1];
    goto LABEL_82;
  }

  *(v80 - 1) += v72;
  memcpy(&v71[260 * *v94], __dst, 0x410uLL);
  v85 = v100;
  *v95 = v100;
  if (*v90 == 1)
  {
    v3[13] = v85;
  }

  v3[8] = 0;
  v86 = &v71[260 * v3[9]];
  bzero(v86, 0x408uLL);
  *(v86 + 129) = 0x7FF0000000000000;
  v87 = v3[14] + 1;
  v3[14] = v87;
  if (v87 >= 2)
  {
    v79 = v3[7] + v3[1];
    goto LABEL_82;
  }

LABEL_83:
  if (a2)
  {
    *v3[6] = *v4;
    v4[1] = v3[3];
  }
}

void sub_10014DB00(void *a1, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = a1;
  v6 = a1[1];
  v8 = a1[6];
  v7 = a1[7];
  v9 = a1[10];
  v10 = a1[3];
  if (v9 < v10)
  {
    a1[10] = v10;
    v9 = v10;
  }

  v11 = (a1 + 14);
  v122 = v6;
  if (!a1[5])
  {
    v12 = v8[2];
    v112 = v8;
    *v8[3] = v9;
    *v12 = 0;
    if (!v6)
    {
LABEL_29:
      ++v5[5];
      v8 = v112;
      ++*v112;
      v33 = v5[11] + v6;
      v5[11] = v33;
      if (v33 < *v5[8])
      {
        v34 = v5[1];
        if (v34)
        {
          v35 = (v5[7] + 1040 * v33);
          do
          {
            bzero(v35, 0x408uLL);
            v35[129] = 0x7FF0000000000000;
            v35 += 130;
            --v34;
          }

          while (v34);
        }
      }

      v5[10] = 0;
      v3 = a3;
LABEL_34:
      if (!v3)
      {
        return;
      }

LABEL_35:
      *v5[8] = *v8 * v6;
      v8[1] = v5[5];
      return;
    }

    v13 = *a1;
    v14 = *a1;
    v15 = v6;
    while (1)
    {
      v16 = v11;
      v17 = 0;
      v18 = 0;
      v19 = v7;
      v20 = 0.0;
      if (v13)
      {
        goto LABEL_18;
      }

      while (v19 < &v7[v14])
      {
        v22 = *v19++;
        v21 = v22;
        v18 = v17 + v22;
        v23 = v22;
        if (v22 > 0xFF)
        {
          v24 = log2(v23);
        }

        else
        {
          v24 = dbl_1003EDA70[v21];
        }

        v20 = v20 - v23 * v24;
LABEL_18:
        v29 = *v19++;
        v28 = v29;
        v17 = v18 + v29;
        v30 = v29;
        if (v29 > 0xFF)
        {
          v31 = log2(v30);
        }

        else
        {
          v31 = dbl_1003EDA70[v28];
        }

        v20 = v20 - v30 * v31;
      }

      v25 = v17;
      if (v17)
      {
        v6 = v122;
        v26 = v16;
        if (v17 > 0xFF)
        {
          v27 = log2(v17);
        }

        else
        {
          v27 = dbl_1003EDA70[v17];
        }

        v20 = v20 + v25 * v27;
      }

      else
      {
        v6 = v122;
        v26 = v16;
      }

      if (v20 >= v25)
      {
        v32 = v20;
      }

      else
      {
        v32 = v17;
      }

      *v26 = v32;
      v26[v6] = v32;
      v11 = v26 + 1;
      v7 += 260;
      if (!--v15)
      {
        goto LABEL_29;
      }
    }
  }

  if (!v9)
  {
    goto LABEL_34;
  }

  v111 = v8;
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v116 = sub_100166C7C(a2);
  }

  else
  {
    v116 = 0;
  }

  v123 = 0.0;
  v124 = 0.0;
  if (!*(a2 + 24))
  {
    v108 = a2;
    v113 = v7;
    v110 = v3;
    if (v6)
    {
      v36 = 0;
      v37 = *v5;
      v115 = v5 + 12;
      v114 = 1040 * v6;
      v120 = v7;
      v121 = v116;
      v119 = v5;
      do
      {
        v38 = 0;
        v39 = 0;
        v40 = &v113[260 * v5[11] + 260 * v36];
        v41 = &v40[v37];
        v42 = 0.0;
        __src = v40;
        if (v37)
        {
          goto LABEL_50;
        }

        while (v40 < v41)
        {
          v44 = *v40++;
          v43 = v44;
          v39 = v38 + v44;
          v45 = v44;
          if (v44 > 0xFF)
          {
            v46 = log2(v45);
          }

          else
          {
            v46 = dbl_1003EDA70[v43];
          }

          v42 = v42 - v45 * v46;
LABEL_50:
          v50 = *v40++;
          v49 = v50;
          v38 = v39 + v50;
          v51 = v50;
          if (v50 > 0xFF)
          {
            v52 = log2(v51);
          }

          else
          {
            v52 = dbl_1003EDA70[v49];
          }

          v42 = v42 - v51 * v52;
        }

        v47 = v38;
        if (v38)
        {
          if (v38 > 0xFF)
          {
            v48 = log2(v38);
          }

          else
          {
            v48 = dbl_1003EDA70[v38];
          }

          v53 = v113;
          v42 = v42 + v47 * v48;
        }

        else
        {
          v53 = v113;
        }

        v54 = 0;
        if (v42 < v47)
        {
          v42 = v38;
        }

        v126[v36] = v42;
        v55 = v36;
        v117 = &v53[260 * v36];
        v56 = &v124;
        v57 = 1;
        do
        {
          v58 = v11;
          v59 = v57;
          v60 = v55 + v54 * v6;
          v61 = v115[v54];
          v62 = (v116 + 1040 * v60);
          memcpy(v62, __src, 0x410uLL);
          v63 = 0;
          *(v62 + 128) += *&v117[260 * v61 + 256];
          do
          {
            *(v121 + v114 * v54 + v63 * 4) += v120[260 * v61 + v63];
            ++v63;
          }

          while (v63 != 256);
          v64 = 0;
          v65 = 0;
          v37 = *v119;
          v66 = &v62[4 * *v119];
          v67 = 0.0;
          if (*v119)
          {
            goto LABEL_71;
          }

          while (v62 < v66)
          {
            v69 = *v62;
            v62 += 4;
            v68 = v69;
            v65 = v64 + v69;
            v70 = v69;
            if (v69 > 0xFF)
            {
              v71 = log2(v70);
            }

            else
            {
              v71 = dbl_1003EDA70[v68];
            }

            v67 = v67 - v70 * v71;
LABEL_71:
            v75 = *v62;
            v62 += 4;
            v74 = v75;
            v64 = v65 + v75;
            v76 = v75;
            if (v75 > 0xFF)
            {
              v77 = log2(v76);
            }

            else
            {
              v77 = dbl_1003EDA70[v74];
            }

            v67 = v67 - v76 * v77;
          }

          v72 = v64;
          if (v64)
          {
            v6 = v122;
            v11 = v58;
            if (v64 > 0xFF)
            {
              v73 = log2(v64);
            }

            else
            {
              v73 = dbl_1003EDA70[v64];
            }

            v67 = v67 + v72 * v73;
          }

          else
          {
            v6 = v122;
            v11 = v58;
          }

          v57 = 0;
          if (v67 >= v72)
          {
            v78 = v67;
          }

          else
          {
            v78 = v64;
          }

          v125[v60] = v78;
          *v56 = *v56 + v78 - v42 - v11[v60];
          v56 = &v123;
          v54 = 1;
        }

        while ((v59 & 1) != 0);
        v36 = v55 + 1;
        v5 = v119;
        v120 += 260;
        v121 += 1040;
      }

      while (v36 != v6);
    }

    v8 = v111;
    v79 = *v111;
    if (*v111 >= v5[2])
    {
      v80 = v123;
      v81 = v124;
    }

    else
    {
      v80 = v123;
      v81 = v124;
      v82 = *(v5 + 4);
      if (v124 > v82 && v123 > v82)
      {
        v83 = v5[5];
        v84 = v111[2];
        *(v111[3] + 4 * v83) = v5[10];
        *(v84 + v83) = v79;
        v5[13] = v5[12];
        v5[12] = *v111 * v6;
        v85 = v108;
        if (v6)
        {
          v86 = v126;
          v87 = v6;
          do
          {
            v11[v6] = *v11;
            v88 = *v86++;
            *v11++ = v88;
            --v87;
          }

          while (v87);
        }

        ++v5[5];
        ++*v111;
        v89 = v5[11] + v6;
        v5[11] = v89;
        if (v89 < *v5[8])
        {
          v90 = v5[1];
          if (v90)
          {
            v91 = (v5[7] + 1040 * v89);
            do
            {
              bzero(v91, 0x408uLL);
              v91[129] = 0x7FF0000000000000;
              v91 += 130;
              --v90;
            }

            while (v90);
          }
        }

        v5[40] = 0;
        v92 = v5[3];
        v5[10] = 0;
        goto LABEL_107;
      }
    }

    v93 = *(v5 + 20);
    v94 = v5[5];
    v95 = (v111[3] + 4 * v94);
    if (v80 >= v81 + -20.0)
    {
      *(v95 - 1) += v93;
      if (v6)
      {
        v101 = v11;
        v102 = 0;
        v103 = v125;
        v104 = v6;
        do
        {
          memcpy(&v113[260 * v5[12] + v102], (v116 + v102 * 4), 0x410uLL);
          v105 = *v103;
          *v101 = *v103;
          if (*v111 == 1)
          {
            v101[v6] = v105;
          }

          v106 = &v113[260 * v5[11] + v102];
          bzero(v106, 0x408uLL);
          *(v106 + 129) = 0x7FF0000000000000;
          ++v101;
          ++v103;
          v102 += 260;
          --v104;
        }

        while (v104);
      }

      v5[10] = 0;
      v107 = v5[40] + 1;
      v5[40] = v107;
      v85 = v108;
      if (v107 >= 2)
      {
        v92 = v5[9] + v5[3];
LABEL_107:
        v5[9] = v92;
      }
    }

    else
    {
      *v95 = v93;
      *(v111[2] + v94) = *(v111[2] + v94 - 2);
      *(v5 + 6) = vextq_s8(*(v5 + 6), *(v5 + 6), 8uLL);
      v96 = v11;
      if (v6)
      {
        v97 = 0;
        v98 = v125;
        v99 = v6;
        do
        {
          memcpy(&v113[260 * v5[12] + v97], (v116 + 1040 * v6 + v97 * 4), 0x410uLL);
          v96[v6] = *v96;
          *v96++ = v98[v6];
          v100 = &v113[260 * v5[11] + v97];
          bzero(v100, 0x408uLL);
          *(v100 + 129) = 0x7FF0000000000000;
          ++v98;
          v97 += 260;
          --v99;
        }

        while (v99);
      }

      ++v5[5];
      v5[40] = 0;
      v5[9] = v5[3];
      v5[10] = 0;
      v85 = v108;
      v8 = v111;
    }

    sub_100166DB4(v85, v116);
    if (!v110)
    {
      return;
    }

    goto LABEL_35;
  }
}

void sub_10014E310(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v5 = v1[4];
  v6 = v1[5];
  if (v1[8] <= v1[1])
  {
    v7 = v1[1];
  }

  else
  {
    v7 = v1[8];
  }

  v1[8] = v7;
  if (!v1[3])
  {
    v14 = 0;
    v15 = 0;
    v16 = v5[2];
    *v5[3] = v7;
    *v16 = 0;
    v17 = &v6[*v1];
    v18 = 0.0;
    v19 = v6;
    if (*v1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      if (v19 >= v17)
      {
        v28 = v14;
        if (v14)
        {
          if (v14 > 0xFF)
          {
            v29 = log2(v14);
          }

          else
          {
            v29 = dbl_1003EDA70[v14];
          }

          v18 = v18 + v28 * v29;
        }

        if (v18 >= v28)
        {
          v30 = v18;
        }

        else
        {
          v30 = v14;
        }

        *(v4 + 12) = v30;
        *(v4 + 13) = v30;
        ++v4[3];
        ++*v5;
        v31 = v4[9] + 1;
        v4[9] = v31;
        if (v31 < *v4[6])
        {
          v32 = &v6[708 * v31];
          bzero(v32, 0xB08uLL);
          *(v32 + 353) = 0x7FF0000000000000;
        }

        v4[8] = 0;
        goto LABEL_83;
      }

      v21 = *v19++;
      v20 = v21;
      v15 = v14 + v21;
      v22 = v21;
      if (v21 > 0xFF)
      {
        v23 = log2(v22);
      }

      else
      {
        v23 = dbl_1003EDA70[v20];
      }

      v18 = v18 - v22 * v23;
LABEL_14:
      v25 = *v19++;
      v24 = v25;
      v14 = v15 + v25;
      v26 = v25;
      if (v25 > 0xFF)
      {
        v27 = log2(v26);
      }

      else
      {
        v27 = dbl_1003EDA70[v24];
      }

      v18 = v18 - v26 * v27;
    }
  }

  if (!v7)
  {
    goto LABEL_83;
  }

  v89 = v1[3];
  v90 = v7;
  v8 = 0;
  v9 = 0;
  v96 = v1 + 12;
  v97 = v6;
  v10 = &v6[708 * v1[9]];
  v11 = *v1;
  v12 = &v10[*v1];
  v13 = 0.0;
  __src = v10;
  if ((*v1 & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = *v10++;
    v37 = v38;
    v8 = v9 + v38;
    v39 = v38;
    v40 = v38 > 0xFF ? log2(v39) : dbl_1003EDA70[v37];
    v13 = v13 - v39 * v40;
LABEL_29:
    if (v10 >= v12)
    {
      break;
    }

    v34 = *v10++;
    v33 = v34;
    v9 = v8 + v34;
    v35 = v34;
    if (v34 > 0xFF)
    {
      v36 = log2(v35);
    }

    else
    {
      v36 = dbl_1003EDA70[v33];
    }

    v13 = v13 - v35 * v36;
  }

  v41 = v8;
  v92 = v3;
  v91 = v5;
  if (v8)
  {
    if (v8 > 0xFF)
    {
      v42 = log2(v8);
    }

    else
    {
      v42 = dbl_1003EDA70[v8];
    }

    v13 = v13 + v41 * v42;
  }

  v43 = 0;
  v93 = v4;
  v95 = v4 + 10;
  v44 = __dst;
  if (v13 < v41)
  {
    v13 = v41;
  }

  v45 = &v101;
  v46 = &v99;
  v47 = 1;
  do
  {
    v48 = v47;
    v49 = v95[v43];
    memcpy(v44, __src, 0xB10uLL);
    v50 = 0;
    v51 = &v97[708 * v49];
    *(v44 + 352) += *(v51 + 352);
    do
    {
      v44[v50] += v51[v50];
      ++v50;
    }

    while (v50 != 704);
    v52 = 0;
    v53 = 0;
    v54 = &v44[v11];
    v55 = 0.0;
    if (v11)
    {
      goto LABEL_57;
    }

    while (v44 < v54)
    {
      v57 = *v44++;
      v56 = v57;
      v53 = v52 + v57;
      v58 = v57;
      if (v57 > 0xFF)
      {
        v59 = log2(v58);
      }

      else
      {
        v59 = dbl_1003EDA70[v56];
      }

      v55 = v55 - v58 * v59;
LABEL_57:
      v63 = *v44++;
      v62 = v63;
      v52 = v53 + v63;
      v64 = v63;
      if (v63 > 0xFF)
      {
        v65 = log2(v64);
      }

      else
      {
        v65 = dbl_1003EDA70[v62];
      }

      v55 = v55 - v64 * v65;
    }

    v60 = v52;
    if (v52)
    {
      if (v52 > 0xFF)
      {
        v61 = log2(v52);
      }

      else
      {
        v61 = dbl_1003EDA70[v52];
      }

      v55 = v55 + v60 * v61;
    }

    v47 = 0;
    if (v55 >= v60)
    {
      v66 = v55;
    }

    else
    {
      v66 = v52;
    }

    *v45 = v66;
    *v46 = v66 - v13 - *&v96[v43];
    v45 = &v100;
    v46 = &v98;
    v44 = v103;
    v43 = 1;
  }

  while ((v48 & 1) != 0);
  v5 = v91;
  v67 = *v91;
  v3 = v92;
  if (*v91 >= 0x100uLL)
  {
    v68 = v98;
    v69 = v99;
    v4 = v93;
    v72 = v97;
    v74 = v89;
    v73 = v90;
  }

  else
  {
    v68 = v98;
    v69 = v99;
    v4 = v93;
    v70 = *(v93 + 2);
    v71 = v99 <= v70 || v98 <= v70;
    v72 = v97;
    v74 = v89;
    v73 = v90;
    if (!v71)
    {
      v75 = v91[2];
      *(v91[3] + 4 * v89) = v90;
      *(v75 + v89) = v67;
      v76 = v93[9];
      v93[11] = v93[10];
      v77 = *v91;
      v78 = v93[12];
      *(v93 + 12) = v13;
      v93[13] = v78;
      ++v93[3];
      v93[10] = v77;
      ++*v91;
      v93[9] = v76 + 1;
      if ((v76 + 1) < *v93[6])
      {
        v79 = &v97[708 * v76 + 708];
        bzero(v79, 0xB08uLL);
        *(v79 + 353) = 0x7FF0000000000000;
      }

      v93[14] = 0;
      v80 = v93[1];
      v93[8] = 0;
LABEL_82:
      v4[7] = v80;
      goto LABEL_83;
    }
  }

  v81 = (v91[3] + 4 * v74);
  if (v68 < v69 + -20.0)
  {
    *v81 = v73;
    *(v91[2] + v74) = *(v91[2] + v74 - 2);
    v82 = v4[10];
    v83 = v4[11];
    v4[10] = v83;
    v4[11] = v82;
    memcpy(&v72[708 * v83], v103, 0xB10uLL);
    v84 = v4[12];
    v4[12] = v100;
    v4[13] = v84;
    ++v4[3];
    v4[8] = 0;
    v85 = &v72[708 * v4[9]];
    bzero(v85, 0xB08uLL);
    *(v85 + 353) = 0x7FF0000000000000;
    v4[14] = 0;
    v80 = v4[1];
    goto LABEL_82;
  }

  *(v81 - 1) += v73;
  memcpy(&v72[708 * *v95], __dst, 0xB10uLL);
  v86 = v101;
  *v96 = v101;
  if (*v91 == 1)
  {
    v4[13] = v86;
  }

  v4[8] = 0;
  v87 = &v72[708 * v4[9]];
  bzero(v87, 0xB08uLL);
  *(v87 + 353) = 0x7FF0000000000000;
  v88 = v4[14] + 1;
  v4[14] = v88;
  if (v88 >= 2)
  {
    v80 = v4[7] + v4[1];
    goto LABEL_82;
  }

LABEL_83:
  if (v3)
  {
    *v4[6] = *v5;
    v5[1] = v4[3];
  }
}

void sub_10014E8F8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v5 = v1[4];
  v6 = v1[5];
  if (v1[8] <= v1[1])
  {
    v7 = v1[1];
  }

  else
  {
    v7 = v1[8];
  }

  v1[8] = v7;
  if (!v1[3])
  {
    v14 = 0;
    v15 = 0;
    v16 = v5[2];
    *v5[3] = v7;
    *v16 = 0;
    v17 = &v6[*v1];
    v18 = 0.0;
    v19 = v6;
    if (*v1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      if (v19 >= v17)
      {
        v28 = v14;
        if (v14)
        {
          if (v14 > 0xFF)
          {
            v29 = log2(v14);
          }

          else
          {
            v29 = dbl_1003EDA70[v14];
          }

          v18 = v18 + v28 * v29;
        }

        if (v18 >= v28)
        {
          v30 = v18;
        }

        else
        {
          v30 = v14;
        }

        *(v4 + 12) = v30;
        *(v4 + 13) = v30;
        ++v4[3];
        ++*v5;
        v31 = v4[9] + 1;
        v4[9] = v31;
        if (v31 < *v4[6])
        {
          v32 = &v6[548 * v31];
          bzero(v32, 0x888uLL);
          *(v32 + 273) = 0x7FF0000000000000;
        }

        v4[8] = 0;
        goto LABEL_83;
      }

      v21 = *v19++;
      v20 = v21;
      v15 = v14 + v21;
      v22 = v21;
      if (v21 > 0xFF)
      {
        v23 = log2(v22);
      }

      else
      {
        v23 = dbl_1003EDA70[v20];
      }

      v18 = v18 - v22 * v23;
LABEL_14:
      v25 = *v19++;
      v24 = v25;
      v14 = v15 + v25;
      v26 = v25;
      if (v25 > 0xFF)
      {
        v27 = log2(v26);
      }

      else
      {
        v27 = dbl_1003EDA70[v24];
      }

      v18 = v18 - v26 * v27;
    }
  }

  if (!v7)
  {
    goto LABEL_83;
  }

  v89 = v1[3];
  v90 = v7;
  v8 = 0;
  v9 = 0;
  v96 = v1 + 12;
  v97 = v6;
  v10 = &v6[548 * v1[9]];
  v11 = *v1;
  v12 = &v10[*v1];
  v13 = 0.0;
  __src = v10;
  if ((*v1 & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = *v10++;
    v37 = v38;
    v8 = v9 + v38;
    v39 = v38;
    v40 = v38 > 0xFF ? log2(v39) : dbl_1003EDA70[v37];
    v13 = v13 - v39 * v40;
LABEL_29:
    if (v10 >= v12)
    {
      break;
    }

    v34 = *v10++;
    v33 = v34;
    v9 = v8 + v34;
    v35 = v34;
    if (v34 > 0xFF)
    {
      v36 = log2(v35);
    }

    else
    {
      v36 = dbl_1003EDA70[v33];
    }

    v13 = v13 - v35 * v36;
  }

  v41 = v8;
  v92 = v3;
  v91 = v5;
  if (v8)
  {
    if (v8 > 0xFF)
    {
      v42 = log2(v8);
    }

    else
    {
      v42 = dbl_1003EDA70[v8];
    }

    v13 = v13 + v41 * v42;
  }

  v43 = 0;
  v93 = v4;
  v95 = v4 + 10;
  v44 = __dst;
  if (v13 < v41)
  {
    v13 = v41;
  }

  v45 = &v101;
  v46 = &v99;
  v47 = 1;
  do
  {
    v48 = v47;
    v49 = v95[v43];
    memcpy(v44, __src, 0x890uLL);
    v50 = 0;
    v51 = &v97[548 * v49];
    *(v44 + 272) += *(v51 + 272);
    do
    {
      v44[v50] += v51[v50];
      ++v50;
    }

    while (v50 != 544);
    v52 = 0;
    v53 = 0;
    v54 = &v44[v11];
    v55 = 0.0;
    if (v11)
    {
      goto LABEL_57;
    }

    while (v44 < v54)
    {
      v57 = *v44++;
      v56 = v57;
      v53 = v52 + v57;
      v58 = v57;
      if (v57 > 0xFF)
      {
        v59 = log2(v58);
      }

      else
      {
        v59 = dbl_1003EDA70[v56];
      }

      v55 = v55 - v58 * v59;
LABEL_57:
      v63 = *v44++;
      v62 = v63;
      v52 = v53 + v63;
      v64 = v63;
      if (v63 > 0xFF)
      {
        v65 = log2(v64);
      }

      else
      {
        v65 = dbl_1003EDA70[v62];
      }

      v55 = v55 - v64 * v65;
    }

    v60 = v52;
    if (v52)
    {
      if (v52 > 0xFF)
      {
        v61 = log2(v52);
      }

      else
      {
        v61 = dbl_1003EDA70[v52];
      }

      v55 = v55 + v60 * v61;
    }

    v47 = 0;
    if (v55 >= v60)
    {
      v66 = v55;
    }

    else
    {
      v66 = v52;
    }

    *v45 = v66;
    *v46 = v66 - v13 - *&v96[v43];
    v45 = &v100;
    v46 = &v98;
    v44 = v103;
    v43 = 1;
  }

  while ((v48 & 1) != 0);
  v5 = v91;
  v67 = *v91;
  v3 = v92;
  if (*v91 >= 0x100uLL)
  {
    v68 = v98;
    v69 = v99;
    v4 = v93;
    v72 = v97;
    v74 = v89;
    v73 = v90;
  }

  else
  {
    v68 = v98;
    v69 = v99;
    v4 = v93;
    v70 = *(v93 + 2);
    v71 = v99 <= v70 || v98 <= v70;
    v72 = v97;
    v74 = v89;
    v73 = v90;
    if (!v71)
    {
      v75 = v91[2];
      *(v91[3] + 4 * v89) = v90;
      *(v75 + v89) = v67;
      v76 = v93[9];
      v93[11] = v93[10];
      v77 = *v91;
      v78 = v93[12];
      *(v93 + 12) = v13;
      v93[13] = v78;
      ++v93[3];
      v93[10] = v77;
      ++*v91;
      v93[9] = v76 + 1;
      if ((v76 + 1) < *v93[6])
      {
        v79 = &v97[548 * v76 + 548];
        bzero(v79, 0x888uLL);
        *(v79 + 273) = 0x7FF0000000000000;
      }

      v93[14] = 0;
      v80 = v93[1];
      v93[8] = 0;
LABEL_82:
      v4[7] = v80;
      goto LABEL_83;
    }
  }

  v81 = (v91[3] + 4 * v74);
  if (v68 < v69 + -20.0)
  {
    *v81 = v73;
    *(v91[2] + v74) = *(v91[2] + v74 - 2);
    v82 = v4[10];
    v83 = v4[11];
    v4[10] = v83;
    v4[11] = v82;
    memcpy(&v72[548 * v83], v103, 0x890uLL);
    v84 = v4[12];
    v4[12] = v100;
    v4[13] = v84;
    ++v4[3];
    v4[8] = 0;
    v85 = &v72[548 * v4[9]];
    bzero(v85, 0x888uLL);
    *(v85 + 273) = 0x7FF0000000000000;
    v4[14] = 0;
    v80 = v4[1];
    goto LABEL_82;
  }

  *(v81 - 1) += v73;
  memcpy(&v72[548 * *v95], __dst, 0x890uLL);
  v86 = v101;
  *v96 = v101;
  if (*v91 == 1)
  {
    v4[13] = v86;
  }

  v4[8] = 0;
  v87 = &v72[548 * v4[9]];
  bzero(v87, 0x888uLL);
  *(v87 + 273) = 0x7FF0000000000000;
  v88 = v4[14] + 1;
  v4[14] = v88;
  if (v88 >= 2)
  {
    v80 = v4[7] + v4[1];
    goto LABEL_82;
  }

LABEL_83:
  if (v3)
  {
    *v4[6] = *v5;
    v5[1] = v4[3];
  }
}