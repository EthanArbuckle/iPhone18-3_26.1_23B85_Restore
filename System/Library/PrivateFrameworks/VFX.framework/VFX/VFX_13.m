__CFArray *sub_1AF1A61C0(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 72;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v5, @"name", @"sources");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v23 = 0;
  valuePtr = 5;
  v22 = a1 + 192;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v9, @"name", @"boundingSphere");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 0;
  valuePtr = 5;
  v22 = a1 + 200;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v13, @"name", @"boundingBox");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 104;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v17, @"name", @"meshElements");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  return Mutable;
}

uint64_t sub_1AF1A65CC(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1AF1A6638(uint64_t a1, uint64_t a2, int a3)
{
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  if (*a1)
  {
    Count = CFArrayGetCount(*a1);
    *a2 = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], Count, *a1);
    if (Count >= 1 && a3 != 0)
    {
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, v8);
        v10 = sub_1AF1AEF80(ValueAtIndex);
        CFArraySetValueAtIndex(*a2, v8, v10);
        CFRelease(v10);
        ++v8;
      }

      while (Count != v8);
    }

    v11 = *(a1 + 40);
    free(*(a2 + 40));
    v12 = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);
    *(a2 + 40) = v12;
    if (v11)
    {
      memcpy(v12, v11, Count);
    }
  }

  else
  {
    free(*(a2 + 40));
    *(a2 + 40) = malloc_type_calloc(0, 1uLL, 0x100004077774924uLL);
  }

  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1AF1A6764(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1AF1A6780(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

BOOL sub_1AF1A67A0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_1AF1A67B8()
{
  if (qword_1ED73AC28 != -1)
  {
    sub_1AFDDBB98();
  }

  return qword_1ED73AC20;
}

uint64_t sub_1AF1A67F0()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73AC20 = result;
  qword_1ED72EB20 = sub_1AF1AB2AC;
  return result;
}

uint64_t sub_1AF1A6834()
{
  if (qword_1ED73AC28 != -1)
  {
    sub_1AFDDBB98();
  }

  v0 = sub_1AF0D160C(qword_1ED73AC20, 0xD0uLL);
  if (!v0)
  {
    v1 = sub_1AF0D5194();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 128) = 0x10000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 68) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(v0 + 144) = _D0;
  *(v0 + 152) = 1065353216;
  return v0;
}

uint64_t sub_1AF1A68D0()
{
  if (qword_1EB658600 != -1)
  {
    sub_1AFDDBC24();
  }

  return qword_1EB658608;
}

uint64_t sub_1AF1A6908()
{
  result = sub_1AF1A6834();
  qword_1EB658608 = result;
  return result;
}

void sub_1AF1A6928(uint64_t a1, char a2, int a3, char a4, char a5, const void *a6, char a7)
{
  sub_1AF1A699C(a1, a2);
  *(a1 + 130) = a4;
  *(a1 + 131) = a5;
  *(a1 + 104) = a3;
  sub_1AF1A72F0(a1, a6, a7);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
}

void sub_1AF1A699C(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 88) = a2;
}

CFTypeRef sub_1AF1A69F0(uint64_t a1, char a2, int a3, char a4, char a5, const void *a6, char a7)
{
  sub_1AF1A699C(a1, a2);
  *(a1 + 130) = a4;
  *(a1 + 131) = a5;
  *(a1 + 104) = a3;
  sub_1AF1A72F0(a1, 0, a7);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  result = CFRetain(a6);
  *(a1 + 136) = result;
  return result;
}

uint64_t sub_1AF1A6A84(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB4B8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A6834();
  sub_1AF1A6AE4(a1, v10, 0);
  return v10;
}

void sub_1AF1A6AE4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 && (v6 = sub_1AF0D5194(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAF5C(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAFD4(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  v22 = *(a1 + 96);
  if (a3 && v22)
  {
    Copy = CFDataCreateCopy(0, v22);
    v24 = *(a2 + 96);
    if (v24 != Copy)
    {
      if (v24)
      {
        CFRelease(v24);
        *(a2 + 96) = 0;
      }

      if (Copy)
      {
        v25 = CFRetain(Copy);
      }

      else
      {
        v25 = 0;
      }

      *(a2 + 96) = v25;
    }

    CFRelease(Copy);
  }

  else
  {
    v26 = *(a2 + 96);
    if (v26 != v22)
    {
      if (v26)
      {
        CFRelease(v26);
        *(a2 + 96) = 0;
        v22 = *(a1 + 96);
      }

      if (v22)
      {
        v27 = CFRetain(v22);
      }

      else
      {
        v27 = 0;
      }

      *(a2 + 96) = v27;
    }
  }

  *(a2 + 104) = *(a1 + 104);
  free(*(a2 + 112));
  *(a2 + 112) = 0;
  if (*(a1 + 112))
  {
    v28 = 4 * *(a1 + 104);
    v29 = malloc_type_malloc(v28, 0xC790216EuLL);
    *(a2 + 112) = v29;
    memcpy(v29, *(a1 + 112), v28);
  }

  free(*(a2 + 120));
  *(a2 + 120) = 0;
  if (*(a1 + 120))
  {
    v30 = 2 * *(a1 + 128);
    v31 = malloc_type_malloc(v30, 0x1F92F807uLL);
    *(a2 + 120) = v31;
    memcpy(v31, *(a1 + 120), v30);
  }

  *(a2 + 128) = *(a1 + 128);
  sub_1AF16D160(a1, a2);
}

uint64_t sub_1AF1A6C8C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB4B8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A6834();
  sub_1AF1A6AE4(a1, v10, 1);
  return v10;
}

CFTypeRef sub_1AF1A6CEC(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 168);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 168) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 168) = result;
  }

  return result;
}

uint64_t sub_1AF1A6D6C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 168);
}

uint64_t sub_1AF1A6DB4(CFArrayRef theArray)
{
  if (!theArray)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBC38(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v11 = Count;
  if (Count < 1)
  {
    ValueAtIndex = 0;
    v14 = 1;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
      if (sub_1AF1A7034(ValueAtIndex) < 6)
      {
        break;
      }

      if (v11 == ++v12)
      {
        ValueAtIndex = 0;
        LODWORD(v12) = 0;
        break;
      }
    }

    v14 = (v12 + 1);
  }

  v15 = sub_1AF1A707C(ValueAtIndex);
  v16 = sub_1AF1A70CC(ValueAtIndex);
  v17 = sub_1AF1A7034(ValueAtIndex);
  v18 = v17;
  v19 = ValueAtIndex[80];
  if (v17 == 1)
  {
    v20 = sub_1AF0D5194();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDBCB0();
    }
  }

  while (1)
  {
    if (v11 <= v14)
    {
      v23 = sub_1AF1A6834();
      v24 = sub_1AF1A6D6C(ValueAtIndex);
      sub_1AF1A6CEC(v23, v24);
      sub_1AF1A718C(v23, v15);
      sub_1AF1A699C(v23, v18);
      Mutable = CFDataCreateMutable(0, v16 * v19);
      CFDataSetLength(Mutable, v16 * v19);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      if (v11 >= 1)
      {
        v27 = MutableBytePtr;
        for (i = 0; i != v11; ++i)
        {
          v29 = CFArrayGetValueAtIndex(theArray, i);
          if (sub_1AF1A7034(v29) <= 5)
          {
            Length = CFDataGetLength(v29[12]);
            BytePtr = CFDataGetBytePtr(v29[12]);
            memcpy(v27, BytePtr, Length);
            v27 += Length;
          }
        }
      }

      v32 = sub_1AF1A71E0(v23);
      if (v32 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32;
      }

      *(v23 + 104) = v16 / v33;
      sub_1AF1A72F0(v23, Mutable, v19);
      free(*(v23 + 120));
      *(v23 + 120) = 0;
      *(v23 + 128) = 0;
      CFRelease(Mutable);
      return v23;
    }

    v21 = CFArrayGetValueAtIndex(theArray, v14);
    if (sub_1AF1A7034(v21) <= 5)
    {
      break;
    }

LABEL_18:
    ++v14;
  }

  v22 = sub_1AF1A70CC(v21);
  if (v19 == v21[80])
  {
    v16 += v22;
    goto LABEL_18;
  }

  v34 = sub_1AF0D5194();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDBCEC();
  }

  return 0;
}

uint64_t sub_1AF1A7034(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

BOOL sub_1AF1A707C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 81) != 0;
}

uint64_t sub_1AF1A70CC(uint64_t a1)
{
  v2 = sub_1AF1A7034(a1);
  v3 = *(a1 + 104);
  if (v2 == 4)
  {
    v4 = *(a1 + 80);
    Length = CFDataGetLength(*(a1 + 96));
    BytePtr = CFDataGetBytePtr(*(a1 + 96));
    if (!v3)
    {
      return 0;
    }

    v7 = BytePtr;
    v8 = 0;
    for (i = 0; i != v3; ++i)
    {
      v8 += sub_1AF1A781C(v7, i, v4, Length);
    }

    return v8;
  }

  else
  {
    v10 = *(a1 + 104);

    return sub_1AF1A7944(v2, v10);
  }
}

void sub_1AF1A718C(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 81) = a2;
}

uint64_t sub_1AF1A71E0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 88);
  if (v1 < 4)
  {
    return qword_1AFE21BE8[v1];
  }

  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "CFXMeshElementGetIndexCountPerPrimitive";
    _os_log_impl(&dword_1AF0CE000, v3, OS_LOG_TYPE_DEFAULT, "Warning: %s does not support non-renderable topologies.", &v4, 0xCu);
  }

  return 0;
}

void sub_1AF1A72A0(uint64_t a1, int a2, CFTypeRef cf, char a4)
{
  *(a1 + 104) = a2;
  sub_1AF1A72F0(a1, cf, a4);
  free(*(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
}

void sub_1AF1A72F0(uint64_t a1, CFTypeRef cf, char a3)
{
  *(a1 + 80) = a3;
  v4 = *(a1 + 96);
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 96) = 0;
    }

    if (cf)
    {
      v4 = CFRetain(cf);
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 96) = v4;
  }

  if (*(a1 + 112))
  {
    free(*(a1 + 112));
    *(a1 + 112) = 0;
    v4 = *(a1 + 96);
  }

  if (v4)
  {
    Length = CFDataGetLength(v4);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    if (Length < v7 + sub_1AF1A70CC(a1) * v8)
    {
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDBD28();
      }

      v10 = *(a1 + 96);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 96) = 0;
      }
    }
  }
}

uint64_t sub_1AF1A73C0(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 80);
  }

  return *(a1 + 96);
}

uint64_t sub_1AF1A73D4(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    return **(a1 + 120);
  }

  else
  {
    return -1;
  }
}

void *sub_1AF1A73F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  result = *(a1 + 120);
  if (!v6)
  {
    result = malloc_type_realloc(result, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 120) = result;
  }

  *result = a2;
  result[1] = a3;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_1AF1A745C(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 128);
  }

  return *(a1 + 120);
}

void sub_1AF1A7470(uint64_t a1, uint64_t a2, __int16 a3)
{
  free(*(a1 + 120));
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
}

uint64_t sub_1AF1A74B0(uint64_t result, uint64_t a2)
{
  if (*(result + 120))
  {
    v2 = result;
    if (*(result + 128))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        result = (*(a2 + 16))(a2, *(*(v2 + 120) + v4), *(*(v2 + 120) + v4 + 8));
        ++v5;
        v4 += 16;
      }

      while (v5 < *(v2 + 128));
    }
  }

  return result;
}

uint64_t sub_1AF1A7530(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!v1)
  {
    return *(a1 + 104);
  }

  v2 = *(a1 + 128);
  if (!*(a1 + 128))
  {
    return 0;
  }

  result = 0;
  v4 = (v1 + 8);
  do
  {
    v5 = *v4;
    v4 += 2;
    result += v5;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t sub_1AF1A756C(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 120))
  {
    v4 = *(result + 128);
    if (*(result + 128))
    {
      v5 = 0;
      do
      {
        v6 = (*(v3 + 120) + 16 * v5);
        v7 = *v6;
        v8 = *(v6 + 1);
        if (v7 < v8 + v7)
        {
          do
          {
            result = (*(a2 + 16))(a2, v7);
            v7 = (v7 + 1);
            LODWORD(v8) = v8 - 1;
          }

          while (v8);
          v4 = *(v3 + 128);
        }

        ++v5;
      }

      while (v5 < v4);
    }
  }

  else if (*(result + 104))
  {
    v9 = 0;
    do
    {
      result = (*(a2 + 16))(a2, v9);
      v9 = (v9 + 1);
    }

    while (v9 < *(v3 + 104));
  }

  return result;
}

uint64_t sub_1AF1A767C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *(a1 + 130);
  if ((a2 & 0x8000000000000000) != 0 || v6 <= a2)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBD64(v6, v3, v7);
    }
  }

  v8 = *(a1 + 131);
  if ((v8 & 1) == 0)
  {
    v3 *= sub_1AF1A70CC(a1);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    BytePtr = CFDataGetBytePtr(v9);
    v11 = *(a1 + 96);
    if (v11)
    {
      Length = CFDataGetLength(v11);
      goto LABEL_12;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_12:
  result = sub_1AF1A7034(a1);
  if (BytePtr)
  {
    v14 = result == 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 104);
  v16 = *(a1 + 80);
  v17 = (v15 * v16);
  if (!v14)
  {
    v17 = 0;
  }

  *a3 = &BytePtr[v17];
  *(a3 + 8) = Length - v17;
  if (v8)
  {
    v18 = v6;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(a1 + 120);
  *(a3 + 16) = 0;
  *(a3 + 24) = v19;
  *(a3 + 16) = v15;
  v20 = *(a1 + 128);
  if (result == 4)
  {
    v21 = BytePtr;
  }

  else
  {
    v21 = 0;
  }

  *(a3 + 32) = 0;
  *(a3 + 40) = v21;
  *(a3 + 32) = v20;
  *(a3 + 34) = *(a1 + 88);
  *(a3 + 35) = v16;
  *(a3 + 48) = v3;
  *(a3 + 56) = v18;
  return result;
}

uint64_t sub_1AF1A7798(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 88) == 4)
  {
    Length = CFDataGetLength(*(a1 + 96));
    BytePtr = CFDataGetBytePtr(*(a1 + 96));
    return sub_1AF1A781C(BytePtr, a2, *(a1 + 80), Length);
  }

  else
  {

    return sub_1AF1A71E0(a1);
  }
}

uint64_t sub_1AF1A781C(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a2 + 1) * a3 <= a4)
  {
    switch(a3)
    {
      case 4uLL:
        return *(a1 + 4 * a2);
      case 2uLL:
        return *(a1 + 2 * a2);
      case 1uLL:
        return *(a1 + a2);
      default:
        v9 = sub_1AF0D5194();
        result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
        if (result)
        {
          sub_1AFDDBE00(a3, v9);
          return 0;
        }

        break;
    }
  }

  else
  {
    v7 = sub_1AF0D5194();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10[0] = 67109376;
      v10[1] = a2;
      v11 = 2048;
      v12 = a4 / a3;
      _os_log_error_impl(&dword_1AF0CE000, v7, OS_LOG_TYPE_ERROR, "Error: __readIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF1A7944(int a1, uint64_t a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      a2 *= 3;
      return a2;
    }

    if (a1 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDBEA0();
    }

    return 0;
  }

  if (a1 == 2)
  {
    a2 *= 2;
    return a2;
  }

  if (a1 != 3)
  {
    if (a1 == 5)
    {
LABEL_5:
      a2 += 2;
      return a2;
    }

    goto LABEL_8;
  }

  return a2;
}

const UInt8 *sub_1AF1A79D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (*(a1 + 88) == 4)
  {
    sub_1AF1A7ABC(a1);
    *a2 = *(a1 + 112);
    *(a2 + 8) = *(a1 + 104);
    v12 = 1;
  }

  else
  {
    v13 = sub_1AF1A71E0(a1);
    v12 = 0;
    *a2 = v13;
  }

  *(a2 + 37) = *(a1 + 130);
  *(a2 + 38) = v12 | (2 * *(a1 + 131));
  *(a2 + 32) = sub_1AF1A70CC(a1);
  v14 = *(a1 + 96);
  if (v14)
  {
    v15 = *(a1 + 80);
    Length = CFDataGetLength(*(a1 + 96));
    result = CFDataGetBytePtr(v14);
  }

  else
  {
    v15 = 0;
    Length = 0;
    result = 0;
  }

  *(a2 + 36) = v15;
  *(a2 + 16) = result;
  *(a2 + 24) = Length;
  return result;
}

uint64_t sub_1AF1A7ABC(uint64_t result)
{
  if (!*(result + 112))
  {
    v1 = result;
    if (*(result + 88) != 4)
    {
      v2 = sub_1AF0D5194();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDBEDC(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }

    v10 = *(v1 + 80);
    Length = CFDataGetLength(*(v1 + 96));
    result = CFDataGetBytePtr(*(v1 + 96));
    if (result)
    {
      v12 = result;
      v13 = *(v1 + 104);
      result = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
      *(v1 + 112) = result;
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          result = sub_1AF1A781C(v12, v14, v10, Length);
          v15 += result;
          *(*(v1 + 112) + 4 * v14++) = v15;
        }

        while (v13 != v14);
      }
    }
  }

  return result;
}

uint64_t sub_1AF1A7BA8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 38))
  {
    v4 = 0;
    v5 = *(a1 + 8);
    if (a2 >= 1 && *a1)
    {
      v4 = *(*a1 + 4 * a2 - 4);
    }

    if ((*(a1 + 38) & 2) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v4 = *a1 * a2;
    if ((*(a1 + 38) & 2) == 0)
    {
LABEL_6:
      a4 *= *(a1 + 32);
      v6 = 1;
      goto LABEL_9;
    }
  }

  v6 = *(a1 + 37);
LABEL_9:
  if (*(a1 + 16))
  {
    return sub_1AF1A781C(*(a1 + 16), a4 + v5 + v6 * (v4 + a3), *(a1 + 36), *(a1 + 24));
  }

  else
  {
    return (a4 + v5 + v6 * (v4 + a3));
  }
}

uint64_t sub_1AF1A7C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (*(a1 + 88) == 4)
  {
    v16 = *(a1 + 104);
    sub_1AF1A7ABC(a1);
    v17 = 0;
    if (a2 >= 1)
    {
      v18 = *(a1 + 112);
      if (v18)
      {
        v17 = *(v18 + 4 * a2 - 4);
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = sub_1AF1A71E0(a1) * a2;
  }

  if (*(a1 + 131))
  {
    v19 = *(a1 + 130);
  }

  else
  {
    a4 *= sub_1AF1A70CC(a1);
    v19 = 1;
  }

  v20 = a4 + v16 + v19 * (a3 + v17);
  v21 = *(a1 + 96);
  if (!v21)
  {
    return v20;
  }

  v22 = *(a1 + 80);
  Length = CFDataGetLength(v21);
  BytePtr = CFDataGetBytePtr(v21);
  return sub_1AF1A781C(BytePtr, v20, v22, Length);
}

uint64_t sub_1AF1A7D34(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = sub_1AF1A70CC(a1);
  v15 = *(a1 + 80);
  Length = CFDataGetLength(*(a1 + 96));
  BytePtr = CFDataGetBytePtr(*(a1 + 96));
  v18 = BytePtr;
  if (*(a1 + 88) == 4)
  {
    v19 = *(a1 + 104);
    v18 = &BytePtr[v19 * v15];
    Length -= v19 * v15;
  }

  if (*(a1 + 131) == 1)
  {
    if (v14)
    {
      v20 = 0;
      while (1)
      {
        v21 = sub_1AF1A781C(v18, a2 + v20 * *(a1 + 130), v15, Length);
        if (v21 != sub_1AF1A781C(v18, a3 + v20 * *(a1 + 130), v15, Length))
        {
          break;
        }

        if (v14 == ++v20)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else if (memcmp((v18 + v15 * (v14 * a2)), (v18 + v15 * (v14 * a3)), v14 * v15))
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1AF1A7E6C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 130);
  if (v10 < 2)
  {
    return 1;
  }

  for (i = 1; i < v10; ++i)
  {
    result = sub_1AF1A7D34(a1, 0, i);
    if (!result)
    {
      break;
    }
  }

  return result;
}

uint64_t sub_1AF1A7EF0(uint64_t result)
{
  if (*(result + 72))
  {
    return *(result + 72);
  }

  return result;
}

uint64_t sub_1AF1A7F00(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

uint64_t sub_1AF1A7F48(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 68);
}

uint64_t sub_1AF1A7F90()
{
  result = sub_1AF1A6834();
  *(result + 82) = 1;
  return result;
}

BOOL sub_1AF1A7FB0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 82) != 0;
}

void sub_1AF1A8000(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 160) = a2;
}

uint64_t sub_1AF1A8054(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 160);
}

uint64_t sub_1AF1A809C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 80);
}

void sub_1AF1A80E4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3.n128_u64[0] = MEMORY[0x1E69E9820];
  a3.n128_u64[0] = 0x40000000;
  v3.n128_u64[1] = 0x40000000;
  v4 = sub_1AF1A9C88;
  v5 = &unk_1E7A7B448;
  v6 = a2;
  sub_1AF1A8154(a1, 1, &v3, a3);
}

void sub_1AF1A8154(uint64_t a1, uint64_t a2, __n128 *a3, __n128 a4)
{
  v236 = a3;
  v4 = a2;
  v251 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 34);
  v238 = *(a1 + 16);
  v6 = *(a1 + 35);
  v237 = a1;
  v7 = *(a1 + 40);
  v240 = 0;
  v232 = a2;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (a2 == 1)
      {
        v8 = *v237;
        v9 = *(v237 + 8);
        v10 = *(v237 + 48);
        v11 = *(v237 + 56);
        if (v6 == 1)
        {
          if (v238)
          {
            v197 = 0;
            v198 = 1;
            a4.n128_u64[0] = 67109376;
            v239 = a4;
            do
            {
              v199 = v10 + v11 * (v198 - 1);
              v200 = v10 + v11 * v198;
              if (v200 <= v199)
              {
                v201 = v10 + v11 * (v198 - 1);
              }

              else
              {
                v201 = v10 + v11 * v198;
              }

              if (v9 >= (v201 + 1))
              {
                *v241 = v8->n128_u8[v199];
                v203 = v8->n128_u8[v200];
              }

              else
              {
                v202 = sub_1AF0D5194();
                if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
                {
                  *buf = v239.n128_u32[0];
                  *&buf[4] = v201;
                  *&buf[8] = 2048;
                  *&buf[10] = v9;
                  _os_log_error_impl(&dword_1AF0CE000, v202, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v203 = 0;
                *v241 = 0;
              }

              *&v241[4] = v203;
              (v236[1].n128_u64[0])(v236, v197, v241, 2, &v240);
              if (v240)
              {
                break;
              }

              ++v197;
              v198 += 2;
            }

            while (v238 != v197);
          }
        }

        else if (v6 == 2)
        {
          if (v238)
          {
            v172 = 0;
            v173 = 1;
            a4.n128_u64[0] = 67109376;
            v239 = a4;
            do
            {
              v174 = v10 + v11 * (v173 - 1);
              v175 = v10 + v11 * v173;
              if (v175 <= v174)
              {
                v176 = v10 + v11 * (v173 - 1);
              }

              else
              {
                v176 = v10 + v11 * v173;
              }

              if (v9 >= (2 * v176 + 2))
              {
                *v241 = v8->n128_u16[v174];
                v178 = v8->n128_u16[v175];
              }

              else
              {
                v177 = sub_1AF0D5194();
                if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
                {
                  *buf = v239.n128_u32[0];
                  *&buf[4] = v176;
                  *&buf[8] = 2048;
                  *&buf[10] = v9 >> 1;
                  _os_log_error_impl(&dword_1AF0CE000, v177, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v178 = 0;
                *v241 = 0;
              }

              *&v241[4] = v178;
              (v236[1].n128_u64[0])(v236, v172, v241, 2, &v240);
              if (v240)
              {
                break;
              }

              ++v172;
              v173 += 2;
            }

            while (v238 != v172);
          }
        }

        else if (v6 == 4 && v238)
        {
          v12 = 0;
          v13 = 1;
          a4.n128_u64[0] = 67109376;
          v239 = a4;
          do
          {
            v14 = v10 + v11 * (v13 - 1);
            v15 = v10 + v11 * v13;
            if (v15 <= v14)
            {
              v16 = v10 + v11 * (v13 - 1);
            }

            else
            {
              v16 = v10 + v11 * v13;
            }

            if (v9 >= (4 * v16 + 4))
            {
              *v241 = v8->n128_u32[v14];
              v18 = v8->n128_i32[v15];
            }

            else
            {
              v17 = sub_1AF0D5194();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = v239.n128_u32[0];
                *&buf[4] = v16;
                *&buf[8] = 2048;
                *&buf[10] = v9 >> 2;
                _os_log_error_impl(&dword_1AF0CE000, v17, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
              }

              v18 = 0;
              *v241 = 0;
            }

            *&v241[4] = v18;
            (v236[1].n128_u64[0])(v236, v12, v241, 2, &v240);
            if (v240)
            {
              break;
            }

            ++v12;
            v13 += 2;
          }

          while (v238 != v12);
        }
      }

      else
      {
        *&v234 = &v222;
        MEMORY[0x1EEE9AC00](a1, a2);
        v239.n128_u64[0] = v222.n128_u64 - v128;
        if (v6 == 1)
        {
          if (v238)
          {
            v204 = 0;
            v235 = v236 + 1;
            v205 = 4 * v126;
            v233.n128_u64[0] = v237 + 35;
            *&v127 = 67109376;
            v231 = v127;
            do
            {
              v237 = v204;
              if (v4)
              {
                v206 = 0;
                v207 = 2 * v237;
                v208 = (2 * v237) | 1;
                v209 = v233.n128_u64[0];
                v210 = v239.n128_u64[0];
                do
                {
                  v211 = *(v209 - 27);
                  v212 = *v209;
                  v213 = *(v209 + 13);
                  v214 = *(v209 + 21);
                  v215 = v213 + v214 * v207;
                  v216 = v213 + v214 * v208;
                  if (v216 <= v215)
                  {
                    v217 = v215;
                  }

                  else
                  {
                    v217 = v216;
                  }

                  if (v211 >= v212 + v212 * v217)
                  {
                    v220 = *(v209 - 35);
                    *v210 = *(v220 + v215);
                    v219 = *(v220 + v216);
                  }

                  else
                  {
                    v218 = sub_1AF0D5194();
                    if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v231;
                      *&buf[4] = v217;
                      *&buf[8] = 2048;
                      *&buf[10] = v211 / v212;
                      _os_log_error_impl(&dword_1AF0CE000, v218, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v219 = 0;
                  }

                  v209 += 64;
                  v210[v205 / 4] = v219;
                  ++v210;
                  v206 += 4;
                }

                while (v205 != v206);
              }

              v221 = v237;
              (v236[1].n128_u64[0])(v236, v237, v239.n128_u64[0], 2, &v240);
              if (v240)
              {
                break;
              }

              v204 = v221 + 1;
              v4 = v232;
            }

            while (v204 != v238);
          }
        }

        else if (v6 == 2)
        {
          if (v238)
          {
            v179 = 0;
            v235 = v236 + 1;
            v180 = 4 * v126;
            v233.n128_u64[0] = v237 + 35;
            *&v127 = 67109376;
            v231 = v127;
            do
            {
              v237 = v179;
              if (v4)
              {
                v181 = 0;
                v182 = 2 * v237;
                v183 = (2 * v237) | 1;
                v184 = v233.n128_u64[0];
                v185 = v239.n128_u64[0];
                do
                {
                  v186 = *(v184 - 27);
                  v187 = *v184;
                  v188 = *(v184 + 13);
                  v189 = *(v184 + 21);
                  v190 = v188 + v189 * v182;
                  v191 = v188 + v189 * v183;
                  if (v191 <= v190)
                  {
                    v192 = v190;
                  }

                  else
                  {
                    v192 = v191;
                  }

                  if (v186 >= v187 + v187 * v192)
                  {
                    v195 = *(v184 - 35);
                    *v185 = *(v195 + 2 * v190);
                    v194 = *(v195 + 2 * v191);
                  }

                  else
                  {
                    v193 = sub_1AF0D5194();
                    if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v231;
                      *&buf[4] = v192;
                      *&buf[8] = 2048;
                      *&buf[10] = v186 / v187;
                      _os_log_error_impl(&dword_1AF0CE000, v193, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v194 = 0;
                  }

                  v184 += 64;
                  v185[v180 / 4] = v194;
                  ++v185;
                  v181 += 4;
                }

                while (v180 != v181);
              }

              v196 = v237;
              (v236[1].n128_u64[0])(v236, v237, v239.n128_u64[0], 2, &v240);
              if (v240)
              {
                break;
              }

              v179 = v196 + 1;
              v4 = v232;
            }

            while (v179 != v238);
          }
        }

        else if (v6 == 4 && v238)
        {
          v129 = 0;
          v235 = v236 + 1;
          v130 = 4 * v126;
          v233.n128_u64[0] = v237 + 35;
          *&v127 = 67109376;
          v231 = v127;
          do
          {
            v237 = v129;
            if (v4)
            {
              v131 = 0;
              v132 = 2 * v237;
              v133 = (2 * v237) | 1;
              v134 = v233.n128_u64[0];
              v135 = v239.n128_u64[0];
              do
              {
                v136 = *(v134 - 27);
                v137 = *v134;
                v138 = *(v134 + 13);
                v139 = *(v134 + 21);
                v140 = v138 + v139 * v132;
                v141 = v138 + v139 * v133;
                if (v141 <= v140)
                {
                  v142 = v140;
                }

                else
                {
                  v142 = v141;
                }

                if (v136 >= v137 + v137 * v142)
                {
                  v145 = *(v134 - 35);
                  *v135 = *(v145 + 4 * v140);
                  v144 = *(v145 + 4 * v141);
                }

                else
                {
                  v143 = sub_1AF0D5194();
                  if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v231;
                    *&buf[4] = v142;
                    *&buf[8] = 2048;
                    *&buf[10] = v136 / v137;
                    _os_log_error_impl(&dword_1AF0CE000, v143, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v144 = 0;
                }

                v134 += 64;
                v135[v130 / 4] = v144;
                ++v135;
                v131 += 4;
              }

              while (v130 != v131);
            }

            v146 = v237;
            (v236[1].n128_u64[0])(v236, v237, v239.n128_u64[0], 2, &v240);
            if (v240)
            {
              break;
            }

            v129 = v146 + 1;
            v4 = v232;
          }

          while (v129 != v238);
        }
      }

      return;
    }

    goto LABEL_102;
  }

  switch(v5)
  {
    case 3:
      if (a2 == 1)
      {
        v104 = *v237;
        v105 = *(v237 + 8);
        v106 = *(v237 + 48);
        v107 = *(v237 + 56);
        *v241 = 0;
        if (v6 == 1)
        {
          if (v238)
          {
            v160 = 0;
            a4.n128_u64[0] = 67109376;
            v239 = a4;
            do
            {
              if (v105 >= (v106 + 1))
              {
                v162 = v104->n128_u8[v106];
              }

              else
              {
                v161 = sub_1AF0D5194();
                if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                {
                  *buf = v239.n128_u32[0];
                  *&buf[4] = v106;
                  *&buf[8] = 2048;
                  *&buf[10] = v105;
                  _os_log_error_impl(&dword_1AF0CE000, v161, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v162 = 0;
              }

              *v241 = v162;
              (v236[1].n128_u64[0])(v236, v160, v241, 1, &v240);
              if (v240)
              {
                break;
              }

              ++v160;
              LODWORD(v106) = v106 + v107;
            }

            while (v238 != v160);
          }
        }

        else if (v6 == 2)
        {
          if (v238)
          {
            v147 = 0;
            v148 = 2 * v106 + 2;
            a4.n128_u64[0] = 67109376;
            v239 = a4;
            do
            {
              if (v105 >= (v148 & 0xFFFFFFFE))
              {
                v150 = v104->n128_u16[v106];
              }

              else
              {
                v149 = sub_1AF0D5194();
                if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                {
                  *buf = v239.n128_u32[0];
                  *&buf[4] = v106;
                  *&buf[8] = 2048;
                  *&buf[10] = v105 >> 1;
                  _os_log_error_impl(&dword_1AF0CE000, v149, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v150 = 0;
              }

              *v241 = v150;
              (v236[1].n128_u64[0])(v236, v147, v241, 1, &v240);
              if (v240)
              {
                break;
              }

              ++v147;
              v148 += 2 * v107;
              LODWORD(v106) = v106 + v107;
            }

            while (v238 != v147);
          }
        }

        else if (v6 == 4 && v238)
        {
          v108 = 0;
          v109 = 4 * v106 + 4;
          a4.n128_u64[0] = 67109376;
          v239 = a4;
          do
          {
            if (v105 >= (v109 & 0xFFFFFFFC))
            {
              v111 = v104->n128_i32[v106];
            }

            else
            {
              v110 = sub_1AF0D5194();
              if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
              {
                *buf = v239.n128_u32[0];
                *&buf[4] = v106;
                *&buf[8] = 2048;
                *&buf[10] = v105 >> 2;
                _os_log_error_impl(&dword_1AF0CE000, v110, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
              }

              v111 = 0;
            }

            *v241 = v111;
            (v236[1].n128_u64[0])(v236, v108, v241, 1, &v240);
            if (v240)
            {
              break;
            }

            ++v108;
            v109 += 4 * v107;
            LODWORD(v106) = v106 + v107;
          }

          while (v238 != v108);
        }
      }

      else
      {
        v235 = &v222;
        v113 = a2;
        MEMORY[0x1EEE9AC00](a1, a2);
        v116 = &v222 - v115;
        if (v6 == 1)
        {
          if (v238)
          {
            v163 = 0;
            v239.n128_u64[0] = v236[1].n128_u64;
            v237 += 35;
            *&v114 = 67109376;
            v234 = v114;
            do
            {
              v164 = v113;
              v165 = v237;
              v166 = v116;
              if (v232)
              {
                do
                {
                  v167 = *(v165 - 27);
                  v168 = *v165;
                  v169 = *(v165 + 13) + *(v165 + 21) * v163;
                  if (v167 >= v168 + v168 * v169)
                  {
                    v171 = *(*(v165 - 35) + v169);
                  }

                  else
                  {
                    v170 = sub_1AF0D5194();
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v234;
                      *&buf[4] = v169;
                      *&buf[8] = 2048;
                      *&buf[10] = v167 / v168;
                      _os_log_error_impl(&dword_1AF0CE000, v170, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v171 = 0;
                  }

                  v165 += 64;
                  *v166 = v171;
                  v166 += 4;
                  --v164;
                }

                while (v164);
              }

              (v236[1].n128_u64[0])(v236, v163, v116, 1, &v240);
              if (v240)
              {
                break;
              }

              ++v163;
            }

            while (v163 != v238);
          }
        }

        else if (v6 == 2)
        {
          if (v238)
          {
            v151 = 0;
            v239.n128_u64[0] = v236[1].n128_u64;
            v237 += 35;
            *&v114 = 67109376;
            v234 = v114;
            do
            {
              v152 = v113;
              v153 = v237;
              v154 = v116;
              if (v232)
              {
                do
                {
                  v155 = *(v153 - 27);
                  v156 = *v153;
                  v157 = *(v153 + 13) + *(v153 + 21) * v151;
                  if (v155 >= v156 + v156 * v157)
                  {
                    v159 = *(*(v153 - 35) + 2 * v157);
                  }

                  else
                  {
                    v158 = sub_1AF0D5194();
                    if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v234;
                      *&buf[4] = v157;
                      *&buf[8] = 2048;
                      *&buf[10] = v155 / v156;
                      _os_log_error_impl(&dword_1AF0CE000, v158, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v159 = 0;
                  }

                  v153 += 64;
                  *v154 = v159;
                  v154 += 4;
                  --v152;
                }

                while (v152);
              }

              (v236[1].n128_u64[0])(v236, v151, v116, 1, &v240);
              if (v240)
              {
                break;
              }

              ++v151;
            }

            while (v151 != v238);
          }
        }

        else if (v6 == 4 && v238)
        {
          v117 = 0;
          v239.n128_u64[0] = v236[1].n128_u64;
          v237 += 35;
          *&v114 = 67109376;
          v234 = v114;
          do
          {
            v118 = v113;
            v119 = v237;
            v120 = v116;
            if (v232)
            {
              do
              {
                v121 = *(v119 - 27);
                v122 = *v119;
                v123 = *(v119 + 13) + *(v119 + 21) * v117;
                if (v121 >= v122 + v122 * v123)
                {
                  v125 = *(*(v119 - 35) + 4 * v123);
                }

                else
                {
                  v124 = sub_1AF0D5194();
                  if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v234;
                    *&buf[4] = v123;
                    *&buf[8] = 2048;
                    *&buf[10] = v121 / v122;
                    _os_log_error_impl(&dword_1AF0CE000, v124, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v125 = 0;
                }

                v119 += 64;
                *v120 = v125;
                v120 += 4;
                --v118;
              }

              while (v118);
            }

            (v236[1].n128_u64[0])(v236, v117, v116, 1, &v240);
            if (v240)
            {
              break;
            }

            ++v117;
          }

          while (v117 != v238);
        }
      }

      break;
    case 5:
LABEL_102:
      if (a2 == 1)
      {
        v88 = *(v237 + 16);
        *buf = *v237;
        *&buf[16] = v88;
        v89 = *(v237 + 48);
        v246 = *(v237 + 32);
        v247 = v89;
        if (v238)
        {
          for (i = 0; i != v238; ++i)
          {
            *v241 = *buf;
            v242 = *&buf[16];
            v243 = v246;
            v244 = v247;
            sub_1AF1A9E00(v241, i, &v248, &v249, &v250);
            (v236[1].n128_u64[0])(v236, i, &v248, 3, &v240);
            if (v240 == 1)
            {
              break;
            }
          }
        }
      }

      else
      {
        v235 = &v222;
        MEMORY[0x1EEE9AC00](a1, a2);
        v92 = &v222 - v91;
        if (v238)
        {
          v93 = 0;
          v94 = v232;
          v239.n128_u64[0] = v236[1].n128_u64;
          v95 = &v92[8 * v232];
          v96 = &v92[4 * v232];
          do
          {
            v97 = v94;
            v98 = v92;
            v99 = v237;
            v100 = v96;
            v101 = v95;
            if (v232)
            {
              do
              {
                v102 = v99[1];
                *buf = *v99;
                *&buf[16] = v102;
                v103 = v99[3];
                v246 = v99[2];
                v247 = v103;
                sub_1AF1A9E00(buf, v93, v98, v100, v101++);
                v100 += 4;
                v99 += 4;
                v98 += 4;
                --v97;
              }

              while (v97);
            }

            (v236[1].n128_u64[0])(v236, v93, v92, 3, &v240);
            if (v240)
            {
              break;
            }

            ++v93;
          }

          while (v93 != v238);
        }
      }

      return;
    case 4:
      if (!v238)
      {
        return;
      }

      v19 = 0;
      v239.n128_u32[0] = 0;
      v224 = v236 + 1;
      *&v234 = a2;
      a4.n128_u64[0] = 67109376;
      v233 = a4;
      a4.n128_u64[0] = 67109120;
      v222 = a4;
      v226 = v6;
      v225 = v7;
      while (1)
      {
        switch(v6)
        {
          case 4:
            v20 = *(v7 + 4 * v19);
            break;
          case 2:
            v20 = *(v7 + 2 * v19);
            break;
          case 1:
            v20 = *(v7 + v19);
            break;
          default:
            LODWORD(v20) = 0;
LABEL_44:
            v33 = sub_1AF0D5194();
            a1 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
            if (a1)
            {
              sub_1AFDDBF54(v241, &v241[1], v33);
            }

            goto LABEL_100;
        }

        if (v20 <= 2)
        {
          goto LABEL_44;
        }

        v227 = v19;
        v228 = v20;
        if (v4 == 1)
        {
          v21 = *(v237 + 8);
          v235 = *v237;
          v22 = *(v237 + 35);
          v23 = *(v237 + 48);
          v24 = *(v237 + 56);
          v25 = v20;
          MEMORY[0x1EEE9AC00](a1, a2);
          *&v231 = v27;
          if (v6 == 1)
          {
            v67 = v22;
            v68 = v239.n128_u32[0];
            v20 = &v222 - v26;
            v69 = (&v222 - v26);
            v230 = v21 / v22;
            do
            {
              v70 = v23 + v24 * v68;
              if (v21 >= v67 + v67 * v70)
              {
                v72 = v235->n128_u8[v70];
              }

              else
              {
                v71 = sub_1AF0D5194();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  *buf = v233.n128_u32[0];
                  *&buf[4] = v23 + v24 * v68;
                  *&buf[8] = 2048;
                  *&buf[10] = v230;
                  _os_log_error_impl(&dword_1AF0CE000, v71, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v72 = 0;
              }

              v69->n128_u32[0] = v72;
              v69 = (v69 + 4);
              ++v68;
              --v25;
            }

            while (v25);
          }

          else if (v6 == 2)
          {
            v49 = v239.n128_u32[0];
            v20 = &v222 - v26;
            v50 = (&v222 - v26);
            v230 = v21 / v22;
            do
            {
              v51 = v23 + v24 * v49;
              if (v21 >= v22 + v22 * v51)
              {
                v53 = v235->n128_u16[v51];
              }

              else
              {
                v52 = sub_1AF0D5194();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *buf = v233.n128_u32[0];
                  *&buf[4] = v23 + v24 * v49;
                  *&buf[8] = 2048;
                  *&buf[10] = v230;
                  _os_log_error_impl(&dword_1AF0CE000, v52, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v53 = 0;
              }

              v50->n128_u32[0] = v53;
              v50 = (v50 + 4);
              ++v49;
              --v25;
            }

            while (v25);
          }

          else
          {
            v28 = v239.n128_u32[0];
            v20 = &v222 - v26;
            v29 = (&v222 - v26);
            v230 = v21 / v22;
            do
            {
              v30 = v23 + v24 * v28;
              if (v21 >= v22 + v22 * v30)
              {
                v32 = v235->n128_u32[v30];
              }

              else
              {
                v31 = sub_1AF0D5194();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = v233.n128_u32[0];
                  *&buf[4] = v23 + v24 * v28;
                  *&buf[8] = 2048;
                  *&buf[10] = v230;
                  _os_log_error_impl(&dword_1AF0CE000, v31, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v32 = 0;
              }

              v29->n128_u32[0] = v32;
              v29 = (v29 + 4);
              ++v28;
              --v25;
            }

            while (v25);
          }

          v19 = v227;
          v86 = v20;
          LODWORD(v20) = v228;
          a1 = (v236[1].n128_u64[0])(v236, v227, v86, v228, &v240);
          v87 = v240;
        }

        else
        {
          MEMORY[0x1EEE9AC00](a1, a2);
          v235 = (&v222 - v34);
          v223 = v35;
          if (v6 == 1)
          {
            if (v4)
            {
              v73 = 0;
              v229 = v228;
              do
              {
                *&v231 = v73;
                v74 = v237 + (v73 << 6);
                v75 = *v74;
                v76 = *(v74 + 8);
                v77 = *(v74 + 35);
                v79 = *(v74 + 48);
                v78 = *(v74 + 56);
                v80 = v229;
                v81 = v239.n128_u32[0];
                v82 = v235;
                v230 = v76 / v77;
                do
                {
                  v83 = v79 + v78 * v81;
                  if (v76 >= v77 + v77 * v83)
                  {
                    v85 = *(v75 + v83);
                  }

                  else
                  {
                    v84 = sub_1AF0D5194();
                    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v233.n128_u32[0];
                      *&buf[4] = v79 + v78 * v81;
                      *&buf[8] = 2048;
                      *&buf[10] = v230;
                      _os_log_error_impl(&dword_1AF0CE000, v84, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v85 = 0;
                  }

                  v82->n128_u32[0] = v85;
                  v82 = (v82 + 4);
                  ++v81;
                  --v80;
                }

                while (v80);
                v73 = v231 + 1;
              }

              while (v231 + 1 != v234);
            }
          }

          else if (v6 == 2)
          {
            if (v4)
            {
              v54 = 0;
              v229 = v228;
              do
              {
                *&v231 = v54;
                v55 = v237 + (v54 << 6);
                v56 = *v55;
                v57 = *(v55 + 8);
                v58 = *(v55 + 35);
                v60 = *(v55 + 48);
                v59 = *(v55 + 56);
                v61 = v229;
                v62 = v239.n128_u32[0];
                v63 = v235;
                v230 = v57 / v58;
                do
                {
                  v64 = v60 + v59 * v62;
                  if (v57 >= v58 + v58 * v64)
                  {
                    v66 = *(v56 + 2 * v64);
                  }

                  else
                  {
                    v65 = sub_1AF0D5194();
                    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v233.n128_u32[0];
                      *&buf[4] = v60 + v59 * v62;
                      *&buf[8] = 2048;
                      *&buf[10] = v230;
                      _os_log_error_impl(&dword_1AF0CE000, v65, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                    }

                    v66 = 0;
                  }

                  v63->n128_u32[0] = v66;
                  v63 = (v63 + 4);
                  ++v62;
                  --v61;
                }

                while (v61);
                v54 = v231 + 1;
              }

              while (v231 + 1 != v234);
            }
          }

          else if (v4)
          {
            v36 = 0;
            v229 = v228;
            do
            {
              *&v231 = v36;
              v37 = v237 + (v36 << 6);
              v38 = *v37;
              v39 = *(v37 + 8);
              v40 = *(v37 + 35);
              v42 = *(v37 + 48);
              v41 = *(v37 + 56);
              v43 = v229;
              v44 = v239.n128_u32[0];
              v45 = v235;
              v230 = v39 / v40;
              do
              {
                v46 = v42 + v41 * v44;
                if (v39 >= v40 + v40 * v46)
                {
                  v48 = *(v38 + 4 * v46);
                }

                else
                {
                  v47 = sub_1AF0D5194();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v233.n128_u32[0];
                    *&buf[4] = v42 + v41 * v44;
                    *&buf[8] = 2048;
                    *&buf[10] = v230;
                    _os_log_error_impl(&dword_1AF0CE000, v47, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                  }

                  v48 = 0;
                }

                v45->n128_u32[0] = v48;
                v45 = (v45 + 4);
                ++v44;
                --v43;
              }

              while (v43);
              v36 = v231 + 1;
            }

            while (v231 + 1 != v234);
          }

          v19 = v227;
          LODWORD(v20) = v228;
          a1 = (v236[1].n128_u64[0])(v236, v227, v235, v228, &v240);
          v87 = v240;
        }

        v4 = v232;
        v6 = v226;
        v7 = v225;
        if (v87)
        {
          return;
        }

LABEL_100:
        v239.n128_u32[0] += v20;
        if (++v19 == v238)
        {
          return;
        }
      }

    default:
      v112 = sub_1AF0D5194();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDBF94();
      }

      break;
  }
}

void sub_1AF1A9C98(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3.n128_u64[0] = MEMORY[0x1E69E9820];
  a3.n128_u64[0] = 0x40000000;
  v3.n128_u64[1] = 0x40000000;
  v4 = sub_1AF1A9D08;
  v5 = &unk_1E7A7B470;
  v6 = a2;
  sub_1AF1A8154(a1, 1, &v3, a3);
}

void sub_1AF1A9D08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a4 == 3)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32));
  }

  else if (a4 < 4)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDC008();
    }
  }

  else
  {
    v7 = 0;
    v8 = a4 - 2;
    do
    {
      if (v8 == v7)
      {
        break;
      }

      v9 = v7 + 1;
      (*(*(a1 + 32) + 16))(*(a1 + 32));
      v7 = v9;
    }

    while (!a5);
  }
}

void sub_1AF1A9E00(uint64_t *a1, int a2, _DWORD *a3, _DWORD *a4, int *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 34);
  v10 = 3;
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v9 != 5;
  if (v9 == 1)
  {
    v13 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v9 != 1)
  {
    v12 = 1;
  }

  v14 = v9 == 0;
  if (*(a1 + 34))
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  if (*(a1 + 34))
  {
    v10 = v13;
    v16 = v11;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  v18 = *a1;
  if (!*a1)
  {
    *a3 = v10 * a2;
    *a4 = v17 + v15 * a2;
    v29 = v16 + v15 * a2;
LABEL_33:
    *a5 = v29;
    return;
  }

  v19 = *(a1 + 35);
  v20 = a1[6];
  v21 = a1[7];
  v22 = v20 + v10 * a2 * v21;
  v23 = v15 * a2;
  v24 = v20 + v21 * (v17 + v15 * a2);
  v25 = v20 + v21 * (v16 + v23);
  if (v25 <= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  if (v24 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  if (a1[1] < (v19 + v19 * v27))
  {
    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = a1[1];
      v32 = *(a1 + 35);
      v33 = 136315650;
      v34 = "CFXIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
      v35 = 1024;
      v36 = v27;
      v37 = 2048;
      v38 = v31 / v32;
      _os_log_error_impl(&dword_1AF0CE000, v28, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v33, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    return;
  }

  switch(v19)
  {
    case 4:
      *a3 = *(v18 + 4 * v22);
      *a4 = *(v18 + 4 * v24);
      v29 = *(v18 + 4 * v25);
      goto LABEL_33;
    case 2:
      *a3 = *(v18 + 2 * v22);
      *a4 = *(v18 + 2 * v24);
      v29 = *(v18 + 2 * v25);
      goto LABEL_33;
    case 1:
      *a3 = *(v18 + v22);
      *a4 = *(v18 + v24);
      v29 = *(v18 + v25);
      goto LABEL_33;
  }

  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v30 = sub_1AF0D5194();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDC044();
  }
}

void sub_1AF1AA060(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v161 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 24))
  {
    v24 = *(a1 + 16);
    *buf = *a1;
    *&buf[16] = v24;
    v26 = *(a1 + 48);
    v155 = *(a1 + 32);
    v25.n128_u64[1] = *(&v155 + 1);
    v156 = v26;
    v157.n128_u64[0] = MEMORY[0x1E69E9820];
    v25.n128_u64[0] = 0x40000000;
    v157.n128_u64[1] = 0x40000000;
    v158 = sub_1AF1A9C88;
    v159 = &unk_1E7A7B448;
    v160 = a2;
    sub_1AF1A8154(buf, 1, &v157, v25);
    return;
  }

  v153 = 0;
  v5 = *(a1 + 34);
  v151 = a2;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      v157.n128_u64[0] = 0;
      v6 = *(a1 + 35);
      switch(v6)
      {
        case 1:
          v126 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v127 = 0;
            a3.n128_u64[0] = 67109376;
            v152 = a3;
            while (1)
            {
              v128 = (*(v4 + 24) + 16 * v127);
              v129 = *v128;
              v130 = v128[1] + *v128;
              if (v129 < v130)
              {
                break;
              }

LABEL_177:
              if (++v127 >= v126)
              {
                return;
              }
            }

            v131 = 2 * v129;
            v132 = v130 - v129;
            while (1)
            {
              v133 = *(v4 + 48);
              v134 = *(v4 + 56);
              v135 = v133 + v134 * v131;
              v136 = v133 + v134 * (v131 + 1);
              v137 = v136 <= v135 ? v135 : v136;
              v138 = *(v4 + 8);
              v139 = *(v4 + 35);
              if (v138 >= v139 + v139 * v137)
              {
                v142 = *v4;
                v157.n128_u32[0] = *(*v4 + v135);
                v141 = *(v142 + v136);
              }

              else
              {
                v140 = sub_1AF0D5194();
                if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                {
                  *buf = v152.n128_u32[0];
                  *&buf[4] = v137;
                  *&buf[8] = 2048;
                  *&buf[10] = v138 / v139;
                  _os_log_error_impl(&dword_1AF0CE000, v140, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v141 = 0;
                v157.n128_u32[0] = 0;
              }

              v157.n128_u32[1] = v141;
              (*(v151 + 16))(v151, v129, &v157, 2, &v153);
              if (v153)
              {
                break;
              }

              v129 = (v129 + 1);
              v131 += 2;
              if (!--v132)
              {
                v126 = *(v4 + 32);
                goto LABEL_177;
              }
            }
          }

          break;
        case 2:
          v109 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v110 = 0;
            a3.n128_u64[0] = 67109376;
            v152 = a3;
            while (1)
            {
              v111 = (*(v4 + 24) + 16 * v110);
              v112 = *v111;
              v113 = v111[1] + *v111;
              if (v112 < v113)
              {
                break;
              }

LABEL_160:
              if (++v110 >= v109)
              {
                return;
              }
            }

            v114 = 2 * v112;
            v115 = v113 - v112;
            while (1)
            {
              v116 = *(v4 + 48);
              v117 = *(v4 + 56);
              v118 = v116 + v117 * v114;
              v119 = v116 + v117 * (v114 + 1);
              v120 = v119 <= v118 ? v118 : v119;
              v121 = *(v4 + 8);
              v122 = *(v4 + 35);
              if (v121 >= v122 + v122 * v120)
              {
                v125 = *v4;
                v157.n128_u32[0] = *(*v4 + 2 * v118);
                v124 = *(v125 + 2 * v119);
              }

              else
              {
                v123 = sub_1AF0D5194();
                if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
                {
                  *buf = v152.n128_u32[0];
                  *&buf[4] = v120;
                  *&buf[8] = 2048;
                  *&buf[10] = v121 / v122;
                  _os_log_error_impl(&dword_1AF0CE000, v123, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v124 = 0;
                v157.n128_u32[0] = 0;
              }

              v157.n128_u32[1] = v124;
              (*(v151 + 16))(v151, v112, &v157, 2, &v153);
              if (v153)
              {
                break;
              }

              v112 = (v112 + 1);
              v114 += 2;
              if (!--v115)
              {
                v109 = *(v4 + 32);
                goto LABEL_160;
              }
            }
          }

          break;
        case 4:
          v7 = *(a1 + 32);
          if (*(a1 + 32))
          {
            v8 = 0;
            a3.n128_u64[0] = 67109376;
            v152 = a3;
            while (1)
            {
              v9 = (*(v4 + 24) + 16 * v8);
              v10 = *v9;
              v11 = v9[1] + *v9;
              if (v10 < v11)
              {
                break;
              }

LABEL_22:
              if (++v8 >= v7)
              {
                return;
              }
            }

            v12 = 2 * v10;
            v13 = v11 - v10;
            while (1)
            {
              v14 = *(v4 + 48);
              v15 = *(v4 + 56);
              v16 = v14 + v15 * v12;
              v17 = v14 + v15 * (v12 + 1);
              v18 = v17 <= v16 ? v16 : v17;
              v19 = *(v4 + 8);
              v20 = *(v4 + 35);
              if (v19 >= v20 + v20 * v18)
              {
                v23 = *v4;
                v157.n128_u32[0] = *(*v4 + 4 * v16);
                v22 = *(v23 + 4 * v17);
              }

              else
              {
                v21 = sub_1AF0D5194();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = v152.n128_u32[0];
                  *&buf[4] = v18;
                  *&buf[8] = 2048;
                  *&buf[10] = v19 / v20;
                  _os_log_error_impl(&dword_1AF0CE000, v21, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v22 = 0;
                v157.n128_u32[0] = 0;
              }

              v157.n128_u32[1] = v22;
              (*(v151 + 16))(v151, v10, &v157, 2, &v153);
              if (v153)
              {
                break;
              }

              v10 = (v10 + 1);
              v12 += 2;
              if (!--v13)
              {
                v7 = *(v4 + 32);
                goto LABEL_22;
              }
            }
          }

          break;
      }

      return;
    }

    goto LABEL_88;
  }

  if (v5 != 3)
  {
    if (v5 == 5)
    {
LABEL_88:
      v157.n128_u32[2] = 0;
      v157.n128_u64[0] = 0;
      v64 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v65 = 0;
        while (1)
        {
          v66 = (*(v4 + 24) + 16 * v65);
          v67 = v66[1];
          if (*v66 < v67 + *v66)
          {
            break;
          }

LABEL_95:
          if (++v65 >= v64)
          {
            return;
          }
        }

        v68 = *v66;
        while (1)
        {
          v69 = *(v4 + 16);
          *buf = *v4;
          *&buf[16] = v69;
          v70 = *(v4 + 48);
          v155 = *(v4 + 32);
          v156 = v70;
          sub_1AF1A9E00(buf, v68, &v157, &v157.n128_u32[1], &v157.n128_i32[2]);
          (*(a2 + 16))(a2, v68, &v157, 3, &v153);
          if (v153)
          {
            break;
          }

          ++v68;
          LODWORD(v67) = v67 - 1;
          if (!v67)
          {
            v64 = *(v4 + 32);
            goto LABEL_95;
          }
        }
      }

      return;
    }

    if (v5 != 4)
    {
      v84 = sub_1AF0D5194();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDC0BC();
      }

      return;
    }

    v27 = *(a1 + 32);
    if (!*(a1 + 32))
    {
      return;
    }

    v144 = 0;
    v146 = a2 + 16;
    a3.n128_u64[0] = 67109376;
    v145 = a3;
    a3.n128_u64[0] = 67109120;
    v143 = a3;
    while (1)
    {
      v28 = (*(v4 + 24) + 16 * v144);
      v29 = *v28;
      if (*v28)
      {
        v30 = 0;
        v31 = 0;
        v32 = *(v4 + 35);
        do
        {
          switch(v32)
          {
            case 4:
              v33 = *(*(v4 + 40) + 4 * v30);
              break;
            case 2:
              v33 = *(*(v4 + 40) + 2 * v30);
              break;
            case 1:
              v33 = *(*(v4 + 40) + v30);
              break;
            default:
              v33 = 0;
              break;
          }

          v31 += v33;
          ++v30;
        }

        while (v29 != v30);
      }

      else
      {
        v31 = 0;
      }

      v34 = v28[1] + v29;
      if (v29 < v34)
      {
        break;
      }

LABEL_86:
      if (++v144 >= v27)
      {
        return;
      }
    }

    v35 = v29;
    v36 = v34;
    v147 = v34;
    while (1)
    {
      v37 = *(v4 + 35);
      switch(v37)
      {
        case 4:
          v38 = *(*(v4 + 40) + 4 * v35);
          break;
        case 2:
          v38 = *(*(v4 + 40) + 2 * v35);
          break;
        case 1:
          v38 = *(*(v4 + 40) + v35);
          break;
        default:
          LODWORD(v38) = 0;
          goto LABEL_63;
      }

      if (v38 > 2)
      {
        v149 = &v143;
        v39 = v38;
        MEMORY[0x1EEE9AC00](a1, a2);
        v41 = (&v143 - v40);
        v42 = *(v4 + 35);
        v150 = v38;
        v148 = v41;
        switch(v42)
        {
          case 4:
            v152.n128_u64[0] = *v4;
            v56 = v31;
            do
            {
              v57 = *(v4 + 48) + *(v4 + 56) * v56;
              v58 = *(v4 + 8);
              v59 = *(v4 + 35);
              if (v58 >= v59 + v59 * v57)
              {
                v61 = *(v152.n128_u64[0] + 4 * v57);
              }

              else
              {
                v60 = sub_1AF0D5194();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  *buf = v145.n128_u32[0];
                  *&buf[4] = v57;
                  *&buf[8] = 2048;
                  *&buf[10] = v58 / v59;
                  _os_log_error_impl(&dword_1AF0CE000, v60, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v61 = 0;
              }

              v41->n128_u32[0] = v61;
              v41 = (v41 + 4);
              ++v56;
              --v39;
            }

            while (v39);
            break;
          case 2:
            v152.n128_u64[0] = *v4;
            v50 = v31;
            do
            {
              v51 = *(v4 + 48) + *(v4 + 56) * v50;
              v52 = *(v4 + 8);
              v53 = *(v4 + 35);
              if (v52 >= v53 + v53 * v51)
              {
                v55 = *(v152.n128_u64[0] + 2 * v51);
              }

              else
              {
                v54 = sub_1AF0D5194();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *buf = v145.n128_u32[0];
                  *&buf[4] = v51;
                  *&buf[8] = 2048;
                  *&buf[10] = v52 / v53;
                  _os_log_error_impl(&dword_1AF0CE000, v54, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v55 = 0;
              }

              v41->n128_u32[0] = v55;
              v41 = (v41 + 4);
              ++v50;
              --v39;
            }

            while (v39);
            break;
          case 1:
            v152.n128_u64[0] = *v4;
            v43 = v31;
            do
            {
              v44 = *(v4 + 48) + *(v4 + 56) * v43;
              v45 = *(v4 + 8);
              v46 = *(v4 + 35);
              if (v45 >= v46 + v46 * v44)
              {
                v48 = *(v152.n128_u64[0] + v44);
              }

              else
              {
                v47 = sub_1AF0D5194();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  *buf = v145.n128_u32[0];
                  *&buf[4] = v44;
                  *&buf[8] = 2048;
                  *&buf[10] = v45 / v46;
                  _os_log_error_impl(&dword_1AF0CE000, v47, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
                }

                v48 = 0;
              }

              v41->n128_u32[0] = v48;
              v41 = (v41 + 4);
              ++v43;
              --v39;
            }

            while (v39);
            break;
          default:
            bzero(v41, 4 * v38);
            v62 = sub_1AF0D5194();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v63 = *(v4 + 35);
              *buf = v143.n128_u32[0];
              *&buf[4] = v63;
              _os_log_error_impl(&dword_1AF0CE000, v62, OS_LOG_TYPE_ERROR, "Unreachable code: Invalid bytes per index (%d)", buf, 8u);
            }

            break;
        }

        LODWORD(v38) = v150;
        a1 = (*(v151 + 16))(v151, v35, v148, v150, &v153);
        v36 = v147;
        if (v153)
        {
          return;
        }

        goto LABEL_84;
      }

LABEL_63:
      v49 = sub_1AF0D5194();
      a1 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        sub_1AFDDBF54(&v157, &v157.n128_u8[1], v49);
      }

LABEL_84:
      v31 += v38;
      if (++v35 == v36)
      {
        v27 = *(v4 + 32);
        goto LABEL_86;
      }
    }
  }

  v157.n128_u32[0] = 0;
  v71 = *(a1 + 35);
  switch(v71)
  {
    case 1:
      v97 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v98 = 0;
        a3.n128_u64[0] = 67109376;
        v152 = a3;
        while (1)
        {
          v99 = (*(v4 + 24) + 16 * v98);
          v100 = *v99;
          v101 = v99[1] + *v99;
          if (v100 < v101)
          {
            break;
          }

LABEL_143:
          if (++v98 >= v97)
          {
            return;
          }
        }

        v102 = v100;
        v103 = v101;
        while (1)
        {
          v104 = *(v4 + 48) + *(v4 + 56) * v102;
          v105 = *(v4 + 8);
          v106 = *(v4 + 35);
          if (v105 >= v106 + v106 * v104)
          {
            v108 = *(*v4 + v104);
          }

          else
          {
            v107 = sub_1AF0D5194();
            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              *buf = v152.n128_u32[0];
              *&buf[4] = v104;
              *&buf[8] = 2048;
              *&buf[10] = v105 / v106;
              _os_log_error_impl(&dword_1AF0CE000, v107, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v108 = 0;
          }

          v157.n128_u32[0] = v108;
          (*(v151 + 16))(v151, v102, &v157, 1, &v153);
          if (v153)
          {
            break;
          }

          if (v103 == ++v102)
          {
            v97 = *(v4 + 32);
            goto LABEL_143;
          }
        }
      }

      break;
    case 2:
      v85 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v86 = 0;
        a3.n128_u64[0] = 67109376;
        v152 = a3;
        while (1)
        {
          v87 = (*(v4 + 24) + 16 * v86);
          v88 = *v87;
          v89 = v87[1] + *v87;
          if (v88 < v89)
          {
            break;
          }

LABEL_129:
          if (++v86 >= v85)
          {
            return;
          }
        }

        v90 = v88;
        v91 = v89;
        while (1)
        {
          v92 = *(v4 + 48) + *(v4 + 56) * v90;
          v93 = *(v4 + 8);
          v94 = *(v4 + 35);
          if (v93 >= v94 + v94 * v92)
          {
            v96 = *(*v4 + 2 * v92);
          }

          else
          {
            v95 = sub_1AF0D5194();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              *buf = v152.n128_u32[0];
              *&buf[4] = v92;
              *&buf[8] = 2048;
              *&buf[10] = v93 / v94;
              _os_log_error_impl(&dword_1AF0CE000, v95, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v96 = 0;
          }

          v157.n128_u32[0] = v96;
          (*(v151 + 16))(v151, v90, &v157, 1, &v153);
          if (v153)
          {
            break;
          }

          if (v91 == ++v90)
          {
            v85 = *(v4 + 32);
            goto LABEL_129;
          }
        }
      }

      break;
    case 4:
      v72 = *(a1 + 32);
      if (*(a1 + 32))
      {
        v73 = 0;
        a3.n128_u64[0] = 67109376;
        v152 = a3;
        while (1)
        {
          v74 = (*(v4 + 24) + 16 * v73);
          v75 = *v74;
          v76 = v74[1] + *v74;
          if (v75 < v76)
          {
            break;
          }

LABEL_112:
          if (++v73 >= v72)
          {
            return;
          }
        }

        v77 = v75;
        v78 = v76;
        while (1)
        {
          v79 = *(v4 + 48) + *(v4 + 56) * v77;
          v80 = *(v4 + 8);
          v81 = *(v4 + 35);
          if (v80 >= v81 + v81 * v79)
          {
            v83 = *(*v4 + 4 * v79);
          }

          else
          {
            v82 = sub_1AF0D5194();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              *buf = v152.n128_u32[0];
              *&buf[4] = v79;
              *&buf[8] = 2048;
              *&buf[10] = v80 / v81;
              _os_log_error_impl(&dword_1AF0CE000, v82, OS_LOG_TYPE_ERROR, "Error: __validateIndexInContent - index (%u) out of bounds (%lu)", buf, 0x12u);
            }

            v83 = 0;
          }

          v157.n128_u32[0] = v83;
          (*(v151 + 16))(v151, v77, &v157, 1, &v153);
          if (v153)
          {
            break;
          }

          if (v78 == ++v77)
          {
            v72 = *(v4 + 32);
            goto LABEL_112;
          }
        }
      }

      break;
  }
}

void sub_1AF1AADF4(uint64_t a1)
{
  v2 = sub_1AF1A7034(a1);
  v3 = *(a1 + 130);
  if (*(a1 + 130))
  {
    v4 = v2;
    v5 = 0;
    do
    {
      fprintf(*MEMORY[0x1E69E9858], "CHANNEL %ld/%ld\n", v5 + 1, v3);
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      sub_1AF1A767C(a1, v5, &v11);
      v9[0] = 0;
      v9[1] = v9;
      v9[2] = 0x2000000000;
      v10 = 0;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = sub_1AF1AAF74;
      v7[3] = &unk_1E7A7B498;
      v8 = v4;
      v7[4] = v9;
      v6[0] = v11;
      v6[1] = v12;
      v6[2] = v13;
      v6[3] = v14;
      v15.n128_u64[0] = MEMORY[0x1E69E9820];
      v15.n128_u64[1] = 0x40000000;
      v16 = sub_1AF1A9C88;
      v17 = &unk_1E7A7B448;
      v18 = v7;
      sub_1AF1A8154(v6, 1, &v15, v13);
      _Block_object_dispose(v9, 8);
      ++v5;
    }

    while (v3 != v5);
  }
}

uint64_t sub_1AF1AAF74(uint64_t result, uint64_t a2, int *a3, unsigned int a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      result = fprintf(*MEMORY[0x1E69E9858], "%4u : %4u %4u\n");
      goto LABEL_9;
    }

LABEL_7:
    result = fprintf(*MEMORY[0x1E69E9858], "%4u : %4u %4u %4u\n");
    goto LABEL_9;
  }

  if (v6 == 3)
  {
    result = fprintf(*MEMORY[0x1E69E9858], "%4u : %4u\n");
    goto LABEL_9;
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = MEMORY[0x1E69E9858];
  fprintf(*MEMORY[0x1E69E9858], "%2u : [Polygon %4u]", *(*(*(result + 32) + 8) + 24), a4);
  if (a4)
  {
    v9 = a4;
    do
    {
      v10 = *a3++;
      fprintf(*v8, " %4u", v10);
      --v9;
    }

    while (v9);
  }

  result = fputc(10, *v8);
LABEL_9:
  ++*(*(*(v5 + 32) + 8) + 24);
  return result;
}

id sub_1AF1AB0F0(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshElementWillDie", a1, 0, 1u);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 168) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 136) = 0;
  }

  free(*(a1 + 112));
  free(*(a1 + 120));
  free(*(a1 + 208));

  return sub_1AF16C9A4(a1);
}

__CFString *sub_1AF1AB1A8(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v4 = *(a1 + 88);
  if (v4 > 5)
  {
    v5 = @"invalid";
  }

  else
  {
    v5 = off_1E7A7B4B8[v4];
  }

  v6 = *(a1 + 104);
  v7 = *(a1 + 130);
  v8 = *(a1 + 80);
  v9 = *(a1 + 64);
  v10 = sub_1AF1ABA68(a1, 0x20uLL);
  v11 = *(a1 + 68);
  Length = *(a1 + 96);
  if (Length)
  {
    Length = CFDataGetLength(Length);
  }

  CFStringAppendFormat(Mutable, 0, @"<%s %p | type:%@ primCount:%d channels:%d indexBytes:%d offset:%d acmr:%f inst:%d dataSize:%d shared:%p>", v3, a1, v5, v6, v7, v8, v9, v10, v11, Length, *(a1 + 72));
  return Mutable;
}

__CFArray *sub_1AF1AB2AC(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v44 = 1;
  valuePtr = 5;
  v41 = a1;
  v42 = a1 + 88;
  v43 = *(a1 + 96);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v5, @"name", @"indexes");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 104;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v9, @"name", @"subElementsCount");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = v4;
  v14 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = v42;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v14, @"name", @"type");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = MEMORY[0x1E695E9D8];
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v13);
  v44 = 0;
  valuePtr = 2;
  v43 = v41 + 80;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v19, @"name", @"bytesPerIndex");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = CFDictionaryCreateMutable(0, 4, v18, MEMORY[0x1E695E9E8]);
  v44 = 0;
  valuePtr = 3;
  v43 = v41 + 81;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v23, @"name", @"doubleSided");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v27 = MEMORY[0x1E695E9E8];
  v28 = CFDictionaryCreateMutable(0, 4, v18, MEMORY[0x1E695E9E8]);
  v44 = 1;
  valuePtr = 5;
  v43 = *(v41 + 168);
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v31 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v28, @"name", @"primitiveNormals");
  CFDictionarySetValue(v28, @"type", v29);
  CFDictionarySetValue(v28, @"address", v31);
  CFDictionarySetValue(v28, @"semantic", v30);
  CFArrayAppendValue(Mutable, v28);
  CFRelease(v30);
  CFRelease(v28);
  CFRelease(v31);
  CFRelease(v29);
  v32 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v44 = 0;
  valuePtr = 8;
  v43 = v41 + 176;
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v35 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v32, @"name", @"bbox[0]");
  CFDictionarySetValue(v32, @"type", v33);
  CFDictionarySetValue(v32, @"address", v35);
  CFDictionarySetValue(v32, @"semantic", v34);
  CFArrayAppendValue(Mutable, v32);
  CFRelease(v34);
  CFRelease(v32);
  CFRelease(v35);
  CFRelease(v33);
  v36 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v44 = 0;
  valuePtr = 8;
  v43 = v41 + 192;
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v39 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v36, @"name", @"bbox[1]");
  CFDictionarySetValue(v36, @"type", v37);
  CFDictionarySetValue(v36, @"address", v39);
  CFDictionarySetValue(v36, @"semantic", v38);
  CFArrayAppendValue(Mutable, v36);
  CFRelease(v38);
  CFRelease(v36);
  CFRelease(v39);
  CFRelease(v37);
  return Mutable;
}

float sub_1AF1ABA68(uint64_t a1, size_t a2)
{
  v9 = 0u;
  v10 = 0u;
  *v7 = 0u;
  v8 = 0u;
  sub_1AF1A767C(a1, 0, v7);
  v3 = 0.0;
  if (*v7 && BYTE2(v9) != 4)
  {
    v4 = sub_1AF1A7944(BYTE2(v9), v8);
    switch(BYTE3(v9))
    {
      case 4u:
        v5 = sub_1AF1ABD4C(*v7, v4, a2);
        return *&v5;
      case 2u:
        v5 = sub_1AF1ABC4C(*v7, v4, a2);
        return *&v5;
      case 1u:
        v5 = sub_1AF1ABB24(*v7, v4, a2);
        return *&v5;
    }
  }

  return v3;
}

double sub_1AF1ABB24(uint64_t a1, unsigned int a2, size_t __len)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = __len;
  if (__len)
  {
    memset(&__b, 255, __len);
  }

  if (!a2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = __b;
  do
  {
    v9 = *(a1 + v6);
    if (!v15)
    {
      goto LABEL_11;
    }

    if (v8 != v9)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (v15 == v10)
        {
          break;
        }

        v12 = v14[v10++ - 1];
      }

      while (v12 != v9);
      if (v11 >= v15)
      {
LABEL_11:
        memmove(v14, &__b, v15 - 1);
        __b = v9;
        ++v7;
        v8 = v9;
      }
    }

    ++v6;
  }

  while (v6 != a2);
  *&result = v7 / (a2 / 3);
  return result;
}

double sub_1AF1ABC4C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v15 = a3;
  if (a3)
  {
    memset(__b, 255, 2 * a3);
  }

  if (!a2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = __b[0];
  do
  {
    v9 = *(a1 + 2 * v6);
    if (!v15)
    {
      goto LABEL_11;
    }

    if (v8 != v9)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (v15 == v10)
        {
          break;
        }

        v12 = __b[v10++];
      }

      while (v12 != v9);
      if (v11 >= v15)
      {
LABEL_11:
        memmove(&v14, __b, 2 * (v15 - 1));
        __b[0] = v9;
        ++v7;
        v8 = v9;
      }
    }

    ++v6;
  }

  while (v6 != a2);
  *&result = v7 / (a2 / 3);
  return result;
}

double sub_1AF1ABD4C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v15 = a3;
  if (a3)
  {
    memset(__b, 255, 4 * a3);
  }

  if (!a2)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = __b[0];
  do
  {
    v9 = *(a1 + 4 * v6);
    if (!v15)
    {
      goto LABEL_11;
    }

    if (v8 != v9)
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (v15 == v10)
        {
          break;
        }

        v12 = __b[v10++];
      }

      while (v12 != v9);
      if (v11 >= v15)
      {
LABEL_11:
        memmove(&v14, __b, 4 * (v15 - 1));
        __b[0] = v9;
        ++v7;
        v8 = v9;
      }
    }

    ++v6;
  }

  while (v6 != a2);
  *&result = v7 / (a2 / 3);
  return result;
}

CFDataRef sub_1AF1ABE4C(const __CFData *a1, int a2, int a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  switch(a3)
  {
    case 4:
      if (a2)
      {
        v18 = 0;
        v19 = (3 * a2);
        v20 = BytePtr;
        do
        {
          v22 = *v20++;
          v21 = v22;
          if (v18 <= v22)
          {
            v18 = v21;
          }

          --v19;
        }

        while (v19);
        v23 = v18 + 1;
      }

      else
      {
        v23 = 1;
      }

      return sub_1AF1AC0F8(BytePtr, a2, v23);
    case 2:
      if (a2)
      {
        LOWORD(v12) = 0;
        v13 = (3 * a2);
        v14 = BytePtr;
        do
        {
          v16 = *v14;
          v14 = (v14 + 2);
          v15 = v16;
          v12 = v12;
          if (v12 <= v16)
          {
            v12 = v15;
          }

          --v13;
        }

        while (v13);
        v17 = v12 + 1;
      }

      else
      {
        v17 = 1;
      }

      return sub_1AF1AC040(BytePtr, a2, v17);
    case 1:
      if (a2)
      {
        LOBYTE(v6) = 0;
        v7 = (3 * a2);
        v8 = BytePtr;
        do
        {
          v10 = *v8;
          v8 = (v8 + 1);
          v9 = v10;
          v6 = v6;
          if (v6 <= v10)
          {
            v6 = v9;
          }

          --v7;
        }

        while (v7);
        v11 = v6 + 1;
      }

      else
      {
        v11 = 1;
      }

      return sub_1AF1ABF88(BytePtr, a2, v11);
    default:
      return 0;
  }
}

CFDataRef sub_1AF1ABF88(unsigned __int8 *a1, int a2, void *a3)
{
  v6 = 3 * a2;
  v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
  sub_1AF1AC968(v9);
  if (sub_1AF1AC340(v9, v7, a1, a2, a3))
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v7, v6, *MEMORY[0x1E695E480]);
  }

  free(v7);
  return 0;
}

CFDataRef sub_1AF1AC040(unsigned __int16 *a1, int a2, int a3)
{
  v6 = 3 * a2;
  v7 = malloc_type_calloc(2uLL, v6, 0x1000040BDFB0063uLL);
  sub_1AF1AC968(v9);
  if (sub_1AF1ACB88(v9, v7, a1, a2, a3))
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v7, 2 * v6, *MEMORY[0x1E695E480]);
  }

  free(v7);
  return 0;
}

CFDataRef sub_1AF1AC0F8(unsigned int *a1, int a2, int a3)
{
  v6 = 3 * a2;
  v7 = malloc_type_calloc(4uLL, v6, 0x100004052888210uLL);
  sub_1AF1AC968(v9);
  if (sub_1AF1AD1B0(v9, v7, a1, a2, a3))
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v7, 4 * v6, *MEMORY[0x1E695E480]);
  }

  free(v7);
  return 0;
}

void sub_1AF1AC1B0(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    v2 = sub_1AF1ABE4C(*(a1 + 96), *(a1 + 104), *(a1 + 80));
    if (v2)
    {
      v3 = v2;
      sub_1AF1A72A0(a1, *(a1 + 104), v2, *(a1 + 80));

      CFRelease(v3);
    }
  }
}

_DWORD *sub_1AF1AC224(uint64_t a1)
{
  v15 = 0u;
  *count = 0u;
  sub_1AF1AE1A8(a1, &v15);
  v1 = malloc_type_calloc(LODWORD(count[0]), 4uLL, 0x100004052888210uLL);
  v4 = 0uLL;
  v12 = 0u;
  v13 = 0u;
  v14 = 1065353216;
  if (!LODWORD(count[0]))
  {
    goto LABEL_8;
  }

  v5 = 0;
  do
  {
    *v6.i64 = sub_1AF279750(BYTE4(count[0]), (v15 + v5 * BYTE6(count[0])), v4, v2, v3);
    v10 = v6;
    v11 = v6;
    v7 = sub_1AF1AD7D8(&v12, &v11);
    if (v7)
    {
      v8 = v7[2].i32[0];
    }

    else
    {
      v11 = v10;
      v17 = &v11;
      sub_1AF1AD8B0(&v12, &v11)[2].i32[0] = v5;
      v8 = v5;
    }

    v1[v5++] = v8;
  }

  while (v5 < LODWORD(count[0]));
  if (*(&v13 + 1) == LODWORD(count[0]))
  {
LABEL_8:
    free(v1);
    v1 = 0;
  }

  sub_1AF144AE4(&v12);
  return v1;
}

uint64_t sub_1AF1AC340(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, void *a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v82 = a5;
  v8 = a5;
  v9 = malloc_type_malloc(a5, 0x100004077774924uLL);
  bzero(v9, v8);
  if (a4 >= 1)
  {
    LODWORD(v10) = 3 * a4;
    if (3 * a4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v11 = a3;
    do
    {
      v13 = *v11++;
      v12 = v13;
      v14 = v9[v13];
      if (v14 == 255)
      {
        free(v9);
        return 0;
      }

      v9[v12] = v14 + 1;
      --v10;
    }

    while (v10);
  }

  v80 = a3;
  v15 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  v16 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
  v17 = malloc_type_malloc(v8, 0x100004077774924uLL);
  v18 = a4 + 7;
  if (a4 < -7)
  {
    v18 = a4 + 14;
  }

  v79 = v18 >> 3;
  v19 = malloc_type_malloc(v79, 0x100004077774924uLL);
  v20 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
  v78 = 12 * a4;
  v21 = malloc_type_malloc(v78, 0x100004052888210uLL);
  bzero(v19, v79);
  bzero(v20, 2 * a4);
  bzero(v21, v78);
  v22 = v82;
  v23 = v82;
  if (v82 >= 1)
  {
    v24 = 0;
    v25 = v82;
    v26 = v15;
    v27 = v9;
    v28 = v17;
    do
    {
      *v26++ = v24;
      v24 += *v27;
      *v27++ = 0;
      *v28++ = -1;
      --v25;
    }

    while (v25);
  }

  v29 = a3;
  if (a4 >= 1)
  {
    v30 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v32 = v29[i];
        *&v21[4 * v15[v32] + 4 * v9[v32]++] = v30;
      }

      ++v30;
      v29 += 3;
    }

    while (v30 != a4);
  }

  if (v22 >= 1)
  {
    v33 = 0;
    do
    {
      if (v9[v33])
      {
        v34 = v17[v33];
        if ((v34 & 0x80000000) != 0)
        {
          v35 = 0;
        }

        else
        {
          v35 = *(a1 + 4 * v34);
        }

        if (v9[v33] <= 0x1Fu)
        {
          v35 += *(a1 + 128 + 4 * v9[v33]);
        }
      }

      else
      {
        LOWORD(v35) = 0;
      }

      v16[v33] = v35;
      if (v9[v33])
      {
        v36 = 0;
        v37 = &v21[4 * v15[v33]];
        do
        {
          v20[*&v37[4 * v36++]] += v16[v33];
        }

        while (v36 < v9[v33]);
      }

      ++v33;
    }

    while (v33 != v23);
  }

  if (a4 < 1)
  {
    v40 = -1;
  }

  else
  {
    v38 = 0;
    v39 = -1;
    v40 = -1;
    do
    {
      v41 = v20[v38];
      if (v39 < v41)
      {
        v40 = v38;
      }

      if (v39 <= v41)
      {
        v39 = v20[v38];
      }

      ++v38;
    }

    while (a4 != v38);
  }

  v82 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  *&v42 = -1;
  *(&v42 + 1) = -1;
  *&v84[12] = v42;
  v83[4] = v42;
  *v84 = v42;
  v83[2] = v42;
  v83[3] = v42;
  v83[0] = v42;
  v83[1] = v42;
  if ((v40 & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v43 = 0;
  v44 = 0;
  do
  {
    v45 = 0;
    v19[v40 >> 3] |= 1 << (v40 & 7);
    *(v82 + v43) = v40;
    do
    {
      v46 = v80[3 * v40 + v45];
      LODWORD(v47) = v17[v46];
      if (v47 < 0)
      {
        LODWORD(v47) = v45 | 0x18;
      }

      v47 = v47;
      if (v47 > v45)
      {
        v48 = v83 + v47;
        do
        {
          v49 = *(v48 - 1);
          *v48 = v49;
          if ((v49 & 0x80000000) == 0)
          {
            v50 = v17[v49];
            if (v50 <= 25)
            {
              v17[v49] = v50 + 1;
            }
          }

          --v47;
          --v48;
        }

        while (v47 > v45);
      }

      *(v83 + v45) = v46;
      v17[v46] = v45;
      v51 = v9[v46];
      if (v9[v46])
      {
        v52 = v15[v46];
        v53 = &v21[4 * v52];
        v54 = v9[v46];
        while (*v53 != v40)
        {
          v53 += 4;
          if (!--v54)
          {
            goto LABEL_58;
          }
        }

        *v53 = *&v21[4 * v52 - 4 + 4 * v51];
        LOBYTE(v51) = v9[v46];
      }

LABEL_58:
      v9[v46] = v51 - 1;
      ++v45;
    }

    while (v45 != 3);
    v55 = 0;
    ++v43;
    do
    {
      v56 = *(v83 + v55);
      if ((v56 & 0x80000000) != 0)
      {
        break;
      }

      v57 = &v16[v56];
      if (v55 <= 0x17)
      {
        v58 = &v9[v56];
        v59 = v9[v56];
        if (v9[v56])
        {
          v60 = v17[v56];
          if ((v60 & 0x80000000) != 0)
          {
LABEL_67:
            v61 = 0;
          }

          else
          {
            v61 = *(a1 + 4 * v60);
          }

          if (v59 <= 0x1F)
          {
            v61 += *(a1 + 128 + 4 * v59);
          }

          v62 = 0;
          v63 = v61 - *v57;
          v64 = &v21[4 * v15[v56]];
          do
          {
            v20[*&v64[4 * v62++]] += v63;
          }

          while (v62 < *v58);
          goto LABEL_74;
        }
      }

      else
      {
        v17[v56] = -1;
        *(v83 + v55) = -1;
        v58 = &v9[v56];
        v59 = v9[v56];
        if (v9[v56])
        {
          goto LABEL_67;
        }
      }

      LOWORD(v61) = 0;
LABEL_74:
      *v57 = v61;
      ++v55;
    }

    while (v55 != 27);
    v65 = 0;
    v66 = -1;
    v40 = -1;
    do
    {
      v67 = *(v83 + v65);
      if ((v67 & 0x80000000) != 0)
      {
        break;
      }

      v68 = v9[v67];
      if (v9[v67])
      {
        v69 = &v21[4 * v15[v67]];
        do
        {
          v71 = *v69;
          v69 += 4;
          v70 = v71;
          v72 = v20[v71];
          if (v66 < v72)
          {
            v40 = v70;
          }

          if (v66 <= v72)
          {
            v66 = v72;
          }

          --v68;
        }

        while (v68);
      }

      ++v65;
    }

    while (v65 != 24);
    if ((v40 & 0x80000000) != 0 && v44 < a4)
    {
      while (((v19[v44 >> 3] >> (v44 & 7)) & 1) != 0)
      {
        if (a4 == ++v44)
        {
          v44 = a4;
          goto LABEL_91;
        }
      }

      v40 = v44;
    }

LABEL_91:
    ;
  }

  while ((v40 & 0x80000000) == 0);
LABEL_92:
  if (a4 >= 1)
  {
    v73 = 0;
    LODWORD(v74) = 0;
    do
    {
      v75 = 0;
      v74 = v74;
      v76 = &v80[3 * *(v82 + v73)];
      do
      {
        *(a2 + v74++) = v76[v75++];
      }

      while (v75 != 3);
      ++v73;
    }

    while (v73 != a4);
  }

  free(v21);
  free(v15);
  free(v16);
  free(v9);
  free(v17);
  free(v19);
  free(v20);
  free(v82);
  return a2;
}

uint64_t sub_1AF1AC968(uint64_t a1)
{
  v2 = 0;
  v3 = -3;
  do
  {
    if (v2 >= 3)
    {
      v4 = (powf((v3 * -0.034483) + 1.0, 1.5) * 7281.0);
    }

    else
    {
      v4 = 5460;
    }

    *(a1 + 4 * v2++) = v4;
    ++v3;
  }

  while (v2 != 32);
  v5 = 0;
  v6 = (a1 + 144);
  v17 = vdupq_n_s64(0x1FuLL);
  do
  {
    v20 = vdupq_n_s64(v5);
    v7 = vorrq_s8(v20, xmmword_1AFE21110);
    v8 = vmovn_s64(vcgtq_u64(v17, v7));
    v18 = vuzp1_s16(v8, v8).u8[0];
    v19 = v7;
    v24 = vcvtq_f32_u32(vaddq_s32(vdupq_n_s32(v5), xmmword_1AFE21870));
    v21 = powf(v24.f32[1], -0.5);
    *&v9 = powf(v24.f32[0], -0.5);
    *(&v9 + 1) = v21;
    v22 = v9;
    v10 = powf(v24.f32[2], -0.5);
    v11 = v22;
    *(&v11 + 2) = v10;
    v23 = v11;
    v12 = powf(v24.f32[3], -0.5);
    if (v18)
    {
      *(v6 - 3) = ((*&v23 + *&v23) * 7281.0);
    }

    v13 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v19));
    if (vuzp1_s16(v13, v13).i8[2])
    {
      *(v6 - 2) = ((*(&v23 + 1) + *(&v23 + 1)) * 7281.0);
    }

    v14 = vorrq_s8(v20, xmmword_1AFE21100);
    if (vuzp1_s16(*&v14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v14))).i32[1])
    {
      *(v6 - 1) = ((*(&v23 + 2) + *(&v23 + 2)) * 7281.0);
    }

    v15 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v14));
    if (vuzp1_s16(v15, v15).i8[6])
    {
      *v6 = ((v12 + v12) * 7281.0);
    }

    v5 += 4;
    v6 += 4;
  }

  while (v5 != 32);
  return a1;
}

uint64_t sub_1AF1ACB88(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, int a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = malloc_type_malloc(a5, 0x100004077774924uLL);
  bzero(v10, v9);
  if (a4 >= 1)
  {
    LODWORD(v11) = 3 * a4;
    if (3 * a4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v11;
    }

    v12 = a3;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v10[v14];
      if (v15 == 255)
      {
        free(v10);
        return 0;
      }

      v10[v13] = v15 + 1;
      --v11;
    }

    while (v11);
  }

  v85 = a3;
  v83 = a2;
  v16 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  v17 = malloc_type_malloc(2 * v9, 0x1000040BDFB0063uLL);
  v18 = malloc_type_malloc(v9, 0x100004077774924uLL);
  v19 = a4 + 7;
  if (a4 < -7)
  {
    v19 = a4 + 14;
  }

  v82 = v19 >> 3;
  v20 = malloc_type_malloc(v82, 0x100004077774924uLL);
  v21 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
  v81 = 12 * a4;
  v22 = malloc_type_malloc(v81, 0x100004052888210uLL);
  bzero(v20, v82);
  bzero(v21, 2 * a4);
  bzero(v22, v81);
  if (a5 >= 1)
  {
    v23 = 0;
    v24 = a5;
    v25 = v16;
    v26 = v10;
    v27 = v18;
    do
    {
      *v25++ = v23;
      v23 += *v26;
      *v26++ = 0;
      *v27++ = -1;
      --v24;
    }

    while (v24);
  }

  v28 = v85;
  if (a4 >= 1)
  {
    v29 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v31 = v28[i];
        *&v22[4 * v16[v31] + 4 * v10[v31]++] = v29;
      }

      ++v29;
      v28 += 3;
    }

    while (v29 != a4);
  }

  if (a5 >= 1)
  {
    v32 = 0;
    do
    {
      if (v10[v32])
      {
        v33 = v18[v32];
        if ((v33 & 0x80000000) != 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a1 + 4 * v33);
        }

        if (v10[v32] <= 0x1Fu)
        {
          v34 += *(a1 + 128 + 4 * v10[v32]);
        }
      }

      else
      {
        LOWORD(v34) = 0;
      }

      v17[v32] = v34;
      if (v10[v32])
      {
        v35 = 0;
        v36 = &v22[4 * v16[v32]];
        do
        {
          v21[*&v36[4 * v35++]] += v17[v32];
        }

        while (v35 < v10[v32]);
      }

      ++v32;
    }

    while (v32 != a5);
  }

  if (a4 < 1)
  {
    v39 = -1;
  }

  else
  {
    v37 = 0;
    v38 = -1;
    v39 = -1;
    do
    {
      v40 = v21[v37];
      if (v38 < v40)
      {
        v39 = v37;
      }

      if (v38 <= v40)
      {
        v38 = v21[v37];
      }

      ++v37;
    }

    while (a4 != v37);
  }

  v42 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  *&v43 = -1;
  *(&v43 + 1) = -1;
  *&v87[12] = v43;
  v86[4] = v43;
  *v87 = v43;
  v86[2] = v43;
  v86[3] = v43;
  v86[0] = v43;
  v86[1] = v43;
  v44 = v85;
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v45 = 0;
  v46 = 0;
  do
  {
    v47 = 0;
    v20[v39 >> 3] |= 1 << (v39 & 7);
    v42[v45] = v39;
    do
    {
      v48 = v44[3 * v39 + v47];
      LODWORD(v49) = v18[v48];
      if (v49 < 0)
      {
        LODWORD(v49) = v47 | 0x18;
      }

      v49 = v49;
      if (v49 > v47)
      {
        v50 = v86 + v49;
        do
        {
          v51 = *(v50 - 1);
          *v50 = v51;
          if ((v51 & 0x80000000) == 0)
          {
            v52 = v18[v51];
            if (v52 <= 25)
            {
              v18[v51] = v52 + 1;
            }
          }

          --v49;
          --v50;
        }

        while (v49 > v47);
      }

      *(v86 + v47) = v48;
      v18[v48] = v47;
      v53 = v10[v48];
      if (v10[v48])
      {
        v54 = v16[v48];
        v55 = &v22[4 * v54];
        v56 = v10[v48];
        while (*v55 != v39)
        {
          v55 += 4;
          if (!--v56)
          {
            goto LABEL_58;
          }
        }

        *v55 = *&v22[4 * v54 - 4 + 4 * v53];
        LOBYTE(v53) = v10[v48];
      }

LABEL_58:
      v10[v48] = v53 - 1;
      ++v47;
    }

    while (v47 != 3);
    v57 = 0;
    ++v45;
    do
    {
      v58 = *(v86 + v57);
      if ((v58 & 0x80000000) != 0)
      {
        break;
      }

      v59 = &v17[v58];
      if (v57 <= 0x17)
      {
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          v62 = v18[v58];
          if ((v62 & 0x80000000) != 0)
          {
LABEL_67:
            v63 = 0;
          }

          else
          {
            v63 = *(a1 + 4 * v62);
          }

          if (v61 <= 0x1F)
          {
            v63 += *(a1 + 128 + 4 * v61);
          }

          v64 = 0;
          v65 = v63 - *v59;
          v66 = &v22[4 * v16[v58]];
          do
          {
            v21[*&v66[4 * v64++]] += v65;
          }

          while (v64 < *v60);
          goto LABEL_74;
        }
      }

      else
      {
        v18[v58] = -1;
        *(v86 + v57) = -1;
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          goto LABEL_67;
        }
      }

      LOWORD(v63) = 0;
LABEL_74:
      *v59 = v63;
      ++v57;
    }

    while (v57 != 27);
    v67 = 0;
    v68 = -1;
    v39 = -1;
    do
    {
      v69 = *(v86 + v67);
      if ((v69 & 0x80000000) != 0)
      {
        break;
      }

      v70 = v10[v69];
      if (v10[v69])
      {
        v71 = &v22[4 * v16[v69]];
        do
        {
          v73 = *v71;
          v71 += 4;
          v72 = v73;
          v74 = v21[v73];
          if (v68 < v74)
          {
            v39 = v72;
          }

          if (v68 <= v74)
          {
            v68 = v74;
          }

          --v70;
        }

        while (v70);
      }

      ++v67;
    }

    while (v67 != 24);
    if ((v39 & 0x80000000) != 0 && v46 < a4)
    {
      while (((v20[v46 >> 3] >> (v46 & 7)) & 1) != 0)
      {
        if (a4 == ++v46)
        {
          v46 = a4;
          goto LABEL_91;
        }
      }

      v39 = v46;
    }

LABEL_91:
    ;
  }

  while ((v39 & 0x80000000) == 0);
LABEL_92:
  v41 = v83;
  if (a4 >= 1)
  {
    v75 = 0;
    v76 = 0;
    do
    {
      v77 = 0;
      v78 = &v44[3 * v42[v75]];
      v79 = v83 + 2 * v76;
      v76 += 3;
      do
      {
        *(v79 + v77 * 2) = v78[v77];
        ++v77;
      }

      while (v77 != 3);
      ++v75;
    }

    while (v75 != a4);
  }

  free(v22);
  free(v16);
  free(v17);
  free(v10);
  free(v18);
  free(v20);
  free(v21);
  free(v42);
  return v41;
}

uint64_t sub_1AF1AD1B0(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, int a5)
{
  v88 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = malloc_type_malloc(a5, 0x100004077774924uLL);
  bzero(v10, v9);
  if (a4 >= 1)
  {
    LODWORD(v11) = 3 * a4;
    if (3 * a4 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v11;
    }

    v12 = a3;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v10[v14];
      if (v15 == 255)
      {
        free(v10);
        return 0;
      }

      v10[v13] = v15 + 1;
      --v11;
    }

    while (v11);
  }

  v85 = a3;
  v83 = a2;
  v16 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  v17 = malloc_type_malloc(2 * v9, 0x1000040BDFB0063uLL);
  v18 = malloc_type_malloc(v9, 0x100004077774924uLL);
  v19 = a4 + 7;
  if (a4 < -7)
  {
    v19 = a4 + 14;
  }

  v82 = v19 >> 3;
  v20 = malloc_type_malloc(v82, 0x100004077774924uLL);
  v21 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
  v81 = 12 * a4;
  v22 = malloc_type_malloc(v81, 0x100004052888210uLL);
  bzero(v20, v82);
  bzero(v21, 2 * a4);
  bzero(v22, v81);
  if (a5 >= 1)
  {
    v23 = 0;
    v24 = a5;
    v25 = v16;
    v26 = v10;
    v27 = v18;
    do
    {
      *v25++ = v23;
      v23 += *v26;
      *v26++ = 0;
      *v27++ = -1;
      --v24;
    }

    while (v24);
  }

  v28 = v85;
  if (a4 >= 1)
  {
    v29 = 0;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v31 = v28[i];
        *&v22[4 * v16[v31] + 4 * v10[v31]++] = v29;
      }

      ++v29;
      v28 += 3;
    }

    while (v29 != a4);
  }

  if (a5 >= 1)
  {
    v32 = 0;
    do
    {
      if (v10[v32])
      {
        v33 = v18[v32];
        if ((v33 & 0x80000000) != 0)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a1 + 4 * v33);
        }

        if (v10[v32] <= 0x1Fu)
        {
          v34 += *(a1 + 128 + 4 * v10[v32]);
        }
      }

      else
      {
        LOWORD(v34) = 0;
      }

      v17[v32] = v34;
      if (v10[v32])
      {
        v35 = 0;
        v36 = &v22[4 * v16[v32]];
        do
        {
          v21[*&v36[4 * v35++]] += v17[v32];
        }

        while (v35 < v10[v32]);
      }

      ++v32;
    }

    while (v32 != a5);
  }

  if (a4 < 1)
  {
    v39 = -1;
  }

  else
  {
    v37 = 0;
    v38 = -1;
    v39 = -1;
    do
    {
      v40 = v21[v37];
      if (v38 < v40)
      {
        v39 = v37;
      }

      if (v38 <= v40)
      {
        v38 = v21[v37];
      }

      ++v37;
    }

    while (a4 != v37);
  }

  v42 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  *&v43 = -1;
  *(&v43 + 1) = -1;
  *&v87[12] = v43;
  v86[4] = v43;
  *v87 = v43;
  v86[2] = v43;
  v86[3] = v43;
  v86[0] = v43;
  v86[1] = v43;
  v44 = v85;
  if ((v39 & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  v45 = 0;
  v46 = 0;
  do
  {
    v47 = 0;
    v20[v39 >> 3] |= 1 << (v39 & 7);
    v42[v45] = v39;
    do
    {
      v48 = v44[3 * v39 + v47];
      LODWORD(v49) = v18[v48];
      if (v49 < 0)
      {
        LODWORD(v49) = v47 | 0x18;
      }

      v49 = v49;
      if (v49 > v47)
      {
        v50 = v86 + v49;
        do
        {
          v51 = *(v50 - 1);
          *v50 = v51;
          if ((v51 & 0x80000000) == 0)
          {
            v52 = v18[v51];
            if (v52 <= 25)
            {
              v18[v51] = v52 + 1;
            }
          }

          --v49;
          --v50;
        }

        while (v49 > v47);
      }

      *(v86 + v47) = v48;
      v18[v48] = v47;
      v53 = v10[v48];
      if (v10[v48])
      {
        v54 = v16[v48];
        v55 = &v22[4 * v54];
        v56 = v10[v48];
        while (*v55 != v39)
        {
          v55 += 4;
          if (!--v56)
          {
            goto LABEL_58;
          }
        }

        *v55 = *&v22[4 * v54 - 4 + 4 * v53];
        LOBYTE(v53) = v10[v48];
      }

LABEL_58:
      v10[v48] = v53 - 1;
      ++v47;
    }

    while (v47 != 3);
    v57 = 0;
    ++v45;
    do
    {
      v58 = *(v86 + v57);
      if ((v58 & 0x80000000) != 0)
      {
        break;
      }

      v59 = &v17[v58];
      if (v57 <= 0x17)
      {
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          v62 = v18[v58];
          if ((v62 & 0x80000000) != 0)
          {
LABEL_67:
            v63 = 0;
          }

          else
          {
            v63 = *(a1 + 4 * v62);
          }

          if (v61 <= 0x1F)
          {
            v63 += *(a1 + 128 + 4 * v61);
          }

          v64 = 0;
          v65 = v63 - *v59;
          v66 = &v22[4 * v16[v58]];
          do
          {
            v21[*&v66[4 * v64++]] += v65;
          }

          while (v64 < *v60);
          goto LABEL_74;
        }
      }

      else
      {
        v18[v58] = -1;
        *(v86 + v57) = -1;
        v60 = &v10[v58];
        v61 = v10[v58];
        if (v10[v58])
        {
          goto LABEL_67;
        }
      }

      LOWORD(v63) = 0;
LABEL_74:
      *v59 = v63;
      ++v57;
    }

    while (v57 != 27);
    v67 = 0;
    v68 = -1;
    v39 = -1;
    do
    {
      v69 = *(v86 + v67);
      if ((v69 & 0x80000000) != 0)
      {
        break;
      }

      v70 = v10[v69];
      if (v10[v69])
      {
        v71 = &v22[4 * v16[v69]];
        do
        {
          v73 = *v71;
          v71 += 4;
          v72 = v73;
          v74 = v21[v73];
          if (v68 < v74)
          {
            v39 = v72;
          }

          if (v68 <= v74)
          {
            v68 = v74;
          }

          --v70;
        }

        while (v70);
      }

      ++v67;
    }

    while (v67 != 24);
    if ((v39 & 0x80000000) != 0 && v46 < a4)
    {
      while (((v20[v46 >> 3] >> (v46 & 7)) & 1) != 0)
      {
        if (a4 == ++v46)
        {
          v46 = a4;
          goto LABEL_91;
        }
      }

      v39 = v46;
    }

LABEL_91:
    ;
  }

  while ((v39 & 0x80000000) == 0);
LABEL_92:
  v41 = v83;
  if (a4 >= 1)
  {
    v75 = 0;
    v76 = 0;
    do
    {
      v77 = 0;
      v78 = &v44[3 * v42[v75]];
      v79 = v83 + 4 * v76;
      v76 += 3;
      do
      {
        *(v79 + v77 * 4) = v78[v77];
        ++v77;
      }

      while (v77 != 3);
      ++v75;
    }

    while (v75 != a4);
  }

  free(v22);
  free(v16);
  free(v17);
  free(v10);
  free(v18);
  free(v20);
  free(v21);
  free(v42);
  return v41;
}

float32x4_t *sub_1AF1AD7D8(void *a1, float32x4_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = result->i64[0])
  {
    v8 = result->u64[1];
    if (v8 == v3)
    {
      v9 = vceqq_f32(result[1], *a2);
      v9.i32[3] = v9.i32[2];
      if ((vminvq_u32(v9) & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

float32x4_t *sub_1AF1AD8B0(void *a1, float32x4_t *a2)
{
  v2 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2->u32[0] ^ (2 * HIDWORD(a2->i64[0])) ^ (4 * a2->i64[1]);
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7->u64[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = v7->i64[0];
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  v9 = vceqq_f32(v7[1], *a2);
  v9.i32[3] = v9.i32[2];
  if ((vminvq_u32(v9) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  return v7;
}

__CFString *sub_1AF1ADAF8(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E7A7B508[a1];
  }
}

uint64_t sub_1AF1ADB18()
{
  if (qword_1ED73AC08 != -1)
  {
    sub_1AFDDC134();
  }

  return qword_1ED73AC00;
}

uint64_t sub_1AF1ADB50()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED73AC00 = result;
  qword_1ED72EA48 = sub_1AF1AFA84;
  return result;
}

uint64_t sub_1AF1ADB94()
{
  if (qword_1ED73AC08 != -1)
  {
    sub_1AFDDC134();
  }

  v1 = qword_1ED73AC00;

  return sub_1AF0D160C(v1, 0x58uLL);
}

uint64_t sub_1AF1ADBE4(const void *a1, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = sub_1AF288070(a5) * a4;

  return sub_1AF1ADC58(a2, a1, a5, a4, a3, v10, 0);
}

uint64_t sub_1AF1ADC58(__int16 a1, const void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC148(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a4 >= 5)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC1C0(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = sub_1AF1CAE64(a3, a4, a5, a6, a7);
  v31 = sub_1AF1ADD44(v30, a1);
  *(v31 + 72) = CFRetain(a2);
  sub_1AF1CB108(v30, v31, v32, v33);
  if (v30)
  {
    CFRelease(v30);
  }

  return v31;
}

uint64_t sub_1AF1ADD44(const void *a1, __int16 a2)
{
  v4 = sub_1AF1ADB94();
  if (!v4)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  sub_1AF16FB7C(v4, a1);
  *(v4 + 96) = a2;
  return v4;
}

uint64_t sub_1AF1ADDB0(__int16 a1, const void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC148(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  if (a4 >= 5)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC1C0(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = sub_1AF1CAE64(a3, a4, a5, a6, a7);
  v31 = sub_1AF1ADD44(v30, a1);
  *(v31 + 72) = CFRetain(a2);
  *(v31 + 88) |= 1u;
  sub_1AF1CB108(v30, v31, v32, v33);
  if (v30)
  {
    CFRelease(v30);
  }

  return v31;
}

uint64_t sub_1AF1ADEA8(uint64_t a1, uint64_t a2)
{
  v70 = 0u;
  v71 = 0u;
  sub_1AF1AE1A8(a1, &v70);
  v68 = 0u;
  v69 = 0u;
  sub_1AF1AE1A8(a2, &v68);
  v3 = v71;
  v4 = v69;
  if (v71 == v69)
  {
    v5 = v70;
    if (!v70)
    {
      v6 = sub_1AF0D5194();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDC2C0(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    v14 = v68;
    if (!v68)
    {
      v15 = sub_1AF0D5194();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDC338(v15, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    if (BYTE7(v69) == 1 && BYTE7(v71) == 1)
    {
      v23 = BYTE8(v69);
      if (BYTE8(v69) >= 3u)
      {
        v24 = 3;
      }

      else
      {
        v24 = BYTE8(v69);
      }

      v25 = malloc_type_malloc((4 * v24) * v3, 0x2C220B58uLL);
      v26 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v25, (4 * v24) * v3, *MEMORY[0x1E695E480]);
      if (v3)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = BYTE6(v71);
        v31 = BYTE6(v69);
        do
        {
          if (v23)
          {
            v32 = (v14 + v28);
            v33 = v24;
            v34 = v25;
            v35 = (v5 + v27);
            do
            {
              v36 = *v32++;
              v37 = v36;
              v38 = *v35++;
              *v34++ = v37 - v38;
              --v33;
            }

            while (v33);
          }

          ++v29;
          v28 += v31;
          v27 += v30;
          v25 += 4 * v24;
        }

        while (v29 != v3);
      }

      v39 = sub_1AF1AE3D8(a2);
      v40 = sub_1AF288070(1);
      v41 = sub_1AF1ADC58(v39, v26, 1, v24, v3, v40 * v24, 0);
      v42 = v26;
    }

    else
    {
      v64 = a2;
      v44 = BYTE4(v71);
      v66 = sub_1AF288070(BYTE4(v71));
      v45 = malloc_type_malloc(v66 * v3, 0x43F11468uLL);
      v63 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v45, v66 * v3, *MEMORY[0x1E695E480]);
      v65 = v3;
      if (v3)
      {
        v49 = v14;
        v50 = v5;
        v51 = 0;
        v52 = 0;
        v53 = BYTE6(v71);
        v54 = BYTE4(v69);
        v55 = BYTE6(v69);
        do
        {
          *v56.i64 = sub_1AF279750(v44, (v50 + v51), v46, v47, v48);
          v67 = v56;
          *v59.i64 = sub_1AF279750(v54, (v49 + v52), v56, v57, v58);
          sub_1AF279B88(v44, v45, vsubq_f32(v59, v67));
          v52 += v55;
          v51 += v53;
          v45 += v66;
          --v3;
        }

        while (v3);
      }

      v60 = sub_1AF1AE3D8(v64);
      v61 = sub_1AF288070(v44);
      v41 = sub_1AF1ADC58(v60, v63, v44, 1, v65, v61, 0);
      v42 = v63;
    }

    CFRelease(v42);
  }

  else
  {
    v43 = sub_1AF0D5194();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDC238(v4, v3, v43);
    }

    return 0;
  }

  return v41;
}

uint64_t sub_1AF1AE1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v4 = sub_1AF17032C(a1);
  v8 = sub_1AF1CAEF0(v4, v5, v6, v7);
  v9 = sub_1AF12DB9C(v4);
  *(a2 + 16) = v9;
  v10 = sub_1AF121B74(v4);
  *(a2 + 22) = v10;
  if (!v8 || !v9)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25 = 138412802;
      v26 = v8;
      v27 = 1024;
      *v28 = v9;
      *&v28[4] = 2112;
      *&v28[6] = a1;
      v22 = "Error: Can't build content (with data %@ and count %d) for mesh source %@";
      v23 = v11;
      v24 = 28;
      goto LABEL_15;
    }

LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    goto LABEL_7;
  }

  if (sub_1AF170380(a1))
  {
    *a2 = sub_1AF1CB064(v4, 0);
    *(a2 + 8) = v10 * v9;
    goto LABEL_7;
  }

  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v8);
  v19 = sub_1AF1CB564(v4);
  v20 = v19;
  if (Length <= v19)
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = 134218498;
      v26 = Length;
      v27 = 2048;
      *v28 = v20;
      *&v28[8] = 2112;
      *&v28[10] = a1;
      v22 = "Error: Can't build content (with data length %zu and offset %llu) for mesh source %@";
      v23 = v21;
      v24 = 32;
LABEL_15:
      _os_log_error_impl(&dword_1AF0CE000, v23, OS_LOG_TYPE_ERROR, v22, &v25, v24);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  *a2 = &BytePtr[v19];
  *(a2 + 8) = Length - v19;
LABEL_7:
  v12 = sub_1AF1CAED8(v4);
  v13 = sub_1AF1CAED0(v4);
  v14 = sub_1AF28844C(v12);
  *(a2 + 23) = v14;
  v15 = v13;
  if (v12 != v14)
  {
    v15 = sub_1AF2884B4(v12) * v13;
  }

  *(a2 + 24) = v15;
  *(a2 + 20) = sub_1AF2885E4(v12, v13);
  result = sub_1AF288070(v12);
  *(a2 + 21) = result * v13;
  return result;
}

uint64_t sub_1AF1AE3D8(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

uint64_t sub_1AF1AE420(uint64_t a1, uint64_t a2)
{
  v71 = 0u;
  v72 = 0u;
  sub_1AF1AE1A8(a1, &v71);
  v3 = v71;
  if (!v71)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC2C0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v69 = 0u;
  v70 = 0u;
  sub_1AF1AE1A8(a2, &v69);
  v12 = v69;
  if (!v69)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC3B0(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v21 = v72;
  if (v72 != v70)
  {
    return 0;
  }

  if (BYTE7(v70) == 1 && BYTE7(v72) == 1)
  {
    v22 = BYTE8(v70);
    if (BYTE8(v70) >= 3u)
    {
      v23 = 3;
    }

    else
    {
      v23 = BYTE8(v70);
    }

    v24 = malloc_type_malloc((4 * v23) * v72, 0x5409217FuLL);
    v25 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v24, (4 * v23) * v21, *MEMORY[0x1E695E480]);
    if (v21)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = BYTE6(v72);
      v30 = BYTE6(v70);
      do
      {
        if (v22)
        {
          v31 = (v3 + v27);
          v32 = v23;
          v33 = v24;
          v34 = (v12 + v26);
          do
          {
            v35 = *v31++;
            v36 = v35;
            v37 = *v34++;
            *v33++ = v36 + v37;
            --v32;
          }

          while (v32);
        }

        ++v28;
        v27 += v29;
        v26 += v30;
        v24 += 4 * v23;
      }

      while (v28 != v21);
    }

    v38 = sub_1AF1AE3D8(a2);
    v39 = sub_1AF288070(1) * v23;
    v40 = v38;
    v41 = v25;
    v42 = 1;
    v43 = v23;
    v44 = v21;
  }

  else
  {
    v65 = a2;
    v46 = BYTE4(v72);
    v67 = sub_1AF288070(BYTE4(v72));
    v47 = malloc_type_malloc(v67 * v21, 0x8A25F0DFuLL);
    v64 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v47, v67 * v21, *MEMORY[0x1E695E480]);
    v66 = v21;
    if (v21)
    {
      v51 = v12;
      v52 = v3;
      v53 = 0;
      v54 = 0;
      v55 = BYTE6(v72);
      v56 = BYTE4(v70);
      v57 = BYTE6(v70);
      do
      {
        *v58.i64 = sub_1AF279750(v46, (v52 + v53), v48, v49, v50);
        v68 = v58;
        *v61.i64 = sub_1AF279750(v56, (v51 + v54), v58, v59, v60);
        sub_1AF279B88(v46, v47, vaddq_f32(v68, v61));
        v54 += v57;
        v53 += v55;
        v47 += v67;
        --v21;
      }

      while (v21);
    }

    v62 = sub_1AF1AE3D8(v65);
    v39 = sub_1AF288070(v46);
    v40 = v62;
    v25 = v64;
    v41 = v64;
    v42 = v46;
    v43 = 1;
    v44 = v66;
  }

  v45 = sub_1AF1ADC58(v40, v41, v42, v43, v44, v39, 0);
  CFRelease(v25);
  return v45;
}

uint64_t sub_1AF1AE6EC(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF12DB9C(*(a1 + 64));
}

uint64_t sub_1AF1AE738(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC428(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (!a2)
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC4A0(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v46 = 0u;
  sub_1AF1A767C(a2, a3, &v46);
  if (v47)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      LODWORD(v39) = 0;
      v45 = 0;
      v41 = v46;
      v42 = v47;
      v43 = v48;
      v44 = v49;
      sub_1AF1AE9B0(&v41, v22, &v39, &v45);
      v23 += (v45 - v39);
      ++v22;
    }

    while (v22 < v47);
  }

  else
  {
    v23 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  sub_1AF1AE1A8(a1, &v39);
  v24 = BYTE6(v40);
  if (sub_1AF288070(BYTE4(v40)) != v24)
  {
    v36 = sub_1AF0D5194();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDC518();
    }

    return 0;
  }

  if (!(v23 * v24))
  {
    return 0;
  }

  v25 = malloc_type_malloc(v23 * v24, 0x7747E81EuLL);
  if (v47)
  {
    v26 = 0;
    v27 = 0;
    v28 = v39;
    do
    {
      v45 = 0;
      v38 = 0;
      v41 = v46;
      v42 = v47;
      v43 = v48;
      v44 = v49;
      sub_1AF1AE9B0(&v41, v26, &v45, &v38);
      v29 = ((v38 - v45) * v24);
      memcpy(&v25[v27], (v28 + (v45 * v24)), v29);
      v27 += v29;
      ++v26;
    }

    while (v26 < v47);
  }

  v30 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v25, v23 * v24, *MEMORY[0x1E695E480]);
  v31 = sub_1AF1AE3D8(a1);
  v32 = BYTE8(v40);
  v33 = BYTE7(v40);
  v34 = sub_1AF288070(BYTE7(v40));
  v35 = sub_1AF1ADC58(v31, v30, v33, v32, v23, v34 * v32, 0);
  CFRelease(v30);
  return v35;
}

void sub_1AF1AE9B0(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a1 + 35;
  v7 = *(a1 + 35);
  v9 = a1[6];
  v10 = a1[7];
  v11 = v9 + v10 * 2 * a2;
  v12 = v10 * ((2 * (a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1);
  if (v12 + v9 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12 + v9;
  }

  if (a1[1] < (v7 + v7 * v13))
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[1];
      v21 = *(a1 + 35);
      v22 = 136315650;
      v23 = "CFXIndicesContentGetVertexIndicesForLinePrimitiveAtIndex";
      v24 = 1024;
      v25 = v13;
      v26 = 2048;
      v27 = v20 / v21;
      _os_log_error_impl(&dword_1AF0CE000, v14, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v22, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    return;
  }

  switch(v7)
  {
    case 4:
      v18 = *a1;
      *a3 = *(*a1 + 4 * v11);
      v16 = *(v18 + 4 * v9 + 4 * v12);
      goto LABEL_14;
    case 2:
      v17 = *a1;
      *a3 = *(*a1 + 2 * v11);
      v16 = *(v17 + 2 * v9 + 2 * v12);
      goto LABEL_14;
    case 1:
      v15 = *a1;
      *a3 = *(*a1 + v11);
      v16 = *(v15 + v9 + v12);
LABEL_14:
      *a4 = v16;
      return;
  }

  *a3 = 0;
  *a4 = 0;
  v19 = sub_1AF0D5194();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDC54C(v8, v19);
  }
}

float32x4_t sub_1AF1AEB70(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  sub_1AF1AE1A8(a1, &v10);
  result = 0uLL;
  v4 = v11;
  if (v11)
  {
    v5 = BYTE4(v11);
    v6 = v10;
    v7 = BYTE6(v11);
    do
    {
      v9 = result;
      *v8.i64 = sub_1AF279750(v5, v6, result, v1.f32[0], v2);
      v1 = vmaxnmq_f32(v9, vabsq_f32(v8));
      result = v1;
      v6 = (v6 + v7);
      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL sub_1AF1AEBF4(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  sub_1AF1AE1A8(a1, &v10);
  v4 = v10;
  if (!v10 || !v11)
  {
    return 0;
  }

  v5 = BYTE4(v11);
  v6 = BYTE6(v11);
  v7 = v11 - 1;
  do
  {
    *v1.i64 = sub_1AF279750(v5, v4, v1, v2, v3);
    v1.i32[0] = v1.i32[3];
    result = v1.f32[3] < 1.0;
    v9 = v1.f32[3] < 1.0 || v7-- == 0;
    v4 = (v4 + v6);
  }

  while (!v9);
  return result;
}

uint64_t sub_1AF1AEC88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC428(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v56 = 0u;
  v57 = 0u;
  sub_1AF1AE1A8(a1, &v56);
  v16 = v56;
  if (!v56)
  {
    return 0;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  sub_1AF1A767C(a2, a4, &v52);
  if (BYTE2(v54) != 2)
  {
    v17 = sub_1AF0D5194();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC5C8(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v25 = sub_1AF288070(BYTE4(v57));
  v26 = v25 * a3;
  v27 = malloc_type_malloc(v25 * a3, 0xF76C8875uLL);
  MEMORY[0x1EEE9AC00](v27, v28);
  bzero(&v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  if (v53)
  {
    v47 = v25 * a3;
    v48 = &v46;
    v49 = a3;
    v29 = 0;
    LODWORD(v30) = 0;
    v31 = BYTE6(v57);
    do
    {
      v51 = 0;
      v50[0] = v52;
      v50[1] = v53;
      v50[2] = v54;
      v50[3] = v55;
      sub_1AF1AE9B0(v50, v29, &v51 + 1, &v51);
      v32 = HIDWORD(v51);
      if (HIDWORD(v51) > v30)
      {
        v33 = &v27[v25 * v30];
        v34 = HIDWORD(v51) - v30;
        do
        {
          memcpy(v33, &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
          v33 += v25;
          --v34;
        }

        while (v34);
      }

      v30 = v51;
      if (v51 > v32)
      {
        v35 = &v27[v25 * v32];
        v36 = v51 - v32;
        do
        {
          memcpy(v35, v16, v25);
          v16 += v31;
          v35 += v25;
          --v36;
        }

        while (v36);
      }

      ++v29;
    }

    while (v29 < v53);
    a3 = v49;
    v26 = v47;
  }

  else
  {
    v30 = 0;
  }

  v38 = a3 - v30;
  if (a3 > v30)
  {
    v39 = &v27[v25 * v30];
    do
    {
      memcpy(v39, &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
      v39 += v25;
      --v38;
    }

    while (v38);
  }

  v40 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v27, v26, *MEMORY[0x1E695E480]);
  v41 = sub_1AF1AE3D8(a1);
  v42 = BYTE8(v57);
  v43 = BYTE7(v57);
  v44 = sub_1AF288070(BYTE7(v57));
  v37 = sub_1AF1ADC58(v41, v40, v43, v42, a3, v44 * v42, 0);
  CFRelease(v40);
  return v37;
}

uint64_t sub_1AF1AEF80(uint64_t a1)
{
  v2 = sub_1AF1ADB94();
  v3 = sub_1AF1CB2E4(*(a1 + 64));
  sub_1AF16FB7C(v2, v3);
  sub_1AF1CB108(v3, v2, v4, v5);
  CFRelease(v3);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  if (v7)
  {
    sub_1AF16FD80(v2, v6, v7);
  }

  else
  {
    sub_1AF16FCB0(v2, v6);
  }

  *(v2 + 96) = *(a1 + 96);
  return v2;
}

uint64_t sub_1AF1AF000(uint64_t a1)
{
  v2 = sub_1AF1ADB94();
  sub_1AF16FDD8(a1, v2);
  *(v2 + 96) = *(a1 + 96);
  return v2;
}

uint64_t sub_1AF1AF040(uint64_t a1)
{
  v2 = sub_1AF1ADB94();
  sub_1AF1700F0(a1, v2);
  *(v2 + 96) = *(a1 + 96);
  return v2;
}

double sub_1AF1AF084(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v6, v7, a3, a4, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  v13 = sub_1AF1CAF40(v12, a2, a3, a4);
  if (!v13)
  {
    return 0.0;
  }

  v14 = v13;
  v15 = sub_1AF1CAEE0(v12);
  return sub_1AF279750(v15, v14, v16, v17, v18);
}

double sub_1AF1AF104(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v6, v7, a3, a4, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 64);
  v13 = sub_1AF1CAF40(v12, a2, a3, a4);
  v14 = sub_1AF1CAEE0(v12);
  return sub_1AF279750(v14, v13, v15, v16, v17);
}

uint64_t sub_1AF1AF184(uint64_t a1, unsigned int a2, int a3)
{
  v23 = 0u;
  v24 = 0u;
  sub_1AF1AE1A8(a1, &v23);
  v6 = sub_1AF2885E4(BYTE7(v24), BYTE8(v24));
  if (v6 != a2)
  {
    v8 = v6;
    v9 = sub_1AF288070(a2);
    v10 = v9;
    if ((v9 & 3) != 0)
    {
      v11 = -v9 & 3;
    }

    else
    {
      v11 = 0;
    }

    if (sub_1AF2795E8(a2, v8))
    {
      v12 = v11 + v10;
      v13 = v24;
      v14 = v12 * v24;
      if (a3)
      {
        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v12 * v24);
        CFDataSetLength(Mutable, v14);
      }

      else
      {
        v18 = malloc_type_calloc(v12 * v24, 1uLL, 0xA183863BuLL);
        Mutable = CFDataCreateWithBytesNoCopy(0, v18, v14, 0);
      }

      BytePtr = CFDataGetBytePtr(Mutable);
      sub_1AF27964C(BytePtr, v12 | (a2 << 16) | (v13 << 32), v23, BYTE6(v24) | (BYTE4(v24) << 16) | (v13 << 32));
      v20 = sub_1AF1AE3D8(a1);
      if (a3)
      {
        v21 = sub_1AF1ADDB0(v20, Mutable, a2, 1, v13, v12, 0);
      }

      else
      {
        v21 = sub_1AF1ADC58(v20, Mutable, a2, 1, v13, v12, 0);
      }

      v7 = v21;
      CFRelease(Mutable);
      v22 = sub_1AF17032C(v7);
      sub_1AF1CB654(v22, v11);
    }

    else
    {
      v17 = sub_1AF0D5194();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDC640(v8, a2, v17);
      }

      return 0;
    }

    return v7;
  }

  if (a3)
  {
    v7 = sub_1AF1ADB94();
    sub_1AF1700F0(a1, v7);
    *(v7 + 96) = *(a1 + 96);
    return v7;
  }

  return sub_1AF1AEF80(a1);
}

size_t sub_1AF1AF380(uint64_t a1, uint64_t a2)
{
  v18 = 0u;
  v19 = 0u;
  result = sub_1AF1AE1A8(a1, &v18);
  v5 = v18;
  if (v18)
  {
    v6 = sub_1AF1AE3D8(a1);
    v7 = sub_1AF1ADAF8(v6);
    v8 = MEMORY[0x1E69E9858];
    v9 = *MEMORY[0x1E69E9858];
    CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
    result = fprintf(v9, "%s\n", CStringPtr);
    v11 = v19 >= a2 ? a2 : v19;
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = BYTE4(v19);
      v14 = BYTE6(v19);
      do
      {
        if (v13 <= 23)
        {
          switch(v13)
          {
            case 7:
              v17 = *v8;
              goto LABEL_25;
            case 8:
              v16 = *v8;
              goto LABEL_24;
            case 9:
              v15 = *v8;
LABEL_26:
              result = fprintf(v15, "%4d : %+.2f %+.2f %+.2f %+.2f\n");
              goto LABEL_27;
          }
        }

        else if (v13 > 42)
        {
          if (v13 == 43)
          {
            v16 = *v8;
LABEL_24:
            result = fprintf(v16, "%4d : %+.2f %+.2f %+.2f\n");
            goto LABEL_27;
          }

          if (v13 == 44)
          {
            v15 = *v8;
            goto LABEL_26;
          }
        }

        else
        {
          if (v13 == 24)
          {
            result = fprintf(*v8, "%4d : %3d %3d %3d %3d\n");
            goto LABEL_27;
          }

          if (v13 == 42)
          {
            v17 = *v8;
LABEL_25:
            result = fprintf(v17, "%4d : %+.2f %+.2f\n");
            goto LABEL_27;
          }
        }

        result = fwrite("type debugging not implemented\n", 0x1FuLL, 1uLL, *v8);
LABEL_27:
        ++v12;
        v5 += v14;
      }

      while (v11 != v12);
    }
  }

  return result;
}

uint64_t sub_1AF1AF854(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 99);
}

void sub_1AF1AF89C(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB710(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 99) = a2;
}

id sub_1AF1AF8F4(const void *a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshSourceWillDie", a1, 0, 1u);

  return sub_1AF16F9B4(a1);
}

__CFString *sub_1AF1AF94C(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF1CAED8(*(a1 + 64));
  v4 = sub_1AF1CAED0(*(a1 + 64));
  v5 = sub_1AF1AE6EC(a1);
  v6 = sub_1AF170230(a1);
  v10 = sub_1AF170374(a1);
  v11 = *(a1 + 64);
  if (v6)
  {
    v12 = sub_1AF170230(a1);
  }

  else
  {
    v12 = sub_1AF1701CC(a1, v7, v8, v9);
  }

  v13 = v12;
  v14 = v6 != 0;
  v15 = sub_1AF2885E4(v3, v4);
  v16 = sub_1AF3753A8(a1);
  v17 = sub_1AF1ADAF8(*(a1 + 96));
  v18 = sub_1AF2883D8(v15);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@ data:(%p) mut:%d count:%ld type:%@ divisor:%d mtl:%d offset:%zu stride:%zu", v16, a1, v17, v13, v10, v5, v18, *(a1 + 98), v14, *(v11 + 48), *(v11 + 40));
  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFArray *sub_1AF1AFA84(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 64;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v3, @"name", @"accessor");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 2;
  valuePtr = 5;
  v16 = a1 + 72;
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v10 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v7, @"name", @"data");
  CFDictionarySetValue(v7, @"type", v8);
  CFDictionarySetValue(v7, @"address", v10);
  CFDictionarySetValue(v7, @"semantic", v9);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v9);
  CFRelease(v7);
  CFRelease(v10);
  CFRelease(v8);
  v11 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = 0;
  valuePtr = 2;
  v16 = a1 + 96;
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  v14 = CFNumberCreate(0, kCFNumberLongType, &v16);
  CFDictionarySetValue(v11, @"name", @"semantic");
  CFDictionarySetValue(v11, @"type", v12);
  CFDictionarySetValue(v11, @"address", v14);
  CFDictionarySetValue(v11, @"semantic", v13);
  CFArrayAppendValue(Mutable, v11);
  CFRelease(v13);
  CFRelease(v11);
  CFRelease(v14);
  CFRelease(v12);
  return Mutable;
}

void sub_1AF1AFDA8(uint64_t a1, char a2)
{
  v3 = a1;
  v117 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC6F4();
    }
  }

  v5 = *(v3 + 120);
  if (v5)
  {
    if (*(v3 + 152))
    {
      return;
    }

    CFRelease(v5);
    *(v3 + 120) = 0;
  }

  v91 = a2;
  v6 = *(v3 + 152);
  if (v6)
  {
    CFRelease(v6);
    *(v3 + 152) = 0;
  }

  free(*(v3 + 176));
  *(v3 + 176) = 0;
  *(v3 + 168) = 0;
  free(*(v3 + 184));
  *(v3 + 184) = 0;
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  sub_1AF1B06E0(v3, &v104, &v103, &v102, &v101, &v100);
  v7 = v104;
  if (v104)
  {
    v8 = v103;
    if (!v103)
    {
      v21 = sub_1AF0D5194();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDC9CC(v3, v21, v22, v23, v24, v25, v26, v27);
      }

      v20 = v7;
      goto LABEL_83;
    }

    Count = CFArrayGetCount(v104);
    if (Count < 1)
    {
LABEL_15:
      v89 = 0;
    }

    else
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
        if (!sub_1AF1AE3D8(ValueAtIndex))
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_15;
        }
      }

      v89 = ValueAtIndex;
    }

    v28 = CFArrayGetCount(v8);
    allocator = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v28, MEMORY[0x1E695E9C0]);
    v30 = Mutable;
    if (v28 < 1)
    {
LABEL_72:
      CFRelease(v8);
      if (v28 != CFArrayGetCount(v30))
      {
        v71 = sub_1AF0D5194();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDDC8CC();
        }
      }

      *(v3 + 120) = v104;
      *(v3 + 152) = v30;
      v72 = v102;
      *(v3 + 168) = v101;
      v73 = v100;
      *(v3 + 176) = v72;
      *(v3 + 184) = v73;
      sub_1AF1A2768(v3);
      if ((v91 & 1) == 0)
      {
        sub_1AF1A2A5C(v3);
      }

      return;
    }

    v31 = 0;
    bytesDeallocator = *MEMORY[0x1E695E488];
    theArray = Mutable;
    v83 = v28;
LABEL_26:
    idx = v31;
    v32 = CFArrayGetValueAtIndex(v103, v31);
    v33 = v32;
    if (v32[88] != 4)
    {
      v46 = CFRetain(v32);
      if (v46)
      {
        goto LABEL_68;
      }

      goto LABEL_80;
    }

    if (!*(v32 + 12))
    {
      goto LABEL_80;
    }

    if (sub_1AF1A7634(v32) != 1)
    {
      v76 = sub_1AF0D5194();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDC774();
      }

      goto LABEL_80;
    }

    v34 = v33[80];
    Length = CFDataGetLength(*(v33 + 12));
    BytePtr = CFDataGetBytePtr(*(v33 + 12));
    v37 = *(v33 + 26);
    if (v37)
    {
      v38 = BytePtr;
      v39 = 0;
      v40 = 0;
      LOBYTE(v41) = 1;
      do
      {
        v42 = sub_1AF1B1BEC(v38, v40, v34, Length);
        v43 = v42;
        if (v42 <= 2)
        {
          if ((byte_1EB658611 & 1) == 0)
          {
            byte_1EB658611 = 1;
            v74 = sub_1AF0D5194();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDDC800(v43, v74);
            }
          }

          goto LABEL_80;
        }

        v41 = (v42 == 3) & v41;
        v39 += v42 - 2;
        ++v40;
      }

      while (v37 != v40);
      if (v41)
      {
        v44 = CFDataGetLength(*(v33 + 12));
        v45 = CFDataCreate(allocator, (v38 + v37 * v34), v44 - v37 * v34);
        v46 = sub_1AF1A6834();
        sub_1AF1A6A70(v46, 0, *(v33 + 26), v45, v34);
        v47 = v45;
        goto LABEL_67;
      }

      v48 = malloc_type_malloc(v39 * 3 * v34, 0x100004077774924uLL);
      if (!v48)
      {
        goto LABEL_80;
      }

      v88 = v48;
      v86 = v39 * 3 * v34;
      v49 = 0;
      v90 = 0;
      v50 = 0;
      v84 = v37 + 2;
      v85 = v37 + 1;
      v77 = v37 + 3;
      v82 = v3;
      v95 = v37;
      while (1)
      {
        v51 = sub_1AF1B1BEC(v38, v50, v34, Length);
        if (v51 >= 3)
        {
          break;
        }

LABEL_65:
        if (++v50 == v37)
        {
          v69 = CFDataCreateWithBytesNoCopy(allocator, v88, v39 * 3 * v34, bytesDeallocator);
          v46 = sub_1AF1A6834();
          sub_1AF1A6A70(v46, 0, v39, v69, v34);
          v47 = v69;
LABEL_67:
          CFRelease(v47);
          v28 = v83;
          if (!v46)
          {
            goto LABEL_80;
          }

LABEL_68:
          v70 = sub_1AF1A3D1C(v3, idx, 0);
          if (v70)
          {
            v46[11] = v70[11];
            v46[12] = v70[12];
          }

          v30 = theArray;
          CFArrayAppendValue(theArray, v46);
          CFRelease(v46);
          v31 = idx + 1;
          if (idx + 1 == v28)
          {
            v8 = v103;
            goto LABEL_72;
          }

          goto LABEL_26;
        }
      }

      v52 = v51;
      v53 = v49 + v37;
      v54 = v49 + v37 + v51 - 1;
      if (v34 * v54 > Length)
      {
        v96 = v49;
        v55 = sub_1AF0D5194();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110144;
          v108 = v50;
          v109 = 1024;
          v110 = v52;
          v111 = 1024;
          v112 = v53;
          v113 = 1024;
          v114 = v54;
          v115 = 1024;
          v116 = Length / v34;
          _os_log_error_impl(&dword_1AF0CE000, v55, OS_LOG_TYPE_ERROR, "Error: __CFXMeshElementCreateRenderablePrimitiveTypeCopy - polygon %u (%u vertices, indices [%u, %u]) does not fit in index buffer (%u elements)", buf, 0x20u);
        }

        v39 -= v52 - 2;
        v37 = v95;
        v49 = v96;
        goto LABEL_65;
      }

      if (v51 == 4)
      {
        v57 = sub_1AF1B1BEC(v38, v53, v34, Length);
        v80 = sub_1AF1B1BEC(v38, v49 + v85, v34, Length);
        v58 = sub_1AF1B1BEC(v38, v49 + v84, v34, Length);
        v59 = v49;
        v60 = v58;
        v97 = v59 + 4;
        v93 = sub_1AF1B1BEC(v38, v77 + v59, v34, Length);
        sub_1AF1B1804(v88, v90, v57, v34, v86);
        sub_1AF1B1804(v88, v90 + 1, v80, v34, v86);
        sub_1AF1B1804(v88, v90 + 2, v60, v34, v86);
        sub_1AF1B1804(v88, v90 + 3, v57, v34, v86);
        sub_1AF1B1804(v88, v90 + 4, v60, v34, v86);
        v3 = v82;
        sub_1AF1B1804(v88, v90 + 5, v93, v34, v86);
        v90 += 6;
        goto LABEL_50;
      }

      if (v51 == 3)
      {
        v56 = sub_1AF1B1BEC(v38, v53, v34, Length);
        v92 = sub_1AF1B1BEC(v38, v49 + v85, v34, Length);
        v97 = v49 + 3;
        v79 = sub_1AF1B1BEC(v38, v49 + v84, v34, Length);
        sub_1AF1B1804(v88, v90, v56, v34, v86);
        sub_1AF1B1804(v88, v90 + 1, v92, v34, v86);
        sub_1AF1B1804(v88, v90 + 2, v79, v34, v86);
        v90 += 3;
LABEL_50:
        v49 = v97;
LABEL_64:
        v37 = v95;
        goto LABEL_65;
      }

      if (!v89)
      {
        goto LABEL_64;
      }

      v61 = malloc_type_malloc(4 * v51, 0x100004052888210uLL);
      v62 = 0;
      v98 = v49;
      do
      {
        v61[v62] = sub_1AF1B1BEC(v38, v95 + v49 + v62, v34, Length);
        ++v62;
      }

      while (v52 != v62);
      *buf = 0;
      v63 = sub_1AF2879EC(v89, v61, v52, buf);
      v64 = v63;
      v65 = v52 - 2;
      if (*buf)
      {
        if (*buf == 3 * v65)
        {
          v81 = v38;
          v66 = 0;
          v67 = v63;
          do
          {
            sub_1AF1B1804(v88, v90 + v66, v67[v66], v34, v86);
            ++v66;
          }

          while (v66 < *buf);
          v90 += v66;
          v64 = v67;
          v38 = v81;
          v3 = v82;
          goto LABEL_62;
        }

        v68 = sub_1AF0D5194();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDC88C(&v105, v106, v68);
        }
      }

      v39 -= v65;
      v3 = v82;
      if (!v64)
      {
LABEL_63:
        free(v61);
        v49 = v52 + v98;
        goto LABEL_64;
      }

LABEL_62:
      free(v64);
      goto LABEL_63;
    }

    v46 = sub_1AF1A6834();
    sub_1AF1A6A70(v46, 0, 0, 0, 0);
    if (v46)
    {
      goto LABEL_68;
    }

LABEL_80:
    v75 = sub_1AF0D5194();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDC94C();
    }

    v20 = theArray;
LABEL_83:
    CFRelease(v20);
  }

  else
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDC9CC(v3, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = v103;
    if (v103)
    {
      goto LABEL_83;
    }
  }
}

void sub_1AF1B06E0(uint64_t a1, __CFArray **a2, __CFArray **a3, void *a4, _DWORD *a5, void *a6)
{
  v230 = *MEMORY[0x1E69E9840];
  v178 = a2;
  *a2 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  v189 = a1;
  *&v205 = sub_1AF1A4CE8(a1, 0);
  if (!v205)
  {
    v16 = sub_1AF0D5194();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDCC90(v189, v16, v17, v18, v19, v20, v21, v22);
    }

    return;
  }

  Count = CFArrayGetCount(*(a1 + 72));
  v185 = CFArrayGetCount(*(a1 + 104));
  v206 = Count;
  if (Count < 1)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = sub_1AF1A4C10(v189, v13);
    v15 = v14;
    if (v13)
    {
      break;
    }

LABEL_7:
    v13 = (v13 + 1);
    v12 = v15;
    if (v206 == v13)
    {
      goto LABEL_12;
    }
  }

  if (v12 == v14)
  {
    v15 = v12;
    goto LABEL_7;
  }

  if (v185 < 1)
  {
    v15 = v12;
    goto LABEL_12;
  }

  v31 = sub_1AF1A3D1C(v189, 0, 0);
  v172 = a5;
  v173 = a6;
  v171 = a4;
  if (!sub_1AF1A7E6C(v31))
  {
    goto LABEL_44;
  }

  v33 = a3;
  *&v32 = 134218496;
  v204 = v32;
  v34 = 1;
  do
  {
    v35 = v34;
    v36 = sub_1AF1A7634(v31);
    if (v36 >= 2 && (byte_1EB658610 & 1) == 0)
    {
      v37 = v36;
      byte_1EB658610 = 1;
      v38 = sub_1AF0D5194();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v221[0]) = v204;
        *(v221 + 4) = v31;
        WORD6(v221[0]) = 2048;
        *(v221 + 14) = v189;
        WORD3(v221[1]) = 1024;
        DWORD2(v221[1]) = v37;
        _os_log_error_impl(&dword_1AF0CE000, v38, OS_LOG_TYPE_ERROR, "Warning: Mesh element %p of mesh %p has %d channels but they all define the same topology", v221, 0x1Cu);
      }
    }

    if (v185 == v35)
    {
      break;
    }

    v31 = sub_1AF1A3D1C(v189, v35, 0);
    v39 = sub_1AF1A7E6C(v31);
    v34 = v35 + 1;
  }

  while (v39);
  v15 = v12;
  v53 = v35 < v185;
  a3 = v33;
  if (v53)
  {
LABEL_44:
    v175 = a3;
    v54 = *MEMORY[0x1E695E480];
    v55 = MEMORY[0x1E695E9C0];
    v56 = v206;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v206, MEMORY[0x1E695E9C0]);
    v183 = v54;
    v184 = CFArrayCreateMutable(v54, v185, v55);
    v170[1] = v170;
    MEMORY[0x1EEE9AC00](v184, v57);
    v199 = 0;
    LODWORD(v58) = 0;
    v59 = 0;
    v174 = &v170[-8 * v56];
    v60 = v174 + 15;
    do
    {
      v61 = v189;
      ValueAtIndex = CFArrayGetValueAtIndex(*(v189 + 72), v59);
      v63 = sub_1AF1AF080(ValueAtIndex);
      v64 = sub_1AF1A4C10(v61, v59);
      v65 = sub_1AF12DB9C(v63);
      v66 = sub_1AF1CAED8(v63);
      v67 = sub_1AF1CAED0(v63);
      v68 = sub_1AF288070(v66);
      if (v66 == 14 && v67 == 3)
      {
        v70 = 4 * sub_1AF288070(14);
        v67 = 4;
      }

      else
      {
        v70 = v68 * v67;
      }

      *(v60 - 15) = ValueAtIndex;
      *(v60 - 13) = v63;
      *(v60 - 44) = v64;
      *(v60 - 9) = v70;
      *(v60 - 14) = v66;
      *(v60 - 5) = v67;
      *(v60 - 1) = 0;
      *v60 = v65;
      *(v60 - 3) = malloc_type_malloc(v70 * v65, 0x22EC32FAuLL);
      if (ValueAtIndex == v205)
      {
        v58 = v65;
      }

      else
      {
        v58 = v58;
      }

      if (ValueAtIndex == v205)
      {
        v71 = v64;
      }

      else
      {
        v71 = v199;
      }

      v199 = v71;
      v59 = (v59 + 1);
      v60 += 16;
    }

    while (v206 != v59);
    v207 = 0uLL;
    *&v208 = 0;
    v177 = v58;
    v198 = malloc_type_calloc(v58, 4uLL, 0x100004052888210uLL);
    v73 = MEMORY[0x1EEE9AC00](v198, v72);
    v182 = v170 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    v197 = 0;
    v75 = 0;
    v212 = 0;
    v213 = 0;
    v211 = &v212;
    v181 = *MEMORY[0x1E695E488];
    v192 = (v174 + 2);
    v200 = (v174 + 6);
    v73.n128_u64[0] = 134218498;
    v180 = v73;
    v73.n128_u64[0] = 67109632;
    v179 = v73;
    do
    {
      v76 = sub_1AF1A3D1C(v189, v75, 0);
      v188 = sub_1AF1A7034(v76);
      v77 = sub_1AF1A7674(v76);
      LODWORD(v205) = sub_1AF1A809C(v76);
      v78 = sub_1AF1A70CC(v76);
      v222 = 0;
      v193 = v78;
      memset(v221, 0, sizeof(v221));
      v196 = v76;
      sub_1AF1A79D0(v76, v221);
      v187 = v75;
      v79 = &v182[40 * v75];
      v80 = v221[1];
      *v79 = v221[0];
      *(v79 + 1) = v80;
      v202 = v79;
      *(v79 + 4) = v222;
      v195 = v77;
      v81 = 0;
      if (v77 < 1)
      {
        v83 = v77;
      }

      else
      {
        v82 = 0;
        v83 = v77;
        do
        {
          v84 = sub_1AF1A7798(v196, v82);
          if (v84 >= 1)
          {
            v85 = v84;
            v86 = 0;
            while (2)
            {
              v87 = v192;
              v88 = v206;
              do
              {
                v89 = sub_1AF12DB9C(*(v87 - 1));
                *buf = v221[0];
                *&buf[16] = v221[1];
                v228.n128_u64[0] = v222;
                v90 = sub_1AF1A7BA8(buf, v82, v86, *v87);
                if (v90 >= v89)
                {
                  v91 = v90;
                  v92 = sub_1AF0D5194();
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                  {
                    v94 = *(v87 - 2);
                    v95 = sub_1AF1AE3D8(v94);
                    v96 = sub_1AF1ADAF8(v95);
                    *buf = v180.n128_u32[0];
                    *&buf[4] = v94;
                    *&buf[12] = 2112;
                    *&buf[14] = v96;
                    *&buf[22] = 1024;
                    *&buf[24] = v91;
                    _os_log_error_impl(&dword_1AF0CE000, v92, OS_LOG_TYPE_ERROR, "Error: Deindexer issue - source %p (%@) has no original data at index %u", buf, 0x1Cu);
                  }

                  v93 = sub_1AF0D5194();
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v179.n128_u32[0];
                    *&buf[4] = v82;
                    *&buf[8] = 1024;
                    *&buf[10] = v187;
                    *&buf[14] = 2048;
                    *&buf[16] = v196;
                    _os_log_error_impl(&dword_1AF0CE000, v93, OS_LOG_TYPE_ERROR, "Error: Deindexer issue - will discard face #%u of element at index %d (%p)", buf, 0x18u);
                  }

                  v77 = v195;
                  if (!v81)
                  {
                    v81 = malloc_type_calloc(v195, 1uLL, 0x100004077774924uLL);
                  }

                  --v83;
                  v193 -= v85;
                  v81[v82] = 1;
                  goto LABEL_75;
                }

                v87 += 64;
                v88 = (v88 - 1);
              }

              while (v88);
              if (++v86 != v85)
              {
                continue;
              }

              break;
            }

            v77 = v195;
          }

LABEL_75:
          ++v82;
        }

        while (v82 != v77);
      }

      v191 = v81;
      v97 = v205;
      v186 = v83;
      if (v188 == 4)
      {
        v203 = (v83 + v193) * v205;
        v98 = malloc_type_malloc(v203, 0x100004077774924uLL);
        v99 = v191;
        if (v191)
        {
          if (v77 < 1)
          {
            v101 = 0;
          }

          else
          {
            v100 = 0;
            v101 = 0;
            do
            {
              v102 = *v99++;
              if ((v102 & 1) == 0)
              {
                BytePtr = CFDataGetBytePtr(v196[12]);
                memcpy(v98 + v101, &BytePtr[v100], v97);
                v101 += v97;
              }

              v100 += v97;
              --v77;
            }

            while (v77);
          }

          if (v101 == v83 * v97)
          {
            v190 = v186;
            v77 = v195;
          }

          else
          {
            v105 = sub_1AF0D5194();
            v106 = os_log_type_enabled(v105, OS_LOG_TYPE_FAULT);
            v107 = v186;
            v77 = v195;
            if (v106)
            {
              sub_1AFDDCA38(v219, &v220, v105);
            }

            v190 = v107;
          }
        }

        else
        {
          v104 = CFDataGetBytePtr(v196[12]);
          memcpy(v98, v104, v83 * v97);
          v190 = v83;
        }
      }

      else
      {
        v203 = v193 * v205;
        v98 = malloc_type_malloc(v203, 0x100004077774924uLL);
        v190 = 0;
      }

      if (v77 < 1)
      {
        v108 = 0;
        v110 = v191;
      }

      else
      {
        v108 = 0;
        v109 = 0;
        v110 = v191;
        v201 = v98;
        do
        {
          if (!v110 || (v110[v109] & 1) == 0)
          {
            *&v205 = sub_1AF1A7798(v196, v109);
            v194 = v108;
            if (v205 >= 1)
            {
              v111 = 0;
              *&v204 = v108 + v190;
              do
              {
                v112 = v213;
                *buf = v202;
                *&buf[8] = v109;
                *&buf[16] = v111;
                *&buf[24] = v213;
                v113 = sub_1AF1B19B0(&v211, buf);
                v115 = v114;
                v116 = v97;
                sub_1AF1B1804(v98, v204 + v111, *(v113 + 56), v97, v203);
                v117 = v200;
                v118 = v206;
                if (v115)
                {
                  do
                  {
                    v120 = *(v117 + 2);
                    v119 = *(v117 + 3);
                    if (v119 == v120)
                    {
                      v121 = (2 * v119);
                      *(v117 + 3) = v121;
                      v122 = *(v117 - 3);
                      v123 = malloc_type_realloc(*v117, v122 * v121, 0x36D65746uLL);
                      *v117 = v123;
                    }

                    else
                    {
                      v123 = *v117;
                      v122 = *(v117 - 3);
                    }

                    v124 = &v123[v122 * v120];
                    *buf = v221[0];
                    *&buf[16] = v221[1];
                    v228.n128_u64[0] = v222;
                    v125 = sub_1AF1A7BA8(buf, v109, v111, *(v117 - 32));
                    v128 = sub_1AF1CAF40(*(v117 - 5), v125, v126, v127);
                    memcpy(v124, v128, v122);
                    if (v120 != v112)
                    {
                      v129 = sub_1AF0D5194();
                      if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
                      {
                        sub_1AFDDCA7C(v217, &v218, v129);
                      }
                    }

                    *(v117 + 2) = v120 + 1;
                    v117 += 8;
                    v118 = (v118 - 1);
                  }

                  while (v118);
                  *buf = v221[0];
                  *&buf[16] = v221[1];
                  v228.n128_u64[0] = v222;
                  *buf = sub_1AF1A7BA8(buf, v109, v111, v199);
                  sub_1AF121C58(&v207, buf);
                  if (!v198[*buf])
                  {
                    v198[*buf] = (*(&v207 + 1) - v207) >> 2;
                  }
                }

                else
                {
                  v197 = 1;
                }

                v97 = v116;
                ++v111;
                v98 = v201;
              }

              while (v111 != v205);
            }

            v108 = v205 + v194;
            v110 = v191;
          }

          ++v109;
        }

        while (v109 != v195);
      }

      free(v110);
      if (v108 != v193)
      {
        v130 = sub_1AF0D5194();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDDCAC0(v215, &v216, v130);
        }
      }

      v131 = CFDataCreateWithBytesNoCopy(v183, v98, v203, v181);
      v132 = sub_1AF1A6834();
      sub_1AF1A6A70(v132, v188, v186, v131, v97);
      CFArrayAppendValue(v184, v132);
      CFRelease(v132);
      CFRelease(v131);
      v75 = v187 + 1;
    }

    while (v187 + 1 != v185);
    if ((v197 & 1) == 0)
    {
      v134 = sub_1AF0D5194();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v221[0]) = 134217984;
        *(v221 + 4) = v189;
        _os_log_impl(&dword_1AF0CE000, v134, OS_LOG_TYPE_DEFAULT, "Warning: Mesh %p has multiple channels but deindexing didn't have any effect", v221, 0xCu);
      }
    }

    *buf = 0;
    v136 = Mutable;
    v135 = v177;
    if (v177)
    {
      v137 = 0;
      v138 = 0;
      v139 = 0;
      v140 = (v174 + 6);
      *&v133 = 67109376;
      v205 = v133;
      do
      {
        v141 = v198[v139];
        if (v141)
        {
          v198[v139] = v141 - 1;
        }

        else
        {
          v142 = sub_1AF0D5194();
          if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
          {
            *&v221[0] = __PAIR64__(*buf, v205);
            WORD4(v221[0]) = 1024;
            *(v221 + 10) = v177;
            _os_log_impl(&dword_1AF0CE000, v142, OS_LOG_TYPE_DEFAULT, "Warning: Deindexing - Vertex at index %u of %u is not used by any mesh element", v221, 0xEu);
          }

          v143 = v140;
          v144 = v206;
          if ((v137 & 1) == 0)
          {
            do
            {
              v146 = *(v143 + 2);
              v145 = *(v143 + 3);
              if (v145 == v146)
              {
                v147 = (v145 + 1);
                *(v143 + 3) = v147;
                v148 = *(v143 - 3);
                v149 = malloc_type_realloc(*v143, v148 * v147, 0x43FBAE61uLL);
                *v143 = v149;
              }

              else
              {
                v149 = *v143;
                v148 = *(v143 - 3);
              }

              bzero(&v149[v148 * v146], v148);
              *(v143 + 2) = v146 + 1;
              v143 += 8;
              v144 = (v144 - 1);
            }

            while (v144);
            sub_1AF121C58(&v207, buf);
            v138 = ((*(&v207 + 1) - v207) >> 2) - 1;
          }

          v198[*buf] = v138;
          v137 = 1;
          v136 = Mutable;
          v135 = v177;
        }

        v139 = *buf + 1;
        *buf = v139;
      }

      while (v139 < v135);
    }

    v150 = *(&v207 + 1) - v207;
    *&v205 = (*(&v207 + 1) - v207) >> 2;
    v151 = malloc_type_malloc((*(&v207 + 1) - v207) & 0x3FFFFFFFCLL, 0x100004052888210uLL);
    memcpy(v151, v207, v150 & 0x3FFFFFFFCLL);
    v152 = (v174 + 4);
    v153 = v206;
    v154 = v183;
    do
    {
      v155 = *(v152 + 6);
      v156 = sub_1AF1AE3D8(*(v152 - 4));
      v157 = *(v152 - 1);
      v158 = CFDataCreate(v154, *(v152 + 2), v157 * v155);
      v159 = sub_1AF1ADC58(v156, v158, *v152, *(v152 + 1), v155, v157, 0);
      CFArrayAppendValue(v136, v159);
      CFRelease(v159);
      CFRelease(v158);
      v152 += 32;
      v153 = (v153 - 1);
    }

    while (v153);
    v160 = (v174 + 6);
    v161 = v206;
    do
    {
      v162 = *v160;
      v160 += 8;
      free(v162);
      v161 = (v161 - 1);
    }

    while (v161);
    v163 = CFArrayGetCount(v136);
    v164 = v175;
    v165 = v171;
    if (v206 != v163)
    {
      v166 = sub_1AF0D5194();
      if (os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDCB04();
      }
    }

    v167 = CFArrayGetCount(v184);
    if (v185 != v167)
    {
      v168 = sub_1AF0D5194();
      if (os_log_type_enabled(v168, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDCB84();
      }
    }

    *v178 = v136;
    *v164 = v184;
    *v165 = v151;
    v169 = v173;
    *v172 = v205;
    *v169 = v198;
    sub_1AF112128(&v211, v212);
    if (v207)
    {
      *(&v207 + 1) = v207;
      operator delete(v207);
    }
  }

  else
  {
LABEL_12:
    v23 = v189;
    v24 = sub_1AF1A3CCC(v189);
    v25 = v24;
    if (v24)
    {
      v26 = 0;
      while (1)
      {
        v27 = sub_1AF1A3D1C(v189, v26, 0);
        v28 = sub_1AF1A7634(v27);
        if (v28 <= v15)
        {
          v40 = sub_1AF0D5194();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDDCC04(v15, v27, v40);
          }

          return;
        }

        if (v28 >= 2)
        {
          break;
        }

        if (v25 == ++v26)
        {
          goto LABEL_17;
        }
      }

      v175 = a3;
      v206 = *MEMORY[0x1E695E480];
      MutableCopy = CFArrayCreateMutable(v206, v25, MEMORY[0x1E695E9C0]);
      v41 = 0;
      v202 = &v221[1];
      v203 = v15;
      v201 = *MEMORY[0x1E695E488];
      *&v205 = v25;
      *&v204 = MutableCopy;
      do
      {
        v42 = sub_1AF1A3D1C(v23, v41, 0);
        if (sub_1AF1A7634(v42) == 1)
        {
          CFArrayAppendValue(MutableCopy, v42);
        }

        else
        {
          v43 = sub_1AF1A7034(v42);
          v44 = sub_1AF1A7674(v42);
          v45 = sub_1AF1A809C(v42);
          v46 = sub_1AF1A70CC(v42);
          if (v43 == 4)
          {
            v47 = v45 * (v46 + v44);
            v48 = malloc_type_malloc(v47, 0x100004077774924uLL);
            v49 = v44;
            v50 = CFDataGetBytePtr(v42[12]);
            memcpy(v48, v50, v44 * v45);
          }

          else
          {
            v47 = v46 * v45;
            v48 = malloc_type_malloc(v47, 0x100004077774924uLL);
            v49 = v44;
            v44 = 0;
          }

          v211 = 0;
          v212 = &v211;
          v213 = 0x2000000000;
          v214 = 0;
          v228 = 0u;
          v229 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_1AF1A767C(v42, v203, buf);
          v207 = *buf;
          v208 = *&buf[16];
          v209 = v228;
          v210 = v229;
          *&v221[0] = MEMORY[0x1E69E9820];
          *(&v221[0] + 1) = 0x40000000;
          *&v221[1] = sub_1AF1B1928;
          *(&v221[1] + 1) = &unk_1E7A7B558;
          v226 = v44;
          v223 = v48;
          v222 = &v211;
          v224 = v45;
          v225 = v47;
          sub_1AF1A80E4(&v207, v221, v228);
          v51 = CFDataCreateWithBytesNoCopy(v206, v48, v47, v201);
          v52 = sub_1AF1A6834();
          sub_1AF1A6A70(v52, v43, v49, v51, v45);
          MutableCopy = v204;
          CFArrayAppendValue(v204, v52);
          CFRelease(v51);
          CFRelease(v52);
          _Block_object_dispose(&v211, 8);
          v23 = v189;
          v25 = v205;
        }

        ++v41;
      }

      while (v25 != v41);
      a3 = v175;
      if (!MutableCopy)
      {
        return;
      }

LABEL_40:
      *v178 = CFArrayCreateMutableCopy(v206, 0, *(v189 + 72));
      *a3 = MutableCopy;
    }

    else
    {
LABEL_17:
      v29 = *(v189 + 104);
      v206 = *MEMORY[0x1E695E480];
      MutableCopy = CFArrayCreateMutableCopy(v206, 0, v29);
      if (MutableCopy)
      {
        goto LABEL_40;
      }
    }
  }
}

void sub_1AF1B1804(uint64_t a1, unsigned int a2, int a3, unint64_t a4, unint64_t a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a2 + 1) * a4 <= a5)
  {
    switch(a4)
    {
      case 4uLL:
        *(a1 + 4 * a2) = a3;
        break;
      case 2uLL:
        *(a1 + 2 * a2) = a3;
        break;
      case 1uLL:
        *(a1 + a2) = a3;
        break;
      default:
        v9 = sub_1AF0D5194();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDDCCFC();
        }

        break;
    }
  }

  else
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109376;
      v10[1] = a2;
      v11 = 2048;
      v12 = a5 / a4;
      _os_log_error_impl(&dword_1AF0CE000, v8, OS_LOG_TYPE_ERROR, "Error: __writeIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
    }
  }
}

void sub_1AF1B1928(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    for (i = 0; i != a4; ++i)
    {
      sub_1AF1B1804(*(a1 + 40), i + *(a1 + 64) + *(*(*(a1 + 32) + 8) + 24), *(a3 + 4 * i), *(a1 + 48), *(a1 + 56));
    }
  }

  *(*(*(a1 + 32) + 8) + 24) += a4;
}

uint64_t sub_1AF1B19B0(uint64_t a1, __int128 **a2)
{
  v2 = *sub_1AF1B1A54(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF1B1A54(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_1AF1B1AF0(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1AF1B1AF0(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL sub_1AF1B1AF0(uint64_t a1, __int128 **a2, __int128 **a3)
{
  v5 = *(*a2 + 37);
  if (v5 == *(*a3 + 37) || (v6 = sub_1AF0D5194(), !os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    if (v5)
    {
      goto LABEL_4;
    }

    return 0;
  }

  sub_1AFDDCD84();
  if (!v5)
  {
    return 0;
  }

LABEL_4:
  v7 = 0;
  v8 = v5 - 1;
  do
  {
    v9 = a2[1];
    v10 = *(*a2 + 4);
    v11 = (*a2)[1];
    v19 = **a2;
    v20 = v11;
    v21 = v10;
    v12 = sub_1AF1A7BA8(&v19, v9, a2[2], v7);
    v13 = a3[1];
    v14 = *(*a3 + 4);
    v15 = (*a3)[1];
    v19 = **a3;
    v20 = v15;
    v21 = v14;
    v16 = sub_1AF1A7BA8(&v19, v13, a3[2], v7);
    result = v12 < v16;
    if (v12 < v16)
    {
      break;
    }

    if (v12 > v16)
    {
      break;
    }
  }

  while (v8 != v7++);
  return result;
}

uint64_t sub_1AF1B1BEC(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a2 + 1) * a3 <= a4)
  {
    switch(a3)
    {
      case 4uLL:
        return *(a1 + 4 * a2);
      case 2uLL:
        return *(a1 + 2 * a2);
      case 1uLL:
        return *(a1 + a2);
      default:
        v9 = sub_1AF0D5194();
        result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
        if (result)
        {
          sub_1AFDDCE04();
          return 0;
        }

        break;
    }
  }

  else
  {
    v7 = sub_1AF0D5194();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10[0] = 67109376;
      v10[1] = a2;
      v11 = 2048;
      v12 = a4 / a3;
      _os_log_error_impl(&dword_1AF0CE000, v7, OS_LOG_TYPE_ERROR, "Error: __readIndexInBuffer - index (%u) out of bounds (%lu)", v10, 0x12u);
      return 0;
    }
  }

  return result;
}

void sub_1AF1B1D38(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    sub_1AF28A5A0(v1, &unk_1F24E7EC8);
  }
}

id sub_1AF1B1D5C(void *a1)
{
  sub_1AF1BE334(@"kCFXNotificationModelWillDie", a1, 0, 1u);
  sub_1AF1707C0(a1);
  v2 = a1[11];
  if (v2)
  {
    if (CFSetGetCount(v2))
    {
      v3 = sub_1AF0D5194();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDCE8C(a1, v3);
      }
    }

    v4 = a1[11];
    if (v4)
    {
      CFRelease(v4);
      a1[11] = 0;
    }
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
    a1[10] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
    a1[8] = 0;
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
    a1[12] = 0;
  }

  v9 = a1[13];
  if (v9)
  {
    free(v9);
  }

  a1[13] = 0;
  return sub_1AF16C9A4(a1);
}

__CFString *sub_1AF1B1E3C(const void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v4 = sub_1AF1B1F38(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@\n", v3, a1, v4);
  v5 = sub_1AF1B1F84(a1);
  CFStringAppendFormat(Mutable, 0, @"  geometry: %@\n", v5);
  if (sub_1AF1B1FE0(a1) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = sub_1AF1B2030(a1, v6);
      CFStringAppendFormat(Mutable, 0, @"  mat%d: %@\n", v6++, v7);
    }

    while (v6 < sub_1AF1B1FE0(a1));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t sub_1AF1B1F38(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CBEC(a1);
}

uint64_t sub_1AF1B1F84(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    (*v10)(a1);
  }

  return *(a1 + 64);
}

const __CFArray *sub_1AF1B1FE0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 80);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *sub_1AF1B2030(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = sub_1AF1B1FE0(a1);
  if (result)
  {
    return CFArrayGetValueAtIndex(*(a1 + 80), a2 % result);
  }

  return result;
}

uint64_t sub_1AF1B209C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = sub_1AF1A1828(v2) != 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1AF1B1FE0(a1);
  if (v4 >= 1 && (v3 & 1) == 0)
  {
    v5 = v4;
    v6 = 1;
    do
    {
      v7 = sub_1AF1B2030(a1, v6 - 1);
      v8 = sub_1AF1A1828(v7);
      v3 = v8 != 0;
      v9 = sub_1AF1A1270(v7);
      if (v9)
      {
        v10 = sub_1AF1656E4(v9, 18, 0);
        if (v10)
        {
          v11 = v10;
          v12 = sub_1AF166220(v10) && sub_1AF166598(v11) != 0.0;
          if (v8)
          {
            v3 = 1;
          }

          else
          {
            v3 = v12;
          }
        }
      }

      if (v6 >= v5)
      {
        break;
      }

      ++v6;
    }

    while ((v3 & 1) == 0);
  }

  return v3;
}

void sub_1AF1B2180(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 104);
  if (a2)
  {
    if (!v3)
    {
      v3 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *(a1 + 104) = v3;
    }

    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
  }

  else
  {
    if (!v3)
    {
      return;
    }

    free(v3);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 88);
  if (v6)
  {

    sub_1AF28A5A0(v6, &unk_1F24E7EC8);
  }
}

__CFArray *sub_1AF1B2210(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = 1;
  valuePtr = 5;
  v30 = sub_1AF1B1F38(a1);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v30);
  CFDictionarySetValue(v5, @"name", @"name");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v31 = 2;
  valuePtr = 5;
  v30 = a1 + 64;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v30);
  CFDictionarySetValue(v9, @"name", @"geometry");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = 2;
  valuePtr = 5;
  v30 = a1 + 72;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v30);
  CFDictionarySetValue(v13, @"name", @"overrideMaterial");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = 2;
  valuePtr = 5;
  v30 = a1 + 80;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v30);
  CFDictionarySetValue(v17, @"name", @"materials");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = 2;
  valuePtr = 5;
  v30 = a1 + 96;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v24 = CFNumberCreate(0, kCFNumberLongType, &v30);
  CFDictionarySetValue(v21, @"name", @"levelsOfDetail");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  CFRelease(v24);
  CFRelease(v22);
  v25 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = 0;
  valuePtr = 5;
  v30 = a1 + 48;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v28 = CFNumberCreate(0, kCFNumberLongType, &v30);
  CFDictionarySetValue(v25, @"name", @"worldRef");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  return Mutable;
}

uint64_t sub_1AF1B27E4(CFTypeRef cf, uint64_t a2)
{
  if (*(cf + 8))
  {
    (*(a2 + 16))(a2);
  }

  v4 = *(cf + 10);
  if (v4)
  {
    Count = CFArrayGetCount(*(cf + 10));
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        (*(a2 + 16))(a2, ValueAtIndex);
      }
    }
  }

  v9 = *(cf + 12);
  if (v9)
  {
    v10 = CFArrayGetCount(v9);
    if (v10 >= 1)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        v13 = CFArrayGetValueAtIndex(*(cf + 12), j);
        (*(a2 + 16))(a2, v13);
      }
    }
  }

  result = sub_1AF1C3858(cf);
  if (result)
  {
    v15 = *(a2 + 16);

    return v15(a2, result);
  }

  return result;
}

const __CFDictionary *sub_1AF1B2904(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CEA0(a1, @"kCoreEntityKey");
}

void sub_1AF1B295C(CFTypeRef *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1C3FAC(a1);
  v13 = sub_1AF1B2904(a1);
  if (v12 && v13)
  {
    sub_1AF1C3A90(v13, v12);
  }

  sub_1AF16CF28(a1, @"kCoreEntityKey", a2, v12 != 0);
  if (a2)
  {
    if (v12)
    {
      sub_1AF1C3CB4(a2, v12);
    }
  }
}

uint64_t sub_1AF1B2A04()
{
  if (qword_1ED7346C8 != -1)
  {
    sub_1AFDDCF90();
  }

  return qword_1ED7346C0;
}

double sub_1AF1B2A3C()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED7346C0 = v0;
  v1 = sub_1AF16CB64();
  sub_1AF1DCFAC(v0, v1);
  sub_1AF1DD018();
  *algn_1ED722D50 = xmmword_1F24E7F28;
  *&algn_1ED722D50[16] = xmmword_1F24E7F38;
  qword_1ED722D48 = sub_1AF1B2210;
  *&algn_1ED722D50[32] = unk_1F24E7F48;
  qword_1ED722D80 = off_1F24E7F58;
  unk_1ED722D88 = sub_1AF1B4208;
  qword_1ED722D90 = sub_1AF1B42B4;
  result = *&xmmword_1F24E7F60;
  unk_1ED722DA0 = xmmword_1F24E7F60;
  return result;
}

double sub_1AF1B2AF0(uint64_t a1)
{
  *(a1 + 80) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 200) = 0;

  return sub_1AF17079C(a1);
}

uint64_t sub_1AF1B2BD0(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB4B8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF1C3734(cf);
}

const void *sub_1AF1B2C1C(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    (*v10)(a1);
  }

  result = *(a1 + 64);
  if (result)
  {
    return sub_1AF170740(result);
  }

  return result;
}

void sub_1AF1B2C84(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAF5C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAFD4(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (sub_1AF1706B8(*(a1 + 64)) == 1)
  {
    v20 = sub_1AF1B2E04(a1);
  }

  else
  {
    v20 = sub_1AF1B1F84(a1);
  }

  sub_1AF1B2E54(a2, v20);
  v21 = *(a1 + 80);
  if (!a2)
  {
    v22 = sub_1AF0D5194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = *(a2 + 80);
  if (v30 != v21)
  {
    if (v30)
    {
      CFRelease(v30);
      *(a2 + 80) = 0;
    }

    if (v21)
    {
      *(a2 + 80) = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v21);
    }
  }

  v31 = sub_1AF1B31B0(a1);
  sub_1AF1B2F3C(a2, v31);
  *(a2 + 120) = *(a1 + 120);
  if (*(a1 + 104))
  {
    v32 = sub_1AF288058(0x20uLL);
    *(a2 + 104) = v32;
    v33 = *(a1 + 104);
    v34 = v33[1];
    *v32 = *v33;
    v32[1] = v34;
  }

  sub_1AF16D160(a1, a2);
  sub_1AF17081C(a1, a2);
  v35 = *(a1 + 176);
  v36 = *(a1 + 192);
  sub_1AF1B31F8(a2, &v35);
}

const void *sub_1AF1B2E04(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    return sub_1AF170740(result);
  }

  return result;
}

void sub_1AF1B2E54(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 64) != a2)
  {
    v12 = sub_1AF1C3F64(a1);
    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      sub_1AF1C3A90(v13, v12);
LABEL_8:
      v14 = *(a1 + 64);
      if (v14 == a2)
      {
LABEL_19:
        if (v12 && v14)
        {
          sub_1AF1C3CB4(v14, v12);
        }

        goto LABEL_22;
      }

      if (v14)
      {
        CFRelease(v14);
        *(a1 + 64) = 0;
      }

      if (!a2)
      {
        v14 = 0;
LABEL_18:
        *(a1 + 64) = v14;
        goto LABEL_19;
      }

LABEL_17:
      v14 = CFRetain(a2);
      goto LABEL_18;
    }

    if (a2)
    {
      goto LABEL_17;
    }

LABEL_22:
    *(a1 + 200) = 0;
    v15 = *(a1 + 88);
    if (v15)
    {
      sub_1AF28A5A0(v15, &unk_1F24E7EC8);
    }

    return;
  }

  if (!a2 && *(a1 + 120))
  {
    goto LABEL_22;
  }
}

void sub_1AF1B2F3C(uint64_t a1, const __CFArray *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1C3F64(a1);
  v13 = *(a1 + 96);
  if (v13)
  {
    if (*(a1 + 88))
    {
      Count = CFArrayGetCount(v13);
      if (Count >= 1)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), i);
          v18 = sub_1AF1A09B0(ValueAtIndex);
          if (v18)
          {
            v19 = *(a1 + 88);
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 0x40000000;
            v37[2] = sub_1AF1B39F0;
            v37[3] = &unk_1E7A7B5B8;
            v37[4] = v18;
            sub_1AF28A5A0(v19, v37);
          }
        }
      }
    }
  }

  v20 = *(a1 + 96);
  if (v20 && v12)
  {
    v21 = CFArrayGetCount(v20);
    if (v21 >= 1)
    {
      v22 = v21;
      for (j = 0; j != v22; ++j)
      {
        v24 = CFArrayGetValueAtIndex(*(a1 + 96), j);
        sub_1AF1C3A90(v24, v12);
      }
    }

    v20 = *(a1 + 96);
  }

  if (v20 != a2)
  {
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 96) = 0;
    }

    if (a2)
    {
      v20 = CFRetain(a2);
    }

    else
    {
      v20 = 0;
    }

    *(a1 + 96) = v20;
  }

  if (v20 && v12)
  {
    v25 = CFArrayGetCount(v20);
    if (v25 >= 1)
    {
      v26 = v25;
      for (k = 0; k != v26; ++k)
      {
        v28 = CFArrayGetValueAtIndex(*(a1 + 96), k);
        sub_1AF1C3CB4(v28, v12);
      }
    }

    v20 = *(a1 + 96);
  }

  if (v20)
  {
    if (*(a1 + 88))
    {
      v29 = CFArrayGetCount(v20);
      if (v29 >= 1)
      {
        v30 = v29;
        for (m = 0; m != v30; ++m)
        {
          v32 = CFArrayGetValueAtIndex(*(a1 + 96), m);
          v33 = sub_1AF1A09B0(v32);
          if (v33)
          {
            v34 = *(a1 + 88);
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 0x40000000;
            v36[2] = sub_1AF1B39F8;
            v36[3] = &unk_1E7A7B5D8;
            v36[4] = v33;
            sub_1AF28A5A0(v34, v36);
          }
        }
      }
    }
  }

  v35 = *(a1 + 88);
  if (v35)
  {
    sub_1AF28A5A0(v35, &unk_1F24E7F08);
  }
}

uint64_t sub_1AF1B31B0(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

void sub_1AF1B31F8(__n128 *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[11].n128_u8[0];
  v13 = a1[11].n128_u8[12];
  v14 = *a2;
  a1[12].n128_u64[0] = *(a2 + 2);
  a1[11] = v14;
  if (v13 != a2[12])
  {
    v15 = sub_1AF1C3FAC(a1);
    sub_1AF1CF760(v15, 6, a1, 0);
  }

  sub_1AF170A30(a1, v12, *a2, a1[8].n128_u8[0], a1[8].n128_u8[0]);
}

const void *sub_1AF1B329C(uint64_t a1)
{
  if (sub_1AF170978(a1))
  {

    return sub_1AF1710CC(a1);
  }

  else
  {

    return sub_1AF1B2C1C(a1);
  }
}

uint64_t sub_1AF1B32F8(uint64_t a1, void *value)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDB04C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  CFArrayAppendValue(*(a1 + 80), value);
  v20 = sub_1AF1C3F64(a1);
  sub_1AF1C3CB4(value, v20);
  return sub_1AF1B3398(a1);
}

uint64_t sub_1AF1B3398(void *cf)
{
  v2 = cf[11];
  if (v2)
  {
    sub_1AF28A5A0(v2, &unk_1F24E7EC8);
  }

  v3 = CFGetTypeID(cf);
  result = sub_1AF1BE9BC();
  if (v3 == result)
  {

    return sub_1AF1BE6B0(cf);
  }

  return result;
}

uint64_t sub_1AF1B3404(uint64_t a1, CFIndex a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (sub_1AF1C3F64(a1))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), a2);
    v13 = sub_1AF1C3F64(a1);
    sub_1AF1C3A90(ValueAtIndex, v13);
  }

  CFArrayRemoveValueAtIndex(*(a1 + 80), a2);
  return sub_1AF1B3398(a1);
}

uint64_t sub_1AF1B3498(uint64_t a1)
{
  if (!a1)
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (sub_1AF1C3F64(a1))
  {
    Count = CFArrayGetCount(*(a1 + 80));
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
        v14 = sub_1AF1C3F64(a1);
        sub_1AF1C3A90(ValueAtIndex, v14);
      }
    }
  }

  CFArrayRemoveAllValues(*(a1 + 80));
  return sub_1AF1B3398(a1);
}

uint64_t sub_1AF1B3548(uint64_t a1, void *value, CFIndex idx)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFArrayInsertValueAtIndex(*(a1 + 80), idx, value);
  v14 = sub_1AF1C3F64(a1);
  sub_1AF1C3CB4(value, v14);
  return sub_1AF1B3398(a1);
}

uint64_t sub_1AF1B35C8(uint64_t a1, void *a2, CFIndex a3)
{
  newValues = a2;
  if (!a1)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (sub_1AF1C3F64(a1))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), a3);
    v14 = sub_1AF1C3F64(a1);
    sub_1AF1C3A90(ValueAtIndex, v14);
  }

  v19.location = a3;
  v19.length = 1;
  CFArrayReplaceValues(*(a1 + 80), v19, &newValues, 1);
  v15 = newValues;
  v16 = sub_1AF1C3F64(a1);
  sub_1AF1C3CB4(v15, v16);
  return sub_1AF1B3398(a1);
}

CFIndex sub_1AF1B368C(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD137C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  Mutable = *(a1 + 88);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(a1 + 88) = Mutable;
  }

  if (CFSetContainsValue(Mutable, a2))
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCFA4(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  CFSetAddValue(*(a1 + 88), a2);
  Count = CFSetGetCount(*(a1 + 88));
  v30 = *(a1 + 112) & 0xFE;
  if (Count > 4)
  {
    ++v30;
  }

  *(a1 + 112) = v30;
  result = *(a1 + 96);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v32 = result;
      for (i = 0; i != v32; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), i);
        result = sub_1AF1A09B0(ValueAtIndex);
        if (result)
        {
          result = sub_1AF1B368C(result, a2);
        }
      }
    }
  }

  return result;
}

void sub_1AF1B37C0(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = sub_1AF0D5194(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD137C(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 88);
  if (!v20 || !CFSetContainsValue(v20, a2))
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDD01C(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = *(a1 + 96);
  if (v29)
  {
    Count = CFArrayGetCount(v29);
    if (Count >= 1)
    {
      v31 = Count;
      for (i = 0; i != v31; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), i);
        v34 = sub_1AF1A09B0(ValueAtIndex);
        if (v34)
        {
          sub_1AF1B37C0(v34, a2);
        }
      }
    }
  }

  v35 = *(a1 + 88);
  if (v35)
  {
    goto LABEL_20;
  }

  v36 = sub_1AF0D5194();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDD094(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  v35 = *(a1 + 88);
  if (v35)
  {
LABEL_20:
    CFSetRemoveValue(v35, a2);
  }
}