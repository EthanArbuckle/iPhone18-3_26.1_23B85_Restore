uint64_t sub_10016BDCC(uint64_t a1, unsigned int a2)
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

uint64_t sub_10016BFDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
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
          v34 = &unk_1003E3330 + (*(a11 + 4 * v24) << 9);
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
      v7 = vmlal_high_u8(vmull_u8(*a3->i8, 0x90A0B0C0D0E0F10), *a3, *&qword_10016C3C0[2]);
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
        v14 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, 0x191A1B1C1D1E1F20), *a3, *qword_10016C3C0), *v11.i8, 0x90A0B0C0D0E0F10), v11, *&qword_10016C3C0[2]);
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
    v22 = vmlal_high_u8(vmlal_u8(vmlal_high_u8(vmull_u8(*a3->i8, 0x191A1B1C1D1E1F20), *a3, *qword_10016C3C0), *v19.i8, 0x90A0B0C0D0E0F10), v19, *&qword_10016C3C0[2]);
    v22.i32[0] = vaddlvq_u16(v22);
    a3 += 2;
    v4 = vadd_s32(v21, vzip1_s32(*&vaddl_u16(*v18.i8, v20), *v22.i8));
    v15 = __OFSUB__(i, 32);
  }

  if ((i & 0x10) != 0)
  {
    v23 = *a3;
    v24 = vmlal_high_u8(vmull_u8(*a3->i8, 0x90A0B0C0D0E0F10), *a3, *&qword_10016C3C0[2]);
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

uint64_t sub_10016C3F4(uint64_t a1, int a2, int a3)
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

  v6 = sub_100170C68(v5, 1, a2, 0x18B940u, 0x180000u);
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

uint64_t sub_10016C4A8(uint64_t a1, char a2)
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
      v18 = sub_100166FBC(v4 + 48);
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

size_t sub_10016C76C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  result = 0;
  if (a4 >= 0xC && a5)
  {
    if (*a3 != 1484404733 || *(a3 + 4) != 90)
    {
      return 0;
    }

    v12 = *(a3 + 8);
    if (v12 != sub_10016CAA8((a3 + 6), 2))
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
        if (v21 == sub_10016CAA8(v16, 4 * v17))
        {
          v38 = v20 + 2;
          v22 = *(a3 + v18);
          if ((v22 & 0x3F) == 0 && ((*(a3 + v18) & 0x40) == 0 || (sub_10016CAF8(a3, v19, &v38, &v37) & 0x80000000) == 0) && ((v22 & 0x80) == 0 || (sub_10016CAF8(a3, v19, &v38, &v37) & 0x80000000) == 0))
          {
            v35 = 0;
            v36 = 0;
            if ((sub_10016CAF8(a3, v19, &v38, &v36) & 0x80000000) == 0 && (sub_10016CAF8(a3, v19, &v38, &v35) & 0x80000000) == 0 && v36 == 33 && v35 == 1 && v38 < v19 && *(a3 + v38) <= 0x28u)
            {
              v23 = v33 + v20;
              v38 = 0;
              v24 = sub_10017124C(a1 + v34, a2 - v34, a3 + v23, a4 - v23, &v38, a5);
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
    if ((sub_10016CAF8(a3, a4, &v38, &v37) & 0x80000000) != 0)
    {
      return 0;
    }

    v25 = v37;
    if (v37)
    {
      while ((sub_10016CAF8(a3, a4, &v38, &v36) & 0x80000000) == 0 && (sub_10016CAF8(a3, a4, &v38, &v36) & 0x80000000) == 0)
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
    if (v28 != sub_10016CAA8((a3 + v15), v26))
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
    if (v31 == sub_10016CAA8(v30 + 4, 6))
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

uint64_t sub_10016CAA8(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = -1;
  do
  {
    v3 = *a1++;
    v4 = dword_1003EE278[(v2 ^ v3) & 0xF];
    v2 = (v4 >> 4) ^ (v2 >> 8) ^ dword_1003EE278[(v4 ^ ((v2 ^ v3) >> 4)) & 0xF];
    --a2;
  }

  while (a2);
  return ~v2;
}

uint64_t sub_10016CAF8(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
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
        return sub_10014B1C4(v2);
      }

      return 0;
    }

    if ((v2 - 2304) < 2)
    {
      return default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
    }

    if (v2 != 2193)
    {
      if (v2 == 2209)
      {
        return lzfse_decode_buffer_scratch_size_iboot();
      }

      return 0;
    }

    return sub_10014F818(v2);
  }

  if (v2 > 1284)
  {
    if ((v2 - 1792) < 3)
    {
      return sub_10014B15C();
    }

    if ((v2 - 2049) >= 2)
    {
      if (v2 != 1285)
      {
        return 0;
      }

      return sub_1001380A8();
    }

    return sub_10014F818(v2);
  }

  switch(v2)
  {
    case 517:
      return sub_1001380A8();
    case 774:
      return sub_10016CAA0();
    case 1031:
      return sub_10014B518();
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
        return sub_10014AE18(v3);
      }

      return 0;
    }

    if ((v3 - 3072) <= 0x20 && ((1 << v3) & 0x100010001) != 0)
    {
      return sub_10014B198(v3);
    }

    if ((v3 - 2304) < 2)
    {
      return sub_100136794(v3);
    }

    if (v3 != 2584)
    {
      return 0;
    }

    return sub_10013B078();
  }

  else
  {
    if (v3 > 1284)
    {
      if ((v3 - 1536) < 3)
      {
        return sub_10014B0D0(v3 & 0xF);
      }

      if ((v3 - 1792) < 3)
      {
        return sub_10014B164(v3 & 0xF);
      }

      if (v3 != 1285)
      {
        return 0;
      }

      return sub_100134D5C();
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

      return sub_100134D5C();
    }

    if (v3 != 774)
    {
      return 0;
    }

    return default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
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
          v21 = sub_10013D67C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        else
        {
          if (v15 != COMPRESSION_LZ4_RAW)
          {
            goto LABEL_66;
          }

          v21 = sub_100137F04(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
        }

        goto LABEL_65;
      }

      if (v15 != COMPRESSION_ZLIB)
      {
        if (v15 != COMPRESSION_LZMA)
        {
          goto LABEL_66;
        }

        v21 = sub_10015E31C();
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
        v21 = sub_10014B094(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15 & 0xF);
        goto LABEL_65;
      }

      if (v15 - 1792 < 3)
      {
        v21 = sub_10014B120(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15 & 0xF);
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

    v21 = sub_100134D68(v23, v24, v25, v26, v27, v28, v29);
    goto LABEL_65;
  }

  if (v15 > 2583)
  {
    if (v15 - 3072 > 0x20 || ((1 << v15) & 0x100010001) == 0)
    {
      if (v15 == 2584)
      {
        v21 = sub_10013B084(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v6);
      }

      else
      {
        if (v15 != COMPRESSION_BROTLI)
        {
          goto LABEL_66;
        }

        v21 = sub_1001343AC(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
      }
    }

    else
    {
      v21 = sub_10014B1D4(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
    }

    goto LABEL_65;
  }

  if (v15 > 2208)
  {
    if (v15 - 2304 < 2)
    {
      v21 = sub_1001367A8(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
      goto LABEL_65;
    }

    if (v15 != 2209)
    {
      goto LABEL_66;
    }

LABEL_60:
    v21 = sub_10014AE58(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v15);
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
          v20 = sub_100144EF0(dst_buffer, dst_size, src_buffer, src_size);
        }

        else
        {
          if (v12 != COMPRESSION_LZ4_RAW)
          {
            goto LABEL_60;
          }

          v20 = sub_100138008(dst_buffer, dst_size, src_buffer, src_size);
        }

        goto LABEL_59;
      }

      if (v12 != COMPRESSION_ZLIB)
      {
        if (v12 == COMPRESSION_LZMA)
        {
          v19 = sub_10016C76C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
          if (v19)
          {
            goto LABEL_60;
          }

          v20 = sub_10015E2C0();
        }

        else
        {
          if (v12 != 1031)
          {
            goto LABEL_60;
          }

          v20 = sub_10014B524(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer);
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
      v20 = sub_10014B060(dst_buffer, dst_size, src_buffer, src_size, v14);
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
        v20 = sub_1001380B4(v22, v23, v24, v25, v26, v27);
        goto LABEL_59;
      }

      v20 = sub_10014B0EC(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v14, v15);
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
        v20 = sub_100134FB4(dst_buffer, dst_size, src_buffer, src_size);
      }

      else
      {
        if (v12 != COMPRESSION_BROTLI)
        {
          goto LABEL_60;
        }

        v20 = sub_100134364(dst_buffer, dst_size, src_buffer, src_size);
      }
    }

    else
    {
      v20 = sub_10014B23C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
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
    v20 = sub_10014F82C(dst_buffer, dst_size, src_buffer, src_size, scratch_buffer, v12);
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

unint64_t sub_10016D458(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v33 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_10013D158(a1, a2, &v33, v40, v39);
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
  sub_10013CB14(v34, 18, 5, a3, v37);
  result = sub_10013D55C(v37, 18, v36);
  if (v12 >= 2)
  {
    v16 = &dword_100000010 + 1;
    while (!*(v37 + byte_1003F2E60[v16]))
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
    v22 = &byte_1003F2E60[v18];
    do
    {
      v23 = *v22++;
      v24 = *(v37 + v23);
      v25 = byte_1003F2E78[v24];
      result = v20 & 7;
      *(a5 + (v20 >> 3)) = (byte_1003F2E72[v24] << (v20 & 7)) | *(a5 + (v20 >> 3));
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

uint64_t sub_10016D708(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
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
  result = sub_100166C7C(v88);
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
          v33 = qword_1003E2A10[v32];
          if (v33 < v26)
          {
            v34 = 0;
            v35 = qword_1003E2A10[v32];
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

    while (!sub_10013CA54(2 * v40 - 1, v21, a5, 14));
    sub_100166DB4(v88, v21);
    result = sub_10013D55C(a5, v15, v87);
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
          v80 = dword_1003EE300[v75];
          *(a8 + (v71 >> 3)) = (qword_1003EEE00[v75] << (v71 & 7)) | *(a8 + (v71 >> 3));
          v71 += v80;
          goto LABEL_93;
        }
      }

      if (result != v73)
      {
        v77 = byte_1003F0400[v73];
        *(a8 + (v71 >> 3)) = (dword_1003F0414[v73] << (v71 & 7)) | *(a8 + (v71 >> 3));
        v71 += v77;
        *a7 = v71;
        --v75;
      }

      if (v75 > 2)
      {
        v81 = v75 - 3;
        v82 = dword_1003F045C[v75 - 3];
        *(a8 + (v71 >> 3)) = (qword_1003F0F60[v81] << (v71 & 7)) | *(a8 + (v71 >> 3));
        v71 += v82;
      }

      else
      {
        if (!v75)
        {
          result = v73;
          continue;
        }

        v78 = byte_1003F0400[v73];
        v79 = dword_1003F0414[v73];
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

uint64_t sub_10016DE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, unsigned int *a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t *a14, uint64_t a15)
{
  v15 = a8;
  LODWORD(v92) = a6;
  v19 = a14;
  v20 = a9[19];
  v95 = a9[18];
  sub_10016E7A4(a8, a4, a14, a15);
  result = sub_100166C7C(a1);
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
    v113 = xmmword_1003760E0;
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
    *(v106 + 8) = xmmword_1003760E0;
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
    *(v98 + 8) = xmmword_1003760E0;
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
    sub_10016E8DC(v112, result, a14, a15);
    sub_10016E8DC(v104, v22, a14, a15);
    sub_10016E8DC(&v96, v22, a14, a15);
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
      result = sub_10016ED7C(a1, *(a13 + 144), v44, *(a13 + 184), v22, a14, a15);
      if (*(a1 + 24))
      {
        return result;
      }
    }

    else
    {
      sub_10016EB60(*(a13 + 184), 6uLL, v22, a14, a15);
    }

    v45 = *(a13 + 168);
    if (v45)
    {
      result = sub_10016ED7C(a1, *(a13 + 160), v45, *(a13 + 216), v22, a14, a15);
      if (*(a1 + 24))
      {
        return result;
      }
    }

    else
    {
      sub_10016EB60(*(a13 + 216), 2uLL, v22, a14, a15);
    }

    v85 = v15;
    v47 = *(a13 + 176);
    v46 = *(a13 + 184);
    if (v112[0] * v46)
    {
      v146 = sub_100166C7C(a1);
      result = sub_100166C7C(a1);
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
        result = sub_10016FB84(v47, v112[0], 256, v22, (v146 + v112[0] * i), v147 + 2 * v112[0] * i, a14, a15);
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
        v110 = sub_100166C7C(a1);
        result = sub_100166C7C(a1);
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
          result = sub_10016FB84(v51, v104[0], 704, v22, (v110 + v104[0] * j), v111 + 2 * v104[0] * j, a14, a15);
          v51 += 2832;
        }

        a1 = v91;
        v52 = *(v91 + 24);
      }

      if (!v52)
      {
        result = sub_10016F47C(a1, &v96, *(a13 + 208), *(a13 + 216), v95, v22, a14, a15);
        if (!*(a1 + 24))
        {
          sub_100166DB4(a1, v22);
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
              sub_10016F560(v104, v88, v19, a15);
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
              v67 = dword_10037C994[v66];
              v68 = v63;
              v69 = ((v62 - *(&unk_10037C9F4 + v68 * 4)) << v67) | (v57 - *(&unk_10037C934 + v66 * 4));
              v70 = dword_10037CA54[v68] + v67;
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
                    v76 = byte_1003E3330[512 * a10 + 256 + v55] | byte_1003E3330[512 * a10 + v75];
                    v75 = *(a2 + (a3 & v72));
                    sub_10016F6EC(v112, v75, v76, v23[18], a14, a15, 6);
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
                    sub_10016F560(v112, *(a2 + (a3++ & v64)), v19, a15);
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
                    sub_10016F6EC(&v96, v86 & 0x3FF, v81, v23[20], a14, a15, 2);
                  }

                  else
                  {
                    v82 = v86;
                    sub_10016F560(&v96, v86 & 0x3FF, a14, a15);
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

          sub_100166DB4(a1, v102);
          v102 = 0;
          sub_100166DB4(a1, v103);
          v103 = 0;
          sub_100166DB4(a1, v110);
          v110 = 0;
          sub_100166DB4(a1, v111);
          v111 = 0;
          sub_100166DB4(a1, v146);
          v146 = 0;
          result = sub_100166DB4(a1, v147);
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

uint64_t sub_10016E7A4(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
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

unint64_t sub_10016E8DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
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

      v20 = (&unk_10037D31E + 4 * v19 + 4);
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

  result = sub_100170744(v9 - 1, a3, a4);
  if (v9 >= 2)
  {
    sub_10016FB84(v40, v9 + 2, v9 + 2, a2, (a1 + 56), a1 + 314, a3, a4);
    result = sub_10016FB84(v38, 0x1AuLL, 26, a2, (a1 + 830), a1 + 856, a3, a4);
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

    v29 = (&unk_10037D31E + 4 * v28 + 4);
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
    v32 = (&unk_10037D31E + 4 * v30);
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

uint64_t sub_10016EB60(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  result = sub_100170744(a1 - 1, a4, a5);
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
      memset_pattern16(&v25[a2], &unk_1003E3320, 4 * a1 - 4);
    }

    sub_10016FB84(v25, a2 - 1 + a1, a2 - 1 + a1, a3, v24, v23, a4, a5);
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

uint64_t sub_10016ED7C(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  result = sub_100170744(a4 - 1, a6, a7);
  if (a4 == 1)
  {
    return result;
  }

  result = sub_100166C7C(a1);
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
  v22 = xmmword_1003EE2C0;
  v23 = xmmword_1003EE2D0;
  v24 = xmmword_1003EE2E0;
  v25 = xmmword_1003EE2F0;
  v26 = xmmword_10037D390;
  v27 = xmmword_10037D3A0;
  v28 = xmmword_10037C710;
  v29 = vdupq_n_s64(v16);
  v30 = xmmword_1003772E0;
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

  sub_10016FB84(&__src, a4 + v49, a4 + v49, v68, v70, v69, a6, a7);
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
  return sub_100166DB4(a1, v15);
}

unint64_t sub_10016F47C(uint64_t a1, size_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  if (*a2 * a4)
  {
    a2[117] = sub_100166C7C(a1);
    result = sub_100166C7C(a1);
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
      result = sub_10016FB84(a3, *a2, a5, a6, (a2[117] + *a2 * v17), a2[118] + 2 * *a2 * v17, a7, a8);
      ++v17;
      a3 += 2192;
    }

    while (a4 != v17);
  }

  return result;
}

void *sub_10016F560(void *result, uint64_t a2, unint64_t *a3, uint64_t a4)
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

    v17 = (&unk_10037D31E + 4 * v16 + 4);
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
    v20 = (&unk_10037D31E + 4 * v18);
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

void *sub_10016F6EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, char a7)
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

    v20 = (&unk_10037D31E + 4 * v19 + 4);
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
    v23 = (&unk_10037D31E + 4 * v21);
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

uint64_t sub_10016F880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, uint64_t a11)
{
  v11 = __chkstk_darwin(a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v29 = *(v23 + 72);
  sub_10016E7A4(v14, v24, a10, a11);
  bzero(v34, 0x408uLL);
  v34[129] = 0x7FF0000000000000;
  bzero(v32, 0xB08uLL);
  v33 = 0x7FF0000000000000;
  bzero(v30, 0x888uLL);
  v31 = 0x7FF0000000000000;
  sub_10016FAE0(v21, v19, v17, v13, a9, v34, v32, v30);
  v25 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v25 + 13;
  result = sub_100166C7C(v22);
  if (!*(v22 + 24))
  {
    v27 = result;
    sub_10016FB84(v34, 0x100uLL, 256, result, v40, v39, a10, a11);
    sub_10016FB84(v32, 0x2C0uLL, 704, v27, v38, v37, a10, a11);
    sub_10016FB84(v30, 0x8CuLL, v29, v27, v36, v35, a10, a11);
    sub_100166DB4(v22, v27);
    result = sub_10016FF64(v21, v19, v17, v13, a9, v40, v39, v38, v37, v36, v35, a10, a11);
    if (v15)
    {
      v28 = *a10 + 7;
      *a10 = v28 & 0xFFFFFFF8;
      *(a11 + (v28 >> 3)) = 0;
    }
  }

  return result;
}

uint64_t sub_10016FAE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

unint64_t sub_10016FB84(unint64_t result, size_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
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
  sub_10013CB14(v14, a2, 15, a4, a5);
  result = sub_10013D55C(a5, a2, a6);
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

  return sub_10016D458(a5, a2, a4, a7, a8);
}

uint64_t sub_10016FF64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t *a12, uint64_t a13)
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
      v32 = *(&unk_10037C994 + v31);
      v33 = 4 * v28;
      v34 = ((v27 - *(&unk_10037C9F4 + v33)) << v32) | (v16 - *(&unk_10037C934 + v31));
      v35 = (*(&unk_10037CA54 + v33) + v32);
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

uint64_t sub_1001701F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t *a10, uint64_t a11)
{
  v11 = __chkstk_darwin(a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v24 = *(v23 + 72);
  sub_10016E7A4(v14, v25, a10, a11);
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
    sub_10016FAE0(v21, v19, v17, v13, a9, v36, v48, v45);
    result = sub_10016D708(v22, v36, *v37, 8, v44, v43, a10, a11);
    if (!*(v22 + 24))
    {
      result = sub_10016D708(v22, v48, *v49, 10, v42, v41, a10, a11);
      if (!*(v22 + 24))
      {
        result = sub_10016D708(v22, v45, *v46, (__clz(v24 - 1) ^ 0x1F) + 1, v40, v39, a10, a11);
        if (!*(v22 + 24))
        {
          result = sub_10016FF64(v21, v19, v17, v13, a9, v44, v43, v42, v41, v40, v39, a10, a11);
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

    result = sub_10016D708(v22, v48, v28, 8, v41, v45, a10, a11);
    if (!*(v22 + 24))
    {
      v34 = *a10;
      *(a11 + (*a10 >> 3)) = (0x92624416307003 << (*a10 & 7)) | *(a11 + (*a10 >> 3));
      *a10 = v34 + 56;
      *(a11 + ((v34 + 56) >> 3)) = *(a11 + ((v34 + 56) >> 3));
      *a10 = v34 + 59;
      *(a11 + ((v34 + 59) >> 3)) = (57269251 << ((v34 + 59) & 7)) | *(a11 + ((v34 + 59) >> 3));
      *a10 = v34 + 87;
      result = sub_10016FF64(v21, v19, v17, v13, a9, v41, v45, "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v", "", &unk_1003F2DA0, &unk_1003F2DE0, a10, a11);
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

void *sub_1001705B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, uint64_t *a6, uint64_t a7)
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

uint64_t sub_100170744(uint64_t result, unint64_t *a2, uint64_t a3)
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
      return sub_100134EB4(stream, operation, algorithm, 0);
    }

    if (algorithm == COMPRESSION_BROTLI)
    {
      return sub_1001344B8(stream, operation);
    }

    if (algorithm == 2193)
    {
      return sub_10015BDE4(stream, operation, algorithm, 0);
    }

    return -1;
  }

  if (algorithm > 2048)
  {
    if (algorithm - 2049 < 2)
    {
      return sub_10015BDE4(stream, operation, algorithm, 0);
    }

    return -1;
  }

  if (algorithm == COMPRESSION_LZ4)
  {
    return sub_10013A978(stream, operation, 0);
  }

  if (algorithm != COMPRESSION_ZLIB)
  {
    if (algorithm == COMPRESSION_LZMA)
    {
      sub_100133300(stream, operation);
      return result;
    }

    return -1;
  }

  return sub_10013A55C(stream, operation, 0);
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
      return sub_100134EB4(a1, a2, a3, 1);
    }

    if (a3 != 2193)
    {
      return 0xFFFFFFFFLL;
    }

    return sub_10015BDE4(a1, a2, a3, 1);
  }

  if ((a3 - 2049) < 2)
  {
    return sub_10015BDE4(a1, a2, a3, 1);
  }

  if (a3 != 256)
  {
    if (a3 == 517)
    {
      return sub_10013A55C(a1, a2, 1);
    }

    return 0xFFFFFFFFLL;
  }

  return sub_10013A978(a1, a2, 1);
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
      result = sub_100134EE0(stream, flags);
      if (result)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v7 == 2818)
    {
      result = sub_1001343F8(stream, flags);
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
    result = sub_10015BE10(stream, flags);
    if (result)
    {
      return result;
    }

    goto LABEL_24;
  }

  switch(v7)
  {
    case 256:
      result = sub_10013AA30(stream, flags);
      if (result)
      {
        return result;
      }

      break;
    case 517:
      result = sub_10013A60C(&stream->dst_ptr, flags);
      if (result)
      {
        return result;
      }

      break;
    case 774:
      result = sub_1001333A4(stream, flags);
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
          return sub_100133458(stream);
        }

        return -1;
      }

      return sub_100134F04(stream);
    }

    if ((v2 - 2049) < 2)
    {
      return sub_100134F04(stream);
    }

    return -1;
  }

  if ((v2 - 2304) < 2)
  {
    return sub_100134F04(stream);
  }

  if (v2 != 2818)
  {
    if (v2 == 2193)
    {
      return sub_100134F04(stream);
    }

    return -1;
  }

  return sub_100134588(stream);
}

uint64_t compression_stream_identify_algorithm(int *a1)
{
  if (sub_10015BE34(a1))
  {
    return 2049;
  }

  if (default argument 2 of Array<A>.jsonString(prettyPrinted:redacted:origin:)())
  {
    return 517;
  }

  if (sub_100133490(a1))
  {
    return 774;
  }

  if (sub_10013B038(a1))
  {
    return 256;
  }

  if (sub_100134F34(a1))
  {
    return 2304;
  }

  if (sub_10014B180(a1))
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
      return sub_100134F9C(a1);
    }

    if (a1 != 2193)
    {
      return 0;
    }

    return sub_10015BEC4(a1);
  }

  if ((a1 - 2049) < 2)
  {
    return sub_10015BEC4(a1);
  }

  if (a1 != 256)
  {
    if (a1 == 517)
    {
      return default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
    }

    return 0;
  }

  return sub_10013B06C();
}

uint64_t compression_stream_get_decode_state_size(int a1)
{
  if (a1 > 2192)
  {
    if ((a1 - 2304) < 2)
    {
      return sub_100134FA0();
    }

    if (a1 != 2193)
    {
      return 0;
    }

    return sub_10015BEC8();
  }

  if ((a1 - 2049) < 2)
  {
    return sub_10015BEC8();
  }

  if (a1 != 256)
  {
    if (a1 == 517)
    {
      return sub_10013A950();
    }

    return 0;
  }

  return sub_10013B06C();
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

_DWORD *sub_100170C68(_DWORD *a1, int a2, int a3, unsigned int a4, unsigned int a5)
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

void sub_100170CFC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v61 = v8;
  if (sub_100132880(v4, v1, v6, v8, 0.75))
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
    if (v9)
    {
      v11 = 0;
      v12 = v10;
      v13 = v9;
      do
      {
        if (*(v5 + (v12 & v7)) < 0)
        {
          v15 = 2 * (v11 > 0xDF);
          if (*(v5 + (v12 & v7)) <= 0xBFu)
          {
            v14 = v15;
          }

          else
          {
            v14 = 1;
          }
        }

        else
        {
          v14 = 0;
        }

        v11 = *(v5 + (v12 & v7));
        ++*(&v63 + v14);
        ++v12;
        --v13;
      }

      while (v13);
      v16 = (v64 + v65) > 0x18;
      bzero(&v63, 0x1800uLL);
      v17 = 0;
      v18 = 0;
      v19 = 495;
      if (v9 < 0x1EF)
      {
        v19 = v9;
      }

      memset(v62, 0, sizeof(v62));
      v20 = v10;
      do
      {
        v21 = *(v5 + (v20 & v7));
        v22 = *(v5 + (v20 & v7));
        ++*(&v63 + 256 * v18 + v22);
        ++v62[v18];
        v18 = v17 >= 0xE0 && v16;
        if (v21 > 0xBFu)
        {
          v18 = v16;
        }

        if (v21 >= 0)
        {
          v18 = 0;
        }

        ++v20;
        v17 = v22;
        --v19;
      }

      while (v19);
      v23 = 0;
      v24 = 2000;
      do
      {
        if (v23 >= 0x1EF)
        {
          if (v23 == 495)
          {
            v25 = 0;
          }

          else
          {
            v26 = v10 + v23;
            v27 = v23 < 0x1F1 || *(v5 + ((v26 - 497) & v7)) < 0xE0u;
            v28 = *(v5 + ((v26 - 496) & v7));
            v29 = !v27 && v16;
            if (v28 > 0xBF)
            {
              v29 = v16;
            }

            v25 = (v28 & 0x80) != 0 && v29;
          }

          v30 = *(v5 + ((v10 + v23 - 495) & v7));
          --*(&v63 + 256 * v25 + v30);
          --v62[v25];
        }

        if (v23 + 495 < v9)
        {
          v31 = *(v5 + ((v10 + v23 + 493) & v7)) >= 0xE0u && v16;
          if (*(v5 + ((v10 + v23 + 494) & v7)) > 0xBFu)
          {
            v31 = v16;
          }

          if (*(v5 + ((v10 + v23 + 494) & v7)) >= 0)
          {
            v31 = 0;
          }

          v32 = *(v5 + ((v10 + v23 + 495) & v7));
          ++*(&v63 + 256 * v31 + v32);
          ++v62[v31];
        }

        if (v23)
        {
          v33 = v10 + v23;
          v34 = v23 == 1 || *(v5 + ((v33 - 2) & v7)) < 0xE0u;
          v36 = *(v5 + ((v33 - 1) & v7));
          v37 = !v34 && v16;
          if (v36 > 0xBF)
          {
            v37 = v16;
          }

          v35 = (v36 & 0x80) != 0 && v37;
        }

        else
        {
          v35 = 0;
        }

        v38 = *(v5 + ((v10 + v23) & v7));
        v39 = &v63 + 256 * v35;
        v40 = v39[v38];
        if (v40 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v39[v38];
        }

        v42 = v62[v35];
        if (v42 > 0xFF)
        {
          v43 = log2(v42);
        }

        else
        {
          v43 = dbl_1003EDA70[v42];
        }

        if (v40 > 0xFF)
        {
          v44 = log2(v41);
        }

        else
        {
          v44 = dbl_1003EDA70[v41];
        }

        v9 = v61;
        v45 = v43 - v44 + 0.02905;
        if (v45 < 1.0)
        {
          v45 = v45 * 0.5 + 0.5;
        }

        if (v23 <= 0x7CF)
        {
          v45 = v24 / -2000.0 * 0.35 + 0.7 + v45;
        }

        v46 = v45;
        v3[v23++] = v46;
        --v24;
      }

      while (v61 != v23);
    }
  }

  else
  {
    bzero(&v63, 0x800uLL);
    if (v9 >= 0x7D0)
    {
      v47 = 2000;
    }

    else
    {
      v47 = v9;
    }

    if (v9)
    {
      v48 = v10;
      v49 = v47;
      do
      {
        ++*(&v63 + *(v5 + (v48++ & v7)));
        --v49;
      }

      while (v49);
      v50 = 0;
      do
      {
        if (v50 >= 0x7D0)
        {
          v51 = *(v5 + ((v10 - 2000) & v7));
          --*(&v63 + v51);
          --v47;
        }

        v52 = v50 + 2000;
        if (v50 + 2000 < v9)
        {
          v53 = *(v5 + ((v10 + 2000) & v7));
          ++*(&v63 + v53);
          ++v47;
        }

        v54 = *(v5 + (v10 & v7));
        v55 = *(&v63 + v54);
        if (v55 <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = *(&v63 + v54);
        }

        if (v47 > 0xFF)
        {
          v57 = log2(v47);
        }

        else
        {
          v57 = dbl_1003EDA70[v47];
        }

        if (v55 > 0xFF)
        {
          v58 = log2(v56);
        }

        else
        {
          v58 = dbl_1003EDA70[v56];
        }

        v9 = v61;
        v59 = v57 - v58 + 0.029;
        if (v59 < 1.0)
        {
          v59 = v59 * 0.5 + 0.5;
        }

        v60 = v59;
        *v3++ = v60;
        ++v10;
        v50 = v52 - 1999;
      }

      while (v52 - 1999 != v61);
    }
  }
}

size_t sub_10017124C(unint64_t a1, size_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
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
      sub_1001450A0(&v32, a6);
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
    if (v27 || sub_10036D184(&v32, a1, (a1 + v9), v26 + a1 + v9, a1 + a2, (a3 + v19), a4 - v19) != v26)
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

uint64_t sub_100171470(uint64_t result, uint64_t a2, unsigned __int16 *a3)
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
            v40 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_1003772E0)));
            if (vuzp1_s16(v40, 2).u8[0])
            {
              *(v38 + v34) = v32;
            }

            if (vuzp1_s16(v40, 2).i8[2])
            {
              *(v38 + 4 * v37) = v32;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_10037C710)))).i32[1])
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

uint64_t sub_100171708(char *__src, int a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10017194C(int *__src, char a2, unsigned __int16 *a3, int a4)
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

uint64_t shim_check_tailspin()
{
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1004B9FB8;
  v9 = qword_1004B9FB8;
  if (!qword_1004B9FB8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1001724B8;
    v3[4] = &unk_100484AE8;
    v4 = &v6;
    v5 = v3;
    v10 = *off_100484AC8;
    v11 = 0;
    v7[3] = _sl_dlopen();
    qword_1004B9FB8 = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return 1;
}

void sub_100171CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id shim_MGQSerialNumber()
{
  v0 = MGGetStringAnswer();

  return v0;
}

id shim_MGQOceanComputeCarrierID()
{
  v0 = MGCopyAnswer();

  return v0;
}

id shim_MGQOceanComputeCarrierSlot()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t shim_TMSetupTime()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v0 = dispatch_queue_create("com.apple.darwinit-time-sync", 0);
  v1 = dispatch_group_create();
  dispatch_group_enter(v1);
  v5 = v1;
  TMSetupTime();
  v2 = dispatch_time(0, 60000000000);
  dispatch_group_wait(v5, v2);
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_100171F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100171F78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10036EEB0(a2);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t shim_register_config(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];

  v2 = register_config_from_buffer();
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10036EF30(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return v2;
}

uint64_t shim_register_secureconfig_parameters(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = a1;
  [v6 bytes];
  [v6 length];

  [v5 UTF8String];
  v7 = register_config_parameters();
  if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10036EFA4(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  return v7;
}

uint64_t shim_cryptex_lockdown()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_1004B9FC0;
  v7 = off_1004B9FC0;
  if (!off_1004B9FC0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100172550;
    v3[3] = &unk_100484B10;
    v3[4] = &v4;
    sub_100172550(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = sub_10036F018();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v2);
  }

  return v0();
}

BOOL shim_validateImage4Ticket()
{
  v8 = -1;
  image4_environment_new();
  image4_trust_new();
  image4_trust_set_payload();
  image4_trust_record_property_integer();
  image4_trust_record_property_data();
  image4_trust_evaluate();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10036F03C(&v8, v0, v1, v2, v3, v4, v5, v6);
  }

  image4_environment_destroy();
  image4_trust_destroy();
  return v8 == 0;
}

uint64_t sub_1001724B8(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1004B9FB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100172550(uint64_t a1)
{
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = qword_1004B9FC8;
  v11 = qword_1004B9FC8;
  if (!qword_1004B9FC8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1001726EC;
    v5[4] = &unk_100484AE8;
    v6 = &v8;
    v7 = v5;
    v12 = *off_100484B30;
    v13 = 0;
    v9[3] = _sl_dlopen();
    qword_1004B9FC8 = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  v3 = v5[0];
  if (!v2)
  {
    v3 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "cryptex_lockdown");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1004B9FC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1001726CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001726EC(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1004B9FC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100172784(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t sub_100172844@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for FilePath();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100172944(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  sub_100013E54(a1, &v8 - v5, &qword_1004A9CF8);
  return (*(**a2 + 136))(v6);
}

uint64_t CryptexCacheDelegate.Entry.extractionPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  swift_beginAccess();
  return sub_100013E54(v1 + v3, a1, &qword_1004A9CF8);
}

uint64_t CryptexCacheDelegate.Entry.extractionPath.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  swift_beginAccess();
  sub_100172AD8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100172AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A9CF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CryptexCacheDelegate.Entry.__allocating_init(at:lock:archivePath:removeArchiveOnDeinit:aeaDecryptionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = a5;
  v20 = a4;
  v8 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  v13 = type metadata accessor for FilePath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v11 + v12, 1, 1, v13);
  v16 = *(v14 + 32);
  v16(v11 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, a1, v13);
  *(v11 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_lock) = a2;
  v16(v11 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, a3, v13);
  *(v11 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) = v20;
  sub_100172F4C(v21, v11 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
  v15(v10, 1, 1, v13);
  v17 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  swift_beginAccess();
  sub_100172AD8(v10, v11 + v17);
  swift_endAccess();
  return v11;
}

uint64_t CryptexCacheDelegate.Entry.init(at:lock:archivePath:removeArchiveOnDeinit:aeaDecryptionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = a5;
  v20 = a4;
  v9 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  v13 = type metadata accessor for FilePath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v5 + v12, 1, 1, v13);
  v16 = *(v14 + 32);
  v16(v5 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, a1, v13);
  *(v5 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_lock) = a2;
  v16(v5 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, a3, v13);
  *(v5 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) = v20;
  sub_100172F4C(v21, v5 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
  v15(v11, 1, 1, v13);
  v17 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  swift_beginAccess();
  sub_100172AD8(v11, v5 + v17);
  swift_endAccess();
  return v5;
}

uint64_t sub_100172F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AA048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void CryptexCacheDelegate.Entry.copyObject(fromPath:toPath:)()
{
  v0 = [objc_opt_self() defaultManager];
  FilePath.string.getter();
  v1 = String._bridgeToObjectiveC()();

  FilePath.string.getter();
  v2 = String._bridgeToObjectiveC()();

  v13 = 0;
  v3 = [v0 copyItemAtPath:v1 toPath:v2 error:&v13];

  v4 = v13;
  if (v3)
  {

    v5 = v4;
  }

  else
  {
    v6 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1004A9DD8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, static CryptexCacheDelegate.logger);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Caught copyItem error %@.", v10, 0xCu);
      sub_100013F2C(v11, &qword_1004AA050);
    }

    else
    {
    }
  }
}

id CryptexCacheDelegate.Entry.fetchTicketandGinfPath()(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v26 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  type metadata accessor for CryptexManager();
  result = static CryptexManager.setUpExtractedPath()();
  if (!v2)
  {
    v23 = a2;
    v24 = v5;
    v17 = *(v5 + 16);
    v25 = 0;
    v17(v13, v15, v4);
    FilePath.appending(_:)();
    v17(v13, v15, v4);
    FilePath.appending(_:)();
    v18 = v27;
    v19 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path;
    v17(v10, (v27 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path), v4);
    FilePath.appending(_:)();
    v17(v26, (v18 + v19), v4);
    FilePath.appending(_:)();
    v20 = *(*v18 + 160);
    v20(v13, v28);
    v20(v10, v23);
    v21 = *(v24 + 8);
    v21(v10, v4);
    v21(v13, v4);
    return (v21)(v15, v4);
  }

  return result;
}

Swift::Void __swiftcall CryptexCacheDelegate.Entry.deleteTicketAndginf()()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v34[-v8];
  __chkstk_darwin(v7);
  v11 = &v34[-v10];
  v12 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path;
  v13 = *(v3 + 16);
  v13(v9, v1 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, v2);
  FilePath.appending(_:)();
  v13(v9, v1 + v12, v2);
  FilePath.appending(_:)();
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  FilePath.string.getter();
  v16 = String._bridgeToObjectiveC()();

  v35 = 0;
  LODWORD(v13) = [v15 removeItemAtPath:v16 error:&v35];

  if (v13)
  {
    v17 = v35;
  }

  else
  {
    v18 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1004A9DD8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000270B4(v19, static CryptexCacheDelegate.logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No ticket to delete", v22, 2u);
    }
  }

  v23 = [v14 defaultManager];
  FilePath.string.getter();
  v24 = String._bridgeToObjectiveC()();

  v35 = 0;
  v25 = [v23 removeItemAtPath:v24 error:&v35];

  if (v25)
  {
    v26 = *(v3 + 8);
    v27 = v35;
    v26(v6, v2);
    v26(v11, v2);
  }

  else
  {
    v28 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1004A9DD8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000270B4(v29, static CryptexCacheDelegate.logger);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "No ginf to delete", v32, 2u);
    }

    v33 = *(v3 + 8);
    v33(v6, v2);
    v33(v11, v2);
  }
}

uint64_t CryptexCacheDelegate.Entry.ingestTicketandGINF(ticket:ginfPath:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v157 = a2;
  v147 = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v161 = *(v4 - 8);
  v162 = v4;
  __chkstk_darwin(v4);
  v152 = v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A6D30);
  v7 = __chkstk_darwin(v6 - 8);
  v138 = v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v143 = v136 - v10;
  v11 = __chkstk_darwin(v9);
  v149 = v136 - v12;
  __chkstk_darwin(v11);
  v153 = (v136 - v13);
  v14 = type metadata accessor for FilePath();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v142 = v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v141 = v136 - v19;
  v20 = __chkstk_darwin(v18);
  v156 = v136 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v136 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v136 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = v136 - v29;
  __chkstk_darwin(v28);
  v32 = v136 - v31;
  v33 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path;
  v159 = v15;
  v34 = *(v15 + 16);
  v34(v30, v3 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, v14);
  v154 = v32;
  FilePath.appending(_:)();
  v35 = v3 + v33;
  v36 = v27;
  v37 = v15 + 16;
  v38 = v34;
  v39 = v37;
  v34(v30, v35, v14);
  FilePath.appending(_:)();
  if (qword_1004A9DD8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = sub_1000270B4(v40, static CryptexCacheDelegate.logger);
  v38(v24, v157, v14);
  v42 = v156;
  v38(v156, v36, v14);
  v140 = v41;
  v43 = Logger.logObject.getter();
  LODWORD(v146) = static os_log_type_t.info.getter();
  v44 = os_log_type_enabled(v43, v146);
  v45 = v24;
  v155 = v36;
  v158 = v39;
  v160 = v38;
  v148 = v30;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v163 = v145;
    *v46 = 136315394;
    sub_1001795F8(&qword_1004AA058, &type metadata accessor for FilePath);
    v144 = v43;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    v50 = *(v159 + 8);
    v50(v45, v14);
    v51 = sub_1000026C0(v47, v49, &v163);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    v52 = v46;
    v53 = v42;
    v54 = v161;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v58 = v53;
    v59 = v14;
    v151 = v50;
    v50(v58, v14);
    v38 = v160;
    v60 = sub_1000026C0(v55, v57, &v163);

    *(v52 + 14) = v60;
    v61 = v144;
    _os_log_impl(&_mh_execute_header, v144, v146, "Copying ginf ticket from %s to %s", v52, 0x16u);
    swift_arrayDestroy();

    v30 = v148;
    v62 = v152;
  }

  else
  {

    v59 = v14;
    v63 = *(v159 + 8);
    v63(v42, v59);
    v151 = v63;
    v63(v24, v59);
    v54 = v161;
    v62 = v152;
  }

  v139 = objc_opt_self();
  v146 = [v139 defaultManager];
  v38(v30, v157, v59);
  v65 = *(v54 + 104);
  v64 = v54 + 104;
  LODWORD(v157) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v156 = v65;
  (v65)(v62);
  v66 = v153;
  sub_1001746A8(v30, v62, v153);
  v67 = type metadata accessor for URL();
  v68 = v59;
  v69 = *(v67 - 8);
  v70 = v69 + 6;
  isa = v69[6].isa;
  if (isa(v66, 1, v67) == 1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  URL._bridgeToObjectiveC()(v72);
  v145 = v73;
  v75 = v69[1].isa;
  v74 = v69 + 1;
  v153 = v75;
  v75(v66, v67);
  v150 = v68;
  v160(v30, v155, v68);
  v161 = v64;
  (v156)(v62, v157, v162);
  v76 = v149;
  sub_1001746A8(v30, v62, v149);
  v144 = v70;
  v137 = isa;
  if (isa(v76, 1, v67) == 1)
  {
    goto LABEL_19;
  }

  URL._bridgeToObjectiveC()(v77);
  v79 = v78;
  v153(v76, v67);
  v163 = 0;
  v80 = v145;
  v81 = v146;
  v82 = [v146 copyItemAtURL:v145 toURL:v79 error:&v163];

  v83 = v163;
  if (!v82)
  {
LABEL_17:
    v131 = v150;
    v132 = v83;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v133 = v131;
    v134 = v131;
    v135 = v151;
    v151(v155, v133);
    return v135(v154, v134);
  }

  v84 = v74;
  v85 = v141;
  v86 = v150;
  v87 = v160;
  v160(v141, v147, v150);
  v88 = v142;
  v87(v142, v154, v86);
  v89 = v83;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();
  v92 = os_log_type_enabled(v90, v91);
  v136[2] = v84;
  if (v92)
  {
    v93 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v163 = v149;
    *v93 = 136315394;
    sub_1001795F8(&qword_1004AA058, &type metadata accessor for FilePath);
    v146 = v90;
    v94 = dispatch thunk of CustomStringConvertible.description.getter();
    v95 = v67;
    v97 = v96;
    LODWORD(v145) = v91;
    v98 = v86;
    v99 = v86;
    v100 = v151;
    v151(v85, v98);
    v101 = sub_1000026C0(v94, v97, &v163);

    *(v93 + 4) = v101;
    *(v93 + 12) = 2080;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v104 = v103;
    v105 = v88;
    v106 = v95;
    v100(v105, v99);
    v107 = sub_1000026C0(v102, v104, &v163);

    *(v93 + 14) = v107;
    v108 = v146;
    _os_log_impl(&_mh_execute_header, v146, v145, "Copying personalized ticket from %s to %s", v93, 0x16u);
    swift_arrayDestroy();

    v109 = v143;
  }

  else
  {

    v110 = v86;
    v99 = v86;
    v111 = v151;
    v151(v88, v110);
    v111(v85, v99);
    v109 = v143;
    v106 = v67;
  }

  v149 = [v139 defaultManager];
  v112 = v148;
  v113 = v99;
  v114 = v99;
  v115 = v160;
  v160(v148, v147, v113);
  v116 = v152;
  (v156)(v152, v157, v162);
  sub_1001746A8(v112, v116, v109);
  v117 = v137;
  result = v137(v109, 1, v106);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL._bridgeToObjectiveC()(v119);
    v147 = v120;
    v153(v109, v106);
    v115(v112, v154, v114);
    (v156)(v116, v157, v162);
    v121 = v138;
    sub_1001746A8(v112, v116, v138);
    result = v117(v121, 1, v106);
    if (result != 1)
    {
      URL._bridgeToObjectiveC()(v122);
      v124 = v123;
      v153(v121, v106);
      v163 = 0;
      v125 = v149;
      v126 = v147;
      v127 = [v149 copyItemAtURL:v147 toURL:v124 error:&v163];

      v83 = v163;
      if (v127)
      {
        v128 = v163;
        v130 = v150;
        v129 = v151;
        v151(v155, v150);
        return v129(v154, v130);
      }

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001746A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v5 - 8);
  v26 = v23 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = String.init(validating:)();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = type metadata accessor for URL();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = type metadata accessor for URL();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

id CryptexCacheDelegate.Entry.extract()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000039E8(&qword_1004A9CF8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v17 - v13;
  (*(*v1 + 128))(v12);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_100013F2C(v14, &qword_1004A9CF8);
    type metadata accessor for CryptexManager();
    result = static CryptexManager.setUpExtractedPath()();
    if (v2)
    {
      return result;
    }

    (*(v5 + 16))(v11, v7, v4);
    v18 = *(v5 + 56);
    v18(v11, 0, 1, v4);
    v16 = *(*v1 + 136);
    v17[0] = *v1 + 136;
    v17[1] = v16;
    v16(v11);
    FilePath.extract(to:using:)(v7, v1 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
    v14 = v7;
  }

  return (*(v5 + 32))(a1, v14, v4);
}

void CryptexCacheDelegate.Entry.cleanup()()
{
  FilePath.remove()();
  if (v0)
  {
    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000270B4(v1, static Logger.caching);

    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v4 = 136315394;
      type metadata accessor for FilePath();
      sub_1001795F8(&qword_1004AA058, &type metadata accessor for FilePath);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = sub_1000026C0(v7, v8, &v11);

      *(v4 + 4) = v9;
      *(v4 + 12) = 2112;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 14) = v10;
      *v5 = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to remove %s from cache: %@", v4, 0x16u);
      sub_100013F2C(v5, &qword_1004AA050);

      sub_100003C3C(v6);
    }

    else
    {
    }
  }
}

uint64_t CryptexCacheDelegate.Entry.deinit()
{
  if (*(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) == 1)
  {
    CryptexCacheDelegate.Entry.cleanup()();
  }

  v1 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path;
  v2 = type metadata accessor for FilePath();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, v2);
  sub_100013F2C(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters, &qword_1004AA048);
  sub_100013F2C(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath, &qword_1004A9CF8);
  return v0;
}

uint64_t CryptexCacheDelegate.Entry.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) == 1)
  {
    CryptexCacheDelegate.Entry.cleanup()();
  }

  v1 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path;
  v2 = type metadata accessor for FilePath();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, v2);
  sub_100013F2C(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters, &qword_1004AA048);
  sub_100013F2C(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath, &qword_1004A9CF8);

  return swift_deallocClassInstance();
}

uint64_t CryptexCacheDelegate.AccessParameter.init(digest:alternateKnoxCDNHost:aeaDecryptionParameters:maxActiveNetworkTasks:chunkSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  v15 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
  result = sub_100172F4C(a4, a9 + v15[6]);
  v17 = a9 + v15[7];
  *v17 = a5;
  v17[8] = a6 & 1;
  v18 = a9 + v15[8];
  *v18 = a7;
  v18[8] = a8 & 1;
  return result;
}

Swift::Int DInitFeatureFlagsError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t CryptexCacheDelegate.handleCacheMiss(forCacheEntryDirectory:lock:downloadInformation:downloadedFile:tempDir:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a4;
  v6[15] = a6;
  v6[12] = a2;
  v6[13] = a3;
  v6[11] = a1;
  type metadata accessor for CacheDownloadInformation(0);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v7 = type metadata accessor for SymmetricKey();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  sub_1000039E8(&qword_1004A9CF8);
  v6[22] = swift_task_alloc();
  sub_1000039E8(&qword_1004AA048);
  v6[23] = swift_task_alloc();
  v8 = type metadata accessor for FilePath();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_100175528, 0, 0);
}

uint64_t sub_100175528()
{
  v80 = v0;
  v1 = *(*(v0 + 200) + 16);
  v1(*(v0 + 232), *(v0 + 88), *(v0 + 192));
  FilePath.appending(_:)();
  FilePath.readArchiveMagic()();
  if (v2 != 2 && (v2 & 1) == 0)
  {
    v3 = [objc_opt_self() defaultManager];
    FilePath.string.getter();
    v4 = String._bridgeToObjectiveC()();

    FilePath.string.getter();
    v5 = String._bridgeToObjectiveC()();

    *(v0 + 80) = 0;
    v6 = [v3 moveItemAtPath:v4 toPath:v5 error:v0 + 80];

    v7 = *(v0 + 240);
    if (v6)
    {
      v8 = v1;
      v74 = *(v0 + 80);
      v9 = *(v0 + 224);
      v10 = *(v0 + 232);
      v11 = *(v0 + 192);
      v12 = *(v0 + 200);
      v13 = *(v0 + 184);
      v76 = *(v0 + 176);
      v14 = *(v0 + 120);
      v72 = *(v0 + 96);
      v8(v10, *(v0 + 88), v11);
      v15 = *(v12 + 32);
      v15(v9, v7, v11);
      v16 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
      sub_100013E54(v14 + *(v16 + 24), v13, &qword_1004AA048);
      type metadata accessor for CryptexCacheDelegate.Entry(0);
      v17 = swift_allocObject();
      v18 = *(v12 + 56);
      v18(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath, 1, 1, v11);
      v15(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, v10, v11);
      *(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_lock) = v72;
      v15(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, v9, v11);
      *(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) = 0;
      sub_100172F4C(v13, v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
      v18(v76, 1, 1, v11);
      v19 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
      swift_beginAccess();
      v20 = v74;

      v21 = v17 + v19;
      v22 = v76;
LABEL_14:
      sub_100172AD8(v22, v21);
      swift_endAccess();

      v59 = *(v0 + 8);

      return v59(v17);
    }

    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    v29 = *(v0 + 80);
    _convertNSErrorToError(_:)();

    goto LABEL_20;
  }

  v23 = **(v0 + 120);
  if (!v23)
  {
    if (qword_1004A9DD8 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 144);
    v31 = *(v0 + 104);
    v32 = type metadata accessor for Logger();
    sub_1000270B4(v32, static CryptexCacheDelegate.logger);
    sub_1001794E4(v31, v30);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 144);
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v79 = v38;
      *v37 = 136315138;
      type metadata accessor for URL();
      sub_1001795F8(&qword_1004AAE30, &type metadata accessor for URL);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_100179548(v36);
      v42 = sub_1000026C0(v39, v41, &v79);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%s] No digest found when digest is required.", v37, 0xCu);
      sub_100003C3C(v38);
    }

    else
    {

      sub_100179548(v36);
    }

    v7 = *(v0 + 240);
    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    sub_1001795A4();
    swift_allocError();
    *v66 = 1;
LABEL_20:
    swift_willThrow();
    (*(v27 + 8))(v7, v28);
    goto LABEL_21;
  }

  v24 = *(v0 + 240);
  v25 = *(v0 + 168);
  *(v0 + 64) = v23;
  v77 = v1;
  v26 = v2;

  sub_1000039E8(&qword_1004A71E0);
  sub_10000E720(&qword_1004AA068, &qword_1004A71E0);
  SymmetricKey.init<A>(data:)();
  FilePath.wrapFileContentsInAppleEncryptedArchive(at:using:permissions:compression:)(v24, v25, 384, v26 & 1);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v77(*(v0 + 232), *(v0 + 88), *(v0 + 192));
  FilePath.appending(_:)();
  v43 = [objc_opt_self() defaultManager];
  FilePath.string.getter();
  v44 = String._bridgeToObjectiveC()();

  FilePath.string.getter();
  v45 = String._bridgeToObjectiveC()();

  *(v0 + 72) = 0;
  v46 = [v43 moveItemAtPath:v44 toPath:v45 error:v0 + 72];

  v47 = *(v0 + 72);
  v48 = *(v0 + 240);
  if (v46)
  {
    v49 = v77;
    v68 = *(v0 + 232);
    v69 = *(v0 + 224);
    v50 = *(v0 + 192);
    v51 = *(v0 + 200);
    v78 = *(v0 + 176);
    v70 = *(v0 + 216);
    v71 = *(v0 + 120);
    v52 = *(v0 + 88);
    v73 = *(v0 + 184);
    v75 = *(v0 + 96);
    v53 = v51[1];
    v54 = v47;
    v53(v48, v50);
    v49(v68, v52, v50);
    v55 = v51[4];
    v55(v69, v70, v50);
    v56 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
    sub_100013E54(v71 + *(v56 + 24), v73, &qword_1004AA048);
    type metadata accessor for CryptexCacheDelegate.Entry(0);
    v17 = swift_allocObject();
    v57 = v51[7];
    v57(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath, 1, 1, v50);
    v55(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, v68, v50);
    *(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_lock) = v75;
    v55(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, v69, v50);
    *(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) = 1;
    sub_100172F4C(v73, v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
    v57(v78, 1, 1, v50);
    v58 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
    swift_beginAccess();

    v21 = v17 + v58;
    v22 = v78;
    goto LABEL_14;
  }

  v61 = *(v0 + 216);
  v63 = *(v0 + 192);
  v62 = *(v0 + 200);
  v64 = v47;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v65 = *(v62 + 8);
  v65(v61, v63);
  v65(v48, v63);
LABEL_21:

  v67 = *(v0 + 8);

  return v67();
}

uint64_t CryptexCacheDelegate.handleCacheHit(forCacheEntryDirectory:lock:downloadInformation:tempDir:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a3;
  v5[10] = a5;
  v5[7] = a1;
  v5[8] = a2;
  sub_1000039E8(&qword_1004A9CF8);
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for SHA256Digest();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for SymmetricKey();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  sub_1000039E8(&qword_1004AA048);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  type metadata accessor for CacheDownloadInformation(0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v8 = type metadata accessor for FilePath();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_100176774, 0, 0);
}

uint64_t sub_100176774()
{
  v97 = v0;
  v1 = *(v0[24] + 16);
  (v1)(v0[29], v0[7], v0[23]);
  FilePath.appending(_:)();
  v2 = FilePath.exists()();
  if (v3)
  {

LABEL_8:
    if (qword_1004A9DD8 != -1)
    {
      swift_once();
    }

    v6 = v0[22];
    v7 = v0[9];
    v8 = type metadata accessor for Logger();
    sub_1000270B4(v8, static CryptexCacheDelegate.logger);
    sub_1001794E4(v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[22];
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v96[0] = v14;
      *v13 = 136315138;
      type metadata accessor for URL();
      sub_1001795F8(&qword_1004AAE30, &type metadata accessor for URL);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_100179548(v12);
      v18 = sub_1000026C0(v15, v17, v96);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%s] Cached archive missing", v13, 0xCu);
      sub_100003C3C(v14);
    }

    else
    {

      sub_100179548(v12);
    }

    v19 = v0[30];
    v21 = v0[23];
    v20 = v0[24];
    sub_100179660();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    (*(v20 + 8))(v19, v21);
    goto LABEL_14;
  }

  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = URL.scheme.getter();
  if (!v5)
  {
    goto LABEL_18;
  }

  if (v4 != 2020568683 || v5 != 0xE400000000000000)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_21;
    }

LABEL_18:
    v26 = v0[19];
    v27 = v0[10];
    v28 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
    sub_100013E54(v27 + *(v28 + 24), v26, &qword_1004AA048);
    v29 = type metadata accessor for AEADecryptionParameters();
    LODWORD(v27) = (*(*(v29 - 8) + 48))(v26, 1, v29);
    sub_100013F2C(v26, &qword_1004AA048);
    if (v27 != 1)
    {
      goto LABEL_21;
    }

    v30 = v0[10];
    (v1)(v0[29], v0[7], v0[23]);
    FilePath.appending(_:)();
    v31 = *v30;
    if (v31)
    {
      v32 = v0[27];
      v33 = v0[17];
      v0[5] = v31;

      sub_1000039E8(&qword_1004A71E0);
      sub_10000E720(&qword_1004AA068, &qword_1004A71E0);
      SymmetricKey.init<A>(data:)();
      FilePath.extractAppleEncryptedArchive(to:using:expectingArchiveIdentifier:mode:)(v32, v33, 0, 0xF000000000000000, 384);
      (*(v0[16] + 8))(v0[17], v0[15]);
      v58 = FilePath.fileExists()();
      if (v59)
      {

LABEL_36:
        v60 = v0[30];
        v61 = v0[27];
        v63 = v0[23];
        v62 = v0[24];
        sub_1001795A4();
        swift_allocError();
        *v68 = 0;
        goto LABEL_37;
      }

      if (!v58)
      {
        goto LABEL_36;
      }

      v66 = v0[26];
      v67 = v0[14];
      (v1)(v66, v0[27], v0[23]);
      SHA256Digest.init(_:)(v66, v67);
      v71 = v0[13];
      v70 = v0[14];
      v72 = v0[12];
      v0[6] = v31;
      sub_1001795F8(&qword_1004AA078, &type metadata accessor for SHA256Digest);
      sub_10000E720(&qword_1004A71E8, &qword_1004A71E0);
      v73 = static Digest.== infix<A>(_:_:)();
      (*(v71 + 8))(v70, v72);
      if (v73)
      {
        v74 = v0[27];
        v75 = v0[28];
        v76 = v0[23];
        v77 = v0[24];
        (*(v77 + 8))(v0[30], v76);
        v95 = *(v77 + 32);
        v95(v75, v74, v76);
        v94 = 1;
        goto LABEL_22;
      }

      if (qword_1004A9DD8 != -1)
      {
        swift_once();
      }

      v78 = v0[21];
      v79 = v0[9];
      v80 = type metadata accessor for Logger();
      sub_1000270B4(v80, static CryptexCacheDelegate.logger);
      sub_1001794E4(v79, v78);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v0[21];
      if (v83)
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v96[0] = v86;
        *v85 = 136315138;
        type metadata accessor for URL();
        sub_1001795F8(&qword_1004AAE30, &type metadata accessor for URL);
        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v88;
        sub_100179548(v84);
        v90 = sub_1000026C0(v87, v89, v96);

        *(v85 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v81, v82, "[%s] Cached file failed sha validation!", v85, 0xCu);
        sub_100003C3C(v86);
      }

      else
      {

        sub_100179548(v84);
      }

      v60 = v0[30];
      v61 = v0[27];
      v63 = v0[23];
      v62 = v0[24];
      sub_100179660();
      swift_allocError();
      v65 = 2;
    }

    else
    {
      if (qword_1004A9DD8 != -1)
      {
        swift_once();
      }

      v45 = v0[20];
      v46 = v0[9];
      v47 = type metadata accessor for Logger();
      sub_1000270B4(v47, static CryptexCacheDelegate.logger);
      sub_1001794E4(v46, v45);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v0[20];
      if (v50)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v96[0] = v53;
        *v52 = 136315138;
        type metadata accessor for URL();
        sub_1001795F8(&qword_1004AAE30, &type metadata accessor for URL);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        sub_100179548(v51);
        v57 = sub_1000026C0(v54, v56, v96);

        *(v52 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v48, v49, "[%s] No digest found when digest is required.", v52, 0xCu);
        sub_100003C3C(v53);
      }

      else
      {

        sub_100179548(v51);
      }

      v60 = v0[30];
      v61 = v0[27];
      v63 = v0[23];
      v62 = v0[24];
      sub_1001795A4();
      swift_allocError();
      v65 = 1;
    }

    *v64 = v65;
LABEL_37:
    swift_willThrow();
    v69 = *(v62 + 8);
    v69(v61, v63);
    v69(v60, v63);
LABEL_14:

    v23 = v0[1];

    return v23();
  }

LABEL_21:
  v95 = *(v0[24] + 32);
  v95(v0[28], v0[30], v0[23]);
  v94 = 0;
LABEL_22:
  v34 = v0[28];
  v35 = v0[25];
  v37 = v0[23];
  v36 = v0[24];
  v38 = v0[18];
  v91 = v0[29];
  v39 = v0[10];
  v92 = v0[8];
  v93 = v0[11];
  v1();
  v95(v35, v34, v37);
  v40 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
  sub_100013E54(v39 + *(v40 + 24), v38, &qword_1004AA048);
  type metadata accessor for CryptexCacheDelegate.Entry(0);
  v41 = swift_allocObject();
  v42 = *(v36 + 56);
  v42(v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath, 1, 1, v37);
  v95(v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, v91, v37);
  *(v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_lock) = v92;
  v95(v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, v35, v37);
  *(v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) = v94;
  sub_100172F4C(v38, v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
  v42(v93, 1, 1, v37);
  v43 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  swift_beginAccess();

  sub_100172AD8(v93, v41 + v43);
  swift_endAccess();

  v44 = v0[1];

  return v44(v41);
}

uint64_t CryptexCacheDelegate.handleDownload(from:to:authentication:downloadConfiguration:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = type metadata accessor for URL();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for SHA256Digest();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v9 = type metadata accessor for FilePath();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_1000039E8(&qword_1004A9CF8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001776BC, 0, 0);
}

uint64_t sub_1001776BC()
{
  v1 = URL.scheme.getter();
  if (!v2)
  {
LABEL_7:
    v5 = *(v0 + 200);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 80);
    v11 = *(v7 + 16);
    *(v0 + 224) = v11;
    *(v0 + 232) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v12 = *v8;
    v13 = *(v8 + 8);
    v14 = v9 + *(type metadata accessor for CryptexCacheDelegate.AccessParameter(0) + 28);
    v15 = *v14;
    v16 = *(v14 + 8);
    *(v0 + 16) = xmmword_1003F2EE0;
    *(v0 + 32) = xmmword_1003F2EF0;
    *(v0 + 48) = 1;
    v17 = swift_task_alloc();
    *(v0 + 240) = v17;
    *v17 = v0;
    v17[1] = sub_100177C34;
    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    v20 = *(v0 + 72);

    return static Network.downloadItem(at:to:attempts:backoff:background:maxActiveTasks:chunkSize:)(v18, v20, v19, v12, v0 + 16, v13, v15, v16);
  }

  if (v1 == 2020568683 && v2 == 0xE400000000000000)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v22 = *(v0 + 200);
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);
  v25 = *(v0 + 104);
  (*(v24 + 16))(v22, *(v0 + 80), v23);
  (*(v24 + 56))(v22, 0, 1, v23);
  v27 = *(v25 + 8);
  v26 = *(v25 + 16);
  v28 = swift_task_alloc();
  *(v0 + 216) = v28;
  *v28 = v0;
  v28[1] = sub_100177968;
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  v32 = *(v0 + 88);
  v31 = *(v0 + 96);
  v33 = *(v0 + 72);

  return static KnoxClientWrapper.downloadRaw(from:to:configuration:authentication:alternateCDNHost:)(v29, v33, v30, v31, v32, v27, v26);
}

uint64_t sub_100177968()
{
  v1 = *(*v0 + 200);

  sub_100013F2C(v1, &qword_1004A9CF8);

  return _swift_task_switch(sub_100177A90, 0, 0);
}

uint64_t sub_100177A90()
{
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[21];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100013F2C(v1, &qword_1004A9CF8);
    sub_1001795A4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[8], v1, v2);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100177C34()
{
  v1 = *(*v0 + 200);

  sub_100013F2C(v1, &qword_1004A9CF8);

  return _swift_task_switch(sub_100177D5C, 0, 0);
}

uint64_t sub_100177D5C()
{
  v38 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100013F2C(v1, &qword_1004A9CF8);
    sub_1001795A4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v3 + 32);
    v6(*(v0 + 184), v1, v2);
    v7 = *v5;
    if (!*v5 || (v8 = *(v0 + 176), v9 = *(v0 + 152), (*(v0 + 224))(v8, *(v0 + 184), *(v0 + 160)), SHA256Digest.init(_:)(v8, v9), v11 = *(v0 + 144), v10 = *(v0 + 152), v12 = *(v0 + 136), *(v0 + 56) = v7, sub_1000039E8(&qword_1004A71E0), sub_1001795F8(&qword_1004AA078, &type metadata accessor for SHA256Digest), sub_10000E720(&qword_1004A71E8, &qword_1004A71E0), v13 = static Digest.== infix<A>(_:_:)(), (*(v11 + 8))(v10, v12), (v13 & 1) != 0))
    {
      v6(*(v0 + 64), *(v0 + 184), *(v0 + 160));

      v14 = *(v0 + 8);
      goto LABEL_13;
    }

    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    v18 = *(v0 + 72);
    v19 = type metadata accessor for Logger();
    sub_1000270B4(v19, static Logger.caching);
    (*(v16 + 16))(v15, v18, v17);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);
    v25 = *(v0 + 112);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      sub_1001795F8(&qword_1004AAE30, &type metadata accessor for URL);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v31 = sub_1000026C0(v28, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%s] Downloaded file failed sha validation!", v26, 0xCu);
      sub_100003C3C(v27);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    v32 = *(v0 + 184);
    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    sub_1001795A4();
    swift_allocError();
    *v35 = 2;
    swift_willThrow();
    (*(v34 + 8))(v32, v33);
  }

  v14 = *(v0 + 8);
LABEL_13:

  return v14();
}

double default argument 4 of static Network.post<A>(_:to:attempts:timeout:backoff:)@<D0>(uint64_t a1@<X8>)
{
  result = -9.63067605e-257;
  *a1 = xmmword_1003F2EE0;
  *(a1 + 16) = xmmword_1003F2EF0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t CryptexCacheDelegate.entryPurge(from:)(uint64_t a1)
{
  v34 = type metadata accessor for FilePath();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  FilePath.string.getter();
  v6 = String._bridgeToObjectiveC()();

  v36 = 0;
  v7 = [v5 contentsOfDirectoryAtPath:v6 error:&v36];

  v8 = v36;
  if (v7)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v8;
    v11 = v9;

    v35 = *(v9 + 16);
    if (v35)
    {
      v14 = 0;
      v32 = (v3 + 8);
      v15 = (v9 + 40);
      *&v13 = 136315138;
      v29 = v13;
      v16 = v31;
      v30 = a1;
      v33 = v11;
      do
      {
        if (v14 >= *(v11 + 16))
        {
          __break(1u);
        }

        v17 = *(v15 - 1);
        v18 = *v15;
        v36 = v17;
        v37 = v18;
        __chkstk_darwin(v12);
        *(&v29 - 2) = &v36;

        if (sub_100012A04(sub_100013DA8, (&v29 - 2), &off_100484B98))
        {
        }

        else
        {
          if (qword_1004A9F70 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_1000270B4(v19, static Logger.caching);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v36 = v23;
            *v22 = v29;
            *(v22 + 4) = sub_1000026C0(v17, v18, &v36);
            _os_log_impl(&_mh_execute_header, v20, v21, "%s is not a permitted file, removing it from the cache", v22, 0xCu);
            sub_100003C3C(v23);
            v16 = v31;
          }

          v36 = FilePath.string.getter();
          v37 = v24;

          v25._countAndFlagsBits = 47;
          v25._object = 0xE100000000000000;
          String.append(_:)(v25);

          v26._countAndFlagsBits = v17;
          v26._object = v18;
          String.append(_:)(v26);

          FilePath.init(_:)();
          sub_10017970C(v16);
          if (v1)
          {
            (*v32)(v16, v34);
          }

          v12 = (*v32)(v16, v34);
          v11 = v33;
        }

        ++v14;
        v15 += 2;
      }

      while (v35 != v14);
    }
  }

  else
  {
    v27 = v36;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_1001786BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 16) = a1;
  v17 = (*(**v7 + 80) + **(**v7 + 80));
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_10017B0C8;

  return v17(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100178820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 16) = a1;
  v15 = (*(**v6 + 88) + **(**v6 + 88));
  v13 = swift_task_alloc();
  *(v7 + 24) = v13;
  *v13 = v7;
  v13[1] = sub_100178978;

  return v15(a2, a3, a4, a5, a6);
}

uint64_t sub_100178978(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100178A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 96) + **(**v6 + 96));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_100001FE0;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100178C38(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1000279B4(v3, a2);
  v4 = sub_1000270B4(v3, a2);
  if (qword_1004A9F68 != -1)
  {
    swift_once();
  }

  v5 = sub_1000270B4(v3, static Logger.cryptexcache);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_100178D6C()
{
  v0 = type metadata accessor for FilePath();
  sub_1000279B4(v0, static Cache<>.defaultCacheDirectoryPath);
  sub_1000270B4(v0, static Cache<>.defaultCacheDirectoryPath);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_100178E08(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_1000270B4(v4, a3);
}

uint64_t sub_100178EA0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1000270B4(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t default argument 0 of FirewallInstaller.init(computer:interfaceFinder:)@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static RealComputer.shared;
  a1[3] = type metadata accessor for RealComputer();
  a1[4] = &protocol witness table for RealComputer;
  *a1 = v2;
}

uint64_t default argument 1 of FirewallInstaller.init(computer:interfaceFinder:)()
{
  type metadata accessor for InterfaceFinder();

  return swift_allocObject();
}

uint64_t default argument 2 of OS_dispatch_queue.async<A>(group:qos:flags:execute:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1001795F8(&qword_1004A7A70, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000039E8(&qword_1004A7A78);
  sub_10000E720(&qword_1004A7A80, &qword_1004A7A78);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

double default argument 2 of Cache.access(entryBackedByResourceAt:authentication:downloadConfiguration:delegateParameter:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *&result = 4;
  *(a1 + 32) = xmmword_1003761F0;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_1001791D0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

_DWORD *sub_1001792B4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1001792D8(uint64_t a1)
{
  v2 = sub_1001795F8(&qword_1004AA3C8, type metadata accessor for URLResourceKey);
  v3 = sub_1001795F8(&qword_1004AA3D0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100179394(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1001793E0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_100179440(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100179450(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1001794E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheDownloadInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100179548(uint64_t a1)
{
  v2 = type metadata accessor for CacheDownloadInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001795A4()
{
  result = qword_1004AA060;
  if (!qword_1004AA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA060);
  }

  return result;
}

uint64_t sub_1001795F8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100179660()
{
  result = qword_1004AA070;
  if (!qword_1004AA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA070);
  }

  return result;
}

uint64_t sub_1001796B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10017970C(uint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FilePath.remove()();
  if (v6)
  {
    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, static Logger.caching);
    (*(v3 + 16))(v5, a1, v2);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v10 = 136315394;
      sub_1001795F8(&qword_1004AA058, &type metadata accessor for FilePath);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      (*(v3 + 8))(v5, v2);
      v14 = sub_1000026C0(v11, v13, &v19);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v15;
      v16 = v17;
      *v17 = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to remove %s from cache: %@", v10, 0x16u);
      sub_100013F2C(v16, &qword_1004AA050);

      sub_100003C3C(v18);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    swift_willThrow();
  }
}

unint64_t sub_100179A14()
{
  result = qword_1004AA080;
  if (!qword_1004AA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA080);
  }

  return result;
}

uint64_t dispatch thunk of CryptexCacheDelegate.handleCacheMiss(forCacheEntryDirectory:lock:downloadInformation:downloadedFile:tempDir:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 80) + **(*v6 + 80));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_10017B0CC;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CryptexCacheDelegate.handleCacheHit(forCacheEntryDirectory:lock:downloadInformation:tempDir:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 88) + **(*v5 + 88));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_100179D4C;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_100179D4C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CryptexCacheDelegate.handleDownload(from:to:authentication:downloadConfiguration:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5, uint64_t a6)
{
  v11 = v7;
  v13 = *(a4 + 32);
  v14 = *a5;
  v15 = *(a5 + 8);
  v16 = *(a5 + 48);
  v22 = (*(*v6 + 96) + **(*v6 + 96));
  v17 = swift_task_alloc();
  v18 = *a4;
  v19 = a4[1];
  *(v11 + 112) = v17;
  *(v11 + 88) = v19;
  *(v11 + 104) = v13;
  *(v11 + 16) = v14;
  *(v11 + 72) = v18;
  *(v11 + 24) = v15;
  v20 = *(a5 + 2);
  *(v11 + 32) = *(a5 + 1);
  *(v11 + 48) = v20;
  *(v11 + 64) = v16;
  *v17 = v11;
  v17[1] = sub_100179FDC;

  return v22(a1, a2, a3, v11 + 72, v11 + 16, a6);
}

uint64_t sub_100179FDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10017A124()
{
  type metadata accessor for FilePath();
  if (v0 <= 0x3F)
  {
    sub_10017A400(319, &qword_1004AA1B0, type metadata accessor for AEADecryptionParameters);
    if (v1 <= 0x3F)
    {
      sub_10017A400(319, &qword_1004AA1B8, &type metadata accessor for FilePath);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10017A400(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10017A468(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000039E8(&qword_1004AA048);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_10017A544(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1000039E8(&qword_1004AA048);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10017A5F4()
{
  sub_10017A748();
  if (v0 <= 0x3F)
  {
    sub_10017B034(319, &qword_1004AA318, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10017A400(319, &qword_1004AA1B0, type metadata accessor for AEADecryptionParameters);
      if (v2 <= 0x3F)
      {
        sub_10017B034(319, &qword_1004AA320, &type metadata for Int, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10017B034(319, &unk_1004AA328, &type metadata for UInt64, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10017A748()
{
  if (!qword_1004AA310)
  {
    sub_100003A94(&qword_1004A71E0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AA310);
    }
  }
}

__n128 sub_10017A7E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10017A810(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017A830(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 144) = v3;
  return result;
}

__n128 sub_10017A8D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10017A904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10017A960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

__n128 sub_10017AA00(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10017AA3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 184))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 149);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10017AA90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 149) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10017AD98(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (v4)
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t sub_10017AE04(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FirewallInstaller.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FirewallInstaller.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10017AF74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017AF94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_10017B034(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10017B0F4()
{
  v1 = *v0;
  v2 = 0x534F63616DLL;
  v3 = 5459817;
  v4 = 0x534F6863746177;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1397716596;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10017B178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001863F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10017B1A0(uint64_t a1)
{
  v2 = sub_10017BA20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B1DC(uint64_t a1)
{
  v2 = sub_10017BA20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B224@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10017B254(uint64_t a1)
{
  v2 = sub_10017BB1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B290(uint64_t a1)
{
  v2 = sub_10017BB1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B2CC(uint64_t a1)
{
  v2 = sub_10017BBC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B308(uint64_t a1)
{
  v2 = sub_10017BBC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B344(uint64_t a1)
{
  v2 = sub_10017BA74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B380(uint64_t a1)
{
  v2 = sub_10017BA74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B3BC(uint64_t a1)
{
  v2 = sub_10017BB70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B3F8(uint64_t a1)
{
  v2 = sub_10017BB70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B434(uint64_t a1)
{
  v2 = sub_10017BAC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B470(uint64_t a1)
{
  v2 = sub_10017BAC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ComputerPlatform.encode(to:)(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_1000039E8(&qword_1004AA438);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v29 - v4;
  v5 = sub_1000039E8(&qword_1004AA440);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = sub_1000039E8(&qword_1004AA448);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v29 - v8;
  v9 = sub_1000039E8(&qword_1004AA450);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1000039E8(&qword_1004AA458);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v41 = sub_1000039E8(&qword_1004AA460);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v29 - v16;
  sub_10000E2A8(a1, a1[3]);
  sub_10017BA20();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_10017BB70();
      v28 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_10017BBC4();
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_10017BB1C();
    v26 = v29;
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_10017BAC8();
    v19 = v32;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_10017BA74();
    v19 = v35;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

unint64_t sub_10017BA20()
{
  result = qword_1004AA468;
  if (!qword_1004AA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA468);
  }

  return result;
}

unint64_t sub_10017BA74()
{
  result = qword_1004AA470;
  if (!qword_1004AA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA470);
  }

  return result;
}

unint64_t sub_10017BAC8()
{
  result = qword_1004AA478;
  if (!qword_1004AA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA478);
  }

  return result;
}

unint64_t sub_10017BB1C()
{
  result = qword_1004AA480;
  if (!qword_1004AA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA480);
  }

  return result;
}

unint64_t sub_10017BB70()
{
  result = qword_1004AA488;
  if (!qword_1004AA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA488);
  }

  return result;
}

unint64_t sub_10017BBC4()
{
  result = qword_1004AA490;
  if (!qword_1004AA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA490);
  }

  return result;
}

uint64_t sub_10017BC30@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100186598(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Bool __swiftcall Computer.run(shell:command:)(Swift::String_optional shell, Swift::String command)
{
  v4 = v3;
  v5 = v2;
  object = command._object;
  countAndFlagsBits = command._countAndFlagsBits;
  v8 = shell.value._object;
  v9 = shell.value._countAndFlagsBits;
  v10 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - v11;
  v13 = type metadata accessor for FilePath();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  LOBYTE(v4) = (*(v4 + 280))(v9, v8, countAndFlagsBits, object, v12, v5, v4);
  sub_100013F2C(v12, &qword_1004A9CF8);
  return v4 & 1;
}

uint64_t sub_10017BDB4()
{
  type metadata accessor for RealComputer();
  v0 = swift_allocObject();
  v0[2] = 0;
  v1 = type metadata accessor for RealFileSystem();
  inited = swift_initStaticObject();
  v0[6] = v1;
  v0[7] = &protocol witness table for RealFileSystem;
  v0[3] = inited;
  v3 = type metadata accessor for RealSystemLog();
  result = swift_allocObject();
  v0[11] = v3;
  v0[12] = &protocol witness table for RealSystemLog;
  v0[8] = result;
  static RealComputer.shared = v0;
  return result;
}

void *RealComputer.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = 0;
  v1 = type metadata accessor for RealFileSystem();
  inited = swift_initStaticObject();
  v0[6] = v1;
  v0[7] = &protocol witness table for RealFileSystem;
  v0[3] = inited;
  v3 = type metadata accessor for RealSystemLog();
  v4 = swift_allocObject();
  v0[11] = v3;
  v0[12] = &protocol witness table for RealSystemLog;
  v0[8] = v4;
  return v0;
}

uint64_t *RealComputer.shared.unsafeMutableAddressor()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  return &static RealComputer.shared;
}

uint64_t static RealComputer.shared.getter()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static RealComputer.shared.setter(uint64_t a1)
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RealComputer.shared = a1;
}

uint64_t (*static RealComputer.shared.modify())()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10017C098@<X0>(void *a1@<X8>)
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static RealComputer.shared;
}

uint64_t sub_10017C118(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1004A9DF0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RealComputer.shared = v1;
}

uint64_t Volume.keys.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t RealComputer.nvram.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = (*(*v1 + 112))();
  if (v4)
  {
    v5 = v4;
    result = type metadata accessor for RealNVRAM();
LABEL_3:
    a1[3] = result;
    a1[4] = &protocol witness table for RealNVRAM;
    *a1 = v5;
    return result;
  }

  v7 = type metadata accessor for RealNVRAM();
  swift_allocObject();
  result = RealNVRAM.init()();
  if (!v2)
  {
    v5 = result;
    v8 = *(*v1 + 120);

    v8(v9);
    result = v7;
    goto LABEL_3;
  }

  return result;
}

uint64_t RealComputer.set(computerName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10017C3BC, 0, 0);
}

uint64_t sub_10017C3BC()
{
  v14 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000026C0(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting computerName to %s", v6, 0xCu);
    sub_100003C3C(v7);
  }

  v0[4] = sub_1001BE7C0();
  v9 = v0[2];
  v8 = v0[3];
  v10 = swift_allocObject();
  v0[5] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_10017C654;

  return sub_10017C840(sub_10017C840, 5, 0, "set(computerName:)", 18, 2, sub_100186D34, v10);
}

uint64_t sub_10017C654()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10017C7D4;
  }

  else
  {

    v2 = sub_10017C770;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017C770()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017C7D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017C840(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = v8;
  *(v9 + 32) = a2;
  *(v9 + 40) = a7;
  *(v9 + 184) = a3;
  *(v9 + 24) = a1;
  *(v9 + 64) = swift_getObjectType();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  *(v9 + 72) = v10;
  *(v9 + 80) = *(v10 - 8);
  *(v9 + 88) = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  *(v9 + 96) = v11;
  *(v9 + 104) = *(v11 - 8);
  *(v9 + 112) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  *(v9 + 120) = v12;
  *(v9 + 128) = *(v12 - 8);
  *(v9 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_10017C9D0, 0, 0);
}

uint64_t sub_10017C9D0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 184);
  v7 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 64);
  sub_10001AA40(0, &qword_1004A7840);
  (*(v1 + 104))(v2, enum case for DispatchQoS.QoSClass.default(_:), v3);
  v8 = static OS_dispatch_queue.global(qos:)();
  *(v0 + 144) = v8;
  (*(v1 + 8))(v2, v3);
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6 & 1;
  *(v9 + 40) = v15;
  *(v9 + 48) = v4;
  *(v9 + 56) = v16;
  v10 = v5;

  static DispatchQoS.unspecified.getter();
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  sub_100189A44(&qword_1004A7A70, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000039E8(&qword_1004A7A78);
  sub_100189A8C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  v11[2] = v8;
  v11[3] = 0;
  v11[4] = v17;
  v11[5] = v18;
  v11[6] = sub_100189A1C;
  v11[7] = v9;
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_10017CC5C;
  v13 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD00000000000001FLL, 0x800000010043DC10, sub_100189AF0, v11, &type metadata for () + 8);
}

uint64_t sub_10017CC5C()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10017CE30, 0, 0);
  }

  else
  {
    v3 = v2[18];
    v5 = v2[13];
    v4 = v2[14];
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[9];
    v9 = v2[10];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = v2[1];

    return v10();
  }
}

uint64_t sub_10017CE30()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t RealComputer.set(hostName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10017CF38, 0, 0);
}

uint64_t sub_10017CF38()
{
  v14 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000026C0(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting hostName to %s", v6, 0xCu);
    sub_100003C3C(v7);
  }

  v0[4] = sub_1001BE7C0();
  v9 = v0[2];
  v8 = v0[3];
  v10 = swift_allocObject();
  v0[5] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_10017D1D8;

  return sub_10017C840(sub_10017C840, 5, 0, "set(hostName:)", 14, 2, sub_100186D64, v10);
}

uint64_t sub_10017D1D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100189CC4;
  }

  else
  {

    v2 = sub_100189CD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t RealComputer.set(localHostName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10017D314, 0, 0);
}

uint64_t sub_10017D314()
{
  v14 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000026C0(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting localHostName to %s", v6, 0xCu);
    sub_100003C3C(v7);
  }

  v0[4] = sub_1001BE7C0();
  v9 = v0[2];
  v8 = v0[3];
  v10 = swift_allocObject();
  v0[5] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_10017D1D8;

  return sub_10017C840(sub_10017C840, 5, 0, "set(localHostName:)", 19, 2, sub_100186D94, v10);
}

void sub_10017D5AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a2, a3);
  if (!v4)
  {
    SCPreferencesRef.commit()();
    if (!v5)
    {
      SCPreferencesRef.apply()();
    }
  }
}

Swift::OpaquePointer_optional __swiftcall RealComputer.set(preferences:)(Swift::OpaquePointer preferences)
{
  v116 = sub_100186DEC(&_swiftEmptyArrayStorage, &qword_1004AA758);
  v119 = preferences._rawValue + 64;
  v2 = 1 << *(preferences._rawValue + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v122 = v3 & *(preferences._rawValue + 8);
  v118 = (v2 + 63) >> 6;
  rawValue = preferences._rawValue;

  v4 = 0;
LABEL_5:
  for (i = v4; ; i = v120)
  {
    v6 = v122;
    if (!v122)
    {
      while (1)
      {
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_108;
        }

        if (v7 >= v118)
        {

          v115 = v116;
          if (!v116[2])
          {

            v115 = 0;
          }

          goto LABEL_112;
        }

        v6 = *&v119[8 * v7];
        ++i;
        if (v6)
        {
          goto LABEL_11;
        }
      }
    }

    v7 = i;
LABEL_11:
    v122 = (v6 - 1) & v6;
    v120 = v7;
    v8 = __clz(__rbit64(v6)) | (v7 << 6);
    v9 = (rawValue[6] + 16 * v8);
    v11 = *v9;
    v10 = v9[1];
    v12 = *(rawValue[7] + 8 * v8);

    v121 = sub_100186DEC(&_swiftEmptyArrayStorage, &qword_1004AA750);
    v13 = v12 + 64;
    v128 = v12;
    v14 = 1 << *(v12 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    v123 = v11;
    v125 = v12 + 64;
    v126 = v10;
    v18 = v11 == 0x72657355796E41 && v10 == 0xE700000000000000;
    v19 = v18;
    v127 = v19;
    v124 = (v14 + 63) >> 6;
    v20 = 0;
    if (v16)
    {
      break;
    }

    while (1)
    {
LABEL_22:
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_107;
      }

      if (v21 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        goto LABEL_25;
      }
    }

    if (v121[2])
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = v116;
      sub_100183620(v121, v123, v126, isUniquelyReferenced_nonNull_native, &qword_1004AA758);

      v116 = v150;
      v4 = v120;
      goto LABEL_5;
    }
  }

LABEL_21:
  v21 = v20;
LABEL_25:
  v22 = v16;
  v131 = v21;
  v23 = __clz(__rbit64(v16)) | (v21 << 6);
  v24 = (*(v128 + 48) + 16 * v23);
  v25 = v24[1];
  v132 = *v24;
  v141 = *(*(v128 + 56) + 8 * v23);
  if (v127 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v26 = kCFPreferencesAnyUser;
  }

  else
  {

    v26 = String._bridgeToObjectiveC()();
  }

  v27 = v26;
  v28 = v132 == 0x696C707041796E41 && v25 == 0xEE006E6F69746163;
  v129 = v25;
  if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v29 = kCFPreferencesAnyApplication;
  }

  else
  {
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = v29;
  v130 = (v22 - 1) & v22;
  v31 = v141 + 64;
  v32 = 1 << *(v141 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v141 + 64);
  v35 = (v32 + 63) >> 6;

  v135 = v30;
  v134 = v27;
  v136 = kCFPreferencesCurrentHost;
  v36 = 0;
  for (j = v35; v34; v35 = j)
  {
LABEL_44:
    v140 = v34;
    v153 = *(*(v141 + 56) + 8 * (__clz(__rbit64(v34)) | (v36 << 6)));

    value = JSON.propertyListValue.getter().super.super.isa;
    if (qword_1004A9E38 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v38 = off_1004AB710;
    Hasher.init(_seed:)();
    type metadata accessor for CFString(0);
    sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString);
    v39 = v135;
    v40 = v134;
    v41 = v136;
    v148 = v39;
    _CFObject.hash(into:)();
    v144 = v40;
    _CFObject.hash(into:)();
    v142 = v41;
    _CFObject.hash(into:)();
    v42 = Hasher._finalize()();
    v43 = v38 + 56;
    v146 = v38;
    v44 = -1 << v38[32];
    v45 = v42 & ~v44;
    if ((*&v38[((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v45))
    {
      v46 = ~v44;
      do
      {
        v47 = *(v146 + 6) + 24 * v45;
        v48 = *(v47 + 8);
        v49 = *(v47 + 16);
        v50 = *v47;
        v51 = v48;
        v52 = v49;
        if (static _CFObject.== infix(_:_:)() & 1) != 0 && (static _CFObject.== infix(_:_:)())
        {
          v53 = static _CFObject.== infix(_:_:)();

          if (v53)
          {
            v54 = v142;

            v55 = v144;
            v56 = *(v146 + 6) + 24 * v45;
            v57 = *(v56 + 8);
            v58 = *(v56 + 16);
            v59 = *v56;
            v60 = v57;
            v61 = v58;
            goto LABEL_55;
          }
        }

        else
        {
        }

        v45 = (v45 + 1) & v46;
      }

      while (((*&v43[(v45 >> 3) & 0xFFFFFFFFFFFFFF8] >> v45) & 1) != 0);
    }

    v62 = swift_isUniquelyReferenced_nonNull_native();
    v150 = off_1004AB710;
    off_1004AB710 = 0x8000000000000000;
    v59 = v148;
    v55 = v144;
    v60 = v144;
    v54 = v142;
    v61 = v142;
    sub_100185744(v59, v60, v61, v45, v62);
    off_1004AB710 = v150;
LABEL_55:
    v34 = (v140 - 1) & v140;
    swift_endAccess();

    v63 = String._bridgeToObjectiveC()();

    CFPreferencesSetValue(v63, value, v148, v55, v54);
    swift_unknownObjectRelease();

    v31 = v141 + 64;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      if (qword_1004A9E38 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v64 = v135;
      v65 = v134;
      v66 = v136;
      sub_100184D50(&v150, v64, v65, v66);
      swift_endAccess();

      v147 = v66;
      v145 = v65;
      if (CFPreferencesSynchronize(v64, v65, v66))
      {

        v67 = v64;
      }

      else
      {
        if (qword_1004A9F20 != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        sub_1000270B4(v68, qword_1004B00F8);
        v69 = v64;
        v70 = v65;
        v67 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v67, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v72 = 138412546;
          *(v72 + 4) = v70;
          *(v72 + 12) = 2112;
          *(v72 + 14) = v69;
          *v73 = v70;
          v73[1] = v69;
          _os_log_impl(&_mh_execute_header, v67, v71, "Failed to synchronize %@.%@", v72, 0x16u);
          sub_1000039E8(&qword_1004AA050);
          swift_arrayDestroy();
          v31 = v141 + 64;
        }

        else
        {

          v67 = v69;
        }

        v65 = v145;
      }

      v138 = sub_100186EE8(&_swiftEmptyArrayStorage);
      v74 = 1 << *(v141 + 32);
      v75 = *(v141 + 64);
      if (v74 < 64)
      {
        v76 = ~(-1 << v74);
      }

      else
      {
        v76 = -1;
      }

      v77 = v76 & v75;
      v78 = (v74 + 63) >> 6;
      v143 = v64;
      v79 = 0;
      if ((v76 & v75) != 0)
      {
        while (1)
        {
          v80 = v79;
LABEL_75:
          v81 = __clz(__rbit64(v77)) | (v80 << 6);
          v82 = (*(v141 + 48) + 16 * v81);
          v84 = *v82;
          v83 = v82[1];
          v149 = *(*(v141 + 56) + 8 * v81);
          v150 = v149;

          isa = JSON.propertyListValue.getter().super.super.isa;
          swift_beginAccess();
          v86 = v64;
          v87 = v65;
          v88 = v147;
          sub_100184D50(&v150, v86, v87, v88);
          swift_endAccess();

          v89 = String._bridgeToObjectiveC()();
          v90 = CFPreferencesCopyValue(v89, v86, v87, v88);

          v91 = isa;
          if (isa)
          {
            v92 = v90;
            if (v90)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v91 = kCFNull;
            v94 = kCFNull;
            v92 = v90;
            if (v90)
            {
              goto LABEL_77;
            }
          }

          v92 = kCFNull;
LABEL_77:
          v77 &= v77 - 1;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v93 = CFEqual(v91, v92);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v93)
          {

            v95 = swift_isUniquelyReferenced_nonNull_native();
            v150 = v138;
            v96 = v84;
            v97 = sub_100013364(v84, v83);
            v99 = v138[2];
            v100 = (v98 & 1) == 0;
            v101 = __OFADD__(v99, v100);
            v102 = v99 + v100;
            if (v101)
            {
              goto LABEL_109;
            }

            if (v138[3] >= v102)
            {
              if (v95)
              {
                goto LABEL_87;
              }

              v106 = v97;
              v107 = v98;
              sub_10018420C();
              v97 = v106;
              v96 = v84;
              if ((v107 & 1) == 0)
              {
                goto LABEL_90;
              }

LABEL_88:
              v105 = v97;

              v138 = v150;
              *(v150[7] + 8 * v105) = v149;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              v139 = v98;
              sub_100182348(v102, v95);
              v97 = sub_100013364(v84, v83);
              v104 = v103 & 1;
              v98 = v139;
              if ((v139 & 1) != v104)
              {
                goto LABEL_111;
              }

LABEL_87:
              if (v98)
              {
                goto LABEL_88;
              }

LABEL_90:
              v108 = v150;
              v150[(v97 >> 6) + 8] |= 1 << v97;
              v109 = (v108[6] + 16 * v97);
              *v109 = v96;
              v109[1] = v83;
              *(v108[7] + 8 * v97) = v149;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              v110 = v108[2];
              v101 = __OFADD__(v110, 1);
              v111 = v110 + 1;
              if (v101)
              {
                goto LABEL_110;
              }

              v138 = v108;
              v108[2] = v111;
            }

            v31 = v141 + 64;
            v64 = v143;
            v65 = v145;
            v79 = v80;
            if (!v77)
            {
              goto LABEL_72;
            }

            continue;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v79 = v80;
          v31 = v141 + 64;
          v64 = v143;
          v65 = v145;
          if (!v77)
          {
            goto LABEL_72;
          }
        }
      }

      while (1)
      {
LABEL_72:
        v80 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_106;
        }

        if (v80 >= v78)
        {
          break;
        }

        v77 = *(v31 + 8 * v80);
        ++v79;
        if (v77)
        {
          goto LABEL_75;
        }
      }

      if (v138[2])
      {
        v112 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v121;
        sub_100183620(v138, v132, v129, v112, &qword_1004AA750);

        v121 = v150;
        v17 = v124;
        v13 = v125;
        v16 = v130;
        v20 = v131;
        if (!v130)
        {
          goto LABEL_22;
        }
      }

      else
      {

        v16 = v130;
        v20 = v131;
        v17 = v124;
        v13 = v125;
        if (!v130)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_21;
    }

    v34 = *(v31 + 8 * v37);
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  v115 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_112:
  result.value._rawValue = v115;
  result.is_nil = v114;
  return result;
}

Swift::Bool __swiftcall RealComputer.configurePasswordlessSudo()()
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000270B4(v0, qword_1004B00F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Password-less sudo has no effect because it is not available on this platform", v3, 2u);
  }

  return 0;
}

Swift::Bool __swiftcall RealComputer.setLocale(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v2 = String._bridgeToObjectiveC()();
  v3 = qword_1004A9E38;
  v4 = kCFPreferencesAnyApplication;
  v5 = kCFPreferencesCurrentUser;
  v6 = kCFPreferencesAnyHost;
  v7 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_100184D50(&v36, v8, v9, v10);
  swift_endAccess();

  v11 = String._bridgeToObjectiveC()();
  CFPreferencesSetValue(v11, v7, v8, v9, v10);

  swift_beginAccess();
  v12 = v8;
  v13 = v9;
  v14 = v10;
  sub_100184D50(&v36, v12, v13, v14);
  swift_endAccess();

  if (!CFPreferencesSynchronize(v12, v13, v14))
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000270B4(v23, qword_1004B00F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_20;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1000026C0(countAndFlagsBits, object, &v36);
    v28 = "Failed to set AppleLocale to %{public}s: Failed to synchronize preferences.";
    goto LABEL_19;
  }

  _s10DarwinInit13CFPreferencesO11flushCachesyyFZ_0();
  swift_beginAccess();
  v12 = v12;
  v13 = v13;
  v14 = v14;
  sub_100184D50(&v36, v12, v13, v14);
  swift_endAccess();

  v15 = String._bridgeToObjectiveC()();
  v16 = CFPreferencesCopyValue(v15, v12, v13, v14);

  if (!v16)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000270B4(v29, qword_1004B00F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_20;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1000026C0(countAndFlagsBits, object, &v36);
    v28 = "Failed to set AppleLocale to %{public}s: Failed persist preferences.";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v24, v25, v28, v26, 0xCu);
    sub_100003C3C(v27);

LABEL_20:

LABEL_21:
    return 0;
  }

  if (!CFEqual(v16, v7))
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000270B4(v30, qword_1004B00F8);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_1000026C0(countAndFlagsBits, object, &v36);
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to set AppleLocale to %{public}s: Invalid persisted value.", v33, 0xCu);
      sub_100003C3C(v34);
    }

    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000270B4(v17, qword_1004B00F8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000026C0(countAndFlagsBits, object, &v36);
    _os_log_impl(&_mh_execute_header, v18, v19, "Set AppleLocale to %{public}s.", v20, 0xCu);
    sub_100003C3C(v21);
  }

  swift_unknownObjectRelease();
  return 1;
}

Swift::String_optional __swiftcall RealComputer.getAutomatedDeviceGroup()()
{
  v0 = shim_automatedDeviceGroup();
  if (v0)
  {
    v1 = v0;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000270B4(v5, qword_1004B00F8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000026C0(v2, v4, &v17);
      _os_log_impl(&_mh_execute_header, v6, v7, "Found AutomatedDeviceGroup: %{public}s", v8, 0xCu);
      sub_100003C3C(v9);
    }
  }

  else
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000270B4(v10, qword_1004B00F8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to find an AutomatedDeviceGroup for this device", v13, 2u);
    }

    v2 = 0;
    v4 = 0;
  }

  v14 = v2;
  v15 = v4;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}