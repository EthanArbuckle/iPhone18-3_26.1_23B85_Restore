unint64_t sub_195229614(unint64_t result, uint64_t *a2, unsigned int a3, int a4, int a5)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(result + 136);
  v8 = *a2 + 8 * *(a2 + 28);
  v9 = *(v8 + a3);
  *(a2 + 7) = v9 & 0xF;
  v14 = result;
  v15 = *(v5 + 8 * (v9 & 0xF) + 7);
  v16 = a4;
  switch(*(v6 + (v9 >> 4)))
  {
    case 0:
      goto LABEL_68;
    case 1:
      goto LABEL_23;
    case 2:
      v16 = *(a2 + 4);
      goto LABEL_68;
    case 3:
      v24 = *(a2 + 36) + 1;
      goto LABEL_25;
    case 4:
      v24 = *(a2 + 36) + 2;
LABEL_25:
      result = sub_195229AF0(result, *(a2 + 4), a4, v24);
      goto LABEL_68;
    case 5:
      v33 = *(a2 + 5);
      if ((v33 & 0x80000000) == 0)
      {
        result = sub_195228D6C(result, v33, 1);
      }

      *(a2 + 5) = -1;
      if (*(v14 + 432) && (v34 = *(v14 + 436), v34 > *(v14 + 440)))
      {
        v35 = *(a2 + 6);
        if (v35 + 1 < a4)
        {
          v36 = (v35 + v7 + 1);
          v37 = ~v35 + a4;
          do
          {
            *v36 = (*v36 & 0xFE) - 2;
            ++v36;
            --v37;
          }

          while (v37);
          v34 = *(v14 + 436);
        }

        *(v14 + 440) = v34;
        *(a2 + 6) = -1;
      }

      else
      {
        *(a2 + 6) = -1;
        v16 = a4;
        if (*(v8 + 7))
        {
          if (*(a2 + 4) <= 0)
          {
            v16 = a4;
          }

          else
          {
            v16 = *(a2 + 4);
          }
        }
      }

      if (a3 != 5)
      {
        goto LABEL_68;
      }

      result = v14;
      v22 = a4;
      v23 = 1;
      goto LABEL_67;
    case 6:
      if (*(result + 432) >= 1)
      {
        *(result + 436) = *(result + 440);
      }

      a2[2] = -1;
      goto LABEL_57;
    case 7:
      if (a3 == 3 && *(*(result + 128) + a4) == 5 && *(result + 148) != 6)
      {
        v56 = *(a2 + 5);
        if (v56 == -1)
        {
LABEL_57:
          *(a2 + 6) = a5 - 1;
        }

        else
        {
          if ((v56 & 0x80000000) == 0)
          {
            sub_195228D6C(result, v56, 1);
            *(a2 + 5) = -2;
          }

          v52 = v14;
          v53 = a4;
          v54 = 1;
LABEL_59:
          result = sub_195228D6C(v52, v53, v54);
        }
      }

      else if (*(a2 + 5) == -1)
      {
        *(a2 + 5) = a4;
      }

      goto LABEL_68;
    case 8:
      *(a2 + 6) = a5 - 1;
      *(a2 + 4) = -1;
      goto LABEL_68;
    case 9:
      v29 = v7 - 1;
      v30 = a4;
      break;
    case 0xA:
      sub_195228D6C(result, a4, 1);
      v52 = v14;
      v53 = a4;
      v54 = 2;
      goto LABEL_59;
    case 0xB:
      *(result + 436) = *(result + 440);
      if (a3 != 5)
      {
        goto LABEL_68;
      }

      v22 = a4;
      v23 = 4;
LABEL_67:
      result = sub_195228D6C(result, v22, v23);
      *(v14 + 440) = *(v14 + 436);
      goto LABEL_68;
    case 0xC:
      v25 = *(a2 + 4);
      if (v25 < a4)
      {
        v26 = *(a2 + 36) + v15;
        v27 = (v7 + v25);
        v28 = a4 - v25;
        do
        {
          if (*v27 < v26)
          {
            *v27 = v26;
          }

          ++v27;
          --v28;
        }

        while (v28);
      }

      goto LABEL_22;
    case 0xD:
      if (*(a2 + 4) < a4)
      {
        v38 = *(a2 + 36);
        v39 = v38 + 3;
        v40 = a4;
        do
        {
          v41 = v40 - 1;
          v42 = (v7 + v41);
          v43 = *(v7 + v41);
          if (v39 == v43)
          {
            LODWORD(result) = v40 - 2;
            do
            {
              v44 = result;
              v45 = v41;
              *v42 = v43 - 2;
              v46 = *--v42;
              LOBYTE(v43) = v46;
              result = (result - 1);
              LODWORD(v41) = v41 - 1;
            }

            while (v39 == v46);
            v47 = (v44 << 32) + 0x100000000;
            v48 = (v7 + v44);
            do
            {
              v49 = *v48--;
              v47 -= 0x100000000;
              --v45;
            }

            while (v49 == v38);
            v50 = v47 >> 32;
            v43 = *(v7 + (v47 >> 32));
            LODWORD(v41) = v45;
          }

          else
          {
            v50 = v40 - 1;
          }

          if (v38 + 2 == v43)
          {
            v51 = v38;
          }

          else
          {
            v51 = v38 + 1;
          }

          *(v7 + v50) = v51;
          v40 = v41;
        }

        while (v41 > *(a2 + 4));
      }

      goto LABEL_68;
    case 0xE:
      v17 = *(a2 + 4);
      if (v17 < a4)
      {
        v18 = *(a2 + 36) + 1;
        v19 = a4;
        v20 = v7 - 1;
        do
        {
          v21 = *(v20 + v19);
          if (v21 > v18)
          {
            *(v20 + v19) = v21 - 2;
            v17 = *(a2 + 4);
          }

          --v19;
        }

        while (v19 > v17);
      }

      goto LABEL_68;
    default:
      abort();
  }

  while (1)
  {
    v31 = __OFSUB__(v30--, 1);
    if (v30 < 0 != v31)
    {
      break;
    }

    v32 = *(v29 + a4);
    --v29;
    if (v32)
    {
      result = sub_195228D6C(result, v30, 4);
LABEL_22:
      *(v14 + 440) = *(v14 + 436);
      break;
    }
  }

LABEL_23:
  *(a2 + 4) = a4;
LABEL_68:
  if (v15 || v16 < a4)
  {
    v55 = *(a2 + 36) + v15;
    if (v16 >= *(a2 + 8))
    {
      if (v16 < a5)
      {

        return memset((v7 + v16), v55, (~v16 + a5) + 1);
      }
    }

    else
    {

      return sub_195229AF0(v14, v16, a5, v55);
    }
  }

  return result;
}

void *sub_195229AF0(void *result, int a2, int a3, char a4)
{
  if (a2 < a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = result[15];
    v7 = (result[16] + a2);
    v8 = (result[17] + a2);
    v9 = (v6 + 2 * a2);
    v10 = a3 - a2;
    v11 = -1;
    do
    {
      if (v6 && v11 < 0)
      {
        v5 = *v9;
      }

      v12 = &unk_195446206 + (v5 & 0xF);
      v13 = v5 <= 0;
      if (v5 > 0)
      {
        v5 = v5 >> 4;
      }

      else
      {
        v12 = v7;
        v5 = 0;
      }

      if (v13)
      {
        v11 = -1;
      }

      else
      {
        ++v11;
      }

      v14 = *v12;
      v4 -= v14 == 22;
      if (!v4)
      {
        *v8 = a4;
      }

      result = (v14 & 0xFE);
      if (result == 20)
      {
        ++v4;
      }

      ++v7;
      ++v8;
      ++v9;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_195229B90(uint64_t result, int *a2)
{
  if (*a2 <= 0)
  {
    v2 = result;
    utrie2_enum(&off_1E7403570, 0, sub_195229CC8, result);
    for (i = 0; i != 40; ++i)
    {
      result = (v2[2])(*v2, dword_195446628[i] & 0x1FFFFF, (dword_195446628[i] & 0x1FFFFFu) + 1);
    }

    v4 = &byte_1954466C8;
    v5 = 2251;
    v6 = 1;
    v7 = 1568;
    do
    {
      v8 = v6;
      if (v7 < v5)
      {
        v9 = 0;
        v10 = (v5 + ~v7) + 1;
        do
        {
          v12 = *v4++;
          v11 = v12;
          if (v12 != v9)
          {
            result = (v2[1])(*v2, v7);
            v9 = v11;
          }

          v7 = (v7 + 1);
          --v10;
        }

        while (v10);
        if (v9)
        {
          result = (v2[1])(*v2, v5);
        }
      }

      v6 = 0;
      v5 = 69317;
      v7 = 68288;
      v4 = ":<<@@=";
    }

    while ((v8 & 1) != 0);
  }

  return result;
}

uint64_t sub_195229CE8(int a1)
{
  if (a1 > 4102)
  {
    if (a1 != 4103)
    {
      if (a1 == 4117)
      {
        return 2;
      }

      return 0xFFFFFFFFLL;
    }

    return 5;
  }

  else
  {
    if (a1 != 4096)
    {
      if (a1 == 4102)
      {
        return 104;
      }

      return 0xFFFFFFFFLL;
    }

    return 22;
  }
}

uint64_t ubidi_getClass(unsigned int a1)
{
  if (a1 >> 11 <= 0x1A)
  {
    v1 = a1 >> 5;
LABEL_11:
    v3 = (a1 & 0x1F) + 4 * word_195446D78[v1];
    return word_195446D78[v3] & 0x1F;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (a1 >> 5);
    goto LABEL_11;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    v1 = ((a1 >> 5) & 0x3F) + word_195446D78[(a1 >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 3796;
  return word_195446D78[v3] & 0x1F;
}

UBool u_isMirrored_0(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_195446D78[v1];
    return (word_195446D78[v3] >> 12) & 1;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_195446D78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 3796;
  return (word_195446D78[v3] >> 12) & 1;
}

uint64_t sub_195229E9C(uint64_t result, __int16 a2)
{
  v2 = a2 >> 13;
  if (v2 != -4)
  {
    return (v2 + result);
  }

  v3 = 0;
  while (1)
  {
    v4 = dword_195446628[v3];
    if ((v4 & 0x1FFFFF) == result)
    {
      break;
    }

    if ((v4 & 0x1FFFFF) <= result && v3++ != 39)
    {
      continue;
    }

    return result;
  }

  return *(dword_195446628 + ((v4 >> 19) & 0x1FFC)) & 0x1FFFFF;
}

uint64_t sub_195229EF8(unsigned int a1)
{
  if (a1 >> 11 <= 0x1A)
  {
    v1 = a1 >> 5;
LABEL_11:
    v3 = (a1 & 0x1F) + 4 * word_195446D78[v1];
    return (word_195446D78[v3] >> 11) & 1;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (a1 >> 5);
    goto LABEL_11;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    v1 = ((a1 >> 5) & 0x3F) + word_195446D78[(a1 >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 3796;
  return (word_195446D78[v3] >> 11) & 1;
}

uint64_t sub_195229F6C(unsigned int a1)
{
  if (a1 >> 11 <= 0x1A)
  {
    v1 = a1 >> 5;
LABEL_11:
    v3 = (a1 & 0x1F) + 4 * word_195446D78[v1];
    return (word_195446D78[v3] >> 10) & 1;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (a1 >> 5);
    goto LABEL_11;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    v1 = ((a1 >> 5) & 0x3F) + word_195446D78[(a1 >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 3796;
  return (word_195446D78[v3] >> 10) & 1;
}

uint64_t sub_195229FE0(unsigned int a1)
{
  if (a1 >> 11 <= 0x1A)
  {
    v1 = a1 >> 5;
LABEL_11:
    v3 = (a1 & 0x1F) + 4 * word_195446D78[v1];
    return word_195446D78[v3] >> 5;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (a1 >> 5);
    goto LABEL_11;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    v1 = ((a1 >> 5) & 0x3F) + word_195446D78[(a1 >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 3796;
  return word_195446D78[v3] >> 5;
}

uint64_t sub_19522A054(unsigned int a1)
{
  if (a1 - 1568 < 0x2AB)
  {
    v1 = -1568;
    v2 = &byte_1954466C8;
    return v2[a1 + v1];
  }

  if (a1 - 68288 <= 0x404)
  {
    v1 = -68288;
    v2 = ":<<@@=";
    return v2[a1 + v1];
  }

  return 0;
}

uint64_t sub_19522A0A4(unsigned int a1)
{
  if (a1 >> 11 <= 0x1A)
  {
    v1 = a1 >> 5;
LABEL_11:
    v3 = (a1 & 0x1F) + 4 * word_195446D78[v1];
    return HIBYTE(word_195446D78[v3]) & 3;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (a1 >> 5);
    goto LABEL_11;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    v1 = ((a1 >> 5) & 0x3F) + word_195446D78[(a1 >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 3796;
  return HIBYTE(word_195446D78[v3]) & 3;
}

uint64_t ubidi_setLine(uint64_t result, unsigned int a2, signed int a3, uint64_t a4, int *a5)
{
  if (a5 && *a5 <= 0)
  {
    v6 = result;
    if (!result || *result != result)
    {
      v7 = 27;
LABEL_15:
      *a5 = v7;
      return result;
    }

    if ((a2 & 0x80000000) != 0 || (v10 = a3 - a2, a3 <= a2) || *(result + 20) < a3 || !a4 || (Paragraph = ubidi_getParagraph(result, a2, 0, 0, 0, a5), result = ubidi_getParagraph(v6, a3 - 1, 0, 0, 0, a5), Paragraph != result))
    {
      v7 = 1;
      goto LABEL_15;
    }

    v13 = *(v6 + 8) + 2 * a2;
    *a4 = 0;
    *(a4 + 8) = v13;
    *(a4 + 16) = v10;
    *(a4 + 20) = v10;
    *(a4 + 24) = v10;
    if (*(v6 + 158) && **(v6 + 224) <= a2)
    {
      result = sub_195225D90(v6, a2);
    }

    else
    {
      result = *(v6 + 157);
    }

    *(a4 + 157) = result;
    *(a4 + 216) = *(v6 + 216);
    *(a4 + 320) = 0;
    *(a4 + 204) = 0;
    *(a4 + 148) = *(v6 + 148);
    *(a4 + 456) = 0;
    if (*(v6 + 456) >= 1)
    {
      v14 = 0;
      v15 = (*(v6 + 8) + 2 * a2);
      v16 = a2;
      do
      {
        v17 = *v15++;
        v18 = v17 - 8234;
        v19 = v17 - 8294;
        if ((v17 & 0xFFFC) == 0x200C || v18 < 5 || v19 <= 3)
        {
          *(a4 + 456) = ++v14;
        }

        ++v16;
      }

      while (v16 < a3);
      *(a4 + 24) -= v14;
    }

    v22 = *(v6 + 136);
    *(a4 + 128) = *(v6 + 128) + a2;
    *(a4 + 136) = v22 + a2;
    *(a4 + 312) = -1;
    v23 = *(v6 + 200);
    if (v23 == 2)
    {
      result = sub_19522A43C(a4);
      v24 = *(a4 + 212);
      if (v24)
      {
        v25 = *(v22 + a2) & 1;
        if (v24 < v10 && (*(a4 + 157) & 1) != v25)
        {
LABEL_45:
          *(a4 + 200) = 2;
LABEL_49:
          *a4 = v6;
          return result;
        }

        if (v24 != 1)
        {
          v26 = (a2 + v22 + 1);
          v27 = v24 - 1;
          do
          {
            v28 = *v26++;
            if ((v28 & 1) != v25)
            {
              goto LABEL_45;
            }
          }

          while (--v27);
        }
      }

      else
      {
        v25 = *(a4 + 157) & 1;
      }

      *(a4 + 200) = v25;
      v30 = *(a4 + 157);
      if (v25)
      {
        v31 = v30 | 1;
      }

      else
      {
        v31 = (v30 + 1) & 0xFE;
      }

      *(a4 + 157) = v31;
    }

    else
    {
      *(a4 + 200) = v23;
      v29 = *(v6 + 212);
      if (v29 > a2)
      {
        if (v29 >= a3)
        {
          *(a4 + 212) = v10;
        }

        else
        {
          *(a4 + 212) = v29 - a2;
        }

        goto LABEL_49;
      }
    }

    *(a4 + 212) = 0;
    goto LABEL_49;
  }

  return result;
}

uint64_t sub_19522A43C(uint64_t result)
{
  v1 = *(result + 128);
  v2 = *(result + 20);
  if (*(v1 + v2 - 1) != 7 && v2 >= 1)
  {
    v3 = v1 - 1;
    while (((1 << *(v3 + v2)) & 0x7DDB80) != 0)
    {
      v4 = __OFSUB__(v2, 1);
      LODWORD(v2) = v2 - 1;
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
LABEL_11:
        LODWORD(v2) = 0;
        goto LABEL_12;
      }
    }

    while (*(*(result + 136) - 1 + v2) == *(result + 157))
    {
      v4 = __OFSUB__(v2, 1);
      LODWORD(v2) = v2 - 1;
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  *(result + 212) = v2;
  return result;
}

uint64_t ubidi_getLevelAt(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1 == a1)
  {
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  if (a2 < 0 || *v2 != v2)
  {
    return v3;
  }

LABEL_8:
  if (*(a1 + 20) <= a2)
  {
    return 0;
  }

  if (*(a1 + 200) == 2 && *(a1 + 212) > a2)
  {
    return *(*(a1 + 136) + a2);
  }

  if (!*(a1 + 158) || **(a1 + 224) > a2)
  {
    return *(a1 + 157);
  }

  return sub_195225D90(a1, a2);
}

char *ubidi_getLevels(uint64_t a1, int *a2)
{
  if (!a2 || *a2 > 0)
  {
    return 0;
  }

  if (!a1 || (v5 = *a1, *a1 != a1) && (!v5 || *v5 != v5))
  {
    v3 = 0;
    v6 = 27;
LABEL_9:
    *a2 = v6;
    return v3;
  }

  v8 = *(a1 + 20);
  if (v8 <= 0)
  {
    v3 = 0;
    v6 = 1;
    goto LABEL_9;
  }

  v9 = *(a1 + 212);
  if (v8 == v9)
  {
    return *(a1 + 136);
  }

  if (!sub_195225B04((a1 + 72), (a1 + 36), *(a1 + 112), *(a1 + 20)))
  {
    v3 = 0;
    v6 = 7;
    goto LABEL_9;
  }

  v3 = *(a1 + 72);
  if (v9 >= 1)
  {
    v10 = *(a1 + 136);
    if (v3 != v10)
    {
      memcpy(*(a1 + 72), v10, v9);
    }
  }

  memset(&v3[v9], *(a1 + 157), v8 - v9);
  *(a1 + 212) = v8;
  *(a1 + 136) = v3;
  return v3;
}

uint64_t ubidi_getLogicalRun(uint64_t result, int a2, int *a3, _BYTE *a4)
{
  v17 = 0;
  if (a2 < 0)
  {
    return result;
  }

  v5 = result;
  if (*(result + 20) <= a2)
  {
    return result;
  }

  result = ubidi_countRuns(result, &v17);
  if (v17 > 0)
  {
    return result;
  }

  v8 = *(v5 + 320);
  if (result < 1)
  {
    v14 = 0;
    v12 = *v8;
    if (a3)
    {
LABEL_15:
      *a3 = v14;
    }
  }

  else
  {
    v9 = 0;
    v10 = result - 1;
    v11 = (v8 + 1);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = *v11 - v9 + (v12 & 0x7FFFFFFF);
      v16 = v14 > a2 && (v12 & 0x7FFFFFFF) <= a2 || v10-- == 0;
      v11 += 3;
      v9 = v13;
    }

    while (!v16);
    if (a3)
    {
      goto LABEL_15;
    }
  }

  if (a4)
  {
    if (*(v5 + 148) == 3)
    {
      result = v12 >> 31;
    }

    else if (*(v5 + 200) == 2 && *(v5 + 212) > a2)
    {
      result = *(*(v5 + 136) + a2);
    }

    else if (*(v5 + 158) && **(v5 + 224) <= a2)
    {
      result = sub_195225D90(v5, a2);
    }

    else
    {
      result = *(v5 + 157);
    }

    *a4 = result;
  }

  return result;
}

uint64_t ubidi_countRuns(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1 || (v4 = *a1, *a1 != a1) && (!v4 || *v4 != v4))
  {
    *a2 = 27;
    return 0xFFFFFFFFLL;
  }

  sub_19522A818(a1);
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  return *(a1 + 312);
}

uint64_t sub_19522A818(uint64_t a1)
{
  if ((*(a1 + 312) & 0x80000000) == 0)
  {
    return 1;
  }

  if (*(a1 + 200) != 2)
  {
    v12 = *(a1 + 157);
    *(a1 + 320) = a1 + 328;
    *(a1 + 312) = 1;
    *(a1 + 328) = v12 << 31;
    *(a1 + 332) = *(a1 + 20);
    goto LABEL_16;
  }

  v3 = *(a1 + 20);
  v4 = *(a1 + 136);
  v5 = *(a1 + 212);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = -2;
    do
    {
      v9 = v4[v6];
      if (v9 != v8)
      {
        ++v7;
      }

      ++v6;
      v8 = v9;
    }

    while (v5 != v6);
    if (v7 != 1 || v3 != v5)
    {
      goto LABEL_35;
    }

    v11 = *v4;
    *(a1 + 320) = a1 + 328;
    *(a1 + 312) = 1;
    *(a1 + 328) = v11 << 31;
    *(a1 + 332) = v3;
LABEL_16:
    *(a1 + 336) = 0;
    goto LABEL_17;
  }

  v7 = 0;
LABEL_35:
  if (v3 <= v5)
  {
    v28 = v7;
  }

  else
  {
    v28 = v7 + 1;
  }

  result = sub_195225B04((a1 + 96), (a1 + 48), *(a1 + 113), 12 * v28);
  if (!result)
  {
    return result;
  }

  v29 = 0;
  LOBYTE(v30) = 0;
  v31 = 0;
  v32 = *(a1 + 96);
  LOBYTE(v33) = 126;
LABEL_40:
  v34 = 0;
  v35 = v4[v31];
  if (v35 >= v33)
  {
    v33 = v33;
  }

  else
  {
    v33 = v4[v31];
  }

  if (v35 <= v30)
  {
    v30 = v30;
  }

  else
  {
    v30 = v4[v31];
  }

  v36 = v31 + 1;
  while (v36 < v5)
  {
    v37 = v4[v36];
    ++v34;
    ++v36;
    if (v37 != v35)
    {
      v38 = v32 + 3 * v29;
      *v38 = v31;
      v38[1] = v34;
      v38[2] = 0;
      ++v29;
      v31 += v34;
      goto LABEL_40;
    }
  }

  v39 = v32 + 12 * v29;
  *v39 = v31;
  *(v39 + 4) = (v34 + 1);
  v40 = v29 + 1;
  if (v3 > v5)
  {
    v41 = v32 + 3 * v40;
    *v41 = v5;
    v41[1] = v3 - v5;
    if (*(a1 + 157) < v33)
    {
      v33 = *(a1 + 157);
    }
  }

  *(a1 + 320) = v32;
  *(a1 + 312) = v28;
  if ((v33 | 1) < v30)
  {
    if (*(a1 + 212) >= *(a1 + 20))
    {
      v42 = 0;
    }

    else
    {
      v42 = -1;
    }

    v43 = v28 - (*(a1 + 212) < *(a1 + 20));
    v44 = v30 - 1;
    if (v33 < v44)
    {
      v45 = *(a1 + 136);
      v46 = v7 + v42 + (v3 > v5) - 1;
      do
      {
        if (v43 >= 1)
        {
          for (i = 0; i < v43; i = -v59)
          {
            v48 = i;
            v49 = v32 + 3 * i;
            v50 = -2 - i;
            v51 = v46 - i;
            v52 = i - 1;
            v53 = v49;
            while (1)
            {
              v54 = *v53;
              v53 += 3;
              if (*(v45 + v54) >= v44)
              {
                break;
              }

              ++v48;
              --v50;
              --v51;
              ++v52;
              v49 = v53;
              if (v48 >= v43)
              {
                goto LABEL_73;
              }
            }

            v55 = v49;
            v56 = 3;
            v57 = v48;
            do
            {
              v58 = v57;
              v59 = v50;
              v60 = v51;
              v61 = v52;
              v62 = v55;
              if (++v57 >= v43)
              {
                break;
              }

              v63 = *(v45 + v49[v56]);
              --v50;
              --v51;
              v56 += 3;
              ++v52;
              v55 += 3;
            }

            while (v63 >= v44);
            if (v48 < v58)
            {
              v64 = 0;
              do
              {
                v65 = &v49[v64];
                v66 = *&v49[v64];
                v79 = v49[v64 + 2];
                v67 = v62[2];
                *v65 = *v62;
                v65[2] = v67;
                *v62 = v66;
                v62[2] = v79;
                ++v48;
                v64 += 3;
                v62 -= 3;
                v26 = v48 < v61--;
              }

              while (v26);
            }

            if (!v60)
            {
              break;
            }
          }
        }

LABEL_73:
        --v44;
      }

      while (v33 < v44);
    }

    if (v33)
    {
      v68 = v43 - (*(a1 + 212) == *(a1 + 20));
      if (v68 >= 1)
      {
        v69 = 0;
        v70 = v68 - 1;
        v71 = (v32 + 12 * v68);
        v72 = v32;
        do
        {
          v73 = *v72;
          v80 = *(v72 + 2);
          v74 = *(v71 + 2);
          *v72 = *v71;
          *(v72 + 2) = v74;
          *v71 = v73;
          *(v71 + 2) = v80;
          ++v69;
          v72 = (v72 + 12);
          v71 = (v71 - 12);
          v26 = v69 < v70--;
        }

        while (v26);
      }
    }
  }

  if (v28 >= 1)
  {
    v75 = 0;
    v76 = v32 + 1;
    v77 = v28;
    do
    {
      v75 += *v76;
      *(v76 - 1) |= v4[*(v76 - 1)] << 31;
      *v76 = v75;
      v76 += 3;
      --v77;
    }

    while (v77);
  }

  if (v40 < v28)
  {
    v78 = *(a1 + 157);
    if (v78)
    {
      v40 = 0;
    }

    *(v32 + 3 * v40) |= v78 << 31;
  }

LABEL_17:
  v13 = *(a1 + 436);
  if (v13 >= 1)
  {
    v14 = *(a1 + 448);
    v15 = &v14[2 * v13];
    do
    {
      v16 = *(a1 + 320) + 12 * sub_19522ADCC(a1, *v14);
      *(v16 + 8) |= v14[1];
      v14 += 2;
    }

    while (v14 < v15);
  }

  if (*(a1 + 456) >= 1)
  {
    v17 = *(a1 + 20);
    if (v17 >= 1)
    {
      v18 = 0;
      v19 = *(a1 + 8);
      v20 = &v19[v17];
      do
      {
        v21 = *v19;
        v22 = v21 & 0xFFFC;
        v23 = v21 - 8234;
        v24 = v21 - 8294;
        v26 = v22 != 8204 && v23 >= 5 && v24 > 3;
        if (!v26)
        {
          v27 = *(a1 + 320) + 12 * sub_19522ADCC(a1, v18);
          --*(v27 + 8);
        }

        ++v19;
        ++v18;
      }

      while (v19 < v20);
    }
  }

  return 1;
}

void *ubidi_getVisualRun(void *result, unsigned int a2, int *a3, int *a4)
{
  if (result)
  {
    v7 = result;
    v8 = *result;
    if ((*result == result || v8 && *v8 == v8) && (sub_19522A818(result), (a2 & 0x80000000) == 0) && *(v7 + 78) > a2)
    {
      v9 = v7[40];
      v10 = (v9 + 12 * a2);
      v11 = *v10;
      if (a3)
      {
        *a3 = v11 & 0x7FFFFFFF;
      }

      if (a4)
      {
        if (a2)
        {
          v12 = *(v9 + 12 * a2 + 4) - *(v10 - 2);
        }

        else
        {
          v12 = *(v9 + 4);
        }

        *a4 = v12;
      }

      return (v11 >> 31);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19522ADCC(uint64_t a1, int a2)
{
  v2 = *(a1 + 312);
  if (v2 < 1)
  {
LABEL_6:
    abort();
  }

  result = 0;
  v5 = 0;
  v6 = (*(a1 + 320) + 4);
  while (1)
  {
    v7 = *v6;
    v8 = *(v6 - 1) & 0x7FFFFFFF;
    if (v8 <= a2 && v7 - v5 + v8 > a2)
    {
      return result;
    }

    v6 += 3;
    ++result;
    v5 = v7;
    if (v2 == result)
    {
      goto LABEL_6;
    }
  }
}

uint64_t ubidi_reorderLogical(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a3 && result && a2 >= 1)
  {
    LOBYTE(v3) = 0;
    LOBYTE(v4) = 126;
    v5 = a2;
    while (1)
    {
      v6 = *(result - 1 + v5);
      if (v6 > 0x7E)
      {
        break;
      }

      --v5;
      if (v6 >= v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = v6;
      }

      if (v6 <= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }

      if ((v5 + 1) <= 1)
      {
        v7 = 0;
        v8 = vdupq_n_s64(a2 - 1);
        v9 = (a3 + 4 * a2 - 8);
        v10 = -4;
        v11 = -3;
        v12 = -1;
        v13 = -2;
        do
        {
          v14 = vdupq_n_s64(v7);
          v15 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v14, xmmword_19544D5F0)));
          if (vuzp1_s16(v15, *v8.i8).u8[0])
          {
            v9[1] = a2 + v12;
          }

          if (vuzp1_s16(v15, *&v8).i8[2])
          {
            *v9 = a2 + v13;
          }

          if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v14, xmmword_19544D5E0)))).i32[1])
          {
            *(v9 - 1) = a2 + v11;
            *(v9 - 2) = a2 + v10;
          }

          v7 += 4;
          v10 -= 4;
          v11 -= 4;
          v12 -= 4;
          v13 -= 4;
          v9 -= 4;
        }

        while (((a2 + 3) & 0xFFFFFFFC) != v7);
        if (v4 != v3 || (v4 & 1) != 0)
        {
          v16 = v4 | 1;
          do
          {
            v17 = 0;
            do
            {
              v18 = v17;
              v19 = -2 * v17;
              v20 = -2 - v17;
              v21 = v17 << 32;
              v22 = a2 - 1 - v17;
              v23 = v17 + 1;
              v24 = v17 - 1;
              v25 = (a3 + 4 * v17);
              while (*(result + v18) < v3)
              {
                ++v18;
                v19 -= 2;
                --v20;
                v21 += 0x100000000;
                --v22;
                ++v23;
                ++v24;
                ++v25;
                if (v18 >= a2)
                {
                  goto LABEL_34;
                }
              }

              do
              {
                v26 = v19;
                v27 = v20;
                v28 = v21;
                v29 = v22;
                if (v23 >= a2)
                {
                  break;
                }

                v30 = *(result + v23);
                --v19;
                --v20;
                v21 += 0x100000000;
                --v22;
                ++v23;
              }

              while (v30 >= v3);
              do
              {
                *v25 = -v26 - *v25;
                ++v25;
                ++v24;
              }

              while (v24 < v28 >> 32);
              if (!v29)
              {
                break;
              }

              v17 = -v27;
            }

            while (v17 < a2);
LABEL_34:
            LOBYTE(v3) = v3 - 1;
          }

          while (v16 <= v3);
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t ubidi_reorderVisual(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a3 && result && a2 >= 1)
  {
    LOBYTE(v3) = 0;
    LOBYTE(v4) = 126;
    v5 = a2;
    while (1)
    {
      v6 = *(result - 1 + v5);
      if (v6 > 0x7E)
      {
        break;
      }

      --v5;
      if (v6 >= v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = v6;
      }

      if (v6 <= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }

      if ((v5 + 1) <= 1)
      {
        v7 = 0;
        v8 = vdupq_n_s64(a2 - 1);
        v9 = (a3 + 4 * a2 - 8);
        v10 = -4;
        v11 = -3;
        v12 = -1;
        v13 = -2;
        do
        {
          v14 = vdupq_n_s64(v7);
          v15 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v14, xmmword_19544D5F0)));
          if (vuzp1_s16(v15, *v8.i8).u8[0])
          {
            v9[1] = a2 + v12;
          }

          if (vuzp1_s16(v15, *&v8).i8[2])
          {
            *v9 = a2 + v13;
          }

          if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v14, xmmword_19544D5E0)))).i32[1])
          {
            *(v9 - 1) = a2 + v11;
            *(v9 - 2) = a2 + v10;
          }

          v7 += 4;
          v10 -= 4;
          v11 -= 4;
          v12 -= 4;
          v13 -= 4;
          v9 -= 4;
        }

        while (((a2 + 3) & 0xFFFFFFFC) != v7);
        if (v4 != v3 || (v4 & 1) != 0)
        {
          v16 = v4 | 1;
          do
          {
            for (i = 0; i < a2; i = v19 + v24 + 2)
            {
              v18 = 0;
              v19 = i;
              v20 = (a3 + 4 * i);
              v21 = v19 - 1;
              v22 = v19;
              while (*(result + v22) < v3)
              {
                ++v22;
                ++v18;
                ++v20;
                ++v21;
                if (v22 >= a2)
                {
                  goto LABEL_36;
                }
              }

              v23 = v20;
              do
              {
                v24 = v18;
                v25 = v23;
                v26 = v21;
                v27 = v19 + v18;
                if (v19 + v18 + 1 >= a2)
                {
                  break;
                }

                ++v18;
                ++v23;
                ++v21;
              }

              while (*(result + 1 + v19 + v24) >= v3);
              if (v22 < v27)
              {
                do
                {
                  v28 = *v20;
                  *v20++ = *v25;
                  *v25-- = v28;
                }

                while (++v22 < v26--);
              }

              if (v19 - a2 + v24 == -1)
              {
                break;
              }
            }

LABEL_36:
            LOBYTE(v3) = v3 - 1;
          }

          while (v16 <= v3);
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t ubidi_getVisualIndex(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1 || (v5 = a2, v6 = *a1, *a1 != a1) && (!v6 || *v6 != v6))
  {
    v7 = 27;
LABEL_24:
    *a3 = v7;
    return 0xFFFFFFFFLL;
  }

  if ((a2 & 0x80000000) != 0 || (v9 = *(a1 + 20), v9 <= a2))
  {
    v7 = 1;
    goto LABEL_24;
  }

  v10 = *(a1 + 200);
  result = a2;
  if (v10)
  {
    if (v10 == 1)
    {
      result = (v9 + ~a2);
    }

    else
    {
      if (!sub_19522A818(a1))
      {
        v7 = 7;
        goto LABEL_24;
      }

      v16 = *(a1 + 312);
      if (v16 < 1)
      {
        return 0xFFFFFFFFLL;
      }

      v17 = 0;
      v18 = (*(a1 + 320) + 4);
      result = 0xFFFFFFFFLL;
      while (1)
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v21 = v5 - (v20 & 0x7FFFFFFF);
        if ((v21 & 0x80000000) == 0 && v21 < v19 - v17)
        {
          break;
        }

        v18 += 3;
        v17 = v19;
        if (!--v16)
        {
          return result;
        }
      }

      if (v20 >= 0)
      {
        result = (v21 + v17);
      }

      else
      {
        result = (v19 + ~v21);
      }
    }
  }

  if (*(a1 + 436) < 1)
  {
    if (*(a1 + 456) >= 1)
    {
      v22 = *(a1 + 8);
      v23 = *(v22 + 2 * v5);
      v24 = v23 & 0xFFFC;
      v25 = v23 - 8234;
      v26 = v23 - 8294;
      if (v24 == 8204 || v25 < 5 || v26 < 4)
      {
        return 0xFFFFFFFFLL;
      }

      v29 = *(a1 + 320);
      v30 = v29[1];
      v31 = v29[2];
      if (result >= v30)
      {
        v33 = 0;
        do
        {
          v32 = v30;
          v33 -= v31;
          v30 = v29[4];
          v31 = v29[5];
          v29 += 3;
        }

        while (result >= v30);
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      if (v31)
      {
        v34 = *v29;
        v35 = v30 - v32 + (v34 & 0x7FFFFFFF);
        v36 = v34 < 0 ? v5 + 1 : v34;
        v37 = v34 < 0 ? v35 : v5;
        if (v36 < v37)
        {
          v38 = (v22 + 2 * v36);
          v39 = v37 - v36;
          do
          {
            v40 = *v38++;
            v41 = v40 & 0xFFFC;
            v42 = v40 - 8294;
            if (v40 - 8234 < 5 || v42 < 4 || v41 == 8204)
            {
              ++v33;
            }

            --v39;
          }

          while (v39);
        }
      }

      return (result - v33);
    }
  }

  else
  {
    v11 = *(a1 + 320);
    v12 = v11[2];
    v13 = (v12 & 5) != 0;
    if (result >= v11[1])
    {
      v14 = v11 + 5;
      do
      {
        if ((v12 & 0xA) != 0)
        {
          ++v13;
        }

        v15 = *(v14 - 1);
        v12 = *v14;
        if ((*v14 & 5) != 0)
        {
          ++v13;
        }

        v14 += 3;
      }

      while (result >= v15);
    }

    return (v13 + result);
  }

  return result;
}

uint64_t ubidi_getLogicalIndex(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1 || (v5 = a2, v6 = *a1, *a1 != a1) && (!v6 || *v6 != v6))
  {
    v7 = 27;
LABEL_23:
    *a3 = v7;
    return 0xFFFFFFFFLL;
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 24) <= a2)
  {
    v7 = 1;
    goto LABEL_23;
  }

  if (!*(a1 + 436) && !*(a1 + 456))
  {
    v21 = *(a1 + 200);
    if (!v21)
    {
      return v5;
    }

    if (v21 == 1)
    {
      v22 = *(a1 + 20);
      v23 = ~a2;
      return (v22 + v23);
    }
  }

  if (!sub_19522A818(a1))
  {
    v7 = 7;
    goto LABEL_23;
  }

  v8 = *(a1 + 320);
  v9 = *(a1 + 312);
  if (*(a1 + 436) < 1)
  {
    if (*(a1 + 456) >= 1)
    {
      v16 = *(v8 + 4);
      v17 = *(v8 + 8);
      if (v16 + v17 <= v5)
      {
        v19 = 0;
        v20 = *(a1 + 320);
        do
        {
          v18 = v16;
          v19 -= v17;
          v16 = v20[4];
          v17 = v20[5];
          v20 += 3;
        }

        while (v16 - v19 + v17 <= v5);
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = *(a1 + 320);
      }

      if (v17 && v16 - v18 >= 1)
      {
        v24 = *v20;
        v25 = *v20 & 0x7FFFFFFF;
        v26 = v18 - v16 + 1;
        v27 = ~v18 + v16 + v25;
        do
        {
          if (v24 >= 0)
          {
            v28 = v25;
          }

          else
          {
            v28 = v27;
          }

          v29 = *(*(a1 + 8) + 2 * v28);
          v30 = v29 & 0xFFFC;
          v31 = v29 - 8234;
          v32 = v29 - 8294;
          if (v31 < 5 || v32 < 4 || v30 == 8204)
          {
            ++v19;
          }

          v35 = v18++ == v19 + v5 || v26++ == 0;
          ++v25;
          --v27;
        }

        while (!v35);
      }

      LODWORD(v5) = v19 + v5;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    for (i = (v8 + 8); ; i += 3)
    {
      v13 = *(i - 1);
      v14 = *i;
      if ((*i & 5) != 0)
      {
        if (v11 + v10 >= v5)
        {
          return 0xFFFFFFFFLL;
        }

        ++v10;
      }

      if (v10 + v13 > v5)
      {
        break;
      }

      v11 = v13;
      if ((v14 & 0xA) != 0)
      {
        if (v10 + v13 == v5)
        {
          return 0xFFFFFFFFLL;
        }

        ++v10;
        v11 = v13;
      }
    }

    LODWORD(v5) = v5 - v10;
  }

  if (v9 > 10)
  {
    v43 = 0;
    do
    {
      while (1)
      {
        v44 = v9 + v43;
        v38 = (v9 + v43) / 2;
        if (v5 < *(v8 + 12 * v38 + 4))
        {
          break;
        }

        v43 = v38 + 1;
      }

      v40 = (v44 + (v44 >> 31)) >> 1;
      if ((v44 + 1) < 3)
      {
        break;
      }

      v9 = (v9 + v43) / 2;
    }

    while (v5 < *(v8 - 8 + 12 * (v44 / 2)));
  }

  else
  {
    v36 = (v8 + 4);
    v37 = 0xFFFFFFFF00000000;
    v38 = -1;
    do
    {
      v39 = *v36;
      v36 += 3;
      v37 += 0x100000000;
      ++v38;
    }

    while (v5 >= v39);
    v40 = v37 >> 32;
  }

  v41 = (v8 + 12 * v40);
  v42 = *v41;
  if (*v41 < 0)
  {
    v22 = v42 & 0x7FFFFFFF;
    v23 = ~v5 + v41[1];
    return (v22 + v23);
  }

  if (v38 >= 1)
  {
    LODWORD(v5) = v5 - *(v8 + 12 * v38 - 8);
  }

  return (v5 + v42);
}

uint64_t ubidi_getLogicalMap(uint64_t result, char *a2, int *a3)
{
  if (a3)
  {
    if (*a3 <= 0)
    {
      v5 = result;
      result = ubidi_countRuns(result, a3);
      if (*a3 <= 0)
      {
        if (a2)
        {
          v6 = *(v5 + 20);
          if (v6 >= 1)
          {
            v7 = *(v5 + 320);
            if (v6 > *(v5 + 24))
            {
              result = memset(a2, 255, 4 * v6);
            }

            LODWORD(v8) = *(v5 + 312);
            if (v8 >= 1)
            {
              v9 = 0;
              v10 = 0;
              do
              {
                v11 = (v7 + 12 * v9);
                v13 = *v11;
                v12 = v11[1];
                if ((v13 & 0x80000000) != 0)
                {
                  v16 = &a2[4 * (v12 - v10 + (v13 & 0x7FFFFFFF)) - 4];
                  do
                  {
                    v15 = v10 + 1;
                    *v16 = v10;
                    v16 -= 4;
                    v10 = v15;
                  }

                  while (v15 < v12);
                }

                else
                {
                  v14 = &a2[4 * v13];
                  do
                  {
                    v15 = v10 + 1;
                    *v14 = v10;
                    v14 += 4;
                    v10 = v15;
                  }

                  while (v15 < v12);
                }

                ++v9;
                v8 = *(v5 + 312);
                v10 = v15;
              }

              while (v9 < v8);
            }

            if (*(v5 + 436) < 1)
            {
              if (*(v5 + 456) >= 1 && v8 >= 1)
              {
                v28 = 0;
                v29 = 0;
                v30 = 0;
                do
                {
                  v31 = (v7 + 12 * v28);
                  v33 = v31[1];
                  v32 = v31[2];
                  if (v30 != v32)
                  {
                    v34 = v33 - v29;
                    result = *v31;
                    v35 = result & 0x7FFFFFFF;
                    if (v32)
                    {
                      if (v34 >= 1)
                      {
                        v36 = *(v5 + 8);
                        v37 = v29 - v33;
                        v38 = ~v29 + v33 + v35;
                        do
                        {
                          if (result >= 0)
                          {
                            v39 = v35;
                          }

                          else
                          {
                            v39 = v38;
                          }

                          v40 = *(v36 + 2 * v39);
                          v41 = v40 & 0xFFFC;
                          v42 = v40 - 8234;
                          v43 = v40 - 8294;
                          v44 = v41 != 8204 && v42 >= 5;
                          if (v44 && v43 > 3)
                          {
                            *&a2[4 * v39] -= v30;
                          }

                          else
                          {
                            ++v30;
                            *&a2[4 * v39] = -1;
                          }

                          --v38;
                          LODWORD(v35) = v35 + 1;
                          v44 = __CFADD__(v37++, 1);
                        }

                        while (!v44);
                      }
                    }

                    else if (v34 >= 1)
                    {
                      result = (v35 + v34);
                      v46 = &a2[4 * v35];
                      do
                      {
                        *v46 -= v30;
                        v46 += 4;
                        LODWORD(v35) = v35 + 1;
                      }

                      while (result > v35);
                    }
                  }

                  ++v28;
                  v29 = v33;
                }

                while (v28 != v8);
              }
            }

            else if (v8 >= 1)
            {
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v20 = v8;
              do
              {
                result = v7 + 12 * v17;
                v21 = *(result + 4);
                v22 = *(result + 8);
                if ((v22 & 5) != 0)
                {
                  v23 = v19 + 1;
                }

                else
                {
                  v23 = v19;
                }

                if (v23 >= 1)
                {
                  v24 = v21 - v18;
                  if (v21 - v18 >= 1)
                  {
                    v25 = *result & 0x7FFFFFFF;
                    v26 = v24 + v25;
                    result = &a2[4 * v25];
                    do
                    {
                      *result += v23;
                      result += 4;
                      LODWORD(v25) = v25 + 1;
                    }

                    while (v26 > v25);
                  }
                }

                if ((v22 & 0xA) != 0)
                {
                  v19 = v23 + 1;
                }

                else
                {
                  v19 = v23;
                }

                ++v17;
                v18 = v21;
              }

              while (v17 != v20);
            }
          }
        }

        else
        {
          *a3 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t ubidi_getVisualMap(uint64_t result, int *a2, int *a3)
{
  if (a3 && *a3 <= 0)
  {
    if (a2)
    {
      v5 = result;
      result = ubidi_countRuns(result, a3);
      if (*a3 <= 0 && *(v5 + 24) >= 1)
      {
        v6 = *(v5 + 320);
        v7 = *(v5 + 312);
        if (v7 >= 1)
        {
          v8 = 0;
          v9 = v6 + 12 * v7;
          v10 = *(v5 + 320);
          v11 = a2;
          do
          {
            v13 = *v10;
            v12 = v10[1];
            if (*v10 < 0)
            {
              v15 = v13 & 0x7FFFFFFF;
              v16 = v8 + 1;
              v17 = ~v8 + v12 + v15;
              do
              {
                *v11++ = v17;
                ++v8;
                --v17;
              }

              while (v8 < v12);
              if (v12 <= v16)
              {
                v12 = v16;
              }
            }

            else
            {
              if (v12 <= v8 + 1)
              {
                v12 = v8 + 1;
              }

              v14 = v12 - v8;
              do
              {
                *v11++ = v13++;
                --v14;
              }

              while (v14);
            }

            v10 += 3;
            v8 = v12;
          }

          while (v10 < v9);
        }

        if (*(v5 + 436) < 1)
        {
          if (*(v5 + 456) >= 1)
          {
            v31 = *(v5 + 312);
            if (v31 >= 1)
            {
              v32 = 0;
              v33 = 0;
              v34 = 0;
              do
              {
                result = v6 + 12 * v32;
                v36 = *(result + 4);
                v35 = *(result + 8);
                v37 = v36 - v34;
                if (v35)
                {
                  v38 = 0;
                }

                else
                {
                  v38 = v33 == v34;
                }

                if (v38)
                {
                  v33 += v37;
                }

                else if (v35)
                {
                  if (v37 >= 1)
                  {
                    result = *result;
                    v39 = result & 0x7FFFFFFF;
                    v40 = *(v5 + 8);
                    v41 = v34 - v36;
                    v42 = ~v34 + v36 + (result & 0x7FFFFFFF);
                    do
                    {
                      if (result >= 0)
                      {
                        v43 = v39;
                      }

                      else
                      {
                        v43 = v42;
                      }

                      v44 = *(v40 + 2 * v43);
                      v45 = v44 & 0xFFFC;
                      v46 = v44 - 8234;
                      v47 = v44 - 8294;
                      v48 = v45 != 8204 && v46 >= 5;
                      if (v48 && v47 >= 4)
                      {
                        a2[v33++] = v43;
                      }

                      --v42;
                      ++v39;
                      v48 = __CFADD__(v41++, 1);
                    }

                    while (!v48);
                  }
                }

                else if (v36 > v34)
                {
                  result = &a2[v34];
                  v50 = &a2[v33];
                  v33 = v33 + v36 - v34;
                  v51 = v36 - v34;
                  do
                  {
                    v52 = *result;
                    result += 4;
                    *v50++ = v52;
                    --v51;
                  }

                  while (v51);
                }

                ++v32;
                v34 = v36;
              }

              while (v32 != v31);
            }
          }
        }

        else
        {
          v18 = *(v5 + 312);
          if (v18 >= 1)
          {
            v19 = 0;
            v20 = (v6 + 8);
            v21 = *(v5 + 312);
            do
            {
              v23 = *v20;
              v20 += 3;
              v22 = v23;
              if ((v23 & 5) != 0)
              {
                ++v19;
              }

              if ((v22 & 0xA) != 0)
              {
                ++v19;
              }

              --v21;
            }

            while (v21);
            if (v19 >= 1)
            {
              v24 = *(v5 + 24);
              do
              {
                result = v18 - 1;
                v25 = v6 + 12 * (v18 - 1);
                v26 = *(v25 + 8);
                if ((v26 & 0xA) != 0)
                {
                  a2[--v24] = -1;
                  --v19;
                }

                if (v18 < 2)
                {
                  v27 = 0;
                }

                else
                {
                  v27 = *(v6 - 20 + 12 * v18);
                }

                v28 = *(v25 + 4);
                if (v28 > v27 && v19 != 0)
                {
                  v30 = v24;
                  v24 = v27 + v24 - v28;
                  do
                  {
                    a2[--v30] = a2[--v28];
                  }

                  while (v28 > v27);
                }

                if ((v26 & 5) != 0)
                {
                  a2[--v24] = -1;
                  --v19;
                }

                if (v18 < 2)
                {
                  break;
                }

                --v18;
              }

              while (v19 > 0);
            }
          }
        }
      }
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

char *ubidi_invertMap(char *result, void *__b, int a3)
{
  if (result && __b && a3 >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = -1;
    v8 = &result[4 * a3];
    do
    {
      v10 = *(v8 - 4);
      v8 -= 4;
      v9 = v10;
      if (v10 > v7)
      {
        v7 = v9;
      }

      v6 += v9 >= 0;
    }

    while (v8 > result);
    if (v6 <= v7)
    {
      result = memset(__b, 255, 4 * (v7 + 1));
    }

    v11 = &v5[4 * a3 - 4];
    v12 = a3 + 1;
    do
    {
      v14 = *v11;
      v11 -= 4;
      v13 = v14;
      if ((v14 & 0x80000000) == 0)
      {
        *(__b + v13) = v12 - 2;
      }

      --v12;
    }

    while (v12 > 1);
  }

  return result;
}

void *ubiditransform_open(int *a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x48uLL, 0x1070040170875DFuLL);
  if (!result)
  {
    *a1 = 7;
  }

  return result;
}

void ubiditransform_close(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      ubidi_close(v2);
    }

    v3 = a1[2];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

void *ubiditransform_transform(uint64_t a1, UChar *s, uint64_t a3, UChar *a4, int32_t a5, char a6, int a7, char a8, int a9, int a10, unsigned int a11, int *a12)
{
  v32 = a6;
  v31 = a8;
  v30 = 0;
  if (*a12 > 0)
  {
    return 0;
  }

  if (!s || !a4)
  {
    goto LABEL_11;
  }

  v15 = a3;
  if (!a3)
  {
    return 0;
  }

  if (a3 <= -2)
  {
    goto LABEL_11;
  }

  if (a3 == -1)
  {
    v15 = u_strlen(s);
  }

  if (!a5)
  {
    return 0;
  }

  if (a5 <= -2)
  {
LABEL_11:
    result = 0;
    v19 = 1;
LABEL_12:
    *a12 = v19;
    return result;
  }

  if (a5 == -1)
  {
    a5 = u_strlen(a4);
  }

  v20 = a1;
  if (!a1)
  {
    if (*a12 <= 0)
    {
      result = malloc_type_calloc(1uLL, 0x48uLL, 0x1070040170875DFuLL);
      if (!result)
      {
        v19 = 7;
        goto LABEL_12;
      }

      if (*a12 <= 0)
      {
        v20 = result;
        goto LABEL_16;
      }
    }

    return 0;
  }

LABEL_16:
  sub_19522C1F0(s, v15, &v32, &v31);
  v21 = &byte_1F0933858;
  v22 = 16;
  while (*v21 != v32 || v21[8] != v31 || *(v21 + 1) != a7 || *(v21 + 3) != a9)
  {
    v21 += 88;
    if (!--v22)
    {
      *(v20 + 8) = 0;
      goto LABEL_23;
    }
  }

  *(v20 + 8) = v21;
  *(v20 + 56) = 2 * (a10 != 0);
  *(v20 + 60) = vand_s8(vdup_n_s32(a11), 0xFFFFFF1BFFFFFFE3);
  if (a5 <= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = a5;
  }

  sub_19522C25C(v20, s, v15, v23, a12);
  if (*a12 > 0)
  {
    goto LABEL_23;
  }

  v24 = *v20;
  if (!*v20)
  {
    v24 = ubidi_openSized(0, 0, a12);
    *v20 = v24;
    if (*a12 > 0)
    {
      goto LABEL_23;
    }
  }

  *(v20 + 24) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = &v30;
  v25 = *(v20 + 8);
  v26 = *(v25 + 32);
  if (v26)
  {
    v27 = 0;
    v28 = (v25 + 40);
    do
    {
      if (*a12 > 0)
      {
        break;
      }

      if (v26(v20, a12))
      {
        if (*v28)
        {
          sub_19522C25C(v20, *(v20 + 24), **(v20 + 48), **(v20 + 48), a12);
        }

        v27 = 1;
      }

      v29 = *v28++;
      v26 = v29;
    }

    while (v29);
    ubidi_setInverse(*v20, 0);
    if (v27)
    {
      goto LABEL_23;
    }
  }

  else
  {
    ubidi_setInverse(v24, 0);
  }

  if (*a12 <= 0)
  {
    if (a5 >= v15)
    {
      u_strncpy(a4, s, v15);
      v30 = v15;
    }

    else
    {
      *a12 = 15;
    }
  }

LABEL_23:
  if (v20 == a1)
  {
    *(v20 + 24) = 0;
    *(v20 + 48) = 0;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
  }

  else
  {
    ubiditransform_close(v20);
  }

  if (*a12 <= 0)
  {
    return v30;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19522C1F0(UChar *a1, int a2, _BYTE *a3, _BYTE *a4)
{
  v6 = *a3;
  if (v6 < 0xFE)
  {
    result = v6 & 1;
  }

  else
  {
    result = ubidi_getBaseDirection(a1, a2);
    if (result == 3)
    {
      result = *a3 == 255;
    }
  }

  *a3 = result;
  v8 = *a4;
  if (v8 <= 0xFD)
  {
    v9 = v8 & 1;
  }

  else
  {
    v9 = result;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_19522C25C(uint64_t result, const UChar *a2, uint64_t a3, unsigned int a4, int *a5)
{
  if (a4 < a3)
  {
    v6 = 15;
LABEL_3:
    *a5 = v6;
    return result;
  }

  v9 = result;
  if (*(result + 36) >= a4)
  {
    result = *(result + 16);
  }

  else
  {
    v10 = a4 + 50;
    v11 = *(result + 16);
    if (v11)
    {
      free(v11);
      *(v9 + 16) = 0;
    }

    result = malloc_type_malloc(2 * v10, 0x1000040BDFB0063uLL);
    *(v9 + 16) = result;
    if (!result)
    {
      v6 = 7;
      goto LABEL_3;
    }

    *(v9 + 36) = v10;
  }

  u_strncpy(result, a2, a3);
  result = u_terminateUChars(*(v9 + 16), *(v9 + 36), a3, a5);
  *(v9 + 32) = result;
  return result;
}

uint64_t sub_19522C324(uint64_t a1, int *a2)
{
  v2 = *(a1 + 60);
  v3 = v2 | *(a1 + 64);
  if (!*(a1 + 60))
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v10 = v7 + 16;
  v9 = *(v7 + 16);
  v8 = *(v10 + 4);
  v11 = *(a1 + 32);
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  if (v8 == v9)
  {
    v14 = v8 | v3;
LABEL_7:
    **(a1 + 48) = u_shapeArabic(v6, v11, v12, v13, v14, a2);
    return 1;
  }

  v16 = u_shapeArabic(v6, v11, v12, v13, v9 | v2, a2);
  **(a1 + 48) = v16;
  if (*a2 <= 0)
  {
    sub_19522C25C(a1, *(a1 + 24), v16, v16, a2);
    v6 = *(a1 + 16);
    v11 = *(a1 + 32);
    v12 = *(a1 + 24);
    v13 = *(a1 + 40);
    v14 = *(*(a1 + 8) + 20) | *(a1 + 64);
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_19522C424(uint64_t a1, int *a2)
{
  ubidi_writeReordered(*a1, *(a1 + 24), *(a1 + 40), *(a1 + 56), a2);
  **(a1 + 48) = *(a1 + 32);
  *(a1 + 56) = 0;
  return 1;
}

uint64_t sub_19522C470(uint64_t a1, int *a2)
{
  ubidi_writeReverse(*(a1 + 16), *(a1 + 32), *(a1 + 24), *(a1 + 40), 0, a2);
  **(a1 + 48) = *(a1 + 32);
  return 1;
}

uint64_t sub_19522C4BC(uint64_t *a1)
{
  ubidi_setInverse(*a1, 1);
  ubidi_setReorderingMode(*a1, 5u);
  return 0;
}

uint64_t sub_19522C4F8(uint64_t a1, _DWORD *a2)
{
  if ((*(a1 + 56) & 2) == 0)
  {
    return 0;
  }

  if (*(a1 + 40) < *(a1 + 32))
  {
    result = 0;
    *a2 = 15;
    return result;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    LevelAt = ubidi_getLevelAt(*a1, v4);
    v7 = *(a1 + 16);
    v8 = v4 + 1;
    v9 = *(v7 + 2 * v4);
    if ((v9 & 0xFC00) == 0xD800 && v8 != *(a1 + 32))
    {
      v11 = *(v7 + 2 * v8);
      v12 = (v11 & 0xFC00) == 56320;
      v13 = v11 + (v9 << 10) - 56613888;
      if (v12)
      {
        v9 = v13;
      }

      if (v12)
      {
        v4 += 2;
      }

      else
      {
        ++v4;
      }

      if (LevelAt)
      {
LABEL_18:
        v14 = u_charMirror(v9);
        v10 = u_charMirror(v9);
        if (!HIWORD(v14))
        {
          goto LABEL_19;
        }

        *(*(a1 + 24) + 2 * v5) = (v10 >> 10) - 10304;
        LOWORD(v9) = u_charMirror(v9);
        v15 = *(a1 + 24);
        goto LABEL_22;
      }
    }

    else
    {
      ++v4;
      if (LevelAt)
      {
        goto LABEL_18;
      }
    }

    if (v9 < 0x10000)
    {
      LOWORD(v10) = v9;
LABEL_19:
      v15 = *(a1 + 24);
      v16 = 1;
      v17 = v5;
      goto LABEL_23;
    }

    v15 = *(a1 + 24);
    *(v15 + 2 * v5) = (v9 >> 10) - 10304;
LABEL_22:
    v17 = v5 + 1;
    LOWORD(v10) = v9 & 0x3FF | 0xDC00;
    v16 = 2;
LABEL_23:
    v5 += v16;
    *(v15 + 2 * v17) = v10;
    v18 = *(a1 + 32);
  }

  while (v4 < v18);
  **(a1 + 48) = v18;
  *(a1 + 56) = 0;
  return 1;
}

uint64_t ubidi_writeReverse(UChar *s, uint64_t a2, UChar *a3, unsigned int a4, char a5, int *a6)
{
  if (!a6 || *a6 > 0)
  {
    return 0;
  }

  if (!s || a2 < -1 || (a4 & 0x80000000) != 0 || !a3 && a4 || a3 && (s >= a3 && &a3[a4] > s || a3 >= s && &s[a2] > a3))
  {
    *a6 = 1;
    return 0;
  }

  if (a2 == -1)
  {
    a2 = u_strlen(s);
  }

  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_19522C7B4(s, a2, a3, a4, a5, a6);
  }

  return u_terminateUChars(a3, a4, v12, a6);
}

uint64_t sub_19522C7B4(unsigned __int16 *a1, uint64_t a2, _WORD *a3, int a4, char a5, _DWORD *a6)
{
  v7 = a2;
  v8 = a1;
  if ((a5 & 0xB) != 1)
  {
    if ((a5 & 0xB) != 0)
    {
      if ((a5 & 8) != 0)
      {
        LODWORD(v22) = 0;
        v23 = a2 + 1;
        v21 = &a1[-a2];
        do
        {
          v24 = *v8++;
          v25 = v24 & 0xFFFC;
          v26 = v24 - 8298;
          if (v24 - 8239 >= 0xFFFFFFFB || v26 >= 0xFFFFFFFC || v25 == 8204)
          {
            v22 = v22;
          }

          else
          {
            v22 = (v22 + 1);
          }

          ++v21;
          --v23;
        }

        while (v23 > 1);
      }

      else
      {
        v21 = a1;
        v22 = a2;
      }

      if (v22 <= a4)
      {
        do
        {
          v29 = v7;
          LODWORD(v7) = v7 - 1;
          v30 = v21[v7];
          if (v29 > 1 && (v30 & 0xFC00) == 0xDC00)
          {
            v31 = v21[v29 - 2];
            v32 = (v31 & 0xFC00) == 55296;
            v33 = v30 - 56613888 + (v31 << 10);
            if (v32)
            {
              LODWORD(v7) = v29 - 2;
            }

            if (v32)
            {
              v30 = v33;
            }
          }

          if ((a5 & 1) != 0 && v7 >= 1)
          {
            while (((1 << u_charType(v30)) & 0x1C0) != 0)
            {
              v34 = v7 - 1;
              v30 = v21[(v7 - 1)];
              if ((v30 & 0xFC00) == 0xDC00)
              {
                if (v7 < 2)
                {
                  goto LABEL_65;
                }

                v35 = v21[(v7 - 2)];
                v36 = (v35 & 0xFC00) == 55296;
                v37 = v30 - 56613888 + (v35 << 10);
                if (v36)
                {
                  v34 = v7 - 2;
                }

                if (v36)
                {
                  v30 = v37;
                }
              }

              LODWORD(v7) = v34;
              if (v34 <= 0)
              {
LABEL_65:
                LODWORD(v7) = 0;
                break;
              }
            }
          }

          if ((a5 & 8) == 0 || v30 >> 2 != 2051 && v30 - 8234 >= 5 && v30 - 8294 >= 4)
          {
            if ((a5 & 2) != 0)
            {
              v39 = u_charMirror(v30);
              if (HIWORD(v39))
              {
                v41 = v39 & 0x3FF | 0xDC00;
                v39 = (v39 >> 10) - 10304;
                a3[1] = v41;
                v40 = 2;
              }

              else
              {
                v40 = 1;
              }

              *a3 = v39;
              a3 += v40;
              v38 = v40 + v7;
            }

            else
            {
              v38 = v7;
            }

            if (v38 < v29)
            {
              v42 = &v21[v38];
              v43 = v29 - v38;
              do
              {
                v44 = *v42++;
                *a3++ = v44;
                --v43;
              }

              while (v43);
            }
          }
        }

        while (v7 >= 1);
        return v22;
      }

      v7 = v22;
    }

    else if (a4 >= a2)
    {
      v9 = a2;
      do
      {
        v10 = v9 - 1;
        v11 = v9 - 1;
        if (v9 > 1 && (a1[v10] & 0xFC00) == 0xDC00)
        {
          if ((a1[v9 - 2] & 0xFC00) == 0xD800)
          {
            v11 = (v9 - 2);
          }

          else
          {
            v11 = v10;
          }

          v10 = v11;
        }

        do
        {
          *a3++ = a1[v11++];
        }

        while (v11 < v9);
        v9 = v10;
      }

      while (v10 >= 1);
      return v7;
    }

LABEL_44:
    *a6 = 15;
    return v7;
  }

  if (a4 < a2)
  {
    goto LABEL_44;
  }

  v12 = a2;
  do
  {
    v13 = v12;
    while (1)
    {
      v14 = v13 - 1;
      v15 = v8[v13 - 1];
      if (v13 <= 1 || (v15 & 0xFC00) != 0xDC00)
      {
        break;
      }

      v16 = v8[v13 - 2];
      if ((v16 & 0xFC00) == 0xD800)
      {
        v14 = v13 - 2;
        v15 = v15 - 56613888 + (v16 << 10);
        break;
      }

LABEL_22:
      v17 = u_charType(v15);
      v18 = 1;
      v13 = v14;
      if (((1 << v17) & 0x1C0) == 0)
      {
        goto LABEL_25;
      }
    }

    if (v14 >= 1)
    {
      goto LABEL_22;
    }

    v18 = 0;
LABEL_25:
    v19 = v14;
    do
    {
      *a3++ = v8[v19++];
    }

    while (v19 < v12);
    v12 = v14;
  }

  while ((v18 & 1) != 0);
  return v7;
}

uint64_t ubidi_writeReordered(uint64_t a1, unint64_t a2, int a3, unsigned __int16 a4, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  if (!a1 || (v8 = *(a1 + 8)) == 0 || (v10 = *(a1 + 20), (v10 | a3) < 0) || !a2 && a3 >= 1 || a2 && (v8 >= a2 && v8 < a2 + 2 * a3 || v8 <= a2 && v8 + 2 * *(a1 + 16) > a2))
  {
    result = 0;
    *a5 = 1;
    return result;
  }

  if (v10)
  {
    v13 = ubidi_countRuns(a1, a5);
    if (*a5 > 0)
    {
      return 0;
    }

    v14 = v13;
    v15 = a4 & 0xFFF3 | 4;
    v17 = *(a1 + 148);
    v16 = *(a1 + 152);
    if ((v16 & 1) == 0)
    {
      v15 = a4;
    }

    v59 = 0;
    v18 = a4 & 0xFFF3 | 8;
    if ((v16 & 2) == 0)
    {
      v18 = v15;
    }

    if ((v17 - 3) >= 4)
    {
      v18 &= ~4u;
    }

    v58 = v18;
    v19 = a3;
    if ((v18 & 0x10) == 0)
    {
      if ((v18 & 4) == 0)
      {
        if (v13 >= 1)
        {
          v20 = 0;
          v21 = v18 & 0xFFE9;
          v22 = a2;
          v19 = a3;
          do
          {
            VisualRun = ubidi_getVisualRun(a1, v20, &v59 + 1, &v59);
            v24 = (v8 + 2 * SHIDWORD(v59));
            if (VisualRun)
            {
              v25 = sub_19522C7B4(v24, v59, v22, v19, v58, a5);
            }

            else
            {
              v25 = sub_19522D10C(v24, v59, v22, v19, v21, a5);
            }

            LODWORD(v59) = v25;
            if (v22)
            {
              v22 += v25;
            }

            else
            {
              v22 = 0;
            }

            v19 -= v25;
            ++v20;
          }

          while (v14 != v20);
        }

        return u_terminateUChars(a2, a3, (a3 - v19), a5);
      }

      if (v13 >= 1)
      {
        v32 = 0;
        v55 = *(a1 + 128);
        v54 = v55 - 1;
        v53 = v18 & 0xFFED;
        v56 = v13;
        v33 = 8;
        v34 = a2;
        v19 = a3;
        while (1)
        {
          v35 = ubidi_getVisualRun(a1, v32, &v59 + 1, &v59);
          v36 = (v8 + 2 * SHIDWORD(v59));
          v37 = *(*(a1 + 320) + v33) & ~(*(*(a1 + 320) + v33) >> 31);
          if (v35)
          {
            if (*(a1 + 144) && ((1 << *(v54 + v59 + SHIDWORD(v59))) & 0x2002) == 0)
            {
              LOBYTE(v37) = v37 | 4;
            }

            if ((v37 & 1) == 0)
            {
              if ((v37 & 4) != 0)
              {
                v38 = 8207;
LABEL_64:
                v40 = __OFSUB__(v19--, 1);
                if (v19 < 0 == v40)
                {
                  *v34++ = v38;
                }
              }

              v41 = sub_19522C7B4(v36, v59, v34, v19, v58, a5);
              LODWORD(v59) = v41;
              if (v34)
              {
                v34 += v41;
              }

              else
              {
                v34 = 0;
              }

              if (*(a1 + 144) && ((1 << *(v55 + SHIDWORD(v59))) & 0x2002) == 0)
              {
                LOBYTE(v37) = v37 | 8;
              }

              goto LABEL_83;
            }

            v38 = 8206;
            goto LABEL_64;
          }

          if (*(a1 + 144))
          {
            LOBYTE(v37) = v37 | (*(v55 + SHIDWORD(v59)) != 0);
          }

          if (v37)
          {
            break;
          }

          if ((v37 & 4) != 0)
          {
            v39 = 8207;
            goto LABEL_74;
          }

LABEL_76:
          v41 = sub_19522D10C(v36, v59, v34, v19, v53, a5);
          LODWORD(v59) = v41;
          if (v34)
          {
            v34 += v41;
          }

          else
          {
            v34 = 0;
          }

          if (*(a1 + 144) && v41 >= 1 && *(v54 + SHIDWORD(v59) + v41))
          {
            LOBYTE(v37) = v37 | 2;
          }

LABEL_83:
          v19 -= v41;
          if ((v37 & 2) != 0)
          {
            v42 = 8206;
LABEL_87:
            v40 = __OFSUB__(v19--, 1);
            if (v19 < 0 == v40)
            {
              *v34++ = v42;
            }

            goto LABEL_89;
          }

          if ((v37 & 8) != 0)
          {
            v42 = 8207;
            goto LABEL_87;
          }

LABEL_89:
          ++v32;
          v33 += 12;
          if (v56 == v32)
          {
            return u_terminateUChars(a2, a3, (a3 - v19), a5);
          }
        }

        v39 = 8206;
LABEL_74:
        v40 = __OFSUB__(v19--, 1);
        if (v19 < 0 == v40)
        {
          *v34++ = v39;
        }

        goto LABEL_76;
      }

      return u_terminateUChars(a2, a3, (a3 - v19), a5);
    }

    if ((v18 & 4) == 0)
    {
      if (v13 >= 1)
      {
        v26 = v18 & 0xF9;
        v27 = v13 + 1;
        v28 = a2;
        v19 = a3;
        do
        {
          v29 = ubidi_getVisualRun(a1, v27 - 2, &v59 + 1, &v59);
          v30 = (v8 + 2 * SHIDWORD(v59));
          if (v29)
          {
            v31 = sub_19522D10C(v30, v59, v28, v19, v58, a5);
          }

          else
          {
            v31 = sub_19522C7B4(v30, v59, v28, v19, v26, a5);
          }

          LODWORD(v59) = v31;
          if (v28)
          {
            v28 += v31;
          }

          else
          {
            v28 = 0;
          }

          v19 -= v31;
          --v27;
        }

        while (v27 > 1);
      }

      return u_terminateUChars(a2, a3, (a3 - v19), a5);
    }

    if (v13 < 1)
    {
      return u_terminateUChars(a2, a3, (a3 - v19), a5);
    }

    v43 = *(a1 + 128);
    v44 = v43 - 1;
    v57 = v18 & 0xFD;
    v45 = v13 + 1;
    v46 = a2;
    v19 = a3;
    while (1)
    {
      v47 = ubidi_getVisualRun(a1, v45 - 2, &v59 + 1, &v59);
      v48 = (v8 + 2 * SHIDWORD(v59));
      if (v47)
      {
        if (((1 << *(v43 + SHIDWORD(v59))) & 0x2002) == 0)
        {
          v40 = __OFSUB__(v19--, 1);
          if (v19 < 0 == v40)
          {
            *v46++ = 8207;
          }
        }

        v49 = sub_19522D10C(v48, v59, v46, v19, v58, a5);
        LODWORD(v59) = v49;
        if (v46)
        {
          v46 += v49;
        }

        else
        {
          v46 = 0;
        }

        v19 -= v49;
        if (v49 < 1)
        {
          goto LABEL_114;
        }

        if (((1 << *(v44 + SHIDWORD(v59) + v49)) & 0x2002) != 0)
        {
          goto LABEL_114;
        }

        v40 = __OFSUB__(v19--, 1);
        if (v19 < 0 != v40)
        {
          goto LABEL_114;
        }

        v50 = 8207;
      }

      else
      {
        v51 = v59;
        if (*(v44 + v59 + HIDWORD(v59)))
        {
          v40 = __OFSUB__(v19--, 1);
          if (v19 < 0 == v40)
          {
            *v46++ = 8206;
          }
        }

        v52 = sub_19522C7B4(v48, v51, v46, v19, v57, a5);
        LODWORD(v59) = v52;
        if (v46)
        {
          v46 += v52;
        }

        else
        {
          v46 = 0;
        }

        v19 -= v52;
        if (!*(v43 + SHIDWORD(v59)))
        {
          goto LABEL_114;
        }

        v40 = __OFSUB__(v19--, 1);
        if (v19 < 0 != v40)
        {
          goto LABEL_114;
        }

        v50 = 8206;
      }

      *v46++ = v50;
LABEL_114:
      if (--v45 <= 1)
      {
        return u_terminateUChars(a2, a3, (a3 - v19), a5);
      }
    }
  }

  return u_terminateUChars(a2, a3, 0, a5);
}

uint64_t sub_19522D10C(unsigned __int16 *a1, uint64_t a2, _WORD *a3, int a4, unsigned int a5, _DWORD *a6)
{
  v7 = a2;
  v8 = a1;
  v9 = (a5 >> 1) & 5;
  if (v9 <= 3)
  {
    if (v9)
    {
      if (a4 >= a2)
      {
        v35 = 0;
        v36 = 0;
        do
        {
          v37 = v35 + 1;
          v38 = v8[v35];
          if ((v38 & 0xFC00) != 0xD800 || v37 == v7)
          {
            ++v35;
          }

          else
          {
            v40 = v8[v37];
            v41 = (v40 & 0xFC00) == 56320;
            v42 = (v38 << 10) - 56613888 + v40;
            if (v41)
            {
              v35 += 2;
            }

            else
            {
              ++v35;
            }

            if (v41)
            {
              v38 = v42;
            }
          }

          v43 = u_charMirror(v38);
          if (HIWORD(v43))
          {
            v44 = &a3[v36];
            *v44 = (v43 >> 10) - 10304;
            v36 += 2;
            v44[1] = v43 & 0x3FF | 0xDC00;
          }

          else
          {
            a3[v36++] = v43;
          }
        }

        while (v35 < v7);
        return v7;
      }
    }

    else if (a4 >= a2)
    {
      v10 = a2 + 1;
      do
      {
        v11 = *v8++;
        *a3++ = v11;
        --v10;
      }

      while (v10 > 1);
      return v7;
    }

    *a6 = 15;
    return v7;
  }

  if (v9 != 4)
  {
    v23 = 0;
    v24 = a4;
    while (1)
    {
      v25 = *v8;
      if ((v25 & 0xFC00) != 0xD800 || v7 == 1)
      {
        v27 = 1;
      }

      else
      {
        v28 = v8[1];
        v29 = (v28 & 0xFC00) == 56320;
        v30 = (v25 << 10) - 56613888 + v28;
        if ((v28 & 0xFC00) == 0xDC00)
        {
          v27 = 2;
        }

        else
        {
          v27 = 1;
        }

        if (v29)
        {
          v25 = v30;
        }
      }

      v8 += v27;
      LODWORD(v7) = v7 - v27;
      if (v25 >> 2 != 2051 && v25 - 8234 >= 5 && v25 - 8294 >= 4)
      {
        v24 -= v27;
        if (v24 < 0)
        {
          *a6 = 15;
          if (v7 >= 1)
          {
            v52 = v7 + 1;
            do
            {
              v53 = *v8++;
              v54 = v53 & 0xFFFC;
              v55 = v53 - 8298;
              v58 = v53 - 8239 < 0xFFFFFFFB && v55 < 0xFFFFFFFC && v54 != 8204;
              v24 -= v58;
              --v52;
            }

            while (v52 > 1);
          }

          return (a4 - v24);
        }

        v33 = u_charMirror(v25);
        if (HIWORD(v33))
        {
          v34 = &a3[v23];
          *v34 = (v33 >> 10) - 10304;
          v23 = (v23 + 2);
          v34[1] = v33 & 0x3FF | 0xDC00;
        }

        else
        {
          a3[v23] = v33;
          v23 = (v23 + 1);
        }
      }

      if (v7 <= 0)
      {
        return v23;
      }
    }
  }

  v12 = a2 + 1;
  v13 = a4;
  v14 = a1;
  while (1)
  {
    v16 = *v14++;
    v15 = v16;
    v17 = v16 - 8234;
    v18 = v16 - 8294;
    v19 = (v16 & 0xFFFC) != 0x200C && v17 >= 5;
    if (v19 && v18 >= 4)
    {
      break;
    }

    v21 = v13;
LABEL_19:
    --v12;
    v8 = v14;
    v22 = __OFSUB__(v7, 1);
    LODWORD(v7) = v7 - 1;
    if ((v7 < 0) ^ v22 | (v7 == 0))
    {
      return (a4 - v21);
    }
  }

  v21 = v13 - 1;
  if (v13 > 0)
  {
    *a3++ = v15;
    --v13;
    goto LABEL_19;
  }

  *a6 = 15;
  if (v7 >= 2)
  {
    v45 = 1;
    do
    {
      v46 = v8[v45];
      v47 = v46 - 8239;
      v48 = v46 - 8298;
      v51 = v47 < 0xFFFFFFFB && v48 < 0xFFFFFFFC && (v8[v45] & 0xFFFC) != 8204;
      v21 -= v51;
      ++v45;
      --v12;
    }

    while (v12 > 2);
  }

  return (a4 - v21);
}

_DWORD *ubrk_open(int a1, const char *a2, const UChar *a3, int a4, UErrorCode *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_14;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_19;
      }

      icu::Locale::Locale(&v23, a2, 0, 0, 0);
      WordInstance = icu::BreakIterator::createWordInstance(&v23, a5, v11, v12);
    }

    else
    {
      icu::Locale::Locale(&v23, a2, 0, 0, 0);
      WordInstance = icu::BreakIterator::createCharacterInstance(&v23, a5, v17, v18);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        icu::Locale::Locale(&v23, a2, 0, 0, 0);
        WordInstance = icu::BreakIterator::createLineInstance(&v23, a5, v13, v14);
        break;
      case 3:
        icu::Locale::Locale(&v23, a2, 0, 0, 0);
        WordInstance = icu::BreakIterator::createSentenceInstance(&v23, a5, v15, v16);
        break;
      case 4:
        icu::Locale::Locale(&v23, a2, 0, 0, 0);
        WordInstance = icu::BreakIterator::createTitleInstance(&v23, a5, v8, v9);
        break;
      default:
LABEL_19:
        v19 = 0;
        v22 = 1;
LABEL_21:
        *a5 = v22;
        goto LABEL_15;
    }
  }

  v19 = WordInstance;
  icu::Locale::~Locale(&v23);
  if (*a5 >= 1)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  if (!v19)
  {
    v22 = 7;
    goto LABEL_21;
  }

  if (a3)
  {
    memset(&v23, 0, sizeof(v23));
    v23.magic = 878368812;
    v23.sizeOfStruct = 144;
    utext_openUChars(&v23, a3, a4, a5);
    (*(*v19 + 64))(v19, &v23, a5);
  }

LABEL_15:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t ubrk_setText(uint64_t a1, const UChar *a2, int a3, UErrorCode *a4)
{
  memset(&v7, 0, sizeof(v7));
  v7.magic = 878368812;
  v7.sizeOfStruct = 144;
  utext_openUChars(&v7, a2, a3, a4);
  return (*(*a1 + 64))(a1, &v7, a4);
}

uint64_t ubrk_openRules(uint64_t a1, uint64_t a2, const UChar *a3, int a4, uint64_t a5, int *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a6 && *a6 <= 0)
  {
    memset(v17, 0, sizeof(v17));
    v11 = icu::UnicodeString::UnicodeString(v17, a1, a2);
    v12 = sub_195211D6C(v11, a5, a6);
    v13 = *a6;
    if (v13 <= 0)
    {
      v7 = v12;
      if (a3)
      {
        memset(&v16, 0, sizeof(v16));
        v16.magic = 878368812;
        v16.sizeOfStruct = 144;
        utext_openUChars(&v16, a3, a4, a6);
        (*(*v7 + 64))(v7, &v16, a6);
      }
    }

    else
    {
      v7 = 0;
    }

    icu::UnicodeString::~UnicodeString(v13, v17);
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t ubrk_openBinaryRules(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (*a5 <= 0)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    *a5 = 1;
  }

  return 0;
}

uint64_t ubrk_safeClone(uint64_t result, uint64_t a2, int *a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*a4 > 0)
  {
    return 0;
  }

  if (!result)
  {
    v7 = 1;
LABEL_18:
    *a4 = v7;
    return result;
  }

  if (a3)
  {
    v6 = *a3;
    *a3 = 1;
    if (!v6)
    {
      return 0;
    }
  }

  result = (*(*result + 32))(result);
  if (result)
  {
    v7 = -126;
  }

  else
  {
    v7 = 7;
  }

  if (result)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t ubrk_clone(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 > 0)
  {
    return 0;
  }

  if (a1)
  {
    result = (*(*a1 + 32))(a1);
    if (result)
    {
      return result;
    }

    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t ubrk_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ubrk_getLocaleByType(uint64_t a1, int a2, int *a3)
{
  if (a1)
  {
    return icu::BreakIterator::getLocaleID(a1, a2, a3);
  }

  if (*a3 <= 0)
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t ubrk_getBinaryRules(char **a1, void *a2, unsigned int a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2)
    {
      v8 = 1;
    }

    else
    {
      v8 = a3 <= 0;
    }

    v9 = !v8;
    {
      v4 = 0;
      v13 = 1;
    }

    else
    {
      LODWORD(__n) = 0;
      v12 = (*(*v11 + 200))(v11, &__n);
      v4 = __n;
      if ((__n & 0x80000000) != 0)
      {
        v4 = 0;
        v13 = 8;
      }

      else
      {
        if (!a2)
        {
          return v4;
        }

        if (__n <= a3)
        {
          memcpy(a2, v12, __n);
          return v4;
        }

        v13 = 15;
      }
    }

    *a4 = v13;
    return v4;
  }

  return 0;
}

uint64_t sub_19522DDD8(uint64_t result, int *a2)
{
  if (*a2 <= 0)
  {
    return utrie2_enum(&off_1E74035E8, 0, sub_19522DE0C, result);
  }

  return result;
}

void *ucase_getSingleton(_DWORD *a1, _DWORD *a2)
{
  *a1 = 1672;
  *a2 = 370;
  return &unk_1E74035C8;
}

uint64_t ucase_tolower(uint64_t result)
{
  v1 = result >> 11;
  if (result >> 11 <= 0x1A)
  {
    v2 = result >> 5;
LABEL_8:
    v4 = (result & 0x1F) + 4 * word_19544ED74[v2];
    goto LABEL_9;
  }

  if (!WORD1(result))
  {
    if (result >> 10 >= 0x37)
    {
      v3 = 0;
    }

    else
    {
      v3 = 320;
    }

    v2 = v3 + (result >> 5);
    goto LABEL_8;
  }

  if (WORD1(result) <= 0x10u)
  {
    if (v1 <= 0x1C0)
    {
      v2 = ((result >> 5) & 0x3F) + word_19544ED74[v1 + 2080];
      goto LABEL_8;
    }

    v4 = 13368;
  }

  else
  {
    v4 = 3596;
  }

LABEL_9:
  v5 = word_19544ED74[v4];
  if ((v5 & 8) != 0)
  {
    v6 = (&unk_19544DD80 + ((v5 >> 3) & 0x1FFE));
    v9 = *v6;
    v8 = v6 + 1;
    v7 = v9;
    if ((v5 & 2) != 0 && (v7 & 0x10) != 0)
    {
      v10 = byte_19544D620[v7 & 0xF];
      if ((v7 & 0x100) != 0)
      {
        v11 = v8[2 * v10 + 1] | (v8[2 * v10] << 16);
      }

      else
      {
        v11 = v8[v10];
      }

      if ((v7 & 0x400) != 0)
      {
        v12 = -v11;
      }

      else
      {
        v12 = v11;
      }

      return (v12 + result);
    }

    else if (v7)
    {
      if ((v7 & 0x100) != 0)
      {
        return *(&unk_19544DD80 + ((v5 >> 3) & 0x1FFE) + 4) | (*(&unk_19544DD80 + ((v5 >> 3) & 0x1FFE) + 2) << 16);
      }

      else
      {
        return *v8;
      }
    }
  }

  else if ((v5 & 2) != 0)
  {
    return (result + (v5 >> 7));
  }

  return result;
}

uint64_t ucase_toupper(uint64_t result)
{
  v1 = result >> 11;
  if (result >> 11 <= 0x1A)
  {
    v2 = result >> 5;
LABEL_8:
    v4 = (result & 0x1F) + 4 * word_19544ED74[v2];
    goto LABEL_9;
  }

  if (!WORD1(result))
  {
    if (result >> 10 >= 0x37)
    {
      v3 = 0;
    }

    else
    {
      v3 = 320;
    }

    v2 = v3 + (result >> 5);
    goto LABEL_8;
  }

  if (WORD1(result) <= 0x10u)
  {
    if (v1 <= 0x1C0)
    {
      v2 = ((result >> 5) & 0x3F) + word_19544ED74[v1 + 2080];
      goto LABEL_8;
    }

    v4 = 13368;
  }

  else
  {
    v4 = 3596;
  }

LABEL_9:
  v5 = word_19544ED74[v4];
  if ((v5 & 8) != 0)
  {
    v6 = (&unk_19544DD80 + ((v5 >> 3) & 0x1FFE));
    v9 = *v6;
    v8 = v6 + 1;
    v7 = v9;
    v10 = v9 & 0x10;
    if ((v5 & 3) != 1 || v10 == 0)
    {
      if ((v7 & 4) != 0)
      {
        v12 = byte_19544D620[v7 & 3];
        if ((v7 & 0x100) != 0)
        {
          return v8[2 * v12 + 1] | (v8[2 * v12] << 16);
        }

        else
        {
          return v8[v12];
        }
      }
    }

    else
    {
      v13 = byte_19544D620[v7 & 0xF];
      if ((v7 & 0x100) != 0)
      {
        v14 = v8[2 * v13 + 1] | (v8[2 * v13] << 16);
      }

      else
      {
        v14 = v8[v13];
      }

      if ((v7 & 0x400) != 0)
      {
        v15 = -v14;
      }

      else
      {
        v15 = v14;
      }

      return (v15 + result);
    }
  }

  else if ((v5 & 3) == 1)
  {
    return (result + (v5 >> 7));
  }

  return result;
}

uint64_t ucase_totitle(uint64_t result)
{
  v1 = result >> 11;
  if (result >> 11 <= 0x1A)
  {
    v2 = result >> 5;
LABEL_8:
    v4 = (result & 0x1F) + 4 * word_19544ED74[v2];
    goto LABEL_9;
  }

  if (!WORD1(result))
  {
    if (result >> 10 >= 0x37)
    {
      v3 = 0;
    }

    else
    {
      v3 = 320;
    }

    v2 = v3 + (result >> 5);
    goto LABEL_8;
  }

  if (WORD1(result) <= 0x10u)
  {
    if (v1 <= 0x1C0)
    {
      v2 = ((result >> 5) & 0x3F) + word_19544ED74[v1 + 2080];
      goto LABEL_8;
    }

    v4 = 13368;
  }

  else
  {
    v4 = 3596;
  }

LABEL_9:
  v5 = word_19544ED74[v4];
  if ((v5 & 8) != 0)
  {
    v6 = (&unk_19544DD80 + ((v5 >> 3) & 0x1FFE));
    v9 = *v6;
    v8 = v6 + 1;
    v7 = v9;
    v10 = v9 & 0x10;
    if ((v5 & 3) != 1 || v10 == 0)
    {
      if ((v7 & 8) != 0)
      {
        v12 = 3;
      }

      else
      {
        if ((v7 & 4) == 0)
        {
          return result;
        }

        v12 = 2;
      }

      v15 = byte_19544D620[~(-1 << v12) & v7];
      if ((v7 & 0x100) != 0)
      {
        return v8[2 * v15 + 1] | (v8[2 * v15] << 16);
      }

      else
      {
        return v8[v15];
      }
    }

    else
    {
      v13 = byte_19544D620[v7 & 0xF];
      if ((v7 & 0x100) != 0)
      {
        v14 = v8[2 * v13 + 1] | (v8[2 * v13] << 16);
      }

      else
      {
        v14 = v8[v13];
      }

      if ((v7 & 0x400) != 0)
      {
        v16 = -v14;
      }

      else
      {
        v16 = v14;
      }

      return (v16 + result);
    }
  }

  else if ((v5 & 3) == 1)
  {
    return (result + (v5 >> 7));
  }

  return result;
}

uint64_t sub_19522E1E8(uint64_t result, void *a2)
{
  v3 = result;
  v4 = result >> 11;
  if (result >> 11 <= 0x1A)
  {
    v5 = result >> 5;
LABEL_8:
    v7 = (result & 0x1F) + 4 * word_19544ED74[v5];
    goto LABEL_9;
  }

  if (!WORD1(result))
  {
    if (result >> 10 >= 0x37)
    {
      v6 = 0;
    }

    else
    {
      v6 = 320;
    }

    v5 = v6 + (result >> 5);
    goto LABEL_8;
  }

  if (WORD1(result) <= 0x10u)
  {
    if (v4 <= 0x1C0)
    {
      v5 = ((result >> 5) & 0x3F) + word_19544ED74[v4 + 2080];
      goto LABEL_8;
    }

    v7 = 13368;
  }

  else
  {
    v7 = 3596;
  }

LABEL_9:
  v8 = word_19544ED74[v7];
  if ((v8 & 8) != 0)
  {
    v13 = (&unk_19544DD80 + ((v8 >> 3) & 0x1FFE));
    v16 = *v13;
    v15 = v13 + 1;
    v14 = v16;
    if (v16 < 0)
    {
      if (result == 304)
      {
        v24 = a2[3];
        v25 = *a2;

        return v24(v25, &unk_19544D720, 2);
      }

      if (result == 73)
      {
        v10 = *a2;
        v11 = a2[1];
        v12 = 105;
        goto LABEL_24;
      }
    }

    else
    {
      if (result == 305)
      {
        return result;
      }

      if (result == 105)
      {
        v10 = *a2;
        v11 = a2[1];
        v12 = 73;
        goto LABEL_24;
      }
    }

    v17 = 0;
    v18 = v14;
    v19 = v14;
    do
    {
      if (((1 << v17) & v19) != 0)
      {
        v20 = byte_19544D620[((1 << v17) - 1) & v18];
        if ((v19 & 0x100) != 0)
        {
          v21 = v15[2 * v20 + 1] | (v15[2 * v20] << 16);
        }

        else
        {
          v21 = v15[v20];
        }

        result = (a2[1])(*a2, v21);
      }

      ++v17;
    }

    while (v17 != 4);
    if ((v19 & 0x10) != 0)
    {
      v22 = byte_19544D620[v18 & 0xF];
      if ((v19 & 0x100) != 0)
      {
        v23 = v15[2 * v22 + 1] | (v15[2 * v22] << 16);
      }

      else
      {
        v23 = v15[v22];
      }

      if ((v19 & 0x400) != 0)
      {
        v23 = -v23;
      }

      result = (a2[1])(*a2, (v23 + v3));
    }

    if ((v19 & 0x40) != 0)
    {
      v28 = byte_19544D620[v18 & 0x3F];
      v29 = &v15[v28];
      v30 = &v15[2 * v28 + 1];
      if ((v19 & 0x100) != 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29;
      }

      v32 = *v31;
      v26 = (v31 + 1);
      v27 = v32 & 0xF;
      if ((v19 & 0x80) == 0)
      {
LABEL_59:
        if (v27)
        {
          v38 = 0;
          do
          {
            v39 = v38 + 1;
            v40 = *(v26 + 2 * v38);
            if ((v40 & 0xFC00) == 0xD800)
            {
              v38 += 2;
              v40 = *(v26 + 2 * v39) + (v40 << 10) - 56613888;
            }

            else
            {
              ++v38;
            }

            result = (a2[1])(*a2, v40);
          }

          while (v38 < v27);
        }

        return result;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_59;
      }
    }

    v33 = byte_19544D620[v18 & 0x7F];
    v34 = &v15[v33];
    v35 = &v15[2 * v33 + 1];
    if ((v19 & 0x100) == 0)
    {
      v35 = v34;
    }

    v36 = *v35;
    v37 = &v35[(v36 & 0xF) + 1];
    if (v36 >> 4)
    {
      result = (a2[3])(*a2, v37, v36 >> 4);
      v37 += 2 * (v36 >> 4);
    }

    v26 = v37 + 2 * ((v36 >> 8) & 0xF) + ((v36 >> 11) & 0x1E);
    goto LABEL_59;
  }

  if (v8 >= 0x80 && (v8 & 3) != 0)
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = (v3 + (v8 >> 7));
LABEL_24:

    return v11(v10, v12);
  }

  return result;
}

uint64_t sub_19522E504(uint64_t result, void *a2)
{
  v3 = result;
  v4 = result >> 11;
  if (result >> 11 <= 0x1A)
  {
    v5 = result >> 5;
LABEL_8:
    v7 = (result & 0x1F) + 4 * word_19544ED74[v5];
    goto LABEL_9;
  }

  if (!WORD1(result))
  {
    if (result >> 10 >= 0x37)
    {
      v6 = 0;
    }

    else
    {
      v6 = 320;
    }

    v5 = v6 + (result >> 5);
    goto LABEL_8;
  }

  if (WORD1(result) <= 0x10u)
  {
    if (v4 <= 0x1C0)
    {
      v5 = ((result >> 5) & 0x3F) + word_19544ED74[v4 + 2080];
      goto LABEL_8;
    }

    v7 = 13368;
  }

  else
  {
    v7 = 3596;
  }

LABEL_9:
  v8 = word_19544ED74[v7];
  if ((v8 & 8) == 0)
  {
    if (v8 >= 0x80 && (v8 & 3) != 0)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = (v3 + (v8 >> 7));
LABEL_24:

      return v11(v10, v12);
    }

    return result;
  }

  v13 = (&unk_19544DD80 + ((v8 >> 3) & 0x1FFE));
  v16 = *v13;
  v15 = v13 + 1;
  v14 = v16;
  if (v16 < 0)
  {
    if (result == 304)
    {
      return result;
    }

    if (result == 73)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = 105;
      goto LABEL_24;
    }
  }

  else
  {
    if (result == 305)
    {
      return result;
    }

    if (result == 105)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = 73;
      goto LABEL_24;
    }
  }

  v17 = 0;
  v18 = v14;
  v19 = v14;
  do
  {
    if (((1 << v17) & v19) != 0)
    {
      v20 = byte_19544D620[((1 << v17) - 1) & v18];
      if ((v19 & 0x100) != 0)
      {
        v21 = v15[2 * v20 + 1] | (v15[2 * v20] << 16);
      }

      else
      {
        v21 = v15[v20];
      }

      result = (a2[1])(*a2, v21);
    }

    ++v17;
  }

  while (v17 != 4);
  if ((v19 & 0x10) != 0)
  {
    v22 = byte_19544D620[v18 & 0xF];
    if ((v19 & 0x100) != 0)
    {
      v23 = v15[2 * v22 + 1] | (v15[2 * v22] << 16);
    }

    else
    {
      v23 = v15[v22];
    }

    if ((v19 & 0x400) != 0)
    {
      v23 = -v23;
    }

    result = (a2[1])(*a2, (v23 + v3));
  }

  if ((v19 & 0x40) != 0)
  {
    v24 = byte_19544D620[v18 & 0x3F];
    if ((v19 & 0x100) != 0)
    {
      v30 = &v15[2 * v24];
      v28 = v30[1] & 0xF;
      v26 = (v30 + 2);
      if ((v19 & 0x80) != 0 && v28)
      {
        v29 = &v15[2 * byte_19544D620[v18 & 0x7F] + 1];
        goto LABEL_52;
      }
    }

    else
    {
      v25 = &v15[v24];
      v27 = *v25;
      v26 = (v25 + 1);
      v28 = v27 & 0xF;
      if ((v19 & 0x80) != 0 && v28)
      {
        v29 = &v15[byte_19544D620[v18 & 0x7F]];
LABEL_52:
        v26 = &v29[(*v29 & 0xFLL) + 1 + (*v29 >> 4) + ((*v29 >> 8) & 0xF)] + ((*v29 >> 11) & 0x1E);
LABEL_54:
        v31 = 0;
        do
        {
          v32 = v31 + 1;
          v33 = *(v26 + 2 * v31);
          if ((v33 & 0xFC00) == 0xD800)
          {
            v31 += 2;
            v33 = *(v26 + 2 * v32) + (v33 << 10) - 56613888;
          }

          else
          {
            ++v31;
          }

          result = (a2[1])(*a2, v33);
        }

        while (v31 < v28);
        return result;
      }
    }

    if (!v28)
    {
      return result;
    }

    goto LABEL_54;
  }

  return result;
}

uint64_t sub_19522E7D4(unsigned __int16 *a1, int a2, void *a3)
{
  v3 = 0;
  if (a1 && (a2 - 4) >= 0xFFFFFFFE)
  {
    v5 = 0;
    v6 = 73;
    v7 = 36;
    v8 = &word_19544EC02;
LABEL_4:
    v9 = a2 + 1;
    v10 = a1;
    v11 = v8;
    do
    {
      v13 = *v11++;
      v12 = v13;
      if (!v13)
      {
        v14 = 1;
LABEL_15:
        if (v14 < 0)
        {
          v6 = v7;
        }

        else
        {
          v5 = v7 + 1;
        }

        v7 = (v6 + v5) / 2;
        v8 = (&unk_19544EA90 + 10 * v7 + 10);
        if (v5 >= v6)
        {
          return 0;
        }

        goto LABEL_4;
      }

      v14 = *v10 - v12;
      if (v14)
      {
        goto LABEL_12;
      }

      ++v10;
      --v9;
    }

    while (v9 > 1);
    if (a2 == 3)
    {
      goto LABEL_20;
    }

    if (*v11)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

LABEL_12:
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_20:
    v15 = 3;
    do
    {
      v16 = v8[v15];
      if (!v8[v15])
      {
        break;
      }

      v17 = v15 + 1;
      if ((v16 & 0xFC00) == 0xD800)
      {
        v15 += 2;
        v16 = v8[v17] + (v16 << 10) - 56613888;
      }

      else
      {
        ++v15;
      }

      (a3[1])(*a3, v16);
      sub_19522E1E8(v16, a3);
    }

    while (v15 < 5);
    return 1;
  }

  return v3;
}

double icu::FullCaseFoldingIterator::FullCaseFoldingIterator(icu::FullCaseFoldingIterator *this)
{
  *&result = 0x500000049;
  *(this + 8) = xmmword_19544D610;
  *(this + 6) = 3;
  *this = &unk_19544EA9A;
  return result;
}

{
  *&result = 0x500000049;
  *(this + 8) = xmmword_19544D610;
  *(this + 6) = 3;
  *this = &unk_19544EA9A;
  return result;
}

uint64_t icu::FullCaseFoldingIterator::next(icu::FullCaseFoldingIterator *this, icu::UnicodeString *a2)
{
  v3 = *(this + 3);
  v4 = *(this + 5);
  v5 = *(this + 6);
  v6 = (*this + 2 * v3 * v4);
  if (v5 >= v3 || !v6[v5])
  {
    ++v4;
    v7 = *(this + 4);
    v6 += v3;
    *(this + 5) = v4;
    *(this + 6) = v7;
  }

  if (v4 >= *(this + 2))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 4);
  v9 = v8 & (v8 >> 31);
  v10 = 2 * v8 - 2;
  while (1)
  {
    v11 = __OFSUB__(v8, 1);
    LODWORD(v8) = v8 - 1;
    if (v8 < 0 != v11)
    {
      break;
    }

    v12 = *(v6 + v10);
    v10 -= 2;
    if (v12)
    {
      v9 = v8 + 1;
      break;
    }
  }

  v15 = v6;
  icu::UnicodeString::setTo(a2, 0, &v15, v9);
  v13 = *(this + 6);
  *(this + 6) = v13 + 1;
  result = v6[v13];
  if ((result & 0xFC00) == 0xD800)
  {
    *(this + 6) = v13 + 2;
    return v6[v13 + 1] + (result << 10) - 56613888;
  }

  return result;
}

uint64_t ucase_getType(unsigned int a1)
{
  v1 = a1 >> 11;
  if (a1 >> 11 > 0x1A)
  {
    if (HIWORD(a1))
    {
      if (HIWORD(a1) > 0x10u)
      {
        v4 = 3596;
        return word_19544ED74[v4] & 3;
      }

      if (v1 > 0x1C0)
      {
        v4 = 13368;
        return word_19544ED74[v4] & 3;
      }

      v2 = ((a1 >> 5) & 0x3F) + word_19544ED74[v1 + 2080];
    }

    else
    {
      if (a1 >> 10 >= 0x37)
      {
        v3 = 0;
      }

      else
      {
        v3 = 320;
      }

      v2 = v3 + (a1 >> 5);
    }
  }

  else
  {
    v2 = a1 >> 5;
  }

  v4 = (a1 & 0x1F) + 4 * word_19544ED74[v2];
  return word_19544ED74[v4] & 3;
}

uint64_t ucase_getTypeOrIgnorable(unsigned int a1)
{
  v1 = a1 >> 11;
  if (a1 >> 11 > 0x1A)
  {
    if (HIWORD(a1))
    {
      if (HIWORD(a1) > 0x10u)
      {
        v4 = 3596;
        return word_19544ED74[v4] & 7;
      }

      if (v1 > 0x1C0)
      {
        v4 = 13368;
        return word_19544ED74[v4] & 7;
      }

      v2 = ((a1 >> 5) & 0x3F) + word_19544ED74[v1 + 2080];
    }

    else
    {
      if (a1 >> 10 >= 0x37)
      {
        v3 = 0;
      }

      else
      {
        v3 = 320;
      }

      v2 = v3 + (a1 >> 5);
    }
  }

  else
  {
    v2 = a1 >> 5;
  }

  v4 = (a1 & 0x1F) + 4 * word_19544ED74[v2];
  return word_19544ED74[v4] & 7;
}

BOOL ucase_isSoftDotted(unsigned int a1)
{
  v1 = a1 >> 11;
  if (a1 >> 11 <= 0x1A)
  {
    v2 = a1 >> 5;
LABEL_8:
    v4 = (a1 & 0x1F) + 4 * word_19544ED74[v2];
    goto LABEL_9;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v3 = 0;
    }

    else
    {
      v3 = 320;
    }

    v2 = v3 + (a1 >> 5);
    goto LABEL_8;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    if (v1 <= 0x1C0)
    {
      v2 = ((a1 >> 5) & 0x3F) + word_19544ED74[v1 + 2080];
      goto LABEL_8;
    }

    v4 = 13368;
  }

  else
  {
    v4 = 3596;
  }

LABEL_9:
  v5 = word_19544ED74[v4];
  if ((v5 & 8) != 0)
  {
    v6 = (*(&unk_19544DD80 + ((v5 >> 3) & 0x1FFE)) >> 7) & 0x60;
  }

  else
  {
    v6 = v5 & 0x60;
  }

  return v6 == 32;
}

uint64_t ucase_isCaseSensitive(unsigned int a1)
{
  v1 = a1 >> 11;
  if (a1 >> 11 <= 0x1A)
  {
    v2 = a1 >> 5;
LABEL_8:
    v4 = (a1 & 0x1F) + 4 * word_19544ED74[v2];
    goto LABEL_9;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v3 = 0;
    }

    else
    {
      v3 = 320;
    }

    v2 = v3 + (a1 >> 5);
    goto LABEL_8;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    if (v1 <= 0x1C0)
    {
      v2 = ((a1 >> 5) & 0x3F) + word_19544ED74[v1 + 2080];
      goto LABEL_8;
    }

    v4 = 13368;
  }

  else
  {
    v4 = 3596;
  }

LABEL_9:
  v5 = word_19544ED74[v4];
  if ((v5 & 8) != 0)
  {
    LODWORD(v5) = *(&unk_19544DD80 + ((v5 >> 3) & 0x1FFE)) >> 11;
  }

  else
  {
    LOBYTE(v5) = v5 >> 4;
  }

  return v5 & 1;
}

uint64_t sub_19522ECD0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 122)
  {
    return 1;
  }

  if (v1 == 101)
  {
    goto LABEL_3;
  }

  if (v1 < 97)
  {
    if (*a1 > 0x4Bu)
    {
      if (v1 != 76)
      {
        if (v1 != 78)
        {
          if (v1 != 84)
          {
            return 1;
          }

          goto LABEL_22;
        }

        goto LABEL_36;
      }

LABEL_31:
      v6 = a1[1];
      if ((v6 & 0xFFFFFFDF) == 0x49)
      {
        v7 = a1 + 3;
        v6 = a1[2];
      }

      else
      {
        v7 = a1 + 2;
      }

      if ((v6 & 0xFFFFFFDF) != 0x54)
      {
        return 1;
      }

      v2 = *v7;
      result = 3;
      if (!v2)
      {
        return result;
      }

      goto LABEL_49;
    }

    if (v1 != 65)
    {
      if (v1 == 69)
      {
LABEL_3:
        if ((a1[1] & 0xDF) != 0x4C)
        {
          return 1;
        }

        v2 = a1[2];
        if ((v2 & 0xFFFFFFDF) == 0x4C)
        {
          v2 = a1[3];
        }

        result = 4;
        if (!v2)
        {
          return result;
        }

LABEL_49:
        if (v2 == 45 || v2 == 95)
        {
          return result;
        }

        return 1;
      }

      if (v1 != 72)
      {
        return 1;
      }

      goto LABEL_26;
    }

LABEL_33:
    if ((a1[1] & 0xDF) != 0x5A)
    {
      return 1;
    }

    v2 = a1[2];
    if ((v2 & 0xFFFFFFDF) == 0x45)
    {
      v2 = a1[3];
    }

    goto LABEL_48;
  }

  if (*a1 <= 0x6Bu)
  {
    if (v1 != 97)
    {
      if (v1 != 104)
      {
        return 1;
      }

LABEL_26:
      if ((a1[1] & 0xDF) != 0x59)
      {
        return 1;
      }

      v2 = a1[2];
      if ((v2 & 0xFFFFFFDF) == 0x45)
      {
        v2 = a1[3];
      }

      result = 6;
      if (v2)
      {
        goto LABEL_49;
      }

      return result;
    }

    goto LABEL_33;
  }

  if (v1 == 108)
  {
    goto LABEL_31;
  }

  if (v1 != 110)
  {
    if (v1 != 116)
    {
      return 1;
    }

LABEL_22:
    v4 = a1[1];
    if ((v4 & 0xFFFFFFDF) == 0x55)
    {
      v5 = a1 + 3;
      v4 = a1[2];
    }

    else
    {
      v5 = a1 + 2;
    }

    if ((v4 & 0xFFFFFFDF) != 0x52)
    {
      return 1;
    }

    v2 = *v5;
LABEL_48:
    result = 2;
    if (!v2)
    {
      return result;
    }

    goto LABEL_49;
  }

LABEL_36:
  if ((a1[1] & 0xDF) != 0x4C)
  {
    return 1;
  }

  v2 = a1[2];
  if ((v2 & 0xFFFFFFDF) == 0x44)
  {
    v2 = a1[3];
  }

  result = 5;
  if (v2)
  {
    goto LABEL_49;
  }

  return result;
}

uint64_t ucase_toFullLower(unsigned int a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, void *a4, int a5)
{
  *a4 = 0;
  v10 = a1 >> 11;
  if (a1 >> 11 <= 0x1A)
  {
    v11 = a1 >> 5;
LABEL_8:
    v13 = (a1 & 0x1F) + 4 * word_19544ED74[v11];
    goto LABEL_9;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v12 = 0;
    }

    else
    {
      v12 = 320;
    }

    v11 = v12 + (a1 >> 5);
    goto LABEL_8;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    if (v10 <= 0x1C0)
    {
      v11 = ((a1 >> 5) & 0x3F) + word_19544ED74[v10 + 2080];
      goto LABEL_8;
    }

    v13 = 13368;
  }

  else
  {
    v13 = 3596;
  }

LABEL_9:
  v14 = word_19544ED74[v13];
  if ((v14 & 8) == 0)
  {
    v15 = a1;
    if ((v14 & 2) != 0)
    {
      v15 = a1 + (v14 >> 7);
    }

    goto LABEL_12;
  }

  v17 = (&unk_19544DD80 + ((v14 >> 3) & 0x1FFE));
  v19 = v17 + 1;
  v18 = *v17;
  if ((*v17 & 0x4000) == 0)
  {
    if ((v18 & 0x80) != 0)
    {
      v20 = byte_19544D620[v18 & 0x7F];
      v21 = &v19[v20];
      v22 = &v19[2 * v20 + 1];
      if ((*v17 & 0x100) == 0)
      {
        v22 = v21;
      }

      result = *v22 & 0xF;
      if ((*v22 & 0xF) != 0)
      {
        *a4 = v22 + 1;
        return result;
      }
    }

    goto LABEL_128;
  }

  if (a5 != 3)
  {
LABEL_65:
    if (a1 == 304 && a5 == 2)
    {
      return 105;
    }

    if (a1 == 775 && a5 == 2)
    {
      if (!a2)
      {
LABEL_128:
        if ((v14 & 2) != 0 && (v18 & 0x10) != 0)
        {
          v47 = byte_19544D620[v18 & 0xF];
          if ((v18 & 0x100) != 0)
          {
            v48 = v19[2 * v47 + 1] | (v19[2 * v47] << 16);
          }

          else
          {
            v48 = v19[v47];
          }

          if ((v18 & 0x400) != 0)
          {
            v48 = -v48;
          }

          return v48 + a1;
        }

        v15 = a1;
        if (v18)
        {
          if ((v18 & 0x100) != 0)
          {
            v15 = v17[2] | (v17[1] << 16);
          }

          else
          {
            v15 = *v19;
          }
        }

LABEL_12:
        if (v15 == a1)
        {
          return ~v15;
        }

        else
        {
          return v15;
        }
      }

      v31 = -1;
      do
      {
        v32 = a2(a3, v31);
        if ((v32 & 0x80000000) != 0)
        {
          break;
        }

        if (v32 == 73)
        {
          return 0;
        }

        if (v32 >> 11 > 0x1A)
        {
          if (HIWORD(v32))
          {
            if (v32 > 0x10FFFF)
            {
              v35 = 3596;
              goto LABEL_82;
            }

            if (v32 > 0xE07FF)
            {
              v35 = 13368;
              goto LABEL_82;
            }

            v33 = ((v32 >> 5) & 0x3F) + word_19544ED74[(v32 >> 11) + 2080];
          }

          else
          {
            if (v32 >> 10 >= 0x37)
            {
              v34 = 0;
            }

            else
            {
              v34 = 320;
            }

            v33 = v34 + (v32 >> 5);
          }
        }

        else
        {
          v33 = v32 >> 5;
        }

        v35 = (v32 & 0x1F) + 4 * word_19544ED74[v33];
LABEL_82:
        v36 = word_19544ED74[v35];
        if ((v36 & 8) != 0)
        {
          LODWORD(v36) = *(&unk_19544DD80 + ((v36 >> 3) & 0x1FFE)) >> 7;
        }

        v37 = v36 & 0x60;
        v31 = 0;
      }

      while (v37 == 96);
    }

    if (a1 != 73 || a5 != 2)
    {
      goto LABEL_114;
    }

    if (!a2)
    {
      return 305;
    }

    for (i = 1; ; i = 0)
    {
      v39 = a2(a3, i);
      if ((v39 & 0x80000000) != 0)
      {
        return 305;
      }

      if (v39 == 775)
      {
        goto LABEL_114;
      }

      if (v39 >> 11 > 0x1A)
      {
        if (HIWORD(v39))
        {
          if (v39 > 0x10FFFF)
          {
            v42 = 3596;
            goto LABEL_105;
          }

          if (v39 > 0xE07FF)
          {
            v42 = 13368;
            goto LABEL_105;
          }

          v40 = ((v39 >> 5) & 0x3F) + word_19544ED74[(v39 >> 11) + 2080];
        }

        else
        {
          if (v39 >> 10 >= 0x37)
          {
            v41 = 0;
          }

          else
          {
            v41 = 320;
          }

          v40 = v41 + (v39 >> 5);
        }
      }

      else
      {
        v40 = v39 >> 5;
      }

      v42 = (v39 & 0x1F) + 4 * word_19544ED74[v40];
LABEL_105:
      v43 = word_19544ED74[v42];
      if ((v43 & 8) != 0)
      {
        LODWORD(v43) = *(&unk_19544DD80 + ((v43 >> 3) & 0x1FFE)) >> 7;
      }

      v44 = v43 & 0x60;
      result = 305;
      if (v44 != 96)
      {
        return result;
      }
    }
  }

  if (a1 > 295)
  {
    if (a1 <= 303)
    {
      if (a1 == 296)
      {
        goto LABEL_144;
      }

      if (a1 != 302)
      {
        goto LABEL_128;
      }

      goto LABEL_35;
    }

LABEL_114:
    if (a1 != 304)
    {
      if (a1 == 931 && !sub_19522F484(a2, a3, 1) && sub_19522F484(a2, a3, -1))
      {
        return 962;
      }

      goto LABEL_128;
    }

    goto LABEL_126;
  }

  if (a1 - 73 >= 2)
  {
    if (a1 == 204)
    {
LABEL_123:
      v45 = &unk_19544DD2E;
      goto LABEL_146;
    }

    if (a1 == 205)
    {
      goto LABEL_145;
    }

    goto LABEL_128;
  }

LABEL_35:
  if (!a2)
  {
LABEL_59:
    v30 = 0;
    goto LABEL_61;
  }

  v23 = 1;
  do
  {
    v24 = a2(a3, v23);
    if ((v24 & 0x80000000) != 0)
    {
      v30 = (v24 & 0x80000000) == 0;
      goto LABEL_61;
    }

    if (v24 >> 11 <= 0x1A)
    {
      v25 = v24 >> 5;
LABEL_45:
      v27 = (v24 & 0x1F) + 4 * word_19544ED74[v25];
      goto LABEL_46;
    }

    if (!HIWORD(v24))
    {
      if (v24 >> 10 >= 0x37)
      {
        v26 = 0;
      }

      else
      {
        v26 = 320;
      }

      v25 = v26 + (v24 >> 5);
      goto LABEL_45;
    }

    if (v24 <= 0x10FFFF)
    {
      if (v24 <= 0xE07FF)
      {
        v25 = ((v24 >> 5) & 0x3F) + word_19544ED74[(v24 >> 11) + 2080];
        goto LABEL_45;
      }

      v27 = 13368;
    }

    else
    {
      v27 = 3596;
    }

LABEL_46:
    v28 = word_19544ED74[v27];
    if ((v28 & 8) != 0)
    {
      v29 = (*(&unk_19544DD80 + ((v28 >> 3) & 0x1FFE)) >> 7) & 0x60;
    }

    else
    {
      v29 = v28 & 0x60;
    }

    v23 = 0;
  }

  while (v29 == 96);
  if (v29 != 64)
  {
    goto LABEL_59;
  }

  v30 = 1;
LABEL_61:
  if (a1 != 204 && !v30)
  {
    if (a1 != 205)
    {
      if (a1 != 296)
      {
        goto LABEL_65;
      }

LABEL_144:
      v45 = &unk_19544DD3A;
LABEL_146:
      *a4 = v45;
      return 3;
    }

LABEL_145:
    v45 = &unk_19544DD34;
    goto LABEL_146;
  }

  result = 0;
  if (a1 > 204)
  {
    if (a1 == 205)
    {
      goto LABEL_145;
    }

    if (a1 == 296)
    {
      goto LABEL_144;
    }

    if (a1 != 302)
    {
      return result;
    }

    v46 = &unk_19544DD28;
LABEL_127:
    *a4 = v46;
    return 2;
  }

  switch(a1)
  {
    case 0x49u:
LABEL_126:
      v46 = &unk_19544D720;
      goto LABEL_127;
    case 0x4Au:
      v46 = &unk_19544DD24;
      goto LABEL_127;
    case 0xCCu:
      goto LABEL_123;
  }

  return result;
}

BOOL sub_19522F484(_BOOL8 result, uint64_t a2, char a3)
{
  if (result)
  {
    v4 = result;
    while (1)
    {
      v5 = v4(a2, a3);
      if ((v5 & 0x80000000) != 0)
      {
        break;
      }

      TypeOrIgnorable = ucase_getTypeOrIgnorable(v5);
      a3 = 0;
      if (TypeOrIgnorable <= 3)
      {
        return TypeOrIgnorable != 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_19522F4E8(unsigned int a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, void *a4, int a5, int a6)
{
  *a4 = 0;
  v12 = a1 >> 11;
  if (a1 >> 11 <= 0x1A)
  {
    v13 = a1 >> 5;
LABEL_8:
    v15 = (a1 & 0x1F) + 4 * word_19544ED74[v13];
    goto LABEL_9;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v14 = 0;
    }

    else
    {
      v14 = 320;
    }

    v13 = v14 + (a1 >> 5);
    goto LABEL_8;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    if (v12 <= 0x1C0)
    {
      v13 = ((a1 >> 5) & 0x3F) + word_19544ED74[v12 + 2080];
      goto LABEL_8;
    }

    v15 = 13368;
  }

  else
  {
    v15 = 3596;
  }

LABEL_9:
  v16 = word_19544ED74[v15];
  if ((v16 & 8) == 0)
  {
    v17 = a1;
    if ((v16 & 3) == 1)
    {
      v17 = a1 + (v16 >> 7);
    }

LABEL_12:
    if (v17 == a1)
    {
      return ~v17;
    }

    else
    {
      return v17;
    }
  }

  v19 = (v16 >> 3) & 0x1FFE;
  v21 = &unk_19544DD80 + v19 + 2;
  v20 = *(&unk_19544DD80 + v19);
  if ((v20 & 0x4000) == 0)
  {
    if ((v20 & 0x80) != 0)
    {
      v22 = byte_19544D620[v20 & 0x7F];
      v23 = &v21[2 * v22];
      v24 = &v21[4 * v22 + 2];
      if ((v20 & 0x100) != 0)
      {
        v23 = v24;
      }

      v25 = *v23;
      v26 = v25 >> 8;
      if (!a6)
      {
        LOBYTE(v26) = v25 >> 12;
      }

      result = v26 & 0xF;
      if ((v26 & 0xF) != 0)
      {
        v27 = &v23[2 * (v25 & 0xF) + 2 * (v25 >> 4)];
        v28 = (v25 >> 8) & 0xF;
        if (a6)
        {
          v28 = 0;
        }

        *a4 = v27 + 2 * v28 + 2;
        return result;
      }
    }

    goto LABEL_65;
  }

  if (a1 == 105 && a5 == 2)
  {
    return 304;
  }

  if (a1 == 775 && a5 == 3)
  {
    if (a2)
    {
      v29 = -1;
      while (1)
      {
        v30 = a2(a3, v29);
        if ((v30 & 0x80000000) != 0)
        {
          goto LABEL_58;
        }

        if (v30 >> 11 > 0x1A)
        {
          if (HIWORD(v30))
          {
            if (v30 > 0x10FFFF)
            {
              v33 = 3596;
              goto LABEL_43;
            }

            if (v30 > 0xE07FF)
            {
              v33 = 13368;
              goto LABEL_43;
            }

            v31 = ((v30 >> 5) & 0x3F) + word_19544ED74[(v30 >> 11) + 2080];
          }

          else
          {
            if (v30 >> 10 >= 0x37)
            {
              v32 = 0;
            }

            else
            {
              v32 = 320;
            }

            v31 = v32 + (v30 >> 5);
          }
        }

        else
        {
          v31 = v30 >> 5;
        }

        v33 = (v30 & 0x1F) + 4 * word_19544ED74[v31];
LABEL_43:
        v34 = word_19544ED74[v33];
        if ((v34 & 8) != 0)
        {
          v35 = (*(&unk_19544DD80 + ((v34 >> 3) & 0x1FFE)) >> 7) & 0x60;
        }

        else
        {
          v35 = v34 & 0x60;
        }

        v29 = 0;
        if (v35 != 96)
        {
          if (v35 != 32)
          {
            goto LABEL_58;
          }

          return 0;
        }
      }
    }
  }

  else
  {
LABEL_58:
    if (a1 == 1415)
    {
      v36 = &unk_19549DB74;
      if (a6)
      {
        v37 = &unk_19549DB68;
      }

      else
      {
        v36 = &unk_19549DB7A;
        v37 = &unk_19549DB6E;
      }

      if (a5 == 6)
      {
        v36 = v37;
      }

      *a4 = v36;
      return 2;
    }
  }

LABEL_65:
  if ((v16 & 3) != 1 || (v20 & 0x10) == 0)
  {
    if (a6 || (v20 & 8) == 0)
    {
      if ((v20 & 4) == 0)
      {
        return ~a1;
      }

      v40 = 2;
    }

    else
    {
      v40 = 3;
    }

    v41 = byte_19544D620[~(-1 << v40) & v20];
    if ((v20 & 0x100) != 0)
    {
      v17 = *&v21[4 * v41 + 2] | (*&v21[4 * v41] << 16);
    }

    else
    {
      v17 = *&v21[2 * v41];
    }

    goto LABEL_12;
  }

  v38 = byte_19544D620[v20 & 0xF];
  if ((v20 & 0x100) != 0)
  {
    v39 = *&v21[4 * v38 + 2] | (*&v21[4 * v38] << 16);
  }

  else
  {
    v39 = *&v21[2 * v38];
  }

  if ((v20 & 0x400) != 0)
  {
    v39 = -v39;
  }

  return v39 + a1;
}

uint64_t ucase_fold(uint64_t result, char a2)
{
  v2 = result >> 11;
  if (result >> 11 <= 0x1A)
  {
    v3 = result >> 5;
LABEL_8:
    v5 = (result & 0x1F) + 4 * word_19544ED74[v3];
    goto LABEL_9;
  }

  if (!WORD1(result))
  {
    if (result >> 10 >= 0x37)
    {
      v4 = 0;
    }

    else
    {
      v4 = 320;
    }

    v3 = v4 + (result >> 5);
    goto LABEL_8;
  }

  if (WORD1(result) <= 0x10u)
  {
    if (v2 <= 0x1C0)
    {
      v3 = ((result >> 5) & 0x3F) + word_19544ED74[v2 + 2080];
      goto LABEL_8;
    }

    v5 = 13368;
  }

  else
  {
    v5 = 3596;
  }

LABEL_9:
  v6 = word_19544ED74[v5];
  if ((v6 & 8) == 0)
  {
    if ((v6 & 2) != 0)
    {
      return (result + (v6 >> 7));
    }

    return result;
  }

  v7 = (&unk_19544DD80 + ((v6 >> 3) & 0x1FFE));
  v10 = *v7;
  v8 = v7 + 1;
  v9 = v10;
  if (v10 < 0)
  {
    if ((a2 & 7) != 0)
    {
      if (result == 73)
      {
        return 305;
      }

      if (result != 304)
      {
        goto LABEL_13;
      }
    }

    else if (result != 73)
    {
      if (result == 304)
      {
        return result;
      }

      goto LABEL_13;
    }

    return 105;
  }

LABEL_13:
  if ((v9 & 0x200) != 0)
  {
    return result;
  }

  if ((v6 & 2) != 0 && (v9 & 0x10) != 0)
  {
    v11 = byte_19544D620[v9 & 0xF];
    if ((v9 & 0x100) != 0)
    {
      v12 = v8[2 * v11 + 1] | (v8[2 * v11] << 16);
    }

    else
    {
      v12 = v8[v11];
    }

    if ((v9 & 0x400) != 0)
    {
      v12 = -v12;
    }

    return (v12 + result);
  }

  else
  {
    if ((v9 & 2) != 0)
    {
      v13 = 1;
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        return result;
      }

      v13 = 0;
    }

    v14 = byte_19544D620[~(-1 << v13) & v9];
    if ((v9 & 0x100) != 0)
    {
      return v8[2 * v14 + 1] | (v8[2 * v14] << 16);
    }

    else
    {
      return v8[v14];
    }
  }
}

uint64_t ucase_toFullFolding(unsigned int a1, void *a2, char a3)
{
  *a2 = 0;
  v3 = a1 >> 11;
  if (a1 >> 11 <= 0x1A)
  {
    v4 = a1 >> 5;
LABEL_8:
    v6 = (a1 & 0x1F) + 4 * word_19544ED74[v4];
    goto LABEL_9;
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v5 = 0;
    }

    else
    {
      v5 = 320;
    }

    v4 = v5 + (a1 >> 5);
    goto LABEL_8;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    if (v3 <= 0x1C0)
    {
      v4 = ((a1 >> 5) & 0x3F) + word_19544ED74[v3 + 2080];
      goto LABEL_8;
    }

    v6 = 13368;
  }

  else
  {
    v6 = 3596;
  }

LABEL_9:
  v7 = word_19544ED74[v6];
  if ((v7 & 8) == 0)
  {
    LODWORD(v8) = a1;
    if ((v7 & 2) != 0)
    {
      LODWORD(v8) = a1 + (v7 >> 7);
    }

    goto LABEL_12;
  }

  v9 = (&unk_19544DD80 + ((v7 >> 3) & 0x1FFE));
  v11 = *v9;
  v10 = v9 + 1;
  v12 = v11;
  v13 = v11;
  if (v11 < 0)
  {
    if ((a3 & 7) != 0)
    {
      if (a1 == 73)
      {
        return 305;
      }

      if (a1 != 304)
      {
        goto LABEL_32;
      }
    }

    else if (a1 != 73)
    {
      if (a1 == 304)
      {
        *a2 = &unk_19544D720;
        return 2;
      }

      goto LABEL_32;
    }

    return 105;
  }

  if ((v13 & 0x80) != 0)
  {
    v14 = byte_19544D620[v12 & 0x7F];
    v15 = &v10[v14];
    v16 = &v10[2 * v14 + 1];
    if ((v13 & 0x100) != 0)
    {
      v15 = v16;
    }

    v8 = *v15 >> 4;
    if (*v15 >> 4)
    {
      *a2 = &v15[(*v15 & 0xF) + 1];
      return v8;
    }
  }

LABEL_32:
  if ((v13 & 0x200) != 0)
  {
    return ~a1;
  }

  if ((v7 & 2) == 0 || (v13 & 0x10) == 0)
  {
    if ((v13 & 2) != 0)
    {
      v19 = 1;
    }

    else
    {
      if ((v13 & 1) == 0)
      {
        return ~a1;
      }

      v19 = 0;
    }

    v8 = byte_19544D620[~(-1 << v19) & v12];
    if ((v13 & 0x100) != 0)
    {
      LODWORD(v8) = v10[2 * v8 + 1] | (v10[2 * v8] << 16);
    }

    else
    {
      LODWORD(v8) = v10[v8];
    }

LABEL_12:
    if (v8 == a1)
    {
      return ~v8;
    }

    else
    {
      return v8;
    }
  }

  v17 = byte_19544D620[v12 & 0xF];
  if ((v13 & 0x100) != 0)
  {
    v18 = v10[2 * v17 + 1] | (v10[2 * v17] << 16);
  }

  else
  {
    v18 = v10[v17];
  }

  if ((v13 & 0x400) != 0)
  {
    v18 = -v18;
  }

  return v18 + a1;
}

uint64_t sub_19522FC4C(unsigned int a1, int a2)
{
  v2 = a1;
  v3 = 0;
  if (a2 > 49)
  {
    if (a2 <= 51)
    {
      if (a2 == 50)
      {
        return ucase_getTypeOrIgnorable(a1) >> 2;
      }

      v6 = ucase_toFullLower(a1, 0, 0, &v9, 1);
    }

    else
    {
      if (a2 == 52)
      {
        v4 = 1;
      }

      else
      {
        if (a2 != 53)
        {
          if (a2 != 55)
          {
            return v3;
          }

          v3 = 1;
          if ((ucase_toFullLower(a1, 0, 0, &v9, 1) & 0x80000000) == 0 || (sub_19522F4E8(v2, 0, 0, &v9, 1, 1) & 0x80000000) == 0)
          {
            return v3;
          }
        }

        a1 = v2;
        v4 = 0;
      }

      v6 = sub_19522F4E8(a1, 0, 0, &v9, 1, v4);
    }

    return v6 >= 0;
  }

  if (a2 <= 29)
  {
    if (a2 != 22)
    {
      if (a2 != 27)
      {
        return v3;
      }

      return ucase_isSoftDotted(a1);
    }

    return ucase_getType(a1) == 1;
  }

  switch(a2)
  {
    case 30:
      return ucase_getType(a1) == 2;
    case 34:
      return ucase_isCaseSensitive(a1);
    case 49:
      return ucase_getType(a1) != 0;
  }

  return v3;
}

uint64_t ucasemap_setLocale(uint64_t result, char *a2, int *a3)
{
  if (*a3 <= 0)
  {
    v5 = result;
    if (a2 && !*a2)
    {
      *(result + 8) = 0;
LABEL_12:
      result = 1;
LABEL_14:
      *(v5 + 40) = result;
      return result;
    }

    Name = uloc_getName(a2, (result + 8), 32, a3);
    v7 = *a3;
    if (*a3 == 15 || Name == 32)
    {
      *a3 = 0;
      if (uloc_getLanguage(a2, (v5 + 8), 32, a3) == 32)
      {
        *a3 = 15;
LABEL_11:
        *(v5 + 8) = 0;
        goto LABEL_12;
      }

      v7 = *a3;
    }

    if (v7 <= 0)
    {
      result = sub_19522ECD0((v5 + 8));
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t ucasemap_open(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t *ucasemap_close(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t ucasemap_setOptions(uint64_t result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    *(result + 44) = a2;
  }

  return result;
}

uint64_t sub_195230018(uint64_t result, icu::ByteSink *a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, icu::Edits *a7, int *a8)
{
  if (*a8 <= 0)
  {
    v79 = v8;
    v80 = v9;
    if ((~a2 & 0x600) == 0)
    {
      *a8 = 1;
      return result;
    }

    v74 = result;
    v78 = 0;
    v76[0] = a4;
    v76[1] = 0;
    v77 = a5;
    if (a5 >= 1)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = v14;
        v17 = *a3;
        if (v15)
        {
          result = (*(v17 + 104))(a3);
        }

        else
        {
          result = (*(v17 + 80))(a3);
        }

        if (result >= a5)
        {
          v20 = a5;
        }

        else
        {
          v20 = result;
        }

        if (result == -1)
        {
          v14 = a5;
        }

        else
        {
          v14 = v20;
        }

        if (v16 >= v14)
        {
          goto LABEL_127;
        }

        v21 = v16 + 1;
        v22 = (a4 + v16);
        v23 = *v22;
        v24 = *v22;
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        if (v21 != v14)
        {
          if (v24 < 0xE0)
          {
            if (v24 >= 0xC2)
            {
              v27 = v24 & 0x1F;
LABEL_28:
              v28 = *(a4 + v21) ^ 0x80;
              v29 = v28 | (v27 << 6);
              if (v28 > 0x3F)
              {
                v24 = -1;
              }

              else
              {
                LODWORD(v21) = v21 + 1;
                v24 = v29;
              }

              if ((a2 & 0x200) != 0)
              {
LABEL_70:
                v31 = v16;
                v32 = v21;
                goto LABEL_71;
              }

              goto LABEL_40;
            }

LABEL_38:
            v24 = -1;
LABEL_39:
            if ((a2 & 0x200) != 0)
            {
              goto LABEL_70;
            }

            goto LABEL_40;
          }

          if (v24 <= 0xEF)
          {
            v25 = v23 & 0xF;
            if (((a00000000000000[v25] >> (*(a4 + v21) >> 5)) & 1) == 0)
            {
              goto LABEL_38;
            }

            v26 = *(a4 + v21) & 0x3F;
            goto LABEL_24;
          }

          if (v24 > 0xF4)
          {
            goto LABEL_38;
          }

          v30 = *(a4 + v21);
          if (((byte_1954555EC[v30 >> 4] >> (v24 + 16)) & 1) == 0)
          {
            goto LABEL_38;
          }

          v21 = v16 + 2;
          if (v16 + 2 != v14)
          {
            v26 = *(a4 + v21) ^ 0x80;
            if (v26 > 0x3F)
            {
              v24 = -1;
              if ((a2 & 0x200) != 0)
              {
                goto LABEL_70;
              }

              goto LABEL_40;
            }

            LODWORD(v25) = v30 & 0x3F | ((v24 - 240) << 6);
LABEL_24:
            LODWORD(v21) = v21 + 1;
            if (v21 != v14)
            {
              v27 = v26 | (v25 << 6);
              goto LABEL_28;
            }
          }
        }

        v24 = -1;
        LODWORD(v21) = v14;
        if ((a2 & 0x200) != 0)
        {
          goto LABEL_70;
        }

LABEL_40:
        v31 = v16;
        while (1)
        {
          v32 = v21;
          v33 = v24;
          if ((a2 & 0x400) == 0)
          {
            result = u_charType(v24);
            if (((1 << result) & 0xF020E2E) != 0)
            {
              goto LABEL_65;
            }

            if (result != 4)
            {
              goto LABEL_46;
            }

            v33 = v24;
          }

          result = ucase_getType(v33);
          if (result)
          {
            goto LABEL_65;
          }

LABEL_46:
          if (v32 == v14)
          {
            break;
          }

          v34 = v32 + 1;
          v35 = *(a4 + v32);
          v36 = *(a4 + v32);
          v31 = v32;
          LODWORD(v21) = v32 + 1;
          v24 = v36;
          if (v35 < 0)
          {
            v24 = -1;
            v31 = v32;
            LODWORD(v21) = v14;
            if (v34 != v14)
            {
              if (v36 < 0xE0)
              {
                v31 = v32;
                LODWORD(v21) = v32 + 1;
                if (v36 >= 0xC2)
                {
                  v40 = v36 & 0x1F;
                  LODWORD(v21) = v32 + 1;
                  goto LABEL_57;
                }
              }

              else if (v36 > 0xEF)
              {
                v31 = v32;
                LODWORD(v21) = v32 + 1;
                if (v36 <= 0xF4)
                {
                  v42 = v36 - 240;
                  v43 = *(a4 + v34);
                  v31 = v32;
                  LODWORD(v21) = v32 + 1;
                  if ((byte_1954555EC[v43 >> 4] >> v42))
                  {
                    v34 = v32 + 2;
                    v31 = v32;
                    LODWORD(v21) = v14;
                    if (v32 + 2 != v14)
                    {
                      v38 = *(a4 + v34) ^ 0x80;
                      v31 = v32;
                      LODWORD(v21) = v32 + 2;
                      if (v38 <= 0x3F)
                      {
                        LODWORD(v37) = v43 & 0x3F | (v42 << 6);
                        goto LABEL_53;
                      }
                    }
                  }
                }
              }

              else
              {
                v37 = v35 & 0xF;
                v31 = v32;
                LODWORD(v21) = v32 + 1;
                if ((a00000000000000[v37] >> (*(a4 + v34) >> 5)))
                {
                  v38 = *(a4 + v34) & 0x3F;
LABEL_53:
                  v39 = v34 + 1;
                  v31 = v32;
                  LODWORD(v21) = v14;
                  if (v39 != v14)
                  {
                    v40 = v38 | (v37 << 6);
                    LODWORD(v21) = v39;
LABEL_57:
                    v41 = *(a4 + v21) ^ 0x80;
                    v31 = v32;
                    if (v41 <= 0x3F)
                    {
                      v24 = v41 | (v40 << 6);
                      LODWORD(v21) = v21 + 1;
                      v31 = v32;
                    }
                  }
                }
              }
            }
          }
        }

        v32 = v14;
        v31 = v14;
LABEL_65:
        v44 = (v31 - v16);
        if (v31 > v16)
        {
          if (*a8 <= 0)
          {
            if (v44 >= 1)
            {
              result = icu::ByteSinkUtil::appendNonEmptyUnchanged((a4 + v16), v44, a6, a2, a7, v19);
            }

            goto LABEL_71;
          }

          return result;
        }

LABEL_71:
        if (v32 <= v31)
        {
          goto LABEL_127;
        }

        if ((v24 & 0x80000000) != 0)
        {
          if (*a8 > 0)
          {
            return result;
          }

          if (v32 - v31 >= 1)
          {
            result = icu::ByteSinkUtil::appendNonEmptyUnchanged((a4 + v31), (v32 - v31), a6, a2, a7, v19);
          }

          goto LABEL_86;
        }

        HIDWORD(v77) = v31;
        LODWORD(v78) = v32;
        v75 = 0;
        v45 = ucase_toFullTitle(v24, sub_1952307FC, v76, &v75, v74);
        v24 = v45;
        if ((v45 & 0x80000000) != 0)
        {
          result = a7;
          if (a7)
          {
            result = icu::Edits::addUnchanged(a7, v32 - v31);
          }

          if ((a2 & 0x4000) != 0)
          {
            goto LABEL_86;
          }

          v46 = ~v24;
          v47 = (v32 - v31);
          v48 = a6;
          v49 = 0;
LABEL_85:
          result = icu::ByteSinkUtil::appendCodePoint(v47, v46, v48, v49, v18);
          goto LABEL_86;
        }

        v18 = a7;
        if (v45 >= 0x20)
        {
          v47 = (v32 - v31);
          v46 = v24;
          v48 = a6;
          v49 = a7;
          goto LABEL_85;
        }

        result = icu::ByteSinkUtil::appendChange(v32 - v31, v75, v45, a6, a7, a8);
        if (!result)
        {
          return result;
        }

LABEL_86:
        if (v74 != 5)
        {
          goto LABEL_119;
        }

        if (v32 >= v14)
        {
          goto LABEL_119;
        }

        v50 = v24 ^ (v24 >> 31);
        if (v50 != 205 && v50 != 73)
        {
          goto LABEL_119;
        }

        v51 = v32 + 1;
        v52 = *(a4 + v32);
        if (v50 != 73)
        {
          v54 = 0;
LABEL_97:
          v55 = 1;
LABEL_99:
          if (v52 == 106)
          {
            v56 = 1;
            if (v55)
            {
              goto LABEL_102;
            }
          }

          else
          {
            if (v52 != 74)
            {
              goto LABEL_119;
            }

            v56 = 0;
            v54 = v54 | 1;
            if (v55)
            {
LABEL_102:
              v57 = v51 + 1;
              if (v57 >= v14 || *(a4 + v51) != 204 || *(a4 + v57) != 129)
              {
                goto LABEL_119;
              }

              LODWORD(v51) = v51 + 2;
              if (v56)
              {
                v54 = v54;
              }

              else
              {
                v54 = (v54 + 2);
              }

              if (v56)
              {
                v58 = 2;
              }

              else
              {
                v58 = 0;
              }

              v70 = v58;
LABEL_114:
              if (v51 < v14)
              {
                v69 = v54;
                v59 = *(a4 + v51);
                v60 = *(a4 + v51);
                if (v59 < 0)
                {
                  v61 = v51 + 1;
                  if (v61 == v14)
                  {
                    goto LABEL_117;
                  }

                  if (v60 < 0xE0)
                  {
                    if (v60 < 0xC2)
                    {
                      goto LABEL_117;
                    }

                    v67 = v60 & 0x1F;
LABEL_145:
                    v68 = *(a4 + v61) ^ 0x80;
                    if (v68 > 0x3F)
                    {
                      goto LABEL_117;
                    }

                    v60 = v68 | (v67 << 6);
                  }

                  else
                  {
                    if (v60 <= 0xEF)
                    {
                      v65 = v59 & 0xF;
                      if ((a00000000000000[v65] >> (*(a4 + v61) >> 5)))
                      {
                        v66 = *(a4 + v61) & 0x3F;
                        goto LABEL_141;
                      }

                      goto LABEL_117;
                    }

                    if (v60 <= 0xF4)
                    {
                      v61 = *(a4 + v61);
                      if (((byte_1954555EC[v61 >> 4] >> (v60 + 16)) & 1) != 0 && v51 + 2 != v14)
                      {
                        v66 = *(a4 + v51 + 2) ^ 0x80;
                        if (v66 <= 0x3F)
                        {
                          LODWORD(v65) = v61 & 0x3F | ((v60 - 240) << 6);
                          LODWORD(v61) = v51 + 2;
LABEL_141:
                          LODWORD(v61) = v61 + 1;
                          if (v61 != v14)
                          {
                            v67 = v66 | (v65 << 6);
                            goto LABEL_145;
                          }
                        }
                      }
                    }

LABEL_117:
                    v60 = -1;
                  }
                }

                result = u_charType(v60);
                v54 = v69;
                if (((1 << result) & 0x1C0) != 0)
                {
                  goto LABEL_119;
                }
              }

              if (*a8 <= 0 && v54)
              {
                v63 = v54;
                result = icu::ByteSinkUtil::appendNonEmptyUnchanged((a4 + v32), v54, a6, a2, a7, v19);
                LODWORD(v54) = v63;
              }

              v64 = v54 + v32;
              if (v56)
              {
                result = icu::ByteSinkUtil::appendCodePoint(1, 0x4Au, a6, a7, v18);
                ++v64;
              }

              if (v70 && *a8 <= 0)
              {
                result = icu::ByteSinkUtil::appendNonEmptyUnchanged((a4 + v64), v70, a6, a2, a7, v19);
              }

              goto LABEL_120;
            }
          }

          v70 = 0;
          goto LABEL_114;
        }

        if (v52 != 204)
        {
          v55 = 0;
          v54 = 0;
          goto LABEL_99;
        }

        if (v51 < v14 && *(a4 + v51) == 129)
        {
          v53 = v32 + 2;
          if (v53 != v14)
          {
            LODWORD(v51) = v32 + 3;
            v52 = *(a4 + v53);
            v54 = 2;
            goto LABEL_97;
          }
        }

LABEL_119:
        LODWORD(v51) = v32;
LABEL_120:
        v62 = (v14 - v51);
        if (v14 > v51)
        {
          if ((a2 & 0x100) != 0)
          {
            if (*a8 > 0)
            {
              return result;
            }

            if (v62 >= 1)
            {
              result = icu::ByteSinkUtil::appendNonEmptyUnchanged((a4 + v51), v62, a6, a2, a7, v19);
            }
          }

          else
          {
            result = sub_195230978(v74, a2, a4, v76, v51, v14, a6, a7, a8);
            if (*a8 > 0)
            {
              return result;
            }
          }
        }

LABEL_127:
        v15 = 1;
      }

      while (v14 < a5);
    }
  }

  return result;
}

uint64_t sub_1952307FC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    v2 = *(a1 + 20);
    *(a1 + 12) = v2;
    *(a1 + 28) = a2;
    goto LABEL_5;
  }

  if (a2)
  {
    v2 = *(a1 + 24);
    *(a1 + 12) = v2;
    *(a1 + 28) = a2;
    goto LABEL_9;
  }

  v2 = *(a1 + 12);
  if (*(a1 + 28) < 0)
  {
LABEL_5:
    v3 = *(a1 + 8);
    if (v3 >= v2)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = *a1;
    v5 = v2 - 1;
    *(a1 + 12) = v5;
    v6 = v4[v5];
    v7 = v6;
    if (v6 < 0)
    {
      return utf8_prevCharSafeBody(v4, v3, (a1 + 12), v6, -1);
    }

    return v7;
  }

LABEL_9:
  v9 = *(a1 + 16);
  if (v2 >= v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *a1;
  v11 = v2;
  v12 = v2 + 1;
  *(a1 + 12) = v12;
  v13 = v10[v2];
  v7 = v13;
  if (v13 < 0)
  {
    if (v12 != v9)
    {
      if (v13 < 0xE0u)
      {
        if (v13 < 0xC2u)
        {
          return 0xFFFFFFFFLL;
        }

        v16 = v13 & 0x1F;
      }

      else
      {
        if (v13 > 0xEFu)
        {
          if (v13 > 0xF4u)
          {
            return 0xFFFFFFFFLL;
          }

          v12 = v10[v12];
          if (((byte_1954555EC[v12 >> 4] >> (v13 + 16)) & 1) == 0)
          {
            return 0xFFFFFFFFLL;
          }

          v18 = v11 + 2;
          *(a1 + 12) = v11 + 2;
          if (v11 + 2 == v9)
          {
            return 0xFFFFFFFFLL;
          }

          v15 = v10[v18] ^ 0x80;
          if (v15 > 0x3F)
          {
            return 0xFFFFFFFFLL;
          }

          LODWORD(v14) = v12 & 0x3F | ((v13 - 240) << 6);
          LODWORD(v12) = v18;
        }

        else
        {
          v14 = v13 & 0xF;
          if (((a00000000000000[v14] >> (v10[v12] >> 5)) & 1) == 0)
          {
            return 0xFFFFFFFFLL;
          }

          v15 = v10[v12] & 0x3F;
        }

        LODWORD(v12) = v12 + 1;
        *(a1 + 12) = v12;
        if (v12 == v9)
        {
          return 0xFFFFFFFFLL;
        }

        v16 = v15 | (v14 << 6);
      }

      v17 = v10[v12] ^ 0x80;
      if (v17 <= 0x3F)
      {
        v7 = v17 | (v16 << 6);
        *(a1 + 12) = v12 + 1;
        return v7;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t sub_195230978(int a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, icu::Edits *a8, int *a9)
{
  if (a1 == 1)
  {
    goto LABEL_4;
  }

  if (a1 < 0)
  {
    if ((a2 & 7) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v13 = &unk_19544D8A4;
    goto LABEL_7;
  }

  if ((a1 & 0x7FFFFFFE) == 2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v13 = &unk_19544D724;
LABEL_7:
  v58 = v13;
  result = sub_19522DE48();
  v17 = *a9;
  if (*a9 > 0 || a5 >= a6)
  {
    LODWORD(v19) = a5;
    goto LABEL_103;
  }

  v53 = result;
  v20 = a5;
  while (1)
  {
    while (1)
    {
      v19 = v20 + 1;
      v21 = (a3 + v20);
      v22 = *v21;
      LODWORD(v23) = *v21;
      if (*v21 < 0)
      {
        break;
      }

      v24 = v58[v22];
      if (!v58[v22])
      {
        goto LABEL_88;
      }

      if (v24 != 128)
      {
        v32 = (v20 - a5);
        if (v32 >= 1)
        {
          icu::ByteSinkUtil::appendNonEmptyUnchanged((a3 + a5), v32, a7, a2, a8, v16);
        }

        v60 = v24 + v22;
        result = (*(*a7 + 16))(a7, &v60, 1);
        if (!a8)
        {
          goto LABEL_36;
        }

        v29 = a8;
        v30 = 1;
        v31 = 1;
        goto LABEL_35;
      }

LABEL_16:
      v59 = 0;
      if (a1 < 0)
      {
        result = ucase_toFullFolding(v23, &v59, a2);
      }

      else
      {
        *(a4 + 20) = v20;
        *(a4 + 24) = v19;
        result = ucase_toFullLower(v23, sub_1952307FC, a4, &v59, a1);
      }

      v41 = result;
      if ((result & 0x80000000) == 0)
      {
        if (*a9 <= 0)
        {
          v42 = (v20 - a5);
          if (v42 >= 1)
          {
            icu::ByteSinkUtil::appendNonEmptyUnchanged((a3 + a5), v42, a7, a2, a8, v16);
          }
        }

        v43 = (v19 - v20);
        if (v41 > 0x1F)
        {
          result = icu::ByteSinkUtil::appendCodePoint(v43, v41, a7, a8, v15);
        }

        else
        {
          result = icu::ByteSinkUtil::appendChange(v43, v59, v41, a7, a8, a9);
        }

        a5 = v19;
      }

      v17 = *a9;
      if (*a9 <= 0)
      {
        v20 = v19;
        if (v19 < a6)
        {
          continue;
        }
      }

      goto LABEL_103;
    }

    if (v23 > 0xE2)
    {
      break;
    }

    if ((v23 + 62) > 3u || v19 >= a6)
    {
      goto LABEL_44;
    }

    v26 = *(a3 + v19) ^ 0x80;
    if (v26 > 0x3F)
    {
      goto LABEL_44;
    }

    LODWORD(v19) = v20 + 2;
    v23 = ((v23 << 6) - 12288) | v26;
    v27 = v58[v23];
    if (!v58[v23])
    {
      goto LABEL_88;
    }

    if (v27 == 128)
    {
      goto LABEL_16;
    }

    v28 = (v20 - a5);
    if (v28 >= 1)
    {
      icu::ByteSinkUtil::appendNonEmptyUnchanged((a3 + a5), v28, a7, a2, a8, v16);
    }

    result = icu::ByteSinkUtil::appendTwoBytes(v23 + v27, a7);
    if (a8)
    {
      v29 = a8;
      v30 = 2;
      v31 = 2;
LABEL_35:
      result = icu::Edits::addReplace(v29, v30, v31);
    }

LABEL_36:
    v20 = v19;
    a5 = v19;
LABEL_89:
    v17 = *a9;
    if (*a9 > 0 || v20 >= a6)
    {
      LODWORD(v19) = v20;
      goto LABEL_103;
    }
  }

  v34 = (v22 < 0xEA || (v22 + 21) <= 1u) && v20 + 3 <= a6;
  if (v34 && *(a3 + v19) <= -65 && v21[2] < -64)
  {
    v20 += 3;
    goto LABEL_89;
  }

LABEL_44:
  if (v19 == a6)
  {
    goto LABEL_102;
  }

  if (v23 < 0xE0)
  {
    if (v22 < 0xC2)
    {
      goto LABEL_88;
    }

    v37 = v23 & 0x1F;
    goto LABEL_53;
  }

  if (v22 <= 0xEF)
  {
    v35 = v22 & 0xF;
    if (((a00000000000000[v22 & 0xF] >> (*(a3 + v19) >> 5)) & 1) == 0)
    {
      goto LABEL_88;
    }

    v36 = *(a3 + v19) & 0x3F;
    goto LABEL_49;
  }

  if (v22 > 0xF4)
  {
    goto LABEL_88;
  }

  v44 = *(a3 + v19);
  if (((byte_1954555EC[v44 >> 4] >> (v23 + 16)) & 1) == 0)
  {
    goto LABEL_88;
  }

  v19 = v20 + 2;
  if (v20 + 2 != a6)
  {
    v36 = *(a3 + v19) ^ 0x80;
    if (v36 > 0x3F)
    {
      goto LABEL_88;
    }

    v35 = v44 & 0x3F | ((v23 - 240) << 6);
LABEL_49:
    LODWORD(v19) = v19 + 1;
    if (v19 == a6)
    {
      goto LABEL_102;
    }

    v37 = v36 | (v35 << 6);
LABEL_53:
    v38 = *(a3 + v19) ^ 0x80;
    if (v38 > 0x3F)
    {
      goto LABEL_88;
    }

    LODWORD(v23) = v38 | (v37 << 6);
    v39 = *v53;
    if (v37 <= 0x35F)
    {
      v40 = v23 >> 5;
      goto LABEL_81;
    }

    if (v37 > 0x3FF)
    {
      if (v37 >> 10 < 0x11)
      {
        if (v23 < *(v53 + 44))
        {
          v40 = ((v23 >> 5) & 0x3F) + *(v39 + 2 * (v37 >> 5) + 4160);
          goto LABEL_81;
        }

        v46 = *(v53 + 48);
      }

      else
      {
        v46 = *(v53 + 24) + 128;
      }
    }

    else
    {
      if (v37 >= 0x370)
      {
        v45 = 0;
      }

      else
      {
        v45 = 320;
      }

      v40 = v45 + (v23 >> 5);
LABEL_81:
      v46 = (v38 & 0x1F) + 4 * *(v39 + 2 * v40);
    }

    LODWORD(v19) = v19 + 1;
    v47 = *(v39 + 2 * v46);
    if ((v47 & 8) != 0)
    {
      goto LABEL_16;
    }

    if (v47 < 0x80 || (v47 & 2) == 0)
    {
LABEL_88:
      v20 = v19;
      goto LABEL_89;
    }

    v50 = (v20 - a5);
    if (v50 >= 1)
    {
      icu::ByteSinkUtil::appendNonEmptyUnchanged((a3 + a5), v50, a7, a2, a8, v16);
    }

    result = icu::ByteSinkUtil::appendCodePoint((v19 - v20), v23 + (v47 >> 7), a7, a8, v15);
    goto LABEL_36;
  }

LABEL_102:
  v17 = *a9;
  LODWORD(v19) = a6;
LABEL_103:
  v51 = (v19 - a5);
  if (v17 <= 0 && v51 >= 1)
  {
    return icu::ByteSinkUtil::appendNonEmptyUnchanged((a3 + a5), v51, a7, a2, a8, v16);
  }

  return result;
}

BOOL sub_195230E7C(uint64_t a1, int a2, int a3)
{
  while (a2 < a3)
  {
    v5 = a2 + 1;
    v6 = *(a1 + a2);
    v7 = *(a1 + a2);
    if (v6 < 0)
    {
      if (v5 != a3)
      {
        if (v7 < 0xE0)
        {
          if (v7 >= 0xC2)
          {
            v10 = v7 & 0x1F;
LABEL_13:
            v11 = *(a1 + v5) ^ 0x80;
            v12 = v11 | (v10 << 6);
            if (v11 > 0x3F)
            {
              v7 = -1;
            }

            else
            {
              LODWORD(v5) = v5 + 1;
              v7 = v12;
            }

            goto LABEL_22;
          }

LABEL_21:
          v7 = -1;
          goto LABEL_22;
        }

        if (v7 > 0xEF)
        {
          if (v7 > 0xF4)
          {
            goto LABEL_21;
          }

          v13 = *(a1 + v5);
          if (((byte_1954555EC[v13 >> 4] >> (v7 + 16)) & 1) == 0)
          {
            goto LABEL_21;
          }

          v5 = a2 + 2;
          if (a2 + 2 == a3)
          {
            goto LABEL_4;
          }

          v9 = *(a1 + v5) ^ 0x80;
          if (v9 > 0x3F)
          {
            v7 = -1;
            goto LABEL_22;
          }

          LODWORD(v8) = v13 & 0x3F | ((v7 - 240) << 6);
        }

        else
        {
          v8 = v6 & 0xF;
          if (((a00000000000000[v8] >> (*(a1 + v5) >> 5)) & 1) == 0)
          {
            goto LABEL_21;
          }

          v9 = *(a1 + v5) & 0x3F;
        }

        LODWORD(v5) = v5 + 1;
        if (v5 != a3)
        {
          v10 = v9 | (v8 << 6);
          goto LABEL_13;
        }
      }

LABEL_4:
      v7 = -1;
      LODWORD(v5) = a3;
    }

LABEL_22:
    TypeOrIgnorable = ucase_getTypeOrIgnorable(v7);
    a2 = v5;
    if ((TypeOrIgnorable & 4) == 0)
    {
      return TypeOrIgnorable != 0;
    }
  }

  return 0;
}

uint64_t sub_195230FD4(uint64_t result, uint64_t a2, int a3, uint64_t a4, icu::Edits *a5, int *a6)
{
  v66 = result;
  if (a3 >= 1)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    v12 = (result & 0x4000) == 0 && a5 == 0;
    v67 = v12;
    do
    {
      v71 = v10;
      v13 = v10 + 1;
      v14 = (a2 + v10);
      LODWORD(v10) = v10 + 1;
      v15 = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      if (v10 == a3)
      {
LABEL_11:
        v15 = -1;
        LODWORD(v10) = a3;
        goto LABEL_32;
      }

      if (v15 < 0xE0)
      {
        if (v15 < 0xC2)
        {
          goto LABEL_31;
        }

        v18 = v15 & 0x1F;
      }

      else
      {
        if (v15 > 0xEF)
        {
          if (v15 > 0xF4)
          {
            goto LABEL_31;
          }

          v21 = *(a2 + v13);
          if (((byte_1954555EC[v21 >> 4] >> (v15 + 16)) & 1) == 0)
          {
            goto LABEL_31;
          }

          v10 = v71 + 2;
          if (v71 + 2 == a3)
          {
            goto LABEL_11;
          }

          v17 = *(a2 + v10) ^ 0x80;
          if (v17 > 0x3F)
          {
LABEL_31:
            v15 = -1;
            goto LABEL_32;
          }

          LODWORD(v16) = v21 & 0x3F | ((v15 - 240) << 6);
        }

        else
        {
          v16 = *v14 & 0xF;
          if (((a00000000000000[v16] >> (*(a2 + v13) >> 5)) & 1) == 0)
          {
            goto LABEL_31;
          }

          v17 = *(a2 + v13) & 0x3F;
        }

        LODWORD(v10) = v10 + 1;
        if (v10 == a3)
        {
          goto LABEL_11;
        }

        v18 = v17 | (v16 << 6);
      }

      v19 = *(a2 + v10) ^ 0x80;
      v20 = v19 | (v18 << 6);
      if (v19 <= 0x3F)
      {
        v15 = v20;
      }

      else
      {
        v15 = -1;
      }

      if (v19 <= 0x3F)
      {
        LODWORD(v10) = v10 + 1;
      }

LABEL_32:
      TypeOrIgnorable = ucase_getTypeOrIgnorable(v15);
      v23 = v9 & 1;
      v24 = TypeOrIgnorable != 0;
      if ((TypeOrIgnorable & 4) != 0)
      {
        v24 = v9 & 1;
      }

      v72 = v24;
      result = sub_195299D08(v15);
      if (result)
      {
        v26 = result;
        v27 = result & 0x3FF;
        v70 = v14;
        v68 = v13;
        if ((result & 0x1000) != 0 && (v9 & 6) != 0 && (v27 == 933 || v27 == 921))
        {
          if ((v9 & 4) != 0)
          {
            v28 = 0x8000;
          }

          else
          {
            v28 = 0x10000;
          }

          v26 = result | v28;
        }

        v29 = (v26 >> 13) & 1;
        if (v10 < a3)
        {
          v30 = v26;
          while (1)
          {
            v31 = v10 + 1;
            v32 = *(a2 + v10);
            v33 = *(a2 + v10);
            if (v32 < 0)
            {
              break;
            }

LABEL_65:
            v40 = sub_195299D80(v33);
            if (!v40)
            {
              goto LABEL_75;
            }

            v30 |= v40;
            v29 += (v40 >> 13) & 1;
            LODWORD(v10) = v31;
            if (v31 >= a3)
            {
              goto LABEL_76;
            }
          }

          if (v31 != a3)
          {
            if (v33 < 0xE0)
            {
              if (v33 >= 0xC2)
              {
                v36 = v33 & 0x1F;
LABEL_56:
                v37 = *(a2 + v31) ^ 0x80;
                v38 = v37 | (v36 << 6);
                if (v37 > 0x3F)
                {
                  v33 = -1;
                }

                else
                {
                  LODWORD(v31) = v31 + 1;
                  v33 = v38;
                }

                goto LABEL_65;
              }

LABEL_64:
              v33 = -1;
              goto LABEL_65;
            }

            if (v33 > 0xEF)
            {
              if (v33 > 0xF4)
              {
                goto LABEL_64;
              }

              v39 = *(a2 + v31);
              if (((byte_1954555EC[v39 >> 4] >> (v33 + 16)) & 1) == 0)
              {
                goto LABEL_64;
              }

              v31 = v10 + 2;
              if (v10 + 2 == a3)
              {
                goto LABEL_47;
              }

              v35 = *(a2 + v31) ^ 0x80;
              if (v35 > 0x3F)
              {
                v33 = -1;
                goto LABEL_65;
              }

              LODWORD(v34) = v39 & 0x3F | ((v33 - 240) << 6);
            }

            else
            {
              v34 = v32 & 0xF;
              if (((a00000000000000[v34] >> (*(a2 + v31) >> 5)) & 1) == 0)
              {
                goto LABEL_64;
              }

              v35 = *(a2 + v31) & 0x3F;
            }

            LODWORD(v31) = v31 + 1;
            if (v31 != a3)
            {
              v36 = v35 | (v34 << 6);
              goto LABEL_56;
            }
          }

LABEL_47:
          v33 = -1;
          LODWORD(v31) = a3;
          goto LABEL_65;
        }

        v30 = v26;
LABEL_75:
        LODWORD(v31) = v10;
LABEL_76:
        if ((v26 & 0x4000) != 0)
        {
          v45 = 4;
        }

        else
        {
          v45 = 2;
        }

        if ((v30 & 0xD000) == 0x5000)
        {
          v46 = v45;
        }

        else
        {
          v46 = 0;
        }

        if (v27 != 919 || (v30 & 0x4000) == 0 || v29 || v23 || sub_195230E7C(a2, v31, a3))
        {
          if ((v30 & 0x8000) == 0)
          {
            LOBYTE(v47) = 1;
            goto LABEL_89;
          }

          v48 = v72;
          if (v27 == 933)
          {
            v30 = 0;
            LOBYTE(v47) = 1;
            v27 = 939;
          }

          else if (v27 == 921)
          {
            v30 = 0;
            LOBYTE(v47) = 1;
            v27 = 938;
          }

          else
          {
            LOBYTE(v47) = 1;
          }
        }

        else
        {
          v47 = (v26 >> 14) & 1;
          if ((v26 & 0x4000) != 0)
          {
            v27 = 905;
          }

          else
          {
            v27 = 919;
          }

LABEL_89:
          v48 = v72;
        }

        v44 = v46 | v48;
        if (v67)
        {
          v50 = v30 & 0x18000;
          goto LABEL_129;
        }

        v51 = v71 + 2;
        v53 = v71 + 2 > v31 || *v70 != ((v27 >> 6) | 0xC0) || *(a2 + v68) != (v27 & 0x3F | 0x80) || v29 > 0;
        v50 = v30 & 0x18000;
        if (v50)
        {
          v54 = v71 + 4 > v31 || *(a2 + v51) != 204 || v70[3] != 136;
          v53 |= v54;
          LODWORD(v51) = v71 + 4;
        }

        if ((v47 & 1) == 0)
        {
          v55 = v51 + 2;
          v57 = v51 + 2 > v31 || (v56 = (a2 + v51), *v56 != 204) || v56[1] != 129;
          v53 |= v57;
          LODWORD(v51) = v55;
        }

        v58 = v31 - v71;
        v59 = v51 - v71 + 2 * v29;
        if (v31 - v71 != v59)
        {
          v53 = 1;
        }

        if (v53)
        {
          if (a5)
          {
            icu::Edits::addReplace(a5, v58, v59);
          }

          goto LABEL_129;
        }

        result = a5;
        if (a5)
        {
          result = icu::Edits::addUnchanged(a5, v58);
        }

        if ((v66 & 0x4000) == 0)
        {
LABEL_129:
          result = icu::ByteSinkUtil::appendTwoBytes(v27, a4);
          if (v50)
          {
            result = (*(*a4 + 16))(a4, "̈", 2);
          }

          if ((v47 & 1) == 0)
          {
            result = (*(*a4 + 16))(a4, "́", 2);
          }

          if (v29 >= 1)
          {
            v60 = v29 + 1;
            do
            {
              result = (*(*a4 + 16))(a4, "Ι", 2);
              --v60;
            }

            while (v60 > 1);
          }
        }

        LODWORD(v10) = v31;
        goto LABEL_137;
      }

      if ((v15 & 0x80000000) != 0)
      {
        v44 = v72;
        if (*a6 > 0)
        {
          return result;
        }

        v49 = (v10 - v71);
        if (v49 >= 1)
        {
          result = icu::ByteSinkUtil::appendNonEmptyUnchanged(v14, v49, a4, v66, a5, v25);
        }

        goto LABEL_137;
      }

      v73 = 0;
      v41 = ucase_toFullUpper(v15, 0, 0, &v73, 4);
      v43 = v41;
      v44 = v72;
      if ((v41 & 0x80000000) != 0)
      {
        result = a5;
        if (a5)
        {
          result = icu::Edits::addUnchanged(a5, v10 - v71);
        }

        if ((v66 & 0x4000) != 0)
        {
          goto LABEL_137;
        }

        v61 = ~v43;
        v62 = (v10 - v71);
        v63 = a4;
        v64 = 0;
      }

      else
      {
        v42 = a5;
        if (v41 < 0x20)
        {
          result = icu::ByteSinkUtil::appendChange(v10 - v71, v73, v41, a4, a5, a6);
          if (!result)
          {
            return result;
          }

          goto LABEL_137;
        }

        v62 = (v10 - v71);
        v61 = v43;
        v63 = a4;
        v64 = a5;
      }

      result = icu::ByteSinkUtil::appendCodePoint(v62, v61, v63, v64, v42);
LABEL_137:
      v9 = v44;
    }

    while (v10 < a3);
  }

  return result;
}

uint64_t sub_195231680(uint64_t result, uint64_t a2, uint64_t a3, char *__s, size_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, char *, size_t, uint64_t, icu::Edits *, UErrorCode *), uint64_t a7, icu::Edits *this, UErrorCode *a9)
{
  if (*a9 <= 0)
  {
    v9 = a5;
    if (__s)
    {
      v11 = 1;
    }

    else
    {
      v11 = a5 == 0;
    }

    v12 = !v11;
    if (a5 < -1 || v12)
    {
      *a9 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v18 = result;
      if (a5 == -1)
      {
        v9 = strlen(__s);
      }

      if ((a2 & 0x2000) == 0 && this)
      {
        icu::Edits::reset(this);
      }

      a6(v18, a2, a3, __s, v9, a7, this, a9);
      result = (*(*a7 + 32))(a7);
      if (this && *a9 <= 0)
      {

        return icu::Edits::copyErrorTo(this, a9);
      }
    }
  }

  return result;
}

uint64_t sub_1952317C0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5, char *__s, size_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, char *, size_t, __int128 *, icu::Edits *, int *), icu::Edits *a9, int *a10)
{
  if (*a10 > 0)
  {
    return 0;
  }

  if (a5 < 0)
  {
    goto LABEL_6;
  }

  v13 = a7;
  if (!a4)
  {
    if (a5)
    {
      goto LABEL_6;
    }
  }

  v20 = __s || a7 == 0;
  v21 = !v20;
  if (a7 < -1 || v21)
  {
    goto LABEL_6;
  }

  if (a7 == -1)
  {
    v13 = strlen(__s);
  }

  if (a4 && (__s >= a4 && &a4[a5] > __s || __s <= a4 && &__s[v13] > a4))
  {
LABEL_6:
    v10 = 0;
    *a10 = 1;
    return v10;
  }

  if ((a2 & 0x2000) == 0)
  {
    if (a9)
    {
      icu::Edits::reset(a9);
      if (*a10 > 0)
      {
        return 0;
      }
    }
  }

  v22 = 0u;
  v23 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v22, a4, a5);
  a8(a1, a2, a3, __s, v13, &v22, a9, a10);
  if (*a10 <= 0)
  {
    v10 = DWORD2(v23);
    if (BYTE12(v23))
    {
      *a10 = 15;
    }

    else
    {
      v10 = u_terminateChars(a4, a5, DWORD2(v23), a10);
    }
  }

  else
  {
    v10 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v22);
  if (a9 && *a10 <= 0)
  {
    icu::Edits::copyErrorTo(a9, a10);
  }

  return v10;
}

uint64_t sub_1952319CC(int a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, icu::Edits *a7, int *a8)
{
  v9[3] = 0;
  v9[0] = a4;
  v9[1] = 0;
  v9[2] = a5;
  return sub_195230978(a1, a2, a4, v9, 0, a5, a6, a7, a8);
}

uint64_t sub_195231A6C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, icu::Edits *a7, int *a8)
{
  if (a1 == 4)
  {

    return sub_195230FD4(a2, a4, a5, a6, a7, a8);
  }

  v56 = a2;
  v60 = 0;
  v58[0] = a4;
  v58[1] = 0;
  v59 = a5;
  v15 = &unk_19544DA24;
  if (a1 == 2)
  {
    v15 = &unk_19544DBA4;
  }

  v57 = v15;
  result = sub_19522DE48();
  LODWORD(v18) = 0;
  v19 = *a8;
  if (a5 >= 1 && v19 <= 0)
  {
    v54 = result;
    v55 = a1;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      while (1)
      {
        v18 = v21 + 1;
        v22 = (a4 + v21);
        v23 = *v22;
        LODWORD(v24) = *v22;
        if (*v22 < 0)
        {
          break;
        }

        v25 = *(v57 + v23);
        if (!*(v57 + v23))
        {
          goto LABEL_87;
        }

        if (v25 != 128)
        {
          v36 = (v21 - v20);
          if (v36 >= 1)
          {
            icu::ByteSinkUtil::appendNonEmptyUnchanged((a4 + v20), v36, a6, v56, a7, v17);
          }

          LOBYTE(v61) = v25 + v24;
          result = (*(*a6 + 16))(a6, &v61, 1);
          if (a7)
          {
            v33 = a7;
            v34 = 1;
            v35 = 1;
            goto LABEL_36;
          }

          goto LABEL_37;
        }

LABEL_13:
        HIDWORD(v59) = v21;
        LODWORD(v60) = v18;
        v61 = 0;
        result = ucase_toFullUpper(v24, sub_1952307FC, v58, &v61, v55);
        if ((result & 0x80000000) == 0)
        {
          v26 = result;
          if (*a8 <= 0)
          {
            v27 = (v21 - v20);
            if (v27 >= 1)
            {
              icu::ByteSinkUtil::appendNonEmptyUnchanged((a4 + v20), v27, a6, v56, a7, v17);
            }
          }

          v28 = (v18 - v21);
          if (v26 > 0x1F)
          {
            result = icu::ByteSinkUtil::appendCodePoint(v28, v26, a6, a7, v16);
          }

          else
          {
            result = icu::ByteSinkUtil::appendChange(v28, v61, v26, a6, a7, a8);
          }

          v20 = v18;
        }

        v19 = *a8;
        if (*a8 <= 0)
        {
          v21 = v18;
          if (v18 < a5)
          {
            continue;
          }
        }

        goto LABEL_97;
      }

      if (v24 > 0xE2)
      {
        break;
      }

      if ((v23 + 62) > 3u || v18 >= a5)
      {
        goto LABEL_45;
      }

      v30 = *(a4 + v18) ^ 0x80;
      if (v30 > 0x3F)
      {
        goto LABEL_45;
      }

      LODWORD(v18) = v21 + 2;
      v24 = ((v24 << 6) - 12288) | v30;
      v31 = *(v57 + v24);
      if (*(v57 + v24))
      {
        if (v31 == 128)
        {
          goto LABEL_13;
        }

        v32 = (v21 - v20);
        if (v32 >= 1)
        {
          icu::ByteSinkUtil::appendNonEmptyUnchanged((a4 + v20), v32, a6, v56, a7, v17);
        }

        result = icu::ByteSinkUtil::appendTwoBytes(v24 + v31, a6);
        if (!a7)
        {
          goto LABEL_37;
        }

        v33 = a7;
        v34 = 2;
        v35 = 2;
LABEL_36:
        result = icu::Edits::addReplace(v33, v34, v35);
LABEL_37:
        v20 = v18;
      }

LABEL_87:
      v19 = *a8;
      v51 = *a8 <= 0 && v18 < a5;
      v21 = v18;
      if (!v51)
      {
        goto LABEL_97;
      }
    }

    v38 = (v23 < 0xEA || (v23 + 21) <= 1u) && v21 + 3 <= a5;
    if (v38 && *(a4 + v18) <= -65 && v22[2] < -64)
    {
      LODWORD(v18) = v21 + 3;
      goto LABEL_87;
    }

LABEL_45:
    if (v18 == a5)
    {
      goto LABEL_96;
    }

    if (v24 < 0xE0)
    {
      if (v23 < 0xC2)
      {
        goto LABEL_87;
      }

      v41 = v24 & 0x1F;
    }

    else
    {
      if (v23 > 0xEF)
      {
        if (v23 > 0xF4)
        {
          goto LABEL_87;
        }

        v45 = *(a4 + v18);
        if (((byte_1954555EC[v45 >> 4] >> (v24 + 16)) & 1) == 0)
        {
          goto LABEL_87;
        }

        v18 = v21 + 2;
        if (v21 + 2 == a5)
        {
LABEL_96:
          LODWORD(v18) = a5;
          goto LABEL_97;
        }

        v40 = *(a4 + v18) ^ 0x80;
        if (v40 > 0x3F)
        {
          goto LABEL_87;
        }

        v39 = v45 & 0x3F | ((v24 - 240) << 6);
      }

      else
      {
        v39 = v23 & 0xF;
        if (((a00000000000000[v23 & 0xF] >> (*(a4 + v18) >> 5)) & 1) == 0)
        {
          goto LABEL_87;
        }

        v40 = *(a4 + v18) & 0x3F;
      }

      LODWORD(v18) = v18 + 1;
      if (v18 == a5)
      {
        goto LABEL_96;
      }

      v41 = v40 | (v39 << 6);
    }

    v42 = *(a4 + v18) ^ 0x80;
    if (v42 > 0x3F)
    {
      goto LABEL_87;
    }

    LODWORD(v24) = v42 | (v41 << 6);
    v43 = *v54;
    if (v41 <= 0x35F)
    {
      v44 = v24 >> 5;
LABEL_75:
      v47 = (v42 & 0x1F) + 4 * *(v43 + 2 * v44);
      goto LABEL_76;
    }

    if (v41 <= 0x3FF)
    {
      if (v41 >= 0x370)
      {
        v46 = 0;
      }

      else
      {
        v46 = 320;
      }

      v44 = v46 + (v24 >> 5);
      goto LABEL_75;
    }

    if (v41 >> 10 < 0x11)
    {
      if (v24 < *(v54 + 44))
      {
        v44 = ((v24 >> 5) & 0x3F) + *(v43 + 2 * (v41 >> 5) + 4160);
        goto LABEL_75;
      }

      v47 = *(v54 + 48);
    }

    else
    {
      v47 = *(v54 + 24) + 128;
    }

LABEL_76:
    LODWORD(v18) = v18 + 1;
    v48 = *(v43 + 2 * v47);
    if ((v48 & 8) != 0)
    {
      goto LABEL_13;
    }

    if (v48 >= 0x80 && (v48 & 3) == 1)
    {
      v50 = (v21 - v20);
      if (v50 >= 1)
      {
        icu::ByteSinkUtil::appendNonEmptyUnchanged((a4 + v20), v50, a6, v56, a7, v17);
      }

      result = icu::ByteSinkUtil::appendCodePoint((v18 - v21), v24 + (v48 >> 7), a6, a7, v16);
      goto LABEL_37;
    }

    goto LABEL_87;
  }

  v20 = 0;
LABEL_97:
  v52 = (v18 - v20);
  if (v19 <= 0 && v52 >= 1)
  {
    return icu::ByteSinkUtil::appendNonEmptyUnchanged((a4 + v20), v52, a6, v56, a7, v17);
  }

  return result;
}

uint64_t icu::CaseMap::utf8ToLower(icu::CaseMap *this, const char *a2, char *a3, const char *a4, char *a5, char *a6, icu::Edits *a7, icu::Edits *a8, UErrorCode *a9)
{
  v11 = a6;
  v16 = sub_19529B410(this);
  return sub_1952317C0(v16, a2, 0, a5, v11, a3, a4, sub_1952319CC, a7, a8);
}

uint64_t icu::CaseMap::utf8ToUpper(icu::CaseMap *this, const char *a2, char *a3, const char *a4, char *a5, char *a6, icu::Edits *a7, icu::Edits *a8, UErrorCode *a9)
{
  v11 = a6;
  v16 = sub_19529B410(this);
  return sub_1952317C0(v16, a2, 0, a5, v11, a3, a4, sub_195231A6C, a7, a8);
}

uint64_t icu::CaseMap::utf8ToTitle(uint64_t result, uint64_t a2, _DWORD *a3, char *a4, size_t a5, uint64_t a6, icu::Edits *a7, UErrorCode *a8)
{
  if (*a8 <= 0)
  {
    v23 = v8;
    v24 = v9;
    v17 = result;
    memset(&ut, 0, sizeof(ut));
    ut.magic = 878368812;
    ut.sizeOfStruct = 144;
    utext_openUTF8(&ut, a4, a5, a8);
    v21 = 0;
    v18 = sub_195298900(0, v17, a2, a3, &v21, a8);
    if (v18)
    {
      v19 = v18;
      (*(*v18 + 64))(v18, &ut, a8);
      v20 = sub_19529B410(v17);
      sub_195231680(v20, a2, v19, a4, a5, sub_195230018, a6, a7, a8);
    }

    utext_close(&ut);
    result = v21;
    if (v21)
    {
      return (*(*v21 + 8))(v21);
    }
  }

  return result;
}

uint64_t icu::CaseMap::utf8ToTitle(icu::CaseMap *this, const char *a2, _DWORD *a3, icu::BreakIterator *s, const char *a5, char *a6, char *a7, icu::Edits *a8, UErrorCode *status, UErrorCode *a10)
{
  if (*status > 0)
  {
    return 0;
  }

  v12 = a7;
  memset(&ut, 0, sizeof(ut));
  ut.magic = 878368812;
  ut.sizeOfStruct = 144;
  utext_openUTF8(&ut, s, a5, status);
  v23 = 0;
  v19 = sub_195298900(0, this, a2, a3, &v23, status);
  if (v19)
  {
    v20 = v19;
    (*(*v19 + 64))(v19, &ut, status);
    v21 = sub_19529B410(this);
    v10 = sub_1952317C0(v21, a2, v20, a6, v12, s, a5, sub_195230018, a8, status);
  }

  else
  {
    v10 = 0;
  }

  utext_close(&ut);
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  return v10;
}

uint64_t ucasemap_setBreakIterator(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v4 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *v4 = a2;
  }

  return result;
}

uint64_t ucasemap_utf8ToTitle(uint64_t a1, char *a2, int a3, char *s, size_t a5, UErrorCode *status)
{
  if (*status <= 0)
  {
    memset(&ut, 0, sizeof(ut));
    ut.magic = 878368812;
    ut.sizeOfStruct = 144;
    utext_openUTF8(&ut, s, a5, status);
    if (*status <= 0)
    {
      v14 = *a1;
      if (!*a1)
      {
        v15 = 0;
        if (!sub_195298900(0, (a1 + 8), *(a1 + 44), 0, &v15, status))
        {
          utext_close(&ut);
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          return 0;
        }

        v14 = v15;
        *a1 = v15;
      }

      (*(*v14 + 64))(v14, &ut, status);
      v12 = sub_1952317C0(*(a1 + 40), *(a1 + 44), *a1, a2, a3, s, a5, sub_195230018, 0, status);
      utext_close(&ut);
      return v12;
    }
  }

  return 0;
}

UChar *u_catgets(uint64_t a1, unsigned int a2, unsigned int a3, UChar *s, int *a5, int *a6)
{
  v15[3] = *MEMORY[0x1E69E9840];
  memset(v15, 0, 24);
  if (a6 && *a6 <= 0 && (v11 = v15 + T_CString_integerToString(v15, a2, 0xAu), *v11 = 37, T_CString_integerToString(v11 + 1, a3, 0xAu), StringByKey = ures_getStringByKey(a1, v15, a5, a6), *a6 < 1))
  {
    s = StringByKey;
  }

  else if (a5)
  {
    *a5 = u_strlen(s);
  }

  v13 = *MEMORY[0x1E69E9840];
  return s;
}

int8_t u_charType(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return word_19545BF78[v3] & 0x1F;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return word_19545BF78[v3] & 0x1F;
}

void u_enumCharTypes(UCharEnumTypeRange *enumRange, const void *context)
{
  if (enumRange)
  {
    v2[0] = enumRange;
    v2[1] = context;
    utrie2_enum(&off_1E7403640, sub_195232984, sub_19523298C, v2);
  }
}

UBool u_islower(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return (word_19545BF78[v3] & 0x1F) == 2;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return (word_19545BF78[v3] & 0x1F) == 2;
}

UBool u_isupper(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return (word_19545BF78[v3] & 0x1F) == 1;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return (word_19545BF78[v3] & 0x1F) == 1;
}

UBool u_istitle(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return (word_19545BF78[v3] & 0x1F) == 3;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return (word_19545BF78[v3] & 0x1F) == 3;
}

UBool u_isdigit(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return (word_19545BF78[v3] & 0x1F) == 9;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return (word_19545BF78[v3] & 0x1F) == 9;
}

UBool u_isxdigit(UChar32 c)
{
  if ((c - 65) <= 0x25 && (c - 97) < 0xFFFFFFE6 || (c - 65313) <= 0x25 && (c - 65345) < 0xFFFFFFE6)
  {
    return 1;
  }

  if (c >> 11 <= 0x1A)
  {
    v2 = c >> 5;
LABEL_16:
    v4 = (c & 0x1F) + 4 * word_19545BF78[v2];
    return (word_19545BF78[v4] & 0x1F) == 9;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v3 = 0;
    }

    else
    {
      v3 = 320;
    }

    v2 = v3 + (c >> 5);
    goto LABEL_16;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v2 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_16;
  }

  v4 = 4876;
  return (word_19545BF78[v4] & 0x1F) == 9;
}

UBool u_isalpha(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return ((1 << word_19545BF78[v3]) & 0x3E) != 0;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return ((1 << word_19545BF78[v3]) & 0x3E) != 0;
}

uint64_t sub_195232CE4(unsigned int a1, int a2)
{
  if (a2 > 2)
  {
    return 0;
  }

  if (a1 >> 11 <= 0x1A)
  {
    v3 = a1 >> 5;
LABEL_13:
    v5 = (a1 & 0x1F) + 4 * word_195467A60[v3];
    return dword_195455610[word_195467A60[v5] + a2];
  }

  if (!HIWORD(a1))
  {
    if (a1 >> 10 >= 0x37)
    {
      v4 = 0;
    }

    else
    {
      v4 = 320;
    }

    v3 = v4 + (a1 >> 5);
    goto LABEL_13;
  }

  if (HIWORD(a1) <= 0x10u)
  {
    v3 = ((a1 >> 5) & 0x3F) + word_195467A60[(a1 >> 11) + 2080];
    goto LABEL_13;
  }

  v5 = 5364;
  return dword_195455610[word_195467A60[v5] + a2];
}

UBool u_isalnum(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return ((1 << word_19545BF78[v3]) & 0x23E) != 0;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return ((1 << word_19545BF78[v3]) & 0x23E) != 0;
}

BOOL sub_195232DF8(unsigned int a1)
{
  v2 = 1;
  if ((sub_195232CE4(a1, 1) & 0x100) == 0)
  {
    return u_isdigit(a1) != 0;
  }

  return v2;
}

UBool u_isdefined(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return (word_19545BF78[v3] & 0x1F) != 0;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return (word_19545BF78[v3] & 0x1F) != 0;
}

UBool u_isbase(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return ((1 << word_19545BF78[v3]) & 0xFBE) != 0;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return ((1 << word_19545BF78[v3]) & 0xFBE) != 0;
}

UBool u_iscntrl(UChar32 c)
{
  if (c >> 11 <= 0x1A)
  {
    v1 = c >> 5;
LABEL_11:
    v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
    return ((1 << word_19545BF78[v3]) & 0x1E000) != 0;
  }

  if (!HIWORD(c))
  {
    if (c >> 10 >= 0x37)
    {
      v2 = 0;
    }

    else
    {
      v2 = 320;
    }

    v1 = v2 + (c >> 5);
    goto LABEL_11;
  }

  if (HIWORD(c) <= 0x10u)
  {
    v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    goto LABEL_11;
  }

  v3 = 4876;
  return ((1 << word_19545BF78[v3]) & 0x1E000) != 0;
}

UBool u_isspace(UChar32 c)
{
  if (c >> 11 > 0x1A)
  {
    if (HIWORD(c))
    {
      if (HIWORD(c) > 0x10u)
      {
        v3 = 4876;
        goto LABEL_12;
      }

      v1 = ((c >> 5) & 0x3F) + word_19545BF78[(c >> 11) + 2080];
    }

    else
    {
      if (c >> 10 >= 0x37)
      {
        v2 = 0;
      }

      else
      {
        v2 = 320;
      }

      v1 = v2 + (c >> 5);
    }
  }

  else
  {
    v1 = c >> 5;
  }

  v3 = (c & 0x1F) + 4 * word_19545BF78[v1];
LABEL_12:
  v4 = 1;
  if (((1 << word_19545BF78[v3]) & 0x7000) == 0)
  {
    return c <= 159 && ((c & 0xFFFFFFFC) == 0x1C || c == 133 || (c - 9) < 5);
  }

  return v4;
}