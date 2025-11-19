void *sub_29873FA30(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 88);
  v4 = *(a1 + 104) - v3;
  *(a1 + 912) = v4 >> 2;
  *(a1 + 920) = (v2 - v3) >> 2;
  result = memcpy(*(a1 + 928), v3, v4);
  v6 = *(a1 + 124);
  if (v6)
  {
    v6 = *(a1 + 128);
  }

  *(a1 + 992) = v6;
  *(a1 + 996) = *(a1 + 1000);
  *(a1 + 968) = *(a1 + 960);
  *(a1 + 984) = *(a1 + 137);
  *(a1 + 988) = *(a1 + 140);
  return result;
}

void *sub_29873FAA8(uint64_t a1, const void *a2, int a3)
{
  result = memcpy(*(a1 + 936), a2, 4 * a3);
  *(a1 + 944) = *(a1 + 936) + 4 * a3;
  return result;
}

uint64_t sub_29873FAE4(uint64_t result, int a2)
{
  v2 = result;
  v3 = a2;
  v4 = *(result + 104);
  if (&v4[a2] >= *(result + 112))
  {
    result = sub_29873FB58(result, a2);
    if (!result)
    {
      return result;
    }

    v4 = *(v2 + 104);
  }

  v5 = *(v2 + 96);
  if (v5 < v4)
  {
    v6 = v4;
    do
    {
      v6[v3] = *v6;
      --v6;
    }

    while (v6 >= v5);
  }

  *(v2 + 104) = &v4[v3];
  return result;
}

uint64_t sub_29873FB58(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 88);
  v5 = v3 - v4;
  v6 = ((v3 - v4) >> 2) + 2;
  v7 = 2 * v6;
  if (v6 >= a2)
  {
    v8 = 2 * v6;
  }

  else
  {
    do
    {
      v8 = v7;
      v9 = v7 - v6;
      v7 *= 2;
    }

    while (v9 < a2);
  }

  result = malloc_type_realloc(v4, 4 * v8, 0x100004052888210uLL);
  if (result)
  {
    v11 = result;
    bzero((result + 4 * v6), 4 * (v8 - v6));
    v12 = *(a1 + 88);
    v13 = v11 + *(a1 + 96) - v12;
    *(a1 + 88) = v11;
    *(a1 + 96) = v13;
    *(a1 + 104) = v11 + *(a1 + 104) - v12;
    *(a1 + 112) = v11 + v5;
    result = malloc_type_realloc(*(a1 + 936), 4 * v8, 0x100004052888210uLL);
    if (result)
    {
      v14 = result;
      bzero((result + 4 * v6), 4 * (v8 - v6));
      v15 = *(a1 + 936);
      *(a1 + 936) = v14;
      *(a1 + 944) = v14 + *(a1 + 944) - v15;
      *(a1 + 952) = *(a1 + 88) + *(a1 + 952) - v12;
      result = malloc_type_realloc(*(a1 + 928), 4 * v8, 0x100004052888210uLL);
      if (result)
      {
        v16 = result;
        bzero((result + 4 * v6), 4 * (v8 - v6));
        *(a1 + 928) = v16;
        result = malloc_type_realloc(*(a1 + 960), 4 * v8, 0x100004052888210uLL);
        if (result)
        {
          v17 = *(a1 + 960);
          *(a1 + 968) = result + *(a1 + 968) - v17;
          *(a1 + 976) = result + *(a1 + 976) - v17;
          *(a1 + 960) = result;
          result = sub_298743FE8(a1, v6, v8);
          if (result)
          {
            *(a1 + 112) = *(a1 + 88) + 4 * v8 - 8;
            v18 = *(a1 + 1032);
            if (v18)
            {
              v18(a1, *(a1 + 1040));
            }

            return 1;
          }
        }
      }
    }
  }

  return result;
}

void *sub_29873FD24(void *result, unsigned int a2)
{
  v2 = result;
  v3 = result[12];
  v4 = result[13];
  v5 = v3 + 4 * a2;
  v6 = (v4 - v3) >> 2;
  if (v5 <= v4)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  if (result[133] != result[134])
  {
    sub_29873FA30(result);
    result = memcpy(v2[117], v2[12], 4 * v7);
    v2[118] = v2[117] + 4 * v7;
  }

  if (v7 >= 1)
  {
    v9 = v2[12];
    v8 = v2[13];
    while (v9 <= v8)
    {
      *v9 = v9[v7];
      ++v9;
    }

    v2[13] = v8 - 4 * v7;
  }

  return result;
}

uint64_t sub_29873FDB8(uint64_t result)
{
  v2 = *(result + 96);
  v1 = *(result + 104);
  if (v2 <= v1)
  {
    v3 = *(result + 96);
    do
    {
      v4 = v3[1];
      ++v3;
      *v2 = v4;
      v2 = v3;
    }

    while (v3 <= v1);
  }

  *(result + 104) = v1 - 4;
  return result;
}

void *sub_29873FDE8(void *result, int a2)
{
  v2 = result;
  v4 = result[11];
  v3 = result[12];
  v5 = v3 - 4 * a2;
  v6 = (v3 - v4) >> 2;
  if (v5 >= v4)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  if (result[133] != result[134])
  {
    sub_29873FA30(result);
    result = memcpy(v2[117], (v2[12] - 4 * v7), 4 * v7);
    v2[118] = v2[117] + 4 * v7;
  }

  if (v7 >= 1)
  {
    v8 = v2[12];
    v9 = v2[13];
    for (i = &v8[-v7]; i <= v9; ++i)
    {
      v11 = *v8++;
      *i = v11;
    }

    v2[13] = v9 - 4 * v7;
  }

  return result;
}

uint64_t sub_29873FE8C(uint64_t result)
{
  v1 = *(result + 104);
  v2 = (*(result + 96) - 4);
  if (v2 <= v1)
  {
    v3 = *(result + 96) - 4;
    do
    {
      v4 = *(v3 + 4);
      v3 += 4;
      *v2 = v4;
      v2 = v3;
    }

    while (v3 <= v1);
  }

  *(result + 104) = v1 - 4;
  return result;
}

BOOL sub_29873FEC0(unsigned int __c)
{
  if (__c > 0x7F)
  {
    if (__maskrune(__c, 0x500uLL))
    {
      return 1;
    }
  }

  else if ((*(MEMORY[0x29EDCA600] + 4 * __c + 60) & 0x500) != 0)
  {
    return 1;
  }

  return wcschr(dword_298755740, __c) != 0;
}

uint64_t sub_29873FF34(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    if (__maskrune(a1, 0x500uLL))
    {
      return 1;
    }

    v3 = __maskrune(a1, 0x800uLL);
    return 2 * (v3 != 0);
  }

  result = 1;
  if (a1 != 95 && (*(MEMORY[0x29EDCA600] + 4 * a1 + 60) & 0x500) == 0)
  {
    v3 = *(MEMORY[0x29EDCA600] + 4 * a1 + 60) & 0x800;
    return 2 * (v3 != 0);
  }

  return result;
}

BOOL sub_29873FFBC(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    v1 = __maskrune(a1, 0x4000uLL);
  }

  else
  {
    v1 = *(MEMORY[0x29EDCA600] + 4 * a1 + 60) & 0x4000;
  }

  return v1 == 0;
}

unsigned int *sub_298740004(uint64_t a1, unint64_t a2, int a3, unsigned int (*a4)(void))
{
  v5 = (a1 - 4);
  if (a3)
  {
    v7 = a3;
    do
    {
      while (v5 >= a2 && !a4(*v5))
      {
        --v5;
      }

      while (v5 >= a2 && a4(*v5))
      {
        --v5;
      }

      --v7;
    }

    while (v7);
  }

  if ((v5 + 1) >= a2)
  {
    return v5 + 1;
  }

  else
  {
    return a2;
  }
}

unsigned int *sub_298740084(unsigned int *a1, unint64_t a2, int a3, unsigned int (*a4)(void))
{
  if (a3)
  {
    v7 = a3;
    do
    {
      while (a1 < a2 && !a4(*a1))
      {
        ++a1;
      }

      while (a1 < a2 && a4(*a1))
      {
        ++a1;
      }

      --v7;
    }

    while (v7);
  }

  if (a1 <= a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

unsigned int *sub_298740100(uint64_t a1, unsigned int *a2, unint64_t a3, int a4, uint64_t (*a5)(void))
{
  if (a4)
  {
    v8 = a4;
    v10 = MEMORY[0x29EDCA600];
    while (1)
    {
      v11 = a5(*a2);
      if (a2 < a3)
      {
        v12 = v11;
        do
        {
          if (a5(*a2) != v12)
          {
            break;
          }

          ++a2;
        }

        while (a2 < a3);
      }

      if (!--v8)
      {
        break;
      }

      while (a2 < a3)
      {
LABEL_12:
        v14 = *a2;
        if (v14 > 0x7F)
        {
          if (!__maskrune(v14, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v10 + 4 * v14 + 60) & 0x4000) == 0)
        {
          break;
        }

        ++a2;
      }

      if (!v8)
      {
        goto LABEL_19;
      }
    }

    if (*(a1 + 1000) != 3 && a2 < a3)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
  if (a2 <= a3)
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

unsigned int *sub_2987401E0(uint64_t a1, unint64_t a2, int a3, uint64_t (*a4)(void))
{
  v5 = (a1 - 4);
  if (a3)
  {
    v7 = a3;
    v8 = MEMORY[0x29EDCA600];
    while (1)
    {
      if (v5 <= a2)
      {
        goto LABEL_8;
      }

      v9 = *v5;
      if (v9 > 0x7F)
      {
        if (!__maskrune(v9, 0x4000uLL))
        {
          goto LABEL_8;
        }

LABEL_6:
        --v5;
      }

      else
      {
        if ((*(v8 + 4 * v9 + 60) & 0x4000) != 0)
        {
          goto LABEL_6;
        }

LABEL_8:
        v10 = a4(*v5);
        if (v5 >= a2)
        {
          v11 = v10;
          do
          {
            if (a4(*v5) != v11)
            {
              break;
            }

            --v5;
          }

          while (v5 >= a2);
        }

        if (!--v7)
        {
          break;
        }
      }
    }
  }

  if ((v5 + 1) >= a2)
  {
    return v5 + 1;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_2987402A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 1000);
  if ((v2 & 2) != 0)
  {
    *(result + 1064) = *(result + 1056);
  }

  v3 = *(result + 1008);
  if (v3)
  {
    if (((*(result + 96) - v3) >> 2) <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = (*(result + 96) - v3) >> 2;
    }

    *(result + 96) = v3;
    if ((v2 & 4) != 0)
    {
      if (v4 < 1)
      {
        v3 += 4 * v4;
        v4 = -v4;
      }

      result = memcpy(*(result + 936), v3, 4 * v4);
      *(v1 + 944) = *(v1 + 936) + 4 * v4;
    }

    else if (v4 < 1)
    {
      result = sub_29873FDE8(result, -v4);
      *(v1 + 96) += 4 * v4;
    }

    else
    {
      sub_29873FD24(result, v4);
      result = sub_29874C174(v1);
    }

    *(v1 + 1000) = 0;
  }

  return result;
}

unsigned int *sub_29874035C(uint64_t a1, unint64_t a2, int a3, uint64_t (*a4)(void))
{
  v4 = (a1 + 4);
  if (a3)
  {
    v6 = a3;
    v8 = MEMORY[0x29EDCA600];
    while (1)
    {
      if (v4 >= a2)
      {
        goto LABEL_8;
      }

      v9 = *v4;
      if (v9 > 0x7F)
      {
        if (!__maskrune(v9, 0x4000uLL))
        {
          goto LABEL_8;
        }

LABEL_6:
        ++v4;
      }

      else
      {
        if ((*(v8 + 4 * v9 + 60) & 0x4000) != 0)
        {
          goto LABEL_6;
        }

LABEL_8:
        v10 = a4(*v4);
        if (v4 < a2)
        {
          v11 = v10;
          do
          {
            if (a4(*v4) != v11)
            {
              break;
            }

            ++v4;
          }

          while (v4 < a2);
        }

        if (!--v6)
        {
          return v4 - 1;
        }
      }
    }
  }

  return v4 - 1;
}

uint64_t sub_298740418(uint64_t a1)
{
  v2 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
  *(a1 + 88) = v2;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v2, 0x1000uLL);
  v3 = *(a1 + 88);
  *(a1 + 96) = v3;
  *(a1 + 104) = v3;
  *(a1 + 112) = v3 + 4088;
  v4 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
  *(a1 + 928) = v4;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v4, 0x1000uLL);
  *(a1 + 912) = -1;
  *(a1 + 920) = 0;
  v5 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
  *(a1 + 960) = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 968) = v5;
  *(a1 + 976) = v5 + 4096;
  *(a1 + 984) = 34;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = *(a1 + 88);
  v6 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
  *(a1 + 936) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  bzero(v6, 0x1000uLL);
  *(a1 + 952) = *(a1 + 88);
  *(a1 + 944) = *(a1 + 936);
  *(a1 + 1032) = 0u;
  *(a1 + 1064) = *(a1 + 1056);
  *(a1 + 120) = xmmword_298755730;
  *(a1 + 136) = 34;
  *(a1 + 1016) = 0xFFFFFFFFLL;
  v7 = malloc_type_malloc(0x50uLL, 0x10040436913F5uLL);
  *(a1 + 1024) = v7;
  if (v7)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_29874055C(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  *(a1 + 96) = v2;
  *(a1 + 104) = v2;
  *(a1 + 912) = -1;
  *(a1 + 920) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = v2;
  *(a1 + 952) = v2;
  *(a1 + 1064) = *(a1 + 1056);
  *(a1 + 120) = xmmword_298755730;
  *(a1 + 136) = 34;
  *(a1 + 1176) = 0;
  if (a2)
  {
    while (1)
    {
      v4 = *(a1 + 1016);
      if ((v4 & 0x80000000) != 0)
      {
        break;
      }

      v5 = *(a1 + 1024);
      *(a1 + 1016) = v4 - 1;
      free(*(v5 + 8 * v4));
    }
  }
}

void sub_2987405E0(uint64_t a1)
{
  free(*(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  free(*(a1 + 928));
  *(a1 + 928) = 0;
  free(*(a1 + 960));
  *(a1 + 976) = 0;
  *(a1 + 960) = 0u;
  *(a1 + 984) = 34;
  free(*(a1 + 936));
  *(a1 + 936) = 0;
  sub_29874055C(a1, 1);
  free(*(a1 + 1024));
  *(a1 + 1024) = 0;
}

int el_winsertstr(EditLine *a1, const __int32 *a2)
{
  if (!a2)
  {
    return -1;
  }

  v4 = wcslen(a2);
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  if (*(a1 + 13) + 4 * v4 >= *(a1 + 14) && !sub_29873FB58(a1, v4))
  {
    return -1;
  }

  sub_29873FAE4(a1, v5);
  v6 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v7 = *(a1 + 12);
  v8 = a2 + 1;
  do
  {
    *v7++ = v6;
    v9 = *v8++;
    v6 = v9;
  }

  while (v9);
  result = 0;
  *(a1 + 12) = v7;
  return result;
}

void el_deletestr(EditLine *a1, int a2)
{
  if (a2 >= 1 && *(a1 + 12) >= *(a1 + 11) + 4 * a2)
  {
    v3 = a2;
    sub_29873FDE8(a1, a2);
    v4 = *(a1 + 12) - 4 * v3;
    if (v4 < *(a1 + 11))
    {
      v4 = *(a1 + 11);
    }

    *(a1 + 12) = v4;
  }
}

uint64_t sub_298740764(uint64_t a1, uint64_t a2, __int32 *a3)
{
  v5 = *(a1 + 88);
  if (a3)
  {
    v7 = wcslen(a3);
    memcpy(v5, a3, 4 * v7);
    v5 += v7;
  }

  v14 = 0;
  *v5 = 32;
  *(a1 + 96) = v5;
  *(a1 + 104) = v5 + 1;
  sub_29874B484(a1);
  if (el_wgetc(a1, &v14) == 1)
  {
    v8 = 0;
    do
    {
      v9 = v14;
      if (v14 <= 12)
      {
        if (v14 == 8)
        {
LABEL_13:
          if (!v8)
          {
            goto LABEL_23;
          }

          *(v5 - 1) = 32;
          *(a1 + 96) = v5 - 1;
          *(a1 + 104) = v5;
          sub_29874B484(a1);
          v11 = el_wgetc(a1, &v14);
          --v5;
          continue;
        }

        if (v14 == 10)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v14 == 127)
        {
          goto LABEL_13;
        }

        if (v14 == 13 || v14 == 27)
        {
LABEL_24:
          *(a2 + 4 * v8) = v14;
          goto LABEL_25;
        }
      }

      if (v8 < 1008)
      {
        *(a2 + 4 * v8) = v14;
        *v5++ = v9;
        ++v8;
      }

      else
      {
        el_beep_0(a1);
      }

      *v5 = 32;
      *(a1 + 96) = v5;
      *(a1 + 104) = v5 + 1;
      sub_29874B484(a1);
      v11 = el_wgetc(a1, &v14);
    }

    while (v11 == 1);
  }

  sub_298740928(a1);
LABEL_23:
  v8 = 0xFFFFFFFFLL;
LABEL_25:
  v12 = *(a1 + 88);
  *v12 = 0;
  *(a1 + 96) = v12;
  *(a1 + 104) = v12;
  return v8;
}

uint64_t sub_2987408D4(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 96);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = (v2 - 4);
  v4 = 4;
  do
  {
    v5 = v4;
    if (v3 < v1)
    {
      break;
    }

    v6 = *v3--;
    v4 += 4;
  }

  while (v6 != 10);
  return (v5 >> 2) - 1;
}

uint64_t sub_298740918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 1032) = a2;
  *(a1 + 1040) = a3;
  return 0;
}

uint64_t sub_298740928(uint64_t a1)
{
  sub_29874C0C0(a1);
  **(a1 + 104) = 0;
  return 2;
}

uint64_t sub_298740958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 6;
  }

  v4 = *(a1 + 128);
  if ((*(a1 + 104) + 4 * v4) >= *(a1 + 112) && !sub_29873FB58(a1, v4))
  {
    return 6;
  }

  v5 = *(a1 + 120);
  if (v4 == 1)
  {
    if (!v5 || (v6 = *(a1 + 96), v6 >= *(a1 + 104)))
    {
      sub_29873FAE4(a1, 1);
      v6 = *(a1 + 96);
    }

    *v6 = a2;
    *(a1 + 96) = v6 + 1;
    sub_29874C2E0(a1);
  }

  else
  {
    if (v5 != 2)
    {
      sub_29873FAE4(a1, *(a1 + 128));
    }

    if (v4)
    {
      v9 = *(a1 + 96);
      v8 = *(a1 + 104);
      do
      {
        if (v9 >= v8)
        {
          break;
        }

        *v9++ = a2;
        *(a1 + 96) = v9;
        --v4;
      }

      while (v4);
    }

    sub_29874B484(a1);
  }

  if (*(a1 + 120) != 2)
  {
    return 0;
  }

  return sub_298751C78(a1);
}

uint64_t sub_298740A68(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 88);
  if (v2 == v3)
  {
    return 6;
  }

  v4 = sub_298740004(v2, v3, *(a1 + 128), sub_29873FEC0);
  v5 = v4;
  v6 = *(a1 + 936);
  v7 = *(a1 + 96);
  if (v4 < v7)
  {
    v8 = v4;
    do
    {
      v9 = *v8++;
      *v6++ = v9;
    }

    while (v8 < v7);
  }

  *(a1 + 944) = v6;
  sub_29873FDE8(a1, (v7 - v4) >> 2);
  v10 = *(a1 + 88);
  if (v5 >= v10)
  {
    v10 = v5;
  }

  *(a1 + 96) = v10;
  return 4;
}

uint64_t sub_298740B08(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 == *(a1 + 104))
  {
    if (*(a1 + 1096) != 1 || v2 == *(a1 + 88))
    {
      return 6;
    }

    *(a1 + 96) = v2 - 4;
  }

  sub_29873FD24(a1, *(a1 + 128));
  if (*(a1 + 1096) == 1)
  {
    v4 = *(a1 + 96);
    v3 = *(a1 + 104);
    if (v4 >= v3 && v4 > *(a1 + 88))
    {
      *(a1 + 96) = v3 - 4;
    }
  }

  return 4;
}

uint64_t sub_298740B9C(void *a1)
{
  v1 = a1[117];
  v2 = a1[12];
  v3 = a1[13];
  if (v2 < v3)
  {
    v4 = a1[12];
    do
    {
      v5 = *v4++;
      *v1++ = v5;
    }

    while (v4 < v3);
  }

  a1[118] = v1;
  a1[13] = v2;
  return 4;
}

uint64_t sub_298740BD0(uint64_t a1)
{
  v1 = *(a1 + 104);
  *(a1 + 96) = v1;
  if (*(a1 + 1096) == 1)
  {
    if (*(a1 + 1000))
    {
      sub_2987402A4(a1);
      return 4;
    }

    *(a1 + 96) = v1 - 4;
  }

  return 5;
}

uint64_t sub_298740C1C(uint64_t a1)
{
  v1 = *(a1 + 88);
  *(a1 + 96) = v1;
  if (*(a1 + 1096) != 1)
  {
    return 5;
  }

  v3 = MEMORY[0x29EDCA600];
  while (1)
  {
    v4 = *v1;
    if (v4 > 0x7F)
    {
      break;
    }

    if ((*(v3 + 4 * v4 + 60) & 0x4000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v1 = (*(a1 + 96) + 4);
    *(a1 + 96) = v1;
  }

  if (__maskrune(v4, 0x4000uLL))
  {
    goto LABEL_7;
  }

LABEL_9:
  if (!*(a1 + 1000))
  {
    return 5;
  }

  sub_2987402A4(a1);
  return 4;
}

uint64_t sub_298740CBC(void *a1)
{
  v1 = a1[12];
  v2 = a1[13];
  v3 = a1[11];
  if (v1 < v2)
  {
    if (v2 <= v3 + 4)
    {
      return 6;
    }

    v1 += 4;
    a1[12] = v1;
  }

  if (v1 > v3 + 4)
  {
    *(v1 - 8) = vrev64_s32(*(v1 - 8));
    return 4;
  }

  return 6;
}

uint64_t sub_298740D08(uint64_t a1)
{
  v2 = *(a1 + 96);
  v1 = *(a1 + 104);
  if (v2 >= v1)
  {
    return 6;
  }

  v3 = *(a1 + 1096);
  if (v2 == v1 - 4)
  {
    if (v3 != 1)
    {
      v7 = v2 + 4 * *(a1 + 128);
      if (v7 <= v1)
      {
        v1 = v7;
      }

      *(a1 + 96) = v1;
      return 5;
    }

    if (*(a1 + 1000))
    {
      v5 = v2 + 4 * *(a1 + 128);
      if (v5 <= v1)
      {
        v1 = v5;
      }

      *(a1 + 96) = v1;
LABEL_12:
      if (*(a1 + 1000))
      {
        sub_2987402A4(a1);
        return 4;
      }

      return 5;
    }

    return 6;
  }

  v4 = v2 + 4 * *(a1 + 128);
  if (v4 <= v1)
  {
    v1 = v4;
  }

  *(a1 + 96) = v1;
  if (v3 == 1)
  {
    goto LABEL_12;
  }

  return 5;
}

uint64_t sub_298740DB4(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 88);
  if (v2 == v3)
  {
    return 6;
  }

  *(a1 + 96) = sub_298740004(v2, v3, *(a1 + 128), sub_29873FEC0);
  if (*(a1 + 1096) != 1 || !*(a1 + 1000))
  {
    return 5;
  }

  sub_2987402A4(a1);
  return 4;
}

uint64_t sub_298740E30(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 96);
  if (v2 <= v1)
  {
    return 6;
  }

  v3 = v2 - 4 * *(a1 + 128);
  if (v3 >= v1)
  {
    v1 = v3;
  }

  *(a1 + 96) = v1;
  if (*(a1 + 1096) != 1 || !*(a1 + 1000))
  {
    return 5;
  }

  sub_2987402A4(a1);
  return 4;
}

uint64_t sub_298740E94(uint64_t a1)
{
  v5 = 0;
  sub_298750E74(a1);
  v2 = el_wgetc(a1, &v5);
  v3 = v5;
  sub_298750F70(a1);
  if (v2 == 1)
  {
    return sub_298740958(a1, v3);
  }

  sub_29874C0C0(a1);
  **(a1 + 104) = 0;
  return 2;
}

uint64_t sub_298740F14(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFF || (*(MEMORY[0x29EDCA600] + 4 * a2 + 60) & 0x400) == 0)
  {
    return 6;
  }

  if (!*(a1 + 124))
  {
    return sub_298740958(a1, a2);
  }

  if (*(a1 + 136) == 52)
  {
    v3 = a2 - 48;
  }

  else
  {
    v4 = *(a1 + 128);
    if (v4 > 1000000)
    {
      return 6;
    }

    v3 = a2 + 10 * v4 - 48;
  }

  *(a1 + 128) = v3;
  return 3;
}

uint64_t sub_298740F84(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFF || (*(MEMORY[0x29EDCA600] + 4 * a2 + 60) & 0x400) == 0)
  {
    return 6;
  }

  if (*(a1 + 124))
  {
    v2 = *(a1 + 128);
    if (v2 > 1000000)
    {
      return 6;
    }

    *(a1 + 128) = a2 + 10 * v2 - 48;
  }

  else
  {
    *(a1 + 124) = 1;
    *(a1 + 128) = a2 - 48;
  }

  return 3;
}

uint64_t sub_29874102C(uint64_t a1)
{
  sub_29874C0C0(a1);
  v2 = *(a1 + 104);
  *v2 = 10;
  *(a1 + 104) = v2 + 4;
  return 1;
}

uint64_t sub_298741068(uint64_t a1)
{
  if (*(a1 + 96) <= *(a1 + 88))
  {
    return 6;
  }

  sub_29873FDE8(a1, *(a1 + 128));
  v2 = *(a1 + 96) - 4 * *(a1 + 128);
  if (v2 < *(a1 + 88))
  {
    v2 = *(a1 + 88);
  }

  *(a1 + 96) = v2;
  return 4;
}

uint64_t sub_2987410C4(void *a1)
{
  sub_29874E5B8(a1);
  sub_29874C13C(a1);
  return 4;
}

uint64_t sub_298741124(uint64_t a1)
{
  v2 = *(a1 + 1176);
  *(a1 + 912) = -1;
  **(a1 + 104) = 0;
  v3 = *(a1 + 1176);
  if (!v3)
  {
    wcsncpy(*(a1 + 1152), *(a1 + 88), 0x400uLL);
    *(a1 + 1168) = *(a1 + 1152) + *(a1 + 104) - *(a1 + 88);
    v3 = *(a1 + 1176);
  }

  *(a1 + 1176) = v3 + *(a1 + 128);
  if (sub_298743C3C(a1) != 6)
  {
    return 4;
  }

  if (*(a1 + 1096) == 1)
  {
    *(a1 + 1176) = v2;
  }

  sub_298743C3C(a1);
  return 9;
}

uint64_t sub_2987411CC(uint64_t a1)
{
  *(a1 + 912) = -1;
  **(a1 + 104) = 0;
  v1 = *(a1 + 128);
  v2 = *(a1 + 1176);
  v3 = __OFSUB__(v2, v1);
  v5 = v2 - v1;
  v4 = (v5 < 0) ^ v3;
  v6 = v5 & ~(v5 >> 31);
  if (v4)
  {
    v7 = 9;
  }

  else
  {
    v7 = 4;
  }

  *(a1 + 1176) = v6;
  LODWORD(result) = sub_298743C3C(a1);
  if (result == 4)
  {
    return v7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_298741224(size_t a1)
{
  *(a1 + 1000) = 0;
  *(a1 + 912) = -1;
  **(a1 + 104) = 0;
  v2 = *(a1 + 1176);
  if (v2 < 0)
  {
    *(a1 + 1176) = 0;
    return 6;
  }

  if (!v2)
  {
    wcsncpy(*(a1 + 1152), *(a1 + 88), 0x400uLL);
    *(a1 + 1168) = *(a1 + 1152) + *(a1 + 104) - *(a1 + 88);
  }

  v3 = *(a1 + 1184);
  if (!v3)
  {
    return 6;
  }

  if ((*(a1 + 44) & 0x40) != 0)
  {
    v4 = sub_298743DF8(a1, 3);
    if (v4)
    {
      goto LABEL_12;
    }

    return 6;
  }

  if ((*(a1 + 1192))(v3) == -1)
  {
    return 6;
  }

  v4 = *(a1 + 1208);
  if (!v4)
  {
    return 6;
  }

LABEL_12:
  sub_29874C834(a1);
  if (*(a1 + 1176) >= 1)
  {
    v6 = 0;
    do
    {
      if ((*(a1 + 44) & 0x40) != 0)
      {
        v4 = sub_298743DF8(a1, 6);
      }

      else if ((*(a1 + 1192))(*(a1 + 1184), a1 + 1200, 6) == -1)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(a1 + 1208);
      }

      ++v6;
    }

    while (v6 < *(a1 + 1176));
    if (v4)
    {
      v7 = v6 + 1;
      goto LABEL_23;
    }

    return 6;
  }

  v7 = 1;
LABEL_23:
  while (1)
  {
    v8 = *(a1 + 88);
    v9 = (*(a1 + 104) - v8) >> 2;
    if (wcsncmp(v4, v8, v9) || v4[v9])
    {
      if (sub_29874C824(a1, v4))
      {
        break;
      }
    }

    if ((*(a1 + 44) & 0x40) != 0)
    {
      v4 = sub_298743DF8(a1, 6);
    }

    else
    {
      if ((*(a1 + 1192))(*(a1 + 1184), a1 + 1200, 6) == -1)
      {
        return 6;
      }

      v4 = *(a1 + 1208);
    }

    ++v7;
    if (!v4)
    {
      return 6;
    }
  }

  *(a1 + 1176) = v7;

  return sub_298743C3C(a1);
}

uint64_t sub_29874142C(size_t a1)
{
  *(a1 + 1000) = 0;
  *(a1 + 912) = -1;
  **(a1 + 104) = 0;
  if (!*(a1 + 1176))
  {
    return 6;
  }

  v2 = *(a1 + 1184);
  if (!v2)
  {
    return 6;
  }

  if ((*(a1 + 44) & 0x40) != 0)
  {
    v3 = sub_298743DF8(a1, 3);
    if (!v3)
    {
      return 6;
    }
  }

  else
  {
    if ((*(a1 + 1192))(v2) == -1)
    {
      return 6;
    }

    v3 = *(a1 + 1208);
    if (!v3)
    {
      return 6;
    }
  }

  sub_29874C834(a1);
  if (*(a1 + 1176) >= 2)
  {
    v4 = 0;
    v5 = 2;
    do
    {
      v6 = *(a1 + 88);
      v7 = (*(a1 + 104) - v6) >> 2;
      if ((wcsncmp(v3, v6, v7) || v3[v7]) && sub_29874C824(a1, v3))
      {
        v4 = v5 - 1;
      }

      if ((*(a1 + 44) & 0x40) != 0)
      {
        v3 = sub_298743DF8(a1, 6);
      }

      else
      {
        if ((*(a1 + 1192))(*(a1 + 1184), a1 + 1200, 6) == -1)
        {
          break;
        }

        v3 = *(a1 + 1208);
      }

      if (v5 >= *(a1 + 1176))
      {
        break;
      }

      ++v5;
    }

    while (v3);
    if (v4)
    {
      goto LABEL_23;
    }
  }

  if (!sub_29874C824(a1, *(a1 + 1152)))
  {
    return 6;
  }

  v4 = 0;
LABEL_23:
  *(a1 + 1176) = v4;

  return sub_298743C3C(a1);
}

uint64_t sub_2987415D0(uint64_t a1)
{
  v2 = sub_2987408D4(a1);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = 0x3FFFFFFFFFFFFFFFLL;
  if (*v4 != 10)
  {
    v5 = 0;
  }

  for (i = &v4[v5]; i >= v3; --i)
  {
    if (*i == 10)
    {
      v7 = *(a1 + 128);
      *(a1 + 128) = v7 - 1;
      if (v7 < 2)
      {
        goto LABEL_10;
      }
    }
  }

  if (*(a1 + 128) > 0)
  {
    return 6;
  }

LABEL_10:
  v9 = i - 1;
  do
  {
    v10 = v9;
    if (v9 < v3)
    {
      break;
    }

    --v9;
  }

  while (*v10 != 10);
  v11 = v10 + 1;
  do
  {
    v12 = v11;
    v13 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v13)
    {
      break;
    }

    if (v11 >= *(a1 + 104))
    {
      break;
    }

    ++v11;
  }

  while (*v12 != 10);
  *(a1 + 96) = v12;
  return 5;
}

uint64_t sub_2987416A4(uint64_t a1)
{
  v2 = sub_2987408D4(a1);
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  while (v4 < v3)
  {
    if (*v4 == 10)
    {
      v5 = *(a1 + 128);
      *(a1 + 128) = v5 - 1;
      if (v5 < 2)
      {
        goto LABEL_8;
      }
    }

    ++v4;
  }

  if (*(a1 + 128) > 0)
  {
    return 6;
  }

LABEL_8:
  v7 = v4 + 1;
  do
  {
    v8 = v7;
    v9 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v9)
    {
      break;
    }

    if (v7 >= v3)
    {
      break;
    }

    ++v7;
  }

  while (*v8 != 10);
  *(a1 + 96) = v8;
  return 5;
}

uint64_t sub_298741740()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v5 = *MEMORY[0x29EDCA608];
  v1 = sub_298740764(v0, v4, dword_298755770);
  sub_29874E0EC(v0, 0xAu);
  if (v1 < 0 || (v4[v1] = 0, sub_298746B00(v0, v4) == -1))
  {
    el_beep_0(v0);
  }

  *(v0 + 1064) = *(v0 + 1056);
  sub_29874C13C(v0);
  v2 = *MEMORY[0x29EDCA608];
  return 4;
}

EditLine *__cdecl el_init(const char *a1, FILE *a2, FILE *a3, FILE *a4)
{
  v8 = malloc_type_malloc(0x548uLL, 0x10F2040B13C76DEuLL);
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  bzero(v8, 0x548uLL);
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = fileno(a2);
  *(v9 + 36) = fileno(a3);
  *(v9 + 40) = fileno(a4);
  v10 = sub_2987528BC(a1, v9 + 1264);
  v11 = sub_2987537AC(v10);
  *v9 = v11;
  if (!v11)
  {
LABEL_14:
    free(v9);
    return 0;
  }

  *(v9 + 44) = 0;
  v12 = setlocale(2, 0);
  if (v12 && (*v12 != 67 || v12[1] || setlocale(2, &unk_29875BB52)))
  {
    v13 = nl_langinfo(0);
    if (!strcmp(v13, "UTF-8"))
    {
      *(v9 + 44) |= 0x10u;
    }
  }

  if (sub_29874D5F8(v9) == -1)
  {
    free(*v9);
    goto LABEL_14;
  }

  sub_2987452A4(v9);
  sub_298745DC8(v9);
  if (sub_2987503E4(v9) == -1)
  {
    *(v9 + 44) |= 2u;
  }

  sub_298740418(v9);
  sub_29874C6EC(v9);
  sub_298743B9C(v9);
  sub_2987470DC(v9);
  sub_29874D29C(v9);
  sub_2987471C0(v9);
  return v9;
}

void el_end(EditLine *a1)
{
  if (a1)
  {
    sub_298750E0C(a1);
    sub_29874055C(a1, 0);
    sub_29874DAD0(a1);
    sub_29874532C(a1);
    sub_298745F94(a1);
    sub_298750720(a1);
    sub_2987405E0(a1);
    sub_29874C750(a1);
    sub_298743C00(a1);
    nullsub_1(a1);
    sub_29874D348(a1);
    free(*a1);
    free(*(a1 + 158));
    free(*(a1 + 160));
    free(*(a1 + 162));
    free(*(a1 + 164));

    free(a1);
  }
}

void el_reset(EditLine *a1)
{
  sub_298750E0C(a1);

  sub_29874055C(a1, 0);
}

int el_wset(EditLine *a1, int a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v22 = va_arg(va1, char *);
  v23 = va_arg(va1, FILE *);
  v24 = va_arg(va1, void);
  v21 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
LABEL_36:
    result = -1;
    goto LABEL_49;
  }

  va_copy(v19, va);
  result = -1;
  switch(a2)
  {
    case 0:
    case 12:
      v7 = v22;
      v9 = a1;
      v8 = 0;
      goto LABEL_16;
    case 1:
      result = sub_29874D7E0(a1, v22);
      goto LABEL_49;
    case 2:
      result = sub_298746224(a1, v22);
      goto LABEL_49;
    case 3:
      v12 = *(a1 + 11);
      result = 0;
      if (v22)
      {
        v10 = v12 | 1;
      }

      else
      {
        v10 = v12 & 0xFFFFFFFE;
      }

      goto LABEL_44;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      v5 = 1;
      memset(v20, 0, sizeof(v20));
      do
      {
        v6 = va_arg(v19, void);
        *(v20 + v5) = v6;
        if (!v6)
        {
          break;
        }

        ++v5;
      }

      while (v5 != 20);
      if (a2 <= 5)
      {
        if (a2 == 4)
        {
          *&v20[0] = &unk_298755780;
          result = sub_2987462CC();
          goto LABEL_49;
        }

        if (a2 == 5)
        {
          *&v20[0] = &unk_298755794;
          result = sub_29874F3A4(a1);
          goto LABEL_49;
        }

LABEL_52:
        abort();
      }

      if (a2 == 6)
      {
        *&v20[0] = &unk_2987557B0;
        result = sub_29874F564(a1, v5, v20);
        goto LABEL_49;
      }

      if (a2 == 7)
      {
        *&v20[0] = &unk_2987557C8;
        result = sub_29874F7FC(a1, v5, v20);
        goto LABEL_49;
      }

      if (a2 != 8)
      {
        goto LABEL_52;
      }

      *&v20[0] = &unk_2987557E4;
      result = sub_298750FE0(a1, v5, v20);
LABEL_49:
      v16 = *MEMORY[0x29EDCA608];
      return result;
    case 9:
      result = sub_2987468C4(a1, v22, v23, v24);
      goto LABEL_49;
    case 10:
      result = sub_298743C2C(a1, v22, v23);
      v10 = *(a1 + 11) & 0xFFFFFFBF;
      goto LABEL_44;
    case 11:
      v11 = *(a1 + 11);
      result = 0;
      if (v22)
      {
        v10 = v11 & 0xFFFFFFFB;
      }

      else
      {
        v10 = v11 | 4;
      }

      goto LABEL_44;
    case 13:
      result = sub_2987473B0(a1, v22);
      v10 = *(a1 + 11) & 0xFFFFFF7F;
LABEL_44:
      *(a1 + 11) = v10;
      goto LABEL_49;
    case 14:
      result = 0;
      *(a1 + 10) = v22;
      goto LABEL_49;
    case 15:
      v13 = *(a1 + 11);
      if (v22)
      {
        if ((v13 & 8) == 0)
        {
          *(a1 + 11) = v13 | 8;
          sub_2987475A8(a1);
        }
      }

      else if ((v13 & 8) != 0)
      {
        *(a1 + 11) = v13 & 0xFFFFFFF7;
        sub_298747640(a1);
      }

      goto LABEL_48;
    case 16:
      if (v22)
      {
        sub_29875090C(a1);
      }

      else
      {
        sub_298750E0C(a1);
      }

      goto LABEL_48;
    case 19:
      v14 = v23;
      if (v22 == 2)
      {
        *(a1 + 3) = v23;
        v18 = fileno(v14);
        result = 0;
        *(a1 + 10) = v18;
      }

      else if (v22 == 1)
      {
        *(a1 + 2) = v23;
        v17 = fileno(v14);
        result = 0;
        *(a1 + 9) = v17;
      }

      else
      {
        if (v22)
        {
          goto LABEL_36;
        }

        *(a1 + 1) = v23;
        v15 = fileno(v14);
        result = 0;
        *(a1 + 8) = v15;
      }

      goto LABEL_49;
    case 20:
      sub_29874C13C(a1);
      sub_29874B484(a1);
      sub_29874F318(a1);
LABEL_48:
      result = 0;
      goto LABEL_49;
    case 21:
    case 22:
      v7 = v22;
      v8 = v23;
      v9 = a1;
LABEL_16:
      result = sub_298747134(v9, v7, v8, a2, 1);
      goto LABEL_49;
    case 23:
      result = sub_298740918(a1, v22, v23);
      goto LABEL_49;
    default:
      goto LABEL_49;
  }
}

int el_wget(EditLine *a1, int a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v27 = va_arg(va1, uint64_t *);
  v28 = va_arg(va1, void *);
  v26 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_32;
  }

  va_copy(v14, va);
  v3 = -1;
  if (a2 > 13)
  {
    if (a2 <= 17)
    {
      switch(a2)
      {
        case 14:
          v3 = 0;
          *v27 = *(a1 + 10);
          goto LABEL_38;
        case 15:
          v3 = 0;
          v4 = (*(a1 + 11) >> 3) & 1;
          goto LABEL_37;
        case 17:
          v25 = 0;
          v24 = 0u;
          v23 = 0u;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v5 = 1;
          v16 = 0u;
          do
          {
            v6 = va_arg(v14, char *);
            (&v15)[v5] = v6;
            if (!v6)
            {
              break;
            }

            ++v5;
          }

          while (v5 != 20);
          v15 = aGettc;
          v7 = sub_29874F6E0(a1, v5, &v15);
          goto LABEL_26;
      }

      goto LABEL_38;
    }

    if ((a2 - 21) < 2)
    {
      v8 = v27;
      v9 = v28;
LABEL_25:
      v7 = sub_298747184(a1, v8, v9, a2);
      goto LABEL_26;
    }

    if (a2 != 18)
    {
      goto LABEL_38;
    }

    v3 = v27;
    switch(v27)
    {
      case 2:
        v3 = 0;
        v11 = *(a1 + 3);
        goto LABEL_41;
      case 1:
        v3 = 0;
        v11 = *(a1 + 2);
        goto LABEL_41;
      case 0:
        v11 = *(a1 + 1);
LABEL_41:
        *v28 = v11;
        goto LABEL_38;
    }

LABEL_32:
    v3 = -1;
    goto LABEL_38;
  }

  if (a2 > 2)
  {
    if (a2 <= 11)
    {
      if (a2 == 3)
      {
        v3 = 0;
        v4 = *(a1 + 11) & 1;
        goto LABEL_37;
      }

      if (a2 == 11)
      {
        v3 = 0;
        v4 = ((*(a1 + 11) >> 2) & 1) == 0;
LABEL_37:
        *v27 = v4;
        goto LABEL_38;
      }

      goto LABEL_38;
    }

    if (a2 != 12)
    {
      v10 = sub_2987473D0(a1);
      v3 = 0;
      *v27 = v10;
      goto LABEL_38;
    }

    goto LABEL_24;
  }

  switch(a2)
  {
    case 0:
LABEL_24:
      v8 = v27;
      v9 = 0;
      goto LABEL_25;
    case 1:
      sub_29874E70C(a1, v27);
      v3 = 0;
      break;
    case 2:
      v7 = sub_298746290(a1, v27);
LABEL_26:
      v3 = v7;
      break;
  }

LABEL_38:
  v12 = *MEMORY[0x29EDCA608];
  return v3;
}

int el_source(EditLine *a1, const char *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = 0;
  }

  else
  {
    if (issetugid())
    {
      return -1;
    }

    v14 = getenv("HOME");
    if (!v14)
    {
      return -1;
    }

    v15 = v14;
    v16 = strlen(v14);
    v17 = malloc_type_malloc(v16 + 9, 0x100004077774924uLL);
    if (!v17)
    {
      return -1;
    }

    v3 = v17;
    snprintf(v17, v16 + 9, "%s%s", v15, "/.editrc");
    v4 = v3;
  }

  v5 = fopen(v3, "r");
  if (!v5)
  {
    free(v4);
    return -1;
  }

  v6 = v5;
  v7 = 0;
  v19 = 0;
  v8 = MEMORY[0x29EDCA600];
  while (1)
  {
    v9 = fgetln(v6, &v19);
    if (!v9)
    {
      break;
    }

    if (*v9 != 10)
    {
      v10 = sub_2987528BC(v9, a1 + 1264);
      if (v10)
      {
        v11 = v10;
        if (v19 && v10[v19 - 1] == 10)
        {
          --v19;
        }

        v12 = *v10;
        if (v12)
        {
          while (v12 <= 0x7F)
          {
            if ((*(v8 + 4 * v12 + 60) & 0x4000) == 0)
            {
              goto LABEL_19;
            }

LABEL_16:
            v13 = v11[1];
            ++v11;
            v12 = v13;
            if (!v13)
            {
              goto LABEL_17;
            }
          }

          if (__maskrune(v12, 0x4000uLL))
          {
            goto LABEL_16;
          }

LABEL_19:
          if (*v11 != 35)
          {
            goto LABEL_17;
          }
        }

        else
        {
LABEL_17:
          v7 = sub_298746B00(a1, v11);
          if (v7 == -1)
          {
            break;
          }
        }
      }
    }
  }

  free(v4);
  fclose(v6);
  return v7;
}

void el_resize(EditLine *a1)
{
  v4 = 0;
  v2 = 0x8000000;
  v3 = 0;
  sigprocmask(1, &v2, &v3);
  if (sub_29874EB38(a1, &v4 + 1, &v4))
  {
    sub_29874EC1C(a1, SHIDWORD(v4), v4);
  }

  sigprocmask(3, &v3, 0);
}

uint64_t sub_2987423B8(uint64_t a1, int a2, uint64_t a3)
{
  result = 0xFFFFFFFFLL;
  if (a2 == 2)
  {
    if (a3)
    {
      v5 = *(a3 + 8);
      if (v5)
      {
        if (!wcscmp(*(a3 + 8), "o"))
        {
          *(a1 + 44) &= ~4u;
          sub_29875090C(a1);
          return 0;
        }

        else if (!wcscmp(v5, "o"))
        {
          sub_298750E0C(a1);
          result = 0;
          *(a1 + 44) |= 4u;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t sub_298742470(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 96);
  if (v3 == *(a1 + 104))
  {
    if (v3 == *(a1 + 88))
    {
      sub_29874F320(a1, a2);
      return 2;
    }

    else
    {
      el_beep_0(a1);
      return 6;
    }
  }

  else
  {
    if (*(a1 + 124))
    {
      sub_29873FD24(a1, *(a1 + 128));
    }

    else
    {
      sub_29873FDB8(a1);
    }

    v5 = *(a1 + 104);
    if (*(a1 + 96) > v5)
    {
      *(a1 + 96) = v5;
    }

    return 4;
  }
}

uint64_t sub_2987424F8(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  if (v2 == v3)
  {
    return 6;
  }

  v4 = sub_298740084(v2, v3, *(a1 + 128), sub_29873FEC0);
  v5 = *(a1 + 96);
  v6 = *(a1 + 936);
  if (v5 < v4)
  {
    v7 = *(a1 + 96);
    do
    {
      v8 = *v7++;
      *v6++ = v8;
    }

    while (v7 < v4);
  }

  *(a1 + 944) = v6;
  sub_29873FD24(a1, (v4 - v5) >> 2);
  v9 = *(a1 + 104);
  if (*(a1 + 96) > v9)
  {
    *(a1 + 96) = v9;
  }

  return 4;
}

uint64_t sub_298742594(uint64_t a1)
{
  v1 = *(a1 + 944) - *(a1 + 936);
  if (!v1)
  {
    return 0;
  }

  if (*(a1 + 104) + v1 >= *(a1 + 112))
  {
    return 6;
  }

  v3 = *(a1 + 96);
  *(a1 + 952) = v3;
  sub_29873FAE4(a1, v1 >> 2);
  v4 = *(a1 + 936);
  v5 = *(a1 + 944);
  while (v4 < v5)
  {
    v6 = *v4++;
    *v3++ = v6;
  }

  if (*(a1 + 128) == 1)
  {
    *(a1 + 96) = v3;
  }

  return 4;
}

uint64_t sub_29874262C(void *a1)
{
  v1 = a1[11];
  v2 = a1[117];
  v3 = a1[13];
  if (v1 < v3)
  {
    v4 = a1[11];
    do
    {
      v5 = *v4++;
      *v2++ = v5;
    }

    while (v4 < v3);
  }

  a1[118] = v2;
  a1[12] = v1;
  a1[13] = v1;
  return 4;
}

uint64_t sub_298742664(void *a1)
{
  v1 = a1[119];
  if (!v1)
  {
    return 6;
  }

  v3 = a1[12];
  v4 = a1[117];
  if (v1 <= v3)
  {
    v8 = a1[119];
    if (v1 < v3)
    {
      do
      {
        v9 = *v8++;
        *v4++ = v9;
      }

      while (v8 < v3);
    }

    a1[118] = v4;
    sub_29873FDE8(a1, (v8 - v1) >> 2);
    a1[12] = a1[119];
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3++;
      v4[v5++] = v6;
    }

    while (v3 < v1);
    a1[118] = &v4[v5];
    sub_29873FD24(a1, (v5 * 4) >> 2);
  }

  return 4;
}

uint64_t sub_298742710(void *a1)
{
  v1 = a1[119];
  if (!v1)
  {
    return 6;
  }

  v2 = a1[12];
  v3 = a1[117];
  if (v1 <= v2)
  {
    for (; v1 < v2; ++v3)
    {
      v6 = *v1++;
      *v3 = v6;
    }
  }

  else
  {
    do
    {
      v4 = *v2++;
      *v3++ = v4;
    }

    while (v2 < v1);
  }

  v5 = 0;
  a1[118] = v3;
  return v5;
}

uint64_t sub_298742768(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 <= *(a1 + 88) + 4)
  {
    return 6;
  }

  *(v1 - 8) = vrev64_s32(*(v1 - 8));
  return 4;
}

uint64_t sub_298742794(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  if (v2 == v3)
  {
    return 6;
  }

  *(a1 + 96) = sub_298740084(v2, v3, *(a1 + 128), sub_29873FEC0);
  if (*(a1 + 1096) != 1 || !*(a1 + 1000))
  {
    return 5;
  }

  sub_2987402A4(a1);
  return 4;
}

uint64_t sub_298742810(uint64_t a1)
{
  v2 = sub_298740084(*(a1 + 96), *(a1 + 104), *(a1 + 128), sub_29873FEC0);
  v3 = *(a1 + 96);
  if (v3 < v2)
  {
    v4 = MEMORY[0x29EDCA600];
    while (1)
    {
      v5 = *v3;
      if (v5 <= 0x7F)
      {
        break;
      }

      if (__maskrune(v5, 0x1000uLL))
      {
        goto LABEL_7;
      }

LABEL_8:
      if (++v3 >= v2)
      {
        goto LABEL_9;
      }
    }

    if ((*(v4 + 4 * v5 + 60) & 0x1000) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v3 = __toupper(*v3);
    goto LABEL_8;
  }

LABEL_9:
  v6 = *(a1 + 104);
  if (v2 <= v6)
  {
    v6 = v2;
  }

  *(a1 + 96) = v6;
  return 4;
}

uint64_t sub_2987428C8(uint64_t a1)
{
  v2 = sub_298740084(*(a1 + 96), *(a1 + 104), *(a1 + 128), sub_29873FEC0);
  v3 = *(a1 + 96);
  v4 = MEMORY[0x29EDCA600];
  if (v3 >= v2)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v5 = *v3;
    if (v5 > 0x7F)
    {
      break;
    }

    if ((*(v4 + 4 * v5 + 60) & 0x100) != 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (++v3 >= v2)
    {
      goto LABEL_15;
    }
  }

  if (!__maskrune(v5, 0x100uLL))
  {
    goto LABEL_6;
  }

LABEL_8:
  v6 = *v3;
  if (v6 <= 0x7F)
  {
    if ((*(v4 + 4 * v6 + 60) & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    v7 = __toupper(*v3);
    goto LABEL_13;
  }

  if (__maskrune(v6, 0x1000uLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  while (1)
  {
    ++v3;
LABEL_15:
    if (v3 >= v2)
    {
      break;
    }

    v8 = *v3;
    if (v8 > 0x7F)
    {
      if (!__maskrune(v8, 0x8000uLL))
      {
        continue;
      }
    }

    else if ((*(v4 + 4 * v8 + 60) & 0x8000) == 0)
    {
      continue;
    }

    v7 = __tolower(*v3);
LABEL_13:
    *v3 = v7;
  }

  v9 = *(a1 + 104);
  if (v2 <= v9)
  {
    v9 = v2;
  }

  *(a1 + 96) = v9;
  return 4;
}

uint64_t sub_2987429F4(uint64_t a1)
{
  v2 = sub_298740084(*(a1 + 96), *(a1 + 104), *(a1 + 128), sub_29873FEC0);
  v3 = *(a1 + 96);
  if (v3 < v2)
  {
    v4 = MEMORY[0x29EDCA600];
    while (1)
    {
      v5 = *v3;
      if (v5 <= 0x7F)
      {
        break;
      }

      if (__maskrune(v5, 0x8000uLL))
      {
        goto LABEL_7;
      }

LABEL_8:
      if (++v3 >= v2)
      {
        goto LABEL_9;
      }
    }

    if ((*(v4 + 4 * v5 + 60) & 0x8000) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v3 = __tolower(*v3);
    goto LABEL_8;
  }

LABEL_9:
  v6 = *(a1 + 104);
  if (v2 <= v6)
  {
    v6 = v2;
  }

  *(a1 + 96) = v6;
  return 4;
}

uint64_t sub_298742ABC(uint64_t a1)
{
  v1 = *(a1 + 96);
  *(a1 + 96) = *(a1 + 952);
  *(a1 + 952) = v1;
  return 5;
}

uint64_t sub_298742AD4(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 > 1000000)
  {
    return 6;
  }

  *(a1 + 124) = 1;
  *(a1 + 128) = 4 * v1;
  return 3;
}

uint64_t sub_298742B2C(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 96);
  if (v2 == v1)
  {
    return 6;
  }

  v4 = sub_298740004(*(a1 + 96), v1, *(a1 + 128), sub_29873FEC0);
  sub_29873FAE4(a1, (v2 - v4) >> 2);
  if (v2 <= v4)
  {
    v6 = v2;
  }

  else
  {
    v5 = *(a1 + 104);
    v6 = v2;
    do
    {
      if (v6 >= v5)
      {
        break;
      }

      v7 = *v4++;
      *v6++ = v7;
    }

    while (v4 < v2);
  }

  *(a1 + 96) = v6;
  return 4;
}

uint64_t sub_298742BE8(uint64_t a1)
{
  if (*(a1 + 96) <= *(a1 + 88))
  {
    return 6;
  }

  if (*(a1 + 124))
  {
    sub_29873FDE8(a1, *(a1 + 128));
  }

  else
  {
    sub_29873FE8C(a1);
  }

  v3 = *(a1 + 96) - 4 * *(a1 + 128);
  if (v3 < *(a1 + 88))
  {
    v3 = *(a1 + 88);
  }

  *(a1 + 96) = v3;
  return 4;
}

char *__cdecl tilde_expand_0(char *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (*a1 == 126)
  {
    memset(&v18, 0, sizeof(v18));
    v17 = 0;
    v2 = strchr(a1 + 1, 47);
    if (v2)
    {
      v3 = v2 - a1;
      v4 = v2 - a1 + 1;
      v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
      if (v5)
      {
        v6 = v5;
        strncpy(v5, a1 + 1, v3 - 1)[v3 - 1] = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = strdup(a1 + 1);
      if (v9)
      {
        v6 = v9;
        v4 = 0;
LABEL_10:
        if (*v6)
        {
          if (!getpwnam_r(v6, &v18, v19, 0x400uLL, &v17))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v15 = getuid();
          if (!getpwuid_r(v15, &v18, v19, 0x400uLL, &v17))
          {
LABEL_13:
            free(v6);
            if (v17)
            {
              v10 = &a1[v4];
              v11 = strlen(v17->pw_dir);
              v12 = v11 + strlen(v10);
              v13 = malloc_type_malloc(v12 + 2, 0x100004077774924uLL);
              v14 = v13;
              if (v13)
              {
                snprintf(v13, v12 + 2, "%s/%s", v17->pw_dir, v10);
              }
            }

            else
            {
              v14 = strdup(a1);
            }

            goto LABEL_20;
          }
        }

        v17 = 0;
        goto LABEL_13;
      }
    }

    v14 = 0;
LABEL_20:
    v16 = *MEMORY[0x29EDCA608];
    return v14;
  }

  v7 = *MEMORY[0x29EDCA608];

  return strdup(a1);
}

char *__cdecl filename_completion_function_0(const char *a1, int a2)
{
  v3 = qword_2A13BD690;
  if (a2 && qword_2A13BD690)
  {
    goto LABEL_3;
  }

  v9 = strrchr(a1, 47);
  if (!v9)
  {
    free(qword_2A13BD698);
    if (*a1)
    {
      qword_2A13BD698 = strdup(a1);
      if (!qword_2A13BD698)
      {
        return 0;
      }
    }

    else
    {
      qword_2A13BD698 = 0;
    }

    free(qword_2A13BD6A0);
    v15 = 0;
    qword_2A13BD6A0 = 0;
    if (!v3)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v10 = v9 + 1;
  v11 = strlen(v9 + 1);
  v12 = malloc_type_realloc(qword_2A13BD698, v11 + 1, 0x100004077774924uLL);
  if (!v12)
  {
    free(qword_2A13BD698);
    v8 = 0;
    qword_2A13BD698 = 0;
    return v8;
  }

  qword_2A13BD698 = v12;
  strcpy(v12, v10);
  v13 = v10 - a1;
  v14 = malloc_type_realloc(qword_2A13BD6A0, v10 - a1 + 1, 0x100004077774924uLL);
  if (!v14)
  {
    free(qword_2A13BD6A0);
    v8 = 0;
    qword_2A13BD6A0 = 0;
    return v8;
  }

  v15 = v14;
  qword_2A13BD6A0 = v14;
  strncpy(v14, a1, v13)[v13] = 0;
  v3 = qword_2A13BD690;
  if (qword_2A13BD690)
  {
LABEL_29:
    closedir(v3);
    qword_2A13BD690 = 0;
    v15 = qword_2A13BD6A0;
  }

LABEL_30:
  free(qword_2A13BD6A8);
  qword_2A13BD6A8 = 0;
  if (!v15)
  {
    qword_2A13BD6A0 = strdup(&unk_29875BB52);
    if (qword_2A13BD6A0)
    {
      v18 = "./";
      goto LABEL_35;
    }

    return 0;
  }

  v18 = v15;
  if (*v15 != 126)
  {
LABEL_35:
    v19 = strdup(v18);
    goto LABEL_36;
  }

  v19 = tilde_expand_0(v15);
LABEL_36:
  qword_2A13BD6A8 = v19;
  if (!v19)
  {
    return 0;
  }

  v20 = opendir(v19);
  qword_2A13BD690 = v20;
  if (!v20)
  {
    return 0;
  }

  v3 = v20;
  v21 = qword_2A13BD698;
  if (qword_2A13BD698)
  {
    v21 = strlen(qword_2A13BD698);
  }

  qword_2A13BD6B0 = v21;
LABEL_3:
  v4 = readdir(v3);
  if (!v4)
  {
LABEL_13:
    closedir(qword_2A13BD690);
    v8 = 0;
    qword_2A13BD690 = 0;
    return v8;
  }

  while (1)
  {
    d_name = v4->d_name;
    v5 = v4->d_name[0];
    if (v5 == 46 && (!v4->d_name[1] || v4->d_name[1] == 46 && !v4->d_name[2]))
    {
      goto LABEL_12;
    }

    if (!qword_2A13BD6B0)
    {
      break;
    }

    if (v5 == *qword_2A13BD698)
    {
      d_namlen = v4->d_namlen;
      if (qword_2A13BD6B0 <= d_namlen && !strncmp(v4->d_name, qword_2A13BD698, qword_2A13BD6B0))
      {
        goto LABEL_23;
      }
    }

LABEL_12:
    v4 = readdir(qword_2A13BD690);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  d_namlen = v4->d_namlen;
LABEL_23:
  v16 = d_namlen + strlen(qword_2A13BD6A0);
  v17 = malloc_type_malloc(v16 + 1, 0x100004077774924uLL);
  v8 = v17;
  if (v17)
  {
    snprintf(v17, v16 + 1, "%s%s", qword_2A13BD6A0, d_name);
  }

  return v8;
}

char **__cdecl completion_matches(const char *a1, CPFunction *a2)
{
  v4 = (a2)(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v6;
      if (v6 + 3 >= v8)
      {
        do
        {
          v11 = v8;
          v8 *= 2;
        }

        while (v6 + 3 >= v11);
        v10 = malloc_type_realloc(v7, 8 * v11, 0x10040436913F5uLL);
        if (!v10)
        {
          free(v7);
          return v10;
        }
      }

      else
      {
        v10 = v7;
        v11 = v8;
      }

      ++v6;
      *(v10 + v9 + 1) = v5;
      v5 = (a2)(a1, v9 + 1);
      v8 = v11;
      v7 = v10;
    }

    while (v5);
    v12 = strlen(*(v10 + 1));
    if (v6 >= 2)
    {
      for (i = 2; i <= v6; ++i)
      {
        v13 = 0;
        if (v12)
        {
          while (*(*(v10 + 1) + v13) == *(*(v10 + i) + v13))
          {
            if (v12 == ++v13)
            {
              v13 = v12;
              break;
            }
          }
        }

        v12 = v13;
      }
    }

    else
    {
      v13 = v12;
    }

    v14 = malloc_type_malloc(v13 + 1, 0x100004077774924uLL);
    if (v14)
    {
      v15 = strncpy(v14, *(v10 + 1), v13);
      v15[v13] = 0;
      *v10 = v15;
      *(v10 + v9 + 2) = 0;
      return v10;
    }

    free(v10);
  }

  return 0;
}

void sub_2987432A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 152);
  v7 = a2 + 8;
  v8 = a3 - 1;
  if (a4 + 1 > v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 / (a4 + 1);
  }

  v10 = a3 - 2 + v9;
  v11 = __CFADD__(a3 - 2, v9);
  qsort((a2 + 8), a3 - 1, 8uLL, sub_2987433C4);
  if (!v11)
  {
    v12 = 0;
    if (v9 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v9;
    }

    v14 = v10 / v9;
    do
    {
      v15 = 0;
      do
      {
        v16 = v12 + v15 * v14;
        if (v16 >= v8)
        {
          break;
        }

        v17 = v15 + 1;
        v18 = v15 == 0;
        v19 = " ";
        if (v18)
        {
          v19 = &unk_29875BB52;
        }

        fprintf(*(a1 + 16), "%s%-*s", v19, v4, *(v7 + 8 * v16));
        v15 = v17;
      }

      while (v13 != v17);
      fputc(10, *(a1 + 16));
      ++v12;
    }

    while (v12 < v14);
  }
}

uint64_t sub_2987433D0(EditLine *a1, char *(__cdecl *a2)(const char *, int), uint64_t (*a3)(char *, void), __int32 *a4, __int32 *a5, const char *(*a6)(char *a1), unint64_t a7, int *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, uint64_t (*a12)(const __int32 *, const __int32 *), uint64_t (*a13)(char *), uint64_t (*a14)(void))
{
  v18 = *(a1 + 136);
  v19 = *(a1 + 137);
  if (a8)
  {
    if (v18 == v19)
    {
      v20 = 63;
    }

    else
    {
      v20 = 9;
    }

    *a8 = v20;
  }

  v63 = v19;
  v64 = v18;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = filename_completion_function_0;
  }

  v65 = v21;
  if (a6)
  {
    v22 = a6;
  }

  else
  {
    v22 = sub_2987437DC;
  }

  v61 = v22;
  v23 = el_wline(a1);
  v24 = v23;
  if (a12)
  {
    cursor = a12(v23->buffer, v23->cursor);
  }

  else
  {
    buffer = v23->buffer;
    cursor = v23->cursor;
    if (cursor > v23->buffer)
    {
      v27 = v23->cursor;
      do
      {
        v29 = *--v27;
        v28 = v29;
        if (wcschr(a4, v29) || a5 && wcschr(a5, v28))
        {
          break;
        }

        cursor = v27;
      }

      while (v27 > buffer);
    }
  }

  v30 = el_line(a1);
  v31 = v24->buffer;
  if (v24->buffer >= cursor)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0;
    do
    {
      v33 = *v31++;
      v32 += sub_298752A80(v33);
    }

    while (v31 < cursor);
  }

  v34 = v30->cursor - v30->buffer - v32;
  rl_line_buffer = v30->buffer;
  v35 = malloc_type_malloc(v34 + 1, 0x100004077774924uLL);
  strncpy(v35, &v30->buffer[v32], v34)[v34] = 0;
  if (!a13)
  {
    v36 = 0;
LABEL_29:
    if (a10)
    {
      *a10 = LODWORD(v30->cursor) - LODWORD(v30->buffer);
    }

    if (a11)
    {
      *a11 = LODWORD(v30->lastchar) - LODWORD(v30->buffer);
    }

    if (a3)
    {
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = v35;
      }

      v39 = a3(v38, (LODWORD(v30->cursor) - LODWORD(v30->buffer) - v34));
      v40 = v39;
      if (!a9)
      {
        goto LABEL_45;
      }

      if (*a9 || v39)
      {
LABEL_44:
        *a9 = 0;
        goto LABEL_45;
      }
    }

    if (v36)
    {
      v41 = v36;
    }

    else
    {
      v41 = v35;
    }

    v40 = completion_matches(v41, v65);
    if (a9)
    {
      goto LABEL_44;
    }

LABEL_45:
    if (!v40)
    {
      v37 = 0;
LABEL_78:
      free(v36);
      free(v35);
      return v37;
    }

    v42 = a1;
    if (**v40)
    {
      if (a14)
      {
        v43 = a14();
        if (!v43)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v43 = 0;
      }

      el_deletestr(v42, (v24->cursor - cursor) >> 2);
      v44 = v43;
      if (!v43)
      {
        v44 = *v40;
      }

      v45 = sub_2987528BC(v44, v42 + 1264);
      el_winsertstr(v42, v45);
      free(v43);
    }

    if (v64 != v63)
    {
      if (v40[2])
      {
        v52 = *v40;
      }

      else
      {
        v52 = *v40;
        v54 = v40[1];
        if (!v54 || !strcmp(*v40, v54))
        {
          v55 = v61(v52);
          v56 = sub_2987528BC(v55, v42 + 1264);
          el_winsertstr(v42, v56);
LABEL_73:
          v37 = 4;
          goto LABEL_74;
        }
      }

      v53 = *v52 != 0;
      el_beep(v42);
      v37 = (4 * v53);
LABEL_74:
      v57 = *v40;
      if (*v40)
      {
        v58 = v40 + 1;
        do
        {
          free(v57);
          v59 = *v58++;
          v57 = v59;
        }

        while (v59);
      }

      free(v40);
      goto LABEL_78;
    }

    v46 = v40[1];
    if (v46)
    {
      v47 = 0;
      v48 = 0;
      do
      {
        v49 = strlen(v46);
        if (v49 > v48)
        {
          v48 = v49;
        }

        v46 = v40[v47++ + 2];
      }

      while (v46);
      v50 = v47;
      fputc(10, *(v42 + 2));
      if (v47 > a7)
      {
        fprintf(*(v42 + 2), "Display all %zu possibilities? (y or n) ", v47);
        fflush(*(v42 + 2));
        v51 = getc(*MEMORY[0x29EDCA618]);
        fputc(10, *(v42 + 2));
        if (v51 != 121)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
      fputc(10, *(v42 + 2));
      v48 = 0;
      v50 = 0;
    }

    sub_2987432A8(v42, v40, v50 + 1, v48);
LABEL_69:
    v37 = 8;
    goto LABEL_74;
  }

  v36 = a13(v35);
  if (v36)
  {
    goto LABEL_29;
  }

  return 0;
}

const char *sub_2987437DC(char *a1)
{
  if (*a1 == 126)
  {
    v2 = tilde_expand_0(a1);
  }

  else
  {
    v2 = 0;
  }

  memset(&v8.st_uid, 0, 128);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  *&v8.st_dev = 0uLL;
  v4 = stat(v3, &v8);
  st_mode = v8.st_mode;
  if (v2)
  {
    free(v2);
  }

  v6 = "/";
  if ((st_mode & 0xF000) != 0x4000)
  {
    v6 = " ";
  }

  if (v4 == -1)
  {
    return " ";
  }

  else
  {
    return v6;
  }
}

__int32 *sub_298743954(__int32 *a1, unint64_t a2)
{
  v2 = a1;
  if (a1 < a2)
  {
    v4 = a1;
    do
    {
      if (*v4 == 92)
      {
        ++v4;
      }

      else if (wcschr(" ", *v4))
      {
        v2 = v4 + 1;
      }

      ++v4;
    }

    while (v4 < a2);
  }

  return v2;
}

_WORD *sub_2987439CC(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  result = malloc_type_malloc(v2 + 2, 0x100004077774924uLL);
  if (result)
  {
    if (*v1 == 92)
    {
      v4 = result;
      if (v1[1] == 126)
      {
        *result = 12078;
        v4 = result + 1;
        ++v1;
      }
    }

    else
    {
      v4 = result;
    }

    while (1)
    {
      v5 = *v1;
      if (v5 == 92)
      {
        v6 = *++v1;
        LOBYTE(v5) = v6;
        if (v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (!*v1)
        {
          *v4 = 0;
          return result;
        }

LABEL_8:
        ++v1;
        *v4++ = v5;
      }
    }
  }

  return result;
}

_BYTE *sub_298743A74(const char *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 0;
    v4 = (a1 + 1);
    do
    {
      v5 = v2;
      if (wcschr(" ", v2) || wcschr(")", v5))
      {
        ++v3;
      }

      v6 = *v4++;
      v2 = v6;
    }

    while (v6);
    v7 = v3 + 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = strlen(a1);
  v9 = malloc_type_malloc(v7 + v8, 0x100004077774924uLL);
  v10 = v9;
  if (v9)
  {
    v11 = *a1;
    v12 = v9;
    if (*a1)
    {
      v13 = (a1 + 1);
      v12 = v9;
      do
      {
        if (wcschr(" ", v11) || wcschr(")", v11))
        {
          *v12++ = 92;
          v11 = *(v13 - 1);
        }

        *v12++ = v11;
        v14 = *v13++;
        v11 = v14;
      }

      while (v14);
    }

    *v12 = 0;
  }

  return v10;
}

uint64_t sub_298743B9C(uint64_t a1)
{
  *(a1 + 1184) = 0u;
  v2 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
  *(a1 + 1152) = v2;
  *(a1 + 1160) = 1024;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  result = 0;
  *(a1 + 1168) = v3;
  return result;
}

uint64_t sub_298743C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 1184) = a3;
  *(a1 + 1192) = a2;
  return 0;
}

uint64_t sub_298743C3C(uint64_t a1)
{
  if (!*(a1 + 1176))
  {
    wcsncpy(*(a1 + 88), *(a1 + 1152), *(a1 + 1160));
    v4 = *(a1 + 88);
    v5 = v4 + *(a1 + 1168) - *(a1 + 1152);
    *(a1 + 104) = v5;
    if (*(a1 + 1096) != 1)
    {
      *(a1 + 96) = v5;
      return 4;
    }

LABEL_26:
    *(a1 + 96) = v4;
    return 4;
  }

  v2 = *(a1 + 1184);
  if (v2)
  {
    if ((*(a1 + 44) & 0x40) == 0)
    {
      if ((*(a1 + 1192))(v2) == -1)
      {
        return 6;
      }

      v3 = *(a1 + 1208);
      if (!v3)
      {
        return 6;
      }

LABEL_10:
      if (*(a1 + 1176) >= 2)
      {
        v6 = 1;
        while (1)
        {
          if ((*(a1 + 44) & 0x40) != 0)
          {
            v3 = sub_298743DF8(a1, 6);
          }

          else
          {
            if ((*(a1 + 1192))(*(a1 + 1184), a1 + 1200, 6) == -1)
            {
              break;
            }

            v3 = *(a1 + 1208);
          }

          if (!v3)
          {
            break;
          }

          if (++v6 >= *(a1 + 1176))
          {
            goto LABEL_18;
          }
        }

        *(a1 + 1176) = v6;
        return 6;
      }

LABEL_18:
      wcsncpy(*(a1 + 88), v3, (*(a1 + 112) - *(a1 + 88)) >> 2);
      v7 = *(a1 + 88);
      *(*(a1 + 112) - 4) = 0;
      v8 = wcslen(v7);
      v4 = &v7[v8];
      *(a1 + 104) = v4;
      if (v8 >= 1 && *(v4 - 1) == 10)
      {
        *(a1 + 104) = --v4;
      }

      if (v4 > v7 && *(v4 - 1) == 32)
      {
        *(a1 + 104) = --v4;
      }

      if (*(a1 + 1096) == 1)
      {
        *(a1 + 96) = v7;
        return 4;
      }

      goto LABEL_26;
    }

    v3 = sub_298743DF8(a1, 3);
    if (v3)
    {
      goto LABEL_10;
    }
  }

  return 6;
}

__int32 *sub_298743DF8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  if ((*(a1 + 1192))(*(a1 + 1184), &v4, a2) == -1)
  {
    return 0;
  }

  else
  {
    return sub_2987528BC(v5, a1 + 1264);
  }
}

uint64_t sub_298743E5C(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 1184);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 1 || !wcscmp(*(a3 + 8), "l"))
  {
    if ((*(a1 + 44) & 0x40) != 0)
    {
      result = sub_298743DF8(a1, 4);
      while (result)
      {
LABEL_13:
        v10 = *(a1 + 16);
        v11 = *(a1 + 1200);
        v12 = sub_29875277C(result, a1 + 1264);
        fprintf(v10, "%d %s", v11, v12);
        if ((*(a1 + 44) & 0x40) != 0)
        {
          result = sub_298743DF8(a1, 5);
        }

        else
        {
          if ((*(a1 + 1192))(*(a1 + 1184), a1 + 1200, 5) == -1)
          {
            return 0;
          }

          result = *(a1 + 1208);
        }
      }
    }

    else if ((*(a1 + 1192))(v3, a1 + 1200, 4) == -1)
    {
      return 0;
    }

    else
    {
      result = *(a1 + 1208);
      if (result)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (a2 != 3)
    {
      return 0xFFFFFFFFLL;
    }

    *&v13.num = 0;
    v13.str = 0;
    v7 = wcstol(*(a3 + 16), 0, 0);
    v8 = *(a3 + 8);
    if (!wcscmp(v8, "s"))
    {
      return history_w(*(a1 + 1184), &v13, 1, v7);
    }

    else
    {
      if (wcscmp(v8, "u"))
      {
        return 0xFFFFFFFFLL;
      }

      return history_w(*(a1 + 1184), &v13, 20, v7);
    }
  }

  return result;
}

uint64_t sub_298743FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = malloc_type_realloc(*(a1 + 1152), 4 * a3, 0x100004052888210uLL);
  if (result)
  {
    v7 = result;
    bzero((result + 4 * a2), 4 * (a3 - a2));
    *(a1 + 1168) = v7 + *(a1 + 1168) - *(a1 + 1152);
    *(a1 + 1152) = v7;
    *(a1 + 1160) = a3;
    return 1;
  }

  return result;
}

HistoryW *history_winit(void)
{
  v0 = malloc_type_malloc(0x60uLL, 0x108004000789A1EuLL);
  v1 = v0;
  if (v0)
  {
    if (sub_298744174(v0) == -1)
    {
      free(v1);
      return 0;
    }

    else
    {
      *(v1 + 2) = -1;
      v1[3] = sub_2987441D8;
      v1[2] = sub_298744238;
      v1[4] = sub_298744274;
      v1[5] = sub_2987442B0;
      v1[6] = sub_29874432C;
      v1[7] = sub_298744384;
      v1[9] = sub_298744400;
      v1[10] = sub_298744448;
      v1[11] = sub_298744560;
      v1[8] = sub_298744680;
    }
  }

  return v1;
}

uint64_t sub_298744174(void *a1)
{
  v2 = malloc_type_malloc(0x40uLL, 0x10F004084742EBCuLL);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  result = 0;
  v3[3] = v3;
  v3[4] = v3;
  v3[1] = 0;
  *v3 = 0;
  v3[5] = v3;
  v3[6] = 0;
  v3[7] = 0;
  *a1 = v3;
  return result;
}

uint64_t sub_2987441D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 == a1)
  {
    *a2 = 5;
    v6 = "e";
  }

  else
  {
    v4 = *(v2 + 24);
    if (v4 != a1)
    {
      result = 0;
      *(a1 + 40) = v4;
      *a2 = *v4;
      return result;
    }

    *a2 = 6;
    v6 = "n";
  }

  *(a2 + 8) = v6;
  return 0xFFFFFFFFLL;
}

uint64_t sub_298744238(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a1 + 40) = v2;
  if (v2 == a1)
  {
    *a2 = 3;
    *(a2 + 8) = "f";
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a2 = *v2;
  }

  return result;
}

uint64_t sub_298744274(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  *(a1 + 40) = v2;
  if (v2 == a1)
  {
    *a2 = 4;
    *(a2 + 8) = "l";
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a2 = *v2;
  }

  return result;
}

uint64_t sub_2987442B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 == a1)
  {
    v6 = *(a1 + 52);
    v7 = v6 <= 0;
    if (v6 <= 0)
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }

    *a2 = v8;
    v9 = 5;
    if (!v7)
    {
      v9 = 6;
    }

    v10 = off_29EEAA0A8[v9];
  }

  else
  {
    v4 = *(v3 + 32);
    if (v4 != a1)
    {
      result = 0;
      *(a1 + 40) = v4;
      *a2 = *v4;
      return result;
    }

    *a2 = 7;
    v10 = "n";
  }

  *(a2 + 8) = v10;
  return 0xFFFFFFFFLL;
}

uint64_t sub_29874432C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 == a1)
  {
    v4 = *(a1 + 52);
    v5 = v4 <= 0;
    if (v4 <= 0)
    {
      v6 = 5;
    }

    else
    {
      v6 = 8;
    }

    *a2 = v6;
    v7 = 5;
    if (!v5)
    {
      v7 = 8;
    }

    *(a2 + 8) = off_29EEAA0A8[v7];
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a2 = *v2;
  }

  return result;
}

uint64_t sub_298744384(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 52))
  {
    v3 = *(a1 + 40);
    if (v3 == a1 || *v3 != a3)
    {
      v3 = a1;
      do
      {
        v3 = *(v3 + 24);
      }

      while (v3 != a1 && *v3 != a3);
      *(a1 + 40) = v3;
    }

    if (v3 != a1)
    {
      return 0;
    }

    v5 = "e";
    v6 = 9;
  }

  else
  {
    v5 = "e";
    v6 = 5;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  return 0xFFFFFFFFLL;
}

void sub_298744400(uint64_t a1)
{
  for (i = *(a1 + 32); i != a1; i = *(a1 + 32))
  {
    sub_298745228(a1, i);
  }

  *(a1 + 40) = a1;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
}

uint64_t sub_298744448(uint64_t a1, uint64_t a2, __int32 *a3)
{
  if (*(a1 + 60))
  {
    v6 = *(a1 + 24);
    if (v6 != a1)
    {
      result = wcscmp(*(v6 + 8), a3);
      if (!result)
      {
        return result;
      }
    }
  }

  v8 = malloc_type_malloc(0x28uLL, 0x10F00401F389D68uLL);
  if (!v8)
  {
LABEL_15:
    *a2 = 2;
    *(a2 + 8) = "m";
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = sub_2987537AC(a3);
  v9[1] = v10;
  if (!v10)
  {
    free(v9);
    goto LABEL_15;
  }

  v11 = *(a1 + 24);
  v9[2] = 0;
  v9[3] = v11;
  v9[4] = a1;
  *(v11 + 32) = v9;
  *(a1 + 24) = v9;
  v12 = vadd_s32(*(a1 + 52), 0x100000001);
  *v9 = v12.i32[1];
  *(a1 + 52) = v12;
  *(a1 + 40) = v9;
  *a2 = *v9;
  v13 = *(a1 + 52);
  result = 1;
  if (v13 >= 1 && v13 > *(a1 + 48))
  {
    do
    {
      sub_298745228(a1, *(a1 + 32));
      v14 = *(a1 + 52);
    }

    while (v14 >= 1 && v14 > *(a1 + 48));
    return 1;
  }

  return result;
}

uint64_t sub_298744560(uint64_t a1, uint64_t a2, __int32 *a3)
{
  v6 = *(a1 + 40);
  if (v6 == a1)
  {

    return sub_298744448(a1, a2, a3);
  }

  else
  {
    v7 = wcslen(*(v6 + 8));
    v8 = wcslen(a3) + v7;
    v9 = malloc_type_malloc(4 * (v8 + 1), 0x100004052888210uLL);
    if (v9)
    {
      v10 = v9;
      wcsncpy(v9, *(*(a1 + 40) + 8), v8 + 1);
      v10[v8] = 0;
      v11 = wcslen(v10);
      wcsncat(v10, a3, v8 - v11);
      free(*(v6 + 8));
      result = 0;
      *(v6 + 8) = v10;
      *a2 = **(a1 + 40);
    }

    else
    {
      *a2 = 2;
      *(a2 + 8) = "m";
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_298744680(uint64_t a1, uint64_t a2, int a3)
{
  if (sub_298744384(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 8) = sub_2987537AC(*(*(a1 + 40) + 8));
  v6 = *(a1 + 40);
  *a2 = *v6;
  sub_298745228(a1, v6);
  return 0;
}

void history_wend(HistoryW *a1)
{
  if (*(a1 + 3) == sub_2987441D8)
  {
    sub_298744400(*a1);
  }

  free(*a1);

  free(a1);
}

int history_w(HistoryW *a1, HistEventW *a2, int a3, ...)
{
  va_start(va, a3);
  v82 = va_arg(va, const __int32 *);
  v83 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2));
  v84 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2));
  v85 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2));
  v86 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2));
  v87 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2));
  v88 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2, int a3));
  v89 = va_arg(va, void (*)(uint64_t a1));
  v90 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2, __int32 *a3));
  v91 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2, __int32 *a3));
  v92 = va_arg(va, uint64_t (*)(uint64_t a1, uint64_t a2, int a3));
  a2->num = 0;
  a2->str = "O";
  switch(a3)
  {
    case 0:
      *(a1 + 2) = -1;
      v5 = v83;
      v6 = v84;
      v7 = v85;
      v8 = v86;
      v9 = v87;
      v10 = v88;
      v11 = v89;
      v12 = v90;
      v13 = v91;
      v14 = v92;
      if (v83)
      {
        v15 = v84 == 0;
      }

      else
      {
        v15 = 1;
      }

      v24 = v15 || v85 == 0 || v86 == 0 || v87 == 0 || v88 == 0 || v90 == 0 || v91 == 0 || v89 == 0 || v92 == 0 || v82 == 0;
      v25 = v24;
      v26 = *(a1 + 3);
      if (v24)
      {
        if (v26 == sub_2987441D8)
        {
          goto LABEL_122;
        }

        v27 = v25;
        v28 = sub_298744174(a1);
        v25 = v27;
        v14 = sub_298744680;
        v13 = sub_298744560;
        v12 = sub_298744448;
        v11 = sub_298744400;
        v10 = sub_298744384;
        v9 = sub_29874432C;
        v8 = sub_2987442B0;
        v7 = sub_298744274;
        v6 = sub_2987441D8;
        if (v28 == -1)
        {
LABEL_122:
          a2->num = 12;
          v41 = "r";
          goto LABEL_137;
        }

        v5 = sub_298744238;
      }

      else
      {
        if (v26 == sub_2987441D8)
        {
          v77 = v25;
          sub_298744400(*a1);
          v11 = v89;
          v14 = v92;
          v25 = v77;
        }

        *(a1 + 2) = -1;
      }

      *(a1 + 2) = v5;
      *(a1 + 3) = v6;
      *(a1 + 4) = v7;
      *(a1 + 5) = v8;
      *(a1 + 6) = v9;
      *(a1 + 7) = v10;
      *(a1 + 10) = v12;
      *(a1 + 11) = v13;
      *(a1 + 8) = v14;
      *(a1 + 9) = v11;
      if (!v25)
      {
        return 0;
      }

      goto LABEL_122;
    case 1:
      if (*(a1 + 3) != sub_2987441D8)
      {
        goto LABEL_85;
      }

      if ((v82 & 0x80000000) == 0)
      {
        v34 = 0;
        *(*a1 + 48) = v82;
        return v34;
      }

      a2->num = 15;
      v41 = "b";
      goto LABEL_137;
    case 2:
      if (*(a1 + 3) != sub_2987441D8)
      {
        v41 = "f";
        v42 = 14;
        goto LABEL_136;
      }

      v60 = *(*a1 + 52);
      a2->num = v60;
      if (v60 > -2)
      {
        return 0;
      }

      v41 = "h";
      v42 = 13;
      goto LABEL_136;
    case 3:
      return (*(a1 + 2))(*a1, a2);
    case 4:
      return (*(a1 + 4))(*a1, a2);
    case 5:
      return (*(a1 + 5))(*a1, a2);
    case 6:
      return (*(a1 + 3))(*a1, a2);
    case 7:
      return (*(a1 + 7))(*a1, a2, v82);
    case 8:
      return (*(a1 + 6))(*a1, a2);
    case 9:
      return (*(a1 + 11))(*a1, a2, v82);
    case 10:
      v34 = (*(a1 + 10))(*a1, a2, v82);
      if (v34 != -1)
      {
        *(a1 + 2) = a2->num;
      }

      return v34;
    case 11:
      if ((*(a1 + 7))(*a1, a2, *(a1 + 2)) == -1)
      {
        return -1;
      }

      return (*(a1 + 11))(*a1, a2, v82);
    case 12:
      history_wend(a1);
      return 0;
    case 13:
      v48 = wcslen(v82);
      v49 = (*(a1 + 6))(*a1, a2);
      while (2)
      {
        if (v49 == -1)
        {
          goto LABEL_116;
        }

        if (wcsncmp(v82, a2->str, v48))
        {
          v49 = (*(a1 + 5))(*a1, a2);
          continue;
        }

        return 0;
      }

    case 14:
      v30 = wcslen(v82);
      v31 = (*(a1 + 6))(*a1, a2);
      while (2)
      {
        if (v31 == -1)
        {
          goto LABEL_116;
        }

        if (wcsncmp(v82, a2->str, v30))
        {
          v31 = (*(a1 + 3))(*a1, a2);
          continue;
        }

        return 0;
      }

    case 15:
      v43 = (*(a1 + 6))(*a1, a2);
      while (2)
      {
        if (v43 == -1)
        {
          goto LABEL_116;
        }

        if (a2->num != v82)
        {
          v43 = (*(a1 + 3))(*a1, a2);
          continue;
        }

        return 0;
      }

    case 16:
      v29 = (*(a1 + 6))(*a1, a2);
      while (2)
      {
        if (v29 == -1)
        {
          goto LABEL_116;
        }

        if (a2->num != v82)
        {
          v29 = (*(a1 + 5))(*a1, a2);
          continue;
        }

        return 0;
      }

    case 17:
      v44 = fopen(v82, "r");
      if (!v44)
      {
        goto LABEL_83;
      }

      v45 = v44;
      __n = 0;
      v80 = 0;
      v81 = 0;
      v46 = fgetln(v44, &__n);
      if (!v46 || strncmp(v46, "_HiStOrY_V2_\n", __n) || (v64 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL)) == 0)
      {
        fclose(v45);
        goto LABEL_83;
      }

      v65 = v64;
      v66 = fgetln(v45, &__n);
      if (v66)
      {
        v67 = v66;
        v34 = 0;
        v68 = 1024;
        while (1)
        {
          v69 = __n;
          if (__n && v67[__n - 1] == 10)
          {
            v69 = --__n;
          }

          if (v68 < v69)
          {
            v68 = (v69 & 0xFFFFFFFFFFFFFC00) + 1024;
            v70 = malloc_type_realloc(v65, v68, 0x100004077774924uLL);
            if (!v70)
            {
              break;
            }

            v69 = __n;
            v65 = v70;
          }

          v79 = 0;
          v71 = v65;
          if (v69)
          {
            v71 = v65;
            do
            {
              --v69;
              v73 = *v67++;
              v72 = v73;
              while (1)
              {
                v74 = unvis(v71, v72, &v79, 0);
                if (v74 != 2)
                {
                  break;
                }

                ++v71;
              }

              if (v74 && v74 != 3)
              {
                if (v74 != 1)
                {
                  goto LABEL_163;
                }

                ++v71;
              }
            }

            while (v69);
          }

          v75 = unvis(v71, 0, &v79, 2048) == 1 ? v71 + 1 : v71;
          *v75 = 0;
LABEL_163:
          v76 = sub_2987528BC(v65, &unk_2A13BD6B8);
          if (!v76 || (*(a1 + 10))(*a1, &v80, v76) == -1)
          {
            break;
          }

          ++v34;
          v67 = fgetln(v45, &__n);
          if (!v67)
          {
            goto LABEL_173;
          }
        }

        v34 = -1;
      }

      else
      {
        v34 = 0;
      }

LABEL_173:
      free(v65);
      fclose(v45);
      if (v34 == -1)
      {
LABEL_83:
        a2->num = 10;
        v41 = "c";
        goto LABEL_137;
      }

      return v34;
    case 18:
      v50 = fopen(v82, "w");
      if (!v50)
      {
        goto LABEL_124;
      }

      v51 = v50;
      v80 = 0;
      v81 = 0;
      v52 = fileno(v50);
      if (fchmod(v52, 0x180u) == -1 || fputs("_HiStOrY_V2_\n", v51) == -1 || (v53 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL)) == 0)
      {
        fclose(v51);
        goto LABEL_124;
      }

      v54 = v53;
      if ((*(a1 + 4))(*a1, &v80) == -1)
      {
        v34 = 0;
        goto LABEL_176;
      }

      v34 = 0;
      v55 = 1024;
      while (2)
      {
        v56 = sub_29875277C(v81, &unk_2A13BD6D8);
        v57 = 4 * strlen(v56);
        if (v57 < v55)
        {
          goto LABEL_103;
        }

        v55 = (v57 & 0xFFFFFFFFFFFFFC00) + 1024;
        v58 = malloc_type_realloc(v54, v55, 0x100004077774924uLL);
        if (v58)
        {
          v54 = v58;
LABEL_103:
          strvis(v54, v56, 28);
          fprintf(v51, "%s\n", v54);
          ++v34;
          if ((*(a1 + 5))(*a1, &v80) == -1)
          {
            goto LABEL_176;
          }

          continue;
        }

        break;
      }

      v34 = -1;
LABEL_176:
      free(v54);
      fclose(v51);
      if (v34 == -1)
      {
LABEL_124:
        a2->num = 11;
        v41 = "c";
        goto LABEL_137;
      }

      return v34;
    case 19:
      (*(a1 + 9))(*a1, a2);
      return 0;
    case 20:
      if (*(a1 + 3) != sub_2987441D8)
      {
LABEL_85:
        a2->num = 14;
        v41 = "f";
        goto LABEL_137;
      }

      v61 = *(*a1 + 60);
      v34 = 0;
      if (v82)
      {
        v62 = v61 | 1;
      }

      else
      {
        v62 = v61 & 0xFFFFFFFE;
      }

      *(*a1 + 60) = v62;
      return v34;
    case 21:
      if (*(a1 + 3) == sub_2987441D8)
      {
        v34 = 0;
        v47 = *(*a1 + 60) & 1;
      }

      else
      {
        a2->str = "f";
        v34 = -1;
        v47 = 14;
      }

      a2->num = v47;
      return v34;
    case 22:
      return (*(a1 + 8))(*a1, a2, v82);
    case 23:
      if ((*(a1 + 6))(*a1, a2) == -1)
      {
        goto LABEL_116;
      }

      v59 = v82 + 1;
      while (--v59 > 0)
      {
        if ((*(a1 + 5))(*a1, a2) == -1)
        {
LABEL_116:
          a2->num = 9;
          v41 = "e";
LABEL_137:
          a2->str = v41;
          return -1;
        }
      }

      if (!v83)
      {
        return 0;
      }

      v34 = 0;
      *v83 = *(*(*a1 + 40) + 16);
      return v34;
    case 24:
      v36 = v82;
      v37 = *a1;
      if (!*(*a1 + 52))
      {
        v41 = "e";
        v42 = 5;
LABEL_136:
        a2->num = v42;
        goto LABEL_137;
      }

      v38 = *a1;
      do
      {
        v38 = *(v38 + 32);
      }

      while (v38 != v37 && v36-- > 0);
      *(v37 + 40) = v38;
      if (v38 == v37)
      {
        v41 = "e";
        v42 = 9;
        goto LABEL_136;
      }

      if (v83 != -1)
      {
        a2->str = sub_2987537AC(*(v38 + 8));
        v40 = *(v37 + 40);
        a2->num = *v40;
        if (v83)
        {
          *v83 = *(v40 + 16);
          v40 = *(v37 + 40);
        }

        sub_298745228(v37, v40);
      }

      return 0;
    case 25:
      if (!v82)
      {
        return -1;
      }

      v33 = sub_2987537AC(v82);
      if (!v33)
      {
        return -1;
      }

      v34 = 0;
      v35 = *(*a1 + 40);
      *(v35 + 8) = v33;
      *(v35 + 16) = v83;
      return v34;
    default:
      a2->num = 1;
      v41 = "u";
      goto LABEL_137;
  }
}

void sub_298745228(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    abort();
  }

  v4 = *(a2 + 32);
  if (*(a1 + 40) == a2)
  {
    *(a1 + 40) = v4;
    if (v4 == a1)
    {
      *(a1 + 40) = *(a2 + 24);
    }
  }

  v5 = *(a2 + 24);
  *(v4 + 24) = v5;
  *(v5 + 32) = v4;
  free(*(a2 + 8));
  free(a2);
  --*(a1 + 52);
}

uint64_t sub_2987452A4(uint64_t a1)
{
  v2 = malloc_type_malloc(0x1000uLL, 0x100004052888210uLL);
  *(a1 + 1128) = v2;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 1136) = 0;
  sub_2987453D0(0);
  result = 0;
  *(a1 + 1136) = 0;
  return result;
}

void sub_29874532C(uint64_t a1)
{
  free(*(a1 + 1128));
  *(a1 + 1128) = 0;
  v2 = *(a1 + 1136);

  sub_29874536C(v2);
}

void sub_29874536C(void *a1)
{
  if (a1)
  {
    sub_29874536C(a1[3]);
    sub_29874536C(a1[2]);

    free(a1);
  }
}

void sub_2987453D0(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 16))
  {
    (sub_2987453D0)();
    *(a1 + 16) = 0;
  }

  sub_2987453D0(*(a1 + 24));
  v2 = *(a1 + 4);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
LABEL_7:
        abort();
      }

      goto LABEL_11;
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_7;
    }

LABEL_11:
    v3 = *(a1 + 8);
    if (v3)
    {
      free(v3);
    }
  }

  free(a1);
}

uint64_t sub_298745464(EditLine *a1, __int32 *a2, void *a3)
{
  v6 = (a1 + 1136);
  while (1)
  {
    v7 = *v6;
    while (*v7 != *a2)
    {
      v7 = *(v7 + 24);
      if (!v7)
      {
        *a3 = 0;
        return 1;
      }
    }

    v6 = (v7 + 16);
    if (!*(v7 + 16))
    {
      break;
    }

    if (el_wgetc(a1, a2) != 1)
    {
      result = 0;
      *a3 = 7;
      return result;
    }
  }

  *a3 = *(v7 + 8);
  if (!*(v7 + 4))
  {
    return 0;
  }

  *a2 = 0;
  return *(v7 + 4);
}

void sub_298745514(uint64_t a1, int *a2, const __int32 **a3, int a4)
{
  v5 = *a2;
  if (!*a2)
  {
    v9 = *(a1 + 24);
    v10 = "keymacro_add: Null extended-key not allowed.\n";
    v11 = 45;
    goto LABEL_13;
  }

  if (!a4 && *a3 == 24)
  {
    v9 = *(a1 + 24);
    v10 = "keymacro_add: sequence-lead-in command not allowed\n";
    v11 = 51;
LABEL_13:

    fwrite(v10, v11, 1uLL, v9);
    return;
  }

  v12 = *(a1 + 1136);
  if (!v12)
  {
    v12 = malloc_type_malloc(0x20uLL, 0x1032040358E0334uLL);
    if (v12)
    {
      *v12 = v5;
      v12[1] = 2;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 1) = 0;
    }

    *(a1 + 1136) = v12;
  }

  sub_298745608(v12, a2, a3, a4);
}

void sub_298745608(_DWORD *a1, int *a2, const __int32 **a3, int a4)
{
  while (1)
  {
    v8 = *a2;
    if (*a1 == *a2)
    {
      v9 = a1;
    }

    else
    {
      while (1)
      {
        v9 = *(a1 + 3);
        if (!v9)
        {
          break;
        }

        a1 = *(a1 + 3);
        if (*v9 == v8)
        {
          goto LABEL_9;
        }
      }

      v10 = malloc_type_malloc(0x20uLL, 0x1032040358E0334uLL);
      v9 = v10;
      if (v10)
      {
        *v10 = v8;
        v10[1] = 2;
        *(v10 + 2) = 0;
        *(v10 + 3) = 0;
        *(v10 + 1) = 0;
      }

      *(a1 + 3) = v10;
    }

LABEL_9:
    v12 = a2[1];
    ++a2;
    v11 = v12;
    a1 = *(v9 + 2);
    if (!v12)
    {
      break;
    }

    if (!a1)
    {
      v13 = malloc_type_malloc(0x20uLL, 0x1032040358E0334uLL);
      a1 = v13;
      if (v13)
      {
        *v13 = v11;
        v13[1] = 2;
        *(v13 + 2) = 0;
        *(v13 + 3) = 0;
        *(v13 + 1) = 0;
      }

      *(v9 + 2) = v13;
    }
  }

  if (a1)
  {
    sub_2987453D0(*(v9 + 2));
    *(v9 + 2) = 0;
  }

  v14 = v9[1];
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      goto LABEL_24;
    }

    if (v14 != 3)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_24;
    }

    if (v14 != 1)
    {
LABEL_29:
      abort();
    }
  }

  v15 = *(v9 + 1);
  if (v15)
  {
    free(v15);
  }

LABEL_24:
  v9[1] = a4;
  if (a4 == 3 || a4 == 1)
  {
    *(v9 + 1) = sub_2987537AC(*a3);
  }

  else
  {
    if (a4)
    {
      goto LABEL_29;
    }

    *(v9 + 1) = *a3;
  }
}

uint64_t sub_29874576C(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 256)
  {
    v3 = *a3;
    if (*(a2 + v3) == 24)
    {
      v4 = *(result + 1056);
      v5 = *(result + 1048);
      if (v4 == a2 && *(v5 + v3) != 24)
      {
        return sub_2987457C4(result, a3);
      }

      if (v5 == a2 && *(v4 + v3) != 24)
      {
        return sub_2987457C4(result, a3);
      }
    }
  }

  return result;
}

uint64_t sub_2987457C4(uint64_t a1, _DWORD *a2)
{
  if (*a2)
  {
    if (*(a1 + 1136))
    {
      sub_298745814((a1 + 1136), a2);
    }

    return 0;
  }

  else
  {
    fwrite("keymacro_delete: Null extended-key not allowed.\n", 0x30uLL, 1uLL, *(a1 + 24));
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_298745814(_DWORD **a1, _DWORD *a2)
{
  v2 = a1;
  v3 = *a1;
  if (**a1 != *a2)
  {
    while (1)
    {
      v6 = v3;
      v3 = *(v3 + 3);
      if (!v3)
      {
        return 0;
      }

      if (*v3 == *a2)
      {
        v7 = a2[1];
        v4 = a2 + 1;
        if (v7)
        {
          goto LABEL_7;
        }

        v2 = v6 + 6;
        goto LABEL_12;
      }
    }
  }

  v5 = a2[1];
  v4 = a2 + 1;
  if (!v5)
  {
LABEL_12:
    *v2 = *(v3 + 3);
LABEL_13:
    *(v3 + 3) = 0;
    sub_2987453D0(v3);
    return 1;
  }

  v6 = 0;
LABEL_7:
  if (!*(v3 + 2))
  {
    return 0;
  }

  result = sub_298745814(v3 + 4, v4);
  if (result)
  {
    if (*(v3 + 2))
    {
      return 0;
    }

    v9 = v6 + 6;
    if (!v6)
    {
      v9 = v2;
    }

    *v9 = *(v3 + 3);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2987458DC(uint64_t result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1136);
  if (v4 || *a2)
  {
    **(result + 1128) = 34;
    v5 = 1;
    v6 = a2;
    while (2)
    {
      v7 = v4;
      while (1)
      {
        if (!v7)
        {
          return fprintf(*(v3 + 24), "Unbound extended key %ls\n", a2);
        }

        if (!v6)
        {
          goto LABEL_15;
        }

        v8 = *v6;
        if (!v8)
        {
          v4 = v7;
LABEL_15:

          return sub_298745CD8(v3, v4, v5);
        }

        if (*v7 == v8)
        {
          break;
        }

        v7 = *(v7 + 3);
        if (!v7)
        {
          return fprintf(*(v3 + 24), "Unbound extended key %ls\n", a2);
        }
      }

      v9 = sub_298752BF4((*(v3 + 1128) + 4 * v5), 1024 - v5, v8);
      if (v9 == -1)
      {
        return fprintf(*(v3 + 24), "Unbound extended key %ls\n", a2);
      }

      v4 = *(v7 + 2);
      ++v6;
      if (v4)
      {
        v5 += v9;
        continue;
      }

      break;
    }

    if (*v6)
    {
      return fprintf(*(v3 + 24), "Unbound extended key %ls\n", a2);
    }

    v10 = *(v3 + 1128);
    *&v10[v9 + v5] = 34;
    v11 = v7[1];

    return sub_298745A30(v3, v10, v7 + 1, v11);
  }

  return result;
}

uint64_t sub_298745A30(uint64_t result, unsigned __int32 *a2, unsigned int **a3, int a4)
{
  v5 = result;
  v18 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    v9 = *(result + 16);
    v10 = sub_29875277C(a2, result + 1264);
    result = fprintf(v9, "%-15s->  %s\n", v10, "no input");
    goto LABEL_11;
  }

  if (a4)
  {
    if (a4 != 3 && a4 != 1)
    {
      abort();
    }

    if (a4 == 1)
    {
      v6 = "";
    }

    else
    {
      v6 = "[]";
    }

    sub_298745B74(*a3, v17, 1024, v6);
    goto LABEL_9;
  }

  v12 = *(result + 1104);
  v13 = *v12;
  if (!*v12)
  {
    goto LABEL_11;
  }

  v14 = *a3;
  if (*(v12 + 8) == v14)
  {
LABEL_17:
    wcstombs(v17, v13, 0x400uLL);
    v17[1023] = 0;
LABEL_9:
    v7 = *(v5 + 16);
    v8 = sub_29875277C(a2, v5 + 1264);
    result = fprintf(v7, "%-15s->  %s\n", v8, v17);
    goto LABEL_11;
  }

  v15 = (v12 + 32);
  while (1)
  {
    v13 = *(v15 - 1);
    if (!v13)
    {
      break;
    }

    v16 = *v15;
    v15 += 6;
    if (v16 == v14)
    {
      goto LABEL_17;
    }
  }

LABEL_11:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_298745B74(unsigned int *a1, char *a2, uint64_t a3, char *a4)
{
  v7 = a1;
  v22 = *MEMORY[0x29EDCA608];
  v8 = a2;
  if (*a4)
  {
    v8 = a2 + 1;
    if (a3 >= 1)
    {
      *a2 = *a4;
    }
  }

  v9 = &a2[a3];
  v10 = *a1;
  if (v10)
  {
    do
    {
      v11 = v21;
      v12 = sub_298752BF4(v21, 8uLL, v10);
      v13 = v8;
      while (1)
      {
        v8 = v13;
        if (v12 <= 0)
        {
          break;
        }

        --v12;
        v14 = *v11++;
        v15 = sub_298752840(v13, v9 - v13, v14);
        v13 = &v8[v15];
        if (v15 == -1)
        {
          goto LABEL_15;
        }
      }

      v16 = v7[1];
      ++v7;
      v10 = v16;
    }

    while (v16);
  }

  else
  {
    if (v8 < v9)
    {
      *v8 = 94;
    }

    v17 = v8 + 1;
    v8 += 2;
    if (v17 < v9)
    {
      *v17 = 64;
    }
  }

LABEL_15:
  if (*a4 && a4[1])
  {
    v18 = v8 + 1;
    if (v8 < v9)
    {
      *v8 = a4[1];
    }
  }

  else
  {
    v18 = v8;
  }

  if (v18 < v9)
  {
    *v18 = 0;
  }

  result = v18 - a2 + 1;
  if (result >= a3)
  {
    *(v9 - 1) = 0;
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298745CD8(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  if (a3 > 0x3FA)
  {
    *(*(a1 + 1128) + 4 * a3 + 4) = 34;
    fwrite("Some extended keys too long for internal print buffer", 0x35uLL, 1uLL, *(a1 + 24));
    return fprintf(*(a1 + 24), " %ls...\n", *(a1 + 1128));
  }

  else
  {
    do
    {
      v6 = sub_298752BF4((*(a1 + 1128) + 4 * a3), 1024 - a3, *a2);
      v7 = *(a2 + 2);
      if (v7)
      {
        result = sub_298745CD8(a1, v7, v6 + a3);
      }

      else
      {
        v9 = *(a1 + 1128);
        *&v9[v6 + a3] = 34;
        result = sub_298745A30(a1, v9, a2 + 1, a2[1]);
      }

      a2 = *(a2 + 3);
    }

    while (a2);
  }

  return result;
}

uint64_t sub_298745DC8(uint64_t a1)
{
  v2 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
  *(a1 + 1048) = v2;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
  *(a1 + 1056) = v3;
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 1072) = &unk_298755E60;
  *(a1 + 1080) = &unk_298755F60;
  *(a1 + 1088) = &unk_298756060;
  v4 = malloc_type_malloc(0x990uLL, 0x10500400D13D5BAuLL);
  *(a1 + 1104) = v4;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = sub_2987526C8();
  memcpy(v5, v6, 0x990uLL);
  v7 = malloc_type_malloc(0x330uLL, 0x80040B8603338uLL);
  *(a1 + 1112) = v7;
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = sub_2987526BC();
  memcpy(v8, v9, 0x330uLL);
  *(a1 + 1120) = 102;
  sub_298745ED0(a1);
  return 0;
}

void sub_298745ED0(uint64_t a1)
{
  v2 = *(a1 + 1056);
  v3 = *(a1 + 1048);
  v4 = *(a1 + 1088);
  v5 = *(a1 + 1080);
  *(a1 + 1096) = 1;
  *(a1 + 1064) = v2;
  sub_298745300(a1);
  for (i = 0; i != 256; ++i)
  {
    *(v2 + i) = *(v4 + i);
    *(v3 + i) = *(v5 + i);
  }

  sub_298745FF0(a1);
  v7 = *(a1 + 1056);
  for (j = 128; j != 256; ++j)
  {
    if (__maskrune(j, 0x40000uLL))
    {
      *(v7 + j) = 8;
    }
  }

  sub_29875079C(a1, 1);

  sub_29874EDD4(a1);
}

void sub_298745F94(uint64_t a1)
{
  free(*(a1 + 1048));
  *(a1 + 1048) = 0;
  free(*(a1 + 1056));
  *(a1 + 1056) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1080) = 0;
  free(*(a1 + 1104));
  *(a1 + 1104) = 0;
  free(*(a1 + 1112));
  *(a1 + 1112) = 0;
}

void sub_298745FF0(uint64_t a1)
{
  v2 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 1048);
  do
  {
    if (*(*(a1 + 1056) + v2) == 48)
    {
      v3 = *(a1 + 1056);
      goto LABEL_11;
    }

    ++v2;
  }

  while (v2 != 256);
  v2 = 0;
  while (*(v3 + v2) != 48)
  {
    if (++v2 == 256)
    {
      if (*(a1 + 1096) != 1)
      {
        v3 = *(a1 + 1056);
      }

      LODWORD(v2) = 27;
      break;
    }
  }

LABEL_11:
  v4 = 0;
  v9[0] = v2;
  v9[2] = 0;
  do
  {
    v5 = *(v3 + 128 + v4);
    if (v5 > 0x22 || ((1 << v5) & 0x401000100) == 0)
    {
      v9[1] = v4;
      v7 = sub_2987453B8(a1, v5);
      sub_298745514(a1, v9, v7, 0);
    }

    ++v4;
  }

  while (v4 != 128);
  *(v3 + v9[0]) = 24;
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29874611C(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1056);
  v3 = *(a1 + 1048);
  v4 = *(a1 + 1072);
  *(a1 + 1096) = 0;
  *(a1 + 1064) = v2;
  sub_298745300(a1);
  for (i = 0; i != 256; ++i)
  {
    *(v2 + i) = *(v4 + i);
    *(v3 + i) = 34;
  }

  sub_298745FF0(a1);
  v6 = *(a1 + 1056);
  for (j = 128; j != 256; ++j)
  {
    if (__maskrune(j, 0x40000uLL))
    {
      *(v6 + j) = 8;
    }
  }

  v10 = 0x1800000018;
  v11 = 0;
  v8 = sub_2987453B8(a1, 41);
  sub_298745514(a1, &v10, v8, 0);
  sub_29875079C(a1, 1);
  sub_29874EDD4(a1);
  v9 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298746224(uint64_t a1, __int32 *a2)
{
  if (!wcscmp(a2, dword_298756160))
  {
    sub_29874611C(a1);
  }

  else
  {
    if (wcscmp(a2, dword_298756178))
    {
      return 0xFFFFFFFFLL;
    }

    sub_298745ED0(a1);
  }

  return 0;
}

uint64_t sub_298746290(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 1096);
  if (!v2)
  {
    v3 = &unk_298756160;
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = &unk_298756178;
LABEL_7:
  result = 0;
  *a2 = v3;
  return result;
}

uint64_t sub_2987462CC()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v48[512] = *MEMORY[0x29EDCA608];
  if (!v1)
  {
    goto LABEL_65;
  }

  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *(v0 + 1056);
    v9 = (v1 + 16);
    do
    {
      if (*v4 != 45)
      {
        if (v5)
        {
          if (v6)
          {
            sub_29874F244(v3, v4);
            goto LABEL_65;
          }

          v23 = *v9;
          if (!*v9)
          {
            v18 = v3;
            v19 = v4;
            goto LABEL_31;
          }

          goto LABEL_51;
        }

        v21 = sub_298746EE0(v48, v4, 1024);
        if (v21)
        {
          v4 = v21;
          if (v6)
          {
            if (v21[1] || (v22 = *v21, *(v8 + v22) == 24))
            {
              sub_2987457C4(v3, v21);
              goto LABEL_32;
            }

            result = 0;
            v42 = 34;
            goto LABEL_71;
          }

          v23 = *v9;
          if (!*v9)
          {
            sub_29874679C(v3, v8, v21);
            goto LABEL_32;
          }

LABEL_51:
          if (!v7)
          {
            v36 = sub_298746FD0(v3, v23);
            if (v36 == -1)
            {
              v41 = *v2;
              v45 = *v2;
              v46 = *v9;
              goto LABEL_65;
            }

            if (v5)
            {
              v37 = sub_2987453C4(v3, 0);
              sub_29874F1D0(v3, v4, v37, 0);
              goto LABEL_32;
            }

            v44 = v36;
            if (!v4[1])
            {
              sub_29874576C(v3, v8, v4);
              result = 0;
              *(v8 + *v4) = v44;
              goto LABEL_66;
            }

            v32 = sub_2987453B8(v3, v36);
            v33 = v3;
            v34 = v4;
            v35 = 0;
            goto LABEL_69;
          }

          v31 = sub_298746EE0(v47, v23, 1024);
          if (v31)
          {
            v32 = sub_2987453C4(v3, v31);
            v33 = v3;
            v34 = v4;
            v35 = v7;
            if (v5)
            {
              sub_29874F1D0(v3, v4, v32, v7);
LABEL_70:
              result = 0;
              v22 = *v4;
              v42 = 24;
LABEL_71:
              *(v8 + v22) = v42;
              goto LABEL_66;
            }

LABEL_69:
            sub_298745514(v33, v34, v32, v35);
            goto LABEL_70;
          }

          v38 = *__error();
          v39 = *(v3 + 24);
          v40 = *v2;
          if (v38 == 34)
          {
            fprintf(v39, "%ls: outstring too long.\n");
          }

          else
          {
            fprintf(v39, "%ls: Invalid \\ or ^ in outstring.\n");
          }
        }

        else
        {
          v28 = *__error();
          v29 = *(v3 + 24);
          v30 = *v2;
          if (v28 == 34)
          {
            fprintf(v29, "%ls: instring too long.\n");
          }

          else
          {
            fprintf(v29, "%ls: Invalid \\ or ^ in instring.\n");
          }
        }

LABEL_65:
        result = 0xFFFFFFFFLL;
        goto LABEL_66;
      }

      v10 = v4[1];
      if (v10 <= 107)
      {
        switch(v10)
        {
          case 'a':
            v8 = *(v3 + 1048);
            break;
          case 'k':
            v5 = 1;
            break;
          case 'e':
            sub_29874611C(v3);
            goto LABEL_32;
          default:
LABEL_20:
            break;
        }
      }

      else if (v10 > 114)
      {
        if (v10 != 115)
        {
          if (v10 == 118)
          {
            sub_298745ED0(v3);
            goto LABEL_32;
          }

          goto LABEL_20;
        }

        v7 = 1;
      }

      else
      {
        if (v10 != 114)
        {
          if (v10 == 108)
          {
            v24 = *(v3 + 1120);
            if (v24 < 1)
            {
              goto LABEL_32;
            }

            v25 = *(v3 + 1104);
            v26 = &v25[3 * v24];
            do
            {
              v27 = *v25;
              fprintf(*(v3 + 16), "%ls\n\t%ls\n", *v25, v25[2]);
              result = 0;
              v25 += 3;
            }

            while (v25 < v26);
            goto LABEL_66;
          }

          goto LABEL_20;
        }

        v6 = 1;
      }

      v11 = *v9++;
      v4 = v11;
    }

    while (v11);
  }

  fwrite("Standard key bindings\n", 0x16uLL, 1uLL, *(v3 + 16));
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *(v3 + 1056);
    if (*(v14 + v13) != *(v14 + v12))
    {
      sub_2987469A0(v3, v14, v13, v12 - 1);
      v13 = v12;
    }

    ++v12;
  }

  while (v12 != 256);
  sub_2987469A0(v3, *(v3 + 1056), v13, 0xFFu);
  fwrite("Alternative key bindings\n", 0x19uLL, 1uLL, *(v3 + 16));
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = *(v3 + 1048);
    if (*(v17 + v16) != *(v17 + v15))
    {
      sub_2987469A0(v3, v17, v16, v15 - 1);
      v16 = v15;
    }

    ++v15;
  }

  while (v15 != 256);
  sub_2987469A0(v3, *(v3 + 1048), v16, 0xFFu);
  fwrite("Multi-character bindings\n", 0x19uLL, 1uLL, *(v3 + 16));
  sub_2987458DC(v3, &dword_298756184);
  fwrite("Arrow key bindings\n", 0x13uLL, 1uLL, *(v3 + 16));
  v18 = v3;
  v19 = &dword_298756184;
LABEL_31:
  sub_29874F2A0(v18, v19);
LABEL_32:
  result = 0;
LABEL_66:
  v43 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29874679C(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (*a3 && a3[1])
  {
    v6 = *MEMORY[0x29EDCA608];

    return sub_2987458DC(a1, a3);
  }

  else
  {
    result = sub_298745B74(a3, v12, 1024, &unk_29875BB52);
    v8 = *(a1 + 1120);
    if (v8 >= 1)
    {
      v9 = *(a1 + 1104);
      v10 = v9 + 24 * v8;
      while (*(v9 + 8) != *(a2 + *a3))
      {
        v9 += 24;
        if (v9 >= v10)
        {
          goto LABEL_12;
        }
      }

      result = fprintf(*(a1 + 16), "%s\t->\t%ls\n", v12, *v9);
    }

LABEL_12:
    v11 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t sub_2987468C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0xFFFFFFFFLL;
  if (a2 && a3 && a4)
  {
    v9 = *(a1 + 1120) + 1;
    v10 = malloc_type_realloc(*(a1 + 1112), 8 * v9, 0x80040B8603338uLL);
    if (v10 && (*(a1 + 1112) = v10, (v11 = malloc_type_realloc(*(a1 + 1104), 24 * v9, 0x10500400D13D5BAuLL)) != 0))
    {
      v12 = v11;
      result = 0;
      *(a1 + 1104) = v12;
      v13 = *(a1 + 1120);
      *(*(a1 + 1112) + 8 * v13) = a4;
      v14 = *(a1 + 1104) + 24 * v13;
      *v14 = a2;
      *(v14 + 8) = v13;
      *(v14 + 16) = a3;
      *(a1 + 1120) = v13 + 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_2987469A0(uint64_t result, uint64_t a2, signed int a3, unsigned int a4)
{
  v6 = result;
  v18 = *MEMORY[0x29EDCA608];
  v17[0] = a3;
  v17[1] = 0;
  v16[0] = a4;
  v16[1] = 0;
  v7 = *(a2 + a3);
  if (v7 == 34)
  {
    if (a3 == a4)
    {
      sub_298745B74(v17, v15, 1024, "");
      result = fprintf(*(v6 + 16), "%-15s->  is undefined\n");
    }
  }

  else
  {
    v8 = *(result + 1120);
    if (v8 < 1)
    {
LABEL_8:
      abort();
    }

    v9 = *(result + 1104);
    v10 = &v9[3 * v8];
    while (*(v9 + 2) != v7)
    {
      v9 += 3;
      if (v9 >= v10)
      {
        goto LABEL_8;
      }
    }

    sub_298745B74(v17, v15, 1024, "");
    if (a3 == a4)
    {
      v11 = *v9;
      result = fprintf(*(v6 + 16), "%-15s->  %ls\n");
    }

    else
    {
      sub_298745B74(v16, v14, 1024, "");
      v12 = *v9;
      result = fprintf(*(v6 + 16), "%-4s to %-7s->  %ls\n");
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298746B00(EditLine *a1, const __int32 *a2)
{
  v7 = 0;
  v6 = 0;
  v4 = tok_winit(0);
  tok_wstr(v4, a2, &v6, &v7);
  v6 = el_wparse(a1, v6, v7);
  tok_wend(v4);
  return v6;
}

uint64_t sub_298746CB0(__int32 **a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v3 = *a1 + 1;
  v2 = *v3;
  if (!v2)
  {
    goto LABEL_42;
  }

  if (*v1 == 94)
  {
    if (v2 == 63)
    {
      v2 = 127;
    }

    else
    {
      v2 = v2 & 0x9F;
    }

    goto LABEL_16;
  }

  if (*v1 != 92)
  {
    v3 = *a1;
    v2 = *v1;
    goto LABEL_16;
  }

  if (v2 > 96)
  {
    if (v2 > 109)
    {
      if (v2 > 115)
      {
        if (v2 == 116)
        {
          v2 = 9;
        }

        else if (v2 == 118)
        {
          v2 = 11;
        }
      }

      else if (v2 == 110)
      {
        v2 = 10;
      }

      else if (v2 == 114)
      {
        v2 = 13;
      }
    }

    else if (v2 > 100)
    {
      if (v2 == 101)
      {
        v2 = 27;
      }

      else if (v2 == 102)
      {
        v2 = 12;
      }
    }

    else if (v2 == 97)
    {
      v2 = 7;
    }

    else if (v2 == 98)
    {
      v2 = 8;
    }

    goto LABEL_16;
  }

  if ((v2 - 48) >= 8)
  {
    if (v2 != 85)
    {
      goto LABEL_16;
    }

    v13 = 0;
    v12[0] = xmmword_298756188;
    v12[1] = unk_298756198;
    v12[2] = xmmword_2987561A8;
    v12[3] = unk_2987561B8;
    if (v1[2] == 43)
    {
      LODWORD(v2) = 0;
      v3 = v1 + 3;
      v8 = 5;
      while (1)
      {
        v9 = wcschr(v12, *v3);
        if (v8 != 1 && !v9)
        {
          break;
        }

        v3 += v9 != 0;
        if (v9)
        {
          v2 = ((v9 - v12) >> 2) | (16 * v2);
        }

        else
        {
          v2 = v2;
        }

        if (!--v8)
        {
          if (v2 < 1114112)
          {
            goto LABEL_16;
          }

          break;
        }
      }
    }

LABEL_42:
    v2 = 0xFFFFFFFFLL;
    goto LABEL_43;
  }

  v2 = 0;
  v5 = v1 + 4;
  v6 = 3;
  while (1)
  {
    v7 = *v3;
    if ((*v3 - 56) < 0xFFFFFFF8)
    {
      break;
    }

    ++v3;
    v2 = (v7 + 8 * v2 - 48);
    if (!--v6)
    {
      v3 = v5;
      break;
    }
  }

  if (v2 >= 0x100)
  {
    goto LABEL_42;
  }

  --v3;
LABEL_16:
  *a1 = v3 + 1;
LABEL_43:
  v10 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_298746EE0(uint64_t a1, __int32 *a2, uint64_t a3)
{
  v12 = a2;
  if (a3)
  {
    for (i = 0; a3 != i; ++i)
    {
      v6 = v12;
      v7 = *v12;
      if (*v12 <= 91)
      {
        if (v7 != 77)
        {
          if (!v7)
          {
            *(a1 + 4 * i) = 0;
            return a1;
          }

LABEL_13:
          ++v12;
          *(a1 + 4 * i) = v7;
          continue;
        }

        if (v12[1] != 45 || !v12[2])
        {
          goto LABEL_13;
        }

        *(a1 + 4 * i) = 27;
        v12 = v6 + 2;
      }

      else
      {
        if (v7 != 92 && v7 != 94)
        {
          goto LABEL_13;
        }

        v8 = sub_298746CB0(&v12);
        if (v8 == -1)
        {
          v9 = __error();
          a1 = 0;
          v10 = 22;
          goto LABEL_16;
        }

        *(a1 + 4 * i) = v8;
      }
    }
  }

  v9 = __error();
  a1 = 0;
  v10 = 34;
LABEL_16:
  *v9 = v10;
  return a1;
}

uint64_t sub_298746FD0(uint64_t a1, __int32 *a2)
{
  v2 = *(a1 + 1120);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = (*(a1 + 1104) + 8); wcscmp(*(i - 1), a2); i += 3)
  {
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *i;
}

double sub_298747030(uint64_t a1, int a2)
{
  v3 = 888;
  if (!a2)
  {
    v3 = 864;
  }

  v4 = a1 + v3;
  v5 = *(a1 + v3 + 20);
  v6 = (*(a1 + v3))();
  if (!v5)
  {
    v6 = sub_2987528BC(v6, a1 + 1264);
  }

  v7 = *v6;
  if (*v6)
  {
    v8 = 0;
    v9 = (v6 + 1);
    do
    {
      if (*(v4 + 16) == v7)
      {
        v8 = !v8;
      }

      else if (v8)
      {
        sub_29874E0EC(a1, v7);
        v8 = 1;
      }

      else
      {
        sub_29874B2FC(a1, v7, 1);
        v8 = 0;
      }

      v10 = *v9++;
      v7 = v10;
    }

    while (v10);
  }

  result = *(a1 + 848);
  *(v4 + 8) = result;
  return result;
}

uint64_t sub_2987470DC(uint64_t a1)
{
  *(a1 + 864) = sub_298747118;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0;
  *(a1 + 888) = sub_298747124;
  *(a1 + 896) = 0;
  *(a1 + 904) = 0;
  return 0;
}

uint64_t sub_298747134(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v5 = a4 == 21 || a4 == 0;
  v6 = 888;
  if (v5)
  {
    v6 = 864;
  }

  v7 = a1 + v6;
  v8 = sub_298747124;
  if (v5)
  {
    v8 = sub_298747118;
  }

  if (a2)
  {
    v8 = a2;
  }

  *v7 = v8;
  *(v7 + 8) = 0;
  *(v7 + 16) = a3;
  *(v7 + 20) = a5;
  return 0;
}

uint64_t sub_298747184(uint64_t a1, void *a2, _DWORD *a3, int a4)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 888;
  if (!a4)
  {
    v4 = 864;
  }

  v5 = a1 + v4;
  *a2 = *v5;
  result = 0;
  if (a3)
  {
    *a3 = *(v5 + 16);
  }

  return result;
}

uint64_t sub_2987471D8(uint64_t a1, __int32 *a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  while (1)
  {
LABEL_2:
    *(*(a1 + 1248) + 116) = 0;
    while (1)
    {
      v7 = read(*(a1 + 32), &v17[v5], 1uLL);
      if (v7 != -1)
      {
        break;
      }

      v8 = *__error();
      v9 = *(*(a1 + 1248) + 116);
      if (v9 == 28)
      {
        goto LABEL_22;
      }

      if (v9 == 19)
      {
        el_wset(a1, 20);
LABEL_22:
        sub_29874D374(a1);
        goto LABEL_2;
      }

      if (v4)
      {
LABEL_31:
        *__error() = v8;
LABEL_32:
        *a2 = 0;
        return 0xFFFFFFFFLL;
      }

      v10 = *(a1 + 32);
      if (v8 == 35)
      {
LABEL_10:
        v11 = fcntl(v10, 3, 0);
        if (v11 == -1)
        {
          goto LABEL_31;
        }

        v4 = 1;
        if (fcntl(v10, 4, v11 & 0xFFFFFFFB) == -1)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v4 = 1;
        if (v8 != 4)
        {
          if (v8 != -1)
          {
            goto LABEL_31;
          }

          goto LABEL_10;
        }
      }
    }

    v12 = v7;
    if (!v7)
    {
      return v12;
    }

    v13 = v17[0];
    if ((*(a1 + 44) & 0x10) == 0)
    {
      if (v17[0] < 0 && !v5)
      {
        v15 = mbtowc(a2, v17, 1uLL);
        if (v15 == 1)
        {
          return v12;
        }

        v6 = v15;
        v13 = v17[0];
      }

      *a2 = v13;
      goto LABEL_28;
    }

    if ((v17[0] & 0x80) == 0 || v17[0] - 245 >= 0xFFFFFFCD)
    {
      v6 = mbtowc(a2, v17, v5 + 1);
      if (v6 == -1)
      {
        mbtowc(0, 0, 0);
        if (v5++ < 5)
        {
          continue;
        }

        *__error() = 92;
        goto LABEL_32;
      }

LABEL_28:
      if ((*(a1 + 44) & 0x20) == 0)
      {
        return v12;
      }

      v5 = 0;
      if (v6 <= 1)
      {
        return v12;
      }
    }
  }
}

uint64_t sub_2987473B0(uint64_t a1, uint64_t (*a2)(uint64_t a1, __int32 *a2))
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = sub_2987471D8;
  }

  *(a1 + 1256) = v2;
  return 0;
}

uint64_t sub_2987473D0(uint64_t a1)
{
  if (*(a1 + 1256) == sub_2987471D8)
  {
    return 0;
  }

  else
  {
    return *(a1 + 1256);
  }
}

void el_wpush(EditLine *a1, const __int32 *a2)
{
  if (a2)
  {
    v3 = *(a1 + 254);
    if (v3 <= 8)
    {
      *(a1 + 254) = v3 + 1;
      v4 = sub_2987537AC(a2);
      v5 = *(a1 + 254);
      *(*(a1 + 128) + 8 * v5) = v4;
      if (v4)
      {
        return;
      }

      *(a1 + 254) = v5 - 1;
    }
  }

  el_beep_0(a1);

  sub_29874F318(a1);
}

int el_wgetc(EditLine *a1, __int32 *a2)
{
  sub_29874F318(a1);
  if ((*(a1 + 254) & 0x80000000) != 0)
  {
LABEL_4:
    if ((sub_29875090C(a1) & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      v6 = (*(a1 + 157))(a1, a2);
      if (v6 < 0)
      {
        *(a1 + 12) = *__error();
      }

      if ((*(a1 + 44) & 0x80) != 0)
      {
        *a2 = *a2;
      }
    }
  }

  else
  {
    while (1)
    {
      v4 = **(a1 + 128);
      v5 = *(a1 + 255);
      if (*(v4 + 4 * v5))
      {
        break;
      }

      sub_298747544(a1 + 127);
      if ((*(a1 + 254) & 0x80000000) != 0)
      {
        goto LABEL_4;
      }
    }

    *(a1 + 255) = v5 + 1;
    *a2 = *(v4 + 4 * v5);
    if (!*(v4 + 4 * *(a1 + 255)))
    {
      sub_298747544(a1 + 127);
    }

    return 1;
  }

  return v6;
}

void sub_298747544(void ***a1)
{
  free(*a1[1]);
  v2 = *a1;
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      a1[1][i] = a1[1][i + 1];
    }
  }

  *a1 = (v2 - 1);
}

uint64_t sub_2987475A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 44);
  if (v2)
  {
    result = sub_29874D374(result);
    v2 = *(v1 + 44);
  }

  if ((v2 & 2) == 0)
  {
    if ((v2 & 0xC) == 8)
    {
      sub_29875090C(v1);
    }

    el_resize(v1);
    sub_29874C13C(v1);
    sub_29874055C(v1, 0);
    result = sub_29874B484(v1);
    if ((*(v1 + 44) & 8) != 0)
    {

      return sub_29874F318(v1);
    }
  }

  return result;
}

uint64_t sub_298747640(uint64_t result)
{
  v1 = result;
  v2 = *(result + 44);
  if ((v2 & 8) == 0)
  {
    result = sub_298750E0C(result);
    v2 = *(v1 + 44);
  }

  if (v2)
  {

    return sub_29874D564(v1);
  }

  return result;
}

const __int32 *__cdecl el_wgets(EditLine *a1, int *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v34 = 0;
  v4 = *(a1 + 11);
  if ((v4 & 2) != 0)
  {
    v17 = *(a1 + 11);
    while (1)
    {
      v18 = (*(a1 + 157))(a1, v17);
      if (v18 != 1)
      {
        goto LABEL_91;
      }

      if ((v17 + 1) >= *(a1 + 14))
      {
        v20 = *(a1 + 11);
        if (!sub_29873FB58(a1, 2uLL))
        {
          goto LABEL_90;
        }

        v19 = (v17 + *(a1 + 11) - v20);
      }

      else
      {
        v19 = v17;
      }

      v17 = v19 + 1;
      if ((*(a1 + 44) & 8) == 0)
      {
        v21 = *v19;
        v22 = v21 == 10 || v21 == 13;
        if (!v22)
        {
          continue;
        }
      }

LABEL_90:
      LODWORD(v15) = 1;
      goto LABEL_106;
    }
  }

  if ((v4 & 8) == 0)
  {
    sub_2987475A8(a1);
    v4 = *(a1 + 11);
  }

  if ((v4 & 4) != 0)
  {
    v22 = (v4 & 8) == 0;
    v23 = 104;
    if (v22)
    {
      v23 = 88;
    }

    v17 = *(a1 + v23);
    sub_29874F318(a1);
    while (1)
    {
      v18 = (*(a1 + 157))(a1, v17);
      if (v18 != 1)
      {
        break;
      }

      if ((v17 + 1) >= *(a1 + 14))
      {
        v25 = *(a1 + 11);
        if (!sub_29873FB58(a1, 2uLL))
        {
          goto LABEL_90;
        }

        v24 = (v17 + *(a1 + 11) - v25);
      }

      else
      {
        v24 = v17;
      }

      v17 = v24 + 1;
      if ((*(a1 + 11) & 8) == 0)
      {
        v26 = *v24;
        if (v26 != 10 && v26 != 13)
        {
          continue;
        }
      }

      goto LABEL_90;
    }

LABEL_91:
    LODWORD(v15) = v18;
    if (v18 == -1)
    {
      if (*__error() == 4)
      {
        v17 = *(a1 + 11);
      }

      *(a1 + 12) = *__error();
      LODWORD(v15) = -1;
    }

    else if (!v18)
    {
      *(a1 + 137) = -1;
    }

LABEL_106:
    *(a1 + 12) = v17;
    *(a1 + 13) = v17;
    *v17 = 0;
    v28 = (v17 - *(a1 + 11)) >> 2;
LABEL_107:
    LODWORD(v29) = v28;
    if (!a2)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

  v5 = MEMORY[0x29EDCA600];
  while (2)
  {
    while (2)
    {
      while (2)
      {
        *(a1 + 12) = 0;
        do
        {
          v6 = el_wgetc(a1, &v34);
          if (v6 != 1)
          {
            if (v6)
            {
              v6 = *__error();
            }

            LODWORD(v15) = 0;
            *(a1 + 12) = v6;
            *(a1 + 137) = -1;
            goto LABEL_97;
          }

          if (*(a1 + 33))
          {
            *(a1 + 33) = 0;
            v7 = v34 | 0x80;
            v34 |= 0x80u;
          }

          else
          {
            v7 = v34;
          }

          if (v7 <= 255)
          {
            v8 = *(*(a1 + 133) + v7);
            if (v8 == 24)
            {
              v35 = 0;
              v9 = sub_298745464(a1, &v34, &v35);
              if (v9 == 1)
              {
                el_wpush(a1, v35);
                v8 = 24;
              }

              else
              {
                if (v9)
                {
                  abort();
                }

                v8 = v35;
              }
            }
          }

          else
          {
            v8 = 8;
          }

          if (!*(a1 + 131))
          {
            *(a1 + 133) = *(a1 + 132);
          }
        }

        while (v8 == 24);
        if (*(a1 + 12) == 4)
        {
          v33 = *(a1 + 11);
          *v33 = 0;
          *(a1 + 12) = v33;
          *(a1 + 13) = v33;
          LODWORD(v15) = -1;
          goto LABEL_97;
        }

        if (*(a1 + 280) <= v8)
        {
          continue;
        }

        break;
      }

      *(a1 + 137) = v8;
      v10 = v34;
      *(a1 + 35) = v34;
      if (*(a1 + 274) == 1 && *(a1 + 133) == *(a1 + 132))
      {
        v11 = *(a1 + 121);
        if (v11 < *(a1 + 122))
        {
          if (v8 == 64 && v11 != *(a1 + 120))
          {
            v12 = *(v11 - 1);
            if (v12 > 0x7F)
            {
              v13 = __maskrune(v12, 0x40000uLL);
            }

            else
            {
              v13 = *(v5 + 4 * v12 + 60) & 0x40000;
            }

            if (v13)
            {
              *(a1 + 121) -= 4;
              goto LABEL_37;
            }

            v10 = v34;
            v11 = *(a1 + 121);
          }

          *v11 = v10;
          *(a1 + 121) = v11 + 1;
        }
      }

LABEL_37:
      v14 = (*(*(a1 + 139) + 8 * v8))(a1, v34);
      *(a1 + 136) = v8;
      if (v14 > 3)
      {
        if (v14 <= 6)
        {
          if (v14 != 4)
          {
            if (v14 == 5)
            {
              sub_29874C174(a1);
              goto LABEL_58;
            }

            goto LABEL_57;
          }
        }

        else
        {
          switch(v14)
          {
            case 7:
              sub_29874C13C(a1);
              sub_29874055C(a1, 1);
              break;
            case 8:
              sub_29874C5CC(a1);
              sub_29874C13C(a1);
              break;
            case 9:
              sub_29874B484(a1);
              el_beep_0(a1);
LABEL_58:
              LODWORD(v15) = -1;
              goto LABEL_59;
            default:
              goto LABEL_57;
          }
        }

        sub_29874B484(a1);
        goto LABEL_58;
      }

      if (v14 > 1)
      {
        if (v14 != 2)
        {
          continue;
        }

        if ((*(a1 + 44) & 8) != 0)
        {
          v16 = *(a1 + 13);
          *v16++ = 4;
          *(a1 + 12) = v16;
          *(a1 + 13) = v16;
          LODWORD(v15) = 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_58;
        }

        if (v14 != 1)
        {
LABEL_57:
          el_beep_0(a1);
          sub_29874F318(a1);
          goto LABEL_58;
        }

        v15 = (*(a1 + 13) - *(a1 + 11)) >> 2;
      }

      break;
    }

LABEL_59:
    *(a1 + 124) = 0x100000000;
    *(a1 + 250) = 0;
    if ((*(a1 + 44) & 8) == 0 && v15 == -1)
    {
      continue;
    }

    break;
  }

LABEL_97:
  sub_29874F318(a1);
  if ((*(a1 + 44) & 8) == 0)
  {
    sub_298747640(a1);
    if (v15 == -1)
    {
      LODWORD(v28) = 0;
    }

    else
    {
      LODWORD(v28) = v15;
    }

    goto LABEL_107;
  }

  v29 = (*(a1 + 13) - *(a1 + 11)) >> 2;
  LODWORD(v28) = v29;
  if (a2)
  {
LABEL_108:
    *a2 = v28;
    LODWORD(v29) = v28;
  }

LABEL_109:
  if (v29)
  {
    result = *(a1 + 11);
    result[v29] = 0;
  }

  else if (v15 == -1)
  {
    if (a2)
    {
      *a2 = -1;
    }

    v31 = *(a1 + 12);
    v32 = __error();
    result = 0;
    *v32 = v31;
  }

  else
  {
    return 0;
  }

  return result;
}

int rl_set_prompt(const char *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = &unk_29875BB52;
  }

  v2 = rl_prompt;
  if (rl_prompt)
  {
    LODWORD(i) = strcmp(rl_prompt, v1);
    if (!i)
    {
      return i;
    }

    free(v2);
  }

  v4 = strdup(v1);
  rl_prompt = v4;
  if (v4)
  {
    for (i = strchr(v4, 2); i; i = strchr(rl_prompt, 2))
    {
      *i = 1;
    }
  }

  else
  {
    LODWORD(i) = -1;
  }

  return i;
}

int rl_initialize(void)
{
  v12 = *MEMORY[0x29EDCA608];
  if (qword_2A18CB778)
  {
    el_end(qword_2A18CB778);
  }

  if (qword_2A13BD708)
  {
    history_end(qword_2A13BD708);
  }

  v0 = rl_instream;
  if (!rl_instream)
  {
    v0 = *MEMORY[0x29EDCA618];
    rl_instream = *MEMORY[0x29EDCA618];
  }

  if (!rl_outstream)
  {
    rl_outstream = *MEMORY[0x29EDCA620];
  }

  *&v10.num = 0;
  v10.str = 0;
  memset(&v11, 0, sizeof(v11));
  v1 = fileno(v0);
  v2 = tcgetattr(v1, &v11);
  c_lflag = v11.c_lflag;
  v4 = el_init(rl_readline_name, rl_instream, rl_outstream, *MEMORY[0x29EDCA610]);
  qword_2A18CB778 = v4;
  if (v2 != -1 && (c_lflag & 8) == 0)
  {
    el_set(v4, 11, 0);
  }

  v5 = history_init();
  qword_2A13BD708 = v5;
  result = -1;
  if (qword_2A18CB778 && v5)
  {
    history(v5, &v10, 1, 0x7FFFFFFFLL);
    history_length = 0;
    max_input_history = 0x7FFFFFFF;
    el_set(qword_2A18CB778, 10, history, qword_2A13BD708);
    el_set(qword_2A18CB778, 23, sub_298748058, &rl_line_buffer);
    if (rl_getc_function)
    {
      el_set(qword_2A18CB778, 13, sub_298748084);
    }

    if (rl_set_prompt(&unk_29875BB52) == -1)
    {
      history_end(qword_2A13BD708);
      el_end(qword_2A18CB778);
      result = -1;
    }

    else
    {
      el_set(qword_2A18CB778, 21, sub_2987480CC, 1);
      el_set(qword_2A18CB778, 3, dword_2A13BD670);
      el_set(qword_2A18CB778, 2, "emacs");
      if (rl_terminal_name)
      {
        el_set(qword_2A18CB778, 1, rl_terminal_name);
      }

      else
      {
        el_get(qword_2A18CB778, 1, &rl_terminal_name);
      }

      el_set(qword_2A18CB778, 9, "rl_complete", "ReadLine compatible completion function", sub_2987480E4);
      el_set(qword_2A18CB778, 4, "^I", "rl_complete", 0);
      el_set(qword_2A18CB778, 9, "rl_tstp", "ReadLine compatible suspend function", sub_298748100);
      el_set(qword_2A18CB778, 4, "^Z", "rl_tstp", 0);
      el_set(qword_2A18CB778, 4, "^W", "ed-delete-prev-word", 0);
      el_source(qword_2A18CB778, 0);
      rl_line_buffer = el_line(qword_2A18CB778)->buffer;
      v7 = el_line(qword_2A18CB778);
      buffer = v7->buffer;
      rl_point = LODWORD(v7->cursor) - LODWORD(v7->buffer);
      rl_end = LODWORD(v7->lastchar) - buffer;
      if (rl_startup_hook)
      {
        rl_startup_hook(0, 0);
      }

      result = 0;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

const LineInfo *sub_298748058(EditLine *a1, const char **a2)
{
  result = el_line(a1);
  *a2 = result->buffer;
  return result;
}

uint64_t sub_298748084(uint64_t a1, _BYTE *a2)
{
  v3 = rl_getc_function(0);
  if (v3 == -1)
  {
    return 0;
  }

  *a2 = v3;
  return 1;
}

char *__cdecl readline(const char *a1)
{
  *&v10.num = 0;
  v10.str = 0;
  v9 = a1;
  v8 = 0;
  if (qword_2A18CB778)
  {
    v1 = qword_2A13BD708 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    rl_initialize();
  }

  dword_2A13BE4C0 = 0;
  setjmp(dword_2A13BD714);
  if (rl_set_prompt(v9) == -1)
  {
    return 0;
  }

  if (rl_pre_input_hook)
  {
    rl_pre_input_hook(0, 0);
  }

  v2 = qword_2A18CB778;
  if (!off_2A13BE4C8 || (*(qword_2A18CB778 + 44) & 2) == 0 && (el_set(qword_2A18CB778, 13, sub_2987482AC), byte_2A13BD710 = 1, v2 = qword_2A18CB778, !off_2A13BE4C8))
  {
    if (byte_2A13BD710)
    {
      el_set(v2, 13, 0);
      byte_2A13BD710 = 0;
      v2 = qword_2A18CB778;
    }
  }

  rl_already_prompted = 0;
  v4 = el_gets(v2, &v8);
  v5 = 0;
  if (v4)
  {
    v6 = v8;
    if (v8 >= 1)
    {
      result = strdup(v4);
      if (!result)
      {
        return result;
      }

      v5 = result;
      if (result[v6 - 1] == 10)
      {
        result[v6 - 1] = 0;
      }
    }
  }

  v7 = v5;
  history(qword_2A13BD708, &v10, 2);
  history_length = v10.num;
  return v7;
}

uint64_t sub_2987482AC(uint64_t a1, _BYTE *a2)
{
  v8 = 0;
  *a2 = 0;
  v3 = off_2A13BE4C8;
  if (off_2A13BE4C8)
  {
    while (1)
    {
      while (1)
      {
        v3();
        if (ioctl(*(a1 + 32), 0x4004667FuLL, &v8) < 0)
        {
          return 0xFFFFFFFFLL;
        }

        if (v8)
        {
          break;
        }

        v5 = 0;
LABEL_9:
        v3 = off_2A13BE4C8;
        if (v5 || !off_2A13BE4C8)
        {
LABEL_11:
          if (v3)
          {
            return v5;
          }

          goto LABEL_14;
        }
      }

      v5 = read(*(a1 + 32), a2, 1uLL);
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

      v6 = __error();
      v3 = off_2A13BE4C8;
      if (*v6 != 35)
      {
        goto LABEL_11;
      }

      if (!off_2A13BE4C8)
      {
        goto LABEL_14;
      }
    }
  }

  v5 = 0;
LABEL_14:
  el_set(a1, 13, 0);
  return v5;
}

void using_history(void)
{
  if (qword_2A13BD708)
  {
    v0 = qword_2A18CB778 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    rl_initialize();
  }
}

const char *__cdecl get_history_event(const char *a1, int *a2, int a3)
{
  v3 = *a2;
  v4 = a1[v3];
  if (v4 != asc_2A13BD63C[0])
  {
    return 0;
  }

  *&v36.num = 0;
  v36.str = 0;
  v7 = a1[v3 + 1];
  if (v7 != v4 && v7 != 0)
  {
    if (v7 == 45)
    {
      v11 = v3 + 2;
    }

    else
    {
      v11 = v3 + 1;
    }

    v12 = a1[v11];
    if ((v12 - 48) > 9)
    {
      v18 = 0;
      v19 = v11 + 1;
      if (v12 == 63)
      {
        v20 = v11 + 1;
      }

      else
      {
        v20 = v11;
      }

      v21 = v20;
      v22 = &a1[v20];
      while (1)
      {
        v23 = v22[v18];
        v24 = v23;
        if (!v22[v18] || v23 == 10)
        {
          break;
        }

        if (v12 == 63 && v23 == 63)
        {
          v29 = v20 + v18;
          v21 = v19;
          v18 += v20 - v19;
          goto LABEL_48;
        }

        if (v12 != 63)
        {
          v26 = (1 << v23) & 0x400000100000200;
          v27 = v24 > 0x3A || v26 == 0;
          if (!v27 || v24 == a3)
          {
            v29 = v20 + v18;
            v18 += v20 - v11;
            v21 = v11;
LABEL_45:
            v30 = v29;
            if (v11 == v29)
            {
              return 0;
            }

            goto LABEL_56;
          }
        }

        ++v18;
      }

      v29 = v20 + v18;
      if (v12 != 63)
      {
        goto LABEL_45;
      }

LABEL_48:
      if (v23 == 63)
      {
        v30 = v29 + 1;
      }

      else
      {
        v30 = v29;
      }

      if (v19 == v29)
      {
        v31 = qword_2A13BD7D8;
        if (qword_2A13BD7D8)
        {
          if (*qword_2A13BD7D8)
          {
            v29 = v19;
            goto LABEL_58;
          }
        }
      }

      if (v19 == v29)
      {
        return 0;
      }

LABEL_56:
      v32 = malloc_type_malloc(v18 + 1, 0x100004077774924uLL);
      if (!v32)
      {
        return 0;
      }

      v31 = v32;
      strncpy(v32, &a1[v21], v18)[v18] = 0;
LABEL_58:
      if (!history(qword_2A13BD708, &v36, 8))
      {
        num = v36.num;
        if (v12 == 63)
        {
          if (v31 != qword_2A13BD7D8)
          {
            if (qword_2A13BD7D8)
            {
              free(qword_2A13BD7D8);
            }

            qword_2A13BD7D8 = v31;
          }

          v34 = history_search(v31, -1);
        }

        else
        {
          *&v37.num = 0;
          v37.str = 0;
          v34 = history(qword_2A13BD708, &v37, 14, v31);
        }

        if (v34 != -1)
        {
          if (v12 == 63 && v29 != v20)
          {
            if (qword_2A13BD7E0 && qword_2A13BD7E0 != v31)
            {
              free(qword_2A13BD7E0);
            }

            qword_2A13BD7E0 = v31;
          }

          if (v31 != qword_2A13BD7D8)
          {
            free(v31);
          }

          if (!history(qword_2A13BD708, &v36, 8))
          {
            *a2 = v30;
            str = v36.str;
            history(qword_2A13BD708, &v36, 7, num);
            return str;
          }

          return 0;
        }

        history(qword_2A13BD708, &v36, 3);
        fprintf(rl_outstream, "%s: Event not found\n", v31);
      }

      if (v31 != qword_2A13BD7D8)
      {
        free(v31);
      }
    }

    else
    {
      v13 = 0;
      v14 = &a1[v11 + 1];
      do
      {
        v13 = v12 + 10 * v13 - 48;
        v15 = *v14++;
        v12 = v15;
        ++v11;
      }

      while ((v15 - 48) < 0xA);
      if (v7 == 45)
      {
        v16 = history_length - v13 + 1;
      }

      else
      {
        v16 = v13;
      }

      v17 = history_get(v16);
      if (v17)
      {
        *a2 = v11;
        return v17->line;
      }
    }

    return 0;
  }

  if (history(qword_2A13BD708, &v36, 3))
  {
    return 0;
  }

  if (a1[v3 + 1])
  {
    v9 = v3 + 2;
  }

  else
  {
    v9 = v3 + 1;
  }

  *a2 = v9;
  return v36.str;
}

HIST_ENTRY *__cdecl history_get(int a1)
{
  if (qword_2A13BD708)
  {
    v2 = qword_2A18CB778 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    rl_initialize();
  }

  if (history_base > a1)
  {
    return 0;
  }

  *&v6.num = 0;
  v6.str = 0;
  if (history(qword_2A13BD708, &v6, 8))
  {
    return 0;
  }

  num = v6.num;
  if (history(qword_2A13BD708, &v6, 4) || history(qword_2A13BD708, &v6, 23, (a1 - history_base), &unk_2A13BD7F0))
  {
    return 0;
  }

  v4 = &qword_2A13BD7E8;
  qword_2A13BD7E8 = v6.str;
  history(qword_2A13BD708, &v6, 7, num);
  return v4;
}

int history_search(const char *a1, int a2)
{
  *&v9.num = 0;
  v9.str = 0;
  if (history(qword_2A13BD708, &v9, 8))
  {
    return -1;
  }

  num = v9.num;
  if (a2 >= 0)
  {
    v5 = 5;
  }

  else
  {
    v5 = 6;
  }

  while (1)
  {
    str = v9.str;
    v7 = strstr(v9.str, a1);
    if (v7)
    {
      break;
    }

    if (history(qword_2A13BD708, &v9, v5))
    {
      history(qword_2A13BD708, &v9, 7, num);
      return -1;
    }
  }

  return v7 - str;
}

int history_search_prefix(const char *a1, int a2)
{
  *&v3.num = 0;
  v3.str = 0;
  if (a2 >= 0)
  {
    return history(qword_2A13BD708, &v3, 13, a1);
  }

  else
  {
    return history(qword_2A13BD708, &v3, 14, a1);
  }
}

int history_expand(char *a1, char **a2)
{
  if (qword_2A13BD708)
  {
    v4 = qword_2A18CB778 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    rl_initialize();
  }

  if (!asc_2A13BD63C[0])
  {
    LODWORD(v8) = 0;
    *a2 = strdup(a1);
    return v8;
  }

  *a2 = 0;
  if (*a1 == asc_2A13BD63C[1])
  {
    v5 = strlen(a1);
    v6 = malloc_type_malloc(v5 + 5, 0x100004077774924uLL);
    *a2 = v6;
    if (!v6)
    {
      goto LABEL_248;
    }

    v7 = asc_2A13BD63C[0];
    v6[1] = asc_2A13BD63C[0];
    **a2 = v7;
    (*a2)[2] = 58;
    (*a2)[3] = 115;
    strcpy(*a2 + 4, a1);
    a1 = *a2;
  }

  else
  {
    v9 = strdup(a1);
    *a2 = v9;
    if (!v9)
    {
      goto LABEL_248;
    }
  }

  if (!*a1)
  {
    v105 = 0;
    LODWORD(v8) = 0;
    goto LABEL_246;
  }

  ptr = 0;
  v112 = 0;
  v10 = 0;
  v11 = 0;
  v108 = a2;
  v12 = a1;
  do
  {
    __s1 = v11;
    v120 = v10;
    v13 = 0;
    v14 = 0;
    v15 = v10;
    __src = v12;
    v16 = 1;
    for (i = v10; ; i = v10)
    {
      while (1)
      {
        while (1)
        {
          v10 = v15;
          v12 = &a1[v15];
          v18 = a1[v15];
          v19 = v18;
          if (v18 != 92)
          {
            break;
          }

          ++v15;
          if (a1[v10 + 1] != asc_2A13BD63C[0])
          {
            if ((v14 & 1) == 0)
            {
              v21 = 92;
              goto LABEL_30;
            }

LABEL_25:
            v21 = v18;
            if ((*(MEMORY[0x29EDCA600] + 4 * v18 + 60) & 0x4000) != 0)
            {
              goto LABEL_35;
            }

            goto LABEL_26;
          }

          v22 = strlen(&a1[v15]);
          memmove(v12, &a1[v15], v22 + 1);
        }

        if (!a1[v15])
        {
          goto LABEL_46;
        }

        if ((v14 & 1) == 0)
        {
          v21 = a1[v15];
          goto LABEL_30;
        }

        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v20 = __maskrune(v18, 0x4000uLL);
        v21 = *v12;
        if (v20)
        {
          break;
        }

LABEL_26:
        if (v13 == v19)
        {
          break;
        }

LABEL_30:
        if (asc_2A13BD63C[0] == v21)
        {
          v15 = v10 + 1;
          if (!strchr(qword_2A13BD648, a1[v10 + 1]))
          {
            if (!off_2A13BE4D8)
            {
              break;
            }

            if (!off_2A13BE4D8(a1, v10))
            {
              v21 = *v12;
              break;
            }
          }
        }

        else
        {
          v15 = v10 + 1;
        }
      }

LABEL_35:
      if (v21 == 0 || (v16 & 1) == 0)
      {
        break;
      }

      if (v10)
      {
        if (a1[v10 - 1] == 34)
        {
          v13 = 34;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v16 = 0;
      if (a1[v10 + 1] == asc_2A13BD63C[0])
      {
        v15 = v10 + 2;
      }

      else
      {
        v15 = v10 + 1;
      }

      v14 = 1;
    }

LABEL_46:
    v23 = i - v120;
    v11 = &__s1[i - v120];
    if ((v11 + 1) <= v112)
    {
      v8 = ptr;
    }

    else
    {
      v112 += v23 + 1;
      v8 = malloc_type_realloc(ptr, v112, 0x100004077774924uLL);
      if (!v8)
      {
        v106 = *v108;
        goto LABEL_243;
      }
    }

    strncpy(&__s1[v8], __src, v23);
    v11[v8] = 0;
    v24 = &a1[i];
    v25 = v10 - i;
    if (!a1[i] || a1[i] != asc_2A13BD63C[0])
    {
      if (&v11[v25 + 1] <= v112)
      {
        a2 = v108;
      }

      else
      {
        v8 = malloc_type_realloc(v8, v25 + v112 + 1, 0x100004077774924uLL);
        a2 = v108;
        if (!v8)
        {
          v106 = *v108;
LABEL_243:
          free(v106);
          return v8;
        }
      }

      strncpy(&v11[v8], v24, v25);
      v11[v25 + v8] = 0;
      v105 = v8;
      LODWORD(v8) = v120 != 0;
      goto LABEL_246;
    }

    ptr = v8;
    v124 = 0;
    v26 = a1[i + 1];
    if (!memchr(":^*$", v26, 5uLL))
    {
      if (v26 == 35)
      {
        v36 = malloc_type_malloc(i + 1, 0x100004077774924uLL);
        if (!v36)
        {
          goto LABEL_84;
        }

        v30 = v36;
        strncpy(v36, a1, i)[i] = 0;
        v28 = 1;
        v124 = 1;
        if (a1[i + 1] == 58)
        {
          v110 = &__s1[i - v120];
          v29 = 0;
          v31 = 0;
LABEL_56:
          v32 = &v24[v28];
          v34 = (v32 + 1);
          v33 = v32[1];
          if (v33 == 37)
          {
            if (qword_2A13BD7E0)
            {
              v35 = qword_2A13BD7E0;
            }

            else
            {
              v35 = &unk_29875BB52;
            }

            goto LABEL_76;
          }

          v121 = v32;
          if (!memchr("^*$-0123456789", v33, 0xFuLL))
          {
            if (v31)
            {
              v35 = v29;
            }

            else
            {
              v35 = v30;
            }

LABEL_76:
            v40 = strdup(v35);
            goto LABEL_113;
          }

          if (v33 <= 0x2Cu)
          {
            if (v33 == 36)
            {
              v34 = (v121 + 2);
            }

            else
            {
              if (v33 == 42)
              {
                v34 = (v121 + 2);
                v37 = -1;
                v38 = 1;
                goto LABEL_109;
              }

LABEL_89:
              if (v33 - 48 <= 9)
              {
                v38 = 0;
                v44 = v33;
                do
                {
                  v46 = *++v34;
                  v45 = v46;
                  v38 = 10 * v38 + v44 - 48;
                  v44 = v46;
                }

                while ((v46 - 48) < 0xA);
                if (v45 != 42)
                {
                  v37 = v38;
                  if (v45 != 45)
                  {
                    goto LABEL_109;
                  }

LABEL_99:
                  v47 = v34 + 1;
                  v48 = v34[1];
                  if ((v48 - 48) > 9)
                  {
                    if (v48 == 36)
                    {
                      v34 += 2;
                    }

                    else
                    {
                      ++v34;
                    }

                    if (v48 == 36)
                    {
                      v37 = -1;
                    }

                    else
                    {
                      v37 = -2;
                    }
                  }

                  else
                  {
                    v37 = 0;
                    do
                    {
                      v49 = *++v47;
                      v37 = v48 + 10 * v37 - 48;
                      v48 = v49;
                    }

                    while ((v49 - 48) < 0xA);
                    v34 = v47;
                  }

                  goto LABEL_109;
                }

                ++v34;
LABEL_97:
                v37 = -1;
                goto LABEL_109;
              }
            }

            v38 = -1;
            goto LABEL_97;
          }

          if (v33 == 45)
          {
            v38 = 0;
            goto LABEL_99;
          }

          if (v33 != 94)
          {
            goto LABEL_89;
          }

          v34 = (v121 + 2);
          v38 = 1;
          v37 = 1;
LABEL_109:
          if (v31)
          {
            v50 = v29;
          }

          else
          {
            v50 = v30;
          }

          v40 = history_arg_extract(v38, v37, v50);
          if (v40)
          {
LABEL_113:
            if ((v31 & 1) == 0)
            {
              free(v30);
            }

            v51 = *v34;
            LODWORD(v8) = 1;
            if (!*v34)
            {
              v11 = v110;
              v30 = v40;
              goto LABEL_224;
            }

            v30 = v40;
            if (v34 - v24 >= v25)
            {
LABEL_223:
              v11 = v110;
LABEL_224:
              if (v8 < 1 || !v30)
              {
                if (!v30)
                {
                  continue;
                }

                goto LABEL_230;
              }

              v100 = v30;
              v101 = strlen(v30);
              v102 = v101;
              v103 = &v11[v101];
              if (&v11[v101 + 1] <= v112 || (v112 += v101 + 1, (ptr = malloc_type_realloc(ptr, v112, 0x100004077774924uLL)) != 0))
              {
                v104 = v102;
                v30 = v100;
                strncpy(&v11[ptr], v100, v104);
                v103[ptr] = 0;
                v11 = v103;
                goto LABEL_230;
              }

              free(*v108);
              free(v100);
LABEL_248:
              LODWORD(v8) = 0;
              return v8;
            }

            v109 = 0;
            v122 = 0;
            while (2)
            {
              if (v51 <= 111)
              {
                if (v51 <= 102)
                {
                  if (v51 != 38)
                  {
                    if (v51 == 101)
                    {
                      v52 = strrchr(v30, 46);
                      if (v52)
                      {
                        goto LABEL_137;
                      }

                      goto LABEL_209;
                    }

                    if (!v51)
                    {
                      if (v109)
                      {
                        LODWORD(v8) = 2;
                      }

                      else
                      {
                        LODWORD(v8) = 1;
                      }

                      goto LABEL_223;
                    }

                    goto LABEL_209;
                  }

                  v73 = qword_2A13BE038;
                  v83 = qword_2A13BE040;
                  if (qword_2A13BE038)
                  {
                    v84 = qword_2A13BE040 == 0;
                  }

                  else
                  {
                    v84 = 1;
                  }

                  if (v84)
                  {
                    goto LABEL_209;
                  }

LABEL_188:
                  v85 = strlen(v30);
                  __srca = v83;
                  v86 = strlen(v83);
                  v87 = strlen(v73);
                  v88 = v87;
                  v89 = *v30;
                  __n = v86;
                  if (*v30)
                  {
                    __s1b = v86 - v87;
                    v90 = *v73;
                    v91 = v30;
                    do
                    {
                      if (v89 == v90 && !strncmp(v91, v73, v88))
                      {
                        v85 += __s1b;
                        v92 = v88;
                        if (!v122)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v92 = 1;
                      }

                      v91 += v92;
                      v89 = *v91;
                    }

                    while (*v91);
                  }

                  v93 = malloc_type_malloc(v85 + 1, 0x100004077774924uLL);
                  if (!v93)
                  {
                    v122 = 0;
                    goto LABEL_209;
                  }

                  v57 = v93;
                  __s1c = v30;
                  v94 = *v30;
                  v95 = v93;
                  if (v94)
                  {
                    v95 = v93;
                    v96 = __s1c;
                    do
                    {
                      if (v94 == *v73 && !strncmp(v96, v73, v88))
                      {
                        strncpy(v95, __srca, __n);
                        v95 += __n;
                        v96 += v88;
                        if (!v122)
                        {
                          strcpy(v95, v96);
                          goto LABEL_207;
                        }
                      }

                      else
                      {
                        ++v96;
                        *v95++ = v94;
                      }

                      v94 = *v96;
                    }

                    while (*v96);
                  }

                  *v95 = 0;
LABEL_207:
                  free(__s1c);
                  v122 = 0;
LABEL_210:
                  v97 = *++v34;
                  v51 = v97;
                  v30 = v57;
                  continue;
                }

                if (v51 == 103)
                {
                  v122 = 2;
                  goto LABEL_209;
                }

                if (v51 == 104)
                {
                  v53 = v30;
                  v54 = 47;
LABEL_131:
                  v55 = strrchr(v53, v54);
                  if (v55)
                  {
                    *v55 = 0;
                  }

                  goto LABEL_209;
                }

                goto LABEL_209;
              }

              break;
            }

            if (v51 <= 114)
            {
              if (v51 == 112)
              {
                v109 = 1;
                goto LABEL_209;
              }

              if (v51 == 114)
              {
                v53 = v30;
                v54 = 46;
                goto LABEL_131;
              }

LABEL_209:
              v57 = v30;
              goto LABEL_210;
            }

            if (v51 != 115)
            {
              if (v51 == 116)
              {
                v56 = strrchr(v30, 47);
                if (v56)
                {
                  v52 = v56 + 1;
LABEL_137:
                  v57 = strdup(v52);
                  free(v30);
                  goto LABEL_210;
                }
              }

              goto LABEL_209;
            }

            v57 = v30;
            v58 = v34[1];
            v59 = malloc_type_realloc(qword_2A13BE038, 0x10uLL, 0x100004077774924uLL);
            if (v59)
            {
              v60 = v59;
              v61 = 0;
              v64 = v34[2];
              v63 = v34 + 2;
              v62 = v64;
              if (v64 && v62 != v58)
              {
                v65 = 0;
                v66 = 16;
                do
                {
                  if (v62 == 92)
                  {
                    if (v63[1] == v58)
                    {
                      ++v63;
                    }

                    LOBYTE(v62) = *v63;
                  }

                  v61 = v65 + 1;
                  v60[v65] = v62;
                  if (v65 + 1 >= v66)
                  {
                    v66 *= 2;
                    v67 = malloc_type_realloc(v60, v66, 0x100004077774924uLL);
                    if (!v67)
                    {
                      v98 = v60;
                      goto LABEL_213;
                    }

                    v60 = v67;
                  }

                  v68 = *++v63;
                  v62 = v68;
                  if (v68)
                  {
                    v69 = v62 == v58;
                  }

                  else
                  {
                    v69 = 1;
                  }

                  v65 = v61;
                }

                while (!v69);
              }

              v60[v61] = 0;
              qword_2A13BE038 = v60;
              if (!*v60)
              {
                free(v60);
                qword_2A13BE038 = 0;
                LODWORD(v8) = -1;
                goto LABEL_214;
              }

              v70 = v63[1];
              v34 = v63 + 1;
              if (!v70)
              {
                goto LABEL_210;
              }

              v71 = malloc_type_realloc(qword_2A13BE040, 0x11uLL, 0x100004077774924uLL);
              v30 = v57;
              if (!v71)
              {
                v99 = qword_2A13BE040;
LABEL_218:
                free(v99);
                LODWORD(v8) = -1;
                goto LABEL_219;
              }

              v72 = v71;
              v73 = qword_2A13BE038;
              __s1a = strlen(qword_2A13BE038);
              v74 = 0;
              v75 = *v34;
              if (!*v34 || v75 == v58)
              {
                v77 = v72;
LABEL_187:
                v77[v74] = 0;
                qword_2A13BE040 = v77;
                v83 = v77;
                goto LABEL_188;
              }

              v74 = 0;
              v76 = 16;
              v77 = v72;
              while (2)
              {
                if (v74 + __s1a + 1 >= v76)
                {
                  v76 += __s1a + 1;
                  v78 = v77;
                  v77 = malloc_type_realloc(v77, v76 + 1, 0x100004077774924uLL);
                  if (!v77)
                  {
                    v99 = v78;
                    goto LABEL_218;
                  }

                  v75 = *v34;
                }

                if (v75 == 92)
                {
                  v80 = v34[1];
                  if (v80 == 38 || v80 == v58)
                  {
                    ++v34;
                  }

                  LOBYTE(v75) = *v34;
                }

                else if (v75 == 38)
                {
                  v79 = v77;
                  strcpy(&v77[v74], qword_2A13BE038);
                  v77 = v79;
                  v74 += __s1a;
LABEL_175:
                  v82 = *++v34;
                  v75 = v82;
                  if (!v82 || v75 == v58)
                  {
                    v73 = qword_2A13BE038;
                    goto LABEL_187;
                  }

                  continue;
                }

                break;
              }

              v77[v74++] = v75;
              goto LABEL_175;
            }

            v98 = qword_2A13BE038;
LABEL_213:
            free(v98);
            LODWORD(v8) = 0;
LABEL_214:
            v30 = v57;
LABEL_219:
            v11 = v110;
          }

          else
          {
            fprintf(rl_outstream, "%s: Bad word specifier", v121);
            LODWORD(v8) = -1;
            v11 = v110;
            if (v31)
            {
              continue;
            }
          }

LABEL_230:
          free(v30);
          continue;
        }

        v42 = strdup(v30);
        v43 = v30;
        v30 = v42;
        free(v43);
      }

      else
      {
        if (i)
        {
          if (*(v24 - 1) == 34)
          {
            v39 = 34;
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 0;
        }

        history_event = get_history_event(&a1[i], &v124, v39);
        if (!history_event)
        {
          goto LABEL_84;
        }

        v29 = history_event;
        v28 = v124;
        if (a1[v124 + i] == 58)
        {
LABEL_55:
          v110 = &__s1[i - v120];
          v30 = 0;
          v31 = 1;
          goto LABEL_56;
        }

        v30 = strdup(history_event);
      }

      if (v30)
      {
        LODWORD(v8) = 1;
      }

      else
      {
        LODWORD(v8) = -1;
      }

      goto LABEL_224;
    }

    qmemcpy(v123, "!!0", 3);
    v27 = get_history_event(v123, &v124, 0);
    v28 = a1[i + 1] == 58;
    v124 = v28;
    if (v27)
    {
      v29 = v27;
      goto LABEL_55;
    }

LABEL_84:
    LODWORD(v8) = -1;
  }

  while (*v12);
  a2 = v108;
  v105 = ptr;
  if (v8 == 2)
  {
    add_history(ptr);
  }

LABEL_246:
  free(*a2);
  *a2 = v105;
  return v8;
}

int add_history(const char *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = qword_2A13BD708;
    if (qword_2A13BD708)
    {
      v3 = qword_2A18CB778 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      rl_initialize();
      v2 = qword_2A13BD708;
    }

    *&v6.num = 0;
    v6.str = 0;
    history(v2, &v6, 10, v1);
    if (history(qword_2A13BD708, &v6, 2))
    {
      num = history_length;
    }

    else
    {
      num = v6.num;
      history_length = v6.num;
    }

    LODWORD(a1) = num < 1;
  }

  return a1;
}

char *__cdecl history_arg_extract(int a1, int a2, const char *a3)
{
  v5 = history_tokenize(a3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (*v5)
  {
    v7 = 0;
      ;
    }

    v9 = v7 - 2;
    if (a1 == 36)
    {
      v10 = v7 - 2;
    }

    else
    {
      v10 = a1;
    }

    if (a2 == 36)
    {
      v11 = v7 - 2;
    }

    else
    {
      v11 = a2;
    }

    v12 = v11 + ((v7 - 1) & (v11 >> 31));
    if (v10 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    if (((v13 | v12) & 0x80000000) != 0 || v9 < v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      if (v9 >= v12 && v13 <= v12)
      {
        v19 = 0;
        v20 = v12 - v13 + 1;
        v21 = &v5[v13];
        do
        {
          v22 = *v21++;
          v19 += strlen(v22) + 1;
          --v20;
        }

        while (v20);
        v14 = malloc_type_malloc(v19 + 1, 0x100004077774924uLL);
        if (v14)
        {
          v23 = 0;
          do
          {
            strcpy(&v14[v23], v6[v13]);
            v23 += strlen(v6[v13]);
            if (v13 < v12)
            {
              v14[v23++] = 32;
            }

            ++v13;
          }

          while (v12 + 1 != v13);
          v14[v23] = 0;
        }
      }
    }

    v15 = *v6;
    if (*v6)
    {
      v16 = v6 + 1;
      do
      {
        free(v15);
        v17 = *v16++;
        v15 = v17;
      }

      while (v17);
    }
  }

  else
  {
    v14 = 0;
  }

  free(v6);
  return v14;
}

char **__cdecl history_tokenize(const char *a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v28 = 1;
  v6 = MEMORY[0x29EDCA600];
  while (1)
  {
    ptr = v4;
    v30 = v2;
    v7 = 0;
    v8 = 0;
    v9 = v5;
    v10 = (v5 << 32) - 0x100000000;
    v11 = &a1[v5];
    do
    {
      v12 = v11[v7];
      if (v12 < 0)
      {
        v13 = __maskrune(v11[v7], 0x4000uLL);
      }

      else
      {
        v13 = *(v6 + 4 * v12 + 60) & 0x4000;
      }

      --v8;
      v10 += 0x100000000;
      ++v7;
    }

    while (v13);
    v14 = v9 - 1 - v8;
    v15 = v10 >> 32;
    v16 = &a1[v10 >> 32];
    v17 = *v16;
    if (*v16)
    {
      v18 = v9 - 1 - v8;
      do
      {
        if (v17 == 92)
        {
          if (a1[v18 + 1])
          {
            ++v18;
          }
        }

        else
        {
          v19 = v17;
          if (v17 == v3)
          {
            v3 = 0;
          }

          else if (!v3)
          {
            if (v17 < 0)
            {
              if (__maskrune(v17, 0x4000uLL))
              {
                goto LABEL_37;
              }
            }

            else if ((*(v6 + 4 * v17 + 60) & 0x4000) != 0)
            {
              goto LABEL_37;
            }

            if (memchr("()<>;&|$", v19, 9uLL))
            {
LABEL_37:
              v3 = 0;
              v14 = v18;
              break;
            }

            v20 = *v16;
            {
              v3 = v20;
            }

            else
            {
              v3 = 0;
            }
          }
        }

        if (a1[v18])
        {
          v15 = v18 + 1;
        }

        else
        {
          v15 = v18;
        }

        v16 = &a1[v15];
        v17 = a1[v15];
        v18 = v15;
        v14 = v15;
      }

      while (v17);
    }

    if (v30 + 2 >= v28)
    {
      v28 *= 2;
      v21 = ptr;
      v22 = malloc_type_realloc(ptr, 8 * v28, 0x10040436913F5uLL);
      if (!v22)
      {
        goto LABEL_44;
      }

      ptr = v22;
    }

    v23 = v15 - v9 + v8;
    v24 = malloc_type_malloc(v23 + 2, 0x100004077774924uLL);
    if (!v24)
    {
      break;
    }

    v25 = strncpy(v24, &a1[v9 + ~v8], v23 + 1);
    v25[v15 - v9 + 1 + v8] = 0;
    v4 = ptr;
    ptr[v30] = v25;
    v2 = v30 + 1;
    ptr[v30 + 1] = 0;
    if (*v16)
    {
      v5 = v14 + 1;
    }

    else
    {
      v5 = v14;
    }

    if (!a1[v5])
    {
      return v4;
    }
  }

  if (v30)
  {
    v26 = 0;
    v21 = ptr;
    do
    {
      free(ptr[v26++]);
    }

    while (v30 != v26);
  }

  else
  {
    v21 = ptr;
  }

LABEL_44:
  free(v21);
  return 0;
}

int unstifle_history(void)
{
  *&v1.num = 0;
  v1.str = 0;
  history(qword_2A13BD708, &v1, 1, 0x7FFFFFFFLL);
  result = max_input_history;
  max_input_history = 0x7FFFFFFF;
  return result;
}

char *sub_298749F3C()
{
  v0 = &byte_2A13BE048;
  if (!byte_2A13BE048)
  {
    v1 = getuid();
    v2 = getpwuid(v1);
    if (v2)
    {
      snprintf(&byte_2A13BE048, 0x400uLL, "%s/.history", v2->pw_dir);
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

int read_history(const char *a1)
{
  if (qword_2A13BD708)
  {
    v2 = qword_2A18CB778 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    rl_initialize();
  }

  *&v5.num = 0;
  v5.str = 0;
  if (!a1)
  {
    a1 = sub_298749F3C();
    if (!a1)
    {
      return *__error();
    }
  }

  if (history(qword_2A13BD708, &v5, 17, a1) == -1)
  {
    if (!*__error())
    {
      return 22;
    }

    return *__error();
  }

  if (history(qword_2A13BD708, &v5, 2))
  {
    num = history_length;
  }

  else
  {
    num = v5.num;
    history_length = v5.num;
  }

  return num < 1;
}

int write_history(const char *a1)
{
  if (qword_2A13BD708)
  {
    v2 = qword_2A18CB778 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    rl_initialize();
  }

  *&v4.num = 0;
  v4.str = 0;
  if (!a1)
  {
    a1 = sub_298749F3C();
    if (!a1)
    {
      return *__error();
    }
  }

  if (history(qword_2A13BD708, &v4, 18, a1) != -1)
  {
    return 0;
  }

  if (!*__error())
  {
    return 22;
  }

  else
  {
    return *__error();
  }
}

void clear_history(void)
{
  *&v0.num = 0;
  v0.str = 0;
  history(qword_2A13BD708, &v0, 19);
  history_length = 0;
}

int where_history(void)
{
  *&v4.num = 0;
  v4.str = 0;
  if (history(qword_2A13BD708, &v4, 8))
  {
    return 0;
  }

  num = v4.num;
  history(qword_2A13BD708, &v4, 3);
  v3 = v4.num;
  v0 = 1;
  while (v3 != num && !history(qword_2A13BD708, &v4, 6))
  {
    ++v0;
    v3 = v4.num;
  }

  return v0;
}

uint64_t *sub_29874A3D0(int a1)
{
  *&v3.num = 0;
  v3.str = 0;
  v1 = history(qword_2A13BD708, &v3, a1);
  result = 0;
  if (!v1)
  {
    result = &qword_2A13BE448;
    qword_2A13BE448 = v3.str;
    unk_2A13BE450 = 0;
  }

  return result;
}

int history_total_bytes(void)
{
  *&v3.num = 0;
  v3.str = 0;
  if (history(qword_2A13BD708, &v3, 8))
  {
    LODWORD(v0) = -1;
  }

  else
  {
    num = v3.num;
    history(qword_2A13BD708, &v3, 3);
    v0 = 0;
    do
    {
      v0 += strlen(v3.str);
    }

    while (!history(qword_2A13BD708, &v3, 6));
    history(qword_2A13BD708, &v3, 16, num);
  }

  return v0;
}

int history_search_pos(const char *a1, int a2, int a3)
{
  *&v9.num = 0;
  v9.str = 0;
  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  if (history(qword_2A13BD708, &v9, 8))
  {
    return -1;
  }

  num = v9.num;
  if (history_set_pos(v5) || history(qword_2A13BD708, &v9, 8))
  {
    return -1;
  }

  if (a3 < 1)
  {
    v7 = 5;
  }

  else
  {
    v7 = 6;
  }

  while (!strstr(v9.str, a1))
  {
    if (history(qword_2A13BD708, &v9, v7))
    {
      if (a3 < 1)
      {
        history(qword_2A13BD708, &v9, 15, num);
      }

      else
      {
        history(qword_2A13BD708, &v9, 16, num);
      }

      return -1;
    }
  }

  return v5;
}

char *__cdecl username_completion_function(const char *a1, int a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (*a1 == 126)
  {
    v2 = a1 + 1;
  }

  else
  {
    v2 = a1;
  }

  if (!a2)
  {
    setpwent();
  }

  do
  {
    v3 = getpwent();
    if (!v3)
    {
      endpwent();
      return 0;
    }

    pw_name = v3->pw_name;
  }

  while (*v2 == *v3->pw_name && !strcmp(v2, pw_name));

  return strdup(pw_name);
}

int rl_complete(int a1, int a2)
{
  v2 = a2;
  if (qword_2A13BD708)
  {
    v3 = qword_2A18CB778 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    rl_initialize();
  }

  if (rl_inhibit_completion)
  {
    v12[0] = v2;
    v12[1] = 0;
    el_insertstr(qword_2A18CB778, v12);
    return 4;
  }

  else
  {
    if (rl_completion_word_break_hook)
    {
      v5 = rl_completion_word_break_hook();
      v6 = rl_basic_word_break_characters;
    }

    else
    {
      v6 = rl_basic_word_break_characters;
      v5 = rl_basic_word_break_characters;
    }

    v7 = qword_2A18CB778;
    v8 = rl_completion_entry_function;
    v9 = rl_attempted_completion_function;
    v10 = sub_2987528BC(v6, &unk_2A13BD7F8);
    v11 = sub_2987528BC(v5, &unk_2A13BD818);
    return sub_2987433D0(v7, v8, v9, v10, v11, sub_29874A82C, rl_completion_query_items, &rl_completion_type, &rl_attempted_completion_over, &rl_point, &rl_end, 0, 0, 0);
  }
}

char *sub_29874A82C()
{
  result = &byte_2A13BE458;
  byte_2A13BE458 = rl_completion_append_character;
  byte_2A13BE459 = 0;
  return result;
}

int rl_bind_key(int a1, rl_command_func_t *a2)
{
  if (qword_2A13BD708)
  {
    v4 = qword_2A18CB778 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    rl_initialize();
  }

  if (a2 != rl_insert)
  {
    return -1;
  }

  result = 0;
  *(*(qword_2A18CB778 + 1056) + a1) = 8;
  return result;
}