uint64_t sub_27015FF2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27015FF4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_270164804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_270165D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t currentKeyboardPlaneIsSameAs(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [(objc_class *)+[TypistKeyboardData keyboardData](TypistKeyboardData getVisibleKeyplaneName];
    if ([v2 containsString:@"_"])
    {
      v3 = [v2 componentsSeparatedByString:@"_"];
      v4 = [v3 lastObject];
      v5 = [v4 lowercaseString];

      v2 = v5;
    }

    v6 = [v1 lowercaseString];
    v7 = [v2 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      TYLogl(OS_LOG_TYPE_ERROR, @"Unexpected keyboard plane: [%@]. Waiting for: [%@]", v8, v9, v10, v11, v12, v13, v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _choose(int a1, int a2)
{
  v2 = 0;
  if ((a2 & 0x80000000) == 0 && a1 >= a2)
  {
    if (a1 - a2 >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = a1 - a2;
    }

    if (v3 < 1)
    {
      return 1;
    }

    else
    {
      v4 = (v3 + 1);
      v5 = 1;
      v2 = 1;
      do
      {
        v2 = v2 * a1-- / v5++;
      }

      while (v4 != v5);
    }
  }

  return v2;
}

void getTouchPoints(void *a1, uint64_t a2)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = [MEMORY[0x277CCAE60] valueWithCGPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  if ([v3 count])
  {
    v7 = [v3 lastObject];

    v6 = v7;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __getTouchPoints_block_invoke;
  v17[3] = &__block_descriptor_40_e8_d16__0d8l;
  v17[4] = 0x3FD5555555555555;
  v8 = MEMORY[0x274398FD0](v17);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v19[0] = v6;
      v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{*v4, v4[1]}];
      v19[1] = v9;
      v12 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v4[2], v4[3]}];
      v19[2] = v12;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_16;
      }

      v18[0] = v6;
      v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{*v4, v4[1]}];
      v18[1] = v9;
      v12 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v4[2], v4[3]}];
      v18[2] = v12;
      v13 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v4[4], v4[5]}];
      v18[3] = v13;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
    }

    v11 = 0.333333333;
    goto LABEL_13;
  }

  if (!v5)
  {
    v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:{*v4, v4[1]}];
    [v3 addObject:v10];
LABEL_15:

    goto LABEL_16;
  }

  if (v5 == 1)
  {
    v20[0] = v6;
    v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{*v4, v4[1]}];
    v20[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v11 = 1.0;
LABEL_13:

    if (v10)
    {
      do
      {
        v14 = MEMORY[0x277CCAE60];
        [TypistPathUtilities pointOnCurve:v10 atTime:v11];
        v15 = [v14 valueWithCGPoint:?];
        [v3 addObject:v15];

        v11 = v8[2](v8, v11);
      }

      while (v11 <= 1.0);
      goto LABEL_15;
    }
  }

LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
}

void sub_270170D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27017ADF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_27017D82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27017DA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27017DBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27017E084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27017E2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27017E554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27017EACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 176), 8);
  _Block_object_dispose((v39 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_270180384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270181CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2701820A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270182330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2701825A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270182780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270182900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270182E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270183248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2701833CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270183524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27018381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270183994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270183C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_270185F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2701872B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

void sub_2701881B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Unwind_Resume(a1);
}

void sub_2701887F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270189300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270189554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270189678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270189800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_270189980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getITTKeyboardProxyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getITTKeyboardProxyClass_softClass;
  v7 = getITTKeyboardProxyClass_softClass;
  if (!getITTKeyboardProxyClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getITTKeyboardProxyClass_block_invoke;
    v3[3] = &unk_279DF4710;
    v3[4] = &v4;
    __getITTKeyboardProxyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_27018A4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27018A92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___inputTeletypeIsLinked_block_invoke()
{
  result = getITTKeyboardProxyClass();
  _inputTeletypeIsLinked_linked = result != 0;
  return result;
}

void __getITTKeyboardProxyClass_block_invoke(uint64_t a1)
{
  InputTeletypeLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ITTKeyboardProxy");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getITTKeyboardProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getITTKeyboardProxyClass_block_invoke_cold_1();
    InputTeletypeLibrary();
  }
}

void InputTeletypeLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!InputTeletypeLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __InputTeletypeLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279DF4C60;
    v4 = 0;
    InputTeletypeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!InputTeletypeLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __InputTeletypeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  InputTeletypeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getITTKeyboardConfigurationClass_block_invoke(uint64_t a1)
{
  InputTeletypeLibrary();
  result = objc_getClass("ITTKeyboardConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getITTKeyboardConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getITTKeyboardConfigurationClass_block_invoke_cold_1();
    return [(TypistKeyboardEmoji *)v3 init:v4 options:v5, v6];
  }

  return result;
}

void sub_27018BDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27018C348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Block_object_dispose((v33 - 160), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2701915C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _shouldNotTapArrowKey(void *a1)
{
  v1 = a1;
  v2 = [@"0123456789↨☻" stringByAppendingFormat:@"%@%@%@", @"⌫", @"⏎", @" "];
  if (v1)
  {
    v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v2];
    v4 = [v1 stringByTrimmingCharactersInSet:v3];
    v5 = [v4 length] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_270198A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_270198E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2701997D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27019BE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27019CBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27019CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

id TYLogFramework()
{
  if (TYLogFramework_onceToken != -1)
  {
    TYLogFramework_cold_1();
  }

  v1 = TYLogFramework___logObj;

  return v1;
}

uint64_t __TYLogFramework_block_invoke()
{
  TYLogFramework___logObj = os_log_create("com.apple.typist", "TypistFramework");

  return MEMORY[0x2821F96F8]();
}

void _TYLogl(os_log_type_t a1, void *a2, va_list a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a2;
    v7 = [[v5 alloc] initWithFormat:v6 arguments:a3];

    v8 = [v7 UTF8String];
    v9 = TYLogFramework();
    if (os_log_type_enabled(v9, a1))
    {
      *buf = 136380675;
      v19 = v8;
      _os_log_impl(&dword_27015E000, v9, a1, "%{private}s", buf, 0xCu);
    }

    if (_logToSTDERR == 1)
    {
      v10 = [v7 stringByReplacingOccurrencesOfString:@"%" withString:@"%%" options:0 range:{0, objc_msgSend(v7, "length")}];
      NSLogv(v10, a3);
    }

    if (_logFileHandle && _logToFile == 1)
    {
      v11 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v11 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
      v12 = [MEMORY[0x277CBEAA8] date];
      v13 = [v11 stringFromDate:v12];

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@\n", v13, v7];

      v15 = _logFileHandle;
      v16 = [v14 dataUsingEncoding:4];
      [v15 writeData:v16];

      [_logFileHandle synchronizeFile];
      v7 = v14;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void TYLogl(os_log_type_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a2)
  {
    _TYLogl(a1, a2, &a9);
  }
}

void TYLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    _TYLogl(OS_LOG_TYPE_DEFAULT, a1, &a9);
  }
}

void sub_27019DE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

TypistMathSupport __swiftcall TypistMathSupport.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_27019EA14(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_2701A0018();
  sub_2701A0008();
  v10 = sub_2701A0128();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x2743986B0](v10, v12, v14, v16);
  v19 = v18;

  v20 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_27019EC7C(0, v20[2] + 1, 1, v20);
    v20 = result;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    result = sub_27019EC7C((v22 > 1), v23 + 1, 1, v20);
    v20 = result;
  }

  v20[2] = v23 + 1;
  v24 = &v20[6 * v23];
  *(v24 + 4) = v17;
  *(v24 + 5) = v19;
  v24[6] = a1;
  v24[7] = a2;
  v24[8] = a3;
  v24[9] = a4;
  *v5 = v20;
  return result;
}

void *sub_27019EB48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C1F40, &qword_2701A46A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C1F18, &qword_2701A4680);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_27019EC7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C1F50, &qword_2701A4768);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C1F58, &qword_2701A4770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_27019EDC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2701A01A8();
  sub_2701A0108();
  v6 = sub_2701A01B8();

  return sub_27019F0E8(a1, a2, v6);
}

uint64_t sub_27019EE3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C1F38, &qword_2701A46A0);
  v37 = a2;
  result = sub_2701A0168();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      v38 = v26[1];
      v39 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_2701A01A8();
      sub_2701A0108();
      result = sub_2701A01B8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v39;
      v18[1] = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_27019F0E8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2701A0178())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_27019F1A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C1F38, &qword_2701A46A0);
  v2 = *v0;
  v3 = sub_2701A0158();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        *v23 = v21;
        v23[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v25;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_27019F314(uint64_t a1, uint64_t a2)
{
  *&v81 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C1F20, &qword_2701A4688) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v80 = v68 - v4;
  v5 = sub_2701A0088();
  v77 = *(v5 - 8);
  v78 = v5;
  v6 = *(v77 + 64);
  (MEMORY[0x28223BE20])();
  v79 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_2701A0068() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C1F28, &qword_2701A4690) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v11 = v68 - v10;
  v12 = sub_2701A0038();
  v70 = *(v12 - 8);
  v71 = v12;
  v13 = *(v70 + 64);
  (MEMORY[0x28223BE20])();
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_27019FFD8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = (MEMORY[0x28223BE20])();
  v21 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v68 - v22;
  sub_27019FFC8();
  sub_27019FFB8();
  v24 = v81;

  sub_2701A0058();
  (*(v17 + 16))(v21, v23, v16);
  v25 = v82;
  sub_2701A0048();
  if (v25)
  {
    (*(v17 + 8))(v23, v16);
    return v11;
  }

  v69 = v23;
  v26 = v80;
  *&v82 = a1;
  v75 = v15;
  v76 = v17;
  v28 = v70;
  v27 = v71;
  if ((*(v70 + 48))(v11, 1, v71) == 1)
  {
    sub_27019FB68(v11, &qword_2807C1F28, &qword_2701A4690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C1F30, &qword_2701A4698);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2701A4670;
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_2701A0148();

    v83 = 0xD000000000000011;
    v84 = 0x80000002701AA080;
    MEMORY[0x2743986D0](v82, v24);
    v30 = v83;
    v31 = v84;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    sub_2701A0198();

    (*(v76 + 8))(v69, v16);
    return MEMORY[0x277D84F90];
  }

  v68[1] = 0;
  v32 = v75;
  (*(v28 + 32))(v75, v11, v27);
  v33 = v26;
  sub_27019FFE8();
  v34 = sub_27019FFF8();
  (*(*(v34 - 8) + 56))(v26, 0, 1, v34);
  v35 = v79;
  sub_2701A0028();
  sub_27019FB68(v33, &qword_2807C1F20, &qword_2701A4688);
  v11 = MEMORY[0x277D84F90];
  v83 = MEMORY[0x277D84F90];
  sub_27019FBC8();
  sub_2701A0078();
  v36 = v83;
  v74 = *(v83 + 16);
  if (!v74)
  {
    v65 = v76;
    v62 = v77;
    v66 = v78;
LABEL_26:

    (*(v62 + 8))(v35, v66);
    (*(v70 + 8))(v32, v71);
    (*(v65 + 8))(v69, v16);
    return v11;
  }

  v37 = 0;
  v38 = (v83 + 48);
  v39 = MEMORY[0x277D84F98];
  v72 = v83;
  v73 = v16;
  while (v37 < *(v36 + 16))
  {
    v80 = v11;
    v41 = *(v38 - 2);
    v40 = *(v38 - 1);
    v42 = v38[1];
    v81 = *v38;
    v82 = v42;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v39;
    v45 = sub_27019EDC4(v41, v40);
    v46 = v39[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_29;
    }

    v49 = v44;
    if (v39[3] >= v48)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v44)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_27019F1A0();
        if (v49)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_27019EE3C(v48, isUniquelyReferenced_nonNull_native);
      v50 = sub_27019EDC4(v41, v40);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_31;
      }

      v45 = v50;
      if (v49)
      {
LABEL_15:

        v52 = v85;
        v53 = (v85[7] + 32 * v45);
        v54 = v82;
        *v53 = v81;
        v53[1] = v54;
        goto LABEL_19;
      }
    }

    v52 = v85;
    v85[(v45 >> 6) + 8] |= 1 << v45;
    v55 = (v52[6] + 16 * v45);
    *v55 = v41;
    v55[1] = v40;
    v56 = (v52[7] + 32 * v45);
    v57 = v82;
    *v56 = v81;
    v56[1] = v57;
    v58 = v52[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_30;
    }

    v52[2] = v60;
LABEL_19:
    v11 = v80;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v77;
    v35 = v79;
    if ((v61 & 1) == 0)
    {
      v11 = sub_27019EB48(0, *(v11 + 2) + 1, 1, v11);
    }

    v64 = *(v11 + 2);
    v63 = *(v11 + 3);
    if (v64 >= v63 >> 1)
    {
      v11 = sub_27019EB48((v63 > 1), v64 + 1, 1, v11);
    }

    ++v37;
    *(v11 + 2) = v64 + 1;
    *&v11[8 * v64 + 32] = v52;
    v38 += 3;
    v16 = v73;
    v32 = v75;
    v65 = v76;
    v66 = v78;
    v36 = v72;
    if (v74 == v37)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_2701A0188();
  __break(1u);
  return result;
}

unint64_t type metadata accessor for TypistMathSupport()
{
  result = qword_2807C21E0;
  if (!qword_2807C21E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2807C21E0);
  }

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

uint64_t sub_27019FB68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_27019FBC8()
{
  result = qword_2807C21E8[0];
  if (!qword_2807C21E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2807C21E8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_27019FC40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27019FC60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_27019FCD4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}