uint64_t sub_10000EFC8(uint64_t a1, CFDictionaryRef theDict)
{
  v10 = 0;
  Value = CFDictionaryGetValue(theDict, @"lease_max");
  v5 = sub_100008A7C(Value, &v10);
  v6 = v10;
  if (!v5)
  {
    v6 = 86400;
  }

  *(a1 + 32) = v6;
  v7 = CFDictionaryGetValue(theDict, @"lease_min");
  result = sub_100008A7C(v7, &v10);
  v9 = v10;
  if (!v10)
  {
    v9 = 3600;
  }

  if (!result)
  {
    v9 = 3600;
  }

  *(a1 + 28) = v9;
  if (*(a1 + 32) < v9)
  {
    *(a1 + 32) = v9;
  }

  return result;
}

BOOL sub_10000F06C(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"allocate");
  TypeID = CFBooleanGetTypeID();
  return Value && CFGetTypeID(Value) == TypeID && CFBooleanGetValue(Value) != 0;
}

uint64_t sub_10000F0CC(const __CFArray *a1, uint64_t a2, int a3)
{
  Count = CFArrayGetCount(a1);
  v7 = 16 * Count;
  if (16 * Count > a3)
  {
    syslog(5, "copyOptionsDataArrayToOptionTLVList %d < %d");
    return 0;
  }

  v8 = Count;
  if (Count >= 1)
  {
    v9 = 0;
    v10 = (a2 + v7);
    v11 = a3 - v7;
    for (i = (a2 + 8); ; i += 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
      valuePtr = 0;
      Value = CFDictionaryGetValue(ValueAtIndex, @"Data");
      v15 = CFDictionaryGetValue(ValueAtIndex, @"Tag");
      CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
      Length = CFDataGetLength(Value);
      *(i - 2) = valuePtr;
      *(i - 1) = Length;
      *i = v10;
      if (v11 < Length)
      {
        break;
      }

      BytePtr = CFDataGetBytePtr(Value);
      memcpy(v10, BytePtr, Length);
      v10 += Length;
      ++v9;
      v11 -= Length;
      if (v8 == v9)
      {
        return a2;
      }
    }

    syslog(5, "copyOptionsDataArrayToOptionTLVList option %d < %d");
    return 0;
  }

  return a2;
}

CFDataRef sub_10000F214(int a1, unsigned int a2)
{
  result = 0;
  bytes = 0;
  if (a1 > 4)
  {
    if ((a1 - 5) >= 2)
    {
      return result;
    }

    v8 = bswap32(a2);
    p_bytes = &v8;
    v5 = 4;
  }

  else
  {
    switch(a1)
    {
      case 2:
        bytes = a2 != 0;
        break;
      case 3:
        bytes = a2;
        break;
      case 4:
        v6 = bswap32(a2) >> 16;
        p_bytes = &v6;
        v5 = 2;
        return CFDataCreate(0, p_bytes, v5);
      default:
        return result;
    }

    p_bytes = &bytes;
    v5 = 1;
  }

  return CFDataCreate(0, p_bytes, v5);
}

void *sub_10000F2C0(unsigned int a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x30uLL, 0x10A0040A76AC297uLL);
  if (v4)
  {
    *v4 = sub_10000FF90(a1, a2);
    v4[1] = v5;
    v4[4] = 0;
    v4[5] = 0;
  }

  return v4;
}

void sub_10000F324(uint64_t a1)
{
  sub_10000FF24(a1);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;

  free(a1);
}

void *sub_10000F368(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  *(result + 4) = 256;
  return result;
}

void sub_10000F37C(uint64_t a1, int a2)
{
  if (a2 <= 10)
  {
    v2 = 10;
  }

  else
  {
    v2 = a2;
  }

  *(a1 + 16) = v2;
  v3 = *(a1 + 20);
  v4 = v3 - v2;
  if (v3 > v2)
  {
    if (v4 <= 0)
    {
      *(a1 + 8) = 0;
      v8 = a1;
    }

    else
    {
      v6 = *(a1 + 8);
      do
      {
        v7 = v6;
        v6 = *(v6 + 40);
        sub_10000FF24(v7);
        *(v7 + 16) = 0u;
        *(v7 + 32) = 0u;
        *v7 = 0u;
        free(v7);
        --v4;
      }

      while (v4);
      *(a1 + 8) = v6;
      v8 = (v6 + 32);
      if (!v6)
      {
        v8 = a1;
      }
    }

    *v8 = 0;
    *(a1 + 20) = *(a1 + 16);
  }
}

void sub_10000F420(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *(v2 + 32);
      sub_10000FF24(v2);
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *v2 = 0u;
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t *sub_10000F480(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    *(a2 + 32) = *result;
    *(a2 + 40) = 0;
    if (v2)
    {
      v3 = (v2 + 40);
    }

    else
    {
      v3 = result + 1;
    }

    *v3 = a2;
    *result = a2;
    ++*(result + 5);
  }

  return result;
}

uint64_t sub_10000F4B4(uint64_t a1, char *__filename)
{
  v23 = 0;
  v24 = 0;
  v3 = fopen(__filename, "r");
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
LABEL_3:
    v7 = v5;
    while (1)
    {
      v8 = 1023;
      v9 = __s;
      do
      {
        v10 = fgetc(v4);
        if ((v10 + 1) < 2)
        {
          break;
        }

        if (v8 >= 1)
        {
          *v9++ = v10;
          --v8;
        }
      }

      while (v10 != 10);
      if (v9 == __s)
      {
        break;
      }

      *v9 = 0;
      ++v6;
      if (!(*__s ^ 0xA7B | v32))
      {
        v5 = 1;
        if (v7 && v7 != 3)
        {
          fprintf(__stderrp, "unexpected '{' at line %d\n");
          goto LABEL_35;
        }

        goto LABEL_3;
      }

      if (!(*__s ^ 0xA7D | v32))
      {
        if ((v7 - 3) <= 0xFFFFFFFD)
        {
          fprintf(__stderrp, "unexpected '}' at line %d\n");
          goto LABEL_35;
        }

        v5 = 3;
        if (v23)
        {
          v17 = sub_10000F2C0(v23, v24);
          if (v17)
          {
            v17[4] = 0;
            v18 = *(a1 + 8);
            v17[5] = v18;
            v19 = (v18 + 32);
            if (!*a1)
            {
              v19 = a1;
            }

            *v19 = v17;
            *(a1 + 8) = v17;
            ++*(a1 + 20);
          }

          sub_10000FF24(&v23);
          v5 = 3;
        }

        goto LABEL_3;
      }

      bzero(v29, 0x300uLL);
      v11 = strlen(__s);
      v12 = strchr(__s, 61);
      v13 = strspn(__s, " \t\n");
      if (v13 != v11)
      {
        if (v12)
        {
          v14 = v12 - __s;
          v15 = v14 - v13;
          if (v14 - v13 >= 0x80)
          {
            v15 = 127;
            fprintf(__stderrp, "property name truncated to %d bytes at line %d\n", 127, v6);
            v14 = v12 - __s;
          }

          v16 = v11 - v14 - 2;
          if (v16 >= 0x300)
          {
            v16 = 767;
            fprintf(__stderrp, "value truncated to %d bytes at line %d\n", 767, v6);
          }

          __strncpy_chk();
          v30[v15] = 0;
          __strncpy_chk();
          v29[v16] = 0;
          v28 = 0;
          v27 = v30;
          sub_1000101A8(&v27 + 2, v29, 0);
        }

        else
        {
          v20 = ~v13 + v11;
          if (v20 >= 0x80)
          {
            v20 = 127;
            fprintf(__stderrp, "property name truncated to %d bytes at line %d\n", 127, v6);
          }

          __strncpy_chk();
          v30[v20] = 0;
          *(&v27 + 1) = 0;
          v28 = 0;
          *&v27 = v30;
        }

        v25 = v27;
        v26 = v28;
        sub_10000FD30(&v23, &v25, 0xFFFFFFFFFFFFFFFFLL);
        sub_10001013C(&v27 + 1);
        v5 = 2;
        goto LABEL_3;
      }
    }

    if ((v7 - 1) <= 1)
    {
      fwrite("file ends prematurely\n", 0x16uLL, 1uLL, __stderrp);
    }

LABEL_35:
    fclose(v4);
  }

  else
  {
    perror(__filename);
  }

  sub_10000FF24(&v23);
  return 1;
}

uint64_t sub_10000F864(unsigned int **a1, const std::__fs::filesystem::path *a2)
{
  snprintf(__str, 0x100uLL, "%s-", a2);
  v4 = fopen(__str, "w");
  if (v4)
  {
    v5 = v4;
    for (i = *a1; i; i = *(i + 4))
    {
      fwrite("{\n", 2uLL, 1uLL, v5);
      if (*i)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = (*(i + 1) + v7);
          v10 = *v9;
          if (*(v9 + 2))
          {
            v14 = *v9[2];
            fprintf(v5, "\t%s=%s\n");
          }

          else
          {
            v13 = *v9;
            fprintf(v5, "\t%s\n");
          }

          ++v8;
          v7 += 24;
        }

        while (v8 < *i);
      }

      fwrite("}\n", 2uLL, 1uLL, v5);
    }

    fclose(v5);
    rename(__str, a2, v11);
    return 1;
  }

  else
  {
    perror(__str);
    return 0;
  }
}

uint64_t sub_10000F9EC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    v3 = *(a2 + 40);
    if (v3)
    {
      *(v3 + 32) = v2;
    }

    if (v2)
    {
      *(v2 + 40) = v3;
    }

    if (*result == a2)
    {
      *result = *(*result + 32);
    }

    v4 = *(result + 8);
    if (v4 == a2)
    {
      *(result + 8) = *(v4 + 40);
    }

    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    --*(result + 20);
  }

  return result;
}

uint64_t *sub_10000FA44(uint64_t *result, uint64_t a2)
{
  if (*result != a2)
  {
    v3 = result;
    result = sub_10000F9EC(result, a2);
    if (a2)
    {
      v4 = *v3;
      *(a2 + 32) = *v3;
      *(a2 + 40) = 0;
      if (v4)
      {
        v5 = (v4 + 40);
      }

      else
      {
        v5 = v3 + 1;
      }

      *v5 = a2;
      *v3 = a2;
      ++*(v3 + 5);
    }
  }

  return result;
}

void *sub_10000FAAC(uint64_t *a1, const char *a2, unsigned int (*a3)(uint64_t, void), uint64_t a4, in_addr *a5, _DWORD *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v10 = *a1;
  if (*a1)
  {
    while (1)
    {
      v11 = sub_1000100A0(*v10, v10[1], "identifier", 0) << 32;
      if (v11 != 0xFFFFFFFF00000000)
      {
        v12 = v10[1];
        v13 = v12 + 24 * SHIDWORD(v11);
        v15 = *(v13 + 8);
        v14 = (v13 + 8);
        if (v15)
        {
          if (!a5 && !strcmp(*v14[1], a2))
          {
            if (a6)
            {
              *a6 = 1;
            }

            goto LABEL_26;
          }

          v16 = sub_1000100A0(*v10, v12, "ip_address", 0) << 32;
          if (v16 != 0xFFFFFFFF00000000)
          {
            v17 = v10[1] + 24 * SHIDWORD(v16);
            v19 = *(v17 + 8);
            v18 = v17 + 8;
            if (v19)
            {
              if (*v14)
              {
                break;
              }
            }
          }
        }
      }

LABEL_22:
      v10 = v10[4];
      if (!v10)
      {
        return v10;
      }
    }

    v20 = 0;
    while (1)
    {
      if (!strcmp(v14[1][v20], a2) && inet_aton(*(*(v18 + 8) + 8 * (v20 % *v18)), a5))
      {
        if (a6)
        {
          *a6 = 1;
        }

        if (!a3 || a5 && a3(a4, a5->s_addr))
        {
          break;
        }
      }

      if (++v20 >= *v14)
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    sub_10000FA44(a1, v10);
  }

  return v10;
}

void *sub_10000FC50(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (*a1)
  {
    while (1)
    {
      v5 = sub_1000100A0(*v2, v2[1], "ip_address", 0) << 32;
      if (v5 != 0xFFFFFFFF00000000)
      {
        v6 = v2[1] + 24 * SHIDWORD(v5);
        v8 = *(v6 + 8);
        v7 = (v6 + 8);
        if (v8)
        {
          break;
        }
      }

LABEL_10:
      v2 = v2[4];
      if (!v2)
      {
        return v2;
      }
    }

    v9 = 0;
    while (1)
    {
      v12.s_addr = 0;
      if (inet_aton(*(*(v7 + 1) + 8 * v9), &v12) && v12.s_addr == a2)
      {
        break;
      }

      if (++v9 >= *v7)
      {
        goto LABEL_10;
      }
    }

    sub_10000FA44(a1, v2);
  }

  return v2;
}

uint64_t sub_10000FD30(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 1);
  v7 = *a1 + 1;
  if (v6)
  {
    v8 = malloc_type_realloc(v6, 24 * v7, 0x1090040D67CC068uLL);
  }

  else
  {
    v8 = malloc_type_malloc(24 * v7, 0x1090040D67CC068uLL);
  }

  *(a1 + 1) = v8;
  v9 = *a1;
  if (v9 <= a3)
  {
    a3 = *a1;
  }

  else
  {
    v10 = 24 * v9;
    do
    {
      v11 = *(a1 + 1) + v10;
      *v11 = *(v11 - 24);
      *(v11 + 16) = *(v11 - 8);
      --v9;
      v10 -= 24;
    }

    while (v9 > a3);
    v8 = *(a1 + 1);
  }

  v12 = &v8[24 * a3];
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = strdup(v13);
  result = sub_100010028(v14, v15);
  *v12 = v16;
  v12[1] = result;
  v12[2] = v18;
  ++*a1;
  return result;
}

void *sub_10000FE28(int *a1, uint64_t a2)
{
  v2 = a2;
  sub_10000FEE0(*(a1 + 1) + 24 * a2);
  v4 = v2 + 1;
  v5 = *a1;
  if (v2 + 1 < *a1)
  {
    v6 = v4;
    v7 = 24 * v4;
    do
    {
      v8 = *(a1 + 1);
      v9 = v8 + 24 * v2;
      v10 = (v8 + v7);
      v11 = *v10;
      *(v9 + 16) = *(v10 + 2);
      *v9 = v11;
      v2 = v6++;
      v5 = *a1;
      v7 += 24;
    }

    while (*a1 > v6);
  }

  v12 = *(a1 + 1);
  *a1 = v5 - 1;
  result = malloc_type_realloc(v12, 24 * (v5 - 1), 0x1090040D67CC068uLL);
  *(a1 + 1) = result;
  return result;
}

void sub_10000FEE0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  sub_10001013C((a1 + 8));
}

void sub_10000FF24(unsigned int *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    if (*a1)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        sub_10000FEE0(*(a1 + 1) + v3);
        ++v4;
        v3 += 24;
      }

      while (v4 < *a1);
      v2 = *(a1 + 1);
    }

    free(v2);
    *a1 = 0;
    *(a1 + 1) = 0;
  }
}

uint64_t sub_10000FF90(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  v4 = malloc_type_malloc(24 * a1, 0x1090040D67CC068uLL);
  if (v3)
  {
    v5 = v4 + 16;
    v6 = (a2 + 16);
    v7 = v3;
    do
    {
      *(v5 - 2) = strdup(*(v6 - 2));
      *(v5 - 1) = sub_100010028(*(v6 - 1), *v6);
      *v5 = v8;
      v5 += 3;
      v6 += 3;
      --v7;
    }

    while (v7);
  }

  return v3;
}

uint64_t sub_100010028(unsigned int a1, const char **a2)
{
  v3 = a1;
  v4 = malloc_type_malloc(8 * a1, 0x10040436913F5uLL);
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = *a2++;
      *v5++ = strdup(v7);
      --v6;
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_1000100A0(unsigned int a1, uint64_t a2, char *__s1, const char *a4)
{
  v4 = a1;
  if (!a1)
  {
    return -1;
  }

  v7 = 0;
  for (i = (a2 + 16); strcmp(__s1, *(i - 2)); i += 3)
  {
    if (v4 == ++v7)
    {
      return -1;
    }
  }

  if (a4)
  {
    v10 = *(i - 2);
    if (v10)
    {
      for (j = *i; strcmp(a4, *j); ++j)
      {
        if (!--v10)
        {
          return -1;
        }
      }

      return v7;
    }

    return -1;
  }

  return v7;
}

void sub_10001013C(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = a1[1];
        v6 = *(v5 + 8 * i);
        if (v6)
        {
          free(v6);
          *(v5 + 8 * i) = 0;
          v3 = *a1;
        }
      }

      v2 = a1[1];
    }

    free(v2);
    *a1 = 0;
    a1[1] = 0;
  }
}

char *sub_1000101A8(unsigned int *a1, const char *a2, unint64_t a3)
{
  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = malloc_type_realloc(v6, 8 * (*a1 + 1), 0x10040436913F5uLL);
  }

  else
  {
    v7 = malloc_type_malloc(8 * (*a1 + 1), 0x10040436913F5uLL);
  }

  v8 = v7;
  *(a1 + 1) = v7;
  v9 = *a1;
  v10 = v9;
  if (v9 > a3)
  {
    v11 = *a1;
    do
    {
      *(*(a1 + 1) + 8 * v11) = *(*(a1 + 1) + 8 * v11 - 8);
      --v11;
    }

    while (v11 > a3);
    v8 = *(a1 + 1);
    v10 = a3;
  }

  result = strdup(a2);
  v8[v10] = result;
  *a1 = v9 + 1;
  return result;
}

void sub_10001026C(unsigned int *a1, char *__s1, const char *a3, _DWORD *a4)
{
  v8 = *a1;
  v9 = *a1;
  if (!*a1)
  {
LABEL_5:
    v10 = -1;
LABEL_9:
    v16 = 0;
    v15 = __s1;
    if (a3)
    {
      sub_1000101A8(&v15 + 2, a3, 0);
    }

    v13 = v15;
    v14 = v16;
    sub_10000FD30(a1, &v13, v10);
    sub_10001013C(&v15 + 1);
    if (a4)
    {
      *a4 = 1;
    }

    return;
  }

  v10 = 0;
  v11 = *(a1 + 1);
  v12 = v11;
  while (strcmp(__s1, *v12))
  {
    ++v10;
    v12 += 3;
    if (v9 == v10)
    {
      goto LABEL_5;
    }
  }

  if (!a3 || sub_1000100A0(v8, v11, __s1, a3) != v10)
  {
    sub_10000FE28(a1, v10);
    goto LABEL_9;
  }
}

uint64_t sub_100010380(uint64_t result, char *__s1, _DWORD *a3)
{
  v3 = *result;
  if (*result)
  {
    v6 = result;
    v7 = 0;
    for (i = *(result + 8); ; i += 3)
    {
      result = strcmp(__s1, *i);
      if (!result)
      {
        break;
      }

      v7 += &_mh_execute_header;
      if (!--v3)
      {
        return result;
      }
    }

    if (v7 != 0xFFFFFFFF00000000)
    {
      result = sub_10000FE28(v6, v7 >> 32);
      if (a3)
      {
        *a3 = 1;
      }
    }
  }

  return result;
}

void hostfree(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (!v4)
  {
    v4 = a1;
  }

  *v4 = v3;
  if (v3)
  {
    *(v3 + 8) = a2[1];
  }

  v5 = a2[35];
  if (v5)
  {
    free(v5);
    a2[35] = 0;
  }

  v6 = a2[36];
  if (v6)
  {
    free(v6);
  }

  free(a2);
}

_OWORD *hostadd(uint64_t a1, _OWORD *a2, char a3, uint64_t a4, char a5, _DWORD *a6, const char *a7, const char *a8)
{
  v15 = malloc_type_malloc(0x140uLL, 0x1030040E79DA29AuLL);
  v16 = v15;
  if (v15)
  {
    v15[18] = 0u;
    v15[19] = 0u;
    v15[16] = 0u;
    v15[17] = 0u;
    v15[14] = 0u;
    v15[15] = 0u;
    v15[12] = 0u;
    v15[13] = 0u;
    v15[10] = 0u;
    v15[11] = 0u;
    v15[8] = 0u;
    v15[9] = 0u;
    v15[6] = 0u;
    v15[7] = 0u;
    v15[4] = 0u;
    v15[5] = 0u;
    v15[2] = 0u;
    v15[3] = 0u;
    *v15 = 0u;
    v15[1] = 0u;
    if (a2)
    {
      *(v15 + 296) = *a2;
    }

    *(v15 + 20) = a3;
    *(v15 + 21) = a5;
    __memmove_chk();
    if (a6)
    {
      *(v16 + 4) = *a6;
    }

    if (a7)
    {
      *(v16 + 35) = strdup(a7);
    }

    if (a8)
    {
      *(v16 + 36) = strdup(a8);
    }

    *v16 = *a1;
    *(v16 + 1) = 0;
    if (*a1)
    {
      *(*a1 + 8) = v16;
    }

    *a1 = v16;
  }

  return v16;
}

CFComparisonResult sub_1000105AC(const void *a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1)
  {
    return 1;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 1;
  }

  v5 = kSCPropNetDNSEncryptedServerServicePriority;
  Value = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerServicePriority);
  v7 = CFNumberGetTypeID();
  if (!Value || CFGetTypeID(Value) != v7)
  {
    return 1;
  }

  v8 = CFDictionaryGetTypeID();
  if (!a2)
  {
    return -1;
  }

  if (CFGetTypeID(a2) != v8)
  {
    return -1;
  }

  v9 = CFDictionaryGetValue(a2, v5);
  v10 = CFNumberGetTypeID();
  if (!v9 || CFGetTypeID(v9) != v10)
  {
    return -1;
  }

  return CFNumberCompare(Value, v9, 0);
}

void sub_1000106AC(const __CFArray *a1, const void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFArrayAppendValue(Mutable, a2);
  sub_100008BF4(a1, Mutable, sub_100010728);

  CFRelease(Mutable);
}

uint64_t sub_100010728(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v35 = 0;
  Count = CFDictionaryGetCount(a1);
  if (Count != CFDictionaryGetCount(a2))
  {
    goto LABEL_13;
  }

  v5 = CFDictionaryGetCount(a1);
  v6 = kSCPropNetDNSEncryptedServerAuthenticationDomainName;
  v7 = v5 == 1 && CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerAuthenticationDomainName) && CFDictionaryGetValue(a2, v6) != 0;
  Value = CFDictionaryGetValue(a1, v6);
  v9 = CFDictionaryGetValue(a2, v6);
  v10 = CFStringCompare(Value, v9, 0);
  v11 = v10;
  if (v7 || v10)
  {
    goto LABEL_14;
  }

  v12 = kSCPropNetDNSEncryptedServerServicePriority;
  v13 = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerServicePriority);
  v14 = CFDictionaryGetValue(a2, v12);
  if (!v13 || v14 == 0)
  {
    goto LABEL_13;
  }

  v17 = CFNumberCompare(v13, v14, 0);
  v11 = v17;
  if (v17)
  {
    goto LABEL_14;
  }

  v18 = kSCPropNetDNSEncryptedServerAddresses;
  v19 = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerAddresses);
  v20 = CFDictionaryGetValue(a2, v18);
  v11 = -1;
  if (!v19)
  {
    goto LABEL_14;
  }

  v21 = v20;
  if (!v20)
  {
    goto LABEL_14;
  }

  v22 = CFArrayGetCount(v19);
  if (v22 != CFArrayGetCount(v21))
  {
LABEL_13:
    v11 = -1;
    goto LABEL_14;
  }

  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  v35 = Mutable;
  if (CFArrayGetCount(v19) >= 1)
  {
    v24 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v19, v24);
      CFSetAddValue(Mutable, ValueAtIndex);
      ++v24;
    }

    while (v24 < CFArrayGetCount(v19));
  }

  if (CFArrayGetCount(v21) >= 1)
  {
    v26 = 0;
    do
    {
      v27 = CFArrayGetValueAtIndex(v21, v26);
      if (!CFSetContainsValue(Mutable, v27))
      {
        goto LABEL_13;
      }
    }

    while (++v26 < CFArrayGetCount(v21));
  }

  v28 = kSCPropNetDNSEncryptedServerServiceParameters;
  v29 = CFDictionaryGetValue(a1, kSCPropNetDNSEncryptedServerServiceParameters);
  v30 = CFDictionaryGetValue(a2, v28);
  if (!(v29 | v30))
  {
    v11 = 0;
    goto LABEL_14;
  }

  v31 = v30;
  if (v29)
  {
    v32 = v30 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    goto LABEL_13;
  }

  Length = CFDataGetLength(v29);
  if (Length != CFDataGetLength(v31))
  {
    goto LABEL_13;
  }

  v36.length = CFDataGetLength(v29);
  v36.location = 0;
  v34 = CFDataFind(v29, v31, v36, 0).length;
  if (v34 == CFDataGetLength(v29))
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

LABEL_14:
  sub_1000085B0(&v35);
  return v11;
}

CFMutableArrayRef sub_1000109EC(uint64_t a1, int a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v49 = Mutable;
  if (a2 >= 1)
  {
    v5 = 0;
    v41 = a1 + 6;
    v43 = Mutable;
    v42 = a2;
    v48 = a1;
    while (1)
    {
      v50 = 0;
      v6 = a2 - v5;
      if (a2 <= v5 || v6 < 9)
      {
        break;
      }

      v7 = (v48 + v5);
      v8 = bswap32(*v7) >> 16;
      v9 = v8 - 3;
      if (v8 < 3 || v6 < v8 + 2)
      {
        break;
      }

      v11 = *(v7 + 4);
      if (!*(v7 + 4))
      {
        break;
      }

      v12 = v9 - v11;
      if (v9 < v11)
      {
        break;
      }

      v13 = v7[1];
      v14 = v7 + 5;
      v15 = sub_10000AD80(v7 + 5, *(v7 + 4), 0);
      v50 = v15;
      if (!v15 || v12 < 1)
      {
        break;
      }

      v17 = &v14[v11 + 1];
      v16 = v14[v11];
      if (v12 <= v16 || (v16 & 3) != 0)
      {
        break;
      }

      v45 = v12 - 1;
      v47 = v15;
      v19 = malloc_type_malloc(v16, 0x100004052888210uLL);
      v20 = v19;
      if (!v16)
      {
        goto LABEL_39;
      }

      v21 = 0;
      v22 = 0;
      v23 = v5;
      v44 = bswap32(v13) >> 16;
      v24 = v16 >> 2;
      if (v16 >> 2 <= 1)
      {
        LODWORD(v24) = 1;
      }

      v25 = 4 * v24;
      v26 = v8 - v11 - 4;
      do
      {
        v27 = *(v17 + v21);
        v28 = bswap32(v27);
        v29 = v28 + 1 < 2 || v28 == 2130706433;
        v30 = v28 >> 28;
        if (!v29 && v30 != 14)
        {
          v19[v22++] = v27;
        }

        v21 += 4;
        v26 -= 4;
      }

      while (v25 != v21);
      if (!v22)
      {
LABEL_39:
        free(v19);
        break;
      }

      v32 = (v17 + v21);
      v33 = v45 - v21;
      v34 = (v45 - v21);
      if (v45 == v21)
      {
        v36 = 0;
      }

      else
      {
        v35 = (v45 - v21);
        v46 = v23;
        v36 = malloc_type_malloc(v35, 0x100004077774924uLL);
        memcpy(v36, v32, v34);
        LODWORD(v32) = v41 + v46 + v11 + v26 + v21;
      }

      v37 = malloc_type_malloc(0x30uLL, 0x10F004078525314uLL);
      *v37 = 0u;
      v37[1] = 0u;
      v37[2] = 0u;
      *(v37 + 2) = v44;
      *(v37 + 1) = v47;
      *(v37 + 2) = v20;
      *(v37 + 6) = v22;
      *(v37 + 4) = v36;
      *(v37 + 20) = v33;
      v38 = sub_100010CD0(v37, 0);
      sub_100010EB4(v37);
      v39 = v43;
      a2 = v42;
      if (!v38)
      {
        goto LABEL_41;
      }

      v5 = v32 - v48;
      sub_1000106AC(v43, v38);
      CFRelease(v38);
      if (v32 - v48 >= v42)
      {
        v51.length = CFArrayGetCount(v43);
        v51.location = 0;
        CFArraySortValues(v43, v51, sub_1000105AC, 0);
        return v39;
      }
    }

    sub_1000085B0(&v50);
  }

LABEL_41:
  sub_1000085B0(&v49);
  return v49;
}

__CFDictionary *sub_100010CD0(uint64_t a1, int a2)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = CFNumberCreate(0, kCFNumberShortType, (a1 + 4));
  v21 = v5;
  if (!v5)
  {
    goto LABEL_18;
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerServicePriority, v5);
  v6 = CFRetain(*(a1 + 8));
  v20 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerAuthenticationDomainName, v6);
  v7 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v19 = v7;
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = *(a1 + 24);
  if (a2)
  {
    if (v9 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = sub_100008B88((*(a1 + 16) + v10));
        if (v11)
        {
          v12 = v11;
          CFArrayAppendValue(v8, v11);
          CFRelease(v12);
        }

        v10 += 16;
      }

      while (v10 < 16 * *(a1 + 24));
    }
  }

  else if (v9 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_100008B40(*(*(a1 + 16) + v13));
      if (v14)
      {
        v15 = v14;
        CFArrayAppendValue(v8, v14);
        CFRelease(v15);
      }

      v13 += 4;
    }

    while (v13 < 4 * *(a1 + 24));
  }

  CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerAddresses, v8);
  v16 = CFDataCreate(0, *(a1 + 32), *(a1 + 40));
  v18 = v16;
  if (v16)
  {
    CFDictionarySetValue(Mutable, kSCPropNetDNSEncryptedServerServiceParameters, v16);
  }

  else
  {
LABEL_18:
    sub_1000085B0(Mutable);
  }

  sub_1000085B0(&v21);
  sub_1000085B0(&v20);
  sub_1000085B0(&v19);
  sub_1000085B0(&v18);
  return Mutable;
}

void sub_100010EB4(uint64_t a1)
{
  if (a1)
  {
    sub_1000085B0((a1 + 8));
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
      *(a1 + 16) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

void **inetroute_list_init()
{
  size = 0;
  v21 = 0;
  *v22 = xmmword_100012520;
  v23 = 1;
  if (sysctl(v22, 6u, 0, &size, 0, 0) < 0)
  {
    perror("route-sysctl-estimate");
    goto LABEL_44;
  }

  v0 = malloc_type_malloc(size, 0xC6C976CFuLL);
  if (!v0)
  {
LABEL_44:
    inetroute_list_free(&v21);
    return 0;
  }

  v1 = v0;
  if (sysctl(v22, 6u, v0, &size, 0, 0) < 0)
  {
    perror("sysctl of routing table");
    goto LABEL_43;
  }

  v2 = malloc_type_malloc(0x18uLL, 0x1020040903548AEuLL);
  v21 = v2;
  *(v2 + 4) = -1;
  *v2 = 0;
  v3 = malloc_type_malloc(0x38uLL, 0x100004027586B93uLL);
  v2[1] = v3;
  if (!v3)
  {
LABEL_43:
    free(v1);
    goto LABEL_44;
  }

  if (size >= 1)
  {
    v4 = v1 + size;
    v5 = 2;
    v6 = v1;
    do
    {
      v7 = (v6 + 46);
      v8 = *(v6 + 3);
      if (v8)
      {
        v13 = (*v7 & 0xFC) + 4;
        if ((*v7 & 3) == 0)
        {
          v13 = *v7;
        }

        *v7;
        if (*v7)
        {
          v14 = v13;
        }

        else
        {
          v14 = 4;
        }

        v9 = &v7[v14];
        if ((v8 & 2) == 0)
        {
LABEL_22:
          v12 = v9;
          v9 = 0;
          if (v7)
          {
            goto LABEL_23;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v9 = (v6 + 46);
        v7 = 0;
        if ((v8 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      v10 = (*v9 & 0xFC) + 4;
      if ((*v9 & 3) == 0)
      {
        v10 = *v9;
      }

      *v9;
      if (*v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 4;
      }

      v12 = &v9[v11];
      if (v7)
      {
LABEL_23:
        if ((v8 & 4) != 0 && v7[1] == 2 && v9 && (v6[4] & 4) == 0)
        {
          v15 = *v2;
          if (*v2 == v5)
          {
            v5 *= 2;
            v16 = malloc_type_realloc(v2[1], 28 * v5, 0x100004027586B93uLL);
            v2[1] = v16;
            if (!v16)
            {
              goto LABEL_43;
            }

            v15 = *v2;
          }

          else
          {
            v16 = v2[1];
          }

          v17 = &v16[28 * v15];
          *v17 = 0;
          *(v17 + 1) = 0;
          *(v17 + 6) = 0;
          *(v17 + 2) = 0;
          *v17 = *(v7 + 1);
          if (*v12)
          {
            *(v17 + 1) = *(v12 + 1);
          }

          if ((*(v6 + 11) & 1) == 0 && !*(v7 + 1))
          {
            *(v2 + 4) = *v2;
          }

          v18 = *v9;
          if (v9[1] == 18)
          {
            *(v17 + 6) = *(v9 + 4);
          }

          *(v17 + 8) = v18;
          ++*v2;
        }
      }

LABEL_39:
      v6 = (v6 + *v6);
    }

    while (v6 < v4);
  }

  free(v1);
  return v2;
}

void inetroute_list_free(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[1];
      if (v3)
      {
        free(v3);
        v2 = *a1;
      }

      v2[1] = 0;
      free(*a1);
      *a1 = 0;
    }
  }
}

uint64_t inetroute_default(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = *(a1 + 8) + 28 * v1;
  v3 = *(v2 + 9);
  v4 = v2 + 12;
  if (v3 == 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void inetroute_list_print_cfstr(__CFString *a1, int *a2)
{
  if (*a2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a2 + 1) + v4;
      v7 = *(v6 + 9);
      v8 = sub_10000D4D4(*v6, *(v6 + 4));
      v9 = v8;
      if (v7 == 18)
      {
        CFStringAppendFormat(a1, 0, @"%s ==> link %d\n", v8, *(v6 + 10));
      }

      else
      {
        v10 = inet_ntop(2, (v6 + 12), v11, 0x10u);
        CFStringAppendFormat(a1, 0, @"%s ==> %s\n", v9, v10);
      }

      ++v5;
      v4 += 28;
    }

    while (v5 < *a2);
  }
}

ssize_t sub_100011388(int a1, _WORD *a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, unsigned int a8, unsigned __int16 a9, void *a10, int a11)
{
  if ((byte_10001D858 & 1) == 0)
  {
    byte_10001D858 = 1;
    dword_10001D85C = arc4random();
  }

  if ((a4 == 24 || a4 == 1) && (a5 || a6 == -1))
  {
    v20 = sub_100011784(a3);
    if (v20 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
      v40 = a3;
      if (a4 == 24)
      {
        *a2 = -1;
        a2[8] = 8;
        v22 = (a2 + 9);
        v23 = (a2 + 13);
        v24 = a2 + 23;
        v25 = 46;
      }

      else
      {
        v22 = (a2 + 7);
        v23 = (a2 + 11);
        v24 = a2 + 21;
        if (a6 == -1)
        {
          v29 = -1;
          a2[2] = -1;
        }

        else
        {
          v29 = *a5;
          a2[2] = *(a5 + 4);
        }

        *a2 = v29;
        a2[6] = 8;
        v25 = 42;
      }

      memmove(v24, a10, a11);
      *v23 = a7;
      *(v23 + 1) = a6;
      *(v23 + 4) = 4352;
      v30 = bswap32(a11 + 8) >> 16;
      *(v23 + 5) = v30;
      *(v22 + 10) = __rev16(a9);
      *(v22 + 11) = __rev16(a8);
      *(v22 + 6) = v30;
      *(v22 + 13) = sub_10000C010(v23, a11 + 20);
      *v22 = 0;
      *(v22 + 1) = 0;
      *v22 = 69;
      *(v22 + 2) = 4607;
      *(v22 + 3) = a7;
      *(v22 + 4) = a6;
      *(v22 + 1) = bswap32(a11 + 28) >> 16;
      v31 = dword_10001D85C++;
      *(v22 + 2) = bswap32(v31) >> 16;
      *(v22 + 5) = sub_10000C010(v22, 20);
      v19 = sub_100008594(v21, a2, v25 + a11);
      if ((v19 & 0x80000000) != 0)
      {
        sub_100011AC8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v32 = _os_log_pack_size();
          __chkstk_darwin(v32, v33);
          v34 = *__error();
          v35 = _os_log_pack_fill();
          v36 = __error();
          v37 = strerror(*v36);
          v38 = *__error();
          *v35 = 136315650;
          *(v35 + 4) = v40;
          *(v35 + 12) = 2080;
          *(v35 + 14) = v37;
          *(v35 + 22) = 1024;
          *(v35 + 24) = v38;
          __SC_log_send();
        }
      }

      sub_100008380(v21);
    }
  }

  else if (a1 < 0)
  {
    sub_100011AC8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v26 = _os_log_pack_size();
      __chkstk_darwin(v26, v27);
      v28 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    return 0;
  }

  else
  {
    *&v41.sa_data[6] = 0;
    *&v41.sa_len = 528;
    *v41.sa_data = __rev16(a8);
    *&v41.sa_data[2] = a6;
    if (sendto(a1, a10, a11, 0, &v41, 0x10u) >= a11)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v19;
}

uint64_t sub_100011784(uint64_t a1)
{
  v2 = sub_100008390();
  v3 = v2;
  if ((v2 & 0x80000000) != 0)
  {
    sub_100011AC8();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = __error();
      v16 = strerror(*v15);
      v17 = *__error();
      *v14 = 136315394;
      *(v14 + 4) = v16;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v17;
      __SC_log_send();
    }
  }

  else
  {
    if ((sub_100008520(v2) & 0x80000000) != 0)
    {
      sub_100011AC8();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v18 = _os_log_pack_size();
        __chkstk_darwin(v18, v19);
        v20 = *__error();
        v21 = _os_log_pack_fill();
        v22 = __error();
        v23 = strerror(*v22);
        v24 = *__error();
        *v21 = 136315394;
        *(v21 + 4) = v23;
        *(v21 + 12) = 1024;
        *(v21 + 14) = v24;
        __SC_log_send();
      }

      goto LABEL_11;
    }

    if ((sub_10000849C(v3) & 0x80000000) != 0)
    {
      if (*__error() != 6)
      {
        sub_100011AC8();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v4 = _os_log_pack_size();
          __chkstk_darwin(v4, v5);
          v6 = *__error();
          v7 = _os_log_pack_fill();
          v8 = __error();
          v9 = strerror(*v8);
          v10 = *__error();
          *v7 = 136315650;
          *(v7 + 4) = a1;
          *(v7 + 12) = 2080;
          *(v7 + 14) = v9;
          *(v7 + 22) = 1024;
          *(v7 + 24) = v10;
          __SC_log_send();
        }
      }

LABEL_11:
      sub_100008380(v3);
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

CFRange CFDataFind(CFDataRef theData, CFDataRef dataToFind, CFRange searchRange, CFDataSearchFlags compareOptions)
{
  v6 = _CFDataFind(theData, dataToFind, searchRange, compareOptions);
  length = v6.length;
  location = v6.location;
  result.length = length;
  result.location = location;
  return result;
}