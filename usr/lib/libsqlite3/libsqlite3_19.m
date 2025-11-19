uint64_t sub_181956EF4(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(result + 16))
  {
    v5 = result;
    result = sub_1818B8080();
    if (result != a3)
    {
      v9 = result;
      if (!a2)
      {
        goto LABEL_14;
      }

      while (1)
      {
        v10 = *(a2 + 1);
        if ((v10 & 0x82000) == 0)
        {
          break;
        }

        if ((v10 & 0x80000) != 0)
        {
          a2 = *(*(a2 + 4) + 8);
          if (!a2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (*a2 != 114)
          {
            break;
          }

          a2 = *(a2 + 2);
          if (!a2)
          {
            goto LABEL_14;
          }
        }
      }

      if ((v10 & 0x400000) != 0 || *a2 == 176)
      {
        v11 = 80;
      }

      else
      {
LABEL_14:
        v11 = 81;
      }

      result = *(v5 + 16);
      v12 = *(result + 144);
      if (*(result + 148) <= v12)
      {

        return sub_18194C8AC(result, v11, v9, a3, 0, v6, v7, v8);
      }

      else
      {
        *(result + 144) = v12 + 1;
        v13 = *(result + 136) + 40 * v12;
        *v13 = v11;
        *(v13 + 2) = 0;
        *(v13 + 4) = v9;
        *(v13 + 8) = a3;
        *(v13 + 1) = 0;
        *(v13 + 12) = 0;
        *(v13 + 28) = 0;
        *(v13 + 20) = 0;
        *(v13 + 36) = 0;
      }
    }
  }

  return result;
}

void sub_181957014(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  if (a2 != 1)
  {
    if (*(*(*(*a1 + 32) + 32 * a2 + 8) + 17))
    {
      sub_1819570CC(a1, a2, a3, a4, a5);
    }
  }
}

void *sub_181957040(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  result = sub_1819572CC(a1, a2);
  if (result)
  {
    v4 = result;
    if (*(*v2 + 103))
    {
      if (!*(*v2 + 824) && (*result)-- == 1)
      {
        v6 = result[2];

        return sub_181939EC8(v6, v4);
      }
    }

    else
    {
      v7 = *(v2 + 136) + 40 * *(v2 + 144);
      *(v7 - 39) = -8;
      *(v7 - 24) = result;
    }
  }

  return result;
}

void sub_1819570CC(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v6 = a4;
  if (*(a1 + 152))
  {
    v9 = *(a1 + 152);
  }

  else
  {
    v9 = a1;
  }

  v10 = *(v9 + 132);
  v11 = *(v9 + 136);
  if (v10 < 1)
  {
    v14 = 24 * v10 + 24;
    v15 = *v9;
    v16 = v14;
    if (!v11)
    {
      v17 = sub_181929E8C(*v9, v14, 3025153638);
      *(v9 + 136) = v17;
      if (v17)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v12 = (v11 + 1);
    v13 = *(v9 + 132);
    do
    {
      if (*(v12 - 2) == a2 && *(v12 - 1) == a3)
      {
        *v12 = (*v12 | a4) != 0;
        return;
      }

      v12 += 24;
      --v13;
    }

    while (v13);
    v14 = 24 * v10 + 24;
    v15 = *v9;
    v16 = v14;
  }

  if (*(v15 + 512) > v11)
  {
    if (*(v15 + 496) <= v11)
    {
      if (v14 < 0x81)
      {
LABEL_16:
        v17 = *(v9 + 136);
LABEL_19:
        *(v9 + 136) = v17;
LABEL_20:
        v18 = *(v9 + 132);
        *(v9 + 132) = v18 + 1;
        v19 = v17 + 24 * v18;
        *v19 = a2;
        *(v19 + 4) = a3;
        *(v19 + 8) = v6;
        *(v19 + 16) = a5;
        return;
      }
    }

    else if (*(v15 + 504) <= v11 && v16 <= *(v15 + 438))
    {
      goto LABEL_16;
    }
  }

  v17 = sub_181929F38(v15, *(v9 + 136), v16, 3025153638);
  if (v17)
  {
    goto LABEL_19;
  }

  sub_181929C84(v15, v11);
  *(v9 + 136) = 0;
LABEL_23:
  *(v9 + 132) = 0;
  v26 = *v9;
  if (!*(*v9 + 103) && !*(v26 + 104))
  {
    *(v26 + 103) = 1;
    if (*(v26 + 220) >= 1)
    {
      *(v26 + 424) = 1;
    }

    ++*(v26 + 432);
    *(v26 + 436) = 0;
    v27 = *(v26 + 344);
    if (v27)
    {
      sub_181910730(v27, "out of memory", v20, v21, v22, v23, v24, v25, v29);
      for (i = *(v26 + 344); ; ++*(i + 52))
      {
        *(i + 24) = 7;
        i = *(i + 216);
        if (!i)
        {
          break;
        }
      }
    }
  }
}

uint64_t sub_1819572CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 0;
  }

  v6 = *(a2 + 96);
  v7 = *(a2 + 94);
  v8 = *(a2 + 99);
  v9 = *a1;
  v10 = sub_181929E8C(*a1, 9 * v6 + 32, 0x2004093837F09);
  v2 = v10;
  if ((v8 & 8) != 0)
  {
    if (!v10)
    {
      if (*(v9 + 103) || *(v9 + 104))
      {
        return 0;
      }

      *(v9 + 103) = 1;
      if (*(v9 + 220) >= 1)
      {
        *(v9 + 424) = 1;
      }

      ++*(v9 + 432);
      *(v9 + 436) = 0;
      v32 = *(v9 + 344);
      if (!v32)
      {
        return 0;
      }

      sub_181910730(v32, "out of memory", v11, v12, v13, v14, v15, v16, v35);
      v33 = *(v9 + 344);
      *(v33 + 24) = 7;
      v34 = *(v33 + 216);
      if (!v34)
      {
        return 0;
      }

      v2 = 0;
      do
      {
        ++*(v34 + 52);
        *(v34 + 24) = 7;
        v34 = *(v34 + 216);
      }

      while (v34);
      return v2;
    }

    goto LABEL_16;
  }

  v7 = v6;
  if (v10)
  {
LABEL_16:
    *(v10 + 6) = v7;
    *(v10 + 8) = v6;
    *(v10 + 4) = *(v9 + 100);
    *(v10 + 16) = v9;
    *(v10 + 24) = v10 + 32 + 8 * v6;
    *v10 = 1;
    bzero((v10 + 32), 9 * v6);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v22 = *(a2 + 64);
        v23 = *(v22 + 8 * i);
        if (v23 == "BINARY")
        {
          v21 = 0;
        }

        else
        {
          v24 = *(*a1 + 100);
          v25 = *(*a1 + 197);
          v26 = sub_181949138(*a1, *(*a1 + 100), *(v22 + 8 * i), v25);
          v21 = v26;
          if (!v25 && (!v26 || !v26[3]))
          {
            v21 = sub_18194E6B8(a1, v24, v26, v23, v27, v28, v29, v30);
          }
        }

        *(v2 + 32 + 8 * i) = v21;
        *(*(v2 + 24) + i) = *(*(a2 + 56) + i);
      }
    }

    if (*(a1 + 52))
    {
      if ((*(a2 + 99) & 0x100) == 0)
      {
        *(a2 + 99) |= 0x100u;
        *(a1 + 24) = 513;
      }

      if ((*v2)-- == 1)
      {
        sub_181939EC8(*(v2 + 16), v2);
      }

      return 0;
    }

    return v2;
  }

  if (*(v9 + 103) || *(v9 + 104))
  {
    return 0;
  }

  *(v9 + 103) = 1;
  if (*(v9 + 220) >= 1)
  {
    *(v9 + 424) = 1;
  }

  ++*(v9 + 432);
  *(v9 + 436) = 0;
  v17 = *(v9 + 344);
  if (!v17)
  {
    return 0;
  }

  sub_181910730(v17, "out of memory", v11, v12, v13, v14, v15, v16, v35);
  v18 = *(v9 + 344);
  *(v18 + 24) = 7;
  v19 = *(v18 + 216);
  if (!v19)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    ++*(v19 + 52);
    *(v19 + 24) = 7;
    v19 = *(v19 + 216);
  }

  while (v19);
  return v2;
}

void *sub_181957564(void *result, uint64_t a2, char a3)
{
  if (*(*result + 103))
  {
    return sub_1818A3B68(*result, a3, a2);
  }

  v3 = result[17] + 40 * *(result + 36);
  *(v3 - 39) = a3;
  *(v3 - 24) = a2;
  return result;
}

uint64_t sub_1819575A0(uint64_t result)
{
  if (result)
  {
    while (1)
    {
      v1 = *(result + 4);
      if ((v1 & 0x82000) == 0)
      {
        break;
      }

      if ((v1 & 0x80000) != 0)
      {
        result = *(*(result + 32) + 8);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        if (*result != 114)
        {
          return result;
        }

        result = *(result + 16);
        if (!result)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1819575EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v7 = *(v3 + 8);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = *(a1 + 68);
      if (v8)
      {
        if (v7 != v8 - 1)
        {
          goto LABEL_4;
        }

        v7 = 0xFFFFFFFFLL;
      }

      if (!sub_181959260(0, a2, *v3, v7))
      {
        break;
      }
    }

LABEL_4:
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v9 = sub_1818D0A24(a2);
  if (v9 <= 0x41)
  {
    if (*(v3 + 21) == 65)
    {
      goto LABEL_16;
    }

    goto LABEL_4;
  }

  v13 = *(v3 + 21);
  if (v9 == 66)
  {
    if (v13 == 66)
    {
      goto LABEL_16;
    }

    goto LABEL_4;
  }

  if (v13 != 67)
  {
    goto LABEL_4;
  }

LABEL_16:
  if ((*(a2 + 1) & 0x80000000) != 0)
  {
    v42 = 0u;
    v43 = 0u;
    v41[0] = a1;
    v41[1] = sub_181959B20;
    sub_181959BA0(v41, a2);
    if (WORD2(v43))
    {
      goto LABEL_4;
    }
  }

  v14 = *(a1 + 16);
  if (*(v3 + 20))
  {
    v15 = *(v3 + 12);
    v16 = *(v14 + 144);
    v17 = (v16 + 3);
    if (*(v14 + 148) <= v16)
    {
      sub_18194C8AC(*(a1 + 16), 20, v15, v17, a3, v10, v11, v12);
    }

    else
    {
      *(v14 + 144) = v16 + 1;
      v18 = *(v14 + 136) + 40 * v16;
      *v18 = 20;
      *(v18 + 4) = v15;
      *(v18 + 8) = v17;
      *(v18 + 12) = a3;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      *(v18 + 16) = 0;
    }

    v24 = *(v3 + 12);
    v25 = *(v3 + 16);
    v26 = *(v14 + 144);
    if (*(v14 + 148) <= v26)
    {
      sub_18194C8AC(v14, 94, v24, v25, a3, v10, v11, v12);
    }

    else
    {
      *(v14 + 144) = v26 + 1;
      v27 = *(v14 + 136) + 40 * v26;
      *v27 = 94;
      *(v27 + 4) = v24;
      *(v27 + 8) = v25;
      *(v27 + 12) = a3;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
      *(v27 + 16) = 0;
    }

    v28 = *(v14 + 144);
    if (*(v14 + 148) <= v28)
    {
      sub_18194C8AC(v14, 9, 0, 0, 0, v10, v11, v12);
    }

    else
    {
      *(v14 + 144) = v28 + 1;
      v29 = *(v14 + 136) + 40 * v28;
      *v29 = 9;
      *(v29 + 1) = 0u;
      *(v29 + 17) = 0u;
      *(v29 + 32) = 0;
    }

    v30 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (*(a1 + 16))
    {
      v31 = sub_1818B8080(a1, a2, a3);
      if (v31 != a3)
      {
        v35 = v31;
        while (1)
        {
          v36 = *(a2 + 1);
          if ((v36 & 0x82000) == 0)
          {
            break;
          }

          if ((v36 & 0x80000) != 0)
          {
            a2 = *(*(a2 + 4) + 8);
            if (!a2)
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (*a2 != 114)
            {
              break;
            }

            a2 = *(a2 + 2);
            if (!a2)
            {
              goto LABEL_45;
            }
          }
        }

        if ((v36 & 0x400000) != 0 || *a2 == 176)
        {
          v37 = 80;
          goto LABEL_46;
        }

LABEL_45:
        v37 = 81;
LABEL_46:
        v38 = *(a1 + 16);
        v39 = *(v38 + 144);
        if (*(v38 + 148) <= v39)
        {
          sub_18194C8AC(v38, v37, v35, a3, 0, v32, v33, v34);
        }

        else
        {
          *(v38 + 144) = v39 + 1;
          v40 = *(v38 + 136) + 40 * v39;
          *v40 = v37;
          *(v40 + 2) = 0;
          *(v40 + 4) = v35;
          *(v40 + 8) = a3;
          *(v40 + 1) = 0;
          *(v40 + 12) = 0;
          *(v40 + 28) = 0;
          *(v40 + 20) = 0;
          *(v40 + 36) = 0;
        }
      }
    }

    *(a1 + 96) = v30;
    if (*(*v14 + 103))
    {
      dword_1EA831A60 = *(v14 + 144);
    }

    else
    {
      *(*(v14 + 136) + 40 * v16 + 88) = *(v14 + 144);
    }
  }

  else
  {
    v20 = *(v3 + 12);
    v21 = *(v3 + 16);
    v22 = *(v14 + 144);
    if (*(v14 + 148) <= v22)
    {
      sub_18194C8AC(*(a1 + 16), 94, v20, v21, a3, v10, v11, v12);
    }

    else
    {
      *(v14 + 144) = v22 + 1;
      v23 = *(v14 + 136) + 40 * v22;
      *v23 = 94;
      *(v23 + 4) = v20;
      *(v23 + 8) = v21;
      *(v23 + 12) = a3;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      *(v23 + 16) = 0;
    }
  }

  return a3;
}

uint64_t sub_181957978(uint64_t result, uint64_t a2, char *__s, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  v11 = *(result + 16);
  v12 = *(result + 52);
  v13 = *(result + 68);
  v14 = (v13 - 1);
  if (v13 < 1)
  {
    v15 = 0;
    v17 = *(__s + 6);
    if (!*(__s + 6))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = *(v11 + 144);
    if (*(v11 + 148) <= v15)
    {
      v18 = a2;
      result = sub_18194C8AC(*(result + 16), 20, v14, 0, a4, a6, a7, a8);
      a2 = v18;
      v15 = result;
      v17 = *(__s + 6);
      if (!*(__s + 6))
      {
LABEL_9:
        v19 = 0;
        v20 = *v10;
        goto LABEL_10;
      }
    }

    else
    {
      *(v11 + 144) = v15 + 1;
      v16 = *(v11 + 136) + 40 * v15;
      *v16 = 20;
      *(v16 + 4) = v14;
      *(v16 + 8) = 0;
      *(v16 + 12) = a4;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      *(v16 + 16) = 0;
      v17 = *(__s + 6);
      if (!*(__s + 6))
      {
        goto LABEL_9;
      }
    }
  }

  if (*(a2 + 63))
  {
    goto LABEL_9;
  }

  v25 = *(a2 + 80);
  if (!v25 || *v25 < v17)
  {
    goto LABEL_9;
  }

  v26 = *&v25[6 * (v17 - 1) + 2];
  v20 = *v10;
  if (v26)
  {
    result = sub_1818C7FEC(*v10, v26, 0, 0);
    v19 = result;
  }

  else
  {
    v19 = 0;
  }

LABEL_10:
  if (!*(v20 + 103))
  {
    result = sub_181956EF4(v10, v19, a4);
  }

  if (v19)
  {
    result = sub_1819439E0(v20, v19);
  }

  v22 = __s[9];
  v21 = __s + 9;
  if (v22 >= 66)
  {
    result = *(v11 + 144);
    if (*(v11 + 148) <= result)
    {
      result = sub_18194C8AC(v11, 96, a4, 1, 0, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = result + 1;
      v23 = *(v11 + 136) + 40 * result;
      *v23 = 96;
      *(v23 + 4) = a4;
      *(v23 + 8) = 1;
      *(v23 + 12) = 0;
      *(v23 + 28) = 0;
      *(v23 + 20) = 0;
      *(v23 + 36) = 0;
    }

    if (!*(*v11 + 103))
    {
      if ((result & 0x80000000) != 0)
      {
        LODWORD(result) = *(v11 + 144) - 1;
      }

      result = sub_18194CB90(v11, *(v11 + 136) + 40 * result, v21, 1u);
    }
  }

  if (v15)
  {
    if (*(*v11 + 103))
    {
      v24 = &byte_1EA831A58;
    }

    else
    {
      v24 = (*(v11 + 136) + 40 * v15);
    }

    *(v24 + 2) = *(v11 + 144);
  }

  if (*(v10 + 52) > v12)
  {
    *(*v10 + 84) = -1;
  }

  return result;
}

unint64_t sub_181957BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 104);
  if (!v8)
  {
    return 0;
  }

  while (*(a2 + 48) != *(v8 + 4) || *(a2 + 44) != *(v8 + 2))
  {
    v8 = v8[3];
    if (!v8)
    {
      return 0;
    }
  }

  v9 = *(a1 + 16);
  if (*(v8 + 20))
  {
    v10 = *(v8 + 3);
    v11 = *(v9 + 144);
    if (*(v9 + 148) <= v11)
    {
      v14 = a1;
      v15 = a3;
      v16 = sub_18194C8AC(*(a1 + 16), 20, *(v8 + 3), 0, 0, a6, a7, a8);
      a3 = v15;
      v11 = v16;
      a1 = v14;
    }

    else
    {
      *(v9 + 144) = v11 + 1;
      v12 = *(v9 + 136) + 40 * v11;
      *v12 = 20;
      *(v12 + 4) = v10;
      *(v12 + 8) = 0u;
      *(v12 + 24) = 0u;
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = *v8;
  v17 = v8 + 21;
  v19 = a1;
  result = sub_1818B8080(a1, v18, a3);
  v23 = *(v19 + 16);
  v24 = *(v23 + 144);
  if (*(v23 + 148) <= v24)
  {
    v26 = result;
    v24 = sub_18194C8AC(v23, 96, result, 1, 0, v20, v21, v22);
    result = v26;
  }

  else
  {
    *(v23 + 144) = v24 + 1;
    v25 = *(v23 + 136) + 40 * v24;
    *v25 = 96;
    *(v25 + 4) = result;
    *(v25 + 8) = 1;
    *(v25 + 12) = 0;
    *(v25 + 28) = 0;
    *(v25 + 20) = 0;
    *(v25 + 36) = 0;
  }

  if (!*(*v23 + 103))
  {
    v27 = result;
    if (v24 < 0)
    {
      v24 = *(v23 + 144) - 1;
    }

    sub_18194CB90(v23, *(v23 + 136) + 40 * v24, v17, 1u);
    result = v27;
  }

  if (v11)
  {
    if (*(*v9 + 103))
    {
      v28 = &byte_1EA831A58;
    }

    else
    {
      v28 = (*(v9 + 136) + 40 * v11);
    }

    *(v28 + 2) = *(v9 + 144);
    *(v28 + 3) = result;
  }

  return result;
}

uint64_t *sub_181957D74(uint64_t *result, char *__s, int a3, uint64_t a4)
{
  if (__s)
  {
    v7 = result;
    v9 = 0.0;
    v8 = strlen(__s);
    sub_1818E6334(__s, &v9, v8 & 0x3FFFFFFF, 1);
    if (a3)
    {
      v9 = -v9;
    }

    return sub_18195A364(v7, 154, a4, &v9, 0xFFFFFFF4);
  }

  return result;
}

uint64_t sub_181957E00(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a2)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if ((v6 & 0x82000) == 0)
      {
        break;
      }

      if ((v6 & 0x80000) != 0)
      {
        v5 = (*(a2 + 4) + 8);
      }

      else
      {
        if (*a2 != 114)
        {
          break;
        }

        v5 = (a2 + 16);
      }

      a2 = *v5;
      if (!*v5)
      {
        goto LABEL_14;
      }
    }

    if ((*(a1 + 43) & 4) != 0 && *a2 != 176)
    {
      v13 = 0x200000000;
      v14 = 0;
      v12[0] = a1;
      v12[1] = sub_1818C7E14;
      v12[2] = sub_18195A49C;
      v12[3] = 0;
      v7 = a2;
      sub_181959BA0(v12, a2);
      if (WORD2(v13))
      {
        *a3 = 0;
        return sub_181957F4C(a1, v7, 0xFFFFFFFFLL);
      }

      a2 = v7;
    }
  }

LABEL_14:
  if (*(a1 + 31))
  {
    v9 = *(a1 + 31) - 1;
    *(a1 + 31) = v9;
    v10 = *(a1 + 4 * v9 + 184);
  }

  else
  {
    v10 = (*(a1 + 60) + 1);
    *(a1 + 60) = v10;
  }

  result = sub_1818B8080(a1, a2, v10);
  if (result != v10 && v10)
  {
    v11 = *(a1 + 31);
    if (v11 <= 7)
    {
      *(a1 + 31) = v11 + 1;
      *(a1 + 4 * v11 + 184) = v10;
    }

    LODWORD(v10) = 0;
  }

  *a3 = v10;
  return result;
}

uint64_t sub_181957F4C(void **a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1[11];
  if ((a3 & 0x80000000) == 0 || !v6 || *v6 < 1)
  {
LABEL_9:
    if (a2)
    {
      v9 = sub_1818C7FEC(*a1, a2, 0, 0);
      a2 = v9;
      if (v9)
      {
        if ((*(v9 + 4) & 8) != 0)
        {
          v18 = a1[2];
          v19 = *(v18 + 36);
          if (*(v18 + 37) <= v19)
          {
            v19 = sub_18194C8AC(a1[2], 15, 0, 0, 0, v10, v11, v12);
          }

          else
          {
            *(v18 + 36) = v19 + 1;
            v20 = v18[17] + 40 * v19;
            *v20 = 15;
            *(v20 + 1) = 0u;
            *(v20 + 17) = 0u;
            *(v20 + 32) = 0;
          }

          *(a1 + 43) &= ~4u;
          if (!*(*a1 + 103))
          {
            if ((v3 & 0x80000000) != 0)
            {
              v3 = (*(a1 + 15) + 1);
              *(a1 + 15) = v3;
            }

            if (a1[2])
            {
              v21 = sub_1818B8080(a1, a2, v3);
              if (v21 != v3)
              {
                v25 = v21;
                v26 = a2;
                while (1)
                {
                  v27 = *(v26 + 1);
                  if ((v27 & 0x82000) == 0)
                  {
                    break;
                  }

                  if ((v27 & 0x80000) != 0)
                  {
                    v26 = *(*(v26 + 4) + 8);
                    if (!v26)
                    {
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    if (*v26 != 114)
                    {
                      break;
                    }

                    v26 = *(v26 + 2);
                    if (!v26)
                    {
                      goto LABEL_44;
                    }
                  }
                }

                if ((v27 & 0x400000) != 0 || *v26 == 176)
                {
                  v28 = 80;
                  goto LABEL_45;
                }

LABEL_44:
                v28 = 81;
LABEL_45:
                v29 = a1[2];
                v30 = *(v29 + 144);
                if (*(v29 + 148) <= v30)
                {
                  sub_18194C8AC(v29, v28, v25, v3, 0, v22, v23, v24);
                }

                else
                {
                  *(v29 + 144) = v30 + 1;
                  v31 = *(v29 + 136) + 40 * v30;
                  *v31 = v28;
                  *(v31 + 2) = 0;
                  *(v31 + 4) = v25;
                  *(v31 + 8) = v3;
                  *(v31 + 1) = 0;
                  *(v31 + 12) = 0;
                  *(v31 + 28) = 0;
                  *(v31 + 20) = 0;
                  *(v31 + 36) = 0;
                }
              }
            }
          }

          *(a1 + 43) |= 4u;
          sub_1819439E0(*a1, a2);
          if (*(*v18 + 103))
          {
            dword_1EA831A60 = *(v18 + 36);
          }

          else
          {
            *(v18[17] + 40 * v19 + 8) = *(v18 + 36);
          }

          return v3;
        }
      }
    }

    if (v6)
    {
      v13 = *v6;
      if (v6[1] > *v6)
      {
        *v6 = v13 + 1;
        v14 = &v6[6 * v13];
        *(v14 + 2) = 0;
        *(v14 + 3) = 0;
        *(v14 + 1) = a2;
        goto LABEL_18;
      }

      v15 = sub_18197FE14(*a1, v6, a2);
    }

    else
    {
      v15 = sub_18197FD9C(*a1, a2);
    }

    v6 = v15;
    if (!v15)
    {
LABEL_21:
      a1[11] = v6;
      return v3;
    }

LABEL_18:
    v16 = &v6[6 * *v6];
    *(v16 + 1) = *(v16 + 1) & 0xFFF7 | (8 * (v3 >> 31));
    if ((v3 & 0x80000000) != 0)
    {
      v3 = (*(a1 + 15) + 1);
      *(a1 + 15) = v3;
    }

    v16[1] = v3;
    goto LABEL_21;
  }

  v7 = *v6 + 1;
  v8 = (v6 + 7);
  while ((*(v8 - 3) & 8) == 0 || sub_181959260(0, *(v8 - 5), a2, 0xFFFFFFFFLL))
  {
    --v7;
    v8 += 6;
    if (v7 < 2)
    {
      goto LABEL_9;
    }
  }

  return *v8;
}

uint64_t sub_181958258(uint64_t a1, unsigned __int8 **a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = *(a1 + 16);
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v11 = sub_181959260(0, a2[1], a2[4], 0xFFFFFFFFLL);
        goto LABEL_26;
      case 4:
        v27 = sub_1818D0A24(a2[1]);
        if (v27 >= 65)
        {
          v31 = off_1E6A27968[v27 - 65];
        }

        else
        {
          v31 = "none";
        }

        v33 = *(v10 + 144);
        if (*(v10 + 148) <= v33)
        {
          v33 = sub_18194C8AC(v10, 118, 0, v8, 0, v28, v29, v30);
        }

        else
        {
          *(v10 + 144) = v33 + 1;
          v34 = *(v10 + 136) + 40 * v33;
          *v34 = 118;
          *(v34 + 8) = v8;
          *(v34 + 12) = 0;
          *(v34 + 28) = 0;
          *(v34 + 20) = 0;
          *(v34 + 36) = 0;
        }

        if (!*(*v10 + 103))
        {
          if (v33 < 0)
          {
            v33 = *(v10 + 144) - 1;
          }

          sub_18194CB90(v10, *(v10 + 136) + 40 * v33, v31, 0);
        }

        return v8;
      case 5:
        memset(&v55[3], 0, 32);
        memset(v55, 0, 32);
        LOBYTE(v55[0]) = -98;
        v55[2] = a2;
        return sub_1818B8080(a1, v55, a4);
    }

    goto LABEL_21;
  }

  switch(a3)
  {
    case 0:
      v12 = *a2;
      v54 = *(a1 + 72);
      v13 = (v54 - 1);
      *(a1 + 72) = v13;
      v14 = (a2 + 1);
      v15 = a2[1];
      if (v10)
      {
        v16 = sub_1818B8080(a1, v15, a4);
        if (v16 != v8)
        {
          v17 = v16;
          if (!v15)
          {
            goto LABEL_47;
          }

          while (1)
          {
            v18 = *(v15 + 1);
            if ((v18 & 0x82000) == 0)
            {
              break;
            }

            if ((v18 & 0x80000) != 0)
            {
              v15 = *(*(v15 + 4) + 8);
              if (!v15)
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (*v15 != 114)
              {
                break;
              }

              v15 = *(v15 + 2);
              if (!v15)
              {
                goto LABEL_47;
              }
            }
          }

          if ((v18 & 0x400000) != 0 || *v15 == 176)
          {
            v35 = 80;
          }

          else
          {
LABEL_47:
            v35 = 81;
          }

          v36 = *(a1 + 16);
          v37 = *(v36 + 144);
          if (*(v36 + 148) <= v37)
          {
            sub_18194C8AC(v36, v35, v17, v8, 0, a6, a7, a8);
          }

          else
          {
            *(v36 + 144) = v37 + 1;
            v38 = *(v36 + 136) + 40 * v37;
            *v38 = v35;
            *(v38 + 2) = 0;
            *(v38 + 4) = v17;
            *(v38 + 8) = v8;
            *(v38 + 1) = 0;
            *(v38 + 12) = 0;
            *(v38 + 28) = 0;
            *(v38 + 20) = 0;
            *(v38 + 36) = 0;
          }
        }
      }

      if (v12 < 2)
      {
LABEL_74:
        if (*(*v10 + 103))
        {
          v50 = &byte_1EA831A58;
        }

        else
        {
          v50 = (*(v10 + 136) + 40 * *(v10 + 144) - 40);
        }

        if (*v50 == 80)
        {
          v51 = *(v10 + 144);
          if (v51 >= 1)
          {
            *(*(v10 + 136) + 40 * v51 - 38) = 1;
          }
        }

        v52 = *(v10 + 24);
        v53 = -v54;
        if (*(v52 + 72) + *(v52 + 76) < 0)
        {
          sub_18195CB84(v52, v10, v53);
        }

        else
        {
          *(*(v52 + 80) + 4 * v53) = *(v10 + 144);
        }

        return v8;
      }

      v39 = 1;
      while (1)
      {
        v41 = *(v10 + 144);
        if (*(v10 + 148) <= v41)
        {
          sub_18194C8AC(v10, 52, v8, v13, 0, a6, a7, a8);
          if (*(a1 + 16))
          {
LABEL_59:
            v43 = *&v14[6 * v39];
            v44 = sub_1818B8080(a1, v43, v8);
            if (v44 != v8)
            {
              v45 = v44;
              if (!v43)
              {
                goto LABEL_71;
              }

              while (1)
              {
                v46 = *(v43 + 1);
                if ((v46 & 0x82000) == 0)
                {
                  break;
                }

                if ((v46 & 0x80000) != 0)
                {
                  v43 = *(*(v43 + 4) + 8);
                  if (!v43)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
                  if (*v43 != 114)
                  {
                    break;
                  }

                  v43 = *(v43 + 2);
                  if (!v43)
                  {
                    goto LABEL_71;
                  }
                }
              }

              if ((v46 & 0x400000) != 0 || *v43 == 176)
              {
                v47 = 80;
              }

              else
              {
LABEL_71:
                v47 = 81;
              }

              v48 = *(a1 + 16);
              v49 = *(v48 + 144);
              if (*(v48 + 148) > v49)
              {
                *(v48 + 144) = v49 + 1;
                v40 = *(v48 + 136) + 40 * v49;
                *v40 = v47;
                *(v40 + 2) = 0;
                *(v40 + 4) = v45;
                *(v40 + 8) = v8;
                *(v40 + 1) = 0;
                *(v40 + 12) = 0;
                *(v40 + 28) = 0;
                *(v40 + 20) = 0;
                *(v40 + 36) = 0;
              }

              else
              {
                sub_18194C8AC(v48, v47, v45, v8, 0, a6, a7, a8);
              }
            }
          }
        }

        else
        {
          *(v10 + 144) = v41 + 1;
          v42 = *(v10 + 136) + 40 * v41;
          *v42 = 52;
          *(v42 + 4) = v8;
          *(v42 + 8) = v13;
          *(v42 + 12) = 0;
          *(v42 + 28) = 0;
          *(v42 + 20) = 0;
          *(v42 + 36) = 0;
          if (*(a1 + 16))
          {
            goto LABEL_59;
          }
        }

        if (++v39 == v12)
        {
          goto LABEL_74;
        }
      }

    case 1:
      v21 = a2[4];
      if (*v21 != 168)
      {
        v32 = *(v10 + 144);
        if (*(v10 + 148) > v32)
        {
          *(v10 + 144) = v32 + 1;
          v24 = *(v10 + 136) + 40 * v32;
          *v24 = 75;
          goto LABEL_28;
        }

        v25 = *(a1 + 16);
        v26 = 75;
        v22 = 0;
LABEL_30:
        sub_18194C8AC(v25, v26, v22, v8, 0, a6, a7, a8);
        return v8;
      }

      v11 = sub_18195A790(a2[1], *(v21 + 11), 1);
LABEL_26:
      v22 = v11;
      v23 = *(v10 + 144);
      if (*(v10 + 148) > v23)
      {
        *(v10 + 144) = v23 + 1;
        v24 = *(v10 + 136) + 40 * v23;
        *v24 = 71;
        *(v24 + 4) = v11;
LABEL_28:
        *(v24 + 8) = v8;
        *(v24 + 12) = 0;
        *(v24 + 28) = 0;
        *(v24 + 20) = 0;
        *(v24 + 36) = 0;
        return v8;
      }

      v25 = v10;
      v26 = 71;
      goto LABEL_30;
    case 2:
      v11 = sub_18195A590(a1, a2[1], a2[4], 0xFFFFFFFFLL);
      goto LABEL_26;
  }

LABEL_21:
  v19 = a2[1];

  return sub_1818B8080(a1, v19, a4);
}

void sub_1819587F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 7) & 0x40) != 0 && ((*(a3 + 6) & 8) != 0 || (*(*a1 + 48) & 0x80) == 0))
  {
    sub_181910730(a1, "unsafe use of %#T()", a3, a4, a5, a6, a7, a8, a2);
  }
}

uint64_t sub_18195883C(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    if (*(a1 + 31))
    {
      v2 = *(a1 + 31) - 1;
      *(a1 + 31) = v2;
      return *(a1 + 4 * v2 + 184);
    }

    else
    {
      v8 = (*(a1 + 60) + 1);
      *(a1 + 60) = v8;
      return v8;
    }
  }

  else
  {
    v4 = *(a1 + 44);
    v5 = v4 - a2;
    if (v4 >= a2)
    {
      v7 = *(a1 + 48);
      *(a1 + 44) = v5;
      *(a1 + 48) = v7 + a2;
      return v7;
    }

    else
    {
      v6 = *(a1 + 60);
      *(a1 + 60) = v6 + a2;
      return (v6 + 1);
    }
  }
}

uint64_t sub_1819588AC(uint64_t result, _DWORD *a2, int a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (*a2 >= 1)
  {
    v10 = result;
    v11 = 0;
    v29 = a5 & 1;
    v12 = a5 & 1 ^ 0x51;
    v13 = *(result + 16);
    if ((*(result + 43) & 4) != 0)
    {
      v14 = a5;
    }

    else
    {
      v14 = a5 & 0xFD;
    }

    v28 = a4 - 1;
    for (i = a2 + 7; ; i += 12)
    {
      v16 = *(i - 10);
      if ((v14 & 4) != 0)
      {
        if (*i)
        {
          break;
        }
      }

      if ((v14 & 2) != 0 && ((v31 = 0x200000000, v32 = 0, v30[3] = 0, v30[0] = v10, v30[1] = sub_1818C7E14, v30[2] = sub_18195A49C, !v16) || (v25 = v16, sub_181959BA0(v30, v16), v16 = v25, WORD2(v31))))
      {
        result = sub_181957F4C(v10, v16, (v11 + a3));
      }

      else
      {
        v21 = v11 + a3;
        result = sub_1818B8080(v10, v16, (v11 + a3));
        if (result != v11 + a3)
        {
          v17 = result;
          if (v29)
          {
            v22 = &byte_1EA831A58;
            if (!*(*v13 + 103))
            {
              v22 = (*(v13 + 136) + 40 * *(v13 + 144) - 40);
            }

            if (*v22 == 80)
            {
              v23 = *(v22 + 3) + 1;
              if (v23 + *(v22 + 1) == result && v23 + *(v22 + 2) == v21 && !*(v22 + 1))
              {
                *(v22 + 3) = v23;
                goto LABEL_7;
              }
            }
          }

          v24 = *(v13 + 144);
          if (*(v13 + 148) <= v24)
          {
            v26 = v13;
            v27 = v12;
            v18 = (v11 + a3);
LABEL_31:
            result = sub_18194C8AC(v26, v27, v17, v18, 0, a6, a7, a8);
            goto LABEL_7;
          }

          *(v13 + 144) = v24 + 1;
          v20 = *(v13 + 136) + 40 * v24;
          *v20 = v12;
          *(v20 + 2) = 0;
          *(v20 + 4) = result;
          *(v20 + 8) = v21;
LABEL_24:
          *(v20 + 1) = 0;
          *(v20 + 12) = 0;
          *(v20 + 28) = 0;
          *(v20 + 20) = 0;
          *(v20 + 36) = 0;
        }
      }

LABEL_7:
      if (++v11 >= v8)
      {
        return result;
      }
    }

    if ((v14 & 8) != 0)
    {
      --v11;
      --v8;
      goto LABEL_7;
    }

    v17 = v28 + *i;
    v18 = (v11 + a3);
    v19 = *(v13 + 144);
    if (*(v13 + 148) <= v19)
    {
      v26 = v13;
      v27 = v12;
      goto LABEL_31;
    }

    *(v13 + 144) = v19 + 1;
    v20 = *(v13 + 136) + 40 * v19;
    *v20 = v12;
    *(v20 + 2) = 0;
    *(v20 + 4) = v17;
    *(v20 + 8) = v18;
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_181958B0C(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v9 = a5;
  v14 = a1[2];
  result = sub_181929E8C(*a1, 8 * a5 + 48, 0x2004093837F09);
  if (result)
  {
    v19 = result;
    *result = 0;
    *(result + 8) = a6;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 42) = v9;
    result = *(v14 + 144);
    *(v19 + 32) = result;
    if (a7)
    {
      v20 = 65;
    }

    else
    {
      v20 = 66;
    }

    if (*(v14 + 148) <= result)
    {
      result = sub_18194C8AC(v14, v20, a2, a3, a4, v16, v17, v18);
    }

    else
    {
      *(v14 + 144) = result + 1;
      v21 = *(v14 + 136) + 40 * result;
      *v21 = v20;
      *(v21 + 2) = 0;
      *(v21 + 4) = a2;
      *(v21 + 8) = a3;
      *(v21 + 12) = a4;
      *(v21 + 1) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      *(v21 + 16) = 0;
    }

    if (*(*v14 + 103))
    {
      result = sub_18193A000(*v14, v19);
    }

    else
    {
      if ((result & 0x80000000) != 0)
      {
        result = (*(v14 + 144) - 1);
      }

      v23 = *(v14 + 136) + 40 * result;
      if (*(v23 + 1))
      {
        result = sub_18194CB90(v14, v23, v19, 0xFFFFFFF1);
      }

      else
      {
        *(v23 + 16) = v19;
        *(v23 + 1) = -15;
      }
    }

    v24 = *(v14 + 144);
    if (v24 >= 1)
    {
      *(*(v14 + 136) + 40 * v24 - 38) = a7 & 0x2E;
    }

    v25 = a1[19];
    if (!v25)
    {
      v25 = a1;
    }

    *(v25 + 33) = 1;
  }

  else if ((*(a6 + 4) & 0x10) != 0)
  {
    v22 = *a1;

    return sub_181939EC8(v22, a6);
  }

  return result;
}

uint64_t sub_181958CD8(uint64_t a1, int a2)
{
  result = *(a1 + 24);
  v4 = ~a2;
  if (*(result + 72) + *(result + 76) < 0)
  {
    return sub_18195CB84(result, a1, v4);
  }

  *(*(result + 80) + 4 * v4) = *(a1 + 144);
  return result;
}

uint64_t *sub_181958D08(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  v34 = 0;
  v13 = *result;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = *(a2 + 16);
  if (v14)
  {
    result = sub_1818C7FEC(v13, v14, 0, 0);
    v15 = result;
    if (*(v13 + 103))
    {
      goto LABEL_28;
    }
  }

  else
  {
    v15 = 0;
    if (*(v13 + 103))
    {
      goto LABEL_28;
    }
  }

  LOBYTE(v45) = 44;
  *&v46 = &v40;
  *(&v46 + 1) = &v35;
  LOBYTE(v40) = 58;
  v16 = *(a2 + 32);
  v17 = *(v16 + 8);
  *&v41 = v15;
  *(&v41 + 1) = v17;
  LOBYTE(v35) = 56;
  v18 = *(v16 + 32);
  *&v36 = v15;
  *(&v36 + 1) = v18;
  v19 = *v15;
  v20 = v19;
  if (v19 == 176)
  {
    v20 = *(v15 + 2);
  }

  v21 = v15;
  if (v20 != 177)
  {
    if (v20 != 139)
    {
      goto LABEL_11;
    }

    v21 = v15[4];
  }

  v22 = *v21[4];
  if (v22 != 1)
  {
    v34 = 0;
    if (v19 == 139)
    {
      v23 = sub_1818E1564(v12, v15, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      v30 = *(v12 + 60);
      v23 = v30 + 1;
      *(v12 + 60) = v30 + v22;
      if (v22 >= 1)
      {
        v31 = 8;
        v32 = v30 + 1;
        v33 = (v30 + 1);
        do
        {
          sub_18195CD44(v12, *(v15[4] + v31), v33);
          v33 = (v33 + 1);
          v31 += 24;
          --v22;
        }

        while (v22);
        v23 = v32;
      }
    }

    goto LABEL_12;
  }

LABEL_11:
  v23 = sub_181957E00(v12, v15, &v34);
LABEL_12:
  v24 = v15;
  while (1)
  {
    v26 = *(v24 + 1);
    if ((v26 & 0x82000) == 0)
    {
      break;
    }

    if ((v26 & 0x80000) != 0)
    {
      v25 = (v24[4] + 8);
    }

    else
    {
      v27 = *v24;
      if (v27 != 114)
      {
        goto LABEL_20;
      }

      v25 = (v24 + 2);
    }

    v24 = *v25;
    if (!v24)
    {
      goto LABEL_22;
    }
  }

  v27 = *v24;
LABEL_20:
  if (v27 != 176)
  {
    *(v24 + 2) = v27;
    *v24 = -80;
    *(v24 + 11) = v23;
    *(v24 + 1) = v26 & 0xFFFFDFFF;
  }

LABEL_22:
  if (a4)
  {
    result = a4(v12, &v45, a3, a5);
    v28 = v34;
    if (!v34)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(v15 + 1) |= 1u;
    result = sub_1818B8080(v12, &v45, a3);
    v28 = v34;
    if (!v34)
    {
      goto LABEL_28;
    }
  }

  v29 = *(v12 + 31);
  if (v29 <= 7)
  {
    *(v12 + 31) = v29 + 1;
    *(v12 + 4 * v29 + 184) = v28;
  }

LABEL_28:
  if (v15)
  {
    return sub_1819439E0(v13, v15);
  }

  return result;
}

unsigned __int8 *sub_181958F90(unsigned __int8 *result, int a2)
{
  if (result)
  {
    while (1)
    {
      v3 = *(result + 1);
      if ((v3 & 0x82000) == 0)
      {
        break;
      }

      if ((v3 & 0x80000) != 0)
      {
        v2 = (*(result + 4) + 8);
      }

      else
      {
        v4 = *result;
        if (v4 != 114)
        {
          goto LABEL_10;
        }

        v2 = (result + 16);
      }

      result = *v2;
      if (!*v2)
      {
        return result;
      }
    }

    v4 = *result;
LABEL_10:
    if (v4 != 176)
    {
      result[2] = v4;
      *result = -80;
      *(result + 11) = a2;
      *(result + 1) = v3 & 0xFFFFDFFF;
    }
  }

  return result;
}

uint64_t sub_181958FFC(uint64_t a1, unsigned __int8 *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v11 = v10;
  if (v10 == 176)
  {
    v11 = a2[2];
  }

  v12 = a2;
  if (v11 != 177)
  {
    if (v11 != 139)
    {
LABEL_7:

      return sub_181957E00(a1, a2, a3);
    }

    v12 = *(a2 + 4);
  }

  v13 = **(v12 + 4);
  if (v13 == 1)
  {
    goto LABEL_7;
  }

  *a3 = 0;
  if (v10 != 139)
  {
    v15 = *(a1 + 60);
    v16 = (v15 + 1);
    *(a1 + 60) = v15 + v13;
    if (v13 < 1)
    {
      return v16;
    }

    v17 = 8;
    v18 = (v15 + 1);
    while (1)
    {
      v19 = *(*(a2 + 4) + v17);
      if ((*(a1 + 43) & 4) != 0)
      {
        break;
      }

      v20 = *a1;
      if (v19)
      {
        goto LABEL_26;
      }

      if (*(v20 + 103))
      {
        goto LABEL_21;
      }

LABEL_27:
      sub_181956EF4(a1, v19, v18);
      if (v19)
      {
        goto LABEL_28;
      }

LABEL_17:
      v18 = (v18 + 1);
      v17 += 24;
      if (!--v13)
      {
        return v16;
      }
    }

    v22 = 0x200000000;
    v23 = 0;
    v21[3] = 0;
    v21[0] = a1;
    v21[1] = sub_1818C7E14;
    v21[2] = sub_18195A49C;
    if (!v19 || (sub_181959BA0(v21, v19), WORD2(v22)))
    {
      sub_181957F4C(a1, v19, v18);
      goto LABEL_17;
    }

    v20 = *a1;
LABEL_26:
    v19 = sub_1818C7FEC(v20, v19, 0, 0);
    if (*(v20 + 103))
    {
LABEL_21:
      if (!v19)
      {
        goto LABEL_17;
      }

LABEL_28:
      sub_1819439E0(v20, v19);
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  return sub_1818E1564(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_181959204(uint64_t result)
{
  if (*(*result + 103))
  {
    v1 = &byte_1EA831A58;
  }

  else
  {
    v1 = (*(result + 136) + 40 * *(result + 144) - 40);
  }

  if (*v1 == 80)
  {
    v2 = *(result + 144);
    if (v2 >= 1)
    {
      *(*(result + 136) + 40 * v2 - 38) = 1;
    }
  }

  return result;
}

uint64_t sub_181959260(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a2 || !a3)
  {
    return 2 * (a3 != a2);
  }

  if (a1 && *a2 == 157)
  {

    return sub_181959620(a1, a2, a3);
  }

  v5 = *(a2 + 1);
  v6 = *(a3 + 1);
  v7 = v6 | v5;
  if (((v6 | v5) & 0x800) != 0)
  {
    if ((v5 & v6 & 0x800) != 0 && *(a2 + 2) == *(a3 + 2))
    {
      return 0;
    }

    return 2;
  }

  v8 = *a2;
  v9 = *a3;
  if (v8 == 72 || v8 != v9)
  {
    if (v8 == 114)
    {
      v11 = a2;
      v12 = a1;
      v13 = a3;
      v14 = a4;
      if (sub_181959260(a1, *(a2 + 2), a3, a4) < 2)
      {
        return 1;
      }

      a3 = v13;
      v9 = *v13;
      a2 = v11;
      a4 = v14;
      a1 = v12;
    }

    if (v9 != 114 || (v15 = a1, v16 = a2, v17 = a3, v18 = a4, v19 = sub_181959260(a1, a2, *(a3 + 2), a4), a4 = v18, a2 = v16, a3 = v17, v20 = v19, a1 = v15, v20 >= 2))
    {
      if (*a2 != 170 || *a3 != 168 || (*(a3 + 11) & 0x80000000) == 0 || *(a2 + 11) != a4)
      {
        return 2;
      }

      v8 = 170;
      v10 = *(a2 + 1);
      if (!v10)
      {
        goto LABEL_47;
      }

      goto LABEL_13;
    }

    return 1;
  }

  v10 = *(a2 + 1);
  if (!v10)
  {
    goto LABEL_47;
  }

LABEL_13:
  if (v8 <= 168)
  {
    if (v8 == 114)
    {
      v40 = *(a3 + 1);
      if (v40)
      {
        while (1)
        {
          if (*v10 == *v40)
          {
            if (!*v10)
            {
              goto LABEL_47;
            }
          }

          else if (byte_181A20298[*v10] != byte_181A20298[*v40])
          {
            return 2;
          }

          ++v10;
          ++v40;
        }
      }

      return 2;
    }

    if (v8 == 122)
    {
      return 0;
    }

LABEL_40:
    if ((v8 & 0xFFFFFFFD) != 0xA8 && *(a3 + 1))
    {
      v22 = a1;
      v23 = a2;
      v24 = a3;
      v25 = a4;
      v26 = strcmp(v10, *(a3 + 1));
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (v8 != 172 && v8 != 169)
  {
    goto LABEL_40;
  }

  for (i = *(a3 + 1); *v10 != *i; ++i)
  {
    if (byte_181A20298[*v10] != byte_181A20298[*i])
    {
      return 2;
    }

LABEL_36:
    ++v10;
  }

  if (*v10)
  {
    goto LABEL_36;
  }

  v27 = *(a2 + 1) & 0x1000000;
  if ((HIBYTE(*(a3 + 1)) & 1) == HIBYTE(v27))
  {
    if (!v27)
    {
      goto LABEL_47;
    }

    v22 = a1;
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v26 = sub_18195986C(a1, *(a2 + 9), *(a3 + 9), 1);
LABEL_46:
    a4 = v25;
    a2 = v23;
    a3 = v24;
    v28 = v26;
    a1 = v22;
    if (!v28)
    {
LABEL_47:
      if (((*(a3 + 1) ^ *(a2 + 1)) & 0x404) == 0)
      {
        if ((v7 & 0x10000) != 0)
        {
          return 0;
        }

        if ((v7 & 0x1000) == 0)
        {
          if ((v7 & 0x20) != 0 || (v29 = a1, v30 = a2, v31 = a3, v32 = a4, v33 = sub_181959260(a1, *(a2 + 2), *(a3 + 2), a4), a4 = v32, a2 = v30, a3 = v31, v34 = v33, a1 = v29, !v34))
          {
            v35 = a2;
            v36 = a3;
            v37 = a4;
            if (!sub_181959260(a1, *(a2 + 3), *(a3 + 3), a4) && !sub_181959974(*(v35 + 4), *(v36 + 4), v37))
            {
              v38 = *v35;
              if (v38 == 118 || v38 == 171 || (v7 & 0x4000) != 0)
              {
                return 0;
              }

              if (*(v35 + 12) == *(v36 + 12) && (v38 != 175 || v35[2] == v36[2]))
              {
                if (v38 == 50)
                {
                  return 0;
                }

                v39 = *(v35 + 11);
                if (v39 == v37 || v39 == *(v36 + 11))
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return 2;
}

uint64_t sub_181959620(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v17 = 0;
  if (*a3 == 157 && *(a2 + 48) == *(a3 + 12))
  {
    return 0;
  }

  if ((*(*a1 + 50) & 0x80) != 0)
  {
    return 2;
  }

  v6 = 1;
  sub_18194BC5C(*a1, a3, 1, 65, &v17);
  v7 = v17;
  if (!v17)
  {
    return 2;
  }

  v8 = *(a2 + 48);
  v9 = 1 << (v8 - 1);
  if (v8 > 31)
  {
    v9 = 0x80000000;
  }

  *(a1[2] + 372) |= v9;
  v10 = a1[41];
  if (!v10 || (v11 = v10[16] + (v8 << 6), (*(v11 - 44) & 1) != 0))
  {
    v13 = 0;
    v16 = 2;
    goto LABEL_27;
  }

  v12 = *v10;
  if (!*v10)
  {
    v13 = sub_181902484(64, 0x10F2040695A4BFELL);
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_23:
    v16 = 2;
    goto LABEL_27;
  }

  v13 = sub_181929E8C(*v10, 0x40uLL, 0x10F2040695A4BFELL);
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_12:
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 20) = 1;
  *(v13 + 24) = v12;
  v14 = *(v11 - 64);
  v15 = *(v11 - 48);
  *(v13 + 16) = v15;
  *v13 = v14;
  LODWORD(v15) = WORD2(v15) & 0xEFFF;
  *(v13 + 20) = v15;
  if ((v15 & 0x1200000000) != 0 && (*(v11 - 44) & 0x2000) == 0)
  {
    *(v13 + 20) = WORD2(v15) & 0xAFFF | 0x4000;
    sub_18190B020(v13);
    LODWORD(v15) = *(v13 + 20);
  }

  if (((0x4000000040004uLL >> v15) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((~v15 & 0x202) == 0)
  {
    if ((v15 & 1) != 0 || *(v13 + 22) == 1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ((v15 & 1) == 0)
  {
LABEL_25:
    sub_18193CB70(v13, 1);
  }

LABEL_26:
  v6 = 0;
  v16 = 2 * (sub_1818D0D40(v13, v7, 0) != 0);
LABEL_27:
  if ((*(v7 + 20) & 0x9000) != 0 || *(v7 + 32))
  {
    sub_18193CA00(v7);
  }

  sub_181929C84(*(v7 + 24), v7);
  if ((v6 & 1) == 0)
  {
    if ((*(v13 + 20) & 0x9000) != 0 || *(v13 + 32))
    {
      sub_18193CA00(v13);
    }

    sub_181929C84(*(v13 + 24), v13);
  }

  return v16;
}

uint64_t sub_18195986C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 1;
  if (a2 && a3 && *(a2 + 32) == *(a3 + 32) && *(a2 + 33) == *(a3 + 33) && *(a2 + 34) == *(a3 + 34) && *(a2 + 36) == *(a3 + 36))
  {
    v9 = a1;
    if (sub_181959260(a1, *(a2 + 40), *(a3 + 40), 0xFFFFFFFFLL) || sub_181959260(v9, *(a2 + 48), *(a3 + 48), 0xFFFFFFFFLL))
    {
      return 1;
    }

    else
    {
      result = sub_181959974(*(a2 + 16), *(a3 + 16), 0xFFFFFFFFLL);
      if (!result)
      {
        result = sub_181959974(*(a2 + 24), *(a3 + 24), 0xFFFFFFFFLL);
        if (!result)
        {
          if (!a4)
          {
            return 0;
          }

          result = sub_181959260(v9, *(a2 + 72), *(a3 + 72), 0xFFFFFFFFLL);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_181959974(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  result = 1;
  if (a1 && a2 && *a1 == *a2)
  {
    if (*a1 < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v7 = (a2 + 24);
      v8 = (a1 + 24);
      v9 = (a1 + 24);
      v10 = (a2 + 24);
      while (1)
      {
        v12 = *v9;
        v9 += 6;
        v11 = v12;
        v13 = *v10;
        v10 += 24;
        if (v11 != v13)
        {
          break;
        }

        result = sub_181959260(0, *(v8 - 2), *(v7 - 2), a3);
        if (!result)
        {
          ++v6;
          v8 = v9;
          v7 = v10;
          if (v6 < *a1)
          {
            continue;
          }
        }

        return result;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_181959A44(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 128) + (a2 << 6);
    if (*(v2 - 44))
    {
      return 0;
    }

    v3 = *result;
    if (*result)
    {
      result = sub_181929E8C(*result, 0x40uLL, 0x10F2040695A4BFELL);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = sub_181902484(64, 0x10F2040695A4BFELL);
      if (!result)
      {
        return result;
      }
    }

    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 20) = 1;
    *(result + 24) = v3;
    v4 = *(v2 - 64);
    v5 = *(v2 - 48);
    *(result + 16) = v5;
    *result = v4;
    *(result + 20) = WORD2(v5) & 0xEFFF;
    if ((v5 & 0x1200000000) != 0 && (*(v2 - 44) & 0x2000) == 0)
    {
      *(result + 20) = WORD2(v5) & 0xAFFF | 0x4000;
      v6 = result;
      sub_18190B020(result);
      return v6;
    }
  }

  return result;
}

uint64_t sub_181959B20(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 != 172)
  {
    return 1;
  }

  v3 = **a1;
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = sub_181893B48(v3, *(a2 + 1), v5, *(v3 + 100), 0);
  if (v7 && (*(v7 + 7) & 1) == 0)
  {
    return 0;
  }

  result = 1;
  *(a1 + 36) = 1;
  return result;
}

uint64_t sub_181959BA0(uint64_t a1, uint64_t a2)
{
  do
  {
    v3 = a2;
    v4 = (*(a1 + 8))(a1);
    if (v4)
    {
      return v4 & 2;
    }

    if ((*(v3 + 6) & 0x81) != 0)
    {
      return 0;
    }

    if (*(v3 + 16) && sub_181959BA0(a1))
    {
      return 2;
    }

    a2 = *(v3 + 24);
  }

  while (a2);
  v6 = *(v3 + 4);
  v7 = *(v3 + 32);
  if ((v6 & 0x1000) != 0)
  {
    if (v7 && *(a1 + 16))
    {
      while (1)
      {
        v11 = (*(a1 + 16))(a1, v7);
        if (v11)
        {
          break;
        }

        if (sub_1818B1410(a1, v7) || sub_181959E94(a1, v7))
        {
          return 2;
        }

        v12 = *(a1 + 24);
        if (v12)
        {
          v12(a1, v7);
        }

        v7 = *(v7 + 80);
        if (!v7)
        {
          return 0;
        }
      }

      if ((v11 & 2) != 0)
      {
        return 2;
      }
    }
  }

  else
  {
    if (v7)
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        v9 = (v7 + 8);
        v10 = v8 + 1;
        while (!sub_1818B1590(a1, *v9))
        {
          v9 += 3;
          if (--v10 <= 1)
          {
            v6 = *(v3 + 4);
            goto LABEL_16;
          }
        }

        return 2;
      }
    }

LABEL_16:
    if ((v6 & 0x1000000) != 0 && sub_181959D68(a1, *(v3 + 72), 1))
    {
      return 2;
    }
  }

  return 0;
}

uint64_t sub_181959CE8(uint64_t a1, int *a2)
{
  if (!a2 || *a2 < 1)
  {
    return 0;
  }

  v3 = (a2 + 2);
  v4 = *a2 + 1;
  do
  {
    if (*v3 && sub_181959BA0(a1, *v3))
    {
      return 2;
    }

    v3 += 3;
    --v4;
  }

  while (v4 > 1);
  return 0;
}

uint64_t sub_181959D68(uint64_t a1, void *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  while (1)
  {
    v6 = v4[3];
    if (v6)
    {
      if (*v6 >= 1)
      {
        break;
      }
    }

LABEL_8:
    v9 = v4[2];
    if (v9 && *v9 >= 1)
    {
      v10 = v9 + 2;
      v11 = *v9 + 1;
      while (!sub_1818B1590(a1, *v10))
      {
        v10 += 3;
        if (--v11 <= 1)
        {
          goto LABEL_13;
        }
      }

      return 2;
    }

LABEL_13:
    if (v4[9] && sub_181959BA0(a1) || v4[5] && sub_181959BA0(a1))
    {
      return 2;
    }

    if (v4[6])
    {
      v12 = sub_181959BA0(a1);
      if (v12 | a3)
      {
        return 2 * (v12 != 0);
      }
    }

    else if (a3)
    {
      return 0;
    }

    v4 = v4[8];
    if (!v4)
    {
      return 0;
    }
  }

  v7 = v6 + 2;
  v8 = *v6 + 1;
  while (!sub_1818B1590(a1, *v7))
  {
    v7 += 3;
    if (--v8 <= 1)
    {
      goto LABEL_8;
    }
  }

  return 2;
}

uint64_t sub_181959E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (*v2 < 1)
  {
    return 0;
  }

  for (i = v2 + 2; ; i += 18)
  {
    v7 = *(i + 25);
    if ((v7 & 4) != 0)
    {
      if (sub_1818AEE70(a1, **(i + 8)))
      {
        return 2;
      }

      v7 = *(i + 25);
    }

    if ((v7 & 8) != 0)
    {
      v8 = *(i + 5);
      if (v8)
      {
        if (*v8 >= 1)
        {
          break;
        }
      }
    }

LABEL_4:
    v6 = __OFSUB__(v3--, 1);
    if ((v3 < 0) ^ v6 | (v3 == 0))
    {
      return 0;
    }
  }

  v9 = v8 + 2;
  v10 = *v8 + 1;
  while (!sub_1818B1590(a1, *v9))
  {
    v9 += 3;
    if (--v10 <= 1)
    {
      goto LABEL_4;
    }
  }

  return 2;
}

uint64_t sub_181959F6C(uint64_t result, uint64_t a2)
{
  if (*(*result + 400) && !*(a2 + 80))
  {
    do
    {
      v2 = a2;
      a2 = *(a2 + 88);
    }

    while (a2);
    v3 = *(v2 + 104);
    if (v3)
    {
      *(*result + 400) = *(v3 + 8);
    }
  }

  return result;
}

void sub_181959FA4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 & 0x80000000) != 0 || *(a2 + 52) == a4)
  {

    sub_1818A2964(a1, 135, a3, a5, 0, a6, a7, a8);
    return;
  }

  if (*(a2 + 63) != 1)
  {
    v12 = *(a2 + 8) + 16 * a4;
    v13 = *(v12 + 14);
    if ((v13 & 0x20) != 0)
    {
      v18 = *(a1 + 24);
      if ((*(v12 + 14) & 0x100) != 0)
      {
        sub_181910730(v18, "generated column loop on %s", a3, a4, a5, a6, a7, a8, *v12);
      }

      else
      {
        v19 = *(v18 + 68);
        *(v12 + 14) = v13 | 0x100;
        *(v18 + 68) = a3 + 1;
        sub_181957978(v18, a2, v12, a5, a5, a6, a7, a8);
        *(v18 + 68) = v19;
        *(v12 + 14) &= ~0x100u;
      }

      return;
    }

    if ((*(a2 + 48) & 0x80) != 0)
    {
      for (i = *(a2 + 16); i; i = *(i + 40))
      {
        if ((*(i + 99) & 3) == 2)
        {
          break;
        }
      }

      v21 = *(i + 96);
      if (!*(i + 96))
      {
LABEL_20:
        v10 = a4;
        v8 = a2;
        v9 = 94;
        v11 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }

      v11 = 0;
      v22 = *(i + 8);
      while (a4 != *(v22 + 2 * v11))
      {
        if (v21 == ++v11)
        {
          goto LABEL_20;
        }
      }

      v10 = a4;
      v8 = a2;
    }

    else
    {
      v10 = a4;
      v8 = a2;
      v14 = a1;
      v15 = a5;
      v16 = a3;
      v17 = sub_18190EAFC(a2, a4);
      a3 = v16;
      a5 = v15;
      v11 = v17;
      a1 = v14;
    }

    v9 = 94;
    goto LABEL_24;
  }

  v8 = a2;
  v9 = -80;
  v10 = a4;
  v11 = a4;
LABEL_24:
  v23 = a1;
  v24 = a5;
  sub_1818A2964(a1, v9, a3, v11, a5, a6, a7, a8);

  sub_18195A198(v23, v8, v10, v24, v25, v26, v27, v28);
}

uint64_t sub_18195A198(uint64_t result, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 8) + 16 * a3;
  v9 = *(v8 + 12);
  if (*(v8 + 12))
  {
    v19 = 0;
    if (!*(a2 + 63))
    {
      v12 = *(a2 + 80);
      if (v12)
      {
        if (*v12 >= v9)
        {
          v13 = *&v12[6 * (v9 - 1) + 2];
          if (v13)
          {
            v14 = result;
            v15 = a2;
            v16 = a4;
            sub_18194BC5C(*result, v13, *(*result + 100), *(v8 + 9), &v19);
            a2 = v15;
            result = v14;
            a4 = v16;
            v17 = v19;
            if (v19)
            {
              if (*(*v14 + 103))
              {
                if ((*v14)[103])
                {
                  sub_18193A050(*v14, v19);
                  a2 = v15;
                  result = v14;
                  a4 = v16;
                }

                else
                {
                  if ((*(v19 + 20) & 0x9000) != 0 || *(v19 + 32))
                  {
                    sub_18193CA00(v19);
                  }

                  sub_181929C84(*(v17 + 24), v17);
                  a4 = v16;
                  result = v14;
                  a2 = v15;
                }
              }

              else
              {
                v18 = &v14[17][5 * *(v14 + 36)];
                *(v18 - 39) = -10;
                *(v18 - 24) = v17;
              }
            }
          }
        }
      }
    }
  }

  if (*(v8 + 9) == 69 && *(a2 + 63) != 1)
  {
    v10 = *(result + 144);
    if (*(result + 148) <= v10)
    {

      return sub_18194C8AC(result, 87, a4, 0, 0, a6, a7, a8);
    }

    else
    {
      *(result + 144) = v10 + 1;
      v11 = *(result + 136) + 40 * v10;
      *v11 = 87;
      *(v11 + 4) = a4;
      *(v11 + 8) = 0u;
      *(v11 + 24) = 0u;
    }
  }

  return result;
}

uint64_t *sub_18195A364(uint64_t a1, char a2, uint64_t a3, void *a4, unsigned int a5)
{
  v10 = sub_181929E8C(*a1, 8uLL, 2029538362);
  v14 = v10;
  if (v10)
  {
    *v10 = *a4;
  }

  v15 = *(a1 + 144);
  if (*(a1 + 148) <= v15)
  {
    v15 = sub_18194C8AC(a1, a2, 0, a3, 0, v11, v12, v13);
  }

  else
  {
    *(a1 + 144) = v15 + 1;
    v16 = *(a1 + 136) + 40 * v15;
    *v16 = a2;
    *(v16 + 2) = 0;
    *(v16 + 4) = 0;
    *(v16 + 8) = a3;
    *(v16 + 1) = 0;
    *(v16 + 12) = 0;
    *(v16 + 28) = 0;
    *(v16 + 20) = 0;
    *(v16 + 36) = 0;
  }

  return sub_1818B49F8(a1, v15, v14, a5);
}

uint64_t sub_18195A444(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = 0;
  v6 = 0;
  WORD2(v5) = a3;
  v4[0] = a1;
  v4[1] = sub_1818C7E14;
  v4[2] = sub_18195A49C;
  v4[3] = 0;
  if (a2)
  {
    sub_181959BA0(v4, a2);
    return WORD2(v5);
  }

  return a3;
}

uint64_t sub_18195A4A8(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 6) & 1) != 0 || (v4 = *(a2 + 32)) == 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
    if (*v4 >= 1)
    {
      v6 = (v4 + 2);
      for (i = *v4; ; --i)
      {
        if (*v6)
        {
          if (sub_181959BA0(a1, *v6))
          {
            v8 = 1;
          }

          else
          {
            v8 = i <= 1;
          }

          if (v8)
          {
            break;
          }
        }

        else if (i < 2)
        {
          break;
        }

        v6 += 3;
      }
    }

    if (!*(a1 + 36))
    {
      return 2;
    }
  }

  v9 = sub_181893B48(**a1, *(a2 + 8), v5, *(**a1 + 100), 0);
  if (!v9 || *(v9 + 32) || (*(v9 + 5) & 0x28) == 0 || (*(a2 + 7) & 1) != 0)
  {
    *(a1 + 36) = 0;
    return 2;
  }

  return 1;
}

uint64_t sub_18195A590(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = a2;
  if (!sub_181959260(a1, a2, a3, a4))
  {
    return 1;
  }

  while (1)
  {
    v8 = *a3;
    if (v8 == 43)
    {
      if (sub_18195A590(a1, v6, *(a3 + 2), a4) || sub_18195A590(a1, v6, *(a3 + 3), a4))
      {
        return 1;
      }

      v8 = *a3;
    }

    if (v8 == 52 && sub_18195A8B0(a1, v6, *(a3 + 2), a4, 0))
    {
      return 1;
    }

    v9 = *v6;
    if (v9 != 158)
    {
      break;
    }

    if (*(v6 + 2))
    {
      return 0;
    }

LABEL_20:
    v13 = *(v6 + 4);
    if (*v13 != 2)
    {
      if (*v13 != 3)
      {
        return 0;
      }

      v14 = *(v13 + 56);
      v15 = *v14;
      if (v15 != 122)
      {
        if (v15 != 171)
        {
          goto LABEL_31;
        }

        v16 = *(v14 + 1);
        v17 = *(v13 + 56);
        if ((v16 & 0x82000) != 0)
        {
          v17 = *(v13 + 56);
          do
          {
            if ((v16 & 0x80000) != 0)
            {
              v18 = (*(v17 + 32) + 8);
            }

            else
            {
              if (*v17 != 114)
              {
                break;
              }

              v18 = (v17 + 16);
            }

            v17 = *v18;
            v16 = *(v17 + 4);
          }

          while ((v16 & 0x82000) != 0);
        }

        if (!*(*(v17 + 8) + 4))
        {
LABEL_31:
          v20 = 1;
          v19 = sub_18195A9F8(v14, &v20, 0);
          result = 0;
          if (!v19 || v20)
          {
            return result;
          }

          v13 = *(v6 + 4);
        }
      }
    }

    v6 = *(v13 + 8);
    if (!sub_181959260(a1, v6, a3, a4))
    {
      return 1;
    }
  }

  if (v9 == 172)
  {
    v10 = *(v6 + 1);
    if ((*v10 | 0x20) == 0x69)
    {
      v11 = *(v6 + 4);
      if (v11)
      {
        result = sub_181893B48(*a1, v10, *v11, *(*a1 + 100), 0);
        if (!result)
        {
          return result;
        }

        if ((*(result + 6) & 0x40) != 0 && *(result + 8) == 5)
        {
          goto LABEL_20;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_18195A790(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  while (1)
  {
    v6 = *(v5 + 1);
    if ((v6 & 0x82000) == 0)
    {
      break;
    }

    if ((v6 & 0x80000) != 0)
    {
      v5 = *(*(v5 + 4) + 8);
      if (!v5)
      {
        return 0;
      }
    }

    else
    {
      v7 = *v5;
      if (v7 != 114)
      {
        goto LABEL_10;
      }

      v5 = *(v5 + 2);
      if (!v5)
      {
        return 0;
      }
    }
  }

  v7 = *v5;
LABEL_10:
  if (v7 == 52)
  {
    v5 = *(v5 + 2);
LABEL_16:
    WORD2(v10) = 0;
    v9 = 0uLL;
    *(&v8 + 1) = sub_18195AB54;
    WORD3(v10) = a3 != 0;
    DWORD2(v10) = a2;
    if (v5)
    {
      sub_181959BA0(&v8, v5);
      return WORD2(v10);
    }

    return 0;
  }

  if (v7 != 44)
  {
    goto LABEL_16;
  }

  while (!sub_18195A790(*(v5 + 2), a2, a3))
  {
    v5 = *(v5 + 3);
    if (*v5 != 44)
    {
      goto LABEL_16;
    }
  }

  return 1;
}

BOOL sub_18195A8B0(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  while (sub_181959260(a1, a2, a3, a4))
  {
    result = 0;
    switch(*v8)
    {
      case 0x13u:
      case 0x73u:
        goto LABEL_2;
      case 0x31u:
        if (a5)
        {
          return 0;
        }

        v11 = *(v8 + 4);
        if (sub_18195A8B0(v9, *(v11 + 8), v7, v6, 1))
        {
          return 1;
        }

        v12 = *(v11 + 32);
        a5 = 1;
        v13 = sub_18195A8B0(v9, v12, v7, v6, 1);
        result = 1;
        if (v13)
        {
          return result;
        }

        goto LABEL_3;
      case 0x32u:
        if (a5 && (v8[5] & 0x10) != 0)
        {
          return 0;
        }

        goto LABEL_2;
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x68u:
      case 0x69u:
      case 0x6Au:
      case 0x6Bu:
      case 0x6Cu:
      case 0x70u:
        a5 = 1;
        goto LABEL_7;
      case 0x67u:
      case 0x6Du:
      case 0x6Eu:
      case 0x6Fu:
LABEL_7:
        if (!sub_18195A8B0(v9, *(v8 + 3), v7, v6, a5))
        {
          goto LABEL_3;
        }

        return 1;
      case 0x72u:
      case 0xADu:
      case 0xAEu:
      case 0xB5u:
        goto LABEL_3;
      case 0xAFu:
        if (a5 || v8[2] != 45)
        {
          return 0;
        }

LABEL_2:
        a5 = 1;
LABEL_3:
        v8 = *(v8 + 2);
        a1 = v9;
        a2 = v8;
        a3 = v7;
        a4 = v6;
        break;
      default:
        return result;
    }
  }

  return *v7 != 122;
}

uint64_t sub_18195A9F8(unsigned __int8 *a1, _DWORD *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  if ((a1[5] & 8) != 0)
  {
LABEL_11:
    *a2 = *(a1 + 2);
    return 1;
  }

  v3 = *a1;
  if (v3 != 157)
  {
    if (v3 == 174)
    {
LABEL_22:
      v15 = 0;
      if (sub_18195A9F8(*(a1 + 2), &v15, 0))
      {
        *a2 = -v15;
        return 1;
      }
    }

    else if (v3 == 173)
    {
      a1 = *(a1 + 2);
      if (a1)
      {
        while ((a1[5] & 8) == 0)
        {
          v4 = *a1;
          if (v4 != 173)
          {
            if (v4 != 174)
            {
              return 0;
            }

            goto LABEL_22;
          }

          v5 = 0;
          a1 = *(a1 + 2);
          if (!a1)
          {
            return v5;
          }
        }

        goto LABEL_11;
      }
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = a3[2];
  if (!v6 || (*(*a3 + 50) & 0x80) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 12);
  v9 = 1 << (v8 - 1);
  if (v8 > 31)
  {
    v9 = 0x80000000;
  }

  *(v6 + 372) |= v9;
  v10 = sub_181959A44(a3[41], v8);
  if (!v10)
  {
    return 0;
  }

  if ((0x50505050uLL >> *(v10 + 10)))
  {
    v13 = v10;
    v14 = sqlite3_value_int64(v10);
    if (v14 >> 31)
    {
      v5 = 0;
    }

    else
    {
      *a2 = v14;
      v5 = 1;
    }

    v10 = v13;
  }

  else
  {
    v5 = 0;
  }

  sub_18190B0E8(v10);
  return v5;
}

uint64_t sub_18195AB54(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a2 + 1);
  if ((v2 & 1) != 0 || (v2 & 2) != 0 && *(a1 + 38))
  {
    return 1;
  }

  v5 = *a2;
  result = 1;
  if (v5 <= 0x32)
  {
    if (*a2 > 0x30u)
    {
      if (v5 == 49)
      {
        if (*(a2 + 2))
        {
          v13 = a2;
          sub_181959BA0(a1, *(a2 + 2));
          a2 = v13;
        }

        sub_18195AD20(a1, *(*(a2 + 4) + 8), *(*(a2 + 4) + 32));
        return 1;
      }

      if (v5 != 50)
      {
        return 0;
      }

      if ((v2 & 0x1000) != 0)
      {
        return result;
      }

      if (**(a2 + 4) < 1)
      {
        return result;
      }

      v10 = *(a2 + 2);
      if (!v10)
      {
        return result;
      }

      v11 = a1;
    }

    else
    {
      if (v5 - 43 >= 2)
      {
        if (v5 - 45 < 2)
        {
          return result;
        }

        return 0;
      }

      if (!*(a2 + 2) || *(a1 + 36))
      {
        return result;
      }

      v12 = *(a2 + 3);
      sub_181959BA0(a1, *(a2 + 2));
      if (!*(a1 + 36))
      {
        return 1;
      }

      *(a1 + 36) = 0;
      if (!v12)
      {
        return 1;
      }

      v11 = a1;
      v10 = v12;
    }

    sub_181959BA0(v11, v10);
    return 1;
  }

  if (v5 - 53 >= 6)
  {
    if (v5 - 158 <= 0x13)
    {
      if (((1 << (v5 + 98)) & 0xA4001) != 0)
      {
        return result;
      }

      if (v5 == 168)
      {
        if (*(a1 + 40) == *(a2 + 11))
        {
          *(a1 + 36) = 1;
          return 2;
        }

        return result;
      }
    }

    if (v5 - 51 < 2)
    {
      return result;
    }

    return 0;
  }

  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  if (*v7 != 168 || (v8 = *(v7 + 9)) == 0 || *(v8 + 63) != 1)
  {
    if (*v6 != 168)
    {
      return 0;
    }

    v9 = *(v6 + 9);
    if (!v9 || *(v9 + 63) != 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18195AD20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = result;
    if (!*(result + 36))
    {
      result = sub_181959BA0(result, a2);
      if (*(v3 + 36))
      {
        *(v3 + 36) = 0;
        if (a3)
        {

          return sub_181959BA0(v3, a3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_18195AD8C(_BYTE *a1, int a2, char *zFormat, ...)
{
  va_start(va, zFormat);
  v37 = *MEMORY[0x1E69E9840];
  if (a1[301] != 2 && (*(*a1 + 49) & 4) == 0)
  {
    return 0;
  }

  v6 = *a1;
  v35 = 0x10000000000;
  v7 = *(v6 + 136);
  v31 = v6;
  v32 = &v36;
  v33 = 512;
  v34 = v7;
  sqlite3_str_vappendf(&v31, zFormat, va);
  if (v32 && (v32[v35] = 0, v34) && (v35 & 0x40000000000) == 0)
  {
    v14 = sub_18192A12C(&v31);
  }

  else
  {
    v14 = v32;
  }

  if (BYTE4(v35) == 7 && !*(v6 + 103) && !*(v6 + 104))
  {
    *(v6 + 103) = 1;
    if (*(v6 + 220) >= 1)
    {
      *(v6 + 424) = 1;
    }

    ++*(v6 + 432);
    *(v6 + 436) = 0;
    v29 = *(v6 + 344);
    if (v29)
    {
      sub_181910730(v29, "out of memory", v8, v9, v10, v11, v12, v13, va);
      for (i = *(v6 + 344); ; ++*(i + 52))
      {
        *(i + 24) = 7;
        i = *(i + 216);
        if (!i)
        {
          break;
        }
      }
    }
  }

  v15 = *(a1 + 2);
  v16 = *(a1 + 78);
  v17 = *(v15 + 144);
  if (*(v15 + 148) <= v17)
  {
    v5 = sub_18194C8AC(*(a1 + 2), 188, *(v15 + 144), v16, 0, v11, v12, v13);
  }

  else
  {
    *(v15 + 144) = v17 + 1;
    v18 = *(v15 + 136) + 40 * v17;
    *v18 = 188;
    *(v18 + 4) = v17;
    *(v18 + 8) = v16;
    *(v18 + 12) = 0;
    *(v18 + 28) = 0;
    *(v18 + 20) = 0;
    *(v18 + 36) = 0;
    v5 = v17;
  }

  if (*(*v15 + 103))
  {
    if (v14)
    {
      sub_181939EC8(*v15, v14);
    }
  }

  else
  {
    v19 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      v19 = *(v15 + 144) - 1;
    }

    v20 = *(v15 + 136) + 40 * v19;
    if (*(v20 + 1))
    {
      sub_18194CB90(v15, v20, v14, 0xFFFFFFFA);
    }

    else if (v14)
    {
      *(v20 + 16) = v14;
      *(v20 + 1) = -6;
    }
  }

  if (a2)
  {
    *(a1 + 78) = v17;
  }

  v21 = *v15;
  if ((*(*v15 + 49) & 4) != 0)
  {
    v22 = *(v15 + 392);
    v23 = 56 * v22;
    v24 = v23 + 56;
    v25 = *(v15 + 400);
    if (v25)
    {
      if (*(v21 + 512) > v25)
      {
        v26 = *(v15 + 392);
        if (*(v21 + 496) <= v25)
        {
          if (v24 < 0x81)
          {
LABEL_38:
            *(v15 + 392) = v22 + 1;
            v27 = &v25[7 * v26];
            *(v27 + 1) = 0u;
            *(v27 + 2) = 0u;
            *v27 = 0u;
            v27[6] = 0;
            *v27 = v17;
            *(v27 + 28) = -1;
            *(v27 + 20) = 0;
            *(v15 + 400) = v25;
            return v5;
          }
        }

        else if (*(v21 + 504) <= v25 && v24 <= *(v21 + 438))
        {
          goto LABEL_38;
        }
      }

      v25 = sub_181929F38(v21, v25, v24, 0x1010040CEB2E6A9);
      if (!v25)
      {
        return v5;
      }
    }

    else
    {
      v25 = sub_181929E8C(v21, v23 + 56, 0x1010040CEB2E6A9);
      if (!v25)
      {
        return v5;
      }
    }

    v22 = *(v15 + 392);
    v26 = v22;
    goto LABEL_38;
  }

  return v5;
}

uint64_t sub_18195B0C0(uint64_t result, int a2, int a3, int a4)
{
  if ((*(*result + 49) & 4) != 0)
  {
    v4 = *(result + 392);
    v5 = v4 + 1;
    v6 = 56 * v4;
    while (--v5 >= 1)
    {
      v7 = v6 - 56;
      v8 = *(result + 400);
      v9 = *(v8 + v6 - 56);
      v6 -= 56;
      if (v9 == a2)
      {
        if (a4 < 0)
        {
          a4 = *(result + 144) - 1;
        }

        if (*(v8 + v7 + 4))
        {
          if (*(v8 + v7 + 12))
          {
            if (*(v8 + v7 + 20))
            {
              return result;
            }

            v10 = 4;
          }

          else
          {
            v10 = 2;
          }
        }

        else
        {
          v10 = 0;
        }

        v11 = v8 + 4 * v10 + v7;
        *(v11 + 4) = a3;
        *(v11 + 8) = a4;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_18195B158(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (off_1ED453038 && off_1ED453038(300))
  {
    v12 = *a1;
    if (!*(*a1 + 103) && !*(v12 + 104))
    {
      *(v12 + 103) = 1;
      if (*(v12 + 220) >= 1)
      {
        *(v12 + 424) = 1;
      }

      ++*(v12 + 432);
      *(v12 + 436) = 0;
      v13 = *(v12 + 344);
      if (v13)
      {
        sub_181910730(v13, "out of memory", v6, v7, v8, v9, v10, v11, v18);
        for (i = *(v12 + 344); ; ++*(i + 52))
        {
          *(i + 24) = 7;
          i = *(i + 216);
          if (!i)
          {
            break;
          }
        }
      }
    }

    goto LABEL_15;
  }

  if (!*a1)
  {
    v15 = sub_181902484(24, 0xA00402214FCE6);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_15:
    a2(*a1, a3);
    return 0;
  }

  v15 = sub_181929E8C(*a1, 0x18uLL, 0xA00402214FCE6);
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_13:
  v16 = a1[22];
  a1[22] = v15;
  *v15 = v16;
  v15[1] = a3;
  v15[2] = a2;
  return a3;
}

void *sub_18195B270(void *result, unsigned __int8 *a2)
{
  if (a2)
  {
    return sub_1819439E0(result, a2);
  }

  return result;
}

uint64_t sub_18195B27C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  v9 = *v8;
  if (v9 == 176)
  {
    v9 = v8[2];
  }

  v10 = *(a2 + 16);
  if (v9 != 177)
  {
    if (v9 != 139)
    {
      v11 = 1;
      goto LABEL_8;
    }

    v10 = *(v8 + 4);
  }

  v11 = **(v10 + 32);
LABEL_8:
  if ((*(a2 + 5) & 0x10) != 0 && !*(*a1 + 103))
  {
    if (v11 == **(*(a2 + 32) + 32))
    {
      return 0;
    }

    if (!a1[13])
    {
      sub_181910730(a1, "sub-select returns %d columns - expected %d", a3, a4, a5, a6, a7, a8, **(*(a2 + 32) + 32));
    }

    return 1;
  }

  if (v11 != 1)
  {
    if ((v8[5] & 0x10) != 0)
    {
      if (!a1[13])
      {
        v12 = 1;
        sub_181910730(a1, "sub-select returns %d columns - expected %d", a3, a4, a5, a6, a7, a8, **(*(v8 + 4) + 32));
        return v12;
      }
    }

    else
    {
      sub_181910730(a1, "row value misused", a3, a4, a5, a6, a7, a8, v14);
    }

    return 1;
  }

  return 0;
}

uint64_t sub_18195B378(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *v2;
  if (v3 == 176)
  {
    v3 = v2[2];
  }

  v4 = *(a2 + 16);
  if (v3 != 177)
  {
    if (v3 != 139)
    {
      v5 = 1;
      if ((*(a2 + 5) & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v4 = *(v2 + 4);
  }

  v5 = **(v4 + 32);
  if ((*(a2 + 5) & 0x10) == 0)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v6 = *(a2 + 32);
LABEL_10:
  v7 = *a1;
  if (v7)
  {
    v8 = sub_181929E8C(v7, v5 + 1, 2711528957);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v8 = sub_181902484(v5 + 1, 2711528957);
    if (!v8)
    {
      return v8;
    }
  }

  v22 = v5;
  if (v5 >= 1)
  {
    v9 = 8;
    v10 = v8;
    v11 = v5;
    while (1)
    {
      v14 = *v2;
      v15 = v14;
      if (v14 == 176)
      {
        v15 = v2[2];
      }

      v16 = v2;
      if (v15 == 177)
      {
        goto LABEL_26;
      }

      v17 = v2;
      if (v15 == 139)
      {
        break;
      }

LABEL_31:
      v13 = sub_1818D0A24(v17);
      if (v6)
      {
        v19 = sub_1818D0A24(*(*(v6 + 32) + v9));
        if (v13 < 65 || v19 < 65)
        {
          if (v19 >= 65)
          {
            v12 = v19;
          }

          else
          {
            v12 = v13;
          }

          LOBYTE(v13) = v12 | 0x40;
        }

        else if (v19 > 0x42 || v13 > 0x42)
        {
          LOBYTE(v13) = 67;
        }

        else
        {
          LOBYTE(v13) = 65;
        }
      }

      *v10++ = v13;
      v9 += 24;
      if (!--v11)
      {
        goto LABEL_40;
      }
    }

    v16 = *(v2 + 4);
LABEL_26:
    v17 = v2;
    if (*v16[4] >= 2)
    {
      if (v14 == 139 || (v18 = v2, v2[2] == 139))
      {
        v18 = *(v2 + 4);
      }

      v17 = *(*(v18 + 4) + v9);
    }

    goto LABEL_31;
  }

LABEL_40:
  *(v8 + v22) = 0;
  return v8;
}

BOOL sub_18195B540(unsigned __int8 *a1)
{
  while (1)
  {
    v1 = *a1;
    if ((v1 - 173) >= 2)
    {
      break;
    }

    a1 = *(a1 + 2);
  }

  if (v1 == 176)
  {
    v1 = a1[2];
  }

  v2 = 0;
  if ((v1 - 154) < 3 || v1 == 118)
  {
    return v2;
  }

  if (v1 != 168)
  {
    return 1;
  }

  if ((a1[6] & 0x20) != 0)
  {
    return 1;
  }

  v3 = *(a1 + 9);
  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 12);
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = *(v3 + 8);
  return v5 && v4 < *(v3 + 54) && (*(v5 + 16 * v4 + 8) & 0xF) == 0;
}

uint64_t sub_18195B5D8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  v11 = *(result + 144);
  if (*(result + 148) <= v11)
  {
    result = sub_18194C8AC(result, 71, 0, a3, 0, a6, a7, a8);
  }

  else
  {
    *(result + 144) = v11 + 1;
    v12 = *(result + 136) + 40 * v11;
    *v12 = 71;
    *(v12 + 8) = a3;
    *(v12 + 12) = 0;
    *(v12 + 28) = 0;
    *(v12 + 20) = 0;
    *(v12 + 36) = 0;
  }

  v13 = *(v10 + 144);
  if (*(v10 + 148) <= v13)
  {
    result = sub_18194C8AC(v10, 36, a2, 0, 0, a6, a7, a8);
    v13 = result;
  }

  else
  {
    *(v10 + 144) = v13 + 1;
    v14 = *(v10 + 136) + 40 * v13;
    *v14 = 36;
    *(v14 + 4) = a2;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
  }

  v15 = *(v10 + 144);
  if (*(v10 + 148) <= v15)
  {
    result = sub_18194C8AC(v10, 94, a2, 0, a3, a6, a7, a8);
  }

  else
  {
    *(v10 + 144) = v15 + 1;
    v16 = *(v10 + 136) + 40 * v15;
    *v16 = 94;
    *(v16 + 4) = a2;
    *(v16 + 8) = 0;
    *(v16 + 12) = a3;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 16) = 0;
  }

  v17 = *(v10 + 144);
  if (v17 >= 1)
  {
    *(*(v10 + 136) + 40 * v17 - 38) = 128;
  }

  if (*(*v10 + 103))
  {
    v18 = &byte_1EA831A58;
  }

  else
  {
    v18 = (*(v10 + 136) + 40 * v13);
  }

  *(v18 + 2) = v17;
  return result;
}

void sub_18195B754(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v10 = a1;
  v11 = *(a1 + 16);
  v12 = *(a2 + 4);
  if ((v12 & 0x40) != 0 || *(a1 + 68))
  {
    v13 = 0;
    v142 = 0;
    goto LABEL_4;
  }

  if ((v12 & 0x1000) == 0 || (*(*(a2 + 32) + 4) & 2) != 0)
  {
    v48 = 0;
    v49 = *(a2 + 4);
    if ((v49 & 0x2000000) != 0)
    {
      goto LABEL_187;
    }
  }

  else
  {
    v47 = sub_181929E8C(*a1, 0x20uLL, 0x1010040CB500BD6);
    v48 = v47;
    if (v47)
    {
      *v47 = *(*(v9 + 32) + 16);
      *(v47 + 8) = sub_18195B378(v10, v9);
    }

    v49 = *(v9 + 4);
    if ((v49 & 0x2000000) != 0)
    {
      goto LABEL_187;
    }
  }

  v55 = a3;
  v56 = v9;
  v57 = v48;
  if (v48)
  {
    v58 = *v48;
    if ((*(v10 + 38) >> (*v48 & 7)))
    {
      v59 = v10[2];
      if (!*(*v59 + 103))
      {
        v120 = v59[17];
        v121 = v120 + 40;
        v122 = v120 + 40 * *(v59 + 36) - 40;
        while (1)
        {
          if (v121 >= v122)
          {
            goto LABEL_48;
          }

          if (*(v121 + 1) == 239)
          {
            v123 = *(v121 + 16);
            if (*(v123 + 4))
            {
              if (v58 == *v123 && !strcmp(v57[1], *(v123 + 8)))
              {
                break;
              }
            }
          }

          v121 += 40;
        }

        v9 = v56;
        v56[18] = *(v123 + 20);
        v56[19] = *(v123 + 24);
        v56[11] = *(v123 + 16);
        v56[1] = v49 | 0x2000000;
        a3 = v55;
        v48 = v57;
LABEL_187:
        v124 = *(v11 + 36);
        if (*(v11 + 37) <= v124)
        {
          v124 = sub_18194C8AC(v11, 15, 0, 0, 0, a6, a7, a8);
          if ((*(v9 + 5) & 0x10) == 0)
          {
LABEL_192:
            v127 = *(v9 + 72);
            v126 = *(v9 + 76);
            v128 = *(v11 + 36);
            if (*(v11 + 37) <= v128)
            {
              sub_18194C8AC(v11, 10, v126, v127, 0, a6, a7, a8);
            }

            else
            {
              *(v11 + 36) = v128 + 1;
              v129 = &v11[17][5 * v128];
              *v129 = 10;
              *(v129 + 4) = v126;
              *(v129 + 8) = v127;
              *(v129 + 12) = 0;
              *(v129 + 28) = 0;
              *(v129 + 20) = 0;
              *(v129 + 36) = 0;
            }

            v130 = *(v9 + 44);
            v131 = *(v11 + 36);
            if (*(v11 + 37) <= v131)
            {
              sub_18194C8AC(v11, 114, a3, v130, 0, a6, a7, a8);
            }

            else
            {
              *(v11 + 36) = v131 + 1;
              v132 = &v11[17][5 * v131];
              *v132 = 114;
              *(v132 + 4) = a3;
              *(v132 + 8) = v130;
              *(v132 + 12) = 0;
              *(v132 + 28) = 0;
              *(v132 + 20) = 0;
              *(v132 + 36) = 0;
            }

            if (*(*v11 + 103))
            {
              dword_1EA831A60 = *(v11 + 36);
              if (!v48)
              {
                return;
              }
            }

            else
            {
              LODWORD(v11[17][5 * v124 + 1]) = *(v11 + 36);
              if (!v48)
              {
                return;
              }
            }

            v133 = v48[1];
            if (v133)
            {
              sub_181929C84(*v10, v133);
            }

            v134 = *v10;

            sub_181929C84(v134, v48);
            return;
          }
        }

        else
        {
          *(v11 + 36) = v124 + 1;
          v125 = &v11[17][5 * v124];
          *v125 = 15;
          *(v125 + 1) = 0u;
          *(v125 + 17) = 0u;
          *(v125 + 32) = 0;
          if ((*(v9 + 5) & 0x10) == 0)
          {
            goto LABEL_192;
          }
        }

        sub_18195AD8C(v10, 0, "REUSE LIST SUBQUERY %d", *(*(v9 + 32) + 16));
        goto LABEL_192;
      }
    }
  }

LABEL_48:
  v9 = v56;
  v56[1] = v49 | 0x2000000;
  v60 = (*(v10 + 15) + 1);
  *(v10 + 15) = v60;
  v56[19] = v60;
  v61 = *(v11 + 36);
  if (*(v11 + 37) <= v61)
  {
    v62 = sub_18194C8AC(v11, 74, 0, v60, 0, a6, a7, a8) + 1;
  }

  else
  {
    v62 = v61 + 1;
    *(v11 + 36) = v61 + 1;
    v63 = &v11[17][5 * v61];
    *v63 = 74;
    *(v63 + 8) = v60;
    *(v63 + 12) = 0;
    *(v63 + 28) = 0;
    *(v63 + 20) = 0;
    *(v63 + 36) = 0;
  }

  a3 = v55;
  v13 = v57;
  *(v9 + 72) = v62;
  if (v57)
  {
    *(v57 + 4) = 0;
    *(v57 + 5) = *(v9 + 72);
    *(v57 + 6) = *(v9 + 76);
    *(v57 + 4) = v55;
    *(v10 + 38) = 1 << (*v57 & 7);
    v87 = *v11;
    if (*(*v11 + 103))
    {
      v88 = v57[1];
      if (v88)
      {
        sub_181929C84(*v11, v88);
      }

      sub_181929C84(v87, v57);
    }

    else
    {
      v119 = &v11[17][5 * *(v11 + 36)];
      if (*(v119 - 39))
      {
        sub_18194CB90(v11, v119 - 40, v57, 0xFFFFFFEF);
      }

      else
      {
        *(v119 - 24) = v57;
        *(v119 - 39) = -17;
      }
    }
  }

  v135 = *(v11 + 36);
  if (*(v11 + 37) <= v135)
  {
    v142 = sub_18194C8AC(v11, 15, 0, 0, 0, a6, a7, a8);
  }

  else
  {
    *(v11 + 36) = v135 + 1;
    v136 = &v11[17][5 * v135];
    *v136 = 15;
    *(v136 + 1) = 0u;
    *(v136 + 17) = 0u;
    *(v136 + 32) = 0;
    v142 = v135;
  }

LABEL_4:
  v14 = *(v9 + 16);
  v15 = *v14;
  if (v15 == 176)
  {
    v15 = v14[2];
  }

  v16 = *(v9 + 16);
  if (v15 == 177)
  {
    goto LABEL_9;
  }

  if (v15 == 139)
  {
    v16 = *(v14 + 4);
LABEL_9:
    v17 = **(v16 + 32);
    goto LABEL_11;
  }

  v17 = 1;
LABEL_11:
  *(v9 + 44) = a3;
  v18 = *(v11 + 36);
  if (*(v11 + 37) <= v18)
  {
    v140 = sub_18194C8AC(v11, 117, a3, v17, 0, a6, a7, a8);
  }

  else
  {
    *(v11 + 36) = v18 + 1;
    v140 = v18;
    v19 = &v11[17][5 * v18];
    *v19 = 117;
    *(v19 + 4) = a3;
    *(v19 + 8) = v17;
    *(v19 + 12) = 0;
    *(v19 + 28) = 0;
    *(v19 + 20) = 0;
    *(v19 + 36) = 0;
  }

  v20 = *v10;
  v21 = v17 + 1;
  v22 = 9 * v21;
  v23 = sub_181929E8C(*v10, v22 + 32, 0x2004093837F09);
  v141 = v23;
  if (v23)
  {
    v30 = v23;
    v31 = (v23 + 32);
    *(v30 + 24) = &v31[8 * v21];
    *(v30 + 6) = v17;
    *(v30 + 8) = v21;
    *(v30 + 4) = *(v20 + 100);
    *(v30 + 16) = v20;
    *v30 = 1;
    bzero(v31, v22);
  }

  else if (!*(v20 + 103) && !*(v20 + 104))
  {
    *(v20 + 103) = 1;
    if (*(v20 + 220) >= 1)
    {
      *(v20 + 424) = 1;
    }

    ++*(v20 + 432);
    *(v20 + 436) = 0;
    v85 = *(v20 + 344);
    if (v85)
    {
      sub_181910730(v85, "out of memory", v24, v25, v26, v27, v28, v29, v137);
      for (i = *(v20 + 344); ; ++*(i + 52))
      {
        *(i + 24) = 7;
        i = *(i + 216);
        if (!i)
        {
          break;
        }
      }
    }
  }

  v32 = *(v9 + 32);
  if ((*(v9 + 5) & 0x10) == 0)
  {
    if (!v32)
    {
      goto LABEL_150;
    }

    v33 = sub_1818D0A24(v14);
    __s = v33;
    if (v33 > 64)
    {
      v37 = v141;
      if (v33 == 69)
      {
        __s = 67;
      }
    }

    else
    {
      __s = 65;
      v37 = v141;
    }

    if (v37)
    {
      *(v37 + 4) = sub_1818B4720(v10, *(v9 + 16), v34, v35, v36, v27, v28, v29);
    }

    v50 = *(v10 + 31);
    if (v50)
    {
      *(v10 + 31) = v50 - 1;
      v51 = *(v10 + (v50 - 1) + 46);
      if (v50 != 1)
      {
        v52 = v50 - 2;
        v53 = v10;
        *(v10 + 31) = v52;
        v54 = *(v10 + v52 + 46);
LABEL_53:
        v144 = a3;
        v65 = *v32;
        v66 = v142;
        if (*v32 >= 1)
        {
          v67 = (v32 + 8);
          v138 = v9;
          do
          {
            v70 = *v67;
            if (v66 && (v150 = 0x100000000, v151 = 0, v149 = 0, *&v147 = v53, *(&v147 + 1) = sub_1818C7E14, v148 = sub_18195A49C, v70) && (sub_181959BA0(&v147, v70), !WORD2(v150)))
            {
              if (!*(*v11 + 103))
              {
                v74 = &v11[17][5 * v66];
                sub_1818A3B68(*v11, *(v74 - 39), *(v74 - 24));
                *(v74 - 24) = 0;
                *(v74 - 40) = 187;
                v9 = v138;
                if (!*(*v11 + 103))
                {
                  v75 = &v11[17][5 * v66];
                  sub_1818A3B68(*v11, *(v75 + 1), *(v75 + 16));
                  *(v75 + 16) = 0;
                  *v75 = 187;
                  v9 = v138;
                }
              }

              v66 = 0;
              *(v9 + 4) &= ~0x2000000u;
              if (v53[2])
              {
LABEL_61:
                v71 = sub_1818B8080(v53, v70, v51, v35, v36, v27, v28, v29);
                if (v71 != v51)
                {
                  v72 = v71;
                  if (!v70)
                  {
                    goto LABEL_78;
                  }

                  while (1)
                  {
                    v73 = *(v70 + 1);
                    if ((v73 & 0x82000) == 0)
                    {
                      break;
                    }

                    if ((v73 & 0x80000) != 0)
                    {
                      v70 = *(*(v70 + 4) + 8);
                      if (!v70)
                      {
                        goto LABEL_78;
                      }
                    }

                    else
                    {
                      if (*v70 != 114)
                      {
                        break;
                      }

                      v70 = *(v70 + 2);
                      if (!v70)
                      {
                        goto LABEL_78;
                      }
                    }
                  }

                  if ((v73 & 0x400000) != 0 || *v70 == 176)
                  {
                    v76 = 80;
                  }

                  else
                  {
LABEL_78:
                    v76 = 81;
                  }

                  v77 = v53[2];
                  v78 = *(v77 + 144);
                  if (*(v77 + 148) <= v78)
                  {
                    sub_18194C8AC(v77, v76, v72, v51, 0, v27, v28, v29);
                  }

                  else
                  {
                    *(v77 + 144) = v78 + 1;
                    v79 = *(v77 + 136) + 40 * v78;
                    *v79 = v76;
                    *(v79 + 2) = 0;
                    *(v79 + 4) = v72;
                    *(v79 + 8) = v51;
                    *(v79 + 1) = 0;
                    *(v79 + 12) = 0;
                    *(v79 + 28) = 0;
                    *(v79 + 20) = 0;
                    *(v79 + 36) = 0;
                  }
                }
              }
            }

            else if (v53[2])
            {
              goto LABEL_61;
            }

            v80 = *(v11 + 36);
            if (*(v11 + 37) <= v80)
            {
              v80 = sub_18194C8AC(v11, 97, v51, 1, v54, v27, v28, v29);
            }

            else
            {
              *(v11 + 36) = v80 + 1;
              v81 = &v11[17][5 * v80];
              *v81 = 97;
              *(v81 + 4) = v51;
              *(v81 + 8) = 1;
              *(v81 + 12) = v54;
              *(v81 + 24) = 0;
              *(v81 + 32) = 0;
              *(v81 + 16) = 0;
            }

            if (!*(*v11 + 103))
            {
              if (v80 < 0)
              {
                v80 = *(v11 + 36) - 1;
              }

              sub_18194CB90(v11, &v11[17][5 * v80], &__s, 1u);
            }

            v82 = *(v11 + 36);
            if (*(v11 + 37) > v82)
            {
              *(v11 + 36) = v82 + 1;
              v68 = &v11[17][5 * v82];
              *v68 = 64906;
              *(v68 + 4) = v144;
              *(v68 + 8) = v54;
              *(v68 + 12) = v51;
              *(v68 + 16) = 1;
              *(v68 + 24) = 0;
              *(v68 + 32) = 0;
            }

            else
            {
              sub_18194CAFC(v11, 138, v144, v54, v51, 1, v28, v29);
            }

            v67 += 3;
            v69 = __OFSUB__(v65--, 1);
          }

          while (!((v65 < 0) ^ v69 | (v65 == 0)));
        }

        v142 = v66;
        v10 = v53;
        if (v51)
        {
          v83 = *(v53 + 31);
          if (v83 <= 7)
          {
            *(v53 + 31) = v83 + 1;
            *(v53 + v83 + 46) = v51;
          }
        }

        a3 = v144;
        if (v54)
        {
          v84 = *(v53 + 31);
          if (v84 <= 7)
          {
            *(v53 + 31) = v84 + 1;
            *(v53 + v84 + 46) = v54;
          }
        }

LABEL_150:
        if (v13)
        {
          *(v13 + 4) = 1;
        }

        if (v141)
        {
          if (*(*v11 + 103))
          {
            if (!(*v11)[103])
            {
              v109 = (*v141)-- == 1;
              if (v109)
              {
                sub_181939EC8(*(v141 + 2), v141);
                if (!v142)
                {
                  return;
                }

LABEL_164:
                v112 = *(v11 + 36);
                if (*(v11 + 37) <= v112)
                {
                  sub_18194C8AC(v11, 136, a3, 0, 0, v27, v28, v29);
                }

                else
                {
                  *(v11 + 36) = v112 + 1;
                  v113 = &v11[17][5 * v112];
                  *v113 = 136;
                  *(v113 + 4) = a3;
                  *(v113 + 8) = 0u;
                  *(v113 + 24) = 0u;
                }

                v114 = *(v11 + 36);
                if (*(*v11 + 103))
                {
                  v115 = &byte_1EA831A58;
                }

                else
                {
                  v115 = &v11[17][5 * v142];
                }

                *(v115 + 2) = v114;
                v117 = *(v9 + 72);
                v116 = *(v9 + 76);
                if (*(v11 + 37) <= v114)
                {
                  sub_18194C8AC(v11, 67, v116, v117, 1, v27, v28, v29);
                }

                else
                {
                  *(v11 + 36) = v114 + 1;
                  v118 = &v11[17][5 * v114];
                  *v118 = 67;
                  *(v118 + 4) = v116;
                  *(v118 + 8) = v117;
                  *(v118 + 12) = 1;
                  *(v118 + 24) = 0;
                  *(v118 + 32) = 0;
                  *(v118 + 16) = 0;
                }

                *(v10 + 31) = 0;
                *(v10 + 11) = 0;
                return;
              }
            }
          }

          else
          {
            v110 = v140;
            if (v140 < 0)
            {
              v110 = *(v11 + 36) - 1;
            }

            v111 = &v11[17][5 * v110];
            if (!*(v111 + 1))
            {
              *(v111 + 16) = v141;
              *(v111 + 1) = -8;
              if (!v142)
              {
                return;
              }

              goto LABEL_164;
            }

            sub_18194CB90(v11, v111, v141, 0xFFFFFFF8);
          }
        }

        if (!v142)
        {
          return;
        }

        goto LABEL_164;
      }

      v64 = *(v10 + 15);
    }

    else
    {
      v64 = *(v10 + 15) + 1;
      v51 = v64;
    }

    v54 = v64 + 1;
    v53 = v10;
    *(v10 + 15) = v54;
    goto LABEL_53;
  }

  v38 = &byte_181A2878D;
  v39 = *(v32 + 32);
  if (!v142)
  {
    v38 = "CORRELATED ";
  }

  sub_18195AD8C(v10, 1, "%sLIST SUBQUERY %d", v38, *(v32 + 16));
  if (*v39 != v17)
  {
    goto LABEL_150;
  }

  v150 = 0;
  v147 = 0u;
  v148 = 0;
  LOBYTE(v147) = 11;
  DWORD1(v147) = a3;
  v149 = sub_18195B378(v10, v9);
  *(v32 + 8) = 0;
  v43 = *v10;
  if (!v142 || (*(v43 + 98) & 8) != 0)
  {
    v143 = 0;
  }

  else
  {
    v44 = (*(v10 + 15) + 1);
    *(v10 + 15) = v44;
    v45 = *(v11 + 36);
    if (*(v11 + 37) <= v45)
    {
      v143 = sub_18194C8AC(v11, 77, 0x2710uLL, v44, 0, v40, v41, v42);
    }

    else
    {
      *(v11 + 36) = v45 + 1;
      v143 = v45;
      v46 = &v11[17][5 * v45];
      *v46 = 0x27100000004DLL;
      *(v46 + 8) = v44;
      *(v46 + 12) = 0;
      *(v46 + 28) = 0;
      *(v46 + 20) = 0;
      *(v46 + 36) = 0;
    }

    DWORD2(v147) = v44;
    v43 = *v10;
  }

  v92 = sub_1818CB220(v43, v32, 0);
  v93 = 0;
  if (!*(*v10 + 103))
  {
    v93 = sub_1818A9A10(v10, v92, &v147, v90, v91, v27, v28, v29) == 0;
  }

  if (v92)
  {
    sub_1818BB408(*v10, v92, 1);
  }

  if (v149)
  {
    sub_181929C84(*v10, v149);
  }

  if (!v143)
  {
    goto LABEL_124;
  }

  v94 = DWORD2(v147);
  if (*(*v11 + 103))
  {
    v95 = &byte_1EA831A58;
    dword_1EA831A64 = DWORD2(v147);
    if (!DWORD2(v147))
    {
      goto LABEL_123;
    }
  }

  else
  {
    v96 = v11[17];
    HIDWORD(v96[5 * v142 + 1]) = DWORD2(v147);
    if (!v94)
    {
      v95 = &v96[5 * v143];
LABEL_123:
      *(v95 + 1) = 10;
    }
  }

LABEL_124:
  if (v93)
  {
    v139 = v13;
    v145 = a3;
    v97 = v9;
    if (v17 < 1)
    {
LABEL_149:
      v9 = v97;
      a3 = v145;
      v13 = v139;
      goto LABEL_150;
    }

    v98 = (v141 + 32);
    v99 = v17;
    v100 = 2;
    while (1)
    {
      v103 = *v14;
      v104 = v103;
      if (v103 == 176)
      {
        v104 = v14[2];
      }

      v105 = v14;
      if (v104 != 177)
      {
        v106 = v14;
        if (v104 != 139)
        {
          goto LABEL_140;
        }

        v105 = *(v14 + 4);
      }

      v106 = v14;
      if (*v105[4] >= 2)
      {
        if (v103 == 139 || (v107 = v14, v14[2] == 139))
        {
          v107 = *(v14 + 4);
        }

        v106 = *(*(v107 + 4) + v100 * 4);
      }

LABEL_140:
      if ((v106[5] & 2) != 0)
      {
        v101 = v10;
      }

      else
      {
        v108 = *&v39[v100];
        if (!v108 || (v108[5] & 2) == 0)
        {
          v102 = sub_1818B4720(v10, v106, v89, v90, v91, v27, v28, v29);
          if (v102)
          {
            goto LABEL_129;
          }
        }

        v101 = v10;
        v106 = v108;
      }

      v102 = sub_1818B4720(v101, v106, v89, v90, v91, v27, v28, v29);
LABEL_129:
      *v98++ = v102;
      v100 += 6;
      if (!--v99)
      {
        goto LABEL_149;
      }
    }
  }

  if (v141)
  {
    v109 = (*v141)-- == 1;
    if (v109)
    {
      sub_181939EC8(*(v141 + 2), v141);
    }
  }
}

_DWORD *sub_18195C5D4(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 48 * *a2;
  if (a1)
  {
    v5 = sub_181929E8C(a1, v4 + 16, 776070470);
    if (!v5)
    {
      return v5;
    }
  }

  else
  {
    v5 = sub_181902484(v4 + 16, 776070470);
    if (!v5)
    {
      return v5;
    }
  }

  bzero(v5, v4 + 16);
  v6 = *a2;
  *v5 = *a2;
  if (v6 >= 1)
  {
    v7 = 0;
    for (i = 0; i < *a2; ++i)
    {
      v10 = &a2[v7];
      v11 = &v5[v7];
      *&v5[v7 + 8] = sub_1818CB220(a1, *&a2[v7 + 8], 0);
      *&v5[v7 + 6] = sub_1818C83A0(a1, *&a2[v7 + 6], 0);
      v12 = *&a2[v7 + 4];
      if (v12)
      {
        v13 = strlen(*(v10 + 2));
        v14 = v13;
        if (a1)
        {
          v9 = sub_181929E8C(a1, v13 + 1, 354097263);
          if (!v9)
          {
            goto LABEL_10;
          }

LABEL_16:
          memcpy(v9, v12, v14 + 1);
          goto LABEL_10;
        }

        v9 = sub_181902484(v13 + 1, 354097263);
        if (v9)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_10:
      *(v11 + 2) = v9;
      *(v11 + 56) = *(v10 + 56);
      v7 += 12;
    }
  }

  return v5;
}

uint64_t sub_18195C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!a1)
  {
    v6 = sub_181902484(144, 0x10B004036C0935CLL);
    if (!v6)
    {
      return v6;
    }

    goto LABEL_17;
  }

  if (*(a1 + 436) <= 0x8Fu)
  {
    if (*(a1 + 432))
    {
      if (*(a1 + 103))
      {
        return 0;
      }
    }

    else
    {
      ++*(a1 + 452);
    }

    goto LABEL_16;
  }

  v6 = *(a1 + 472);
  if (v6)
  {
    v7 = (a1 + 472);
LABEL_14:
    *v7 = *v6;
    ++*(a1 + 448);
    goto LABEL_17;
  }

  v6 = *(a1 + 464);
  if (v6)
  {
    v7 = (a1 + 464);
    goto LABEL_14;
  }

  ++*(a1 + 456);
LABEL_16:
  v6 = sub_18192A080(a1, 144, 0x10B004036C0935CLL);
  if (!v6)
  {
    return v6;
  }

LABEL_17:
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  v8 = *a3;
  if (!*a3)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v9 = strlen(*a3);
  v10 = v9;
  if (!a1)
  {
    v11 = sub_181902484(v9 + 1, 354097263);
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v11 = sub_181929E8C(a1, v9 + 1, 354097263);
  if (v11)
  {
LABEL_23:
    memcpy(v11, v8, v10 + 1);
  }

LABEL_24:
  *v6 = v11;
  v12 = *(a3 + 8);
  if (v12)
  {
    v13 = strlen(*(a3 + 8));
    v14 = v13;
    if (a1)
    {
      v15 = sub_181929E8C(a1, v13 + 1, 354097263);
      if (!v15)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v15 = sub_181902484(v13 + 1, 354097263);
    if (v15)
    {
LABEL_30:
      memcpy(v15, v12, v14 + 1);
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_31:
  *(v6 + 8) = v15;
  v16 = *(a3 + 72);
  if (v16)
  {
    v17 = sub_1818C7FEC(a1, v16, 0, 0);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a3 + 80);
  *(v6 + 72) = v17;
  *(v6 + 80) = v18;
  *(v6 + 16) = sub_1818C83A0(a1, *(a3 + 16), 0);
  *(v6 + 24) = sub_1818C83A0(a1, *(a3 + 24), 0);
  *(v6 + 32) = *(a3 + 32);
  *(v6 + 33) = *(a3 + 33);
  *(v6 + 36) = *(a3 + 36);
  *(v6 + 96) = *(a3 + 96);
  *(v6 + 124) = *(a3 + 124);
  *(v6 + 88) = *(a3 + 88);
  *(v6 + 140) = *(a3 + 140);
  v19 = *(a3 + 40);
  if (v19)
  {
    v20 = sub_1818C7FEC(a1, v19, 0, 0);
  }

  else
  {
    v20 = 0;
  }

  *(v6 + 40) = v20;
  v21 = *(a3 + 48);
  if (v21)
  {
    v22 = sub_1818C7FEC(a1, v21, 0, 0);
  }

  else
  {
    v22 = 0;
  }

  *(v6 + 48) = v22;
  *(v6 + 112) = a2;
  *(v6 + 35) = *(a3 + 35);
  return v6;
}

uint64_t sub_18195CA24(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 172 && (a2[7] & 1) != 0)
  {
    sub_18195CA70(*(a1 + 40), *(a2 + 9));
  }

  return 0;
}

uint64_t sub_18195CA70(uint64_t result, void *a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v5 = result + 112;
  v4 = *(result + 112);
  if (!v4)
  {
    a2[8] = 0;
LABEL_17:
    *v5 = a2;
    a2[7] = v5;
    return result;
  }

  result = sub_18195986C(0, v4, a2, 0);
  if (!result)
  {
    v11 = *v5;
    a2[8] = *v5;
    if (v11)
    {
      *(v11 + 56) = a2 + 8;
    }

    goto LABEL_17;
  }

  v6 = a2[2];
  v7 = *(*v5 + 16);
  if (!(v6 | v7))
  {
    return result;
  }

  if (v6 && v7 && *v6 == *v7)
  {
    if (*v6 < 1)
    {
      return result;
    }

    v8 = 0;
    v9 = (v7 + 24);
    for (i = (v6 + 24); *i == *v9; i += 3)
    {
      result = sub_181959260(0, *(i - 2), *(v9 - 2), 0xFFFFFFFFLL);
      if (result)
      {
        break;
      }

      ++v8;
      v9 += 3;
      if (v8 >= *v6)
      {
        return result;
      }
    }
  }

  *(v3 + 4) |= 0x2000000u;
  return result;
}

uint64_t sub_18195CB84(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 72);
  v7 = 10 - v6;
  v8 = *a1;
  v9 = *(a1 + 80);
  v10 = 4 * (10 - v6);
  if (v9)
  {
    if (*(v8 + 512) > v9)
    {
      if (*(v8 + 496) <= v9)
      {
        if (v10 < 0x81)
        {
LABEL_6:
          result = *(a1 + 80);
          goto LABEL_12;
        }
      }

      else if (*(v8 + 504) <= v9 && v10 <= *(v8 + 438))
      {
        goto LABEL_6;
      }
    }

    result = sub_181929F38(*a1, v9, v10, 0x100004052888210);
    if (result)
    {
LABEL_12:
      *(a1 + 80) = result;
      if (v6 > -90)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    result = sub_181929C84(v8, v9);
    *(a1 + 80) = 0;
  }

  else
  {
    result = sub_181929E8C(*a1, 4 * v7, 0x100004052888210);
    *(a1 + 80) = result;
    if (result)
    {
      if (v6 > -90)
      {
        goto LABEL_22;
      }

LABEL_13:
      if ((v7 / 0x64u) <= *(a1 + 76) / 100)
      {
        goto LABEL_22;
      }

      v12 = *a1;
      if (*(*a1 + 424))
      {
        ++*(a1 + 52);
        *(a1 + 24) = 9;
      }

      v13 = *(v12 + 544);
      if (!v13)
      {
        goto LABEL_22;
      }

      if (*(a1 + 24) == 9)
      {
        goto LABEL_21;
      }

      v14 = *(a1 + 128) + 1;
      *(a1 + 128) = v14;
      if (v14 >= *(v12 + 560))
      {
        if (v13(*(v12 + 552)))
        {
          ++*(a1 + 52);
          *(a1 + 24) = 9;
        }

LABEL_21:
        *(a1 + 128) = 0;
        result = *(a1 + 80);
      }

LABEL_22:
      *(a1 + 76) = v7;
      *(result + 4 * a3) = *(a2 + 144);
      return result;
    }
  }

  *(a1 + 76) = 0;
  return result;
}

void *sub_18195CD44(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = result;
  if ((*(result + 43) & 4) != 0)
  {
    v9 = 0x200000000;
    v10 = 0;
    v8[0] = result;
    v8[1] = sub_1818C7E14;
    v8[2] = sub_18195A49C;
    v8[3] = 0;
    if (!a2)
    {
      return sub_181957F4C(v4, a2, a3);
    }

    v7 = a2;
    sub_181959BA0(v8, a2);
    a2 = v7;
    if (WORD2(v9))
    {
      return sub_181957F4C(v4, a2, a3);
    }

    v5 = *v4;
LABEL_9:
    result = sub_1818C7FEC(v5, a2, 0, 0);
    v6 = result;
    if (*(v5 + 103))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *result;
  if (a2)
  {
    goto LABEL_9;
  }

  v6 = 0;
  if (*(v5 + 103))
  {
    goto LABEL_11;
  }

LABEL_10:
  result = sub_181956EF4(v4, v6, a3);
LABEL_11:
  if (v6)
  {
    return sub_1819439E0(v5, v6);
  }

  return result;
}

uint64_t sub_18195CE30(unsigned __int8 *a1)
{
  v1 = a1;
  v2 = *a1;
  if ((v2 - 43) <= 1)
  {
    v4 = sub_18195CE30(*(a1 + 3));
    v5 = sub_18195CE30(*(a1 + 2));
    v6 = *(v5 + 4);
    if ((v6 & 0x10000001) == 0x10000000 || (v7 = *(v4 + 4), (v7 & 0x20000001) == 0x20000000))
    {
      if (v2 == 44)
      {
        return v4;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      v9 = v7 & 0x10000001;
      v10 = (v6 & 0x20000001) == 0x20000000 || v9 == 0x10000000;
      v1 = a1;
      if (v10)
      {
        if (v2 == 44)
        {
          return v5;
        }

        else
        {
          return v4;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_18195CEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 528);
  if (!v6 || *(v5 + 197) || *(a1 + 302))
  {
    return 0;
  }

  result = v6(*(v5 + 536), a2, a3, a4, a5, *(a1 + 368));
  if (result == 1)
  {
    v15 = 23;
    v16 = "not authorized";
LABEL_10:
    sub_181910730(a1, v16, v9, v10, v11, v12, v13, v14, v17);
    *(a1 + 24) = v15;
    return 1;
  }

  if ((result & 0xFFFFFFFD) != 0)
  {
    v15 = 1;
    v16 = "authorizer malfunction";
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_18195CF88(_BYTE *a1, char *__s, _BYTE *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(*a1 + 48);
  if ((v9 & 0x10000001) == 1)
  {
    return 0;
  }

  v10 = 0;
  if ((*(v8 + 198) & 2) != 0 || !byte_1ED452E89)
  {
    return v10;
  }

  if (*(v8 + 197))
  {
    v11 = *(v8 + 200);
    v12 = *v11;
    if (a3)
    {
      if (v12)
      {
        while (1)
        {
          if (*a3 == *v12)
          {
            if (!*a3)
            {
              goto LABEL_32;
            }
          }

          else if (byte_181A20298[*a3] != byte_181A20298[*v12])
          {
            break;
          }

          ++a3;
          ++v12;
        }
      }
    }

    else if (!v12)
    {
LABEL_32:
      v15 = v11[1];
      if (__s)
      {
        if (v15)
        {
          while (1)
          {
            if (*__s == *v15)
            {
              if (!*__s)
              {
                goto LABEL_41;
              }
            }

            else if (byte_181A20298[*__s] != byte_181A20298[*v15])
            {
              break;
            }

            ++__s;
            ++v15;
          }
        }
      }

      else if (!v15)
      {
LABEL_41:
        v16 = a1;
        v10 = sqlite3_stricmp(a4, v11[2]);
        a1 = v16;
        if (!v10)
        {
          return v10;
        }
      }
    }

    sub_181910730(a1, &byte_181A2878D, a3, a4, a5, a6, a7, a8, v24);
    return 1;
  }

  if (__s && !a1[30])
  {
    v13 = *__s;
    if (!*__s)
    {
      v14 = "sqlite_";
      goto LABEL_58;
    }

    if ((v13 & 0xFFFFFFDF) == 0x53)
    {
      v13 = __s[1];
      if (!__s[1])
      {
        v14 = "qlite_";
        goto LABEL_58;
      }

      if ((v13 & 0xFFFFFFDF) == 0x51)
      {
        v13 = __s[2];
        if (!__s[2])
        {
          v14 = "lite_";
          goto LABEL_58;
        }

        if ((v13 & 0xFFFFFFDF) == 0x4C)
        {
          v13 = __s[3];
          if (!__s[3])
          {
            v14 = "ite_";
            goto LABEL_58;
          }

          if ((v13 & 0xFFFFFFDF) == 0x49)
          {
            v13 = __s[4];
            if (!__s[4])
            {
              v14 = "te_";
              goto LABEL_58;
            }

            if ((v13 & 0xFFFFFFDF) == 0x54)
            {
              v13 = __s[5];
              if (!__s[5])
              {
                v14 = "e_";
                goto LABEL_58;
              }

              if ((v13 & 0xFFFFFFDF) == 0x45)
              {
                v13 = __s[6];
                if (!__s[6])
                {
                  v14 = "_";
LABEL_58:
                  if (v13 == byte_181A20298[*v14])
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_60;
                }

                if (v13 == 95)
                {
LABEL_59:
                  sub_181910730(a1, "object name reserved for internal use: %s", a3, a4, a5, a6, a7, a8, __s);
                  return 1;
                }

                v13 += byte_181A20298;
                v14 = "_";
              }

              else
              {
                v13 += byte_181A20298;
                v14 = "e_";
              }
            }

            else
            {
              v13 += byte_181A20298;
              v14 = "te_";
            }
          }

          else
          {
            v13 += byte_181A20298;
            v14 = "ite_";
          }
        }

        else
        {
          v13 += byte_181A20298;
          v14 = "lite_";
        }
      }

      else
      {
        v13 += byte_181A20298;
        v14 = "qlite_";
      }
    }

    else
    {
      v13 += byte_181A20298;
      v14 = "sqlite_";
    }

    LODWORD(v13) = *v13;
    goto LABEL_58;
  }

LABEL_60:
  if ((v9 & 0x10000000) == 0 || *(v8 + 592) || *(v8 + 220))
  {
    return 0;
  }

  if (*(v8 + 564) < 1 || (v10 = *(v8 + 600)) != 0)
  {
    v18 = a1;
    v19 = __s;
    v20 = strrchr(__s, 95);
    if (v20)
    {
      *v20 = 0;
      v21 = v20;
      v22 = sub_181917F20(v8, v19, 0);
      *v21 = 95;
      if (v22)
      {
        if (*(v22 + 63) == 1)
        {
          v23 = sub_18195D6EC(v8, v22, v19);
          LOBYTE(__s) = v19;
          v10 = v23;
          a1 = v18;
          if (!v10)
          {
            return v10;
          }

          goto LABEL_59;
        }
      }
    }

    return 0;
  }

  return v10;
}

uint64_t sub_18195D2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (*(a1 + 60) + 1);
  *(a1 + 60) = v8;
  result = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v13 = *(result + 144);
    if (*(result + 148) <= v13)
    {
      v15 = result;
      sub_18194C8AC(result, 4, 0, v8, 0xFFFFFFFFLL, v10, v11, v12);
      result = v15;
    }

    else
    {
      *(result + 144) = v13 + 1;
      v14 = *(result + 136) + 40 * v13;
      *v14 = 4;
      *(v14 + 8) = v8;
      *(v14 + 12) = -1;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 16) = 0;
    }

    *(result + 272) |= 1u;
    if (*(*(*(*result + 32) + 8) + 17))
    {
      *(result + 276) |= 1u;
    }
  }

  return result;
}

uint64_t sub_18195D3A8(uint64_t result, char a2, int a3)
{
  if (*(result + 152))
  {
    v3 = *(result + 152);
  }

  else
  {
    v3 = result;
  }

  v4 = *(v3 + 116);
  v5 = 1 << a3;
  if ((v4 & (1 << a3)) == 0)
  {
    *(v3 + 116) = v4 | v5;
    if (a3 == 1)
    {
      v6 = a2;
      result = sub_1819108F4(v3);
      a2 = v6;
    }
  }

  *(v3 + 112) |= v5;
  *(v3 + 32) |= a2;
  return result;
}

uint64_t sub_18195D424(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a2 != 1)
  {
    if (*(*(*(*a1 + 32) + 32 * a2 + 8) + 17))
    {
      v13 = result;
      sub_1819570CC(a1, a2, 1, 1, "sqlite_master");
      result = v13;
    }
  }

  v14 = *(result + 144);
  if (*(result + 148) <= v14)
  {
    result = sub_18194CAFC(result, 113, 0, 1, a2, 5, v11, v12);
    if (a1[14])
    {
      return result;
    }
  }

  else
  {
    *(result + 144) = v14 + 1;
    v15 = *(result + 136) + 40 * v14;
    *v15 = 64881;
    *(v15 + 4) = 0x100000000;
    *(v15 + 12) = a2;
    *(v15 + 16) = 5;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    if (a1[14])
    {
      return result;
    }
  }

  a1[14] = 1;
  return result;
}

uint64_t sub_18195D514(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 8);
  v5 = sub_181929E8C(a1, v3 + 1, 1565185748);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  memcpy(v5, v2, v3);
  *(v6 + v3) = 0;
  v7 = *v6;
  if (byte_181A204C8[*v6] < 0)
  {
    v8 = 0;
    if (v7 == 91)
    {
      v7 = 93;
    }

    for (i = 1; ; ++i)
    {
      v10 = i;
      v11 = *(v6 + i);
      if (v11 == v7)
      {
        ++i;
        LOBYTE(v11) = v7;
        if (*(v6 + v10 + 1) != v7)
        {
          break;
        }
      }

      *(v6 + v8++) = v11;
    }

    *(v6 + v8) = 0;
  }

  v12 = *(a1 + 40);
  v13 = (v12 - 1);
  if (v12 >= 1)
  {
    v14 = (*(a1 + 32) + 32 * v13);
    while (1)
    {
      v15 = *v14;
      if (*v14)
      {
        break;
      }

LABEL_21:
      if (!v13)
      {
        v18 = "main";
        for (j = v6; ; ++j)
        {
          if (*v18 == *j)
          {
            if (!*v18)
            {
              v13 = 0;
              goto LABEL_31;
            }
          }

          else if (byte_181A20298[*v18] != byte_181A20298[*j])
          {
            break;
          }

          ++v18;
        }
      }

      v14 -= 4;
      v17 = v13 <= 0;
      v13 = (v13 - 1);
      if (v17)
      {
        v13 = 0xFFFFFFFFLL;
        goto LABEL_31;
      }
    }

    for (k = v6; ; ++k)
    {
      if (*v15 == *k)
      {
        if (!*v15)
        {
          break;
        }
      }

      else if (byte_181A20298[*v15] != byte_181A20298[*k])
      {
        goto LABEL_21;
      }

      ++v15;
    }
  }

LABEL_31:
  sub_181929C84(a1, v6);
  return v13;
}

uint64_t sub_18195D6EC(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(a2 + 63) != 1)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *a2 ? strlen(*a2) & 0x3FFFFFFF : 0;
  if (sqlite3_strnicmp(a3, v6, v7))
  {
    return 0;
  }

  v8 = &a3[v7];
  if (*v8 != 95)
  {
    return 0;
  }

  v9 = sub_1819493D0((a1 + 568), **(a2 + 72));
  if (!v9)
  {
    return 0;
  }

  if (**v9 < 3)
  {
    return 0;
  }

  v10 = *(*v9 + 184);
  if (!v10)
  {
    return 0;
  }

  return v10(v8 + 1);
}

uint64_t sub_18195D7C8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[2];
  if ((*(*a1 + 198) & 2) == 0)
  {
    v6 = *(a2 + 54);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(a2 + 8) + v7;
        if ((*(v9 + 14) & 1) != 0 && (*(v9 + 8) & 0xF) == 0)
        {
          *(v9 + 8) |= 2u;
          LOWORD(v6) = *(a2 + 54);
        }

        ++v8;
        v7 += 16;
      }

      while (v8 < v6);
    }

    *(a2 + 48) |= 0x800u;
  }

  v10 = *(a1 + 62);
  if (v10)
  {
    if (*(*v5 + 103))
    {
      v11 = &byte_1EA831A58;
    }

    else
    {
      v11 = (v5[17] + 40 * v10);
    }

    *(v11 + 3) = 2;
  }

  v13 = a2 + 52;
  v12 = *(a2 + 52);
  if (v12 < 0)
  {
    for (i = *(a2 + 16); i; i = *(i + 40))
    {
      if ((*(i + 99) & 3) == 2)
      {
        break;
      }
    }

    v19 = *(i + 94);
    if (v19 < 2)
    {
      LOWORD(v22) = 1;
LABEL_39:
      *(i + 94) = v22;
      goto LABEL_40;
    }

    v20 = *(i + 8);
    v21 = 1;
    v22 = 1;
LABEL_24:
    if (v22 < 1)
    {
LABEL_22:
      *(*(i + 64) + 8 * v22) = *(*(i + 64) + 8 * v21);
      *(*(i + 56) + v22) = *(*(i + 56) + v21);
      v20 = *(i + 8);
      *(v20 + 2 * v22++) = *(v20 + 2 * v21);
      v19 = *(i + 94);
      goto LABEL_23;
    }

    v23 = 0;
    while (*(v20 + 2 * v23) != *(v20 + 2 * v21))
    {
LABEL_26:
      if (++v23 == v22)
      {
        goto LABEL_22;
      }
    }

    v24 = *(i + 64);
    v25 = *(v24 + 8 * v23);
    for (j = *(v24 + 8 * v21); ; ++j)
    {
      if (*v25 == *j)
      {
        if (!*v25)
        {
          --*(i + 96);
LABEL_23:
          if (++v21 >= v19)
          {
            goto LABEL_39;
          }

          goto LABEL_24;
        }
      }

      else if (byte_181A20298[*v25] != byte_181A20298[*j])
      {
        goto LABEL_26;
      }

      ++v25;
    }
  }

  v14 = *(a2 + 8);
  v15 = 16 * v12;
  v16 = *(v14 + v15);
  if (v16)
  {
    LODWORD(v17) = strlen(*(v14 + v15)) & 0x3FFFFFFF;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v27 = sub_181929E8C(v4, (v17 + 81), 0x1032040B79D87BDLL);
  v28 = v27;
  if (v27)
  {
    *(v27 + 48) = 0u;
    *(v27 + 64) = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    *v27 = 0u;
    *v27 = 60;
    *(v27 + 52) = -1;
    v29 = v27 + 80;
    *(v27 + 8) = v27 + 80;
    if (v17)
    {
      v17 = v17;
      memcpy((v27 + 80), v16, v17);
    }

    else
    {
      v17 = 0;
    }

    *(v29 + v17) = 0;
    *(v28 + 40) = 1;
  }

  result = sub_18197FD9C(*a1, v28);
  if (!result)
  {
    goto LABEL_128;
  }

  if (*(a1 + 302) >= 2u)
  {
    v35 = a1[51];
    if (v35)
    {
      while (*v35 != v13)
      {
        v35 = v35[3];
        if (!v35)
        {
          goto LABEL_127;
        }
      }

      *v35 = *(result + 8);
    }
  }

LABEL_127:
  *(result + 24) = *(a1 + 300);
  *(a2 + 52) = -1;
  result = sub_1818C8730(a1, 0, 0, 0, result, *(a2 + 62), 0, 0, 0, 0, 2u);
  if (*(a1 + 13))
  {
LABEL_128:
    *(a2 + 48) &= ~0x80u;
    return result;
  }

  for (i = *(a2 + 16); i; i = *(i + 40))
  {
    if ((*(i + 99) & 3) == 2)
    {
      break;
    }
  }

LABEL_40:
  v30 = *(i + 99);
  *(i + 99) = v30 | 0x20;
  if ((*(v4 + 198) & 2) == 0)
  {
    *(i + 99) = v30 | 0x28;
  }

  v31 = *(i + 94);
  *(i + 96) = v31;
  if (v5)
  {
    v32 = *(i + 88);
    if (v32)
    {
      if (*(*v5 + 103))
      {
        v33 = &byte_1EA831A58;
      }

      else
      {
        v33 = (v5[17] + 40 * v32);
      }

      *v33 = 9;
    }
  }

  *(i + 88) = *(a2 + 40);
  for (k = *(a2 + 16); k; k = *(k + 40))
  {
    if ((*(k + 99) & 3) != 2)
    {
      if (!v31)
      {
        goto LABEL_58;
      }

      v37 = 0;
      v38 = 0;
      do
      {
        if (*(k + 94))
        {
          v39 = 0;
          do
          {
            if (*(*(k + 8) + 2 * v39) == *(*(i + 8) + 2 * v37))
            {
              v40 = *(*(k + 64) + 8 * v39);
              for (m = *(*(i + 64) + 8 * v37); ; ++m)
              {
                if (*v40 == *m)
                {
                  if (!*v40)
                  {
                    goto LABEL_64;
                  }
                }

                else if (byte_181A20298[*v40] != byte_181A20298[*m])
                {
                  break;
                }

                ++v40;
              }
            }

            ++v39;
          }

          while (v39 != *(k + 94));
        }

        ++v38;
LABEL_64:
        ++v37;
      }

      while (v37 != v31);
      if (v38)
      {
        result = sub_18195EB28(a1, k, v38 + *(k + 94));
        if (result)
        {
          return result;
        }

        v42 = 0;
        v43 = *(k + 94);
        v44 = v43;
        while (1)
        {
          v45 = *(*(i + 8) + 2 * v42);
          v46 = *(k + 8);
          if (v43)
          {
            for (n = 0; n != v43; ++n)
            {
              if (*(v46 + 2 * n) == v45)
              {
                v48 = *(*(k + 64) + 8 * n);
                for (ii = *(*(i + 64) + 8 * v42); ; ++ii)
                {
                  if (*v48 == *ii)
                  {
                    if (!*v48)
                    {
                      goto LABEL_91;
                    }
                  }

                  else if (byte_181A20298[*v48] != byte_181A20298[*ii])
                  {
                    break;
                  }

                  ++v48;
                }
              }
            }
          }

          *(v46 + 2 * v44) = v45;
          *(*(k + 64) + 8 * v44) = *(*(i + 64) + 8 * v42);
          if (*(*(i + 56) + v42))
          {
            *(k + 99) |= 0x200u;
          }

          ++v44;
LABEL_91:
          if (++v42 == v31)
          {
            break;
          }

          v43 = *(k + 94);
        }
      }

      else
      {
LABEL_58:
        *(k + 96) = *(k + 94);
      }
    }
  }

  v50 = *(a2 + 54);
  if (v50 < 1)
  {
    v52 = 0;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = *(i + 8);
      v54 = v31;
      while (1)
      {
        v55 = __OFSUB__(v54--, 1);
        if (v54 < 0 != v55)
        {
          break;
        }

        v56 = *v53++;
        if (v51 == v56)
        {
          goto LABEL_97;
        }
      }

      if ((*(*(a2 + 8) + 16 * v51 + 14) & 0x20) == 0)
      {
        ++v52;
      }

LABEL_97:
      ++v51;
    }

    while (v51 != v50);
  }

  result = sub_18195EB28(a1, i, v52 + v31);
  if (!result)
  {
    v57 = *(a2 + 54);
    if (v57 >= 1)
    {
      v58 = 0;
      do
      {
        v59 = *(i + 8);
        v60 = v31;
        while (1)
        {
          v55 = __OFSUB__(v60--, 1);
          if (v60 < 0 != v55)
          {
            break;
          }

          v61 = *v59++;
          if (v58 == v61)
          {
            goto LABEL_106;
          }
        }

        if ((*(*(a2 + 8) + 16 * v58 + 14) & 0x20) == 0)
        {
          *(*(i + 8) + 2 * v31) = v58;
          *(*(i + 64) + 8 * v31) = "BINARY";
          LODWORD(v31) = v31 + 1;
          LOWORD(v57) = *(a2 + 54);
        }

LABEL_106:
        ++v58;
      }

      while (v58 < v57);
    }

    v62 = *(i + 96);
    if (*(i + 96))
    {
      v63 = 0;
      v64 = v62 + 1;
      v65 = (*(i + 8) + 2 * v62 - 2);
      do
      {
        v67 = *v65--;
        v66 = v67;
        if ((v67 & 0x8000000000000000) == 0 && v66 <= 0x3E && (*(*(*(i + 24) + 8) + 16 * v66 + 14) & 0x20) == 0)
        {
          v63 |= 1 << v66;
        }

        --v64;
      }

      while (v64 > 1);
      v69 = ~v63;
    }

    else
    {
      v69 = -1;
    }

    *(i + 104) = v69;
  }

  return result;
}

uint64_t sub_18195DE94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  if (a2)
  {
    LODWORD(v20) = 1;
    *(&v20 + 1) = *a2;
    *(&v21 + 1) = a2;
    DWORD1(v22) = -1;
    if (a2[12] == *(*(*a1 + 32) + 56))
    {
      a3 = a3;
    }

    else
    {
      a3 = a3 | 0x40000;
    }
  }

  v16[0] = a1;
  v16[1] = &v20;
  DWORD2(v18) = a3 | 0x10000;
  result = sub_18195ECC4(v16, a4, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    if (a5)
    {
      return sub_18195EDEC(v16, a5, v10, v11, v12, v13, v14, v15);
    }
  }

  return result;
}

uint64_t sub_18195DF70(uint64_t result)
{
  v1 = *(result + 96);
  if (!*(result + 96))
  {
    goto LABEL_18;
  }

  v2 = 0;
  v3 = *(result + 8);
  do
  {
    v6 = *v3++;
    v5 = v6;
    if (v6 < 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(*(*(result + 24) + 8) + 16 * v5 + 10);
    }

    v2 += v4;
    --v1;
  }

  while (v1);
  v7 = (4 * v2);
  if (v7 >= 8)
  {
    v9 = 40;
    if (v7 >= 0x100)
    {
      v10 = v7;
      do
      {
        v9 += 40;
        v7 = v10 >> 4;
        v11 = v10 > 0xFFF;
        v10 >>= 4;
      }

      while (v11);
    }

    if (v7 < 0x10)
    {
      LOBYTE(v8) = v7;
    }

    else
    {
      do
      {
        v9 += 10;
        v8 = v7 >> 1;
        v11 = v7 > 0x1F;
        v7 >>= 1;
      }

      while (v11);
    }

    goto LABEL_17;
  }

  if (v7)
  {
    LOBYTE(v8) = 2 * v7;
    v9 = 30;
LABEL_17:
    LOWORD(v1) = v9 + word_181A27AA2[v8 & 7] - 10;
LABEL_18:
    *(result + 92) = v1;
    return result;
  }

  *(result + 92) = 0;
  return result;
}

uint64_t sub_18195E03C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = *(*a1 + 48);
  *(*a1 + 48) = v7 & 0xFFFFFFFFFFFFFFBBLL | 0x40;
  sub_18195FBC4(a1, a2, 0);
  *(v6 + 48) = v7;
  if (*(a1 + 52))
  {
    return 0;
  }

  do
  {
    v9 = v4;
    v4 = *(v4 + 80);
  }

  while (v4);
  if (v6)
  {
    result = sub_181929E8C(v6, 0x78uLL, 0x10B2040A26A9E65);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_181902484(120, 0x10B2040A26A9E65);
    if (!result)
    {
      return result;
    }
  }

  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 112) = 0;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 64) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 44) = 1;
  *result = 0;
  *(result + 58) = 200;
  v10 = result;
  sub_1819605E4(a1, *(v9 + 32), (result + 54), (result + 8));
  sub_181961164(a1, v10, v9, a3);
  result = v10;
  *(v10 + 52) = -1;
  if (*(v6 + 103))
  {
    if (*(v6 + 824) || (v11 = *(v10 + 44) - 1, (*(v10 + 44) = v11) == 0))
    {
      sub_18194E094(v6, v10);
    }

    return 0;
  }

  return result;
}

void sub_18195E17C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 50))
  {
    if (a3)
    {
      v24 = *(a2 + 56);
      v25 = *(a1 + 36);
      if (*(a1 + 37) <= v25)
      {
        v34 = a2;
        sub_18194C8AC(a1, 95, a3, v24, 0, a6, a7, a8);
        a2 = v34;
      }

      else
      {
        *(a1 + 36) = v25 + 1;
        v26 = a1[17] + 40 * v25;
        *v26 = 95;
        *(v26 + 4) = a3;
        *(v26 + 8) = v24;
        *(v26 + 12) = 0;
        *(v26 + 28) = 0;
        *(v26 + 20) = 0;
        *(v26 + 36) = 0;
      }

      if (!*(*a1 + 103))
      {
        v35 = a1[17] + 40 * *(a1 + 36);
        *(v35 - 39) = -5;
        *(v35 - 24) = a2;
      }
    }

    else
    {
      if (*(*a1 + 103) || (v27 = a1[17] + 40 * *(a1 + 36), *(v27 - 39) = -5, *(v27 - 24) = a2, *(*a1 + 103)))
      {
        v28 = *(a1 + 36);
        v29 = &byte_1EA831A58;
      }

      else
      {
        v28 = *(a1 + 36);
        v29 = (a1[17] + 40 * v28 - 40);
      }

      *v29 = 95;
      v30 = *(v29 + 1);
      v31 = *(v29 + 2);
      v32 = *(v29 + 3);
      if (*(a1 + 37) <= v28)
      {

        sub_18194C8AC(a1, 97, v30, v31, v32, a6, a7, a8);
      }

      else
      {
        *(a1 + 36) = v28 + 1;
        v33 = a1[17] + 40 * v28;
        *v33 = 97;
        *(v33 + 4) = v30;
        *(v33 + 8) = v31;
        *(v33 + 12) = v32;
        *(v33 + 24) = 0;
        *(v33 + 32) = 0;
        *(v33 + 16) = 0;
      }
    }
  }

  else
  {
    v10 = *(a2 + 24);
    if (!v10)
    {
      v11 = a2;
      v12 = sub_181902484(*(a2 + 54) + 1, 0x100004077774924);
      if (!v12)
      {
        v37 = *a1;
        if (!*(v37 + 103) && !*(v37 + 104))
        {
          *(v37 + 103) = 1;
          if (*(v37 + 220) >= 1)
          {
            *(v37 + 424) = 1;
          }

          ++*(v37 + 432);
          *(v37 + 436) = 0;
          v38 = *(v37 + 344);
          if (v38)
          {
            sub_181910730(v38, "out of memory", v13, v14, v15, v16, v17, v18, v50);
            for (i = *(v37 + 344); ; ++*(i + 52))
            {
              *(i + 24) = 7;
              i = *(i + 216);
              if (!i)
              {
                break;
              }
            }
          }
        }

        return;
      }

      v10 = v12;
      v19 = *(v11 + 54);
      if (v19 <= 0)
      {
        v36 = 0;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(v11 + 8) + v20;
          if ((*(v23 + 14) & 0x20) == 0)
          {
            *(v12 + v22++) = *(v23 + 9);
            LOWORD(v19) = *(v11 + 54);
          }

          ++v21;
          v20 += 16;
        }

        while (v21 < v19);
        v36 = v22;
      }

      do
      {
        *(v12 + v36) = 0;
        if (v36 < 1)
        {
          break;
        }

        v40 = *(v12 + v36-- - 1);
      }

      while (v40 < 66);
      *(v11 + 24) = v12;
    }

    v41 = strlen(v10);
    v45 = v41 & 0x3FFFFFFF;
    if ((v41 & 0x3FFFFFFF) == 0)
    {
      return;
    }

    if (a3)
    {
      v46 = *(a1 + 36);
      if (*(a1 + 37) <= v46)
      {
        v46 = sub_18194C8AC(a1, 96, a3, v45, 0, v42, v43, v44);
      }

      else
      {
        *(a1 + 36) = v46 + 1;
        v47 = a1[17] + 40 * v46;
        *v47 = 96;
        *(v47 + 4) = a3;
        *(v47 + 8) = v45;
        *(v47 + 12) = 0;
        *(v47 + 28) = 0;
        *(v47 + 20) = 0;
        *(v47 + 36) = 0;
      }

      if (*(*a1 + 103))
      {
        v48 = *a1;
        goto LABEL_46;
      }

      if (v46 < 0)
      {
        v46 = *(a1 + 36) - 1;
      }

      v49 = a1[17] + 40 * v46;
    }

    else
    {
      v48 = *a1;
      if (*(*a1 + 103))
      {
LABEL_46:

        sub_1818A3B68(v48, v45, v10);
        return;
      }

      v49 = a1[17] + 40 * *(a1 + 36) - 40;
    }

    sub_18194CB90(a1, v49, v10, v45);
  }
}

uint64_t sub_18195E53C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 54);
  if (v4 < 1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 8);
  do
  {
    v8 = 0;
    for (i = *v7; ; ++i)
    {
      if (*i == 34)
      {
        ++v8;
        goto LABEL_5;
      }

      if (!*i)
      {
        break;
      }

LABEL_5:
      ++v8;
    }

    v5 += v8 + 7;
    ++v6;
    v7 += 2;
  }

  while (v6 != v4);
LABEL_11:
  v10 = 0;
  for (j = *a2; ; ++j)
  {
    if (*j == 34)
    {
      ++v10;
      goto LABEL_13;
    }

    if (!*j)
    {
      break;
    }

LABEL_13:
    ++v10;
  }

  v12 = v5 + v10 + 2;
  if (v12 >= 50)
  {
    v13 = ",\n  ";
  }

  else
  {
    v13 = ",";
  }

  if (v12 >= 50)
  {
    v14 = "\n)";
  }

  else
  {
    v14 = ")";
  }

  v15 = sub_181902484(v12 + 6 * *(a2 + 54) + 35, 2015951396);
  if (v15)
  {
    v22 = v15;
    v40 = v14;
    qmemcpy(v15, "CREATE TABLE ", 13);
    v42 = 13;
    sub_181961D08(v15, &v42, *a2);
    v23 = v42 + 1;
    *(v22 + v42) = 40;
    v41 = v12;
    if (*(a2 + 54) >= 1)
    {
      v24 = *(a2 + 8);
      v25 = v12 >= 50 ? "\n  " : &byte_181A2878D;
      v26 = v12 >= 50 ? 3 : 0;
      memcpy((v22 + v23), v25, v26);
      v42 = v23 + v26;
      sub_181961D08(v22, &v42, *v24);
      v27 = strlen(*(&off_1E6A27A98 + *(v24 + 9) - 65)) & 0x3FFFFFFF;
      v28 = v42;
      memcpy((v22 + v42), *(&off_1E6A27A98 + *(v24 + 9) - 65), v27);
      LODWORD(v23) = v27 + v28;
      if (*(a2 + 54) >= 2)
      {
        if (v12 < 50)
        {
          v29 = 1;
        }

        else
        {
          v29 = 4;
        }

        v30 = (v24 + 25);
        v31 = 1;
        do
        {
          memcpy((v22 + v23), v13, v29);
          v42 = v23 + v29;
          sub_181961D08(v22, &v42, *(v30 - 9));
          v32 = strlen(*(&off_1E6A27A98 + *v30 - 65)) & 0x3FFFFFFF;
          v33 = v42;
          memcpy((v22 + v42), *(&off_1E6A27A98 + *v30 - 65), v32);
          LODWORD(v23) = v32 + v33;
          v42 = v32 + v33;
          ++v31;
          v30 += 16;
        }

        while (v31 < *(a2 + 54));
      }
    }

    if (v41 < 50)
    {
      v34 = 2;
    }

    else
    {
      v34 = 3;
    }

    memcpy((v22 + v23), v40, v34);
  }

  else
  {
    if (*(a1 + 103) || *(a1 + 104))
    {
      return 0;
    }

    *(a1 + 103) = 1;
    if (*(a1 + 220) >= 1)
    {
      *(a1 + 424) = 1;
    }

    ++*(a1 + 432);
    *(a1 + 436) = 0;
    v36 = *(a1 + 344);
    if (!v36)
    {
      return 0;
    }

    sub_181910730(v36, "out of memory", v16, v17, v18, v19, v20, v21, v39);
    v37 = *(a1 + 344);
    *(v37 + 24) = 7;
    v38 = *(v37 + 216);
    if (!v38)
    {
      return 0;
    }

    else
    {
      v22 = 0;
      do
      {
        ++*(v38 + 52);
        *(v38 + 24) = 7;
        v38 = *(v38 + 216);
      }

      while (v38);
    }
  }

  return v22;
}

uint64_t sub_18195E878(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  result = a1[2];
  v10 = (**(*(v8 + 32) + 32 * a2 + 24) + 1);
  v11 = *(result + 144);
  if (*(result + 148) <= v11)
  {
    return sub_18194C8AC(result, 100, a2, 1, v10, a6, a7, a8);
  }

  *(result + 144) = v11 + 1;
  v12 = *(result + 136) + 40 * v11;
  *v12 = 100;
  *(v12 + 4) = a2;
  *(v12 + 8) = 1;
  *(v12 + 12) = v10;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = 0;
  return result;
}

uint64_t sub_18195E8E8(uint64_t a1, unint64_t a2, char *__s, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 144);
  if (*(a1 + 148) <= result)
  {
    result = sub_18194C8AC(a1, 149, a2, 0, 0, a6, a7, a8);
  }

  else
  {
    *(a1 + 144) = result + 1;
    v12 = *(a1 + 136) + 40 * result;
    *v12 = 149;
    *(v12 + 4) = a2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
  }

  if (*(*a1 + 103))
  {
    if (__s)
    {
      result = sub_181939EC8(*a1, __s);
    }
  }

  else
  {
    if ((result & 0x80000000) != 0)
    {
      result = (*(a1 + 144) - 1);
    }

    v13 = *(a1 + 136) + 40 * result;
    if (*(v13 + 1))
    {
      result = sub_18194CB90(a1, v13, __s, 0xFFFFFFFA);
    }

    else if (__s)
    {
      *(v13 + 16) = __s;
      *(v13 + 1) = -6;
    }
  }

  v14 = *(a1 + 144);
  if (v14 >= 1)
  {
    *(*(a1 + 136) + 40 * v14 - 38) = a4;
  }

  v15 = *a1;
  v16 = *(*a1 + 40);
  if (v16 >= 1)
  {
    v17 = *(a1 + 272);
    v18 = v17 | 1;
    if (*(*(*(v15 + 32) + 8) + 17))
    {
      *(a1 + 276) |= 1u;
    }

    if (v16 != 1)
    {
      v18 = v17 | 3;
      if (v16 != 2)
      {
        v20 = *(v15 + 32) + 72;
        for (i = 2; i != v16; ++i)
        {
          v22 = 1 << i;
          if (*(*v20 + 17))
          {
            *(a1 + 276) |= v22;
          }

          v18 |= v22;
          v20 += 32;
        }
      }
    }

    *(a1 + 272) = v18;
  }

  v19 = *(a1 + 24);
  if (*(v19 + 152))
  {
    v19 = *(v19 + 152);
  }

  *(v19 + 33) = 1;
  return result;
}

uint64_t sub_18195EA98(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      if (*(*(a1 + 8) + 2 * i) == *(*(a3 + 8) + 2 * a4))
      {
        v5 = *(*(a1 + 64) + 8 * i);
        for (j = *(*(a3 + 64) + 8 * a4); ; ++j)
        {
          if (*v5 == *j)
          {
            if (!*v5)
            {
              return 1;
            }
          }

          else if (byte_181A20298[*v5] != byte_181A20298[*j])
          {
            break;
          }

          ++v5;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_18195EB28(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 96) >= a3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = 13 * a3;
  if (v5)
  {
    v7 = sub_181929E8C(v5, 13 * a3, 796654986);
    if (v7)
    {
LABEL_4:
      v8 = v7;
      bzero(v7, v6);
      memcpy(v8, *(a2 + 64), 8 * *(a2 + 96));
      *(a2 + 64) = v8;
      v9 = &v8[8 * a3];
      memcpy(v9, *(a2 + 16), 2 * *(a2 + 94) + 2);
      *(a2 + 16) = v9;
      v10 = &v9[2 * a3];
      memcpy(v10, *(a2 + 8), 2 * *(a2 + 96));
      *(a2 + 8) = v10;
      v11 = &v10[2 * a3];
      memcpy(v11, *(a2 + 56), *(a2 + 96));
      result = 0;
      *(a2 + 56) = v11;
      *(a2 + 96) = a3;
      *(a2 + 99) |= 0x10u;
      return result;
    }
  }

  else
  {
    v7 = sub_181902484(13 * a3, 796654986);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  return 7;
}

uint64_t sub_18195EC48(uint64_t result)
{
  v1 = *(result + 96);
  if (*(result + 96))
  {
    v2 = 0;
    v3 = v1 + 1;
    v4 = (*(result + 8) + 2 * v1 - 2);
    do
    {
      v6 = *v4--;
      v5 = v6;
      if ((v6 & 0x8000000000000000) == 0 && v5 <= 0x3E && (*(*(*(result + 24) + 8) + 16 * v5 + 14) & 0x20) == 0)
      {
        v2 |= 1 << v5;
      }

      --v3;
    }

    while (v3 > 1);
    *(result + 104) = ~v2;
  }

  else
  {
    *(result + 104) = -1;
  }

  return result;
}

BOOL sub_18195ECC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  *(a1 + 40) = v8 & 0xF7FF6FEF;
  v9 = *a1;
  v19[0] = *a1;
  v19[1] = sub_1818B1AF8;
  if ((v8 & 0x80000) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1818B15A0;
  }

  v19[2] = v10;
  v19[3] = 0;
  v19[4] = 0;
  v19[5] = a1;
  v11 = v9[77] + *(a2 + 40);
  v9[77] = v11;
  if (*(*v9 + 148) >= v11)
  {
    v13 = v8 & 0x8009010;
    sub_181959BA0(v19, a2);
    v16 = v19[0];
    *(v19[0] + 308) -= *(a2 + 40);
    v18 = *(a1 + 36);
    v17 = *(a1 + 40);
    *(a2 + 4) |= v17 & 0x8010;
    *(a1 + 40) = v17 | v13;
    return v18 > 0 || *(v16 + 52) > 0;
  }

  else
  {
    sub_181910730(v9, "Expression tree is too large (maximum depth %d)", a3, a4, a5, a6, a7, a8, *(*v9 + 148));
    return 1;
  }
}

uint64_t sub_18195EDEC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  v10 = *a1;
  v20[0] = v10;
  v20[1] = sub_1818B1AF8;
  v20[2] = sub_1818B15A0;
  v20[3] = 0;
  v20[5] = a1;
  v11 = *(a1 + 40);
  v12 = v11 & 0x8009010;
  v13 = v11 & 0xF7FF6FEF;
  *(a1 + 40) = v13;
  v14 = *a2;
  if (*a2 < 1)
  {
LABEL_11:
    result = 0;
    *(a1 + 40) = v13 | v12;
    return result;
  }

  v15 = 0;
  v20[4] = 0;
  v16 = 2;
  while (1)
  {
    v17 = *&a2[v16];
    if (!v17)
    {
      goto LABEL_4;
    }

    v18 = v10[77] + *(v17 + 40);
    v10[77] = v18;
    if (*(*v10 + 148) < v18)
    {
      break;
    }

    sub_181959BA0(v20, v17);
    v10 = v20[0];
    *(v20[0] + 308) -= *(v17 + 40);
    v13 = *(a1 + 40);
    if ((v13 & 0x8009010) != 0)
    {
      *(v17 + 4) |= *(a1 + 40) & 0x8010;
      v12 |= v13 & 0x8009010;
      v13 &= 0xF7FF6FEF;
      *(a1 + 40) = v13;
    }

    if (v10[13] > 0)
    {
      return 1;
    }

    v14 = *a2;
LABEL_4:
    ++v15;
    v16 += 6;
    if (v15 >= v14)
    {
      goto LABEL_11;
    }
  }

  sub_181910730(v10, "Expression tree is too large (maximum depth %d)", a3, a4, a5, a6, a7, a8, *(*v10 + 148));
  return 1;
}

void sub_18195EF68(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  sub_181910730(a1, "%s prohibited in %s", a3, a4, a5, a6, a7, a8, a3);
  if (a4)
  {
    *a4 = 122;
  }

  if (v8)
  {
    while (1)
    {
      v11 = *(v8 + 4);
      if ((v11 & 3) == 0)
      {
        v12 = *(v8 + 56);
        if (v12 > 0)
        {
          break;
        }
      }

      v8 = *(v8 + 16);
      if (!v8)
      {
        return;
      }
    }

    if ((v11 & 0x40000000) == 0)
    {
      *(*a1 + 84) = v12;
    }
  }
}

unsigned int sub_18195F02C(unsigned __int8 *a1)
{
  v4 = -1.0;
  if (*a1 == 154 && ((v1 = *(a1 + 1)) == 0 ? (v2 = 0) : (v2 = strlen(*(a1 + 1)) & 0x3FFFFFFF), sub_1818E6334(v1, &v4, v2, 1), v4 <= 1.0))
  {
    return vcvtd_n_s64_f64(v4, 0x1BuLL);
  }

  else
  {
    return -1;
  }
}

void sub_18195F0AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  if (!*a3 || *(a3 + 32))
  {
    sub_1819567A4(a1, a3, a2, a4, a5, a6, a7, a8);
    if (*(a3 + 32) != 90)
    {
      goto LABEL_25;
    }

LABEL_4:
    if (!*(a3 + 40) && !*(a3 + 48) || (v18 = *(a3 + 24)) != 0 && *v18 == 1)
    {
LABEL_25:
      if ((*(a4 + 6) & 1) == 0)
      {
LABEL_29:
        *(a3 + 80) = a4;
        return;
      }

      if (!*(a3 + 72))
      {
        v28 = *a1;
        v29 = *(a4 + 56);
        if (v29 == "row_number")
        {
          v30 = &off_1E6A279B0;
        }

        else if (v29 == "dense_rank")
        {
          v30 = &off_1E6A279C8;
        }

        else if (v29 == "rank")
        {
          v30 = &off_1E6A279E0;
        }

        else if (v29 == "percent_rank")
        {
          v30 = &off_1E6A279F8;
        }

        else if (v29 == "cume_dist")
        {
          v30 = &off_1E6A27A10;
        }

        else if (v29 == "ntile")
        {
          v30 = &off_1E6A27A28;
        }

        else if (v29 == "lead")
        {
          v30 = &off_1E6A27A40;
        }

        else
        {
          if (v29 != "lag")
          {
            goto LABEL_29;
          }

          v30 = &off_1E6A27A58;
        }

        v32 = (a3 + 40);
        v31 = *(a3 + 40);
        if (v31)
        {
          sub_1819439E0(v28, v31);
        }

        v33 = *(a3 + 48);
        if (v33)
        {
          sub_1819439E0(v28, v33);
        }

        *v32 = 0;
        *(a3 + 48) = 0;
        *(a3 + 32) = *(v30 + 2);
        v34 = *(v30 + 12);
        *(a3 + 33) = v34;
        *(a3 + 34) = *(v30 + 4);
        *(a3 + 36) = 0;
        if (v34 == 87)
        {
          v36[0] = "1";
          v36[1] = 1;
          *v32 = sub_1818A8CF0(v28, 156, v36, 0);
        }

        goto LABEL_29;
      }

      v19 = "FILTER clause may only be used with aggregate window functions";
    }

    else
    {
      v19 = "RANGE with offset PRECEDING/FOLLOWING requires one ORDER BY expression";
    }

    sub_181910730(a1, v19, v12, v13, v14, v15, v16, v17, v35);
    goto LABEL_29;
  }

  if (a2)
  {
LABEL_10:
    v20 = *v10;
    for (i = *a3; ; ++i)
    {
      if (*v20 == *i)
      {
        if (!*v20)
        {
          *(a3 + 16) = sub_1818C83A0(*a1, *(v10 + 16), 0);
          v22 = sub_1818C83A0(*a1, *(v10 + 24), 0);
          *(a3 + 24) = v22;
          v23 = *(v10 + 40);
          if (v23)
          {
            v24 = sub_1818C7FEC(*a1, v23, 0, 0);
          }

          else
          {
            v24 = 0;
          }

          *(a3 + 40) = v24;
          v25 = *(v10 + 48);
          if (v25)
          {
            v26 = sub_1818C7FEC(*a1, v25, 0, 0);
          }

          else
          {
            v26 = 0;
          }

          *(a3 + 48) = v26;
          *(a3 + 33) = *(v10 + 33);
          v27 = *(v10 + 32);
          *(a3 + 32) = v27;
          *(a3 + 36) = *(v10 + 36);
          if (v27 == 90)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }
      }

      else if (byte_181A20298[*v20] != byte_181A20298[*i])
      {
        v10 = *(v10 + 64);
        if (v10)
        {
          goto LABEL_10;
        }

        break;
      }

      ++v20;
    }
  }

  sub_181910730(a1, "no such window: %s", a3, a4, a5, a6, a7, a8, *a3);
}

uint64_t sub_18195F3C4(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4, _DWORD *a5)
{
  v6 = *(a1 + 17) & 3;
  if (v6 != 2)
  {
    result = 0;
    if (!a5 || v6 != 3)
    {
      return result;
    }
  }

  v8 = 0;
  v9 = *(a1 + 8);
  v10 = *v9;
  if (*v9)
  {
    do
    {
      if (v10 == 46)
      {
        break;
      }

      v10 = v9[++v8];
    }

    while (v9[v8]);
  }

  if (a4)
  {
    if (v8)
    {
      v11 = v8 + 1;
      v12 = a4;
      v13 = v9;
      while (1)
      {
        v14 = *v13;
        if (!*v13)
        {
          break;
        }

        LODWORD(v14) = byte_181A20298[v14];
        v15 = byte_181A20298[*v12];
        if (v14 != v15)
        {
          goto LABEL_15;
        }

        ++v13;
        ++v12;
        if (--v11 <= 1)
        {
          goto LABEL_16;
        }
      }

      v15 = byte_181A20298[*v12];
LABEL_15:
      if (v14 != v15)
      {
        return 0;
      }
    }

LABEL_16:
    if (a4[v8])
    {
      return 0;
    }
  }

  v16 = 0;
  v17 = &v9[v8 + 1];
  while (v9[v16 + 1 + v8] && v9[v16 + 1 + v8] != 46)
  {
    ++v16;
  }

  if (a3)
  {
    if (!v16)
    {
      goto LABEL_30;
    }

    v18 = v16 + 1;
    v19 = a3;
    while (1)
    {
      v20 = *v17;
      if (!*v17)
      {
        break;
      }

      LODWORD(v20) = byte_181A20298[v20];
      v21 = byte_181A20298[*v19];
      if (v20 != v21)
      {
        goto LABEL_29;
      }

      ++v17;
      ++v19;
      if (--v18 <= 1)
      {
        goto LABEL_30;
      }
    }

    v21 = byte_181A20298[*v19];
LABEL_29:
    if (v20 == v21)
    {
LABEL_30:
      if (a3[v16])
      {
        return 0;
      }

      goto LABEL_32;
    }

    return 0;
  }

LABEL_32:
  if (a2)
  {
    if (v6 != 2)
    {
      v22 = "_ROWID_";
      for (i = a2; ; ++i)
      {
        if (*i == *v22)
        {
          if (!*i)
          {
            goto LABEL_50;
          }
        }

        else if (byte_181A20298[*i] != byte_181A20298[*v22])
        {
          v24 = "ROWID";
          for (j = a2; ; ++j)
          {
            if (*j == *v24)
            {
              if (!*j)
              {
                goto LABEL_50;
              }
            }

            else if (byte_181A20298[*j] != byte_181A20298[*v24])
            {
              for (k = "OID"; ; ++k)
              {
                if (*a2 == *k)
                {
                  if (!*a2)
                  {
                    goto LABEL_50;
                  }
                }

                else if (byte_181A20298[*a2] != byte_181A20298[*k])
                {
                  return 0;
                }

                ++a2;
              }
            }

            ++v24;
          }
        }

        ++v22;
      }
    }

    v27 = &v9[v8 + 2 + v16];
    while (1)
    {
      v29 = *v27++;
      v28 = v29;
      if (v29 == *a2)
      {
        if (!v28)
        {
          return 1;
        }
      }

      else if (byte_181A20298[v28] != byte_181A20298[*a2])
      {
        return 0;
      }

      ++a2;
    }
  }

LABEL_50:
  result = 1;
  if (v6 == 3)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t sub_18195F638(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *result;
  if (!*result)
  {
    v13 = 0;
    v12 = "sqlite_";
    goto LABEL_30;
  }

  if ((v4 & 0xFFFFFFDF) != 0x53)
  {
    v11 = &byte_181A20298[v4];
    v12 = "sqlite_";
    goto LABEL_29;
  }

  v5 = *(result + 1);
  if (!*(result + 1))
  {
    v13 = 0;
    v12 = "qlite_";
    goto LABEL_30;
  }

  if ((v5 & 0xFFFFFFDF) != 0x51)
  {
    v11 = &byte_181A20298[v5];
    v12 = "qlite_";
    goto LABEL_29;
  }

  v6 = *(result + 2);
  if (!*(result + 2))
  {
    v13 = 0;
    v12 = "lite_";
    goto LABEL_30;
  }

  if ((v6 & 0xFFFFFFDF) != 0x4C)
  {
    v11 = &byte_181A20298[v6];
    v12 = "lite_";
    goto LABEL_29;
  }

  v7 = *(result + 3);
  if (!*(result + 3))
  {
    v13 = 0;
    v12 = "ite_";
    goto LABEL_30;
  }

  if ((v7 & 0xFFFFFFDF) != 0x49)
  {
    v11 = &byte_181A20298[v7];
    v12 = "ite_";
    goto LABEL_29;
  }

  v8 = *(result + 4);
  if (!*(result + 4))
  {
    v13 = 0;
    v12 = "te_";
    goto LABEL_30;
  }

  if ((v8 & 0xFFFFFFDF) != 0x54)
  {
    v11 = &byte_181A20298[v8];
    v12 = "te_";
    goto LABEL_29;
  }

  v9 = *(result + 5);
  if (!*(result + 5))
  {
    v13 = 0;
    v12 = "e_";
    goto LABEL_30;
  }

  if ((v9 & 0xFFFFFFDF) != 0x45)
  {
    v11 = &byte_181A20298[v9];
    v12 = "e_";
    goto LABEL_29;
  }

  v10 = *(result + 6);
  if (!*(result + 6))
  {
    v13 = 0;
    v12 = "_";
LABEL_30:
    if (v13 != byte_181A20298[*v12])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v10 != 95)
  {
    v11 = &byte_181A20298[v10];
    v12 = "_";
LABEL_29:
    v13 = *v11;
    goto LABEL_30;
  }

LABEL_31:
  v15 = strcmp((*a2 + 7), "temp_master");
  v16 = (v3 + 7);
  if (v15)
  {
    for (i = "schema"; ; ++i)
    {
      if (*v16 == *i)
      {
        if (!*v16)
        {
          return 1;
        }
      }

      else if (byte_181A20298[*v16] != byte_181A20298[*i])
      {
        return 0;
      }

      ++v16;
    }
  }

  v18 = "temp_schema";
  for (j = (v3 + 7); *j == *v18; ++j)
  {
    if (!*j)
    {
      return 1;
    }

LABEL_40:
    ++v18;
  }

  if (byte_181A20298[*j] == byte_181A20298[*v18])
  {
    goto LABEL_40;
  }

  if (a3)
  {
    v20 = "master";
    for (k = (v3 + 7); ; ++k)
    {
      if (*k == *v20)
      {
        if (!*k)
        {
          return 1;
        }
      }

      else if (byte_181A20298[*k] != byte_181A20298[*v20])
      {
        for (m = "schema"; ; ++m)
        {
          if (*v16 == *m)
          {
            if (!*v16)
            {
              return 1;
            }
          }

          else if (byte_181A20298[*v16] != byte_181A20298[*m])
          {
            return 0;
          }

          ++v16;
        }
      }

      ++v20;
    }
  }

  return 0;
}

uint64_t sub_18195F910(uint64_t *a1, uint64_t a2, char *__s)
{
  if (__s)
  {
    v6 = strlen(__s) & 0x3FFFFFFF;
    if (v6)
    {
      v7 = sub_181929E8C(*a1, v6 + 81, 0x1032040B79D87BDLL);
      if (v7)
      {
        *(v7 + 48) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 16) = 0u;
        *(v7 + 32) = 0u;
        *v7 = 0u;
        *v7 = 114;
        *(v7 + 52) = -1;
        v8 = v7 + 80;
        *(v7 + 8) = v7 + 80;
        v9 = v7;
        memcpy((v7 + 80), __s, v6);
        *(v8 + v6) = 0;
        *(v9 + 40) = 1;
        *(v9 + 16) = a2;
        *(v9 + 4) |= 0x2200u;
        return v9;
      }
    }
  }

  return a2;
}

uint64_t sub_18195F9E0(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 169)
  {
    a2[2] += *(a1 + 40);
  }

  return 0;
}

uint64_t sub_18195FA04(uint64_t a1, unsigned __int8 *a2)
{
  if ((*a2 | 2) == 0xAA)
  {
    v2 = *(a1 + 40);
    v3 = v2[1];
    if (v3)
    {
      v4 = *v3;
      if (v4 >= 1)
      {
        v5 = (v3 + 9);
        while (1)
        {
          v6 = *v5;
          v5 += 18;
          if (*(a2 + 11) == v6)
          {
            break;
          }

          if (!--v4)
          {
            goto LABEL_7;
          }
        }

        v10 = 1;
        goto LABEL_13;
      }
    }

LABEL_7:
    v7 = v2[2];
    if (v7 < 1)
    {
LABEL_11:
      v10 = 2;
LABEL_13:
      *(a1 + 36) |= v10;
      return 0;
    }

    v8 = v2[3];
    while (1)
    {
      v9 = *v8++;
      if (v9 == *(a2 + 11))
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_11;
      }
    }
  }

  return 0;
}

uint64_t sub_18195FA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *v2;
  if (*v2)
  {
    v4 = *(a1 + 40);
    v6 = v4[2];
    v5 = v4[3];
    v7 = v6 + v3;
    v4[2] = v7;
    v8 = *v4;
    v9 = 4 * v7;
    if (v5)
    {
      if (*(v8 + 512) > v5)
      {
        if (*(v8 + 496) <= v5)
        {
          if (v9 < 0x81)
          {
            goto LABEL_13;
          }
        }

        else if (*(v8 + 504) <= v5 && v9 <= *(v8 + 438))
        {
LABEL_13:
          v4[3] = v5;
          if (v3 >= 1)
          {
            v11 = 0;
            v12 = 9;
            do
            {
              *(v5 + v6 + v11++) = v2[v12];
              v12 += 18;
            }

            while (v11 < *v2);
          }

          return 0;
        }
      }

      v5 = sub_181929F38(v8, v5, v9, 0x100004052888210);
      if (v5)
      {
LABEL_12:
        v3 = *v2;
        goto LABEL_13;
      }
    }

    else
    {
      v5 = sub_181929E8C(v8, 4 * v7, 0x100004052888210);
      if (v5)
      {
        goto LABEL_12;
      }
    }

    v4[2] = 0;
    return 2;
  }

  return 0;
}

uint64_t sub_18195FBA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    *(v2 + 16) = v3 - **(a2 + 40);
  }

  return result;
}

_BYTE *sub_18195FBC4(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (!*(*result + 103) && (*(a2 + 4) & 0x80) == 0)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = result;
    v7 = sub_181960300;
    v4 = result;
    if (result[34])
    {
      *&v8 = sub_181960308;
      sub_1818AEE70(&v6, a2);
    }

    *&v8 = sub_1818AEF70;
    *(&v8 + 1) = sub_181959F6C;
    WORD2(v9) = 0;
    result = sub_1818AEE70(&v6, a2);
    if (!*(v4 + 13))
    {
      v6 = v4;
      v7 = sub_1818B1AF8;
      *(&v8 + 1) = 0;
      *&v9 = 0;
      *&v8 = sub_1818B15A0;
      *(&v9 + 1) = a3;
      result = sub_1818AEE70(&v6, a2);
      if (!*(v4 + 13))
      {
        v9 = 0uLL;
        *&v8 = sub_181961BBC;
        *(&v8 + 1) = sub_1818B4688;
        v6 = v4;
        v7 = sub_181960300;
        return sub_1818AEE70(&v6, a2);
      }
    }
  }

  return result;
}

void sub_18195FD00(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a2[5] & 2) != 0)
  {

    sub_181910730(a1, "all VALUES must have the same number of terms", a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    if ((*a2 + 120) > 2u)
    {
      v10 = "UNION";
    }

    else
    {
      v10 = off_1E6A284D0[(*a2 + 120)];
    }

    sub_181910730(a1, "SELECTs to the left and right of %s do not have the same number of result columns", a3, a4, a5, a6, a7, a8, v10);
  }
}

uint64_t sub_18195FD7C(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2[9];
  if (!v8)
  {
    return 0;
  }

  v9 = a1;
  v10 = *a1;
  v11 = *v8;
  if (v11 > *(*a1 + 144))
  {
    sub_181910730(a1, "too many terms in ORDER BY clause", a3, a4, a5, a6, a7, a8, v60);
    return 1;
  }

  if (v11 >= 1)
  {
    if (v11 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 & 0x7FFFFFFE;
      v14 = (v8 + 49);
      v15 = v13;
      do
      {
        v16 = *v14 & 0xFFFB;
        *(v14 - 12) &= ~4u;
        *v14 = v16;
        v14 += 24;
        v15 -= 2;
      }

      while (v15);
      if (v13 == v11)
      {
        goto LABEL_13;
      }
    }

    v17 = (&v8[6 * v13 + 6] + 1);
    v18 = v11 - v13;
    do
    {
      *v17 &= ~4u;
      v17 += 12;
      --v18;
    }

    while (v18);
  }

LABEL_13:
  a2[11] = 0;
  v19 = a2[10];
  if (v19)
  {
    do
    {
      v20 = v19;
      v19[11] = a2;
      v19 = v19[10];
      a2 = v20;
    }

    while (v19);
  }

  else
  {
    v20 = a2;
  }

  v63 = v10;
LABEL_22:
  if (v11 < 1)
  {
    return 0;
  }

  v65 = 0;
  v22 = 0;
  v66 = v20[4];
  v23 = v8 + 2;
  while (1)
  {
    v67 = -1;
    if ((*(v23 + 17) & 4) == 0)
    {
      v24 = *v23;
      if (*v23)
      {
        break;
      }
    }

LABEL_26:
    ++v22;
    v23 += 6;
    v11 = *v8;
    if (v22 >= v11)
    {
      v20 = v20[11];
      if (v20)
      {
        v21 = v65 == 0;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        if (v11 >= 1)
        {
          v57 = (v8 + 25);
          v58 = 1;
          result = 0;
          while (1)
          {
            v59 = *v57;
            v57 += 12;
            if ((v59 & 4) == 0)
            {
              break;
            }

            ++v58;
            if (!--v11)
            {
              return result;
            }
          }

          sub_181910730(v9, "%r ORDER BY term does not match any column in the result set", a3, a4, a5, a6, a7, a8, v58);
          return 1;
        }

        return 0;
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v25 = *(v24 + 4);
    if ((v25 & 0x82000) == 0)
    {
      break;
    }

    if ((v25 & 0x80000) != 0)
    {
      v24 = *(*(v24 + 32) + 8);
      if (!v24)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (*v24 != 114)
      {
        break;
      }

      v24 = *(v24 + 16);
      if (!v24)
      {
        goto LABEL_26;
      }
    }
  }

  if (sub_18195A9F8(v24, &v67, 0))
  {
    v26 = v67;
    if (v67 >= 1 && v67 <= *v66)
    {
      goto LABEL_61;
    }

    sub_181910730(v9, "%r %s BY term out of range - should be between 1 and %d", a3, a4, a5, a6, a7, a8, v22 + 1);
    while (1)
    {
      v55 = *(v24 + 4);
      if ((v55 & 3) == 0)
      {
        v56 = *(v24 + 56);
        if (v56 > 0)
        {
          break;
        }
      }

      v24 = *(v24 + 16);
      if (!v24)
      {
        return 1;
      }
    }

    if ((v55 & 0x40000000) == 0)
    {
      *(*v9 + 84) = v56;
    }

    return 1;
  }

  if (*v24 != 60 || (v28 = *v66, v28 < 1))
  {
LABEL_57:
    v34 = sub_1818C7FEC(v10, v24, 0, 0);
    v35 = v34;
    v26 = 0;
    if (*(v10 + 103))
    {
      if (!v34)
      {
LABEL_60:
        if (v26 >= 1)
        {
          goto LABEL_61;
        }

LABEL_56:
        v65 = 1;
        goto LABEL_26;
      }

LABEL_59:
      sub_1819439E0(v10, v35);
      goto LABEL_60;
    }

    v40 = v20[4];
    v72 = 0u;
    v71 = 0u;
    v41 = v20[5];
    v68 = v9;
    v69 = v41;
    v70 = v40;
    LODWORD(v72) = 524417;
    v42 = *v9;
    v43 = *(v42 + 107);
    *(v42 + 107) = 1;
    v44 = sub_18195ECC4(&v68, v34, a3, a4, a5, a6, a7, a8);
    *(v42 + 107) = v43;
    if (v44 || *v40 < 1)
    {
LABEL_67:
      v26 = 0;
      v67 = 0;
    }

    else
    {
      v45 = 0;
      v46 = 2;
      while (sub_181959260(0, *&v40[v46], v35, 0xFFFFFFFFLL) >= 2)
      {
        ++v45;
        v46 += 6;
        if (v45 >= *v40)
        {
          goto LABEL_67;
        }
      }

      v26 = v45 + 1;
      v67 = v45 + 1;
      v9 = a1;
      if (a1[302] <= 1u)
      {
LABEL_69:
        v10 = v63;
        if (!v35)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      v47 = v20[4];
      v72 = 0u;
      v71 = 0u;
      v48 = v20[5];
      v68 = a1;
      v69 = v48;
      v70 = v47;
      LODWORD(v72) = 524417;
      v49 = *a1;
      v61 = *(*a1 + 107);
      *(*a1 + 107) = 1;
      v50 = sub_18195ECC4(&v68, v24, a3, a4, a5, a6, a7, a8);
      *(v49 + 107) = v61;
      if (!v50)
      {
        v51 = v47;
        if (*v47 >= 1)
        {
          v52 = 0;
          v53 = 2;
          v62 = v51;
          do
          {
            v54 = sub_181959260(0, *&v51[v53], v24, 0xFFFFFFFFLL);
            v51 = v62;
            if (v54 < 2)
            {
              break;
            }

            ++v52;
            v53 += 6;
          }

          while (v52 < *v62);
        }
      }
    }

    v9 = a1;
    goto LABEL_69;
  }

  v29 = 0;
  v30 = *(v24 + 8);
  while (1)
  {
    v31 = &v66[6 * v29 + 2];
    if ((*(v31 + 17) & 3) == 0)
    {
      v32 = *(v31 + 8);
      if (v32)
      {
        if (v30)
        {
          for (i = *(v24 + 8); ; ++i)
          {
            if (*v32 == *i)
            {
              if (!*v32)
              {
                goto LABEL_55;
              }
            }

            else if (byte_181A20298[*v32] != byte_181A20298[*i])
            {
              goto LABEL_46;
            }

            ++v32;
          }
        }

        goto LABEL_46;
      }

      if (!v30)
      {
        break;
      }
    }

LABEL_46:
    if (++v29 == v28)
    {
      goto LABEL_57;
    }
  }

LABEL_55:
  v26 = v29 + 1;
  if (v29 + 1 < 1)
  {
    goto LABEL_56;
  }

LABEL_61:
  if (v9[302] > 1u)
  {
LABEL_25:
    *(v23 + 17) |= 4u;
    goto LABEL_26;
  }

  v68 = 0;
  v69 = 0;
  v36 = sub_1818A8CF0(v10, 156, &v68, 0);
  if (v36)
  {
    *(v36 + 4) |= 0x800u;
    *(v36 + 8) = v26;
    v37 = *v23;
    v38 = v23;
    if (*v23 != v24)
    {
      do
      {
        v39 = v37;
        v37 = *(v37 + 16);
      }

      while (*v37 == 114);
      v38 = (v39 + 16);
    }

    *v38 = v36;
    sub_1819439E0(v10, v24);
    *(v23 + 10) = v26;
    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_181960308(uint64_t **a1, unsigned __int8 *a2)
{
  v2 = a2 + 80;
  if (*(a2 + 10))
  {
    v3 = *(a2 + 9);
    if (v3)
    {
      v4 = a2;
      while (1)
      {
        v5 = *v4;
        if (v5 != 139 && v5 != 136)
        {
          break;
        }

        v4 = *(v4 + 10);
        if (!v4)
        {
          return 0;
        }
      }

      if (!*(v3 + 14))
      {
        v7 = *v3 + 1;
        v8 = &v3[6 * *v3 - 4];
        do
        {
          if (--v7 < 1)
          {
            return 0;
          }

          v9 = *v8;
          v8 -= 6;
        }

        while ((*(v9 + 5) & 2) == 0);
        v11 = *a1;
        v12 = **a1;
        v13 = sub_18190C56C(v12, 0x80uLL, 0x102004058EEC421);
        if (v13)
        {
          v15 = v13;
          v25[0] = 0;
          v25[1] = 0;
          v16 = sub_1818A8FB4(v11, 0, 0, 0, v25, v13, 0, v14);
          if (!*(v11 + 13))
          {
            v17 = *a2;
            v18 = *(a2 + 1);
            v19 = *(a2 + 3);
            v15[2] = *(a2 + 2);
            v15[3] = v19;
            *v15 = v17;
            v15[1] = v18;
            v20 = *(a2 + 4);
            v21 = *(a2 + 5);
            v22 = *(a2 + 7);
            v15[6] = *(a2 + 6);
            v15[7] = v22;
            v15[4] = v20;
            v15[5] = v21;
            *(a2 + 5) = v16;
            v26[0] = 0;
            v26[1] = 0;
            v23 = sub_1818A8CF0(v12, 180, v26, 0);
            v24 = sub_18197FD9C(*v11, v23);
            result = 0;
            *(a2 + 4) = v24;
            *a2 = -117;
            *(a2 + 6) = 0;
            *(v15 + 7) = 0;
            *(v15 + 8) = 0;
            *(v15 + 9) = 0;
            *(a2 + 13) = 0;
            *(a2 + 15) = 0;
            *v2 = 0;
            v2[1] = 0;
            *(a2 + 1) = *(a2 + 1) & 0xFFFEFEFF | 0x10000;
            *(*(v15 + 10) + 88) = v15;
            *(v15 + 12) = 0;
            return result;
          }

          sub_1818BB5B0(v12, v16);
        }

        return 2;
      }
    }
  }

  return 0;
}

uint64_t sub_1819604B0(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 27))
  {
    v9 = *(a3 + 64);
    v10 = *(*a1 + 32);
    if (v9)
    {
      v11 = (v10 + 24);
      v12 = 0xFFFFFFFF00000000;
      do
      {
        v13 = *v11;
        v11 += 4;
        v12 += 0x100000000;
      }

      while (v13 != v9);
      v14 = v12 >> 32;
    }

    else
    {
      v14 = -32768;
    }

    v8 = (v10 + 32 * v14);
  }

  else
  {
    v8 = (a3 + 64);
  }

  return sub_1818CA520(a1, a2, *a3, *v8, a5, a6, a7, a8);
}

uint64_t sub_181960508(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 27);
  if ((v7 & 1) == 0)
  {
    v8 = *(a2 + 64);
    if (v8)
    {
      v9 = a4;
      sub_181929C84(*a1, v8);
      a4 = v9;
      *(a2 + 64) = 0;
    }

    if (!a4)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = sub_1818CB220(*a1, a3, 0);
    a3 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  *(a2 + 64) = 0;
  *(a2 + 27) = v7 & 0xFE;
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_8:
  v11 = sub_181929E8C(*a1, 0x18uLL, 0x10200405AF6BDC9);
  *(a2 + 64) = v11;
  if (v11)
  {
    *(a2 + 25) |= 4u;
    v11[1] = 0;
    v11[2] = 0;
    *v11 = a3;
    return 1;
  }

  else
  {
    if (a3)
    {
      sub_1818BB408(*a1, a3, 1);
    }

    return 0;
  }
}

void sub_1819605E4(_DWORD *a1, int *a2, _WORD *a3, void *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = *a1;
  __buf = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  if (!a2)
  {
    v16 = 0;
    *a3 = 0;
    *a4 = 0;
    v18 = a1 + 13;
    goto LABEL_107;
  }

  v9 = *a2;
  if (v7)
  {
    v16 = sub_181929E8C(v7, 16 * v9, 0x1010040FDD9F14CLL);
    if (!v16)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v16 = sub_181902484(16 * v9, 0x1010040FDD9F14CLL);
  if (v16)
  {
LABEL_4:
    bzero(v16, 16 * v9);
  }

LABEL_5:
  if (v9 >= 0x7FFF)
  {
    v17 = 0x7FFFLL;
  }

  else
  {
    v17 = v9;
  }

  *v5 = v17;
  *v4 = v16;
  v18 = a1 + 13;
  if (v9 < 1)
  {
LABEL_107:
    v77 = 0;
    v78 = 0;
    v79 = 0;
    if (*v18)
    {
      goto LABEL_108;
    }

    return;
  }

  v72 = v4;
  v73 = v5;
  v19 = 0;
  v71 = v16;
  v75 = v17;
  while (!*v18)
  {
    v20 = &a2[6 * v19 + 2];
    v21 = *(v20 + 8);
    v76 = v20;
    if (!v21 || (*(v20 + 17) & 3) != 0)
    {
      v22 = *v20;
      while (1)
      {
        v23 = *(v22 + 1);
        if ((v23 & 0x82000) == 0)
        {
          break;
        }

        if ((v23 & 0x80000) != 0)
        {
          v22 = *(*(v22 + 4) + 8);
        }

        else
        {
          if (*v22 != 114)
          {
            break;
          }

          v22 = *(v22 + 2);
        }
      }

      while (1)
      {
        v24 = *v22;
        if (v24 != 142)
        {
          break;
        }

        v22 = *(v22 + 3);
      }

      if (v24 == 60)
      {
        v27 = (v22 + 8);
        goto LABEL_30;
      }

      if (v24 != 168)
      {
        goto LABEL_31;
      }

      if ((v22[7] & 3) != 0)
      {
        goto LABEL_31;
      }

      v25 = *(v22 + 9);
      if (!v25)
      {
        goto LABEL_31;
      }

      v26 = *(v22 + 12);
      if ((v26 & 0x80000000) == 0 || (v26 = *(v25 + 52), (v26 & 0x80000000) == 0))
      {
        v27 = (*(v25 + 8) + 16 * v26);
LABEL_30:
        v21 = *v27;
LABEL_31:
        if (!v21)
        {
LABEL_42:
          v30 = sub_1818A8BAC(v7, "column%d", v10, v11, v12, v13, v14, v15, v19 + 1);
          __buf = 0;
          v31 = v75;
          if (v30)
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

        goto LABEL_32;
      }

      v21 = "rowid";
    }

LABEL_32:
    for (i = 0; v21[i] == aTrue[i]; ++i)
    {
      if (!v21[i])
      {
        goto LABEL_42;
      }

LABEL_34:
      ;
    }

    if (byte_181A20298[v21[i]] == byte_181A20298[aTrue[i]])
    {
      goto LABEL_34;
    }

    for (j = 0; v21[j] == aFalse[j]; ++j)
    {
      if (!v21[j])
      {
        goto LABEL_42;
      }

LABEL_39:
      ;
    }

    if (byte_181A20298[v21[j]] == byte_181A20298[aFalse[j]])
    {
      goto LABEL_39;
    }

    v34 = strlen(v21);
    v74 = v34;
    if (v7)
    {
      v30 = sub_181929E8C(v7, v34 + 1, 354097263);
      if (v30)
      {
        goto LABEL_46;
      }

LABEL_104:
      __buf = 0;
      v31 = v75;
LABEL_43:
      v30 = 0;
      v32 = 0;
      *v16 = 0;
      LOBYTE(v33) = 1;
      goto LABEL_91;
    }

    v30 = sub_181902484(v34 + 1, 354097263);
    if (!v30)
    {
      goto LABEL_104;
    }

LABEL_46:
    memcpy(v30, v21, v74 + 1);
    __buf = 0;
    v31 = v75;
LABEL_48:
    v35 = *v30;
    if (!*v30)
    {
      v36 = 0;
      v39 = v79;
      if (!v79)
      {
        goto LABEL_55;
      }

LABEL_52:
      v40 = (v39 + 16 * (v36 % v77));
      v41 = *v40;
      if (!*v40)
      {
        goto LABEL_66;
      }

LABEL_56:
      v42 = v40 + 2;
      while (1)
      {
        v42 = *v42;
        if (v36 == v42[8])
        {
          break;
        }

LABEL_57:
        if (!--v41)
        {
          goto LABEL_66;
        }
      }

      v43 = *(v42 + 3);
      for (k = v30; ; ++k)
      {
        if (*v43 == *k)
        {
          if (!*v43)
          {
            v45 = *(v42 + 2);
            if (!v45)
            {
              goto LABEL_86;
            }

LABEL_67:
            if ((*(v45 + 17) & 0x80) != 0)
            {
              *(v16 + 7) |= 0x400u;
            }

            v46 = strlen(v30);
            v53 = v46;
            if ((v46 & 0x3FFFFFFF) != 0)
            {
              v54 = v46 & 0x3FFFFFFF;
              while (v54-- > 1)
              {
                v56 = v30[v54];
                if ((v56 - 58) <= 0xFFFFFFFFFFFFFFF5)
                {
                  goto LABEL_74;
                }
              }

              LOBYTE(v54) = 0;
              LODWORD(v56) = *v30;
LABEL_74:
              if (v56 == 58)
              {
                v53 = v54;
              }
            }

            ++__buf;
            v30 = sub_1818A8BAC(v7, "%.*z:%u", v47, v48, v49, v50, v51, v52, v53);
            v57 = *a1;
            if (*(*a1 + 424))
            {
              ++a1[13];
              a1[6] = 9;
            }

            v58 = *(v57 + 544);
            if (v58)
            {
              if (a1[6] == 9)
              {
                goto LABEL_83;
              }

              v59 = a1[32] + 1;
              a1[32] = v59;
              if (v59 >= *(v57 + 560))
              {
                if (v58(*(v57 + 552)))
                {
                  ++a1[13];
                  a1[6] = 9;
                }

LABEL_83:
                a1[32] = 0;
              }
            }

            if (__buf >= 4)
            {
              sqlite3_initialize();
              arc4random_buf(&__buf, 4uLL);
            }

            if (!v30)
            {
              goto LABEL_43;
            }

            goto LABEL_48;
          }
        }

        else if (byte_181A20298[*v43] != byte_181A20298[*k])
        {
          goto LABEL_57;
        }

        ++v43;
      }
    }

    v36 = 0;
    v37 = v30 + 1;
    do
    {
      v36 = -1640531535 * (v36 + (v35 & 0xDF));
      v38 = *v37++;
      v35 = v38;
    }

    while (v38);
    v39 = v79;
    if (v79)
    {
      goto LABEL_52;
    }

LABEL_55:
    v40 = &v77;
    v41 = HIDWORD(v77);
    if (HIDWORD(v77))
    {
      goto LABEL_56;
    }

LABEL_66:
    v45 = qword_1EA831A40;
    if (qword_1EA831A40)
    {
      goto LABEL_67;
    }

LABEL_86:
    *v16 = v30;
    v33 = *v30;
    if (*v30)
    {
      v32 = 0;
      v60 = 1;
      do
      {
        v32 += byte_181A20298[v33];
        v33 = v30[v60++];
      }

      while (v33);
    }

    else
    {
      v32 = 0;
    }

LABEL_91:
    *(v16 + 11) = v32;
    if (*(v76 + 18))
    {
      *(v16 + 7) |= 0x400u;
    }

    if ((v33 & 1) == 0 && sub_18188FAF0(&v77, v30, v76) == v76 && !*(v7 + 103) && !*(v7 + 104))
    {
      *(v7 + 103) = 1;
      if (*(v7 + 220) >= 1)
      {
        *(v7 + 424) = 1;
      }

      ++*(v7 + 432);
      *(v7 + 436) = 0;
      v61 = *(v7 + 344);
      if (v61)
      {
        sub_181910730(v61, "out of memory", v10, v11, v12, v13, v14, v15, v70);
        for (m = *(v7 + 344); ; ++*(m + 52))
        {
          *(m + 24) = 7;
          m = *(m + 216);
          if (!m)
          {
            break;
          }
        }
      }
    }

    ++v19;
    v16 += 2;
    v18 = a1 + 13;
    if (v19 == v31)
    {
      goto LABEL_115;
    }
  }

  LODWORD(v75) = v19;
LABEL_115:
  v63 = v78;
  v64 = v79;
  v78 = 0;
  v16 = v71;
  if (v79)
  {
    v65 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_121;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v64);
    --qword_1ED456A90;
    off_1ED452EB0(v64);
    v64 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v65 = &xmmword_1ED452F28;
LABEL_121:
      (*v65)(v64);
    }
  }

  v79 = 0;
  LODWORD(v77) = 0;
  if (v63)
  {
    while (2)
    {
      v66 = *v63;
      v67 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_124;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v63);
      --qword_1ED456A90;
      off_1ED452EB0(v63);
      v63 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v67 = &xmmword_1ED452F28;
LABEL_124:
        (*v67)(v63);
      }

      v63 = v66;
      if (!v66)
      {
        break;
      }

      continue;
    }
  }

  HIDWORD(v77) = 0;
  v4 = v72;
  v5 = v73;
  if (*v18)
  {
    if (v75)
    {
      v68 = 0;
      do
      {
        v69 = v71[v68];
        if (v69)
        {
          sub_181929C84(v7, v69);
        }

        v68 += 2;
      }

      while (2 * v75 != v68);
    }

LABEL_108:
    if (v16)
    {
      sub_181929C84(v7, v16);
    }

    *v4 = 0;
    *v5 = 0;
  }
}