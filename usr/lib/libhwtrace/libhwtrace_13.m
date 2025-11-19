uint64_t sub_298B8FC48(void *a1, unsigned int a2, unint64_t a3, int a4, int a5)
{
  v17 = *MEMORY[0x29EDCA608];
  v7 = &v16;
  v16 = (a2 % 0xA) | 0x30;
  if (a2 >= 0xA)
  {
    do
    {
      *--v7 = (a2 / 0xA - 10 * ((429496730 * (a2 / 0xA)) >> 32)) | 0x30;
      v15 = a2 > 0x63;
      a2 /= 0xAu;
    }

    while (v15);
  }

  v8 = (&v17 - v7);
  if (a5)
  {
    v9 = a1[4];
    if (v9 >= a1[3])
    {
      a1 = sub_298B9BC1C(a1, 45);
    }

    else
    {
      a1[4] = v9 + 1;
      *v9 = 45;
    }
  }

  if (a4 != 1 && v8 < a3)
  {
    v10 = v8;
    do
    {
      v11 = a1[4];
      if (v11 < a1[3])
      {
        a1[4] = v11 + 1;
        *v11 = 48;
      }

      else
      {
        a1 = sub_298B9BC1C(a1, 48);
      }

      ++v10;
    }

    while (v10 < a3);
  }

  v12 = &v17 - v8;
  if (a4 == 1)
  {
    result = sub_298B8FDB4(a1, v12, v8);
  }

  else
  {
    result = sub_298B9BCEC(a1, v12, v8);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B8FDB4(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v5 = (a3 - 1) % 3;
  v6 = v5 + 1;
  v7 = a3 - (v5 + 1);
  if (a3 >= v5 + 1)
  {
    a3 = v5 + 1;
  }

  result = sub_298B9BCEC(a1, a2, a3);
  if (v7)
  {
    v9 = &a2[v6];
    while (1)
    {
      while (1)
      {
        v10 = *(a1 + 32);
        if (v10 >= *(a1 + 24))
        {
          break;
        }

LABEL_8:
        *(a1 + 32) = v10 + 1;
        *v10 = 44;
LABEL_9:
        result = sub_298B9BCEC(a1, v9, 3uLL);
        v9 += 3;
        v7 -= 3;
        if (!v7)
        {
          return result;
        }
      }

      v11 = *(a1 + 16);
      if (v11)
      {
        *(a1 + 32) = v11;
        sub_298B9BB84(a1);
        v10 = *(a1 + 32);
        goto LABEL_8;
      }

      if (!*(a1 + 56))
      {
        sub_298B9BB84(a1);
        goto LABEL_9;
      }

      sub_298B9AE98(a1);
    }
  }

  return result;
}

uint64_t sub_298B8FEA0(uint64_t a1, unint64_t a2, unint64_t a3, int a4, int a5)
{
  v8 = 0;
  v28 = *MEMORY[0x29EDCA608];
  v9 = 127;
  do
  {
    v27[v9] = (a2 % 0xA) | 0x30;
    v8 += 0x100000000;
    --v9;
    v10 = a2 > 9;
    a2 /= 0xAuLL;
  }

  while (v10);
  v11 = v8 >> 32;
  if (!a5)
  {
LABEL_11:
    if (a4 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 32);
  if (v12 < *(a1 + 24))
  {
LABEL_10:
    *(a1 + 32) = v12 + 1;
    *v12 = 45;
    goto LABEL_11;
  }

  while (1)
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      *(a1 + 32) = v13;
      sub_298B9BB84(a1);
      v12 = *(a1 + 32);
      goto LABEL_10;
    }

    if (!*(a1 + 56))
    {
      break;
    }

    sub_298B9AE98(a1);
    v12 = *(a1 + 32);
    if (v12 < *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  sub_298B9BB84(a1);
  if (a4 != 1)
  {
LABEL_12:
    if (v11 >= a3)
    {
      goto LABEL_22;
    }

    v14 = v11;
    while (1)
    {
      while (1)
      {
        v15 = *(a1 + 32);
        if (v15 >= *(a1 + 24))
        {
          break;
        }

LABEL_17:
        *(a1 + 32) = v15 + 1;
        *v15 = 48;
        if (++v14 >= a3)
        {
          goto LABEL_22;
        }
      }

      v16 = *(a1 + 16);
      if (v16)
      {
        *(a1 + 32) = v16;
        sub_298B9BB84(a1);
        v15 = *(a1 + 32);
        goto LABEL_17;
      }

      if (*(a1 + 56))
      {
        sub_298B9AE98(a1);
      }

      else
      {
        sub_298B9BB84(a1);
        if (++v14 >= a3)
        {
          break;
        }
      }
    }
  }

LABEL_22:
  v17 = &v28 - v11;
  if (a4 == 1)
  {
    v18 = (v11 - 1) % 3;
    v19 = v18 + 1;
    v20 = v11 - (v18 + 1);
    if (v11 >= v18 + 1)
    {
      v21 = v18 + 1;
    }

    else
    {
      v21 = v11;
    }

    result = sub_298B9BCEC(a1, v17, v21);
    if (v20)
    {
      v23 = &v17[v19];
      while (1)
      {
        while (1)
        {
          v24 = *(a1 + 32);
          if (v24 >= *(a1 + 24))
          {
            break;
          }

LABEL_31:
          *(a1 + 32) = v24 + 1;
          *v24 = 44;
LABEL_32:
          result = sub_298B9BCEC(a1, v23, 3uLL);
          v23 += 3;
          v20 -= 3;
          if (!v20)
          {
            goto LABEL_38;
          }
        }

        v25 = *(a1 + 16);
        if (v25)
        {
          *(a1 + 32) = v25;
          sub_298B9BB84(a1);
          v24 = *(a1 + 32);
          goto LABEL_31;
        }

        if (!*(a1 + 56))
        {
          sub_298B9BB84(a1);
          goto LABEL_32;
        }

        sub_298B9AE98(a1);
      }
    }
  }

  else
  {
    result = sub_298B9BCEC(a1, &v28 - v11, v11);
  }

LABEL_38:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B9014C(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_298ADDDA0();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_298B90264(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39[16] = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v10 = *(a5 + 23);
    if (v10 < 0)
    {
      v10 = *(a5 + 8);
    }

    if (v10)
    {
      MEMORY[0x29C294300](a5, "");
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = *a1;
      v13 = sub_298BA3E78(*(a1 + 8), *a1, 0, 0);
      std::string::resize(a5, v13 - 1, 0);
      if (*(a5 + 23) >= 0)
      {
        v14 = a5;
      }

      else
      {
        v14 = *a5;
      }

      sub_298BA3E78(v11, v12, v14, v13);
      result = 0;
      goto LABEL_37;
    }
  }

  else if (*(a1 + 8))
  {
    result = 0;
    goto LABEL_37;
  }

  if (a4)
  {
    v16 = *(*a1 + 8) + 1;
  }

  else
  {
    v16 = 0;
  }

  if (a2)
  {
    v17 = a3;
  }

  else
  {
    a2 = "";
    v17 = 0;
  }

  v37 = v39;
  v38 = 0x800000000;
  if (v16 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (v16 < 9)
  {
    v19 = 0;
    v20 = v39;
  }

  else
  {
    sub_298B90A44(&v37, v39, v18, 16);
    v19 = v38;
    if (v38 == v18)
    {
      goto LABEL_27;
    }

    v20 = v37;
  }

  bzero(&v20[2 * v19], 16 * (v18 - v19));
LABEL_27:
  LODWORD(v38) = v18;
  v21 = v37;
  *v37 = 0;
  v21[1] = v17;
  v22 = sub_298BA4398(*a1, a2, v16, v21, 4);
  if (v22)
  {
    if (v22 == 1 || !a5)
    {
      result = 0;
      v27 = v37;
      if (v37 == v39)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v23 = *(a1 + 8);
      v24 = *a1;
      v25 = sub_298BA3E78(v23, *a1, 0, 0);
      std::string::resize(a5, v25 - 1, 0);
      if (*(a5 + 23) >= 0)
      {
        v26 = a5;
      }

      else
      {
        v26 = *a5;
      }

      sub_298BA3E78(v23, v24, v26, v25);
      result = 0;
      v27 = v37;
      if (v37 == v39)
      {
        goto LABEL_37;
      }
    }

LABEL_36:
    v28 = result;
    free(v27);
    result = v28;
    goto LABEL_37;
  }

  if (a4)
  {
    *(a4 + 8) = 0;
    if (v16)
    {
      v30 = 0;
      v31 = 0;
      v32 = 16 * v16;
      do
      {
        while (1)
        {
          v33 = *(v37 + v30);
          if (v33 == -1)
          {
            break;
          }

          v34 = *(v37 + v30 + 8);
          if (v31 >= *(a4 + 12))
          {
            sub_298B90A44(a4, (a4 + 16), v31 + 1, 16);
            v31 = *(a4 + 8);
          }

          v35 = (*a4 + 16 * v31);
          *v35 = &a2[v33];
          v35[1] = v34 - v33;
          v31 = *(a4 + 8) + 1;
          *(a4 + 8) = v31;
          v30 += 16;
          if (v32 == v30)
          {
            goto LABEL_49;
          }
        }

        if (v31 >= *(a4 + 12))
        {
          sub_298B90A44(a4, (a4 + 16), v31 + 1, 16);
          v31 = *(a4 + 8);
        }

        v36 = (*a4 + 16 * v31);
        *v36 = 0;
        v36[1] = 0;
        v31 = *(a4 + 8) + 1;
        *(a4 + 8) = v31;
        v30 += 16;
      }

      while (v32 != v30);
    }
  }

LABEL_49:
  result = 1;
  v27 = v37;
  if (v37 != v39)
  {
    goto LABEL_36;
  }

LABEL_37:
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_298B905B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a1 + 16);
  if (3 * v3 <= 4 * (v2 - *(a1 + 24)))
  {
    if (v3 >= 0x40)
    {
      v3 *= 2;
    }

    else
    {
      v3 = 128;
    }
  }

  else if (v3 - v2 >= v3 >> 3)
  {
    goto LABEL_3;
  }

  v14 = a1;
  v15 = a2;
  sub_298B906F0(a1, v3);
  a1 = v14;
  a2 = v15;
  v3 = *(v14 + 16);
LABEL_3:
  v4 = v3 - 1;
  v5 = *(a1 + 8);
  v6 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v5 + 8 * v6);
  v8 = *v7;
  if (*v7 != -1)
  {
    v9 = 0;
    v11 = 1;
    while (v8 != a2)
    {
      if (v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -2;
      }

      if (v12)
      {
        v9 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v4;
      v7 = (v5 + 8 * (v13 & v4));
      v8 = *v7;
      if (*v7 == -1)
      {
        goto LABEL_5;
      }
    }

    return v7;
  }

  v9 = 0;
LABEL_5:
  if (v9)
  {
    v7 = v9;
  }

  if (*v7 == a2)
  {
    return v7;
  }

  if (*v7 == -2)
  {
    --*(a1 + 24);
  }

  else
  {
    ++*(a1 + 20);
  }

  *v7 = a2;
  return v7;
}

void sub_298B906F0(uint64_t a1, unsigned int a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = 16;
  if (v4 == *a1)
  {
    v6 = 20;
  }

  v7 = *(a1 + v6);
  v8 = 8 * a2;
  v9 = malloc_type_malloc(v8, 0x3C0F72FBuLL);
  if (!v9 && (a2 || (v9 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    sub_298B86A40("Allocation failed");
  }

  *(a1 + 8) = v9;
  *(a1 + 16) = a2;
  memset(v9, 255, v8);
  if (v7)
  {
    v10 = v4;
    do
    {
      v13 = *v10;
      if (*v10 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = *(a1 + 16) - 1;
        v15 = *(a1 + 8);
        v16 = v14 & ((v13 >> 4) ^ (v13 >> 9));
        v12 = (v15 + 8 * v16);
        v17 = *v12;
        if (*v12 == -1)
        {
          v11 = 0;
LABEL_9:
          if (v11)
          {
            v12 = v11;
          }
        }

        else
        {
          v11 = 0;
          v18 = 1;
          while (v17 != v13)
          {
            if (v11)
            {
              v19 = 0;
            }

            else
            {
              v19 = v17 == -2;
            }

            if (v19)
            {
              v11 = v12;
            }

            v20 = v16 + v18++;
            v16 = v20 & v14;
            v12 = (v15 + 8 * (v20 & v14));
            v17 = *v12;
            if (*v12 == -1)
            {
              goto LABEL_9;
            }
          }
        }

        *v12 = v13;
      }

      ++v10;
    }

    while (v10 != &v4[v7]);
  }

  if (v4 != v5)
  {
    free(v4);
  }

  *(a1 + 20) = (*(a1 + 20) - *(a1 + 24));
}

void *sub_298B90848(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (HIDWORD(a3))
  {
    sub_298B90D10(a3);
  }

  v6 = *(a1 + 12);
  if (v6 == -1)
  {
    sub_298B90DC8(0xFFFFFFFFuLL);
  }

  v10 = 2 * v6;
  v11 = v6 < 0;
  v12 = 0xFFFFFFFFLL;
  if (!v11)
  {
    v12 = v10 + 1;
  }

  if (((2 * *(a1 + 12)) | 1uLL) < a3)
  {
    v12 = a3;
  }

  *a5 = v12;
  v13 = v12 * a4;
  result = malloc_type_malloc(v12 * a4, 0x3C0F72FBuLL);
  if (!result && (v13 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    sub_298B86A40("Allocation failed");
  }

  if (result == a2)
  {
    v15 = *a5;

    return sub_298B909A8(a1, result, a4, v15, 0);
  }

  return result;
}

void *sub_298B90950(size_t a1)
{
  result = malloc_type_malloc(a1, 0x3C0F72FBuLL);
  if (!result && (a1 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    sub_298B86A40("Allocation failed");
  }

  return result;
}

void *sub_298B909A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a4 * a3;
  v9 = malloc_type_malloc(a4 * a3, 0x3C0F72FBuLL);
  if (!v9 && (v8 || (v9 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    sub_298B86A40("Allocation failed");
  }

  v10 = v9;
  if (a5)
  {
    memcpy(v9, a2, a5 * a3);
  }

  free(a2);
  return v10;
}

void *sub_298B90A44(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    sub_298B90D10(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    sub_298B90DC8(0xFFFFFFFFuLL);
  }

  v8 = 2 * v5;
  v9 = v5 < 0;
  v10 = 0xFFFFFFFFLL;
  if (!v9)
  {
    v10 = v8 + 1;
  }

  if (((2 * *(a1 + 12)) | 1uLL) >= a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  v12 = *a1;
  v13 = v11 * a4;
  if (*a1 != a2)
  {
    result = malloc_type_realloc(v12, v11 * a4, 0xF4063A16uLL);
    v15 = result;
    if (result)
    {
      goto LABEL_10;
    }

    if (!v13)
    {
      result = sub_298B90950(1uLL);
      v15 = result;
LABEL_10:
      if (v15 == a2)
      {
        result = sub_298B909A8(a1, v15, a4, v11, *(a1 + 8));
        v15 = result;
      }

      goto LABEL_16;
    }

LABEL_21:
    sub_298B86A40("Allocation failed");
  }

  v16 = malloc_type_malloc(v11 * a4, 0x3C0F72FBuLL);
  if (!v16)
  {
    if (v13)
    {
      goto LABEL_21;
    }

    v16 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  v15 = v16;
  if (v16 == a2)
  {
    v15 = sub_298B909A8(a1, v16, a4, v11, 0);
  }

  result = memcpy(v15, *a1, *(a1 + 8) * a4);
LABEL_16:
  *a1 = v15;
  *(a1 + 12) = v11;
  return result;
}

void *sub_298B90BA4(void *a1, size_t a2)
{
  result = malloc_type_realloc(a1, a2, 0xF4063A16uLL);
  if (!result)
  {
    if (a2)
    {
      sub_298B86A40("Allocation failed");
    }

    return sub_298B90950(1uLL);
  }

  return result;
}

void sub_298B90C08(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    sub_298B90DC8(0xFFFFFFFFFFFFFFFFLL);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v8 = 2 * v4 + 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = *a1;
  v10 = v8 * a4;
  if (v9 == a2)
  {
    v13 = sub_298B90950(v8 * a4);
    if (v13 == a2)
    {
      v14 = sub_298B90950(v10);
      free(v13);
      v13 = v14;
    }

    memcpy(v13, *a1, *(a1 + 8) * a4);
  }

  else
  {
    v11 = sub_298B90BA4(v9, v8 * a4);
    v12 = v11;
    if (v11 == a2)
    {
      v15 = *(a1 + 8);
      v16 = sub_298B90950(v10);
      v13 = v16;
      if (v15)
      {
        memcpy(v16, v12, v15 * a4);
      }

      free(v12);
    }

    else
    {
      v13 = v11;
    }
  }

  *a1 = v13;
  *(a1 + 16) = v8;
}

void sub_298B90D10(unint64_t a1)
{
  std::to_string(&v4, a1);
  sub_298B90EB4("SmallVector unable to grow. Requested capacity (", &v4, &v5);
  sub_298B90E1C(&v6, &v5, ") is larger than maximum value for size type (");
  std::to_string(&v3, 0xFFFFFFFFuLL);
  sub_298B90E60(&v6, &v3, &v1);
  sub_298B90E1C(&v7, &v1, ")");
  std::string::~string(&v1);
  std::string::~string(&v3);
  std::string::~string(&v6);
  std::string::~string(&v5);
  std::string::~string(&v4);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = &v7;
  sub_298B868DC(&v1, 1);
}

void sub_298B90DC8(unint64_t a1)
{
  std::to_string(&v1, a1);
  sub_298B90EB4("SmallVector capacity unable to grow. Already at maximum size ", &v1, &v3);
  std::string::~string(&v1);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = &v3;
  sub_298B868DC(&v1, 1);
}

__n128 sub_298B90E1C(std::string *a1, std::string *this, std::string::value_type *__s)
{
  v4 = std::string::append(this, __s);
  result = *v4;
  *a1 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_298B90E60@<Q0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::string::append(a1, a2, v5);
  result = *v6;
  *a3 = *v6->n128_u8;
  v6->n128_u64[0] = 0;
  v6->n128_u64[1] = 0;
  v6[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_298B90EB4@<Q0>(std::string::value_type *__s@<X0>, std::string *this@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::insert(this, 0, __s);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

double sub_298B90EFC(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_298B90F10(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = (a1 + 24);
  sub_298B64B64(&v4);
  v4 = a1;
  sub_298B93398(&v4);
  return a1;
}

unint64_t sub_298B90F9C(uint64_t *a1, unint64_t a2, int a3)
{
  v3 = *a1;
  if (!a3)
  {
    v4 = -1431655765 * ((a1[1] - v3) >> 3);
    if (v4)
    {
      a3 = 1;
      v5 = *a1;
      while (*(*v5 + 8) > a2 || *(*v5 + 16) < a2)
      {
        ++a3;
        v5 += 24;
        if (!--v4)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      a3 = 0;
    }
  }

  v6 = (v3 + 24 * (a3 - 1));
  v7 = *(*v6 + 8);
  v8 = *(*v6 + 16) - v7;
  if (v8 <= 0xFF)
  {
    v10 = v6[1];
    if (!v10)
    {
      operator new();
    }

    v11 = a2 - v7;
    v12 = *v10;
    v13 = v10[1];
    v14 = v13 - *v10;
    if (v13 == *v10)
    {
      LODWORD(v12) = 0;
    }

    else
    {
      v15 = *v10;
      do
      {
        v16 = v14 >> 1;
        v17 = &v15[v14 >> 1];
        v19 = *v17;
        v18 = v17 + 1;
        v14 += ~(v14 >> 1);
        if (v19 < (a2 - v7))
        {
          v15 = v18;
        }

        else
        {
          v14 = v16;
        }
      }

      while (v14);
      LODWORD(v12) = v15 - v12;
    }
  }

  else if (v8 >> 16)
  {
    v9 = v6[1];
    if (HIDWORD(v8))
    {
      if (!v9)
      {
        operator new();
      }

      v11 = a2 - v7;
      v27 = v9[1];
      if (v27 != *v9)
      {
        v28 = (v27 - *v9) >> 3;
        v27 = *v9;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[v28 >> 1];
          v32 = *v30;
          v31 = v30 + 1;
          v28 += ~(v28 >> 1);
          if (v32 < v11)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
      }

      v12 = (v27 - *v9) >> 3;
    }

    else
    {
      if (!v9)
      {
        operator new();
      }

      v11 = a2 - v7;
      v33 = v9[1];
      if (v33 != *v9)
      {
        v34 = (v33 - *v9) >> 2;
        v33 = *v9;
        do
        {
          v35 = v34 >> 1;
          v36 = &v33[v34 >> 1];
          v38 = *v36;
          v37 = v36 + 1;
          v34 += ~(v34 >> 1);
          if (v38 < v11)
          {
            v33 = v37;
          }

          else
          {
            v34 = v35;
          }
        }

        while (v34);
      }

      v12 = (v33 - *v9) >> 2;
    }
  }

  else
  {
    v20 = v6[1];
    if (!v20)
    {
      operator new();
    }

    v21 = v20[1];
    v11 = a2 - v7;
    if (v21 != *v20)
    {
      v22 = v21 - *v20;
      v21 = *v20;
      do
      {
        v23 = v22 >> 1;
        v24 = &v21[v22 >> 1];
        v26 = *v24;
        v25 = v24 + 1;
        v22 += ~(v22 >> 1);
        if (v26 < (a2 - v7))
        {
          v21 = v25;
        }

        else
        {
          v22 = v23;
        }
      }

      while (v22);
    }

    v12 = (v21 - *v20) >> 1;
  }

  v44[0] = 9216;
  memset(&v44[1], 0, 24);
  v39 = v7 - 1;
  for (i = v11; i; --i)
  {
    v41 = i - 1;
    v42 = *(v44 + ((*(v39 + i) >> 3) & 0x18)) >> *(v39 + i);
    if (v42)
    {
      return (v12 + 1) | ((v11 - v41) << 32);
    }
  }

  v41 = -1;
  return (v12 + 1) | ((v11 - v41) << 32);
}

uint64_t *sub_298B91554(uint64_t *result, unint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = result;
    v6 = -1431655765 * ((result[1] - *result) >> 3);
    if (v6)
    {
      v7 = 1;
      v8 = *result;
      while (*(*v8 + 8) > a2 || *(*v8 + 16) < a2)
      {
        ++v7;
        v8 += 24;
        if (!--v6)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v7 = 0;
    }

    sub_298B91554(result, *(*result + 24 * (v7 - 1) + 16), a3);
    v9 = a3[4];
    if (a3[3] - v9 > 0xDuLL)
    {
      qmemcpy(v9, "Included from ", 14);
      a3[4] += 14;
    }

    else
    {
      sub_298B9BCEC(a3, "Included from ", 0xEuLL);
    }

    v10 = *(*v5 + 24 * (v7 - 1));
    v12 = (*(*v10 + 16))(v10);
    v13 = v11;
    v14 = a3[4];
    if (v11 <= a3[3] - v14)
    {
      if (v11)
      {
        memcpy(v14, v12, v11);
        v14 = (a3[4] + v13);
        a3[4] = v14;
      }
    }

    else
    {
      sub_298B9BCEC(a3, v12, v11);
      v14 = a3[4];
    }

    if (a3[3] == v14)
    {
      sub_298B9BCEC(a3, ":", 1uLL);
    }

    else
    {
      *v14 = 58;
      ++a3[4];
    }

    v15 = sub_298B90F9C(v5, a2, v7);
    result = sub_298B8FC48(a3, v15, 0, 0, 0);
    v16 = a3[4];
    if (a3[3] - v16 > 1uLL)
    {
      *v16 = 2618;
      a3[4] += 2;
    }

    else
    {

      return sub_298B9BCEC(a3, ":\n", 2uLL);
    }
  }

  return result;
}

void sub_298B9178C(uint64_t *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v84[4] = *MEMORY[0x29EDCA608];
  v82 = v84;
  v83 = 0x400000000;
  if (a2)
  {
    v13 = -1431655765 * ((a1[1] - *a1) >> 3);
    v74 = a4;
    if (v13)
    {
      v14 = 1;
      v15 = *a1;
      while (*(*v15 + 8) > a2 || *(*v15 + 16) < a2)
      {
        ++v14;
        v15 += 24;
        if (!--v13)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v14 = 0;
    }

    v16 = *(*a1 + 24 * (v14 - 1));
    __src = (*(*v16 + 16))(v16);
    v18 = v17;
    v19 = v16[1];
    v20 = a2;
    while (v20 != v19)
    {
      v22 = *--v20;
      v21 = v22;
      v23 = v22 == 13 || v21 == 10;
      if (v23)
      {
        v19 = (v20 + 1);
        break;
      }
    }

    v24 = v16[2];
    v25 = a2;
    if (v24 != a2)
    {
      while (1)
      {
        v26 = *v25;
        if (v26 == 10 || v26 == 13)
        {
          break;
        }

        if (++v25 == v24)
        {
          v25 = v24;
          break;
        }
      }
    }

    __len = v25 - v19;
    if (a6)
    {
      v28 = &a5[2 * a6];
      do
      {
        v30 = *a5;
        v29 = a5[1];
        if (*a5)
        {
          v31 = v30 > v25;
        }

        else
        {
          v31 = 1;
        }

        if (!v31 && v29 >= v19)
        {
          if (v30 >= v19)
          {
            v33 = *a5;
          }

          else
          {
            v33 = v19;
          }

          if (v29 <= v25)
          {
            v34 = a5[1];
          }

          else
          {
            v34 = v25;
          }

          v35 = v83;
          if (v83 >= HIDWORD(v83))
          {
            sub_298B90A44(&v82, v84, v83 + 1, 8);
            v35 = v83;
          }

          *(v82 + v35) = (v33 - v19) | ((v34 - v19) << 32);
          LODWORD(v83) = v83 + 1;
        }

        a5 += 2;
      }

      while (a5 != v28);
    }

    v36 = a1;
    v37 = sub_298B90F9C(a1, a2, v14);
    v38 = v37;
    v39 = HIDWORD(v37) - 1;
    a4 = v74;
  }

  else
  {
    __len = 0;
    v19 = 0;
    v38 = 0;
    v39 = -1;
    v18 = 9;
    __src = "<unknown>";
    v36 = a1;
  }

  sub_298B996A4(a4, __p);
  if (v80 >= 0)
  {
    v40 = __p;
  }

  else
  {
    v40 = __p[0];
  }

  if (v80 >= 0)
  {
    v41 = v80;
  }

  else
  {
    v41 = __p[1];
  }

  v42 = v83;
  *a9 = v36;
  *(a9 + 8) = a2;
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_100;
  }

  v75 = v42;
  if (v18 >= 0x17)
  {
    operator new();
  }

  v43 = (a9 + 16);
  *(a9 + 39) = v18;
  if (v18)
  {
    memmove(v43, __src, v18);
  }

  *(v43 + v18) = 0;
  *(a9 + 40) = v38;
  *(a9 + 44) = v39;
  *(a9 + 48) = a3;
  if (v41 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_100;
  }

  if (v41 >= 0x17)
  {
    operator new();
  }

  v44 = (a9 + 56);
  *(a9 + 79) = v41;
  if (v41)
  {
    memmove(v44, v40, v41);
  }

  *(v44 + v41) = 0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_100:
    sub_298ADDDA0();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v45 = (a9 + 80);
  *(a9 + 103) = __len;
  if (__len)
  {
    memmove(v45, v19, __len);
  }

  *(v45 + __len) = 0;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 120) = 0;
  if (v75)
  {
    operator new();
  }

  *(a9 + 128) = a9 + 144;
  *(a9 + 136) = 0x400000000;
  v46 = (40 * a8) >> 3;
  v47 = -858993459 * v46;
  if (0xCCCCCCCCCCCCCCCDLL * v46 < 5)
  {
    v57 = 0;
    v58 = 0;
    v48 = (a9 + 144);
    if (!a8)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v81 = 0;
    v48 = sub_298B90848(a9 + 128, (a9 + 144), 0xCCCCCCCCCCCCCCCDLL * v46, 40, &v81);
    v49 = *(a9 + 128);
    v50 = *(a9 + 136);
    if (v50)
    {
      v51 = &v49[40 * v50];
      v52 = v48;
      do
      {
        *v52 = *v49;
        v53 = *(v49 + 1);
        v52[4] = *(v49 + 4);
        *(v52 + 1) = v53;
        *(v49 + 3) = 0;
        *(v49 + 4) = 0;
        *(v49 + 2) = 0;
        v52 += 5;
        v49 += 40;
      }

      while (v49 != v51);
      v49 = *(a9 + 128);
      v54 = *(a9 + 136);
      if (v54)
      {
        v55 = &v49[40 * v54 - 24];
        v56 = -40 * v54;
        do
        {
          if (*(v55 + 23) < 0)
          {
            operator delete(*v55);
          }

          v55 -= 40;
          v56 += 40;
        }

        while (v56);
        v49 = *(a9 + 128);
      }
    }

    v59 = v81;
    if (v49 != (a9 + 144))
    {
      free(v49);
    }

    *(a9 + 128) = v48;
    *(a9 + 140) = v59;
    v57 = *(a9 + 136);
    v58 = v57;
    if (!a8)
    {
      goto LABEL_92;
    }
  }

  v60 = (a7 + 40 * a8);
  v61 = &v48[5 * v57 + 2];
  v62 = (a7 + 16);
  do
  {
    while (1)
    {
      *(v61 - 16) = *(v62 - 1);
      if ((*(v62 + 23) & 0x80000000) == 0)
      {
        break;
      }

      sub_298AFE11C(v61, *v62, *(v62 + 1));
      v63 = v62 - 1;
      v61 += 40;
      v62 = (v62 + 40);
      if ((v63 + 40) == v60)
      {
        goto LABEL_91;
      }
    }

    v64 = *v62;
    *(v61 + 16) = *(v62 + 2);
    *v61 = v64;
    v61 += 40;
    v65 = v62 - 1;
    v62 = (v62 + 40);
  }

  while ((v65 + 40) != v60);
LABEL_91:
  v58 = *(a9 + 136);
  v48 = *(a9 + 128);
LABEL_92:
  v66 = v58 + v47;
  v23 = v66 == 0;
  *(a9 + 136) = v66;
  v67 = &v48[5 * v66];
  v68 = 126 - 2 * __clz(v66);
  if (v23)
  {
    v69 = 0;
  }

  else
  {
    v69 = v68;
  }

  sub_298B934A4(v48, v67, v69, 1);
  if (v80 < 0)
  {
    operator delete(__p[0]);
  }

  if (v82 != v84)
  {
    free(v82);
  }

  v70 = *MEMORY[0x29EDCA608];
}

void sub_298B91DD4(uint64_t a1, char *__s, void *a3, int a4, int a5)
{
  if (a4 && off_2A1A99568(a3))
  {
    (*(*a3 + 24))(a3, 16, 1, 0);
  }

  if (!__s || !*__s)
  {
LABEL_12:
    v12 = (a1 + 16);
    v13 = *(a1 + 39);
    v127 = a1;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v10 = strlen(__s);
  v11 = a3[4];
  if (v10 <= a3[3] - v11)
  {
    if (v10)
    {
      memcpy(v11, __s, v10);
      v11 = (a3[4] + v10);
      a3[4] = v11;
    }
  }

  else
  {
    sub_298B9BCEC(a3, __s, v10);
    v11 = a3[4];
  }

  if (a3[3] - v11 <= 1uLL)
  {
    sub_298B9BCEC(a3, ": ", 2uLL);
    goto LABEL_12;
  }

  *v11 = 8250;
  a3[4] += 2;
  v12 = (a1 + 16);
  v13 = *(a1 + 39);
  v127 = a1;
  if ((v13 & 0x8000000000000000) == 0)
  {
LABEL_13:
    if (!v13)
    {
      goto LABEL_64;
    }

    if (v13 != 1 || *v12 != 45)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_18:
  v14 = *(a1 + 24);
  if (!v14)
  {
    goto LABEL_64;
  }

  if (v14 != 1 || **v12 != 45)
  {
LABEL_24:
    if ((v13 & 0x80000000) == 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = *(a1 + 16);
    }

    if ((v13 & 0x80000000) == 0)
    {
      v17 = v13;
    }

    else
    {
      v17 = *(a1 + 24);
    }

    sub_298B9BCEC(a3, v16, v17);
    if (*(a1 + 40) != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_21:
  v15 = a3[4];
  if (a3[3] - v15 <= 6uLL)
  {
    sub_298B9BCEC(a3, "<stdin>", 7uLL);
    if (*(a1 + 40) == -1)
    {
      goto LABEL_62;
    }

LABEL_31:
    v18 = a3[4];
    if (v18 >= a3[3])
    {
      v19 = a3[2];
      if (!v19)
      {
        a1 = v127;
        while (*(a3 + 14))
        {
          sub_298B9AE98(a3);
          v21 = a3[4];
          if (v21 < a3[3])
          {
            a1 = v127;
            a3[4] = v21 + 1;
            *v21 = 58;
            v20 = *(v127 + 40);
            if ((v20 & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_45;
          }

          v19 = a3[2];
          if (v19)
          {
            goto LABEL_33;
          }
        }

        LOBYTE(v131[0]) = 58;
        sub_298B9BB84(a3);
        a1 = v127;
        v20 = *(v127 + 40);
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_45;
      }

LABEL_33:
      a3[4] = v19;
      sub_298B9BB84(a3);
      v18 = a3[4];
    }

    a3[4] = v18 + 1;
    *v18 = 58;
    v20 = *(a1 + 40);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_35:
      sub_298B8FC48(a3, v20, 0, 0, 0);
      if (*(a1 + 44) == -1)
      {
        goto LABEL_62;
      }

LABEL_46:
      v22 = a3[4];
      if (v22 >= a3[3])
      {
        v23 = a3[2];
        if (!v23)
        {
          a1 = v127;
          while (*(a3 + 14))
          {
            sub_298B9AE98(a3);
            v22 = a3[4];
            if (v22 < a3[3])
            {
              a1 = v127;
              goto LABEL_49;
            }

            v23 = a3[2];
            if (v23)
            {
              goto LABEL_48;
            }
          }

          LOBYTE(v131[0]) = 58;
          sub_298B9BB84(a3);
          a1 = v127;
          v24 = *(v127 + 44);
          if (v24 >= -1)
          {
            goto LABEL_50;
          }

          goto LABEL_60;
        }

LABEL_48:
        a3[4] = v23;
        sub_298B9BB84(a3);
        v22 = a3[4];
      }

LABEL_49:
      a3[4] = v22 + 1;
      *v22 = 58;
      v24 = *(a1 + 44);
      if (v24 >= -1)
      {
LABEL_50:
        v25 = v24 + 1;
        v26 = a3;
        v27 = 0;
LABEL_61:
        sub_298B8FC48(v26, v25, 0, 0, v27);
        goto LABEL_62;
      }

LABEL_60:
      v25 = ~v24;
      v26 = a3;
      v27 = 1;
      goto LABEL_61;
    }

LABEL_45:
    sub_298B8FC48(a3, -v20, 0, 0, 1);
    if (*(a1 + 44) == -1)
    {
      goto LABEL_62;
    }

    goto LABEL_46;
  }

  *(v15 + 3) = 1047423332;
  *v15 = 1685353276;
  a3[4] += 7;
  if (*(a1 + 40) != -1)
  {
    goto LABEL_31;
  }

LABEL_62:
  v28 = a3[4];
  if (a3[3] - v28 <= 1uLL)
  {
    sub_298B9BCEC(a3, ": ", 2uLL);
LABEL_64:
    if (!a4)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  *v28 = 8250;
  a3[4] += 2;
  if (!a4)
  {
    goto LABEL_69;
  }

LABEL_67:
  if (off_2A1A99568(a3))
  {
    (*(*a3 + 32))(a3);
  }

LABEL_69:
  if (!a5)
  {
    goto LABEL_87;
  }

  v29 = *(a1 + 48);
  if (v29 <= 1)
  {
    if (!v29)
    {
      if (a4 && off_2A1A99568(a3))
      {
        (*(*a3 + 24))(a3, 1, 1, 0);
      }

      v32 = a3[4];
      if (a3[3] - v32 > 6uLL)
      {
        qmemcpy(v32, "error: ", 7);
        a3[4] += 7;
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      else
      {
        sub_298B9BCEC(a3, "error: ", 7uLL);
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_108;
    }

    if (v29 == 1)
    {
      if (a4 && off_2A1A99568(a3))
      {
        (*(*a3 + 24))(a3, 5, 1, 0);
      }

      v30 = a3[4];
      if (a3[3] - v30 > 8uLL)
      {
        qmemcpy(v30, "warning: ", 9);
        a3[4] += 9;
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      else
      {
        sub_298B9BCEC(a3, "warning: ", 9uLL);
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_108;
    }

LABEL_87:
    if ((a4 & 1) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_110;
  }

  if (v29 != 2)
  {
    if (v29 == 3)
    {
      if (a4 && off_2A1A99568(a3))
      {
        (*(*a3 + 24))(a3, 0, 1, 0);
      }

      v31 = a3[4];
      if (a3[3] - v31 > 5uLL)
      {
        qmemcpy(v31, "note: ", 6);
        a3[4] += 6;
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      else
      {
        sub_298B9BCEC(a3, "note: ", 6uLL);
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_108;
    }

    goto LABEL_87;
  }

  if (a4 && off_2A1A99568(a3))
  {
    (*(*a3 + 24))(a3, 4, 1, 0);
  }

  v33 = a3[4];
  if (a3[3] - v33 > 7uLL)
  {
    *v33 = 0x203A6B72616D6572;
    a3[4] += 8;
    if (!a4)
    {
      goto LABEL_112;
    }
  }

  else
  {
    sub_298B9BCEC(a3, "remark: ", 8uLL);
    if (!a4)
    {
      goto LABEL_112;
    }
  }

LABEL_108:
  if (off_2A1A99568(a3))
  {
    (*(*a3 + 32))(a3);
  }

LABEL_110:
  if (off_2A1A99568(a3))
  {
    (*(*a3 + 24))(a3, 16, 1, 0);
  }

LABEL_112:
  v34 = *(a1 + 79);
  if (v34 >= 0)
  {
    v35 = (a1 + 56);
  }

  else
  {
    v35 = *(a1 + 56);
  }

  if (v34 >= 0)
  {
    v36 = *(a1 + 79);
  }

  else
  {
    v36 = *(a1 + 64);
  }

  sub_298B9BCEC(a3, v35, v36);
  v37 = a3[4];
  if (v37 >= a3[3])
  {
    while (1)
    {
      v38 = a3[2];
      if (v38)
      {
        a3[4] = v38;
        sub_298B9BB84(a3);
        v39 = a3[4];
        a3[4] = v39 + 1;
        *v39 = 10;
        if (!a4)
        {
          goto LABEL_127;
        }

        goto LABEL_125;
      }

      if (!*(a3 + 14))
      {
        break;
      }

      sub_298B9AE98(a3);
      v37 = a3[4];
      if (v37 < a3[3])
      {
        goto LABEL_119;
      }
    }

    LOBYTE(v131[0]) = 10;
    sub_298B9BB84(a3);
    if (a4)
    {
      goto LABEL_125;
    }
  }

  else
  {
LABEL_119:
    a3[4] = v37 + 1;
    *v37 = 10;
    if (a4)
    {
LABEL_125:
      if (off_2A1A99568(a3))
      {
        (*(*a3 + 32))(a3);
      }
    }
  }

LABEL_127:
  if (*(a1 + 40) == -1 || *(a1 + 44) == -1)
  {
    return;
  }

  v40 = *(a1 + 103);
  if (v40 >= 0)
  {
    v41 = a1 + 80;
  }

  else
  {
    v41 = *(a1 + 80);
  }

  v128 = (a1 + 80);
  v42 = *(a1 + 88);
  if (v40 >= 0)
  {
    v43 = *(a1 + 103);
  }

  else
  {
    v43 = *(a1 + 88);
  }

  if (v43)
  {
    for (i = 0; i != v43; ++i)
    {
      if (*(v41 + i) < 0)
      {
        sub_298B93178(a3, v41, v43);
        return;
      }
    }

    v45 = v43 + 1;
    if (v43 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v45 >= 0x17)
    {
      operator new();
    }

    *(&__b.__r_.__value_.__s + 23) = v43 + 1;
    if (v43 == -1)
    {
      v46 = a4;
      goto LABEL_147;
    }
  }

  else
  {
    v45 = 1;
    *(&__b.__r_.__value_.__s + 23) = 1;
  }

  v46 = a4;
  memset(&__b, 32, v45);
LABEL_147:
  __b.__r_.__value_.__s.__data_[v45] = 0;
  v47 = *(a1 + 104);
  for (j = *(a1 + 112); v47 != j; v47 += 2)
  {
    size = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v50 = *v47;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __b.__r_.__value_.__l.__size_;
    }

    if (size >= v47[1])
    {
      size = v47[1];
    }

    if ((size - v50) >= 1)
    {
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__r_.__value_.__r.__words[0];
      }

      memset(p_b + v50, 126, size - v50);
    }
  }

  memset(&v129, 0, sizeof(v129));
  v52 = *(a1 + 136);
  v53 = *(a1 + 103);
  if (v53 < 0)
  {
    v53 = *(a1 + 88);
  }

  v54 = v46;
  v55 = *(a1 + 44);
  if (v52)
  {
    v124 = v43;
    v125 = v46;
    v56 = 0;
    v57 = *(a1 + 128);
    v58 = *(a1 + 8) - v55;
    v59 = v58 + v53;
    v60 = &v57[5 * v52];
    v126 = v60;
    do
    {
      v61 = v57[2];
      v62 = *(v57 + 39);
      v63 = v62;
      v64 = v57[3];
      memset(&v131[1], 0, 24);
      v131[0] = 9728;
      if ((v62 & 0x80u) == 0)
      {
        v65 = (v57 + 2);
      }

      else
      {
        v65 = v61;
      }

      if ((v62 & 0x80u) == 0)
      {
        v66 = v62;
      }

      else
      {
        v66 = v64;
      }

      if (!v66)
      {
        goto LABEL_177;
      }

      v67 = 0;
      while (((*(v131 + ((*(v65 + v67) >> 3) & 0x18)) >> *(v65 + v67)) & 1) == 0)
      {
        if (v66 == ++v67)
        {
          goto LABEL_177;
        }
      }

      if (v67 == -1)
      {
LABEL_177:
        v68 = *v57;
        v69 = v57[1];
        if (v59 >= *v57 && v69 >= v58)
        {
          if (v68 >= v58)
          {
            v71 = (v68 - v58);
          }

          else
          {
            v71 = 0;
          }

          if (v56 > v71)
          {
            v72 = (v56 + 1);
          }

          else
          {
            v72 = v71;
          }

          v56 = (v72 + v66);
          v73 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
          if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v73 = v129.__r_.__value_.__l.__size_;
          }

          if (v73 < v56)
          {
            std::string::resize(&v129, v56, 32);
            v62 = *(v57 + 39);
            v64 = v57[3];
            v63 = *(v57 + 39);
          }

          if (v63 >= 0)
          {
            v74 = v62;
          }

          else
          {
            v74 = v64;
          }

          if (v74)
          {
            v75 = &v129;
            if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v75 = v129.__r_.__value_.__r.__words[0];
            }

            if (v63 >= 0)
            {
              v76 = v57 + 2;
            }

            else
            {
              v76 = v57[2];
            }

            memmove(v75 + v72, v76, v74);
          }

          if (v59 <= v69)
          {
            v77 = v59;
          }

          else
          {
            v77 = v69;
          }

          v78 = (v77 - v58) - v71;
          if (v78 >= 1)
          {
            v79 = &__b;
            if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v79 = __b.__r_.__value_.__r.__words[0];
            }

            memset(v79 + v71, 126, v78);
          }

          v60 = v126;
          a1 = v127;
        }
      }

      v57 += 5;
    }

    while (v57 != v60);
    LODWORD(v55) = *(a1 + 44);
    v54 = v125;
    v43 = v124;
  }

  if (v43 >= v55)
  {
    v82 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v82 = __b.__r_.__value_.__r.__words[0];
    }

    v81 = v82 + v55;
  }

  else
  {
    v80 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v80 = __b.__r_.__value_.__r.__words[0];
    }

    v81 = v80 + v43;
  }

  *v81 = 94;
  v83 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  v84 = &__b;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v83 = __b.__r_.__value_.__l.__size_;
    v84 = __b.__r_.__value_.__r.__words[0];
  }

  v85 = &v84[-1].__r_.__value_.__r.__words[2] + 7;
  while (v83)
  {
    v86 = v85[v83--];
    if (v86 != 32)
    {
      v87 = v83 + 1;
      goto LABEL_224;
    }
  }

  v87 = 0;
LABEL_224:
  std::string::erase(&__b, v87, 0xFFFFFFFFFFFFFFFFLL);
  v88 = *(a1 + 103);
  if (v88 >= 0)
  {
    v89 = v128;
  }

  else
  {
    v89 = *(a1 + 80);
  }

  if (v88 >= 0)
  {
    v90 = *(a1 + 103);
  }

  else
  {
    v90 = *(a1 + 88);
  }

  sub_298B93178(a3, v89, v90);
  if (v54 && off_2A1A99568(a3))
  {
    (*(*a3 + 24))(a3, 2, 1, 0);
  }

  v91 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v91 = __b.__r_.__value_.__r.__words[1];
  }

  v92 = v91;
  if (v91)
  {
    v93 = 0;
    v94 = 0;
    do
    {
      v97 = *(a1 + 103);
      if ((v97 & 0x8000000000000000) != 0)
      {
        if (*(a1 + 88) <= v93)
        {
          goto LABEL_253;
        }
      }

      else if (v97 <= v93)
      {
        goto LABEL_253;
      }

      if ((v97 & 0x80000000) != 0)
      {
        if (*(*v128 + v93) == 9)
        {
          goto LABEL_259;
        }
      }

      else if (*(v128 + v93) == 9)
      {
        do
        {
LABEL_259:
          while (1)
          {
            v101 = (__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__b : __b.__r_.__value_.__r.__words[0];
            v102 = v101->__r_.__value_.__s.__data_[v93];
            v100 = a3[4];
            if (v100 >= a3[3])
            {
              break;
            }

LABEL_258:
            a3[4] = v100 + 1;
            *v100 = v102;
            if ((++v94 & 7) == 0)
            {
              goto LABEL_244;
            }
          }

          while (1)
          {
            v103 = a3[2];
            if (v103)
            {
              a3[4] = v103;
              sub_298B9BB84(a3);
              v100 = a3[4];
              goto LABEL_258;
            }

            if (!*(a3 + 14))
            {
              break;
            }

            sub_298B9AE98(a3);
            v100 = a3[4];
            if (v100 < a3[3])
            {
              goto LABEL_258;
            }
          }

          LOBYTE(v131[0]) = v102;
          sub_298B9BB84(a3);
          ++v94;
        }

        while ((v94 & 7) != 0);
        goto LABEL_244;
      }

LABEL_253:
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = &__b;
      }

      else
      {
        v98 = __b.__r_.__value_.__r.__words[0];
      }

      v99 = v98->__r_.__value_.__s.__data_[v93];
      while (1)
      {
        v95 = a3[4];
        if (v95 < a3[3])
        {
          goto LABEL_242;
        }

        v96 = a3[2];
        if (v96)
        {
          a3[4] = v96;
          sub_298B9BB84(a3);
          v95 = a3[4];
LABEL_242:
          a3[4] = v95 + 1;
          *v95 = v99;
          goto LABEL_243;
        }

        if (!*(a3 + 14))
        {
          break;
        }

        sub_298B9AE98(a3);
      }

      LOBYTE(v131[0]) = v99;
      sub_298B9BB84(a3);
LABEL_243:
      ++v94;
LABEL_244:
      ++v93;
    }

    while (v93 != v92);
  }

  v104 = a3[4];
  if (v104 >= a3[3])
  {
    v105 = a3[2];
    if (!v105)
    {
      a1 = v127;
      while (*(a3 + 14))
      {
        sub_298B9AE98(a3);
        v121 = a3[4];
        if (v121 < a3[3])
        {
          a1 = v127;
          a3[4] = v121 + 1;
          *v121 = 10;
          if (v54)
          {
            goto LABEL_274;
          }

          goto LABEL_276;
        }

        v105 = a3[2];
        if (v105)
        {
          goto LABEL_272;
        }
      }

      LOBYTE(v131[0]) = 10;
      sub_298B9BB84(a3);
      a1 = v127;
      if (v54)
      {
        goto LABEL_274;
      }

      goto LABEL_276;
    }

LABEL_272:
    a3[4] = v105;
    sub_298B9BB84(a3);
    v104 = a3[4];
  }

  a3[4] = v104 + 1;
  *v104 = 10;
  if (v54)
  {
LABEL_274:
    if (off_2A1A99568(a3))
    {
      (*(*a3 + 32))(a3);
    }
  }

LABEL_276:
  v106 = SHIBYTE(v129.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v106 = v129.__r_.__value_.__l.__size_;
    if (!v129.__r_.__value_.__l.__size_)
    {
      goto LABEL_335;
    }
  }

  else if (!*(&v129.__r_.__value_.__s + 23))
  {
    goto LABEL_336;
  }

  v107 = 0;
  v108 = 0;
  do
  {
    v111 = *(a1 + 103);
    if ((v111 & 0x8000000000000000) != 0)
    {
      if (v108 >= *(a1 + 88))
      {
LABEL_295:
        v112 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
        v113 = v129.__r_.__value_.__r.__words[0];
LABEL_296:
        if (v112 >= 0)
        {
          v114 = &v129;
        }

        else
        {
          v114 = v113;
        }

        v115 = v114->__r_.__value_.__s.__data_[v108];
        while (1)
        {
          v109 = a3[4];
          if (v109 < a3[3])
          {
            goto LABEL_286;
          }

          v110 = a3[2];
          if (v110)
          {
            a3[4] = v110;
            sub_298B9BB84(a3);
            v109 = a3[4];
LABEL_286:
            a3[4] = v109 + 1;
            *v109 = v115;
            goto LABEL_287;
          }

          if (!*(a3 + 14))
          {
            break;
          }

          sub_298B9AE98(a3);
        }

        LOBYTE(v131[0]) = v115;
        sub_298B9BB84(a3);
LABEL_287:
        ++v107;
        goto LABEL_288;
      }
    }

    else if (v108 >= v111)
    {
      goto LABEL_295;
    }

    if ((v111 & 0x80000000) != 0)
    {
      v112 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
      v113 = v129.__r_.__value_.__r.__words[0];
      if (*(*v128 + v108) != 9)
      {
        goto LABEL_296;
      }
    }

    else
    {
      v112 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
      v113 = v129.__r_.__value_.__r.__words[0];
      if (*(v128 + v108) != 9)
      {
        goto LABEL_296;
      }
    }

    do
    {
      if (v112 >= 0)
      {
        v116 = &v129;
      }

      else
      {
        v116 = v113;
      }

      v117 = v116->__r_.__value_.__s.__data_[v108];
      v118 = a3[4];
      if (v118 < a3[3])
      {
LABEL_310:
        a3[4] = v118 + 1;
        *v118 = v117;
      }

      else
      {
        while (1)
        {
          v119 = a3[2];
          if (v119)
          {
            a3[4] = v119;
            sub_298B9BB84(a3);
            v118 = a3[4];
            goto LABEL_310;
          }

          if (!*(a3 + 14))
          {
            break;
          }

          sub_298B9AE98(a3);
          v118 = a3[4];
          if (v118 < a3[3])
          {
            goto LABEL_310;
          }
        }

        LOBYTE(v131[0]) = v117;
        sub_298B9BB84(a3);
      }

      v112 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
      v113 = v129.__r_.__value_.__r.__words[0];
      if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v120 = &v129;
      }

      else
      {
        v120 = v129.__r_.__value_.__r.__words[0];
      }

      if (v120->__r_.__value_.__s.__data_[v108] != 32)
      {
        ++v108;
      }

      ++v107;
    }

    while ((v107 & 7) != 0 && v108 != v106);
LABEL_288:
    ++v108;
  }

  while (v108 < v106);
  while (1)
  {
    v122 = a3[4];
    if (v122 < a3[3])
    {
      break;
    }

    v123 = a3[2];
    if (v123)
    {
      a3[4] = v123;
      sub_298B9BB84(a3);
      v122 = a3[4];
      break;
    }

    if (!*(a3 + 14))
    {
      LOBYTE(v131[0]) = 10;
      sub_298B9BB84(a3);
      goto LABEL_335;
    }

    sub_298B9AE98(a3);
  }

  a3[4] = v122 + 1;
  *v122 = 10;
LABEL_335:
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_337:
      operator delete(__b.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_336:
    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_337;
    }
  }
}

void sub_298B92F74(uint64_t *a1, void *a2, unint64_t a3, int a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v35[20] = *MEMORY[0x29EDCA608];
  sub_298B9178C(a1, a3, a4, a5, a6, a7, a9, a10, v23);
  v13 = a1[6];
  if (v13)
  {
    v13(v23, a1[7]);
    v14 = v33;
    v15 = v34;
    if (!v34)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v24)
  {
    v16 = -1431655765 * ((a1[1] - *a1) >> 3);
    if (v16)
    {
      v17 = 0;
      v18 = *a1;
      while (*(*v18 + 8) > v24 || *(*v18 + 16) < v24)
      {
        ++v17;
        v18 += 24;
        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v17 = 0xFFFFFFFFLL;
    }

    sub_298B91554(a1, *(*a1 + 24 * v17 + 16), a2);
  }

  sub_298B91DD4(v23, 0, a2, a11, 1);
  v14 = v33;
  v15 = v34;
  if (v34)
  {
LABEL_14:
    v19 = &v14[5 * v15 - 3];
    v20 = -40 * v15;
    do
    {
      if (*(v19 + 23) < 0)
      {
        operator delete(*v19);
      }

      v19 -= 40;
      v20 += 40;
    }

    while (v20);
    v14 = v33;
  }

LABEL_19:
  if (v14 != v35)
  {
    free(v14);
  }

  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if ((v30 & 0x80000000) == 0)
  {
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    operator delete(v27);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  operator delete(v29);
  if (v28 < 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  if ((v26 & 0x80000000) == 0)
  {
LABEL_26:
    v21 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_29:
  operator delete(v25);
  v22 = *MEMORY[0x29EDCA608];
}

void *sub_298B93178(void *result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (!a3)
  {
    goto LABEL_38;
  }

  v6 = 0;
  v7 = 0;
LABEL_4:
  v8 = v6;
  if (a3 > v6)
  {
    v9 = memchr((a2 + v6), 9, a3 - v6);
    v10 = &v9[-a2];
    if (v9 && v10 + 1 != 0)
    {
      if (v10 <= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = &v9[-a2];
      }

      if (v12 >= a3)
      {
        v12 = a3;
      }

      v13 = &v12[-v8];
      result = *(v4 + 32);
      if (&v12[-v8] <= *(v4 + 24) - result)
      {
        if (v12 != v8)
        {
          v14 = &v12[-v8];
          result = memcpy(result, (a2 + v8), v13);
          *(v4 + 32) += v14;
        }
      }

      else
      {
        result = sub_298B9BCEC(v4, (a2 + v8), v13);
      }

      v7 = v7 - v8 + v10;
      while (1)
      {
        while (1)
        {
          v15 = *(v4 + 32);
          if (v15 >= *(v4 + 24))
          {
            break;
          }

LABEL_22:
          *(v4 + 32) = v15 + 1;
          *v15 = 32;
          if ((++v7 & 7) == 0)
          {
            goto LABEL_3;
          }
        }

        v16 = *(v4 + 16);
        if (v16)
        {
          *(v4 + 32) = v16;
          result = sub_298B9BB84(v4);
          v15 = *(v4 + 32);
          goto LABEL_22;
        }

        if (*(v4 + 56))
        {
          result = sub_298B9AE98(v4);
        }

        else
        {
          result = sub_298B9BB84(v4);
          if ((++v7 & 7) == 0)
          {
LABEL_3:
            v6 = v10 + 1;
            if (v10 + 1 == a3)
            {
              goto LABEL_38;
            }

            goto LABEL_4;
          }
        }
      }
    }
  }

  if (a3 >= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = a3;
  }

  v18 = a3 - v17;
  result = *(v4 + 32);
  if (a3 - v17 <= *(v4 + 24) - result)
  {
    if (a3 > v8)
    {
      v19 = (a2 + v17);
      v20 = a3 - v17;
      result = memcpy(result, v19, v18);
      *(v4 + 32) += v20;
    }
  }

  else
  {
    result = sub_298B9BCEC(v4, (a2 + v17), v18);
  }

  while (1)
  {
LABEL_38:
    v22 = *(v4 + 32);
    if (v22 < *(v4 + 24))
    {
      goto LABEL_41;
    }

    v21 = *(v4 + 16);
    if (v21)
    {
      *(v4 + 32) = v21;
      result = sub_298B9BB84(v4);
      v22 = *(v4 + 32);
LABEL_41:
      *(v4 + 32) = v22 + 1;
      *v22 = 10;
      return result;
    }

    if (!*(v4 + 56))
    {
      return sub_298B9BB84(v4);
    }

    result = sub_298B9AE98(v4);
  }
}

void sub_298B93398(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298B933EC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_298B933EC(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 2);
      if (v4)
      {
        v5 = *v4;
        if (*v4)
        {
          *(v4 + 8) = v5;
          operator delete(v5);
        }

        MEMORY[0x29C2945F0](v4, 0x10C402FEFCB83);
        *(v3 - 2) = 0;
      }

      v6 = *(v3 - 3);
      v3 -= 3;
      result = v6;
      *v3 = 0;
      if (v6)
      {
        result = (*(*result + 8))(result);
      }
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

void sub_298B934A4(uint64_t a1, unint64_t a2, char *a3, char a4)
{
  v441 = *MEMORY[0x29EDCA608];
LABEL_2:
  v7 = (a2 - 40);
  v411 = a2 - 120;
  v413 = a2 - 80;
  v409 = (a2 - 24);
  j = a1;
  v422 = a2;
  v415 = (a2 - 40);
  while (1)
  {
    a1 = j;
    v9 = a2 - j;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - j) >> 3);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v178 = *MEMORY[0x29EDCA608];

          sub_298B94EDC(a1, (a1 + 40), v7);
          return;
        case 4:
          v179 = *MEMORY[0x29EDCA608];

          sub_298B95484(a1, (a1 + 40), a1 + 80, v7);
          return;
        case 5:
          v168 = *MEMORY[0x29EDCA608];

          sub_298B957D0(a1, a1 + 40, a1 + 80, a1 + 120, v7);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        goto LABEL_676;
      }

      if (v10 == 2)
      {
        v170 = (a2 - 40);
        v169 = *(a2 - 40);
        v171 = v169 >= *a1;
        if (v169 == *a1 && (v172 = *(a2 - 32), v173 = *(a1 + 8), v171 = v172 >= v173, v172 == v173))
        {
          v398 = *(a1 + 39);
          v399 = *(a2 - 1);
          if (v399 >= 0)
          {
            v400 = *(a2 - 1);
          }

          else
          {
            v400 = *(a2 - 16);
          }

          if (v399 >= 0)
          {
            v401 = (a2 - 24);
          }

          else
          {
            v401 = *(a2 - 24);
          }

          if (v398 >= 0)
          {
            v402 = *(a1 + 39);
          }

          else
          {
            v402 = *(a1 + 24);
          }

          if (v398 >= 0)
          {
            v403 = (a1 + 16);
          }

          else
          {
            v403 = *(a1 + 16);
          }

          if (v402 >= v400)
          {
            v404 = v400;
          }

          else
          {
            v404 = v402;
          }

          v405 = memcmp(v401, v403, v404);
          v406 = v400 < v402;
          if (v405)
          {
            v406 = v405 < 0;
          }

          if (v406)
          {
LABEL_316:
            v432 = *a1;
            v174 = *(a1 + 16);
            *&v440 = *(a1 + 24);
            *(&v440 + 7) = *(a1 + 31);
            v175 = *(a1 + 39);
            *(a1 + 24) = 0;
            *(a1 + 32) = 0;
            *(a1 + 16) = 0;
            *a1 = *v170;
            v176 = *(a2 - 24);
            *(a1 + 32) = *(a2 - 8);
            *(a1 + 16) = v176;
            *v170 = v432;
            *(a2 - 24) = v174;
            v177 = v440;
            *(a2 - 9) = *(&v440 + 7);
            *(a2 - 16) = v177;
            *(a2 - 1) = v175;
          }
        }

        else if (!v171)
        {
          goto LABEL_316;
        }

        goto LABEL_676;
      }
    }

    if (v9 <= 959)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        goto LABEL_676;
      }

      v183 = (v10 - 2) >> 1;
      v184 = v183;
      while (2)
      {
        v187 = v184;
        if (v183 < v184)
        {
          goto LABEL_331;
        }

        v188 = (2 * v184) | 1;
        v185 = a1 + 40 * v188;
        v189 = 2 * v184 + 2;
        if (v189 < v10)
        {
          v190 = *(v185 + 40);
          v191 = *v185 >= v190;
          if (*v185 == v190 && (v192 = *(v185 + 8), v193 = *(v185 + 48), v191 = v192 >= v193, v192 == v193))
          {
            v239 = *(v185 + 79);
            v240 = *(v185 + 39);
            if (v240 >= 0)
            {
              v241 = (v185 + 16);
            }

            else
            {
              v241 = *(v185 + 16);
            }

            v425 = v187;
            if (v240 >= 0)
            {
              v242 = *(v185 + 39);
            }

            else
            {
              v242 = *(v185 + 24);
            }

            if (v239 >= 0)
            {
              v243 = *(v185 + 79);
            }

            else
            {
              v243 = *(v185 + 64);
            }

            if (v239 >= 0)
            {
              v244 = (v185 + 56);
            }

            else
            {
              v244 = *(v185 + 56);
            }

            if (v243 >= v242)
            {
              v245 = v242;
            }

            else
            {
              v245 = v243;
            }

            v246 = memcmp(v241, v244, v245);
            v183 = (v10 - 2) >> 1;
            v187 = v425;
            v247 = v242 < v243;
            if (v246)
            {
              v247 = v246 < 0;
            }

            if (v247)
            {
LABEL_337:
              v185 += 40;
              v188 = v189;
            }
          }

          else if (!v191)
          {
            goto LABEL_337;
          }
        }

        v194 = a1 + 40 * v187;
        v195 = *v185 >= *v194;
        if (*v185 == *v194 && (v196 = *(v185 + 8), v197 = *(v194 + 8), v195 = v196 >= v197, v196 == v197))
        {
          v229 = *(v194 + 39);
          v230 = *(v185 + 39);
          if (v230 >= 0)
          {
            v231 = *(v185 + 39);
          }

          else
          {
            v231 = *(v185 + 24);
          }

          if (v230 >= 0)
          {
            v232 = (v185 + 16);
          }

          else
          {
            v232 = *(v185 + 16);
          }

          v233 = v187;
          if (v229 >= 0)
          {
            v234 = *(v194 + 39);
          }

          else
          {
            v234 = *(v194 + 24);
          }

          if (v229 >= 0)
          {
            v235 = (v194 + 16);
          }

          else
          {
            v235 = *(v194 + 16);
          }

          if (v234 >= v231)
          {
            v236 = v231;
          }

          else
          {
            v236 = v234;
          }

          v237 = memcmp(v232, v235, v236);
          v183 = (v10 - 2) >> 1;
          v187 = v233;
          v238 = v231 < v234;
          if (v237)
          {
            v238 = v237 < 0;
          }

          if (v238)
          {
            goto LABEL_331;
          }
        }

        else if (!v195)
        {
          goto LABEL_331;
        }

        v424 = v187;
        v433 = *v194;
        v198 = *(v194 + 16);
        v438 = *(v194 + 32);
        v437 = v198;
        *(v194 + 24) = 0;
        *(v194 + 32) = 0;
        *(v194 + 16) = 0;
        v200 = *(&v433 + 1);
        v199 = v433;
        *v194 = *v185;
        v201 = v185 + 16;
        v202 = *(v185 + 16);
        *(v194 + 32) = *(v185 + 32);
        *(v194 + 16) = v202;
        *(v185 + 39) = 0;
        *(v185 + 16) = 0;
        if (v183 >= v188)
        {
          if (v438 >= 0)
          {
            v203 = HIBYTE(v438);
          }

          else
          {
            v203 = *(&v437 + 1);
          }

          if (v438 >= 0)
          {
            v204 = &v437;
          }

          else
          {
            v204 = v437;
          }

          v410 = v204;
          v412 = v203;
          while (1)
          {
            v207 = v185;
            v208 = 2 * v188;
            v188 = (2 * v188) | 1;
            v185 = a1 + 40 * v188;
            v209 = v208 + 2;
            if (v208 + 2 >= v10)
            {
              goto LABEL_351;
            }

            v210 = *(v185 + 40);
            v211 = *v185 >= v210;
            if (*v185 != v210)
            {
              break;
            }

            v212 = *(v185 + 8);
            v213 = *(v185 + 48);
            v211 = v212 >= v213;
            if (v212 != v213)
            {
              break;
            }

            v221 = *(v185 + 79);
            v222 = *(v185 + 39);
            if ((v222 & 0x80u) == 0)
            {
              v223 = (v185 + 16);
            }

            else
            {
              v223 = *(v185 + 16);
            }

            if ((v222 & 0x80u) != 0)
            {
              v222 = *(v185 + 24);
            }

            if (v221 >= 0)
            {
              v224 = *(v185 + 79);
            }

            else
            {
              v224 = *(v185 + 64);
            }

            if (v221 >= 0)
            {
              v225 = (v185 + 56);
            }

            else
            {
              v225 = *(v185 + 56);
            }

            v408 = v222;
            if (v224 >= v222)
            {
              v226 = v222;
            }

            else
            {
              v226 = v224;
            }

            v227 = memcmp(v223, v225, v226);
            v200 = *(&v433 + 1);
            v199 = v433;
            v183 = (v10 - 2) >> 1;
            v26 = v408 >= v224;
            a2 = v422;
            v228 = !v26;
            if (v227)
            {
              v228 = v227 < 0;
            }

            if (v228)
            {
              goto LABEL_350;
            }

LABEL_351:
            v205 = *v185 >= v199;
            if (*v185 == v199 && (v214 = *(v185 + 8), v205 = v214 >= v200, v214 == v200))
            {
              v215 = *(v185 + 39);
              if (v215 >= 0)
              {
                v216 = *(v185 + 39);
              }

              else
              {
                v216 = *(v185 + 24);
              }

              if (v215 >= 0)
              {
                v217 = (v185 + 16);
              }

              else
              {
                v217 = *(v185 + 16);
              }

              if (v412 >= v216)
              {
                v218 = v216;
              }

              else
              {
                v218 = v412;
              }

              v219 = memcmp(v217, v410, v218);
              v200 = *(&v433 + 1);
              v199 = v433;
              v183 = (v10 - 2) >> 1;
              v220 = v216 < v412;
              if (v219)
              {
                v220 = v219 < 0;
              }

              if (v220)
              {
LABEL_329:
                v185 = v207;
                goto LABEL_330;
              }
            }

            else if (!v205)
            {
              goto LABEL_329;
            }

            *v207 = *v185;
            v201 = v185 + 16;
            v206 = *(v185 + 16);
            *(v207 + 32) = *(v185 + 32);
            *(v207 + 16) = v206;
            *(v185 + 39) = 0;
            *(v185 + 16) = 0;
            if (v183 < v188)
            {
              goto LABEL_330;
            }
          }

          if (v211)
          {
            goto LABEL_351;
          }

LABEL_350:
          v185 += 40;
          v188 = v209;
          goto LABEL_351;
        }

LABEL_330:
        *v185 = v433;
        v186 = v437;
        *(v201 + 16) = v438;
        *v201 = v186;
        v187 = v424;
LABEL_331:
        v184 = v187 - 1;
        if (v187)
        {
          continue;
        }

        break;
      }

      v248 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
      while (2)
      {
        v251 = 0;
        v440 = *a1;
        v417 = *(a1 + 16);
        __s2a = a2;
        v439[0] = *(a1 + 24);
        *(v439 + 7) = *(a1 + 31);
        v426 = *(a1 + 39);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        v252 = a1;
        *(a1 + 16) = 0;
LABEL_440:
        v254 = v252;
        v255 = &v252[5 * v251];
        v252 = v255 + 5;
        v256 = 2 * v251;
        v251 = (2 * v251) | 1;
        v257 = v256 + 2;
        if (v256 + 2 < v248)
        {
          v259 = v255 + 10;
          v258 = v255[10];
          v260 = v255[5];
          v261 = v260 >= v258;
          if (v260 == v258 && (v262 = v255[6], v263 = v255[11], v261 = v262 >= v263, v262 == v263))
          {
            v266 = v255[7];
            v264 = v255 + 7;
            v265 = v266;
            v267 = *(v264 + 63);
            v268 = *(v264 + 23);
            if (v268 >= 0)
            {
              v269 = *(v264 + 23);
            }

            else
            {
              v269 = v264[1];
            }

            if (v268 >= 0)
            {
              v270 = v264;
            }

            else
            {
              v270 = v265;
            }

            if (v267 >= 0)
            {
              v271 = *(v264 + 63);
            }

            else
            {
              v271 = v264[6];
            }

            if (v267 >= 0)
            {
              v272 = v264 + 5;
            }

            else
            {
              v272 = v264[5];
            }

            if (v271 >= v269)
            {
              v273 = v269;
            }

            else
            {
              v273 = v271;
            }

            v274 = memcmp(v270, v272, v273);
            v275 = v269 < v271;
            if (v274)
            {
              v275 = v274 < 0;
            }

            if (v275)
            {
LABEL_438:
              v252 = v259;
              v251 = v257;
            }
          }

          else if (!v261)
          {
            goto LABEL_438;
          }
        }

        *v254 = *v252;
        v253 = *(v252 + 1);
        v254[4] = v252[4];
        *(v254 + 1) = v253;
        *(v252 + 39) = 0;
        *(v252 + 16) = 0;
        if (v251 > (v248 - 2) / 2)
        {
          v276 = __s2a - 5;
          v423 = (__s2a - 5);
          if (v252 == __s2a - 5)
          {
            *v252 = v440;
            v249 = v439[0];
            v252[2] = v417;
            v252[3] = v249;
            *(v252 + 31) = *(v439 + 7);
            *(v252 + 39) = v426;
          }

          else
          {
            v277 = (v252 + 2);
            *v252 = *v276;
            v278 = *(__s2a - 3);
            v252[4] = *(__s2a - 1);
            *(v252 + 1) = v278;
            *v276 = v440;
            *(__s2a - 3) = v417;
            v279 = v439[0];
            *(__s2a - 9) = *(v439 + 7);
            *(__s2a - 2) = v279;
            *(__s2a - 1) = v426;
            v280 = v252 - a1 + 40;
            if (v280 >= 41)
            {
              v281 = -2 - 0x3333333333333333 * (v280 >> 3);
              v282 = v281 >> 1;
              v283 = a1 + 40 * (v281 >> 1);
              v284 = *v283 >= *v252;
              if (*v283 == *v252 && (v285 = *(v283 + 8), v286 = v252[1], v284 = v285 >= v286, v285 == v286))
              {
                v305 = *(v252 + 39);
                v306 = *(v283 + 39);
                if (v306 >= 0)
                {
                  v307 = *(v283 + 39);
                }

                else
                {
                  v307 = *(v283 + 24);
                }

                if (v306 >= 0)
                {
                  v308 = (v283 + 16);
                }

                else
                {
                  v308 = *(v283 + 16);
                }

                if (v305 >= 0)
                {
                  v309 = *(v252 + 39);
                }

                else
                {
                  v309 = v252[3];
                }

                if (v305 >= 0)
                {
                  v310 = v252 + 2;
                }

                else
                {
                  v310 = v252[2];
                }

                if (v309 >= v307)
                {
                  v311 = v307;
                }

                else
                {
                  v311 = v309;
                }

                v312 = memcmp(v308, v310, v311);
                v313 = v307 < v309;
                if (v312)
                {
                  v313 = v312 < 0;
                }

                if (v313)
                {
LABEL_470:
                  v434 = *v252;
                  v287 = v252[4];
                  v437 = *v277;
                  v438 = v287;
                  v252[3] = 0;
                  v252[4] = 0;
                  *v277 = 0;
                  v288 = *(&v434 + 1);
                  v289 = HIBYTE(v438);
                  if (v438 < 0)
                  {
                    v289 = *(&v437 + 1);
                  }

                  v427 = v289;
                  if (v438 >= 0)
                  {
                    v290 = &v437;
                  }

                  else
                  {
                    v290 = v437;
                  }

                  __s2b = v290;
                  *v252 = *v283;
                  v291 = v283 + 16;
                  v292 = *(v283 + 16);
                  v252[4] = *(v283 + 32);
                  *v277 = v292;
                  *(v283 + 39) = 0;
                  *(v283 + 16) = 0;
                  if (v281 >= 2)
                  {
                    do
                    {
                      v294 = v283;
                      v295 = v282 - 1;
                      v282 = (v282 - 1) >> 1;
                      v283 = a1 + 40 * v282;
                      v296 = *v283 >= v434;
                      if (*v283 == v434 && (v297 = *(v283 + 8), v296 = v297 >= v288, v297 == v288))
                      {
                        v298 = *(v283 + 39);
                        if (v298 >= 0)
                        {
                          v299 = *(v283 + 39);
                        }

                        else
                        {
                          v299 = *(v283 + 24);
                        }

                        if (v298 >= 0)
                        {
                          v300 = (v283 + 16);
                        }

                        else
                        {
                          v300 = *(v283 + 16);
                        }

                        if (v427 >= v299)
                        {
                          v301 = v299;
                        }

                        else
                        {
                          v301 = v427;
                        }

                        v302 = memcmp(v300, __s2b, v301);
                        v288 = *(&v434 + 1);
                        v303 = v299 < v427;
                        if (v302)
                        {
                          v303 = v302 < 0;
                        }

                        if (!v303)
                        {
LABEL_493:
                          v283 = v294;
                          break;
                        }
                      }

                      else if (v296)
                      {
                        goto LABEL_493;
                      }

                      *v294 = *v283;
                      v291 = v283 + 16;
                      v293 = *(v283 + 16);
                      *(v294 + 32) = *(v283 + 32);
                      *(v294 + 16) = v293;
                      *(v283 + 39) = 0;
                      *(v283 + 16) = 0;
                    }

                    while (v295 > 1);
                  }

                  *v283 = v434;
                  v304 = v437;
                  *(v291 + 16) = v438;
                  *v291 = v304;
                }
              }

              else if (!v284)
              {
                goto LABEL_470;
              }
            }
          }

          v250 = v248-- <= 2;
          a2 = v423;
          if (v250)
          {
            goto LABEL_676;
          }

          continue;
        }

        goto LABEL_440;
      }
    }

    v11 = v10 >> 1;
    v12 = a1 + 40 * (v10 >> 1);
    if (v9 < 0x1401)
    {
      sub_298B94EDC(v12, a1, v7);
      __s2 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_18:
      v20 = 0;
      v430 = *a1;
      v21 = *(a1 + 32);
      v22 = *a1;
      v437 = *(a1 + 16);
      v438 = v21;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      if (v438 >= 0)
      {
        v23 = HIBYTE(v438);
      }

      else
      {
        v23 = *(&v437 + 1);
      }

      if (v438 >= 0)
      {
        v24 = &v437;
      }

      else
      {
        v24 = v437;
      }

      while (1)
      {
        v25 = *(a1 + v20 + 40);
        v26 = v25 >= v22;
        if (v25 == v22)
        {
          v27 = *(a1 + v20 + 48);
          v26 = v27 >= *(&v430 + 1);
          if (v27 == *(&v430 + 1))
          {
            break;
          }
        }

        if (v26)
        {
          goto LABEL_40;
        }

LABEL_25:
        v20 += 40;
      }

      v28 = *(a1 + v20 + 79);
      if (v28 >= 0)
      {
        v29 = *(a1 + v20 + 79);
      }

      else
      {
        v29 = *(a1 + v20 + 64);
      }

      if (v28 >= 0)
      {
        v30 = (a1 + v20 + 56);
      }

      else
      {
        v30 = *(a1 + v20 + 56);
      }

      if (v23 >= v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = v23;
      }

      v32 = memcmp(v30, v24, v31);
      v33 = v29 < v23;
      if (v32)
      {
        v33 = v32 < 0;
      }

      if (v33)
      {
        goto LABEL_25;
      }

LABEL_40:
      v34 = a1 + v20 + 40;
      i = v7;
      if (v20)
      {
        while (1)
        {
          v36 = *i >= v22;
          if (*i == v22 && (v37 = i[1], v36 = v37 >= *(&v430 + 1), v37 == *(&v430 + 1)))
          {
            v38 = *(i + 39);
            if (v38 >= 0)
            {
              v39 = *(i + 39);
            }

            else
            {
              v39 = i[3];
            }

            if (v38 >= 0)
            {
              v40 = i + 2;
            }

            else
            {
              v40 = i[2];
            }

            if (v23 >= v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = v23;
            }

            v42 = memcmp(v40, v24, v41);
            v43 = v39 < v23;
            if (v42)
            {
              v43 = v42 < 0;
            }

            if (v43)
            {
              goto LABEL_60;
            }
          }

          else if (!v36)
          {
            goto LABEL_60;
          }

          i -= 5;
        }
      }

      i = v422;
      if (v34 < v422)
      {
        for (i = v7; ; i -= 5)
        {
          if (*i == v22)
          {
            v70 = i[1];
            if (v70 == *(&v430 + 1))
            {
              v71 = *(i + 39);
              if (v71 >= 0)
              {
                v72 = *(i + 39);
              }

              else
              {
                v72 = i[3];
              }

              if (v71 >= 0)
              {
                v73 = i + 2;
              }

              else
              {
                v73 = i[2];
              }

              if (v23 >= v72)
              {
                v74 = v72;
              }

              else
              {
                v74 = v23;
              }

              v75 = memcmp(v73, v24, v74);
              v76 = v72 >= v23;
              if (v75)
              {
                v76 = v75 >= 0;
              }

              if (v34 >= i || !v76)
              {
                break;
              }
            }

            else if (v34 >= i || v70 < *(&v430 + 1))
            {
              break;
            }
          }

          else if (*i < v22 || v34 >= i)
          {
            break;
          }
        }
      }

LABEL_60:
      j = v34;
      if (v34 < i)
      {
        v44 = i;
        do
        {
          v440 = *j;
          v45 = *(j + 16);
          v439[0] = *(j + 24);
          *(v439 + 7) = *(j + 31);
          v46 = *(j + 39);
          *(j + 24) = 0;
          *(j + 32) = 0;
          *(j + 16) = 0;
          *j = *v44;
          v47 = *(v44 + 16);
          *(j + 32) = *(v44 + 32);
          *(j + 16) = v47;
          *v44 = v440;
          *(v44 + 31) = *(v439 + 7);
          v48 = v439[0];
          *(v44 + 16) = v45;
          *(v44 + 24) = v48;
          *(v44 + 39) = v46;
          if (v438 >= 0)
          {
            v49 = HIBYTE(v438);
          }

          else
          {
            v49 = *(&v437 + 1);
          }

          if (v438 >= 0)
          {
            v50 = &v437;
          }

          else
          {
            v50 = v437;
          }

          do
          {
            while (1)
            {
              while (1)
              {
                v51 = *(j + 40);
                j += 40;
                v52 = v51 >= v430;
                if (v51 == v430)
                {
                  break;
                }

                if (v52)
                {
                  goto LABEL_89;
                }
              }

              v53 = *(j + 8);
              if (v53 == *(&v430 + 1))
              {
                break;
              }

              if (v53 >= *(&v430 + 1))
              {
                goto LABEL_89;
              }
            }

            v54 = *(j + 39);
            if (v54 >= 0)
            {
              v55 = *(j + 39);
            }

            else
            {
              v55 = *(j + 24);
            }

            if (v54 >= 0)
            {
              v56 = (j + 16);
            }

            else
            {
              v56 = *(j + 16);
            }

            if (v49 >= v55)
            {
              v57 = v55;
            }

            else
            {
              v57 = v49;
            }

            v58 = memcmp(v56, v50, v57);
            v59 = v55 < v49;
            if (v58)
            {
              v59 = v58 < 0;
            }
          }

          while (v59);
          do
          {
            while (1)
            {
LABEL_89:
              while (1)
              {
                v60 = *(v44 - 40);
                v44 -= 40;
                v61 = v60 >= v430;
                if (v60 == v430)
                {
                  break;
                }

                if (!v61)
                {
                  goto LABEL_62;
                }
              }

              v62 = *(v44 + 8);
              if (v62 == *(&v430 + 1))
              {
                break;
              }

              if (v62 < *(&v430 + 1))
              {
                goto LABEL_62;
              }
            }

            v63 = *(v44 + 39);
            if (v63 >= 0)
            {
              v64 = *(v44 + 39);
            }

            else
            {
              v64 = *(v44 + 24);
            }

            if (v63 >= 0)
            {
              v65 = (v44 + 16);
            }

            else
            {
              v65 = *(v44 + 16);
            }

            if (v49 >= v64)
            {
              v66 = v64;
            }

            else
            {
              v66 = v49;
            }

            v67 = memcmp(v65, v50, v66);
            v68 = v64 < v49;
            if (v67)
            {
              v68 = v67 < 0;
            }
          }

          while (!v68);
LABEL_62:
          ;
        }

        while (j < v44);
      }

      v77 = (j - 40);
      if (j - 40 == a1)
      {
        v80 = *(j - 1);
        *a1 = v430;
        v78 = j - 24;
        a3 = __s2;
        a2 = v422;
        v7 = v415;
        if (v80 < 0)
        {
          operator delete(*v78);
        }
      }

      else
      {
        *a1 = *v77;
        a3 = __s2;
        a2 = v422;
        v7 = v415;
        if (*(a1 + 39) < 0)
        {
          operator delete(*(a1 + 16));
        }

        v78 = j - 24;
        v79 = *(j - 24);
        *(a1 + 32) = *(j - 8);
        *(a1 + 16) = v79;
        *(j - 1) = 0;
        *(j - 24) = 0;
        *v77 = v430;
      }

      v81 = v437;
      *(v78 + 16) = v438;
      *v78 = v81;
      if (v34 < i)
      {
LABEL_139:
        sub_298B934A4(a1, j - 40, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v82 = sub_298B95C14(a1, j - 40);
        if (sub_298B95C14(j, a2))
        {
          a2 = j - 40;
          if (v82)
          {
            goto LABEL_676;
          }

          goto LABEL_2;
        }

        if (!v82)
        {
          goto LABEL_139;
        }
      }
    }

    else
    {
      sub_298B94EDC(a1, v12, v7);
      v13 = 40 * v11;
      sub_298B94EDC(a1 + 40, (v13 + a1 - 40), v413);
      sub_298B94EDC(a1 + 80, (a1 + 40 + v13), v411);
      sub_298B94EDC(v13 + a1 - 40, v12, a1 + 40 + v13);
      v429 = *a1;
      *(&v440 + 7) = *(a1 + 31);
      v14 = *(a1 + 16);
      *&v440 = *(a1 + 24);
      v15 = *(a1 + 39);
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      v16 = *(v12 + 32);
      v17 = *(v12 + 16);
      *a1 = *v12;
      *(a1 + 16) = v17;
      *(a1 + 32) = v16;
      *v12 = v429;
      *(v12 + 16) = v14;
      v18 = v440;
      *(v12 + 31) = *(&v440 + 7);
      *(v12 + 24) = v18;
      *(v12 + 39) = v15;
      __s2 = a3 - 1;
      if (a4)
      {
        goto LABEL_18;
      }

LABEL_16:
      v19 = *(a1 - 40);
      if (v19 == *a1)
      {
        v83 = *(a1 - 32);
        v84 = *(a1 + 8);
        if (v83 == v84)
        {
          v89 = *(a1 + 39);
          v90 = *(a1 - 1);
          if (v90 >= 0)
          {
            v91 = (a1 - 24);
          }

          else
          {
            v91 = *(a1 - 24);
          }

          if (v90 >= 0)
          {
            v92 = *(a1 - 1);
          }

          else
          {
            v92 = *(a1 - 16);
          }

          if (v89 >= 0)
          {
            v93 = *(a1 + 39);
          }

          else
          {
            v93 = *(a1 + 24);
          }

          if (v89 >= 0)
          {
            v94 = (a1 + 16);
          }

          else
          {
            v94 = *(a1 + 16);
          }

          if (v93 >= v92)
          {
            v95 = v92;
          }

          else
          {
            v95 = v93;
          }

          v96 = memcmp(v91, v94, v95);
          v97 = v92 < v93;
          if (v96)
          {
            v97 = v96 < 0;
          }

          if (v97)
          {
            goto LABEL_18;
          }
        }

        else if (v83 < v84)
        {
          goto LABEL_18;
        }
      }

      else if (v19 < *a1)
      {
        goto LABEL_18;
      }

      v431 = *a1;
      v85 = *(a1 + 32);
      v86 = *a1;
      v437 = *(a1 + 16);
      v438 = v85;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      v87 = *v7;
      if (v86 == *v7)
      {
        v88 = *(&v431 + 1);
        v98 = *(a2 - 32);
        if (*(&v431 + 1) == v98)
        {
          v109 = *(a2 - 1);
          if (v438 >= 0)
          {
            v110 = HIBYTE(v438);
          }

          else
          {
            v110 = *(&v437 + 1);
          }

          if (v438 >= 0)
          {
            v111 = &v437;
          }

          else
          {
            v111 = v437;
          }

          if (v109 >= 0)
          {
            v112 = *(a2 - 1);
          }

          else
          {
            v112 = *(a2 - 16);
          }

          if (v109 >= 0)
          {
            v113 = v409;
          }

          else
          {
            v113 = *(a2 - 24);
          }

          if (v112 >= v110)
          {
            v114 = v110;
          }

          else
          {
            v114 = v112;
          }

          v115 = memcmp(v111, v113, v114);
          v7 = v415;
          v116 = v110 < v112;
          if (v115)
          {
            v116 = v115 < 0;
          }

          if (v116)
          {
            goto LABEL_166;
          }
        }

        else if (*(&v431 + 1) < v98)
        {
          goto LABEL_166;
        }
      }

      else if (v86 < *v7)
      {
        v88 = *(&v431 + 1);
LABEL_166:
        if (v438 >= 0)
        {
          v99 = HIBYTE(v438);
        }

        else
        {
          v99 = *(&v437 + 1);
        }

        if (v438 >= 0)
        {
          v100 = &v437;
        }

        else
        {
          v100 = v437;
        }

        for (j = a1 + 40; ; j += 40)
        {
          v101 = v86 >= *j;
          if (v86 == *j && (v102 = *(j + 8), v101 = v88 >= v102, v88 == v102))
          {
            v103 = *(j + 39);
            if (v103 >= 0)
            {
              v104 = *(j + 39);
            }

            else
            {
              v104 = *(j + 24);
            }

            if (v103 >= 0)
            {
              v105 = (j + 16);
            }

            else
            {
              v105 = *(j + 16);
            }

            if (v104 >= v99)
            {
              v106 = v99;
            }

            else
            {
              v106 = v104;
            }

            v107 = memcmp(v100, v105, v106);
            v7 = v415;
            v108 = v99 < v104;
            if (v107)
            {
              v108 = v107 < 0;
            }

            if (v108)
            {
              goto LABEL_233;
            }
          }

          else if (!v101)
          {
            goto LABEL_233;
          }
        }
      }

      j = a1 + 40;
      if (a1 + 40 < a2)
      {
        if (v438 >= 0)
        {
          v117 = HIBYTE(v438);
        }

        else
        {
          v117 = *(&v437 + 1);
        }

        if (v438 >= 0)
        {
          v118 = &v437;
        }

        else
        {
          v118 = v437;
        }

        do
        {
          v119 = v86 >= *j;
          if (v86 == *j && (v120 = *(j + 8), v119 = *(&v431 + 1) >= v120, *(&v431 + 1) == v120))
          {
            v121 = *(j + 39);
            if (v121 >= 0)
            {
              v122 = *(j + 39);
            }

            else
            {
              v122 = *(j + 24);
            }

            if (v121 >= 0)
            {
              v123 = (j + 16);
            }

            else
            {
              v123 = *(j + 16);
            }

            if (v122 >= v117)
            {
              v124 = v117;
            }

            else
            {
              v124 = v122;
            }

            v125 = memcmp(v118, v123, v124);
            v7 = v415;
            v126 = v117 < v122;
            if (v125)
            {
              v126 = v125 < 0;
            }

            if (v126)
            {
              break;
            }
          }

          else if (!v119)
          {
            break;
          }

          j += 40;
        }

        while (j < v422);
      }

LABEL_233:
      k = v422;
      if (j < v422)
      {
        if (v438 >= 0)
        {
          v128 = HIBYTE(v438);
        }

        else
        {
          v128 = *(&v437 + 1);
        }

        if (v438 >= 0)
        {
          v129 = &v437;
        }

        else
        {
          v129 = v437;
        }

        for (k = v7; ; k -= 5)
        {
          v131 = v86 >= v87;
          if (v86 == v87 && (v132 = k[1], v131 = *(&v431 + 1) >= v132, *(&v431 + 1) == v132))
          {
            v133 = *(k + 39);
            if (v133 >= 0)
            {
              v134 = *(k + 39);
            }

            else
            {
              v134 = k[3];
            }

            if (v133 >= 0)
            {
              v135 = k + 2;
            }

            else
            {
              v135 = k[2];
            }

            if (v134 >= v128)
            {
              v136 = v128;
            }

            else
            {
              v136 = v134;
            }

            v137 = memcmp(v129, v135, v136);
            v138 = v128 < v134;
            if (v137)
            {
              v138 = v137 < 0;
            }

            if (!v138)
            {
              break;
            }
          }

          else if (v131)
          {
            break;
          }

          v130 = *(k - 5);
          v87 = v130;
        }
      }

LABEL_300:
      while (j < k)
      {
        v440 = *j;
        v139 = *(j + 16);
        v439[0] = *(j + 24);
        *(v439 + 7) = *(j + 31);
        v140 = *(j + 39);
        *(j + 24) = 0;
        *(j + 32) = 0;
        *(j + 16) = 0;
        *j = *k;
        v141 = *(k + 1);
        *(j + 32) = k[4];
        *(j + 16) = v141;
        *k = v440;
        *(k + 31) = *(v439 + 7);
        v142 = v439[0];
        k[2] = v139;
        k[3] = v142;
        *(k + 39) = v140;
        if (v438 >= 0)
        {
          v143 = HIBYTE(v438);
        }

        else
        {
          v143 = *(&v437 + 1);
        }

        if (v438 >= 0)
        {
          v144 = &v437;
        }

        else
        {
          v144 = v437;
        }

        do
        {
          while (1)
          {
            while (1)
            {
              v145 = *(j + 40);
              j += 40;
              v146 = v431 >= v145;
              if (v431 == v145)
              {
                break;
              }

              if (!v146)
              {
                goto LABEL_284;
              }
            }

            v147 = *(j + 8);
            if (*(&v431 + 1) == v147)
            {
              break;
            }

            if (*(&v431 + 1) < v147)
            {
              goto LABEL_284;
            }
          }

          v148 = *(j + 39);
          if (v148 >= 0)
          {
            v149 = *(j + 39);
          }

          else
          {
            v149 = *(j + 24);
          }

          if (v148 >= 0)
          {
            v150 = (j + 16);
          }

          else
          {
            v150 = *(j + 16);
          }

          if (v149 >= v143)
          {
            v151 = v143;
          }

          else
          {
            v151 = v149;
          }

          v152 = memcmp(v144, v150, v151);
          v153 = v143 < v149;
          if (v152)
          {
            v153 = v152 < 0;
          }
        }

        while (!v153);
        do
        {
          while (1)
          {
LABEL_284:
            while (1)
            {
              v154 = *(k - 5);
              k -= 5;
              v155 = v431 >= v154;
              if (v431 == v154)
              {
                break;
              }

              if (v155)
              {
                goto LABEL_300;
              }
            }

            v156 = k[1];
            if (*(&v431 + 1) == v156)
            {
              break;
            }

            if (*(&v431 + 1) >= v156)
            {
              goto LABEL_300;
            }
          }

          v157 = *(k + 39);
          if (v157 >= 0)
          {
            v158 = *(k + 39);
          }

          else
          {
            v158 = k[3];
          }

          if (v157 >= 0)
          {
            v159 = k + 2;
          }

          else
          {
            v159 = k[2];
          }

          if (v158 >= v143)
          {
            v160 = v143;
          }

          else
          {
            v160 = v158;
          }

          v161 = memcmp(v144, v159, v160);
          v162 = v143 < v158;
          if (v161)
          {
            v162 = v161 < 0;
          }
        }

        while (v162);
      }

      v163 = (j - 40);
      if (j - 40 == a1)
      {
        v166 = *(j - 1);
        *v163 = v431;
        v164 = j - 24;
        a3 = __s2;
        a2 = v422;
        v7 = v415;
        if (v166 < 0)
        {
          operator delete(*v164);
        }
      }

      else
      {
        *a1 = *v163;
        a3 = __s2;
        a2 = v422;
        v7 = v415;
        if (*(a1 + 39) < 0)
        {
          operator delete(*(a1 + 16));
        }

        v164 = j - 24;
        v165 = *(j - 24);
        *(a1 + 32) = *(j - 8);
        *(a1 + 16) = v165;
        *(j - 1) = 0;
        *(j - 24) = 0;
        *v163 = v431;
      }

      a4 = 0;
      v167 = v437;
      *(v164 + 16) = v438;
      *v164 = v167;
    }
  }

  if (a4)
  {
    if (a1 == a2)
    {
      goto LABEL_676;
    }

    v180 = a1 + 40;
    if (a1 + 40 == a2)
    {
      goto LABEL_676;
    }

    v181 = 0;
    v182 = a1;
LABEL_588:
    v356 = v182;
    v182 = v180;
    v358 = *(v356 + 5);
    v359 = v358 >= *v356;
    if (v358 == *v356 && (v360 = *(v356 + 6), v361 = *(v356 + 1), v359 = v360 >= v361, v360 == v361))
    {
      v383 = *(v356 + 39);
      v384 = *(v356 + 79);
      if (v384 >= 0)
      {
        v385 = v356 + 56;
      }

      else
      {
        v385 = *(v356 + 7);
      }

      if (v384 >= 0)
      {
        v386 = *(v356 + 79);
      }

      else
      {
        v386 = *(v356 + 8);
      }

      if (v383 >= 0)
      {
        v387 = *(v356 + 39);
      }

      else
      {
        v387 = *(v356 + 3);
      }

      if (v383 >= 0)
      {
        v388 = v356 + 1;
      }

      else
      {
        v388 = *(v356 + 2);
      }

      if (v387 >= v386)
      {
        v389 = v386;
      }

      else
      {
        v389 = v387;
      }

      v390 = memcmp(v385, v388, v389);
      v391 = v386 < v387;
      if (v390)
      {
        v391 = v390 < 0;
      }

      if (!v391)
      {
        goto LABEL_587;
      }
    }

    else if (v359)
    {
      goto LABEL_587;
    }

    v436 = *v182;
    v438 = *(v356 + 9);
    v437 = *(v356 + 56);
    *(v356 + 8) = 0;
    *(v356 + 9) = 0;
    *(v356 + 7) = 0;
    v362 = *(&v436 + 1);
    v363 = HIBYTE(v438);
    if (v438 < 0)
    {
      v363 = *(&v437 + 1);
    }

    v428 = v363;
    if (v438 >= 0)
    {
      v364 = &v437;
    }

    else
    {
      v364 = v437;
    }

    __s2c = v364;
    v365 = *(v182 + 39);
    *v182 = *v356;
    if (v365 < 0)
    {
      operator delete(*(v182 + 16));
    }

    v355 = (v356 + 1);
    *(v182 + 16) = v356[1];
    *(v182 + 32) = *(v356 + 4);
    *(v356 + 39) = 0;
    *(v356 + 16) = 0;
    if (v356 == a1)
    {
      goto LABEL_585;
    }

    v367 = (v356 - 40);
    v366 = *(v356 - 5);
    v368 = v436 >= v366;
    if (v436 == v366 && (v369 = *(v356 - 4), v368 = *(&v436 + 1) >= v369, *(&v436 + 1) == v369))
    {
      v392 = *(v356 - 1);
      v393 = v392;
      if ((v392 & 0x80u) != 0)
      {
        v392 = *(v356 - 2);
      }

      if (v393 >= 0)
      {
        v394 = v356 - 24;
      }

      else
      {
        v394 = *(v356 - 3);
      }

      v414 = v392;
      if (v392 >= v428)
      {
        v395 = v428;
      }

      else
      {
        v395 = v392;
      }

      v396 = memcmp(__s2c, v394, v395);
      a2 = v422;
      v397 = v428 < v414;
      if (v396)
      {
        v397 = v396 < 0;
      }

      if (!v397)
      {
        goto LABEL_586;
      }
    }

    else if (v368)
    {
      goto LABEL_586;
    }

    *v356 = *v367;
    v370 = v356 - 24;
    *v355 = *(v356 - 24);
    *(v356 + 4) = *(v356 - 1);
    *(v356 - 1) = 0;
    *(v356 - 24) = 0;
    if (v367 == a1)
    {
      v355 = v356 - 24;
LABEL_585:
      v356 = a1;
      goto LABEL_586;
    }

    v371 = v181;
    while (1)
    {
      v373 = *(a1 + v371 - 80);
      v374 = v436 >= v373;
      if (v436 == v373 && (v375 = *(a1 + v371 - 72), v374 = v362 >= v375, v362 == v375))
      {
        v376 = a1 + v371;
        v377 = *(a1 + v371 - 41);
        if (v377 >= 0)
        {
          v378 = *(a1 + v371 - 41);
        }

        else
        {
          v378 = *(a1 + v371 - 56);
        }

        if (v377 >= 0)
        {
          v379 = (a1 + v371 - 64);
        }

        else
        {
          v379 = *(a1 + v371 - 64);
        }

        if (v378 >= v428)
        {
          v380 = v428;
        }

        else
        {
          v380 = v378;
        }

        v381 = memcmp(__s2c, v379, v380);
        v26 = v428 >= v378;
        v362 = *(&v436 + 1);
        v382 = !v26;
        if (v381)
        {
          v382 = v381 < 0;
        }

        if (!v382)
        {
          v355 = v376 - 24;
          v356 = (v376 - 40);
          goto LABEL_657;
        }
      }

      else if (v374)
      {
        v355 = v370;
        v356 = v367;
LABEL_657:
        a2 = v422;
LABEL_586:
        *v356 = v436;
        v357 = v437;
        *(v355 + 16) = v438;
        *v355 = v357;
LABEL_587:
        v180 = v182 + 40;
        v181 += 40;
        if (v182 + 40 == a2)
        {
          goto LABEL_676;
        }

        goto LABEL_588;
      }

      v370 = v367 - 24;
      v367 = (v367 - 40);
      *(a1 + v371 - 40) = *(a1 + v371 - 80);
      v372 = a1 + v371;
      *(v372 - 24) = *(a1 + v371 - 64);
      *(v372 - 8) = *(a1 + v371 - 48);
      *(v372 - 41) = 0;
      *(v372 - 64) = 0;
      v371 -= 40;
      a2 = v422;
      if (v371 == 40)
      {
        v355 = a1 + 16;
        goto LABEL_585;
      }
    }
  }

  if (a1 != a2)
  {
    v314 = a1 + 40;
    if (a1 + 40 != a2)
    {
      v315 = a1 + 16;
      do
      {
        v317 = a1;
        a1 = v314;
        v319 = *(v317 + 40);
        v320 = v319 >= *v317;
        if (v319 == *v317 && (v321 = *(v317 + 48), v322 = *(v317 + 8), v320 = v321 >= v322, v321 == v322))
        {
          v340 = *(v317 + 39);
          v341 = *(v317 + 79);
          if (v341 >= 0)
          {
            v342 = (v317 + 56);
          }

          else
          {
            v342 = *(v317 + 56);
          }

          if (v341 >= 0)
          {
            v343 = *(v317 + 79);
          }

          else
          {
            v343 = *(v317 + 64);
          }

          if (v340 >= 0)
          {
            v344 = *(v317 + 39);
          }

          else
          {
            v344 = *(v317 + 24);
          }

          if (v340 >= 0)
          {
            v345 = (v317 + 16);
          }

          else
          {
            v345 = *(v317 + 16);
          }

          if (v344 >= v343)
          {
            v346 = v343;
          }

          else
          {
            v346 = v344;
          }

          v347 = memcmp(v342, v345, v346);
          v348 = v343 < v344;
          if (v347)
          {
            v348 = v347 < 0;
          }

          if (!v348)
          {
            goto LABEL_519;
          }
        }

        else if (v320)
        {
          goto LABEL_519;
        }

        v435 = *a1;
        v438 = *(v317 + 72);
        v437 = *(v317 + 56);
        *(v317 + 64) = 0;
        *(v317 + 72) = 0;
        *(v317 + 56) = 0;
        if (v438 >= 0)
        {
          v323 = HIBYTE(v438);
        }

        else
        {
          v323 = *(&v437 + 1);
        }

        if (v438 >= 0)
        {
          v324 = &v437;
        }

        else
        {
          v324 = v437;
        }

        v325 = *(a1 + 39);
        *a1 = *v317;
        if (v325 < 0)
        {
          operator delete(*(a1 + 16));
        }

        v316 = v317 + 16;
        *(a1 + 16) = *(v317 + 16);
        *(a1 + 32) = *(v317 + 32);
        *(v317 + 39) = 0;
        *(v317 + 16) = 0;
        v326 = *(v317 - 40);
        v327 = v435 >= v326;
        if (v435 == v326 && (v328 = *(v317 - 32), v327 = *(&v435 + 1) >= v328, *(&v435 + 1) == v328))
        {
          v349 = *(v317 - 1);
          if (v349 >= 0)
          {
            v350 = *(v317 - 1);
          }

          else
          {
            v350 = *(v317 - 16);
          }

          if (v349 >= 0)
          {
            v351 = (v317 - 24);
          }

          else
          {
            v351 = *(v317 - 24);
          }

          if (v350 >= v323)
          {
            v352 = v323;
          }

          else
          {
            v352 = v350;
          }

          v353 = memcmp(v324, v351, v352);
          v354 = v323 < v350;
          if (v353)
          {
            v354 = v353 < 0;
          }

          if (v354)
          {
LABEL_534:
            for (m = v315; ; m -= 40)
            {
              v330 = *(m - 40);
              *(m - 16) = *(m - 56);
              *m = v330;
              *(m + 16) = *(m - 24);
              *(m - 17) = 0;
              *(m - 40) = 0;
              v331 = *(m - 96);
              v332 = v435 >= v331;
              if (v435 == v331 && (v333 = *(m - 88), v332 = *(&v435 + 1) >= v333, *(&v435 + 1) == v333))
              {
                v334 = *(m - 57);
                if (v334 >= 0)
                {
                  v335 = *(m - 57);
                }

                else
                {
                  v335 = *(m - 72);
                }

                if (v334 >= 0)
                {
                  v336 = (m - 80);
                }

                else
                {
                  v336 = *(m - 80);
                }

                if (v335 >= v323)
                {
                  v337 = v323;
                }

                else
                {
                  v337 = v335;
                }

                v338 = memcmp(v324, v336, v337);
                v339 = v323 < v335;
                if (v338)
                {
                  v339 = v338 < 0;
                }

                if (!v339)
                {
LABEL_517:
                  v316 = m - 40;
                  v317 = m - 56;
                  break;
                }
              }

              else if (v332)
              {
                goto LABEL_517;
              }
            }
          }
        }

        else if (!v327)
        {
          goto LABEL_534;
        }

        *v317 = v435;
        v318 = v437;
        *(v316 + 16) = v438;
        *v316 = v318;
        a2 = v422;
LABEL_519:
        v314 = a1 + 40;
        v315 += 40;
      }

      while (a1 + 40 != a2);
    }
  }

LABEL_676:
  v407 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B94EDC(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v107 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  if (*a2 == *result)
  {
    v7 = a2[1];
    v8 = *(result + 8);
    if (v7 == v8)
    {
      v35 = (result + 16);
      v36 = *(result + 39);
      v37 = a2 + 2;
      v38 = *(a2 + 39);
      if (v38 >= 0)
      {
        v39 = *(a2 + 39);
      }

      else
      {
        v39 = a2[3];
      }

      if (v38 < 0)
      {
        v37 = a2[2];
      }

      if (v36 >= 0)
      {
        v40 = *(result + 39);
      }

      else
      {
        v40 = *(result + 24);
      }

      if (v36 < 0)
      {
        v35 = *(result + 16);
      }

      if (v40 >= v39)
      {
        v41 = v39;
      }

      else
      {
        v41 = v40;
      }

      v42 = result;
      v43 = a2;
      v44 = a3;
      v45 = memcmp(v37, v35, v41);
      a3 = v44;
      a2 = v43;
      v46 = v45;
      result = v42;
      v47 = v46 == 0;
      v48 = v46 < 0;
      if (v47)
      {
        v48 = v39 < v40;
      }

      if (v48)
      {
        goto LABEL_3;
      }
    }

    else if (v7 < v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = *a3 >= v3;
    if (*a3 == v3 && (v10 = *(a3 + 8), v11 = a2[1], v9 = v10 >= v11, v10 == v11))
    {
      v49 = a2 + 2;
      v50 = *(a2 + 39);
      v51 = (a3 + 16);
      v52 = *(a3 + 39);
      if (v52 >= 0)
      {
        v53 = *(a3 + 39);
      }

      else
      {
        v53 = *(a3 + 24);
      }

      if (v52 < 0)
      {
        v51 = *(a3 + 16);
      }

      if (v50 >= 0)
      {
        v54 = *(a2 + 39);
      }

      else
      {
        v54 = a2[3];
      }

      if (v50 < 0)
      {
        v49 = a2[2];
      }

      if (v54 >= v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = v54;
      }

      v56 = result;
      v57 = a2;
      v58 = a3;
      v59 = memcmp(v51, v49, v55);
      a3 = v58;
      a2 = v57;
      v60 = v59;
      result = v56;
      v47 = v60 == 0;
      v61 = v60 < 0;
      if (v47)
      {
        v61 = v53 < v54;
      }

      if (!v61)
      {
        goto LABEL_108;
      }
    }

    else if (v9)
    {
      goto LABEL_108;
    }

    v98 = *a2;
    v13 = a2 + 2;
    v12 = a2[2];
    v14 = a2 + 3;
    *&v103 = a2[3];
    *(&v103 + 7) = *(a2 + 31);
    v15 = *(a2 + 39);
    a2[2] = 0;
    a2[4] = 0;
    a2[3] = 0;
    *a2 = *a3;
    v16 = *(a3 + 32);
    *(a2 + 1) = *(a3 + 16);
    a2[4] = v16;
    *a3 = v98;
    *(a3 + 16) = v12;
    *(a3 + 24) = v103;
    *(a3 + 31) = *(&v103 + 7);
    *(a3 + 39) = v15;
    v17 = *a2 >= *result;
    if (*a2 == *result && (v18 = a2[1], v19 = *(result + 8), v17 = v18 >= v19, v18 == v19))
    {
      v75 = (result + 16);
      v76 = *(result + 39);
      v77 = *(a2 + 39);
      if (v77 >= 0)
      {
        v78 = *(a2 + 39);
      }

      else
      {
        v78 = a2[3];
      }

      if (v77 >= 0)
      {
        v79 = a2 + 2;
      }

      else
      {
        v79 = a2[2];
      }

      if (v76 >= 0)
      {
        v80 = *(result + 39);
      }

      else
      {
        v80 = *(result + 24);
      }

      if (v76 < 0)
      {
        v75 = *(result + 16);
      }

      if (v80 >= v78)
      {
        v81 = v78;
      }

      else
      {
        v81 = v80;
      }

      v82 = result;
      v83 = a2;
      v84 = memcmp(v79, v75, v81);
      a2 = v83;
      v85 = v84;
      result = v82;
      v47 = v85 == 0;
      v86 = v85 < 0;
      if (v47)
      {
        v86 = v78 < v80;
      }

      if (!v86)
      {
        goto LABEL_108;
      }
    }

    else if (v17)
    {
      goto LABEL_108;
    }

    v99 = *result;
    v20 = *(result + 16);
    *&v104 = *(result + 24);
    *(&v104 + 7) = *(result + 31);
    v21 = *(result + 39);
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
    *result = *a2;
    v22 = v13[2];
    *(result + 16) = *v13;
    *(result + 32) = v22;
    *a2 = v99;
    a2[2] = v20;
    *v14 = v104;
    *(v14 + 7) = *(&v104 + 7);
    *(a2 + 39) = v21;
    goto LABEL_108;
  }

  if (*a2 >= *result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*a3 == v3)
  {
    v23 = *(a3 + 8);
    v24 = a2[1];
    if (v23 == v24)
    {
      v62 = a2 + 2;
      v63 = *(a2 + 39);
      v64 = (a3 + 16);
      v65 = *(a3 + 39);
      if (v65 >= 0)
      {
        v66 = *(a3 + 39);
      }

      else
      {
        v66 = *(a3 + 24);
      }

      if (v65 < 0)
      {
        v64 = *(a3 + 16);
      }

      if (v63 >= 0)
      {
        v67 = *(a2 + 39);
      }

      else
      {
        v67 = a2[3];
      }

      if (v63 < 0)
      {
        v62 = a2[2];
      }

      if (v67 >= v66)
      {
        v68 = v66;
      }

      else
      {
        v68 = v67;
      }

      v69 = result;
      v70 = a2;
      v71 = a3;
      v72 = memcmp(v64, v62, v68);
      a3 = v71;
      a2 = v70;
      v73 = v72;
      result = v69;
      v47 = v73 == 0;
      v74 = v73 < 0;
      if (v47)
      {
        v74 = v66 < v67;
      }

      if (v74)
      {
        goto LABEL_5;
      }
    }

    else if (v23 < v24)
    {
      goto LABEL_5;
    }
  }

  else if (*a3 < v3)
  {
LABEL_5:
    v97 = *result;
    v4 = *(result + 16);
    *&v102 = *(result + 24);
    *(&v102 + 7) = *(result + 31);
    v5 = *(result + 39);
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
    *result = *a3;
    v6 = *(a3 + 32);
    *(result + 16) = *(a3 + 16);
    *(result + 32) = v6;
    *a3 = v97;
    *(a3 + 16) = v4;
    *(a3 + 24) = v102;
    *(a3 + 31) = *(&v102 + 7);
    *(a3 + 39) = v5;
    goto LABEL_108;
  }

  v100 = *result;
  v25 = *(result + 16);
  *&v105 = *(result + 24);
  *(&v105 + 7) = *(result + 31);
  v26 = *(result + 39);
  v27 = v26;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *result = *a2;
  v28 = a2 + 2;
  v29 = a2[4];
  *(result + 16) = *(a2 + 1);
  *(result + 32) = v29;
  *a2 = v100;
  a2[2] = v25;
  a2[3] = v105;
  v30 = (a2 + 3);
  *(a2 + 31) = *(&v105 + 7);
  *(a2 + 39) = v26;
  v31 = *a3 >= *a2;
  if (*a3 != *a2 || (v32 = *(a3 + 8), v33 = a2[1], v31 = v32 >= v33, v32 != v33))
  {
    if (v31)
    {
      goto LABEL_108;
    }

LABEL_20:
    v101 = *a2;
    *&v106 = *v30;
    *(&v106 + 7) = *(v30 + 7);
    v28[1] = 0;
    v28[2] = 0;
    *v28 = 0;
    *a2 = *a3;
    v34 = *(a3 + 32);
    *v28 = *(a3 + 16);
    v28[2] = v34;
    *a3 = v101;
    *(a3 + 16) = v25;
    *(a3 + 24) = v106;
    *(a3 + 31) = *(&v106 + 7);
    *(a3 + 39) = v27;
    goto LABEL_108;
  }

  v87 = *(a3 + 39);
  if (v87 >= 0)
  {
    v88 = *(a3 + 39);
  }

  else
  {
    v88 = *(a3 + 24);
  }

  if (v87 >= 0)
  {
    v89 = (a3 + 16);
  }

  else
  {
    v89 = *(a3 + 16);
  }

  if ((v26 & 0x80u) == 0)
  {
    v90 = v26;
  }

  else
  {
    v90 = *v30;
  }

  if ((v26 & 0x80u) == 0)
  {
    v91 = a2 + 2;
  }

  else
  {
    v91 = v25;
  }

  if (v90 >= v88)
  {
    v92 = v88;
  }

  else
  {
    v92 = v90;
  }

  v93 = a2;
  v94 = a3;
  result = memcmp(v89, v91, v92);
  a3 = v94;
  a2 = v93;
  v95 = v88 < v90;
  if (result)
  {
    v95 = result < 0;
  }

  if (v95)
  {
    goto LABEL_20;
  }

LABEL_108:
  v96 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B95484(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x29EDCA608];
  result = sub_298B94EDC(a1, a2, a3);
  v9 = *a4 >= *a3;
  if (*a4 == *a3 && (v10 = *(a4 + 8), v11 = *(a3 + 8), v9 = v10 >= v11, v10 == v11))
  {
    v27 = *(a3 + 39);
    v28 = *(a4 + 39);
    if (v28 >= 0)
    {
      v29 = *(a4 + 39);
    }

    else
    {
      v29 = *(a4 + 24);
    }

    if (v28 >= 0)
    {
      v30 = (a4 + 16);
    }

    else
    {
      v30 = *(a4 + 16);
    }

    if (v27 >= 0)
    {
      v31 = *(a3 + 39);
    }

    else
    {
      v31 = *(a3 + 24);
    }

    if (v27 >= 0)
    {
      v32 = (a3 + 16);
    }

    else
    {
      v32 = *(a3 + 16);
    }

    if (v31 >= v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = v31;
    }

    result = memcmp(v30, v32, v33);
    v34 = v29 < v31;
    if (result)
    {
      v34 = result < 0;
    }

    if (!v34)
    {
      goto LABEL_67;
    }
  }

  else if (v9)
  {
    goto LABEL_67;
  }

  v52 = *a3;
  v12 = *(a3 + 16);
  *&v55 = *(a3 + 24);
  *(&v55 + 7) = *(a3 + 31);
  v13 = *(a3 + 39);
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 24) = 0;
  *a3 = *a4;
  v14 = *(a4 + 32);
  *(a3 + 16) = *(a4 + 16);
  *(a3 + 32) = v14;
  *a4 = v52;
  *(a4 + 16) = v12;
  *(a4 + 24) = v55;
  *(a4 + 31) = *(&v55 + 7);
  *(a4 + 39) = v13;
  v15 = *a3 >= *a2;
  if (*a3 == *a2 && (v16 = *(a3 + 8), v17 = *(a2 + 1), v15 = v16 >= v17, v16 == v17))
  {
    v35 = *(a2 + 39);
    v36 = *(a3 + 39);
    if (v36 >= 0)
    {
      v37 = *(a3 + 39);
    }

    else
    {
      v37 = *(a3 + 24);
    }

    if (v36 >= 0)
    {
      v38 = (a3 + 16);
    }

    else
    {
      v38 = *(a3 + 16);
    }

    if (v35 >= 0)
    {
      v39 = *(a2 + 39);
    }

    else
    {
      v39 = *(a2 + 3);
    }

    if (v35 >= 0)
    {
      v40 = a2 + 1;
    }

    else
    {
      v40 = *(a2 + 2);
    }

    if (v39 >= v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    result = memcmp(v38, v40, v41);
    v42 = v37 < v39;
    if (result)
    {
      v42 = result < 0;
    }

    if (!v42)
    {
      goto LABEL_67;
    }
  }

  else if (v15)
  {
    goto LABEL_67;
  }

  v53 = *a2;
  v18 = *(a2 + 2);
  *&v56 = *(a2 + 3);
  *(&v56 + 7) = *(a2 + 31);
  v19 = *(a2 + 39);
  *(a2 + 2) = 0;
  *(a2 + 4) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v20 = *(a3 + 32);
  a2[1] = *(a3 + 16);
  *(a2 + 4) = v20;
  *a3 = v53;
  *(a3 + 16) = v18;
  *(a3 + 24) = v56;
  *(a3 + 31) = *(&v56 + 7);
  *(a3 + 39) = v19;
  v21 = *a2 >= *a1;
  if (*a2 == *a1 && (v22 = *(a2 + 1), v23 = *(a1 + 8), v21 = v22 >= v23, v22 == v23))
  {
    v43 = *(a1 + 39);
    v44 = *(a2 + 39);
    if (v44 >= 0)
    {
      v45 = *(a2 + 39);
    }

    else
    {
      v45 = *(a2 + 3);
    }

    if (v44 >= 0)
    {
      v46 = a2 + 1;
    }

    else
    {
      v46 = *(a2 + 2);
    }

    if (v43 >= 0)
    {
      v47 = *(a1 + 39);
    }

    else
    {
      v47 = *(a1 + 24);
    }

    if (v43 >= 0)
    {
      v48 = (a1 + 16);
    }

    else
    {
      v48 = *(a1 + 16);
    }

    if (v47 >= v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = v47;
    }

    result = memcmp(v46, v48, v49);
    v50 = v45 < v47;
    if (result)
    {
      v50 = result < 0;
    }

    if (v50)
    {
      goto LABEL_10;
    }
  }

  else if (!v21)
  {
LABEL_10:
    v54 = *a1;
    v24 = *(a1 + 16);
    *&v57 = *(a1 + 24);
    *(&v57 + 7) = *(a1 + 31);
    v25 = *(a1 + 39);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    v26 = *(a2 + 4);
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v26;
    *a2 = v54;
    *(a2 + 2) = v24;
    *(a2 + 3) = v57;
    *(a2 + 31) = *(&v57 + 7);
    *(a2 + 39) = v25;
  }

LABEL_67:
  v51 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B957D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = *MEMORY[0x29EDCA608];
  result = sub_298B95484(a1, a2, a3, a4);
  v11 = *a5 >= *a4;
  if (*a5 == *a4 && (v12 = *(a5 + 8), v13 = *(a4 + 8), v11 = v12 >= v13, v12 == v13))
  {
    v35 = *(a4 + 39);
    v36 = *(a5 + 39);
    if (v36 >= 0)
    {
      v37 = *(a5 + 39);
    }

    else
    {
      v37 = *(a5 + 24);
    }

    if (v36 >= 0)
    {
      v38 = (a5 + 16);
    }

    else
    {
      v38 = *(a5 + 16);
    }

    if (v35 >= 0)
    {
      v39 = *(a4 + 39);
    }

    else
    {
      v39 = *(a4 + 24);
    }

    if (v35 >= 0)
    {
      v40 = (a4 + 16);
    }

    else
    {
      v40 = *(a4 + 16);
    }

    if (v39 >= v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    result = memcmp(v38, v40, v41);
    v42 = v37 < v39;
    if (result)
    {
      v42 = result < 0;
    }

    if (!v42)
    {
      goto LABEL_89;
    }
  }

  else if (v11)
  {
    goto LABEL_89;
  }

  v68 = *a4;
  v14 = *(a4 + 16);
  *&v72 = *(a4 + 24);
  *(&v72 + 7) = *(a4 + 31);
  v15 = *(a4 + 39);
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 24) = 0;
  *a4 = *a5;
  v16 = *(a5 + 32);
  *(a4 + 16) = *(a5 + 16);
  *(a4 + 32) = v16;
  *a5 = v68;
  *(a5 + 16) = v14;
  *(a5 + 24) = v72;
  *(a5 + 31) = *(&v72 + 7);
  *(a5 + 39) = v15;
  v17 = *a4 >= *a3;
  if (*a4 == *a3 && (v18 = *(a4 + 8), v19 = *(a3 + 8), v17 = v18 >= v19, v18 == v19))
  {
    v43 = *(a3 + 39);
    v44 = *(a4 + 39);
    if (v44 >= 0)
    {
      v45 = *(a4 + 39);
    }

    else
    {
      v45 = *(a4 + 24);
    }

    if (v44 >= 0)
    {
      v46 = (a4 + 16);
    }

    else
    {
      v46 = *(a4 + 16);
    }

    if (v43 >= 0)
    {
      v47 = *(a3 + 39);
    }

    else
    {
      v47 = *(a3 + 24);
    }

    if (v43 >= 0)
    {
      v48 = (a3 + 16);
    }

    else
    {
      v48 = *(a3 + 16);
    }

    if (v47 >= v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = v47;
    }

    result = memcmp(v46, v48, v49);
    v50 = v45 < v47;
    if (result)
    {
      v50 = result < 0;
    }

    if (!v50)
    {
      goto LABEL_89;
    }
  }

  else if (v17)
  {
    goto LABEL_89;
  }

  v69 = *a3;
  v20 = *(a3 + 16);
  *&v73 = *(a3 + 24);
  *(&v73 + 7) = *(a3 + 31);
  v21 = *(a3 + 39);
  *(a3 + 16) = 0;
  *(a3 + 32) = 0;
  *(a3 + 24) = 0;
  *a3 = *a4;
  v22 = *(a4 + 32);
  *(a3 + 16) = *(a4 + 16);
  *(a3 + 32) = v22;
  *a4 = v69;
  *(a4 + 16) = v20;
  *(a4 + 24) = v73;
  *(a4 + 31) = *(&v73 + 7);
  *(a4 + 39) = v21;
  v23 = *a3 >= *a2;
  if (*a3 == *a2 && (v24 = *(a3 + 8), v25 = *(a2 + 8), v23 = v24 >= v25, v24 == v25))
  {
    v51 = *(a2 + 39);
    v52 = *(a3 + 39);
    if (v52 >= 0)
    {
      v53 = *(a3 + 39);
    }

    else
    {
      v53 = *(a3 + 24);
    }

    if (v52 >= 0)
    {
      v54 = (a3 + 16);
    }

    else
    {
      v54 = *(a3 + 16);
    }

    if (v51 >= 0)
    {
      v55 = *(a2 + 39);
    }

    else
    {
      v55 = *(a2 + 24);
    }

    if (v51 >= 0)
    {
      v56 = (a2 + 16);
    }

    else
    {
      v56 = *(a2 + 16);
    }

    if (v55 >= v53)
    {
      v57 = v53;
    }

    else
    {
      v57 = v55;
    }

    result = memcmp(v54, v56, v57);
    v58 = v53 < v55;
    if (result)
    {
      v58 = result < 0;
    }

    if (!v58)
    {
      goto LABEL_89;
    }
  }

  else if (v23)
  {
    goto LABEL_89;
  }

  v70 = *a2;
  v26 = *(a2 + 16);
  *&v74 = *(a2 + 24);
  *(&v74 + 7) = *(a2 + 31);
  v27 = *(a2 + 39);
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  *a2 = *a3;
  v28 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v28;
  *a3 = v70;
  *(a3 + 16) = v26;
  *(a3 + 24) = v74;
  *(a3 + 31) = *(&v74 + 7);
  *(a3 + 39) = v27;
  v29 = *a2 >= *a1;
  if (*a2 == *a1 && (v30 = *(a2 + 8), v31 = *(a1 + 8), v29 = v30 >= v31, v30 == v31))
  {
    v59 = *(a1 + 39);
    v60 = *(a2 + 39);
    if (v60 >= 0)
    {
      v61 = *(a2 + 39);
    }

    else
    {
      v61 = *(a2 + 24);
    }

    if (v60 >= 0)
    {
      v62 = (a2 + 16);
    }

    else
    {
      v62 = *(a2 + 16);
    }

    if (v59 >= 0)
    {
      v63 = *(a1 + 39);
    }

    else
    {
      v63 = *(a1 + 24);
    }

    if (v59 >= 0)
    {
      v64 = (a1 + 16);
    }

    else
    {
      v64 = *(a1 + 16);
    }

    if (v63 >= v61)
    {
      v65 = v61;
    }

    else
    {
      v65 = v63;
    }

    result = memcmp(v62, v64, v65);
    v66 = v61 < v63;
    if (result)
    {
      v66 = result < 0;
    }

    if (v66)
    {
      goto LABEL_13;
    }
  }

  else if (!v29)
  {
LABEL_13:
    v71 = *a1;
    v32 = *(a1 + 16);
    *&v75 = *(a1 + 24);
    *(&v75 + 7) = *(a1 + 31);
    v33 = *(a1 + 39);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    v34 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v34;
    *a2 = v71;
    *(a2 + 16) = v32;
    *(a2 + 24) = v75;
    *(a2 + 31) = *(&v75 + 7);
    *(a2 + 39) = v33;
  }

LABEL_89:
  v67 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_298B95C14(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v70[2] = *MEMORY[0x29EDCA608];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_298B94EDC(a1, (a1 + 40), a2 - 40);
        result = 1;
        v18 = *MEMORY[0x29EDCA608];
        return result;
      case 4:
        sub_298B95484(a1, (a1 + 40), a1 + 80, a2 - 40);
        result = 1;
        v52 = *MEMORY[0x29EDCA608];
        return result;
      case 5:
        sub_298B957D0(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
        result = 1;
        v7 = *MEMORY[0x29EDCA608];
        return result;
    }

    goto LABEL_14;
  }

  if (v4 < 2)
  {
    goto LABEL_3;
  }

  if (v4 != 2)
  {
LABEL_14:
    v19 = a1 + 80;
    sub_298B94EDC(a1, (a1 + 40), a1 + 80);
    v20 = a1 + 120;
    if (a1 + 120 == v2)
    {
      goto LABEL_3;
    }

    v21 = 0;
    v22 = 0;
    v63 = v2;
LABEL_19:
    v25 = *v20 >= *v19;
    if (*v20 == *v19 && (v26 = *(v20 + 8), v27 = *(v19 + 8), v25 = v26 >= v27, v26 == v27))
    {
      v43 = *(v19 + 39);
      v44 = *(v20 + 39);
      if (v44 >= 0)
      {
        v45 = *(v20 + 39);
      }

      else
      {
        v45 = *(v20 + 24);
      }

      if (v44 >= 0)
      {
        v46 = (v20 + 16);
      }

      else
      {
        v46 = *(v20 + 16);
      }

      if (v43 >= 0)
      {
        v47 = *(v19 + 39);
      }

      else
      {
        v47 = *(v19 + 24);
      }

      if (v43 >= 0)
      {
        v48 = (v19 + 16);
      }

      else
      {
        v48 = *(v19 + 16);
      }

      if (v47 >= v45)
      {
        v49 = v45;
      }

      else
      {
        v49 = v47;
      }

      v50 = memcmp(v46, v48, v49);
      v51 = v45 < v47;
      if (v50)
      {
        v51 = v50 < 0;
      }

      if (!v51)
      {
        goto LABEL_18;
      }
    }

    else if (v25)
    {
      goto LABEL_18;
    }

    v64 = v22;
    v28 = *(v20 + 16);
    v67 = *v20;
    v29 = *v20;
    v69 = *(v20 + 32);
    v68 = v28;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    *v20 = *v19;
    v23 = v19 + 16;
    *(v20 + 32) = *(v19 + 32);
    *(v20 + 16) = *(v19 + 16);
    *(v19 + 39) = 0;
    *(v19 + 16) = 0;
    v65 = v21;
    while (1)
    {
      v31 = *(a1 + v21 + 40);
      v32 = v29 >= v31;
      if (v29 == v31 && (v33 = *(a1 + v21 + 48), v32 = *(&v67 + 1) >= v33, *(&v67 + 1) == v33))
      {
        v34 = a1 + v21;
        v35 = *(a1 + v21 + 79);
        if (v69 >= 0)
        {
          v36 = HIBYTE(v69);
        }

        else
        {
          v36 = *(&v68 + 1);
        }

        if (v69 >= 0)
        {
          v37 = &v68;
        }

        else
        {
          v37 = v68;
        }

        if (v35 >= 0)
        {
          v38 = *(a1 + v21 + 79);
        }

        else
        {
          v38 = *(a1 + v21 + 64);
        }

        if (v35 >= 0)
        {
          v39 = (a1 + v21 + 56);
        }

        else
        {
          v39 = *(a1 + v21 + 56);
        }

        if (v38 >= v36)
        {
          v40 = v36;
        }

        else
        {
          v40 = v38;
        }

        v41 = memcmp(v37, v39, v40);
        v42 = v36 < v38;
        if (v41)
        {
          v42 = v41 < 0;
        }

        if (!v42)
        {
          v23 = v34 + 96;
          v19 = v34 + 80;
LABEL_17:
          *v19 = v67;
          v21 = v65;
          v24 = v68;
          *(v23 + 16) = v69;
          *v23 = v24;
          v22 = v64 + 1;
          v2 = v63;
          if (v64 == 7)
          {
            result = v20 + 40 == v63;
            v53 = *MEMORY[0x29EDCA608];
          }

          else
          {
LABEL_18:
            v19 = v20;
            v21 += 40;
            v20 += 40;
            if (v20 != v2)
            {
              goto LABEL_19;
            }

LABEL_3:
            result = 1;
            v6 = *MEMORY[0x29EDCA608];
          }

          return result;
        }
      }

      else if (v32)
      {
        goto LABEL_17;
      }

      v23 = v19 - 24;
      v19 -= 40;
      *(a1 + v21 + 80) = *(a1 + v21 + 40);
      v30 = a1 + v21;
      *(v30 + 96) = *(a1 + v21 + 56);
      *(v30 + 112) = *(a1 + v21 + 72);
      *(v30 + 79) = 0;
      *(v30 + 56) = 0;
      v21 -= 40;
      if (v21 == -80)
      {
        v23 = a1 + 16;
        v19 = a1;
        goto LABEL_17;
      }
    }
  }

  v9 = (a2 - 40);
  v8 = *(a2 - 40);
  v10 = v8 >= *a1;
  if (v8 == *a1 && (v11 = *(a2 - 32), v12 = *(a1 + 8), v10 = v11 >= v12, v11 == v12))
  {
    v54 = *(a1 + 39);
    v55 = *(a2 - 1);
    if (v55 >= 0)
    {
      v56 = *(a2 - 1);
    }

    else
    {
      v56 = *(a2 - 16);
    }

    if (v55 >= 0)
    {
      v57 = (a2 - 24);
    }

    else
    {
      v57 = *(a2 - 24);
    }

    if (v54 >= 0)
    {
      v58 = *(a1 + 39);
    }

    else
    {
      v58 = *(a1 + 24);
    }

    if (v54 >= 0)
    {
      v59 = (a1 + 16);
    }

    else
    {
      v59 = *(a1 + 16);
    }

    if (v58 >= v56)
    {
      v60 = v56;
    }

    else
    {
      v60 = v58;
    }

    v61 = memcmp(v57, v59, v60);
    v62 = v56 < v58;
    if (v61)
    {
      v62 = v61 < 0;
    }

    if (!v62)
    {
      goto LABEL_3;
    }
  }

  else if (v10)
  {
    goto LABEL_3;
  }

  v66 = *a1;
  v13 = *(a1 + 16);
  v70[0] = *(a1 + 24);
  *(v70 + 7) = *(a1 + 31);
  v14 = *(a1 + 39);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = *v9;
  v15 = *(v2 - 8);
  *(a1 + 16) = *(v2 - 24);
  *(a1 + 32) = v15;
  *v9 = v66;
  v16 = v70[0];
  *(v2 - 24) = v13;
  *(v2 - 16) = v16;
  *(v2 - 9) = *(v70 + 7);
  result = 1;
  *(v2 - 1) = v14;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

std::recursive_mutex *sub_298B96124(std::recursive_mutex *result)
{
  if (result)
  {
    std::recursive_mutex::~recursive_mutex(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

_BYTE *sub_298B96164(_BYTE *result, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v34 = 0u;
  v35 = 0u;
  if (a5)
  {
    v5 = a5;
    v6 = a4;
    do
    {
      v7 = *v6++;
      *(&v34 + ((v7 >> 3) & 0x18)) |= 1 << v7;
      --v5;
    }

    while (v5);
  }

  if (a2)
  {
    v8 = 0;
    while (((*(&v34 + ((result[v8] >> 3) & 0x18)) >> result[v8]) & 1) != 0)
    {
      if (a2 == ++v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = -1;
  }

  v34 = 0u;
  v35 = 0u;
  if (a5)
  {
    v9 = a5;
    v10 = a4;
    do
    {
      v11 = *v10++;
      *(&v34 + ((v11 >> 3) & 0x18)) |= 1 << v11;
      --v9;
    }

    while (v9);
  }

  if (a2 <= v8)
  {
LABEL_16:
    v12 = -1;
  }

  else
  {
    v12 = v8;
    while (((*(&v34 + ((result[v12] >> 3) & 0x18)) >> result[v12]) & 1) == 0)
    {
      if (a2 == ++v12)
      {
        goto LABEL_16;
      }
    }
  }

  if (a2 >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = a2;
  }

  if (v13 <= v12)
  {
    v8 = v12;
  }

  if (v8 >= a2)
  {
    v8 = a2;
  }

  v14 = v8 - v13;
  if (v8 != v13)
  {
    v15 = &result[v13];
    if (a2 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = a2;
    }

    v17 = &result[v16];
    v18 = a2 - v16;
    v19 = *(a3 + 8);
    v20 = 0uLL;
    do
    {
      if (v19 >= *(a3 + 12))
      {
        v31 = a3;
        v32 = a4;
        v33 = a5;
        result = sub_298B90A44(a3, (a3 + 16), v19 + 1, 16);
        v20 = 0uLL;
        a3 = v31;
        a4 = v32;
        a5 = v33;
        v19 = *(v31 + 8);
      }

      v24 = (*a3 + 16 * v19);
      *v24 = v15;
      v24[1] = v14;
      v19 = *(a3 + 8) + 1;
      *(a3 + 8) = v19;
      v34 = v20;
      v35 = v20;
      if (a5)
      {
        v25 = a5;
        v26 = a4;
        do
        {
          v27 = *v26++;
          *(&v34 + ((v27 >> 3) & 0x18)) |= 1 << v27;
          --v25;
        }

        while (v25);
      }

      if (v18)
      {
        v23 = 0;
        while (((*(&v34 + ((v17[v23] >> 3) & 0x18)) >> v17[v23]) & 1) != 0)
        {
          if (v18 == ++v23)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
LABEL_49:
        v23 = -1;
      }

      v34 = v20;
      v35 = v20;
      if (a5)
      {
        v28 = a5;
        v29 = a4;
        do
        {
          v30 = *v29++;
          *(&v34 + ((v30 >> 3) & 0x18)) |= 1 << v30;
          --v28;
        }

        while (v28);
      }

      v21 = v23;
      if (v18 <= v23)
      {
LABEL_29:
        v21 = -1;
      }

      else
      {
        while (((*(&v34 + ((v17[v21] >> 3) & 0x18)) >> v17[v21]) & 1) == 0)
        {
          if (v18 == ++v21)
          {
            goto LABEL_29;
          }
        }
      }

      if (v18 >= v23)
      {
        v22 = v23;
      }

      else
      {
        v22 = v18;
      }

      if (v22 <= v21)
      {
        v23 = v21;
      }

      if (v23 >= v18)
      {
        v23 = v18;
      }

      v15 = &v17[v22];
      if (v18 < v21)
      {
        v21 = v18;
      }

      v17 += v21;
      v18 -= v21;
      v14 = v23 - v22;
    }

    while (v23 != v22);
  }

  return result;
}

uint64_t sub_298B96440(uint64_t a1, void *__s1, size_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
  }

  else
  {
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    v18 = a1;
    v19 = __s1;
    v20 = a4;
    v21 = a3;
    v22 = sub_298B969E8(0x11uLL, 0xCuLL);
    __s1 = v19;
    a3 = v21;
    a4 = v20;
    v5 = v22;
    a1 = v18;
    v5[16] = 2;
    *v18 = v5;
    v4 = 16;
    *(v18 + 8) = 16;
  }

  v6 = v4 - 1;
  v7 = &v5[v4 + 1];
  if (a3)
  {
    v8 = 1;
    v9 = -1;
    v10 = a4;
    while (1)
    {
      v11 = v10 & v6;
      v12 = v5[v11];
      if (!v12)
      {
        break;
      }

      if (v12 == -8)
      {
        v25 = a1;
        v23 = __s1;
        v26 = a3;
        if (v9 == -1)
        {
          v9 = v11;
        }
      }

      else if (*(v7 + 4 * v11) == a4)
      {
        v23 = __s1;
        v24 = a4;
        if (a3 == *v12)
        {
          v25 = a1;
          v26 = a3;
          v27 = memcmp(__s1, v12 + *(a1 + 20), a3);
          a4 = v24;
          if (!v27)
          {
            return v11;
          }
        }

        else
        {
          v25 = a1;
          v26 = a3;
        }
      }

      else
      {
        v25 = a1;
        v23 = __s1;
        v26 = a3;
      }

      v10 = v8 + v11;
      ++v8;
      a3 = v26;
      __s1 = v23;
      a1 = v25;
    }
  }

  else
  {
    v15 = 1;
    v9 = -1;
    v16 = a4;
    while (1)
    {
      v11 = v16 & v6;
      v17 = v5[v11];
      if (!v17)
      {
        break;
      }

      if (v17 == -8)
      {
        if (v9 == -1)
        {
          v9 = v11;
        }
      }

      else if (*(v7 + 4 * v11) == a4 && !*v17)
      {
        return v11;
      }

      v16 = v15 + v11;
      ++v15;
    }
  }

  v13 = v9;
  if (v9 == -1)
  {
    v13 = v11;
    v11 = v11;
  }

  else
  {
    v11 = v9;
  }

  *(v7 + 4 * v13) = a4;
  return v11;
}

uint64_t sub_298B965F8(uint64_t *a1, const void *a2, size_t a3, unsigned int a4)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1;
  v6 = v4 - 1;
  result = (v4 - 1) & a4;
  v8 = *v5;
  v9 = *v5 + 8 * v4 + 8;
  if (a3)
  {
    v10 = 1;
    v11 = *(v8 + 8 * result);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    while (1)
    {
      if (v11 != -8 && *(v9 + 4 * result) == a4 && a3 == *v11)
      {
        v22 = a2;
        v20 = result;
        v21 = a3;
        v19 = a4;
        v17 = v5;
        v18 = v9;
        v16 = v10;
        v14 = memcmp(a2, v11 + *(v5 + 5), a3);
        v10 = v16;
        v5 = v17;
        v9 = v18;
        a2 = v22;
        a3 = v21;
        v15 = v14;
        a4 = v19;
        result = v20;
        if (!v15)
        {
          break;
        }
      }

      LODWORD(result) = (result + v10++) & v6;
      v11 = *(v8 + 8 * result);
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v12 = 1;
    v13 = *(v8 + 8 * result);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    while (v13 == -8 || *(v9 + 4 * result) != a4 || *v13)
    {
      result = (result + v12++) & v6;
      v13 = *(v8 + 8 * result);
      if (!v13)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

int32x2_t sub_298B9671C(uint64_t *a1, unint64_t *a2)
{
  v4 = *(a1 + 5);
  v5 = *a2;
  v6 = sub_298BA724C((a2 + v4), *a2);
  v8 = *(a1 + 2);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = (v8 - 1) & v6;
    v11 = *a1;
    v12 = *a1 + 8 * v8 + 8;
    if (v5)
    {
      v13 = 1;
      v14 = *(v11 + 8 * v10);
      if (!v14)
      {
        return result;
      }

      while (1)
      {
        if (v14 != -8 && *(v12 + 4 * v10) == v6 && v5 == *v14)
        {
          v21 = v6;
          v22 = v10;
          v19 = v12;
          v20 = v13;
          v17 = memcmp(a2 + v4, v14 + *(a1 + 5), v5);
          v13 = v20;
          v12 = v19;
          v10 = v22;
          v18 = v17;
          v6 = v21;
          if (!v18)
          {
            break;
          }
        }

        v10 = (v10 + v13++) & v9;
        v14 = *(v11 + 8 * v10);
        if (!v14)
        {
          return result;
        }
      }

LABEL_12:
      *(v11 + 8 * v22) = -8;
      result = vadd_s32(*(a1 + 12), 0x1FFFFFFFFLL);
      *(a1 + 12) = result;
      return result;
    }

    v15 = 1;
    v16 = *(v11 + 8 * v10);
    if (v16)
    {
      while (v16 == -8 || *(v12 + 4 * v10) != v6 || *v16)
      {
        v10 = (v10 + v15++) & v9;
        v16 = *(v11 + 8 * v10);
        if (!v16)
        {
          return result;
        }
      }

      v22 = v10;
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_298B96888(_DWORD *a1, uint64_t a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (3 * v4 < 4 * v3)
  {
    v6 = a1;
    v4 *= 2;
  }

  else
  {
    if (v4 - (v3 + a1[4]) > v4 >> 3)
    {
      return a2;
    }

    v6 = a1;
  }

  v7 = malloc_type_calloc(v4 + 1, 0xCuLL, 0x17B874E6uLL);
  if (!v7)
  {
    if (v4 != -1)
    {
      sub_298B86A40("Allocation failed");
    }

    v7 = sub_298B90950(1uLL);
  }

  v8 = &v7[v4];
  *v8 = 2;
  v9 = v8 + 1;
  v10 = *v6;
  v11 = v6[2];
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 8 * v11 + 8;
    v14 = v4 - 1;
    v15 = a2;
    do
    {
      v16 = *(*v6 + 8 * v12);
      if (v16)
      {
        v17 = v16 == -8;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = *(v13 + 4 * v12);
        v19 = v18 & v14;
        if (v7[v19])
        {
          v20 = 1;
          do
          {
            v21 = v19 + v20++;
            v19 = v21 & v14;
          }

          while (v7[v19]);
        }

        v7[v19] = v16;
        *(v9 + v19) = v18;
        if (v12 == v15)
        {
          a2 = v19;
        }

        else
        {
          a2 = a2;
        }
      }

      ++v12;
    }

    while (v12 != v11);
    v22 = v6;
    v10 = *v6;
  }

  else
  {
    v22 = v6;
  }

  free(v10);
  *v22 = v7;
  v22[2] = v4;
  v22[4] = 0;
  return a2;
}

void *sub_298B969E8(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0x17B874E6uLL);
  if (!result)
  {
    if (a1 && a2)
    {
      sub_298B86A40("Allocation failed");
    }

    return sub_298B90950(1uLL);
  }

  return result;
}

uint64_t sub_298B96A54(uint64_t *a1, char *__s2, size_t __n, unint64_t a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v6 = v5 - a4;
  if (v5 < a4)
  {
    goto LABEL_21;
  }

  v7 = a4;
  if (!__n)
  {
LABEL_24:
    result = v7;
    goto LABEL_8;
  }

  if (v6 < __n)
  {
LABEL_21:
    result = -1;
    goto LABEL_8;
  }

  v9 = *a1;
  v10 = (*a1 + a4);
  v11 = __n - 1;
  if (__n == 1)
  {
    v12 = memchr(v10, *__s2, v6);
    if (v12)
    {
      result = v12 - v9;
    }

    else
    {
      result = -1;
    }

    goto LABEL_8;
  }

  v15 = &v10[v6 - __n];
  if (__n == 2)
  {
    result = -1;
    while (*(v9 + v7) != *__s2)
    {
      ++v7;
      if (v9 + v7 - 1 >= v15)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_24;
  }

  if (__n > 0xFF || v6 <= 0xF)
  {
    while (memcmp((v9 + v7), __s2, __n))
    {
      ++v7;
      result = -1;
      if (v9 + v7 - 1 >= v15)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_24;
  }

  v16 = 0;
  v17 = vdupq_n_s8(__n);
  v18 = v15 + 1;
  v24[14] = v17;
  v24[15] = v17;
  v24[12] = v17;
  v24[13] = v17;
  v24[10] = v17;
  v24[11] = v17;
  v24[8] = v17;
  v24[9] = v17;
  v24[6] = v17;
  v24[7] = v17;
  v24[4] = v17;
  v24[5] = v17;
  v24[2] = v17;
  v24[3] = v17;
  v19 = v11;
  v24[0] = v17;
  v24[1] = v17;
  do
  {
    *(v24 + __s2[v16++]) = v19--;
  }

  while (v11 != v16);
  v20 = __s2[v11];
  while (1)
  {
    v21 = v10[v11];
    if (v21 == v20)
    {
      v22 = v10;
      v23 = memcmp(v10, __s2, v11);
      v10 = v22;
      if (!v23)
      {
        break;
      }
    }

    v10 += *(v24 + v21);
    if (v10 >= v18)
    {
      goto LABEL_21;
    }
  }

  result = &v22[-v9];
LABEL_8:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B96C28(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t sub_298B96CA8(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t sub_298B96D28(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

uint64_t sub_298B96DB8(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

_OWORD *sub_298B96E48(_OWORD *result, uint64_t a2, char *__s2, size_t __n, int a5, char a6)
{
  v27 = *result;
  if (a5)
  {
    v8 = a5;
    v11 = *(&v27 + 1);
    if (a6)
    {
      do
      {
        result = sub_298B96A54(&v27, __s2, __n, 0);
        if (result == -1)
        {
          break;
        }

        v12 = v27;
        if (result >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = result;
        }

        v14 = *(a2 + 8);
        if (v14 >= *(a2 + 12))
        {
          v17 = result;
          sub_298B90A44(a2, (a2 + 16), v14 + 1, 16);
          result = v17;
          v14 = *(a2 + 8);
        }

        v15 = (*a2 + 16 * v14);
        *v15 = v12;
        v15[1] = v13;
        ++*(a2 + 8);
        v16 = result + __n;
        if (v11 < result + __n)
        {
          v16 = v11;
        }

        v11 -= v16;
        *&v27 = v12 + v16;
        *(&v27 + 1) = v11;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        result = sub_298B96A54(&v27, __s2, __n, 0);
        if (result == -1)
        {
          break;
        }

        v20 = v27;
        if (result)
        {
          if (result >= v11)
          {
            v21 = v11;
          }

          else
          {
            v21 = result;
          }

          v22 = *(a2 + 8);
          if (v22 >= *(a2 + 12))
          {
            v23 = result;
            sub_298B90A44(a2, (a2 + 16), v22 + 1, 16);
            result = v23;
            v22 = *(a2 + 8);
          }

          v18 = (*a2 + 16 * v22);
          *v18 = v20;
          v18[1] = v21;
          ++*(a2 + 8);
        }

        v19 = result + __n;
        if (v11 < result + __n)
        {
          v19 = v11;
        }

        v11 -= v19;
        *&v27 = v20 + v19;
        *(&v27 + 1) = v11;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v11 = *(&v27 + 1);
  }

  if ((a6 & 1) != 0 || v11)
  {
    v24 = v27;
    v25 = *(a2 + 8);
    if (v25 >= *(a2 + 12))
    {
      result = sub_298B90A44(a2, (a2 + 16), v25 + 1, 16);
      LODWORD(v25) = *(a2 + 8);
    }

    v26 = (*a2 + 16 * v25);
    *v26 = v24;
    v26[1] = v11;
    ++*(a2 + 8);
  }

  return result;
}

char *sub_298B9702C(char *result, uint64_t a2, uint64_t __c, int a4, uint64_t a5)
{
  v5 = *result;
  v6 = *(result + 1);
  if (!a4)
  {
LABEL_2:
    if ((a5 & 1) == 0 && !v6)
    {
      return result;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v7 = a5;
    v8 = a2;
    if (!v6)
    {
      break;
    }

    v9 = a4;
    v10 = __c;
    result = memchr(v5, __c, v6);
    if (!result)
    {
      a2 = v8;
      goto LABEL_16;
    }

    v11 = result - v5;
    a2 = v8;
    if (result - v5 == -1)
    {
      goto LABEL_16;
    }

    a5 = v7;
    v12 = v9;
    __c = v10;
    if (result != v5 || v7)
    {
      if (v11 >= v6)
      {
        v16 = v6;
      }

      else
      {
        v16 = result - v5;
      }

      v17 = v8[2];
      if (v17 >= v8[3])
      {
        v20 = result - v5;
        v21 = v16;
        result = sub_298B90A44(v8, v8 + 4, v17 + 1, 16);
        v11 = v20;
        v16 = v21;
        __c = v10;
        v12 = v9;
        a5 = v7;
        a2 = v8;
        v17 = v8[2];
      }

      v18 = (*a2 + 16 * v17);
      *v18 = v5;
      v18[1] = v16;
      ++*(a2 + 8);
    }

    if (v6 >= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v6;
    }

    v5 += v13;
    v6 -= v13;
    a4 = v12 - 1;
    if (!a4)
    {
      goto LABEL_2;
    }
  }

  if (a5)
  {
    v6 = 0;
LABEL_16:
    v14 = *(a2 + 8);
    if (v14 >= *(a2 + 12))
    {
      v19 = a2;
      result = sub_298B90A44(a2, (a2 + 16), v14 + 1, 16);
      a2 = v19;
      LODWORD(v14) = *(v19 + 8);
    }

    v15 = (*a2 + 16 * v14);
    *v15 = v5;
    v15[1] = v6;
    ++*(a2 + 8);
  }

  return result;
}

uint64_t sub_298B971A4(unsigned __int8 **a1, unsigned int a2, unint64_t *a3)
{
  if (!a2)
  {
    v13 = a1;
    v14 = a3;
    v15 = sub_298B97294(a1);
    a3 = v14;
    a2 = v15;
    a1 = v13;
  }

  v3 = a1[1];
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  v5 = *a1;
  *a3 = 0;
  v6 = v3;
  do
  {
    if (*v5 < 48)
    {
      break;
    }

    v7 = *v5;
    if (v7 >= 0x3A)
    {
      if (v7 < 0x61)
      {
        if (v7 - 65 > 0x19)
        {
          break;
        }

        v8 = -55;
      }

      else
      {
        if (v7 >= 0x7B)
        {
          break;
        }

        v8 = -87;
      }
    }

    else
    {
      v8 = -48;
    }

    v9 = v8 + v7;
    if (v9 >= a2)
    {
      break;
    }

    v10 = v4 * a2 + v9;
    *a3 = v10;
    if (v10 / a2 < v4)
    {
      return 1;
    }

    ++v5;
    v4 = v10;
    --v6;
  }

  while (v6);
  if (v3 == v6)
  {
    return 1;
  }

  v11 = 0;
  *a1 = v5;
  a1[1] = v6;
  return v11;
}

uint64_t sub_298B97294(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 10;
  }

  if ((sub_298B974C8(a1, "0x", 2uLL) & 1) == 0)
  {
    v2 = 2;
    if (sub_298B974C8(a1, "0b", 2uLL))
    {
      return v2;
    }

    if (sub_298B8BD60(a1, "0o", 2uLL))
    {
      return 8;
    }

    v4 = *a1;
    if (**a1 == 48)
    {
      v5 = *(a1 + 8);
      if (v5 >= 2)
      {
        v7 = v4[1];
        v6 = v4 + 1;
        if ((v7 - 48) <= 9)
        {
          *a1 = v6;
          *(a1 + 8) = v5 - 1;
          return 8;
        }
      }
    }

    return 10;
  }

  return 16;
}

BOOL sub_298B97354(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unint64_t *a4)
{
  if (a3)
  {
LABEL_2:
    if (a2)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 == 1)
  {
    goto LABEL_24;
  }

  v12 = *a1;
  if ((v12 - 65) >= 0x1A)
  {
    v13 = *a1;
  }

  else
  {
    v13 = v12 + 32;
  }

  if (v13 == 48)
  {
    v14 = a1[1];
    if ((v14 - 65) < 0x1A)
    {
      v14 += 32;
    }

    if (v14 == 98)
    {
      a1 += 2;
      a2 -= 2;
      a3 = 2;
      goto LABEL_2;
    }

    if (v14 == 120)
    {
      a1 += 2;
      a2 -= 2;
      a3 = 16;
      goto LABEL_2;
    }
  }

  if (*a1 == 28464)
  {
    a1 += 2;
    a2 -= 2;
    a3 = 8;
    goto LABEL_2;
  }

  if (v12 != 48)
  {
LABEL_24:
    a3 = 10;
  }

  else
  {
    v15 = a1[1] - 48;
    if (v15 <= 9)
    {
      a3 = 8;
    }

    else
    {
      a3 = 10;
    }

    if (v15 <= 9)
    {
      ++a1;
      --a2;
    }
  }

LABEL_3:
  v4 = 0;
  *a4 = 0;
  v5 = a2;
  do
  {
    if (*a1 < 48)
    {
      break;
    }

    v6 = *a1;
    if (v6 >= 0x3A)
    {
      if (v6 < 0x61)
      {
        if (v6 - 65 > 0x19)
        {
          break;
        }

        v7 = -55;
      }

      else
      {
        if (v6 >= 0x7B)
        {
          break;
        }

        v7 = -87;
      }
    }

    else
    {
      v7 = -48;
    }

    v8 = v7 + v6;
    if (v8 >= a3)
    {
      break;
    }

    v9 = v4 * a3 + v8;
    *a4 = v9;
    if (v9 / a3 < v4)
    {
      return 1;
    }

    ++a1;
    v4 = v9;
    --v5;
  }

  while (v5);
  if (a2)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 0;
  }

  return !v10;
}

uint64_t sub_298B974C8(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a3;
  v5 = v3 - a3;
  if (!v4)
  {
    return 0;
  }

  if (a3)
  {
    v7 = a3;
    v8 = *a1;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v11 = v10 + 32;
      v4 = (v10 - 65) >= 0x1A;
      v13 = *a2++;
      v12 = v13;
      if (!v4)
      {
        v9 = v11;
      }

      if ((v12 - 65) < 0x1A)
      {
        v12 += 32;
      }

      if (v9 != v12)
      {
        return 0;
      }
    }

    while (--v7);
  }

  *a1 += a3;
  a1[1] = v5;
  return 1;
}

unint64_t sub_298B97534(void *a1, uint64_t a2)
{
  v4 = sub_298B97604();
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v10 = a2 - a1;
    v7 = v5 & 0xFFFFFFFFFFFFFFC0;
    sub_298B97684(a1, v4, v11);
    v8 = v7 - 64;
    if (v8)
    {
      v9 = a1 + 8;
      do
      {
        sub_298B3F664(v11, v9);
        v9 += 8;
        v8 -= 64;
      }

      while (v8);
    }

    if ((v10 & 0x3F) != 0)
    {
      sub_298B3F664(v11, (a2 - 64));
    }

    return sub_298B977AC(v11, v10);
  }

  else
  {

    return sub_298B40118(a1, v5, v4);
  }
}

uint64_t sub_298B97604()
{
  v0 = 0x2A13C2000uLL;
  if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A13C2B18);
    v0 = 0x2A13C2000uLL;
    if (v2)
    {
      v3 = qword_2A13C3658;
      if (!qword_2A13C3658)
      {
        v3 = 0xFF51AFD7ED558CCDLL;
      }

      qword_2A13C2B10 = v3;
      __cxa_guard_release(&qword_2A13C2B18);
      v0 = 0x2A13C2000;
    }
  }

  return *(v0 + 2832);
}

uint64_t sub_298B97684@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a2 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (a2 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v4 = v3 ^ (v3 >> 47);
  v5 = __ROR8__(a2 ^ 0xB492B66FBE98F273, 49);
  v6 = a2 ^ (a2 >> 47);
  v7 = 0x9DDFEA08EB382D69 * (a2 ^ (((0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a2))) ^ a2) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a2))));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = v5 + a2;
  v11 = a1[6];
  v10 = a1[7];
  v12 = v5 - 0x4B6D499041670D8DLL * __ROR8__(v11 + a2 - 0x4B6D499041670D8DLL * a2, 42);
  v13 = a1[1];
  v14 = (0xB492B66FBE98F273 * __ROR8__(v9 + v13, 37)) ^ v8;
  v15 = v6 - 0x622015F714C7D297 * v4;
  v16 = *a1 - 0x6D8ED9027DD26057 * a2;
  v18 = a1[4];
  v17 = a1[5];
  v19 = v12 + v17;
  v20 = 0xB492B66FBE98F273 * __ROR8__(v15, 33);
  v21 = v16 + v6;
  v24 = a1 + 2;
  v22 = a1[2];
  v23 = v24[1];
  v25 = v16 + v13 + v22;
  v26 = v18 + v8 + v20;
  result = __ROR8__(v26 + v22 + v19 + v10, 21);
  v28 = v17 + v11 + v26;
  a3[6] = result + v26 + __ROR8__(v28, 44);
  a3[4] = __ROR8__(v21 + v23 + v14, 21) + v16 + __ROR8__(v25, 44);
  a3[5] = v28 + v10;
  a3[2] = v14;
  a3[3] = v25 + v23;
  *a3 = v20;
  a3[1] = v19;
  return result;
}

unint64_t sub_298B977AC(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * (a1[5] ^ ((0x9DDFEA08EB382D69 * (a1[5] ^ a1[3])) >> 47) ^ (0x9DDFEA08EB382D69 * (a1[5] ^ a1[3])));
  v3 = 0x9DDFEA08EB382D69 * (a1[6] ^ ((0x9DDFEA08EB382D69 * (a1[6] ^ a1[4])) >> 47) ^ (0x9DDFEA08EB382D69 * (a1[6] ^ a1[4])));
  v4 = *a1 - 0x4B6D499041670D8DLL * (a2 ^ (a2 >> 47)) - 0x622015F714C7D297 * (v3 ^ (v3 >> 47));
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (a1[2] - 0x4B6D499041670D8DLL * (a1[1] ^ (a1[1] >> 47)) - 0x622015F714C7D297 * (v2 ^ (v2 >> 47))));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

uint64_t sub_298B97844(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *a1 = &unk_2A1F1DDA8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_298BAE700((a1 + 32));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1018212795;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 292) = a2;
  *(a1 + 300) = sub_298BB07F4(&v5);
  return a1;
}

uint64_t sub_298B97910(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 96);
  do
  {
    v60 = 0;
    v58 = 0;
    __lk.__m_ = v4;
    __lk.__owns_ = 1;
    std::mutex::lock(v4);
    if (*(a1 + 288) == 1)
    {
      if (a2)
      {
        while (!*(a1 + 88))
        {
          if (sub_298B97F1C(a1, a2))
          {
            goto LABEL_11;
          }

          std::condition_variable::wait((a1 + 160), &__lk);
          if ((*(a1 + 288) & 1) == 0)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        while (!*(a1 + 88))
        {
          std::condition_variable::wait((a1 + 160), &__lk);
          if ((*(a1 + 288) & 1) == 0)
          {
            goto LABEL_43;
          }
        }
      }
    }

    else
    {
LABEL_43:
      if (!*(a1 + 88))
      {
LABEL_11:
        v5 = 0;
        v6 = 0;
        goto LABEL_12;
      }
    }

    ++*(a1 + 256);
    v30 = *(a1 + 80);
    v31 = *(*(a1 + 56) + 8 * (v30 / 0x66));
    v32 = v60;
    v60 = 0;
    if (v32 == v59)
    {
      (*(*v32 + 32))(v32);
    }

    else if (v32)
    {
      (*(*v32 + 40))(v32);
    }

    v33 = v31 + 40 * (v30 % 0x66);
    v34 = *(v33 + 24);
    if (v34)
    {
      if (v34 == v33)
      {
        v60 = v59;
        (*(**(v33 + 24) + 24))(*(v33 + 24), v59);
      }

      else
      {
        v60 = *(v33 + 24);
        *(v33 + 24) = 0;
      }
    }

    else
    {
      v60 = 0;
    }

    v35 = *(a1 + 80);
    v36 = *(*(a1 + 56) + 8 * (v35 / 0x66));
    v37 = v35 % 0x66;
    v5 = *(v36 + 40 * v37 + 32);
    v58 = v5;
    if (v5)
    {
      v38 = *(a1 + 280);
      if (v38)
      {
        v39 = *(a1 + 264);
        v40 = v38 - 1;
        v41 = v40 & ((v5 >> 4) ^ (v5 >> 9));
        v42 = (v39 + 16 * v41);
        v43 = *v42;
        if (v5 == *v42)
        {
LABEL_53:
          ++*(v42 + 2);
          goto LABEL_54;
        }

        v50 = 0;
        v51 = 1;
        while (v43 != -4096)
        {
          if (v50)
          {
            v53 = 0;
          }

          else
          {
            v53 = v43 == -8192;
          }

          if (v53)
          {
            v50 = v42;
          }

          v54 = v41 + v51++;
          v41 = v54 & v40;
          v42 = (v39 + 16 * v41);
          v43 = *v42;
          if (v5 == *v42)
          {
            goto LABEL_53;
          }
        }

        if (v50)
        {
          v47 = v50;
        }

        else
        {
          v47 = v42;
        }
      }

      else
      {
        v47 = 0;
      }

      v42 = sub_298B995E4(a1 + 264, &v58, v47);
      *v42 = v5;
      *(v42 + 2) = 0;
      v48 = *(a1 + 80);
      v49 = v48 / 0x66;
      v37 = v48 % 0x66;
      v36 = *(*(a1 + 56) + 8 * v49);
      goto LABEL_53;
    }

LABEL_54:
    v44 = v36 + 40 * v37;
    v45 = *(v44 + 24);
    if (v45 == v44)
    {
      (*(*v45 + 32))(v45);
    }

    else if (v45)
    {
      (*(*v45 + 40))(v45);
    }

    v46 = vaddq_s64(*(a1 + 80), xmmword_298D1ABB0);
    *(a1 + 80) = v46;
    if (v46.i64[0] >= 0xCCuLL)
    {
      operator delete(**(a1 + 56));
      *(a1 + 56) += 8;
      *(a1 + 80) -= 102;
    }

    v6 = 1;
LABEL_12:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (v6)
    {
      if (!v60)
      {
        sub_298AE761C();
        goto LABEL_40;
      }

      (*(*v60 + 48))(v60);
      std::mutex::lock(v4);
      v8 = *(a1 + 256) - 1;
      *(a1 + 256) = v8;
      if (!v5)
      {
        if (v8)
        {
          goto LABEL_23;
        }

LABEL_40:
        v28 = *(a1 + 88);
        std::mutex::unlock(v4);
        if (v28)
        {
          goto LABEL_15;
        }

        v29 = (a1 + 208);
LABEL_42:
        std::condition_variable::notify_all(v29);
        goto LABEL_15;
      }

      v10 = *(a1 + 264);
      v11 = *(a1 + 280);
      v12 = v5 >> 4;
      if (v11)
      {
        LODWORD(v13) = (v11 - 1) & (v12 ^ (v5 >> 9));
        v14 = (v10 + 16 * v13);
        v15 = *v14;
        if (*v14 == v5)
        {
LABEL_27:
          v16 = *(v14 + 2) - 1;
          *(v14 + 2) = v16;
          if (!v16)
          {
            *v14 = -8192;
            *(a1 + 272) = vadd_s32(*(a1 + 272), 0x1FFFFFFFFLL);
            v10 = *(a1 + 264);
          }

          if (v11)
          {
            v17 = v11 - 1;
            v18 = v17 & (v12 ^ (v5 >> 9));
            v19 = *(v10 + 16 * v18);
            if (v19 == v5)
            {
LABEL_23:
              std::mutex::unlock(v4);
              goto LABEL_15;
            }

            v20 = 1;
            while (v19 != -4096)
            {
              v55 = v18 + v20++;
              v18 = v55 & v17;
              v19 = *(v10 + 16 * v18);
              if (v19 == v5)
              {
                goto LABEL_23;
              }
            }
          }

          v21 = *(a1 + 56);
          if (*(a1 + 64) != v21)
          {
            v22 = *(a1 + 80);
            v23 = (v21 + 8 * (v22 / 0x66));
            v24 = *v23;
            v25 = *v23 + 40 * (v22 % 0x66);
            v26 = *(v21 + 8 * ((*(a1 + 88) + v22) / 0x66)) + 40 * ((*(a1 + 88) + v22) % 0x66);
            while (v25 != v26)
            {
              if (*(v25 + 32) == v5)
              {
                goto LABEL_23;
              }

              v25 += 40;
              if (v25 - v24 == 4080)
              {
                v27 = v23[1];
                ++v23;
                v24 = v27;
                v25 = v27;
              }
            }
          }

          std::mutex::unlock(v4);
          std::condition_variable::notify_all((a1 + 208));
          v29 = (a1 + 160);
          goto LABEL_42;
        }

        v52 = 1;
        while (v15 != -4096)
        {
          v56 = v13 + v52++;
          v13 = v56 & (v11 - 1);
          v15 = *(v10 + 16 * v13);
          if (v15 == v5)
          {
            v14 = (v10 + 16 * v13);
            goto LABEL_27;
          }
        }
      }

      v14 = (v10 + 16 * v11);
      goto LABEL_27;
    }

LABEL_15:
    result = v60;
    if (v60 == v59)
    {
      result = (*(*v60 + 32))(v60);
    }

    else if (v60)
    {
      result = (*(*v60 + 40))();
    }
  }

  while ((v6 & 1) != 0);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_298B97F1C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (!*(a1 + 256))
    {
      return *(a1 + 88) == 0;
    }

    return 0;
  }

  v2 = *(a1 + 280);
  if (v2)
  {
    v3 = *(a1 + 264);
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v3 + 16 * v5);
    if (v6 == a2)
    {
      return 0;
    }

    v9 = 1;
    while (v6 != -4096)
    {
      v7 = 0;
      v19 = v5 + v9++;
      v5 = v19 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a2)
      {
        return v7;
      }
    }
  }

  v10 = *(a1 + 56);
  if (*(a1 + 64) == v10)
  {
    return 1;
  }

  v11 = *(a1 + 80);
  v12 = (v10 + 8 * (v11 / 0x66));
  v13 = *v12;
  v14 = *v12 + 40 * (v11 % 0x66);
  v15 = *(v10 + 8 * ((*(a1 + 88) + v11) / 0x66)) + 40 * ((*(a1 + 88) + v11) % 0x66);
  if (v14 == v15)
  {
    return 1;
  }

  do
  {
    v16 = *(v14 + 32);
    v17 = v16 == a2;
    v7 = v16 != a2;
    if (v17)
    {
      break;
    }

    v14 += 40;
    if (v14 - v13 == 4080)
    {
      v18 = v12[1];
      ++v12;
      v13 = v18;
      v14 = v18;
    }
  }

  while (v14 != v15);
  return v7;
}

uint64_t sub_298B9803C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 == result)
  {
    v2 = result;
    (*(*v1 + 32))(*(result + 24));
  }

  else
  {
    if (!v1)
    {
      return result;
    }

    v2 = result;
    (*(*v1 + 40))(*(result + 24));
  }

  return v2;
}

void sub_298B980C8(uint64_t a1)
{
  v2.__m_ = (a1 + 96);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 96));
  while (*(a1 + 256) || *(a1 + 88))
  {
    std::condition_variable::wait((a1 + 208), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void sub_298B98138(uint64_t a1, uint64_t a2)
{
  pthread_rwlock_rdlock(*(a1 + 32));
  v4 = pthread_self();
  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    if (v4 == *i)
    {
      pthread_rwlock_unlock(*(a1 + 32));

      sub_298B97910(a1, a2);
      return;
    }
  }

  pthread_rwlock_unlock(*(a1 + 32));
  v6.__m_ = (a1 + 96);
  v6.__owns_ = 1;
  std::mutex::lock((a1 + 96));
  if (sub_298B97F1C(a1, a2))
  {
    goto LABEL_11;
  }

  do
  {
    std::condition_variable::wait((a1 + 208), &v6);
  }

  while (!sub_298B97F1C(a1, a2));
  if (v6.__owns_)
  {
LABEL_11:
    std::mutex::unlock(v6.__m_);
  }
}

uint64_t sub_298B98218(uint64_t a1)
{
  *a1 = &unk_2A1F1DDA8;
  std::mutex::lock((a1 + 96));
  *(a1 + 288) = 0;
  std::mutex::unlock((a1 + 96));
  std::condition_variable::notify_all((a1 + 160));
  pthread_rwlock_rdlock(*(a1 + 32));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v2 != v3)
  {
    sub_298BB0A98(*v2);
    *v2++ = 0;
  }

  pthread_rwlock_unlock(*(a1 + 32));
  MEMORY[0x29C2945E0](*(a1 + 264), 8);
  std::condition_variable::~condition_variable((a1 + 208));
  std::condition_variable::~condition_variable((a1 + 160));
  std::mutex::~mutex((a1 + 96));
  sub_298B98D00((a1 + 48));
  sub_298BAE768((a1 + 32));
  sub_298B98CAC((a1 + 8));
  return a1;
}

void sub_298B982F4(uint64_t a1)
{
  sub_298B98218(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298B9832C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 == a2)
    {
      *(result + 24) = result;
      v3 = result;
      (*(**(a2 + 24) + 24))(*(a2 + 24), result);
      return v3;
    }

    else
    {
      *(result + 24) = v2;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_298B983AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 96));
  v6 = *(a2 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      v19 = &v17;
      (*(*v6 + 24))(v6, &v17);
    }

    else
    {
      v19 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = a3;
  sub_298B98588((a1 + 48), &v17);
  if (v19 == &v17)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  v7 = *(a1 + 256);
  v8 = *(a1 + 88);
  std::mutex::unlock((a1 + 96));
  std::condition_variable::notify_one((a1 + 160));
  pthread_rwlock_wrlock(*(a1 + 32));
  v9 = *(a1 + 16);
  v10 = v9 - *(a1 + 8);
  v11 = *(a1 + 300);
  if (v11 > v10 >> 3)
  {
    v12 = v11 >= v7 + v8 ? v7 + v8 : *(a1 + 300);
    v13 = v10 >> 3;
    if (v12 > v13)
    {
      v17 = a1;
      v18 = v13;
      v14 = (a1 + 8);
      if (v9 < *(a1 + 24))
      {
        sub_298B98F3C(v14);
      }

      sub_298B98FD8(v14);
    }
  }

  result = pthread_rwlock_unlock(*(a1 + 32));
  v16 = *MEMORY[0x29EDCA608];
  return result;
}