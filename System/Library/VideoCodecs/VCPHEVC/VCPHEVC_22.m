uint64_t sub_2774DA778(uint64_t result, unsigned int a2)
{
  v49[23] = *MEMORY[0x277D85DE8];
  if (*(result + 516))
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    v5 = result + (a2 << 8);
    v44 = v5 + 672;
    v6 = *(result + 16);
    v42 = *(v6 + 222);
    v7 = *(v6 + 223);
    LOBYTE(v6) = *(result + 556);
    v8 = -1 << v6;
    v9 = 1 << (*(result + 557) + v6);
    v10 = *(result + 516);
    v46 = v5;
    v11 = (v5 + 676);
    v12 = v48;
    do
    {
      v13 = v8 + *(v11 - 2);
      *v12 = v13;
      if (v13 || *v11)
      {
        v4 |= (1 << v3);
      }

      result = sub_2773FB780(v2 + 1608, (v4 >> v3++) & 1, 1);
      v12 += 3;
      v11 += 8;
    }

    while (v10 != v3);
    if (*(*(v2 + 16) + 201))
    {
      v14 = 0;
      v15 = 0;
      v16 = (v46 + 686);
      v17 = v49;
      do
      {
        v18 = *(v16 - 2);
        v19 = *(v16 - 3) - v9;
        *(v17 - 1) = v19;
        *v17 = v18 - v9;
        if (v19)
        {
          v20 = 0;
        }

        else
        {
          v20 = v18 == v9;
        }

        if (!v20 || *(v16 - 1) || *v16)
        {
          v15 |= (1 << v14);
        }

        result = sub_2773FB780(v2 + 1608, (v15 >> v14++) & 1, 1);
        v16 += 8;
        v17 += 3;
      }

      while (v10 != v14);
    }

    else
    {
      v15 = 0;
    }

    v21 = 0;
    v43 = v10;
    do
    {
      v22 = v44 + 16 * v21;
      v47 = v4;
      if (v4)
      {
        v23 = v48[3 * v21];
        if (v23 <= 0)
        {
          v24 = -2 * v23;
        }

        else
        {
          v24 = 2 * v23 - 1;
        }

        v25 = v24 + 1;
        v26 = __clz(v25);
        sub_2773FB780(v2 + 1608, (v25 - (0x80000000 >> v26)) | (0x80000000 >> v26), 63 - 2 * v26);
        v27 = *(v22 + 4) >> v42;
        if (v27 <= 0)
        {
          v28 = -2 * v27;
        }

        else
        {
          v28 = 2 * v27 - 1;
        }

        v29 = v28 + 1;
        v30 = __clz(v29);
        result = sub_2773FB780(v2 + 1608, (v29 - (0x80000000 >> v30)) | (0x80000000 >> v30), 63 - 2 * v30);
      }

      v45 = v15;
      if (v15)
      {
        v31 = 0;
        v32 = 1;
        do
        {
          v33 = v32;
          v34 = v48[3 * v21 + 1 + v31];
          if (v34 <= 0)
          {
            v35 = -2 * v34;
          }

          else
          {
            v35 = 2 * v34 - 1;
          }

          v36 = v35 + 1;
          v37 = __clz(v36);
          sub_2773FB780(v2 + 1608, (v36 - (0x80000000 >> v37)) | (0x80000000 >> v37), 63 - 2 * v37);
          v38 = ((*(v22 + 8 + 2 * v31) << 7 >> *(v2 + 662)) + *(v22 + 12 + 2 * v31) - 128) >> v7;
          if (v38 <= 0)
          {
            v39 = -2 * v38;
          }

          else
          {
            v39 = 2 * v38 - 1;
          }

          v40 = v39 + 1;
          v41 = __clz(v40);
          result = sub_2773FB780(v2 + 1608, (v40 - (0x80000000 >> v41)) | (0x80000000 >> v41), 63 - 2 * v41);
          v32 = 0;
          v31 = 1;
        }

        while ((v33 & 1) != 0);
      }

      ++v21;
      v4 = v47 >> 1;
      v15 = v45 >> 1;
    }

    while (v21 != v43);
  }

  return result;
}

uint64_t sub_2774DAAA4(uint64_t result)
{
  if (result >= 2)
  {
    v1 = __clz(result);
    if (v1)
    {
      v2 = ((byte_27753C3A4[(result << (v1 + 1)) >> 24] << 12) | 0x200000u) >> ((v1 + 1) >> 1);
    }

    else
    {
      v2 = (11585 * (((byte_27753C3A4[(result << (v1 + 1)) >> 24] << 12) | 0x200000u) >> ((v1 + 1) >> 1))) >> 14;
    }

    return (v2 + 16) >> 5;
  }

  return result;
}

uint64_t sub_2774DAAF8(uint64_t result, int a2, int a3, int a4, int a5, uint64_t *a6, uint64_t *a7)
{
  v7 = 0;
  v8 = *(result + 16);
  v9 = *(v8 + 2117);
  v10 = a3 - 1;
  v11 = (v9 - 1) & a2;
  v12 = word_27754911C[(((v9 - 1) & (a3 - 1 + a5)) - v9 + 64) >> 2];
  v13 = a2 - 1;
  v14 = a5 + a3;
  if (((v12 >> (v11 >> 2)) & 1) != 0 && ((v14 | v13) & 0x80000000) == 0)
  {
    v15 = *(result + 8);
    if (*(v15 + 520) < a2 || *(v15 + 524) <= v14)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v15 + 880) + 16 * *(v15 + 848) * (v14 >> 2) + 16 * (v13 >> 2);
    }
  }

  v16 = *(v8 + 2112);
  *a6 = v7;
  if (((v14 - 1) | v13) < 0 || (v17 = *(result + 8), *(v17 + 520) < a2) || *(v17 + 524) < v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v17 + 880) + 16 * *(v17 + 848) * ((v14 - 1) >> 2) + 16 * (v13 >> 2);
  }

  v19 = 0;
  a6[1] = v18;
  v20 = *(*(result + 16) + 2117);
  v21 = (v20 - 1) & a3;
  v22 = (((v20 - 1) & (v13 + a4)) - v20 + 64) >> 2;
  v23 = a4 + a2;
  if (((word_27753C384[v21 >> 2] >> v22) & 1) != 0 && ((v23 | v10) & 0x80000000) == 0)
  {
    v24 = *(result + 8);
    if (*(v24 + 520) <= v23 || *(v24 + 524) <= v10)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v24 + 880) + 16 * *(v24 + 848) * (v10 >> 2) + 16 * (v23 >> 2);
    }
  }

  v25 = 1 << (v16 - 1);
  *a7 = v19;
  v26 = v23 - v25;
  if ((v26 | v10) < 0 || (v27 = *(result + 8), *(v27 + 520) <= v26) || *(v27 + 524) <= v10)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v27 + 880) + 16 * *(v27 + 848) * (v10 >> 2) + 16 * (v26 >> 2);
  }

  a7[1] = v28;
  v29 = a2 - v25;
  if ((v29 | v10) < 0 || (v30 = *(result + 8), *(v30 + 520) <= v29) || *(v30 + 524) <= v10)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v30 + 880) + 16 * *(v30 + 848) * (v10 >> 2) + 16 * (v29 >> 2);
  }

  a7[2] = v31;
  return result;
}

uint64_t sub_2774DAD24(uint64_t a1, int a2, int a3, unsigned int a4, int a5, int a6, int a7, int *a8)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = 0;
  v18[1] = 0;
  memset(v17, 0, sizeof(v17));
  sub_2774DAAF8(a1, a2, a3, a6, a7, v18, v17);
  return sub_2773F93C8(a1, a2, a3, a4, a5, a6, a7, a8, v18, v17, 1);
}

uint64_t sub_2774DAE0C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a3;
  v37[1] = *MEMORY[0x277D85DE8];
  v18 = *(a2 + 9) >> 4;
  if (v18 == 15)
  {
    v19 = *(a1 + (a2[2] & 0xF0) + 1672);
    v20 = *a2;
    return sub_2774DB144(a1, v19, 0, v20, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  v22 = *(a2 + 8) >> 4;
  if (v22 == 15)
  {
    return sub_2774DB144(a1, *(a1 + 16 * v18 + 1928), 1, a2[1], a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  v19 = *(a1 + 16 * v22 + 1672);
  v23 = *(a1 + 16 * v18 + 1928);
  v20 = *a2;
  v24 = a2[1];
  if (v19 == v23 && v20 == v24)
  {
    return sub_2774DB144(a1, v19, 0, v20, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  v36 = 0;
  v37[0] = 0;
  v34 = 0;
  v35 = 0;
  v32 = v19;
  v33 = v23;
  v31 = v20;
  sub_2773F8D28(a1, v19, v20, a3, a4, a5, a6, &v36, &v34);
  result = sub_2773F8D28(a1, v33, v24, v15, a4, a5, a6, v37, &v35);
  if (a8)
  {
    v26 = *(a2 + 8) >> 4;
    if (*(a1 + 2 * v26 + 5120) == 1)
    {
      v27 = *(a2 + 9) >> 4;
      v28 = v32;
    }

    else
    {
      v27 = *(a2 + 9) >> 4;
      v28 = v32;
      if ((*(a1 + 2 * v27 + 5152) & 1) == 0)
      {
        result = sub_2774118E4(a1 + 3224, a5, a6, v31, *(v32 + 416), v36, v24, *(v33 + 416), v37[0], a7, a8);
        goto LABEL_17;
      }
    }

    result = sub_277411B9C(a1 + 3224, a5, a6, *(a1 + 664), a1 + 16 * v26 + 672, v31, *(v28 + 416), v36, a1 + 16 * v27 + 928, v24, *(v33 + 416), v37[0]);
  }

LABEL_17:
  if (a10 && *(v32 + 532))
  {
    v29 = *(a2 + 8) >> 4;
    if (*(a1 + 2 * v29 + 5121) == 1)
    {
      v30 = *(a2 + 9) >> 4;
    }

    else
    {
      v30 = *(a2 + 9) >> 4;
      if ((*(a1 + 2 * v30 + 5153) & 1) == 0)
      {
        return sub_277411A3C(a1 + 3224, (a5 >> 1), (a6 >> 1), v31, *(v32 + 424), v34, v24, *(v33 + 424), v35, a9, a10);
      }
    }

    return sub_277411D10(a1 + 3224, (a5 >> 1), (a6 >> 1), *(a1 + 668), a1 + 16 * v29 + 680, v31, *(v32 + 424), v34, a1 + 16 * v30 + 936, v24, *(v33 + 424), v35);
  }

  return result;
}

uint64_t sub_2774DB144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = MEMORY[0x28223BE20]();
  v21 = v20;
  v22 = v14;
  v23 = v13;
  v55 = a13;
  v51 = a12;
  vars8 = a11;
  v54 = a10;
  v24 = a9;
  STACK[0x4078] = *MEMORY[0x277D85DE8];
  v25 = -3 - v20;
  v26 = *(v14 + 520);
  v27 = v26 + 2;
  v28 = v18 + (v16 >> 2);
  if (v28 < v26 + 2)
  {
    v27 = v18 + (v16 >> 2);
  }

  if (v28 <= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v27;
  }

  v30 = -3 - v24;
  v31 = v19 + (v16 >> 18);
  v32 = *(v14 + 524);
  v33 = (v18 >> 1) + (v16 >> 3);
  v34 = v32 + 2;
  if (v31 < v32 + 2)
  {
    v34 = v19 + (v16 >> 18);
  }

  if (v31 <= v30)
  {
    v35 = v30;
  }

  else
  {
    v35 = v34;
  }

  v36 = v33 < v26 >> 1;
  v37 = v26 >> 1;
  if (v36)
  {
    v37 = (v18 >> 1) + (v16 >> 3);
  }

  if (v33 <= ~(v20 >> 1))
  {
    v38 = ~(v20 >> 1);
  }

  else
  {
    v38 = v37;
  }

  vars0_4 = v38;
  v39 = v32 >> 1;
  v40 = (v19 >> 1) + (v16 >> 19);
  if (v40 < v32 >> 1)
  {
    v39 = (v19 >> 1) + (v16 >> 19);
  }

  v50 = v24 >> 1;
  if (v40 <= ~(v24 >> 1))
  {
    v41 = ~(v24 >> 1);
  }

  else
  {
    v41 = v39;
  }

  v58 = v41;
  v52 = v17;
  v57 = v15;
  v56 = v17 + v15;
  if ((v16 & 0x10001) != 0 || *(*(v13 + 4768) + 221) != 1 || *(v13 + 32 * v15 + ((*(v56 + 8) >> 3) & 0x1E) + 5120) == 1)
  {
    LODWORD(v53) = v16;
    HIDWORD(v53) = v16 & 0xFFFF0000;
  }

  else
  {
    v53 = 0;
  }

  sub_2773F8C98(v14, v35 + v24);
  result = (*(&off_2886621E0[2 * *(v22 + 532)] + *(v22 + 531)))(v29, v35, vars0_4, v58, v21, v24, v22);
  if (vars8)
  {
    v43 = *(v56 + 8) >> 4;
    if (*(v23 + 32 * v57 + 2 * v43 + 5120))
    {
      v44 = v23 + (v57 << 8) + 16 * v43;
      v45 = *(v23 + 664);
      (*(v23 + ((8 * (((HIDWORD(v53) | v53) & 3) != 0)) | (16 * (((HIDWORD(v53) | v53) & 0x30000) != 0))) + 3288))(v21, v24);
      result = (*(v23 + 3352))(v21, v24, v45, v44 + 672, v21, &a9, v54, vars8);
    }

    else
    {
      result = (*(v23 + ((8 * (((HIDWORD(v53) | v53) & 3) != 0)) | (16 * (((HIDWORD(v53) | v53) & 0x30000) != 0))) + 3224))(v21, v24);
    }
  }

  if (v55 && *(v22 + 532))
  {
    v46 = *(v56 + 8) >> 4;
    if (*(v23 + 32 * v57 + 2 * v46 + 5121))
    {
      v47 = v23 + (v57 << 8) + 16 * v46;
      v48 = *(v23 + 668);
      (*(v23 + ((8 * ((*(v52 + 4 * v57) & 7) != 0)) | (16 * ((*(v52 + 4 * v57) & 0x70000) != 0))) + 3320))(v21 & 0xFFFFFFFE, v50);
      return (*(v23 + 3360))(v21 & 0xFFFFFFFE, v50, v48, v47 + 680, (v21 & 0xFFFFFFFE), &a9, v51, v55);
    }

    else
    {
      v49 = *(v23 + ((8 * ((*(v52 + 4 * v57) & 7) != 0)) | (16 * ((*(v52 + 4 * v57) & 0x70000) != 0))) + 3256);

      return v49(v21 & 0xFFFFFFFE, v50);
    }
  }

  return result;
}

uint64_t sub_2774DB5F4(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v6 = *(a6 + 520);
    v7 = (a3 + result - (v6 >> 1));
    if (v7 >= 1)
    {
      v8 = (*(a6 + 408) + ((*(a6 + 424) * (a2 - 1) + ((v6 & 0xFFFFFFFE) - 2)) << *(a6 + 531)));
      v11 = *v8;
      v9 = v8 + 2;
      v10 = v11;
      v12 = (v7 + 3) & 0xFFFFFFFC;
      v13 = vdupq_n_s64(v7 - 1);
      v14 = xmmword_27750D310;
      v15 = xmmword_27750D320;
      v16 = vdupq_n_s64(4uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v13, v15));
        if (vuzp1_s16(v17, *v13.i8).u8[0])
        {
          *(v9 - 1) = v10;
        }

        if (vuzp1_s16(v17, *&v13).i8[2])
        {
          *v9 = v10;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14))).i32[1])
        {
          v9[1] = v10;
          v9[2] = v10;
        }

        v14 = vaddq_s64(v14, v16);
        v15 = vaddq_s64(v15, v16);
        v9 += 4;
        v12 -= 4;
      }

      while (v12);
    }
  }

  if (a4)
  {
    v18 = *(a6 + 524);
    v19 = (a3 + a2 - (v18 >> 1));
    if (v19 >= 1)
    {
      v20 = *(a6 + 424);
      v21 = *(a6 + 408);
      v22 = (v20 * ((v18 >> 1) - 1) + 2 * result - 2) << *(a6 + 531);
      v23 = *(v21 + v22);
      v24 = (2 * v20) & 0xFFFFFFFFFFFFFFFCLL;
      v25 = (v21 + v24 + v22);
      do
      {
        *v25 = v23;
        v25 = (v25 + v24);
        --v19;
      }

      while (v19);
    }
  }

  return result;
}

uint64_t sub_2774DB734(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v6 = *(a6 + 520);
    v7 = (a3 + result - v6);
    if (v7 >= 1)
    {
      v8 = (*(a6 + 400) + ((v6 + *(a6 + 416) * (a2 - 1) - 1) << *(a6 + 531)));
      v11 = *v8;
      v9 = v8 + 4;
      v10 = v11;
      v12 = vdupq_n_s64(v7 - 1);
      v13 = (v7 + 7) & 0xFFFFFFF8;
      v14 = xmmword_27750D2F0;
      v15 = xmmword_27750D300;
      v16 = xmmword_27750D310;
      v17 = xmmword_27750D320;
      v18 = vdupq_n_s64(8uLL);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v12, v17));
        if (vuzp1_s8(vuzp1_s16(v19, *v12.i8), *v12.i8).u8[0])
        {
          *(v9 - 3) = v10;
        }

        if (vuzp1_s8(vuzp1_s16(v19, *&v12), *&v12).i8[1])
        {
          *(v9 - 2) = v10;
        }

        if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v16))), *&v12).i8[2])
        {
          *(v9 - 1) = v10;
          *v9 = v10;
        }

        v20 = vmovn_s64(vcgeq_u64(v12, v15));
        if (vuzp1_s8(*&v12, vuzp1_s16(v20, *&v12)).i32[1])
        {
          v9[1] = v10;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(v20, *&v12)).i8[5])
        {
          v9[2] = v10;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v14)))).i8[6])
        {
          v9[3] = v10;
          v9[4] = v10;
        }

        v15 = vaddq_s64(v15, v18);
        v16 = vaddq_s64(v16, v18);
        v17 = vaddq_s64(v17, v18);
        v9 += 8;
        v14 = vaddq_s64(v14, v18);
        v13 -= 8;
      }

      while (v13);
    }
  }

  if (a4)
  {
    v21 = *(a6 + 524);
    v22 = (a3 + a2 - v21);
    if (v22 >= 1)
    {
      v23 = *(a6 + 416);
      v24 = *(a6 + 400);
      v25 = (v23 * (v21 - 1) + result - 1) << *(a6 + 531);
      v26 = *(v24 + v25);
      v27 = 2 * v23;
      v28 = (v24 + v25 + 2 * v23);
      do
      {
        *v28 = v26;
        v28 = (v28 + v27);
        --v22;
      }

      while (v22);
    }
  }

  return result;
}

uint64_t sub_2774DB8E4(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6)
{
  if (a5)
  {
    v6 = *(a6 + 520);
    v7 = (a3 + result - (v6 >> 1));
    if (v7 >= 1)
    {
      v8 = (*(a6 + 408) + ((*(a6 + 424) * (a2 - 1) + ((v6 & 0xFFFFFFFE) - 2)) << *(a6 + 531)));
      v11 = *v8;
      v9 = v8 + 4;
      v10 = v11;
      v12 = vdupq_n_s64(v7 - 1);
      v13 = (v7 + 7) & 0xFFFFFFF8;
      v14 = xmmword_27750D2F0;
      v15 = xmmword_27750D300;
      v16 = xmmword_27750D310;
      v17 = xmmword_27750D320;
      v18 = vdupq_n_s64(8uLL);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v12, v17));
        if (vuzp1_s8(vuzp1_s16(v19, *v12.i8), *v12.i8).u8[0])
        {
          *(v9 - 3) = v10;
        }

        if (vuzp1_s8(vuzp1_s16(v19, *&v12), *&v12).i8[1])
        {
          *(v9 - 2) = v10;
        }

        if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v16))), *&v12).i8[2])
        {
          *(v9 - 1) = v10;
          *v9 = v10;
        }

        v20 = vmovn_s64(vcgeq_u64(v12, v15));
        if (vuzp1_s8(*&v12, vuzp1_s16(v20, *&v12)).i32[1])
        {
          v9[1] = v10;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(v20, *&v12)).i8[5])
        {
          v9[2] = v10;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v14)))).i8[6])
        {
          v9[3] = v10;
          v9[4] = v10;
        }

        v15 = vaddq_s64(v15, v18);
        v16 = vaddq_s64(v16, v18);
        v17 = vaddq_s64(v17, v18);
        v9 += 8;
        v14 = vaddq_s64(v14, v18);
        v13 -= 8;
      }

      while (v13);
    }
  }

  if (a4)
  {
    v21 = *(a6 + 524);
    v22 = (a3 + a2 - (v21 >> 1));
    if (v22 >= 1)
    {
      v23 = *(a6 + 424);
      v24 = *(a6 + 408);
      v25 = (v23 * ((v21 >> 1) - 1) + 2 * result - 2) << *(a6 + 531);
      v26 = *(v24 + v25);
      v27 = v23 & 0xFFFFFFFFFFFFFFFELL;
      v28 = (v24 + v27 + v25);
      do
      {
        *v28 = v26;
        v28 = (v28 + v27);
        --v22;
      }

      while (v22);
    }
  }

  return result;
}

void *sub_2774DBAA8(void *result, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v10 = result;
  if (a5)
  {
    v11 = *(a6 + 520);
    v12 = (a3 + result - v11);
    if (v12 >= 1)
    {
      v13 = (v11 + *(a6 + 416) * (a2 - 1) - 1) << *(a6 + 531);
      result = memset((*(a6 + 400) + v13 + 1), *(*(a6 + 400) + v13), v12);
    }
  }

  if (a4)
  {
    v14 = *(a6 + 524);
    v15 = (a3 + a2 - v14);
    if (v15 >= 1)
    {
      v16 = *(a6 + 416);
      v17 = *(a6 + 400);
      v18 = (v16 * (v14 - 1) + v10 - 1) << *(a6 + 531);
      v19 = *(v17 + v18);
      v20 = (v17 + v16 + v18);
      do
      {
        *v20 = v19;
        v20 += v16;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

void sub_2774DBB80(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 5320);
  v7 = *(v6 + 576);
  *(a1 + 1168) = *(a3 + 512);
  *(a1 + 488) = *(v6 + 632);
  *(a1 + 1208) = *(v6 + 616);
  *a1 = 0;
  v8 = *(v6 + 40);
  v9 = *(v8 + 2117);
  *(a1 + 8) = *(v8 + 2113);
  *(a1 + 12) = v9;
  *(a1 + 16) = *(v8 + 2120);
  *(a1 + 24) = *(v8 + 2112);
  v10 = *(v7 + 650);
  if (v10 == 10)
  {
    sub_2774A8798(a1, a3);
    *(a1 + 1088) = sub_2774DCB44;
    *(a1 + 1096) = sub_2774DCA3C;
    *(a1 + 1104) = sub_2774DC8F4;
    *(a1 + 1112) = sub_2774DC7AC;
    *(a1 + 1120) = sub_2774DC700;
    *(a1 + 1128) = sub_2774DC59C;
    *(a1 + 1136) = sub_2774DC420;
    *(a1 + 1144) = sub_2774DC260;
    *(a1 + 1152) = sub_2774DC0A0;
    *(a1 + 1160) = sub_2774DBF80;
  }

  else
  {
    if (v10 != 8)
    {
      return;
    }

    sub_2774A8798(a1, a3);
    *(a1 + 1120) = sub_2774DCD48;
    *(a1 + 1160) = sub_2774DCC30;
    *(a1 + 1088) = sub_2774D03D8;
    *(a1 + 1096) = sub_2774D0098;
    *(a1 + 1104) = sub_2774CFB6C;
    *(a1 + 1112) = sub_2774CF640;
    *(a1 + 1128) = sub_2774CF11C;
    *(a1 + 1136) = sub_2774CED7C;
    *(a1 + 1144) = sub_2774CE7CC;
    *(a1 + 1152) = sub_2774CE21C;
  }

  v11 = *(v7 + 573);
  *(a1 + 1172) = v11;
  *(a1 + 1176) = *(v7 + 574);
  *(a1 + 1080) = *(*(v6 + 40) + 2097);
  if (v11 == 2)
  {
    *(a1 + 1224) = 2;
    if (*(v7 + 650) == 10)
    {
      return;
    }
  }

  else
  {
    *(a1 + 1224) = *(a1 + 30);
  }

  sub_2774A8600(a1);
  v12 = *(a1 + 20) * *(a1 + 16);
  v13 = *(a1 + 1192);
  v14 = *(a1 + 1184);
  v15 = (v13 - v14) >> 1;
  if (v12 <= v15)
  {
    if (v12 >= v15)
    {
      goto LABEL_23;
    }

    v20 = v14 + 2 * v12;
  }

  else
  {
    v16 = v12 - v15;
    v17 = *(a1 + 1200);
    if (v16 > (v17 - v13) >> 1)
    {
      if ((v12 & 0x80000000) == 0)
      {
        v18 = v17 - v14;
        if (v18 > v12)
        {
          v12 = v18;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v12;
        }

        if ((v19 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    bzero(*(a1 + 1192), 2 * v16);
    v20 = v13 + 2 * v16;
  }

  *(a1 + 1192) = v20;
LABEL_23:
  v21 = sub_2774BD078(a1 + 496, *(v7 + 576), *(v7 + 580), *(*(v6 + 40) + 2096), *(v7 + 456), *(*(v6 + 40) + 2099), *(v6 + 648), *(a1 + 1172) == 3, a3 + 657);
  sub_2774BF164(a1 + 496, a2, *(*(v6 + 40) + 2097));
  if (v21)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("RDCost init failed in SAOEnc\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "RDCost init failed in SAOEnc\n");
    }
  }

  else
  {
    sub_2774BF0E4(a1 + 496, a2, *(a1 + 1080), (a1 + 464), (a1 + 468), (a1 + 476));
    *(a1 + 1216) = *(v6 + 16);
    *(a1 + 484) = *(v7 + 925);
  }
}

uint64_t *sub_2774DBF80(__int128 *a1, _OWORD *a2, _OWORD *a3)
{
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  v10 = a1[2];
  v11 = *(a1 + 6);
  v6 = *(a1 + 2) + 2;
  *&v8 = *a1 + 2;
  *&v9 = v6;
  sub_2774DBFF0(a1, a2, a3);
  return sub_2774DBFF0(&v8, a2 + 4, a3 + 8);
}

uint64_t *sub_2774DBFF0(uint64_t *result, _OWORD *a2, _OWORD *a3)
{
  v3 = *result;
  v4 = result[2];
  v5 = *(result + 8);
  v6 = *(result + 10);
  v7 = *(result + 9) - *(result + 11);
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v5 - v6;
    v10 = 2 * result[3];
    v11 = 2 * result[1];
    do
    {
      if (v9 >= 1)
      {
        v12 = 0;
        do
        {
          v13 = *(v3 + 2 * v12);
          result = (v13 >> 5);
          *(a3 + result) = *(a3 + (v13 >> 5)) - v13 + *(v4 + 2 * v12);
          *(a2 + result) = *(a2 + (v13 >> 5)) + 1;
          v12 += 2;
        }

        while (v12 < 2 * v9);
      }

      ++v8;
      v4 += v10;
      v3 += v11;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t sub_2774DC0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v8 = *a1;
  v9 = v5;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v6 = *(a1 + 16) + 2;
  *&v8 = *a1 + 2;
  *&v9 = v6;
  sub_2774DC110(a1, a2, a3);
  return sub_2774DC110(&v8, a2 + 10, a3 + 20);
}

uint64_t sub_2774DC110(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *result;
  v6 = *(result + 32);
  v8 = *(result + 40);
  v7 = *(result + 44);
  v9 = *(result + 36) - v7;
  v10 = *(result + 48);
  v12 = (v10 & 8) == 0 || v7 != 0;
  v13 = v9 - v12;
  v14 = (*(result + 48) & 4) == 0;
  *(a2 + 8) = 0;
  *a2 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v14 < v13)
  {
    v15 = *(result + 24);
    v17 = (v10 & 2) == 0 || v8 != 0;
    v18 = 2 * (v6 - v8 - v17);
    v19 = ~(2 * v10) & 2;
    v20 = v18;
    v21 = v4 + 2 * v15 * v14 + 2 * v19;
    v22 = 2 * v15;
    v23 = v3 * (2 * v14 + 2) + 2 * v19 + v5 - 4;
    v24 = 2 * v3;
    v25 = v3 * (2 * v14 - 2) + 2 * v19 + v5 + 4;
    result = 2 * v3 * v14 + 2 * v19;
    v26 = v5 + result;
    do
    {
      if (v19 < v20)
      {
        result = 0;
        do
        {
          v27 = *(v26 + 2 * result);
          v28 = *(v25 + 2 * result);
          v29 = __OFSUB__(v27, v28);
          v30 = v27 - v28;
          if ((v30 < 0) ^ v29 | (v30 == 0))
          {
            v31 = 0;
          }

          else
          {
            v31 = 1;
          }

          v32 = v31 | (v30 >> 31);
          v33 = *(v23 + 2 * result);
          v29 = __OFSUB__(v27, v33);
          v34 = v27 - v33;
          if ((v34 < 0) ^ v29 | (v34 == 0))
          {
            v35 = 0;
          }

          else
          {
            v35 = 1;
          }

          v36 = v32 + (v35 | (v34 >> 31)) + 2;
          *(a3 + 4 * v36) = *(a3 + 4 * v36) - v27 + *(v21 + 2 * result);
          ++*(a2 + 2 * v36);
          result += 2;
        }

        while (v19 + result < v20);
      }

      LODWORD(v14) = v14 + 1;
      v21 += v22;
      v23 += v24;
      v25 += v24;
      v26 += v24;
    }

    while (v14 != v13);
  }

  return result;
}

uint64_t sub_2774DC260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v8 = *a1;
  v9 = v5;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v6 = *(a1 + 16) + 2;
  *&v8 = *a1 + 2;
  *&v9 = v6;
  sub_2774DC2D0(a1, a2, a3);
  return sub_2774DC2D0(&v8, a2 + 10, a3 + 20);
}

uint64_t sub_2774DC2D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *result;
  v6 = *(result + 32);
  v8 = *(result + 40);
  v7 = *(result + 44);
  v9 = *(result + 36) - v7;
  v10 = *(result + 48);
  v12 = (v10 & 8) == 0 || v7 != 0;
  v13 = v9 - v12;
  v14 = (*(result + 48) & 4) == 0;
  *(a2 + 8) = 0;
  *a2 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v14 < v13)
  {
    v15 = *(result + 24);
    v17 = (v10 & 2) == 0 || v8 != 0;
    v18 = 2 * (v6 - v8 - v17);
    v19 = ~(2 * v10) & 2;
    v20 = v18;
    v21 = v4 + 2 * v15 * v14 + 2 * v19;
    v22 = 2 * v15;
    v23 = v3 * (2 * v14 + 2) + 2 * v19 + v5 + 4;
    v24 = 2 * v3;
    v25 = v3 * (2 * v14 - 2) + 2 * v19 + v5 - 4;
    result = 2 * v3 * v14 + 2 * v19;
    v26 = v5 + result;
    do
    {
      if (v19 < v20)
      {
        result = 0;
        do
        {
          v27 = *(v26 + 2 * result);
          v28 = *(v25 + 2 * result);
          v29 = __OFSUB__(v27, v28);
          v30 = v27 - v28;
          if ((v30 < 0) ^ v29 | (v30 == 0))
          {
            v31 = 0;
          }

          else
          {
            v31 = 1;
          }

          v32 = v31 | (v30 >> 31);
          v33 = *(v23 + 2 * result);
          v29 = __OFSUB__(v27, v33);
          v34 = v27 - v33;
          if ((v34 < 0) ^ v29 | (v34 == 0))
          {
            v35 = 0;
          }

          else
          {
            v35 = 1;
          }

          v36 = v32 + (v35 | (v34 >> 31)) + 2;
          *(a3 + 4 * v36) = *(a3 + 4 * v36) - v27 + *(v21 + 2 * result);
          ++*(a2 + 2 * v36);
          result += 2;
        }

        while (v19 + result < v20);
      }

      LODWORD(v14) = v14 + 1;
      v21 += v22;
      v23 += v24;
      v25 += v24;
      v26 += v24;
    }

    while (v14 != v13);
  }

  return result;
}

uint64_t sub_2774DC420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v8 = *a1;
  v9 = v5;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v6 = *(a1 + 16) + 2;
  *&v8 = *a1 + 2;
  *&v9 = v6;
  sub_2774DC490(a1, a2, a3);
  return sub_2774DC490(&v8, a2 + 10, a3 + 20);
}

uint64_t sub_2774DC490(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *result;
  v6 = *(result + 32);
  v8 = *(result + 40);
  v7 = *(result + 44);
  v9 = *(result + 36) - v7;
  v11 = (*(result + 48) & 8) == 0 || v7 != 0;
  v12 = v9 - v11;
  v13 = (*(result + 48) & 4) == 0;
  *(a2 + 8) = 0;
  *a2 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v13 < v12)
  {
    v14 = *(result + 24);
    v15 = v6 - v8;
    v16 = v4 + 2 * v14 * v13;
    v17 = v5 + 2 * v3 * v13;
    v18 = 2 * v14;
    v19 = v5 + v3 * (2 * v13 + 2);
    v20 = 2 * v3;
    result = 2 * v13 - 2;
    v21 = v5 + v3 * result;
    do
    {
      if (v15 >= 1)
      {
        result = 0;
        do
        {
          v22 = *(v17 + 2 * result);
          v23 = *(v21 + 2 * result);
          v24 = __OFSUB__(v22, v23);
          v25 = v22 - v23;
          if ((v25 < 0) ^ v24 | (v25 == 0))
          {
            v26 = 0;
          }

          else
          {
            v26 = 1;
          }

          v27 = v26 | (v25 >> 31);
          v28 = *(v19 + 2 * result);
          v24 = __OFSUB__(v22, v28);
          v29 = v22 - v28;
          if ((v29 < 0) ^ v24 | (v29 == 0))
          {
            v30 = 0;
          }

          else
          {
            v30 = 1;
          }

          v31 = v27 + (v30 | (v29 >> 31)) + 2;
          *(a3 + 4 * v31) = *(a3 + 4 * v31) - v22 + *(v16 + 2 * result);
          ++*(a2 + 2 * v31);
          result += 2;
        }

        while (result < 2 * v15);
      }

      LODWORD(v13) = v13 + 1;
      v16 += v18;
      v19 += v20;
      v21 += v20;
      v17 += v20;
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t sub_2774DC59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v8 = *a1;
  v9 = v5;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v6 = *(a1 + 16) + 2;
  *&v8 = *a1 + 2;
  *&v9 = v6;
  sub_2774DC60C(a1, a2, a3);
  return sub_2774DC60C(&v8, a2 + 10, a3 + 20);
}

uint64_t sub_2774DC60C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = *(result + 36) - *(result + 44);
  v8 = *(result + 48);
  *(a2 + 8) = 0;
  *a2 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = (v8 & 2) != 0 && v6 == 0;
    v11 = v5 - v6;
    v12 = !v10;
    v13 = 2 * (v11 - v12);
    v14 = ~(2 * v8) & 2;
    v15 = 2 * *(result + 24);
    v16 = (v3 + 2 * v14);
    v17 = 2 * *(result + 8);
    do
    {
      v18 = v16;
      v19 = v14;
      if (v14 < v13)
      {
        do
        {
          v20 = *v18;
          v21 = *(v18 - 2);
          v22 = __OFSUB__(v20, v21);
          v23 = v20 - v21;
          if ((v23 < 0) ^ v22 | (v23 == 0))
          {
            v24 = 0;
          }

          else
          {
            v24 = 1;
          }

          v25 = v18[2];
          v18 += 2;
          v26 = (v24 | (v23 >> 31)) + ((v20 > v25) | ((v20 - v25) >> 31)) + 2;
          *(a3 + 4 * v26) = *(a3 + 4 * v26) - v20 + *(v4 + 2 * v19);
          result = *(a2 + 2 * v26);
          *(a2 + 2 * v26) = result + 1;
          v19 += 2;
        }

        while (v19 < v13);
      }

      ++v9;
      v4 += v15;
      v16 = (v16 + v17);
    }

    while (v9 != v7);
  }

  return result;
}

uint64_t *sub_2774DC700(uint64_t *result, _OWORD *a2, _OWORD *a3)
{
  v3 = *result;
  v4 = result[2];
  v5 = *(result + 8);
  v6 = *(result + 10);
  v7 = *(result + 9) - *(result + 11);
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v5 - v6;
    v10 = 2 * result[3];
    v11 = 2 * result[1];
    do
    {
      if (v9 >= 1)
      {
        v12 = 0;
        do
        {
          v13 = *(v3 + v12);
          result = (v13 >> 5);
          *(a3 + result) = *(a3 + (v13 >> 5)) - v13 + *(v4 + v12);
          *(a2 + result) = *(a2 + (v13 >> 5)) + 1;
          v12 += 2;
        }

        while (2 * v9 != v12);
      }

      ++v8;
      v4 += v10;
      v3 += v11;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t *sub_2774DC7AC(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  v6 = *(result + 8);
  v8 = *(result + 10);
  v7 = *(result + 11);
  v9 = *(result + 9) - v7;
  v10 = *(result + 12);
  v12 = (v10 & 8) == 0 || v7 != 0;
  v13 = v9 - v12;
  v14 = (result[6] & 4) == 0;
  *(a2 + 8) = 0;
  *a2 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v14 < v13)
  {
    v15 = result[3];
    v16 = (v10 & 1) == 0;
    v18 = (v10 & 2) == 0 || v8 != 0;
    v19 = (v6 - v8 - v18);
    v20 = v4 + 2 * v15 * v14 + 2 * v16;
    v21 = 2 * v15;
    v22 = v3 * (2 * v14 + 2) + 2 * v16 + v5 - 2;
    v23 = 2 * v3;
    v24 = v3 * (2 * v14 - 2) + 2 * v16 + v5 + 2;
    result = (v5 + 2 * v3 * v14 + 2 * v16);
    do
    {
      if (v16 < v19)
      {
        v25 = 0;
        do
        {
          v26 = *(result + v25);
          v27 = *(v24 + 2 * v25);
          v28 = __OFSUB__(v26, v27);
          v29 = v26 - v27;
          if ((v29 < 0) ^ v28 | (v29 == 0))
          {
            v30 = 0;
          }

          else
          {
            v30 = 1;
          }

          v31 = v30 | (v29 >> 31);
          v32 = *(v22 + 2 * v25);
          v28 = __OFSUB__(v26, v32);
          v33 = v26 - v32;
          if ((v33 < 0) ^ v28 | (v33 == 0))
          {
            v34 = 0;
          }

          else
          {
            v34 = 1;
          }

          v35 = v31 + (v34 | (v33 >> 31)) + 2;
          *(a3 + 4 * v35) = *(a3 + 4 * v35) - v26 + *(v20 + 2 * v25);
          ++*(a2 + 2 * v35);
          ++v25;
        }

        while (v19 - v16 != v25);
      }

      LODWORD(v14) = v14 + 1;
      v20 += v21;
      v22 += v23;
      v24 += v23;
      result = (result + v23);
    }

    while (v14 != v13);
  }

  return result;
}

uint64_t *sub_2774DC8F4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = *result;
  v6 = *(result + 8);
  v8 = *(result + 10);
  v7 = *(result + 11);
  v9 = *(result + 9) - v7;
  v10 = *(result + 12);
  v12 = (v10 & 8) == 0 || v7 != 0;
  v13 = v9 - v12;
  v14 = (result[6] & 4) == 0;
  *(a2 + 8) = 0;
  *a2 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v14 < v13)
  {
    v15 = result[3];
    v16 = (v10 & 1) == 0;
    v18 = (v10 & 2) == 0 || v8 != 0;
    v19 = (v6 - v8 - v18);
    v20 = v4 + 2 * v15 * v14 + 2 * v16;
    v21 = 2 * v15;
    v22 = v3 * (2 * v14 + 2) + 2 * v16 + v5 + 2;
    v23 = 2 * v3;
    v24 = v3 * (2 * v14 - 2) + 2 * v16 + v5 - 2;
    result = (v5 + 2 * v3 * v14 + 2 * v16);
    do
    {
      if (v16 < v19)
      {
        v25 = 0;
        do
        {
          v26 = *(result + v25);
          v27 = *(v24 + 2 * v25);
          v28 = __OFSUB__(v26, v27);
          v29 = v26 - v27;
          if ((v29 < 0) ^ v28 | (v29 == 0))
          {
            v30 = 0;
          }

          else
          {
            v30 = 1;
          }

          v31 = v30 | (v29 >> 31);
          v32 = *(v22 + 2 * v25);
          v28 = __OFSUB__(v26, v32);
          v33 = v26 - v32;
          if ((v33 < 0) ^ v28 | (v33 == 0))
          {
            v34 = 0;
          }

          else
          {
            v34 = 1;
          }

          v35 = v31 + (v34 | (v33 >> 31)) + 2;
          *(a3 + 4 * v35) = *(a3 + 4 * v35) - v26 + *(v20 + 2 * v25);
          ++*(a2 + 2 * v35);
          ++v25;
        }

        while (v19 - v16 != v25);
      }

      LODWORD(v14) = v14 + 1;
      v20 += v21;
      v22 += v23;
      v24 += v23;
      result = (result + v23);
    }

    while (v14 != v13);
  }

  return result;
}

uint64_t sub_2774DCA3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *result;
  v6 = *(result + 32);
  v8 = *(result + 40);
  v7 = *(result + 44);
  v9 = *(result + 36) - v7;
  v11 = (*(result + 48) & 8) == 0 || v7 != 0;
  v12 = v9 - v11;
  v13 = (*(result + 48) & 4) == 0;
  *(a2 + 8) = 0;
  *a2 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v13 < v12)
  {
    v14 = *(result + 24);
    v15 = v6 - v8;
    v16 = v4 + 2 * v14 * v13;
    v17 = v5 + 2 * v3 * v13;
    v18 = 2 * v14;
    v19 = v5 + v3 * (2 * v13 + 2);
    v20 = 2 * v3;
    result = 2 * v13 - 2;
    v21 = v5 + v3 * result;
    do
    {
      if (v15 >= 1)
      {
        result = 0;
        do
        {
          v22 = *(v17 + result);
          v23 = *(v21 + result);
          v24 = __OFSUB__(v22, v23);
          v25 = v22 - v23;
          if ((v25 < 0) ^ v24 | (v25 == 0))
          {
            v26 = 0;
          }

          else
          {
            v26 = 1;
          }

          v27 = v26 | (v25 >> 31);
          v28 = *(v19 + result);
          v24 = __OFSUB__(v22, v28);
          v29 = v22 - v28;
          if ((v29 < 0) ^ v24 | (v29 == 0))
          {
            v30 = 0;
          }

          else
          {
            v30 = 1;
          }

          v31 = v27 + (v30 | (v29 >> 31)) + 2;
          *(a3 + 4 * v31) = *(a3 + 4 * v31) - v22 + *(v16 + result);
          ++*(a2 + 2 * v31);
          result += 2;
        }

        while (2 * v15 != result);
      }

      LODWORD(v13) = v13 + 1;
      v16 += v18;
      v19 += v20;
      v21 += v20;
      v17 += v20;
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t *sub_2774DCB44(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = result[2];
  v5 = *(result + 8);
  v6 = *(result + 10);
  v7 = *(result + 9) - *(result + 11);
  v8 = *(result + 12);
  *(a2 + 8) = 0;
  *a2 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = ~v8;
    v12 = (v8 & 2) == 0 || v6 != 0;
    v13 = (v5 - v6 - v12);
    v14 = 2 * result[3];
    v15 = v10 & 1;
    v16 = 2 * (v10 & 1);
    v17 = (v13 - (v10 & 1));
    v18 = 2 * result[1];
    do
    {
      result = v17;
      v19 = v16;
      if (v15 < v13)
      {
        do
        {
          v20 = *(v3 + v19);
          v21 = *(v3 + v19 - 2);
          v22 = __OFSUB__(v20, v21);
          v23 = v20 - v21;
          if ((v23 < 0) ^ v22 | (v23 == 0))
          {
            v24 = 0;
          }

          else
          {
            v24 = 1;
          }

          v25 = v24 | (v23 >> 31);
          v26 = *(v3 + v19 + 2);
          v22 = __OFSUB__(v20, v26);
          v27 = v20 - v26;
          if ((v27 < 0) ^ v22 | (v27 == 0))
          {
            v28 = 0;
          }

          else
          {
            v28 = 1;
          }

          v29 = v25 + (v28 | (v27 >> 31)) + 2;
          *(a3 + 4 * v29) = *(a3 + 4 * v29) - v20 + *(v4 + v19);
          ++*(a2 + 2 * v29);
          v19 += 2;
          result = (result - 1);
        }

        while (result);
      }

      ++v9;
      v4 += v14;
      v3 += v18;
    }

    while (v9 != v7);
  }

  return result;
}

uint64_t *sub_2774DCC30(__int128 *a1, _OWORD *a2, _OWORD *a3)
{
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  v10 = a1[2];
  v11 = *(a1 + 6);
  v6 = *(a1 + 2) + 1;
  *&v8 = *a1 + 1;
  *&v9 = v6;
  sub_2774DCCA0(a1, a2, a3);
  return sub_2774DCCA0(&v8, a2 + 4, a3 + 8);
}

uint64_t *sub_2774DCCA0(uint64_t *result, _OWORD *a2, _OWORD *a3)
{
  v3 = *result;
  v4 = result[2];
  v5 = *(result + 8);
  v6 = *(result + 10);
  v7 = *(result + 9) - *(result + 11);
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v5 - v6;
    v10 = result[1];
    v11 = result[3];
    do
    {
      if (v9 >= 1)
      {
        v12 = 0;
        do
        {
          v13 = *(v3 + v12);
          result = (v13 >> 3);
          *(a3 + result) = *(a3 + (v13 >> 3)) - v13 + *(v4 + v12);
          *(a2 + result) = *(a2 + (v13 >> 3)) + 1;
          v12 += 2;
        }

        while (v12 < 2 * v9);
      }

      v3 += v10;
      v4 += v11;
      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t sub_2774DCD48(uint64_t result, _OWORD *a2, _OWORD *a3)
{
  v3 = *result;
  v4 = *(result + 16);
  v5 = *(result + 32);
  v6 = *(result + 40);
  v7 = *(result + 36) - *(result + 44);
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = (v5 - v6);
    v10 = *(result + 8);
    v11 = *(result + 24);
    do
    {
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          v13 = *(v3 + i);
          v14 = v13 >> 3;
          result = *(v4 + i);
          *(a3 + v14) = *(a3 + (v13 >> 3)) - v13 + result;
          *(a2 + v14) = *(a2 + (v13 >> 3)) + 1;
        }
      }

      v3 += v10;
      v4 += v11;
      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t sub_2774DCDE8(uint64_t result, int a2, int a3, unsigned int a4, uint64_t a5)
{
  v7 = result;
  v8 = *(result + 8);
  v9 = v8 - a4;
  v10 = a2 << (v8 - a4);
  v11 = a3 << (v8 - a4);
  if (a4)
  {
    v12 = 2;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(result + 488);
  v14 = v13 + 8 * a4;
  v15 = *(v14 + 416);
  v16 = *(v14 + 400);
  v17 = *(v13 + 531);
  v46[0] = v16 + ((v15 * v11 + (v10 << a4)) << v17);
  v46[1] = v15;
  v18 = *(result + 1208);
  v19 = v18 + 8 * a4;
  v20 = *(v19 + 416);
  v21 = *(v19 + 400);
  v22 = *(v18 + 531);
  v47 = v21 + ((v20 * v11 + (v10 << a4)) << v22);
  v48 = v20;
  v23 = 1 << v9;
  v49 = 1 << v9;
  v50 = 1 << v9;
  v51 = v12;
  v52 = v12;
  v53 = 0;
  v24 = *(result + 1216);
  if (*v24 == 255 && *(v24 + 3) == 255)
  {
    v25 = 1 << v9;
  }

  else
  {
    v40 = v22;
    v41 = v21;
    v42 = v17;
    v43 = v16;
    result = sub_2774BCFE4(v24, v10, v11, 1 << v8);
    v25 = v23;
    if (result == 1)
    {
      v26 = v24[9] >> a4;
      if (v10 > v26)
      {
        v26 = v10;
      }

      v27 = v24[11] >> a4;
      if (v11 > v27)
      {
        v27 = v11;
      }

      v28 = v24[10] >> a4;
      if (v28 >= v10 + v23 - 1)
      {
        v28 = v10 + v23 - 1;
      }

      v29 = v24[12] >> a4;
      if (v29 >= v11 + v23 - 1)
      {
        v29 = v11 + v23 - 1;
      }

      v46[0] = v43 + ((v15 * v27 + (v26 << a4)) << v42);
      v47 = v41 + ((v20 * v27 + (v26 << a4)) << v40);
      v25 = v28 - v26 + 1;
      v23 = v29 - v27 + 1;
      v49 = v25;
      v50 = v23;
    }
  }

  v30 = 520;
  if (*(v13 + 432))
  {
    v30 = 504;
  }

  v31 = 524;
  if (*(v13 + 432))
  {
    v31 = 508;
  }

  v32 = *(v13 + v31);
  v33 = *(v13 + v30) >> a4;
  v34 = v32 >> a4;
  if (v25 + v10 > v33)
  {
    v49 = v33 - v10;
  }

  if (v23 + v11 > v34)
  {
    v50 = v34 - v11;
  }

  v35 = a2 != 0;
  if (a2)
  {
    v36 = 5;
  }

  else
  {
    v36 = 4;
  }

  if (a3)
  {
    v35 = v36;
  }

  if (a2 | a3)
  {
    v53 = v35;
  }

  if (*(v7 + 16) - 1 <= a2)
  {
    v51 = 0;
  }

  else
  {
    v35 |= 2u;
    v53 = v35;
  }

  if (*(v7 + 20) - 1 <= a3)
  {
    v52 = 0;
  }

  else
  {
    v53 = v35 | 8;
  }

  if (*(v7 + 1176) != 1 || (a4 & 1) == 0)
  {
    v37 = 0;
    v38 = a5 + 20 * a4;
    v39 = a5 + 10 * a4 + 240;
    do
    {
      result = (*(v7 + 40 * a4 + 1088 + v37))(v46, v39, v38);
      v37 += 8;
      v38 += 60;
      v39 += 30;
    }

    while (v37 != 32);
    if ((*(v7 + 1176) ^ 1))
    {
      return (*(v7 + 40 * a4 + 1120))(v46, a5 + (a4 << 6) + 744, a5 + (a4 << 7) + 360);
    }
  }

  if (a4)
  {
    return (*(v7 + 40 * a4 + 1120))(v46, a5 + (a4 << 6) + 744, a5 + (a4 << 7) + 360);
  }

  return result;
}

uint64_t sub_2774DD114(int a1, int a2, int *a3, int *a4, int a5, int a6, int a7)
{
  v7 = *a3;
  if (*a3)
  {
    result = 0;
    v10 = 0;
    v11 = 0;
    if (v7 < 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    v13 = v7 * a1 - 2 * a2;
    v14 = v12 * a1;
    v15 = 0x7FFFFFFF;
    do
    {
      v16 = v7;
      v17 = a5 == 4;
      v18 = v13 * v7;
      if (v16 >= 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = -v16;
      }

      if (!v16)
      {
        v17 = 0;
      }

      if (v19 + 1 < a7)
      {
        v20 = v19 + 1;
      }

      else
      {
        v20 = a7;
      }

      v21 = (v20 + v17);
      if (v18 + v21 * a6 < v15)
      {
        v11 = v16;
        v10 = v18;
        result = v21;
        v15 = v18 + v21 * a6;
      }

      v7 = v16 + v12;
      v13 += v14;
    }

    while (v16);
    *a3 = v11;
    *a4 = v10;
  }

  else
  {
    *a4 = 0;
    v22 = *a3;
    v23 = a5 == 4;
    if (*a3 < 0)
    {
      v22 = -v22;
    }

    if (!*a3)
    {
      v23 = 0;
    }

    if (v22 + 1 < a7)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = a7;
    }

    return (v24 + v23);
  }

  return result;
}

uint64_t sub_2774DD1D8(uint64_t result, uint64_t a2, int a3, char *a4, unsigned int a5, int *a6, unsigned int *a7, int a8)
{
  v44 = a2 + 240 + 30 * a3 + 10 * a5;
  v42 = a4 - 1;
  v43 = a2 + 60 * a3 + 20 * a5;
  do
  {
    v8 = *a4;
    v9 = a4[1];
    v10 = v8 < v9;
    if (v8 >= v9)
    {
      v11 = a4[1];
    }

    else
    {
      v11 = *a4;
    }

    if (v8 < v9)
    {
      v8 = a4[1];
    }

    v12 = a4[2];
    v13 = a4[3];
    if (v12 <= v13)
    {
      v14 = a4[3];
    }

    else
    {
      v14 = a4[2];
    }

    if (v12 >= v13)
    {
      v15 = a4[3];
    }

    else
    {
      v15 = a4[2];
    }

    if (v12 < v13)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    v17 = v8 - v15;
    if (v8 - v15 < 5)
    {
      break;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = *(v44 + 2 * v10);
    v23 = *(v44 + 2 * v16);
    v24 = -2 * *(v43 + 4 * v16);
    v25 = -2 * *(v43 + 4 * v10);
    v26 = 0x7FFFFFFF;
    v46 = v25;
    v47 = v24;
LABEL_18:
    v27 = 1 - (v15 + v18);
    v28 = v24 + v23 * (v15 + v18);
    v29 = v25 + v22 * (v15 + 4 + v18);
    do
    {
      if ((v15 - 1 + v18) >= 0xFFFFFFFB)
      {
        v30 = v15 + v18;
        v31 = a3 == 4;
        v32 = v15 + v18 + 4;
        v33 = v28 * (v15 + v18) + v29 * v32;
        v34 = *(result + 30);
        v35 = -4 - (v15 + v18);
        if (v32 >= 0)
        {
          v35 = v15 + v18 + 4;
        }

        if (v35 + 1 < v34)
        {
          v36 = v35 + 1;
        }

        else
        {
          v36 = *(result + 30);
        }

        v37 = v30 != -4 && a3 == 4;
        if (v27 < v34)
        {
          v34 = v27;
        }

        if (!v30)
        {
          v31 = 0;
        }

        v38 = v37 + v31 + v34 + v36;
        if ((v33 + v38 * a8) < v26)
        {
          *a6 = v33;
          *a7 = v38;
          v21 = 1;
          v26 = v33 + v38 * a8;
          v19 = v15 + v18;
          v20 = v30 + 4;
          v24 = v47;
          v39 = v18++ == v17 - 4;
          v25 = v46;
          if (!v39)
          {
            goto LABEL_18;
          }

          goto LABEL_39;
        }
      }

      ++v18;
      --v27;
      v28 += v23;
      v29 += v22;
    }

    while (v17 - 3 != v18);
    v32 = v20;
    v30 = v19;
    if ((v21 & 1) == 0)
    {
      continue;
    }

LABEL_39:
    v42[byte_27753C4A4[v16]] = v30;
    v42[byte_27753C4A4[v10]] = v32;
    v20 = v32;
    v19 = v30;
  }

  while (v11 - v14 > 4 || v11 - v19 > 4 || v20 - v14 > 4);
  return result;
}

uint64_t sub_2774DD40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 2112);
  v8 = *(a1 + 2064);
  if (v7)
  {
    v9 = *(v8 + 8 * v7 - 8);
    v10 = *(a1 + 2112);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  if (v10 >= (*(a1 + 2072) - v8) >> 3)
  {
    operator new();
  }

  v11 = *(v8 + 8 * v10);
  v12 = *(a1 + 2056);
  v13 = *(a1 + 2048);
  if (v12)
  {
    *(v11 + 1576) = v12;
    *(v11 + 1568) = v12 + 48;
    v15 = *(v12 + 168);
    v14 = *(v12 + 176);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    *(v11 + 1584) = v15;
    v16 = *(v11 + 1592);
    *(v11 + 1592) = v14;
    if (v16)
    {
      sub_2773CC26C(v16);
    }

    *(v11 + 2344) = v12 + 248;
  }

  v17 = *(a2 + 16);
  *(v11 + 632) = v17 - 19 < 2;
  v18 = (v11 + 633);
  v19 = vceq_s16(vand_s8(vdup_n_s16(v17), 0xF100FE00FE00F8), 0x800060010);
  *(v11 + 633) = vuzp1_s8(vand_s8(v19, 0x1000100010001), v19).u32[0];
  *(v11 + 637) = v17 == 21;
  v20 = (v17 - 19);
  v21 = v17 - 16 < 3;
  if (v20 < 2)
  {
    v21 = 1;
  }

  if (v13)
  {
    v21 = 1;
  }

  *(v11 + 638) = v21;
  if (v12 && (v19.i8[0] & 1) != 0 && *(v12 + 203) == 1)
  {
    *(v11 + 638) = 1;
  }

  *(v11 + 659) = 1;
  result = sub_2773FB5F4(v11 + 1608, a2);
  if (result)
  {
    return result;
  }

  v23 = *(a1 + 2056);
  *(v11 + 2336) = v9;
  *(v11 + 2280) = a1;
  *(v11 + 2332) = 0;
  v24 = sub_2773FB848(v11 + 1608, 1);
  if (v24)
  {
    *(v11 + 48) = 1;
    *(v11 + 50) = 0;
    *(v11 + 52) = 0;
    *(v11 + 56) = 0;
    *(v11 + 58) = 258;
    *(v11 + 60) = 0;
    *(v11 + 64) = 0;
    *(v11 + 68) = 0;
    *(v11 + 320) = 0;
    *(v11 + 512) = 0;
    *(v11 + 552) = 0;
    *(v11 + 559) = 0;
    *(v11 + 567) = 1;
    *(v11 + 568) = 0;
    *(v11 + 572) = 0;
    *(v11 + 600) = 0;
    *(v11 + 520) = xmmword_27750D340;
    *(v11 + 536) = xmmword_27750D340;
    *(v11 + 1600) = 0;
    *(v11 + 2256) = 0;
  }

  *(v11 + 48) = v24 != 0;
  v25 = *(v11 + 633) == 1 && sub_2773FB848(v11 + 1608, 1) != 0;
  *(v11 + 49) = v25;
  v26 = sub_2773FB90C(v11 + 1608);
  *(v11 + 50) = v26;
  v27 = *(v11 + 48);
  if (v27 != (v9 == 0))
  {
    if (dword_280B9A880 < 3)
    {
      return 4294954387;
    }

    v42 = *MEMORY[0x277D85DF8];
    v43 = "first_slice_in_pic_flag mismatch\n";
    goto LABEL_51;
  }

  if (v27)
  {
    v28 = (v23 + 16 * v26 + 880);
    if ((v26 & 0xC0) != 0)
    {
      v28 = (v23 + 1936);
    }

    v30 = *v28;
    v29 = v28[1];
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
    }

    v31 = *(v11 + 40);
    *(v11 + 32) = v30;
    *(v11 + 40) = v29;
    if (v31)
    {
      sub_2773CC26C(v31);
      v30 = *(v11 + 32);
    }

    if (!v30)
    {
      if (dword_280B9A880 >= 3)
      {
        v40 = "No PPS found for ID %d\n";
        fprintf(*MEMORY[0x277D85DF8], "No PPS found for ID %d\n", *(v11 + 50));
        v41 = *(v11 + 50);
        goto LABEL_98;
      }

      return 4294954387;
    }

    if (*(v30 + 1760))
    {
LABEL_36:
      v32 = *(v30 + 1);
      v33 = (v23 + 1920);
      if (v32 <= 0xF)
      {
        v33 = (v23 + 16 * v32 + 624);
      }

      v34 = *v33;
      v35 = v33[1];
      if (v35)
      {
        atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
      }

      v36 = *(v11 + 24);
      *(v11 + 16) = v34;
      *(v11 + 24) = v35;
      if (v36)
      {
        sub_2773CC26C(v36);
        v34 = *(v11 + 16);
      }

      if (!v34)
      {
        if (dword_280B9A880 >= 3)
        {
          v40 = "No SPS found for ID %d\n";
          fprintf(*MEMORY[0x277D85DF8], "No SPS found for ID %d\n", *(*(v11 + 32) + 1));
          v41 = *(*(v11 + 32) + 1);
          goto LABEL_98;
        }

        return 4294954387;
      }

      v37 = 0;
      *(v11 + 56) = 0;
      *(v11 + 52) = 0;
      goto LABEL_44;
    }

    v57 = *(v30 + 1768);
    v58 = *(v30 + 1);
    v59 = (v57 + 1552);
    v60 = v57 + 16 * v58 + 256;
    if (v58 <= 0xF)
    {
      v61 = v60;
    }

    else
    {
      v61 = v59;
    }

    if (!*v61)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v81 = "No SPS found for ID %d\n";
      fprintf(*MEMORY[0x277D85DF8], "No SPS found for ID %d\n", *(v30 + 1));
      v82 = *(v30 + 1);
LABEL_102:
      syslog(27, v81, v82, v247, v248);
      return 4294954387;
    }

    result = sub_277509AC4(*v61);
    if (result)
    {
      return result;
    }

    v62 = *v61;
    v63 = *(*v61 + 530);
    *(v30 + 1744) = v63;
    v64 = *(v62 + 531);
    *(v30 + 1748) = v64;
    if (*(v30 + 1752) == 1)
    {
      if (*(v30 + 26) == 1)
      {
        LODWORD(v65) = *(v30 + 22);
        if (*(v30 + 22))
        {
          v66 = 0;
          v67 = 0;
          v68 = *(v30 + 1648);
          do
          {
            v69 = v65 + 1;
            v70 = v66 / v69;
            v66 += v63;
            *(v68 + 2 * v67) = ~v70 + v66 / v69;
            v65 = *(v30 + 22);
            ++v67;
          }

          while (v67 < v65);
        }

        LODWORD(v71) = *(v30 + 24);
        if (*(v30 + 24))
        {
          v72 = 0;
          v73 = 0;
          v74 = *(v30 + 1672);
          do
          {
            v75 = v71 + 1;
            v76 = v72 / v75;
            v72 += v64;
            *(v74 + 2 * v73) = ~v76 + v72 / v75;
            v71 = *(v30 + 24);
            ++v73;
          }

          while (v73 < v71);
        }
      }

      if (*(v30 + 22))
      {
        v77 = *(v30 + 1648);
        v78 = *(v30 + 22);
        v79 = v63;
        do
        {
          v80 = *v77++;
          v79 += ~v80;
          --v78;
        }

        while (v78);
      }

      else
      {
        v79 = v63;
      }

      v93 = *(v30 + 24);
      if (*(v30 + 24))
      {
        v94 = *(v30 + 1672);
        do
        {
          v95 = *v94++;
          v64 += ~v95;
          --v93;
        }

        while (v93);
      }

      v89 = __OFSUB__(v79, 1);
      v96 = v79 - 1;
      if (v96 < 0 != v89 || (v89 = __OFSUB__(v64, 1), v97 = v64 - 1, (v97 < 0) ^ v89))
      {
        if (dword_280B9A880 < 3)
        {
          return 4294954387;
        }

        v42 = *MEMORY[0x277D85DF8];
        v43 = "Invalid tile widths\n";
        v44 = "Invalid tile widths\n";
        v45 = 20;
        goto LABEL_52;
      }

      v249 = v61;
      *(*(v30 + 1648) + 2 * *(v30 + 22)) = v96;
      *(*(v30 + 1672) + 2 * *(v30 + 24)) = v97;
      sub_2773FB310((v30 + 1696), v63);
      sub_2773FB310((v30 + 1720), *(v30 + 1748));
      v98 = *(v30 + 24);
      result = sub_2773FB484(*(v30 + 1744), *(v30 + 22) + 1, *(v30 + 1648), *(v30 + 1696));
      if (result)
      {
        return result;
      }

      result = sub_2773FB484(*(v30 + 1748), v98 + 1, *(v30 + 1672), *(v30 + 1720));
      if (result)
      {
        return result;
      }

      v61 = v249;
      v62 = *v249;
    }

    if ((*(v30 + 34) & 1) == 0)
    {
      memcpy((v30 + 40), v62 + 416, 0x618uLL);
      v62 = *v61;
    }

    v99 = v62[2113];
    v100 = *(v30 + 13);
    *(v30 + 1636) = v99 - v100;
    v101 = *(v30 + 1618);
    *(v30 + 1640) = v99 - v101;
    v102 = *(v30 + 1768);
    v103 = *(v30 + 1);
    v104 = v102 + 1552;
    v105 = v102 + 16 * v103 + 256;
    if (v103 <= 0xF)
    {
      v106 = v105;
    }

    else
    {
      v106 = v104;
    }

    v107 = *v106;
    if (!*v106)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v42 = *MEMORY[0x277D85DF8];
      v43 = "sps failed!\n";
      v44 = "sps failed!\n";
      v45 = 12;
      goto LABEL_52;
    }

    v108 = *(v30 + 7);
    if (v108 >= 0xF)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v81 = "num_ref_idx_l0_default_active_minus1_ of %lld is out of range (%lld, %lld)\n";
      fprintf(*MEMORY[0x277D85DF8], "num_ref_idx_l0_default_active_minus1_ of %lld is out of range (%lld, %lld)\n", v108, 0, 14);
      v82 = *(v30 + 7);
    }

    else
    {
      v109 = *(v30 + 8);
      if (v109 < 0xF)
      {
        v110 = *(v30 + 9);
        v111 = -26 - *(v107 + 2097);
        if (v110 > 25 || v111 > v110)
        {
          if (dword_280B9A880 < 3)
          {
            return 4294954387;
          }

          v81 = "init_qp_minus26_ of %lld is out of range (%lld, %lld)\n";
          fprintf(*MEMORY[0x277D85DF8], "init_qp_minus26_ of %lld is out of range (%lld, %lld)\n", v110, v111, 25);
          v82 = *(v30 + 9);
          v247 = -26 - *(*v106 + 2097);
          v248 = 25;
          goto LABEL_102;
        }

        v112 = *(v107 + 269);
        if (v100 > v112)
        {
          if (dword_280B9A880 < 3)
          {
            return 4294954387;
          }

          v81 = "diff_cu_qp_delta_depth_ of %lld is out of range (%lld, %lld)\n";
          fprintf(*MEMORY[0x277D85DF8], "diff_cu_qp_delta_depth_ of %lld is out of range (%lld, %lld)\n", v100, 0, v112);
          v82 = *(v30 + 13);
          goto LABEL_152;
        }

        v181 = *(v30 + 14);
        if ((v181 + 12) >= 0x19u)
        {
          if (dword_280B9A880 < 3)
          {
            return 4294954387;
          }

          v190 = 12;
          v191 = -12;
          v81 = "pps_cb_qp_offset_ of %lld is out of range (%lld, %lld)\n";
          fprintf(*MEMORY[0x277D85DF8], "pps_cb_qp_offset_ of %lld is out of range (%lld, %lld)\n", v181, -12, 12);
          v82 = *(v30 + 14);
        }

        else
        {
          v182 = *(v30 + 15);
          if ((v182 + 12) >= 0x19u)
          {
            if (dword_280B9A880 < 3)
            {
              return 4294954387;
            }

            v190 = 12;
            v191 = -12;
            v81 = "pps_cr_qp_offset_ of %lld is out of range (%lld, %lld)\n";
            fprintf(*MEMORY[0x277D85DF8], "pps_cr_qp_offset_ of %lld is out of range (%lld, %lld)\n", v182, -12, 12);
            v82 = *(v30 + 15);
          }

          else
          {
            if (*(v30 + 20) == 1)
            {
              v183 = *(v30 + 22);
              v184 = *(v107 + 2120) - 1;
              if (v183 > v184)
              {
                if (dword_280B9A880 < 3)
                {
                  return 4294954387;
                }

                v81 = "num_tile_columns_minus1_ of %lld is out of range (%lld, %lld)\n";
                fprintf(*MEMORY[0x277D85DF8], "num_tile_columns_minus1_ of %lld is out of range (%lld, %lld)\n", v183, 0, v184);
                v82 = *(v30 + 22);
                v185 = *(*v106 + 2120);
                goto LABEL_405;
              }

              v225 = *(v30 + 24);
              v226 = *(v107 + 2124) - 1;
              if (v225 > v226)
              {
                if (dword_280B9A880 < 3)
                {
                  return 4294954387;
                }

                v81 = "num_tile_rows_minus1_ of %lld is out of range (%lld, %lld)\n";
                fprintf(*MEMORY[0x277D85DF8], "num_tile_rows_minus1_ of %lld is out of range (%lld, %lld)\n", v225, 0, v226);
                v82 = *(v30 + 24);
                v185 = *(*v106 + 2124);
LABEL_405:
                v113 = v185 - 1;
                goto LABEL_153;
              }
            }

            if (*(v30 + 29) != 1 || (*(v30 + 31) & 1) != 0)
            {
LABEL_408:
              v227 = *(v30 + 1610);
              v228 = *(v107 + 2113) - 2;
              if (v228 < v227)
              {
                if (dword_280B9A880 < 3)
                {
                  return 4294954387;
                }

                v81 = "log2_parallel_merge_level_minus2_ of %lld is out of range (%lld, %lld)\n";
                fprintf(*MEMORY[0x277D85DF8], "log2_parallel_merge_level_minus2_ of %lld is out of range (%lld, %lld)\n", v227, 0, v228);
                v82 = *(v30 + 1610);
                v229 = *(*v106 + 2113);
                goto LABEL_411;
              }

              if (*(v30 + 20) && *(v30 + 21) == 1)
              {
                if (dword_280B9A880 < 3)
                {
                  return 4294954387;
                }

                v42 = *MEMORY[0x277D85DF8];
                v43 = "Both tiles and wavefront enabled!\n";
                v44 = "Both tiles and wavefront enabled!\n";
                v45 = 34;
                goto LABEL_52;
              }

              if (*(v30 + 1614) == 1)
              {
                v230 = *(v30 + 1615);
                v231 = *(v107 + 2115) - 2;
                if (v231 < v230)
                {
                  if (dword_280B9A880 < 3)
                  {
                    return 4294954387;
                  }

                  v81 = "rext.log2_max_transform_skip_block_size_minus2_ of %lld is out of range (%lld, %lld)\n";
                  fprintf(*MEMORY[0x277D85DF8], "rext.log2_max_transform_skip_block_size_minus2_ of %lld is out of range (%lld, %lld)\n", v230, 0, v231);
                  v82 = *(v30 + 1615);
                  v229 = *(*v106 + 2115);
LABEL_411:
                  v113 = v229 - 2;
                  goto LABEL_153;
                }

                if (v101 > v112)
                {
                  if (dword_280B9A880 < 3)
                  {
                    return 4294954387;
                  }

                  v81 = "rext.diff_cu_chroma_qp_offset_depth_ of %lld is out of range (%lld, %lld)\n";
                  fprintf(*MEMORY[0x277D85DF8], "rext.diff_cu_chroma_qp_offset_depth_ of %lld is out of range (%lld, %lld)\n", v101, 0, v112);
                  v82 = *(v30 + 1618);
LABEL_152:
                  v113 = *(*v106 + 269);
LABEL_153:
                  v248 = v113;
LABEL_190:
                  v247 = 0;
                  goto LABEL_102;
                }

                v237 = *(v30 + 1632);
                v238 = *(v107 + 2096);
                if (v238 <= 0xA)
                {
                  v238 = 10;
                }

                v239 = v238 - 10;
                if (v239 < v237)
                {
                  if (dword_280B9A880 < 3)
                  {
                    return 4294954387;
                  }

                  v240 = "rext.log2_sao_offset_scale_luma_ of %lld is out of range (%lld, %lld)\n";
                  fprintf(*MEMORY[0x277D85DF8], "rext.log2_sao_offset_scale_luma_ of %lld is out of range (%lld, %lld)\n", v237, 0, v239);
                  v241 = *(v30 + 1632);
                  v242 = *(*v106 + 2096);
LABEL_471:
                  if (v242 <= 0xA)
                  {
                    v242 = 10;
                  }

                  syslog(27, v240, v241, 0, v242 - 10);
                  return 4294954387;
                }

                v243 = *(v30 + 1633);
                v244 = *(v107 + 2098);
                if (v244 <= 0xA)
                {
                  v244 = 10;
                }

                v245 = v244 - 10;
                if (v245 < v243)
                {
                  if (dword_280B9A880 < 3)
                  {
                    return 4294954387;
                  }

                  v240 = "rext.log2_sao_offset_scale_chroma_ of %lld is out of range (%lld, %lld)\n";
                  fprintf(*MEMORY[0x277D85DF8], "rext.log2_sao_offset_scale_chroma_ of %lld is out of range (%lld, %lld)\n", v243, 0, v245);
                  v241 = *(v30 + 1633);
                  v242 = *(*v106 + 2098);
                  goto LABEL_471;
                }
              }

              if (*(v30 + 1616) == 1)
              {
                if (*(v107 + 2148) != 3)
                {
                  if (dword_280B9A880 < 3)
                  {
                    return 4294954387;
                  }

                  v42 = *MEMORY[0x277D85DF8];
                  v43 = "cross_component_prediction only defined for 444\n";
                  v44 = "cross_component_prediction only defined for 444\n";
                  v45 = 48;
                  goto LABEL_52;
                }

                if (*(v107 + 2096) >= 0xCu && dword_280B9A880 >= 4)
                {
                  fwrite("Our CCP can diverge from spec if IDCT output exceeds 16bits, possible at 12-bit luma\n", 0x55uLL, 1uLL, *MEMORY[0x277D85DF8]);
                  syslog(28, "Our CCP can diverge from spec if IDCT output exceeds 16bits, possible at 12-bit luma\n");
                }
              }

              *(v30 + 1760) = 1;
              v30 = *(v11 + 32);
              goto LABEL_36;
            }

            v232 = *(v30 + 32);
            if ((v232 + 6) >= 0xDu)
            {
              if (dword_280B9A880 < 3)
              {
                return 4294954387;
              }

              v190 = 6;
              v191 = -6;
              v81 = "pps_beta_offset_div2_ of %lld is out of range (%lld, %lld)\n";
              fprintf(*MEMORY[0x277D85DF8], "pps_beta_offset_div2_ of %lld is out of range (%lld, %lld)\n", v232, -6, 6);
              v82 = *(v30 + 32);
            }

            else
            {
              v233 = *(v30 + 33);
              if ((v233 + 6) < 0xDu)
              {
                goto LABEL_408;
              }

              if (dword_280B9A880 < 3)
              {
                return 4294954387;
              }

              v190 = 6;
              v191 = -6;
              v81 = "pps_tc_offset_div2_ of %lld is out of range (%lld, %lld)\n";
              fprintf(*MEMORY[0x277D85DF8], "pps_tc_offset_div2_ of %lld is out of range (%lld, %lld)\n", v233, -6, 6);
              v82 = *(v30 + 33);
            }
          }
        }

        v247 = v191;
        v248 = v190;
        goto LABEL_102;
      }

      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v81 = "num_ref_idx_l1_default_active_minus1_ of %lld is out of range (%lld, %lld)\n";
      fprintf(*MEMORY[0x277D85DF8], "num_ref_idx_l1_default_active_minus1_ of %lld is out of range (%lld, %lld)\n", v109, 0, 14);
      v82 = *(v30 + 8);
    }

    v248 = 14;
    goto LABEL_190;
  }

  v46 = *(v11 + 2336);
  if (!v46)
  {
    if (dword_280B9A880 < 3)
    {
      return 4294954387;
    }

    v42 = *MEMORY[0x277D85DF8];
    v43 = "No previous slice found but first_slice_in_pic_flag_ not set!\n";
    v44 = "No previous slice found but first_slice_in_pic_flag_ not set!\n";
    v45 = 62;
    goto LABEL_52;
  }

  v48 = *(v46 + 32);
  v47 = *(v46 + 40);
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
  }

  v49 = *(v11 + 40);
  *(v11 + 32) = v48;
  *(v11 + 40) = v47;
  if (v49)
  {
    sub_2773CC26C(v49);
  }

  v50 = *(v11 + 2336);
  v52 = *(v50 + 16);
  v51 = *(v50 + 24);
  if (v51)
  {
    atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
  }

  v53 = *(v11 + 24);
  *(v11 + 16) = v52;
  *(v11 + 24) = v51;
  if (v53)
  {
    sub_2773CC26C(v53);
  }

  v54 = *(v11 + 32);
  if (!v54 || (v55 = *(v11 + 16)) == 0)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Missing SPS or PPS for secondary slice\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Missing SPS or PPS for secondary slice\n");
    }

    return 4294954385;
  }

  if (*v54 != *(v11 + 50) || *(v55 + 200) != v54[1])
  {
    if (dword_280B9A880 < 3)
    {
      return 4294954387;
    }

    v42 = *MEMORY[0x277D85DF8];
    v43 = "Secondary slice points to different SPS/PPS\n";
    v44 = "Secondary slice points to different SPS/PPS\n";
    v45 = 44;
    goto LABEL_52;
  }

  if (v54[2] == 1)
  {
    v56 = sub_2773FB848(v11 + 1608, 1) != 0;
    v55 = *(v11 + 16);
  }

  else
  {
    v56 = 0;
  }

  *(v11 + 56) = v56;
  v88 = *(v55 + 2124) * *(v55 + 2120);
  v89 = __OFSUB__(v88, 1);
  v90 = v88 - 1;
  if ((v90 < 0) ^ v89 | (v90 == 0))
  {
    if (dword_280B9A880 < 3)
    {
      return 4294954387;
    }

    v42 = *MEMORY[0x277D85DF8];
    v43 = "got secondary slice but only one CTB in entire picture!\n";
    v44 = "got secondary slice but only one CTB in entire picture!\n";
    v45 = 56;
    goto LABEL_52;
  }

  v37 = sub_2773FB8A4(v11 + 1608, 32 - __clz(v90));
  *(v11 + 52) = v37;
  if ((*(v11 + 56) & 1) == 0)
  {
LABEL_44:
    *(v11 + 648) = v37;
    *(v11 + 1385) = 0;
    v38 = *(v11 + 32);
    if (*(v38 + 4))
    {
      *(v11 + 57) = sub_2773FB848(v11 + 1608, *(v38 + 4));
    }

    v39 = sub_2773FB90C(v11 + 1608);
    *(v11 + 58) = v39;
    if (v39 >= 3u)
    {
      if (dword_280B9A880 >= 3)
      {
        v40 = "Invalid slice type %d\n";
        fprintf(*MEMORY[0x277D85DF8], "Invalid slice type %d\n", v39);
        v41 = *(v11 + 58);
LABEL_98:
        v246 = v41;
LABEL_99:
        syslog(27, v40, v246, v247, v248);
        return 4294954387;
      }

      return 4294954387;
    }

    v83 = *(*(v11 + 32) + 3) != 1 || sub_2773FB848(v11 + 1608, 1) != 0;
    *(v11 + 59) = v83;
    if (*(*(v11 + 16) + 202) == 1)
    {
      *(v11 + 60) = sub_2773FB848(v11 + 1608, 2);
    }

    if (*(v11 + 632))
    {
      if (*(v11 + 58) != 2)
      {
        if (dword_280B9A880 < 3)
        {
          return 4294954387;
        }

        v42 = *MEMORY[0x277D85DF8];
        v43 = "IDR nalu must have only I slices\n";
LABEL_51:
        v44 = v43;
        v45 = 33;
LABEL_52:
        fwrite(v44, v45, 1uLL, v42);
        syslog(27, v43);
        return 4294954387;
      }
    }

    else
    {
      *(v11 + 64) = sub_2773FB848(v11 + 1608, *(*(v11 + 16) + 224) + 4);
      v84 = sub_2773FB848(v11 + 1608, 1);
      *(v11 + 68) = v84 != 0;
      if (v84)
      {
        v85 = *(v11 + 16);
        v86 = *(v85 + 288);
        if (v86 >= 2)
        {
          v87 = sub_2773FB848(v11 + 1608, 32 - __clz(v86 - 1));
          v85 = *(v11 + 16);
          v86 = *(v85 + 288);
        }

        else
        {
          v87 = 0;
        }

        *(v11 + 320) = v87;
        if (v87 >= v86)
        {
          if (dword_280B9A880 < 3)
          {
            return 4294954387;
          }

          v40 = "short_term_ref_pic_set_idx (%u) >= sps_->num_short_term_ref_pic_sets (%u)!\n";
          fprintf(*MEMORY[0x277D85DF8], "short_term_ref_pic_set_idx (%u) >= sps_->num_short_term_ref_pic_sets (%u)!\n", v87, v86);
          v91 = *(v11 + 320);
          v92 = *(*(v11 + 16) + 288);
          goto LABEL_251;
        }
      }

      else
      {
        result = sub_277508B44(v11 + 72, v11 + 1608, *(v11 + 16), *(*(v11 + 16) + 288));
        if (result)
        {
          return result;
        }

        v85 = *(v11 + 16);
      }

      if (*(v85 + 320) == 1)
      {
        result = sub_277509614((v11 + 324), v85, v11 + 1608);
        if (result)
        {
          return result;
        }

        v85 = *(v11 + 16);
      }

      else
      {
        *(v11 + 324) = 0;
        *(v11 + 508) = 0;
      }

      v114 = *(v85 + 396) == 1 && sub_2773FB848(v11 + 1608, 1) != 0;
      *(v11 + 514) = v114;
    }

    *(v11 + 512) = 0;
    if (*(*(v11 + 16) + 277) == 1)
    {
      *(v11 + 512) = sub_2773FB848(v11 + 1608, 1) != 0;
      if (*(*(v11 + 16) + 201))
      {
        *(v11 + 513) = sub_2773FB848(v11 + 1608, 1) != 0;
      }
    }

    *(v11 + 516) = 0;
    if (*(v11 + 58) > 1u)
    {
LABEL_229:
      v149 = sub_2773FB90C(v11 + 1608);
      *(v11 + 559) = (-((v149 + 1) & 1) ^ ((v149 + 1) >> 1)) + ((v149 + 1) & 1);
      v150 = *(v11 + 32);
      *(v11 + 564) = *(v150 + 31);
      *(v11 + 567) = *(v150 + 28);
      *(v11 + 565) = *(v150 + 32);
      *(v11 + 560) = 0;
      *(v11 + 562) = 0;
      if (*(v150 + 16) == 1)
      {
        v151 = sub_2773FB90C(v11 + 1608);
        *(v11 + 560) = (-((v151 + 1) & 1) ^ ((v151 + 1) >> 1)) + ((v151 + 1) & 1);
        v152 = sub_2773FB90C(v11 + 1608);
        *(v11 + 561) = (-((v152 + 1) & 1) ^ ((v152 + 1) >> 1)) + ((v152 + 1) & 1);
        v150 = *(v11 + 32);
      }

      if (*(v150 + 1617) == 1)
      {
        *(v11 + 562) = sub_2773FB848(v11 + 1608, 1) != 0;
        v150 = *(v11 + 32);
      }

      if (*(v150 + 29) == 1)
      {
        if (*(v150 + 30))
        {
          v153 = sub_2773FB848(v11 + 1608, 1);
          *(v11 + 563) = v153 != 0;
          if (v153)
          {
            v154 = sub_2773FB848(v11 + 1608, 1);
            *(v11 + 564) = v154 != 0;
            if (!v154)
            {
              v155 = sub_2773FB90C(v11 + 1608);
              *(v11 + 565) = (-((v155 + 1) & 1) ^ ((v155 + 1) >> 1)) + ((v155 + 1) & 1);
              v156 = sub_2773FB90C(v11 + 1608);
              *(v11 + 566) = (-((v156 + 1) & 1) ^ ((v156 + 1) >> 1)) + ((v156 + 1) & 1);
            }
          }
        }

        else
        {
          *(v11 + 563) = 0;
        }
      }

      if (*(*(v11 + 32) + 28) == 1 && ((*(v11 + 512) & 1) != 0 || (*(v11 + 513) & 1) != 0 || (*(v11 + 564) & 1) == 0))
      {
        *(v11 + 567) = sub_2773FB848(v11 + 1608, 1) != 0;
      }

      goto LABEL_244;
    }

    v115 = sub_2773FB848(v11 + 1608, 1);
    *(v11 + 515) = v115 != 0;
    if (v115)
    {
      v117 = sub_2773FB90C(v11 + 1608);
      *(v11 + 516) = v117 + 1;
      if (v117 >= 0xFu)
      {
        if (dword_280B9A880 < 3)
        {
          return 4294954387;
        }

        v40 = "num_ref_idx_l0_active_minus1_ (%d) out of range [0, 14]\n";
        fprintf(*MEMORY[0x277D85DF8], "num_ref_idx_l0_active_minus1_ (%d) out of range [0, 14]\n", (v117 + 1) - 1);
        v119 = *(v11 + 516);
LABEL_186:
        v41 = (v119 - 1);
        goto LABEL_98;
      }

      if (!*(v11 + 58))
      {
        v118 = sub_2773FB90C(v11 + 1608);
        *(v11 + 517) = v118 + 1;
        if (v118 >= 0xFu)
        {
          if (dword_280B9A880 < 3)
          {
            return 4294954387;
          }

          v40 = "num_ref_idx_l1_active_minus1_ (%d) out of range [0, 14]\n";
          fprintf(*MEMORY[0x277D85DF8], "num_ref_idx_l1_active_minus1_ (%d) out of range [0, 14]\n", (v118 + 1) - 1);
          v119 = *(v11 + 517);
          goto LABEL_186;
        }
      }
    }

    else
    {
      v120 = *(v11 + 32);
      *(v11 + 516) = *(v120 + 7) + 1;
      if (!*(v11 + 58))
      {
        *(v11 + 517) = *(v120 + 8) + 1;
      }
    }

    if (*(v11 + 68) == 1)
    {
      v121 = *(*(v11 + 16) + 296) + 248 * *(v11 + 320);
    }

    else
    {
      v121 = v11 + 72;
    }

    v122 = *(v121 + 160);
    if (*(v121 + 160))
    {
      LODWORD(v123) = 0;
      v124 = (v121 + 2);
      do
      {
        v125 = *v124;
        v124 += 4;
        v123 = (v123 + v125);
        --v122;
      }

      while (v122);
    }

    else
    {
      v123 = 0;
    }

    v126 = *(v121 + 161);
    if (*(v121 + 161))
    {
      v127 = (v121 + 66);
      do
      {
        v128 = *v127;
        v127 += 4;
        v123 = (v123 + v128);
        --v126;
      }

      while (v126);
    }

    v129 = *(v11 + 328) + *(v11 + 324);
    v130 = v129 - 1;
    if (v129 >= 1)
    {
      v131 = (v129 + 3) & 0xFFFFFFFC;
      v132 = v123;
      v116.i32[0] = v130;
      v133 = xmmword_27750D390;
      v134 = vdupq_n_s32(*(v11 + 508));
      v135.i64[0] = 0xFF000000FFLL;
      v135.i64[1] = 0xFF000000FFLL;
      v136.i64[0] = 0x100000001;
      v136.i64[1] = 0x100000001;
      v137.i64[0] = 0x400000004;
      v137.i64[1] = 0x400000004;
      do
      {
        v138 = v133;
        v139 = v132;
        v132 = vaddq_s32(vandq_s8(vshlq_u32(v134, vnegq_s32(vandq_s8(v133, v135))), v136), v132);
        v133 = vaddq_s32(v133, v137);
        v131 -= 4;
      }

      while (v131);
      v123 = vaddvq_s32(vbslq_s8(vcgtq_u32(v138, vdupq_lane_s32(v116, 0)), v139, v132));
    }

    v140 = *(*(v11 + 16) + *(*(v11 + 16) + 1) + 226);
    if (v123 > v140)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v40 = "numPocTotalCurr (%d) out of range [0, %d]\n";
      fprintf(*MEMORY[0x277D85DF8], "numPocTotalCurr (%d) out of range [0, %d]\n", v123, v140);
      v246 = v123;
      v247 = *(*(v11 + 16) + *(*(v11 + 16) + 1) + 226);
      goto LABEL_99;
    }

    if (v123 >= 2 && (*(*(v11 + 32) + 1608) & 1) != 0)
    {
      v141 = 32 - __clz(v123 - 1);
      v142 = sub_2773FB848(v11 + 1608, 1);
      *(v11 + 518) = v142 != 0;
      if (v142 && *(v11 + 516) >= 1)
      {
        v143 = 0;
        v144 = v11 + 520;
        while (1)
        {
          v145 = sub_2773FB848(v11 + 1608, v141);
          *(v144 + v143) = v145;
          if (v145 >= v123)
          {
            break;
          }

          if (++v143 >= *(v11 + 516))
          {
            goto LABEL_209;
          }
        }

        if (dword_280B9A880 < 3)
        {
          return 4294954387;
        }

        v192 = "list_entry_l0_[%d] (%d) out of range [0, %d]\n";
        fprintf(*MEMORY[0x277D85DF8], "list_entry_l0_[%d] (%d) out of range [0, %d]\n");
LABEL_381:
        syslog(27, v192, v143, *(v144 + v143), v123);
        return 4294954387;
      }

LABEL_209:
      if (*(v11 + 58))
      {
        *(v11 + 519) = 0;
        goto LABEL_214;
      }

      v188 = sub_2773FB848(v11 + 1608, 1);
      *(v11 + 519) = v188 != 0;
      if (v188 && *(v11 + 517) >= 1)
      {
        v143 = 0;
        v144 = v11 + 536;
        while (1)
        {
          v189 = sub_2773FB848(v11 + 1608, v141);
          *(v144 + v143) = v189;
          if (v189 >= v123)
          {
            break;
          }

          if (++v143 >= *(v11 + 517))
          {
            goto LABEL_212;
          }
        }

        if (dword_280B9A880 < 3)
        {
          return 4294954387;
        }

        v192 = "list_entry_l1_[%d] (%d) out of range [0, %d]\n";
        fprintf(*MEMORY[0x277D85DF8], "list_entry_l1_[%d] (%d) out of range [0, %d]\n");
        goto LABEL_381;
      }
    }

    else
    {
      *(v11 + 518) = 0;
    }

LABEL_212:
    if (!*(v11 + 58))
    {
      *(v11 + 552) = sub_2773FB848(v11 + 1608, 1) != 0;
    }

LABEL_214:
    v146 = *(*(v11 + 32) + 6) == 1 && sub_2773FB848(v11 + 1608, 1) != 0;
    *(v11 + 553) = v146;
    *(v11 + 554) = 1;
    if (*(v11 + 514) == 1)
    {
      if (*(v11 + 58) || (v147 = sub_2773FB848(v11 + 1608, 1), *(v11 + 554) = v147 != 0, v147))
      {
        if (*(v11 + 516) <= 1)
        {
          goto LABEL_224;
        }

        goto LABEL_223;
      }

      if (*(v11 + 517) >= 2)
      {
LABEL_223:
        *(v11 + 555) = sub_2773FB90C(v11 + 1608);
      }
    }

LABEL_224:
    v148 = *(v11 + 32);
    if (*(v148 + 17) == 1 && *(v11 + 58) == 1 || *(v148 + 18) == 1 && !*(v11 + 58))
    {
      v180 = sub_2773FB90C(v11 + 1608);
      *(v11 + 556) = v180;
      if (v180 >= 8u)
      {
        if (dword_280B9A880 < 3)
        {
          return 4294954387;
        }

        v40 = "luma_log2_weight_denom %u > kMaxWeightDenominator %u\n";
        fprintf(*MEMORY[0x277D85DF8], "luma_log2_weight_denom %u > kMaxWeightDenominator %u\n", v180, 7);
        v41 = *(v11 + 556);
        v247 = 7;
        goto LABEL_98;
      }

      *(v11 + 557) = 0;
      if (*(*(v11 + 16) + 201))
      {
        v186 = sub_2773FB90C(v11 + 1608);
        v187 = (-((v186 + 1) & 1) ^ ((v186 + 1) >> 1)) + ((v186 + 1) & 1);
        *(v11 + 557) = (-((v186 + 1) & 1) ^ ((v186 + 1) >> 1)) + ((v186 + 1) & 1);
        v180 = *(v11 + 556);
      }

      else
      {
        LOBYTE(v187) = 0;
      }

      v193 = v187 + v180;
      *(v11 + 662) = v187 + v180;
      if ((v187 + v180) >= 8u)
      {
        if (dword_280B9A880 < 3)
        {
          return 4294954387;
        }

        v40 = "chromaLog2WeightDenom %d not in [0, %u] (chroma delta %d)\n";
        fprintf(*MEMORY[0x277D85DF8], "chromaLog2WeightDenom %d not in [0, %u] (chroma delta %d)\n", (v187 + v180), v187, 7);
        v41 = *(v11 + 662);
        v247 = *(v11 + 557);
        v248 = 7;
        goto LABEL_98;
      }

      v194 = *(v11 + 16);
      v195 = 14 - *(v194 + 2096);
      if (v195 <= 2)
      {
        v195 = 2;
      }

      *(v11 + 664) = v195 + v180;
      v196 = 14 - *(v194 + 2098);
      if (v196 <= 2)
      {
        v196 = 2;
      }

      *(v11 + 668) = v196 + v193;
      result = sub_277433DE4(v11, 0);
      if (result)
      {
        return result;
      }

      if (!*(v11 + 58))
      {
        result = sub_277433DE4(v11, 1u);
        if (result)
        {
          return result;
        }
      }
    }

    *(v11 + 558) = sub_2773FB90C(v11 + 1608);
    goto LABEL_229;
  }

LABEL_244:
  v157 = *(v11 + 32);
  if ((*(v157 + 20) & 1) != 0 || *(v157 + 21) == 1)
  {
    v158 = sub_2773FB90C(v11 + 1608);
    *(v11 + 568) = v158;
    if (v158)
    {
      if (*(*(v11 + 32) + 21) == 1)
      {
        v159 = *(*(v11 + 16) + 2124);
        if (v158 > v159)
        {
          if (dword_280B9A880 < 3)
          {
            return 4294954387;
          }

          v40 = "num_entry_point_offsets %d > sps_->picHeightInCtbsY %d!\n";
          fprintf(*MEMORY[0x277D85DF8], "num_entry_point_offsets %d > sps_->picHeightInCtbsY %d!\n", v158, v159);
          v91 = *(v11 + 568);
          v92 = *(*(v11 + 16) + 2124);
LABEL_251:
          v246 = v91;
          v247 = v92;
          goto LABEL_99;
        }
      }

      v160 = sub_2773FB90C(v11 + 1608);
      *(v11 + 572) = v160;
      if (v160 >= 0x20u)
      {
        if (dword_280B9A880 < 3)
        {
          return 4294954387;
        }

        v40 = "offset_len_minus1 %d > 31!\n";
        fprintf(*MEMORY[0x277D85DF8], "offset_len_minus1 %d > 31!\n", v160);
        v41 = *(v11 + 572);
        goto LABEL_98;
      }

      sub_27742C5B0((v11 + 576), *(v11 + 568));
      if (*(v11 + 568) >= 1)
      {
        v161 = 0;
        do
        {
          *(*(v11 + 576) + 4 * v161++) = sub_2773FB8A4(v11 + 1608, *(v11 + 572) + 1);
        }

        while (v161 < *(v11 + 568));
      }
    }
  }

  else
  {
    *(v11 + 568) = 0;
  }

  if (*(*(v11 + 32) + 1612) == 1)
  {
    v162 = sub_2773FB90C(v11 + 1608);
    *(v11 + 600) = v162;
    if (v162 >= 0x101)
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v40 = "slice_segment_header_extension_length %d > 256!\n";
      fprintf(*MEMORY[0x277D85DF8], "slice_segment_header_extension_length %d > 256!\n", v162);
      v41 = *(v11 + 600);
      goto LABEL_98;
    }

    sub_277434180(v11 + 608, v162);
    if (*(v11 + 600))
    {
      v163 = 0;
      do
      {
        *(*(v11 + 608) + v163++) = sub_2773FB848(v11 + 1608, 8);
      }

      while (v163 < *(v11 + 600));
    }
  }

  v164 = *(v11 + 1640) + 1;
  *(v11 + 1640) = v164;
  *(v11 + 1660) = 0;
  v165 = *(v11 + 1648);
  if (v164 > v165)
  {
    *(v11 + 1640) = v165;
    *(v11 + 1664) = 1;
  }

  result = sub_2774341A8(v11);
  if (result)
  {
    return result;
  }

  if (*(*(v11 + 2344) + 58) == 1)
  {
    sub_2773FA2B4(v11, *MEMORY[0x277D85DF8]);
  }

  if (v7)
  {
LABEL_272:
    if (*(a1 + 2136) <= 0 && *(v11 + 58) == 2 || (result = sub_2773F81F4(v11, (a1 + 2136), *(a1 + 2120)), !result))
    {
      result = 0;
      ++*(a1 + 2112);
    }

    return result;
  }

  if (*(v11 + 48) != 1)
  {
    return 4294954387;
  }

  v166 = *(a1 + 2056);
  v167 = *(a2 + 18);
  v168 = *v18;
  if (v168 == 1)
  {
    *(v166 + 202) = *(v11 + 638);
  }

  *(v166 + 2584) = 0;
  v170 = v11 + 16;
  v169 = *(v11 + 16);
  v171 = *(v169 + 2129);
  v172 = *(v169 + 2128);
  *(v166 + 2368) = v167;
  *(v166 + 2372) = v171;
  *(v166 + 2376) = v172;
  v173 = *(v166 + 2388);
  v174 = *(v11 + 632);
  if (v174)
  {
    v173 = 0;
    v175 = 0;
  }

  else
  {
    v175 = *(v166 + 2384);
  }

  v176 = *(v11 + 64);
  if (v176 < v175 && (v177 = *(v169 + 2108), v175 - v176 >= v177 / 2))
  {
    v173 += v177;
  }

  else
  {
    v89 = __OFSUB__(v176, v175);
    v178 = v176 - v175;
    if (!((v178 < 0) ^ v89 | (v178 == 0)))
    {
      if (v178 <= *(v169 + 2108) / 2)
      {
        v179 = 0;
      }

      else
      {
        v179 = *(v169 + 2108);
      }

      v173 -= v179;
    }
  }

  *(v11 + 644) = v173;
  if (v168 && *(v11 + 638) == 1)
  {
    v173 = 0;
    *(v11 + 644) = 0;
  }

  v197 = (v173 + v176);
  *(v11 + 640) = v197;
  if (!v167 && (*(v11 + 634) & 1) == 0 && (*(v11 + 635) & 1) == 0 && (*(v11 + 636) & 1) == 0)
  {
    *(v166 + 2384) = v176;
    *(v166 + 2388) = v173;
  }

  if ((v174 & 1) == 0)
  {
    if (*(v11 + 68) == 1)
    {
      v201 = *(v169 + 296) + 248 * *(v11 + 320);
    }

    else
    {
      v201 = v11 + 72;
    }

    result = sub_2773FDA2C((a1 + 2136), v166 + 1976, v11 + 16, v201, v11 + 324, v197);
    if (result)
    {
      return result;
    }

    sub_2773FF4D4(v166 + 1976, (a1 + 2136));
    if (*(v11 + 58) != 2 && !*(a1 + 2136))
    {
      if (dword_280B9A880 < 3)
      {
        return 4294954387;
      }

      v42 = *MEMORY[0x277D85DF8];
      v43 = "P or B slice must have reference frames!\n";
      v44 = "P or B slice must have reference frames!\n";
      v45 = 41;
      goto LABEL_52;
    }
  }

  if (*(v166 + 2544) && *(v11 + 58) != 2)
  {
    if (dword_280B9A880 >= 3)
    {
      v212 = *MEMORY[0x277D85DF8];
      v213 = "P or B slice not supported in tile decoder!\n";
      v214 = "P or B slice not supported in tile decoder!\n";
      v215 = 44;
      goto LABEL_377;
    }

    return 4294954386;
  }

  sub_2773FF468(v166 + 1976);
  if (*v18 == 1 && *(v11 + 638) == 1)
  {
    if ((*(v11 + 637) & 1) == 0 && (*(v11 + 49) & 1) == 0)
    {
      sub_27743B7E4(v166);
    }

    v198 = (v166 + 2008);
    v199 = 17;
    do
    {
      v200 = v198[1];
      *v198 = 0;
      v198[1] = 0;
      if (v200)
      {
        sub_2773CC26C(v200);
      }

      v198 += 2;
      --v199;
    }

    while (v199);
  }

  else
  {
    sub_27743F37C(v166, 0);
  }

  v203 = (v166 + 184);
  v202 = *(v166 + 184);
  if (v202)
  {
    v204 = *(v166 + 2544);
    if (v204)
    {
      v205 = 3;
    }

    else
    {
      v205 = 6;
    }

    v206 = *v170;
    v207 = *(v202 + 8);
    if (*(*v170 + 2096) == *(v207 + 2096) && *(v206 + 2098) == *(v207 + 2098) && *(v206 + 201) == *(v207 + 201) && *(v206 + 1991) == *(v207 + 1991))
    {
      if ((*(v206 + *(v206 + 1) + 226) != 0) == (*(v207 + *(v207 + 1) + 226) != 0))
      {
        if (*(v206 + 204) == *(v207 + 204) && *(v206 + 208) == *(v207 + 208) && *(v206 + 2113) == *(v207 + 2113) && *(v206 + 220) == *(v207 + 220) && *(v206 + 218) == *(v207 + 218) && *(v206 + 214) == *(v207 + 214) && *(v206 + 216) == *(v207 + 216))
        {
          v236 = *(v206 + 1992) == *(v207 + 1992) && *(v206 + 1994) == *(v207 + 1994) && *(v206 + 1993) == *(v207 + 1993) && *(v206 + 1995) == *(v207 + 1995) && *(v206 + 1996) == *(v207 + 1996);
          if (v236 || v205 > dword_280B9A880)
          {
            if (v236)
            {
              goto LABEL_392;
            }

            goto LABEL_366;
          }

          v208 = *MEMORY[0x277D85DF8];
          v209 = "SPS change resulted in different colorspace\n";
          v210 = "SPS change resulted in different colorspace\n";
          v211 = 44;
        }

        else
        {
          if (v205 > dword_280B9A880)
          {
LABEL_366:
            if (v204)
            {
              if (dword_280B9A880 >= 3)
              {
                v212 = *MEMORY[0x277D85DF8];
                v213 = "SPS has signficantly changed during tile decode\n";
                v214 = "SPS has signficantly changed during tile decode\n";
                v215 = 48;
LABEL_377:
                fwrite(v214, v215, 1uLL, v212);
                syslog(27, v213);
                return 4294954386;
              }

              return 4294954386;
            }

            sub_27743B7E4(v166);
            v216 = (v166 + 2008);
            v217 = 17;
            do
            {
              v218 = v216[1];
              *v216 = 0;
              v216[1] = 0;
              if (v218)
              {
                sub_2773CC26C(v218);
              }

              v216 += 2;
              --v217;
            }

            while (v217);
            sub_2773FD97C((a1 + 2136));
            if (*v203)
            {
              (*(**v203 + 8))(*v203);
            }

            *(v166 + 184) = 0;
            v219 = *(v166 + 2568);
            *(v166 + 2560) = 0u;
            if (v219)
            {
              sub_2773CC26C(v219);
              v202 = *v203;
              if (*v203)
              {
                goto LABEL_392;
              }
            }

            goto LABEL_390;
          }

          v208 = *MEMORY[0x277D85DF8];
          v209 = "SPS change resulted in different buffer size\n";
          v210 = "SPS change resulted in different buffer size\n";
          v211 = 45;
        }
      }

      else
      {
        if (v205 > dword_280B9A880)
        {
          goto LABEL_366;
        }

        v208 = *MEMORY[0x277D85DF8];
        v209 = "SPS change resulted in different profile!\n";
        v210 = "SPS change resulted in different profile!\n";
        v211 = 42;
      }
    }

    else
    {
      if (v205 > dword_280B9A880)
      {
        goto LABEL_366;
      }

      v208 = *MEMORY[0x277D85DF8];
      v209 = "New SPS changed pixel format\n";
      v210 = "New SPS changed pixel format\n";
      v211 = 29;
    }

    fwrite(v210, v211, 1uLL, v208);
    syslog(v205 | 0x18, v209);
    v204 = *(v166 + 2544);
    goto LABEL_366;
  }

LABEL_390:
  result = sub_2773F2A64((v11 + 16), v166 + 2536, (v166 + 184));
  if (result)
  {
    return result;
  }

  v202 = *v203;
LABEL_392:
  v220 = (a1 + 2120);
  if (*(v166 + 34) != 255)
  {
    *(v202 + 25) = 1;
  }

  result = (*(*v202 + 32))(v202, *(v11 + 640), a3, a4, a1 + 2120);
  if (!result)
  {
    if (!*(*v170 + 201))
    {
      sub_2773ECE34(*v220);
    }

    *(*(a1 + 2120) + 43) = *(v11 + 59) ^ 1;
    sub_2773FF3B8(v166 + 1976, *(a1 + 2120), *(a1 + 2128));
    v221 = 0;
    v222 = v166 + 2008;
    v223 = 2008;
    while (1)
    {
      v224 = *(v166 + v223);
      if (v224)
      {
        if (*(v224 + 1024) == *(v11 + 640))
        {
          break;
        }
      }

      ++v221;
      v223 += 16;
      if (v221 == 17)
      {
        goto LABEL_427;
      }
    }

    *(v166 + v221 + 2280) = 1;
LABEL_427:
    sub_27743F37C(v166, 1);
    if (*(v166 + 357) == 1)
    {
      std::mutex::lock((v166 + 2472));
      if ((*(*v220 + 42) & 1) == 0)
      {
        sub_27743B8F4((v166 + 2424), (a1 + 2120));
        *(*v220 + 42) = 1;
      }

      std::mutex::unlock((v166 + 2472));
    }

    if (*(v166 + 2544) || !*(*v170 + *(*v170 + 1) + 226))
    {
      v234 = 0;
      while (!*v222 || *(*v222 + 1024) != *(v11 + 640))
      {
        ++v234;
        v222 += 16;
        if (v234 == 17)
        {
          goto LABEL_440;
        }
      }

      *(v166 + v234 + 2280) = 0;
LABEL_440:
      sub_2773FF468(v166 + 1976);
    }

    if ((*(v166 + 2584) & 1) == 0)
    {
      v235 = *(v166 + 2568);
      *(v166 + 2560) = 0u;
      if (v235)
      {
        sub_2773CC26C(v235);
      }
    }

    goto LABEL_272;
  }

  return result;
}

void sub_2774DF7DC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a1 + 2120);
  v5 = *(a1 + 2120);
  v6 = *(a1 + 2128);
  v13 = v5;
  v14 = v6;
  if (!v6)
  {
    *v4 = 0;
    *(a1 + 2128) = 0;
    if (a2)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v7 = *(a1 + 2128);
  *v4 = 0;
  v4[1] = 0;
  if (v7)
  {
    sub_2773CC26C(v7);
  }

  if (!v2)
  {
LABEL_7:
    if (v5)
    {
      v8 = *(a1 + 2056);
      if (*(v8 + 50) == 255)
      {
        goto LABEL_13;
      }

      v9 = sub_2773D046C(v5);
      if (dword_280B9A880 >= 7)
      {
        v10 = MEMORY[0x277D85DF8];
        fprintf(*MEMORY[0x277D85DF8], "Received frame checksum (POC %d) = %x\n", *(**(a1 + 2064) + 640), *(v8 + 64));
        syslog(31, "Received frame checksum (POC %d) = %x\n", *(**(a1 + 2064) + 640), *(*(a1 + 2056) + 64));
        if (dword_280B9A880 >= 7)
        {
          fprintf(*v10, "Decoded  frame checksum (POC %d) = %x\n", *(**(a1 + 2064) + 640), v9);
          syslog(31, "Decoded  frame checksum (POC %d) = %x\n", *(**(a1 + 2064) + 640), v9);
        }
      }

      if (*(*(a1 + 2056) + 64) == v9)
      {
LABEL_13:
        v2 = 0;
      }

      else
      {
        if (dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "Checksum mismatch at POC %d: enc = %d, dec = %d\n", *(**(a1 + 2064) + 640), *(*(a1 + 2056) + 64), v9);
          syslog(27, "Checksum mismatch at POC %d: enc = %d, dec = %d\n", *(**(a1 + 2064) + 640), *(*(a1 + 2056) + 64), v9);
        }

        v2 = 4294954387;
      }
    }

    else
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("Something went wrong and frame is NULL (but we have no specific error...)\n", 0x4AuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(27, "Something went wrong and frame is NULL (but we have no specific error...)\n");
      }

      v2 = 4294954385;
    }
  }

LABEL_20:
  if (*(a1 + 2112) >= 1)
  {
    v11 = 0;
    do
    {
      sub_2773F8C08(*(*(a1 + 2064) + 8 * v11++));
    }

    while (v11 < *(a1 + 2112));
  }

  sub_2773FD97C((a1 + 2136));
  if (v5)
  {
    std::mutex::lock((v5 + 1040));
    atomic_store(0x7FFFFFFFu, (v5 + 1032));
    std::mutex::unlock((v5 + 1040));
    std::condition_variable::notify_all((v5 + 1104));
    *(v5 + 45) = *(**(a1 + 2064) + 59);
    if (!v2)
    {
      if (*(*(a1 + 2056) + 304) == 1)
      {
        v2 = sub_2773ED958(v5, v5 + 598);
        *(v5 + 597) = 1;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  v12 = *a1;
  atomic_store(0, (a1 + 3440));
  sub_27743F2C8(*(a1 + 2056), v12, v2, &v13);
  if (v14)
  {
    sub_2773CC26C(v14);
  }
}

void sub_2774DFAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    sub_2773CC26C(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2774DFAEC(uint64_t a1, double a2)
{
  v3 = *(a1 + 2112);
  if (v3 > 1)
  {
    v4 = *(**(a1 + 2064) + 16);
    v5 = *(v4 + 2124);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = *(v4 + 2120);
      do
      {
        if (v7 >= 1)
        {
          for (i = 0; i != v7; ++i)
          {
            v20 = v6;
            v21 = i;
            v9 = sub_2774DFC7C(a1, i, v6);
            sub_27743B048(*(*(a1 + 2064) + 8 * v9), *(a1 + 2120), *(a1 + 2088), &v21, &v20, v10);
          }
        }

        ++v6;
      }

      while (v6 != v5);
    }

    goto LABEL_14;
  }

  if (v3 != 1)
  {
LABEL_14:
    sub_2774DF7DC(a1, 0);
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(*(a1 + 2064) + 8 * v11);
    v13 = *(a1 + 2120);
    v14 = *(a1 + 2088);
    v15 = *(v12 + 52);
    v16 = *(*(v12 + 16) + 2120);
    v20 = v15 / v16;
    v21 = v15 % v16;
    *(v12 + 8) = v13;
    sub_2774369E4(v12, v13, a2);
    if (v17)
    {
      break;
    }

      ;
    }

    if (++v11 >= *(a1 + 2112))
    {
      goto LABEL_14;
    }
  }

  v18 = v17;
  *(v12 + 8) = 0;
  if (dword_280B9A880 >= 3)
  {
    fwrite("Error starting decode\n", 0x16uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "Error starting decode\n");
  }

  sub_2774DF7DC(a1, v18);
  return v18;
}

uint64_t sub_2774DFC7C(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 2112);
  if (v3 < 2)
  {
    return 0;
  }

  v7 = *(a1 + 2064);
  v8 = *v7;
  v9 = a2 + *(*(*v7 + 16) + 2120) * a3;
  v10 = *(*v7 + 32);
  if ((*(v10 + 20) & 1) == 0)
  {
    v20 = v7 - 1;
    while (1)
    {
      v14 = v3 - 1;
      if (v3 < 1)
      {
        break;
      }

      v21 = *(v20[v3--] + 52);
      if (v21 <= v9)
      {
        return v14;
      }
    }

    goto LABEL_9;
  }

  v11 = sub_2773FB51C(v10 + 1648, a2, a3);
  v12 = *(a1 + 2112);
  if (v12 < 1)
  {
LABEL_9:
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "No slice found containing TB [%d][%d]!\n", a3, a2);
      syslog(27, "No slice found containing TB [%d][%d]!\n", a3, a2);
    }

    return 0;
  }

  v13 = v11;
  v14 = v12 - 1;
  while (1)
  {
    v15 = *(*(a1 + 2064) + 8 * v14);
    v16 = *(v15 + 52);
    if (v16 <= v9)
    {
      v17 = sub_2773FB51C(*(v8 + 32) + 1648, v16 % *(*(v8 + 16) + 2120), v16 / *(*(v8 + 16) + 2120));
      if (v13 >= v17 && v13 <= *(v15 + 568) + v17)
      {
        return v14;
      }
    }

    v18 = v14-- + 1;
    if (v18 <= 1)
    {
      goto LABEL_9;
    }
  }
}

uint64_t sub_2774DFDE4(void *a1, int a2, int *a3, int *a4)
{
  v8 = *(a1[258] + 8 * sub_2774DFC7C(a1, *a3, *a4));
  v10 = (a1[261] + 6464 * a2);
  v11 = a1[265];

  return sub_27743B048(v8, v11, v10, a3, a4, v9);
}

int8x16_t *sub_2774DFE54(int8x16_t *result, const double *a2, int a3, int a4, int a5, int a6)
{
  v6 = result[139];
  v7 = result[140];
  v8 = a2;
  v9 = vld1q_dup_f64(v8++);
  v10 = vld1q_dup_s16(v8);
  v11.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v11.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v12 = vandq_s8(v10, v11);
  v53.val[0] = vqtbl1q_s8(v6, v12);
  v53.val[1] = vqtbl1q_s8(v7, v12);
  v13 = vqtbl2q_s8(v53, xmmword_27750D6A0);
  v14 = result->i64[1];
  v15 = v14[106];
  if (a4 && (a4 & 7) == 0)
  {
    v16 = 0;
    v17 = v14[118] + v14[116] * (a4 >> 3) + (a3 >> 2);
    v18 = *(&unk_27753C6B4 - (a5 >> 2) + 16);
    v19 = a2 - 12 * v15 + 24;
    v20.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v20.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    v22.i64[0] = 0x3000300030003;
    v22.i64[1] = 0x3000300030003;
    v23.i64[0] = 0x101010101010101;
    v23.i64[1] = 0x101010101010101;
    do
    {
      v24 = *(v19 - 24);
      v25 = *v19;
      v26 = vzip2q_s16(v24, *(v19 - 12));
      v24.i64[1] = *(v19 - 12);
      v25.i64[1] = *(v19 + 12);
      v27 = vandq_s8(vzip1q_s32(v26, vzip2q_s16(*v19, *(v19 + 12))), v20);
      v54.val[0] = vqtbl1q_s8(v6, v27);
      v54.val[1] = vqtbl1q_s8(v7, v27);
      v28 = vceqq_s16(vceqq_s8(vqtbl2q_s8(v54, xmmword_27750D6A0), v13), v21);
      v29 = vandq_s8(vaddq_s8(vandq_s8(vuzp1q_s8(v28, v28), vqtbl1q_s8(vceqzq_s32(vuzp1q_s8(vcgtq_u16(vqabsq_s16(vqsubq_s16(v24, v9)), v22), vcgtq_u16(vqabsq_s16(vqsubq_s16(v25, v9)), v22))), xmmword_27750D6B0)), v23), v18);
      v30 = (v17 + v16);
      v31 = vld1q_dup_f32(v30);
      *(v17 + v16) = vmaxq_u8(v29, v31).u32[0];
      v18 = vextq_s8(v18, v18, 4uLL);
      v16 += 4;
      v19 += 48;
    }

    while (v16 < a5 >> 2);
  }

  if (a3 && (a3 & 7) == 0)
  {
    v32 = 0;
    v33 = v14[121] + v14[117] * (a3 >> 3) + (a4 >> 2);
    v34 = *(&unk_27753C6B4 - (a6 >> 2) + 16);
    v35 = (a2 - 12);
    v36 = 3 * v15;
    v37 = 24 * v15;
    v38 = 36 * v15;
    v39 = 16 * v36;
    v40 = 4 * v36;
    v41.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v41.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v42.i64[0] = -1;
    v42.i64[1] = -1;
    v43.i64[0] = 0x3000300030003;
    v43.i64[1] = 0x3000300030003;
    v44.i64[0] = 0x101010101010101;
    v44.i64[1] = 0x101010101010101;
    do
    {
      v45 = *v35;
      v46 = *(v35 + v37);
      v47 = vzip2q_s16(v46, *(v35 + v38));
      v45.i64[1] = *(v35->i64 + v40);
      v46.i64[1] = *(v35->i64 + v38);
      v48 = vandq_s8(vzip1q_s32(vzip2q_s16(*v35, *(v35 + v40)), v47), v41);
      v55.val[0] = vqtbl1q_s8(v6, v48);
      v55.val[1] = vqtbl1q_s8(v7, v48);
      v49 = vceqq_s16(vceqq_s8(vqtbl2q_s8(v55, xmmword_27750D6A0), v13), v42);
      v50 = vandq_s8(vaddq_s8(vandq_s8(vuzp1q_s8(v49, v49), vqtbl1q_s8(vceqzq_s32(vuzp1q_s8(vcgtq_u16(vqabsq_s16(vqsubq_s16(v45, v9)), v43), vcgtq_u16(vqabsq_s16(vqsubq_s16(v46, v9)), v43))), xmmword_27750D6B0)), v44), v34);
      v51 = (v33 + v32);
      v52 = vld1q_dup_f32(v51);
      *(v33 + v32) = vmaxq_u8(v50, v52).u32[0];
      v34 = vextq_s8(v34, v34, 4uLL);
      v32 += 4;
      v35 = (v35 + v39);
    }

    while (v32 < a6 >> 2);
  }

  return result;
}

__int32 *sub_2774E0090(__int32 *result, const float *a2, int a3, int a4, int a5, int a6)
{
  v6 = vld1q_dup_f32(a2);
  v7 = *(result + 1);
  v8 = v7[106];
  if (a4 && (a4 & 7) == 0)
  {
    v9 = 0;
    v10 = v7[118] + v7[116] * (a4 >> 3) + (a3 >> 2);
    v11 = *(&unk_27753C6B4 - (a5 >> 2) + 16);
    v12 = &a2[-3 * v8 + 6];
    v13.i64[0] = 0x3000300030003;
    v13.i64[1] = 0x3000300030003;
    v14.i64[0] = 0x101010101010101;
    v14.i64[1] = 0x101010101010101;
    do
    {
      v15.i32[0] = *(v12 - 6);
      v15.i32[1] = *(v12 - 3);
      v15.i32[2] = *v12;
      v15.i32[3] = v12[3];
      v16 = (v10 + v9);
      v17 = vld1q_dup_f32(v16);
      *(v10 + v9) = vmaxq_u8(vandq_s8(vaddq_s8(vqtbl1q_s8(vceqzq_s32(vcgtq_u16(vqabsq_s16(vqsubq_s16(v15, v6)), v13)), xmmword_27750D6B0), v14), v11), v17).u32[0];
      v11 = vextq_s8(v11, v11, 4uLL);
      v9 += 4;
      v12 += 12;
    }

    while (v9 < a5 >> 2);
  }

  if (a3 && (a3 & 7) == 0)
  {
    v18 = 0;
    v19 = v7[121] + v7[117] * (a3 >> 3) + (a4 >> 2);
    v20 = *(&unk_27753C6B4 - (a6 >> 2) + 16);
    v21 = (a2 - 3);
    v22 = 3 * v8;
    v23 = 6 * v8;
    v24 = 9 * v8;
    v25 = 16 * v22;
    v26 = v22;
    v27.i64[0] = 0x3000300030003;
    v27.i64[1] = 0x3000300030003;
    v28.i64[0] = 0x101010101010101;
    v28.i64[1] = 0x101010101010101;
    do
    {
      result = &v21[v24];
      v29.i32[0] = *v21;
      v29.i32[1] = v21[v26];
      v29.i32[2] = v21[v23];
      v29.i32[3] = v21[v24];
      v30 = (v19 + v18);
      v31 = vld1q_dup_f32(v30);
      *(v19 + v18) = vmaxq_u8(vandq_s8(vaddq_s8(vqtbl1q_s8(vceqzq_s32(vcgtq_u16(vqabsq_s16(vqsubq_s16(v29, v6)), v27)), xmmword_27750D6B0), v28), v20), v31).u32[0];
      v20 = vextq_s8(v20, v20, 4uLL);
      v18 += 4;
      v21 = (v21 + v25);
    }

    while (v18 < a6 >> 2);
  }

  return result;
}

int8x16_t *sub_2774E0220(int8x16_t *result, uint64_t a2, int a3, int a4, int a5, int a6, double a7, double a8, int8x16_t a9)
{
  v9 = result[139];
  v10 = vld1q_dup_f32(a2);
  a9.i8[0] = *(a2 + 8);
  v11.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v11.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v12 = vqtbl1q_s8(v9, vdupq_lane_s8(*&vandq_s8(a9, v11), 0));
  v13 = result->i64[1];
  v14 = v13[106];
  if (a4 && (a4 & 7) == 0)
  {
    v15 = 0;
    v16 = v13[118] + v13[116] * (a4 >> 3) + (a3 >> 2);
    v17 = *(&unk_27753C6B4 - (a5 >> 2) + 16);
    v18 = a2 - 12 * v14 + 24;
    v19.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v19.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v20.i64[0] = 0x3000300030003;
    v20.i64[1] = 0x3000300030003;
    v21.i64[0] = 0x101010101010101;
    v21.i64[1] = 0x101010101010101;
    do
    {
      v22 = *(v18 - 24);
      v23 = *(v18 - 12);
      v24 = *(v18 + 12);
      v25.i64[0] = vzip1q_s32(v22, v23).u64[0];
      v25.i64[1] = vzip1q_s32(*v18, v24).u64[0];
      v26 = vceqq_s8(vqtbl1q_s8(v9, vandq_s8(vzip1q_s16(vzip2q_s8(v22, v23), vzip2q_s8(*v18, v24)), v19)), v12);
      v27 = (v16 + v15);
      v28 = vld1q_dup_f32(v27);
      *(v16 + v15) = vmaxq_u8(vandq_s8(vsubq_s8(vandq_s8(vaddq_s8(vqtbl1q_s8(vceqzq_s32(vcgtq_u16(vqabsq_s16(vqsubq_s16(v25, v10)), v20)), xmmword_27750D6B0), v21), v26), vmvnq_s8(v26)), v17), v28).u32[0];
      v17 = vextq_s8(v17, v17, 4uLL);
      v15 += 4;
      v18 += 48;
    }

    while (v15 < a5 >> 2);
  }

  if (a3 && (a3 & 7) == 0)
  {
    v29 = 0;
    v30 = v13[121] + v13[117] * (a3 >> 3) + (a4 >> 2);
    v31 = *(&unk_27753C6B4 - (a6 >> 2) + 16);
    v32 = (a2 - 12);
    v33 = 3 * v14;
    v34 = 24 * v14;
    v35 = 36 * v14;
    v36 = 16 * v33;
    v37 = 4 * v33;
    v38.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v38.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v39.i64[0] = 0x3000300030003;
    v39.i64[1] = 0x3000300030003;
    v40.i64[0] = 0x101010101010101;
    v40.i64[1] = 0x101010101010101;
    do
    {
      v41 = *(v32 + v37);
      v42 = *(v32 + v34);
      v43 = *(v32 + v35);
      v44.i64[0] = vzip1q_s32(*v32, v41).u64[0];
      v44.i64[1] = vzip1q_s32(v42, v43).u64[0];
      v45 = vceqq_s8(vqtbl1q_s8(v9, vandq_s8(vzip1q_s16(vzip2q_s8(*v32, v41), vzip2q_s8(v42, v43)), v38)), v12);
      v46 = (v30 + v29);
      v47 = vld1q_dup_f32(v46);
      *(v30 + v29) = vmaxq_u8(vandq_s8(vsubq_s8(vandq_s8(vaddq_s8(vqtbl1q_s8(vceqzq_s32(vcgtq_u16(vqabsq_s16(vqsubq_s16(v44, v10)), v39)), xmmword_27750D6B0), v40), v45), vmvnq_s8(v45)), v31), v47).u32[0];
      v31 = vextq_s8(v31, v31, 4uLL);
      v29 += 4;
      v32 = (v32 + v36);
    }

    while (v29 < a6 >> 2);
  }

  return result;
}

uint64_t sub_2774E0418(uint64_t result, uint64_t a2, unsigned __int8 *a3, unsigned __int16 *a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 2 * a2;
    v7 = 3 * a2;
    v8 = 4 * a2;
    v9 = 6 * a2;
    v10 = 7 * a2;
    v11.i64[0] = 0x2000200020002;
    v11.i64[1] = 0x2000200020002;
    v12.i64[0] = 0xA000A000A000ALL;
    v12.i64[1] = 0xA000A000A000ALL;
    v13 = 5 * a2;
    do
    {
      v15 = *a4++;
      v14 = v15;
      if (v15)
      {
        v16 = *(result - 4);
        v17 = *(result + a2 - 4);
        v18 = *(result + v6 - 4);
        v19 = *(result + v7 - 4);
        v20 = *(result + v8 - 4);
        v21 = *(result + v13 - 4);
        v22 = *(result + v9 - 4);
        v23 = *(result + v10 - 4);
        v24 = vtrn1_s8(v16, v17);
        v25 = vtrn2_s8(v16, v17);
        v26 = vtrn1_s8(v18, v19);
        v27 = vtrn2_s8(v18, v19);
        v28 = vtrn1_s8(v20, v21);
        v29 = vtrn2_s8(v20, v21);
        v30 = vtrn1_s8(v22, v23);
        v31 = vtrn2_s8(v22, v23);
        v32 = vtrn1_s16(v24, v26);
        v33 = vtrn2_s16(v24, v26);
        v34 = vtrn1_s16(v25, v27);
        v35 = vtrn2_s16(v25, v27);
        v36 = vtrn1_s16(v28, v30);
        v37 = vtrn2_s16(v28, v30);
        v38 = vtrn1_s16(v29, v31);
        v39 = vtrn2_s16(v29, v31);
        v40 = vzip2_s32(v32, v36);
        v41 = vzip1_s32(v34, v38);
        v42 = vzip2_s32(v34, v38);
        v43 = vzip1_s32(v33, v37);
        v44 = vzip2_s32(v33, v37);
        v45 = vzip1_s32(v35, v39);
        v46 = vdupq_n_s16(*a3);
        v47 = vaddl_u8(v41, v45);
        v48 = vshll_n_u8(v43, 1uLL);
        v49 = vabdq_u16(v48, v47);
        v50 = vaddl_u8(v44, v40);
        v51 = vshll_n_u8(v42, 1uLL);
        v52 = vabdq_u16(v51, v50);
        v53 = vabaq_u16(vrev64q_s16(v49), v48, v47);
        v54 = vabaq_u16(vrev64q_s16(v52), v51, v50);
        v55 = vqtbl1q_s8(v53, xmmword_27750D6D0);
        v56 = vqtbl1q_s8(v54, xmmword_27750D6D0);
        v57 = vcgtq_s16(v46, vaddq_s16(v56, v55));
        if (vaddlvq_u16(v57))
        {
          v58 = vzip1_s32(v32, v36);
          v59 = vzip2_s32(v35, v39);
          v60 = vmovl_u8(v43);
          v61 = vmovl_u8(v45);
          v62 = vmovl_u8(v42);
          v63 = vmovl_u8(v40);
          v64 = vandq_s8(vqtbl1q_s8(vdupq_n_s16(v14), xmmword_27750D6C0), v57);
          v65 = vandq_s8(vcgtq_s16(vrhaddq_s16(v64, vshlq_n_s16(v64, 2uLL)), vabdl_u8(v45, v40)), vandq_s8(vcgtq_s16(vrshrq_n_s16(v46, 3uLL), vaddq_s16(v52, v49)), vcgtq_u16(vshrq_n_u16(v46, 3uLL), vabal_u8(vabdl_u8(v59, v40), v58, v45))));
          v66 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v65), v65), xmmword_27750D6D0);
          v67 = vshrq_n_u16(vsraq_n_u16(v46, v46, 1uLL), 3uLL);
          if (vaddlvq_u16(v66))
          {
            v68 = vcgtq_s16(v67, v56);
            v69 = vcgtq_s16(v67, v55);
            v70 = vmovn_s16(v64);
            v71 = vadd_s8(v70, v70);
            v72 = vaddl_u8(v41, v43);
            v73 = vaddl_u8(v45, v40);
            v74 = vaddl_u8(v42, v44);
            v75 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v73, v60), vhadd_u8(v41, v42)), 2uLL), vqadd_u8(v45, v71)), vqsub_u8(v45, v71));
            v76 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v73, v62), vhadd_u8(v44, v43)), 2uLL), vqadd_u8(v40, v71)), vqsub_u8(v40, v71));
            v77 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v72, v73), 2uLL), vqadd_u8(v43, v71)), vqsub_u8(v43, v71));
            v78 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v74, v73), 2uLL), vqadd_u8(v42, v71)), vqsub_u8(v42, v71));
            v79 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v58, v41), vhaddq_u16(v72, v73)), 2uLL), vqadd_u8(v41, v71)), vqsub_u8(v41, v71));
            v80 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v44, v59), vhaddq_u16(v74, v73)), 2uLL), vqadd_u8(v44, v71)), vqsub_u8(v44, v71));
            v81 = vbicq_s8(v64, v66);
            v82.i64[0] = 0x9000900090009;
            v82.i64[1] = 0x9000900090009;
            v83 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubl_u8(v40, v45), v82), vsubl_u8(v42, v43), v11), 4uLL);
            v84 = vcgtq_s16(vmulq_s16(v81, v12), vabsq_s16(v83));
            v85 = vmaxq_s16(vminq_s16(vandq_s8(v83, v84), v81), vnegq_s16(v81));
            v86 = vshrq_n_s16(v81, 1uLL);
            v87 = vnegq_s16(v86);
            v88 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(vrhadd_u8(v44, v40), v42), v85), v86), v87), vandq_s8(v84, v68)), v62);
            v89 = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(vrhadd_u8(v41, v45), v43), v85), v86), v87), vandq_s8(v84, v69)), v60));
            v90 = vqmovn_s16(v66);
            v91 = vbsl_s8(v90, v79, v41);
            v92 = vbsl_s8(v90, v77, v89);
            v93 = vbsl_s8(v90, v75, vqmovun_s16(vaddq_s16(v85, v61)));
            v94 = vbsl_s8(v90, v76, vqmovun_s16(vsubq_s16(v63, v85)));
            v95 = vbsl_s8(v90, v78, vqmovun_s16(v88));
            v96 = vbsl_s8(v90, v80, v44);
            *v88.i8 = vtrn1_s8(v58, v91);
            v97 = vtrn2_s8(v58, v91);
            v98 = vtrn1_s8(v92, v93);
            v99 = vtrn2_s8(v92, v93);
            v100 = vtrn1_s8(v94, v95);
            v101 = vtrn2_s8(v94, v95);
            v102 = vtrn1_s8(v96, v59);
            v103 = vtrn2_s8(v96, v59);
            v104 = vtrn1_s16(*v88.i8, v98);
            *v88.i8 = vtrn2_s16(*v88.i8, v98);
            v105 = vtrn1_s16(v97, v99);
            v106 = vtrn2_s16(v97, v99);
            v107 = vtrn1_s16(v100, v102);
            v108 = vtrn2_s16(v100, v102);
            v109 = vtrn1_s16(v101, v103);
            *(result - 4) = vzip1_s32(v104, v107);
            *(result + a2 - 4) = vzip1_s32(v105, v109);
            v110 = vtrn2_s16(v101, v103);
            *(result + v6 - 4) = vzip1_s32(*v88.i8, v108);
            *(result + v7 - 4) = vzip1_s32(v106, v110);
            *(result + v8 - 4) = vzip2_s32(v104, v107);
            *(result + v13 - 4) = vzip2_s32(v105, v109);
            *(result + v9 - 4) = vzip2_s32(*v88.i8, v108);
            *(result + v10 - 4) = vzip2_s32(v106, v110);
          }

          else
          {
            v111 = vcgtq_s16(v67, v56);
            v112 = vcgtq_s16(v67, v55);
            v113 = vbicq_s8(v64, v66);
            v114 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v40, 0x909090909090909), v45, 0x909090909090909), vsubl_u8(v42, v43), v11), 4uLL);
            v115 = vcgtq_s16(vmulq_s16(v113, v12), vabsq_s16(v114));
            v116 = vmaxq_s16(vminq_s16(vandq_s8(v114, v115), v113), vnegq_s16(v113));
            v117 = vshrq_n_s16(v113, 1uLL);
            v118 = vnegq_s16(v117);
            v119 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(vrhadd_u8(v44, v40), v42), v116), v117), v118), vandq_s8(v115, v111)), v62);
            v120 = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(vrhadd_u8(v41, v45), v43), v116), v117), v118), vandq_s8(v115, v112)), v60));
            v121 = vqmovun_s16(vaddq_s16(v116, v61));
            v122 = vqmovun_s16(vsubq_s16(v63, v116));
            *v119.i8 = vqmovun_s16(v119);
            v123 = vtrn1_s8(v120, v121);
            v124 = vtrn2_s8(v120, v121);
            v125 = vtrn1_s8(v122, *v119.i8);
            *v119.i8 = vtrn2_s8(v122, *v119.i8);
            v126 = vtrn1_s16(v123, v125);
            v127 = vtrn2_s16(v123, v125);
            v128 = vtrn1_s16(v124, *v119.i8);
            *v119.i8 = vtrn2_s16(v124, *v119.i8);
            *(result - 2) = v126.i32[0];
            *(result + a2 - 2) = v128.i32[0];
            *(result + v6 - 2) = v127.i32[0];
            *(result + v7 - 2) = v119.i32[0];
            *(result + v8 - 2) = v126.i32[1];
            *(result + v13 - 2) = v128.i32[1];
            *(result + v9 - 2) = v127.i32[1];
            *(result + v10 - 2) = v119.i32[1];
          }
        }
      }

      result += 8 * a2;
      ++a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2774E0914(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = result + 2 * a2;
    v8 = result + a2;
    v9 = result - a2;
    v10 = result - 3 * a2;
    v11.i64[0] = 0x2000200020002;
    v11.i64[1] = 0x2000200020002;
    v12.i64[0] = 0xA000A000A000ALL;
    v12.i64[1] = 0xA000A000A000ALL;
    v13.i64[0] = 0x9000900090009;
    v13.i64[1] = 0x9000900090009;
    v14 = result - 2 * a2;
    do
    {
      if (*(a4 + 2 * v6))
      {
        v15 = *(v10 + 8 * v6);
        v16 = *(v14 + 8 * v6);
        v17 = *(v9 + 8 * v6);
        v18 = *(result + 8 * v6);
        v19 = *(v8 + 8 * v6);
        v20 = *(v7 + 8 * v6);
        v21 = vdupq_n_s16(*(a3 + v6));
        v22 = vaddl_u8(v17, v15);
        v23 = vshll_n_u8(v16, 1uLL);
        v24 = vabdq_u16(v23, v22);
        v25 = vaddl_u8(v20, v18);
        v26 = vshll_n_u8(v19, 1uLL);
        v27 = vabdq_u16(v26, v25);
        v28 = vqtbl1q_s8(vabaq_u16(vrev64q_s16(v24), v23, v22), xmmword_27750D6D0);
        v29 = vqtbl1q_s8(vabaq_u16(vrev64q_s16(v27), v26, v25), xmmword_27750D6D0);
        v30 = vcgtq_s16(v21, vaddq_s16(v29, v28));
        if (vaddlvq_u16(v30))
        {
          v31 = *(result - 4 * a2 + 8 * v6);
          v32 = *(result + 3 * a2 + 8 * v6);
          v33 = vmovl_u8(v16);
          v34 = vmovl_u8(v17);
          v35 = vmovl_u8(v19);
          v36 = vmovl_u8(v18);
          v37 = vandq_s8(vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v6)), xmmword_27750D6C0), v30);
          v38 = vandq_s8(vcgtq_s16(vrhaddq_s16(v37, vshlq_n_s16(v37, 2uLL)), vabdl_u8(v17, v18)), vandq_s8(vcgtq_s16(vrshrq_n_s16(v21, 3uLL), vaddq_s16(v27, v24)), vcgtq_u16(vshrq_n_u16(v21, 3uLL), vabal_u8(vabdl_u8(v32, v18), v31, v17))));
          v39 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v38), v38), xmmword_27750D6D0);
          v40 = vshrq_n_u16(vsraq_n_u16(v21, v21, 1uLL), 3uLL);
          v41 = vcgtq_s16(v40, v29);
          if (vaddlvq_u16(v39))
          {
            v42 = vcgtq_s16(v40, v28);
            v43 = vmovn_s16(v37);
            v44 = vadd_s8(v43, v43);
            v45 = vaddl_u8(v16, v15);
            v46 = vaddl_u8(v18, v17);
            v47 = vaddl_u8(v20, v19);
            v48 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v46, v33), vhadd_u8(v15, v19)), 2uLL), vqadd_u8(v17, v44)), vqsub_u8(v17, v44));
            v49 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v46, v35), vhadd_u8(v20, v16)), 2uLL), vqadd_u8(v18, v44)), vqsub_u8(v18, v44));
            v50 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v46, v45), 2uLL), vqadd_u8(v16, v44)), vqsub_u8(v16, v44));
            v51 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v47, v46), 2uLL), vqadd_u8(v19, v44)), vqsub_u8(v19, v44));
            v52 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v15, v31), vhaddq_u16(v45, v46)), 2uLL), vqadd_u8(v15, v44)), vqsub_u8(v15, v44));
            v53 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v32, v20), vhaddq_u16(v47, v46)), 2uLL), vqadd_u8(v20, v44)), vqsub_u8(v20, v44));
            v54 = vbicq_s8(v37, v39);
            v55 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubl_u8(v18, v17), v13), vsubl_u8(v19, v16), v11), 4uLL);
            v56 = vcgtq_s16(vmulq_s16(v54, v12), vabsq_s16(v55));
            v57 = vmaxq_s16(vminq_s16(vandq_s8(v55, v56), v54), vnegq_s16(v54));
            v58 = vshrq_n_s16(v54, 1uLL);
            v59 = vnegq_s16(v58);
            v60 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(vrhadd_u8(v20, v18), v19), v57), v58), v59), vandq_s8(v56, v41)), v35);
            v61 = vqmovn_s16(v39);
            *(v10 + 8 * v6) = vbsl_s8(v61, v52, v15);
            *(v14 + 8 * v6) = vbsl_s8(v61, v50, vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(vrhadd_u8(v15, v17), v16), v57), v58), v59), vandq_s8(v56, v42)), v33)));
            *(v9 + 8 * v6) = vbsl_s8(v61, v48, vqmovun_s16(vaddq_s16(v57, v34)));
            *(result + 8 * v6) = vbsl_s8(v61, v49, vqmovun_s16(vsubq_s16(v36, v57)));
            *(v8 + 8 * v6) = vbsl_s8(v61, v51, vqmovun_s16(v60));
            *(v7 + 8 * v6) = vbsl_s8(v61, v53, v20);
          }

          else
          {
            v62 = vcgtq_s16(v40, v28);
            v63 = vbicq_s8(v37, v39);
            v64 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v18, 0x909090909090909), v17, 0x909090909090909), vsubl_u8(v19, v16), v11), 4uLL);
            v65 = vcgtq_s16(vmulq_s16(v63, v12), vabsq_s16(v64));
            v66 = vmaxq_s16(vminq_s16(vandq_s8(v64, v65), v63), vnegq_s16(v63));
            v67 = vshrq_n_s16(v63, 1uLL);
            v68 = vnegq_s16(v67);
            *(v14 + 8 * v6) = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(vrhadd_u8(v15, v17), v16), v66), v67), v68), vandq_s8(v65, v62)), v33));
            *(v9 + 8 * v6) = vqmovun_s16(vaddq_s16(v66, v34));
            *(result + 8 * v6) = vqmovun_s16(vsubq_s16(v36, v66));
            *(v8 + 8 * v6) = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(vrhadd_u8(v20, v18), v19), v66), v67), v68), vandq_s8(v65, v41)), v35));
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_2774E0CBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a5 >> 3);
  v6 = 3 * a2;
  v7 = 2 * a2;
  if (v5 < 1)
  {
    _X7 = result;
  }

  else
  {
    v8 = 0;
    v9 = result + v7;
    v10 = result + a2;
    v11 = result - a2;
    v12 = result - 2 * a2;
    v13.i64[0] = 0x2000200020002;
    v13.i64[1] = 0x2000200020002;
    v14 = result - 3 * a2;
    v15.i64[0] = 0xA000A000A000ALL;
    v15.i64[1] = 0xA000A000A000ALL;
    v16.i64[0] = 0x9000900090009;
    v16.i64[1] = 0x9000900090009;
    _X7 = result;
    do
    {
      if (*(a4 + 2 * v8))
      {
        v18 = *(v14 + 8 * v8);
        v19 = *(v12 + 8 * v8);
        v20 = *(v11 + 8 * v8);
        v21 = *(result + 8 * v8);
        v22 = *(v10 + 8 * v8);
        v23 = *(v9 + 8 * v8);
        v24 = vdupq_n_s16(*(a3 + v8));
        v25 = vaddl_u8(v20, v18);
        v26 = vshll_n_u8(v19, 1uLL);
        v27 = vabdq_u16(v26, v25);
        v28 = vaddl_u8(v23, v21);
        v29 = vshll_n_u8(v22, 1uLL);
        v30 = vabdq_u16(v29, v28);
        v31 = vqtbl1q_s8(vabaq_u16(vrev64q_s16(v27), v26, v25), xmmword_27750D6D0);
        v32 = vqtbl1q_s8(vabaq_u16(vrev64q_s16(v30), v29, v28), xmmword_27750D6D0);
        v33 = vcgtq_s16(v24, vaddq_s16(v32, v31));
        if (vaddlvq_u16(v33))
        {
          v34 = *(result - 4 * a2 + 8 * v8);
          v35 = *(result + v6 + 8 * v8);
          v36 = vmovl_u8(v19);
          v37 = vmovl_u8(v20);
          v38 = vmovl_u8(v22);
          v39 = vmovl_u8(v21);
          v40 = vandq_s8(vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v8)), xmmword_27750D6C0), v33);
          v41 = vandq_s8(vcgtq_s16(vrhaddq_s16(v40, vshlq_n_s16(v40, 2uLL)), vabdl_u8(v20, v21)), vandq_s8(vcgtq_s16(vrshrq_n_s16(v24, 3uLL), vaddq_s16(v30, v27)), vcgtq_u16(vshrq_n_u16(v24, 3uLL), vabal_u8(vabdl_u8(v35, v21), v34, v20))));
          v42 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v41), v41), xmmword_27750D6D0);
          v43 = vshrq_n_u16(vsraq_n_u16(v24, v24, 1uLL), 3uLL);
          v44 = vcgtq_s16(v43, v32);
          if (vaddlvq_u16(v42))
          {
            v45 = vcgtq_s16(v43, v31);
            v46 = vmovn_s16(v40);
            v47 = vadd_s8(v46, v46);
            v48 = vaddl_u8(v19, v18);
            v49 = vaddl_u8(v21, v20);
            v50 = vaddl_u8(v23, v22);
            v51 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v49, v36), vhadd_u8(v18, v22)), 2uLL), vqadd_u8(v20, v47)), vqsub_u8(v20, v47));
            v52 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v49, v38), vhadd_u8(v23, v19)), 2uLL), vqadd_u8(v21, v47)), vqsub_u8(v21, v47));
            v53 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v49, v48), 2uLL), vqadd_u8(v19, v47)), vqsub_u8(v19, v47));
            v54 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v50, v49), 2uLL), vqadd_u8(v22, v47)), vqsub_u8(v22, v47));
            v55 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v18, v34), vhaddq_u16(v48, v49)), 2uLL), vqadd_u8(v18, v47)), vqsub_u8(v18, v47));
            v56 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v35, v23), vhaddq_u16(v50, v49)), 2uLL), vqadd_u8(v23, v47)), vqsub_u8(v23, v47));
            v57 = vbicq_s8(v40, v42);
            v58 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubl_u8(v21, v20), v16), vsubl_u8(v22, v19), v13), 4uLL);
            v59 = vcgtq_s16(vmulq_s16(v57, v15), vabsq_s16(v58));
            v60 = vmaxq_s16(vminq_s16(vandq_s8(v58, v59), v57), vnegq_s16(v57));
            v61 = vshrq_n_s16(v57, 1uLL);
            v62 = vnegq_s16(v61);
            v63 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(vrhadd_u8(v23, v21), v22), v60), v61), v62), vandq_s8(v59, v44)), v38);
            v64 = vqmovn_s16(v42);
            *(v14 + 8 * v8) = vbsl_s8(v64, v55, v18);
            *(v12 + 8 * v8) = vbsl_s8(v64, v53, vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(vrhadd_u8(v18, v20), v19), v60), v61), v62), vandq_s8(v59, v45)), v36)));
            *(v11 + 8 * v8) = vbsl_s8(v64, v51, vqmovun_s16(vaddq_s16(v60, v37)));
            *(result + 8 * v8) = vbsl_s8(v64, v52, vqmovun_s16(vsubq_s16(v39, v60)));
            *(v10 + 8 * v8) = vbsl_s8(v64, v54, vqmovun_s16(v63));
            *(v9 + 8 * v8) = vbsl_s8(v64, v56, v23);
          }

          else
          {
            v65 = vcgtq_s16(v43, v31);
            v66 = vbicq_s8(v40, v42);
            v67 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v21, 0x909090909090909), v20, 0x909090909090909), vsubl_u8(v22, v19), v13), 4uLL);
            v68 = vcgtq_s16(vmulq_s16(v66, v15), vabsq_s16(v67));
            v69 = vmaxq_s16(vminq_s16(vandq_s8(v67, v68), v66), vnegq_s16(v66));
            v70 = vshrq_n_s16(v66, 1uLL);
            v71 = vnegq_s16(v70);
            *(v12 + 8 * v8) = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(vrhadd_u8(v18, v20), v19), v69), v70), v71), vandq_s8(v68, v65)), v36));
            *(v11 + 8 * v8) = vqmovun_s16(vaddq_s16(v69, v37));
            *(result + 8 * v8) = vqmovun_s16(vsubq_s16(v39, v69));
            *(v10 + 8 * v8) = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(vrhadd_u8(v23, v21), v22), v69), v70), v71), vandq_s8(v68, v44)), v38));
          }
        }
      }

      ++v8;
      _X7 += 8;
    }

    while (v5 != v8);
  }

  _X11 = _X7 + 64 - 4 * a2;
  __asm { PRFM            #0x10, [X11] }

  _X11 = _X7 + 64 - 3 * a2;
  __asm { PRFM            #0x10, [X11] }

  _X11 = _X7 + 64 - 2 * a2;
  __asm { PRFM            #0x10, [X11] }

  _X10 = _X7 + 64 - a2;
  __asm
  {
    PRFM            #0x10, [X10]
    PRFM            #0x10, [X7,#0x40]
  }

  _X10 = _X7 + 64 + a2;
  __asm { PRFM            #0x10, [X10] }

  _X9 = _X7 + 64 + v7;
  __asm { PRFM            #0x10, [X9] }

  _X8 = _X7 + 64 + v6;
  __asm { PRFM            #0x10, [X8] }

  return result;
}

uint64_t sub_2774E10D8(uint64_t result, uint64_t a2, unsigned __int8 *a3, unsigned __int16 *a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 2 * a2;
    v7 = 4 * a2;
    v8 = 6 * a2;
    v9 = 12 * a2;
    v10 = 10 * a2;
    v11 = 8 * a2;
    v12.i64[0] = 0x9000900090009;
    v12.i64[1] = 0x9000900090009;
    v13.i64[0] = 0x2000200020002;
    v13.i64[1] = 0x2000200020002;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    v15.i64[0] = 0xFF00FF00FF00FFLL;
    v15.i64[1] = 0xFF00FF00FF00FFLL;
    v16 = 14 * a2;
    do
    {
      v18 = *a4++;
      v17 = v18;
      if (v18)
      {
        v19 = *(result - 8);
        v20 = *(result + v6 - 8);
        v21 = *(result + v7 - 8);
        v22 = *(result + v8 - 8);
        v23 = *(result + v11 - 8);
        v24 = *(result + v10 - 8);
        v25 = *(result + v9 - 8);
        v26 = *(result + v16 - 8);
        v27 = vtrn1q_s16(v19, v20);
        v28 = vtrn2q_s16(v19, v20);
        v29 = vtrn1q_s16(v21, v22);
        v30 = vtrn2q_s16(v21, v22);
        v31 = vtrn1q_s32(v27, v29);
        v32 = vtrn2q_s32(v27, v29);
        v33 = vtrn1q_s32(v28, v30);
        v34 = vtrn2q_s32(v28, v30);
        v35 = vtrn1q_s16(v23, v24);
        v36 = vtrn2q_s16(v23, v24);
        v37 = vtrn1q_s16(v25, v26);
        v38 = vtrn2q_s16(v25, v26);
        v39 = vtrn1q_s32(v35, v37);
        v40 = vtrn2q_s32(v35, v37);
        v41 = vtrn1q_s32(v36, v38);
        v42 = vtrn2q_s32(v36, v38);
        v43 = vzip2q_s64(v31, v39);
        v44 = vzip2q_s64(v33, v41);
        v45.i64[0] = v33.i64[0];
        v45.i64[1] = v41.i64[0];
        v46 = vzip2q_s64(v32, v40);
        v47.i64[0] = v32.i64[0];
        v47.i64[1] = v40.i64[0];
        v48.i64[0] = v34.i64[0];
        v48.i64[1] = v42.i64[0];
        v49 = vdupq_n_s16(*a3);
        v50 = vabsq_s16(vsubq_s16(vaddq_s16(v45, v48), vaddq_s16(v47, v47)));
        v51 = vabsq_s16(vsubq_s16(vaddq_s16(v46, v43), vaddq_s16(v44, v44)));
        v52 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v50), v50), xmmword_27750D6D0);
        v53 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v51), v51), xmmword_27750D6D0);
        v54 = vcgtq_s16(v49, vaddq_s16(v53, v52));
        if (vaddlvq_u16(v54))
        {
          v31.i64[1] = v39.i64[0];
          v55 = vzip2q_s64(v34, v42);
          v56 = vandq_s8(vqtbl1q_s8(vdupq_n_s16(v17), xmmword_27750D6C0), v54);
          v57 = vandq_s8(vcgtq_s16(vrhaddq_s16(v56, vshlq_n_s16(v56, 2uLL)), vabdq_s16(v48, v43)), vandq_s8(vcgtq_s16(vshrq_n_u16(v49, 3uLL), vabaq_s16(vabdq_s16(v55, v43), v31, v48)), vcgtq_s16(vrshrq_n_s16(v49, 3uLL), vaddq_s16(v51, v50))));
          v58 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v57), v57), xmmword_27750D6D0);
          v59 = vshrq_n_u16(vsraq_n_u16(v49, v49, 1uLL), 3uLL);
          if (vaddlvq_u16(v58))
          {
            v60 = vcgtq_s16(v59, v53);
            v61 = vcgtq_s16(v59, v52);
            v62 = vaddq_s16(v56, v56);
            v63 = vaddq_s16(v45, v47);
            v64 = vaddq_s16(v48, v43);
            v65 = vaddq_s16(v44, v46);
            v66 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v64, v47), vhaddq_u16(v45, v44)), 2uLL), vaddq_s16(v62, v48)), vsubq_s16(v48, v62));
            v67 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v64, v44), vhaddq_u16(v46, v47)), 2uLL), vaddq_s16(v62, v43)), vsubq_s16(v43, v62));
            v68 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v63, v64), 2uLL), vaddq_s16(v62, v47)), vsubq_s16(v47, v62));
            v69 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v65, v64), 2uLL), vaddq_s16(v62, v44)), vsubq_s16(v44, v62));
            v70 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v31, v45), vhaddq_u16(v63, v64)), 2uLL), vaddq_s16(v62, v45)), vsubq_s16(v45, v62));
            v71 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v46, v55), vhaddq_u16(v65, v64)), 2uLL), vaddq_s16(v62, v46)), vsubq_s16(v46, v62));
            v72 = vbicq_s8(v56, v58);
            v73 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v43, v48), v12), vsubq_s16(v44, v47), v13), 4uLL);
            v74 = vcgtq_s16(vmulq_s16(v72, v14), vabsq_s16(v73));
            v75 = vandq_s8(v74, v61);
            v76 = vandq_s8(v74, v60);
            v77 = vmaxq_s16(vminq_s16(vandq_s8(v73, v74), v72), vnegq_s16(v72));
            v78 = vshrq_n_s16(v72, 1uLL);
            v79 = vnegq_s16(v78);
            v80 = vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v45, v48), v47), v77), v78), v79);
            v81 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v46, v43), v44), v77), v78), v79), v76), v44);
            v82 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v70, v45), 0), v15);
            v83 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v68, vaddq_s16(vandq_s8(v80, v75), v47)), 0), v15);
            v84 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v66, vaddq_s16(v77, v48)), 0), v15);
            v85 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v67, vsubq_s16(v43, v77)), 0), v15);
            v86 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v69, v81), 0), v15);
            v87 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v71, v46), 0), v15);
            v88 = vtrn1q_s16(v31, v82);
            v89 = vtrn2q_s16(v31, v82);
            v90 = vtrn1q_s16(v83, v84);
            v91 = vtrn2q_s16(v83, v84);
            v92 = vtrn1q_s32(v88, v90);
            v93 = vtrn2q_s32(v88, v90);
            v94 = vtrn1q_s32(v89, v91);
            v95 = vtrn2q_s32(v89, v91);
            v96 = vtrn1q_s16(v85, v86);
            v97 = vtrn2q_s16(v85, v86);
            v98 = vtrn1q_s16(v87, v55);
            v99 = vtrn2q_s16(v87, v55);
            v100 = vtrn1q_s32(v96, v98);
            v101 = vtrn2q_s32(v96, v98);
            v102 = vtrn1q_s32(v97, v99);
            v103 = vtrn2q_s32(v97, v99);
            v104 = vzip2q_s64(v92, v100);
            v92.i64[1] = v100.i64[0];
            v105 = vzip2q_s64(v94, v102);
            v94.i64[1] = v102.i64[0];
            v106 = vzip2q_s64(v93, v101);
            v93.i64[1] = v101.i64[0];
            v107 = vzip2q_s64(v95, v103);
            v95.i64[1] = v103.i64[0];
            *(result - 8) = v92;
            *(result + v6 - 8) = v94;
            *(result + v7 - 8) = v93;
            *(result + v8 - 8) = v95;
            *(result + v11 - 8) = v104;
            *(result + v10 - 8) = v105;
            *(result + v9 - 8) = v106;
            *(result + v16 - 8) = v107;
          }

          else
          {
            v108 = vcgtq_s16(v59, v53);
            v109 = vcgtq_s16(v59, v52);
            v110 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v43, v48), v12), vsubq_s16(v44, v47), v13), 4uLL);
            v111 = vcgtq_s16(vmulq_s16(v56, v14), vabsq_s16(v110));
            v112 = vmaxq_s16(vminq_s16(vandq_s8(v110, v111), v56), vnegq_s16(v56));
            v113 = vshrq_n_s16(v56, 1uLL);
            v114 = vnegq_s16(v113);
            v115 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v46, v43), v44), v112), v113), v114), vandq_s8(v111, v108)), v44);
            v116 = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v45, v48), v47), v112), v113), v114), vandq_s8(v111, v109)), v47), 0), v15);
            v117 = vminq_s16(vmaxq_s16(vaddq_s16(v112, v48), 0), v15);
            v118 = vminq_s16(vmaxq_s16(vsubq_s16(v43, v112), 0), v15);
            v119 = vminq_s16(vmaxq_s16(v115, 0), v15);
            v120 = vtrn1q_s16(v116, v117);
            v121 = vtrn2q_s16(v116, v117);
            v122 = vtrn1q_s16(v118, v119);
            v123 = vtrn2q_s16(v118, v119);
            v124 = vtrn1q_s32(v120, v122);
            v125 = vtrn2q_s32(v120, v122);
            v126 = vtrn1q_s32(v121, v123);
            v127 = vtrn2q_s32(v121, v123);
            *(result - 4) = v124.i64[0];
            *(result + v6 - 4) = v126.i64[0];
            *(result + v7 - 4) = v125.i64[0];
            *(result + v8 - 4) = v127.i64[0];
            *(result + v11 - 4) = v124.i64[1];
            *(result + v10 - 4) = v126.i64[1];
            *(result + v9 - 4) = v125.i64[1];
            *(result + v16 - 4) = v127.i64[1];
          }
        }
      }

      result += 16 * a2;
      ++a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2774E1604(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = result + 4 * a2;
    v8 = result + 2 * a2;
    v9 = result - 2 * a2;
    v10 = result - 6 * a2;
    v11 = result - 4 * a2;
    v12.i64[0] = 0x9000900090009;
    v12.i64[1] = 0x9000900090009;
    v13.i64[0] = 0x2000200020002;
    v13.i64[1] = 0x2000200020002;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    v15.i64[0] = 0xFF00FF00FF00FFLL;
    v15.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      if (*(a4 + 2 * v6))
      {
        v16 = *(v10 + 16 * v6);
        v17 = *(v11 + 16 * v6);
        v18 = *(v9 + 16 * v6);
        v19 = *(result + 16 * v6);
        v20 = *(v8 + 16 * v6);
        v21 = *(v7 + 16 * v6);
        v22 = vdupq_n_s16(*(a3 + v6));
        v23 = vabsq_s16(vsubq_s16(vaddq_s16(v18, v16), vaddq_s16(v17, v17)));
        v24 = vabsq_s16(vsubq_s16(vaddq_s16(v21, v19), vaddq_s16(v20, v20)));
        v25 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v23), v23), xmmword_27750D6D0);
        v26 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v24), v24), xmmword_27750D6D0);
        v27 = vcgtq_s16(v22, vaddq_s16(v26, v25));
        if (vaddlvq_u16(v27))
        {
          v28 = *(result - 8 * a2 + 16 * v6);
          v29 = *(result + 6 * a2 + 16 * v6);
          v30 = vandq_s8(vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v6)), xmmword_27750D6C0), v27);
          v31 = vandq_s8(vcgtq_s16(vrhaddq_s16(v30, vshlq_n_s16(v30, 2uLL)), vabdq_s16(v18, v19)), vandq_s8(vcgtq_s16(vshrq_n_u16(v22, 3uLL), vabaq_s16(vabdq_s16(v29, v19), v28, v18)), vcgtq_s16(vrshrq_n_s16(v22, 3uLL), vaddq_s16(v24, v23))));
          v32 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v31), v31), xmmword_27750D6D0);
          v33 = vshrq_n_u16(vsraq_n_u16(v22, v22, 1uLL), 3uLL);
          if (vaddlvq_u16(v32))
          {
            v34 = vcgtq_s16(v33, v26);
            v35 = vcgtq_s16(v33, v25);
            v36 = vaddq_s16(v30, v30);
            v37 = vaddq_s16(v17, v16);
            v38 = vaddq_s16(v19, v18);
            v39 = vaddq_s16(v21, v20);
            v40 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v38, v17), vhaddq_u16(v16, v20)), 2uLL), vaddq_s16(v36, v18)), vsubq_s16(v18, v36));
            v41 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v38, v20), vhaddq_u16(v21, v17)), 2uLL), vaddq_s16(v36, v19)), vsubq_s16(v19, v36));
            v42 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v38, v37), 2uLL), vaddq_s16(v36, v17)), vsubq_s16(v17, v36));
            v43 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v39, v38), 2uLL), vaddq_s16(v36, v20)), vsubq_s16(v20, v36));
            v44 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v16, v28), vhaddq_u16(v37, v38)), 2uLL), vaddq_s16(v36, v16)), vsubq_s16(v16, v36));
            v45 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v29, v21), vhaddq_u16(v39, v38)), 2uLL), vaddq_s16(v36, v21)), vsubq_s16(v21, v36));
            v46 = vbicq_s8(v30, v32);
            v47 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v19, v18), v12), vsubq_s16(v20, v17), v13), 4uLL);
            v48 = vcgtq_s16(vmulq_s16(v46, v14), vabsq_s16(v47));
            v49 = vmaxq_s16(vminq_s16(vandq_s8(v47, v48), v46), vnegq_s16(v46));
            v50 = vshrq_n_s16(v46, 1uLL);
            v51 = vnegq_s16(v50);
            *(v10 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v44, v16), 0), v15);
            *(v11 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v42, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v16, v18), v17), v49), v50), v51), vandq_s8(v48, v35)), v17)), 0), v15);
            *(v9 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v40, vaddq_s16(v49, v18)), 0), v15);
            *(result + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v41, vsubq_s16(v19, v49)), 0), v15);
            *(v8 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v43, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v21, v19), v20), v49), v50), v51), vandq_s8(v48, v34)), v20)), 0), v15);
            *(v7 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v45, v21), 0), v15);
          }

          else
          {
            v52 = vcgtq_s16(v33, v26);
            v53 = vcgtq_s16(v33, v25);
            v54 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v19, v18), v12), vsubq_s16(v20, v17), v13), 4uLL);
            v55 = vcgtq_s16(vmulq_s16(v30, v14), vabsq_s16(v54));
            v56 = vmaxq_s16(vminq_s16(vandq_s8(v54, v55), v30), vnegq_s16(v30));
            v57 = vshrq_n_s16(v30, 1uLL);
            v58 = vnegq_s16(v57);
            *(v11 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v16, v18), v17), v56), v57), v58), vandq_s8(v55, v53)), v17), 0), v15);
            *(v9 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(v56, v18), 0), v15);
            *(result + 16 * v6) = vminq_s16(vmaxq_s16(vsubq_s16(v19, v56), 0), v15);
            *(v8 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v21, v19), v20), v56), v57), v58), vandq_s8(v55, v52)), v20), 0), v15);
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_2774E19C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  _X9 = result + 192 - 8 * a2;
  __asm { PRFM            #0x10, [X9] }

  _X9 = result - 6 * a2;
  __asm { PRFM            #0x10, [X9,#0xC0] }

  _X12 = result - 4 * a2;
  __asm { PRFM            #0x10, [X12,#0xC0] }

  _X14 = result - 2 * a2;
  __asm
  {
    PRFM            #0x10, [X14,#0xC0]
    PRFM            #0x10, [X0,#0xC0]
  }

  _X14 = result + 192 + 2 * a2;
  __asm { PRFM            #0x10, [X14] }

  _X14 = result + 192 + 4 * a2;
  __asm { PRFM            #0x10, [X14] }

  _X13 = result + 192 + 6 * a2;
  __asm { PRFM            #0x10, [X13] }

  v24 = (a5 >> 3);
  if (v24 < 1)
  {
    _X6 = result;
  }

  else
  {
    v25 = 0;
    v26 = result + 2 * a2;
    v27 = result - 2 * a2;
    v28 = result - 4 * a2;
    v29.i64[0] = 0x9000900090009;
    v29.i64[1] = 0x9000900090009;
    v30 = result - 6 * a2;
    v31.i64[0] = 0x2000200020002;
    v31.i64[1] = 0x2000200020002;
    v32.i64[0] = 0xA000A000A000ALL;
    v32.i64[1] = 0xA000A000A000ALL;
    v33.i64[0] = 0xFF00FF00FF00FFLL;
    v33.i64[1] = 0xFF00FF00FF00FFLL;
    _X6 = result;
    v35 = result + 4 * a2;
    do
    {
      if (*(a4 + 2 * v25))
      {
        v36 = *(v30 + 16 * v25);
        v37 = *(v28 + 16 * v25);
        v38 = *(v27 + 16 * v25);
        v39 = *(result + 16 * v25);
        v40 = *(v26 + 16 * v25);
        v41 = *(v35 + 16 * v25);
        v42 = vdupq_n_s16(*(a3 + v25));
        v43 = vabsq_s16(vsubq_s16(vaddq_s16(v38, v36), vaddq_s16(v37, v37)));
        v44 = vabsq_s16(vsubq_s16(vaddq_s16(v41, v39), vaddq_s16(v40, v40)));
        v45 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v43), v43), xmmword_27750D6D0);
        v46 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v44), v44), xmmword_27750D6D0);
        v47 = vcgtq_s16(v42, vaddq_s16(v46, v45));
        if (vaddlvq_u16(v47))
        {
          v48 = *(result - 8 * a2 + 16 * v25);
          v49 = *(result + 6 * a2 + 16 * v25);
          v50 = vandq_s8(vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v25)), xmmword_27750D6C0), v47);
          v51 = vandq_s8(vcgtq_s16(vrhaddq_s16(v50, vshlq_n_s16(v50, 2uLL)), vabdq_s16(v38, v39)), vandq_s8(vcgtq_s16(vshrq_n_u16(v42, 3uLL), vabaq_s16(vabdq_s16(v49, v39), v48, v38)), vcgtq_s16(vrshrq_n_s16(v42, 3uLL), vaddq_s16(v44, v43))));
          v52 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v51), v51), xmmword_27750D6D0);
          v53 = vshrq_n_u16(vsraq_n_u16(v42, v42, 1uLL), 3uLL);
          if (vaddlvq_u16(v52))
          {
            v54 = vcgtq_s16(v53, v46);
            v55 = vcgtq_s16(v53, v45);
            v56 = vaddq_s16(v50, v50);
            v57 = vaddq_s16(v37, v36);
            v58 = vaddq_s16(v39, v38);
            v59 = vaddq_s16(v41, v40);
            v60 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v58, v37), vhaddq_u16(v36, v40)), 2uLL), vaddq_s16(v56, v38)), vsubq_s16(v38, v56));
            v61 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v58, v40), vhaddq_u16(v41, v37)), 2uLL), vaddq_s16(v56, v39)), vsubq_s16(v39, v56));
            v62 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v58, v57), 2uLL), vaddq_s16(v56, v37)), vsubq_s16(v37, v56));
            v63 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v59, v58), 2uLL), vaddq_s16(v56, v40)), vsubq_s16(v40, v56));
            v64 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v36, v48), vhaddq_u16(v57, v58)), 2uLL), vaddq_s16(v56, v36)), vsubq_s16(v36, v56));
            v65 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v49, v41), vhaddq_u16(v59, v58)), 2uLL), vaddq_s16(v56, v41)), vsubq_s16(v41, v56));
            v66 = vbicq_s8(v50, v52);
            v67 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v39, v38), v29), vsubq_s16(v40, v37), v31), 4uLL);
            v68 = vcgtq_s16(vmulq_s16(v66, v32), vabsq_s16(v67));
            v69 = vmaxq_s16(vminq_s16(vandq_s8(v67, v68), v66), vnegq_s16(v66));
            v70 = vshrq_n_s16(v66, 1uLL);
            v71 = vnegq_s16(v70);
            *(v30 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v64, v36), 0), v33);
            *(v28 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v62, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v36, v38), v37), v69), v70), v71), vandq_s8(v68, v55)), v37)), 0), v33);
            *(v27 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v60, vaddq_s16(v69, v38)), 0), v33);
            *(result + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v61, vsubq_s16(v39, v69)), 0), v33);
            *(v26 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v63, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v41, v39), v40), v69), v70), v71), vandq_s8(v68, v54)), v40)), 0), v33);
            *(v35 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v65, v41), 0), v33);
          }

          else
          {
            v72 = vcgtq_s16(v53, v46);
            v73 = vcgtq_s16(v53, v45);
            v74 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v39, v38), v29), vsubq_s16(v40, v37), v31), 4uLL);
            v75 = vcgtq_s16(vmulq_s16(v50, v32), vabsq_s16(v74));
            v76 = vmaxq_s16(vminq_s16(vandq_s8(v74, v75), v50), vnegq_s16(v50));
            v77 = vshrq_n_s16(v50, 1uLL);
            v78 = vnegq_s16(v77);
            *(v28 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v36, v38), v37), v76), v77), v78), vandq_s8(v75, v73)), v37), 0), v33);
            *(v27 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(v76, v38), 0), v33);
            *(result + 16 * v25) = vminq_s16(vmaxq_s16(vsubq_s16(v39, v76), 0), v33);
            *(v26 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v41, v39), v40), v76), v77), v78), vandq_s8(v75, v72)), v40), 0), v33);
          }
        }
      }

      ++v25;
      _X6 += 16;
    }

    while (v24 != v25);
  }

  _X10 = _X6 + 128 - 8 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 6 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 4 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 2 * a2;
  __asm
  {
    PRFM            #0x10, [X10]
    PRFM            #0x10, [X6,#0x80]
  }

  _X10 = _X6 + 128 + 2 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X9 = _X6 + 128 + 4 * a2;
  __asm { PRFM            #0x10, [X9] }

  _X8 = _X6 + 128 + 6 * a2;
  __asm { PRFM            #0x10, [X8] }

  return result;
}

uint64_t sub_2774E1E44(uint64_t result, uint64_t a2, unsigned __int8 *a3, unsigned __int16 *a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 2 * a2;
    v7 = 4 * a2;
    v8 = 6 * a2;
    v9 = 12 * a2;
    v10 = 10 * a2;
    v11 = 8 * a2;
    v12.i64[0] = 0x9000900090009;
    v12.i64[1] = 0x9000900090009;
    v13.i64[0] = 0x2000200020002;
    v13.i64[1] = 0x2000200020002;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    v15.i64[0] = 0xFE00FE00FE00FE00;
    v15.i64[1] = 0xFE00FE00FE00FE00;
    v16 = 14 * a2;
    do
    {
      v18 = *a4++;
      v17 = v18;
      if (v18)
      {
        v19 = *(result - 8);
        v20 = *(result + v6 - 8);
        v21 = *(result + v7 - 8);
        v22 = *(result + v8 - 8);
        v23 = *(result + v11 - 8);
        v24 = *(result + v10 - 8);
        v25 = *(result + v9 - 8);
        v26 = *(result + v16 - 8);
        v27 = vtrn1q_s16(v19, v20);
        v28 = vtrn2q_s16(v19, v20);
        v29 = vtrn1q_s16(v21, v22);
        v30 = vtrn2q_s16(v21, v22);
        v31 = vtrn1q_s32(v27, v29);
        v32 = vtrn2q_s32(v27, v29);
        v33 = vtrn1q_s32(v28, v30);
        v34 = vtrn2q_s32(v28, v30);
        v35 = vtrn1q_s16(v23, v24);
        v36 = vtrn2q_s16(v23, v24);
        v37 = vtrn1q_s16(v25, v26);
        v38 = vtrn2q_s16(v25, v26);
        v39 = vtrn1q_s32(v35, v37);
        v40 = vtrn2q_s32(v35, v37);
        v41 = vtrn1q_s32(v36, v38);
        v42 = vtrn2q_s32(v36, v38);
        v43 = vzip2q_s64(v33, v41);
        v44.i64[0] = v33.i64[0];
        v44.i64[1] = v41.i64[0];
        v45 = vzip2q_s64(v31, v39);
        v46 = vzip2q_s64(v32, v40);
        v47.i64[0] = v32.i64[0];
        v47.i64[1] = v40.i64[0];
        v48.i64[0] = v34.i64[0];
        v48.i64[1] = v42.i64[0];
        v49 = vdupq_n_s16(2 * *a3);
        v50 = vabsq_s16(vsubq_s16(vaddq_s16(v44, v48), vaddq_s16(v47, v47)));
        v51 = vabsq_s16(vsubq_s16(vaddq_s16(v46, v45), vaddq_s16(v43, v43)));
        v52 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v50), v50), xmmword_27750D6D0);
        v53 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v51), v51), xmmword_27750D6D0);
        v54 = vcgtq_s16(v49, vaddq_s16(v53, v52));
        if (vaddlvq_u16(v54))
        {
          v31.i64[1] = v39.i64[0];
          v55 = vzip2q_s64(v34, v42);
          v56 = vqtbl1q_s8(vdupq_n_s16(v17), xmmword_27750D6C0);
          v57 = vandq_s8(vaddq_s16(v56, v56), v54);
          v58 = vandq_s8(vcgtq_s16(vrhaddq_s16(v57, vshlq_n_s16(v57, 2uLL)), vabdq_s16(v48, v45)), vandq_s8(vcgtq_s16(vshrq_n_u16(v49, 3uLL), vabaq_s16(vabdq_s16(v55, v45), v31, v48)), vcgtq_s16(vrshrq_n_s16(v49, 3uLL), vaddq_s16(v51, v50))));
          v59 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v58), v58), xmmword_27750D6D0);
          v60 = vshrq_n_u16(vsraq_n_u16(v49, v49, 1uLL), 3uLL);
          if (vaddlvq_u16(v59))
          {
            v61 = vcgtq_s16(v60, v53);
            v62 = vcgtq_s16(v60, v52);
            v63 = vaddq_s16(v57, v57);
            v64 = vaddq_s16(v44, v47);
            v65 = vaddq_s16(v48, v45);
            v66 = vaddq_s16(v43, v46);
            v67 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v65, v47), vhaddq_u16(v44, v43)), 2uLL), vaddq_s16(v63, v48)), vsubq_s16(v48, v63));
            v68 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v65, v43), vhaddq_u16(v46, v47)), 2uLL), vaddq_s16(v63, v45)), vsubq_s16(v45, v63));
            v69 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v64, v65), 2uLL), vaddq_s16(v63, v47)), vsubq_s16(v47, v63));
            v70 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v66, v65), 2uLL), vaddq_s16(v63, v43)), vsubq_s16(v43, v63));
            v71 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v31, v44), vhaddq_u16(v64, v65)), 2uLL), vaddq_s16(v63, v44)), vsubq_s16(v44, v63));
            v72 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v46, v55), vhaddq_u16(v66, v65)), 2uLL), vaddq_s16(v63, v46)), vsubq_s16(v46, v63));
            v73 = vbicq_s8(v57, v59);
            v74 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v45, v48), v12), vsubq_s16(v43, v47), v13), 4uLL);
            v75 = vcgtq_s16(vmulq_s16(v73, v14), vabsq_s16(v74));
            v76 = vandq_s8(v75, v62);
            v77 = vandq_s8(v75, v61);
            v78 = vmaxq_s16(vminq_s16(vandq_s8(v74, v75), v73), vnegq_s16(v73));
            v79 = vshrq_n_s16(v73, 1uLL);
            v80 = vnegq_s16(v79);
            v81 = vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v44, v48), v47), v78), v79), v80);
            v82 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v46, v45), v43), v78), v79), v80), v77), v43);
            v83 = vminq_s16(vmaxq_s16(vbslq_s8(v59, v71, v44), 0), v15);
            v84 = vminq_s16(vmaxq_s16(vbslq_s8(v59, v69, vaddq_s16(vandq_s8(v81, v76), v47)), 0), v15);
            v85 = vminq_s16(vmaxq_s16(vbslq_s8(v59, v67, vaddq_s16(v78, v48)), 0), v15);
            v86 = vminq_s16(vmaxq_s16(vbslq_s8(v59, v68, vsubq_s16(v45, v78)), 0), v15);
            v87 = vminq_s16(vmaxq_s16(vbslq_s8(v59, v70, v82), 0), v15);
            v88 = vminq_s16(vmaxq_s16(vbslq_s8(v59, v72, v46), 0), v15);
            v89 = vtrn1q_s16(v31, v83);
            v90 = vtrn2q_s16(v31, v83);
            v91 = vtrn1q_s16(v84, v85);
            v92 = vtrn2q_s16(v84, v85);
            v93 = vtrn1q_s32(v89, v91);
            v94 = vtrn2q_s32(v89, v91);
            v95 = vtrn1q_s32(v90, v92);
            v96 = vtrn2q_s32(v90, v92);
            v97 = vtrn1q_s16(v86, v87);
            v98 = vtrn2q_s16(v86, v87);
            v99 = vtrn1q_s16(v88, v55);
            v100 = vtrn2q_s16(v88, v55);
            v101 = vtrn1q_s32(v97, v99);
            v102 = vtrn2q_s32(v97, v99);
            v103 = vtrn1q_s32(v98, v100);
            v104 = vtrn2q_s32(v98, v100);
            v105 = vzip2q_s64(v93, v101);
            v93.i64[1] = v101.i64[0];
            v106 = vzip2q_s64(v95, v103);
            v95.i64[1] = v103.i64[0];
            v107 = vzip2q_s64(v94, v102);
            v94.i64[1] = v102.i64[0];
            v108 = vzip2q_s64(v96, v104);
            v96.i64[1] = v104.i64[0];
            *(result - 8) = v93;
            *(result + v6 - 8) = v95;
            *(result + v7 - 8) = v94;
            *(result + v8 - 8) = v96;
            *(result + v11 - 8) = v105;
            *(result + v10 - 8) = v106;
            *(result + v9 - 8) = v107;
            *(result + v16 - 8) = v108;
          }

          else
          {
            v109 = vcgtq_s16(v60, v53);
            v110 = vcgtq_s16(v60, v52);
            v111 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v45, v48), v12), vsubq_s16(v43, v47), v13), 4uLL);
            v112 = vcgtq_s16(vmulq_s16(v57, v14), vabsq_s16(v111));
            v113 = vmaxq_s16(vminq_s16(vandq_s8(v111, v112), v57), vnegq_s16(v57));
            v114 = vshrq_n_s16(v57, 1uLL);
            v115 = vnegq_s16(v114);
            v116 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v46, v45), v43), v113), v114), v115), vandq_s8(v112, v109)), v43);
            v117 = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v44, v48), v47), v113), v114), v115), vandq_s8(v112, v110)), v47), 0), v15);
            v118 = vminq_s16(vmaxq_s16(vaddq_s16(v113, v48), 0), v15);
            v119 = vminq_s16(vmaxq_s16(vsubq_s16(v45, v113), 0), v15);
            v120 = vminq_s16(vmaxq_s16(v116, 0), v15);
            v121 = vtrn1q_s16(v117, v118);
            v122 = vtrn2q_s16(v117, v118);
            v123 = vtrn1q_s16(v119, v120);
            v124 = vtrn2q_s16(v119, v120);
            v125 = vtrn1q_s32(v121, v123);
            v126 = vtrn2q_s32(v121, v123);
            v127 = vtrn1q_s32(v122, v124);
            v128 = vtrn2q_s32(v122, v124);
            *(result - 4) = v125.i64[0];
            *(result + v6 - 4) = v127.i64[0];
            *(result + v7 - 4) = v126.i64[0];
            *(result + v8 - 4) = v128.i64[0];
            *(result + v11 - 4) = v125.i64[1];
            *(result + v10 - 4) = v127.i64[1];
            *(result + v9 - 4) = v126.i64[1];
            *(result + v16 - 4) = v128.i64[1];
          }
        }
      }

      result += 16 * a2;
      ++a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2774E2378(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = result + 4 * a2;
    v8 = result + 2 * a2;
    v9 = result - 2 * a2;
    v10 = result - 6 * a2;
    v11 = result - 4 * a2;
    v12.i64[0] = 0x9000900090009;
    v12.i64[1] = 0x9000900090009;
    v13.i64[0] = 0x2000200020002;
    v13.i64[1] = 0x2000200020002;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    v15.i64[0] = 0xFE00FE00FE00FE00;
    v15.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      if (*(a4 + 2 * v6))
      {
        v16 = *(v10 + 16 * v6);
        v17 = *(v11 + 16 * v6);
        v18 = *(v9 + 16 * v6);
        v19 = *(result + 16 * v6);
        v20 = *(v8 + 16 * v6);
        v21 = *(v7 + 16 * v6);
        v22 = vdupq_n_s16(2 * *(a3 + v6));
        v23 = vabsq_s16(vsubq_s16(vaddq_s16(v18, v16), vaddq_s16(v17, v17)));
        v24 = vabsq_s16(vsubq_s16(vaddq_s16(v21, v19), vaddq_s16(v20, v20)));
        v25 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v23), v23), xmmword_27750D6D0);
        v26 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v24), v24), xmmword_27750D6D0);
        v27 = vcgtq_s16(v22, vaddq_s16(v26, v25));
        if (vaddlvq_u16(v27))
        {
          v28 = *(result - 8 * a2 + 16 * v6);
          v29 = *(result + 6 * a2 + 16 * v6);
          v30 = vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v6)), xmmword_27750D6C0);
          v31 = vandq_s8(vaddq_s16(v30, v30), v27);
          v32 = vandq_s8(vcgtq_s16(vrhaddq_s16(v31, vshlq_n_s16(v31, 2uLL)), vabdq_s16(v18, v19)), vandq_s8(vcgtq_s16(vshrq_n_u16(v22, 3uLL), vabaq_s16(vabdq_s16(v29, v19), v28, v18)), vcgtq_s16(vrshrq_n_s16(v22, 3uLL), vaddq_s16(v24, v23))));
          v33 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v32), v32), xmmword_27750D6D0);
          v34 = vshrq_n_u16(vsraq_n_u16(v22, v22, 1uLL), 3uLL);
          if (vaddlvq_u16(v33))
          {
            v35 = vcgtq_s16(v34, v26);
            v36 = vcgtq_s16(v34, v25);
            v37 = vaddq_s16(v31, v31);
            v38 = vaddq_s16(v17, v16);
            v39 = vaddq_s16(v19, v18);
            v40 = vaddq_s16(v21, v20);
            v41 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v39, v17), vhaddq_u16(v16, v20)), 2uLL), vaddq_s16(v37, v18)), vsubq_s16(v18, v37));
            v42 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v39, v20), vhaddq_u16(v21, v17)), 2uLL), vaddq_s16(v37, v19)), vsubq_s16(v19, v37));
            v43 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v39, v38), 2uLL), vaddq_s16(v37, v17)), vsubq_s16(v17, v37));
            v44 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v40, v39), 2uLL), vaddq_s16(v37, v20)), vsubq_s16(v20, v37));
            v45 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v16, v28), vhaddq_u16(v38, v39)), 2uLL), vaddq_s16(v37, v16)), vsubq_s16(v16, v37));
            v46 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v29, v21), vhaddq_u16(v40, v39)), 2uLL), vaddq_s16(v37, v21)), vsubq_s16(v21, v37));
            v47 = vbicq_s8(v31, v33);
            v48 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v19, v18), v12), vsubq_s16(v20, v17), v13), 4uLL);
            v49 = vcgtq_s16(vmulq_s16(v47, v14), vabsq_s16(v48));
            v50 = vmaxq_s16(vminq_s16(vandq_s8(v48, v49), v47), vnegq_s16(v47));
            v51 = vshrq_n_s16(v47, 1uLL);
            v52 = vnegq_s16(v51);
            *(v10 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v33, v45, v16), 0), v15);
            *(v11 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v33, v43, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v16, v18), v17), v50), v51), v52), vandq_s8(v49, v36)), v17)), 0), v15);
            *(v9 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v33, v41, vaddq_s16(v50, v18)), 0), v15);
            *(result + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v33, v42, vsubq_s16(v19, v50)), 0), v15);
            *(v8 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v33, v44, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v21, v19), v20), v50), v51), v52), vandq_s8(v49, v35)), v20)), 0), v15);
            *(v7 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v33, v46, v21), 0), v15);
          }

          else
          {
            v53 = vcgtq_s16(v34, v26);
            v54 = vcgtq_s16(v34, v25);
            v55 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v19, v18), v12), vsubq_s16(v20, v17), v13), 4uLL);
            v56 = vcgtq_s16(vmulq_s16(v31, v14), vabsq_s16(v55));
            v57 = vmaxq_s16(vminq_s16(vandq_s8(v55, v56), v31), vnegq_s16(v31));
            v58 = vshrq_n_s16(v31, 1uLL);
            v59 = vnegq_s16(v58);
            *(v11 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v16, v18), v17), v57), v58), v59), vandq_s8(v56, v54)), v17), 0), v15);
            *(v9 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(v57, v18), 0), v15);
            *(result + 16 * v6) = vminq_s16(vmaxq_s16(vsubq_s16(v19, v57), 0), v15);
            *(v8 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v21, v19), v20), v57), v58), v59), vandq_s8(v56, v53)), v20), 0), v15);
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_2774E2744(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  _X9 = result + 192 - 8 * a2;
  __asm { PRFM            #0x10, [X9] }

  _X9 = result - 6 * a2;
  __asm { PRFM            #0x10, [X9,#0xC0] }

  _X12 = result - 4 * a2;
  __asm { PRFM            #0x10, [X12,#0xC0] }

  _X14 = result - 2 * a2;
  __asm
  {
    PRFM            #0x10, [X14,#0xC0]
    PRFM            #0x10, [X0,#0xC0]
  }

  _X14 = result + 192 + 2 * a2;
  __asm { PRFM            #0x10, [X14] }

  _X14 = result + 192 + 4 * a2;
  __asm { PRFM            #0x10, [X14] }

  _X13 = result + 192 + 6 * a2;
  __asm { PRFM            #0x10, [X13] }

  v24 = (a5 >> 3);
  if (v24 < 1)
  {
    _X6 = result;
  }

  else
  {
    v25 = 0;
    v26 = result + 2 * a2;
    v27 = result - 2 * a2;
    v28 = result - 4 * a2;
    v29.i64[0] = 0x9000900090009;
    v29.i64[1] = 0x9000900090009;
    v30 = result - 6 * a2;
    v31.i64[0] = 0x2000200020002;
    v31.i64[1] = 0x2000200020002;
    v32.i64[0] = 0xA000A000A000ALL;
    v32.i64[1] = 0xA000A000A000ALL;
    v33.i64[0] = 0xFE00FE00FE00FE00;
    v33.i64[1] = 0xFE00FE00FE00FE00;
    _X6 = result;
    v35 = result + 4 * a2;
    do
    {
      if (*(a4 + 2 * v25))
      {
        v36 = *(v30 + 16 * v25);
        v37 = *(v28 + 16 * v25);
        v38 = *(v27 + 16 * v25);
        v39 = *(result + 16 * v25);
        v40 = *(v26 + 16 * v25);
        v41 = *(v35 + 16 * v25);
        v42 = vdupq_n_s16(2 * *(a3 + v25));
        v43 = vabsq_s16(vsubq_s16(vaddq_s16(v38, v36), vaddq_s16(v37, v37)));
        v44 = vabsq_s16(vsubq_s16(vaddq_s16(v41, v39), vaddq_s16(v40, v40)));
        v45 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v43), v43), xmmword_27750D6D0);
        v46 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v44), v44), xmmword_27750D6D0);
        v47 = vcgtq_s16(v42, vaddq_s16(v46, v45));
        if (vaddlvq_u16(v47))
        {
          v48 = *(result - 8 * a2 + 16 * v25);
          v49 = *(result + 6 * a2 + 16 * v25);
          v50 = vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v25)), xmmword_27750D6C0);
          v51 = vandq_s8(vaddq_s16(v50, v50), v47);
          v52 = vandq_s8(vcgtq_s16(vrhaddq_s16(v51, vshlq_n_s16(v51, 2uLL)), vabdq_s16(v38, v39)), vandq_s8(vcgtq_s16(vshrq_n_u16(v42, 3uLL), vabaq_s16(vabdq_s16(v49, v39), v48, v38)), vcgtq_s16(vrshrq_n_s16(v42, 3uLL), vaddq_s16(v44, v43))));
          v53 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v52), v52), xmmword_27750D6D0);
          v54 = vshrq_n_u16(vsraq_n_u16(v42, v42, 1uLL), 3uLL);
          if (vaddlvq_u16(v53))
          {
            v55 = vcgtq_s16(v54, v46);
            v56 = vcgtq_s16(v54, v45);
            v57 = vaddq_s16(v51, v51);
            v58 = vaddq_s16(v37, v36);
            v59 = vaddq_s16(v39, v38);
            v60 = vaddq_s16(v41, v40);
            v61 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v59, v37), vhaddq_u16(v36, v40)), 2uLL), vaddq_s16(v57, v38)), vsubq_s16(v38, v57));
            v62 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v59, v40), vhaddq_u16(v41, v37)), 2uLL), vaddq_s16(v57, v39)), vsubq_s16(v39, v57));
            v63 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v59, v58), 2uLL), vaddq_s16(v57, v37)), vsubq_s16(v37, v57));
            v64 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v60, v59), 2uLL), vaddq_s16(v57, v40)), vsubq_s16(v40, v57));
            v65 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v36, v48), vhaddq_u16(v58, v59)), 2uLL), vaddq_s16(v57, v36)), vsubq_s16(v36, v57));
            v66 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v49, v41), vhaddq_u16(v60, v59)), 2uLL), vaddq_s16(v57, v41)), vsubq_s16(v41, v57));
            v67 = vbicq_s8(v51, v53);
            v68 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v39, v38), v29), vsubq_s16(v40, v37), v31), 4uLL);
            v69 = vcgtq_s16(vmulq_s16(v67, v32), vabsq_s16(v68));
            v70 = vmaxq_s16(vminq_s16(vandq_s8(v68, v69), v67), vnegq_s16(v67));
            v71 = vshrq_n_s16(v67, 1uLL);
            v72 = vnegq_s16(v71);
            *(v30 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v53, v65, v36), 0), v33);
            *(v28 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v53, v63, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v36, v38), v37), v70), v71), v72), vandq_s8(v69, v56)), v37)), 0), v33);
            *(v27 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v53, v61, vaddq_s16(v70, v38)), 0), v33);
            *(result + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v53, v62, vsubq_s16(v39, v70)), 0), v33);
            *(v26 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v53, v64, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v41, v39), v40), v70), v71), v72), vandq_s8(v69, v55)), v40)), 0), v33);
            *(v35 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v53, v66, v41), 0), v33);
          }

          else
          {
            v73 = vcgtq_s16(v54, v46);
            v74 = vcgtq_s16(v54, v45);
            v75 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v39, v38), v29), vsubq_s16(v40, v37), v31), 4uLL);
            v76 = vcgtq_s16(vmulq_s16(v51, v32), vabsq_s16(v75));
            v77 = vmaxq_s16(vminq_s16(vandq_s8(v75, v76), v51), vnegq_s16(v51));
            v78 = vshrq_n_s16(v51, 1uLL);
            v79 = vnegq_s16(v78);
            *(v28 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v36, v38), v37), v77), v78), v79), vandq_s8(v76, v74)), v37), 0), v33);
            *(v27 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(v77, v38), 0), v33);
            *(result + 16 * v25) = vminq_s16(vmaxq_s16(vsubq_s16(v39, v77), 0), v33);
            *(v26 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v41, v39), v40), v77), v78), v79), vandq_s8(v76, v73)), v40), 0), v33);
          }
        }
      }

      ++v25;
      _X6 += 16;
    }

    while (v24 != v25);
  }

  _X10 = _X6 + 128 - 8 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 6 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 4 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 2 * a2;
  __asm
  {
    PRFM            #0x10, [X10]
    PRFM            #0x10, [X6,#0x80]
  }

  _X10 = _X6 + 128 + 2 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X9 = _X6 + 128 + 4 * a2;
  __asm { PRFM            #0x10, [X9] }

  _X8 = _X6 + 128 + 6 * a2;
  __asm { PRFM            #0x10, [X8] }

  return result;
}

uint64_t sub_2774E2BC8(uint64_t result, uint64_t a2, unsigned __int8 *a3, unsigned __int16 *a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 2 * a2;
    v7 = 4 * a2;
    v8 = 6 * a2;
    v9 = 12 * a2;
    v10 = 10 * a2;
    v11 = 8 * a2;
    v12.i64[0] = 0x9000900090009;
    v12.i64[1] = 0x9000900090009;
    v13.i64[0] = 0x2000200020002;
    v13.i64[1] = 0x2000200020002;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    v15.i64[0] = 0xFC00FC00FC00FC00;
    v15.i64[1] = 0xFC00FC00FC00FC00;
    v16 = 14 * a2;
    do
    {
      v18 = *a4++;
      v17 = v18;
      if (v18)
      {
        v19 = *(result - 8);
        v20 = *(result + v6 - 8);
        v21 = *(result + v7 - 8);
        v22 = *(result + v8 - 8);
        v23 = *(result + v11 - 8);
        v24 = *(result + v10 - 8);
        v25 = *(result + v9 - 8);
        v26 = *(result + v16 - 8);
        v27 = vtrn1q_s16(v19, v20);
        v28 = vtrn2q_s16(v19, v20);
        v29 = vtrn1q_s16(v21, v22);
        v30 = vtrn2q_s16(v21, v22);
        v31 = vtrn1q_s32(v27, v29);
        v32 = vtrn2q_s32(v27, v29);
        v33 = vtrn1q_s32(v28, v30);
        v34 = vtrn2q_s32(v28, v30);
        v35 = vtrn1q_s16(v23, v24);
        v36 = vtrn2q_s16(v23, v24);
        v37 = vtrn1q_s16(v25, v26);
        v38 = vtrn2q_s16(v25, v26);
        v39 = vtrn1q_s32(v35, v37);
        v40 = vtrn2q_s32(v35, v37);
        v41 = vtrn1q_s32(v36, v38);
        v42 = vtrn2q_s32(v36, v38);
        v43 = vzip2q_s64(v33, v41);
        v44.i64[0] = v33.i64[0];
        v44.i64[1] = v41.i64[0];
        v45 = vzip2q_s64(v31, v39);
        v46 = vzip2q_s64(v32, v40);
        v47.i64[0] = v32.i64[0];
        v47.i64[1] = v40.i64[0];
        v48.i64[0] = v34.i64[0];
        v48.i64[1] = v42.i64[0];
        v49 = vdupq_n_s16(4 * *a3);
        v50 = vabsq_s16(vsubq_s16(vaddq_s16(v44, v48), vaddq_s16(v47, v47)));
        v51 = vabsq_s16(vsubq_s16(vaddq_s16(v46, v45), vaddq_s16(v43, v43)));
        v52 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v50), v50), xmmword_27750D6D0);
        v53 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v51), v51), xmmword_27750D6D0);
        v54 = vcgtq_s16(v49, vaddq_s16(v53, v52));
        if (vaddlvq_u16(v54))
        {
          v31.i64[1] = v39.i64[0];
          v55 = vzip2q_s64(v34, v42);
          v56 = vandq_s8(vshlq_n_s16(vqtbl1q_s8(vdupq_n_s16(v17), xmmword_27750D6C0), 2uLL), v54);
          v57 = vandq_s8(vcgtq_s16(vrhaddq_s16(v56, vshlq_n_s16(v56, 2uLL)), vabdq_s16(v48, v45)), vandq_s8(vcgtq_s16(vshrq_n_u16(v49, 3uLL), vabaq_s16(vabdq_s16(v55, v45), v31, v48)), vcgtq_s16(vrshrq_n_s16(v49, 3uLL), vaddq_s16(v51, v50))));
          v58 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v57), v57), xmmword_27750D6D0);
          v59 = vshrq_n_u16(vsraq_n_u16(v49, v49, 1uLL), 3uLL);
          if (vaddlvq_u16(v58))
          {
            v60 = vcgtq_s16(v59, v53);
            v61 = vcgtq_s16(v59, v52);
            v62 = vaddq_s16(v56, v56);
            v63 = vaddq_s16(v44, v47);
            v64 = vaddq_s16(v48, v45);
            v65 = vaddq_s16(v43, v46);
            v66 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v64, v47), vhaddq_u16(v44, v43)), 2uLL), vaddq_s16(v62, v48)), vsubq_s16(v48, v62));
            v67 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v64, v43), vhaddq_u16(v46, v47)), 2uLL), vaddq_s16(v62, v45)), vsubq_s16(v45, v62));
            v68 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v63, v64), 2uLL), vaddq_s16(v62, v47)), vsubq_s16(v47, v62));
            v69 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v65, v64), 2uLL), vaddq_s16(v62, v43)), vsubq_s16(v43, v62));
            v70 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v31, v44), vhaddq_u16(v63, v64)), 2uLL), vaddq_s16(v62, v44)), vsubq_s16(v44, v62));
            v71 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v46, v55), vhaddq_u16(v65, v64)), 2uLL), vaddq_s16(v62, v46)), vsubq_s16(v46, v62));
            v72 = vbicq_s8(v56, v58);
            v73 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v45, v48), v12), vsubq_s16(v43, v47), v13), 4uLL);
            v74 = vcgtq_s16(vmulq_s16(v72, v14), vabsq_s16(v73));
            v75 = vandq_s8(v74, v61);
            v76 = vandq_s8(v74, v60);
            v77 = vmaxq_s16(vminq_s16(vandq_s8(v73, v74), v72), vnegq_s16(v72));
            v78 = vshrq_n_s16(v72, 1uLL);
            v79 = vnegq_s16(v78);
            v80 = vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v44, v48), v47), v77), v78), v79);
            v81 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v46, v45), v43), v77), v78), v79), v76), v43);
            v82 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v70, v44), 0), v15);
            v83 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v68, vaddq_s16(vandq_s8(v80, v75), v47)), 0), v15);
            v84 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v66, vaddq_s16(v77, v48)), 0), v15);
            v85 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v67, vsubq_s16(v45, v77)), 0), v15);
            v86 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v69, v81), 0), v15);
            v87 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v71, v46), 0), v15);
            v88 = vtrn1q_s16(v31, v82);
            v89 = vtrn2q_s16(v31, v82);
            v90 = vtrn1q_s16(v83, v84);
            v91 = vtrn2q_s16(v83, v84);
            v92 = vtrn1q_s32(v88, v90);
            v93 = vtrn2q_s32(v88, v90);
            v94 = vtrn1q_s32(v89, v91);
            v95 = vtrn2q_s32(v89, v91);
            v96 = vtrn1q_s16(v85, v86);
            v97 = vtrn2q_s16(v85, v86);
            v98 = vtrn1q_s16(v87, v55);
            v99 = vtrn2q_s16(v87, v55);
            v100 = vtrn1q_s32(v96, v98);
            v101 = vtrn2q_s32(v96, v98);
            v102 = vtrn1q_s32(v97, v99);
            v103 = vtrn2q_s32(v97, v99);
            v104 = vzip2q_s64(v92, v100);
            v92.i64[1] = v100.i64[0];
            v105 = vzip2q_s64(v94, v102);
            v94.i64[1] = v102.i64[0];
            v106 = vzip2q_s64(v93, v101);
            v93.i64[1] = v101.i64[0];
            v107 = vzip2q_s64(v95, v103);
            v95.i64[1] = v103.i64[0];
            *(result - 8) = v92;
            *(result + v6 - 8) = v94;
            *(result + v7 - 8) = v93;
            *(result + v8 - 8) = v95;
            *(result + v11 - 8) = v104;
            *(result + v10 - 8) = v105;
            *(result + v9 - 8) = v106;
            *(result + v16 - 8) = v107;
          }

          else
          {
            v108 = vcgtq_s16(v59, v53);
            v109 = vcgtq_s16(v59, v52);
            v110 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v45, v48), v12), vsubq_s16(v43, v47), v13), 4uLL);
            v111 = vcgtq_s16(vmulq_s16(v56, v14), vabsq_s16(v110));
            v112 = vmaxq_s16(vminq_s16(vandq_s8(v110, v111), v56), vnegq_s16(v56));
            v113 = vshrq_n_s16(v56, 1uLL);
            v114 = vnegq_s16(v113);
            v115 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v46, v45), v43), v112), v113), v114), vandq_s8(v111, v108)), v43);
            v116 = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v44, v48), v47), v112), v113), v114), vandq_s8(v111, v109)), v47), 0), v15);
            v117 = vminq_s16(vmaxq_s16(vaddq_s16(v112, v48), 0), v15);
            v118 = vminq_s16(vmaxq_s16(vsubq_s16(v45, v112), 0), v15);
            v119 = vminq_s16(vmaxq_s16(v115, 0), v15);
            v120 = vtrn1q_s16(v116, v117);
            v121 = vtrn2q_s16(v116, v117);
            v122 = vtrn1q_s16(v118, v119);
            v123 = vtrn2q_s16(v118, v119);
            v124 = vtrn1q_s32(v120, v122);
            v125 = vtrn2q_s32(v120, v122);
            v126 = vtrn1q_s32(v121, v123);
            v127 = vtrn2q_s32(v121, v123);
            *(result - 4) = v124.i64[0];
            *(result + v6 - 4) = v126.i64[0];
            *(result + v7 - 4) = v125.i64[0];
            *(result + v8 - 4) = v127.i64[0];
            *(result + v11 - 4) = v124.i64[1];
            *(result + v10 - 4) = v126.i64[1];
            *(result + v9 - 4) = v125.i64[1];
            *(result + v16 - 4) = v127.i64[1];
          }
        }
      }

      result += 16 * a2;
      ++a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2774E30FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = result + 4 * a2;
    v8 = result + 2 * a2;
    v9 = result - 2 * a2;
    v10 = result - 6 * a2;
    v11 = result - 4 * a2;
    v12.i64[0] = 0x9000900090009;
    v12.i64[1] = 0x9000900090009;
    v13.i64[0] = 0x2000200020002;
    v13.i64[1] = 0x2000200020002;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    v15.i64[0] = 0xFC00FC00FC00FC00;
    v15.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      if (*(a4 + 2 * v6))
      {
        v16 = *(v10 + 16 * v6);
        v17 = *(v11 + 16 * v6);
        v18 = *(v9 + 16 * v6);
        v19 = *(result + 16 * v6);
        v20 = *(v8 + 16 * v6);
        v21 = *(v7 + 16 * v6);
        v22 = vdupq_n_s16(4 * *(a3 + v6));
        v23 = vabsq_s16(vsubq_s16(vaddq_s16(v18, v16), vaddq_s16(v17, v17)));
        v24 = vabsq_s16(vsubq_s16(vaddq_s16(v21, v19), vaddq_s16(v20, v20)));
        v25 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v23), v23), xmmword_27750D6D0);
        v26 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v24), v24), xmmword_27750D6D0);
        v27 = vcgtq_s16(v22, vaddq_s16(v26, v25));
        if (vaddlvq_u16(v27))
        {
          v28 = *(result - 8 * a2 + 16 * v6);
          v29 = *(result + 6 * a2 + 16 * v6);
          v30 = vandq_s8(vshlq_n_s16(vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v6)), xmmword_27750D6C0), 2uLL), v27);
          v31 = vandq_s8(vcgtq_s16(vrhaddq_s16(v30, vshlq_n_s16(v30, 2uLL)), vabdq_s16(v18, v19)), vandq_s8(vcgtq_s16(vshrq_n_u16(v22, 3uLL), vabaq_s16(vabdq_s16(v29, v19), v28, v18)), vcgtq_s16(vrshrq_n_s16(v22, 3uLL), vaddq_s16(v24, v23))));
          v32 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v31), v31), xmmword_27750D6D0);
          v33 = vshrq_n_u16(vsraq_n_u16(v22, v22, 1uLL), 3uLL);
          if (vaddlvq_u16(v32))
          {
            v34 = vcgtq_s16(v33, v26);
            v35 = vcgtq_s16(v33, v25);
            v36 = vaddq_s16(v30, v30);
            v37 = vaddq_s16(v17, v16);
            v38 = vaddq_s16(v19, v18);
            v39 = vaddq_s16(v21, v20);
            v40 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v38, v17), vhaddq_u16(v16, v20)), 2uLL), vaddq_s16(v36, v18)), vsubq_s16(v18, v36));
            v41 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v38, v20), vhaddq_u16(v21, v17)), 2uLL), vaddq_s16(v36, v19)), vsubq_s16(v19, v36));
            v42 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v38, v37), 2uLL), vaddq_s16(v36, v17)), vsubq_s16(v17, v36));
            v43 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v39, v38), 2uLL), vaddq_s16(v36, v20)), vsubq_s16(v20, v36));
            v44 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v16, v28), vhaddq_u16(v37, v38)), 2uLL), vaddq_s16(v36, v16)), vsubq_s16(v16, v36));
            v45 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v29, v21), vhaddq_u16(v39, v38)), 2uLL), vaddq_s16(v36, v21)), vsubq_s16(v21, v36));
            v46 = vbicq_s8(v30, v32);
            v47 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v19, v18), v12), vsubq_s16(v20, v17), v13), 4uLL);
            v48 = vcgtq_s16(vmulq_s16(v46, v14), vabsq_s16(v47));
            v49 = vmaxq_s16(vminq_s16(vandq_s8(v47, v48), v46), vnegq_s16(v46));
            v50 = vshrq_n_s16(v46, 1uLL);
            v51 = vnegq_s16(v50);
            *(v10 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v44, v16), 0), v15);
            *(v11 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v42, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v16, v18), v17), v49), v50), v51), vandq_s8(v48, v35)), v17)), 0), v15);
            *(v9 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v40, vaddq_s16(v49, v18)), 0), v15);
            *(result + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v41, vsubq_s16(v19, v49)), 0), v15);
            *(v8 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v43, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v21, v19), v20), v49), v50), v51), vandq_s8(v48, v34)), v20)), 0), v15);
            *(v7 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v45, v21), 0), v15);
          }

          else
          {
            v52 = vcgtq_s16(v33, v26);
            v53 = vcgtq_s16(v33, v25);
            v54 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v19, v18), v12), vsubq_s16(v20, v17), v13), 4uLL);
            v55 = vcgtq_s16(vmulq_s16(v30, v14), vabsq_s16(v54));
            v56 = vmaxq_s16(vminq_s16(vandq_s8(v54, v55), v30), vnegq_s16(v30));
            v57 = vshrq_n_s16(v30, 1uLL);
            v58 = vnegq_s16(v57);
            *(v11 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v16, v18), v17), v56), v57), v58), vandq_s8(v55, v53)), v17), 0), v15);
            *(v9 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(v56, v18), 0), v15);
            *(result + 16 * v6) = vminq_s16(vmaxq_s16(vsubq_s16(v19, v56), 0), v15);
            *(v8 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v21, v19), v20), v56), v57), v58), vandq_s8(v55, v52)), v20), 0), v15);
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_2774E34C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  _X9 = result + 192 - 8 * a2;
  __asm { PRFM            #0x10, [X9] }

  _X9 = result - 6 * a2;
  __asm { PRFM            #0x10, [X9,#0xC0] }

  _X12 = result - 4 * a2;
  __asm { PRFM            #0x10, [X12,#0xC0] }

  _X14 = result - 2 * a2;
  __asm
  {
    PRFM            #0x10, [X14,#0xC0]
    PRFM            #0x10, [X0,#0xC0]
  }

  _X14 = result + 192 + 2 * a2;
  __asm { PRFM            #0x10, [X14] }

  _X14 = result + 192 + 4 * a2;
  __asm { PRFM            #0x10, [X14] }

  _X13 = result + 192 + 6 * a2;
  __asm { PRFM            #0x10, [X13] }

  v24 = (a5 >> 3);
  if (v24 < 1)
  {
    _X6 = result;
  }

  else
  {
    v25 = 0;
    v26 = result + 2 * a2;
    v27 = result - 2 * a2;
    v28 = result - 4 * a2;
    v29.i64[0] = 0x9000900090009;
    v29.i64[1] = 0x9000900090009;
    v30 = result - 6 * a2;
    v31.i64[0] = 0x2000200020002;
    v31.i64[1] = 0x2000200020002;
    v32.i64[0] = 0xA000A000A000ALL;
    v32.i64[1] = 0xA000A000A000ALL;
    v33.i64[0] = 0xFC00FC00FC00FC00;
    v33.i64[1] = 0xFC00FC00FC00FC00;
    _X6 = result;
    v35 = result + 4 * a2;
    do
    {
      if (*(a4 + 2 * v25))
      {
        v36 = *(v30 + 16 * v25);
        v37 = *(v28 + 16 * v25);
        v38 = *(v27 + 16 * v25);
        v39 = *(result + 16 * v25);
        v40 = *(v26 + 16 * v25);
        v41 = *(v35 + 16 * v25);
        v42 = vdupq_n_s16(4 * *(a3 + v25));
        v43 = vabsq_s16(vsubq_s16(vaddq_s16(v38, v36), vaddq_s16(v37, v37)));
        v44 = vabsq_s16(vsubq_s16(vaddq_s16(v41, v39), vaddq_s16(v40, v40)));
        v45 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v43), v43), xmmword_27750D6D0);
        v46 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v44), v44), xmmword_27750D6D0);
        v47 = vcgtq_s16(v42, vaddq_s16(v46, v45));
        if (vaddlvq_u16(v47))
        {
          v48 = *(result - 8 * a2 + 16 * v25);
          v49 = *(result + 6 * a2 + 16 * v25);
          v50 = vandq_s8(vshlq_n_s16(vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v25)), xmmword_27750D6C0), 2uLL), v47);
          v51 = vandq_s8(vcgtq_s16(vrhaddq_s16(v50, vshlq_n_s16(v50, 2uLL)), vabdq_s16(v38, v39)), vandq_s8(vcgtq_s16(vshrq_n_u16(v42, 3uLL), vabaq_s16(vabdq_s16(v49, v39), v48, v38)), vcgtq_s16(vrshrq_n_s16(v42, 3uLL), vaddq_s16(v44, v43))));
          v52 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v51), v51), xmmword_27750D6D0);
          v53 = vshrq_n_u16(vsraq_n_u16(v42, v42, 1uLL), 3uLL);
          if (vaddlvq_u16(v52))
          {
            v54 = vcgtq_s16(v53, v46);
            v55 = vcgtq_s16(v53, v45);
            v56 = vaddq_s16(v50, v50);
            v57 = vaddq_s16(v37, v36);
            v58 = vaddq_s16(v39, v38);
            v59 = vaddq_s16(v41, v40);
            v60 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v58, v37), vhaddq_u16(v36, v40)), 2uLL), vaddq_s16(v56, v38)), vsubq_s16(v38, v56));
            v61 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v58, v40), vhaddq_u16(v41, v37)), 2uLL), vaddq_s16(v56, v39)), vsubq_s16(v39, v56));
            v62 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v58, v57), 2uLL), vaddq_s16(v56, v37)), vsubq_s16(v37, v56));
            v63 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v59, v58), 2uLL), vaddq_s16(v56, v40)), vsubq_s16(v40, v56));
            v64 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v36, v48), vhaddq_u16(v57, v58)), 2uLL), vaddq_s16(v56, v36)), vsubq_s16(v36, v56));
            v65 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v49, v41), vhaddq_u16(v59, v58)), 2uLL), vaddq_s16(v56, v41)), vsubq_s16(v41, v56));
            v66 = vbicq_s8(v50, v52);
            v67 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v39, v38), v29), vsubq_s16(v40, v37), v31), 4uLL);
            v68 = vcgtq_s16(vmulq_s16(v66, v32), vabsq_s16(v67));
            v69 = vmaxq_s16(vminq_s16(vandq_s8(v67, v68), v66), vnegq_s16(v66));
            v70 = vshrq_n_s16(v66, 1uLL);
            v71 = vnegq_s16(v70);
            *(v30 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v64, v36), 0), v33);
            *(v28 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v62, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v36, v38), v37), v69), v70), v71), vandq_s8(v68, v55)), v37)), 0), v33);
            *(v27 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v60, vaddq_s16(v69, v38)), 0), v33);
            *(result + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v61, vsubq_s16(v39, v69)), 0), v33);
            *(v26 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v63, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v41, v39), v40), v69), v70), v71), vandq_s8(v68, v54)), v40)), 0), v33);
            *(v35 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v65, v41), 0), v33);
          }

          else
          {
            v72 = vcgtq_s16(v53, v46);
            v73 = vcgtq_s16(v53, v45);
            v74 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v39, v38), v29), vsubq_s16(v40, v37), v31), 4uLL);
            v75 = vcgtq_s16(vmulq_s16(v50, v32), vabsq_s16(v74));
            v76 = vmaxq_s16(vminq_s16(vandq_s8(v74, v75), v50), vnegq_s16(v50));
            v77 = vshrq_n_s16(v50, 1uLL);
            v78 = vnegq_s16(v77);
            *(v28 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v36, v38), v37), v76), v77), v78), vandq_s8(v75, v73)), v37), 0), v33);
            *(v27 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(v76, v38), 0), v33);
            *(result + 16 * v25) = vminq_s16(vmaxq_s16(vsubq_s16(v39, v76), 0), v33);
            *(v26 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v41, v39), v40), v76), v77), v78), vandq_s8(v75, v72)), v40), 0), v33);
          }
        }
      }

      ++v25;
      _X6 += 16;
    }

    while (v24 != v25);
  }

  _X10 = _X6 + 128 - 8 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 6 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 4 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 2 * a2;
  __asm
  {
    PRFM            #0x10, [X10]
    PRFM            #0x10, [X6,#0x80]
  }

  _X10 = _X6 + 128 + 2 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X9 = _X6 + 128 + 4 * a2;
  __asm { PRFM            #0x10, [X9] }

  _X8 = _X6 + 128 + 6 * a2;
  __asm { PRFM            #0x10, [X8] }

  return result;
}

uint64_t sub_2774E394C(uint64_t result, uint64_t a2, unsigned __int8 *a3, unsigned __int16 *a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 2 * a2;
    v7 = 4 * a2;
    v8 = 6 * a2;
    v9 = 12 * a2;
    v10 = 10 * a2;
    v11 = 8 * a2;
    v12.i64[0] = 0x9000900090009;
    v12.i64[1] = 0x9000900090009;
    v13.i64[0] = 0x2000200020002;
    v13.i64[1] = 0x2000200020002;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    v15.i64[0] = 0xF800F800F800F800;
    v15.i64[1] = 0xF800F800F800F800;
    v16 = 14 * a2;
    do
    {
      v18 = *a4++;
      v17 = v18;
      if (v18)
      {
        v19 = *(result - 8);
        v20 = *(result + v6 - 8);
        v21 = *(result + v7 - 8);
        v22 = *(result + v8 - 8);
        v23 = *(result + v11 - 8);
        v24 = *(result + v10 - 8);
        v25 = *(result + v9 - 8);
        v26 = *(result + v16 - 8);
        v27 = vtrn1q_s16(v19, v20);
        v28 = vtrn2q_s16(v19, v20);
        v29 = vtrn1q_s16(v21, v22);
        v30 = vtrn2q_s16(v21, v22);
        v31 = vtrn1q_s32(v27, v29);
        v32 = vtrn2q_s32(v27, v29);
        v33 = vtrn1q_s32(v28, v30);
        v34 = vtrn2q_s32(v28, v30);
        v35 = vtrn1q_s16(v23, v24);
        v36 = vtrn2q_s16(v23, v24);
        v37 = vtrn1q_s16(v25, v26);
        v38 = vtrn2q_s16(v25, v26);
        v39 = vtrn1q_s32(v35, v37);
        v40 = vtrn2q_s32(v35, v37);
        v41 = vtrn1q_s32(v36, v38);
        v42 = vtrn2q_s32(v36, v38);
        v43 = vzip2q_s64(v33, v41);
        v44.i64[0] = v33.i64[0];
        v44.i64[1] = v41.i64[0];
        v45 = vzip2q_s64(v31, v39);
        v46 = vzip2q_s64(v32, v40);
        v47.i64[0] = v32.i64[0];
        v47.i64[1] = v40.i64[0];
        v48.i64[0] = v34.i64[0];
        v48.i64[1] = v42.i64[0];
        v49 = vdupq_n_s16(8 * *a3);
        v50 = vabsq_s16(vsubq_s16(vaddq_s16(v44, v48), vaddq_s16(v47, v47)));
        v51 = vabsq_s16(vsubq_s16(vaddq_s16(v46, v45), vaddq_s16(v43, v43)));
        v52 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v50), v50), xmmword_27750D6D0);
        v53 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v51), v51), xmmword_27750D6D0);
        v54 = vcgtq_s16(v49, vaddq_s16(v53, v52));
        if (vaddlvq_u16(v54))
        {
          v31.i64[1] = v39.i64[0];
          v55 = vzip2q_s64(v34, v42);
          v56 = vandq_s8(vshlq_n_s16(vqtbl1q_s8(vdupq_n_s16(v17), xmmword_27750D6C0), 3uLL), v54);
          v57 = vandq_s8(vcgtq_s16(vrhaddq_s16(v56, vshlq_n_s16(v56, 2uLL)), vabdq_s16(v48, v45)), vandq_s8(vcgtq_s16(vshrq_n_u16(v49, 3uLL), vabaq_s16(vabdq_s16(v55, v45), v31, v48)), vcgtq_s16(vrshrq_n_s16(v49, 3uLL), vaddq_s16(v51, v50))));
          v58 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v57), v57), xmmword_27750D6D0);
          v59 = vshrq_n_u16(vsraq_n_u16(v49, v49, 1uLL), 3uLL);
          if (vaddlvq_u16(v58))
          {
            v60 = vcgtq_s16(v59, v53);
            v61 = vcgtq_s16(v59, v52);
            v62 = vaddq_s16(v56, v56);
            v63 = vaddq_s16(v44, v47);
            v64 = vaddq_s16(v48, v45);
            v65 = vaddq_s16(v43, v46);
            v66 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v64, v47), vhaddq_u16(v44, v43)), 2uLL), vaddq_s16(v62, v48)), vsubq_s16(v48, v62));
            v67 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v64, v43), vhaddq_u16(v46, v47)), 2uLL), vaddq_s16(v62, v45)), vsubq_s16(v45, v62));
            v68 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v63, v64), 2uLL), vaddq_s16(v62, v47)), vsubq_s16(v47, v62));
            v69 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v65, v64), 2uLL), vaddq_s16(v62, v43)), vsubq_s16(v43, v62));
            v70 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v31, v44), vhaddq_u16(v63, v64)), 2uLL), vaddq_s16(v62, v44)), vsubq_s16(v44, v62));
            v71 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v46, v55), vhaddq_u16(v65, v64)), 2uLL), vaddq_s16(v62, v46)), vsubq_s16(v46, v62));
            v72 = vbicq_s8(v56, v58);
            v73 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v45, v48), v12), vsubq_s16(v43, v47), v13), 4uLL);
            v74 = vcgtq_s16(vmulq_s16(v72, v14), vabsq_s16(v73));
            v75 = vandq_s8(v74, v61);
            v76 = vandq_s8(v74, v60);
            v77 = vmaxq_s16(vminq_s16(vandq_s8(v73, v74), v72), vnegq_s16(v72));
            v78 = vshrq_n_s16(v72, 1uLL);
            v79 = vnegq_s16(v78);
            v80 = vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v44, v48), v47), v77), v78), v79);
            v81 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v46, v45), v43), v77), v78), v79), v76), v43);
            v82 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v70, v44), 0), v15);
            v83 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v68, vaddq_s16(vandq_s8(v80, v75), v47)), 0), v15);
            v84 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v66, vaddq_s16(v77, v48)), 0), v15);
            v85 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v67, vsubq_s16(v45, v77)), 0), v15);
            v86 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v69, v81), 0), v15);
            v87 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v71, v46), 0), v15);
            v88 = vtrn1q_s16(v31, v82);
            v89 = vtrn2q_s16(v31, v82);
            v90 = vtrn1q_s16(v83, v84);
            v91 = vtrn2q_s16(v83, v84);
            v92 = vtrn1q_s32(v88, v90);
            v93 = vtrn2q_s32(v88, v90);
            v94 = vtrn1q_s32(v89, v91);
            v95 = vtrn2q_s32(v89, v91);
            v96 = vtrn1q_s16(v85, v86);
            v97 = vtrn2q_s16(v85, v86);
            v98 = vtrn1q_s16(v87, v55);
            v99 = vtrn2q_s16(v87, v55);
            v100 = vtrn1q_s32(v96, v98);
            v101 = vtrn2q_s32(v96, v98);
            v102 = vtrn1q_s32(v97, v99);
            v103 = vtrn2q_s32(v97, v99);
            v104 = vzip2q_s64(v92, v100);
            v92.i64[1] = v100.i64[0];
            v105 = vzip2q_s64(v94, v102);
            v94.i64[1] = v102.i64[0];
            v106 = vzip2q_s64(v93, v101);
            v93.i64[1] = v101.i64[0];
            v107 = vzip2q_s64(v95, v103);
            v95.i64[1] = v103.i64[0];
            *(result - 8) = v92;
            *(result + v6 - 8) = v94;
            *(result + v7 - 8) = v93;
            *(result + v8 - 8) = v95;
            *(result + v11 - 8) = v104;
            *(result + v10 - 8) = v105;
            *(result + v9 - 8) = v106;
            *(result + v16 - 8) = v107;
          }

          else
          {
            v108 = vcgtq_s16(v59, v53);
            v109 = vcgtq_s16(v59, v52);
            v110 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v45, v48), v12), vsubq_s16(v43, v47), v13), 4uLL);
            v111 = vcgtq_s16(vmulq_s16(v56, v14), vabsq_s16(v110));
            v112 = vmaxq_s16(vminq_s16(vandq_s8(v110, v111), v56), vnegq_s16(v56));
            v113 = vshrq_n_s16(v56, 1uLL);
            v114 = vnegq_s16(v113);
            v115 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v46, v45), v43), v112), v113), v114), vandq_s8(v111, v108)), v43);
            v116 = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v44, v48), v47), v112), v113), v114), vandq_s8(v111, v109)), v47), 0), v15);
            v117 = vminq_s16(vmaxq_s16(vaddq_s16(v112, v48), 0), v15);
            v118 = vminq_s16(vmaxq_s16(vsubq_s16(v45, v112), 0), v15);
            v119 = vminq_s16(vmaxq_s16(v115, 0), v15);
            v120 = vtrn1q_s16(v116, v117);
            v121 = vtrn2q_s16(v116, v117);
            v122 = vtrn1q_s16(v118, v119);
            v123 = vtrn2q_s16(v118, v119);
            v124 = vtrn1q_s32(v120, v122);
            v125 = vtrn2q_s32(v120, v122);
            v126 = vtrn1q_s32(v121, v123);
            v127 = vtrn2q_s32(v121, v123);
            *(result - 4) = v124.i64[0];
            *(result + v6 - 4) = v126.i64[0];
            *(result + v7 - 4) = v125.i64[0];
            *(result + v8 - 4) = v127.i64[0];
            *(result + v11 - 4) = v124.i64[1];
            *(result + v10 - 4) = v126.i64[1];
            *(result + v9 - 4) = v125.i64[1];
            *(result + v16 - 4) = v127.i64[1];
          }
        }
      }

      result += 16 * a2;
      ++a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2774E3E80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = result + 4 * a2;
    v8 = result + 2 * a2;
    v9 = result - 2 * a2;
    v10 = result - 6 * a2;
    v11 = result - 4 * a2;
    v12.i64[0] = 0x9000900090009;
    v12.i64[1] = 0x9000900090009;
    v13.i64[0] = 0x2000200020002;
    v13.i64[1] = 0x2000200020002;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    v15.i64[0] = 0xF800F800F800F800;
    v15.i64[1] = 0xF800F800F800F800;
    do
    {
      if (*(a4 + 2 * v6))
      {
        v16 = *(v10 + 16 * v6);
        v17 = *(v11 + 16 * v6);
        v18 = *(v9 + 16 * v6);
        v19 = *(result + 16 * v6);
        v20 = *(v8 + 16 * v6);
        v21 = *(v7 + 16 * v6);
        v22 = vdupq_n_s16(8 * *(a3 + v6));
        v23 = vabsq_s16(vsubq_s16(vaddq_s16(v18, v16), vaddq_s16(v17, v17)));
        v24 = vabsq_s16(vsubq_s16(vaddq_s16(v21, v19), vaddq_s16(v20, v20)));
        v25 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v23), v23), xmmword_27750D6D0);
        v26 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v24), v24), xmmword_27750D6D0);
        v27 = vcgtq_s16(v22, vaddq_s16(v26, v25));
        if (vaddlvq_u16(v27))
        {
          v28 = *(result - 8 * a2 + 16 * v6);
          v29 = *(result + 6 * a2 + 16 * v6);
          v30 = vandq_s8(vshlq_n_s16(vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v6)), xmmword_27750D6C0), 3uLL), v27);
          v31 = vandq_s8(vcgtq_s16(vrhaddq_s16(v30, vshlq_n_s16(v30, 2uLL)), vabdq_s16(v18, v19)), vandq_s8(vcgtq_s16(vshrq_n_u16(v22, 3uLL), vabaq_s16(vabdq_s16(v29, v19), v28, v18)), vcgtq_s16(vrshrq_n_s16(v22, 3uLL), vaddq_s16(v24, v23))));
          v32 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v31), v31), xmmword_27750D6D0);
          v33 = vshrq_n_u16(vsraq_n_u16(v22, v22, 1uLL), 3uLL);
          if (vaddlvq_u16(v32))
          {
            v34 = vcgtq_s16(v33, v26);
            v35 = vcgtq_s16(v33, v25);
            v36 = vaddq_s16(v30, v30);
            v37 = vaddq_s16(v17, v16);
            v38 = vaddq_s16(v19, v18);
            v39 = vaddq_s16(v21, v20);
            v40 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v38, v17), vhaddq_u16(v16, v20)), 2uLL), vaddq_s16(v36, v18)), vsubq_s16(v18, v36));
            v41 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v38, v20), vhaddq_u16(v21, v17)), 2uLL), vaddq_s16(v36, v19)), vsubq_s16(v19, v36));
            v42 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v38, v37), 2uLL), vaddq_s16(v36, v17)), vsubq_s16(v17, v36));
            v43 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v39, v38), 2uLL), vaddq_s16(v36, v20)), vsubq_s16(v20, v36));
            v44 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v16, v28), vhaddq_u16(v37, v38)), 2uLL), vaddq_s16(v36, v16)), vsubq_s16(v16, v36));
            v45 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v29, v21), vhaddq_u16(v39, v38)), 2uLL), vaddq_s16(v36, v21)), vsubq_s16(v21, v36));
            v46 = vbicq_s8(v30, v32);
            v47 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v19, v18), v12), vsubq_s16(v20, v17), v13), 4uLL);
            v48 = vcgtq_s16(vmulq_s16(v46, v14), vabsq_s16(v47));
            v49 = vmaxq_s16(vminq_s16(vandq_s8(v47, v48), v46), vnegq_s16(v46));
            v50 = vshrq_n_s16(v46, 1uLL);
            v51 = vnegq_s16(v50);
            *(v10 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v44, v16), 0), v15);
            *(v11 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v42, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v16, v18), v17), v49), v50), v51), vandq_s8(v48, v35)), v17)), 0), v15);
            *(v9 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v40, vaddq_s16(v49, v18)), 0), v15);
            *(result + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v41, vsubq_s16(v19, v49)), 0), v15);
            *(v8 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v43, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v21, v19), v20), v49), v50), v51), vandq_s8(v48, v34)), v20)), 0), v15);
            *(v7 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v45, v21), 0), v15);
          }

          else
          {
            v52 = vcgtq_s16(v33, v26);
            v53 = vcgtq_s16(v33, v25);
            v54 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v19, v18), v12), vsubq_s16(v20, v17), v13), 4uLL);
            v55 = vcgtq_s16(vmulq_s16(v30, v14), vabsq_s16(v54));
            v56 = vmaxq_s16(vminq_s16(vandq_s8(v54, v55), v30), vnegq_s16(v30));
            v57 = vshrq_n_s16(v30, 1uLL);
            v58 = vnegq_s16(v57);
            *(v11 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v16, v18), v17), v56), v57), v58), vandq_s8(v55, v53)), v17), 0), v15);
            *(v9 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(v56, v18), 0), v15);
            *(result + 16 * v6) = vminq_s16(vmaxq_s16(vsubq_s16(v19, v56), 0), v15);
            *(v8 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v21, v19), v20), v56), v57), v58), vandq_s8(v55, v52)), v20), 0), v15);
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_2774E424C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  _X9 = result + 192 - 8 * a2;
  __asm { PRFM            #0x10, [X9] }

  _X9 = result - 6 * a2;
  __asm { PRFM            #0x10, [X9,#0xC0] }

  _X12 = result - 4 * a2;
  __asm { PRFM            #0x10, [X12,#0xC0] }

  _X14 = result - 2 * a2;
  __asm
  {
    PRFM            #0x10, [X14,#0xC0]
    PRFM            #0x10, [X0,#0xC0]
  }

  _X14 = result + 192 + 2 * a2;
  __asm { PRFM            #0x10, [X14] }

  _X14 = result + 192 + 4 * a2;
  __asm { PRFM            #0x10, [X14] }

  _X13 = result + 192 + 6 * a2;
  __asm { PRFM            #0x10, [X13] }

  v24 = (a5 >> 3);
  if (v24 < 1)
  {
    _X6 = result;
  }

  else
  {
    v25 = 0;
    v26 = result + 2 * a2;
    v27 = result - 2 * a2;
    v28 = result - 4 * a2;
    v29.i64[0] = 0x9000900090009;
    v29.i64[1] = 0x9000900090009;
    v30 = result - 6 * a2;
    v31.i64[0] = 0x2000200020002;
    v31.i64[1] = 0x2000200020002;
    v32.i64[0] = 0xA000A000A000ALL;
    v32.i64[1] = 0xA000A000A000ALL;
    v33.i64[0] = 0xF800F800F800F800;
    v33.i64[1] = 0xF800F800F800F800;
    _X6 = result;
    v35 = result + 4 * a2;
    do
    {
      if (*(a4 + 2 * v25))
      {
        v36 = *(v30 + 16 * v25);
        v37 = *(v28 + 16 * v25);
        v38 = *(v27 + 16 * v25);
        v39 = *(result + 16 * v25);
        v40 = *(v26 + 16 * v25);
        v41 = *(v35 + 16 * v25);
        v42 = vdupq_n_s16(8 * *(a3 + v25));
        v43 = vabsq_s16(vsubq_s16(vaddq_s16(v38, v36), vaddq_s16(v37, v37)));
        v44 = vabsq_s16(vsubq_s16(vaddq_s16(v41, v39), vaddq_s16(v40, v40)));
        v45 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v43), v43), xmmword_27750D6D0);
        v46 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v44), v44), xmmword_27750D6D0);
        v47 = vcgtq_s16(v42, vaddq_s16(v46, v45));
        if (vaddlvq_u16(v47))
        {
          v48 = *(result - 8 * a2 + 16 * v25);
          v49 = *(result + 6 * a2 + 16 * v25);
          v50 = vandq_s8(vshlq_n_s16(vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v25)), xmmword_27750D6C0), 3uLL), v47);
          v51 = vandq_s8(vcgtq_s16(vrhaddq_s16(v50, vshlq_n_s16(v50, 2uLL)), vabdq_s16(v38, v39)), vandq_s8(vcgtq_s16(vshrq_n_u16(v42, 3uLL), vabaq_s16(vabdq_s16(v49, v39), v48, v38)), vcgtq_s16(vrshrq_n_s16(v42, 3uLL), vaddq_s16(v44, v43))));
          v52 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v51), v51), xmmword_27750D6D0);
          v53 = vshrq_n_u16(vsraq_n_u16(v42, v42, 1uLL), 3uLL);
          if (vaddlvq_u16(v52))
          {
            v54 = vcgtq_s16(v53, v46);
            v55 = vcgtq_s16(v53, v45);
            v56 = vaddq_s16(v50, v50);
            v57 = vaddq_s16(v37, v36);
            v58 = vaddq_s16(v39, v38);
            v59 = vaddq_s16(v41, v40);
            v60 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v58, v37), vhaddq_u16(v36, v40)), 2uLL), vaddq_s16(v56, v38)), vsubq_s16(v38, v56));
            v61 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v58, v40), vhaddq_u16(v41, v37)), 2uLL), vaddq_s16(v56, v39)), vsubq_s16(v39, v56));
            v62 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v58, v57), 2uLL), vaddq_s16(v56, v37)), vsubq_s16(v37, v56));
            v63 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v59, v58), 2uLL), vaddq_s16(v56, v40)), vsubq_s16(v40, v56));
            v64 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v36, v48), vhaddq_u16(v57, v58)), 2uLL), vaddq_s16(v56, v36)), vsubq_s16(v36, v56));
            v65 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v49, v41), vhaddq_u16(v59, v58)), 2uLL), vaddq_s16(v56, v41)), vsubq_s16(v41, v56));
            v66 = vbicq_s8(v50, v52);
            v67 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v39, v38), v29), vsubq_s16(v40, v37), v31), 4uLL);
            v68 = vcgtq_s16(vmulq_s16(v66, v32), vabsq_s16(v67));
            v69 = vmaxq_s16(vminq_s16(vandq_s8(v67, v68), v66), vnegq_s16(v66));
            v70 = vshrq_n_s16(v66, 1uLL);
            v71 = vnegq_s16(v70);
            *(v30 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v64, v36), 0), v33);
            *(v28 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v62, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v36, v38), v37), v69), v70), v71), vandq_s8(v68, v55)), v37)), 0), v33);
            *(v27 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v60, vaddq_s16(v69, v38)), 0), v33);
            *(result + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v61, vsubq_s16(v39, v69)), 0), v33);
            *(v26 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v63, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v41, v39), v40), v69), v70), v71), vandq_s8(v68, v54)), v40)), 0), v33);
            *(v35 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v65, v41), 0), v33);
          }

          else
          {
            v72 = vcgtq_s16(v53, v46);
            v73 = vcgtq_s16(v53, v45);
            v74 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubq_s16(v39, v38), v29), vsubq_s16(v40, v37), v31), 4uLL);
            v75 = vcgtq_s16(vmulq_s16(v50, v32), vabsq_s16(v74));
            v76 = vmaxq_s16(vminq_s16(vandq_s8(v74, v75), v50), vnegq_s16(v50));
            v77 = vshrq_n_s16(v50, 1uLL);
            v78 = vnegq_s16(v77);
            *(v28 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v36, v38), v37), v76), v77), v78), vandq_s8(v75, v73)), v37), 0), v33);
            *(v27 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(v76, v38), 0), v33);
            *(result + 16 * v25) = vminq_s16(vmaxq_s16(vsubq_s16(v39, v76), 0), v33);
            *(v26 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v41, v39), v40), v76), v77), v78), vandq_s8(v75, v72)), v40), 0), v33);
          }
        }
      }

      ++v25;
      _X6 += 16;
    }

    while (v24 != v25);
  }

  _X10 = _X6 + 128 - 8 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 6 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 4 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 2 * a2;
  __asm
  {
    PRFM            #0x10, [X10]
    PRFM            #0x10, [X6,#0x80]
  }

  _X10 = _X6 + 128 + 2 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X9 = _X6 + 128 + 4 * a2;
  __asm { PRFM            #0x10, [X9] }

  _X8 = _X6 + 128 + 6 * a2;
  __asm { PRFM            #0x10, [X8] }

  return result;
}

uint64_t sub_2774E46D0(uint64_t result, uint64_t a2, unsigned __int8 *a3, unsigned __int16 *a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 2 * a2;
    v7 = 4 * a2;
    v8 = 6 * a2;
    v9 = 12 * a2;
    v10 = 10 * a2;
    v11.i64[0] = 0x9000900090009;
    v11.i64[1] = 0x9000900090009;
    v12 = 8 * a2;
    v13.i64[0] = 0x3000300030003;
    v13.i64[1] = 0x3000300030003;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    v15.i64[0] = 0xF000F000F000F000;
    v15.i64[1] = 0xF000F000F000F000;
    v16 = 14 * a2;
    do
    {
      v18 = *a4++;
      v17 = v18;
      if (v18)
      {
        v19 = *(result - 8);
        v20 = *(result + v6 - 8);
        v21 = *(result + v7 - 8);
        v22 = *(result + v8 - 8);
        v23 = *(result + v12 - 8);
        v24 = *(result + v10 - 8);
        v25 = *(result + v9 - 8);
        v26 = *(result + v16 - 8);
        v27 = vtrn1q_s16(v19, v20);
        v28 = vtrn2q_s16(v19, v20);
        v29 = vtrn1q_s16(v21, v22);
        v30 = vtrn2q_s16(v21, v22);
        v31 = vtrn1q_s32(v27, v29);
        v32 = vtrn2q_s32(v27, v29);
        v33 = vtrn1q_s32(v28, v30);
        v34 = vtrn2q_s32(v28, v30);
        v35 = vtrn1q_s16(v23, v24);
        v36 = vtrn2q_s16(v23, v24);
        v37 = vtrn1q_s16(v25, v26);
        v38 = vtrn2q_s16(v25, v26);
        v39 = vtrn1q_s32(v35, v37);
        v40 = vtrn2q_s32(v35, v37);
        v41 = vtrn1q_s32(v36, v38);
        v42 = vtrn2q_s32(v36, v38);
        v43 = vzip2q_s64(v33, v41);
        v44.i64[0] = v33.i64[0];
        v44.i64[1] = v41.i64[0];
        v45 = vzip2q_s64(v31, v39);
        v46 = vzip2q_s64(v32, v40);
        v47.i64[0] = v32.i64[0];
        v47.i64[1] = v40.i64[0];
        v48.i64[0] = v34.i64[0];
        v48.i64[1] = v42.i64[0];
        v49 = vdupq_n_s16(16 * *a3);
        v50 = vabsq_s16(vsubq_s16(vaddq_s16(v44, v48), vaddq_s16(v47, v47)));
        v51 = vabsq_s16(vsubq_s16(vaddq_s16(v46, v45), vaddq_s16(v43, v43)));
        v52 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v50), v50), xmmword_27750D6D0);
        v53 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v51), v51), xmmword_27750D6D0);
        v54 = vcgtq_s16(v49, vaddq_s16(v53, v52));
        if (vaddlvq_u16(v54))
        {
          v31.i64[1] = v39.i64[0];
          v55 = vzip2q_s64(v34, v42);
          v56 = vandq_s8(vshlq_n_s16(vqtbl1q_s8(vdupq_n_s16(v17), xmmword_27750D6C0), 4uLL), v54);
          v57 = vandq_s8(vcgtq_s16(vrhaddq_s16(v56, vshlq_n_s16(v56, 2uLL)), vabdq_s16(v48, v45)), vandq_s8(vcgtq_s16(vshrq_n_u16(v49, 3uLL), vabaq_s16(vabdq_s16(v55, v45), v31, v48)), vcgtq_s16(vrshrq_n_s16(v49, 3uLL), vaddq_s16(v51, v50))));
          v58 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v57), v57), xmmword_27750D6D0);
          v59 = vshrq_n_u16(vsraq_n_u16(v49, v49, 1uLL), 3uLL);
          if (vaddlvq_u16(v58))
          {
            v60 = vcgtq_s16(v59, v53);
            v61 = vcgtq_s16(v59, v52);
            v62 = vaddq_s16(v56, v56);
            v63 = vaddq_s16(v44, v47);
            v64 = vaddq_s16(v48, v45);
            v65 = vaddq_s16(v43, v46);
            v66 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v64, v47), vhaddq_u16(v44, v43)), 2uLL), vaddq_s16(v62, v48)), vsubq_s16(v48, v62));
            v67 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v64, v43), vhaddq_u16(v46, v47)), 2uLL), vaddq_s16(v62, v45)), vsubq_s16(v45, v62));
            v68 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v63, v64), 2uLL), vaddq_s16(v62, v47)), vsubq_s16(v47, v62));
            v69 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v65, v64), 2uLL), vaddq_s16(v62, v43)), vsubq_s16(v43, v62));
            v70 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v31, v44), vhaddq_u16(v63, v64)), 2uLL), vaddq_s16(v62, v44)), vsubq_s16(v44, v62));
            v71 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v46, v55), vhaddq_u16(v65, v64)), 2uLL), vaddq_s16(v62, v46)), vsubq_s16(v46, v62));
            v72 = vbicq_s8(v56, v58);
            v73 = vsubq_s16(v45, v48);
            v74 = vsubq_s16(v43, v47);
            v75 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v73.i8, 0x9000900090009), *v74.i8, 0x3000300030003), 4uLL), vmlsl_high_s16(vmull_high_s16(v73, v11), v74, v13), 4uLL);
            v76 = vcgtq_s16(vmulq_s16(v72, v14), vabsq_s16(v75));
            v77 = vandq_s8(v76, v61);
            v78 = vandq_s8(v76, v60);
            v79 = vmaxq_s16(vminq_s16(vandq_s8(v75, v76), v72), vnegq_s16(v72));
            v80 = vshrq_n_s16(v72, 1uLL);
            v81 = vnegq_s16(v80);
            v82 = vbslq_s8(v58, v69, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v46, v45), v43), v79), v80), v81), v78), v43));
            v83 = vbslq_s8(v58, v71, v46);
            v84 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v70, v44), 0), v15);
            v85 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v68, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v44, v48), v47), v79), v80), v81), v77), v47)), 0), v15);
            v86 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v66, vaddq_s16(v79, v48)), 0), v15);
            v87 = vminq_s16(vmaxq_s16(vbslq_s8(v58, v67, vsubq_s16(v45, v79)), 0), v15);
            v88 = vminq_s16(vmaxq_s16(v82, 0), v15);
            v89 = vminq_s16(vmaxq_s16(v83, 0), v15);
            v90 = vtrn1q_s16(v31, v84);
            v91 = vtrn2q_s16(v31, v84);
            v92 = vtrn1q_s16(v85, v86);
            v93 = vtrn2q_s16(v85, v86);
            v94 = vtrn1q_s32(v90, v92);
            v95 = vtrn2q_s32(v90, v92);
            v96 = vtrn1q_s32(v91, v93);
            v97 = vtrn2q_s32(v91, v93);
            v98 = vtrn1q_s16(v87, v88);
            v99 = vtrn2q_s16(v87, v88);
            v100 = vtrn1q_s16(v89, v55);
            v101 = vtrn2q_s16(v89, v55);
            v102 = vtrn1q_s32(v98, v100);
            v103 = vtrn2q_s32(v98, v100);
            v104 = vtrn1q_s32(v99, v101);
            v105 = vtrn2q_s32(v99, v101);
            v106 = vzip2q_s64(v94, v102);
            v94.i64[1] = v102.i64[0];
            v107 = vzip2q_s64(v96, v104);
            v96.i64[1] = v104.i64[0];
            v108 = vzip2q_s64(v95, v103);
            v95.i64[1] = v103.i64[0];
            v109 = vzip2q_s64(v97, v105);
            v97.i64[1] = v105.i64[0];
            *(result - 8) = v94;
            *(result + v6 - 8) = v96;
            *(result + v7 - 8) = v95;
            *(result + v8 - 8) = v97;
            *(result + v12 - 8) = v106;
            *(result + v10 - 8) = v107;
            *(result + v9 - 8) = v108;
            *(result + v16 - 8) = v109;
          }

          else
          {
            v110 = vcgtq_s16(v59, v53);
            v111 = vcgtq_s16(v59, v52);
            v112 = vsubq_s16(v45, v48);
            v113 = vsubq_s16(v43, v47);
            v114 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v112.i8, 0x9000900090009), *v113.i8, 0x3000300030003), 4uLL), vmlsl_high_s16(vmull_high_s16(v112, v11), v113, v13), 4uLL);
            v115 = vcgtq_s16(vmulq_s16(v56, v14), vabsq_s16(v114));
            v116 = vandq_s8(v115, v111);
            v117 = vandq_s8(v115, v110);
            v118 = vmaxq_s16(vminq_s16(vandq_s8(v114, v115), v56), vnegq_s16(v56));
            v119 = vshrq_n_s16(v56, 1uLL);
            v120 = vnegq_s16(v119);
            v121 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v46, v45), v43), v118), v119), v120), v117), v43);
            v122 = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v44, v48), v47), v118), v119), v120), v116), v47), 0), v15);
            v123 = vminq_s16(vmaxq_s16(vaddq_s16(v118, v48), 0), v15);
            v124 = vminq_s16(vmaxq_s16(vsubq_s16(v45, v118), 0), v15);
            v125 = vminq_s16(vmaxq_s16(v121, 0), v15);
            v126 = vtrn1q_s16(v122, v123);
            v127 = vtrn2q_s16(v122, v123);
            v128 = vtrn1q_s16(v124, v125);
            v129 = vtrn2q_s16(v124, v125);
            v130 = vtrn1q_s32(v126, v128);
            v131 = vtrn2q_s32(v126, v128);
            v132 = vtrn1q_s32(v127, v129);
            v133 = vtrn2q_s32(v127, v129);
            *(result - 4) = v130.i64[0];
            *(result + v6 - 4) = v132.i64[0];
            *(result + v7 - 4) = v131.i64[0];
            *(result + v8 - 4) = v133.i64[0];
            *(result + v12 - 4) = v130.i64[1];
            *(result + v10 - 4) = v132.i64[1];
            *(result + v9 - 4) = v131.i64[1];
            *(result + v16 - 4) = v133.i64[1];
          }
        }
      }

      result += 16 * a2;
      ++a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2774E4C2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (a5 >> 3);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = result + 4 * a2;
    v8.i64[0] = 0x9000900090009;
    v8.i64[1] = 0x9000900090009;
    v9 = result + 2 * a2;
    v10 = result - 2 * a2;
    v11 = result - 6 * a2;
    v12 = result - 4 * a2;
    v13.i64[0] = 0x3000300030003;
    v13.i64[1] = 0x3000300030003;
    v14.i64[0] = 0xA000A000A000ALL;
    v14.i64[1] = 0xA000A000A000ALL;
    v15.i64[0] = 0xF000F000F000F000;
    v15.i64[1] = 0xF000F000F000F000;
    do
    {
      if (*(a4 + 2 * v6))
      {
        v16 = *(v11 + 16 * v6);
        v17 = *(v12 + 16 * v6);
        v18 = *(v10 + 16 * v6);
        v19 = *(result + 16 * v6);
        v20 = *(v9 + 16 * v6);
        v21 = *(v7 + 16 * v6);
        v22 = vdupq_n_s16(16 * *(a3 + v6));
        v23 = vabsq_s16(vsubq_s16(vaddq_s16(v18, v16), vaddq_s16(v17, v17)));
        v24 = vabsq_s16(vsubq_s16(vaddq_s16(v21, v19), vaddq_s16(v20, v20)));
        v25 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v23), v23), xmmword_27750D6D0);
        v26 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v24), v24), xmmword_27750D6D0);
        v27 = vcgtq_s16(v22, vaddq_s16(v26, v25));
        if (vaddlvq_u16(v27))
        {
          v28 = *(result - 8 * a2 + 16 * v6);
          v29 = *(result + 6 * a2 + 16 * v6);
          v30 = vandq_s8(vshlq_n_s16(vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v6)), xmmword_27750D6C0), 4uLL), v27);
          v31 = vandq_s8(vcgtq_s16(vrhaddq_s16(v30, vshlq_n_s16(v30, 2uLL)), vabdq_s16(v18, v19)), vandq_s8(vcgtq_s16(vshrq_n_u16(v22, 3uLL), vabaq_s16(vabdq_s16(v29, v19), v28, v18)), vcgtq_s16(vrshrq_n_s16(v22, 3uLL), vaddq_s16(v24, v23))));
          v32 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v31), v31), xmmword_27750D6D0);
          v33 = vshrq_n_u16(vsraq_n_u16(v22, v22, 1uLL), 3uLL);
          if (vaddlvq_u16(v32))
          {
            v34 = vcgtq_s16(v33, v26);
            v35 = vcgtq_s16(v33, v25);
            v36 = vaddq_s16(v30, v30);
            v37 = vaddq_s16(v17, v16);
            v38 = vaddq_s16(v19, v18);
            v39 = vaddq_s16(v21, v20);
            v40 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v38, v17), vhaddq_u16(v16, v20)), 2uLL), vaddq_s16(v36, v18)), vsubq_s16(v18, v36));
            v41 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v38, v20), vhaddq_u16(v21, v17)), 2uLL), vaddq_s16(v36, v19)), vsubq_s16(v19, v36));
            v42 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v38, v37), 2uLL), vaddq_s16(v36, v17)), vsubq_s16(v17, v36));
            v43 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v39, v38), 2uLL), vaddq_s16(v36, v20)), vsubq_s16(v20, v36));
            v44 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v16, v28), vhaddq_u16(v37, v38)), 2uLL), vaddq_s16(v36, v16)), vsubq_s16(v16, v36));
            v45 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v29, v21), vhaddq_u16(v39, v38)), 2uLL), vaddq_s16(v36, v21)), vsubq_s16(v21, v36));
            v46 = vbicq_s8(v30, v32);
            v47 = vsubq_s16(v19, v18);
            v48 = vsubq_s16(v20, v17);
            v49 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v47.i8, 0x9000900090009), *v48.i8, 0x3000300030003), 4uLL), vmlsl_high_s16(vmull_high_s16(v47, v8), v48, v13), 4uLL);
            v50 = vcgtq_s16(vmulq_s16(v46, v14), vabsq_s16(v49));
            v51 = vandq_s8(v50, v35);
            v52 = vandq_s8(v50, v34);
            v53 = vmaxq_s16(vminq_s16(vandq_s8(v49, v50), v46), vnegq_s16(v46));
            v54 = vshrq_n_s16(v46, 1uLL);
            v55 = vnegq_s16(v54);
            *(v11 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v44, v16), 0), v15);
            *(v12 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v42, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v16, v18), v17), v53), v54), v55), v51), v17)), 0), v15);
            *(v10 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v40, vaddq_s16(v53, v18)), 0), v15);
            *(result + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v41, vsubq_s16(v19, v53)), 0), v15);
            *(v9 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v43, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v21, v19), v20), v53), v54), v55), v52), v20)), 0), v15);
            *(v7 + 16 * v6) = vminq_s16(vmaxq_s16(vbslq_s8(v32, v45, v21), 0), v15);
          }

          else
          {
            v56 = vcgtq_s16(v33, v26);
            v57 = vsubq_s16(v19, v18);
            v58 = vsubq_s16(v20, v17);
            v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v57.i8, 0x9000900090009), *v58.i8, 0x3000300030003), 4uLL), vmlsl_high_s16(vmull_high_s16(v57, v8), v58, v13), 4uLL);
            v60 = vcgtq_s16(vmulq_s16(v30, v14), vabsq_s16(v59));
            v61 = vandq_s8(v60, vcgtq_s16(v33, v25));
            v62 = vandq_s8(v60, v56);
            v63 = vmaxq_s16(vminq_s16(vandq_s8(v59, v60), v30), vnegq_s16(v30));
            v64 = vshrq_n_s16(v30, 1uLL);
            v65 = vnegq_s16(v64);
            *(v12 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v16, v18), v17), v63), v64), v65), v61), v17), 0), v15);
            *(v10 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(v63, v18), 0), v15);
            *(result + 16 * v6) = vminq_s16(vmaxq_s16(vsubq_s16(v19, v63), 0), v15);
            *(v9 + 16 * v6) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v21, v19), v20), v63), v64), v65), v62), v20), 0), v15);
          }
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_2774E5020(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  _X9 = result + 192 - 8 * a2;
  __asm { PRFM            #0x10, [X9] }

  _X9 = result - 6 * a2;
  __asm { PRFM            #0x10, [X9,#0xC0] }

  _X12 = result - 4 * a2;
  __asm { PRFM            #0x10, [X12,#0xC0] }

  _X14 = result - 2 * a2;
  __asm
  {
    PRFM            #0x10, [X14,#0xC0]
    PRFM            #0x10, [X0,#0xC0]
  }

  _X14 = result + 192 + 2 * a2;
  __asm { PRFM            #0x10, [X14] }

  _X14 = result + 192 + 4 * a2;
  __asm { PRFM            #0x10, [X14] }

  _X13 = result + 192 + 6 * a2;
  __asm { PRFM            #0x10, [X13] }

  v24 = (a5 >> 3);
  if (v24 < 1)
  {
    _X6 = result;
  }

  else
  {
    v25 = 0;
    v26 = result + 2 * a2;
    v27 = result - 2 * a2;
    v28 = result - 4 * a2;
    v29 = result - 6 * a2;
    v30.i64[0] = 0x9000900090009;
    v30.i64[1] = 0x9000900090009;
    v31.i64[0] = 0x3000300030003;
    v31.i64[1] = 0x3000300030003;
    v32 = result + 4 * a2;
    v33.i64[0] = 0xA000A000A000ALL;
    v33.i64[1] = 0xA000A000A000ALL;
    v34.i64[0] = 0xF000F000F000F000;
    v34.i64[1] = 0xF000F000F000F000;
    _X6 = result;
    do
    {
      if (*(a4 + 2 * v25))
      {
        v36 = *(v29 + 16 * v25);
        v37 = *(v28 + 16 * v25);
        v38 = *(v27 + 16 * v25);
        v39 = *(result + 16 * v25);
        v40 = *(v26 + 16 * v25);
        v41 = *(v32 + 16 * v25);
        v42 = vdupq_n_s16(16 * *(a3 + v25));
        v43 = vabsq_s16(vsubq_s16(vaddq_s16(v38, v36), vaddq_s16(v37, v37)));
        v44 = vabsq_s16(vsubq_s16(vaddq_s16(v41, v39), vaddq_s16(v40, v40)));
        v45 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v43), v43), xmmword_27750D6D0);
        v46 = vqtbl1q_s8(vaddq_s16(vrev64q_s16(v44), v44), xmmword_27750D6D0);
        v47 = vcgtq_s16(v42, vaddq_s16(v46, v45));
        if (vaddlvq_u16(v47))
        {
          v48 = *(result - 8 * a2 + 16 * v25);
          v49 = *(result + 6 * a2 + 16 * v25);
          v50 = vandq_s8(vshlq_n_s16(vqtbl1q_s8(vdupq_n_s16(*(a4 + 2 * v25)), xmmword_27750D6C0), 4uLL), v47);
          v51 = vandq_s8(vcgtq_s16(vrhaddq_s16(v50, vshlq_n_s16(v50, 2uLL)), vabdq_s16(v38, v39)), vandq_s8(vcgtq_s16(vshrq_n_u16(v42, 3uLL), vabaq_s16(vabdq_s16(v49, v39), v48, v38)), vcgtq_s16(vrshrq_n_s16(v42, 3uLL), vaddq_s16(v44, v43))));
          v52 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v51), v51), xmmword_27750D6D0);
          v53 = vshrq_n_u16(vsraq_n_u16(v42, v42, 1uLL), 3uLL);
          if (vaddlvq_u16(v52))
          {
            v54 = vcgtq_s16(v53, v46);
            v55 = vcgtq_s16(v53, v45);
            v56 = vaddq_s16(v50, v50);
            v57 = vaddq_s16(v37, v36);
            v58 = vaddq_s16(v39, v38);
            v59 = vaddq_s16(v41, v40);
            v60 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v58, v37), vhaddq_u16(v36, v40)), 2uLL), vaddq_s16(v56, v38)), vsubq_s16(v38, v56));
            v61 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v58, v40), vhaddq_u16(v41, v37)), 2uLL), vaddq_s16(v56, v39)), vsubq_s16(v39, v56));
            v62 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v58, v57), 2uLL), vaddq_s16(v56, v37)), vsubq_s16(v37, v56));
            v63 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(v59, v58), 2uLL), vaddq_s16(v56, v40)), vsubq_s16(v40, v56));
            v64 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v36, v48), vhaddq_u16(v57, v58)), 2uLL), vaddq_s16(v56, v36)), vsubq_s16(v36, v56));
            v65 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vaddq_s16(vaddq_s16(v49, v41), vhaddq_u16(v59, v58)), 2uLL), vaddq_s16(v56, v41)), vsubq_s16(v41, v56));
            v66 = vbicq_s8(v50, v52);
            v67 = vsubq_s16(v39, v38);
            v68 = vsubq_s16(v40, v37);
            v69 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v67.i8, 0x9000900090009), *v68.i8, 0x3000300030003), 4uLL), vmlsl_high_s16(vmull_high_s16(v67, v30), v68, v31), 4uLL);
            v70 = vcgtq_s16(vmulq_s16(v66, v33), vabsq_s16(v69));
            v71 = vandq_s8(v70, v55);
            v72 = vandq_s8(v70, v54);
            v73 = vmaxq_s16(vminq_s16(vandq_s8(v69, v70), v66), vnegq_s16(v66));
            v74 = vshrq_n_s16(v66, 1uLL);
            v75 = vnegq_s16(v74);
            *(v29 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v64, v36), 0), v34);
            *(v28 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v62, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v36, v38), v37), v73), v74), v75), v71), v37)), 0), v34);
            *(v27 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v60, vaddq_s16(v73, v38)), 0), v34);
            *(result + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v61, vsubq_s16(v39, v73)), 0), v34);
            *(v26 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v63, vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v41, v39), v40), v73), v74), v75), v72), v40)), 0), v34);
            *(v32 + 16 * v25) = vminq_s16(vmaxq_s16(vbslq_s8(v52, v65, v41), 0), v34);
          }

          else
          {
            v76 = vcgtq_s16(v53, v46);
            v77 = vsubq_s16(v39, v38);
            v78 = vsubq_s16(v40, v37);
            v79 = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v77.i8, 0x9000900090009), *v78.i8, 0x3000300030003), 4uLL), vmlsl_high_s16(vmull_high_s16(v77, v30), v78, v31), 4uLL);
            v80 = vcgtq_s16(vmulq_s16(v50, v33), vabsq_s16(v79));
            v81 = vandq_s8(v80, vcgtq_s16(v53, v45));
            v82 = vandq_s8(v80, v76);
            v83 = vmaxq_s16(vminq_s16(vandq_s8(v79, v80), v50), vnegq_s16(v50));
            v84 = vshrq_n_s16(v50, 1uLL);
            v85 = vnegq_s16(v84);
            *(v28 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubq_s16(vrhaddq_s16(v36, v38), v37), v83), v84), v85), v81), v37), 0), v34);
            *(v27 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(v83, v38), 0), v34);
            *(result + 16 * v25) = vminq_s16(vmaxq_s16(vsubq_s16(v39, v83), 0), v34);
            *(v26 + 16 * v25) = vminq_s16(vmaxq_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubq_s16(vrhaddq_s16(v41, v39), v40), v83), v84), v85), v82), v40), 0), v34);
          }
        }
      }

      ++v25;
      _X6 += 16;
    }

    while (v24 != v25);
  }

  _X10 = _X6 + 128 - 8 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 6 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 4 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X10 = _X6 + 128 - 2 * a2;
  __asm
  {
    PRFM            #0x10, [X10]
    PRFM            #0x10, [X6,#0x80]
  }

  _X10 = _X6 + 128 + 2 * a2;
  __asm { PRFM            #0x10, [X10] }

  _X9 = _X6 + 128 + 4 * a2;
  __asm { PRFM            #0x10, [X9] }

  _X8 = _X6 + 128 + 6 * a2;
  __asm { PRFM            #0x10, [X8] }

  return result;
}

uint64_t sub_2774E54CC(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = a5 >> 3;
  if (a5 >> 3 >= 1)
  {
    v6 = vdupq_n_s16(a3);
    v155 = vshrq_n_s16(v6, 3uLL);
    v156 = vdupq_n_s16(a4);
    v159 = v6;
    v154 = vshrq_n_s16(vsraq_n_s16(v6, v6, 1uLL), 3uLL);
    v7 = (result - 4 * a2);
    v8 = xmmword_27750D6D0;
    do
    {
      v9 = v7;
      v160 = vld2_s8(v9);
      v10 = &v9[a2];
      v11 = v10;
      v162 = vld2_s8(v11);
      v12 = &v11[a2];
      v13 = v12;
      v165 = vld2_s8(v13);
      v14 = &v13[a2];
      v15 = v14;
      v166 = vld2_s8(v15);
      v16 = &v15[a2];
      v17 = v16;
      v167 = vld2_s8(v17);
      v18 = &v17[a2];
      v19 = v18;
      v164 = vld2_s8(v19);
      v20 = &v19[a2];
      v21 = v20;
      v163 = vld2_s8(v21);
      v22 = &v21[a2];
      v161 = vld2_s8(v22);
      v23 = vaddl_u8(v166.val[0], v162.val[0]);
      v24 = vshll_n_u8(v165.val[0], 1uLL);
      v25 = vabdq_u16(v24, v23);
      v26 = vaddl_u8(v163.val[0], v167.val[0]);
      v27 = vshll_n_u8(v164.val[0], 1uLL);
      v28 = vabdq_u16(v27, v26);
      v29 = vqtbl1q_s8(vabaq_u16(vrev64q_s16(v25), v24, v23), v8);
      v30 = vqtbl1q_s8(vabaq_u16(vrev64q_s16(v28), v27, v26), v8);
      v31 = vcgtq_s16(v159, vaddq_s16(v30, v29));
      v32 = vrshrq_n_s16(v159, 3uLL);
      v158 = v160.val[1];
      v157 = v161.val[1];
      if (vaddlvq_u16(v31))
      {
        v33 = vmovl_u8(v165.val[0]);
        v34 = vmovl_u8(v166.val[0]);
        v35 = vmovl_u8(v164.val[0]);
        v36 = vmovl_u8(v167.val[0]);
        v37 = vandq_s8(v156, v31);
        v153 = v32;
        v38 = vandq_s8(vcgtq_s16(vrhaddq_s16(v37, vshlq_n_s16(v37, 2uLL)), vabdl_u8(v166.val[0], v167.val[0])), vandq_s8(vcgtq_s16(v32, vaddq_s16(v28, v25)), vcgtq_s16(v155, vabal_u8(vabdl_u8(v161.val[0], v167.val[0]), v160.val[0], v166.val[0]))));
        v39 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v38), v38), v8);
        v40 = v160.val[0];
        v41 = vcgtq_s16(v154, v30);
        v42 = vcgtq_s16(v154, v29);
        v43 = vbicq_s8(v37, v39);
        v44 = vsubl_u8(v164.val[0], v165.val[0]);
        v45 = vrhadd_u8(v162.val[0], v166.val[0]);
        v46 = vrhadd_u8(v163.val[0], v167.val[0]);
        if (vaddlvq_u16(v39))
        {
          v47 = vmovn_s16(v37);
          v48 = vadd_s8(v47, v47);
          v144 = v45;
          v49 = vaddl_u8(v165.val[0], v162.val[0]);
          v147 = v34;
          v149 = v36;
          v50 = vaddl_u8(v167.val[0], v166.val[0]);
          v51 = vaddl_u8(v163.val[0], v164.val[0]);
          v151 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v50, v33), vhadd_u8(v162.val[0], v164.val[0])), 2uLL), vqadd_u8(v166.val[0], v48)), vqsub_u8(v166.val[0], v48));
          v52 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v50, v35), vhadd_u8(v163.val[0], v165.val[0])), 2uLL), vqadd_u8(v167.val[0], v48)), vqsub_u8(v167.val[0], v48));
          v53 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v50, v49), 2uLL), vqadd_u8(v165.val[0], v48)), vqsub_u8(v165.val[0], v48));
          v54 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v51, v50), 2uLL), vqadd_u8(v164.val[0], v48)), vqsub_u8(v164.val[0], v48));
          *v49.i8 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v162.val[0], v40), vhaddq_u16(v49, v50)), 2uLL), vqadd_u8(v162.val[0], v48)), vqsub_u8(v162.val[0], v48));
          v55 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v161.val[0], v163.val[0]), vhaddq_u16(v51, v50)), 2uLL), vqadd_u8(v163.val[0], v48)), vqsub_u8(v163.val[0], v48));
          v56.i64[0] = 0x9000900090009;
          v56.i64[1] = 0x9000900090009;
          v57 = vmulq_s16(vsubl_u8(v167.val[0], v166.val[0]), v56);
          v56.i64[0] = 0x2000200020002;
          v56.i64[1] = 0x2000200020002;
          v58 = vrshrq_n_s16(vmlaq_s16(v57, v44, v56), 4uLL);
          v56.i64[0] = 0xA000A000A000ALL;
          v56.i64[1] = 0xA000A000A000ALL;
          v59 = vcgtq_s16(vmulq_s16(v43, v56), vabsq_s16(v58));
          v60 = vandq_s8(v59, v42);
          v61 = vandq_s8(v59, v41);
          v62 = vmaxq_s16(vminq_s16(vandq_s8(v58, v59), v43), vnegq_s16(v43));
          v63 = vshrq_n_s16(v43, 1uLL);
          v64 = vnegq_s16(v63);
          v65 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v144, v165.val[0]), v62), v63), v64), v60), v33);
          v66 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(v46, v164.val[0]), v62), v63), v64), v61), v35);
          *v56.i8 = vqmovn_s16(v39);
          v67 = vbsl_s8(*v56.i8, *v49.i8, v162.val[0]);
          v68 = vbsl_s8(*v56.i8, v53, vqmovun_s16(v65));
          v69 = vbsl_s8(*v56.i8, v151, vqmovun_s16(vaddq_s16(v62, v147)));
          v70 = vbsl_s8(*v56.i8, v52, vqmovun_s16(vsubq_s16(v149, v62)));
          v71 = vbsl_s8(*v56.i8, v54, vqmovun_s16(v66));
          v72 = vbsl_s8(*v56.i8, v55, v163.val[0]);
        }

        else
        {
          v73.i64[0] = 0x2000200020002;
          v73.i64[1] = 0x2000200020002;
          v74 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v167.val[0], 0x909090909090909), v166.val[0], 0x909090909090909), v44, v73), 4uLL);
          v75.i64[0] = 0xA000A000A000ALL;
          v75.i64[1] = 0xA000A000A000ALL;
          v76 = vcgtq_s16(vmulq_s16(v43, v75), vabsq_s16(v74));
          v77 = vmaxq_s16(vminq_s16(vandq_s8(v74, v76), v43), vnegq_s16(v43));
          v78 = vaddq_s16(v77, v34);
          v79 = vsubq_s16(v36, v77);
          v80 = vshrq_n_s16(v43, 1uLL);
          v81 = vnegq_s16(v80);
          v82 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v45, v165.val[0]), v77), v80), v81), vandq_s8(v76, v42)), v33);
          v83 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(v46, v164.val[0]), v77), v80), v81), vandq_s8(v76, v41)), v35);
          v68 = vqmovun_s16(v82);
          v69 = vqmovun_s16(v78);
          v70 = vqmovun_s16(v79);
          v71 = vqmovun_s16(v83);
          v67 = v162.val[0];
          v72 = v163.val[0];
        }

        v32 = v153;
      }

      else
      {
        v67 = v162.val[0];
        v68 = v165.val[0];
        v69 = v166.val[0];
        v70 = v167.val[0];
        v71 = v164.val[0];
        v72 = v163.val[0];
      }

      v84 = vaddl_u8(v166.val[1], v162.val[1]);
      v85 = vshll_n_u8(v165.val[1], 1uLL);
      v86 = vabdq_u16(v85, v84);
      v87 = vaddl_u8(v163.val[1], v167.val[1]);
      v88 = vshll_n_u8(v164.val[1], 1uLL);
      v89 = vabdq_u16(v88, v87);
      v90 = vabaq_u16(vrev64q_s16(v86), v85, v84);
      v91 = vabaq_u16(vrev64q_s16(v89), v88, v87);
      v8 = xmmword_27750D6D0;
      v92 = vqtbl1q_s8(v90, xmmword_27750D6D0);
      v93 = vqtbl1q_s8(v91, xmmword_27750D6D0);
      v94 = vcgtq_s16(v159, vaddq_s16(v93, v92));
      if (vaddlvq_u16(v94))
      {
        v148 = v70;
        v152 = v69;
        v95 = vmovl_u8(v165.val[1]);
        v96 = vmovl_u8(v166.val[1]);
        v150 = vmovl_u8(v164.val[1]);
        v146 = vmovl_u8(v167.val[1]);
        v97 = vandq_s8(v156, v94);
        v98 = vandq_s8(vcgtq_s16(vrhaddq_s16(v97, vshlq_n_s16(v97, 2uLL)), vabdl_u8(v166.val[1], v167.val[1])), vandq_s8(vcgtq_s16(v32, vaddq_s16(v89, v86)), vcgtq_s16(v155, vabal_u8(vabdl_u8(v157, v167.val[1]), v158, v166.val[1]))));
        v99 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v98), v98), xmmword_27750D6D0);
        v143 = vcgtq_s16(v154, v92);
        v145 = vcgtq_s16(v154, v93);
        v100 = vbicq_s8(v97, v99);
        v101 = vsubl_u8(v164.val[1], v165.val[1]);
        v102 = vrhadd_u8(v162.val[1], v166.val[1]);
        v103 = vrhadd_u8(v163.val[1], v167.val[1]);
        if (vaddlvq_u16(v99))
        {
          v104 = vmovn_s16(v97);
          v142 = v101;
          v105 = vadd_s8(v104, v104);
          v106 = v103;
          v107 = vaddl_u8(v167.val[1], v166.val[1]);
          v108 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v107, v95), vhadd_u8(v162.val[1], v164.val[1])), 2uLL), vqadd_u8(v166.val[1], v105)), vqsub_u8(v166.val[1], v105));
          v109 = vaddl_u8(v165.val[1], v162.val[1]);
          v110 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v107, v150), vhadd_u8(v163.val[1], v165.val[1])), 2uLL), vqadd_u8(v167.val[1], v105)), vqsub_u8(v167.val[1], v105));
          v111 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v107, v109), 2uLL), vqadd_u8(v165.val[1], v105)), vqsub_u8(v165.val[1], v105));
          v112 = vaddl_u8(v163.val[1], v164.val[1]);
          v113 = vsubl_u8(v102, v165.val[1]);
          v114 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v112, v107), 2uLL), vqadd_u8(v164.val[1], v105)), vqsub_u8(v164.val[1], v105));
          v115 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v162.val[1], v158), vhaddq_u16(v109, v107)), 2uLL), vqadd_u8(v162.val[1], v105)), vqsub_u8(v162.val[1], v105));
          *v112.i8 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(v157, v163.val[1]), vhaddq_u16(v112, v107)), 2uLL), vqadd_u8(v163.val[1], v105)), vqsub_u8(v163.val[1], v105));
          v116.i64[0] = 0x9000900090009;
          v116.i64[1] = 0x9000900090009;
          v117.i64[0] = 0x2000200020002;
          v117.i64[1] = 0x2000200020002;
          v118 = vrshrq_n_s16(vmlaq_s16(vmulq_s16(vsubl_u8(v167.val[1], v166.val[1]), v116), v142, v117), 4uLL);
          v119 = vsubl_u8(v106, v164.val[1]);
          v117.i64[0] = 0xA000A000A000ALL;
          v117.i64[1] = 0xA000A000A000ALL;
          v120 = vcgtq_s16(vmulq_s16(v100, v117), vabsq_s16(v118));
          v121 = vmaxq_s16(vminq_s16(vandq_s8(v118, v120), v100), vnegq_s16(v100));
          v122 = vshrq_n_s16(v100, 1uLL);
          v123 = vnegq_s16(v122);
          v124 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(v113, v121), v122), v123), vandq_s8(v120, v143)), v95);
          v125 = vaddq_s16(v121, v96);
          v126 = vsubq_s16(v146, v121);
          v127 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(v119, v121), v122), v123), vandq_s8(v120, v145)), v150);
          v128 = vqmovn_s16(v99);
          v162.val[1] = vbsl_s8(v128, v115, v162.val[1]);
          v163.val[1] = vbsl_s8(v128, *v112.i8, v163.val[1]);
          *v112.i8 = vqmovun_s16(v125);
          v165.val[1] = vbsl_s8(v128, v111, vqmovun_s16(v124));
          v166.val[1] = vbsl_s8(v128, v108, *v112.i8);
          v167.val[1] = vbsl_s8(v128, v110, vqmovun_s16(v126));
          v164.val[1] = vbsl_s8(v128, v114, vqmovun_s16(v127));
        }

        else
        {
          v129.i64[0] = 0x2000200020002;
          v129.i64[1] = 0x2000200020002;
          v130 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v167.val[1], 0x909090909090909), v166.val[1], 0x909090909090909), v101, v129), 4uLL);
          v131.i64[0] = 0xA000A000A000ALL;
          v131.i64[1] = 0xA000A000A000ALL;
          v132 = vcgtq_s16(vmulq_s16(v100, v131), vabsq_s16(v130));
          v133 = vmaxq_s16(vminq_s16(vandq_s8(v130, v132), v100), vnegq_s16(v100));
          v134 = vshrq_n_s16(v100, 1uLL);
          v135 = vnegq_s16(v134);
          v165.val[1] = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v102, v165.val[1]), v133), v134), v135), vandq_s8(v132, v143)), v95));
          v166.val[1] = vqmovun_s16(vaddq_s16(v133, v96));
          v167.val[1] = vqmovun_s16(vsubq_s16(v146, v133));
          v164.val[1] = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(v103, v164.val[1]), v133), v134), v135), vandq_s8(v132, v145)), v150));
        }

        v8 = xmmword_27750D6D0;
        v69 = v152;
        v70 = v148;
      }

      v136 = v162.val[1];
      vst2_s8(v10, *v67.i8);
      v137 = v165.val[1];
      vst2_s8(v12, *v68.i8);
      v138 = v166.val[1];
      vst2_s8(v14, *v69.i8);
      v139 = v167.val[1];
      vst2_s8(v16, *v70.i8);
      v140 = v164.val[1];
      vst2_s8(v18, *v71.i8);
      v141 = v163.val[1];
      vst2_s8(v20, *v72.i8);
      v7 += 16;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2774E5C54(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = a5 >> 3;
  if (a5 >> 3 >= 1)
  {
    v6 = vdupq_n_s16(a3);
    v188 = vshrq_n_s16(v6, 3uLL);
    v189 = vdupq_n_s16(a4);
    v187 = vshrq_n_s16(vsraq_n_s16(v6, v6, 1uLL), 3uLL);
    v7 = (result - 8);
    v8 = xmmword_27750D6D0;
    v181 = v6;
    do
    {
      v9 = *(v7 + a2);
      v10 = *(v7 + 2 * a2);
      v11 = *(v7 + 3 * a2);
      v12 = *(v7 + 4 * a2);
      v13 = *(v7 + 5 * a2);
      v14 = *(v7 + 6 * a2);
      v15 = *(v7 + 7 * a2);
      v16 = vtrn1q_s8(*v7, v9);
      v17 = vtrn1q_s8(v10, v11);
      v18 = vtrn1q_s8(v12, v13);
      v19 = vtrn1q_s8(v14, v15);
      v20 = vtrn1q_s16(v16, v17);
      v21 = vtrn2q_s16(v16, v17);
      v22 = vtrn1q_s16(v18, v19);
      v23 = vtrn2q_s16(v18, v19);
      v24 = vtrn1q_s32(v20, v22);
      v25 = vtrn2q_s32(v20, v22);
      v26 = vtrn1q_s32(v21, v23);
      v27 = vtrn2q_s32(v21, v23);
      v28 = vextq_s8(v24, v24, 8uLL).u64[0];
      v29 = vextq_s8(v26, v26, 8uLL).u64[0];
      v30 = vextq_s8(v25, v25, 8uLL).u64[0];
      v31 = vextq_s8(v27, v27, 8uLL).u64[0];
      v32 = vaddl_u8(*v26.i8, *v27.i8);
      v33 = vshll_n_u8(*v25.i8, 1uLL);
      v34 = vabdq_u16(v33, v32);
      v35 = vaddl_high_u8(v25, v24);
      v36 = vshll_high_n_u8(v26, 1uLL);
      v37 = vabdq_u16(v36, v35);
      v38 = vqtbl1q_s8(vabaq_u16(vrev64q_s16(v34), v33, v32), v8);
      v39 = vqtbl1q_s8(vabaq_u16(vrev64q_s16(v37), v36, v35), v8);
      v40 = vcgtq_s16(v6, vaddq_s16(v39, v38));
      v41 = vrshrq_n_s16(v6, 3uLL);
      if (vaddlvq_u16(v40))
      {
        v42 = vmovl_u8(*v25.i8);
        v43 = vmovl_u8(*v27.i8);
        v44 = vmovl_high_u8(v26);
        v45 = vmovl_high_u8(v24);
        v46 = vandq_s8(v189, v40);
        v47 = vandq_s8(vcgtq_s16(vrhaddq_s16(v46, vshlq_n_s16(v46, 2uLL)), vabdl_u8(*v27.i8, v28)), vandq_s8(vcgtq_s16(v41, vaddq_s16(v37, v34)), vcgtq_s16(v188, vabal_u8(vabdl_u8(v31, v28), *v24.i8, *v27.i8))));
        v48 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v47), v47), v8);
        v49 = vcgtq_s16(v187, v39);
        v50 = vcgtq_s16(v187, v38);
        v51 = vbicq_s8(v46, v48);
        v52 = vsubl_u8(v29, *v25.i8);
        v183 = vrhadd_u8(*v26.i8, *v27.i8);
        v185 = vrhadd_u8(v30, v28);
        if (vaddlvq_u16(v48))
        {
          v53 = vmovn_s16(v46);
          v54 = vadd_s8(v53, v53);
          v179 = v43;
          v55 = v30;
          v56 = vaddl_u8(*v26.i8, *v25.i8);
          v177 = v45;
          v57 = v31;
          v58 = vaddl_u8(*v27.i8, v28);
          v59 = v29;
          v60 = v41;
          v61 = vaddl_high_u8(v26, v25);
          v178 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v58, v42), vhadd_u8(*v26.i8, v59)), 2uLL), vqadd_u8(*v27.i8, v54)), vqsub_u8(*v27.i8, v54));
          v62 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v58, v44), vhadd_u8(v55, *v25.i8)), 2uLL), vqadd_u8(v28, v54)), vqsub_u8(v28, v54));
          v63 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v56, v58), 2uLL), vqadd_u8(*v25.i8, v54)), vqsub_u8(*v25.i8, v54));
          v64 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v61, v58), 2uLL), vqadd_u8(v59, v54)), vqsub_u8(v59, v54));
          v65 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(*v24.i8, *v26.i8), vhaddq_u16(v56, v58)), 2uLL), vqadd_u8(*v26.i8, v54)), vqsub_u8(*v26.i8, v54));
          v66 = vhaddq_u16(v61, v58);
          v41 = v60;
          v31 = v57;
          v67 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_high_u8(v25, v27), v66), 2uLL), vqadd_u8(v55, v54)), vqsub_u8(v55, v54));
          v68 = vsubl_u8(v28, *v27.i8);
          v69.i64[0] = 0x9000900090009;
          v69.i64[1] = 0x9000900090009;
          v70 = vmulq_s16(v68, v69);
          v69.i64[0] = 0x2000200020002;
          v69.i64[1] = 0x2000200020002;
          v71 = vrshrq_n_s16(vmlaq_s16(v70, v52, v69), 4uLL);
          v69.i64[0] = 0xA000A000A000ALL;
          v27.i64[1] = 0xA000A000A000ALL;
          v72 = vcgtq_s16(vmulq_s16(v51, v27), vabsq_s16(v71));
          v73 = vandq_s8(v72, v49);
          v74 = vmaxq_s16(vminq_s16(vandq_s8(v71, v72), v51), vnegq_s16(v51));
          v75 = vshrq_n_s16(v51, 1uLL);
          v76 = vsubl_u8(v183, *v25.i8);
          v25 = vnegq_s16(v75);
          v77 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(v76, v74), v75), v25), vandq_s8(v72, v50)), v42);
          v78 = vsubl_u8(v185, v59);
          v9 = *(v7 + a2);
          v79 = vaddq_s16(v74, v179);
          v80 = vsubq_s16(v177, v74);
          v81 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(v78, v74), v75), v25), v73), v44);
          *v75.i8 = vqmovn_s16(v48);
          *v26.i8 = vbsl_s8(*v75.i8, v65, *v26.i8);
          *v25.i8 = vbsl_s8(*v75.i8, v63, vqmovun_s16(v77));
          *v27.i8 = vbsl_s8(*v75.i8, v178, vqmovun_s16(v79));
          v28 = vbsl_s8(*v75.i8, v62, vqmovun_s16(v80));
          v29 = vbsl_s8(*v75.i8, v64, vqmovun_s16(v81));
          v8 = xmmword_27750D6D0;
          v6 = v181;
          v30 = vbsl_s8(*v75.i8, v67, v55);
        }

        else
        {
          v82.i64[0] = 0x2000200020002;
          v82.i64[1] = 0x2000200020002;
          v83 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v28, 0x909090909090909), *v27.i8, 0x909090909090909), v52, v82), 4uLL);
          v84.i64[0] = 0xA000A000A000ALL;
          v84.i64[1] = 0xA000A000A000ALL;
          v85 = vcgtq_s16(vmulq_s16(v51, v84), vabsq_s16(v83));
          v86 = vandq_s8(v83, v85);
          v87 = vandq_s8(v85, v50);
          v88 = vandq_s8(v85, v49);
          v89 = vmaxq_s16(vminq_s16(v86, v51), vnegq_s16(v51));
          v90 = vshrq_n_s16(v51, 1uLL);
          v91 = vnegq_s16(v90);
          *v25.i8 = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v183, *v25.i8), v89), v90), v91), v87), v42));
          *v27.i8 = vqmovun_s16(vaddq_s16(v89, v43));
          v28 = vqmovun_s16(vsubq_s16(v45, v89));
          v29 = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(v185, v29), v89), v90), v91), v88), v44));
        }
      }

      v92 = vtrn2q_s8(*v7, v9);
      v93 = vtrn2q_s8(v10, v11);
      v94 = vtrn2q_s8(v12, v13);
      v95 = vtrn2q_s8(v14, v15);
      v96 = vtrn1q_s16(v92, v93);
      v97 = vtrn2q_s16(v92, v93);
      v98 = vtrn1q_s16(v94, v95);
      v99 = vtrn2q_s16(v94, v95);
      v100 = vtrn1q_s32(v96, v98);
      v101 = vtrn2q_s32(v96, v98);
      v102 = vtrn1q_s32(v97, v99);
      v103 = vtrn2q_s32(v97, v99);
      v104 = vextq_s8(v100, v100, 8uLL).u64[0];
      v105 = vextq_s8(v102, v102, 8uLL).u64[0];
      v106 = vextq_s8(v101, v101, 8uLL).u64[0];
      v107 = vextq_s8(v103, v103, 8uLL).u64[0];
      v108 = vaddl_u8(*v102.i8, *v103.i8);
      v109 = vshll_n_u8(*v101.i8, 1uLL);
      v110 = vabdq_u16(v109, v108);
      v111 = vaddl_high_u8(v101, v100);
      v112 = vshll_high_n_u8(v102, 1uLL);
      v113 = vabdq_u16(v112, v111);
      v114 = vqtbl1q_s8(vabaq_u16(vrev64q_s16(v110), v109, v108), v8);
      v115 = vqtbl1q_s8(vabaq_u16(vrev64q_s16(v113), v112, v111), v8);
      v116 = vcgtq_s16(v6, vaddq_s16(v115, v114));
      if (vaddlvq_u16(v116))
      {
        v117 = vmovl_u8(*v101.i8);
        v186 = vmovl_u8(*v103.i8);
        v118 = vmovl_high_u8(v102);
        v182 = v29;
        v184 = vmovl_high_u8(v100);
        v119 = vandq_s8(v189, v116);
        v120 = vandq_s8(vcgtq_s16(vrhaddq_s16(v119, vshlq_n_s16(v119, 2uLL)), vabdl_u8(*v103.i8, v104)), vandq_s8(vcgtq_s16(v41, vaddq_s16(v113, v110)), vcgtq_s16(v188, vabal_u8(vabdl_u8(v107, v104), *v100.i8, *v103.i8))));
        v121 = vqtbl1q_s8(vandq_s8(vrev64q_s16(v120), v120), v8);
        v122 = vcgtq_s16(v187, v115);
        v123 = vcgtq_s16(v187, v114);
        v124 = vbicq_s8(v119, v121);
        v125 = vsubl_u8(v105, *v101.i8);
        v126 = vrhadd_u8(*v102.i8, *v103.i8);
        v127 = vrhadd_u8(v106, v104);
        if (vaddlvq_u16(v121))
        {
          v128 = vmovn_s16(v119);
          v129 = vadd_s8(v128, v128);
          v130 = vaddl_u8(*v102.i8, *v101.i8);
          v131 = vaddl_u8(*v103.i8, v104);
          v132 = vaddl_high_u8(v102, v101);
          v180 = v30;
          v133 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v131, v117), vhadd_u8(*v102.i8, v105)), 2uLL), vqadd_u8(*v103.i8, v129)), vqsub_u8(*v103.i8, v129));
          v134 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddw_u8(vaddq_s16(v131, v118), vhadd_u8(v106, *v101.i8)), 2uLL), vqadd_u8(v104, v129)), vqsub_u8(v104, v129));
          v135 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v130, v131), 2uLL), vqadd_u8(*v101.i8, v129)), vqsub_u8(*v101.i8, v129));
          v136 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(v132, v131), 2uLL), vqadd_u8(v105, v129)), vqsub_u8(v105, v129));
          *v130.i8 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_u8(*v100.i8, *v102.i8), vhaddq_u16(v130, v131)), 2uLL), vqadd_u8(*v102.i8, v129)), vqsub_u8(*v102.i8, v129));
          *v132.i8 = vmax_u8(vmin_u8(vrshrn_n_s16(vaddq_s16(vaddl_high_u8(v101, v103), vhaddq_u16(v132, v131)), 2uLL), vqadd_u8(v106, v129)), vqsub_u8(v106, v129));
          v131.i64[0] = 0x9000900090009;
          v131.i64[1] = 0x9000900090009;
          v137 = vmulq_s16(vsubl_u8(v104, *v103.i8), v131);
          v131.i64[0] = 0x2000200020002;
          v131.i64[1] = 0x2000200020002;
          v138 = vrshrq_n_s16(vmlaq_s16(v137, v125, v131), 4uLL);
          v131.i64[0] = 0xA000A000A000ALL;
          v131.i64[1] = 0xA000A000A000ALL;
          v139 = vcgtq_s16(vmulq_s16(v124, v131), vabsq_s16(v138));
          v140 = vandq_s8(v139, v123);
          v141 = vandq_s8(v139, v122);
          v142 = vmaxq_s16(vminq_s16(vandq_s8(v138, v139), v124), vnegq_s16(v124));
          v143 = vshrq_n_s16(v124, 1uLL);
          v144 = vnegq_s16(v143);
          v145 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v126, *v101.i8), v142), v143), v144), v140), v117);
          v146 = vsubl_u8(v127, v105);
          v147 = vaddq_s16(v142, v186);
          v148 = vsubq_s16(v184, v142);
          v149 = vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(v146, v142), v143), v144), v141), v118);
          *v141.i8 = vqmovn_s16(v121);
          *v102.i8 = vbsl_s8(*v141.i8, *v130.i8, *v102.i8);
          v8 = xmmword_27750D6D0;
          v6 = v181;
          *v101.i8 = vbsl_s8(*v141.i8, v135, vqmovun_s16(v145));
          v150 = vqmovun_s16(v147);
          v30 = v180;
          *v103.i8 = vbsl_s8(*v141.i8, v133, v150);
          v104 = vbsl_s8(*v141.i8, v134, vqmovun_s16(v148));
          v105 = vbsl_s8(*v141.i8, v136, vqmovun_s16(v149));
          v106 = vbsl_s8(*v141.i8, *v132.i8, v106);
        }

        else
        {
          v151.i64[0] = 0x2000200020002;
          v151.i64[1] = 0x2000200020002;
          v152 = vrshrq_n_s16(vmlaq_s16(vmlsl_u8(vmull_u8(v104, 0x909090909090909), *v103.i8, 0x909090909090909), v125, v151), 4uLL);
          v153.i64[0] = 0xA000A000A000ALL;
          v153.i64[1] = 0xA000A000A000ALL;
          v154 = vcgtq_s16(vmulq_s16(v124, v153), vabsq_s16(v152));
          v155 = vandq_s8(v152, v154);
          v156 = vandq_s8(v154, v123);
          v157 = vandq_s8(v154, v122);
          v158 = vmaxq_s16(vminq_s16(v155, v124), vnegq_s16(v124));
          v159 = vshrq_n_s16(v124, 1uLL);
          v160 = vnegq_s16(v159);
          *v101.i8 = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhaddq_s16(vsubl_u8(v126, *v101.i8), v158), v159), v160), v156), v117));
          *v103.i8 = vqmovun_s16(vaddq_s16(v158, v186));
          v104 = vqmovun_s16(vsubq_s16(v184, v158));
          v105 = vqmovun_s16(vaddq_s16(vandq_s8(vmaxq_s16(vminq_s16(vhsubq_s16(vsubl_u8(v127, v105), v158), v159), v160), v157), v118));
        }

        v29 = v182;
      }

      v24.u64[1] = v28;
      v26.u64[1] = v29;
      v25.u64[1] = v30;
      v27.u64[1] = v31;
      v100.u64[1] = v104;
      v102.u64[1] = v105;
      v101.u64[1] = v106;
      v103.u64[1] = v107;
      v161 = vtrn1q_s8(v24, v100);
      v162 = vtrn2q_s8(v24, v100);
      v163 = vtrn1q_s8(v26, v102);
      v164 = vtrn2q_s8(v26, v102);
      v165 = vtrn1q_s8(v25, v101);
      v166 = vtrn2q_s8(v25, v101);
      v167 = vtrn1q_s8(v27, v103);
      v168 = vtrn2q_s8(v27, v103);
      v169 = vtrn1q_s16(v161, v163);
      v170 = vtrn2q_s16(v161, v163);
      v171 = vtrn1q_s16(v162, v164);
      v172 = vtrn2q_s16(v162, v164);
      v173 = vtrn1q_s16(v165, v167);
      v174 = vtrn2q_s16(v165, v167);
      v175 = vtrn1q_s16(v166, v168);
      v176 = vtrn2q_s16(v166, v168);
      *v7 = vtrn1q_s32(v169, v173);
      *(v7 + a2) = vtrn1q_s32(v171, v175);
      *(v7 + 2 * a2) = vtrn1q_s32(v170, v174);
      *(v7 + 3 * a2) = vtrn1q_s32(v172, v176);
      *(v7 + 4 * a2) = vtrn2q_s32(v169, v173);
      *(v7 + 5 * a2) = vtrn2q_s32(v171, v175);
      *(v7 + 6 * a2) = vtrn2q_s32(v170, v174);
      *(v7 + 7 * a2) = vtrn2q_s32(v172, v176);
      v7 = (v7 + 8 * a2);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2774E6448(uint64_t result, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v135 = *MEMORY[0x277D85DE8];
  v7 = *(result + 8);
  v8 = v7[96];
  v9 = v7[97];
  v10 = v7[116];
  v11 = v7[118];
  v12 = v7[117];
  v13 = (v7[121] + v12 * ((a2 + 8) >> 3) + (a3 >> 2));
  v14 = *(result + 660);
  v15 = *(result + 661);
  v16 = (*(result + 32) + 14);
  v17 = vld1q_dup_s16(v16);
  v18 = *(v13 + v12);
  v19 = *(v13 + 2 * v12);
  v20 = *(v13 + 3 * v12);
  v21 = *(v13 + 4 * v12);
  v22 = *(v13 + 5 * v12);
  v23 = *(v13 + 6 * v12);
  v24 = *(v13 + 7 * v12);
  v25 = vtrn1q_s32(*v13, v18);
  v26 = vtrn2q_s32(*v13, v18);
  v27 = vtrn1q_s32(v19, v20);
  v28 = vtrn2q_s32(v19, v20);
  v29 = vzip2q_s64(v25, v27);
  v25.i64[1] = v27.i64[0];
  v30 = vzip2q_s64(v26, v28);
  v26.i64[1] = v28.i64[0];
  v31 = vtrn1q_s32(v21, v22);
  v32 = vtrn2q_s32(v21, v22);
  v33 = vtrn1q_s32(v23, v24);
  v34 = vtrn2q_s32(v23, v24);
  v35 = vzip2q_s64(v31, v33);
  v31.i64[1] = v33.i64[0];
  v36 = vzip2q_s64(v32, v34);
  v32.i64[1] = v34.i64[0];
  v37 = a3 >> 3;
  v38 = v9 + 2 * v8 * v37;
  v133 = v25;
  v134[0] = v31;
  v134[1] = v26;
  v134[2] = v32;
  v134[3] = v29;
  v134[4] = v35;
  v134[5] = v30;
  v134[6] = v36;
  _X11 = &v13->i8[8 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[9 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[10 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[11 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[12 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[13 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[14 * v12];
  __asm { PRFM            #0, [X11] }

  _X9 = v13[v12].i64 - v12;
  __asm { PRFM            #0, [X9] }

  if (a3)
  {
    _X9 = (v38 + 2 * (a2 >> 3) - 2 * v8);
    v60 = *_X9;
    _X9 += 2;
    v61 = vshrq_n_s16(v60, 2uLL);
    __asm { PRFM            #0, [X9] }
  }

  else
  {
    v61 = 0uLL;
  }

  v63 = (a5 >> 3);
  if (v63 >= 1)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = v11 + v10 * v37;
    v68 = v15 - 20;
    v69 = v15 - 16;
    v70 = a2 >> 2;
    v71 = vdupq_n_s8(v14 - 16);
    v72 = vdupq_n_s8(v68);
    v73 = vdupq_n_s8(v69);
    v74 = 4 * v8;
    v75 = 2 * v10;
    v76 = v11 + v10 + v10 * v37;
    result = 2 * (a2 >> 3);
    v77 = v9 + v8 * (2 * v37 + 2);
    v78 = 480;
    v79.i64[0] = 0x2323232323232323;
    v79.i64[1] = 0x2323232323232323;
    v80 = xmmword_27750D6E0;
    v81 = xmmword_27750D6F0;
    v82 = xmmword_27750D700;
    v83 = xmmword_27750D710;
    v84 = xmmword_27750D720;
    v85 = xmmword_27750D730;
    v86 = 832;
    v87 = 560;
    v88.i64[0] = 0x101010101010101;
    v88.i64[1] = 0x101010101010101;
    v89.i64[0] = 0x3333333333333333;
    v89.i64[1] = 0x3333333333333333;
    do
    {
      _X20 = v38 + result;
      _X21 = v77 + result;
      v92 = *&vshrq_n_s16(*(v38 + result), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      *v6.i8 = vraddhn_s16(v61, v92);
      v93 = *&vshrq_n_s16(*(v38 + result + 2), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      v61 = *&vshrq_n_s16(*(v77 + result), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      v94 = *&vshrq_n_s16(*(v77 + result + 2), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      v95 = vzip1q_s8(v6, v6);
      v96 = vraddhn_high_s16(*v6.i8, v92, v61);
      *&v93 = vraddhn_s16(v92, v93);
      *&v94 = vraddhn_s16(v61, v94);
      v97 = vzip1q_s8(v93, v94);
      __asm
      {
        PRFM            #0, [X20,#0x20]
        PRFM            #0, [X21,#0x20]
      }

      *(a6 + v86) = vqtbl3q_s8(*&v82, vminq_s8(vaddq_s8(v96, v71), v79));
      v100 = vqtbl3q_s8(*&v82, vminq_s8(vaddq_s8(v97, v71), v79));
      *(a6 + v66 + 776) = v100.i16[1];
      *(a6 + v66 + 784) = v100.i16[2];
      *(a6 + v66 + 792) = v100.i16[3];
      *(a6 + v66 + 800) = v100.i16[4];
      *(a6 + v66 + 808) = v100.i16[5];
      *(a6 + v66 + 816) = v100.i16[6];
      v101 = vaddq_s8(v96, v72);
      *(a6 + v66 + 824) = v100.i16[7];
      *(a6 + v66 + 768) = v100.i16[0];
      v102 = vzip1q_s8(v101, v101);
      v103 = vzip2q_s8(v101, v101);
      _X19 = v67 + v70 + 16;
      v105 = *(v67 + v70);
      v106 = vaddq_s8(vaddq_s8(v105, v105), v102);
      _X20 = v76 + v70 + 16;
      v108 = *(v76 + v70);
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0, [X20]
      }

      v111 = (a6 + v64 * 16);
      v112 = *(&v133 + v64 * 16);
      v113 = v134[v64];
      v114 = vaddq_s8(v97, v72);
      v111[8] = vbicq_s8(vqtbl3q_s8(*&v85, vminq_s8(v106, v79)), vceqzq_s8(v105));
      v111[9] = vbicq_s8(vqtbl3q_s8(*&v85, vminq_s8(vaddq_s8(vaddq_s8(v108, v108), v103), v79)), vceqzq_s8(v108));
      v115 = vqtbl3q_s8(*&v85, vminq_s8(vaddq_s8(vminq_s8(vaddq_s8(vzip2q_s8(v97, v97), v17), v89), v73), v79));
      v116 = vcgtq_u8(v113, v88);
      v117 = vbicq_s8(vqtbl3q_s8(*&v85, vminq_s8(vaddq_s8(vaddq_s8(v112, v112), vzip1q_s8(v114, v114)), v79)), vceqzq_s8(v112));
      v118 = vandq_s8(vzip1q_s16(v115, v115), vmovl_s8(*v116.i8));
      v119 = vbicq_s8(vqtbl3q_s8(*&v85, vminq_s8(vaddq_s8(vaddq_s8(v113, v113), vzip2q_s8(v114, v114)), v79)), vceqzq_s8(v113));
      *&v92 = vraddhn_s16(v92, v61);
      v120 = (a6 + v65);
      *v120 = v117.i32[0];
      *(a6 + v65 + 16) = v117.i32[1];
      *(a6 + v65 + 32) = v117.i32[2];
      *(a6 + v65 + 48) = v117.i32[3];
      v120[16] = v119.i32[0];
      v121 = vandq_s8(vzip2q_s16(v115, v115), vmovl_high_s8(v116));
      v122 = (a6 + v78);
      *(a6 + v65 + 80) = v119.i32[1];
      *(a6 + v65 + 96) = v119.i32[2];
      v123 = vqtbl3q_s8(*&v85, vminq_s8(vaddq_s8(vminq_s8(vaddq_s8(vzip1q_s8(v97, v97), v17), v89), v73), v79));
      v124 = vcgtq_u8(v112, v88);
      *(a6 + v65 + 112) = v119.i32[3];
      v125 = vandq_s8(vzip1q_s16(v123, v123), vmovl_s8(*v124.i8));
      v126 = vandq_s8(vzip2q_s16(v123, v123), vmovl_high_s8(v124));
      *(a6 + v78 - 64) = v118.i64[1];
      *(v122 - 12) = v118.i64[0];
      v127 = vqtbl3q_s8(*&v85, vminq_s8(vaddq_s8(vminq_s8(vaddq_s8(v95, v17), v89), v73), v79));
      v128 = vcgtq_u8(v105, v88);
      *(v122 - 4) = v121.i64[0];
      v129 = vmovl_s8(*v128.i8);
      v6 = vandq_s8(vzip2q_s16(v127, v127), vmovl_high_s8(v128));
      *(a6 + v78 - 192) = v125.i64[1];
      v130 = (a6 + v87);
      *v122 = v121.i64[1];
      v131 = vqtbl3q_s8(*&v85, vminq_s8(vaddq_s8(vminq_s8(vaddq_s8(vzip1q_s8(v92, v92), v17), v89), v73), v79));
      *(v122 - 28) = v125.i64[0];
      v132 = vcgtq_u8(v108, v88);
      *(v122 - 20) = v126.i64[0];
      v66 += 2;
      v67 += v75;
      v76 += v75;
      v38 += v74;
      *(a6 + v78 - 128) = v126.i64[1];
      v77 += v74;
      v78 += 8;
      v86 += 16;
      v65 += 4;
      v130[-3] = vandq_s8(vzip1q_s16(v127, v127), v129);
      v130[-2] = v6;
      v130[-1] = vandq_s8(vzip1q_s16(v131, v131), vmovl_s8(*v132.i8));
      *v130 = vandq_s8(vzip2q_s16(v131, v131), vmovl_high_s8(v132));
      v87 += 64;
      v64 += 2;
    }

    while (v66 < v63);
  }

  return result;
}

uint64_t sub_2774E6990(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v131 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  v8 = v7[96];
  v9 = v7[97];
  v10 = v7[116];
  v11 = v7[118];
  v12 = v7[117];
  v13 = (v7[121] + v12 * ((a2 + 8) >> 3) + (a3 >> 2));
  v14 = *(a1 + 660);
  v15 = *(a1 + 661);
  v16 = (*(a1 + 32) + 14);
  v17 = vld1q_dup_s16(v16);
  v18 = *(v13 + v12);
  v19 = *(v13 + 2 * v12);
  v20 = *(v13 + 3 * v12);
  v21 = *(v13 + 4 * v12);
  v22 = *(v13 + 5 * v12);
  v23 = *(v13 + 6 * v12);
  v24 = *(v13 + 7 * v12);
  v25 = vtrn1q_s32(*v13, v18);
  v26 = vtrn2q_s32(*v13, v18);
  v27 = vtrn1q_s32(v19, v20);
  v28 = vtrn2q_s32(v19, v20);
  v29 = vzip2q_s64(v25, v27);
  v25.i64[1] = v27.i64[0];
  v30 = vzip2q_s64(v26, v28);
  v26.i64[1] = v28.i64[0];
  v31 = vtrn1q_s32(v21, v22);
  v32 = vtrn2q_s32(v21, v22);
  v33 = vtrn1q_s32(v23, v24);
  v34 = vtrn2q_s32(v23, v24);
  v35 = vzip2q_s64(v31, v33);
  v31.i64[1] = v33.i64[0];
  v36 = vzip2q_s64(v32, v34);
  v32.i64[1] = v34.i64[0];
  result = a3 >> 3;
  v38 = v9 + 2 * v8 * result;
  v130[0] = v25;
  v130[1] = v31;
  v130[2] = v26;
  v130[3] = v32;
  v130[4] = v29;
  v130[5] = v35;
  v130[6] = v30;
  v130[7] = v36;
  _X11 = &v13->i8[8 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[9 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[10 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[11 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[12 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[13 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[14 * v12];
  __asm { PRFM            #0, [X11] }

  _X9 = v13[v12].i64 - v12;
  __asm { PRFM            #0, [X9] }

  if (a3)
  {
    _X9 = (v38 + 2 * (a2 >> 3) - 2 * v8);
    v60 = *_X9;
    _X9 += 2;
    v61 = vshrq_n_s16(v60, 2uLL);
    __asm { PRFM            #0, [X9] }
  }

  else
  {
    v61 = 0uLL;
  }

  v63 = (a5 >> 3);
  if (v63 >= 1)
  {
    v64 = 0;
    v65 = 0;
    v66 = v11 + v10 * result;
    v67 = v15 - 20;
    v68 = v15 - 16;
    v69 = a2 >> 2;
    v70 = vdupq_n_s8(v14 - 16);
    v71 = vdupq_n_s8(v67);
    v72 = vdupq_n_s8(v68);
    v73 = 4 * v8;
    v74 = 2 * v10;
    v75 = v11 + v10 + v10 * result;
    v76 = 2 * (a2 >> 3);
    result = v9 + v8 * (2 * result + 2);
    v77 = 32;
    v78 = 256;
    v79 = 832;
    v80.i64[0] = 0x2323232323232323;
    v80.i64[1] = 0x2323232323232323;
    v81 = xmmword_27750D6E0;
    v82 = xmmword_27750D6F0;
    v83 = xmmword_27750D700;
    v84.i64[0] = 0x101010101010101;
    v84.i64[1] = 0x101010101010101;
    v85 = xmmword_27750D710;
    v86 = xmmword_27750D720;
    v87 = xmmword_27750D730;
    v88.i64[0] = 0x2B2B2B2B2B2B2B2BLL;
    v88.i64[1] = 0x2B2B2B2B2B2B2B2BLL;
    v89.i64[0] = 0xFAFAFAFAFAFAFAFALL;
    v89.i64[1] = 0xFAFAFAFAFAFAFAFALL;
    v90.i64[0] = 0xE2E2E2E2E2E2E2E2;
    v90.i64[1] = 0xE2E2E2E2E2E2E2E2;
    v91.i64[0] = 0xE0E0E0E0E0E0E0ELL;
    v91.i64[1] = 0xE0E0E0E0E0E0E0ELL;
    do
    {
      _X7 = v38 + v76;
      v93 = *&vshrq_n_s16(*(v38 + v76), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      _X19 = result + v76;
      v95 = *&vshrq_n_s16(*(v38 + v76 + 2), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      *v6.i8 = vraddhn_s16(v61, v93);
      v61 = *&vshrq_n_s16(*(result + v76), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      v96 = *&vshrq_n_s16(*(result + v76 + 2), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      v97 = vzip1q_s8(v6, v6);
      *&v95 = vraddhn_s16(v93, v95);
      *&v96 = vraddhn_s16(v61, v96);
      __asm { PRFM            #0, [X7,#0x20] }

      v99 = vraddhn_high_s16(*v6.i8, v93, v61);
      __asm { PRFM            #0, [X19,#0x20] }

      *(a6 + v79) = vqtbl3q_s8(*&v83, vminq_s8(vaddq_s8(v99, v70), v80));
      v101 = vzip1q_s8(v95, v96);
      v102 = vqtbl3q_s8(*&v83, vminq_s8(vaddq_s8(v101, v70), v80));
      *(a6 + v65 + 768) = v102.i16[0];
      *(a6 + v65 + 776) = v102.i16[1];
      *(a6 + v65 + 784) = v102.i16[2];
      *(a6 + v65 + 792) = v102.i16[3];
      *(a6 + v65 + 800) = v102.i16[4];
      *(a6 + v65 + 808) = v102.i16[5];
      *(a6 + v65 + 816) = v102.i16[6];
      *(a6 + v65 + 824) = v102.i16[7];
      _X6 = v66 + v69 + 16;
      v104 = *(v66 + v69);
      _X7 = v75 + v69 + 16;
      __asm { PRFM            #0, [X6] }

      v107 = vaddq_s8(v99, v71);
      v108 = vzip1q_s8(v107, v107);
      __asm { PRFM            #0, [X7] }

      v110 = v130[v77 - 32];
      v111 = vaddq_s8(v101, v71);
      v112 = v130[v77 - 31];
      v113 = vbicq_s8(vqtbl3q_s8(*&v87, vminq_s8(vaddq_s8(vaddq_s8(*(v75 + v69), *(v75 + v69)), vzip2q_s8(v107, v107)), v80)), vceqzq_s8(*(v75 + v69)));
      v114 = vbicq_s8(vqtbl3q_s8(*&v87, vminq_s8(vaddq_s8(vaddq_s8(v110, v110), vzip1q_s8(v111, v111)), v80)), vceqzq_s8(v110));
      v115 = vbicq_s8(vqtbl3q_s8(*&v87, vminq_s8(vaddq_s8(vaddq_s8(v112, v112), vzip2q_s8(v111, v111)), v80)), vceqzq_s8(v112));
      v116 = (a6 + 16 * v65);
      v116[8] = vbicq_s8(vqtbl3q_s8(*&v87, vminq_s8(vaddq_s8(vaddq_s8(v104, v104), v108), v80)), vceqzq_s8(v104));
      v116[9] = v113;
      v117 = (a6 + v64);
      *v117 = v114.i32[0];
      *(a6 + v64 + 16) = v114.i32[1];
      *(a6 + v64 + 32) = v114.i32[2];
      *(a6 + v64 + 48) = v114.i32[3];
      v117[16] = v115.i32[0];
      *(a6 + v64 + 80) = v115.i32[1];
      v118 = vaddq_s8(vqtbl1q_s8(v101, xmmword_27750D740), v17);
      *(a6 + v64 + 96) = v115.i32[2];
      v119 = vaddq_s8(vandq_s8(vcgtq_s8(v118, v88), v89), v118);
      *(a6 + v64 + 112) = v115.i32[3];
      v120 = vqtbl3q_s8(*&v87, vminq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v91, vaddq_s8(v118, v90)), vqtbl1q_s8(xmmword_27750D750, vaddq_s8(v119, v90)), v119), v72), v80));
      v121 = vcgtq_u8(vuzp2q_s32(v110, v112), v84);
      v122 = (a6 + v78);
      v123 = (a6 + v78 + 96);
      v124 = vaddq_s8(v97, v17);
      v125 = vaddq_s8(vandq_s8(vcgtq_s8(v124, v88), v89), v124);
      v6 = vandq_s8(vzip1q_s16(v120, v120), vmovl_s8(*v121.i8));
      v126 = vandq_s8(vzip2q_s16(v120, v120), vmovl_high_s8(v121));
      v127 = vqtbl3q_s8(*&v87, vminq_s8(vaddq_s8(vbslq_s8(vcgtq_u8(v91, vaddq_s8(v124, v90)), vqtbl1q_s8(xmmword_27750D750, vaddq_s8(v125, v90)), v125), v72), v80));
      *v122 = v6.i64[0];
      v128 = vcgtq_u8(v104, v84);
      *(a6 + v78 + 32) = v6.i64[1];
      v129 = (a6 + v77 * 16);
      v65 += 2;
      v66 += v74;
      v77 += 2;
      v122[8] = v126.i64[0];
      v75 += v74;
      v78 += 8;
      v38 += v73;
      result += v73;
      *v123 = v126.i64[1];
      *v129 = vandq_s8(vzip1q_s16(v127, v127), vmovl_s8(*v128.i8));
      v129[1] = vandq_s8(vzip2q_s16(v127, v127), vmovl_high_s8(v128));
      v79 += 16;
      v64 += 4;
    }

    while (v65 < v63);
  }

  return result;
}

uint64_t sub_2774E6EA4(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v134 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  v8 = v7[96];
  v9 = v7[97];
  v10 = v7[116];
  v11 = v7[118];
  v12 = v7[117];
  v13 = (v7[121] + v12 * ((a2 + 8) >> 3) + (a3 >> 2));
  v14 = *(a1 + 660);
  v15 = *(a1 + 661);
  v16 = (*(a1 + 32) + 14);
  v17 = vld1q_dup_s16(v16);
  v18 = *(v13 + v12);
  v19 = *(v13 + 2 * v12);
  v20 = *(v13 + 3 * v12);
  v21 = *(v13 + 4 * v12);
  v22 = *(v13 + 5 * v12);
  v23 = *(v13 + 6 * v12);
  v24 = *(v13 + 7 * v12);
  v25 = vtrn1q_s32(*v13, v18);
  v26 = vtrn2q_s32(*v13, v18);
  v27 = vtrn1q_s32(v19, v20);
  v28 = vtrn2q_s32(v19, v20);
  v29 = vzip2q_s64(v25, v27);
  v25.i64[1] = v27.i64[0];
  v30 = vzip2q_s64(v26, v28);
  v26.i64[1] = v28.i64[0];
  v31 = vtrn1q_s32(v21, v22);
  v32 = vtrn2q_s32(v21, v22);
  v33 = vtrn1q_s32(v23, v24);
  v34 = vtrn2q_s32(v23, v24);
  v35 = vzip2q_s64(v31, v33);
  v31.i64[1] = v33.i64[0];
  v36 = vzip2q_s64(v32, v34);
  v32.i64[1] = v34.i64[0];
  result = a3 >> 3;
  v38 = v9 + 2 * v8 * result;
  v132 = v25;
  v133[0] = v31;
  v133[1] = v26;
  v133[2] = v32;
  v133[3] = v29;
  v133[4] = v35;
  v133[5] = v30;
  v133[6] = v36;
  _X11 = &v13->i8[8 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[9 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[10 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[11 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[12 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[13 * v12];
  __asm { PRFM            #0, [X11] }

  _X11 = &v13->i8[14 * v12];
  __asm { PRFM            #0, [X11] }

  _X9 = v13[v12].i64 - v12;
  __asm { PRFM            #0, [X9] }

  if (a3)
  {
    _X9 = (v38 + 2 * (a2 >> 3) - 2 * v8);
    v60 = *_X9;
    _X9 += 2;
    v61 = vshrq_n_s16(v60, 2uLL);
    __asm { PRFM            #0, [X9] }
  }

  else
  {
    v61 = 0uLL;
  }

  v63 = (a5 >> 3);
  if (v63 >= 1)
  {
    v64 = 0;
    v65 = 0;
    v66 = v11 + v10 * result;
    v67 = v15 - 20;
    v68 = v15 - 16;
    v69 = vdupq_n_s8(v14 - 16);
    v70 = a2 >> 2;
    v71 = vdupq_n_s8(v67);
    v72 = vdupq_n_s8(v68);
    v73 = 4 * v8;
    v74 = 2 * v10;
    v75 = v11 + v10 + v10 * result;
    v76 = 2 * (a2 >> 3);
    result = v9 + v8 * (2 * result + 2);
    v77 = v133;
    v78 = 256;
    v79.i64[0] = 0x2323232323232323;
    v79.i64[1] = 0x2323232323232323;
    v80 = xmmword_27750D6E0;
    v81 = xmmword_27750D6F0;
    v82 = xmmword_27750D700;
    v83 = xmmword_27750D710;
    v84 = xmmword_27750D720;
    v85 = 832;
    v86 = xmmword_27750D730;
    v87 = 560;
    v88 = 128;
    v89.i64[0] = 0x101010101010101;
    v89.i64[1] = 0x101010101010101;
    v90.i64[0] = 0x3333333333333333;
    v90.i64[1] = 0x3333333333333333;
    do
    {
      _X19 = v38 + v76;
      v92 = *&vshrq_n_s16(*(v38 + v76), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      _X20 = result + v76;
      v94 = *(result + v76);
      v95 = *&vshrq_n_s16(*(v38 + v76 + 2), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      *v6.i8 = vraddhn_s16(v61, v92);
      v61 = *&vshrq_n_s16(v94, 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80);
      *v94.i8 = vraddhn_s16(v92, v61);
      v96 = vzip1q_s8(v6, v6);
      v97 = vraddhn_high_s16(*v6.i8, v92, v61);
      *&v92 = vraddhn_s16(v92, v95);
      *&v95 = vraddhn_s16(v61, (*&vshrq_n_s16(*(result + v76 + 2), 2uLL) & __PAIR128__(0xFF80FF80FF80FF80, 0xFF80FF80FF80FF80)));
      v98 = vzip1q_s8(v92, v95);
      __asm
      {
        PRFM            #0, [X19,#0x20]
        PRFM            #0, [X20,#0x20]
      }

      v101 = vqtbl3q_s8(*&v82, vminq_s8(vaddq_s8(v98, v69), v79));
      *(a6 + v85) = vqtbl3q_s8(*&v82, vminq_s8(vaddq_s8(v97, v69), v79));
      *(a6 + v65 + 776) = v101.i16[1];
      *(a6 + v65 + 784) = v101.i16[2];
      *(a6 + v65 + 792) = v101.i16[3];
      *(a6 + v65 + 800) = v101.i16[4];
      *(a6 + v65 + 808) = v101.i16[5];
      *(a6 + v65 + 816) = v101.i16[6];
      *(a6 + v65 + 824) = v101.i16[7];
      *(a6 + v65 + 768) = v101.i16[0];
      v102 = vaddq_s8(v97, v71);
      _X7 = v66 + v70 + 16;
      v104 = *(v66 + v70);
      v105 = vzip1q_s8(v102, v102);
      v106 = vzip2q_s8(v102, v102);
      _X19 = v75 + v70 + 16;
      v108 = *(v75 + v70);
      __asm
      {
        PRFM            #0, [X7]
        PRFM            #0, [X19]
      }

      v112 = v77[-1];
      v111 = *v77;
      v113 = vaddq_s8(v98, v71);
      v114 = vbicq_s8(vqtbl3q_s8(*&v86, vminq_s8(vaddq_s8(vaddq_s8(v112, v112), vzip1q_s8(v113, v113)), v79)), vceqzq_s8(v112));
      v115 = vbicq_s8(vqtbl3q_s8(*&v86, vminq_s8(vaddq_s8(vaddq_s8(v111, v111), vzip2q_s8(v113, v113)), v79)), vceqzq_s8(*v77));
      v116 = (a6 + v88);
      v117 = (a6 + v64);
      *v116 = vbicq_s8(vqtbl3q_s8(*&v86, vminq_s8(vaddq_s8(vaddq_s8(v104, v104), v105), v79)), vceqzq_s8(v104));
      v116[1] = vbicq_s8(vqtbl3q_s8(*&v86, vminq_s8(vaddq_s8(vaddq_s8(v108, v108), v106), v79)), vceqzq_s8(v108));
      *v117 = v114.i32[0];
      *(a6 + v64 + 16) = v114.i32[1];
      v118 = vqtbl3q_s8(*&v86, vminq_s8(vaddq_s8(vminq_s8(vaddq_s8(vqtbl1q_s8(v98, xmmword_27750D740), v17), v90), v72), v79));
      *(a6 + v64 + 32) = v114.i32[2];
      v119 = vcgtq_u8(vuzp2q_s32(v112, v111), v89);
      v120 = vandq_s8(vzip1q_s16(v118, v118), vmovl_s8(*v119.i8));
      *(a6 + v64 + 48) = v114.i32[3];
      v121 = vandq_s8(vzip2q_s16(v118, v118), vmovl_high_s8(v119));
      v122 = (a6 + v78);
      v123 = (a6 + v78 + 96);
      v117[16] = v115.i32[0];
      v124 = vqtbl3q_s8(*&v86, vminq_s8(vaddq_s8(vminq_s8(vaddq_s8(v96, v17), v90), v72), v79));
      *(a6 + v64 + 80) = v115.i32[1];
      v125 = vzip1q_s16(v124, v124);
      v126 = vcgtq_u8(v104, v89);
      v127 = vmovl_s8(*v126.i8);
      *(a6 + v64 + 96) = v115.i32[2];
      v128 = vandq_s8(vzip2q_s16(v124, v124), vmovl_high_s8(v126));
      v129 = (a6 + v87);
      *(a6 + v64 + 112) = v115.i32[3];
      *(a6 + v78 + 32) = v120.i64[1];
      v130 = vqtbl3q_s8(*&v86, vminq_s8(vaddq_s8(vminq_s8(vaddq_s8(vzip1q_s8(v94, v94), v17), v90), v72), v79));
      v131 = vcgtq_u8(v108, v89);
      *v122 = v120.i64[0];
      v6 = vandq_s8(vzip1q_s16(v130, v130), vmovl_s8(*v131.i8));
      v65 += 2;
      v122[8] = v121.i64[0];
      v66 += v74;
      v75 += v74;
      v38 += v73;
      v78 += 8;
      *v123 = v121.i64[1];
      result += v73;
      v85 += 16;
      v64 += 4;
      v87 += 64;
      v129[-3] = vandq_s8(v125, v127);
      v129[-2] = v128;
      v129[-1] = v6;
      *v129 = vandq_s8(vzip2q_s16(v130, v130), vmovl_high_s8(v131));
      v77 += 2;
      v88 += 32;
    }

    while (v65 < v63);
  }

  return result;
}

char *sub_2774E73B0(char *result, uint64_t a2, unsigned int *a3, int a4)
{
  if ((a4 & 0xFFFFFFF8) >= 1)
  {
    v5 = 0;
    v6 = 2 * a2;
    v7 = 3 * a2;
    v8 = 4 * a2;
    v9 = 6 * a2;
    v10 = 7 * a2;
    v11.i64[0] = 0x101010101010101;
    v11.i64[1] = 0x101010101010101;
    v12 = 5 * a2;
    do
    {
      if (*a3)
      {
        v13.i64[0] = *(result - 4);
        v14.i64[0] = *&result[a2 - 4];
        v15.i64[0] = *&result[v6 - 4];
        v16.i64[0] = *&result[v7 - 4];
        v13.i64[1] = *&result[v8 - 4];
        v14.i64[1] = *&result[v12 - 4];
        v15.i64[1] = *&result[v9 - 4];
        v16.i64[1] = *&result[v10 - 4];
        v17 = vtrn1q_s16(v13, v14);
        v18 = vtrn2q_s16(v13, v14);
        v19 = vtrn1q_s16(v15, v16);
        v20 = vtrn2q_s16(v15, v16);
        v21 = vtrn1q_s32(v17, v19);
        v22 = vtrn2q_s32(v17, v19);
        v23 = vtrn1q_s32(v18, v20);
        v24 = vtrn2q_s32(v18, v20);
        v25 = vqtbl1q_s8(vdupq_n_s32(*a3), xmmword_27750D4B0);
        v26 = vmaxq_s8(vminq_s8(vqaddq_s8(vhsubq_u8(v22, v23), vrhaddq_s8(vshrq_n_s8(vhsubq_u8(v21, v24), 1uLL), vandq_s8(veorq_s8(v22, v23), v11))), v25), vnegq_s8(v25));
        v27 = vsqaddq_u8(v23, v26);
        v28 = vsqaddq_u8(v22, vnegq_s8(v26));
        v29 = vzip1q_s16(v27, v28);
        *(result - 2) = v29.i32[0];
        *&result[a2 - 2] = v29.i32[1];
        *&result[v6 - 2] = v29.i32[2];
        *&result[v7 - 2] = v29.i32[3];
        v30 = vzip2q_s16(v27, v28);
        *&result[v8 - 2] = v30.i32[0];
        *&result[v12 - 2] = v30.i32[1];
        *&result[v9 - 2] = v30.i32[2];
        *&result[v10 - 2] = v30.i32[3];
      }

      v5 += 8;
      result += 8 * a2;
      ++a3;
    }

    while (v5 < (a4 & 0xFFFFFFF8));
  }

  v31 = a4 & 7;
  if (v31)
  {

    return sub_277444E30(result, a2, a3, v31);
  }

  return result;
}

char *sub_2774E7520(char *result, uint64_t a2, uint64_t *a3, int a4)
{
  if ((a4 & 0xFFFFFFF8) >= 1)
  {
    v5 = 0;
    v6 = 2 * a2;
    v7 = 3 * a2;
    v8 = 4 * a2;
    v9 = 6 * a2;
    v10 = 7 * a2;
    v11.i64[0] = 0x101010101010101;
    v11.i64[1] = 0x101010101010101;
    v12 = 5 * a2;
    do
    {
      if (*a3)
      {
        v13.i64[0] = *(result - 4);
        v14.i64[0] = *&result[a2 - 4];
        v15.i64[0] = *&result[v6 - 4];
        v16.i64[0] = *&result[v7 - 4];
        v13.i64[1] = *&result[v8 - 4];
        v14.i64[1] = *&result[v12 - 4];
        v15.i64[1] = *&result[v9 - 4];
        v16.i64[1] = *&result[v10 - 4];
        v17 = vtrn1q_s16(v13, v14);
        v18 = vtrn2q_s16(v13, v14);
        v19 = vtrn1q_s16(v15, v16);
        v20 = vtrn2q_s16(v15, v16);
        v21 = vtrn1q_s32(v17, v19);
        v22 = vtrn2q_s32(v17, v19);
        v23 = vtrn1q_s32(v18, v20);
        v24 = vtrn2q_s32(v18, v20);
        v20.i64[0] = *a3;
        v25 = vzip1q_s16(v20, v20);
        v26 = vmaxq_s8(vminq_s8(vqaddq_s8(vhsubq_u8(v22, v23), vrhaddq_s8(vshrq_n_s8(vhsubq_u8(v21, v24), 1uLL), vandq_s8(veorq_s8(v22, v23), v11))), v25), vnegq_s8(v25));
        v27 = vsqaddq_u8(v23, v26);
        v28 = vsqaddq_u8(v22, vnegq_s8(v26));
        v29 = vzip1q_s16(v27, v28);
        *(result - 2) = v29.i32[0];
        *&result[a2 - 2] = v29.i32[1];
        *&result[v6 - 2] = v29.i32[2];
        *&result[v7 - 2] = v29.i32[3];
        v30 = vzip2q_s16(v27, v28);
        *&result[v8 - 2] = v30.i32[0];
        *&result[v12 - 2] = v30.i32[1];
        *&result[v9 - 2] = v30.i32[2];
        *&result[v10 - 2] = v30.i32[3];
      }

      v5 += 8;
      result += 8 * a2;
      ++a3;
    }

    while (v5 < (a4 & 0xFFFFFFF8));
  }

  v31 = a4 & 7;
  if (v31)
  {

    return sub_277444F38(result, a2, a3, v31);
  }

  return result;
}

uint8x16_t *sub_2774E7688(uint8x16_t *result, uint64_t a2, unsigned int *a3, int a4)
{
  if ((a4 & 0xFFFFFFF8) >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0x101010101010101;
    v5.i64[1] = 0x101010101010101;
    do
    {
      if (*a3)
      {
        v6 = *(result - a2);
        v7 = vqtbl1q_s8(vdupq_n_s32(*a3), xmmword_27750D4B0);
        v8 = vmaxq_s8(vminq_s8(vqaddq_s8(vhsubq_u8(*result, v6), vrhaddq_s8(vshrq_n_s8(vhsubq_u8(*(result - 2 * a2), *(result + a2)), 1uLL), vandq_s8(veorq_s8(*result, v6), v5))), v7), vnegq_s8(v7));
        v9 = vsqaddq_u8(*result, vnegq_s8(v8));
        *(result - a2) = vsqaddq_u8(v6, v8);
        *result = v9;
      }

      v4 += 8;
      ++result;
      ++a3;
    }

    while (v4 < (a4 & 0xFFFFFFF8));
  }

  v10 = a4 & 7;
  if (v10)
  {
    return sub_27744503C(result->i8, a2, a3, v10);
  }

  return result;
}

uint8x16_t *sub_2774E772C(uint8x16_t *result, uint64_t a2, unint64_t *a3, int a4, double a5, double a6, double a7, double a8, double a9, int16x8_t a10)
{
  if ((a4 & 0xFFFFFFF8) >= 1)
  {
    v10 = 0;
    v11.i64[0] = 0x101010101010101;
    v11.i64[1] = 0x101010101010101;
    do
    {
      if (*a3)
      {
        v12 = *(result - a2);
        a10.i64[0] = *a3;
        a10 = vzip1q_s16(a10, a10);
        v13 = vmaxq_s8(vminq_s8(vqaddq_s8(vhsubq_u8(*result, v12), vrhaddq_s8(vshrq_n_s8(vhsubq_u8(*(result - 2 * a2), *(result + a2)), 1uLL), vandq_s8(veorq_s8(*result, v12), v11))), a10), vnegq_s8(a10));
        v14 = vsqaddq_u8(*result, vnegq_s8(v13));
        *(result - a2) = vsqaddq_u8(v12, v13);
        *result = v14;
      }

      v10 += 8;
      ++result;
      ++a3;
    }

    while (v10 < (a4 & 0xFFFFFFF8));
  }

  v15 = a4 & 7;
  if (v15)
  {
    return sub_277445158(result, a2, a3, v15);
  }

  return result;
}

uint64_t sub_2774E77C8(uint64_t result, uint64_t a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = 6 * a2;
    v7 = 4 * a2;
    v8.i64[0] = 0xFF00FF00FF00FFLL;
    v8.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      if (*a3)
      {
        v9 = *(result - 8);
        v10 = *(result + v5 - 8);
        v11 = *(result + v7 - 8);
        v12 = *(result + v6 - 8);
        v13 = vtrn1q_s32(v9, v10);
        v14 = vtrn2q_s32(v9, v10);
        v15 = vtrn1q_s32(v11, v12);
        v16 = vzip2q_s64(v13, v15);
        v13.i64[1] = v15.i64[0];
        v17 = vtrn2q_s32(v11, v12);
        v11.i64[0] = v14.i64[0];
        v11.i64[1] = v17.i64[0];
        v18 = vld1q_dup_f32(a3);
        v19 = vzip2q_s64(v14, v17);
        v20 = vqtbl1q_s8(v18, xmmword_27750D760);
        v21 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(v16, v11), vsubq_s16(v13, v19), 2uLL), 1uLL), v20), vnegq_s16(v20));
        v22 = vminq_s16(vsqaddq_u16(v11, v21), v8);
        v23 = vminq_s16(vmaxq_s16(vsubq_s16(v16, v21), 0), v8);
        v24 = vzip1q_s32(v22, v23);
        v25 = vzip2q_s32(v22, v23);
        *(result - 4) = v24.i64[0];
        *(result + v5 - 4) = v24.i64[1];
        *(result + v7 - 4) = v25.i64[0];
        *(result + v6 - 4) = v25.i64[1];
      }

      v4 += 4;
      result += 8 * a2;
      a3 = (a3 + 2);
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_2774E78B0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = 6 * a2;
    v7 = 4 * a2;
    v8.i64[0] = 0xFF00FF00FF00FFLL;
    v8.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      v9 = *(a3 + v4);
      if (v9)
      {
        v10 = *(result - 8);
        v11 = *(result + v5 - 8);
        v12 = *(result + v7 - 8);
        v13 = *(result + v6 - 8);
        v14 = vtrn1q_s32(v10, v11);
        v15 = vtrn2q_s32(v10, v11);
        v16 = vtrn1q_s32(v12, v13);
        v17 = vzip2q_s64(v14, v16);
        v14.i64[1] = v16.i64[0];
        v18 = vtrn2q_s32(v12, v13);
        v12.i64[0] = v15.i64[0];
        v12.i64[1] = v18.i64[0];
        v19 = vzip2q_s64(v15, v18);
        v20 = vqtbl1q_s8(vdupq_n_s32(v9), xmmword_27750D770);
        v21 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(v17, v12), vsubq_s16(v14, v19), 2uLL), 1uLL), v20), vnegq_s16(v20));
        v22 = vminq_s16(vsqaddq_u16(v12, v21), v8);
        v23 = vminq_s16(vmaxq_s16(vsubq_s16(v17, v21), 0), v8);
        v24 = vzip1q_s32(v22, v23);
        v25 = vzip2q_s32(v22, v23);
        *(result - 4) = v24.i64[0];
        *(result + v5 - 4) = v24.i64[1];
        *(result + v7 - 4) = v25.i64[0];
        *(result + v6 - 4) = v25.i64[1];
      }

      result += 8 * a2;
      v4 += 4;
    }

    while (v4 < a4);
  }

  return result;
}

int16x8_t *sub_2774E7994(int16x8_t *result, uint64_t a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0xFF00FF00FF00FFLL;
    v5.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      if (*a3)
      {
        v6 = *(result - 2 * a2);
        v7 = vld1q_dup_f32(a3);
        v8 = vqtbl1q_s8(v7, xmmword_27750D760);
        v9 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(*result, v6), vsubq_s16(*(result - 4 * a2), *(result + 2 * a2)), 2uLL), 1uLL), v8), vnegq_s16(v8));
        v10 = vsqaddq_u16(v6, v9);
        v11 = vminq_s16(vmaxq_s16(vsubq_s16(*result, v9), 0), v5);
        *(result - 2 * a2) = vminq_s16(v10, v5);
        *result = v11;
      }

      v4 += 4;
      ++result;
      a3 = (a3 + 2);
    }

    while (v4 < a4);
  }

  return result;
}

int16x8_t *sub_2774E7A2C(int16x8_t *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0xFF00FF00FF00FFLL;
    v5.i64[1] = 0xFF00FF00FF00FFLL;
    do
    {
      v6 = *(a3 + v4);
      if (v6)
      {
        v7 = *(result - 2 * a2);
        v8 = vqtbl1q_s8(vdupq_n_s32(v6), xmmword_27750D770);
        v9 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(*result, v7), vsubq_s16(*(result - 4 * a2), *(result + 2 * a2)), 2uLL), 1uLL), v8), vnegq_s16(v8));
        v10 = vsqaddq_u16(v7, v9);
        v11 = vminq_s16(vmaxq_s16(vsubq_s16(*result, v9), 0), v5);
        *(result - 2 * a2) = vminq_s16(v10, v5);
        *result = v11;
      }

      ++result;
      v4 += 4;
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_2774E7AC0(uint64_t result, uint64_t a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = 6 * a2;
    v7 = 4 * a2;
    v8.i64[0] = 0xFE00FE00FE00FE00;
    v8.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      if (*a3)
      {
        v9 = *(result - 8);
        v10 = *(result + v5 - 8);
        v11 = *(result + v7 - 8);
        v12 = *(result + v6 - 8);
        v13 = vtrn1q_s32(v9, v10);
        v14 = vtrn2q_s32(v9, v10);
        v15 = vtrn1q_s32(v11, v12);
        v16 = vtrn2q_s32(v11, v12);
        v17 = vzip2q_s64(v13, v15);
        v13.i64[1] = v15.i64[0];
        v18 = vzip2q_s64(v14, v16);
        v14.i64[1] = v16.i64[0];
        v19 = vld1q_dup_f32(a3);
        v20 = vqtbl1q_s8(v19, xmmword_27750D760);
        v21 = vaddq_s16(v20, v20);
        v22 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(v17, v14), vsubq_s16(v13, v18), 2uLL), 1uLL), v21), vnegq_s16(v21));
        v23 = vminq_s16(vsqaddq_u16(v14, v22), v8);
        v24 = vminq_s16(vmaxq_s16(vsubq_s16(v17, v22), 0), v8);
        v25 = vzip1q_s32(v23, v24);
        v26 = vzip2q_s32(v23, v24);
        *(result - 4) = v25.i64[0];
        *(result + v5 - 4) = v25.i64[1];
        *(result + v7 - 4) = v26.i64[0];
        *(result + v6 - 4) = v26.i64[1];
      }

      v4 += 4;
      result += 8 * a2;
      a3 = (a3 + 2);
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_2774E7BA8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = 6 * a2;
    v7 = 4 * a2;
    v8.i64[0] = 0xFE00FE00FE00FE00;
    v8.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      v9 = *(a3 + v4);
      if (v9)
      {
        v10 = *(result - 8);
        v11 = *(result + v5 - 8);
        v12 = *(result + v7 - 8);
        v13 = *(result + v6 - 8);
        v14 = vtrn1q_s32(v10, v11);
        v15 = vtrn2q_s32(v10, v11);
        v16 = vtrn1q_s32(v12, v13);
        v17 = vtrn2q_s32(v12, v13);
        v18 = vzip2q_s64(v14, v16);
        v14.i64[1] = v16.i64[0];
        v19 = vzip2q_s64(v15, v17);
        v15.i64[1] = v17.i64[0];
        v20 = vqtbl1q_s8(vdupq_n_s32(v9), xmmword_27750D770);
        v21 = vaddq_s16(v20, v20);
        v22 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(v18, v15), vsubq_s16(v14, v19), 2uLL), 1uLL), v21), vnegq_s16(v21));
        v23 = vminq_s16(vsqaddq_u16(v15, v22), v8);
        v24 = vminq_s16(vmaxq_s16(vsubq_s16(v18, v22), 0), v8);
        v25 = vzip1q_s32(v23, v24);
        v26 = vzip2q_s32(v23, v24);
        *(result - 4) = v25.i64[0];
        *(result + v5 - 4) = v25.i64[1];
        *(result + v7 - 4) = v26.i64[0];
        *(result + v6 - 4) = v26.i64[1];
      }

      result += 8 * a2;
      v4 += 4;
    }

    while (v4 < a4);
  }

  return result;
}

int16x8_t *sub_2774E7C8C(int16x8_t *result, uint64_t a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0xFE00FE00FE00FE00;
    v5.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      if (*a3)
      {
        v6 = *(result - 2 * a2);
        v7 = vld1q_dup_f32(a3);
        v8 = vqtbl1q_s8(v7, xmmword_27750D760);
        v9 = vaddq_s16(v8, v8);
        v10 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(*result, v6), vsubq_s16(*(result - 4 * a2), *(result + 2 * a2)), 2uLL), 1uLL), v9), vnegq_s16(v9));
        v11 = vsqaddq_u16(v6, v10);
        v12 = vminq_s16(vmaxq_s16(vsubq_s16(*result, v10), 0), v5);
        *(result - 2 * a2) = vminq_s16(v11, v5);
        *result = v12;
      }

      v4 += 4;
      ++result;
      a3 = (a3 + 2);
    }

    while (v4 < a4);
  }

  return result;
}

int16x8_t *sub_2774E7D28(int16x8_t *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0xFE00FE00FE00FE00;
    v5.i64[1] = 0xFE00FE00FE00FE00;
    do
    {
      v6 = *(a3 + v4);
      if (v6)
      {
        v7 = *(result - 2 * a2);
        v8 = vqtbl1q_s8(vdupq_n_s32(v6), xmmword_27750D770);
        v9 = vaddq_s16(v8, v8);
        v10 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(*result, v7), vsubq_s16(*(result - 4 * a2), *(result + 2 * a2)), 2uLL), 1uLL), v9), vnegq_s16(v9));
        v11 = vsqaddq_u16(v7, v10);
        v12 = vminq_s16(vmaxq_s16(vsubq_s16(*result, v10), 0), v5);
        *(result - 2 * a2) = vminq_s16(v11, v5);
        *result = v12;
      }

      ++result;
      v4 += 4;
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_2774E7DC0(uint64_t result, uint64_t a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = 6 * a2;
    v7 = 4 * a2;
    v8.i64[0] = 0xFC00FC00FC00FC00;
    v8.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      if (*a3)
      {
        v9 = *(result - 8);
        v10 = *(result + v5 - 8);
        v11 = *(result + v7 - 8);
        v12 = *(result + v6 - 8);
        v13 = vtrn1q_s32(v9, v10);
        v14 = vtrn2q_s32(v9, v10);
        v15 = vtrn1q_s32(v11, v12);
        v16 = vtrn2q_s32(v11, v12);
        v17 = vzip2q_s64(v13, v15);
        v13.i64[1] = v15.i64[0];
        v18 = vzip2q_s64(v14, v16);
        v14.i64[1] = v16.i64[0];
        v19 = vld1q_dup_f32(a3);
        v20 = vshlq_n_s16(vqtbl1q_s8(v19, xmmword_27750D760), 2uLL);
        v21 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(v17, v14), vsubq_s16(v13, v18), 2uLL), 1uLL), v20), vnegq_s16(v20));
        v22 = vminq_s16(vsqaddq_u16(v14, v21), v8);
        v23 = vminq_s16(vmaxq_s16(vsubq_s16(v17, v21), 0), v8);
        v24 = vzip1q_s32(v22, v23);
        v25 = vzip2q_s32(v22, v23);
        *(result - 4) = v24.i64[0];
        *(result + v5 - 4) = v24.i64[1];
        *(result + v7 - 4) = v25.i64[0];
        *(result + v6 - 4) = v25.i64[1];
      }

      v4 += 4;
      result += 8 * a2;
      a3 = (a3 + 2);
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_2774E7EA8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = 6 * a2;
    v7 = 4 * a2;
    v8.i64[0] = 0xFC00FC00FC00FC00;
    v8.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v9 = *(a3 + v4);
      if (v9)
      {
        v10 = *(result - 8);
        v11 = *(result + v5 - 8);
        v12 = *(result + v7 - 8);
        v13 = *(result + v6 - 8);
        v14 = vtrn1q_s32(v10, v11);
        v15 = vtrn2q_s32(v10, v11);
        v16 = vtrn1q_s32(v12, v13);
        v17 = vtrn2q_s32(v12, v13);
        v18 = vzip2q_s64(v14, v16);
        v14.i64[1] = v16.i64[0];
        v19 = vzip2q_s64(v15, v17);
        v15.i64[1] = v17.i64[0];
        v20 = vshlq_n_s16(vqtbl1q_s8(vdupq_n_s32(v9), xmmword_27750D770), 2uLL);
        v21 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(v18, v15), vsubq_s16(v14, v19), 2uLL), 1uLL), v20), vnegq_s16(v20));
        v22 = vminq_s16(vsqaddq_u16(v15, v21), v8);
        v23 = vminq_s16(vmaxq_s16(vsubq_s16(v18, v21), 0), v8);
        v24 = vzip1q_s32(v22, v23);
        v25 = vzip2q_s32(v22, v23);
        *(result - 4) = v24.i64[0];
        *(result + v5 - 4) = v24.i64[1];
        *(result + v7 - 4) = v25.i64[0];
        *(result + v6 - 4) = v25.i64[1];
      }

      result += 8 * a2;
      v4 += 4;
    }

    while (v4 < a4);
  }

  return result;
}

int16x8_t *sub_2774E7F8C(int16x8_t *result, uint64_t a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0xFC00FC00FC00FC00;
    v5.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      if (*a3)
      {
        v6 = *(result - 2 * a2);
        v7 = vld1q_dup_f32(a3);
        v8 = vshlq_n_s16(vqtbl1q_s8(v7, xmmword_27750D760), 2uLL);
        v9 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(*result, v6), vsubq_s16(*(result - 4 * a2), *(result + 2 * a2)), 2uLL), 1uLL), v8), vnegq_s16(v8));
        v10 = vsqaddq_u16(v6, v9);
        v11 = vminq_s16(vmaxq_s16(vsubq_s16(*result, v9), 0), v5);
        *(result - 2 * a2) = vminq_s16(v10, v5);
        *result = v11;
      }

      v4 += 4;
      ++result;
      a3 = (a3 + 2);
    }

    while (v4 < a4);
  }

  return result;
}

int16x8_t *sub_2774E8028(int16x8_t *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0xFC00FC00FC00FC00;
    v5.i64[1] = 0xFC00FC00FC00FC00;
    do
    {
      v6 = *(a3 + v4);
      if (v6)
      {
        v7 = *(result - 2 * a2);
        v8 = vshlq_n_s16(vqtbl1q_s8(vdupq_n_s32(v6), xmmword_27750D770), 2uLL);
        v9 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(*result, v7), vsubq_s16(*(result - 4 * a2), *(result + 2 * a2)), 2uLL), 1uLL), v8), vnegq_s16(v8));
        v10 = vsqaddq_u16(v7, v9);
        v11 = vminq_s16(vmaxq_s16(vsubq_s16(*result, v9), 0), v5);
        *(result - 2 * a2) = vminq_s16(v10, v5);
        *result = v11;
      }

      ++result;
      v4 += 4;
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_2774E80C0(uint64_t result, uint64_t a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = 6 * a2;
    v7 = 4 * a2;
    v8.i64[0] = 0xF800F800F800F800;
    v8.i64[1] = 0xF800F800F800F800;
    do
    {
      if (*a3)
      {
        v9 = *(result - 8);
        v10 = *(result + v5 - 8);
        v11 = *(result + v7 - 8);
        v12 = *(result + v6 - 8);
        v13 = vtrn1q_s32(v9, v10);
        v14 = vtrn2q_s32(v9, v10);
        v15 = vtrn1q_s32(v11, v12);
        v16 = vtrn2q_s32(v11, v12);
        v17 = vzip2q_s64(v13, v15);
        v13.i64[1] = v15.i64[0];
        v18 = vzip2q_s64(v14, v16);
        v14.i64[1] = v16.i64[0];
        v19 = vld1q_dup_f32(a3);
        v20 = vshlq_n_s16(vqtbl1q_s8(v19, xmmword_27750D760), 3uLL);
        v21 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(v17, v14), vsubq_s16(v13, v18), 2uLL), 1uLL), v20), vnegq_s16(v20));
        v22 = vminq_s16(vsqaddq_u16(v14, v21), v8);
        v23 = vminq_s16(vmaxq_s16(vsubq_s16(v17, v21), 0), v8);
        v24 = vzip1q_s32(v22, v23);
        v25 = vzip2q_s32(v22, v23);
        *(result - 4) = v24.i64[0];
        *(result + v5 - 4) = v24.i64[1];
        *(result + v7 - 4) = v25.i64[0];
        *(result + v6 - 4) = v25.i64[1];
      }

      v4 += 4;
      result += 8 * a2;
      a3 = (a3 + 2);
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_2774E81A8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = 6 * a2;
    v7 = 4 * a2;
    v8.i64[0] = 0xF800F800F800F800;
    v8.i64[1] = 0xF800F800F800F800;
    do
    {
      v9 = *(a3 + v4);
      if (v9)
      {
        v10 = *(result - 8);
        v11 = *(result + v5 - 8);
        v12 = *(result + v7 - 8);
        v13 = *(result + v6 - 8);
        v14 = vtrn1q_s32(v10, v11);
        v15 = vtrn2q_s32(v10, v11);
        v16 = vtrn1q_s32(v12, v13);
        v17 = vtrn2q_s32(v12, v13);
        v18 = vzip2q_s64(v14, v16);
        v14.i64[1] = v16.i64[0];
        v19 = vzip2q_s64(v15, v17);
        v15.i64[1] = v17.i64[0];
        v20 = vshlq_n_s16(vqtbl1q_s8(vdupq_n_s32(v9), xmmword_27750D770), 3uLL);
        v21 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(v18, v15), vsubq_s16(v14, v19), 2uLL), 1uLL), v20), vnegq_s16(v20));
        v22 = vminq_s16(vsqaddq_u16(v15, v21), v8);
        v23 = vminq_s16(vmaxq_s16(vsubq_s16(v18, v21), 0), v8);
        v24 = vzip1q_s32(v22, v23);
        v25 = vzip2q_s32(v22, v23);
        *(result - 4) = v24.i64[0];
        *(result + v5 - 4) = v24.i64[1];
        *(result + v7 - 4) = v25.i64[0];
        *(result + v6 - 4) = v25.i64[1];
      }

      result += 8 * a2;
      v4 += 4;
    }

    while (v4 < a4);
  }

  return result;
}

int16x8_t *sub_2774E828C(int16x8_t *result, uint64_t a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0xF800F800F800F800;
    v5.i64[1] = 0xF800F800F800F800;
    do
    {
      if (*a3)
      {
        v6 = *(result - 2 * a2);
        v7 = vld1q_dup_f32(a3);
        v8 = vshlq_n_s16(vqtbl1q_s8(v7, xmmword_27750D760), 3uLL);
        v9 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(*result, v6), vsubq_s16(*(result - 4 * a2), *(result + 2 * a2)), 2uLL), 1uLL), v8), vnegq_s16(v8));
        v10 = vsqaddq_u16(v6, v9);
        v11 = vminq_s16(vmaxq_s16(vsubq_s16(*result, v9), 0), v5);
        *(result - 2 * a2) = vminq_s16(v10, v5);
        *result = v11;
      }

      v4 += 4;
      ++result;
      a3 = (a3 + 2);
    }

    while (v4 < a4);
  }

  return result;
}

int16x8_t *sub_2774E8328(int16x8_t *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0xF800F800F800F800;
    v5.i64[1] = 0xF800F800F800F800;
    do
    {
      v6 = *(a3 + v4);
      if (v6)
      {
        v7 = *(result - 2 * a2);
        v8 = vshlq_n_s16(vqtbl1q_s8(vdupq_n_s32(v6), xmmword_27750D770), 3uLL);
        v9 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(*result, v7), vsubq_s16(*(result - 4 * a2), *(result + 2 * a2)), 2uLL), 1uLL), v8), vnegq_s16(v8));
        v10 = vsqaddq_u16(v7, v9);
        v11 = vminq_s16(vmaxq_s16(vsubq_s16(*result, v9), 0), v5);
        *(result - 2 * a2) = vminq_s16(v10, v5);
        *result = v11;
      }

      ++result;
      v4 += 4;
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_2774E83C0(uint64_t result, uint64_t a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = 6 * a2;
    v7 = 4 * a2;
    v8.i64[0] = 0xF000F000F000F000;
    v8.i64[1] = 0xF000F000F000F000;
    do
    {
      if (*a3)
      {
        v9 = *(result - 8);
        v10 = *(result + v5 - 8);
        v11 = *(result + v7 - 8);
        v12 = *(result + v6 - 8);
        v13 = vtrn1q_s32(v9, v10);
        v14 = vtrn2q_s32(v9, v10);
        v15 = vtrn1q_s32(v11, v12);
        v16 = vtrn2q_s32(v11, v12);
        v17 = vzip2q_s64(v13, v15);
        v13.i64[1] = v15.i64[0];
        v18 = vzip2q_s64(v14, v16);
        v14.i64[1] = v16.i64[0];
        v19 = vld1q_dup_f32(a3);
        v20 = vshlq_n_s16(vqtbl1q_s8(v19, xmmword_27750D760), 4uLL);
        v21 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(v17, v14), vsubq_s16(v13, v18), 2uLL), 1uLL), v20), vnegq_s16(v20));
        v22 = vminq_s16(vsqaddq_u16(v14, v21), v8);
        v23 = vminq_s16(vmaxq_s16(vsubq_s16(v17, v21), 0), v8);
        v24 = vzip1q_s32(v22, v23);
        v25 = vzip2q_s32(v22, v23);
        *(result - 4) = v24.i64[0];
        *(result + v5 - 4) = v24.i64[1];
        *(result + v7 - 4) = v25.i64[0];
        *(result + v6 - 4) = v25.i64[1];
      }

      v4 += 4;
      result += 8 * a2;
      a3 = (a3 + 2);
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_2774E84A8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = 2 * a2;
    v6 = 6 * a2;
    v7 = 4 * a2;
    v8.i64[0] = 0xF000F000F000F000;
    v8.i64[1] = 0xF000F000F000F000;
    do
    {
      v9 = *(a3 + v4);
      if (v9)
      {
        v10 = *(result - 8);
        v11 = *(result + v5 - 8);
        v12 = *(result + v7 - 8);
        v13 = *(result + v6 - 8);
        v14 = vtrn1q_s32(v10, v11);
        v15 = vtrn2q_s32(v10, v11);
        v16 = vtrn1q_s32(v12, v13);
        v17 = vtrn2q_s32(v12, v13);
        v18 = vzip2q_s64(v14, v16);
        v14.i64[1] = v16.i64[0];
        v19 = vzip2q_s64(v15, v17);
        v15.i64[1] = v17.i64[0];
        v20 = vshlq_n_s16(vqtbl1q_s8(vdupq_n_s32(v9), xmmword_27750D770), 4uLL);
        v21 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(v18, v15), vsubq_s16(v14, v19), 2uLL), 1uLL), v20), vnegq_s16(v20));
        v22 = vminq_s16(vsqaddq_u16(v15, v21), v8);
        v23 = vminq_s16(vmaxq_s16(vsubq_s16(v18, v21), 0), v8);
        v24 = vzip1q_s32(v22, v23);
        v25 = vzip2q_s32(v22, v23);
        *(result - 4) = v24.i64[0];
        *(result + v5 - 4) = v24.i64[1];
        *(result + v7 - 4) = v25.i64[0];
        *(result + v6 - 4) = v25.i64[1];
      }

      result += 8 * a2;
      v4 += 4;
    }

    while (v4 < a4);
  }

  return result;
}

int16x8_t *sub_2774E858C(int16x8_t *result, uint64_t a2, const float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0xF000F000F000F000;
    v5.i64[1] = 0xF000F000F000F000;
    do
    {
      if (*a3)
      {
        v6 = *(result - 2 * a2);
        v7 = vld1q_dup_f32(a3);
        v8 = vshlq_n_s16(vqtbl1q_s8(v7, xmmword_27750D760), 4uLL);
        v9 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(*result, v6), vsubq_s16(*(result - 4 * a2), *(result + 2 * a2)), 2uLL), 1uLL), v8), vnegq_s16(v8));
        v10 = vsqaddq_u16(v6, v9);
        v11 = vminq_s16(vmaxq_s16(vsubq_s16(*result, v9), 0), v5);
        *(result - 2 * a2) = vminq_s16(v10, v5);
        *result = v11;
      }

      v4 += 4;
      ++result;
      a3 = (a3 + 2);
    }

    while (v4 < a4);
  }

  return result;
}

int16x8_t *sub_2774E8628(int16x8_t *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5.i64[0] = 0xF000F000F000F000;
    v5.i64[1] = 0xF000F000F000F000;
    do
    {
      v6 = *(a3 + v4);
      if (v6)
      {
        v7 = *(result - 2 * a2);
        v8 = vshlq_n_s16(vqtbl1q_s8(vdupq_n_s32(v6), xmmword_27750D770), 4uLL);
        v9 = vmaxq_s16(vminq_s16(vrshrq_n_s16(vsraq_n_s16(vsubq_s16(*result, v7), vsubq_s16(*(result - 4 * a2), *(result + 2 * a2)), 2uLL), 1uLL), v8), vnegq_s16(v8));
        v10 = vsqaddq_u16(v7, v9);
        v11 = vminq_s16(vmaxq_s16(vsubq_s16(*result, v9), 0), v5);
        *(result - 2 * a2) = vminq_s16(v10, v5);
        *result = v11;
      }

      ++result;
      v4 += 4;
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_2774E86C0(int a1, int a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5, uint64_t a6)
{
  v6 = 4 * a4;
  v7 = 4 * a6;
  v8 = a5[1].i64 + 4 * a6;
  v9 = a3[1].i64 + 6 * a4;
  v10 = a5[1].i64 + 6 * a6;
  v11 = a3[1].i64 + 4 * a4;
  v12 = 0uLL;
  v13 = 2 * a4;
  v14 = 2 * a6;
  do
  {
    v15 = vsubq_s16(*a3, *a5);
    v16 = vsubq_s16(a3[1], a5[1]);
    v17 = vsubq_s16(*(a3 + v13), *(a5 + v14));
    v18 = vsubq_s16(*(a3 + v13 + 16), *(a5 + v14 + 16));
    v19 = vmull_s16(*v15.i8, *v15.i8);
    v20 = vmull_s16(*v16.i8, *v16.i8);
    v21 = vmull_s16(*v17.i8, *v17.i8);
    v22 = vmull_s16(*v18.i8, *v18.i8);
    v23 = vmull_high_s16(v15, v15);
    v24 = vmull_high_s16(v16, v16);
    v25 = vmull_high_s16(v17, v17);
    v26 = vmull_high_s16(v18, v18);
    if (a2 >= 3)
    {
      v27 = v11;
      v28 = v10;
      v29 = v9;
      v30 = v8;
      v31 = a2 + 2;
      do
      {
        v32 = vsubq_s16(v27[-1], v30[-1]);
        v33 = vsubq_s16(*v27, *v30);
        v34 = vsubq_s16(v29[-1], v28[-1]);
        v35 = vsubq_s16(*v29, *v28);
        v19 = vmlal_s16(v19, *v32.i8, *v32.i8);
        v20 = vmlal_s16(v20, *v33.i8, *v33.i8);
        v21 = vmlal_s16(v21, *v34.i8, *v34.i8);
        v22 = vmlal_s16(v22, *v35.i8, *v35.i8);
        v23 = vmlal_high_s16(v23, v32, v32);
        v24 = vmlal_high_s16(v24, v33, v33);
        v25 = vmlal_high_s16(v25, v34, v34);
        v31 -= 2;
        v30 = (v30 + v7);
        v26 = vmlal_high_s16(v26, v35, v35);
        v29 = (v29 + v6);
        v28 = (v28 + v7);
        v27 = (v27 + v6);
      }

      while (v31 > 4);
    }

    a3 += 2;
    a5 += 2;
    v8 += 32;
    v12 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v20, v19), v21), vaddq_s32(v22, v23)), vaddq_s32(vaddq_s32(v24, v25), v26)), v12);
    v9 += 32;
    v10 += 32;
    v11 += 32;
    v36 = __OFSUB__(a1, 16);
    a1 -= 16;
  }

  while (!((a1 < 0) ^ v36 | (a1 == 0)));
  return vaddvq_s32(v12);
}

uint64_t sub_2774E8818(uint64_t a1, int a2, int16x8_t *a3, uint64_t a4, int16x8_t *a5, uint64_t a6)
{
  v6 = vsubq_s16(*a3, *a5);
  v7 = vsubq_s16(*(a3 + 2 * a4), *(a5 + 2 * a6));
  v8 = vsubq_s16(*(a3 + 4 * a4), *(a5 + 4 * a6));
  v9 = vsubq_s16(*(a3 + 6 * a4), *(a5 + 6 * a6));
  v10 = vmull_s16(*v6.i8, *v6.i8);
  v11 = vmull_s16(*v7.i8, *v7.i8);
  v12 = vmull_s16(*v8.i8, *v8.i8);
  v13 = vmull_s16(*v9.i8, *v9.i8);
  v14 = vmull_high_s16(v6, v6);
  v15 = vmull_high_s16(v7, v7);
  v16 = vmull_high_s16(v8, v8);
  v17 = vmull_high_s16(v9, v9);
  if (a2 >= 5)
  {
    v18 = a2 + 4;
    do
    {
      v19 = *(a3 + 10 * a4);
      v20 = *(a3 + 12 * a4);
      v21 = *(a3 + 14 * a4);
      v22 = *(a5 + 10 * a6);
      a3 = (a3 + 8 * a4);
      v23 = *(a5 + 12 * a6);
      v24 = *(a5 + 14 * a6);
      a5 = (a5 + 8 * a6);
      v25 = vsubq_s16(*a3, *a5);
      v26 = vsubq_s16(v19, v22);
      v27 = vsubq_s16(v20, v23);
      v28 = vsubq_s16(v21, v24);
      v10 = vmlal_s16(v10, *v25.i8, *v25.i8);
      v11 = vmlal_s16(v11, *v26.i8, *v26.i8);
      v12 = vmlal_s16(v12, *v27.i8, *v27.i8);
      v13 = vmlal_s16(v13, *v28.i8, *v28.i8);
      v14 = vmlal_high_s16(v14, v25, v25);
      v15 = vmlal_high_s16(v15, v26, v26);
      v16 = vmlal_high_s16(v16, v27, v27);
      v17 = vmlal_high_s16(v17, v28, v28);
      v18 -= 4;
    }

    while (v18 > 8);
  }

  return vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v11, v10), v12), v14), v16), vaddq_s32(vaddq_s32(v13, v15), v17)));
}

uint64_t sub_2774E8954(uint64_t a1, int a2, int16x4_t *a3, uint64_t a4, int16x4_t *a5, uint64_t a6)
{
  v6 = a2 + 4;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  do
  {
    v11 = vsub_s16(*a3, *a5);
    v12 = vsub_s16(*(a3 + 4 * a4), *(a5 + 4 * a6));
    v13 = vsub_s16(*(a3 + 2 * a4), *(a5 + 2 * a6));
    v14 = vsub_s16(*(a3 + 6 * a4), *(a5 + 6 * a6));
    v7 = vmlal_s16(v7, v11, v11);
    v8 = vmlal_s16(v8, v13, v13);
    v9 = vmlal_s16(v9, v12, v12);
    v10 = vmlal_s16(v10, v14, v14);
    a3 += a4;
    a5 += a6;
    v6 -= 4;
  }

  while (v6 > 4);
  return vaddvq_s32(vaddq_s32(vaddq_s32(v8, v7), vaddq_s32(v9, v10)));
}

uint64_t sub_2774E89FC(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 4)
  {
    v22 = a2 + 4;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    do
    {
      v23 = vmlal_s16(v23, *a3, *a3);
      v24 = vmlal_s16(v24, *(a3 + 2 * a4), *(a3 + 2 * a4));
      v25 = vmlal_s16(v25, *(a3 + 4 * a4), *(a3 + 4 * a4));
      v26 = vmlal_s16(v26, *(a3 + 6 * a4), *(a3 + 6 * a4));
      a3 += 8 * a4;
      v22 -= 4;
    }

    while (v22 > 4);
    v21 = vaddq_s32(vaddq_s32(v24, v23), vaddq_s32(v25, v26));
  }

  else if (a1 == 8)
  {
    v4 = *a3;
    v5 = *(a3 + 2 * a4);
    v6 = *(a3 + 4 * a4);
    v7 = *(a3 + 6 * a4);
    v8 = vmull_s16(*v4.i8, *v4.i8);
    v9 = vmull_s16(*v5.i8, *v5.i8);
    v10 = vmull_s16(*v6.i8, *v6.i8);
    v11 = vmull_s16(*v7.i8, *v7.i8);
    v12 = vmull_high_s16(v4, v4);
    v13 = vmull_high_s16(v5, v5);
    v14 = vmull_high_s16(v6, v6);
    v15 = vmull_high_s16(v7, v7);
    if (a2 >= 5)
    {
      v16 = a2 + 4;
      do
      {
        v17 = *(a3 + 10 * a4);
        v18 = *(a3 + 12 * a4);
        v19 = *(a3 + 14 * a4);
        a3 += 8 * a4;
        v20 = *a3;
        v8 = vmlal_s16(v8, *v20.i8, *v20.i8);
        v9 = vmlal_s16(v9, *v17.i8, *v17.i8);
        v10 = vmlal_s16(v10, *v18.i8, *v18.i8);
        v11 = vmlal_s16(v11, *v19.i8, *v19.i8);
        v12 = vmlal_high_s16(v12, v20, v20);
        v13 = vmlal_high_s16(v13, v17, v17);
        v14 = vmlal_high_s16(v14, v18, v18);
        v15 = vmlal_high_s16(v15, v19, v19);
        v16 -= 4;
      }

      while (v16 > 8);
    }

    v21 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v9, v8), vaddq_s32(v10, v11)), vaddq_s32(vaddq_s32(v12, v13), v14)), v15);
  }

  else
  {
    v27 = 4 * a4;
    v28 = a3 + 4 * a4 + 16;
    v29 = a3 + 6 * a4 + 16;
    v21 = 0uLL;
    do
    {
      v30 = *(a3 + 16);
      v31 = *(a3 + 2 * a4);
      v32 = *a3;
      v33 = *(a3 + 16 + 2 * a4);
      v34 = vmull_s16(*v32.i8, *v32.i8);
      v35 = vmull_s16(*v30.i8, *v30.i8);
      v36 = vmull_s16(*v31.i8, *v31.i8);
      v37 = vmull_s16(*v33.i8, *v33.i8);
      v38 = vmull_high_s16(v32, v32);
      v39 = vmull_high_s16(v30, v30);
      v40 = vmull_high_s16(v31, v31);
      v41 = vmull_high_s16(v33, v33);
      if (a2 >= 3)
      {
        v42 = v29;
        v43 = v28;
        v44 = a2 + 2;
        do
        {
          v45 = v43[-1];
          v46 = *v43;
          v47 = v42[-1];
          v48 = *v42;
          v34 = vmlal_s16(v34, *v45.i8, *v45.i8);
          v35 = vmlal_s16(v35, *v46.i8, *v46.i8);
          v36 = vmlal_s16(v36, *v47.i8, *v47.i8);
          v37 = vmlal_s16(v37, *v48.i8, *v48.i8);
          v38 = vmlal_high_s16(v38, v45, v45);
          v39 = vmlal_high_s16(v39, v46, v46);
          v40 = vmlal_high_s16(v40, v47, v47);
          v41 = vmlal_high_s16(v41, v48, v48);
          v44 -= 2;
          v43 = (v43 + v27);
          v42 = (v42 + v27);
        }

        while (v44 > 4);
      }

      v21 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v34, v21), v35), vaddq_s32(v36, v37)), vaddq_s32(vaddq_s32(vaddq_s32(v38, v39), v40), v41));
      a3 += 32;
      v28 += 32;
      v29 += 32;
      v49 = __OFSUB__(a1, 16);
      a1 -= 16;
    }

    while (!((a1 < 0) ^ v49 | (a1 == 0)));
  }

  return vaddvq_s32(v21);
}

uint64x2_t sub_2774E8C24(uint8x8_t *a1, uint64_t a2, uint8x8_t *a3, uint64_t a4, int a5, int a6, uint64x2_t *a7)
{
  if (a5 == 4)
  {
    v7 = vsubl_u8(*a1, *a3);
    v8 = vsubl_u8(*(a1 + a2), *(a3 + a4));
    v9 = vsubl_u8(*(a1 + 2 * a2), *(a3 + 2 * a4));
    v10 = vsubl_u8(*(a1 + 3 * a2), *(a3 + 3 * a4));
    v11 = vmull_s16(*v7.i8, *v7.i8);
    v12 = vmull_s16(*v8.i8, *v8.i8);
    v13 = vmull_s16(*v9.i8, *v9.i8);
    v14 = vmull_s16(*v10.i8, *v10.i8);
    v15 = vmull_high_s16(v7, v7);
    v16 = vmull_high_s16(v8, v8);
    v17 = vmull_high_s16(v9, v9);
    v18 = vmull_high_s16(v10, v10);
    if (a6 >= 5)
    {
      v19 = a6 + 4;
      do
      {
        v20 = *(a1 + 5 * a2);
        v21 = *(a1 + 6 * a2);
        v22 = *(a1 + 7 * a2);
        v23 = *(a3 + 5 * a4);
        a1 = (a1 + 4 * a2);
        v24 = *(a3 + 6 * a4);
        v25 = *(a3 + 7 * a4);
        a3 = (a3 + 4 * a4);
        v26 = vsubl_u8(*a1, *a3);
        v27 = vsubl_u8(v20, v23);
        v28 = vsubl_u8(v21, v24);
        v29 = vsubl_u8(v22, v25);
        v11 = vmlal_s16(v11, *v26.i8, *v26.i8);
        v12 = vmlal_s16(v12, *v27.i8, *v27.i8);
        v13 = vmlal_s16(v13, *v28.i8, *v28.i8);
        v14 = vmlal_s16(v14, *v29.i8, *v29.i8);
        v15 = vmlal_high_s16(v15, v26, v26);
        v16 = vmlal_high_s16(v16, v27, v27);
        v17 = vmlal_high_s16(v17, v28, v28);
        v18 = vmlal_high_s16(v18, v29, v29);
        v19 -= 4;
      }

      while (v19 > 8);
    }

    v30 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v12, v11), vaddq_s32(v13, v14)), vaddq_s32(vaddq_s32(v15, v16), v17)), v18);
  }

  else
  {
    v31 = a1 + 3 * a2;
    v32 = a1 + 2 * a2;
    v33 = a3 + 3 * a4;
    v30 = 0uLL;
    v34 = a3 + 2 * a4;
    do
    {
      v35 = *&a1->i8[a2];
      v36 = *&a3->i8[a4];
      v37 = vsubl_u8(*a1, *a3);
      v38 = vsubl_high_u8(*a1->i8, *a3->i8);
      v39 = vsubl_u8(*v35.i8, *v36.i8);
      v40 = vsubl_high_u8(v35, v36);
      v41 = vmull_s16(*v37.i8, *v37.i8);
      v42 = vmull_s16(*v38.i8, *v38.i8);
      v43 = vmull_s16(*v39.i8, *v39.i8);
      v44 = vmull_s16(*v40.i8, *v40.i8);
      v45 = vmull_high_s16(v37, v37);
      v46 = vmull_high_s16(v38, v38);
      v47 = vmull_high_s16(v39, v39);
      v48 = vmull_high_s16(v40, v40);
      if (a6 >= 3)
      {
        v49 = 0;
        v50 = 0;
        v51 = a6 + 2;
        do
        {
          v52 = *&v32[v50];
          v53 = *&v31[v50];
          v54 = *&v34[v49];
          v55 = *&v33[v49];
          v56 = vsubl_u8(*v52.i8, *v54.i8);
          v57 = vsubl_high_u8(v52, v54);
          v58 = vsubl_u8(*v53.i8, *v55.i8);
          v59 = vsubl_high_u8(v53, v55);
          v41 = vmlal_s16(v41, *v56.i8, *v56.i8);
          v42 = vmlal_s16(v42, *v57.i8, *v57.i8);
          v43 = vmlal_s16(v43, *v58.i8, *v58.i8);
          v44 = vmlal_s16(v44, *v59.i8, *v59.i8);
          v45 = vmlal_high_s16(v45, v56, v56);
          v46 = vmlal_high_s16(v46, v57, v57);
          v47 = vmlal_high_s16(v47, v58, v58);
          v48 = vmlal_high_s16(v48, v59, v59);
          v51 -= 2;
          v50 += 2 * a2;
          v49 += 2 * a4;
        }

        while (v51 > 4);
      }

      a1 += 2;
      a3 += 2;
      v31 += 16;
      v30 = vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v41, v30), v44), v46), v48), vaddq_s32(vaddq_s32(vaddq_s32(v42, v43), v45), v47));
      v32 += 16;
      v33 += 16;
      v34 += 16;
      v60 = __OFSUB__(a5, 8);
      a5 -= 8;
    }

    while (!((a5 < 0) ^ v60 | (a5 == 0)));
  }

  result = vpaddlq_u32(vqtbl1q_s8(v30, xmmword_27750D780));
  *a7 = result;
  return result;
}