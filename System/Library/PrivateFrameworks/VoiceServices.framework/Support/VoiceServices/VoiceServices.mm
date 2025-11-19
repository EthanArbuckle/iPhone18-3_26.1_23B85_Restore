uint64_t sub_1000010B8(uint64_t a1, uint64_t a2)
{
  v2 = qword_100101720;
  qword_100101720 = a1;
  qword_1001065A8 = a2;
  return v2;
}

uint64_t sub_100001128(uint64_t result, int a2)
{
  *(result + 1996) = a2;
  *(result + 1992) = 1;
  return result;
}

uint64_t sub_100001148(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 2012) || *(a1 + 1072) <= a2)
  {
    return 1;
  }

  if (*(a1 + 1176))
  {
    v2 = (*(a1 + 1160) + 4 * a2);
    v4 = *v2;
    v3 = v2[1];
  }

  else
  {
    v6 = (*(a1 + 1144) + 2 * a2);
    v4 = *v6;
    v3 = v6[1];
  }

  return (v3 - v4);
}

uint64_t sub_1000011AC(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 1072);
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v5 < 0 == v4)
  {
    return *(a1 + 784) + *(a1 + 1120) * v5;
  }

  if (*(a1 + 2012))
  {
    v6 = *(a1 + 1120) * a2;
    if (*(a1 + 1080) > a2)
    {
      return *(a1 + 16) + v6;
    }
  }

  else
  {
    if (*(a1 + 1176))
    {
      v8 = *(*(a1 + 1160) + 4 * a2);
    }

    else
    {
      v8 = *(*(a1 + 1144) + 2 * a2);
    }

    v6 = *(a1 + 1120) * (v8 + a3);
    if (*(a1 + 1080) > a2)
    {
      return *(a1 + 16) + v6;
    }
  }

  return *(a1 + 96) + v6;
}

uint64_t sub_100001234(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a2;
  v4 = *(a1 + 1072);
  if (*(a1 + 1108))
  {
    v5 = __OFSUB__(a2, v4);
    v6 = a2 - v4;
    if (v6 < 0 == v5)
    {
      return *(a1 + 792) + 12 * v6;
    }

    if (*(a1 + 2012))
    {
      v7 = (3 * a2);
      if (*(a1 + 1080) > a2)
      {
        return *(a1 + 136) + 4 * v7;
      }
    }

    else
    {
      if (*(a1 + 1176))
      {
        v10 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        v10 = *(*(a1 + 1144) + 2 * a2);
      }

      v7 = 3 * (v10 + a3);
      if (*(a1 + 1080) > a2)
      {
        return *(a1 + 136) + 4 * v7;
      }
    }

    return *(a1 + 144) + 4 * v7;
  }

  else if (a2 >= v4)
  {
    return *(a1 + 792) + 4 * (6 * (a2 - v4));
  }

  else
  {
    if (!*(a1 + 2012))
    {
      if (*(a1 + 1176))
      {
        v8 = *(*(a1 + 1160) + 4 * a2);
      }

      else
      {
        v8 = *(*(a1 + 1144) + 2 * a2);
      }

      v3 = v8 + a3;
    }

    v11 = *(a1 + 1128) * v3;
    v12 = (a1 + 136);
    if (*(a1 + 1080) <= a2)
    {
      v12 = (a1 + 144);
    }

    return *v12 + 4 * v11;
  }
}

uint64_t sub_100001334(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 1120);
  if (v3 >= 1)
  {
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      *(a3 + i) = *(a2 + (i & 0xFFFFFFFC)) >> (v4 & 0x18);
      v4 += 8;
    }
  }

  return result;
}

uint64_t sub_100001370(uint64_t result, unsigned int a2, int a3, unint64_t *a4)
{
  if (*(result + 1032))
  {
    v4 = *(result + 1072);
    v5 = __OFSUB__(a2, v4);
    v6 = a2 - v4;
    if (!*(result + 1108))
    {
      if (v6 < 0 != v5)
      {
        v11 = a2;
        if (!*(result + 2012))
        {
          if (*(result + 1176))
          {
            v12 = *(*(result + 1160) + 4 * a2);
          }

          else
          {
            v12 = *(*(result + 1144) + 2 * a2);
          }

          v11 = v12 + a3;
        }

        v14 = *(result + 1128) * v11;
        v18 = (result + 136);
        if (*(result + 1080) <= a2)
        {
          v18 = (result + 144);
        }
      }

      else
      {
        v18 = (result + 792);
        v14 = 6 * v6;
      }

      v13 = *v18;
      goto LABEL_54;
    }

    if (v6 < 0 == v5)
    {
      v13 = *(result + 792);
      v14 = 3 * v6;
LABEL_54:
      v8 = v13 + 4 * v14;
LABEL_55:
      v21 = *(result + 1520);
      v35 = *(result + 1120);
      if (v35 >= 1)
      {
        v36 = 0;
        for (i = 0; i != v35; ++i)
        {
          *(v21 + i) = *(v8 + (i & 0xFFFFFFFC)) >> (v36 & 0x18);
          v36 += 8;
        }

        v21 = *(result + 1520);
      }

      goto LABEL_59;
    }

    if (*(result + 2012))
    {
      v7 = (3 * a2);
      if (*(result + 1080) > a2)
      {
LABEL_7:
        v8 = *(result + 136) + 4 * v7;
        goto LABEL_55;
      }
    }

    else
    {
      if (*(result + 1176))
      {
        v28 = *(*(result + 1160) + 4 * a2);
      }

      else
      {
        v28 = *(*(result + 1144) + 2 * a2);
      }

      v7 = 3 * (v28 + a3);
      if (*(result + 1080) > a2)
      {
        goto LABEL_7;
      }
    }

    v8 = *(result + 144) + 4 * v7;
    goto LABEL_55;
  }

  if (*(result + 1036))
  {
    v9 = *(result + 1296);
    if (v9 != 3)
    {
      if (v9 != 4)
      {
        v10 = 0;
        goto LABEL_23;
      }

      if (!*(result + 2012))
      {
        if (*(result + 1176))
        {
          v34 = *(*(result + 1160) + 4 * a2);
        }

        else
        {
          v34 = *(*(result + 1144) + 2 * a2);
        }

        v10 = v34 + a3;
        goto LABEL_23;
      }
    }

    v10 = a2;
LABEL_23:
    v19 = *(result + 1104);
    v20 = *(result + 1536);
    v21 = *(result + 1528);
    v22 = *(result + 1512);
    v23 = *(result + 1120);
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = *(result + 1232) + 4 * (*(result + 1128) * v10);
      do
      {
        *(v22 + v25) = *(v26 + (v25 & 0xFFFFFFFC)) >> (v24 & 0x18);
        ++v25;
        v24 += 8;
      }

      while (v23 != v25);
      v22 = *(result + 1512);
    }

    if (!*(result + 2012))
    {
      if (*(result + 1176))
      {
        v27 = *(*(result + 1160) + 4 * a2);
      }

      else
      {
        v27 = *(*(result + 1144) + 2 * a2);
      }

      a2 = v27 + a3;
    }

    v29 = *(result + 1132);
    if (v29 >= 1)
    {
      v30 = 0;
      v31 = *(result + 192) + 4 * (v29 * a2) + 4;
      v32 = (v20 + 4);
      do
      {
        *(v32 - 2) = *(v31 - 4);
        *v32 = *(v31 - 2);
        *(v32 - 1) = *v31;
        v32[1] = *(v31 + 2);
        v30 += 2;
        v31 += 8;
        v32 += 4;
      }

      while (v30 < *(result + 1132));
    }

    if (v19 >= 1)
    {
      for (j = 0; j != v19; ++j)
      {
        *(v21 + j) = (*(v22 + j) + 2 * *(v20 + 2 * j)) / (2 * *(v22 + j));
      }
    }

LABEL_59:
    if (*(result + 1108))
    {
      goto LABEL_60;
    }

LABEL_85:
    *a4 = v21;
    return result;
  }

  v15 = *(result + 1072);
  if (a2 >= v15)
  {
    v21 = *(result + 784) + *(result + 1120) * (a2 - v15);
    if (*(result + 1108))
    {
      goto LABEL_60;
    }

    goto LABEL_85;
  }

  v16 = a2;
  if (!*(result + 2012))
  {
    if (*(result + 1176))
    {
      v17 = *(*(result + 1160) + 4 * a2);
    }

    else
    {
      v17 = *(*(result + 1144) + 2 * a2);
    }

    v16 = v17 + a3;
  }

  v57 = *(result + 1120) * v16;
  if (*(result + 1080) <= a2)
  {
    v21 = *(result + 96) + v57;
    if (!*(result + 1108))
    {
      goto LABEL_85;
    }
  }

  else
  {
    v21 = *(result + 16) + v57;
    if (!*(result + 1108))
    {
      goto LABEL_85;
    }
  }

LABEL_60:
  v38 = *(result + 1512);
  *a4 = v38;
  v39 = *(result + 1120);
  if (v39 < 1)
  {
    return result;
  }

  if (v39 < 8 || v38 < v21 + v39 && v21 < &v38[2 * (v39 - 1) + 2])
  {
    v40 = v38;
    v41 = *(result + 1120);
    v42 = v21;
    goto LABEL_65;
  }

  if (v39 >= 0x20)
  {
    v45 = v39 & 0x7FFFFFE0;
    v46 = (v21 + 16);
    v47 = v38 + 32;
    v48.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v48.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v49 = v45;
    do
    {
      v50 = v47 - 32;
      v51 = v46[-1];
      v52 = *v46;
      v59.val[0] = vandq_s8(v51, v48);
      v59.val[1] = vshrq_n_u8(v51, 4uLL);
      vst2q_s8(v50, v59);
      v59.val[0] = vandq_s8(v52, v48);
      v59.val[1] = vshrq_n_u8(v52, 4uLL);
      vst2q_s8(v47, v59);
      v46 += 2;
      v47 += 64;
      v49 -= 32;
    }

    while (v49);
    if (v45 == v39)
    {
      return result;
    }

    if ((v39 & 0x18) == 0)
    {
      v42 = (v21 + v45);
      v41 = v39 - v45;
      v40 = &v38[2 * v45];
LABEL_65:
      v43 = v41 + 1;
      do
      {
        v44 = *v42++;
        *v40 = v44 & 0xF;
        v40[1] = v44 >> 4;
        v40 += 2;
        --v43;
      }

      while (v43 > 1);
      return result;
    }
  }

  else
  {
    v45 = 0;
  }

  v40 = &v38[2 * (v39 & 0x7FFFFFF8)];
  v41 = v39 - (v39 & 0x7FFFFFF8);
  v42 = (v21 + (v39 & 0x7FFFFFF8));
  v53 = (v21 + v45);
  v54 = v45 - (v39 & 0x7FFFFFF8);
  v55 = &v38[2 * v45];
  do
  {
    v56 = *v53++;
    v58.val[0] = vand_s8(v56, 0xF0F0F0F0F0F0F0FLL);
    v58.val[1] = vshr_n_u8(v56, 4uLL);
    vst2_s8(v55, v58);
    v55 += 16;
    v54 += 8;
  }

  while (v54);
  if ((v39 & 0x7FFFFFF8) != v39)
  {
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_1000017DC(uint64_t result, unsigned int a2, int a3, uint64_t a4, double a5, double a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10)
{
  v11 = a2;
  if (*(result + 1032))
  {
    v12 = *(result + 1072);
    if (a2 >= v12)
    {
      v11 = a2 - v12;
      v14 = 792;
    }

    else
    {
      if (!*(result + 2012))
      {
        if (*(result + 1176))
        {
          v13 = *(*(result + 1160) + 4 * a2);
        }

        else
        {
          v13 = *(*(result + 1144) + 2 * a2);
        }

        v11 = v13 + a3;
      }

      v14 = 152;
    }

    v18 = *(result + 1128);
    v19 = *(result + v14);
    v20 = *(result + 1520);
    v21 = *(result + 1100);
    if (*(result + 1108))
    {
      if (v21 >= 1)
      {
        v22 = 0;
        do
        {
          v23 = *(a4 + v22);
          v24 = *(result + 1771);
          if (v23 >= v24)
          {
            v23 = *(result + 1771);
          }

          v25 = *(result + 1770);
          if (v23 <= v25)
          {
            LOBYTE(v23) = *(result + 1770);
          }

          v26 = *(a4 + v22 + 1);
          if (v26 >= v24)
          {
            v26 = *(result + 1771);
          }

          if (v26 <= v25)
          {
            LOBYTE(v26) = *(result + 1770);
          }

          *v20++ = v23 + 16 * v26;
          v22 += 2;
        }

        while (v22 < *(result + 1100));
      }
    }

    else if (v21 >= 1)
    {
      v27 = 0;
      do
      {
        v28 = *(a4 + v27);
        if (v28 >= *(result + 1771))
        {
          v28 = *(result + 1771);
        }

        if (v28 <= *(result + 1770))
        {
          LOBYTE(v28) = *(result + 1770);
        }

        v20[v27++] = v28;
      }

      while (v27 < *(result + 1100));
    }

    v29 = *(result + 1120);
    if (v29 >= 4)
    {
      v30 = v18 * v11;
      v31 = (v18 * v11);
      v32 = *(result + 1520);
      v33 = v29 >> 2;
      if (v29 < 0x20 || (v34 = v19 + 4 * v30, v34 < v32 + 4 * v33) && v32 < v19 + 4 * (v33 + v31))
      {
        v35 = 0;
        goto LABEL_42;
      }

      if (v29 >= 0x40)
      {
        v35 = (v29 >> 2) & 0x1FFFFFF0;
        a7.i64[1] = 0xFFFFFF07FFFFFF06;
        a8.i64[1] = 0xFFFFFF03FFFFFF02;
        v48 = v35;
        v49 = *(result + 1520);
        do
        {
          v60 = vld4q_s8(v49);
          v49 += 64;
          v50 = vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v60.val[1], xmmword_1000F0C50), 8uLL), vqtbl1q_s8(v60.val[0], xmmword_1000F0C50));
          *(v34 + 32) = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v60.val[3], xmmword_1000F0C40), 0x18uLL), vshlq_n_s32(vqtbl1q_s8(v60.val[2], xmmword_1000F0C40), 0x10uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v60.val[1], xmmword_1000F0C40), 8uLL), vqtbl1q_s8(v60.val[0], xmmword_1000F0C40)));
          *(v34 + 48) = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v60.val[3], xmmword_1000F0C30), 0x18uLL), vshlq_n_s32(vqtbl1q_s8(v60.val[2], xmmword_1000F0C30), 0x10uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v60.val[1], xmmword_1000F0C30), 8uLL), vqtbl1q_s8(v60.val[0], xmmword_1000F0C30)));
          a9 = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v60.val[3], xmmword_1000F0C60), 0x18uLL), vshlq_n_s32(vqtbl1q_s8(v60.val[2], xmmword_1000F0C60), 0x10uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v60.val[1], xmmword_1000F0C60), 8uLL), vqtbl1q_s8(v60.val[0], xmmword_1000F0C60)));
          a10 = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v60.val[3], xmmword_1000F0C50), 0x18uLL), vshlq_n_s32(vqtbl1q_s8(v60.val[2], xmmword_1000F0C50), 0x10uLL)), v50);
          *v34 = a9;
          *(v34 + 16) = a10;
          v34 += 64;
          v48 -= 16;
        }

        while (v48);
        if (v35 == v33)
        {
          return result;
        }

        if ((v33 & 8) == 0)
        {
LABEL_42:
          v36 = v33 - v35;
          v37 = 4 * v35;
          v38 = (v19 + v37 + 4 * v31);
          v39 = (v37 + v32 + 1);
          do
          {
            v40 = *(v39 - 1);
            *v38 = v40;
            v41 = v40 | (*v39 << 8);
            *v38 = v41;
            v42 = v41 | (v39[1] << 16);
            *v38 = v42;
            *v38++ = v42 | (v39[2] << 24);
            v39 += 4;
            --v36;
          }

          while (v36);
          return result;
        }
      }

      else
      {
        v35 = 0;
      }

      v43 = v35;
      v35 = v33 & 0x1FFFFFF8;
      v44 = (v32 + 4 * v43);
      v45 = (v19 + 4 * v43 + 4 * v31);
      v46 = v43 - v35;
      do
      {
        *a7.i8 = vld4_s8(v44);
        v44 += 32;
        v47 = vorrq_s8(vshlq_n_s32(vqtbl1q_s8(a8, xmmword_1000F0C50), 8uLL), vqtbl1q_s8(a7, xmmword_1000F0C50));
        a8 = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(a10, xmmword_1000F0C60), 0x18uLL), vshlq_n_s32(vqtbl1q_s8(a9, xmmword_1000F0C60), 0x10uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(a8, xmmword_1000F0C60), 8uLL), vqtbl1q_s8(a7, xmmword_1000F0C60)));
        a7 = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(a10, xmmword_1000F0C50), 0x18uLL), vshlq_n_s32(vqtbl1q_s8(a9, xmmword_1000F0C50), 0x10uLL)), v47);
        *v45 = a8;
        v45[1] = a7;
        v45 += 2;
        v46 += 8;
      }

      while (v46);
      if (v35 != v33)
      {
        goto LABEL_42;
      }
    }
  }

  else if (*(result + 1036))
  {
    return sub_100001C10(result, a4, a2, a3, a5, a6, *a7.i64);
  }

  else
  {
    v15 = *(result + 1072);
    if (a2 >= v15)
    {
      v11 = a2 - v15;
      v17 = 784;
    }

    else
    {
      if (!*(result + 2012))
      {
        if (*(result + 1176))
        {
          v16 = *(*(result + 1160) + 4 * a2);
        }

        else
        {
          v16 = *(*(result + 1144) + 2 * a2);
        }

        v11 = v16 + a3;
      }

      v17 = 24;
    }

    v51 = (*(result + v17) + (*(result + 1120) * v11));
    v52 = *(result + 1100);
    if (*(result + 1108))
    {
      if (v52 >= 1)
      {
        v53 = 0;
        do
        {
          v54 = *(a4 + v53);
          v55 = *(result + 1771);
          if (v54 >= v55)
          {
            v54 = *(result + 1771);
          }

          v56 = *(result + 1770);
          if (v54 <= v56)
          {
            LOBYTE(v54) = *(result + 1770);
          }

          v57 = *(a4 + v53 + 1);
          if (v57 >= v55)
          {
            v57 = *(result + 1771);
          }

          if (v57 <= v56)
          {
            LOBYTE(v57) = *(result + 1770);
          }

          *v51++ = v54 + 16 * v57;
          v53 += 2;
        }

        while (v53 < *(result + 1100));
      }
    }

    else if (v52 >= 1)
    {
      v58 = 0;
      do
      {
        v59 = *(a4 + v58);
        if (v59 >= *(result + 1771))
        {
          v59 = *(result + 1771);
        }

        if (v59 <= *(result + 1770))
        {
          LOBYTE(v59) = *(result + 1770);
        }

        v51[v58++] = v59;
      }

      while (v58 < *(result + 1100));
    }
  }

  return result;
}

uint64_t sub_100001C10(uint64_t result, uint64_t a2, unsigned int a3, int a4, double a5, double a6, double a7)
{
  v7 = *(result + 1216);
  v8 = *(result + 1296);
  if (v7)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        v9 = 0;
        goto LABEL_11;
      }

      if (!*(result + 2012))
      {
        if (*(result + 1176))
        {
          v9 = *(*(result + 1160) + 4 * a3) + a4;
        }

        else
        {
          v9 = *(*(result + 1144) + 2 * a3) + a4;
        }

        goto LABEL_11;
      }
    }

    v9 = a3;
LABEL_11:
    v10 = v7 + *(result + 1124) * v9;
    goto LABEL_17;
  }

  if (v8 == 3)
  {
    goto LABEL_9;
  }

  if (v8 == 4)
  {
    if (*(result + 2012))
    {
LABEL_9:
      v9 = a3;
      goto LABEL_13;
    }

    if (*(result + 1176))
    {
      v25 = *(*(result + 1160) + 4 * a3);
    }

    else
    {
      v25 = *(*(result + 1144) + 2 * a3);
    }

    v9 = v25 + a4;
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  v10 = *(result + 1512);
  v11 = *(result + 1120);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = *(result + 1232) + 4 * (*(result + 1128) * v9);
    do
    {
      *(v10 + v13) = *(v14 + (v13 & 0xFFFFFFFC)) >> (v12 & 0x18);
      ++v13;
      v12 += 8;
    }

    while (v11 != v13);
    v10 = *(result + 1512);
  }

LABEL_17:
  if (!*(result + 2012))
  {
    if (*(result + 1176))
    {
      a3 = *(*(result + 1160) + 4 * a3) + a4;
      v15 = *(result + 184);
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    else
    {
      a3 = *(*(result + 1144) + 2 * a3) + a4;
      v15 = *(result + 184);
      if (!v15)
      {
        goto LABEL_25;
      }
    }

LABEL_19:
    v16 = v15 + 2 * (*(result + 1120) * a3);
    v17 = *(*(result + 1240) + 4 * v9);
    if (*(result + 1104) < 1)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v15 = *(result + 184);
  if (v15)
  {
    goto LABEL_19;
  }

LABEL_25:
  v16 = *(result + 1536);
  v17 = *(*(result + 1240) + 4 * v9);
  if (*(result + 1104) < 1)
  {
    goto LABEL_30;
  }

LABEL_26:
  v18 = 0;
  do
  {
    v19 = *(a2 + v18) * *(v10 + v18);
    if (v19 >= 0x400)
    {
      v19 = 1024;
    }

    *(v16 + 2 * v18) = v19;
    LOBYTE(a7) = *(v10 + v18);
    a7 = *&a7;
    v17 += ((v19 * v19) / a7 + 0.5);
    ++v18;
  }

  while (v18 < *(result + 1104));
LABEL_30:
  *(*(result + 168) + 4 * a3) = v17;
  v20 = *(result + 1132);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = *(result + 200) + 4 * (v20 * a3);
    v23 = (v16 + 4);
    do
    {
      v24 = (v22 + 4 * v21);
      *v24 = *(v23 - 2) | (*v23 << 16);
      v24[1] = *(v23 - 1) | (v23[1] << 16);
      v21 += 2;
      v23 += 4;
    }

    while (v21 < *(result + 1132));
  }

  return result;
}

_DWORD *sub_100001E44(_DWORD *result, unsigned __int8 *a2, _WORD *a3)
{
  if (result[278])
  {
    if (result[440])
    {
      if (result[275] >= 8)
      {
        v3 = 0;
        v4 = a3 + 4;
        do
        {
          v5 = *a2;
          v4[2] = v5 >> 4;
          v4[3] = v5 & 0xF;
          v6 = a2[1];
          *v4 = v6 >> 4;
          v4[1] = v6 & 0xF;
          v7 = a2[2];
          *(v4 - 2) = v7 >> 4;
          *(v4 - 1) = v7 & 0xF;
          v8 = a2[3];
          *(v4 - 4) = v8 >> 4;
          *(v4 - 3) = v8 & 0xF;
          a2 += 4;
          ++v3;
          v4 += 4;
        }

        while (v3 < result[275] / 8);
      }
    }

    else if (result[280] >= 1)
    {
      v10 = 0;
      do
      {
        v11 = a2[v10];
        *a3 = v11 & 0xF;
        a3[1] = v11 >> 4;
        a3 += 2;
        ++v10;
      }

      while (v10 < result[280]);
    }
  }

  else if (result[275] >= 1)
  {
    v9 = 0;
    do
    {
      a3[v9] = *&a2[2 * v9];
      ++v9;
    }

    while (v9 < result[275]);
  }

  return result;
}

uint64_t sub_100001F48(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 1296);
  if (v3 == 3)
  {
    return *(a1 + 1216) + *(a1 + 1124) * a2;
  }

  if (v3 != 4)
  {
    return *(a1 + 1216);
  }

  if (*(a1 + 2012))
  {
    return *(a1 + 1216) + *(a1 + 1124) * a2;
  }

  if (*(a1 + 1176))
  {
    v5 = *(*(a1 + 1160) + 4 * a2) + a3;
  }

  else
  {
    v5 = *(*(a1 + 1144) + 2 * a2) + a3;
  }

  return *(a1 + 1216) + *(a1 + 1124) * v5;
}

uint64_t sub_100001FC8(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 1296);
  if (v3 == 3)
  {
    return *(a1 + 1208) + 2 * (*(a1 + 1124) * a2);
  }

  if (v3 != 4)
  {
    return *(a1 + 1208);
  }

  if (*(a1 + 2012))
  {
    return *(a1 + 1208) + 2 * (*(a1 + 1124) * a2);
  }

  if (*(a1 + 1176))
  {
    v5 = *(*(a1 + 1160) + 4 * a2) + a3;
  }

  else
  {
    v5 = *(*(a1 + 1144) + 2 * a2) + a3;
  }

  return *(a1 + 1208) + 2 * *(a1 + 1124) * v5;
}

uint64_t sub_100002058(uint64_t result, unsigned int a2, int a3, void *a4, void *a5)
{
  *a4 = 0;
  *a5 = 0;
  v5 = *(result + 1072);
  v6 = __OFSUB__(a2, v5);
  LODWORD(v7) = a2 - v5;
  if (v7 < 0 == v6)
  {
    *a4 = *(result + 800) + 4 * v7;
    if (!*(result + 1044))
    {
      return result;
    }

    v7 = v7;
    v9 = 808;
    goto LABEL_12;
  }

  if (!*(result + 2012))
  {
    if (*(result + 1176))
    {
      v8 = *(*(result + 1160) + 4 * a2);
    }

    else
    {
      v8 = *(*(result + 1144) + 2 * a2);
    }

    a2 = v8 + a3;
  }

  *a4 = *(result + 40) + 4 * a2;
  if (*(result + 1044))
  {
    v7 = a2;
    v9 = 56;
LABEL_12:
    *a5 = *(result + v9) + 4 * v7;
  }

  return result;
}

uint64_t sub_1000020E0(uint64_t result, unsigned int a2, int a3, void *a4, void *a5)
{
  *a4 = 0;
  *a5 = 0;
  v5 = *(result + 1072);
  v6 = __OFSUB__(a2, v5);
  LODWORD(v7) = a2 - v5;
  if (v7 < 0 == v6)
  {
    *a4 = *(result + 816) + 2 * v7;
    if (!*(result + 1044))
    {
      return result;
    }

    v7 = v7;
    v9 = 824;
    goto LABEL_12;
  }

  if (!*(result + 2012))
  {
    if (*(result + 1176))
    {
      v8 = *(*(result + 1160) + 4 * a2);
    }

    else
    {
      v8 = *(*(result + 1144) + 2 * a2);
    }

    a2 = v8 + a3;
  }

  *a4 = *(result + 72) + 2 * a2;
  if (*(result + 1044))
  {
    v7 = a2;
    v9 = 88;
LABEL_12:
    *a5 = *(result + v9) + 2 * v7;
  }

  return result;
}

uint64_t sub_100002168(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 1296);
  if (v3 != 3)
  {
    if (v3 == 4)
    {
      if (!*(a1 + 2012))
      {
        if (*(a1 + 1176))
        {
          v4 = *(*(a1 + 1160) + 4 * a2);
        }

        else
        {
          v4 = *(*(a1 + 1144) + 2 * a2);
        }

        a2 = v4 + a3;
      }
    }

    else
    {
      a2 = 0;
    }
  }

  return *(a1 + 1224) + 4 * ((*(a1 + 1124) * a2) / 2);
}

uint64_t sub_1000021CC(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 1296);
  if (v3 == 3)
  {
    return *(a1 + 1240) + 4 * a2;
  }

  if (v3 != 4)
  {
    return *(a1 + 1240);
  }

  if (*(a1 + 2012))
  {
    return *(a1 + 1240) + 4 * a2;
  }

  if (*(a1 + 1176))
  {
    v5 = *(*(a1 + 1160) + 4 * a2) + a3;
  }

  else
  {
    v5 = *(*(a1 + 1144) + 2 * a2) + a3;
  }

  return *(a1 + 1240) + 4 * v5;
}

uint64_t sub_10000223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1344))
  {
    LOWORD(v12) = *(*(a1 + 1352) + 2 * (a4 + (a3 + *(a1 + 1884) * a2) * *(a1 + 1884)));
    return v12;
  }

  v13 = sub_1000C9F54(2 * *(a1 + 1096), a2, a3, a4, a5, a6, a7, a8);
  v14 = 1096;
  if (*(a1 + 1396) == a3)
  {
    v14 = 1392;
  }

  v15 = *(a1 + v14);
  if (v15 >= 1)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*(a1 + 1024) && *(a1 + 1884) <= a3)
      {
        v17 = sub_100019854(a1, a3, i);
      }

      else if (*(a1 + 1316))
      {
        v17 = *(*(a1 + 1328) + 2 * (i + *(a1 + 1096) * (a4 + (a3 + *(a1 + 1884) * a2) * *(a1 + 1884))));
      }

      else if (*(a1 + 1312))
      {
        v17 = sub_1000354D4(*(a1 + 1304), a2, a3, a4, i);
      }

      else
      {
        v17 = -1;
      }

      v13[i] = v17;
    }
  }

  v18 = *(a1 + 1384);
  v19 = v18 - 1;
  if (v18 < 1)
  {
LABEL_26:
    LOWORD(v12) = 0x7FFF;
    return v12;
  }

  v20 = *(a1 + 1096);
  v21 = *(a1 + 1368);
  if (v15 == 2)
  {
    v22 = 0;
    while (1)
    {
      v12 = (v19 + v22) >> 1;
      v23 = (v21 + 2 * (v20 * v12));
      v24 = *v13 - *v23;
      if (v24)
      {
        if (v24 < 0)
        {
          goto LABEL_19;
        }

LABEL_24:
        if (!v24)
        {
          goto LABEL_39;
        }

        v22 = v12 + 1;
        if ((v12 + 1) > v19)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = v13[1] - v23[1];
        if ((v24 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_19:
        v19 = v12 - 1;
        if (v22 > (v12 - 1))
        {
          goto LABEL_26;
        }
      }
    }
  }

  if (v15 < 1)
  {
    v12 = v19 >> 1;
LABEL_39:
    sub_1000CA03C(v13, 2 * v20);
  }

  else
  {
    v25 = 0;
    do
    {
      v12 = (v19 + v25) >> 1;
      v26 = (v21 + 2 * (v20 * v12));
      v27 = v13;
      v28 = v15;
      while (1)
      {
        v30 = *v27++;
        v29 = v30;
        v32 = *v26++;
        v31 = v32;
        if (v29 != v32)
        {
          break;
        }

        if (!--v28)
        {
          goto LABEL_39;
        }
      }

      if (v29 < v31)
      {
        v19 = v12 - 1;
      }

      else
      {
        v25 = v12 + 1;
      }

      LOWORD(v12) = 0x7FFF;
    }

    while (v25 <= v19);
  }

  return v12;
}

uint64_t sub_100002454(uint64_t a1, unsigned __int16 *a2, int a3, _WORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 2)
  {
    v16 = a6;
  }

  else
  {
    v12 = a3 + 1;
    v13 = a3;
    v14 = &a2[v13 - 2];
    v15 = &a4[v13 - 1];
    do
    {
      v16 = v14[1];
      v17 = *v14--;
      *v15-- = sub_10000223C(a1, v17, v16, a6, a5, a6, a7, a8);
      --v12;
      a6 = v16;
    }

    while (v12 > 2);
  }

  result = sub_10000223C(a1, a5, *a2, v16, a5, a6, a7, a8);
  *a4 = result;
  return result;
}

uint64_t sub_100002510(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100002528(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 744);
  v12 = v11[10];
  if (v12)
  {
    v13 = 0;
    v14 = *(v12 + 8 * a3) + *(*(v11[11] + 8 * a3) + 2 * a4);
    v15 = (v11[6] + 2 * a3);
    v16 = *v15;
    v17 = v15[1];
    v18 = (v14 + 3);
    v19 = *(v14 + 2);
    v20 = v16;
    if (!*(v14 + 2))
    {
      goto LABEL_8;
    }

    do
    {
LABEL_5:
      if (v19)
      {
        a2[v13] = v16;
        v13 = (v13 + 1);
      }

      v19 >>= 1;
      ++v16;
    }

    while (v19);
LABEL_8:
    while (1)
    {
      v16 = v20 + 8;
      if (v17 <= (v20 + 8))
      {
        break;
      }

      v21 = *v18++;
      v19 = v21;
      v20 += 8;
      if (v21)
      {
        goto LABEL_5;
      }
    }

    a2[v13] = *v14;
  }

  else
  {
    v23 = *(a1 + 1884);
    v24 = sub_10000223C(a1, 0, a3, a4, a5, a6, a7, a8);
    *a2 = v24;
    if (v23 < 1)
    {
      v13 = 1;
    }

    else
    {
      v29 = 0;
      v13 = 1;
      do
      {
        v30 = sub_10000223C(a1, v29, a3, a4, v25, v26, v27, v28);
        if (v13 < 1 || *a2 == v30)
        {
          v31 = 0;
        }

        else
        {
          v32 = 0;
          do
          {
            v31 = ++v32;
          }

          while (v13 > v32 && a2[v32] != v30);
        }

        if (v13 == v31)
        {
          a2[v13] = v30;
          v13 = (v13 + 1);
        }

        ++v29;
      }

      while (v23 > v29);
      v24 = *a2;
    }

    a2[v13] = v24;
    qsort(a2, v13, 2uLL, sub_100002510);
  }

  return v13;
}

uint64_t sub_1000026C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = *(*(a1 + 744) + 96);
  if (v6)
  {
    return (byte_1000F1D9C[a2 & 7] & *(v6 + 8 * a5 + (a2 >> 3))) != 0;
  }

  if (!a3)
  {
    return *(a1 + 1390) == a5;
  }

  LODWORD(v10) = *(a1 + 1096);
  if (v10 >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 1368) + 2 * (v10 * a5);
    do
    {
      if (*(a1 + 1024) && *(a1 + 1884) <= a3)
      {
        v14 = sub_100019854(a1, a3, v12) == *(v13 + 2 * v12);
        result = v14;
        if (!v14)
        {
          return result;
        }
      }

      else if (*(a1 + 1316))
      {
        result = *(*(a1 + 1328) + 2 * (v12 + (a4 + (a3 + *(a1 + 1884) * a2) * *(a1 + 1884)) * v10)) == *(v13 + 2 * v12);
        if (*(*(a1 + 1328) + 2 * (v12 + (a4 + (a3 + *(a1 + 1884) * a2) * *(a1 + 1884)) * v10)) != *(v13 + 2 * v12))
        {
          return result;
        }
      }

      else if (*(a1 + 1312))
      {
        v14 = sub_1000354D4(*(a1 + 1304), a2, a3, a4, v12) == *(v13 + 2 * v12);
        result = v14;
        if (!v14)
        {
          return result;
        }
      }

      else
      {
        v15 = *(v13 + 2 * v12);
        result = v15 == 0xFFFF;
        if (v15 != 0xFFFF)
        {
          return result;
        }
      }

      ++v12;
      v10 = *(a1 + 1096);
    }

    while (v12 < v10);
  }

  return 1;
}

BOOL sub_10000285C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 744);
  v4 = *(a1 + 1884);
  v5 = v4 - 1;
  if (v4 > 1)
  {
    v8 = v3[6];
    v9 = 1;
    v10 = v5;
    do
    {
      v11 = (v9 + v10) >> 1;
      if (*(v8 + 2 * v11) > a2)
      {
        v10 = v11 - 1;
      }

      else
      {
        v9 = v11 + 1;
      }
    }

    while (v9 <= v10);
    v12 = 1;
    do
    {
      v13 = (v12 + v5) >> 1;
      if (*(v8 + 2 * v13) > a3)
      {
        v5 = v13 - 1;
      }

      else
      {
        v12 = v13 + 1;
      }
    }

    while (v12 <= v5);
    v7 = (v12 - 1);
    v6 = (v9 - 1);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = v3[6];
  }

  v14 = a2 - *(v8 + 2 * v6);
  if ((byte_1000F1D9C[v14 & 7] & *(*(v3[10] + 8 * v6) + *(*(v3[11] + 8 * v6) + 2 * v7) + (v14 >> 3) + 2)) == 0)
  {
    return 0;
  }

  v15 = a3 - *(v8 + 2 * v7);
  return (byte_1000F1D9C[v15 & 7] & *(*(v3[7] + 8 * v7) + *(*(v3[8] + 8 * v7) + 2 * v6) + (v15 >> 3) + 2)) != 0;
}

uint64_t sub_100002968(uint64_t result, int a2)
{
  v2 = sub_100011FB8;
  if (a2 != 5)
  {
    if (a2 != 2)
    {
      return result;
    }

    v2 = sub_100011D3C;
  }

  *(result + 1616) = v2;
  return result;
}

void sub_100002998(uint64_t a1, int32x4_t a2, double a3, int32x4_t a4, int32x4_t a5, int8x16_t a6, int8x16_t a7)
{
  v8 = *(a1 + 1100);
  if (v8 >= 1)
  {
    v9 = *(a1 + 1770);
    v10 = v8 - 1;
    do
    {
      *(*(a1 + 1544) + v10) = v9;
      v11 = v10-- + 1;
    }

    while (v11 > 1);
  }

  if (*(a1 + 1036))
  {
    v12 = *(a1 + 1100);
    if (v12 >= 1)
    {
      v13 = v12 - 1;
      do
      {
        v14 = *(*(a1 + 1544) + v13);
        *(*(a1 + 1584) + 2 * v13) = v14 * v14;
        v15 = v13-- + 1;
      }

      while (v15 > 1);
    }

    sub_100002D08(a1, a2, a3, a4, a5, a6, a7);
  }

  sub_100012594(a1);
  *(a1 + 1600) = 0xFFFF;
}

void sub_100002A38(uint64_t a1, uint64_t a2, int a3, int32x4_t a4, double a5, int32x4_t a6, int32x4_t a7, int8x16_t a8, int8x16_t a9)
{
  if (a2)
  {
    if (!*(a1 + 992) || !*(a1 + 448) && !*(a1 + 456))
    {
      if (*(a1 + 1776))
      {
        v12 = *(a1 + 1100);
        if (v12 >= 1)
        {
          v13 = 1 << (*(a1 + 1784) - 1);
          v14 = v12 - 1;
          do
          {
            v15 = ((v13 + *(a2 + v14)) >> *(a1 + 1784)) - *(a1 + 1788);
            if (v15 >= *(a1 + 1771))
            {
              v15 = *(a1 + 1771);
            }

            if (v15 <= *(a1 + 1770))
            {
              LOBYTE(v15) = *(a1 + 1770);
            }

            *(*(a1 + 1544) + v14) = v15;
            v16 = v14-- + 1;
          }

          while (v16 > 1);
        }
      }

      else
      {
        v21 = *(a1 + 1100);
        if (v21 >= 1)
        {
          v22 = v21 - 1;
          do
          {
            *(*(a1 + 1544) + v22) = *(a2 + v22);
            v23 = v22-- + 1;
          }

          while (v23 > 1);
        }
      }
    }
  }

  else
  {
    v17 = *(a1 + 1100);
    if (v17 >= 1)
    {
      v18 = *(a1 + 1770);
      v19 = v17 - 1;
      do
      {
        *(*(a1 + 1544) + v19) = v18;
        v20 = v19-- + 1;
      }

      while (v20 > 1);
    }
  }

  if (*(a1 + 1036))
  {
    v24 = *(a1 + 1100);
    if (v24 >= 1)
    {
      v25 = v24 - 1;
      do
      {
        v26 = *(*(a1 + 1544) + v25);
        *(*(a1 + 1584) + 2 * v25) = v26 * v26;
        v27 = v25-- + 1;
      }

      while (v27 > 1);
    }

    *a4.i64 = sub_100002D08(a1, a4, a5, a6, a7, a8, a9);
  }

  if (a3)
  {
    if (*(a1 + 1032))
    {
      if (!*(a1 + 1760))
      {
        sub_100002D08(a1, a4, a5, a6, a7, a8, a9);
        if (*(a1 + 1004))
        {
LABEL_31:
          if (*(a1 + 656))
          {
            v30 = *(a1 + 1656);

            v30(a1);
            return;
          }
        }

LABEL_36:
        if (*(a1 + 1016) && *(a1 + 976))
        {
          v31 = *(a1 + 960);
          v32 = *(a1 + 944);

          v31(v32, a2, a1);
        }

        return;
      }

      v28 = *(a1 + 1544);
      v29 = *(a1 + 1560);
      *v29 = (v28[6] << 24) | (v28[7] << 28) | (v28[5] << 20) | (v28[4] << 16) | (v28[3] << 12) | (v28[2] << 8) | (16 * v28[1]) | *v28;
      v29[1] = (v28[14] << 24) | (v28[15] << 28) | (v28[13] << 20) | (v28[12] << 16) | (v28[11] << 12) | (v28[10] << 8) | (16 * v28[9]) | v28[8];
      v29[2] = (v28[22] << 24) | (v28[23] << 28) | (v28[21] << 20) | (v28[20] << 16) | (v28[19] << 12) | (v28[18] << 8) | (16 * v28[17]) | v28[16];
    }

    if (*(a1 + 1004))
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }
}

double sub_100002D08(uint64_t a1, int32x4_t a2, double a3, int32x4_t a4, int32x4_t a5, int8x16_t a6, int8x16_t a7)
{
  v7 = *(a1 + 1544);
  v8 = *(a1 + 1104);
  if (v8 < 9)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v9 = v8 - 8;
  if ((v8 - 8) < 4)
  {
    v10 = 0;
    v11 = *(a1 + 1104);
    goto LABEL_16;
  }

  if (v9 >= 0x20)
  {
    v13 = 0uLL;
    v12 = v9 & 0xFFFFFFFFFFFFFFE0;
    v14 = 0uLL;
    v15 = &v7[v8 - 16];
    v16 = v9 & 0xFFFFFFFFFFFFFFE0;
    v17 = 0uLL;
    v18 = 0uLL;
    a6 = 0uLL;
    v19 = 0uLL;
    a7 = 0uLL;
    v20 = 0uLL;
    do
    {
      v21 = vrev64q_s8(*v15);
      v22 = vextq_s8(v21, v21, 8uLL);
      v23 = vrev64q_s8(v15[-1]);
      v24 = vextq_s8(v23, v23, 8uLL);
      v25 = vmull_u8(*v22.i8, *v22.i8);
      v26 = vmull_high_u8(v22, v22);
      v27 = vmull_u8(*v24.i8, *v24.i8);
      v28 = vmull_high_u8(v24, v24);
      v18 = vaddw_high_u16(v18, v26);
      v17 = vaddw_u16(v17, *v26.i8);
      v14 = vaddw_high_u16(v14, v25);
      v13 = vaddw_u16(v13, *v25.i8);
      v20 = vaddw_high_u16(v20, v28);
      a7 = vaddw_u16(a7, *v28.i8);
      v19 = vaddw_high_u16(v19, v27);
      a6 = vaddw_u16(a6, *v27.i8);
      v15 -= 2;
      v16 -= 32;
    }

    while (v16);
    a5 = vaddq_s32(v20, v18);
    a4 = vaddq_s32(a7, v17);
    a2 = vaddq_s32(vaddq_s32(vaddq_s32(a6, v13), a4), vaddq_s32(vaddq_s32(v19, v14), a5));
    a2.i32[0] = vaddvq_s32(a2);
    v10 = a2.i32[0];
    if (v9 == v12)
    {
      goto LABEL_17;
    }

    if ((v9 & 0x1C) == 0)
    {
      v11 = v8 - v12;
      do
      {
LABEL_16:
        v10 += v7[v11 - 1] * v7[v11 - 1];
      }

      while (v11-- > 9);
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  a2 = v10;
  v11 = v8 - (v9 & 0xFFFFFFFFFFFFFFFCLL);
  v29 = &v7[v8 - v12 - 4];
  v30 = v12 - (v9 & 0xFFFFFFFFFFFFFFFCLL);
  v31.i64[0] = 0xFF000000FFLL;
  v31.i64[1] = 0xFF000000FFLL;
  do
  {
    v32 = *v29--;
    a4.i32[0] = v32;
    a4 = vandq_s8(vmovl_u16(vrev64_s16(*&vmovl_u8(*a4.i8))), v31);
    a2 = vmlaq_s32(a2, a4, a4);
    v30 += 4;
  }

  while (v30);
  a2.i32[0] = vaddvq_s32(a2);
  v10 = a2.i32[0];
  if (v9 != (v9 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_16;
  }

LABEL_17:
  v34 = v7[7] * v7[7] + v7[6] * v7[6] + v7[5] * v7[5] + v7[4] * v7[4] + v7[3] * v7[3] + v7[2] * v7[2] + v7[1] * v7[1] + *v7 * *v7;
  *(a1 + 1572) = v34;
  *(a1 + 1576) = v10;
  *(a1 + 1568) = v34 + v10;
  v35 = *(a1 + 1552);
  if (*(a1 + 1108))
  {
    *v35 = (v7[2] << 24) | (v7[3] << 28) | (v7[1] << 20) | (*v7 << 16) | (v7[7] << 12) | (v7[6] << 8) | (16 * v7[5]) | v7[4];
    v35[1] = (v7[10] << 24) | (v7[11] << 28) | (v7[9] << 20) | (v7[8] << 16) | (v7[15] << 12) | (v7[14] << 8) | (16 * v7[13]) | v7[12];
    v35[2] = (v7[18] << 24) | (v7[19] << 28) | (v7[17] << 20) | (v7[16] << 16) | (v7[23] << 12) | (v7[22] << 8) | (16 * v7[21]) | v7[20];
    goto LABEL_19;
  }

  v36 = *(a1 + 1100);
  v37 = v36 - 24;
  *v35 = (v7[1] << 24) | (*v7 << 16) | (v7[3] << 8) | v7[2];
  v35[1] = (v7[5] << 24) | (v7[4] << 16) | (v7[7] << 8) | v7[6];
  v35[2] = (v7[9] << 24) | (v7[8] << 16) | (v7[11] << 8) | v7[10];
  v35[3] = (v7[13] << 24) | (v7[12] << 16) | (v7[15] << 8) | v7[14];
  v35[4] = (v7[17] << 24) | (v7[16] << 16) | (v7[19] << 8) | v7[18];
  v35[5] = (v7[21] << 24) | (v7[20] << 16) | (v7[23] << 8) | v7[22];
  v38 = v36 - 25;
  if (v36 >= 25)
  {
    v39 = v7 + 24;
    v40 = v35 + 6;
    if (v38 < 0x1C || (v41 = (v38 & 0xFFFFFFFC) + 28, v40 < &v7[v41]) && v39 < v35 + v41)
    {
      v42 = 0;
      goto LABEL_27;
    }

    v55 = (v38 >> 2) + 1;
    if (v38 >= 0x3C)
    {
      v56 = v55 & 0x7FFFFFF0;
      a2.i64[0] = 0xFFFFFF01FFFFFF00;
      a4.i64[1] = 0xFFFFFF0BFFFFFF0ALL;
      a5.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
      v73 = v56;
      v74 = (v7 + 24);
      v75 = (v35 + 6);
      do
      {
        v81 = vld4q_s8(v74);
        v74 += 64;
        v76 = vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v81.val[0], xmmword_1000F0C50), 0x10uLL), vshlq_n_s32(vqtbl1q_s8(v81.val[1], xmmword_1000F0C50), 0x18uLL));
        v75[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v81.val[0], xmmword_1000F0C40), 0x10uLL), vshlq_n_s32(vqtbl1q_s8(v81.val[1], xmmword_1000F0C40), 0x18uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v81.val[3], xmmword_1000F0C40), 8uLL), vqtbl1q_s8(v81.val[2], xmmword_1000F0C40)));
        v75[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v81.val[0], xmmword_1000F0C30), 0x10uLL), vshlq_n_s32(vqtbl1q_s8(v81.val[1], xmmword_1000F0C30), 0x18uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v81.val[3], xmmword_1000F0C30), 8uLL), vqtbl1q_s8(v81.val[2], xmmword_1000F0C30)));
        a6 = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v81.val[0], xmmword_1000F0C60), 0x10uLL), vshlq_n_s32(vqtbl1q_s8(v81.val[1], xmmword_1000F0C60), 0x18uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v81.val[3], xmmword_1000F0C60), 8uLL), vqtbl1q_s8(v81.val[2], xmmword_1000F0C60)));
        a7 = vorrq_s8(v76, vorrq_s8(vshlq_n_s32(vqtbl1q_s8(v81.val[3], xmmword_1000F0C50), 8uLL), vqtbl1q_s8(v81.val[2], xmmword_1000F0C50)));
        *v75 = a6;
        v75[1] = a7;
        v75 += 4;
        v73 -= 16;
      }

      while (v73);
      if (v56 == v55)
      {
        goto LABEL_29;
      }

      if ((v55 & 8) == 0)
      {
        v40 += v56;
        v39 += 4 * v56;
        v42 = 4 * v56;
LABEL_27:
        v43 = v39 + 1;
        do
        {
          *v40++ = (*v43 << 24) | (*(v43 - 1) << 16) | (v43[2] << 8) | v43[1];
          v42 += 4;
          v43 += 4;
        }

        while (v42 < v37);
        goto LABEL_29;
      }
    }

    else
    {
      v56 = 0;
    }

    v42 = 4 * (v55 & 0x7FFFFFF8);
    v57 = 4 * (v55 & 0x7FFFFFF8);
    v39 += v57;
    v40 = (v40 + v57);
    v58 = 4 * v56 + 24;
    v59 = (v35 + v58);
    v60 = &v7[v58];
    v61 = v56 - (v55 & 0x7FFFFFF8);
    a2.i64[0] = 0xFFFFFF01FFFFFF00;
    do
    {
      *a4.i8 = vld4_s8(v60);
      v60 += 32;
      v62 = vorrq_s8(vshlq_n_s32(vqtbl1q_s8(a4, xmmword_1000F0C50), 0x10uLL), vshlq_n_s32(vqtbl1q_s8(a5, xmmword_1000F0C50), 0x18uLL));
      a4 = vorrq_s8(vorrq_s8(vshlq_n_s32(vqtbl1q_s8(a4, xmmword_1000F0C60), 0x10uLL), vshlq_n_s32(vqtbl1q_s8(a5, xmmword_1000F0C60), 0x18uLL)), vorrq_s8(vshlq_n_s32(vqtbl1q_s8(a7, xmmword_1000F0C60), 8uLL), vqtbl1q_s8(a6, xmmword_1000F0C60)));
      a5 = vorrq_s8(v62, vorrq_s8(vshlq_n_s32(vqtbl1q_s8(a7, xmmword_1000F0C50), 8uLL), vqtbl1q_s8(a6, xmmword_1000F0C50)));
      *v59 = a4;
      v59[1] = a5;
      v59 += 2;
      v61 += 8;
    }

    while (v61);
    if ((v55 & 0x7FFFFFF8) != v55)
    {
      goto LABEL_27;
    }
  }

LABEL_29:
  if (*(a1 + 1036))
  {
    v44 = *(a1 + 1584);
    v45 = *(a1 + 1592);
    *v45 = v44[2] | (*v44 << 16);
    v45[1] = v44[3] | (v44[1] << 16);
    v45[2] = v44[6] | (v44[4] << 16);
    v45[3] = v44[7] | (v44[5] << 16);
    v45[4] = v44[10] | (v44[8] << 16);
    v45[5] = v44[11] | (v44[9] << 16);
    v45[6] = v44[14] | (v44[12] << 16);
    v45[7] = v44[15] | (v44[13] << 16);
    v45[8] = v44[18] | (v44[16] << 16);
    v45[9] = v44[19] | (v44[17] << 16);
    v45[10] = v44[22] | (v44[20] << 16);
    v45[11] = v44[23] | (v44[21] << 16);
    _VF = __OFSUB__(v36, 25);
    v47 = v36 - 25;
    if (v47 < 0 == _VF)
    {
      v48 = (v44 + 24);
      v49 = (v45 + 12);
      if (v47 < 0x1C || (v50 = v47 >> 2, v51 = 8 * v50 + 56, v49 < (v44 + v51)) && v48 < (v45 + v51))
      {
        v52 = 0;
        v53 = v49;
        v54 = v48;
        do
        {
LABEL_35:
          *v53 = v54[2] | (*v54 << 16);
          *(v53 + 1) = v54[3] | (v54[1] << 16);
          v53 += 2;
          v54 += 4;
          v52 += 4;
        }

        while (v52 < v37);
        goto LABEL_19;
      }

      v63 = v50 + 1;
      v64 = 4 * (v63 & 0x7FFFFFF8);
      v53 = &v49[v64 / 2];
      v54 = &v48[v64];
      v52 = 4 * (v63 & 0x7FFFFFF8);
      v65 = v63 & 0x7FFFFFF8;
      do
      {
        v80 = vld4q_s16(v48);
        v48 += 32;
        __asm { SHLL2           V5.4S, V0.8H, #0x10 }

        v79.val[0] = vorrq_s8(_Q5, vmovl_high_u16(v80.val[2]));
        __asm { SHLL2           V5.4S, V1.8H, #0x10 }

        v79.val[1] = vorrq_s8(_Q5, vmovl_high_u16(v80.val[3]));
        v78.val[0] = vorrq_s8(vshll_n_s16(*v80.val[0].i8, 0x10uLL), vmovl_u16(*v80.val[2].i8));
        v71 = v49 + 16;
        a2 = vmovl_u16(*v80.val[3].i8);
        v78.val[1] = vorrq_s8(vshll_n_s16(*v80.val[1].i8, 0x10uLL), a2);
        vst2q_f32(v49, v78);
        v72 = v49 + 8;
        vst2q_f32(v72, v79);
        v49 = v71;
        v65 -= 8;
      }

      while (v65);
      if ((v63 & 0x7FFFFFF8) != v63)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_19:
  if (*(a1 + 1044))
  {
    *a2.i8 = vsub_s32(*(a1 + 1056), *(a1 + 1572));
    *(a1 + 1064) = a2.i64[0];
  }

  return *a2.i64;
}

BOOL sub_10000348C(uint64_t a1)
{
  if (!*(a1 + 1856))
  {
    return 0;
  }

  v1 = *(a1 + 1388);
  v2 = *(*(a1 + 1792) + 2 * v1);
  if (v2 == 0x4000)
  {
    v3 = a1;
    LOWORD(v2) = sub_100012668(a1, v1);
    a1 = v3;
  }

  v4 = (sub_10000EDDC(a1) - v2);
  v5 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v5 = *(qword_1001065A8 + 536);
  }

  return v5 < v4;
}

uint64_t sub_100003508(uint64_t result, float64x2_t *a2, unint64_t a3)
{
  v3 = *(result + 1100);
  if (v3 < 1)
  {
    return result;
  }

  v4 = *(result + 1771);
  v5 = *(result + 1770);
  if (v3 < 4 || (&a2->f64[v3] > a3 ? (v6 = a3 + v3 > a2) : (v6 = 0), v6))
  {
    v14 = 0;
  }

  else
  {
    v7 = vdupq_n_s32(v4);
    v8 = vdupq_n_s32(v5);
    __asm { FMOV            V2.2D, #0.5 }

    if (v3 >= 0x10)
    {
      v14 = v3 & 0x7FFFFFF0;
      v20 = v14;
      v21 = a3;
      v22 = a2;
      do
      {
        v24 = v22[6];
        v23 = v22[7];
        v26 = v22[4];
        v25 = v22[5];
        v28 = v22[2];
        v27 = v22[3];
        v30 = *v22;
        v29 = v22[1];
        v22 += 8;
        v31 = vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(v24, _Q2)), vcvtq_s64_f64(vaddq_f64(v23, _Q2)));
        v32 = vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(v26, _Q2)), vcvtq_s64_f64(vaddq_f64(v25, _Q2)));
        v33 = vminq_s32(vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(v30, _Q2)), vcvtq_s64_f64(vaddq_f64(v29, _Q2))), v7);
        v40.val[3] = vmaxq_s32(vminq_s32(v31, v7), v8);
        v40.val[2] = vmaxq_s32(vminq_s32(v32, v7), v8);
        v40.val[1] = vmaxq_s32(vminq_s32(vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(v28, _Q2)), vcvtq_s64_f64(vaddq_f64(v27, _Q2))), v7), v8);
        v40.val[0] = vmaxq_s32(v33, v8);
        *v21++ = vqtbl4q_s8(v40, xmmword_1000F0C70);
        v20 -= 16;
      }

      while (v20);
      if (v14 == v3)
      {
        return result;
      }

      if ((v3 & 0xC) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = 0;
    }

    v34 = v14;
    v14 = v3 & 0x7FFFFFFC;
    v35 = (a2 + 8 * v34);
    v36 = (a3 + v34);
    v37 = v34 - v14;
    do
    {
      v39 = *v35;
      v38 = v35[1];
      v35 += 2;
      *v36++ = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(v39, _Q2)), vcvtq_s64_f64(vaddq_f64(v38, _Q2))), v7), v8)), *v7.i8).u32[0];
      v37 += 4;
    }

    while (v37);
    if (v14 == v3)
    {
      return result;
    }
  }

LABEL_10:
  v15 = v3 - v14;
  v16 = (a3 + v14);
  v17 = &a2->f64[v14];
  do
  {
    v18 = *v17++;
    v19 = (v18 + 0.5);
    if (v19 >= v4)
    {
      v19 = v4;
    }

    if (v19 <= v5)
    {
      LOBYTE(v19) = v5;
    }

    *v16++ = v19;
    --v15;
  }

  while (v15);
  return result;
}

uint64_t sub_1000036A0(uint64_t result, int32x4_t *a2, unint64_t a3)
{
  v3 = *(result + 1100);
  if (v3 < 1)
  {
    return result;
  }

  v4 = *(result + 1773);
  v5 = *(result + 1772);
  if (v3 < 4 || (a2 + 4 * v3 > a3 ? (v6 = a3 + v3 > a2) : (v6 = 0), v6))
  {
    v9 = 0;
  }

  else
  {
    v7 = vdupq_n_s32(v4);
    v8 = vdupq_n_s32(v5);
    if (v3 >= 0x20)
    {
      v9 = v3 & 0x7FFFFFE0;
      v15 = a2 + 4;
      v16 = (a3 + 16);
      v17 = v9;
      do
      {
        v24.val[1] = vmaxq_s32(vminq_s32(v15[-3], v7), v8);
        v24.val[0] = vmaxq_s32(vminq_s32(v15[-4], v7), v8);
        v24.val[2] = vmaxq_s32(vminq_s32(v15[-2], v7), v8);
        v24.val[3] = vmaxq_s32(vminq_s32(v15[-1], v7), v8);
        v23.val[1] = vmaxq_s32(vminq_s32(v15[1], v7), v8);
        v23.val[0] = vmaxq_s32(vminq_s32(*v15, v7), v8);
        v23.val[2] = vmaxq_s32(vminq_s32(v15[2], v7), v8);
        v23.val[3] = vmaxq_s32(vminq_s32(v15[3], v7), v8);
        v16[-1] = vqtbl4q_s8(v24, xmmword_1000F0C70);
        *v16 = vqtbl4q_s8(v23, xmmword_1000F0C70);
        v15 += 8;
        v16 += 2;
        v17 -= 32;
      }

      while (v17);
      if (v9 == v3)
      {
        return result;
      }

      if ((v3 & 0x1C) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
    }

    v18 = v9;
    v9 = v3 & 0x7FFFFFFC;
    v19 = (a2 + 4 * v18);
    v20 = (a3 + v18);
    v21 = v18 - v9;
    do
    {
      v22 = *v19++;
      *v20++ = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(v22, v7), v8)), *v7.i8).u32[0];
      v21 += 4;
    }

    while (v21);
    if (v9 == v3)
    {
      return result;
    }
  }

LABEL_10:
  v10 = (a3 + v9);
  v11 = &a2->i32[v9];
  v12 = v3 - v9;
  do
  {
    v14 = *v11++;
    v13 = v14;
    if (v14 >= v4)
    {
      v13 = v4;
    }

    if (v13 <= v5)
    {
      LOBYTE(v13) = v5;
    }

    *v10++ = v13;
    --v12;
  }

  while (v12);
  return result;
}

uint64_t sub_1000037F0(uint64_t result, uint8x16_t *a2, double a3, double a4, uint8x16_t a5)
{
  v5 = *(result + 1100);
  if (v5 < 1)
  {
    return result;
  }

  v6 = *(result + 1772);
  v7 = *(result + 1773);
  if (v5 >= 4)
  {
    if (v5 >= 0x20)
    {
      v8 = v5 & 0x7FFFFFE0;
      v9 = vdupq_n_s8(v7);
      v10 = vdupq_n_s8(v6);
      v11 = a2 + 1;
      v12 = v8;
      do
      {
        a5 = vmaxq_u8(vminq_u8(v11[-1], v9), v10);
        v13 = vmaxq_u8(vminq_u8(*v11, v9), v10);
        v11[-1] = a5;
        *v11 = v13;
        v11 += 2;
        v12 -= 32;
      }

      while (v12);
      if (v8 == v5)
      {
        return result;
      }

      if ((v5 & 0x1C) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = 0;
    }

    v14 = v8;
    v8 = v5 & 0x7FFFFFFC;
    v15 = vdup_n_s16(v7);
    v16 = vdup_n_s16(v6);
    v17 = (a2->u32 + v14);
    v18 = v14 - v8;
    do
    {
      a5.i32[0] = *v17;
      *a5.i8 = vuzp1_s8(vmax_u16(vmin_u16(*&vmovl_u8(*a5.i8), v15), v16), v15);
      *v17++ = a5.i32[0];
      v18 += 4;
    }

    while (v18);
    if (v8 == v5)
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:
  v19 = &a2->u8[v8];
  v20 = v5 - v8;
  do
  {
    v21 = *v19;
    if (v21 >= v7)
    {
      v21 = v7;
    }

    if (v21 <= v6)
    {
      LOBYTE(v21) = v6;
    }

    *v19++ = v21;
    --v20;
  }

  while (v20);
  return result;
}

uint64_t sub_1000038D8(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    v4 = *(result + 1016) != 0;
    *a2 = v4;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    *a2 = 0;
    if (a4)
    {
LABEL_3:
      v5 = *(result + 1004);
      *(a2 + 4) = v5 != 0;
      if (!*(result + 1008))
      {
        if (v5)
        {
          v6 = *(result + 1640);
          v7 = *(result + 1648);
          *(a2 + 16) = v6;
          *(a2 + 24) = v6;
          *(a2 + 32) = v7;
          return result;
        }

        goto LABEL_9;
      }

LABEL_8:
      v8 = *(result + 1640);
      *(a2 + 16) = v8;
      *(a2 + 24) = v8;
      *(a2 + 32) = 0;
      return result;
    }
  }

  *(a2 + 4) = 0;
  if (*(result + 1008))
  {
    goto LABEL_8;
  }

LABEL_9:
  v9 = *(result + 1632);
  v10 = *(result + 1624);
  if (v4)
  {
    *(a2 + 16) = *(result + 1728);
  }

  else
  {
    *(a2 + 16) = v10;
  }

  *(a2 + 24) = v10;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_100003974(uint64_t result)
{
  if (result)
  {
    return sub_1000BFEC4(result);
  }

  return result;
}

uint64_t sub_100003980(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, unsigned __int16 a5, int a6, int32x4_t a7, double a8, int32x4_t a9, int32x4_t a10, int8x16_t a11, int8x16_t a12)
{
  v16 = *(a1 + 1600);
  v17 = v16 != a5;
  v18 = *(a1 + 1388);
  *(a1 + 1600) = a5;
  if (a6)
  {
    v19 = a2;
    sub_100012594(a1);
    a2 = v19;
LABEL_3:
    *(a1 + 1974) = 0x4000;
    goto LABEL_4;
  }

  if (v16 != a5)
  {
    *(*(a1 + 1792) + 2 * v18) = 0x4000;
    v33 = *(a1 + 1824);
    if (v33 < *(a1 + 1828))
    {
      v34 = *(a1 + 1832);
      *(a1 + 1824) = v33 + 1;
      *(v34 + 2 * v33) = v18;
    }

    v35 = *(a1 + 1960);
    if (v35 != 0xFFFF)
    {
      *(*(a1 + 1792) + 2 * v35) = 0x4000;
      v36 = *(a1 + 1824);
      if (v36 < *(a1 + 1828))
      {
        v37 = *(a1 + 1960);
        v38 = *(a1 + 1832);
        *(a1 + 1824) = v36 + 1;
        *(v38 + 2 * v36) = v37;
      }
    }

    goto LABEL_3;
  }

LABEL_4:
  *(a1 + 1704) = *(a4 + 24);
  *(a1 + 1712) = *(a4 + 16);
  *(a1 + 1720) = *(a4 + 32);
  if (*(a1 + 1016))
  {
    *(a1 + 976) = *a4;
  }

  if (*(a1 + 1004))
  {
    *(a1 + 656) = *(a4 + 4);
  }

  sub_100002A38(a1, a2, v17, a7, a8, a9, a10, a11, a12);
  *(a1 + 1604) = 1;
  *(a1 + 1976) = *a3;
  v27 = *(a1 + 1792);
  result = *(v27 + 2 * v18);
  if (result == 0x4000)
  {
    result = sub_100012668(a1, v18);
    v27 = *(a1 + 1792);
  }

  *(v27 + 2 * v18) = result;
  if (*(a1 + 1968))
  {
    result = sub_10000E8F0(a1, v20, v21, v22, v23, v24, v25, v26);
    v29 = *(a1 + 1792);
    v30 = *(v29 + 2 * v18);
    if (v30 >= result)
    {
      LOWORD(v30) = result;
    }

    *(v29 + 2 * v18) = v30;
    v31 = *(a1 + 1824);
    if (v31 < *(a1 + 1828))
    {
      v32 = *(a1 + 1832);
      *(a1 + 1824) = v31 + 1;
      *(v32 + 2 * v31) = v18;
    }
  }

  else if (*(a1 + 1964) && v16 != a5)
  {

    return sub_10000DA0C(a1);
  }

  return result;
}

uint64_t sub_100003B68(uint64_t result, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  *(result + 1604) = 0;
  *(result + 1704) = 0;
  *(result + 1720) = 0;
  *(result + 1712) = 0;
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 1064))
    {
      return (*(result + 1736))(result, 1);
    }
  }

  return result;
}

uint64_t sub_100003BA4(uint64_t a1, _BOOL4 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1388);
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 5356))
    {
      LOWORD(v10) = sub_10000E814(a1);
      v11 = 0;
      if (!a2)
      {
        return v10;
      }

      goto LABEL_17;
    }

    if (*(qword_1001065A8 + 5292))
    {
      v13 = sub_10000E8F0(a1, a2, a3, a4, a5, a6, a7, a8);
      v10 = *(*(a1 + 1792) + 2 * v9);
      if (v10 == 0x4000)
      {
        LOWORD(v10) = sub_100012668(a1, v9);
      }

      v11 = 0;
      if (v13 < v10)
      {
        LOWORD(v10) = v13;
      }

      if (!a2)
      {
        return v10;
      }

LABEL_17:
      *a2 = v11;
      return v10;
    }
  }

  v15 = sub_10000EDDC(a1);
  v10 = *(*(a1 + 1792) + 2 * v9);
  if (v10 == 0x4000)
  {
    LOWORD(v10) = sub_100012668(a1, v9);
  }

  v11 = v15 < v10;
  if (v15 < v10)
  {
    LOWORD(v10) = v15;
  }

  if (a2)
  {
    goto LABEL_17;
  }

  return v10;
}

uint64_t sub_100003C84(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2016))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 1100);
  v6 = *(a1 + 1188);
  v7 = sub_1000BD5C4(*(a1 + 1072), 0xFFFFFFFF);
  v8 = sub_1000BD5C4(*(a1 + 1092), v7);
  v9 = sub_1000BD5C4(*(a1 + 1096), v8);
  v10 = sub_1000BD5C4(*(a1 + 1100), v9);
  v11 = sub_1000BD5C4(*(a1 + 1104), v10);
  v12 = sub_1000BD598(*(a1 + 1136), v11);
  v13 = sub_1000BD5C4(*(a1 + 1180), v12);
  v14 = sub_1000BD5C4(*(a1 + 1188), v13);
  v15 = sub_1000BD5C4(*(a1 + 1192), v14);
  v16 = sub_1000BD5C4(*(a1 + 1200), v15);
  v17 = sub_1000BD5C4(*(a1 + 1052), v16);
  v18 = sub_1000BD5C4(*(a1 + 1384), v17);
  v19 = sub_1000BD598(*(a1 + 1388), v18);
  v20 = sub_1000BD598(*(a1 + 1390), v19);
  v21 = sub_1000BD5C4(*(a1 + 1392), v20);
  v22 = sub_1000BD5C4(*(a1 + 1396), v21);
  v23 = sub_1000BD5C4(*(a1 + 1016), v22);
  v24 = sub_1000BD5C4(*(a1 + 1760), v23);
  v25 = sub_1000BD5C4(*(a1 + 1764), v24);
  v26 = sub_1000BD57C(*(a1 + 1770), v25);
  v27 = sub_1000BD57C(*(a1 + 1771), v26);
  if (a2)
  {
    v28 = sub_1000BD598(*(a1 + 1600), v27);
    v27 = sub_1000BD598(*(a1 + 1602), v28);
  }

  v29 = sub_1000BD5C4(*(a1 + 1032), v27);
  v37 = sub_1000BD5C4(*(a1 + 1296), v29);
  if (*(a1 + 996) && !*(a1 + 1036) && *(a1 + 1072) >= 1)
  {
    v49 = 0;
    v50 = 0;
    do
    {
      if (*(a1 + 2012))
      {
        if (!*(a1 + 1032))
        {
          v56 = 1;
          v57 = v49;
LABEL_27:
          v59 = *(a1 + 1120);
          v60 = v59 * v57;
          if (*(a1 + 1080) <= v49)
          {
            v61 = 96;
          }

          else
          {
            v61 = 16;
          }

          v53 = (*(a1 + v61) + v60);
          v54 = v59 * v56;
          v55 = 1;
          goto LABEL_18;
        }

        v56 = 1;
        v57 = v49;
        if (*(a1 + 1108))
        {
LABEL_33:
          v63 = 3 * v57;
          if (*(a1 + 1080) <= v49)
          {
            v64 = *(a1 + 144);
          }

          else
          {
            v64 = *(a1 + 136);
          }

          v53 = (v64 + 4 * v63);
          goto LABEL_17;
        }
      }

      else
      {
        if (*(a1 + 1176))
        {
          v58 = (*(a1 + 1160) + 4 * v50);
          v57 = *v58;
          v56 = v58[1] - *v58;
          if (!*(a1 + 1032))
          {
            goto LABEL_27;
          }
        }

        else
        {
          v62 = (*(a1 + 1144) + 2 * v50);
          v57 = *v62;
          v56 = v62[1] - v57;
          if (!*(a1 + 1032))
          {
            goto LABEL_27;
          }
        }

        if (*(a1 + 1108))
        {
          goto LABEL_33;
        }
      }

      v51 = *(a1 + 1128) * v57;
      if (*(a1 + 1080) <= v49)
      {
        v52 = 144;
      }

      else
      {
        v52 = 136;
      }

      v53 = (*(a1 + v52) + 4 * v51);
LABEL_17:
      v54 = *(a1 + 1128) * v56;
      v55 = 4;
LABEL_18:
      v37 = sub_1000BD7F4(v53, v55, v54, v37);
      v49 = ++v50;
    }

    while (*(a1 + 1072) > v50);
  }

  if (*(a1 + 1004))
  {
    v38 = *(a1 + 576);
    v39 = *(*(a1 + 584) + 4 * v38);
    v40 = *(*(a1 + 616) + 4 * v38);
    v41 = v38 * *(*(a1 + 1144) + 2 * *(a1 + 1072));
    v42 = sub_1000BD5C4(*(a1 + 576), v37);
    v43 = sub_1000BD7F4(*(a1 + 600), 4, v38 + 1, v42);
    v44 = sub_1000BD7F4(*(a1 + 616), 4, v38 + 1, v43);
    v45 = sub_1000BD7F4(*(a1 + 584), 4, v38 + 1, v44);
    if (*(a1 + 724))
    {
      v46 = v39 / 4;
      v47 = *(a1 + 536);
      v48 = 4;
    }

    else
    {
      v47 = *(a1 + 520);
      v48 = 1;
      v46 = v39;
    }

    v65 = sub_1000BD7F4(v47, v48, v46, v45);
    v66 = sub_1000BD7F4(*(a1 + 640), 1, v41, v65);
    v67 = sub_1000BD5C4(*(a1 + 716), v66);
    v37 = sub_1000BD5C4(*(a1 + 720), v67);
    if (*(a1 + 724))
    {
      v68 = sub_1000BD7F4(*(a1 + 552), 2, v40, v37);
      v37 = sub_1000BD7F4(*(a1 + 568), 2, v38, v68);
    }

    if (a2)
    {
      v37 = sub_1000BD7F4(*(a1 + 632), 2, v40, v37);
    }
  }

  if (*(a1 + 1296) != 5 && !*(a1 + 1036))
  {
    if (*(a1 + 1032) && *(a1 + 1760))
    {
      v69 = *(a1 + 1224);
      v70 = *(a1 + 1124) * v6 / 2;
      v71 = 4;
    }

    else if (*(a1 + 1116))
    {
      v69 = *(a1 + 1216);
      v70 = *(a1 + 1124) * v6;
      v71 = 1;
    }

    else
    {
      if (*(a1 + 1112))
      {
        v110 = sub_1000C9F54(2 * *(a1 + 1100), v30, v31, v32, v33, v34, v35, v36);
        if (v6 >= 1)
        {
          v111 = 0;
          v112 = *(a1 + 1208);
          do
          {
            sub_100001E44(a1, v112, v110);
            v37 = sub_1000BD7F4(v110, 2, *(a1 + 1100), v37);
            v112 += 2 * *(a1 + 1124);
            ++v111;
          }

          while (v6 > v111);
        }

        sub_1000CA03C(v110, 2 * *(a1 + 1100));
        goto LABEL_50;
      }

      v69 = *(a1 + 1208);
      v70 = *(a1 + 1124) * v6;
      v71 = 2;
    }

    v37 = sub_1000BD7F4(v69, v71, v70, v37);
LABEL_50:
    v37 = sub_1000BD7F4(*(a1 + 1240), 4, v6, v37);
  }

  if (a2)
  {
    v72 = *(a1 + 1544);
    if (v72)
    {
      LODWORD(v37) = sub_1000BD7F4(v72, 1, v5, v37);
    }
  }

  v73 = sub_1000BD5C4(*(a1 + 1044), v37);
  v74 = sub_1000BD5C4(*(a1 + 1048), v73);
  v75 = sub_1000BD5C4(*(a1 + 1056), v74);
  v76 = sub_1000BD5C4(*(a1 + 1060), v75);
  if (*(a1 + 1032))
  {
    if (a2)
    {
      v77 = *(a1 + 1128);
      if (*(a1 + 1760))
      {
        v78 = sub_1000BD7F4(*(a1 + 1560), 4, v77, v76);
      }

      else
      {
        v79 = sub_1000BD7F4(*(a1 + 1552), 4, v77, v76);
        v80 = sub_1000BD5C4(*(a1 + 1572), v79);
        v78 = sub_1000BD5C4(*(a1 + 1576), v80);
      }

      v76 = v78;
    }

    if (!*(a1 + 1760) && *(a1 + 996) && *(a1 + 1072) >= 1)
    {
      v90 = 0;
      v91 = 0;
      do
      {
        if (*(a1 + 2012))
        {
          v92 = 1;
          v93 = v90;
          if (!*(a1 + 1108))
          {
            goto LABEL_93;
          }
        }

        else if (*(a1 + 1176))
        {
          v99 = (*(a1 + 1160) + 4 * v91);
          v93 = *v99;
          v92 = v99[1] - *v99;
          if (!*(a1 + 1108))
          {
            goto LABEL_93;
          }
        }

        else
        {
          v100 = (*(a1 + 1144) + 2 * v91);
          v93 = *v100;
          v92 = v100[1] - v93;
          if (!*(a1 + 1108))
          {
LABEL_93:
            v101 = *(a1 + 1080) <= v90;
            v102 = 104;
            if (!v101)
            {
              v102 = 32;
            }

            v103 = 120;
            if (!v101)
            {
              v103 = 48;
            }

            v104 = *(a1 + v103);
            v76 = sub_1000BD7F4((*(a1 + v102) + 4 * v93), 4, v92, v76);
            if (!*(a1 + 1044))
            {
              goto LABEL_81;
            }

            if (v104)
            {
              v97 = (v104 + 4 * v93);
            }

            else
            {
              v97 = 0;
            }

            v98 = 4;
            goto LABEL_80;
          }
        }

        v101 = *(a1 + 1080) <= v90;
        v94 = 112;
        if (v101)
        {
          v95 = 128;
        }

        else
        {
          v94 = 64;
          v95 = 80;
        }

        v96 = *(a1 + v95);
        v76 = sub_1000BD7F4((*(a1 + v94) + 2 * v93), 2, v92, v76);
        if (!*(a1 + 1044))
        {
          goto LABEL_81;
        }

        v97 = (v96 + 2 * v93);
        v98 = 2;
LABEL_80:
        v76 = sub_1000BD7F4(v97, v98, v92, v76);
LABEL_81:
        v90 = ++v91;
      }

      while (*(a1 + 1072) > v91);
    }
  }

  if (a2)
  {
    v81 = *(a1 + 1792);
    if (v81)
    {
      v76 = sub_1000BD7F4(v81, 2, *(a1 + 1072), v76);
    }
  }

  v82 = *(a1 + 1304);
  if (v82)
  {
    v83 = sub_100035A44(v82);
    v76 = sub_1000BD5C4(v83, v76);
  }

  v84 = *(a1 + 944);
  if (v84)
  {
    v85 = (*(a1 + 952))(v84, a2);
    v76 = sub_1000BD5C4(v85, v76);
  }

  v86 = *(a1 + 1144);
  if (v86)
  {
    v76 = sub_1000BD7F4(v86, 2, *(a1 + 1072), v76);
  }

  v87 = *(a1 + 1160);
  if (v87)
  {
    LODWORD(v76) = sub_1000BD7F4(v87, 4, *(a1 + 1072), v76);
  }

  if (*(a1 + 1368))
  {
    if (*(a1 + 1384) < 1)
    {
      LODWORD(v89) = -1;
    }

    else
    {
      v88 = 0;
      v89 = 0xFFFFFFFFLL;
      do
      {
        v89 = sub_1000BD7F4((*(a1 + 1368) + 2 * *(a1 + 1096) * v88++), 2, *(a1 + 1096), v89);
      }

      while (v88 < *(a1 + 1384));
    }

    LODWORD(v76) = sub_1000BD6C8(v89, 4, v76);
  }

  if (*(a1 + 992))
  {
    v105 = sub_10007DE48(a1);
    LODWORD(v76) = sub_1000BD6C8(v105, 4, v76);
  }

  if (*(a1 + 1432))
  {
    v106 = sub_100006F1C(a1);
    LODWORD(v76) = sub_1000BD6C8(v106, 4, v76);
  }

  v107 = sub_1000BD5C4(*(a1 + 1864), v76);
  if (*(a1 + 1864))
  {
    LODWORD(v107) = sub_1000BD7F4(*(a1 + 1840), 1, *(a1 + 1072), v107);
  }

  result = sub_1000BD5C4(*(a1 + 1964), v107);
  if (*(a1 + 1964))
  {
    v108 = result;
    v109 = sub_10000DAD0(a1, a2);

    return sub_1000BD6C8(v109, 4, v108);
  }

  return result;
}

uint64_t sub_100004554(uint64_t a1, unsigned int a2)
{
  v2 = *(**(a1 + 1432) + 8 * a2);
  v3 = sub_1000BD5C4(*v2, 0xFFFFFFFF);
  v4 = sub_1000BD7F4(*(v2 + 8), 2, *v2, v3);
  v5 = *(v2 + 16);
  v6 = *v2;

  return sub_1000BD7F4(v5, 2, v6, v4);
}

uint64_t sub_1000045BC(unsigned int *a1, int a2)
{
  if (a2 && a1[502])
  {
    return a1[505];
  }

  else
  {
    return a1[350];
  }
}

void sub_1000045E0(uint64_t a1, unsigned int a2)
{
  v54 = 0;
  v55 = 0;
  v4 = *(a1 + 2012);
  if (v4 || *(a1 + 1072) <= a2)
  {
    v5 = 1;
    v6 = *(a1 + 1072);
    v7 = a2 < v6;
    if (*(a1 + 1108))
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  if (!*(a1 + 1176))
  {
    v5 = *(*(a1 + 1144) + 2 * a2 + 2) - *(*(a1 + 1144) + 2 * a2);
    v6 = *(a1 + 1072);
    v7 = a2 < v6;
    if (*(a1 + 1108))
    {
      goto LABEL_11;
    }

LABEL_5:
    if (!v7)
    {
      v10 = a2 - v6;
      v9 = (*(a1 + 800) + 4 * v10);
      if (*(a1 + 1044))
      {
        v11 = 808;
LABEL_22:
        v13 = 0;
        v15 = 0;
        v14 = (*(a1 + v11) + 4 * v10);
        if (v5 < 1)
        {
          return;
        }

        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v8 = a2;
    if (v4)
    {
      v9 = (*(a1 + 40) + 4 * a2);
      if (*(a1 + 1044))
      {
LABEL_9:
        v10 = v8;
        v11 = 56;
        goto LABEL_22;
      }
    }

    else if (*(a1 + 1176))
    {
      v8 = *(*(a1 + 1160) + 4 * a2);
      v9 = (*(a1 + 40) + 4 * v8);
      if (*(a1 + 1044))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *(*(a1 + 1144) + 2 * a2);
      v9 = (*(a1 + 40) + 4 * *(*(a1 + 1144) + 2 * a2));
      if (*(a1 + 1044))
      {
        goto LABEL_9;
      }
    }

LABEL_36:
    v14 = 0;
    v13 = 0;
    v15 = 0;
    if (v5 < 1)
    {
      return;
    }

    goto LABEL_37;
  }

  v5 = *(*(a1 + 1160) + 4 * a2 + 4) - *(*(a1 + 1160) + 4 * a2);
  v6 = *(a1 + 1072);
  v7 = a2 < v6;
  if (!*(a1 + 1108))
  {
    goto LABEL_5;
  }

LABEL_11:
  if (v7)
  {
    v12 = a2;
    if (v4)
    {
      v13 = (*(a1 + 72) + 2 * a2);
      if (!*(a1 + 1044))
      {
        goto LABEL_33;
      }
    }

    else if (*(a1 + 1176))
    {
      v12 = *(*(a1 + 1160) + 4 * a2);
      v13 = (*(a1 + 72) + 2 * v12);
      if (!*(a1 + 1044))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = *(*(a1 + 1144) + 2 * a2);
      v13 = (*(a1 + 72) + 2 * *(*(a1 + 1144) + 2 * a2));
      if (!*(a1 + 1044))
      {
        goto LABEL_33;
      }
    }

    v9 = 0;
    v14 = 0;
    v15 = (*(a1 + 88) + 2 * v12);
    if (v5 < 1)
    {
      return;
    }

    goto LABEL_37;
  }

  v16 = a2 - v6;
  v13 = (*(a1 + 816) + 2 * v16);
  if (*(a1 + 1044))
  {
    v9 = 0;
    v14 = 0;
    v15 = (*(a1 + 824) + 2 * v16);
    if (v5 < 1)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_33:
  v9 = 0;
  v14 = 0;
  v15 = 0;
  if (v5 >= 1)
  {
LABEL_37:
    v17 = 0;
    while (1)
    {
      sub_100001370(a1, a2, v17, &v54);
      if (!qword_1001065A8)
      {
        break;
      }

      v20 = *(a1 + 1104);
      v21.i64[0] = 0xFF000000FFLL;
      v21.i64[1] = 0xFF000000FFLL;
      if (!*(qword_1001065A8 + 3496))
      {
        goto LABEL_49;
      }

      if (v20 != 12)
      {
        if (v20 == 24)
        {
          if (!*(a1 + 1108))
          {
            sub_100015BE0(a1, a2, v17, &v55 + 1, &v55, v18, v19);
            v22 = *(a1 + 1044);
            v23 = HIDWORD(v55);
            if (*(a1 + 1108))
            {
              goto LABEL_61;
            }

            goto LABEL_46;
          }

LABEL_54:
          v55 = 0;
          v24 = v54;
          v25 = v20 - 9;
          if ((v20 - 9) >= 3)
          {
LABEL_55:
            if (&v55 < &v24[v20] && v24 + 8 < &v55 + 4)
            {
              goto LABEL_57;
            }

            v30 = v20 - 8;
            if (v25 >= 0x1F)
            {
              v32 = 0uLL;
              v31 = v30 & 0x1FFFFFFE0;
              v33 = 0uLL;
              v34 = &v24[v20 - 16];
              v35 = v30 & 0x1FFFFFFE0;
              v36 = 0uLL;
              v37 = 0uLL;
              v38 = 0uLL;
              v39 = 0uLL;
              v40 = 0uLL;
              v41 = 0uLL;
              do
              {
                v42 = vrev64q_s8(*v34);
                v43 = vextq_s8(v42, v42, 8uLL);
                v44 = vrev64q_s8(v34[-1]);
                v45 = vextq_s8(v44, v44, 8uLL);
                v46 = vmull_u8(*v43.i8, *v43.i8);
                v47 = vmull_high_u8(v43, v43);
                v48 = vmull_u8(*v45.i8, *v45.i8);
                v49 = vmull_high_u8(v45, v45);
                v37 = vaddw_high_u16(v37, v47);
                v36 = vaddw_u16(v36, *v47.i8);
                v33 = vaddw_high_u16(v33, v46);
                v32 = vaddw_u16(v32, *v46.i8);
                v41 = vaddw_high_u16(v41, v49);
                v40 = vaddw_u16(v40, *v49.i8);
                v39 = vaddw_high_u16(v39, v48);
                v38 = vaddw_u16(v38, *v48.i8);
                v34 -= 2;
                v35 -= 32;
              }

              while (v35);
              v19 = vaddq_s32(vaddq_s32(v39, v33), vaddq_s32(v41, v37));
              v50 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v38, v32), vaddq_s32(v40, v36)), v19));
              LODWORD(v55) = v50;
              if (v30 == v31)
              {
                goto LABEL_60;
              }

              v26 = v50;
              if ((v30 & 0x1C) != 0)
              {
                goto LABEL_69;
              }

              v27 = v20 - v31;
            }

            else
            {
              v26 = 0;
              v31 = 0;
LABEL_69:
              v27 = v20 - (v30 & 0x1FFFFFFFCLL);
              v51 = v26;
              v52 = v20 - v31 - 4;
              v53 = v31 - (v30 & 0x1FFFFFFFCLL);
              do
              {
                v19.i32[0] = *&v24[v52];
                v19 = vandq_s8(vmovl_u16(vrev64_s16(*&vmovl_u8(*v19.i8))), v21);
                v51 = vmlaq_s32(v51, v19, v19);
                v52 -= 4;
                v53 += 4;
              }

              while (v53);
              LODWORD(v55) = vaddvq_s32(v51);
              v26 = v55;
              if (v30 == (v30 & 0x1FFFFFFFCLL))
              {
LABEL_60:
                HIDWORD(v55) = v24[7] * v24[7] + v24[6] * v24[6] + v24[5] * v24[5] + v24[4] * v24[4];
                HIDWORD(v55) += v24[3] * v24[3];
                HIDWORD(v55) += v24[2] * v24[2];
                HIDWORD(v55) += v24[1] * v24[1];
                HIDWORD(v55) += *v24 * *v24;
                v22 = *(a1 + 1044);
                v23 = HIDWORD(v55);
                if (*(a1 + 1108))
                {
                  goto LABEL_61;
                }

                goto LABEL_46;
              }
            }

LABEL_58:
            v28 = v27 - 1;
            do
            {
              v26 += v24[v28] * v24[v28];
              LODWORD(v55) = v26;
              v29 = v28-- + 1;
            }

            while (v29 > 9);
            goto LABEL_60;
          }

LABEL_57:
          v26 = 0;
          v27 = v20;
          goto LABEL_58;
        }

LABEL_49:
        v55 = 0;
        v24 = v54;
        if (v20 < 9)
        {
          goto LABEL_60;
        }

        v25 = v20 - 9;
        if ((v20 - 9) >= 3)
        {
          goto LABEL_55;
        }

        goto LABEL_57;
      }

      if (*(a1 + 1108))
      {
        goto LABEL_54;
      }

      sub_100015CD8(a1, a2, v17, &v55 + 1, &v55);
      v22 = *(a1 + 1044);
      v23 = HIDWORD(v55);
      if (*(a1 + 1108))
      {
LABEL_61:
        if (v22)
        {
          *v13++ = v23;
          *v15++ = v55;
        }

        else
        {
          *v13++ = v55 + v23;
        }

        goto LABEL_39;
      }

LABEL_46:
      if (v22)
      {
        *v9++ = v23;
        *v14++ = v55;
      }

      else
      {
        *v9++ = v55 + v23;
      }

LABEL_39:
      if (++v17 == v5)
      {
        return;
      }
    }

    v20 = *(a1 + 1104);
    v21.i64[0] = 0xFF000000FFLL;
    v21.i64[1] = 0xFF000000FFLL;
    goto LABEL_49;
  }
}

void sub_100004B44(uint64_t a1)
{
  if (*(a1 + 1084) >= 1)
  {
    v2 = 0;
    do
    {
      sub_1000045E0(a1, v2++);
    }

    while (*(a1 + 1084) > v2);
  }
}

uint64_t sub_100004B94(uint64_t result)
{
  *(result + 32) = *(result + 40);
  *(result + 64) = *(result + 72);
  if (*(result + 1044))
  {
    v1 = *(result + 88);
    *(result + 48) = *(result + 56);
    *(result + 80) = v1;
  }

  else
  {
    *(result + 48) = 0;
    *(result + 80) = 0;
  }

  return result;
}

uint64_t sub_100004BD4(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 1120);
  v6 = *(a1 + 996);
  v7 = 1184;
  if (!a3)
  {
    v7 = 1180;
  }

  v8 = 1080;
  if (!a3)
  {
    v8 = 1072;
  }

  v9 = *(a1 + v8);
  v10 = *(a1 + v7);
  v11 = *(a1 + 168);
  if (*(a1 + 1036))
  {
    if (!*(a1 + 1536))
    {
      result = sub_1000C0034(2 * *(a1 + 1100));
      *(a1 + 1536) = result;
      if (!result)
      {
        return result;
      }
    }

    if (!*(a1 + 1528))
    {
      result = sub_1000C0034(*(a1 + 1100));
      *(a1 + 1528) = result;
      if (!result)
      {
        return result;
      }
    }
  }

  if (!*(a1 + 24) && !*(a1 + 152) && !v11 && v6)
  {
    v13 = v10 * v5;
    *(a1 + 1084) = v9;
    *(a1 + 1088) = v10;
    if (*(a1 + 1032))
    {
      v14 = 4 * (v13 / 4);
      result = sub_1000C0034(v14);
      *(a1 + 152) = result;
      if (!result)
      {
        return result;
      }

      if (a2)
      {
        memcpy(result, *(a1 + 136), v14);
        result = *(a1 + 152);
      }

      *(a1 + 136) = result;
      if (!*(a1 + 1032))
      {
LABEL_55:
        *(a1 + 32) = *(a1 + 40);
        *(a1 + 64) = *(a1 + 72);
        if (*(a1 + 1044))
        {
          v19 = *(a1 + 56);
          v20 = *(a1 + 88);
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        *(a1 + 48) = v19;
        *(a1 + 80) = v20;
        goto LABEL_11;
      }
    }

    else
    {
      v18 = v13;
      result = sub_1000C0034(v13);
      *(a1 + 24) = result;
      if (!result)
      {
        return result;
      }

      if (a2)
      {
        memcpy(result, *(a1 + 16), v18);
        result = *(a1 + 24);
      }

      *(a1 + 16) = result;
      if (!*(a1 + 1032))
      {
        goto LABEL_55;
      }
    }

    if (!*(a1 + 1760))
    {
      if (*(a1 + 1108))
      {
        goto LABEL_54;
      }

      if (!*(a1 + 40) && !*(a1 + 56))
      {
        result = sub_1000C0034(4 * v10);
        *(a1 + 40) = result;
        if (!result)
        {
          return result;
        }

        if (*(a1 + 1044))
        {
          result = sub_1000C0034(4 * v10);
          *(a1 + 56) = result;
          if (!result)
          {
            return result;
          }
        }

        if (a2)
        {
          memcpy(*(a1 + 40), *(a1 + 32), 4 * v10);
          if (*(a1 + 1044))
          {
            memcpy(*(a1 + 56), *(a1 + 48), 4 * v10);
          }
        }
      }

      if (*(a1 + 1108))
      {
LABEL_54:
        if (!*(a1 + 72) && !*(a1 + 88))
        {
          result = sub_1000C0034(2 * v10);
          *(a1 + 72) = result;
          if (!result)
          {
            return result;
          }

          if (*(a1 + 1044))
          {
            result = sub_1000C0034(2 * v10);
            *(a1 + 88) = result;
            if (!result)
            {
              return result;
            }
          }

          if (a2)
          {
            memcpy(*(a1 + 72), *(a1 + 64), 2 * v10);
            if (*(a1 + 1044))
            {
              memcpy(*(a1 + 88), *(a1 + 80), 2 * v10);
            }
          }
        }
      }
    }

    goto LABEL_55;
  }

LABEL_11:
  if (*(a1 + 1036) && !*(a1 + 168))
  {
    v15 = v10 * v5;
    v16 = 2 * v15;
    result = sub_1000C0034(v16);
    *(a1 + 184) = result;
    if (!result)
    {
      return result;
    }

    v17 = 4 * (v15 / 2);
    result = sub_1000C0034(v17);
    *(a1 + 200) = result;
    if (!result)
    {
      return result;
    }

    result = sub_1000C0034(4 * v10);
    *(a1 + 168) = result;
    if (!result)
    {
      return result;
    }

    *(a1 + 176) = *(a1 + 184);
    *(a1 + 192) = *(a1 + 200);
    *(a1 + 160) = result;
    if (a2)
    {
      memcpy(*(a1 + 184), *(a1 + 176), v16);
      memcpy(*(a1 + 200), *(a1 + 192), v17);
    }
  }

  if (!*(a1 + 1004) || *(a1 + 528) || *(a1 + 544) || (v21 = *(a1 + 584)) == 0)
  {
LABEL_16:
    if (*(a1 + 1964))
    {
      if (*(a1 + 856))
      {
        if (!*(a1 + 904))
        {
LABEL_38:
          result = sub_1000C0034(2 * *(a1 + 1100));
          *(a1 + 904) = result;
          if (!result)
          {
            return result;
          }

          if (a2)
          {
            memcpy(result, *(a1 + 896), 2 * *(a1 + 1100));
            result = *(a1 + 904);
          }

          *(a1 + 896) = result;
        }
      }

      else
      {
        result = sub_1000C0034(*(a1 + 1100));
        *(a1 + 856) = result;
        if (!result)
        {
          return result;
        }

        if (a2)
        {
          memcpy(result, *(a1 + 848), *(a1 + 1100));
          result = *(a1 + 856);
        }

        *(a1 + 848) = result;
        if (!*(a1 + 904))
        {
          goto LABEL_38;
        }
      }
    }

    return 1;
  }

  v22 = *(v21 + 4 * *(a1 + 576));
  if (*(a1 + 724))
  {
    result = sub_1000C0034(2 * *(a1 + 580));
    *(a1 + 560) = result;
    if (result)
    {
      v24 = 4 * (v22 / 4);
      result = sub_1000C0034(4 * (v23 >> 2));
      *(a1 + 544) = result;
      if (result)
      {
        if (a2)
        {
          memcpy(*(a1 + 560), *(a1 + 552), 2 * *(a1 + 580));
          memcpy(*(a1 + 544), *(a1 + 536), v24);
          result = *(a1 + 544);
        }

        *(a1 + 552) = *(a1 + 560);
        v25 = 536;
LABEL_70:
        *(a1 + v25) = result;
        goto LABEL_16;
      }
    }
  }

  else
  {
    result = sub_1000C0034(v22);
    *(a1 + 528) = result;
    if (result)
    {
      if (a2)
      {
        memcpy(result, *(a1 + 520), v22);
        result = *(a1 + 528);
      }

      v25 = 520;
      goto LABEL_70;
    }
  }

  return result;
}

void *sub_10000501C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = sub_1000C9F54(4 * *(a1 + 1100), a2, a3, a4, a5, a6, a7, a8);
  bzero(v11, 4 * *(a1 + 1100));
  if (*(a1 + 2012) || *(a1 + 1072) <= v9)
  {
    v13 = 1;
  }

  else if (*(a1 + 1176))
  {
    v12 = (*(a1 + 1160) + 4 * v9);
    v13 = v12[1] - *v12;
    if (v13 <= 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = (*(a1 + 1144) + 2 * v9);
    v13 = v18[1] - *v18;
    if (v13 <= 0)
    {
LABEL_14:
      LODWORD(v15) = *(a1 + 1100);
      goto LABEL_15;
    }
  }

  v14 = 0;
  v22 = 0;
  do
  {
    sub_100001370(a1, v9, v14, &v22);
    LODWORD(v15) = *(a1 + 1100);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = v22;
      do
      {
        *(v11 + v16) += *(v17 + v16);
        ++v16;
        v15 = *(a1 + 1100);
      }

      while (v16 < v15);
    }

    ++v14;
  }

  while (v14 != v13);
LABEL_15:
  if (v15 <= 0)
  {
    v20 = v15;
  }

  else
  {
    v19 = 0;
    do
    {
      *(a3 + v19) = (*(v11 + v19) + v13 / 2) / v13;
      ++v19;
      v20 = *(a1 + 1100);
    }

    while (v19 < v20);
  }

  return sub_1000CA03C(v11, 4 * v20);
}

int *sub_100005190(int *result)
{
  if (result)
  {
    v1 = result;
    if (*result >= 1)
    {
      v2 = 0;
      do
      {
        v3 = *(v1 + 3);
        if (v3)
        {
          sub_1000BFEC4(*(v3 + 8 * v2));
          *(*(v1 + 3) + 8 * v2) = 0;
        }

        v4 = *(v1 + 5);
        if (v4)
        {
          sub_1000BFEC4(*(v4 + 8 * v2));
          *(*(v1 + 5) + 8 * v2) = 0;
        }

        ++v2;
      }

      while (v2 < *v1);
    }

    sub_1000BFEC4(*(v1 + 3));
    sub_1000BFEC4(*(v1 + 5));
    *(v1 + 3) = 0;
    *(v1 + 5) = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

int *sub_10000523C(uint64_t a1)
{
  v2 = *(a1 + 1800);
  if (v2)
  {
    sub_1000BFEC4(v2);
    *(a1 + 1792) = 0u;
    sub_1000BFEC4(*(a1 + 1832));
    *(a1 + 1832) = 0;
  }

  sub_1000BFEC4(*(a1 + 1152));
  *(a1 + 1144) = 0u;
  sub_1000BFEC4(*(a1 + 1168));
  *(a1 + 1160) = 0u;
  sub_1000BFEC4(*(a1 + 24));
  *(a1 + 16) = 0u;
  sub_1000BFEC4(*(a1 + 152));
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  sub_1000BFEC4(*(a1 + 40));
  *(a1 + 32) = 0u;
  sub_1000BFEC4(*(a1 + 72));
  *(a1 + 64) = 0u;
  sub_1000BFEC4(*(a1 + 56));
  *(a1 + 48) = 0u;
  sub_1000BFEC4(*(a1 + 88));
  *(a1 + 80) = 0u;
  sub_1000BFEC4(*(a1 + 1584));
  *(a1 + 1584) = 0;
  sub_1000BFEC4(*(a1 + 1592));
  *(a1 + 1592) = 0;
  sub_1000BFEC4(*(a1 + 168));
  *(a1 + 160) = 0u;
  sub_1000BFEC4(*(a1 + 184));
  *(a1 + 176) = 0u;
  sub_1000BFEC4(*(a1 + 200));
  *(a1 + 192) = 0u;
  sub_1000BFEC4(*(a1 + 1264));
  *(a1 + 1224) = 0;
  *(a1 + 1264) = 0;
  sub_1000BFEC4(*(a1 + 1248));
  *(a1 + 1208) = 0;
  *(a1 + 1248) = 0;
  sub_1000BFEC4(*(a1 + 1256));
  *(a1 + 1216) = 0;
  *(a1 + 1256) = 0;
  sub_1000BFEC4(*(a1 + 1272));
  *(a1 + 1232) = 0;
  *(a1 + 1272) = 0;
  sub_1000BFEC4(*(a1 + 1280));
  *(a1 + 1280) = 0;
  sub_1000BFEC4(*(a1 + 1288));
  *(a1 + 1240) = 0;
  *(a1 + 1288) = 0;
  sub_1000BFEC4(*(a1 + 1376));
  *(a1 + 1368) = 0u;
  sub_1000BFEC4(*(a1 + 1416));
  *(a1 + 1408) = 0u;
  sub_1000BFEC4(*(a1 + 1848));
  *(a1 + 1840) = 0u;
  sub_1000BFEC4(*(a1 + 1904));
  *(a1 + 1896) = 0u;
  sub_1000BFEC4(*(a1 + 1336));
  *(a1 + 1328) = 0u;
  sub_1000BFEC4(*(a1 + 1360));
  *(a1 + 1352) = 0u;
  sub_1000BFEC4(*(a1 + 2040));
  *(a1 + 2032) = 0u;
  if (*(a1 + 1004) || qword_1001065A8 && *(qword_1001065A8 + 3864))
  {
    sub_1000BFEC4(*(a1 + 528));
    *(a1 + 520) = 0u;
    sub_1000BFEC4(*(a1 + 544));
    *(a1 + 536) = 0u;
    sub_1000BFEC4(*(a1 + 560));
    *(a1 + 552) = 0u;
    sub_1000BFEC4(*(a1 + 608));
    *(a1 + 600) = 0u;
    sub_1000BFEC4(*(a1 + 624));
    *(a1 + 616) = 0u;
    sub_1000BFEC4(*(a1 + 592));
    *(a1 + 584) = 0u;
    sub_1000BFEC4(*(a1 + 648));
    *(a1 + 640) = 0u;
    sub_1000BFEC4(*(a1 + 632));
    *(a1 + 632) = 0;
    sub_1000BFEC4(*(a1 + 568));
    *(a1 + 568) = 0;
  }

  sub_1000BFEC4(*(a1 + 504));
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  sub_1000BFEC4(*(a1 + 240));
  *(a1 + 240) = 0;
  sub_10000E660(a1);
  if (*(a1 + 1032))
  {
    if (*(a1 + 1760))
    {
      v3 = 1560;
    }

    else
    {
      v3 = 1552;
    }

    sub_1000BFEC4(*(a1 + v3));
    *(a1 + v3) = 0;
  }

  sub_1000BFEC4(*(a1 + 1512));
  *(a1 + 1512) = 0;
  sub_1000BFEC4(*(a1 + 1520));
  *(a1 + 1520) = 0;
  sub_1000BFEC4(*(a1 + 1528));
  *(a1 + 1528) = 0;
  sub_1000BFEC4(*(a1 + 1536));
  *(a1 + 1536) = 0;
  sub_1000BFEC4(*(a1 + 1544));
  *(a1 + 1544) = 0;
  sub_1000BFEC4(*(a1 + 1552));
  *(a1 + 1552) = 0;
  sub_1000BFEC4(*(a1 + 1936));
  *(a1 + 1928) = 0u;
  sub_1000BFEC4(*(a1 + 1952));
  *(a1 + 1944) = 0u;
  sub_1000BFEC4(*(a1 + 1448));
  *(a1 + 1448) = 0;
  sub_100035974(*(a1 + 1304));
  *(a1 + 1304) = 0;
  sub_100019CB0(a1);
  result = sub_100005190(*(a1 + 928));
  *(a1 + 928) = 0;
  return result;
}

uint64_t sub_1000055CC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100007DF0(result);
    sub_10000523C(v1);
    v2 = *(v1 + 744);
    if (v2)
    {
      v4 = v2 + 7;
      v3 = v2[7];
      v5 = *(v1 + 744);
      if (v3)
      {
        v6 = *(v1 + 1884);
        if (v6 >= 1)
        {
          v7 = 0;
          v8 = 8 * v6;
          do
          {
            sub_1000BFEC4(*(v2[7] + v7));
            sub_1000BFEC4(*(v2[8] + v7));
            v7 += 8;
          }

          while (v8 != v7);
          v3 = *v4;
        }

        sub_1000BFEC4(v3);
        sub_1000BFEC4(v2[8]);
        *v4 = 0;
        v2[8] = 0;
        v5 = *(v1 + 744);
      }

      v10 = v5 + 10;
      v9 = v5[10];
      if (v9)
      {
        v11 = *(v1 + 1884);
        if (v11 >= 1)
        {
          v12 = 0;
          v13 = 8 * v11;
          do
          {
            sub_1000BFEC4(*(v5[10] + v12));
            sub_1000BFEC4(*(v5[11] + v12));
            v12 += 8;
          }

          while (v13 != v12);
          v9 = *v10;
        }

        sub_1000BFEC4(v9);
        sub_1000BFEC4(v5[11]);
        *v10 = 0;
        v5[11] = 0;
        v5 = *(v1 + 744);
      }

      sub_1000BFEC4(v5[6]);
      v5[6] = 0;
      sub_1000BFEC4(v5[1]);
      sub_1000BFEC4(v5[2]);
      sub_1000BFEC4(v5[3]);
      sub_1000BFEC4(v5[4]);
      sub_1000BFEC4(v5[5]);
      v5[5] = 0;
      *(v5 + 3) = 0u;
      *(v5 + 1) = 0u;
      sub_1000BFEC4(v2[9]);
      sub_1000BFEC4(v2[12]);
      sub_1000BFEC4(v2[13]);
      v2[13] = 0;
      sub_1000BFEC4(v2);
      *(v1 + 744) = 0;
    }

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_100005754(uint64_t a1)
{
  v2 = *(a1 + 744);
  if (!v2)
  {
    result = sub_1000C0034(112);
    v2 = result;
    *(a1 + 744) = result;
    if (!result)
    {
      return result;
    }
  }

  v4 = qword_1001065A8;
  if (qword_1001065A8)
  {
    if (!*(qword_1001065A8 + 1224))
    {
      goto LABEL_173;
    }

    v5 = *(a1 + 1884);
    if (v2[6])
    {
      result = sub_1000C0034(2 * v5 + 2);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_1000C0034(2 * v5 + 2);
      v2[6] = result;
      if (!result)
      {
        return result;
      }

      if ((v5 & 0x80000000) == 0)
      {
        v10 = 0;
        do
        {
          *(v2[6] + 2 * v10++) = *(a1 + 1384);
        }

        while (v5 >= v10);
        if (v5)
        {
          v11 = 0;
          do
          {
            v12 = 0;
            do
            {
              v13 = 0;
              v14 = v12;
              do
              {
                v15 = sub_10000223C(a1, v11, v14, v13, v6, v7, v8, v9);
                v16 = v2[6];
                if (v15 < *(v16 + 2 * v14))
                {
                  *(v16 + 2 * v14) = v15;
                }

                ++v13;
              }

              while (v5 > v13);
              v12 = v14 + 1;
            }

            while (v5 > (v14 + 1));
            ++v11;
          }

          while (v5 > v11);
        }
      }

      v5 = *(a1 + 1884);
      v2 = *(a1 + 744);
      result = sub_1000C0034(2 * v5 + 2);
      if (!result)
      {
        return result;
      }
    }

    v17 = result;
    result = sub_1000C0034(8 * v5);
    v2[7] = result;
    if (!result)
    {
      return result;
    }

    result = sub_1000C0034(8 * v5);
    v2[8] = result;
    if (!result)
    {
      return result;
    }

    if (v5 >= 1)
    {
      v18 = 0;
      while (1)
      {
        v19 = v18;
        v20 = (v2[6] + 2 * v18);
        LODWORD(v20) = v20[1] - *v20;
        v21 = v20 + 7;
        v22 = v20 + 14;
        if (v21 >= 0)
        {
          v22 = v21;
        }

        v23 = (v22 >> 3) + 2;
        *(v2[7] + 8 * v19) = sub_1000C0034(v23 * v5);
        if (!*(v2[7] + 8 * v19))
        {
          break;
        }

        *(v2[8] + 8 * v19) = sub_1000C0034(2 * v5);
        if (!*(v2[8] + 8 * v19))
        {
          break;
        }

        v28 = 0;
        v29 = 0;
        v134 = v23;
        do
        {
          v138 = v28;
          *(*(v2[8] + 8 * v19) + 2 * v29) = v28;
          v30 = *(v2[7] + 8 * v19);
          v31 = *(a1 + 1884);
          v32 = sub_10000223C(a1, v29, v19, 0, v24, v25, v26, v27);
          *v17 = v32;
          if (v31 < 1)
          {
            v38 = 1;
          }

          else
          {
            v136 = v30;
            v37 = 0;
            v38 = 1;
            do
            {
              v39 = sub_10000223C(a1, v29, v19, v37, v33, v34, v35, v36);
              if (v38 <= 0 || *v17 == v39)
              {
                v40 = 0;
              }

              else
              {
                v41 = 0;
                do
                {
                  v40 = ++v41;
                }

                while (v38 > v41 && v17[v41] != v39);
              }

              if (v38 == v40)
              {
                v17[v38++] = v39;
              }

              ++v37;
            }

            while (v31 > v37);
            v32 = *v17;
            v30 = v136;
          }

          v42 = (v30 + v138);
          v17[v38] = v32;
          qsort(v17, v38, 2uLL, sub_100002510);
          v47 = sub_10000223C(a1, v29, v19, 0, v43, v44, v45, v46);
          v48 = v38;
          if (v38)
          {
            v49 = v17;
            do
            {
              v50 = *v49++;
              v51 = v50 - *(v2[6] + 2 * v19);
              *(v42 + (v51 >> 3) + 2) |= byte_1000F1D9C[v51 & 7];
              --v48;
            }

            while (v48);
          }

          *v42 = v47;
          v28 = v138 + v134;
          ++v29;
        }

        while (v5 > v29);
        v18 = v19 + 1;
        if (v5 <= (v19 + 1))
        {
          goto LABEL_51;
        }
      }

      v99 = v17;
      goto LABEL_161;
    }

LABEL_51:
    sub_1000BFEC4(v17);
    v4 = qword_1001065A8;
    if (qword_1001065A8)
    {
LABEL_173:
      if (!*(v4 + 1232))
      {
        goto LABEL_172;
      }

      v52 = *(a1 + 1884);
      v53 = *(a1 + 744);
      if (!v53[6])
      {
        result = sub_1000C0034(2 * v52 + 2);
        v53[6] = result;
        if (!result)
        {
          return result;
        }

        if ((v52 & 0x80000000) == 0)
        {
          v58 = 0;
          do
          {
            *(v53[6] + 2 * v58++) = *(a1 + 1384);
          }

          while (v52 >= v58);
          if (v52)
          {
            v59 = 0;
            do
            {
              v60 = 0;
              do
              {
                v61 = 0;
                v62 = v60;
                do
                {
                  v63 = sub_10000223C(a1, v59, v62, v61, v54, v55, v56, v57);
                  v64 = v53[6];
                  if (v63 < *(v64 + 2 * v62))
                  {
                    *(v64 + 2 * v62) = v63;
                  }

                  ++v61;
                }

                while (v52 > v61);
                v60 = v62 + 1;
              }

              while (v52 > (v62 + 1));
              ++v59;
            }

            while (v52 > v59);
          }
        }

        v52 = *(a1 + 1884);
        v53 = *(a1 + 744);
      }

      result = sub_1000C0034(2 * v52 + 2);
      if (!result)
      {
        return result;
      }

      v65 = result;
      result = sub_1000C0034(8 * v52);
      v53[10] = result;
      if (!result)
      {
        return result;
      }

      result = sub_1000C0034(8 * v52);
      v53[11] = result;
      if (!result)
      {
        return result;
      }

      if (v52 >= 1)
      {
        v66 = 0;
        while (1)
        {
          v67 = v66;
          v68 = (v53[6] + 2 * v66);
          LODWORD(v68) = v68[1] - *v68;
          v69 = v68 + 7;
          v70 = v68 + 14;
          if (v69 >= 0)
          {
            v70 = v69;
          }

          v71 = (v70 >> 3) + 2;
          *(v53[10] + 8 * v67) = sub_1000C0034(v71 * v52);
          if (!*(v53[10] + 8 * v67))
          {
            break;
          }

          *(v53[11] + 8 * v67) = sub_1000C0034(2 * v52);
          if (!*(v53[11] + 8 * v67))
          {
            break;
          }

          v76 = 0;
          v77 = 0;
          v135 = v71;
          do
          {
            *(*(v53[11] + 8 * v67) + 2 * v77) = v76;
            v139 = *(v53[10] + 8 * v67);
            v78 = *(a1 + 1884);
            v79 = sub_10000223C(a1, 0, v67, v77, v72, v73, v74, v75);
            *v65 = v79;
            if (v78 < 1)
            {
              v85 = 1;
            }

            else
            {
              v137 = v76;
              v84 = 0;
              v85 = 1;
              do
              {
                v86 = sub_10000223C(a1, v84, v67, v77, v80, v81, v82, v83);
                if (v85 <= 0 || *v65 == v86)
                {
                  v87 = 0;
                }

                else
                {
                  v88 = 0;
                  do
                  {
                    v87 = ++v88;
                  }

                  while (v85 > v88 && v65[v88] != v86);
                }

                if (v85 == v87)
                {
                  v65[v85++] = v86;
                }

                ++v84;
              }

              while (v78 > v84);
              v79 = *v65;
              v76 = v137;
            }

            v89 = (v139 + v76);
            v65[v85] = v79;
            qsort(v65, v85, 2uLL, sub_100002510);
            v94 = sub_10000223C(a1, 0, v67, v77, v90, v91, v92, v93);
            v95 = v85;
            if (v85)
            {
              v96 = v65;
              do
              {
                v97 = *v96++;
                v98 = v97 - *(v53[6] + 2 * v67);
                *(v89 + (v98 >> 3) + 2) |= byte_1000F1D9C[v98 & 7];
                --v95;
              }

              while (v95);
            }

            *v89 = v94;
            v76 += v135;
            ++v77;
          }

          while (v52 > v77);
          v66 = v67 + 1;
          if (v52 <= (v67 + 1))
          {
            goto LABEL_99;
          }
        }

        v99 = v65;
LABEL_161:
        sub_1000BFEC4(v99);
        return 0;
      }

LABEL_99:
      sub_1000BFEC4(v65);
      v4 = qword_1001065A8;
      if (qword_1001065A8)
      {
LABEL_172:
        if (*(v4 + 1120))
        {
          v100 = *(a1 + 1884);
          v101 = *(a1 + 744);
          result = sub_1000C0034(8 * *(a1 + 1384));
          *(v101 + 72) = result;
          if (!result)
          {
            return result;
          }

          if (v100 >= 1)
          {
            for (i = 0; i < v100; ++i)
            {
              for (j = 0; j < v100; ++j)
              {
                v108 = 0;
                v109 = 0;
                do
                {
                  v110 = *(v101 + 72) + 8 * sub_10000223C(a1, i, j, v109, v102, v103, v104, v105);
                  *(v110 + (v108 >> 3)) |= byte_1000F1D9C[v108 & 7];
                  v108 = ++v109;
                }

                while (v100 > v109);
              }
            }
          }
        }

        if (qword_1001065A8 && *(qword_1001065A8 + 1124))
        {
          v111 = *(a1 + 1884);
          v112 = *(a1 + 744);
          result = sub_1000C0034(8 * *(a1 + 1384));
          *(v112 + 96) = result;
          if (!result)
          {
            return result;
          }

          if (v111 >= 1)
          {
            v117 = 0;
            for (k = 0; k < v111; v117 = ++k)
            {
              v119 = 0;
              v120 = v117 & 7;
              v121 = v117 >> 3;
              for (m = 0; ; m = 0)
              {
                do
                {
                  v123 = *(v112 + 96) + 8 * sub_10000223C(a1, k, v119, m, v113, v114, v115, v116);
                  *(v123 + v121) |= byte_1000F1D9C[v120];
                  ++m;
                }

                while (v111 > m);
                if (v111 <= ++v119)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  result = sub_1000C0034(*(a1 + 1100));
  *(a1 + 1544) = result;
  if (result)
  {
    result = sub_1000C0034(*(a1 + 1100));
    *(a1 + 1512) = result;
    if (result)
    {
      result = sub_1000C0034(*(a1 + 1100));
      *(a1 + 1520) = result;
      if (result)
      {
        if (!*(a1 + 1032) && !*(a1 + 1036))
        {
          goto LABEL_174;
        }

        if (*(a1 + 1528) || (result = sub_1000C0034(*(a1 + 1100)), (*(a1 + 1528) = result) != 0))
        {
          if (*(a1 + 1536) || (result = sub_1000C0034(2 * *(a1 + 1100)), (*(a1 + 1536) = result) != 0))
          {
            v124 = *(a1 + 1760);
            result = sub_1000C0034(4 * *(a1 + 1128));
            if (v124)
            {
              *(a1 + 1560) = result;
              if (!result)
              {
                return result;
              }
            }

            else
            {
              *(a1 + 1552) = result;
              if (!result)
              {
                return result;
              }
            }

            if (!*(a1 + 724) || (result = sub_1000C0034(2 * *(a1 + 576)), (*(a1 + 568) = result) != 0))
            {
LABEL_174:
              if (!*(a1 + 1036) || (result = sub_1000C0034(2 * *(a1 + 1100)), (*(a1 + 1584) = result) != 0) && (result = sub_1000C0034(4 * *(a1 + 1132)), (*(a1 + 1592) = result) != 0))
              {
                v125 = ((-*(a1 + 1076) & 3) + *(a1 + 1076)) / 2;
                *(a1 + 1808) = v125;
                result = sub_1000C0034(4 * v125);
                *(a1 + 1800) = result;
                if (result)
                {
                  *(a1 + 1792) = result;
                  LODWORD(v126) = *(a1 + 1076);
                  if (v126 >= 1)
                  {
                    v127 = 0;
                    do
                    {
                      *(*(a1 + 1792) + 2 * v127++) = 0x4000;
                      v126 = *(a1 + 1076);
                    }

                    while (v127 < v126);
                  }

                  *(a1 + 1824) = 0;
                  v128 = qword_1001065A8;
                  if (qword_1001065A8)
                  {
                    v128 = *(qword_1001065A8 + 440);
                  }

                  if (v126 >= v128)
                  {
                    LODWORD(v126) = v128;
                  }

                  *(a1 + 1828) = v126;
                  if (v126 < 1 || (result = sub_1000C0034((2 * v126)), (*(a1 + 1832) = result) != 0))
                  {
                    *(a1 + 1600) = -1;
                    if (*(a1 + 1016))
                    {
                      v129 = *(a1 + 1296);
                      v130 = sub_100011FB8;
                      if (v129 == 5)
                      {
LABEL_151:
                        *(a1 + 1616) = v130;
                        goto LABEL_152;
                      }

                      if (v129 == 2)
                      {
                        v130 = sub_100011D3C;
                        goto LABEL_151;
                      }
                    }

LABEL_152:
                    if (!*(a1 + 1964) || (result = sub_10000E310(a1), result))
                    {
                      if (qword_1001065A8)
                      {
                        if (*(qword_1001065A8 + 1064))
                        {
                          v131 = *(a1 + 1736);
                          if (v131)
                          {
                            v131(a1, 0);
                          }
                        }
                      }

                      if (*(a1 + 1008))
                      {
                        *(a1 + 1080) = 0;
                        *(a1 + 1184) = 0;
                      }

                      else
                      {
                        if (*(a1 + 2012))
                        {
                          v132 = *(a1 + 1080);
                        }

                        else
                        {
                          v133 = *(a1 + 1080);
                          if (*(a1 + 1176))
                          {
                            v132 = *(*(a1 + 1160) + 4 * v133);
                          }

                          else
                          {
                            v132 = *(*(a1 + 1144) + 2 * v133);
                          }
                        }

                        *(a1 + 1184) = v132;
                      }

                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100006210(uint64_t a1)
{
  if (!*(a1 + 1008))
  {
    v3 = *(a1 + 1072);
    v4 = v3 - 1;
    if (v3 < 1)
    {
      v6 = 0;
      goto LABEL_27;
    }

    if (*(a1 + 2012))
    {
      if (v3 == 1 || (v3 ? (v5 = (v3 - 1) >> 16 == 0) : (v5 = 0), !v5))
      {
        v6 = 0;
        do
        {
LABEL_12:
          ++v6;
        }

        while (v3 > v6);
        goto LABEL_27;
      }

      v6 = v3 & 0x1FFFE;
      v9 = v3 & 0x1FFFE;
      do
      {
        v9 -= 2;
      }

      while (v9);
      if (v3 != v6)
      {
        goto LABEL_12;
      }

LABEL_27:
      v1 = v6 <= (v3 - v6);
      if (*(a1 + 2008))
      {
        return 1;
      }

      goto LABEL_28;
    }

    if (*(a1 + 1176))
    {
      v7 = *(a1 + 1160);
      if (v3 >= 8)
      {
        v6 = 0;
        if (v3)
        {
          v14 = HIWORD(v4);
          v8 = 0;
          if (!v14)
          {
            v8 = v3 & 0x1FFF8;
            v15 = (v7 + 20);
            v16 = 0uLL;
            v17.i64[0] = 0x100000001;
            v17.i64[1] = 0x100000001;
            v18 = v3 & 0x1FFF8;
            v19 = 0uLL;
            do
            {
              v16 = vaddq_s32(vandq_s8(vsubq_s32(v15[-1], *(v15 - 20)), v17), v16);
              v19 = vaddq_s32(vandq_s8(vsubq_s32(*v15, *(v15 - 4)), v17), v19);
              v15 += 2;
              v18 -= 8;
            }

            while (v18);
            v6 = vaddvq_s32(vaddq_s32(v19, v16));
            if (v3 == v8)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      do
      {
        v6 += (*(v7 + 4 * v8 + 4) - *(v7 + 4 * v8)) & 1;
        ++v8;
      }

      while (v3 > v8);
      goto LABEL_27;
    }

    v10 = *(a1 + 1144);
    if (v3 < 4)
    {
      v6 = 0;
      v11 = 0;
      goto LABEL_26;
    }

    v6 = 0;
    if (!v3)
    {
      v11 = 0;
      goto LABEL_26;
    }

    v11 = 0;
    if (HIWORD(v4))
    {
      goto LABEL_26;
    }

    if (v3 >= 0x10)
    {
      v20 = v3 & 0x1FFF0;
      v21 = (v10 + 18);
      v22 = 0uLL;
      v23.i64[0] = 0x100000001;
      v23.i64[1] = 0x100000001;
      v24 = v3 & 0x1FFF0;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      do
      {
        v28 = *(v21 - 18);
        v29 = *(v21 - 2);
        v30 = v21[-1];
        v25 = vaddq_s32(vandq_s8(vsubl_high_u16(v30, v28), v23), v25);
        v22 = vaddq_s32(vandq_s8(vsubl_u16(*v30.i8, *v28.i8), v23), v22);
        v27 = vaddq_s32(vandq_s8(vsubl_high_u16(*v21, v29), v23), v27);
        v26 = vaddq_s32(vandq_s8(vsubl_u16(*v21->i8, *v29.i8), v23), v26);
        v21 += 2;
        v24 -= 16;
      }

      while (v24);
      v6 = vaddvq_s32(vaddq_s32(vaddq_s32(v26, v22), vaddq_s32(v27, v25)));
      if (v3 == v20)
      {
        goto LABEL_27;
      }

      if ((v3 & 0xC) == 0)
      {
        v11 = v3 & 0x1FFF0;
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0;
      v20 = 0;
    }

    v11 = v3 & 0x1FFFC;
    v31 = v6;
    v32.i64[0] = 0x100000001;
    v32.i64[1] = 0x100000001;
    do
    {
      v31 = vaddq_s32(vandq_s8(vsubl_u16(*(v10 + 2 * (v20 & 0xFFFC) + 2), *(v10 + 2 * (v20 & 0xFFFC))), v32), v31);
      v20 += 4;
    }

    while (v11 != v20);
    v6 = vaddvq_s32(v31);
    if (v3 == v11)
    {
      goto LABEL_27;
    }

    do
    {
LABEL_26:
      v6 += (*(v10 + 2 * v11 + 2) - *(v10 + 2 * v11)) & 1;
      ++v11;
    }

    while (v3 > v11);
    goto LABEL_27;
  }

  v1 = 0;
  if (*(a1 + 2008))
  {
    return 1;
  }

LABEL_28:
  if (*(a1 + 2016))
  {
    return 1;
  }

  if (*(a1 + 1760) || !*(a1 + 1032) || *(a1 + 1296) != 5 || *(a1 + 1044) || *(a1 + 1004))
  {
    return 0;
  }

  v12 = sub_100012418;
  v13 = sub_100017328;
  if (*(a1 + 1108))
  {
LABEL_36:
    *(a1 + 1624) = v13;
    *(a1 + 1632) = v12;
    *(a1 + 1664) = 0u;
    return 1;
  }

  v33 = *(a1 + 1104);
  if (v33 == 36)
  {
    if (!*(a1 + 1041))
    {
      v12 = sub_100013828;
      v13 = sub_1000152F4;
      if (!*(a1 + 1024))
      {
        goto LABEL_36;
      }
    }

    return 0;
  }

  if (v33 != 24)
  {
    return 0;
  }

  if (*(a1 + 1041) || *(a1 + 1024))
  {
    if (v1)
    {
      v34 = sub_100013B50;
    }

    else
    {
      v34 = sub_1000128F8;
    }

    v35 = sub_100013620;
  }

  else
  {
    if (v1)
    {
      v34 = sub_10001442C;
    }

    else
    {
      v34 = sub_100014CD8;
    }

    v35 = sub_100013748;
  }

  *(a1 + 1624) = v34;
  *(a1 + 1632) = v35;
  *(a1 + 1664) = 0u;
  return 1;
}

uint64_t sub_10000660C(uint64_t a1)
{
  v1 = *(a1 + 1008);
  if (v1)
  {
    v2 = sub_100014CD8;
    *(a1 + 1624) = sub_10000EE30;
    *(a1 + 1664) = 0;
    if (*(a1 + 1760))
    {
      goto LABEL_3;
    }

LABEL_36:
    v17 = *(a1 + 1296);
    switch(v17)
    {
      case 2:
        if (!*(a1 + 1108) && !*(a1 + 1112))
        {
          v9 = 0;
          *(a1 + 1624) = sub_10000F490;
          *(a1 + 1664) = 0;
LABEL_89:
          v10 = sub_10000EF04;
          goto LABEL_90;
        }

        break;
      case 4:
        if (*(a1 + 1108) && *(a1 + 1112))
        {
          v9 = 0;
          v10 = sub_100012328;
          goto LABEL_90;
        }

        v20 = *(a1 + 1044);
        if (*(a1 + 1116))
        {
          if (v20)
          {
            v9 = 0;
            v21 = *(a1 + 1104) == 36;
            v22 = sub_100010FB0;
            v23 = sub_100011374;
          }

          else
          {
            if (*(a1 + 1036))
            {
              if (qword_1001065A8 && *(qword_1001065A8 + 164))
              {
                v9 = 0;
                *(a1 + 1624) = sub_1000102AC;
                *(a1 + 1664) = 0;
                v10 = sub_1000107EC;
              }

              else
              {
                v9 = 0;
                *(a1 + 1624) = sub_1000130F0;
                *(a1 + 1664) = 0;
                v10 = sub_1000133D4;
              }

              goto LABEL_90;
            }

            v9 = 0;
            v21 = *(a1 + 1104) == 36;
            v22 = sub_10000FB68;
            v23 = sub_10000FFFC;
          }

          if (v21)
          {
            v22 = v23;
          }

          *(a1 + 1624) = v22;
          *(a1 + 1664) = 0;
          v10 = sub_10000F1BC;
          goto LABEL_90;
        }

        v30 = sub_100010BE4;
        if (v20 || (v30 = sub_10000F490, !*(a1 + 2024)))
        {
          *(a1 + 1624) = v30;
          *(a1 + 1664) = 0;
        }

        break;
      case 5:
        if (!*(a1 + 1032))
        {
          v19 = sub_100016304;
          if (!*(a1 + 1108))
          {
            goto LABEL_94;
          }

          goto LABEL_68;
        }

        if (*(a1 + 1044))
        {
          v18 = *(a1 + 1048);
          v2 = sub_100016074;
          if (!v18)
          {
            v2 = sub_100015DB4;
          }

          v19 = sub_10001800C;
          if (v18)
          {
            v19 = sub_100017D58;
          }

          if (!*(a1 + 1108))
          {
            goto LABEL_82;
          }

LABEL_68:
          *(a1 + 1624) = v19;
          *(a1 + 1664) = 0;
          v4 = sub_100012418;
          goto LABEL_95;
        }

        v19 = sub_100017328;
        if (*(a1 + 1108))
        {
          goto LABEL_68;
        }

        v32 = sub_100013B50;
        if (!*(a1 + 1041))
        {
          v32 = sub_100013B50;
          if (!*(a1 + 1024))
          {
            v48 = *(a1 + 1104);
            v32 = sub_100015708;
            if (v48 != 12)
            {
              if (v48 == 36)
              {
                v32 = sub_1000152F4;
              }

              else
              {
                if (v48 == 24)
                {
                  goto LABEL_82;
                }

                v32 = sub_100015108;
              }
            }
          }
        }

        v2 = v32;
LABEL_82:
        *(a1 + 1624) = v2;
        *(a1 + 1664) = 0;
        v33 = *(a1 + 1104);
        switch(v33)
        {
          case 12:
            goto LABEL_85;
          case 36:
            if (!*(a1 + 1041) && !*(a1 + 1024))
            {
              v4 = sub_100013828;
              goto LABEL_95;
            }

            break;
          case 24:
LABEL_85:
            if (*(a1 + 1044))
            {
              v4 = sub_1000139F0;
            }

            else if (*(a1 + 1041) || *(a1 + 1024))
            {
              v4 = sub_100013620;
            }

            else if (v33 == 12)
            {
              v4 = sub_10001391C;
            }

            else
            {
              v4 = sub_100013748;
            }

            goto LABEL_95;
        }

LABEL_94:
        v4 = sub_10001194C;
        goto LABEL_95;
    }

    v9 = 0;
    goto LABEL_89;
  }

  v5 = *(a1 + 1072);
  v6 = v5 - 1;
  if (v5 < 1)
  {
    v8 = 0;
    goto LABEL_33;
  }

  if (!*(a1 + 2012))
  {
    if (*(a1 + 1176))
    {
      v11 = *(a1 + 1160);
      if (v5 >= 8)
      {
        v8 = 0;
        if (v5)
        {
          v24 = HIWORD(v6);
          v12 = 0;
          if (!v24)
          {
            v12 = v5 & 0x1FFF8;
            v25 = (v11 + 20);
            v26 = 0uLL;
            v27.i64[0] = 0x100000001;
            v27.i64[1] = 0x100000001;
            v28 = v5 & 0x1FFF8;
            v29 = 0uLL;
            do
            {
              v26 = vaddq_s32(vandq_s8(vsubq_s32(v25[-1], *(v25 - 20)), v27), v26);
              v29 = vaddq_s32(vandq_s8(vsubq_s32(*v25, *(v25 - 4)), v27), v29);
              v25 += 2;
              v28 -= 8;
            }

            while (v28);
            v8 = vaddvq_s32(vaddq_s32(v29, v26));
            if (v5 == v12)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v8 = 0;
        v12 = 0;
      }

      do
      {
        v8 += (*(v11 + 4 * v12 + 4) - *(v11 + 4 * v12)) & 1;
        ++v12;
      }

      while (v5 > v12);
      goto LABEL_33;
    }

    v14 = *(a1 + 1144);
    if (v5 < 4)
    {
      v8 = 0;
      v15 = 0;
      goto LABEL_32;
    }

    v8 = 0;
    if (!v5)
    {
      v15 = 0;
      goto LABEL_32;
    }

    v15 = 0;
    if (HIWORD(v6))
    {
      goto LABEL_32;
    }

    if (v5 >= 0x10)
    {
      v31 = v5 & 0x1FFF0;
      v36 = (v14 + 18);
      v37 = 0uLL;
      v38.i64[0] = 0x100000001;
      v38.i64[1] = 0x100000001;
      v39 = v5 & 0x1FFF0;
      v40 = 0uLL;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v43 = *(v36 - 18);
        v44 = *(v36 - 2);
        v45 = v36[-1];
        v40 = vaddq_s32(vandq_s8(vsubl_high_u16(v45, v43), v38), v40);
        v37 = vaddq_s32(vandq_s8(vsubl_u16(*v45.i8, *v43.i8), v38), v37);
        v42 = vaddq_s32(vandq_s8(vsubl_high_u16(*v36, v44), v38), v42);
        v41 = vaddq_s32(vandq_s8(vsubl_u16(*v36->i8, *v44.i8), v38), v41);
        v36 += 2;
        v39 -= 16;
      }

      while (v39);
      v8 = vaddvq_s32(vaddq_s32(vaddq_s32(v41, v37), vaddq_s32(v42, v40)));
      if (v5 == v31)
      {
        goto LABEL_33;
      }

      if ((v5 & 0xC) == 0)
      {
        v15 = v5 & 0x1FFF0;
        goto LABEL_32;
      }
    }

    else
    {
      v8 = 0;
      v31 = 0;
    }

    v15 = v5 & 0x1FFFC;
    v46 = v8;
    v47.i64[0] = 0x100000001;
    v47.i64[1] = 0x100000001;
    do
    {
      v46 = vaddq_s32(vandq_s8(vsubl_u16(*(v14 + 2 * (v31 & 0xFFFC) + 2), *(v14 + 2 * (v31 & 0xFFFC))), v47), v46);
      v31 += 4;
    }

    while (v15 != v31);
    v8 = vaddvq_s32(v46);
    if (v5 == v15)
    {
      goto LABEL_33;
    }

    do
    {
LABEL_32:
      v8 += (*(v14 + 2 * v15 + 2) - *(v14 + 2 * v15)) & 1;
      ++v15;
    }

    while (v5 > v15);
    goto LABEL_33;
  }

  if (v5 == 1 || (v5 ? (v7 = (v5 - 1) >> 16 == 0) : (v7 = 0), !v7))
  {
    v8 = 0;
    do
    {
LABEL_15:
      ++v8;
    }

    while (v5 > v8);
    goto LABEL_33;
  }

  v8 = v5 & 0x1FFFE;
  v13 = v5 & 0x1FFFE;
  do
  {
    v13 -= 2;
  }

  while (v13);
  if (v5 != v8)
  {
    goto LABEL_15;
  }

LABEL_33:
  v16 = v8 <= (v5 - v8);
  v2 = sub_10001442C;
  if (!v16)
  {
    v2 = sub_100014CD8;
  }

  *(a1 + 1624) = sub_10000EE30;
  *(a1 + 1664) = 0;
  if (!*(a1 + 1760))
  {
    goto LABEL_36;
  }

LABEL_3:
  v3 = *(a1 + 1296);
  if (*(a1 + 1032))
  {
    if (v3 != 5)
    {
      v9 = 0;
      *(a1 + 1624) = sub_100016D30;
      *(a1 + 1664) = 0;
      v10 = sub_100016B44;
LABEL_90:
      *(a1 + 1632) = v10;
      goto LABEL_96;
    }

    *(a1 + 1624) = sub_1000167AC;
    *(a1 + 1664) = 0;
    v4 = sub_10001664C;
  }

  else
  {
    if (v3 != 5)
    {
      v9 = 0;
      v10 = sub_100011638;
      goto LABEL_90;
    }

    v4 = sub_100011B60;
  }

LABEL_95:
  *(a1 + 1632) = v4;
  v9 = 1;
LABEL_96:
  v34 = sub_100018C5C;
  if (!*(a1 + 720))
  {
    v34 = sub_100018A24;
  }

  *(a1 + 1640) = v34;
  *(a1 + 1672) = 0u;
  *(a1 + 1648) = sub_10001A998;
  *(a1 + 1688) = 0;
  if (v9)
  {
    if (*(a1 + 724))
    {
      *(a1 + 1656) = sub_100018424;
      *(a1 + 1696) = 0;
      if (!v1)
      {
        return 1;
      }
    }

    else
    {
      *(a1 + 1656) = sub_10001A488;
      *(a1 + 1696) = 0;
      if (!v1)
      {
        return 1;
      }
    }

    goto LABEL_103;
  }

  *(a1 + 1656) = sub_10001A210;
  *(a1 + 1696) = 0;
  if (v1)
  {
LABEL_103:
    *(a1 + 1640) = sub_10001B344;
    *(a1 + 1648) = 0;
    *(a1 + 1680) = 0;
    *(a1 + 1688) = 0;
    *(a1 + 1656) = sub_10001ADF4;
    *(a1 + 1696) = 0;
  }

  return 1;
}

double sub_100006DE4(uint64_t a1)
{
  if (!*(a1 + 2008))
  {
    sub_100006210(a1);
  }

  *(a1 + 1752) = 0;
  result = 0.0;
  *(a1 + 1736) = 0u;
  *(a1 + 472) = sub_10007AE8C;
  *(a1 + 232) = sub_1000070E8;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  return result;
}

uint64_t sub_100006E58(uint64_t a1)
{
  if (!*(a1 + 2008) && !sub_100006210(a1))
  {
    sub_10000660C(a1);
  }

  *(a1 + 1736) = sub_100003C84;
  *(a1 + 1744) = sub_100006F1C;
  *(a1 + 1752) = sub_10000DAD0;
  *(a1 + 472) = sub_10007AE8C;
  *(a1 + 224) = 0;
  *(a1 + 232) = sub_1000070E8;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 672) = sub_10001AC58;
  *(a1 + 680) = sub_10001AB34;
  *(a1 + 688) = sub_10001AAD8;
  return 1;
}

uint64_t sub_100006F1C(uint64_t a1)
{
  v2 = *(a1 + 1432);
  v3 = sub_1000BD5C4(*(v2 + 8), 0xFFFFFFFF);
  v4 = sub_1000BD5C4(*(v2 + 36), v3);
  v5 = sub_1000BD5C4(*(v2 + 40), v4);
  v6 = *(v2 + 92);
  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      if (*(*v2 + 8 * i))
      {
        v8 = sub_100004554(a1, i);
        v5 = sub_1000BD5C4(v8, v5);
        v6 = *(v2 + 92);
      }
    }
  }

  return v5;
}

uint64_t sub_100006FC4(uint64_t a1)
{
  if (!*(a1 + 1456))
  {
    return 1;
  }

  v2 = *(a1 + 1432);
  v3 = 1;
  result = sub_100004BD4(a1, 1, 1);
  if (!result)
  {
    return result;
  }

  *(a1 + 2000) = 1;
  if (*(a1 + 996) && v2)
  {
    if (v2[2])
    {
      result = (*(a1 + 472))(a1);
      if (!result)
      {
        return result;
      }

      if (!v2[6])
      {
        v3 = 0;
        if (*(a1 + 1032))
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }

      v3 = 0;
      v2[2] = 0;
      goto LABEL_12;
    }

LABEL_11:
    if (v2[4])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v2)
  {
    goto LABEL_11;
  }

LABEL_12:
  result = (*(a1 + 232))(a1);
  if (!result)
  {
    return result;
  }

LABEL_13:
  if (*(a1 + 1032))
  {
LABEL_14:
    if (!*(a1 + 1760) && *(a1 + 996))
    {
      v5 = result;
      if ((v3 & 1) == 0)
      {
        sub_100004B44(a1);
      }

      sub_100004B94(a1);
      result = v5;
    }
  }

LABEL_20:
  if (qword_1001065A8 && *(qword_1001065A8 + 1064))
  {
    v6 = *(a1 + 1736);
    if (v6)
    {
      v7 = result;
      v6(a1, 0);
      return v7;
    }
  }

  return result;
}

uint64_t sub_1000070E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1432);
  if (!v8 || v8[4] || v8[2])
  {
    return 0;
  }

  if (!v8[3] || v8[16] - v8[18] <= v8[11])
  {
    goto LABEL_57;
  }

  if (qword_1001065A8)
  {
    v11 = *(qword_1001065A8 + 720);
    v12 = v11 != 0;
    v13 = *(qword_1001065A8 + 760);
    v14 = v13 | v11;
    v15 = v14 != 0;
    if (v13)
    {
      v16 = v12;
    }

    else
    {
      v16 = 1;
    }

    v17 = v14 != 0;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v12 = 0;
    v16 = 1;
  }

  if (!*(a1 + 996) || *(a1 + 1004) || (v18 = *(a1 + 1100), v19 = *(a1 + 1304), v20 = sub_1000C0034(56), (*(a1 + 1504) = v20) == 0))
  {
    sub_1000BFEC4(0);
    result = 0;
    *(a1 + 1504) = 0;
    return result;
  }

  v21 = v20;
  if ((*(v20 + 44) & 0x80000000) != 0 || (*(v20 + 48) & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

  v22 = qword_1001065A8;
  if (qword_1001065A8)
  {
    *(v20 + 44) = *(qword_1001065A8 + 632);
    LODWORD(v22) = *(v22 + 648);
  }

  else
  {
    *(v20 + 44) = 0;
  }

  v48 = v18;
  v47 = v12;
  *(v20 + 48) = v22;
  if (sub_100022AD4(v19) < 2)
  {
    v27 = 1;
  }

  else
  {
    v23 = 0;
    v24 = 1;
    do
    {
      if (*(a1 + 1096) >= 1)
      {
        v25 = 0;
        do
        {
          v26 = sub_100035888(v19, v24, v25);
          if (v26 > v23)
          {
            v23 = v26;
          }

          ++v25;
        }

        while (v25 < *(a1 + 1096));
      }

      ++v24;
    }

    while (sub_100022AD4(v19) > v24);
    v27 = (2 * v23) | 1;
  }

  v28 = sub_1000C0034((2 * v27));
  *v21 = v28;
  if (!v28)
  {
    goto LABEL_55;
  }

  v29 = sub_1000C0034((2 * v27));
  *(v21 + 8) = v29;
  if (!v29)
  {
    goto LABEL_55;
  }

  v30 = sub_1000C0034((2 * v27));
  *(v21 + 16) = v30;
  if (!v30)
  {
    goto LABEL_55;
  }

  v31 = sub_1000C0034(2 * v27 * v48);
  *(v21 + 24) = v31;
  if (!v31)
  {
    goto LABEL_55;
  }

  if (v17)
  {
    v32 = sub_1000C0034(2 * v48);
    *(v21 + 32) = v32;
    if (v32)
    {
      *(v21 + 40) = 0;
      v33 = qword_1001065A8;
      if (qword_1001065A8)
      {
        v33 = *(qword_1001065A8 + 640);
      }

      *(v21 + 52) = v33;
      goto LABEL_42;
    }

LABEL_55:
    v37 = 0;
    goto LABEL_56;
  }

LABEL_42:
  v34 = 1;
  v35 = 1;
  if (v16)
  {
    while (sub_100022AD4(v19) > v35)
    {
      v36 = 0;
      do
      {
        if (v36 >= *(a1 + 1096))
        {
          break;
        }

        if (!qword_1001065A8 || !*(qword_1001065A8 + 560) || sub_100035888(v19, v35, v36))
        {
          sub_10000A240(*(a1 + 1304), *(a1 + 1504), v35, v36);
          v34 = sub_10000A37C(a1, v35, v36, v15, 0);
        }

        ++v36;
      }

      while (v34);
      v37 = 0;
      if (!sub_1000CEDA4())
      {
        ++v35;
        if (v34)
        {
          continue;
        }
      }

      goto LABEL_56;
    }
  }

  else
  {
    while (sub_100022AD4(v19) > v35)
    {
      v39 = 0;
      while (1)
      {
        v40 = *(a1 + 1096);
        if (v39 >= v40)
        {
          break;
        }

        if (!qword_1001065A8 || !*(qword_1001065A8 + 560) || sub_100035888(v19, v35, v39))
        {
          sub_10000A240(*(a1 + 1304), *(a1 + 1504), v35, v39);
          v34 = sub_10000A37C(a1, v35, v39, v15, 0);
        }

        ++v39;
        if (!v34)
        {
          goto LABEL_81;
        }
      }

      if (v40 >= 1)
      {
        v41 = 0;
        do
        {
          sub_10000A240(*(a1 + 1304), *(a1 + 1504), v35, v41);
          v34 = sub_10000A37C(a1, v35, v41, 0, 1);
          if (!v34)
          {
            break;
          }

          ++v41;
        }

        while (v41 < *(a1 + 1096));
      }

      v42 = *(a1 + 1100);
      if (v42 >= 1)
      {
        v43 = 0;
        v44 = 2 * v42;
        do
        {
          *(*(v21 + 32) + v43) = 0;
          v43 += 2;
        }

        while (v44 != v43);
      }

      *(v21 + 40) = 0;
LABEL_81:
      v37 = 0;
      if (!sub_1000CEDA4())
      {
        ++v35;
        if (v34)
        {
          continue;
        }
      }

      goto LABEL_56;
    }
  }

  if (v47)
  {
    v45 = 1;
    while (sub_100022AD4(v19) > v45)
    {
      if (*(a1 + 1096) >= 1)
      {
        v46 = 0;
        do
        {
          sub_10000A240(*(a1 + 1304), *(a1 + 1504), v45, v46);
          v34 = sub_10000A37C(a1, v45, v46, 0, 1);
          if (!v34)
          {
            break;
          }

          ++v46;
        }

        while (v46 < *(a1 + 1096));
      }

      v37 = 0;
      if (!sub_1000CEDA4())
      {
        ++v45;
        if (v34)
        {
          continue;
        }
      }

      goto LABEL_56;
    }
  }

  v37 = v34;
LABEL_56:
  sub_1000BFEC4(*v21);
  sub_1000BFEC4(*(v21 + 8));
  sub_1000BFEC4(*(v21 + 16));
  sub_1000BFEC4(*(v21 + 24));
  sub_1000BFEC4(*(v21 + 32));
  sub_1000BFEC4(v21);
  *(a1 + 1504) = 0;
  if (!v37)
  {
    return 0;
  }

LABEL_57:
  if (v8[23] >= 1)
  {
    v38 = 0;
    do
    {
      sub_100007618(a1, v38++, a3, a4, a5, a6, a7, a8);
    }

    while (v8[23] > v38);
  }

  if (*(a1 + 1032))
  {
    *(a1 + 136) = *(a1 + 152);
  }

  else
  {
    *(a1 + 16) = *(a1 + 24);
  }

  return 1;
}

void *sub_100007618(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = 0;
  v8 = *(*result[179] + 8 * a2);
  if (v8)
  {
    v9 = a2;
    v10 = result;
    v11 = *(result + 275);
    v12 = v11;
    v13 = sub_1000C9F54(v11, a2, a3, a4, a5, a6, a7, a8);
    v14 = v13;
    v15 = *v8;
    if (v15 >= 1)
    {
      if (v11 > 0)
      {
        v16 = 0;
        v17 = v13 + v11;
        v19 = v13 < v10 + 1772 && v10 + 1770 < v17;
        while (1)
        {
          sub_100001370(v10, v9, v16, &v93);
          v27 = *(v8[1] + 2 * v16);
          if (v27 <= *(v8[2] + 2 * v16))
          {
            goto LABEL_11;
          }

          v28 = *(v8[3] + 8 * v16);
          v29 = (v27 + ((v27 & 0x8000) >> 15)) << 16 >> 17;
          v30 = v93;
          if (v11 < 4)
          {
            v31 = 0;
LABEL_15:
            v32 = *(v8[3] + 8 * v16);
LABEL_16:
            v33 = (v30 + v31);
            v34 = &v14->i8[v31];
            v35 = v11 - v31;
            do
            {
              v36 = *(v10 + 1771);
              v37 = *(v10 + 1770);
              v38 = *v32++;
              v39 = (v29 + v38 + (v36 - v37) * v27) / v27;
              v40 = *v33++;
              v41 = v39 - (v36 - v37) + v40;
              if (v41 < v36)
              {
                v36 = v41;
              }

              if (v36 <= v37)
              {
                LOBYTE(v36) = *(v10 + 1770);
              }

              *v34++ = v36;
              --v35;
            }

            while (v35);
            goto LABEL_10;
          }

          v31 = 0;
          v43 = v14 < v28 + 2 * v11 && v28 < v17 || v19;
          v45 = v14 < &v93->i8[v11] && v93 < v17;
          if ((v43 & 1) != 0 || v45)
          {
            goto LABEL_15;
          }

          v20 = vdupq_n_s32(v27);
          v21 = vdupq_n_s32(v29);
          if (v11 >= 0x10)
          {
            v47 = vdupq_n_s16(v27);
            v48 = (v10 + 1771);
            v49 = vld1_dup_s8(v48);
            v50 = vmovl_u8(v49);
            v22 = vmovl_high_u16(v50);
            v23 = vmovl_u16(*v50.i8);
            v51 = (v10 + 1770);
            v52 = vld1_dup_s8(v51);
            v53 = vmovl_u8(v52);
            v24 = vmovl_high_u16(v53);
            v25 = vmovl_u16(*v53.i8);
            v54 = vsubl_u8(v49, v52);
            v55 = vmovl_high_s16(v54);
            v26 = vmovl_s16(*v54.i8);
            v56 = vmull_high_s16(v54, v47);
            v57 = vmull_s16(*v54.i8, *v47.i8);
            v58 = v11 & 0x7FFFFFF0;
            v59 = v14;
            v60 = v93;
            v61 = *(v8[3] + 8 * v16);
            do
            {
              v63 = *v61;
              v62 = v61[1];
              v61 += 2;
              v64 = vaddw_high_s16(v21, v63);
              v65 = vaddw_s16(v21, *v62.i8);
              v66 = vaddq_s32(vaddw_high_s16(v21, v62), v56);
              v67 = vaddq_s32(vaddw_s16(v21, *v63.i8), v57);
              v68 = vaddq_s32(v64, v56);
              v69 = vaddq_s32(v65, v57);
              v70 = v67.i32[3];
              v68.i32[0] /= v20.i32[0];
              v71 = v67.i32[0] / v20.i32[0];
              v67.i32[0] = v69.i32[0] / v20.i32[0];
              v69.i32[0] = v71;
              v68.i32[1] /= v20.i32[1];
              v72 = v67.i32[1] / v20.i32[1];
              v67.i32[1] = v69.i32[1] / v20.i32[1];
              v69.i32[1] = v72;
              v68.i32[2] /= v20.i32[2];
              v73 = v67.i32[2] / v20.i32[2];
              v67.i32[2] = v69.i32[2] / v20.i32[2];
              v69.i32[2] = v73;
              v68.i32[3] /= v20.i32[3];
              v66.i32[0] /= v20.i32[0];
              v66.i32[1] /= v20.i32[1];
              v67.i32[3] = v69.i32[3] / v20.i32[3];
              v66.i32[2] /= v20.i32[2];
              v69.i32[3] = v70 / v20.i32[3];
              v66.i32[3] /= v20.i32[3];
              v74 = *v60++;
              v75 = vmovl_u8(*v74.i8);
              v76 = vmovl_high_u8(v74);
              v77 = vminq_s32(vaddw_high_u16(vsubq_s32(v66, v55), v76), v22);
              v78 = vminq_s32(vaddw_u16(vsubq_s32(v69, v26), *v75.i8), v23);
              v94.val[1] = vmaxq_s32(vminq_s32(vaddw_high_u16(vsubq_s32(v68, v55), v75), v22), v24);
              v94.val[2] = vmaxq_s32(vminq_s32(vaddw_u16(vsubq_s32(v67, v26), *v76.i8), v23), v25);
              v94.val[0] = vmaxq_s32(v78, v25);
              v94.val[3] = vmaxq_s32(v77, v24);
              *v59++ = vqtbl4q_s8(v94, xmmword_1000F0C70);
              v58 -= 16;
            }

            while (v58);
            v12 = v11;
            if ((v11 & 0x7FFFFFF0) == v11)
            {
              goto LABEL_10;
            }

            v46 = v11 & 0x7FFFFFF0;
            if ((v11 & 0xC) == 0)
            {
              v32 = (v28 + 2 * (v11 & 0x7FFFFFF0));
              v31 = v11 & 0x7FFFFFF0;
              goto LABEL_16;
            }
          }

          else
          {
            v46 = 0;
          }

          v32 = (v28 + 2 * (v11 & 0x7FFFFFFC));
          v79.i64[0] = 0xFF000000FFLL;
          v79.i64[1] = 0xFF000000FFLL;
          v22 = vandq_s8(vmovl_u16(vdup_n_s16(*(v10 + 1771))), v79);
          v23 = vandq_s8(vmovl_u16(vdup_n_s16(*(v10 + 1770))), v79);
          v24 = vsubq_s32(v22, v23);
          v25 = vmulq_s32(v24, vmovl_s16(vdup_n_s16(v27)));
          v80 = (v28 + 2 * v46);
          v81 = (v30 + v46);
          v82 = (v14->i32 + v46);
          v83 = v46 - (v11 & 0x7FFFFFFC);
          do
          {
            v84 = *v80++;
            v85 = vaddq_s32(vaddw_s16(v21, v84), v25);
            v85.i32[0] /= v20.i32[0];
            v85.i32[1] /= v20.i32[1];
            v85.i32[2] /= v20.i32[2];
            v85.i32[3] /= v20.i32[3];
            v84.i32[0] = *v81++;
            v26.i32[0] = v84.i32[0];
            v26.i64[0] = vmovl_u8(*v26.i8).u64[0];
            *v82++ = vuzp1_s8(vmovn_s32(vmaxq_s32(vminq_s32(vaddw_u16(vsubq_s32(v85, v24), *v26.i8), v22), v23)), *v20.i8).u32[0];
            v83 += 4;
          }

          while (v83);
          v31 = v11 & 0x7FFFFFFC;
          if (v31 != v11)
          {
            goto LABEL_16;
          }

LABEL_10:
          sub_1000017DC(v10, v9, v16, v14, *v20.i64, *v21.i64, v22, v23, v24, v25);
LABEL_11:
          if (++v16 == v15)
          {
            goto LABEL_52;
          }
        }
      }

      for (i = 0; i != v15; ++i)
      {
        sub_100001370(v10, v9, i, &v93);
        if (*(v8[1] + 2 * i) > *(v8[2] + 2 * i))
        {
          sub_1000017DC(v10, v9, i, v14, v87, v88, v89, v90, v91, v92);
        }
      }
    }

LABEL_52:
    if (*(v10 + 1032))
    {
      if (!*(v10 + 1760))
      {
        sub_1000045E0(v10, v9);
      }
    }

    return sub_1000CA03C(v14, v12);
  }

  return result;
}

uint64_t sub_100007B30(uint64_t a1, unsigned int a2, int a3)
{
  v4 = 0;
  if (a2 <= 5 && ((1 << a2) & 0x34) != 0)
  {
    if (!*(a1 + 992) || !*(a1 + 472))
    {
      return 0;
    }

    v4 = 1;
  }

  if (a3 && (!*(a1 + 1312) || *(a1 + 1041)))
  {
    return 0;
  }

  *(a1 + 1456) = 1;
  v6 = sub_100008F84;
  v7 = sub_100008F14;
  v8 = sub_100008C78;
  v9 = sub_100008A18;
  if (a2 == 10)
  {
    v10 = *(a1 + 1296);
    v6 = sub_100008104;
    v7 = sub_1000080BC;
    v8 = sub_100008034;
    v9 = sub_100007E60;
    if (v10 != 2 && v10 != 4)
    {
      *(a1 + 1456) = 0;
      if (*(a1 + 996))
      {
        v17 = *(a1 + 224);
        if (v17)
        {
          v17(a1);
        }
      }

      sub_1000BFEC4(*(a1 + 1464));
      sub_1000BFEC4(*(a1 + 1472));
      sub_1000BFEC4(*(a1 + 1480));
      *(a1 + 1480) = 0;
      *(a1 + 1464) = 0u;
      sub_1000BFEC4(*(a1 + 1496));
      *(a1 + 1496) = 0;
      return 1;
    }
  }

  *(a1 + 208) = v9;
  *(a1 + 216) = v8;
  *(a1 + 224) = v7;
  *(a1 + 232) = v6;
  if (*(a1 + 992))
  {
    if (!*(a1 + 472) || !*(a1 + 496))
    {
      *(a1 + 452) = a2 == 4;
      v11 = a2 == 5;
      v12 = 280;
LABEL_21:
      *(a1 + v12) = v11;
      goto LABEL_22;
    }

    *(a1 + 452) = a2 == 4;
    *(a1 + 280) = a2 == 5;
    if ((v4 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v11 = 0;
    *(a1 + 456) = 0;
    v12 = 448;
    goto LABEL_21;
  }

  if (v4)
  {
    goto LABEL_20;
  }

LABEL_22:
  if ((!*(a1 + 996) || v8(a1)) && (sub_1000BFEC4(*(a1 + 1464)), sub_1000BFEC4(*(a1 + 1472)), sub_1000BFEC4(*(a1 + 1480)), sub_1000BFEC4(*(a1 + 1496)), *(a1 + 1496) = 0, *(a1 + 1464) = 0, *(a1 + 1480) = 0, *(a1 + 1472) = 0, v13 = sub_1000C0034(2 * *(a1 + 1092)), (*(a1 + 1464) = v13) != 0) && (v14 = sub_1000C0034(8 * *(a1 + 1092)), (*(a1 + 1472) = v14) != 0) && (v15 = sub_1000C0034(4 * *(a1 + 1092)), (*(a1 + 1480) = v15) != 0))
  {
    v16 = sub_1000C0034(4 * *(a1 + 1100));
    *(a1 + 1496) = v16;
    *(a1 + 1488) = 0;
    if (v16)
    {
      return 1;
    }
  }

  else
  {
    *(a1 + 1488) = 0;
  }

  sub_1000BFEC4(*(a1 + 1464));
  sub_1000BFEC4(*(a1 + 1472));
  sub_1000BFEC4(*(a1 + 1480));
  result = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1480) = 0;
  *(a1 + 1472) = 0;
  return result;
}

uint64_t sub_100007DF0(uint64_t a1)
{
  *(a1 + 1456) = 0;
  if (*(a1 + 996))
  {
    v2 = *(a1 + 224);
    if (v2)
    {
      v2(a1);
    }
  }

  sub_1000BFEC4(*(a1 + 1464));
  sub_1000BFEC4(*(a1 + 1472));
  sub_1000BFEC4(*(a1 + 1480));
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  result = sub_1000BFEC4(*(a1 + 1496));
  *(a1 + 1496) = 0;
  return result;
}

uint64_t sub_100007E60(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v20 = 0;
  v10 = *(a1 + 1440);
  if (*(a1 + 1296) == 4)
  {
    if (!qword_1001065A8)
    {
      v12 = *v10;
      v13 = *(v10 + 8);
      sub_100001370(a1, a3, a4, &v20);
      v14 = sub_100001FC8(a1, a3, a4);
      if (v12 <= 0)
      {
LABEL_19:
        *(v10 + 4) += a5;
        return 1;
      }

LABEL_12:
      for (i = 0; i != v12; ++i)
      {
        v16 = *(v20 + i) - *(a2 + i);
        *(v13 + 4 * i) += v16 * v16 * a5 * *(v14 + 2 * i) / *(a1 + 1192);
      }

      goto LABEL_19;
    }

    v11 = *(qword_1001065A8 + 5300) == 0;
    if (!*(qword_1001065A8 + 3360))
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!qword_1001065A8)
    {
      v12 = *v10;
      v13 = *(v10 + 8);
      sub_100001370(a1, a3, a4, &v20);
      goto LABEL_16;
    }

    v11 = 0;
    if (!*(qword_1001065A8 + 3360))
    {
LABEL_8:
      v12 = *v10;
      v13 = *(v10 + 8);
      sub_100001370(a1, a3, a4, &v20);
      if (v11)
      {
        v14 = sub_100001FC8(a1, a3, a4);
        if (v12 <= 0)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

LABEL_16:
      if (v12 > 0)
      {
        for (j = 0; j != v12; *(v13 + 4 * j++) += v18 * v18 * a5)
        {
          v18 = *(v20 + j) - *(a2 + j);
        }
      }

      goto LABEL_19;
    }
  }

  if (*(a1 + 1388) != a3)
  {
    goto LABEL_8;
  }

  return 1;
}

BOOL sub_100008034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1440);
  if (v9)
  {
    sub_1000BFEC4(*(v9 + 8));
    *(*(a1 + 1440) + 8) = 0;
    sub_1000BFEC4(*(a1 + 1440));
    *(a1 + 1440) = 0;
  }

  v10 = sub_1000BFBD8(0x10uLL, a2, a3, a4, a5, a6, a7, a8);
  *(a1 + 1440) = v10;
  *v10 = *(a1 + 1124);
  *(*(a1 + 1440) + 4) = 0;
  *(*(a1 + 1440) + 8) = sub_1000C0034(4 * **(a1 + 1440));
  return *(*(a1 + 1440) + 8) != 0;
}

uint64_t sub_1000080BC(uint64_t result)
{
  v1 = *(result + 1440);
  if (v1)
  {
    v2 = result;
    sub_1000BFEC4(*(v1 + 8));
    *(*(v2 + 1440) + 8) = 0;
    result = sub_1000BFEC4(*(v2 + 1440));
    *(v2 + 1440) = 0;
  }

  return result;
}

uint64_t sub_100008104(uint64_t a1)
{
  v2 = *(a1 + 1440);
  v3 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v4 = (a1 + 1296);
    v5 = *(a1 + 1296) == 4 && *(qword_1001065A8 + 5300) == 0;
    v6 = *(qword_1001065A8 + 3368);
    v7 = *(qword_1001065A8 + 3388) == 0;
    v3 = *(qword_1001065A8 + 3376);
    v8 = v2[1];
    if (v8 < 50)
    {
      return 1;
    }

LABEL_5:
    v9 = *(a1 + 1404) * v3;
    v10 = v9 & ~(v9 >> 31);
    if (v5)
    {
      v11 = *(a1 + 1188);
      v12 = v10 + v8;
      v13 = *v2;
      v14 = *(v2 + 1);
      v15 = *(a1 + 1248);
      v155 = v6;
      if (!v15)
      {
LABEL_12:
        v17 = v11;
        v18 = sub_1000C0034(2 * v13 * v11);
        v11 = v17;
        v15 = v18;
        *(a1 + 1248) = v18;
        if (!v18)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v11 = 1;
      v12 = v10 + v8;
      v13 = *v2;
      v14 = *(v2 + 1);
      v15 = *(a1 + 1248);
      v155 = v6;
      if (!v15)
      {
        goto LABEL_12;
      }
    }

    v154 = v7;
    v156 = v4;
    v153 = *(a1 + 1280);
    if (v153)
    {
      v19 = v11;
      v157 = v5;
      v20 = 0;
      v21 = 0;
      v22 = *(a1 + 1208);
      if (v157)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    v19 = v11;
    v30 = sub_1000C0034(2 * v13 * v11);
    *(a1 + 1280) = v30;
    v15 = *(a1 + 1248);
    if (v30)
    {
      v20 = v30;
      v157 = v5;
      v21 = 1;
      v22 = *(a1 + 1208);
      if (v157)
      {
LABEL_15:
        v23 = sub_1000C0034(8 * v13);
        if (!v23)
        {
          v16 = 0;
          v4 = v156;
          goto LABEL_162;
        }

        if (v13 < 1)
        {
          goto LABEL_83;
        }

        v25 = v12;
        v26 = v9;
        if (v13 > 7)
        {
          v28 = v19;
          v29 = *&v155;
          if (v23 >= v14 + 4 * v13 || v14 >= v23 + 8 * v13)
          {
            v41 = vdupq_lane_s64(v155, 0);
            v42 = vdupq_lane_s64(*&v26, 0);
            v27 = v13 & 0x7FFFFFF8;
            v43 = vdupq_lane_s64(*&v25, 0);
            v44 = v14 + 1;
            v45 = v23 + 32;
            v46 = v27;
            do
            {
              v47 = *(v44 - 1);
              v48.i64[0] = v47;
              v48.i64[1] = SDWORD1(v47);
              v49 = vcvtq_f64_s64(v48);
              v48.i64[0] = SDWORD2(v47);
              v48.i64[1] = SHIDWORD(v47);
              v50 = vcvtq_f64_s64(v48);
              v48.i64[0] = *v44;
              v48.i64[1] = HIDWORD(*v44);
              v51 = vcvtq_f64_s64(v48);
              v48.i64[0] = *(v44 + 1);
              v48.i64[1] = HIDWORD(*v44);
              *(v45 - 32) = vdivq_f64(v43, vmlaq_f64(v42, v41, v49));
              *(v45 - 16) = vdivq_f64(v43, vmlaq_f64(v42, v41, v50));
              v24 = vdivq_f64(v43, vmlaq_f64(v42, v41, vcvtq_f64_s64(v48)));
              *v45 = vdivq_f64(v43, vmlaq_f64(v42, v41, v51));
              *(v45 + 16) = v24;
              v45 += 64;
              v44 += 2;
              v46 -= 8;
            }

            while (v46);
            if (v27 == v13)
            {
LABEL_44:
              if (v28 >= 1)
              {
                v56 = (a1 + 1768);
                if (v153)
                {
                  v57 = 0;
                }

                else
                {
                  v57 = v13;
                }

                if (v154)
                {
                  v58 = 2 * (v13 + v13 * (v28 - 1));
                  v59 = 0;
                  if (v153)
                  {
                    v60 = v15 + v58;
                    v62 = v15 < v22->u64 + v58 && v22 < v60;
                    if (v15 < v23 + 8 * v13 && v23 < v60)
                    {
                      v62 = 1;
                    }

                    v65 = v15 < a1 + 1770 && v56 < v60 || v62;
                    if (v13 < 8)
                    {
                      v65 = 1;
                    }

                    v66 = 2 * v13;
                    __asm
                    {
                      FMOV            V2.2D, #-0.5
                      FMOV            V3.2D, #0.5
                    }

                    v72.i64[0] = 0x100000001;
                    v72.i64[1] = 0x100000001;
                    v4 = v156;
                    do
                    {
                      v73 = 0;
                      if (v65)
                      {
                        goto LABEL_166;
                      }

                      v74 = vld1_dup_s16(v56);
                      v24 = vmovl_u16(v74);
                      v75 = v13 & 0x7FFFFFF8;
                      v76 = v23;
                      do
                      {
                        v77 = *(v22 + v73);
                        v78 = vmovl_high_u16(v77);
                        v79.i64[0] = v78.u32[2];
                        v79.i64[1] = v78.u32[3];
                        v80 = vcvtq_f64_u64(v79);
                        v79.i64[0] = v78.u32[0];
                        v79.i64[1] = v78.u32[1];
                        v81 = vcvtq_f64_u64(v79);
                        v82 = vmovl_u16(*v77.i8);
                        v79.i64[0] = v82.u32[2];
                        v79.i64[1] = v82.u32[3];
                        v83 = vcvtq_f64_u64(v79);
                        v79.i64[0] = v82.u32[0];
                        v79.i64[1] = v82.u32[1];
                        v84 = vcvtq_f64_u64(v79);
                        v86 = v76[2];
                        v85 = v76[3];
                        v88 = *v76;
                        v87 = v76[1];
                        v76 += 4;
                        *(v15 + v73) = vuzp1q_s16(vminq_s32(vmaxq_u32(vuzp1q_s32(vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_f64(v88, v84)), vmlaq_f64(_Q2, v88, v84), vmlaq_f64(_Q3, v88, v84))), vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_f64(v87, v83)), vmlaq_f64(_Q2, v87, v83), vmlaq_f64(_Q3, v87, v83)))), v72), v24), vminq_s32(vmaxq_u32(vuzp1q_s32(vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_f64(v86, v81)), vmlaq_f64(_Q2, v86, v81), vmlaq_f64(_Q3, v86, v81))), vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_f64(v85, v80)), vmlaq_f64(_Q2, v85, v80), vmlaq_f64(_Q3, v85, v80)))), v72), v24));
                        v73 += 16;
                        v75 -= 8;
                      }

                      while (v75);
                      v73 = v13 & 0x7FFFFFF8;
                      if (v73 != v13)
                      {
LABEL_166:
                        do
                        {
                          v24.i16[0] = v22->i16[v73];
                          v89 = v24.u64[0];
                          v90 = *(v23 + 8 * v73);
                          v91 = v90 * v89;
                          v92 = v89 * v90 + -0.5;
                          *v24.i64 = v89 * v90 + 0.5;
                          if (v91 < 0.0)
                          {
                            *v24.i64 = v92;
                          }

                          v93 = *v24.i64;
                          if (*v24.i64 <= 1)
                          {
                            v93 = 1;
                          }

                          if (v93 >= *v56)
                          {
                            LOWORD(v93) = *v56;
                          }

                          *(v15 + 2 * v73++) = v93;
                        }

                        while (v13 != v73);
                      }

                      ++v59;
                      v22 = (v22 + v66);
                      v15 += v66;
                    }

                    while (v59 != v28);
                  }

                  else
                  {
                    v102 = v20 + v58;
                    v103 = v15 + v58;
                    v104 = &v22->i8[v58];
                    v105 = v23 + 8 * v13;
                    v106 = a1 + 1770;
                    v108 = v20 < v103 && v15 < v102;
                    if (v20 < v104 && v22 < v102)
                    {
                      v108 = 1;
                    }

                    if (v20 < v105 && v23 < v102)
                    {
                      v108 = 1;
                    }

                    v112 = v20 < v106 && v56 < v102 || v108;
                    if (v15 >= v104 || v22 >= v103)
                    {
                      v114 = v112;
                    }

                    else
                    {
                      v114 = 1;
                    }

                    if (v15 >= v105 || v23 >= v103)
                    {
                      v116 = v114;
                    }

                    else
                    {
                      v116 = 1;
                    }

                    v118 = v15 < v106 && v56 < v103;
                    v119 = (v13 < 0x10 || v118) | v116;
                    v120 = 2 * v13;
                    v121 = 2 * v57;
                    __asm
                    {
                      FMOV            V2.2D, #-0.5
                      FMOV            V3.2D, #0.5
                    }

                    v124.i64[0] = 0x100000001;
                    v124.i64[1] = 0x100000001;
                    v4 = v156;
                    do
                    {
                      v125 = 0;
                      if (v119)
                      {
                        goto LABEL_167;
                      }

                      v126 = vld1_dup_s16(v56);
                      v127 = vmovl_u16(v126);
                      v128 = v13 & 0x7FFFFFF8;
                      v129 = v23;
                      do
                      {
                        v130 = *(v22 + v125);
                        *(v20 + v125) = v130;
                        v131 = vmovl_high_u16(v130);
                        v132.i64[0] = v131.u32[2];
                        v132.i64[1] = v131.u32[3];
                        v133 = vcvtq_f64_u64(v132);
                        v132.i64[0] = v131.u32[0];
                        v132.i64[1] = v131.u32[1];
                        v134 = vcvtq_f64_u64(v132);
                        v135 = vmovl_u16(*v130.i8);
                        v132.i64[0] = v135.u32[2];
                        v132.i64[1] = v135.u32[3];
                        v136 = vcvtq_f64_u64(v132);
                        v132.i64[0] = v135.u32[0];
                        v132.i64[1] = v135.u32[1];
                        v137 = vcvtq_f64_u64(v132);
                        v139 = v129[2];
                        v138 = v129[3];
                        v141 = *v129;
                        v140 = v129[1];
                        v129 += 4;
                        *(v15 + v125) = vuzp1q_s16(vminq_s32(vmaxq_u32(vuzp1q_s32(vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_f64(v141, v137)), vmlaq_f64(_Q2, v141, v137), vmlaq_f64(_Q3, v141, v137))), vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_f64(v140, v136)), vmlaq_f64(_Q2, v140, v136), vmlaq_f64(_Q3, v140, v136)))), v124), v127), vminq_s32(vmaxq_u32(vuzp1q_s32(vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_f64(v139, v134)), vmlaq_f64(_Q2, v139, v134), vmlaq_f64(_Q3, v139, v134))), vcvtq_s64_f64(vbslq_s8(vcltzq_f64(vmulq_f64(v138, v133)), vmlaq_f64(_Q2, v138, v133), vmlaq_f64(_Q3, v138, v133)))), v124), v127));
                        v125 += 16;
                        v128 -= 8;
                      }

                      while (v128);
                      v125 = v13 & 0x7FFFFFF8;
                      if (v125 != v13)
                      {
LABEL_167:
                        do
                        {
                          v142 = v22->u16[v125];
                          *(v20 + 2 * v125) = v142;
                          v143 = *(v23 + 8 * v125);
                          v144 = v142 * v143 + 0.5;
                          if (v143 * v142 < 0.0)
                          {
                            v144 = v142 * v143 + -0.5;
                          }

                          v145 = v144;
                          if (v144 <= 1)
                          {
                            v145 = 1;
                          }

                          if (v145 >= *v56)
                          {
                            LOWORD(v145) = *v56;
                          }

                          *(v15 + 2 * v125++) = v145;
                        }

                        while (v13 != v125);
                      }

                      ++v59;
                      v22 = (v22 + v120);
                      v20 += v121;
                      v15 += v120;
                    }

                    while (v59 != v28);
                  }
                }

                else
                {
                  v94 = 0;
                  v95 = 2 * v13;
                  if (v153)
                  {
                    v4 = v156;
                    do
                    {
                      for (i = 0; i != v13; ++i)
                      {
                        v97 = v22->u16[i];
                        if (*(*(a1 + 1448) + 4 * i))
                        {
                          v98 = *(v23 + 8 * i);
                          v99 = v98 * v97;
                          v100 = v97 * v98 + -0.5;
                          v101 = v97 * v98 + 0.5;
                          if (v99 < 0.0)
                          {
                            v101 = v100;
                          }

                          v97 = v101;
                          if (v101 <= 1)
                          {
                            v97 = 1;
                          }

                          if (v97 >= *v56)
                          {
                            LOWORD(v97) = *v56;
                          }
                        }

                        *(v15 + 2 * i) = v97;
                      }

                      ++v94;
                      v15 += v95;
                      v22 = (v22 + v95);
                    }

                    while (v94 != v28);
                  }

                  else
                  {
                    v146 = 2 * v57;
                    v4 = v156;
                    do
                    {
                      for (j = 0; j != v13; ++j)
                      {
                        v148 = v22->u16[j];
                        *(v20 + 2 * j) = v148;
                        if (*(*(a1 + 1448) + 4 * j))
                        {
                          v149 = *(v23 + 8 * j);
                          v150 = v149 * v148;
                          v151 = v148 * v149 + -0.5;
                          v152 = v148 * v149 + 0.5;
                          if (v150 < 0.0)
                          {
                            v152 = v151;
                          }

                          v148 = v152;
                          if (v152 <= 1)
                          {
                            v148 = 1;
                          }

                          if (v148 >= *v56)
                          {
                            LOWORD(v148) = *v56;
                          }
                        }

                        *(v15 + 2 * j) = v148;
                      }

                      ++v94;
                      v15 += v95;
                      v20 += v146;
                      v22 = (v22 + v95);
                    }

                    while (v94 != v28);
                  }
                }

                v16 = 1;
LABEL_162:
                sub_1000BFEC4(v23);
                if (*v4 != 4 || v157)
                {
                  goto LABEL_34;
                }

                goto LABEL_33;
              }

LABEL_83:
              v16 = 1;
              v4 = v156;
              goto LABEL_162;
            }
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
          v28 = v19;
          v29 = *&v155;
        }

        v52 = (v23 + 8 * v27);
        v53 = v13 - v27;
        v54 = v14 + v27;
        do
        {
          v55 = *v54++;
          *v52++ = v25 / (v26 + v55 * v29);
          --v53;
        }

        while (v53);
        goto LABEL_44;
      }

LABEL_21:
      v16 = 1;
      v4 = v156;
      v31 = qword_1001065A8;
      if (!qword_1001065A8)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v4 = v156;
LABEL_25:
    v20 = 0;
    v16 = 0;
    if (v5)
    {
      sub_1000BFEC4(0);
      if (*v4 != 4 || v5)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    LOBYTE(v157) = v5;
    v22 = *(a1 + 1208);
    v21 = 0;
    v31 = qword_1001065A8;
    if (!qword_1001065A8)
    {
      goto LABEL_31;
    }

LABEL_29:
    if (*(v31 + 3384))
    {
      v32 = sub_100009BC8(a1, v21, v13, v12, v14, v22, 0, v20, 1.0);
      v33 = a1;
      v21 = 0;
      v34 = v13;
      v35 = v12;
      v36 = v14;
      v37 = v22;
      v38 = v15;
      v39 = 0;
      goto LABEL_32;
    }

LABEL_31:
    v32 = 1.0;
    v33 = a1;
    v34 = v13;
    v35 = v12;
    v36 = v14;
    v37 = v22;
    v38 = v15;
    v39 = v20;
LABEL_32:
    sub_100009BC8(v33, v21, v34, v35, v36, v37, v38, v39, v32);
    if (*v4 != 4 || v157)
    {
LABEL_34:
      *(a1 + 1208) = *(a1 + 1248);
      return v16;
    }

LABEL_33:
    *v4 = 2;
    goto LABEL_34;
  }

  v4 = (a1 + 1296);
  v5 = *(a1 + 1296) == 4;
  v6 = 0;
  v7 = 1;
  v8 = v2[1];
  if (v8 >= 50)
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t sub_100008A18(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v10 = *(a1 + 1432);
  v34 = 0;
  sub_100001370(a1, a3, a4, &v34);
  if (*(v10 + 92) <= a3 || (v18 = *(*v10 + 8 * a3)) == 0)
  {
    result = sub_100009488(a1, a3);
    if (!result)
    {
      return result;
    }

    v18 = *(*v10 + 8 * a3);
  }

  if (!*(v18[3] + 8 * a4))
  {
    *(v18[3] + 8 * a4) = sub_1000BFBD8(2 * *(v10 + 32), v11, v12, v13, v14, v15, v16, v17);
    v20 = *(v10 + 56);
    v21 = *(v10 + 60);
    *(v10 + 56) = v20 + 1;
    if (v20 >= v21)
    {
      *(v10 + 60) = v20 + 1;
    }
  }

  v22 = *(v18[3] + 8 * a4);
  *(a1 + 1488) = a5;
  v23 = *(a1 + 1100);
  v24 = *(v18[1] + 2 * a4) + a5;
  if ((v24 + 0x3FFF) <= 0x7FFE)
  {
    if (v23 < 1)
    {
      goto LABEL_28;
    }

    v25 = 0;
    while (1)
    {
      v26 = v22->i16[v25] + (*(a2 + v25) - *(v34 + v25)) * a5;
      if ((v26 - 16385) <= 0xFFFF7FFE)
      {
        break;
      }

      v22->i16[v25++] = v26;
      if (v23 == v25)
      {
        goto LABEL_28;
      }
    }

    if (v25)
    {
      if (v25 > 7)
      {
        v29 = v25 & 0x7FFFFFF8;
        v30 = v25 & 0xFFFFFFFFFFFFFFF8;
        v31 = v22;
        do
        {
          *v31 = vshrq_n_s16(vsraq_n_u16(*v31, *v31, 0xFuLL), 1uLL);
          ++v31;
          v30 -= 8;
        }

        while (v30);
        goto LABEL_24;
      }

      v29 = 0;
      do
      {
        v22->i16[v29] = (v22->i16[v29] + (v22->i16[v29] >> 15)) >> 1;
        ++v29;
LABEL_24:
        ;
      }

      while (v25 != v29);
    }

    v22->i16[v25] = v26 / 2;
    v24 /= 2;
    v32 = v18[2];
    v33 = *(v32 + 2 * a4);
    *(v32 + 2 * a4) = (v33 + (v33 >> 15)) >> 1;
    LODWORD(v25) = v25 + 1;
    if (v25 >= v23)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  LODWORD(v25) = 0;
  v27 = v18[2];
  v28 = *(v27 + 2 * a4);
  v24 /= 2;
  *(v27 + 2 * a4) = (v28 + (v28 >> 15)) >> 1;
  if (v23 > 0)
  {
LABEL_26:
    v25 = v25;
    do
    {
      v22->i16[v25] = (v22->i16[v25] + (*(a2 + v25) - *(v34 + v25)) * a5) / 2;
      ++v25;
    }

    while (v23 != v25);
  }

LABEL_28:
  *(v18[1] + 2 * a4) = v24;
  return 1;
}

uint64_t sub_100008C78(uint64_t a1, unsigned int a2, int a3)
{
  v6 = a2 == 3;
  v7 = a2 < 0xA;
  if (a2 == 7)
  {
    if (qword_1001065A8)
    {
      v8 = *(qword_1001065A8 + 920);
      if (v8 == -1)
      {
        v8 = *(qword_1001065A8 + 912);
        v9 = *(qword_1001065A8 + 952);
        if (v9 != -1)
        {
LABEL_5:
          v10 = *(a1 + 1432);
          if (!v10)
          {
            goto LABEL_6;
          }

LABEL_17:
          if (*(v10 + 92) >= 1)
          {
            v18 = 0;
            do
            {
              sub_100009044(*(a1 + 1432), v18++);
            }

            while (*(v10 + 92) > v18);
          }

          sub_1000BFEC4(*v10);
          sub_1000BFEC4(v10);
          *(a1 + 1432) = 0;
          if (*(a1 + 1080) >= 1)
          {
            goto LABEL_7;
          }

          return 0;
        }
      }

      else
      {
        v9 = *(qword_1001065A8 + 952);
        if (v9 != -1)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_14;
    }
  }

  else if (qword_1001065A8)
  {
    LODWORD(v8) = *(qword_1001065A8 + 912);
LABEL_14:
    v9 = *(qword_1001065A8 + 944);
    v10 = *(a1 + 1432);
    if (v10)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  LODWORD(v8) = 0;
  LODWORD(v9) = 0;
  v10 = *(a1 + 1432);
  if (v10)
  {
    goto LABEL_17;
  }

LABEL_6:
  if (*(a1 + 1080) < 1)
  {
    return 0;
  }

LABEL_7:
  *(a1 + 1432) = 0;
  v11 = sub_1000C0034(96);
  v12 = v11;
  *(a1 + 1432) = v11;
  *(v11 + 32) = *(a1 + 1100);
  v13 = *(a1 + 1080);
  if (*(a1 + 1024))
  {
    v13 += *(a1 + 776);
  }

  *(v11 + 92) = v13;
  v14 = sub_1000C0034(8 * v13);
  *v12 = v14;
  if (v14)
  {
    v15 = v7 & (0x23Cu >> a2);
    *(v12 + 8) = v15;
    *(v12 + 12) = a3;
    v16 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v17 = *(qword_1001065A8 + 664);
    }

    else
    {
      v17 = 0;
    }

    v21 = a2 & 0xFFFFFFFE;
    *(v12 + 44) = v17;
    *(v12 + 24) = v6;
    *(v12 + 28) = 0;
    *(v12 + 16) = a2 == 6;
    if (v15)
    {
      *(v12 + 36) = 0;
      if (*(*(a1 + 496) + *(a1 + 1388)) == 253)
      {
        v22 = v8;
      }

      else
      {
        v22 = 0;
      }

      *(v12 + 40) = v22;
      if (v21 == 8)
      {
        *(v12 + 20) = 1;
      }
    }

    else if (v21 == 8)
    {
      if (v16)
      {
        *(v12 + 36) = *(v16 + 960);
        *(v12 + 40) = *(v16 + 928);
        *(v12 + 20) = 1;
        *(v12 + 12) = *(v16 + 5352);
      }

      else
      {
        *(v12 + 36) = 0;
        *(v12 + 40) = 0;
        *(v12 + 20) = 1;
        *(v12 + 12) = 0;
      }
    }

    else if (a2 == 6)
    {
      *(v12 + 36) = 0;
      *(v12 + 40) = 0;
      *(v12 + 12) = 1;
    }

    else
    {
      *(v12 + 36) = v9;
      *(v12 + 40) = v8;
    }

    *(v12 + 88) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v12 + 48) = 0;
    result = 1;
    *(v12 + 72) = 0;
  }

  else
  {
    sub_1000BFEC4(**(a1 + 1432));
    sub_1000BFEC4(*(*(a1 + 1432) + 80));
    sub_1000BFEC4(*(a1 + 1432));
    v20 = *(a1 + 1432);
    if (v20)
    {
      *v20 = 0;
      *(*(a1 + 1432) + 80) = 0;
      *(*(a1 + 1432) + 92) = 0;
    }

    result = 0;
    *(a1 + 1432) = 0;
  }

  return result;
}

uint64_t sub_100008F14(uint64_t result)
{
  v1 = *(result + 1432);
  if (v1)
  {
    v2 = result;
    if (*(v1 + 92) >= 1)
    {
      v3 = 0;
      do
      {
        sub_100009044(*(v2 + 1432), v3++);
      }

      while (*(v1 + 92) > v3);
    }

    sub_1000BFEC4(*v1);
    result = sub_1000BFEC4(v1);
    *(v2 + 1432) = 0;
  }

  return result;
}

uint64_t sub_100008F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 996) && *(a1 + 1000) && *(a1 + 1432))
  {
    return sub_1000070E8(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100008FA8(uint64_t a1)
{
  v2 = *(*(a1 + 1432) + 12);
  *(a1 + 1456) = 0;
  if (*(a1 + 996))
  {
    v3 = *(a1 + 224);
    if (v3)
    {
      v3(a1);
    }
  }

  sub_1000BFEC4(*(a1 + 1464));
  sub_1000BFEC4(*(a1 + 1472));
  sub_1000BFEC4(*(a1 + 1480));
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  sub_1000BFEC4(*(a1 + 1496));
  *(a1 + 1496) = 0;

  return sub_100007B30(a1, 1u, v2);
}

void *sub_100009044(void *result, unsigned int a2)
{
  v2 = *(*result + 8 * a2);
  if (v2)
  {
    v4 = result;
    v5 = *v2;
    if (*v2 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = *(*(v2 + 24) + 8 * v6);
        if (v7)
        {
          sub_1000BFEC4(v7);
          *(*(v2 + 24) + 8 * v6) = 0;
          v5 = *v2;
        }

        ++v6;
      }

      while (v6 < v5);
    }

    sub_1000BFEC4(*(v2 + 24));
    *(v2 + 24) = 0;
    sub_1000BFEC4(*(v2 + 8));
    *(v2 + 8) = 0;
    sub_1000BFEC4(*(v2 + 16));
    *(v2 + 16) = 0;
    result = sub_1000BFEC4(v2);
    *(*v4 + 8 * a2) = 0;
  }

  return result;
}

uint64_t sub_1000090F0(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 1456))
  {
    return 1;
  }

  v4 = a2;
  result = sub_1000091D8(a1, a2);
  if (!result)
  {
    return result;
  }

  v7 = *(a1 + 1432);
  if (!v7)
  {
LABEL_6:
    if (!*(a1 + 1864))
    {
      goto LABEL_13;
    }

LABEL_10:
    if (a3 >= 1 && *(*(a1 + 1840) + v4) >= 1)
    {
      result = sub_1000091D8(a1, *(a1 + 1960));
    }

    goto LABEL_13;
  }

  if (*(a1 + 1388) == v4)
  {
    ++*(v7 + 68);
    goto LABEL_6;
  }

  ++*(v7 + 64);
  if (*(a1 + 1864))
  {
    goto LABEL_10;
  }

LABEL_13:
  if (result && qword_1001065A8 && *(qword_1001065A8 + 1064))
  {
    v8 = *(a1 + 1744);
    if (v8)
    {
      v9 = result;
      v8(a1, 1);
      return v9;
    }
  }

  return result;
}

uint64_t sub_1000091D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001148(a1, a2);
  if (*(a1 + 1041))
  {
    v5 = *(a1 + 1432);
    if (*(v5 + 92) <= a2)
    {
      ++*(v5 + 72);
      return 1;
    }
  }

  v6 = *(a1 + 1544);
  v7 = sub_10000119C(a1);
  if (v4 < 1)
  {
    v9 = 0;
    v11 = 0x4000;
    v12 = qword_1001065A8;
    if (!qword_1001065A8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0x4000;
    do
    {
      *(*(a1 + 1464) + 2 * v8) = sub_10000EE28(a1);
      if (*(*(a1 + 1464) + 2 * v8) < v10)
      {
        v9 = v8;
        v10 = *(*(a1 + 1464) + 2 * v8);
      }

      ++v8;
    }

    while (v4 != v8);
    v11 = v10;
    v12 = qword_1001065A8;
    if (!qword_1001065A8)
    {
LABEL_14:
      if (v4 >= 1)
      {
        v15 = 0;
        v14 = 0;
        v13 = 0;
        do
        {
          v16 = *(*(a1 + 1464) + 2 * v15) - v11;
          if (*(a1 + 1424) > v16)
          {
            v17 = *(*(a1 + 1408) + 2 * v16);
            if (v17 >= 1)
            {
              *(*(a1 + 1472) + 8 * v13) = v17;
              v14 += v17;
              *(*(a1 + 1480) + 4 * v13++) = v15;
            }
          }

          ++v15;
        }

        while (v4 != v15);
        if (v13 >= 1)
        {
          goto LABEL_21;
        }
      }

      return 1;
    }
  }

  if (!*(v12 + 904))
  {
    goto LABEL_14;
  }

  v13 = 1;
  **(a1 + 1472) = 1;
  **(a1 + 1480) = v9;
  v14 = 1;
LABEL_21:
  v18 = (v14 + (v14 >> 31)) >> 1;
  v19 = v14;
  v20 = v13;
  if (v7 == a2)
  {
    v21 = 0;
    v22 = qword_1001065A8;
    result = 1;
    do
    {
      if (v22)
      {
        v24 = *(v22 + 936);
      }

      else
      {
        v24 = 0.0;
      }

      v25 = (v24 * ((v18 + *(*(a1 + 1472) + 8 * v21) * *(a1 + 1404)) / v19));
      if (v25 >= 1)
      {
        if (*(a1 + 996) && (v26 = *(a1 + 208)) != 0)
        {
          result = v26(a1, v6, a2, *(*(a1 + 1480) + 4 * v21), v25);
          v22 = qword_1001065A8;
        }

        else
        {
          result = 1;
        }
      }

      ++v21;
    }

    while (v20 != v21);
  }

  else
  {
    v27 = 0;
    result = 1;
    do
    {
      v28 = (v18 + *(*(a1 + 1472) + 8 * v27) * *(a1 + 1404)) / v19;
      if (v28 >= 1)
      {
        if (*(a1 + 996) && (v29 = *(a1 + 208)) != 0)
        {
          result = v29(a1, v6, a2, *(*(a1 + 1480) + 4 * v27), v28);
        }

        else
        {
          result = 1;
        }
      }

      ++v27;
    }

    while (v20 != v27);
  }

  return result;
}

uint64_t sub_100009488(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 1432);
  if (*(*v2 + 8 * a2))
  {
    return 1;
  }

  if (*(a1 + 1041) && *(v2 + 92) <= a2)
  {
    return 0;
  }

  v4 = a2;
  if (*(a1 + 1072) <= a2)
  {
    v5 = a2;
    v6 = a1;
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a1;
    if (*(a1 + 1176))
    {
      v7 = (*(a1 + 1160) + 4 * a2);
      v9 = *v7;
      v8 = v7[1];
    }

    else
    {
      v11 = (*(a1 + 1144) + 2 * a2);
      v9 = *v11;
      v8 = v11[1];
    }

    v10 = v8 - v9;
  }

  *(*v2 + 8 * a2) = sub_1000C0034(32);
  v12 = *(*v2 + 8 * v4);
  if (!v12 || (*v12 = v10, v13 = sub_1000C0034(2 * v10), (*(v12 + 8) = v13) == 0) || (v14 = sub_1000C0034(2 * v10), (*(v12 + 16) = v14) == 0) || (v15 = sub_1000C0034(8 * v10), (*(v12 + 24) = v15) == 0))
  {
    v21 = *(*v2 + 8 * v4);
    if (v21)
    {
      sub_1000BFEC4(v21[1]);
      v21[1] = 0;
      sub_1000BFEC4(v21[2]);
      v21[2] = 0;
      sub_1000BFEC4(v21[3]);
      v21[3] = 0;
      sub_1000BFEC4(*(*v2 + 8 * v4));
      result = 0;
      *(*v2 + 8 * v4) = 0;
      return result;
    }

    return 0;
  }

  v16 = 36;
  if (*(v6 + 1388) == v5)
  {
    v16 = 40;
  }

  v17 = *(v6 + 1404) * *(*(v6 + 1432) + v16);
  if (v17 >= 0x4000)
  {
    LOWORD(v18) = 0x3FFF;
  }

  else
  {
    v18 = *(v6 + 1404) * *(*(v6 + 1432) + v16);
  }

  if (v17 >= -16383)
  {
    v19 = v18;
  }

  else
  {
    v19 = -16384;
  }

  if (v10 < 1)
  {
    return 1;
  }

  v20 = 0;
  result = 1;
  do
  {
    *(*(v12 + 8) + v20) = v19;
    *(*(v12 + 16) + v20) = v19;
    v20 += 2;
  }

  while (2 * v10 != v20);
  return result;
}

void *sub_1000096A4(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result[179];
  v112 = 0;
  v9 = *(*v8 + 8 * a3);
  if (v9)
  {
    v10 = a4;
    v11 = *(v9[1] + 2 * a4);
    v12 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v13 = 944;
      if (*(result + 694) == a3)
      {
        v13 = 912;
      }

      v12 = *(qword_1001065A8 + v13);
    }

    v14 = *(result + 351) * v12;
    v15 = v14 >= 0x4000 ? 0x3FFF : v14;
    LOWORD(v16) = v14 >= -16383 ? v15 : -16384;
    if (v11 > *(v9[2] + 2 * a4))
    {
      v18 = *(result + 275);
      v19 = result;
      v20 = a3;
      v21 = sub_1000C9F54(4 * v18, a2, a3, a4, a5, a6, a7, a8);
      sub_100001370(v19, v20, v10, &v112);
      v24 = *(v9[3] + 8 * v10);
      if (v18 < 1)
      {
        v40 = v16;
        v41 = v16 + v11;
        if ((v41 + 0x4000) <= 0x8000)
        {
          goto LABEL_60;
        }

        goto LABEL_52;
      }

      v25 = v112;
      if (v18 < 4)
      {
        v26 = 0;
        v27 = 0;
        v28 = a2;
        goto LABEL_16;
      }

      v27 = 0;
      v26 = 0;
      v43 = v21 + 4 * v18;
      v28 = a2;
      v45 = v21 < (v112 + v18) && v112 < v43;
      v47 = v21 < v24 + 2 * v18 && v24 < v43;
      v48 = v43 <= a2 || v21 >= a2 + v18;
      if (v48 && !v45 && !v47)
      {
        v49 = vdupq_n_s32(v11);
        if (v18 < 0x20)
        {
          v50 = 0;
          v26 = 0;
LABEL_68:
          v87 = v26;
          v26 = v18 & 0x7FFFFFFC;
          v88 = vdup_n_s16(v50);
          v89 = (a2 + v87);
          v90 = (v25 + v87);
          v91 = (v24 + 2 * v87);
          v92 = v87 - v26;
          v93.i64[0] = 0x400000004000;
          v93.i64[1] = 0x400000004000;
          v94.i64[0] = 0x800000008000;
          v94.i64[1] = 0x800000008000;
          v95 = (v21 + 4 * v87);
          do
          {
            v96 = *v89++;
            v22.i32[0] = v96;
            v97 = *v90++;
            v23.i32[0] = v97;
            v98 = vmulq_s32(vsubl_u16(*&vmovl_u8(*v23.i8), *&vmovl_u8(*v22.i8)), v49);
            v99 = *v91++;
            v23.i32[1] = v99.i32[1];
            v22 = vaddw_s16(v98, v99);
            *v95++ = v22;
            *v22.i8 = vmovn_s32(vcgtq_u32(v94, vaddq_s32(v22, v93)));
            v88 = vorr_s8(v88, *v22.i8);
            v92 += 4;
          }

          while (v92);
          v27 = vmaxv_u16(vcltz_s16(vshl_n_s16(v88, 0xFuLL))) & 1;
          if (v26 == v18)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        }

        v26 = v18 & 0x7FFFFFE0;
        v60 = (a2 + 16);
        v61 = &v21[4];
        v62 = v112 + 2;
        v63 = (v24 + 32);
        v64 = 0uLL;
        v65.i64[0] = 0x400000004000;
        v65.i64[1] = 0x400000004000;
        v66.i64[0] = 0x800000008000;
        v66.i64[1] = 0x800000008000;
        v67 = v26;
        v22 = 0uLL;
        do
        {
          v68 = *v60[-2].i8;
          v69 = *v62[-2].i8;
          v70 = vsubl_u8(*v69.i8, *v68.i8);
          v71 = vsubl_high_u8(v69, v68);
          v72 = vsubl_u8(*v62, *v60);
          v73 = vsubl_high_u8(*v62->i8, *v60->i8);
          v74 = v63[-2];
          v75 = v63[-1];
          v76 = *v63;
          v77 = v63[1];
          v63 += 4;
          v78 = vaddw_s16(vmulq_s32(vmovl_s16(*v70.i8), v49), *v74.i8);
          v79 = vaddw_high_s16(vmulq_s32(vmovl_high_s16(v70), v49), v74);
          v80 = vaddw_s16(vmulq_s32(vmovl_s16(*v71.i8), v49), *v75.i8);
          v81 = vaddw_high_s16(vmulq_s32(vmovl_high_s16(v71), v49), v75);
          v82 = vaddw_s16(vmulq_s32(vmovl_s16(*v72.i8), v49), *v76.i8);
          v83 = vaddw_high_s16(vmulq_s32(vmovl_high_s16(v72), v49), v76);
          v84 = vaddw_s16(vmulq_s32(vmovl_s16(*v73.i8), v49), *v77.i8);
          v85 = vaddw_high_s16(vmulq_s32(vmovl_high_s16(v73), v49), v77);
          v61[-2] = v80;
          v61[-1] = v81;
          v61[-4] = v78;
          v61[-3] = v79;
          v61[2] = v84;
          v61[3] = v85;
          *v61 = v82;
          v61[1] = v83;
          v61 += 8;
          v23 = vuzp1q_s8(vuzp1q_s16(vcgtq_u32(v66, vaddq_s32(v78, v65)), vcgtq_u32(v66, vaddq_s32(v79, v65))), vuzp1q_s16(vcgtq_u32(v66, vaddq_s32(v80, v65)), vcgtq_u32(v66, vaddq_s32(v81, v65))));
          v64 = vorrq_s8(v64, v23);
          v60 += 4;
          v22 = vorrq_s8(v22, vuzp1q_s8(vuzp1q_s16(vcgtq_u32(v66, vaddq_s32(v82, v65)), vcgtq_u32(v66, vaddq_s32(v83, v65))), vuzp1q_s16(vcgtq_u32(v66, vaddq_s32(v84, v65)), vcgtq_u32(v66, vaddq_s32(v85, v65)))));
          v62 += 4;
          v67 -= 32;
        }

        while (v67);
        v86 = vcltzq_s8(vshlq_n_s8(vorrq_s8(v22, v64), 7uLL));
        v86.i8[0] = vmaxvq_u8(v86);
        v50 = v86.i32[0];
        v27 = v86.i8[0] & 1;
        if (v26 == v18)
        {
          goto LABEL_20;
        }

        if ((v18 & 0x1C) != 0)
        {
          goto LABEL_68;
        }
      }

LABEL_16:
      v29 = (v25 + v26);
      v30 = (v28 + v26);
      v31 = v18 - v26;
      v32 = &v21->i32[v26];
      v33 = (v24 + 2 * v26);
      do
      {
        v35 = *v30++;
        v34 = v35;
        v36 = *v29++;
        v37 = v36 - v34;
        v38 = *v33++;
        v39 = v38 + v37 * v11;
        *v32++ = v39;
        if ((v39 - 16385) < 0xFFFF7FFF)
        {
          v27 = 1;
        }

        --v31;
      }

      while (v31);
LABEL_20:
      v40 = v16;
      v41 = v16 + v11;
      if ((v41 + 0x4000) <= 0x8000 && !v27)
      {
LABEL_53:
        if (v18 >= 1)
        {
          if (v18 < 4 || v24 < v21 + 4 * v18 && v21 < v24 + 2 * v18)
          {
            v55 = 0;
LABEL_58:
            v56 = (v24 + 2 * v55);
            v57 = v18 - v55;
            v58 = &v21->i32[v55];
            do
            {
              v59 = *v58++;
              *v56++ = v59;
              --v57;
            }

            while (v57);
            goto LABEL_60;
          }

          if (v18 >= 0x10)
          {
            v55 = v18 & 0x7FFFFFF0;
            v100 = &v21[2];
            v101 = (v24 + 16);
            v102 = v55;
            do
            {
              v104 = v100[-2];
              v103 = v100[-1];
              v106 = *v100;
              v105 = v100[1];
              v100 += 4;
              v101[-1] = vuzp1q_s16(v104, v103);
              *v101 = vuzp1q_s16(v106, v105);
              v101 += 2;
              v102 -= 16;
            }

            while (v102);
            if (v55 == v18)
            {
              goto LABEL_60;
            }

            if ((v18 & 0xC) == 0)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v55 = 0;
          }

          v107 = v55;
          v55 = v18 & 0x7FFFFFFC;
          v108 = (v21 + 4 * v107);
          v109 = (v24 + 2 * v107);
          v110 = v107 - v55;
          do
          {
            v111 = *v108++;
            *v109++ = vmovn_s32(v111);
            v110 += 4;
          }

          while (v110);
          if (v55 == v18)
          {
            goto LABEL_60;
          }

          goto LABEL_58;
        }

LABEL_60:
        *(v9[1] + 2 * v10) = v41;
        *(v9[2] + 2 * v10) = v16;
        return sub_1000CA03C(v21, 4 * v18);
      }

      if (v18 >= 4)
      {
        v42 = v18 & 0x7FFFFFFC;
        v51 = v42;
        v52 = v21;
        do
        {
          *v52 = vshrq_n_s32(vsraq_n_u32(*v52, *v52, 0x1FuLL), 1uLL);
          ++v52;
          v51 -= 4;
        }

        while (v51);
        if (v42 == v18)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v42 = 0;
      }

      v53 = &v21->i32[v42];
      v54 = v18 - v42;
      do
      {
        *v53++ /= 2;
        --v54;
      }

      while (v54);
LABEL_52:
      v16 = v40 / 2;
      v41 /= 2;
      goto LABEL_53;
    }
  }

  return result;
}

double sub_100009BC8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _OWORD *a5, uint16x8_t *a6, int16x8_t *a7, unint64_t a8, double a9)
{
  if (qword_1001065A8)
  {
    v9 = *(a1 + 1404) * *(qword_1001065A8 + 3376);
    v10 = *(qword_1001065A8 + 3388) == 0;
    v11 = 1.0;
    if (a3 < 1)
    {
      return v11;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    v11 = 1.0;
    if (a3 < 1)
    {
      return v11;
    }
  }

  v12 = *(a1 + 1192);
  v13 = a4;
  v14 = (a1 + 1768);
  v15 = a3;
  if (v9 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = v9;
    do
    {
      v21 = a6->u16[v16];
      if (a2)
      {
        *(a8 + 2 * v16) = v21;
      }

      v22 = *(a5 + v16) + (v12 / v21 * v19);
      *(a5 + v16) = v22;
      v23 = v13 / v22 * v12 / a9;
      if (v23 >= 0.0)
      {
        v24 = 0.5;
      }

      else
      {
        v24 = -0.5;
      }

      v25 = (v23 + v24);
      if (v25 <= 1)
      {
        v25 = 1;
      }

      if (v25 >= *v14)
      {
        v25 = *v14;
      }

      v26 = a6->u16[v16];
      if (a7)
      {
        if (v10 || *(*(a1 + 1448) + 4 * v16))
        {
          v20 = v25;
        }

        else
        {
          v20 = a6->i16[v16];
        }

        a7->i16[v16] = v20;
      }

      v17 += v26;
      v18 += v25;
      ++v16;
    }

    while (a3 != v16);
    goto LABEL_139;
  }

  if (!a7)
  {
    if (a3 >= 8)
    {
      v17 = 0;
      v39 = 0;
      v55 = a8 + 2 * a3;
      v57 = a5 + 4 * a3 > a8 && v55 > a5;
      v59 = a1 + 1770 > a8 && v14 < v55;
      v60 = v55 > a6 && a6 + 2 * a3 > a8;
      if (v60 || v57)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        if (!v59)
        {
          v61 = vdupq_lane_s64(*&v13, 0);
          v62 = vdupq_lane_s64(*&a9, 0);
          v63 = vld1_dup_s16(v14);
          v64 = vmovl_u16(v63);
          v39 = a3 & 0x7FFFFFF8;
          v65 = 0uLL;
          __asm
          {
            FMOV            V16.2D, #0.5
            FMOV            V17.2D, #-0.5
          }

          v71.i64[0] = 0x100000001;
          v71.i64[1] = 0x100000001;
          v72 = v39;
          v73 = a5;
          v74 = a8;
          v75 = a6;
          v76 = 0uLL;
          v77 = 0uLL;
          v78 = 0uLL;
          do
          {
            v89 = *v75;
            if (a2)
            {
              *v74 = v89;
            }

            v79 = *v73;
            v80 = v73[1];
            v73 += 2;
            v81.i64[0] = v80;
            v81.i64[1] = SDWORD1(v80);
            v82 = vcvtq_f64_s64(v81);
            v81.i64[0] = SDWORD2(v80);
            v81.i64[1] = SHIDWORD(v80);
            v83 = vcvtq_f64_s64(v81);
            v81.i64[0] = v79;
            v81.i64[1] = SDWORD1(v79);
            v84 = vcvtq_f64_s64(v81);
            v81.i64[0] = SDWORD2(v79);
            v81.i64[1] = SHIDWORD(v79);
            v85 = vdivq_f64(vmulq_n_f64(vdivq_f64(v61, vcvtq_f64_s64(v81)), v12), v62);
            v86 = vdivq_f64(vmulq_n_f64(vdivq_f64(v61, v84), v12), v62);
            v87 = vdivq_f64(vmulq_n_f64(vdivq_f64(v61, v83), v12), v62);
            v88 = vdivq_f64(vmulq_n_f64(vdivq_f64(v61, v82), v12), v62);
            v76 = vaddw_high_u16(v76, v89);
            v65 = vaddw_u16(v65, *v89.i8);
            v78 = vaddq_s32(vminq_s32(vmaxq_u32(vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(v88, vbslq_s8(vcltzq_f64(v88), _Q17, _Q16))), vcvtq_s64_f64(vaddq_f64(v87, vbslq_s8(vcltzq_f64(v87), _Q17, _Q16)))), v71), v64), v78);
            v77 = vaddq_s32(vminq_s32(vmaxq_u32(vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(v86, vbslq_s8(vcltzq_f64(v86), _Q17, _Q16))), vcvtq_s64_f64(vaddq_f64(v85, vbslq_s8(vcltzq_f64(v85), _Q17, _Q16)))), v71), v64), v77);
            ++v75;
            ++v74;
            v72 -= 8;
          }

          while (v72);
          v17 = vaddvq_s32(vaddq_s32(v65, v76));
          v18 = vaddvq_s32(vaddq_s32(v77, v78));
          if (v39 == a3)
          {
            goto LABEL_139;
          }
        }
      }
    }

    else
    {
      v39 = 0;
      v17 = 0;
      v18 = 0;
    }

    v40 = a6 + v39;
    v41 = a5 + v39;
    v42 = (a8 + 2 * v39);
    v43 = a3 - v39;
    do
    {
      v49 = *v40++;
      v48 = v49;
      if (a2)
      {
        *v42 = v48;
      }

      v44 = *v41++;
      v45 = v13 / v44 * v12 / a9;
      if (v45 >= 0.0)
      {
        v46 = 0.5;
      }

      else
      {
        v46 = -0.5;
      }

      v47 = (v45 + v46);
      if (v47 <= 1)
      {
        v47 = 1;
      }

      if (v47 >= *v14)
      {
        v47 = *v14;
      }

      v17 += v48;
      v18 += v47;
      ++v42;
      --v43;
    }

    while (v43);
    goto LABEL_139;
  }

  if (v10)
  {
    if (a3 < 0x10)
    {
      v27 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_27;
    }

    v17 = 0;
    v27 = 0;
    v90 = a8 + 2 * a3;
    v91 = a7 + 2 * v15;
    v92 = a6 + 2 * v15;
    v93 = a5 + 4 * v15;
    v94 = a1 + 1770;
    v96 = v92 > a8 && v90 > a6;
    v98 = v93 > a8 && v90 > a5;
    v100 = v94 > a8 && v14 < v90;
    v102 = v92 > a7 && v91 > a6;
    v104 = v93 > a7 && v91 > a5;
    v106 = v94 > a7 && v14 < v91;
    v107 = v90 > a7 && v91 > a8;
    if (v107 || v96)
    {
      v18 = 0;
LABEL_27:
      v28 = a6 + v27;
      v29 = a5 + v27;
      v30 = &a7->i16[v27];
      v31 = (a8 + 2 * v27);
      v32 = v15 - v27;
      do
      {
        v38 = *v28++;
        v37 = v38;
        if (a2)
        {
          *v31 = v37;
        }

        v33 = *v29++;
        v34 = v13 / v33 * v12 / a9;
        if (v34 >= 0.0)
        {
          v35 = 0.5;
        }

        else
        {
          v35 = -0.5;
        }

        v36 = (v34 + v35);
        if (v36 <= 1)
        {
          v36 = 1;
        }

        if (v36 >= *v14)
        {
          v36 = *v14;
        }

        v17 += v37;
        v18 += v36;
        *v30++ = v36;
        ++v31;
        --v32;
      }

      while (v32);
      goto LABEL_139;
    }

    v18 = 0;
    if (v98 || v100 || v102 || v104 || v106)
    {
      goto LABEL_27;
    }

    v108 = vdupq_lane_s64(*&v13, 0);
    v27 = v15 & 0x7FFFFFF8;
    v109 = vdupq_lane_s64(*&a9, 0);
    v110 = vld1_dup_s16(v14);
    v111 = vmovl_u16(v110);
    v112 = 0uLL;
    __asm
    {
      FMOV            V16.2D, #0.5
      FMOV            V17.2D, #-0.5
    }

    v115.i64[0] = 0x100000001;
    v115.i64[1] = 0x100000001;
    v116 = v27;
    v117 = a7;
    v118 = a5;
    v119 = a8;
    v120 = a6;
    v121 = 0uLL;
    v122 = 0uLL;
    v123 = 0uLL;
    do
    {
      v136 = *v120;
      if (a2)
      {
        *v119 = v136;
      }

      v124 = *v118;
      v125 = v118[1];
      v118 += 2;
      v126.i64[0] = v125;
      v126.i64[1] = SDWORD1(v125);
      v127 = vcvtq_f64_s64(v126);
      v126.i64[0] = SDWORD2(v125);
      v126.i64[1] = SHIDWORD(v125);
      v128 = vcvtq_f64_s64(v126);
      v126.i64[0] = v124;
      v126.i64[1] = SDWORD1(v124);
      v129 = vcvtq_f64_s64(v126);
      v126.i64[0] = SDWORD2(v124);
      v126.i64[1] = SHIDWORD(v124);
      v130 = vdivq_f64(vmulq_n_f64(vdivq_f64(v108, vcvtq_f64_s64(v126)), v12), v109);
      v131 = vdivq_f64(vmulq_n_f64(vdivq_f64(v108, v129), v12), v109);
      v132 = vdivq_f64(vmulq_n_f64(vdivq_f64(v108, v128), v12), v109);
      v133 = vdivq_f64(vmulq_n_f64(vdivq_f64(v108, v127), v12), v109);
      v134 = vminq_s32(vmaxq_u32(vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(v131, vbslq_s8(vcltzq_f64(v131), _Q17, _Q16))), vcvtq_s64_f64(vaddq_f64(v130, vbslq_s8(vcltzq_f64(v130), _Q17, _Q16)))), v115), v111);
      v135 = vminq_s32(vmaxq_u32(vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(v133, vbslq_s8(vcltzq_f64(v133), _Q17, _Q16))), vcvtq_s64_f64(vaddq_f64(v132, vbslq_s8(vcltzq_f64(v132), _Q17, _Q16)))), v115), v111);
      v121 = vaddw_high_u16(v121, v136);
      v112 = vaddw_u16(v112, *v136.i8);
      *v117++ = vuzp1q_s16(v134, v135);
      v123 = vaddq_s32(v135, v123);
      v122 = vaddq_s32(v134, v122);
      ++v120;
      ++v119;
      v116 -= 8;
    }

    while (v116);
    v17 = vaddvq_s32(vaddq_s32(v112, v121));
    v18 = vaddvq_s32(vaddq_s32(v122, v123));
    if (v27 != v15)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v50 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v54 = a6->u16[v50];
      if (a2)
      {
        *(a8 + 2 * v50) = v54;
      }

      v51 = v13 / *(a5 + v50) * v12 / a9;
      if (v51 >= 0.0)
      {
        v52 = 0.5;
      }

      else
      {
        v52 = -0.5;
      }

      v53 = (v51 + v52);
      if (v53 <= 1)
      {
        v53 = 1;
      }

      if (v53 >= *(a1 + 1768))
      {
        v53 = *(a1 + 1768);
      }

      v17 += v54;
      v18 += v53;
      if (*(*(a1 + 1448) + 4 * v50))
      {
        LOWORD(v54) = v53;
      }

      a7->i16[v50++] = v54;
    }

    while (a3 != v50);
  }

LABEL_139:
  if (v17)
  {
    return v18 / v17;
  }

  return v11;
}

uint64_t sub_10000A240(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  result = sub_100035888(a1, a3, a4);
  if (result)
  {
    v9 = result;
    if (result >= 1)
    {
      v10 = 0;
      v11 = result;
      while (1)
      {
        v12 = sub_1000358B4(a1, a3, a4, v10);
        result = sub_100035914(a1, a3, a4, v10);
        v13 = *a2;
        if (v12 < 0)
        {
          v13[v10] = v12;
          v14 = a2[1];
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_9:
          *(v14 + 2 * v10++) = result;
          if (v11 == v10)
          {
            return result;
          }
        }

        else
        {
          v13[v10] = -v9;
          *(*a2 + 2 * v9++) = v12;
          v14 = a2[1];
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_9;
          }

LABEL_4:
          *(v14 + 2 * v10) = -v9;
          *(*a2 + 2 * v9++) = result;
          if (v11 == ++v10)
          {
            return result;
          }
        }
      }
    }
  }

  else
  {
    result = sub_1000354D4(a1, 0, a3, 0, a4);
    **a2 = result;
  }

  return result;
}

uint64_t sub_10000A37C(uint64_t a1, unsigned int a2, int a3, int a4, int a5)
{
  v8 = *(a1 + 1504);
  v9 = *(a1 + 1100);
  v10 = sub_100035888(*(a1 + 1304), a2, a3);
  v17 = v10;
  v154 = 2 * v10;
  if ((v10 & 0x80000000) == 0)
  {
    v18 = v154;
    v19 = 2 * v10 * v9;
    do
    {
      v21 = *(v8 + 24);
      *(*(v8 + 16) + 2 * v18) = 0;
      if (v9 >= 1)
      {
        bzero((v21 + 2 * v19), 2 * v9);
      }

      sub_10000AD0C(a1, v8, *(*v8 + 2 * v18), v18);
      if (v18 < v17)
      {
        sub_10000AD0C(a1, v8, *(*(v8 + 8) + 2 * v18), v18);
      }

      v19 -= v9;
    }

    while (v18-- > 0);
  }

  if (a4)
  {
    v22 = *(a1 + 1100);
    v23 = **(v8 + 16);
    *(a1 + 1488) = v23;
    if (v22 >= 1)
    {
      for (i = 0; i != v22; ++i)
      {
        *(*(a1 + 1496) + 4 * i) = *(*(v8 + 24) + 2 * i);
      }

      LODWORD(v22) = *(a1 + 1100);
      v23 = *(a1 + 1488);
    }

    v25 = *(v8 + 40) + v23;
    v26 = v25 - 16385;
    if (v22 < 1)
    {
      if (v26 <= 0xFFFF7FFE)
      {
        v25 /= 2;
      }

      goto LABEL_75;
    }

    v27 = *(v8 + 32);
    v28 = *(a1 + 1496);
    v29 = v22;
    v30 = v26 < 0xFFFF7FFF;
    v31 = v27 + 2 * v22;
    v32 = v28 + 4 * v22;
    if (v22 < 4 || (v28 < v31 ? (v33 = v27 >= v32) : (v33 = 1), !v33))
    {
      v34 = 0;
      v35 = v30;
      goto LABEL_39;
    }

    if (v22 >= 0x10)
    {
      v34 = v22 & 0x7FFFFFF0;
      v85 = v27 + 2;
      v86 = 0;
      v87 = (v28 + 32);
      v88.i64[0] = 0x400000004000;
      v88.i64[1] = 0x400000004000;
      v89.i64[0] = 0x800000008000;
      v89.i64[1] = 0x800000008000;
      v90 = v34;
      v91 = 0;
      do
      {
        v92 = *v85[-2].i8;
        v93 = vaddw_s16(v87[-2], *v92.i8);
        v94 = vaddw_high_s16(v87[-1], v92);
        v95 = vaddw_s16(*v87, *v85);
        v96 = vaddw_high_s16(v87[1], *v85->i8);
        v87[-2] = v93;
        v87[-1] = v94;
        *v87 = v95;
        v87[1] = v96;
        v87 += 4;
        v86 = vorr_s8(v86, vmovn_s16(vuzp1q_s16(vcgtq_u32(v89, vaddq_s32(v93, v88)), vcgtq_u32(v89, vaddq_s32(v94, v88)))));
        v91 = vorr_s8(v91, vmovn_s16(vuzp1q_s16(vcgtq_u32(v89, vaddq_s32(v95, v88)), vcgtq_u32(v89, vaddq_s32(v96, v88)))));
        v85 += 4;
        v90 -= 16;
      }

      while (v90);
      if (vaddv_s8(vand_s8(vcltz_s8(vshl_n_s8(vorr_s8(v91, v86), 7uLL)), 0x8040201008040201)))
      {
        v35 = 1;
      }

      else
      {
        v35 = v30;
      }

      if (v34 == v22)
      {
        goto LABEL_43;
      }

      if ((v22 & 0xC) == 0)
      {
LABEL_39:
        v41 = v22 - v34;
        v42 = (v28 + 4 * v34);
        v43 = v27 + v34;
        do
        {
          v44 = *v43++;
          v45 = *v42;
          *v42++ += v44;
          if ((v45 + v44 - 16385) < 0xFFFF7FFF)
          {
            v35 = 1;
          }

          --v41;
        }

        while (v41);
LABEL_43:
        if (!v35)
        {
LABEL_69:
          if (v22 < 4 || v27 < v32 && v28 < v31)
          {
            v67 = 0;
LABEL_73:
            v68 = v29 - v67;
            v69 = v27 + v67;
            v70 = (v28 + 4 * v67);
            do
            {
              v71 = *v70++;
              *v69++ = v71;
              --v68;
            }

            while (v68);
LABEL_75:
            *(v8 + 40) = v25;
            return 1;
          }

          if (v22 >= 0x10)
          {
            v67 = v22 & 0x7FFFFFF0;
            v73 = (v28 + 32);
            v74 = &v27[2];
            v75 = v29 & 0x7FFFFFF0;
            do
            {
              v77 = v73[-2];
              v76 = v73[-1];
              v79 = *v73;
              v78 = v73[1];
              v73 += 4;
              v74[-1] = vuzp1q_s16(v77, v76);
              *v74 = vuzp1q_s16(v79, v78);
              v74 += 2;
              v75 -= 16;
            }

            while (v75);
            if (v67 == v29)
            {
              goto LABEL_75;
            }

            if ((v29 & 0xC) == 0)
            {
              goto LABEL_73;
            }
          }

          else
          {
            v67 = 0;
          }

          v80 = v67;
          v67 = v29 & 0x7FFFFFFC;
          v81 = (v28 + 4 * v80);
          v82 = (v27 + 2 * v80);
          v83 = v80 - v67;
          do
          {
            v84 = *v81++;
            *v82++ = vmovn_s32(v84);
            v83 += 4;
          }

          while (v83);
          if (v67 == v29)
          {
            goto LABEL_75;
          }

          goto LABEL_73;
        }

        if (v22 > 3)
        {
          v46 = v22 & 0x7FFFFFFC;
          v63 = v46;
          v64 = v28;
          do
          {
            *v64 = vshrq_n_s32(vsraq_n_u32(*v64, *v64, 0x1FuLL), 1uLL);
            ++v64;
            v63 -= 4;
          }

          while (v63);
          if (v46 == v22)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v46 = 0;
        }

        v65 = v22 - v46;
        v66 = (v28 + 4 * v46);
        do
        {
          *v66++ /= 2;
          --v65;
        }

        while (v65);
LABEL_68:
        v25 /= 2;
        goto LABEL_69;
      }
    }

    else
    {
      v34 = 0;
      v35 = v30;
    }

    v97 = v34;
    v98 = vdup_n_s16(v35 != v30);
    v34 = v22 & 0x7FFFFFFC;
    v99 = (v27 + 2 * v97);
    v100 = (v28 + 4 * v97);
    v101 = v97 - v34;
    v102.i64[0] = 0x400000004000;
    v102.i64[1] = 0x400000004000;
    v103.i64[0] = 0x800000008000;
    v103.i64[1] = 0x800000008000;
    do
    {
      v104 = *v99++;
      v105 = vaddw_s16(*v100, v104);
      *v100++ = v105;
      v98 = vorr_s8(v98, vmovn_s32(vcgtq_u32(v103, vaddq_s32(v105, v102))));
      v101 += 4;
    }

    while (v101);
    if ((vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v98, 0xFuLL)), 0x8000400020001)) & 0xF) != 0)
    {
      v35 = 1;
    }

    else
    {
      v35 = v30;
    }

    if (v34 == v22)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v36 = *(v8 + 16);
  if (!*v36)
  {
    *v36 = 1;
  }

  if (a5)
  {
    v37 = *(v8 + 40);
    if (v37)
    {
      v38 = *(a1 + 1100);
      v39 = *(a1 + 1404) * *(v8 + 52);
      if (v39 >= 0x3FFF)
      {
        v39 = 0x3FFF;
      }

      if (v39 <= -16384)
      {
        v39 = -16384;
      }

      if (v39 >= v37)
      {
        v39 = *(v8 + 40);
      }

      if (v38 >= 1)
      {
        for (j = 0; j != v38; ++j)
        {
          *(*(a1 + 1496) + 4 * j) = v39 * *(*(v8 + 32) + 2 * j) / v37;
          if (qword_1001065A8 && *(qword_1001065A8 + 740))
          {
            *(*(v8 + 24) + 2 * j) = 0;
          }
        }
      }

      if (qword_1001065A8 && *(qword_1001065A8 + 740))
      {
        **(v8 + 16) = 0;
      }

      *(a1 + 1488) = v39;
      v47 = *(a1 + 1100);
      v48 = *(v8 + 16);
      v49 = v39 + *v48;
      v50 = v49 - 16385;
      if (v47 < 1)
      {
        if (v50 <= 0xFFFF7FFE)
        {
          v49 /= 2;
        }

        goto LABEL_117;
      }

      v51 = *(v8 + 24);
      v52 = *(a1 + 1496);
      v53 = v50 < 0xFFFF7FFF;
      v54 = v51 + 2 * v47;
      v55 = v52 + 4 * v47;
      if (v47 < 4 || v52 < v54 && v51 < v55)
      {
        v56 = 0;
        v57 = v53;
        goto LABEL_56;
      }

      if (v47 >= 0x10)
      {
        v56 = v47 & 0x7FFFFFF0;
        v121 = v51 + 2;
        v122 = 0;
        v123 = (v52 + 32);
        v124.i64[0] = 0x400000004000;
        v124.i64[1] = 0x400000004000;
        v125.i64[0] = 0x800000008000;
        v125.i64[1] = 0x800000008000;
        v126 = v56;
        v127 = 0;
        do
        {
          v128 = *v121[-2].i8;
          v129 = vaddw_s16(v123[-2], *v128.i8);
          v130 = vaddw_high_s16(v123[-1], v128);
          v131 = vaddw_s16(*v123, *v121);
          v132 = vaddw_high_s16(v123[1], *v121->i8);
          v123[-2] = v129;
          v123[-1] = v130;
          *v123 = v131;
          v123[1] = v132;
          v123 += 4;
          v122 = vorr_s8(v122, vmovn_s16(vuzp1q_s16(vcgtq_u32(v125, vaddq_s32(v129, v124)), vcgtq_u32(v125, vaddq_s32(v130, v124)))));
          v127 = vorr_s8(v127, vmovn_s16(vuzp1q_s16(vcgtq_u32(v125, vaddq_s32(v131, v124)), vcgtq_u32(v125, vaddq_s32(v132, v124)))));
          v121 += 4;
          v126 -= 16;
        }

        while (v126);
        if (vaddv_s8(vand_s8(vcltz_s8(vshl_n_s8(vorr_s8(v127, v122), 7uLL)), 0x8040201008040201)))
        {
          v57 = 1;
        }

        else
        {
          v57 = v53;
        }

        if (v56 == v47)
        {
          goto LABEL_60;
        }

        if ((v47 & 0xC) == 0)
        {
LABEL_56:
          v58 = v47 - v56;
          v59 = (v52 + 4 * v56);
          v60 = v51 + v56;
          do
          {
            v61 = *v60++;
            v12 = *v59;
            *v59++ = v12 + v61;
            v11 = (v12 + v61 - 16385);
            if (v11 < 0xFFFF7FFF)
            {
              v57 = 1;
            }

            --v58;
          }

          while (v58);
LABEL_60:
          if (!v57)
          {
LABEL_110:
            if (v47 < 4 || v51 < v55 && v52 < v54)
            {
              v110 = 0;
LABEL_114:
              v111 = v47 - v110;
              v112 = v51 + v110;
              v113 = (v52 + 4 * v110);
              do
              {
                v114 = *v113++;
                *v112++ = v114;
                --v111;
              }

              while (v111);
LABEL_116:
              v48 = *(v8 + 16);
LABEL_117:
              *v48 = v49;
              goto LABEL_118;
            }

            if (v47 >= 0x10)
            {
              v110 = v47 & 0x7FFFFFF0;
              v142 = (v52 + 32);
              v143 = &v51[2];
              v144 = v110;
              do
              {
                v146 = v142[-2];
                v145 = v142[-1];
                v148 = *v142;
                v147 = v142[1];
                v142 += 4;
                v143[-1] = vuzp1q_s16(v146, v145);
                *v143 = vuzp1q_s16(v148, v147);
                v143 += 2;
                v144 -= 16;
              }

              while (v144);
              if (v110 == v47)
              {
                goto LABEL_116;
              }

              if ((v47 & 0xC) == 0)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v110 = 0;
            }

            v149 = v110;
            v110 = v47 & 0x7FFFFFFC;
            v150 = (v52 + 4 * v149);
            v151 = (v51 + 2 * v149);
            v152 = v149 - v110;
            do
            {
              v153 = *v150++;
              *v151++ = vmovn_s32(v153);
              v152 += 4;
            }

            while (v152);
            if (v110 == v47)
            {
              goto LABEL_116;
            }

            goto LABEL_114;
          }

          if (v47 > 3)
          {
            v62 = v47 & 0x7FFFFFFC;
            v106 = v62;
            v107 = v52;
            do
            {
              *v107 = vshrq_n_s32(vsraq_n_u32(*v107, *v107, 0x1FuLL), 1uLL);
              ++v107;
              v106 -= 4;
            }

            while (v106);
            if (v62 == v47)
            {
              goto LABEL_109;
            }
          }

          else
          {
            v62 = 0;
          }

          v108 = v47 - v62;
          v109 = (v52 + 4 * v62);
          do
          {
            *v109++ /= 2;
            --v108;
          }

          while (v108);
LABEL_109:
          v49 /= 2;
          goto LABEL_110;
        }
      }

      else
      {
        v56 = 0;
        v57 = v53;
      }

      v133 = v56;
      v134 = vdup_n_s16(v57 != v53);
      v56 = v47 & 0x7FFFFFFC;
      v135 = (v51 + 2 * v133);
      v136 = (v52 + 4 * v133);
      v137 = v133 - v56;
      v138.i64[0] = 0x400000004000;
      v138.i64[1] = 0x400000004000;
      v139.i64[0] = 0x800000008000;
      v139.i64[1] = 0x800000008000;
      do
      {
        v140 = *v135++;
        v141 = vaddw_s16(*v136, v140);
        *v136++ = v141;
        v134 = vorr_s8(v134, vmovn_s32(vcgtq_u32(v139, vaddq_s32(v141, v138))));
        v137 += 4;
      }

      while (v137);
      if ((vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v134, 0xFuLL)), 0x8000400020001)) & 0xF) != 0)
      {
        v57 = 1;
      }

      else
      {
        v57 = v53;
      }

      if (v56 == v47)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }
  }

LABEL_118:
  if ((v17 & 0x80000000) != 0)
  {
LABEL_125:
    if (!qword_1001065A8)
    {
      return 1;
    }

    result = 1;
    if (*(qword_1001065A8 + 624) && (v17 & 0x80000000) == 0)
    {
      v116 = 0;
      do
      {
        v117 = *(*v8 + 2 * v116);
        if ((v117 & 0x80000000) == 0)
        {
          sub_100007618(a1, *(*v8 + 2 * v116), v11, v12, v13, v14, v15, v16);
          if (qword_1001065A8)
          {
            if (*(qword_1001065A8 + 1064))
            {
              v118 = *(a1 + 1744);
              if (v118)
              {
                v118(a1, 1);
              }
            }
          }

          sub_100009044(*(a1 + 1432), v117);
        }

        if (v116 < v17)
        {
          v119 = *(*(v8 + 8) + 2 * v116);
          if ((v119 & 0x80000000) == 0)
          {
            sub_100007618(a1, *(*(v8 + 8) + 2 * v116), v11, v12, v13, v14, v15, v16);
            if (qword_1001065A8)
            {
              if (*(qword_1001065A8 + 1064))
              {
                v120 = *(a1 + 1744);
                if (v120)
                {
                  v120(a1, 1);
                }
              }
            }

            sub_100009044(*(a1 + 1432), v119);
          }
        }

        ++v116;
      }

      while ((v154 & ~(v154 >> 31)) + 1 != v116);
      return 1;
    }
  }

  else
  {
    v115 = 0;
    while (1)
    {
      result = sub_10000B4DC(a1, v8, *(*v8 + 2 * v115), v115, v13, v14, v15, v16);
      if (!result)
      {
        break;
      }

      if (v115 < v17)
      {
        result = sub_10000B4DC(a1, v8, *(*(v8 + 8) + 2 * v115), v115, v13, v14, v15, v16);
        if (!result)
        {
          break;
        }
      }

      if ((v154 & ~(v154 >> 31)) + 1 == ++v115)
      {
        goto LABEL_125;
      }
    }
  }

  return result;
}