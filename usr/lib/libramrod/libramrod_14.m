uint64_t sub_BE48C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 172);
  v3 = *(a1 + 168);
  v4 = *(a1 + 80);
  v5 = *(a1 + 156);
  v6 = (v4 + v5);
  v7 = *(a1 + 68) - 262;
  v8 = v5 >= v7;
  v9 = v5 - v7;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = *(a1 + 96);
  v11 = *(a1 + 76);
  v12 = *(a1 + 164);
  v13 = v6[v3 - 1];
  v14 = v6[v3];
  v15 = *(a1 + 192);
  if (v3 >= *(a1 + 188))
  {
    v2 >>= 2;
  }

  if (v15 >= v12)
  {
    v15 = *(a1 + 164);
  }

  while (1)
  {
    v16 = (v4 + a2);
    v17 = &v16[v3];
    if (*v17 != v14 || *(v17 - 1) != v13 || *v16 != *v6 || v16[1] != v6[1])
    {
      goto LABEL_32;
    }

    v18 = 0;
    v19 = v4 + 5 + a2;
    while (1)
    {
      v20 = &v6[v18];
      if (v6[v18 + 3] != *(v19 + v18 - 2))
      {
        v26 = v20 + 3;
        goto LABEL_29;
      }

      if (v20[4] != *(v19 + v18 - 1))
      {
        v26 = v6 + v18 + 4;
        goto LABEL_29;
      }

      v21 = &v6[v18];
      if (v6[v18 + 5] != *(v19 + v18))
      {
        v26 = v21 + 5;
        goto LABEL_29;
      }

      if (v21[6] != *(v19 + v18 + 1))
      {
        v26 = v6 + v18 + 6;
        goto LABEL_29;
      }

      v22 = &v6[v18];
      if (v6[v18 + 7] != *(v19 + v18 + 2))
      {
        v26 = v22 + 7;
        goto LABEL_29;
      }

      if (v22[8] != *(v19 + v18 + 3))
      {
        v26 = v6 + v18 + 8;
        goto LABEL_29;
      }

      v23 = &v6[v18];
      if (v6[v18 + 9] != *(v19 + v18 + 4))
      {
        break;
      }

      v24 = v18 + 8;
      if ((v18 + 2) <= 0xF9)
      {
        v25 = *(v19 + v18 + 5);
        v18 += 8;
        if (v23[10] == v25)
        {
          continue;
        }
      }

      v26 = v6 + v24 + 2;
      goto LABEL_29;
    }

    v26 = v23 + 9;
LABEL_29:
    v27 = v26 - (v6 + 258);
    v28 = v26 - v6;
    if (v28 <= v3)
    {
      goto LABEL_32;
    }

    *(a1 + 160) = a2;
    if (v28 >= v15)
    {
      break;
    }

    v13 = v6[v27 + 257];
    v14 = v6[v28];
    LODWORD(v3) = v28;
LABEL_32:
    a2 = *(v10 + 2 * (a2 & v11));
    --v2;
    if (v9 >= a2 || v2 == 0)
    {
      goto LABEL_37;
    }
  }

  LODWORD(v3) = v28;
LABEL_37:
  if (v3 >= v12)
  {
    return v12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_BE69C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *(a3 + 24);
  if (v14)
  {
    v15 = *v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a4 + 24);
  v45 = v16;
  if (v16)
  {
    v17 = *v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a5 + 24);
  v42 = v18;
  if (v18)
  {
    v19 = *v18;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v19 = 0;
    if (!a2)
    {
      return result;
    }
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = a10;
  v27 = a9;
  v44 = 0;
  do
  {
    if (!v17)
    {
      ++v23;
      v22 = *(*(a4 + 16) + v23);
      v17 = v45[v23];
    }

    v28 = (result + 16 * v20);
    v29 = a13 + 2832 * v22;
    v30 = *(v28 + 6);
    ++*(v29 + 4 * v30);
    ++*(v29 + 2816);
    v31 = *v28;
    if (v31)
    {
      do
      {
        v32 = v27;
        if (!v15)
        {
          ++v25;
          v24 = *(*(a3 + 16) + v25);
          v15 = v14[v25];
        }

        v33 = v24;
        if (a11)
        {
          v34 = &unk_1723F0 + (*(a11 + 4 * v24) << 9);
          v33 = (v24 << 6) + (v34[v26 + 256] | v34[v32]);
        }

        v35 = a12 + 1040 * v33;
        --v15;
        ++*(v35 + 4 * *(a6 + (a7 & a8)));
        ++*(v35 + 1024);
        v27 = *(a6 + (a7++ & a8));
        v26 = v32;
        --v31;
      }

      while (v31);
    }

    else
    {
      v32 = v26;
    }

    v36 = v28[1] & 0x1FFFFFF;
    a7 += v36;
    if (v36)
    {
      v32 = *(a6 + ((a7 - 2) & a8));
      v27 = *(a6 + ((a7 - 1) & a8));
      if (v30 >= 0x80)
      {
        if (v19)
        {
          v37 = v21;
        }

        else
        {
          v37 = *(*(a5 + 16) + ++v44);
          v19 = v42[v44];
        }

        --v19;
        v38 = v30 >> 6;
        LODWORD(v30) = v30 & 7;
        if (v30 >= 3)
        {
          v30 = 3;
        }

        else
        {
          v30 = v30;
        }

        if (v38 != 4 && v38 != 2 && v38 != 7)
        {
          v30 = 3;
        }

        v21 = v37;
        v41 = a14 + 2192 * (v30 | (4 * v37));
        ++*(v41 + 4 * (*(v28 + 7) & 0x3FF));
        ++*(v41 + 2176);
      }
    }

    --v17;
    ++v20;
    v26 = v32;
  }

  while (v20 != a2);
  return result;
}

uint64_t adler32_vec(uint64_t a1, uint64_t a2, uint8x16_t *a3, int a4)
{
  v4 = a1 + (a2 << 32);
  if (a4 >= 5552)
  {
    v5 = a4 - 5552;
    do
    {
      v6 = *a3;
      v7 = vmlal_high_u8(vmull_u8(*a3->i8, 0x90A0B0C0D0E0F10), *a3, *&qword_BEA80[2]);
      v6.i16[0] = vaddlvq_u8(*a3);
      v7.i32[0] = vaddlvq_u16(v7);
      ++a3;
      v8 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v6.i8, *v7.i8));
      v9 = 173;
      do
      {
        v10 = *a3;
        v11 = a3[1];
        v12 = vshld_n_s64(v8, 0x25uLL);
        v13 = (v8 + *&v12);
        v10.i16[0] = vaddlvq_u8(*a3);
        v12.i16[0] = vaddlvq_u8(v11);
        v14 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, 0x191A1B1C1D1E1F20), *a3, *qword_BEA80), *v11.i8, 0x90A0B0C0D0E0F10), v11, *&qword_BEA80[2]);
        v14.i32[0] = vaddlvq_u16(v14);
        a3 += 2;
        v8 = vadd_s32(v13, vzip1_s32(*&vaddl_u16(*v10.i8, v12), *v14.i8));
        v15 = __OFSUB__(v9--, 1);
      }

      while (!((v9 < 0) ^ v15 | (v9 == 0)));
      v16 = vshrq_n_u64(vmull_lane_u32(v8, 0x800780710000FFF1, 1), 0x2FuLL);
      v16.i32[1] = v16.i32[2];
      v4 = vmls_lane_s32(v8, *v16.i8, 0x800780710000FFF1, 0);
      v15 = __OFSUB__(v5, 5552);
      v5 -= 5552;
    }

    while (v5 < 0 == v15);
    a4 = v5 + 5552;
  }

  v15 = __OFSUB__(a4, 32);
  for (i = a4 - 32; i < 0 == v15; i -= 32)
  {
    v18 = *a3;
    v19 = a3[1];
    v20 = vshld_n_s64(v4, 0x25uLL);
    v21 = (v4 + *&v20);
    v18.i16[0] = vaddlvq_u8(*a3);
    v20.i16[0] = vaddlvq_u8(v19);
    v22 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, 0x191A1B1C1D1E1F20), *a3, *qword_BEA80), *v19.i8, 0x90A0B0C0D0E0F10), v19, *&qword_BEA80[2]);
    v22.i32[0] = vaddlvq_u16(v22);
    a3 += 2;
    v4 = vadd_s32(v21, vzip1_s32(*&vaddl_u16(*v18.i8, v20), *v22.i8));
    v15 = __OFSUB__(i, 32);
  }

  if ((i & 0x10) != 0)
  {
    v23 = *a3;
    v24 = vmlal_high_u8(vmull_u8(*a3->i8, 0x90A0B0C0D0E0F10), *a3, *&qword_BEA80[2]);
    v23.i16[0] = vaddlvq_u8(*a3);
    v24.i32[0] = vaddlvq_u16(v24);
    ++a3;
    v4 = vadd_s32((v4 + vshld_n_s64(v4, 0x24uLL)), vzip1_s32(*v23.i8, *v24.i8));
  }

  for (j = i & 0xF; j; v4 += v26 + vshld_n_s64(v4 + v26, 0x20uLL))
  {
    v26 = a3->u8[0];
    a3 = (a3 + 1);
    --j;
  }

  v27 = vshrq_n_u64(vmull_lane_u32(v4, 0x800780710000FFF1, 1), 0x2FuLL);
  v27.i32[1] = v27.i32[2];
  v28 = vmls_lane_s32(v4, *v27.i8, 0x800780710000FFF1, 0);
  return (v28.i32[0] + (v28.i32[1] << 16));
}

uint64_t sub_BEAB4(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  v6 = sub_C3328(v5, 1, a2, 0x18B940u, 0x180000u);
  *(a1 + 32) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  if (a2 == 2193)
  {
    v9 = 15000;
  }

  else
  {
    v9 = 40000;
  }

  v7[1838] = v9;
  *(v7 + 16) -= v7;
  *(v7 + 10) = 833856;
  *(v7 + 11) = 1620288;
  *(v7 + 6) = 47424;
  *(v7 + 7) = 47424;
  *(v7 + 8) = 47424;
  *(v7 + 9) = 833856;
  *(v7 + 2) = 47424;
  *(v7 + 3) = 833856;
  *(v7 + 4) = 833856;
  return result;
}

uint64_t sub_BEB68(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 128) += v4;
  v6 = vdupq_n_s64(v4);
  *(v4 + 48) = vaddq_s64(v6, v5);
  v7 = vaddq_s64(v6, *(v4 + 80));
  *(v4 + 64) = vaddq_s64(v6, *(v4 + 64));
  *(v4 + 80) = v7;
  v28 = v6;
  v8 = vaddq_s64(v6, *(v4 + 16));
  *(v4 + 16) = v8;
  *(v4 + 32) += v4;
  v9 = v8.i64[0];
  while (1)
  {
    v10 = *(v4 + 64);
    if (*(a1 + 24) >= &v9[-v10 + 786432])
    {
      v11 = &v9[-v10 + 786432];
    }

    else
    {
      v11 = *(a1 + 24);
    }

    if (v11)
    {
      memcpy(*(v4 + 64), *(a1 + 16), v11);
      *(v4 + 64) += v11;
      v12 = *(a1 + 24) - v11;
      *(a1 + 16) += v11;
      *(a1 + 24) = v12;
    }

    v14 = *(v4 + 24);
    v13 = *(v4 + 32);
    if (v13 >= v14 + 393216)
    {
      v15 = *(v4 + 72);
      v16 = v15 - 0x40000;
      if (v13 < (v15 - 0x40000))
      {
        v16 = *(v4 + 32);
      }

      if (v16 >= v14)
      {
        v17 = v16;
      }

      else
      {
        v17 = *(v4 + 24);
      }

      if (v17 > v14)
      {
        if (v15 != v17)
        {
          memmove(*(v4 + 80), v17, v15 - v17);
          v13 = *(v4 + 32);
          v15 = *(v4 + 72);
        }

        *(v4 + 32) = v13 + v14 - v17;
        *(v4 + 72) = &v15[v14 - v17];
      }
    }

    if (!*(v4 + 40) && *(v4 + 72) < *(v4 + 88))
    {
      v18 = sub_B967C(v4 + 48);
      if (v18 == -1)
      {
        if (a2)
        {
LABEL_46:
          v25 = 1;
          goto LABEL_41;
        }
      }

      else if (v18 == -3)
      {
        goto LABEL_46;
      }

      if (*(v4 + 96))
      {
        *(v4 + 40) = 1;
      }
    }

    if (*(v4 + 44))
    {
      goto LABEL_40;
    }

    v19 = *(v4 + 32);
    if (*(a1 + 8) >= *(v4 + 72) - v19)
    {
      v20 = *(v4 + 72) - v19;
    }

    else
    {
      v20 = *(a1 + 8);
    }

    if (v20)
    {
      memcpy(*a1, v19, v20);
      v19 = (*(v4 + 32) + v20);
      *(v4 + 32) = v19;
      v21 = *(a1 + 8) - v20;
      *a1 += v20;
      *(a1 + 8) = v21;
    }

    if (*(v4 + 40) && v19 == *(v4 + 72))
    {
      break;
    }

    if (*(v4 + 44))
    {
LABEL_40:
      v25 = 0;
LABEL_41:
      v26 = *(v4 + 72);
      v19 = *(v4 + 32);
      goto LABEL_42;
    }

    v22 = *(v4 + 48);
    v9 = *(v4 + 16);
    if (v22 >= v9 + 393216)
    {
      v23 = *(v4 + 64);
      v24 = v23 - v22;
      if (v23 - v22 >= 1)
      {
        memmove(v9, v22, v23 - v22);
        v9 = *(v4 + 16);
      }

      *(v4 + 48) = v9;
      *(v4 + 64) = &v9[v24];
    }

    v25 = v20 | v11;
    if (!(v20 | v11))
    {
      goto LABEL_41;
    }
  }

  v25 = 0;
  *(v4 + 44) = 1;
  v26 = v19;
LABEL_42:
  *(v4 + 128) -= v4;
  *(v4 + 48) = vsubq_s64(*(v4 + 48), v28);
  *(v4 + 64) -= v4;
  *(v4 + 72) = &v26[-v4];
  *(v4 + 80) = vsubq_s64(*(v4 + 80), v28);
  *(v4 + 16) = vsubq_s64(*(v4 + 16), v28);
  *(v4 + 32) = &v19[-v4];
  if (v25)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(v4 + 44) != 0;
  }
}

size_t sub_BEE2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  result = 0;
  if (a4 >= 0xC && a5)
  {
    if (*a3 != 1484404733 || *(a3 + 4) != 90)
    {
      return 0;
    }

    v12 = *(a3 + 8);
    if (v12 != sub_BF168((a3 + 6), 2))
    {
      return 0;
    }

    if (*(a3 + 6))
    {
      return 0;
    }

    v13 = *(a3 + 7);
    if (v13 > 0xF)
    {
      return 0;
    }

    result = 0;
    if (*(a3 + 7) > 3u)
    {
      if (v13 == 4)
      {
        v13 = 8;
      }

      else
      {
        if (v13 != 10)
        {
          return result;
        }

        v13 = 32;
      }
    }

    else if (*(a3 + 7))
    {
      if (v13 != 1)
      {
        return result;
      }

      v13 = 4;
    }

    if (a4 < 0xD)
    {
      return 0;
    }

    v14 = 0;
    v15 = 12;
    v32 = v13;
    while (1)
    {
      v16 = (a3 + v15);
      v17 = *(a3 + v15);
      v18 = v15 + 1;
      if (!*(a3 + v15))
      {
        break;
      }

      v33 = 4 * v17 + 4;
      v34 = v14;
      v19 = v33 + v18;
      if (v33 + v18 <= a4)
      {
        v20 = v15;
        v21 = *&v16[4 * v17];
        if (v21 == sub_BF168(v16, 4 * v17))
        {
          v38 = v20 + 2;
          v22 = *(a3 + v18);
          if ((v22 & 0x3F) == 0 && ((*(a3 + v18) & 0x40) == 0 || (sub_BF1B8(a3, v19, &v38, &v37) & 0x80000000) == 0) && ((v22 & 0x80) == 0 || (sub_BF1B8(a3, v19, &v38, &v37) & 0x80000000) == 0))
          {
            v35 = 0;
            v36 = 0;
            if ((sub_BF1B8(a3, v19, &v38, &v36) & 0x80000000) == 0 && (sub_BF1B8(a3, v19, &v38, &v35) & 0x80000000) == 0 && v36 == 33 && v35 == 1 && v38 < v19 && *(a3 + v38) <= 0x28u)
            {
              v23 = v33 + v20;
              v38 = 0;
              v24 = sub_C390C(a1 + v34, a2 - v34, a3 + v23, a4 - v23, &v38, a5);
              if (v24)
              {
                if (v38)
                {
                  v15 = v23 + v32 + ((v38 + 3) & 0xFFFFFFFFFFFFFFFCLL);
                  v14 = v24 + v34;
                  if (v15 < a4)
                  {
                    continue;
                  }
                }
              }
            }
          }
        }
      }

      return 0;
    }

    v37 = 0;
    v38 = v15 + 1;
    if ((sub_BF1B8(a3, a4, &v38, &v37) & 0x80000000) != 0)
    {
      return 0;
    }

    v25 = v37;
    if (v37)
    {
      while ((sub_BF1B8(a3, a4, &v38, &v36) & 0x80000000) == 0 && (sub_BF1B8(a3, a4, &v38, &v36) & 0x80000000) == 0)
      {
        if (!--v25)
        {
          goto LABEL_44;
        }
      }

      return 0;
    }

LABEL_44:
    v26 = (v38 - v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v27 = v26 + 4;
    if (&v16[v26 + 4] > a3 + a4)
    {
      return 0;
    }

    v28 = *&v16[v26];
    if (v28 != sub_BF168((a3 + v15), v26))
    {
      return 0;
    }

    v29 = v27 + v15;
    if (v27 + v15 + 12 > a4)
    {
      return 0;
    }

    v30 = (a3 + v29);
    if (*(a3 + v29 + 8) != *(a3 + 6) || *(v30 + 5) != 23129)
    {
      return 0;
    }

    v31 = *v30;
    if (v31 == sub_BF168(v30 + 4, 6))
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_BF168(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = -1;
  do
  {
    v3 = *a1++;
    v4 = dword_17D338[(v2 ^ v3) & 0xF];
    v2 = (v4 >> 4) ^ (v2 >> 8) ^ dword_17D338[(v4 ^ ((v2 ^ v3) >> 4)) & 0xF];
    --a2;
  }

  while (a2);
  return ~v2;
}

uint64_t sub_BF1B8(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *a3;
  if (*a3 < a2)
  {
    if (v4 + 9 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4 + 9;
    }

    v6 = *(a1 + v4);
    v7 = v6 & 0x7F;
    v8 = v4 + 1;
    if ((v6 & 0x80) == 0)
    {
LABEL_6:
      result = 0;
      *a3 = v8;
      *a4 = v7;
      return result;
    }

    v10 = 7;
    while (v5 != v8)
    {
      v11 = *(a1 + v8);
      if (!v11)
      {
        break;
      }

      v7 |= (v11 & 0x7F) << v10;
      v10 += 7;
      ++v8;
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

size_t compression_decode_scratch_buffer_size(compression_algorithm algorithm)
{
  if (algorithm - 512 >= 0xA)
  {
    v1 = algorithm;
  }

  else
  {
    v1 = COMPRESSION_ZLIB;
  }

  if (v1 - 1280 >= 0xA)
  {
    v2 = v1;
  }

  else
  {
    v2 = 1285;
  }

  if (v2 > 2192)
  {
    if (v2 > 3071)
    {
      if ((v2 - 3072) <= 0x20 && ((1 << v2) & 0x100010001) != 0)
      {
        return sub_9D884(v2);
      }

      return 0;
    }

    if ((v2 - 2304) < 2)
    {
      return sub_64390();
    }

    if (v2 != 2193)
    {
      if (v2 == 2209)
      {
        return lzfse_decode_buffer_scratch_size_iboot();
      }

      return 0;
    }

    return sub_A1ED8(v2);
  }

  if (v2 > 1284)
  {
    if ((v2 - 1792) < 3)
    {
      return sub_9D81C();
    }

    if ((v2 - 2049) >= 2)
    {
      if (v2 != 1285)
      {
        return 0;
      }

      return sub_8A76C();
    }

    return sub_A1ED8(v2);
  }

  switch(v2)
  {
    case 517:
      return sub_8A76C();
    case 774:
      return sub_BF160();
    case 1031:
      return sub_9DBD8();
  }

  return 0;
}

size_t compression_encode_scratch_buffer_size(compression_algorithm algorithm)
{
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v1 = algorithm;
  }

  else
  {
    v1 = 2584;
  }

  if (v1 - 512 >= 0xA)
  {
    v2 = v1;
  }

  else
  {
    v2 = 517;
  }

  if ((v2 - 1280) >= 0xA)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1285;
  }

  if (v3 > 2048)
  {
    if (v3 <= 2303)
    {
      if ((v3 - 2049) < 2 || v3 == 2193 || v3 == 2209)
      {
        return sub_9D4D8(v3);
      }

      return 0;
    }

    if ((v3 - 3072) <= 0x20 && ((1 << v3) & 0x100010001) != 0)
    {
      return sub_9D858(v3);
    }

    if ((v3 - 2304) < 2)
    {
      return sub_88E58(v3);
    }

    if (v3 != 2584)
    {
      return 0;
    }

    return sub_8D744();
  }

  else
  {
    if (v3 > 1284)
    {
      if ((v3 - 1536) < 3)
      {
        return sub_9D790(v3 & 0xF);
      }

      if ((v3 - 1792) < 3)
      {
        return sub_9D824(v3 & 0xF);
      }

      if (v3 != 1285)
      {
        return 0;
      }

      return sub_8741C();
    }

    if (v3 <= 773)
    {
      if ((v3 - 256) < 2)
      {
        return 0x8000;
      }

      if (v3 != 517)
      {
        return 0;
      }

      return sub_8741C();
    }

    if (v3 != 774)
    {
      return 0;
    }

    return sub_64390();
  }
}

size_t compression_encode_buffer(uint8_t *dst_buffer, size_t dst_size, const uint8_t *src_buffer, size_t src_size, void *scratch_buffer, compression_algorithm algorithm)
{
  v6 = algorithm;
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v11 = algorithm;
  }

  else
  {
    v11 = 2584;
  }

  if (v11 - 2816 >= 0xA)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 & 0xF;
  }

  if (v11 - 2816 < 0xA)
  {
    v11 = COMPRESSION_BROTLI;
  }

  if (v11 - 512 >= 0xA)
  {
    v13 = 5;
  }

  else
  {
    v13 = v11 & 0xF;
  }

  if (v11 - 512 < 0xA)
  {
    v11 = COMPRESSION_ZLIB;
  }

  if (v11 - 1280 >= 0xA)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11 & 0xF;
  }

  if (v11 - 1280 >= 0xA)
  {
    v15 = v11;
  }

  else
  {
    v15 = 1285;
  }

  v16 = compression_encode_scratch_buffer_size(v15);
  v17 = v16;
  if (scratch_buffer)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16 == 0;
  }

  v19 = v18;
  if (!v18)
  {
    scratch_buffer = malloc(v16);
    if (!scratch_buffer)
    {
      return 0;
    }
  }

  v31 = v19;
  v20 = 0;
  if (v15 <= 2048)
  {
    if (v15 <= 1284)
    {
      if (v15 <= 516)
      {
        if (v15 == COMPRESSION_LZ4)
        {
          v21 = sub_8FD48(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        else
        {
          if (v15 != COMPRESSION_LZ4_RAW)
          {
            goto LABEL_66;
          }

          v21 = sub_8A5C8(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        goto LABEL_65;
      }

      if (v15 != COMPRESSION_ZLIB)
      {
        if (v15 != COMPRESSION_LZMA)
        {
          goto LABEL_66;
        }

        v21 = sub_B09DC();
        goto LABEL_65;
      }

      v23 = dst_buffer;
      v24 = dst_size;
      v25 = src_buffer;
      v26 = src_size;
      v27 = scratch_buffer;
      v28 = v14;
      v29 = 0;
    }

    else
    {
      if (v15 - 1536 < 3)
      {
        v21 = sub_9D754(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15 & 0xF);
        goto LABEL_65;
      }

      if (v15 - 1792 < 3)
      {
        v21 = sub_9D7E0(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15 & 0xF);
LABEL_65:
        v20 = v21;
        goto LABEL_66;
      }

      if (v15 != 1285)
      {
        goto LABEL_66;
      }

      v23 = dst_buffer;
      v24 = dst_size;
      v25 = src_buffer;
      v26 = src_size;
      v27 = scratch_buffer;
      v28 = v14;
      v29 = 1;
    }

    v21 = sub_87428(v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_65;
  }

  if (v15 > 2583)
  {
    if (v15 - 3072 > 0x20 || ((1 << v15) & 0x100010001) == 0)
    {
      if (v15 == 2584)
      {
        v21 = sub_8D750(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v6);
      }

      else
      {
        if (v15 != COMPRESSION_BROTLI)
        {
          goto LABEL_66;
        }

        v21 = sub_86A6C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
      }
    }

    else
    {
      v21 = sub_9D894(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
    }

    goto LABEL_65;
  }

  if (v15 > 2208)
  {
    if (v15 - 2304 < 2)
    {
      v21 = sub_88E6C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
      goto LABEL_65;
    }

    if (v15 != 2209)
    {
      goto LABEL_66;
    }

LABEL_60:
    v21 = sub_9D518(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
    goto LABEL_65;
  }

  if (v15 - 2049 < 2 || v15 == 2193)
  {
    goto LABEL_60;
  }

LABEL_66:
  if ((v31 & 1) == 0)
  {
    memset_s(scratch_buffer, v17, 0, v17);
    free(scratch_buffer);
  }

  return v20;
}

size_t compression_decode_buffer(uint8_t *dst_buffer, size_t dst_size, const uint8_t *src_buffer, size_t src_size, void *scratch_buffer, compression_algorithm algorithm)
{
  if ((algorithm ^ 0xA00) >= 0x100)
  {
    v11 = algorithm;
  }

  else
  {
    v11 = 2584;
  }

  if (v11 - 2816 < 0xA)
  {
    v11 = COMPRESSION_BROTLI;
  }

  if (v11 - 512 < 0xA)
  {
    v11 = COMPRESSION_ZLIB;
  }

  if (v11 - 1280 >= 0xA)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1285;
  }

  v13 = compression_decode_scratch_buffer_size(v12);
  v16 = v13;
  if (scratch_buffer)
  {
    v17 = 1;
  }

  else
  {
    v17 = v13 == 0;
  }

  v18 = v17;
  if (!v17)
  {
    scratch_buffer = malloc(v13);
    if (!scratch_buffer)
    {
      return 0;
    }
  }

  v19 = 0;
  if (v12 <= 2048)
  {
    if (v12 <= 1284)
    {
      if (v12 <= 516)
      {
        if (v12 == COMPRESSION_LZ4)
        {
          v20 = sub_975BC(dst_buffer, dst_size, src_buffer, src_size);
        }

        else
        {
          if (v12 != COMPRESSION_LZ4_RAW)
          {
            goto LABEL_60;
          }

          v20 = sub_8A6CC(dst_buffer, dst_size, src_buffer, src_size);
        }

        goto LABEL_59;
      }

      if (v12 != COMPRESSION_ZLIB)
      {
        if (v12 == COMPRESSION_LZMA)
        {
          v19 = sub_BEE2C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
          if (v19)
          {
            goto LABEL_60;
          }

          v20 = sub_B0980();
        }

        else
        {
          if (v12 != 1031)
          {
            goto LABEL_60;
          }

          v20 = sub_9DBE4(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        goto LABEL_59;
      }

      v22 = dst_buffer;
      v23 = dst_size;
      v24 = src_buffer;
      v25 = src_size;
      v26 = scratch_buffer;
      v27 = 0;
      goto LABEL_57;
    }

    if (v12 - 1536 < 3)
    {
      v20 = sub_9D720(dst_buffer, dst_size, src_buffer, src_size, v14);
    }

    else
    {
      if (v12 - 1792 >= 3)
      {
        if (v12 != 1285)
        {
          goto LABEL_60;
        }

        v22 = dst_buffer;
        v23 = dst_size;
        v24 = src_buffer;
        v25 = src_size;
        v26 = scratch_buffer;
        v27 = 1;
LABEL_57:
        v20 = sub_8A778(v22, v23, v24, v25, v26, v27);
        goto LABEL_59;
      }

      v20 = sub_9D7AC(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v14, v15);
    }

LABEL_59:
    v19 = v20;
    goto LABEL_60;
  }

  if (v12 > 2583)
  {
    if (v12 - 3072 > 0x20 || ((1 << v12) & 0x100010001) == 0)
    {
      if (v12 == 2584)
      {
        v20 = sub_87674(dst_buffer, dst_size, src_buffer, src_size);
      }

      else
      {
        if (v12 != COMPRESSION_BROTLI)
        {
          goto LABEL_60;
        }

        v20 = sub_86A24(dst_buffer, dst_size);
      }
    }

    else
    {
      v20 = sub_9D8FC(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
    }

    goto LABEL_59;
  }

  if (v12 > 2208)
  {
    if (v12 - 2304 >= 2)
    {
      if (v12 != 2209)
      {
        goto LABEL_60;
      }

      v20 = lzfse_decode_buffer_iboot(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
    }

    else
    {
      v20 = lzvn_decode_buffer(dst_buffer, dst_size, src_buffer, src_size);
    }

    goto LABEL_59;
  }

  if (v12 - 2049 < 2 || v12 == 2193)
  {
    v20 = sub_A1EEC(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
    goto LABEL_59;
  }

LABEL_60:
  if ((v18 & 1) == 0)
  {
    memset_s(scratch_buffer, v16, 0, v16);
    free(scratch_buffer);
  }

  return v19;
}

unint64_t sub_BFB18(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v33 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_8F824(a1, a2, &v33, v40, v39);
  v8 = v33;
  if (v33)
  {
    v9 = v40;
    do
    {
      v10 = *v9++;
      ++*(v34 + v10);
      --v8;
    }

    while (v8);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (!*(v34 + v13))
  {
LABEL_8:
    if (++v13 == 18)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    v12 = 1;
    v11 = v13;
    goto LABEL_8;
  }

  v12 = 2;
LABEL_11:
  v14 = 18;
  sub_8F1E0(v34, 18, 5, a3, v37);
  result = sub_8FC28(v37, 18, v36);
  if (v12 >= 2)
  {
    v16 = &dword_10 + 1;
    while (!*(v37 + byte_181F30[v16]))
    {
      if (--v16 == -1)
      {
        v14 = 0;
        goto LABEL_17;
      }
    }

    v14 = v16 + 1;
  }

LABEL_17:
  v17 = 2;
  if (!BYTE3(v37[0]))
  {
    v17 = 3;
  }

  if (BYTE1(v37[0]) | BYTE2(v37[0]))
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = *a4;
  *(a5 + (*a4 >> 3)) = (v18 << (*a4 & 7)) | *(a5 + (*a4 >> 3));
  v20 = v19 + 2;
  *a4 = v20;
  v21 = v14 - v18;
  if (v14 > v18)
  {
    v22 = &byte_181F30[v18];
    do
    {
      v23 = *v22++;
      v24 = *(v37 + v23);
      v25 = byte_181F48[v24];
      result = v20 & 7;
      *(a5 + (v20 >> 3)) = (byte_181F42[v24] << (v20 & 7)) | *(a5 + (v20 >> 3));
      v20 += v25;
      --v21;
    }

    while (v21);
    *a4 = v20;
  }

  if (v12 == 1)
  {
    *(v37 + v11) = 0;
  }

  v26 = v33;
  if (v33)
  {
    v27 = v39;
    v28 = v40;
    while (1)
    {
      v30 = *v28++;
      v29 = v30;
      v31 = *(v37 + v30);
      result = *(a5 + (v20 >> 3));
      *(a5 + (v20 >> 3)) = (v36[v30] << (v20 & 7)) | result;
      v20 += v31;
      if (v30 == 16)
      {
        break;
      }

      if (v29 == 17)
      {
        v32 = 3;
LABEL_34:
        result = v20 & 7;
        *(a5 + (v20 >> 3)) = (*v27 << (v20 & 7)) | *(a5 + (v20 >> 3));
        v20 += v32;
      }

      ++v27;
      if (!--v26)
      {
        *a4 = v20;
        return result;
      }
    }

    v32 = 2;
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_BFDC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v89 = 0u;
  v90 = 0u;
  if (!a3)
  {
    goto LABEL_9;
  }

  v14 = 0;
  v15 = 0;
  v16 = 8;
  do
  {
    v17 = *(a2 + 4 * v15);
    if (v17)
    {
      if (v14 <= 3)
      {
        *(&v89 + v14) = v15;
      }

      ++v14;
      a3 -= v17;
    }

    ++v15;
    v16 += 16;
  }

  while (a3);
  v18 = v14 - 1;
  if (v14 <= 1)
  {
LABEL_9:
    v19 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v19 += 4;
    *a7 = v19;
    v20 = v89;
    *(a8 + (v19 >> 3)) = (v89 << (v19 & 7)) | *(a8 + (v19 >> 3));
    *a7 = v19 + a4;
    a5[v20] = 0;
    *(a6 + 2 * v20) = 0;
    return result;
  }

  v88 = result;
  bzero(a5, v15);
  result = sub_B933C(v88);
  if (!*(v88 + 24))
  {
    v21 = result;
    v87 = a6;
    v22 = 1;
    do
    {
      if (v15)
      {
        v23 = v15 - 1;
        v24 = v21;
        do
        {
          v25 = *(a2 + 4 * v23);
          if (v25)
          {
            if (v25 < v22)
            {
              v25 = v22;
            }

            *v24 = v25;
            *(v24 + 4) = -1;
            *(v24 + 6) = v23;
            v24 += 8;
          }

          --v23;
        }

        while (v23 != -1);
      }

      else
      {
        v24 = v21;
      }

      v26 = ((v24 - v21) >> 3);
      if (v26 > 0xC)
      {
        v32 = 2 * (v26 < 0x39);
        do
        {
          v33 = qword_171AB0[v32];
          if (v33 < v26)
          {
            v34 = 0;
            v35 = qword_171AB0[v32];
            do
            {
              v36 = *(v21 + 8 * v35);
              v37 = v35;
              if (v35 >= v33)
              {
                v38 = v34;
                v39 = v35;
                while (*(v21 + v38) > v36)
                {
                  v37 = v39 - v33;
                  *(v21 + 8 * v39) = *(v21 + v38);
                  v38 -= 8 * v33;
                  v39 = v37;
                  if (v37 < v33)
                  {
                    goto LABEL_38;
                  }
                }

                v37 = v39;
              }

LABEL_38:
              *(v21 + 8 * v37) = v36;
              ++v35;
              v34 += 8;
            }

            while (v35 != v26);
          }

          ++v32;
        }

        while (v32 != 6);
      }

      else if (v26 >= 2)
      {
        v27 = 0;
        for (i = 1; i != v26; ++i)
        {
          v29 = *(v21 + 8 * i);
          v30 = v27;
          v31 = i;
          do
          {
            if (*(v21 + v30) <= v29)
            {
              break;
            }

            *(v21 + 8 * v31) = *(v21 + v30);
            v30 -= 8;
            --v31;
          }

          while (v31);
          *(v21 + 8 * v31) = v29;
          v27 += 8;
        }
      }

      v40 = (v24 - v21) >> 3;
      *v24 = -1;
      *(v24 + 8) = -1;
      if (v40 >= 2)
      {
        v41 = 0;
        v42 = v40 + 1;
        v43 = (v24 + 16);
        v44 = v40 + 1;
        do
        {
          v45 = *(v21 + 8 * v41);
          v46 = *(v21 + 8 * v42);
          v47 = v45 > v46;
          if (v45 > v46)
          {
            v48 = v41;
          }

          else
          {
            v48 = v41 + 1;
          }

          if (v47)
          {
            v49 = v42 + 1;
          }

          else
          {
            v49 = v42;
          }

          if (v47)
          {
            v50 = v42;
          }

          else
          {
            v50 = v41;
          }

          v51 = *(v21 + 8 * v48);
          v52 = *(v21 + 8 * v49);
          v53 = v51 > v52;
          if (v51 > v52)
          {
            v41 = v48;
          }

          else
          {
            v41 = v48 + 1;
          }

          if (v53)
          {
            v42 = v49 + 1;
          }

          else
          {
            v42 = v49;
          }

          if (v53)
          {
            v48 = v49;
          }

          *(v43 - 2) = *(v21 + 8 * v48) + *(v21 + 8 * v50);
          *(v43 - 2) = v50;
          *(v43 - 1) = v48;
          *v43++ = -1;
          --v44;
        }

        while (v44 > 2);
      }

      v22 *= 2;
    }

    while (!sub_8F120(2 * v40 - 1, v21, a5, 14));
    sub_B9474(v88, v21);
    result = sub_8FC28(a5, v15, v87);
    if (v14 <= 4)
    {
      v54 = 0;
      v55 = *a7;
      *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
      *a7 = v55 + 2;
      *(a8 + ((v55 + 2) >> 3)) = (v18 << ((v55 + 2) & 7)) | *(a8 + ((v55 + 2) >> 3));
      v56 = v55 + 4;
      *a7 = v56;
      v57 = &v89 + 8;
      do
      {
        v58 = v54 + 1;
        if (v54 + 1 < v14)
        {
          v59 = *(&v89 + v54);
          v60 = v57;
          v61 = v18;
          do
          {
            v62 = *v60;
            result = a5[v59];
            if (a5[*v60] < result)
            {
              *v60 = v59;
              *(&v89 + v54) = v62;
              v59 = v62;
            }

            ++v60;
            --v61;
          }

          while (v61);
        }

        --v18;
        v57 += 8;
        ++v54;
      }

      while (v58 != v14);
      v63 = v89;
      v64 = v56 >> 3;
      v65 = v89 << (v56 & 7);
      v66 = v56 + a4;
      v67 = (v56 + a4) >> 3;
      v68 = v66 & 7;
      v69 = v66 + a4;
      if (v14 == 3)
      {
        *(a8 + v64) = v65 | *(a8 + v64);
        *a7 = v66;
        v83 = v90;
        *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
        *a7 = v69;
        *(a8 + (v69 >> 3)) = (v83 << (v69 & 7)) | *(a8 + (v69 >> 3));
        v69 += a4;
      }

      else
      {
        *(a8 + v64) = v65 | *(a8 + v64);
        *a7 = v66;
        if (v14 == 2)
        {
          *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
        }

        else
        {
          v84 = v90;
          *(a8 + v67) = (*(&v89 + 1) << v68) | *(a8 + v67);
          *a7 = v69;
          *(a8 + (v69 >> 3)) = (v84 << (v69 & 7)) | *(a8 + (v69 >> 3));
          v85 = v69 + a4;
          *a7 = v85;
          *(a8 + (v85 >> 3)) = (*(&v90 + 1) << (v85 & 7)) | *(a8 + (v85 >> 3));
          v86 = v85 + a4;
          *a7 = v86;
          *(a8 + (v86 >> 3)) = ((a5[v63] == 1) << (v86 & 7)) | *(a8 + (v86 >> 3));
          v69 = v86 + 1;
        }
      }

      *a7 = v69;
      return result;
    }

    v70 = *a7;
    *(a8 + (*a7 >> 3)) = (0xFF55555554 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v71 = v70 + 40;
    *a7 = v71;
    if (!v15)
    {
      return result;
    }

    v72 = 0;
    result = 8;
    do
    {
      v73 = a5[v72];
      if (v72 + 1 >= v15)
      {
        ++v72;
        v75 = 1;
        if (!v73)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v74 = v72 - v15 + 1;
        v75 = 1;
        while (a5[v72 + v75] == v73)
        {
          ++v75;
          if (__CFADD__(v74++, 1))
          {
            v75 = v15 - v72;
            break;
          }
        }

        v72 += v75;
        if (!v73)
        {
LABEL_90:
          v80 = dword_17D3D0[v75];
          *(a8 + (v71 >> 3)) = (qword_17DED0[v75] << (v71 & 7)) | *(a8 + (v71 >> 3));
          v71 += v80;
          goto LABEL_93;
        }
      }

      if (result != v73)
      {
        v77 = byte_17F4D0[v73];
        *(a8 + (v71 >> 3)) = (dword_17F4E4[v73] << (v71 & 7)) | *(a8 + (v71 >> 3));
        v71 += v77;
        *a7 = v71;
        --v75;
      }

      if (v75 > 2)
      {
        v81 = v75 - 3;
        v82 = dword_17F52C[v75 - 3];
        *(a8 + (v71 >> 3)) = (qword_180030[v81] << (v71 & 7)) | *(a8 + (v71 >> 3));
        v71 += v82;
      }

      else
      {
        if (!v75)
        {
          result = v73;
          continue;
        }

        v78 = byte_17F4D0[v73];
        v79 = dword_17F4E4[v73];
        do
        {
          *(a8 + (v71 >> 3)) = (v79 << (v71 & 7)) | *(a8 + (v71 >> 3));
          v71 += v78;
          --v75;
        }

        while (v75);
      }

      result = v73;
LABEL_93:
      *a7 = v71;
    }

    while (v72 < v15);
  }

  return result;
}

uint64_t sub_C04DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, unsigned int *a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t *a14, uint64_t a15)
{
  v15 = a8;
  LODWORD(v92) = a6;
  v19 = a14;
  v20 = a9[19];
  v95 = a9[18];
  sub_C0E64(a8, a4, a14, a15);
  result = sub_B933C(a1);
  if (!*(a1 + 24))
  {
    v22 = result;
    v23 = a13;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    memset(v106, 0, sizeof(v106));
    v105 = 0u;
    *v104 = 0u;
    memset(v98, 0, sizeof(v98));
    v96 = 0u;
    v97 = 0u;
    v25 = *(a13 + 16);
    v24 = *(a13 + 24);
    v26 = *a13;
    v27 = *(a13 + 8);
    v112[0] = 256;
    v112[1] = v26;
    v112[2] = v25;
    v112[3] = v24;
    v142 = 0;
    v112[4] = v27;
    v113 = xmmword_17D380;
    v143 = 0;
    if (v27)
    {
      v28 = *v24;
    }

    else
    {
      v28 = 0;
    }

    v144 = v28;
    v145 = 0;
    v147 = 0;
    v146 = 0;
    v30 = *(a13 + 64);
    v29 = *(a13 + 72);
    v31 = *(a13 + 48);
    v32 = *(a13 + 56);
    v104[0] = 704;
    v104[1] = v31;
    *&v105 = v30;
    *(&v105 + 1) = v29;
    *&v106[0] = v32;
    *(v106 + 8) = xmmword_17D380;
    v107 = 0;
    if (v32)
    {
      v33 = *v29;
    }

    else
    {
      v33 = 0;
    }

    v108 = v33;
    v109 = 0;
    v111 = 0;
    v110 = 0;
    v35 = *(a13 + 112);
    v34 = *(a13 + 120);
    v36 = *(a13 + 96);
    v37 = *(a13 + 104);
    *&v96 = v20;
    *(&v96 + 1) = v36;
    *&v97 = v35;
    *(&v97 + 1) = v34;
    *&v98[0] = v37;
    *(v98 + 8) = xmmword_17D380;
    v99 = 0;
    if (v37)
    {
      v38 = *v34;
    }

    else
    {
      v38 = 0;
    }

    v100 = v38;
    v101 = 0;
    v103 = 0;
    v102 = 0;
    sub_C0F9C(v112, result, a14, a15);
    sub_C0F9C(v104, v22, a14, a15);
    sub_C0F9C(&v96, v22, a14, a15);
    v39 = *a14;
    v40 = a9[16];
    v41 = a9[17];
    *(a15 + (*a14 >> 3)) = (v40 << (*a14 & 7)) | *(a15 + (*a14 >> 3));
    *a14 = v39 + 2;
    *(a15 + ((v39 + 2) >> 3)) = ((v41 >> v40) << ((v39 + 2) & 7)) | *(a15 + ((v39 + 2) >> 3));
    v42 = v39 + 6;
    *a14 = v42;
    if (*a13)
    {
      v43 = 0;
      do
      {
        *(a15 + (v42 >> 3)) = (a10 << (v42 & 7)) | *(a15 + (v42 >> 3));
        v42 += 2;
        *a14 = v42;
        ++v43;
      }

      while (v43 < *a13);
    }

    v44 = *(a13 + 152);
    if (v44)
    {
      result = sub_C143C(a1, *(a13 + 144), v44, *(a13 + 184), v22, a14, a15);
      if (*(a1 + 24))
      {
        return result;
      }
    }

    else
    {
      sub_C1220(*(a13 + 184), 6uLL, v22, a14, a15);
    }

    v45 = *(a13 + 168);
    if (v45)
    {
      result = sub_C143C(a1, *(a13 + 160), v45, *(a13 + 216), v22, a14, a15);
      if (*(a1 + 24))
      {
        return result;
      }
    }

    else
    {
      sub_C1220(*(a13 + 216), 2uLL, v22, a14, a15);
    }

    v85 = v15;
    v47 = *(a13 + 176);
    v46 = *(a13 + 184);
    if (v112[0] * v46)
    {
      v146 = sub_B933C(a1);
      result = sub_B933C(a1);
    }

    else
    {
      result = 0;
      v146 = 0;
    }

    v147 = result;
    v48 = *(a1 + 24);
    v91 = a1;
    if (v46 && !v48)
    {
      for (i = 0; i != v46; ++i)
      {
        result = sub_C2244(v47, v112[0], 256, v22, (v146 + v112[0] * i), v147 + 2 * v112[0] * i, a14, a15);
        v47 += 1040;
      }

      a1 = v91;
      v48 = *(v91 + 24);
    }

    if (!v48)
    {
      v51 = *(a13 + 192);
      v50 = *(a13 + 200);
      if (v104[0] * v50)
      {
        v110 = sub_B933C(a1);
        result = sub_B933C(a1);
        v52 = *(a1 + 24);
      }

      else
      {
        v52 = 0;
        result = 0;
        v110 = 0;
      }

      v111 = result;
      if (v50 && !v52)
      {
        for (j = 0; j != v50; ++j)
        {
          result = sub_C2244(v51, v104[0], 704, v22, (v110 + v104[0] * j), v111 + 2 * v104[0] * j, a14, a15);
          v51 += 2832;
        }

        a1 = v91;
        v52 = *(v91 + 24);
      }

      if (!v52)
      {
        result = sub_C1B3C(a1, &v96, *(a13 + 208), *(a13 + 216), v95, v22, a14, a15);
        if (!*(a1 + 24))
        {
          sub_B9474(a1, v22);
          if (a12)
          {
            v54 = 0;
            v92 = v92;
            v55 = a7;
            do
            {
              v90 = v54;
              v56 = (a11 + 16 * v54);
              v57 = *v56;
              v58 = v56[1];
              v86 = *(v56 + 7);
              v87 = v56[2];
              v88 = *(v56 + 6);
              sub_C1C20(v104, v88, v19, a15);
              LOWORD(v59) = v57;
              if (v57 >= 6)
              {
                if (v57 > 0x81)
                {
                  if (v57 > 0x841)
                  {
                    v61 = 22;
                    if (v57 >= 0x5842)
                    {
                      v61 = 23;
                    }

                    LOWORD(v59) = 21;
                    if (v57 >> 1 >= 0xC21)
                    {
                      LOWORD(v59) = v61;
                    }
                  }

                  else
                  {
                    LODWORD(v59) = (__clz(v57 - 66) ^ 0x1F) + 10;
                  }
                }

                else
                {
                  v60 = (__clz(v57 - 2) ^ 0x1F) - 1;
                  v59 = ((v57 - 2) >> v60) + 2 * v60 + 2;
                }
              }

              v89 = v58 & 0x1FFFFFF;
              v62 = (v58 & 0x1FFFFFF) + (HIBYTE(v58) & 0x80 | (v58 >> 25));
              if (v62 > 9)
              {
                v64 = a5;
                if (v62 > 0x85)
                {
                  LODWORD(v63) = (__clz(v62 - 70) ^ 0x1F) + 12;
                  if (v62 > 0x845)
                  {
                    LOWORD(v63) = 23;
                  }
                }

                else
                {
                  v65 = (__clz(v62 - 6) ^ 0x1F) - 1;
                  v63 = ((v62 - 6) >> v65) + 2 * v65 + 4;
                }
              }

              else
              {
                LOWORD(v63) = v58 + (HIBYTE(v58) & 0x80 | (v58 >> 25)) - 2;
                v64 = a5;
              }

              v66 = v59;
              v67 = dword_10BA2C[v66];
              v68 = v63;
              v69 = ((v62 - *(&unk_10BA8C + v68 * 4)) << v67) | (v57 - *(&unk_10B9CC + v66 * 4));
              v70 = dword_10BAEC[v68] + v67;
              v71 = *v19;
              *(a15 + (*v19 >> 3)) = (v69 << (*v19 & 7)) | *(a15 + (*v19 >> 3));
              *v19 = v71 + v70;
              if (v23[19])
              {
                v72 = v64;
                v73 = v55;
                v74 = v23;
                v75 = v92;
                if (v57)
                {
                  do
                  {
                    v73 = v75;
                    v76 = byte_1723F0[512 * a10 + 256 + v55] | byte_1723F0[512 * a10 + v75];
                    v75 = *(a2 + (a3 & v72));
                    sub_C1DAC(v112, v75, v76, v23[18], a14, a15, 6);
                    ++a3;
                    v55 = v73;
                    --v57;
                  }

                  while (v57);
                }
              }

              else
              {
                if (v57)
                {
                  do
                  {
                    sub_C1C20(v112, *(a2 + (a3++ & v64)), v19, a15);
                    --v57;
                  }

                  while (v57);
                }

                v73 = v55;
                v74 = v23;
                v75 = v92;
              }

              v92 = v75;
              a3 += v89;
              a1 = v91;
              v23 = v74;
              v19 = a14;
              if (v89)
              {
                v73 = *(a2 + ((a3 - 2) & a5));
                v92 = *(a2 + ((a3 - 1) & a5));
                if (v88 >= 0x80)
                {
                  if (v23[21])
                  {
                    v77 = v88 >> 6;
                    if ((v88 & 7u) >= 3)
                    {
                      v78 = 3;
                    }

                    else
                    {
                      v78 = v88 & 7;
                    }

                    if (v77 == 4 || v77 == 2 || v77 == 7)
                    {
                      v81 = v78;
                    }

                    else
                    {
                      v81 = 3;
                    }

                    v82 = v86;
                    sub_C1DAC(&v96, v86 & 0x3FF, v81, v23[20], a14, a15, 2);
                  }

                  else
                  {
                    v82 = v86;
                    sub_C1C20(&v96, v86 & 0x3FF, a14, a15);
                  }

                  v83 = *a14;
                  *(a15 + (*a14 >> 3)) = (v87 << (*a14 & 7)) | *(a15 + (*a14 >> 3));
                  *a14 = v83 + (v82 >> 10);
                }
              }

              v54 = v90 + 1;
              v55 = v73;
            }

            while (v90 + 1 != a12);
          }

          sub_B9474(a1, v102);
          v102 = 0;
          sub_B9474(a1, v103);
          v103 = 0;
          sub_B9474(a1, v110);
          v110 = 0;
          sub_B9474(a1, v111);
          v111 = 0;
          sub_B9474(a1, v146);
          v146 = 0;
          result = sub_B9474(a1, v147);
          if (v85)
          {
            v84 = *v19 + 7;
            *v19 = v84 & 0xFFFFFFF8;
            *(a15 + (v84 >> 3)) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_C0E64(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  *(a4 + (*a3 >> 3)) = (result << (*a3 & 7)) | *(a4 + (*a3 >> 3));
  v5 = v4 + 1;
  *a3 = v4 + 1;
  if (result)
  {
    *(a4 + (v5 >> 3)) = *(a4 + (v5 >> 3));
    *a3 = v4 + 2;
    if (a2 == 1 || (v6 = __clz(a2 - 1) ^ 0x1F, v6 <= 0xE))
    {
      v7 = 4;
    }

    else
    {
      v7 = (v6 + 4) >> 2;
    }

    *(a4 + ((v4 + 2) >> 3)) = ((v7 - 4) << ((v4 + 2) & 7)) | *(a4 + ((v4 + 2) >> 3));
    v10 = v4 + 4;
    *a3 = v10;
    *(a4 + (v10 >> 3)) = ((a2 - 1) << (v10 & 7)) | *(a4 + (v10 >> 3));
    v11 = v10 + 4 * v7;
  }

  else
  {
    if (a2 == 1 || (v8 = __clz(a2 - 1) ^ 0x1F, v8 <= 0xE))
    {
      v9 = 4;
    }

    else
    {
      v9 = (v8 + 4) >> 2;
    }

    *(a4 + (v5 >> 3)) = ((v9 - 4) << (v5 & 7)) | *(a4 + (v5 >> 3));
    v12 = v4 + 3;
    *a3 = v12;
    *(a4 + (v12 >> 3)) = ((a2 - 1) << (v12 & 7)) | *(a4 + (v12 >> 3));
    v13 = v12 + 4 * v9;
    *a3 = v13;
    *(a4 + (v13 >> 3)) = *(a4 + (v13 >> 3));
    v11 = v13 + 1;
  }

  *a3 = v11;
  return result;
}

unint64_t sub_C0F9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  bzero(v40, 4 * (v9 + 2));
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  if (v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v10[v11];
      if (v11)
      {
        if (v12 == v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14 + 2;
        }

        if (v13 + 1 == v14)
        {
          v15 = 1;
        }

        ++v40[v15];
      }

      v16 = v7[v11];
      if (v16 <= 0x2F0)
      {
        v17 = 14;
      }

      else
      {
        v17 = 20;
      }

      if (v16 <= 0x28)
      {
        v18 = 0;
      }

      else
      {
        v18 = 7;
      }

      if (v16 <= 0xB0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v20 = (&unk_10C3AE + 4 * v19 + 4);
      do
      {
        v21 = v19;
        if (v19 == 25)
        {
          break;
        }

        ++v19;
        v22 = *v20;
        v20 += 2;
      }

      while (v16 >= v22);
      ++*(v38 + v21);
      ++v11;
      v12 = v13;
      v13 = v14;
    }

    while (v11 != v8);
  }

  result = sub_C2E04(v9 - 1, a3, a4);
  if (v9 >= 2)
  {
    sub_C2244(v40, v9 + 2, v9 + 2, a2, (a1 + 56), a1 + 314, a3, a4);
    result = sub_C2244(v38, 0x1AuLL, 26, a2, (a1 + 830), a1 + 856, a3, a4);
    v24 = *v7;
    v25 = *(a1 + 40);
    *(a1 + 40) = *v10;
    *(a1 + 48) = v25;
    v26 = 14;
    if (v24 > 0x2F0)
    {
      v26 = 20;
    }

    v27 = 7;
    if (v24 <= 0x28)
    {
      v27 = 0;
    }

    if (v24 <= 0xB0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    v29 = (&unk_10C3AE + 4 * v28 + 4);
    do
    {
      v30 = v28;
      if (v28 == 25)
      {
        break;
      }

      ++v28;
      v31 = *v29;
      v29 += 2;
    }

    while (v24 >= v31);
    v32 = (&unk_10C3AE + 4 * v30);
    v33 = *(v32 + 2);
    v34 = *(a1 + 830 + v30);
    v35 = *a3;
    v36 = v24 - *v32;
    *(a4 + (*a3 >> 3)) = (*(a1 + 856 + 2 * v30) << (*a3 & 7)) | *(a4 + (*a3 >> 3));
    *a3 = v35 + v34;
    *(a4 + ((v35 + v34) >> 3)) = (v36 << ((v35 + v34) & 7)) | *(a4 + ((v35 + v34) >> 3));
    *a3 = v35 + v34 + v33;
  }

  return result;
}

uint64_t sub_C1220(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  result = sub_C2E04(a1 - 1, a4, a5);
  if (a1 >= 2)
  {
    v11 = a2 - 1;
    v12 = a2 - 1 + a1;
    bzero(v25, 4 * v12);
    v13 = *a4;
    *(a5 + (*a4 >> 3)) = (1 << (*a4 & 7)) | *(a5 + (*a4 >> 3));
    *a4 = v13 + 1;
    *(a5 + ((v13 + 1) >> 3)) = ((a2 - 2) << ((v13 + 1) & 7)) | *(a5 + ((v13 + 1) >> 3));
    *a4 = v13 + 5;
    v25[a2 - 1] = a1;
    v25[0] = 1;
    if (v12 > a2)
    {
      memset_pattern16(&v25[a2], &unk_1723E0, 4 * a1 - 4);
    }

    sub_C2244(v25, a2 - 1 + a1, a2 - 1 + a1, a3, v24, v23, a4, a5);
    v14 = 0;
    v15 = v24[v11];
    v16 = v23[v11];
    v17 = a2 - 1;
    v18 = *a4;
    do
    {
      if (v14)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = v24[v19];
      result = v18 & 7;
      *(a5 + (v18 >> 3)) = (v23[v19] << (v18 & 7)) | *(a5 + (v18 >> 3));
      v21 = v18 + v20;
      *a4 = v21;
      *(a5 + (v21 >> 3)) = (v16 << (v21 & 7)) | *(a5 + (v21 >> 3));
      v22 = v21 + v15;
      *a4 = v21 + v15;
      *(a5 + ((v21 + v15) >> 3)) = (~(-1 << (a2 - 1)) << ((v21 + v15) & 7)) | *(a5 + ((v21 + v15) >> 3));
      v18 = v22 + v11;
      *a4 = v22 + v11;
      --v14;
      ++v17;
    }

    while (-a1 != v14);
    *(a5 + (v18 >> 3)) = (1 << (v18 & 7)) | *(a5 + (v18 >> 3));
    *a4 = v22 + a2;
  }

  return result;
}

uint64_t sub_C143C(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  result = sub_C2E04(a4 - 1, a6, a7);
  if (a4 == 1)
  {
    return result;
  }

  result = sub_B933C(a1);
  if (*(a1 + 24))
  {
    return result;
  }

  v15 = result;
  v16 = *a2;
  if (a3 >= 2)
  {
    v17 = a3 - 1;
    v18 = a2 + 1;
    do
    {
      v20 = *v18++;
      v19 = v20;
      if (v20 > v16)
      {
        v16 = v19;
      }

      --v17;
    }

    while (v17);
  }

  v21 = 0;
  v22 = xmmword_17D390;
  v23 = xmmword_17D3A0;
  v24 = xmmword_17D3B0;
  v25 = xmmword_17D3C0;
  v26 = xmmword_10C420;
  v27 = xmmword_10C430;
  v28 = xmmword_10C440;
  v29 = vdupq_n_s64(v16);
  v30 = xmmword_10A0F0;
  v31 = vdupq_n_s64(0x10uLL);
  do
  {
    v32 = vmovn_s64(vcgeq_u64(v29, v30));
    if (vuzp1_s8(vuzp1_s16(v32, *v22.i8), *v22.i8).u8[0])
    {
      v72[v21 - 1] = v21;
    }

    if (vuzp1_s8(vuzp1_s16(v32, *&v22), *&v22).i8[1])
    {
      v72[v21] = v21 | 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v28))), *&v22).i8[2])
    {
      v72[v21 + 1] = v21 | 2;
      v72[v21 + 2] = v21 | 3;
    }

    v33 = vmovn_s64(vcgeq_u64(v29, v27));
    if (vuzp1_s8(*&v22, vuzp1_s16(v33, *&v22)).i32[1])
    {
      v72[v21 + 3] = v21 | 4;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(v33, *&v22)).i8[5])
    {
      v72[v21 + 4] = v21 | 5;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v26)))).i8[6])
    {
      v72[v21 + 5] = v21 | 6;
      v72[v21 + 6] = v21 | 7;
    }

    v34 = vmovn_s64(vcgeq_u64(v29, v25));
    if (vuzp1_s8(vuzp1_s16(v34, *v22.i8), *v22.i8).u8[0])
    {
      v72[v21 + 7] = v21 | 8;
    }

    if (vuzp1_s8(vuzp1_s16(v34, *&v22), *&v22).i8[1])
    {
      v72[v21 + 8] = v21 | 9;
    }

    if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v24))), *&v22).i8[2])
    {
      v72[v21 + 9] = v21 | 0xA;
      v72[v21 + 10] = v21 | 0xB;
    }

    v35 = vmovn_s64(vcgeq_u64(v29, v23));
    if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i32[1])
    {
      v72[v21 + 11] = v21 | 0xC;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(v35, *&v22)).i8[5])
    {
      v72[v21 + 12] = v21 | 0xD;
    }

    if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v29, *&v22)))).i8[6])
    {
      v72[v21 + 13] = v21 | 0xE;
      v72[v21 + 14] = v21 | 0xF;
    }

    v27 = vaddq_s64(v27, v31);
    v21 += 16;
    v28 = vaddq_s64(v28, v31);
    v30 = vaddq_s64(v30, v31);
    v26 = vaddq_s64(v26, v31);
    v25 = vaddq_s64(v25, v31);
    v24 = vaddq_s64(v24, v31);
    v23 = vaddq_s64(v23, v31);
    v22 = vaddq_s64(v22, v31);
  }

  while (((v16 + 16) & 0x1FFFFFFF0) != v21);
  v68 = a5;
  if (!a3)
  {
    goto LABEL_68;
  }

  v36 = 0;
  v37 = v16 + 1;
  LOBYTE(v38) = __src;
  do
  {
    if (v37)
    {
      v39 = 0;
      v38 = LOBYTE(a2[v36]);
      while (v72[v39 - 1] != v38)
      {
        if (v37 == ++v39)
        {
          *(v15 + 4 * v36) = v37;
          LOBYTE(v38) = v72[v37 - 1];
          v39 = v37;
          goto LABEL_43;
        }
      }

      *(v15 + 4 * v36) = v39;
      if (!v39)
      {
        goto LABEL_44;
      }

LABEL_43:
      memmove(v72, &__src, v39);
    }

    else
    {
      *(v15 + 4 * v36) = 0;
    }

LABEL_44:
    __src = v38;
    ++v36;
  }

  while (v36 != a3);
  v40 = 0;
  v41 = 0;
  do
  {
    if (a3 <= v41 + 1)
    {
      v42 = v41 + 1;
    }

    else
    {
      v42 = a3;
    }

    v43 = (v15 + 4 * v41);
    while (*(v15 + 4 * v41))
    {
      ++v41;
      ++v43;
      if (v42 == v41)
      {
        v47 = 0;
LABEL_64:
        if (v47 > v40)
        {
          v40 = v47;
        }

        goto LABEL_66;
      }
    }

    if (a3 <= v41)
    {
      v46 = 0;
    }

    else
    {
      v44 = 0;
      while (!*v43++)
      {
        if (v41 - a3 == --v44)
        {
          v47 = a3 - v41;
          goto LABEL_64;
        }
      }

      v41 -= v44;
      v46 = -v44;
    }

    if (v46 > v40)
    {
      v40 = v46;
    }
  }

  while (v41 < a3);
LABEL_66:
  if (v40)
  {
    v48 = __clz(v40) ^ 0x1F;
  }

  else
  {
LABEL_68:
    v48 = 0;
  }

  if (v48 >= 6)
  {
    v49 = 6;
  }

  else
  {
    v49 = v48;
  }

  if (!a3)
  {
    bzero(&__src, 0x440uLL);
    v50 = 0;
LABEL_96:
    v58 = 1;
    goto LABEL_97;
  }

  v50 = 0;
  v51 = 0;
  v52 = 2 << v49;
  do
  {
    v53 = *(v15 + 4 * v51);
    if (v53)
    {
      *(v15 + 4 * v50) = v53 + v49;
      ++v51;
LABEL_76:
      ++v50;
      continue;
    }

    if (v51 + 1 >= a3)
    {
      v54 = 1;
      ++v51;
      goto LABEL_87;
    }

    v54 = a3 - v51;
    v55 = 1;
    while (!*(v15 + 4 * v51 + 4 * v55))
    {
      if (a3 - v51 == ++v55)
      {
        goto LABEL_86;
      }
    }

    v54 = v55;
LABEL_86:
    v51 += v54;
    if (v54)
    {
LABEL_87:
      while (1)
      {
        v56 = v54 - v52;
        if (v54 < v52)
        {
          break;
        }

        *(v15 + 4 * v50++) = v49 | (~(-1 << v49) << 9);
        v54 = v56 + 1;
        if (v56 == -1)
        {
          goto LABEL_77;
        }
      }

      v57 = __clz(v54);
      *(v15 + 4 * v50) = v57 ^ 0x1F | (((-1 << (v57 ^ 0x1F)) + v54) << 9);
      goto LABEL_76;
    }

LABEL_77:
    ;
  }

  while (v51 < a3);
  bzero(&__src, 0x440uLL);
  v58 = v50 == 0;
  if (!v50)
  {
    goto LABEL_96;
  }

  for (i = 0; i != v50; ++i)
  {
    v60 = *(v15 + 4 * i) & 0x1FF;
    ++*&v72[4 * v60 - 1];
  }

LABEL_97:
  v61 = *a6;
  *(a7 + (*a6 >> 3)) = ((v48 != 0) << (*a6 & 7)) | *(a7 + (*a6 >> 3));
  *a6 = v61 + 1;
  if (v48)
  {
    *(a7 + ((v61 + 1) >> 3)) = ((v49 - 1) << ((v61 + 1) & 7)) | *(a7 + ((v61 + 1) >> 3));
    *a6 = v61 + 5;
  }

  sub_C2244(&__src, a4 + v49, a4 + v49, v68, v70, v69, a6, a7);
  v62 = *a6;
  if (!v58)
  {
    v63 = v15;
    do
    {
      v65 = *v63++;
      v64 = v65;
      v66 = v65 & 0x1FF;
      v67 = v70[v66];
      *(a7 + (v62 >> 3)) = (v69[v66] << (v62 & 7)) | *(a7 + (v62 >> 3));
      v62 += v67;
      *a6 = v62;
      if (v66 - 1 < v49)
      {
        *(a7 + (v62 >> 3)) = (v64 >> 9 << (v62 & 7)) | *(a7 + (v62 >> 3));
        v62 += v66;
        *a6 = v62;
      }

      --v50;
    }

    while (v50);
  }

  *(a7 + (v62 >> 3)) = (1 << (v62 & 7)) | *(a7 + (v62 >> 3));
  *a6 = v62 + 1;
  return sub_B9474(a1, v15);
}

unint64_t sub_C1B3C(uint64_t a1, size_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  if (*a2 * a4)
  {
    a2[117] = sub_B933C(a1);
    result = sub_B933C(a1);
  }

  else
  {
    result = 0;
    a2[117] = 0;
  }

  a2[118] = result;
  if (!*(a1 + 24) && a4)
  {
    v17 = 0;
    do
    {
      result = sub_C2244(a3, *a2, a5, a6, (a2[117] + *a2 * v17), a2[118] + 2 * *a2 * v17, a7, a8);
      ++v17;
      a3 += 2192;
    }

    while (a4 != v17);
  }

  return result;
}

void *sub_C1C20(void *result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = result[115];
  if (!v4)
  {
    v5 = result[114] + 1;
    result[114] = v5;
    v6 = *(result[3] + 4 * v5);
    v7 = *(result[2] + v5);
    result[115] = v6;
    result[116] = *result * v7;
    v8 = result[5];
    if (v8 + 1 == v7)
    {
      v9 = 1;
    }

    else if (result[6] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 + 2;
    }

    result[5] = v7;
    result[6] = v8;
    v10 = *(result + v9 + 56);
    v11 = *(result + v9 + 157);
    v12 = *a3;
    *(a4 + (*a3 >> 3)) = (v11 << (*a3 & 7)) | *(a4 + (*a3 >> 3));
    v13 = v12 + v10;
    *a3 = v13;
    v14 = 14;
    if (v6 > 0x2F0)
    {
      v14 = 20;
    }

    v15 = 7;
    if (v6 <= 0x28)
    {
      v15 = 0;
    }

    if (v6 <= 0xB0)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = (&unk_10C3AE + 4 * v16 + 4);
    do
    {
      v18 = v16;
      if (v16 == 25)
      {
        break;
      }

      ++v16;
      v19 = *v17;
      v17 += 2;
    }

    while (v6 >= v19);
    v20 = (&unk_10C3AE + 4 * v18);
    v21 = *(v20 + 2);
    v22 = v6 - *v20;
    v23 = *(result + v18 + 830);
    *(a4 + (v13 >> 3)) = (*(result + v18 + 428) << (v13 & 7)) | *(a4 + (v13 >> 3));
    v24 = v13 + v23;
    *a3 = v24;
    *(a4 + (v24 >> 3)) = (v22 << (v24 & 7)) | *(a4 + (v24 >> 3));
    *a3 = v24 + v21;
    v4 = result[115];
  }

  result[115] = v4 - 1;
  v25 = result[116] + a2;
  v26 = *(result[117] + v25);
  v27 = *a3;
  *(a4 + (*a3 >> 3)) = (*(result[118] + 2 * v25) << (*a3 & 7)) | *(a4 + (*a3 >> 3));
  *a3 = v27 + v26;
  return result;
}

void *sub_C1DAC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, char a7)
{
  v7 = result[115];
  if (!v7)
  {
    v8 = result[114] + 1;
    result[114] = v8;
    v9 = *(result[3] + 4 * v8);
    v10 = *(result[2] + v8);
    result[115] = v9;
    result[116] = v10 << a7;
    v11 = result[5];
    if (v11 + 1 == v10)
    {
      v12 = 1;
    }

    else if (result[6] == v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 + 2;
    }

    result[5] = v10;
    result[6] = v11;
    v13 = *(result + v12 + 56);
    v14 = *(result + v12 + 157);
    v15 = *a5;
    *(a6 + (*a5 >> 3)) = (v14 << (*a5 & 7)) | *(a6 + (*a5 >> 3));
    v16 = v15 + v13;
    *a5 = v16;
    v17 = 14;
    if (v9 > 0x2F0)
    {
      v17 = 20;
    }

    v18 = 7;
    if (v9 <= 0x28)
    {
      v18 = 0;
    }

    if (v9 <= 0xB0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v20 = (&unk_10C3AE + 4 * v19 + 4);
    do
    {
      v21 = v19;
      if (v19 == 25)
      {
        break;
      }

      ++v19;
      v22 = *v20;
      v20 += 2;
    }

    while (v9 >= v22);
    v23 = (&unk_10C3AE + 4 * v21);
    v24 = *(v23 + 2);
    v25 = v9 - *v23;
    v26 = *(result + v21 + 830);
    *(a6 + (v16 >> 3)) = (*(result + v21 + 428) << (v16 & 7)) | *(a6 + (v16 >> 3));
    v27 = v16 + v26;
    *a5 = v27;
    *(a6 + (v27 >> 3)) = (v25 << (v27 & 7)) | *(a6 + (v27 >> 3));
    *a5 = v27 + v24;
    v7 = result[115];
  }

  result[115] = v7 - 1;
  v28 = a2 + *result * *(a4 + 4 * result[116] + 4 * a3);
  v29 = *(result[117] + v28);
  v30 = *a5;
  *(a6 + (*a5 >> 3)) = (*(result[118] + 2 * v28) << (*a5 & 7)) | *(a6 + (*a5 >> 3));
  *a5 = v30 + v29;
  return result;
}

uint64_t sub_C1F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, uint64_t a11)
{
  v11 = off_1AD518();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v29 = *(v23 + 72);
  sub_C0E64(v14, v24, a10, a11);
  bzero(v34, 0x408uLL);
  v34[129] = 0x7FF0000000000000;
  bzero(v32, 0xB08uLL);
  v33 = 0x7FF0000000000000;
  bzero(v30, 0x888uLL);
  v31 = 0x7FF0000000000000;
  sub_C21A0(v21, v19, v17, v13, a9, v34, v32, v30);
  v25 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v25 + 13;
  result = sub_B933C(v22);
  if (!*(v22 + 24))
  {
    v27 = result;
    sub_C2244(v34, 0x100uLL, 256, result, v40, v39, a10, a11);
    sub_C2244(v32, 0x2C0uLL, 704, v27, v38, v37, a10, a11);
    sub_C2244(v30, 0x8CuLL, v29, v27, v36, v35, a10, a11);
    sub_B9474(v22, v27);
    result = sub_C2624(v21, v19, v17, v13, a9, v40, v39, v38, v37, v36, v35, a10, a11);
    if (v15)
    {
      v28 = *a10 + 7;
      *a10 = v28 & 0xFFFFFFF8;
      *(a11 + (v28 >> 3)) = 0;
    }
  }

  return result;
}

uint64_t sub_C21A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = 0;
    v9 = *(a7 + 2816);
    do
    {
      v10 = (a4 + 16 * v8);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(v10 + 6);
      v14 = *(v10 + 7);
      ++*(a7 + 4 * v13);
      *(a7 + 2816) = ++v9;
      if (v12)
      {
        v15 = *(a6 + 1024) + 1;
        do
        {
          ++*(a6 + 4 * *(result + (a2 & a3)));
          *(a6 + 1024) = v15;
          ++a2;
          ++v15;
          --v12;
        }

        while (v12);
      }

      v16 = v11 & 0x1FFFFFF;
      if (v16)
      {
        if (v13 >= 0x80)
        {
          ++*(a8 + 4 * (v14 & 0x3FF));
          ++*(a8 + 2176);
        }
      }

      a2 += v16;
      ++v8;
    }

    while (v8 != a5);
  }

  return result;
}

unint64_t sub_C2244(unint64_t result, size_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v14 = result;
  v41 = 0u;
  v42 = 0u;
  if (a2)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      if (*(result + 4 * v15))
      {
        if (v16 > 3)
        {
          if (v16 != 4)
          {
            break;
          }
        }

        else
        {
          *(&v41 + v16) = v15;
        }

        ++v16;
      }

      ++v15;
    }

    while (a2 != v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = 64 - __clz(a3 - 1);
  if (a3 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = v16 - 1;
  if (v16 <= 1)
  {
    v20 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v20 += 4;
    *a7 = v20;
    v21 = v41;
    *(a8 + (v20 >> 3)) = (v41 << (v20 & 7)) | *(a8 + (v20 >> 3));
    *a7 = v20 + v18;
    a5[v21] = 0;
    *(a6 + 2 * v21) = 0;
    return result;
  }

  bzero(a5, a2);
  sub_8F1E0(v14, a2, 15, a4, a5);
  result = sub_8FC28(a5, a2, a6);
  if (v16 <= 4)
  {
    v22 = 0;
    v23 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    *a7 = v23 + 2;
    *(a8 + ((v23 + 2) >> 3)) = (v19 << ((v23 + 2) & 7)) | *(a8 + ((v23 + 2) >> 3));
    v24 = v23 + 4;
    *a7 = v24;
    v25 = &v41 + 8;
    do
    {
      v26 = v22 + 1;
      if (v22 + 1 < v16)
      {
        v27 = *(&v41 + v22);
        v28 = v25;
        v29 = v19;
        do
        {
          v30 = *v28;
          result = a5[v27];
          if (a5[*v28] < result)
          {
            *v28 = v27;
            *(&v41 + v22) = v30;
            v27 = v30;
          }

          ++v28;
          --v29;
        }

        while (v29);
      }

      --v19;
      v25 += 8;
      ++v22;
    }

    while (v26 != v16);
    v31 = v41;
    v32 = v24 >> 3;
    v33 = v41 << (v24 & 7);
    v34 = v24 + v18;
    if (v16 == 3)
    {
      *(a8 + v32) = v33 | *(a8 + v32);
      *a7 = v34;
      v35 = v42;
      *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
      v34 += v18;
      *a7 = v34;
      *(a8 + (v34 >> 3)) = (v35 << (v34 & 7)) | *(a8 + (v34 >> 3));
    }

    else
    {
      if (v16 != 2)
      {
        *(a8 + v32) = v33 | *(a8 + v32);
        *a7 = v34;
        v37 = v42;
        *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
        v38 = v34 + v18;
        *a7 = v38;
        *(a8 + (v38 >> 3)) = (v37 << (v38 & 7)) | *(a8 + (v38 >> 3));
        v39 = v38 + v18;
        *a7 = v39;
        *(a8 + (v39 >> 3)) = (*(&v42 + 1) << (v39 & 7)) | *(a8 + (v39 >> 3));
        v40 = v39 + v18;
        *a7 = v40;
        *(a8 + (v40 >> 3)) = ((a5[v31] == 1) << (v40 & 7)) | *(a8 + (v40 >> 3));
        v36 = v40 + 1;
        goto LABEL_33;
      }

      *(a8 + v32) = v33 | *(a8 + v32);
      *a7 = v34;
      *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
    }

    v36 = v34 + v18;
LABEL_33:
    *a7 = v36;
    return result;
  }

  return sub_BFB18(a5, a2, a4, a7, a8);
}

uint64_t sub_C2624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t *a12, uint64_t a13)
{
  if (a5)
  {
    v13 = 0;
    v14 = *a12;
    do
    {
      v15 = (a4 + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = *(v15 + 6);
      v20 = *(v15 + 7);
      v21 = *(a8 + v19);
      *(a13 + (v14 >> 3)) = (*(a9 + 2 * v19) << (v14 & 7)) | *(a13 + (v14 >> 3));
      v22 = v14 + v21;
      *a12 = v22;
      LOWORD(v23) = v16;
      if (v16 >= 6)
      {
        if (v16 > 0x81)
        {
          if (v16 > 0x841)
          {
            if (v16 >> 1 >= 0xC21)
            {
              if (v16 < 0x5842)
              {
                LOWORD(v23) = 22;
              }

              else
              {
                LOWORD(v23) = 23;
              }
            }

            else
            {
              LOWORD(v23) = 21;
            }
          }

          else
          {
            LODWORD(v23) = (__clz(v16 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v24 = (__clz(v16 - 2) ^ 0x1F) - 1;
          v23 = ((v16 - 2) >> v24) + 2 * v24 + 2;
        }
      }

      v25 = HIBYTE(v17) & 0x80 | (v17 >> 25);
      v26 = v17 & 0x1FFFFFF;
      v27 = (v26 + v25);
      if (v27 > 9)
      {
        if (v27 > 0x85)
        {
          v30 = (__clz(v27 - 70) ^ 0x1F) + 12;
          if (v27 <= 0x845)
          {
            LOWORD(v28) = v30;
          }

          else
          {
            LOWORD(v28) = 23;
          }
        }

        else
        {
          v29 = (__clz(v27 - 6) ^ 0x1F) - 1;
          v28 = ((v27 - 6) >> v29) + 2 * v29 + 4;
        }
      }

      else
      {
        LOWORD(v28) = v26 + v25 - 2;
      }

      v31 = 4 * v23;
      v32 = *(&unk_10BA2C + v31);
      v33 = 4 * v28;
      v34 = ((v27 - *(&unk_10BA8C + v33)) << v32) | (v16 - *(&unk_10B9CC + v31));
      v35 = (*(&unk_10BAEC + v33) + v32);
      *(a13 + (v22 >> 3)) = (v34 << (v22 & 7)) | *(a13 + (v22 >> 3));
      v14 = v22 + v35;
      *a12 = v14;
      if (v16)
      {
        do
        {
          v36 = *(result + (a2 & a3));
          v37 = *(a6 + v36);
          *(a13 + (v14 >> 3)) = (*(a7 + 2 * v36) << (v14 & 7)) | *(a13 + (v14 >> 3));
          v14 += v37;
          *a12 = v14;
          ++a2;
          --v16;
        }

        while (v16);
      }

      if (v26)
      {
        if (v19 >= 0x80)
        {
          v38 = *(a10 + (v20 & 0x3FF));
          *(a13 + (v14 >> 3)) = (*(a11 + 2 * (v20 & 0x3FF)) << (v14 & 7)) | *(a13 + (v14 >> 3));
          *a12 = v14 + v38;
          *(a13 + ((v14 + v38) >> 3)) = (v18 << ((v14 + v38) & 7)) | *(a13 + ((v14 + v38) >> 3));
          v14 += v38 + (v20 >> 10);
          *a12 = v14;
        }
      }

      a2 += v26;
      ++v13;
    }

    while (v13 != a5);
  }

  return result;
}

uint64_t sub_C28B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t *a10, uint64_t a11)
{
  v11 = off_1AD518();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v24 = *(v23 + 72);
  sub_C0E64(v14, v25, a10, a11);
  v26 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v26 + 13;
  if (a9 > 0x80)
  {
    bzero(v36, 0x408uLL);
    v38 = 0x7FF0000000000000;
    bzero(v48, 0xB08uLL);
    v50 = 0x7FF0000000000000;
    bzero(v45, 0x888uLL);
    v47 = 0x7FF0000000000000;
    sub_C21A0(v21, v19, v17, v13, a9, v36, v48, v45);
    result = sub_BFDC8(v22, v36, *v37, 8, v44, v43, a10, a11);
    if (!*(v22 + 24))
    {
      result = sub_BFDC8(v22, v48, *v49, 10, v42, v41, a10, a11);
      if (!*(v22 + 24))
      {
        result = sub_BFDC8(v22, v45, *v46, (__clz(v24 - 1) ^ 0x1F) + 1, v40, v39, a10, a11);
        if (!*(v22 + 24))
        {
          result = sub_C2624(v21, v19, v17, v13, a9, v44, v43, v42, v41, v40, v39, a10, a11);
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    bzero(v48, 0x400uLL);
    if (a9)
    {
      v27 = 0;
      v28 = 0;
      v29 = v19;
      do
      {
        v30 = (v13 + 16 * v27);
        v31 = *v30;
        if (v31)
        {
          v32 = *v30;
          do
          {
            ++v48[*(v21 + (v29++ & v17))];
            --v32;
          }

          while (v32);
        }

        v28 += v31;
        v29 += v30[1] & 0x1FFFFFF;
        ++v27;
      }

      while (v27 != a9);
    }

    else
    {
      v28 = 0;
    }

    result = sub_BFDC8(v22, v48, v28, 8, v41, v45, a10, a11);
    if (!*(v22 + 24))
    {
      v34 = *a10;
      *(a11 + (*a10 >> 3)) = (0x92624416307003 << (*a10 & 7)) | *(a11 + (*a10 >> 3));
      *a10 = v34 + 56;
      *(a11 + ((v34 + 56) >> 3)) = *(a11 + ((v34 + 56) >> 3));
      *a10 = v34 + 59;
      *(a11 + ((v34 + 59) >> 3)) = (57269251 << ((v34 + 59) & 7)) | *(a11 + ((v34 + 59) >> 3));
      *a10 = v34 + 87;
      result = sub_C2624(v21, v19, v17, v13, a9, v41, v45, "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v", "", &unk_181E70, &unk_181EB0, a10, a11);
LABEL_16:
      if (v15)
      {
        v35 = *a10 + 7;
        *a10 = v35 & 0xFFFFFFF8;
        *(a11 + (v35 >> 3)) = 0;
      }
    }
  }

  return result;
}

void *sub_C2C74(int a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, uint64_t *a6, uint64_t a7)
{
  v9 = a5;
  v12 = a4 & a3;
  v13 = *a6;
  *(a7 + (*a6 >> 3)) = *(a7 + (*a6 >> 3));
  if (a5 == 1 || (v14 = __clz(a5 - 1) ^ 0x1F, v14 <= 0xE))
  {
    v15 = 4;
  }

  else
  {
    v15 = (v14 + 4) >> 2;
  }

  *(a7 + ((v13 + 1) >> 3)) = ((v15 - 4) << ((v13 + 1) & 7)) | *(a7 + ((v13 + 1) >> 3));
  v16 = v13 + 3;
  *(a7 + (v16 >> 3)) = ((a5 - 1) << (v16 & 7)) | *(a7 + (v16 >> 3));
  v17 = v16 + 4 * v15;
  *(a7 + (v17 >> 3)) = (1 << (v17 & 7)) | *(a7 + (v17 >> 3));
  v18 = v17 + 8;
  v19 = v18 & 0xFFFFFFF8;
  v20 = (a7 + (v19 >> 3));
  *v20 = 0;
  v21 = a4 + 1;
  if (v12 + a5 <= a4 + 1)
  {
    v23 = v18 >> 3;
  }

  else
  {
    v22 = v21 - v12;
    memcpy(v20, (a2 + v12), v21 - v12);
    v12 = 0;
    v19 += 8 * v22;
    v9 -= v22;
    v23 = v19 >> 3;
  }

  result = memcpy((a7 + v23), (a2 + v12), v9);
  v25 = v19 + 8 * v9;
  *a6 = v25;
  *(a7 + (v25 >> 3)) = 0;
  if (a1)
  {
    *(a7 + (v25 >> 3)) = 1 << (v19 & 7);
    *(a7 + ((v25 + 1) >> 3)) = (1 << ((v25 + 1) & 7)) | *(a7 + ((v25 + 1) >> 3));
    v26 = v25 + 9;
    *a6 = v26 & 0xFFFFFFF8;
    *(a7 + (v26 >> 3)) = 0;
  }

  return result;
}

uint64_t sub_C2E04(uint64_t result, unint64_t *a2, uint64_t a3)
{
  if (result)
  {
    v3 = __clz(result) ^ 0x1F;
    v4 = *a2;
    *(a3 + (*a2 >> 3)) = (1 << (*a2 & 7)) | *(a3 + (*a2 >> 3));
    *a2 = v4 + 1;
    *(a3 + ((v4 + 1) >> 3)) = (v3 << ((v4 + 1) & 7)) | *(a3 + ((v4 + 1) >> 3));
    v4 += 4;
    *a2 = v4;
    *(a3 + (v4 >> 3)) = (((-1 << v3) + result) << (v4 & 7)) | *(a3 + (v4 >> 3));
    v5 = v4 + v3;
  }

  else
  {
    v6 = *a2;
    *(a3 + (*a2 >> 3)) = *(a3 + (*a2 >> 3));
    v5 = v6 + 1;
  }

  *a2 = v5;
  return result;
}

compression_status compression_stream_init(compression_stream *stream, compression_stream_operation operation, compression_algorithm algorithm)
{
  if (algorithm > 2192)
  {
    if (algorithm - 2304 < 2)
    {
      return sub_87574(stream, operation, algorithm, 0);
    }

    if (algorithm == COMPRESSION_BROTLI)
    {
      return sub_86B78(stream, operation);
    }

    if (algorithm == 2193)
    {
      return sub_AE4A4(stream, operation, algorithm, 0);
    }

    return -1;
  }

  if (algorithm > 2048)
  {
    if (algorithm - 2049 < 2)
    {
      return sub_AE4A4(stream, operation, algorithm, 0);
    }

    return -1;
  }

  if (algorithm == COMPRESSION_LZ4)
  {
    return sub_8D044(stream, operation, 0);
  }

  if (algorithm != COMPRESSION_ZLIB)
  {
    if (algorithm == COMPRESSION_LZMA)
    {
      sub_859C0(stream, operation);
      return result;
    }

    return -1;
  }

  return sub_8CC20(stream, operation, 0);
}

uint64_t compression_stream_init_with_state_buffer(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  if ((a5 - 0x100000000) < 0xFFFFFFFF00000010)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a4;
  *a4 = 0;
  *(a4 + 8) = -1412628475;
  *(a4 + 12) = a5;
  return compression_stream_reinit(a1, a2, a3);
}

uint64_t compression_stream_reinit(uint64_t a1, int a2, int a3)
{
  if (a3 > 2192)
  {
    if ((a3 - 2304) < 2)
    {
      return sub_87574(a1, a2, a3, 1);
    }

    if (a3 != 2193)
    {
      return 0xFFFFFFFFLL;
    }

    return sub_AE4A4(a1, a2, a3, 1);
  }

  if ((a3 - 2049) < 2)
  {
    return sub_AE4A4(a1, a2, a3, 1);
  }

  if (a3 != 256)
  {
    if (a3 == 517)
    {
      return sub_8CC20(a1, a2, 1);
    }

    return 0xFFFFFFFFLL;
  }

  return sub_8D044(a1, a2, 1);
}

compression_status compression_stream_process(compression_stream *stream, int flags)
{
  state = stream->state;
  if (!state)
  {
    return -1;
  }

  v3 = flags;
  src_ptr = stream->src_ptr;
  dst_ptr = stream->dst_ptr;
  v7 = state[1];
  result = COMPRESSION_STATUS_ERROR;
  if (v7 > 2192)
  {
    if ((v7 - 2304) < 2)
    {
      result = sub_875A0(stream, flags);
      if (result)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v7 == 2818)
    {
      result = sub_86AB8(stream, flags);
      if (result)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v7 != 2193)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v7 > 2048)
  {
    if ((v7 - 2049) >= 2)
    {
      return result;
    }

LABEL_15:
    result = sub_AE4D0(stream, flags);
    if (result)
    {
      return result;
    }

    goto LABEL_24;
  }

  switch(v7)
  {
    case 256:
      result = sub_8D0FC(stream, flags);
      if (result)
      {
        return result;
      }

      break;
    case 517:
      result = sub_8CCD0(&stream->dst_ptr, flags);
      if (result)
      {
        return result;
      }

      break;
    case 774:
      result = sub_85A64(stream, flags);
      if (result)
      {
        return result;
      }

      break;
    default:
      return result;
  }

LABEL_24:
  if ((v3 & 1) != 0 && stream->src_ptr == src_ptr && stream->dst_ptr == dst_ptr)
  {
    return -1;
  }

  return result;
}

compression_status compression_stream_destroy(compression_stream *stream)
{
  state = stream->state;
  if (!state)
  {
    return -1;
  }

  v2 = state[1];
  if (v2 <= 2192)
  {
    if (v2 <= 2048)
    {
      if (v2 != 256 && v2 != 517)
      {
        if (v2 == 774)
        {
          return sub_85B18(stream);
        }

        return -1;
      }

      return sub_875C4(stream);
    }

    if ((v2 - 2049) < 2)
    {
      return sub_875C4(stream);
    }

    return -1;
  }

  if ((v2 - 2304) < 2)
  {
    return sub_875C4(stream);
  }

  if (v2 != 2818)
  {
    if (v2 == 2193)
    {
      return sub_875C4(stream);
    }

    return -1;
  }

  return sub_86C48(stream);
}

uint64_t compression_stream_identify_algorithm(int *a1)
{
  if (sub_AE4F4(a1))
  {
    return 2049;
  }

  if (sub_8D014())
  {
    return 517;
  }

  if (sub_85B50(a1))
  {
    return 774;
  }

  if (sub_8D704(a1))
  {
    return 256;
  }

  if (sub_875F4(a1))
  {
    return 2304;
  }

  if (sub_9D840(a1))
  {
    return 1794;
  }

  return 0xFFFFFFFFLL;
}

uint64_t compression_stream_get_state_size(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v3 = *(v1 + 4);
  if (v3 > 2048)
  {
    if ((v3 - 2049) >= 2 && v3 != 2193)
    {
      return result;
    }

    return *(v1 + 12);
  }

  if (v3 == 256 || v3 == 517)
  {
    return *(v1 + 12);
  }

  return result;
}

uint64_t compression_stream_get_encode_state_size(int a1)
{
  if (a1 > 2192)
  {
    if ((a1 - 2304) < 2)
    {
      return sub_8765C(a1);
    }

    if (a1 != 2193)
    {
      return 0;
    }

    return sub_AE584(a1);
  }

  if ((a1 - 2049) < 2)
  {
    return sub_AE584(a1);
  }

  if (a1 != 256)
  {
    if (a1 == 517)
    {
      return sub_64390();
    }

    return 0;
  }

  return sub_8D738();
}

uint64_t compression_stream_get_decode_state_size(int a1)
{
  if (a1 > 2192)
  {
    if ((a1 - 2304) < 2)
    {
      return sub_87660();
    }

    if (a1 != 2193)
    {
      return 0;
    }

    return sub_AE588();
  }

  if ((a1 - 2049) < 2)
  {
    return sub_AE588();
  }

  if (a1 != 256)
  {
    if (a1 == 517)
    {
      return sub_8D01C();
    }

    return 0;
  }

  return sub_8D738();
}

_DWORD *compression_stream_is_state_valid(_DWORD *result)
{
  if (result)
  {
    if (*result > 1u)
    {
      return 0;
    }

    else
    {
      return (result[2] == -1412628475);
    }
  }

  return result;
}

_DWORD *sub_C3328(_DWORD *a1, int a2, int a3, unsigned int a4, unsigned int a5)
{
  v6 = a4;
  v9 = a1;
  if (a1 && a1[3] >= a4)
  {
    v6 = a1[3];
  }

  else
  {
    free(a1);
    v9 = malloc(v6);
    if (!v9)
    {
      return v9;
    }
  }

  if (v6 > a5)
  {
    bzero(v9, v6 - a5);
  }

  *v9 = a2;
  v9[1] = a3;
  v9[2] = -1412628475;
  v9[3] = v6;
  return v9;
}

void sub_C33BC()
{
  v0 = off_1AD520();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v60 = v7;
  if (sub_84F18(v3, v0, v5, v7, 0.75))
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    if (v8)
    {
      v10 = 0;
      v11 = v9;
      v12 = v8;
      do
      {
        if (*(v4 + (v11 & v6)) < 0)
        {
          v14 = 2 * (v10 > 0xDF);
          if (*(v4 + (v11 & v6)) <= 0xBFu)
          {
            v13 = v14;
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          v13 = 0;
        }

        v10 = *(v4 + (v11 & v6));
        ++*(&v62 + v13);
        ++v11;
        --v12;
      }

      while (v12);
      v15 = (v63 + v64) > 0x18;
      bzero(&v62, 0x1800uLL);
      v16 = 0;
      v17 = 0;
      v18 = 495;
      if (v8 < 0x1EF)
      {
        v18 = v8;
      }

      memset(v61, 0, sizeof(v61));
      v19 = v9;
      do
      {
        v20 = *(v4 + (v19 & v6));
        v21 = *(v4 + (v19 & v6));
        ++*(&v62 + 256 * v17 + v21);
        ++v61[v17];
        v17 = v16 >= 0xE0 && v15;
        if (v20 > 0xBFu)
        {
          v17 = v15;
        }

        if (v20 >= 0)
        {
          v17 = 0;
        }

        ++v19;
        v16 = v21;
        --v18;
      }

      while (v18);
      v22 = 0;
      v23 = 2000;
      do
      {
        if (v22 >= 0x1EF)
        {
          if (v22 == 495)
          {
            v24 = 0;
          }

          else
          {
            v25 = v9 + v22;
            v26 = v22 < 0x1F1 || *(v4 + ((v25 - 497) & v6)) < 0xE0u;
            v27 = *(v4 + ((v25 - 496) & v6));
            v28 = !v26 && v15;
            if (v27 > 0xBF)
            {
              v28 = v15;
            }

            v24 = (v27 & 0x80) != 0 && v28;
          }

          v29 = *(v4 + ((v9 + v22 - 495) & v6));
          --*(&v62 + 256 * v24 + v29);
          --v61[v24];
        }

        if (v22 + 495 < v8)
        {
          v30 = *(v4 + ((v9 + v22 + 493) & v6)) >= 0xE0u && v15;
          if (*(v4 + ((v9 + v22 + 494) & v6)) > 0xBFu)
          {
            v30 = v15;
          }

          if (*(v4 + ((v9 + v22 + 494) & v6)) >= 0)
          {
            v30 = 0;
          }

          v31 = *(v4 + ((v9 + v22 + 495) & v6));
          ++*(&v62 + 256 * v30 + v31);
          ++v61[v30];
        }

        if (v22)
        {
          v32 = v9 + v22;
          v33 = v22 == 1 || *(v4 + ((v32 - 2) & v6)) < 0xE0u;
          v35 = *(v4 + ((v32 - 1) & v6));
          v36 = !v33 && v15;
          if (v35 > 0xBF)
          {
            v36 = v15;
          }

          v34 = (v35 & 0x80) != 0 && v36;
        }

        else
        {
          v34 = 0;
        }

        v37 = *(v4 + ((v9 + v22) & v6));
        v38 = &v62 + 256 * v34;
        v39 = v38[v37];
        if (v39 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v38[v37];
        }

        v41 = v61[v34];
        if (v41 > 0xFF)
        {
          v42 = log2(v41);
        }

        else
        {
          v42 = dbl_17CB30[v41];
        }

        if (v39 > 0xFF)
        {
          v43 = log2(v40);
        }

        else
        {
          v43 = dbl_17CB30[v40];
        }

        v8 = v60;
        v44 = v42 - v43 + 0.02905;
        if (v44 < 1.0)
        {
          v44 = v44 * 0.5 + 0.5;
        }

        if (v22 <= 0x7CF)
        {
          v44 = v23 / -2000.0 * 0.35 + 0.7 + v44;
        }

        v45 = v44;
        v2[v22++] = v45;
        --v23;
      }

      while (v60 != v22);
    }
  }

  else
  {
    bzero(&v62, 0x800uLL);
    if (v8 >= 0x7D0)
    {
      v46 = 2000;
    }

    else
    {
      v46 = v8;
    }

    if (v8)
    {
      v47 = v9;
      v48 = v46;
      do
      {
        ++*(&v62 + *(v4 + (v47++ & v6)));
        --v48;
      }

      while (v48);
      v49 = 0;
      do
      {
        if (v49 >= 0x7D0)
        {
          v50 = *(v4 + ((v9 - 2000) & v6));
          --*(&v62 + v50);
          --v46;
        }

        v51 = v49 + 2000;
        if (v49 + 2000 < v8)
        {
          v52 = *(v4 + ((v9 + 2000) & v6));
          ++*(&v62 + v52);
          ++v46;
        }

        v53 = *(v4 + (v9 & v6));
        v54 = *(&v62 + v53);
        if (v54 <= 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = *(&v62 + v53);
        }

        if (v46 > 0xFF)
        {
          v56 = log2(v46);
        }

        else
        {
          v56 = dbl_17CB30[v46];
        }

        if (v54 > 0xFF)
        {
          v57 = log2(v55);
        }

        else
        {
          v57 = dbl_17CB30[v55];
        }

        v8 = v60;
        v58 = v56 - v57 + 0.029;
        if (v58 < 1.0)
        {
          v58 = v58 * 0.5 + 0.5;
        }

        v59 = v58;
        *v2++ = v59;
        ++v9;
        v49 = v51 - 1999;
      }

      while (v51 - 1999 != v60);
    }
  }
}

size_t sub_C390C(unint64_t a1, size_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v32 = 0u;
  v33 = 0u;
  if (!a4)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = v10 + 1;
    v12 = a3 + v10;
    v13 = *(a3 + v10);
    if ((*(a3 + v10) & 0x80000000) == 0)
    {
      break;
    }

    v19 = v10 + 5;
    if (v10 + 5 > a4)
    {
      return 0;
    }

    v20 = *(a3 + v11);
    v21 = *(v12 + 2);
    v22 = *(v12 + 3);
    v23 = (v13 >> 5) & 3;
    if ((v23 - 2) < 2)
    {
      if (v19 >= a4)
      {
        return 0;
      }

      v24 = *(a3 + v19);
      if (v24 > 0xE0)
      {
        return 0;
      }

      v25 = *(a3 + v19) / 9u;
      BYTE10(v33) = v24 - 9 * v25;
      BYTE8(v33) = (((v24 - ((109 * v24) >> 8)) >> 1) + ((109 * v24) >> 8)) >> 5;
      BYTE9(v33) = v25 - 5 * ((52 * v25) >> 8);
      BYTE11(v33) = ~(-1 << SBYTE9(v33));
      BYTE12(v33) = ~(-1 << SBYTE8(v33));
      if ((BYTE9(v33) + BYTE10(v33)) > 4u)
      {
        goto LABEL_31;
      }

      v19 = v10 + 6;
LABEL_21:
      sub_9776C(&v32, a6);
      goto LABEL_22;
    }

    if (v23)
    {
      goto LABEL_21;
    }

LABEL_22:
    v26 = (((v21 | (v20 << 8)) & 0xFFE0FFFF | ((v13 & 0x1F) << 16)) + 1);
    v10 = __rev16(v22) + 1 + v19;
    v27 = v10 > a4 || v9 + v26 > a2;
    if (v27 || sub_DA6AC(&v32, a1, (a1 + v9), v26 + a1 + v9, a1 + a2, (a3 + v19), a4 - v19) != v26)
    {
      return 0;
    }

    v9 += v26;
LABEL_28:
    if (v10 >= a4)
    {
      return 0;
    }
  }

  if (*(a3 + v10))
  {
    v14 = v10 + 3;
    if (v13 > 2 || v14 > a4)
    {
      return 0;
    }

    v16 = (*(v12 + 2) | (*(a3 + v11) << 8)) + 1;
    v10 = v16 + v14;
    v17 = v16 + v9;
    if (v16 + v14 > a4 || v17 > a2)
    {
      return 0;
    }

    memcpy((a1 + v9), (a3 + v14), v16);
    v9 = v17;
    goto LABEL_28;
  }

  *a5 = v11;
LABEL_31:
  if ((v13 & 0x80) != 0)
  {
    return 0;
  }

  return v9;
}

uint64_t sub_C3B30(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = 0;
  v4 = a3[1] - 1;
  v5 = v4 + a3[2] + a3[3];
  v43[2] = v4 + a3[2];
  v43[3] = v5;
  v6 = v5 + a3[4];
  v7 = v6 + a3[5];
  v43[4] = v6;
  v43[5] = v7;
  v43[0] = 17;
  v43[1] = v4;
  v8 = a2 + 17;
  do
  {
    v9 = *(v8 + v3);
    v10 = v43[v9];
    v44[v10] = v3 + 17;
    v43[v9] = v10 - 1;
    v11 = *(v8 + v3 - 1);
    v12 = v43[v11];
    v43[v11] = v12 - 1;
    v13 = *(v8 + v3 - 2);
    v14 = v43[v13];
    v44[v12] = v3 + 16;
    v44[v14] = v3 + 15;
    v43[v13] = v14 - 1;
    v15 = *(v8 + v3 - 3);
    v16 = v43[v15];
    v43[v15] = v16 - 1;
    v17 = *(v8 + v3 - 4);
    v18 = v43[v17];
    v44[v16] = v3 + 14;
    v44[v18] = v3 + 13;
    v43[v17] = v18 - 1;
    v19 = *(v8 + v3 - 5);
    v20 = v43[v19];
    v43[v19] = v20 - 1;
    v44[v20] = v3 + 12;
    v3 -= 6;
  }

  while (v3 != -18);
  if (v43[0])
  {
    v21 = 0;
    LODWORD(v22) = 0;
    v23 = result + 128;
    v24 = 2;
    v25 = 0x8000000000000000;
    for (i = 1; i != 6; ++i)
    {
      v27 = a3[i];
      if (a3[i])
      {
        v28 = -v24;
        v22 = v22;
        v29 = 0x1FuLL / v24;
        result = (v29 + 4) & 0x3C;
        v30 = vdupq_n_s64(v29);
        do
        {
          v31 = 0;
          v32 = i | (v44[v22] << 16);
          v33 = __rbit64(v21);
          v34 = 4 * v33;
          v35 = 12 * v28 + 4 * v33;
          v36 = 8 * v28 + 4 * v33;
          v37 = v28 + v33;
          v38 = v23 - 4 * v24;
          do
          {
            v39 = vdupq_n_s64(v31);
            v40 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_10A0F0)));
            if (vuzp1_s16(v40, 2).u8[0])
            {
              *(v38 + v34) = v32;
            }

            if (vuzp1_s16(v40, 2).i8[2])
            {
              *(v38 + 4 * v37) = v32;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_10C440)))).i32[1])
            {
              *(v38 + v36) = v32;
              *(v38 + v35) = v32;
            }

            v31 += 4;
            v38 += 16 * v28;
          }

          while (result != v31);
          ++v22;
          v21 += v25;
          --v27;
        }

        while (v27);
      }

      v24 *= 2;
      v25 >>= 1;
    }
  }

  else
  {
    v41 = 0;
    v42 = vdupq_n_s32(v44[0] << 16);
    do
    {
      *(result + v41) = v42;
      v41 += 16;
    }

    while (v41 != 128);
  }

  return result;
}

uint64_t sub_C3DC8(char *__src, int a2, uint64_t a3, uint64_t a4)
{
  v8 = (a3 - 2);
  v9 = 16;
  do
  {
    v10 = *v8--;
    --v9;
  }

  while (v10 == -1);
  v11 = 0;
  v12 = 1;
  v13 = (1 << a2);
  if (v9 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v9;
  }

  if (v9 >= a2)
  {
    v15 = 1 << a2;
  }

  else
  {
    v15 = 1 << v9;
  }

  v16 = v14;
  v17 = 2;
  v18 = 0x8000000000000000;
  do
  {
    v19 = *(a4 + 2 * v12);
    if (*(a4 + 2 * v12))
    {
      v20 = v12 - 16;
      do
      {
        v20 = *(a3 + 2 * v20);
        v21 = &__src[4 * __rbit64(v11)];
        v22 = v15;
        do
        {
          *&v21[4 * (v22 - v17)] = v12 | (v20 << 16);
          v22 -= v17;
        }

        while (v22 > 0);
        v11 += v18;
        --v19;
      }

      while (v19);
    }

    v17 *= 2;
    v18 >>= 1;
  }

  while (v12++ < v16);
  if (v13 != v15)
  {
    do
    {
      memcpy(&__src[4 * v15], __src, 4 * v15);
      v24 = v13 == 2 * v15;
      v15 *= 2;
    }

    while (!v24);
  }

  if (v9 > a2)
  {
    v25 = 0;
    v26 = a2;
    v27 = v9;
    v28 = a2 + 1;
    v29 = 0x8000000000000000;
    v30 = 2;
    v31 = __src;
    v32 = 1 << a2;
    do
    {
      v33 = v26 + 1;
      if (*(a4 + 2 * (v26 + 1)))
      {
        v34 = v26 - 15;
        do
        {
          if (!v25)
          {
            v35 = v26 + 1;
            if (v26 <= 13)
            {
              v36 = v26;
              v35 = v28;
              v37 = 1 << (v33 - a2);
              while (1)
              {
                v38 = v37 - *(a4 + 2 + 2 * v36);
                if (v38 < 1)
                {
                  break;
                }

                v37 = 2 * v38;
                ++v35;
                if (++v36 >= 14)
                {
                  v35 = 15;
                  break;
                }
              }
            }

            v31 += 4 * v32;
            v32 = 1 << (v35 - a2);
            v13 = (v32 + v13);
            v39 = __rbit64(v11);
            v11 += 0x8000000000000000 >> (a2 - 1);
            *&__src[4 * v39] = v35 | ((((v31 - __src) >> 2) - v39) << 16);
          }

          v34 = *(a3 + 2 * v34);
          v40 = &v31[4 * __rbit64(v25)];
          v41 = v32;
          do
          {
            *&v40[4 * (v41 - v30)] = (v33 - a2) | (v34 << 16);
            v41 -= v30;
          }

          while (v41 > 0);
          v25 += v29;
          v42 = *(a4 + 2 * v33) - 1;
          *(a4 + 2 * v33) = v42;
        }

        while (v42);
      }

      v30 *= 2;
      v29 >>= 1;
      ++v28;
      ++v26;
    }

    while (v33 < v27);
  }

  return v13;
}

uint64_t sub_C400C(int *__src, char a2, unsigned __int16 *a3, int a4)
{
  v5 = 1;
  v6 = (1 << a2);
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v14 = a3[1];
        v15 = *a3;
        if (v14 <= v15)
        {
          *__src = (v14 << 16) | 1;
          v16 = (*a3 << 16) | 1;
        }

        else
        {
          *__src = (v15 << 16) | 1;
          v16 = (a3[1] << 16) | 1;
        }

        __src[1] = v16;
        v5 = 2;
      }
    }

    else
    {
      *__src = *a3 << 16;
      v5 = 1;
    }
  }

  else
  {
    if (a4 == 2)
    {
      *__src = (*a3 << 16) | 1;
      __src[2] = (*a3 << 16) | 1;
      v17 = a3[2];
      v18 = a3[1];
      if (v17 > v18)
      {
        __src[1] = (v18 << 16) | 2;
        v19 = (a3[2] << 16) | 2;
LABEL_24:
        __src[3] = v19;
        v5 = 4;
        goto LABEL_28;
      }

      __src[1] = (v17 << 16) | 2;
      v13 = a3[1];
LABEL_23:
      v19 = (v13 << 16) | 2;
      goto LABEL_24;
    }

    if (a4 != 4)
    {
      if (a4 != 3)
      {
        goto LABEL_28;
      }

      v7 = 0;
      v8 = 2;
      do
      {
        v9 = v7++;
        v10 = a3[v9];
        v11 = v8;
        do
        {
          v12 = *(a3 + v11);
          if (v12 < v10)
          {
            *(a3 + v11) = v10;
            a3[v9] = v12;
            v10 = v12;
          }

          v11 += 2;
        }

        while (v11 != 8);
        v8 += 2;
      }

      while (v7 != 3);
      *__src = (*a3 << 16) | 2;
      __src[2] = (a3[1] << 16) | 2;
      __src[1] = (a3[2] << 16) | 2;
      v13 = a3[3];
      goto LABEL_23;
    }

    v20 = a3[3];
    v21 = a3[2];
    if (v20 < v21)
    {
      a3[3] = v21;
      a3[2] = v20;
    }

    *__src = (*a3 << 16) | 1;
    __src[1] = (a3[1] << 16) | 2;
    __src[2] = (*a3 << 16) | 1;
    __src[3] = (a3[2] << 16) | 3;
    __src[4] = (*a3 << 16) | 1;
    __src[5] = (a3[1] << 16) | 2;
    __src[6] = (*a3 << 16) | 1;
    __src[7] = (a3[3] << 16) | 3;
    v5 = 8;
  }

LABEL_28:
  while (v5 != v6)
  {
    memcpy(&__src[v5], __src, 4 * v5);
    v5 *= 2;
  }

  return v6;
}

uint64_t encryptFDRData(const void *a1, size_t a2, void *a3, size_t *a4)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218752;
    v14 = a1;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = a4;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "encryptFDRData %p %zu %p %p\n", &v13, 0x2Au);
  }

  v9 = encryptFDRDataInternal(a1, a2, a3, a4, 0);
  v10 = v9;
  if (v9)
  {
    sub_CAC50(v9, v9);
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      LODWORD(v14) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "encryptFDRData -> %d\n", &v13, 8u);
    }
  }

  return v10;
}

uint64_t encryptFDRDataInternal(const void *a1, size_t a2, void *a3, size_t *a4, int a5)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v10 = __osLogPearlLibTrace;
  }

  else
  {
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134219008;
    v20 = a1;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = a3;
    v25 = 2048;
    v26 = a4;
    v27 = 1024;
    v28 = a5;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "encryptFDRDataInternal %p %zu %p %p %d\n", &v19, 0x30u);
  }

  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a2 >= 0xFFFFFFFFFFFFFFACLL)
          {
            sub_CB0E8(a2 >= 0xFFFFFFFFFFFFFFACLL, &v19);
          }

          else if (*a4 < a2 + 84)
          {
            sub_CAFE8(&v19);
          }

          else
          {
            v11 = sub_C48EC();
            if (v11)
            {
              sub_CADE8(v11, v11, &v19);
            }

            else
            {
              v12 = sub_C4988(dword_1C6C90, 9, a5, a1, a2, a3, a4);
              if (!v12)
              {
                v13 = 0;
                goto LABEL_17;
              }

              sub_CAEE8(v12, v12, &v19);
            }
          }
        }

        else
        {
          sub_CB1F0(&v19);
        }
      }

      else
      {
        sub_CB2F0(&v19);
      }
    }

    else
    {
      sub_CB3F0(&v19);
    }
  }

  else
  {
    sub_CB4F0(&v19);
  }

  v13 = v19;
LABEL_17:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v13)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = 67109120;
      LODWORD(v20) = v13;
      v15 = v14;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&dword_0, v15, v16, "encryptFDRDataInternal -> %d\n", &v19, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v17 = __osLogPearlLibTrace;
    }

    else
    {
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = 0;
      v15 = v17;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  return v13;
}

uint64_t verifyFDRData(const void *a1, size_t a2)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    v14 = a1;
    v15 = 2048;
    v16 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "verifyFDRData %p %zu\n", &v13, 0x16u);
  }

  if (a1)
  {
    if (a2)
    {
      v5 = sub_C48EC();
      if (v5)
      {
        sub_CB5F0(v5, v5, &v13);
      }

      else
      {
        v6 = sub_C4988(dword_1C6C90, 10, 0, a1, a2, 0, 0);
        v7 = 0;
        if (!v6)
        {
          goto LABEL_12;
        }

        sub_CB6F0(v6, v6, &v13);
      }
    }

    else
    {
      sub_CB7F0(&v13);
    }
  }

  else
  {
    sub_CB8F0(&v13);
  }

  v7 = v13;
LABEL_12:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v7)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v8 = __osLogPearlLibTrace;
    }

    else
    {
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      LODWORD(v14) = v7;
      v9 = v8;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_29:
      _os_log_impl(&dword_0, v9, v10, "verifyFDRData -> %d\n", &v13, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      LODWORD(v14) = 0;
      v9 = v11;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_29;
    }
  }

  return v7;
}

uint64_t sub_C48EC()
{
  v0 = IOServiceMatching("ApplePearlSEPDriver");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    v3 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_1C6C90);
    v4 = v3;
    if (v3)
    {
      sub_CB9F0(v3);
    }

    IOObjectRelease(v2);
  }

  else
  {
    sub_CBAFC(&v6);
    return v6;
  }

  return v4;
}

uint64_t sub_C4988(mach_port_t a1, __int16 a2, __int16 a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v14 = calloc(a5 + 8, 1uLL);
  if (v14)
  {
    v15 = v14;
    *v14 = 21072;
    v14[1] = a2;
    v14[2] = 1;
    v14[3] = a3;
    if (a5)
    {
      memmove(v14 + 4, a4, a5);
    }

    if (a7)
    {
      v18 = *a7;
      v16 = IOConnectCallStructMethod(a1, 0, v15, a5 + 8, a6, &v18);
      *a7 = v18;
    }

    else
    {
      v18 = 0;
      v16 = IOConnectCallStructMethod(a1, 0, v15, a5 + 8, a6, &v18);
    }

    free(v15);
  }

  else
  {
    sub_CBC04(&v19);
    return v19;
  }

  return v16;
}

uint64_t decryptFDRData(const void *a1, size_t a2, void *a3, size_t *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (*a4 < a2)
          {
            sub_CBF04(&v12);
          }

          else
          {
            v8 = sub_C48EC();
            if (v8)
            {
              sub_CBD04(v8, v8, &v12);
            }

            else
            {
              v9 = sub_C4988(dword_1C6C90, 30, 0, a1, a2, a3, a4);
              v10 = 0;
              if (!v9)
              {
                goto LABEL_8;
              }

              sub_CBE04(v9, v9, &v12);
            }
          }
        }

        else
        {
          sub_CC004(&v12);
        }
      }

      else
      {
        sub_CC104(&v12);
      }
    }

    else
    {
      sub_CC204(&v12);
    }
  }

  else
  {
    sub_CC304(&v12);
  }

  v10 = v12;
LABEL_8:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v10;
}

uint64_t overridePCECalibration(const void *a1, size_t a2)
{
  if (a1 && a2)
  {
    v4 = sub_C48EC();
    if (v4)
    {
      sub_CC404(v4, v4, &v8);
      v6 = v8;
    }

    else
    {
      v5 = sub_C4988(dword_1C6C90, 34, 0, a1, a2, 0, 0);
      v6 = 0;
      if (v5)
      {
        sub_CC504(v5, v5, &v9);
        v6 = v9;
      }
    }
  }

  else
  {
    sub_CC604(&v10);
    v6 = v10;
  }

  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v6;
}

uint64_t decompressReferenceFrames(const void *a1, size_t a2, uint64_t a3)
{
  v98 = 0;
  *__str = 0u;
  v106 = 0u;
  v3 = &unk_1C6000;
  if (!a1 || !a2)
  {
    sub_CD244(buf);
LABEL_176:
    v72 = *buf;
    goto LABEL_141;
  }

  if (!a3)
  {
    sub_CD144(buf);
    goto LABEL_176;
  }

  v7 = sub_C48EC();
  if (v7)
  {
    sub_CC704(v7, v7, buf);
    goto LABEL_176;
  }

  v8 = calloc(a2 + 9, 1uLL);
  if (!v8)
  {
    sub_CD044(buf);
    goto LABEL_176;
  }

  v9 = v8;
  *v8 = 589827;
  v8[4] = 0;
  *(v8 + 5) = a2;
  memcpy(v8 + 9, a1, a2);
  v10 = sub_C4988(dword_1C6C90, 36, 0, v9, a2 + 9, 0, 0);
  if (v10)
  {
    v87 = v10;
    sub_CC804(v10, v9);
    v72 = v87;
    goto LABEL_141;
  }

  free(v9);
  v98 = 52;
  v11 = calloc(0x34uLL, 1uLL);
  if (!v11)
  {
    sub_CCF44(buf);
    goto LABEL_176;
  }

  v12 = v11;
  v13 = sub_C4988(dword_1C6C90, 45, 0, 0, 0, v11, &v98);
  if (v13)
  {
    sub_CC914(__stderrp, v13, v13, buf);
LABEL_180:
    v72 = *buf;
    goto LABEL_181;
  }

  fprintf(__stderrp, "ReferenceFramesInfo setCount: %d\n", *v12);
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLib)
  {
    v14 = __osLogPearlLib;
  }

  else
  {
    v14 = &_os_log_default;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *v12;
    *buf = 67109120;
    *v100 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "ReferenceFramesInfo setCount: %d\n", buf, 8u);
  }

  if (!*v12)
  {
    sub_CCE40(buf);
    goto LABEL_180;
  }

  v16 = [NSString stringWithFormat:@"%s%s", a3, "/System/Library/Pearl/ReferenceFrames"];
  if (!v16)
  {
    sub_CCD4C(__stderrp, buf);
    goto LABEL_180;
  }

  v17 = v16;
  fprintf(__stderrp, "ReferenceFramesPath: %s\n", [(NSString *)v16 UTF8String]);
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLib)
  {
    v18 = __osLogPearlLib;
  }

  else
  {
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v17;
    v20 = v18;
    v21 = [(NSString *)v17 UTF8String];
    *buf = 136315138;
    *v100 = v21;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "ReferenceFramesPath: %s\n", buf, 0xCu);
  }

  v22 = +[NSFileManager defaultManager];
  v23 = [(NSFileManager *)v22 fileExistsAtPath:v17];

  v91 = v17;
  if (v23)
  {
    v24 = +[NSFileManager defaultManager];
    v25 = [(NSFileManager *)v24 removeItemAtPath:v17 error:0];

    if (v25)
    {
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v26 = __osLogPearlLib;
      }

      else
      {
        v26 = &_os_log_default;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v100 = v17;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Removed %@\n", buf, 0xCu);
      }

      goto LABEL_34;
    }

    v72 = v25 ^ 1;
    sub_CCA14(v72, v17);
LABEL_181:
    free(v12);
    goto LABEL_141;
  }

LABEL_34:
  v27 = +[NSFileManager defaultManager];
  v28 = [(NSFileManager *)v27 fileExistsAtPath:v17];

  if (v28)
  {
    goto LABEL_37;
  }

  v103 = NSFilePosixPermissions;
  v104 = &off_1BC6F8;
  v29 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
  v30 = +[NSFileManager defaultManager];
  v31 = [(NSFileManager *)v30 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:v29 error:0]^ 1;

  if (v31)
  {
    sub_CCB24(v31, v29, v17);
    v72 = v31;
    goto LABEL_181;
  }

LABEL_37:
  if (*v12)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v92 = 0;
    v93 = 0;
    v35 = 0;
    v36 = 0;
    v89 = v12 + 1;
    v37 = 0;
    v38 = v91;
    v88 = v12;
    while (1)
    {
      v96 = &v89[3 * v32];
      fprintf(__stderrp, "ReferenceFramesSetInfo, index: %d, type: %d, count: %d, size: %d\n", v32, *v96, v96[1], v96[2]);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v39 = __osLogPearlLib;
      }

      else
      {
        v39 = &_os_log_default;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *v96;
        v41 = v96[1];
        v42 = v96[2];
        *buf = 67109888;
        *v100 = v32;
        *&v100[4] = 1024;
        *&v100[6] = v40;
        LOWORD(v101) = 1024;
        *(&v101 + 2) = v41;
        HIWORD(v101) = 1024;
        *v102 = v42;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "ReferenceFramesSetInfo, index: %d, type: %d, count: %d, size: %d\n", buf, 0x1Au);
      }

      v43 = *v96;
      if (v43 <= 3)
      {
        v92 = off_1AA228[v43];
      }

      v44 = +[NSMutableDictionary dictionary];

      if (!v44)
      {
        fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "setDictionary", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 383);
        if (qword_1C6C98 != -1)
        {
          sub_CADC0();
        }

        if (__osLogPearlLib)
        {
          v85 = __osLogPearlLib;
        }

        else
        {
          v85 = &_os_log_default;
        }

        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v100 = "setDictionary";
          *&v100[8] = 2048;
          v101 = 0;
          *v102 = 2080;
          *&v102[2] = "";
          *&v102[10] = 2080;
          *&v102[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v102[20] = 1024;
          *&v102[22] = 383;
          _os_log_impl(&dword_0, v85, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v72 = 261;
        v38 = v91;
        goto LABEL_81;
      }

      v94 = v32;
      v45 = v44;
      [v44 setObject:&off_1BC710 forKeyedSubscript:@"FormatDR"];
      v46 = [NSString stringWithFormat:@"%@/reference-%@.plist", v38, v92];

      v93 = v45;
      if (!v46)
      {
        fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "dictFileName", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 388);
        if (qword_1C6C98 != -1)
        {
          sub_CADC0();
        }

        if (__osLogPearlLib)
        {
          v86 = __osLogPearlLib;
        }

        else
        {
          v86 = &_os_log_default;
        }

        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v100 = "dictFileName";
          *&v100[8] = 2048;
          v101 = 0;
          *v102 = 2080;
          *&v102[2] = "";
          *&v102[10] = 2080;
          *&v102[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v102[20] = 1024;
          *&v102[22] = 388;
          _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v72 = 261;
        v37 = v45;
        v38 = v91;
        goto LABEL_81;
      }

      v90 = v46;
      v47 = v96;
      if (v96[1])
      {
        break;
      }

      v49 = v94;
LABEL_70:
      v37 = v90;
      if (([v93 writeToFile:v90 atomically:0] & 1) == 0)
      {
        sub_CCC3C(__stderrp, v93);
        v72 = 1;
        v12 = v88;
        goto LABEL_81;
      }

      fprintf(__stderrp, "Reference set dictionary written to %s\n", [(NSString *)v90 UTF8String]);
      v12 = v88;
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v68 = __osLogPearlLib;
      }

      else
      {
        v68 = &_os_log_default;
      }

      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = v90;
        v70 = v68;
        v71 = [(NSString *)v90 UTF8String];
        *buf = 136315138;
        *v100 = v71;
        _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEFAULT, "Reference set dictionary written to %s\n", buf, 0xCu);
      }

      v32 = v49 + 1;
      if (v32 >= *v88)
      {

        v72 = 0;
LABEL_81:

        goto LABEL_82;
      }
    }

    v48 = 0;
    LODWORD(v49) = v94;
    while (1)
    {
      v97[0] = v49;
      v97[1] = v48;
      v98 = v47[2] + 524;
      v50 = calloc(v98, 1uLL);
      if (!v50)
      {
        break;
      }

      v51 = v50;
      v52 = sub_C4988(v3[804], 46, 0, v97, 8uLL, v50, &v98);
      if (v52)
      {
        v72 = v52;
        v75 = v52;
        fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "err == 0 ", v52, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 403);
        if (qword_1C6C98 != -1)
        {
          sub_CADC0();
        }

        if (__osLogPearlLib)
        {
          v76 = __osLogPearlLib;
        }

        else
        {
          v76 = &_os_log_default;
        }

        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v100 = "err == 0 ";
          *&v100[8] = 2048;
          v101 = v75;
          *v102 = 2080;
          *&v102[2] = "";
          *&v102[10] = 2080;
          *&v102[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v102[20] = 1024;
          *&v102[22] = 403;
          _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v3 = &unk_1C6000;
        goto LABEL_139;
      }

      if ((snprintf(__str, 0x20uLL, "%.6f", *v51) - 32) <= 0xFFFFFFE0)
      {
        fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "ret > 0 && ret < sizeof(tempChar)", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 406);
        if (qword_1C6C98 != -1)
        {
          sub_CADC0();
        }

        if (__osLogPearlLib)
        {
          v77 = __osLogPearlLib;
        }

        else
        {
          v77 = &_os_log_default;
        }

        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v100 = "ret > 0 && ret < sizeof(tempChar)";
          *&v100[8] = 2048;
          v101 = 0;
          *v102 = 2080;
          *&v102[2] = "";
          *&v102[10] = 2080;
          *&v102[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v102[20] = 1024;
          *&v102[22] = 406;
          _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        goto LABEL_138;
      }

      v53 = [NSString stringWithUTF8String:__str];

      if (!v53)
      {
        fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "tempString", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 409);
        if (qword_1C6C98 != -1)
        {
          sub_CADC0();
        }

        if (__osLogPearlLib)
        {
          v78 = __osLogPearlLib;
        }

        else
        {
          v78 = &_os_log_default;
        }

        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v100 = "tempString";
          *&v100[8] = 2048;
          v101 = 0;
          *v102 = 2080;
          *&v102[2] = "";
          *&v102[10] = 2080;
          *&v102[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v102[20] = 1024;
          *&v102[22] = 409;
          _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v34 = 0;
        goto LABEL_138;
      }

      v34 = v53;
      v54 = [NSString stringWithFormat:@"reference-%@__T_%@.bin", v92, v53];

      if (!v54)
      {
        fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "refFileName", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 412);
        if (qword_1C6C98 != -1)
        {
          sub_CADC0();
        }

        if (__osLogPearlLib)
        {
          v79 = __osLogPearlLib;
        }

        else
        {
          v79 = &_os_log_default;
        }

        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v100 = "refFileName";
          *&v100[8] = 2048;
          v101 = 0;
          *v102 = 2080;
          *&v102[2] = "";
          *&v102[10] = 2080;
          *&v102[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v102[20] = 1024;
          *&v102[22] = 412;
          _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v35 = 0;
        goto LABEL_138;
      }

      v35 = v54;
      v55 = [NSString stringWithFormat:@"%@/%@", v38, v54];

      if (!v55)
      {
        fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "refPath", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 415);
        if (qword_1C6C98 != -1)
        {
          sub_CADC0();
        }

        if (__osLogPearlLib)
        {
          v80 = __osLogPearlLib;
        }

        else
        {
          v80 = &_os_log_default;
        }

        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v100 = "refPath";
          *&v100[8] = 2048;
          v101 = 0;
          *v102 = 2080;
          *&v102[2] = "";
          *&v102[10] = 2080;
          *&v102[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v102[20] = 1024;
          *&v102[22] = 415;
          _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v36 = 0;
LABEL_138:
        v72 = 261;
LABEL_139:
        free(v88);
        free(v51);

        v73 = v91;
        goto LABEL_140;
      }

      v36 = v55;
      [v93 setObject:v35 forKeyedSubscript:v34];
      v56 = [NSData dataWithBytesNoCopy:v51 + 3 length:v51[2] freeWhenDone:0];

      if (!v56)
      {
        fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "refFrameData", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 423);
        if (qword_1C6C98 != -1)
        {
          sub_CADC0();
        }

        if (__osLogPearlLib)
        {
          v81 = __osLogPearlLib;
        }

        else
        {
          v81 = &_os_log_default;
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v100 = "refFrameData";
          *&v100[8] = 2048;
          v101 = 0;
          *v102 = 2080;
          *&v102[2] = "";
          *&v102[10] = 2080;
          *&v102[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v102[20] = 1024;
          *&v102[22] = 423;
          _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v33 = 0;
        goto LABEL_138;
      }

      v33 = v56;
      if (![(NSData *)v56 writeToFile:v36 atomically:0])
      {
        fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "err == 0 ", 1, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 426);
        if (qword_1C6C98 != -1)
        {
          sub_CADC0();
        }

        if (__osLogPearlLib)
        {
          v84 = __osLogPearlLib;
        }

        else
        {
          v84 = &_os_log_default;
        }

        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *v100 = "err == 0 ";
          *&v100[8] = 2048;
          v101 = 1;
          *v102 = 2080;
          *&v102[2] = "";
          *&v102[10] = 2080;
          *&v102[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
          *&v102[20] = 1024;
          *&v102[22] = 426;
          _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v72 = 1;
        goto LABEL_139;
      }

      v57 = v51;
      v58 = v35;
      v95 = v34;
      v59 = v56;
      v60 = v57;
      fprintf(__stderrp, "Reference frame (set=%d, frame=%d, size=%d, type=%d, temp=%f) written to %s\n", v94, v48, v57[2], *v96, *v57, [(NSString *)v36 UTF8String]);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      v49 = v94;
      if (__osLogPearlLib)
      {
        v61 = __osLogPearlLib;
      }

      else
      {
        v61 = &_os_log_default;
      }

      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = v60[2];
        v63 = *v96;
        v64 = *v60;
        v65 = v36;
        v66 = v61;
        v49 = v94;
        v67 = [(NSString *)v36 UTF8String];
        *buf = 67110402;
        *v100 = v94;
        *&v100[4] = 1024;
        *&v100[6] = v48;
        LOWORD(v101) = 1024;
        *(&v101 + 2) = v62;
        HIWORD(v101) = 1024;
        *v102 = v63;
        *&v102[4] = 2048;
        *&v102[6] = v64;
        v3 = &unk_1C6000;
        *&v102[14] = 2080;
        *&v102[16] = v67;
        _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEFAULT, "Reference frame (set=%d, frame=%d, size=%d, type=%d, temp=%f) written to %s\n", buf, 0x2Eu);
      }

      free(v60);
      ++v48;
      v47 = v96;
      v38 = v91;
      v33 = v59;
      v34 = v95;
      v35 = v58;
      if (v48 >= v96[1])
      {
        goto LABEL_70;
      }
    }

    fprintf(__stderrp, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", "refFrame", 0, "", "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m", 400);
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLib)
    {
      v74 = __osLogPearlLib;
    }

    else
    {
      v74 = &_os_log_default;
    }

    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *v100 = "refFrame";
      *&v100[8] = 2048;
      v101 = 0;
      *v102 = 2080;
      *&v102[2] = "";
      *&v102[10] = 2080;
      *&v102[12] = "/Library/Caches/com.apple.xbs/Sources/Pearl_Kernel/PearlFactoryLib/PearlFactoryLib.m";
      *&v102[20] = 1024;
      *&v102[22] = 400;
      _os_log_impl(&dword_0, v74, OS_LOG_TYPE_DEFAULT, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    free(v88);

    v72 = 260;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v72 = 0;
    v38 = v91;
LABEL_82:
    free(v12);

    v73 = v38;
LABEL_140:
  }

LABEL_141:
  v82 = v3[804];
  if (v82)
  {
    IOServiceClose(v82);
    v3[804] = 0;
  }

  return v72;
}

uint64_t getSavageProvisioningData(uint64_t a1, __int128 *a2, uint64_t a3, _OWORD *a4, uint64_t a5, const void *a6, size_t a7, uint64_t a8, void *a9, _OWORD *a10, void *a11, uint64_t a12, void *a13)
{
  v54 = 0u;
  memset(v55, 0, 27);
  v52 = 0u;
  v53 = 0u;
  v47 = 75;
  v13 = &unk_1C6000;
  if (!a2)
  {
    sub_CE5B4(buf);
    goto LABEL_69;
  }

  if (!a4)
  {
    sub_CE4B4(buf);
    goto LABEL_69;
  }

  if (!a6 || !a7)
  {
    sub_CE3B4(buf);
    goto LABEL_69;
  }

  if (!a8)
  {
    sub_CE2B4(buf);
    goto LABEL_69;
  }

  if (!a9 || *a9 <= 0x37uLL)
  {
    sub_CE1B0(buf);
LABEL_69:
    v42 = *buf;
    goto LABEL_56;
  }

  if (!a10)
  {
    sub_CE0B0(buf);
    goto LABEL_69;
  }

  if (!a11 || *a11 <= 0xFuLL)
  {
    sub_CDFAC(buf);
    goto LABEL_69;
  }

  if (!a12)
  {
    sub_CDEAC(buf);
    goto LABEL_69;
  }

  if (!a13 || *a13 <= 2uLL)
  {
    sub_CDDA8(buf);
    goto LABEL_69;
  }

  v20 = sub_C48EC();
  if (v20)
  {
    sub_CD344(v20, v20, buf);
    goto LABEL_69;
  }

  v45 = a4;
  v50[0] = @"GetCombined";
  v50[1] = @"StripImg4";
  v51[0] = &__kCFBooleanTrue;
  v51[1] = &__kCFBooleanFalse;
  v50[2] = @"VerifyData";
  v51[2] = &__kCFBooleanFalse;
  v21 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];
  v22 = [NSMutableDictionary dictionaryWithDictionary:v21];

  if (!a1)
  {
    goto LABEL_19;
  }

  v23 = [NSString stringWithFormat:@"%s/%@", a1, @"/System/Library/Caches/com.apple.factorydata"];
  if (!v23)
  {
    sub_CD564();
LABEL_81:

    v42 = 261;
    goto LABEL_56;
  }

  v24 = [NSURL URLWithString:v23];
  if (!v24)
  {
    sub_CD444();
    goto LABEL_81;
  }

  v25 = v24;
  [(NSMutableDictionary *)v22 setObject:v24 forKeyedSubscript:@"DataDirectory"];

LABEL_19:
  v26 = AMFDRSealingMapCopyLocalDataForClass();
  fprintf(__stderrp, "%s: Loading PSPC from FDR.\n", "getSavageProvisioningData");
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLib)
  {
    v27 = __osLogPearlLib;
  }

  else
  {
    v27 = &_os_log_default;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v49 = "getSavageProvisioningData";
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%s: Loading PSPC from FDR.\n", buf, 0xCu);
  }

  if (v26)
  {
    fprintf(__stderrp, "%s: PSPC data found.\n", "getSavageProvisioningData");
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    v46 = v22;
    if (__osLogPearlLib)
    {
      v28 = __osLogPearlLib;
    }

    else
    {
      v28 = &_os_log_default;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v49 = "getSavageProvisioningData";
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%s: PSPC data found.\n", buf, 0xCu);
    }

    v29 = [v26 length];
    v30 = calloc(v29 + 9, 1uLL);
    if (v30)
    {
      v31 = v30;
      bzero(v30, v29 + 9);
      *v31 = 1048579;
      v31[4] = 0;
      *(v31 + 5) = [v26 length];
      memcpy(v31 + 9, [v26 bytes], *(v31 + 5));
      v32 = sub_C4988(dword_1C6C90, 36, 0, v31, v29 + 9, 0, 0);
      if (v32)
      {
        sub_CD684(__stderrp, v32, v32, buf);
        v42 = *buf;
        goto LABEL_55;
      }

      fprintf(__stderrp, "%s: PSPC data loaded to SEP.\n", "getSavageProvisioningData");
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v33 = __osLogPearlLib;
      }

      else
      {
        v33 = &_os_log_default;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v49 = "getSavageProvisioningData";
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%s: PSPC data loaded to SEP.\n", buf, 0xCu);
      }

      if (a7 >= 0xFFFFFFFFFFFFFFB4)
      {
        sub_CDA84(a7 >= 0xFFFFFFFFFFFFFFB4, buf);
      }

      else
      {
        v34 = calloc(a7 + 76, 1uLL);
        if (v34)
        {
          v35 = v34;
          v36 = *a2;
          v37 = a2[1];
          v38 = a2[2];
          *(v34 + 6) = *(a2 + 6);
          *(v34 + 1) = v37;
          *(v34 + 2) = v38;
          *v34 = v36;
          *(v34 + 56) = *v45;
          memcpy(v34 + 76, a6, a7);
          v35[18] = a7;
          v39 = sub_C4988(dword_1C6C90, 2, 0, v35, a7 + 76, &v52, &v47);
          if (v39)
          {
            sub_CD784(v39, v39, buf);
          }

          else
          {
            if (v47 == 75)
            {
              *a9 = 56;
              v40 = v53;
              *a8 = v52;
              *(a8 + 16) = v40;
              *(a8 + 32) = v54;
              *(a8 + 48) = *&v55[0];
              *a11 = 16;
              *a10 = *(v55 + 8);
              *a13 = 3;
              *a12 = WORD4(v55[1]);
              *(a12 + 2) = BYTE10(v55[1]);
              fprintf(__stderrp, "%s: Successfully got provisioning data.\n", "getSavageProvisioningData");
              if (qword_1C6C98 != -1)
              {
                sub_CADC0();
              }

              v13 = &unk_1C6000;
              if (__osLogPearlLib)
              {
                v41 = __osLogPearlLib;
              }

              else
              {
                v41 = &_os_log_default;
              }

              v42 = 0;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v49 = "getSavageProvisioningData";
                _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%s: Successfully got provisioning data.\n", buf, 0xCu);
                v42 = 0;
              }

              goto LABEL_54;
            }

            sub_CD884(buf);
          }

          v42 = *buf;
          v13 = &unk_1C6000;
LABEL_54:
          free(v35);
LABEL_55:
          free(v31);

          goto LABEL_56;
        }

        sub_CD984(buf);
      }

      v42 = *buf;
      v13 = &unk_1C6000;
      goto LABEL_55;
    }

    sub_CDB90(v46, v26);
    v42 = 260;
  }

  else
  {
    sub_CDCAC(__stderrp, v22);
    v42 = 259;
  }

LABEL_56:
  v43 = v13[804];
  if (v43)
  {
    IOServiceClose(v43);
    v13[804] = 0;
  }

  return v42;
}

uint64_t checkSavageProvisioning(_DWORD *a1)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "checkSavageProvisioning\n", &v9, 2u);
  }

  v10 = 0;
  v9 = 1;
  if (a1)
  {
    v3 = sub_C48EC();
    if (v3)
    {
      sub_CE6B4(v3, v3, buf);
    }

    else
    {
      v4 = sub_C4988(dword_1C6C90, 11, 0, 0, 0, &v10, &v9);
      if (v4)
      {
        sub_CE7B4(v4, v4, buf);
      }

      else
      {
        if (v9 == 1)
        {
          *a1 = v10;
          if (qword_1C6C98 != -1)
          {
            sub_CADC0();
          }

          if (__osLogPearlLibTrace)
          {
            v5 = __osLogPearlLibTrace;
          }

          else
          {
            v5 = &_os_log_default;
          }

          v6 = 0;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v12 = 0;
            _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "checkSavageProvisioning -> %d\n", buf, 8u);
            v6 = 0;
          }

          goto LABEL_19;
        }

        sub_CE8B4(buf);
      }
    }
  }

  else
  {
    sub_CE9B4(buf);
  }

  v6 = *buf;
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v12 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "checkSavageProvisioning -> %d\n", buf, 8u);
  }

LABEL_19:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v6;
}

uint64_t getPearlSelfTestResult(void *a1)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "getPearlSelfTestResult\n", buf, 2u);
  }

  if (a1)
  {
    v3 = sub_C48EC();
    if (v3)
    {
      sub_CEAB4(v3, v3, buf);
    }

    else
    {
      v9 = 8;
      v10 = 0;
      v4 = sub_C4988(dword_1C6C90, 58, 0, 0, 0, &v10, &v9);
      if (v4)
      {
        sub_CEBB4(v4, v4, buf);
      }

      else
      {
        if (v9 == 8)
        {
          *a1 = v10;
          if (qword_1C6C98 != -1)
          {
            sub_CADC0();
          }

          if (__osLogPearlLibTrace)
          {
            v5 = __osLogPearlLibTrace;
          }

          else
          {
            v5 = &_os_log_default;
          }

          v6 = 0;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v12 = 0;
            _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "getPearlSelfTestResult -> %d\n", buf, 8u);
            v6 = 0;
          }

          goto LABEL_19;
        }

        sub_CECB4(buf);
      }
    }
  }

  else
  {
    sub_CEDB8(buf);
  }

  v6 = *buf;
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v12 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "getPearlSelfTestResult -> %d\n", buf, 8u);
  }

LABEL_19:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v6;
}

uint64_t simulateSelfTestFailure(int a1)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "simulateSelfTestFailure\n", buf, 2u);
  }

  v3 = sub_C48EC();
  if (v3)
  {
    sub_CEEB8(v3, v3, buf);
  }

  else
  {
    memset(v9, 255, sizeof(v9));
    v10 = a1;
    v4 = sub_C4988(dword_1C6C90, 44, 0, v9, 0x1CuLL, 0, 0);
    if (!v4)
    {
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLibTrace)
      {
        v5 = __osLogPearlLibTrace;
      }

      else
      {
        v5 = &_os_log_default;
      }

      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "simulateSelfTestFailure -> %d\n", buf, 8u);
        v6 = 0;
      }

      goto LABEL_17;
    }

    sub_CEFB8(v4, v4, buf);
  }

  v6 = *buf;
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v12 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "simulateSelfTestFailure -> %d\n", buf, 8u);
  }

LABEL_17:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v6;
}

uint64_t checkSecureStreaming()
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v0 = __osLogPearlLibTrace;
  }

  else
  {
    v0 = &_os_log_default;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_DEFAULT, "checkSecureStreaming\n", v5, 2u);
  }

  v1 = checkSecureStreamingAndVerifySignatures(0);
  v2 = v1;
  if (v1)
  {
    sub_CF0B8(v1, v1);
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v3 = __osLogPearlLibTrace;
    }

    else
    {
      v3 = &_os_log_default;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "checkSecureStreaming -> %d\n", v5, 8u);
    }
  }

  return v2;
}

uint64_t checkSecureStreamingAndVerifySignatures(int a1)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    v10 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "checkSecureStreamingAndVerifySignatures (%u)\n", &v9, 8u);
  }

  v3 = sub_C48EC();
  if (v3)
  {
    sub_CF228(v3, v3, &v9);
  }

  else
  {
    v4 = sub_C4988(dword_1C6C90, 59, a1, 0, 0, 0, 0);
    if (!v4)
    {
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLibTrace)
      {
        v5 = __osLogPearlLibTrace;
      }

      else
      {
        v5 = &_os_log_default;
      }

      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        v10 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "checkSecureStreamingAndVerifySignatures -> %d\n", &v9, 8u);
        v6 = 0;
      }

      goto LABEL_17;
    }

    sub_CF328(v4, v4, &v9);
  }

  v6 = v9;
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 67109120;
    v10 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "checkSecureStreamingAndVerifySignatures -> %d\n", &v9, 8u);
  }

LABEL_17:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v6;
}

uint64_t prewarmCamera(int a1)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    v10 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "prewarmCamera (%u)\n", &v9, 8u);
  }

  v3 = sub_C48EC();
  if (v3)
  {
    sub_CF428(v3, v3, &v9);
  }

  else
  {
    v4 = sub_C4988(dword_1C6C90, 43, a1, 0, 0, 0, 0);
    if (!v4)
    {
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLibTrace)
      {
        v5 = __osLogPearlLibTrace;
      }

      else
      {
        v5 = &_os_log_default;
      }

      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 67109120;
        v10 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "prewarmCamera -> %d\n", &v9, 8u);
        v6 = 0;
      }

      goto LABEL_17;
    }

    sub_CF528(v4, v4, &v9);
  }

  v6 = v9;
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = 67109120;
    v10 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "prewarmCamera -> %d\n", &v9, 8u);
  }

LABEL_17:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v6;
}

uint64_t setEntitlementOverride(int a1)
{
  v9 = a1;
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "setEntitlementOverrideConfig (0x%x)\n", buf, 8u);
  }

  v3 = sub_C48EC();
  if (v3)
  {
    sub_CF628(v3, v3, buf);
  }

  else
  {
    v4 = sub_C4988(dword_1C6C90, 64, 0, &v9, 4uLL, 0, 0);
    if (!v4)
    {
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLibTrace)
      {
        v5 = __osLogPearlLibTrace;
      }

      else
      {
        v5 = &_os_log_default;
      }

      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "setEntitlementOverrideConfig -> %d\n", buf, 8u);
        v6 = 0;
      }

      goto LABEL_17;
    }

    sub_CF728(v4, v4, buf);
  }

  v6 = *buf;
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v11 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "setEntitlementOverrideConfig -> %d\n", buf, 8u);
  }

LABEL_17:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v6;
}

uint64_t pearlSeaCookieHandleMessage(int a1, const void *a2, size_t a3, void *a4, size_t *a5, id a6)
{
  v26 = a6;
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  v11 = &unk_1C6000;
  if (__osLogPearlLibTrace)
  {
    v12 = __osLogPearlLibTrace;
  }

  else
  {
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110144;
    *&buf[4] = a1;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    *v32 = a3;
    *&v32[8] = 2048;
    *&v32[10] = a4;
    v33 = 2048;
    v34 = a5;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage %d %p %zu %p %p\n", buf, 0x30u);
  }

  if (a1 && a1 != 7)
  {
    if (!a2)
    {
      sub_D0328(buf, &v27);
      goto LABEL_63;
    }

    if (!a3)
    {
      sub_D021C(buf, &v27);
      goto LABEL_63;
    }
  }

  if (a1 == 8 || a4)
  {
    if (a1 == 8 || a5)
    {
      if (a5)
      {
        v13 = *a5;
      }

      else
      {
        v13 = 0;
      }

      v14 = sub_C48EC();
      if (v14)
      {
        sub_CFA40(v14, v14, buf, &v27);
        v16 = *buf;
        v23 = v27;
      }

      else
      {
        if (a3 >= 0xFFFFFFFFFFFFFFF3)
        {
          sub_D0108(a3 >= 0xFFFFFFFFFFFFFFF3, buf, &v27);
        }

        else
        {
          v15 = malloc(a3 + 13);
          if (v15)
          {
            v16 = v15;
            *v15 = a1;
            v15[4] = 1;
            *(v15 + 5) = a3;
            memcpy(v15 + 13, a2, a3);
            v17 = sub_C4988(dword_1C6C90, 70, 0, v16, a3 + 13, a4, a5);
            if (v17)
            {
              sub_CFB98(v17, v16, v17, buf, &v27);
            }

            else
            {
              if (a1 == 2)
              {
LABEL_27:
                v16[4] = 0;
                *a5 = v13;
                v19 = sub_C4988(dword_1C6C90, 70, 0, v16, a3 + 13, a4, a5);
                if (!v19)
                {
LABEL_28:
                  if (a4 && a5)
                  {
                    if (qword_1C6C98 != -1)
                    {
                      sub_CADC0();
                    }

                    if (__osLogPearlLib)
                    {
                      v20 = __osLogPearlLib;
                    }

                    else
                    {
                      v20 = &_os_log_default;
                    }

                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      v21 = *a5;
                      *buf = 67109890;
                      *&buf[4] = a1;
                      v29 = 2048;
                      v30 = v21;
                      v31 = 1040;
                      *v32 = v21;
                      *&v32[4] = 2096;
                      *&v32[6] = a4;
                      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage, type=%d reply[%zu] %.*P\n", buf, 0x22u);
                    }
                  }

                  if (qword_1C6C98 != -1)
                  {
                    sub_CADC0();
                  }

                  if (__osLogPearlLibTrace)
                  {
                    v22 = __osLogPearlLibTrace;
                  }

                  else
                  {
                    v22 = &_os_log_default;
                  }

                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109376;
                    *&buf[4] = a1;
                    v29 = 1024;
                    LODWORD(v30) = 0;
                    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "pearlSeaCookieHandleMessage, type=%d -> 0x%x\n", buf, 0xEu);
                  }

                  v23 = 0;
LABEL_45:
                  free(v16);
                  goto LABEL_46;
                }

                sub_CFDB0(v19, v16, v19, buf, &v27);
                goto LABEL_60;
              }

              if (a1 != 5)
              {
                goto LABEL_28;
              }

              if (v26)
              {
                v18 = v26[2]();
                if (!v18)
                {
                  goto LABEL_27;
                }

                sub_CFCA4(v18, v16, v18, buf, &v27);
              }

              else
              {
                sub_CFEBC(v16, buf, &v27);
              }
            }

LABEL_60:
            v16 = *buf;
            v23 = v27;
            goto LABEL_61;
          }

          sub_CFFEC(buf, &v27);
        }

        v16 = *buf;
        v23 = v27;
      }

LABEL_61:
      v11 = &unk_1C6000;
      goto LABEL_64;
    }

    sub_CF934(buf, &v27);
  }

  else
  {
    sub_CF828(buf, &v27);
  }

LABEL_63:
  v16 = *buf;
  v23 = v27;
LABEL_64:
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (*(v11 + 414))
  {
    v25 = *(v11 + 414);
  }

  else
  {
    v25 = &_os_log_default;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *&buf[4] = a1;
    v29 = 1024;
    LODWORD(v30) = v23;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "pearlSeaCookieHandleMessage, type=%d -> 0x%x\n", buf, 0xEu);
  }

  if (v16)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v23;
}

uint64_t mapScheme3ObjectToISPANE(int *a1)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v2 = __osLogPearlLibTrace;
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    v12 = 4;
    v13 = 2080;
    v14 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "mapScheme3Object: fourcc:%.4s\n\n", buf, 0x12u);
  }

  v9 = *a1;
  v10 = *(a1 + 4);
  v3 = sub_C48EC();
  if (v3)
  {
    sub_D0434(v3, v3, buf);
  }

  else
  {
    v4 = sub_C4988(dword_1C6C90, 72, 0, &v9, 5uLL, 0, 0);
    if (!v4)
    {
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLibTrace)
      {
        v5 = __osLogPearlLibTrace;
      }

      else
      {
        v5 = &_os_log_default;
      }

      v6 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "mapScheme3Object -> 0x%x\n", buf, 8u);
        v6 = 0;
      }

      goto LABEL_17;
    }

    sub_D0534(v4, v4, buf);
  }

  v6 = *buf;
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v12 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "mapScheme3Object -> 0x%x\n", buf, 8u);
  }

LABEL_17:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v6;
}

uint64_t allocateAndMapObjectS3C1(int *a1, int a2, int a3)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v6 = __osLogPearlLibTrace;
  }

  else
  {
    v6 = &_os_log_default;
  }

  v7 = v6;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68158466;
    *&buf[4] = 4;
    *&buf[8] = 2080;
    *&buf[10] = a1;
    *&buf[18] = 1024;
    v74 = a2;
    v75 = 1024;
    v76 = a3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "allocateAndMapObjectS3C1: fourcc:%.4s mapObj:%d unmapObj:%d\n\n", buf, 0x1Eu);
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[15] = 0;
  v67 = *a1;
  v68 = *(a1 + 4);
  v69 = a2;
  v70 = a3;
  v66 = 19;
  v8 = sub_C48EC();
  if (v8)
  {
    sub_D0634(v8, v8, v72);
  }

  else
  {
    v9 = sub_C4988(dword_1C6C90, 82, 0, &v67, 7uLL, buf, &v66);
    if (v9 == -536870201)
    {
      goto LABEL_206;
    }

    v10 = v9;
    if (v9)
    {
      sub_D0734(v9);
    }

    if (v66 > 0x12)
    {
      fwrite("Results of Allocation and Mapping Object Scheme3 Context1:\n", 0x3BuLL, 1uLL, __stderrp);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v11 = __osLogPearlLib;
      }

      else
      {
        v11 = &_os_log_default;
      }

      v12 = v11;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v72[0]) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Results of Allocation and Mapping Object Scheme3 Context1:\n", v72, 2u);
      }

      if (buf[0])
      {
        v13 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v13 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "objectFound:\t\t%s\n", v13);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v14 = __osLogPearlLib;
      }

      else
      {
        v14 = &_os_log_default;
      }

      v15 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[0])
        {
          v16 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v16 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "objectFound:\t\t%s\n", v72, 0xCu);
      }

      fprintf(__stderrp, "dvaOffset:\t\t0x%X\n", *&buf[1]);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v17 = __osLogPearlLib;
      }

      else
      {
        v17 = &_os_log_default;
      }

      v18 = v17;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v72[0] = 67109120;
        v72[1] = *&buf[1];
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "dvaOffset:\t\t0x%X\n", v72, 8u);
      }

      fprintf(__stderrp, "objectSize:\t\t%d\n", *&buf[5]);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v19 = __osLogPearlLib;
      }

      else
      {
        v19 = &_os_log_default;
      }

      v20 = v19;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v72[0] = 67109120;
        v72[1] = *&buf[5];
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "objectSize:\t\t%d\n", v72, 8u);
      }

      if (buf[9])
      {
        v21 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v21 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "aneMapFunction:\t\t%s\n", v21);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v22 = __osLogPearlLib;
      }

      else
      {
        v22 = &_os_log_default;
      }

      v23 = v22;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[9])
        {
          v24 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v24 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v24;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "aneMapFunction:\t\t%s\n", v72, 0xCu);
      }

      if (buf[10])
      {
        v25 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v25 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "ispMapFunction:\t\t%s\n", v25);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v26 = __osLogPearlLib;
      }

      else
      {
        v26 = &_os_log_default;
      }

      v27 = v26;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[10])
        {
          v28 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v28 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "ispMapFunction:\t\t%s\n", v72, 0xCu);
      }

      if (buf[11])
      {
        v29 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v29 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "aneUnmapFunction:\t%s\n", v29);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v30 = __osLogPearlLib;
      }

      else
      {
        v30 = &_os_log_default;
      }

      v31 = v30;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[11])
        {
          v32 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v32 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v32;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "aneUnmapFunction:\t%s\n", v72, 0xCu);
      }

      if (buf[12])
      {
        v33 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v33 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "ispUnmapFunction:\t%s\n", v33);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v34 = __osLogPearlLib;
      }

      else
      {
        v34 = &_os_log_default;
      }

      v35 = v34;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[12])
        {
          v36 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v36 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v36;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "ispUnmapFunction:\t%s\n", v72, 0xCu);
      }

      if (buf[13])
      {
        v37 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v37 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "mappedToSEP:\t\t%s\n", v37);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v38 = __osLogPearlLib;
      }

      else
      {
        v38 = &_os_log_default;
      }

      v39 = v38;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[13])
        {
          v40 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v40 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v40;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "mappedToSEP:\t\t%s\n", v72, 0xCu);
      }

      if (buf[14])
      {
        v41 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v41 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "mappedToANE:\t\t%s\n", v41);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v42 = __osLogPearlLib;
      }

      else
      {
        v42 = &_os_log_default;
      }

      v43 = v42;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[14])
        {
          v44 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v44 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v44;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "mappedToANE:\t\t%s\n", v72, 0xCu);
      }

      if (buf[15])
      {
        v45 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v45 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "mappedToISP:\t\t%s\n", v45);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v46 = __osLogPearlLib;
      }

      else
      {
        v46 = &_os_log_default;
      }

      v47 = v46;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[15])
        {
          v48 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v48 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v48;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "mappedToISP:\t\t%s\n", v72, 0xCu);
      }

      if (buf[18])
      {
        v49 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v49 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "unmappedFromISP:\t%s\n", v49);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v50 = __osLogPearlLib;
      }

      else
      {
        v50 = &_os_log_default;
      }

      v51 = v50;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[18])
        {
          v52 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v52 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v52;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "unmappedFromISP:\t%s\n", v72, 0xCu);
      }

      if (buf[17])
      {
        v53 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v53 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "unmappedFromANE:\t%s\n", v53);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v54 = __osLogPearlLib;
      }

      else
      {
        v54 = &_os_log_default;
      }

      v55 = v54;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[17])
        {
          v56 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v56 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v56;
        _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "unmappedFromANE:\t%s\n", v72, 0xCu);
      }

      if (buf[16])
      {
        v57 = "\x1B[32mSUCCESS\x1B[0m";
      }

      else
      {
        v57 = "\x1B[31mFAIL\x1B[0m";
      }

      fprintf(__stderrp, "unmappedFromSEP:\t%s\n", v57);
      if (qword_1C6C98 != -1)
      {
        sub_CADC0();
      }

      if (__osLogPearlLib)
      {
        v58 = __osLogPearlLib;
      }

      else
      {
        v58 = &_os_log_default;
      }

      v59 = v58;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[16])
        {
          v60 = "\x1B[32mSUCCESS\x1B[0m";
        }

        else
        {
          v60 = "\x1B[31mFAIL\x1B[0m";
        }

        v72[0] = 136315138;
        *&v72[1] = v60;
        _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "unmappedFromSEP:\t%s\n", v72, 0xCu);
      }

      if (v10)
      {
        goto LABEL_196;
      }

      v61 = buf[11] == 0;
      if (!buf[12])
      {
        v61 = 1;
      }

      if (!buf[16])
      {
        v61 = 1;
      }

      if (!buf[17])
      {
        v61 = 1;
      }

      if (!buf[18])
      {
        v61 = 1;
      }

      v62 = buf[9] == 0;
      if (!buf[10])
      {
        v62 = 1;
      }

      if (!buf[13])
      {
        v62 = 1;
      }

      if (!buf[14])
      {
        v62 = 1;
      }

      if (!buf[15])
      {
        v62 = 1;
      }

      v10 = 261;
      if ((a2 & v62 & 1) != 0 || (a3 & v61) != 0)
      {
        goto LABEL_196;
      }

LABEL_206:
      sub_D0958();
      v64 = *v72;
      v10 = v71;
      goto LABEL_203;
    }

    sub_D085C(__stderrp, v72);
  }

  v10 = v72[0];
LABEL_196:
  if (qword_1C6C98 != -1)
  {
    sub_CADC0();
  }

  if (__osLogPearlLibTrace)
  {
    v63 = __osLogPearlLibTrace;
  }

  else
  {
    v63 = &_os_log_default;
  }

  v64 = v63;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    v72[0] = 67109120;
    v72[1] = v10;
    _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "allocateAndMapObjectS3C1 -> 0x%x\n", v72, 8u);
  }

LABEL_203:

  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  return v10;
}

uint64_t getBrunorCollectionKey(void *a1, void *a2)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "getBrunorCollectionKey\n", v15, 2u);
  }

  v15[0] = 65;
  if (!a1)
  {
    sub_D0F44(buf);
LABEL_38:
    v9 = *buf;
    goto LABEL_15;
  }

  if (!a2)
  {
    sub_D0E44(buf);
    goto LABEL_38;
  }

  v5 = sub_C48EC();
  if (v5)
  {
    sub_D0A44(v5, v5, buf);
    goto LABEL_38;
  }

  v6 = calloc(1uLL, 0x41uLL);
  if (!v6)
  {
    sub_D0D44(buf);
    goto LABEL_38;
  }

  v7 = v6;
  v8 = sub_C4988(dword_1C6C90, 73, 0, 0, 0, v6, v15);
  if (v8)
  {
    sub_D0B44(v8, v8, buf);
  }

  else
  {
    if (v15[0] == 65)
    {
      v9 = 0;
      *a1 = v7;
      *a2 = 65;
      goto LABEL_15;
    }

    sub_D0C44(buf);
  }

  v9 = *buf;
  free(v7);
LABEL_15:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v9)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v10 = __osLogPearlLibTrace;
    }

    else
    {
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v9;
      v11 = v10;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&dword_0, v11, v12, "getBrunorCollectionKey -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v13 = __osLogPearlLibTrace;
    }

    else
    {
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = 0;
      v11 = v13;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }
  }

  return v9;
}

uint64_t getAttestationToBrunorCollectionKey(void *a1, void *a2)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__size[0]) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "getAttestationToBrunorCollectionKey\n", __size, 2u);
  }

  __size[0] = 0x4000;
  if (a1)
  {
    if (a2)
    {
      v5 = sub_C48EC();
      if (v5)
      {
        sub_D1044(v5, v5, buf);
      }

      else
      {
        v6 = calloc(1uLL, 0x4000uLL);
        if (v6)
        {
          v7 = v6;
          v8 = sub_C4988(dword_1C6C90, 74, 0, 0, 0, v6, __size);
          if (v8)
          {
            sub_D1144(v8, v8, buf);
          }

          else if (__size[0] > 0x4000)
          {
            sub_D1344(buf);
          }

          else
          {
            v9 = calloc(1uLL, __size[0]);
            *a1 = v9;
            if (v9)
            {
              memcpy(v9, v7, __size[0]);
              v10 = 0;
              *a2 = __size[0];
LABEL_16:
              free(v7);
              goto LABEL_17;
            }

            sub_D1244(buf);
          }

          v10 = *buf;
          goto LABEL_16;
        }

        sub_D1444(buf);
      }
    }

    else
    {
      sub_D1544(buf);
    }
  }

  else
  {
    sub_D1644(buf);
  }

  v10 = *buf;
LABEL_17:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v10)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v10;
      v12 = v11;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&dword_0, v12, v13, "getAttestationToBrunorCollectionKey -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = 0;
      v12 = v14;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  return v10;
}

uint64_t signDataWithBrunorCollectionKey(const void *a1, size_t a2, void *a3, size_t *a4)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "signDataWithBrunorCollectionKey\n", buf, 2u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  v23 = 0u;
  __size = 128;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v9 = sub_C48EC();
          if (v9)
          {
            sub_D1744(v9, v9, v20);
          }

          else
          {
            v10 = sub_C4988(dword_1C6C90, 75, 0, a1, a2, buf, &__size);
            if (v10)
            {
              sub_D1844(v10, v10, v20);
            }

            else if (__size >= 0x81)
            {
              sub_D1A44(v20);
            }

            else
            {
              v11 = calloc(1uLL, __size);
              *a3 = v11;
              if (v11)
              {
                v12 = __size;
                *a4 = __size;
                memcpy(v11, buf, v12);
                v13 = 0;
                goto LABEL_17;
              }

              sub_D1944(v20);
            }
          }
        }

        else
        {
          sub_D1B44(v20);
        }
      }

      else
      {
        sub_D1C44(v20);
      }
    }

    else
    {
      sub_D1D44(v20);
    }
  }

  else
  {
    sub_D1E44(v20);
  }

  v13 = *v20;
LABEL_17:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v13)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v20 = 67109120;
      v21 = v13;
      v15 = v14;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&dword_0, v15, v16, "signDataWithBrunorCollectionKey -> %d\n", v20, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v17 = __osLogPearlLibTrace;
    }

    else
    {
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 67109120;
      v21 = 0;
      v15 = v17;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  return v13;
}

uint64_t getBrunorPermanentKey(void *a1, size_t *a2)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "getBrunorPermanentKey\n", v16, 2u);
  }

  v16[0] = 57;
  if (!a1)
  {
    sub_D2444(buf);
LABEL_38:
    v10 = *buf;
    goto LABEL_15;
  }

  if (!a2)
  {
    sub_D2344(buf);
    goto LABEL_38;
  }

  v5 = sub_C48EC();
  if (v5)
  {
    sub_D1F44(v5, v5, buf);
    goto LABEL_38;
  }

  v6 = calloc(1uLL, 0x39uLL);
  if (!v6)
  {
    sub_D2244(buf);
    goto LABEL_38;
  }

  v7 = v6;
  v8 = sub_C4988(dword_1C6C90, 76, 0, 0, 0, v6, v16);
  if (v8)
  {
    sub_D2044(v8, v8, buf);
  }

  else
  {
    v9 = v16[0];
    if (v16[0] < 0x3A)
    {
      v10 = 0;
      *a1 = v7;
      *a2 = v9;
      goto LABEL_15;
    }

    sub_D2144(buf);
  }

  v10 = *buf;
  free(v7);
LABEL_15:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v10)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v10;
      v12 = v11;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&dword_0, v12, v13, "getBrunorPermanentKey -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = 0;
      v12 = v14;
      v13 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }
  }

  return v10;
}

uint64_t signDataWithBrunorPermanentKey(const void *a1, size_t a2, void *a3, size_t *a4)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v8 = __osLogPearlLibTrace;
  }

  else
  {
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "signDataWithBrunorPermanentKey\n", buf, 2u);
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  v23 = 0u;
  __size = 65;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v9 = sub_C48EC();
          if (v9)
          {
            sub_D2544(v9, v9, v20);
          }

          else
          {
            v10 = sub_C4988(dword_1C6C90, 77, 0, a1, a2, buf, &__size);
            if (v10)
            {
              sub_D2644(v10, v10, v20);
            }

            else if (__size >= 0x42)
            {
              sub_D2844(v20);
            }

            else
            {
              v11 = calloc(1uLL, __size);
              *a3 = v11;
              if (v11)
              {
                v12 = __size;
                *a4 = __size;
                memcpy(v11, buf, v12);
                v13 = 0;
                goto LABEL_17;
              }

              sub_D2744(v20);
            }
          }
        }

        else
        {
          sub_D2944(v20);
        }
      }

      else
      {
        sub_D2A44(v20);
      }
    }

    else
    {
      sub_D2B44(v20);
    }
  }

  else
  {
    sub_D2C44(v20);
  }

  v13 = *v20;
LABEL_17:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v13)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v14 = __osLogPearlLibTrace;
    }

    else
    {
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v20 = 67109120;
      v21 = v13;
      v15 = v14;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_34:
      _os_log_impl(&dword_0, v15, v16, "signDataWithBrunorPermanentKey -> %d\n", v20, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v17 = __osLogPearlLibTrace;
    }

    else
    {
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 67109120;
      v21 = 0;
      v15 = v17;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_34;
    }
  }

  return v13;
}

uint64_t prepareFDRDataEncryptionKey()
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  v0 = &_os_log_default;
  if (__osLogPearlLibTrace)
  {
    v1 = __osLogPearlLibTrace;
  }

  else
  {
    v1 = &_os_log_default;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "prepareFDRDataEncryptionKey\n", &v8, 2u);
  }

  v2 = sub_C48EC();
  if (v2)
  {
    sub_D2D44(v2, v2, &v8);
  }

  else
  {
    v3 = sub_C4988(dword_1C6C90, 78, 0, 0, 0, 0, 0);
    v4 = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    sub_D2E44(v3, v3, &v8);
  }

  v4 = v8;
LABEL_10:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v4)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v8 = 67109120;
      v9 = v4;
      v5 = v0;
      v6 = OS_LOG_TYPE_ERROR;
LABEL_25:
      _os_log_impl(&dword_0, v5, v6, "prepareFDRDataEncryptionKey -> %d\n", &v8, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v0 = __osLogPearlLibTrace;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      v9 = 0;
      v5 = v0;
      v6 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_25;
    }
  }

  return v4;
}

uint64_t setDummyWrappedFDRDataEncryptionKey(const void *a1, size_t a2)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "setDummyWrappedFDRDataEncryptionKey\n", &v13, 2u);
  }

  v5 = sub_C48EC();
  if (v5)
  {
    sub_D2F44(v5, v5, &v13);
  }

  else
  {
    v6 = sub_C4988(dword_1C6C90, 79, 0, a1, a2, 0, 0);
    v7 = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    sub_D3044(v6, v6, &v13);
  }

  v7 = v13;
LABEL_10:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v7)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v8 = __osLogPearlLibTrace;
    }

    else
    {
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      v14 = v7;
      v9 = v8;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_27:
      _os_log_impl(&dword_0, v9, v10, "setDummyWrappedFDRDataEncryptionKey -> %d\n", &v13, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v11 = __osLogPearlLibTrace;
    }

    else
    {
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      v14 = 0;
      v9 = v11;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_27;
    }
  }

  return v7;
}

uint64_t encryptFDRDataForBrunor(const void *a1, size_t a2, uint64_t a3, size_t *a4, _OWORD *a5, uint64_t a6)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v12 = __osLogPearlLibTrace;
  }

  else
  {
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134219264;
    v22 = a1;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = a3;
    v27 = 2048;
    v28 = a4;
    v29 = 2048;
    v30 = a5;
    v31 = 2048;
    v32 = a6;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "encryptFDRDataForBrunor %p %zu %p %p %p %zu\n", &v21, 0x3Eu);
  }

  if (!a1)
  {
    sub_D3744(&v21);
LABEL_44:
    v15 = v21;
    goto LABEL_18;
  }

  if (!a2)
  {
    sub_D3644(&v21);
    goto LABEL_44;
  }

  if (!a3)
  {
    sub_D3544(&v21);
    goto LABEL_44;
  }

  if (!a4)
  {
    sub_D3444(&v21);
    goto LABEL_44;
  }

  if (a5 && a6 != 16)
  {
    sub_D3144(&v21);
    goto LABEL_44;
  }

  v13 = sub_C48EC();
  if (v13)
  {
    sub_D3244(v13, v13, &v21);
    goto LABEL_44;
  }

  v14 = sub_C4988(dword_1C6C90, 80, 0, a1, a2, a3, a4);
  if (v14)
  {
    sub_D3344(v14, v14, &v21);
    goto LABEL_44;
  }

  v15 = 0;
  if (a5)
  {
    *a5 = *(a3 + 108);
  }

LABEL_18:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v15)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v16 = __osLogPearlLibTrace;
    }

    else
    {
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 67109120;
      LODWORD(v22) = v15;
      v17 = v16;
      v18 = OS_LOG_TYPE_ERROR;
LABEL_35:
      _os_log_impl(&dword_0, v17, v18, "encryptFDRDataForBrunor -> %d\n", &v21, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v19 = __osLogPearlLibTrace;
    }

    else
    {
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109120;
      LODWORD(v22) = 0;
      v17 = v19;
      v18 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_35;
    }
  }

  return v15;
}

uint64_t getPDAK(void *a1, void *a2)
{
  if (qword_1C6C98 != -1)
  {
    sub_CAC3C();
  }

  if (__osLogPearlLibTrace)
  {
    v4 = __osLogPearlLibTrace;
  }

  else
  {
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__size[0]) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "getPDAK\n", __size, 2u);
  }

  __size[0] = 65;
  if (!a1 || !a2)
  {
    sub_D3C44(buf);
LABEL_37:
    v9 = *buf;
    goto LABEL_15;
  }

  v5 = sub_C48EC();
  if (v5)
  {
    sub_D3844(v5, v5, buf);
    goto LABEL_37;
  }

  v6 = calloc(1uLL, __size[0]);
  if (!v6)
  {
    sub_D3B44(buf);
    goto LABEL_37;
  }

  v7 = v6;
  v8 = sub_C4988(dword_1C6C90, 84, 0, 0, 0, v6, __size);
  if (v8)
  {
    sub_D3944(v8, v8, buf);
  }

  else
  {
    if (__size[0] == 65)
    {
      v9 = 0;
      *a1 = v7;
      *a2 = 65;
      goto LABEL_15;
    }

    sub_D3A44(buf);
  }

  v9 = *buf;
  free(v7);
LABEL_15:
  if (dword_1C6C90)
  {
    IOServiceClose(dword_1C6C90);
    dword_1C6C90 = 0;
  }

  if (v9)
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v10 = __osLogPearlLibTrace;
    }

    else
    {
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v9;
      v11 = v10;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&dword_0, v11, v12, "getPDAK -> %d\n", buf, 8u);
    }
  }

  else
  {
    if (qword_1C6C98 != -1)
    {
      sub_CADC0();
    }

    if (__osLogPearlLibTrace)
    {
      v13 = __osLogPearlLibTrace;
    }

    else
    {
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = 0;
      v11 = v13;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_32;
    }
  }

  return v9;
}