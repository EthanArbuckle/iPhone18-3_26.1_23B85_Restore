__CFArray *DHCPSDHCPLeaseListCreate()
{
  v30 = *MEMORY[0x29EDCA608];
  *buffer = 0;
  v28 = 0;
  v29 = 0;
  sub_297750AA4(buffer);
  sub_297750AB8(buffer, 104857600);
  if (!sub_297750BBC(buffer, "/var/db/dhcpd_leases"))
  {
    goto LABEL_33;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v1 = *buffer;
  if (!*buffer)
  {
    goto LABEL_24;
  }

  v2 = MEMORY[0x29EDB9010];
  v3 = MEMORY[0x29EDB9020];
  do
  {
    if (!*v1)
    {
      goto LABEL_23;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v1 + 1);
      if (!*(v7 + v4 + 8))
      {
        goto LABEL_17;
      }

      if (!v6)
      {
        v6 = CFDictionaryCreateMutable(0, 0, v2, v3);
      }

      v8 = v7 + v4;
      v9 = sub_2977509E4(*(v7 + v4));
      v10 = sub_2977509E4(**(v8 + 16));
      v11 = v10;
      if (v9)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (!v9)
        {
          if (!v10)
          {
            goto LABEL_17;
          }

LABEL_16:
          CFRelease(v11);
          goto LABEL_17;
        }
      }

      else
      {
        CFDictionarySetValue(v6, v9, v10);
      }

      CFRelease(v9);
      if (v11)
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v5;
      v4 += 24;
    }

    while (v5 < *v1);
    if (v6)
    {
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v6);
    }

LABEL_23:
    v1 = *(v1 + 4);
  }

  while (v1);
LABEL_24:
  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    sub_297750B5C(buffer);
LABEL_33:
    Mutable = 0;
    goto LABEL_34;
  }

  sub_297750B5C(buffer);
  if (Mutable)
  {
    v25.tv_sec = 0;
    *&v25.tv_usec = 0;
    gettimeofday(&v25, 0);
    Current = CFAbsoluteTimeGetCurrent();
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v15 = 0;
      tv_sec = v25.tv_sec;
      v17 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v15);
        Value = CFDictionaryGetValue(ValueAtIndex, @"lease");
        if (Value)
        {
          v20 = Value;
          usedBufLen = 0;
          v31.length = CFStringGetLength(Value);
          v31.location = 0;
          CFStringGetBytes(v20, v31, 0, 0, 0, buffer, 128, &usedBufLen);
          buffer[usedBufLen] = 0;
          v21 = strtol(buffer, 0, 0);
          v22 = CFDateCreate(0, Current + (v21 - tv_sec));
          CFDictionarySetValue(ValueAtIndex, @"lease", v22);
          CFRelease(v22);
        }

        ++v15;
      }

      while (v17 != v15);
    }
  }

LABEL_34:
  v23 = *MEMORY[0x29EDCA608];
  return Mutable;
}

const void *DHCPSCopyDisabledInterfaces()
{
  v0 = SCDynamicStoreCopyValue(0, @"com.apple.bootpd.DHCPServer");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"DisabledInterfaces");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

CFStringRef sub_2977509E4(char *cStr)
{
  result = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!result)
  {

    return CFStringCreateWithCString(0, cStr, 0);
  }

  return result;
}

void *sub_297750A40(unsigned int a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x30uLL, 0x10A0040A76AC297uLL);
  if (v4)
  {
    *v4 = sub_297751114(a1, a2);
    v4[1] = v5;
    v4[4] = 0;
    v4[5] = 0;
  }

  return v4;
}

void *sub_297750AA4(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  *(result + 4) = 256;
  return result;
}

void sub_297750AB8(uint64_t a1, int a2)
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
        sub_2977510A8(v7);
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

void sub_297750B5C(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *(v2 + 32);
      sub_2977510A8(v2);
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

uint64_t sub_297750BBC(uint64_t a1, char *__filename)
{
  v34 = *MEMORY[0x29EDCA608];
  v24 = 0;
  v25 = 0;
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
      if (!(*__s ^ 0xA7B | v33))
      {
        v5 = 1;
        if (v7 && v7 != 3)
        {
          fprintf(*MEMORY[0x29EDCA610], "unexpected '{' at line %d\n");
          goto LABEL_35;
        }

        goto LABEL_3;
      }

      if (!(*__s ^ 0xA7D | v33))
      {
        if ((v7 - 3) <= 0xFFFFFFFD)
        {
          fprintf(*MEMORY[0x29EDCA610], "unexpected '}' at line %d\n");
          goto LABEL_35;
        }

        v5 = 3;
        if (v24)
        {
          v17 = sub_297750A40(v24, v25);
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

          sub_2977510A8(&v24);
          v5 = 3;
        }

        goto LABEL_3;
      }

      bzero(v30, 0x300uLL);
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
            fprintf(*MEMORY[0x29EDCA610], "property name truncated to %d bytes at line %d\n", 127, v6);
            v14 = v12 - __s;
          }

          v16 = v11 - v14 - 2;
          if (v16 >= 0x300)
          {
            v16 = 767;
            fprintf(*MEMORY[0x29EDCA610], "value truncated to %d bytes at line %d\n", 767, v6);
          }

          __strncpy_chk();
          v31[v15] = 0;
          __strncpy_chk();
          v30[v16] = 0;
          v29 = 0;
          v28 = v31;
          sub_297751290(&v28 + 2, v30, 0);
        }

        else
        {
          v20 = ~v13 + v11;
          if (v20 >= 0x80)
          {
            v20 = 127;
            fprintf(*MEMORY[0x29EDCA610], "property name truncated to %d bytes at line %d\n", 127, v6);
          }

          __strncpy_chk();
          v31[v20] = 0;
          *(&v28 + 1) = 0;
          v29 = 0;
          *&v28 = v31;
        }

        v26 = v28;
        v27 = v29;
        sub_297750F6C(&v24, &v26, 0xFFFFFFFFFFFFFFFFLL);
        sub_297751224(&v28 + 1);
        v5 = 2;
        goto LABEL_3;
      }
    }

    if ((v7 - 1) <= 1)
    {
      fwrite("file ends prematurely\n", 0x16uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

LABEL_35:
    fclose(v4);
  }

  else
  {
    perror(__filename);
  }

  sub_2977510A8(&v24);
  v21 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t sub_297750F6C(unsigned int *a1, uint64_t a2, unint64_t a3)
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
  result = sub_2977511AC(v14, v15);
  *v12 = v16;
  v12[1] = result;
  v12[2] = v18;
  ++*a1;
  return result;
}

void sub_297751064(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  sub_297751224((a1 + 8));
}

void sub_2977510A8(unsigned int *a1)
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
        sub_297751064(*(a1 + 1) + v3);
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

uint64_t sub_297751114(unsigned int a1, uint64_t a2)
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
      *(v5 - 1) = sub_2977511AC(*(v6 - 1), *v6);
      *v5 = v8;
      v5 += 3;
      v6 += 3;
      --v7;
    }

    while (v7);
  }

  return v3;
}

uint64_t sub_2977511AC(unsigned int a1, const char **a2)
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

void sub_297751224(void *a1)
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

char *sub_297751290(unsigned int *a1, const char *a2, unint64_t a3)
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