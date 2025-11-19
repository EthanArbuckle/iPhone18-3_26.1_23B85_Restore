uint64_t sub_1819CCDA0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 24) + 48 * a2;
  v15 = 0;
  *v3 = *(*(a1 + 32) + 80);
  result = sub_1819CCF60(*a3, a1, *(a3 + 8), &v15);
  v5 = v15;
  if (v15)
  {
    *(v3 + 8) = v15;
    v6 = *v5;
    if (*v5 < 0)
    {
      v10 = v6 & 0x7F | (v5[1] << 7);
      if (v5[1] < 0)
      {
        v11 = v10 & 0x3FFF | (v5[2] << 14);
        if (v5[2] < 0)
        {
          v12 = v11 & 0x1FFFFF | (v5[3] << 21);
          if (v5[3] < 0)
          {
            v13 = v12 & 0xFFFFFFF | ((v5[4] & 7) << 28);
            v7 = 5;
            v8 = v13 >= 2;
            v9 = v13 - 2;
            if (!v8)
            {
              return 267;
            }
          }

          else
          {
            v7 = 4;
            v8 = v12 >= 2;
            v9 = v12 - 2;
            if (!v8)
            {
              return 267;
            }
          }
        }

        else
        {
          v7 = 3;
          v8 = v11 >= 2;
          v9 = v11 - 2;
          if (!v8)
          {
            return 267;
          }
        }
      }

      else
      {
        v7 = 2;
        v8 = v10 >= 2;
        v9 = v10 - 2;
        if (!v8)
        {
          return 267;
        }
      }
    }

    else
    {
      v7 = 1;
      v8 = v6 >= 2;
      v9 = v6 - 2;
      if (!v8)
      {
        return 267;
      }
    }

    v14 = &v5[v7];
    *(v3 + 16) = v9;
    *(v3 + 24) = v14;
    *(v3 + 32) = v9;
    *(v3 + 40) = v14;
  }

  return result;
}

uint64_t sub_1819CCEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a3 + 12);
  ++*(a3 + 8);
  *(a3 + 12) = v4 + *(v3 + 80);
  return 0;
}

uint64_t sub_1819CCECC(_DWORD *a1, _DWORD *a2, uint64_t (*a3)(_DWORD *, void, uint64_t), uint64_t a4)
{
  v7 = a1;
  v8 = *a1;
  if (*a1 == 5)
  {
LABEL_5:
    result = a3(v7, *a2, a4);
    ++*a2;
  }

  else
  {
    while (1)
    {
      result = sub_1819CCECC(*(v7 + 2), a2, a3, a4);
      if (v8 == 2 || result)
      {
        break;
      }

      v7 = *(v7 + 3);
      v8 = *v7;
      if (*v7 == 5)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1819CCF60(uint64_t a1, uint64_t a2, int a3, char **a4)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  *a4 = 0;
  v6 = *(v4 + 84);
  v7 = v6 != a3 && v6 < *(v5 + 48);
  if (v7)
  {
    return 0;
  }

  v10 = a2;
  v12 = *(v4 + 40);
  v53 = *(a2 + 40);
  v54 = v12;
  if (v53 == *(a1 + 48) && !*(a2 + 48))
  {
LABEL_92:
    if (v12)
    {
      if (*v12 == 1)
      {
        goto LABEL_96;
      }

      v44 = 0;
      while (v44 < a3)
      {
        v47 = *v12;
        if (v47 >= 2)
        {
          do
          {
            v49 = *++v12;
            v48 = v49;
            v50 = v47 & 0x80;
            LOBYTE(v47) = v49;
          }

          while (v49 & 0xFE | v50);
          v47 = v48;
        }

        if (!v47)
        {
          return 0;
        }

LABEL_96:
        v45 = (v12 + 1);
        v54 = v12 + 1;
        v44 = v12[1];
        if (v12[1] < 0)
        {
          v44 = v44 & 0x7F | (v12[2] << 7);
          if (v12[2] < 0)
          {
            v44 = v44 & 0x3FFF | (v12[3] << 14);
            if (v12[3] < 0)
            {
              v44 = v44 & 0x1FFFFF | (v12[4] << 21);
              if (v12[4] < 0)
              {
                v44 = v44 & 0xFFFFFFF | ((v12[5] & 7) << 28);
                v46 = 5;
              }

              else
              {
                v46 = 4;
              }
            }

            else
            {
              v46 = 3;
            }
          }

          else
          {
            v46 = 2;
          }
        }

        else
        {
          v46 = 1;
        }

        v12 = &v45[v46];
        v54 = v12;
      }

      result = 0;
      if (!*v12)
      {
        v12 = 0;
      }

      if (v44 != a3)
      {
        v12 = 0;
      }

      *a4 = v12;
      return result;
    }

    return 0;
  }

  v52 = 0;
  v13 = *(a2 + 8);
  if (!v13)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = *(v5 + 463);
  do
  {
    if (*v13 == 4)
    {
      v15 = 1;
    }

    if (*v13 == 1)
    {
      v10 = v13;
    }

    if (*(v13 + 48))
    {
      v14 = 1;
    }

    v13 = *(v13 + 8);
  }

  while (v13);
  if (!v15)
  {
    return 0;
  }

  v17 = v10;
  if (*(v10 + 50))
  {
    v17 = v10;
    do
    {
      v17 = *(v17 + 8);
    }

    while (*(v17 + 50));
  }

  if (!*(v4 + 56))
  {
LABEL_29:
    if (v14)
    {
      while (!*(v17 + 48))
      {
        sub_1819BEF44(a1, v17, &v52);
        result = v52;
        if (v52)
        {
          return result;
        }
      }
    }

    if (v10)
    {
      v21 = 0;
      do
      {
        while (1)
        {
          v22 = v10;
          if (*v10 == 1)
          {
            v22 = *(v10 + 24);
          }

          v23 = *(v22 + 32);
          v24 = *(v23 + 64);
          v53 = *(v23 + 72);
          v54 = v24;
          v25 = *(v23 + 8);
          if (*(a1 + 76) != v16)
          {
            if (v25)
            {
              if (v24)
              {
                v27 = v24 <= *v23;
              }

              else
              {
                v27 = 0;
              }
            }

            else
            {
              v27 = 1;
            }

            v51 = v27;
            while (1)
            {
              if (v24)
              {
                v28 = v53;
                v39 = *(a1 + 48);
                v7 = v53 < v39;
                v40 = v53 > v39;
                v41 = v7;
                if (!v16)
                {
                  v41 = v40;
                }

                v33 = v51;
                if (v41 != 1 || v51 != 0)
                {
                  goto LABEL_81;
                }
              }

              else if (v51)
              {
LABEL_85:
                v43 = v53;
                *(v23 + 64) = 0;
                *(v23 + 72) = v43;
                goto LABEL_86;
              }

              sub_1819B0240(v16, *v23, *(v23 + 8), &v54, &v53, &v55, &v51);
              v24 = v54;
            }
          }

          v26 = !v25 || v24 >= *v23 + v25;
          v51 = v26;
          while (1)
          {
LABEL_46:
            while (!v24)
            {
              if (v51)
              {
                goto LABEL_85;
              }

              v38 = *v23;
              v24 = &v38[sub_1819AE95C(*v23, &v53)];
              v54 = v24;
            }

            v28 = v53;
            v29 = *(a1 + 48);
            v30 = v53 <= v29;
            if (v53 == v29)
            {
              v31 = 0;
            }

            else
            {
              v31 = -1;
            }

            if (!v30)
            {
              v31 = 1;
            }

            v32 = v16 ? -v31 : v31;
            v33 = v51;
            if ((v32 & 0x80000000) == 0 || v51)
            {
              break;
            }

            v34 = *v24;
            if (*v24)
            {
              do
              {
                v35 = v34 & 0xFFFFFF80;
                v36 = *++v24;
                v34 = v36;
              }

              while (v35 | v36);
            }

            do
            {
              if (++v24 >= *v23 + *(v23 + 8))
              {
                v51 = 1;
                v54 = v24;
                goto LABEL_46;
              }
            }

            while (!*v24);
            v55 = 0;
            v24 += sub_1819AE95C(v24, &v55);
            v37 = v55;
            if (v16)
            {
              v37 = -v55;
            }

            v53 += v37;
            v54 = v24;
          }

LABEL_81:
          *(v23 + 64) = v24;
          *(v23 + 72) = v28;
          if (!v33 && v28 == *(a1 + 48))
          {
            break;
          }

LABEL_86:
          v10 = *(v10 + 16);
          v21 = 1;
          if (!v10)
          {
            goto LABEL_89;
          }
        }

        v10 = *(v10 + 16);
      }

      while (v10);
      if ((v21 & 1) == 0)
      {
        goto LABEL_90;
      }

LABEL_89:
      v12 = 0;
    }

    else
    {
LABEL_90:
      v12 = *(v4 + 64);
    }

    v54 = v12;
    goto LABEL_92;
  }

  v18 = *(v17 + 48);
  sub_1819CD3D0(a1, v17, &v52);
  while (1)
  {
    result = v52;
    if (v52)
    {
      return result;
    }

    v20 = *(v17 + 48);
    if (*(v17 + 48))
    {
      goto LABEL_28;
    }

    sub_1819BEF44(a1, v17, &v52);
    if (!v18 && *(v17 + 40) == v53)
    {
      result = v52;
      if (v52)
      {
        return result;
      }

      v20 = *(v17 + 48);
LABEL_28:
      if (v20 == v18)
      {
        goto LABEL_29;
      }

      return 267;
    }
  }
}

uint64_t sub_1819CD3D0(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    while (1)
    {
      if (*a3)
      {
        return result;
      }

      v7 = *(v4 + 32);
      if (v7)
      {
        break;
      }

LABEL_6:
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      result = sub_1819CD3D0(v5, *(v4 + 16), a3);
      v4 = *(v4 + 24);
      if (!v4)
      {
        return result;
      }
    }

    if (*(v7 + 32))
    {
      v8 = *(v7 + 40);
      if (v8)
      {
        v9 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v8);
          --qword_1ED456A90;
          off_1ED452EB0(v8);
          v8 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_17;
          }

          v9 = &xmmword_1ED452F28;
        }

        (*v9)(v8);
      }
    }

LABEL_17:
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 32) = 0;
    if (*(v7 + 56))
    {
      if (*(v7 + 80) >= 1)
      {
        v10 = 0;
        do
        {
          v11 = *(v7 + 88 + 40 * v10 + 32);
          if (v11)
          {
            *(v11 + 3) = 0;
            *(v11 + 11) = 1;
            v12 = *(v11 + 2);
            if (v12 >= 1)
            {
              v13 = *v11;
              do
              {
                *(*v13 + 112) = 0;
                v14 = *v13++;
                *(v14 + 120) = 0;
                *(v14 + 128) = 0;
                --v12;
              }

              while (v12);
            }
          }

          ++v10;
        }

        while (v10 < *(v7 + 80));
      }

      v15 = 0;
      v16 = *v5;
      v17 = v7 + 88;
      while (v15 < *(v7 + 80))
      {
        if (*(v17 + 32))
        {
          v19 = 0;
          v18 = 0;
          v6 = sub_1819BC978(v16, v17, *(v7 + 84), &v19, &v18);
          if (!v6)
          {
            v6 = sub_1819BD2EC(v16, v7, v15, v18, v19);
          }
        }

        else
        {
          v6 = 0;
        }

        ++v15;
        v17 += 40;
        if (v6)
        {
          goto LABEL_4;
        }
      }

      v6 = 0;
LABEL_4:
      *(v7 + 56) = 0;
      *a3 = v6;
    }

    *(v7 + 64) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1819CD608(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 32);
  if (!v3 || !*(v3 + 56))
  {
    return 0;
  }

  v5 = *a3;
  v8 = 0;
  if (*(a1 + 48))
  {
LABEL_4:
    result = 0;
  }

  else
  {
    v7 = *(a1 + 40);
    sub_1819CD3D0(v5, a1, &v8);
    while (1)
    {
      result = v8;
      if (v8)
      {
        break;
      }

      if (*(a1 + 40) == v7)
      {
        goto LABEL_4;
      }

      sub_1819BEF44(v5, a1, &v8);
      if (*(a1 + 48))
      {
        result = 267;
        break;
      }
    }
  }

  *(*(a1 + 32) + 56) = 0;
  return result;
}

uint64_t sub_1819CD6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  result = sub_1819CCF60(*a3, a1, *(a3 + 8), &v28);
  v6 = *(*(a1 + 32) + 80);
  v7 = v28;
  if (v28)
  {
    v8 = *v28;
    if (*v28 < 0)
    {
      v8 = v8 & 0x7F | (v28[1] << 7);
      if (v28[1] < 0)
      {
        v8 = v8 & 0x3FFF | (v28[2] << 14);
        if (v28[2] < 0)
        {
          v8 = v8 & 0x1FFFFF | (v28[3] << 21);
          if (v28[3] < 0)
          {
            v8 = v8 & 0xFFFFFFF | ((v28[4] & 7) << 28);
            v9 = 5;
          }

          else
          {
            v9 = 4;
          }
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }

    v7 = &v28[v9];
    v10 = v8 - 2;
    if (v6 >= 1)
    {
LABEL_14:
      v11 = *(a3 + 24);
      v12 = *(a3 + 12);
      if (v6 >= 4)
      {
        v13 = v6 & 0x7FFFFFFC;
        v15 = vdupq_n_s64(v6);
        v16 = vdupq_n_s64(v7);
        v17 = vdupq_n_s64(v10);
        v14 = v13 + v12;
        v18 = (v11 + 24 * v12);
        v19 = xmmword_181A1FE70;
        v20 = vdupq_n_s64(0xFFFFFFFFFFFFFFFDLL);
        v21 = vdupq_n_s64(4uLL);
        v22 = v13;
        do
        {
          v23 = vaddq_s64(v15, vmvnq_s8(v19));
          v24 = v18 + 12;
          vst3q_f64(v18, *v16.i8);
          v25 = v18 + 6;
          v29.val[2] = vaddq_s64(vsubq_s64(v15, v19), v20);
          v29.val[0] = v16;
          v29.val[1] = v17;
          vst3q_f64(v25, v29);
          v19 = vaddq_s64(v19, v21);
          v18 = v24;
          v22 -= 4;
        }

        while (v22);
        if (v13 == v6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v13 = 0;
        v14 = *(a3 + 12);
      }

      v26 = ~v13 + v6;
      v27 = (v11 + 24 * v14 + 16);
      LODWORD(v14) = v14 + v6 - v13;
      do
      {
        *(v27 - 1) = v10;
        *v27 = v26;
        *(v27 - 2) = v7;
        --v26;
        v27 += 3;
      }

      while (v26 != -1);
LABEL_21:
      *(a3 + 12) = v14;
    }
  }

  else
  {
    v10 = 0;
    if (v6 >= 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1819CD864(uint64_t a1, int a2, _DWORD *a3)
{
  ++*a3;
  *(a1 + 52) = a2;
  return 0;
}

uint64_t sub_1819CD87C(uint64_t result)
{
  v1 = (result - *(result - 4));
  if (v1 + 28 == result)
  {
    v1[1] = 0;
    if (*v1)
    {
      return result;
    }
  }

  else
  {
    v1[2] = 0;
    if (*v1)
    {
      return result;
    }
  }

  if (!v1[1] && !v1[2])
  {
    v2 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v1);
      --qword_1ED456A90;
      result = off_1ED452EB0(v1);
      v1 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return result;
      }

      v2 = &xmmword_1ED452F28;
    }

    v3 = *v2;

    return v3(v1);
  }

  return result;
}

uint64_t sub_1819CD97C(uint64_t a1, uint64_t **a2)
{
  if (*(a1 + 48))
  {
    return 0;
  }

  v4 = a1;
  while (1)
  {
    if (*(v4 + 40) != (*a2)[6])
    {
      return 0;
    }

    v5 = *(v4 + 16);
    if (!v5)
    {
      break;
    }

    result = sub_1819CD97C(v5, a2);
    if (result)
    {
      return result;
    }

    v4 = *(v4 + 24);
    if (*(v4 + 48))
    {
      return 0;
    }
  }

  v6 = *(v4 + 32);
  v7 = *(v6 + 40);
  v8 = *(a2 + 24);
  v9 = *(a2 + 2);
  v10 = v9 + 31;
  if (v9 < -31)
  {
    v10 = v9 + 62;
  }

  v11 = v10 >> 5;
  if (v8 != 121)
  {
    v9 = v11;
  }

  if (v7)
  {
    v12 = 0;
    v13 = **a2;
    v14 = v9 * *(v4 + 52);
    while (1)
    {
      v16 = *v7;
      if (v16 >= 2)
      {
        v17 = 0;
        do
        {
          v18 = v16 & 0x80;
          v19 = *++v7;
          v17 += (v16 >> 7) ^ 1;
          v16 = v19;
        }

        while (v19 & 0xFE | v18);
      }

      else
      {
        v17 = 0;
      }

      v20 = *(v6 + 84);
      if (v20 != v12 && v20 < *(v13 + 48))
      {
        goto LABEL_30;
      }

      if (v8 == 121)
      {
        break;
      }

      if (v17)
      {
        v24 = 1 << v12;
        v22 = a2[4];
        v23 = v14 + ((v12 + 1) >> 5);
        v17 = *(v22 + v23) | v24;
        goto LABEL_29;
      }

LABEL_30:
      if (*v7 != 1)
      {
        return 0;
      }

      v25 = v7 + 1;
      v12 = v7[1];
      if (v7[1] < 0)
      {
        v12 = v12 & 0x7F | (v7[2] << 7);
        if (v7[2] < 0)
        {
          v12 = v12 & 0x3FFF | (v7[3] << 14);
          if (v7[3] < 0)
          {
            v12 = v12 & 0x1FFFFF | (v7[4] << 21);
            if (v7[4] < 0)
            {
              v12 = v12 & 0xFFFFFFF | ((v7[5] & 7) << 28);
              v15 = 5;
            }

            else
            {
              v15 = 4;
            }
          }

          else
          {
            v15 = 3;
          }
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        v15 = 1;
      }

      v7 = &v25[v15];
      result = 267;
      if (v12 >= *(a2 + 2))
      {
        return result;
      }
    }

    v22 = a2[4];
    v23 = v12 + v14;
LABEL_29:
    *(v22 + v23) = v17;
    goto LABEL_30;
  }

  return 0;
}

uint64_t sub_1819CDB48(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a3;
  v5 = *(a3 + 32);
  v6 = 3 * a2 * *(a3 + 8);
  v7 = **a3;
  if (*(a1 + 50) && **(a1 + 8) != 1)
  {
    if (*(v7 + 48) >= 1)
    {
      v13 = 0;
      v14 = *(v4 + 22);
      v15 = (v5 + 4 * v6 + 8);
      do
      {
        *(v15 - 1) = v14;
        *v15 = v14;
        ++v13;
        v15 += 3;
      }

      while (v13 < *(v7 + 48));
    }

    return 0;
  }

  v27 = 0;
  if (*(a1 + 56))
  {
LABEL_4:
    if (*(v7 + 48) >= 1)
    {
      v8 = 0;
      v9 = *(v3 + 56);
      v10 = (v5 + 4 * v6 + 8);
      v11 = (v9 + 8);
      do
      {
        *(v10 - 1) = *(v11 - 1);
        v12 = *v11;
        v11 += 3;
        *v10 = v12;
        v10 += 3;
        ++v8;
      }

      while (v8 < *(v7 + 48));
    }

    return 0;
  }

  v17 = *(a1 + 8);
  v18 = a1;
  if (v17)
  {
    v18 = a1;
    do
    {
      v19 = v17;
      if (*v17 != 1 && !*(v18 + 50))
      {
        break;
      }

      v17 = *(v17 + 8);
      v18 = v19;
    }

    while (v17);
  }

  v21 = v4[6];
  v22 = *(v18 + 40);
  v23 = *(v18 + 48);
  v28 = 0;
  result = sub_1819CCECC(v18, &v28, sub_1819CDED8, v7);
  v27 = result;
  if (!result)
  {
    sub_1819CD3D0(v4, v18, &v27);
    result = v27;
    if (!*(v4 + 10) && !v27)
    {
      while (1)
      {
        while (1)
        {
          if (!*(v4 + 11))
          {
            sqlite3_reset(v4[2]);
          }

          sub_1819BEF44(v4, v18, &v27);
          v24 = *(v18 + 48);
          *(v4 + 10) = v24;
          *(v4 + 11) = 1;
          *(v4 + 28) = 1;
          v4[6] = *(v18 + 40);
          if (v24)
          {
            result = v27;
            goto LABEL_35;
          }

          if (*v18 == 1)
          {
            break;
          }

          v25 = 0;
          result = v27;
          if (v27)
          {
            goto LABEL_35;
          }

LABEL_30:
          if (!v25)
          {
            sub_1819CDF64(v18, *(v7 + 48));
            result = v27;
            if (!*(v4 + 10) && !v27)
            {
              continue;
            }
          }

          goto LABEL_35;
        }

        if (!sub_1819BF964(v4, &v27))
        {
          v25 = *(v4 + 10) != 0;
          result = v27;
          if (v27)
          {
            break;
          }

          goto LABEL_30;
        }
      }
    }

LABEL_35:
    *(v4 + 10) = 0;
    v4[6] = v21;
    if (v23)
    {
      *(v18 + 48) = v23;
LABEL_43:
      v3 = a1;
      if (!result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1819CD3D0(v4, v18, &v27);
      while (1)
      {
        sub_1819BEF44(v4, v18, &v27);
        if (*(v18 + 48))
        {
          return 267;
        }

        result = v27;
        if (*(v18 + 40) == v22 || v27 != 0)
        {
          goto LABEL_43;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1819CDDF0(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 < 1)
  {
    return 0;
  }

  v17[5] = v3;
  v17[6] = v4;
  v8 = 0;
  v9 = v5 * a2;
  do
  {
    v17[0] = 0;
    result = sub_1819CCF60(*a3, a1, v8, v17);
    if (v17[0] && (v13 = *v17[0], v13 >= 2))
    {
      v10 = 0;
      v14 = v17[0] + 1;
      do
      {
        v15 = v13 & 0x80;
        v10 += (v13 >> 7) ^ 1;
        v16 = *v14++;
        v13 = v16;
      }

      while (v16 & 0xFE | v15);
    }

    else
    {
      v10 = 0;
    }

    *(*(a3 + 32) + 12 * (v9 + v8++)) = v10;
  }

  while (v8 < *(a3 + 8) && result == 0);
  return result;
}

uint64_t sub_1819CDED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = a3;
  v7 = *(a3 + 48);
  if (sqlite3_initialize())
  {
    *(a1 + 56) = 0;
  }

  else
  {
    v4 = sub_181902484(12 * v7, 0x100004052888210);
    *(a1 + 56) = v4;
    a3 = v6;
    if (v4)
    {
LABEL_2:
      bzero(v4, 12 * *(a3 + 48));
      return 0;
    }
  }

  return 7;
}

uint64_t sub_1819CDF64(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      v4 = v3[4];
      if (v4)
      {
        v5 = *(v4 + 40);
        if (v5)
        {
          v6 = 0;
          v7 = v3[7];
          do
          {
            v9 = *v5;
            if (v9 >= 2)
            {
              v10 = 0;
              v11 = 0;
              do
              {
                if (!v11)
                {
                  ++v10;
                }

                v11 = v9 & 0x80;
                v12 = *++v5;
                LOBYTE(v9) = v12;
              }

              while (v12 & 0xFE | v11);
            }

            else
            {
              v10 = 0;
            }

            v13 = v7 + 4 * (3 * v6);
            v14 = *(v13 + 4) + v10;
            if (v10)
            {
              v15 = *(v13 + 8) + 1;
            }

            else
            {
              v15 = *(v13 + 8);
            }

            *(v13 + 4) = v14;
            *(v13 + 8) = v15;
            if (!*v5)
            {
              break;
            }

            v16 = v5 + 1;
            v6 = v5[1];
            if (v5[1] < 0)
            {
              v6 = v6 & 0x7F | (v5[2] << 7);
              if (v5[2] < 0)
              {
                v6 = v6 & 0x3FFF | (v5[3] << 14);
                if (v5[3] < 0)
                {
                  v6 = v6 & 0x1FFFFF | (v5[4] << 21);
                  if (v5[4] < 0)
                  {
                    v6 = v6 & 0xFFFFFFF | ((v5[5] & 7) << 28);
                    v8 = 5;
                  }

                  else
                  {
                    v8 = 4;
                  }
                }

                else
                {
                  v8 = 3;
                }
              }

              else
              {
                v8 = 2;
              }
            }

            else
            {
              v8 = 1;
            }

            v5 = &v16[v8];
          }

          while (v6 < a2);
        }
      }

      result = sub_1819CDF64(v3[2], a2);
      v3 = v3[3];
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1819CE09C(sqlite3 *a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, char **a6)
{
  v54 = 0;
  result = sqlite3_declare_vtab(a1, "CREATE TABLE x(input, token, start, end, position)");
  if (result)
  {
    return result;
  }

  v12 = (a3 - 3);
  if (a3 == 3)
  {
    v15 = 0;
    v17 = "simple";
  }

  else
  {
    v53 = a6;
    v13 = (a4 + 24);
    if (a3 >= 4)
    {
      LODWORD(v14) = 0;
      v18 = v13;
      v19 = (a3 - 3);
      do
      {
        v20 = *v18++;
        LODWORD(v14) = v14 + strlen(v20) + 1;
        --v19;
      }

      while (v19);
      v14 = v14;
      if (sqlite3_initialize())
      {
        goto LABEL_5;
      }
    }

    else
    {
      v14 = 0;
      if (sqlite3_initialize())
      {
LABEL_5:
        v15 = 0;
        goto LABEL_6;
      }
    }

    v52 = a5;
    v21 = sub_181902484(v14 + 8 * v12, 0x10040436913F5);
    v15 = v21;
    if (a3 >= 4 && v21)
    {
      v22 = 0;
      v23 = (v21 + 8 * v12);
      do
      {
        v25 = strlen(v13[v22]);
        v15[v22] = v23;
        v26 = v25 + 1;
        memcpy(v23, v13[v22], v26);
        v27 = *v23;
        if ((v27 - 34) <= 0x3E && ((1 << (v27 - 34)) & 0x4200000000000021) != 0)
        {
          if (v27 == 91)
          {
            v27 = 93;
          }

          v29 = v23[1];
          if (v23[1])
          {
            v30 = 0;
            v31 = 1;
            v32 = 1;
            while (1)
            {
              if (v29 == v27)
              {
                if (v23[v31 + 1] != v27)
                {
LABEL_15:
                  v24 = v30;
                  goto LABEL_16;
                }

                v23[v30] = v27;
                v32 += 2;
              }

              else
              {
                ++v32;
                v23[v30] = v29;
              }

              ++v30;
              v31 = v32;
              v29 = v23[v32];
              if (!v23[v32])
              {
                goto LABEL_15;
              }
            }
          }

          v24 = 0;
LABEL_16:
          v23[v24] = 0;
        }

        v23 += v26;
        ++v22;
      }

      while (v22 != v12);
    }

    else if (!v21)
    {
LABEL_6:
      v16 = 0;
LABEL_7:
      result = 7;
      goto LABEL_60;
    }

    if (a3 >= 4)
    {
      v17 = *v15;
    }

    else
    {
      v17 = "simple";
    }

    a5 = v52;
    a6 = v53;
  }

  v33 = strlen(v17);
  if (a2 && *(a2 + 24))
  {
    v34 = v33;
    v35 = sub_1819AE48C;
    if (*a2 == 1)
    {
      v35 = sub_181894AF0;
    }

    v36 = v35(v17, v33 + 1);
    v37 = *(a2 + 24);
    if (v37)
    {
      v38 = (v37 + 16 * ((*(a2 + 16) - 1) & v36));
      v41 = *v38;
      v39 = v38 + 2;
      v40 = v41;
      if (*a2 == 1)
      {
        v42 = sub_181894B58;
      }

      else
      {
        v42 = sub_1819AE4C4;
      }

      while (v40)
      {
        v39 = *v39;
        if (!v39)
        {
          break;
        }

        --v40;
        if (!(v42)(*(v39 + 3), v39[8], v17, (v34 + 1)))
        {
          v16 = *(v39 + 2);
          if (!v16)
          {
            break;
          }

          if (a3 <= 4)
          {
            v43 = 0;
          }

          else
          {
            v43 = v15 + 1;
          }

          if (a3 <= 4)
          {
            v44 = 0;
          }

          else
          {
            v44 = (a3 - 4);
          }

          result = (*(v16 + 8))(v44, v43, &v54);
          if (result)
          {
            goto LABEL_60;
          }

          if (!sqlite3_initialize())
          {
            v45 = sub_181902484(40, 0x107004039728ABFLL);
            if (v45)
            {
              v46 = v45;
              result = 0;
              *v46 = 0u;
              *(v46 + 16) = 0u;
              v47 = v54;
              *(v46 + 24) = v16;
              *(v46 + 32) = v47;
              *a5 = v46;
              goto LABEL_62;
            }
          }

          goto LABEL_7;
        }
      }
    }
  }

  sub_1819AD2A4(a6, "unknown tokenizer: %s", v17);
  v16 = 0;
  result = 1;
LABEL_60:
  if (v54)
  {
    v48 = *(v16 + 16);
    v49 = result;
    v48(v54);
    result = v49;
  }

LABEL_62:
  if (v15)
  {
    v50 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v51 = result;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v15);
      --qword_1ED456A90;
      off_1ED452EB0(v15);
      v15 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return v51;
      }

      v50 = &xmmword_1ED452F28;
    }

    else
    {
      v51 = result;
    }

    (*v50)(v15);
    return v51;
  }

  return result;
}

uint64_t sub_1819CE494(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 < 1)
  {
LABEL_8:
    a2[10] = 0;
    return 0;
  }

  else
  {
    v3 = 0;
    v4 = (*(a2 + 1) + 4);
    v5 = 8 * v2;
    while (!v4[1] || *(v4 - 1) || *v4 != 2)
    {
      v3 += 8;
      v4 += 12;
      if (v5 == v3)
      {
        goto LABEL_8;
      }
    }

    a2[10] = 1;
    v6 = *(a2 + 4) + v3;
    *v6 = 1;
    *(v6 + 4) = 1;
    *(a2 + 8) = 0x3FF0000000000000;
    return 0;
  }
}

uint64_t sub_1819CE514(uint64_t a1)
{
  v1 = a1;
  (*(*(a1 + 24) + 16))(*(a1 + 32));
  v2 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_6;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v2 = &xmmword_1ED452F28;
LABEL_6:
    (*v2)(v1);
  }

  return 0;
}

double sub_1819CE5CC(uint64_t a1, uint64_t *a2)
{
  if (!sqlite3_initialize())
  {
    v4 = sub_181902484(56, 0x10700405932FECCLL);
    if (v4)
    {
      *(v4 + 48) = 0;
      result = 0.0;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *v4 = 0u;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t sub_1819CE634(void *a1)
{
  v1 = a1;
  if (a1[2])
  {
    (*(*(*a1 + 24) + 32))();
    v1[2] = 0;
  }

  v2 = v1[1];
  if (v2)
  {
    v3 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_9:
      (*v3)(v2);
      goto LABEL_10;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v2);
    --qword_1ED456A90;
    off_1ED452EB0(v2);
    v2 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v3 = &xmmword_1ED452F28;
      goto LABEL_9;
    }
  }

LABEL_10:
  v1[1] = 0;
  *(v1 + 6) = 0;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  v4 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_15:
    (*v4)(v1);
    return 0;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v4 = &xmmword_1ED452F28;
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_1819CE784(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a1;
  v9 = a1 + 2;
  if (a1[2])
  {
    (*(*(v8 + 24) + 32))();
    *v9 = 0;
  }

  v10 = a1[1];
  if (v10)
  {
    v11 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_9:
      (*v11)(v10);
      goto LABEL_10;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v10);
    --qword_1ED456A90;
    off_1ED452EB0(v10);
    v10 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v11 = &xmmword_1ED452F28;
      goto LABEL_9;
    }
  }

LABEL_10:
  a1[4] = 0;
  a1[1] = 0;
  *(a1 + 6) = 0;
  a1[5] = 0;
  a1[6] = 0;
  if (a2 != 1)
  {
    return 1;
  }

  v12 = *a5;
  if (!*a5)
  {
    v14 = 0;
    goto LABEL_22;
  }

  v13 = *(v12 + 20);
  if ((~v13 & 0x202) != 0 || *(v12 + 22) != 1)
  {
    if (v13)
    {
      v14 = 0;
      v15 = *(v12 + 20);
      if ((v15 & 2) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v14 = sub_18193CB70(v12, 1);
    v12 = *a5;
    if (*a5)
    {
      v15 = *(v12 + 20);
      if ((v15 & 2) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

LABEL_22:
    sub_1819012D0(93690);
    goto LABEL_23;
  }

  v14 = *(v12 + 8);
  v15 = *(v12 + 20);
  if ((v15 & 2) == 0)
  {
    goto LABEL_46;
  }

LABEL_43:
  if (*(v12 + 22) == 1)
  {
    v17 = *(v12 + 16);
    if (!sqlite3_initialize())
    {
      goto LABEL_24;
    }

LABEL_53:
    a1[1] = 0;
    return 7;
  }

LABEL_46:
  if ((v15 & 0x10) != 0)
  {
    v17 = *(v12 + 16);
    if ((v15 & 0x400) != 0)
    {
      v17 += *v12;
    }

    if (sqlite3_initialize())
    {
      goto LABEL_53;
    }

    goto LABEL_24;
  }

  if (v15)
  {
LABEL_23:
    v17 = 0;
    if (!sqlite3_initialize())
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

  v17 = sub_18193CB44(v12, 1);
  if (sqlite3_initialize())
  {
    goto LABEL_53;
  }

LABEL_24:
  v18 = sub_181902484(v17 + 1, 4002295649);
  a1[1] = v18;
  if (!v18)
  {
    return 7;
  }

  if (v17 >= 1)
  {
    memcpy(v18, v14, v17);
    v18 = a1[1];
  }

  *(v18 + v17) = 0;
  result = (*(*(v8 + 24) + 24))(*(v8 + 32), a1[1], v17, v9);
  if (!result)
  {
    *a1[2] = *(v8 + 32);
    v19 = *a1;
    ++*(a1 + 6);
    result = (*(*(v19 + 24) + 40))();
    if (result)
    {
      v20 = result;
      if (*v9)
      {
        (*(*(*a1 + 24) + 32))();
        a1[2] = 0;
      }

      v21 = a1[1];
      if (!v21)
      {
        goto LABEL_38;
      }

      v22 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v21);
        --qword_1ED456A90;
        off_1ED452EB0(v21);
        v21 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_38;
        }

        v22 = &xmmword_1ED452F28;
      }

      (*v22)(v21);
LABEL_38:
      a1[1] = 0;
      *(a1 + 6) = 0;
      a1[5] = 0;
      a1[6] = 0;
      if (v20 == 101)
      {
        result = 0;
      }

      else
      {
        result = v20;
      }

      a1[4] = 0;
    }
  }

  return result;
}

uint64_t sub_1819CEAC4(uint64_t a1)
{
  v2 = *a1;
  ++*(a1 + 24);
  result = (*(*(v2 + 24) + 40))(*(a1 + 16), a1 + 32, a1 + 40, a1 + 44, a1 + 48, a1 + 52);
  if (result)
  {
    v4 = result;
    sub_1819CEC14(a1);
    if (v4 == 101)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t sub_1819CEB40(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (!a2)
      {
        return 0;
      }

      v7 = *(a1 + 44);
LABEL_17:
      v9 = *a2;
      if ((*(*a2 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v9, v7);
      }

      else
      {
        *v9 = v7;
        *(v9 + 20) = 4;
      }

      return 0;
    }

    if (a3 == 3)
    {
      if (!a2)
      {
        return 0;
      }

      v7 = *(a1 + 48);
      goto LABEL_17;
    }

LABEL_10:
    if (!a2)
    {
      return 0;
    }

    v7 = *(a1 + 52);
    goto LABEL_17;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      if (a2)
      {
        v3 = *(a1 + 40);
        v4 = *(a1 + 32);
        v5 = a2;
        v6 = v4;
LABEL_14:
        sub_18190B23C(v5, v6, v3, 1u, 0xFFFFFFFFFFFFFFFFLL);
        return 0;
      }

      return 0;
    }

    goto LABEL_10;
  }

  if (a2)
  {
    v8 = *(a1 + 8);
    v5 = a2;
    v6 = v8;
    v3 = -1;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1819CEC14(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*(*a1 + 24) + 32))();
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_9:
      result = (*v4)(v3);
      goto LABEL_10;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v3);
    --qword_1ED456A90;
    result = off_1ED452EB0(v3);
    v3 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v4 = &xmmword_1ED452F28;
      goto LABEL_9;
    }
  }

LABEL_10:
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1819CED30(uint64_t a1, int *a2)
{
  v2 = *(a1 + 24);
  if (v2[46])
  {
    *(a1 + 16) = sqlite3_mprintf("recursively defined fts5 content table");
    return 1;
  }

  v5 = v2[8];
  v6 = *a2;
  v7 = sqlite3_initialize();
  result = 7;
  if ((v6 & 0x80000000) == 0 && !v7)
  {
    v8 = 1;
    v9 = sub_181902484((8 * v6) | 1u, 0x100004077774924);
    if (!v9)
    {
      return 7;
    }

    v10 = v9;
    *(a2 + 6) = v9;
    a2[14] = 1;
    if (*a2 < 1)
    {
      v13 = 0;
      v30 = 0;
      v31 = 0;
      v12 = 0;
      goto LABEL_87;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v52 = 0;
LABEL_12:
    v17 = *(a2 + 1);
    v18 = (v17 + 12 * v11);
    v19 = *v18;
    v20 = *(v18 + 4);
    if (v20 == 64)
    {
      goto LABEL_52;
    }

    if (v20 == 2 && v19 >= v5)
    {
      goto LABEL_52;
    }

    if (!*(v18 + 5))
    {
      goto LABEL_11;
    }

    if ((v19 & 0x80000000) == 0 && v19 < v5)
    {
      v22 = v2[41];
      if (v22 == 66)
      {
        if (v20 == 66)
        {
          goto LABEL_29;
        }
      }

      else if (v22 == 65 && (v20 - 65) < 2)
      {
        goto LABEL_29;
      }
    }

    if (v14)
    {
      v14 = 1;
      goto LABEL_11;
    }

    if (v20 == 2 && v19 < 0)
    {
LABEL_27:
      *(v10 + v12++) = 61;
      *(*(a2 + 4) + 8 * v11) = ++v15;
      v14 = 1;
      goto LABEL_11;
    }

    v25 = *a2;
    if (v11 + 1 >= v25)
    {
LABEL_69:
      if (v25 <= 0)
      {
        goto LABEL_68;
      }

      goto LABEL_70;
    }

    v26 = (v17 + 12 * v11++ + 17);
    while (1)
    {
      v19 = *(v26 - 5);
      v20 = *(v26 - 1);
      if (v20 == 2)
      {
        if (v19 >= v5)
        {
LABEL_51:
          v14 = 0;
LABEL_52:
          if (!*(v17 + 12 * v11 + 5) || v19 < 0)
          {
            *(v10 + v12) = 0;
            return 19;
          }

          if (v19 == v5 + 1)
          {
            if (v52)
            {
              v52 = 1;
              goto LABEL_11;
            }

            *(v10 + v12++) = 114;
            v52 = 1;
          }

          else
          {
            ++v13;
            v28 = v12 + 1;
            *(v10 + v12) = 77;
            sqlite3_snprintf(6, (v10 + v28), "%d", v19);
            v10 += strlen((v10 + v28));
            v12 = v28;
          }

          ++v15;
          v29 = *(a2 + 4) + 8 * v11;
          *v29 = v15;
          *(v29 + 4) = 1;
LABEL_11:
          ++v11;
          v16 = *a2;
          if (v11 < v16)
          {
            goto LABEL_12;
          }

          if (v14)
          {
            v8 = 0;
            v30 = 0;
            v31 = 0;
            goto LABEL_87;
          }

          if (v16 < 1)
          {
LABEL_68:
            v30 = 0;
            v31 = 0;
            goto LABEL_86;
          }

LABEL_70:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          while (2)
          {
            v37 = *(a2 + 1);
            if ((*(v37 + v32) & 0x80000000) == 0 || (v38 = v37 + v32, !*(v38 + 5)))
            {
LABEL_72:
              ++v34;
              v33 += 8;
              v32 += 12;
              if (v34 >= *a2)
              {
                v31 = v35 != 0;
                v30 = v36 != 0;
LABEL_86:
                v8 = 1;
LABEL_87:
                *(v10 + v12) = 0;
                if (a2[4] == 1)
                {
                  v41 = *(a2 + 3);
                  if (*v41 == v2[8] + 1 && v13 > 0)
                  {
                    v51 = *(v41 + 4);
                    a2[15] = 1;
                    if (v51)
                    {
                      v43 = 160;
                    }

                    else
                    {
                      v43 = 32;
                    }

LABEL_95:
                    if (v8)
                    {
                      v44 = v31 && v30;
                      v45 = v31 || v30;
                      v46 = 10000.0;
                      if (!v13)
                      {
                        v46 = 1000000.0;
                      }

                      v47 = 7500.0;
                      if (!v13)
                      {
                        v47 = 750000.0;
                      }

                      if (v45)
                      {
                        v46 = v47;
                      }

                      v48 = 5000.0;
                      if (!v13)
                      {
                        v48 = 250000.0;
                      }

                      if (v44 == 1)
                      {
                        v46 = v48;
                      }

                      *(a2 + 8) = v46;
                      goto LABEL_110;
                    }

                    v46 = 1000.0;
                    v49 = 10.0;
                    if (v13)
                    {
                      v49 = 1000.0;
                    }

                    *(a2 + 8) = v49;
                    if (v13)
                    {
LABEL_110:
                      if (v13 >= 2)
                      {
                        v50 = v13 - 1;
                        do
                        {
                          v46 = v46 * 0.4;
                          --v50;
                        }

                        while (v50);
                        *(a2 + 8) = v46;
                      }
                    }

                    else
                    {
                      a2[20] |= 1u;
                    }

                    result = 0;
                    a2[10] = v43;
                    return result;
                  }

                  if (*v41 == -1)
                  {
                    if (!*(v41 + 4))
                    {
                      a2[15] = 1;
                      v43 = 64;
                      goto LABEL_95;
                    }

                    if (!v2[27])
                    {
                      a2[15] = 1;
                      v43 = 192;
                      goto LABEL_95;
                    }
                  }
                }

                v43 = 0;
                goto LABEL_95;
              }

              continue;
            }

            break;
          }

          v39 = (((*(v38 + 4) - 4) >> 2) | ((*(v38 + 4) - 4) << 6));
          if (v39 > 2)
          {
            if (v39 != 7)
            {
              if (v39 != 3)
              {
                goto LABEL_72;
              }

              goto LABEL_81;
            }
          }

          else if (v39)
          {
            if (v39 != 1)
            {
              goto LABEL_72;
            }

LABEL_81:
            if (v35)
            {
              goto LABEL_72;
            }

            v35 = 1;
            v40 = 60;
LABEL_71:
            *(v10 + v12++) = v40;
            *(*(a2 + 4) + v33) = ++v15;
            goto LABEL_72;
          }

          if (v36)
          {
            goto LABEL_72;
          }

          v36 = 1;
          v40 = 62;
          goto LABEL_71;
        }
      }

      else if (v20 == 64)
      {
        goto LABEL_51;
      }

      if (!*v26)
      {
        v14 = 0;
        goto LABEL_11;
      }

      if ((v19 & 0x80000000) == 0 && v19 < v5)
      {
        v27 = v2[41];
        if (v27 == 65)
        {
          if ((v20 - 65) <= 1)
          {
            goto LABEL_61;
          }
        }

        else if (v27 == 66 && v20 == 66)
        {
LABEL_61:
          v14 = 0;
LABEL_29:
          if (v20 == 65)
          {
            v23 = 76;
          }

          else
          {
            v23 = 71;
          }

          v24 = v12 + 1;
          *(v10 + v12) = v23;
          sqlite3_snprintf(6, (v10 + v24), "%d", v19);
          v10 += strlen((v10 + v24));
          *(*(a2 + 4) + 8 * v11) = ++v15;
          ++v13;
          v12 = v24;
          goto LABEL_11;
        }
      }

      if (v20 == 2 && v19 < 0)
      {
        goto LABEL_27;
      }

      ++v11;
      v25 = *a2;
      v26 += 12;
      if (v11 >= v25)
      {
        goto LABEL_69;
      }
    }
  }

  return result;
}

uint64_t sub_1819CF308(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    sub_1819D79B0(*(a1 + 32));
    sub_1819D8F54(*(v1 + 40));
    sub_1819D6A90(*(v1 + 24));
    v2 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_7:
      (*v2)(v1);
      return 0;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
    --qword_1ED456A90;
    off_1ED452EB0(v1);
    v1 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v2 = &xmmword_1ED452F28;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_1819CF3D4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 24);
  result = sub_1819D7DA4(*v2, 0, "DROP TABLE IF EXISTS %Q.'%q_data';DROP TABLE IF EXISTS %Q.'%q_idx';DROP TABLE IF EXISTS %Q.'%q_config';", *(v2 + 16), *(v2 + 24), *(v2 + 16), *(v2 + 24), *(v2 + 16), *(v2 + 24));
  if (!result)
  {
    if (!*(v2 + 104) || (result = sub_1819D7DA4(*v2, 0, "DROP TABLE IF EXISTS %Q.'%q_docsize';", *(v2 + 16), *(v2 + 24)), !result))
    {
      if (*(v2 + 72) || (result = sub_1819D7DA4(*v2, 0, "DROP TABLE IF EXISTS %Q.'%q_content';", *(v2 + 16), *(v2 + 24)), !result))
      {
        sub_1819D79B0(*(v1 + 32));
        sub_1819D8F54(*(v1 + 40));
        sub_1819D6A90(*(v1 + 24));
        v4 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
          --qword_1ED456A90;
          off_1ED452EB0(v1);
          v1 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            return 0;
          }

          v4 = &xmmword_1ED452F28;
        }

        (*v4)(v1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1819CF520(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  result = sub_1819D9FD4(a1);
  if (result)
  {
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 32);
    if (sqlite3_initialize())
    {
      v6 = 0;
    }

    else
    {
      v8 = 4 * v7;
      v9 = sub_181902484(4 * v7 + 184, 0x10B004012A18D67);
      v6 = v9;
      if (v9)
      {
        v10 = *(a1 + 48);
        bzero(v9, v8 + 184);
        result = 0;
        v6[1] = *(v10 + 88);
        v6[2] = v6 + 23;
        *(v10 + 88) = v6;
        v11 = *(v10 + 56) + 1;
        *(v10 + 56) = v11;
        v6[3] = v11;
        goto LABEL_8;
      }
    }

    result = 7;
  }

LABEL_8:
  *a2 = v6;
  return result;
}

uint64_t sub_1819CF5D4(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = *a1;
    v3.n128_f64[0] = sub_1819DA320(a1);
    v4 = (*(v2 + 48) + 88);
    do
    {
      v5 = v4;
      v6 = *v4;
      v4 = (*v4 + 8);
    }

    while (v6 != v1);
    *v5 = v1[1];
    v7 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_9;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v1);
    --qword_1ED456A90;
    off_1ED452EB0(v1);
    v1 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v7 = &xmmword_1ED452F28;
LABEL_9:
      (*v7)(v1, v3);
    }
  }

  return 0;
}

uint64_t sub_1819CF6B4(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = a1;
  v8 = *a1;
  v9 = *(*a1 + 24);
  v10 = *(v9 + 248);
  v11 = *(v9 + 240);
  v162 = 0;
  v12 = a1 + 32;
  if (*(a1 + 32))
  {
    sub_1819DA320(a1);
    *(v12 + 144) = 0;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
  }

  v148 = v12;
  v149 = v11;
  *v159 = v9;
  v151 = v8;
  v152 = (v8 + 16);
  *(v9 + 248) = v8 + 16;
  v150 = v10;
  if (a4 < 1)
  {
    v155 = 0;
    v156 = 0;
    v153 = 0;
    v154 = 0;
LABEL_162:
    v102 = (a2 >> 7) & 1;
    *(v7 + 36) = v102;
    if (v156)
    {
      v103 = v156;
    }

    else
    {
      v103 = v154;
    }

    if (v156)
    {
      v104 = v156;
    }

    else
    {
      v104 = v155;
    }

    if ((a2 & 0x80) == 0)
    {
      if (!v103)
      {
        v107 = NAN;
        v106 = v151;
        goto LABEL_184;
      }

      v105 = *(v103 + 20);
      v106 = v151;
      if ((0x4000000040004uLL >> v105))
      {
        sub_18190FC94(v103, 0);
        v105 = *(v103 + 20);
        if ((0x50505050uLL >> (v105 & 0x3F)))
        {
LABEL_172:
          if ((v105 & 0x24) != 0)
          {
            v107 = *v103;
          }

          else if ((v105 & 8) != 0)
          {
            v138 = *v103;
            if (*v103 >= -9.22337204e18)
            {
              if (v138 <= 9.22337204e18)
              {
                *&v107 = v138;
              }

              else
              {
                v107 = NAN;
              }
            }

            else
            {
              v107 = -0.0;
            }
          }

          else if ((v105 & 0x12) != 0 && *(v103 + 8))
          {
            v107 = COERCE_DOUBLE(sub_18193CFCC(v103));
          }

          else
          {
            v107 = 0.0;
          }

LABEL_184:
          *(v7 + 48) = v107;
          if (v104)
          {
            v110 = *(v104 + 20);
            if ((0x4000000040004uLL >> v110))
            {
              sub_18190FC94(v104, 0);
              v110 = *(v104 + 20);
              if ((0x50505050uLL >> (v110 & 0x3F)))
              {
                goto LABEL_187;
              }
            }

            else if ((0x50505050uLL >> (v110 & 0x3F)))
            {
LABEL_187:
              if ((v110 & 0x24) != 0)
              {
                v111 = *v104;
LABEL_198:
                v113 = 40;
                goto LABEL_202;
              }

              if ((v110 & 8) == 0)
              {
                if ((v110 & 0x12) != 0 && *(v104 + 8))
                {
                  v111 = COERCE_DOUBLE(sub_18193CFCC(v104));
                }

                else
                {
                  v111 = 0.0;
                }

                goto LABEL_198;
              }

              v140 = *v104;
              v113 = 40;
              v141 = 0x7FFFFFFFFFFFFFFFLL;
              v142 = 40;
              v143 = *v104 <= 9.22337204e18;
              v144 = *v104;
              v145 = 40;
              goto LABEL_271;
            }
          }

          v111 = -0.0;
          goto LABEL_198;
        }
      }

      else if ((0x50505050uLL >> (v105 & 0x3F)))
      {
        goto LABEL_172;
      }

      v107 = NAN;
      goto LABEL_184;
    }

    if (!v103)
    {
      v109 = 0x7FFFFFFFFFFFFFFFLL;
      v106 = v151;
      goto LABEL_191;
    }

    v108 = *(v103 + 20);
    v106 = v151;
    if ((0x4000000040004uLL >> v108))
    {
      sub_18190FC94(v103, 0);
      v108 = *(v103 + 20);
      if ((0x50505050uLL >> (v108 & 0x3F)))
      {
LABEL_177:
        if ((v108 & 0x24) != 0)
        {
          v109 = *v103;
        }

        else if ((v108 & 8) != 0)
        {
          v139 = *v103;
          if (*v103 >= -9.22337204e18)
          {
            if (v139 <= 9.22337204e18)
            {
              v109 = v139;
            }

            else
            {
              v109 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v109 = 0x8000000000000000;
          }
        }

        else if ((v108 & 0x12) != 0 && *(v103 + 8))
        {
          v109 = sub_18193CFCC(v103);
        }

        else
        {
          v109 = 0;
        }

LABEL_191:
        *(v7 + 40) = v109;
        if (v104)
        {
          v112 = *(v104 + 20);
          if ((0x4000000040004uLL >> v112))
          {
            sub_18190FC94(v104, 0);
            v112 = *(v104 + 20);
            if ((0x50505050uLL >> (v112 & 0x3F)))
            {
LABEL_194:
              if ((v112 & 0x24) != 0)
              {
                v111 = *v104;
              }

              else
              {
                if ((v112 & 8) != 0)
                {
                  v140 = *v104;
                  v113 = 48;
                  v141 = 0x7FFFFFFFFFFFFFFFLL;
                  v142 = 48;
                  v143 = *v104 <= 9.22337204e18;
                  v144 = *v104;
                  v145 = 48;
LABEL_271:
                  if (v143)
                  {
                    v142 = v145;
                  }

                  if (v143)
                  {
                    v141 = v144;
                  }

                  if (v140 < -9.22337204e18)
                  {
                    v111 = -0.0;
                  }

                  else
                  {
                    v113 = v142;
                    v111 = *&v141;
                  }

LABEL_202:
                  *(v7 + v113) = v111;
                  v114 = *(v106 + 32);
                  v115 = sub_1819E25BC(v114);
                  sub_1819D8AE8(v115);
                  v23 = *(v114 + 60);
                  *(v114 + 60) = 0;
                  if (v23)
                  {
                    goto LABEL_212;
                  }

                  v116 = v151;
                  v117 = *(v151 + 56);
                  if (v117)
                  {
                    v118 = 40;
                    if (*(v117 + 36))
                    {
                      v119 = 40;
                    }

                    else
                    {
                      v119 = 48;
                    }

                    if (*(v117 + 36))
                    {
                      v118 = 48;
                    }

                    *(v7 + 48) = *(v117 + v119);
                    *(v7 + 40) = *(v117 + v118);
                    *(v7 + 32) = 2;
                    *(v7 + 64) = *(v117 + 64);
LABEL_210:
                    v120 = sub_1819DCAE0(v116, v7, v102);
LABEL_211:
                    v23 = v120;
                    goto LABEL_212;
                  }

                  if (!*(v7 + 64))
                  {
                    if (*(v9 + 88))
                    {
                      if (v156)
                      {
                        v131 = 6;
                      }

                      else
                      {
                        v131 = 5;
                      }

                      *v148 = v131;
                      v132 = *(v151 + 40);
                      if (v156)
                      {
                        v120 = sub_1819D907C(*(v151 + 40), 2, (v7 + 56), v152);
                        if (v120)
                        {
                          goto LABEL_211;
                        }

                        *(v132 + 64) = 0;
                        sqlite3_bind_value(*(v7 + 56), 1, v156);
                      }

                      else
                      {
                        v146 = *(v7 + 36);
                        v120 = sub_1819D907C(*(v151 + 40), v146 != 0, (v7 + 56), v152);
                        if (v120)
                        {
                          goto LABEL_211;
                        }

                        *(v132 + 8 * (v146 != 0) + 48) = 0;
                        sqlite3_bind_int64(*(v7 + 56), 1, *(v7 + 40));
                        sqlite3_bind_int64(*(v7 + 56), 2, *(v7 + 48));
                      }

                      v120 = sub_1819D0768(v7);
                      goto LABEL_211;
                    }

                    sub_1819DCD80(v151, "%s: table does not support scanning", *(v9 + 24));
LABEL_295:
                    v23 = 1;
                    goto LABEL_212;
                  }

                  if (!v153)
                  {
                    v137 = *(v9 + 216);
                    if (v137)
                    {
                      *(v7 + 96) = v137;
                      *(v7 + 104) = *(v9 + 224);
                    }

                    else
                    {
                      *(v7 + 96) = "bm25";
                      *(v7 + 104) = 0;
                    }

                    goto LABEL_300;
                  }

                  v128 = *(v153 + 20);
                  if ((~v128 & 0x202) != 0 || *(v153 + 22) != 1)
                  {
                    if (v128)
                    {
                      goto LABEL_292;
                    }

                    v129 = sub_18193CB70(v153, 1);
                    v116 = v151;
                  }

                  else
                  {
                    v129 = *(v153 + 8);
                  }

                  v165 = 0;
                  v166[0] = 0;
                  if (v129)
                  {
                    v133 = v116;
                    v134 = sub_1819D9D44(v129, v166, &v165);
                    v23 = v134;
                    if (v134 != 1)
                    {
                      if (v134)
                      {
                        goto LABEL_212;
                      }

                      v116 = v133;
                      v135 = v165;
                      v136 = v166[0];
                      goto LABEL_293;
                    }

LABEL_294:
                    *(*v7 + 16) = sqlite3_mprintf("parse error in rank function: %s", v129);
                    goto LABEL_295;
                  }

                  LOWORD(v128) = *(v153 + 20);
LABEL_292:
                  v129 = 0;
                  v135 = 0;
                  v136 = 0;
                  if (((0xAAAAAAAAAAAAAAAALL >> v128) & 1) == 0)
                  {
LABEL_293:
                    *(v7 + 96) = v136;
                    *(v7 + 104) = v135;
                    *(v7 + 80) |= 0x10u;
LABEL_300:
                    if ((a2 & 0x20) != 0)
                    {
                      *(v7 + 32) = 4;
                      v120 = sub_1819DCBC4(v116, v7);
                      goto LABEL_211;
                    }

                    *(v7 + 32) = 1;
                    goto LABEL_210;
                  }

                  goto LABEL_294;
                }

                if ((v112 & 0x12) != 0 && *(v104 + 8))
                {
                  v111 = COERCE_DOUBLE(sub_18193CFCC(v104));
                }

                else
                {
                  v111 = 0.0;
                }
              }

LABEL_201:
              v113 = 48;
              goto LABEL_202;
            }
          }

          else if ((0x50505050uLL >> (v112 & 0x3F)))
          {
            goto LABEL_194;
          }
        }

        v111 = -0.0;
        goto LABEL_201;
      }
    }

    else if ((0x50505050uLL >> (v108 & 0x3F)))
    {
      goto LABEL_177;
    }

    v109 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_191;
  }

  v13 = 0;
  v14 = 0;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v161 = a4;
  v157 = v7;
  v158 = a3 + 1;
  v15 = a5;
  while (1)
  {
    v16 = *(a3 + v14++);
    if (v16 <= 75)
    {
      if (v16 == 60)
      {
        v154 = *(v15 + 8 * v13);
        goto LABEL_6;
      }

      if (v16 == 61)
      {
        v156 = *(v15 + 8 * v13);
        goto LABEL_6;
      }

      if (v16 != 71)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v16 != 76)
    {
      break;
    }

LABEL_16:
    v17 = *(v15 + 8 * v13);
    if (!v17)
    {
      goto LABEL_27;
    }

    v18 = *(v17 + 20);
    if ((~v18 & 0x202) == 0 && *(v17 + 22) == 1)
    {
      v19 = *(v17 + 8);
      goto LABEL_28;
    }

    if (v18)
    {
LABEL_27:
      v19 = 0;
    }

    else
    {
      v19 = sub_18193CB70(v17, 1);
    }

LABEL_28:
    v25 = 0;
    v26 = *(a3 + v14);
    v27 = (v158 + v14);
    do
    {
      v25 = 10 * v25 + v26 - 48;
      v28 = *v27++;
      v26 = v28;
      ++v14;
    }

    while ((v28 - 48) < 0xA);
    if (!v19)
    {
      goto LABEL_138;
    }

    v29 = strlen(v19);
    if (sqlite3_initialize() || (v30 = sub_181902484((4 * v29) | 1, 0x100004077774924)) == 0)
    {
      v23 = 7;
      goto LABEL_212;
    }

    v32 = v30;
    if (v16 == 71)
    {
      v33 = 91;
    }

    else
    {
      v33 = 0;
    }

    if (v16 == 71)
    {
      v34 = 63;
    }

    else
    {
      v34 = 37;
    }

    if (v16 == 71)
    {
      v35 = 42;
    }

    else
    {
      v35 = 95;
    }

    v36.i64[0] = 0x100000001;
    v36.i64[1] = 0x100000001;
    v37.i64[0] = 0xC0C0C0C0C0C0C0C0;
    v37.i64[1] = 0xC0C0C0C0C0C0C0C0;
    v38.i64[0] = 0x8080808080808080;
    v38.i64[1] = 0x8080808080808080;
    if (v29 < 0)
    {
LABEL_92:
      v23 = 0;
      v162 = 0;
      goto LABEL_131;
    }

    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    do
    {
      if (v29 != v39)
      {
        v43 = v19[v39];
        v44 = v33 == v43 || v35 == v43;
        if (!v44 && v34 != v43)
        {
          ++v41;
          goto LABEL_46;
        }
      }

      v46 = (v41 - v40);
      if (v46 >= 1)
      {
        if (v46 >= 4)
        {
          if (v46 >= 0x20)
          {
            v49 = 0uLL;
            v47 = v46 & 0x7FFFFFE0;
            v50 = 0uLL;
            v51 = &v19[v40 + 16];
            v52 = v47;
            v53 = 0uLL;
            v54 = 0uLL;
            v55 = 0uLL;
            v56 = 0uLL;
            v57 = 0uLL;
            v58 = 0uLL;
            do
            {
              v59 = vmvnq_s8(vceqq_s8(vandq_s8(v51[-1], v37), v38));
              v60 = vmovl_u8(*v59.i8);
              v61 = vmovl_high_u8(v59);
              v62 = vmvnq_s8(vceqq_s8(vandq_s8(*v51, v37), v38));
              v63 = vmovl_u8(*v62.i8);
              v64 = vmovl_high_u8(v62);
              v54 = vaddq_s32(v54, vandq_s8(vmovl_high_u16(v61), v36));
              v53 = vaddq_s32(v53, vandq_s8(vmovl_u16(*v61.i8), v36));
              v50 = vaddq_s32(v50, vandq_s8(vmovl_high_u16(v60), v36));
              v49 = vaddq_s32(v49, vandq_s8(vmovl_u16(*v60.i8), v36));
              v58 = vaddq_s32(v58, vandq_s8(vmovl_high_u16(v64), v36));
              v57 = vaddq_s32(v57, vandq_s8(vmovl_u16(*v64.i8), v36));
              v56 = vaddq_s32(v56, vandq_s8(vmovl_high_u16(v63), v36));
              v55 = vaddq_s32(v55, vandq_s8(vmovl_u16(*v63.i8), v36));
              v51 += 2;
              v52 -= 32;
            }

            while (v52);
            v31 = vaddq_s32(vaddq_s32(v56, v50), vaddq_s32(v58, v54));
            v48 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v55, v49), vaddq_s32(v57, v53)), v31));
            if (v47 == v46)
            {
              goto LABEL_72;
            }

            if (((v41 - v40) & 0x1C) == 0)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v48 = 0;
            v47 = 0;
          }

          v65 = v47;
          v47 = v46 & 0x7FFFFFFC;
          v66 = v48;
          v67 = &v19[v65 + v40];
          v68 = v65 - v47;
          do
          {
            v69 = *v67;
            v67 += 4;
            v31.i32[0] = v69;
            v31 = vandq_s8(vmovl_u16(vmvn_s8(vceq_s16((vmovl_u8(*v31.i8).u64[0] & 0xFFC0FFC0FFC0FFC0), 0x80008000800080))), v36);
            v66 = vaddq_s32(v66, v31);
            v68 += 4;
          }

          while (v68);
          v48 = vaddvq_s32(v66);
          if (v47 != v46)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v47 = 0;
          v48 = 0;
LABEL_68:
          v70 = v46 - v47;
          v71 = &v19[v47 + v40];
          do
          {
            v72 = *v71++;
            if ((v72 & 0xC0) != 0x80)
            {
              ++v48;
            }

            --v70;
          }

          while (v70);
        }

LABEL_72:
        if (v48 >= 3)
        {
          v73 = v42 + 1;
          v30[v42] = 34;
          if (v41 <= v40)
          {
            LODWORD(v77) = v42 + 1;
          }

          else
          {
            v74 = v41 - v40;
            v75 = &v19[v40];
            do
            {
              v76 = *v75++;
              v77 = v73 + 1;
              v30[v73] = v76;
              if (v76 == 34)
              {
                v30[v77] = 34;
                LODWORD(v77) = v73 + 2;
              }

              v73 = v77;
              --v74;
            }

            while (v74);
          }

          *&v30[v77] = 8226;
          v42 = v77 + 2;
        }
      }

      v78 = &v19[v39];
      if (v33 == *v78)
      {
        v79 = v78[1] == 94 ? 3 : 2;
        v41 += v79;
        v80 = v41;
        if (v29 > v41)
        {
          while (v19[v80] != 93)
          {
            if (v29 <= ++v80)
            {
              LODWORD(v80) = v29;
              break;
            }
          }

          v41 = v80;
        }
      }

      v40 = ++v41;
LABEL_46:
      v39 = v41;
    }

    while (v29 >= v41);
    if (v42 < 1)
    {
      goto LABEL_92;
    }

    v81 = *(v9 + 116);
    if (v81)
    {
      if (v81 == 1)
      {
        v25 = *(v9 + 32);
      }

      else
      {
        v81 = 1;
      }
    }

    v30[v42] = 0;
    v23 = sub_1819DB894(v9, v81, v25, v30, &v162, *(v9 + 248));
LABEL_131:
    v99 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v32);
      --qword_1ED456A90;
      off_1ED452EB0(v32);
      v32 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v99 = &xmmword_1ED452F28;
        goto LABEL_136;
      }
    }

    else
    {
LABEL_136:
      (*v99)(v32);
    }

    v7 = v157;
    v15 = a5;
    if (v23)
    {
      goto LABEL_212;
    }

LABEL_138:
    v100 = sub_1819DC8C4((v7 + 64), v162);
    v162 = 0;
    if (v100)
    {
      v23 = v100;
      goto LABEL_232;
    }

LABEL_6:
    if (++v13 == v161)
    {
      goto LABEL_162;
    }
  }

  if (v16 != 77)
  {
    if (v16 == 114)
    {
      v153 = *(v15 + 8 * v13);
      goto LABEL_6;
    }

LABEL_20:
    v155 = *(v15 + 8 * v13);
    goto LABEL_6;
  }

  v20 = *(v15 + 8 * v13);
  v21 = sub_1819DCE5C(v9, v20);
  if (v21)
  {
    v165 = 0;
    v166[0] = 0;
    v163 = 0;
    v164 = sub_1819DCF2C(v20, v166, &v163 + 1, &v165, &v163);
    v22 = sub_1819D6A30(&v164, "%.*s", SHIDWORD(v163), v166[0]);
    v23 = v164;
    if (v164)
    {
      goto LABEL_212;
    }

    v24 = v163;
    *(v9 + 168) = v165;
    *(v9 + 176) = v24;
  }

  else
  {
    if (!v20)
    {
      goto LABEL_99;
    }

    v82 = *(v20 + 20);
    if ((~v82 & 0x202) == 0 && *(v20 + 22) == 1)
    {
      v22 = *(v20 + 8);
      goto LABEL_100;
    }

    if (v82)
    {
LABEL_99:
      v22 = 0;
    }

    else
    {
      v22 = sub_18193CB70(v20, 1);
    }
  }

LABEL_100:
  if (v22)
  {
    v83 = v22;
  }

  else
  {
    v83 = &byte_181A2878D;
  }

  v84 = *(a5 + 8 * v13);
  if (v84)
  {
    if ((*(v84 + 20) & 0x800) != 0 && *(v84 + 23) == 73)
    {
      *(v9 + 240) = 1;
    }
  }

  else
  {
    sub_1819012D0(99765);
  }

  v85 = 0;
  v86 = *(a3 + v14);
  v87 = (v158 + v14);
  do
  {
    v85 = 10 * v85 + v86 - 48;
    v88 = *v87++;
    v86 = v88;
    ++v14;
  }

  while ((v88 - 48) < 0xA);
  v89 = *v83;
  if (v89 != 42)
  {
    v23 = sub_1819DB894(v9, 0, v85, v83, &v162, v152);
    if (!v23)
    {
      v23 = sub_1819DC8C4(v157 + 8, v162);
      v162 = 0;
    }

    goto LABEL_150;
  }

  v90 = v83;
  do
  {
    v92 = *++v90;
    v91 = v92;
  }

  while (v92 == 32);
  v93 = 1;
  while ((v91 | 0x20) != 0x20)
  {
    v91 = v90[v93++];
  }

  v94 = v93 - 1;
  *v148 = 3;
  if (v93 == 3)
  {
    v97 = *v90;
    if ((v97 & 0xFFFFFFDF) == 0x49)
    {
      v97 = v90[1];
      if ((v97 & 0xFFFFFFDF) == 0x44)
      {
        goto LABEL_143;
      }

      v98 = 100;
    }

    else
    {
      v98 = 105;
    }

    if (v98 != byte_181A20298[v97])
    {
      goto LABEL_149;
    }

LABEL_143:
    v23 = 0;
    v157[11] = v157[3];
    goto LABEL_150;
  }

  if (v93 != 6)
  {
LABEL_149:
    *v152 = sqlite3_mprintf("unknown special query: %.*s", v94, v90);
    v23 = 1;
    goto LABEL_150;
  }

  v95 = *v90;
  if ((v95 & 0xFFFFFFDF) != 0x52)
  {
    v96 = 114;
    goto LABEL_147;
  }

  v95 = v90[1];
  if ((v95 & 0xFFFFFFDF) != 0x45)
  {
    v96 = 101;
    goto LABEL_147;
  }

  v95 = v90[2];
  if ((v95 & 0xFFFFFFDF) != 0x41)
  {
    v96 = 97;
    goto LABEL_147;
  }

  v95 = v90[3];
  if ((v95 & 0xFFFFFFDF) != 0x44)
  {
    v96 = 100;
LABEL_147:
    if (v96 == byte_181A20298[v95])
    {
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  v95 = v90[4];
  if ((v95 & 0xFFFFFFDF) != 0x53)
  {
    v96 = 115;
    goto LABEL_147;
  }

LABEL_148:
  v23 = 0;
  v157[11] = *(*(v151 + 32) + 128);
LABEL_150:
  if (v21)
  {
    v101 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_156;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v83);
    --qword_1ED456A90;
    off_1ED452EB0(v83);
    v83 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v101 = &xmmword_1ED452F28;
LABEL_156:
      (*v101)(v83);
    }

    *(v9 + 168) = 0;
    *(v9 + 176) = 0;
  }

  if (v89 != 42)
  {
    v7 = v157;
    v15 = a5;
    if (!v23)
    {
      goto LABEL_6;
    }
  }

LABEL_212:
  v121 = v162;
  if (v162)
  {
    sub_1819DA880(*(v162 + 16));
    v122 = *(v121 + 32);
    v123 = v149;
    if (v122)
    {
      v124 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_219;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v122);
      --qword_1ED456A90;
      off_1ED452EB0(v122);
      v122 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v124 = &xmmword_1ED452F28;
LABEL_219:
        (*v124)(v122);
      }
    }

    v125 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v126 = *v159;
      v127 = v150;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v121);
      --qword_1ED456A90;
      off_1ED452EB0(v121);
      v121 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v125 = &xmmword_1ED452F28;
        goto LABEL_226;
      }
    }

    else
    {
      v126 = *v159;
      v127 = v150;
LABEL_226:
      (*v125)(v121);
    }
  }

  else
  {
LABEL_232:
    v126 = *v159;
    v127 = v150;
    v123 = v149;
  }

  *(v126 + 248) = v127;
  *(v126 + 240) = v123;
  return v23;
}

uint64_t sub_1819D0768(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == 1)
  {
    if (!*(*(*a1 + 24) + 108) || (v3 = *(a1 + 64), *(v3 + 28) < 1))
    {
LABEL_16:
      if ((*(a1 + 80) & 0x20) == 0)
      {
        v9 = 0;
        result = 0;
        goto LABEL_37;
      }

      v12 = *(a1 + 36);
      v13 = *(a1 + 64);
      v14 = *(v13 + 16);
      v15 = *(v14 + 24);
      *v13 = *(*a1 + 32);
      *(v13 + 24) = v12;
      result = sub_1819E2F50(v13, v14);
      if (result)
      {
        v9 = 0;
        v16 = *(a1 + 64);
        goto LABEL_54;
      }

      if (*(v14 + 4))
      {
        goto LABEL_24;
      }

      v24 = *(v14 + 24);
      if (*(v13 + 24))
      {
        if (v24 > v15)
        {
          goto LABEL_36;
        }
      }

      else if (v24 < v15)
      {
LABEL_36:
        result = (*(v14 + 16))(v13, v14, 1, v15);
        goto LABEL_47;
      }

LABEL_24:
      result = 0;
LABEL_47:
      while (*(v14 + 8) && result == 0)
      {
        result = (*(v14 + 16))(v13, v14, 0, 0);
      }

      v16 = *(a1 + 64);
      if (result)
      {
        v9 = 0;
      }

      else
      {
        v9 = v15 != *(*(v16 + 16) + 24);
      }

LABEL_54:
      v30 = *(a1 + 80) & 0xFFFFFF91;
      *(a1 + 80) = v30 | 0x4E;
      if (*(*(v16 + 16) + 4))
      {
        v11 = v30 | 0x4F;
        goto LABEL_56;
      }

LABEL_37:
      if (result | v9)
      {
        return result;
      }

      v25 = *(a1 + 64);
      v26 = *(a1 + 48);
      v27 = *(v25 + 16);
      do
      {
        result = (*(v27 + 16))(v25, v27, 0, 0);
      }

      while (*(v27 + 8));
      v28 = *(v27 + 24);
      if (*(v25 + 24))
      {
        if (v28 >= v26)
        {
LABEL_43:
          v11 = *(*(*(a1 + 64) + 16) + 4) | *(a1 + 80) | 0x4E;
          goto LABEL_56;
        }
      }

      else if (v28 <= v26)
      {
        goto LABEL_43;
      }

      *(v27 + 4) = 1;
      goto LABEL_43;
    }

    v4 = 0;
    v5 = *(v3 + 32);
    do
    {
      v6 = *(v5 + 8 * v4) + 32;
      do
      {
        v7 = *(v6 + 24);
        if (v7)
        {
          v8 = *(v7 + 24);
          if (v8)
          {
            if (!*(v7 + 72) || *(**(v7 + 32) + 116))
            {
              *(v8 + 4) = 0;
            }
          }
        }

        v6 = *(v6 + 32);
      }

      while (v6);
      ++v4;
    }

    while (v4 < *(v3 + 28));
    v2 = *(a1 + 32);
  }

  if (v2 <= 2)
  {
    goto LABEL_16;
  }

  if (v2 == 4)
  {

    return sub_1819F16C0(a1);
  }

  else
  {
    if (v2 == 3)
    {
      result = 0;
      v11 = *(a1 + 80) | 1;
LABEL_56:
      *(a1 + 80) = v11;
      return result;
    }

    v17 = *(*a1 + 24);
    ++*(v17 + 184);
    v18 = sqlite3_step(*(a1 + 56));
    --*(v17 + 184);
    v19 = *(a1 + 80);
    if (v18 == 100)
    {
      result = 0;
      v11 = v19 | 4;
      goto LABEL_56;
    }

    *(a1 + 80) = v19 | 1;
    result = sqlite3_reset(*(a1 + 56));
    if (result)
    {
      v20 = *v17;
      v21 = result;
      v22 = sqlite3_errmsg(v20);
      v23 = sqlite3_mprintf("%s", v22);
      result = v21;
      *(*a1 + 16) = v23;
    }
  }

  return result;
}

uint64_t sub_1819D0A98(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(v5 + 32);
  if (v6 == 3)
  {
    if (v7 != a3 || !a2)
    {
      return 0;
    }

    v8 = *(a1 + 88);
    goto LABEL_8;
  }

  if (v7 == a3)
  {
    if (!a2)
    {
      return 0;
    }

    v8 = *(a1 + 24);
LABEL_8:
    v9 = *a2;
    if ((*(*a2 + 20) & 0x9000) != 0)
    {
      sub_18193D288(*a2, v8);
      return 0;
    }

    result = 0;
    *v9 = v8;
    *(v9 + 20) = 4;
    return result;
  }

  v10 = a1;
  if (v7 + 1 != a3)
  {
    if (a2)
    {
      if (*a2)
      {
        if ((~*(*a2 + 20) & 0x401) == 0)
        {
          return 0;
        }
      }

      else
      {
        v19 = a3;
        sub_1819012D0(99912);
        a3 = v19;
        a1 = v10;
      }
    }

    if (*(v5 + 72) == 1)
    {
      return 0;
    }

    v20 = a3;
    *(v5 + 248) = v4 + 16;
    result = sub_1819F1838(a1, 1);
    if (!result)
    {
      v21 = sqlite3_column_value(*(v10 + 56), v20 + 1);
      if (*(v5 + 112) && *(v5 + 72) == 2 && sub_1819DCE5C(v5, v21))
      {
        pStmt = 0;
        v112 = 0;
        result = sub_1819F1A64(v5, *(v10 + 56), v20, &pStmt, &v112);
        if (a2 && !result)
        {
          v22 = result;
          sub_18190B23C(a2, pStmt, v112, 1u, 0xFFFFFFFFFFFFFFFFLL);
          result = v22;
        }

        *(v5 + 168) = 0;
        *(v5 + 176) = 0;
      }

      else
      {
        sqlite3_result_value(a2, v21);
        result = 0;
      }
    }

    *(v5 + 248) = 0;
    return result;
  }

  if (v6 == 1 || v6 == 4)
  {
    i = *(a1 + 112);
    if (i)
    {
LABEL_17:
      v13 = *(a1 + 120);
      v14 = *(a1 + 128);
      *(a1 + 144) = i;
      v15 = a1;
      (*(i + 24))(&unk_1EEF90788, a1, a2, v13, v14);
      result = 0;
      *(v15 + 144) = 0;
      return result;
    }

    v112 = 0;
    v23 = *(a1 + 96);
    if (!*(a1 + 104))
    {
LABEL_174:
      for (i = *(*(v4 + 48) + 64); i; i = *(i + 40))
      {
        v103 = *(i + 8);
        if (v23)
        {
          if (v103)
          {
            for (j = v23; ; ++j)
            {
              if (*j == *v103)
              {
                if (!*j)
                {
                  goto LABEL_185;
                }
              }

              else if (byte_181A20298[*j] != byte_181A20298[*v103])
              {
                break;
              }

              ++v103;
            }
          }
        }

        else if (!v103)
        {
LABEL_185:
          *(a1 + 112) = i;
          goto LABEL_17;
        }
      }

      v105 = sqlite3_mprintf("no such function: %s", v23);
      a1 = v10;
      *(v4 + 16) = v105;
      v66 = 1;
LABEL_187:
      *(a1 + 112) = 0;
      return v66;
    }

    v24 = sub_1819D6A30(&v112, "SELECT %s", *(a1 + 104));
    if (!v24)
    {
      v66 = v112;
      goto LABEL_173;
    }

    v26 = v24;
    pStmt = 0;
    v27 = sub_1818954B4(*v5, v24, 0xFFFFFFFFLL, 129, 0, &pStmt, 0, v25);
    v28 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v29 = v27;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v26);
      --qword_1ED456A90;
      off_1ED452EB0(v26);
      v26 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
LABEL_147:
        v93 = v29;
        if (!v29)
        {
          v94 = sqlite3_step(pStmt);
          v95 = pStmt;
          if (v94 == 100)
          {
            if (pStmt)
            {
              v96 = *(*pStmt + 24);
              if (v96)
              {
                xmmword_1ED452F18(v96);
                v97 = *(*v95 + 24);
                v98 = v95[130];
                if (v97)
                {
                  xmmword_1ED452F28(v97);
                }
              }

              else
              {
                v98 = *(pStmt + 130);
              }
            }

            else
            {
              v98 = 0;
            }

            *(v10 + 120) = v98;
            if (sqlite3_initialize() || (v100 = sub_181902484((8 * v98), 1913357809)) == 0)
            {
              if (v98)
              {
                v99 = v10;
                *(v10 + 128) = 0;
                v93 = 7;
LABEL_171:
                *(v99 + 136) = pStmt;
                goto LABEL_172;
              }

              v101 = 0;
            }

            else
            {
              v101 = v100;
              bzero(v100, (8 * v98));
            }

            v99 = v10;
            *(v10 + 128) = v101;
            if (*(v10 + 120) >= 1)
            {
              v102 = 0;
              do
              {
                *(*(v10 + 128) + 8 * v102) = sqlite3_column_value(pStmt, v102);
                ++v102;
              }

              while (v102 < *(v10 + 120));
              v99 = v10;
            }

            v93 = 0;
            goto LABEL_171;
          }

          v93 = sqlite3_finalize(pStmt);
        }

LABEL_172:
        v66 = v93;
LABEL_173:
        a1 = v10;
        if (v66)
        {
          goto LABEL_187;
        }

        goto LABEL_174;
      }

      v28 = &xmmword_1ED452F28;
    }

    else
    {
      v29 = v27;
    }

    (*v28)(v26);
    goto LABEL_147;
  }

  if (v6 != 2)
  {
    return 0;
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    v18 = *(v17 + 28);
  }

  else
  {
    v18 = 0;
  }

  v30 = *(v5 + 116);
  if (!v30)
  {
    v108 = v18;
    v52 = (v18 - 1);
    if (v18 > 1)
    {
      v53 = 0;
      v54 = 0;
      v33 = 0;
      v34 = 0;
      while (1)
      {
        v56 = *(a1 + 64);
        v57 = *(*(v56 + 32) + 8 * v53);
        if (*(*v57 + 4) || *(*v57 + 24) != *(*(v56 + 16) + 24))
        {
          v58 = 0;
        }

        else
        {
          v58 = v57[4];
        }

        v59 = (v33 + 9);
        if (v59 <= v54)
        {
          goto LABEL_95;
        }

        v60 = v33;
        LODWORD(v61) = v54 ? v54 : 64;
        v61 = v61;
        do
        {
          v62 = v61;
          v61 *= 2;
        }

        while (v62 < v59);
        if (!sqlite3_initialize())
        {
          v63 = sub_18190287C(v34, v62, 688041480);
          if (v63)
          {
            break;
          }
        }

        a1 = v10;
        v33 = v60;
LABEL_80:
        if (++v53 == v52)
        {
          goto LABEL_128;
        }
      }

      v34 = v63;
      v54 = v62;
      a1 = v10;
      LODWORD(v33) = v60;
LABEL_95:
      v64 = &v34[v33];
      if (v58 <= 0x7F)
      {
        *v64 = v58;
        v55 = 1;
      }

      else if (v58 >> 14)
      {
        v65 = v33;
        v55 = sub_1819436D0(&v34[v33], v58);
        LODWORD(v33) = v65;
        a1 = v10;
      }

      else
      {
        *v64 = (v58 >> 7) | 0x80;
        v64[1] = v58 & 0x7F;
        v55 = 2;
      }

      v33 = (v55 + v33);
      goto LABEL_80;
    }

    v34 = 0;
    LODWORD(v33) = 0;
    v54 = 0;
LABEL_128:
    if (v108 < 1)
    {
LABEL_154:
      if (!a2)
      {
        goto LABEL_189;
      }

LABEL_155:
      if ((v33 & 0x80000000) != 0)
      {
        goto LABEL_189;
      }

      goto LABEL_156;
    }

    v83 = 0;
    v84 = v108;
    while (1)
    {
      v86 = *(a1 + 64);
      v87 = *(*(v86 + 32) + 8 * v83);
      if (*(*v87 + 4))
      {
        goto LABEL_133;
      }

      if (*(*v87 + 24) != *(*(v86 + 16) + 24))
      {
        goto LABEL_133;
      }

      v88 = *(v87 + 16);
      if (!v88)
      {
        goto LABEL_133;
      }

      v89 = *(v87 + 8);
      v90 = (v88 + v33);
      if (v90 > v54)
      {
        v110 = v33;
        if (v54)
        {
          LODWORD(v91) = v54;
        }

        else
        {
          LODWORD(v91) = 64;
        }

        v91 = v91;
        do
        {
          v92 = v91;
          v91 *= 2;
        }

        while (v92 < v90);
        if (sqlite3_initialize() || (v85 = sub_18190287C(v34, v92, 688041480)) == 0)
        {
          a1 = v10;
          LODWORD(v33) = v110;
          goto LABEL_133;
        }

        v34 = v85;
        v54 = v92;
        LODWORD(v33) = v110;
      }

      memcpy(&v34[v33], v89, v88);
      LODWORD(v33) = v90;
      a1 = v10;
LABEL_133:
      if (++v83 == v84)
      {
        goto LABEL_154;
      }
    }
  }

  if (v30 != 2)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

    LODWORD(v33) = 0;
    v34 = 0;
LABEL_156:
    sub_18190B23C(a2, v34, v33, 0, sqlite3_free);
    return 0;
  }

  v107 = v18;
  if (v18 >= 2)
  {
    v31 = 0;
    LODWORD(v32) = 0;
    LODWORD(v33) = 0;
    v34 = 0;
    v35 = (v18 - 1);
    while (1)
    {
      v112 = 0;
      v38 = *(a1 + 64);
      v39 = *(*(v38 + 32) + 8 * v31);
      if (*(*v39 + 4) || (v40 = *(*v39 + 24), v40 != *(*(v38 + 16) + 24)) || *(v39 + 16) < 1)
      {
        v44 = 0;
      }

      else
      {
        v41 = *(v39 + 64);
        if (v41)
        {
          v42 = v33;
          v43 = sub_1819E1AA4(v39 + 32, v40, v41 + 40, &pStmt, &v112);
          LODWORD(v33) = v42;
          a1 = v10;
          v44 = v112;
          v45 = v43 == 0;
          goto LABEL_62;
        }

        v44 = *(*(v39 + 56) + 16);
      }

      v45 = 1;
LABEL_62:
      v46 = (v33 + 9);
      if (v46 > v32)
      {
        v47 = v33;
        if (v32)
        {
          LODWORD(v48) = v32;
        }

        else
        {
          LODWORD(v48) = 64;
        }

        v48 = v48;
        do
        {
          v32 = v48;
          v48 *= 2;
        }

        while (v32 < v46);
        if (sqlite3_initialize() || (v49 = sub_18190287C(v34, v32, 688041480)) == 0)
        {
          LODWORD(v33) = v47;
          goto LABEL_154;
        }

        v34 = v49;
        a1 = v10;
        LODWORD(v33) = v47;
      }

      v50 = &v34[v33];
      if (v44 <= 0x7F)
      {
        *v50 = v44;
        v36 = 1;
      }

      else if (v44 >> 14)
      {
        v51 = v33;
        v36 = sub_1819436D0(&v34[v33], v44);
        LODWORD(v33) = v51;
        a1 = v10;
      }

      else
      {
        *v50 = (v44 >> 7) | 0x80;
        v50[1] = v44 & 0x7F;
        v36 = 2;
      }

      v33 = (v36 + v33);
      if (++v31 >= v35 || !v45)
      {
        goto LABEL_103;
      }
    }
  }

  v34 = 0;
  v33 = 0;
  LODWORD(v32) = 0;
  v45 = 1;
LABEL_103:
  if (!v45 || v107 < 1)
  {
    goto LABEL_154;
  }

  v67 = 0;
  v68 = v107;
  while (1)
  {
    pStmt = 0;
    v112 = 0;
    v69 = *(a1 + 64);
    v70 = *(*(v69 + 32) + 8 * v67);
    if (*(*v70 + 4) || (v71 = *(*v70 + 24), v71 != *(*(v69 + 16) + 24)) || *(v70 + 16) < 1)
    {
      v76 = 0;
      goto LABEL_112;
    }

    v72 = *(v70 + 64);
    if (v72)
    {
      p_pStmt = &pStmt;
      v74 = &v112;
      v75 = v33;
      v76 = sub_1819E1AA4(v70 + 32, v71, v72 + 40, &pStmt, &v112);
      v33 = v75;
      a1 = v10;
    }

    else
    {
      v76 = 0;
      v77 = *(v70 + 56);
      p_pStmt = (v77 + 8);
      v74 = (v77 + 16);
    }

    v78 = *v74;
    if (!v78)
    {
      goto LABEL_112;
    }

    v79 = *p_pStmt;
    v80 = (v78 + v33);
    if (v80 > v32)
    {
      break;
    }

LABEL_126:
    memcpy(&v34[v33], v79, v78);
    v33 = v80;
    a1 = v10;
LABEL_112:
    if (!v76 && ++v67 < v68)
    {
      continue;
    }

    goto LABEL_154;
  }

  v109 = v33;
  if (v32)
  {
    LODWORD(v81) = v32;
  }

  else
  {
    LODWORD(v81) = 64;
  }

  v81 = v81;
  do
  {
    v32 = v81;
    v81 *= 2;
  }

  while (v32 < v80);
  if (!sqlite3_initialize())
  {
    v82 = sub_18190287C(v34, v32, 688041480);
    if (v82)
    {
      v34 = v82;
      LODWORD(v33) = v109;
      goto LABEL_126;
    }
  }

  LODWORD(v33) = v109;
  if (a2)
  {
    goto LABEL_155;
  }

LABEL_189:
  if (v34)
  {
    v106 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_195;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v34);
    --qword_1ED456A90;
    off_1ED452EB0(v34);
    v34 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v106 = &xmmword_1ED452F28;
LABEL_195:
      (*v106)(v34);
    }
  }

  if (a2)
  {
    *(a2 + 36) = 18;
    sub_1818900D0(*a2, "string or blob too big", -1, 1u, 0);
  }

  return 0;
}

uint64_t sub_1819D1530(uint64_t a1, sqlite3_int64 *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      v3 = *(v4 + 8);
    }

    else if (v2 < 5)
    {
      v3 = *(*(*(a1 + 64) + 16) + 24);
    }

    else
    {
      v5 = a2;
      v3 = sqlite3_column_int64(*(a1 + 56), 0);
      a2 = v5;
    }
  }

  *a2 = v3;
  return 0;
}

uint64_t sub_1819D15A8(void *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a1[3];
  v161 = 0;
  v9 = v8;
  if (!*(v8 + 196))
  {
    result = sub_1819D6494(v8, *(v8 + 192));
    v161 = result;
    if (result)
    {
      return result;
    }

    v9 = a1[3];
  }

  *(v9 + 248) = a1 + 2;
  for (i = *(a1[6] + 88); i; i = *(i + 8))
  {
    if (*(i + 32) == 1 && *i == a1)
    {
      *(i + 80) |= 0x20u;
    }
  }

  if (!*a3)
  {
    sub_1819012D0(99877);
    v12 = 0;
    if (!*(v8 + 72))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v11 = *(*a3 + 20);
  if (((0xAAAAAAAAAAAAAAAALL >> v11) & 1) == 0)
  {
    v12 = byte_181A203AA[v11 & 0x3F];
    if (!*(v8 + 72))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v14 = a3[*(v8 + 32) + 2];
  if (!v14)
  {
    sub_1819012D0(99877);
    v14 = a3[*(v8 + 32) + 2];
    if (!v14)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  if (((0xAAAAAAAAAAAAAAAALL >> *(v14 + 20)) & 1) == 0)
  {
LABEL_26:
    v18 = *(v14 + 20);
    if ((~v18 & 0x202) == 0 && *(v14 + 22) == 1)
    {
      v19 = *(v14 + 8);
      if (!*(v8 + 72))
      {
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    if ((v18 & 1) == 0)
    {
      v19 = sub_18193CB70(v14, 1);
      if (!*(v8 + 72))
      {
LABEL_42:
        v22 = a3[*(v8 + 32) + 3];
        v23 = a1[3];
        v162 = 0;
        if (v19)
        {
          v24 = "delete-all";
          for (j = v19; ; ++j)
          {
            if (*v24 == *j)
            {
              if (!*v24)
              {
                if (!*(v23 + 72))
                {
                  sub_1819DCD80(a1, "'delete-all' may only be used with a contentless or external content fts5 table");
                  goto LABEL_207;
                }

                result = sub_1819F69C8(a1[5]);
                goto LABEL_234;
              }
            }

            else if (byte_181A20298[*v24] != byte_181A20298[*j])
            {
              v26 = "rebuild";
              for (k = v19; *v26 != *k; ++k)
              {
                if (byte_181A20298[*v26] != byte_181A20298[*k])
                {
                  v28 = "optimize";
                  for (m = v19; *v28 != *m; ++m)
                  {
                    if (byte_181A20298[*v28] != byte_181A20298[*m])
                    {
                      v30 = "merge";
                      for (n = v19; *v30 != *n; ++n)
                      {
                        if (byte_181A20298[*v30] != byte_181A20298[*n])
                        {
                          v32 = "integrity-check";
                          for (ii = v19; ; ++ii)
                          {
                            if (*v32 == *ii)
                            {
                              if (!*v32)
                              {
                                if (v22)
                                {
                                  v100 = *(v22 + 20);
                                  if ((v100 & 0x24) != 0)
                                  {
                                    v101 = *v22;
LABEL_292:
                                    result = sub_1819F6CC4(a1[5], SLODWORD(v101));
                                    goto LABEL_208;
                                  }

                                  if ((v100 & 8) != 0)
                                  {
                                    v151 = *v22;
                                    if (*v22 >= -9.22337204e18)
                                    {
                                      if (v151 <= 9.22337204e18)
                                      {
                                        *&v101 = v151;
                                      }

                                      else
                                      {
                                        LODWORD(v101) = -1;
                                      }
                                    }

                                    else
                                    {
                                      LODWORD(v101) = 0;
                                    }

                                    goto LABEL_292;
                                  }

                                  if ((v100 & 0x12) != 0 && *(v22 + 8))
                                  {
                                    LODWORD(v101) = sub_18193CFCC(v22);
                                    goto LABEL_292;
                                  }
                                }

                                else
                                {
                                  sub_1819012D0(92237);
                                }

                                LODWORD(v101) = 0;
                                goto LABEL_292;
                              }
                            }

                            else if (byte_181A20298[*v32] != byte_181A20298[*ii])
                            {
                              v51 = "flush";
                              for (jj = v19; ; ++jj)
                              {
                                if (*v51 == *jj)
                                {
                                  if (!*v51)
                                  {
                                    for (kk = *(a1[6] + 88); kk; kk = *(kk + 8))
                                    {
                                      if (*(kk + 32) == 1 && *kk == a1)
                                      {
                                        *(kk + 80) |= 0x20u;
                                      }
                                    }

                                    result = sub_1819FA088(a1[5]);
                                    goto LABEL_208;
                                  }
                                }

                                else if (byte_181A20298[*v51] != byte_181A20298[*jj])
                                {
                                  goto LABEL_132;
                                }

                                ++v51;
                              }
                            }

                            ++v32;
                          }
                        }

LABEL_60:
                        ++v30;
                      }

                      if (*v30)
                      {
                        goto LABEL_60;
                      }

                      if (!v22)
                      {
                        sub_1819012D0(92237);
                        goto LABEL_282;
                      }

                      v88 = *(v22 + 20);
                      if ((v88 & 0x24) != 0)
                      {
                        v89 = *v22;
                        goto LABEL_302;
                      }

                      if ((v88 & 8) == 0)
                      {
                        if ((v88 & 0x12) != 0 && *(v22 + 8))
                        {
                          LODWORD(v89) = sub_18193CFCC(v22);
                          goto LABEL_302;
                        }

LABEL_282:
                        LODWORD(v89) = 0;
                        goto LABEL_302;
                      }

                      LODWORD(v103) = -1;
                      if (*v22 <= 9.22337204e18)
                      {
                        v103 = *v22;
                      }

                      if (*v22 >= -9.22337204e18)
                      {
                        LODWORD(v89) = v103;
                      }

                      else
                      {
                        LODWORD(v89) = 0;
                      }

LABEL_302:
                      v74 = *(a1[5] + 8);
                      sub_1819E6520(v74);
                      v104 = sub_1819E25BC(v74);
                      v170 = v104;
                      if (!v104)
                      {
                        goto LABEL_420;
                      }

                      v105 = v104;
                      v106 = *(*v74 + 208);
                      v107 = *(v74 + 20);
                      if (v107)
                      {
                        v77 = (*v107)-- <= 1;
                        if (!v77)
                        {
                          goto LABEL_390;
                        }

                        v158 = v106;
                        v159 = LODWORD(v89);
                        if (v107[7] >= 1)
                        {
                          v108 = 0;
                          v109 = (v107 + 10);
                          do
                          {
                            v110 = *v109;
                            if (*v109)
                            {
                              v111 = &off_1ED452EB0;
                              if (dword_1ED452E80)
                              {
                                if (xmmword_1ED456AF0)
                                {
                                  xmmword_1ED452F18(xmmword_1ED456AF0);
                                }

                                qword_1ED456A48[0] -= xmmword_1ED452EC0(v110);
                                --qword_1ED456A90;
                                off_1ED452EB0(v110);
                                v110 = xmmword_1ED456AF0;
                                if (!xmmword_1ED456AF0)
                                {
                                  goto LABEL_309;
                                }

                                v111 = &xmmword_1ED452F28;
                              }

                              (*v111)(v110);
                            }

LABEL_309:
                            ++v108;
                            v109 += 2;
                          }

                          while (v108 < v107[7]);
                        }

                        v112 = &off_1ED452EB0;
                        if (!dword_1ED452E80)
                        {
                          LODWORD(v89) = v159;
                          v106 = v158;
                          goto LABEL_389;
                        }

                        LODWORD(v89) = v159;
                        v106 = v158;
                        if (xmmword_1ED456AF0)
                        {
                          xmmword_1ED452F18(xmmword_1ED456AF0);
                        }

                        qword_1ED456A48[0] -= xmmword_1ED452EC0(v107);
                        --qword_1ED456A90;
                        off_1ED452EB0(v107);
                        v107 = xmmword_1ED456AF0;
                        if (xmmword_1ED456AF0)
                        {
                          v112 = &xmmword_1ED452F28;
LABEL_389:
                          (*v112)(v107);
                        }

LABEL_390:
                        *(v74 + 20) = 0;
                      }

                      if ((LODWORD(v89) & 0x80000000) == 0)
                      {
                        v145 = v105;
                        goto LABEL_414;
                      }

                      v145 = sub_1819F9908(v74, v105);
                      v77 = (*v105)-- <= 1;
                      if (!v77)
                      {
                        goto LABEL_413;
                      }

                      if (v105[7] < 1)
                      {
LABEL_405:
                        v150 = &off_1ED452EB0;
                        if (dword_1ED452E80)
                        {
                          if (xmmword_1ED456AF0)
                          {
                            xmmword_1ED452F18(xmmword_1ED456AF0);
                          }

                          qword_1ED456A48[0] -= xmmword_1ED452EC0(v105);
                          --qword_1ED456A90;
                          off_1ED452EB0(v105);
                          v105 = xmmword_1ED456AF0;
                          if (!xmmword_1ED456AF0)
                          {
                            goto LABEL_413;
                          }

                          v150 = &xmmword_1ED452F28;
                        }

                        (*v150)(v105);
LABEL_413:
                        v170 = v145;
                        LODWORD(v89) = -LODWORD(v89);
                        v106 = 1;
LABEL_414:
                        if (v145)
                        {
                          if (v145[7])
                          {
                            v152 = sub_1819EBB18(v74, &v170, SLODWORD(v89), v106);
                            v145 = v170;
                            if (v152)
                            {
                              sub_1819D8134(v74, v170);
                            }
                          }
                        }

                        v87 = v145;
                        goto LABEL_419;
                      }

                      v146 = 0;
                      v147 = (v105 + 10);
                      while (2)
                      {
                        v148 = *v147;
                        if (*v147)
                        {
                          v149 = &off_1ED452EB0;
                          if (!dword_1ED452E80)
                          {
                            goto LABEL_397;
                          }

                          if (xmmword_1ED456AF0)
                          {
                            xmmword_1ED452F18(xmmword_1ED456AF0);
                          }

                          qword_1ED456A48[0] -= xmmword_1ED452EC0(v148);
                          --qword_1ED456A90;
                          off_1ED452EB0(v148);
                          v148 = xmmword_1ED456AF0;
                          if (xmmword_1ED456AF0)
                          {
                            v149 = &xmmword_1ED452F28;
LABEL_397:
                            (*v149)(v148);
                          }
                        }

                        ++v146;
                        v147 += 2;
                        if (v146 >= v105[7])
                        {
                          goto LABEL_405;
                        }

                        continue;
                      }
                    }

LABEL_55:
                    ++v28;
                  }

                  if (*v28)
                  {
                    goto LABEL_55;
                  }

                  v74 = *(a1[5] + 8);
                  sub_1819E6520(v74);
                  v75 = sub_1819E25BC(v74);
                  v76 = *(v74 + 20);
                  if (v76)
                  {
                    v77 = (*v76)-- <= 1;
                    if (!v77)
                    {
                      goto LABEL_249;
                    }

                    if (v76[7] >= 1)
                    {
                      v78 = 0;
                      v79 = (v76 + 10);
                      do
                      {
                        v80 = *v79;
                        if (*v79)
                        {
                          v81 = &off_1ED452EB0;
                          if (dword_1ED452E80)
                          {
                            if (xmmword_1ED456AF0)
                            {
                              xmmword_1ED452F18(xmmword_1ED456AF0);
                            }

                            qword_1ED456A48[0] -= xmmword_1ED452EC0(v80);
                            --qword_1ED456A90;
                            off_1ED452EB0(v80);
                            v80 = xmmword_1ED456AF0;
                            if (!xmmword_1ED456AF0)
                            {
                              goto LABEL_223;
                            }

                            v81 = &xmmword_1ED452F28;
                          }

                          (*v81)(v80);
                        }

LABEL_223:
                        ++v78;
                        v79 += 2;
                      }

                      while (v78 < v76[7]);
                    }

                    v90 = &off_1ED452EB0;
                    if (!dword_1ED452E80)
                    {
LABEL_248:
                      (*v90)(v76);
                      goto LABEL_249;
                    }

                    if (xmmword_1ED456AF0)
                    {
                      xmmword_1ED452F18(xmmword_1ED456AF0);
                    }

                    qword_1ED456A48[0] -= xmmword_1ED452EC0(v76);
                    --qword_1ED456A90;
                    off_1ED452EB0(v76);
                    v76 = xmmword_1ED456AF0;
                    if (xmmword_1ED456AF0)
                    {
                      v90 = &xmmword_1ED452F28;
                      goto LABEL_248;
                    }

LABEL_249:
                    *(v74 + 20) = 0;
                  }

                  if (!v75)
                  {
                    goto LABEL_420;
                  }

                  v91 = sub_1819F9908(v74, v75);
                  v170 = v91;
                  v77 = (*v75)-- <= 1;
                  if (!v77)
                  {
LABEL_269:
                    if (v91)
                    {
                      v97 = 0;
                      v98 = -1;
                      do
                      {
                        v99 = v91[v97 + 9];
                        v97 += 4;
                        ++v98;
                      }

                      while (!v99);
                      if (!*(v74 + 15))
                      {
                        do
                        {
                          v91 = v170;
                          if (v170[v97 + 5] < 1)
                          {
                            goto LABEL_276;
                          }

                          LODWORD(v167) = 1000;
                          sub_1819EBD74(v74, &v170, v98, &v167);
                        }

                        while (!*(v74 + 15));
                        v91 = v170;
                      }

LABEL_276:
                      sub_1819D8134(v74, v91);
                      v87 = v91;
                      goto LABEL_419;
                    }

                    goto LABEL_420;
                  }

                  if (v75[7] < 1)
                  {
LABEL_263:
                    v96 = &off_1ED452EB0;
                    if (dword_1ED452E80)
                    {
                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v75);
                      --qword_1ED456A90;
                      off_1ED452EB0(v75);
                      v75 = xmmword_1ED456AF0;
                      if (!xmmword_1ED456AF0)
                      {
                        goto LABEL_269;
                      }

                      v96 = &xmmword_1ED452F28;
                    }

                    (*v96)(v75);
                    goto LABEL_269;
                  }

                  v92 = 0;
                  v93 = (v75 + 10);
                  while (2)
                  {
                    v94 = *v93;
                    if (*v93)
                    {
                      v95 = &off_1ED452EB0;
                      if (!dword_1ED452E80)
                      {
                        goto LABEL_255;
                      }

                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v94);
                      --qword_1ED456A90;
                      off_1ED452EB0(v94);
                      v94 = xmmword_1ED456AF0;
                      if (xmmword_1ED456AF0)
                      {
                        v95 = &xmmword_1ED452F28;
LABEL_255:
                        (*v95)(v94);
                      }
                    }

                    ++v92;
                    v93 += 2;
                    if (v92 >= v75[7])
                    {
                      goto LABEL_263;
                    }

                    continue;
                  }
                }

LABEL_50:
                ++v26;
              }

              if (*v26)
              {
                goto LABEL_50;
              }

              if ((*(v23 + 72) & 0xFFFFFFFD) == 1)
              {
                sub_1819DCD80(a1, "'rebuild' may not be used with a contentless fts5 table");
                goto LABEL_207;
              }

              v82 = a1[5];
              v170 = 0;
              v171 = 0;
              v83 = *v82;
              v169 = 0;
              v167 = v82;
              v168 = 0;
              v84 = sub_1819F69C8(v82);
              if (v84 || (v84 = sub_1819F39A0(v82, 1), v84))
              {
                v85 = v84;
                v86 = 0;
LABEL_233:
                sqlite3_reset(v86);
                result = v85;
                goto LABEL_234;
              }

              v102 = sub_1819D907C(v82, 11, &v169, *(v83 + 248));
              if (v102)
              {
                v85 = v102;
                v86 = v169;
                goto LABEL_233;
              }

              v113 = 0;
              while (2)
              {
                v114 = v169;
                v115 = sqlite3_step(v169);
                v116 = v115 == 100;
                if (v115 != 100)
                {
                  v118 = 0;
                  v142 = v170;
                  if (!v170)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_383;
                }

                v117 = sqlite3_column_int64(v114, 0);
                LODWORD(v171) = 0;
                v160 = v117;
                v118 = sub_1819F89B0(v82[1], 0, v117);
                LODWORD(v168) = 0;
                if (v118)
                {
LABEL_382:
                  ++v82[3];
                  v116 = 1;
                  v142 = v170;
                  if (!v170)
                  {
                    goto LABEL_428;
                  }

                  goto LABEL_383;
                }

                v119 = 0;
                v120 = 0;
LABEL_328:
                if (v119 >= *(v83 + 32))
                {
                  v171 = __PAIR64__(v113, v120);
                  ++v82[3];
                  v118 = sub_1819F8CE0(v82, v160, &v170);
                  if (v118)
                  {
                    v116 = 1;
                    v142 = v170;
                    if (!v170)
                    {
                      goto LABEL_428;
                    }

LABEL_383:
                    v143 = &off_1ED452EB0;
                    if (dword_1ED452E80)
                    {
                      v144 = v118;
                      if (xmmword_1ED456AF0)
                      {
                        xmmword_1ED452F18(xmmword_1ED456AF0);
                      }

                      qword_1ED456A48[0] -= xmmword_1ED452EC0(v142);
                      --qword_1ED456A90;
                      off_1ED452EB0(v142);
                      v142 = xmmword_1ED456AF0;
                      v118 = v144;
                      if (xmmword_1ED456AF0)
                      {
                        v143 = &xmmword_1ED452F28;
                        goto LABEL_425;
                      }

LABEL_428:
                      v154 = v118;
                      v153 = sqlite3_reset(v169);
                      result = v154;
                      if (!v116)
                      {
LABEL_429:
                        result = v153;
                        if (!v153)
                        {
                          result = sub_1819F9060(v82);
                        }
                      }
                    }

                    else
                    {
                      v144 = v118;
LABEL_425:
                      (*v143)(v142);
                      v153 = sqlite3_reset(v169);
                      result = v144;
                      if (!v116)
                      {
                        goto LABEL_429;
                      }
                    }

LABEL_234:
                    if (result)
                    {
                      goto LABEL_208;
                    }

                    --*(a1[3] + 192);
                    v74 = a1[4];
                    v87 = sub_1819E25BC(v74);
LABEL_419:
                    sub_1819D8AE8(v87);
LABEL_420:
                    result = *(v74 + 15);
                    *(v74 + 15) = 0;
                    goto LABEL_208;
                  }

                  continue;
                }

                break;
              }

              v123 = 0;
              v118 = 0;
              HIDWORD(v168) = 0;
              if (!*(*(v83 + 48) + v119))
              {
                v166 = 0;
                v165 = 0;
                v164 = 0;
                v163 = 0;
                v124 = v169;
                v125 = sqlite3_column_value(v169, v119 + 1);
                if (*(v83 + 72) == 2 && sub_1819DCE5C(v83, v125))
                {
                  v118 = sub_1819DCF2C(v125, &v165, &v166, &v163, &v164);
                  if (!v118)
                  {
                    v126 = v163;
                    v127 = v164;
                    v128 = v165;
                    v129 = v166;
                    goto LABEL_352;
                  }

                  goto LABEL_363;
                }

                if (!v125)
                {
                  v165 = 0;
                  sub_1819012D0(93690);
                  v128 = 0;
                  goto LABEL_348;
                }

                v130 = *(v125 + 10);
                if ((~v130 & 0x202) != 0 || *(v125 + 22) != 1)
                {
                  if (v130)
                  {
                    v128 = 0;
                  }

                  else
                  {
                    v128 = sub_18193CB70(v125, 1);
                    LOWORD(v130) = *(v125 + 10);
                  }
                }

                else
                {
                  v128 = *(v125 + 1);
                }

                v165 = v128;
                if ((v130 & 2) != 0 && *(v125 + 22) == 1)
                {
                  v129 = *(v125 + 4);
                  goto LABEL_349;
                }

                if ((v130 & 0x10) == 0)
                {
                  if ((v130 & 1) == 0)
                  {
                    v129 = sub_18193CB44(v125, 1);
                    goto LABEL_349;
                  }

LABEL_348:
                  v129 = 0;
                  goto LABEL_349;
                }

                v129 = *(v125 + 4);
                if ((v130 & 0x400) != 0)
                {
                  v129 = (*v125 + v129);
                }

LABEL_349:
                v166 = v129;
                if (*(v83 + 112))
                {
                  v131 = v168 + *(v83 + 32);
                  v126 = sqlite3_column_text(v124, v131 + 1);
                  v163 = v126;
                  v127 = sqlite3_column_bytes(v124, v131 + 1);
                  v164 = v127;
                }

                else
                {
                  v127 = 0;
                  v126 = 0;
                }

LABEL_352:
                *(v83 + 168) = v126;
                *(v83 + 176) = v127;
                if (v128)
                {
                  if (*(v83 + 128) || (v118 = sub_1819D630C(v83), !v118))
                  {
                    v132 = *(v83 + 144);
                    if (v132)
                    {
                      v118 = (*(v132 + 16))(*(v83 + 128), &v167, 4, v128, v129, sub_1819F8B64);
                    }

                    else
                    {
                      v118 = (*(*(v83 + 136) + 24))(*(v83 + 128), &v167, 4, v128, v129, *(v83 + 168), *(v83 + 176), sub_1819F8B64);
                    }
                  }
                }

                else
                {
                  v118 = 0;
                }

                *(v83 + 168) = 0;
                *(v83 + 176) = 0;
LABEL_363:
                v123 = HIDWORD(v168);
              }

              v133 = v120 + 9;
              if (v133 > v113)
              {
                v134 = v118;
                if (v113)
                {
                  LODWORD(v135) = v113;
                }

                else
                {
                  LODWORD(v135) = 64;
                }

                v135 = v135;
                do
                {
                  v136 = v135;
                  v135 *= 2;
                }

                while (v136 < v133);
                v137 = v170;
                if (sqlite3_initialize() || (v140 = sub_18190287C(v137, v136, 688041480)) == 0)
                {
                  v118 = 7;
                }

                else
                {
                  v138 = v140;
                  v170 = v140;
                  v113 = v136;
                  v118 = v134;
LABEL_373:
                  v139 = (v138 + v120);
                  if (v123 <= 0x7F)
                  {
                    v139->i8[0] = v123;
                    v121 = 1;
                  }

                  else if (v123 >> 14)
                  {
                    v141 = v118;
                    v121 = sub_1819436D0(v139, v123);
                    v118 = v141;
                  }

                  else
                  {
                    v139->i8[0] = (v123 >> 7) | 0x80;
                    v139->i8[1] = v123 & 0x7F;
                    v121 = 2;
                  }

                  v120 += v121;
                }

                v122 = v168;
                *(v82[4] + 8 * v168) += SHIDWORD(v168);
                v119 = v122 + 1;
                LODWORD(v168) = v122 + 1;
                if (v118)
                {
                  goto LABEL_382;
                }

                goto LABEL_328;
              }

              v138 = v170;
              goto LABEL_373;
            }

            ++v24;
          }
        }

LABEL_132:
        for (mm = *(a1[6] + 88); mm; mm = *(mm + 8))
        {
          if (*(mm + 32) == 1 && *mm == a1)
          {
            *(mm + 80) |= 0x20u;
          }
        }

        result = sub_1819FA088(a1[5]);
        if (!result)
        {
          v63 = a1[4];
          v64 = sub_1819E25BC(v63);
          sub_1819D8AE8(v64);
          result = *(v63 + 60);
          *(v63 + 60) = 0;
          if (!result)
          {
            result = sub_1819D950C(a1[3], v19, v22, &v162);
            if (!result)
            {
              if (v162)
              {
                goto LABEL_207;
              }

              result = sub_1819D8D48(a1[5], v19, v22, 0);
            }
          }
        }

        goto LABEL_208;
      }

LABEL_34:
      if (v19)
      {
        v20 = "delete";
        for (nn = v19; ; ++nn)
        {
          if (*v20 == *nn)
          {
            if (!*v20)
            {
              if (*(v8 + 76))
              {
                sub_1819DCD80(a1, "'delete' may not be used with a contentless_delete=1 table");
                goto LABEL_207;
              }

              result = sub_1819F4A80(a1, a3);
              goto LABEL_208;
            }
          }

          else if (byte_181A20298[*v20] != byte_181A20298[*nn])
          {
            goto LABEL_42;
          }

          ++v20;
        }
      }

      v22 = a3[*(v8 + 32) + 3];
      v162 = 0;
      goto LABEL_132;
    }

LABEL_33:
    v19 = 0;
    if (!*(v8 + 72))
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  v12 = 5;
  if (!*(v8 + 72))
  {
    goto LABEL_19;
  }

LABEL_18:
  if (!*(v8 + 76))
  {
    goto LABEL_90;
  }

LABEL_19:
  v15 = *v8;
  if (!*v8)
  {
    v17 = "NULL";
    goto LABEL_88;
  }

  v16 = *(v15 + 113);
  if (v16 == 186)
  {
LABEL_23:
    v17 = "unopened";
LABEL_88:
    sqlite3_log(21, "API call with %s database connection pointer", v17);
    goto LABEL_89;
  }

  if (v16 != 118)
  {
    if (v16 != 109)
    {
      v17 = "invalid";
      goto LABEL_88;
    }

    goto LABEL_23;
  }

  v34 = *(v15 + 108);
  if ((v34 - 1) >= 5)
  {
LABEL_89:
    sub_1819012D0(167682);
LABEL_90:
    v35 = 0;
    if (a2 == 1)
    {
      goto LABEL_91;
    }

    goto LABEL_66;
  }

  v35 = v34 == 5;
  if (a2 == 1)
  {
LABEL_91:
    if ((*(a1[3] + 72) & 0xFFFFFFFD) == 1 && !*(v8 + 76))
    {
      sub_1819DCD80(a1, "cannot DELETE from contentless fts5 table: %s");
      goto LABEL_207;
    }

    v48 = *a3;
    if (*a3)
    {
      v49 = *(v48 + 20);
      if ((v49 & 0x24) != 0)
      {
        v50 = *v48;
LABEL_98:
        result = sub_1819F4B7C(a1[5], v50, 0, 0);
        goto LABEL_208;
      }

      if ((v49 & 8) != 0)
      {
        v66 = *v48;
        if (*v48 >= -9.22337204e18)
        {
          if (v66 <= 9.22337204e18)
          {
            v50 = v66;
          }

          else
          {
            v50 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v50 = 0x8000000000000000;
        }

        goto LABEL_98;
      }

      if ((v49 & 0x12) != 0 && *(v48 + 8))
      {
        v50 = sub_18193CFCC(v48);
        goto LABEL_98;
      }
    }

    else
    {
      sub_1819012D0(92237);
    }

    v50 = 0;
    goto LABEL_98;
  }

LABEL_66:
  v36 = a3[1];
  if (v36)
  {
    v37 = *(v36 + 20);
    if ((0x4000000040004uLL >> v37))
    {
      sub_18190FC94(a3[1], 0);
      v37 = *(v36 + 20);
    }

    v38 = byte_181A203AA[v37 & 0x3F];
    if (*(v8 + 112))
    {
      goto LABEL_76;
    }
  }

  else
  {
    sub_1819012D0(99877);
    v38 = 0;
    if (*(v8 + 112))
    {
      goto LABEL_76;
    }
  }

  if (*(v8 + 32) >= 1)
  {
    v39 = 0;
    do
    {
      if (sub_1819DCE5C(v8, a3[v39 + 2]))
      {
        sub_1819DCD80(a1, "fts5_locale() requires locale=1");
        result = 20;
        goto LABEL_208;
      }

      ++v39;
    }

    while (v39 < *(v8 + 32));
  }

LABEL_76:
  if (v12 != 1)
  {
    if (v38 != 1 || !v35)
    {
LABEL_164:
      result = sub_1819F5FE4(a1[5], 0, a3, a4);
      if (!result)
      {
        result = sub_1819F64D8(a1[5], a3, *a4);
      }

      goto LABEL_208;
    }

    v45 = a3[1];
    if (v45)
    {
      v46 = *(v45 + 20);
      if ((v46 & 0x24) != 0)
      {
        v47 = *v45;
        goto LABEL_163;
      }

      if ((v46 & 8) != 0)
      {
        v73 = *v45;
        if (*v45 >= -9.22337204e18)
        {
          if (v73 <= 9.22337204e18)
          {
            v47 = v73;
          }

          else
          {
            v47 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v47 = 0x8000000000000000;
        }

LABEL_163:
        result = sub_1819F4B7C(a1[5], v47, 0, 0);
        if (result)
        {
          goto LABEL_208;
        }

        goto LABEL_164;
      }

      if ((v46 & 0x12) != 0 && *(v45 + 8))
      {
        v47 = sub_18193CFCC(v45);
        goto LABEL_163;
      }
    }

    else
    {
      sub_1819012D0(92237);
    }

    v47 = 0;
    goto LABEL_163;
  }

  v40 = a1[5];
  v41 = *a3;
  if (!*a3)
  {
    sub_1819012D0(92237);
    goto LABEL_110;
  }

  v42 = *(v41 + 20);
  if ((v42 & 0x24) != 0)
  {
    v43 = *v41;
    goto LABEL_111;
  }

  if ((v42 & 8) == 0)
  {
    if ((v42 & 0x12) != 0 && *(v41 + 8))
    {
      v43 = sub_18193CFCC(v41);
      goto LABEL_111;
    }

LABEL_110:
    v43 = 0;
    goto LABEL_111;
  }

  v70 = *v41;
  if (*v41 >= -9.22337204e18)
  {
    if (v70 <= 9.22337204e18)
    {
      v43 = v70;
    }

    else
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v43 = 0x8000000000000000;
  }

LABEL_111:
  v53 = a3[1];
  if (!v53)
  {
    sub_1819012D0(92237);
LABEL_115:
    v55 = 0;
    goto LABEL_116;
  }

  v54 = *(v53 + 20);
  if ((v54 & 0x24) == 0)
  {
    if ((v54 & 8) != 0)
    {
      v71 = *v53;
      if (*v53 >= -9.22337204e18)
      {
        if (v71 <= 9.22337204e18)
        {
          v55 = v71;
        }

        else
        {
          v55 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v55 = 0x8000000000000000;
      }

      goto LABEL_116;
    }

    if ((v54 & 0x12) != 0 && *(v53 + 8))
    {
      v55 = sub_18193CFCC(v53);
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  v55 = *v53;
LABEL_116:
  if ((*(a1[3] + 72) & 0xFFFFFFFD) != 1)
  {
LABEL_168:
    v61 = 1;
    goto LABEL_169;
  }

  v56 = *(v8 + 32);
  if (v56 < 1)
  {
    if (v43 != v55)
    {
LABEL_167:
      if (!*(v8 + 76))
      {
        goto LABEL_206;
      }

      goto LABEL_168;
    }

    v61 = 0;
LABEL_169:
    if (v38 != 1)
    {
      v161 = 20;
LABEL_202:
      sqlite3_reset(*(v40 + 40));
      *(v40 + 40) = 0;
      result = v161;
      goto LABEL_208;
    }

    v67 = v40;
    if (v43 == v55)
    {
      v68 = v43;
      if (v61)
      {
        v69 = 1;
        goto LABEL_177;
      }

      v161 = sub_1819F5F00(v40, v43);
      if (v161)
      {
        goto LABEL_202;
      }

      v72 = sub_1819F5FE4(v40, 1, a3, a4);
    }

    else
    {
      if (v35)
      {
        v161 = sub_1819F4B7C(v40, v43, 0, 1);
        if (v161)
        {
LABEL_178:
          sub_1819F5EA0(&v161, a1, a3, a4);
          goto LABEL_202;
        }

        v67 = v40;
        v68 = v55;
        v69 = 0;
LABEL_177:
        v161 = sub_1819F4B7C(v67, v68, 0, v69);
        goto LABEL_178;
      }

      v161 = sub_1819F5F00(v40, v43);
      if (v161)
      {
        goto LABEL_202;
      }

      v161 = sub_1819F5FE4(v40, 0, a3, a4);
      if (v161)
      {
        goto LABEL_202;
      }

      v161 = sub_1819F4B7C(v40, v43, 0, 0);
      if (v161)
      {
        goto LABEL_202;
      }

      v72 = sub_1819F64D8(v40, a3, *a4);
    }

    v161 = v72;
    goto LABEL_202;
  }

  v155 = v43 != v55;
  v156 = v55;
  v157 = v43;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  do
  {
    if (!*(*(v8 + 48) + v57))
    {
      v60 = a3[v57 + 2];
      if (v60)
      {
        if ((~*(v60 + 20) & 0x401) == 0)
        {
          ++v58;
          goto LABEL_120;
        }
      }

      else
      {
        sub_1819012D0(99912);
        v56 = *(v8 + 32);
      }

      ++v59;
    }

LABEL_120:
    ++v57;
  }

  while (v57 < v56);
  v61 = v59 | v155;
  if (!(v59 | v155))
  {
    v55 = v156;
    v43 = v157;
    goto LABEL_169;
  }

  v55 = v156;
  v43 = v157;
  if (!v58)
  {
    goto LABEL_167;
  }

  if (*(v8 + 76))
  {
    sub_1819D75B8(v8, "%s a subset of columns on fts5 contentless-delete table: %s");
    goto LABEL_207;
  }

LABEL_206:
  sub_1819D75B8(v8, "%s contentless fts5 table: %s");
LABEL_207:
  result = 1;
LABEL_208:
  *(a1[3] + 248) = 0;
  return result;
}

uint64_t sub_1819D2DDC(uint64_t a1)
{
  *(*(a1 + 24) + 248) = a1 + 16;
  for (i = *(*(a1 + 48) + 88); i; i = *(i + 8))
  {
    if (*(i + 32) == 1 && *i == a1)
    {
      *(i + 80) |= 0x20u;
    }
  }

  result = sub_1819FA088(*(a1 + 40));
  *(*(a1 + 24) + 248) = 0;
  return result;
}

uint64_t sub_1819D2E5C(uint64_t a1)
{
  result = sub_1819FA31C(*(a1 + 40));
  *(*(a1 + 24) + 196) = 0;
  return result;
}

uint64_t sub_1819D2E8C(uint64_t a1, uint64_t a2, _BYTE *a3, void (**a4)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8), void *a5)
{
  for (i = *(*(a1 + 48) + 64); i; i = *(i + 40))
  {
    v6 = *(i + 8);
    if (a3)
    {
      if (v6)
      {
        for (j = a3; ; ++j)
        {
          if (*j == *v6)
          {
            if (!*j)
            {
              goto LABEL_12;
            }
          }

          else if (byte_181A20298[*j] != byte_181A20298[*v6])
          {
            break;
          }

          ++v6;
        }
      }
    }

    else if (!v6)
    {
LABEL_12:
      *a4 = sub_1819FA518;
      *a5 = i;
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1819D2F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  result = sub_1819FA088(v3);
  if (!result)
  {
    result = sub_1819D7DA4(*v4, 0, "ALTER TABLE %Q.'%q_%s' RENAME TO '%q_%s';", v4[2], v4[3], "data", a2, "data");
    if (!result)
    {
      result = sub_1819D7DA4(*v4, 0, "ALTER TABLE %Q.'%q_%s' RENAME TO '%q_%s';", v4[2], v4[3], "idx", a2, "idx");
      if (!result)
      {
        result = sub_1819D7DA4(*v4, 0, "ALTER TABLE %Q.'%q_%s' RENAME TO '%q_%s';", v4[2], v4[3], "config", a2, "config");
        if (*(v4 + 26) && !result)
        {
          result = sub_1819D7DA4(*v4, 0, "ALTER TABLE %Q.'%q_%s' RENAME TO '%q_%s';", v4[2], v4[3], "docsize", a2, "docsize");
        }

        if (!(*(v4 + 18) | result))
        {
          return sub_1819D7DA4(*v4, 0, "ALTER TABLE %Q.'%q_%s' RENAME TO '%q_%s';", v4[2], v4[3], "content", a2, "content");
        }
      }
    }
  }

  return result;
}

uint64_t sub_1819D3048(uint64_t a1, int a2)
{
  for (i = *(*(a1 + 48) + 88); i; i = *(i + 8))
  {
    if (*(i + 32) == 1 && *i == a1)
    {
      *(i + 80) |= 0x20u;
    }
  }

  result = sub_1819FA088(*(a1 + 40));
  if (!result)
  {
    *(a1 + 64) = a2 + 1;
  }

  return result;
}

uint64_t sub_1819D30BC(uint64_t a1, int a2)
{
  if (a2 + 1 >= *(a1 + 64))
  {
    return 0;
  }

  for (i = *(*(a1 + 48) + 88); i; i = *(i + 8))
  {
    if (*(i + 32) == 1 && *i == a1)
    {
      *(i + 80) |= 0x20u;
    }
  }

  result = sub_1819FA088(*(a1 + 40));
  if (!result)
  {
    *(a1 + 64) = a2;
  }

  return result;
}

uint64_t sub_1819D3148(uint64_t a1, int a2)
{
  for (i = *(*(a1 + 48) + 88); i; i = *(i + 8))
  {
    if (*(i + 32) == 1 && *i == a1)
    {
      *(i + 80) |= 0x20u;
    }
  }

  if (*(a1 + 64) <= a2)
  {
    return 0;
  }

  *(*(a1 + 24) + 196) = 0;
  return sub_1819FA31C(*(a1 + 40));
}

uint64_t sub_1819D31A8(uint64_t result)
{
  if (result)
  {
    v1 = "config";
    for (i = result; ; ++i)
    {
      if (*i == *v1)
      {
        if (!*i)
        {
          return 1;
        }
      }

      else if (byte_181A20298[*i] != byte_181A20298[*v1])
      {
        v3 = "content";
        for (j = result; ; ++j)
        {
          if (*j == *v3)
          {
            if (!*j)
            {
              return 1;
            }
          }

          else if (byte_181A20298[*j] != byte_181A20298[*v3])
          {
            v5 = "data";
            for (k = result; ; ++k)
            {
              if (*k == *v5)
              {
                if (!*k)
                {
                  return 1;
                }
              }

              else if (byte_181A20298[*k] != byte_181A20298[*v5])
              {
                v7 = "docsize";
                for (m = result; ; ++m)
                {
                  if (*m == *v7)
                  {
                    if (!*m)
                    {
                      return 1;
                    }
                  }

                  else if (byte_181A20298[*m] != byte_181A20298[*v7])
                  {
                    for (n = "idx"; ; ++n)
                    {
                      if (*result == *n)
                      {
                        if (!*result)
                        {
                          return 1;
                        }
                      }

                      else if (byte_181A20298[*result] != byte_181A20298[*n])
                      {
                        return 0;
                      }

                      ++result;
                    }
                  }

                  ++v7;
                }
              }

              ++v5;
            }
          }

          ++v3;
        }
      }

      ++v1;
    }
  }

  return result;
}

uint64_t sub_1819D330C(uint64_t a1, const char *a2, const char *a3, uint64_t a4, char **a5)
{
  *(*(a1 + 24) + 248) = a5;
  v9 = sub_1819F6CC4(*(a1 + 40), 0);
  v10 = v9;
  if (*a5)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    if (v9 == 11)
    {
      v12 = sqlite3_mprintf("malformed inverted index for FTS5 table %s.%s", a2, a3);
      *a5 = v12;
      if (v12)
      {
        v10 = 0;
      }

      else
      {
        v10 = 7;
      }
    }

    else
    {
      switch(v9)
      {
        case 0x204:
          v13 = "abort due to ROLLBACK";
          break;
        case 0x65:
          v13 = "no more rows available";
          break;
        case 0x64:
          v13 = "another row available";
          break;
        default:
          if (v9 > 0x1Cu || ((0x1410004uLL >> v9) & 1) != 0)
          {
            v13 = "unknown error";
          }

          else
          {
            v13 = off_1E6A27DD8[v9];
          }

          break;
      }

      *a5 = sqlite3_mprintf("unable to validate the inverted index for FTS5 table %s.%s: %s", a2, a3, v13);
    }
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 72);
  if (v15)
  {
    *(v14 + 72) = 0;
    v16 = v15[3];
    v17 = v15[4];
    v18 = v17[3];
    if (v18)
    {
      xmmword_1ED452F18(v18);
    }

    sub_181929C84(v17, v15);
    v19 = v17[3];
    if (v19)
    {
      xmmword_1ED452F28(v19);
    }

    sqlite3_finalize(v16);
  }

  *(v14 + 60) = 0;
  *(*(a1 + 24) + 248) = 0;
  return v10;
}

uint64_t sub_1819D348C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sqlite3_overload_function(*(a1 + 48), a2, -1);
  if (!result)
  {
    v11 = strlen(a2);
    if (sqlite3_initialize())
    {
      return 7;
    }

    v12 = sub_181902484(v11 + 49, 0xB00408255D883);
    if (!v12)
    {
      return 7;
    }

    else
    {
      v13 = v12;
      bzero(v12, v11 + 49);
      v13[1] = v13 + 6;
      memcpy(v13 + 6, a2, v11 + 1);
      result = 0;
      *v13 = a1;
      v13[2] = a3;
      v13[3] = a4;
      v14 = *(a1 + 64);
      v13[4] = a5;
      v13[5] = v14;
      *(a1 + 64) = v13;
    }
  }

  return result;
}

__n128 sub_1819D3554(uint64_t a1, char *__s, uint64_t a3, __n128 *a4, uint64_t a5)
{
  v10 = strlen(__s);
  v11 = v10 + 97;
  if (!sqlite3_initialize())
  {
    v13 = sub_181902484(v11, 1913357809);
    if (v13)
    {
      v14 = v13;
      bzero(v13, v11);
      *v14 = v14 + 96;
      memcpy(v14 + 96, __s, v10 + 1);
      *(v14 + 1) = a3;
      v15 = *(a1 + 72);
      *(v14 + 10) = a5;
      *(v14 + 11) = v15;
      *(a1 + 72) = v14;
      if (!v15)
      {
        *(a1 + 80) = v14;
      }

      result = *a4;
      *(v14 + 5) = a4[1].n128_u64[0];
      *(v14 + 24) = result;
      *(v14 + 7) = sub_1819FA884;
      *(v14 + 9) = sub_1819FA9E0;
      *(v14 + 8) = sub_1819FA9F0;
    }
  }

  return result;
}

uint64_t sub_1819D3654(uint64_t a1, _BYTE *a2, unsigned __int8 **a3, void *a4)
{
  if (a2)
  {
    for (i = *(a1 + 72); i; i = *(i + 11))
    {
      v5 = *i;
      if (*i)
      {
        for (j = a2; ; ++j)
        {
          if (*j == *v5)
          {
            if (!*j)
            {
              goto LABEL_13;
            }
          }

          else if (byte_181A20298[*j] != byte_181A20298[*v5])
          {
            break;
          }

          ++v5;
        }
      }
    }

    goto LABEL_16;
  }

  i = *(a1 + 80);
  if (!i)
  {
LABEL_16:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    result = 1;
    *a3 = 0;
    return result;
  }

LABEL_13:
  v7 = i;
  if (!*(i + 4))
  {
    v7 = *(i + 1);
  }

  result = 0;
  *a3 = v7;
  v9 = *(i + 24);
  a4[2] = *(i + 5);
  *a4 = v9;
  return result;
}

__n128 sub_1819D36FC(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a4 <= 2)
  {
    v10 = strlen(__s);
    v11 = v10 + 97;
    if (!sqlite3_initialize())
    {
      v13 = sub_181902484(v11, 1913357809);
      if (v13)
      {
        v14 = v13;
        bzero(v13, v11);
        *v14 = v14 + 12;
        memcpy(v14 + 12, __s, v10 + 1);
        v14[1] = a3;
        v15 = *(a1 + 72);
        v14[10] = a5;
        v14[11] = v15;
        *(a1 + 72) = v14;
        if (!v15)
        {
          *(a1 + 80) = v14;
        }

        result = *a4;
        v16 = *(a4 + 16);
        *(v14 + 3) = *a4;
        *(v14 + 4) = v16;
        *(v14 + 4) = 1;
        v14[3] = sub_1819FA884;
        v14[5] = sub_1819FAAD8;
        v14[4] = sub_1819FA9F0;
      }
    }
  }

  return result;
}

uint64_t sub_1819D3814(uint64_t a1, _BYTE *a2, unsigned __int8 **a3, void *a4)
{
  if (a2)
  {
    for (i = *(a1 + 72); i; i = *(i + 11))
    {
      v5 = *i;
      if (*i)
      {
        for (j = a2; ; ++j)
        {
          if (*j == *v5)
          {
            if (!*j)
            {
              goto LABEL_13;
            }
          }

          else if (byte_181A20298[*j] != byte_181A20298[*v5])
          {
            break;
          }

          ++v5;
        }
      }
    }

    goto LABEL_16;
  }

  i = *(a1 + 80);
  if (!i)
  {
LABEL_16:
    *a4 = 0;
    *a3 = 0;
    return 1;
  }

LABEL_13:
  v7 = i;
  if (*(i + 4))
  {
    v7 = *(i + 1);
  }

  result = 0;
  *a3 = v7;
  *a4 = i + 48;
  return result;
}

uint64_t sub_1819D38B0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 64);
  if (v2)
  {
    do
    {
      v4 = v2[4];
      v5 = v2[5];
      if (v4)
      {
        v4(v2[2]);
      }

      v6 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v2);
        --qword_1ED456A90;
        off_1ED452EB0(v2);
        v2 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_5;
        }

        v6 = &xmmword_1ED452F28;
      }

      (*v6)(v2);
LABEL_5:
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(v1 + 72);
  if (!v3)
  {
LABEL_23:
    v11 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v1);
      --qword_1ED456A90;
      result = off_1ED452EB0(v1);
      v1 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        return result;
      }

      v11 = &xmmword_1ED452F28;
    }

    v12 = *v11;

    return v12(v1);
  }

  do
  {
    v8 = v3[10];
    v9 = v3[11];
    if (v8)
    {
      v8(v3[1]);
    }

    v10 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_13;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v3);
    --qword_1ED456A90;
    result = off_1ED452EB0(v3);
    v3 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v10 = &xmmword_1ED452F28;
LABEL_13:
      result = (*v10)(v3);
    }

    v3 = v9;
  }

  while (v9);
  if (v1)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1819D3AA4(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v3 = *(*(result + 8) + 8);
    v4 = *a3;
    if (*a3)
    {
LABEL_3:
      if ((*(v4 + 20) & 0xFBF) == 0xA01 && *(v4 + 23) == 112)
      {
        result = strcmp(*v4, "fts5_api_ptr");
        if (!result)
        {
          v5 = *(v4 + 8);
          if (v5)
          {
            *v5 = v3;
          }
        }
      }

      return result;
    }
  }

  else
  {
    v3 = 0;
    v4 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }
  }

  return sub_1819012D0(99775);
}

void sub_1819D3B44(uint64_t a1)
{
  if (a1)
  {
    sub_18190B23C(a1, "fts5: 2025-06-12 13:14:41 f0ca7bba1c5e232e5d279fad6338121ab55af0c8c68c84cdfb18ba5114dcc60c", -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_1819D3B64(sqlite3_context *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (!*a3)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = *(v5 + 20);
  if ((~v6 & 0x202) == 0 && *(v5 + 22) == 1)
  {
    v7 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v6)
  {
    v7 = 0;
    if ((v6 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v7 = sub_18193CB70(v5, 1);
  v5 = *a3;
  if (!*a3)
  {
LABEL_11:
    sub_1819012D0(93690);
LABEL_12:
    v8 = 0;
    v9 = a3[1];
    if (v9)
    {
      goto LABEL_30;
    }

LABEL_13:
    v10 = 0;
LABEL_14:
    sub_1819012D0(93690);
    v11 = 0;
    goto LABEL_15;
  }

  LOWORD(v6) = *(v5 + 20);
  if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (*(v5 + 22) == 1)
  {
    v8 = *(v5 + 16);
    v9 = a3[1];
    if (v9)
    {
      goto LABEL_30;
    }

    goto LABEL_13;
  }

LABEL_23:
  if ((v6 & 0x10) != 0)
  {
    v8 = *(v5 + 16);
    if ((v6 & 0x400) != 0)
    {
      v8 += *v5;
    }

    v9 = a3[1];
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  if (v6)
  {
    goto LABEL_12;
  }

  v8 = sub_18193CB44(v5, 1);
  v9 = a3[1];
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_30:
  v13 = *(v9 + 20);
  if ((~v13 & 0x202) == 0 && *(v9 + 22) == 1)
  {
    v10 = *(v9 + 8);
    if ((v13 & 2) == 0)
    {
      goto LABEL_42;
    }

LABEL_39:
    if (*(v9 + 22) == 1)
    {
      v11 = *(v9 + 16);
      if (!v7)
      {
        goto LABEL_61;
      }

      goto LABEL_16;
    }

    goto LABEL_42;
  }

  if (v13)
  {
    v10 = 0;
    if ((v13 & 2) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v10 = sub_18193CB70(v9, 1);
    v9 = a3[1];
    if (!v9)
    {
      goto LABEL_14;
    }

    LOWORD(v13) = *(v9 + 20);
    if ((v13 & 2) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_42:
  if ((v13 & 0x10) == 0)
  {
    if (v13)
    {
      v11 = 0;
      if (!v7)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v11 = sub_18193CB44(v9, 1);
      if (!v7)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_16;
  }

  v11 = *(v9 + 16);
  if ((v13 & 0x400) != 0)
  {
    v11 += *v9;
    if (!v7)
    {
      goto LABEL_61;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (!v7)
  {
LABEL_61:
    if (!a1)
    {
      return;
    }

    v20 = a1;
    v21 = v10;
    v22 = v11;
    v23 = 1;
    v19 = -1;
    goto LABEL_63;
  }

LABEL_16:
  if (!*v7)
  {
    goto LABEL_61;
  }

  if (a1)
  {
    v12 = *(*(a1 + 1) + 8);
  }

  else
  {
    v12 = 0;
  }

  v14 = (v8 + v11 + 17);
  v15 = sqlite3_initialize();
  if (v14 < 1 || v15 || (v16 = sub_181902484(v14, 0x100004077774924)) == 0)
  {

    sqlite3_result_error_nomem(a1);
  }

  else
  {
    v17 = v16;
    *v16 = *(v12 + 96);
    v18 = v16 + 1;
    memcpy(v16 + 1, v7, v8);
    *(v18 + v8) = 0;
    if (v10)
    {
      memcpy(v18 + v8 + 1, v10, v11);
    }

    if (a1)
    {
      v19 = sqlite3_free;
      v20 = a1;
      v21 = v17;
      v22 = v8 + v11 + 17;
      v23 = 0;
LABEL_63:

      sub_18190B23C(v20, v21, v22, v23, v19);
      return;
    }

    v24 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_71;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v17);
    --qword_1ED456A90;
    off_1ED452EB0(v17);
    v17 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v24 = &xmmword_1ED452F28;
LABEL_71:
      v25 = *v24;

      v25(v17);
    }
  }
}

void sub_1819D3EF4(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  sqlite3_result_value(a1, *a3);
  if (a1)
  {
    v4 = *a1;
    *(v4 + 23) = 73;
    *(v4 + 20) |= 0x800u;
  }
}

uint64_t sub_1819D3F38(int a1, sqlite3 *a2, uint64_t a3, int a4, uint64_t a5, uint64_t **a6, char **a7)
{
  v196 = *MEMORY[0x1E69E9840];
  if (sqlite3_initialize())
  {
    v14 = 0;
    result = 7;
    goto LABEL_33;
  }

  v16 = sub_181902484(72, 1913357809);
  v14 = v16;
  if (!v16)
  {
    result = 7;
    goto LABEL_33;
  }

  *(v16 + 64) = 0;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v191 = 0;
  if (sqlite3_initialize() || (v18 = sub_181902484(256, 0x10F0040B3CDD527)) == 0)
  {
    v17 = 7;
    goto LABEL_26;
  }

  v19 = v18;
  v187 = a7;
  *(v18 + 224) = 0u;
  *(v18 + 240) = 0u;
  *(v18 + 192) = 0u;
  *(v18 + 208) = 0u;
  *(v18 + 160) = 0u;
  *(v18 + 176) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 192) = -1;
  v188 = a4;
  *v18 = a2;
  *(v18 + 8) = a3;
  if (sqlite3_initialize() || (v20 = sub_181902484(9 * a4, 1913357809)) == 0)
  {
    if (a4 > 0)
    {
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
LABEL_23:
      *(v19 + 16) = 0;
LABEL_24:
      *(v19 + 24) = 0;
      *(v19 + 104) = 1;
      *(v19 + 116) = 0;
      v38 = 7;
      goto LABEL_25;
    }

    v186 = a2;
    v21 = 0;
  }

  else
  {
    v21 = v20;
    v186 = a2;
    bzero(v20, 9 * a4);
  }

  v22 = &v21[8 * a4];
  if (!v21)
  {
    v22 = 0;
  }

  *(v19 + 40) = v21;
  *(v19 + 48) = v22;
  v23 = *(a5 + 8);
  v24 = strlen(v23);
  v25 = sqlite3_initialize();
  if (v24 < 0)
  {
    goto LABEL_23;
  }

  if (v25)
  {
    goto LABEL_23;
  }

  v26 = sub_181902484((v24 + 1), 0x100004077774924);
  if (!v26)
  {
    goto LABEL_23;
  }

  v27 = v24 & 0x7FFFFFFF;
  v28 = v26;
  memcpy(v26, v23, v27);
  v28[v27] = 0;
  *(v19 + 16) = v28;
  v29 = *(a5 + 16);
  v30 = strlen(v29);
  v31 = sqlite3_initialize();
  if (v30 < 0)
  {
    goto LABEL_24;
  }

  if (v31)
  {
    goto LABEL_24;
  }

  v32 = sub_181902484((v30 + 1), 0x100004077774924);
  if (!v32)
  {
    goto LABEL_24;
  }

  v33 = v32;
  v34 = v30 & 0x7FFFFFFF;
  memcpy(v32, v29, v34);
  v36 = 0;
  v33[v34] = 0;
  *(v19 + 116) = 0;
  *(v19 + 24) = v33;
  *(v19 + 104) = 1;
  v37 = v187;
  while (v33[v36] == aRank[v36])
  {
    if (!v33[v36])
    {
      *v187 = sqlite3_mprintf("reserved fts5 table name: %s", v33);
      v38 = 1;
      goto LABEL_25;
    }

LABEL_35:
    ++v36;
  }

  if (byte_181A20298[v33[v36]] == byte_181A20298[aRank[v36]])
  {
    goto LABEL_35;
  }

  v40 = 1;
  if (a4 < 4)
  {
    goto LABEL_426;
  }

  v185 = 0;
  v41 = 3;
  do
  {
    v42 = *(a5 + 8 * v41);
    *&v193 = 0;
    v190 = 0;
    v189 = 0;
    v43 = sub_1819D6824(&v191, v42, &v193, &v189);
    if (!v43)
    {
      v46 = 1;
      goto LABEL_76;
    }

    do
    {
      v45 = *v43++;
      v44 = v45;
    }

    while (v45 == 32);
    v46 = v44 != 61;
    if (v44 == 61)
    {
      if (v189)
      {
        v46 = 0;
        goto LABEL_76;
      }
    }

    else
    {
      --v43;
    }

    v35 = v43 - 1;
    do
    {
      v48 = *++v35;
      v47 = v48;
    }

    while (v48 == 32);
    if (v47)
    {
      v192 = 0;
      v57 = sub_1819D6824(&v191, v35, &v190, &v192);
      if (v57)
      {
        v58 = *v57 != 0;
LABEL_77:
        v38 = v191;
        if (v191)
        {
          goto LABEL_83;
        }

        if (v58)
        {
          v59 = sqlite3_mprintf("parse error in %s");
          goto LABEL_80;
        }

        v38 = v190;
        if (v46)
        {
LABEL_103:
          v66 = v193;
          if (v193)
          {
            for (i = 0; ; ++i)
            {
              if (*(v193 + i) == aRank[i])
              {
                if (!*(v193 + i))
                {
                  goto LABEL_114;
                }
              }

              else if (byte_181A20298[*(v193 + i)] != byte_181A20298[aRank[i]])
              {
                v68 = v193;
                for (j = "rowid"; ; ++j)
                {
                  if (*v68 == *j)
                  {
                    if (!*v68)
                    {
LABEL_114:
                      v70 = sqlite3_mprintf("reserved fts5 column name: %s");
                      goto LABEL_125;
                    }
                  }

                  else if (byte_181A20298[*v68] != byte_181A20298[*j])
                  {
                    goto LABEL_115;
                  }

                  ++v68;
                }
              }
            }
          }

LABEL_115:
          if (!v38)
          {
            goto LABEL_126;
          }

          for (k = 0; ; ++k)
          {
            if (*(v38 + k) == aUnindexed[k])
            {
              if (!*(v38 + k))
              {
                v38 = 0;
                v185 = 1;
                *(*(v19 + 48) + *(v19 + 32)) = 1;
                goto LABEL_126;
              }
            }

            else if (byte_181A20298[*(v38 + k)] != byte_181A20298[aUnindexed[k]])
            {
              v70 = sqlite3_mprintf("unrecognized column option: %s");
LABEL_125:
              *v187 = v70;
              v38 = 1;
LABEL_126:
              v72 = *(v19 + 40);
              v73 = *(v19 + 32);
              *(v19 + 32) = v73 + 1;
              *(v72 + 8 * v73) = v66;
              v191 = v38;
              v63 = v190;
              if (!v190)
              {
                goto LABEL_99;
              }

              goto LABEL_93;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_76:
      v58 = 1;
      goto LABEL_77;
    }

    v38 = v191;
    if (v191)
    {
      goto LABEL_83;
    }

    v38 = 0;
    if (v44 != 61)
    {
      goto LABEL_103;
    }

LABEL_53:
    if (v193)
    {
      v49 = v193;
    }

    else
    {
      v49 = &byte_181A2878D;
    }

    if (v38)
    {
      v50 = v38;
    }

    else
    {
      v50 = &byte_181A2878D;
    }

    v192 = 0;
    v51 = strlen(v49);
    if (v51 < 0)
    {
      sub_1819012D0(37608);
LABEL_130:
      v74 = *(v19 + 64);
      if (!v74)
      {
        if (sqlite3_initialize() || (v74 = sub_181902484(124, 1913357809)) == 0)
        {
          *(v19 + 64) = 0;
          v38 = 7;
          goto LABEL_82;
        }

        *(v74 + 108) = 0u;
        v74[5] = 0u;
        v74[6] = 0u;
        v74[3] = 0u;
        v74[4] = 0u;
        v74[1] = 0u;
        v74[2] = 0u;
        *v74 = 0u;
        *(v19 + 64) = v74;
      }

      for (m = 0; ; m = 1)
      {
        --v50;
        do
        {
          v76 = *++v50;
          v38 = v76;
        }

        while (v76 == 32);
        if (v38 != 44 || (m & 1) == 0)
        {
          if (!v38)
          {
            goto LABEL_82;
          }
        }

        else
        {
          do
          {
            v77 = *++v50;
            LOBYTE(v38) = v77;
          }

          while (v77 == 32);
        }

        if ((v38 - 58) <= 0xF5u)
        {
          v59 = sqlite3_mprintf("malformed prefix=... directive", v180, v181);
          goto LABEL_80;
        }

        v78 = *(v19 + 56);
        if (v78 == 31)
        {
          v59 = sqlite3_mprintf("too many prefix indexes (max %d)");
          goto LABEL_80;
        }

        v79 = 0;
        do
        {
          if (v38 > 0x39u)
          {
            break;
          }

          if (v79 > 999)
          {
            break;
          }

          v79 = 10 * v79 + (v38 - 48);
          v80 = *++v50;
          LOBYTE(v38) = v80;
        }

        while (v80 > 47);
        if ((v79 - 1000) <= 0xFFFFFC18)
        {
          break;
        }

        *(v74 + v78) = v79;
        ++*(v19 + 56);
      }

      v59 = sqlite3_mprintf("prefix length out of range (max 999)", v180, v181);
      goto LABEL_80;
    }

    if (!v51)
    {
      goto LABEL_130;
    }

    v52 = (v51 - 1);
    v53 = *v49;
    v54 = v53 & 0xFFFFFFDF;
    if ((v53 & 0xFFFFFFDF) == 0x50)
    {
      if (v51 == 1)
      {
        goto LABEL_130;
      }

      v55 = v49[1];
      if ((v55 & 0xFFFFFFDF) == 0x52)
      {
        if (v52 == 1)
        {
          goto LABEL_130;
        }

        v55 = v49[2];
        if ((v55 & 0xFFFFFFDF) == 0x45)
        {
          if (v52 == 2)
          {
            goto LABEL_130;
          }

          v55 = v49[3];
          if ((v55 & 0xFFFFFFDF) == 0x46)
          {
            if (v52 == 3)
            {
              goto LABEL_130;
            }

            v55 = v49[4];
            if ((v55 & 0xFFFFFFDF) == 0x49)
            {
              if (v52 == 4)
              {
                goto LABEL_130;
              }

              v55 = v49[5];
              if ((v55 & 0xFFFFFFDF) == 0x58)
              {
                if (v52 == 5)
                {
                  goto LABEL_130;
                }

                v56 = 0;
                v55 = v49[6];
              }

              else
              {
                v56 = 120;
              }
            }

            else
            {
              v56 = 105;
            }
          }

          else
          {
            v56 = 102;
          }
        }

        else
        {
          v56 = 101;
        }
      }

      else
      {
        v56 = 114;
      }
    }

    else
    {
      v56 = 112;
      v55 = *v49;
    }

    if (v56 == byte_181A20298[v55])
    {
      goto LABEL_130;
    }

    if (v54 != 84)
    {
      v82 = 116;
      v81 = *v49;
      goto LABEL_172;
    }

    if (v51 != 1)
    {
      v81 = v49[1];
      if ((v81 & 0xFFFFFFDF) != 0x4F)
      {
        v82 = 111;
        goto LABEL_172;
      }

      if (v52 != 1)
      {
        v81 = v49[2];
        if ((v81 & 0xFFFFFFDF) != 0x4B)
        {
          v82 = 107;
          goto LABEL_172;
        }

        if (v52 != 2)
        {
          v81 = v49[3];
          if ((v81 & 0xFFFFFFDF) != 0x45)
          {
            goto LABEL_291;
          }

          if (v52 != 3)
          {
            v81 = v49[4];
            if ((v81 & 0xFFFFFFDF) != 0x4E)
            {
              v82 = 110;
              goto LABEL_172;
            }

            if (v52 != 4)
            {
              v81 = v49[5];
              if ((v81 & 0xFFFFFFDF) != 0x49)
              {
                v82 = 105;
                goto LABEL_172;
              }

              if (v52 == 5)
              {
                goto LABEL_173;
              }

              v81 = v49[6];
              if ((v81 & 0xFFFFFFDF) != 0x5A)
              {
                v82 = 122;
LABEL_172:
                if (v82 == byte_181A20298[v81])
                {
                  goto LABEL_173;
                }

                if (v54 != 67)
                {
                  v86 = 99;
                  v85 = *v49;
                  goto LABEL_236;
                }

                if (v51 == 1)
                {
                  goto LABEL_237;
                }

                v85 = v49[1];
                if ((v85 & 0xFFFFFFDF) != 0x4F)
                {
                  v86 = 111;
                  goto LABEL_236;
                }

                if (v52 == 1)
                {
LABEL_237:
                  if (!*(v19 + 72))
                  {
                    v38 = *v50;
                    if (*v50)
                    {
                      *(v19 + 72) = 2;
                      *(v19 + 88) = sub_1819D6A30(&v192, "%Q.%Q", *(v19 + 16), v50);
                      v38 = v192;
                    }

                    else
                    {
                      *(v19 + 72) = 1;
                    }

                    goto LABEL_82;
                  }

                  v59 = sqlite3_mprintf("multiple content=... directives", v180, v181);
                  goto LABEL_80;
                }

                v85 = v49[2];
                if ((v85 & 0xFFFFFFDF) == 0x4E)
                {
                  if (v52 == 2)
                  {
                    goto LABEL_237;
                  }

                  v85 = v49[3];
                  if ((v85 & 0xFFFFFFDF) != 0x54)
                  {
                    goto LABEL_295;
                  }

                  if (v52 == 3)
                  {
                    goto LABEL_237;
                  }

                  v85 = v49[4];
                  if ((v85 & 0xFFFFFFDF) != 0x45)
                  {
                    v86 = 101;
                    goto LABEL_236;
                  }

                  if (v52 == 4)
                  {
                    goto LABEL_237;
                  }

                  v85 = v49[5];
                  if ((v85 & 0xFFFFFFDF) == 0x4E)
                  {
                    if (v52 == 5)
                    {
                      goto LABEL_237;
                    }

                    v85 = v49[6];
                    if ((v85 & 0xFFFFFFDF) == 0x54)
                    {
                      if (v52 != 6)
                      {
                        v86 = 0;
                        v85 = v49[7];
LABEL_236:
                        if (v86 == byte_181A20298[v85])
                        {
                          goto LABEL_237;
                        }

                        v103 = 0;
                        v104 = v49 + 18;
                        while (1)
                        {
                          if (v103 == 18)
                          {
                            v105 = 0;
                            goto LABEL_248;
                          }

                          v105 = byte_181A20298[aContentlessDel_1[v103]];
                          if (v105 != byte_181A20298[v49[v103]])
                          {
                            break;
                          }

                          if (v52 + 1 == ++v103)
                          {
                            goto LABEL_249;
                          }
                        }

                        v104 = &v49[v103];
LABEL_248:
                        if (v105 != byte_181A20298[*v104])
                        {
                          v107 = 0;
                          v108 = v49 + 21;
                          while (1)
                          {
                            if (v107 == 21)
                            {
                              v109 = 0;
                              goto LABEL_260;
                            }

                            v109 = byte_181A20298[aContentlessUni_0[v107]];
                            if (v109 != byte_181A20298[v49[v107]])
                            {
                              break;
                            }

                            if (v52 + 1 == ++v107)
                            {
                              goto LABEL_261;
                            }
                          }

                          v108 = &v49[v107];
LABEL_260:
                          if (v109 == byte_181A20298[*v108])
                          {
LABEL_261:
                            v110 = *v50;
                            if ((v110 & 0xFE) == 0x30)
                            {
                              v38 = v50[1];
                              if (!v50[1])
                              {
                                *(v19 + 80) = v110 == 49;
                                goto LABEL_82;
                              }
                            }

                            goto LABEL_263;
                          }

                          if (v54 == 67)
                          {
                            if (v51 == 1)
                            {
                              goto LABEL_346;
                            }

                            v111 = v49[1];
                            if ((v111 & 0xFFFFFFDF) == 0x4F)
                            {
                              if (v52 == 1)
                              {
                                goto LABEL_346;
                              }

                              v111 = v49[2];
                              if ((v111 & 0xFFFFFFDF) == 0x4E)
                              {
                                if (v52 == 2)
                                {
                                  goto LABEL_346;
                                }

                                v112 = v49[3];
                                if ((v112 & 0xFFFFFFDF) != 0x54)
                                {
                                  goto LABEL_344;
                                }

                                if (v52 == 3)
                                {
                                  goto LABEL_346;
                                }

                                v112 = v49[4];
                                if ((v112 & 0xFFFFFFDF) == 0x45)
                                {
                                  if (v52 == 4)
                                  {
                                    goto LABEL_346;
                                  }

                                  v112 = v49[5];
                                  if ((v112 & 0xFFFFFFDF) == 0x4E)
                                  {
                                    if (v52 == 5)
                                    {
                                      goto LABEL_346;
                                    }

                                    v112 = v49[6];
                                    if ((v112 & 0xFFFFFFDF) == 0x54)
                                    {
                                      if (v52 == 6)
                                      {
                                        goto LABEL_346;
                                      }

                                      v112 = v49[7];
                                      if (v112 == 95)
                                      {
                                        if (v52 == 7)
                                        {
                                          goto LABEL_346;
                                        }

                                        v112 = v49[8];
                                        if ((v112 & 0xFFFFFFDF) == 0x52)
                                        {
                                          if (v52 == 8)
                                          {
                                            goto LABEL_346;
                                          }

                                          v112 = v49[9];
                                          if ((v112 & 0xFFFFFFDF) == 0x4F)
                                          {
                                            if (v52 == 9)
                                            {
                                              goto LABEL_346;
                                            }

                                            v112 = v49[10];
                                            if ((v112 & 0xFFFFFFDF) == 0x57)
                                            {
                                              if (v52 == 10)
                                              {
                                                goto LABEL_346;
                                              }

                                              v112 = v49[11];
                                              if ((v112 & 0xFFFFFFDF) == 0x49)
                                              {
                                                if (v52 == 11)
                                                {
                                                  goto LABEL_346;
                                                }

                                                v112 = v49[12];
                                                if ((v112 & 0xFFFFFFDF) == 0x44)
                                                {
                                                  if (v52 == 12)
                                                  {
                                                    goto LABEL_346;
                                                  }

                                                  v113 = 0;
                                                  v112 = v49[13];
                                                }

                                                else
                                                {
                                                  v113 = 100;
                                                }
                                              }

                                              else
                                              {
                                                v113 = 105;
                                              }
                                            }

                                            else
                                            {
                                              v113 = 119;
                                            }
                                          }

                                          else
                                          {
                                            v113 = 111;
                                          }
                                        }

                                        else
                                        {
                                          v113 = 114;
                                        }
                                      }

                                      else
                                      {
                                        v113 = 95;
                                      }

                                      goto LABEL_345;
                                    }

LABEL_344:
                                    v113 = 116;
                                  }

                                  else
                                  {
                                    v113 = 110;
                                  }
                                }

                                else
                                {
                                  v113 = 101;
                                }
                              }

                              else
                              {
                                v113 = 110;
                                v112 = v49[2];
                              }

LABEL_345:
                              if (v113 == byte_181A20298[v112])
                              {
LABEL_346:
                                if (*(v19 + 96))
                                {
                                  v59 = sqlite3_mprintf("multiple content_rowid=... directives", v180, v181);
                                  goto LABEL_80;
                                }

                                *(v19 + 96) = sub_1819D6770(&v192, v50, 0xFFFFFFFF);
                                v38 = v192;
                                goto LABEL_82;
                              }

                              if ((v111 & 0xFFFFFFDF) == 0x4C)
                              {
                                if (v52 == 2)
                                {
                                  goto LABEL_299;
                                }

                                v111 = v49[3];
                                if ((v111 & 0xFFFFFFDF) == 0x55)
                                {
                                  if (v52 == 3)
                                  {
                                    goto LABEL_299;
                                  }

                                  v111 = v49[4];
                                  if ((v111 & 0xFFFFFFDF) == 0x4D)
                                  {
                                    if (v52 == 4)
                                    {
                                      goto LABEL_299;
                                    }

                                    v111 = v49[5];
                                    if ((v111 & 0xFFFFFFDF) == 0x4E)
                                    {
                                      if (v52 == 5)
                                      {
                                        goto LABEL_299;
                                      }

                                      v111 = v49[6];
                                      if ((v111 & 0xFFFFFFDF) == 0x53)
                                      {
                                        if (v52 == 6)
                                        {
                                          goto LABEL_299;
                                        }

                                        v111 = v49[7];
                                        if ((v111 & 0xFFFFFFDF) == 0x49)
                                        {
                                          if (v52 == 7)
                                          {
                                            goto LABEL_299;
                                          }

                                          v111 = v49[8];
                                          if ((v111 & 0xFFFFFFDF) == 0x5A)
                                          {
                                            if (v52 == 8)
                                            {
                                              goto LABEL_299;
                                            }

                                            v111 = v49[9];
                                            if ((v111 & 0xFFFFFFDF) == 0x45)
                                            {
                                              if (v52 == 9)
                                              {
LABEL_299:
                                                v115 = *v50;
                                                if ((v115 & 0xFE) != 0x30 || (v38 = v50[1], v50[1]))
                                                {
                                                  v59 = sqlite3_mprintf("malformed columnsize=... directive", v180, v181);
                                                  goto LABEL_80;
                                                }

                                                *(v19 + 104) = v115 == 49;
                                                goto LABEL_82;
                                              }

                                              v114 = 0;
                                              v111 = v49[10];
                                            }

                                            else
                                            {
                                              v114 = 101;
                                            }
                                          }

                                          else
                                          {
                                            v114 = 122;
                                          }
                                        }

                                        else
                                        {
                                          v114 = 105;
                                        }
                                      }

                                      else
                                      {
                                        v114 = 115;
                                      }
                                    }

                                    else
                                    {
                                      v114 = 110;
                                    }
                                  }

                                  else
                                  {
                                    v114 = 109;
                                  }
                                }

                                else
                                {
                                  v114 = 117;
                                }
                              }

                              else
                              {
                                v114 = 108;
                              }
                            }

                            else
                            {
                              v114 = 111;
                            }
                          }

                          else
                          {
                            v114 = 99;
                            v111 = *v49;
                          }

                          if (v114 == byte_181A20298[v111])
                          {
                            goto LABEL_299;
                          }

                          if (v54 == 76)
                          {
                            if (v51 == 1)
                            {
                              goto LABEL_321;
                            }

                            v116 = v49[1];
                            if ((v116 & 0xFFFFFFDF) == 0x4F)
                            {
                              if (v52 == 1)
                              {
                                goto LABEL_321;
                              }

                              v116 = v49[2];
                              if ((v116 & 0xFFFFFFDF) == 0x43)
                              {
                                if (v52 == 2)
                                {
                                  goto LABEL_321;
                                }

                                v116 = v49[3];
                                if ((v116 & 0xFFFFFFDF) == 0x41)
                                {
                                  if (v52 == 3)
                                  {
                                    goto LABEL_321;
                                  }

                                  v116 = v49[4];
                                  if ((v116 & 0xFFFFFFDF) == 0x4C)
                                  {
                                    if (v52 == 4)
                                    {
                                      goto LABEL_321;
                                    }

                                    v116 = v49[5];
                                    if ((v116 & 0xFFFFFFDF) == 0x45)
                                    {
                                      if (v52 == 5)
                                      {
                                        goto LABEL_321;
                                      }

                                      v117 = 0;
                                      v116 = v49[6];
                                    }

                                    else
                                    {
                                      v117 = 101;
                                    }
                                  }

                                  else
                                  {
                                    v117 = 108;
                                  }
                                }

                                else
                                {
                                  v117 = 97;
                                }
                              }

                              else
                              {
                                v117 = 99;
                              }
                            }

                            else
                            {
                              v117 = 111;
                            }
                          }

                          else
                          {
                            v117 = 108;
                            v116 = *v49;
                          }

                          if (v117 == byte_181A20298[v116])
                          {
LABEL_321:
                            v118 = *v50;
                            if ((v118 & 0xFE) != 0x30 || (v38 = v50[1], v50[1]))
                            {
                              v59 = sqlite3_mprintf("malformed locale=... directive", v180, v181);
                              goto LABEL_80;
                            }

                            *(v19 + 112) = v118 == 49;
                            goto LABEL_82;
                          }

                          if (v54 == 68)
                          {
                            if (v51 == 1)
                            {
                              goto LABEL_380;
                            }

                            v119 = v49[1];
                            if ((v119 & 0xFFFFFFDF) == 0x45)
                            {
                              if (v52 == 1)
                              {
                                goto LABEL_380;
                              }

                              v119 = v49[2];
                              if ((v119 & 0xFFFFFFDF) == 0x54)
                              {
                                if (v52 == 2)
                                {
                                  goto LABEL_380;
                                }

                                v119 = v49[3];
                                if ((v119 & 0xFFFFFFDF) == 0x41)
                                {
                                  if (v52 == 3)
                                  {
                                    goto LABEL_380;
                                  }

                                  v119 = v49[4];
                                  if ((v119 & 0xFFFFFFDF) == 0x49)
                                  {
                                    if (v52 == 4)
                                    {
                                      goto LABEL_380;
                                    }

                                    v119 = v49[5];
                                    if ((v119 & 0xFFFFFFDF) == 0x4C)
                                    {
                                      if (v52 == 5)
                                      {
                                        goto LABEL_380;
                                      }

                                      v120 = 0;
                                      v119 = v49[6];
                                    }

                                    else
                                    {
                                      v120 = 108;
                                    }
                                  }

                                  else
                                  {
                                    v120 = 105;
                                  }
                                }

                                else
                                {
                                  v120 = 97;
                                }
                              }

                              else
                              {
                                v120 = 116;
                              }
                            }

                            else
                            {
                              v120 = 101;
                            }
                          }

                          else
                          {
                            v120 = 100;
                            v119 = *v49;
                          }

                          if (v120 == byte_181A20298[v119])
                          {
LABEL_380:
                            if (sub_1819D726C(&off_1E6A280C0, v50, (v19 + 116)))
                            {
                              v59 = sqlite3_mprintf("malformed detail=... directive", v180, v181);
                              goto LABEL_80;
                            }

                            v38 = 0;
                            goto LABEL_82;
                          }

                          if (v54 == 84)
                          {
                            if (v51 == 1)
                            {
                              goto LABEL_406;
                            }

                            v53 = v49[1];
                            if ((v53 & 0xFFFFFFDF) != 0x4F)
                            {
                              v121 = 111;
                              goto LABEL_405;
                            }

                            if (v52 == 1)
                            {
                              goto LABEL_406;
                            }

                            v53 = v49[2];
                            if ((v53 & 0xFFFFFFDF) != 0x4B)
                            {
                              v121 = 107;
                              goto LABEL_405;
                            }

                            if (v52 == 2)
                            {
                              goto LABEL_406;
                            }

                            v53 = v49[3];
                            if ((v53 & 0xFFFFFFDF) != 0x45)
                            {
                              v121 = 101;
                              goto LABEL_405;
                            }

                            if (v52 == 3)
                            {
                              goto LABEL_406;
                            }

                            v53 = v49[4];
                            if ((v53 & 0xFFFFFFDF) != 0x4E)
                            {
                              v121 = 110;
                              goto LABEL_405;
                            }

                            if (v52 == 4)
                            {
                              goto LABEL_406;
                            }

                            v53 = v49[5];
                            if ((v53 & 0xFFFFFFDF) != 0x44)
                            {
                              v121 = 100;
                              goto LABEL_405;
                            }

                            if (v52 == 5)
                            {
                              goto LABEL_406;
                            }

                            v53 = v49[6];
                            if ((v53 & 0xFFFFFFDF) != 0x41)
                            {
                              goto LABEL_418;
                            }

                            if (v52 == 6)
                            {
                              goto LABEL_406;
                            }

                            v53 = v49[7];
                            if ((v53 & 0xFFFFFFDF) == 0x54)
                            {
                              if (v52 == 7)
                              {
                                goto LABEL_406;
                              }

                              v53 = v49[8];
                              if ((v53 & 0xFFFFFFDF) == 0x41)
                              {
                                if (v52 != 8)
                                {
                                  v121 = 0;
                                  v53 = v49[9];
LABEL_405:
                                  if (v121 != byte_181A20298[v53])
                                  {
                                    v59 = sqlite3_mprintf("unrecognized option: %.*s");
                                    goto LABEL_80;
                                  }
                                }

LABEL_406:
                                v122 = *v50;
                                if ((v122 & 0xFE) != 0x30 || (v38 = v50[1], v50[1]))
                                {
                                  v59 = sqlite3_mprintf("malformed tokendata=... directive", v180, v181);
                                  goto LABEL_80;
                                }

                                *(v19 + 108) = v122 == 49;
                                goto LABEL_82;
                              }

LABEL_418:
                              v121 = 97;
                              goto LABEL_405;
                            }
                          }

                          v121 = 116;
                          goto LABEL_405;
                        }

LABEL_249:
                        v106 = *v50;
                        if ((v106 & 0xFE) == 0x30)
                        {
                          v38 = v50[1];
                          if (!v50[1])
                          {
                            *(v19 + 76) = v106 == 49;
                            goto LABEL_82;
                          }
                        }

LABEL_263:
                        v59 = sqlite3_mprintf("malformed contentless_delete=... directive", v180, v181);
LABEL_80:
                        *v187 = v59;
                        goto LABEL_81;
                      }

                      goto LABEL_237;
                    }

LABEL_295:
                    v86 = 116;
                    goto LABEL_236;
                  }
                }

                v86 = 110;
                goto LABEL_236;
              }

              if (v52 == 6)
              {
                goto LABEL_173;
              }

              v81 = v49[7];
              if ((v81 & 0xFFFFFFDF) != 0x45)
              {
LABEL_291:
                v82 = 101;
                goto LABEL_172;
              }

              if (v52 != 7)
              {
                v82 = 0;
                v81 = v49[8];
                goto LABEL_172;
              }
            }
          }
        }
      }
    }

LABEL_173:
    v83 = strlen(v50) + 1;
    v84 = 10 * v83;
    if (sqlite3_initialize() || (v87 = sub_181902484(v84, 1913357809)) == 0)
    {
      if (v84 <= 0)
      {
        v38 = 0;
      }

      else
      {
        v38 = 7;
      }

      goto LABEL_82;
    }

    v182 = v87;
    bzero(v87, v84);
    v88 = "multiple tokenize=... directives";
    if (*(v19 + 152))
    {
      goto LABEL_228;
    }

    v89 = 0;
    v90 = &v182[v83];
    v38 = *v50;
    if (v38 == 32)
    {
      do
      {
        v91 = *++v50;
        LODWORD(v38) = v91;
      }

      while (v91 == 32);
      goto LABEL_198;
    }

    while (1)
    {
      if (!v38)
      {
        *(v19 + 152) = v182;
        *(v19 + 160) = v89;
        goto LABEL_82;
      }

LABEL_198:
      v184 = v89;
      if (v38 == 39)
      {
        break;
      }

      v93 = 0;
      v92 = v50;
      while ((v38 & 0x80) != 0 || byte_181A25753[v38])
      {
        v94 = *++v92;
        LODWORD(v38) = v94;
        --v93;
      }

      if (!v93)
      {
        goto LABEL_227;
      }

LABEL_206:
      v183 = v92 - v50;
      memcpy(v90, v50, v92 - v50);
      v182[v184] = v90;
      v95 = *v90;
      if ((v95 - 34) <= 0x3E && ((1 << (v95 - 34)) & 0x4200000000000021) != 0)
      {
        if (v95 == 91)
        {
          v96 = 93;
        }

        else
        {
          v96 = *v90;
        }

        v97 = v90[1];
        if (v90[1])
        {
          v98 = 0;
          v99 = 1;
          while (1)
          {
            v100 = v99 + 1;
            if (v97 == v96)
            {
              if (v90[v100] != v96)
              {
LABEL_217:
                v98 = v98;
                goto LABEL_219;
              }

              LODWORD(v100) = v99 + 2;
              LOBYTE(v97) = v96;
            }

            v90[v98++] = v97;
            v97 = v90[v100];
            v99 = v100;
            if (!v90[v100])
            {
              goto LABEL_217;
            }
          }
        }

        v98 = 0;
LABEL_219:
        v90[v98] = 0;
      }

      v50 = (v92 - 1);
      do
      {
        v101 = *++v50;
        v38 = v101;
      }

      while (v101 == 32);
      v90 += v183 + 1;
      v89 = v184 + 1;
    }

    v92 = sub_1819D7094(v50);
    if (v92)
    {
      goto LABEL_206;
    }

LABEL_227:
    v88 = "parse error in tokenize directive";
LABEL_228:
    *v187 = sqlite3_mprintf(v88);
    v102 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v182);
      --qword_1ED456A90;
      off_1ED452EB0(v182);
      v182 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_81;
      }

      v102 = &xmmword_1ED452F28;
    }

    (*v102)(v182);
LABEL_81:
    v38 = 1;
LABEL_82:
    v191 = v38;
LABEL_83:
    v60 = v193;
    if (!v193)
    {
      goto LABEL_92;
    }

    v61 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      v62 = v38;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v60);
      --qword_1ED456A90;
      off_1ED452EB0(v60);
      v60 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_91;
      }

      v61 = &xmmword_1ED452F28;
    }

    else
    {
      v62 = v38;
    }

    (*v61)(v60);
LABEL_91:
    v38 = v62;
LABEL_92:
    v63 = v190;
    if (!v190)
    {
      goto LABEL_99;
    }

LABEL_93:
    v64 = &off_1ED452EB0;
    v65 = v38;
    if (!dword_1ED452E80)
    {
      goto LABEL_98;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v63);
    --qword_1ED456A90;
    off_1ED452EB0(v63);
    v63 = xmmword_1ED456AF0;
    v38 = v65;
    if (xmmword_1ED456AF0)
    {
      v64 = &xmmword_1ED452F28;
LABEL_98:
      (*v64)(v63, v35);
      v38 = v65;
    }

LABEL_99:
    if (v38)
    {
      break;
    }

    ++v41;
  }

  while (v41 < v188);
  v40 = v185 == 0;
  v37 = v187;
  if (v38)
  {
    goto LABEL_25;
  }

LABEL_426:
  if (!*(v19 + 76))
  {
LABEL_429:
    v123 = *(v19 + 80);
    if (v123 && *(v19 + 72) != 1)
    {
      v129 = sqlite3_mprintf("contentless_unindexed=1 requires a contentless table", v35);
      goto LABEL_453;
    }

    if (*(v19 + 88))
    {
      goto LABEL_432;
    }

    if (*(v19 + 72))
    {
      if (v123)
      {
        v130 = v40;
      }

      else
      {
        v130 = 1;
      }

      if (v130)
      {
        if (!*(v19 + 104))
        {
          goto LABEL_432;
        }

        v131 = "docsize";
        goto LABEL_459;
      }

      *(v19 + 72) = 3;
    }

    v131 = "content";
LABEL_459:
    *(v19 + 88) = sub_1819D6A30(&v191, "%Q.'%q_%s'", *(v19 + 16), *(v19 + 24), v131);
    v38 = v191;
    if (v191)
    {
      goto LABEL_25;
    }

LABEL_432:
    v124 = *(v19 + 96);
    if (!v124)
    {
      if (sqlite3_initialize() || (v124 = sub_181902484(6, 0x100004077774924)) == 0)
      {
        *(v19 + 96) = 0;
        v38 = 7;
        goto LABEL_25;
      }

      strcpy(v124, "rowid");
      *(v19 + 96) = v124;
    }

    LODWORD(v190) = 0;
    v193 = 0uLL;
    sub_1819D7370(&v190, &v193, "T.%Q", v124);
    v125 = *(v19 + 72);
    if (v125 != 1)
    {
      if (*(v19 + 32) >= 1)
      {
        v126 = 0;
        while (1)
        {
          v128 = *(v19 + 72);
          if (v128)
          {
            if (v128 == 2)
            {
              sub_1819D7370(&v190, &v193, ", T.%Q", *(*(v19 + 40) + 8 * v126));
              goto LABEL_438;
            }

            if (!*(*(v19 + 48) + v126))
            {
              sub_1819D7370(&v190, &v193, ", NULL");
              goto LABEL_438;
            }
          }

          sub_1819D7370(&v190, &v193, ", T.c%d");
LABEL_438:
          ++v126;
          v127 = *(v19 + 32);
          if (v126 >= v127)
          {
            v125 = *(v19 + 72);
            v132 = v127 < 1;
            goto LABEL_464;
          }
        }
      }

      v132 = 1;
LABEL_464:
      v37 = v187;
      if (!v125 && *(v19 + 112) && !v132)
      {
        v138 = 0;
        do
        {
          if (*(*(v19 + 48) + v138))
          {
            sub_1819D7370(&v190, &v193, ", NULL");
          }

          else
          {
            sub_1819D7370(&v190, &v193, ", T.l%d");
          }

          ++v138;
        }

        while (v138 < *(v19 + 32));
      }
    }

    *(v19 + 120) = v193;
    v38 = v190;
    if (v190)
    {
      goto LABEL_25;
    }

    *(v19 + 248) = v37;
    v14[3] = v19;
    v14[6] = a3;
    if (a1)
    {
LABEL_471:
      v134 = sub_1819D630C(v19);
      if (v134)
      {
LABEL_472:
        v17 = v134;
LABEL_484:
        *(v19 + 248) = 0;
        goto LABEL_26;
      }
    }

    else if (*(v19 + 160) >= 1)
    {
      v135 = **(v19 + 152);
      if (v135)
      {
        for (n = "trigram"; ; ++n)
        {
          if (*v135 == *n)
          {
            if (!*v135)
            {
              goto LABEL_471;
            }
          }

          else if (byte_181A20298[*v135] != byte_181A20298[*n])
          {
            break;
          }

          ++v135;
        }
      }
    }

    LODWORD(v190) = 0;
    if (sqlite3_initialize() || (v139 = sub_181902484(168, 1913357809)) == 0)
    {
      v137 = 0;
      v14[4] = 0;
      v17 = 7;
      goto LABEL_483;
    }

    v137 = v139;
    *(v139 + 160) = 0;
    *(v139 + 128) = 0u;
    *(v139 + 144) = 0u;
    *(v139 + 96) = 0u;
    *(v139 + 112) = 0u;
    *(v139 + 64) = 0u;
    *(v139 + 80) = 0u;
    *(v139 + 32) = 0u;
    *(v139 + 48) = 0u;
    *v139 = 0u;
    *(v139 + 16) = 0u;
    v14[4] = v139;
    *v139 = v19;
    *(v139 + 16) = 64;
    v140 = sub_1819D6A30(&v190, "%s_data", *(v19 + 24));
    *(v137 + 8) = v140;
    if (!a1 || !v140)
    {
      v17 = v190;
      if (!v190)
      {
        goto LABEL_517;
      }

      goto LABEL_483;
    }

    *&v193 = 0;
    v17 = sub_1819D7DA4(*v19, &v193, "CREATE TABLE %Q.'%q_%q'(%s)%s", *(v19 + 16), *(v19 + 24), "data", "id INTEGER PRIMARY KEY, block BLOB", &byte_181A2878D);
    if (v193)
    {
      *v187 = sqlite3_mprintf("fts5: error creating shadow table %q_%s: %s", *(v19 + 24), "data", v193);
      v141 = v193;
      if (v193)
      {
        v142 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
LABEL_500:
          (*v142)(v141);
          goto LABEL_501;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v141);
        --qword_1ED456A90;
        off_1ED452EB0(v141);
        v141 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v142 = &xmmword_1ED452F28;
          goto LABEL_500;
        }
      }
    }

LABEL_501:
    if (v17)
    {
      goto LABEL_483;
    }

    *&v193 = 0;
    v17 = sub_1819D7DA4(*v19, &v193, "CREATE TABLE %Q.'%q_%q'(%s)%s", *(v19 + 16), *(v19 + 24), "idx", "segid, term, pgno, PRIMARY KEY(segid, term)", " WITHOUT ROWID");
    if (!v193)
    {
      goto LABEL_510;
    }

    *v187 = sqlite3_mprintf("fts5: error creating shadow table %q_%s: %s", *(v19 + 24), "idx", v193);
    v143 = v193;
    if (!v193)
    {
      goto LABEL_510;
    }

    v144 = &off_1ED452EB0;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v143);
      --qword_1ED456A90;
      off_1ED452EB0(v143);
      v143 = xmmword_1ED456AF0;
      if (!xmmword_1ED456AF0)
      {
        goto LABEL_510;
      }

      v144 = &xmmword_1ED452F28;
    }

    (*v144)(v143);
LABEL_510:
    if (v17)
    {
      goto LABEL_483;
    }

    v145 = *(v137 + 160);
    if (!v145)
    {
      goto LABEL_537;
    }

    if ((*v145)-- > 1)
    {
LABEL_536:
      *(v137 + 160) = 0;
LABEL_537:
      v158 = *(v137 + 24);
      if (v158)
      {
        sub_1819D8C28(v158);
        *(v137 + 32) = 0;
        *(v137 + 56) = 0;
        *(v137 + 64) = 0;
      }

      *(v137 + 52) = 0;
      v193 = 0u;
      v194 = 0u;
      v195 = 0u;
      if (*(*v137 + 76))
      {
        *&v194 = 1;
      }

      sub_1819D7E9C(v137, 1, &byte_181A2878D, 0);
      sub_1819D8134(v137, &v193);
      v17 = *(v137 + 60);
      *(v137 + 60) = 0;
      if (!v17)
      {
LABEL_517:
        v149 = v14[4];
        v150 = *(v19 + 32);
        if (sqlite3_initialize())
        {
          v17 = 7;
          v14[5] = 0;
          goto LABEL_484;
        }

        v153 = 8 * v150;
        v154 = sub_181902484(v153 + 144, 0x103004028928F2ALL);
        v14[5] = v154;
        if (!v154)
        {
          v17 = 7;
          goto LABEL_484;
        }

        v155 = v154;
        bzero(v154, v153 + 144);
        v155[4] = (v155 + 18);
        *v155 = v19;
        v155[1] = v149;
        if (!a1)
        {
          goto LABEL_596;
        }

        v156 = *(v19 + 72);
        if (v156 != 3 && v156)
        {
          goto LABEL_572;
        }

        v157 = *(v19 + 32);
        if (sqlite3_initialize() || (v159 = sub_181902484(20 * v157 + 32, 1549137473)) == 0)
        {
          v17 = 7;
          goto LABEL_595;
        }

        v160 = v159;
        v161 = 10 * v157 + 32;
        sqlite3_snprintf(v161, v159, "id INTEGER PRIMARY KEY");
        v162 = *(v19 + 32);
        if (v162 >= 1)
        {
          v163 = strlen(v160);
          for (ii = 0; ii < v162; ++ii)
          {
            if (!*(v19 + 72) || *(*(v19 + 48) + ii))
            {
              sqlite3_snprintf(v161 - v163, &v160[v163], ", c%d", ii);
              v163 += strlen(&v160[v163]);
              v162 = *(v19 + 32);
            }
          }

          if (v162 >= 1 && *(v19 + 112))
          {
            for (jj = 0; jj < v162; ++jj)
            {
              if (!*(*(v19 + 48) + jj))
              {
                sqlite3_snprintf(v161 - v163, &v160[v163], ", l%d", jj);
                v163 += strlen(&v160[v163]);
                v162 = *(v19 + 32);
              }
            }
          }
        }

        *&v193 = 0;
        v17 = sub_1819D7DA4(*v19, &v193, "CREATE TABLE %Q.'%q_%q'(%s)%s", *(v19 + 16), *(v19 + 24), "content", v160, &byte_181A2878D);
        if (v193)
        {
          *v187 = sqlite3_mprintf("fts5: error creating shadow table %q_%s: %s", *(v19 + 24), "content", v193);
          v166 = v193;
          if (v193)
          {
            v167 = &off_1ED452EB0;
            if (!dword_1ED452E80)
            {
LABEL_564:
              (*v167)(v166);
              goto LABEL_565;
            }

            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v166);
            --qword_1ED456A90;
            off_1ED452EB0(v166);
            v166 = xmmword_1ED456AF0;
            if (xmmword_1ED456AF0)
            {
              v167 = &xmmword_1ED452F28;
              goto LABEL_564;
            }
          }
        }

LABEL_565:
        v168 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v160);
          --qword_1ED456A90;
          off_1ED452EB0(v160);
          v160 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
LABEL_571:
            if (v17)
            {
              goto LABEL_595;
            }

LABEL_572:
            if (!*(v19 + 104))
            {
LABEL_585:
              *&v193 = 0;
              v17 = sub_1819D7DA4(*v19, &v193, "CREATE TABLE %Q.'%q_%q'(%s)%s", *(v19 + 16), *(v19 + 24), "config", "k PRIMARY KEY, v", " WITHOUT ROWID");
              if (v193)
              {
                *v187 = sqlite3_mprintf("fts5: error creating shadow table %q_%s: %s", *(v19 + 24), "config", v193);
                v172 = v193;
                if (v193)
                {
                  v173 = &off_1ED452EB0;
                  if (!dword_1ED452E80)
                  {
LABEL_592:
                    (*v173)(v172);
                    goto LABEL_593;
                  }

                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v172);
                  --qword_1ED456A90;
                  off_1ED452EB0(v172);
                  v172 = xmmword_1ED456AF0;
                  if (xmmword_1ED456AF0)
                  {
                    v173 = &xmmword_1ED452F28;
                    goto LABEL_592;
                  }
                }
              }

LABEL_593:
              if (v17)
              {
                goto LABEL_595;
              }

              v17 = sub_1819D8D48(v155, "version", 0, 4);
              if (v17)
              {
                goto LABEL_595;
              }

LABEL_596:
              LODWORD(v193) = 0;
              v174 = sub_1819D6A30(&v193, "CREATE TABLE x(");
              v175 = v174;
              if (v174)
              {
                if (*(v19 + 32) >= 1)
                {
                  v175 = sub_1819D6A30(&v193, "%z%s%Q", v174, &byte_181A2878D, **(v19 + 40));
                  if (v175)
                  {
                    v176 = 1;
                    do
                    {
                      if (v176 >= *(v19 + 32))
                      {
                        break;
                      }

                      v175 = sub_1819D6A30(&v193, "%z%s%Q", v175, ", ", *(*(v19 + 40) + 8 * v176++));
                    }

                    while (v175);
                  }
                }
              }

              v177 = sub_1819D6A30(&v193, "%z, %Q HIDDEN, %s HIDDEN)", v175, *(v19 + 24), "rank");
              if (v177)
              {
                v178 = v177;
                v17 = sqlite3_declare_vtab(*v19, v177);
                v179 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v178);
                  --qword_1ED456A90;
                  off_1ED452EB0(v178);
                  v178 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_610;
                  }

                  v179 = &xmmword_1ED452F28;
                }

                (*v179)(v178);
              }

              else
              {
                v17 = v193;
              }

LABEL_610:
              if (v17)
              {
                goto LABEL_484;
              }

              v134 = sub_1819D6494(v14[3], *(v14[3] + 192) - 1);
              if (!v134)
              {
                if (*(v19 + 72) || (v134 = sqlite3_vtab_config(v186, 1, 1), !v134))
                {
                  result = sqlite3_vtab_config(v186, 2);
                  *(v19 + 248) = 0;
                  v17 = result;
                  if (result)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_33;
                }
              }

              goto LABEL_472;
            }

            if (*(v19 + 76))
            {
              v169 = "id INTEGER PRIMARY KEY, sz BLOB, origin INTEGER";
            }

            else
            {
              v169 = "id INTEGER PRIMARY KEY, sz BLOB";
            }

            *&v193 = 0;
            v17 = sub_1819D7DA4(*v19, &v193, "CREATE TABLE %Q.'%q_%q'(%s)%s", *(v19 + 16), *(v19 + 24), "docsize", v169, &byte_181A2878D);
            if (!v193)
            {
              goto LABEL_584;
            }

            *v187 = sqlite3_mprintf("fts5: error creating shadow table %q_%s: %s", *(v19 + 24), "docsize", v193);
            v170 = v193;
            if (!v193)
            {
              goto LABEL_584;
            }

            v171 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v170);
              --qword_1ED456A90;
              off_1ED452EB0(v170);
              v170 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
LABEL_584:
                if (!v17)
                {
                  goto LABEL_585;
                }

LABEL_595:
                sub_1819D8F54(v155);
                v14[5] = 0;
                goto LABEL_484;
              }

              v171 = &xmmword_1ED452F28;
            }

            (*v171)(v170);
            goto LABEL_584;
          }

          v168 = &xmmword_1ED452F28;
        }

        (*v168)(v160);
        goto LABEL_571;
      }

LABEL_483:
      sub_1819D79B0(v137);
      v14[4] = 0;
      goto LABEL_484;
    }

    if (v145[7] < 1)
    {
LABEL_535:
      sqlite3_free(v145);
      goto LABEL_536;
    }

    v147 = 0;
    v148 = (v145 + 10);
    while (1)
    {
      v152 = *v148;
      if (*v148)
      {
        v151 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v152);
          --qword_1ED456A90;
          off_1ED452EB0(v152);
          v152 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_521;
          }

          v151 = &xmmword_1ED452F28;
        }

        (*v151)(v152);
      }

LABEL_521:
      ++v147;
      v148 += 2;
      if (v147 >= v145[7])
      {
        goto LABEL_535;
      }
    }
  }

  if (*(v19 + 72) == 1)
  {
    if (*(v19 + 104))
    {
      goto LABEL_429;
    }

    v129 = sqlite3_mprintf("contentless_delete=1 is incompatible with columnsize=0", v35);
  }

  else
  {
    v129 = sqlite3_mprintf("contentless_delete=1 requires a contentless table", v35);
  }

LABEL_453:
  *v37 = v129;
  v38 = 1;
LABEL_25:
  v17 = v38;
  sub_1819D6A90(v19);
LABEL_26:
  sub_1819D79B0(v14[4]);
  sub_1819D8F54(v14[5]);
  sub_1819D6A90(v14[3]);
  v39 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
    --qword_1ED456A90;
    off_1ED452EB0(v14);
    v14 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v39 = &xmmword_1ED452F28;
      goto LABEL_31;
    }
  }

  else
  {
LABEL_31:
    (*v39)(v14);
    v14 = 0;
  }

  result = v17;
LABEL_33:
  *a6 = v14;
  return result;
}