uint64_t sub_29923D930(uint64_t result, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  if (*(result + 24) == 1)
  {
    v3 = result;
    if (objc_msgSend_count(*(result + 8), a2, a3))
    {
      v10 = objc_msgSend_keysSortedByValueUsingComparator_(*(v3 + 8), v4, &unk_2A1F66DC8);
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v32, v36, 16);
      if (v12)
      {
        v14 = v12;
        v15 = 0;
        v16 = *v33;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v32 + 1) + 8 * i);
            v19 = objc_msgSend_objectForKey_(*(v3 + 8), v13, v18);
            v15 += objc_msgSend_integerValue(v19, v20, v21);
            v22 = *v3;
            v25 = objc_msgSend_UTF8String(v18, v23, v24);
            sub_29930B514(v22, 0x200000u, "%s : %ld\n", v26, v27, v28, v29, v30, v25);
          }

          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v32, v36, 16);
        }

        while (v14);
      }
    }

    result = sub_29930B514(*v3, 0x200000u, "Token count: %ld, UNK count = %ld\n", v5, v6, v7, v8, v9, *(v3 + 16));
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29923DAB0(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if (*(a1 + 24) == 1)
  {
    v9 = sub_29939AF08(a2, a3);
    v10 = &off_2A145E6F8;
    v11 = *a1;
    if (!a4)
    {
      v10 = &off_2A145E700;
    }

    v12 = objc_msgSend_UTF8String(*v10, v7, v8);
    objc_msgSend_UTF8String(v9, v13, v14);
    sub_29930B600(v11, "%s:%s\n", v15, v16, v17, v18, v19, v20, v12);

    CFRelease(v9);
  }
}

uint64_t sub_29923DB5C(uint64_t a1)
{
  v2 = sub_29930AF10();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
  v3 = *v2 == 1 && (v2[10] & 0x20) != 0 || *(v2 + 1) < 8u;
  *(a1 + 24) = v3;
  return a1;
}

uint64_t sub_29923DBB8(uint64_t a1, void *a2, void *a3)
{
  v5 = objc_msgSend_integerValue(a2, a2, a3);
  if (v5 > objc_msgSend_integerValue(a3, v6, v7))
  {
    return -1;
  }

  v11 = objc_msgSend_integerValue(a2, v8, v9);
  return v11 < objc_msgSend_integerValue(a3, v12, v13);
}

UInt8 *sub_29923DC24(const __CFString *a1, CFStringEncoding a2, unint64_t *a3)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    usedBufLen = 0;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, a2);
    v8 = malloc_type_malloc(MaximumSizeForEncoding, 0x1000040BDFB0063uLL);
    v11.location = 0;
    v11.length = Length;
    CFStringGetBytes(a1, v11, a2, 0, 0, v8, MaximumSizeForEncoding, &usedBufLen);
    if (a3)
    {
      *a3 = usedBufLen >> 1;
    }
  }

  else
  {
    v8 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return v8;
}

char *sub_29923DCE8(const __CFURL *a1)
{
  v1 = CFURLCopyAbsoluteURL(a1);
  v2 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  CFRelease(v1);
  if (!v2)
  {
    return 0;
  }

  Length = CFStringGetLength(v2);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  LODWORD(MaximumSizeForEncoding) = CFStringGetFileSystemRepresentation(v2, v5, MaximumSizeForEncoding);
  CFRelease(v2);
  if (!MaximumSizeForEncoding)
  {
    free(v5);
    return 0;
  }

  return v5;
}

CFURLRef sub_29923DD90(CFURLRef url, CFStringRef pathComponent)
{
  if (pathComponent)
  {
    return CFURLCreateCopyAppendingPathComponent(0, url, pathComponent, 0);
  }

  else
  {
    return CFRetain(url);
  }
}

CFBundleRef sub_29923DDB0(const __CFURL *a1)
{
  PathComponent = CFURLCopyLastPathComponent(a1);
  if (CFStringCompare(PathComponent, @"/", 0) == kCFCompareEqualTo)
  {
    v7 = 0;
LABEL_10:
    CFRelease(PathComponent);
    return v7;
  }

  v3 = 0;
  v4 = PathComponent;
  PathComponent = a1;
  while (1)
  {
    v5 = CFStringCompare(v4, @"Contents", 0);
    CFRelease(v4);
    v6 = CFURLCreateCopyDeletingLastPathComponent(0, PathComponent);
    if (v5 == kCFCompareEqualTo)
    {
      break;
    }

    if (v3)
    {
      CFRelease(PathComponent);
    }

    v4 = CFURLCopyLastPathComponent(v6);
    v3 = 1;
    PathComponent = v6;
    if (CFStringCompare(v4, @"/", 0) == kCFCompareEqualTo)
    {
      CFRelease(v4);
      v7 = 0;
      PathComponent = v6;
      goto LABEL_10;
    }
  }

  v7 = CFBundleCreate(0, v6);
  CFRelease(v6);
  if (v3)
  {
    goto LABEL_10;
  }

  return v7;
}

DIR *sub_29923DEC4(DIR *result)
{
  if (result)
  {
    v1 = result;
    memset(&v9, 0, sizeof(v9));
    if (lstat(result, &v9) < 0)
    {
      return 0;
    }

    else if ((v9.st_mode & 0xF000) == 0x4000)
    {
      result = opendir(v1);
      if (result)
      {
        v3 = result;
        v4 = strlen(v1);
        v5 = malloc_type_malloc(v4 + 256, 0x100004077774924uLL);
        strlcpy(v5, v1, v4 + 256);
        v6 = strlen(v1);
        *&v5[v6] = 47;
        v7 = &v5[v6 + 1];
        while (1)
        {
          v8 = readdir(v3);
          if (!v8)
          {
            break;
          }

          if (v8->d_name[0] != 46 || v8->d_name[1] && (v8->d_name[1] != 46 || v8->d_name[2]))
          {
            strlcpy(v7, v8->d_name, 0x100uLL);
            if (!sub_29923DEC4(v5))
            {
              free(v5);
              closedir(v3);
              return 0;
            }
          }
        }

        free(v5);
        closedir(v3);
        return (rmdir(v1) >= 0);
      }
    }

    else
    {
      return !remove(v1, v2);
    }
  }

  return result;
}

uint64_t (*sub_29923E020(int a1, uint64_t a2, int a3, void *a4))(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = sub_29923E108;
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        v5 = a3 == 0;
        v6 = sub_29923E118;
        v4 = sub_29923E130;
        break;
      case 4:
        v5 = a3 == 0;
        v6 = sub_29923E140;
        v4 = sub_29923E154;
        break;
      case 8:
        v5 = a3 == 0;
        v6 = sub_29923E164;
        v4 = sub_29923E178;
        break;
      default:
        return sub_29923E188;
    }

    if (!v5)
    {
      return v6;
    }

    return v4;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return v4;
    }

    return sub_29923E188;
  }

  v4 = sub_29923E100;
  if (a4)
  {
    *a4 = a2;
    return sub_29923E100;
  }

  return v4;
}

_DWORD *sub_29923E194(const void *a1, size_t a2, unsigned int a3, int a4, size_t *a5)
{
  if (a3)
  {
    v10 = a2 + a3;
    v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
    memcpy(v11 + a3, a1, a2);
    *a5 = v10;
    sub_29923E238(v11, a2, a3, a4);
    return v11;
  }

  else
  {
    *a5 = a2;
  }

  return a1;
}

_DWORD *sub_29923E238(_DWORD *result, unint64_t a2, int a3, int a4)
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (a4)
      {
        *result = bswap32(a2);
      }

      else
      {
        *result = a2;
      }
    }

    else if (a3 == 8)
    {
      if (a4)
      {
        *result = bswap64(a2);
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (a3 == 1)
  {
    *result = a2;
  }

  else if (a3 == 2)
  {
    if (a4)
    {
      *result = bswap32(a2) >> 16;
    }

    else
    {
      *result = a2;
    }
  }

  return result;
}

void sub_29923E2B4(__CFData *a1, const __CFString *cf, int a3, int a4, int a5)
{
  v10 = CFGetTypeID(cf);
  if (v10 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(cf))
    {
      if (a3 == 8)
      {
        valuePtr = 0.0;
        CFNumberGetValue(cf, kCFNumberFloat64Type, &valuePtr);
        v23 = valuePtr;
        v24 = bswap64(valuePtr);
        if (a5)
        {
          v23 = v24;
        }

        valuePtr = v23;
        v13 = a1;
        v14 = 8;
      }

      else
      {
        if (a3 != 4)
        {
          return;
        }

        LODWORD(valuePtr) = 0;
        CFNumberGetValue(cf, kCFNumberFloat32Type, &valuePtr);
        v11 = *&valuePtr;
        v12 = bswap32(*&valuePtr);
        if (a5)
        {
          v11 = v12;
        }

        *&valuePtr = v11;
        v13 = a1;
        v14 = 4;
      }

      CFDataAppendBytes(v13, &valuePtr, v14);
    }

    else
    {
      valuePtr = 0.0;
      CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr);
      sub_29923E520(a1, *&valuePtr, a3, a5);
    }
  }

  else
  {
    v15 = CFGetTypeID(cf);
    if (v15 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(cf);
      v17 = 2 * Length;
      valuePtr = 0.0;
      if (!a4)
      {
        sub_29923E520(a1, v17, a3, a5);
      }

      if (a5)
      {
        v18 = 268435712;
      }

      else
      {
        v18 = 335544576;
      }

      v19 = malloc_type_malloc(v17, 0x100004077774924uLL);
      v27.location = 0;
      v27.length = Length;
      CFStringGetBytes(cf, v27, v18, 0, 0, v19, v17, &valuePtr);
      CFDataAppendBytes(a1, v19, *&valuePtr);
      free(v19);
    }

    else
    {
      v20 = CFGetTypeID(cf);
      if (v20 == CFDataGetTypeID())
      {
        v21 = CFDataGetLength(cf);
        if (!a4)
        {
          sub_29923E520(a1, v21, a3, a5);
        }

        BytePtr = CFDataGetBytePtr(cf);

        CFDataAppendBytes(a1, BytePtr, v21);
      }
    }
  }
}

void sub_29923E520(__CFData *a1, unint64_t a2, int a3, int a4)
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v8 = bswap32(a2);
      if (!a4)
      {
        v8 = a2;
      }

      *bytes = v8;
      v5 = bytes;
      v6 = 4;
    }

    else
    {
      if (a3 != 8)
      {
        return;
      }

      v7 = bswap64(a2);
      if (!a4)
      {
        v7 = a2;
      }

      v9 = v7;
      v5 = &v9;
      v6 = 8;
    }
  }

  else if (a3 == 1)
  {
    v12 = a2;
    v5 = &v12;
    v6 = 1;
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    v4 = bswap32(a2) >> 16;
    if (!a4)
    {
      LOWORD(v4) = a2;
    }

    v11 = v4;
    v5 = &v11;
    v6 = 2;
  }

  CFDataAppendBytes(a1, v5, v6);
}

void sub_29923E5CC(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 304))(a1);
  v5 = (*(*a1 + 48))(a1);
  if (v5 < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(*a1 + 352))(a1, v5 - 2);
  }

  *(a1 + 256) = v6;
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4[1] - *v4) >> 3) - 1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v4[1] - *v4) >> 3) == 1)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    LODWORD(v8) = 0;
    LODWORD(v9) = 0;
    v10 = (*v4 + 28);
    do
    {
      v9 = v9 + *v10;
      v8 = v8 + *(v10 - 2);
      v10 += 20;
      --v7;
    }

    while (v7);
  }

  v11 = (*(*a1 + 544))(a1);
  (*(*a1 + 544))(a1);
  v13 = v12 - v8;
  if (!v11)
  {
    v13 = 0;
  }

  v40[0] = v11 + 2 * v8;
  v40[1] = v13;
  v14 = (*(*a1 + 552))(a1);
  (*(*a1 + 552))(a1);
  v16 = v15 - v9;
  if (!v14)
  {
    v16 = 0;
  }

  v39[0] = v14 + 2 * v9;
  v39[1] = v16;
  (*(*a2 + 40))(a2, v39, v40, 0, a1 + 264, a1 + 288);
  v17 = *(a1 + 264);
  v18 = *(a1 + 272);
  v19 = v18 - v17;
  if (v18 == v17)
  {
    v20 = *(*v4 + 40 * v5 - 8);
    v21 = *(a1 + 280);
    if (v18 >= v21)
    {
      v22 = v21 - v17;
      if (v22 <= (v19 >> 1) + 1)
      {
        v23 = (v19 >> 1) + 1;
      }

      else
      {
        v23 = v22;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      sub_299212A48(a1 + 264, v24);
    }

    *v18 = v20;
    *(a1 + 272) = v18 + 2;
    v26 = *(a1 + 296);
    v25 = *(a1 + 304);
    if (v26 >= v25)
    {
      v28 = *(a1 + 288);
      v29 = v26 - v28;
      v30 = (v26 - v28) >> 2;
      v31 = v30 + 1;
      if ((v30 + 1) >> 62)
      {
        sub_299212A8C();
      }

      v32 = v25 - v28;
      if (v32 >> 1 > v31)
      {
        v31 = v32 >> 1;
      }

      v33 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
      v34 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v33)
      {
        v34 = v31;
      }

      if (v34)
      {
        sub_2992F86B0(a1 + 288, v34);
      }

      v35 = (v26 - v28) >> 2;
      v36 = (4 * v30);
      v37 = (4 * v30 - 4 * v35);
      *v36 = 0;
      v27 = v36 + 1;
      memcpy(v37, v28, v29);
      v38 = *(a1 + 288);
      *(a1 + 288) = v37;
      *(a1 + 296) = v27;
      *(a1 + 304) = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    else
    {
      *v26 = 0;
      v27 = v26 + 4;
    }

    *(a1 + 296) = v27;
  }
}

uint64_t sub_29923E98C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 32)) = a2[5];
  *(a1 + 24) = &unk_2A1F6CFC0;
  sub_2992292D8((a1 + 248), 0);
  sub_299229F00((a1 + 240), 0);
  sub_299215B18((a1 + 232), 0);
  v4 = *(a1 + 136);
  if (v4)
  {
    *(a1 + 144) = v4;
    operator delete(v4);
  }

  sub_299219AB4((a1 + 128), 0);
  sub_299219AB4((a1 + 120), 0);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_299219AB4((a1 + 88), 0);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  sub_299219AB4((a1 + 56), 0);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void *sub_29923EAE8(void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, int a8, int a9, char a10, uint64_t *a11, int a12, int a13, int a14, uint64_t a15)
{
  *a1 = &unk_2A1F66DC0;
  v16 = sub_2992C6204(a1, &off_2A1F67070, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  *v16 = &unk_2A1F66E08;
  *(v16 + 24) = &unk_2A1F67060;
  *(v16 + 256) = 0;
  *(v16 + 264) = 0u;
  *(v16 + 280) = 0u;
  *(v16 + 296) = 0u;
  sub_29923E5CC(v16, a15);
  return a1;
}

void sub_29923EBDC(_Unwind_Exception *a1)
{
  v4 = v1[36];
  if (v4)
  {
    v1[37] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[34] = v5;
    operator delete(v5);
  }

  sub_29923E98C(v1, &off_2A1F67070);
  _Unwind_Resume(a1);
}

void sub_29923EC90(uint64_t a1)
{
  sub_29923E98C(a1, &off_2A1F6CFC8);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29923ED68(uint64_t a1)
{
  v2 = (*(*a1 + 96))(a1);
  v3 = (a1 + 32);
  LODWORD(v4) = *(a1 + 55);
  if (v2 == 89)
  {
    if ((v4 & 0x80) != 0)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
    }

    return sub_299278FD4(v3, 2 * v4);
  }

  else
  {
    if ((v4 & 0x80) != 0)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
    }

    v6 = (2 * v4);
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = *v3++;
        v7 = (1025 * (v7 + v8)) ^ ((1025 * (v7 + v8)) >> 6);
        --v6;
      }

      while (v6);
      LODWORD(v6) = 9 * v7;
    }

    return 32769 * (v6 ^ (v6 >> 11));
  }
}

uint64_t sub_29923EE20(void *a1)
{
  if (a1[17] == a1[18])
  {
    return 0;
  }

  result = (*(*a1 + 24))(a1);
  if (result)
  {
    if (*a1[17] == 7)
    {
      return 1;
    }

    else
    {
      v3 = (*(*a1 + 24))(a1);

      return sub_299236410(v3);
    }
  }

  return result;
}

BOOL sub_29923EEF8(uint64_t a1)
{
  v2 = *(a1 + 136);
  v1 = *(a1 + 144);
  if (v2 == v1)
  {
    return 1;
  }

  v3 = v2 + 40;
  do
  {
    v4 = *(v3 - 28);
    result = v4 != 0;
    if (v4)
    {
      v6 = v3 == v1;
    }

    else
    {
      v6 = 1;
    }

    v3 += 40;
  }

  while (!v6);
  return result;
}

BOOL sub_29923EF2C(uint64_t a1)
{
  v2 = *(a1 + 136);
  v1 = *(a1 + 144);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v2 + 40;
  do
  {
    v4 = *(v3 - 40);
    result = v4 == 8;
    v6 = v4 == 8 || v3 == v1;
    v3 += 40;
  }

  while (!v6);
  return result;
}

uint64_t sub_29923EFC4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v1 = a1 + 32;
  v2 = v3;
  v4 = *(v1 + 23);
  if (v4 >= 0)
  {
    v2 = v1;
  }

  if (v4 >= 0)
  {
    v5 = *(v1 + 23);
  }

  else
  {
    v5 = *(v1 + 8);
  }

  return v2;
}

uint64_t sub_29923EFE8(uint64_t a1)
{
  if ((*(a1 + 119) & 0x8000000000000000) == 0)
  {
    return a1 + 96;
  }

  result = *(a1 + 96);
  v3 = *(a1 + 104);
  return result;
}

void sub_29923F04C(void *a1)
{
  sub_29923F094(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29923F094(void *a1)
{
  *a1 = &unk_2A1F66E08;
  a1[3] = &unk_2A1F67060;
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    a1[34] = v3;
    operator delete(v3);
  }

  return sub_29923E98C(a1, &off_2A1F67070);
}

uint64_t sub_29923F12C(uint64_t a1, CFStringRef theString, const __CFURL *a3)
{
  p_str = &__str;
  sub_299322D58(theString, a3, @"zip_code.dat", &__str);
  v5 = *(a1 + 79);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 64);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (size == v5 && (v6 >= 0 ? (v8 = (a1 + 56)) : (v8 = *(a1 + 56)), !memcmp(p_str, v8, size)) || stat(p_str, &v13))
  {
    v9 = 0;
  }

  else
  {
    std::string::operator=((a1 + 56), &__str);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &__str;
    }

    else
    {
      v10 = __str.__r_.__value_.__r.__words[0];
    }

    sub_29919C4C8(a1, v10);
    v9 = 1;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_29923F224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29923F240(uint64_t a1, const void **a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 23);
  if (v2 < 0)
  {
    v2 = a2[1];
  }

  if (v2 == 7)
  {
    sub_29923F450(&v14, 8);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v6)
    {
      if (v5 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      memmove(v14, v7, v6);
    }

    *(v15 - 1) = 32;
    sub_29918DC8C((a1 + 8));
    sub_29918DA48((a1 + 8), v14, v15 - v14);
    v13 = 0;
    if (sub_29919CAD4(a1, a1 + 8))
    {
      v8 = (v14 - v15 + *(a1 + 40));
      MEMORY[0x2A1C7C4A8]();
      v10 = v12 - v9;
      if (v8)
      {
        memmove(v10, (*(a1 + 32) + v15 - v14), v8);
      }

      v8[v10] = 0;
      v12[2] = 0;
      sub_2992769B0(v10);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void *sub_29923F450(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_29923F4C4(result, a2);
  }

  return result;
}

void sub_29923F4A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29923F4C4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_29920B608();
}

const void *sub_29923F514(uint64_t a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((byte_2A14601D8 & 1) == 0)
  {
    pthread_once(&stru_2A145E708, sub_29923F834);
  }

  pthread_rwlock_rdlock((qword_2A14601E0 + 16));
  Value = CFDictionaryGetValue(*(qword_2A14601E0 + 8), a2);
  pthread_rwlock_unlock((qword_2A14601E0 + 16));
  if (!Value)
  {
    v4 = qword_2A14601E0;
    pthread_rwlock_wrlock((qword_2A14601E0 + 16));
    Value = CFDictionaryGetValue(*(qword_2A14601E0 + 8), a2);
    if (!Value)
    {
      if (CFStringCompare(a2, @"com.apple.TrieAccessMethod", 0) == kCFCompareEqualTo)
      {
        operator new();
      }

      if (CFStringCompare(a2, @"com.apple.HeapAccessMethod", 0) == kCFCompareEqualTo)
      {
        operator new();
      }

      if (CFStringCompare(a2, @"com.apple.TestAccessMethod-Inspector", 0) == kCFCompareEqualTo)
      {
        operator new();
      }

      Value = 0;
    }

    pthread_rwlock_unlock((v4 + 16));
  }

  return Value;
}

void sub_29923F7D8(_Unwind_Exception *a1)
{
  sub_29923F9D4(v1);
  MEMORY[0x29C29BFB0](v1, 0x10E1C404BFD5011);
  pthread_rwlock_unlock((v2 + 16));
  _Unwind_Resume(a1);
}

void sub_29923F904(uint64_t a1)
{
  sub_29923F980(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29923F948(uint64_t a1)
{
  sub_29923F980(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29923F980(uint64_t a1)
{
  *a1 = &unk_2A1F67690;
  pthread_rwlock_destroy((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29923F9D4(void *a1)
{
  *a1 = &unk_2A1F67788;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_29923FA28(void *a1)
{
  sub_29923F9D4(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29923FA70(uint64_t a1)
{
  v1 = (*(a1 + 168) + 1);
  *(a1 + 168) = v1;
  return v1;
}

uint64_t sub_29923FA84(uint64_t a1)
{
  v1 = (*(a1 + 168) - 1);
  *(a1 + 168) = v1;
  return v1;
}

uint64_t sub_29923FC38(uint64_t a1, void *a2)
{
  result = sub_29924412C(a2);
  if (a2)
  {
    v4 = *(*a2 + 8);

    return v4(a2);
  }

  return result;
}

void sub_29923FF3C(void *a1)
{
  sub_29923F9D4(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29923FF84(uint64_t a1)
{
  v1 = (*(a1 + 168) + 1);
  *(a1 + 168) = v1;
  return v1;
}

uint64_t sub_29923FF98(uint64_t a1)
{
  v1 = (*(a1 + 168) - 1);
  *(a1 + 168) = v1;
  return v1;
}

uint64_t sub_29924014C(uint64_t a1, void *a2)
{
  result = sub_29924412C(a2);
  if (a2)
  {
    v4 = *(*a2 + 8);

    return v4(a2);
  }

  return result;
}

void sub_299240438(void *a1)
{
  sub_29923F9D4(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299240480(uint64_t a1)
{
  v1 = (*(a1 + 168) + 1);
  *(a1 + 168) = v1;
  return v1;
}

uint64_t sub_299240494(uint64_t a1)
{
  v1 = (*(a1 + 168) - 1);
  *(a1 + 168) = v1;
  return v1;
}

uint64_t sub_299240648(uint64_t a1, void *a2)
{
  result = sub_29924412C(a2);
  if (a2)
  {
    v4 = *(*a2 + 8);

    return v4(a2);
  }

  return result;
}

void sub_299240924(uint64_t a1, int a2, int a3, CFArrayRef theArray, void *a5)
{
  v8 = 0;
  v9 = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F679C0;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_2A1F67A90;
  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
  *(a1 + 40) = 0u;
  v10 = (a1 + 48);
  *(a1 + 56) = 0u;
  while (v8 < CFArrayGetCount(theArray))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    Length = CFStringGetLength(ValueAtIndex);
    LODWORD(v21) = *(*a5 + 4 * v8);
    *(&v21 + 1) = v9;
    *&v22 = Length;
    *(&v22 + 1) = 64;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    if (v13 >= v14)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v10) >> 4);
      v17 = v16 + 1;
      if (v16 + 1 > 0x555555555555555)
      {
        sub_29920D90C();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v10) >> 4);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x2AAAAAAAAAAAAAALL)
      {
        v19 = 0x555555555555555;
      }

      else
      {
        v19 = v17;
      }

      v23[4] = v10;
      if (v19)
      {
        sub_29920D924(v10, v19);
      }

      v20 = 48 * v16;
      v23[0] = 0;
      v23[1] = v20;
      v23[3] = 0;
      *v20 = &unk_2A1F73CB8;
      *(v20 + 40) = 0xFFFFFFFFLL;
      *(v20 + 24) = v22;
      *(v20 + 8) = v21;
      v23[2] = 48 * v16 + 48;
      sub_29920D7E8(v10, v23);
      v15 = *(a1 + 56);
      sub_29920D97C(v23);
    }

    else
    {
      *v13 = &unk_2A1F73CB8;
      *(v13 + 40) = 0xFFFFFFFFLL;
      *(v13 + 24) = v22;
      *(v13 + 8) = v21;
      v15 = v13 + 48;
    }

    *(a1 + 56) = v15;
    v9 += Length;
    ++v8;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  CFStringCreateByCombiningStrings(*MEMORY[0x29EDB8ED8], theArray, &stru_2A1F7E6E8);
  operator new();
}

void sub_299240BFC(_Unwind_Exception *a1, const void **a2, ...)
{
  va_start(va, a2);
  sub_299229F00(v3, 0);
  sub_2992292D8(v2, 0);
  sub_29920D9E8(va);
  sub_299219AB4(a2, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299240C70(uint64_t a1, int a2, int a3, CFStringRef theString, uint64_t a5)
{
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F679C0;
  *(a1 + 8) = 0;
  *(a1 + 24) = &unk_2A1F67A90;
  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
  if (theString)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], theString);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 40) = Copy;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *a5;
  *(a1 + 64) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void sub_299240D20(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_2992292D8(a1, cf);
  }
}

void sub_299240D80(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_299229F00(a1, cf);
  }
}

uint64_t sub_299240DE0(uint64_t a1)
{
  v1 = (*(*a1 + 120))(a1);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t sub_299240E4C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - v2) >> 4);
  v4 = v2 + 48 * a2;
  if (v3 >= a2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL sub_299240E8C(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 96))(a1) == 89 && (*(*a2 + 96))(a2) != 89 || (*(*a1 + 96))(a1) != 89 && (*(*a2 + 96))(a2) == 89)
  {
    return 0;
  }

  if ((*(*a1 + 96))(a1) == 89 || (*(*a2 + 96))(a2) == 89)
  {
    v4 = (*(*a1 + 168))(a1);
    v5 = (*(*a2 + 168))(a2);
    if (CFNumberCompare(v4, v5, 0))
    {
      return 0;
    }

    v7 = (*(*a1 + 160))(a1);
    v8 = (*(*a2 + 160))(a2);
    return CFEqual(v7, v8) != 0;
  }

  else
  {

    return sub_29920D5C8(a1, a2);
  }
}

void sub_2992410D4(uint64_t a1, char *a2, CFIndex capacity)
{
  v3 = capacity;
  Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x29EDB9000]);
  if (v3 >= 1)
  {
    do
    {
      v7 = CFNumberCreate(0, kCFNumberCFIndexType, a2);
      CFArrayAppendValue(Mutable, v7);
      if (v7)
      {
        CFRelease(v7);
      }

      a2 += 8;
      --v3;
    }

    while (v3);
  }

  sub_299229F00((a1 + 80), Mutable);
}

void sub_29924118C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992292D8(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992412FC(uint64_t a1)
{
  *a1 = &unk_2A1F679C0;
  *(a1 + 24) = &unk_2A1F67A90;
  sub_299229F00((a1 + 80), 0);
  sub_2992292D8((a1 + 72), 0);
  v3 = (a1 + 48);
  sub_29920D9E8(&v3);
  sub_299219AB4((a1 + 40), 0);
  return a1;
}

uint64_t sub_299241398(uint64_t a1)
{
  *a1 = &unk_2A1F679C0;
  *(a1 + 24) = &unk_2A1F67A90;
  sub_299229F00((a1 + 80), 0);
  sub_2992292D8((a1 + 72), 0);
  v3 = (a1 + 48);
  sub_29920D9E8(&v3);
  sub_299219AB4((a1 + 40), 0);
  return MEMORY[0x29C29BFB0](a1, 0x10E1C408D9C284ALL);
}

const void *sub_2992414F8(int a1, CFURLRef relativeURL)
{
  if ((byte_2A14601E8 & 1) == 0)
  {
    pthread_once(&stru_2A145E718, sub_299241680);
  }

  v3 = CFURLCopyAbsoluteURL(relativeURL);
  v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
  CFRelease(v3);
  pthread_rwlock_rdlock((qword_2A1461D88 + 16));
  Value = CFDictionaryGetValue(*(qword_2A1461D88 + 8), v4);
  pthread_rwlock_unlock((qword_2A1461D88 + 16));
  if (!Value)
  {
    v6 = qword_2A1461D88;
    pthread_rwlock_wrlock((qword_2A1461D88 + 16));
    Value = CFDictionaryGetValue(*(qword_2A1461D88 + 8), v4);
    if (!Value)
    {
      operator new();
    }

    pthread_rwlock_unlock((v6 + 16));
  }

  CFRelease(v4);
  return Value;
}

void sub_299241644(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v1, 0x10E0C4030B049B9);
  pthread_rwlock_unlock((v2 + 16));
  _Unwind_Resume(a1);
}

uint64_t sub_29924174C(uint64_t a1, uint64_t a2)
{
  v3 = qword_2A1461D88;
  pthread_rwlock_wrlock((qword_2A1461D88 + 16));
  v4 = *(qword_2A1461D88 + 8);
  *(a2 + 320) = CFAbsoluteTimeGetCurrent();
  v5 = CFURLCopyFileSystemPath(*(a2 + 8), kCFURLPOSIXPathStyle);
  CFDictionaryRemoveValue(v4, v5);
  CFRelease(v5);
  v6 = sub_299242C54(a2);
  MEMORY[0x29C29BFB0](v6, 0x10E0C4030B049B9);
  return pthread_rwlock_unlock((v3 + 16));
}

__CFString *sub_2992417F8(uint64_t a1, __CFString *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = @"IDXDefaultProperty";
  }

  v3 = CFGetTypeID(v2);
  if (v3 == CFStringGetTypeID())
  {
    if ((byte_2A14601F0 & 1) == 0)
    {
      pthread_once(&stru_2A145E728, sub_299241A0C);
    }

    pthread_rwlock_rdlock((qword_2A14601F8 + 16));
    Value = CFDictionaryGetValue(*(qword_2A14601F8 + 8), v2);
    pthread_rwlock_unlock((qword_2A14601F8 + 16));
    if (!Value)
    {
      v5 = qword_2A14601F8;
      pthread_rwlock_wrlock((qword_2A14601F8 + 16));
      Value = CFDictionaryGetValue(*(qword_2A14601F8 + 8), v2);
      if (Value)
      {
        v6 = 0;
      }

      else
      {
        if (CFStringGetCharacterAtIndex(v2, 0) == 47)
        {
          v8 = CFURLCreateWithFileSystemPath(0, v2, kCFURLPOSIXPathStyle, 0);
        }

        else
        {
          BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.DictionaryServices");
          v8 = CFBundleCopyResourceURL(BundleWithIdentifier, v2, @"plist", 0);
        }

        v10 = v8;
        if (!v8)
        {
          Value = 0;
LABEL_24:
          pthread_rwlock_unlock((v5 + 16));
          return Value;
        }

        resourceData = 0;
        v11 = CFURLCreateDataAndPropertiesFromResource(0, v8, &resourceData, 0, 0, 0);
        v6 = v11 != 0;
        if (v11)
        {
          Value = CFPropertyListCreateFromXMLData(0, resourceData, 0, 0);
          CFRelease(resourceData);
        }

        else
        {
          Value = 0;
        }

        CFRelease(v10);
        if (!Value)
        {
          goto LABEL_24;
        }
      }

      CFDictionarySetValue(*(qword_2A14601F8 + 8), v2, Value);
      if (v6)
      {
        CFRelease(Value);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v7 = CFGetTypeID(v2);
    if (v7 == CFDictionaryGetTypeID())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return Value;
}

void *sub_299241ADC(void *result)
{
  result[4] = sub_299241BE0;
  result[5] = sub_299241C08;
  result[6] = sub_299241C30;
  result[7] = sub_299241C6C;
  result[8] = sub_299241C94;
  result[9] = sub_299241CBC;
  result[10] = sub_299241CF8;
  result[11] = sub_299241D20;
  result[12] = sub_299241D48;
  result[13] = sub_299241D84;
  result[14] = sub_299241DC0;
  result[15] = sub_299241DFC;
  result[16] = sub_299241E38;
  result[1] = sub_299241E74;
  result[2] = sub_299241EB0;
  result[3] = sub_299241ED8;
  return result;
}

uint64_t sub_299241F00(uint64_t a1, uint64_t a2)
{
  sub_2991BF614(&v11);
  __p = 0;
  v17 = 0;
  v18 = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (sub_299211244(a1, v4, "r"))
  {
    if (*(a1 + 8) && *(a1 + 16))
    {
      operator new();
    }
  }

  else
  {
    std::ios_base::clear((&v11 + *(v11 - 24)), 0);
    v5 = sub_2991C0E9C(&v11, "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Japanese/BlocklistManager.cpp", 83);
    v6 = sub_2991C0E9C(v5, "(", 1);
    v7 = MEMORY[0x29C29BD30](v6, 16);
    v8 = sub_2991C0E9C(v7, ") [", 3);
    v9 = sub_2991C0E9C(v8, "m_mmap.open(filename.c_str(), r)", 34);
    sub_2991C0E9C(v9, "] ", 2);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  v11 = *MEMORY[0x29EDC9538];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v12 = MEMORY[0x29EDC9570] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](&v15);
  return 0;
}

uint64_t sub_299242174(uint64_t a1)
{
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 112);
  return a1;
}

uint64_t sub_2992422A4(uint64_t a1, const __CFURL *a2, const void *a3, const void *a4)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = -1;
  *(a1 + 88) = -1;
  *(a1 + 96) = 0;
  *(a1 + 100) = -1;
  *(a1 + 108) = -1;
  *(a1 + 160) = 0;
  pthread_mutex_init((a1 + 168), 0);
  pthread_mutex_init((a1 + 232), 0);
  *(a1 + 8) = CFRetain(a3);
  *(a1 + 32) = CFURLCopyLastPathComponent(a2);
  if (a4)
  {
    *(a1 + 40) = CFRetain(a4);
  }

  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, a2);
  v9 = CFURLCopyLastPathComponent(PathComponent);
  if (CFStringCompare(v9, @"Resources", 0) == kCFCompareEqualTo)
  {
    v10 = *(a1 + 40);
    if (v10 || (v10 = sub_29923DDB0(a2), (*(a1 + 40) = v10) != 0))
    {
      v11 = CFBundleCopyResourceURL(v10, *(a1 + 32), 0, 0);
      if (!v11)
      {
        CFRelease(PathComponent);
        CFRelease(v9);
        return a1;
      }

      v12 = v11;
      *a1 = CFURLCopyAbsoluteURL(v11);
      CFRelease(v12);
      v13 = CFURLCopyFileSystemPath(*a1, kCFURLPOSIXPathStyle);
      *(a1 + 16) = v13;
      v14 = CFStringFind(v13, @"Contents/", 0);
      v16.length = CFStringGetLength(*(a1 + 16)) - (v14.location + v14.length);
      v16.location = v14.location + v14.length;
      *(a1 + 24) = CFStringCreateWithSubstring(0, *(a1 + 16), v16);
    }
  }

  CFRelease(PathComponent);
  CFRelease(v9);
  if (!*a1)
  {
    *a1 = CFURLCopyAbsoluteURL(a2);
  }

  return a1;
}

uint64_t sub_29924243C(uint64_t a1)
{
  sub_2992424CC(a1);
  if (*a1)
  {
    CFRelease(*a1);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    free(v7);
  }

  pthread_mutex_destroy((a1 + 168));
  pthread_mutex_destroy((a1 + 232));
  return a1;
}

void sub_2992424CC(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    free(*(a1 + 136));
    free(*(a1 + 144));
    v3 = *(a1 + 152);

    free(v3);
  }
}

const __CFDictionary *sub_299242520(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    result = *(a1 + 8);
    if (result)
    {
      Value = CFDictionaryGetValue(result, @"IDXIndexPath");
      *(a1 + 24) = Value;
      CFRetain(Value);
      return *(a1 + 24);
    }
  }

  return result;
}

uint64_t sub_29924256C(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    if (*(a1 + 8))
    {
      v3 = *(a1 + 16);
      if (!v3)
      {
        v3 = CFURLCopyFileSystemPath(*a1, kCFURLPOSIXPathStyle);
        *(a1 + 16) = v3;
      }

      Length = CFStringGetLength(v3);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      *(a1 + 48) = v6;
      v7 = *(a1 + 16);
      if (!v7)
      {
        if (*(a1 + 8))
        {
          v7 = CFURLCopyFileSystemPath(*a1, kCFURLPOSIXPathStyle);
          *(a1 + 16) = v7;
          v6 = *(a1 + 48);
        }

        else
        {
          v7 = 0;
        }
      }

      CFStringGetFileSystemRepresentation(v7, v6, MaximumSizeForEncoding);
      return *(a1 + 48);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_299242628(void *a1)
{
  v1 = a1 + 10;
  if (a1[10] == -1)
  {
    v4 = a1[1];
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, @"IDXIndexDataSizeLength");
      if (Value && CFNumberGetValue(Value, kCFNumberCFIndexType, v1))
      {
        if (*v1)
        {
          return *v1;
        }
      }

      else
      {
        *v1 = 0;
      }

      sub_2992426CC(a1);
      if (a1[16] == 1 && !a1[14] && !a1[15])
      {
        a1[10] = *(a1[19] + 8);
      }
    }
  }

  return *v1;
}

uint64_t sub_2992426CC(uint64_t a1)
{
  if ((*(a1 + 160) & 1) == 0 && *(a1 + 8))
  {
    pthread_mutex_lock((a1 + 168));
    if ((*(a1 + 160) & 1) == 0)
    {
      sub_2992428E4(a1);
      *(a1 + 160) = 1;
    }

    pthread_mutex_unlock((a1 + 168));
  }

  return a1 + 112;
}

uint64_t sub_299242728(uint64_t a1)
{
  if ((*(a1 + 96) & 1) == 0)
  {
    sub_2992426CC(a1);
    pthread_mutex_lock((a1 + 168));
    if ((*(a1 + 96) & 1) == 0)
    {
      *(a1 + 88) = 0;
      if (!*(a1 + 128))
      {
        v2 = *(a1 + 112);
        if (v2 < 1)
        {
          v3 = 0;
        }

        else
        {
          v3 = 0;
          v4 = (*(a1 + 136) + 16);
          do
          {
            v5 = *v4;
            v4 += 3;
            v3 += v5;
            --v2;
          }

          while (v2);
          *(a1 + 88) = v3;
        }

        v6 = *(a1 + 120);
        if (v6 >= 1)
        {
          v7 = (*(a1 + 144) + 8);
          do
          {
            v8 = *v7;
            v7 += 2;
            v3 += v8;
            --v6;
          }

          while (v6);
          *(a1 + 88) = v3;
        }
      }
    }

    *(a1 + 96) = 1;
    pthread_mutex_unlock((a1 + 168));
  }

  return *(a1 + 88);
}

BOOL sub_2992427E4(uint64_t a1)
{
  v1 = *(a1 + 100);
  if (v1 == -1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"IDXIndexWritable");
      v5 = CFBooleanGetValue(Value);
      *(a1 + 100) = v5;
      if (v5)
      {
        v6 = sub_29924256C(a1);
        if (access(v6, 0))
        {
          v1 = *(a1 + 100);
        }

        else
        {
          v7 = sub_29924256C(a1);
          v1 = access(v7, 2) == 0;
          *(a1 + 100) = v1;
        }
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      v1 = -1;
    }
  }

  return v1 != 0;
}

BOOL sub_299242888(uint64_t a1)
{
  v2 = *(a1 + 108);
  if (v2 == -1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"IDXIndexBigEndian");
      v2 = CFBooleanGetValue(Value);
      *(a1 + 108) = v2;
    }

    else
    {
      v2 = -1;
    }
  }

  return v2 != 0;
}

CFIndex sub_2992428E4(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 8), @"IDXIndexDataFields");
  if (!result)
  {
    return result;
  }

  v3 = result;
  Value = CFDictionaryGetValue(result, @"IDXExternalDataFields");
  if (!Value)
  {
    *(a1 + 112) = 0;
    goto LABEL_9;
  }

  v5 = Value;
  Count = CFArrayGetCount(Value);
  *(a1 + 112) = Count;
  if (!Count)
  {
LABEL_9:
    *(a1 + 136) = 0;
    goto LABEL_10;
  }

  v7 = Count;
  *(a1 + 136) = malloc_type_malloc(24 * Count, 0x106004033AEC38CuLL);
  if (v7 >= 1)
  {
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      *(*(a1 + 136) + v8) = CFDictionaryGetValue(ValueAtIndex, @"IDXDataFieldName");
      *(*(a1 + 136) + v8 + 8) = CFDictionaryGetValue(ValueAtIndex, @"IDXIndexPath");
      v11 = CFDictionaryGetValue(ValueAtIndex, @"IDXDataSize");
      CFNumberGetValue(v11, kCFNumberCFIndexType, (*(a1 + 136) + v8 + 16));
      v8 += 24;
    }
  }

LABEL_10:
  v12 = CFDictionaryGetValue(v3, @"IDXFixedDataFields");
  if (!v12)
  {
    *(a1 + 120) = 0;
    goto LABEL_17;
  }

  v13 = v12;
  v14 = CFArrayGetCount(v12);
  *(a1 + 120) = v14;
  if (!v14)
  {
LABEL_17:
    *(a1 + 144) = 0;
    goto LABEL_18;
  }

  v15 = v14;
  *(a1 + 144) = malloc_type_malloc(16 * v14, 0x1060040C2E02434uLL);
  if (v15 >= 1)
  {
    v16 = 0;
    for (j = 0; j != v15; ++j)
    {
      v18 = CFArrayGetValueAtIndex(v13, j);
      *(*(a1 + 144) + v16) = CFDictionaryGetValue(v18, @"IDXDataFieldName");
      v19 = CFDictionaryGetValue(v18, @"IDXDataSize");
      CFNumberGetValue(v19, kCFNumberCFIndexType, (*(a1 + 144) + v16 + 8));
      v16 += 16;
    }
  }

LABEL_18:
  result = CFDictionaryGetValue(v3, @"IDXVariableDataFields");
  if (!result)
  {
    *(a1 + 128) = 0;
    goto LABEL_25;
  }

  v20 = result;
  result = CFArrayGetCount(result);
  *(a1 + 128) = result;
  if (!result)
  {
LABEL_25:
    *(a1 + 152) = 0;
    return result;
  }

  v21 = result;
  result = malloc_type_malloc(16 * result, 0x1060040C2E02434uLL);
  *(a1 + 152) = result;
  if (v21 >= 1)
  {
    v22 = 0;
    for (k = 0; k != v21; ++k)
    {
      v24 = CFArrayGetValueAtIndex(v20, k);
      *(*(a1 + 152) + v22) = CFDictionaryGetValue(v24, @"IDXDataFieldName");
      v25 = CFDictionaryGetValue(v24, @"IDXDataSizeLength");
      result = CFNumberGetValue(v25, kCFNumberCFIndexType, (*(a1 + 152) + v22 + 8));
      v22 += 16;
    }
  }

  return result;
}

uint64_t sub_299242BC8(uint64_t a1, CFURLRef relativeURL)
{
  *a1 = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  *(a1 + 176) = 0;
  *(a1 + 248) = 0;
  *(a1 + 8) = CFURLCopyAbsoluteURL(relativeURL);
  pthread_mutex_init((a1 + 32), 0);
  pthread_mutex_init((a1 + 184), 0);
  pthread_mutex_init((a1 + 112), 0);
  pthread_mutex_init((a1 + 256), 0);
  *(a1 + 320) = CFAbsoluteTimeGetCurrent();
  return a1;
}

uint64_t sub_299242C54(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 248);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    v6 = *(a1 + 104);
    if (v6 >= 1)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(a1 + 96) + 8 * i);
        if (v8)
        {
          v9 = sub_29924243C(v8);
          MEMORY[0x29C29BFB0](v9, 0x1070C4063F6B07ELL);
          v6 = *(a1 + 104);
        }
      }

      v5 = *(a1 + 96);
    }

    free(v5);
  }

  pthread_mutex_destroy((a1 + 32));
  pthread_mutex_destroy((a1 + 184));
  pthread_mutex_destroy((a1 + 112));
  pthread_mutex_destroy((a1 + 256));
  return a1;
}

CFDictionaryRef sub_299242D20(CFDictionaryRef *a1)
{
  if (*a1 == -1)
  {
    if (sub_299242D84(a1))
    {
      Value = CFDictionaryGetValue(a1[2], @"IDXDictionaryVersion");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberCFIndexType, a1);
      }
    }
  }

  return *a1;
}

uint64_t sub_299242D84(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    pthread_mutex_lock((a1 + 32));
    if ((*(a1 + 24) & 1) == 0)
    {
      v2 = CFURLCreateCopyAppendingPathComponent(0, *(a1 + 8), @"Info.plist", 0);
      resourceData = 0;
      if (CFURLCreateDataAndPropertiesFromResource(0, v2, &resourceData, 0, 0, 0))
      {
        v3 = resourceData == 0;
      }

      else
      {
        v3 = 1;
      }

      if (!v3)
      {
        *(a1 + 16) = CFPropertyListCreateFromXMLData(0, resourceData, 0, 0);
        CFRelease(resourceData);
      }

      CFRelease(v2);
    }

    *(a1 + 24) = 1;
    pthread_mutex_unlock((a1 + 32));
  }

  *(a1 + 320) = CFAbsoluteTimeGetCurrent();
  return *(a1 + 16);
}

uint64_t sub_299242E50(uint64_t a1)
{
  result = *(a1 + 248);
  if (!result)
  {
    pthread_mutex_lock((a1 + 256));
    if (!*(a1 + 248))
    {
      *(a1 + 248) = CFBundleCreate(0, *(a1 + 8));
    }

    pthread_mutex_unlock((a1 + 256));
    return *(a1 + 248);
  }

  return result;
}

BOOL sub_299242EA4(CFDictionaryRef *a1)
{
  v2 = sub_299242D20(a1);
  result = 0;
  if (v2 != -1 && v2 <= 2)
  {
    return sub_299242EF4(a1, 0) != 0;
  }

  return result;
}

uint64_t sub_299242EF4(uint64_t a1, _DWORD *a2)
{
  if ((*(a1 + 108) & 1) == 0 && sub_299242D84(a1))
  {
    pthread_mutex_lock((a1 + 112));
    if ((*(a1 + 108) & 1) == 0)
    {
      Value = CFDictionaryGetValue(*(a1 + 16), @"IDXDictionaryIndexes");
      if (Value)
      {
        v5 = Value;
        Count = CFArrayGetCount(Value);
        *(a1 + 104) = Count;
        *(a1 + 96) = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
        if (*(a1 + 104) >= 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
          v8 = CFDictionaryGetValue(ValueAtIndex, @"IDXIndexPath");
          sub_29923DD90(*(a1 + 8), v8);
          operator new();
        }
      }

      *(a1 + 108) = 1;
    }

    pthread_mutex_unlock((a1 + 112));
  }

  if (a2)
  {
    *a2 = *(a1 + 104);
  }

  return *(a1 + 96);
}

uint64_t sub_2992430C0(uint64_t a1, const __CFString *a2)
{
  v4 = sub_299242EF4(a1, 0);
  v5 = *(a1 + 104);
  if (a2)
  {
    if (v5 >= 1)
    {
      v6 = 0;
      while (1)
      {
        v7 = *v4;
        Value = *(*v4 + 56);
        if (Value || (v9 = *(v7 + 8)) != 0 && (Value = CFDictionaryGetValue(v9, @"IDXIndexName"), (*(v7 + 56) = Value) != 0))
        {
          if (CFStringCompare(a2, Value, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }

        if (CFStringCompare(a2, *(*v4 + 32), 0) == kCFCompareEqualTo)
        {
          break;
        }

        ++v6;
        v4 += 8;
        if (v6 >= *(a1 + 104))
        {
          return 0;
        }
      }

      goto LABEL_13;
    }

    return 0;
  }

  if (v5 <= 0)
  {
    return 0;
  }

LABEL_13:
  v10 = *v4;
  if (v10)
  {
    sub_2992431B0(a1);
  }

  return v10;
}

void sub_2992431B0(uint64_t a1)
{
  pthread_mutex_lock((a1 + 184));
  ++*(a1 + 176);
  pthread_mutex_unlock((a1 + 184));
  *(a1 + 320) = CFAbsoluteTimeGetCurrent();
}

void sub_2992431F4(uint64_t a1)
{
  pthread_mutex_lock((a1 + 184));
  v2 = *(a1 + 176);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v4 < 0 == v3)
  {
    *(a1 + 176) = v4;
  }

  pthread_mutex_unlock((a1 + 184));
  *(a1 + 320) = CFAbsoluteTimeGetCurrent();
}

uint64_t sub_29924323C()
{
  if ((byte_2A1460208 & 1) == 0)
  {
    pthread_mutex_lock(&stru_2A145E748);
    if ((byte_2A1460208 & 1) == 0)
    {
      operator new();
    }

    pthread_mutex_unlock(&stru_2A145E748);
  }

  return qword_2A1460210;
}

void *sub_2992432B4(uint64_t a1, const __CFURL *a2, const __CFString *a3)
{
  v5 = sub_29924323C();
  v6 = sub_2992414F8(v5, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_2992430C0(v6, a3);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_29924347C();
  Value = v9[8];
  if (!Value)
  {
    v12 = v9[1];
    if (v12)
    {
      Value = CFDictionaryGetValue(v12, @"IDXIndexAccessMethod");
      v9[8] = Value;
    }

    else
    {
      Value = 0;
    }
  }

  v13 = sub_29923F514(v10, Value);
  if (!v13 || (v14 = v13, (v15 = (*(*v13 + 48))(v13, v9)) == 0))
  {
LABEL_12:
    sub_2992431F4(v7);
    return 0;
  }

  v16 = v15;
  pthread_once(&stru_2A145E738, sub_299243E48);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    (*(*v14 + 56))(v14, v16);
    goto LABEL_12;
  }

  v18 = Instance;
  v19 = sub_2992426CC(v9);
  v20 = malloc_type_malloc((32 * (v19[1] + *v19 + v19[2])) | 0x10, 0x10800404B4DF656uLL);
  v18[2] = v14;
  v18[3] = v7;
  v18[4] = v9;
  v18[5] = v16;
  v18[8] = v20;
  v21 = sub_299242628(v9);
  v22 = sub_299242728(v9);
  v23 = sub_299242888(v9);
  v18[6] = sub_29923E020(v21, v22, v23, v18 + 7);
  return v18;
}

uint64_t sub_29924347C()
{
  if ((byte_2A1460209 & 1) == 0)
  {
    pthread_mutex_lock(&stru_2A145E788);
    if ((byte_2A1460209 & 1) == 0)
    {
      operator new();
    }

    pthread_mutex_unlock(&stru_2A145E788);
  }

  return qword_2A1460218;
}

uint64_t sub_299243500(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v8 = 0;
  v5 = sub_29923DC24(a2, 0x100u, &v8);
  v6 = (*(**(a1 + 16) + 64))(*(a1 + 16), *(a1 + 40), v5, v8, a3);
  if (v5)
  {
    free(v5);
  }

  return v6;
}

CFIndex sub_299243598(uint64_t a1, const __CFArray *a2)
{
  v40 = *(a1 + 32);
  v3 = sub_2992426CC(v40);
  result = CFArrayGetCount(a2);
  v5 = result;
  v6 = *v3;
  v39 = v3;
  if (*v3 < 1)
  {
    v9 = 0;
    v8 = 0;
    v42 = 0;
  }

  else
  {
    v7 = 0;
    v42 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v3[3] + 24 * v7;
      if (v5 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v11);
          result = CFStringCompare(ValueAtIndex, *v10, 0);
          if (!result)
          {
            break;
          }

          if (v5 == ++v11)
          {
            goto LABEL_11;
          }
        }

        v13 = v6;
        v14 = (*(a1 + 64) + 32 * v9++);
        v14[5] = v11 + 1;
        v15 = *(v10 + 16);
        v16 = sub_299242888(v40);
        v17 = v15;
        v3 = v39;
        result = sub_29923E020(0, v17, v16, v14 + 4);
        v14[2] = v8;
        v14[3] = result;
        v6 = v13;
        ++v42;
        v8 = 0;
      }

      if (v11 == v5)
      {
LABEL_11:
        v8 += *(v10 + 16);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v18 = v3[1];
  if (v18 >= 1 && v42 < v5)
  {
    v20 = 0;
    do
    {
      v21 = v3[4] + 16 * v20;
      if (v5 < 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        while (1)
        {
          v23 = CFArrayGetValueAtIndex(a2, v22);
          result = CFStringCompare(v23, *v21, 0);
          if (!result)
          {
            break;
          }

          if (v5 == ++v22)
          {
            goto LABEL_29;
          }
        }

        v24 = (*(a1 + 64) + 32 * v9++);
        v24[5] = v22 + 1;
        v25 = *(v21 + 8);
        v26 = sub_299242888(v40);
        v27 = v25;
        v3 = v39;
        result = sub_29923E020(0, v27, v26, v24 + 4);
        v24[2] = v8;
        v24[3] = result;
        ++v42;
        v8 = 0;
      }

      if (v22 == v5)
      {
LABEL_29:
        v8 += *(v21 + 8);
      }

      ++v20;
    }

    while (v20 < v18 && v42 < v5);
  }

  v28 = v3[2];
  if (v28 >= 1 && v42 < v5)
  {
    v30 = 0;
    do
    {
      v31 = v3[5] + 16 * v30;
      v32 = (*(a1 + 64) + 32 * v9);
      v32[5] = 0;
      v33 = *(v31 + 8);
      v34 = sub_299242888(v40);
      result = sub_29923E020(v33, 0, v34, v32 + 4);
      v32[2] = v8;
      v32[3] = result;
      v35 = v32 + 2;
      if (v5 >= 1)
      {
        v36 = 0;
        while (1)
        {
          v37 = CFArrayGetValueAtIndex(a2, v36);
          result = CFStringCompare(v37, *v31, 0);
          ++v36;
          if (!result)
          {
            break;
          }

          if (v5 == v36)
          {
            goto LABEL_44;
          }
        }

        v35[3] = v36;
        ++v42;
      }

LABEL_44:
      ++v9;
      ++v30;
      v3 = v39;
      if (v30 >= v28)
      {
        break;
      }

      v8 = 0;
    }

    while (v42 < v5);
  }

  v38 = *(a1 + 64);
  *v38 = v5;
  v38[1] = v9;
  return result;
}

uint64_t sub_29924388C(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = *(result + 64);
  v8 = *v7;
  if (*v7 >= 1)
  {
    v9 = a4;
    v10 = a5;
    do
    {
      *v9++ = 0;
      *v10++ = 0;
      --v8;
    }

    while (v8);
  }

  if (a3 >= 1)
  {
    v11 = v7[1];
    if (v11 >= 1)
    {
      v12 = a2 + a3;
      v19 = 0;
      v13 = v7 + 5;
      v14 = 1;
      do
      {
        v15 = a2 + *(v13 - 3);
        result = (*(v13 - 2))(*(v13 - 1), v15, &v19);
        v16 = v15 + v19;
        if (*v13)
        {
          if (result <= 0)
          {
            v17 = 0;
          }

          else
          {
            v17 = v15 + v19;
          }

          v18 = 8 * *v13 - 8;
          *(a4 + v18) = v17;
          *(a5 + v18) = result;
        }

        if (v14 >= v11)
        {
          break;
        }

        v13 += 4;
        a2 = v16 + result;
        ++v14;
      }

      while (v16 + result < v12);
    }
  }

  return result;
}

__CFData *sub_299243978(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_2992426CC(v3);
  v5 = sub_299242888(v3);
  Mutable = CFDataCreateMutable(0, 0);
  v7 = *v4;
  if (*v4 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = v4[3];
      if (CFDictionaryContainsKey(a2, *(v9 + v8)))
      {
        v10 = v9 + v8;
        Value = CFDictionaryGetValue(a2, *v10);
        sub_29923E2B4(Mutable, Value, *(v10 + 16), 1, v5);
      }

      else
      {
        sub_29923E520(Mutable, 0, *(v9 + v8 + 16), v5);
      }

      v8 += 24;
      --v7;
    }

    while (v7);
  }

  v12 = v4[1];
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *MEMORY[0x29EDB8EE8];
    do
    {
      v15 = v4[4];
      if (CFDictionaryContainsKey(a2, *(v15 + v13)))
      {
        v16 = v15 + v13;
        v17 = CFDictionaryGetValue(a2, *v16);
        sub_29923E2B4(Mutable, v17, *(v16 + 8), 1, v5);
      }

      else
      {
        v18 = v15 + v13;
        v19 = malloc_type_calloc(1uLL, *(v15 + v13 + 8), 0x100004077774924uLL);
        v20 = CFDataCreateWithBytesNoCopy(0, v19, *(v18 + 8), v14);
        sub_29923E2B4(Mutable, v20, *(v18 + 8), 1, v5);
        CFRelease(v20);
        free(v19);
      }

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  v21 = v4[2];
  if (v21 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = v4[5];
      if (CFDictionaryContainsKey(a2, *(v23 + v22)))
      {
        v24 = v23 + v22;
        v25 = CFDictionaryGetValue(a2, *v24);
        sub_29923E2B4(Mutable, v25, *(v24 + 8), 0, v5);
      }

      else
      {
        sub_29923E520(Mutable, 0, *(v23 + v22 + 8), v5);
      }

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  return Mutable;
}

uint64_t sub_299243B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 && ((v9 = *(a1 + 32), *(v9 + 72)) || (v10 = *(v9 + 8)) != 0 && (Value = CFDictionaryGetValue(v10, @"IDXIndexKeyMatchingMethods"), (*(v9 + 72) = Value) != 0)))
  {
    return 0;
  }

  else
  {
    return (*(**(a1 + 16) + 136))(*(a1 + 16), *(a1 + 40), a2, a3, a4);
  }
}

uint64_t sub_299243C48(const __CFURL *a1, __CFString *a2)
{
  v4 = sub_29924323C();
  v5 = sub_29924347C();
  v6 = sub_2992417F8(v4, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_29923DCE8(a1);
  if (mkdir(v8, 0x1FFu))
  {
    goto LABEL_27;
  }

  v9 = CFURLCreateCopyAppendingPathComponent(0, a1, @"Info.plist", 0);
  v10 = CFWriteStreamCreateWithFile(0, v9);
  if (v10)
  {
    v11 = v10;
    if (CFWriteStreamOpen(v10))
    {
      v12 = CFPropertyListWriteToStream(v7, v11, kCFPropertyListXMLFormat_v1_0, 0);
      CFWriteStreamClose(v11);
      v13 = v12 < 1;
    }

    else
    {
      v13 = 1;
    }

    CFRelease(v11);
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = 1;
  if (v9)
  {
LABEL_10:
    CFRelease(v9);
  }

LABEL_11:
  if (!v13)
  {
    v14 = sub_2992414F8(v4, a1);
    if (v14)
    {
      v15 = v14;
      v25 = 0;
      v16 = sub_299242EF4(v14, &v25);
      if (v16)
      {
        if (v25 < 1)
        {
LABEL_23:
          v23 = 1;
          if (!v8)
          {
            return v23;
          }

          goto LABEL_28;
        }

        v17 = v16;
        v18 = 0;
        while (1)
        {
          v19 = *(v17 + 8 * v18);
          Value = v19[8];
          if (!Value)
          {
            v21 = v19[1];
            if (v21)
            {
              Value = CFDictionaryGetValue(v21, @"IDXIndexAccessMethod");
              v19[8] = Value;
            }

            else
            {
              Value = 0;
            }
          }

          v22 = sub_29923F514(v5, Value);
          if (!v22 || ((*(*v22 + 144))(v22, *v19, v19[1]) & 1) == 0)
          {
            break;
          }

          if (++v18 >= v25)
          {
            goto LABEL_23;
          }
        }
      }

      sub_29924174C(v4, v15);
    }
  }

  sub_29923DEC4(v8);
LABEL_27:
  v23 = 0;
  if (v8)
  {
LABEL_28:
    free(v8);
  }

  return v23;
}

uint64_t sub_299243E48()
{
  result = _CFRuntimeRegisterClass();
  qword_2A1460200 = result;
  return result;
}

void sub_299243E70(uint64_t a1)
{
  (*(**(a1 + 16) + 56))(*(a1 + 16), *(a1 + 40));
  if (*(a1 + 32))
  {
    sub_2992431F4(*(a1 + 24));
  }

  v2 = *(a1 + 64);
  if (v2)
  {

    free(v2);
  }
}

CFStringRef sub_299243EFC(CFURLRef **a1, const __CFDictionary *a2)
{
  v4 = CFGetAllocator(a1);
  PathComponent = CFURLCopyLastPathComponent(*a1[4]);
  if (PathComponent)
  {
    v6 = PathComponent;
    v7 = CFStringCreateWithFormat(v4, a2, @"<%@>", PathComponent);
    CFRelease(v6);
    return v7;
  }

  else
  {

    return CFStringCreateWithFormat(v4, a2, @"<#invalid index>");
  }
}

CFStringRef sub_299243FA8(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFURLCopyFileSystemPath(**(a1 + 32), kCFURLPOSIXPathStyle);
  v4 = *(*(a1 + 16) + 8);
  if (!v3)
  {
    return CFStringCreateWithFormat(v2, 0, @"<IDXIndexRef %p>{access method = %@, #invalid index}", a1, v4);
  }

  v5 = v3;
  v6 = CFStringCreateWithFormat(v2, 0, @"<IDXIndexRef %p>{access method = %@, index = %@, open# = %d}", a1, v4, v3, 0);
  CFRelease(v5);
  return v6;
}

uint64_t sub_299244048(uint64_t a1)
{
  *a1 = &unk_2A1F67B68;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = sub_29924243C(v2);
      MEMORY[0x29C29BFB0](v3, 0x1070C4063F6B07ELL);
    }
  }

  return a1;
}

uint64_t sub_2992440BC(void *a1)
{
  pthread_mutex_lock((a1[1] + 232));
  v2 = (*(*a1 + 88))(a1, 1, 0);
  pthread_mutex_unlock((a1[1] + 232));
  return v2;
}

uint64_t sub_29924412C(void *a1)
{
  pthread_mutex_lock((a1[1] + 232));
  (*(*a1 + 96))(a1, 1);
  v2 = (a1[1] + 232);

  return pthread_mutex_unlock(v2);
}

uint64_t sub_29924419C(int a1, int a2, off_t *a3)
{
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  if (fstat(a1, &v8) == -1)
  {
    return -1;
  }

  st_size = v8.st_size;
  if (a3)
  {
    *a3 = v8.st_size;
  }

  return mmap(0, st_size, v5, 1, a1, 0);
}

uint64_t sub_299244244(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F67BF0;
  *(a1 + 8) = a2;
  *(a1 + 32) = sub_299242728(a2) != 0;
  *(a1 + 33) = sub_2992427E4(*(a1 + 8));
  *(a1 + 34) = sub_299242888(a2);
  v4 = sub_299242628(a2);
  v5 = sub_299242728(a2);
  v6 = sub_299242888(a2);
  v7 = sub_29923E020(v4, v5, v6, (a1 + 128));
  *(a1 + 36) = 0;
  *(a1 + 120) = v7;
  v8 = a2[1];
  if (v8)
  {
    Value = CFDictionaryGetValue(v8, @"HeapDataCompressionType");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt16Type, (a1 + 36));
    }
  }

  v10 = *(a1 + 36);
  *(a1 + 35) = *(a1 + 36) != 0;
  *(a1 + 38) = v10 > 3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if ((v10 & 0xFFFE) == 2)
  {
    *(a1 + 80) = *(a1 + 120);
    v11 = sub_299242628(a2);
    v12 = sub_29923E020((v11 << (v11 < 4)), 0, *(a1 + 34), 0);
    v13 = *(a1 + 36);
    v14 = 0x2000;
    if (v13 == 2)
    {
      v14 = 0x8000;
    }

    *(a1 + 56) = v14;
    *(a1 + 120) = v12;
    v15 = a2[1];
    if (v15)
    {
      v16 = CFDictionaryGetValue(v15, @"HeapDataCompressionBlockSize");
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberCFIndexType, (a1 + 56));
      }

      v17 = a2[1];
      if (*(a1 + 36) == 2)
      {
        v18 = 0xFFFFFFFFLL;
      }

      else
      {
        v18 = 0xFFFFLL;
      }

      valuePtr = v18;
      if (v17)
      {
        v19 = CFDictionaryGetValue(v17, @"HeapDataCompressionMaxBlockCount");
        if (v19)
        {
          CFNumberGetValue(v19, kCFNumberLongLongType, &valuePtr);
          v18 = valuePtr;
        }
      }
    }

    else if (v13 == 2)
    {
      v18 = 0xFFFFFFFFLL;
    }

    else
    {
      v18 = 0xFFFFLL;
    }

    if (*(a1 + 36) == 2)
    {
      v20 = 64;
    }

    else
    {
      v20 = 32;
    }

    LODWORD(v21) = vcvtpd_s64_f64(log2(v18));
    v22 = (v20 - v21);
    *(a1 + 88) = 0;
    if (v21 < 1)
    {
      v32 = 0;
    }

    else
    {
      v23 = (v21 + 1) & 0xFFFFFFFE;
      v24 = xmmword_2993FCC00;
      v25 = vdupq_n_s64(v21 - 1);
      v26 = 0uLL;
      v27 = vdupq_n_s64(1uLL);
      v28 = vdupq_n_s64(2uLL);
      do
      {
        v29 = v26;
        v30 = v24;
        v26 = vorrq_s8(v26, vshlq_u64(v27, v24));
        v24 = vaddq_s64(v24, v28);
        v23 -= 2;
      }

      while (v23);
      v31 = vbslq_s8(vcgtq_u64(v30, v25), v29, v26);
      *v31.i8 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
      *(a1 + 88) = v31.i64[0];
      v32 = v31.i64[0];
    }

    *(a1 + 104) = 0;
    if (v22 >= 1)
    {
      v33 = (v22 + 1) & 0xFFFFFFFE;
      v34 = xmmword_2993FCC00;
      v35 = vdupq_n_s64(v22 - 1);
      v36 = 0uLL;
      v37 = vdupq_n_s64(1uLL);
      v38 = vdupq_n_s64(2uLL);
      do
      {
        v39 = v36;
        v40 = v34;
        v36 = vorrq_s8(v36, vshlq_u64(v37, v34));
        v34 = vaddq_s64(v34, v38);
        v33 -= 2;
      }

      while (v33);
      v41 = vbslq_s8(vcgtq_u64(v40, v35), v39, v36);
      *(a1 + 104) = vorr_s8(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
    }

    *(a1 + 96) = v32 << v22;
    *(a1 + 112) = v22;
  }

  *(a1 + 113) = 0;
  return a1;
}

uint64_t sub_299244554(void *a1)
{
  *a1 = &unk_2A1F67BF0;
  v2 = a1[5];
  if (v2)
  {
    free(v2);
  }

  return sub_299244048(a1);
}

void sub_2992445B4(void *a1)
{
  sub_299244554(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992445EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 36);
  if ((v4 & 0xFFFE) == 2)
  {
    a2 = (*(a1 + 96) & a2) >> *(a1 + 112);
  }

  v5 = *(a1 + 24);
  if (v4 == 3 || (*(a1 + 32) & 1) != 0)
  {
    v7 = *(v5 + 16) + (a2 - 1) * *(v5 + 36) + 8;
  }

  else
  {
    v6 = (*(v5 + 16) + a2);
    if (!*v6)
    {
      v9 = 0;
      v8 = 0;
      if (!a3)
      {
        return v9;
      }

      goto LABEL_9;
    }

    v7 = (v6 + 1);
  }

  v11 = 0;
  v8 = (*(a1 + 120))(*(a1 + 128), v7, &v11);
  v9 = v7 + v11;
  if (a3)
  {
LABEL_9:
    *a3 = v8;
  }

  return v9;
}

int64_t sub_2992446AC(uint64_t a1, uint64_t a2, int64_t a3, Bytef *a4)
{
  v6 = a2;
  sourceLen = 0;
  v8 = (*(*a1 + 48))(a1, a2, &sourceLen);
  v18 = 0;
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if ((*(a1 + 113) & 1) != 0 || *(a1 + 35) == 1)
  {
    v10 = (*(a1 + 120))(0, v8, &v18);
    v11 = sourceLen - v18;
    sourceLen = v11;
    v9 += v18;
  }

  else
  {
    v11 = sourceLen;
    v10 = sourceLen;
  }

  v12 = *(a1 + 36);
  if ((v12 & 0xFFFE) == 2)
  {
    if (v10 > *(a1 + 48))
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        free(v13);
      }

      *(a1 + 40) = malloc_type_malloc(v10, 0x100004077774924uLL);
      *(a1 + 48) = v10;
    }

    if (v9 != *(a1 + 64))
    {
      destLen = v10;
      uncompress(*(a1 + 40), &destLen, v9, sourceLen);
      *(a1 + 64) = v9;
    }

    v14 = *(a1 + 40) + (v6 & *(a1 + 104));
    v15 = (*(a1 + 80))(0, v14, &v18);
    sourceLen = v15;
    v9 = (v14 + v18);
    if (*(a1 + 113) == 1)
    {
      v10 = (*(a1 + 80))(0, v9, &v18);
      v11 = sourceLen - v18;
      sourceLen = v11;
      v9 += v18;
    }

    else
    {
      v11 = v15;
      v10 = v15;
    }

    v12 = *(a1 + 36);
  }

  if (v12 == 1)
  {
    if (v10 <= a3)
    {
      destLen = a3;
      uncompress(a4, &destLen, v9, v11);
    }
  }

  else if (v10 <= a3)
  {
    memcpy(a4, v9, v11);
  }

  if (*(a1 + 113) == 1 && v10 <= a3)
  {
    free(v9);
  }

  return v10;
}

BOOL sub_2992448C0(uint64_t a1, uint64_t a2, uint64_t a3, const Bytef *a4, size_t a5, unint64_t *a6)
{
  __len = a5;
  if (*(a1 + 33) != 1)
  {
    return 0;
  }

  v80 = 0;
  v79 = 0;
  (*(a1 + 120))(*(a1 + 128), &v80, &v79);
  if ((*(a1 + 36) & 0xFFFE) != 2)
  {
    v24 = v79;
    if (*(a1 + 35) == 1)
    {
      v25 = compressBound(__len);
      v17 = malloc_type_malloc(v25 + 2 * v24, 0x100004077774924uLL);
      sub_299245018(a1, a4, __len, v79, v17, &__len);
    }

    else
    {
      v17 = sub_29923E194(a4, __len, v79, *(a1 + 34), &__len);
    }

    v26 = *(a1 + 32);
    v27 = *(a1 + 24);
    v28 = __len;
    if (v26 != 1)
    {
      v22 = sub_2992450C4(v27, v17, __len);
      goto LABEL_93;
    }

    v29 = *(v27 + 36);
    if (__len)
    {
      if (v29)
      {
        if (__len != v29)
        {
          goto LABEL_44;
        }
      }

      else
      {
        *(v27 + 36) = __len;
        LODWORD(v29) = v28;
      }
    }

    else if (!v29)
    {
      goto LABEL_44;
    }

    v37 = *(v27 + 16);
    if (v37)
    {
      v38 = *(v27 + 24);
      if (v38 >= (*(v27 + 32) + v29))
      {
        goto LABEL_42;
      }

      v39 = v38 + (v29 << 10);
    }

    else
    {
      v39 = (v29 << 10) | 8u;
    }

    v40 = *(v27 + 8);
    v37 = (*v27)();
    if (!v37)
    {
LABEL_44:
      v22 = 0;
      goto LABEL_93;
    }

    *(v27 + 16) = v37;
    *(v27 + 24) = v39;
LABEL_42:
    v41 = *(v27 + 32);
    if (v41)
    {
      v42 = *(v27 + 36);
    }

    else
    {
      *(v27 + 32) = 8;
      *v37 = 8;
      v42 = *(v27 + 36);
      v37[1] = v42;
      v41 = *(v27 + 32);
    }

    v57 = *(v27 + 40);
    memcpy(v37 + v41, v17, v42);
    v58 = *(v27 + 32) + *(v27 + 36);
    *(v27 + 32) = v58;
    **(v27 + 16) = v58;
    ++*(v27 + 40);
    v22 = v57 + 1;
    goto LABEL_93;
  }

  sourceLen = 0;
  v77 = 0;
  (*(a1 + 80))(0, &v80, &v77);
  v9 = sub_29923E194(a4, __len, v77, *(a1 + 34), &__len);
  v10 = *(a1 + 72);
  if (!v10 || (v11 = (*(*a1 + 48))(a1, v10, &sourceLen), v12 = (*(a1 + 120))(0, v11, &v79), sourceLen = v12, v12 >= *(a1 + 104)))
  {
LABEL_8:
    v18 = v79;
    v19 = compressBound(__len);
    v17 = malloc_type_malloc(v19 + 2 * v18, 0x100004077774924uLL);
    sub_299245018(a1, v9, __len, v79, v17, &__len);
    if (v9 != a4)
    {
      free(v9);
    }

    sourceLen = 0;
    if (*(a1 + 36) == 2)
    {
      v20 = *(a1 + 24);
LABEL_12:
      v21 = sub_2992450C4(v20, v17, __len) << *(a1 + 112);
      v22 = v21 + sourceLen;
      if (__len >= *(a1 + 56))
      {
        v21 = 0;
      }

      *(a1 + 72) = v21;
      goto LABEL_93;
    }

    goto LABEL_47;
  }

  v13 = v79;
  v76 = __len + v12;
  v14 = malloc_type_malloc(__len + v12, 0x100004077774924uLL);
  destLen = v76;
  uncompress(v14, &destLen, (v11 + v13), sourceLen);
  memmove(&v14[sourceLen], v9, __len);
  v15 = v79;
  v16 = compressBound(v76);
  v17 = malloc_type_malloc(v16 + 2 * v15, 0x100004077774924uLL);
  sub_299245018(a1, v14, v76, v79, v17, &v76);
  if (*(a1 + 36) != 2 && v76 > *(a1 + 56))
  {
    free(v17);
    free(v14);
    goto LABEL_8;
  }

  if (v9 != a4)
  {
    free(v9);
  }

  __len = v76;
  free(v14);
  v20 = *(a1 + 24);
  v30 = *(a1 + 72) >> *(a1 + 112);
  if (*(a1 + 36) == 2)
  {
    v31 = *(v20 + 36);
    if (v30 < v31)
    {
      v32 = *(v20 + 16);
      v33 = (v32 + v30);
      v34 = *(v32 + v30);
      if (v34)
      {
        if (v30 + v34 + 4 == v31)
        {
          v35 = v31 - v34 - 4;
          *(v20 + 36) = v35;
          *v32 = v35;
          if (*(v20 + 32) >= 1)
          {
            v36 = *(v20 + 48) - 1;
            *(v20 + 48) = v36;
            v32[5] = v36;
          }
        }

        else
        {
          *v33 = 0;
          if (v34 >= 4 && *(v20 + 32) >= 1)
          {
            v33[1] = v34;
            if (v34 >= 0x20 && v30 > *(v20 + 40))
            {
              v74 = *(v20 + 44);
              if (!v74 || v30 < v74)
              {
                *(v20 + 44) = v30;
                v32[4] = v30;
              }
            }
          }
        }
      }
    }

    goto LABEL_12;
  }

  if (*(v20 + 40) == v30)
  {
    *(v20 + 40) = v30 - 1;
    v43 = *(v20 + 32) - *(v20 + 36);
    *(v20 + 32) = v43;
    **(v20 + 16) = v43;
  }

LABEL_47:
  v44 = v17;
  v45 = *(a1 + 56);
  if (__len % v45)
  {
    v46 = __len / v45 + 1;
  }

  else
  {
    v46 = __len / v45;
  }

  v47 = v46 * v45;
  v17 = malloc_type_calloc(1uLL, v46 * v45, 0x100004077774924uLL);
  memmove(v17, v44, __len);
  free(v44);
  v48 = *(a1 + 24);
  v49 = *(a1 + 56);
  v50 = *(v48 + 36);
  if (v49)
  {
    if (v50)
    {
      if (v49 != v50)
      {
        goto LABEL_72;
      }
    }

    else
    {
      *(v48 + 36) = v49;
      LODWORD(v50) = v49;
    }
  }

  else if (!v50)
  {
    goto LABEL_72;
  }

  v51 = *(v48 + 16);
  if (v51)
  {
    v52 = *(v48 + 24);
    if (v52 >= (*(v48 + 32) + v50))
    {
      goto LABEL_63;
    }

    v53 = v52 + (v50 << 10);
  }

  else
  {
    v53 = (v50 << 10) | 8u;
  }

  v54 = *(v48 + 8);
  v51 = (*v48)();
  if (!v51)
  {
    goto LABEL_72;
  }

  *(v48 + 16) = v51;
  *(v48 + 24) = v53;
LABEL_63:
  v55 = *(v48 + 32);
  if (v55)
  {
    v56 = *(v48 + 36);
  }

  else
  {
    *(v48 + 32) = 8;
    *v51 = 8;
    v56 = *(v48 + 36);
    v51[1] = v56;
    v55 = *(v48 + 32);
  }

  v59 = *(v48 + 40);
  memcpy(v51 + v55, v17, v56);
  v60 = *(v48 + 32) + *(v48 + 36);
  *(v48 + 32) = v60;
  **(v48 + 16) = v60;
  ++*(v48 + 40);
  *(a1 + 72) = v59 + 1;
  if (v59 < *(a1 + 88))
  {
    v61 = (v59 + 1) << *(a1 + 112);
    *(a1 + 72) = v61;
    v22 = v61 + sourceLen;
    goto LABEL_73;
  }

  if (v59 != -1)
  {
    fprintf(*MEMORY[0x29EDCA610], "Failed to add a new data since record count exceeds limit (%lld) defined in the current compaction-type.\n", *(a1 + 88));
  }

LABEL_72:
  v22 = 0;
  v47 = 0;
  *(a1 + 72) = 0;
LABEL_73:
  v62 = *(a1 + 56);
  v63 = v47 - v62;
  if (v47 != v62)
  {
    v64 = v17;
    do
    {
      v64 += v62;
      v65 = *(a1 + 24);
      v66 = *(v65 + 36);
      if (v62)
      {
        if (v66)
        {
          if (v62 != v66)
          {
            goto LABEL_92;
          }
        }

        else
        {
          *(v65 + 36) = v62;
          LODWORD(v66) = v62;
        }
      }

      else if (!v66)
      {
        goto LABEL_92;
      }

      v67 = *(v65 + 16);
      if (v67)
      {
        v68 = *(v65 + 24);
        if (v68 >= (*(v65 + 32) + v66))
        {
          goto LABEL_88;
        }

        v69 = v68 + (v66 << 10);
      }

      else
      {
        v69 = (v66 << 10) | 8u;
      }

      v70 = *(v65 + 8);
      v67 = (*v65)();
      if (v67)
      {
        *(v65 + 16) = v67;
        *(v65 + 24) = v69;
LABEL_88:
        v71 = *(v65 + 32);
        if (v71)
        {
          v72 = *(v65 + 36);
        }

        else
        {
          *(v65 + 32) = 8;
          *v67 = 8;
          v72 = *(v65 + 36);
          v67[1] = v72;
          v71 = *(v65 + 32);
        }

        memcpy(v67 + v71, v64, v72);
        v73 = *(v65 + 32) + *(v65 + 36);
        *(v65 + 32) = v73;
        **(v65 + 16) = v73;
        ++*(v65 + 40);
      }

LABEL_92:
      *(a1 + 72) = 0;
      v62 = *(a1 + 56);
      v63 -= v62;
    }

    while (v63);
  }

LABEL_93:
  free(v17);
  if (a6)
  {
    *a6 = v22;
  }

  return v22 != 0;
}

_DWORD *sub_299245018(uint64_t a1, const Bytef *a2, uLong sourceLen, unsigned int a4, Bytef *a5, void *a6)
{
  destLen = compressBound(sourceLen) + 2 * a4;
  compress(&a5[2 * a4], &destLen, a2, sourceLen);
  sub_29923E238(&a5[a4], sourceLen, a4, *(a1 + 34));
  v12 = destLen;
  result = sub_29923E238(a5, destLen + a4, a4, *(a1 + 34));
  if (a6)
  {
    *a6 = v12 + 2 * a4;
  }

  return result;
}

unint64_t sub_2992450C4(uint64_t a1, void *__src, size_t __n)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);
    if (__n + 4 + *(a1 + 36) <= v7)
    {
      goto LABEL_11;
    }

    v8 = (__n + 4) << 10;
    if (v8 >= __n + 262148)
    {
      v8 = __n + 262148;
    }

    v9 = v7 + v8;
  }

  else
  {
    v10 = (__n << 10) + 4096;
    if (v10 >= __n + 262148)
    {
      v10 = __n + 262148;
    }

    v9 = v10 + 32;
  }

  v11 = *(a1 + 8);
  v6 = (*a1)();
  if (!v6)
  {
    return 0;
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = v9;
LABEL_11:
  if (*(a1 + 36))
  {
    v12 = *(a1 + 44);
    if (v12)
    {
      v13 = *(a1 + 40);
      if (v12 < v13)
      {
        *(a1 + 44) = v13;
        v12 = v13;
      }

      v14 = 0;
      v15 = __n + 4;
      v16 = v12;
      while (1)
      {
        v17 = *(a1 + 36);
        if (v16 >= v17)
        {
LABEL_47:
          if (v14)
          {
            v6 = *(a1 + 16);
            *(v6 + 16) = *(a1 + 44);
          }

          else
          {
            *(a1 + 44) = 0;
            v6 = *(a1 + 16);
            *(v6 + 16) = 0;
          }

          break;
        }

        v18 = *(a1 + 16);
        while (1)
        {
          v19 = *(v18 + v16);
          if (!v19)
          {
            break;
          }

          v16 += v19 + 4;
          if (v16 >= v17)
          {
            goto LABEL_47;
          }
        }

        v20 = (v18 + v16);
        v21 = (v18 + v16 + 4);
        v22 = *v21;
        v23 = *v21;
        v24 = (v21 + v22);
        v25 = v18 + v17;
        if (v21 + v22 >= v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          do
          {
            if (*v24)
            {
              break;
            }

            v27 = v24[1];
            v24 = (v24 + v27 + 4);
            v23 += v27 + 4;
            ++v26;
          }

          while (v24 < v25);
          v22 = v23;
        }

        if (v22 != __n && __n + 8 >= v22)
        {
          v30 = 0;
          if (v14)
          {
            goto LABEL_41;
          }
        }

        else
        {
          *(a1 + 48) -= v26;
          *v20 = __n;
          memcpy(v21, __src, __n);
          if (v22 > __n)
          {
            v29 = (v20 + v15);
            v23 -= v15;
            *v29 = 0;
            v29[1] = v23;
            ++*(a1 + 48);
          }

          v30 = v16;
          if (v14)
          {
            goto LABEL_41;
          }
        }

        if (v23 <= 0x1F && v30 == 0)
        {
          v14 = 0;
          goto LABEL_42;
        }

        *(a1 + 44) = v16;
LABEL_41:
        v14 = 1;
LABEL_42:
        v32 = v23 + 4;
        if (v30)
        {
          v32 = 0;
        }

        v16 += v32;
        if (v30)
        {
          v41 = *(a1 + 16);
          v41[4] = *(a1 + 44);
          goto LABEL_53;
        }
      }
    }
  }

  else
  {
    *(a1 + 32) = 0x2000000001;
    *(a1 + 40) = 32;
    *v6 = 32;
    *(v6 + 8) = -*(a1 + 32);
    *(v6 + 12) = *(a1 + 40);
    *(v6 + 16) = *(a1 + 44);
    *(v6 + 20) = *(a1 + 48);
    *(v6 + 24) = -1;
  }

  v30 = *(a1 + 36);
  ++*(a1 + 48);
  *(v6 + v30) = __n;
  v33 = (*(a1 + 36) + 4);
  *(a1 + 36) = v33;
  memcpy((*(a1 + 16) + v33), __src, __n);
  v34 = *(a1 + 36) + __n;
  *(a1 + 36) = v34;
  v41 = *(a1 + 16);
  *v41 = v34;
LABEL_53:
  if (*(a1 + 32) >= 1)
  {
    v35 = *(a1 + 48);
    if (v35 >= 0x1389)
    {
      v36 = *(a1 + 40);
      v37 = 500;
      do
      {
        v38 = (v41 + v36);
        v39 = *v38;
        if (!*v38)
        {
          v39 = v38[1];
        }

        v36 += v39 + 4;
        *(a1 + 40) = v36;
        --v37;
      }

      while (v37);
      v41[3] = v36;
      v35 = 4501;
      *(a1 + 48) = 4501;
    }

    v41[5] = v35;
  }

  return v30;
}

uint64_t sub_2992453EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 33) != 1 || (*(a1 + 36) & 0xFFFE) == 2)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  if (*(a1 + 32) != 1)
  {
    v10 = *(v7 + 36);
    if (v10 > a6)
    {
      v11 = *(v7 + 16);
      v12 = (v11 + a6);
      v13 = *(v11 + a6);
      if (v13)
      {
        if (a6 + v13 + 4 == v10)
        {
          v14 = v10 - v13 - 4;
          *(v7 + 36) = v14;
          *v11 = v14;
          if (*(v7 + 32) >= 1)
          {
            v15 = *(v7 + 48) - 1;
            *(v7 + 48) = v15;
            v11[5] = v15;
          }
        }

        else
        {
          *v12 = 0;
          if (v13 >= 4 && *(v7 + 32) >= 1)
          {
            v12[1] = v13;
            if (v13 >= 0x20 && *(v7 + 40) < a6)
            {
              v18 = *(v7 + 44);
              if (!v18 || v18 > a6)
              {
                *(v7 + 44) = a6;
                v11[4] = a6;
              }
            }
          }
        }

        return 1;
      }
    }

    return 0;
  }

  v8 = *(v7 + 40);
  if (v8 < a6)
  {
    return 0;
  }

  if (v8 == a6)
  {
    *(v7 + 40) = a6 - 1;
    v9 = *(v7 + 32) - *(v7 + 36);
    *(v7 + 32) = v9;
    **(v7 + 16) = v9;
  }

  return 1;
}

BOOL sub_2992454F4(uint64_t a1, int a2, CFArrayRef theArray, void *a4)
{
  v5 = theArray;
  Count = CFArrayGetCount(theArray);
  v8 = malloc_type_malloc(8 * Count, 0x10040436913F5uLL);
  v9 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
  if (*(a1 + 33) != 1)
  {
    return 0;
  }

  v10 = v9;
  v112 = v9;
  if (*(a1 + 32) != 1)
  {
    v116 = malloc_type_calloc(8uLL, Count, 0x100004000313F17uLL);
    v121 = 0;
    v120 = 0;
    v119 = 0;
    (*(a1 + 120))(*(a1 + 128), &v120, &v119);
    if ((*(a1 + 36) & 0xFFFE) == 2)
    {
      Mutable = CFDataCreateMutable(0, 0);
      v118 = 0;
      v117 = 0;
      (*(a1 + 80))(0, &v120, &v117);
      if (Count >= 1)
      {
        v20 = 0;
        v109 = v8;
        v111 = 0;
        v21 = 0;
        v115 = v5;
        do
        {
          v22 = 0;
          v23 = v21;
          while (1)
          {
            v113 = v20;
            ValueAtIndex = CFArrayGetValueAtIndex(v5, v23);
            BytePtr = CFDataGetBytePtr(ValueAtIndex);
            Length = CFDataGetLength(ValueAtIndex);
            v27 = sub_29923E194(BytePtr, Length, v117, *(a1 + 34), &v121);
            if (a4)
            {
              v28 = v111 << *(a1 + 112);
              a4[v23] = v28 + CFDataGetLength(Mutable);
            }

            CFDataAppendBytes(Mutable, v27, v121);
            if (CFDataGetBytePtr(ValueAtIndex) != v27)
            {
              free(v27);
            }

            v29 = CFDataGetLength(Mutable);
            v30 = v119;
            v31 = compressBound(v29);
            v32 = malloc_type_malloc(v31 + 2 * v30, 0x100004077774924uLL);
            v33 = CFDataGetBytePtr(Mutable);
            v34 = CFDataGetLength(Mutable);
            sub_299245018(a1, v33, v34, v119, v32, &v118);
            v20 = v118;
            v35 = *(a1 + 56);
            if (v118 > v35 || v23 == Count - 1)
            {
              break;
            }

            v5 = v115;
            if (v22)
            {
              free(v22);
              v20 = v118;
            }

            v36 = v23 + 1 < Count;
            if (v23 + 1 >= Count)
            {
              v22 = 0;
            }

            else
            {
              v22 = v32;
            }

            if (v23 + 1 < Count)
            {
              ++v23;
            }

            else
            {
              v23 = v21;
            }

            if (!v36 && v21 >= Count)
            {
              CFRelease(Mutable);
              v8 = v109;
              goto LABEL_78;
            }
          }

          if (*(a1 + 36) == 2 || v118 <= v35 || !v22)
          {
            v5 = v115;
            if (v22)
            {
              free(v22);
              v20 = v118;
            }

            v21 = v23 + 1;
            v22 = v32;
          }

          else
          {
            free(v32);
            v21 = v23;
            v5 = v115;
            v20 = v113;
          }

          if (*(a1 + 36) == 2)
          {
            v37 = 0;
            v109[v111] = v32;
            v8 = v109;
            v116[v111++] = v118;
          }

          else
          {
            if (v20 < 1)
            {
              v37 = 0;
              v8 = v109;
            }

            else
            {
              v38 = *(a1 + 56);
              v39 = &v109[v111];
              v40 = v111 + 1;
              v114 = v22;
              v41 = v22;
              while (1)
              {
                v42 = v40;
                v43 = malloc_type_calloc(1uLL, v38, 0x100004077774924uLL);
                v44 = v43;
                v45 = v20 >= *(a1 + 56) ? *(a1 + 56) : v20;
                memmove(v43, v41, v45);
                *v39 = v44;
                v46 = *(a1 + 88);
                if (v42 > v46)
                {
                  break;
                }

                v38 = *(a1 + 56);
                v41 += v38;
                ++v39;
                v40 = v42 + 1;
                v36 = v20 <= v38;
                v20 -= v38;
                if (v36)
                {
                  v111 = v42;
                  v37 = 0;
                  goto LABEL_49;
                }
              }

              v111 = v42;
              fprintf(*MEMORY[0x29EDCA610], "Record count exceeds limit (%lld).\n", v46);
              v37 = 1;
LABEL_49:
              v8 = v109;
              v5 = v115;
              v22 = v114;
            }

            free(v22);
          }

          CFDataSetLength(Mutable, 0);
        }

        while (v21 < Count && (v37 & 1) == 0);
        CFRelease(Mutable);
        if (v37)
        {
          LODWORD(v47) = -1;
          v48 = 1;
          v49 = 1;
          v50 = v111;
          v10 = v112;
LABEL_119:
          if (v50 >= 1)
          {
            v100 = v8;
            do
            {
              v101 = *v100++;
              v102 = v50;
              free(v101);
              v50 = v102 - 1;
            }

            while (v102 != 1);
          }

          goto LABEL_122;
        }

LABEL_78:
        v50 = v111;
        v10 = v112;
        v76 = *(a1 + 24);
        if (*(a1 + 36) == 2)
        {
          if (v111)
          {
            for (i = 0; i != v111; ++i)
            {
              v78 = sub_2992450C4(v76, v8[i], v116[i]);
              v112[i] = v78;
              v49 = v78 == 0;
              if (!v78)
              {
                v48 = 0;
                LODWORD(v47) = -1;
                v50 = v111;
                goto LABEL_119;
              }
            }

            v50 = v111;
            v48 = 0;
            LODWORD(v47) = 0;
            goto LABEL_119;
          }

LABEL_115:
          LODWORD(v47) = 0;
          v49 = 0;
          v48 = 0;
LABEL_122:
          v75 = 1;
          if (a4 && !v49 && (v48 & 1) == 0)
          {
            v103 = *(a1 + 112);
            v104 = a4;
            v105 = Count;
            do
            {
              *v104 = (*(a1 + 104) & *v104) + (v10[((*(a1 + 96) & *v104) >> v103)] << v103);
              ++v104;
              --v105;
            }

            while (v105);
            v75 = 0;
          }

          goto LABEL_128;
        }

        *(v76 + 36) = *(a1 + 56);
        if (!v111)
        {
          goto LABEL_115;
        }

        v88 = 0;
        while (1)
        {
          v89 = *(v76 + 36);
          if (v89)
          {
            break;
          }

          v95 = 0;
LABEL_113:
          v112[v88++] = v95;
          if (v50 == v88)
          {
            v48 = 0;
            v49 = 0;
            LODWORD(v47) = 0;
            v10 = v112;
            goto LABEL_119;
          }
        }

        v90 = v8[v88];
        v91 = *(v76 + 16);
        if (v91)
        {
          v92 = *(v76 + 32);
          v93 = *(v76 + 24);
          if (v93 >= v92 + v89)
          {
            goto LABEL_107;
          }

          v94 = v93 + (v89 << 10);
        }

        else
        {
          v94 = (v89 << 10) | 8u;
        }

        v96 = *(v76 + 8);
        v91 = (*v76)();
        if (!v91)
        {
          v95 = 0;
LABEL_112:
          v50 = v111;
          goto LABEL_113;
        }

        *(v76 + 16) = v91;
        *(v76 + 24) = v94;
        v92 = *(v76 + 32);
LABEL_107:
        if (v92)
        {
          v97 = *(v76 + 36);
        }

        else
        {
          *(v76 + 32) = 8;
          *v91 = 8;
          v97 = *(v76 + 36);
          v91[1] = v97;
          v92 = *(v76 + 32);
        }

        v98 = *(v76 + 40);
        memcpy(v91 + v92, v90, v97);
        v99 = *(v76 + 32) + *(v76 + 36);
        *(v76 + 32) = v99;
        **(v76 + 16) = v99;
        ++*(v76 + 40);
        v95 = v98 + 1;
        goto LABEL_112;
      }

      CFRelease(Mutable);
      if (*(a1 + 36) != 2)
      {
        *(*(a1 + 24) + 36) = *(a1 + 56);
      }

      LODWORD(v47) = 0;
      v75 = a4 == 0;
LABEL_117:
      v10 = v112;
      goto LABEL_128;
    }

    if (Count < 1)
    {
      if (!Count)
      {
        LODWORD(v47) = 0;
        v75 = 1;
        goto LABEL_117;
      }
    }

    else
    {
      for (j = 0; j != Count; ++j)
      {
        v52 = CFArrayGetValueAtIndex(v5, j);
        v53 = v52;
        if (*(a1 + 35) == 1)
        {
          v54 = CFDataGetLength(v52);
          v55 = v119;
          v56 = compressBound(v54);
          v8[j] = malloc_type_malloc(v56 + 2 * v55, 0x100004077774924uLL);
          v57 = CFDataGetBytePtr(v53);
          v58 = CFDataGetLength(v53);
          sub_299245018(a1, v57, v58, v119, v8[j], &v121);
        }

        else
        {
          v59 = CFDataGetBytePtr(v52);
          v60 = CFDataGetLength(v53);
          v8[j] = sub_29923E194(v59, v60, v119, *(a1 + 34), &v121);
        }

        v116[j] = v121;
      }
    }

    v79 = *(a1 + 24);
    v47 = Count;
    v80 = v8;
    v81 = v116;
    v10 = v112;
    v82 = v112;
    while (1)
    {
      v83 = *v81++;
      v84 = sub_2992450C4(v79, *v80, v83);
      *v82 = v84;
      if (!v84)
      {
        break;
      }

      ++v82;
      ++v80;
      if (!--v47)
      {
        goto LABEL_93;
      }
    }

    LODWORD(v47) = -1;
LABEL_93:
    if (Count >= 1)
    {
      v85 = v8;
      v86 = Count;
      do
      {
        v87 = *v85++;
        free(v87);
        --v86;
      }

      while (v86);
    }

    v75 = 1;
LABEL_128:
    free(v116);
    v18 = v47 == 0;
    if (!v47)
    {
      goto LABEL_129;
    }

    goto LABEL_135;
  }

  v11 = CFArrayGetValueAtIndex(v5, 0);
  v12 = CFDataGetLength(v11);
  v13 = v12;
  if (Count < 1)
  {
    v16 = *(a1 + 24);
    *(v16 + 36) = v12;
    v17 = (v16 + 36);
    if (!Count)
    {
      goto LABEL_134;
    }
  }

  else
  {
    for (k = 0; k != Count; ++k)
    {
      v15 = CFArrayGetValueAtIndex(v5, k);
      v8[k] = CFDataGetBytePtr(v15);
    }

    v16 = *(a1 + 24);
    *(v16 + 36) = v13;
    v17 = (v16 + 36);
  }

  v110 = v8;
  v61 = v8;
  v62 = v112;
  v63 = Count;
  do
  {
    v64 = *v17;
    if (!*v17)
    {
LABEL_73:
      v72 = 0;
      goto LABEL_76;
    }

    v65 = *v61;
    v66 = *(v16 + 16);
    if (v66)
    {
      v67 = *(v16 + 32);
      v68 = *(v16 + 24);
      if (v68 >= v67 + v64)
      {
        goto LABEL_71;
      }

      v69 = v68 + (v64 << 10);
    }

    else
    {
      v69 = (v64 << 10) | 8u;
    }

    v70 = *(v16 + 8);
    v66 = (*v16)();
    if (!v66)
    {
      goto LABEL_73;
    }

    *(v16 + 16) = v66;
    *(v16 + 24) = v69;
    v67 = *(v16 + 32);
LABEL_71:
    if (v67)
    {
      v71 = *v17;
    }

    else
    {
      *(v16 + 32) = 8;
      *v66 = 8;
      v71 = *v17;
      v66[1] = v71;
      v67 = *(v16 + 32);
    }

    v73 = *(v16 + 40);
    memcpy(v66 + v67, v65, v71);
    v74 = *(v16 + 32) + *v17;
    *(v16 + 32) = v74;
    **(v16 + 16) = v74;
    ++*(v16 + 40);
    v72 = v73 + 1;
LABEL_76:
    *v62++ = v72;
    ++v61;
    --v63;
  }

  while (v63);
  v75 = 1;
  v18 = 1;
  v8 = v110;
  v10 = v112;
LABEL_129:
  if (Count >= 1 && a4 && v75)
  {
    v106 = v10;
    do
    {
      v107 = *v106++;
      *a4++ = v107;
      --Count;
    }

    while (Count);
LABEL_134:
    v18 = 1;
  }

LABEL_135:
  free(v10);
  free(v8);
  return v18;
}

uint64_t sub_299245E08(uint64_t a1)
{
  v2 = sub_29924256C(a1);
  if (sub_2992427E4(a1))
  {
    v3 = open(v2, 2562, 438);
  }

  else
  {
    v3 = open(v2, 2560, 438);
  }

  if (v3 != -1)
  {
    v4 = v3;
    if (lseek(v3, 63, 0) != -1 && write(v4, &unk_299436735, 1uLL) == 1)
    {
      close(v4);
      return 1;
    }

    close(v4);
    v6 = sub_29924256C(a1);
    remove(v6, v7);
  }

  return 0;
}

uint64_t sub_299245EC4(uint64_t result)
{
  if ((*(result + 32) & 1) != 0 || *(result + 36) == 3)
  {
    v1 = *(result + 24);
    v2 = *(v1 + 32);
    if (*(v1 + 24) > v2)
    {
      result = (*v1)(*(v1 + 16), *(v1 + 32), *(v1 + 8));
      if (result)
      {
        *(v1 + 16) = result;
        *(v1 + 24) = v2;
      }
    }
  }

  return result;
}

uint64_t sub_299245F24(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = 32;
  }

  else
  {
    v1 = 36;
    if (*(a1 + 36) == 3)
    {
      v1 = 32;
    }
  }

  return msync((*(*(a1 + 24) + 16) - 64), *(*(a1 + 24) + v1) + 64, 16);
}

uint64_t sub_299245F64(uint64_t a1, int a2)
{
  v2 = *(a1 + 38) ^ 1;
  if (a2 && (*(a1 + 38) & 1) == 0)
  {
    v19 = 0;
    v4 = sub_29924256C(*(a1 + 8));
    if (*(a1 + 33))
    {
      v5 = open(v4, 2);
    }

    else
    {
      v5 = open(v4, 0);
    }

    if (v5 == -1 || (v6 = v5, v7 = sub_29924419C(v5, *(a1 + 33), &v19), close(v6), v7 == -1))
    {
      v2 = 0;
      return v2 & 1;
    }

    v8 = v7 + 16;
    v9 = v19 - 64;
    v19 -= 64;
    if ((*(a1 + 32) & 1) == 0 && *(a1 + 36) != 3)
    {
      v10 = malloc_type_malloc(0x38uLL, 0x10900408C52C49CuLL);
      if (v10)
      {
        *v10 = sub_299246140;
        v10[1] = a1;
        v10[2] = v8;
        v10[3] = v9;
        *(v10 + 8) = 0;
        v10[5] = 0;
        *(v10 + 12) = 0;
        if (v9 >= 4 && (v13 = *v8, v9 >= v13))
        {
          *(v10 + 9) = v13;
          if (v13 >= 0x20 && !v7[17])
          {
            v18 = -v7[18] & (v7[18] >> 31);
            *(v10 + 8) = v18;
            if (v18 >= 1)
            {
              *(v10 + 10) = v7[19];
              *(v10 + 11) = v7[20];
              *(v10 + 12) = v7[21];
            }
          }
        }

        else
        {
          *(v10 + 9) = 0;
        }
      }

      goto LABEL_20;
    }

    v10 = malloc_type_malloc(0x30uLL, 0x109004033C35484uLL);
    if (!v10)
    {
LABEL_20:
      *(a1 + 24) = v10;
      v2 = 1;
      return v2 & 1;
    }

    *v10 = sub_299246140;
    v10[1] = a1;
    v10[2] = v8;
    v10[3] = v9;
    if (v9 >= 4 && (v11 = *v8, v9 >= v11))
    {
      *(v10 + 8) = v11;
      v15 = v11 >= 8;
      v16 = v11 - 8;
      if (v15)
      {
        v17 = v7[17];
        *(v10 + 9) = v17;
        if (!v17)
        {
          goto LABEL_20;
        }

        v12 = v16 / v17;
        goto LABEL_15;
      }
    }

    else
    {
      *(v10 + 8) = 0;
    }

    v12 = 0;
    *(v10 + 9) = 0;
LABEL_15:
    v10[5] = v12;
    goto LABEL_20;
  }

  return v2 & 1;
}

uint64_t sub_299246140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 33);
  v6 = sub_29924256C(*(a3 + 8));
  if (v5)
  {
    v7 = open(v6, 2);
  }

  else
  {
    v7 = open(v6, 0);
  }

  if (v7 == -1)
  {
    return 0;
  }

  v8 = v7;
  if (fstat(v7, &v13) == -1)
  {
    return 0;
  }

  v9 = (a1 - 64);
  st_size = v13.st_size;
  msync(v9, v13.st_size, 16);
  munmap(v9, st_size);
  if (ftruncate(v8, a2 + 64) == -1)
  {
    return 0;
  }

  v11 = sub_29924419C(v8, v5, 0);
  close(v8);
  return v11 + 64;
}

uint64_t sub_299246214(uint64_t result, int a2)
{
  if (a2)
  {
    if (*(result + 32))
    {
      v3 = 32;
    }

    else
    {
      v3 = 36;
      if (*(result + 36) == 3)
      {
        v3 = 32;
      }
    }

    v4 = *(result + 24);
    v5 = *(v4 + v3);
    v6 = v4[2];
    free(v4);
    v7 = (v6 - 64);
    msync(v7, v5 + 64, 16);

    return munmap(v7, v5 + 64);
  }

  return result;
}

uint64_t sub_2992462B8(uint64_t a1)
{
  if (*(a1 + 35))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(a1 + 113) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_2992462D8(int a1, __CFDictionary *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F67C70, 0);
  if (result)
  {
    v6 = result;
    if (((*(*result + 104))(result) & 0x200) != 0)
    {
      v7 = *MEMORY[0x29EDB8F00];
      CFDictionaryAddValue(a2, @"predictionCandidateAccepted", *MEMORY[0x29EDB8F00]);
      if (((*(*v6 + 104))(v6) & 0x20000) != 0)
      {
        CFDictionaryAddValue(a2, @"lstmPredictionCandidateAccepted", v7);
      }

      if (((*(*v6 + 104))(v6) & 0x400000) != 0)
      {
        CFDictionaryAddValue(a2, @"unilmPredictionCandidateAccepted", v7);
      }

      if (((*(*v6 + 104))(v6) & 0x40000) != 0)
      {
        CFDictionaryAddValue(a2, @"ngramPredictionCandidateAccepted", v7);
      }

      if (((*(*v6 + 104))(v6) & 0x80000) != 0)
      {
        CFDictionaryAddValue(a2, @"lexiconCompletionPredictionCandidateAccepted", v7);
      }

      if (((*(*v6 + 104))(v6) & 0x800) != 0)
      {
        CFDictionaryAddValue(a2, @"lexiconDynamicLearningCandidateAccepted", v7);
      }

      if (((*(*v6 + 104))(v6) & 0x40) != 0)
      {
        CFDictionaryAddValue(a2, @"emojiCandidateAccepted", v7);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_299246568(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F67CD8;
  *(a1 + 8) = a2;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = sub_2992427E4(a2);
  v4 = sub_299242888(a2);
  *(a1 + 66) = 0;
  *(a1 + 65) = v4;
  v5 = a2[1];
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, @"TrieIndexCompressionType");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt16Type, (a1 + 66));
    }
  }

  v7 = sub_299242628(a2);
  v8 = sub_299242728(a2);
  v9 = sub_299242888(a2);
  *(a1 + 160) = sub_29923E020(v7, v8, v9, (a1 + 168));
  return a1;
}

uint64_t sub_299246660(void *a1)
{
  *a1 = &unk_2A1F67CD8;
  v2 = a1[9];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C80BDFB0063);
  }

  v3 = a1[16];
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1060C8043D569EALL);
  }

  v4 = a1[6];
  if (v4)
  {
    MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
  }

  return sub_299244048(a1);
}

void sub_299246708(void *a1)
{
  sub_299246660(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299246740(uint64_t a1, unsigned __int16 *__src, uint64_t a3, CFStringRef theString1)
{
  if (*(a1 + 96) == theString1)
  {
    goto LABEL_26;
  }

  if (CFStringCompare(theString1, @"IDXExactMatch", 0))
  {
    if (CFStringCompare(theString1, @"IDXExactMatchVoicedAmbi", 0))
    {
      if (CFStringCompare(theString1, @"IDXExactMatchSmallAmbi", 0))
      {
        if (CFStringCompare(theString1, @"IDXExactMatchVoicedAndSmallAmbi", 0))
        {
          if (CFStringCompare(theString1, @"IDXCommonPrefixMatch", 0))
          {
            if (CFStringCompare(theString1, @"IDXPrefixMatch", 0) == kCFCompareEqualTo)
            {
LABEL_24:
              v9 = 1;
              goto LABEL_25;
            }

            if (CFStringCompare(theString1, @"IDXPrefixMatchVoicedAmbi", 0))
            {
              if (CFStringCompare(theString1, @"IDXPrefixMatchSmallAmbi", 0))
              {
                if (CFStringCompare(theString1, @"IDXPrefixMatchVoicedAndSmallAmbi", 0))
                {
                  if (CFStringCompare(theString1, @"IDXWildcardMatch", 0))
                  {
                    if (CFStringCompare(theString1, @"IDXAllMatch", 0))
                    {
                      return 0;
                    }

                    a3 = 0;
                    __src = 0;
                    goto LABEL_24;
                  }

                  v9 = 3;
                }

                else
                {
                  v9 = 9;
                }
              }

              else
              {
                v9 = 8;
              }
            }

            else
            {
              v9 = 7;
            }
          }

          else
          {
            v9 = 2;
          }
        }

        else
        {
          v9 = 6;
        }
      }

      else
      {
        v9 = 5;
      }
    }

    else
    {
      v9 = 4;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_25:
  *(a1 + 104) = v9;
  *(a1 + 96) = theString1;
LABEL_26:
  if (a3 > *(a1 + 80))
  {
    *(a1 + 80) = a3 + 128;
    v10 = *(a1 + 72);
    if (v10)
    {
      MEMORY[0x29C29BF70](v10, 0x1000C80BDFB0063);
      v11 = *(a1 + 80);
    }

    operator new[]();
  }

  *(a1 + 88) = 2 * a3;
  if (a3 >= 1 && __src)
  {
    v12 = *(a1 + 72);
    if (*(a1 + 65))
    {
      v13 = v12 + 1;
      v14 = __src + 1;
      do
      {
        v15 = *v14++;
        *v13++ = bswap32(v15) >> 16;
        --a3;
      }

      while (a3);
    }

    else
    {
      memcpy(v12, __src, 2 * a3);
    }
  }

  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  result = 1;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_299246A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9)
{
  v18 = a8;
  v17 = 0;
  if (*(a1 + 88))
  {
    v11 = *(a1 + 72);
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    v13 = sub_299247040(a1, v12, 0, *(a1 + 136), *(a1 + 144), a2, a3, a4, a5, a6, a7, &v18, &v17);
    a2 -= v13;
    v14 = v17;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  if (a2 >= 1 && !v14)
  {
    if ((*(a1 + 108) & 1) == 0)
    {
      *(a1 + 104);
      operator new[]();
    }

    v14 = 0;
  }

  if (a9)
  {
    if (*(a1 + 108) == 1)
    {
      v15 = *(a1 + 152);
      if (!v15)
      {
        goto LABEL_15;
      }
    }

    if (!v13)
    {
      v15 = v14 + 16;
LABEL_15:
      *a9 = v15;
    }
  }

  return v13;
}

uint64_t sub_299246FEC(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, uint64_t *a5, size_t *a6)
{
  *a5 = a4;
  if (a6)
  {
    *a6 = a3;
  }

  if (!a2)
  {
    a2 = 1000;
  }

  return sub_299246A9C(a1, a2, 0, 0, 1, a4, a4, a4 + a3, a6);
}

uint64_t sub_299247040(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, void *a12, size_t *a13)
{
  v14 = a3;
  v15 = a1;
  v16 = 0;
  v17 = a2 + a3;
  *(a1 + 152) = 0;
  v18 = a4;
  while (1)
  {
    v30 = 0;
    v19 = (*(v15 + 160))(*(v15 + 168), v17, &v30);
    v20 = v19;
    if (a9)
    {
      break;
    }

    *(a8 + 8 * v16) = v19;
    v23 = v30;
    *(a7 + 8 * v16++) = v17 + v30;
    v14 += v19 + v23;
    v17 = a2 + v14;
    ++a5;
    if (v16 == a6)
    {
      v16 = a6;
      goto LABEL_13;
    }

LABEL_7:
    if (a5 == v18)
    {
      return v16;
    }
  }

  v21 = (*a12 - v19);
  if (a10 + 16 * (v16 + 1) > v21)
  {
    *a13 = v20;
    v17 = a2 + v14 + v30 + v20;
    ++a5;
    goto LABEL_12;
  }

  *a12 = v21;
  memmove(v21, (v17 + v30), v20);
  v22 = (a10 + 16 * v16);
  *v22 = *a12 - a11;
  v22[1] = v20;
  v14 += v20 + v30;
  v17 = a2 + v14;
  ++a5;
  if (v16 + 1 != a6)
  {
    ++v16;
    v15 = a1;
    goto LABEL_7;
  }

  v16 = a6;
LABEL_12:
  v15 = a1;
LABEL_13:
  if (a5 < v18)
  {
    *(v15 + 144) = a5;
    *(v15 + 152) = v17;
    *(v15 + 136) = v18;
  }

  return v16;
}

uint64_t sub_2992471E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(**(a1 + 40) + 64))(*(a1 + 40)))
  {
    v6 = *(**(a1 + 40) + 48);

    return v6();
  }

  else
  {
    v8 = *(a1 + 48);
    if (!v8)
    {
      *(a1 + 56) = 0x8000;
      operator new[]();
    }

    v9 = (*(**(a1 + 40) + 56))(*(a1 + 40), a2, *(a1 + 56), v8);
    if (v9 > *(a1 + 56))
    {
      v10 = *(a1 + 48);
      if (v10)
      {
        MEMORY[0x29C29BF70](v10, 0x1000C8077774924);
      }

      *(a1 + 56) = v9;
      operator new[]();
    }

    if (a3)
    {
      *a3 = v9;
    }

    return *(a1 + 48);
  }
}

BOOL sub_299247380(uint64_t a1, void *a2, uint8x8_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 72);
  v4 = *(a1 + 88);
  v25[0] = 0;
  v27 = 0;
  v26 = 0;
  v28 = 0;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 104);
  if (a2 && v8 == 2)
  {
    if (((v4 >> 1) - 1) < 0)
    {
      goto LABEL_6;
    }

    bzero(a2, (v4 >> 1));
    v8 = *(a1 + 104);
  }

  result = 0;
  if (v8 > 4)
  {
    if (v8 > 6)
    {
      switch(v8)
      {
        case 7:
          if (!*(a1 + 66))
          {
            v9 = *(a1 + 24);
            v10 = v3;
            v11 = v4;
            v12 = 10;
            goto LABEL_40;
          }

          break;
        case 8:
          if (!*(a1 + 66))
          {
            v9 = *(a1 + 24);
            v10 = v3;
            v11 = v4;
            v12 = 12;
            goto LABEL_40;
          }

          break;
        case 9:
          if (!*(a1 + 66))
          {
            v9 = *(a1 + 24);
            v10 = v3;
            v11 = v4;
            v12 = 14;
LABEL_40:
            v21 = sub_2992DA68C(v9, v10, v11, 0, 1uLL, v25, v12);
            goto LABEL_44;
          }

          break;
        default:
          goto LABEL_48;
      }

LABEL_6:
      result = 0;
      goto LABEL_48;
    }

    if (v8 == 5)
    {
      if (*(a1 + 66))
      {
        goto LABEL_6;
      }

      v15 = *(a1 + 24);
      v16 = v3;
      v17 = v4;
      v18 = 12;
    }

    else
    {
      if (*(a1 + 66))
      {
        goto LABEL_6;
      }

      v15 = *(a1 + 24);
      v16 = v3;
      v17 = v4;
      v18 = 14;
    }

    goto LABEL_37;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v20 = *(a1 + 24);
      if (*(a1 + 66))
      {
        v21 = sub_2992A8C28(v20, v3, v4, 2u, 0, 1uLL, v25, 0, a3);
      }

      else
      {
        v21 = sub_2993B6FBC(v20, v3, v4, *(a1 + 65) ^ 1u, 2u, 0, 1uLL, v25);
      }

      goto LABEL_44;
    }

    if (*(a1 + 66))
    {
      goto LABEL_6;
    }

    v15 = *(a1 + 24);
    v16 = v3;
    v17 = v4;
    v18 = 10;
LABEL_37:
    v21 = sub_2992DA124(v15, v16, v17, 0, 1uLL, v25, v18);
    goto LABEL_44;
  }

  if (!v8)
  {
    v19 = *(a1 + 24);
    if (!*(a1 + 66))
    {
      result = sub_29931C578(v19, v3, v4) > 0;
      goto LABEL_48;
    }

    v14 = sub_29932273C(v19, v3, v4, a3) == 0;
    goto LABEL_45;
  }

  if (v8 != 1)
  {
    goto LABEL_48;
  }

  v13 = *(a1 + 24);
  if (*(a1 + 66))
  {
    v23 = 0;
    v24 = 0;
    sub_2993221DC(v13, *v13, v3, v4, &v24, 1uLL, &v23, v25, a3, 0, v3);
    v14 = v23 == 0;
    goto LABEL_45;
  }

  v21 = sub_2992D98B8(v13, v3, v4, 0, 1uLL, 0, v25);
LABEL_44:
  v14 = v21 == 0;
LABEL_45:
  result = !v14;
LABEL_48:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_299247680(uint64_t a1, unsigned __int8 *a2, uint64_t a3, const void *a4, size_t a5, void *a6)
{
  v34[1] = *MEMORY[0x29EDCA608];
  v34[0] = a5;
  if (*(a1 + 64) == 1 && !*(a1 + 66))
  {
    v13 = 2 * a3;
    MEMORY[0x2A1C7C4A8]();
    if (*(a1 + 65))
    {
      if (v14)
      {
        v15 = 2;
        do
        {
          *(&v28 + v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)) = bswap32(*&a2[v15]) >> 16;
          v15 += 2;
          --v14;
        }

        while (v14);
      }

      a2 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    }

    v33 = 0;
    v32 = 0;
    (*(a1 + 160))(*(a1 + 168), &v33, &v32);
    v16 = sub_29923E194(a4, a5, v32, *(a1 + 65), v34);
    v17 = sub_29931C578(*(a1 + 24), a2, v13);
    if (v17 < 1)
    {
      v21 = v34[0];
      v24 = v34[0] + 4;
      v22 = malloc_type_malloc(v34[0] + 4, 0x100004077774924uLL);
      memcpy(v22 + 1, v16, v21);
      if (*(a1 + 65) == 1)
      {
        v25 = 0x1000000;
      }

      else
      {
        v25 = 1;
      }

      *v22 = v25;
    }

    else
    {
      v29 = v13;
      v30 = &v28;
      v31 = 0;
      v18 = v17;
      v19 = sub_2992471E8(a1, v17, &v31);
      v20 = v31;
      v21 = v34[0];
      v28 = v34[0] + v31;
      v22 = malloc_type_malloc(v34[0] + v31, 0x100004077774924uLL);
      memcpy(v22, v19, v31);
      memcpy(v22 + v20, v16, v21);
      if (*(a1 + 65) == 1)
      {
        v23 = bswap32(bswap32(*v19) + 1);
      }

      else
      {
        v23 = *v19 + 1;
      }

      *v22 = v23;
      (*(**(a1 + 40) + 80))(*(a1 + 40), 0, 0, 0, 0, v18);
      v13 = v29;
      v24 = v28;
    }

    if (v21 != a5)
    {
      free(v16);
    }

    v31 = 0;
    v26 = (*(**(a1 + 40) + 72))(*(a1 + 40), 0, 0, v22, v24, &v31);
    free(v22);
    if (v26)
    {
      v27 = sub_29931C6B4(*(a1 + 24), a2, v13, v31);
      if (a6)
      {
        *a6 = 0;
      }

      sub_299247994(a1);
      result = v27 == 0;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299247994(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(a1 + 66))
  {
    v3 = v2[1];
    v4 = v2[2] - v3 + v2[3];
  }

  else
  {
    v4 = 8 * (*(v2 + 4) + 259) + 16;
    v3 = *v2;
  }

  msync((v3 - 64), v4 + 64, 16);
  v5 = *(a1 + 40);

  return sub_299245F24(v5);
}

BOOL sub_299247A0C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, const void *a4, size_t a5)
{
  v37[1] = *MEMORY[0x29EDCA608];
  if (*(a1 + 64) == 1 && !*(a1 + 66))
  {
    v12 = 2 * a3;
    MEMORY[0x2A1C7C4A8]();
    if (*(a1 + 65))
    {
      if (v13)
      {
        v14 = 2;
        do
        {
          *(&v29 + v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)) = bswap32(*&a2[v14]) >> 16;
          v14 += 2;
          --v13;
        }

        while (v13);
      }

      a2 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    }

    v15 = sub_29931C578(*(a1 + 24), a2, v12);
    if (v15 < 1 || (v37[0] = 0, v16 = v15, (v17 = sub_2992471E8(a1, v15, v37)) == 0))
    {
      v6 = 0;
      goto LABEL_4;
    }

    v18 = v17;
    v19 = *(a1 + 65);
    v32 = v16;
    if (v19 == 1)
    {
      v20 = bswap32(*v17);
    }

    else
    {
      v20 = *v17;
    }

    v30 = v12;
    v31 = a2;
    v33 = &v29;
    v21 = 8 * v20;
    v35 = malloc_type_malloc(v37[0] + v21, 0x100004077774924uLL);
    if (v21)
    {
      v34 = a4;
      v22 = 0;
      v23 = 4;
      v24 = 4;
      do
      {
        LOBYTE(v36) = 0;
        v25 = (*(a1 + 160))(*(a1 + 168), v18 + v24, &v36);
        v26 = v36;
        if (v25 == a5 && !memcmp(v34, v18 + v24 + v36, a5))
        {
          v27 = v26 + a5;
        }

        else
        {
          v27 = v25 + v26;
          memcpy(&v35[v23], v18 + v24, v27);
          v23 += v27;
          ++v22;
        }

        v24 += v27;
        LODWORD(v21) = v21 - 1;
      }

      while (v21);
    }

    else
    {
      v22 = 0;
      v23 = 4;
    }

    if (*(a1 + 65) == 1)
    {
      *v35 = bswap32(v22);
    }

    else
    {
      *v35 = v22;
    }

    (*(**(a1 + 40) + 80))(*(a1 + 40), 0, 0, 0, 0, v32);
    if (v22)
    {
      v36 = 0;
      if (!(*(**(a1 + 40) + 72))(*(a1 + 40), 0, 0, v35, v23, &v36))
      {
        v6 = 0;
        goto LABEL_34;
      }

      v28 = sub_29931C6B4(*(a1 + 24), v31, v30, v36);
    }

    else
    {
      v28 = sub_29931CC8C(*(a1 + 24), v31, v30);
    }

    v6 = v28 == 0;
LABEL_34:
    free(v35);
    sub_299247994(a1);
    goto LABEL_4;
  }

  v6 = 0;
LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_299247D18(uint64_t a1, CFArrayRef theArray)
{
  CFArrayGetCount(theArray);
  if (*(a1 + 64) == 1)
  {
    v5[1] = 0;
    *(a1 + 65);
    v5[0] = 0;
    v4 = 0;
    (*(a1 + 160))(*(a1 + 168), v5, &v4);
    operator new[]();
  }

  return 0;
}

uint64_t sub_2992482D0(const void ***a1, const void ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = v2[1];
  v6 = **a2;
  v7 = v3[1];
  if (v5 >= v7)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = v2[1];
  }

  result = memcmp(v4, v6, v8);
  if (!result)
  {
    result = (v5 - v7);
    if (v5 == v7)
    {
      return (*(v2 + 6) - *(v3 + 6));
    }
  }

  return result;
}

uint64_t sub_299248328(uint64_t a1)
{
  v2 = sub_29924256C(a1);
  if (sub_2992427E4(a1))
  {
    v3 = open(v2, 2562, 438);
  }

  else
  {
    v3 = open(v2, 2560, 438);
  }

  if (v3 != -1)
  {
    v4 = v3;
    if (lseek(v3, 4159, 0) != -1 && write(v4, &unk_29943674F, 1uLL) == 1)
    {
      close(v4);
      sub_299248414(a1);
    }

    close(v4);
    v5 = sub_29924256C(a1);
    remove(v5, v6);
  }

  return 0;
}

void sub_299248414(uint64_t a1)
{
  keys[2] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"TrieAuxiliaryDataOptions");
    if (Value)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
      Mutable = MutableCopy;
      v6 = MutableCopy == 0;
      if (MutableCopy)
      {
        v7 = CFDictionaryGetValue(MutableCopy, @"IDXIndexPath");
        if (v7)
        {
LABEL_5:
          v8 = v7;
          v9 = 1;
          goto LABEL_17;
        }

        v33 = *(a1 + 8);
        if (!v33)
        {
          v6 = 0;
          goto LABEL_15;
        }

        v7 = CFDictionaryGetValue(v33, @"TrieAuxiliaryDataFile");
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_31;
      }

      v14 = *(a1 + 8);
      if (v14)
      {
        v11 = CFDictionaryGetValue(v14, @"TrieAuxiliaryDataFile");
        if (!v11)
        {
LABEL_31:
          v34 = *(a1 + 8);
          if (v34)
          {
            v35 = CFDictionaryGetValue(v34, @"TrieSubIndexPath");
            if (v35)
            {
              v8 = v35;
              v6 = 1;
              v9 = 1;
              if (Mutable)
              {
LABEL_17:
                CFDictionarySetValue(Mutable, @"IDXIndexAccessMethod", @"com.apple.HeapAccessMethod");
                v18 = sub_299242520(a1);
                if (CFStringFind(v18, @"/", 0).location == -1)
                {
                  v23 = CFRetain(v8);
                }

                else
                {
                  v19 = sub_299242520(a1);
                  v20 = CFURLCreateWithFileSystemPath(0, v19, kCFURLPOSIXPathStyle, 0);
                  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, v20);
                  v22 = CFURLCreateCopyAppendingPathComponent(0, PathComponent, v8, 0);
                  v23 = CFURLCopyFileSystemPath(v22, kCFURLPOSIXPathStyle);
                  CFRelease(v20);
                  CFRelease(PathComponent);
                  CFRelease(v22);
                }

                CFDictionarySetValue(Mutable, @"IDXIndexPath", v23);
                if ((v9 & 1) == 0)
                {
                  CFRelease(v8);
                }

                CFDictionarySetValue(Mutable, @"IDXIndexSupportDataID", *MEMORY[0x29EDB8F00]);
                v24 = *(a1 + 8);
                if (v24)
                {
                  v25 = CFDictionaryGetValue(v24, @"IDXIndexWritable");
                }

                else
                {
                  v25 = 0;
                }

                CFDictionarySetValue(Mutable, @"IDXIndexWritable", v25);
                v26 = *(a1 + 8);
                if (v26)
                {
                  v27 = CFDictionaryGetValue(v26, @"IDXIndexBigEndian");
                }

                else
                {
                  v27 = 0;
                }

                CFDictionarySetValue(Mutable, @"IDXIndexBigEndian", v27);
                keys[0] = @"IDXDataFieldName";
                keys[1] = @"IDXDataSizeLength";
                valuePtr = 4;
                values = @"Packed Homograph";
                v39 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
                cf = CFDictionaryCreate(0, keys, &values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                CFRelease(v39);
                v28 = CFArrayCreate(0, &cf, 1, MEMORY[0x29EDB9000]);
                CFRelease(cf);
                keys[0] = @"IDXVariableDataFields";
                values = v28;
                v29 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                CFRelease(v28);
                CFDictionarySetValue(Mutable, @"IDXIndexDataFields", v29);
                CFRelease(v29);
                v30 = CFURLCopyFileSystemPath(*a1, kCFURLPOSIXPathStyle);
                v31 = CFStringCreateMutableCopy(0, 0, v30);
                CFRelease(v30);
                v32 = sub_299242520(a1);
                CFStringTrim(v31, v32);
                CFStringAppend(v31, v23);
                CFURLCreateWithFileSystemPath(0, v31, kCFURLPOSIXPathStyle, 0);
                CFRelease(v31);
                CFRelease(v23);
                operator new();
              }

LABEL_16:
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
              v9 = v6;
              goto LABEL_17;
            }
          }

          goto LABEL_15;
        }

LABEL_13:
        v8 = v11;
        v6 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = CFDictionaryGetValue(v10, @"TrieAuxiliaryDataFile");
        if (v11)
        {
          goto LABEL_13;
        }

        v12 = *(a1 + 8);
        if (v12)
        {
          v13 = CFDictionaryGetValue(v12, @"TrieSubIndexPath");
          v6 = 1;
          if (v13)
          {
            v8 = v13;
            goto LABEL_16;
          }

          Mutable = 0;
LABEL_15:
          v15 = v6;
          v16 = CFURLCreateCopyDeletingPathExtension(0, *a1);
          v17 = CFURLCopyLastPathComponent(v16);
          CFRelease(v16);
          v8 = CFStringCreateWithFormat(0, 0, @"%@_aux.data", v17);
          CFRelease(v17);
          v6 = 0;
          v9 = 0;
          if (!v15)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  Mutable = 0;
  v6 = 1;
  goto LABEL_15;
}

uint64_t sub_29924894C(uint64_t a1, int a2)
{
  if (*(a1 + 66) <= 1u && (!*(a1 + 66) || (*(a1 + 65) & 1) == 0))
  {
    if (!a2)
    {
      operator new();
    }

    v10 = 0;
    v3 = sub_29924256C(*(a1 + 8));
    if (*(a1 + 64))
    {
      v4 = open(v3, 2);
    }

    else
    {
      v4 = open(v3, 0);
    }

    if (v4 != -1)
    {
      v5 = v4;
      v6 = sub_29924419C(v4, *(a1 + 64), &v10);
      close(v5);
      if (v6 != -1)
      {
        v7 = v10 - 64;
        v10 -= 64;
        if (*(a1 + 66))
        {
          sub_29932265C(sub_299248AD0, a1, v6 + 64, v7);
        }

        else
        {
          v8 = sub_29931C470(sub_299248AD0, (v6 + 64), v7, a1);
        }

        *(a1 + 24) = v8;
        sub_299248414(*(a1 + 8));
      }
    }
  }

  return 0;
}

uint64_t sub_299248AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 64);
  v6 = sub_29924256C(*(a3 + 8));
  if (v5)
  {
    v7 = open(v6, 2);
  }

  else
  {
    v7 = open(v6, 0);
  }

  if (v7 == -1)
  {
    return 0;
  }

  v8 = v7;
  if (fstat(v7, &v13) == -1)
  {
    return 0;
  }

  v9 = (a1 - 64);
  st_size = v13.st_size;
  msync(v9, v13.st_size, 16);
  munmap(v9, st_size);
  if (ftruncate(v8, a2 + 64) == -1)
  {
    return 0;
  }

  v11 = sub_29924419C(v8, v5, 0);
  close(v8);
  return v11 + 64;
}

uint64_t sub_299248BA4(uint64_t a1, int a2)
{
  sub_29924412C(*(a1 + 40));
  result = *(a1 + 40);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (a2)
  {
    v5 = *(a1 + 24);
    if (*(a1 + 66))
    {
      if (v5)
      {
        v6 = v5[1];
        v7 = v5[3] + v5[2] - v6;
      }

      else
      {
        v7 = 0;
        v6 = 0;
      }

      sub_2993226F0(v5);
    }

    else
    {
      v7 = 8 * (*(v5 + 4) + 259) + 16;
      v6 = *v5;
      sub_29931C528(v5);
    }

    v8 = v6 - 64;
    msync(v8, v7 + 64, 16);
    munmap(v8, v7 + 64);
    result = *(a1 + 32);
    if (result)
    {
      sub_29924243C(result);

      JUMPOUT(0x29C29BFB0);
    }
  }

  return result;
}

std::string *sub_299248CC0(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_299248D7C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_299248CC0(a1, __s, v4);
}

uint64_t sub_299248DC4(uint64_t a1)
{
  sub_29919BA7C(v12);
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); v2 != i; v2 = (v2 + 24))
  {
    if (*(v2 + 23) < 0)
    {
      sub_2991A110C(__p, *v2, *(v2 + 1));
    }

    else
    {
      v4 = *v2;
      v18 = *(v2 + 2);
      *__p = v4;
    }

    if (v18 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v18 >= 0)
    {
      v6 = HIBYTE(v18);
    }

    else
    {
      v6 = __p[1];
    }

    sub_29919BD2C(v12, v5, v6, 1.0);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_29919C3B4((a1 + 104), v12, 0);
  sub_2991D7954(__p);
  sub_29919CDA0(&v18, a1 + 104);
  if ((v25 & 0x10) != 0)
  {
    v8 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v8 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v7 = 0;
      HIBYTE(v16) = 0;
      goto LABEL_27;
    }

    locale = v20[1].__locale_;
    v8 = v20[3].__locale_;
  }

  v7 = v8 - locale;
  if ((v8 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v8 - locale;
  if (v7)
  {
    memmove(&__dst, locale, v7);
  }

LABEL_27:
  *(&__dst + v7) = 0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  *(a1 + 112) = __dst;
  *(a1 + 128) = v16;
  __p[0] = *MEMORY[0x29EDC9528];
  v10 = *(MEMORY[0x29EDC9528] + 72);
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
  v18 = v10;
  v19 = MEMORY[0x29EDC9570] + 16;
  if (v23 < 0)
  {
    operator delete(v22);
  }

  v19 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](&v26);
  sub_29919C31C(v14);
  sub_29919C290(v13);
  sub_29919C290(v12);
  return 1;
}

void sub_2992490E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  sub_2991D7BF8(&a25, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](&a41);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29924909CLL);
}

uint64_t sub_299249150(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  sub_29918DA48((a1 + 56), a2, v4);
  if ((sub_29919C9B4((a1 + 104), a1 + 56) & 1) == 0)
  {
    v5 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/mecabra/Dictionary/MarisaTrieBuilder.cpp", 86);
    v6 = sub_2991C0E9C(v5, "(", 1);
    v7 = MEMORY[0x29C29BD30](v6, 29);
    v8 = sub_2991C0E9C(v7, ") [", 3);
    v9 = sub_2991C0E9C(v8, "m_trie.lookup(m_agent)", 22);
    v10 = sub_2991C0E9C(v9, "] ", 2);
    sub_2991C0E9C(v10, "cannot find entry in trie.\n", 27);
    sub_299233ED4();
  }

  return *(a1 + 92);
}

void sub_29924923C(uint64_t a1)
{
  sub_299249314(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299249274(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    if (*(a1 + 120))
    {
      return *(a1 + 112);
    }

    else
    {
      return 0;
    }
  }

  else if (*(a1 + 135))
  {
    return a1 + 112;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992492A4(uint64_t a1)
{
  if (*(a1 + 16) == *(a1 + 8))
  {
    return 0;
  }

  result = *(a1 + 135);
  if (result < 0)
  {
    return *(a1 + 120);
  }

  return result;
}

uint64_t *sub_2992492D0(uint64_t *a1)
{
  sub_29919C31C(a1 + 6);
  sub_29919C290(a1 + 3);

  return sub_29919C290(a1);
}

uint64_t sub_299249314(uint64_t a1)
{
  *a1 = &unk_2A1F67D68;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  sub_29919C3B0(a1 + 104);
  sub_29918D980(a1 + 56);

  return sub_299249384(a1);
}

uint64_t sub_299249384(uint64_t a1)
{
  *a1 = &unk_2A1F67DD0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 8);
  sub_299212B90(&v4);
  return a1;
}

uint64_t *sub_2992493F4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29931F04C();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v4;
  a1[3] = sub_299237120();
  a1[4] = a2;
  sub_29920E10C(&v8);
  v5 = v8;
  v8 = 0uLL;
  v6 = a1[2];
  *(a1 + 1) = v5;
  if (v6)
  {
    sub_2991A893C(v6);
    if (*(&v8 + 1))
    {
      sub_2991A893C(*(&v8 + 1));
    }
  }

  return a1;
}

void sub_299249464(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_2991A893C(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299249480(uint64_t *a1, int a2, UniChar *chars, CFIndex numChars)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    v4 = numChars == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    v7 = chars;
    CFStringCreateWithCharacters(*MEMORY[0x29EDB8ED8], chars, numChars);
    for (i = 2 * numChars - 2; ; i -= 2)
    {
      v10 = *v7++;
      v11 = (v10 + 223);
      v13 = (v10 + 191) < 0x1Au || v11 < 0x1A;
      if (!v13 || i == 0)
      {
        v15 = *a1;
        operator new();
      }
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_29924972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_29924AA10(va1);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29924976C(uint64_t a1, void *a2, const UniChar *a3, CFIndex a4, void *a5)
{
  v77 = *MEMORY[0x29EDCA608];
  v9 = a5[1];
  v8 = a5[2];
  v10 = 0;
  if (!sub_2993232FC(a5, 0))
  {
    goto LABEL_97;
  }

  if (v8 == v9)
  {
    goto LABEL_97;
  }

  sub_299383844(a5);
  v10 = *(a1 + 8);
  if (!v10)
  {
    goto LABEL_97;
  }

  sub_299210C88(*(a1 + 8));
  v11 = atomic_load((v10 + 40));
  if (v11 != 2 || (v65 = *v10) == 0)
  {
    v10 = 0;
    goto LABEL_97;
  }

  v12 = *(*(a1 + 24) + 328);
  v13 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3);
  __src = 0;
  v74 = 0;
  v75 = 0;
  v14 = v13 - v12;
  if (v13 <= v12)
  {
    operator new();
  }

  alloc = *MEMORY[0x29EDB8ED8];
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  numChars = a4;
  v16 = v14 & ~(v14 >> 63);
  theString = Mutable;
  v17 = v13 - v16;
  if (v13 > v16)
  {
    v63 = 0;
    v18 = *MEMORY[0x29EDB8EE8];
    v19 = 40 * v16 + 24;
    v20 = 8 * v16;
    v64 = *MEMORY[0x29EDB8EE8];
    while (1)
    {
      v21 = *(a5[10] + v20);
      v22 = a5[4];
      if (v21 >= (a5[5] - v22) >> 1)
      {
        v24 = 0;
        v23 = 0;
      }

      else
      {
        v23 = (v22 + 2 * v21);
        v24 = *(a5[1] + v19);
        if (v22)
        {
          v25 = v24 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          v24 = 0;
        }

        else if (*v23 != 32 || (++v23, --v24, v24))
        {
          if (v23[v24 - 1] == 32)
          {
            --v24;
            v63 |= v17 == 1;
          }
        }
      }

      v26 = CFStringCreateWithCharactersNoCopy(0, v23, v24, v18);
      stringToFind = v26;
      if (!v26)
      {
        goto LABEL_46;
      }

      CFStringAppend(theString, v26);
      if (sub_29931FFC0(*a1, v26))
      {
        break;
      }

      v27 = (*(*v65 + 16))(v65, v26);
      if (!v27)
      {
        break;
      }

      v28 = v74;
      if (v74 >= v75)
      {
        v30 = __src;
        v31 = v74 - __src;
        v32 = (v74 - __src) >> 2;
        v33 = v32 + 1;
        if ((v32 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v34 = v75 - __src;
        if ((v75 - __src) >> 1 > v33)
        {
          v33 = v34 >> 1;
        }

        v35 = v34 >= 0x7FFFFFFFFFFFFFFCLL;
        v36 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v35)
        {
          v36 = v33;
        }

        if (v36)
        {
          sub_2992F86B0(&__src, v36);
        }

        *(4 * v32) = v27;
        v29 = 4 * v32 + 4;
        memcpy(0, v30, v31);
        v37 = __src;
        __src = 0;
        v74 = v29;
        v75 = 0;
        if (v37)
        {
          operator delete(v37);
        }

        v18 = v64;
      }

      else
      {
        *v74 = v27;
        v29 = (v28 + 4);
      }

      v74 = v29;
      CFRelease(v26);
      v19 += 40;
      v20 += 8;
      if (!--v17)
      {
        goto LABEL_41;
      }
    }

    CFRelease(v26);
LABEL_46:
    v10 = 0;
    goto LABEL_93;
  }

  v63 = 0;
LABEL_41:
  if (__src == v74)
  {
    goto LABEL_46;
  }

  v38 = v65[1];
  v39 = v63;
  if (!LMLanguageModelCreatePredictionEnumerator())
  {
    goto LABEL_46;
  }

  if (numChars)
  {
    v40 = CFStringCreateWithCharactersNoCopy(0, a3, numChars, *MEMORY[0x29EDB8EE8]);
  }

  else
  {
    v40 = 0;
  }

  v41 = 0;
  stringToFind = v40;
  while (LMPredictionEnumeratorAdvance())
  {
    v70 = 0;
    Prediction = LMPredictionEnumeratorGetPrediction();
    if (Prediction <= 0)
    {
      break;
    }

    if (v76[0] >= 0x1F4u)
    {
      v43 = CFStringCreateMutable(0, 0);
      v44 = 0;
      theString2 = v43;
      do
      {
        v45 = (*(*v65 + 32))(v65, v76[v44]);
        cf = v45;
        if (!v45)
        {
          break;
        }

        v46 = sub_29931FFC0(*a1, v45);
        if (v46)
        {
          goto LABEL_101;
        }

        if ((v39 & (v44 == 0)) == 0)
        {
          CFStringAppend(v43, @" ");
          v45 = cf;
          v43 = theString2;
        }

        CFStringAppend(v43, v45);
        v45 = cf;
        if (cf)
        {
LABEL_101:
          CFRelease(v45);
          if (v46)
          {
            v51 = 0;
            v50 = theString2;
            goto LABEL_87;
          }
        }

        ++v44;
      }

      while (Prediction != v44);
      v47 = a2[6];
      v48 = a2[7];
      if (v47 == v48)
      {
        v50 = theString2;
LABEL_66:
        v39 = v63;
        if (CFStringGetLength(v50) >= 1)
        {
          v52 = stringToFind;
          if (stringToFind)
          {
            location = CFStringFind(v50, stringToFind, 0).location;
            Length = CFStringGetLength(v52);
            if (location == 1 && Length <= 2)
            {
              if (Length + 1 != CFStringGetLength(v50))
              {
                goto LABEL_86;
              }
            }

            else if (location != 1)
            {
              goto LABEL_86;
            }
          }

          cf = 0;
          if (Prediction == 1)
          {
            v55 = sub_29932010C(*a1, theString, v50, (v63 ^ 1) & 1);
            sub_299219AB4(&cf, v55);
          }

          if (v63)
          {
            v56 = CFRetain(v50);
          }

          else
          {
            v78.length = CFStringGetLength(v50) - 1;
            v78.location = 1;
            v56 = CFStringCreateWithSubstring(alloc, v50, v78);
          }

          v57 = v56;
          if (cf)
          {
            v58 = cf;
          }

          else
          {
            v58 = v50;
          }

          sub_299249F30(a1, a2, v58, v56, a3, numChars, 1, 0);
          if (v57)
          {
            CFRelease(v57);
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      else
      {
        while (1)
        {
          v49 = (*(**v47 + 24))();
          v50 = theString2;
          if (CFStringCompare(v49, theString2, 1uLL) == kCFCompareEqualTo)
          {
            break;
          }

          v47 += 8;
          if (v47 == v48)
          {
            goto LABEL_66;
          }
        }

        v39 = v63;
      }

LABEL_86:
      v51 = ++v41 == 8;
LABEL_87:
      if (v50)
      {
        CFRelease(v50);
      }

      if (v51)
      {
        break;
      }
    }
  }

  LMPredictionEnumeratorRelease();
  if (stringToFind)
  {
    CFRelease(stringToFind);
  }

  v10 = 1;
LABEL_93:
  if (theString)
  {
    CFRelease(theString);
  }

  if (__src)
  {
    v74 = __src;
    operator delete(__src);
  }

LABEL_97:
  v59 = *MEMORY[0x29EDCA608];
  return v10;
}

void sub_299249E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, const void *a18, const void *a19, uint64_t a20, const void *a21, const void *a22, void *__p, uint64_t a24)
{
  sub_299219AB4(&a18, 0);
  sub_29924A4BC(&a19, 0);
  sub_299219AB4(&a21, 0);
  sub_29924A4BC(&a22, 0);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_299249F30(uint64_t a1, void *a2, CFStringRef theString, const __CFString *a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v45[4] = *MEMORY[0x29EDCA608];
  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (a4)
    {
      if (Length && CFStringGetLength(a4))
      {
        if ((atomic_load_explicit(&qword_2A1460228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460228))
        {
          sub_299255778(0);
          qword_2A1460220 = &qword_2A1461DC0;
          __cxa_guard_release(&qword_2A1460228);
        }

        sub_299276BDC(theString, &__dst);
        sub_299276BDC(a4, &v41);
        if (**(a1 + 24) == 1 && a8)
        {
          __p = __dst;
          v36 = (v44 - __dst) >> 1;
          sub_29923A9CC(&__p, &v38);
          v34[0] = v41;
          v34[1] = ((v42 - v41) >> 1);
          sub_29923A9CC(v34, &__p);
          sub_299281394(&v38);
          sub_299281394(&__p);
          if ((v40 & 0x80u) == 0)
          {
            v16 = v40;
          }

          else
          {
            v16 = v39;
          }

          sub_299217A94(&__dst, v16);
          if ((v37 & 0x80u) == 0)
          {
            v17 = v37;
          }

          else
          {
            v17 = v36;
          }

          sub_299217A94(&v41, v17);
          v18 = v40;
          if ((v40 & 0x80u) != 0)
          {
            v18 = v39;
          }

          if (v18)
          {
            if ((v40 & 0x80u) == 0)
            {
              v19 = &v38;
            }

            else
            {
              v19 = v38;
            }

            memmove(__dst, v19, 2 * v18);
          }

          v20 = v37;
          v21 = v37;
          if ((v37 & 0x80u) != 0)
          {
            v20 = v36;
          }

          if (v20)
          {
            if ((v37 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            memmove(v41, p_p, 2 * v20);
            v21 = v37;
          }

          if ((v21 & 0x80) != 0)
          {
            operator delete(__p);
          }

          if (v40 < 0)
          {
            operator delete(v38);
          }
        }

        v23 = __dst;
        v24 = v44 - __dst;
        if (v44 != __dst && (u_isupper(*__dst) || v24 != 2 && u_isupper(v23[1])))
        {
          v25 = 48;
        }

        else
        {
          v25 = 52;
        }

        v26 = *(qword_2A1460220 + v25);
        v27 = v41;
        if (a6 - 1 > 3 || (v42 - v41) >> 1 <= a6)
        {
          v38 = __dst;
          v39 = (v44 - __dst) >> 1;
          sub_2993233BC(&v38);
          v33 = **(a1 + 32);
          v28 = sub_29931A0AC(0, __dst, (v44 - __dst) >> 1, a5, a6, v41, (v42 - v41) >> 1);
          v38 = v28;
          if (v28)
          {
            v28[1] = 0;
            (*(*v28 + 528))(v28, 3, "Adding a single English word candidate", 1);
            v45[0] = &unk_2A1F65308;
            v45[3] = v45;
            v29 = sub_2992AB710(a2, &v38, 1, 0, v45);
            sub_29921F128(v45);
            if ((v29 & 1) == 0)
            {
              v30 = sub_2993652F8(3u);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(__p) = 0;
                _os_log_debug_impl(&dword_29918C000, v30, OS_LOG_TYPE_DEBUG, " ∟ Rejected", &__p, 2u);
              }
            }

            v31 = v38;
            v38 = 0;
            if (v31)
            {
              (*(*v31 + 16))(v31);
            }
          }

          v27 = v41;
        }

        if (v27)
        {
          v42 = v27;
          operator delete(v27);
        }

        if (__dst)
        {
          v44 = __dst;
          operator delete(__dst);
        }
      }
    }
  }

  v32 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29924A45C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && *v1)
  {
    sub_299210C88(*(result + 8));
    atomic_load(v1 + 10);
    v2 = *(*v1 + 8);

    return LMLanguageModelReset();
  }

  return result;
}

void sub_29924A4BC(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

__n128 sub_29924A590(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F67E10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

void sub_29924A5E8(uint64_t a1, const __CFString **a2, CFStringRef *a3, double *a4, _BYTE *a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *(a1 + 64);
  Length = CFStringGetLength(*a3);
  v12 = Length;
  if ((**(a1 + 8) & 1) != 0 || Length != *(*(a1 + 16) + 8))
  {
    v13 = *(a1 + 32);
    if (**(a1 + 24))
    {
      v14 = *v13;
    }

    else
    {
      *v13 = v9;
      v14 = v9;
    }

    if (v14 + -4.0 <= v9)
    {
      v15 = **(a1 + 40);
      if (v15)
      {
        v16 = 0;
        while (v16 < CFStringGetLength(v15))
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v15, v16++);
          if ((CharacterAtIndex - 65) <= 0x19)
          {
            v18 = **(a1 + 40);
            v19 = CFStringGetLength(v7);
            if (v19 >= CFStringGetLength(v18))
            {
              sub_299276A84(v7);
            }

            goto LABEL_31;
          }
        }
      }

      v20 = 0.0;
      if ((**(a1 + 8) & 1) == 0)
      {
        v20 = (v12 - *(*(a1 + 16) + 8)) * 0.15;
      }

      v21 = *(a1 + 48);
      if (v20 >= *v21)
      {
        v20 = *v21;
      }

      if (v9 - v20 >= **(a1 + 56))
      {
        if (sub_299322EB0(**(v10 + 32)))
        {
          v22 = **(a1 + 40);
          if (v22)
          {
            v23 = 0;
            while (v23 < CFStringGetLength(v22))
            {
              v24 = CFStringGetCharacterAtIndex(v22, v23++);
              if ((v24 - 65) <= 0x19)
              {
                if (!CFStringHasPrefix(v7, **(a1 + 40)))
                {
                  return;
                }

                break;
              }
            }
          }
        }

        if (**(a1 + 72) == 1)
        {
          Mutable = CFStringCreateMutable(0, 0);
          CFStringAppend(Mutable, @" ");
          CFStringAppend(Mutable, v7);
          sub_299249F30(v10, *(a1 + 80), Mutable, v8, **(a1 + 16), *(*(a1 + 16) + 8), 0, **(a1 + 88));
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

        else
        {
          sub_299249F30(v10, *(a1 + 80), v7, v8, **(a1 + 16), *(*(a1 + 16) + 8), 0, **(a1 + 88));
        }

LABEL_31:
        ++**(a1 + 24);
        if (**(a1 + 8) == 1)
        {
          *a5 = 1;
        }
      }
    }

    else
    {
      *a5 = 1;
    }
  }
}

void sub_29924A954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C80BDFB0063);
  }

  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29924A9C4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F67E70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29924AA10(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_29924AABC(uint64_t a1)
{
  sub_29924AC3C(a1 + 8);

  JUMPOUT(0x29C29BFB0);
}

BOOL sub_29924AB08(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_2991A2240();
  }

  v5 = (*(*v2 + 48))(v2);
  if (v5)
  {
    objc_msgSend_addEntriesFromDictionary_(a2, v4, v5);
    CFRelease(v5);
  }

  return v5 != 0;
}

void sub_29924AB8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299215B18(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29924ABA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29924AC3C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL sub_29924ACBC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v3 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  v9 = memcmp(v2, v5, v8);
  if (v9 < 0)
  {
    return 1;
  }

  return v3 < v6 && v9 == 0;
}

uint64_t sub_29924AD04(uint64_t a1)
{
  *a1 = &unk_2A1F67EE0;
  sub_299213890(a1 + 8);
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  sub_2991BF614((a1 + 424));
  *(a1 + 712) = 0;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 777) = 0u;
  return a1;
}

void sub_29924AD80(_Unwind_Exception *a1)
{
  if (*(v1 + 423) < 0)
  {
    operator delete(*(v1 + 400));
  }

  sub_299213950(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29924ADA4(uint64_t a1)
{
  *a1 = &unk_2A1F67EE0;
  sub_29924AF44(a1);
  v2 = *(a1 + 768);
  if (v2)
  {
    *(a1 + 776) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 744);
  if (v3)
  {
    *(a1 + 752) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 720);
  if (v4)
  {
    *(a1 + 728) = v4;
    operator delete(v4);
  }

  if (*(a1 + 711) < 0)
  {
    operator delete(*(a1 + 688));
  }

  v5 = MEMORY[0x29EDC9538];
  v6 = *MEMORY[0x29EDC9538];
  *(a1 + 424) = *MEMORY[0x29EDC9538];
  *(a1 + 424 + *(v6 - 24)) = *(v5 + 24);
  *(a1 + 432) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  *(a1 + 432) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 440));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 536);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  sub_299213950(a1 + 8);
  return a1;
}

void *sub_29924AF44(void *result)
{
  if (*(result + 95) != 3)
  {
    v2 = result;
    v3 = result[94];
    v4 = result[93];
    if (v3 != v4)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = *(v4 + 8 * v5);
        if (v7)
        {
          sub_2993226F0(v7);
          v3 = v2[94];
          v4 = v2[93];
        }

        v5 = v6++;
      }

      while (v5 < (v3 - v4) >> 3);
    }

    v2[94] = v4;
    v2[91] = v2[90];
    v2[97] = v2[96];

    return sub_299213AB8((v2 + 1));
  }

  return result;
}

void sub_29924AFE0(uint64_t a1)
{
  sub_29924ADA4(a1);

  JUMPOUT(0x29C29BFB0);
}

int *sub_29924B018(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unint64_t a5, uint8x8_t a6)
{
  v8 = *(a1 + 744);
  v9 = *(a1 + 752);
  if (v8 == v9)
  {
    return 0;
  }

  v10 = *(a1 + 712);
  if (v10 >= (v9 - v8) >> 3)
  {
    return 0;
  }

  result = *(v8 + 8 * v10);
  if (result)
  {
    v12[1] = v6;
    v12[2] = v7;
    v12[0] = 0;
    sub_2993228BC(result, *result, a2, a3, a5, v12, a4, a2, a6);
    return v12[0];
  }

  return result;
}

uint64_t sub_29924B08C@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>, uint8x8_t a5@<D0>)
{
  *a4 = 0;
  *(a4 + 12) = 0;
  *(a4 + 4) = 0;
  *(a4 + 20) = 0;
  v6 = *(result + 744);
  v7 = *(result + 752);
  if (v6 != v7)
  {
    v8 = *(result + 712);
    if (v8 < (v7 - v6) >> 3)
    {
      result = *(v6 + 8 * v8);
      if (result)
      {
        v9 = a3;
        result = sub_29932273C(result, a2, a3, a5);
        *(a4 + 8) = result;
        *(a4 + 12) = v9;
      }
    }
  }

  return result;
}

void sub_29924B0F4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
}

uint64_t sub_29924B110(uint64_t a1, __int16 a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 744);
  v10 = *(a1 + 752);
  if (v9 == v10)
  {
    goto LABEL_13;
  }

  v12 = *(a1 + 712);
  if (v12 >= (v10 - v9) >> 3 || !*(v9 + 8 * v12))
  {
    goto LABEL_13;
  }

  v20 = a2;
  if (a2 == 2)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2 * (a2 == 1);
  }

  if (a2 == 1)
  {
    if ((*(*a1 + 120))(a1))
    {
      v9 = *(a1 + 744);
      v10 = *(a1 + 752);
      goto LABEL_10;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

LABEL_10:
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  if (v9 == v10 || (v22 = *(a1 + 712), v22 >= (v10 - v9) >> 3))
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v9 + 8 * v22);
  }

  v28[0] = v23;
  v28[1] = a5;
  v28[2] = a6;
  v28[3] = a3;
  LODWORD(v29) = a4;
  *(&v29 + 1) = a9;
  *&v30 = a8;
  *(&v30 + 1) = a7;
  LOBYTE(v32) = (a2 & 0x800) == 0;
  BYTE1(v32) = (a2 & 0xF100) != 0;
  LOBYTE(v33[0]) = (v20 == 1) & ((a2 & 0x800) >> 11);
  LODWORD(v31) = v21;
  BYTE1(v33[0]) = 1;
  if (a4 >= 0x80)
  {
    LOBYTE(v33[0]) = 0;
  }

  *(&v32 + 1) = v33 + 2;
  if (v9 == v10 || (v26 = *(a1 + 712), v26 >= (v10 - v9) >> 3))
  {
    v27 = 0;
  }

  else
  {
    v27 = *(v9 + 8 * v26);
  }

  result = sub_2993DD7C4(v27, v28);
LABEL_14:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

int *sub_29924B350(uint64_t a1, __int16 a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5, _BYTE *a6, uint8x8_t a7)
{
  v7 = *(a1 + 744);
  v8 = *(a1 + 752);
  if (v7 == v8)
  {
    return 0;
  }

  v10 = *(a1 + 712);
  if (v10 >= (v8 - v7) >> 3)
  {
    return 0;
  }

  result = *(v7 + 8 * v10);
  if (!result)
  {
    return result;
  }

  if (a2 == 3)
  {
    v23 = 0;
    sub_2993DC148(result, *result, a3, a4, 1, a5, a6, a6, a7, &v23);
    return v23;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      v23 = 0;
      sub_2993DBD10(result, *result, a3, a4, -1, 0, a5, a6, a7, a6, &v23);
      return v23;
    }

    return 0;
  }

  if (!(*(*a1 + 120))(a1))
  {
    return 0;
  }

  v18 = *(a1 + 744);
  if ((a2 & 0xF000) == 0)
  {
    v22 = *(v18 + 8 * *(a1 + 712));
    v23 = 0;
    sub_2993DC148(v22, *v22, a3, a4, 0, a5, a6, a6, v17, &v23);
    return v23;
  }

  v19 = *(a1 + 752);
  if (v18 == v19 || (v20 = *(a1 + 712), v20 >= (v19 - v18) >> 3))
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v18 + 8 * v20);
  }

  return sub_2993DC4C0(v21, a3, a4, a5, a6, v17);
}

uint64_t sub_29924B504(uint64_t a1, char *a2, _BYTE *a3)
{
  v6 = a1 + 8;
  (*(*a1 + 24))(a1);
  sub_299248D7C((a1 + 400), a2);
  if ((sub_299211244(v6, a2, a3) & 1) == 0)
  {
    std::ios_base::clear((a1 + 424 + *(*(a1 + 424) - 24)), 0);
    v13 = sub_2991C0E9C((a1 + 424), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/dictionary.cpp", 67);
    v14 = sub_2991C0E9C(v13, "(", 1);
    v15 = MEMORY[0x29C29BD30](v14, 237);
    v16 = sub_2991C0E9C(v15, ") [", 3);
    v17 = sub_2991C0E9C(v16, "dmmap_.open(file, mode)", 23);
    v18 = sub_2991C0E9C(v17, "] ", 2);
    v19 = "no such file or directory: ";
LABEL_28:
    v53 = sub_2991C0E9C(v18, v19, 27);
    v54 = strlen(a2);
    sub_2991C0E9C(v53, a2, v54);
    return 0;
  }

  v7 = *(a1 + 24);
  if (v7 <= 0x63)
  {
    std::ios_base::clear((a1 + 424 + *(*(a1 + 424) - 24)), 0);
    v20 = sub_2991C0E9C((a1 + 424), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/dictionary.cpp", 67);
    v21 = sub_2991C0E9C(v20, "(", 1);
    v22 = MEMORY[0x29C29BD30](v21, 240);
    v23 = sub_2991C0E9C(v22, ") [", 3);
    v24 = "dmmap_.size() >= 100";
    v25 = 20;
LABEL_27:
    v52 = sub_2991C0E9C(v23, v24, v25);
    v18 = sub_2991C0E9C(v52, "] ", 2);
    v19 = "dictionary file is broken: ";
    goto LABEL_28;
  }

  v8 = *(a1 + 16);
  if (v7 != (*v8 ^ 0xEF718F77))
  {
    std::ios_base::clear((a1 + 424 + *(*(a1 + 424) - 24)), 0);
    v26 = sub_2991C0E9C((a1 + 424), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/dictionary.cpp", 67);
    v27 = sub_2991C0E9C(v26, "(", 1);
    v28 = MEMORY[0x29C29BD30](v27, 250);
    v23 = sub_2991C0E9C(v28, ") [", 3);
    v24 = "(magic ^ DictionaryMagicID) == dmmap_.size()";
    v25 = 44;
    goto LABEL_27;
  }

  *(a1 + 376) = v8[1];
  *(a1 + 380) = v8[2];
  *(a1 + 384) = v8[3];
  *(a1 + 388) = v8[4];
  *(a1 + 392) = v8[5];
  v9 = v8[6];
  *(a1 + 396) = v8[7];
  v10 = v8[9];
  v56 = v8[8];
  *(a1 + 368) = v8 + 10;
  v11 = (v8 + 18);
  *(a1 + 712) = 0;
  if (v10 >= 2)
  {
    v29 = (a1 + 768);
    do
    {
      v57 = *v11;
      sub_2992141C0((a1 + 720), &v57);
      v30 = (v11 + 2);
      v31 = v11[1];
      sub_29932265C(0, 0, v30, v31);
      v58 = v32;
      sub_29924B994(a1 + 744, &v58);
      v33 = (v30 + v31);
      v36 = *v33;
      v34 = v33 + 1;
      v35 = v36;
      v37 = *(a1 + 776);
      v38 = *(a1 + 784);
      if (v37 >= v38)
      {
        v40 = (v37 - *v29) >> 3;
        if ((v40 + 1) >> 61)
        {
          sub_29924EED0();
        }

        v41 = v38 - *v29;
        v42 = v41 >> 2;
        if (v41 >> 2 <= (v40 + 1))
        {
          v42 = v40 + 1;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v43 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v42;
        }

        if (v43)
        {
          sub_29920BE54(a1 + 768, v43);
        }

        *(8 * v40) = v34;
        v39 = 8 * v40 + 8;
        v44 = *(a1 + 768);
        v45 = *(a1 + 776) - v44;
        v46 = (8 * v40 - v45);
        memcpy(v46, v44, v45);
        v47 = *(a1 + 768);
        *(a1 + 768) = v46;
        *(a1 + 776) = v39;
        *(a1 + 784) = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        *v37 = v34;
        v39 = (v37 + 1);
      }

      *(a1 + 776) = v39;
      v11 = (v34 + v35);
      --v10;
    }

    while (v10);
  }

  else
  {
    sub_29932265C(0, 0, (v8 + 18), v9);
    v58 = v12;
    sub_29924B994(a1 + 744, &v58);
    v11 = (v11 + v9);
  }

  *(a1 + 352) = v11;
  v48 = v11 + *(a1 + 396);
  if (v56)
  {
    *(a1 + 360) = v48;
  }

  if (&v48[v56] != (*(a1 + 16) + *(a1 + 24)))
  {
    std::ios_base::clear((a1 + 424 + *(*(a1 + 424) - 24)), 0);
    v49 = sub_2991C0E9C((a1 + 424), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/dictionary.cpp", 67);
    v50 = sub_2991C0E9C(v49, "(", 1);
    v51 = MEMORY[0x29C29BD30](v50, 315);
    v23 = sub_2991C0E9C(v51, ") [", 3);
    v24 = "ptr == dmmap_.end()";
    v25 = 19;
    goto LABEL_27;
  }

  return 1;
}

void sub_29924B994(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_29924EED0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_29924EEE8(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_29924BA6C(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2991C153C(a1, a2);
  }

  else
  {
    sub_2991D7D48(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_29924BAAC(void *a1)
{
  v2 = MEMORY[0x29EDC9520];
  v3 = *MEMORY[0x29EDC9520];
  *a1 = *MEMORY[0x29EDC9520];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x29C29BBF0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 52);
  return a1;
}

uint64_t sub_29924BB78(uint64_t a1, char *a2)
{
  sub_2991C6CA8(&__p, a2);
  v3 = sub_29920B95C(a1 + 8, &__p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v3)
  {
    operator new();
  }

  if (*(v3 + 79) < 0)
  {
    sub_2991A110C(v12, *(v3 + 56), *(v3 + 64));
  }

  else
  {
    *v12 = *(v3 + 56);
    v13 = *(v3 + 72);
  }

  sub_2991D7954(&__p);
  v14 = 0;
  if (v13 >= 0)
  {
    v4 = v12;
  }

  else
  {
    v4 = v12[0];
  }

  if (v13 >= 0)
  {
    v5 = HIBYTE(v13);
  }

  else
  {
    v5 = v12[1];
  }

  v6 = sub_2991C0E9C(&v16, v4, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0 || (v7 = MEMORY[0x29C29BC60](&__p, &v14), (*(v7 + *(*v7 - 24) + 32) & 5) != 0) || (v8 = sub_29920BAF0(&__p), (*(v8 + *(*v8 - 24) + 32) & 2) == 0))
  {
    operator new();
  }

  v11 = v14;
  __p = *MEMORY[0x29EDC9528];
  v9 = *(MEMORY[0x29EDC9528] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x29EDC9528] + 64);
  v16 = v9;
  v17 = MEMORY[0x29EDC9570] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](&v20);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  return v11 & 1;
}

void sub_29924BEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_2992510CC(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29924BEF4@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = sub_2991C1C18(a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

void *sub_29924BF88(void *a1)
{
  *a1 = &unk_2A1F68058;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_29924BFF4(uint64_t a1, int a2, int a3)
{
  v6 = sub_29924AD04(a1);
  *v6 = &unk_2A1F67F88;
  *(v6 + 800) = 0;
  *(v6 + 808) = a2;
  *(v6 + 812) = a3;
  *(v6 + 820) = 0;
  *(v6 + 824) = a2;
  *(v6 + 828) = 0;
  *(v6 + 836) = 1;
  *(v6 + 840) = 0u;
  *(v6 + 856) = 0u;
  *(v6 + 872) = 0u;
  *(v6 + 888) = 0u;
  *(v6 + 904) = 0u;
  *(v6 + 920) = 0u;
  pthread_rwlock_init((v6 + 936), 0);
  *(a1 + 1136) = 850045863;
  *(a1 + 1192) = 0;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  return a1;
}

void sub_29924C0B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 935) < 0)
  {
    operator delete(*(v2 + 912));
  }

  v5 = *(v2 + 888);
  if (v5)
  {
    *(v2 + 896) = v5;
    operator delete(v5);
  }

  sub_299212B90(va);
  if (*(v2 + 863) < 0)
  {
    operator delete(*v3);
  }

  sub_29924ADA4(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29924C108(uint64_t a1)
{
  *a1 = &unk_2A1F67F88;
  pthread_rwlock_wrlock((a1 + 936));
  v2 = *(a1 + 752);
  v3 = *(a1 + 744);
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = *(a1 + 712);
    if (v5 >= v4 >> 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v3 + 8 * v5);
    }

    sub_29931C528(v6);
    *(a1 + 752) = *(a1 + 744);
  }

  v7 = *(a1 + 800);
  if (v7)
  {
    free(v7);
    *(a1 + 800) = 0;
  }

  pthread_rwlock_unlock((a1 + 936));
  std::mutex::~mutex((a1 + 1136));
  pthread_rwlock_destroy((a1 + 936));
  if (*(a1 + 935) < 0)
  {
    operator delete(*(a1 + 912));
  }

  v8 = *(a1 + 888);
  if (v8)
  {
    *(a1 + 896) = v8;
    operator delete(v8);
  }

  v10 = (a1 + 864);
  sub_299212B90(&v10);
  if (*(a1 + 863) < 0)
  {
    operator delete(*(a1 + 840));
  }

  return sub_29924ADA4(a1);
}

void sub_29924C208(uint64_t a1)
{
  sub_29924C108(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29924C240(uint64_t a1)
{
  std::mutex::lock((a1 + 1136));
  v2 = 1;
  if ((*(a1 + 837) & 1) == 0)
  {
    *(a1 + 837) = 1;
    v3 = (a1 + 912);
    if (*(a1 + 935) < 0)
    {
      v3 = *v3;
    }

    v4 = (a1 + 400);
    v5 = (a1 + 400);
    if (*(a1 + 423) < 0)
    {
      v5 = v4->__pn_.__r_.__value_.__r.__words[0];
    }

    if (sub_299211244(a1 + 8, v5, v3))
    {
      v6 = *(a1 + 24);
      if (v6 && (v7 = *(a1 + 16), v6 == (*v7 ^ 0xEF718F77)))
      {
        *(a1 + 388) = 0;
        v8 = v7[1];
        *(a1 + 376) = v8;
        if (v8 > 0x68)
        {
          *(a1 + 380) = v7[2];
          *(a1 + 384) = v7[3];
          *(a1 + 820) = v7[4];
          v20 = v7[5];
          v21 = v7[6];
          v23 = v7[7];
          v22 = v7[8];
          v24 = v7[9];
          v25 = malloc_type_malloc(v21, 0x100004077774924uLL);
          memcpy(v25, v7 + 10, v21);
          __p[0] = sub_29931C470(0, v25, v21, 0);
          sub_29924B994(a1 + 744, __p);
          *(a1 + 712) = 0;
          v26 = v7 + v21 + 40;
          v27 = &v26[v20];
          v28 = &v26[v20 + v22];
          if (((v28 - *(a1 + 16)) & 7) != 0)
          {
            if (v23)
            {
              operator new();
            }

            v23 = 0;
            v61 = 0;
          }

          else
          {
            v61 = v28;
          }

          if (*(a1 + 863) < 0)
          {
            **(a1 + 840) = 0;
            *(a1 + 848) = 0;
          }

          else
          {
            *(a1 + 840) = 0;
            *(a1 + 863) = 0;
          }

          *(a1 + 896) = *(a1 + 888);
          sub_299212BE4((a1 + 864));
          std::string::append((a1 + 840), v26, v20);
          v29 = *(a1 + 820);
          *(a1 + 816) = v29;
          v30 = malloc_type_malloc(16 * v29, 0x100004023422098uLL);
          *(a1 + 800) = v30;
          memcpy(v30, &v28[v23], v24);
          if (*(a1 + 820) >= 1)
          {
            v31 = 0;
            v63 = (a1 + 888);
            v32 = v7 + v21 + v20 + 42;
            do
            {
              v33 = *(a1 + 800) + 16 * v31;
              *(v33 + 6) = 32;
              v34 = *(v33 + 12);
              v35 = *(a1 + 896);
              *(v33 + 12) = -1431655765 * (&v35[-*(a1 + 888)] >> 2);
              if (*(v33 + 5))
              {
                v62 = v31;
                v36 = 0;
                v37 = &v61[v34];
                do
                {
                  v38 = &v37[12 * v36];
                  v39 = *(a1 + 896);
                  v40 = *(a1 + 904);
                  if (v39 >= v40)
                  {
                    v43 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *v63) >> 2);
                    v44 = v43 + 1;
                    if (v43 + 1 > 0x1555555555555555)
                    {
                      sub_29924EED0();
                    }

                    v45 = 0xAAAAAAAAAAAAAAABLL * ((v40 - *v63) >> 2);
                    if (2 * v45 > v44)
                    {
                      v44 = 2 * v45;
                    }

                    if (v45 >= 0xAAAAAAAAAAAAAAALL)
                    {
                      v46 = 0x1555555555555555;
                    }

                    else
                    {
                      v46 = v44;
                    }

                    if (v46)
                    {
                      sub_29924F00C(v46);
                    }

                    v47 = 12 * v43;
                    v48 = *v38;
                    *(v47 + 8) = *(v38 + 2);
                    *v47 = v48;
                    v42 = 12 * v43 + 12;
                    v49 = *(a1 + 888);
                    v50 = *(a1 + 896) - v49;
                    v51 = v47 - v50;
                    memcpy((v47 - v50), v49, v50);
                    v52 = *(a1 + 888);
                    *(a1 + 888) = v51;
                    *(a1 + 896) = v42;
                    *(a1 + 904) = 0;
                    if (v52)
                    {
                      operator delete(v52);
                    }
                  }

                  else
                  {
                    v41 = *v38;
                    *(v39 + 8) = *(v38 + 2);
                    *v39 = v41;
                    v42 = v39 + 12;
                  }

                  *(a1 + 896) = v42;
                  v53 = *(v42 - 4);
                  if (*&v27[v53])
                  {
                    v54 = 0;
                    do
                    {
                      v55 = v54 + 2;
                      v56 = *(v32 + v53 + v54);
                      v54 += 2;
                    }

                    while (v56);
                    v57 = v55 + 2;
                  }

                  else
                  {
                    v57 = 2;
                  }

                  sub_2991D6AE8(__p, &v27[v53], v57);
                  *(v42 - 4) = -1431655765 * ((*(a1 + 872) - *(a1 + 864)) >> 3);
                  sub_29924BA6C((a1 + 864), __p);
                  if (v65 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  ++v36;
                  v58 = *(v33 + 5);
                }

                while (v36 < v58);
                v35 = *(a1 + 896);
                v59 = *(v33 + 6) - v58;
                v31 = v62;
              }

              else
              {
                v59 = 32;
              }

              LODWORD(__p[1]) = 0;
              __p[0] = 0;
              sub_29924F064(v63, v35, v59, __p);
              ++v31;
            }

            while (v31 < *(a1 + 820));
          }

          sub_299213AB8(a1 + 8);
        }

        else
        {
          sub_299213AB8(a1 + 8);
          pthread_mutex_lock(&stru_2A145E7C8);
          if (*(a1 + 423) < 0)
          {
            v4 = v4->__pn_.__r_.__value_.__r.__words[0];
          }

          remove(v4, v9);
          pthread_mutex_unlock(&stru_2A145E7C8);
          sub_29924C9E4(a1, *(a1 + 812), 105, 3);
        }
      }

      else
      {
        sub_29924C9E4(a1, *(a1 + 812), 105, 3);
        sub_299213AB8(a1 + 8);
      }

      v2 = 1;
    }

    else
    {
      std::ios_base::clear((a1 + 424 + *(*(a1 + 424) - 24)), 0);
      v10 = sub_2991C0E9C((a1 + 424), "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/dictionary.cpp", 67);
      v11 = sub_2991C0E9C(v10, "(", 1);
      v12 = MEMORY[0x29C29BD30](v11, 1003);
      v13 = sub_2991C0E9C(v12, ") [", 3);
      v14 = sub_2991C0E9C(v13, "dmmap_.open(filename_.c_str(), mode)", 36);
      v15 = sub_2991C0E9C(v14, "] ", 2);
      v16 = sub_2991C0E9C(v15, "no such file or directory: ", 27);
      v17 = *(a1 + 423);
      if (v17 >= 0)
      {
        v18 = a1 + 400;
      }

      else
      {
        v18 = *(a1 + 400);
      }

      if (v17 >= 0)
      {
        v19 = *(a1 + 423);
      }

      else
      {
        v19 = *(a1 + 408);
      }

      sub_2991C0E9C(v16, v18, v19);
      v2 = 0;
    }
  }

  std::mutex::unlock((a1 + 1136));
  return v2;
}

uint64_t sub_29924C91C(uint64_t a1, char *a2, char *a3)
{
  sub_299248D7C((a1 + 400), a2);
  sub_299248D7C((a1 + 912), a3);
  *(a1 + 380) = 3;
  return 1;
}

void *sub_29924C960(void *result)
{
  if (*(result + 95) != 3)
  {
    v2 = result;
    v3 = result[93];
    v4 = result[94];
    if (v3 != v4)
    {
      do
      {
        v5 = *v3++;
        sub_29931C528(v5);
      }

      while (v3 != v4);
      v3 = v2[93];
    }

    v2[94] = v3;
    v2[91] = v2[90];
    v2[97] = v2[96];

    return sub_299213AB8((v2 + 1));
  }

  return result;
}

uint64_t sub_29924C9E4(uint64_t a1, int a2, int a3, int a4)
{
  v6 = *(a1 + 808);
  *(a1 + 380) = a4;
  *(a1 + 376) = a3;
  *(a1 + 837) = 1;
  *(a1 + 392) = 0;
  *(a1 + 384) = 0;
  v7 = malloc_type_malloc(0x58uLL, 0x10B0040A3C4D6A3uLL);
  if (v7)
  {
    v7[20] = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    v7[4] = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    *(v7 + 3) = 0;
  }

  v8 = *(a1 + 752);
  v9 = *(a1 + 760);
  if (v8 >= v9)
  {
    v11 = *(a1 + 744);
    v12 = (v8 - v11) >> 3;
    if ((v12 + 1) >> 61)
    {
      sub_29924EED0();
    }

    v13 = v9 - v11;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      sub_29924EEE8(a1 + 744, v15);
    }

    v16 = (8 * v12);
    *v16 = v7;
    v10 = 8 * v12 + 8;
    v17 = *(a1 + 744);
    v18 = *(a1 + 752) - v17;
    v19 = v16 - v18;
    memcpy(v16 - v18, v17, v18);
    v20 = *(a1 + 744);
    *(a1 + 744) = v19;
    *(a1 + 752) = v10;
    *(a1 + 760) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v8 = v7;
    v10 = (v8 + 1);
  }

  *(a1 + 752) = v10;
  if (v6 >= a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = v6;
  }

  *(a1 + 712) = 0;
  *(a1 + 816) = v21;
  *(a1 + 800) = malloc_type_malloc(16 * v21, 0x100004023422098uLL);
  return 1;
}

uint64_t sub_29924CB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_rwlock_rdlock((a1 + 936));
  LODWORD(a2) = *(*(a1 + 800) + 16 * (*(a2 + 8) - 1) + 12);
  v6 = *(a1 + 888);
  pthread_rwlock_unlock((a1 + 936));
  return v6 + 12 * a2 + 12 * a3;
}

uint64_t sub_29924CBAC(uint64_t a1, uint64_t a2)
{
  pthread_rwlock_rdlock((a1 + 936));
  v4 = *(*(a1 + 800) + 16 * (*(a2 + 8) - 1) + 5);
  pthread_rwlock_unlock((a1 + 936));
  return v4;
}

void sub_29924CBFC(uint64_t a1, uint64_t a2, __int16 a3, void *__src, size_t __len, __int16 a6, __int16 a7)
{
  *(a2 + 2) = a6;
  *(a2 + 6) = a7;
  *(a2 + 4) = 11;
  *a2 = a3;
  *(a2 + 8) = -1431655765 * ((*(a1 + 872) - *(a1 + 864)) >> 3);
  *__s = 0;
  sub_2991D6AE8(&__p, __src, __len);
  std::string::append(&__p, __s, 2uLL);
  sub_29924BA6C((a1 + 864), &__p);
  ++*(a1 + 832);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29924CCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29924CCC0(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v2 = *(a1 + 820);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1 + 800) + 16 * i;
      if (*(v4 + 5))
      {
        v5 = 0;
        do
        {
          v6 = *(a1 + 888) + 12 * (v5 + *(v4 + 12));
          v7 = *(v6 + 8);
          *(v6 + 8) = -1431655765 * ((v9 - v8) >> 3);
          sub_29924BA6C(&v8, (*(a1 + 864) + 24 * v7));
          ++v5;
        }

        while (v5 < *(v4 + 5));
        v2 = *(a1 + 820);
      }
    }
  }

  if ((a1 + 864) != &v8)
  {
    sub_29924F2C0((a1 + 864), v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
  }

  v11 = &v8;
  sub_299212B90(&v11);
}

void sub_29924CDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_299212B90(&a12);
  _Unwind_Resume(a1);
}

void sub_29924CDEC(uint64_t a1)
{
  v2 = (a1 + 744);
  v3 = *(a1 + 744);
  if (*(a1 + 752) != v3)
  {
    if (*v3)
    {
      sub_29931C528(*v3);
      v3 = *v2;
    }

    *(a1 + 752) = v3;
  }

  v4 = malloc_type_malloc(24 * *(a1 + 820), 0x1010040E2407E0AuLL);
  v5 = v4;
  v6 = *(a1 + 820);
  if (v6 >= 1)
  {
    v7 = (*(a1 + 800) + 4);
    v8 = v4 + 4;
    v9 = 1;
    v10 = *(a1 + 820);
    do
    {
      v11 = a1 + 840;
      if (*(a1 + 863) < 0)
      {
        v11 = *(a1 + 840);
      }

      v12 = v11 + *(v7 - 1);
      v13 = *v7;
      v7 += 16;
      *(v8 - 2) = v12;
      *(v8 - 1) = v13;
      *v8 = v9;
      v8 += 6;
      ++v9;
      --v10;
    }

    while (v10);
  }

  qsort(v4, v6, 0x18uLL, sub_29924D00C);
  v14 = malloc_type_malloc(8 * *(a1 + 820), 0x10040436913F5uLL);
  v15 = malloc_type_malloc(8 * *(a1 + 820), 0x100004000313F17uLL);
  v16 = malloc_type_malloc(4 * *(a1 + 820), 0x100004052888210uLL);
  v17 = v16;
  if (*(a1 + 820) >= 1)
  {
    v18 = 0;
    v19 = v5 + 4;
    do
    {
      v20 = *(v19 - 1);
      v14[v18] = *(v19 - 2);
      v15[v18] = v20;
      v21 = *v19;
      v19 += 6;
      *(v16 + v18++) = v21;
    }

    while (v18 < *(a1 + 820));
  }

  v22 = malloc_type_malloc(0x58uLL, 0x10B0040A3C4D6A3uLL);
  v23 = v22;
  if (v22)
  {
    v22[20] = 0;
    *v22 = 0;
    *(v22 + 1) = 0;
    v22[4] = 0;
    *(v22 + 4) = 0;
    *(v22 + 5) = 0;
    *(v22 + 3) = 0;
  }

  v24 = *(a1 + 820);
  sub_2993C2EC4();
  v25 = v23;
  sub_29924B994(v2, &v25);
  free(v17);
  free(v15);
  free(v14);

  free(v5);
}

uint64_t sub_29924D00C(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 >= v3)
  {
    v4 = a2[1];
  }

  else
  {
    v4 = a1[1];
  }

  if (v4)
  {
    v5 = *a1;
    v6 = *a2;
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6++;
      v10 = v7 >= v9;
      v11 = v7 == v9;
      if (v7 < v9)
      {
        return 0xFFFFFFFFLL;
      }

      if (!v11 && v10)
      {
        return 1;
      }

      if (!--v4)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = v2 >= v3;
    v12 = v2 > v3;
    if (v10)
    {
      return v12;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

void sub_29924D064(uint64_t a1, const std::string::value_type *a2, std::string::size_type a3, void *a4, size_t a5, __int16 a6, __int16 a7, __int16 a8)
{
  v8 = *(a1 + 744);
  v9 = *(a1 + 752);
  if (v8 != v9)
  {
    v11 = *(a1 + 712);
    if (v11 < (v9 - v8) >> 3)
    {
      v12 = *(v8 + 8 * v11);
      if (v12)
      {
        v18 = *(a1 + 820);
        v19 = *(a1 + 808);
        v51 = v19;
        if (v18 == v19)
        {
          v20 = *(a1 + 800);
          if (v18 < 2)
          {
            v21 = 0;
          }

          else
          {
            v21 = 0;
            v22 = *(v20 + 8);
            v23 = (v20 + 24);
            for (i = 1; i != v18; ++i)
            {
              v26 = *v23;
              v23 += 4;
              v25 = v26;
              v27 = v22 > v26;
              if (v22 >= v26)
              {
                v22 = v25;
              }

              if (v27)
              {
                v21 = i;
              }
            }
          }

          v30 = (a1 + 840);
          v31 = (v20 + 16 * v21);
          if (*(a1 + 863) < 0)
          {
            v30 = *v30;
          }

          sub_29931CC8C(v12, v30 + *v31, *(v31 + 4));
          *(a1 + 384) -= *(v31 + 5);
          v32 = (*(a1 + 800) + 16 * v21);
        }

        else
        {
          if (v18 == *(a1 + 816))
          {
            v28 = *(a1 + 812) + v18;
            if (v28 >= v19)
            {
              v28 = *(a1 + 808);
            }

            *(a1 + 816) = v28;
            v29 = malloc_type_realloc(*(a1 + 800), 16 * v28, 0x100004023422098uLL);
            *(a1 + 800) = v29;
          }

          else
          {
            v29 = *(a1 + 800);
          }

          v32 = &v29[16 * v18];
          v33 = *(a1 + 896);
          *(v32 + 3) = -1431655765 * (&v33[-*(a1 + 888)] >> 2);
          v32[6] = 32;
          LODWORD(__str.__r_.__value_.__r.__words[1]) = 0;
          __str.__r_.__value_.__r.__words[0] = 0;
          sub_29924F064((a1 + 888), v33, 0x20uLL, &__str);
          v21 = v18;
        }

        v34 = (a1 + 840);
        v35 = *(a1 + 863);
        if (v35 < 0)
        {
          v35 = *(a1 + 848);
        }

        *v32 = v35;
        std::string::append((a1 + 840), a2, a3);
        v32[4] = a3;
        sub_29924CBFC(a1, *(a1 + 888) + 12 * *(v32 + 3), a8, a4, a5, a6, a7);
        v32[5] = 1;
        v36 = *(a1 + 824);
        *(a1 + 824) = v36 + 1;
        *(v32 + 2) = v36;
        v37 = *(a1 + 744);
        v38 = *(a1 + 752);
        if (v37 == v38 || (v39 = *(a1 + 712), v39 >= (v38 - v37) >> 3))
        {
          v40 = 0;
        }

        else
        {
          v40 = *(v37 + 8 * v39);
        }

        v41 = a1 + 840;
        if (*(a1 + 863) < 0)
        {
          v41 = *v34;
        }

        sub_29931C6B4(v40, v41 + *v32, v32[4], v21 + 1);
        if (v18 != v51)
        {
          ++*(a1 + 820);
        }

        v42 = *(a1 + 828) + 1;
        *(a1 + 828) = v42;
        if (v42 == 300)
        {
          sub_29924CDEC(a1);
          memset(&__str, 0, sizeof(__str));
          if (*(a1 + 820) >= 1)
          {
            v43 = 0;
            v44 = 0;
            do
            {
              v45 = a1 + 840;
              if (*(a1 + 863) < 0)
              {
                v45 = *v34;
              }

              v46 = (*(a1 + 800) + v43);
              v47 = *v46;
              v48 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v48 = __str.__r_.__value_.__r.__words[1];
              }

              *v46 = v48;
              std::string::append(&__str, (v45 + v47), *(v46 + 4));
              ++v44;
              v43 += 16;
            }

            while (v44 < *(a1 + 820));
          }

          std::string::operator=((a1 + 840), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *(a1 + 828) = 0;
        }

        ++*(a1 + 384);
      }
    }
  }
}

void sub_29924D3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29924D3C4(uint64_t a1, int a2, unsigned __int16 *__src, size_t a4, int a5, int a6, __int16 a7)
{
  v10 = a4;
  v12 = a1;
  v13 = *(a1 + 800) + 16 * a2;
  LODWORD(v14) = *(v13 + 5);
  if (*(v13 + 5))
  {
    v15 = 0;
    v16 = 0;
    v17 = a4 >> 1;
    v45 = (a4 >> 1) - 1;
    v18 = -1;
    do
    {
      v19 = *(v13 + 12);
      v20 = *(v12 + 888);
      v21 = v16;
      while (1)
      {
        v22 = (v20 + 12 * (v19 + v21));
        if (*v22 < a7)
        {
          if (*(v13 + 4) > 5u || (v22[1] == a5 ? (v23 = v22[3] == a6) : (v23 = 0), v23))
          {
            a7 = *v22;
          }
        }

        if ((v15 & 1) == 0)
        {
          break;
        }

        ++v21;
        v15 = 1;
        if (v21 >= v14)
        {
          goto LABEL_33;
        }
      }

      v46 = v17;
      v47 = v18;
      v24 = *(*v12 + 144);
      v25 = v12;
      v26 = v12;
      v27 = v10;
      v28 = v24(v26, v22);
      v10 = v27;
      if (v27 >= 2)
      {
        v30 = 0;
        v31 = __src;
        v12 = v25;
        v18 = v47;
        v17 = v46;
        while (*(v28 + 2 * v30))
        {
          if (*(v28 + 2 * v30) != *v31)
          {
            goto LABEL_25;
          }

          ++v30;
          ++v31;
          if (v46 == v30)
          {
            v29 = v46;
            goto LABEL_22;
          }
        }

        if (v30 >= v45)
        {
          goto LABEL_23;
        }

LABEL_25:
        v32 = 0;
      }

      else
      {
        v29 = 0;
        v12 = v25;
        v18 = v47;
        v17 = v46;
LABEL_22:
        v31 = (v28 + 2 * v29);
LABEL_23:
        v32 = *v31 == 0;
      }

      if (v22[1] != a5)
      {
        v32 = 0;
      }

      v33 = v22[3] == a6;
      v15 = v32 && v33;
      if (v32 && v33)
      {
        v18 = v21;
      }

      v14 = *(v13 + 5);
      v16 = (v21 + 1);
    }

    while (v21 + 1 < v14);
    if (v15)
    {
      v19 = *(v13 + 12);
      v20 = *(v12 + 888);
      v18 = v21;
LABEL_33:
      v34 = (v20 + 12 * (v19 + v18));
      if (*v34 != a7)
      {
        if (v14)
        {
          v14 = v14;
          do
          {
            v35 = (v20 + 12 * v19);
            v36 = *v35;
            if (v36 < *v34)
            {
              *v35 = v36 + 1;
            }

            ++v19;
            --v14;
          }

          while (v14);
        }

        *v34 = a7;
      }

      goto LABEL_42;
    }

    if (v14 <= 0x1F)
    {
      goto LABEL_41;
    }

    v38 = 0;
    v39 = *(v13 + 12);
    v40 = *(v12 + 888);
    v41 = 12 * v39;
    v42 = *(v40 + v41);
    *(v40 + v41) = v42 + 1;
    for (i = 1; i != v14; ++i)
    {
      v44 = *(v40 + 12 * (v39 + i));
      if (v42 < v44)
      {
        v38 = i;
      }

      if (v42 <= v44)
      {
        v42 = *(v40 + 12 * (v39 + i));
      }

      *(v40 + 12 * (v39 + i)) = v44 + 1;
    }

    sub_29924CBFC(v12, v40 + 12 * (v38 + v39), a7, __src, v10, a5, a6);
  }

  else
  {
LABEL_41:
    sub_29924CBFC(v12, *(v12 + 888) + 12 * (*(v13 + 12) + v14), a7 - 1, __src, v10, a5, a6);
    ++*(v13 + 5);
    ++*(v12 + 384);
  }

LABEL_42:
  v37 = *(v12 + 824);
  *(v12 + 824) = v37 + 1;
  *(v13 + 8) = v37;
}

uint64_t sub_29924D6E4(uint64_t a1, unsigned __int8 *a2, std::string::size_type a3, void *a4, size_t a5, int a6, int a7, __int16 a8)
{
  pthread_rwlock_wrlock((a1 + 936));
  v16 = *(a1 + 744);
  v17 = *(a1 + 752);
  if (v16 == v17 || (v18 = *(a1 + 712), v18 >= (v17 - v16) >> 3))
  {
    v19 = 0;
    if (!a5)
    {
      return pthread_rwlock_unlock((a1 + 936));
    }
  }

  else
  {
    v19 = *(v16 + 8 * v18) != 0;
    if (!a5)
    {
      return pthread_rwlock_unlock((a1 + 936));
    }
  }

  if (a4 && a3 && a2 && v19)
  {
    sub_299255778(0);
    if (!a6)
    {
      LOWORD(a6) = word_2A1461DF4;
    }

    if (!a7)
    {
      LOWORD(a7) = word_2A1461DF4;
    }

    sub_29924C240(a1);
    v20 = *(a1 + 744);
    v21 = *(a1 + 752);
    if (v20 == v21 || (v22 = *(a1 + 712), v22 >= (v21 - v20) >> 3))
    {
      v23 = 0;
    }

    else
    {
      v23 = *(v20 + 8 * v22);
    }

    v24 = sub_29931C578(v23, a2, a3);
    if (v24 < 0)
    {
      sub_29924D064(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      sub_29924D3C4(a1, v24 - 1, a4, a5, a6, a7, a8);
    }

    if (*(a1 + 832) >= 0x12Cu)
    {
      sub_29924CCC0(a1);
      *(a1 + 832) = 0;
    }

    *(a1 + 836) = 0;
  }

  return pthread_rwlock_unlock((a1 + 936));
}

uint64_t sub_29924D87C(uint64_t a1, const void ***a2)
{
  pthread_rwlock_wrlock((a1 + 936));
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
    if (v7 >= *(a1 + 808))
    {
      v8 = *(a1 + 808);
    }

    else
    {
      v8 = v7;
    }

    if (v8 > *(a1 + 816))
    {
      *(a1 + 816) = v8;
      *(a1 + 800) = malloc_type_realloc(*(a1 + 800), 16 * v8, 0x100004023422098uLL);
      v5 = *a2;
    }

    __p = sub_29924ACBC;
    v9 = 126 - 2 * __clz(v8);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    sub_29924F4A0(v5, &v5[5 * v8], &__p, v10, 1, v4);
    __p = 0;
    v71 = 0;
    v72 = 0;
    __src = 0;
    v68 = 0;
    v69 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v11 = **a2;
    v12 = (*a2)[1];
    *(a1 + 820) = 0;
    if (v8)
    {
      v13 = 0;
      v14 = 3;
      do
      {
        if (v13 && (v15 = *a2, v16 = &(*a2)[v14], v12 == *(v16 - 16)) && !memcmp(v11, *(v16 - 24), v12))
        {
          v56 = *(a1 + 800) + 16 * *(a1 + 820);
          v57 = *(v56 - 11);
          if (v57 <= 0x1F)
          {
            sub_29924CBFC(a1, *(a1 + 888) + 12 * (*(v56 - 4) + v57), WORD2(v15[v14 + 1]), v15[v14 - 1], v15[v14], v15[v14 + 1], WORD1(v15[v14 + 1]));
            ++*(v56 - 11);
          }
        }

        else
        {
          v17 = *(a1 + 800) + 16 * *(a1 + 820);
          v18 = *(a1 + 896);
          *(v17 + 12) = -1431655765 * (&v18[-*(a1 + 888)] >> 2);
          *(v17 + 6) = 32;
          v74 = 0;
          v73 = 0;
          sub_29924F064((a1 + 888), v18, 0x20uLL, &v73);
          v19 = *(a1 + 863);
          if (v19 < 0)
          {
            v19 = *(a1 + 848);
          }

          *v17 = v19;
          std::string::append((a1 + 840), (*a2)[v14 - 3], (*a2)[v14 - 2]);
          v20 = &(*a2)[v14];
          *(v17 + 4) = *(v20 - 16);
          sub_29924CBFC(a1, *(a1 + 888) + 12 * *(v17 + 12), *(v20 + 12), *(v20 - 8), *v20, *(v20 + 8), *(v20 + 10));
          *(v17 + 5) = 1;
          v21 = *(a1 + 824);
          *(a1 + 824) = v21 + 1;
          *(v17 + 8) = v21;
          v22 = &(*a2)[v14];
          v23 = v71;
          if (v71 >= v72)
          {
            v25 = (v71 - __p) >> 3;
            if ((v25 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v26 = (v72 - __p) >> 2;
            if (v26 <= v25 + 1)
            {
              v26 = v25 + 1;
            }

            if (v72 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v27 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v26;
            }

            if (v27)
            {
              sub_2991C1E60(&__p, v27);
            }

            v28 = (8 * v25);
            *v28 = *(v22 - 24);
            v24 = 8 * v25 + 8;
            v29 = v28 - (v71 - __p);
            memcpy(v29, __p, v71 - __p);
            v30 = __p;
            __p = v29;
            v71 = v24;
            v72 = 0;
            if (v30)
            {
              operator delete(v30);
            }
          }

          else
          {
            *v71 = *(v22 - 24);
            v24 = (v23 + 8);
          }

          v71 = v24;
          v31 = &(*a2)[v14];
          v32 = v68;
          if (v68 >= v69)
          {
            v34 = __src;
            v35 = v68 - __src;
            v36 = (v68 - __src) >> 3;
            v37 = v36 + 1;
            if ((v36 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v38 = v69 - __src;
            if ((v69 - __src) >> 2 > v37)
            {
              v37 = v38 >> 2;
            }

            v39 = v38 >= 0x7FFFFFFFFFFFFFF8;
            v40 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v39)
            {
              v40 = v37;
            }

            if (v40)
            {
              sub_299236FB8(&__src, v40);
            }

            v41 = (8 * v36);
            v42 = *(v31 - 16);
            v43 = &v41[-((v68 - __src) >> 3)];
            *v41 = v42;
            v33 = (v41 + 1);
            memcpy(v43, v34, v35);
            v44 = __src;
            __src = v43;
            v68 = v33;
            v69 = 0;
            if (v44)
            {
              operator delete(v44);
            }
          }

          else
          {
            *v68 = *(v31 - 16);
            v33 = v32 + 8;
          }

          v68 = v33;
          v45 = *(a1 + 820) + 1;
          v46 = v65;
          if (v65 >= v66)
          {
            v48 = v64;
            v49 = v65 - v64;
            v50 = (v65 - v64) >> 2;
            v51 = v50 + 1;
            if ((v50 + 1) >> 62)
            {
              sub_299212A8C();
            }

            v52 = v66 - v64;
            if ((v66 - v64) >> 1 > v51)
            {
              v51 = v52 >> 1;
            }

            v39 = v52 >= 0x7FFFFFFFFFFFFFFCLL;
            v53 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v39)
            {
              v53 = v51;
            }

            if (v53)
            {
              sub_2992F86B0(&v64, v53);
            }

            *(4 * v50) = v45;
            v47 = 4 * v50 + 4;
            memcpy(0, v48, v49);
            v54 = v64;
            v64 = 0;
            v65 = v47;
            v66 = 0;
            if (v54)
            {
              operator delete(v54);
            }
          }

          else
          {
            *v65 = v45;
            v47 = (v46 + 4);
          }

          v65 = v47;
          v55 = &(*a2)[v14];
          v11 = *(v55 - 24);
          v12 = *(v55 - 16);
          ++*(a1 + 820);
        }

        ++v13;
        v14 += 5;
      }

      while (v8 != v13);
    }

    v58 = *(a1 + 744);
    v59 = *(a1 + 752);
    if (v58 != v59)
    {
      v60 = *(a1 + 712);
      if (v60 < (v59 - v58) >> 3)
      {
        v61 = *(v58 + 8 * v60);
      }
    }

    v62 = *(a1 + 820);
    sub_2993C2EC4();
    *(a1 + 832) = 0;
    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    if (__src)
    {
      v68 = __src;
      operator delete(__src);
    }

    if (__p)
    {
      v71 = __p;
      operator delete(__p);
    }
  }

  return pthread_rwlock_unlock((a1 + 936));
}