id SUUIMobileDescriptorAgreementTypeToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"SUUIMobileDescriptorAgreementTypeCellularFee");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"SUUIMobileDescriptorAgreementTypeTermsAndConditions");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"SUUIMobileDescriptorAgreementTypeNone");
  }

  return v2;
}

void sub_26B0BC928(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_3_8_34_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_26B0BCEE4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0BD618(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_2_8_32_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

BOOL numberIsBoolean(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = CFGetTypeID(location);
  v3 = v2 == CFBooleanGetTypeID();
  objc_storeStrong(&location, 0);
  return v3;
}

void sub_26B0C34D0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  *(v10 - 48) = a1;
  *(v10 - 52) = a2;
  objc_destroyWeak((v10 - 40));
  _Unwind_Resume(*(v10 - 48));
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_4_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 66;
  *(result + 29) = 8;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_26B0C53B4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location)
{
  *(v15 - 176) = a1;
  *(v15 - 180) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(*(v15 - 176));
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  *(result + 38) = 0;
  *(result + 39) = 4;
  *(result + 40) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_8_66_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_66_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  return result;
}

void sub_26B0C91F8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, id *location)
{
  *(v14 - 168) = a1;
  *(v14 - 172) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(*(v14 - 168));
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_66_8_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_26B0CC610(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, id *location)
{
  *(v14 - 184) = a1;
  *(v14 - 188) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(*(v14 - 184));
}

void sub_26B0D0DD8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_26B0D2EC0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0D37C8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0D40D0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0D49D8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0D5C68(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0D6AC8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_2_8_32_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_2_8_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 2;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_2_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 2;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_26B0D9AAC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void _SUUIActivityCleanup(os_activity_scope_state_t *a1)
{
  if (a1 && *a1)
  {
    if (LOBYTE((*a1)[1].opaque[1]))
    {
      os_activity_scope_leave(*a1);
    }

    free(*a1);
  }
}

uint64_t __os_log_helper_16_2_1_8_66(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_66_4_2(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 2;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_0_8_0_8_66_4_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 4;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_2_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_26B0DE50C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, id *location)
{
  STACK[0x308] = a1;
  LODWORD(STACK[0x304]) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(STACK[0x308]);
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  *(result + 38) = 66;
  *(result + 39) = 8;
  *(result + 40) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_7_8_32_8_66_8_66_8_66_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 66;
  *(result + 63) = 8;
  *(result + 64) = a8;
  return result;
}

void sub_26B0E2198(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

void sub_26B0E2FEC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0E3B58(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0E44E0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

id SUUIMobileScanOperationTypeToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"FullScan");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"RefreshScanResults");
    }

    else
    {
      v2 = MEMORY[0x277D82BE0](@"Unknown");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"None");
  }

  return v2;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_32_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 32;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

void sub_26B0E565C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

void sub_26B0E973C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id location, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a71 = a1;
  a70 = a2;
  objc_destroyWeak(&location);
  JUMPOUT(0x26B0E978CLL);
}

void sub_26B0E9764(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0EBB58(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location)
{
  STACK[0x6C0] = a1;
  LODWORD(STACK[0x6BC]) = a2;
  objc_destroyWeak(location);
  JUMPOUT(0x26B0EBBACLL);
}

void sub_26B0EBB84(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0ED1AC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B0F0314(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_64_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_64_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_4_0_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 33) = 4;
  *(result + 34) = a5;
  *(result + 38) = 66;
  *(result + 39) = 8;
  *(result + 40) = a6;
  *(result + 48) = 64;
  *(result + 49) = 8;
  *(result + 50) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_7_8_32_8_66_8_66_8_64_8_0_8_64_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 64;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_66_4_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 4;
  *(result + 54) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_7_8_32_8_66_8_66_8_66_8_66_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 64;
  *(result + 63) = 8;
  *(result + 64) = a8;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_66_8_66_8_2_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_2_8_2_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 2;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 2;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  result = a16;
  *a1 = 2;
  *(a1 + 1) = 25;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  return result;
}

uint64_t __os_log_helper_16_2_31_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_64_4_0_8_66_4_0_8_66_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, int a30, uint64_t a31, int a32)
{
  result = a23;
  *a1 = 2;
  *(a1 + 1) = 31;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 64;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 0;
  *(a1 + 263) = 4;
  *(a1 + 264) = a28;
  *(a1 + 268) = 66;
  *(a1 + 269) = 8;
  *(a1 + 270) = a29;
  *(a1 + 278) = 0;
  *(a1 + 279) = 4;
  *(a1 + 280) = a30;
  *(a1 + 284) = 66;
  *(a1 + 285) = 8;
  *(a1 + 286) = a31;
  *(a1 + 294) = 0;
  *(a1 + 295) = 4;
  *(a1 + 296) = a32;
  return result;
}

uint64_t __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  result = a17;
  *a1 = 2;
  *(a1 + 1) = 26;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 66;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  return result;
}

void sub_26B1052EC(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _Unwind_Exception *exception_object, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id *location)
{
  STACK[0x690] = a1;
  LODWORD(STACK[0x68C]) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak(&STACK[0x6E0]);
  _Unwind_Resume(STACK[0x690]);
}

uint64_t __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  result = a18;
  *a1 = 2;
  *(a1 + 1) = 27;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 66;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 0;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_0_8_66_8_0_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

void sub_26B107084(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _Unwind_Exception *exception_object, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id *location)
{
  STACK[0x400] = a1;
  LODWORD(STACK[0x3FC]) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(STACK[0x400]);
}

void sub_26B1091FC(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _Unwind_Exception *exception_object, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id *location)
{
  STACK[0x698] = a1;
  LODWORD(STACK[0x694]) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak(&STACK[0x6E8]);
  _Unwind_Resume(STACK[0x698]);
}

uint64_t __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  result = a19;
  *a1 = 2;
  *(a1 + 1) = 28;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 66;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 0;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  *(a1 + 272) = 66;
  *(a1 + 273) = 8;
  *(a1 + 274) = a29;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_0_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_26B10E690(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _Unwind_Exception *exception_object, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id *location)
{
  STACK[0x3D8] = a1;
  LODWORD(STACK[0x3D4]) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak(&STACK[0x418]);
  _Unwind_Resume(STACK[0x3D8]);
}

uint64_t __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  result = a18;
  *a1 = 2;
  *(a1 + 1) = 27;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 66;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 66;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  return result;
}

uint64_t __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_4_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  result = a18;
  *a1 = 2;
  *(a1 + 1) = 27;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 0;
  *(a1 + 253) = 4;
  *(a1 + 254) = a27;
  *(a1 + 258) = 0;
  *(a1 + 259) = 4;
  *(a1 + 260) = a28;
  return result;
}

uint64_t __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  result = a18;
  *a1 = 2;
  *(a1 + 1) = 27;
  *(a1 + 2) = 32;
  *(a1 + 3) = 8;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  *(a1 + 14) = a3;
  *(a1 + 22) = 66;
  *(a1 + 23) = 8;
  *(a1 + 24) = a4;
  *(a1 + 32) = 66;
  *(a1 + 33) = 8;
  *(a1 + 34) = a5;
  *(a1 + 42) = 0;
  *(a1 + 43) = 8;
  *(a1 + 44) = a6;
  *(a1 + 52) = 66;
  *(a1 + 53) = 8;
  *(a1 + 54) = a7;
  *(a1 + 62) = 0;
  *(a1 + 63) = 8;
  *(a1 + 64) = a8;
  *(a1 + 72) = 66;
  *(a1 + 73) = 8;
  *(a1 + 74) = a9;
  *(a1 + 82) = 66;
  *(a1 + 83) = 8;
  *(a1 + 84) = a10;
  *(a1 + 92) = 66;
  *(a1 + 93) = 8;
  *(a1 + 94) = a11;
  *(a1 + 102) = 66;
  *(a1 + 103) = 8;
  *(a1 + 104) = a12;
  *(a1 + 112) = 0;
  *(a1 + 113) = 8;
  *(a1 + 114) = a13;
  *(a1 + 122) = 66;
  *(a1 + 123) = 8;
  *(a1 + 124) = a14;
  *(a1 + 132) = 66;
  *(a1 + 133) = 8;
  *(a1 + 134) = a15;
  *(a1 + 142) = 66;
  *(a1 + 143) = 8;
  *(a1 + 144) = a16;
  *(a1 + 152) = 66;
  *(a1 + 153) = 8;
  *(a1 + 154) = a17;
  *(a1 + 162) = 66;
  *(a1 + 163) = 8;
  *(a1 + 164) = a18;
  *(a1 + 172) = 66;
  *(a1 + 173) = 8;
  *(a1 + 174) = a19;
  *(a1 + 182) = 0;
  *(a1 + 183) = 8;
  *(a1 + 184) = a20;
  *(a1 + 192) = 0;
  *(a1 + 193) = 8;
  *(a1 + 194) = a21;
  *(a1 + 202) = 66;
  *(a1 + 203) = 8;
  *(a1 + 204) = a22;
  *(a1 + 212) = 0;
  *(a1 + 213) = 8;
  *(a1 + 214) = a23;
  *(a1 + 222) = 0;
  *(a1 + 223) = 8;
  *(a1 + 224) = a24;
  *(a1 + 232) = 0;
  *(a1 + 233) = 8;
  *(a1 + 234) = a25;
  *(a1 + 242) = 0;
  *(a1 + 243) = 8;
  *(a1 + 244) = a26;
  *(a1 + 252) = 0;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 0;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  return result;
}

void sub_26B11437C(unint64_t a1, int a2)
{
  STACK[0x398] = a1;
  LODWORD(STACK[0x394]) = a2;
  objc_destroyWeak(&STACK[0x3A0]);
  _Unwind_Resume(STACK[0x398]);
}

uint64_t __os_log_helper_16_2_2_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_26B11C12C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B11C688(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B11CBE4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B11D140(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B11D69C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

void sub_26B11DBF8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
}

id SUUIMobileStatefulUIEnvironment.init(options:)(uint64_t a1)
{
  v5 = 0;
  v4 = a1;
  *OBJC_IVAR____TtC22SoftwareUpdateUIMobile31SUUIMobileStatefulUIEnvironment_options = a1;
  v3.receiver = v5;
  v3.super_class = type metadata accessor for SUUIMobileStatefulUIEnvironment();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x277D82BE0](v2);
  v5 = v2;
  MEMORY[0x277D82BD8](v2);
  return v2;
}

id sub_26B122614(void *a1)
{
  sub_26B122668();
  v1 = a1;
  return sub_26B1226CC(a1);
}

unint64_t sub_26B122668()
{
  v2 = qword_2803E6458;
  if (!qword_2803E6458)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6458);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26B122798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v9 = v15;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v9 = 0;
  }

  if (v9)
  {
    sub_26B1229D0();

    sub_26B122A34();
    v5 = sub_26B122A98(*(v13 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile31SUUIMobileStatefulUIEnvironment_options));
    v6 = [v9 client];
    v7 = [objc_opt_self() sharedManager];
    MEMORY[0x277D82BE0](a4);
    v8 = sub_26B122AD8(a2, a3, v5, v6, v7, a4);
    MEMORY[0x277D82BD8](v9);
    return v8;
  }

  else
  {
    sub_26B128C48();
    result = sub_26B128D88();
    __break(1u);
  }

  return result;
}

unint64_t sub_26B1229D0()
{
  v2 = qword_2803E6460;
  if (!qword_2803E6460)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6460);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B122A34()
{
  v2 = qword_2803E6468;
  if (!qword_2803E6468)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6468);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26B122C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v9 = v16;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v9 = 0;
  }

  if (v9)
  {
    sub_26B122E74();

    sub_26B122ED8();
    v6 = sub_26B122F3C(*(v14 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile31SUUIMobileStatefulUIEnvironment_options));
    v7 = [v9 client];
    MEMORY[0x277D82BE0](a4);
    MEMORY[0x277D82BE0](a5);
    v8 = sub_26B122F7C(a2, a3, v6, v7, a4, a5);
    MEMORY[0x277D82BD8](v9);
    return v8;
  }

  else
  {
    sub_26B128C48();
    result = sub_26B128D88();
    __break(1u);
  }

  return result;
}

unint64_t sub_26B122E74()
{
  v2 = qword_2803E6470;
  if (!qword_2803E6470)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6470);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B122ED8()
{
  v2 = qword_2803E6478;
  if (!qword_2803E6478)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6478);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26B123110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a1);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    MEMORY[0x277D82BD8](a1);
    v5 = 0;
  }

  if (v5)
  {
    sub_26B1232C4();

    v4 = sub_26B123328(a2, a3, [v5 client]);
    MEMORY[0x277D82BD8](v5);
    return v4;
  }

  else
  {
    sub_26B128C48();
    result = sub_26B128D88();
    __break(1u);
  }

  return result;
}

unint64_t sub_26B1232C4()
{
  v2 = qword_2803E6480;
  if (!qword_2803E6480)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6480);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B12347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26B1235C4();

  v9 = [objc_opt_self() sharedManager];
  if (v9)
  {
    v5 = v9;
  }

  else
  {
    sub_26B128D78();
    __break(1u);
  }

  MEMORY[0x277D82BE0](a4);
  return sub_26B123628(a2, a3, v5, a4);
}

unint64_t sub_26B1235C4()
{
  v2 = qword_2803E6488;
  if (!qword_2803E6488)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6488);
    return ObjCClassMetadata;
  }

  return v2;
}

id SUUIMobileStatefulUIEnvironment.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SUUIMobileStatefulUIEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26B123884(void *a1)
{
  v3 = sub_26B128B78();
  v5 = [v2 initFromError_];
  MEMORY[0x277D82BD8](v3);

  return v5;
}

id sub_26B123910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_26B128C28();
  v13 = [v7 initWithIdentifier_options_usingSUManagerClient_andBetaManager_withCompletionQueue_];
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v12);

  return v13;
}

id sub_26B1239FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_26B128C28();
  v13 = [v7 initWithIdentifier_options_usingSUManagerClient_delegateCallbackQueue_withCompletionQueue_];
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v12);

  return v13;
}

id sub_26B123AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B128C28();
  v7 = [v4 initWithIdentifier_usingSUManagerClient_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v6);

  return v7;
}

id sub_26B123B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B128C28();
  v9 = [v5 initWithIdentifier_usingBetaManager_withCompletionQueue_];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v8);

  return v9;
}

uint64_t sub_26B123BD4()
{
  sub_26B12510C();
  sub_26B12518C();
  return sub_26B128E68();
}

uint64_t sub_26B123DD8()
{
  sub_26B12510C();
  sub_26B12518C();
  return sub_26B128E58();
}

uint64_t sub_26B123E1C()
{
  sub_26B12510C();
  sub_26B12518C();
  return sub_26B128E38();
}

uint64_t sub_26B123E60()
{
  sub_26B12510C();
  sub_26B12518C();
  return sub_26B128E48();
}

uint64_t sub_26B123F80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26B12403C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26B12407C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_2(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26B1240E8(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_26B128C78();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_26B128D98();
  __break(1u);
LABEL_12:
  result = sub_26B128D78();
  __break(1u);
  return result;
}

uint64_t sub_26B124414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20]();
        v15 = sub_26B125718;
        v16 = &v37;
        sub_26B1240E8(sub_26B125734, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_26B128D78();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_26B128D78();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_26B128D78();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_26B128D78();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_26B128D78();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_26B128D78();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_26B128D78();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_26B128D78();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_26B128D78();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_26B128D78();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_26B128D78();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_26B128D78();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_26B128D98();
    __break(1u);
  }

  result = sub_26B128D78();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SUUIStatefulUIEnvironmentOptions()
{
  v4 = qword_2803E6498;
  if (!qword_2803E6498)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803E6498);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_26B124EC4()
{
  v2 = qword_2803E64A0;
  if (!qword_2803E64A0)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B124F5C()
{
  v2 = qword_2803E64A8;
  if (!qword_2803E64A8)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B124FF4()
{
  v2 = qword_2803E64B0;
  if (!qword_2803E64B0)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B12508C()
{
  v2 = qword_2803E64B8;
  if (!qword_2803E64B8)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B12510C()
{
  v2 = qword_2803E64C0;
  if (!qword_2803E64C0)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B12518C()
{
  v2 = qword_2803E64C8;
  if (!qword_2803E64C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E64C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B125204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_26B128D78();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_26B128D78();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_26B128D78();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_26B128D78();
                __break(1u);
              }

              sub_26B128D78();
              __break(1u);
            }

            sub_26B128D78();
            __break(1u);
          }

          sub_26B128D78();
          __break(1u);
        }

        sub_26B128D78();
        __break(1u);
      }

      sub_26B128D78();
      __break(1u);
    }

    sub_26B128D78();
    __break(1u);
  }

  result = sub_26B128D78();
  __break(1u);
  return result;
}

uint64_t sub_26B125760()
{
  result = sub_26B128C48();
  qword_2803E6530 = result;
  qword_2803E6538 = v1;
  return result;
}

uint64_t *sub_26B1257A4()
{
  if (qword_2803E6440 != -1)
  {
    swift_once();
  }

  return &qword_2803E6530;
}

uint64_t static SUUIMobileConstants.clientIdentifier.getter()
{
  v0 = sub_26B1257A4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t getEnumTagSinglePayload for SUUIMobileConstants(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for SUUIMobileConstants(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_26B125B84()
{
  v2 = *(v0 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_statefulUIEnvironment);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_26B125BC4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_platformCapabilities;
  v2 = sub_26B128BA8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26B125C7C()
{
  v3 = (v0 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment__isUsingAutomationServices);
  swift_beginAccess();
  v1 = *v3;
  sub_26B128BC8();
  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_26B125CF8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E6580, &qword_26B13AB90);
  sub_26B128BD8();
  return swift_endAccess();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_26B125DFC(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment__isUsingAutomationServices);
  swift_beginAccess();
  sub_26B125E74(v3);
  *v3 = a1;
  return swift_endAccess();
}

uint64_t *sub_26B125E74(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

char *sub_26B125EC8()
{
  v110 = v0;
  ObjectType = swift_getObjectType();
  v123 = 0;
  v147 = 0;
  v146 = 0;
  v115 = 0;
  v143 = 0;
  v142 = 0;
  v102 = 0;
  v136 = 0;
  v103 = sub_26B128C18();
  v104 = *(v103 - 8);
  v105 = v104;
  v106 = *(v104 + 64);
  v1 = MEMORY[0x28223BE20](0);
  v108 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = &v27 - v108;
  MEMORY[0x28223BE20](v1);
  v109 = &v27 - v108;
  v120 = sub_26B128BA8();
  v111 = *(v120 - 8);
  v119 = v111;
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v27 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v2;
  v118 = MSUAssetOperation_16;
  v113 = &v2[OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_platformCapabilities];
  v114 = sub_26B128DA8();
  sub_26B126E50();
  sub_26B128CE8();
  v3 = v121;
  v117 = v147;
  v116 = OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment__isUsingAutomationServices;
  v4 = sub_26B125C38();
  v5 = v118;
  v6 = v119;
  v7 = v120;
  *&v117[v116] = v4;
  (*(v6 + 16))(v3, v5[174] + v147, v7);
  v122 = sub_26B128B98();
  (*(v119 + 8))(v121, v120);
  v146 = v122;
  v145 = 4;
  v125 = type metadata accessor for SUUIStatefulUIEnvironmentOptions();
  v126 = sub_26B12510C();
  v124 = &v146;
  sub_26B128DC8();
  v144 = 8;
  sub_26B128DC8();
  v128 = 0x279CCA000uLL;
  v8 = objc_opt_self();
  v129 = 0x1FAC33000uLL;
  v127 = [v8 0x1FAC33D78];
  [v127 initialize];

  v9 = *(v128 + 2232);
  v130 = [objc_opt_self() (v129 + 3448)];
  v131 = [v130 enabled];
  v143 = v131;

  if (v131)
  {
    sub_26B128BF8();
    v99 = sub_26B128C08();
    v95 = v99;
    v98 = sub_26B128C88();
    v96 = v98;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65B8, &qword_26B13AB98);
    v100 = sub_26B128DA8();
    if (os_log_type_enabled(v99, v98))
    {
      v10 = v102;
      v86 = sub_26B128CC8();
      v82 = v86;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65C0, &qword_26B13ABA0);
      v84 = 0;
      v87 = sub_26B127DFC(0);
      v85 = v87;
      v88 = sub_26B127DFC(v84);
      v135 = v86;
      v134 = v87;
      v133 = v88;
      v89 = 0;
      v90 = &v135;
      sub_26B127E50(0, &v135);
      sub_26B127E50(v89, v90);
      v132 = v100;
      v91 = &v27;
      MEMORY[0x28223BE20](&v27);
      v92 = &v27 - 6;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65C8, &qword_26B13ABA8);
      sub_26B127EE0();
      sub_26B128C58();
      v94 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_26B0B9000, v95, v96, "Initialing the Mobile environment in Automation Mode", v82, 2u);
        v80 = 0;
        sub_26B127FDC(v85);
        sub_26B127FDC(v88);
        sub_26B128CA8();

        v81 = v94;
      }
    }

    else
    {

      v81 = v102;
    }

    v74 = v81;

    v75 = *(v105 + 8);
    v76 = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v75(v109, v103);
    v77 = [objc_opt_self() sharedManager];
    v79 = [v77 createSUManagerClientForAutomationSession];
    v78 = v79;

    if (v79)
    {
      v73 = v78;
      v65 = v78;
      v136 = v78;
      v11 = v78;
      v12 = v65;
      v142 = v65;

      v66 = v65;
      v67 = v74;
    }

    else
    {
      sub_26B128BF8();
      v71 = sub_26B128C08();
      v68 = v71;
      v70 = sub_26B128C98();
      v69 = v70;
      v72 = sub_26B128DA8();
      if (os_log_type_enabled(v71, v70))
      {
        v13 = v74;
        v56 = sub_26B128CC8();
        v52 = v56;
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65C0, &qword_26B13ABA0);
        v54 = 0;
        v57 = sub_26B127DFC(0);
        v55 = v57;
        v58 = sub_26B127DFC(v54);
        v140 = v56;
        v139 = v57;
        v138 = v58;
        v59 = 0;
        v60 = &v140;
        sub_26B127E50(0, &v140);
        sub_26B127E50(v59, v60);
        v137 = v72;
        v61 = &v27;
        MEMORY[0x28223BE20](&v27);
        v62 = &v27 - 6;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65C8, &qword_26B13ABA8);
        sub_26B127EE0();
        sub_26B128C58();
        v64 = v13;
        if (v13)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_26B0B9000, v68, v69, "Could not create a SUManagerClient for Automation Session", v52, 2u);
          v50 = 0;
          sub_26B127FDC(v55);
          sub_26B127FDC(v58);
          sub_26B128CA8();

          v51 = v64;
        }
      }

      else
      {

        v51 = v74;
      }

      v49 = v51;

      v75(v107, v103);
      sub_26B126ED0();
      v47 = sub_26B126F34();
      v48 = v47;
      v14 = v47;
      v142 = v47;
      v66 = v48;
      v67 = v49;
    }

    v45 = v66;
    v46 = v67;
  }

  else
  {
    sub_26B126ED0();
    v43 = sub_26B126F34();
    v44 = v43;
    v15 = v43;
    v142 = v43;
    v45 = v44;
    v46 = v102;
  }

  v36 = v45;
  v32 = v147;
  v39 = 0;
  type metadata accessor for SUUIMobileStatefulUIEnvironment();
  v16 = SUUIMobileStatefulUIEnvironment.__allocating_init(options:)(v146);
  v33 = MSUAssetOperation_16;
  *&v32[OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_statefulUIEnvironment] = v16;
  v38 = v147;
  sub_26B126F64();
  v37 = *(&v33[173]->isa + v147);
  swift_unknownObjectRetain();
  v17 = sub_26B1257A4();
  v34 = *v17;
  v35 = v17[1];

  v18 = v36;
  v19 = sub_26B126FC8(v37, v34, v35, v36);
  *&v38[OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_statefulUIManager] = v19;
  v40 = v147;
  v41 = sub_26B127020();
  v42 = [objc_opt_self() sharedInstance];
  if (v42)
  {
    v31 = v42;
  }

  else
  {
    sub_26B128D78();
    __break(1u);
  }

  v27 = v31;
  v20 = v36;
  v21 = sub_26B127084(v27, v36);
  *&v40[OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_preferences] = v21;
  v28 = v147;
  sub_26B1270CC();
  v22 = sub_26B127130(v36);
  v23 = ObjectType;
  *&v28[OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_analyticsReporter] = v22;
  v141.receiver = v147;
  v141.super_class = v23;
  v30 = objc_msgSendSuper2(&v141, sel_init);
  v24 = v30;
  v147 = v30;
  v29 = [objc_opt_self() sharedManager];
  v25 = v30;
  [v29 registerAutomationObserver_];
  swift_unknownObjectRelease();

  return v30;
}

unint64_t sub_26B126E50()
{
  v2 = qword_2803E6588;
  if (!qword_2803E6588)
  {
    sub_26B128BA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E6588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26B126ED0()
{
  v2 = qword_2803E6598;
  if (!qword_2803E6598)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E6598);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B126F64()
{
  v2 = qword_2803E65A0;
  if (!qword_2803E65A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E65A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B127020()
{
  v2 = qword_2803E65A8;
  if (!qword_2803E65A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E65A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26B1270CC()
{
  v2 = qword_2803E65B0;
  if (!qword_2803E65B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803E65B0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_26B127194()
{
  v2 = type metadata accessor for SUUIMobilePlatformEnvironment();
  v3 = sub_26B125EA0();
  qword_2803E6558 = v2;
  v0 = sub_26B1280E8();
  result = v3;
  unk_2803E6560 = v0;
  unk_2803E6540 = v3;
  return result;
}

void *sub_26B12720C()
{
  if (qword_2803E6448 != -1)
  {
    swift_once();
  }

  return &unk_2803E6540;
}

uint64_t SUUIMobilePlatformEnvironment.statefulUIManager.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_statefulUIManager);
  MEMORY[0x277D82BE0]();
  return v2;
}

uint64_t SUUIMobilePlatformEnvironment.analyticsReporter.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_analyticsReporter);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t SUUIMobilePlatformEnvironment.preferences.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_preferences);
  MEMORY[0x277D82BE0]();
  return v2;
}

uint64_t SUUIMobilePlatformEnvironment.capabilities.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC22SoftwareUpdateUIMobile29SUUIMobilePlatformEnvironment_platformCapabilities;
  v2 = sub_26B128BA8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

id SUUIMobilePlatformEnvironment.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SUUIMobilePlatformEnvironment.onAutomationEnabledStateChanged(_:)(Swift::Bool a1)
{
  v33 = a1;
  v35 = sub_26B12822C;
  v37 = sub_26B1287BC;
  v39 = sub_26B128808;
  v43 = sub_26B128854;
  v45 = sub_26B128740;
  v47 = sub_26B128774;
  v50 = sub_26B1288A0;
  v62 = 0;
  v61 = 0;
  v27 = 0;
  v28 = sub_26B128C18();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = v18 - v31;
  v62 = MEMORY[0x28223BE20](v33) & 1;
  v61 = v1;
  sub_26B128BF8();
  v34 = 17;
  v41 = 7;
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  v54 = sub_26B128C08();
  v55 = sub_26B128C88();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 4;
  v40 = 32;
  v2 = swift_allocObject();
  v3 = v36;
  v38 = v2;
  *(v2 + 16) = v35;
  *(v2 + 24) = v3;
  v4 = swift_allocObject();
  v5 = v38;
  v42 = v4;
  *(v4 + 16) = v37;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v42;
  v44 = v6;
  *(v6 + 16) = v39;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v44;
  v51 = v8;
  *(v8 + 16) = v43;
  *(v8 + 24) = v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65B8, &qword_26B13AB98);
  v49 = sub_26B128DA8();
  v52 = v10;

  v11 = v46;
  v12 = v52;
  *v52 = v45;
  v12[1] = v11;

  v13 = v48;
  v14 = v52;
  v52[2] = v47;
  v14[3] = v13;

  v15 = v51;
  v16 = v52;
  v52[4] = v50;
  v16[5] = v15;
  sub_26B12898C();

  if (os_log_type_enabled(v54, v55))
  {
    v17 = v27;
    v20 = sub_26B128CC8();
    v18[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E65C0, &qword_26B13ABA0);
    v19 = 0;
    v21 = sub_26B127DFC(0);
    v22 = sub_26B127DFC(v19);
    v23 = &v60;
    v60 = v20;
    v24 = &v59;
    v59 = v21;
    v25 = &v58;
    v58 = v22;
    sub_26B127E50(0, &v60);
    sub_26B127E50(1, v23);
    v56 = v45;
    v57 = v46;
    sub_26B127E64(&v56, v23, v24, v25);
    v26 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v56 = v47;
      v57 = v48;
      sub_26B127E64(&v56, &v60, &v59, &v58);
      v18[2] = 0;
      v56 = v50;
      v57 = v51;
      sub_26B127E64(&v56, &v60, &v59, &v58);
      _os_log_impl(&dword_26B0B9000, v54, v55, ">> HERE: Mobile automation state changed to %{BOOL}d", v20, 8u);
      v18[1] = 0;
      sub_26B127FDC(v21);
      sub_26B127FDC(v22);
      sub_26B128CA8();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v54);
  (*(v29 + 8))(v32, v28);
}

id sub_26B127CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B128C28();
  v9 = [v5 initWithEnvironment:a1 identifier:? andSUManagerClient:?];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](v7);

  swift_unknownObjectRelease();
  return v9;
}

id sub_26B127D44(uint64_t a1, uint64_t a2)
{
  v6 = [v2 initWithSUPreferencesInstance_andSUManagerClient_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

id sub_26B127DAC(uint64_t a1)
{
  v4 = [v1 initWithSUManagerClient_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_26B127DFC(uint64_t a1)
{
  if (a1)
  {
    return sub_26B128CC8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B127E50(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_26B127EE0()
{
  v2 = qword_2803E65D0;
  if (!qword_2803E65D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803E65C8, &qword_26B13ABA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E65D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t sub_26B127FDC(uint64_t result)
{
  if (result)
  {
    sub_26B128CB8();
    return sub_26B128CA8();
  }

  return result;
}

uint64_t type metadata accessor for SUUIMobilePlatformEnvironment()
{
  v1 = qword_2803E65F0;
  if (!qword_2803E65F0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_26B1280E8()
{
  v2 = qword_2803E65D8;
  if (!qword_2803E65D8)
  {
    type metadata accessor for SUUIMobilePlatformEnvironment();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E65D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B128168(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t *sub_26B1281D4(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_26B1282C0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_26B1282FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = sub_26B128D68() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_26B128D98();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = MEMORY[0x28223BE20](v23);
    v16 = v29;
    v17 = v11;
    sub_26B128538(v10, sub_26B128B48, v15, v12, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v13, MEMORY[0x277D84F78]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_26B128538@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_26B128D98();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

_BYTE **sub_26B128700(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26B12877C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26B1287C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26B128814()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26B128860()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_26B1288A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_26B128914();
  v5 = MEMORY[0x277D849A8];

  return sub_26B1282FC(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_26B128914()
{
  v2 = qword_2803E65E0;
  if (!qword_2803E65E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803E65E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26B1289EC()
{
  v2 = sub_26B128BA8();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_26B128AFC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803E6580, &qword_26B13AB90);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_26B128B48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26B128510();
}