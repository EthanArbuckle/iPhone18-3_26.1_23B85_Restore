double sub_1000006D0(void *a1, uint64_t a2)
{
  v2 = sub_100000ED4(a1, a2);
  *v2 = &off_1000041C8;
  result = 0.0;
  *(v2 + 3) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 15) = 0u;
  return result;
}

uint64_t sub_100000724(uint64_t a1)
{
  v6 = 255;
  v2 = sub_100001074(a1);
  if (!v2)
  {
    sub_100001668(a1, &v6);
    v3 = &unk_100001E84;
    if (v6 == 1)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    if (v6 == 1)
    {
      v3 = &unk_100001E78;
    }

    *(a1 + 124) = v4;
    *(a1 + 128) = v3;
  }

  return v2;
}

void sub_10000079C(const char *a1, const char *a2, const char *a3, const void *a4, size_t a5)
{
  v10 = strlen(a1);
  v11 = v10 + strlen(a2);
  v12 = malloc_type_malloc(v11 + 2, 0x100004077774924uLL);
  snprintf(v12, v11 + 2, "%s/%s", a1, a2);
  printf("writing to file %s \n", v12);
  v13 = fopen(v12, a3);
  if (v13)
  {
    v14 = v13;
    fwrite(a4, a5, 1uLL, v13);
    fclose(v14);
  }

  else
  {
    puts("Error in opening output file for section data");
  }

  free(v12);
}

uint64_t sub_100000894(uint64_t a1)
{
  *(a1 + 120) = 0;
  if (!*(a1 + 124))
  {
    return 0;
  }

  v2 = 0;
  for (i = (a1 + 32); ; i += 4)
  {
    v4 = sub_100001500(a1, *(*(a1 + 128) + 4 * v2), i, 1uLL);
    if (v4)
    {
      break;
    }

    v5 = *i;
    *(a1 + 120) += *i;
    v6 = *(*(a1 + 128) + 4 * v2);
    *(i - 2) = v6;
    printf("section %u size is %llu bytes\n", v6, v5);
    if (++v2 >= *(a1 + 124))
    {
      return 0;
    }
  }

  v7 = v4;
  fwrite("getSectionsSizes not responsive assuming retimer not active \n", 0x3DuLL, 1uLL, __stderrp);
  return v7;
}

uint64_t sub_100000970(uint64_t a1)
{
  v1 = *(a1 + 124);
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 48);
    do
    {
      if (*(v4 - 2))
      {
        v5 = malloc_type_calloc(1uLL, *(v4 - 1), 0x100004077774924uLL);
        *v4 = v5;
        if (!v5)
        {
          return 5;
        }

        v6 = sub_100001594(a1, *(v4 - 6), v5, *(v4 - 1), 1uLL);
        if (v6)
        {
          v9 = v6;
          fwrite("\t<ERROR: getSectionData\n", 0x18uLL, 1uLL, __stderrp);
          free(*v4);
          *v4 = 0;
          return v9;
        }

        v7 = sub_100000A84(a1, *(v4 - 6));
        CStringPtr = CFStringGetCStringPtr(v7, 0);
        printf("got data done filename is %s \n", CStringPtr);
        v1 = *(a1 + 124);
      }

      ++v3;
      v4 += 4;
    }

    while (v3 < v1);
  }

  return 0;
}

CFStringRef sub_100000A84(uint64_t a1, int a2)
{
  if ((a2 - 3) > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_100004210[a2 - 3];
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@_%@.bin", v4, *(a1 + 8), v2, v3);
}

uint64_t sub_100000AE8(uint64_t result, unsigned int a2)
{
  if (*(result + 124))
  {
    v2 = result;
    v3 = 0;
    v4 = a2;
    v5 = (result + 40);
    do
    {
      v6 = ((*(v5 - 1) / *(v2 + 120)) * v4) & 0xFFFFFFFFFFFFFFFCLL;
      *v5 = v6;
      result = printf("size to read for section %u is %llu\n", *(v5 - 4), v6);
      ++v3;
      v5 += 4;
    }

    while (v3 < *(v2 + 124));
  }

  return result;
}

void sub_100000B88(uint64_t a1, const char *a2)
{
  if (*(a1 + 124))
  {
    v4 = 0;
    v5 = (a1 + 48);
    do
    {
      if (*(v5 - 2) && *v5)
      {
        v6 = sub_100000A84(a1, *(v5 - 6));
        CStringPtr = CFStringGetCStringPtr(v6, 0);
        if (CStringPtr)
        {
          sub_10000079C(a2, CStringPtr, "wb", *v5, *(v5 - 1));
        }
      }

      ++v4;
      v5 += 4;
    }

    while (v4 < *(a1 + 124));
  }
}

void sub_100000C28(uint64_t a1, const char *a2)
{
  v7 = 0;
  memset(outputStruct, 0, sizeof(outputStruct));
  if (sub_10000161C(a1, outputStruct, 0x80uLL))
  {
    puts("Error in reading FW version");
  }

  else
  {
    v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@_version.txt", *(a1 + 8));
    CStringPtr = CFStringGetCStringPtr(v4, 0);
    sub_10000079C(a2, CStringPtr, "w", outputStruct, 0x80uLL);
  }
}

void sub_100000D00(uint64_t a1)
{
  v1 = *(a1 + 124);
  if (v1)
  {
    v3 = 0;
    v4 = (a1 + 48);
    do
    {
      if (*v4)
      {
        free(*v4);
        *v4 = 0;
        v1 = *(a1 + 124);
      }

      ++v3;
      v4 += 4;
    }

    while (v3 < v1);
  }
}

uint64_t sub_100000D68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }

  return 0;
}

void sub_100000E34(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100000F4C(a2);

    operator delete();
  }
}

void *sub_100000E78(void *a1, const char *a2)
{
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  *a1 = &off_100004270;
  a1[1] = v3;
  a1[2] = 0;
  return a1;
}

void *sub_100000ED4(void *result, uint64_t a2)
{
  *result = &off_100004270;
  result[1] = a2;
  result[2] = 0;
  return result;
}

uint64_t sub_100000EF8(uint64_t a1, io_object_t object)
{
  *a1 = &off_100004270;
  IOObjectRetain(object);
  *(a1 + 8) = 0;
  *(a1 + 16) = object;
  *(a1 + 20) = 0;
  return a1;
}

void *sub_100000F4C(void *a1)
{
  *a1 = &off_100004270;
  sub_100000FA4(a1);
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[1] = 0;
  return a1;
}

uint64_t sub_100000FA4(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOConnectRelease(v2);
    *(a1 + 20) = 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t sub_100000FFC(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100004270;
  *(a1 + 8) = CFStringCreateCopy(kCFAllocatorDefault, *(a2 + 8));
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  IOObjectRetain(v4);
  v5 = *(a2 + 20);
  *(a1 + 20) = v5;
  IOConnectAddRef(v5);
  return a1;
}

uint64_t sub_100001074(uint64_t a1)
{
  MatchingService = *(a1 + 16);
  if (!MatchingService)
  {
    v3 = IOServiceMatching("AppleTypeCRetimer");
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, @"atcrt-name", *(a1 + 8));
    CFDictionaryAddValue(v3, @"IOPropertyMatch", Mutable);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
    *(a1 + 16) = MatchingService;
    if (!MatchingService)
    {
      return 56;
    }
  }

  v5 = mach_task_self_;

  return IOServiceOpen(MatchingService, v5, 0, (a1 + 20));
}

uint64_t sub_100001154(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v2 = *(a1 + 20);
  if (v2)
  {
    return IOConnectCallScalarMethod(v2, 0, &v4, 1u, 0, 0);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1000011CC(uint64_t a1, BOOL *a2)
{
  outputCnt = 1;
  v2 = *(a1 + 20);
  if (!v2)
  {
    return 5;
  }

  result = IOConnectCallScalarMethod(v2, 1u, 0, 0, &output, &outputCnt);
  *a2 = output == 1;
  return result;
}

uint64_t sub_100001260(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  v2 = *(a1 + 20);
  if (v2)
  {
    return IOConnectCallScalarMethod(v2, 3u, &v4, 1u, 0, 0);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1000012D8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 20);
  if (v2)
  {
    return IOConnectCallScalarMethod(v2, 2u, &v4, 1u, 0, 0);
  }

  else
  {
    return 5;
  }
}

__CFArray *sub_10000134C()
{
  existing = 0;
  v0 = IOServiceMatching("AppleTypeCRetimer");
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v0, &existing);
  if (MatchingServices)
  {
    v2 = __stderrp;
    v3 = mach_error_string(MatchingServices);
    fprintf(v2, "ERROR: failed to get matching services: %s\n", v3);
    return 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v5 = IOIteratorNext(existing);
      if (v5)
      {
        v6 = v5;
        do
        {
          CFProperty = IORegistryEntryCreateCFProperty(v6, @"atcrt-name", kCFAllocatorDefault, 0);
          if (CFProperty)
          {
            v8 = CFProperty;
            CFArrayAppendValue(Mutable, CFProperty);
            CFRelease(v8);
            IOObjectRelease(v6);
          }

          else
          {
            fprintf(__stderrp, "ERROR: failed to get %s property from a %s node\n", "atcrt-name", "AppleTypeCRetimer");
          }

          v6 = IOIteratorNext(existing);
        }

        while (v6);
      }

      IOObjectRelease(existing);
      v11.length = CFArrayGetCount(Mutable);
      v11.location = 0;
      CFArraySortValues(Mutable, v11, &CFStringCompare, 0);
    }

    else
    {
      fwrite("ERROR: failed to allocate an array\n", 0x23uLL, 1uLL, __stderrp);
    }
  }

  return Mutable;
}

uint64_t sub_100001500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  input[0] = a2;
  input[1] = a4;
  outputCnt = 1;
  v4 = *(a1 + 20);
  if (!v4)
  {
    return 5;
  }

  result = IOConnectCallScalarMethod(v4, 4u, input, 2u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

uint64_t sub_100001594(uint64_t a1, uint64_t a2, void *outputStruct, size_t a4, uint64_t a5)
{
  input[0] = a2;
  input[1] = a5;
  v7 = a4;
  v5 = *(a1 + 20);
  if (v5)
  {
    return IOConnectCallMethod(v5, 5u, input, 2u, 0, 0, 0, 0, outputStruct, &v7);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_100001668(uint64_t a1, uint64_t *a2)
{
  outputCnt = 1;
  v2 = *(a1 + 20);
  if (!v2)
  {
    return 5;
  }

  result = IOConnectCallScalarMethod(v2, 7u, 0, 0, &output, &outputCnt);
  *a2 = output;
  return result;
}

uint64_t start(int a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  puts("atcrtcomm v0.1");
  if (a1 <= 1)
  {
    printf("Path not provided");
    return 1;
  }

  v5 = sub_10000134C();
  Count = CFArrayGetCount(v5);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &unk_1000041D0);
  if (Count)
  {
    CFArrayGetValueAtIndex(v5, 0);
    operator new();
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (!CFArrayGetCount(Mutable))
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 1;
  }

  v8 = CFArrayGetCount(Mutable);
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
      sub_100000C28(ValueAtIndex, v3);
    }
  }

  v12 = CFArrayGetCount(Mutable);
  v13 = 0;
  if (v12)
  {
    for (j = 0; j != v12; ++j)
    {
      v15 = CFArrayGetValueAtIndex(Mutable, j);
      v13 += sub_100000D60(v15);
    }
  }

  v16 = CFArrayGetValueAtIndex(Mutable, 0);
  v34 = 255;
  sub_100001668(v16, &v34);
  if (v34 == 1)
  {
    v17 = 27800;
  }

  else
  {
    v17 = 0;
  }

  if (v34)
  {
    v18 = v17;
  }

  else
  {
    v18 = 10800;
  }

  v19 = (v18 * 4.49999999);
  printf("transfer_rate %d approx_total_size %d \n", v18, v19);
  if (v12)
  {
    for (k = 0; k != v12; ++k)
    {
      v21 = CFArrayGetValueAtIndex(Mutable, k);
      v22 = sub_100000D60(v21);
      v23 = v22;
      if (v13 > v19)
      {
        v23 = ((v22 / v13) * v19);
      }

      sub_100000AE8(v21, v23);
    }
  }

  if (CFArrayGetCount(Mutable))
  {
    v24 = 0;
    do
    {
      v25 = CFArrayGetValueAtIndex(Mutable, v24);
      if (sub_100000970(v25))
      {
        fprintf(__stderrp, "\t<ERROR: extractSectionsData reader index is %zu\n", v24);
      }

      ++v24;
    }

    while (v24 < CFArrayGetCount(Mutable));
  }

  v26 = CFArrayGetCount(Mutable);
  if (v26)
  {
    v27 = v26;
    for (m = 0; m != v27; ++m)
    {
      v29 = CFArrayGetValueAtIndex(Mutable, m);
      sub_100000B88(v29, v3);
    }
  }

  v30 = CFArrayGetCount(Mutable);
  if (v30)
  {
    v31 = v30;
    for (n = 0; n != v31; ++n)
    {
      v33 = CFArrayGetValueAtIndex(Mutable, n);
      sub_100000D00(v33);
      sub_100000FA4(v33);
      puts("closed interface ");
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}