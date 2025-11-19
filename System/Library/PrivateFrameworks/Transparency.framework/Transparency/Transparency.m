void __initializeApplicationIdentifierMaps_block_invoke()
{
  v26[5] = *MEMORY[0x1E69E9840];
  v25[0] = @"IDS";
  v0 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v26[0] = v0;
  v25[1] = @"TLT";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v26[1] = v1;
  v25[2] = @"CK";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:2];
  v26[2] = v2;
  v25[3] = @"MP";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:3];
  v26[3] = v3;
  v25[4] = @"FT";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v26[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:5];
  v6 = kApplicationIdentifierMap;
  kApplicationIdentifierMap = v5;

  v23[0] = @"IDS";
  v23[1] = @"MP";
  v24[0] = @"im";
  v24[1] = @"mp1";
  v23[2] = @"FT";
  v24[2] = @"ftm";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v8 = kApplicationIdentifierToUriPrefixMap;
  kApplicationIdentifierToUriPrefixMap = v7;

  v9 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v21[0] = v9;
  v22[0] = @"IDS";
  v10 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v21[1] = v10;
  v22[1] = @"TLT";
  v11 = [MEMORY[0x1E696AD98] numberWithInt:2];
  v21[2] = v11;
  v22[2] = @"CK";
  v12 = [MEMORY[0x1E696AD98] numberWithInt:3];
  v21[3] = v12;
  v22[3] = @"MP";
  v13 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v21[4] = v13;
  v22[4] = @"FT";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];
  v15 = kApplicationEnumMap;
  kApplicationEnumMap = v14;

  v19[0] = @"IDS";
  v19[1] = @"FT";
  v20[0] = @"com.apple.madrid";
  v20[1] = @"com.apple.private.alloy.facetime.multi";
  v19[2] = @"MP";
  v20[2] = @"com.apple.private.alloy.multiplex1";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v17 = kApplicationIDSServiceMap;
  kApplicationIDSServiceMap = v16;

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E10DCDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52E0, &qword_1E112E098);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E10DCEBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52E0, &qword_1E112E098);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E10DD020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E1126770();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E10DD0CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1126770();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1E10DDCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *KTValidateTypeGetString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Peer";
  }

  else
  {
    return off_1E8701240[a1 - 1];
  }
}

__CFString *KTResultGetString(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E8701270[a1];
  }
}

__CFString *KTUIStatusGetString(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return @"Unavailable";
  }

  else
  {
    return off_1E8701290[a1 - 1];
  }
}

__CFString *KTStaticKeyPeerValidateResultGetString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Pending";
  }

  else
  {
    return off_1E8701318[a1];
  }
}

void sub_1E10E2038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E10E23B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *KTOptInGetString(uint64_t a1)
{
  v1 = @"Off";
  if (a1 == 1)
  {
    v1 = @"On";
  }

  if (a1 == 2)
  {
    return @"Pending";
  }

  else
  {
    return v1;
  }
}

void sub_1E10E8A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *KTAccountStatusGetString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E87017A8[a1 - 1];
  }
}

__CFString *KTSystemStatusGetString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"OK";
  }

  else
  {
    return off_1E87017D8[a1 - 1];
  }
}

__CFString *KTSelfStatusGetString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"OK";
  }

  else
  {
    return off_1E8701800[a1 - 1];
  }
}

__CFString *KTIDSAccountStatusGetString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"IDSAccountStatusInvalid";
  }

  else
  {
    return off_1E8701820[a1 - 1];
  }
}

void sub_1E10EC2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E10F0BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E10F1DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1E10F32A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1E10F9C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E10FA178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1E10FDFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E10FF578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E10FF988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E11001B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E1103AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E11087C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E1108D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E1110450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E11108E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E1110D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E1111200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E11116F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E1111C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E111217C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E11126B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E1112BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E1113048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E1113508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E111396C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1E1113D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1E111416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1E1114540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1E1114914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1E1114F00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1E1115D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

const char *sub_1E1119468(unsigned __int8 a1)
{
  v1 = "KTDisableKVSSyncedData";
  v2 = "KTEligibilityServerReporting";
  v3 = "KTEnableByDefault";
  if (a1 != 3)
  {
    v3 = "KTRepair";
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = "KTUseKVSOptInRecords";
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E1119518(unsigned __int8 a1)
{
  sub_1E1126AE0();
  MEMORY[0x1E12EEF30](a1);
  return sub_1E1126B00();
}

uint64_t sub_1E1119574()
{
  v1 = *v0;
  sub_1E1126AE0();
  MEMORY[0x1E12EEF30](v1);
  return sub_1E1126B00();
}

uint64_t sub_1E11195E8()
{
  v1 = *v0;
  sub_1E1126AE0();
  MEMORY[0x1E12EEF30](v1);
  return sub_1E1126B00();
}

unint64_t sub_1E1119630()
{
  result = qword_1ECEA5280;
  if (!qword_1ECEA5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5280);
  }

  return result;
}

const char *sub_1E1119684()
{
  v1 = *v0;
  v2 = "KTDisableKVSSyncedData";
  v3 = "KTEligibilityServerReporting";
  v4 = "KTEnableByDefault";
  if (v1 != 3)
  {
    v4 = "KTRepair";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "KTUseKVSOptInRecords";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for TransparencyFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransparencyFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.env.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.env.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.app.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.app.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.patLogBeginMs.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.patLogBeginMs.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.tltLogBeginMs.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.tltLogBeginMs.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.trustedAppSPKI.getter()
{
  v1 = *(v0 + *(type metadata accessor for TransparencySWSysdiagnose.PublicKeybag(0) + 36));
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.trustedAppSPKI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TransparencySWSysdiagnose.PublicKeybag(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.init(env:app:patLogBeginMs:tltLogBeginMs:fetchTime:trustedAppSPKI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for TransparencySWSysdiagnose.PublicKeybag(0);
  v19 = *(v18 + 32);
  v20 = sub_1E1126770();
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = *(v18 + 36);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  result = sub_1E111BEC4(a10, a9 + v19, &qword_1ECEA53F0, &qword_1E112E050);
  *(a9 + v21) = a11;
  return result;
}

uint64_t sub_1E1119D30()
{
  v1 = *v0;
  v2 = 7761509;
  v3 = 0x6542676F4C746C74;
  v4 = 0x6D69546863746566;
  if (v1 != 4)
  {
    v4 = 0x4164657473757274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7368801;
  if (v1 != 1)
  {
    v5 = 0x6542676F4C746170;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E1119E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E111EC7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E1119E3C(uint64_t a1)
{
  v2 = sub_1E111A1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1119E78(uint64_t a1)
{
  v2 = sub_1E111A1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5288, &qword_1E112E058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E111A1DC();
  sub_1E1126B20();
  v11 = *v3;
  v12 = v3[1];
  v28 = 0;
  sub_1E11269F0();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v27 = 1;
    sub_1E11269F0();
    v15 = v3[4];
    v16 = *(v3 + 40);
    v26 = 2;
    sub_1E1126A30();
    v17 = v3[6];
    v18 = *(v3 + 56);
    v25 = 3;
    sub_1E1126A30();
    v19 = type metadata accessor for TransparencySWSysdiagnose.PublicKeybag(0);
    v20 = *(v19 + 32);
    v24 = 4;
    sub_1E1126770();
    sub_1E111A724(&qword_1ECEA4C58, MEMORY[0x1E6969530]);
    sub_1E1126A10();
    v23 = *(v3 + *(v19 + 36));
    v22[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5290, &qword_1E112E060);
    sub_1E111A76C(&qword_1ECEA4C00);
    sub_1E1126A10();
  }

  return (*(v6 + 8))(v9, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E111A1DC()
{
  result = qword_1ECEA5C80[0];
  if (!qword_1ECEA5C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA5C80);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t TransparencySWSysdiagnose.PublicKeybag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v27 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5298, &qword_1E112E068);
  v29 = *(v31 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v7 = type metadata accessor for TransparencySWSysdiagnose.PublicKeybag(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[40] = 1;
  *(v11 + 6) = 0;
  v11[56] = 1;
  v12 = *(v8 + 40);
  v13 = sub_1E1126770();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = *(v8 + 44);
  *&v11[v14] = 0;
  v15 = a1[3];
  v16 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1E111A1DC();
  v17 = v32;
  sub_1E1126B10();
  if (!v17)
  {
    v32 = v12;
    v27 = v14;
    v19 = v29;
    v18 = v30;
    v40 = 0;
    v20 = v31;
    *v11 = sub_1E1126970();
    *(v11 + 1) = v21;
    v39 = 1;
    *(v11 + 2) = sub_1E1126970();
    *(v11 + 3) = v22;
    v38 = 2;
    *(v11 + 4) = sub_1E11269B0();
    v11[40] = v24 & 1;
    v37 = 3;
    *(v11 + 6) = sub_1E11269B0();
    v11[56] = v25 & 1;
    v36 = 4;
    sub_1E111A724(&qword_1ECEA5430, MEMORY[0x1E6969530]);
    sub_1E1126990();
    sub_1E111BEC4(v18, &v11[v32], &qword_1ECEA53F0, &qword_1E112E050);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5290, &qword_1E112E060);
    v35 = 5;
    sub_1E111A76C(&qword_1ECEA52A0);
    sub_1E1126990();
    (*(v19 + 8))(0, v20);
    v26 = v28;
    *&v11[v27] = v34;
    sub_1E111BD50(v11, v26, type metadata accessor for TransparencySWSysdiagnose.PublicKeybag);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1E111BC9C(v11, type metadata accessor for TransparencySWSysdiagnose.PublicKeybag);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1E111A724(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E111A76C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEA5290, &qword_1E112E060);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E111A850()
{
  sub_1E1126AE0();
  MEMORY[0x1E12EEF30](0);
  return sub_1E1126B00();
}

uint64_t sub_1E111A8BC()
{
  sub_1E1126AE0();
  MEMORY[0x1E12EEF30](0);
  return sub_1E1126B00();
}

uint64_t sub_1E111A914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B726F7774656ELL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1126A70();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E111A9A8(uint64_t a1)
{
  v2 = sub_1E111AB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E111A9E4(uint64_t a1)
{
  v2 = sub_1E111AB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransparencySWSysdiagnose.Reachability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52A8, &qword_1E112E070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E111AB58();
  sub_1E1126B20();
  sub_1E1126A00();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E111AB58()
{
  result = qword_1ECEA5A58[0];
  if (!qword_1ECEA5A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA5A58);
  }

  return result;
}

uint64_t TransparencySWSysdiagnose.Reachability.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52B0, &qword_1E112E078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E111AB58();
  sub_1E1126B10();
  if (!v2)
  {
    v11 = sub_1E1126980();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E111AD18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52A8, &qword_1E112E070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E111AB58();
  sub_1E1126B20();
  sub_1E1126A00();
  return (*(v4 + 8))(v7, v3);
}

uint64_t TransparencySWSysdiagnose.StateMachine.flags.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t TransparencySWSysdiagnose.StateMachine.pendingFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1E111AF74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t TransparencySWSysdiagnose.StateMachine.containerPath.getter()
{
  v1 = (v0 + *(type metadata accessor for TransparencySWSysdiagnose.StateMachine(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TransparencySWSysdiagnose.StateMachine.containerPath.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TransparencySWSysdiagnose.StateMachine(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TransparencySWSysdiagnose.StateMachine.init(state:flags:pendingFlags:publicKeybag:containerPath:reachability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a8;
  *(a9 + 32) = 3;
  v17 = type metadata accessor for TransparencySWSysdiagnose.StateMachine(0);
  v18 = *(v17 + 32);
  v19 = type metadata accessor for TransparencySWSysdiagnose.PublicKeybag(0);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = (a9 + *(v17 + 36));
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v16;
  result = sub_1E111BEC4(a5, a9 + v18, &qword_1ECEA52B8, &qword_1E112E080);
  *v20 = a6;
  v20[1] = a7;
  return result;
}

uint64_t sub_1E111B314()
{
  v1 = *v0;
  v2 = 0x6574617473;
  v3 = 0x6962616863616572;
  v4 = 0x654B63696C627570;
  if (v1 != 4)
  {
    v4 = 0x656E6961746E6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7367616C66;
  if (v1 != 1)
  {
    v5 = 0x46676E69646E6570;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E111B3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E111EE90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E111B414(uint64_t a1)
{
  v2 = sub_1E111B76C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E111B450(uint64_t a1)
{
  v2 = sub_1E111B76C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransparencySWSysdiagnose.StateMachine.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52C0, &qword_1E112E088);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E111B76C();
  sub_1E1126B20();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  sub_1E11269F0();
  if (!v2)
  {
    v20 = v3[2];
    HIBYTE(v19) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5290, &qword_1E112E060);
    sub_1E111A76C(&qword_1ECEA4C00);
    sub_1E1126A10();
    v20 = v3[3];
    HIBYTE(v19) = 2;
    sub_1E1126A10();
    LOBYTE(v20) = *(v3 + 32);
    HIBYTE(v19) = 3;
    sub_1E111B7C0();
    sub_1E1126A10();
    v13 = type metadata accessor for TransparencySWSysdiagnose.StateMachine(0);
    v14 = *(v13 + 32);
    LOBYTE(v20) = 4;
    type metadata accessor for TransparencySWSysdiagnose.PublicKeybag(0);
    sub_1E111A724(&qword_1ECEA4C50, type metadata accessor for TransparencySWSysdiagnose.PublicKeybag);
    sub_1E1126A10();
    v15 = (v3 + *(v13 + 36));
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v20) = 5;
    sub_1E11269F0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E111B76C()
{
  result = qword_1ECEA5830[0];
  if (!qword_1ECEA5830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA5830);
  }

  return result;
}

unint64_t sub_1E111B7C0()
{
  result = qword_1ECEA4C40;
  if (!qword_1ECEA4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA4C40);
  }

  return result;
}

uint64_t TransparencySWSysdiagnose.StateMachine.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52B8, &qword_1E112E080);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v30 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52C8, &qword_1E112E090);
  v32 = *(v34 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v30 - v7;
  v9 = type metadata accessor for TransparencySWSysdiagnose.StateMachine(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 3;
  v14 = *(v10 + 40);
  v15 = type metadata accessor for TransparencySWSysdiagnose.PublicKeybag(0);
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[*(v10 + 44)];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = a1[3];
  v18 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1E111B76C();
  v19 = v35;
  sub_1E1126B10();
  if (!v19)
  {
    v35 = v14;
    v30 = v16;
    v21 = v32;
    v20 = v33;
    LOBYTE(v38) = 0;
    v22 = v34;
    *v13 = sub_1E1126970();
    *(v13 + 1) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5290, &qword_1E112E060);
    v37 = 1;
    sub_1E111A76C(&qword_1ECEA52A0);
    sub_1E1126990();
    *(v13 + 2) = v38;
    v37 = 2;
    sub_1E1126990();
    *(v13 + 3) = v38;
    v37 = 3;
    sub_1E111BCFC();
    sub_1E1126990();
    v13[32] = v38;
    LOBYTE(v38) = 4;
    sub_1E111A724(&qword_1ECEA52D8, type metadata accessor for TransparencySWSysdiagnose.PublicKeybag);
    sub_1E1126990();
    sub_1E111BEC4(v20, &v13[v35], &qword_1ECEA52B8, &qword_1E112E080);
    LOBYTE(v38) = 5;
    v25 = sub_1E1126970();
    v27 = v26;
    (*(v21 + 8))(v8, v22);
    v29 = v30;
    v28 = v31;
    *v30 = v25;
    v29[1] = v27;
    sub_1E111BD50(v13, v28, type metadata accessor for TransparencySWSysdiagnose.StateMachine);
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1E111BC9C(v13, type metadata accessor for TransparencySWSysdiagnose.StateMachine);
}

uint64_t sub_1E111BC9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E111BCFC()
{
  result = qword_1ECEA52D0;
  if (!qword_1ECEA52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA52D0);
  }

  return result;
}

uint64_t sub_1E111BD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E111BE30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E111BEC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t TransparencySWSysdiagnose.init(stateMachine:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TransparencySWSysdiagnose.StateMachine(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TransparencySWSysdiagnose(0) + 20);
  v8 = sub_1E1126770();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  sub_1E111BEC4(a1, a3, &qword_1ECEA52E0, &qword_1E112E098);
  return sub_1E111BEC4(a2, a3 + v7, &qword_1ECEA53F0, &qword_1E112E050);
}

uint64_t sub_1E111C150()
{
  if (*v0)
  {
    result = 0x6B6361626C6C6166;
  }

  else
  {
    result = 0x63614D6574617473;
  }

  *v0;
  return result;
}

uint64_t sub_1E111C194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x63614D6574617473 && a2 == 0xEC000000656E6968;
  if (v6 || (sub_1E1126A70() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1126A70();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E111C280(uint64_t a1)
{
  v2 = sub_1E111C4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E111C2BC(uint64_t a1)
{
  v2 = sub_1E111C4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransparencySWSysdiagnose.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52E8, &qword_1E112E0A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E111C4F8();
  sub_1E1126B20();
  v11[15] = 0;
  type metadata accessor for TransparencySWSysdiagnose.StateMachine(0);
  sub_1E111A724(&qword_1ECEA4C30, type metadata accessor for TransparencySWSysdiagnose.StateMachine);
  sub_1E1126A10();
  if (!v1)
  {
    v9 = *(type metadata accessor for TransparencySWSysdiagnose(0) + 20);
    v11[14] = 1;
    sub_1E1126770();
    sub_1E111A724(&qword_1ECEA4C58, MEMORY[0x1E6969530]);
    sub_1E1126A10();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E111C4F8()
{
  result = qword_1ECEA5E28;
  if (!qword_1ECEA5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5E28);
  }

  return result;
}

uint64_t TransparencySWSysdiagnose.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52E0, &qword_1E112E098);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v27 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA52F0, &qword_1E112E0A8);
  v28 = *(v31 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TransparencySWSysdiagnose(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TransparencySWSysdiagnose.StateMachine(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = *(v13 + 28);
  v19 = sub_1E1126770();
  (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E111C4F8();
  v21 = v32;
  sub_1E1126B10();
  if (!v21)
  {
    v32 = v18;
    v23 = v28;
    v22 = v29;
    v34 = 0;
    sub_1E111A724(&qword_1ECEA52F8, type metadata accessor for TransparencySWSysdiagnose.StateMachine);
    sub_1E1126990();
    sub_1E111BEC4(v30, v16, &qword_1ECEA52E0, &qword_1E112E098);
    v33 = 1;
    sub_1E111A724(&qword_1ECEA5430, MEMORY[0x1E6969530]);
    v24 = v22;
    v25 = v31;
    sub_1E1126990();
    (*(v23 + 8))(v11, v25);
    sub_1E111BEC4(v24, &v16[v32], &qword_1ECEA53F0, &qword_1E112E050);
    sub_1E111BD50(v16, v27, type metadata accessor for TransparencySWSysdiagnose);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E111BC9C(v16, type metadata accessor for TransparencySWSysdiagnose);
}

uint64_t TransparencySWSysdiagnose.json()()
{
  v0 = sub_1E11266B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = sub_1E11266F0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1E11266E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5300, &qword_1E112E0B0);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1E112E030;
  sub_1E11266A0();
  sub_1E1126690();
  sub_1E111A724(&qword_1ECEA4C60, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5308, &qword_1E112E0B8);
  sub_1E111DA58(&qword_1ECEA4C10, &qword_1ECEA5308, &qword_1E112E0B8);
  sub_1E1126880();
  sub_1E11266C0();
  type metadata accessor for TransparencySWSysdiagnose(0);
  sub_1E111A724(&qword_1ECEA4C20, type metadata accessor for TransparencySWSysdiagnose);
  v8 = sub_1E11266D0();

  return v8;
}

Transparency::SWTFollowUpType_optional __swiftcall SWTFollowUpType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1126960();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SWTFollowUpType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B726F4665657274;
  }

  else
  {
    return 0x6B6361626C6C6F72;
  }
}

uint64_t sub_1E111CCBC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6B726F4665657274;
  }

  else
  {
    v2 = 0x6B6361626C6C6F72;
  }

  if (*a2)
  {
    v3 = 0x6B726F4665657274;
  }

  else
  {
    v3 = 0x6B6361626C6C6F72;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E1126A70();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E111CD44()
{
  v1 = *v0;
  sub_1E1126AE0();
  sub_1E11267A0();

  return sub_1E1126B00();
}

uint64_t sub_1E111CDBC()
{
  *v0;
  sub_1E11267A0();
}

uint64_t sub_1E111CE18()
{
  v1 = *v0;
  sub_1E1126AE0();
  sub_1E11267A0();

  return sub_1E1126B00();
}

uint64_t sub_1E111CE8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E1126960();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1E111CEEC(uint64_t *a1@<X8>)
{
  v2 = 0x6B6361626C6C6F72;
  if (*v1)
  {
    v2 = 0x6B726F4665657274;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t TransparencySWIssue.issue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TransparencySWIssue.posted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TransparencySWIssue(0) + 20);
  v4 = sub_1E1126770();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E111D000(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransparencySWIssue.slh.getter()
{
  v1 = *(v0 + *(type metadata accessor for TransparencySWIssue(0) + 24));
}

uint64_t TransparencySWIssue.init(issue:posted:slh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for TransparencySWIssue(0);
  v9 = *(v8 + 20);
  v10 = sub_1E1126770();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t sub_1E111D0FC()
{
  v1 = 0x646574736F70;
  if (*v0 != 1)
  {
    v1 = 6843507;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6575737369;
  }
}

uint64_t sub_1E111D148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E111F098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E111D170(uint64_t a1)
{
  v2 = sub_1E111D42C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E111D1AC(uint64_t a1)
{
  v2 = sub_1E111D42C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransparencySWIssue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5310, &qword_1E112E0C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E111D42C();
  sub_1E1126B20();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_1E1126A40();
  if (!v2)
  {
    v13 = type metadata accessor for TransparencySWIssue(0);
    v14 = *(v13 + 20);
    v18 = 1;
    sub_1E1126770();
    sub_1E111A724(&qword_1ECEA4C58, MEMORY[0x1E6969530]);
    sub_1E1126A60();
    v17 = *(v3 + *(v13 + 24));
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5318, &qword_1E112E0C8);
    sub_1E111D8F0(&qword_1ECEA5320, sub_1E111D480);
    sub_1E1126A60();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E111D42C()
{
  result = qword_1ECEA5FE0[0];
  if (!qword_1ECEA5FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA5FE0);
  }

  return result;
}

unint64_t sub_1E111D480()
{
  result = qword_1ECEA5328;
  if (!qword_1ECEA5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5328);
  }

  return result;
}

uint64_t TransparencySWIssue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1E1126770();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5330, &qword_1E112E0D0);
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for TransparencySWIssue(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E111D42C();
  v27 = v11;
  v17 = v28;
  sub_1E1126B10();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v12;
  v32 = 0;
  v19 = v25;
  *v15 = sub_1E11269C0();
  v15[1] = v20;
  v28 = v20;
  v31 = 1;
  sub_1E111A724(&qword_1ECEA5430, MEMORY[0x1E6969530]);
  sub_1E11269E0();
  (*(v24 + 32))(v15 + *(v18 + 20), v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5318, &qword_1E112E0C8);
  v30 = 2;
  sub_1E111D8F0(&qword_1ECEA5338, sub_1E111D968);
  v22 = 0;
  sub_1E11269E0();
  (*(v26 + 8))(v27, v19);
  *(v15 + *(v18 + 24)) = v29;
  sub_1E111BD50(v15, v23, type metadata accessor for TransparencySWIssue);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E111BC9C(v15, type metadata accessor for TransparencySWIssue);
}

uint64_t sub_1E111D8F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEA5318, &qword_1E112E0C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E111D968()
{
  result = qword_1ECEA5340;
  if (!qword_1ECEA5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5340);
  }

  return result;
}

unint64_t sub_1E111D9C0()
{
  result = qword_1ECEA5348;
  if (!qword_1ECEA5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5348);
  }

  return result;
}

uint64_t sub_1E111DA58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E111DAF8()
{
  sub_1E111DBB4(319, &qword_1ECEA4C28, type metadata accessor for TransparencySWSysdiagnose.StateMachine);
  if (v0 <= 0x3F)
  {
    sub_1E111DBB4(319, &qword_1ED8C6310, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E111DBB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1126860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E111DC30()
{
  sub_1E111E2B0(319, &qword_1ECEA4C18, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E111E2B0(319, &qword_1ECEA4BF0, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E111DBB4(319, &qword_1ED8C6310, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1E111DD48();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E111DD48()
{
  if (!qword_1ECEA4BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEA5290, &qword_1E112E060);
    v0 = sub_1E1126860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEA4BF8);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransparencySWSysdiagnose.Reachability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for TransparencySWSysdiagnose.Reachability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_14Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 2147483646)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    v7 = v6 - 1;
    if (v7 < 0)
    {
      v7 = -1;
    }

    return (v7 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_15Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v10 = *(*(v9 - 8) + 56);
    v11 = v7 + *(a4 + 32);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

void sub_1E111E0A4()
{
  sub_1E111E2B0(319, &qword_1ECEA4C18, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E111DD48();
    if (v1 <= 0x3F)
    {
      sub_1E111E2B0(319, &qword_1ECEA4C38, &type metadata for TransparencySWSysdiagnose.Reachability, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E111DBB4(319, &qword_1ECEA4C48, type metadata accessor for TransparencySWSysdiagnose.PublicKeybag);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E111E1F8()
{
  sub_1E1126770();
  if (v0 <= 0x3F)
  {
    sub_1E111E2B0(319, &qword_1ECEA4C08, MEMORY[0x1E6969080], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E111E2B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransparencySWIssue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E111E3A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E111E438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransparencySWSysdiagnose.Reachability.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TransparencySWSysdiagnose.Reachability.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1E111E600(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E111E694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E111E758()
{
  result = qword_1ECEA64F0;
  if (!qword_1ECEA64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA64F0);
  }

  return result;
}

unint64_t sub_1E111E7B0()
{
  result = qword_1ECEA6600[0];
  if (!qword_1ECEA6600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA6600);
  }

  return result;
}

unint64_t sub_1E111E808()
{
  result = qword_1ECEA6710[0];
  if (!qword_1ECEA6710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA6710);
  }

  return result;
}

unint64_t sub_1E111E860()
{
  result = qword_1ECEA6820[0];
  if (!qword_1ECEA6820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA6820);
  }

  return result;
}

unint64_t sub_1E111E8B8()
{
  result = qword_1ECEA6A30[0];
  if (!qword_1ECEA6A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA6A30);
  }

  return result;
}

unint64_t sub_1E111E910()
{
  result = qword_1ECEA6B40;
  if (!qword_1ECEA6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA6B40);
  }

  return result;
}

unint64_t sub_1E111E968()
{
  result = qword_1ECEA6B48[0];
  if (!qword_1ECEA6B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA6B48);
  }

  return result;
}

unint64_t sub_1E111E9C0()
{
  result = qword_1ECEA5E10;
  if (!qword_1ECEA5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5E10);
  }

  return result;
}

unint64_t sub_1E111EA18()
{
  result = qword_1ECEA5E18;
  if (!qword_1ECEA5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5E18);
  }

  return result;
}

unint64_t sub_1E111EA70()
{
  result = qword_1ECEA5820;
  if (!qword_1ECEA5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5820);
  }

  return result;
}

unint64_t sub_1E111EAC8()
{
  result = qword_1ECEA5828;
  if (!qword_1ECEA5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5828);
  }

  return result;
}

unint64_t sub_1E111EB20()
{
  result = qword_1ECEA5A40;
  if (!qword_1ECEA5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5A40);
  }

  return result;
}

unint64_t sub_1E111EB78()
{
  result = qword_1ECEA5A48;
  if (!qword_1ECEA5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5A48);
  }

  return result;
}

unint64_t sub_1E111EBD0()
{
  result = qword_1ECEA5C70;
  if (!qword_1ECEA5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5C70);
  }

  return result;
}

unint64_t sub_1E111EC28()
{
  result = qword_1ECEA5C78;
  if (!qword_1ECEA5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5C78);
  }

  return result;
}

uint64_t sub_1E111EC7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7761509 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E1126A70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7368801 && a2 == 0xE300000000000000 || (sub_1E1126A70() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6542676F4C746170 && a2 == 0xED0000734D6E6967 || (sub_1E1126A70() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6542676F4C746C74 && a2 == 0xED0000734D6E6967 || (sub_1E1126A70() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D69546863746566 && a2 == 0xE900000000000065 || (sub_1E1126A70() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4164657473757274 && a2 == 0xEE00494B50537070)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E1126A70();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E111EE90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E1126A70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000 || (sub_1E1126A70() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x46676E69646E6570 && a2 == 0xEC0000007367616CLL || (sub_1E1126A70() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6962616863616572 && a2 == 0xEC0000007974696CLL || (sub_1E1126A70() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xEC00000067616279 || (sub_1E1126A70() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xED00006874615072)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E1126A70();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E111F098(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6575737369 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E1126A70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646574736F70 && a2 == 0xE600000000000000 || (sub_1E1126A70() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6843507 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1126A70();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

Transparency::KTRepairFailures_optional __swiftcall KTRepairFailures.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x605040302010007uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1E111F21C()
{
  v1 = *v0;
  sub_1E1126AE0();
  MEMORY[0x1E12EEF30](v1 + 1);
  return sub_1E1126B00();
}

uint64_t sub_1E111F294()
{
  v1 = *v0;
  sub_1E1126AE0();
  MEMORY[0x1E12EEF30](v1 + 1);
  return sub_1E1126B00();
}

uint64_t static KTRepairOptions.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECEA5360 = a1;
  return result;
}

uint64_t sub_1E111F520@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECEA5360;
  return result;
}

uint64_t sub_1E111F56C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECEA5360 = v1;
  return result;
}

uint64_t KTRepairOptions.expectedPublicKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey);
  sub_1E111F604(v1, *(v0 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey + 8));
  return v1;
}

uint64_t sub_1E111F604(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E111F618(a1, a2);
  }

  return a1;
}

uint64_t sub_1E111F618(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t KTRepairOptions.expectedPublicKeyTS.getter()
{
  result = *(v0 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS);
  v2 = *(v0 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS + 8);
  return result;
}

id KTRepairOptions.__allocating_init(repair:expectedPublicKey:expectedPublicKeyTS:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC12Transparency15KTRepairOptions_repair] = a1;
  v12 = &v11[OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS];
  *v13 = a4;
  v13[8] = a5 & 1;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id KTRepairOptions.init(repair:expectedPublicKey:expectedPublicKeyTS:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC12Transparency15KTRepairOptions_repair] = a1;
  v12 = &v5[OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v5[OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS];
  *v13 = a4;
  v13[8] = a5 & 1;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t KTRepairOptions.description.getter()
{
  sub_1E11268A0();
  MEMORY[0x1E12EEBF0](0xD000000000000010, 0x80000001E112DB40);
  v1 = *(v0 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_repair);
  if (v1)
  {
    MEMORY[0x1E12EEC40](v1, &type metadata for KTRepairFailures);
  }

  MEMORY[0x1E12EEBF0]();

  MEMORY[0x1E12EEBF0](0x63696C627570202CLL, 0xED0000203A79654BLL);
  if (*(v0 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey + 8) >> 60 == 15)
  {
    v2 = 0xE100000000000000;
    v3 = 45;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey);
    v3 = sub_1E1126730();
    v2 = v5;
  }

  MEMORY[0x1E12EEBF0](v3, v2);

  MEMORY[0x1E12EEBF0](0x63696C627570202CLL, 0xEF203A535479654BLL);
  if (*(v0 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS + 8))
  {
    v6 = 0xE100000000000000;
    v7 = 45;
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS);
    sub_1E111F96C();
    v7 = sub_1E1126870();
    v6 = v8;
  }

  MEMORY[0x1E12EEBF0](v7, v6);

  MEMORY[0x1E12EEBF0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1E111F96C()
{
  result = qword_1ECEA5380;
  if (!qword_1ECEA5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5380);
  }

  return result;
}

Swift::Void __swiftcall KTRepairOptions.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_repair);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1E11268E0();
      v6 = (v4 + 32);
      do
      {
        v7 = *v6++;
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1E11268C0();
        v8 = *(v17 + 16);
        sub_1E11268F0();
        sub_1E1126900();
        sub_1E11268D0();
        --v5;
      }

      while (v5);
    }

    sub_1E1122464(0, &qword_1ECEA5388, 0x1E696AD98);
    v9 = sub_1E11267F0();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1E1126780();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey + 8) >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = *(v2 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey);
    v11 = sub_1E1126720();
  }

  v13 = sub_1E1126780();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v13];

  if (*(v2 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS + 8))
  {
    v14 = 0;
  }

  else
  {
    v15 = *(v2 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS);
    v14 = sub_1E1126AD0();
  }

  v16 = sub_1E1126780();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v16];
  swift_unknownObjectRelease();
}

id KTRepairOptions.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1E1122464(0, &qword_1ECEA5388, 0x1E696AD98);
  v4 = sub_1E1126850();
  if (v4)
  {
    v5 = v4;
    v29 = ObjectType;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_27:
      v7 = sub_1E1126910();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    while (v7 != v8)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12EECF0](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_26;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v12 = [v9 integerValue];

      v13 = v12 - 1;
      ++v8;
      if ((v12 - 1) < 7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1E1122098(0, *(v30 + 2) + 1, 1, v30);
        }

        v15 = *(v30 + 2);
        v14 = *(v30 + 3);
        if (v15 >= v14 >> 1)
        {
          v30 = sub_1E1122098((v14 > 1), v15 + 1, 1, v30);
        }

        *(v30 + 2) = v15 + 1;
        v30[v15 + 32] = v13;
        v8 = v11;
      }
    }

    sub_1E1122464(0, &qword_1ECEA5390, 0x1E695DEF0);
    v16 = sub_1E1126840();
    v17 = sub_1E1126840();
    v18 = v17;
    if (v16)
    {
      v19 = sub_1E1126740();
      v21 = v20;
      v22 = v29;
      if (v18)
      {
LABEL_19:
        v23 = [v18 longLongValue];
LABEL_23:
        v25 = objc_allocWithZone(v22);
        *&v25[OBJC_IVAR____TtC12Transparency15KTRepairOptions_repair] = v30;
        v26 = &v25[OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey];
        *v26 = v19;
        v26[1] = v21;
        v27 = &v25[OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS];
        *v27 = v23;
        v27[8] = v18 == 0;
        sub_1E111F604(v19, v21);
        v31.receiver = v25;
        v31.super_class = v22;
        v24 = objc_msgSendSuper2(&v31, sel_init);

        sub_1E112218C(v19, v21);
        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return v24;
      }
    }

    else
    {
      v19 = 0;
      v21 = 0xF000000000000000;
      v22 = v29;
      if (v17)
      {
        goto LABEL_19;
      }
    }

    v23 = 0;
    goto LABEL_23;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id KTRepairOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E1120098()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726961706572;
  }
}

uint64_t sub_1E11200F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E11224AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E112011C(uint64_t a1)
{
  v2 = sub_1E11221F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1120158(uint64_t a1)
{
  v2 = sub_1E11221F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KTRepairOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5398, &qword_1E112E9B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E11221F4();
  sub_1E1126B20();
  v16 = *(v3 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_repair);
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53A0, &qword_1E112E9B8);
  sub_1E112229C(&qword_1ECEA53A8, sub_1E1122248);
  sub_1E1126A10();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey + 8);
    v16 = *(v3 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey);
    v17 = v11;
    v18 = 1;
    sub_1E111F604(v16, v11);
    sub_1E111D480();
    sub_1E1126A10();
    sub_1E112218C(v16, v17);
    v12 = *(v3 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS);
    v13 = *(v3 + OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS + 8);
    LOBYTE(v16) = 2;
    sub_1E1126A20();
  }

  return (*(v6 + 8))(v9, v5);
}

id KTRepairOptions.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53C0, &unk_1E112E9C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E11221F4();
  sub_1E1126B10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53A0, &qword_1E112E9B8);
    v19 = 0;
    sub_1E112229C(&qword_1ECEA53C8, sub_1E1122314);
    sub_1E1126990();
    *&v1[OBJC_IVAR____TtC12Transparency15KTRepairOptions_repair] = v18;
    v19 = 1;
    sub_1E111D968();
    sub_1E1126990();
    *&v1[OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey] = v18;
    LOBYTE(v18) = 2;
    v12 = sub_1E11269A0();
    v13 = &v1[OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS];
    *v13 = v12;
    v13[8] = v14 & 1;
    v17.receiver = v1;
    v17.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t static KTRepair.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECEA5361 = a1;
  return result;
}

uint64_t sub_1E112093C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECEA5361;
  return result;
}

uint64_t sub_1E1120988(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECEA5361 = v1;
  return result;
}

id KTRepair.__allocating_init(options:hardReset:nextRepair:bypassRateControl:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC12Transparency8KTRepair_options] = a1;
  v9[OBJC_IVAR____TtC12Transparency8KTRepair_hardReset] = a2;
  sub_1E1122368(a3, &v9[OBJC_IVAR____TtC12Transparency8KTRepair_nextRepair]);
  v9[OBJC_IVAR____TtC12Transparency8KTRepair_bypassRateControl] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_1E11223D8(a3);
  return v10;
}

id KTRepair.init(options:hardReset:nextRepair:bypassRateControl:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC12Transparency8KTRepair_options] = a1;
  v4[OBJC_IVAR____TtC12Transparency8KTRepair_hardReset] = a2;
  sub_1E1122368(a3, &v4[OBJC_IVAR____TtC12Transparency8KTRepair_nextRepair]);
  v4[OBJC_IVAR____TtC12Transparency8KTRepair_bypassRateControl] = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_1E11223D8(a3);
  return v10;
}

id sub_1E1120B84(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1E1126780();

  return v5;
}

unint64_t KTRepair.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - v4;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1E11268A0();

  v19 = 0xD000000000000012;
  v20 = 0x80000001E112DBD0;
  v6 = [*(v0 + OBJC_IVAR____TtC12Transparency8KTRepair_options) description];
  v7 = sub_1E1126790();
  v9 = v8;

  MEMORY[0x1E12EEBF0](v7, v9);

  MEMORY[0x1E12EEBF0](0x203A6472616820, 0xE700000000000000);
  if (*(v1 + OBJC_IVAR____TtC12Transparency8KTRepair_hardReset))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC12Transparency8KTRepair_hardReset))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1E12EEBF0](v10, v11);

  MEMORY[0x1E12EEBF0](0x7065527478656E20, 0xED0000203A726961);
  sub_1E1122368(v1 + OBJC_IVAR____TtC12Transparency8KTRepair_nextRepair, v5);
  v12 = sub_1E1126770();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_1E11223D8(v5);
    v14 = 0xE100000000000000;
    v15 = 45;
  }

  else
  {
    v16 = sub_1E1126750();
    v14 = v17;
    (*(v13 + 8))(v5, v12);
    v15 = v16;
  }

  MEMORY[0x1E12EEBF0](v15, v14);

  return v19;
}

Swift::Void __swiftcall KTRepair.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1E1126770();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC12Transparency8KTRepair_options);
  v14 = sub_1E1126780();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v16 = sub_1E1126780();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  sub_1E1122368(v2 + OBJC_IVAR____TtC12Transparency8KTRepair_nextRepair, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E11223D8(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v17 = sub_1E1126760();
    v18 = sub_1E1126780();
    [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

    (*(v9 + 8))(v12, v8);
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v20 = sub_1E1126780();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
}

id KTRepair.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  type metadata accessor for KTRepairOptions();
  v15 = sub_1E1126840();
  if (v15)
  {
    v16 = v15;
    sub_1E1122464(0, &qword_1ECEA5388, 0x1E696AD98);
    v17 = sub_1E1126840();
    if (v17)
    {
      v18 = v17;
      v41 = [v17 BOOLValue];
    }

    else
    {
      v41 = 0;
    }

    sub_1E1122464(0, &qword_1ECEA53F8, 0x1E695DF00);
    v22 = sub_1E1126840();
    if (v22)
    {
      v23 = v22;
      v38 = v16;
      v39 = ObjectType;
      v40 = v9;
      v24 = sub_1E1126770();
      v25 = *(v24 - 8);
      v26 = *(v25 + 56);
      v26(v12, 1, 1, v24);
      sub_1E11227A8(&qword_1ECEA5400, 255, MEMORY[0x1E6969530]);
      sub_1E1126950();

      if ((*(v25 + 48))(v12, 1, v24) == 1)
      {
        v27 = v14;
        v28 = 1;
      }

      else
      {
        (*(v25 + 32))(v14, v12, v24);
        v27 = v14;
        v28 = 0;
      }

      v26(v27, v28, 1, v24);
      ObjectType = v39;
      v9 = v40;
      v16 = v38;
    }

    else
    {
      v29 = sub_1E1126770();
      (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    }

    v30 = sub_1E1126840();
    if (v30)
    {
      v31 = v30;
      v32 = [v30 BOOLValue];
    }

    else
    {
      v32 = 0;
    }

    sub_1E1122368(v14, v9);
    v33 = objc_allocWithZone(ObjectType);
    *&v33[OBJC_IVAR____TtC12Transparency8KTRepair_options] = v16;
    v33[OBJC_IVAR____TtC12Transparency8KTRepair_hardReset] = v41;
    sub_1E1122368(v9, &v33[OBJC_IVAR____TtC12Transparency8KTRepair_nextRepair]);
    v33[OBJC_IVAR____TtC12Transparency8KTRepair_bypassRateControl] = v32;
    v42.receiver = v33;
    v42.super_class = ObjectType;
    v34 = v16;
    v21 = objc_msgSendSuper2(&v42, sel_init);

    sub_1E11223D8(v9);
    sub_1E11223D8(v14);
    swift_getObjectType();
    v35 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v36 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    v19 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v20 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v21;
}

unint64_t sub_1E1121728()
{
  v1 = 0x736E6F6974706FLL;
  v2 = 0x617065527478656ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6573655264726168;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E11217B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1122F78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E11217E4(uint64_t a1)
{
  v2 = sub_1E1122754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1121820(uint64_t a1)
{
  v2 = sub_1E1122754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id _s12Transparency15KTRepairOptionsCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t KTRepair.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5408, &qword_1E112E9D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1122754();
  sub_1E1126B20();
  v16 = *(v3 + OBJC_IVAR____TtC12Transparency8KTRepair_options);
  v15[7] = 0;
  type metadata accessor for KTRepairOptions();
  sub_1E11227A8(&unk_1ECEA5410, v11, type metadata accessor for KTRepairOptions);
  sub_1E1126A60();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC12Transparency8KTRepair_hardReset);
    v15[6] = 1;
    sub_1E1126A50();
    v15[5] = 2;
    sub_1E1126770();
    sub_1E11227A8(&qword_1ECEA4C58, 255, MEMORY[0x1E6969530]);
    sub_1E1126A10();
    v14 = *(v3 + OBJC_IVAR____TtC12Transparency8KTRepair_bypassRateControl);
    v15[4] = 3;
    sub_1E1126A50();
  }

  return (*(v6 + 8))(v9, v5);
}

id KTRepair.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA5420, &qword_1E112E9D8);
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1122754();
  sub_1E1126B10();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v18 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v19 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v8;
    v15 = v9;
    type metadata accessor for KTRepairOptions();
    v27 = 0;
    sub_1E11227A8(&qword_1ECEA5428, v16, type metadata accessor for KTRepairOptions);
    v17 = v24;
    sub_1E11269E0();
    v21 = OBJC_IVAR____TtC12Transparency8KTRepair_options;
    *(v1 + OBJC_IVAR____TtC12Transparency8KTRepair_options) = v28;
    LOBYTE(v28) = 1;
    v22 = sub_1E11269D0();
    v23 = v21;
    *(v1 + OBJC_IVAR____TtC12Transparency8KTRepair_hardReset) = v22 & 1;
    sub_1E1126770();
    LOBYTE(v28) = 2;
    sub_1E11227A8(&qword_1ECEA5430, 255, MEMORY[0x1E6969530]);
    sub_1E1126990();
    sub_1E11227F0(v14, v1 + OBJC_IVAR____TtC12Transparency8KTRepair_nextRepair);
    LOBYTE(v28) = 3;
    *(v1 + OBJC_IVAR____TtC12Transparency8KTRepair_bypassRateControl) = sub_1E11269D0() & 1;
    v26.receiver = v1;
    v26.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v26, sel_init);
    (*(v15 + 8))(v12, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1E1122014@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

char *sub_1E1122098(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEA5450, &qword_1E112EE38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E112218C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E11221A0(a1, a2);
  }

  return a1;
}

uint64_t sub_1E11221A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1E11221F4()
{
  result = qword_1ECEA6BD0;
  if (!qword_1ECEA6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA6BD0);
  }

  return result;
}

unint64_t sub_1E1122248()
{
  result = qword_1ECEA53B0;
  if (!qword_1ECEA53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA53B0);
  }

  return result;
}

uint64_t sub_1E112229C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEA53A0, &qword_1E112E9B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E1122314()
{
  result = qword_1ECEA53D0;
  if (!qword_1ECEA53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA53D0);
  }

  return result;
}

uint64_t sub_1E1122368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E11223D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1122464(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1E11224AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726961706572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E1126A70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E112DB60 == a2 || (sub_1E1126A70() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E112DB80 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1126A70();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id _s12Transparency8KTRepairC15hardResetRepairACyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for KTRepairOptions();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC12Transparency15KTRepairOptions_repair] = 0;
  *&v5[OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKey] = xmmword_1E112E9A0;
  v6 = &v5[OBJC_IVAR____TtC12Transparency15KTRepairOptions_expectedPublicKeyTS];
  *v6 = 0;
  v6[8] = 1;
  v14.receiver = v5;
  v14.super_class = v4;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = sub_1E1126770();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = type metadata accessor for KTRepair();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC12Transparency8KTRepair_options] = v7;
  v10[OBJC_IVAR____TtC12Transparency8KTRepair_hardReset] = 1;
  sub_1E1122368(v3, &v10[OBJC_IVAR____TtC12Transparency8KTRepair_nextRepair]);
  v10[OBJC_IVAR____TtC12Transparency8KTRepair_bypassRateControl] = 0;
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1E11223D8(v3);
  return v11;
}

unint64_t sub_1E1122754()
{
  result = qword_1ECEA6BD8[0];
  if (!qword_1ECEA6BD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA6BD8);
  }

  return result;
}

uint64_t sub_1E11227A8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E11227F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E1122864()
{
  result = qword_1ECEA5438;
  if (!qword_1ECEA5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5438);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KTRepairFailures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KTRepairFailures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for KTRepair()
{
  result = qword_1ED8C6380;
  if (!qword_1ED8C6380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1122AB4()
{
  sub_1E1122BB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E1122BB0()
{
  if (!qword_1ED8C6310)
  {
    sub_1E1126770();
    v0 = sub_1E1126860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8C6310);
    }
  }
}

uint64_t getEnumTagSinglePayload for KTRepair.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KTRepair.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E1122D6C()
{
  result = qword_1ECEA7160[0];
  if (!qword_1ECEA7160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA7160);
  }

  return result;
}

unint64_t sub_1E1122DC4()
{
  result = qword_1ECEA7370[0];
  if (!qword_1ECEA7370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA7370);
  }

  return result;
}

unint64_t sub_1E1122E1C()
{
  result = qword_1ECEA7480;
  if (!qword_1ECEA7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA7480);
  }

  return result;
}

unint64_t sub_1E1122E74()
{
  result = qword_1ECEA7488[0];
  if (!qword_1ECEA7488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA7488);
  }

  return result;
}

unint64_t sub_1E1122ECC()
{
  result = qword_1ECEA7510;
  if (!qword_1ECEA7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA7510);
  }

  return result;
}

unint64_t sub_1E1122F24()
{
  result = qword_1ECEA7518[0];
  if (!qword_1ECEA7518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEA7518);
  }

  return result;
}

uint64_t sub_1E1122F78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1E1126A70() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573655264726168 && a2 == 0xE900000000000074 || (sub_1E1126A70() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617065527478656ELL && a2 == 0xEA00000000007269 || (sub_1E1126A70() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E112DD10 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1126A70();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1E11230F4()
{
  result = qword_1ECEA5448;
  if (!qword_1ECEA5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5448);
  }

  return result;
}

uint64_t sub_1E1123188()
{
  v1 = *v0;
  sub_1E1126AE0();
  MEMORY[0x1E12EEF30](v1);
  return sub_1E1126B00();
}

uint64_t sub_1E11231FC()
{
  v1 = *v0;
  sub_1E1126AE0();
  MEMORY[0x1E12EEF30](v1);
  return sub_1E1126B00();
}

unint64_t sub_1E1123240@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E1124A9C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t KTError.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for KTError();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 1:
    case 4:
    case 5:
    case 6:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      goto LABEL_6;
    case 3:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA54D0, &qword_1E112EE60);
      v9 = *(v8 + 48);
      v10 = *(v8 + 64);
      *v7 = 0;
      *(v7 + 1) = 0xE000000000000000;
      v11 = sub_1E1126770();
      v12 = *(*(v11 - 8) + 56);
      v12(&v7[v9], 1, 1, v11);
      v12(&v7[v10], 1, 1, v11);
      goto LABEL_6;
    case 7:
      *v7 = MEMORY[0x1E69E7CC0];
      goto LABEL_6;
    case 15:
      *v7 = 0;
      *(v7 + 1) = 0xE000000000000000;
      goto LABEL_6;
    case 16:
      *v7 = 0;
      *(v7 + 1) = 0xE000000000000000;
LABEL_6:
      swift_storeEnumTagMultiPayload();
      sub_1E1124B1C(v7, a2);
      result = (*(v16 + 56))(a2, 0, 1, v4);
      break;
    default:
      v14 = *(v16 + 56);

      result = v14(a2, 1, 1, v4);
      break;
  }

  return result;
}

uint64_t KTError.rawValue.getter()
{
  v1 = type metadata accessor for KTError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1124B80(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v7 = *(v4 + 1);

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA54D0, &qword_1E112EE60);
      v9 = *(v8 + 48);
      sub_1E1124D80(&v4[*(v8 + 64)], &qword_1ECEA53F0, &qword_1E112E050);
      sub_1E1124D80(&v4[v9], &qword_1ECEA53F0, &qword_1E112E050);
      result = 3;
      break;
    case 2:
      sub_1E1124BE4(v4);
      result = 7;
      break;
    case 3:
      sub_1E1124BE4(v4);
      result = 15;
      break;
    case 4:
      sub_1E1124BE4(v4);
      result = 16;
      break;
    case 5:
      return result;
    case 6:
      result = 4;
      break;
    case 7:
      result = 5;
      break;
    case 8:
      result = 6;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 14:
      result = 14;
      break;
    case 15:
      result = 17;
      break;
    default:
      sub_1E1124BE4(v4);
      result = 2;
      break;
  }

  return result;
}

uint64_t static KTError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = qword_1ECEA54C0;

  return v0;
}

uint64_t static KTError.errorDomain.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1ECEA54C0 = a1;
  off_1ECEA54C8 = a2;
}

uint64_t sub_1E11237AC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1ECEA54C8;
  *a1 = qword_1ECEA54C0;
  a1[1] = v2;
}

uint64_t sub_1E11237FC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1ECEA54C0 = v2;
  off_1ECEA54C8 = v1;
}

uint64_t KTError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA53F0, &qword_1E112E050);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v50[-v8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v50[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50[-v13];
  v15 = type metadata accessor for KTError();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E1124B80(v1, v18);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result == 3 || result == 4)
    {
      v37 = *v18;
      v38 = v18[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA54D8, &qword_1E112EE68);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E112EE50;
      *(inited + 32) = 6910581;
      v40 = inited + 32;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = v37;
      *(inited + 56) = v38;
LABEL_18:
      v27 = sub_1E1124C40(inited);
      swift_setDeallocating();
      sub_1E1124D80(v40, &qword_1ECEA54E0, &qword_1E112EE70);
      return v27;
    }

LABEL_13:
    v27 = sub_1E1124C40(MEMORY[0x1E69E7CC0]);
    sub_1E1124BE4(v18);
    return v27;
  }

  if (result == 1)
  {
    v28 = *v18;
    v29 = v18[1];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA54D0, &qword_1E112EE60);
    v31 = *(v30 + 64);
    sub_1E11227F0(v18 + *(v30 + 48), v14);
    sub_1E11227F0(v18 + v31, v12);
    v32 = sub_1E1124C40(MEMORY[0x1E69E7CC0]);
    v54 = MEMORY[0x1E69E6158];
    *&v53 = v28;
    *(&v53 + 1) = v29;
    sub_1E1124D70(&v53, v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v32;
    sub_1E1124684(v52, 6910581, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    v55 = v51;
    sub_1E111BE30(v14, v9, &qword_1ECEA53F0, &qword_1E112E050);
    v34 = sub_1E1126770();
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    if (v36(v9, 1, v34) == 1)
    {
      sub_1E1124D80(v9, &qword_1ECEA53F0, &qword_1E112E050);
      sub_1E1124178(0x73656D6954746D73, 0xEC000000706D6174, &v53);
      sub_1E1124D80(&v53, &qword_1ECEA54E8, &qword_1E112EE78);
    }

    else
    {
      v54 = v34;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v53);
      (*(v35 + 32))(boxed_opaque_existential_0, v9, v34);
      sub_1E1124D70(&v53, v52);
      v45 = v55;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v45;
      sub_1E1124684(v52, 0x73656D6954746D73, 0xEC000000706D6174, v46);
      v55 = v51;
    }

    sub_1E111BE30(v12, v6, &qword_1ECEA53F0, &qword_1E112E050);
    if (v36(v6, 1, v34) == 1)
    {
      sub_1E1124D80(v6, &qword_1ECEA53F0, &qword_1E112E050);
      sub_1E1124178(0x63655264756F6C63, 0xEB0000000064726FLL, v52);
      sub_1E1124D80(v52, &qword_1ECEA54E8, &qword_1E112EE78);
      sub_1E1124D80(v12, &qword_1ECEA53F0, &qword_1E112E050);
      sub_1E1124D80(v14, &qword_1ECEA53F0, &qword_1E112E050);
      return v55;
    }

    else
    {
      v54 = v34;
      v47 = __swift_allocate_boxed_opaque_existential_0(&v53);
      (*(v35 + 32))(v47, v6, v34);
      sub_1E1124D70(&v53, v52);
      v48 = v55;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v48;
      sub_1E1124684(v52, 0x63655264756F6C63, 0xEB0000000064726FLL, v49);
      sub_1E1124D80(v12, &qword_1ECEA53F0, &qword_1E112E050);
      sub_1E1124D80(v14, &qword_1ECEA53F0, &qword_1E112E050);
      return v51;
    }
  }

  if (result != 2)
  {
    goto LABEL_13;
  }

  v20 = *v18;
  v21 = MEMORY[0x1E69E7CC0];
  *&v53 = MEMORY[0x1E69E7CC0];
  v22 = *(v20 + 16);
  if (!v22)
  {
LABEL_17:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA54D8, &qword_1E112EE68);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_1E112EE50;
    v42 = *MEMORY[0x1E696A750];
    *(v41 + 32) = sub_1E1126790();
    v40 = v41 + 32;
    *(v41 + 40) = v43;
    *(v41 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEA54F0, &qword_1E112EE80);
    *(v41 + 48) = v21;
    inited = v41;
    goto LABEL_18;
  }

  v23 = 0;
  while (v23 < *(v20 + 16))
  {
    v24 = *(v20 + 32 + 8 * v23);
    v25 = v24;
    sub_1E1126710();

    MEMORY[0x1E12EEC20]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E1126810();
    }

    ++v23;
    result = sub_1E1126820();
    if (v22 == v23)
    {
      v21 = v53;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1123F10(uint64_t a1)
{
  v2 = sub_1E11251DC(&qword_1ECEA5548);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1E1123F68(uint64_t a1)
{
  v2 = sub_1E11251DC(&qword_1ECEA5548);
  v3 = sub_1E11251DC(&qword_1ECEA5538);
  v4 = sub_1E1125188();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

uint64_t sub_1E1124004()
{
  swift_beginAccess();
  v0 = qword_1ECEA54C0;

  return v0;
}

uint64_t sub_1E1124058(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E11251DC(&qword_1ECEA5538);
  v5 = sub_1E1125188();

  return MEMORY[0x1EEDC27F0](a1, a2, v4, v5);
}

uint64_t sub_1E11240D8@<X0>(uint64_t *a1@<X8>)
{
  result = KTError.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1E1124100(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E1126AE0();
  sub_1E11267A0();
  v6 = sub_1E1126B00();

  return sub_1E1124840(a1, a2, v6);
}

double sub_1E1124178@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1E1124100(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E11248F8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1E1124D70((*(v12 + 56) + 32 * v9), a3);
    sub_1E11244D4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1E112421C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEA5550, &qword_1E112F050);
  v36 = a2;
  result = sub_1E1126930();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1E1124D70(v25, v37);
      }

      else
      {
        sub_1E1125220(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1E1126AE0();
      sub_1E11267A0();
      result = sub_1E1126B00();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1E1124D70(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1E11244D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1126890() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1E1126AE0();

      sub_1E11267A0();
      v14 = sub_1E1126B00();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1E1124684(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E1124100(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1E11248F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1E112421C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1E1124100(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1E1126A80();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1E1124D70(a1, v23);
  }

  else
  {
    sub_1E11247D4(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1E11247D4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1E1124D70(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1E1124840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E1126A70())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_1E11248F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEA5550, &qword_1E112F050);
  v2 = *v0;
  v3 = sub_1E1126920();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1E1125220(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1E1124D70(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1E1124A9C(unint64_t result)
{
  if (result > 0x11 || ((1 << result) & 0x3FDFE) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for KTError()
{
  result = qword_1ECEA78A0;
  if (!qword_1ECEA78A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1124B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1124B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1124BE4(uint64_t a1)
{
  v2 = type metadata accessor for KTError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E1124C40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEA5550, &qword_1E112F050);
    v3 = sub_1E1126940();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E111BE30(v4, &v13, &qword_1ECEA54E0, &qword_1E112EE70);
      v5 = v13;
      v6 = v14;
      result = sub_1E1124100(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E1124D70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1E1124D70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E1124D80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1E1124E48()
{
  result = qword_1ECEA54F8;
  if (!qword_1ECEA54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA54F8);
  }

  return result;
}

void sub_1E1124F30()
{
  sub_1E1124FCC();
  if (v0 <= 0x3F)
  {
    sub_1E1125030();
    if (v1 <= 0x3F)
    {
      sub_1E11250AC();
      if (v2 <= 0x3F)
      {
        sub_1E1125158();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1E1124FCC()
{
  if (!qword_1ECEA5508)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECEA5508);
    }
  }
}

void sub_1E1125030()
{
  if (!qword_1ECEA5510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEA53F0, &qword_1E112E050);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECEA5510);
    }
  }
}

void sub_1E11250AC()
{
  if (!qword_1ECEA5518)
  {
    sub_1E11250F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEA5518);
    }
  }
}

void sub_1E11250F4()
{
  if (!qword_1ECEA5520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEA5528, "2$");
    v0 = sub_1E1126830();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEA5520);
    }
  }
}

uint64_t sub_1E1125158()
{
  result = qword_1ECEA5530;
  if (!qword_1ECEA5530)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1ECEA5530);
  }

  return result;
}

unint64_t sub_1E1125188()
{
  result = qword_1ECEA5540;
  if (!qword_1ECEA5540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEA5540);
  }

  return result;
}

uint64_t sub_1E11251DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KTError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1125220(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}