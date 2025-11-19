uint64_t sub_277B31380(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6)
{
  if (a3 > 0)
  {
    return 0;
  }

  v6 = *(a2 + 7864);
  v7 = *v6;
  v8 = *(*v6 + 167);
  v9 = (v8 & 0x80) != 0 || v7[16] > 0;
  if ((0x61810uLL >> a4))
  {
    return 0;
  }

  if ((0x18608uLL >> a4))
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (a6)
    {
      if (*(a2 + 4 * (v8 & 7) + 10692))
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (!byte_277C3C219[2 * v9 + ((0x60604uLL >> a4) & 1)])
    {
      return 0;
    }
  }

  if (*(a2 + 4 * (v8 & 7) + 10692))
  {
    return 0;
  }

  if ((0x18608uLL >> a4))
  {
    v11 = v9;
    goto LABEL_22;
  }

  if (!a6)
  {
    v11 = byte_277C3C219[2 * v9 + ((0x60604uLL >> a4) & 1)];
    goto LABEL_22;
  }

LABEL_17:
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

LABEL_22:
  v12 = dword_277C3C220[6 * v9 + v11];
  if (!v9)
  {
    if (v12 >= 1)
    {
      if (v7[91])
      {
        v15 = &unk_277C3C214 + v7[90];
      }

      else
      {
        v15 = v7 + 2;
      }

      v13 = a1 + 3328 * v12 + 832 * byte_277C3BE70[a4] + (*v15 << 6) + 4 * a5;
      v14 = 37424;
      return *(v13 + v14);
    }

    return 0;
  }

  if (v12 < 1)
  {
    return 0;
  }

  v13 = a1 + (v12 << 8) + (byte_277C3BE70[a4] << 6) + 4 * a5;
  v14 = 36400;
  return *(v13 + v14);
}

uint64_t sub_277B31504(int a1, int a2, int a3, unsigned int a4, int a5, int a6, uint64_t a7, char a8, char a9, uint64_t a10)
{
  if (a3 >= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = a3;
  }

  v12 = (a7 + 32 * a5 + 4 * v11 + 152);
  if (a1)
  {
    v12 = (a7 + 12 * a5 + 4 * (v11 - 1) + 104);
  }

  v13 = *v12;
  if (a2)
  {
    v14 = 512;
  }

  else
  {
    v14 = *(a7 + 8 * a6 + 4 * a4 + 1568);
  }

  result = (v14 + v13);
  if (a3 >= 3)
  {
    v16 = a2 >> a8;
    v17 = a2 >> a8 << a8;
    if (a1)
    {
      if (a2)
      {
        if (a9 || a2 - v17 > 1 || v16 >= 2)
        {
          v18 = 7;
          if (a9 != 1 || v16)
          {
            if (a2 == v17 && a9 == 2)
            {
              v18 = 7;
            }

            else
            {
              v18 = 14;
            }
          }
        }

        else
        {
          v18 = 7;
        }
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_44;
    }

    v19 = (1 << a8) + 4;
    v20 = a2 - v17 + v19 * v16;
    v21 = a10 + v20;
    v22 = (a10 + v19 + v20);
    v18 = *v22 + *(v21 + 1);
    if (a9 == 2)
    {
      v18 = (v18 + *(v21 + 2) + 1) >> 1;
      if (v18 >= 6)
      {
        v18 = 6;
      }

      if (!a2)
      {
        goto LABEL_44;
      }

      if (a2 == v17)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (a9 != 1)
      {
        if (a9)
        {
          goto LABEL_38;
        }

        v18 = (v18 + v22[1] + 1) >> 1;
        if (v18 >= 6)
        {
          v18 = 6;
        }

        if (!a2)
        {
          goto LABEL_44;
        }

        if (v16 > 1 || a2 - v17 > 1)
        {
          goto LABEL_38;
        }

LABEL_43:
        v18 += 7;
        goto LABEL_44;
      }

      v18 = (v18 + *(a10 + v20 + (2 * v19)) + 1) >> 1;
      if (v18 >= 6)
      {
        v18 = 6;
      }

      if (!a2)
      {
        goto LABEL_44;
      }

      if (!v16)
      {
        goto LABEL_43;
      }
    }

LABEL_38:
    v18 += 14;
LABEL_44:
    v24 = a7 + 104 * v18;
    if (a3 >= 0xF)
    {
      v25 = 15;
    }

    else
    {
      v25 = a3;
    }

    v26 = *(v24 + 4 * v25 + 1580);
    v27 = (__clz(a3 - 14) << 10) ^ 0x7E00;
    if (a3 <= 0xE)
    {
      v27 = 0;
    }

    return result + v27 + v26;
  }

  return result;
}

uint64_t sub_277B316E4()
{
  v0 = MEMORY[0x28223BE20]();
  v88 = *MEMORY[0x277D85DE8];
  v7 = v0 + 136 * v1;
  v8 = *(*(v7 + 32) + 2 * v2);
  v9 = v1 != 0;
  v10 = v0 + 7552 * ((byte_277C3BE70[v3] + byte_277C3BE83[v3] + 1) >> 1) + 3776 * (v1 != 0) + 47576;
  if (!*(*(v7 + 32) + 2 * v2))
  {
    return *(v10 + 8 * *v5 + 4);
  }

  v11 = v3;
  v12 = v1;
  v13 = v0;
  v14 = byte_277C3BE00[v4];
  v15 = (*(v7 + 16) + 64 * v2);
  v82 = v5;
  v85 = v4;
  v83 = v6;
  if (v3 <= 16)
  {
    v16 = 3;
    if ((v3 - 11) < 2 || v3 == 4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v3 == 17)
  {
    LOBYTE(v84) = 5;
    v19 = 16;
    v20 = 9;
  }

  else
  {
    if (v3 != 18)
    {
LABEL_11:
      v16 = v3;
LABEL_12:
      v84 = dword_277C3BE98[v16];
      if (v3 > 16 || (v18 = 3, (v3 - 11) >= 2) && v3 != 4)
      {
        v18 = v3;
      }

      v19 = dword_277C3BEE4[v18];
      if (v3 > 16 || (v20 = 3, (v3 - 11) >= 2) && v3 != 4)
      {
        v20 = v3;
      }

      goto LABEL_21;
    }

    LOBYTE(v84) = 4;
    v19 = 32;
    v20 = 10;
  }

LABEL_21:
  v81 = v4;
  v21 = *(&off_27A722620 + 32 * v3 + 2 * v4);
  v22 = v0 + 176 * byte_277C3BE10[v3] + 88 * v9;
  v23 = *(v10 + 8 * *v5);
  sub_2779A3284(v15, v19, dword_277C3BF30[v20], v87);
  v24 = sub_277B31380(v13, v13 + 416, v12, v11, v85, v83);
  v25 = v24 + sub_277B30E7C(v8, v22 + 85336, v10, v14) + v23;
  sub_2779A33AC(v87, v21, v8, v11, v14, &v86, v26, v27);
  v28 = v10;
  v29 = v10 + 1592;
  v30 = *(v21 + 2 * (v8 - 1));
  v31 = v15->u32[v30];
  if ((v31 & 0x80000000) == 0)
  {
    v32 = v15->u32[v30];
  }

  else
  {
    v32 = -v31;
  }

  if (v32 >= 3)
  {
    v33 = 3;
  }

  else
  {
    v33 = v32;
  }

  v34 = v25 + *(v10 + 12 * v86.i8[v30] + 4 * v33 + 100);
  if (v31)
  {
    v35 = v84;
    if (v32 >= 3)
    {
      if (*(v21 + 2 * (v8 - 1)))
      {
        v36 = v30 >> v84;
        v37 = v30 >> v84 << v84;
        if ((v85 > 9 || v30 - v37 > 1 || v36 >= 2) && (((0xA800uLL >> v81) & 1) == 0 || v36))
        {
          v39 = ((0x5400uLL >> v81) & (v30 == v37)) == 0;
          v38 = 14;
          if (!v39)
          {
            v38 = 7;
          }
        }

        else
        {
          v38 = 7;
        }
      }

      else
      {
        v38 = 0;
      }

      v40 = v29 + 104 * v38;
      if (v32 >= 0xF)
      {
        v41 = 15;
      }

      else
      {
        v41 = v32;
      }

      v42 = *(v40 + 4 * v41 - 12);
      v43 = v32 > 0xE;
      v44 = (__clz(v32 - 14) << 10) ^ 0x7E00;
      if (!v43)
      {
        v44 = 0;
      }

      v34 += v44 + v42;
    }

    if (v8 == 1)
    {
      return (*(v10 + 8 * v82[1] + 4 * (v31 >> 31) + 1568) + v34);
    }

    v34 += 512;
  }

  else
  {
    v35 = v84;
  }

  v45 = v10 + 152;
  v46 = v8 - 2;
  if (v8 < 3)
  {
    goto LABEL_86;
  }

  v47 = (1 << v35) + 4;
  v48 = v46 + 1;
  v49 = (v21 + 2 * v46);
  do
  {
    v51 = *v49--;
    v50 = v51;
    v52 = v86.i8[v51];
    v53 = v15->i32[v51];
    if (v53 >= 0)
    {
      v54 = v53;
    }

    else
    {
      v54 = -v53;
    }

    if (v54 >= 3)
    {
      v55 = 3;
    }

    else
    {
      v55 = v54;
    }

    v34 += *(v45 + 32 * v52 + 4 * v55);
    if (!v53)
    {
      goto LABEL_84;
    }

    v34 += 512;
    if (v54 < 3)
    {
      goto LABEL_84;
    }

    v56 = v50 >> v35;
    v57 = v50 >> v35 << v35;
    v58 = v50 - v57 + (v50 >> v35) * v47;
    v59 = v87 + v58;
    v60 = v87 + v47 + v58;
    v61 = *v60 + v59[1];
    switch(v14)
    {
      case 2:
        v61 = (v61 + v59[2] + 1) >> 1;
        if (v61 >= 6)
        {
          v61 = 6;
        }

        if (!v50)
        {
          goto LABEL_78;
        }

        if (v50 == v57)
        {
          goto LABEL_77;
        }

        break;
      case 1:
        v61 = (v61 + *(v87 + v58 + (2 * v47)) + 1) >> 1;
        if (v61 >= 6)
        {
          v61 = 6;
        }

        if (!v50)
        {
          goto LABEL_78;
        }

        if (!v56)
        {
          goto LABEL_77;
        }

        break;
      case 0:
        v61 = (v61 + v60[1] + 1) >> 1;
        if (v61 >= 6)
        {
          v61 = 6;
        }

        if (!v50)
        {
          goto LABEL_78;
        }

        if (v56 <= 1 && v50 - v57 <= 1)
        {
LABEL_77:
          v61 += 7;
          goto LABEL_78;
        }

        break;
    }

    v61 += 14;
LABEL_78:
    v62 = v29 + 104 * v61;
    if (v54 >= 0xF)
    {
      v63 = 15;
    }

    else
    {
      v63 = v54;
    }

    v64 = *(v62 + 4 * v63 - 12);
    v43 = v54 > 0xE;
    v65 = (__clz(v54 - 14) << 10) ^ 0x7E00;
    if (!v43)
    {
      v65 = 0;
    }

    v34 += v65 + v64;
LABEL_84:
    --v48;
  }

  while (v48 > 1);
  LODWORD(v46) = 0;
LABEL_86:
  v66 = *(v21 + 2 * v46);
  v67 = v15->u32[v66];
  if ((v67 & 0x80000000) == 0)
  {
    v68 = v15->u32[v66];
  }

  else
  {
    v68 = -v67;
  }

  if (v68 >= 3)
  {
    v69 = 3;
  }

  else
  {
    v69 = v68;
  }

  result = (*(v45 + 32 * v86.i8[v66] + 4 * v69) + v34);
  if (v67)
  {
    result = (*(v28 + 8 * v82[1] + ((v67 >> 29) & 4) + 1568) + result);
    if (v68 >= 3)
    {
      v70 = v66 >> v35;
      v71 = v66 >> v35 << v35;
      v72 = (1 << v35) + 4;
      v73 = v66 - v71 + (v66 >> v35) * v72;
      v74 = v87 + v73;
      v75 = v87 + v72 + v73;
      v76 = *v75 + v74[1];
      if (v14 == 2)
      {
        v76 = (v76 + v74[2] + 1) >> 1;
        if (v76 >= 6)
        {
          v76 = 6;
        }

        if (v66)
        {
          if (v66 != v71)
          {
            goto LABEL_108;
          }

          goto LABEL_113;
        }
      }

      else if (v14 == 1)
      {
        v76 = (v76 + *(v87 + v73 + (2 * v72)) + 1) >> 1;
        if (v76 >= 6)
        {
          v76 = 6;
        }

        if (v66)
        {
          if (v70)
          {
            goto LABEL_108;
          }

          goto LABEL_113;
        }
      }

      else
      {
        if (v14)
        {
          goto LABEL_108;
        }

        v76 = (v76 + v75[1] + 1) >> 1;
        if (v76 >= 6)
        {
          v76 = 6;
        }

        if (v66)
        {
          if (v70 > 1 || v66 - v71 > 1)
          {
LABEL_108:
            v76 += 14;
            goto LABEL_114;
          }

LABEL_113:
          v76 += 7;
        }
      }

LABEL_114:
      v77 = v29 + 104 * v76;
      if (v68 >= 0xF)
      {
        v78 = 15;
      }

      else
      {
        v78 = v68;
      }

      v79 = *(v77 + 4 * v78 - 12);
      v80 = (__clz(v68 - 14) << 10) ^ 0x7E00;
      if (v68 <= 0xE)
      {
        v80 = 0;
      }

      return result + v80 + v79;
    }
  }

  return result;
}

uint64_t sub_277B31E00(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5, int *a6, int a7)
{
  v7 = *(*(a1 + 136 * a2 + 32) + 2 * a3);
  v8 = a1 + 7552 * ((byte_277C3BE70[a4] + byte_277C3BE83[a4] + 1) >> 1) + 3776 * (a2 != 0) + 47576;
  if (!*(*(a1 + 136 * a2 + 32) + 2 * a3))
  {
    return *(v8 + 8 * *a6 + 4);
  }

  v13 = a4;
  v14 = byte_277C3BE00[a5];
  v15 = a1 + 176 * byte_277C3BE10[a4] + 88 * (a2 != 0);
  v25 = *(v8 + 8 * *a6);
  v16 = sub_277B31380(a1, a1 + 416, a2, a4, a5, a7);
  v17 = sub_277B30E7C(v7, v15 + 85336, v8, v14);
  v18 = *(&off_27A722620 + 32 * v13 + 2 * a5);
  v19 = *(a1 + 136 * a2 + 16) + 64 * a3;
  v20 = *(v19 + 4 * *(v18 + 2 * (v7 - 1)));
  if (v20 < 0)
  {
    v20 = -v20;
  }

  v21 = (v20 << 11) - 2048;
  if (v7 != 1)
  {
    v22 = 2 * (v7 - 2);
    do
    {
      v23 = *(v19 + 4 * *(v18 + v22));
      if (v23 < 0)
      {
        v23 = -v23;
      }

      if (v23 >= 0xE)
      {
        v23 = 14;
      }

      v21 += dword_277C3BE34[v23];
      v22 -= 2;
    }

    while (v22 != -2);
  }

  return (v16 + v17 + v25 + v21 + 1251 * (v7 - 1));
}

float sub_277B31FC8(uint64_t a1, int a2, unsigned int a3, int a4, unsigned int *a5)
{
  v5 = a1 + a4 * a2;
  v6 = vaddl_u8(*(v5 + a3 + a2), *(v5 + a3));
  v7 = (a1 + 2 * a2 + a4 * a2 + a3);
  v8 = 6;
  do
  {
    v6 = vaddw_u8(v6, *v7);
    v7 = (v7 + a2);
    --v8;
  }

  while (v8);
  *a5 = (vaddlvq_u16(v6) + 32) >> 6;
  v9 = a3 + 8;
  v10 = vaddl_u8(*(v5 + v9 + a2), *(v5 + v9));
  v11 = (a1 + a4 * a2 + 2 * a2 + v9);
  v12 = 6;
  do
  {
    v10 = vaddw_u8(v10, *v11);
    v11 = (v11 + a2);
    --v12;
  }

  while (v12);
  a5[1] = (vaddlvq_u16(v10) + 32) >> 6;
  v13 = (a4 + 8) * a2;
  v14 = a1 + v13;
  v15 = vaddl_u8(*(a1 + v13 + a3 + a2), *(a1 + v13 + a3));
  v16 = v13 + 2 * a2;
  v17 = (a1 + a3 + v16);
  v18 = 6;
  do
  {
    v15 = vaddw_u8(v15, *v17);
    v17 = (v17 + a2);
    --v18;
  }

  while (v18);
  a5[2] = (vaddlvq_u16(v15) + 32) >> 6;
  v19 = vaddl_u8(*(v14 + v9 + a2), *(v14 + v9));
  v20 = (a1 + v9 + v16);
  v21 = 6;
  do
  {
    v19 = vaddw_u8(v19, *v20);
    v20 = (v20 + a2);
    --v21;
  }

  while (v21);
  result = COERCE_FLOAT(vaddlvq_u16(v19));
  a5[3] = (LODWORD(result) + 32) >> 6;
  return result;
}

uint64_t sub_277B32110(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v7 = 2 * a3;
  v8 = vdupq_n_s16(-a6);
  v9 = 3 * a3;
  v10 = 4 * a3;
  v11 = a5 - 4;
  v12 = a4;
  v13 = a3;
  v14 = v7;
  v15 = v9;
  do
  {
    v16 = *(a2 + v6);
    v17 = *(a2 + v6 + a3);
    v18 = *(a2 + v6 + v7);
    v19 = *(a2 + v6 + v9);
    v20 = vaddl_u8(*v17.i8, *v16.i8);
    v21 = vaddl_high_u8(v17, v16);
    v22 = vaddl_u8(*v19.i8, *v18.i8);
    v23 = vaddl_high_u8(v19, v18);
    v24 = a2 + v10;
    for (i = v11; i; i -= 4)
    {
      v26 = *(v24 + v6);
      v27 = *(v24 + v13);
      v28 = *(v24 + v14);
      v29 = *(v24 + v15);
      v20 = vaddw_u8(vaddw_u8(v20, *v26.i8), *v27.i8);
      v21 = vaddw_high_u8(vaddw_high_u8(v21, v26), v27);
      v22 = vaddw_u8(vaddw_u8(v22, *v28.i8), *v29.i8);
      v23 = vaddw_high_u8(vaddw_high_u8(v23, v28), v29);
      v24 += v10;
    }

    v30 = (result + 2 * v6);
    v6 += 16;
    *v30 = vshlq_s16(vaddq_s16(v22, v20), v8);
    v30[1] = vshlq_s16(vaddq_s16(v23, v21), v8);
    v15 += 16;
    v14 += 16;
    v13 += 16;
  }

  while (v6 < v12);
  return result;
}

uint64_t sub_277B321E8(uint64_t result, uint8x16_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v7 = 4 * a3;
  v8 = vdup_n_s16(-a6);
  v9 = &a2->i8[3 * a3];
  v10 = &a2->i8[2 * a3];
  v11 = &a2->i8[a3];
  do
  {
    v12 = vpaddlq_u8(*a2);
    v13 = vpaddlq_u8(*(a2 + a3));
    v14 = vpaddlq_u8(*(a2 + 2 * a3));
    v15 = vpaddlq_u8(*(a2 + 3 * a3));
    if (a4 >= 17)
    {
      for (i = 16; i < a4; i += 16)
      {
        v12 = vpadalq_u8(v12, a2[i / 0x10]);
        v13 = vpadalq_u8(v13, *&v11[i]);
        v14 = vpadalq_u8(v14, *&v10[i]);
        v15 = vpadalq_u8(v15, *&v9[i]);
      }
    }

    *(result + 2 * v6) = vshl_s16(vmovn_s32(vpaddlq_u16(vpaddq_s16(vpaddq_s16(v12, v13), vpaddq_s16(v14, v15)))), v8);
    a2 = (a2 + v7);
    v6 += 4;
    v9 += v7;
    v10 += v7;
    v11 += v7;
  }

  while (v6 < a5);
  return result;
}

uint64_t sub_277B322B0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7)
{
  v7 = 0;
  v18[5] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 40);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 32);
  return sub_2779958B4(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B323A8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7)
{
  v7 = 0;
  v18[9] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 72);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 64);
  return sub_27799593C(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B324A0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v26[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 80);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v26[0];
  do
  {
    v15 = v26[v11 + 1];
    *&v25[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 64);
  v16 = 0;
  v17 = (2 * a5);
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vsubq_s16(*&v25[v16], *v17);
    v20 = vpadalq_s16(v20, v21);
    v18 = vmlal_s16(v18, *v21.i8, *v21.i8);
    v19 = vmlal_high_s16(v19, v21, v21);
    v16 += 16;
    v17 = (v17 + 2 * a6);
  }

  while (v16 != 64);
  v22 = vaddlvq_u32(vaddq_s32(v19, v18));
  *a7 = v22;
  v23 = vaddvq_s32(v20);
  return v22 - ((v23 * v23) >> 5);
}

uint64_t sub_277B325E4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v26[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 144);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v26[0];
  do
  {
    v15 = v26[v11 + 1];
    *&v25[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 128);
  v16 = 0;
  v17 = (2 * a5);
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vsubq_s16(*&v25[v16], *v17);
    v20 = vpadalq_s16(v20, v21);
    v18 = vmlal_s16(v18, *v21.i8, *v21.i8);
    v19 = vmlal_high_s16(v19, v21, v21);
    v16 += 16;
    v17 = (v17 + 2 * a6);
  }

  while (v16 != 128);
  v22 = vaddlvq_u32(vaddq_s32(v19, v18));
  *a7 = v22;
  v23 = vaddvq_s32(v20);
  return v22 - ((v23 * v23) >> 6);
}

uint64_t sub_277B32730(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v26[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 272);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v26[0];
  do
  {
    v15 = v26[v11 + 1];
    *&v25[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 256);
  v16 = 0;
  v17 = (2 * a5);
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vsubq_s16(*&v25[v16], *v17);
    v20 = vpadalq_s16(v20, v21);
    v18 = vmlal_s16(v18, *v21.i8, *v21.i8);
    v19 = vmlal_high_s16(v19, v21, v21);
    v16 += 16;
    v17 = (v17 + 2 * a6);
  }

  while (v16 != 256);
  v22 = vaddlvq_u32(vaddq_s32(v19, v18));
  *a7 = v22;
  v23 = vaddvq_s32(v20);
  return v22 - ((v23 * v23) >> 7);
}

uint64_t sub_277B3287C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v138[31] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v102 = 0;
      v103 = (v7 + 18);
      do
      {
        v104 = &v137[v102];
        *v104 = vrhaddq_u16(*(v103 - 18), v103[-1]);
        v104[1] = vrhaddq_u16(*(v103 - 2), *v103);
        v102 += 2;
        v103 = (v103 + 2 * a2);
      }

      while ((v102 * 16) != 288);
      v105 = v137[0];
      v106 = v138;
      v107 = 32;
      do
      {
        v108 = &v136[v107];
        v110 = v106[-2];
        v109 = v106[-1];
        v111 = *v106;
        v106 += 2;
        v108[-2] = vrhaddq_u16(v105, v109);
        v108[-1] = vrhaddq_u16(v110, v111);
        v107 += 32;
        v105 = v109;
      }

      while (v107 != 288);
      v112 = 2 * a5;
      v113 = v136;
      v9 = 0uLL;
      v114 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v115 = 0;
        v116 = 1;
        do
        {
          v117 = v116;
          v118 = vsubq_s16(*&v113[2 * v115], *(v112 + 2 * v115));
          v12 = vpadalq_s16(v12, v118);
          v9 = vmlal_s16(v9, *v118.i8, *v118.i8);
          v11 = vmlal_high_s16(v11, v118, v118);
          v115 = 8;
          v116 = 0;
        }

        while ((v117 & 1) != 0);
        v113 += 32;
        v112 += 2 * a6;
        --v114;
      }

      while (v114);
    }

    else
    {
      v17 = 0;
      v18 = (v7 + 18);
      v19 = 2 * a2;
      if (a4)
      {
        do
        {
          v28 = &v137[v17];
          *v28 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v28[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 288);
        v29 = vdupq_n_s16(8 - a4);
        v30 = vdupq_n_s16(a4);
        v31 = v137[0];
        v32 = v138;
        v33 = 32;
        do
        {
          v35 = v32[-2];
          v34 = v32[-1];
          v36 = *v32;
          v32 += 2;
          v37 = &v136[v33];
          v37[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v31, v29), v34, v30), 3uLL);
          v37[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v35, v29), v36, v30), 3uLL);
          v33 += 32;
          v31 = v34;
        }

        while (v33 != 288);
        v38 = 2 * a5;
        v39 = v136;
        v9 = 0uLL;
        v40 = 8;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v41 = 0;
          v42 = 1;
          do
          {
            v43 = v42;
            v44 = vsubq_s16(*&v39[2 * v41], *(v38 + 2 * v41));
            v12 = vpadalq_s16(v12, v44);
            v9 = vmlal_s16(v9, *v44.i8, *v44.i8);
            v11 = vmlal_high_s16(v11, v44, v44);
            v41 = 8;
            v42 = 0;
          }

          while ((v43 & 1) != 0);
          v39 += 32;
          v38 += 2 * a6;
          --v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v20 = &v137[v17];
          *v20 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v20[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 256);
        v21 = 2 * a5;
        v22 = v137;
        v9 = 0uLL;
        v23 = 8;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = vsubq_s16(v22[v24 / 8], *(v21 + 2 * v24));
            v12 = vpadalq_s16(v12, v27);
            v9 = vmlal_s16(v9, *v27.i8, *v27.i8);
            v11 = vmlal_high_s16(v11, v27, v27);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v22 += 2;
          v21 += 2 * a6;
          --v23;
        }

        while (v23);
      }
    }
  }

  else if (a3)
  {
    v45 = 0;
    v46 = vdupq_n_s16(8 - a3);
    v47 = vdupq_n_s16(a3);
    v48 = (v7 + 18);
    v49 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v58 = &v137[v45];
        *v58 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v58[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 288);
      v59 = v137[0];
      v60 = v138;
      v61 = 32;
      do
      {
        v62 = &v136[v61];
        v64 = v60[-2];
        v63 = v60[-1];
        v65 = *v60;
        v60 += 2;
        v62[-2] = vrhaddq_u16(v59, v63);
        v62[-1] = vrhaddq_u16(v64, v65);
        v61 += 32;
        v59 = v63;
      }

      while (v61 != 288);
      v66 = 2 * a5;
      v67 = v136;
      v9 = 0uLL;
      v68 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v12 = vpadalq_s16(v12, v72);
          v9 = vmlal_s16(v9, *v72.i8, *v72.i8);
          v11 = vmlal_high_s16(v11, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * a6;
        --v68;
      }

      while (v68);
    }

    else if (a4)
    {
      do
      {
        v73 = &v137[v45];
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 288);
      v74 = vdupq_n_s16(8 - a4);
      v75 = vdupq_n_s16(a4);
      v76 = v137[0];
      v77 = v138;
      v78 = 32;
      do
      {
        v80 = v77[-2];
        v79 = v77[-1];
        v81 = *v77;
        v77 += 2;
        v82 = &v136[v78];
        v82[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v76, v74), v79, v75), 3uLL);
        v82[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v80, v74), v81, v75), 3uLL);
        v78 += 32;
        v76 = v79;
      }

      while (v78 != 288);
      v83 = 2 * a5;
      v84 = v136;
      v9 = 0uLL;
      v85 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v86 = 0;
        v87 = 1;
        do
        {
          v88 = v87;
          v89 = vsubq_s16(*&v84[2 * v86], *(v83 + 2 * v86));
          v12 = vpadalq_s16(v12, v89);
          v9 = vmlal_s16(v9, *v89.i8, *v89.i8);
          v11 = vmlal_high_s16(v11, v89, v89);
          v86 = 8;
          v87 = 0;
        }

        while ((v88 & 1) != 0);
        v84 += 32;
        v83 += 2 * a6;
        --v85;
      }

      while (v85);
    }

    else
    {
      do
      {
        v50 = &v137[v45];
        *v50 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v50[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 256);
      v51 = 2 * a5;
      v52 = v137;
      v9 = 0uLL;
      v53 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v54 = 0;
        v55 = 1;
        do
        {
          v56 = v55;
          v57 = vsubq_s16(v52[v54 / 8], *(v51 + 2 * v54));
          v12 = vpadalq_s16(v12, v57);
          v9 = vmlal_s16(v9, *v57.i8, *v57.i8);
          v11 = vmlal_high_s16(v11, v57, v57);
          v54 = 8;
          v55 = 0;
        }

        while ((v56 & 1) != 0);
        v52 += 2;
        v51 += 2 * a6;
        --v53;
      }

      while (v53);
    }
  }

  else if (a4 == 4)
  {
    v90 = 0;
    v91 = *v7;
    v92 = 2 * a2;
    do
    {
      v93 = &v137[v90];
      v94 = *(v7 + 2 * a2);
      *v93 = vrhaddq_u16(v91, v94);
      v93[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v92 + 16));
      v90 += 2;
      v7 += v92;
      v91 = v94;
    }

    while ((v90 * 16) != 256);
    v95 = 2 * a5;
    v96 = v137;
    v9 = 0uLL;
    v97 = 8;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v98 = 0;
      v99 = 1;
      do
      {
        v100 = v99;
        v101 = vsubq_s16(v96[v98 / 8], *(v95 + 2 * v98));
        v12 = vpadalq_s16(v12, v101);
        v9 = vmlal_s16(v9, *v101.i8, *v101.i8);
        v11 = vmlal_high_s16(v11, v101, v101);
        v98 = 8;
        v99 = 0;
      }

      while ((v100 & 1) != 0);
      v96 += 2;
      v95 += 2 * a6;
      --v97;
    }

    while (v97);
  }

  else if (a4)
  {
    v119 = 0;
    v120 = vdupq_n_s16(8 - a4);
    v121 = vdupq_n_s16(a4);
    v122 = *v7;
    v123 = 2 * a2;
    do
    {
      v124 = &v137[v119];
      v125 = *(v7 + 2 * a2);
      *v124 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122, v120), v125, v121), 3uLL);
      v124[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v120), *(v7 + v123 + 16), v121), 3uLL);
      v119 += 2;
      v7 += v123;
      v122 = v125;
    }

    while ((v119 * 16) != 256);
    v126 = 2 * a5;
    v127 = v137;
    v9 = 0uLL;
    v128 = 8;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v129 = 0;
      v130 = 1;
      do
      {
        v131 = v130;
        v132 = vsubq_s16(v127[v129 / 8], *(v126 + 2 * v129));
        v12 = vpadalq_s16(v12, v132);
        v9 = vmlal_s16(v9, *v132.i8, *v132.i8);
        v11 = vmlal_high_s16(v11, v132, v132);
        v129 = 8;
        v130 = 0;
      }

      while ((v131 & 1) != 0);
      v127 += 2;
      v126 += 2 * a6;
      --v128;
    }

    while (v128);
  }

  else
  {
    v8 = 2 * a5;
    v9 = 0uLL;
    v10 = 8;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = vsubq_s16(*(v7 + 2 * v13), *(v8 + 2 * v13));
        v12 = vpadalq_s16(v12, v16);
        v9 = vmlal_s16(v9, *v16.i8, *v16.i8);
        v11 = vmlal_high_s16(v11, v16, v16);
        v13 = 8;
        v14 = 0;
      }

      while ((v15 & 1) != 0);
      v7 += 2 * a2;
      v8 += 2 * a6;
      --v10;
    }

    while (v10);
  }

  v133 = vaddvq_s32(v12);
  v134 = vaddlvq_u32(vaddq_s32(v11, v9));
  *a7 = v134;
  return v134 - ((v133 * v133) >> 7);
}

uint64_t sub_277B33028(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v138[63] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v102 = 0;
      v103 = (v7 + 18);
      do
      {
        v104 = &v137[v102];
        *v104 = vrhaddq_u16(*(v103 - 18), v103[-1]);
        v104[1] = vrhaddq_u16(*(v103 - 2), *v103);
        v102 += 2;
        v103 = (v103 + 2 * a2);
      }

      while ((v102 * 16) != 544);
      v105 = v137[0];
      v106 = v138;
      v107 = 32;
      do
      {
        v108 = &v136[v107];
        v110 = v106[-2];
        v109 = v106[-1];
        v111 = *v106;
        v106 += 2;
        v108[-2] = vrhaddq_u16(v105, v109);
        v108[-1] = vrhaddq_u16(v110, v111);
        v107 += 32;
        v105 = v109;
      }

      while (v107 != 544);
      v112 = 2 * a5;
      v113 = v136;
      v9 = 0uLL;
      v114 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v115 = 0;
        v116 = 1;
        do
        {
          v117 = v116;
          v118 = vsubq_s16(*&v113[2 * v115], *(v112 + 2 * v115));
          v12 = vpadalq_s16(v12, v118);
          v9 = vmlal_s16(v9, *v118.i8, *v118.i8);
          v11 = vmlal_high_s16(v11, v118, v118);
          v115 = 8;
          v116 = 0;
        }

        while ((v117 & 1) != 0);
        v113 += 32;
        v112 += 2 * a6;
        --v114;
      }

      while (v114);
    }

    else
    {
      v17 = 0;
      v18 = (v7 + 18);
      v19 = 2 * a2;
      if (a4)
      {
        do
        {
          v28 = &v137[v17];
          *v28 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v28[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 544);
        v29 = vdupq_n_s16(8 - a4);
        v30 = vdupq_n_s16(a4);
        v31 = v137[0];
        v32 = v138;
        v33 = 32;
        do
        {
          v35 = v32[-2];
          v34 = v32[-1];
          v36 = *v32;
          v32 += 2;
          v37 = &v136[v33];
          v37[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v31, v29), v34, v30), 3uLL);
          v37[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v35, v29), v36, v30), 3uLL);
          v33 += 32;
          v31 = v34;
        }

        while (v33 != 544);
        v38 = 2 * a5;
        v39 = v136;
        v9 = 0uLL;
        v40 = 16;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v41 = 0;
          v42 = 1;
          do
          {
            v43 = v42;
            v44 = vsubq_s16(*&v39[2 * v41], *(v38 + 2 * v41));
            v12 = vpadalq_s16(v12, v44);
            v9 = vmlal_s16(v9, *v44.i8, *v44.i8);
            v11 = vmlal_high_s16(v11, v44, v44);
            v41 = 8;
            v42 = 0;
          }

          while ((v43 & 1) != 0);
          v39 += 32;
          v38 += 2 * a6;
          --v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v20 = &v137[v17];
          *v20 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v20[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 512);
        v21 = 2 * a5;
        v22 = v137;
        v9 = 0uLL;
        v23 = 16;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = vsubq_s16(v22[v24 / 8], *(v21 + 2 * v24));
            v12 = vpadalq_s16(v12, v27);
            v9 = vmlal_s16(v9, *v27.i8, *v27.i8);
            v11 = vmlal_high_s16(v11, v27, v27);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v22 += 2;
          v21 += 2 * a6;
          --v23;
        }

        while (v23);
      }
    }
  }

  else if (a3)
  {
    v45 = 0;
    v46 = vdupq_n_s16(8 - a3);
    v47 = vdupq_n_s16(a3);
    v48 = (v7 + 18);
    v49 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v58 = &v137[v45];
        *v58 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v58[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 544);
      v59 = v137[0];
      v60 = v138;
      v61 = 32;
      do
      {
        v62 = &v136[v61];
        v64 = v60[-2];
        v63 = v60[-1];
        v65 = *v60;
        v60 += 2;
        v62[-2] = vrhaddq_u16(v59, v63);
        v62[-1] = vrhaddq_u16(v64, v65);
        v61 += 32;
        v59 = v63;
      }

      while (v61 != 544);
      v66 = 2 * a5;
      v67 = v136;
      v9 = 0uLL;
      v68 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v12 = vpadalq_s16(v12, v72);
          v9 = vmlal_s16(v9, *v72.i8, *v72.i8);
          v11 = vmlal_high_s16(v11, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * a6;
        --v68;
      }

      while (v68);
    }

    else if (a4)
    {
      do
      {
        v73 = &v137[v45];
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 544);
      v74 = vdupq_n_s16(8 - a4);
      v75 = vdupq_n_s16(a4);
      v76 = v137[0];
      v77 = v138;
      v78 = 32;
      do
      {
        v80 = v77[-2];
        v79 = v77[-1];
        v81 = *v77;
        v77 += 2;
        v82 = &v136[v78];
        v82[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v76, v74), v79, v75), 3uLL);
        v82[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v80, v74), v81, v75), 3uLL);
        v78 += 32;
        v76 = v79;
      }

      while (v78 != 544);
      v83 = 2 * a5;
      v84 = v136;
      v9 = 0uLL;
      v85 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v86 = 0;
        v87 = 1;
        do
        {
          v88 = v87;
          v89 = vsubq_s16(*&v84[2 * v86], *(v83 + 2 * v86));
          v12 = vpadalq_s16(v12, v89);
          v9 = vmlal_s16(v9, *v89.i8, *v89.i8);
          v11 = vmlal_high_s16(v11, v89, v89);
          v86 = 8;
          v87 = 0;
        }

        while ((v88 & 1) != 0);
        v84 += 32;
        v83 += 2 * a6;
        --v85;
      }

      while (v85);
    }

    else
    {
      do
      {
        v50 = &v137[v45];
        *v50 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v50[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 512);
      v51 = 2 * a5;
      v52 = v137;
      v9 = 0uLL;
      v53 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v54 = 0;
        v55 = 1;
        do
        {
          v56 = v55;
          v57 = vsubq_s16(v52[v54 / 8], *(v51 + 2 * v54));
          v12 = vpadalq_s16(v12, v57);
          v9 = vmlal_s16(v9, *v57.i8, *v57.i8);
          v11 = vmlal_high_s16(v11, v57, v57);
          v54 = 8;
          v55 = 0;
        }

        while ((v56 & 1) != 0);
        v52 += 2;
        v51 += 2 * a6;
        --v53;
      }

      while (v53);
    }
  }

  else if (a4 == 4)
  {
    v90 = 0;
    v91 = *v7;
    v92 = 2 * a2;
    do
    {
      v93 = &v137[v90];
      v94 = *(v7 + 2 * a2);
      *v93 = vrhaddq_u16(v91, v94);
      v93[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v92 + 16));
      v90 += 2;
      v7 += v92;
      v91 = v94;
    }

    while ((v90 * 16) != 512);
    v95 = 2 * a5;
    v96 = v137;
    v9 = 0uLL;
    v97 = 16;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v98 = 0;
      v99 = 1;
      do
      {
        v100 = v99;
        v101 = vsubq_s16(v96[v98 / 8], *(v95 + 2 * v98));
        v12 = vpadalq_s16(v12, v101);
        v9 = vmlal_s16(v9, *v101.i8, *v101.i8);
        v11 = vmlal_high_s16(v11, v101, v101);
        v98 = 8;
        v99 = 0;
      }

      while ((v100 & 1) != 0);
      v96 += 2;
      v95 += 2 * a6;
      --v97;
    }

    while (v97);
  }

  else if (a4)
  {
    v119 = 0;
    v120 = vdupq_n_s16(8 - a4);
    v121 = vdupq_n_s16(a4);
    v122 = *v7;
    v123 = 2 * a2;
    do
    {
      v124 = &v137[v119];
      v125 = *(v7 + 2 * a2);
      *v124 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122, v120), v125, v121), 3uLL);
      v124[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v120), *(v7 + v123 + 16), v121), 3uLL);
      v119 += 2;
      v7 += v123;
      v122 = v125;
    }

    while ((v119 * 16) != 512);
    v126 = 2 * a5;
    v127 = v137;
    v9 = 0uLL;
    v128 = 16;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v129 = 0;
      v130 = 1;
      do
      {
        v131 = v130;
        v132 = vsubq_s16(v127[v129 / 8], *(v126 + 2 * v129));
        v12 = vpadalq_s16(v12, v132);
        v9 = vmlal_s16(v9, *v132.i8, *v132.i8);
        v11 = vmlal_high_s16(v11, v132, v132);
        v129 = 8;
        v130 = 0;
      }

      while ((v131 & 1) != 0);
      v127 += 2;
      v126 += 2 * a6;
      --v128;
    }

    while (v128);
  }

  else
  {
    v8 = 2 * a5;
    v9 = 0uLL;
    v10 = 16;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = vsubq_s16(*(v7 + 2 * v13), *(v8 + 2 * v13));
        v12 = vpadalq_s16(v12, v16);
        v9 = vmlal_s16(v9, *v16.i8, *v16.i8);
        v11 = vmlal_high_s16(v11, v16, v16);
        v13 = 8;
        v14 = 0;
      }

      while ((v15 & 1) != 0);
      v7 += 2 * a2;
      v8 += 2 * a6;
      --v10;
    }

    while (v10);
  }

  v133 = vaddvq_s32(v12);
  v134 = vaddlvq_u32(vaddq_s32(v11, v9));
  *a7 = v134;
  return v134 - ((v133 * v133) >> 8);
}

uint64_t sub_277B337D4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v138[127] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v102 = 0;
      v103 = (v7 + 18);
      do
      {
        v104 = &v137[v102];
        *v104 = vrhaddq_u16(*(v103 - 18), v103[-1]);
        v104[1] = vrhaddq_u16(*(v103 - 2), *v103);
        v102 += 2;
        v103 = (v103 + 2 * a2);
      }

      while ((v102 * 16) != 1056);
      v105 = v137[0];
      v106 = v138;
      v107 = 32;
      do
      {
        v108 = &v136[v107];
        v110 = v106[-2];
        v109 = v106[-1];
        v111 = *v106;
        v106 += 2;
        v108[-2] = vrhaddq_u16(v105, v109);
        v108[-1] = vrhaddq_u16(v110, v111);
        v107 += 32;
        v105 = v109;
      }

      while (v107 != 1056);
      v112 = 2 * a5;
      v113 = v136;
      v9 = 0uLL;
      v114 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v115 = 0;
        v116 = 1;
        do
        {
          v117 = v116;
          v118 = vsubq_s16(*&v113[2 * v115], *(v112 + 2 * v115));
          v12 = vpadalq_s16(v12, v118);
          v9 = vmlal_s16(v9, *v118.i8, *v118.i8);
          v11 = vmlal_high_s16(v11, v118, v118);
          v115 = 8;
          v116 = 0;
        }

        while ((v117 & 1) != 0);
        v113 += 32;
        v112 += 2 * a6;
        --v114;
      }

      while (v114);
    }

    else
    {
      v17 = 0;
      v18 = (v7 + 18);
      v19 = 2 * a2;
      if (a4)
      {
        do
        {
          v28 = &v137[v17];
          *v28 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v28[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 1056);
        v29 = vdupq_n_s16(8 - a4);
        v30 = vdupq_n_s16(a4);
        v31 = v137[0];
        v32 = v138;
        v33 = 32;
        do
        {
          v35 = v32[-2];
          v34 = v32[-1];
          v36 = *v32;
          v32 += 2;
          v37 = &v136[v33];
          v37[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v31, v29), v34, v30), 3uLL);
          v37[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v35, v29), v36, v30), 3uLL);
          v33 += 32;
          v31 = v34;
        }

        while (v33 != 1056);
        v38 = 2 * a5;
        v39 = v136;
        v9 = 0uLL;
        v40 = 32;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v41 = 0;
          v42 = 1;
          do
          {
            v43 = v42;
            v44 = vsubq_s16(*&v39[2 * v41], *(v38 + 2 * v41));
            v12 = vpadalq_s16(v12, v44);
            v9 = vmlal_s16(v9, *v44.i8, *v44.i8);
            v11 = vmlal_high_s16(v11, v44, v44);
            v41 = 8;
            v42 = 0;
          }

          while ((v43 & 1) != 0);
          v39 += 32;
          v38 += 2 * a6;
          --v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v20 = &v137[v17];
          *v20 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v20[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 1024);
        v21 = 2 * a5;
        v22 = v137;
        v9 = 0uLL;
        v23 = 32;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = vsubq_s16(v22[v24 / 8], *(v21 + 2 * v24));
            v12 = vpadalq_s16(v12, v27);
            v9 = vmlal_s16(v9, *v27.i8, *v27.i8);
            v11 = vmlal_high_s16(v11, v27, v27);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v22 += 2;
          v21 += 2 * a6;
          --v23;
        }

        while (v23);
      }
    }
  }

  else if (a3)
  {
    v45 = 0;
    v46 = vdupq_n_s16(8 - a3);
    v47 = vdupq_n_s16(a3);
    v48 = (v7 + 18);
    v49 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v58 = &v137[v45];
        *v58 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v58[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 1056);
      v59 = v137[0];
      v60 = v138;
      v61 = 32;
      do
      {
        v62 = &v136[v61];
        v64 = v60[-2];
        v63 = v60[-1];
        v65 = *v60;
        v60 += 2;
        v62[-2] = vrhaddq_u16(v59, v63);
        v62[-1] = vrhaddq_u16(v64, v65);
        v61 += 32;
        v59 = v63;
      }

      while (v61 != 1056);
      v66 = 2 * a5;
      v67 = v136;
      v9 = 0uLL;
      v68 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v12 = vpadalq_s16(v12, v72);
          v9 = vmlal_s16(v9, *v72.i8, *v72.i8);
          v11 = vmlal_high_s16(v11, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * a6;
        --v68;
      }

      while (v68);
    }

    else if (a4)
    {
      do
      {
        v73 = &v137[v45];
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 1056);
      v74 = vdupq_n_s16(8 - a4);
      v75 = vdupq_n_s16(a4);
      v76 = v137[0];
      v77 = v138;
      v78 = 32;
      do
      {
        v80 = v77[-2];
        v79 = v77[-1];
        v81 = *v77;
        v77 += 2;
        v82 = &v136[v78];
        v82[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v76, v74), v79, v75), 3uLL);
        v82[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v80, v74), v81, v75), 3uLL);
        v78 += 32;
        v76 = v79;
      }

      while (v78 != 1056);
      v83 = 2 * a5;
      v84 = v136;
      v9 = 0uLL;
      v85 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v86 = 0;
        v87 = 1;
        do
        {
          v88 = v87;
          v89 = vsubq_s16(*&v84[2 * v86], *(v83 + 2 * v86));
          v12 = vpadalq_s16(v12, v89);
          v9 = vmlal_s16(v9, *v89.i8, *v89.i8);
          v11 = vmlal_high_s16(v11, v89, v89);
          v86 = 8;
          v87 = 0;
        }

        while ((v88 & 1) != 0);
        v84 += 32;
        v83 += 2 * a6;
        --v85;
      }

      while (v85);
    }

    else
    {
      do
      {
        v50 = &v137[v45];
        *v50 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v50[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 1024);
      v51 = 2 * a5;
      v52 = v137;
      v9 = 0uLL;
      v53 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v54 = 0;
        v55 = 1;
        do
        {
          v56 = v55;
          v57 = vsubq_s16(v52[v54 / 8], *(v51 + 2 * v54));
          v12 = vpadalq_s16(v12, v57);
          v9 = vmlal_s16(v9, *v57.i8, *v57.i8);
          v11 = vmlal_high_s16(v11, v57, v57);
          v54 = 8;
          v55 = 0;
        }

        while ((v56 & 1) != 0);
        v52 += 2;
        v51 += 2 * a6;
        --v53;
      }

      while (v53);
    }
  }

  else if (a4 == 4)
  {
    v90 = 0;
    v91 = *v7;
    v92 = 2 * a2;
    do
    {
      v93 = &v137[v90];
      v94 = *(v7 + 2 * a2);
      *v93 = vrhaddq_u16(v91, v94);
      v93[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v92 + 16));
      v90 += 2;
      v7 += v92;
      v91 = v94;
    }

    while ((v90 * 16) != 1024);
    v95 = 2 * a5;
    v96 = v137;
    v9 = 0uLL;
    v97 = 32;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v98 = 0;
      v99 = 1;
      do
      {
        v100 = v99;
        v101 = vsubq_s16(v96[v98 / 8], *(v95 + 2 * v98));
        v12 = vpadalq_s16(v12, v101);
        v9 = vmlal_s16(v9, *v101.i8, *v101.i8);
        v11 = vmlal_high_s16(v11, v101, v101);
        v98 = 8;
        v99 = 0;
      }

      while ((v100 & 1) != 0);
      v96 += 2;
      v95 += 2 * a6;
      --v97;
    }

    while (v97);
  }

  else if (a4)
  {
    v119 = 0;
    v120 = vdupq_n_s16(8 - a4);
    v121 = vdupq_n_s16(a4);
    v122 = *v7;
    v123 = 2 * a2;
    do
    {
      v124 = &v137[v119];
      v125 = *(v7 + 2 * a2);
      *v124 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122, v120), v125, v121), 3uLL);
      v124[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v120), *(v7 + v123 + 16), v121), 3uLL);
      v119 += 2;
      v7 += v123;
      v122 = v125;
    }

    while ((v119 * 16) != 1024);
    v126 = 2 * a5;
    v127 = v137;
    v9 = 0uLL;
    v128 = 32;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v129 = 0;
      v130 = 1;
      do
      {
        v131 = v130;
        v132 = vsubq_s16(v127[v129 / 8], *(v126 + 2 * v129));
        v12 = vpadalq_s16(v12, v132);
        v9 = vmlal_s16(v9, *v132.i8, *v132.i8);
        v11 = vmlal_high_s16(v11, v132, v132);
        v129 = 8;
        v130 = 0;
      }

      while ((v131 & 1) != 0);
      v127 += 2;
      v126 += 2 * a6;
      --v128;
    }

    while (v128);
  }

  else
  {
    v8 = 2 * a5;
    v9 = 0uLL;
    v10 = 32;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = vsubq_s16(*(v7 + 2 * v13), *(v8 + 2 * v13));
        v12 = vpadalq_s16(v12, v16);
        v9 = vmlal_s16(v9, *v16.i8, *v16.i8);
        v11 = vmlal_high_s16(v11, v16, v16);
        v13 = 8;
        v14 = 0;
      }

      while ((v15 & 1) != 0);
      v7 += 2 * a2;
      v8 += 2 * a6;
      --v10;
    }

    while (v10);
  }

  v133 = vaddvq_s32(v12);
  v134 = vaddlvq_u32(vaddq_s32(v11, v9));
  *a7 = v134;
  return v134 - ((v133 * v133) >> 9);
}

uint64_t sub_277B33F80(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v131 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v16 = 2 * a2;
    v17 = v130;
    if (a4 == 4)
    {
      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v17[v53] = vrhaddq_u16(*(v7 + v53), *(v7 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v17 += 64;
        v7 += v16;
        --v52;
      }

      while (v52);
      v55 = v130;
      v56 = v129;
      v57 = 16;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58] = vrhaddq_u16(*&v55[v58], *&v55[v58 + 64]);
          v59 += 8;
          v58 += 16;
        }

        while (v59 < 0x18);
        v55 += 64;
        v56 += 64;
        --v57;
      }

      while (v57);
      v60 = 2 * a5;
      v61 = v129;
      v9 = 0uLL;
      v62 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          v65 = vsubq_s16(*&v61[v63], *(v60 + v63));
          v12 = vpadalq_s16(v12, v65);
          v9 = vmlal_s16(v9, *v65.i8, *v65.i8);
          v11 = vmlal_high_s16(v11, v65, v65);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v61 += 64;
        v60 += 2 * a6;
        --v62;
      }

      while (v62);
    }

    else if (a4)
    {
      v80 = 17;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v17[v81] = vrhaddq_u16(*(v7 + v81), *(v7 + v81 + 2));
          v82 += 8;
          v81 += 16;
        }

        while (v82 < 0x18);
        v17 += 64;
        v7 += v16;
        --v80;
      }

      while (v80);
      v83 = vdupq_n_s16(8 - a4);
      v84 = vdupq_n_s16(a4);
      v85 = v130;
      v86 = v129;
      v87 = 16;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          *&v86[v88] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v88], v83), *&v85[v88 + 64], v84), 3uLL);
          v89 += 8;
          v88 += 16;
        }

        while (v89 < 0x18);
        v85 += 64;
        v86 += 64;
        --v87;
      }

      while (v87);
      v90 = 2 * a5;
      v91 = v129;
      v9 = 0uLL;
      v92 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v93 = 0;
        v94 = -8;
        do
        {
          v95 = vsubq_s16(*&v91[v93], *(v90 + v93));
          v12 = vpadalq_s16(v12, v95);
          v9 = vmlal_s16(v9, *v95.i8, *v95.i8);
          v11 = vmlal_high_s16(v11, v95, v95);
          v94 += 8;
          v93 += 16;
        }

        while (v94 < 0x18);
        v91 += 64;
        v90 += 2 * a6;
        --v92;
      }

      while (v92);
    }

    else
    {
      v18 = 16;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19), *(v7 + v19 + 2));
          v20 += 8;
          v19 += 16;
        }

        while (v20 < 0x18);
        v17 += 64;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * a5;
      v22 = v130;
      v9 = 0uLL;
      v23 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 16;
        }

        while (v25 < 0x18);
        v22 += 64;
        v21 += 2 * a6;
        --v23;
      }

      while (v23);
    }
  }

  else if (a3)
  {
    v27 = vdupq_n_s16(8 - a3);
    v28 = vdupq_n_s16(a3);
    v29 = 2 * a2;
    v30 = v130;
    if (a4 == 4)
    {
      v96 = 17;
      do
      {
        v97 = 0;
        v98 = -8;
        do
        {
          *&v30[v97] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v97), v27), *(v7 + v97 + 2), v28), 3uLL);
          v98 += 8;
          v97 += 16;
        }

        while (v98 < 0x18);
        v30 += 64;
        v7 += v29;
        --v96;
      }

      while (v96);
      v99 = v130;
      v100 = v129;
      v101 = 16;
      do
      {
        v102 = 0;
        v103 = -8;
        do
        {
          *&v100[v102] = vrhaddq_u16(*&v99[v102], *&v99[v102 + 64]);
          v103 += 8;
          v102 += 16;
        }

        while (v103 < 0x18);
        v99 += 64;
        v100 += 64;
        --v101;
      }

      while (v101);
      v104 = 2 * a5;
      v105 = v129;
      v9 = 0uLL;
      v106 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          v109 = vsubq_s16(*&v105[v107], *(v104 + v107));
          v12 = vpadalq_s16(v12, v109);
          v9 = vmlal_s16(v9, *v109.i8, *v109.i8);
          v11 = vmlal_high_s16(v11, v109, v109);
          v108 += 8;
          v107 += 16;
        }

        while (v108 < 0x18);
        v105 += 64;
        v104 += 2 * a6;
        --v106;
      }

      while (v106);
    }

    else if (a4)
    {
      v110 = 17;
      do
      {
        v111 = 0;
        v112 = -8;
        do
        {
          *&v30[v111] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v111), v27), *(v7 + v111 + 2), v28), 3uLL);
          v112 += 8;
          v111 += 16;
        }

        while (v112 < 0x18);
        v30 += 64;
        v7 += v29;
        --v110;
      }

      while (v110);
      v113 = vdupq_n_s16(8 - a4);
      v114 = vdupq_n_s16(a4);
      v115 = v130;
      v116 = v129;
      v117 = 16;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          *&v116[v118] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v115[v118], v113), *&v115[v118 + 64], v114), 3uLL);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x18);
        v115 += 64;
        v116 += 64;
        --v117;
      }

      while (v117);
      v120 = 2 * a5;
      v121 = v129;
      v9 = 0uLL;
      v122 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          v125 = vsubq_s16(*&v121[v123], *(v120 + v123));
          v12 = vpadalq_s16(v12, v125);
          v9 = vmlal_s16(v9, *v125.i8, *v125.i8);
          v11 = vmlal_high_s16(v11, v125, v125);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x18);
        v121 += 64;
        v120 += 2 * a6;
        --v122;
      }

      while (v122);
    }

    else
    {
      v31 = 16;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v32), v27), *(v7 + v32 + 2), v28), 3uLL);
          v33 += 8;
          v32 += 16;
        }

        while (v33 < 0x18);
        v30 += 64;
        v7 += v29;
        --v31;
      }

      while (v31);
      v34 = 2 * a5;
      v35 = v130;
      v9 = 0uLL;
      v36 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v35[v37], *(v34 + v37));
          v12 = vpadalq_s16(v12, v39);
          v9 = vmlal_s16(v9, *v39.i8, *v39.i8);
          v11 = vmlal_high_s16(v11, v39, v39);
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x18);
        v35 += 64;
        v34 += 2 * a6;
        --v36;
      }

      while (v36);
    }
  }

  else if (a4 == 4)
  {
    v40 = 2 * a2;
    v41 = v7 + v40;
    v42 = v130;
    v43 = 16;
    do
    {
      v44 = 0;
      v45 = -8;
      do
      {
        *&v42[v44] = vrhaddq_u16(*(v7 + v44), *(v41 + v44));
        v45 += 8;
        v44 += 16;
      }

      while (v45 < 0x18);
      v42 += 64;
      v41 += v40;
      v7 += v40;
      --v43;
    }

    while (v43);
    v46 = 2 * a5;
    v47 = v130;
    v9 = 0uLL;
    v48 = 16;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        v51 = vsubq_s16(*&v47[v49], *(v46 + v49));
        v12 = vpadalq_s16(v12, v51);
        v9 = vmlal_s16(v9, *v51.i8, *v51.i8);
        v11 = vmlal_high_s16(v11, v51, v51);
        v50 += 8;
        v49 += 16;
      }

      while (v50 < 0x18);
      v47 += 64;
      v46 += 2 * a6;
      --v48;
    }

    while (v48);
  }

  else if (a4)
  {
    v66 = vdupq_n_s16(8 - a4);
    v67 = vdupq_n_s16(a4);
    v68 = 2 * a2;
    v69 = v7 + v68;
    v70 = v130;
    v71 = 16;
    do
    {
      v72 = 0;
      v73 = -8;
      do
      {
        *&v70[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v72), v66), *(v69 + v72), v67), 3uLL);
        v73 += 8;
        v72 += 16;
      }

      while (v73 < 0x18);
      v70 += 64;
      v69 += v68;
      v7 += v68;
      --v71;
    }

    while (v71);
    v74 = 2 * a5;
    v75 = v130;
    v9 = 0uLL;
    v76 = 16;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v77 = 0;
      v78 = -8;
      do
      {
        v79 = vsubq_s16(*&v75[v77], *(v74 + v77));
        v12 = vpadalq_s16(v12, v79);
        v9 = vmlal_s16(v9, *v79.i8, *v79.i8);
        v11 = vmlal_high_s16(v11, v79, v79);
        v78 += 8;
        v77 += 16;
      }

      while (v78 < 0x18);
      v75 += 64;
      v74 += 2 * a6;
      --v76;
    }

    while (v76);
  }

  else
  {
    v8 = 2 * a5;
    v9 = 0uLL;
    v10 = 16;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x18);
      v8 += 2 * a6;
      v7 += 2 * a2;
      --v10;
    }

    while (v10);
  }

  v126 = vaddvq_s32(v12);
  v127 = vaddlvq_u32(vaddq_s32(v11, v9));
  *a7 = v127;
  return v127 - ((v126 * v126) >> 9);
}

uint64_t sub_277B34740()
{
  v0 = MEMORY[0x28223BE20]();
  v131 = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v16 = 2 * v1;
    v17 = v130;
    if (v3 == 4)
    {
      v52 = 33;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v17[v53] = vrhaddq_u16(*(v7 + v53), *(v7 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v17 += 64;
        v7 += v16;
        --v52;
      }

      while (v52);
      v55 = v130;
      v56 = v129;
      v57 = 32;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58] = vrhaddq_u16(*&v55[v58], *&v55[v58 + 64]);
          v59 += 8;
          v58 += 16;
        }

        while (v59 < 0x18);
        v55 += 64;
        v56 += 64;
        --v57;
      }

      while (v57);
      v60 = 2 * v4;
      v61 = v129;
      v9 = 0uLL;
      v62 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          v65 = vsubq_s16(*&v61[v63], *(v60 + v63));
          v12 = vpadalq_s16(v12, v65);
          v9 = vmlal_s16(v9, *v65.i8, *v65.i8);
          v11 = vmlal_high_s16(v11, v65, v65);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v61 += 64;
        v60 += 2 * v5;
        --v62;
      }

      while (v62);
    }

    else if (v3)
    {
      v80 = 33;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v17[v81] = vrhaddq_u16(*(v7 + v81), *(v7 + v81 + 2));
          v82 += 8;
          v81 += 16;
        }

        while (v82 < 0x18);
        v17 += 64;
        v7 += v16;
        --v80;
      }

      while (v80);
      v83 = vdupq_n_s16(8 - v3);
      v84 = vdupq_n_s16(v3);
      v85 = v130;
      v86 = v129;
      v87 = 32;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          *&v86[v88] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v88], v83), *&v85[v88 + 64], v84), 3uLL);
          v89 += 8;
          v88 += 16;
        }

        while (v89 < 0x18);
        v85 += 64;
        v86 += 64;
        --v87;
      }

      while (v87);
      v90 = 2 * v4;
      v91 = v129;
      v9 = 0uLL;
      v92 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v93 = 0;
        v94 = -8;
        do
        {
          v95 = vsubq_s16(*&v91[v93], *(v90 + v93));
          v12 = vpadalq_s16(v12, v95);
          v9 = vmlal_s16(v9, *v95.i8, *v95.i8);
          v11 = vmlal_high_s16(v11, v95, v95);
          v94 += 8;
          v93 += 16;
        }

        while (v94 < 0x18);
        v91 += 64;
        v90 += 2 * v5;
        --v92;
      }

      while (v92);
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19), *(v7 + v19 + 2));
          v20 += 8;
          v19 += 16;
        }

        while (v20 < 0x18);
        v17 += 64;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * v4;
      v22 = v130;
      v9 = 0uLL;
      v23 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 16;
        }

        while (v25 < 0x18);
        v22 += 64;
        v21 += 2 * v5;
        --v23;
      }

      while (v23);
    }
  }

  else if (v2)
  {
    v27 = vdupq_n_s16(8 - v2);
    v28 = vdupq_n_s16(v2);
    v29 = 2 * v1;
    v30 = v130;
    if (v3 == 4)
    {
      v96 = 33;
      do
      {
        v97 = 0;
        v98 = -8;
        do
        {
          *&v30[v97] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v97), v27), *(v7 + v97 + 2), v28), 3uLL);
          v98 += 8;
          v97 += 16;
        }

        while (v98 < 0x18);
        v30 += 64;
        v7 += v29;
        --v96;
      }

      while (v96);
      v99 = v130;
      v100 = v129;
      v101 = 32;
      do
      {
        v102 = 0;
        v103 = -8;
        do
        {
          *&v100[v102] = vrhaddq_u16(*&v99[v102], *&v99[v102 + 64]);
          v103 += 8;
          v102 += 16;
        }

        while (v103 < 0x18);
        v99 += 64;
        v100 += 64;
        --v101;
      }

      while (v101);
      v104 = 2 * v4;
      v105 = v129;
      v9 = 0uLL;
      v106 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          v109 = vsubq_s16(*&v105[v107], *(v104 + v107));
          v12 = vpadalq_s16(v12, v109);
          v9 = vmlal_s16(v9, *v109.i8, *v109.i8);
          v11 = vmlal_high_s16(v11, v109, v109);
          v108 += 8;
          v107 += 16;
        }

        while (v108 < 0x18);
        v105 += 64;
        v104 += 2 * v5;
        --v106;
      }

      while (v106);
    }

    else if (v3)
    {
      v110 = 33;
      do
      {
        v111 = 0;
        v112 = -8;
        do
        {
          *&v30[v111] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v111), v27), *(v7 + v111 + 2), v28), 3uLL);
          v112 += 8;
          v111 += 16;
        }

        while (v112 < 0x18);
        v30 += 64;
        v7 += v29;
        --v110;
      }

      while (v110);
      v113 = vdupq_n_s16(8 - v3);
      v114 = vdupq_n_s16(v3);
      v115 = v130;
      v116 = v129;
      v117 = 32;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          *&v116[v118] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v115[v118], v113), *&v115[v118 + 64], v114), 3uLL);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x18);
        v115 += 64;
        v116 += 64;
        --v117;
      }

      while (v117);
      v120 = 2 * v4;
      v121 = v129;
      v9 = 0uLL;
      v122 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          v125 = vsubq_s16(*&v121[v123], *(v120 + v123));
          v12 = vpadalq_s16(v12, v125);
          v9 = vmlal_s16(v9, *v125.i8, *v125.i8);
          v11 = vmlal_high_s16(v11, v125, v125);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x18);
        v121 += 64;
        v120 += 2 * v5;
        --v122;
      }

      while (v122);
    }

    else
    {
      v31 = 32;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v32), v27), *(v7 + v32 + 2), v28), 3uLL);
          v33 += 8;
          v32 += 16;
        }

        while (v33 < 0x18);
        v30 += 64;
        v7 += v29;
        --v31;
      }

      while (v31);
      v34 = 2 * v4;
      v35 = v130;
      v9 = 0uLL;
      v36 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v35[v37], *(v34 + v37));
          v12 = vpadalq_s16(v12, v39);
          v9 = vmlal_s16(v9, *v39.i8, *v39.i8);
          v11 = vmlal_high_s16(v11, v39, v39);
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x18);
        v35 += 64;
        v34 += 2 * v5;
        --v36;
      }

      while (v36);
    }
  }

  else if (v3 == 4)
  {
    v40 = 2 * v1;
    v41 = v7 + v40;
    v42 = v130;
    v43 = 32;
    do
    {
      v44 = 0;
      v45 = -8;
      do
      {
        *&v42[v44] = vrhaddq_u16(*(v7 + v44), *(v41 + v44));
        v45 += 8;
        v44 += 16;
      }

      while (v45 < 0x18);
      v42 += 64;
      v41 += v40;
      v7 += v40;
      --v43;
    }

    while (v43);
    v46 = 2 * v4;
    v47 = v130;
    v9 = 0uLL;
    v48 = 32;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        v51 = vsubq_s16(*&v47[v49], *(v46 + v49));
        v12 = vpadalq_s16(v12, v51);
        v9 = vmlal_s16(v9, *v51.i8, *v51.i8);
        v11 = vmlal_high_s16(v11, v51, v51);
        v50 += 8;
        v49 += 16;
      }

      while (v50 < 0x18);
      v47 += 64;
      v46 += 2 * v5;
      --v48;
    }

    while (v48);
  }

  else if (v3)
  {
    v66 = vdupq_n_s16(8 - v3);
    v67 = vdupq_n_s16(v3);
    v68 = 2 * v1;
    v69 = v7 + v68;
    v70 = v130;
    v71 = 32;
    do
    {
      v72 = 0;
      v73 = -8;
      do
      {
        *&v70[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v72), v66), *(v69 + v72), v67), 3uLL);
        v73 += 8;
        v72 += 16;
      }

      while (v73 < 0x18);
      v70 += 64;
      v69 += v68;
      v7 += v68;
      --v71;
    }

    while (v71);
    v74 = 2 * v4;
    v75 = v130;
    v9 = 0uLL;
    v76 = 32;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v77 = 0;
      v78 = -8;
      do
      {
        v79 = vsubq_s16(*&v75[v77], *(v74 + v77));
        v12 = vpadalq_s16(v12, v79);
        v9 = vmlal_s16(v9, *v79.i8, *v79.i8);
        v11 = vmlal_high_s16(v11, v79, v79);
        v78 += 8;
        v77 += 16;
      }

      while (v78 < 0x18);
      v75 += 64;
      v74 += 2 * v5;
      --v76;
    }

    while (v76);
  }

  else
  {
    v8 = 2 * v4;
    v9 = 0uLL;
    v10 = 32;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x18);
      v8 += 2 * v5;
      v7 += 2 * v1;
      --v10;
    }

    while (v10);
  }

  v126 = vaddvq_s32(v12);
  v127 = vaddlvq_u32(vaddq_s32(v11, v9));
  *v6 = v127;
  return v127 - ((v126 * v126) >> 10);
}

uint64_t sub_277B34F1C()
{
  v0 = MEMORY[0x28223BE20]();
  v130[520] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v16 = 2 * v1;
    v17 = v130;
    if (v3 == 4)
    {
      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v17[v53] = vrhaddq_u16(*(v7 + v53 * 8), *(v7 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x18);
        v17 += 8;
        v7 += v16;
        --v52;
      }

      while (v52);
      v55 = v130;
      v56 = v129;
      v57 = 64;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58 * 8] = vrhaddq_u16(*&v55[v58], *&v55[v58 + 8]);
          v59 += 8;
          v58 += 2;
        }

        while (v59 < 0x18);
        v55 += 8;
        v56 += 64;
        --v57;
      }

      while (v57);
      v60 = 2 * v4;
      v61 = v129;
      v9 = 0uLL;
      v62 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          v65 = vsubq_s16(*&v61[v63], *(v60 + v63));
          v12 = vpadalq_s16(v12, v65);
          v9 = vmlal_s16(v9, *v65.i8, *v65.i8);
          v11 = vmlal_high_s16(v11, v65, v65);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v61 += 64;
        v60 += 2 * v5;
        --v62;
      }

      while (v62);
    }

    else if (v3)
    {
      v80 = 65;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v17[v81] = vrhaddq_u16(*(v7 + v81 * 8), *(v7 + v81 * 8 + 2));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x18);
        v17 += 8;
        v7 += v16;
        --v80;
      }

      while (v80);
      v83 = vdupq_n_s16(8 - v3);
      v84 = vdupq_n_s16(v3);
      v85 = v130;
      v86 = v129;
      v87 = 64;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          *&v86[v88 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v88], v83), *&v85[v88 + 8], v84), 3uLL);
          v89 += 8;
          v88 += 2;
        }

        while (v89 < 0x18);
        v85 += 8;
        v86 += 64;
        --v87;
      }

      while (v87);
      v90 = 2 * v4;
      v91 = v129;
      v9 = 0uLL;
      v92 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v93 = 0;
        v94 = -8;
        do
        {
          v95 = vsubq_s16(*&v91[v93], *(v90 + v93));
          v12 = vpadalq_s16(v12, v95);
          v9 = vmlal_s16(v9, *v95.i8, *v95.i8);
          v11 = vmlal_high_s16(v11, v95, v95);
          v94 += 8;
          v93 += 16;
        }

        while (v94 < 0x18);
        v91 += 64;
        v90 += 2 * v5;
        --v92;
      }

      while (v92);
    }

    else
    {
      v18 = 64;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19 * 8), *(v7 + v19 * 8 + 2));
          v20 += 8;
          v19 += 2;
        }

        while (v20 < 0x18);
        v17 += 8;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * v4;
      v22 = v130;
      v9 = 0uLL;
      v23 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24 * 8));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 2;
        }

        while (v25 < 0x18);
        v22 += 8;
        v21 += 2 * v5;
        --v23;
      }

      while (v23);
    }
  }

  else if (v2)
  {
    v27 = vdupq_n_s16(8 - v2);
    v28 = vdupq_n_s16(v2);
    v29 = 2 * v1;
    v30 = v130;
    if (v3 == 4)
    {
      v96 = 65;
      do
      {
        v97 = 0;
        v98 = -8;
        do
        {
          *&v30[v97] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v97 * 8), v27), *(v7 + v97 * 8 + 2), v28), 3uLL);
          v98 += 8;
          v97 += 2;
        }

        while (v98 < 0x18);
        v30 += 8;
        v7 += v29;
        --v96;
      }

      while (v96);
      v99 = v130;
      v100 = v129;
      v101 = 64;
      do
      {
        v102 = 0;
        v103 = -8;
        do
        {
          *&v100[v102 * 8] = vrhaddq_u16(*&v99[v102], *&v99[v102 + 8]);
          v103 += 8;
          v102 += 2;
        }

        while (v103 < 0x18);
        v99 += 8;
        v100 += 64;
        --v101;
      }

      while (v101);
      v104 = 2 * v4;
      v105 = v129;
      v9 = 0uLL;
      v106 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          v109 = vsubq_s16(*&v105[v107], *(v104 + v107));
          v12 = vpadalq_s16(v12, v109);
          v9 = vmlal_s16(v9, *v109.i8, *v109.i8);
          v11 = vmlal_high_s16(v11, v109, v109);
          v108 += 8;
          v107 += 16;
        }

        while (v108 < 0x18);
        v105 += 64;
        v104 += 2 * v5;
        --v106;
      }

      while (v106);
    }

    else if (v3)
    {
      v110 = 65;
      do
      {
        v111 = 0;
        v112 = -8;
        do
        {
          *&v30[v111] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v111 * 8), v27), *(v7 + v111 * 8 + 2), v28), 3uLL);
          v112 += 8;
          v111 += 2;
        }

        while (v112 < 0x18);
        v30 += 8;
        v7 += v29;
        --v110;
      }

      while (v110);
      v113 = vdupq_n_s16(8 - v3);
      v114 = vdupq_n_s16(v3);
      v115 = v130;
      v116 = v129;
      v117 = 64;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          *&v116[v118 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v115[v118], v113), *&v115[v118 + 8], v114), 3uLL);
          v119 += 8;
          v118 += 2;
        }

        while (v119 < 0x18);
        v115 += 8;
        v116 += 64;
        --v117;
      }

      while (v117);
      v120 = 2 * v4;
      v121 = v129;
      v9 = 0uLL;
      v122 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          v125 = vsubq_s16(*&v121[v123], *(v120 + v123));
          v12 = vpadalq_s16(v12, v125);
          v9 = vmlal_s16(v9, *v125.i8, *v125.i8);
          v11 = vmlal_high_s16(v11, v125, v125);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x18);
        v121 += 64;
        v120 += 2 * v5;
        --v122;
      }

      while (v122);
    }

    else
    {
      v31 = 64;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v32 * 8), v27), *(v7 + v32 * 8 + 2), v28), 3uLL);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x18);
        v30 += 8;
        v7 += v29;
        --v31;
      }

      while (v31);
      v34 = 2 * v4;
      v35 = v130;
      v9 = 0uLL;
      v36 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v35[v37], *(v34 + v37 * 8));
          v12 = vpadalq_s16(v12, v39);
          v9 = vmlal_s16(v9, *v39.i8, *v39.i8);
          v11 = vmlal_high_s16(v11, v39, v39);
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x18);
        v35 += 8;
        v34 += 2 * v5;
        --v36;
      }

      while (v36);
    }
  }

  else if (v3 == 4)
  {
    v40 = 2 * v1;
    v41 = v7 + v40;
    v42 = v130;
    v43 = 64;
    do
    {
      v44 = 0;
      v45 = -8;
      do
      {
        *&v42[v44] = vrhaddq_u16(*(v7 + v44 * 8), *(v41 + v44 * 8));
        v45 += 8;
        v44 += 2;
      }

      while (v45 < 0x18);
      v42 += 8;
      v41 += v40;
      v7 += v40;
      --v43;
    }

    while (v43);
    v46 = 2 * v4;
    v47 = v130;
    v9 = 0uLL;
    v48 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        v51 = vsubq_s16(*&v47[v49], *(v46 + v49 * 8));
        v12 = vpadalq_s16(v12, v51);
        v9 = vmlal_s16(v9, *v51.i8, *v51.i8);
        v11 = vmlal_high_s16(v11, v51, v51);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x18);
      v47 += 8;
      v46 += 2 * v5;
      --v48;
    }

    while (v48);
  }

  else if (v3)
  {
    v66 = vdupq_n_s16(8 - v3);
    v67 = vdupq_n_s16(v3);
    v68 = 2 * v1;
    v69 = v7 + v68;
    v70 = v130;
    v71 = 64;
    do
    {
      v72 = 0;
      v73 = -8;
      do
      {
        *&v70[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v72 * 8), v66), *(v69 + v72 * 8), v67), 3uLL);
        v73 += 8;
        v72 += 2;
      }

      while (v73 < 0x18);
      v70 += 8;
      v69 += v68;
      v7 += v68;
      --v71;
    }

    while (v71);
    v74 = 2 * v4;
    v75 = v130;
    v9 = 0uLL;
    v76 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v77 = 0;
      v78 = -8;
      do
      {
        v79 = vsubq_s16(*&v75[v77], *(v74 + v77 * 8));
        v12 = vpadalq_s16(v12, v79);
        v9 = vmlal_s16(v9, *v79.i8, *v79.i8);
        v11 = vmlal_high_s16(v11, v79, v79);
        v78 += 8;
        v77 += 2;
      }

      while (v78 < 0x18);
      v75 += 8;
      v74 += 2 * v5;
      --v76;
    }

    while (v76);
  }

  else
  {
    v8 = 2 * v4;
    v9 = 0uLL;
    v10 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x18);
      v8 += 2 * v5;
      v7 += 2 * v1;
      --v10;
    }

    while (v10);
  }

  v126 = vaddvq_s32(v12);
  v127 = vaddlvq_u32(vaddq_s32(v11, v9));
  *v6 = v127;
  return v127 - ((v126 * v126) >> 11);
}

uint64_t sub_277B35728()
{
  v0 = MEMORY[0x28223BE20]();
  v130[528] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v16 = 2 * v1;
    v17 = v130;
    if (v3 == 4)
    {
      v52 = 33;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v17[v53] = vrhaddq_u16(*(v7 + v53 * 8), *(v7 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v17 += 16;
        v7 += v16;
        --v52;
      }

      while (v52);
      v55 = v130;
      v56 = v129;
      v57 = 32;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58 * 8] = vrhaddq_u16(*&v55[v58], *&v55[v58 + 16]);
          v59 += 8;
          v58 += 2;
        }

        while (v59 < 0x38);
        v55 += 16;
        v56 += 128;
        --v57;
      }

      while (v57);
      v60 = 2 * v4;
      v61 = v129;
      v9 = 0uLL;
      v62 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          v65 = vsubq_s16(*&v61[v63], *(v60 + v63));
          v12 = vpadalq_s16(v12, v65);
          v9 = vmlal_s16(v9, *v65.i8, *v65.i8);
          v11 = vmlal_high_s16(v11, v65, v65);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x38);
        v61 += 128;
        v60 += 2 * v5;
        --v62;
      }

      while (v62);
    }

    else if (v3)
    {
      v80 = 33;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v17[v81] = vrhaddq_u16(*(v7 + v81 * 8), *(v7 + v81 * 8 + 2));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v17 += 16;
        v7 += v16;
        --v80;
      }

      while (v80);
      v83 = vdupq_n_s16(8 - v3);
      v84 = vdupq_n_s16(v3);
      v85 = v130;
      v86 = v129;
      v87 = 32;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          *&v86[v88 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v88], v83), *&v85[v88 + 16], v84), 3uLL);
          v89 += 8;
          v88 += 2;
        }

        while (v89 < 0x38);
        v85 += 16;
        v86 += 128;
        --v87;
      }

      while (v87);
      v90 = 2 * v4;
      v91 = v129;
      v9 = 0uLL;
      v92 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v93 = 0;
        v94 = -8;
        do
        {
          v95 = vsubq_s16(*&v91[v93], *(v90 + v93));
          v12 = vpadalq_s16(v12, v95);
          v9 = vmlal_s16(v9, *v95.i8, *v95.i8);
          v11 = vmlal_high_s16(v11, v95, v95);
          v94 += 8;
          v93 += 16;
        }

        while (v94 < 0x38);
        v91 += 128;
        v90 += 2 * v5;
        --v92;
      }

      while (v92);
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19 * 8), *(v7 + v19 * 8 + 2));
          v20 += 8;
          v19 += 2;
        }

        while (v20 < 0x38);
        v17 += 16;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * v4;
      v22 = v130;
      v9 = 0uLL;
      v23 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24 * 8));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 2;
        }

        while (v25 < 0x38);
        v22 += 16;
        v21 += 2 * v5;
        --v23;
      }

      while (v23);
    }
  }

  else if (v2)
  {
    v27 = vdupq_n_s16(8 - v2);
    v28 = vdupq_n_s16(v2);
    v29 = 2 * v1;
    v30 = v130;
    if (v3 == 4)
    {
      v96 = 33;
      do
      {
        v97 = 0;
        v98 = -8;
        do
        {
          *&v30[v97] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v97 * 8), v27), *(v7 + v97 * 8 + 2), v28), 3uLL);
          v98 += 8;
          v97 += 2;
        }

        while (v98 < 0x38);
        v30 += 16;
        v7 += v29;
        --v96;
      }

      while (v96);
      v99 = v130;
      v100 = v129;
      v101 = 32;
      do
      {
        v102 = 0;
        v103 = -8;
        do
        {
          *&v100[v102 * 8] = vrhaddq_u16(*&v99[v102], *&v99[v102 + 16]);
          v103 += 8;
          v102 += 2;
        }

        while (v103 < 0x38);
        v99 += 16;
        v100 += 128;
        --v101;
      }

      while (v101);
      v104 = 2 * v4;
      v105 = v129;
      v9 = 0uLL;
      v106 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          v109 = vsubq_s16(*&v105[v107], *(v104 + v107));
          v12 = vpadalq_s16(v12, v109);
          v9 = vmlal_s16(v9, *v109.i8, *v109.i8);
          v11 = vmlal_high_s16(v11, v109, v109);
          v108 += 8;
          v107 += 16;
        }

        while (v108 < 0x38);
        v105 += 128;
        v104 += 2 * v5;
        --v106;
      }

      while (v106);
    }

    else if (v3)
    {
      v110 = 33;
      do
      {
        v111 = 0;
        v112 = -8;
        do
        {
          *&v30[v111] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v111 * 8), v27), *(v7 + v111 * 8 + 2), v28), 3uLL);
          v112 += 8;
          v111 += 2;
        }

        while (v112 < 0x38);
        v30 += 16;
        v7 += v29;
        --v110;
      }

      while (v110);
      v113 = vdupq_n_s16(8 - v3);
      v114 = vdupq_n_s16(v3);
      v115 = v130;
      v116 = v129;
      v117 = 32;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          *&v116[v118 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v115[v118], v113), *&v115[v118 + 16], v114), 3uLL);
          v119 += 8;
          v118 += 2;
        }

        while (v119 < 0x38);
        v115 += 16;
        v116 += 128;
        --v117;
      }

      while (v117);
      v120 = 2 * v4;
      v121 = v129;
      v9 = 0uLL;
      v122 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          v125 = vsubq_s16(*&v121[v123], *(v120 + v123));
          v12 = vpadalq_s16(v12, v125);
          v9 = vmlal_s16(v9, *v125.i8, *v125.i8);
          v11 = vmlal_high_s16(v11, v125, v125);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x38);
        v121 += 128;
        v120 += 2 * v5;
        --v122;
      }

      while (v122);
    }

    else
    {
      v31 = 32;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v32 * 8), v27), *(v7 + v32 * 8 + 2), v28), 3uLL);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x38);
        v30 += 16;
        v7 += v29;
        --v31;
      }

      while (v31);
      v34 = 2 * v4;
      v35 = v130;
      v9 = 0uLL;
      v36 = 32;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v35[v37], *(v34 + v37 * 8));
          v12 = vpadalq_s16(v12, v39);
          v9 = vmlal_s16(v9, *v39.i8, *v39.i8);
          v11 = vmlal_high_s16(v11, v39, v39);
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x38);
        v35 += 16;
        v34 += 2 * v5;
        --v36;
      }

      while (v36);
    }
  }

  else if (v3 == 4)
  {
    v40 = 2 * v1;
    v41 = v7 + v40;
    v42 = v130;
    v43 = 32;
    do
    {
      v44 = 0;
      v45 = -8;
      do
      {
        *&v42[v44] = vrhaddq_u16(*(v7 + v44 * 8), *(v41 + v44 * 8));
        v45 += 8;
        v44 += 2;
      }

      while (v45 < 0x38);
      v42 += 16;
      v41 += v40;
      v7 += v40;
      --v43;
    }

    while (v43);
    v46 = 2 * v4;
    v47 = v130;
    v9 = 0uLL;
    v48 = 32;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        v51 = vsubq_s16(*&v47[v49], *(v46 + v49 * 8));
        v12 = vpadalq_s16(v12, v51);
        v9 = vmlal_s16(v9, *v51.i8, *v51.i8);
        v11 = vmlal_high_s16(v11, v51, v51);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x38);
      v47 += 16;
      v46 += 2 * v5;
      --v48;
    }

    while (v48);
  }

  else if (v3)
  {
    v66 = vdupq_n_s16(8 - v3);
    v67 = vdupq_n_s16(v3);
    v68 = 2 * v1;
    v69 = v7 + v68;
    v70 = v130;
    v71 = 32;
    do
    {
      v72 = 0;
      v73 = -8;
      do
      {
        *&v70[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v72 * 8), v66), *(v69 + v72 * 8), v67), 3uLL);
        v73 += 8;
        v72 += 2;
      }

      while (v73 < 0x38);
      v70 += 16;
      v69 += v68;
      v7 += v68;
      --v71;
    }

    while (v71);
    v74 = 2 * v4;
    v75 = v130;
    v9 = 0uLL;
    v76 = 32;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v77 = 0;
      v78 = -8;
      do
      {
        v79 = vsubq_s16(*&v75[v77], *(v74 + v77 * 8));
        v12 = vpadalq_s16(v12, v79);
        v9 = vmlal_s16(v9, *v79.i8, *v79.i8);
        v11 = vmlal_high_s16(v11, v79, v79);
        v78 += 8;
        v77 += 2;
      }

      while (v78 < 0x38);
      v75 += 16;
      v74 += 2 * v5;
      --v76;
    }

    while (v76);
  }

  else
  {
    v8 = 2 * v4;
    v9 = 0uLL;
    v10 = 32;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x38);
      v8 += 2 * v5;
      v7 += 2 * v1;
      --v10;
    }

    while (v10);
  }

  v126 = vaddvq_s32(v12);
  v127 = vaddlvq_u32(vaddq_s32(v11, v9));
  *v6 = v127;
  return v127 - ((v126 * v126) >> 11);
}

uint64_t sub_277B35F34()
{
  v0 = MEMORY[0x28223BE20]();
  v130[1040] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v16 = 2 * v1;
    v17 = v130;
    if (v3 == 4)
    {
      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v17[v53] = vrhaddq_u16(*(v7 + v53 * 8), *(v7 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v17 += 16;
        v7 += v16;
        --v52;
      }

      while (v52);
      v55 = v130;
      v56 = v129;
      v57 = 64;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58 * 8] = vrhaddq_u16(*&v55[v58], *&v55[v58 + 16]);
          v59 += 8;
          v58 += 2;
        }

        while (v59 < 0x38);
        v55 += 16;
        v56 += 128;
        --v57;
      }

      while (v57);
      v60 = 2 * v4;
      v61 = v129;
      v9 = 0uLL;
      v62 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          v65 = vsubq_s16(*&v61[v63], *(v60 + v63));
          v12 = vpadalq_s16(v12, v65);
          v9 = vmlal_s16(v9, *v65.i8, *v65.i8);
          v11 = vmlal_high_s16(v11, v65, v65);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x38);
        v61 += 128;
        v60 += 2 * v5;
        --v62;
      }

      while (v62);
    }

    else if (v3)
    {
      v80 = 65;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v17[v81] = vrhaddq_u16(*(v7 + v81 * 8), *(v7 + v81 * 8 + 2));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v17 += 16;
        v7 += v16;
        --v80;
      }

      while (v80);
      v83 = vdupq_n_s16(8 - v3);
      v84 = vdupq_n_s16(v3);
      v85 = v130;
      v86 = v129;
      v87 = 64;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          *&v86[v88 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v88], v83), *&v85[v88 + 16], v84), 3uLL);
          v89 += 8;
          v88 += 2;
        }

        while (v89 < 0x38);
        v85 += 16;
        v86 += 128;
        --v87;
      }

      while (v87);
      v90 = 2 * v4;
      v91 = v129;
      v9 = 0uLL;
      v92 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v93 = 0;
        v94 = -8;
        do
        {
          v95 = vsubq_s16(*&v91[v93], *(v90 + v93));
          v12 = vpadalq_s16(v12, v95);
          v9 = vmlal_s16(v9, *v95.i8, *v95.i8);
          v11 = vmlal_high_s16(v11, v95, v95);
          v94 += 8;
          v93 += 16;
        }

        while (v94 < 0x38);
        v91 += 128;
        v90 += 2 * v5;
        --v92;
      }

      while (v92);
    }

    else
    {
      v18 = 64;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19 * 8), *(v7 + v19 * 8 + 2));
          v20 += 8;
          v19 += 2;
        }

        while (v20 < 0x38);
        v17 += 16;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * v4;
      v22 = v130;
      v9 = 0uLL;
      v23 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24 * 8));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 2;
        }

        while (v25 < 0x38);
        v22 += 16;
        v21 += 2 * v5;
        --v23;
      }

      while (v23);
    }
  }

  else if (v2)
  {
    v27 = vdupq_n_s16(8 - v2);
    v28 = vdupq_n_s16(v2);
    v29 = 2 * v1;
    v30 = v130;
    if (v3 == 4)
    {
      v96 = 65;
      do
      {
        v97 = 0;
        v98 = -8;
        do
        {
          *&v30[v97] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v97 * 8), v27), *(v7 + v97 * 8 + 2), v28), 3uLL);
          v98 += 8;
          v97 += 2;
        }

        while (v98 < 0x38);
        v30 += 16;
        v7 += v29;
        --v96;
      }

      while (v96);
      v99 = v130;
      v100 = v129;
      v101 = 64;
      do
      {
        v102 = 0;
        v103 = -8;
        do
        {
          *&v100[v102 * 8] = vrhaddq_u16(*&v99[v102], *&v99[v102 + 16]);
          v103 += 8;
          v102 += 2;
        }

        while (v103 < 0x38);
        v99 += 16;
        v100 += 128;
        --v101;
      }

      while (v101);
      v104 = 2 * v4;
      v105 = v129;
      v9 = 0uLL;
      v106 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          v109 = vsubq_s16(*&v105[v107], *(v104 + v107));
          v12 = vpadalq_s16(v12, v109);
          v9 = vmlal_s16(v9, *v109.i8, *v109.i8);
          v11 = vmlal_high_s16(v11, v109, v109);
          v108 += 8;
          v107 += 16;
        }

        while (v108 < 0x38);
        v105 += 128;
        v104 += 2 * v5;
        --v106;
      }

      while (v106);
    }

    else if (v3)
    {
      v110 = 65;
      do
      {
        v111 = 0;
        v112 = -8;
        do
        {
          *&v30[v111] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v111 * 8), v27), *(v7 + v111 * 8 + 2), v28), 3uLL);
          v112 += 8;
          v111 += 2;
        }

        while (v112 < 0x38);
        v30 += 16;
        v7 += v29;
        --v110;
      }

      while (v110);
      v113 = vdupq_n_s16(8 - v3);
      v114 = vdupq_n_s16(v3);
      v115 = v130;
      v116 = v129;
      v117 = 64;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          *&v116[v118 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v115[v118], v113), *&v115[v118 + 16], v114), 3uLL);
          v119 += 8;
          v118 += 2;
        }

        while (v119 < 0x38);
        v115 += 16;
        v116 += 128;
        --v117;
      }

      while (v117);
      v120 = 2 * v4;
      v121 = v129;
      v9 = 0uLL;
      v122 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          v125 = vsubq_s16(*&v121[v123], *(v120 + v123));
          v12 = vpadalq_s16(v12, v125);
          v9 = vmlal_s16(v9, *v125.i8, *v125.i8);
          v11 = vmlal_high_s16(v11, v125, v125);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x38);
        v121 += 128;
        v120 += 2 * v5;
        --v122;
      }

      while (v122);
    }

    else
    {
      v31 = 64;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v32 * 8), v27), *(v7 + v32 * 8 + 2), v28), 3uLL);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x38);
        v30 += 16;
        v7 += v29;
        --v31;
      }

      while (v31);
      v34 = 2 * v4;
      v35 = v130;
      v9 = 0uLL;
      v36 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v35[v37], *(v34 + v37 * 8));
          v12 = vpadalq_s16(v12, v39);
          v9 = vmlal_s16(v9, *v39.i8, *v39.i8);
          v11 = vmlal_high_s16(v11, v39, v39);
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x38);
        v35 += 16;
        v34 += 2 * v5;
        --v36;
      }

      while (v36);
    }
  }

  else if (v3 == 4)
  {
    v40 = 2 * v1;
    v41 = v7 + v40;
    v42 = v130;
    v43 = 64;
    do
    {
      v44 = 0;
      v45 = -8;
      do
      {
        *&v42[v44] = vrhaddq_u16(*(v7 + v44 * 8), *(v41 + v44 * 8));
        v45 += 8;
        v44 += 2;
      }

      while (v45 < 0x38);
      v42 += 16;
      v41 += v40;
      v7 += v40;
      --v43;
    }

    while (v43);
    v46 = 2 * v4;
    v47 = v130;
    v9 = 0uLL;
    v48 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        v51 = vsubq_s16(*&v47[v49], *(v46 + v49 * 8));
        v12 = vpadalq_s16(v12, v51);
        v9 = vmlal_s16(v9, *v51.i8, *v51.i8);
        v11 = vmlal_high_s16(v11, v51, v51);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x38);
      v47 += 16;
      v46 += 2 * v5;
      --v48;
    }

    while (v48);
  }

  else if (v3)
  {
    v66 = vdupq_n_s16(8 - v3);
    v67 = vdupq_n_s16(v3);
    v68 = 2 * v1;
    v69 = v7 + v68;
    v70 = v130;
    v71 = 64;
    do
    {
      v72 = 0;
      v73 = -8;
      do
      {
        *&v70[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v72 * 8), v66), *(v69 + v72 * 8), v67), 3uLL);
        v73 += 8;
        v72 += 2;
      }

      while (v73 < 0x38);
      v70 += 16;
      v69 += v68;
      v7 += v68;
      --v71;
    }

    while (v71);
    v74 = 2 * v4;
    v75 = v130;
    v9 = 0uLL;
    v76 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v77 = 0;
      v78 = -8;
      do
      {
        v79 = vsubq_s16(*&v75[v77], *(v74 + v77 * 8));
        v12 = vpadalq_s16(v12, v79);
        v9 = vmlal_s16(v9, *v79.i8, *v79.i8);
        v11 = vmlal_high_s16(v11, v79, v79);
        v78 += 8;
        v77 += 2;
      }

      while (v78 < 0x38);
      v75 += 16;
      v74 += 2 * v5;
      --v76;
    }

    while (v76);
  }

  else
  {
    v8 = 2 * v4;
    v9 = 0uLL;
    v10 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x38);
      v8 += 2 * v5;
      v7 += 2 * v1;
      --v10;
    }

    while (v10);
  }

  v126 = vaddvq_s32(v12);
  v127 = vaddlvq_u32(vaddq_s32(v11, v9));
  *v6 = v127;
  return v127 - ((v126 * v126) >> 12);
}

uint64_t sub_277B36740()
{
  v0 = MEMORY[0x28223BE20]();
  v130[2064] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v16 = 2 * v1;
    v17 = v130;
    if (v3 == 4)
    {
      v52 = 129;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v17[v53] = vrhaddq_u16(*(v7 + v53 * 8), *(v7 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v17 += 16;
        v7 += v16;
        --v52;
      }

      while (v52);
      v55 = v130;
      v56 = v129;
      v57 = 128;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58 * 8] = vrhaddq_u16(*&v55[v58], *&v55[v58 + 16]);
          v59 += 8;
          v58 += 2;
        }

        while (v59 < 0x38);
        v55 += 16;
        v56 += 128;
        --v57;
      }

      while (v57);
      v60 = 2 * v4;
      v61 = v129;
      v9 = 0uLL;
      v62 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          v65 = vsubq_s16(*&v61[v63], *(v60 + v63));
          v12 = vpadalq_s16(v12, v65);
          v9 = vmlal_s16(v9, *v65.i8, *v65.i8);
          v11 = vmlal_high_s16(v11, v65, v65);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x38);
        v61 += 128;
        v60 += 2 * v5;
        --v62;
      }

      while (v62);
    }

    else if (v3)
    {
      v80 = 129;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v17[v81] = vrhaddq_u16(*(v7 + v81 * 8), *(v7 + v81 * 8 + 2));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v17 += 16;
        v7 += v16;
        --v80;
      }

      while (v80);
      v83 = vdupq_n_s16(8 - v3);
      v84 = vdupq_n_s16(v3);
      v85 = v130;
      v86 = v129;
      v87 = 128;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          *&v86[v88 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v88], v83), *&v85[v88 + 16], v84), 3uLL);
          v89 += 8;
          v88 += 2;
        }

        while (v89 < 0x38);
        v85 += 16;
        v86 += 128;
        --v87;
      }

      while (v87);
      v90 = 2 * v4;
      v91 = v129;
      v9 = 0uLL;
      v92 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v93 = 0;
        v94 = -8;
        do
        {
          v95 = vsubq_s16(*&v91[v93], *(v90 + v93));
          v12 = vpadalq_s16(v12, v95);
          v9 = vmlal_s16(v9, *v95.i8, *v95.i8);
          v11 = vmlal_high_s16(v11, v95, v95);
          v94 += 8;
          v93 += 16;
        }

        while (v94 < 0x38);
        v91 += 128;
        v90 += 2 * v5;
        --v92;
      }

      while (v92);
    }

    else
    {
      v18 = 128;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19 * 8), *(v7 + v19 * 8 + 2));
          v20 += 8;
          v19 += 2;
        }

        while (v20 < 0x38);
        v17 += 16;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * v4;
      v22 = v130;
      v9 = 0uLL;
      v23 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24 * 8));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 2;
        }

        while (v25 < 0x38);
        v22 += 16;
        v21 += 2 * v5;
        --v23;
      }

      while (v23);
    }
  }

  else if (v2)
  {
    v27 = vdupq_n_s16(8 - v2);
    v28 = vdupq_n_s16(v2);
    v29 = 2 * v1;
    v30 = v130;
    if (v3 == 4)
    {
      v96 = 129;
      do
      {
        v97 = 0;
        v98 = -8;
        do
        {
          *&v30[v97] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v97 * 8), v27), *(v7 + v97 * 8 + 2), v28), 3uLL);
          v98 += 8;
          v97 += 2;
        }

        while (v98 < 0x38);
        v30 += 16;
        v7 += v29;
        --v96;
      }

      while (v96);
      v99 = v130;
      v100 = v129;
      v101 = 128;
      do
      {
        v102 = 0;
        v103 = -8;
        do
        {
          *&v100[v102 * 8] = vrhaddq_u16(*&v99[v102], *&v99[v102 + 16]);
          v103 += 8;
          v102 += 2;
        }

        while (v103 < 0x38);
        v99 += 16;
        v100 += 128;
        --v101;
      }

      while (v101);
      v104 = 2 * v4;
      v105 = v129;
      v9 = 0uLL;
      v106 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          v109 = vsubq_s16(*&v105[v107], *(v104 + v107));
          v12 = vpadalq_s16(v12, v109);
          v9 = vmlal_s16(v9, *v109.i8, *v109.i8);
          v11 = vmlal_high_s16(v11, v109, v109);
          v108 += 8;
          v107 += 16;
        }

        while (v108 < 0x38);
        v105 += 128;
        v104 += 2 * v5;
        --v106;
      }

      while (v106);
    }

    else if (v3)
    {
      v110 = 129;
      do
      {
        v111 = 0;
        v112 = -8;
        do
        {
          *&v30[v111] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v111 * 8), v27), *(v7 + v111 * 8 + 2), v28), 3uLL);
          v112 += 8;
          v111 += 2;
        }

        while (v112 < 0x38);
        v30 += 16;
        v7 += v29;
        --v110;
      }

      while (v110);
      v113 = vdupq_n_s16(8 - v3);
      v114 = vdupq_n_s16(v3);
      v115 = v130;
      v116 = v129;
      v117 = 128;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          *&v116[v118 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v115[v118], v113), *&v115[v118 + 16], v114), 3uLL);
          v119 += 8;
          v118 += 2;
        }

        while (v119 < 0x38);
        v115 += 16;
        v116 += 128;
        --v117;
      }

      while (v117);
      v120 = 2 * v4;
      v121 = v129;
      v9 = 0uLL;
      v122 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          v125 = vsubq_s16(*&v121[v123], *(v120 + v123));
          v12 = vpadalq_s16(v12, v125);
          v9 = vmlal_s16(v9, *v125.i8, *v125.i8);
          v11 = vmlal_high_s16(v11, v125, v125);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x38);
        v121 += 128;
        v120 += 2 * v5;
        --v122;
      }

      while (v122);
    }

    else
    {
      v31 = 128;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v32 * 8), v27), *(v7 + v32 * 8 + 2), v28), 3uLL);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x38);
        v30 += 16;
        v7 += v29;
        --v31;
      }

      while (v31);
      v34 = 2 * v4;
      v35 = v130;
      v9 = 0uLL;
      v36 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v35[v37], *(v34 + v37 * 8));
          v12 = vpadalq_s16(v12, v39);
          v9 = vmlal_s16(v9, *v39.i8, *v39.i8);
          v11 = vmlal_high_s16(v11, v39, v39);
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x38);
        v35 += 16;
        v34 += 2 * v5;
        --v36;
      }

      while (v36);
    }
  }

  else if (v3 == 4)
  {
    v40 = 2 * v1;
    v41 = v7 + v40;
    v42 = v130;
    v43 = 128;
    do
    {
      v44 = 0;
      v45 = -8;
      do
      {
        *&v42[v44] = vrhaddq_u16(*(v7 + v44 * 8), *(v41 + v44 * 8));
        v45 += 8;
        v44 += 2;
      }

      while (v45 < 0x38);
      v42 += 16;
      v41 += v40;
      v7 += v40;
      --v43;
    }

    while (v43);
    v46 = 2 * v4;
    v47 = v130;
    v9 = 0uLL;
    v48 = 128;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        v51 = vsubq_s16(*&v47[v49], *(v46 + v49 * 8));
        v12 = vpadalq_s16(v12, v51);
        v9 = vmlal_s16(v9, *v51.i8, *v51.i8);
        v11 = vmlal_high_s16(v11, v51, v51);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x38);
      v47 += 16;
      v46 += 2 * v5;
      --v48;
    }

    while (v48);
  }

  else if (v3)
  {
    v66 = vdupq_n_s16(8 - v3);
    v67 = vdupq_n_s16(v3);
    v68 = 2 * v1;
    v69 = v7 + v68;
    v70 = v130;
    v71 = 128;
    do
    {
      v72 = 0;
      v73 = -8;
      do
      {
        *&v70[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v72 * 8), v66), *(v69 + v72 * 8), v67), 3uLL);
        v73 += 8;
        v72 += 2;
      }

      while (v73 < 0x38);
      v70 += 16;
      v69 += v68;
      v7 += v68;
      --v71;
    }

    while (v71);
    v74 = 2 * v4;
    v75 = v130;
    v9 = 0uLL;
    v76 = 128;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v77 = 0;
      v78 = -8;
      do
      {
        v79 = vsubq_s16(*&v75[v77], *(v74 + v77 * 8));
        v12 = vpadalq_s16(v12, v79);
        v9 = vmlal_s16(v9, *v79.i8, *v79.i8);
        v11 = vmlal_high_s16(v11, v79, v79);
        v78 += 8;
        v77 += 2;
      }

      while (v78 < 0x38);
      v75 += 16;
      v74 += 2 * v5;
      --v76;
    }

    while (v76);
  }

  else
  {
    v8 = 2 * v4;
    v9 = 0uLL;
    v10 = 128;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x38);
      v8 += 2 * v5;
      v7 += 2 * v1;
      --v10;
    }

    while (v10);
  }

  v126 = vaddvq_s32(v12);
  v127 = vaddlvq_u32(vaddq_s32(v11, v9));
  *v6 = v127;
  return v127 - ((v126 * v126) >> 13);
}

uint64_t sub_277B36F4C()
{
  v0 = MEMORY[0x28223BE20]();
  v130[2080] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v16 = 2 * v1;
    v17 = v130;
    if (v3 == 4)
    {
      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v17[v53] = vrhaddq_u16(*(v7 + v53 * 8), *(v7 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x78);
        v17 += 32;
        v7 += v16;
        --v52;
      }

      while (v52);
      v55 = v130;
      v56 = v129;
      v57 = 64;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58 * 8] = vrhaddq_u16(*&v55[v58], *&v55[v58 + 32]);
          v59 += 8;
          v58 += 2;
        }

        while (v59 < 0x78);
        v55 += 32;
        v56 += 256;
        --v57;
      }

      while (v57);
      v60 = 2 * v4;
      v61 = v129;
      v9 = 0uLL;
      v62 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          v65 = vsubq_s16(*&v61[v63], *(v60 + v63));
          v12 = vpadalq_s16(v12, v65);
          v9 = vmlal_s16(v9, *v65.i8, *v65.i8);
          v11 = vmlal_high_s16(v11, v65, v65);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x78);
        v61 += 256;
        v60 += 2 * v5;
        --v62;
      }

      while (v62);
    }

    else if (v3)
    {
      v80 = 65;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v17[v81] = vrhaddq_u16(*(v7 + v81 * 8), *(v7 + v81 * 8 + 2));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x78);
        v17 += 32;
        v7 += v16;
        --v80;
      }

      while (v80);
      v83 = vdupq_n_s16(8 - v3);
      v84 = vdupq_n_s16(v3);
      v85 = v130;
      v86 = v129;
      v87 = 64;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          *&v86[v88 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v88], v83), *&v85[v88 + 32], v84), 3uLL);
          v89 += 8;
          v88 += 2;
        }

        while (v89 < 0x78);
        v85 += 32;
        v86 += 256;
        --v87;
      }

      while (v87);
      v90 = 2 * v4;
      v91 = v129;
      v9 = 0uLL;
      v92 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v93 = 0;
        v94 = -8;
        do
        {
          v95 = vsubq_s16(*&v91[v93], *(v90 + v93));
          v12 = vpadalq_s16(v12, v95);
          v9 = vmlal_s16(v9, *v95.i8, *v95.i8);
          v11 = vmlal_high_s16(v11, v95, v95);
          v94 += 8;
          v93 += 16;
        }

        while (v94 < 0x78);
        v91 += 256;
        v90 += 2 * v5;
        --v92;
      }

      while (v92);
    }

    else
    {
      v18 = 64;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19 * 8), *(v7 + v19 * 8 + 2));
          v20 += 8;
          v19 += 2;
        }

        while (v20 < 0x78);
        v17 += 32;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * v4;
      v22 = v130;
      v9 = 0uLL;
      v23 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24 * 8));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 2;
        }

        while (v25 < 0x78);
        v22 += 32;
        v21 += 2 * v5;
        --v23;
      }

      while (v23);
    }
  }

  else if (v2)
  {
    v27 = vdupq_n_s16(8 - v2);
    v28 = vdupq_n_s16(v2);
    v29 = 2 * v1;
    v30 = v130;
    if (v3 == 4)
    {
      v96 = 65;
      do
      {
        v97 = 0;
        v98 = -8;
        do
        {
          *&v30[v97] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v97 * 8), v27), *(v7 + v97 * 8 + 2), v28), 3uLL);
          v98 += 8;
          v97 += 2;
        }

        while (v98 < 0x78);
        v30 += 32;
        v7 += v29;
        --v96;
      }

      while (v96);
      v99 = v130;
      v100 = v129;
      v101 = 64;
      do
      {
        v102 = 0;
        v103 = -8;
        do
        {
          *&v100[v102 * 8] = vrhaddq_u16(*&v99[v102], *&v99[v102 + 32]);
          v103 += 8;
          v102 += 2;
        }

        while (v103 < 0x78);
        v99 += 32;
        v100 += 256;
        --v101;
      }

      while (v101);
      v104 = 2 * v4;
      v105 = v129;
      v9 = 0uLL;
      v106 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          v109 = vsubq_s16(*&v105[v107], *(v104 + v107));
          v12 = vpadalq_s16(v12, v109);
          v9 = vmlal_s16(v9, *v109.i8, *v109.i8);
          v11 = vmlal_high_s16(v11, v109, v109);
          v108 += 8;
          v107 += 16;
        }

        while (v108 < 0x78);
        v105 += 256;
        v104 += 2 * v5;
        --v106;
      }

      while (v106);
    }

    else if (v3)
    {
      v110 = 65;
      do
      {
        v111 = 0;
        v112 = -8;
        do
        {
          *&v30[v111] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v111 * 8), v27), *(v7 + v111 * 8 + 2), v28), 3uLL);
          v112 += 8;
          v111 += 2;
        }

        while (v112 < 0x78);
        v30 += 32;
        v7 += v29;
        --v110;
      }

      while (v110);
      v113 = vdupq_n_s16(8 - v3);
      v114 = vdupq_n_s16(v3);
      v115 = v130;
      v116 = v129;
      v117 = 64;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          *&v116[v118 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v115[v118], v113), *&v115[v118 + 32], v114), 3uLL);
          v119 += 8;
          v118 += 2;
        }

        while (v119 < 0x78);
        v115 += 32;
        v116 += 256;
        --v117;
      }

      while (v117);
      v120 = 2 * v4;
      v121 = v129;
      v9 = 0uLL;
      v122 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          v125 = vsubq_s16(*&v121[v123], *(v120 + v123));
          v12 = vpadalq_s16(v12, v125);
          v9 = vmlal_s16(v9, *v125.i8, *v125.i8);
          v11 = vmlal_high_s16(v11, v125, v125);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x78);
        v121 += 256;
        v120 += 2 * v5;
        --v122;
      }

      while (v122);
    }

    else
    {
      v31 = 64;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v32 * 8), v27), *(v7 + v32 * 8 + 2), v28), 3uLL);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x78);
        v30 += 32;
        v7 += v29;
        --v31;
      }

      while (v31);
      v34 = 2 * v4;
      v35 = v130;
      v9 = 0uLL;
      v36 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v35[v37], *(v34 + v37 * 8));
          v12 = vpadalq_s16(v12, v39);
          v9 = vmlal_s16(v9, *v39.i8, *v39.i8);
          v11 = vmlal_high_s16(v11, v39, v39);
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x78);
        v35 += 32;
        v34 += 2 * v5;
        --v36;
      }

      while (v36);
    }
  }

  else if (v3 == 4)
  {
    v40 = 2 * v1;
    v41 = v7 + v40;
    v42 = v130;
    v43 = 64;
    do
    {
      v44 = 0;
      v45 = -8;
      do
      {
        *&v42[v44] = vrhaddq_u16(*(v7 + v44 * 8), *(v41 + v44 * 8));
        v45 += 8;
        v44 += 2;
      }

      while (v45 < 0x78);
      v42 += 32;
      v41 += v40;
      v7 += v40;
      --v43;
    }

    while (v43);
    v46 = 2 * v4;
    v47 = v130;
    v9 = 0uLL;
    v48 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        v51 = vsubq_s16(*&v47[v49], *(v46 + v49 * 8));
        v12 = vpadalq_s16(v12, v51);
        v9 = vmlal_s16(v9, *v51.i8, *v51.i8);
        v11 = vmlal_high_s16(v11, v51, v51);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x78);
      v47 += 32;
      v46 += 2 * v5;
      --v48;
    }

    while (v48);
  }

  else if (v3)
  {
    v66 = vdupq_n_s16(8 - v3);
    v67 = vdupq_n_s16(v3);
    v68 = 2 * v1;
    v69 = v7 + v68;
    v70 = v130;
    v71 = 64;
    do
    {
      v72 = 0;
      v73 = -8;
      do
      {
        *&v70[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v72 * 8), v66), *(v69 + v72 * 8), v67), 3uLL);
        v73 += 8;
        v72 += 2;
      }

      while (v73 < 0x78);
      v70 += 32;
      v69 += v68;
      v7 += v68;
      --v71;
    }

    while (v71);
    v74 = 2 * v4;
    v75 = v130;
    v9 = 0uLL;
    v76 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v77 = 0;
      v78 = -8;
      do
      {
        v79 = vsubq_s16(*&v75[v77], *(v74 + v77 * 8));
        v12 = vpadalq_s16(v12, v79);
        v9 = vmlal_s16(v9, *v79.i8, *v79.i8);
        v11 = vmlal_high_s16(v11, v79, v79);
        v78 += 8;
        v77 += 2;
      }

      while (v78 < 0x78);
      v75 += 32;
      v74 += 2 * v5;
      --v76;
    }

    while (v76);
  }

  else
  {
    v8 = 2 * v4;
    v9 = 0uLL;
    v10 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x78);
      v8 += 2 * v5;
      v7 += 2 * v1;
      --v10;
    }

    while (v10);
  }

  v126 = vaddvq_s32(v12);
  v127 = vaddlvq_u32(vaddq_s32(v11, v9));
  *v6 = v127;
  return v127 - ((v126 * v126) >> 13);
}

uint64_t sub_277B37758()
{
  v0 = MEMORY[0x28223BE20]();
  v130[4128] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v16 = 2 * v1;
    v17 = v130;
    if (v3 == 4)
    {
      v52 = 129;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v17[v53] = vrhaddq_u16(*(v7 + v53 * 8), *(v7 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x78);
        v17 += 32;
        v7 += v16;
        --v52;
      }

      while (v52);
      v55 = v130;
      v56 = v129;
      v57 = 128;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58 * 8] = vrhaddq_u16(*&v55[v58], *&v55[v58 + 32]);
          v59 += 8;
          v58 += 2;
        }

        while (v59 < 0x78);
        v55 += 32;
        v56 += 256;
        --v57;
      }

      while (v57);
      v60 = 2 * v4;
      v61 = v129;
      v9 = 0uLL;
      v62 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          v65 = vsubq_s16(*&v61[v63], *(v60 + v63));
          v12 = vpadalq_s16(v12, v65);
          v9 = vmlal_s16(v9, *v65.i8, *v65.i8);
          v11 = vmlal_high_s16(v11, v65, v65);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x78);
        v61 += 256;
        v60 += 2 * v5;
        --v62;
      }

      while (v62);
    }

    else if (v3)
    {
      v80 = 129;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v17[v81] = vrhaddq_u16(*(v7 + v81 * 8), *(v7 + v81 * 8 + 2));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x78);
        v17 += 32;
        v7 += v16;
        --v80;
      }

      while (v80);
      v83 = vdupq_n_s16(8 - v3);
      v84 = vdupq_n_s16(v3);
      v85 = v130;
      v86 = v129;
      v87 = 128;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          *&v86[v88 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v88], v83), *&v85[v88 + 32], v84), 3uLL);
          v89 += 8;
          v88 += 2;
        }

        while (v89 < 0x78);
        v85 += 32;
        v86 += 256;
        --v87;
      }

      while (v87);
      v90 = 2 * v4;
      v91 = v129;
      v9 = 0uLL;
      v92 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v93 = 0;
        v94 = -8;
        do
        {
          v95 = vsubq_s16(*&v91[v93], *(v90 + v93));
          v12 = vpadalq_s16(v12, v95);
          v9 = vmlal_s16(v9, *v95.i8, *v95.i8);
          v11 = vmlal_high_s16(v11, v95, v95);
          v94 += 8;
          v93 += 16;
        }

        while (v94 < 0x78);
        v91 += 256;
        v90 += 2 * v5;
        --v92;
      }

      while (v92);
    }

    else
    {
      v18 = 128;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19 * 8), *(v7 + v19 * 8 + 2));
          v20 += 8;
          v19 += 2;
        }

        while (v20 < 0x78);
        v17 += 32;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * v4;
      v22 = v130;
      v9 = 0uLL;
      v23 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24 * 8));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 2;
        }

        while (v25 < 0x78);
        v22 += 32;
        v21 += 2 * v5;
        --v23;
      }

      while (v23);
    }
  }

  else if (v2)
  {
    v27 = vdupq_n_s16(8 - v2);
    v28 = vdupq_n_s16(v2);
    v29 = 2 * v1;
    v30 = v130;
    if (v3 == 4)
    {
      v96 = 129;
      do
      {
        v97 = 0;
        v98 = -8;
        do
        {
          *&v30[v97] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v97 * 8), v27), *(v7 + v97 * 8 + 2), v28), 3uLL);
          v98 += 8;
          v97 += 2;
        }

        while (v98 < 0x78);
        v30 += 32;
        v7 += v29;
        --v96;
      }

      while (v96);
      v99 = v130;
      v100 = v129;
      v101 = 128;
      do
      {
        v102 = 0;
        v103 = -8;
        do
        {
          *&v100[v102 * 8] = vrhaddq_u16(*&v99[v102], *&v99[v102 + 32]);
          v103 += 8;
          v102 += 2;
        }

        while (v103 < 0x78);
        v99 += 32;
        v100 += 256;
        --v101;
      }

      while (v101);
      v104 = 2 * v4;
      v105 = v129;
      v9 = 0uLL;
      v106 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          v109 = vsubq_s16(*&v105[v107], *(v104 + v107));
          v12 = vpadalq_s16(v12, v109);
          v9 = vmlal_s16(v9, *v109.i8, *v109.i8);
          v11 = vmlal_high_s16(v11, v109, v109);
          v108 += 8;
          v107 += 16;
        }

        while (v108 < 0x78);
        v105 += 256;
        v104 += 2 * v5;
        --v106;
      }

      while (v106);
    }

    else if (v3)
    {
      v110 = 129;
      do
      {
        v111 = 0;
        v112 = -8;
        do
        {
          *&v30[v111] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v111 * 8), v27), *(v7 + v111 * 8 + 2), v28), 3uLL);
          v112 += 8;
          v111 += 2;
        }

        while (v112 < 0x78);
        v30 += 32;
        v7 += v29;
        --v110;
      }

      while (v110);
      v113 = vdupq_n_s16(8 - v3);
      v114 = vdupq_n_s16(v3);
      v115 = v130;
      v116 = v129;
      v117 = 128;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          *&v116[v118 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v115[v118], v113), *&v115[v118 + 32], v114), 3uLL);
          v119 += 8;
          v118 += 2;
        }

        while (v119 < 0x78);
        v115 += 32;
        v116 += 256;
        --v117;
      }

      while (v117);
      v120 = 2 * v4;
      v121 = v129;
      v9 = 0uLL;
      v122 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          v125 = vsubq_s16(*&v121[v123], *(v120 + v123));
          v12 = vpadalq_s16(v12, v125);
          v9 = vmlal_s16(v9, *v125.i8, *v125.i8);
          v11 = vmlal_high_s16(v11, v125, v125);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x78);
        v121 += 256;
        v120 += 2 * v5;
        --v122;
      }

      while (v122);
    }

    else
    {
      v31 = 128;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v32 * 8), v27), *(v7 + v32 * 8 + 2), v28), 3uLL);
          v33 += 8;
          v32 += 2;
        }

        while (v33 < 0x78);
        v30 += 32;
        v7 += v29;
        --v31;
      }

      while (v31);
      v34 = 2 * v4;
      v35 = v130;
      v9 = 0uLL;
      v36 = 128;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v35[v37], *(v34 + v37 * 8));
          v12 = vpadalq_s16(v12, v39);
          v9 = vmlal_s16(v9, *v39.i8, *v39.i8);
          v11 = vmlal_high_s16(v11, v39, v39);
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x78);
        v35 += 32;
        v34 += 2 * v5;
        --v36;
      }

      while (v36);
    }
  }

  else if (v3 == 4)
  {
    v40 = 2 * v1;
    v41 = v7 + v40;
    v42 = v130;
    v43 = 128;
    do
    {
      v44 = 0;
      v45 = -8;
      do
      {
        *&v42[v44] = vrhaddq_u16(*(v7 + v44 * 8), *(v41 + v44 * 8));
        v45 += 8;
        v44 += 2;
      }

      while (v45 < 0x78);
      v42 += 32;
      v41 += v40;
      v7 += v40;
      --v43;
    }

    while (v43);
    v46 = 2 * v4;
    v47 = v130;
    v9 = 0uLL;
    v48 = 128;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        v51 = vsubq_s16(*&v47[v49], *(v46 + v49 * 8));
        v12 = vpadalq_s16(v12, v51);
        v9 = vmlal_s16(v9, *v51.i8, *v51.i8);
        v11 = vmlal_high_s16(v11, v51, v51);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x78);
      v47 += 32;
      v46 += 2 * v5;
      --v48;
    }

    while (v48);
  }

  else if (v3)
  {
    v66 = vdupq_n_s16(8 - v3);
    v67 = vdupq_n_s16(v3);
    v68 = 2 * v1;
    v69 = v7 + v68;
    v70 = v130;
    v71 = 128;
    do
    {
      v72 = 0;
      v73 = -8;
      do
      {
        *&v70[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v72 * 8), v66), *(v69 + v72 * 8), v67), 3uLL);
        v73 += 8;
        v72 += 2;
      }

      while (v73 < 0x78);
      v70 += 32;
      v69 += v68;
      v7 += v68;
      --v71;
    }

    while (v71);
    v74 = 2 * v4;
    v75 = v130;
    v9 = 0uLL;
    v76 = 128;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v77 = 0;
      v78 = -8;
      do
      {
        v79 = vsubq_s16(*&v75[v77], *(v74 + v77 * 8));
        v12 = vpadalq_s16(v12, v79);
        v9 = vmlal_s16(v9, *v79.i8, *v79.i8);
        v11 = vmlal_high_s16(v11, v79, v79);
        v78 += 8;
        v77 += 2;
      }

      while (v78 < 0x78);
      v75 += 32;
      v74 += 2 * v5;
      --v76;
    }

    while (v76);
  }

  else
  {
    v8 = 2 * v4;
    v9 = 0uLL;
    v10 = 128;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x78);
      v8 += 2 * v5;
      v7 += 2 * v1;
      --v10;
    }

    while (v10);
  }

  v126 = vaddvq_s32(v12);
  v127 = vaddlvq_u32(vaddq_s32(v11, v9));
  *v6 = v127;
  return v127 - ((v126 * v126) >> 14);
}

uint64_t sub_277B37F68(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7)
{
  v7 = 0;
  v18[17] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 136);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 128);
  return sub_277997618(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B38068(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v26[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 528);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v26[0];
  do
  {
    v15 = v26[v11 + 1];
    *&v25[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 512);
  v16 = 0;
  v17 = (2 * a5);
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vsubq_s16(*&v25[v16], *v17);
    v20 = vpadalq_s16(v20, v21);
    v18 = vmlal_s16(v18, *v21.i8, *v21.i8);
    v19 = vmlal_high_s16(v19, v21, v21);
    v16 += 16;
    v17 = (v17 + 2 * a6);
  }

  while (v16 != 512);
  v22 = vaddlvq_u32(vaddq_s32(v19, v18));
  *a7 = v22;
  v23 = vaddvq_s32(v20);
  return v22 - ((v23 * v23) >> 8);
}

uint64_t sub_277B381B4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v138[15] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v102 = 0;
      v103 = (v7 + 18);
      do
      {
        v104 = &v137[v102];
        *v104 = vrhaddq_u16(*(v103 - 18), v103[-1]);
        v104[1] = vrhaddq_u16(*(v103 - 2), *v103);
        v102 += 2;
        v103 = (v103 + 2 * a2);
      }

      while ((v102 * 16) != 160);
      v105 = v137[0];
      v106 = v138;
      v107 = 32;
      do
      {
        v108 = &v136[v107];
        v110 = v106[-2];
        v109 = v106[-1];
        v111 = *v106;
        v106 += 2;
        v108[-2] = vrhaddq_u16(v105, v109);
        v108[-1] = vrhaddq_u16(v110, v111);
        v107 += 32;
        v105 = v109;
      }

      while (v107 != 160);
      v112 = 2 * a5;
      v113 = v136;
      v9 = 0uLL;
      v114 = 4;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v115 = 0;
        v116 = 1;
        do
        {
          v117 = v116;
          v118 = vsubq_s16(*&v113[2 * v115], *(v112 + 2 * v115));
          v12 = vpadalq_s16(v12, v118);
          v9 = vmlal_s16(v9, *v118.i8, *v118.i8);
          v11 = vmlal_high_s16(v11, v118, v118);
          v115 = 8;
          v116 = 0;
        }

        while ((v117 & 1) != 0);
        v113 += 32;
        v112 += 2 * a6;
        --v114;
      }

      while (v114);
    }

    else
    {
      v17 = 0;
      v18 = (v7 + 18);
      v19 = 2 * a2;
      if (a4)
      {
        do
        {
          v28 = &v137[v17];
          *v28 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v28[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 160);
        v29 = vdupq_n_s16(8 - a4);
        v30 = vdupq_n_s16(a4);
        v31 = v137[0];
        v32 = v138;
        v33 = 32;
        do
        {
          v35 = v32[-2];
          v34 = v32[-1];
          v36 = *v32;
          v32 += 2;
          v37 = &v136[v33];
          v37[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v31, v29), v34, v30), 3uLL);
          v37[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v35, v29), v36, v30), 3uLL);
          v33 += 32;
          v31 = v34;
        }

        while (v33 != 160);
        v38 = 2 * a5;
        v39 = v136;
        v9 = 0uLL;
        v40 = 4;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v41 = 0;
          v42 = 1;
          do
          {
            v43 = v42;
            v44 = vsubq_s16(*&v39[2 * v41], *(v38 + 2 * v41));
            v12 = vpadalq_s16(v12, v44);
            v9 = vmlal_s16(v9, *v44.i8, *v44.i8);
            v11 = vmlal_high_s16(v11, v44, v44);
            v41 = 8;
            v42 = 0;
          }

          while ((v43 & 1) != 0);
          v39 += 32;
          v38 += 2 * a6;
          --v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v20 = &v137[v17];
          *v20 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v20[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 128);
        v21 = 2 * a5;
        v22 = v137;
        v9 = 0uLL;
        v23 = 4;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = vsubq_s16(v22[v24 / 8], *(v21 + 2 * v24));
            v12 = vpadalq_s16(v12, v27);
            v9 = vmlal_s16(v9, *v27.i8, *v27.i8);
            v11 = vmlal_high_s16(v11, v27, v27);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v22 += 2;
          v21 += 2 * a6;
          --v23;
        }

        while (v23);
      }
    }
  }

  else if (a3)
  {
    v45 = 0;
    v46 = vdupq_n_s16(8 - a3);
    v47 = vdupq_n_s16(a3);
    v48 = (v7 + 18);
    v49 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v58 = &v137[v45];
        *v58 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v58[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 160);
      v59 = v137[0];
      v60 = v138;
      v61 = 32;
      do
      {
        v62 = &v136[v61];
        v64 = v60[-2];
        v63 = v60[-1];
        v65 = *v60;
        v60 += 2;
        v62[-2] = vrhaddq_u16(v59, v63);
        v62[-1] = vrhaddq_u16(v64, v65);
        v61 += 32;
        v59 = v63;
      }

      while (v61 != 160);
      v66 = 2 * a5;
      v67 = v136;
      v9 = 0uLL;
      v68 = 4;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v12 = vpadalq_s16(v12, v72);
          v9 = vmlal_s16(v9, *v72.i8, *v72.i8);
          v11 = vmlal_high_s16(v11, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * a6;
        --v68;
      }

      while (v68);
    }

    else if (a4)
    {
      do
      {
        v73 = &v137[v45];
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 160);
      v74 = vdupq_n_s16(8 - a4);
      v75 = vdupq_n_s16(a4);
      v76 = v137[0];
      v77 = v138;
      v78 = 32;
      do
      {
        v80 = v77[-2];
        v79 = v77[-1];
        v81 = *v77;
        v77 += 2;
        v82 = &v136[v78];
        v82[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v76, v74), v79, v75), 3uLL);
        v82[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v80, v74), v81, v75), 3uLL);
        v78 += 32;
        v76 = v79;
      }

      while (v78 != 160);
      v83 = 2 * a5;
      v84 = v136;
      v9 = 0uLL;
      v85 = 4;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v86 = 0;
        v87 = 1;
        do
        {
          v88 = v87;
          v89 = vsubq_s16(*&v84[2 * v86], *(v83 + 2 * v86));
          v12 = vpadalq_s16(v12, v89);
          v9 = vmlal_s16(v9, *v89.i8, *v89.i8);
          v11 = vmlal_high_s16(v11, v89, v89);
          v86 = 8;
          v87 = 0;
        }

        while ((v88 & 1) != 0);
        v84 += 32;
        v83 += 2 * a6;
        --v85;
      }

      while (v85);
    }

    else
    {
      do
      {
        v50 = &v137[v45];
        *v50 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v50[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 128);
      v51 = 2 * a5;
      v52 = v137;
      v9 = 0uLL;
      v53 = 4;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v54 = 0;
        v55 = 1;
        do
        {
          v56 = v55;
          v57 = vsubq_s16(v52[v54 / 8], *(v51 + 2 * v54));
          v12 = vpadalq_s16(v12, v57);
          v9 = vmlal_s16(v9, *v57.i8, *v57.i8);
          v11 = vmlal_high_s16(v11, v57, v57);
          v54 = 8;
          v55 = 0;
        }

        while ((v56 & 1) != 0);
        v52 += 2;
        v51 += 2 * a6;
        --v53;
      }

      while (v53);
    }
  }

  else if (a4 == 4)
  {
    v90 = 0;
    v91 = *v7;
    v92 = 2 * a2;
    do
    {
      v93 = &v137[v90];
      v94 = *(v7 + 2 * a2);
      *v93 = vrhaddq_u16(v91, v94);
      v93[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v92 + 16));
      v90 += 2;
      v7 += v92;
      v91 = v94;
    }

    while ((v90 * 16) != 128);
    v95 = 2 * a5;
    v96 = v137;
    v9 = 0uLL;
    v97 = 4;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v98 = 0;
      v99 = 1;
      do
      {
        v100 = v99;
        v101 = vsubq_s16(v96[v98 / 8], *(v95 + 2 * v98));
        v12 = vpadalq_s16(v12, v101);
        v9 = vmlal_s16(v9, *v101.i8, *v101.i8);
        v11 = vmlal_high_s16(v11, v101, v101);
        v98 = 8;
        v99 = 0;
      }

      while ((v100 & 1) != 0);
      v96 += 2;
      v95 += 2 * a6;
      --v97;
    }

    while (v97);
  }

  else if (a4)
  {
    v119 = 0;
    v120 = vdupq_n_s16(8 - a4);
    v121 = vdupq_n_s16(a4);
    v122 = *v7;
    v123 = 2 * a2;
    do
    {
      v124 = &v137[v119];
      v125 = *(v7 + 2 * a2);
      *v124 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122, v120), v125, v121), 3uLL);
      v124[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v120), *(v7 + v123 + 16), v121), 3uLL);
      v119 += 2;
      v7 += v123;
      v122 = v125;
    }

    while ((v119 * 16) != 128);
    v126 = 2 * a5;
    v127 = v137;
    v9 = 0uLL;
    v128 = 4;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v129 = 0;
      v130 = 1;
      do
      {
        v131 = v130;
        v132 = vsubq_s16(v127[v129 / 8], *(v126 + 2 * v129));
        v12 = vpadalq_s16(v12, v132);
        v9 = vmlal_s16(v9, *v132.i8, *v132.i8);
        v11 = vmlal_high_s16(v11, v132, v132);
        v129 = 8;
        v130 = 0;
      }

      while ((v131 & 1) != 0);
      v127 += 2;
      v126 += 2 * a6;
      --v128;
    }

    while (v128);
  }

  else
  {
    v8 = 2 * a5;
    v9 = 0uLL;
    v10 = 4;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = vsubq_s16(*(v7 + 2 * v13), *(v8 + 2 * v13));
        v12 = vpadalq_s16(v12, v16);
        v9 = vmlal_s16(v9, *v16.i8, *v16.i8);
        v11 = vmlal_high_s16(v11, v16, v16);
        v13 = 8;
        v14 = 0;
      }

      while ((v15 & 1) != 0);
      v7 += 2 * a2;
      v8 += 2 * a6;
      --v10;
    }

    while (v10);
  }

  v133 = vaddvq_s32(v12);
  v134 = vaddlvq_u32(vaddq_s32(v11, v9));
  *a7 = v134;
  return v134 - ((v133 * v133) >> 6);
}

uint64_t sub_277B38960()
{
  v0 = MEMORY[0x28223BE20]();
  v138[255] = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    if (v3 == 4)
    {
      v102 = 0;
      v103 = (v7 + 18);
      do
      {
        v104 = &v137[v102];
        *v104 = vrhaddq_u16(*(v103 - 18), v103[-1]);
        v104[1] = vrhaddq_u16(*(v103 - 2), *v103);
        v102 += 2;
        v103 = (v103 + 2 * v1);
      }

      while ((v102 * 16) != 2080);
      v105 = v137[0];
      v106 = v138;
      v107 = 32;
      do
      {
        v108 = &v136[v107];
        v110 = v106[-2];
        v109 = v106[-1];
        v111 = *v106;
        v106 += 2;
        v108[-2] = vrhaddq_u16(v105, v109);
        v108[-1] = vrhaddq_u16(v110, v111);
        v107 += 32;
        v105 = v109;
      }

      while (v107 != 2080);
      v112 = 2 * v4;
      v113 = v136;
      v9 = 0uLL;
      v114 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v115 = 0;
        v116 = 1;
        do
        {
          v117 = v116;
          v118 = vsubq_s16(*&v113[2 * v115], *(v112 + 2 * v115));
          v12 = vpadalq_s16(v12, v118);
          v9 = vmlal_s16(v9, *v118.i8, *v118.i8);
          v11 = vmlal_high_s16(v11, v118, v118);
          v115 = 8;
          v116 = 0;
        }

        while ((v117 & 1) != 0);
        v113 += 32;
        v112 += 2 * v5;
        --v114;
      }

      while (v114);
    }

    else
    {
      v17 = 0;
      v18 = (v7 + 18);
      v19 = 2 * v1;
      if (v3)
      {
        do
        {
          v28 = &v137[v17];
          *v28 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v28[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 2080);
        v29 = vdupq_n_s16(8 - v3);
        v30 = vdupq_n_s16(v3);
        v31 = v137[0];
        v32 = v138;
        v33 = 32;
        do
        {
          v35 = v32[-2];
          v34 = v32[-1];
          v36 = *v32;
          v32 += 2;
          v37 = &v136[v33];
          v37[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v31, v29), v34, v30), 3uLL);
          v37[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v35, v29), v36, v30), 3uLL);
          v33 += 32;
          v31 = v34;
        }

        while (v33 != 2080);
        v38 = 2 * v4;
        v39 = v136;
        v9 = 0uLL;
        v40 = 64;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v41 = 0;
          v42 = 1;
          do
          {
            v43 = v42;
            v44 = vsubq_s16(*&v39[2 * v41], *(v38 + 2 * v41));
            v12 = vpadalq_s16(v12, v44);
            v9 = vmlal_s16(v9, *v44.i8, *v44.i8);
            v11 = vmlal_high_s16(v11, v44, v44);
            v41 = 8;
            v42 = 0;
          }

          while ((v43 & 1) != 0);
          v39 += 32;
          v38 += 2 * v5;
          --v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v20 = &v137[v17];
          *v20 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v20[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 2048);
        v21 = 2 * v4;
        v22 = v137;
        v9 = 0uLL;
        v23 = 64;
        v11 = 0uLL;
        v12 = 0uLL;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = vsubq_s16(v22[v24 / 8], *(v21 + 2 * v24));
            v12 = vpadalq_s16(v12, v27);
            v9 = vmlal_s16(v9, *v27.i8, *v27.i8);
            v11 = vmlal_high_s16(v11, v27, v27);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v22 += 2;
          v21 += 2 * v5;
          --v23;
        }

        while (v23);
      }
    }
  }

  else if (v2)
  {
    v45 = 0;
    v46 = vdupq_n_s16(8 - v2);
    v47 = vdupq_n_s16(v2);
    v48 = (v7 + 18);
    v49 = 2 * v1;
    if (v3 == 4)
    {
      do
      {
        v58 = &v137[v45];
        *v58 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v58[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 2080);
      v59 = v137[0];
      v60 = v138;
      v61 = 32;
      do
      {
        v62 = &v136[v61];
        v64 = v60[-2];
        v63 = v60[-1];
        v65 = *v60;
        v60 += 2;
        v62[-2] = vrhaddq_u16(v59, v63);
        v62[-1] = vrhaddq_u16(v64, v65);
        v61 += 32;
        v59 = v63;
      }

      while (v61 != 2080);
      v66 = 2 * v4;
      v67 = v136;
      v9 = 0uLL;
      v68 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v12 = vpadalq_s16(v12, v72);
          v9 = vmlal_s16(v9, *v72.i8, *v72.i8);
          v11 = vmlal_high_s16(v11, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * v5;
        --v68;
      }

      while (v68);
    }

    else if (v3)
    {
      do
      {
        v73 = &v137[v45];
        *v73 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v73[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 2080);
      v74 = vdupq_n_s16(8 - v3);
      v75 = vdupq_n_s16(v3);
      v76 = v137[0];
      v77 = v138;
      v78 = 32;
      do
      {
        v80 = v77[-2];
        v79 = v77[-1];
        v81 = *v77;
        v77 += 2;
        v82 = &v136[v78];
        v82[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v76, v74), v79, v75), 3uLL);
        v82[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v80, v74), v81, v75), 3uLL);
        v78 += 32;
        v76 = v79;
      }

      while (v78 != 2080);
      v83 = 2 * v4;
      v84 = v136;
      v9 = 0uLL;
      v85 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v86 = 0;
        v87 = 1;
        do
        {
          v88 = v87;
          v89 = vsubq_s16(*&v84[2 * v86], *(v83 + 2 * v86));
          v12 = vpadalq_s16(v12, v89);
          v9 = vmlal_s16(v9, *v89.i8, *v89.i8);
          v11 = vmlal_high_s16(v11, v89, v89);
          v86 = 8;
          v87 = 0;
        }

        while ((v88 & 1) != 0);
        v84 += 32;
        v83 += 2 * v5;
        --v85;
      }

      while (v85);
    }

    else
    {
      do
      {
        v50 = &v137[v45];
        *v50 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 18), v46), v48[-1], v47), 3uLL);
        v50[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v48 - 2), v46), *v48, v47), 3uLL);
        v45 += 2;
        v48 = (v48 + v49);
      }

      while ((v45 * 16) != 2048);
      v51 = 2 * v4;
      v52 = v137;
      v9 = 0uLL;
      v53 = 64;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v54 = 0;
        v55 = 1;
        do
        {
          v56 = v55;
          v57 = vsubq_s16(v52[v54 / 8], *(v51 + 2 * v54));
          v12 = vpadalq_s16(v12, v57);
          v9 = vmlal_s16(v9, *v57.i8, *v57.i8);
          v11 = vmlal_high_s16(v11, v57, v57);
          v54 = 8;
          v55 = 0;
        }

        while ((v56 & 1) != 0);
        v52 += 2;
        v51 += 2 * v5;
        --v53;
      }

      while (v53);
    }
  }

  else if (v3 == 4)
  {
    v90 = 0;
    v91 = *v7;
    v92 = 2 * v1;
    do
    {
      v93 = &v137[v90];
      v94 = *(v7 + 2 * v1);
      *v93 = vrhaddq_u16(v91, v94);
      v93[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v92 + 16));
      v90 += 2;
      v7 += v92;
      v91 = v94;
    }

    while ((v90 * 16) != 2048);
    v95 = 2 * v4;
    v96 = v137;
    v9 = 0uLL;
    v97 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v98 = 0;
      v99 = 1;
      do
      {
        v100 = v99;
        v101 = vsubq_s16(v96[v98 / 8], *(v95 + 2 * v98));
        v12 = vpadalq_s16(v12, v101);
        v9 = vmlal_s16(v9, *v101.i8, *v101.i8);
        v11 = vmlal_high_s16(v11, v101, v101);
        v98 = 8;
        v99 = 0;
      }

      while ((v100 & 1) != 0);
      v96 += 2;
      v95 += 2 * v5;
      --v97;
    }

    while (v97);
  }

  else if (v3)
  {
    v119 = 0;
    v120 = vdupq_n_s16(8 - v3);
    v121 = vdupq_n_s16(v3);
    v122 = *v7;
    v123 = 2 * v1;
    do
    {
      v124 = &v137[v119];
      v125 = *(v7 + 2 * v1);
      *v124 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v122, v120), v125, v121), 3uLL);
      v124[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v120), *(v7 + v123 + 16), v121), 3uLL);
      v119 += 2;
      v7 += v123;
      v122 = v125;
    }

    while ((v119 * 16) != 2048);
    v126 = 2 * v4;
    v127 = v137;
    v9 = 0uLL;
    v128 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v129 = 0;
      v130 = 1;
      do
      {
        v131 = v130;
        v132 = vsubq_s16(v127[v129 / 8], *(v126 + 2 * v129));
        v12 = vpadalq_s16(v12, v132);
        v9 = vmlal_s16(v9, *v132.i8, *v132.i8);
        v11 = vmlal_high_s16(v11, v132, v132);
        v129 = 8;
        v130 = 0;
      }

      while ((v131 & 1) != 0);
      v127 += 2;
      v126 += 2 * v5;
      --v128;
    }

    while (v128);
  }

  else
  {
    v8 = 2 * v4;
    v9 = 0uLL;
    v10 = 64;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = vsubq_s16(*(v7 + 2 * v13), *(v8 + 2 * v13));
        v12 = vpadalq_s16(v12, v16);
        v9 = vmlal_s16(v9, *v16.i8, *v16.i8);
        v11 = vmlal_high_s16(v11, v16, v16);
        v13 = 8;
        v14 = 0;
      }

      while ((v15 & 1) != 0);
      v7 += 2 * v1;
      v8 += 2 * v5;
      --v10;
    }

    while (v10);
  }

  v133 = vaddvq_s32(v12);
  v134 = vaddlvq_u32(vaddq_s32(v11, v9));
  *v6 = v134;
  return v134 - ((v133 * v133) >> 10);
}

uint64_t sub_277B39128(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v136 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v16 = 2 * a2;
    v17 = v135;
    if (a4 == 4)
    {
      v51 = 9;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v17[v52] = vrhaddq_u16(*(v7 + v52), *(v7 + v52 + 2));
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v17 += 64;
        v7 += v16;
        --v51;
      }

      while (v51);
      v54 = v135;
      v55 = v134;
      v56 = 8;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          *&v55[v57] = vrhaddq_u16(*&v54[v57], *&v54[v57 + 64]);
          v58 += 8;
          v57 += 16;
        }

        while (v58 < 0x18);
        v54 += 64;
        v55 += 64;
        --v56;
      }

      while (v56);
      v59 = 2 * a5;
      v60 = v134;
      v9 = 0uLL;
      v61 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v62 = 0;
        v63 = -8;
        do
        {
          v64 = vsubq_s16(*&v60[v62], *(v59 + v62));
          v12 = vpadalq_s16(v12, v64);
          v9 = vmlal_s16(v9, *v64.i8, *v64.i8);
          v11 = vmlal_high_s16(v11, v64, v64);
          v63 += 8;
          v62 += 16;
        }

        while (v63 < 0x18);
        v60 += 64;
        v59 += 2 * a6;
        --v61;
      }

      while (v61);
    }

    else if (a4)
    {
      v79 = 9;
      do
      {
        v80 = 0;
        v81 = -8;
        do
        {
          *&v17[v80] = vrhaddq_u16(*(v7 + v80), *(v7 + v80 + 2));
          v81 += 8;
          v80 += 16;
        }

        while (v81 < 0x18);
        v17 += 64;
        v7 += v16;
        --v79;
      }

      while (v79);
      v82 = 8;
      v83 = vdupq_n_s16(8 - a4);
      v84 = vdupq_n_s16(a4);
      v85 = v135;
      v86 = v134;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v86[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v87], v83), *&v85[v87 + 64], v84), 3uLL);
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v85 += 64;
        v86 += 64;
        --v82;
      }

      while (v82);
      v89 = 2 * a5;
      v90 = v134;
      v9 = 0uLL;
      v91 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v12 = vpadalq_s16(v12, v94);
          v9 = vmlal_s16(v9, *v94.i8, *v94.i8);
          v11 = vmlal_high_s16(v11, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x18);
        v90 += 64;
        v89 += 2 * a6;
        --v91;
      }

      while (v91);
    }

    else
    {
      v18 = 8;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19), *(v7 + v19 + 2));
          v20 += 8;
          v19 += 16;
        }

        while (v20 < 0x18);
        v17 += 64;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * a5;
      v22 = v135;
      v9 = 0uLL;
      v23 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 16;
        }

        while (v25 < 0x18);
        v22 += 64;
        v21 += 2 * a6;
        --v23;
      }

      while (v23);
    }
  }

  else if (a3)
  {
    v27 = 8;
    if (a4 == 4)
    {
      v95 = vdupq_n_s16(8 - a3);
      v96 = vdupq_n_s16(a3);
      v97 = v135;
      v98 = 9;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v99), v95), *(v7 + v99 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 16;
        }

        while (v100 < 0x18);
        v97 += 64;
        v7 += 2 * a2;
        --v98;
      }

      while (v98);
      v101 = v135;
      v102 = v134;
      v103 = 8;
      do
      {
        v104 = 0;
        v105 = -8;
        do
        {
          *&v102[v104] = vrhaddq_u16(*&v101[v104], *&v101[v104 + 64]);
          v105 += 8;
          v104 += 16;
        }

        while (v105 < 0x18);
        v101 += 64;
        v102 += 64;
        --v103;
      }

      while (v103);
      v106 = 2 * a5;
      v107 = v134;
      v9 = 0uLL;
      v108 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v109 = 0;
        v110 = -8;
        do
        {
          v111 = vsubq_s16(*&v107[v109], *(v106 + v109));
          v12 = vpadalq_s16(v12, v111);
          v9 = vmlal_s16(v9, *v111.i8, *v111.i8);
          v11 = vmlal_high_s16(v11, v111, v111);
          v110 += 8;
          v109 += 16;
        }

        while (v110 < 0x18);
        v107 += 64;
        v106 += 2 * a6;
        --v108;
      }

      while (v108);
    }

    else if (a4)
    {
      v112 = vdupq_n_s16(8 - a3);
      v113 = vdupq_n_s16(a3);
      v114 = v135;
      v115 = 9;
      do
      {
        v116 = 0;
        v117 = -8;
        do
        {
          *&v114[v116] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v116), v112), *(v7 + v116 + 2), v113), 3uLL);
          v117 += 8;
          v116 += 16;
        }

        while (v117 < 0x18);
        v114 += 64;
        v7 += 2 * a2;
        --v115;
      }

      while (v115);
      v118 = 8;
      v119 = vdupq_n_s16(8 - a4);
      v120 = vdupq_n_s16(a4);
      v121 = v135;
      v122 = v134;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          *&v122[v123] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v121[v123], v119), *&v121[v123 + 64], v120), 3uLL);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x18);
        v121 += 64;
        v122 += 64;
        --v118;
      }

      while (v118);
      v125 = 2 * a5;
      v126 = v134;
      v9 = 0uLL;
      v127 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v128 = 0;
        v129 = -8;
        do
        {
          v130 = vsubq_s16(*&v126[v128], *(v125 + v128));
          v12 = vpadalq_s16(v12, v130);
          v9 = vmlal_s16(v9, *v130.i8, *v130.i8);
          v11 = vmlal_high_s16(v11, v130, v130);
          v129 += 8;
          v128 += 16;
        }

        while (v129 < 0x18);
        v126 += 64;
        v125 += 2 * a6;
        --v127;
      }

      while (v127);
    }

    else
    {
      v28 = vdupq_n_s16(8 - a3);
      v29 = vdupq_n_s16(a3);
      v30 = v135;
      do
      {
        v31 = 0;
        v32 = -8;
        do
        {
          *&v30[v31] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v31), v28), *(v7 + v31 + 2), v29), 3uLL);
          v32 += 8;
          v31 += 16;
        }

        while (v32 < 0x18);
        v30 += 64;
        v7 += 2 * a2;
        --v27;
      }

      while (v27);
      v33 = 2 * a5;
      v34 = v135;
      v9 = 0uLL;
      v35 = 8;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v36 = 0;
        v37 = -8;
        do
        {
          v38 = vsubq_s16(*&v34[v36], *(v33 + v36));
          v12 = vpadalq_s16(v12, v38);
          v9 = vmlal_s16(v9, *v38.i8, *v38.i8);
          v11 = vmlal_high_s16(v11, v38, v38);
          v37 += 8;
          v36 += 16;
        }

        while (v37 < 0x18);
        v34 += 64;
        v33 += 2 * a6;
        --v35;
      }

      while (v35);
    }
  }

  else if (a4 == 4)
  {
    v39 = 2 * a2;
    v40 = v7 + v39;
    v41 = v135;
    v42 = 8;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        *&v41[v43] = vrhaddq_u16(*(v7 + v43), *(v40 + v43));
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x18);
      v41 += 64;
      v40 += v39;
      v7 += v39;
      --v42;
    }

    while (v42);
    v45 = 2 * a5;
    v46 = v135;
    v9 = 0uLL;
    v47 = 8;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        v50 = vsubq_s16(*&v46[v48], *(v45 + v48));
        v12 = vpadalq_s16(v12, v50);
        v9 = vmlal_s16(v9, *v50.i8, *v50.i8);
        v11 = vmlal_high_s16(v11, v50, v50);
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v46 += 64;
      v45 += 2 * a6;
      --v47;
    }

    while (v47);
  }

  else if (a4)
  {
    v65 = 8;
    v66 = vdupq_n_s16(8 - a4);
    v67 = vdupq_n_s16(a4);
    v68 = 2 * a2;
    v69 = v7 + v68;
    v70 = v135;
    do
    {
      v71 = 0;
      v72 = -8;
      do
      {
        *&v70[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v71), v66), *(v69 + v71), v67), 3uLL);
        v72 += 8;
        v71 += 16;
      }

      while (v72 < 0x18);
      v70 += 64;
      v69 += v68;
      v7 += v68;
      --v65;
    }

    while (v65);
    v73 = 2 * a5;
    v74 = v135;
    v9 = 0uLL;
    v75 = 8;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76));
        v12 = vpadalq_s16(v12, v78);
        v9 = vmlal_s16(v9, *v78.i8, *v78.i8);
        v11 = vmlal_high_s16(v11, v78, v78);
        v77 += 8;
        v76 += 16;
      }

      while (v77 < 0x18);
      v74 += 64;
      v73 += 2 * a6;
      --v75;
    }

    while (v75);
  }

  else
  {
    v8 = 2 * a5;
    v9 = 0uLL;
    v10 = 8;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x18);
      v8 += 2 * a6;
      v7 += 2 * a2;
      --v10;
    }

    while (v10);
  }

  v131 = vaddvq_s32(v12);
  v132 = vaddlvq_u32(vaddq_s32(v11, v9));
  *a7 = v132;
  return v132 - ((v131 * v131) >> 8);
}

uint64_t sub_277B39900()
{
  v0 = MEMORY[0x28223BE20]();
  v131 = *MEMORY[0x277D85DE8];
  v7 = 2 * v0;
  if (v2 == 4)
  {
    v16 = 2 * v1;
    v17 = v130;
    if (v3 == 4)
    {
      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v17[v53] = vrhaddq_u16(*(v7 + v53), *(v7 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x38);
        v17 += 128;
        v7 += v16;
        --v52;
      }

      while (v52);
      v55 = v130;
      v56 = v129;
      v57 = 16;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58] = vrhaddq_u16(*&v55[v58], *&v55[v58 + 128]);
          v59 += 8;
          v58 += 16;
        }

        while (v59 < 0x38);
        v55 += 128;
        v56 += 128;
        --v57;
      }

      while (v57);
      v60 = 2 * v4;
      v61 = v129;
      v9 = 0uLL;
      v62 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          v65 = vsubq_s16(*&v61[v63], *(v60 + v63));
          v12 = vpadalq_s16(v12, v65);
          v9 = vmlal_s16(v9, *v65.i8, *v65.i8);
          v11 = vmlal_high_s16(v11, v65, v65);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x38);
        v61 += 128;
        v60 += 2 * v5;
        --v62;
      }

      while (v62);
    }

    else if (v3)
    {
      v80 = 17;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v17[v81] = vrhaddq_u16(*(v7 + v81), *(v7 + v81 + 2));
          v82 += 8;
          v81 += 16;
        }

        while (v82 < 0x38);
        v17 += 128;
        v7 += v16;
        --v80;
      }

      while (v80);
      v83 = vdupq_n_s16(8 - v3);
      v84 = vdupq_n_s16(v3);
      v85 = v130;
      v86 = v129;
      v87 = 16;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          *&v86[v88] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v88], v83), *&v85[v88 + 128], v84), 3uLL);
          v89 += 8;
          v88 += 16;
        }

        while (v89 < 0x38);
        v85 += 128;
        v86 += 128;
        --v87;
      }

      while (v87);
      v90 = 2 * v4;
      v91 = v129;
      v9 = 0uLL;
      v92 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v93 = 0;
        v94 = -8;
        do
        {
          v95 = vsubq_s16(*&v91[v93], *(v90 + v93));
          v12 = vpadalq_s16(v12, v95);
          v9 = vmlal_s16(v9, *v95.i8, *v95.i8);
          v11 = vmlal_high_s16(v11, v95, v95);
          v94 += 8;
          v93 += 16;
        }

        while (v94 < 0x38);
        v91 += 128;
        v90 += 2 * v5;
        --v92;
      }

      while (v92);
    }

    else
    {
      v18 = 16;
      do
      {
        v19 = 0;
        v20 = -8;
        do
        {
          *&v17[v19] = vrhaddq_u16(*(v7 + v19), *(v7 + v19 + 2));
          v20 += 8;
          v19 += 16;
        }

        while (v20 < 0x38);
        v17 += 128;
        v7 += v16;
        --v18;
      }

      while (v18);
      v21 = 2 * v4;
      v22 = v130;
      v9 = 0uLL;
      v23 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v24 = 0;
        v25 = -8;
        do
        {
          v26 = vsubq_s16(*&v22[v24], *(v21 + v24));
          v12 = vpadalq_s16(v12, v26);
          v9 = vmlal_s16(v9, *v26.i8, *v26.i8);
          v11 = vmlal_high_s16(v11, v26, v26);
          v25 += 8;
          v24 += 16;
        }

        while (v25 < 0x38);
        v22 += 128;
        v21 += 2 * v5;
        --v23;
      }

      while (v23);
    }
  }

  else if (v2)
  {
    v27 = vdupq_n_s16(8 - v2);
    v28 = vdupq_n_s16(v2);
    v29 = 2 * v1;
    v30 = v130;
    if (v3 == 4)
    {
      v96 = 17;
      do
      {
        v97 = 0;
        v98 = -8;
        do
        {
          *&v30[v97] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v97), v27), *(v7 + v97 + 2), v28), 3uLL);
          v98 += 8;
          v97 += 16;
        }

        while (v98 < 0x38);
        v30 += 128;
        v7 += v29;
        --v96;
      }

      while (v96);
      v99 = v130;
      v100 = v129;
      v101 = 16;
      do
      {
        v102 = 0;
        v103 = -8;
        do
        {
          *&v100[v102] = vrhaddq_u16(*&v99[v102], *&v99[v102 + 128]);
          v103 += 8;
          v102 += 16;
        }

        while (v103 < 0x38);
        v99 += 128;
        v100 += 128;
        --v101;
      }

      while (v101);
      v104 = 2 * v4;
      v105 = v129;
      v9 = 0uLL;
      v106 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          v109 = vsubq_s16(*&v105[v107], *(v104 + v107));
          v12 = vpadalq_s16(v12, v109);
          v9 = vmlal_s16(v9, *v109.i8, *v109.i8);
          v11 = vmlal_high_s16(v11, v109, v109);
          v108 += 8;
          v107 += 16;
        }

        while (v108 < 0x38);
        v105 += 128;
        v104 += 2 * v5;
        --v106;
      }

      while (v106);
    }

    else if (v3)
    {
      v110 = 17;
      do
      {
        v111 = 0;
        v112 = -8;
        do
        {
          *&v30[v111] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v111), v27), *(v7 + v111 + 2), v28), 3uLL);
          v112 += 8;
          v111 += 16;
        }

        while (v112 < 0x38);
        v30 += 128;
        v7 += v29;
        --v110;
      }

      while (v110);
      v113 = vdupq_n_s16(8 - v3);
      v114 = vdupq_n_s16(v3);
      v115 = v130;
      v116 = v129;
      v117 = 16;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          *&v116[v118] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v115[v118], v113), *&v115[v118 + 128], v114), 3uLL);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x38);
        v115 += 128;
        v116 += 128;
        --v117;
      }

      while (v117);
      v120 = 2 * v4;
      v121 = v129;
      v9 = 0uLL;
      v122 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v123 = 0;
        v124 = -8;
        do
        {
          v125 = vsubq_s16(*&v121[v123], *(v120 + v123));
          v12 = vpadalq_s16(v12, v125);
          v9 = vmlal_s16(v9, *v125.i8, *v125.i8);
          v11 = vmlal_high_s16(v11, v125, v125);
          v124 += 8;
          v123 += 16;
        }

        while (v124 < 0x38);
        v121 += 128;
        v120 += 2 * v5;
        --v122;
      }

      while (v122);
    }

    else
    {
      v31 = 16;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v32), v27), *(v7 + v32 + 2), v28), 3uLL);
          v33 += 8;
          v32 += 16;
        }

        while (v33 < 0x38);
        v30 += 128;
        v7 += v29;
        --v31;
      }

      while (v31);
      v34 = 2 * v4;
      v35 = v130;
      v9 = 0uLL;
      v36 = 16;
      v11 = 0uLL;
      v12 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v35[v37], *(v34 + v37));
          v12 = vpadalq_s16(v12, v39);
          v9 = vmlal_s16(v9, *v39.i8, *v39.i8);
          v11 = vmlal_high_s16(v11, v39, v39);
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x38);
        v35 += 128;
        v34 += 2 * v5;
        --v36;
      }

      while (v36);
    }
  }

  else if (v3 == 4)
  {
    v40 = 2 * v1;
    v41 = v7 + v40;
    v42 = v130;
    v43 = 16;
    do
    {
      v44 = 0;
      v45 = -8;
      do
      {
        *&v42[v44] = vrhaddq_u16(*(v7 + v44), *(v41 + v44));
        v45 += 8;
        v44 += 16;
      }

      while (v45 < 0x38);
      v42 += 128;
      v41 += v40;
      v7 += v40;
      --v43;
    }

    while (v43);
    v46 = 2 * v4;
    v47 = v130;
    v9 = 0uLL;
    v48 = 16;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        v51 = vsubq_s16(*&v47[v49], *(v46 + v49));
        v12 = vpadalq_s16(v12, v51);
        v9 = vmlal_s16(v9, *v51.i8, *v51.i8);
        v11 = vmlal_high_s16(v11, v51, v51);
        v50 += 8;
        v49 += 16;
      }

      while (v50 < 0x38);
      v47 += 128;
      v46 += 2 * v5;
      --v48;
    }

    while (v48);
  }

  else if (v3)
  {
    v66 = vdupq_n_s16(8 - v3);
    v67 = vdupq_n_s16(v3);
    v68 = 2 * v1;
    v69 = v7 + v68;
    v70 = v130;
    v71 = 16;
    do
    {
      v72 = 0;
      v73 = -8;
      do
      {
        *&v70[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v72), v66), *(v69 + v72), v67), 3uLL);
        v73 += 8;
        v72 += 16;
      }

      while (v73 < 0x38);
      v70 += 128;
      v69 += v68;
      v7 += v68;
      --v71;
    }

    while (v71);
    v74 = 2 * v4;
    v75 = v130;
    v9 = 0uLL;
    v76 = 16;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v77 = 0;
      v78 = -8;
      do
      {
        v79 = vsubq_s16(*&v75[v77], *(v74 + v77));
        v12 = vpadalq_s16(v12, v79);
        v9 = vmlal_s16(v9, *v79.i8, *v79.i8);
        v11 = vmlal_high_s16(v11, v79, v79);
        v78 += 8;
        v77 += 16;
      }

      while (v78 < 0x38);
      v75 += 128;
      v74 += 2 * v5;
      --v76;
    }

    while (v76);
  }

  else
  {
    v8 = 2 * v4;
    v9 = 0uLL;
    v10 = 16;
    v11 = 0uLL;
    v12 = 0uLL;
    do
    {
      v13 = 0;
      v14 = -8;
      do
      {
        v15 = vsubq_s16(*(v7 + v13), *(v8 + v13));
        v12 = vpadalq_s16(v12, v15);
        v9 = vmlal_s16(v9, *v15.i8, *v15.i8);
        v11 = vmlal_high_s16(v11, v15, v15);
        v14 += 8;
        v13 += 16;
      }

      while (v14 < 0x38);
      v8 += 2 * v5;
      v7 += 2 * v1;
      --v10;
    }

    while (v10);
  }

  v126 = vaddvq_s32(v12);
  v127 = vaddlvq_u32(vaddq_s32(v11, v9));
  *v6 = v127;
  return v127 - ((v126 * v126) >> 10);
}

uint64_t sub_277B3A0DC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  v7 = 0;
  v18[5] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 40);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 32);
  return sub_2779960F8(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B3A1D4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  v7 = 0;
  v18[9] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 72);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 64);
  return sub_2779961A0(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B3A2CC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 80);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 64);
  return sub_277996248(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B3A3C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 144);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 128);
  return sub_2779962D4(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B3A4C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 272);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 256);
  return sub_277996360(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B3A5C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[31] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 288);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 288);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 256);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 288);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 288);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 288);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 288);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 256);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 288);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 288);
    }

LABEL_35:
    v63 = v71;
    return sub_2779963EC(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 256);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 256);
LABEL_38:
    v63 = v72;
    return sub_2779963EC(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_2779963EC(v8, a2, a5, a6, a7);
}

uint64_t sub_277B3AA50(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[63] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 544);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 544);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 544);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 544);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 544);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 544);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 544);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 544);
    }

LABEL_35:
    v63 = v71;
    return sub_277996494(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 512);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 512);
LABEL_38:
    v63 = v72;
    return sub_277996494(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277996494(v8, a2, a5, a6, a7);
}

uint64_t sub_277B3AEDC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[127] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 1056);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 1056);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 1056);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 1056);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 1056);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 1056);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 1056);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 1056);
    }

LABEL_35:
    v63 = v71;
    return sub_27799653C(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 1024);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 1024);
LABEL_38:
    v63 = v72;
    return sub_27799653C(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_27799653C(v8, a2, a5, a6, a7);
}

uint64_t sub_277B3B368(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v10 = 2 * a2;
    v11 = v74;
    if (a4 == 4)
    {
      v28 = 17;
      do
      {
        v29 = 0;
        v30 = -8;
        do
        {
          *&v11[v29] = vrhaddq_u16(*(v7 + v29), *(v7 + v29 + 2));
          v30 += 8;
          v29 += 16;
        }

        while (v30 < 0x18);
        v11 += 64;
        v7 += v10;
        --v28;
      }

      while (v28);
      v31 = v74;
      v32 = v73;
      v33 = 16;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*&v31[v34], *&v31[v34 + 64]);
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v31 += 64;
        v32 += 64;
        --v33;
      }

      while (v33);
    }

    else
    {
      if (!a4)
      {
        v12 = 16;
        do
        {
          v13 = 0;
          v14 = -8;
          do
          {
            *&v11[v13] = vrhaddq_u16(*(v7 + v13), *(v7 + v13 + 2));
            v14 += 8;
            v13 += 16;
          }

          while (v14 < 0x18);
          v11 += 64;
          v7 += v10;
          --v12;
        }

        while (v12);
        goto LABEL_40;
      }

      v45 = 17;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v11[v46] = vrhaddq_u16(*(v7 + v46), *(v7 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x18);
        v11 += 64;
        v7 += v10;
        --v45;
      }

      while (v45);
      v48 = vdupq_n_s16(8 - a4);
      v49 = vdupq_n_s16(a4);
      v50 = v74;
      v51 = v73;
      v52 = 16;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v50[v53], v48), *&v50[v53 + 64], v49), 3uLL);
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v50 += 64;
        v51 += 64;
        --v52;
      }

      while (v52);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    v15 = vdupq_n_s16(8 - a3);
    v16 = vdupq_n_s16(a3);
    v17 = 2 * a2;
    v18 = v74;
    if (a4 == 4)
    {
      v55 = 17;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          *&v18[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v56), v15), *(v7 + v56 + 2), v16), 3uLL);
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x18);
        v18 += 64;
        v7 += v17;
        --v55;
      }

      while (v55);
      v58 = v74;
      v59 = v73;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    else
    {
      if (!a4)
      {
        v19 = 16;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v20), v15), *(v7 + v20 + 2), v16), 3uLL);
            v21 += 8;
            v20 += 16;
          }

          while (v21 < 0x18);
          v18 += 64;
          v7 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v63 = 17;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v18[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v64), v15), *(v7 + v64 + 2), v16), 3uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x18);
        v18 += 64;
        v7 += v17;
        --v63;
      }

      while (v63);
      v66 = vdupq_n_s16(8 - a4);
      v67 = vdupq_n_s16(a4);
      v68 = v74;
      v69 = v73;
      v70 = 16;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v69[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v68[v71], v66), *&v68[v71 + 64], v67), 3uLL);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x18);
        v68 += 64;
        v69 += 64;
        --v70;
      }

      while (v70);
    }

LABEL_67:
    v44 = v73;
    return sub_2779965E4(v44 >> 1, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v22 = 2 * a2;
    v23 = v74;
    v24 = 16;
    v25 = v7 + v22;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v23[v26] = vrhaddq_u16(*(v7 + v26), *(v25 + v26));
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += 64;
      v25 += v22;
      v7 += v22;
      --v24;
    }

    while (v24);
    goto LABEL_40;
  }

  if (a4)
  {
    v36 = vdupq_n_s16(8 - a4);
    v37 = vdupq_n_s16(a4);
    v38 = 2 * a2;
    v39 = v7 + v38;
    v40 = v74;
    v41 = 16;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        *&v40[v42] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v42), v36), *(v39 + v42), v37), 3uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v40 += 64;
      v39 += v38;
      v7 += v38;
      --v41;
    }

    while (v41);
LABEL_40:
    v44 = v74;
    return sub_2779965E4(v44 >> 1, 32, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_2779965E4(v8, a2, a5, a6, a7);
}