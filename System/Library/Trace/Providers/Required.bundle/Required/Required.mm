void sub_11AC(int a1, void *a2)
{
  v3 = a2;
  v4 = &off_14950;
  v5 = 5;
  do
  {
    v6 = v3;
    if (a1 || (v4[2] & 1) == 0)
    {
      v7 = 8;
    }

    else
    {
      v7 = 12;
    }

    v8 = *(v4 + v7);
    v15 = 0;
    v16 = v8;
    v14 = 4;
    if (sysctlbyname(*v4, &v15, &v14, 0, 0))
    {
      if (*__error() == 2)
      {
        goto LABEL_12;
      }

      v9 = *v4;
      v10 = __error();
      [NSString stringWithFormat:@"Could not check for sysctl %s: %s", v9, strerror(*v10)];
      goto LABEL_11;
    }

    if (sysctlbyname(*v4, &v15, &v14, &v16, 4uLL))
    {
      v11 = *v4;
      v12 = __error();
      [NSString stringWithFormat:@"Could not write sysctl %s: %s", v11, strerror(*v12)];
      v13 = LABEL_11:;
      [v6 failWithReason:v13];

      goto LABEL_12;
    }

    if (a1)
    {
      if ((v4[2] & 1) == 0)
      {
        *(v4 + 3) = v15;
        *(v4 + 16) = 1;
      }
    }

    else
    {
      *(v4 + 16) = 0;
    }

LABEL_12:

    v4 += 3;
    --v5;
  }

  while (v5);
}

BOOL sub_1374(io_registry_entry_t a1, int a2, void *a3)
{
  v5 = a3;
  if (IOObjectConformsTo(a1, "AppleIntelFramebuffer"))
  {
    v6 = 1;
  }

  else
  {
    iterator = 0;
    if (IORegistryEntryGetChildIterator(a1, "IOService", &iterator))
    {
      [v5 failWithReason:@"Could not query io registry for graphics"];
      v6 = 0;
    }

    else
    {
      do
      {
        v9 = IOIteratorNext(iterator);
        v6 = v9 != 0;
        if (!v9)
        {
          break;
        }

        v7 = v9;
        v8 = sub_1374(v9, (a2 + 1), v5);
        IOObjectRelease(v7);
      }

      while (!v8);
      IOObjectRelease(iterator);
    }
  }

  return v6;
}

void sub_195C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a25, 8);
  sub_3288((v25 + 48));
  _Unwind_Resume(a1);
}

__n128 sub_19F4(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1A18(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A94(a2, a3, *(*(a1 + 32) + 8) + 48, 1);
  if (v4)
  {
    sub_1E50((*(*(a1 + 40) + 8) + 48), &v4);
  }
}

uint64_t sub_1A94(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x4812000000;
  v35 = sub_333C;
  v36 = sub_3360;
  v37 = "";
  v39 = 0;
  v40 = 0;
  __p = 0;
  CSSymbolOwnerForeachSegment();
  v5 = v33[6];
  v6 = v33[7];
  if (v5 == v6)
  {
    v14 = 0;
  }

  else
  {
    v7 = sub_41BC(a3, v5, (v6 - v5) >> 2);
    Name = CSSymbolOwnerGetName();
    v9 = sub_375C(Name, a3);
    Architecture = CSSymbolOwnerGetArchitecture();
    v11 = 0;
    if (a4)
    {
      v30 = 0;
      if (Architecture)
      {
        v12 = CSSymbolOwnerGetArchitecture();
        v30 = sub_37A8(v12, a3);
        FamilyName = CSArchitectureGetFamilyName();
        v11 = sub_375C(FamilyName, a3);
      }
    }

    else
    {
      v30 = 0;
    }

    CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
    memset(out, 0, 37);
    uuid_unparse(CFUUIDBytes, out);
    v16 = strlen(out);
    v17 = sub_5684(a3, out, v16);
    Path = CSSymbolOwnerGetPath();
    v19 = sub_375C(Path, a3);
    Version = CSSymbolOwnerGetVersion();
    v21 = sub_375C(Version, a3);
    sub_39B0(a3);
    *(a3 + 70) = 1;
    v22 = *(a3 + 32);
    v23 = *(a3 + 48);
    v24 = *(a3 + 40);
    sub_3D2C(a3, 4, v17);
    sub_3D2C(a3, 6, v19);
    if (a4)
    {
      sub_3D2C(a3, 12, v30);
      sub_3D2C(a3, 14, v11);
    }

    sub_3D2C(a3, 16, v9);
    sub_3D2C(a3, 22, v21);
    v25 = sub_3EC0(a3, v22 - v23 + v24);
    sub_39B0(a3);
    *(a3 + 70) = 1;
    v26 = *(a3 + 32);
    v27 = *(a3 + 48);
    v28 = *(a3 + 40);
    sub_5594(a3, 4, 1, 0);
    sub_3D2C(a3, 6, v25);
    sub_3D2C(a3, 8, v7);
    sub_39E0(a3, 10, 0, -1);
    v14 = sub_3EC0(a3, v26 - v27 + v28);
  }

  _Block_object_dispose(&v32, 8);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_1DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E50(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_4098();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_4140(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t sub_1F30(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_54C4(a1, a3, 4uLL);
  if (a3)
  {
    v6 = a2 - 4;
    v7 = a3;
    do
    {
      v8 = v7 - 1;
      v9 = sub_3E14(a1, *(v6 + 4 * v7));
      sub_3E68(a1, v9);
      v7 = v8;
    }

    while (v8);
  }

  return sub_5530(a1, a3);
}

uint64_t sub_1FB4(uint64_t a1)
{
  if ((*(a1 + 71) & 1) == 0)
  {
    sub_9968();
  }

  result = *(a1 + 48);
  if (!result)
  {
    sub_9994();
  }

  return result;
}

void sub_22E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a17, 8);
  sub_7CDC(v39 + 48);
  _Block_object_dispose(&a28, 8);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a37, 8);
  sub_3288((v38 + 48));
  _Unwind_Resume(a1);
}

__n128 sub_2354(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2378(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_23A4(void *a1, uint64_t a2)
{
  *uu = 0;
  v9 = 0;
  dyld_shared_cache_copy_uuid();
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  sub_24C8(__p, out);
  if (!sub_7824((*(a1[4] + 8) + 48), __p))
  {
    v4 = sub_2580(a2, *(a1[5] + 8) + 48);
    if (v4)
    {
      sub_1E50((*(a1[6] + 8) + 48), &v4);
      sub_7D64((*(a1[4] + 8) + 48), __p);
    }
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_24C8(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_7C0C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_2580(uint64_t a1, unint64_t a2)
{
  *uu = 0;
  v29 = 0;
  dyld_shared_cache_copy_uuid();
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  base_address = dyld_shared_cache_get_base_address();
  v4 = strlen(out);
  v5 = sub_5778(a2, out, v4);
  sub_39B0(a2);
  *(a2 + 70) = 1;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 40);
  sub_3D2C(a2, 4, v5);
  sub_39E0(a2, 20, base_address, -1);
  v9 = sub_3EC0(a2, v6 - v7 + v8);
  v18 = 0;
  v19 = &v18;
  v20 = 0x4812000000;
  v21 = sub_19F4;
  v22 = sub_1A18;
  v23 = "";
  v25 = 0;
  v26 = 0;
  __p = 0;
  dyld_shared_cache_for_each_image();
  v10 = v19[7] - v19[6];
  if (v10)
  {
    v11 = v19[6];
  }

  else
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>,std::allocator<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>>>(std::vector<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>> const&)::t;
  }

  v12 = sub_1F30(a2, v11, v10 >> 2);
  sub_39B0(a2);
  *(a2 + 70) = 1;
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  v15 = *(a2 + 40);
  sub_5594(a2, 4, 3, 0);
  sub_3D2C(a2, 6, v9);
  sub_3D2C(a2, 8, v12);
  v16 = sub_3EC0(a2, v13 - v14 + v15);
  _Block_object_dispose(&v18, 8);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  return v16;
}

void sub_27E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a25, 8);
  sub_3288((v26 + 48));
  _Unwind_Resume(a1);
}

void sub_2B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2B74(a2, a3, *(*(a1 + 32) + 8) + 48);
  if (v4)
  {
    sub_1E50((*(*(a1 + 40) + 8) + 48), &v4);
  }
}

uint64_t sub_2B74(uint64_t a1, uint64_t a2, unint64_t a3)
{
  SharedCacheUUID = CSSymbolicatorGetSharedCacheUUID();
  if (!SharedCacheUUID)
  {
    return 0;
  }

  v5 = SharedCacheUUID;
  Architecture = CSSymbolicatorGetArchitecture();
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, v5);
  memset(out, 0, 37);
  uuid_unparse(dst, out);
  v7 = strlen(out);
  v8 = sub_5778(a3, out, v7);
  LODWORD(v5) = sub_37A8(Architecture, a3);
  FamilyName = CSArchitectureGetFamilyName();
  v10 = strlen(FamilyName);
  LODWORD(FamilyName) = sub_5684(a3, FamilyName, v10);
  sub_39B0(a3);
  *(a3 + 70) = 1;
  v11 = *(a3 + 32);
  v12 = *(a3 + 48);
  v13 = *(a3 + 40);
  sub_3D2C(a3, 4, v8);
  sub_3D2C(a3, 12, v5);
  sub_3D2C(a3, 14, FamilyName);
  v14 = sub_3EC0(a3, v11 - v12 + v13);
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = sub_19F4;
  v27 = sub_1A18;
  v28 = "";
  v30 = 0;
  v31 = 0;
  __p = 0;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  v15 = v24[7] - v24[6];
  if (v15)
  {
    v16 = v24[6];
  }

  else
  {
    v16 = &flatbuffers::data<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>,std::allocator<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>>>(std::vector<flatbuffers::Offset<FlatbufferSymbols::SymbolOwner>> const&)::t;
  }

  v17 = sub_1F30(a3, v16, v15 >> 2);
  sub_39B0(a3);
  *(a3 + 70) = 1;
  v18 = *(a3 + 32);
  v19 = *(a3 + 48);
  v20 = *(a3 + 40);
  sub_5594(a3, 4, 3, 0);
  sub_3D2C(a3, 6, v14);
  sub_3D2C(a3, 8, v17);
  v21 = sub_3EC0(a3, v18 - v19 + v20);
  _Block_object_dispose(&v23, 8);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2ECC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_AE20;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 256;
  *(a1 + 88) = 0;
  sub_2F38(a1, a2);
  return a1;
}

uint64_t *sub_2F38(uint64_t a1, uint64_t a2)
{
  result = sub_2FE0(a1, a2);
  v5 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v5;
  LOWORD(v5) = *(a1 + 68);
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = v5;
  LOBYTE(v5) = *(a1 + 70);
  *(a1 + 70) = *(a2 + 70);
  *(a2 + 70) = v5;
  LOBYTE(v5) = *(a1 + 71);
  *(a1 + 71) = *(a2 + 71);
  *(a2 + 71) = v5;
  v6 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v6;
  LOBYTE(v6) = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v6;
  LOBYTE(v6) = *(a1 + 81);
  *(a1 + 81) = *(a2 + 81);
  *(a2 + 81) = v6;
  v7 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v7;
  return result;
}

uint64_t *sub_2FE0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  LOBYTE(v2) = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = result[2];
  result[2] = a2[2];
  a2[2] = v3;
  v4 = result[3];
  result[3] = a2[3];
  a2[3] = v4;
  v5 = result[4];
  v6 = result[5];
  v7 = a2[5];
  result[4] = a2[4];
  result[5] = v7;
  a2[4] = v5;
  a2[5] = v6;
  v8 = result[6];
  result[6] = a2[6];
  a2[6] = v8;
  v9 = result[7];
  result[7] = a2[7];
  a2[7] = v9;
  return result;
}

void *sub_3054(void *a1)
{
  if (a1[5])
  {
    v2 = *a1;
    if (!*a1)
    {
      operator delete[]();
    }

    v3 = a1[4];
    (*(*v2 + 24))(v2);
  }

  a1[5] = 0;
  if (*(a1 + 8) == 1 && *a1)
  {
    (*(**a1 + 8))(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return a1;
}

void sub_3154(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete[]();
  }
}

char *sub_31A8(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    sub_99C0();
  }

  v12 = (*(*a1 + 16))(a1, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*a1 + 24))(a1, a2, a3);
  return v12;
}

void *sub_3288(void *a1)
{
  v1 = a1[11];
  if (v1)
  {
    sub_32E8(a1[11], *(v1 + 8));
    operator delete();
  }

  return sub_3054(a1);
}

void sub_32E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_32E8(a1, *a2);
    sub_32E8(a1, a2[1]);

    operator delete(a2);
  }
}

__n128 sub_333C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_3360(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_3378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_33D0(a2, a3, *(a1 + 40));
  if (v4)
  {
    sub_1E50((*(*(a1 + 32) + 8) + 48), &v4);
  }
}

uint64_t sub_33D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x4812000000;
  v42 = sub_3840;
  v43 = sub_3864;
  v44 = "";
  v46 = 0;
  v47 = 0;
  __p = 0;
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_387C;
  v36 = &unk_10590;
  v37 = &v39;
  v38 = a3;
  CSSegmentForeachSection();
  v4 = v40[6];
  v5 = v40[7];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_41BC(a3, v4, (v5 - v4) >> 2);
  }

  Name = CSRegionGetName();
  if (Name)
  {
    sub_24C8(v48, " SEGMENT");
    v31 = v6;
    sub_24C8(&v32, Name);
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v32;
    }

    else
    {
      v9 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    v10 = v49;
    if ((v49 & 0x80u) == 0)
    {
      v11 = v48;
    }

    else
    {
      v11 = v48[0];
    }

    if ((v49 & 0x80u) == 0)
    {
      v12 = v49;
    }

    else
    {
      v12 = v48[1];
    }

    if (v12)
    {
      if (size >= v12)
      {
        v13 = v9 + size;
        v14 = *v11;
        v15 = v9;
        do
        {
          v16 = size - v12;
          if (v16 == -1)
          {
            break;
          }

          v17 = memchr(v15, v14, v16 + 1);
          if (!v17)
          {
            break;
          }

          v18 = v17;
          if (!memcmp(v17, v11, v12))
          {
            if (v18 != v13)
            {
              v19 = v18 - v9;
              if (v18 - v9 != -1)
              {
                goto LABEL_26;
              }
            }

            break;
          }

          v15 = (v18 + 1);
          size = v13 - (v18 + 1);
        }

        while (size >= v12);
      }
    }

    else
    {
      v19 = 0;
LABEL_26:
      std::string::erase(&v32, v19, v12);
      v10 = v49;
    }

    if ((v10 & 0x80) != 0)
    {
      operator delete(v48[0]);
    }

    v6 = v31;
  }

  else
  {
    sub_24C8(&v32, &unk_B325);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v32;
  }

  else
  {
    v20 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v32.__r_.__value_.__l.__size_;
  }

  v22 = sub_5684(a3, v20, v21);
  Range = CSRegionGetRange();
  v25 = v24;
  sub_39B0(a3);
  *(a3 + 70) = 1;
  v26 = *(a3 + 32);
  v27 = *(a3 + 48);
  v28 = *(a3 + 40);
  sub_39E0(a3, 6, Range, -1);
  sub_39E0(a3, 8, v25, 0);
  sub_3D2C(a3, 4, v22);
  sub_3D2C(a3, 22, v6);
  v29 = sub_3EC0(a3, v26 - v27 + v28);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v39, 8);
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  return v29;
}

void sub_36E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 89) < 0)
  {
    operator delete(*(v30 - 112));
  }

  _Block_object_dispose(&a23, 8);
  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

const char *sub_375C(const char *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = strlen(result);

    return sub_5684(a2, v3, v4);
  }

  return result;
}

uint64_t sub_37A8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  sub_39B0(a2);
  *(a2 + 70) = 1;
  v5 = *(a2 + 40);
  v6 = *(a2 + 32) - *(a2 + 48);
  sub_3D80(a2, 6, v3, 0);
  sub_3D80(a2, 8, v4, 0);

  return sub_3EC0(a2, v6 + v5);
}

__n128 sub_3840(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_3864(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_38D4(a2, a3, *(a1 + 40));
  if (v4)
  {
    sub_1E50((*(*(a1 + 32) + 8) + 48), &v4);
  }
}

uint64_t sub_38D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  Name = CSRegionGetName();
  v5 = strlen(Name);
  LODWORD(Name) = sub_5684(a3, Name, v5);
  Range = CSRegionGetRange();
  v8 = v7;
  sub_39B0(a3);
  *(a3 + 70) = 1;
  v9 = *(a3 + 40);
  v10 = *(a3 + 32) - *(a3 + 48);
  sub_39E0(a3, 6, Range, -1);
  sub_39E0(a3, 8, v8, 0);
  sub_3D2C(a3, 4, Name);

  return sub_3EC0(a3, v10 + v9);
}

uint64_t sub_39B0(uint64_t result)
{
  if (*(result + 70) == 1)
  {
    sub_9A18();
  }

  if (*(result + 64))
  {
    sub_99EC();
  }

  return result;
}

unint64_t sub_39E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = sub_3A74(result, a3);
    result = sub_3B50(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

uint64_t sub_3A74(uint64_t a1, uint64_t a2)
{
  sub_3ACC(a1, 8uLL);
  v4 = (*(a1 + 48) - sub_3B50(a1, 8uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

unint64_t sub_3ACC(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 72) < a2)
  {
    *(a1 + 72) = a2;
  }

  return sub_3B00(a1, (a2 - 1) & -(*(a1 + 32) - *(a1 + 48) + *(a1 + 40)));
}

unint64_t sub_3B00(uint64_t a1, unint64_t a2)
{
  result = sub_3B50(a1, a2);
  *(a1 + 48) -= result;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(a1 + 48) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

unint64_t sub_3B50(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 < v3 || (v5 = *(a1 + 40), v3 < v5))
  {
    sub_9A70();
  }

  if (v2 - v3 < a2)
  {
    sub_3BC8(a1, a2);
    v5 = *(a1 + 40);
    v2 = *(a1 + 48);
  }

  if ((*(a1 + 32) - v2 + v5) >= 0x7FFFFFFF)
  {
    sub_9A44();
  }

  return a2;
}

char *sub_3BC8(uint64_t *a1, unint64_t a2)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = &v4[v5 - a1[6]];
  v7 = a1[7] - v4;
  if (v5)
  {
    v8 = v5 >> 1;
  }

  else
  {
    v8 = a1[2];
  }

  if (v8 > a2)
  {
    a2 = v8;
  }

  v9 = (a1[3] + v5 + a2 - 1) & -a1[3];
  a1[4] = v9;
  v10 = *a1;
  if (v4)
  {
    if (v10)
    {
      result = (*(*v10 + 32))(v10);
    }

    else
    {
      v13 = off_10538;
      result = sub_31A8(&v13, v4, v5, v9, v6, v7);
    }
  }

  else
  {
    if (!v10)
    {
      v13 = off_10538;
      operator new[]();
    }

    result = (*(*v10 + 16))(v10, v9);
  }

  v12 = &result[a1[4] - v6];
  a1[5] = result;
  a1[6] = v12;
  a1[7] = &result[v7];
  return result;
}

_DWORD *sub_3D2C(_DWORD *result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = sub_3E14(result, a3);

    return sub_3D80(v4, a2, v5, 0);
  }

  return result;
}

unint64_t sub_3D80(unint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = sub_3E68(result, a3);
    result = sub_3B50(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

uint64_t sub_3E14(_DWORD *a1, unsigned int a2)
{
  sub_3ACC(a1, 4uLL);
  if (!a2 || (v4 = a1[8] - a1[12] + a1[10], v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    sub_9A9C();
  }

  return v6 + 4;
}

uint64_t sub_3E68(uint64_t a1, int a2)
{
  sub_3ACC(a1, 4uLL);
  v4 = (*(a1 + 48) - sub_3B50(a1, 4uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

uint64_t sub_3EC0(uint64_t a1, int a2)
{
  if ((*(a1 + 70) & 1) == 0)
  {
    sub_9AC8();
  }

  v4 = sub_3E68(a1, 0);
  if ((*(a1 + 68) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(a1 + 68) + 2);
  }

  *(a1 + 68) = v5;
  v6 = (*(a1 + 48) - sub_3B50(a1, v5));
  *(a1 + 48) = v6;
  bzero(v6, v5);
  v7 = v4 - a2;
  if ((v4 - a2) >= 0x10000)
  {
    sub_9B78();
  }

  v8 = *(a1 + 48);
  if (!v8)
  {
    sub_9994();
  }

  v8[1] = v7;
  *v8 = *(a1 + 68);
  v9 = *(a1 + 56);
  if (!v9)
  {
    sub_9B4C();
  }

  v10 = *(a1 + 64);
  v11 = v9 - 8 * v10;
  if (v10)
  {
    v12 = (v9 - 8 * v10);
    do
    {
      v13 = *(v12 + 2);
      if (*(v8 + v13))
      {
        sub_9AF4();
      }

      v14 = *v12;
      v12 += 2;
      *(v8 + v13) = v4 - v14;
    }

    while (v12 < v9);
  }

  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = v16 - v8 + v15;
  if (*(a1 + 81))
  {
    if (!v15)
    {
      sub_9B20();
    }

    if (v15 < v11)
    {
      v18 = *v8;
      v19 = v15 + v16;
      v20 = *(a1 + 40);
      while (1)
      {
        v21 = *v20;
        if (v18 == *(v19 - v21) && !memcmp((v19 - v21), v8, v18))
        {
          break;
        }

        if (++v20 >= v11)
        {
          v17 = v16 - v8 + v15;
          goto LABEL_21;
        }
      }

      v8 = (v8 + (v16 - v8 + v15 - v4));
      *(a1 + 48) = v8;
      v17 = v21;
    }
  }

LABEL_21:
  if (v17 == v16 + v15 - v8)
  {
    sub_3B50(a1, 4uLL);
    v22 = *(a1 + 56);
    *v22 = v17;
    *(a1 + 56) = v22 + 1;
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
  }

  *(v15 + v16 - v4) = v17 - v4;
  *(a1 + 70) = 0;
  return v4;
}

void sub_40B0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_410C(exception, a1);
}

std::logic_error *sub_410C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_4140(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_4188();
}

void sub_4188()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_41BC(_DWORD *a1, int32x2_t *a2, unint64_t a3)
{
  v6 = (a2 + 4 * a3);
  v10 = a1;
  v7 = 126 - 2 * __clz(a3);
  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_4230(a2, v6, &v10, v8, 1);
  return sub_1F30(a1, a2, a3);
}

int32x2_t *sub_4230(int32x2_t *result, int32x2_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v20 = *(*a3 + 40) + *(*a3 + 32);
        result = sub_5014((v20 - a2[-1].u32[1]), (v20 - v9->u32[0]));
        if (result)
        {
          v21 = v9->i32[0];
          v9->i32[0] = a2[-1].i32[1];
          a2[-1].i32[1] = v21;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      sub_4664(v9, v9 + 1, &v9[1], a3);
      v22 = *(*a3 + 40) + *(*a3 + 32);
      result = sub_5014((v22 - a2[-1].u32[1]), (v22 - v9[1].u32[0]));
      if (result)
      {
        v23 = v9[1].i32[0];
        v9[1].i32[0] = a2[-1].i32[1];
        a2[-1].i32[1] = v23;
        v24 = *(*a3 + 40) + *(*a3 + 32);
        result = sub_5014((v24 - v9[1].u32[0]), (v24 - v9->u32[1]));
        if (result)
        {
          v26 = v9->i32[1];
          v25 = v9[1].u32[0];
          v27 = v9->u32[0];
          v9->i32[1] = v25;
          v9[1].i32[0] = v26;
          v28 = *(*a3 + 40) + *(*a3 + 32);
          result = sub_5014((v28 - v25), (v28 - v27));
          if (result)
          {
            *v9 = vrev64_s32(*v9);
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return sub_478C(v9, v9 + 1, &v9[1], &v9[1] + 1, &a2[-1] + 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_4944(v9, a2, a3);
      }

      else
      {

        return sub_4A2C(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_5070(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + (v12 >> 1);
    if (v12 < 0x81)
    {
      sub_4664(v9 + (v12 >> 1), v9, &a2[-1] + 1, a3);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_4664(v9, v9 + (v12 >> 1), &a2[-1] + 1, a3);
      sub_4664(v9 + 1, v14 - 1, &a2[-1], a3);
      sub_4664(&v9[1], v9 + v13 + 1, &a2[-2] + 1, a3);
      sub_4664(v14 - 1, v14, v9 + v13 + 1, a3);
      v15 = v9->i32[0];
      v9->i32[0] = *v14;
      *v14 = v15;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v16 = *(*a3 + 40) + *(*a3 + 32);
    if (!sub_5014((v16 - v9[-1].u32[1]), (v16 - v9->u32[0])))
    {
      result = sub_4AE8(v9, a2, a3);
      v9 = result;
      goto LABEL_23;
    }

LABEL_18:
    v17 = sub_4C4C(v9, a2, a3);
    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    v19 = sub_4DA8(v9, v17, a3);
    v9 = (v17 + 1);
    result = sub_4DA8((v17 + 1), a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v17;
      if (v19)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v19)
    {
LABEL_21:
      result = sub_4230(v8, v17, a3, -v11, a5 & 1);
      v9 = (v17 + 1);
LABEL_23:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return sub_4664(v9, v9 + 1, &a2[-1] + 1, a3);
}

BOOL sub_4664(int *a1, int *a2, int *a3, uint64_t a4)
{
  v8 = *(*a4 + 40) + *(*a4 + 32);
  v9 = sub_5014((v8 - *a2), (v8 - *a1));
  v10 = *(*a4 + 40) + *(*a4 + 32);
  result = sub_5014((v10 - *a3), (v10 - *a2));
  if (v9)
  {
    v12 = *a1;
    if (result)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      v16 = *(*a4 + 40) + *(*a4 + 32);
      if (sub_5014((v16 - *a3), (v16 - v12)))
      {
        v17 = *a2;
        *a2 = *a3;
        *a3 = v17;
      }
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    v14 = *(*a4 + 40) + *(*a4 + 32);
    if (sub_5014((v14 - *a2), (v14 - *a1)))
    {
      v15 = *a1;
      *a1 = *a2;
      *a2 = v15;
    }
  }

  return 1;
}

BOOL sub_478C(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  sub_4664(a1, a2, a3, a6);
  v12 = *(*a6 + 40) + *(*a6 + 32);
  if (sub_5014((v12 - *a4), (v12 - *a3)))
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *(*a6 + 40) + *(*a6 + 32);
    if (sub_5014((v14 - *a3), (v14 - *a2)))
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      v16 = *(*a6 + 40) + *(*a6 + 32);
      if (sub_5014((v16 - *a2), (v16 - *a1)))
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  v18 = *(*a6 + 40) + *(*a6 + 32);
  result = sub_5014((v18 - *a5), (v18 - *a4));
  if (result)
  {
    v20 = *a4;
    *a4 = *a5;
    *a5 = v20;
    v21 = *(*a6 + 40) + *(*a6 + 32);
    result = sub_5014((v21 - *a4), (v21 - *a3));
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      v23 = *(*a6 + 40) + *(*a6 + 32);
      result = sub_5014((v23 - *a3), (v23 - *a2));
      if (result)
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
        v25 = *(*a6 + 40) + *(*a6 + 32);
        result = sub_5014((v25 - *a2), (v25 - *a1));
        if (result)
        {
          v26 = *a1;
          *a1 = *a2;
          *a2 = v26;
        }
      }
    }
  }

  return result;
}

unsigned int *sub_4944(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        v11 = *(*a3 + 40) + *(*a3 + 32);
        result = sub_5014((v11 - v9), (v11 - v10));
        if (result)
        {
          v12 = *v8;
          v13 = v7;
          while (1)
          {
            *(v4 + v13 + 4) = *(v4 + v13);
            if (!v13)
            {
              break;
            }

            v14 = *(*a3 + 40) + *(*a3 + 32);
            result = sub_5014((v14 - v12), (v14 - *(v4 + v13 - 4)));
            v13 -= 4;
            if ((result & 1) == 0)
            {
              v15 = (v4 + v13 + 4);
              goto LABEL_10;
            }
          }

          v15 = v4;
LABEL_10:
          *v15 = v12;
        }

        v5 = v8 + 1;
        v7 += 4;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

unsigned int *sub_4A2C(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    for (i = result + 1; v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      v9 = *(*a3 + 40) + *(*a3 + 32);
      result = sub_5014((v9 - v7), (v9 - v8));
      if (result)
      {
        v10 = *v4;
        v11 = v4;
        do
        {
          v12 = v11;
          v13 = *--v11;
          *v12 = v13;
          v14 = *(*a3 + 40) + *(*a3 + 32);
          result = sub_5014((v14 - v10), (v14 - *(v12 - 2)));
        }

        while ((result & 1) != 0);
        *v11 = v10;
      }
    }
  }

  return result;
}

unsigned int *sub_4AE8(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = *(*a3 + 40) + *(*a3 + 32);
  if (sub_5014((v7 - v6), (v7 - *(a2 - 1))))
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
      v10 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (!sub_5014((v10 - v6), (v10 - v9)));
  }

  else
  {
    v11 = a1 + 1;
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = *(*a3 + 40) + *(*a3 + 32);
      ++v11;
    }

    while (!sub_5014((v12 - v6), (v12 - *v8)));
  }

  if (v8 < v4)
  {
    do
    {
      v13 = *--v4;
      v14 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (sub_5014((v14 - v6), (v14 - v13)));
  }

  while (v8 < v4)
  {
    v15 = *v8;
    *v8 = *v4;
    *v4 = v15;
    do
    {
      v16 = v8[1];
      ++v8;
      v17 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (!sub_5014((v17 - v6), (v17 - v16)));
    do
    {
      v18 = *--v4;
      v19 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (sub_5014((v19 - v6), (v19 - v18)));
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v6;
  return v8;
}

int *sub_4C4C(int *a1, int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = *(*a3 + 40) + *(*a3 + 32);
  }

  while (sub_5014((v8 - a1[++v6]), (v8 - v7)));
  v10 = &a1[v6];
  v11 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v14 = *--a2;
      v15 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (!sub_5014((v15 - v14), (v15 - v7)));
  }

  else
  {
    do
    {
      v12 = *--a2;
      v13 = *(*a3 + 40) + *(*a3 + 32);
    }

    while (!sub_5014((v13 - v12), (v13 - v7)));
  }

  if (v10 < a2)
  {
    v16 = &a1[v6];
    v17 = a2;
    do
    {
      v18 = *v16;
      *v16 = *v17;
      *v17 = v18;
      do
      {
        v19 = v16[1];
        ++v16;
        v20 = *(*a3 + 40) + *(*a3 + 32);
      }

      while (sub_5014((v20 - v19), (v20 - v7)));
      do
      {
        v21 = *--v17;
        v22 = *(*a3 + 40) + *(*a3 + 32);
      }

      while (!sub_5014((v22 - v21), (v22 - v7)));
    }

    while (v16 < v17);
    v11 = v16 - 1;
  }

  if (v11 != a1)
  {
    *a1 = *v11;
  }

  *v11 = v7;
  return v11;
}

BOOL sub_4DA8(int32x2_t *a1, int32x2_t *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_4664(a1, a1 + 1, &a2[-1] + 1, a3);
        break;
      case 4:
        sub_4664(a1, a1 + 1, &a1[1], a3);
        v19 = *(*a3 + 40) + *(*a3 + 32);
        if (sub_5014((v19 - a2[-1].u32[1]), (v19 - a1[1].u32[0])))
        {
          v20 = a1[1].i32[0];
          a1[1].i32[0] = a2[-1].i32[1];
          a2[-1].i32[1] = v20;
          v21 = *(*a3 + 40) + *(*a3 + 32);
          if (sub_5014((v21 - a1[1].u32[0]), (v21 - a1->u32[1])))
          {
            v23 = a1->i32[1];
            v22 = a1[1].u32[0];
            v24 = a1->u32[0];
            a1->i32[1] = v22;
            a1[1].i32[0] = v23;
            v25 = *(*a3 + 40) + *(*a3 + 32);
            if (sub_5014((v25 - v22), (v25 - v24)))
            {
              *a1 = vrev64_s32(*a1);
            }
          }
        }

        return 1;
      case 5:
        sub_478C(a1, a1 + 1, &a1[1], &a1[1] + 1, &a2[-1] + 1, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(*a3 + 40) + *(*a3 + 32);
    if (sub_5014((v7 - a2[-1].u32[1]), (v7 - a1->u32[0])))
    {
      v8 = a1->i32[0];
      a1->i32[0] = a2[-1].i32[1];
      a2[-1].i32[1] = v8;
    }

    return 1;
  }

LABEL_11:
  v9 = a1 + 1;
  sub_4664(a1, a1 + 1, &a1[1], a3);
  v10 = (a1 + 12);
  if (&a1[1].u8[4] == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *(*a3 + 40) + *(*a3 + 32);
    if (sub_5014((v13 - v10->u32[0]), (v13 - v9->u32[0])))
    {
      v14 = v10->u32[0];
      v15 = v11;
      while (1)
      {
        *(&a1[1].i32[1] + v15) = *(a1[1].i32 + v15);
        if (v15 == -8)
        {
          break;
        }

        v16 = *(*a3 + 40) + *(*a3 + 32);
        v17 = sub_5014((v16 - v14), (v16 - *(&a1->u32[1] + v15)));
        v15 -= 4;
        if (!v17)
        {
          v18 = (a1 + v15 + 12);
          goto LABEL_19;
        }
      }

      v18 = a1;
LABEL_19:
      v18->i32[0] = v14;
      if (++v12 == 8)
      {
        return &v10->u8[4] == a2;
      }
    }

    v9 = v10;
    v11 += 4;
    v10 = (v10 + 4);
    if (v10 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_5014(int *a1, int *a2)
{
  v2 = (a1 - *a1);
  if (*v2 >= 7u && (v3 = v2[3]) != 0)
  {
    v4 = *(a1 + v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = (a2 - *a2);
  if (*v5 >= 7u && (v6 = v5[3]) != 0)
  {
    v7 = *(a2 + v6);
  }

  else
  {
    v7 = -1;
  }

  return v4 < v7;
}

unsigned int *sub_5070(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_51CC(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *(*a4 + 40) + *(*a4 + 32);
        if (sub_5014((v13 - *v12), (v13 - *a1)))
        {
          v14 = *v12;
          *v12 = *a1;
          *a1 = v14;
          sub_51CC(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 1;
      do
      {
        v16 = *a1;
        v17 = sub_5344(a1, a4, v8);
        if (v15 == v17)
        {
          *v17 = v16;
        }

        else
        {
          *v17 = *v15;
          *v15 = v16;
          sub_5400(a1, (v17 + 1), a4, v17 + 1 - a1);
        }

        --v15;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

BOOL sub_51CC(_BOOL8 result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v10 = (a4 - result) >> 1;
      v11 = v10 + 1;
      v12 = (result + 4 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3)
      {
        v14 = *(*a2 + 40) + *(*a2 + 32);
        if (sub_5014((v14 - *v12), (v14 - v12[1])))
        {
          ++v12;
          v11 = v13;
        }
      }

      v15 = *(*a2 + 40) + *(*a2 + 32);
      result = sub_5014((v15 - *v12), (v15 - *v5));
      if (!result)
      {
        v21 = *v5;
        do
        {
          v16 = v5;
          v5 = v12;
          *v16 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (v6 + 4 * v17);
          v18 = 2 * v11 + 2;
          if (v18 < a3)
          {
            v19 = *(*a2 + 40) + *(*a2 + 32);
            if (sub_5014((v19 - *v12), (v19 - v12[1])))
            {
              ++v12;
              v17 = v18;
            }
          }

          v20 = *(*a2 + 40) + *(*a2 + 32);
          result = sub_5014((v20 - *v12), (v20 - v21));
          v11 = v17;
        }

        while (!result);
        *v5 = v21;
      }
    }
  }

  return result;
}

_DWORD *sub_5344(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      v14 = *(*a2 + 40) + *(*a2 + 32);
      if (sub_5014((v14 - *(v12 - 1)), (v14 - v13)))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

BOOL sub_5400(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 4 * (v4 >> 1));
    v9 = (a2 - 4);
    v10 = *(*a3 + 40) + *(*a3 + 32);
    result = sub_5014((v10 - *v8), (v10 - *(a2 - 4)));
    if (result)
    {
      v11 = *v9;
      do
      {
        v12 = v9;
        v9 = v8;
        *v12 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 4 * v7);
        v13 = *(*a3 + 40) + *(*a3 + 32);
        result = sub_5014((v13 - *v8), (v13 - v11));
      }

      while (result);
      *v9 = v11;
    }
  }

  return result;
}

unint64_t sub_54C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_39B0(a1);
  *(a1 + 70) = 1;
  v6 = a3 * a2;
  sub_555C(a1, v6, 4uLL);

  return sub_555C(a1, v6, a3);
}

uint64_t sub_5530(uint64_t a1, int a2)
{
  if ((*(a1 + 70) & 1) == 0)
  {
    sub_9BA4();
  }

  *(a1 + 70) = 0;

  return sub_3E68(a1, a2);
}

unint64_t sub_555C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 72) < a3)
  {
    *(a1 + 72) = a3;
  }

  return sub_3B00(a1, (a3 - 1) & (-a2 - (*(a1 + 32) - *(a1 + 48) + *(a1 + 40))));
}

unint64_t sub_5594(unint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = sub_5628(result, a3);
    result = sub_3B50(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

uint64_t sub_5628(uint64_t a1, char a2)
{
  sub_3ACC(a1, 1uLL);
  v4 = (*(a1 + 48) - sub_3B50(a1, 1uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t sub_5684(void *a1, const void *a2, unint64_t a3)
{
  if (!a1[11])
  {
    operator new();
  }

  v5 = a1[5];
  v4 = a1[6];
  v6 = a1[4];
  v11 = sub_5778(a1, a2, a3);
  v7 = sub_5820(a1[11], &v11);
  v8 = a1[11];
  if (v8 + 8 == v7)
  {
    v9 = &v11;
    sub_5960(v8, &v11);
  }

  else
  {
    a1[6] += *(a1 + 8) + v4 - (v6 + v5 + a1[6]) + *(a1 + 10);
    v9 = (v7 + 28);
  }

  return *v9;
}

uint64_t sub_5778(uint64_t a1, const void *a2, unint64_t a3)
{
  sub_39B0(a1);
  sub_555C(a1, a3 + 1, 4uLL);
  v6 = (*(a1 + 48) - sub_3B50(a1, 1uLL));
  *(a1 + 48) = v6;
  *v6 = 0;
  if (a3)
  {
    v7 = (*(a1 + 48) - sub_3B50(a1, a3));
    *(a1 + 48) = v7;
    memcpy(v7, a2, a3);
  }

  sub_3E68(a1, a3);
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t sub_5820(uint64_t a1, unsigned int *a2)
{
  v4 = a1 + 8;
  v5 = sub_58BC(a1, a2, *(a1 + 8), a1 + 8);
  if (v4 == v5)
  {
    return v4;
  }

  v6 = v5;
  v7 = *(*(a1 + 24) + 40) + *(*(a1 + 24) + 32);
  v8 = (v7 - *a2);
  v9 = *(v6 + 28);
  v12 = *v8;
  v10 = v8 + 1;
  v11 = v12;
  v13 = *(v7 - v9);
  v14 = v13 >= v12 ? v11 : v13;
  v15 = memcmp(v10, (v7 - v9 + 4), v14);
  v16 = v11 < v13;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    return v4;
  }

  return v6;
}

uint64_t sub_58BC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = *(*(a1 + 24) + 40) + *(*(a1 + 24) + 32);
    v7 = *a2;
    v8 = (v6 - v7 + 4);
    v9 = *(v6 - v7);
    do
    {
      v10 = *(v5 + 28);
      v11 = *(v6 - v10);
      if (v9 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v9;
      }

      v13 = memcmp((v6 - v10 + 4), v8, v12);
      v14 = v11 < v9;
      if (v13)
      {
        v14 = v13 < 0;
      }

      v15 = !v14;
      if (v14)
      {
        v16 = 8;
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        a4 = v5;
      }

      v5 = *(v5 + v16);
    }

    while (v5);
  }

  return a4;
}

uint64_t sub_5960(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_59F4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_59F4(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(*(a1 + 24) + 40) + *(*(a1 + 24) + 32);
    v7 = (v6 - *a3);
    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    do
    {
      while (1)
      {
        v11 = v4;
        v12 = *(v4 + 28);
        v13 = (v6 - v12 + 4);
        v14 = *(v6 - v12);
        if (v14 >= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v14;
        }

        v16 = memcmp(v8, (v6 - v12 + 4), v15);
        v17 = v9 < v14;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (!v17)
        {
          break;
        }

        v4 = *v11;
        v5 = v11;
        if (!*v11)
        {
          goto LABEL_17;
        }
      }

      v18 = memcmp(v13, v8, v15);
      v19 = v14 < v9;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (!v19)
      {
        break;
      }

      v5 = v11 + 1;
      v4 = v11[1];
    }

    while (v4);
  }

  else
  {
    v11 = (a1 + 8);
  }

LABEL_17:
  *a2 = v11;
  return v5;
}

uint64_t *sub_5AF4(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_5B4C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_5B4C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_5CE8(uint64_t a1, unsigned int a2, const char *a3, int a4)
{
  v8 = a3 != 0;
  sub_39B0(a1);
  *(a1 + 56) = *(a1 + 40);
  v9 = 4;
  if (a4)
  {
    v9 = 8;
  }

  sub_555C(a1, v9 + 4 * v8, *(a1 + 72));
  if (a3)
  {
    if (strlen(a3) != 4)
    {
      sub_9BD0();
    }

    v10 = (*(a1 + 48) - sub_3B50(a1, 4uLL));
    *(a1 + 48) = v10;
    *v10 = *a3;
  }

  v11 = sub_3E14(a1, a2);
  result = sub_3E68(a1, v11);
  if (a4)
  {
    result = sub_3E68(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40));
  }

  *(a1 + 71) = 1;
  return result;
}

void sub_5DD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_5E24(a2, *(a1 + 40));
  if (v3)
  {
    sub_1E50((*(*(a1 + 32) + 8) + 48), &v3);
  }
}

uint64_t sub_5E24(uint64_t a1, unint64_t a2)
{
  *uu = 0;
  v64 = 0;
  if (!dyld_image_copy_uuid())
  {
    return 0;
  }

  memset(out, 0, 37);
  uuid_unparse(uu, out);
  v55 = 0;
  v56 = &v55;
  v57 = 0x3812000000;
  v58 = sub_633C;
  v59 = nullsub_2;
  v60 = "";
  v61 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3812000000;
  v51 = sub_634C;
  v52 = nullsub_3;
  v53 = "";
  v54 = 0;
  v41 = _NSConcreteStackBlock;
  v42 = 3221225472;
  v43 = sub_635C;
  v44 = &unk_105E0;
  v46 = &v48;
  v47 = a2;
  v45 = &v55;
  dyld_image_content_for_segment();
  v33 = 0;
  v34 = &v33;
  v35 = 0x5812000000;
  v36 = sub_63C4;
  v37 = sub_63D0;
  v38 = "";
  memset(v39, 0, sizeof(v39));
  v40 = 1065353216;
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_63D8;
  v31 = &unk_10608;
  v32 = &v33;
  dyld_image_for_each_section_info();
  v19 = 0;
  v20 = &v19;
  v21 = 0x4812000000;
  v22 = sub_333C;
  v23 = sub_3360;
  v24 = "";
  v26 = 0;
  v27 = 0;
  __p = 0;
  dyld_image_for_each_segment_info();
  sub_7C24((v34 + 6));
  v3 = v20[6];
  v4 = v20[7];
  if (v3 == v4)
  {
    v17 = 0;
  }

  else
  {
    v5 = sub_41BC(a2, v3, (v4 - v3) >> 2);
    installname = dyld_image_get_installname();
    v7 = sub_375C(installname, a2);
    v8 = strlen(out);
    v9 = sub_5684(a2, out, v8);
    sub_39B0(a2);
    *(a2 + 70) = 1;
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 40);
    sub_3D2C(a2, 4, v9);
    sub_3D2C(a2, 6, v7);
    sub_3D2C(a2, 12, *(v56 + 12));
    sub_3D2C(a2, 14, *(v49 + 12));
    v13 = sub_3EC0(a2, v10 - v11 + v12);
    sub_39B0(a2);
    *(a2 + 70) = 1;
    v14 = *(a2 + 32);
    v15 = *(a2 + 48);
    v16 = *(a2 + 40);
    sub_5594(a2, 4, 1, 0);
    sub_3D2C(a2, 6, v13);
    sub_3D2C(a2, 8, v5);
    sub_5594(a2, 14, 1, 0);
    sub_39E0(a2, 10, 0, -1);
    v17 = sub_3EC0(a2, v14 - v15 + v16);
  }

  _Block_object_dispose(&v19, 8);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v33, 8);
  sub_691C(v39);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v55, 8);
  return v17;
}

void sub_62B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a17, 8);
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a31, 8);
  sub_691C(v49 + 48);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v50 - 216), 8);
  _Unwind_Resume(a1);
}

const char *sub_635C(const char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    *(*(*(result + 4) + 8) + 48) = sub_37A8(*(a2 + 4) | ((*(a2 + 8) & 0xFFFFFF) << 32), *(result + 6));
    FamilyName = CSArchitectureGetFamilyName();
    result = sub_375C(FamilyName, *(v2 + 6));
    *(*(*(v2 + 5) + 8) + 48) = result;
  }

  return result;
}

void sub_63D8(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a5)
  {
    v13[0] = a4;
    v13[1] = a5;
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = &unk_B325;
    }

    sub_24C8(__p, v7);
    v8 = *(a1 + 32);
    *v14 = *__p;
    v15 = v12;
    v9 = *(v8 + 8);
    sub_24C8(__p, a2);
    v16 = __p;
    v10 = sub_69E4((v9 + 48), __p);
    sub_64D8(v10 + 5, v13);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }
  }
}

void sub_64A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_64D8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_74A4(a1, a2);
  }

  else
  {
    sub_743C(a1, a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

void sub_6518(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || !a4)
  {
    return;
  }

  v29 = 0;
  v30 = 0;
  v28 = 0;
  v8 = *(a1[4] + 8);
  sub_24C8(__p, a2);
  v9 = sub_7824((v8 + 48), __p);
  v10 = v9;
  if ((SBYTE7(v25) & 0x80000000) == 0)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

LABEL_7:
    memset(v27, 0, sizeof(v27));
    sub_7920(v27, v10[5], v10[6], 0xCCCCCCCCCCCCCCCDLL * ((v10[6] - v10[5]) >> 3));
    v11 = v10[5];
    v12 = v10[6];
    if (v11 != v12)
    {
      v13 = (v11 + 16);
      do
      {
        *__p = *(v13 - 1);
        if (*(v13 + 23) < 0)
        {
          sub_7B68(&v25, *v13, *(v13 + 1));
        }

        else
        {
          v14 = *v13;
          v26 = *(v13 + 2);
          v25 = v14;
        }

        v23 = sub_67DC(__p, a1[6]);
        if (v23)
        {
          sub_1E50(&v28, &v23);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }

        v15 = v13 - 1;
        v13 = (v13 + 40);
      }

      while (v15 + 40 != v12);
    }

    __p[0] = v27;
    sub_7AC4(__p);
    goto LABEL_18;
  }

  operator delete(__p[0]);
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_18:
  if (v28 == v29)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_41BC(a1[6], v28, (v29 - v28) >> 2);
  }

  v17 = strlen(a2);
  v18 = sub_5684(a1[6], a2, v17);
  v19 = a1[6];
  sub_39B0(v19);
  *(v19 + 70) = 1;
  v20 = *(v19 + 32);
  v21 = *(v19 + 48);
  v22 = *(v19 + 40);
  sub_39E0(v19, 6, a3, -1);
  sub_39E0(v19, 8, a4, 0);
  sub_3D2C(v19, 4, v18);
  sub_3D2C(v19, 22, v16);
  LODWORD(__p[0]) = sub_3EC0(v19, v20 - v21 + v22);
  if (LODWORD(__p[0]))
  {
    sub_1E50((*(a1[5] + 8) + 48), __p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_6764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_67DC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 39);
  if (v4 >= 0)
  {
    v5 = (a1 + 16);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 39);
  }

  else
  {
    v6 = *(a1 + 24);
  }

  v7 = sub_5684(a2, v5, v6);
  sub_39B0(a2);
  *(a2 + 70) = 1;
  v8 = *(a2 + 40);
  v9 = *(a2 + 32) - *(a2 + 48);
  sub_39E0(a2, 6, *a1, -1);
  sub_39E0(a2, 8, *(a1 + 8), 0);
  sub_3D2C(a2, 4, v7);

  return sub_3EC0(a2, v9 + v8);
}

uint64_t sub_68AC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_691C(uint64_t a1)
{
  sub_6958(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_6958(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_699C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_699C(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_7AC4(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

const void **sub_69E4(void *a1, const void **a2)
{
  v4 = sub_6CC4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_7170(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_6C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6C78(va);
  _Unwind_Resume(a1);
}

uint64_t sub_6C78(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_699C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_6CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_6D04(&v5, a2, v3);
}

unint64_t sub_6D04(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_70B0(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_7004(a2, a3);
  }

  else
  {
    return sub_6F0C(a2, a3);
  }
}

unint64_t sub_6F0C(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_7004(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_70B0(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_7170(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_71E8(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_72D8(a1, prime);
    }
  }
}

void sub_72D8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_4188();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_743C(void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  *v3 = *a2;
  if (*(a2 + 39) < 0)
  {
    result = sub_7B68((v3 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
  }

  v2[1] = v3 + 40;
  return result;
}

uint64_t sub_74A4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_4098();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_75FC(a1, v6);
  }

  v7 = 40 * v2;
  v16 = 0;
  v17 = v7;
  v18 = 40 * v2;
  *v7 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_7B68((v7 + 16), *(a2 + 16), *(a2 + 24));
    v7 = v17;
    v9 = v18;
  }

  else
  {
    v8 = *(a2 + 16);
    *(&stru_20.cmd + 5 * v2) = *(a2 + 32);
    *&dword_10[10 * v2] = v8;
    v9 = 40 * v2;
  }

  *&v18 = v9 + 40;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  sub_7654(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_7790(&v16);
  return v15;
}

void sub_75E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_7790(va);
  _Unwind_Resume(a1);
}

void sub_75FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_4188();
}

uint64_t sub_7654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(*(v5 + 16));
      }

      v5 += 40;
    }
  }

  return sub_7710(v9);
}

uint64_t sub_7710(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_7748(a1);
  }

  return a1;
}

void sub_7748(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 40;
  }
}

uint64_t sub_7790(uint64_t a1)
{
  sub_77C8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_77C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

const void **sub_7824(void *a1, const void **a2)
{
  v4 = sub_6CC4(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_7170(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_7920(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_79A8(result, a4);
  }

  return result;
}

void sub_7988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_7AC4(&a9);
  _Unwind_Resume(a1);
}

void sub_79A8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_75FC(a1, a2);
  }

  sub_4098();
}

uint64_t sub_79F4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 1;
    do
    {
      *v4 = *(v6 - 1);
      if (*(v6 + 23) < 0)
      {
        sub_7B68((v4 + 16), *v6, *(v6 + 1));
        v4 = v13;
      }

      else
      {
        v7 = *v6;
        *(v4 + 32) = *(v6 + 2);
        *(v4 + 16) = v7;
      }

      v8 = v6 - 1;
      v4 += 40;
      v13 = v4;
      v6 = (v6 + 40);
    }

    while ((v8 + 40) != a3);
  }

  v11 = 1;
  sub_7710(v10);
  return v4;
}

void sub_7AC4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_7B18(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_7B18(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void *sub_7B68(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_7C0C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_7C24(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_6958(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_7C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A94(a2, a3, *(a1 + 40), 0);
  if (v4)
  {
    sub_1E50((*(*(a1 + 32) + 8) + 48), &v4);
  }
}

uint64_t sub_7CDC(uint64_t a1)
{
  sub_7D18(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_7D18(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **sub_7D64(void *a1, const void **a2)
{
  v4 = sub_6CC4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_7FC4();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_7170(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_7FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_807C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8060(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_807C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_807C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

id _signpostSpecPathsForURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v27 = 0;
    v2 = +[NSFileManager defaultManager];
    v3 = [v1 path];
    if ([v2 fileExistsAtPath:v3 isDirectory:&v27])
    {
      if (v27)
      {
        v26 = 0;
        v4 = [v2 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:0 options:0 error:&v26];
        v5 = v26;
        v6 = v5;
        v7 = &__NSArray0__struct;
        if (v4 && !v5 && [v4 count])
        {
          v20 = v3;
          v21 = v2;
          v7 = +[NSMutableArray array];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v19 = v4;
          v8 = v4;
          v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v23;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v23 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v22 + 1) + 8 * i);
                v14 = [v13 pathExtension];
                if (([v14 isEqualToString:@"plist"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"json"))
                {
                  v15 = [NSURL URLByResolvingAliasFileAtURL:v13 options:768 error:0];
                  v16 = v15;
                  if (v15)
                  {
                    v17 = [v15 path];
                    [v7 addObject:v17];
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
            }

            while (v10);
          }

          v2 = v21;
          v4 = v19;
          v3 = v20;
          v6 = 0;
        }
      }

      else
      {
        v29 = v3;
        v7 = [NSArray arrayWithObjects:&v29 count:1];
      }
    }

    else
    {
      v7 = &__NSArray0__struct;
    }
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

id _deserializeSignpostSpecs(void *a1)
{
  v1 = a1;
  v2 = [NSArray arrayWithContentsOfFile:v1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_15;
  }

  v5 = [NSDictionary dictionaryWithContentsOfFile:v1];
  v6 = v5;
  if (!v5)
  {
    v7 = [NSData dataWithContentsOfFile:v1];
    if (v7)
    {
      v8 = [NSJSONSerialization JSONObjectWithData:v7 options:8 error:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
LABEL_10:
        v4 = v9;

LABEL_13:
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v8;
        v9 = [NSArray arrayWithObjects:&v11 count:1];
        goto LABEL_10;
      }
    }

    v4 = 0;
    goto LABEL_13;
  }

  v12 = v5;
  v4 = [NSArray arrayWithObjects:&v12 count:1];
LABEL_14:

LABEL_15:

  return v4;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}