uint64_t sub_10001F3CC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (*(a1 + 136))
  {
    return 0;
  }

  v8 = *(a1 + 88);
  if (!*(a1 + 116) || (*a3 & 9) != 1)
  {
    if (*(a1 + 128))
    {
      LODWORD(v29) = *(a1 + 100);
      if (v29 >= 1)
      {
        v30 = 0;
        do
        {
          v31 = *(a2 + 2 * v30) - *(*a1 + 2 * v30);
          *(a4 + 2 * v30) = v31;
          if (*(a1 + 120))
          {
            v32 = *(*(a1 + 16) + 2 * v30);
            if (v31 < 0)
            {
              v33 = -(((v32 >> 1) - (v31 << v8)) / v32);
            }

            else
            {
              LOWORD(v33) = ((v32 >> 1) + (v31 << v8)) / v32;
            }

            *(a4 + 2 * v30) = v33;
          }

          ++v30;
        }

        while (v30 < *(a1 + 100));
        LODWORD(v29) = *(a1 + 100);
      }

      if (v29 < *(a1 + 104))
      {
        v29 = v29;
        do
        {
          v34 = *(a2 + 2 * v29) - *(*a1 + 2 * v29);
          *(a4 + 2 * v29) = v34;
          if (*(a1 + 120))
          {
            v35 = *(*(a1 + 16) + 2 * v29);
            if (v34 < 0)
            {
              v36 = -(((v35 >> 1) - (v34 << v8)) / v35);
            }

            else
            {
              LOWORD(v36) = ((v35 >> 1) + (v34 << v8)) / v35;
            }

            *(a4 + 2 * v29) = v36;
          }

          ++v29;
        }

        while (v29 < *(a1 + 104));
      }
    }

    else if (*(a1 + 104) >= 1)
    {
      v37 = 0;
      do
      {
        v38 = *(a2 + 2 * v37) - *(*a1 + 2 * v37);
        *(a4 + 2 * v37) = v38;
        if (*(a1 + 120))
        {
          v39 = *(*(a1 + 16) + 2 * v37);
          if (v38 < 0)
          {
            v40 = -(((v39 >> 1) - (v38 << v8)) / v39);
          }

          else
          {
            LOWORD(v40) = ((v39 >> 1) + (v38 << v8)) / v39;
          }

          *(a4 + 2 * v37) = v40;
        }

        ++v37;
      }

      while (v37 < *(a1 + 104));
    }

    return 1;
  }

  if (*(a1 + 128))
  {
    LODWORD(v9) = *(a1 + 100);
    if (v9 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(*a1 + 2 * v10);
        v12 = *(a2 + 2 * v10) - *(*a1 + 2 * v10);
        v13 = *(a1 + 92);
        v14 = 1 << (v13 - 1);
        v15 = v11 + ((v14 + v12) >> v13);
        v16 = v11 - ((v14 - v12) >> v13);
        if (v12 < 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = v15;
        }

        *(*a1 + 2 * v10) = v17;
        v18 = *(a2 + 2 * v10) - *(*a1 + 2 * v10);
        *(a4 + 2 * v10) = v18;
        if (*(a1 + 120))
        {
          v19 = *(a1 + 72);
          v20 = *(v19 + 4 * v10);
          v21 = v18 * v18 - v20;
          v22 = *(a1 + 96);
          v23 = 1 << (v22 - 1);
          v24 = ((v23 + v21) >> v22) + v20;
          v25 = v20 - ((v23 - v21) >> v22);
          if (v21 < 0)
          {
            v26 = v25;
          }

          else
          {
            v26 = v24;
          }

          *(v19 + 4 * v10) = v26;
          *(*(a1 + 16) + 2 * v10) = sub_10007A270(v26);
          v27 = *(a4 + 2 * v10);
          v28 = *(*(a1 + 16) + 2 * v10);
          if (v27 < 0)
          {
            v27 = -(((v28 >> 1) - (v27 << v8)) / v28);
          }

          else
          {
            LOWORD(v27) = ((v28 >> 1) + (v27 << v8)) / v28;
          }

          *(a4 + 2 * v10) = v27;
        }

        ++v10;
        v9 = *(a1 + 100);
      }

      while (v10 < v9);
    }

    v4 = 1;
    if (v9 < *(a1 + 104))
    {
      v41 = v9;
      do
      {
        v42 = *(*a1 + 2 * v41);
        v43 = *(a2 + 2 * v41) - *(*a1 + 2 * v41);
        v44 = *(a1 + 92);
        v45 = 1 << (v44 - 1);
        v46 = v42 + ((v45 + v43) >> v44);
        v47 = v42 - ((v45 - v43) >> v44);
        if (v43 < 0)
        {
          v48 = v47;
        }

        else
        {
          v48 = v46;
        }

        *(*a1 + 2 * v41) = v48;
        v49 = *(a2 + 2 * v41);
        *(a4 + 2 * v41) = *(a2 + 2 * v41);
        if (*(a1 + 120))
        {
          v50 = *(a1 + 72);
          v51 = *(v50 + 4 * v41);
          v52 = v49 * v49 - v51;
          v53 = *(a1 + 96);
          v54 = 1 << (v53 - 1);
          v55 = ((v54 + v52) >> v53) + v51;
          v56 = v51 - ((v54 - v52) >> v53);
          if (v52 < 0)
          {
            v57 = v56;
          }

          else
          {
            v57 = v55;
          }

          *(v50 + 4 * v41) = v57;
          *(*(a1 + 16) + 2 * v41) = sub_10007A270(v57);
          v58 = *(a4 + 2 * v41);
          v59 = *(*(a1 + 16) + 2 * v41);
          if (v58 < 0)
          {
            v58 = -(((v59 >> 1) - (v58 << v8)) / v59);
          }

          else
          {
            LOWORD(v58) = ((v59 >> 1) + (v58 << v8)) / v59;
          }

          *(a4 + 2 * v41) = v58;
        }

        ++v41;
      }

      while (v41 < *(a1 + 104));
      return 1;
    }
  }

  else
  {
    if (*(a1 + 104) < 1)
    {
      return 1;
    }

    v60 = 0;
    do
    {
      v61 = *(*a1 + 2 * v60);
      v62 = *(a2 + 2 * v60) - *(*a1 + 2 * v60);
      v63 = *(a1 + 92);
      v64 = 1 << (v63 - 1);
      v65 = v61 + ((v64 + v62) >> v63);
      v66 = v61 - ((v64 - v62) >> v63);
      if (v62 < 0)
      {
        v67 = v66;
      }

      else
      {
        v67 = v65;
      }

      *(*a1 + 2 * v60) = v67;
      v68 = *(a2 + 2 * v60) - *(*a1 + 2 * v60);
      *(a4 + 2 * v60) = v68;
      if (*(a1 + 120))
      {
        v69 = *(a1 + 72);
        v70 = *(v69 + 4 * v60);
        v71 = v68 * v68 - v70;
        v72 = *(a1 + 96);
        v73 = 1 << (v72 - 1);
        v74 = ((v73 + v71) >> v72) + v70;
        v75 = v70 - ((v73 - v71) >> v72);
        if (v71 < 0)
        {
          v76 = v75;
        }

        else
        {
          v76 = v74;
        }

        *(v69 + 4 * v60) = v76;
        *(*(a1 + 16) + 2 * v60) = sub_10007A270(v76);
        v77 = *(a4 + 2 * v60);
        v78 = *(*(a1 + 16) + 2 * v60);
        if (v77 < 0)
        {
          v77 = -(((v78 >> 1) - (v77 << v8)) / v78);
        }

        else
        {
          LOWORD(v77) = ((v78 >> 1) + (v77 << v8)) / v78;
        }

        *(a4 + 2 * v60) = v77;
      }

      ++v60;
      v4 = 1;
    }

    while (v60 < *(a1 + 104));
  }

  return v4;
}

uint64_t sub_10001F8CC(uint64_t result, uint64_t a2)
{
  if (*(result + 104) >= 1)
  {
    v2 = 0;
    do
    {
      *(a2 + 2 * v2) = *(*result + 2 * v2);
      ++v2;
    }

    while (v2 < *(result + 104));
  }

  return result;
}

uint64_t sub_10001F8FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 104);
  if (*(result + 120))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      do
      {
        *(a2 + 2 * v3) = *(*(result + 16) + 2 * v3);
        ++v3;
      }

      while (v3 < *(result + 104));
    }
  }

  else if (v2 >= 1)
  {
    v4 = 0;
    do
    {
      *(a2 + 2 * v4++) = 1 << *(result + 88);
    }

    while (v4 < *(result + 104));
  }

  return result;
}

uint64_t sub_10001F960(uint64_t result, uint64_t a2)
{
  v2 = *(result + 104);
  if (*(result + 120))
  {
    if (v2 >= 1)
    {
      v3 = 0;
      do
      {
        *(a2 + 4 * v3) = *(*(result + 72) + 4 * v3);
        ++v3;
      }

      while (v3 < *(result + 104));
    }
  }

  else if (v2 >= 1)
  {
    v4 = 0;
    do
    {
      *(a2 + 4 * v4++) = 1 << (2 * *(result + 88));
    }

    while (v4 < *(result + 104));
  }

  return result;
}

uint64_t sub_10001F9C8(uint64_t result, uint64_t a2)
{
  if (*(result + 104) >= 1)
  {
    v2 = 0;
    do
    {
      *(*result + 2 * v2) = *(a2 + 2 * v2);
      ++v2;
    }

    while (v2 < *(result + 104));
  }

  return result;
}

uint64_t sub_10001F9F8(uint64_t result, uint64_t a2)
{
  if (*(result + 120) && *(result + 104) >= 1)
  {
    v2 = 0;
    do
    {
      *(*(result + 16) + 2 * v2) = *(a2 + 2 * v2);
      ++v2;
    }

    while (v2 < *(result + 104));
  }

  return result;
}

uint64_t sub_10001FA30(uint64_t result, uint64_t a2)
{
  if (*(result + 120) && *(result + 104) >= 1)
  {
    v2 = 0;
    do
    {
      *(*(result + 72) + 4 * v2) = *(a2 + 4 * v2);
      ++v2;
    }

    while (v2 < *(result + 104));
  }

  return result;
}

uint64_t sub_10001FA68(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bch0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1000C0034(144);
  v11 = v10;
  if (v10)
  {
    if (!sub_1000BBD54(v9, (v10 + 88)))
    {
      goto LABEL_38;
    }

    if (!sub_1000BBD54(v9, (v11 + 92)))
    {
      goto LABEL_38;
    }

    if (!sub_1000BBD54(v9, (v11 + 96)))
    {
      goto LABEL_38;
    }

    if (!sub_1000BBD54(v9, (v11 + 100)))
    {
      goto LABEL_38;
    }

    if (!sub_1000BBD54(v9, (v11 + 104)))
    {
      goto LABEL_38;
    }

    if (!sub_1000BBD54(v9, (v11 + 108)))
    {
      goto LABEL_38;
    }

    if (!sub_1000BBD04(v9, (v11 + 116)))
    {
      goto LABEL_38;
    }

    if (!sub_1000BBD04(v9, (v11 + 120)))
    {
      goto LABEL_38;
    }

    if (!sub_1000BBD04(v9, (v11 + 124)))
    {
      goto LABEL_38;
    }

    if (!sub_1000BBD04(v9, (v11 + 128)))
    {
      goto LABEL_38;
    }

    v12 = *(v11 + 104);
    v21 = 0;
    if (!sub_1000BBF0C(v9, 2, (v11 + 8), &v21))
    {
      goto LABEL_38;
    }

    v13 = *(v11 + 8);
    if (v13)
    {
      if (v21 != v12)
      {
        goto LABEL_38;
      }
    }

    if (v13)
    {
      *v11 = v13;
    }

    v21 = 0;
    if (!sub_1000BBF0C(v9, 2, (v11 + 24), &v21))
    {
      goto LABEL_38;
    }

    v14 = *(v11 + 24);
    if (v14)
    {
      if (v21 != v12)
      {
        goto LABEL_38;
      }
    }

    if (v14)
    {
      *(v11 + 16) = v14;
    }

    v21 = 0;
    if (!sub_1000BBF0C(v9, 2, (v11 + 40), &v21))
    {
      goto LABEL_38;
    }

    v15 = *(v11 + 40);
    if (v15)
    {
      if (v21 != v12)
      {
        goto LABEL_38;
      }
    }

    if (v15)
    {
      *(v11 + 32) = v15;
    }

    v21 = 0;
    if (!sub_1000BBF0C(v9, 2, (v11 + 56), &v21))
    {
      goto LABEL_38;
    }

    v16 = *(v11 + 56);
    if (v16)
    {
      if (v21 != v12)
      {
        goto LABEL_38;
      }
    }

    if (v16)
    {
      *(v11 + 48) = v16;
    }

    v17 = sub_1000C0034(4 * v12);
    *(v11 + 64) = v17;
    if (v17 && (!*(v11 + 120) || (v18 = sub_1000C0034(4 * v12), (*(v11 + 72) = v18) != 0) && (v19 = sub_1000C0034(2 * v12), (*(v11 + 80) = v19) != 0)))
    {
      sub_10001F068(v11);
    }

    else
    {
LABEL_38:
      sub_10001EFF0(v11);
      v11 = 0;
    }
  }

  sub_1000BBBC4(v9);
  return v11;
}

uint64_t sub_10001FCBC(int *a1)
{
  result = sub_1000C0034(2 * *a1);
  *(a1 + 8) = result;
  if (result)
  {
    a1[4] = 0;
    result = 1;
    a1[20] = 1;
    v3 = *(a1 + 36);
    *(a1 + 42) = v3;
    *(a1 + 43) = v3;
  }

  return result;
}

uint64_t sub_10001FD08(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BFEC4(*(result + 40));
    v1[4] = 0;
    v1[5] = 0;
    sub_1000BFEC4(v1[7]);
    v1[6] = 0;
    v1[7] = 0;
    sub_1000BFEC4(v1[8]);
    v1[8] = 0;

    return sub_1000BFEC4(v1);
  }

  return result;
}

void sub_10001FD6C(int *a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 41);
    v3 = *(a1 + 40);
    v4 = 1374389535 * (v2 - v3 + 100) * *(a1 + 39);
    LOWORD(v4) = (v4 >> 38) + (v4 >> 63);
    *(a1 + 40) = v3 + v4;
    *(a1 + 41) = v2 - v4;
  }

  else
  {
    a1[4] = 0;
    bzero(*(a1 + 8), 2 * *a1);
    a1[20] = 1;
    v6 = *(a1 + 36);
    *(a1 + 42) = v6;
    *(a1 + 43) = v6;
  }
}

uint64_t sub_10001FE04(uint64_t result, _WORD *a2, _WORD *a3)
{
  *a2 = *(result + 80);
  *a3 = *(result + 82);
  return result;
}

uint64_t sub_10001FE18(uint64_t result, int a2)
{
  v2 = *(result + 82);
  v3 = *(result + 80);
  if (v2 < v3)
  {
    *(result + 80) = a2;
LABEL_3:
    *(result + 82) = a2;
    return result;
  }

  if (v3 <= a2)
  {
    if (v2 < a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(result + 80) = a2;
  }

  return result;
}

int *sub_10001FE50(int *result, __int16 *a2, uint64_t a3)
{
  v3 = *(result + 41);
  v4 = *(result + 40);
  v5 = *a2;
  if (v3 < v4)
  {
    *(result + 40) = v5;
LABEL_3:
    *(result + 41) = v5;
    goto LABEL_7;
  }

  if (v5 >= v4)
  {
    if (v5 > v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(result + 40) = v5;
  }

LABEL_7:
  v6 = result[4];
  v7 = *result;
  if (v6 >= result[3])
  {
    if (v7 >= 1)
    {
      v14 = 0;
      do
      {
        v15 = *(result + 8);
        v16 = *(v15 + 2 * v14);
        v17 = a2[v14] - *(v15 + 2 * v14);
        v18 = result[5];
        v19 = 1 << (v18 - 1);
        v20 = v16 + ((v19 + v17) >> v18);
        v21 = v16 - ((v19 - v17) >> v18);
        if (v17 < 0)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        *(v15 + 2 * v14++) = v22;
      }

      while (v14 < *result);
    }
  }

  else
  {
    if (v7 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = result[4];
        v10 = *(result + 8);
        v11 = a2[v8] + v9 * *(v10 + 2 * v8);
        v12 = v9 + 1;
        if (v11 >= 0)
        {
          v13 = 2;
        }

        else
        {
          v13 = -2;
        }

        *(v10 + 2 * v8++) = (v11 + v12 / v13) / v12;
      }

      while (v8 < *result);
      v6 = result[4];
    }

    result[4] = v6 + 1;
  }

  v23 = *(result + 40);
  v24 = (*(result + 41) - *(result + 40));
  if (v24 <= (*(result + 38) + ((*(result + 37) * v23) >> 15)))
  {
    v24 = (*(result + 38) + ((*(result + 37) * v23) >> 15));
  }

  if (v24 <= *(result + 36))
  {
    v24 = *(result + 36);
  }

  *(result + 43) += (v24 - *(result + 43) + 32) >> 6;
  *(result + 42) = v24;
  v25 = (((1 << (result[2] - 1)) + (**(result + 6) << result[2]) + **(result + 4) * v24) >> result[2]) + v23;
  if (v25 >= 0x7FFF)
  {
    v25 = 0x7FFF;
  }

  if (v25 <= -32768)
  {
    LOWORD(v25) = 0x8000;
  }

  **a3 = v25;
  LODWORD(v26) = *result;
  if (*result > 1)
  {
    v27 = 1;
    do
    {
      *(*a3 + 2 * v27) = *(*(result + 8) + 2 * v27);
      ++v27;
    }

    while (v27 < *result);
    LODWORD(v26) = *result;
  }

  LODWORD(v28) = *(a3 + 104);
  if (v26 < v28)
  {
    v26 = v26;
    do
    {
      *(*a3 + 2 * v26++) = 0;
      v28 = *(a3 + 104);
    }

    while (v26 < v28);
  }

  if (*(a3 + 120))
  {
    v29 = v28 < 1;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = 0;
    do
    {
      v31 = ((1 << (result[2] - 1)) + (*(*(result + 6) + 2 * v30 + 2) << result[2]) + *(*(result + 4) + 2 * v30 + 2) * v24) >> result[2];
      if (v31 >= 0x7FFF)
      {
        v31 = 0x7FFF;
      }

      if (v31 <= 1)
      {
        v31 = 1;
      }

      *(*(a3 + 16) + 2 * v30) = v31;
      if (*(a3 + 116))
      {
        *(*(a3 + 72) + 4 * v30) = v31 * v31;
      }

      ++v30;
    }

    while (v30 < *(a3 + 104));
  }

  return result;
}

BOOL sub_1000200F8(__int16 *a1)
{
  v1 = a1[43] * a1[44] + 4096;
  v2 = (v1 >> 13);
  if (v1 >> 28)
  {
    v2 = 0x7FFF;
  }

  if (v1 < 0x4000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  return v3 < a1[42];
}

void sub_100020134(uint64_t a1, int a2, char *a3, _WORD *a4, _WORD *a5, _WORD *a6, _DWORD *a7)
{
  if (a1)
  {
    *a7 = *(a1 + 16);
    if (a2 >= 1)
    {
      v10 = 0;
      do
      {
        *&a3[v10] = *(*(a1 + 64) + v10);
        v10 += 2;
      }

      while (2 * a2 != v10);
    }

    *a4 = *(a1 + 80);
    *a5 = *(a1 + 82);
    *a6 = *(a1 + 86);
  }

  else
  {
    *a7 = 0;
    bzero(a3, 2 * a2);
    *a4 = 1;
    *a5 = 0;
    *a6 = 0;
  }
}

int *sub_1000201E4(int *result, uint64_t a2, __int16 a3, __int16 a4, __int16 a5, int a6)
{
  if (result)
  {
    result[4] = a6;
    if (*result >= 1)
    {
      v6 = 0;
      do
      {
        *(*(result + 8) + 2 * v6) = *(a2 + 2 * v6);
        ++v6;
      }

      while (v6 < *result);
    }

    *(result + 40) = a3;
    *(result + 41) = a4;
    *(result + 43) = a5;
  }

  return result;
}

uint64_t sub_100020228(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bcp0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1000C0034(96);
  if (v10)
  {
    if (!sub_1000BBD54(v9, v10))
    {
      goto LABEL_24;
    }

    if (!sub_1000BBD54(v9, (v10 + 4)))
    {
      goto LABEL_24;
    }

    if (!sub_1000BBD54(v9, (v10 + 8)))
    {
      goto LABEL_24;
    }

    if (!sub_1000BBD54(v9, (v10 + 12)))
    {
      goto LABEL_24;
    }

    if (!sub_1000BBD54(v9, (v10 + 20)))
    {
      goto LABEL_24;
    }

    if (!sub_1000BBD54(v9, (v10 + 24)))
    {
      goto LABEL_24;
    }

    if (!sub_1000BBDFC(v9, (v10 + 72)))
    {
      goto LABEL_24;
    }

    if (!sub_1000BBDFC(v9, (v10 + 74)))
    {
      goto LABEL_24;
    }

    if (!sub_1000BBDFC(v9, (v10 + 76)))
    {
      goto LABEL_24;
    }

    if (!sub_1000BBDFC(v9, (v10 + 78)))
    {
      goto LABEL_24;
    }

    if (!sub_1000BBDFC(v9, (v10 + 88)))
    {
      goto LABEL_24;
    }

    v15 = 0;
    if (!sub_1000BBF0C(v9, 2, (v10 + 40), &v15))
    {
      goto LABEL_24;
    }

    v11 = *(v10 + 40);
    if (v11)
    {
      if (v15 != *(v10 + 4))
      {
        goto LABEL_24;
      }

      *(v10 + 32) = v11;
    }

    v14 = 0;
    if (sub_1000BBF0C(v9, 2, (v10 + 56), &v14))
    {
      v12 = *(v10 + 56);
      if (!v12)
      {
        goto LABEL_22;
      }

      if (v14 == *(v10 + 4))
      {
        *(v10 + 48) = v12;
LABEL_22:
        sub_1000BBBC4(v9);
        if (sub_10001FCBC(v10))
        {
          return v10;
        }

        goto LABEL_25;
      }
    }

LABEL_24:
    sub_1000BBBC4(v9);
LABEL_25:
    sub_1000BFEC4(*(v10 + 40));
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    sub_1000BFEC4(*(v10 + 56));
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    sub_1000BFEC4(*(v10 + 64));
    *(v10 + 64) = 0;
    sub_1000BFEC4(v10);
    return 0;
  }

  sub_1000BBBC4(v9);
  return 0;
}

uint64_t sub_100020404(_BYTE *a1)
{
  result = sub_1000C7A4C(a1, "zhcn");
  if (result)
  {
    result = sub_1000C7A4C(a1, "zhhk");
    if (result)
    {
      result = sub_1000C7A4C(a1, "zhtw");
      if (result)
      {
        return sub_1000C7A4C(a1, "zhct") != 0;
      }
    }
  }

  return result;
}

void *sub_100020474(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = a5;
  v29 = a7;
  v30 = a4;
  if (!a8)
  {
    v22 = 0;
    v15 = 0;
    while (v22 < *a3)
    {
      v23 = *(a1 + 4);
      v17 = v15 + 1;
      if (v15 + 1 + v23 >= a6)
      {
        break;
      }

      if (v23 >= 1)
      {
        v24 = (a7 + 4 * v15);
        v25 = 16;
        do
        {
          *v24++ = sub_1000BA7FC(a2, *(a1 + v25));
          ++v15;
          v25 += 2;
          --v23;
        }

        while (v23);
        v17 = v15 + 1;
        a7 = v29;
      }

      *(a7 + 4 * v15) = -1;
      *(v10 + 4 * v22++) = *(a1 + 12);
      a1 += 128;
      v15 = v17;
      if (v22 == v30)
      {
LABEL_20:
        v15 = v17;
        v20 = a4;
        result = a9;
        if (a9)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }
    }

    v20 = v22;
    result = a9;
    if (!a9)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v14 = 0;
  v15 = 0;
  while (v14 < *a3)
  {
    v16 = *(a1 + 4);
    v17 = v15 + 1;
    if (v15 + 1 + v16 >= a6)
    {
      break;
    }

    if (v16 >= 1)
    {
      v18 = 0;
      v19 = a7 + 4 * v15;
      do
      {
        *(v19 + 4 * v18) = sub_1000BA7FC(a2, *(a1 + 2 * v18 + 16));
        *(a8 + v15 + v18) = *(a1 + v18 + 88);
        ++v18;
      }

      while (v16 != v18);
      v15 += v18;
      v17 = v15 + 1;
      a7 = v29;
      v10 = a5;
    }

    *(a7 + 4 * v15) = -1;
    *(v10 + 4 * v14++) = *(a1 + 12);
    a1 += 128;
    v15 = v17;
    if (v14 == v30)
    {
      goto LABEL_20;
    }
  }

  v20 = v14;
  result = a9;
  if (a9)
  {
LABEL_23:
    if (v15 >= 1)
    {
      result = memset(result, 255, (2 * v15));
    }
  }

LABEL_25:
  *a3 = v20;
  return result;
}

uint64_t sub_100020680(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 12) - *(a2 + 12));
  if (v2)
  {
    return v2;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (v3 != v4)
  {
    return (v3 - v4);
  }

  if (v3 >= 1)
  {
    v5 = 0;
    v6 = a1 + 88;
    v7 = a2 + 88;
    while (1)
    {
      v2 = *(v6 + 2 * v5 - 72) - *(v7 + 2 * v5 - 72);
      if (v2)
      {
        return v2;
      }

      v8 = *(v6 + v5);
      v9 = *(v7 + v5);
      if (v8 != v9)
      {
        return (v8 - v9);
      }

      if (v3 == ++v5)
      {
        v10 = *(a1 + v3 + 88);
        v11 = *(a2 + v3 + 88);
        if (v10 != v11)
        {
          return (v10 - v11);
        }

        goto LABEL_9;
      }
    }
  }

  v10 = *(a1 + 88);
  v11 = *(a2 + 88);
  if (v10 == v11)
  {
LABEL_9:
    if (*a1 >= *a2)
    {
      LODWORD(v2) = 0;
    }

    else
    {
      LODWORD(v2) = -1;
    }

    if (*a1 <= *a2)
    {
      return v2;
    }

    else
    {
      return 1;
    }
  }

  return (v10 - v11);
}

uint64_t sub_100020808(uint64_t a1, __int128 *a2, _OWORD *__src, int *a4, int a5)
{
  if (!a2)
  {
    return 0x7FFFFFFFLL;
  }

  v7 = *a4;
  if (!v7)
  {
    v9 = 0;
    *a4 = 1;
    v26 = *a2;
    v27 = a2[1];
    v28 = a2[3];
    __src[2] = a2[2];
    __src[3] = v28;
    *__src = v26;
    __src[1] = v27;
    v29 = a2[4];
    v30 = a2[5];
    v31 = a2[7];
    __src[6] = a2[6];
    __src[7] = v31;
    __src[4] = v29;
    __src[5] = v30;
    return v9;
  }

  if (v7 < 1)
  {
LABEL_23:
    v23 = *(a2 + 3) - *(__src + 3) + 10;
    v25 = a4;
    v24 = *a4;
    if (*a4 >= a5)
    {
      goto LABEL_24;
    }

LABEL_20:
    *v25 = v24 + 1;
LABEL_25:
    v9 = 0x7FFFFFFFLL;
LABEL_26:
    if (v24 >= 1)
    {
      j__memmove(__src + 8, __src, v24 << 7);
    }

    goto LABEL_29;
  }

  v9 = 0;
  v10 = a2 + 1;
  v11 = (__src + 1);
  while (1)
  {
    v12 = *(a2 + 1);
    if (v12 != DWORD1(__src[8 * v9]))
    {
      goto LABEL_5;
    }

    if (!qword_1001065A8 || !*(qword_1001065A8 + 1760))
    {
      break;
    }

    v13 = (a2 + 1);
    v14 = v11;
    if (v12 < 1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v16 = *v13++;
      v15 = v16;
      v17 = *v14++;
      if (v15 != v17)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_17;
      }
    }

LABEL_5:
    ++v9;
    v11 += 128;
    if (v9 == v7)
    {
      goto LABEL_23;
    }
  }

  if (v12 >= 1)
  {
    v18 = 0;
    v19 = 2 * v12;
    do
    {
      v20 = sub_1000BA7F4(a1, *(v10 + v18), 0);
      v21 = sub_1000BA810(a1, v20);
      v22 = sub_1000BA7F4(a1, *&v11[v18], 0);
      if (v21 != sub_1000BA810(a1, v22))
      {
        goto LABEL_5;
      }

      v18 += 2;
    }

    while (v19 != v18);
  }

LABEL_17:
  v23 = *(a2 + 3) - *(__src + 3);
  if (v9)
  {
    v23 += 10;
    v24 = v9;
    v25 = a4;
    if (v9 == 0x7FFFFFFF)
    {
      v24 = *a4;
      if (*a4 < a5)
      {
        goto LABEL_20;
      }

LABEL_24:
      --v24;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v25 = a4;
LABEL_29:
  v32 = *a2;
  v33 = a2[1];
  v34 = a2[3];
  __src[2] = a2[2];
  __src[3] = v34;
  *__src = v32;
  __src[1] = v33;
  v35 = a2[4];
  v36 = a2[5];
  v37 = a2[7];
  __src[6] = a2[6];
  __src[7] = v37;
  __src[4] = v35;
  __src[5] = v36;
  v38 = (*v25 - 1);
  if (*v25 > 1)
  {
    if (*v25 == 2)
    {
      v39 = 0;
      goto LABEL_35;
    }

    v39 = v38 & 0x7FFFFFFE;
    v40 = __src + 67;
    v41 = v39;
    do
    {
      v42 = *v40 + v23;
      *(v40 - 32) += v23;
      *v40 = v42;
      v40 += 64;
      v41 -= 2;
    }

    while (v41);
    if (v39 != v38)
    {
LABEL_35:
      v43 = v38 - v39;
      v44 = &__src[8 * v39 + 8] + 3;
      do
      {
        *v44 += v23;
        v44 += 32;
        --v43;
      }

      while (v43);
    }
  }

  return v9;
}

uint64_t sub_100020AAC(int a1)
{
  result = sub_1000C0034(32);
  if (result)
  {
    v3 = result;
    if (sub_1000BD1BC(result, a1, 0))
    {
      return v3;
    }

    else
    {
      sub_1000BFEC4(v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100020B08(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1000BD258(result);

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_100020B48(uint64_t a1, uint64_t a2, char *a3)
{
  if (!a1)
  {
    return 1;
  }

  v4 = sub_1000BCAA0(a2, "bcld0", a3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1000BD2E8(a1, v4);
  sub_1000BCB64(v5);
  return v6;
}

BOOL sub_100020BD0(void ***a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1000BBAE0(a2, "bcld0", a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = sub_1000BD388(a1, v9) != 0;
  sub_1000BBBC4(v10);
  return v11;
}

void *sub_100020C40(void *result)
{
  if (result && !*result)
  {
    v2 = result;
    sub_1000BFEC4(result[8]);
    sub_1000BFEC4(*(v2 + 48));
    sub_1000BFEC4(*(v2 + 32));

    return sub_1000BFEC4(v2);
  }

  return result;
}

uint64_t sub_100020CA0(uint64_t a1)
{
  v2 = sub_1000BD6C8(*(a1 + 8), 4, 0xFFFFFFFF);
  v3 = sub_1000BD6C8(*(a1 + 12), 4, v2);
  v4 = sub_1000BD6C8(*(a1 + 16), 4, v3);
  v5 = sub_1000BD6C8(*(a1 + 20), 4, v4);
  v6 = sub_1000BD7F4(*(a1 + 24), 4, *(a1 + 20), 0xFFFFFFFFLL);
  v7 = sub_1000BD6C8(v6, 4, v5);
  v8 = sub_1000BD7F4(*(a1 + 40), 4, *(a1 + 20), 0xFFFFFFFFLL);
  v9 = sub_1000BD6C8(v8, 4, v7);
  v10 = sub_1000BD7F4(*(a1 + 56), 2, *(a1 + 20), 0xFFFFFFFFLL);

  return sub_1000BD6C8(v10, 4, v9);
}

uint64_t sub_100020D78(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1000BBAE0(a1, "bcl0", a2, a4, a5, a6, a7, a8);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1000C0034(72);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  if (sub_1000BBD54(v9, (v10 + 8)) && sub_1000BBD54(v9, (v11 + 12)) && sub_1000BBD54(v9, (v11 + 16)) && sub_1000BBD54(v9, (v11 + 20)))
  {
    v18 = 0;
    if (sub_1000BBF0C(v9, 4, (v11 + 32), &v18))
    {
      v12 = *(v11 + 32);
      if (v12)
      {
        if (v18 != *(v11 + 20))
        {
          goto LABEL_20;
        }

        *(v11 + 24) = v12;
      }

      v17 = 0;
      if (sub_1000BBF0C(v9, 4, (v11 + 48), &v17))
      {
        v13 = *(v11 + 48);
        if (v13)
        {
          if (v17 != *(v11 + 20))
          {
            goto LABEL_20;
          }

          *(v11 + 40) = v13;
        }

        v16 = 0;
        if (sub_1000BBF0C(v9, 2, (v11 + 64), &v16))
        {
          v14 = *(v11 + 64);
          if (v14)
          {
            if (v16 == *(v11 + 20))
            {
              *(v11 + 56) = v14;
              goto LABEL_19;
            }

            goto LABEL_20;
          }

LABEL_19:
          sub_1000BBBC4(v9);
          return v11;
        }
      }
    }
  }

LABEL_20:
  sub_1000BBBC4(v9);
  if (*v11)
  {
    return 0;
  }

  sub_1000BFEC4(*(v11 + 64));
  sub_1000BFEC4(*(v11 + 48));
  sub_1000BFEC4(*(v11 + 32));
  sub_1000BFEC4(v11);
  return 0;
}

uint64_t sub_100020F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_1000C0034(24);
  if (result)
  {
    *(result + 8) = a2;
    *(result + 12) = 0;
    *(result + 16) = a1;
    v5 = 12 * a2;
    v6 = result;
    v7 = sub_1000C0034(v5);
    result = v6;
    *v6 = v7;
    if (!v7)
    {
      sub_1000BFEC4(v6);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100020F9C(uint64_t *a1)
{
  sub_1000BFEC4(*a1);

  return sub_1000BFEC4(a1);
}

uint64_t *sub_100020FE0(uint64_t *result, int a2, int a3, __int16 a4, __int16 a5)
{
  v5 = qword_1001065A8;
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 1208))
    {
      a5 = a4;
    }

    v5 = *(qword_1001065A8 + 1200);
  }

  if (v5 >= a5)
  {
    v6 = *result;
    v7 = *(result + 3);
    if (v7 < 1)
    {
      v11 = -16384;
      v10 = -1;
LABEL_16:
      if (v7 >= *(result + 2))
      {
        if (a5 >= v11)
        {
          return result;
        }
      }

      else
      {
        *(result + 3) = v7 + 1;
        v10 = v7;
      }

      v14 = v6 + 12 * v10;
      *v14 = a2;
      *(v14 + 4) = a3;
      *(v14 + 8) = a4;
      *(v14 + 10) = a5;
    }

    else
    {
      v8 = 0;
      v9 = (v6 + 10);
      v10 = -1;
      v11 = -16384;
      while (*(v9 - 5) != a2 || *(v9 - 3) != a3)
      {
        v13 = *v9;
        v9 += 6;
        v12 = v13;
        if (v13 > v11)
        {
          v10 = v8;
          v11 = v12;
        }

        if (v7 == ++v8)
        {
          goto LABEL_16;
        }
      }

      if (*v9 > a5)
      {
        *v9 = a5;
        *(v9 - 1) = a4;
      }
    }
  }

  return result;
}

uint64_t sub_1000210C4(_DWORD *a1, _DWORD *a2)
{
  v2 = (*a1 - *a2);
  if (*a1 == *a2)
  {
    v3 = a1[2];
    v4 = a2[2];
    if (v3 == v4)
    {
      if (v3 < 1)
      {
LABEL_7:
        v2 = qword_1001065A8;
        if (qword_1001065A8)
        {
          if (*(qword_1001065A8 + 4776))
          {
            v11 = v3 < 1;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            return 0;
          }

          v13 = a1 + 96;
          v14 = a2 + 96;
          v15 = a1[2];
          while (1)
          {
            v17 = *v13++;
            v16 = v17;
            v18 = *v14++;
            v2 = (v16 - v18);
            if (v2)
            {
              break;
            }

            if (!--v15)
            {
              v19 = a1 + 155;
              v20 = a2 + 155;
              do
              {
                v22 = *v19++;
                v21 = v22;
                v23 = *v20++;
                v2 = (v21 - v23);
                if (v2)
                {
                  break;
                }

                --v3;
              }

              while (v3);
              return v2;
            }
          }
        }
      }

      else
      {
        v5 = (a1 + 7);
        v6 = (a2 + 7);
        v7 = a1[2];
        while (1)
        {
          v9 = *v5++;
          v8 = v9;
          v10 = *v6++;
          v2 = (v8 - v10);
          if (v2)
          {
            break;
          }

          if (!--v7)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      return (v3 - v4);
    }
  }

  return v2;
}

uint64_t sub_10002118C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3)
  {
    return (v2 - v3);
  }

  if (v2 < 1)
  {
LABEL_6:
    v10 = qword_1001065A8;
    if (qword_1001065A8)
    {
      if (*(qword_1001065A8 + 4776))
      {
        v11 = v2 < 1;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }

      v13 = (a1 + 384);
      v14 = (a2 + 384);
      v15 = *(a1 + 8);
      while (1)
      {
        v17 = *v13++;
        v16 = v17;
        v18 = *v14++;
        v10 = (v16 - v18);
        if (v10)
        {
          break;
        }

        if (!--v15)
        {
          v19 = (a1 + 620);
          v20 = (a2 + 620);
          do
          {
            v22 = *v19++;
            v21 = v22;
            v23 = *v20++;
            v10 = (v21 - v23);
            if (v10)
            {
              break;
            }

            --v2;
          }

          while (v2);
          return v10;
        }
      }
    }
  }

  else
  {
    v4 = (a1 + 28);
    v5 = (a2 + 28);
    v6 = *(a1 + 8);
    while (1)
    {
      v8 = *v4++;
      v7 = v8;
      v9 = *v5++;
      v10 = (v7 - v9);
      if (v10)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_6;
      }
    }
  }

  return v10;
}

uint64_t sub_100021244(int *a1, _DWORD *a2)
{
  v3 = *a1;
  result = (*a1 - *a2);
  if (v3 == *a2)
  {
    return (a1[6] - a2[6]);
  }

  return result;
}

uint64_t sub_100021268(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 >= 1)
  {
    v23 = v5;
    v24 = v6;
    v10 = result;
    v11 = 0;
    v22 = 0;
    v12 = (a4 + 620);
    v13 = a5;
    do
    {
      v14 = a4 + 1096 * v11;
      result = sub_10009BC28(v10, *(v14 + 24), v14 + 28, v14 + 384, v14 + 323, v14 + 856, (v14 + 146), v14 + 264, 59, &v22);
      *(v14 + 8) = result;
      if (result >= 1)
      {
        v20 = 0;
        v21 = v12;
        do
        {
          result = sub_10002E69C(a2, *(v21 - 59), v21[59], v15, v16, v17, v18, v19);
          *v21++ = result;
          ++v20;
        }

        while (v20 < *(v14 + 8));
      }

      *(v14 + 16) = *(a3 + 8 * v22);
      ++v11;
      v12 += 274;
    }

    while (v11 != v13);
  }

  return result;
}

uint64_t sub_100021370(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v9 = *a5;
  v79 = v9;
  if (!v9)
  {
    return result;
  }

  v10 = a4;
  if (a6 == 1)
  {
    *a5 = 1;
    v12 = *(a3 + 16);
    v80 = 0;
    result = sub_10009BC28(v12, *(a4 + 24), a4 + 28, a4 + 384, a4 + 323, a4 + 856, (a4 + 146), a4 + 264, 59, &v80);
    *(v10 + 2) = result;
    if (result >= 1)
    {
      v18 = v10 + 620;
      v19 = 214;
      do
      {
        result = sub_10002E69C(a2, *(v18 - 59), v18[59], v13, v14, v15, v16, v17);
        *v18++ = result;
        v20 = v19 - 213;
        ++v19;
      }

      while (v20 < *(v10 + 2));
    }

    *(v10 + 2) = *(a7 + 8 * v80);
    return result;
  }

  v68 = result;
  qsort(*a3, *(a3 + 12), 0xCuLL, sub_10002195C);
  v28 = sub_1000C9F54(1096, v21, v22, v23, v24, v25, v26, v27);
  v29 = *a3;
  *(v28 + 264) = 0u;
  *(v28 + 280) = 0u;
  *(v28 + 296) = 0u;
  *(v28 + 307) = 0u;
  *(v28 + 2) = 0;
  *(v28 + 3) = 1;
  v75 = v10;
  if (*(a3 + 12) < 1)
  {
    goto LABEL_74;
  }

  v30 = 0;
  v31 = a6;
  v71 = v10 + 1096;
  v73 = &v10[1096 * a6 - 1096];
  v69 = v10 + 12;
  while (1)
  {
    v72 = v30;
    if (v9 >= 1)
    {
      break;
    }

LABEL_10:
    v29 += 3;
    v30 = v72 + 1;
    if (v72 + 1 >= *(a3 + 12))
    {
      goto LABEL_74;
    }
  }

  if (v9 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = v9 & 0x7FFFFFFE;
    v33 = v32;
    v34 = v10;
    do
    {
      *(v34 + 3) = 0;
      *(v34 + 277) = 0;
      v34 += 2192;
      v33 -= 2;
    }

    while (v33);
    if (v32 == v9)
    {
      goto LABEL_19;
    }
  }

  v35 = &v69[274 * v32];
  v36 = v9 - v32;
  do
  {
    *v35 = 0;
    v35 += 274;
    --v36;
  }

  while (v36);
LABEL_19:
  v37 = 0;
  v38 = v10;
  while (1)
  {
    if (*(v38 + 3))
    {
      goto LABEL_24;
    }

    v39 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v39 = *(qword_1001065A8 + 1192) + ((*(qword_1001065A8 + 1184) * *(v29 + 5) + 16) >> 5);
    }

    v40 = (v39 & ~(v39 >> 31)) + *v38 + *(v29 + 4);
    *v28 = v40;
    if (v9 == v31 && v40 > *v73)
    {
      break;
    }

    if (!sub_10009B838(*(a3 + 16), v28, v38, v29))
    {
      goto LABEL_24;
    }

    v41 = &v10[1096 * v9];
    v42 = (v9 - 1);
    if (v9 < 1)
    {
      v42 = v9;
      v47 = &v10[1096 * v9];
    }

    else
    {
      v43 = *(v28 + 6);
      v44 = *v28;
      v45 = v43 - *(v10 + 6);
      if (v45)
      {
        if (v44 != *v10)
        {
          v45 = v44 - *v10;
        }

        v46 = v45 >> 31;
        v10 = v71;
        if (v45 >= 0)
        {
          v47 = v41;
        }

        else
        {
          v47 = v71;
        }

        if (v9 == 1)
        {
          v42 = 1;
          if (v45 < 0)
          {
            goto LABEL_63;
          }

          goto LABEL_56;
        }

        while (1)
        {
          v48 = v43 - *(v10 + 6);
          if (!v48)
          {
            break;
          }

          if (v46)
          {
            v46 = 1;
            v10 += 1096;
            if (v10 >= v41)
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v44 != *v10)
            {
              v48 = v44 - *v10;
            }

            v46 = v48 >> 31;
            if (v48 < 0)
            {
              v47 = v10;
            }

            v10 += 1096;
            if (v10 >= v41)
            {
LABEL_55:
              v42 = v9;
              if (v46)
              {
                goto LABEL_63;
              }

              goto LABEL_56;
            }
          }
        }
      }

      else
      {
        v46 = 0;
        v47 = &v10[1096 * v9];
      }

      if (v44 >= *v10)
      {
        v10 = v75;
LABEL_72:
        v31 = a6;
        goto LABEL_24;
      }

      if (v10 == v75)
      {
        *v75 = v44;
        v10 = v75;
        goto LABEL_72;
      }

      v41 -= 1096;
      j__memmove(v10, v10 + 1096, v41 - v10);
      if (v46)
      {
        goto LABEL_63;
      }

      v47 = v41;
    }

LABEL_56:
    if (v10 < v41)
    {
      v49 = *v28;
      v31 = a6;
      while (1)
      {
        v50 = v49 - *v10;
        if (v49 == *v10)
        {
          v50 = *(v28 + 6) - *(v10 + 6);
        }

        if (v50 < 0)
        {
          break;
        }

        v10 += 1096;
        if (v10 >= v41)
        {
          goto LABEL_66;
        }
      }

      v47 = v10;
      goto LABEL_66;
    }

LABEL_63:
    v31 = a6;
LABEL_66:
    v51 = 125400505 * ((v41 - v47) >> 3);
    v10 = v75;
    if (v42 < v31)
    {
      v9 = (v42 + 1);
      if (v51 < 1)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (v47 != v41)
    {
      --v51;
      v9 = v42;
      if (v51 < 1)
      {
LABEL_22:
        memcpy(v47, v28, 0x448uLL);
        v79 = v9;
        if (v47 <= v38)
        {
          ++v37;
          v38 += 1096;
        }

        goto LABEL_24;
      }

LABEL_21:
      j__memmove(v47 + 1096, v47, (1096 * v51));
      goto LABEL_22;
    }

LABEL_24:
    v38 += 1096;
    if (++v37 >= v9)
    {
      goto LABEL_10;
    }
  }

  if (v37)
  {
    goto LABEL_10;
  }

  *a5 = v31;
LABEL_74:
  if (v9 >= 1)
  {
    v52 = 0;
    v53 = *(a3 + 16);
    v81 = 0;
    v54 = v10 + 620;
    do
    {
      v55 = &v10[1096 * v52];
      v56 = sub_10009BC28(v53, *(v55 + 6), (v55 + 28), (v55 + 384), (v55 + 323), (v55 + 856), v55 + 73, (v55 + 264), 59, &v81);
      *(v55 + 2) = v56;
      if (v56 >= 1)
      {
        v62 = v54;
        v63 = 214;
        do
        {
          *v62 = sub_10002E69C(a2, *(v62 - 59), v62[59], v57, v58, v59, v60, v61);
          ++v62;
          v64 = v63 - 213;
          ++v63;
        }

        while (v64 < *(v55 + 2));
      }

      *(v55 + 2) = *(a7 + 8 * v81);
      ++v52;
      v54 += 274;
      v10 = v75;
    }

    while (v52 != v9);
  }

  qsort(v10, v9, 0x448uLL, sub_1000210C4);
  if (qword_1001065A8 && *(qword_1001065A8 + 1180))
  {
    sub_1000219D8(v68, v10, &v79, a7, a8, a9, v65, v66);
  }

  sub_100021C28(v68, v10, &v79);
  result = sub_1000CA03C(v28, 1096);
  *a5 = v79;
  return result;
}

uint64_t sub_10002195C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a2 + 8))
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = *(a1 + 8) != *(a2 + 8);
  }

  if (v2)
  {
    return v2;
  }

  v2 = *(a1 + 10) < *(a2 + 10) ? 0xFFFFFFFFLL : *(a1 + 10) != *(a2 + 10);
  if (v2)
  {
    return v2;
  }

  v2 = *a1 < *a2 ? 0xFFFFFFFFLL : *a1 != *a2;
  if (v2)
  {
    return v2;
  }

  v4 = *(a1 + 4);
  v5 = *(a2 + 4);
  v6 = v4 < v5;
  LODWORD(v7) = v4 != v5;
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

void *sub_1000219D8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = *a3;
  __dst = sub_1000C9F54(1096, a2, a3, a4, a5, a6, a7, a8);
  v12 = v11 - 1;
  if (v11 < 1)
  {
    v15 = v11;
  }

  else
  {
    v27 = a1;
    v28 = v8;
    v13 = 0;
    v14 = v9 + 1096 * v11 + 1096;
    v15 = v11;
    v30 = v9;
    do
    {
      v16 = v11--;
      v17 = (v9 + 1096 * v11);
      v18 = *v17;
      v19 = sub_1000385EC((v17 + 7), (v17 + 96), v17 + 323, v17 + 146, 0, v17 + 2, v17);
      v20 = *v17;
      if (*v17 == 0x40000000)
      {
        if (v16 < v15)
        {
          j__memmove(v17, (v9 + 1096 * v16), 1096 * (v15 - v16));
        }

        --v15;
      }

      else
      {
        if (v19 > v13)
        {
          v13 = v19;
        }

        if (v18 < v20 && v16 < v15)
        {
          v22 = (v9 + 1096 * v16);
          if (v20 <= *v22)
          {
            v9 = v30;
          }

          else
          {
            v23 = v14;
            v24 = v12;
            while (v15 > (v24 + 2))
            {
              v25 = *v23;
              ++v24;
              v23 += 274;
              if (v20 <= v25)
              {
                goto LABEL_22;
              }
            }

            v24 = v15 - 1;
LABEL_22:
            memcpy(__dst, v17, 0x448uLL);
            j__memmove(v17, v22, (1096 * (v24 - v11)));
            v9 = v30;
            memcpy((v30 + 1096 * v24), __dst, 0x448uLL);
          }
        }
      }

      --v12;
      v14 -= 1096;
    }

    while (v16 > 1);
    v31 = v15;
    if (v13 < 1)
    {
      v8 = v28;
    }

    else
    {
      v8 = v28;
      if (v15 >= 2)
      {
        sub_100021C28(v27, v9, &v31);
        v15 = v31;
      }
    }
  }

  *v8 = v15;

  return sub_1000CA03C(__dst, 1096);
}

uint64_t sub_100021C28(uint64_t result, unint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 >= 2)
  {
    v4 = result;
    v24 = v3 - 1;
    __dst = (a2 + 1096 * (v3 - 1));
    v26 = __dst - 1070;
    v5 = __dst - 716;
    do
    {
      v8 = __dst;
      __dst -= 1096;
      if (__dst >= a2)
      {
        v9 = v5;
        v11 = __dst;
        v10 = v26;
        while (1)
        {
          v12 = *(v11 + 2);
          if (v12 == v8[2])
          {
            break;
          }

LABEL_7:
          v11 -= 1096;
          v10 -= 1096;
          v9 -= 1096;
          if (v11 < a2)
          {
            goto LABEL_4;
          }
        }

        v13 = qword_1001065A8;
        if (qword_1001065A8 && *(qword_1001065A8 + 1760))
        {
          v14 = *(v11 + 2);
          while (v14 >= 1)
          {
            v15 = 2 * v14--;
            if (*&v10[v15] != *(v8 + v15 + 26))
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
          v16 = *(v11 + 2);
          while (v16 >= 1)
          {
            v17 = v16 - 1;
            v18 = 2 * v16;
            v19 = sub_1000BA7F4(v4, *&v10[2 * v16], 0);
            result = sub_1000BA7F4(v4, *(v8 + v18 + 26), 0);
            v16 = v17;
            if (v19 != result)
            {
              goto LABEL_7;
            }
          }

          v13 = qword_1001065A8;
        }

        if (v13 && *(v13 + 4776))
        {
          v20 = &v9[4 * v12];
          while (v12 >= 1)
          {
            v21 = &v8[v12];
            if (*v20 == v21[95])
            {
              v22 = *(v20 + 59);
              v20 -= 4;
              --v12;
              if (v22 == v21[154])
              {
                continue;
              }
            }

            goto LABEL_7;
          }
        }

        v6 = *a3 - 1;
        *a3 = v6;
        result = j__memmove(v8, v8 + 274, 1096 * (v6 - v24));
      }

LABEL_4:
      v26 -= 1096;
      v5 -= 1096;
    }

    while (v24-- > 1);
  }

  return result;
}

void *sub_100021E24(void *result, uint64_t a2, int *a3, char *a4, int *a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v9 = *a5;
  v91 = v9;
  if (!v9)
  {
    return result;
  }

  v10 = a6;
  v11 = 1;
  if (a6 == 1)
  {
    goto LABEL_75;
  }

  v12 = a3;
  v78 = a5;
  v79 = result;
  v90 = 0;
  qsort(*a3, a3[3], 0xCuLL, sub_10002195C);
  v23 = sub_1000C9F54(1096, v14, v15, v16, v17, v18, v19, v20);
  v24 = *v12;
  *(v23 + 264) = 0u;
  *(v23 + 280) = 0u;
  *(v23 + 296) = 0u;
  *(v23 + 307) = 0u;
  *(v23 + 12) = 1;
  if (v12[3] < 1)
  {
    goto LABEL_71;
  }

  v25 = 0;
  v87 = &a4[1096 * v10 - 1096];
  v86 = v10;
  v81 = v12;
  while (1)
  {
    v89 = sub_10009BC28(*(v12 + 2), *v24, __src, v99, v93, v95, v101, 0, 59, &v90);
    v26 = sub_10009BC28(*(v12 + 2), *(v24 + 4), v102, v98, v92, v94, v100, 0, 59, &v90);
    v82 = v25;
    if (v9 >= 1)
    {
      break;
    }

LABEL_6:
    v24 += 12;
    v25 = v82 + 1;
    v12 = v81;
    if (v82 + 1 >= *(v81 + 3))
    {
      goto LABEL_71;
    }
  }

  v30 = v26;
  if (v9 == 1)
  {
    v31 = 0;
    v32 = v89;
  }

  else
  {
    v31 = v9 & 0x7FFFFFFE;
    v33 = v31;
    v34 = a4;
    v32 = v89;
    do
    {
      *(v34 + 3) = 0;
      *(v34 + 277) = 0;
      v34 += 2192;
      v33 -= 2;
    }

    while (v33);
    if (v31 == v9)
    {
      goto LABEL_15;
    }
  }

  v35 = &a4[1096 * v31 + 12];
  v36 = v9 - v31;
  do
  {
    *v35 = 0;
    v35 += 1096;
    --v36;
  }

  while (v36);
LABEL_15:
  v37 = 0;
  v88 = v26;
  v38 = a4;
  v83 = v32;
  while (*(v38 + 12))
  {
LABEL_20:
    v38 += 1096;
    ++v37;
    v9 = v91;
    if (v37 >= v91)
    {
      goto LABEL_6;
    }
  }

  v39 = qword_1001065A8;
  if (qword_1001065A8)
  {
    v39 = *(qword_1001065A8 + 1192) + ((*(qword_1001065A8 + 1184) * *(v24 + 10) + 16) >> 5);
  }

  v40 = (v39 & ~(v39 >> 31)) + *v38 + *(v24 + 8);
  *v23 = v40;
  *(v23 + 16) = *(v38 + 16);
  if (v9 != v10 || v40 <= *v87)
  {
    if (*(v38 + 8) >= v30)
    {
      if (v30 < 1)
      {
LABEL_31:
        if (a2)
        {
          if (v32 >= 1)
          {
            v45 = v97;
            v46 = v95;
            v47 = v99;
            v48 = v83;
            do
            {
              v50 = *v47++;
              v49 = v50;
              v51 = *v46++;
              *v45++ = sub_10002E69C(a2, v49, v51, v27, v28, v29, v21, v22);
              --v48;
            }

            while (v48);
          }

          if (v30 >= 1)
          {
            v52 = v96;
            v53 = v94;
            v54 = v98;
            v55 = v88;
            do
            {
              v57 = *v54++;
              v56 = v57;
              v58 = *v53++;
              *v52++ = sub_10002E69C(a2, v56, v58, v27, v28, v29, v21, v22);
              --v55;
            }

            while (v55);
          }
        }

        else
        {
          __memset_chk();
          __memset_chk();
        }

        v32 = v89;
        sub_10002245C(v23, v38, __src, v99, v93, v97, v101, v89, v30);
        v27 = *(v23 + 8);
        if (v27 < 1)
        {
          v10 = v86;
        }

        else
        {
          v10 = v86;
          if ((!a8 || qword_1001065A8 && *(qword_1001065A8 + 1264) || sub_100023194(a7, a8, (v23 + 28), v27)) && sub_100022618(a4, v38, v86, &v91, v23))
          {
            ++v37;
            v38 += 1096;
          }
        }
      }

      else
      {
        v41 = v102;
        v42 = 28;
        v43 = v88;
        while (1)
        {
          v44 = *v41++;
          if (*(v38 + v42) != v44)
          {
            break;
          }

          v42 += 2;
          if (!--v43)
          {
            goto LABEL_31;
          }
        }
      }
    }

    if (!*(v24 + 8) && *(v38 + 8) >= v32)
    {
      if (v32 < 1)
      {
        if (a2)
        {
LABEL_56:
          if (v30 >= 1)
          {
            v70 = v96;
            v71 = v94;
            v72 = v98;
            v73 = v88;
            do
            {
              v75 = *v72++;
              v74 = v75;
              v76 = *v71++;
              *v70++ = sub_10002E69C(a2, v74, v76, v27, v28, v29, v21, v22);
              --v73;
            }

            while (v73);
          }
        }

        else
        {
LABEL_60:
          __memset_chk();
          __memset_chk();
        }

        v32 = v89;
        sub_10002245C(v23, v38, v102, v98, v92, v96, v100, v30, v89);
        v27 = *(v23 + 8);
        if (v27 < 1)
        {
          v10 = v86;
        }

        else
        {
          v10 = v86;
          if ((!a8 || qword_1001065A8 && *(qword_1001065A8 + 1264) || sub_100023194(a7, a8, (v23 + 28), v27)) && sub_100022618(a4, v38, v86, &v91, v23))
          {
            ++v37;
            v38 += 1096;
          }
        }
      }

      else
      {
        v59 = __src;
        v60 = 28;
        v61 = v83;
        while (1)
        {
          v62 = *v59++;
          if (*(v38 + v60) != v62)
          {
            break;
          }

          v60 += 2;
          if (!--v61)
          {
            if (!a2)
            {
              goto LABEL_60;
            }

            v63 = v97;
            v64 = v95;
            v65 = v99;
            v66 = v83;
            do
            {
              v68 = *v65++;
              v67 = v68;
              v69 = *v64++;
              *v63++ = sub_10002E69C(a2, v67, v69, v27, v28, v29, v21, v22);
              --v66;
            }

            while (v66);
            goto LABEL_56;
          }
        }
      }
    }

    goto LABEL_20;
  }

  v9 = v10;
  if (v37)
  {
    goto LABEL_6;
  }

  *v78 = v10;
LABEL_71:
  v77 = v79;
  if (qword_1001065A8)
  {
    if (*(qword_1001065A8 + 1180))
    {
      sub_1000219D8(v79, a4, &v91, a7, a8, a9, v21, v22);
      v77 = v79;
    }
  }

  sub_100021C28(v77, a4, &v91);
  result = sub_1000CA03C(v23, 1096);
  v11 = v91;
  a5 = v78;
LABEL_75:
  *a5 = v11;
  return result;
}

char *sub_10002245C(char *result, uint64_t a2, void *__src, const void *a4, const void *a5, const void *a6, const void *a7, int a8, int a9)
{
  v10 = result;
  v11 = a9;
  v12 = result + 28;
  v13 = result + 384;
  v14 = result + 323;
  v15 = result + 620;
  v30 = result + 146;
  if (a8 >= 1)
  {
    v28 = a2;
    memcpy(result + 28, __src, (2 * a8));
    memcpy(v13, a4, (4 * a8));
    memcpy(v14, a5, a8);
    memcpy(v15, a6, (4 * a8));
    result = memcpy(v30, a7, (2 * a8));
    v11 = a9;
    a2 = v28;
  }

  v18 = (*(a2 + 8) - v11);
  *(v10 + 8) = v18 + a8;
  if (v18 + a8 < 60)
  {
    if (v18 >= 1)
    {
      v19 = v15;
      v29 = 2 * a8;
      v27 = (a2 + 2 * v11);
      v20 = &v12[v29];
      v21 = a2;
      v22 = v11;
      memcpy(v20, v27 + 28, (2 * v18));
      v23 = 4 * a8;
      v24 = v21 + 4 * v22;
      memcpy(&v13[v23], (v24 + 384), (4 * v18));
      memcpy(&v14[a8], (v21 + v22 + 323), v18);
      memcpy(&v19[v23], (v24 + 620), (4 * v18));

      return memcpy(&v30[v29], v27 + 146, (2 * v18));
    }
  }

  else
  {
    *(v10 + 8) = 0;
  }

  return result;
}

BOOL sub_100022618(char *__dst, unint64_t a2, int a3, int *a4, _DWORD *a5)
{
  v8 = *a4;
  v9 = &__dst[1096 * *a4];
  v10 = 0;
  v11 = *a4 - 1;
  if (*a4 < 1)
  {
    v14 = &__dst[1096 * v8];
    goto LABEL_52;
  }

  v12 = a5[2];
  v13 = __dst;
  v14 = &__dst[1096 * v8];
  while (1)
  {
    v15 = *(v13 + 2);
    if (v12 != v15)
    {
      v18 = v12 - v15;
      goto LABEL_21;
    }

    if (v12 < 1)
    {
      break;
    }

    v16 = 28;
    v17 = a5[2];
    while (1)
    {
      v18 = *(a5 + v16) - *&v13[v16];
      if (v18)
      {
        break;
      }

      v16 += 2;
      if (!--v17)
      {
        goto LABEL_10;
      }
    }

LABEL_21:
    if (!v18)
    {
      goto LABEL_46;
    }

    if (v10)
    {
      v10 = 1;
    }

    else
    {
      v23 = *a5 - *v13;
      if (*a5 != *v13)
      {
        goto LABEL_40;
      }

      if (v12 != v15)
      {
        v23 = v12 - v15;
LABEL_40:
        if (v13 == __dst)
        {
          v30 = 1096;
        }

        else
        {
          v30 = 0;
        }

        v31 = &v13[v30];
        v10 = v23 < 0;
        if (v23 < 0)
        {
          v14 = v31;
        }

        goto LABEL_4;
      }

      if (v12 >= 1)
      {
        v24 = 28;
        v25 = a5[2];
        do
        {
          v23 = *(a5 + v24) - *&v13[v24];
          if (v23)
          {
            goto LABEL_40;
          }

          v24 += 2;
        }

        while (--v25);
      }

      v10 = 0;
      if (qword_1001065A8 && v12 >= 1 && *(qword_1001065A8 + 4776))
      {
        v26 = 96;
        v27 = a5[2];
        while (1)
        {
          v23 = a5[v26] - *&v13[v26 * 4];
          if (v23)
          {
            goto LABEL_40;
          }

          ++v26;
          if (!--v27)
          {
            v28 = 155;
            v29 = a5[2];
            while (1)
            {
              v23 = a5[v28] - *&v13[v28 * 4];
              if (v23)
              {
                goto LABEL_40;
              }

              ++v28;
              if (!--v29)
              {
                v10 = 0;
                goto LABEL_4;
              }
            }
          }
        }
      }
    }

LABEL_4:
    v13 += 1096;
    if (v13 >= v9)
    {
      __dst = v13;
      if (v10)
      {
        goto LABEL_83;
      }

      goto LABEL_52;
    }
  }

LABEL_10:
  if (qword_1001065A8 && v12 >= 1 && *(qword_1001065A8 + 4776))
  {
    v19 = 96;
    v20 = a5[2];
    while (1)
    {
      v18 = a5[v19] - *&v13[v19 * 4];
      if (v18)
      {
        goto LABEL_21;
      }

      ++v19;
      if (!--v20)
      {
        v21 = 155;
        v22 = a5[2];
        while (1)
        {
          v18 = a5[v21] - *&v13[v21 * 4];
          if (v18)
          {
            goto LABEL_21;
          }

          ++v21;
          if (!--v22)
          {
            goto LABEL_46;
          }
        }
      }
    }
  }

LABEL_46:
  if (*a5 >= *v13)
  {
    return 0;
  }

  if (v13 == __dst)
  {
    *__dst = *a5;
    return 0;
  }

  v9 -= 1096;
  v32 = a3;
  j__memmove(v13, v13 + 1096, v9 - v13);
  a3 = v32;
  __dst = v13;
  v8 = v11;
  if (!v10)
  {
LABEL_52:
    if (__dst >= v9)
    {
      goto LABEL_83;
    }

    v33 = *a5;
    if (!qword_1001065A8)
    {
      while (1)
      {
        v42 = v33 - *__dst;
        if (v33 != *__dst)
        {
          goto LABEL_73;
        }

        v43 = a5[2];
        v44 = *(__dst + 2);
        if (v43 != v44)
        {
          break;
        }

        if (v43 >= 1)
        {
          v45 = 28;
          while (1)
          {
            v42 = *(a5 + v45) - *&__dst[v45];
            if (v42)
            {
              break;
            }

            v45 += 2;
            if (!--v43)
            {
              goto LABEL_74;
            }
          }

LABEL_73:
          if (v42 < 0)
          {
            goto LABEL_82;
          }
        }

LABEL_74:
        __dst += 1096;
        if (__dst >= v9)
        {
          goto LABEL_83;
        }
      }

      v42 = v43 - v44;
      goto LABEL_73;
    }

    do
    {
      v34 = v33 - *__dst;
      if (v33 == *__dst)
      {
        v35 = a5[2];
        v36 = *(__dst + 2);
        if (v35 == v36)
        {
          if (v35 < 1)
          {
            goto LABEL_57;
          }

          v37 = 28;
          v38 = a5[2];
          while (1)
          {
            v34 = *(a5 + v37) - *&__dst[v37];
            if (v34)
            {
              break;
            }

            v37 += 2;
            if (!--v38)
            {
              if (!*(qword_1001065A8 + 4776))
              {
                goto LABEL_57;
              }

              v39 = 96;
              v40 = a5[2];
              while (1)
              {
                v34 = a5[v39] - *&__dst[v39 * 4];
                if (v34)
                {
                  goto LABEL_56;
                }

                ++v39;
                if (!--v40)
                {
                  v41 = 155;
                  while (1)
                  {
                    v34 = a5[v41] - *&__dst[v41 * 4];
                    if (v34)
                    {
                      goto LABEL_56;
                    }

                    ++v41;
                    if (!--v35)
                    {
                      goto LABEL_57;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v34 = v35 - v36;
        }
      }

LABEL_56:
      if (v34 < 0)
      {
LABEL_82:
        v14 = __dst;
        break;
      }

LABEL_57:
      __dst += 1096;
    }

    while (__dst < v9);
  }

LABEL_83:
  v46 = 125400505 * ((v9 - v14) >> 3);
  if (v8 < a3)
  {
    ++v8;
    if (v46 >= 1)
    {
      goto LABEL_85;
    }

    goto LABEL_86;
  }

  if (v14 == v9)
  {
    return 0;
  }

  if (--v46 >= 1)
  {
LABEL_85:
    j__memmove(v14 + 1096, v14, (1096 * v46));
  }

LABEL_86:
  memcpy(v14, a5, 0x448uLL);
  *a4 = v8;
  return v14 <= a2;
}

_DWORD *sub_100022A28(_DWORD *result, int *a2)
{
  v2 = *a2;
  if (*a2 >= 2)
  {
    v4 = result;
    v5 = v2 - 1;
    v6 = &result[274 * (v2 - 1)];
    do
    {
      result = v6;
      v6 -= 274;
      if (v6 >= v4)
      {
        v9 = v6;
        while (v9[6] != result[6])
        {
          v9 -= 274;
          if (v9 < v4)
          {
            goto LABEL_4;
          }
        }

        v7 = *a2 - 1;
        *a2 = v7;
        result = j__memmove(result, result + 274, 1096 * (v7 - v5));
      }

LABEL_4:
      v8 = __OFSUB__(v5--, 1);
    }

    while (!((v5 < 0) ^ v8 | (v5 == 0)));
  }

  return result;
}

uint64_t sub_100022AE4(uint64_t a1, int a2)
{
  if (a2 > 1024)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return 1;
  }

  v4 = a2;
  while (1)
  {
    if (*a1)
    {
      v5 = *(*a1 + 232);
      if (v5)
      {
        result = v5();
        if (!result)
        {
          break;
        }
      }
    }

    a1 += 8;
    if (!--v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100022B68(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = a2;
  do
  {
    if (*a1)
    {
      v4 = *(*a1 + 200);
      if (!v4 || v4())
      {
        return 1;
      }
    }

    a1 += 8;
    --v3;
  }

  while (v3);
  return 0;
}

uint64_t sub_100022BE0(void *a1, int a2)
{
  if (a2 > 1024)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return 1;
  }

  v4 = a2;
  result = 1;
  do
  {
    if (*a1)
    {
      v5 = *(*a1 + 152);
      if (v5)
      {
        result = v5(*a1);
        if (!result)
        {
          break;
        }
      }
    }

    ++a1;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t sub_100022C58(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(*(a1 + 8 * ((a3 >> 53) & 0x3FF)) + 168);
  if (v3)
  {
    return v3();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100022C84(uint64_t *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = a2;
  do
  {
    if (**a1 == 3 && sub_100025AF4(*a1))
    {
      return 1;
    }

    ++a1;
    --v3;
  }

  while (v3);
  return 0;
}

uint64_t sub_100022D0C(uint64_t *a1, int a2, unsigned __int16 *a3)
{
  if (a2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = a2;
    LODWORD(v6) = 0;
    if (a3)
    {
      do
      {
        v7 = *a1++;
        v6 = sub_100025C0C(v7, &a3[v6]) + v6;
        --v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v8 = *a1++;
        v6 = sub_100025C0C(v8, 0) + v6;
        --v5;
      }

      while (v5);
    }
  }

  if (a3)
  {
    qsort(a3, v6, 2uLL, sub_100022E0C);
    if (v6 < 2)
    {
      return 1;
    }

    else
    {
      v9 = a3 + 1;
      v10 = v6 - 1;
      v6 = 1;
      do
      {
        v12 = *v9++;
        v11 = v12;
        v13 = &a3[v6];
        if (v12 != *(v13 - 1))
        {
          *v13 = v11;
          v6 = (v6 + 1);
        }

        --v10;
      }

      while (v10);
    }
  }

  return v6;
}

uint64_t sub_100022E1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v12 = 4 * a2;
  v13 = sub_1000C9F54(v12 + 4, a2, a3, a4, a5, a6, a7, a8);
  sub_1000275DC(v10, a1);
  *v13 = -1;
  if (v10 < 1)
  {
    v14 = 1;
  }

  else
  {
    v10 = v10;
    v14 = 1;
    do
    {
      if (*a1)
      {
        v15 = *(*a1 + 176);
        if (v15)
        {
          v14 = v15(*a1, v13, a3, a4);
          if (!v14)
          {
            break;
          }
        }
      }

      ++a1;
      --v10;
    }

    while (v10);
  }

  v16 = v14;
  sub_1000CA03C(v13, v12 + 4);
  return v16;
}

uint64_t sub_100022EE0(uint64_t *a1, int a2, uint64_t a3, int a4, unsigned __int16 a5)
{
  if (a2 < 1)
  {
    return 1;
  }

  v9 = a2;
  while (1)
  {
    result = sub_100027674(*a1, a3, a4, a5);
    if (!result)
    {
      break;
    }

    ++a1;
    if (!--v9)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100022F5C(uint64_t result, unsigned int a2)
{
  if (a2 - 1 <= 0x3FF)
  {
    v2 = result;
    v3 = a2;
    do
    {
      result = *v2;
      v4 = *(*v2 + 160);
      if (v4)
      {
        result = v4();
      }

      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100022FBC(uint64_t result)
{
  if (result)
  {
    *(result + 248) = 0;
    return (*(result + 80))();
  }

  return result;
}

uint64_t sub_100022FD8(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = a2;
  while (!(*(*a1 + 128))())
  {
    a1 += 8;
    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100023060(uint64_t a1, unsigned __int16 *a2, int a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  sub_100025CE4(a1, v15);
  v10 = *(a1 + 120);
  if (!v10)
  {
    v10 = *(a1 + 104);
  }

  v10(a1, v15, a4, a5, *a2);
  result = (*(a1 + 112))(v15, a1, &v13);
  if (result)
  {
    if (a3 == 1)
    {
      while (!v14)
      {
        result = (*(a1 + 112))(v15, a1, &v13);
        if (!result)
        {
          return result;
        }
      }
    }

    else
    {
      v12 = (a3 - 1);
      while (!sub_100023060(a1, a2 + 1, v12, v13, *(&v13 + 1)))
      {
        result = (*(a1 + 112))(v15, a1, &v13);
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_100023194(uint64_t a1, int a2, unsigned __int16 *a3, int a4)
{
  v4 = a4;
  v5 = a3;
  if (a4 >= 1)
  {
    if (*a3 != -2 || (v5 = a3 + 1, v4 = a4 - 1, a4 != 1))
    {
      if (v5[v4 - 1] == -2)
      {
        --v4;
      }
    }
  }

  v8 = sub_1000254B4(a2, a1);
  if (v8)
  {
    v9 = sub_1000C0034(8 * a2);
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    if (a2 >= 1)
    {
      v11 = 0;
      while (1)
      {
        v12 = sub_100024D4C(*(a1 + 8 * v11));
        *(v10 + 8 * v11) = v12;
        if (!v12)
        {
          break;
        }

        if (a2 == ++v11)
        {
          v13 = v10;
          goto LABEL_14;
        }
      }

      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v23 = *(v10 + 8 * i);
          if (v23)
          {
            *(v23 + 248) = 0;
            (*(v23 + 80))();
          }
        }
      }

      sub_1000BFEC4(v10);
      return 0;
    }

    v18 = 0;
    goto LABEL_29;
  }

  v10 = 0;
  v13 = a1;
  if (a2 < 1)
  {
LABEL_19:
    v18 = 0;
    if (!v8)
    {
      return v18;
    }

    goto LABEL_22;
  }

LABEL_14:
  v14 = a2;
  v15 = v13;
  while (1)
  {
    v16 = *v15;
    v17 = *(*v15 + 184);
    if (v17)
    {
      v17();
      v16 = *v15;
    }

    if (sub_100023060(v16, v5, v4, 65534, 0))
    {
      break;
    }

    ++v15;
    if (!--v14)
    {
      goto LABEL_19;
    }
  }

  v18 = 1;
  if (v8)
  {
LABEL_22:
    if (a2 >= 1)
    {
      v19 = 0;
      v20 = 8 * a2;
      do
      {
        if (*(a1 + v19) != *(v13 + v19))
        {
          v21 = *(v10 + v19);
          if (v21)
          {
            *(v21 + 248) = 0;
            (*(v21 + 80))();
          }
        }

        v19 += 8;
      }

      while (v20 != v19);
    }

LABEL_29:
    sub_1000BFEC4(v10);
  }

  return v18;
}

uint64_t sub_10002336C(uint64_t a1, int a2, int16x8_t *a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    if (a4 < 4)
    {
      v4 = 0;
      goto LABEL_13;
    }

    if (a4 >= 0x10)
    {
      v4 = a4 & 0x7FFFFFF0;
      v5 = a3 + 1;
      v6 = &v19[a4 - 8];
      v7 = v4;
      do
      {
        v8 = vrev64q_s16(v5[-1]);
        v9 = vrev64q_s16(*v5);
        v6[-1] = vextq_s8(v9, v9, 8uLL);
        *v6 = vextq_s8(v8, v8, 8uLL);
        v5 += 2;
        v6 -= 2;
        v7 -= 16;
      }

      while (v7);
      if (v4 == a4)
      {
        return sub_100023194(a1, a2, v19, a4);
      }

      if ((a4 & 0xC) == 0)
      {
LABEL_13:
        v15 = a3 + v4;
        v16 = a4 - v4;
        do
        {
          v17 = *v15++;
          v19[--v16] = v17;
        }

        while (v16);
        return sub_100023194(a1, a2, v19, a4);
      }
    }

    else
    {
      v4 = 0;
    }

    v10 = v4;
    v4 = a4 & 0x7FFFFFFC;
    v11 = (a3 + 2 * v10);
    v12 = &v19[a4 - v10 - 4];
    v13 = v10 - v4;
    do
    {
      v14 = *v11++;
      *v12-- = vrev64_s16(v14);
      v13 += 4;
    }

    while (v13);
    if (v4 != a4)
    {
      goto LABEL_13;
    }
  }

  return sub_100023194(a1, a2, v19, a4);
}

uint64_t sub_1000234A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, _DWORD *a7, uint64_t a8)
{
  LODWORD(v12) = a2;
  v37 = 0;
  *a7 = 0x40000000;
  v14 = a3;
  v15 = 8 * a3;
  v23 = sub_1000C9F54(v15, a2, a3, a4, a5, a6, a7, a8);
  v34 = v14;
  v35 = a8;
  if (!a8)
  {
    if (v12 <= 0)
    {
      v25 = 0;
      goto LABEL_26;
    }

    v25 = 0;
    v12 = v12;
    while (1)
    {
      v29 = *a1;
      if ((*(*a1 + 136))(*a1, a3, a4, v23, &v37, 0))
      {
        v30 = v37;
        if (v37 >= *a7)
        {
          v25 = 1;
        }

        else
        {
          *a7 = v37;
          *a5 = v29;
          if (*v29 == 3)
          {
            memcpy(a6, v23, v15);
          }

          v25 = 1;
          if (!v30)
          {
            goto LABEL_26;
          }
        }
      }

      ++a1;
      if (!--v12)
      {
        goto LABEL_26;
      }
    }
  }

  v24 = sub_1000C9F54(v14, v16, v17, v18, v19, v20, v21, v22);
  if (v12 < 1)
  {
    v25 = 0;
    goto LABEL_25;
  }

  v32 = v15;
  v25 = 0;
  v26 = v12;
  while (1)
  {
    v27 = *a1;
    if (!(*(*a1 + 136))(*a1, a3, a4, v23, &v37, v24))
    {
      goto LABEL_5;
    }

    v28 = v37;
    if (v37 < *a7)
    {
      break;
    }

    v25 = 1;
LABEL_5:
    ++a1;
    if (!--v26)
    {
      goto LABEL_11;
    }
  }

  *a7 = v37;
  *a5 = v27;
  if (*v27 == 3)
  {
    memcpy(a6, v23, v32);
  }

  memcpy(v35, v24, v34);
  v25 = 1;
  if (v28)
  {
    goto LABEL_5;
  }

LABEL_11:
  v15 = v32;
  if (!v35)
  {
    goto LABEL_26;
  }

LABEL_25:
  sub_1000CA03C(v24, v34);
LABEL_26:
  sub_1000CA03C(v23, v15);
  return v25;
}

uint64_t sub_1000236B0(_DWORD *a1)
{
  if (*a1 == 3)
  {
    return sub_100027370(a1);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_1000236D0(_DWORD *result, int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v4 = result;
    v5 = a2;
    do
    {
      result = *v4;
      if (**v4 == 3)
      {
        result = sub_100025614(result, a3);
      }

      ++v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_100023738(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 1;
  }

  v3 = a2;
  while (1)
  {
    result = (*(*a1 + 88))();
    if (!result)
    {
      break;
    }

    a1 += 8;
    if (!--v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100023790(uint64_t a1, int a2, _DWORD *a3)
{
  *a3 = 0;
  if (a2 < 1)
  {
    v7 = 0;
LABEL_14:
    *a3 = v7;
    return 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v18 = 0;
    v8 = a2;
    while (1)
    {
      v9 = *(a1 + 8 * v6);
      if (*v9 != 3)
      {
        return 0;
      }

      result = sub_100028A28(a1, a2);
      if (!result)
      {
        return result;
      }

      if (*(v9 + 268) >= 2)
      {
        break;
      }

LABEL_3:
      if (++v6 == v8)
      {
        goto LABEL_14;
      }
    }

    v16 = result;
    v17 = 1;
    while (1)
    {
      result = sub_10003040C(v16, *(*(v9 + 272) + 4 * v17), &v18, v11, v12, v13, v14, v15);
      if (!result)
      {
        break;
      }

      if (v18 > v7)
      {
        v7 = v18;
      }

      if (++v17 >= *(v9 + 268))
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_100023894(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 3)
  {
    return sub_1000270C4(a1, a4);
  }

  if (a2 == 2)
  {
    return sub_1000238BC(a1, a3);
  }

  return 0;
}

uint64_t sub_1000238BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0034(272);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  *(v4 + 4) = 0u;
  v6 = (v4 + 4);
  *(v4 + 256) = a2;
  *(v4 + 20) = 0u;
  *(v4 + 36) = 0u;
  *(v4 + 52) = 0u;
  if (sub_1000BBE54(a1, (v4 + 4), 64, 1))
  {
    v8 = sub_1000C7898((v5 + 4), (v5 + 4), 64, v7);
    *v5 = 2;
    if (v8)
    {
      *(v5 + 36) = 0u;
      *(v5 + 52) = 0u;
      *v6 = 0u;
      *(v5 + 20) = 0u;
      sub_1000C78DC((v5 + 4), (v5 + 4), 64);
    }

    *(v5 + 68) = 0;
    *(v5 + 72) = 0;
    *(v5 + 80) = sub_100023BB8;
    *(v5 + 88) = sub_100023BC8;
    *(v5 + 96) = sub_100023BD0;
    *(v5 + 104) = sub_100023BD8;
    *(v5 + 112) = sub_100023BEC;
    *(v5 + 120) = 0;
    *(v5 + 128) = sub_100023D0C;
    *(v5 + 136) = sub_100023D14;
    *(v5 + 144) = nullsub_2;
    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *(v5 + 184) = 0u;
    *(v5 + 208) = 0;
    *(v5 + 216) = 0;
    *(v5 + 200) = sub_100023D74;
    *(v5 + 232) = 0;
    *(v5 + 240) = 0;
    *(v5 + 224) = sub_100023D7C;
    if (sub_1000BBD54(a1, (v5 + 264)))
    {
      *(v5 + 248) = 1;
      return v5;
    }
  }

  return 0;
}

uint64_t sub_100023A50(uint64_t a1)
{
  if (a1)
  {
    return (*(a1 + 240))();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100023A64(uint64_t a1, int a2)
{
  v5 = sub_1000C0034(272);
  if (v5)
  {
    v6 = sub_1000C7898("XWV", (v5 + 4), 64, v4);
    *v5 = 2;
    if (v6)
    {
      *(v5 + 52) = 0u;
      *(v5 + 36) = 0u;
      *(v5 + 20) = 0u;
      *(v5 + 4) = 0u;
      sub_1000C78DC((v5 + 4), "XWV", 64);
    }

    *(v5 + 68) = 0;
    *(v5 + 72) = 0;
    *(v5 + 80) = sub_100023BB8;
    *(v5 + 88) = sub_100023BC8;
    *(v5 + 96) = sub_100023BD0;
    *(v5 + 104) = sub_100023BD8;
    *(v5 + 112) = sub_100023BEC;
    *(v5 + 120) = 0;
    *(v5 + 128) = sub_100023D0C;
    *(v5 + 136) = sub_100023D14;
    *(v5 + 144) = nullsub_2;
    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *(v5 + 184) = 0u;
    *(v5 + 208) = 0;
    *(v5 + 216) = 0;
    *(v5 + 200) = sub_100023D74;
    *(v5 + 232) = 0;
    *(v5 + 240) = 0;
    *(v5 + 224) = sub_100023D7C;
    *(v5 + 256) = a1;
    *(v5 + 264) = a2;
    *(v5 + 248) = 1;
  }

  return v5;
}

uint64_t sub_100023BB8(uint64_t result)
{
  if (result)
  {
    *(result + 248) = 0;
    return sub_1000BFEC4(result);
  }

  return result;
}

void sub_100023BD8(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, __int16 a5)
{
  *(a2 + 8) = a3;
  *a2 = (a4 >> 53) & 0x3FF;
  *(a2 + 10) = a5;
}

BOOL sub_100023BEC(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 264) && *(a1 + 4) != -2)
  {
    return 0;
  }

  *(a3 + 8) = (*a1 << 53) | 1;
  *(a3 + 16) = 1;
  *(a3 + 2) = 0;
  *(a3 + 24) = 0;
  v6 = *(a1 + 5);
  v7 = *(a2 + 256);
  if (v6 == 0xFFFF)
  {
    v9 = sub_1000B215C(v7);
    v12 = a1[1];
    v11 = (a1 + 1);
    v10 = v12;
    if (v12 > v9)
    {
LABEL_11:
      if (v10 <= v9)
      {
        goto LABEL_16;
      }
    }

    else
    {
      while (1)
      {
        v13 = sub_1000B2CE4(*(a2 + 256), v10);
        v14 = *v11;
        if (v13)
        {
          break;
        }

        v10 = v14 + 1;
        *v11 = v14 + 1;
        if (v14 >= v9)
        {
          goto LABEL_11;
        }
      }

      v10 = *v11;
      if (v14 <= v9)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

  result = sub_1000B2CE4(v7, v6);
  if (!result)
  {
    return result;
  }

  if (!a1[1])
  {
    LOWORD(v10) = *(a1 + 5);
    v11 = (a1 + 1);
LABEL_16:
    *a3 = v10;
    ++*v11;
    return 1;
  }

  return 0;
}

uint64_t sub_100023D14(int a1, int a2, int a3, void *a4, _DWORD *a5, _BYTE *a6)
{
  bzero(a4, 8 * a2);
  if (a6)
  {
    bzero(a6, a2);
    *a6 = 1;
  }

  *a5 = 0;
  return 1;
}

uint64_t sub_100023DC8(unsigned __int8 *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (sub_1000C7854(a1) > 63)
  {
    return 0;
  }

  result = sub_1000C0034(448);
  if (result)
  {
    if (a3)
    {
      v11 = a3 + 1;
    }

    else
    {
      v11 = 0;
    }

    *(result + 264) = v11;
    *(result + 256) = a2;
    v12 = result;
    if (sub_10002401C(result, a1))
    {
      if (!v11)
      {
        return v12;
      }

      v13 = v12;
      if (a4 > 0)
      {
        *(v12 + 376) = 1;
        v14 = sub_1000C0034(4 * v11);
        v15 = v12;
        *(v12 + 272) = v14;
        if (v14)
        {
          v16 = (v12 + 272);
          if (v11 >= 1)
          {
            v17 = 0;
            do
            {
              *(*v16 + v17) = -1;
              v17 += 4;
            }

            while (4 * v11 != v17);
          }

          *(v12 + 268) = 1;
          v18 = sub_1000C0034(4 * v11 + 4);
          *(v12 + 288) = v18;
          if (v18)
          {
            v19 = v11;
            v20 = (v12 + 288);
            v21 = sub_1000C0034(v19);
            *(v12 + 296) = v21;
            if (v21)
            {
              v22 = (v12 + 296);
              v23 = sub_1000C0034(4 * a4);
              *(v12 + 304) = v23;
              if (v23)
              {
                result = v12;
                *(v12 + 368) = a4;
                *(v12 + 372) = 0;
                *(v12 + 336) = a5;
                if (!a5)
                {
LABEL_20:
                  **(result + 272) = 0;
                  **(result + 288) = 0;
                  *(*(result + 288) + 4) = 0;
                  **(result + 296) = 0;
                  *(result + 248) = 1;
                  return result;
                }

                v24 = a4;
                v25 = v12 + 304;
                v26 = sub_1000C0034(v24);
                *(v12 + 352) = v26;
                if (v26)
                {
                  v27 = sub_1000C0034(v19);
                  result = v12;
                  *(v12 + 360) = v27;
                  if (v27)
                  {
                    goto LABEL_20;
                  }

                  sub_1000BFEC4(*v16);
                  v16 = (v12 + 288);
                  v20 = (v12 + 296);
                  v22 = (v12 + 304);
                  v25 = v12 + 352;
                }

                sub_1000BFEC4(*v16);
                v16 = v20;
                v20 = v22;
                v22 = v25;
              }

              sub_1000BFEC4(*v16);
              v16 = v20;
              v20 = v22;
            }

            sub_1000BFEC4(*v16);
            v16 = v20;
          }

          sub_1000BFEC4(*v16);
          v15 = v12;
        }

        sub_100024228(v15);
        return 0;
      }
    }

    else
    {
      v13 = v12;
    }

    sub_1000BFEC4(v13);
    return 0;
  }

  return result;
}

BOOL sub_10002401C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = qword_1001065A8;
  v5 = sub_100027F6C;
  v6 = sub_10002A284;
  if (!qword_1001065A8 || (v4 = *(qword_1001065A8 + 1072), v5 = sub_100027F6C, v6 = sub_10002A284, !v4) || (result = sub_100030E30(*(a1 + 256)), v5 = sub_10002A13C, v6 = sub_100029F78, result))
  {
    v8 = v6;
    if (a2)
    {
      v9 = sub_1000C7898(a2, (a1 + 4), 64, v4);
      *a1 = 3;
      if (v9)
      {
        *(a1 + 52) = 0u;
        *(a1 + 36) = 0u;
        *(a1 + 20) = 0u;
        *(a1 + 4) = 0u;
        sub_1000C78DC((a1 + 4), a2, 64);
      }
    }

    else
    {
      *a1 = 3;
    }

    *(a1 + 68) = 1;
    *(a1 + 80) = sub_100024228;
    *(a1 + 88) = sub_10002A290;
    *(a1 + 96) = sub_10002A2B4;
    *(a1 + 104) = v8;
    *(a1 + 112) = v5;
    *(a1 + 120) = sub_100027F64;
    *(a1 + 128) = sub_10002A2BC;
    *(a1 + 136) = sub_10002A568;
    *(a1 + 144) = nullsub_3;
    *(a1 + 152) = sub_10002A64C;
    *(a1 + 160) = sub_10002A834;
    *(a1 + 168) = sub_10002850C;
    *(a1 + 176) = sub_10002A860;
    *(a1 + 184) = sub_10002AD78;
    *(a1 + 192) = sub_10002AD9C;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 200) = sub_10002AE94;
    *(a1 + 224) = sub_10002AF8C;
    *(a1 + 232) = sub_10002B164;
    *(a1 + 240) = 0;
    return 1;
  }

  return result;
}

uint64_t sub_100024228(uint64_t result)
{
  if (result)
  {
    v1 = result;
    *(result + 248) = 0;
    if (*(result + 376))
    {
      v2 = *(result + 272);
      if (v2)
      {
        v3 = *(result + 268);
        if (v3 > 2)
        {
          qsort((v2 + 4), (v3 - 1), 4uLL, sub_100029F68);
          v3 = *(v1 + 268);
        }

        if (v3 >= 2)
        {
          v4 = v3 - 1;
          do
          {
            sub_100030018(*(v1 + 256), *(*(v1 + 272) + 4 * v4));
            v6 = *(v1 + 280);
            if (v6)
            {
              sub_100030018(*(v1 + 256), *(v6 + 4 * v4));
            }

            v5 = v4-- + 1;
          }

          while (v5 > 2);
        }

        v7 = *(v1 + 328);
        if (v7)
        {
          v8 = *(v1 + 268);
          if (v8 >= 2)
          {
            do
            {
              v10 = *(v1 + 328) + ((v8 - 1) << 6);
              sub_1000BFEC4(*v10);
              v11 = *(v10 + 8);
              if (v11)
              {
                if (*(v10 + 20) >= 1)
                {
                  v12 = 0;
                  do
                  {
                    sub_1000BFEC4(*(*(v10 + 8) + 8 * v12++));
                  }

                  while (v12 < *(v10 + 20));
                  v11 = *(v10 + 8);
                }

                sub_1000BFEC4(v11);
              }

              v13 = *(v10 + 24);
              if (v13)
              {
                v14 = qword_1001065A8;
                if (qword_1001065A8)
                {
                  v15 = 0;
                  while (1)
                  {
                    v13 = *(v10 + 24);
                    if (*(v14 + 4136) <= v15)
                    {
                      break;
                    }

                    sub_1000BFEC4(*(v13 + 8 * v15++));
                    v14 = qword_1001065A8;
                    if (!qword_1001065A8)
                    {
                      v13 = *(v10 + 24);
                      break;
                    }
                  }
                }

                sub_1000BFEC4(v13);
              }

              sub_1000BFEC4(*(v10 + 32));
              v16 = *(v10 + 40);
              if (v16)
              {
                if (*(v10 + 52) >= 1)
                {
                  v17 = 0;
                  do
                  {
                    sub_1000BFEC4(*(*(v10 + 40) + 8 * v17++));
                  }

                  while (v17 < *(v10 + 52));
                  v16 = *(v10 + 40);
                }

                sub_1000BFEC4(v16);
              }
            }

            while (v8-- > 2);
            v7 = *(v1 + 328);
          }

          sub_1000BFEC4(v7);
        }
      }

      sub_1000BFEC4(*(v1 + 352));
      sub_1000BFEC4(*(v1 + 360));
      sub_1000BFEC4(*(v1 + 304));
      sub_1000BFEC4(*(v1 + 296));
      sub_1000BFEC4(*(v1 + 288));
      sub_1000BFEC4(*(v1 + 272));
      sub_1000BFEC4(*(v1 + 280));
      sub_1000BFEC4(*(v1 + 400));
      sub_1000BFEC4(*(v1 + 408));
      sub_1000BFEC4(*(v1 + 416));
      sub_1000BFEC4(*(v1 + 432));
      sub_1000BFEC4(*(v1 + 320));
    }

    return sub_1000BFEC4(v1);
  }

  return result;
}

uint64_t sub_100024470(uint64_t a1, signed int a2, _DWORD *a3)
{
  v6 = *(a1 + 256);
  if (*(v6 + 152) <= a2)
  {
    v9 = *(v6 + 32) + 1;
    v10 = sub_1000C0034(4 * v9);
    j__memmove(v10, *(v6 + 144), 4 * *(v6 + 152));
    sub_1000BFEC4(*(v6 + 144));
    *(v6 + 144) = v10;
    *(v6 + 152) = v9;
    v7 = *(v10 + a2);
    *a3 = v7;
    result = 1;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v7 = *(*(v6 + 144) + 4 * a2);
    *a3 = v7;
    result = 1;
    if (!a2)
    {
      return result;
    }
  }

  if (!v7)
  {
    v11 = *(a1 + 268);
    if (v11 == *(a1 + 264))
    {
      result = sub_1000245C8(a1);
      if (!result)
      {
        return result;
      }

      v11 = *(a1 + 268);
    }

    *(*(a1 + 272) + 4 * v11) = a2;
    v12 = *(a1 + 268);
    *a3 = v12;
    *(*(v6 + 144) + 4 * a2) = v12;
    v13 = (*(a1 + 288) + 4 * *(a1 + 268));
    v13[1] = *v13;
    ++*(a1 + 268);
    sub_10002EB98(v6, a2);
    v15 = 0;
    v14 = 0;
    sub_1000306E8(*(a1 + 256), a2, &v15, &v14);
    if (v15)
    {
      *(a1 + 340) = 1;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1000245C8(uint64_t a1)
{
  if (!*(a1 + 376))
  {
    return 0;
  }

  v2 = *(a1 + 264);
  v3 = 8 * v2;
  result = sub_1000C0034(8 * v2);
  if (result)
  {
    v5 = result;
    v6 = 2 * v2;
    v7 = sub_1000C0034(4 * (v6 | 1));
    if (!v7)
    {
      v12 = v5;
      goto LABEL_19;
    }

    v8 = v7;
    v9 = sub_1000C0034(v6);
    if (!v9)
    {
      sub_1000BFEC4(v5);
      v12 = v8;
      goto LABEL_19;
    }

    v10 = v9;
    if (*(a1 + 280))
    {
      v11 = sub_1000C0034(v3);
      if (!v11)
      {
        sub_1000BFEC4(v5);
        sub_1000BFEC4(v8);
        v12 = v10;
LABEL_19:
        sub_1000BFEC4(v12);
        return 0;
      }
    }

    else
    {
      v11 = 0;
    }

    if (*(a1 + 328))
    {
      v13 = sub_1000C0034(v6 << 6);
      if (!v13)
      {
        sub_1000BFEC4(v5);
        sub_1000BFEC4(v8);
        sub_1000BFEC4(v10);
        v12 = v11;
        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
    }

    if (*(a1 + 360))
    {
      v14 = sub_1000C0034(v6);
      if (!v14)
      {
        sub_1000BFEC4(v5);
        sub_1000BFEC4(v8);
        sub_1000BFEC4(v10);
        sub_1000BFEC4(v11);
        v12 = v13;
        goto LABEL_19;
      }
    }

    else
    {
      v14 = 0;
    }

    j__memmove(v5, *(a1 + 272), 4 * *(a1 + 268));
    sub_1000BFEC4(*(a1 + 272));
    *(a1 + 272) = v5;
    j__memmove(v8, *(a1 + 288), 4 * *(a1 + 268) + 4);
    sub_1000BFEC4(*(a1 + 288));
    *(a1 + 288) = v8;
    j__memmove(v10, *(a1 + 296), *(a1 + 268));
    sub_1000BFEC4(*(a1 + 296));
    *(a1 + 296) = v10;
    v15 = *(a1 + 280);
    if (v15)
    {
      j__memmove(v11, v15, 4 * *(a1 + 268));
      sub_1000BFEC4(*(a1 + 280));
      *(a1 + 280) = v11;
    }

    v16 = *(a1 + 328);
    if (v16)
    {
      j__memmove(v13, v16, *(a1 + 268) << 6);
      sub_1000BFEC4(*(a1 + 328));
      *(a1 + 328) = v13;
    }

    v17 = *(a1 + 360);
    if (v17)
    {
      j__memmove(v14, v17, *(a1 + 268));
      sub_1000BFEC4(*(a1 + 360));
      *(a1 + 360) = v14;
    }

    *(a1 + 264) = v6;
    return 1;
  }

  return result;
}

uint64_t sub_1000247FC(uint64_t a1, int a2)
{
  if (*(a1 + 268) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 1;
  while (1)
  {
    v5 = sub_1000302E0(*(a1 + 256), *(*(a1 + 272) + 4 * v4));
    if (v5)
    {
      v6 = *(v5 + 268);
      if (v6 >= 2)
      {
        break;
      }
    }

LABEL_3:
    if (++v4 >= *(a1 + 268))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = 4 * v6;
  v8 = 4;
  while (*(*(v5 + 280) + v8) != a2)
  {
    v8 += 4;
    if (v7 == v8)
    {
      goto LABEL_3;
    }
  }

  return *(*(v5 + 272) + v8);
}

uint64_t sub_1000248C0(uint64_t a1, int a2, int a3, int a4)
{
  if (sub_100022AD4(a1) != 3)
  {
    return 0;
  }

  if (!*(a1 + 376))
  {
    return 0;
  }

  if (!a3)
  {
    if (!a2)
    {
      return 0;
    }

    v20 = *(a1 + 296);
    if (*(v20 + a2))
    {
      if (!*(a1 + 336))
      {
        return 1;
      }

      if (*(*(a1 + 360) + a2) != a4)
      {
        return 0;
      }
    }

    else
    {
      result = 1;
      *(v20 + a2) = 1;
      if (!*(a1 + 336))
      {
        return result;
      }
    }

    *(*(a1 + 360) + a2) = a4;
    return 1;
  }

  v8 = (*(a1 + 288) + 4 * a2);
  LODWORD(v10) = *v8;
  v9 = v8[1];
  v11 = v10;
  v12 = v9 - v10;
  if (v9 > v10)
  {
    v10 = v10;
    while (*(*(a1 + 304) + 4 * v10) != a3)
    {
      ++v10;
      if (!--v12)
      {
        v11 = v9;
        goto LABEL_9;
      }
    }

    return !*(a1 + 336) || *(*(a1 + 352) + v10) == a4;
  }

LABEL_9:
  v13 = *(a1 + 372);
  if (v13 != *(a1 + 368))
  {
    v16 = *(a1 + 304);
    goto LABEL_23;
  }

  v14 = v13;
  result = sub_1000C0034(8 * v13);
  if (result)
  {
    v16 = result;
    v17 = 2 * v14;
    if (!*(a1 + 352))
    {
LABEL_14:
      j__memmove(v16, *(a1 + 304), 4 * *(a1 + 372));
      sub_1000BFEC4(*(a1 + 304));
      *(a1 + 304) = v16;
      *(a1 + 368) = v17;
      v13 = *(a1 + 372);
LABEL_23:
      j__memmove(&v16[4 * v11 + 4], &v16[4 * v11], 4 * (v13 - v11));
      *(*(a1 + 304) + 4 * v11) = a3;
      if (*(a1 + 336))
      {
        j__memmove((*(a1 + 352) + v11 + 1), (*(a1 + 352) + v11), *(a1 + 372) - v11);
        *(*(a1 + 352) + v11) = a4;
      }

      ++*(a1 + 372);
      if (*(a1 + 268) > a2)
      {
        v21 = a2;
        do
        {
          ++*(*(a1 + 288) + 4 * v21++ + 4);
        }

        while (v21 < *(a1 + 268));
      }

      return 1;
    }

    v18 = sub_1000C0034(v17);
    if (v18)
    {
      v19 = v18;
      j__memmove(v18, *(a1 + 352), *(a1 + 372));
      sub_1000BFEC4(*(a1 + 352));
      *(a1 + 352) = v19;
      goto LABEL_14;
    }

    sub_1000BFEC4(v16);
    return 0;
  }

  return result;
}

uint64_t sub_100024B18(uint64_t a1, int a2, unsigned int a3, int a4)
{
  v12 = 0;
  result = sub_100024BEC(a1, a2, &v12);
  if (result)
  {
    v11 = 0;
    result = sub_100024BEC(a1, a3, &v11);
    if (result)
    {
      v8 = v11;
      result = sub_1000248C0(a1, v12, v11, a4);
      if (result)
      {
        if (*(a1 + 340) == 1 && (v10 = 0, v9 = 0, sub_1000306E8(*(a1 + 256), a3, &v10, &v9), v10))
        {
          return sub_1000248C0(a1, v8, v8, 0);
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100024BEC(uint64_t a1, int a2, int *a3)
{
  v5 = *(a1 + 268);
  if (a2 < 0 || v5 <= a2 || (LODWORD(v6) = a2, *(*(a1 + 272) + 4 * a2) != a2))
  {
    if (v5 < 1)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = 0;
      while (*(*(a1 + 272) + 4 * v6) != a2)
      {
        if (v5 == ++v6)
        {
          *a3 = -1;
          goto LABEL_15;
        }
      }
    }
  }

  v7 = v6 == v5;
  if (v6 == v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6;
  }

  *a3 = v8;
  if (!v7)
  {
    return 1;
  }

LABEL_15:
  v9 = *(a1 + 268);
  if (v9 == *(a1 + 264))
  {
    v10 = a3;
    result = sub_1000245C8(a1);
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 268);
    a3 = v10;
  }

  *(*(a1 + 272) + 4 * v9) = a2;
  v12 = *(a1 + 268);
  *a3 = v12;
  *(*(a1 + 288) + 4 * v12 + 4) = *(*(a1 + 288) + 4 * v12);
  ++*(a1 + 268);
  sub_10002EB98(*(a1 + 256), a2);
  if (sub_10002FFE8(a2))
  {
    *(a1 + 348) = 1;
  }

  v15 = 0;
  v14 = 0;
  v13 = sub_1000302E0(*(a1 + 256), a2);
  if (!v13)
  {
    sub_1000306E8(*(a1 + 256), a2, &v15, &v14);
    if (!v15)
    {
      return 1;
    }

    goto LABEL_22;
  }

  if (*(v13 + 340))
  {
LABEL_22:
    *(a1 + 340) = 1;
  }

  return 1;
}

uint64_t sub_100024D4C(uint64_t a1)
{
  v82 = xmmword_1000F0D48;
  v83 = unk_1000F0D58;
  v84 = xmmword_1000F0D68;
  v85 = unk_1000F0D78;
  strcpy(__s, "00__ExpandedName");
  __s[17] = unk_1000F0D39;
  v79 = unk_1000F0D3A;
  v80 = unk_1000F0D3C;
  v81 = unk_1000F0D40;
  v86 = 0;
  v2 = strlen(__s);
  if (*a1 != 3 || !*(a1 + 348))
  {
    return a1;
  }

  v3 = v2;
  v4 = *(a1 + 268);
  v5 = *(a1 + 368);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = sub_1000302E0(*(a1 + 256), *(*(a1 + 272) + 4 * v6));
      if (v7)
      {
        v4 += *(v7 + 268);
        v5 += *(v7 + 372);
      }

      v8 = *(a1 + 288);
      v9 = *(v8 + 4 * v6++);
      if (v9 < *(v8 + 4 * v6))
      {
        do
        {
          v10 = sub_1000302E0(*(a1 + 256), *(*(a1 + 272) + 4 * *(*(a1 + 304) + 4 * v9)));
          if (v10)
          {
            v4 += *(v10 + 268);
            v5 += *(v10 + 372);
          }

          ++v9;
        }

        while (v9 < *(*(a1 + 288) + 4 * v6));
      }
    }

    while (v6 < *(a1 + 268));
  }

  sprintf(&__s[v3], "%d", dword_100101728);
  ++dword_100101728;
  v11 = sub_100023DC8(__s, *(a1 + 256), v4, v5, *(a1 + 336));
  if (!v11)
  {
    return 0;
  }

  v19 = v11;
  v20 = sub_1000C9FC0(*(a1 + 268), v12, v13, v14, v15, v16, v17, v18);
  LODWORD(v21) = *(a1 + 268);
  if (v21 < 1)
  {
LABEL_80:
    v62 = v21;
    goto LABEL_98;
  }

  v22 = 0;
  while (1)
  {
    v76 = *(*(a1 + 272) + 4 * v22);
    v23 = sub_1000302E0(*(a1 + 256), v76);
    v24 = v23;
    if (!v23)
    {
      goto LABEL_23;
    }

    if (!sub_10002537C(v23))
    {
      goto LABEL_97;
    }

    LODWORD(v25) = *(v24 + 268);
    if (v25 >= 2)
    {
      v26 = 1;
      do
      {
        if (!sub_100024BEC(v19, *(*(v24 + 280) + 4 * v26), &v77))
        {
          goto LABEL_97;
        }

        ++v26;
        v25 = *(v24 + 268);
      }

      while (v26 < v25);
    }

    if (*(v20 + v22))
    {
LABEL_23:
      v27 = *(a1 + 288);
      v28 = *(v27 + 4 * v22++);
      if (v28 < *(v27 + 4 * v22))
      {
        break;
      }

      goto LABEL_76;
    }

    if (v25 >= 2)
    {
      v53 = *(v24 + 280);
      v52 = *(v24 + 288);
      v54 = 1;
      do
      {
        v55 = v54;
        v56 = *(v52 + 4 * v54++);
        if (v56 < *(v52 + 4 * v54))
        {
          v57 = *(v53 + 4 * v55);
          do
          {
            v58 = *(v24 + 352);
            if (v58)
            {
              v59 = *(v58 + v56);
            }

            else
            {
              v59 = 0;
            }

            if (!sub_100024B18(v19, v57, *(v53 + 4 * *(*(v24 + 304) + 4 * v56)), v59))
            {
              goto LABEL_97;
            }

            ++v56;
            v52 = *(v24 + 288);
          }

          while (v56 < *(v52 + 4 * v54));
          LODWORD(v25) = *(v24 + 268);
        }
      }

      while (v54 < v25);
    }

    *(v20 + v22) = 1;
    v60 = *(a1 + 288);
    v28 = *(v60 + 4 * v22++);
    if (v28 < *(v60 + 4 * v22))
    {
      break;
    }

LABEL_76:
    v21 = *(a1 + 268);
    if (v22 >= v21)
    {
      if (v21 > 1)
      {
        v61 = 1;
        do
        {
          if (*(*(a1 + 296) + v61))
          {
            v63 = *(*(a1 + 272) + 4 * v61);
            v64 = sub_1000302E0(*(a1 + 256), v63);
            v65 = v64;
            v66 = *(a1 + 360);
            if (v66)
            {
              v67 = *(v66 + v61);
            }

            else
            {
              v67 = 0;
            }

            if (v64)
            {
              v68 = *(v64 + 268);
              if (v68 >= 2)
              {
                v69 = *(v64 + 280);
                for (i = 1; i < v68; ++i)
                {
                  if (*(*(v65 + 296) + i))
                  {
                    v71 = *(v65 + 360);
                    if (v71)
                    {
                      LOBYTE(v71) = *(v71 + i);
                    }

                    if (!sub_100024B18(v19, *(v69 + 4 * i), 0, (v71 + v67)))
                    {
                      goto LABEL_97;
                    }

                    v68 = *(v65 + 268);
                  }
                }
              }
            }

            else if (!sub_100024B18(v19, v63, 0, v67))
            {
              goto LABEL_97;
            }
          }

          ++v61;
          v62 = *(a1 + 268);
        }

        while (v61 < v62);
        goto LABEL_98;
      }

      goto LABEL_80;
    }
  }

  v75 = v22;
  while (1)
  {
    v29 = *(*(a1 + 304) + 4 * v28);
    v30 = *(*(a1 + 272) + 4 * v29);
    v31 = sub_1000302E0(*(a1 + 256), v30);
    v32 = v31;
    v33 = *(a1 + 352);
    if (v33)
    {
      v34 = *(v33 + v28);
      if (v24)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v34 = 0;
      if (v24)
      {
LABEL_29:
        v35 = *(v24 + 268);
        if (v35 >= 2)
        {
          v36 = *(v24 + 280);
          v37 = 1;
          while (1)
          {
            if (*(*(v24 + 296) + v37))
            {
              v38 = *(v24 + 360);
              if (v38)
              {
                LOBYTE(v38) = *(v38 + v37);
              }

              if (!sub_100024B18(v19, *(v36 + 4 * v37), v30, (v38 + v34)))
              {
                goto LABEL_97;
              }

              v35 = *(v24 + 268);
            }

            if (++v37 >= v35)
            {
              goto LABEL_26;
            }
          }
        }

        goto LABEL_26;
      }
    }

    if (!v31)
    {
      if (!sub_100024B18(v19, v76, v30, v34))
      {
        goto LABEL_97;
      }

      goto LABEL_26;
    }

    if (!sub_10002537C(v31))
    {
      goto LABEL_97;
    }

    LODWORD(v39) = *(v32 + 268);
    if (v39 >= 2)
    {
      break;
    }

LABEL_44:
    if (!*(v20 + v29))
    {
      v73 = v20;
      if (v39 >= 2)
      {
        v41 = *(v32 + 288);
        v74 = *(v32 + 280);
        v42 = 1;
        while (1)
        {
          v43 = v42;
          v44 = *(v41 + 4 * v42++);
          if (v44 < *(v41 + 4 * v42))
          {
            break;
          }

LABEL_47:
          if (v42 >= v39)
          {
            goto LABEL_56;
          }
        }

        v45 = *(v74 + 4 * v43);
        while (1)
        {
          v46 = *(v32 + 352);
          v47 = v46 ? *(v46 + v44) : 0;
          if (!sub_100024B18(v19, v45, *(v74 + 4 * *(*(v32 + 304) + 4 * v44)), v47))
          {
            break;
          }

          ++v44;
          v41 = *(v32 + 288);
          if (v44 >= *(v41 + 4 * v42))
          {
            LODWORD(v39) = *(v32 + 268);
            goto LABEL_47;
          }
        }

        sub_100024228(v19);
        v19 = 0;
        v62 = *(a1 + 268);
        v20 = v73;
        goto LABEL_98;
      }

LABEL_56:
      v20 = v73;
      *(v73 + v29) = 1;
    }

    v48 = *(v32 + 288);
    v49 = *v48;
    if (v49 < v48[1])
    {
      v50 = *(v32 + 280);
      do
      {
        v51 = *(v32 + 352);
        if (v51)
        {
          LOBYTE(v51) = *(v51 + v49);
        }

        if (!sub_100024B18(v19, v76, *(v50 + 4 * *(*(v32 + 304) + 4 * v49)), (v51 + v34)))
        {
          goto LABEL_97;
        }
      }

      while (++v49 < *(*(v32 + 288) + 4));
    }

LABEL_26:
    ++v28;
    v22 = v75;
    if (v28 >= *(*(a1 + 288) + 4 * v75))
    {
      goto LABEL_76;
    }
  }

  v40 = 1;
  while (sub_100024BEC(v19, *(*(v32 + 280) + 4 * v40), &v77))
  {
    ++v40;
    v39 = *(v32 + 268);
    if (v40 >= v39)
    {
      goto LABEL_44;
    }
  }

LABEL_97:
  sub_100024228(v19);
  v19 = 0;
  v62 = *(a1 + 268);
LABEL_98:
  sub_1000CA03C(v20, v62);
  return v19;
}

uint64_t sub_10002537C(uint64_t a1)
{
  if (*(a1 + 280))
  {
    return 1;
  }

  result = sub_1000C0034(4 * *(a1 + 264));
  *(a1 + 280) = result;
  if (result)
  {
    if (*(a1 + 268) < 2)
    {
      return 1;
    }

    v3 = 1;
    while (1)
    {
      v4 = sub_1000314FC();
      __sprintf_chk(v8, 0, 0x64uLL, "%s__CLCopyName", v4);
      *(*(a1 + 280) + 4 * v3) = sub_10002E9A8(*(a1 + 256), v8, *(*(a1 + 272) + 4 * v3));
      v5 = *(a1 + 280);
      v6 = *(v5 + 4 * v3);
      if (v6 == -1)
      {
        break;
      }

      sub_10002EB98(*(a1 + 256), v6);
      if (++v3 >= *(a1 + 268))
      {
        return 1;
      }
    }

    if (v3 >= 2)
    {
      v7 = v3 + 1;
      do
      {
        sub_100030018(*(a1 + 256), *(*(a1 + 280) + 4 * (v7-- - 2)));
      }

      while (v7 > 2);
      v5 = *(a1 + 280);
    }

    sub_1000BFEC4(v5);
    result = 0;
    *(a1 + 280) = 0;
  }

  return result;
}

uint64_t sub_1000254B4(int a1, uint64_t a2)
{
  if (a1 < 1)
  {
    return 0;
  }

  v2 = a1;
  while (**a2 != 3 || !*(*a2 + 348))
  {
    a2 += 8;
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000254F8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 1)
  {
    v14[11] = v4;
    v14[12] = v5;
    v8 = result;
    v9 = 0;
    v10 = a2;
    do
    {
      v11 = 4 * v9;
      *(a3 + v11) = 0;
      *(a4 + v11) = 0;
      v12 = *(v8 + 8 * v9);
      if (*v12 == 3 && *(v12 + 268) >= 2)
      {
        for (i = 1; i < *(v12 + 268); ++i)
        {
          v14[0] = sub_1000302E0(*(v12 + 256), *(*(v12 + 272) + 4 * i));
          if (v14[0])
          {
            result = sub_1000254F8(v14, 1, a3 + v11, a4 + v11);
            if (*(a3 + 4 * v9))
            {
              break;
            }
          }

          else
          {
            result = sub_10002E970(*(v12 + 256), *(*(v12 + 272) + 4 * i));
            if (result)
            {
              *(a3 + 4 * v9) = 1;
              result = sub_10002E98C(*(v12 + 256), *(*(v12 + 272) + 4 * i));
              *(a4 + 4 * v9) = result;
              break;
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }

  return result;
}

_DWORD *sub_100025614(_DWORD *result, uint64_t a2)
{
  if (*result == 3)
  {
    v2 = result;
    if (result[67] >= 2)
    {
      v4 = 1;
      do
      {
        result = sub_100032144(*(v2 + 32), a2, *(*(v2 + 34) + 4 * v4++));
      }

      while (v4 < v2[67]);
    }
  }

  return result;
}

uint64_t sub_100025684(uint64_t a1, unsigned __int8 *a2)
{
  if (*a1 != 3)
  {
    return 0;
  }

  v30 = *(a1 + 256);
  v3 = sub_100023DC8(a2, v30, *(a1 + 264), *(a1 + 368), *(a1 + 336));
  if (v3 && *(a1 + 268) >= 1)
  {
    v4 = 0;
    while (1)
    {
      v6 = v4;
      v7 = *(a1 + 288);
      v31 = *(v7 + 4 * v6);
      v8 = *(*(a1 + 272) + 4 * v6);
      v29 = v6 + 1;
      v9 = *(v7 + 4 * (v6 + 1));
      if (!v8)
      {
        v11 = 0;
        v12 = (v9 - v31);
        if (v12 >= 1)
        {
          break;
        }

        goto LABEL_5;
      }

      v10 = sub_10002FFF0(v30, v8);
      v11 = v10 ? v10 : v8;
      v12 = (v9 - v31);
      if (v12 >= 1)
      {
        break;
      }

LABEL_5:
      v5 = *(a1 + 268);
      v4 = v29;
      if (v29 >= v5)
      {
        if (v5 >= 2)
        {
          v24 = 1;
          do
          {
            if (*(*(a1 + 296) + v24))
            {
              v26 = *(*(a1 + 272) + 4 * v24);
              v27 = sub_10002FFF0(v30, v26);
              if (v27)
              {
                v28 = v27;
              }

              else
              {
                v28 = v26;
              }

              if (*(a1 + 352))
              {
                v25 = *(*(a1 + 360) + v24);
              }

              else
              {
                v25 = 0;
              }

              sub_100024B18(v3, v28, 0, v25);
              LODWORD(v5) = *(a1 + 268);
            }

            ++v24;
          }

          while (v24 < v5);
        }

        return v3;
      }
    }

    v13 = 0;
    while (1)
    {
      v14 = *(*(a1 + 272) + 4 * *(*(a1 + 304) + 4 * (v13 + v31)));
      v15 = sub_10002FFF0(v30, v14);
      if (v15)
      {
        v14 = v15;
      }

      if (v11 != v8 && v11 == v14)
      {
        goto LABEL_14;
      }

      v16 = *(a1 + 352);
      if (v16)
      {
        v17 = *(v16 + v13 + v31);
        v18 = *(v3 + 268);
        if (v11 < 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v17 = 0;
        v18 = *(v3 + 268);
        if (v11 < 0)
        {
          goto LABEL_25;
        }
      }

      if (v18 > v11)
      {
        LODWORD(v19) = v11;
        if (*(*(v3 + 272) + 4 * v11) == v11)
        {
          goto LABEL_31;
        }
      }

LABEL_25:
      if (v18 < 1)
      {
        LODWORD(v19) = 0;
LABEL_31:
        if (v19 != v18)
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      }

      v19 = 0;
      while (*(*(v3 + 272) + 4 * v19) != v11)
      {
        if (v18 == ++v19)
        {
          goto LABEL_35;
        }
      }

      if (v19 != v18)
      {
LABEL_32:
        if (v14 < 0)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

LABEL_35:
      if (v18 == *(v3 + 264))
      {
        if (!sub_1000245C8(v3))
        {
          goto LABEL_14;
        }

        LODWORD(v18) = *(v3 + 268);
      }

      *(*(v3 + 272) + 4 * v18) = v11;
      v19 = *(v3 + 268);
      *(*(v3 + 288) + 4 * v19 + 4) = *(*(v3 + 288) + 4 * v19);
      ++*(v3 + 268);
      sub_10002EB98(*(v3 + 256), v11);
      if (sub_10002FFE8(v11))
      {
        *(v3 + 348) = 1;
      }

      v33 = 0;
      v32 = 0;
      v20 = sub_1000302E0(*(v3 + 256), v11);
      if (v20)
      {
        if (!*(v20 + 340))
        {
          goto LABEL_43;
        }

LABEL_42:
        *(v3 + 340) = 1;
        goto LABEL_43;
      }

      sub_1000306E8(*(v3 + 256), v11, &v33, &v32);
      if (v33)
      {
        goto LABEL_42;
      }

LABEL_43:
      LODWORD(v18) = *(v3 + 268);
      if (v14 < 0)
      {
        goto LABEL_46;
      }

LABEL_44:
      if (v18 > v14)
      {
        LODWORD(v21) = v14;
        if (*(*(v3 + 272) + 4 * v14) == v14)
        {
          goto LABEL_52;
        }
      }

LABEL_46:
      if (v18 < 1)
      {
        LODWORD(v21) = 0;
LABEL_52:
        if (v21 != v18)
        {
          goto LABEL_63;
        }

        goto LABEL_55;
      }

      v21 = 0;
      while (*(*(v3 + 272) + 4 * v21) != v14)
      {
        if (v18 == ++v21)
        {
          goto LABEL_55;
        }
      }

      if (v21 != v18)
      {
        goto LABEL_63;
      }

LABEL_55:
      if (v18 != *(v3 + 264))
      {
        goto LABEL_58;
      }

      if (sub_1000245C8(v3))
      {
        LODWORD(v18) = *(v3 + 268);
LABEL_58:
        *(*(v3 + 272) + 4 * v18) = v14;
        v21 = *(v3 + 268);
        *(*(v3 + 288) + 4 * v21 + 4) = *(*(v3 + 288) + 4 * v21);
        ++*(v3 + 268);
        sub_10002EB98(*(v3 + 256), v14);
        if (sub_10002FFE8(v14))
        {
          *(v3 + 348) = 1;
        }

        v33 = 0;
        v32 = 0;
        v22 = sub_1000302E0(*(v3 + 256), v14);
        if (v22)
        {
          if (*(v22 + 340))
          {
            goto LABEL_62;
          }
        }

        else
        {
          sub_1000306E8(*(v3 + 256), v14, &v33, &v32);
          if (v33)
          {
LABEL_62:
            *(v3 + 340) = 1;
          }
        }

LABEL_63:
        if (sub_1000248C0(v3, v19, v21, v17))
        {
          if (*(v3 + 340) == 1)
          {
            v33 = 0;
            v32 = 0;
            sub_1000306E8(*(v3 + 256), v14, &v33, &v32);
            if (v33)
            {
              sub_1000248C0(v3, v21, v21, 0);
            }
          }
        }
      }

LABEL_14:
      if (++v13 == v12)
      {
        goto LABEL_5;
      }
    }
  }

  return v3;
}

uint64_t sub_100025AF4(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (qword_1001065A8)
  {
    v3 = (qword_1001065A8 + 4220);
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10002E83C(v2, v3);
  v5 = *(a1 + 268);
  if (v4 < 0 || v5 <= v4 || *(*(a1 + 272) + 4 * v4) != v4)
  {
    if (v5 >= 1)
    {
      v6 = 0;
      while (*(*(a1 + 272) + 4 * v6) != v4)
      {
        if (v5 == ++v6)
        {
          return 0;
        }
      }

      v4 = v6;
      v10 = v6 == v5;
      if (v6 == v5)
      {
        v9 = -1;
      }

      else
      {
        v9 = v6;
      }

      if (!v10)
      {
        goto LABEL_23;
      }

      return 0;
    }

    v4 = 0;
  }

  v8 = v4 == v5;
  if (v4 == v5)
  {
    v9 = -1;
  }

  else
  {
    v9 = v4;
  }

  if (v8)
  {
    return 0;
  }

LABEL_23:
  v11 = (*(a1 + 288) + 4 * v4);
  v12 = v11[1];
  v13 = *v11;
  if (v12 <= v13)
  {
    return 0;
  }

  v14 = (*(a1 + 304) + 4 * v13);
  v15 = v12 - v13;
  while (1)
  {
    v16 = *v14++;
    if (v16 == v9)
    {
      break;
    }

    if (!--v15)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100025C0C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 268) < 2)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  if (a2)
  {
    v5 = 1;
    do
    {
      v6 = sub_10002E1CC(*(a1 + 256), *(*(a1 + 272) + 4 * v5));
      v4 = sub_10002DF04(v6, a2 + 2 * v4) + v4;
      ++v5;
    }

    while (v5 < *(a1 + 268));
  }

  else
  {
    v8 = 1;
    do
    {
      v9 = sub_10002E1CC(*(a1 + 256), *(*(a1 + 272) + 4 * v8));
      v4 = sub_10002DF04(v9, 0) + v4;
      ++v8;
    }

    while (v8 < *(a1 + 268));
  }

  return v4;
}

_DWORD *sub_100025CE4(_DWORD *result, uint64_t a2)
{
  if (*result == 3)
  {
    *(a2 + 16) = 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 212) = 0x4000;
  }

  return result;
}

uint64_t sub_100025D04(uint64_t *a1, int a2, unsigned int a3, unint64_t a4, int a5, uint64_t a6, int a7, unint64_t a8)
{
  v11 = a1;
  v169[0] = 0;
  v166 = 0xFFFFFFFFLL;
  v165 = 0;
  v12 = sub_100030404(a1[32]);
  v155 = v11;
  v157 = sub_1000B2074(v12);
  v168 = 0;
  if (a2 == 65534)
  {
    HIDWORD(v169[0]) = 1;
    v13 = *(v11 + 67);
    if (v13 < 1)
    {
      LODWORD(v15) = 0;
    }

    else
    {
      v14 = v11[34];
      LODWORD(v15) = *v14;
      if (*v14)
      {
        v15 = 0;
        while (v14[v15])
        {
          if (v13 == ++v15)
          {
            LODWORD(v15) = *(v11 + 67);
            break;
          }
        }
      }
    }

    LODWORD(v17) = 0;
    if (v15 == v13)
    {
      v26 = -1;
    }

    else
    {
      v26 = v15;
    }

    goto LABEL_64;
  }

  v16 = (a4 >> 10) & 0x1FFFFFF;
  v17 = (a4 >> 35) & 0x3FFFF;
  v18 = sub_10002E1CC(v11[32], (a4 >> 35) & 0x3FFFF);
  v158 = sub_10002D880(v18);
  if (*(v11 + 85))
  {
    sub_10002E108(v18, &v168, &v166);
  }

  sub_100030560(v11[32], (a4 >> 35) & 0x3FFFF, (a4 >> 10) & 0x1FFFFFF, v169 + 1, v19, v20, v21, v22);
  v23 = *(v11 + 67);
  if (v23 <= v17)
  {
    if (v23 < 1)
    {
      LODWORD(v25) = 0;
      goto LABEL_24;
    }

    v24 = v11[34];
  }

  else
  {
    v24 = v11[34];
    v25 = (a4 >> 35) & 0x3FFFF;
    if (*(v24 + 4 * v17) == v17)
    {
      goto LABEL_24;
    }
  }

  v25 = 0;
  while (*(v24 + 4 * v25) != v17)
  {
    if (v23 == ++v25)
    {
      LODWORD(v25) = *(v11 + 67);
      break;
    }
  }

LABEL_24:
  v27 = a4 & 0x3FF;
  if (v25 == v23)
  {
    v26 = -1;
  }

  else
  {
    v26 = v25;
  }

  if (qword_1001065A8)
  {
    v29 = (a4 & 0x3FF) == 0 && *(qword_1001065A8 + 1172) != 0;
    if (v27 < HIDWORD(v169[0]) - 1)
    {
LABEL_35:
      v30 = a5;
      v31 = v27 + 1;
      v153 = sub_10002DFC8(v18, (a4 >> 10) & 0x1FFFFFF, v27 + 1, v169 + 1);
      if (qword_1001065A8 && *(qword_1001065A8 + 1280) <= v158 && *(qword_1001065A8 + 5324))
      {
        if (v30 < 1)
        {
          return 0;
        }

        v32 = 0;
        v159 = 0;
        v146 = (a4 & 0x7FFFFFF800000000 | (((a4 >> 10) & 0x1FFFFFF) << 10)) + 1025;
        v148 = (a4 & 0x7FFFFFFFFFFFFC00) + v31;
        while (1)
        {
          v33 = sub_10001B934(v157, *(a6 + 2 * v32), 0);
          HIWORD(v165) = v33;
          if (v153 != v33)
          {
            goto LABEL_50;
          }

          if (v27 == HIDWORD(v169[0]) - 2)
          {
            LODWORD(v169[0]) = *(v155[37] + v26) != 0;
            if (!v29)
            {
              goto LABEL_44;
            }
          }

          else
          {
            LODWORD(v169[0]) = 0;
            if (!v29)
            {
LABEL_44:
              v34 = 0;
              v35 = v159;
              if (v159 >= a7)
              {
                goto LABEL_49;
              }

LABEL_48:
              v36 = a8 + 24 * v35;
              *v36 = *(a6 + 2 * v32);
              *(v36 + 2) = v34;
              *(v36 + 8) = v148;
              *(v36 + 16) = v169[0];
              goto LABEL_49;
            }
          }

          v34 = sub_10002DF90(v18, v16);
          v35 = v159;
          if (v159 < a7)
          {
            goto LABEL_48;
          }

LABEL_49:
          v159 = (v35 + 1);
LABEL_50:
          if (v29)
          {
            v37 = sub_10002D880(v18) - 1;
            if (v16 < v37)
            {
              v38 = v146;
              v39 = v16;
              do
              {
                if (!sub_10002E040(v18, v39, &v165, v169) || v165 > HIWORD(v165))
                {
                  break;
                }

                if (v165 == HIWORD(v165))
                {
                  if (v159 < a7)
                  {
                    LODWORD(v169[0]) &= *(v155[37] + v26);
                    v40 = sub_10002DF90(v18, v39 + 1);
                    v41 = a8 + 24 * v159;
                    *v41 = *(a6 + 2 * v32);
                    *(v41 + 2) = v40;
                    *(v41 + 8) = v38;
                    *(v41 + 16) = v169[0];
                  }

                  v159 = (v159 + 1);
                }

                ++v39;
                v38 += 1024;
              }

              while (v37 != v39);
            }
          }

          if (++v32 == v30)
          {
            return v159;
          }
        }
      }

      v42 = v27 == HIDWORD(v169[0]) - 2 && *(v155[37] + v26) != 0;
      LODWORD(v169[0]) = v42;
      v113 = sub_1000B216C(v12);
      v156 = 2 * v113;
      v121 = sub_1000C9F54(v156, v114, v115, v116, v117, v118, v119, v120);
      v122 = sub_10001C7F8(v157, v153, v121, v113);
      if (v29)
      {
        v123 = sub_10002DF90(v18, (a4 >> 10) & 0x1FFFFFF);
        if (v122 < 1)
        {
LABEL_154:
          v122 = 0;
LABEL_155:
          if (v29)
          {
            v124 = (v158 - 1);
            if (v16 < v124)
            {
              v162 = a4 & 0x7FFFFFF800000000;
              do
              {
                if (!sub_10002E040(v18, v16, &v165, v169))
                {
                  break;
                }

                v125 = v16 + 1;
                v126 = sub_10001C7F8(v157, v165, v121, v113);
                v127 = sub_10002DF90(v18, v16);
                if (v126 >= 1)
                {
                  v128 = v169[0];
                  v129 = v122;
                  v130 = v126;
                  v131 = a8 + 8 + 24 * v122;
                  v132 = v121;
                  do
                  {
                    if (v129 < a7)
                    {
                      *(v131 - 8) = v132->i16[0];
                      *(v131 - 6) = v127;
                      *v131 = (v162 + (v125 << 10)) | 1;
                      *(v131 + 8) = v128;
                    }

                    ++v129;
                    v131 += 24;
                    v132 = (v132 + 2);
                    --v130;
                  }

                  while (v130);
                  v122 = v129;
                }

                ++v16;
              }

              while (v125 != v124);
            }
          }

          sub_1000CA03C(v121, v156);
          return v122;
        }
      }

      else
      {
        v123 = 0;
        if (v122 < 1)
        {
          goto LABEL_154;
        }
      }

      v133 = 0;
      v134 = v169[0];
      v135 = a8 + 8;
      do
      {
        if (v133 < a7)
        {
          *(v135 - 8) = v121->i16[v133];
          *(v135 - 6) = v123;
          *v135 = (a4 & 0x7FFFFFFFFFFFFC00) + v31;
          *(v135 + 8) = v134;
        }

        ++v133;
        v135 += 24;
      }

      while (v122 != v133);
      goto LABEL_155;
    }
  }

  else
  {
    v29 = 0;
    if (v27 < HIDWORD(v169[0]) - 1)
    {
      goto LABEL_35;
    }
  }

  v11 = v155;
LABEL_64:
  v43 = *(v11[36] + 4 * v26 + 4);
  v147 = *(v11[36] + 4 * v26);
  v44 = (v43 - v147);
  if (v43 == v147)
  {
    return 0;
  }

  v167 = 0;
  if (qword_1001065A8)
  {
    v145 = *(qword_1001065A8 + 4168);
    if (v44 < 1)
    {
      return 0;
    }
  }

  else
  {
    v145 = 0;
    if (v44 < 1)
    {
      return 0;
    }
  }

  v137 = a5;
  v144 = v17;
  v45 = 0;
  v159 = 0;
  v154 = a4 & 0x7FE0000000000000;
  v46 = -v44;
  v140 = 1;
  v47 = a8;
  v142 = (v43 - v147);
  v138 = -v44;
  while (1)
  {
    v152 = v45;
    v50 = v45 + v147;
    v51 = *(v11[38] + 4 * (v45 + v147));
    v52 = v11[34];
    v53 = *(v52 + 4 * v51);
    v54 = sub_10002E1CC(v11[32], *(v52 + 4 * v51));
    v55 = sub_10002DF88(v54);
    v63 = *(v55 + 16);
    if (!v63)
    {
      goto LABEL_71;
    }

    if (v63 != -1)
    {
      v68 = v55;
      v159 = (v63 + v159);
      if (v159 <= a7)
      {
        goto LABEL_85;
      }

      goto LABEL_71;
    }

    v48 = v142;
    if (v152 + 1 == v142)
    {
      break;
    }

    v64 = ~v152;
    v65 = 4 * (v147 + 1 + v152);
    while (1)
    {
      v51 = *(v11[38] + v65);
      v66 = v11[34];
      v53 = *(v66 + 4 * v51);
      v54 = sub_10002E1CC(v11[32], *(v66 + 4 * v51));
      v67 = sub_10002DF88(v54);
      v63 = *(v67 + 16);
      if (v63 != -1)
      {
        break;
      }

      --v64;
      v65 += 4;
      if (v46 == v64)
      {
        v48 = v142;
        goto LABEL_107;
      }
    }

    if (!v63)
    {
      v49 = -v64;
      v140 = 0;
LABEL_105:
      v48 = v142;
      goto LABEL_72;
    }

    v68 = v67;
    v140 = 0;
    v152 = -v64;
    v50 = v147 - v64;
    v159 = (v63 + v159);
    if (v159 <= a7)
    {
LABEL_85:
      if (*(v11 + 84))
      {
        v69 = *(v11[44] + v50);
      }

      else
      {
        v69 = 0;
      }

      v70 = v11;
      v71 = *v68;
      v72 = v154 + (v53 << 35);
      LODWORD(v169[0]) = *(v70[37] + v51);
      v73 = v47 + 24 * v63;
      sub_10002E108(v54, &v167, &v166 + 1);
      if (!v167)
      {
        v49 = v152;
        if (v168)
        {
          v69 = v69 - v145 + sub_10005C3B0(v168, v166, a3);
        }

        if (v63 >= 1)
        {
          v75 = v71 + 2;
          do
          {
            *v47 = *(v75 - 2);
            *(v47 + 2) = v69;
            *(v47 + 8) = v72 | *(v75 + 2);
            v76 = v169[0];
            if (LODWORD(v169[0]))
            {
              v76 = *v75 != 0;
            }

            *(v47 + 16) = v76;
            v47 += 24;
            v75 += 8;
          }

          while (v47 < v73);
        }

        goto LABEL_101;
      }

      v74 = v155[54];
      if (v144 == v53)
      {
        sub_10005C1B8(v167, SHIDWORD(v166), a3, v63, *(v68 + 8), v155[54]);
        v49 = v152;
        if (v63 < 1)
        {
          goto LABEL_101;
        }
      }

      else
      {
        sub_10005C378(v167, SHIDWORD(v166), v63, *(v68 + 8), v155[54]);
        v49 = v152;
        if (v63 < 1)
        {
LABEL_101:
          if (!sub_10002D888(v54))
          {
            v11 = v155;
            v48 = v142;
            v46 = v138;
            goto LABEL_72;
          }

          v47 -= 24 * v63;
          v11 = v155;
          v46 = v138;
          if (v63 >= 1)
          {
            v78 = v63;
            v79 = 4;
            do
            {
              *(v47 + 2) += sub_10002DF90(v54, *(*v68 + v79) >> 10);
              v47 += 24;
              v79 += 8;
              --v78;
            }

            while (v78);
          }

          goto LABEL_105;
        }
      }

      do
      {
        *v47 = *v71;
        v77 = *v74++;
        *(v47 + 2) = v69 - v145 + v77;
        *(v47 + 8) = v72 | *(v71 + 4);
        *(v47 + 16) = v169[0];
        v47 += 24;
        v71 += 8;
      }

      while (v47 < v73);
      goto LABEL_101;
    }

LABEL_71:
    v48 = v142;
    v49 = v152;
LABEL_72:
    v45 = v49 + 1;
    if (v45 == v48)
    {
      if (!v140)
      {
        break;
      }

      return v159;
    }
  }

LABEL_107:
  v139 = 32 * v48;
  v80 = 4 * v147;
  v141 = sub_1000C9F54(32 * v48, v56, v57, v58, v59, v60, v61, v62);
  v81 = v141 + 3;
  v82 = v155;
  do
  {
    v83 = *(v155[38] + v80);
    v84 = *(v155[34] + 4 * v83);
    v85 = sub_10002E1CC(v155[32], v84);
    v86 = sub_10002D880(v85);
    v87 = *(v155[37] + v83);
    *(v81 - 6) = v84;
    *(v81 - 2) = v85;
    *(v81 - 2) = v86;
    *(v81 - 1) = v87;
    *v81 = sub_10002DF88(v85);
    v81 += 4;
    v80 += 4;
    --v48;
  }

  while (v48);
  if (v137 >= 1)
  {
    v88 = 0;
    v89 = v137;
    v151 = a8 + 8;
    v90 = v159;
    while (1)
    {
      v149 = v88;
      v91 = &v141[4 * v88];
      if (*(*(v91 + 3) + 16) == -1)
      {
        break;
      }

LABEL_111:
      v88 = v149 + 1;
      if (v149 + 1 == v142)
      {
        goto LABEL_173;
      }
    }

    v92 = 0;
    v93 = *(v91 + 1);
    while (1)
    {
      v94 = sub_10001B934(v157, *(a6 + 2 * v92), 0);
      HIWORD(v165) = v94;
      v95 = sub_10002DD34(v93, v94, v169 + 1);
      if (v95 != 0xFFFF)
      {
        break;
      }

LABEL_115:
      if (++v92 == v89)
      {
        goto LABEL_111;
      }
    }

    v96 = v95;
    if (*(v82 + 84))
    {
      v97 = *(v82[44] + v149 + v147);
      v98 = *v91;
      if (!*(v82 + 85))
      {
        goto LABEL_128;
      }
    }

    else
    {
      v97 = 0;
      v98 = *v91;
      if (!*(v82 + 85))
      {
        goto LABEL_128;
      }
    }

    v164 = 0;
    sub_10002E108(v93, &v167, &v166 + 1);
    if (v167)
    {
      if (v144 == v98)
      {
        sub_10005C1B8(v167, SHIDWORD(v166), a3, 1, &v165 + 1, &v164);
      }

      else
      {
        sub_10005C378(v167, SHIDWORD(v166), 1, &v165 + 1, &v164);
      }

      LOWORD(v97) = v97 - v145 + v164;
    }

    else if (v168)
    {
      v97 = v97 - v145 + sub_10005C3B0(v168, v166, a3);
    }

LABEL_128:
    v99 = 0;
    v100 = v90;
    v160 = v90;
    v101 = v151 + 24 * v90;
    v102 = v154 + (v98 << 35) + (v96 << 10);
    while (2)
    {
      v103 = v99;
      if (v100 + v99 < a7)
      {
        if (HIDWORD(v169[0]) == 1)
        {
          v104 = v91[5] != 0;
          LODWORD(v169[0]) = v104;
          v105 = qword_1001065A8;
          if (!qword_1001065A8)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v104 = 0;
          LODWORD(v169[0]) = 0;
          v105 = qword_1001065A8;
          if (!qword_1001065A8)
          {
            goto LABEL_139;
          }
        }

        v106 = *(v105 + 1172);
        v107 = HIDWORD(v169[0]) == 1 || v106 == 0;
        v108 = v97;
        if (v107)
        {
LABEL_139:
          v108 = v97 + sub_10002DF90(v93, v96 + v103);
          v104 = v169[0];
        }

        *(v101 - 8) = *(a6 + 2 * v92);
        *(v101 - 6) = v108;
        *v101 = v102;
        *(v101 + 8) = v104;
      }

      if (v167 || qword_1001065A8 && (*(qword_1001065A8 + 1172) ? (v109 = SHIDWORD(v169[0]) <= 1) : (v109 = 1), !v109) || (v110 = v96 + v103 + 1, v110 == v91[4]) || (v111 = HIWORD(v165), v112 = sub_10002DFC8(v93, v110, 0, v169 + 1), v101 += 24, v99 = v103 + 1, v102 += 1024, v111 != v112))
      {
        v90 = (v160 + v103 + 1);
        v82 = v155;
        v89 = v137;
        goto LABEL_115;
      }

      continue;
    }
  }

  v90 = v159;
LABEL_173:
  v159 = v90;
  sub_1000CA03C(v141, v139);
  return v159;
}

uint64_t sub_1000269BC(uint64_t result, int a2, __int16 a3)
{
  *(result + 212) = a3;
  *(result + 208) = a2;
  return result;
}

uint64_t sub_1000269C8(uint64_t a1, int a2, unsigned int a3, int a4, unsigned int a5, int a6, int *a7, _WORD *a8, int a9)
{
  v67 = 0;
  v69 = 0;
  v68 = 0;
  v16 = sub_100030404(*(a1 + 256));
  result = sub_1000306E8(*(a1 + 256), a3, &v68, &v67);
  if (!v68)
  {
    return result;
  }

  v18 = sub_1000BA7F4(v16, a5, 0);
  if (a2 != a3)
  {
    if (!qword_1001065A8 || !*(qword_1001065A8 + 4548))
    {
      v69 = -3;
      result = sub_10005BF04(v68, v67, 1, &v69, v18);
      *a8 += result;
      return result;
    }

    a4 = 65534;
  }

  v19 = *(a1 + 268);
  if ((a3 & 0x80000000) != 0 || v19 <= a3 || *(*(a1 + 272) + 4 * a3) != a3)
  {
    if (v19 < 1)
    {
      a3 = 0;
    }

    else
    {
      v20 = 0;
      while (*(*(a1 + 272) + 4 * v20) != a3)
      {
        if (v19 == ++v20)
        {
          a3 = *(a1 + 268);
          goto LABEL_17;
        }
      }

      a3 = v20;
    }
  }

LABEL_17:
  if (a3 == v19)
  {
    v21 = -1;
  }

  else
  {
    v21 = a3;
  }

  v22 = v21;
  v65 = (*(a1 + 328) + (v21 << 6));
  v23 = a6 - 1;
  v64 = (*v65 + 2 * (a6 - 1));
  v24 = *(*v65 + 2 * v23 + 2) - *(*v65 + 2 * v23);
  result = sub_1000BA7F4(v16, a5, 0);
  v25 = result;
  v63 = v24;
  v58 = a7;
  if (!qword_1001065A8)
  {
    v28 = 0;
    v27 = v24;
    goto LABEL_28;
  }

  if (*(qword_1001065A8 + 1076))
  {
    v26 = v24 < 1;
  }

  else
  {
    v26 = 1;
  }

  v27 = v24;
  if (v26)
  {
    goto LABEL_26;
  }

  if (*(a1 + 376))
  {
    v71 = 0;
    v70 = 0;
    v38 = *(a1 + 328) + (v22 << 6);
    v39 = v23;
    v40 = *(v38 + 32);
    v41 = *(v40 + 4 * v23);
    result = *(*(v38 + 24) + 8 * v23);
    if (!result)
    {
      v42 = *(v40 + 4 * v23);
      result = sub_1000C0034(8 * *(qword_1001065A8 + 4016));
      v41 = v42;
      v27 = v63;
      *(*(v38 + 24) + 8 * v39) = result;
    }

    v72 = 0;
    if (v41 < 1)
    {
      v43 = 0;
      v46 = result;
    }

    else
    {
      v43 = 0;
      v44 = v41 - 1;
      do
      {
        v45 = (v43 + v44) >> 1;
        if (*(result + 8 * v45) >= v25)
        {
          v44 = v45 - 1;
        }

        else
        {
          v43 = v45 + 1;
        }
      }

      while (v43 <= v44);
      v46 = (result + 8 * v43);
      if (v41 > v43 && *v46 == v25)
      {
        v28 = *(*(v38 + 40) + ((*(v46 + 1) >> 7) & 0x1FFFFF8)) + 2 * (*(v46 + 1) & 0x3FFLL);
        goto LABEL_28;
      }
    }

    v47 = qword_1001065A8;
    if (qword_1001065A8)
    {
      v47 = *(qword_1001065A8 + 4016);
    }

    if (v47 != v41)
    {
      __src = v46;
      v55 = v41;
      v57 = v16;
      v56 = a5;
      v48 = (*v38 + 2 * v39);
      v49 = v48[1] - *v48;
      if ((*(v38 + 56) & 0x3FF) + v49 <= 1024)
      {
        v50 = *(v38 + 56);
      }

      else
      {
        v50 = (*(v38 + 56) & 0xFFFFFC00) + 1024;
      }

      result = sub_1000C06E8((v38 + 40), (v38 + 48), (v38 + 52), 10, 2, v50 + v49);
      if (result)
      {
        v60 = a8;
        v62 = sub_100030404(*(a1 + 256));
        sub_1000306E8(*(a1 + 256), *(*(a1 + 272) + 4 * v22), &v71, &v70);
        v28 = *(*(v38 + 40) + 8 * (v50 >> 10)) + 2 * (v50 & 0x3FF);
        if (v49 >= 1)
        {
          for (i = 0; i != v49; ++i)
          {
            v53 = *(*(*(v38 + 8) + 8 * ((i + *v48) >> 10)) + 12 * ((i + *v48) & 0x3FF));
            if (v53 == 65534)
            {
              v52 = -3;
            }

            else
            {
              v52 = sub_1000BA7F4(v62, v53, 0);
            }

            v72 = v52;
            *(v28 + 2 * i) = sub_10005BF04(v71, v70, 1, &v72, v25);
          }
        }

        result = j__memmove(__src + 2, __src, 8 * (v55 - v43));
        *__src = v25;
        __src[1] = v50;
        *(v38 + 56) = v50 + v49;
        ++*(*(v38 + 32) + 4 * v39);
        a8 = v60;
      }

      else
      {
        v28 = 0;
      }

      a5 = v56;
      v16 = v57;
      v27 = v63;
LABEL_28:
      if (v27 < 1)
      {
        goto LABEL_46;
      }

      goto LABEL_29;
    }

LABEL_26:
    v28 = 0;
    goto LABEL_28;
  }

  v28 = 0;
LABEL_29:
  v59 = a8;
  v29 = 0;
  v61 = -1;
  v30 = 0;
  v31 = 0x40000000;
  do
  {
    v32 = (*(v65[1] + 8 * ((v29 + *v64) >> 10)) + 12 * ((v29 + *v64) & 0x3FF));
    v33 = *v32;
    if (v33 == a4)
    {
      v30 = v32[4];
    }

    if (!a9 || v33 == 65534 || (result = sub_1000BAD08(v16, v33, a5), v27 = v63, result))
    {
      if (v28)
      {
        result = *(v28 + 2 * v29);
        v34 = v32[4] + result;
        if (v34 < v31)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v35 = *v32;
        if (v35 == 65534)
        {
          v36 = -3;
        }

        else
        {
          v36 = sub_1000BA7F4(v16, v35, 0);
        }

        v69 = v36;
        result = sub_10005BF04(v68, v67, 1, &v69, v25);
        v27 = v63;
        v34 = v32[4] + result;
        if (v34 < v31)
        {
LABEL_30:
          v61 = *(v32 + 1);
          v31 = v34;
        }
      }
    }

    ++v29;
  }

  while (v27 != v29);
  a8 = v59;
  if (v31 == 0x40000000)
  {
LABEL_46:
    *a8 = 0x4000;
  }

  else
  {
    LOWORD(v37) = qword_1001065A8;
    if (qword_1001065A8)
    {
      v37 = *(qword_1001065A8 + 4168);
    }

    *v59 += v31 - (v30 + v37);
    *v58 = v61;
  }

  return result;
}

uint64_t sub_100026F84(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 268);
  if (a2 < 0 || v3 <= a2 || *(*(a1 + 272) + 4 * a2) != a2)
  {
    if (v3 >= 1)
    {
      v4 = 0;
      while (*(*(a1 + 272) + 4 * v4) != a2)
      {
        if (v3 == ++v4)
        {
          return 0;
        }
      }

      if (v4 == v3)
      {
        return 0;
      }

      goto LABEL_16;
    }

    a2 = 0;
  }

  if (a2 == v3)
  {
    LODWORD(v4) = -1;
  }

  else
  {
    LODWORD(v4) = a2;
  }

  if (a2 == v3)
  {
    return 0;
  }

LABEL_16:
  if (a3 < 0 || v3 <= a3 || *(*(a1 + 272) + 4 * a3) != a3)
  {
    if (v3 >= 1)
    {
      v5 = 0;
      while (*(*(a1 + 272) + 4 * v5) != a3)
      {
        if (v3 == ++v5)
        {
          return 0;
        }
      }

      a3 = v5;
      v8 = v5 == v3;
      if (v5 == v3)
      {
        v7 = -1;
      }

      else
      {
        v7 = v5;
      }

      if (v8)
      {
        return 0;
      }

      goto LABEL_34;
    }

    a3 = 0;
  }

  v6 = a3 == v3;
  if (a3 == v3)
  {
    v7 = -1;
  }

  else
  {
    v7 = a3;
  }

  if (v6)
  {
    return 0;
  }

LABEL_34:
  if (!a3)
  {
    return *(*(a1 + 296) + v4);
  }

  v9 = (*(a1 + 288) + 4 * v4);
  v10 = v9[1];
  v11 = *v9;
  if (v10 <= v11)
  {
    return 0;
  }

  v12 = (*(a1 + 304) + 4 * v11);
  v13 = v10 - v11;
  while (1)
  {
    v14 = *v12++;
    if (v14 == v7)
    {
      break;
    }

    result = 0;
    if (!--v13)
    {
      return result;
    }
  }

  return 1;
}

uint64_t sub_1000270C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0034(448);
  v5 = v4;
  if (v4)
  {
    *(v4 + 4) = 0u;
    *(v4 + 376) = 1;
    *(v4 + 256) = a2;
    *(v4 + 20) = 0u;
    *(v4 + 36) = 0u;
    *(v4 + 52) = 0u;
    if (sub_1000BBE54(a1, (v4 + 4), 64, 1) && sub_10002401C(v5, (v5 + 4)))
    {
      if (sub_1000BBD54(a1, (v5 + 76)))
      {
        v6 = (v5 + 264);
        if (sub_1000BBD54(a1, (v5 + 264)) && sub_1000BBD54(a1, (v5 + 268)))
        {
          v7 = (v5 + 368);
          if (sub_1000BBD54(a1, (v5 + 368)) && sub_1000BBD54(a1, (v5 + 372)) && sub_1000BBD54(a1, (v5 + 336)) && sub_1000BBD54(a1, (v5 + 340)) && sub_1000BBD54(a1, (v5 + 348)))
          {
            v10 = 0;
            if (sub_1000BBD54(a1, &v10))
            {
              v9 = 0;
              if (sub_1000BBF0C(a1, 4, (v5 + 272), &v9))
              {
                if (!*(v5 + 272) || v9 == *v6)
                {
                  v9 = 0;
                  if (sub_1000BBF0C(a1, 4, (v5 + 288), &v9) && (!*(v5 + 288) || v9 == *v6 + 1))
                  {
                    v9 = 0;
                    if (sub_1000BBF0C(a1, 1, (v5 + 296), &v9) && (!*(v5 + 296) || v9 == *v6))
                    {
                      v9 = 0;
                      if (sub_1000BBF0C(a1, 4, (v5 + 304), &v9) && (!*(v5 + 304) || v9 == *v7))
                      {
                        if (!*(v5 + 336) || (v9 = 0, sub_1000BBF0C(a1, 1, (v5 + 352), &v9)) && (!*(v5 + 352) || v9 == *v7) && (v9 = 0, sub_1000BBF0C(a1, 1, (v5 + 360), &v9)) && (!*(v5 + 360) || v9 == *v6))
                        {
                          if (v10)
                          {
                            v9 = 0;
                            sub_1000BBF0C(a1, 4, (v5 + 280), &v9);
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
      }

      *(v5 + 248) = 1;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_100027378(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[38];
  result = sub_10002E1E4(a1[32], a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v18 = 0;
    v17 = 0;
    v11 = a1[36];
    v12 = *v11;
    v13 = v11[1];
    if (v12 >= v13)
    {
      return 0;
    }

    else
    {
      v14 = (v9 + 4 * v12);
      v15 = v13 - v12;
      while (1)
      {
        v16 = *v14++;
        sub_1000306E8(a1[32], *(a1[34] + 4 * v16), &v18, &v17);
        if (v18)
        {
          break;
        }

        if (!--v15)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_100027438(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[38];
  if (!sub_10002E1E4(a1[32], a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  v27 = 0;
  v16 = a1[36];
  v17 = *v16;
  v18 = v16[1];
  if (v17 >= v18)
  {
    return 0;
  }

  LODWORD(v19) = 0;
  if (a2)
  {
    do
    {
      v23 = *(a1[34] + 4 * *(v10 + 4 * v17));
      sub_10003040C(a1[32], v23, &v27 + 1, v11, v12, v13, v14, v15);
      v24 = HIDWORD(v27);
      if (SHIDWORD(v27) >= 1)
      {
        v25 = 0;
        do
        {
          *(a2 + 2 * v19 + 2 * v25) = sub_100030600(a1[32], v23, v25, 0, &v27, v13, v14, v15);
          ++v25;
          v24 = HIDWORD(v27);
        }

        while (v25 < SHIDWORD(v27));
      }

      v19 = (v24 + v19);
      ++v17;
    }

    while (v17 != v18);
  }

  else
  {
    v20 = (v10 + 4 * v17);
    v21 = v18 - v17;
    do
    {
      v22 = *v20++;
      sub_10003040C(a1[32], *(a1[34] + 4 * v22), &v27 + 1, v11, v12, v13, v14, v15);
      v19 = (HIDWORD(v27) + v19);
      --v21;
    }

    while (v21);
  }

  return v19;
}

BOOL sub_10002755C(uint64_t a1, int a2)
{
  v2 = *(a1 + 268);
  if (a2 < 0 || v2 <= a2 || *(*(a1 + 272) + 4 * a2) != a2)
  {
    if (v2 < 1)
    {
      a2 = 0;
    }

    else
    {
      v3 = 0;
      while (*(*(a1 + 272) + 4 * v3) != a2)
      {
        if (v2 == ++v3)
        {
          a2 = *(a1 + 268);
          goto LABEL_11;
        }
      }

      a2 = v3;
    }
  }

LABEL_11:
  if (a2 == v2)
  {
    v4 = -1;
  }

  else
  {
    v4 = a2;
  }

  return *(*(a1 + 288) + 4 * v4 + 4) - *(*(a1 + 288) + 4 * v4) > 0;
}

uint64_t sub_1000275DC(uint64_t result, uint64_t a2)
{
  if (result >= 1)
  {
    v3 = 0;
    v4 = result;
    do
    {
      v5 = *(a2 + 8 * v3);
      if (*v5 == 3 && *(v5 + 268) >= 2)
      {
        v6 = 1;
        do
        {
          result = sub_10002EF88(*(v5 + 256), *(*(v5 + 272) + 4 * v6++));
        }

        while (v6 < *(v5 + 268));
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_100027674(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4)
{
  v8 = sub_100030404(*(a1 + 256));
  if (sub_100022AD4(a1) != 3)
  {
    return 1;
  }

  v9 = qword_1001065A8;
  if (!qword_1001065A8 || !*(qword_1001065A8 + 4452))
  {
    if (*(a1 + 268) < 2)
    {
      v17 = 1;
      if (!qword_1001065A8)
      {
        return 1;
      }
    }

    else
    {
      v14 = 1;
      do
      {
        v15 = sub_10002E1CC(*(a1 + 256), *(*(a1 + 272) + 4 * v14));
        sub_10002D898(v15);
        ++v14;
        v16 = *(a1 + 268);
      }

      while (v14 < v16);
      v9 = qword_1001065A8;
      v17 = v16 < 2;
      if (!qword_1001065A8)
      {
        return 1;
      }
    }

    if (*(v9 + 4544) && *(a1 + 340))
    {
      v18 = *(a1 + 312);
      if (*(v9 + 4136) - 1 <= v18)
      {
        return 0;
      }

      *(a1 + 312) = v18 + 1;
      v19 = v18 == -1 || v17;
      if ((v19 & 1) == 0)
      {
        v20 = 1;
        do
        {
          v22 = (*(a1 + 328) + (v20 << 6));
          if (*v22)
          {
            v23 = (*v22 + 2 * *(a1 + 312));
            LODWORD(v21) = *v23;
            v24 = *(v23 - 1);
            if (v21 - v24 >= 2)
            {
              sub_100027914(*(a1 + 328) + (v20 << 6), v24, (v21 - 1));
              v21 = *(v23 - 1);
              v25 = v21 + 1;
              v26 = *v23;
              if (v21 + 1 < v26)
              {
                v27 = (*(v22[1] + ((v21 >> 7) & 0x1F8)) + 12 * (v21 & 0x3FF));
                do
                {
                  v28 = v22[1];
                  v29 = (*(v28 + 8 * (v25 >> 10)) + 12 * (v25 & 0x3FF));
                  if (*v29 != *v27)
                  {
                    LODWORD(v21) = v21 + 1;
                    v27 = (*(v28 + 8 * (v21 >> 10)) + 12 * (v21 & 0x3FF));
                    v30 = *v29;
                    *(v27 + 2) = *(v29 + 2);
                    *v27 = v30;
                    v26 = *v23;
                  }

                  ++v25;
                }

                while (v25 < v26);
              }

              LOWORD(v21) = v21 + 1;
              *v23 = v21;
            }

            v23[1] = v21;
          }

          ++v20;
          result = 1;
        }

        while (v20 < *(a1 + 268));
        return result;
      }
    }

    return 1;
  }

  if (*(a1 + 340) && *(a1 + 440) < a3)
  {
    result = sub_1000C0034(2 * a3);
    if (!result)
    {
      return result;
    }

    v11 = result;
    sub_1000BFEC4(*(a1 + 432));
    *(a1 + 432) = v11;
    *(a1 + 440) = a3;
  }

  if (*(a1 + 268) < 2)
  {
LABEL_12:
    ++*(a1 + 312);
    return 1;
  }

  else
  {
    v12 = 1;
    while (1)
    {
      v13 = sub_10002E1CC(*(a1 + 256), *(*(a1 + 272) + 4 * v12));
      result = sub_10002D8A4(v13, a3, a2, a4, v8);
      if (!result)
      {
        break;
      }

      if (++v12 >= *(a1 + 268))
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100027914(uint64_t result, int a2, uint64_t a3)
{
  while (1)
  {
    v3 = *(result + 8);
    v4 = (*(v3 + 8 * ((a3 + a2) >> 11)) + 12 * (((a3 + a2) >> 1) & 0x3FF));
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = v4[4];
    v8 = a3;
    v9 = a2;
LABEL_3:
    v12 = v9 + 1;
    v13 = v8 - v9;
    do
    {
      v14 = v9;
      v15 = v12;
      v16 = v13;
      v17 = (*(v3 + 8 * (v9 >> 10)) + 12 * (v9 & 0x3FF));
      v18 = *v17 - v5;
      if (!v18)
      {
        v18 = v17[4] - v7;
        if (!v18)
        {
          v18 = *(v17 + 1) - v6;
        }
      }

      ++v9;
      ++v12;
      --v13;
    }

    while (v18 < 0);
    ++v8;
    do
    {
      v19 = v16;
      --v8;
      v20 = (*(v3 + 8 * (v8 >> 10)) + 12 * (v8 & 0x3FF));
      v21 = *v20;
      v22 = v21 - v5;
      if (v21 == v5)
      {
        v23 = v20[4];
        v22 = v23 - v7;
        if (v23 == v7)
        {
          v22 = *(v20 + 1) - v6;
        }
      }

      v16 = v19 - 1;
    }

    while (v22 > 0);
    if (v14 == v8)
    {
      v8 = v9 - 1;
      if ((v9 - 2) > a2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      do
      {
        if (*v17 != v21 || v17[4] != v20[4] || *(v17 + 1) != *(v20 + 1))
        {
          v10 = *v17;
          v26 = *(v17 + 2);
          v11 = *(v20 + 2);
          *v17 = *v20;
          *(v17 + 2) = v11;
          *v20 = v10;
          *(v20 + 2) = v26;
          v3 = *(result + 8);
          v9 = v15 - 1;
          goto LABEL_3;
        }

        v17 = (*(v3 + 8 * (v15 >> 10)) + 12 * (v15 & 0x3FF));
        ++v15;
        --v19;
      }

      while (v19);
      if ((v8 - 1) > a2)
      {
LABEL_19:
        v24 = result;
        v25 = a3;
        sub_100027914(result);
        result = v24;
        a3 = v25;
      }
    }

    a2 = v8 + 1;
    if ((v8 + 1) >= a3)
    {
      return result;
    }
  }
}

uint64_t sub_100027B08(void *a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = a2;
    v7 = a2;
    v8 = a1;
    while (1)
    {
      v9 = *v8;
      if (**v8 != 3)
      {
        break;
      }

      v10 = *(*a1 + 256);
      if (*(v9 + 32) != v10)
      {
        break;
      }

      v4 += v9[93];
      v5 = v5 + v9[67] - 1;
      if (v9[84])
      {
        v3 = 1;
      }

      ++v8;
      if (!--v7)
      {
        v11 = sub_100023DC8(0, v10, v5, v4, v3);
        if (!v11)
        {
          return v11;
        }

        v12 = 0;
        while (1)
        {
          v13 = a1[v12];
          if (*(v13 + 268) >= 1)
          {
            break;
          }

LABEL_28:
          if (++v12 == v6)
          {
            return v11;
          }
        }

        v14 = 0;
        while (sub_100024BEC(v11, *(*(v13 + 272) + 4 * v14), &v25))
        {
          ++v14;
          v15 = *(v13 + 268);
          if (v14 >= v15)
          {
            if (v15 < 1)
            {
              goto LABEL_28;
            }

            v16 = 0;
            while (1)
            {
              v17 = *(*(v13 + 272) + 4 * v16);
              v18 = *(v13 + 288);
              v19 = *(v18 + 4 * v16);
              v20 = v16 + 1;
              v21 = *(v18 + 4 * (v16 + 1));
              if (v19 < v21)
              {
                break;
              }

LABEL_22:
              if (*(*(v13 + 296) + v16))
              {
                v23 = *(v13 + 336) ? *(*(v13 + 360) + v16) : 0;
                if (!sub_100024B18(v11, v17, 0, v23))
                {
                  goto LABEL_30;
                }
              }

              ++v16;
              if (v20 >= *(v13 + 268))
              {
                goto LABEL_28;
              }
            }

            while (1)
            {
              v22 = *(v13 + 336) ? *(*(v13 + 352) + v19) : 0;
              if (!sub_100024B18(v11, v17, *(*(v13 + 272) + 4 * *(*(v13 + 304) + 4 * v19)), v22))
              {
                goto LABEL_30;
              }

              if (v21 == ++v19)
              {
                goto LABEL_22;
              }
            }
          }
        }

LABEL_30:
        sub_100024228(v11);
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_100027CE8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v49[0] = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(v34, 0, sizeof(v34));
  v11 = sub_100022FD0(a1, 0);
  if (a2 >= 1)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v29 = 0;
    v17 = -2;
    v18 = a2;
    while (1)
    {
      if (*a1 == 3)
      {
        *&v36 = 0x7FFFFFFFFFFFFFFFLL;
        WORD2(v48) = 0x4000;
      }

      v20 = *(a3 + 2 * v13);
      DWORD2(v45) = 0;
      sub_10002B3A0(a1, &v35, v17, v12, v20);
      DWORD1(v40) = a7;
      if (sub_100027F6C(&v35, a1, v34))
      {
        break;
      }

LABEL_6:
      v14 += WORD1(v34[0]);
      v17 = *(a3 + 2 * v13);
      v12 = *(&v34[0] + 1);
      if (++v13 == v18)
      {
        return (sub_10002850C(a1, v15, v16, v29) + v14);
      }
    }

    v25 = (v12 & 0x3FF) + 1;
    while (1)
    {
      v26 = *(&v34[0] + 1);
      v15 = (*(&v34[0] + 1) >> 35) & 0x3FFFFLL;
      if (v15 != *(a4 + 4 * v13))
      {
        goto LABEL_12;
      }

      v16 = (*(&v34[0] + 1) >> 10) & 0x1FFFFFFLL;
      if (v16 == *(a5 + 4 * v13))
      {
        v27 = WORD4(v34[0]) & 0x3FF;
        v29 = v27;
        if (*(a6 + v13))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!qword_1001065A8 || !*(qword_1001065A8 + 1172))
        {
          sub_100030560(*(a1 + 256), (*(&v34[0] + 1) >> 35) & 0x3FFFFLL, (*(&v34[0] + 1) >> 10) & 0x1FFFFFFLL, v49, v21, v22, v23, v24);
          if (v49[0] >= 2 && !sub_100030724(*(a1 + 256), v15))
          {
            goto LABEL_12;
          }
        }

        *(&v34[0] + 1) = ((v26 & 0x7FFFFFF800000000) + (*(a5 + 4 * v13) << 10)) & 0xFFFFFFFFFFFFFC00 | v26 & 0x3FF;
        v27 = WORD4(v34[0]) & 0x3FF;
        v29 = v27;
        if (*(a6 + v13))
        {
LABEL_20:
          if (!v27)
          {
            goto LABEL_5;
          }

          goto LABEL_12;
        }
      }

      if (v27 == v25)
      {
        v29 = v25;
        goto LABEL_6;
      }

      if (!v27)
      {
        v33 = 0;
        v32 = 0;
        sub_1000306E8(*(a1 + 256), *(a4 + 4 * v13), &v33, &v32);
        if (v33)
        {
LABEL_5:
          v29 = 0;
          goto LABEL_6;
        }
      }

LABEL_12:
      if (!sub_100027F6C(&v35, a1, v34))
      {
        goto LABEL_6;
      }
    }
  }

  v29 = 0;
  LODWORD(v16) = 0;
  LODWORD(v15) = 0;
  v14 = 0;
  return (sub_10002850C(a1, v15, v16, v29) + v14);
}

uint64_t sub_100027F6C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v6 = sub_100030404(*(a2 + 256));
  v7 = *(a1 + 104);
  v8 = *(a1 + 108);
  while (1)
  {
    if (v8 != v7)
    {
      goto LABEL_72;
    }

    v9 = *(a1 + 68);
    v10 = v9 + 1;
    *(a1 + 68) = v9 + 1;
    if (!v7)
    {
      return 0;
    }

    v36 = 0;
    v35 = 0;
    v34 = 0;
    if (!*(a1 + 116))
    {
      if (*(a1 + 120) == -1)
      {
        if (qword_1001065A8 && *(qword_1001065A8 + 1172))
        {
          v10 = *(a1 + 68) + sub_10002E11C(*(a1 + 48), v9);
          *(a1 + 68) = v10;
        }

        *(a1 + 108) = 0;
        *(a1 + 88) = *(a1 + 90);
        if (v10 == *(a1 + 72))
        {
LABEL_28:
          while (1)
          {
            v14 = *(a1 + 64);
            v15 = *(a1 + 60) + 1;
            *(a1 + 60) = v15;
            if (v15 >= v14)
            {
              break;
            }

            v16 = *(*(a2 + 288) + 4 * *(a1 + 32)) + v15;
            v17 = *(*(a2 + 304) + 4 * v16);
            *(a1 + 56) = v17;
            v18 = *(*(a2 + 272) + 4 * v17);
            *(a1 + 44) = v18;
            if (*(a2 + 340))
            {
              sub_1000306E8(*(a2 + 256), v18, (a1 + 192), (a1 + 200));
              v18 = *(a1 + 44);
            }

            v19 = sub_10002E1CC(*(a2 + 256), v18);
            *(a1 + 48) = v19;
            v20 = *(a2 + 336);
            if (v20)
            {
              LOWORD(v20) = *(*(a2 + 352) + v16);
            }

            *(a1 + 88) = v20;
            *(a1 + 90) = v20;
            v21 = sub_10002D880(v19);
            *(a1 + 72) = v21;
            if (v21 >= 1)
            {
              *(a1 + 160) = 0;
              if (*(a1 + 168))
              {
                v22 = sub_100030724(*(a2 + 256), *(a1 + 44));
                *(a1 + 160) = v22;
                if (v22)
                {
                  v7 = 1;
                  *(a1 + 104) = 1;
                  *(a1 + 80) = *(*(a2 + 296) + *(a1 + 56));
                  *(a1 + 96) = (*(a1 + 44) << 35) + (*(a1 + 8) << 53);
                  if (qword_1001065A8 && *(qword_1001065A8 + 4544))
                  {
                    sub_10002B9E8(a2, a1);
                    v7 = *(a1 + 104);
                  }

                  goto LABEL_65;
                }
              }

              if (*(a1 + 120) == -1)
              {
                v23 = 0;
LABEL_40:
                *(a1 + 68) = v23;
                v15 = *(a1 + 60);
                v14 = *(a1 + 64);
                break;
              }

              v23 = sub_10002DD34(*(a1 + 48), *(a1 + 76), &v36);
              if (v23 != 0xFFFF)
              {
                goto LABEL_40;
              }
            }
          }

          if (v15 == v14)
          {
            return 0;
          }

          v10 = *(a1 + 68);
        }
      }

      else
      {
        if (qword_1001065A8 && *(qword_1001065A8 + 1172))
        {
          v36 = sub_10002DECC(*(a1 + 48), v9);
          if (v36 > 1)
          {
            v10 = *(a1 + 72);
            *(a1 + 68) = v10;
            goto LABEL_16;
          }

          v10 = *(a1 + 68);
          v13 = *(a1 + 72);
          if (v10 >= v13)
          {
LABEL_27:
            *(a1 + 68) = v13;
            v10 = v13;
            *(a1 + 108) = 0;
            *(a1 + 88) = *(a1 + 90);
            if (v13 == *(a1 + 72))
            {
              goto LABEL_28;
            }

            goto LABEL_43;
          }
        }

        else
        {
LABEL_16:
          v13 = *(a1 + 72);
          if (v10 >= v13)
          {
            goto LABEL_27;
          }
        }

        if (*(a1 + 76) != sub_10002DFC8(*(a1 + 48), v10, 0, &v36))
        {
          v13 = *(a1 + 72);
          goto LABEL_27;
        }

        *(a1 + 108) = 0;
        *(a1 + 88) = *(a1 + 90);
        v10 = *(a1 + 68);
        if (v10 == *(a1 + 72))
        {
          goto LABEL_28;
        }
      }

LABEL_43:
      v24 = sub_10002DFC8(*(a1 + 48), v10, 0, &v36);
      *(a1 + 76) = v24;
      if (qword_1001065A8 && *(qword_1001065A8 + 1172))
      {
        *(a1 + 112) = v36 == 1;
        if (!*(a2 + 340))
        {
LABEL_49:
          v7 = sub_10001CAD8(*a1, v24);
          *(a1 + 104) = v7;
          if (v36 == 1)
          {
            goto LABEL_50;
          }

LABEL_63:
          v25 = 0;
          goto LABEL_64;
        }
      }

      else
      {
        *(a1 + 112) = 1;
        if (!*(a2 + 340))
        {
          goto LABEL_49;
        }
      }

      if (*(a1 + 160))
      {
        goto LABEL_49;
      }

      v33 = 0x7FFF;
      v26 = *(a1 + 192);
      if (v26)
      {
        v27 = *(a1 + 200);
        if (*(a1 + 24) == *(a1 + 44))
        {
          sub_10005C1B8(v26, v27, *(a1 + 172), 1, (a1 + 76), &v33);
        }

        else
        {
          sub_10005C378(v26, v27, 1, (a1 + 76), &v33);
        }

LABEL_57:
        v29 = v33;
      }

      else
      {
        v28 = *(a1 + 176);
        if (!v28)
        {
          goto LABEL_57;
        }

        v29 = sub_10005C3B0(v28, *(a1 + 184), *(a1 + 172));
      }

      if (v29 != 0x7FFF)
      {
        LOWORD(v30) = qword_1001065A8;
        if (qword_1001065A8)
        {
          v30 = *(qword_1001065A8 + 4168);
        }

        *(a1 + 88) = *(a1 + 88) + v29 - v30;
      }

      v7 = sub_10001CAD8(*a1, *(a1 + 76));
      *(a1 + 104) = v7;
      if (v36 != 1)
      {
        goto LABEL_63;
      }

LABEL_50:
      v25 = *(*(a2 + 296) + *(a1 + 56)) != 0;
LABEL_64:
      *(a1 + 80) = v25;
      *(a1 + 96) = (*(a1 + 44) << 35) + (*(a1 + 8) << 53) + (*(a1 + 68) << 10);
      goto LABEL_65;
    }

    if (!qword_1001065A8)
    {
      return 0;
    }

    if (!*(qword_1001065A8 + 1172))
    {
      return 0;
    }

    if (*(a1 + 36))
    {
      return 0;
    }

    v11 = *(a1 + 40);
    if (v11 >= *(a1 + 72) - 1 || !sub_10002E040(*(a1 + 48), v11, &v35, &v34))
    {
      return 0;
    }

    ++*(a1 + 40);
    v12 = v35;
    *(a1 + 76) = v35;
    *(a1 + 80) = v34 & *(*(a2 + 296) + *(a1 + 56));
    v7 = sub_10001CAD8(*a1, v12);
    *(a1 + 104) = v7;
    *(a1 + 96) = ((*(a1 + 44) << 35) + (*(a1 + 8) << 53) + (*(a1 + 40) << 10)) | 1;
    *(a1 + 160) = 0;
    *(a1 + 108) = &_mh_execute_header;
LABEL_65:
    v8 = *(a1 + 108);
LABEL_72:
    while (v8 < v7)
    {
      *a3 = sub_10001CD6C(*a1, *(a1 + 76), v8);
      ++*(a1 + 108);
      if (!*(a1 + 84) || sub_1000BAD08(v6, *(a1 + 28), *a3) || *(a1 + 160))
      {
        v31 = *(a1 + 120);
        if (v31 == 0xFFFF || v31 == *a3)
        {
          *(a3 + 4) = *(a1 + 80);
          *(a3 + 1) = *(a1 + 96);
          *(a3 + 3) = *(a1 + 160);
          a3[1] = *(a1 + 88);
          if (*(a1 + 160))
          {
            *(a1 + 104) = 0x100000001;
            *(a1 + 68) = &_mh_execute_header;
          }

          else if (*(a1 + 112))
          {
            a3[1] += sub_10002DF90(*(a1 + 48), *(a1 + 68));
          }

          return 1;
        }
      }

      v7 = *(a1 + 104);
      v8 = *(a1 + 108);
    }
  }
}

uint64_t sub_10002850C(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  if (*(a1 + 336))
  {
    v8 = *(a1 + 268);
    if ((a2 & 0x80000000) != 0 || v8 <= a2 || (LODWORD(v9) = a2, *(*(a1 + 272) + 4 * a2) != a2))
    {
      if (v8 < 1)
      {
        LODWORD(v9) = 0;
      }

      else
      {
        v9 = 0;
        while (*(*(a1 + 272) + 4 * v9) != a2)
        {
          if (v8 == ++v9)
          {
            LODWORD(v9) = *(a1 + 268);
            break;
          }
        }
      }
    }

    if (v9 == v8)
    {
      v11 = -1;
    }

    else
    {
      v11 = v9;
    }

    v10 = *(*(a1 + 360) + v11);
  }

  else
  {
    v10 = 0;
  }

  v17 = 0;
  v18 = 0;
  sub_1000306E8(*(a1 + 256), a2, &v18, &v17 + 1);
  if (v18)
  {
    v12 = sub_10002E1CC(*(a1 + 256), a2);
    v13 = sub_10002DFC8(v12, a3, a4, &v17);
    v14 = sub_10005C3B0(v18, SHIDWORD(v17), v13) + v10;
    LOWORD(v15) = qword_1001065A8;
    if (qword_1001065A8)
    {
      v15 = *(qword_1001065A8 + 4168);
    }

    return (v14 - v15);
  }

  return v10;
}

uint64_t sub_100028638(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 268);
  if (a2 < 0 || v3 <= a2 || *(*(a1 + 272) + 4 * a2) != a2)
  {
    if (v3 < 1)
    {
      a2 = 0;
    }

    else
    {
      v4 = 0;
      while (*(*(a1 + 272) + 4 * v4) != a2)
      {
        if (v3 == ++v4)
        {
          a2 = *(a1 + 268);
          goto LABEL_11;
        }
      }

      a2 = v4;
    }
  }

LABEL_11:
  if (a2 == v3)
  {
    v5 = -1;
  }

  else
  {
    v5 = a2;
  }

  v6 = (*(a1 + 288) + 4 * v5);
  v7 = *v6;
  v8 = (v6[1] - v7);
  if (a3 && v8 >= 1)
  {
    v9 = (*(a1 + 304) + 4 * v7);
    v10 = v8;
    do
    {
      v11 = *v9++;
      *a3++ = *(*(a1 + 272) + 4 * v11);
      --v10;
    }

    while (v10);
  }

  return v8;
}

uint64_t sub_1000286E8(uint64_t a1, int a2, uint64_t a3, double a4, double a5, int32x4_t a6)
{
  v6 = *(a1 + 268);
  if ((a2 & 0x80000000) == 0 && v6 > a2)
  {
    LODWORD(v7) = a2;
    if (*(*(a1 + 272) + 4 * a2) == a2)
    {
      goto LABEL_9;
    }
  }

  if (v6 >= 1)
  {
    v7 = 0;
    while (*(*(a1 + 272) + 4 * v7) != a2)
    {
      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a1 + 268);
        break;
      }
    }

LABEL_9:
    if (v7 == v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7;
    }

    if (a2)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (a2)
  {
LABEL_13:
    if (v6 >= 1)
    {
      if (a3)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *(a1 + 288);
          v12 = *(v11 + 4 * v9);
          v13 = v9 + 1;
          v14 = (*(v11 + 4 * (v9 + 1)) - v12);
          if (v14 >= 1)
          {
            v15 = (*(a1 + 304) + 4 * v12);
            while (1)
            {
              v16 = *v15++;
              if (v16 == v8)
              {
                break;
              }

              if (!--v14)
              {
                goto LABEL_17;
              }
            }

            *(a3 + 4 * v10) = *(*(a1 + 272) + 4 * v9);
            v10 = (v10 + 1);
            LODWORD(v6) = *(a1 + 268);
          }

LABEL_17:
          ++v9;
        }

        while (v13 < v6);
      }

      else
      {
        v19 = 0;
        v10 = 0;
        v20 = *(a1 + 288);
        v21 = *v20;
        do
        {
          v22 = v20[++v19];
          v23 = (v22 - v21);
          if (v22 - v21 > 0)
          {
            v24 = (*(a1 + 304) + 4 * v21);
            while (1)
            {
              v25 = *v24++;
              if (v25 == v8)
              {
                break;
              }

              if (!--v23)
              {
                goto LABEL_36;
              }
            }

            v10 = (v10 + 1);
          }

LABEL_36:
          v21 = v20[v19];
        }

        while (v19 != v6);
      }

      return v10;
    }

    return 0;
  }

LABEL_27:
  if (v6 < 2)
  {
    return 0;
  }

  if (a3)
  {
    v10 = 0;
    v17 = 1;
    do
    {
      if (*(*(a1 + 296) + v17))
      {
        *(a3 + 4 * v10) = *(*(a1 + 272) + 4 * v17);
        v10 = (v10 + 1);
        LODWORD(v6) = *(a1 + 268);
      }

      ++v17;
    }

    while (v17 < v6);
    return v10;
  }

  v26 = *(a1 + 296);
  if (v6 < 5)
  {
    LODWORD(v10) = 0;
    v27 = 1;
    goto LABEL_55;
  }

  v28 = v6 - 1;
  if (v6 >= 0x21)
  {
    v30 = 0uLL;
    v29 = v28 & 0xFFFFFFFFFFFFFFE0;
    v31.i64[0] = 0x100000001;
    v31.i64[1] = 0x100000001;
    v32 = (v26 + 17);
    v33 = 0uLL;
    v34 = v28 & 0xFFFFFFFFFFFFFFE0;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    do
    {
      v41 = vtstq_s8(v32[-1], v32[-1]);
      v42 = vmovl_u8(*v41.i8);
      v43 = vmovl_high_u8(v41);
      v44 = vtstq_s8(*v32, *v32);
      v45 = vmovl_u8(*v44.i8);
      v46 = vmovl_high_u8(v44);
      v36 = vaddq_s32(v36, vandq_s8(vmovl_high_u16(v43), v31));
      v35 = vaddq_s32(v35, vandq_s8(vmovl_u16(*v43.i8), v31));
      v33 = vaddq_s32(v33, vandq_s8(vmovl_high_u16(v42), v31));
      v30 = vaddq_s32(v30, vandq_s8(vmovl_u16(*v42.i8), v31));
      v40 = vaddq_s32(v40, vandq_s8(vmovl_high_u16(v46), v31));
      v39 = vaddq_s32(v39, vandq_s8(vmovl_u16(*v46.i8), v31));
      v38 = vaddq_s32(v38, vandq_s8(vmovl_high_u16(v45), v31));
      v37 = vaddq_s32(v37, vandq_s8(vmovl_u16(*v45.i8), v31));
      v32 += 2;
      v34 -= 32;
    }

    while (v34);
    a6 = vaddq_s32(v39, v35);
    v10 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v37, v30), a6), vaddq_s32(vaddq_s32(v38, v33), vaddq_s32(v40, v36))));
    if (v28 == v29)
    {
      return v10;
    }

    if ((v28 & 0x1C) == 0)
    {
      v27 = v29 | 1;
      goto LABEL_55;
    }
  }

  else
  {
    LODWORD(v10) = 0;
    v29 = 0;
  }

  v27 = v28 & 0xFFFFFFFFFFFFFFFCLL | 1;
  v47 = v10;
  v48 = (v29 + v26 + 1);
  v49 = v29 - (v28 & 0xFFFFFFFFFFFFFFFCLL);
  v50.i64[0] = 0x100000001;
  v50.i64[1] = 0x100000001;
  do
  {
    v51 = *v48++;
    a6.i32[0] = v51;
    v52 = vmovl_u8(*a6.i8).u64[0];
    a6 = vandq_s8(vmovl_u16(vtst_s16(v52, v52)), v50);
    v47 = vaddq_s32(v47, a6);
    v49 += 4;
  }

  while (v49);
  v10 = vaddvq_s32(v47);
  if (v28 != (v28 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_55:
    v53 = (v26 + v27);
    v54 = v6 - v27;
    do
    {
      if (*v53++)
      {
        v10 = (v10 + 1);
      }

      else
      {
        v10 = v10;
      }

      --v54;
    }

    while (v54);
  }

  return v10;
}

uint64_t sub_100028A08(uint64_t a1, unint64_t a2)
{
  if (*a1 == 3)
  {
    return sub_10002E970(*(a1 + 256), (a2 >> 35) & 0x3FFFF);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100028A28(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a2;
  do
  {
    if (**a1 == 3)
    {
      v2 = *(*a1 + 256);
    }

    a1 += 8;
    --v3;
  }

  while (v3);
  return v2;
}

uint64_t sub_100028A6C(int a1, uint64_t a2, int a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  if (a3 < 0)
  {
    while (1)
    {
      v9 = *(a2 + 8 * v3);
      if (*v9 == 3)
      {
        v10 = *(v9 + 268);
        if (v10 < 1)
        {
          LODWORD(v8) = 0;
        }

        else
        {
          v8 = 0;
          v11 = *(v9 + 272);
          while (*(v11 + 4 * v8) != a3)
          {
            if (v10 == ++v8)
            {
              goto LABEL_17;
            }
          }
        }

        if (v8 != v10)
        {
          break;
        }
      }

LABEL_17:
      if (++v3 == a1)
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v5 = *(a2 + 8 * v3);
      if (*v5 == 3)
      {
        v6 = *(v5 + 268);
        if (v6 <= a3 || (LODWORD(v4) = a3, *(*(v5 + 272) + 4 * a3) != a3))
        {
          if (v6 < 1)
          {
            LODWORD(v4) = 0;
          }

          else
          {
            v4 = 0;
            v7 = *(v5 + 272);
            while (*(v7 + 4 * v4) != a3)
            {
              if (v6 == ++v4)
              {
                goto LABEL_6;
              }
            }
          }
        }

        if (v4 != v6)
        {
          break;
        }
      }

LABEL_6:
      if (++v3 == a1)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_100028B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, int32x4_t a11, unsigned __int8 *a12)
{
  v13 = a6;
  v236 = a4;
  v15 = a1;
  v241 = 0;
  v16 = *(a1 + 268);
  v18 = a8 >= 0 && v16 > a8;
  if (v18)
  {
    LODWORD(v19) = a8;
    LODWORD(v20) = a8;
    if (*(*(a1 + 272) + 4 * a8) == a8)
    {
      goto LABEL_31;
    }
  }

  if (v16 < 1)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = 0;
    while (*(*(a1 + 272) + 4 * v19) != a8)
    {
      if (v16 == ++v19)
      {
        return v15;
      }
    }
  }

  if (v19 != v16)
  {
    if (v18)
    {
      v21 = *(*(a1 + 272) + 4 * a8);
      v22 = v21 == a8;
      if (v21 == a8)
      {
        LODWORD(v20) = a8;
      }

      else
      {
        LODWORD(v20) = 0;
      }

      if (v22 || v16 < 1)
      {
        goto LABEL_31;
      }
    }

    else if (v16 < 1)
    {
      if (v16)
      {
        LODWORD(v20) = 0;
      }

      else
      {
        LODWORD(v20) = -1;
      }

      v239 = a1;
      if (a8)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    }

    v20 = 0;
    do
    {
      if (*(*(a1 + 272) + 4 * v20) == a8)
      {
        goto LABEL_31;
      }

      ++v20;
    }

    while (v16 != v20);
    LODWORD(v20) = *(a1 + 268);
LABEL_31:
    if (v20 == v16)
    {
      LODWORD(v20) = -1;
    }

    v239 = a1;
    if (a8)
    {
LABEL_34:
      if (v16 >= 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = *(a1 + 288);
        v27 = *v26;
        do
        {
          v28 = v26[++v24];
          v29 = (v28 - v27);
          if (v28 - v27 > 0)
          {
            v30 = (*(v15 + 304) + 4 * v27);
            while (1)
            {
              v31 = *v30++;
              if (v31 == v20)
              {
                break;
              }

              if (!--v29)
              {
                goto LABEL_37;
              }
            }

            ++v25;
LABEL_37:
            v15 = v239;
          }

          v27 = v26[v24];
        }

        while (v24 != v16);
LABEL_67:
        if (!v18 || (LODWORD(i) = a8, *(*(v15 + 272) + 4 * a8) != a8))
        {
          if (v16 < 1)
          {
            LODWORD(i) = 0;
          }

          else
          {
            for (i = 0; i != v16; ++i)
            {
              if (*(*(v15 + 272) + 4 * i) == a8)
              {
                goto LABEL_75;
              }
            }

            LODWORD(i) = *(a1 + 268);
          }
        }

LABEL_75:
        if (i == v16)
        {
          v63 = -1;
        }

        else
        {
          v63 = i;
        }

        v64 = (*(v15 + 288) + 4 * v63);
        v65 = *v64;
        v66 = v64[1];
        v237 = (v66 - *v64);
        if (!v25 || v66 == v65 && !*(*(v15 + 296) + v19))
        {
          return v15;
        }

        v227 = v19;
        v228 = 4 * v25;
        v238 = a8;
        v235 = sub_1000C9F54(v228, a2, a3, a4, a5, a6, a7, a8);
        sub_1000286E8(v15, v238, v235, v67, v68, v69);
        if (v66 == v65)
        {
          v77 = 0;
          v78 = v239;
          v79 = *(v239 + 268);
          v80 = v238;
          if ((v238 & 0x80000000) != 0)
          {
LABEL_87:
            if (v79 < 1)
            {
              LODWORD(j) = 0;
            }

            else
            {
              for (j = 0; j != v79; ++j)
              {
                if (*(*(v78 + 272) + 4 * j) == v80)
                {
                  goto LABEL_93;
                }
              }

              LODWORD(j) = v79;
            }

LABEL_93:
            if (j == v79)
            {
              LODWORD(j) = -1;
            }

            if (v77)
            {
              v82 = (*(v78 + 288) + 4 * j);
              v83 = *v82;
              v84 = (v82[1] - v83);
              if (v84 >= 1)
              {
                v85 = (*(v78 + 304) + 4 * v83);
                v86 = v77;
                do
                {
                  v87 = *v85++;
                  *v86++ = *(*(v78 + 272) + 4 * v87);
                  --v84;
                }

                while (v84);
                LODWORD(v79) = *(v78 + 268);
              }
            }

            v88 = v25 * v236 + v237 * v13 + *(v78 + 372) + *(a2 + 372);
            v90 = v80 >= 0 && v79 > v80;
            if (v90)
            {
              LODWORD(v91) = v80;
              LODWORD(v92) = v80;
              if (*(*(v78 + 272) + 4 * v80) == v80)
              {
                goto LABEL_135;
              }
            }

            if (v79 < 1)
            {
              if (v79)
              {
                LODWORD(v91) = 0;
              }

              else
              {
                LODWORD(v91) = -1;
              }

              if (v90)
              {
                goto LABEL_116;
              }
            }

            else
            {
              v91 = 0;
              do
              {
                if (*(*(v78 + 272) + 4 * v91) == v80)
                {
                  goto LABEL_113;
                }

                ++v91;
              }

              while (v79 != v91);
              LODWORD(v91) = v79;
LABEL_113:
              if (v91 == v79)
              {
                LODWORD(v91) = -1;
              }

              if (v90)
              {
LABEL_116:
                v93 = *(*(v78 + 272) + 4 * v80);
                if (v93 == v80)
                {
                  LODWORD(v92) = v80;
                }

                else
                {
                  LODWORD(v92) = 0;
                }

                if (v93 != v80 && v79 >= 1)
                {
LABEL_130:
                  v92 = 0;
                  do
                  {
                    if (*(*(v78 + 272) + 4 * v92) == v80)
                    {
                      goto LABEL_135;
                    }

                    ++v92;
                  }

                  while (v79 != v92);
                  LODWORD(v92) = v79;
                }

LABEL_135:
                v95 = *(a2 + 268);
                if (v92 == v79)
                {
                  v96 = -1;
                }

                else
                {
                  v96 = v92;
                }

                v97 = (*(v78 + 288) + 4 * v91);
                v98 = *v97;
                v99 = (v97[1] - v98);
                if (v99 < 1)
                {
LABEL_142:
                  v102 = v78;
                  v103 = sub_100023DC8(a12, a7, v95 + v79, v88, *(v78 + 336));
                  if (!v103)
                  {
                    goto LABEL_170;
                  }
                }

                else
                {
                  v100 = (*(v78 + 304) + 4 * v98);
                  while (1)
                  {
                    v101 = *v100++;
                    if (v101 == v96)
                    {
                      break;
                    }

                    if (!--v99)
                    {
                      goto LABEL_142;
                    }
                  }

                  v102 = v78;
                  v103 = sub_100023DC8(a12, a7, v95 + v79, (v13 - 1) * v236 - v13 + v88, *(v78 + 336));
                  if (!v103)
                  {
LABEL_170:
                    if (v77)
                    {
                      sub_1000CA03C(v77, 4 * v237);
                    }

                    sub_1000CA03C(v235, v228);
                    return v239;
                  }
                }

                v15 = v103;
                v232 = v77;
                v231 = v13;
                bzero(*(a7 + 144), 4 * *(a7 + 152));
                v229 = v25;
                if (*(v102 + 268) >= 1)
                {
                  v104 = v102;
                  LODWORD(v105) = 0;
                  v106 = 0;
                  v107 = 0;
                  v108 = v238;
                  while (1)
                  {
                    v109 = *(*(v104 + 272) + 4 * v106);
                    if (v109 == v108)
                    {
                      goto LABEL_146;
                    }

                    v110 = (*(v104 + 288) + 4 * v106);
                    v111 = *v110;
                    v112 = (v110[1] - v111);
                    v113 = *(v104 + 304);
                    sub_100024470(v15, v109, &v241 + 1);
                    if (v112 < 1)
                    {
                      v104 = v239;
                      v108 = v238;
                    }

                    else
                    {
                      v114 = HIDWORD(v241);
                      v104 = v239;
                      v108 = v238;
                      do
                      {
                        v115 = *(*(v104 + 272) + 4 * *(v113 + 4 * v111));
                        if (v115 != v108)
                        {
                          sub_100024470(v15, v115, &v241);
                          if (*(v239 + 336))
                          {
                            v107 = *(*(v239 + 352) + v111);
                          }

                          LODWORD(v105) = v241;
                          sub_1000248C0(v15, v114, v241, v107);
                          v104 = v239;
                          v108 = v238;
                        }

                        ++v111;
                        --v112;
                      }

                      while (v112);
                    }

                    if (!*(*(v104 + 296) + v106))
                    {
                      goto LABEL_146;
                    }

                    if (*(v104 + 336))
                    {
                      v107 = *(*(v104 + 360) + v106);
                    }

                    v116 = SHIDWORD(v241);
                    if (sub_100022AD4(v15) == 3)
                    {
                      v104 = v239;
                      v108 = v238;
                      if (!*(v15 + 376) || !v116)
                      {
                        goto LABEL_146;
                      }

                      v117 = *(v15 + 296);
                      if (*(v117 + v116))
                      {
                        if (!*(v15 + 336))
                        {
                          goto LABEL_146;
                        }

                        v118 = *(v15 + 360);
                        if (*(v118 + v116) != v107)
                        {
                          goto LABEL_146;
                        }

                        goto LABEL_168;
                      }

                      *(v117 + v116) = 1;
                      if (*(v15 + 336))
                      {
                        v118 = *(v15 + 360);
LABEL_168:
                        *(v118 + v116) = v107;
                      }
                    }

                    else
                    {
                      v104 = v239;
                      v108 = v238;
                    }

LABEL_146:
                    if (++v106 >= *(v104 + 268))
                    {
                      goto LABEL_174;
                    }
                  }
                }

                LODWORD(v105) = 0;
LABEL_174:
                if (*(a2 + 268) > 1)
                {
                  v119 = 1;
                  while (1)
                  {
                    v120 = *(*(a2 + 272) + 4 * v119);
                    v121 = *(a2 + 288);
                    v122 = *(v121 + 4 * v119++);
                    v123 = (*(v121 + 4 * v119) - v122);
                    v124 = *(a2 + 304);
                    sub_100024470(v15, v120, &v241 + 1);
                    if (v123 >= 1)
                    {
                      break;
                    }

LABEL_176:
                    if (v119 >= *(a2 + 268))
                    {
                      goto LABEL_198;
                    }
                  }

                  v125 = (v124 + 4 * v122);
                  v126 = HIDWORD(v241);
                  while (1)
                  {
                    v127 = *v125++;
                    v128 = *(*(a2 + 272) + 4 * v127);
                    v129 = *(v15 + 256);
                    if (*(v129 + 152) <= v128)
                    {
                      v131 = *(v129 + 32) + 1;
                      v105 = sub_1000C0034(4 * v131);
                      j__memmove(v105, *(v129 + 144), 4 * *(v129 + 152));
                      sub_1000BFEC4(*(v129 + 144));
                      *(v129 + 144) = v105;
                      *(v129 + 152) = v131;
                      LODWORD(v105) = *(v105 + 4 * v128);
                      if (v128)
                      {
                        v132 = v105 == 0;
                      }

                      else
                      {
                        v132 = 0;
                      }

                      if (!v132)
                      {
                        goto LABEL_180;
                      }
                    }

                    else
                    {
                      LODWORD(v105) = *(*(v129 + 144) + 4 * v128);
                      if (v128)
                      {
                        v130 = v105 == 0;
                      }

                      else
                      {
                        v130 = 0;
                      }

                      if (!v130)
                      {
                        goto LABEL_180;
                      }
                    }

                    v133 = *(v15 + 268);
                    if (v133 != *(v15 + 264))
                    {
                      goto LABEL_196;
                    }

                    if (sub_1000245C8(v15))
                    {
                      v133 = *(v15 + 268);
LABEL_196:
                      *(*(v15 + 272) + 4 * v133) = v128;
                      v105 = *(v15 + 268);
                      *(*(v129 + 144) + 4 * v128) = v105;
                      *(*(v15 + 288) + 4 * v105 + 4) = *(*(v15 + 288) + 4 * v105);
                      ++*(v15 + 268);
                      sub_10002EB98(v129, v128);
                      v243 = 0;
                      v242 = 0;
                      sub_1000306E8(*(v15 + 256), v128, &v243, &v242);
                      if (v243)
                      {
                        *(v15 + 340) = 1;
                      }

                      goto LABEL_180;
                    }

                    LODWORD(v105) = 0;
LABEL_180:
                    sub_1000248C0(v15, v126, v105, 0);
                    if (!--v123)
                    {
                      goto LABEL_176;
                    }
                  }
                }

LABEL_198:
                v134 = v238;
                if (v229 >= 1)
                {
                  v135 = 0;
                  v136 = 0;
                  v137 = v229;
                  v138 = v239;
                  LODWORD(v139) = v231;
                  v140 = v232;
                  while (1)
                  {
                    v141 = *(v235 + v135);
                    if (v141 != v134)
                    {
                      break;
                    }

LABEL_201:
                    if (++v135 == v137)
                    {
                      goto LABEL_253;
                    }
                  }

                  if (!*(v138 + 336))
                  {
                    goto LABEL_236;
                  }

                  v142 = *(v138 + 268);
                  if (v141 < 0 || v142 <= v141 || (LODWORD(m) = *(v235 + v135), *(*(v138 + 272) + 4 * v141) != v141))
                  {
                    if (v142 < 1)
                    {
                      if (v142)
                      {
                        LODWORD(m) = 0;
                      }

                      else
                      {
                        LODWORD(m) = -1;
                      }

                      if (v134 < 0)
                      {
                        goto LABEL_222;
                      }

LABEL_220:
                      if (v142 > v134)
                      {
                        LODWORD(k) = v134;
                        if (*(*(v138 + 272) + 4 * v238) == v134)
                        {
LABEL_228:
                          if (k == v142)
                          {
                            v145 = -1;
                          }

                          else
                          {
                            v145 = k;
                          }

                          v146 = (*(v138 + 288) + 4 * m);
                          v147 = *v146;
                          v148 = (v146[1] - v147);
                          if (v148 >= 1)
                          {
                            v149 = (*(v138 + 304) + 4 * v147);
                            while (1)
                            {
                              v150 = *v149++;
                              if (v150 == v145)
                              {
                                break;
                              }

                              LODWORD(v147) = v147 + 1;
                              if (!--v148)
                              {
                                goto LABEL_235;
                              }
                            }

                            v136 = *(*(v138 + 352) + v147);
                            sub_100024470(v15, v141, &v241 + 1);
                            if (v236 < 1)
                            {
LABEL_251:
                              v138 = v239;
                              v134 = v238;
                              goto LABEL_201;
                            }

LABEL_237:
                            v151 = HIDWORD(v241);
                            v152 = v236;
                            v153 = a3;
                            while (1)
                            {
                              v155 = *v153++;
                              v154 = v155;
                              v156 = *(v15 + 256);
                              if (*(v156 + 152) <= v155)
                              {
                                v157 = *(v156 + 32) + 1;
                                v105 = sub_1000C0034(4 * v157);
                                j__memmove(v105, *(v156 + 144), 4 * *(v156 + 152));
                                sub_1000BFEC4(*(v156 + 144));
                                *(v156 + 144) = v105;
                                *(v156 + 152) = v157;
                                LODWORD(v105) = *(v105 + 4 * v154);
                                if (!v154)
                                {
                                  goto LABEL_239;
                                }
                              }

                              else
                              {
                                LODWORD(v105) = *(*(v156 + 144) + 4 * v154);
                                if (!v154)
                                {
                                  goto LABEL_239;
                                }
                              }

                              if (!v105)
                              {
                                v158 = *(v15 + 268);
                                if (v158 != *(v15 + 264))
                                {
                                  goto LABEL_248;
                                }

                                if (sub_1000245C8(v15))
                                {
                                  v158 = *(v15 + 268);
LABEL_248:
                                  *(*(v15 + 272) + 4 * v158) = v154;
                                  v105 = *(v15 + 268);
                                  *(*(v156 + 144) + 4 * v154) = v105;
                                  *(*(v15 + 288) + 4 * v105 + 4) = *(*(v15 + 288) + 4 * v105);
                                  ++*(v15 + 268);
                                  sub_10002EB98(v156, v154);
                                  v243 = 0;
                                  v242 = 0;
                                  sub_1000306E8(*(v15 + 256), v154, &v243, &v242);
                                  if (v243)
                                  {
                                    *(v15 + 340) = 1;
                                  }

                                  goto LABEL_239;
                                }

                                LODWORD(v105) = 0;
                              }

LABEL_239:
                              sub_1000248C0(v15, v151, v105, v136);
                              if (!--v152)
                              {
                                v138 = v239;
                                LODWORD(v139) = v231;
                                v134 = v238;
                                v140 = v232;
                                v137 = v229;
                                goto LABEL_201;
                              }
                            }
                          }

LABEL_235:
                          v136 = 0;
LABEL_236:
                          sub_100024470(v15, v141, &v241 + 1);
                          if (v236 >= 1)
                          {
                            goto LABEL_237;
                          }

                          goto LABEL_251;
                        }
                      }

LABEL_222:
                      if (v142 < 1)
                      {
                        LODWORD(k) = 0;
                      }

                      else
                      {
                        for (k = 0; k != v142; ++k)
                        {
                          if (*(*(v138 + 272) + 4 * k) == v134)
                          {
                            goto LABEL_228;
                          }
                        }

                        LODWORD(k) = *(v138 + 268);
                      }

                      goto LABEL_228;
                    }

                    for (m = 0; m != v142; ++m)
                    {
                      if (*(*(v138 + 272) + 4 * m) == v141)
                      {
                        goto LABEL_212;
                      }
                    }

                    LODWORD(m) = *(v138 + 268);
                  }

LABEL_212:
                  if (m == v142)
                  {
                    LODWORD(m) = -1;
                  }

                  if (v134 < 0)
                  {
                    goto LABEL_222;
                  }

                  goto LABEL_220;
                }

                v136 = 0;
                v138 = v239;
                LODWORD(v139) = v231;
                v140 = v232;
LABEL_253:
                LODWORD(v241) = v105;
                LODWORD(v105) = HIDWORD(v241);
                if (v237 >= 1)
                {
                  v159 = 0;
                  v230 = v139;
                  while (1)
                  {
                    v160 = *(v140 + v159);
                    if (v160 != v134)
                    {
                      break;
                    }

LABEL_256:
                    if (++v159 == v237)
                    {
                      goto LABEL_307;
                    }
                  }

                  if (!*(v138 + 336))
                  {
                    goto LABEL_291;
                  }

                  v161 = *(v138 + 268);
                  if (v134 < 0 || v161 <= v134 || (LODWORD(ii) = v134, *(*(v138 + 272) + 4 * v238) != v134))
                  {
                    if (v161 < 1)
                    {
                      if (v161)
                      {
                        LODWORD(ii) = 0;
                      }

                      else
                      {
                        LODWORD(ii) = -1;
                      }

                      if (v160 < 0)
                      {
                        goto LABEL_277;
                      }

LABEL_275:
                      if (v161 > v160)
                      {
                        LODWORD(n) = *(v140 + v159);
                        if (*(*(v138 + 272) + 4 * v160) == v160)
                        {
LABEL_283:
                          if (n == v161)
                          {
                            v164 = -1;
                          }

                          else
                          {
                            v164 = n;
                          }

                          v165 = (*(v138 + 288) + 4 * ii);
                          v166 = *v165;
                          v167 = (v165[1] - v166);
                          if (v167 >= 1)
                          {
                            v168 = (*(v138 + 304) + 4 * v166);
                            while (1)
                            {
                              v169 = *v168++;
                              if (v169 == v164)
                              {
                                break;
                              }

                              LODWORD(v166) = v166 + 1;
                              if (!--v167)
                              {
                                goto LABEL_290;
                              }
                            }

                            v136 = *(*(v138 + 352) + v166);
                            sub_100024470(v15, v160, &v241);
                            if (v139 < 1)
                            {
LABEL_306:
                              v138 = v239;
                              v134 = v238;
                              goto LABEL_256;
                            }

LABEL_292:
                            v170 = v241;
                            v171 = v230;
                            v172 = a5;
                            while (1)
                            {
                              v174 = *v172++;
                              v173 = v174;
                              v175 = *(v15 + 256);
                              if (*(v175 + 152) <= v174)
                              {
                                v176 = *(v175 + 32) + 1;
                                v105 = sub_1000C0034(4 * v176);
                                j__memmove(v105, *(v175 + 144), 4 * *(v175 + 152));
                                sub_1000BFEC4(*(v175 + 144));
                                *(v175 + 144) = v105;
                                *(v175 + 152) = v176;
                                LODWORD(v105) = *(v105 + 4 * v173);
                                if (!v173)
                                {
                                  goto LABEL_294;
                                }
                              }

                              else
                              {
                                LODWORD(v105) = *(*(v175 + 144) + 4 * v173);
                                if (!v173)
                                {
                                  goto LABEL_294;
                                }
                              }

                              if (!v105)
                              {
                                v177 = *(v15 + 268);
                                if (v177 != *(v15 + 264))
                                {
                                  goto LABEL_303;
                                }

                                if (sub_1000245C8(v15))
                                {
                                  v177 = *(v15 + 268);
LABEL_303:
                                  *(*(v15 + 272) + 4 * v177) = v173;
                                  v105 = *(v15 + 268);
                                  *(*(v175 + 144) + 4 * v173) = v105;
                                  *(*(v15 + 288) + 4 * v105 + 4) = *(*(v15 + 288) + 4 * v105);
                                  ++*(v15 + 268);
                                  sub_10002EB98(v175, v173);
                                  v243 = 0;
                                  v242 = 0;
                                  sub_1000306E8(*(v15 + 256), v173, &v243, &v242);
                                  if (v243)
                                  {
                                    *(v15 + 340) = 1;
                                  }

                                  goto LABEL_294;
                                }

                                LODWORD(v105) = 0;
                              }

LABEL_294:
                              sub_1000248C0(v15, v105, v170, v136);
                              if (!--v171)
                              {
                                v138 = v239;
                                LODWORD(v139) = v231;
                                v134 = v238;
                                v140 = v232;
                                goto LABEL_256;
                              }
                            }
                          }

LABEL_290:
                          v136 = 0;
LABEL_291:
                          sub_100024470(v15, v160, &v241);
                          if (v139 >= 1)
                          {
                            goto LABEL_292;
                          }

                          goto LABEL_306;
                        }
                      }

LABEL_277:
                      if (v161 < 1)
                      {
                        LODWORD(n) = 0;
                      }

                      else
                      {
                        for (n = 0; n != v161; ++n)
                        {
                          if (*(*(v138 + 272) + 4 * n) == v160)
                          {
                            goto LABEL_283;
                          }
                        }

                        LODWORD(n) = *(v138 + 268);
                      }

                      goto LABEL_283;
                    }

                    for (ii = 0; ii != v161; ++ii)
                    {
                      if (*(*(v138 + 272) + 4 * ii) == v134)
                      {
                        goto LABEL_267;
                      }
                    }

                    LODWORD(ii) = *(v138 + 268);
                  }

LABEL_267:
                  if (ii == v161)
                  {
                    LODWORD(ii) = -1;
                  }

                  if (v160 < 0)
                  {
                    goto LABEL_277;
                  }

                  goto LABEL_275;
                }

LABEL_307:
                HIDWORD(v241) = v105;
                if (!*(*(v138 + 296) + v227))
                {
                  goto LABEL_338;
                }

                if (*(v138 + 336))
                {
                  v178 = *(v138 + 268);
                  if (v134 < 0 || v178 <= v134 || (LODWORD(jj) = v134, *(*(v138 + 272) + 4 * v134) != v134))
                  {
                    if (v178 < 1)
                    {
                      LODWORD(jj) = 0;
                    }

                    else
                    {
                      for (jj = 0; jj != v178; ++jj)
                      {
                        if (*(*(v138 + 272) + 4 * jj) == v134)
                        {
                          goto LABEL_318;
                        }
                      }

                      LODWORD(jj) = *(v138 + 268);
                    }
                  }

LABEL_318:
                  if (jj == v178)
                  {
                    v180 = -1;
                  }

                  else
                  {
                    v180 = jj;
                  }

                  v136 = *(*(v138 + 360) + v180);
                }

                if (v139 < 1)
                {
                  goto LABEL_338;
                }

                v139 = v139;
                v181 = a5;
                while (1)
                {
                  v182 = *v181++;
                  sub_100024470(v15, v182, &v241 + 1);
                  v183 = SHIDWORD(v241);
                  if (sub_100022AD4(v15) != 3)
                  {
                    goto LABEL_325;
                  }

                  if (!*(v15 + 376) || v183 == 0)
                  {
                    goto LABEL_325;
                  }

                  v185 = *(v15 + 296);
                  if (*(v185 + v183))
                  {
                    if (!*(v15 + 336))
                    {
                      goto LABEL_325;
                    }

                    v186 = *(v15 + 360);
                    if (*(v186 + v183) != v136)
                    {
                      goto LABEL_325;
                    }
                  }

                  else
                  {
                    *(v185 + v183) = 1;
                    if (!*(v15 + 336))
                    {
                      goto LABEL_325;
                    }

                    v186 = *(v15 + 360);
                  }

                  *(v186 + v183) = v136;
LABEL_325:
                  if (!--v139)
                  {
                    v138 = v239;
                    LODWORD(v139) = v231;
                    v134 = v238;
LABEL_338:
                    v187 = *(v138 + 268);
                    v189 = v134 >= 0 && v187 > v134;
                    if (v189)
                    {
                      v190 = v134;
                      LODWORD(v191) = v134;
                      if (*(*(v138 + 272) + 4 * v134) == v134)
                      {
                        goto LABEL_374;
                      }
                    }

                    if (v187 < 1)
                    {
                      if (v187)
                      {
                        v190 = 0;
                      }

                      else
                      {
                        v190 = -1;
                      }

                      if (v189)
                      {
                        goto LABEL_355;
                      }
                    }

                    else
                    {
                      v192 = 0;
                      while (*(*(v138 + 272) + 4 * v192) != v134)
                      {
                        if (v187 == ++v192)
                        {
                          LODWORD(v192) = *(v138 + 268);
                          break;
                        }
                      }

                      if (v192 == v187)
                      {
                        v190 = -1;
                      }

                      else
                      {
                        v190 = v192;
                      }

                      if (v189)
                      {
LABEL_355:
                        v193 = *(*(v138 + 272) + 4 * v134);
                        v194 = v193 == v134;
                        if (v193 == v134)
                        {
                          LODWORD(v191) = v134;
                        }

                        else
                        {
                          LODWORD(v191) = 0;
                        }

                        if (!v194 && v187 >= 1)
                        {
                          goto LABEL_369;
                        }

                        goto LABEL_374;
                      }
                    }

                    if (v187 < 1)
                    {
                      LODWORD(v191) = 0;
                    }

                    else
                    {
LABEL_369:
                      v191 = 0;
                      while (*(*(v138 + 272) + 4 * v191) != v134)
                      {
                        if (v187 == ++v191)
                        {
                          LODWORD(v191) = *(v138 + 268);
                          break;
                        }
                      }
                    }

LABEL_374:
                    if (v191 == v187)
                    {
                      v196 = -1;
                    }

                    else
                    {
                      v196 = v191;
                    }

                    v197 = *(v138 + 288);
                    v198 = (v197 + 4 * v190);
                    v199 = *v198;
                    v200 = (v198[1] - *v198);
                    if (v200 >= 1)
                    {
                      v201 = *(v138 + 304);
                      v202 = (v201 + 4 * v199);
                      while (1)
                      {
                        v203 = *v202++;
                        if (v203 == v196)
                        {
                          break;
                        }

                        if (!--v200)
                        {
                          goto LABEL_437;
                        }
                      }

                      if (*(v138 + 336))
                      {
                        if (v189 && *(*(v138 + 272) + 4 * v134) == v134)
                        {
                          LODWORD(v204) = v134;
                        }

                        else
                        {
                          if (v187 < 1)
                          {
                            LODWORD(v204) = 0;
                          }

                          else
                          {
                            v204 = 0;
                            while (*(*(v138 + 272) + 4 * v204) != v134)
                            {
                              if (v187 == ++v204)
                              {
                                LODWORD(v204) = *(v138 + 268);
                                break;
                              }
                            }
                          }

                          if (v204 == v187)
                          {
                            LODWORD(v204) = -1;
                          }

                          if (v189)
                          {
                            v205 = *(*(v138 + 272) + 4 * v134);
                            v206 = v205 == v134;
                            if (v205 == v134)
                            {
                              v207 = v134;
                            }

                            else
                            {
                              v207 = 0;
                            }

                            if (v206 || v187 < 1)
                            {
                              v134 = v207;
                              goto LABEL_411;
                            }
                          }

                          else if (v187 < 1)
                          {
                            v134 = 0;
                            goto LABEL_411;
                          }

                          v209 = 0;
                          while (*(*(v138 + 272) + 4 * v209) != v134)
                          {
                            if (v187 == ++v209)
                            {
                              v134 = *(v138 + 268);
                              goto LABEL_411;
                            }
                          }

                          v134 = v209;
                        }

LABEL_411:
                        if (v134 == v187)
                        {
                          v210 = -1;
                        }

                        else
                        {
                          v210 = v134;
                        }

                        v211 = (v197 + 4 * v204);
                        v212 = *v211;
                        v213 = (v211[1] - v212);
                        if (v213 < 1)
                        {
LABEL_418:
                          v136 = 0;
                        }

                        else
                        {
                          v214 = (v201 + 4 * v212);
                          while (1)
                          {
                            v215 = *v214++;
                            if (v215 == v210)
                            {
                              break;
                            }

                            LODWORD(v212) = v212 + 1;
                            if (!--v213)
                            {
                              goto LABEL_418;
                            }
                          }

                          v136 = *(*(v138 + 352) + v212);
                        }
                      }

                      if (v139 >= 1)
                      {
                        v216 = 0;
                        v240 = v139;
                        while (1)
                        {
                          sub_100024470(v15, *(a5 + 4 * v216), &v241 + 1);
                          if (v236 >= 1)
                          {
                            break;
                          }

LABEL_422:
                          if (++v216 == v240)
                          {
                            goto LABEL_437;
                          }
                        }

                        v217 = HIDWORD(v241);
                        v218 = v236;
                        v219 = a3;
                        while (2)
                        {
                          v222 = *v219++;
                          v221 = v222;
                          v223 = *(v15 + 256);
                          if (*(v223 + 152) <= v222)
                          {
                            v224 = *(v223 + 32) + 1;
                            v220 = sub_1000C0034(4 * v224);
                            j__memmove(v220, *(v223 + 144), 4 * *(v223 + 152));
                            sub_1000BFEC4(*(v223 + 144));
                            *(v223 + 144) = v220;
                            *(v223 + 152) = v224;
                            LODWORD(v220) = *(v220 + 4 * v221);
                            if (!v221)
                            {
                              goto LABEL_426;
                            }
                          }

                          else
                          {
                            LODWORD(v220) = *(*(v223 + 144) + 4 * v221);
                            if (!v221)
                            {
                              goto LABEL_426;
                            }
                          }

                          if (!v220)
                          {
                            v225 = *(v15 + 268);
                            if (v225 == *(v15 + 264))
                            {
                              if (!sub_1000245C8(v15))
                              {
                                LODWORD(v220) = 0;
                                goto LABEL_426;
                              }

                              v225 = *(v15 + 268);
                            }

                            *(*(v15 + 272) + 4 * v225) = v221;
                            v220 = *(v15 + 268);
                            *(*(v223 + 144) + 4 * v221) = v220;
                            *(*(v15 + 288) + 4 * v220 + 4) = *(*(v15 + 288) + 4 * v220);
                            ++*(v15 + 268);
                            sub_10002EB98(v223, v221);
                            v243 = 0;
                            v242 = 0;
                            sub_1000306E8(*(v15 + 256), v221, &v243, &v242);
                            if (v243)
                            {
                              *(v15 + 340) = 1;
                            }
                          }

LABEL_426:
                          sub_1000248C0(v15, v217, v220, v136);
                          if (!--v218)
                          {
                            goto LABEL_422;
                          }

                          continue;
                        }
                      }
                    }

LABEL_437:
                    if (v232)
                    {
                      sub_1000CA03C(v232, 4 * v237);
                    }

                    sub_1000CA03C(v235, v228);
                    return v15;
                  }
                }
              }
            }

            if (v79 >= 1)
            {
              goto LABEL_130;
            }

            LODWORD(v92) = 0;
            goto LABEL_135;
          }
        }

        else
        {
          v77 = sub_1000C9F54(4 * v237, v70, v71, v72, v73, v74, v75, v76);
          v78 = v239;
          v79 = *(v239 + 268);
          v80 = v238;
          if ((v238 & 0x80000000) != 0)
          {
            goto LABEL_87;
          }
        }

        if (v79 > v80)
        {
          LODWORD(j) = v80;
          if (*(*(v78 + 272) + 4 * v80) == v80)
          {
            goto LABEL_93;
          }
        }

        goto LABEL_87;
      }

LABEL_51:
      v25 = 0;
      goto LABEL_67;
    }

LABEL_48:
    if (v16 < 2)
    {
      goto LABEL_51;
    }

    v32 = *(a1 + 296);
    if (v16 < 5)
    {
      v25 = 0;
      v33 = 1;
      goto LABEL_63;
    }

    v34 = v16 - 1;
    if (v16 >= 0x21)
    {
      v36 = 0uLL;
      v35 = v34 & 0xFFFFFFFFFFFFFFE0;
      v37.i64[0] = 0x100000001;
      v37.i64[1] = 0x100000001;
      v38 = (v32 + 17);
      v39 = 0uLL;
      v40 = v34 & 0xFFFFFFFFFFFFFFE0;
      v41 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      do
      {
        v47 = vtstq_s8(v38[-1], v38[-1]);
        v48 = vmovl_u8(*v47.i8);
        v49 = vmovl_high_u8(v47);
        v50 = vtstq_s8(*v38, *v38);
        v51 = vmovl_u8(*v50.i8);
        v52 = vmovl_high_u8(v50);
        v42 = vaddq_s32(v42, vandq_s8(vmovl_high_u16(v49), v37));
        v41 = vaddq_s32(v41, vandq_s8(vmovl_u16(*v49.i8), v37));
        v39 = vaddq_s32(v39, vandq_s8(vmovl_high_u16(v48), v37));
        v36 = vaddq_s32(v36, vandq_s8(vmovl_u16(*v48.i8), v37));
        v46 = vaddq_s32(v46, vandq_s8(vmovl_high_u16(v52), v37));
        v45 = vaddq_s32(v45, vandq_s8(vmovl_u16(*v52.i8), v37));
        v44 = vaddq_s32(v44, vandq_s8(vmovl_high_u16(v51), v37));
        v43 = vaddq_s32(v43, vandq_s8(vmovl_u16(*v51.i8), v37));
        v38 += 2;
        v40 -= 32;
      }

      while (v40);
      a11 = vaddq_s32(v45, v41);
      v25 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v43, v36), a11), vaddq_s32(vaddq_s32(v44, v39), vaddq_s32(v46, v42))));
      if (v34 == v35)
      {
        goto LABEL_67;
      }

      if ((v34 & 0x1C) == 0)
      {
        v33 = v35 | 1;
LABEL_63:
        v59 = v16 - v33;
        v60 = (v32 + v33);
        do
        {
          if (*v60++)
          {
            ++v25;
          }

          --v59;
        }

        while (v59);
        goto LABEL_67;
      }
    }

    else
    {
      v25 = 0;
      v35 = 0;
    }

    v33 = v34 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v53 = v25;
    v54 = (v35 + v32 + 1);
    v55 = v35 - (v34 & 0xFFFFFFFFFFFFFFFCLL);
    v56.i64[0] = 0x100000001;
    v56.i64[1] = 0x100000001;
    do
    {
      v57 = *v54++;
      a11.i32[0] = v57;
      v58 = vmovl_u8(*a11.i8).u64[0];
      a11 = vandq_s8(vmovl_u16(vtst_s16(v58, v58)), v56);
      v53 = vaddq_s32(v53, a11);
      v55 += 4;
    }

    while (v55);
    v25 = vaddvq_s32(v53);
    if (v34 == (v34 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  return v15;
}