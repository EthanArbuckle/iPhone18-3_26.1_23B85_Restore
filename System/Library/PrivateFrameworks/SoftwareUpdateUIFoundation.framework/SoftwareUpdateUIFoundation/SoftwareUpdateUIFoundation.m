id SUUIStatefulUIStateToString(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v2 = MEMORY[0x277D82BE0](@"CheckingForAvailableUpdate");
        break;
      case 2:
        v2 = MEMORY[0x277D82BE0](@"ScanFailed");
        break;
      case 3:
        v2 = MEMORY[0x277D82BE0](@"NoUpdateFound");
        break;
      case 4:
        v2 = MEMORY[0x277D82BE0](@"UpdatesAvailable");
        break;
      default:
        v2 = MEMORY[0x277D82BE0](@"Unknown");
        break;
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"Idle");
  }

  return v2;
}

uint64_t __os_log_helper_16_2_7_8_32_8_0_8_32_8_66_8_0_8_66_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *result = 2;
  *(result + 1) = 7;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 32;
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
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  return result;
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

uint64_t __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_64_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
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
  *(a1 + 252) = 64;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 0;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  return result;
}

void sub_26ADED8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, os_activity_scope_state_t a41)
{
  _SUUIActivityCleanup(&a41);
  objc_destroyWeak((v41 - 200));
  objc_destroyWeak((v41 - 72));
  _Unwind_Resume(v42);
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

void sub_26ADEE950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, os_activity_scope_state_t a41)
{
  _SUUIActivityCleanup(&a41);
  objc_destroyWeak((v41 - 200));
  objc_destroyWeak((v41 - 72));
  _Unwind_Resume(v42);
}

void sub_26ADEF944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, os_activity_scope_state_t a41)
{
  _SUUIActivityCleanup(&a41);
  objc_destroyWeak((v41 - 200));
  objc_destroyWeak((v41 - 72));
  _Unwind_Resume(v42);
}

void sub_26ADF0960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, os_activity_scope_state_t a41)
{
  _SUUIActivityCleanup(&a41);
  objc_destroyWeak((v41 - 200));
  objc_destroyWeak((v41 - 72));
  _Unwind_Resume(v42);
}

void sub_26ADF1AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, os_activity_scope_state_t a40)
{
  _SUUIActivityCleanup(&a40);
  objc_destroyWeak((v40 - 200));
  objc_destroyWeak((v40 - 72));
  _Unwind_Resume(v41);
}

void sub_26ADF299C()
{
  _SUUIActivityCleanup((v0 - 240));
  objc_destroyWeak((v0 - 192));
  objc_destroyWeak((v0 - 64));
  _Unwind_Resume(v1);
}

void sub_26ADF387C()
{
  _SUUIActivityCleanup((v0 - 240));
  objc_destroyWeak((v0 - 192));
  objc_destroyWeak((v0 - 64));
  _Unwind_Resume(v1);
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

void sub_26ADFC86C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id *location)
{
  STACK[0x5A8] = a1;
  LODWORD(STACK[0x5A4]) = a2;
  objc_destroyWeak(location);
  _Block_object_dispose(&v35, 8);
  JUMPOUT(0x26ADFC8B0);
}

uint64_t __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
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
  *(a1 + 272) = 0;
  *(a1 + 273) = 8;
  *(a1 + 274) = a29;
  return result;
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

uint64_t __os_log_helper_16_2_31_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_2_8_2_8_66_8_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  result = a22;
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
  *(a1 + 252) = 66;
  *(a1 + 253) = 8;
  *(a1 + 254) = a27;
  *(a1 + 262) = 66;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  *(a1 + 272) = 2;
  *(a1 + 273) = 8;
  *(a1 + 274) = a29;
  *(a1 + 282) = 2;
  *(a1 + 283) = 8;
  *(a1 + 284) = a30;
  *(a1 + 292) = 66;
  *(a1 + 293) = 8;
  *(a1 + 294) = a31;
  *(a1 + 302) = 66;
  *(a1 + 303) = 8;
  *(a1 + 304) = a32;
  return result;
}

uint64_t __os_log_helper_16_0_2_4_2_4_2(uint64_t result, int a2, int a3)
{
  *result = 0;
  *(result + 1) = 2;
  *(result + 2) = 2;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 2;
  *(result + 9) = 4;
  *(result + 10) = a3;
  return result;
}

uint64_t __os_log_helper_16_0_4_8_0_8_0_4_2_4_2(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 0;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 2;
  *(result + 23) = 4;
  *(result + 24) = a4;
  *(result + 28) = 2;
  *(result + 29) = 4;
  *(result + 30) = a5;
  return result;
}

void sub_26AE0089C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(v2);
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

void sub_26AE07E64(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id *location)
{
  STACK[0x1080] = a1;
  LODWORD(STACK[0x107C]) = a2;
  objc_destroyWeak(location);
  _Block_object_dispose(&v35, 8);
  JUMPOUT(0x26AE07EACLL);
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

uint64_t __os_log_helper_16_2_4_8_0_8_0_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_1_4_2(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 2;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_0_3_8_0_8_0_4_2(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 0;
  *(result + 1) = 3;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 2;
  *(result + 23) = 4;
  *(result + 24) = a4;
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

void sub_26AE0D1E0(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id *location)
{
  STACK[0xD10] = a1;
  LODWORD(STACK[0xD0C]) = a2;
  objc_destroyWeak(location);
  _Block_object_dispose(&v35, 8);
  JUMPOUT(0x26AE0D224);
}

uint64_t __os_log_helper_16_2_30_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_66_8_66_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  result = a21;
  *a1 = 2;
  *(a1 + 1) = 30;
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
  *(a1 + 262) = 66;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  *(a1 + 272) = 66;
  *(a1 + 273) = 8;
  *(a1 + 274) = a29;
  *(a1 + 282) = 0;
  *(a1 + 283) = 8;
  *(a1 + 284) = a30;
  *(a1 + 292) = 0;
  *(a1 + 293) = 8;
  *(a1 + 294) = a31;
  return result;
}

uint64_t __os_log_helper_16_2_3_4_2_4_2_8_66(uint64_t result, int a2, int a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 2;
  *(result + 3) = 4;
  *(result + 4) = a2;
  *(result + 8) = 2;
  *(result + 9) = 4;
  *(result + 10) = a3;
  *(result + 14) = 66;
  *(result + 15) = 8;
  *(result + 16) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_0_4_2_4_2_8_66(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 2;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 2;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 66;
  *(result + 25) = 8;
  *(result + 26) = a5;
  return result;
}

void sub_26AE0EBF4(uint64_t a1, int a2)
{
  *(v2 - 64) = a1;
  *(v2 - 68) = a2;
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(*(v2 - 64));
}

void sub_26AE10964(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id *location)
{
  STACK[0x6C0] = a1;
  LODWORD(STACK[0x6BC]) = a2;
  objc_destroyWeak(location);
  _Block_object_dispose(&v35, 8);
  JUMPOUT(0x26AE109A8);
}

void sub_26AE11798(uint64_t a1, int a2)
{
  *(v2 - 64) = a1;
  *(v2 - 68) = a2;
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(*(v2 - 64));
}

uint64_t __os_log_helper_16_2_3_8_32_8_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

void sub_26AE17868(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _Unwind_Exception *exception_object, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id *location)
{
  STACK[0x3D8] = a1;
  LODWORD(STACK[0x3D4]) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak(&STACK[0x420]);
  _Unwind_Resume(STACK[0x3D8]);
}

uint64_t __os_log_helper_16_2_4_8_32_8_0_4_0_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
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

void sub_26AE1C9BC(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _Unwind_Exception *exception_object, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id *location)
{
  STACK[0x7F8] = a1;
  LODWORD(STACK[0x7F4]) = a2;
  if (STACK[0x7F3])
  {
    objc_destroyWeak(location);
  }

  _Unwind_Resume(STACK[0x7F8]);
}

uint64_t __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
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
  *(a1 + 262) = 66;
  *(a1 + 263) = 8;
  *(a1 + 264) = a28;
  *(a1 + 272) = 66;
  *(a1 + 273) = 8;
  *(a1 + 274) = a29;
  return result;
}

void sub_26AE1E83C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _Unwind_Exception *exception_object, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id *location)
{
  STACK[0x4A8] = a1;
  LODWORD(STACK[0x4A4]) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(STACK[0x4A8]);
}

void sub_26AE21004(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _Unwind_Exception *exception_object, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id *location)
{
  STACK[0x500] = a1;
  LODWORD(STACK[0x4FC]) = a2;
  if (STACK[0x4FB])
  {
    objc_destroyWeak(location);
  }

  _Unwind_Resume(STACK[0x500]);
}

void sub_26AE22594(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _Unwind_Exception *exception_object, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id *location)
{
  STACK[0x490] = a1;
  LODWORD(STACK[0x48C]) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(STACK[0x490]);
}

void sub_26AE246BC(unint64_t a1, int a2)
{
  STACK[0x550] = a1;
  LODWORD(STACK[0x54C]) = a2;
  objc_destroyWeak(&STACK[0x488]);
  _Block_object_dispose(&v2, 8);
  JUMPOUT(0x26AE24720);
}

uint64_t __os_log_helper_16_2_3_8_32_8_0_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

void sub_26AE2779C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _Unwind_Exception *exception_object, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id *location)
{
  STACK[0x448] = a1;
  LODWORD(STACK[0x444]) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(STACK[0x448]);
}

uint64_t __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
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
  *(a1 + 252) = 0;
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

void sub_26AE2B804(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _Unwind_Exception *exception_object, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id *location)
{
  STACK[0x4F8] = a1;
  LODWORD(STACK[0x4F4]) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(STACK[0x4F8]);
}

uint64_t __os_log_helper_16_2_29_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_0_8_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  result = a20;
  *a1 = 2;
  *(a1 + 1) = 29;
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
  *(a1 + 272) = 0;
  *(a1 + 273) = 8;
  *(a1 + 274) = a29;
  *(a1 + 282) = 66;
  *(a1 + 283) = 8;
  *(a1 + 284) = a30;
  return result;
}

void sub_26AE2E0E8(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id *location)
{
  STACK[0x520] = a1;
  LODWORD(STACK[0x51C]) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak(&v33);
  JUMPOUT(0x26AE2E12CLL);
}

uint64_t __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  result = a18;
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
  *(a1 + 252) = 0;
  *(a1 + 253) = 4;
  *(a1 + 254) = a27;
  return result;
}

void sub_26AE31E6C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, _Unwind_Exception *exception_object, uint64_t a29, uint64_t a30, uint64_t a31, id *location)
{
  STACK[0x480] = a1;
  LODWORD(STACK[0x47C]) = a2;
  objc_destroyWeak(location);
  _Unwind_Resume(STACK[0x480]);
}

uint64_t __os_log_helper_16_2_29_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_66_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  result = a20;
  *a1 = 2;
  *(a1 + 1) = 29;
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
  *(a1 + 282) = 0;
  *(a1 + 283) = 8;
  *(a1 + 284) = a30;
  return result;
}

void sub_26AE3B8A0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id *location)
{
  *(v9 - 48) = a1;
  *(v9 - 52) = a2;
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(*(v9 - 48));
}

uint64_t __os_log_helper_16_2_9_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *result = 2;
  *(result + 1) = 9;
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
  *(result + 42) = 0;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 66;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 0;
  *(result + 63) = 8;
  *(result + 64) = a8;
  *(result + 72) = 66;
  *(result + 73) = 8;
  *(result + 74) = a9;
  *(result + 82) = 66;
  *(result + 83) = 8;
  *(result + 84) = a10;
  return result;
}

id SUUIAnalyticsEventTypeToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventTypeOTA");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventTypeUsage");
  }

  return v2;
}

id SUUIAnalyticsEventInteractionTypeToString(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAutoUpdateToggleOn");
      break;
    case 1:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAutoUpdateToggleOff");
      break;
    case 2:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAutoDownloadToggleOn");
      break;
    case 3:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAutoDownloadToggleOff");
      break;
    case 4:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAutoInstallSystemDataFilesToggleOn");
      break;
    case 5:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAutoInstallSystemDataFilesToggleOff");
      break;
    case 6:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAutoInstallSecurityResponseToggleOn");
      break;
    case 7:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAutoInstallSecurityResponseToggleOff");
      break;
    case 8:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionOpenAutomaticUpdates");
      break;
    case 9:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionOpenBetaUpdates");
      break;
    case 10:
    case 11:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionOpenAlternateUpdate");
      break;
    case 12:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionPreferredPaneDownloadOnly");
      break;
    case 13:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionPreferredPaneDownloadAndInstallTonight");
      break;
    case 14:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionPreferredPaneDownloadAndInstallNow");
      break;
    case 15:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionPreferredPaneInstallNow");
      break;
    case 16:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionPreferredPaneInstallLater");
      break;
    case 17:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionPreferredPaneLearnMore");
      break;
    case 18:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionPreferredPaneOpenStorage");
      break;
    case 19:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAlternatePaneDownloadOnly");
      break;
    case 20:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAlternatePaneDownloadAndInstallTonight");
      break;
    case 21:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAlternatePaneDownloadAndInstallNow");
      break;
    case 22:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAlternatePaneInstallNow");
      break;
    case 23:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAlternatePaneInstallLater");
      break;
    case 24:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAlternatePaneLearnMore");
      break;
    case 25:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionAlternatePaneOpenStorage");
      break;
    case 26:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionEnrollToBetaUpdates");
      break;
    case 27:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionUnenrollFromBetaUpdates");
      break;
    case 28:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionTermsAndConditionsAccepted");
      break;
    case 29:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionTermsAndConditionsRejected");
      break;
    default:
      v2 = MEMORY[0x277D82BE0](@"SUUIAnalyticsEventInteractionUnknown");
      break;
  }

  return v2;
}

id SUUIStatefulDescriptorStateToString(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v2 = MEMORY[0x277D82BE0](@"AvailableToDownload");
      break;
    case 2:
      v2 = MEMORY[0x277D82BE0](@"Downloading");
      break;
    case 3:
      v2 = MEMORY[0x277D82BE0](@"DownloadStalled");
      break;
    case 4:
      v2 = MEMORY[0x277D82BE0](@"AvailableToInstall");
      break;
    case 5:
      v2 = MEMORY[0x277D82BE0](@"Installing");
      break;
    default:
LABEL_7:
      v2 = MEMORY[0x277D82BE0](@"Unknown");
      break;
  }

  return v2;
}

id SUUIStatefulDescriptorRoleToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"Alternate");
    }

    else
    {
      v2 = MEMORY[0x277D82BE0](@"Unknown");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"Preferred");
  }

  return v2;
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

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
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

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_0_8_66_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 66;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_8_8_32_8_66_8_66_8_0_8_66_8_0_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *result = 2;
  *(result + 1) = 8;
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
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 66;
  *(result + 63) = 8;
  *(result + 64) = a8;
  *(result + 72) = 66;
  *(result + 73) = 8;
  *(result + 74) = a9;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_66_8_66_8_0_8_64_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

uint64_t __os_log_helper_16_2_8_8_32_8_66_8_66_8_0_8_66_8_0_8_66_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *result = 2;
  *(result + 1) = 8;
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
  *(result + 52) = 0;
  *(result + 53) = 8;
  *(result + 54) = a7;
  *(result + 62) = 66;
  *(result + 63) = 8;
  *(result + 64) = a8;
  *(result + 72) = 0;
  *(result + 73) = 8;
  *(result + 74) = a9;
  return result;
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

uint64_t __os_log_helper_16_2_3_8_32_8_66_8_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_66_8_64_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void _suui_precondition_failure(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  if (location)
  {
    v1 = [@"Precondition not satisfied: " stringByAppendingString:location];
  }

  else
  {
    v1 = [@"Precondition not satisfied: " stringByAppendingString:@"(null)"];
  }

  v3 = v1;
  exception = [v5 exceptionWithName:v6 reason:? userInfo:?];
  v2 = exception;
  MEMORY[0x277D82BD8](v3);
  objc_exception_throw(exception);
}

void _suui_precondition_failure_with_format(id obj, ...)
{
  va_start(va, obj);
  location = 0;
  objc_storeStrong(&location, obj);
  v1 = objc_alloc(MEMORY[0x277CCACA8]);
  _suui_precondition_failure([v1 initWithFormat:location arguments:va]);
}

os_signpost_id_t _SUUISignpostCreate(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = os_signpost_id_generate(location);
  v2 = mach_continuous_time();
  v5 = v3;
  v6 = v2;
  objc_storeStrong(&location, 0);
  return v5;
}

os_signpost_id_t _SUUISignpostCreateWithIdentifier(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v6 = 0;
  objc_storeStrong(&v6, a2);
  v5 = os_signpost_id_make_with_pointer(location, v6);
  v4 = mach_continuous_time();
  v8 = v5;
  v9 = v4;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  return v8;
}

unint64_t _SUUISignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  v8 = &_SUUISignpostGetNanoseconds_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_0);
  if (*v8 != -1)
  {
    dispatch_once(v8, location);
  }

  objc_storeStrong(&location, 0);
  v5 = mach_continuous_time() - a2;
  LODWORD(v2) = _SUUISignpostGetNanoseconds_timebase_info;
  LODWORD(v3) = dword_2803D9F54;
  return (v5 * (v2 / v3));
}

id SUUIUpdateContinuousOperationTypeToString(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v2 = MEMORY[0x277D82BE0](@"Download (Download Only)");
        break;
      case 2:
        v2 = MEMORY[0x277D82BE0](@"Download and Install (Update Now)");
        break;
      case 3:
        v2 = MEMORY[0x277D82BE0](@"Download and Schedule (Update Tonight)");
        break;
      case 4:
        v2 = MEMORY[0x277D82BE0](@"Schedule (Install Tonight)");
        break;
      case 5:
        v2 = MEMORY[0x277D82BE0](@"Install (Install Now)");
        break;
      case 6:
        v2 = MEMORY[0x277D82BE0](@"Unschedule Automatic Installation");
        break;
      default:
        v2 = MEMORY[0x277D82BE0](@"Unknown");
        break;
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"None");
  }

  return v2;
}

id SUUIUserInteractionResponseToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"Disagree");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"Cancel");
    }

    else
    {
      v2 = MEMORY[0x277D82BE0](@"Unknown");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"Agree");
  }

  return v2;
}

id SUUIUserDefaultsEntryTypeToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"number");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"string");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"BOOL");
  }

  return v2;
}

uint64_t default argument 2 of SUUICapabilities.init(rawValue:name:requiredFlags:statefulUIOption:)()
{
  sub_26AE664F8();
  sub_26AE50D64();
  return sub_26AE663C8();
}

unint64_t sub_26AE50D64()
{
  v2 = qword_2803D9BF0;
  if (!qword_2803D9BF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9BF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SUUIAudienceType()
{
  v4 = qword_2803D9BF8;
  if (!qword_2803D9BF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803D9BF8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUISoftwareUpdateVersionType()
{
  v4 = qword_2803D9C00;
  if (!qword_2803D9C00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803D9C00);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIStatefulUIEnvironmentOptions()
{
  v4 = qword_2803D9C08;
  if (!qword_2803D9C08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803D9C08);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIMDMSoftwareUpdatePath()
{
  v4 = qword_2803D9C10;
  if (!qword_2803D9C10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803D9C10);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIStatefulDescriptorState()
{
  v4 = qword_2803D9C18;
  if (!qword_2803D9C18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803D9C18);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIUserInteractionResponse()
{
  v4 = qword_2803D9C20;
  if (!qword_2803D9C20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803D9C20);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUISoftwareUpdateType()
{
  v4 = qword_2803D9C28;
  if (!qword_2803D9C28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803D9C28);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SUUIStatefulUIState()
{
  v4 = qword_2803D9C30;
  if (!qword_2803D9C30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803D9C30);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AE51338()
{
  sub_26AE51B90();
  sub_26AE51C10();
  return sub_26AE665E8();
}

uint64_t sub_26AE5153C()
{
  sub_26AE51B90();
  sub_26AE51C10();
  return sub_26AE665D8();
}

uint64_t sub_26AE51580()
{
  sub_26AE51B90();
  sub_26AE51C10();
  return sub_26AE665B8();
}

uint64_t sub_26AE515C4()
{
  sub_26AE51B90();
  sub_26AE51C10();
  return sub_26AE665C8();
}

uint64_t sub_26AE516E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

void sub_26AE51714(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  sub_26AE51750();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_26AE51774(void *a1@<X8>)
{
  v2 = *v1;
  sub_26AE5227C();
  *a1 = v3;
}

void sub_26AE517A4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  sub_26AE517E0();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_26AE51804(void *a1@<X8>)
{
  v2 = *v1;
  sub_26AE5A55C();
  *a1 = v3;
}

uint64_t sub_26AE518C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26AE51900@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_2(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_26AE51948()
{
  v2 = qword_2803D9C38;
  if (!qword_2803D9C38)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE519E0()
{
  v2 = qword_2803D9C40;
  if (!qword_2803D9C40)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE51A78()
{
  v2 = qword_2803D9C48;
  if (!qword_2803D9C48)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE51B10()
{
  v2 = qword_2803D9C50;
  if (!qword_2803D9C50)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE51B90()
{
  v2 = qword_2803D9C58;
  if (!qword_2803D9C58)
  {
    type metadata accessor for SUUIStatefulUIEnvironmentOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE51C10()
{
  v2 = qword_2803D9C60;
  if (!qword_2803D9C60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE51C88()
{
  v2 = qword_2803D9C68;
  if (!qword_2803D9C68)
  {
    type metadata accessor for SUUIStatefulUIState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE51D08()
{
  v2 = qword_2803D9C70;
  if (!qword_2803D9C70)
  {
    type metadata accessor for SUUIStatefulDescriptorState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE51D9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_26AE51EA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t type metadata accessor for os_unfair_lock_s()
{
  v4 = qword_2803D9C78;
  if (!qword_2803D9C78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2803D9C78);
      return v1;
    }
  }

  return v4;
}

uint64_t SUUIStatefulUIState.description.getter(uint64_t a1)
{
  v2 = SUUIStatefulUIStateToString(a1);
  v3 = sub_26AE662F8();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t static SUUIStatefulUIState.allCases.getter()
{
  type metadata accessor for SUUIStatefulUIState();
  result = sub_26AE664F8();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  sub_26AE521B8();
  return result;
}

uint64_t sub_26AE521FC@<X0>(uint64_t *a1@<X8>)
{
  result = static SUUIStatefulUIState.allCases.getter();
  *a1 = result;
  return result;
}

BOOL static SUUIStatefulUIState.< infix(_:_:)()
{
  sub_26AE5227C();
  v3 = v0;
  sub_26AE5227C();
  return v3 < v1;
}

unint64_t sub_26AE522B0()
{
  v2 = qword_2803D9C80;
  if (!qword_2803D9C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D9C88, &qword_26AE7C6B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C80);
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

unint64_t sub_26AE523C4()
{
  v2 = qword_2803D9C90;
  if (!qword_2803D9C90)
  {
    type metadata accessor for SUUIStatefulUIState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C90);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_26AE52444(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static SUUIStatefulUIState.< infix(_:_:)();
}

const char *SUUIFeatureFlags.domain.getter()
{
  result = "SoftwareUpdateUI";
  v2 = *v0;
  return result;
}

uint64_t SUUIFeatureFlags.isEnabled.getter()
{
  v5 = 0;
  v5 = *v0;
  v2 = v5;
  v4[3] = &type metadata for SUUIFeatureFlags;
  v4[4] = sub_26AE52570();
  LOBYTE(v4[0]) = v2;
  v3 = sub_26AE66248();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v3 & 1;
}

unint64_t sub_26AE52570()
{
  v2 = qword_2803D9C98;
  if (!qword_2803D9C98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9C98);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

const char *SUUIFeatureFlags.feature.getter()
{
  if (!*v0)
  {
    return "";
  }

  if (*v0 == 1)
  {
    return "backgroundSecurityImprovement";
  }

  return "ScanResultsCaching";
}

BOOL static SUUIFeatureFlags.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v5 = *a2;
  if (*a1)
  {
    if (*a1 != 1)
    {
      v4 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    sub_26AE66518();
    __break(1u);
  }

  v4 = 0;
LABEL_6:
  if (!v5)
  {
    sub_26AE66518();
    __break(1u);
    goto LABEL_10;
  }

  if (v5 == 1)
  {
LABEL_10:
    v3 = 0;
    return v4 == v3;
  }

  v3 = 1;
  return v4 == v3;
}

uint64_t SUUIFeatureFlags.hash(into:)()
{
  if (*v0)
  {
    *v0;
  }

  else
  {
    sub_26AE66518();
    __break(1u);
  }

  return sub_26AE66538();
}

uint64_t SUUIFeatureFlags.hashValue.getter()
{
  v2 = *v0;
  sub_26AE50D64();
  return sub_26AE66498();
}

unint64_t sub_26AE529FC()
{
  v2 = qword_2803D9CA0;
  if (!qword_2803D9CA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9CA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE52A78(uint64_t a1)
{
  *(a1 + 8) = sub_26AE52570();
  result = sub_26AE50D64();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SUUIFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SUUIFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

Swift::Bool __swiftcall SUUIPlatformEnvironment.isTestProcess()()
{
  v8[4] = 0;
  v9 = v0;
  v4 = [objc_opt_self() processInfo];
  v3 = [v4 environment];
  sub_26AE66278();
  MEMORY[0x277D82BD8](v4);
  v8[0] = sub_26AE66318();
  v8[1] = v1;
  sub_26AE66288();
  sub_26AE53014(v8);
  v5 = v8[2];
  v6 = v8[3];

  v7[0] = v5;
  v7[1] = v6;
  sub_26AE53040(v7);
  MEMORY[0x277D82BD8](v3);
  return v6 != 0;
}

uint64_t sub_26AE53014(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_26AE53040(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

Swift::Bool __swiftcall SUUIPlatformEnvironment.isRootsInstalled()()
{
  (MEMORY[0x28223BE20])();
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0;
  bzero(&v18, 0x878uLL);
  v10 = 0;
  v11 = 0;
  v19 = v0;
  bzero(v20, 0x878uLL);
  memcpy(v17, v20, sizeof(v17));
  memcpy(v21, v17, sizeof(v21));
  memcpy(&v18, v21, sizeof(v18));
  bzero(&v18, 0x878uLL);
  sub_26AE66318();
  v7 = sub_26AE66308();

  v8 = statfs((v7 + 32), &v18);
  swift_unknownObjectRelease();

  if (!v8)
  {
    goto LABEL_5;
  }

  memcpy(v15, v18.f_mntfromname, sizeof(v15));
  v23 = 1024;
  v16[0] = v15[0];
  v16[1] = v15[1];
  v16[2] = v15[2];
  v16[3] = v15[3];
  v16[4] = v15[4];
  v16[5] = v15[5];
  v16[6] = v15[6];
  v16[7] = v15[7];
  v16[8] = v15[8];
  v16[9] = v15[9];
  v16[10] = v15[10];
  v16[11] = v15[11];
  v16[12] = v15[12];
  v16[13] = v15[13];
  v16[14] = v15[14];
  v16[15] = v15[15];
  v16[16] = v15[16];
  v16[17] = v15[17];
  v16[18] = v15[18];
  v16[19] = v15[19];
  v16[20] = v15[20];
  v16[21] = v15[21];
  v16[22] = v15[22];
  v16[23] = v15[23];
  v16[24] = v15[24];
  v16[25] = v15[25];
  v16[26] = v15[26];
  v16[27] = v15[27];
  v16[28] = v15[28];
  v16[29] = v15[29];
  v16[30] = v15[30];
  v16[31] = v15[31];
  v16[32] = v15[32];
  v16[33] = v15[33];
  v16[34] = v15[34];
  v16[35] = v15[35];
  v16[36] = v15[36];
  v16[37] = v15[37];
  v16[38] = v15[38];
  v16[39] = v15[39];
  v16[40] = v15[40];
  v16[41] = v15[41];
  v16[42] = v15[42];
  v16[43] = v15[43];
  v16[44] = v15[44];
  v16[45] = v15[45];
  v16[46] = v15[46];
  v16[47] = v15[47];
  v16[48] = v15[48];
  v16[49] = v15[49];
  v16[50] = v15[50];
  v16[51] = v15[51];
  v16[52] = v15[52];
  v16[53] = v15[53];
  v16[54] = v15[54];
  v16[55] = v15[55];
  v16[56] = v15[56];
  v16[57] = v15[57];
  v16[58] = v15[58];
  v16[59] = v15[59];
  v16[60] = v15[60];
  v16[61] = v15[61];
  v16[62] = v15[62];
  v16[63] = v15[63];
  v16[64] = v15[64];
  v16[65] = v15[65];
  v16[66] = v15[66];
  v16[67] = v15[67];
  v16[68] = v15[68];
  v16[69] = v15[69];
  v16[70] = v15[70];
  v16[71] = v15[71];
  v16[72] = v15[72];
  v16[73] = v15[73];
  v16[74] = v15[74];
  v16[75] = v15[75];
  v16[76] = v15[76];
  v16[77] = v15[77];
  v16[78] = v15[78];
  v16[79] = v15[79];
  v16[80] = v15[80];
  v16[81] = v15[81];
  v16[82] = v15[82];
  v16[83] = v15[83];
  v16[84] = v15[84];
  v16[85] = v15[85];
  v16[86] = v15[86];
  v16[87] = v15[87];
  v16[88] = v15[88];
  v16[89] = v15[89];
  v16[90] = v15[90];
  v16[91] = v15[91];
  v16[92] = v15[92];
  v16[93] = v15[93];
  v16[94] = v15[94];
  v16[95] = v15[95];
  v16[96] = v15[96];
  v16[97] = v15[97];
  v16[98] = v15[98];
  v16[99] = v15[99];
  v16[100] = v15[100];
  v16[101] = v15[101];
  v16[102] = v15[102];
  v16[103] = v15[103];
  v16[104] = v15[104];
  v16[105] = v15[105];
  v16[106] = v15[106];
  v16[107] = v15[107];
  v16[108] = v15[108];
  v16[109] = v15[109];
  v16[110] = v15[110];
  v16[111] = v15[111];
  v16[112] = v15[112];
  v16[113] = v15[113];
  v16[114] = v15[114];
  v16[115] = v15[115];
  v16[116] = v15[116];
  v16[117] = v15[117];
  v16[118] = v15[118];
  v16[119] = v15[119];
  v16[120] = v15[120];
  v16[121] = v15[121];
  v16[122] = v15[122];
  v16[123] = v15[123];
  v16[124] = v15[124];
  v16[125] = v15[125];
  v16[126] = v15[126];
  v16[127] = v15[127];
  v16[128] = v15[128];
  v16[129] = v15[129];
  v16[130] = v15[130];
  v16[131] = v15[131];
  v16[132] = v15[132];
  v16[133] = v15[133];
  v16[134] = v15[134];
  v16[135] = v15[135];
  v16[136] = v15[136];
  v16[137] = v15[137];
  v16[138] = v15[138];
  v16[139] = v15[139];
  v16[140] = v15[140];
  v16[141] = v15[141];
  v16[142] = v15[142];
  v16[143] = v15[143];
  v16[144] = v15[144];
  v16[145] = v15[145];
  v16[146] = v15[146];
  v16[147] = v15[147];
  v16[148] = v15[148];
  v16[149] = v15[149];
  v16[150] = v15[150];
  v16[151] = v15[151];
  v16[152] = v15[152];
  v16[153] = v15[153];
  v16[154] = v15[154];
  v16[155] = v15[155];
  v16[156] = v15[156];
  v16[157] = v15[157];
  v16[158] = v15[158];
  v16[159] = v15[159];
  v16[160] = v15[160];
  v16[161] = v15[161];
  v16[162] = v15[162];
  v16[163] = v15[163];
  v16[164] = v15[164];
  v16[165] = v15[165];
  v16[166] = v15[166];
  v16[167] = v15[167];
  v16[168] = v15[168];
  v16[169] = v15[169];
  v16[170] = v15[170];
  v16[171] = v15[171];
  v16[172] = v15[172];
  v16[173] = v15[173];
  v16[174] = v15[174];
  v16[175] = v15[175];
  v16[176] = v15[176];
  v16[177] = v15[177];
  v16[178] = v15[178];
  v16[179] = v15[179];
  v16[180] = v15[180];
  v16[181] = v15[181];
  v16[182] = v15[182];
  v16[183] = v15[183];
  v16[184] = v15[184];
  v16[185] = v15[185];
  v16[186] = v15[186];
  v16[187] = v15[187];
  v16[188] = v15[188];
  v16[189] = v15[189];
  v16[190] = v15[190];
  v16[191] = v15[191];
  v16[192] = v15[192];
  v16[193] = v15[193];
  v16[194] = v15[194];
  v16[195] = v15[195];
  v16[196] = v15[196];
  v16[197] = v15[197];
  v16[198] = v15[198];
  v16[199] = v15[199];
  v16[200] = v15[200];
  v16[201] = v15[201];
  v16[202] = v15[202];
  v16[203] = v15[203];
  v16[204] = v15[204];
  v16[205] = v15[205];
  v16[206] = v15[206];
  v16[207] = v15[207];
  v16[208] = v15[208];
  v16[209] = v15[209];
  v16[210] = v15[210];
  v16[211] = v15[211];
  v16[212] = v15[212];
  v16[213] = v15[213];
  v16[214] = v15[214];
  v16[215] = v15[215];
  v16[216] = v15[216];
  v16[217] = v15[217];
  v16[218] = v15[218];
  v16[219] = v15[219];
  v16[220] = v15[220];
  v16[221] = v15[221];
  v16[222] = v15[222];
  v16[223] = v15[223];
  v16[224] = v15[224];
  v16[225] = v15[225];
  v16[226] = v15[226];
  v16[227] = v15[227];
  v16[228] = v15[228];
  v16[229] = v15[229];
  v16[230] = v15[230];
  v16[231] = v15[231];
  v16[232] = v15[232];
  v16[233] = v15[233];
  v16[234] = v15[234];
  v16[235] = v15[235];
  v16[236] = v15[236];
  v16[237] = v15[237];
  v16[238] = v15[238];
  v16[239] = v15[239];
  v16[240] = v15[240];
  v16[241] = v15[241];
  v16[242] = v15[242];
  v16[243] = v15[243];
  v16[244] = v15[244];
  v16[245] = v15[245];
  v16[246] = v15[246];
  v16[247] = v15[247];
  v16[248] = v15[248];
  v16[249] = v15[249];
  v16[250] = v15[250];
  v16[251] = v15[251];
  v16[252] = v15[252];
  v16[253] = v15[253];
  v16[254] = v15[254];
  v16[255] = v15[255];
  v16[256] = v15[256];
  v16[257] = v15[257];
  v16[258] = v15[258];
  v16[259] = v15[259];
  v16[260] = v15[260];
  v16[261] = v15[261];
  v16[262] = v15[262];
  v16[263] = v15[263];
  v16[264] = v15[264];
  v16[265] = v15[265];
  v16[266] = v15[266];
  v16[267] = v15[267];
  v16[268] = v15[268];
  v16[269] = v15[269];
  v16[270] = v15[270];
  v16[271] = v15[271];
  v16[272] = v15[272];
  v16[273] = v15[273];
  v16[274] = v15[274];
  v16[275] = v15[275];
  v16[276] = v15[276];
  v16[277] = v15[277];
  v16[278] = v15[278];
  v16[279] = v15[279];
  v16[280] = v15[280];
  v16[281] = v15[281];
  v16[282] = v15[282];
  v16[283] = v15[283];
  v16[284] = v15[284];
  v16[285] = v15[285];
  v16[286] = v15[286];
  v16[287] = v15[287];
  v16[288] = v15[288];
  v16[289] = v15[289];
  v16[290] = v15[290];
  v16[291] = v15[291];
  v16[292] = v15[292];
  v16[293] = v15[293];
  v16[294] = v15[294];
  v16[295] = v15[295];
  v16[296] = v15[296];
  v16[297] = v15[297];
  v16[298] = v15[298];
  v16[299] = v15[299];
  v16[300] = v15[300];
  v16[301] = v15[301];
  v16[302] = v15[302];
  v16[303] = v15[303];
  v16[304] = v15[304];
  v16[305] = v15[305];
  v16[306] = v15[306];
  v16[307] = v15[307];
  v16[308] = v15[308];
  v16[309] = v15[309];
  v16[310] = v15[310];
  v16[311] = v15[311];
  v16[312] = v15[312];
  v16[313] = v15[313];
  v16[314] = v15[314];
  v16[315] = v15[315];
  v16[316] = v15[316];
  v16[317] = v15[317];
  v16[318] = v15[318];
  v16[319] = v15[319];
  v16[320] = v15[320];
  v16[321] = v15[321];
  v16[322] = v15[322];
  v16[323] = v15[323];
  v16[324] = v15[324];
  v16[325] = v15[325];
  v16[326] = v15[326];
  v16[327] = v15[327];
  v16[328] = v15[328];
  v16[329] = v15[329];
  v16[330] = v15[330];
  v16[331] = v15[331];
  v16[332] = v15[332];
  v16[333] = v15[333];
  v16[334] = v15[334];
  v16[335] = v15[335];
  v16[336] = v15[336];
  v16[337] = v15[337];
  v16[338] = v15[338];
  v16[339] = v15[339];
  v16[340] = v15[340];
  v16[341] = v15[341];
  v16[342] = v15[342];
  v16[343] = v15[343];
  v16[344] = v15[344];
  v16[345] = v15[345];
  v16[346] = v15[346];
  v16[347] = v15[347];
  v16[348] = v15[348];
  v16[349] = v15[349];
  v16[350] = v15[350];
  v16[351] = v15[351];
  v16[352] = v15[352];
  v16[353] = v15[353];
  v16[354] = v15[354];
  v16[355] = v15[355];
  v16[356] = v15[356];
  v16[357] = v15[357];
  v16[358] = v15[358];
  v16[359] = v15[359];
  v16[360] = v15[360];
  v16[361] = v15[361];
  v16[362] = v15[362];
  v16[363] = v15[363];
  v16[364] = v15[364];
  v16[365] = v15[365];
  v16[366] = v15[366];
  v16[367] = v15[367];
  v16[368] = v15[368];
  v16[369] = v15[369];
  v16[370] = v15[370];
  v16[371] = v15[371];
  v16[372] = v15[372];
  v16[373] = v15[373];
  v16[374] = v15[374];
  v16[375] = v15[375];
  v16[376] = v15[376];
  v16[377] = v15[377];
  v16[378] = v15[378];
  v16[379] = v15[379];
  v16[380] = v15[380];
  v16[381] = v15[381];
  v16[382] = v15[382];
  v16[383] = v15[383];
  v16[384] = v15[384];
  v16[385] = v15[385];
  v16[386] = v15[386];
  v16[387] = v15[387];
  v16[388] = v15[388];
  v16[389] = v15[389];
  v16[390] = v15[390];
  v16[391] = v15[391];
  v16[392] = v15[392];
  v16[393] = v15[393];
  v16[394] = v15[394];
  v16[395] = v15[395];
  v16[396] = v15[396];
  v16[397] = v15[397];
  v16[398] = v15[398];
  v16[399] = v15[399];
  v16[400] = v15[400];
  v16[401] = v15[401];
  v16[402] = v15[402];
  v16[403] = v15[403];
  v16[404] = v15[404];
  v16[405] = v15[405];
  v16[406] = v15[406];
  v16[407] = v15[407];
  v16[408] = v15[408];
  v16[409] = v15[409];
  v16[410] = v15[410];
  v16[411] = v15[411];
  v16[412] = v15[412];
  v16[413] = v15[413];
  v16[414] = v15[414];
  v16[415] = v15[415];
  v16[416] = v15[416];
  v16[417] = v15[417];
  v16[418] = v15[418];
  v16[419] = v15[419];
  v16[420] = v15[420];
  v16[421] = v15[421];
  v16[422] = v15[422];
  v16[423] = v15[423];
  v16[424] = v15[424];
  v16[425] = v15[425];
  v16[426] = v15[426];
  v16[427] = v15[427];
  v16[428] = v15[428];
  v16[429] = v15[429];
  v16[430] = v15[430];
  v16[431] = v15[431];
  v16[432] = v15[432];
  v16[433] = v15[433];
  v16[434] = v15[434];
  v16[435] = v15[435];
  v16[436] = v15[436];
  v16[437] = v15[437];
  v16[438] = v15[438];
  v16[439] = v15[439];
  v16[440] = v15[440];
  v16[441] = v15[441];
  v16[442] = v15[442];
  v16[443] = v15[443];
  v16[444] = v15[444];
  v16[445] = v15[445];
  v16[446] = v15[446];
  v16[447] = v15[447];
  v16[448] = v15[448];
  v16[449] = v15[449];
  v16[450] = v15[450];
  v16[451] = v15[451];
  v16[452] = v15[452];
  v16[453] = v15[453];
  v16[454] = v15[454];
  v16[455] = v15[455];
  v16[456] = v15[456];
  v16[457] = v15[457];
  v16[458] = v15[458];
  v16[459] = v15[459];
  v16[460] = v15[460];
  v16[461] = v15[461];
  v16[462] = v15[462];
  v16[463] = v15[463];
  v16[464] = v15[464];
  v16[465] = v15[465];
  v16[466] = v15[466];
  v16[467] = v15[467];
  v16[468] = v15[468];
  v16[469] = v15[469];
  v16[470] = v15[470];
  v16[471] = v15[471];
  v16[472] = v15[472];
  v16[473] = v15[473];
  v16[474] = v15[474];
  v16[475] = v15[475];
  v16[476] = v15[476];
  v16[477] = v15[477];
  v16[478] = v15[478];
  v16[479] = v15[479];
  v16[480] = v15[480];
  v16[481] = v15[481];
  v16[482] = v15[482];
  v16[483] = v15[483];
  v16[484] = v15[484];
  v16[485] = v15[485];
  v16[486] = v15[486];
  v16[487] = v15[487];
  v16[488] = v15[488];
  v16[489] = v15[489];
  v16[490] = v15[490];
  v16[491] = v15[491];
  v16[492] = v15[492];
  v16[493] = v15[493];
  v16[494] = v15[494];
  v16[495] = v15[495];
  v16[496] = v15[496];
  v16[497] = v15[497];
  v16[498] = v15[498];
  v16[499] = v15[499];
  v16[500] = v15[500];
  v16[501] = v15[501];
  v16[502] = v15[502];
  v16[503] = v15[503];
  v16[504] = v15[504];
  v16[505] = v15[505];
  v16[506] = v15[506];
  v16[507] = v15[507];
  v16[508] = v15[508];
  v16[509] = v15[509];
  v16[510] = v15[510];
  v16[511] = v15[511];
  v16[512] = v15[512];
  v16[513] = v15[513];
  v16[514] = v15[514];
  v16[515] = v15[515];
  v16[516] = v15[516];
  v16[517] = v15[517];
  v16[518] = v15[518];
  v16[519] = v15[519];
  v16[520] = v15[520];
  v16[521] = v15[521];
  v16[522] = v15[522];
  v16[523] = v15[523];
  v16[524] = v15[524];
  v16[525] = v15[525];
  v16[526] = v15[526];
  v16[527] = v15[527];
  v16[528] = v15[528];
  v16[529] = v15[529];
  v16[530] = v15[530];
  v16[531] = v15[531];
  v16[532] = v15[532];
  v16[533] = v15[533];
  v16[534] = v15[534];
  v16[535] = v15[535];
  v16[536] = v15[536];
  v16[537] = v15[537];
  v16[538] = v15[538];
  v16[539] = v15[539];
  v16[540] = v15[540];
  v16[541] = v15[541];
  v16[542] = v15[542];
  v16[543] = v15[543];
  v16[544] = v15[544];
  v16[545] = v15[545];
  v16[546] = v15[546];
  v16[547] = v15[547];
  v16[548] = v15[548];
  v16[549] = v15[549];
  v16[550] = v15[550];
  v16[551] = v15[551];
  v16[552] = v15[552];
  v16[553] = v15[553];
  v16[554] = v15[554];
  v16[555] = v15[555];
  v16[556] = v15[556];
  v16[557] = v15[557];
  v16[558] = v15[558];
  v16[559] = v15[559];
  v16[560] = v15[560];
  v16[561] = v15[561];
  v16[562] = v15[562];
  v16[563] = v15[563];
  v16[564] = v15[564];
  v16[565] = v15[565];
  v16[566] = v15[566];
  v16[567] = v15[567];
  v16[568] = v15[568];
  v16[569] = v15[569];
  v16[570] = v15[570];
  v16[571] = v15[571];
  v16[572] = v15[572];
  v16[573] = v15[573];
  v16[574] = v15[574];
  v16[575] = v15[575];
  v16[576] = v15[576];
  v16[577] = v15[577];
  v16[578] = v15[578];
  v16[579] = v15[579];
  v16[580] = v15[580];
  v16[581] = v15[581];
  v16[582] = v15[582];
  v16[583] = v15[583];
  v16[584] = v15[584];
  v16[585] = v15[585];
  v16[586] = v15[586];
  v16[587] = v15[587];
  v16[588] = v15[588];
  v16[589] = v15[589];
  v16[590] = v15[590];
  v16[591] = v15[591];
  v16[592] = v15[592];
  v16[593] = v15[593];
  v16[594] = v15[594];
  v16[595] = v15[595];
  v16[596] = v15[596];
  v16[597] = v15[597];
  v16[598] = v15[598];
  v16[599] = v15[599];
  v16[600] = v15[600];
  v16[601] = v15[601];
  v16[602] = v15[602];
  v16[603] = v15[603];
  v16[604] = v15[604];
  v16[605] = v15[605];
  v16[606] = v15[606];
  v16[607] = v15[607];
  v16[608] = v15[608];
  v16[609] = v15[609];
  v16[610] = v15[610];
  v16[611] = v15[611];
  v16[612] = v15[612];
  v16[613] = v15[613];
  v16[614] = v15[614];
  v16[615] = v15[615];
  v16[616] = v15[616];
  v16[617] = v15[617];
  v16[618] = v15[618];
  v16[619] = v15[619];
  v16[620] = v15[620];
  v16[621] = v15[621];
  v16[622] = v15[622];
  v16[623] = v15[623];
  v16[624] = v15[624];
  v16[625] = v15[625];
  v16[626] = v15[626];
  v16[627] = v15[627];
  v16[628] = v15[628];
  v16[629] = v15[629];
  v16[630] = v15[630];
  v16[631] = v15[631];
  v16[632] = v15[632];
  v16[633] = v15[633];
  v16[634] = v15[634];
  v16[635] = v15[635];
  v16[636] = v15[636];
  v16[637] = v15[637];
  v16[638] = v15[638];
  v16[639] = v15[639];
  v16[640] = v15[640];
  v16[641] = v15[641];
  v16[642] = v15[642];
  v16[643] = v15[643];
  v16[644] = v15[644];
  v16[645] = v15[645];
  v16[646] = v15[646];
  v16[647] = v15[647];
  v16[648] = v15[648];
  v16[649] = v15[649];
  v16[650] = v15[650];
  v16[651] = v15[651];
  v16[652] = v15[652];
  v16[653] = v15[653];
  v16[654] = v15[654];
  v16[655] = v15[655];
  v16[656] = v15[656];
  v16[657] = v15[657];
  v16[658] = v15[658];
  v16[659] = v15[659];
  v16[660] = v15[660];
  v16[661] = v15[661];
  v16[662] = v15[662];
  v16[663] = v15[663];
  v16[664] = v15[664];
  v16[665] = v15[665];
  v16[666] = v15[666];
  v16[667] = v15[667];
  v16[668] = v15[668];
  v16[669] = v15[669];
  v16[670] = v15[670];
  v16[671] = v15[671];
  v16[672] = v15[672];
  v16[673] = v15[673];
  v16[674] = v15[674];
  v16[675] = v15[675];
  v16[676] = v15[676];
  v16[677] = v15[677];
  v16[678] = v15[678];
  v16[679] = v15[679];
  v16[680] = v15[680];
  v16[681] = v15[681];
  v16[682] = v15[682];
  v16[683] = v15[683];
  v16[684] = v15[684];
  v16[685] = v15[685];
  v16[686] = v15[686];
  v16[687] = v15[687];
  v16[688] = v15[688];
  v16[689] = v15[689];
  v16[690] = v15[690];
  v16[691] = v15[691];
  v16[692] = v15[692];
  v16[693] = v15[693];
  v16[694] = v15[694];
  v16[695] = v15[695];
  v16[696] = v15[696];
  v16[697] = v15[697];
  v16[698] = v15[698];
  v16[699] = v15[699];
  v16[700] = v15[700];
  v16[701] = v15[701];
  v16[702] = v15[702];
  v16[703] = v15[703];
  v16[704] = v15[704];
  v16[705] = v15[705];
  v16[706] = v15[706];
  v16[707] = v15[707];
  v16[708] = v15[708];
  v16[709] = v15[709];
  v16[710] = v15[710];
  v16[711] = v15[711];
  v16[712] = v15[712];
  v16[713] = v15[713];
  v16[714] = v15[714];
  v16[715] = v15[715];
  v16[716] = v15[716];
  v16[717] = v15[717];
  v16[718] = v15[718];
  v16[719] = v15[719];
  v16[720] = v15[720];
  v16[721] = v15[721];
  v16[722] = v15[722];
  v16[723] = v15[723];
  v16[724] = v15[724];
  v16[725] = v15[725];
  v16[726] = v15[726];
  v16[727] = v15[727];
  v16[728] = v15[728];
  v16[729] = v15[729];
  v16[730] = v15[730];
  v16[731] = v15[731];
  v16[732] = v15[732];
  v16[733] = v15[733];
  v16[734] = v15[734];
  v16[735] = v15[735];
  v16[736] = v15[736];
  v16[737] = v15[737];
  v16[738] = v15[738];
  v16[739] = v15[739];
  v16[740] = v15[740];
  v16[741] = v15[741];
  v16[742] = v15[742];
  v16[743] = v15[743];
  v16[744] = v15[744];
  v16[745] = v15[745];
  v16[746] = v15[746];
  v16[747] = v15[747];
  v16[748] = v15[748];
  v16[749] = v15[749];
  v16[750] = v15[750];
  v16[751] = v15[751];
  v16[752] = v15[752];
  v16[753] = v15[753];
  v16[754] = v15[754];
  v16[755] = v15[755];
  v16[756] = v15[756];
  v16[757] = v15[757];
  v16[758] = v15[758];
  v16[759] = v15[759];
  v16[760] = v15[760];
  v16[761] = v15[761];
  v16[762] = v15[762];
  v16[763] = v15[763];
  v16[764] = v15[764];
  v16[765] = v15[765];
  v16[766] = v15[766];
  v16[767] = v15[767];
  v16[768] = v15[768];
  v16[769] = v15[769];
  v16[770] = v15[770];
  v16[771] = v15[771];
  v16[772] = v15[772];
  v16[773] = v15[773];
  v16[774] = v15[774];
  v16[775] = v15[775];
  v16[776] = v15[776];
  v16[777] = v15[777];
  v16[778] = v15[778];
  v16[779] = v15[779];
  v16[780] = v15[780];
  v16[781] = v15[781];
  v16[782] = v15[782];
  v16[783] = v15[783];
  v16[784] = v15[784];
  v16[785] = v15[785];
  v16[786] = v15[786];
  v16[787] = v15[787];
  v16[788] = v15[788];
  v16[789] = v15[789];
  v16[790] = v15[790];
  v16[791] = v15[791];
  v16[792] = v15[792];
  v16[793] = v15[793];
  v16[794] = v15[794];
  v16[795] = v15[795];
  v16[796] = v15[796];
  v16[797] = v15[797];
  v16[798] = v15[798];
  v16[799] = v15[799];
  v16[800] = v15[800];
  v16[801] = v15[801];
  v16[802] = v15[802];
  v16[803] = v15[803];
  v16[804] = v15[804];
  v16[805] = v15[805];
  v16[806] = v15[806];
  v16[807] = v15[807];
  v16[808] = v15[808];
  v16[809] = v15[809];
  v16[810] = v15[810];
  v16[811] = v15[811];
  v16[812] = v15[812];
  v16[813] = v15[813];
  v16[814] = v15[814];
  v16[815] = v15[815];
  v16[816] = v15[816];
  v16[817] = v15[817];
  v16[818] = v15[818];
  v16[819] = v15[819];
  v16[820] = v15[820];
  v16[821] = v15[821];
  v16[822] = v15[822];
  v16[823] = v15[823];
  v16[824] = v15[824];
  v16[825] = v15[825];
  v16[826] = v15[826];
  v16[827] = v15[827];
  v16[828] = v15[828];
  v16[829] = v15[829];
  v16[830] = v15[830];
  v16[831] = v15[831];
  v16[832] = v15[832];
  v16[833] = v15[833];
  v16[834] = v15[834];
  v16[835] = v15[835];
  v16[836] = v15[836];
  v16[837] = v15[837];
  v16[838] = v15[838];
  v16[839] = v15[839];
  v16[840] = v15[840];
  v16[841] = v15[841];
  v16[842] = v15[842];
  v16[843] = v15[843];
  v16[844] = v15[844];
  v16[845] = v15[845];
  v16[846] = v15[846];
  v16[847] = v15[847];
  v16[848] = v15[848];
  v16[849] = v15[849];
  v16[850] = v15[850];
  v16[851] = v15[851];
  v16[852] = v15[852];
  v16[853] = v15[853];
  v16[854] = v15[854];
  v16[855] = v15[855];
  v16[856] = v15[856];
  v16[857] = v15[857];
  v16[858] = v15[858];
  v16[859] = v15[859];
  v16[860] = v15[860];
  v16[861] = v15[861];
  v16[862] = v15[862];
  v16[863] = v15[863];
  v16[864] = v15[864];
  v16[865] = v15[865];
  v16[866] = v15[866];
  v16[867] = v15[867];
  v16[868] = v15[868];
  v16[869] = v15[869];
  v16[870] = v15[870];
  v16[871] = v15[871];
  v16[872] = v15[872];
  v16[873] = v15[873];
  v16[874] = v15[874];
  v16[875] = v15[875];
  v16[876] = v15[876];
  v16[877] = v15[877];
  v16[878] = v15[878];
  v16[879] = v15[879];
  v16[880] = v15[880];
  v16[881] = v15[881];
  v16[882] = v15[882];
  v16[883] = v15[883];
  v16[884] = v15[884];
  v16[885] = v15[885];
  v16[886] = v15[886];
  v16[887] = v15[887];
  v16[888] = v15[888];
  v16[889] = v15[889];
  v16[890] = v15[890];
  v16[891] = v15[891];
  v16[892] = v15[892];
  v16[893] = v15[893];
  v16[894] = v15[894];
  v16[895] = v15[895];
  v16[896] = v15[896];
  v16[897] = v15[897];
  v16[898] = v15[898];
  v16[899] = v15[899];
  v16[900] = v15[900];
  v16[901] = v15[901];
  v16[902] = v15[902];
  v16[903] = v15[903];
  v16[904] = v15[904];
  v16[905] = v15[905];
  v16[906] = v15[906];
  v16[907] = v15[907];
  v16[908] = v15[908];
  v16[909] = v15[909];
  v16[910] = v15[910];
  v16[911] = v15[911];
  v16[912] = v15[912];
  v16[913] = v15[913];
  v16[914] = v15[914];
  v16[915] = v15[915];
  v16[916] = v15[916];
  v16[917] = v15[917];
  v16[918] = v15[918];
  v16[919] = v15[919];
  v16[920] = v15[920];
  v16[921] = v15[921];
  v16[922] = v15[922];
  v16[923] = v15[923];
  v16[924] = v15[924];
  v16[925] = v15[925];
  v16[926] = v15[926];
  v16[927] = v15[927];
  v16[928] = v15[928];
  v16[929] = v15[929];
  v16[930] = v15[930];
  v16[931] = v15[931];
  v16[932] = v15[932];
  v16[933] = v15[933];
  v16[934] = v15[934];
  v16[935] = v15[935];
  v16[936] = v15[936];
  v16[937] = v15[937];
  v16[938] = v15[938];
  v16[939] = v15[939];
  v16[940] = v15[940];
  v16[941] = v15[941];
  v16[942] = v15[942];
  v16[943] = v15[943];
  v16[944] = v15[944];
  v16[945] = v15[945];
  v16[946] = v15[946];
  v16[947] = v15[947];
  v16[948] = v15[948];
  v16[949] = v15[949];
  v16[950] = v15[950];
  v16[951] = v15[951];
  v16[952] = v15[952];
  v16[953] = v15[953];
  v16[954] = v15[954];
  v16[955] = v15[955];
  v16[956] = v15[956];
  v16[957] = v15[957];
  v16[958] = v15[958];
  v16[959] = v15[959];
  v16[960] = v15[960];
  v16[961] = v15[961];
  v16[962] = v15[962];
  v16[963] = v15[963];
  v16[964] = v15[964];
  v16[965] = v15[965];
  v16[966] = v15[966];
  v16[967] = v15[967];
  v16[968] = v15[968];
  v16[969] = v15[969];
  v16[970] = v15[970];
  v16[971] = v15[971];
  v16[972] = v15[972];
  v16[973] = v15[973];
  v16[974] = v15[974];
  v16[975] = v15[975];
  v16[976] = v15[976];
  v16[977] = v15[977];
  v16[978] = v15[978];
  v16[979] = v15[979];
  v16[980] = v15[980];
  v16[981] = v15[981];
  v16[982] = v15[982];
  v16[983] = v15[983];
  v16[984] = v15[984];
  v16[985] = v15[985];
  v16[986] = v15[986];
  v16[987] = v15[987];
  v16[988] = v15[988];
  v16[989] = v15[989];
  v16[990] = v15[990];
  v16[991] = v15[991];
  v16[992] = v15[992];
  v16[993] = v15[993];
  v16[994] = v15[994];
  v16[995] = v15[995];
  v16[996] = v15[996];
  v16[997] = v15[997];
  v16[998] = v15[998];
  v16[999] = v15[999];
  v16[1000] = v15[1000];
  v16[1001] = v15[1001];
  v16[1002] = v15[1002];
  v16[1003] = v15[1003];
  v16[1004] = v15[1004];
  v16[1005] = v15[1005];
  v16[1006] = v15[1006];
  v16[1007] = v15[1007];
  v16[1008] = v15[1008];
  v16[1009] = v15[1009];
  v16[1010] = v15[1010];
  v16[1011] = v15[1011];
  v16[1012] = v15[1012];
  v16[1013] = v15[1013];
  v16[1014] = v15[1014];
  v16[1015] = v15[1015];
  v16[1016] = v15[1016];
  v16[1017] = v15[1017];
  v16[1018] = v15[1018];
  v16[1019] = v15[1019];
  v16[1020] = v15[1020];
  v16[1021] = v15[1021];
  v16[1022] = v15[1022];
  v16[1023] = v15[1023];
  memcpy(v12, v16, sizeof(v12));
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D9CA8, &qword_26AE7C870);
  sub_26AE593C0(v12, sub_26AE592F0, 0, v1, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v6, &v13);
  v10 = v13;
  v11 = v14;
  v9[2] = v13;
  v9[3] = v14;
  v9[0] = sub_26AE66318();
  v9[1] = v2;
  sub_26AE595F4();
  v5 = sub_26AE663F8();
  sub_26AE53014(v9);
  if ((v5 & 1) == 0)
  {

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = 1;
LABEL_6:
  *MEMORY[0x277D85DE8];
  return v4 & 1;
}

uint64_t sub_26AE592F0@<X0>(uint64_t *a1@<X8>)
{
  v5 = sub_26AE66348();
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    result = sub_26AE66328();
  }

  else
  {
    result = sub_26AE66318();
  }

  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_26AE593C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
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
  MEMORY[0x28223BE20](a1, a2, a3);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_26AE664E8();
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

unint64_t sub_26AE595F4()
{
  v2 = qword_2803D9CB0;
  if (!qword_2803D9CB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9CB0);
    return WitnessTable;
  }

  return v2;
}

Swift::Bool __swiftcall SUUIPlatformEnvironment.hasWapiCapability()()
{
  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_26AE664D8();
    __break(1u);
  }

  wapiCapability = MobileGestalt_get_wapiCapability();
  MEMORY[0x277D82BD8](v2);
  return wapiCapability;
}

Swift::Bool __swiftcall SUUIPlatformEnvironment.isInternalBuild()()
{
  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_26AE664D8();
    __break(1u);
  }

  internalBuild = MobileGestalt_get_internalBuild();
  MEMORY[0x277D82BD8](v2);
  return internalBuild;
}

Swift::String __swiftcall SUUIPlatformEnvironment.deviceFamilyName()()
{
  v18 = 0;
  v19 = v0;
  sub_26AE66318();
  v10 = sub_26AE662E8();
  v11 = MGCopyAnswer();
  MEMORY[0x277D82BD8](v10);

  if (v11)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (swift_dynamicCast())
    {
      v7 = v12;
      v8 = v13;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v14 = v5;
  v15 = v6;
  if (v6)
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = sub_26AE66318();
    v17 = v1;
  }

  v2 = v16;
  v3 = v17;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall SUUIPlatformEnvironment.productVersion()()
{
  v18 = 0;
  v19 = v0;
  sub_26AE66318();
  v10 = sub_26AE662E8();
  v11 = MGCopyAnswer();
  MEMORY[0x277D82BD8](v10);

  if (v11)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (swift_dynamicCast())
    {
      v7 = v12;
      v8 = v13;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v14 = v5;
  v15 = v6;
  if (v6)
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = sub_26AE66318();
    v17 = v1;
  }

  v2 = v16;
  v3 = v17;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall SUUIPlatformEnvironment.productVersionExtra()()
{
  v18 = 0;
  v19 = v0;
  sub_26AE66318();
  v10 = sub_26AE662E8();
  v11 = MGCopyAnswer();
  MEMORY[0x277D82BD8](v10);

  if (v11)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (swift_dynamicCast())
    {
      v7 = v12;
      v8 = v13;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v14 = v5;
  v15 = v6;
  if (v6)
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = sub_26AE66318();
    v17 = v1;
  }

  v2 = v16;
  v3 = v17;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall SUUIPlatformEnvironment.buildVersion()()
{
  v18 = 0;
  v19 = v0;
  sub_26AE66318();
  v10 = sub_26AE662E8();
  v11 = MGCopyAnswer();
  MEMORY[0x277D82BD8](v10);

  if (v11)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (swift_dynamicCast())
    {
      v7 = v12;
      v8 = v13;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v14 = v5;
  v15 = v6;
  if (v6)
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = sub_26AE66318();
    v17 = v1;
  }

  v2 = v16;
  v3 = v17;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t SUUISoftwareUpdateType.description.getter(uint64_t a1)
{
  v2 = [objc_opt_self() description_];
  v3 = sub_26AE662F8();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t static SUUISoftwareUpdateType.allCases.getter()
{
  type metadata accessor for SUUISoftwareUpdateType();
  result = sub_26AE664F8();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  sub_26AE521B8();
  return result;
}

unint64_t sub_26AE5A1A4()
{
  v2 = qword_2803D9CB8;
  if (!qword_2803D9CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D9CC0, &qword_26AE7C8E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9CB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE5A22C@<X0>(uint64_t *a1@<X8>)
{
  result = static SUUISoftwareUpdateType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t SUUIUserInteractionResponse.description.getter(uint64_t a1)
{
  v2 = SUUIUserInteractionResponseToString(a1);
  v3 = sub_26AE662F8();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t static SUUIUserInteractionResponse.allCases.getter()
{
  type metadata accessor for SUUIUserInteractionResponse();
  result = sub_26AE664F8();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  sub_26AE521B8();
  return result;
}

unint64_t sub_26AE5A340()
{
  v2 = qword_2803D9CC8;
  if (!qword_2803D9CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D9CD0, &qword_26AE7C950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9CC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE5A3C8@<X0>(uint64_t *a1@<X8>)
{
  result = static SUUIUserInteractionResponse.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t SUUIStatefulDescriptorState.description.getter(uint64_t a1)
{
  v2 = SUUIStatefulDescriptorStateToString(a1);
  v3 = sub_26AE662F8();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t static SUUIStatefulDescriptorState.allCases.getter()
{
  type metadata accessor for SUUIStatefulDescriptorState();
  result = sub_26AE664F8();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  sub_26AE521B8();
  return result;
}

uint64_t sub_26AE5A4DC@<X0>(uint64_t *a1@<X8>)
{
  result = static SUUIStatefulDescriptorState.allCases.getter();
  *a1 = result;
  return result;
}

BOOL static SUUIStatefulDescriptorState.< infix(_:_:)()
{
  sub_26AE5A55C();
  v3 = v0;
  sub_26AE5A55C();
  return v3 < v1;
}

unint64_t sub_26AE5A590()
{
  v2 = qword_2803D9CD8;
  if (!qword_2803D9CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D9CE0, &qword_26AE7C9C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9CD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE5A630()
{
  v2 = qword_2803D9CE8;
  if (!qword_2803D9CE8)
  {
    type metadata accessor for SUUIStatefulDescriptorState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9CE8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_26AE5A6B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static SUUIStatefulDescriptorState.< infix(_:_:)();
}

uint64_t SUUIMDMSoftwareUpdatePath.description.getter(uint64_t a1)
{
  v2 = [objc_opt_self() description_];
  v3 = sub_26AE662F8();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t static SUUIMDMSoftwareUpdatePath.allCases.getter()
{
  type metadata accessor for SUUIMDMSoftwareUpdatePath();
  result = sub_26AE664F8();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  sub_26AE521B8();
  return result;
}

unint64_t sub_26AE5A834()
{
  v2 = qword_2803D9CF0;
  if (!qword_2803D9CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D9CF8, &qword_26AE7CA78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9CF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE5A8BC@<X0>(uint64_t *a1@<X8>)
{
  result = static SUUIMDMSoftwareUpdatePath.allCases.getter();
  *a1 = result;
  return result;
}

__C::SUUIStatefulUIEnvironmentOptions __swiftcall SUUICapabilities.toStatefulUIEnvironmentOptions()()
{
  memset(__b, 0, 0x29uLL);
  v28.rawValue = 0;
  v27[0] = 0;
  v27[1] = 0;
  memset(v19, 0, 0x29uLL);
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v1 = *(v0 + 40);
  v10 = v1;
  __b[0] = *v0;
  __b[1] = v6;
  __b[2] = v7;
  __b[3] = v8;
  __b[4] = v9;
  LOBYTE(__b[5]) = v1 & 1;
  type metadata accessor for SUUIStatefulUIEnvironmentOptions();
  sub_26AE664F8();
  sub_26AE519E0();
  sub_26AE66418();
  v26 = static SUUICapabilities.allCases.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D9D00, &qword_26AE7CAC0);
  sub_26AE5AC04();
  sub_26AE663E8();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D9D10, &qword_26AE7CAC8);
    sub_26AE664C8();
    v4 = v25;
    if (!v22)
    {
      break;
    }

    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    v19[4] = v24;
    LOBYTE(v19[5]) = v25 & 1;
    v13 = v5;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v18 = v10 & 1;
    v11[0] = v20;
    v11[1] = v21;
    v11[2] = v22;
    v11[3] = v23;
    v11[4] = v24;
    v12 = v25 & 1;
    v2 = sub_26AE5ACB8();
    if ((SUUICapabilitiesProtocol.isEnabled(_:)(v11, &type metadata for SUUICapabilities, v2) & 1) != 0 && (v4 & 1) == 0)
    {
      sub_26AE51B90();
      sub_26AE66548();
    }
  }

  sub_26AE5AC8C(v27);
  return v28;
}

unint64_t sub_26AE5AC04()
{
  v2 = qword_2803D9D08;
  if (!qword_2803D9D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D9D00, &qword_26AE7CAC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9D08);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_26AE5AC8C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_26AE5ACB8()
{
  v2 = qword_2803D9D18;
  if (!qword_2803D9D18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9D18);
    return WitnessTable;
  }

  return v2;
}

__C::SUUIStatefulUIEnvironmentOptions __swiftcall SUUIPlatformEnvironment.statefulUIOptions()()
{
  v10 = v0;
  v9 = v2;
  (*(v1 + 16))(v7);
  v5[0] = v7[0];
  v5[1] = v7[1];
  v5[2] = v7[2];
  v5[3] = v7[3];
  v5[4] = v7[4];
  v6 = v8 & 1;
  rawValue = SUUICapabilities.toStatefulUIEnvironmentOptions()().rawValue;
  sub_26AE5ADD8(v5);
  return rawValue;
}

uint64_t sub_26AE5ADD8(uint64_t a1)
{
  v1 = *(a1 + 16);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t sub_26AE5AE40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t ReactivePlatformEnvironment.statefulUIManager.getter()
{
  v8 = 0;
  sub_26AE5AE40(v0 + 16, v5);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v4 = (*(v2 + 24))(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v4;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t ReactivePlatformEnvironment.analyticsReporter.getter()
{
  v8 = 0;
  sub_26AE5AE40(v0 + 16, v5);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v4 = (*(v2 + 32))(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v4;
}

uint64_t sub_26AE5B028()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_26AE5B084(char a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_endAccess();
}

uint64_t ReactivePlatformEnvironment.isRootsInstalled.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 56);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_26AE5B174@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;

  *a2 = ReactivePlatformEnvironment.isRootsInstalled.getter() & 1;
}

uint64_t sub_26AE5B1EC(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  sub_26AE5B260(v4 & 1);
}

uint64_t sub_26AE5B260(int a1)
{
  v21 = a1;
  v17 = a1;
  v24 = 0;
  v18 = 0;
  v25 = a1;
  v19 = &v23;
  swift_beginAccess();
  v20 = *(v1 + 56);
  swift_endAccess();
  v22[31] = v20;
  v22[30] = v21;
  if (sub_26AE5B5BC())
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = v10;
    v5 = MEMORY[0x28223BE20](KeyPath, v10, v4);
    v8[2] = v2;
    v9 = v6 & 1;
    sub_26AE5B6C0(v5, sub_26AE5B690, v8, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v15 = v3;

    return v15;
  }

  else
  {
    v10[1] = v22;
    swift_beginAccess();
    *(v16 + 56) = v17 & 1;
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_26AE5B44C(void *a1)
{
  v8 = a1;
  v17 = 0;
  v15 = 0;
  v6 = *a1;
  v13 = sub_26AE66238();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v1 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v8, v2, v13);
  v12 = &v6 - v4;
  v17 = v3;
  v16 = *(v6 + *MEMORY[0x277D84DE8] + 8);
  v15 = v7;
  (*(v10 + 16))(&v6 - v4, v7 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar);
  v9 = &v14;
  v14 = v7;
  sub_26AE5B8D8();
  sub_26AE661F8();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_26AE5B618(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  return swift_endAccess();
}

uint64_t sub_26AE5B6C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_26AE66238();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v19, v20, v12);
  v16 = v11 - v7;
  v32 = v6;
  v31 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v7, v17 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar);
  v24 = &v27;
  v27 = v17;
  sub_26AE5B8D8();
  v9 = v23;
  sub_26AE661E8();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

unint64_t sub_26AE5B8D8()
{
  v2 = qword_2803D9D28;
  if (!qword_2803D9D28)
  {
    type metadata accessor for ReactivePlatformEnvironment();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9D28);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ReactivePlatformEnvironment()
{
  v1 = qword_2803D9D38;
  if (!qword_2803D9D38)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void (*sub_26AE5B9CC(void *a1))(void **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26AE66238();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66218();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26AE5BB84;
}

void sub_26AE5BB84(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26AE5BC64(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26AE5BC64(v4);
    free(v5);
  }

  free(v6);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t sub_26AE5BC64(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26AE66238();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1, v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66208();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26AE5BDA0()
{
  swift_beginAccess();
  v2 = *(v0 + 57);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_26AE5BDFC(char a1)
{
  swift_beginAccess();
  *(v1 + 57) = a1;
  return swift_endAccess();
}

uint64_t ReactivePlatformEnvironment.isInternalBuild.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 57);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_26AE5BEEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;

  *a2 = ReactivePlatformEnvironment.isInternalBuild.getter() & 1;
}

uint64_t sub_26AE5BF64(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  sub_26AE5BFD8(v4 & 1);
}

uint64_t sub_26AE5BFD8(int a1)
{
  v21 = a1;
  v17 = a1;
  v24 = 0;
  v18 = 0;
  v25 = a1;
  v19 = &v23;
  swift_beginAccess();
  v20 = *(v1 + 57);
  swift_endAccess();
  v22[31] = v20;
  v22[30] = v21;
  if (sub_26AE5B5BC())
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = v10;
    v5 = MEMORY[0x28223BE20](KeyPath, v10, v4);
    v8[2] = v2;
    v9 = v6 & 1;
    sub_26AE5B6C0(v5, sub_26AE5C23C, v8, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v15 = v3;

    return v15;
  }

  else
  {
    v10[1] = v22;
    swift_beginAccess();
    *(v16 + 57) = v17 & 1;
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_26AE5C1C4(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 57) = a2;
  return swift_endAccess();
}

void (*sub_26AE5C26C(void *a1))(void **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26AE66238();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66218();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26AE5C424;
}

void sub_26AE5C424(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26AE5C4B0(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26AE5C4B0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AE5C4B0(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26AE66238();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1, v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66208();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26AE5C5EC()
{
  swift_beginAccess();
  v2 = *(v0 + 58);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_26AE5C648(char a1)
{
  swift_beginAccess();
  *(v1 + 58) = a1;
  return swift_endAccess();
}

uint64_t ReactivePlatformEnvironment.isSeedBuild.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 58);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_26AE5C738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;

  *a2 = ReactivePlatformEnvironment.isSeedBuild.getter() & 1;
}

uint64_t sub_26AE5C7B0(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  sub_26AE5C824(v4 & 1);
}

uint64_t sub_26AE5C824(int a1)
{
  v21 = a1;
  v17 = a1;
  v24 = 0;
  v18 = 0;
  v25 = a1;
  v19 = &v23;
  swift_beginAccess();
  v20 = *(v1 + 58);
  swift_endAccess();
  v22[31] = v20;
  v22[30] = v21;
  if (sub_26AE5B5BC())
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = v10;
    v5 = MEMORY[0x28223BE20](KeyPath, v10, v4);
    v8[2] = v2;
    v9 = v6 & 1;
    sub_26AE5B6C0(v5, sub_26AE5CA88, v8, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v15 = v3;

    return v15;
  }

  else
  {
    v10[1] = v22;
    swift_beginAccess();
    *(v16 + 58) = v17 & 1;
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_26AE5CA10(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 58) = a2;
  return swift_endAccess();
}

void (*sub_26AE5CAB8(void *a1))(void **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26AE66238();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66218();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26AE5CC70;
}

void sub_26AE5CC70(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26AE5CCFC(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26AE5CCFC(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AE5CCFC(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26AE66238();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1, v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66208();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26AE5CE38()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  swift_endAccess();
  return v2;
}

uint64_t sub_26AE5CEA0(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  swift_endAccess();
}

uint64_t ReactivePlatformEnvironment.deviceFamilyName.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);

  swift_endAccess();
  return v3;
}

uint64_t sub_26AE5CFC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = ReactivePlatformEnvironment.deviceFamilyName.getter();
  a2[1] = v2;
}

uint64_t sub_26AE5D040(void *a1, uint64_t *a2)
{
  sub_26AE624F8(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_26AE5D0CC(v4, v6);
}

uint64_t sub_26AE5D0CC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = a1;
  v33 = 0;
  v20 = 0;
  v34 = a1;
  v35 = a2;
  v21 = &v32;
  swift_beginAccess();
  v22 = *(v2 + 64);
  v23 = *(v2 + 72);

  swift_endAccess();
  v31[0] = v22;
  v31[1] = v23;
  v29 = v24;
  v30 = v25;
  v26 = v31;
  v27 = sub_26AE5B5BC();
  sub_26AE53014(v31);
  if (v27)
  {
    v3 = v19;
    v4 = v20;
    KeyPath = swift_getKeyPath();
    v15 = KeyPath;

    v17 = v13;
    v6 = MEMORY[0x28223BE20](KeyPath, v13, v5);
    v12[2] = v3;
    v12[3] = v24;
    v12[4] = v7;
    sub_26AE5B6C0(v6, sub_26AE5D40C, v12, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v18 = v4;

    v14 = v18;
  }

  else
  {

    v13[1] = &v28;
    swift_beginAccess();
    v8 = v19;
    v9 = v25;
    v10 = *(v19 + 72);
    *(v19 + 64) = v24;
    *(v8 + 72) = v9;

    swift_endAccess();
    v14 = v20;
  }
}

uint64_t sub_26AE5D30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_26AE5D370(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_beginAccess();
  v3 = *(a1 + 72);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;

  return swift_endAccess();
}

void (*sub_26AE5D43C(void *a1))(void **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26AE66238();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66218();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26AE5D5F4;
}

void sub_26AE5D5F4(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26AE5D680(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26AE5D680(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AE5D680(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26AE66238();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1, v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66208();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26AE5D7BC()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  swift_endAccess();
  return v2;
}

uint64_t sub_26AE5D824(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t ReactivePlatformEnvironment.productVersion.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);

  swift_endAccess();
  return v3;
}

uint64_t sub_26AE5D94C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = ReactivePlatformEnvironment.productVersion.getter();
  a2[1] = v2;
}

uint64_t sub_26AE5D9C4(void *a1, uint64_t *a2)
{
  sub_26AE624F8(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_26AE5DA50(v4, v6);
}

uint64_t sub_26AE5DA50(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = a1;
  v33 = 0;
  v20 = 0;
  v34 = a1;
  v35 = a2;
  v21 = &v32;
  swift_beginAccess();
  v22 = *(v2 + 80);
  v23 = *(v2 + 88);

  swift_endAccess();
  v31[0] = v22;
  v31[1] = v23;
  v29 = v24;
  v30 = v25;
  v26 = v31;
  v27 = sub_26AE5B5BC();
  sub_26AE53014(v31);
  if (v27)
  {
    v3 = v19;
    v4 = v20;
    KeyPath = swift_getKeyPath();
    v15 = KeyPath;

    v17 = v13;
    v6 = MEMORY[0x28223BE20](KeyPath, v13, v5);
    v12[2] = v3;
    v12[3] = v24;
    v12[4] = v7;
    sub_26AE5B6C0(v6, sub_26AE5DD90, v12, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v18 = v4;

    v14 = v18;
  }

  else
  {

    v13[1] = &v28;
    swift_beginAccess();
    v8 = v19;
    v9 = v25;
    v10 = *(v19 + 88);
    *(v19 + 80) = v24;
    *(v8 + 88) = v9;

    swift_endAccess();
    v14 = v20;
  }
}

uint64_t sub_26AE5DC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_26AE5DCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_beginAccess();
  v3 = *(a1 + 88);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;

  return swift_endAccess();
}

void (*sub_26AE5DDC0(void *a1))(void **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26AE66238();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66218();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26AE5DF78;
}

void sub_26AE5DF78(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26AE5E004(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26AE5E004(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AE5E004(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26AE66238();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1, v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66208();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26AE5E140()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  swift_endAccess();
  return v2;
}

uint64_t sub_26AE5E1A8(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;

  swift_endAccess();
}

uint64_t ReactivePlatformEnvironment.productVersionExtra.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);

  swift_endAccess();
  return v3;
}

uint64_t sub_26AE5E2D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = ReactivePlatformEnvironment.productVersionExtra.getter();
  a2[1] = v2;
}

uint64_t sub_26AE5E348(void *a1, uint64_t *a2)
{
  sub_26AE624F8(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_26AE5E3D4(v4, v6);
}

uint64_t sub_26AE5E3D4(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = a1;
  v33 = 0;
  v20 = 0;
  v34 = a1;
  v35 = a2;
  v21 = &v32;
  swift_beginAccess();
  v22 = *(v2 + 96);
  v23 = *(v2 + 104);

  swift_endAccess();
  v31[0] = v22;
  v31[1] = v23;
  v29 = v24;
  v30 = v25;
  v26 = v31;
  v27 = sub_26AE5B5BC();
  sub_26AE53014(v31);
  if (v27)
  {
    v3 = v19;
    v4 = v20;
    KeyPath = swift_getKeyPath();
    v15 = KeyPath;

    v17 = v13;
    v6 = MEMORY[0x28223BE20](KeyPath, v13, v5);
    v12[2] = v3;
    v12[3] = v24;
    v12[4] = v7;
    sub_26AE5B6C0(v6, sub_26AE5E714, v12, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v18 = v4;

    v14 = v18;
  }

  else
  {

    v13[1] = &v28;
    swift_beginAccess();
    v8 = v19;
    v9 = v25;
    v10 = *(v19 + 104);
    *(v19 + 96) = v24;
    *(v8 + 104) = v9;

    swift_endAccess();
    v14 = v20;
  }
}

uint64_t sub_26AE5E614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_26AE5E678(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_beginAccess();
  v3 = *(a1 + 104);
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;

  return swift_endAccess();
}

void (*sub_26AE5E744(void *a1))(void **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26AE66238();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66218();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26AE5E8FC;
}

void sub_26AE5E8FC(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26AE5E988(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26AE5E988(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AE5E988(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26AE66238();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1, v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66208();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26AE5EAC4()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  swift_endAccess();
  return v2;
}

uint64_t sub_26AE5EB2C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;

  swift_endAccess();
}

uint64_t ReactivePlatformEnvironment.buildVersion.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);

  swift_endAccess();
  return v3;
}

uint64_t sub_26AE5EC54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = ReactivePlatformEnvironment.buildVersion.getter();
  a2[1] = v2;
}

uint64_t sub_26AE5ECCC(void *a1, uint64_t *a2)
{
  sub_26AE624F8(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_26AE5ED58(v4, v6);
}

uint64_t sub_26AE5ED58(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = a1;
  v33 = 0;
  v20 = 0;
  v34 = a1;
  v35 = a2;
  v21 = &v32;
  swift_beginAccess();
  v22 = *(v2 + 112);
  v23 = *(v2 + 120);

  swift_endAccess();
  v31[0] = v22;
  v31[1] = v23;
  v29 = v24;
  v30 = v25;
  v26 = v31;
  v27 = sub_26AE5B5BC();
  sub_26AE53014(v31);
  if (v27)
  {
    v3 = v19;
    v4 = v20;
    KeyPath = swift_getKeyPath();
    v15 = KeyPath;

    v17 = v13;
    v6 = MEMORY[0x28223BE20](KeyPath, v13, v5);
    v12[2] = v3;
    v12[3] = v24;
    v12[4] = v7;
    sub_26AE5B6C0(v6, sub_26AE5F098, v12, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v18 = v4;

    v14 = v18;
  }

  else
  {

    v13[1] = &v28;
    swift_beginAccess();
    v8 = v19;
    v9 = v25;
    v10 = *(v19 + 120);
    *(v19 + 112) = v24;
    *(v8 + 120) = v9;

    swift_endAccess();
    v14 = v20;
  }
}

uint64_t sub_26AE5EF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_26AE5EFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_beginAccess();
  v3 = *(a1 + 120);
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;

  return swift_endAccess();
}

void (*sub_26AE5F0C8(void *a1))(void **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26AE66238();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66218();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26AE5F280;
}

void sub_26AE5F280(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26AE5F30C(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26AE5F30C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AE5F30C(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26AE66238();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1, v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66208();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26AE5F448()
{
  swift_beginAccess();
  v2 = *(v0 + 128);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_26AE5F4A4(char a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
  return swift_endAccess();
}

uint64_t ReactivePlatformEnvironment.wapiCapability.getter()
{
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 128);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_26AE5F594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;

  *a2 = ReactivePlatformEnvironment.wapiCapability.getter() & 1;
}

uint64_t sub_26AE5F60C(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  sub_26AE5F680(v4 & 1);
}

uint64_t sub_26AE5F680(int a1)
{
  v21 = a1;
  v17 = a1;
  v24 = 0;
  v18 = 0;
  v25 = a1;
  v19 = &v23;
  swift_beginAccess();
  v20 = *(v1 + 128);
  swift_endAccess();
  v22[31] = v20;
  v22[30] = v21;
  if (sub_26AE5B5BC())
  {
    v2 = v16;
    v3 = v18;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = v10;
    v5 = MEMORY[0x28223BE20](KeyPath, v10, v4);
    v8[2] = v2;
    v9 = v6 & 1;
    sub_26AE5B6C0(v5, sub_26AE5F8E4, v8, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v15 = v3;

    return v15;
  }

  else
  {
    v10[1] = v22;
    swift_beginAccess();
    *(v16 + 128) = v17 & 1;
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_26AE5F86C(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 128) = a2;
  return swift_endAccess();
}

void (*sub_26AE5F914(void *a1))(void **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[4] = v1;
  v7 = sub_26AE66238();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[5] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AE5B44C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar, v7);
  v8[3] = v4;
  swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66218();

  (*(v5 + 8))(v6, v7);
  swift_beginAccess();
  return sub_26AE5FACC;
}

void sub_26AE5FACC(void **a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = v6[5];
    v2 = v6[4];
    swift_endAccess();
    sub_26AE5FB58(v2);
    free(v3);
  }

  else
  {
    v5 = v6[5];
    v4 = v6[4];
    swift_endAccess();
    sub_26AE5FB58(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AE5FB58(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_26AE66238();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v1, v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_26AE5B8D8();
  sub_26AE66208();

  return (*(v8 + 8))(v10, v11);
}

uint64_t ReactivePlatformEnvironment.__allocating_init(representing:)(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return ReactivePlatformEnvironment.init(representing:)(a1);
}

uint64_t ReactivePlatformEnvironment.init(representing:)(uint64_t *a1)
{
  v23 = a1;
  v22 = v1;
  v2 = *v1;
  sub_26AE5B42C(0, v1 + 56);
  v3 = *v1;
  sub_26AE5C1A4(0, v1 + 57);
  v4 = *v1;
  sub_26AE5C9F0(0, v1 + 58);
  v5 = sub_26AE66318();
  v6 = *v1;
  sub_26AE5D30C(v5, v7, v1 + 8);
  v8 = sub_26AE66318();
  v9 = *v1;
  sub_26AE5DC90(v8, v10, v1 + 10);
  v11 = sub_26AE66318();
  v12 = *v1;
  sub_26AE5E614(v11, v13, v1 + 12);
  v14 = sub_26AE66318();
  v15 = *v1;
  sub_26AE5EF98(v14, v16, v1 + 14);
  v17 = *v1;
  sub_26AE5F84C(0, v1 + 128);
  sub_26AE66228();
  sub_26AE5AE40(a1, v21);
  sub_26AE5FF60(v21, v1 + 2);
  sub_26AE5FF9C();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

uint64_t sub_26AE5FF9C()
{
  v12 = &unk_26AE7CC20;
  v15 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D9D30, &qword_26AE7CC10);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3);
  v13 = &v10 - v10;
  v15 = v0;
  sub_26AE66398();
  v11 = 0;
  v4 = sub_26AE663B8();
  (*(*(v4 - 8) + 56))(v13, 0, 1);

  v5 = swift_allocObject();
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v14 = sub_26AE60FF8(v6, v6, v8, v7, v5, MEMORY[0x277D84F78] + 8);
  sub_26AE61588(v13);
}

uint64_t sub_26AE600F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 416) = a4;
  *(v4 + 400) = v4;
  *(v4 + 408) = 0;
  *(v4 + 472) = 0;
  *(v4 + 480) = 0;
  *(v4 + 488) = 0;
  *(v4 + 496) = 0;
  *(v4 + 336) = 0;
  *(v4 + 344) = 0;
  *(v4 + 352) = 0;
  *(v4 + 360) = 0;
  *(v4 + 368) = 0;
  *(v4 + 376) = 0;
  *(v4 + 384) = 0;
  *(v4 + 392) = 0;
  *(v4 + 408) = a4;
  v5 = *(v4 + 400);
  return MEMORY[0x2822009F8](sub_26AE6015C, 0);
}

uint64_t sub_26AE6015C()
{
  v15 = *(v0 + 416);
  *(v0 + 400) = v0;
  sub_26AE5AE40(v15 + 16, v0 + 16);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v16 = SUUIPlatformEnvironment.hasWapiCapability()();
  *(v0 + 472) = v16;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26AE5AE40(v15 + 16, v0 + 56);
  v8 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v17 = SUUIPlatformEnvironment.isRootsInstalled()();
  *(v0 + 480) = v17;
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_26AE5AE40(v15 + 16, v0 + 96);
  v9 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v18 = SUUIPlatformEnvironment.isInternalBuild()();
  *(v0 + 488) = v18;
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  sub_26AE5AE40(v15 + 16, v0 + 136);
  v10 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v19 = SUUIPlatformEnvironment.isSeedBuild()();
  *(v0 + 496) = v19;
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  sub_26AE5AE40(v15 + 16, v0 + 176);
  v11 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  v1 = SUUIPlatformEnvironment.deviceFamilyName()();
  *(v0 + 424) = v1._object;
  *(v0 + 336) = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  sub_26AE5AE40(v15 + 16, v0 + 216);
  v12 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  v2 = SUUIPlatformEnvironment.productVersion()();
  *(v0 + 432) = v2._object;
  *(v0 + 352) = v2;
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  sub_26AE5AE40(v15 + 16, v0 + 256);
  v13 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
  v3 = SUUIPlatformEnvironment.productVersionExtra()();
  *(v0 + 440) = v3._object;
  *(v0 + 368) = v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  sub_26AE5AE40(v15 + 16, v0 + 296);
  v14 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
  v4 = SUUIPlatformEnvironment.buildVersion()();
  *(v0 + 448) = v4._object;
  *(v0 + 384) = v4;
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));
  sub_26AE66388();

  v21 = swift_task_alloc();
  *(v0 + 456) = v21;
  *(v21 + 16) = v15;
  *(v21 + 24) = v16;
  *(v21 + 25) = v17;
  *(v21 + 26) = v18;
  *(v21 + 27) = v19;
  *(v21 + 32) = v1;
  *(v21 + 48) = v2;
  *(v21 + 64) = v3;
  *(v21 + 80) = v4;
  v22 = MEMORY[0x277D84F78] + 8;
  sub_26AE60DD8();
  v5 = swift_task_alloc();
  *(v20 + 464) = v5;
  *v5 = *(v20 + 400);
  v5[1] = sub_26AE60694;

  return (sub_26AE60DEC)(v23, v22, sub_26AE62470, v21);
}

uint64_t sub_26AE60694()
{
  v13 = (*v1 + 16);
  v14 = (*v1 + 400);
  v2 = *(*v1 + 464);
  *v14 = *v1;

  if (v0)
  {
    v6 = *v14;
    v5 = sub_26AE60938;
  }

  else
  {
    v3 = v13[55];
    v12 = v13[54];
    v11 = v13[53];
    v10 = v13[52];
    v9 = v13[51];
    v8 = v13[50];

    v4 = *v14;
    v5 = sub_26AE6085C;
  }

  return MEMORY[0x2822009F8](v5, 0);
}

uint64_t sub_26AE6085C()
{
  v1 = v0[56];
  v5 = v0[55];
  v6 = v0[54];
  v7 = v0[53];
  v0[50] = v0;

  v2 = *(v0[50] + 8);
  v3 = v0[50];

  return v2();
}

uint64_t sub_26AE60938()
{
  v1 = v0[57];
  v7 = v0[56];
  v6 = v0[55];
  v5 = v0[54];
  v4 = v0[53];
  v3 = v0[52];
  v0[50] = v0;
}

uint64_t sub_26AE609F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_26AE60A3C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AE60B14;

  return sub_26AE600F0(a1, v6, v7, v8);
}

uint64_t sub_26AE60B14()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_26AE60C3C(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_26AE5F680(a2 & 1);
  sub_26AE5B260(a3 & 1);
  sub_26AE5BFD8(a4 & 1);
  sub_26AE5C824(a5 & 1);

  sub_26AE5D0CC(a6, a7);

  sub_26AE5DA50(a8, a9);

  sub_26AE5E3D4(a10, a11);

  return sub_26AE5ED58(a12, a13);
}

uint64_t sub_26AE60DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a1;
  v5[2] = v5;
  v6 = v5[2];
  return MEMORY[0x2822009F8](sub_26AE60E30, 0);
}

uint64_t sub_26AE60E30()
{
  v4 = v0[6];
  v0[2] = v0;
  v0[7] = sub_26AE66378();
  v1 = sub_26AE66368();
  v2 = v0[2];

  return MEMORY[0x2822009F8](sub_26AE60EC8, v1);
}

uint64_t sub_26AE60EC8()
{
  v1 = v0[7];
  v2 = v0[5];
  v8 = v0[4];
  v7 = v0[3];
  v0[2] = v0;

  v8(v3);
  v4 = *(v0[2] + 8);
  v5 = v0[2];

  return v4();
}

uint64_t sub_26AE60FF8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a1;
  v48 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v49 = a6;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &unk_26AE7CD40;
  v54 = 0;
  v67 = a6;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D9D30, &qword_26AE7CC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58, v6, v7);
  v59 = &v18 - v55;

  v65 = v57;
  v66 = v58;
  sub_26AE61A6C(v56, v59);
  v60 = sub_26AE663B8();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  if ((*(v61 + 48))(v59, 1) == 1)
  {
    sub_26AE61588(v59);
    v46 = 0;
  }

  else
  {
    v45 = sub_26AE663A8();
    (*(v61 + 8))(v59, v60);
    v46 = v45;
  }

  v42 = v46 | 0x1000;
  v44 = *(v58 + 16);
  v43 = *(v58 + 24);
  swift_unknownObjectRetain();

  if (v44)
  {
    v40 = v44;
    v41 = v43;
    v34 = v43;
    v35 = v44;
    swift_getObjectType();
    v36 = sub_26AE66368();
    v37 = v8;
    swift_unknownObjectRelease();
    v38 = v36;
    v39 = v37;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v32 = v39;
  v33 = v38;
  if (v48)
  {
    v30 = v47;
    v31 = v48;
    v9 = v54;
    v28 = sub_26AE66308();
    v10 = *(v28 + 16);
    sub_26AE61B94(v28 + 32, &v65, v49, &v63);
    if (v9)
    {
      __break(1u);
    }

    v27 = v63;

    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v26 = v29;
  if (v29)
  {
    v20 = v26;
    v21 = v26;
  }

  else
  {

    v22 = v65;
    v23 = v66;

    v11 = swift_allocObject();
    v12 = v22;
    v13 = v23;
    v14 = v33;
    v15 = v32;
    v24 = v11;
    v11[2] = v49;
    v11[3] = v12;
    v11[4] = v13;
    v25 = 0;
    if (v14 != 0 || v15 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v33;
      v64[3] = v32;
      v25 = v64;
    }

    v21 = swift_task_create();
  }

  sub_26AE621F8();
  v19 = v16;

  return v19;
}

uint64_t sub_26AE61588(uint64_t a1)
{
  v3 = sub_26AE663B8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_26AE61630@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar;
  v2 = sub_26AE66238();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AE616D4()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_26AE66528();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t ReactivePlatformEnvironment.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26AE53014(v0 + 64);
  sub_26AE53014(v0 + 80);
  sub_26AE53014(v0 + 96);
  sub_26AE53014(v0 + 112);
  v3 = OBJC_IVAR____TtC26SoftwareUpdateUIFoundation27ReactivePlatformEnvironment___observationRegistrar;
  v1 = sub_26AE66238();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t ReactivePlatformEnvironment.__deallocating_deinit()
{
  v0 = *ReactivePlatformEnvironment.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_26AE618F0()
{
  v2 = sub_26AE66238();
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

void *sub_26AE61A6C(const void *a1, void *a2)
{
  v6 = sub_26AE663B8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D9D30, &qword_26AE7CC10);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AE61B94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_26AE664D8();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_26AE61D54(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AE61E68;

  return v7(a1);
}

uint64_t sub_26AE61E68()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_26AE61F94()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_26AE61FDC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AE620D0;

  return sub_26AE61D54(a1, v6);
}

uint64_t sub_26AE620D0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_26AE6220C()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_26AE62254(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AE62348;

  return sub_26AE61D54(a1, v6);
}

uint64_t sub_26AE62348()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void *sub_26AE624F8(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t static SUUICapabilities.allCases.getter()
{
  v2 = 0;
  v1 = sub_26AE664F8();

  v2 = v1;
  sub_26AE62590(&v2);
  return v1;
}

uint64_t *sub_26AE62590(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t SUUICapabilitiesProtocol.isEnabled(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v26 = a2;
  v25 = a1;
  v29 = 0;
  v23 = 0;
  v31 = a2;
  v30 = a1;
  v24 = *(*(a3 + 16) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = v3;
  if (sub_26AE66408())
  {
    v4 = v23;
    v15 = &protocol requirements base descriptor for SUUICapabilitiesProtocol;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness);
    v14 = &v10;
    MEMORY[0x28223BE20](&v10, AssociatedConformanceWitness, AssociatedTypeWitness);
    v18 = v9;
    v9[2] = v26;
    v9[3] = v5;
    v17 = swift_getAssociatedTypeWitness();
    v6 = *(swift_getAssociatedConformanceWitness() + 16);
    v19 = sub_26AE663D8();
    swift_getWitnessTable();
    v7 = sub_26AE66338();
    v20 = v4;
    v21 = v7;
    v11 = v7;
    sub_26AE6293C(&v28);
    v12 = v11;
    v13 = v20;
  }

  else
  {
    v12 = 0;
    v13 = v23;
  }

  return v12 & 1;
}

uint64_t sub_26AE62800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness) & 1;
}

uint64_t *sub_26AE6293C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_26AE62968()
{
  v4 = sub_26AE66318();
  v5 = v0;
  sub_26AE664F8();
  *v1 = 2;
  sub_26AE521B8();
  sub_26AE50D64();
  v6 = sub_26AE663C8();
  type metadata accessor for SUUIStatefulUIEnvironmentOptions();
  sub_26AE664F8();
  *v2 = 8;
  sub_26AE521B8();
  sub_26AE519E0();
  sub_26AE66418();
  return SUUICapabilities.init(rawValue:name:requiredFlags:statefulUIOption:)(4, v4, v5, v6, v7, 0, &unk_2803D9D48);
}

uint64_t SUUICapabilities.init(rawValue:name:requiredFlags:statefulUIOption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  memset(__b, 0, 0x29uLL);
  __b[0] = a1;

  __b[1] = a2;
  __b[2] = a3;

  __b[3] = a4;
  __b[4] = a5;
  LOBYTE(__b[5]) = a6 & 1;
  sub_26AE62B80(__b, a7);

  return sub_26AE5ADD8(__b);
}

uint64_t sub_26AE62B80(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 16);

  *(a2 + 16) = v3;
  v5 = *(a1 + 24);

  result = a2;
  *(a2 + 24) = v5;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  return result;
}

void *sub_26AE62BFC()
{
  if (qword_2803D9B98 != -1)
  {
    swift_once();
  }

  return &unk_2803D9D48;
}

uint64_t SUUICapabilities.name.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return v2;
}

uint64_t SUUICapabilities.requiredFlags.getter()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t SUUICapabilities.statefulUIEnvironmentOption.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40) & 1;
  return result;
}

void *SUUICapabilities.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x29uLL);
  v11 = a1;
  v5 = sub_26AE66318();
  v6 = v2;
  v3 = default argument 2 of SUUICapabilities.init(rawValue:name:requiredFlags:statefulUIOption:)();
  SUUICapabilities.init(rawValue:name:requiredFlags:statefulUIOption:)(a1, v5, v6, v3, 0, 1, v9);
  __b[0] = v9[0];
  __b[1] = v9[1];
  __b[2] = v9[2];
  __b[3] = v9[3];
  __b[4] = v9[4];
  LOBYTE(__b[5]) = v10 & 1;
  return memcpy(a2, __b, 0x29uLL);
}

uint64_t sub_26AE62E64@<X0>(uint64_t *a1@<X8>)
{
  result = static SUUICapabilities.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26AE62E90()
{
  sub_26AE62ED4();
  sub_26AE62F50();
  return sub_26AE665E8();
}

unint64_t sub_26AE62ED4()
{
  v2 = qword_2803D9D78;
  if (!qword_2803D9D78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9D78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE62F50()
{
  v2 = qword_2803D9D80;
  if (!qword_2803D9D80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9D80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE63004(uint64_t a1)
{
  sub_26AE62ED4();
  sub_26AE665A8();
  sub_26AE5ADD8(v2);
  return sub_26AE5ADD8(a1);
}

uint64_t sub_26AE63058()
{
  sub_26AE62ED4();
  sub_26AE66588();
  return sub_26AE5ADD8(v1);
}

uint64_t sub_26AE630A4(uint64_t a1)
{
  sub_26AE62ED4();
  sub_26AE66598();
  sub_26AE5ADD8(v2);
  return sub_26AE5ADD8(a1);
}

uint64_t sub_26AE630F8(uint64_t a1, uint64_t a2)
{
  sub_26AE62ED4();
  v4 = sub_26AE66548();
  sub_26AE5ADD8(a2);
  return v4 & 1;
}

uint64_t sub_26AE63190(uint64_t a1)
{
  sub_26AE62ED4();
  sub_26AE66568();
  return sub_26AE5ADD8(a1);
}

uint64_t sub_26AE631D8(uint64_t a1)
{
  sub_26AE62ED4();
  sub_26AE62F50();
  sub_26AE665D8();
  return sub_26AE5ADD8(a1);
}

uint64_t sub_26AE63224()
{
  sub_26AE62ED4();
  sub_26AE62F50();
  return sub_26AE665B8();
}

uint64_t sub_26AE63268(uint64_t a1)
{
  sub_26AE62ED4();
  sub_26AE62F50();
  sub_26AE665C8();
  return sub_26AE5ADD8(a1);
}

void *sub_26AE633A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SUUICapabilities.init(rawValue:)(*a1, v9);
  v3 = v9[1];
  v4 = v9[2];
  v5 = v9[3];
  v6 = v9[4];
  v7 = v10;
  *a2 = v9[0];
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_26AE63404@<X0>(uint64_t *a1@<X8>)
{
  result = SUUICapabilities.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_26AE6347C()
{
  v2 = qword_2803D9D88;
  if (!qword_2803D9D88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9D88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE63538()
{
  v2 = qword_2803D9D90;
  if (!qword_2803D9D90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE635E4()
{
  v2 = qword_2803D9D98;
  if (!qword_2803D9D98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9D98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE6365C(uint64_t a1)
{
  *(a1 + 8) = sub_26AE63694();
  result = sub_26AE62ED4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26AE63694()
{
  v2 = qword_2803D9DA0;
  if (!qword_2803D9DA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9DA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE63770()
{
  v2 = qword_2803D9DA8;
  if (!qword_2803D9DA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9DA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AE63804()
{
  v2 = qword_2803D9DB0[0];
  if (!qword_2803D9DB0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2803D9DB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE63880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) + 16);
  swift_getAssociatedTypeWitness();
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_26AE6397C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AE63A94(uint64_t result, int a2, int a3)
{
  v3 = (result + 41);
  if (a2 < 0)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = (a2 - 1);
    }
  }

  return result;
}

uint64_t SynchronizedProperty.init(wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v12 = 0;
  v11 = 0;
  v13 = a2;
  v7 = *(a2 - 8);
  v8 = a2 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2, a3);
  v10 = &v4 - v9;
  v11 = &v4 - v9;
  (*(v7 + 32))(&v4 - v9, v5, v6);
  return sub_26AE63D68(v10, v6);
}

uint64_t sub_26AE63D68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_26AE664B8();
  v5 = sub_26AE664A8();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

uint64_t SynchronizedProperty.wrappedValue.getter(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v7 = a1;

  v6 = a2;
  sub_26AE63F78(sub_26AE63F44, v5, a1, a2, a2);
}

uint64_t SynchronizedProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v12 = a1;
  v11 = *(a2 + 16);
  v6 = v11;
  v10 = v2;
  v5 = *v2;

  v8 = v11;
  v9 = a1;
  sub_26AE63F78(sub_26AE641C4, v7, v5, v11, MEMORY[0x277D84F78] + 8);

  return (*(*(v6 - 8) + 8))(a1);
}

uint64_t sub_26AE640CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a3;
  v12 = 0;
  v11 = 0;
  v13 = a3;
  v6 = *(a3 - 8);
  v7 = a3 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v5 - v5;
  v12 = v10;
  v11 = v3;
  (*(v6 + 16))();
  return (*(v6 + 40))(v10, v8, v9);
}

void (*SynchronizedProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v7;
  v7[1] = v2;
  *v7 = a2;
  v8 = *(a2 + 16);
  v7[2] = v8;
  v5 = *(v8 - 8);
  v7[3] = v5;
  v6 = *(v5 + 64);
  v7[4] = __swift_coroFrameAllocStub(v6);
  v7[5] = __swift_coroFrameAllocStub(v6);
  SynchronizedProperty.wrappedValue.getter(*v2, v8);
  return sub_26AE64318;
}

void sub_26AE64318(uint64_t **a1, char a2)
{
  v11 = *a1;
  if (a2)
  {
    v7 = v11[5];
    v8 = v11[4];
    v6 = v11[2];
    v3 = v11[1];
    v4 = *v11;
    v5 = v11[3];
    (*(v5 + 16))();
    SynchronizedProperty.wrappedValue.setter(v8, v4);
    (*(v5 + 8))(v7, v6);
    free(v7);
    free(v8);
  }

  else
  {
    v9 = v11[5];
    v10 = v11[4];
    v2 = v11[1];
    SynchronizedProperty.wrappedValue.setter(v9, *v11);
    free(v9);
    free(v10);
  }

  free(v11);
}

uint64_t SynchronizedProperty.mutate<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v19 = a5;
  v17 = a1;
  v18 = a2;
  v16 = a3;

  v12 = a4;
  v13 = a5;
  v14 = a1;
  v15 = a2;
  sub_26AE645F0(sub_26AE645AC, v11, a3, a4, a5);
}

uint64_t sub_26AE645AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v2 = *(v1 + 40);
  return sub_26AE64524(a1, *(v1 + 32));
}

uint64_t *sub_26AE646B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_26AE646E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 8))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AE64828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_26AE64A18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + *MEMORY[0x277D841D0]) - 8) + 16))(a2);
}

void sub_26AE64AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[1] = a5;
  sub_26AE64C98(a3 + *(*a3 + *MEMORY[0x277D841D0] + 16), (a3 + ((*(*a3 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)), v5);
}

void sub_26AE64BDC(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    *a7 = v10;
  }
}

uint64_t SUUISoftwareUpdateVersionType.description.getter(uint64_t a1)
{
  v2 = [objc_opt_self() description_];
  v3 = sub_26AE662F8();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t static SUUISoftwareUpdateVersionType.allCases.getter()
{
  type metadata accessor for SUUISoftwareUpdateVersionType();
  result = sub_26AE664F8();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  sub_26AE521B8();
  return result;
}

unint64_t sub_26AE64E48()
{
  v2 = qword_2803D9E38;
  if (!qword_2803D9E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D9E40, &qword_26AE7D088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9E38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE64ED0@<X0>(uint64_t *a1@<X8>)
{
  result = static SUUISoftwareUpdateVersionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26AE64EFC()
{
  v1 = sub_26AE66268();
  __swift_allocate_value_buffer(v1, qword_2803D9E48);
  __swift_project_value_buffer(v1, qword_2803D9E48);
  MEMORY[0x277D82BE0](@"com.apple.SoftwareUpdateUI");
  sub_26AE662F8();
  MEMORY[0x277D82BE0](@"Analytics");
  sub_26AE662F8();
  sub_26AE66258();
  MEMORY[0x277D82BD8](@"Analytics");
  return MEMORY[0x277D82BD8](@"com.apple.SoftwareUpdateUI");
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_26AE650C0()
{
  if (qword_2803D9BA0 != -1)
  {
    swift_once();
  }

  v0 = sub_26AE66268();
  return __swift_project_value_buffer(v0, qword_2803D9E48);
}

uint64_t static Logger.analytics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AE650C0();
  v1 = sub_26AE66268();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26AE65190()
{
  v1 = sub_26AE66268();
  __swift_allocate_value_buffer(v1, qword_2803D9E60);
  __swift_project_value_buffer(v1, qword_2803D9E60);
  MEMORY[0x277D82BE0](@"com.apple.SoftwareUpdateUI");
  sub_26AE662F8();
  MEMORY[0x277D82BE0](@"General");
  sub_26AE662F8();
  sub_26AE66258();
  MEMORY[0x277D82BD8](@"General");
  return MEMORY[0x277D82BD8](@"com.apple.SoftwareUpdateUI");
}

uint64_t sub_26AE65260()
{
  if (qword_2803D9BA8 != -1)
  {
    swift_once();
  }

  v0 = sub_26AE66268();
  return __swift_project_value_buffer(v0, qword_2803D9E60);
}

uint64_t static Logger.softwareUpdateUI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AE65260();
  v1 = sub_26AE66268();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26AE65330()
{
  v1 = sub_26AE66268();
  __swift_allocate_value_buffer(v1, qword_2803D9E78);
  __swift_project_value_buffer(v1, qword_2803D9E78);
  MEMORY[0x277D82BE0](@"com.apple.SoftwareUpdateUI");
  sub_26AE662F8();
  MEMORY[0x277D82BE0](@"StatefulUI");
  sub_26AE662F8();
  sub_26AE66258();
  MEMORY[0x277D82BD8](@"StatefulUI");
  return MEMORY[0x277D82BD8](@"com.apple.SoftwareUpdateUI");
}

uint64_t sub_26AE65400()
{
  if (qword_2803D9BB0 != -1)
  {
    swift_once();
  }

  v0 = sub_26AE66268();
  return __swift_project_value_buffer(v0, qword_2803D9E78);
}

uint64_t static Logger.statefulUI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AE65400();
  v1 = sub_26AE66268();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26AE654D0()
{
  v1 = sub_26AE66268();
  __swift_allocate_value_buffer(v1, qword_2803D9E90);
  __swift_project_value_buffer(v1, qword_2803D9E90);
  MEMORY[0x277D82BE0](@"com.apple.SoftwareUpdateUI");
  sub_26AE662F8();
  MEMORY[0x277D82BE0](@"ScanOperation");
  sub_26AE662F8();
  sub_26AE66258();
  MEMORY[0x277D82BD8](@"ScanOperation");
  return MEMORY[0x277D82BD8](@"com.apple.SoftwareUpdateUI");
}

uint64_t sub_26AE655A0()
{
  if (qword_2803D9BB8 != -1)
  {
    swift_once();
  }

  v0 = sub_26AE66268();
  return __swift_project_value_buffer(v0, qword_2803D9E90);
}

uint64_t static Logger.scanOperation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AE655A0();
  v1 = sub_26AE66268();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26AE65670()
{
  v1 = sub_26AE66268();
  __swift_allocate_value_buffer(v1, qword_2803D9EA8);
  __swift_project_value_buffer(v1, qword_2803D9EA8);
  MEMORY[0x277D82BE0](@"com.apple.SoftwareUpdateUI");
  sub_26AE662F8();
  MEMORY[0x277D82BE0](@"UpdateOperation");
  sub_26AE662F8();
  sub_26AE66258();
  MEMORY[0x277D82BD8](@"UpdateOperation");
  return MEMORY[0x277D82BD8](@"com.apple.SoftwareUpdateUI");
}

uint64_t sub_26AE65740()
{
  if (qword_2803D9BC0 != -1)
  {
    swift_once();
  }

  v0 = sub_26AE66268();
  return __swift_project_value_buffer(v0, qword_2803D9EA8);
}

uint64_t static Logger.updateOperation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AE65740();
  v1 = sub_26AE66268();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26AE65810()
{
  v1 = sub_26AE66268();
  __swift_allocate_value_buffer(v1, qword_2803D9EC0);
  __swift_project_value_buffer(v1, qword_2803D9EC0);
  MEMORY[0x277D82BE0](@"com.apple.SoftwareUpdateUI");
  sub_26AE662F8();
  MEMORY[0x277D82BE0](@"NeRDOperation");
  sub_26AE662F8();
  sub_26AE66258();
  MEMORY[0x277D82BD8](@"NeRDOperation");
  return MEMORY[0x277D82BD8](@"com.apple.SoftwareUpdateUI");
}

uint64_t sub_26AE658E0()
{
  if (qword_2803D9BC8 != -1)
  {
    swift_once();
  }

  v0 = sub_26AE66268();
  return __swift_project_value_buffer(v0, qword_2803D9EC0);
}

uint64_t static Logger.nerdOperation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AE658E0();
  v1 = sub_26AE66268();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26AE659B0()
{
  v1 = sub_26AE66268();
  __swift_allocate_value_buffer(v1, qword_2803D9ED8);
  __swift_project_value_buffer(v1, qword_2803D9ED8);
  MEMORY[0x277D82BE0](@"com.apple.SoftwareUpdateUI");
  sub_26AE662F8();
  MEMORY[0x277D82BE0](@"BetaUpdatesOperation");
  sub_26AE662F8();
  sub_26AE66258();
  MEMORY[0x277D82BD8](@"BetaUpdatesOperation");
  return MEMORY[0x277D82BD8](@"com.apple.SoftwareUpdateUI");
}

uint64_t sub_26AE65A80()
{
  if (qword_2803D9BD0 != -1)
  {
    swift_once();
  }

  v0 = sub_26AE66268();
  return __swift_project_value_buffer(v0, qword_2803D9ED8);
}

uint64_t static Logger.betaUpdatesOperation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AE65A80();
  v1 = sub_26AE66268();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26AE65B50()
{
  v1 = sub_26AE66268();
  __swift_allocate_value_buffer(v1, qword_2803D9EF0);
  __swift_project_value_buffer(v1, qword_2803D9EF0);
  MEMORY[0x277D82BE0](@"com.apple.SoftwareUpdateUI");
  sub_26AE662F8();
  MEMORY[0x277D82BE0](@"ReactiveUI");
  sub_26AE662F8();
  sub_26AE66258();
  MEMORY[0x277D82BD8](@"ReactiveUI");
  return MEMORY[0x277D82BD8](@"com.apple.SoftwareUpdateUI");
}

uint64_t sub_26AE65C20()
{
  if (qword_2803D9BD8 != -1)
  {
    swift_once();
  }

  v0 = sub_26AE66268();
  return __swift_project_value_buffer(v0, qword_2803D9EF0);
}

uint64_t static Logger.reactiveUI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AE65C20();
  v1 = sub_26AE66268();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26AE65CF0()
{
  v1 = sub_26AE66268();
  __swift_allocate_value_buffer(v1, qword_2803D9F08);
  __swift_project_value_buffer(v1, qword_2803D9F08);
  MEMORY[0x277D82BE0](@"com.apple.SoftwareUpdateUI");
  sub_26AE662F8();
  MEMORY[0x277D82BE0](@"UIKit");
  sub_26AE662F8();
  sub_26AE66258();
  MEMORY[0x277D82BD8](@"UIKit");
  return MEMORY[0x277D82BD8](@"com.apple.SoftwareUpdateUI");
}

uint64_t sub_26AE65DC0()
{
  if (qword_2803D9BE0 != -1)
  {
    swift_once();
  }

  v0 = sub_26AE66268();
  return __swift_project_value_buffer(v0, qword_2803D9F08);
}

uint64_t static Logger.uiKit.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AE65DC0();
  v1 = sub_26AE66268();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_26AE65E90()
{
  v1 = sub_26AE66268();
  __swift_allocate_value_buffer(v1, qword_2803D9F20);
  __swift_project_value_buffer(v1, qword_2803D9F20);
  MEMORY[0x277D82BE0](@"com.apple.SoftwareUpdateUI");
  sub_26AE662F8();
  MEMORY[0x277D82BE0](@"Mobile");
  sub_26AE662F8();
  sub_26AE66258();
  MEMORY[0x277D82BD8](@"Mobile");
  return MEMORY[0x277D82BD8](@"com.apple.SoftwareUpdateUI");
}

uint64_t sub_26AE65F60()
{
  if (qword_2803D9BE8 != -1)
  {
    swift_once();
  }

  v0 = sub_26AE66268();
  return __swift_project_value_buffer(v0, qword_2803D9F20);
}

uint64_t static Logger.mobile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26AE65F60();
  v1 = sub_26AE66268();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t SUUIAudienceType.description.getter(uint64_t a1)
{
  v2 = [objc_opt_self() description_];
  v3 = sub_26AE662F8();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t static SUUIAudienceType.allCases.getter()
{
  type metadata accessor for SUUIAudienceType();
  result = sub_26AE664F8();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  sub_26AE521B8();
  return result;
}

unint64_t sub_26AE66134()
{
  v2 = qword_2803D9F38;
  if (!qword_2803D9F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803D9F40, &qword_26AE7D0F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803D9F38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AE661BC@<X0>(uint64_t *a1@<X8>)
{
  result = static SUUIAudienceType.allCases.getter();
  *a1 = result;
  return result;
}