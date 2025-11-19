BOOL sub_4000(_OWORD *a1, const char *a2, _DWORD *a3)
{
  error = 0;
  v5 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0x600u, kCFAllocatorNull);
  if (v5)
  {
    v6 = v5;
    v7 = a1[1];
    *token.val = *a1;
    *&token.val[4] = v7;
    v8 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
    if (!v8)
    {
      v12 = 0;
      goto LABEL_11;
    }

    v9 = v8;
    v10 = SecTaskCopyValueForEntitlement(v8, v6, &error);
    if (!v10)
    {
      v12 = 0;
      v13 = error;
      if (!error)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v11 = v10;
    if (error)
    {
      goto LABEL_5;
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v11))
    {
      v12 = CFNumberGetValue(v11, kCFNumberSInt32Type, a3) != 0;
    }

    else
    {
      v16 = CFStringGetTypeID();
      if (v16 != CFGetTypeID(v11) || !CFStringGetCString(v11, &token, 32, 0x600u) || (v18 = 0, v17 = strtoull(&token, &v18, 10), !v18) || *v18)
      {
LABEL_5:
        v12 = 0;
        goto LABEL_6;
      }

      *a3 = v17;
      v12 = 1;
    }

LABEL_6:
    CFRelease(v11);
    v13 = error;
    if (!error)
    {
LABEL_8:
      CFRelease(v9);
LABEL_11:
      CFRelease(v6);
      return v12;
    }

LABEL_7:
    CFRelease(v13);
    goto LABEL_8;
  }

  return 0;
}

BOOL sub_41B0(_OWORD *a1, const char *a2, char *a3, unsigned int a4)
{
  error = 0;
  v7 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, a2, 0x600u, kCFAllocatorNull);
  if (v7)
  {
    v8 = v7;
    v9 = a1[1];
    *v19.val = *a1;
    *&v19.val[4] = v9;
    v10 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v19);
    if (!v10)
    {
      v13 = 0;
LABEL_16:
      CFRelease(v8);
      return v13;
    }

    v11 = v10;
    v12 = SecTaskCopyValueForEntitlement(v10, v8, &error);
    if (v12)
    {
      if (error)
      {
        v13 = 0;
      }

      else
      {
        v15 = v12;
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v15))
        {
          CString = CFStringGetCString(v15, a3, a4, 0x600u);
          v12 = v15;
          v13 = CString != 0;
        }

        else
        {
          v13 = 0;
          v12 = v15;
        }
      }

      CFRelease(v12);
      v14 = error;
      if (!error)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
      v14 = error;
      if (!error)
      {
        goto LABEL_15;
      }
    }

    CFRelease(v14);
LABEL_15:
    CFRelease(v11);
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_4314(uint64_t a1)
{
  v1 = *(&off_103F00 + ((-55 * ((qword_10AB48 + dword_10AB58) ^ 0x3F)) ^ byte_E0B50[byte_F7D30[(-55 * ((qword_10AB48 + dword_10AB58) ^ 0x3F))] ^ 0xC0]) - 145);
  v2 = *(v1 - 4);
  v3 = *(&off_103F00 + (byte_F8030[byte_F0DE0[(-55 * (v2 ^ qword_10AB48 ^ 0x3F))] ^ 0x9C] ^ (-55 * (v2 ^ qword_10AB48 ^ 0x3F))) - 76);
  v4 = &v6[*(v3 - 4) ^ v2];
  *(v1 - 4) = 2091414217 * v4 - 0x61622C39E7EDC73FLL;
  *(v3 - 4) = 2091414217 * (v4 ^ 0x61622C39E7EDC73FLL);
  v7 = a1;
  v9 = 1703288393 * ((&v7 & 0x4CABBFD8 | ~(&v7 | 0x4CABBFD8)) ^ 0x6A4B2CFD) + 2609;
  LOBYTE(v3) = -55 * ((*(v3 - 4) - *(v1 - 4)) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * (dword_10AB58 ^ 0x3F ^ qword_10AB48)) ^ byte_F0AE0[byte_E99D0[(-55 * (dword_10AB58 ^ 0x3F ^ qword_10AB48))] ^ 0xEA]) + 59) + 8 * (v3 ^ byte_F8030[byte_F0DE0[v3] ^ 0x21]) + 28620))(&v7);
  return v8;
}

uint64_t dku592fbFAj(uint64_t a1)
{
  v1 = *(&off_103F00 + ((-55 * ((qword_10AB48 - dword_10AAB0) ^ 0x3F)) ^ byte_E0B50[byte_F7D30[(-55 * ((qword_10AB48 - dword_10AAB0) ^ 0x3F))] ^ 0x10]) - 64);
  v2 = *(v1 - 4);
  v3 = *(&off_103F00 + ((-55 * ((qword_10AB48 - v2) ^ 0x3F)) ^ byte_F0AE0[byte_E99D0[(-55 * ((qword_10AB48 - v2) ^ 0x3F))] ^ 0x9C]) + 37);
  v4 = (*(v3 - 4) - v2) ^ &v7;
  *(v1 - 4) = (2091414217 * v4) ^ 0x61622C39E7EDC73FLL;
  *(v3 - 4) = 2091414217 * (v4 ^ 0x61622C39E7EDC73FLL);
  v6 = a1;
  LODWORD(v4) = 1658355091 * (v8 ^ 0xBE703AFA);
  v9 = &v6;
  v8[2] = 2854 - v4;
  v8[0] = -271001514 - v4;
  LOBYTE(v3) = -55 * ((*(v3 - 4) - *(v1 - 4)) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * ((qword_10AB48 + dword_10AAB0) ^ 0x3F)) ^ byte_F7F30[byte_F0CE0[(-55 * ((qword_10AB48 + dword_10AAB0) ^ 0x3F))] ^ 0x23]) - 33) + 8 * (byte_F7F34[(byte_F0CE4[v3 - 4] ^ 0x9B) - 4] ^ v3) + 28268))(v8);
  return v8[1] ^ 0x644BE891u;
}

uint64_t uvbOOqb28APZ(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(&off_103F00 + (byte_F7F34[(byte_F0CE4[(-55 * ((qword_10AB48 - dword_10AAA8) ^ 0x3F)) - 4] ^ 0x20) - 4] ^ (-55 * ((qword_10AB48 - dword_10AAA8) ^ 0x3F))) + 176);
  v7 = -55 * (*v6 ^ qword_10AB48 ^ 0x3F);
  v8 = *(&off_103F00 + (byte_F0BE4[(byte_E9ADC[v7 - 12] ^ 0x35) - 4] ^ v7) + 57);
  v9 = *v6 ^ &v11 ^ *(v8 - 4);
  *v6 = 2091414217 * v9 + 0x401DE34C41C37E77;
  *(v8 - 4) = 2091414217 * (v9 ^ 0x61622C39E7EDC73FLL);
  LODWORD(v9) = 475723357 * (((&v12 | 0x53E182BE) - (&v12 & 0x53E182BE)) ^ 0x495DA4AF);
  v12 = a2;
  v18 = v9 - 1907053871;
  v15 = a3;
  v16 = a5;
  v19 = a6;
  v13 = v9 ^ a1;
  v14 = v9 + a4;
  LOBYTE(v8) = -55 * ((*(v8 - 4) - *v6) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * ((qword_10AB48 - dword_10AAA8) ^ 0x3F)) ^ byte_F0BE0[byte_E9AD0[(-55 * ((qword_10AB48 - dword_10AAA8) ^ 0x3F))] ^ 0x15]) + 100) + 8 * (byte_E0C50[byte_F7E34[v8 - 4] ^ 0xD7] ^ v8) + 29820))(&v12);
  return v17;
}

uint64_t sub_4938(uint64_t a1)
{
  v1 = *(&off_103F00 + ((-55 * (dword_10AB70 ^ 0x3F ^ qword_10AB48)) ^ byte_F7F30[byte_F0CE0[(-55 * (dword_10AB70 ^ 0x3F ^ qword_10AB48))] ^ 0x23]) - 53);
  v2 = *(&off_103F00 + (byte_E0B50[byte_F7D30[(-55 * ((qword_10AB48 - *v1) ^ 0x3F))] ^ 0x10] ^ (-55 * ((qword_10AB48 - *v1) ^ 0x3F))) + 16);
  v3 = (*(v2 - 4) ^ *v1) - &v5;
  *v1 = 2091414217 * (v3 - 0x61622C39E7EDC73FLL);
  *(v2 - 4) = 2091414217 * (v3 ^ 0x61622C39E7EDC73FLL);
  v6 = (1579770187 * ((&v6 & 0xEA939A5D | ~(&v6 | 0xEA939A5D)) ^ 0x60B2E6DC)) ^ 0xEACE7AE5;
  v7 = a1;
  LOBYTE(v2) = -55 * ((*(v2 - 4) + *v1) ^ 0x3F);
  return (*(*(&off_103F00 + ((-55 * (dword_10AB70 ^ 0x3F ^ qword_10AB48)) ^ byte_F7F30[byte_F0CE0[(-55 * (dword_10AB70 ^ 0x3F ^ qword_10AB48))] ^ 0x23]) - 33) + 8 * (v2 ^ byte_E0B50[byte_F7D30[v2] ^ 0x10]) + 28724))(&v6);
}

uint64_t YlCJ3lg(int a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(&off_103F00 + ((-55 * (dword_108070 ^ 0x3F ^ qword_10AB48)) ^ byte_F0BE0[byte_E9AD0[(-55 * (dword_108070 ^ 0x3F ^ qword_10AB48))] ^ 0x35]) + 97);
  v8 = *(v7 - 4);
  v9 = *(&off_103F00 + (byte_F7F34[(byte_F0CE4[(-55 * ((qword_10AB48 - v8) ^ 0x3F)) - 4] ^ 0x20) - 4] ^ (-55 * ((qword_10AB48 - v8) ^ 0x3F))) + 78);
  v10 = (*(v9 - 4) + v8) ^ &v13;
  *(v7 - 4) = 2091414217 * v10 + 0x61622C39E7EDC73FLL;
  *(v9 - 4) = 2091414217 * (v10 ^ 0x61622C39E7EDC73FLL);
  v11 = 1643603977 * ((~v14 & 0x8AB22CE52D5B43B8 | v14 & 0x754DD31AD2A4BC47) ^ 0x568C01B7C2005B10);
  v15 = a6;
  v14[0] = v11 - 179852846;
  v14[1] = v11 ^ a1;
  v20 = a7;
  v21 = v11 + a2;
  v19 = a5;
  v16 = a3 - v11;
  v17 = v11 ^ a4;
  LOBYTE(v9) = -55 * ((*(v9 - 4) - *(v7 - 4)) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * ((qword_10AB48 - dword_108070) ^ 0x3F)) ^ byte_F8030[byte_F0DE0[(-55 * ((qword_10AB48 - dword_108070) ^ 0x3F))] ^ 0x9C]) - 64) + 8 * (byte_F0BE4[(byte_E9ADC[v9 - 12] ^ 0x73) - 4] ^ v9) + 30196))(v14);
  return v18;
}

uint64_t sub_4D48(uint64_t a1)
{
  v1 = *(&off_103F00 + (byte_F8034[(byte_F0DE8[(-55 * ((qword_10AB48 + dword_108050) ^ 0x3F)) - 8] ^ 0x9C) - 4] ^ (-55 * ((qword_10AB48 + dword_108050) ^ 0x3F))) - 140);
  v2 = *(v1 - 4);
  v3 = *(&off_103F00 + (byte_F0BE4[(byte_E9ADC[(-55 * (v2 ^ qword_10AB48 ^ 0x3F)) - 12] ^ 0x15) - 4] ^ (-55 * (v2 ^ qword_10AB48 ^ 0x3F))) + 88);
  v4 = 2091414217 * ((*(v3 - 4) + v2) ^ &v6 ^ 0x61622C39E7EDC73FLL);
  *(v1 - 4) = v4;
  *(v3 - 4) = v4;
  v7 = a1;
  v9 = 2713 - 1556812919 * ((((2 * &v7) | 0x50BA0724) - &v7 - 677184402) ^ 0x72DE6FF1);
  LOBYTE(v3) = -55 * ((*(v3 - 4) - *(v1 - 4)) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * (dword_108050 ^ 0x3F ^ qword_10AB48)) ^ byte_F7F30[byte_F0CE0[(-55 * (dword_108050 ^ 0x3F ^ qword_10AB48))] ^ 0xD2]) - 84) + 8 * (byte_F0AE8[(byte_E99D0[v3] ^ 0xA) - 8] ^ v3) + 28212))(&v7);
  return v8;
}

uint64_t sub_50AC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(&off_103F00 + ((-55 * ((qword_10AB48 + dword_10AAF8) ^ 0x3F)) ^ byte_E0B50[byte_F7D30[(-55 * ((qword_10AB48 + dword_10AAF8) ^ 0x3F))] ^ 0xC0]) - 140);
  v9 = *(v8 - 4);
  v10 = *(&off_103F00 + (byte_E0B58[(byte_F7D34[(-55 * ((qword_10AB48 + v9) ^ 0x3F)) - 4] ^ 0xC0) - 8] ^ (-55 * ((qword_10AB48 + v9) ^ 0x3F))) - 86);
  v11 = (*(v10 - 4) - v9) ^ &v13;
  *(v8 - 4) = (2091414217 * v11) ^ 0x61622C39E7EDC73FLL;
  *(v10 - 4) = 2091414217 * (v11 ^ 0x61622C39E7EDC73FLL);
  LODWORD(v11) = 1658355091 * ((1841037361 - (v14 | 0x6DBC0031) + (v14 | 0x9243FFCE)) ^ 0x2C33C534);
  v19 = v11 ^ 0x9EF648BB;
  v16 = a1 - v11;
  v21 = v11 ^ a5;
  v17 = a3;
  v18 = a8;
  v22 = a4;
  v20 = a2;
  v14[0] = a7;
  v14[1] = a6;
  LOBYTE(v10) = -55 * ((*(v10 - 4) + *(v8 - 4)) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * (dword_10AAF8 ^ 0x3F ^ qword_10AB48)) ^ byte_F7F30[byte_F0CE0[(-55 * (dword_10AAF8 ^ 0x3F ^ qword_10AB48))] ^ 0x9B]) + 18) + 8 * (byte_F7F34[(byte_F0CE4[v10 - 4] ^ 0x20) - 4] ^ v10) + 29780))(v14);
  return v15;
}

uint64_t fdjkDSAFjklaf2s(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_103F00 + ((-55 * (dword_10AAC0 ^ 0x3F ^ qword_10AB48)) ^ byte_F0BE0[byte_E9AD0[(-55 * (dword_10AAC0 ^ 0x3F ^ qword_10AB48))] ^ 0x73]) + 136);
  v3 = *(&off_103F00 + ((-55 * ((qword_10AB48 - *v2) ^ 0x3F)) ^ byte_F0AE0[byte_E99D0[(-55 * ((qword_10AB48 - *v2) ^ 0x3F))] ^ 0x9C]) + 37);
  v4 = *(v3 - 4) - *v2 - &v6;
  *v2 = 2091414217 * (v4 - 0x61622C39E7EDC73FLL);
  *(v3 - 4) = 2091414217 * (v4 ^ 0x61622C39E7EDC73FLL);
  v8 = a2;
  v7[1] = (922715317 * ((2 * (v7 & 0x7B4DE0E0) - v7 + 78782239) ^ 0x31343FD0)) ^ 0x995;
  LOBYTE(v2) = -55 * ((*(v3 - 4) + *v2) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * ((qword_10AB48 + dword_10AAC0) ^ 0x3F)) ^ byte_F0AE0[byte_E99D0[(-55 * ((qword_10AB48 + dword_10AAC0) ^ 0x3F))] ^ 0x9C]) + 49) + 8 * (byte_E0B58[(byte_F7D34[v2 - 4] ^ 0xC0) - 8] ^ v2) + 27940))(v7);
  return v7[0];
}

uint64_t sub_54CC(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(&off_103F00 + ((-55 * ((qword_10AB48 + dword_108060) ^ 0x3F)) ^ byte_F8030[byte_F0DE0[(-55 * ((qword_10AB48 + dword_108060) ^ 0x3F))] ^ 0x21]) + 32);
  v7 = -55 * ((qword_10AB48 + *v6) ^ 0x3F);
  v8 = *(&off_103F00 + (byte_F7F34[(byte_F0CE4[v7 - 4] ^ 0x20) - 4] ^ v7) + 78);
  v9 = &v11[*(v8 - 4) - *v6];
  *v6 = 2091414217 * v9 - 0x61622C39E7EDC73FLL;
  *(v8 - 4) = 2091414217 * (v9 ^ 0x61622C39E7EDC73FLL);
  LODWORD(v9) = 475723357 * ((((2 * &v12) | 0xA45DEFA2) - &v12 + 768673839) ^ 0xC892D1C0);
  v13 = v9 ^ a1;
  v14 = v9 + a4;
  v15 = a3;
  v16 = a5;
  v19 = a6;
  v12 = a2;
  v18 = v9 - 1907053871;
  LOBYTE(v6) = -55 * (*v6 ^ 0x3F ^ *(v8 - 4));
  (*(*(&off_103F00 + ((-55 * ((qword_10AB48 + dword_108060) ^ 0x3F)) ^ byte_F8030[byte_F0DE0[(-55 * ((qword_10AB48 + dword_108060) ^ 0x3F))] ^ 0x9C]) - 64) + 8 * (byte_F8034[(byte_F0DE8[v6 - 8] ^ 0x9C) - 4] ^ v6) + 28428))(&v12);
  return v17;
}

uint64_t sub_56D8(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = *(&off_103F00 + ((-55 * (dword_108058 ^ 0x3F ^ qword_10AB48)) ^ byte_F7F30[byte_F0CE0[(-55 * (dword_108058 ^ 0x3F ^ qword_10AB48))] ^ 0x20]) + 148);
  v8 = *(v7 - 4);
  v9 = *(&off_103F00 + (byte_E0C50[byte_F7E34[(-55 * ((qword_10AB48 - v8) ^ 0x3F)) - 4] ^ 0x25] ^ (-55 * ((qword_10AB48 - v8) ^ 0x3F))) - 4);
  v10 = *(v9 - 4) - v8 - &v13;
  *(v7 - 4) = 2091414217 * (v10 - 0x61622C39E7EDC73FLL);
  *(v9 - 4) = 2091414217 * (v10 ^ 0x61622C39E7EDC73FLL);
  v11 = 2015586863 * (((~v14 | 0x50C0B538A9DD169ELL) + (v14 | 0xAF3F4AC75622E961)) ^ 0xCB7B8B2D7821EB9);
  v14[0] = v11 - 82184547;
  v14[1] = a3 - v11;
  v15 = a6;
  v16 = v11 + a2;
  v17 = a4;
  v19 = a7;
  v14[2] = a5 - v11;
  v14[3] = a1 - v11;
  LOBYTE(v7) = -55 * (*(v7 - 4) ^ 0x3F ^ *(v9 - 4));
  (*(*(&off_103F00 + ((-55 * ((qword_10AB48 - dword_108058) ^ 0x3F)) ^ byte_E0B50[byte_F7D30[(-55 * ((qword_10AB48 - dword_108058) ^ 0x3F))] ^ 0xC0]) - 74) + 8 * (byte_F7F34[(byte_F0CE4[v7 - 4] ^ 0x25) - 4] ^ v7) + 27572))(v14);
  return v18;
}

uint64_t WIn9UJ86JKdV4dM(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(&off_103F00 + ((-55 * ((qword_10AB48 + dword_10AB60) ^ 0x3F)) ^ byte_F0BE0[byte_E9AD0[(-55 * ((qword_10AB48 + dword_10AB60) ^ 0x3F))] ^ 0x35]) - 60);
  v9 = -55 * ((qword_10AB48 - *v8) ^ 0x3F);
  v10 = *(&off_103F00 + (byte_E0B58[(byte_F7D34[v9 - 4] ^ 0xC0) - 8] ^ v9) - 86);
  v11 = 2091414217 * (&v13[*(v10 - 4) - *v8] ^ 0x61622C39E7EDC73FLL);
  *v8 = v11;
  *(v10 - 4) = v11;
  LODWORD(v11) = 1658355091 * ((v14 + 283666459 - 2 * (v14 & 0x10E8681B)) ^ 0xAE9852E1);
  v21 = v11 ^ a5;
  v14[0] = a7;
  v14[1] = a6;
  v20 = a2;
  v16 = a1 - v11;
  v19 = v11 ^ 0x9EF648BB;
  v17 = a3;
  v18 = a8;
  v22 = a4;
  LOBYTE(v10) = -55 * ((*(v10 - 4) - *v8) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * (dword_10AB60 ^ 0x3F ^ qword_10AB48)) ^ byte_F7F30[byte_F0CE0[(-55 * (dword_10AB60 ^ 0x3F ^ qword_10AB48))] ^ 0x25]) - 105) + 8 * (byte_F0BE4[(byte_E9ADC[v10 - 12] ^ 0x15) - 4] ^ v10) + 29860))(v14);
  return v15;
}

uint64_t wnnzAiOPdQe2(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = *(&off_103F00 + (byte_F7F34[(byte_F0CE4[(-55 * ((qword_10AB48 + dword_10AB50) ^ 0x3F)) - 4] ^ 0x9B) - 4] ^ (-55 * ((qword_10AB48 + dword_10AB50) ^ 0x3F))) - 80);
  v8 = *(v7 - 4);
  v9 = *(&off_103F00 + ((-55 * ((qword_10AB48 + v8) ^ 0x3F)) ^ byte_F0AE0[byte_E99D0[(-55 * ((qword_10AB48 + v8) ^ 0x3F))] ^ 0xEA]) + 47);
  v10 = (*(v9 - 4) - v8) ^ &v13;
  *(v7 - 4) = 2091414217 * v10 + 0x61622C39E7EDC73FLL;
  *(v9 - 4) = 2091414217 * (v10 ^ 0x61622C39E7EDC73FLL);
  v11 = 2015586863 * ((~v14 & 0xFDA6955980F72870 | v14 & 0x2596AA67F08D78FLL) ^ 0x5E2E672C0157DFA9);
  v14[2] = a5 - v11;
  v14[3] = a1 - v11;
  v19 = a7;
  v15 = a6;
  v16 = v11 + a2;
  v17 = a4;
  v14[0] = v11 - 82184547;
  v14[1] = a3 - v11;
  LOBYTE(v9) = -55 * ((*(v9 - 4) - *(v7 - 4)) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * ((qword_10AB48 + dword_10AB50) ^ 0x3F)) ^ byte_F7F30[byte_F0CE0[(-55 * ((qword_10AB48 + dword_10AB50) ^ 0x3F))] ^ 0x25]) - 105) + 8 * (byte_F0BE4[(byte_E9ADC[v9 - 12] ^ 0x35) - 4] ^ v9) + 28964))(v14);
  return v18;
}

uint64_t lxpgvVMLd0S7uRl(uint64_t a1)
{
  v1 = *(&off_103F00 + (byte_F7F34[(byte_F0CE4[(-55 * ((qword_10AB48 + dword_10AAA0) ^ 0x3F)) - 4] ^ 0x9B) - 4] ^ (-55 * ((qword_10AB48 + dword_10AAA0) ^ 0x3F))) + 131);
  v2 = *(v1 - 4);
  v3 = *(&off_103F00 + (byte_F0BE4[(byte_E9ADC[(-55 * ((qword_10AB48 + v2) ^ 0x3F)) - 12] ^ 0x15) - 4] ^ (-55 * ((qword_10AB48 + v2) ^ 0x3F))) + 88);
  v4 = (*(v3 - 4) + v2) ^ &v6;
  *(v1 - 4) = 2091414217 * v4 + 0x61622C39E7EDC73FLL;
  *(v3 - 4) = 2091414217 * (v4 ^ 0x61622C39E7EDC73FLL);
  v8 = a1;
  v7[1] = (922715317 * ((v7 + 621867052 - 2 * (v7 & 0x2510F02C)) ^ 0x1096D0E3)) ^ 0x995;
  LOBYTE(v3) = -55 * (*(v1 - 4) ^ 0x3F ^ *(v3 - 4));
  (*(*(&off_103F00 + ((-55 * (dword_10AAA0 ^ 0x3F ^ qword_10AB48)) ^ byte_E0C50[byte_F7E30[(-55 * (dword_10AAA0 ^ 0x3F ^ qword_10AB48))] ^ 0xD7]) + 110) + 8 * (byte_E0B58[(byte_F7D34[v3 - 4] ^ 0x10) - 8] ^ v3) + 28756))(v7);
  return v7[0];
}

uint64_t sub_603C(uint64_t a1)
{
  v1 = *(&off_103F00 + ((-55 * (dword_10AAD0 ^ 0x3F ^ qword_10AB48)) ^ byte_F7F30[byte_F0CE0[(-55 * (dword_10AAD0 ^ 0x3F ^ qword_10AB48))] ^ 0x9B]) - 66);
  v2 = -55 * ((qword_10AB48 + *v1) ^ 0x3F);
  v3 = *(&off_103F00 + (byte_E0B58[(byte_F7D34[v2 - 4] ^ 0xC0) - 8] ^ v2) - 86);
  v4 = (*(v3 - 4) ^ *v1) - &v6;
  *v1 = (2091414217 * v4) ^ 0x61622C39E7EDC73FLL;
  *(v3 - 4) = 2091414217 * (v4 ^ 0x61622C39E7EDC73FLL);
  v8 = 475723357 * ((&v7 & 0x75BB0019 | ~(&v7 | 0x75BB0019)) ^ 0x90F8D9F7) - 1834142033;
  v7 = a1;
  LOBYTE(v3) = -55 * ((*(v3 - 4) - *v1) ^ 0x3F);
  return (*(*(&off_103F00 + ((-55 * ((qword_10AB48 - dword_10AAD0) ^ 0x3F)) ^ byte_F7F30[byte_F0CE0[(-55 * ((qword_10AB48 - dword_10AAD0) ^ 0x3F))] ^ 0x9B]) + 18) + 8 * (byte_E0C50[byte_F7E34[v3 - 4] ^ 0xD7] ^ v3) + 29404))(&v7);
}

uint64_t sub_6224(int a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(&off_103F00 + ((-55 * (dword_10AAC8 ^ 0x3F ^ qword_10AB48)) ^ byte_E0C50[byte_F7E30[(-55 * (dword_10AAC8 ^ 0x3F ^ qword_10AB48))] ^ 0xD7]) - 30);
  v8 = *(&off_103F00 + ((-55 * ((qword_10AB48 - *v7) ^ 0x3F)) ^ byte_F0AE0[byte_E99D0[(-55 * ((qword_10AB48 - *v7) ^ 0x3F))] ^ 0xEA]) + 47);
  v9 = &v12[*(v8 - 4) ^ *v7];
  *v7 = 2091414217 * v9 + 0x61622C39E7EDC73FLL;
  *(v8 - 4) = 2091414217 * (v9 ^ 0x61622C39E7EDC73FLL);
  v10 = 1643603977 * ((&v13[0xF38A77FA9505F263] - 2 * (v13 & 0xCE29DFEA5417C98ALL) - 2) ^ 0x1217F2B8BB4CD122);
  v18 = a5;
  v19 = a7;
  v15 = a3 - v10;
  v16 = v10 ^ a4;
  v13[0] = v10 - 179852846;
  v13[1] = v10 ^ a1;
  v14 = a6;
  v20 = v10 + a2;
  LOBYTE(v8) = -55 * ((*(v8 - 4) + *v7) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * ((qword_10AB48 + dword_10AAC8) ^ 0x3F)) ^ byte_F7F30[byte_F0CE0[(-55 * ((qword_10AB48 + dword_10AAC8) ^ 0x3F))] ^ 0x23]) - 33) + 8 * (byte_F0BE4[(byte_E9ADC[v8 - 12] ^ 0x35) - 4] ^ v8) + 29700))(v13);
  return v17;
}

uint64_t sub_6454(uint64_t a1)
{
  v1 = *(&off_103F00 + ((-55 * ((qword_10AB48 + dword_10AB68) ^ 0x3F)) ^ byte_F0BE0[byte_E9AD0[(-55 * ((qword_10AB48 + dword_10AB68) ^ 0x3F))] ^ 0x73]) + 30);
  v2 = *(&off_103F00 + (byte_F7F30[byte_F0CE0[(-55 * ((qword_10AB48 + *v1) ^ 0x3F))] ^ 0xD2] ^ (-55 * ((qword_10AB48 + *v1) ^ 0x3F))) - 96);
  v3 = &v5[*v1 + *(v2 - 4)];
  *v1 = (2091414217 * v3) ^ 0x61622C39E7EDC73FLL;
  *(v2 - 4) = 2091414217 * (v3 ^ 0x61622C39E7EDC73FLL);
  v6[1] = (922715317 * ((((2 * v6) | 0x80DEEF2C) - v6 - 1081046934) ^ 0x75E95759)) ^ 0x995;
  v7 = a1;
  LOBYTE(v2) = -55 * (*v1 ^ 0x3F ^ *(v2 - 4));
  (*(*(&off_103F00 + ((-55 * ((qword_10AB48 + dword_10AB68) ^ 0x3F)) ^ byte_F0AE0[byte_E99D0[(-55 * ((qword_10AB48 + dword_10AB68) ^ 0x3F))] ^ 0x9C]) + 49) + 8 * (v2 ^ byte_F7F30[byte_F0CE0[v2] ^ 0x23]) + 28268))(v6);
  return v6[0];
}

uint64_t X46O5IeS(int a1, uint64_t a2, uint64_t a3)
{
  v3 = *(&off_103F00 + ((-55 * (dword_108078 ^ 0x3F ^ qword_10AB48)) ^ byte_F0BE0[byte_E9AD0[(-55 * (dword_108078 ^ 0x3F ^ qword_10AB48))] ^ 0x73]) + 125);
  v4 = *(&off_103F00 + (byte_F7F30[byte_F0CE0[(-55 * (*v3 ^ qword_10AB48 ^ 0x3F))] ^ 0x25] ^ (-55 * (*v3 ^ qword_10AB48 ^ 0x3F))) - 117);
  v5 = &v8[*v3 + *(v4 - 4)];
  *v3 = 2091414217 * v5 + 0x61622C39E7EDC73FLL;
  *(v4 - 4) = 2091414217 * (v5 ^ 0x61622C39E7EDC73FLL);
  v6 = 1327116359 * ((~v9 & 0x6C796B671F7A3E35 | v9 & 0x93869498E085C1CALL) ^ 0xE89E52DEF9959B6ELL);
  v12 = a3;
  v11 = v6 + a1;
  v9[1] = v6 ^ 0xD21D384A;
  v10 = v6 + a2;
  LOBYTE(v4) = -55 * (*v3 ^ 0x3F ^ *(v4 - 4));
  (*(*(&off_103F00 + ((-55 * ((qword_10AB48 + dword_108078) ^ 0x3F)) ^ byte_F0BE0[byte_E9AD0[(-55 * ((qword_10AB48 + dword_108078) ^ 0x3F))] ^ 0x35]) + 69) + 8 * (v4 ^ byte_F7F30[byte_F0CE0[v4] ^ 0xD2]) + 28492))(v9);
  return v9[0];
}

uint64_t sub_6860(int a1, uint64_t a2, uint64_t a3)
{
  v3 = *(&off_103F00 + ((-55 * ((qword_10AB48 + dword_108080) ^ 0x3F)) ^ byte_F0BE0[byte_E9AD0[(-55 * ((qword_10AB48 + dword_108080) ^ 0x3F))] ^ 0x73]) + 51);
  v4 = *(v3 - 4);
  v5 = *(&off_103F00 + (byte_F7F34[(byte_F0CE4[(-55 * (v4 ^ qword_10AB48 ^ 0x3F)) - 4] ^ 0x23) - 4] ^ (-55 * (v4 ^ qword_10AB48 ^ 0x3F))) - 45);
  v6 = 2091414217 * ((*(v5 - 4) - v4 - &v9) ^ 0x61622C39E7EDC73FLL);
  *(v3 - 4) = v6;
  *(v5 - 4) = v6;
  v7 = 1327116359 * ((2 * (v10 & 0x2D82BB7A774D8528) - v10 + 0x527D448588B27AD2) ^ 0xD69A7D3C6E5DDF89);
  v13 = a3;
  v11 = v7 + a2;
  v12 = v7 + a1;
  v10[1] = v7 ^ 0xD21D384A;
  LOBYTE(v5) = -55 * ((*(v5 - 4) - *(v3 - 4)) ^ 0x3F);
  (*(*(&off_103F00 + ((-55 * (dword_108080 ^ 0x3F ^ qword_10AB48)) ^ byte_F0AE0[byte_E99D0[(-55 * (dword_108080 ^ 0x3F ^ qword_10AB48))] ^ 0x9C]) + 49) + 8 * (byte_F0BE4[(byte_E9ADC[v5 - 12] ^ 0x15) - 4] ^ v5) + 29964))(v10);
  return v10[0];
}

uint64_t sub_6C5C(uint64_t result)
{
  v1 = 1327116359 * ((((2 * result) | 0xF8D3FD32ACA606A0) - result + 0x3960166A9ACFCB0) ^ 0x788EC720B0BCA60BLL);
  v2 = *(result + 16) + v1;
  v3 = *(result + 32) ^ v1;
  v4 = v2 > v3;
  v5 = v2 == v3;
  v6 = v4;
  if ((*result + 1327116359 * ((((2 * result) | 0xACA606A0) - result - 1448280912) ^ 0xB0BCA60B)))
  {
    v5 = v6;
  }

  if (v5)
  {
    v7 = *(result + 8) + 1327116359 * ((((2 * result) | 0xACA606A0) - result - 1448280912) ^ 0xB0BCA60B);
  }

  else
  {
    v7 = *(result + 4) ^ (1327116359 * ((((2 * result) | 0xACA606A0) - result - 1448280912) ^ 0xB0BCA60B));
  }

  *(result + 40) = *(result + 24) ^ (1327116359 * ((((2 * result) | 0xACA606A0) - result - 1448280912) ^ 0xB0BCA60B)) ^ v7;
  return result;
}

uint64_t *sub_6D34(uint64_t *result)
{
  v1 = *result;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

void sub_6DAC(uint64_t a1)
{
  v1 = 1327116359 * (a1 ^ 0xE6EFA55B);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_6EC4()
{
  v6 = v2 - 1;
  *(v0 + v6) = *(v5 + v6) - ((2 * *(v5 + v6)) & 0xEF) - 9;
  return (*(v3 + 8 * (((v6 == 0) * ((v1 - 1445) ^ v4)) ^ v1)))();
}

uint64_t sub_6F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v11 = v5 - 1;
  v12 = &v11[6 * (((v6 ^ 0x598) + 640) ^ 0xC20F6EB2) + 2 + 6 * v5];
  v13 = *v12;
  LODWORD(STACK[0xAE0]) = v12[1];
  v14 = &v11[6 * (v5 - 1039177473) + 2];
  STACK[0xE18] = *(v14 + 8);
  LODWORD(STACK[0x73C]) = *(v14 + 16);
  v15 = *(v9 + (v13 + v8) * v7 + 36);
  LODWORD(STACK[0x61C]) = v15;
  return (*(a5 + 8 * ((3460 * (v15 == v10)) ^ v6)))();
}

uint64_t sub_717C@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v14 = (*(v13 + (v6 + (v4 & 0xF) * v11 - (((v6 + (v4 & 0xF) * v11) * v10) >> 32) * v9)) ^ 0x59 ^ (16 * (*(v13 + v6 + (v4 >> 4) * v11 - (((((v6 + (v4 >> 4) * v11) * v12) >> 32) + ((v6 + (v4 >> 4) * v11 - (((v6 + (v4 >> 4) * v11) * v12) >> 32)) >> 1)) >> 9) * v9) & 0xF))) * v7 + 55778;
  LOBYTE(v14) = *(v2 + (v14 - ((4628198 * v14) >> 32) * v8)) ^ 0xE7;
  v15 = (v14 ^ (32 * v14) ^ (8 * v14)) >> 4;
  *(v13 + v5 * v11 - 1174464774 - (((((v5 * v11 - 1174464774) * v12) >> 32) + ((v5 * v11 - 1174464774 - (((v5 * v11 - 1174464774) * v12) >> 32)) >> 1)) >> 9) * v9) = (16 * *(v13 + (v15 * v11 - (((13995990 * v15) >> 16) >> 8) * v9))) ^ 0x2F;
  return (*(a2 + 8 * (((2 * (v5 + 1 != a1 + 256)) | (16 * (v5 + 1 != a1 + 256))) ^ v3)))();
}

void sub_7280(uint64_t a1)
{
  v1 = *(a1 + 32) + 2015586863 * ((a1 + 120608292 - 2 * (a1 & 0x7305624)) ^ 0x8690A1FD);
  v2 = *(a1 + 40);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v9[0] = 0x25C2123100000082;
  v9[1] = &v11;
  v8[0] = 0x25C2123100000082;
  v8[1] = &v10;
  v15 = v2[1];
  v16 = v2;
  v12 = v3;
  v13 = v9;
  v17 = v1 - 1579770187 * ((&v12 & 0xD2AFE8BA | ~(&v12 | 0xD2AFE8BA)) ^ 0x588E943B) + 1240;
  v14 = v5;
  v6 = *(&off_103F00 + v1 - 2019) - 4;
  (*&v6[8 * (v1 ^ 0x6E1)])(&v12);
  v7 = *v2;
  v12 = v8;
  LODWORD(v13) = v1 + 539293837 * (((&v12 | 0xB9C197D1) - &v12 + (&v12 & 0x463E6828)) ^ 0x4C05D26) - 1322;
  v14 = v7;
  (*&v6[8 * v1 + 11808])(&v12);
  v13 = v4;
  LODWORD(v14) = v1 - 1280404519 * ((((&v12 | 0xF6BCD5A2) ^ 0xFFFFFFFE) - (~&v12 | 0x9432A5D)) ^ 0x9D338530) - 1042;
  (*&v6[8 * v1 + 12616])(&v12);
  __asm { BRAA            X8, X17 }
}

void sub_7498(uint64_t a1)
{
  v1 = 1327116359 * ((a1 - 413031825 - 2 * (a1 & 0xE761A26F)) ^ 0x18E0734);
  v2 = **(a1 + 48) + 1248425197;
  v3 = *(a1 + 32) - v1 + 1056663857;
  v4 = v2 < 0x97DCB5E7;
  v5 = v2 > v3;
  if (v3 < 0x97DCB5E7 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t sub_763C@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_36CFC();
}

uint64_t sub_7644@<X0>(uint64_t a1@<X0>, unsigned int a2@<W2>, uint64_t a3@<X4>, int a4@<W8>)
{
  v8 = v4 < a2;
  v9 = a4 + 1;
  if (v8 == v9 > 0x45D143B2)
  {
    LOBYTE(v8) = v9 + a2 < v4;
  }

  return (*(a3 + 8 * ((54 * ((v8 & ~v6 ^ (v5 - 12)) & 1)) ^ v5)))(a1, v7);
}

uint64_t sub_76B8@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 1999)))(a2);
  v3 = STACK[0x430];
  v4 = STACK[0xBD0];
  *(STACK[0xBD0] + 24) = 0;
  return sub_97DC8(v4, v5, v6, v7, v8, v9, v3);
}

uint64_t sub_7714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[6] = v9[8];
  v10 = v9[9];
  v8[7] = v10;
  v11 = v7 + 498 + (v9[10] ^ 0xFE98E6EE) + ((2 * v9[10]) & 0xFD31CDDC) + 864022618;
  v8[8] = v11;
  v12 = v11 + v10 - 840492268;
  v8[9] = v12;
  return (*(a7 + 8 * (((v12 == 0) * (((v7 - 156) ^ 0x30) - 2835)) ^ (v7 + 498))))();
}

uint64_t sub_7798@<X0>(int a1@<W8>)
{
  v6 = 227 * (v1 ^ 0x25B);
  v7 = (v6 ^ 0x25C211BD) - v4;
  if (v5 > v7)
  {
    v7 = v5;
  }

  *(*(v2 + 8) + 4 * (a1 - 1 + v7)) = *(*(v2 + 8) + 4 * v7 - 4);
  return (*(v3 + 8 * (((v7 < 2) * (((v6 + 1781) | 0x114) ^ 0xBAC)) ^ v6)))();
}

uint64_t sub_780C@<X0>(uint64_t a1@<X4>, int a2@<W6>, int a3@<W8>)
{
  v4 = STACK[0xBB0];
  v5 = (STACK[0xE70] - 0x236BB77C0C72B3F2);
  STACK[0x3B0] = STACK[0x380];
  v6 = *v4;
  v7 = *v5;
  v8 = (a3 + 1091) ^ 0x68C;
  STACK[0xB70] = *(a1 + 8 * a3);
  v9 = STACK[0xD90];
  v10 = (&STACK[0x1520] + STACK[0xD90]);
  STACK[0x470] = v10;
  STACK[0xD90] = v9 + 432;
  LODWORD(STACK[0x3F0]) = v6;
  LODWORD(STACK[0xAE0]) = v6;
  STACK[0xE18] = v7;
  LODWORD(STACK[0xCB4]) = -327609731;
  LODWORD(STACK[0x46C]) = 1209905666;
  STACK[0x1028] = 0;
  LODWORD(STACK[0x73C]) = 1299398907;
  LODWORD(STACK[0x3E0]) = 1532681231;
  LODWORD(STACK[0x420]) = 996030051;
  LODWORD(STACK[0x61C]) = v3 + 1;
  LODWORD(STACK[0x3C0]) = 1645663937;
  LODWORD(STACK[0x3D0]) = v8 + 777735293;
  *v10 = 1039177472;
  v12 = *v10 != (v8 ^ 0x3CF) + 1039177470 || LODWORD(STACK[0x61C]) != (((v8 ^ 0x3CF) * a2) ^ LODWORD(STACK[0x410]));
  return (*(a1 + 8 * (v8 | (16 * v12))))(&STACK[0x1520], 1682696337);
}

uint64_t sub_798C(int8x16_t *a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, unint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11)
{
  v15 = (a11 + v11);
  v16 = vaddq_s8(vsubq_s8(v15[1], vandq_s8(vaddq_s8(v15[1], v15[1]), a5)), a4);
  *a1 = vaddq_s8(vsubq_s8(*v15, vandq_s8(vaddq_s8(*v15, *v15), a5)), a4);
  a1[1] = v16;
  return (*(v13 + 8 * ((31 * (((v12 - 2057900954) & v14 ^ a7) == 64)) ^ (a9 + v12 - 172))))();
}

uint64_t sub_7A34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0xEF) - 9;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((46 * v4) ^ 0x945u)))(0);
}

uint64_t sub_7AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xBC0];
  STACK[0x438] = STACK[0xBC0];
  STACK[0x630] = v8;
  return (*(a7 + 8 * ((((((v7 ^ 0x7D4) + 298850825) & 0xEE2FDDCF) + (((v7 ^ 0x7D4) + 1352368775) & 0xAF6476CE) - 2334) * (v8 == 0)) ^ v7 ^ 0x7D4)))();
}

uint64_t sub_7B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X6>, unsigned int a5@<W7>, uint64_t a6@<X8>)
{
  v14 = a4 + a6;
  v15 = a4 + a6 + 9;
  v16 = __ROR8__(v15 & (a5 ^ 0xFFFFFFFFFFFFFB98), 8);
  v17 = (v13 | (2 * (v16 + 0x4E179E9CD88A77F9))) - (v16 + 0x4E179E9CD88A77F9) + v7;
  v18 = v17 ^ v8;
  v19 = v17 ^ v9;
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xEADDE524A744E387;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xB6A9B6003705FD5CLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v24 + v23 - (v10 & (2 * (v24 + v23))) + v11) ^ v12;
  v26 = a4 - 1;
  v27 = v25 ^ __ROR8__(v23, 61);
  v28 = (__ROR8__(v25, 8) + v27) ^ 0x90FCB26CA27E8B2CLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xD0E02262DF67D69;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x72E8FC861E8794C0;
  v33 = __ROR8__(v32, 8) + (v32 ^ __ROR8__(v31, 61));
  *(v14 + 9) = ((((a1 | (2 * v33)) - v33 + a2) ^ a3) >> (8 * (v15 & 7u))) ^ *(v6 + v26);
  return (*(STACK[0x430] + 8 * ((233 * (v26 == 0)) ^ a5)))();
}

uint64_t sub_7CC8@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v5 = a2 + 127 - v2;
  v6 = v4 + 127 - v2;
  v7.i64[0] = 0xF7F7F7F7F7F7F7F7;
  v7.i64[1] = 0xF7F7F7F7F7F7F7F7;
  v8 = veorq_s8(*(v5 - 31), v7);
  *(v6 - 15) = veorq_s8(*(v5 - 15), v7);
  *(v6 - 31) = v8;
  return (*(a1 + 8 * ((203 * (v2 + 24 * (v3 ^ 0xD3Du) == 480)) ^ v3)))();
}

uint64_t sub_7D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = STACK[0x760];
  v11 = STACK[0x900];
  v12 = STACK[0x1048];
  STACK[0x1388] = &STACK[0x1520] + v7;
  STACK[0xD90] = v8;
  STACK[0xB18] = v11;
  STACK[0x668] = v12;
  v13 = (*(a7 + 8 * (v9 + 901)))();
  v14 = STACK[0x430];
  STACK[0x4B0] = 0;
  STACK[0x3F0] = v10;
  if (v10)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = v15 || v12 == 0;
  return (*(v14 + 8 * ((389 * ((v17 ^ (v9 - 89 + v9 + 19 + 1)) & 1)) ^ v9)))(v13);
}

uint64_t sub_7DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xCA4]) = v9;
  STACK[0xEF8] = v7;
  return sub_26D4C(a7, v8 + 1677);
}

uint64_t sub_7DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *v8;
  STACK[0x538] = 0;
  STACK[0x530] = 0;
  return (*(a7 + 8 * (((2 * (v9 != 0)) | (4 * (v9 != 0))) ^ v7)))();
}

uint64_t sub_7E80@<X0>(unsigned int a1@<W2>, uint64_t a2@<X4>, int a3@<W8>)
{
  v8 = v5 + 468;
  *(v6 + v7 + 8) = (((v5 - 44) ^ 0x29) + *(v6 + v7 + 8) + ((2 * *(v6 + v7 + 8)) & 0x80)) ^ *(v4 + (v6 & 0xF));
  v9 = v3 < a1;
  v10 = a3 + 1;
  if (v9 == v10 > 0x5E9D90CF)
  {
    v9 = v10 + a1 < v3;
  }

  return (*(a2 + 8 * ((((((v8 - 78485995) & 0x4AD9919) + 526) ^ 0x8F4) * v9) ^ v8)))();
}

uint64_t sub_7F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *STACK[0x910];
  STACK[0xA70] = *(a7 + 8 * v7);
  STACK[0xE80] = &STACK[0x9A4];
  STACK[0x5A8] = 0;
  STACK[0xA08] = 0;
  return (*(a7 + 8 * (((v8 != 0) * (((v7 - 258) | 0x11) ^ 0xD5)) ^ (v7 + 2388))))();
}

uint64_t sub_7FC4@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = *(v2 + 8);
  STACK[0x808] = v3;
  return (*(a1 + 8 * (((v3 == 0) * (((a2 ^ 0x15F) - 1485) ^ ((a2 ^ 0x15F) - 2965) ^ 0x672)) ^ a2 ^ 0x15F)))();
}

uint64_t sub_8044()
{
  v3 = (v0 - 1203282009) & 0x47B8AB7E;
  if (((STACK[0x3A0] - v0) | (v0 - STACK[0x3A0])) <= (v3 ^ 0xFFFFF4D9))
  {
    v4 = 0x80000000;
  }

  else
  {
    v4 = -2147483647;
  }

  *v2 = v4 + ~v0;
  (*(v1 + 8 * (v0 ^ 0xE82)))(STACK[0x420]);
  v5 = STACK[0x430];
  v6 = vld1q_dup_f32(v2);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8.i64[0] = 0x100000001;
  v8.i64[1] = 0x100000001;
  v9.i64[0] = *(v2 + 4);
  v9.i32[2] = *(v2 + 12);
  v10 = vextq_s8(v6, v9, 0xCuLL);
  v11 = v9;
  v11.i32[3] = *(v2 + 16);
  v12 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v11, vnegq_f32(v8)), vandq_s8(v10, v7)), 1uLL), *(v2 + 1588));
  v10.i32[0] = *(&STACK[0x1518] + (*(v2 + 4) & 1));
  v10.i32[1] = *(&STACK[0x1518] + (*(v2 + 8) & 1));
  v10.i32[2] = *(&STACK[0x1518] + (*(v2 + 12) & 1));
  v10.i32[3] = *(&STACK[0x1518] + (v11.i8[12] & 1));
  *v2 = veorq_s8(vaddq_s32(vsubq_s32(v12, vandq_s8(vaddq_s32(v12, v12), vdupq_n_s32(0xF614E346))), vdupq_n_s32(0xFB0A71A3)), v10);
  return (*(v5 + 8 * ((v3 - 2268) ^ 0x2C)))();
}

uint64_t sub_8210(uint64_t a1)
{
  v1 = 1643603977 * (a1 ^ 0xEF5B18A8);
  v2 = *(a1 + 48) ^ v1;
  v3 = *(a1 + 16) - v1;
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *a1 ^ v1;
  v8 = *(&off_103F00 + (v2 ^ 0xE220B9)) - 4;
  if (v3 == 2143674941 || v3 == 2143674938)
  {
    __asm { BRAA            X19, X17 }
  }

  v10 = *(a1 + 32);
  v11 = 1280404519 * ((&v14 & 0xF3744015 | ~(&v14 | 0xF3744015)) ^ 0x98FB1087);
  v15 = (v7 + 223102629) ^ v11;
  v17 = v6;
  v19 = v4;
  v20 = v5;
  v18 = -14819342 - v11 + v2 + 3429;
  v14 = v10;
  result = (*&v8[8 * (v2 ^ 0xE22E22)])(&v14);
  *(a1 + 20) = v16;
  return result;
}

uint64_t sub_8544()
{
  result = v1;
  *(v1 + 16) = v2 - ((2 * v2) & 0xC8969002) + 1682696337;
  return result;
}

uint64_t sub_85A8@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v6 = v2 - v3 + a2;
  *&v7 = v6 - 15;
  *(&v7 + 1) = v6 - 16;
  *&STACK[0x390] = v7;
  *&v7 = v6 - 13;
  *(&v7 + 1) = v6 - 14;
  v8.i64[0] = v6 - 7;
  v8.i64[1] = v6 - 8;
  v9 = (v4 ^ 0xD7Au) + v2 - v3 - 2855;
  v10.i64[0] = v6 - 5;
  v10.i64[1] = v6 - 6;
  v11.i64[0] = v6 - 3;
  v11.i64[1] = v6 - 4;
  v12.i64[0] = a2 + v9;
  v12.i64[1] = v6 - 2;
  *&STACK[0x370] = v12;
  *&STACK[0x380] = v7;
  v13 = vandq_s8(v11, *&STACK[0x3F0]);
  v14 = vandq_s8(v12, *&STACK[0x3F0]);
  v15 = vandq_s8(v10, *&STACK[0x3F0]);
  v16 = vandq_s8(v8, *&STACK[0x3F0]);
  v17 = vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL);
  v18 = vsraq_n_u64(vshlq_n_s64(v15, 0x38uLL), v15, 8uLL);
  v19 = vsraq_n_u64(vshlq_n_s64(v13, 0x38uLL), v13, 8uLL);
  v20 = vsraq_n_u64(vshlq_n_s64(v14, 0x38uLL), v14, 8uLL);
  v21 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v20), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v20, *&STACK[0x420]), *&STACK[0x3C0]));
  v22 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v19), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v19, *&STACK[0x420]), *&STACK[0x3C0]));
  v23 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v18), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v18, *&STACK[0x420]), *&STACK[0x3C0]));
  v24 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v17), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v17, *&STACK[0x420]), *&STACK[0x3C0]));
  v25 = *&STACK[0x2F0];
  v26 = *&STACK[0x300];
  v27 = veorq_s8(v24, *&STACK[0x300]);
  v28 = veorq_s8(v23, *&STACK[0x300]);
  v29 = veorq_s8(v23, *&STACK[0x2F0]);
  v30 = veorq_s8(v24, *&STACK[0x2F0]);
  v31 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL), v30);
  v32 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), v29);
  v34 = *&STACK[0x2D0];
  v33 = *&STACK[0x2E0];
  v35 = *&STACK[0x2B0];
  v36 = *&STACK[0x2C0];
  v37 = veorq_s8(vaddq_s64(vsubq_s64(v32, vandq_s8(vaddq_s64(v32, v32), *&STACK[0x2E0])), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v38 = veorq_s8(vaddq_s64(vsubq_s64(v31, vandq_s8(vaddq_s64(v31, v31), *&STACK[0x2E0])), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v39 = vsraq_n_u64(vshlq_n_s64(v29, 3uLL), v29, 0x3DuLL);
  v40 = veorq_s8(v38, vsraq_n_u64(vshlq_n_s64(v30, 3uLL), v30, 0x3DuLL));
  v41 = veorq_s8(v37, v39);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v41);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v40);
  v44 = *&STACK[0x290];
  v45 = *&STACK[0x2A0];
  v46 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v43, v43), *&STACK[0x2B0]), v43), *&STACK[0x2A0]), *&STACK[0x290]);
  v47 = vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL);
  v48 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v42, v42), *&STACK[0x2B0]), v42), *&STACK[0x2A0]), *&STACK[0x290]);
  v49 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v50 = veorq_s8(v46, v47);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v50);
  v53 = veorq_s8(vaddq_s64(v51, v49), *&STACK[0x320]);
  v54 = veorq_s8(v52, *&STACK[0x320]);
  v55 = *&STACK[0x320];
  v56 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v57 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v58 = *&STACK[0x270];
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v56), *&STACK[0x280]);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57), *&STACK[0x280]);
  v61 = *&STACK[0x280];
  v62 = *&STACK[0x3A0];
  v63 = *&STACK[0x3B0];
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, *&STACK[0x3B0]), vorrq_s8(v59, *&STACK[0x270])), *&STACK[0x270]), *&STACK[0x3A0]);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, *&STACK[0x3B0]), vorrq_s8(v60, *&STACK[0x270])), *&STACK[0x270]), *&STACK[0x3A0]);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v68 = *&STACK[0x330];
  v69 = *&STACK[0x340];
  v70 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66), *&STACK[0x340]);
  v71 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67), *&STACK[0x340]);
  v74 = veorq_s8(v73, v72);
  v75 = veorq_s8(v70, v71);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), *&STACK[0x330]);
  v79 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v80 = veorq_s8(v77, *&STACK[0x330]);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82.i64[0] = v6 - 11;
  v82.i64[1] = v6 - 12;
  *&STACK[0x350] = v82;
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), veorq_s8(v78, v79));
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v81);
  v86 = *&STACK[0x250];
  v85 = *&STACK[0x260];
  v87 = *&STACK[0x240];
  v88 = *&STACK[0x310];
  v195.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v83, vandq_s8(vaddq_s64(v83, v83), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v8, 3uLL), *&STACK[0x310])));
  v195.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v84, vandq_s8(vaddq_s64(v84, v84), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v10, 3uLL), *&STACK[0x310])));
  v89 = veorq_s8(v22, v26);
  v90 = veorq_s8(v22, v25);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(v91, vandq_s8(vaddq_s64(v91, v91), v33)), v34), v36);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v94, v94), v35), v94), v45), v44);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v55);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v61);
  v100 = v63;
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, v63), vorrq_s8(v99, v58)), v58), v62);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v69);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v68);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v105.i64[0] = v6 - 9;
  v105.i64[1] = v6 - 10;
  *&STACK[0x360] = v105;
  v108 = vaddq_s64(v107, v106);
  v109 = vsubq_s64(v108, vandq_s8(vaddq_s64(v108, v108), v85));
  v110 = vandq_s8(v105, *&STACK[0x3F0]);
  v195.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v109, v86), v87), vnegq_s64(vandq_s8(vshlq_n_s64(v11, 3uLL), v88)));
  v111 = veorq_s8(v21, v26);
  v112 = veorq_s8(v21, v25);
  v113 = v25;
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v33)), v34), v36);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v117, v117), v35), v117), v45), v44);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v55);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v61);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v122, v100), vorrq_s8(v122, v58)), v58), v62);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v69);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v68);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v130 = vandq_s8(v82, *&STACK[0x3F0]);
  v131 = vaddq_s64(v129, v128);
  v132 = vandq_s8(*&STACK[0x380], *&STACK[0x3F0]);
  v195.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v131, vandq_s8(vaddq_s64(v131, v131), v85)), v86), v87), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), v88)));
  v133 = vandq_s8(*&STACK[0x390], *&STACK[0x3F0]);
  v134 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v138 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v137), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v137, *&STACK[0x420]), *&STACK[0x3C0]));
  v139 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v136), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v136, *&STACK[0x420]), *&STACK[0x3C0]));
  v140 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v135), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v135, *&STACK[0x420]), *&STACK[0x3C0]));
  v141 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v134), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v134, *&STACK[0x420]), *&STACK[0x3C0]));
  v134.i64[0] = vqtbl4q_s8(v195, *&STACK[0x410]).u64[0];
  v195.val[0] = veorq_s8(v141, v26);
  v195.val[1] = veorq_s8(v140, v26);
  v142 = veorq_s8(v140, v25);
  v143 = veorq_s8(v141, v25);
  v195.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[0], 0x38uLL), v195.val[0], 8uLL), v143);
  v195.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[1], 0x38uLL), v195.val[1], 8uLL), v142);
  v195.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v195.val[1], vandq_s8(vaddq_s64(v195.val[1], v195.val[1]), v33)), v34), v36);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v195.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v195.val[0], vandq_s8(vaddq_s64(v195.val[0], v195.val[0]), v33)), v34), v36);
  v144 = veorq_s8(v195.val[0], vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v145 = veorq_s8(v195.val[1], v195.val[2]);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v195.val[0], 0x38uLL), v195.val[0], 8uLL);
  v195.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[1], 0x38uLL), v195.val[1], 8uLL), v145);
  v195.val[1] = vaddq_s64(v195.val[2], v144);
  v195.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195.val[1], v195.val[1]), v35), v195.val[1]), v45), v44);
  v195.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195.val[0], v195.val[0]), v35), v195.val[0]), v45), v44);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v146 = veorq_s8(v195.val[0], vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v147 = veorq_s8(v195.val[1], v195.val[2]);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v195.val[0], 0x38uLL), v195.val[0], 8uLL);
  v195.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[1], 0x38uLL), v195.val[1], 8uLL), v147);
  v195.val[1] = veorq_s8(vaddq_s64(v195.val[2], v146), v55);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v195.val[0] = veorq_s8(v195.val[0], v55);
  v148 = veorq_s8(v195.val[0], vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v149 = veorq_s8(v195.val[1], v195.val[2]);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v195.val[0], 0x38uLL), v195.val[0], 8uLL);
  v195.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[1], 0x38uLL), v195.val[1], 8uLL), v149);
  v195.val[1] = veorq_s8(vaddq_s64(v195.val[2], v148), v61);
  v195.val[0] = veorq_s8(v195.val[0], v61);
  v195.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v195.val[1], *&STACK[0x3B0]), vorrq_s8(v195.val[1], v58)), v58), *&STACK[0x3A0]);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v195.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v195.val[0], *&STACK[0x3B0]), vorrq_s8(v195.val[0], v58)), v58), *&STACK[0x3A0]);
  v150 = veorq_s8(v195.val[0], vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v151 = veorq_s8(v195.val[1], v195.val[2]);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v195.val[0], 0x38uLL), v195.val[0], 8uLL);
  v195.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[1], 0x38uLL), v195.val[1], 8uLL), v151);
  v195.val[1] = veorq_s8(vaddq_s64(v195.val[2], v150), v69);
  v195.val[0] = veorq_s8(v195.val[0], v69);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v152 = veorq_s8(v195.val[0], vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v153 = veorq_s8(v195.val[1], v195.val[2]);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v195.val[0], 0x38uLL), v195.val[0], 8uLL);
  v195.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[1], 0x38uLL), v195.val[1], 8uLL), v153);
  v195.val[1] = veorq_s8(vaddq_s64(v195.val[2], v152), v68);
  v195.val[0] = veorq_s8(v195.val[0], v68);
  v195.val[2] = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v154 = veorq_s8(v195.val[0], vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[1], 0x38uLL), v195.val[1], 8uLL), veorq_s8(v195.val[1], v195.val[2]));
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195.val[0], 0x38uLL), v195.val[0], 8uLL), v154);
  v195.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v155, vandq_s8(vaddq_s64(v155, v155), v85)), v86), v87), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), v88)));
  v195.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v156, vandq_s8(vaddq_s64(v156, v156), v85)), v86), v87), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v88)));
  v157 = veorq_s8(v139, v26);
  v158 = veorq_s8(v139, v113);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(v159, vandq_s8(vaddq_s64(v159, v159), v33)), v34), v36);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v162, v162), v35), v162), v45), v44);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v55);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v61);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, *&STACK[0x3B0]), vorrq_s8(v167, v58)), v58), *&STACK[0x3A0]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v69);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v68);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL)));
  v195.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v173, vandq_s8(vaddq_s64(v173, v173), v85)), v86), v87), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v88)));
  v174 = veorq_s8(v138, v26);
  v175 = veorq_s8(v138, v113);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(v176, vandq_s8(vaddq_s64(v176, v176), v33)), v34), v36);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), v35), v179), v45), v44);
  v181 = vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL);
  v182 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v183 = veorq_s8(v180, v181);
  v184 = veorq_s8(vaddq_s64(v182, v183), v55);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v61);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186, *&STACK[0x3B0]), vorrq_s8(v186, v58)), v58), *&STACK[0x3A0]);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v69);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v68);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL)));
  v195.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v192, vandq_s8(vaddq_s64(v192, v192), v85)), v86), v87), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), v88)));
  v134.i64[1] = vqtbl4q_s8(v195, *&STACK[0x410]).u64[0];
  v193 = vrev64q_s8(v134);
  *(a2 + v9 - 15) = veorq_s8(vextq_s8(v193, v193, 8uLL), *(v5 + v9));
  return (*(a1 + 8 * ((60 * (v3 + 16 != v2)) ^ v4)))();
}

void sub_90D4(uint64_t a1)
{
  v1 = *a1 - 1327116359 * (a1 ^ 0xE6EFA55B);
  v2 = *(a1 + 8);
  v3 = 1556812919 * (((&v5 ^ 0x5C52A441 | 0x3453714) - (&v5 ^ 0x5C52A441) + ((&v5 ^ 0x5C52A441) & 0xFCBAC8E9)) ^ 0x594FF36);
  v6 = v3 ^ 0x7DA5010D;
  v9 = v1 + v3 - 792;
  v7 = v2 + 48;
  v5 = v2;
  v4 = *(&off_103F00 + v1 - 1013) - 4;
  (*&v4[8 * v1 + 20880])(&v5);
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_91E8(_DWORD *result)
{
  v1 = 1658355091 * ((result - 1443055406 - 2 * (result & 0xA9FCB8D2)) ^ 0x178C8228);
  v2 = *(&off_103F00 + (*result - v1 - 746541452));
  v3 = result[2];
  v4 = result[1] - v1;
  v5 = result[4] - v1;
  v2[2] = result[3] ^ v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v3 - v1;
  return result;
}

uint64_t sub_9260(uint64_t a1)
{
  v1 = 772352333 * (((a1 | 0x15865C0A) - a1 + (a1 & 0xEA79A3F5)) ^ 0xF1C454B1);
  v2 = *(a1 + 16) - v1;
  v3 = *a1 ^ v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 633475633;
  v5 = v4 - 633475633 < 0;
  v7 = 633475633 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_103F00 + v2 - 857) + 8 * ((((v3 - 815767158) >= (4 * v7)) * ((v2 ^ 0x8C4) - 2826)) ^ v2) - 4))();
}

uint64_t sub_9320@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0xEEEEEEEEEEEEEEEELL;
  v5.i64[1] = 0xEEEEEEEEEEEEEEEELL;
  v6.i64[0] = 0xF7F7F7F7F7F7F7F7;
  v6.i64[1] = 0xF7F7F7F7F7F7F7F7;
  v7 = ((2 * v3) ^ 0x762u) - 3657 + v2;
  v8 = *(a1 + v7 - 15);
  v9 = *(a1 + v7 - 31);
  v10 = v1 + v7;
  *(v10 - 15) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v5)), v6);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v5)), v6);
  return (*(v4 + 8 * ((112 * ((v2 & 0xFFFFFFE0) == 32)) ^ v3)))();
}

uint64_t sub_93A0@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v5 = v4 - 1;
  *(a2 + v5) = *(v2 + v5) ^ 0xF7;
  return (*(a1 + 8 * ((26 * (v5 == 0)) ^ (v3 - 1889))))();
}

uint64_t sub_93D0@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  *(v39 - 208) = v40;
  v41 = *(v39 - 176) - 1585;
  HIDWORD(v463) = (*(v39 - 176) - 910) | 0x80;
  v42 = *(&off_103F00 + (v41 ^ 0x249));
  v43 = *(&off_103F00 + (v41 ^ 0x2FD));
  v44 = *(v43 + (a1[7] ^ 0x65));
  v539 = v37;
  v45 = (v44 ^ 0xFFFFFE03) & (((*(v42 + (a1[4] ^ 0x26)) ^ 0xCCCCCCCC) << 24) ^ 0xEE01F237) | v44 & (HIDWORD(v463) ^ 0x55C);
  v46 = *(&off_103F00 + *(v39 - 176) - 1967) - 4;
  v47 = v46[a1[14] ^ 0x77] - (((a1[14] ^ 0x2B) + 56) ^ ((a1[14] ^ 0xD7) - 52) ^ ((a1[14] ^ 0x60) + 125)) - 79;
  v48 = v47 & 0xC5 ^ 0xE;
  v49 = v47 ^ (2 * ((v47 ^ 0x48) & (2 * ((v47 ^ 0x48) & (2 * ((v47 ^ 0x48) & (2 * ((v47 ^ 0x48) & (2 * (v47 & (2 * (v47 & (2 * v47) & 0x12 ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48));
  v50 = v49 << 8;
  v51 = v46[a1[6] ^ 0x8DLL] - (((a1[6] ^ 0x8F) - 106) ^ ((a1[6] ^ 0xA8) - 77) ^ ((a1[6] ^ 0x41) + 92)) - 20;
  v52 = v51 & 0x8A | 0x11;
  v53 = v52 ^ v51 & 0x26;
  v54 = (v51 ^ (2 * ((v51 ^ 0xA) & (2 * ((v51 ^ 0xA) & (2 * ((v51 ^ 0xA) & (2 * ((v51 ^ 0xA) & (2 * (((2 * (v51 & (2 * v52) ^ v53)) ^ 4) & (v51 ^ 0xA) ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53))) << 8;
  v55 = (v54 ^ 0xFFCE83FF) & (v45 ^ 0x94CF49D2);
  v56 = v54 & 0x44444444;
  v57 = *(v42 + (a1[12] ^ 0xD2));
  v58 = ((v57 << 24) ^ 0x43DA9049) & ~v50;
  v59 = v50 & 0x6F00;
  v60 = *(&off_103F00 + (v41 ^ 0x2FB));
  v61 = *(v60 + (a1[9] ^ 0xD8));
  v62 = v58 | v59;
  v63 = ((v61 >> 4) | (16 * v61)) ^ 0x5F;
  v64 = (((*(v42 + (a1[8] ^ 0xDFLL)) << 24) ^ 0x4EFB43B6) & ~(v63 << 16) & 0xFFFBFFFF | (((v63 >> 2) & 1) << 18)) ^ 0xA6FB43B6;
  v65 = *(v60 + (a1[13] ^ 0x53));
  v66 = ((*(v42 + (*a1 ^ 0xE8)) ^ 0xB6) << 24) | ((((a1[2] ^ 0xE1) + v46[a1[2] ^ 0xF5] - 6) ^ 0x37) << 8);
  HIDWORD(v67) = v65 ^ 0xA;
  LODWORD(v67) = (v65 ^ 0x10) << 24;
  LOBYTE(v42) = v67 >> 28;
  v68 = v66 | *(v43 + (a1[3] ^ 0xB3)) ^ 0x34;
  v69 = *(v60 + (a1[5] ^ 0xE9));
  HIDWORD(v67) = v69 ^ 0xAAAAAAAA;
  LODWORD(v67) = (v69 ^ 0x10) << 24;
  v70 = a1[15] ^ 0x60;
  v71 = ((v67 >> 28) ^ 0x1E) << 16;
  v72 = ((v56 | v55) ^ 0xC622C489) & ~v71;
  *(v39 - 248) = v72;
  v73 = (v72 | v71 & 0x130000) ^ 0xBAEC7B7A;
  *(v39 - 256) = v73;
  v74 = *(v43 + v70);
  LODWORD(v43) = *(v43 + (a1[11] ^ 0x83));
  v75 = v64 & 0xFFFF00FF | ((((a1[10] ^ 0x95) + v46[a1[10] ^ 0x81] - 6) ^ 0x87) << 8);
  v76 = *(v60 + (a1[1] ^ 0xD8));
  HIDWORD(v67) = v76 ^ 0xAAAAAAAA;
  LODWORD(v67) = (v76 ^ 0x10) << 24;
  v77 = v75 | v43 ^ 0xAB;
  LODWORD(v46) = ((v74 ^ 0x34) & 0x2C | ((v42 ^ 0x32) << 16) & 0xC9002C) ^ 0xEFAE524D ^ (v62 ^ 0xCDECF19A) & (((v74 ^ 0x34) & 0xFF00FFFF | ((v42 ^ 0x32) << 16)) ^ 0xFFFFFFDB);
  v78 = (v68 & 0xFF00FFFF | (((v67 >> 28) ^ 0xFE) << 16)) ^ 0x6C;
  v79 = *(&off_103F00 + v41 - 521);
  v80 = *(&off_103F00 + (v41 ^ 0x2A4)) - 4;
  v81 = (*&v80[4 * (v42 ^ 0xE0)] - 621760958) ^ (*(v79 + 4 * (v49 ^ 0x81u)) - 493440870);
  *(v39 - 128) = v41;
  v82 = *(&off_103F00 + v41 - 588);
  v83 = (v81 - ((2 * v81) & 0xA0BCB528) - 799122796) ^ *(v82 + 4 * (v74 ^ 0xEF));
  v84 = *(&off_103F00 + v41 - 549) - 4;
  v85 = *&v84[4 * (v57 ^ 0xE7)];
  *(v39 - 220) = v78;
  *(v39 - 216) = v46;
  LODWORD(v43) = v85 ^ v78 ^ (v83 - ((2 * v83) & 0xD056A520) - 399814000);
  v86 = v43 ^ v73;
  *(v39 - 120) = v43;
  *(v39 - 124) = v43 ^ v73 ^ v77;
  v87 = v43 ^ v73 ^ v77 ^ v46;
  v550 = BYTE2(v87) ^ 0x4F;
  v552 = ((v87 ^ 0x7330) >> 8);
  v88 = v87 ^ 0xB94F7330;
  LODWORD(v46) = (*(v79 + 4 * (v552 ^ 0xB2u)) - 493440870) ^ (*&v80[4 * (((v87 ^ 0xB94F7330) >> 16) ^ 0x4A)] - 621760958);
  v558 = HIBYTE(v88);
  v555 = v87 ^ 0xB94F7330;
  v547 = v87;
  v89 = *(v82 + 4 * (v87 ^ 0x75u));
  v90 = (v46 - ((2 * v46) & 0xD056A520) - 399814000) ^ *&v84[4 * (HIBYTE(v88) ^ 0x86)] ^ v43;
  v91 = ~v89 & 0x40000;
  if ((v90 & v91) != 0)
  {
    v91 = -v91;
  }

  v560 = (v91 + v90) ^ v89 & 0xFFFBFFFF;
  *(v39 - 212) = v77;
  v92 = v560 ^ 0xD05A5A94 ^ v77 ^ v88;
  *(v39 - 180) = v560 ^ 0xD05A5A94 ^ v77;
  v563 = ((v92 ^ 0xA03A6FBC) >> 16);
  v93 = *&v80[4 * (v563 ^ 0x4A)];
  *(v39 - 116) = 0;
  v516 = v560 ^ 0x94 ^ v77 ^ v88;
  v94 = (v93 - ((2 * v93 - 1243521916) & 0xA0BCB528) - 1420883754) ^ *(v82 + 4 * (v516 ^ 0xF9u));
  *(v39 - 144) = (v92 ^ 0xA03A6FBC) >> 24;
  v499 = BYTE1(v92) ^ 0x6F;
  v95 = (*(v79 + 4 * (((v92 ^ 0x6FBC) >> 8) ^ 0xB2u)) - 493440870) ^ *&v84[4 * (((v92 ^ 0xA03A6FBC) >> 24) ^ 0x86)];
  *(v39 - 132) = v560 ^ 0xD05A5A94;
  v96 = v95 ^ v560 ^ 0xD05A5A94 ^ (v94 - ((2 * v94) & 0xD056A520) - 399814000);
  *(v39 - 240) = v96;
  v97 = v96 ^ 0x334BC4A1;
  *(v39 - 176) = v560 ^ 0xD05A5A94 ^ v86;
  v98 = v96 ^ 0x334BC4A1 ^ v560 ^ 0xD05A5A94 ^ v86;
  *(v39 - 224) = v98;
  v99 = v97;
  v486 = v97;
  v100 = v98 ^ 0xA1A69901;
  v459 = v98 ^ 0xA1A69901 ^ v560 ^ 0xD05A5A94 ^ v77;
  v101 = v459 ^ 0x1971AB1D ^ v92 ^ 0xA03A6FBC;
  v434 = v459 ^ 0xAB1D;
  v491 = ((v101 ^ 0x412C) >> 8);
  v102 = *(v79 + 4 * (v491 ^ 0xB2u));
  v103 = (v101 ^ 0x198412C) >> 24;
  *(v39 - 152) = v103;
  v104 = (v102 - ((2 * v102 - 986881740) & 0xD056A520) - 893254870) ^ *&v84[4 * (v103 ^ 0x86)];
  v489 = v459 ^ 0x1D ^ v92 ^ 0xBC;
  v466 = ((v101 ^ 0x198412C) >> 16);
  v531 = (*&v80[4 * (v466 ^ 0x4A)] - 621760958) ^ *(v82 + 4 * (v489 ^ 0x69u)) ^ v99 ^ (v104 - ((2 * v104) & 0xA0BCB528) - 799122796) ^ v100;
  v105 = (*&v80[4 * (v466 ^ 0x4A)] - 621760958) ^ *(v82 + 4 * (v489 ^ 0x69u)) ^ v99 ^ (v104 - ((2 * v104) & 0xA0BCB528) - 799122796);
  v527 = v105;
  v530 = v531 ^ v459 ^ 0x1971AB1D;
  v545 = v101 ^ 0x2C ^ v530;
  v106 = v101 ^ 0x198412C ^ v530 ^ 0x50927F20;
  v534 = BYTE1(v106);
  v107 = *(v79 + 4 * (BYTE1(v106) ^ 0xB2u));
  *(v39 - 160) = HIBYTE(v106);
  v540 = BYTE2(v106);
  v108 = (*&v80[4 * (BYTE2(v106) ^ 0x4A)] - 621760958) ^ *&v84[4 * (HIBYTE(v106) ^ 0x86)] ^ (v107 - ((2 * v107 - 986881740) & 0xD056A520) - 893254870);
  *(v39 - 192) = v38;
  v109 = (v108 - ((2 * v108) & 0xA0BCB528) - 799122796) ^ *(v82 + 4 * (v106 ^ 0x45u));
  v436 = v109 ^ v100;
  v110 = v109 ^ v100 ^ 0x540A3E0C;
  v111 = v110 ^ v530 ^ 0x507F2280;
  *(v39 - 232) = v111;
  v112 = v110;
  v113 = v106 ^ v111;
  v478 = ((v113 ^ 0x5DA0) >> 8);
  v464 = ((v113 ^ 0xED5DA0) >> 16);
  v114 = (*&v80[4 * (v464 ^ 0x4A)] - 621760958) ^ (*(v79 + 4 * (v478 ^ 0xB2u)) - 493440870);
  *(v39 - 156) = HIBYTE(v113);
  v115 = (v114 - ((2 * v114) & 0xD056A520) - 399814000) ^ *&v84[4 * (HIBYTE(v113) ^ 0x86)];
  LODWORD(v463) = v109 ^ v105;
  v439 = v113;
  v116 = v109 ^ v105 ^ *(v82 + 4 * (v113 ^ 0xE5u)) ^ (v115 - ((2 * v115) & 0xA0BCB528) - 799122796);
  v117 = v116 ^ v530 ^ 0x507F2280;
  v505 = v117 ^ v113 ^ 0xED5DA0;
  v118 = ((v505 ^ 0x4634E621u) >> 16);
  v119 = *&v80[4 * (v118 ^ 0x4A)];
  v120 = (v119 - ((2 * v119 - 1243521916) & 0xA0BCB528) - 1420883754) ^ *(v82 + 4 * (v505 ^ 0x64u));
  v508 = (v505 ^ 0x4634E621u) >> 24;
  v121 = ((v505 ^ 0xE621) >> 8);
  v122 = (*(v79 + 4 * (v121 ^ 0xB2u)) - 493440870) ^ *&v84[4 * (v508 ^ 0x86)] ^ (v120 - ((2 * v120) & 0xD056A520) - 399814000);
  v503 = v122 ^ v112;
  v123 = v112;
  v469 = v112;
  v480 = v122 ^ v112 ^ 0x7AD9BB81 ^ v117;
  v124 = v122 ^ v112 ^ 0x7AD9BB81;
  v474 = v124;
  v482 = v480 ^ 0xD4000000 ^ v505 ^ 0x4634E621;
  v524 = ((v480 ^ v505 ^ 0xE621 ^ 0xE621) >> 8);
  v125 = *(v79 + 4 * (v524 ^ 0xB2u));
  v521 = ((v482 ^ 0x9234E621) >> 16);
  v126 = (*&v80[4 * (v521 ^ 0x4A)] - 621760958) ^ *(v82 + 4 * ((v480 ^ v505 ^ 0x21) ^ 0x64u)) ^ (v125 - 2 * ((v125 + 1654042778) & 0x505E5A95 ^ v125 & 1) - 1292563666);
  v127 = v126 - ((2 * v126) & 0xD056A520) - 399814000;
  v128 = v122 ^ v116;
  v494 = v122 ^ v116;
  v129 = (v482 ^ 0x9234E621) >> 24;
  *(v39 - 164) = v129;
  v130 = v128 ^ *&v84[4 * (v129 ^ 0x86)] ^ v127;
  v131 = v130 ^ v124;
  v132 = v130 ^ v124 ^ v480 ^ 0xD4000000;
  v133 = v132 ^ v482 ^ 0x9234E621 ^ 0x17ED5DA0;
  v134 = (v130 ^ v124 ^ v480 ^ v480 ^ v505 ^ 0x21 ^ 0x21);
  v528 = HIBYTE(v133);
  v135 = BYTE2(v133);
  v136 = BYTE1(v133);
  v137 = *&v84[4 * (HIBYTE(v133) ^ 0x86)] ^ *(v82 + 4 * (v134 ^ 0xE5u)) ^ (*(v79 + 4 * (BYTE1(v133) ^ 0xB2u)) - 493440870) ^ v130 ^ (*&v80[4 * ((BYTE2(v133) - ((v133 >> 15) & 0xEE) + 119) ^ 0x3D)] - 621760958);
  v443 = v137 ^ 0x64750804 ^ v131;
  v449 = v137 ^ 0x64750804;
  *(v39 - 168) = v443 ^ 0x85D9BB81;
  v543 = v132 ^ 0x7F9079EA;
  v138 = v443 ^ 0x85D9BB81 ^ v132 ^ 0x7F9079EA;
  *(v39 - 228) = v138;
  v139 = v138 ^ v133;
  v451 = v139;
  v140 = *(v82 + 4 * (v139 ^ 0xFu));
  v141 = v139 ^ 0x687D244A;
  v537 = v139 ^ 0x687D244A;
  v142 = (v139 ^ 0x687D244Au) >> 24;
  *(v39 - 172) = v142;
  v454 = BYTE2(v141);
  v452 = BYTE1(v141);
  v444 = v137 ^ 0x38750804;
  *(v39 - 196) = v140 ^ *&v84[4 * (v142 ^ 0x86)] ^ (*&v80[4 * (BYTE2(v141) ^ 0x4A)] - 621760958) ^ (*(v79 + 4 * (BYTE1(v141) ^ 0xB2u)) - 493440870) ^ v137 ^ 0x64750804 ^ 0x38750804;
  v143 = *(v39 - 128);
  v144 = *(&off_103F00 + (v143 ^ 0x2E7)) - 12;
  v145 = *&v144[4 * (v547 ^ 0xAB)];
  HIDWORD(v146) = v145 ^ 0xBFCB321;
  LODWORD(v146) = v145 ^ 0x20000000;
  v147 = *(&off_103F00 + (v143 ^ 0x2FE)) - 12;
  v148 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x67D192E0) - 1276589712) ^ *&v147[4 * (v550 ^ 0xEF)];
  v149 = *&v144[4 * (*(v39 - 124) ^ 0x99)];
  HIDWORD(v146) = v149 ^ 0xBFCB321;
  LODWORD(v146) = v149 ^ 0x20000000;
  v150 = *(v39 - 124) ^ 0xB9DC7330;
  v151 = *(&off_103F00 + (v143 ^ 0x20E)) - 8;
  v471 = HIBYTE(v150);
  v152 = *&v151[4 * (HIBYTE(v150) ^ 0x38)] ^ *&v147[4 * BYTE2(v150)] ^ 0x1BA3A969 ^ (v146 >> 28);
  v519 = v552 ^ 0x9A;
  v153 = *&v144[4 * (v86 ^ 0x70)];
  v553 = v148 - ((2 * v148) & 0x72B9F3F0);
  HIDWORD(v146) = v153 ^ 0xBFCB321;
  LODWORD(v146) = v153 ^ 0x20000000;
  v476 = v86 ^ 0x7DA63AC;
  v154 = *(&off_103F00 + v143 - 542);
  v155 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (BYTE1(v86) ^ 0x1Eu));
  v156 = *(v39 - 120);
  v157 = *&v144[4 * (v156 ^ 0xD8)];
  HIDWORD(v146) = v157 ^ 0xBFCB321;
  LODWORD(v146) = v157 ^ 0x20000000;
  v509 = v155 - ((2 * v155) & 0x67D192E0);
  v473 = (v156 ^ 0xEB4322A1) >> 24;
  v158 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x5096C032) - 1471455207) ^ *&v151[4 * (v473 ^ 0xFD)];
  v159 = (v158 - ((2 * v158) & 0x67D192E0) - 1276589712) ^ *&v147[4 * ((v156 ^ 0xEB4322A1) >> 16)];
  v548 = v558 ^ 0x45;
  v559 = v558 - ((v555 >> 23) & 0x32);
  v556 = v159 - ((2 * v159) & 0x72B9F3F0);
  v160 = *&v144[4 * (v134 ^ 0xF)];
  HIDWORD(v146) = v160 ^ 0xBFCB321;
  LODWORD(v146) = v160 ^ 0x20000000;
  v161 = v146 >> 28;
  v162 = *&v144[4 * (v132 ^ 0xEB)];
  HIDWORD(v146) = v162 ^ 0xBFCB321;
  LODWORD(v146) = v162 ^ 0x20000000;
  v163 = v146 >> 28;
  v164 = *&v144[4 * (v130 ^ 0xC7)];
  HIDWORD(v146) = v164 ^ 0xBFCB321;
  LODWORD(v146) = v164 ^ 0x20000000;
  v515 = v132 ^ 0x221FE6A0;
  v165 = (v163 - ((2 * v163) & 0x67D192E0) - 1276589712) ^ *&v147[4 * ((v132 ^ 0x221FE6A0) >> 16)];
  v166 = (v161 - ((2 * v161) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (v136 ^ 0xDu));
  v167 = (v146 >> 28) - ((2 * (v146 >> 28)) & 0x72B9F3F0);
  v168 = (v165 - ((2 * v165) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (BYTE1(v132) ^ 0x51u));
  v169 = *&v144[4 * (v131 ^ 0xF7)];
  HIDWORD(v146) = v169 ^ 0xBFCB321;
  LODWORD(v146) = v169 ^ 0x20000000;
  v170 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (BYTE1(v131) ^ 0xE5u));
  v171 = (v170 - ((2 * v170) & 0x5096C032) - 1471455207) ^ *&v151[4 * (HIBYTE(v131) ^ 0x68)];
  v462 = v171 - ((2 * v171) & 0x67D192E0);
  v172 = *&v147[4 * (v135 ^ 0x71)] ^ (v166 - ((2 * v166) & 0x67D192E0) - 1276589712);
  v173 = *&v144[4 * ((v116 ^ v530 ^ 0x80) ^ 0x58)];
  v174 = *(v154 + 4 * (BYTE1(v130) ^ 0x6Au)) ^ (((v130 ^ 0xEC04DD81) >> 24) - (((v130 ^ 0xEC04DD81) >> 23) & 0x32) - 1471455207) ^ *&v151[4 * (((v130 ^ 0xEC04DD81) >> 24) ^ 0xDC)] ^ (v167 - 1185089032);
  HIDWORD(v146) = v173 ^ 0xBFCB321;
  LODWORD(v146) = v173 ^ 0x20000000;
  v175 = v146 >> 28;
  v501 = v168 - ((2 * v168) & 0x5096C032);
  v176 = *&v147[4 * (v118 ^ 0xE2)];
  v456 = v174 - ((2 * v174) & 0x67D192E0);
  v177 = *(v154 + 4 * (v121 ^ 0x2Eu));
  v496 = v172 - ((2 * v172) & 0x5096C032);
  v446 = v116 ^ v123;
  v178 = *&v144[4 * ((v116 ^ v123) ^ 8)];
  HIDWORD(v146) = v178 ^ 0xBFCB321;
  LODWORD(v146) = v178 ^ 0x20000000;
  v512 = v146 >> 28;
  v485 = (v177 ^ v176 ^ 0xAB43088) - 2 * ((v177 ^ v176 ^ 0xAB43088) & 0x284B601D ^ (v177 ^ v176) & 4);
  v179 = *&v144[4 * (v116 ^ 0xA4)];
  HIDWORD(v146) = v179 ^ 0xBFCB321;
  LODWORD(v146) = v179 ^ 0x20000000;
  v458 = v117 ^ 0xC0E48FE7;
  v442 = BYTE2(v116) ^ 0xD9;
  v513 = (v116 ^ 0x46D9BB1B) >> 24;
  v180 = (v175 - ((2 * v175) & 0x67D192E0) - 1276589712) ^ *&v147[4 * ((v117 ^ 0xC0E48FE7) >> 16)];
  v181 = *&v151[4 * (v513 ^ 0xFF)] ^ *(v154 + 4 * (BYTE1(v116) ^ 0xF0u)) ^ 0x111799E1 ^ (v146 >> 28);
  v182 = (v180 - ((2 * v180) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (BYTE1(v117) ^ 0x38u));
  v183 = *&v144[4 * (v505 ^ 0x46)];
  HIDWORD(v146) = v183 ^ 0xBFCB321;
  LODWORD(v146) = v183 ^ 0x20000000;
  v506 = v146 >> 28;
  v447 = v181 - ((2 * v181) & 0x67D192E0);
  v425 = v459 ^ 0x184CEA31;
  v184 = *&v144[4 * (*(v39 - 224) ^ 0xC9)];
  v460 = v182 - ((2 * v182) & 0x5096C032);
  HIDWORD(v146) = v184 ^ 0xBFCB321;
  LODWORD(v146) = v184 ^ 0x20000000;
  v185 = *&v147[4 * (BYTE2(*(v39 - 224)) ^ 0xA3)] ^ *(v154 + 4 * (BYTE1(*(v39 - 224)) ^ 0x16u)) ^ (v146 >> 28);
  v186 = *&v144[4 * (*(v39 - 240) ^ 0x92)];
  HIDWORD(v146) = v186 ^ 0xBFCB321;
  LODWORD(v146) = v186 ^ 0x20000000;
  LODWORD(v457) = (v185 ^ 0xAB43088) - 2 * ((v185 ^ 0xAB43088) & 0x284B601F ^ v185 & 6);
  v187 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (BYTE1(*(v39 - 240)) ^ 0x10u));
  v188 = v489 ^ 0x8B;
  v490 = HIBYTE(v486);
  v189 = *&v144[4 * v188];
  v190 = (v187 - ((2 * v187) & 0x5096C032) - 1471455207) ^ *&v151[4 * (HIBYTE(v486) ^ 0xD5)];
  HIDWORD(v146) = v189 ^ 0xBFCB321;
  LODWORD(v146) = v189 ^ 0x20000000;
  v191 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x5096C032) - 1471455207) ^ *&v151[4 * (*(v39 - 152) ^ 0x55)];
  v192 = *&v144[4 * (v434 ^ 0x5C)];
  HIDWORD(v146) = v192 ^ 0xBFCB321;
  LODWORD(v146) = v192 ^ 0x20000000;
  v487 = HIBYTE(v425);
  v193 = *&v151[4 * (HIBYTE(v425) ^ 0x43)] ^ *(v154 + 4 * (HIBYTE(v434) ^ 0x9Du)) ^ 0x111799E1 ^ (v146 >> 28);
  v432 = v193 - ((2 * v193) & 0x67D192E0);
  v194 = (v191 - ((2 * v191) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (v491 ^ 0x16u));
  v429 = v190 - ((2 * v190) & 0x67D192E0);
  v423 = v466 ^ 0xD4;
  v431 = v194 - ((2 * v194) & 0x67D192E0);
  v195 = *&v144[4 * (v436 ^ 0xAC)];
  HIDWORD(v146) = v195 ^ 0xBFCB321;
  LODWORD(v146) = v195 ^ 0x20000000;
  v196 = v146 >> 28;
  v197 = *&v144[4 * (*(v39 - 232) ^ 1)];
  HIDWORD(v146) = v197 ^ 0xBFCB321;
  LODWORD(v146) = v197 ^ 0x20000000;
  v198 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x67D192E0) - 1276589712) ^ *&v147[4 * (BYTE2(*(v39 - 232)) ^ 0xF6)];
  v199 = (v196 - ((2 * v196) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (BYTE1(v436) ^ 0x29u));
  v200 = *&v144[4 * (v439 ^ 9)];
  HIDWORD(v146) = v200 ^ 0xBFCB321;
  LODWORD(v146) = v200 ^ 0x20000000;
  v201 = *&v147[4 * (v464 ^ 0x33)] ^ *&v151[4 * (*(v39 - 156) ^ 0x33)] ^ (v146 >> 28);
  v202 = *&v144[4 * (v463 ^ 0x4E)];
  HIDWORD(v146) = v202 ^ 0xBFCB321;
  LODWORD(v146) = v202 ^ 0x20000000;
  v435 = v463 ^ 0x53E0000;
  v203 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x67D192E0) - 1276589712) ^ *&v147[4 * ((v463 ^ 0x53E0000) >> 16)];
  v204 = (v203 - ((2 * v203) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (BYTE1(v463) ^ 0x18u));
  v440 = v204 - ((2 * v204) & 0x5096C032);
  v205 = *&v147[4 * (BYTE2(v436) ^ 0x98)] ^ (v199 - ((2 * v199) & 0x67D192E0) - 1276589712);
  v492 = HIBYTE(*(v39 - 232));
  v206 = *&v151[4 * (v492 ^ 1)] ^ (v198 - ((2 * v198) & 0x5096C032) - 1471455207);
  v428 = v206 - ((2 * v206) & 0x72B9F3F0);
  v207 = *(v39 - 180);
  v208 = *&v144[4 * (v207 ^ 0x78)];
  v426 = (v201 ^ 0x1BA3A969) - 2 * ((v201 ^ 0x1BA3A969) & 0x395CF9FE ^ v201 & 6);
  HIDWORD(v146) = v208 ^ 0xBFCB321;
  LODWORD(v146) = v208 ^ 0x20000000;
  v209 = v146 >> 28;
  v437 = v205 - ((2 * v205) & 0x5096C032);
  v210 = *&v144[4 * (*(v39 - 132) ^ 0x95)];
  v211 = v560 ^ 0xB3F34DB4;
  HIDWORD(v146) = v210 ^ 0xBFCB321;
  LODWORD(v146) = v210 ^ 0x20000000;
  v212 = (v209 - ((2 * v209) & 0x5096C032) - 1471455207) ^ *&v151[4 * (HIBYTE(v207) ^ 0x98)];
  v213 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x67D192E0) - 1276589712) ^ *&v147[4 * ((v560 ^ 0xB3F34DB4) >> 16)];
  v214 = *&v147[4 * (v563 ^ 0x1C)] ^ *&v151[4 * (*(v39 - 144) ^ 0x79)];
  v417 = v499 ^ 0x4C;
  v561 = v213 - ((2 * v213) & 0x72B9F3F0);
  v215 = *&v144[4 * (*(v39 - 176) ^ 0xE4)];
  v467 = (v214 ^ 0x1BA3A969) - 1185089032 - 2 * ((v214 ^ 0x1BA3A969) & 0x395CF9FE ^ v214 & 6);
  HIDWORD(v146) = v215 ^ 0xBFCB321;
  LODWORD(v146) = v215 ^ 0x20000000;
  v465 = v146 >> 28;
  v216 = *&v147[4 * (BYTE2(v207) ^ 0xC)] ^ (v212 - ((2 * v212) & 0x67D192E0) - 1276589712);
  v564 = HIBYTE(v211) - ((v211 >> 23) & 0x32);
  v422 = HIBYTE(v211) ^ 0xDC;
  v217 = *&v144[4 * (v516 ^ 0xDC)];
  HIDWORD(v146) = v217 ^ 0xBFCB321;
  LODWORD(v146) = v217 ^ 0x20000000;
  LODWORD(v463) = v146 >> 28;
  v218 = *&v144[4 * (v443 ^ 0x49)];
  v420 = v216 - ((2 * v216) & 0x72B9F3F0);
  HIDWORD(v146) = v218 ^ 0xBFCB321;
  LODWORD(v146) = v218 ^ 0x20000000;
  v219 = *(v39 - 228);
  v517 = (v219 ^ 0x68A93B4Au) >> 24;
  v220 = *&v151[4 * (v517 ^ 0xA1)] ^ *&v147[4 * ((v219 ^ 0x68A93B4Au) >> 16)];
  v221 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x67D192E0) - 1276589712) ^ *&v147[4 * (BYTE2(v443) ^ 0xAE)];
  v416 = (v220 ^ 0x1BA3A969) - 2 * ((v220 ^ 0x1BA3A969) & 0x395CF9FC ^ v220 & 4);
  v222 = *&v144[4 * (v444 ^ 0x52)];
  HIDWORD(v146) = v222 ^ 0xBFCB321;
  LODWORD(v146) = v222 ^ 0x20000000;
  v223 = (v221 - ((2 * v221) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (BYTE1(v443) ^ 0x1Du));
  v224 = *&v144[4 * (v451 ^ 0x3B)];
  v225 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (BYTE1(v444) ^ 0x80u));
  HIDWORD(v146) = v224 ^ 0xBFCB321;
  LODWORD(v146) = v224 ^ 0x20000000;
  v226 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x5096C032) - 1471455207) ^ *&v151[4 * (*(v39 - 172) ^ 0x1C)];
  HIDWORD(v418) = HIBYTE(v449);
  v227 = (v225 - 1471455207 + (~(2 * v225) | 0xAF693FCD) + 1) ^ *&v151[4 * (HIBYTE(v449) ^ 0x41)];
  v228 = (v226 - ((2 * v226) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (v452 ^ 6u));
  v411 = v227 - ((2 * v227) & 0x67D192E0);
  v229 = *&v144[4 * (v219 ^ 0xAF)];
  v414 = v454 ^ 0x99;
  HIDWORD(v146) = v229 ^ 0xBFCB321;
  LODWORD(v146) = v229 ^ 0x20000000;
  v500 = v146 >> 28;
  v409 = v228 - ((2 * v228) & 0x67D192E0);
  LODWORD(v415) = v223 - ((2 * v223) & 0x5096C032);
  v230 = *&v144[4 * (v482 ^ 0x15)];
  HIDWORD(v146) = v230 ^ 0xBFCB321;
  LODWORD(v146) = v230 ^ 0x20000000;
  v231 = v146 >> 28;
  v232 = *&v144[4 * (v480 ^ 0x72)];
  HIDWORD(v146) = v232 ^ 0xBFCB321;
  LODWORD(v146) = v232 ^ 0x20000000;
  v483 = (v480 ^ 0x461BE621u) >> 24;
  v233 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x5096C032) - 1471455207) ^ *&v151[4 * (v483 ^ 0x2A)];
  v474 >>= 24;
  v234 = *&v151[4 * (v474 ^ 0xFA)] ^ *(v154 + 4 * (BYTE1(v503) ^ 0x1Cu));
  v408 = (v234 ^ 0x111799E1) - 2 * ((v234 ^ 0x111799E1) & 0x33E8C978 ^ v234 & 8);
  v235 = (v233 - 1276589712 + (~(2 * v233) | 0x982E6D1F) + 1) ^ *&v147[4 * ((v480 ^ 0x461BE621u) >> 16)];
  v236 = *&v144[4 * (v503 ^ 0xBA)];
  HIDWORD(v146) = v236 ^ 0xBFCB321;
  LODWORD(v146) = v236 ^ 0x20000000;
  LODWORD(v453) = v146 >> 28;
  LODWORD(v455) = HIBYTE(v494);
  v237 = *&v151[4 * (HIBYTE(v494) ^ 0xC)] ^ *&v147[4 * (BYTE2(v494) ^ 0x7D)];
  v238 = *&v151[4 * (*(v39 - 164) ^ 0x49)] ^ (v231 - ((2 * v231) & 0x5096C032) - 1471455207);
  v239 = *&v144[4 * (v494 ^ 0x76)];
  HIDWORD(v146) = v239 ^ 0xBFCB321;
  LODWORD(v146) = v239 ^ 0x20000000;
  v406 = BYTE1(v494) ^ 0xBF;
  v399 = (v237 ^ (v146 >> 28) ^ 0x1BA3A969) - 2 * ((v237 ^ (v146 >> 28) ^ 0x1BA3A969) & 0x395CF9FE ^ (v237 ^ (v146 >> 28)) & 6);
  v240 = (v238 - ((2 * v238) & 0x67D192E0) - 1276589712) ^ *&v147[4 * (v521 ^ 0xDB)];
  v241 = BYTE1(v480) ^ 0x84;
  v397 = v235 - ((2 * v235) & 0x72B9F3F0);
  v242 = v524 ^ 0x47;
  v395 = v240 - ((2 * v240) & 0x72B9F3F0);
  v243 = *&v144[4 * (v531 ^ 0xFD)];
  HIDWORD(v146) = v243 ^ 0xBFCB321;
  LODWORD(v146) = v243 ^ 0x20000000;
  v495 = HIBYTE(v531);
  v244 = ((v146 >> 28) - ((2 * (v146 >> 28)) & 0x5096C032) - 1471455207) ^ *&v151[4 * (HIBYTE(v531) ^ 0x8D)];
  v245 = *&v151[4 * (*(v39 - 160) ^ 0xE8)] ^ *(v154 + 4 * (v534 ^ 0x40u));
  v246 = *&v144[4 * (v527 ^ 0x13)];
  HIDWORD(v146) = v246 ^ 0xBFCB321;
  LODWORD(v146) = v246 ^ 0x20000000;
  v247 = v146 >> 28;
  v248 = (v245 ^ 0x111799E1) - 2 * ((v245 ^ 0x111799E1) & 0x33E8C97C ^ v245 & 0xC);
  v249 = *&v144[4 * (v530 ^ 0xCC)];
  v250 = *(v154 + 4 * (BYTE1(v530) ^ 0x2Au)) ^ *&v147[4 * (BYTE2(v530) ^ 0x96)];
  HIDWORD(v146) = v249 ^ 0xBFCB321;
  LODWORD(v146) = v249 ^ 0x20000000;
  v481 = v146 >> 28;
  HIDWORD(v450) = *&v147[4 * BYTE2(v476)];
  v522 = *&v147[4 * (BYTE2(v131) ^ 0x20)];
  v525 = *&v147[4 * ((v130 ^ 0xEC04DD81) >> 16)];
  v251 = v446 ^ 0x2D7F9DDF;
  HIDWORD(v441) = *&v147[4 * ((v446 ^ 0x2D7F9DDFu) >> 16)];
  LODWORD(v419) = *&v147[4 * v442];
  HIDWORD(v453) = *&v147[4 * BYTE2(v425)];
  v252 = (v250 ^ 0xAB43088) - 2 * ((v250 ^ 0xAB43088) & 0x284B601F ^ v250 & 6);
  LODWORD(v450) = *&v147[4 * (BYTE2(*(v39 - 240)) ^ 0x65)];
  v535 = *&v147[4 * v423];
  v253 = (v247 - ((2 * v247) & 0x72B9F3F0) - 1185089032) ^ *(v154 + 4 * (BYTE1(v527) ^ 0xAAu));
  v254 = *(v39 - 176);
  HIDWORD(v448) = *&v147[4 * ((v254 ^ 0x9CE31C33) >> 16)];
  v255 = *&v147[4 * (BYTE2(v444) ^ 0xFA)];
  HIDWORD(v412) = *&v147[4 * v414];
  v504 = *&v147[4 * (BYTE2(v503) ^ 0xD3)];
  v541 = *&v147[4 * (v540 ^ 0xC)];
  v256 = *&v147[4 * (BYTE2(v531) ^ 0x3D)];
  LODWORD(v147) = *&v147[4 * (BYTE2(v527) ^ 0x9E)];
  v257 = (v244 - ((2 * v244) & 0x67D192E0) - 1276589712) ^ v256;
  LODWORD(v412) = *(v154 + 4 * v519);
  LODWORD(v445) = *(v154 + 4 * (BYTE1(*(v39 - 124)) ^ 0xF4u));
  LODWORD(v441) = v509 - 1276589712;
  HIDWORD(v424) = *(v154 + 4 * (BYTE1(*(v39 - 120)) ^ 0x6Eu));
  v520 = v462 - 1276589712;
  LODWORD(v413) = v456 - 1276589712;
  v510 = *(v154 + 4 * (BYTE1(v446) ^ 0x2Au));
  HIDWORD(v413) = v447 - 1276589712;
  HIDWORD(v461) = v432 - 1276589712;
  HIDWORD(v455) = v429 - 1276589712;
  LODWORD(v405) = *(v154 + 4 * (v478 ^ 0x26u));
  LODWORD(v430) = *(v154 + 4 * (BYTE1(*(v39 - 232)) ^ 0x6Du));
  *(v39 - 176) = *(v154 + 4 * (BYTE1(v254) ^ 0x6Eu));
  LODWORD(v404) = v431 - 1276589712;
  HIDWORD(v445) = *(v154 + 4 * (BYTE1(*(v39 - 132)) ^ 0xA0u));
  LODWORD(v448) = *(v154 + 4 * v417);
  v258 = v411 - 1276589712;
  HIDWORD(v400) = v409 - 1276589712;
  LODWORD(v418) = v408 - 1276589712;
  HIDWORD(v401) = v248 - 1276589712;
  *(v39 - 180) = *(v154 + 4 * (BYTE1(*(v39 - 180)) ^ 0xB7u));
  HIDWORD(v405) = *(v154 + 4 * (BYTE1(*(v39 - 228)) ^ 0x77u));
  LODWORD(v400) = *(v154 + 4 * v406);
  v259 = (v253 - ((2 * v253) & 0x67D192E0) - 1276589712) ^ v147;
  LODWORD(v410) = *(v154 + 4 * v241);
  HIDWORD(v410) = *(v154 + 4 * v242);
  LODWORD(v421) = *(v154 + 4 * (BYTE1(v531) ^ 7u));
  v532 = v553 - 1185089032;
  v260 = HIBYTE(v476) - ((v476 >> 23) & 0x32);
  HIDWORD(v430) = *&v151[4 * (HIBYTE(v476) ^ 0xC0)];
  LODWORD(v433) = v152 - ((2 * v152) & 0x72B9F3F0) - 1185089032;
  LODWORD(v398) = *&v151[4 * v548];
  LODWORD(v424) = v556 - 1185089032;
  v261 = HIBYTE(v515);
  HIDWORD(v514) = *&v151[4 * (HIBYTE(v515) ^ 0xFD)];
  LODWORD(v401) = *&v151[4 * (v528 ^ 0x52)];
  LODWORD(v407) = *&v151[4 * (v508 ^ 0xE8)];
  v262 = HIBYTE(v251) - ((v251 >> 23) & 0x32);
  HIDWORD(v404) = *&v151[4 * (HIBYTE(v251) ^ 0xFD)];
  v263 = (v254 ^ 0x9CE31C33) >> 24;
  LODWORD(v403) = *&v151[4 * (HIBYTE(v458) ^ 0xFD)];
  HIDWORD(v403) = HIBYTE(v458);
  HIDWORD(v457) = HIBYTE(*(v39 - 224));
  HIDWORD(v407) = *&v151[4 * (HIDWORD(v457) ^ 0x3B)];
  *(v39 - 224) = HIBYTE(v435);
  v551 = *&v151[4 * (HIBYTE(v435) ^ 0x78)];
  v264 = HIBYTE(v469);
  HIDWORD(v402) = v428 - 1185089032;
  v549 = v426 - 1185089032;
  LODWORD(v402) = *&v151[4 * (HIBYTE(v469) ^ 0xDF)];
  v470 = v561 - 1185089032;
  v477 = v420 - 1185089032;
  LODWORD(v394) = v416 - 1185089032;
  v554 = v399 - 1185089032;
  HIDWORD(v396) = v397 - 1185089032;
  HIDWORD(v398) = v395 - 1185089032;
  HIDWORD(v419) = v257 - ((2 * v257) & 0x72B9F3F0) - 1185089032;
  HIDWORD(v427) = *&v151[4 * v422];
  HIDWORD(v433) = *&v151[4 * (v263 ^ 0xFD)];
  LODWORD(v147) = HIBYTE(*(v39 - 168));
  *(v39 - 228) = v147;
  v557 = *&v151[4 * (v147 ^ 0xD7)];
  v265 = HIBYTE(v530);
  v266 = HIBYTE(v527);
  HIDWORD(v421) = *&v151[4 * (HIBYTE(v530) ^ 0x92)];
  HIDWORD(v415) = *&v151[4 * (HIBYTE(v527) ^ 0xE)];
  LODWORD(v427) = v260 - 1471455207;
  LODWORD(v393) = v496 - 1471455207;
  HIDWORD(v393) = v262 - 1471455207;
  HIDWORD(v394) = v460 - 1471455207;
  v267 = v440 - 1471455207;
  LODWORD(v396) = v437 - 1471455207;
  LODWORD(v461) = v263 - (((v254 ^ 0x9CE31C33) >> 23) & 0x32) - 1471455207;
  LODWORD(v438) = v252 - 1471455207;
  v497 = v259 - ((2 * v259) & 0x5096C032) - 1471455207;
  v268 = *&v144[4 * (v545 ^ 0xBB)];
  HIDWORD(v146) = v268 ^ 0xBFCB321;
  LODWORD(v146) = v268 ^ 0x20000000;
  v269 = v146 >> 28;
  v270 = HIDWORD(v418) ^ v255 ^ 0x46892167 ^ v258;
  v271 = *(v39 - 196);
  v272 = v271 ^ v543;
  LODWORD(v144) = *(v39 - 248) ^ 0xBAE00000;
  *(v39 - 232) = v270;
  v273 = -14984297 - (v271 ^ v543 ^ 0x6E3A6E91) - v270;
  HIDWORD(v146) = v273 ^ *(v39 - 256);
  LODWORD(v146) = v144 ^ v273;
  HIDWORD(v438) = (v146 >> 21) ^ 0x933097C1;
  v274 = *(v39 - 128);
  v275 = *(&off_103F00 + v274 - 436);
  v276 = *(&off_103F00 + v274 - 401) - 12;
  v277 = *(&off_103F00 + (v274 ^ 0x2BA));
  v278 = *(&off_103F00 + (v274 ^ 0x276));
  HIDWORD(v146) = *(v278 + (*(v39 - 100) ^ 9));
  LODWORD(v146) = (HIDWORD(v146) ^ 0x30) << 24;
  v279 = (((v146 >> 28) ^ 0x75) << 24) | ((*(v275 + (*(v39 - 99) ^ 0x42)) ^ 0xE) << 16) | (11 * *(v277 + (*(v39 - 97) ^ 0x5ALL)) - 24) ^ 0xF2;
  HIDWORD(v146) = *(v278 + (*(v39 - 108) ^ 0x18));
  LODWORD(v146) = (HIDWORD(v146) ^ 0x30) << 24;
  v280 = ((v276[*(v39 - 106) ^ 0x49] ^ 0xB9) << 8) | (((v146 >> 28) ^ 0x3E) << 24);
  HIDWORD(v146) = *(v278 + (*(v39 - 112) ^ 8));
  LODWORD(v146) = (HIDWORD(v146) ^ 0x30) << 24;
  v281 = (v146 >> 28) ^ 0x58;
  v562 = v278;
  HIDWORD(v146) = *(v278 + (*(v39 - 104) ^ 9));
  LODWORD(v146) = (HIDWORD(v146) ^ 0x30) << 24;
  LODWORD(v151) = ((*(v275 + (*(v39 - 111) ^ 0x58)) ^ 0xB3) << 16) | ((v276[*(v39 - 110) ^ 0xB7] ^ 0x78) << 8) | (11 * *(v277 + (*(v39 - 109) ^ 0x73)) - 24) | (v281 << 24);
  LODWORD(v278) = (11 * *(v277 + (*(v39 - 101) ^ 0x14)) - 24) ^ 0xB5 | ((v276[*(v39 - 102) ^ 0x7FLL] ^ 0x81) << 8) | ((*(v275 + (*(v39 - 103) ^ 0x86)) ^ 0x7B) << 16) | (((v146 >> 28) ^ 0x75) << 24);
  v282 = *(v39 - 105) ^ 0xB8;
  *(v39 - 256) = v277;
  v283 = v280 & 0xFFFFFF00 | (11 * *(v277 + v282) - 24) ^ 0x56;
  v284 = *(v39 - 98) ^ 0xC0;
  *(v39 - 248) = v276;
  *(v39 - 240) = v275;
  LODWORD(v284) = v279 | ((v276[v284] ^ 0x2E) << 8);
  *(v39 - 124) = (v283 | ((*(v275 + (*(v39 - 107) ^ 0xD3)) ^ 0x7F) << 16)) ^ 0x46464646;
  *(v39 - 120) = v284 ^ 0x46464646;
  *(v39 - 128) = v278 ^ 0x46464646;
  *(v39 - 132) = v151 ^ 0x46464625;
  v546 = HIDWORD(v401) ^ v541 ^ v269;
  v544 = v404 ^ v535;
  v542 = v412 ^ (v559 - 1471455207) ^ v398 ^ v532;
  LODWORD(v276) = *(v39 - 116);
  v538 = v537 ^ v272;
  v536 = v272 ^ 0x189783DC;
  v285 = *(v39 - 192);
  v533 = v517 ^ HIDWORD(v405) ^ v394 ^ v500;
  HIDWORD(v529) = *(v39 - 172) ^ 0x5C13AE96;
  LODWORD(v529) = v528 ^ v393 ^ v401;
  HIDWORD(v526) = v261 ^ HIDWORD(v514) ^ (v501 - 1471455207);
  LODWORD(v526) = v525 ^ v413;
  HIDWORD(v523) = HIBYTE(v131) ^ v522 ^ v520;
  LODWORD(v523) = v483 ^ v410 ^ HIDWORD(v396);
  HIDWORD(v518) = v474 ^ v504 ^ v418 ^ v453;
  LODWORD(v518) = *(v39 - 164) ^ HIDWORD(v410) ^ HIDWORD(v398);
  LODWORD(v514) = v513 ^ v419 ^ HIDWORD(v413);
  HIDWORD(v511) = (v262 - 1471455207) ^ HIDWORD(v441) ^ v510 ^ v512 ^ HIDWORD(v404);
  LODWORD(v511) = HIDWORD(v403) ^ v403 ^ HIDWORD(v394);
  HIDWORD(v507) = v508 ^ v407 ^ (v485 - 1471455207) ^ v506;
  LODWORD(v507) = v264 ^ v396 ^ v402;
  HIDWORD(v502) = v492 ^ v430 ^ HIDWORD(v402);
  LODWORD(v502) = *(v39 - 160) ^ 0x21994F46;
  HIDWORD(v498) = v266 ^ HIDWORD(v415) ^ v497;
  LODWORD(v498) = v495 ^ v421 ^ HIDWORD(v419);
  HIDWORD(v493) = v265 ^ HIDWORD(v421) ^ v481 ^ (v252 - 1471455207);
  LODWORD(v493) = HIDWORD(v457) ^ HIDWORD(v407) ^ (v457 - 1471455207);
  HIDWORD(v488) = v490 ^ v450 ^ HIDWORD(v455);
  LODWORD(v488) = v487 ^ HIDWORD(v453) ^ HIDWORD(v461);
  HIDWORD(v484) = *(v39 - 152) ^ 0xF17F20B3;
  LODWORD(v484) = (v564 - 1471455207) ^ HIDWORD(v445) ^ HIDWORD(v427) ^ v470;
  HIDWORD(v479) = v461 ^ *(v39 - 176) ^ HIDWORD(v448) ^ v465 ^ HIDWORD(v433);
  LODWORD(v479) = HIBYTE(v207) ^ *(v39 - 180) ^ v477;
  HIDWORD(v475) = *(v39 - 144) ^ v448 ^ v467 ^ v463;
  LODWORD(v475) = v427 ^ HIDWORD(v450) ^ HIDWORD(v430) ^ v441;
  HIDWORD(v472) = v473 ^ HIDWORD(v424) ^ v424;
  HIDWORD(v146) = HIDWORD(v438);
  LODWORD(v146) = HIDWORD(v438);
  LODWORD(v472) = v471 ^ v445 ^ v433;
  HIDWORD(v468) = (v146 >> 11) ^ v273;
  LODWORD(v468) = *(v39 - 168) ^ v271;
  HIDWORD(a37) = *(v39 - 156) ^ 0x91;
  *(v39 - 116) = v276;
  LODWORD(v275) = 25 * (HIDWORD(v463) ^ 0x58D);
  v286 = (HIDWORD(v463) - 1266) | 0x800;
  *(v39 - 180) = 0;
  *(v39 - 176) = v286;
  v287 = v276 + (v286 - 2207);
  *(v39 - 144) = v287;
  v288 = *(v39 - 256);
  v289 = (v285 + v276);
  LOBYTE(v151) = 11 * *(v288 + (*(v285 + v287) ^ 0x91)) - 24;
  LODWORD(v287) = *(v562 + (v289[4] ^ 0xABLL));
  *(v39 - 156) = v275;
  v290 = v276 + (v275 - 620);
  *(v39 - 152) = v290;
  HIDWORD(v146) = v287;
  LODWORD(v146) = (v287 ^ 0x30) << 24;
  v292 = *(v39 - 248);
  v291 = *(v39 - 240);
  LODWORD(v287) = ((*(v291 + (*(v285 + v290) ^ 0x9FLL)) ^ 0xC) << 16) | (((v146 >> 28) ^ 0xF4) << 24) | (11 * *(v288 + (v289[7] ^ 0x71)) - 24) ^ 0xD5;
  v293 = v289[1];
  HIDWORD(v146) = *(v562 + (*v289 ^ 0xB1));
  LODWORD(v146) = (HIDWORD(v146) ^ 0x30) << 24;
  LODWORD(v151) = v151 ^ 0xC7 | ((*(v291 + (v293 ^ 0x41)) ^ 0xC4) << 16) | (((v146 >> 28) ^ 0x8A) << 24);
  HIDWORD(v146) = *(v562 + (v289[8] ^ 0x79));
  LODWORD(v146) = (HIDWORD(v146) ^ 0x30) << 24;
  LODWORD(v277) = ((*(v292 + (v289[10] ^ 9)) ^ 0xA4) << 8) | (((v146 >> 28) ^ 0x2A) << 24);
  HIDWORD(v146) = *(v562 + (v289[12] ^ 0x5BLL));
  LODWORD(v146) = (HIDWORD(v146) ^ 0x30) << 24;
  v294 = v151 + ((*(v292 + ~v289[2]) ^ 0xCE) << (v293 & 8) << (v293 & 8 ^ 8));
  LODWORD(v275) = (11 * *(v288 + (v289[15] ^ 0xA6)) - 24) ^ 0x10 | ((*(v292 + (v289[14] ^ 0x31)) ^ 0x1E) << 8) | (((v146 >> 28) ^ 0x98) << 24) | ((*(v291 + (v289[13] ^ 0x41)) ^ 0xC4) << 16);
  LODWORD(v290) = v277 & 0xFFFFFF00 | (11 * *(v288 + (v289[11] ^ 0xA4)) - 24) | ((*(v291 + (v289[9] ^ 0x6ELL)) ^ 0xF0) << 16);
  LODWORD(v277) = v287 | ((*(v292 + (v289[6] ^ 0xD0)) ^ 0x15) << 8);
  *(v39 - 172) = v277;
  v295 = v468 ^ v277;
  v296 = v468 ^ v277 ^ 0x4A85D73A;
  *(v39 - 164) = v275;
  *(v39 - 160) = v294;
  v297 = v294 ^ *(v39 - 196);
  BYTE1(v283) = BYTE1(v297) ^ 0x4D;
  *(v39 - 168) = v290;
  v298 = *(&off_103F00 + (HIDWORD(v463) ^ 0x5B0));
  v299 = *(v298 + 4 * ((v297 ^ 0xE3B34D6F) >> 16));
  v300 = *(&off_103F00 + (HIDWORD(v463) ^ 0x5E1));
  LODWORD(v285) = v297 ^ 0x6F;
  v301 = (v299 - 431907370 - 2 * ((v299 + 82788216) & 0x21525E5F ^ v299 & 1)) ^ *(v300 + 4 * (((v538 ^ v275) >> 8) ^ 0xE7u));
  LODWORD(v287) = HIBYTE(v297) ^ 0x82;
  v302 = *(&off_103F00 + HIDWORD(v463) - 1247) - 4;
  v303 = (*(v298 + 4 * ((v538 ^ v275 ^ 0x9B6ACF86) >> 16)) - 990953608) ^ (*&v302[4 * v287] + 1717869756);
  v304 = *(&off_103F00 + (HIDWORD(v463) ^ 0x5E9));
  LODWORD(v288) = *(v300 + 4 * BYTE1(v283)) ^ (*&v302[4 * ((v536 ^ v290) >> 24)] + 1717869756) ^ (*(v298 + 4 * BYTE2(v296)) - 431907370 - ((2 * *(v298 + 4 * BYTE2(v296)) + 165576432) & 0x42A4BCBC));
  v305 = (v303 + 559046238 - ((2 * v303) & 0x42A4BCBC)) ^ *(v300 + 4 * ((v536 ^ v290) >> 8));
  v306 = v305 + 597494995 - ((2 * v305) & 0x473A19A6);
  LODWORD(v291) = (*&v302[4 * ((v538 ^ v275 ^ 0x9B6ACF86) >> 24)] - 1979602545 - ((2 * *&v302[4 * ((v538 ^ v275 ^ 0x9B6ACF86) >> 24)] + 1288255864) & 0x473A19A6)) ^ *(v304 + 4 * v285) ^ (*(v298 + 4 * ((v536 ^ v290) >> 16)) - 990953608);
  LODWORD(v291) = HIDWORD(v400) ^ HIDWORD(v412) ^ *(v300 + 4 * ~(v295 >> 8)) ^ (v291 + 559046238 - ((2 * v291) & 0x42A4BCBC));
  v307 = v557 ^ (v415 - 1471455207) ^ *(v304 + 4 * (v536 ^ v290)) ^ (*&v302[4 * HIBYTE(v296)] + 1717869756) ^ (v301 + 597494995 - ((2 * v301) & 0x473A19A6));
  v308 = *(v304 + 4 * v296) ^ *(v39 - 232) ^ v306;
  v309 = v533 ^ *(v304 + 4 * ((v538 ^ v275) ^ 0x86u)) ^ 0xDAA5098A ^ (v288 + 597494995 - ((2 * v288) & 0x473A19A6));
  LOWORD(v151) = WORD2(v529) ^ v291;
  v310 = *(v298 + 4 * (BYTE2(v307) ^ 0x90u));
  LODWORD(v288) = *&v302[4 * (BYTE3(v291) ^ 0x3D)] + 1717869756;
  LODWORD(v291) = *(v298 + 4 * (BYTE2(v291) ^ 0x43u));
  LODWORD(v288) = (*(v298 + 4 * BYTE2(v309)) - 990953608) ^ v288;
  LODWORD(v291) = (v291 - 431907370 - ((2 * v291 + 165576432) & 0x42A4BCBC)) ^ *(v300 + 4 * BYTE1(v309));
  LODWORD(v288) = (v288 + 597494995 - ((2 * v288) & 0x473A19A6)) ^ *(v304 + 4 * (v308 ^ 0xAu));
  LODWORD(v285) = *&v302[4 * (HIBYTE(v307) ^ 0x7C)];
  v311 = (v310 - 431907370 - ((2 * v310 + 165576432) & 0x42A4BCBC)) ^ *(v300 + 4 * ((v308 ^ 0xCD0A) >> 8)) ^ (*&v302[4 * HIBYTE(v309)] + 1717869756);
  v312 = *(v304 + 4 * (*(v39 - 228) ^ v307 ^ 2u));
  v313 = *(v304 + 4 * v309) ^ (v285 - 1979602545 - ((2 * v285 + 1288255864) & 0x473A19A6));
  v314 = v529 ^ *(v300 + 4 * (BYTE1(v307) ^ 0xCDu)) ^ 0x4DFAAC6E ^ (v288 + 559046238 - ((2 * v288) & 0x42A4BCBC));
  v315 = HIDWORD(v526) ^ *(v304 + 4 * v151) ^ 0xBC0E384A ^ (v311 + 597494995 - ((2 * v311) & 0x473A19A6));
  LODWORD(v291) = v526 ^ v312 ^ (*&v302[4 * (HIBYTE(v308) ^ 0x29)] + 1717869756) ^ 0xBDD4E0C ^ (v291 + 597494995 - ((2 * v291) & 0x473A19A6));
  LODWORD(v151) = HIDWORD(v523) ^ *(v300 + 4 * BYTE1(v151)) ^ (*(v298 + 4 * (BYTE2(v308) ^ 0x1Cu)) - 990953608) ^ 0xF727DC0 ^ (v313 + 559046238 - ((2 * v313) & 0x42A4BCBC));
  LODWORD(v288) = (*(v298 + 4 * BYTE2(v314)) - 393458613 - 2 * ((*(v298 + 4 * BYTE2(v314)) + 82788216) & 0x239D0CD7 ^ *(v298 + 4 * BYTE2(v314)) & 4)) ^ *(v304 + 4 * v151);
  v316 = *&v302[4 * HIBYTE(v314)];
  v317 = (*(v298 + 4 * BYTE2(v315)) - 990953608) ^ *(v304 + 4 * v291) ^ (v316 - 1979602545 - ((2 * v316 + 1288255864) & 0x473A19A6));
  v318 = (*(v298 + 4 * BYTE2(v291)) - 431907370 - 2 * ((*(v298 + 4 * BYTE2(v291)) + 82788216) & 0x21525E5F ^ *(v298 + 4 * BYTE2(v291)) & 1)) ^ *(v300 + 4 * BYTE1(v314)) ^ (*&v302[4 * (v151 >> 24)] + 1717869756);
  v319 = *(v300 + 4 * BYTE1(v151));
  LODWORD(v285) = *&v302[4 * HIBYTE(v315)] + 1717869756;
  v320 = *(v304 + 4 * v315);
  v321 = v554 ^ v400 ^ *(v300 + 4 * BYTE1(v315)) ^ (*&v302[4 * BYTE3(v291)] + 1717869756) ^ (v288 + 559046238 - ((2 * v288) & 0x42A4BCBC));
  LODWORD(v151) = v523 ^ *(v300 + 4 * BYTE1(v291)) ^ *(v304 + 4 * v314) ^ v285 ^ (*(v298 + 4 * BYTE2(v151)) - 990953608) ^ 0x49C2C74E;
  v322 = HIDWORD(v518) ^ v320 ^ 0x5C50F580 ^ (v318 + 597494995 - ((2 * v318) & 0x473A19A6));
  v323 = v518 ^ v319 ^ 0xF42206E5 ^ (v317 + 559046238 - ((2 * v317) & 0x42A4BCBC));
  LODWORD(v288) = *(v298 + 4 * (BYTE2(v321) ^ 0xFCu));
  LODWORD(v288) = (v288 - 431907370 - ((2 * v288 + 165576432) & 0x42A4BCBC)) ^ *(v300 + 4 * BYTE1(v323));
  v324 = *&v302[4 * (HIBYTE(v321) ^ 0x5C)];
  v325 = (v324 - 2018051302 - 2 * ((v324 + 644127932) & 0x21525E5F ^ v324 & 1)) ^ *(v300 + 4 * BYTE1(v151));
  v326 = *(v304 + 4 * ((v518 ^ v319) ^ 0xE5u ^ (v317 + 94 - ((2 * v317) & 0xBC)))) ^ (*&v302[4 * (v151 >> 24)] + 1717869756) ^ (*(v298 + 4 * BYTE2(v322)) - 393458613 - ((2 * *(v298 + 4 * BYTE2(v322)) + 165576432) & 0x473A19A6));
  LODWORD(v291) = v288 + 597494995 - ((2 * v288) & 0x473A19A6);
  v327 = *(v304 + 4 * (v455 ^ 0x77 ^ v321)) ^ (*(v298 + 4 * BYTE2(v151)) - 393458613 - ((2 * *(v298 + 4 * BYTE2(v151)) + 165576432) & 0x473A19A6)) ^ (*&v302[4 * HIBYTE(v323)] + 1717869756);
  LODWORD(v288) = v514 ^ *(v304 + 4 * v322) ^ (*(v298 + 4 * BYTE2(v323)) - 990953608) ^ 0xC246DA18 ^ (v325 + 597494995 - ((2 * v325) & 0x473A19A6));
  LODWORD(v151) = HIDWORD(v511) ^ *(v304 + 4 * v151) ^ (*&v302[4 * HIBYTE(v322)] + 1717869756) ^ 0x4F36E33B ^ v291;
  v328 = v511 ^ *(v300 + 4 * (BYTE1(v321) ^ 0x9Cu)) ^ 0x2B7E024F ^ (v326 + 559046238 - ((2 * v326) & 0x42A4BCBC));
  v329 = HIDWORD(v507) ^ *(v300 + 4 * BYTE1(v322)) ^ 0xF6A14AC ^ (v327 + 559046238 - ((2 * v327) & 0x42A4BCBC));
  v330 = *&v302[4 * (v151 >> 24)];
  LODWORD(v291) = *&v302[4 * HIBYTE(v329)];
  LODWORD(v291) = (v291 - 2018051302 - 2 * ((v291 + 644127932) & 0x21525E5F ^ v291 & 1)) ^ *(v300 + 4 * BYTE1(v151));
  v331 = *&v302[4 * HIBYTE(v328)];
  v332 = (*(v298 + 4 * BYTE2(v329)) - 990953608) ^ (*&v302[4 * BYTE3(v288)] + 1717869756);
  LODWORD(v285) = *(v304 + 4 * v288);
  v333 = (v331 - 2018051302 - 2 * ((v331 + 644127932) & 0x21525E5F ^ v331 & 1)) ^ *(v300 + 4 * BYTE1(v288));
  v334 = (v330 - 1979602545 - ((2 * v330 + 1288255864) & 0x473A19A6)) ^ *(v304 + 4 * v328) ^ (*(v298 + 4 * BYTE2(v288)) - 990953608);
  LODWORD(v288) = *(v304 + 4 * v329);
  v335 = v333 + 597494995 - ((2 * v333) & 0x473A19A6);
  v336 = *(v298 + 4 * BYTE2(v151)) - 990953608;
  v337 = *(v300 + 4 * BYTE1(v329));
  LODWORD(v151) = v267 ^ v551 ^ *(v304 + 4 * v151) ^ (v332 + 597494995 - ((2 * v332) & 0x473A19A6));
  v338 = v549 ^ v405 ^ v285 ^ (*(v298 + 4 * BYTE2(v328)) - 990953608) ^ (v291 + 597494995 - ((2 * v291) & 0x473A19A6));
  v339 = v507 ^ v337 ^ 0xA6432855 ^ (v334 + 559046238 - ((2 * v334) & 0x42A4BCBC));
  v340 = *(v39 - 224) ^ *(v300 + 4 * BYTE1(v328)) ^ 0x157ECCE5 ^ (v151 + 559046238 - ((2 * v151) & 0x42A4BCBC));
  LODWORD(v151) = HIDWORD(v502) ^ v288 ^ v336 ^ 0x25D15D8 ^ v335;
  LODWORD(v288) = *(v304 + 4 * ((v507 ^ v337) ^ 0x55u ^ (v334 + 94 - ((2 * v334) & 0xBC))));
  LODWORD(v291) = *&v302[4 * (v151 >> 24)];
  v341 = *&v302[4 * HIBYTE(v340)];
  v342 = (*(v298 + 4 * BYTE2(v340)) - 431907370 - 2 * ((*(v298 + 4 * BYTE2(v340)) + 82788216) & 0x21525E5F ^ *(v298 + 4 * BYTE2(v340)) & 1)) ^ *(v300 + 4 * (BYTE1(v338) ^ 0xB6u)) ^ (*&v302[4 * HIBYTE(v339)] + 1717869756);
  v343 = *(v304 + 4 * v151);
  LODWORD(v291) = (v291 - 2018051302 - 2 * ((v291 + 644127932) & 0x21525E5F ^ v291 & 1)) ^ *(v300 + 4 * BYTE1(v340)) ^ (*(v298 + 4 * BYTE2(v339)) - 990953608);
  v344 = (v341 - 1979602545 - ((2 * v341 + 1288255864) & 0x473A19A6)) ^ v288 ^ (*(v298 + 4 * (BYTE2(v338) ^ 0x79u)) - 990953608);
  LODWORD(v288) = *(v304 + 4 * (HIDWORD(a37) ^ v338));
  v345 = v546 ^ *(v300 + 4 * BYTE1(v339)) ^ (*&v302[4 * (HIBYTE(v338) ^ 0x5F)] + 1717869756) ^ *(v304 + 4 * v340) ^ (*(v298 + 4 * BYTE2(v151)) - 990953608);
  LODWORD(v151) = HIDWORD(v498) ^ *(v300 + 4 * BYTE1(v151)) ^ 0x3E0C7E44 ^ (v344 + 559046238 - ((2 * v344) & 0x42A4BCBC));
  v346 = v498 ^ v343 ^ 0x9A430B96 ^ (v342 + 597494995 - ((2 * v342) & 0x473A19A6));
  v347 = HIDWORD(v493) ^ v288 ^ 0x4291C5A0 ^ (v291 + 597494995 - ((2 * v291) & 0x473A19A6));
  v348 = *&v302[4 * (v151 >> 24)];
  v349 = *&v302[4 * HIBYTE(v347)];
  v350 = (v349 - 1979602545 - ((2 * v349 + 1288255864) & 0x473A19A6)) ^ *(v304 + 4 * (v502 ^ v345 ^ 0x8D));
  v351 = v350 + 559046238 - ((2 * v350) & 0x42A4BCBC);
  LODWORD(v288) = *&v302[4 * HIBYTE(v346)];
  v352 = (v348 - 1979602545 - ((2 * v348 + 1288255864) & 0x473A19A6)) ^ *(v304 + 4 * v346) ^ (*(v298 + 4 * ((v502 ^ v345 ^ 0x2CF528D) >> 16)) - 990953608);
  v353 = *(v300 + 4 * BYTE1(v151));
  LODWORD(v291) = (*(v298 + 4 * BYTE2(v151)) - 990953608) ^ *(v300 + 4 * (((v345 ^ 0x528D) >> 8) ^ 0x67u)) ^ (v288 - 2018051302 - 2 * ((v288 + 644127932) & 0x21525E5F ^ v288 & 1));
  v354 = v544 ^ *(v300 + 4 * BYTE1(v346)) ^ (*(v298 + 4 * BYTE2(v347)) - 431907370 - 2 * ((*(v298 + 4 * BYTE2(v347)) + 82788216) & 0x21525E5F ^ *(v298 + 4 * BYTE2(v347)) & 1)) ^ (*&v302[4 * (HIBYTE(v345) ^ 0x42)] + 1717869756);
  v355 = (v354 + 597494995 - ((2 * v354) & 0x473A19A6)) ^ *(v304 + 4 * v151);
  LODWORD(v151) = v493 ^ *(v304 + 4 * v347) ^ 0xE4497584 ^ (v291 + 597494995 - ((2 * v291) & 0x473A19A6));
  v356 = HIDWORD(v488) ^ *(v300 + 4 * BYTE1(v347)) ^ 0x7C4906B6 ^ (v352 + 559046238 - ((2 * v352) & 0x42A4BCBC));
  LODWORD(v291) = v488 ^ v353 ^ (*(v298 + 4 * BYTE2(v346)) - 990953608) ^ 0x6936922E ^ v351;
  v357 = BYTE3(v291);
  LOWORD(v345) = WORD2(v484) ^ v355;
  v358 = (HIDWORD(v484) ^ v355) >> 24;
  v359 = (*&v302[4 * HIBYTE(v356)] + 1717869756) ^ (*(v298 + 4 * (BYTE2(v355) ^ 0x2Fu)) - 990953608);
  v360 = (v359 + 559046239 + ~((2 * v359) & 0x42A4BCBC)) ^ *(v300 + 4 * BYTE1(v291));
  LODWORD(v288) = (*&v302[4 * (v151 >> 24)] + 1717869756) ^ (*(v298 + 4 * BYTE2(v356)) - 990953608);
  v361 = *(v304 + 4 * v345);
  LODWORD(v292) = (*(v298 + 4 * BYTE2(v291)) - 431907370 - ((2 * *(v298 + 4 * BYTE2(v291)) + 165576432) & 0x42A4BCBC)) ^ (*&v302[4 * v358] + 1717869756) ^ *(v300 + 4 * BYTE1(v151));
  LODWORD(v291) = *(v304 + 4 * v291) ^ (v288 + 597494995 - ((2 * v288) & 0x473A19A6));
  LODWORD(v288) = *(v300 + 4 * BYTE1(v345));
  v362 = *(v298 + 4 * BYTE2(v151)) - 990953608;
  v363 = v484 ^ *(v304 + 4 * v151) ^ 0xFF25CD69 ^ (v360 + 597494995 - ((2 * v360) & 0x473A19A6));
  LODWORD(v151) = HIDWORD(v479) ^ v288 ^ 0x39794D90 ^ (v291 + 559046238 - ((2 * v291) & 0x42A4BCBC));
  v364 = v479 ^ *(v300 + 4 * BYTE1(v356)) ^ v361 ^ (*&v302[4 * v357] + 1717869756) ^ 0xC05CC1BE ^ v362;
  LODWORD(v291) = HIDWORD(v475) ^ *(v304 + 4 * v356) ^ 0x74C1F507 ^ (v292 + 597494995 - ((2 * v292) & 0x473A19A6));
  LODWORD(v288) = (*&v302[4 * HIBYTE(v363)] + 1717869756) ^ (*(v298 + 4 * BYTE2(v291)) - 990953608);
  v365 = *(v298 + 4 * BYTE2(v363)) - 990953608;
  LODWORD(v292) = *(v304 + 4 * ((BYTE4(v475) ^ *(v304 + 4 * v356)) ^ 7u ^ (v292 - 45 - ((2 * v292) & 0xA6))));
  LODWORD(v288) = *(v304 + 4 * v151) ^ (v288 + 597494995 - ((2 * v288) & 0x473A19A6));
  v366 = *(v300 + 4 * BYTE1(v363));
  LODWORD(v285) = *&v302[4 * HIBYTE(v364)] + 1717869756;
  v367 = (*&v302[4 * BYTE3(v291)] + 1717869756) ^ (*(v298 + 4 * BYTE2(v364)) - 990953608);
  v368 = (v367 + 559046238 - ((2 * v367) & 0x42A4BCBC)) ^ *(v300 + 4 * BYTE1(v151));
  v369 = *&v302[4 * (v151 >> 24)] + 1717869756;
  LODWORD(v302) = *(v300 + 4 * BYTE1(v364));
  LODWORD(v300) = ((v369 ^ v365) + 559046238 - ((2 * (v369 ^ v365)) & 0x42A4BCBC)) ^ *(v300 + 4 * BYTE1(v291));
  v370 = *(v304 + 4 * v364);
  LODWORD(v291) = *(v298 + 4 * BYTE2(v151)) - 990953608;
  LODWORD(v304) = v542 ^ *(v304 + 4 * v363) ^ (v368 + 597494995 - ((2 * v368) & 0x473A19A6));
  LODWORD(v300) = v475 ^ v370 ^ 0x6D5A0E9C ^ (v300 + 597494995 - ((2 * v300) & 0x473A19A6));
  v371 = HIDWORD(v472) ^ v302 ^ 0xC310457A ^ (v288 + 559046238 - ((2 * v288) & 0x42A4BCBC));
  v372 = *(&off_103F00 + HIDWORD(v463) - 1417) - 12;
  LODWORD(v151) = *&v372[4 * ((v304 ^ 0x96B5) >> 8)];
  LODWORD(v302) = *&v372[4 * BYTE1(v300)];
  LODWORD(v291) = v472 ^ v292 ^ v285 ^ v366 ^ 0xB1AA46BC ^ v291;
  v373 = *(&off_103F00 + (HIDWORD(v463) ^ 0x5B4));
  v374 = *(v373 + 4 * HIBYTE(v371));
  v375 = *(&off_103F00 + HIDWORD(v463) - 1222) - 4;
  v376 = *&v375[4 * v291];
  v377 = *(v373 + 4 * BYTE3(v291));
  v378 = *(v373 + 4 * ((v304 ^ 0xF28596B5) >> 24));
  LODWORD(v373) = *(v373 + 4 * BYTE3(v300));
  LODWORD(v288) = *&v375[4 * v371];
  LODWORD(v285) = *&v375[4 * v300];
  v379 = *&v375[4 * (v304 ^ 0xB5)];
  v380 = *(&off_103F00 + (HIDWORD(v463) ^ 0x542));
  v381 = *(v380 + 4 * BYTE2(v300));
  LODWORD(v304) = v285 ^ *(v380 + 4 * (BYTE2(v304) ^ 0x82u));
  v382 = *(v39 - 192);
  LODWORD(v300) = *(v39 - 132) ^ *(v39 - 220) ^ (*&v372[4 * BYTE1(v291)] + 1049068435) ^ (v374 + 1409443761) ^ v304;
  LODWORD(v304) = *(v39 - 128) ^ *(v39 - 212) ^ (v377 + 1409443761) ^ (*&v372[4 * BYTE1(v371)] + 1049068435) ^ v381 ^ v379;
  v383 = v302 + 1049068435;
  LODWORD(v302) = HIDWORD(v468) ^ *(v39 - 124) ^ v376 ^ (v151 + 1049068435) ^ *(v380 + 4 * BYTE2(v371)) ^ (v373 + 1409443761);
  LODWORD(v151) = *(v39 - 120) ^ *(v39 - 216) ^ *(v380 + 4 * BYTE2(v291)) ^ v288 ^ (v378 + 1409443761);
  v384 = *(&off_103F00 + (HIDWORD(v463) ^ 0x561)) - 8;
  v289[7] = v384[v302 ^ 0xA7] ^ 0x65;
  v385 = *(&off_103F00 + HIDWORD(v463) - 1425) - 12;
  v289[2] = v385[BYTE1(v300) ^ 0xCBLL] ^ 0x61;
  v386 = *(&off_103F00 + (HIDWORD(v463) ^ 0x5F4)) - 12;
  v289[8] = (-25 * v386[BYTE3(v304) ^ 0xFELL]) ^ 0xD0;
  *v289 = (-25 * v386[BYTE3(v300) ^ 0xF6]) ^ 9;
  LODWORD(v151) = v151 ^ v383;
  v289[4] = (-25 * v386[(v302 >> 24) ^ 0x5FLL]) ^ 0x21;
  v387 = *(&off_103F00 + HIDWORD(v463) - 1249) - 8;
  v388 = v387[BYTE2(v151) ^ 0xDLL];
  v289[13] = ((v388 >> 3) | (32 * v388)) ^ 0xA9;
  LODWORD(v290) = *(v39 - 116);
  v289[12] = (-25 * v386[(v151 >> 24) ^ 0xE8]) ^ 0x95;
  v289[10] = v385[BYTE1(v304) ^ 0x15] ^ 0x2A;
  *(v382 + *(v39 - 144)) = v384[v300 ^ 0x6ALL] ^ 0x6D;
  v389 = v387[BYTE2(v302) ^ 3];
  *(v382 + *(v39 - 152)) = ((v389 >> 3) | (32 * v389)) ^ 0x51;
  v289[11] = v384[v304 ^ 0xC0] ^ 0xD5;
  v289[15] = v384[v151 ^ 0x14] ^ 0xDF;
  LODWORD(v300) = v387[BYTE2(v300) ^ 0xA0];
  v289[1] = ((v300 >> 3) | (32 * v300)) ^ 0x20;
  v289[6] = v385[BYTE1(v302) ^ 0xEALL] ^ 0xBB;
  LODWORD(v304) = v387[BYTE2(v304) ^ 0xA1];
  v289[9] = ((v304 >> 3) | (32 * v304)) ^ 0xCE;
  v390 = (((v539 ^ 0xED6E5127) - 1108783116) ^ ((v539 ^ 0x3A4140F2) + 1791385127) ^ ((v539 ^ 0x6C6770C0) + 1021341205)) + 689420210;
  v289[14] = v385[BYTE1(v151) ^ 0xDALL] ^ 0xFC;
  v391 = v290 + 350697348 < v390;
  if (v390 < 0x14E73774 != (v290 + 350697348) < 0x14E73774)
  {
    v391 = v390 < 0x14E73774;
  }

  LODWORD(v457) = v564 - 1471455207;
  HIDWORD(v514) = v455 ^ 0x77;
  return (*(*(v39 - 208) + 8 * ((54 * !v391) ^ HIDWORD(v463))))(559046238, 103, v386, v289, v385, 246, 2276915994, v387, a2, v393, v394, v396, v398, v400, v401, v402, v403, v404, v405, v407, v410, v412, v413, v415, v418, v419, v421, v424, v427, v430, v433, v438, v441, v445, v448, v450, v453, v455, v457, v461, v463, a35, a36, a37, v468, v472, v475, v479, v484, v488, v493, v498, v502, v507, v511, v514, v518, v523, v526, v529);
}

uint64_t sub_D22C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = v4 < a3;
  if (v7 == ((v5 + 721) ^ 0x4FFu) + v3 > 0x587DE721)
  {
    v7 = a3 + v3 + 1 < v4;
  }

  return (*(v6 + 8 * ((v7 * (v5 ^ 0x3A9)) ^ v5)))();
}

uint64_t sub_D308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = ((((v7 ^ 0xC6) + 58) ^ ((v7 ^ 0xE3) + 29) ^ (((((v5 + 102) | v8) - 39) ^ v7) + 46)) - 93);
  v10 = (v6 + 79);
  v11 = (v10 < 0xAC) ^ (v9 < 0xAC);
  v12 = v9 > v10;
  if (v11)
  {
    v12 = v9 < 0xAC;
  }

  return (*(a5 + 8 * ((1977 * v12) ^ v5)))();
}

uint64_t sub_D4CC@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v6 = *(v3 + 312);
  if ((v6 - 2) < 3)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v6 == 1)
  {
    __asm { BRAA            X10, X17 }
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_D810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = v8;
  a8[1] = v8;
  return sub_17554(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_D97C@<X0>(int a1@<W2>, int a2@<W8>)
{
  v5 = v2 ^ 0x24;
  v7 = *v3 != ((v5 - 1204) | 0xC0E) + 1406631114 || a2 != a1 + ((v5 + 752897700) & 0xD31FAEAF) - 521;
  return (*(v4 + 8 * (((8 * v7) | (v7 << 8)) ^ v5)))();
}

uint64_t sub_D9D0@<X0>(int a1@<W8>)
{
  v6 = v3 + 24 * v1;
  *v6 = v2 + 2770;
  *(v6 + 8) = 0xC4141C8D56F894BLL;
  *(v6 + 16) = 0;
  LODWORD(v6) = v1 + ((2 * a1) ^ 0xEBEu) - 1931 == v4;
  return (*(v5 + 8 * ((v6 | (2 * v6)) ^ a1)))();
}

uint64_t sub_DA20@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  LODWORD(STACK[0x448]) = 0;
  v4 = STACK[0x3B0];
  v5 = LODWORD(STACK[0x448])++;
  *v4 = v5 + 1;
  v6 = *STACK[0x3C0];
  v7 = 1280404519 * ((v2 - ((v3 - 240) | v2) + ((v3 - 240) | 0xFC6B557D13D101F5)) ^ 0xD0B4D2A187A1AE98);
  *(v3 - 224) = ((a2 - 1818756358) | 0x196) - v7;
  *(v3 - 216) = v6 + v7;
  *(v3 - 240) = v7 ^ 0x13FF;
  *(v3 - 232) = (a2 - 1538787282) ^ v7;
  *(v3 - 228) = (a2 - 1818756173) ^ v7;
  *(v3 - 204) = -1280404519 * ((v2 - ((v3 - 240) | v2) + ((v3 - 240) | 0x13D101F5)) ^ 0x87A1AE98);
  *(v3 - 200) = a2 - 1818756358 - v7;
  v8 = (*(a1 + 8 * (a2 ^ 0x53A)))(v3 - 240);
  return (*(STACK[0x430] + 8 * *(v3 - 208)))(v8);
}

uint64_t sub_DA28@<X0>(unint64_t a1@<X2>, unint64_t a2@<X3>, unint64_t a3@<X4>, unint64_t a4@<X5>, unint64_t a5@<X7>, int a6@<W8>)
{
  *&STACK[0x420] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x410] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3E0] = vdupq_n_s64(0xFA8D2E552993539CLL);
  *&STACK[0x3F0] = vdupq_n_s64(0x572D1AAD66CAC63uLL);
  v16 = (a6 - 1674) | 0x680;
  *&STACK[0x3C0] = vdupq_n_s64(a2);
  *&STACK[0x3D0] = vdupq_n_s64(a1);
  *&STACK[0x3B0] = vdupq_n_s64(a3);
  v17 = vdupq_n_s64(a4);
  v18 = vdupq_n_s64(a5);
  v19 = vdupq_n_s64(v12);
  v20 = v8 - v14 + v11;
  v21 = vdupq_n_s64(v13);
  v22 = vdupq_n_s64(v15);
  v23 = vdupq_n_s64(v7);
  v24 = vdupq_n_s64(0x8855C57B8C9CAF8FLL);
  v25 = vdupq_n_s64(0x86DDB2288368D06BLL);
  v26 = vdupq_n_s64(0xF66DF487EFFB0FF0);
  v27 = vdupq_n_s64(0x84C905BC08027808);
  v28 = vdupq_n_s64(0x505F90DE67A5454EuLL);
  v29 = vdupq_n_s64(0x4ECDBB75EB25F542uLL);
  v30 = vdupq_n_s64(0xBD87EC7090AAB48ALL);
  v31 = vdupq_n_s64(0x213C09C7B7AAA5BAuLL);
  v32 = v6 + v9 + v10;
  v33 = vdupq_n_s64(0x16B2900D6A0AD68FuLL);
  v34 = vdupq_n_s64(0xE2A4B35BAE269AA1);
  *&STACK[0x3A0] = xmmword_F8190;
  v35 = v32 + v20 + ((v16 + 164952190) & 0xF62B0757);
  v36.i64[0] = v32 + v20 + 1;
  v36.i64[1] = v32 + v20;
  v37.i64[0] = v32 + v20 + 3;
  v37.i64[1] = v32 + v20 + 2;
  v38.i64[0] = v32 + v20 + 5;
  v38.i64[1] = v32 + v20 + 4;
  v39.i64[0] = v35 - 1872;
  v39.i64[1] = v32 + v20 + 6;
  v40 = vandq_s8(v39, *&STACK[0x420]);
  v41 = vandq_s8(v38, *&STACK[0x420]);
  v42 = vandq_s8(v37, *&STACK[0x420]);
  v43 = vandq_s8(v36, *&STACK[0x420]);
  v44 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v48 = vaddq_s64(v47, *&STACK[0x3F0]);
  v49 = vaddq_s64(v46, *&STACK[0x3F0]);
  v50 = vaddq_s64(v45, *&STACK[0x3F0]);
  v51 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3E0], v47), *&STACK[0x3D0]), v48), vandq_s8(v48, *&STACK[0x3C0]));
  v52 = vaddq_s64(v44, *&STACK[0x3F0]);
  v53 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3E0], v44), *&STACK[0x3D0]), v52);
  v54 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3E0], v46), *&STACK[0x3D0]), v49), vandq_s8(v49, *&STACK[0x3C0]));
  v55 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3E0], v45), *&STACK[0x3D0]), v50), vandq_s8(v50, *&STACK[0x3C0]));
  v56 = vsubq_s64(v53, vandq_s8(v52, *&STACK[0x3C0]));
  v57 = veorq_s8(v56, *&STACK[0x3B0]);
  v58 = veorq_s8(v55, *&STACK[0x3B0]);
  v59 = veorq_s8(v55, v17);
  v60 = veorq_s8(v56, v17);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v60);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v59);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v62, v62), v18), v62), v19), v21);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), v18), v61), v19), v21);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66);
  v69 = vaddq_s64(v67, v65);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(v69, vandq_s8(vaddq_s64(v69, v69), v22)), v23), v24);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(v68, vandq_s8(vaddq_s64(v68, v68), v22)), v23), v24);
  v72 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v73 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v74 = veorq_s8(v70, v72);
  v75 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74);
  v77 = veorq_s8(vaddq_s64(v75, v73), v25);
  v78 = veorq_s8(v76, v25);
  v79 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v26), v84), v27), v28);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), v26), v83), v27), v28);
  v87 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89);
  v92 = veorq_s8(vaddq_s64(v90, v88), v29);
  v93 = veorq_s8(v91, v29);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v95 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v96 = veorq_s8(v92, v94);
  v97 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v96);
  v99 = vaddq_s64(v97, v95);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), v30), v99), v31), v33);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), v30), v98), v31), v33);
  v102 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v103 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v139.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), veorq_s8(v100, v102)), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), *&STACK[0x410])));
  v139.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v103), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x410])));
  v104 = veorq_s8(v54, *&STACK[0x3B0]);
  v105 = veorq_s8(v54, v17);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), v18), v106), v19), v21);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), v22)), v23), v24);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v25);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v114, v114), v26), v114), v27), v28);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v29);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), v30), v119), v31), v33);
  v139.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), *&STACK[0x410])));
  v121 = veorq_s8(v51, *&STACK[0x3B0]);
  v122 = veorq_s8(v51, v17);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), v18), v123), v19), v21);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(v126, v126), v22)), v23), v24);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v25);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), v26), v131), v27), v28);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v29);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), v30), v136), v31), v33);
  v139.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL))), v34), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), *&STACK[0x410])));
  *(v35 - 1879) = vrev64_s8(*&vqtbl4q_s8(v139, *&STACK[0x3A0]));
  return (*(STACK[0x430] + 8 * ((2 * (-v14 != 8 - (v8 & 0xFFFFFFF8))) | (8 * (-v14 != 8 - (v8 & 0xFFFFFFF8))) | v16)))();
}

uint64_t sub_E144@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = v9 - 1;
  v19 = __ROR8__((a9 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (2 * (v10 ^ a1) + 0x31E8616327758806 - v19 - 2854) & a3 | (v19 + a5) & a4;
  v21 = v20 ^ a6;
  v22 = v20 ^ a2;
  v23 = __ROR8__(v21, 8);
  v24 = (v23 + v22 - (v12 & (2 * (v23 + v22))) + v13) ^ v14;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = __ROR8__(((v15 & (2 * (v26 + v25))) - (v26 + v25) + v16) ^ v17, 8);
  v28 = ((v15 & (2 * (v26 + v25))) - (v26 + v25) + v16) ^ v17 ^ __ROR8__(v25, 61);
  v29 = (v27 + v28) ^ 0xAFC44C9EE43CCADALL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (a8 - ((v31 + v30) ^ 0x2CFD3C6D034E92BELL | a8) + ((v31 + v30) ^ 0x2CFD3C6D034E92BELL | 0xD0DFF0453BE51510)) ^ 0x6CDE7E449AD50C82;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xD0E02262DF67D69;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x72E8FC861E8794C0;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  *(a9 + v18) = (((v38 + v37 - ((2 * (v38 + v37)) & 0x1670D4797F257C6ALL) - 0x74C795C3406D41CBLL) ^ 0xE77C1B7F9E56D10FLL) >> (8 * ((a9 + v18) & 7))) ^ *(v11 + v18);
  return (*(a7 + 8 * ((3370 * (v18 != 0)) ^ v10)))();
}

uint64_t sub_E2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x13E0] = v4;
  v5 = STACK[0x628];
  STACK[0x13E8] = STACK[0x628];
  return (*(a3 + 8 * (((v4 - v5 > 9) * ((((v3 - 7) | 0x906) - 2625) ^ 0x87A)) ^ v3)))();
}

uint64_t sub_E338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0xAD0] + 24);
  STACK[0xB30] = v8;
  return (*(a7 + 8 * (((((v7 + 590872569) & 0xDCC7FFBE ^ 0xFFFFF5DC) + ((v7 - 1141110143) & 0x4403EBFF)) * (v8 == 0)) ^ v7)))();
}

uint64_t sub_E408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, _DWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = *a10 + a9;
  v36 = (v34 & 0xF) != 0xB || v34 == ((7 * (v33 ^ 0xA24)) ^ 0xDB95B42E);
  return (*(a2 + 8 * ((221 * v36) ^ v33)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_E460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *(v9 + 688) = 0;
  v11 = vdupq_n_s32(0xEF543DDB);
  v12 = vdupq_n_s32(0x22149BFEu);
  v13 = vdupq_n_s32(0xBBB42E0E);
  v14 = vdupq_n_s32(0x1C31AA94u);
  *(v9 + 692) = v11;
  *(v9 + 708) = v11;
  *(v9 + 820) = v12;
  *(v9 + 836) = v12;
  *(v9 + 948) = v13;
  *(v9 + 964) = v13;
  *(v9 + 1076) = v14;
  *(v9 + 1092) = v14;
  return (*(v10 + 8 * ((a9 + 1148101132) & 0xBB915DEB | (8 * (((a9 + 1148101132) & 0xBB915DEB) != 2235)))))();
}

uint64_t sub_E524(int a1, unsigned int a2, int a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v22 = ((((v12 & v9 ^ (a3 + 237)) + (v12 & v9)) ^ a3) + (v8 & v12)) * v13;
  v23 = a5 + (*(v19 + v22 - ((((v22 >> 1) * v10) >> 32) >> 7) * v15) ^ (16 * (*(v19 + v20 + (v12 >> 4) * v13 - (((((v20 + (v12 >> 4) * v13) >> 1) * v10) >> 32) >> 7) * v15) & 0xF)) ^ v11) * a1;
  v24 = (*(*(&off_103F00 + a7) + (v23 - ((v23 * a8) >> 32) * v16)) ^ v17) * v13;
  *(v19 + v12 * v13 + 307195 - (((((v12 * v13 + 307195) >> 1) * v10) >> 32) >> 7) * v15) = *(v19 + (v24 - ((v24 * v14) >> 32) * v15));
  return (*(v21 + 8 * (((v12 == 255) * v18) ^ a2)))();
}

uint64_t sub_E550(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_E568(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 99;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

void sub_E588(_DWORD *a1)
{
  v1 = *a1 ^ (772352333 * ((2 * (a1 & 0x7A86A228) - a1 - 2055643689) ^ 0x613B556C));
  __asm { BRAA            X1, X17 }
}

uint64_t sub_E8AC@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = (v2 - 2790) | a2;
  v4 = STACK[0xFC0];
  v5 = *STACK[0x1038];
  STACK[0x7A8] = *(a1 + 8 * v3);
  STACK[0xF28] = v5;
  LODWORD(STACK[0xE5C]) = 1;
  STACK[0x1070] = v4;
  return (*(a1 + 8 * (((v4 == 0) * ((((v3 + 1937) | 0x324) - 1249) ^ 0x602)) ^ (((v3 + 1937) | 0x324) - 665))))();
}

uint64_t sub_E910(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  *&STACK[0x330] = vdupq_n_s64(0x38uLL);
  *&STACK[0x340] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x410] = vdupq_n_s64(0x572D1AAD66CAC63uLL);
  *&STACK[0x3E0] = vdupq_n_s64(a3);
  *&STACK[0x3F0] = vdupq_n_s64(0xFA8D2E552993539CLL);
  *&STACK[0x3D0] = vdupq_n_s64(a4);
  *&STACK[0x310] = vdupq_n_s64(a6);
  *&STACK[0x320] = vdupq_n_s64(a5);
  v18 = v14 + v11 + v13 - 8;
  *&STACK[0x2F0] = vdupq_n_s64(v15);
  *&STACK[0x300] = vdupq_n_s64(a8);
  *&STACK[0x2D0] = vdupq_n_s64(v17);
  *&STACK[0x2E0] = vdupq_n_s64(v16);
  *&STACK[0x3B0] = vdupq_n_s64(0x8855C57B8C9CAF8FLL);
  *&STACK[0x3C0] = vdupq_n_s64(v9);
  *&STACK[0x3A0] = vdupq_n_s64(0xF66DF487EFFB0FF0);
  *&STACK[0x2B0] = vdupq_n_s64(0x84C905BC08027808);
  *&STACK[0x2C0] = vdupq_n_s64(0x86DDB2288368D06BLL);
  *&STACK[0x290] = vdupq_n_s64(0x4ECDBB75EB25F542uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x505F90DE67A5454EuLL);
  *&STACK[0x270] = vdupq_n_s64(0x213C09C7B7AAA5BAuLL);
  *&STACK[0x280] = vdupq_n_s64(0xBD87EC7090AAB48ALL);
  *&STACK[0x250] = vdupq_n_s64(0xE2A4B35BAE269AA1);
  *&STACK[0x260] = vdupq_n_s64(0x16B2900D6A0AD68FuLL);
  *&STACK[0x390] = xmmword_F8180;
  v19 = *&STACK[0x2F0];
  v21 = *&STACK[0x280];
  v20 = *&STACK[0x290];
  v22 = *&STACK[0x260];
  v23 = *&STACK[0x270];
  v24 = *&STACK[0x250];
  v25 = *&STACK[0x330];
  *&v26 = v8 + v12 + v18 + 1;
  *(&v26 + 1) = v8 + v12 + v18;
  *&STACK[0x380] = v26;
  *&v26 = *(&v26 + 1) + 3;
  *(&v26 + 1) += 2;
  *&STACK[0x370] = v26;
  *&v26 = v8 + v12 + v18 + 5;
  *(&v26 + 1) = v8 + v12 + v18 + 4;
  *&STACK[0x420] = v26;
  v27.i64[0] = v8 + v12 + v18 + 9;
  v27.i64[1] = v8 + v12 + v14 + v11 + v13;
  v28.i64[0] = v8 + v12 + v18 + 11;
  v28.i64[1] = v8 + v12 + v18 + 10;
  v29.i64[0] = v8 + v12 + (v10 + 1016) + v18 - 3268;
  v29.i64[1] = v8 + v12 + v18 + 12;
  v30.i64[0] = v8 + v12 + v18 + 15;
  v30.i64[1] = v8 + v12 + v18 + 14;
  v31 = *&STACK[0x340];
  v32 = vandq_s8(v30, *&STACK[0x340]);
  v33 = vandq_s8(v29, *&STACK[0x340]);
  v34 = vandq_s8(v28, *&STACK[0x340]);
  v35 = vandq_s8(v27, *&STACK[0x340]);
  v36 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v40 = *&STACK[0x410];
  v41 = vaddq_s64(v39, *&STACK[0x410]);
  v42 = vaddq_s64(v38, *&STACK[0x410]);
  v43 = vaddq_s64(v37, *&STACK[0x410]);
  v44 = *&STACK[0x3E0];
  v45 = *&STACK[0x3F0];
  v46 = *&STACK[0x3D0];
  *&STACK[0x360] = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3F0], v39), *&STACK[0x3E0]), v41), vandq_s8(v41, *&STACK[0x3D0]));
  v47 = vaddq_s64(v36, v40);
  v48 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v45, v38), v44), v42), vandq_s8(v42, v46));
  v49 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v45, v37), v44), v43), vandq_s8(v43, v46));
  v50 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v45, v36), v44), v47), vandq_s8(v47, v46));
  v51 = veorq_s8(v50, *&STACK[0x320]);
  v52 = veorq_s8(v49, *&STACK[0x320]);
  v53 = *&STACK[0x320];
  v54 = veorq_s8(v49, *&STACK[0x310]);
  v55 = veorq_s8(v50, *&STACK[0x310]);
  v56 = *&STACK[0x310];
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v54);
  v59 = *&STACK[0x300];
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58, v58), *&STACK[0x300]), v58), v19), *&STACK[0x2E0]);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57, v57), *&STACK[0x300]), v57), v19), *&STACK[0x2E0]);
  v62 = *&STACK[0x2E0];
  v63 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v64 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v65 = veorq_s8(v60, v63);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v65);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v64);
  v68 = *&STACK[0x2D0];
  v69 = *&STACK[0x3C0];
  v70 = veorq_s8(vaddq_s64(vsubq_s64(v67, vandq_s8(vaddq_s64(v67, v67), *&STACK[0x2D0])), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(v66, vandq_s8(vaddq_s64(v66, v66), *&STACK[0x2D0])), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v72 = *&STACK[0x3B0];
  v73 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v74 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v75 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74);
  v77 = veorq_s8(vaddq_s64(v75, v73), *&STACK[0x2C0]);
  v78 = veorq_s8(v76, *&STACK[0x2C0]);
  v79 = *&STACK[0x2C0];
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = *&STACK[0x3A0];
  v86 = *&STACK[0x2A0];
  v87 = *&STACK[0x2B0];
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), *&STACK[0x3A0]), v84), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), *&STACK[0x3A0]), v83), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v91 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91);
  v94 = veorq_s8(vaddq_s64(v92, v90), v20);
  v95 = veorq_s8(v93, v20);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v97 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v98 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v97);
  v100 = vaddq_s64(v98, v96);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), v21), v100), v23), v22);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), v21), v99), v23), v22);
  v103 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v104 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v97.i64[0] = v8 + v12 + v18 + 7;
  v97.i64[1] = v8 + v12 + v18 + 6;
  *&STACK[0x350] = v97;
  v205.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), veorq_s8(v101, v103)), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v25)));
  v205.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v104), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v25)));
  v105 = veorq_s8(v48, v53);
  v106 = veorq_s8(v48, v56);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v59), v107), v19), v62);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(v110, vandq_s8(vaddq_s64(v110, v110), v68)), v69), v72);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v79);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v115, v115), v85), v115), v87), v86);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v20);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), v21), v120), v23), v22);
  v122 = vandq_s8(v97, v31);
  v205.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v25)));
  v123 = veorq_s8(*&STACK[0x360], v53);
  v124 = veorq_s8(*&STACK[0x360], v56);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), v59), v125), v19), v62);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), v68)), v69), v72);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v79);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), v85), v133), v87), v86);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135), v20);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v138, v138), v21), v138), v23), v22);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v141 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v142 = vandq_s8(*&STACK[0x420], v31);
  v143 = vaddq_s64(v141, v140);
  v144 = vandq_s8(*&STACK[0x370], v31);
  v205.val[0] = vshlq_u64(veorq_s8(v143, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v25)));
  v145 = vandq_s8(*&STACK[0x380], v31);
  v146 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v150 = vaddq_s64(v149, *&STACK[0x410]);
  v151 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3F0], v149), *&STACK[0x3E0]), v150), vandq_s8(v150, *&STACK[0x3D0]));
  v152 = vaddq_s64(v148, *&STACK[0x410]);
  v153 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3F0], v148), *&STACK[0x3E0]), v152), vandq_s8(v152, *&STACK[0x3D0]));
  v154 = vaddq_s64(v147, *&STACK[0x410]);
  v155 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3F0], v147), *&STACK[0x3E0]), v154), vandq_s8(v154, *&STACK[0x3D0]));
  v156 = vaddq_s64(v146, *&STACK[0x410]);
  v157 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3F0], v146), *&STACK[0x3E0]), v156), vandq_s8(v156, *&STACK[0x3D0]));
  v156.i64[0] = vqtbl4q_s8(v205, *&STACK[0x390]).u64[0];
  v205.val[0] = veorq_s8(v157, v53);
  v205.val[1] = veorq_s8(v155, v53);
  v205.val[2] = veorq_s8(v155, v56);
  v205.val[3] = veorq_s8(v157, v56);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[1], v205.val[1]), v59), v205.val[1]), v19), v62);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[0], v205.val[0]), v59), v205.val[0]), v19), v62);
  v158 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v158);
  v159 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(v159, v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v205.val[1], vandq_s8(vaddq_s64(v205.val[1], v205.val[1]), v68)), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v205.val[0], vandq_s8(vaddq_s64(v205.val[0], v205.val[0]), v68)), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v160 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v160);
  v161 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = veorq_s8(vaddq_s64(v161, v205.val[2]), v79);
  v205.val[0] = veorq_s8(v205.val[0], v79);
  v162 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v162);
  v163 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(v163, v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[1], v205.val[1]), *&STACK[0x3A0]), v205.val[1]), v87), v86);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[0], v205.val[0]), *&STACK[0x3A0]), v205.val[0]), v87), v86);
  v164 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v164);
  v165 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = veorq_s8(vaddq_s64(v165, v205.val[2]), v20);
  v205.val[0] = veorq_s8(v205.val[0], v20);
  v166 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v166);
  v167 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(v167, v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[1], v205.val[1]), v21), v205.val[1]), v23), v22);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[0], v205.val[0]), v21), v205.val[0]), v23), v22);
  v168 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), veorq_s8(v205.val[1], v168)), v24), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v25)));
  v205.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[2]), v24), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), v25)));
  v169 = veorq_s8(v153, v53);
  v170 = veorq_s8(v153, v56);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), v59), v171), v19), v62);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(v174, vandq_s8(vaddq_s64(v174, v174), v68)), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v79);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v179, v179), *&STACK[0x3A0]), v179), v87), v86);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v20);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184, v184), v21), v184), v23), v22);
  v205.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x420], 3uLL), v25)));
  v186 = veorq_s8(v151, v53);
  v187 = veorq_s8(v151, v56);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188, v188), v59), v188), v19), v62);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(v191, vandq_s8(vaddq_s64(v191, v191), v68)), *&STACK[0x3C0]), *&STACK[0x3B0]);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193), v79);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v196, v196), *&STACK[0x3A0]), v196), v87), v86);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198), v20);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v201, v201), v21), v201), v23), v22);
  v205.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v25)));
  v156.i64[1] = vqtbl4q_s8(v205, *&STACK[0x390]).u64[0];
  v203 = vrev64q_s8(v156);
  *(v8 + v12 + v18) = vextq_s8(v203, v203, 8uLL);
  return (*(STACK[0x430] + 8 * ((755 * ((v11 & 0xFFFFFFF0) == 16)) ^ v10)))();
}

uint64_t sub_F644(uint64_t a1)
{
  *(a1 + 80) = 0;
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  *(a1 + 72) = 0;
  v3 = STACK[0xEA0];
  *(v3 + 84) = 7;
  *(v3 + 104) = 0;
  *(v3 + 88) = v2;
  *(v3 + 96) = v2;
  *(v3 + 108) = 28;
  *v1 = v3;
  return (STACK[0xA98])();
}

uint64_t sub_F6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 633475633;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v4 = *(a1 + 96) + 528;
  v5 = 475723357 * ((2120333187 - (v10 | 0x7E61B783) + (v10 | 0x819E487C)) ^ 0x9B226E6D);
  v11 = *(a2 + 8) + (*(a2 + 4) - v3);
  v12 = v4;
  v10[0] = (v3 - 850958822) ^ v5;
  v10[1] = v5 ^ 0xD9F;
  (*(a3 + 30264))(v10);
  v8 = v10[2];
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v3);
  return (v8 - 683473817);
}

uint64_t sub_F6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 539293837 * ((v9 - 240) ^ 0xBD01CAF7);
  *(v9 - 232) = v10 + v8 - 130;
  LOWORD(STACK[0x2764]) = 3706 - v10;
  *(v9 - 224) = &STACK[0xC08];
  v11 = (*(a5 + 8 * (v8 + 1661)))(v9 - 240);
  v12 = STACK[0x430];
  *(STACK[0x208] + 1336 * v7 + 8) = STACK[0xC08];
  v13 = *v5;
  *(v6 + 4 * v13) *= *(v6 + 4 * v13);
  *v5 = (v13 + 1) % (v8 - 2042);
  return (*(v12 + 8 * ((((v8 + 1734162431) & 0x98A2CE3F) - 3398) | v8)))(v11, 2612310806);
}

uint64_t sub_F77C(int a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, int a6, uint64_t a7)
{
  v12 = a6 + 16;
  v13 = v8 - 16;
  v14 = a7 ^ *(v10 + 8 * ((v13 & a1 | v12 & 0x90) ^ 0x86FBAFDB));
  *(v11 + 8 * (v9 ^ a5)) = a7 ^ *(v10 + 8 * (((v13 + 8) & a1 | (v12 - 8) & (a4 - 3201)) ^ 0x86FBAFDB));
  *(v11 + 8 * ((v9 + 1) ^ a5)) = v14;
  return (*(STACK[0x430] + 8 * ((233 * (v9 == 62)) ^ v7)))();
}

uint64_t sub_F788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x730] = STACK[0x10F0];
  v9 = STACK[0xA58];
  LODWORD(STACK[0xBAC]) = v7;
  return (*(a7 + 8 * (((v8 ^ 0x3FF) - 2740) ^ ((v8 ^ 0x3FF) - 1277) ^ 0x264 ^ ((v9 == 0) * ((2 * (((v8 ^ 0x3FF) - 2740) ^ 0x5A2)) ^ 0x52D)))))();
}

uint64_t sub_F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *v8;
  STACK[0xED0] = 0;
  STACK[0x4A8] = 0;
  return (*(a7 + 8 * ((2 * (((v9 == 0) ^ (v7 - 6 + v7 - 5)) & 1)) & 0xBF | ((((v9 == 0) ^ (v7 - 6 + v7 - 5)) & 1) << 6) | v7)))();
}

uint64_t sub_F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0xC88];
  STACK[0x590] = STACK[0xC88];
  LODWORD(STACK[0xB84]) = 1227520235;
  STACK[0x848] = v8;
  LODWORD(STACK[0xA84]) = -1340669493;
  LODWORD(STACK[0xFEC]) = 1953241468;
  return (*(a7 + 8 * (((v9 == 0) * (5 * (v7 ^ 0x297) + 1427 * (v7 ^ 0x29C) - 2882)) ^ v7 ^ 0x459)))();
}

uint64_t sub_F984(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, int a7)
{
  STACK[0x3C0] = v11;
  v12 = (v7 ^ 0x257) + 829917 + (a7 - (v10 + v8)) * a5;
  *(STACK[0x598] + v12 % ((a7 & a1 ^ a1) + (a7 & a1))) = *(STACK[0x598] + v12 - ((((v12 >> 1) * a6) >> 32) >> 7) * a1) ^ 0x80;
  LODWORD(STACK[0x580]) = (v7 ^ 0x257) - 471;
  LODWORD(STACK[0x3D4]) = v10 + 64;
  return (*(v9 + 8 * ((51 * (LODWORD(STACK[0x3D0]) - (v10 + v8) != 199623902)) ^ v7 ^ 0x257)))();
}

uint64_t sub_FA6C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v2 = (a2 + 2063636202) & 0x84FF66CD;
  v3 = (v2 ^ 0x644) + LODWORD(STACK[0x754]);
  LODWORD(STACK[0x754]) = v3;
  return (*(a1 + 8 * ((3803 * (v3 == v2 + ((137 * (v2 ^ 0x64C)) ^ 0xFFFFF00B) + 1249)) ^ v2)))();
}

uint64_t sub_FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = v8 + v11 + v9 - 0x730B3F8250B15D30;
  v17 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = (((((v12 + 1781) | 0x200u) ^ 0xFA8D2E5529935D9FLL) - v17) & a3) + v17 + 0x572D1AAD66CAC63 - ((v17 + 0x572D1AAD66CAC63) & a4);
  v19 = __ROR8__(v18 ^ a5, 8);
  v20 = v18 ^ a6;
  v21 = ((a8 & (2 * (v19 + v20))) - (v19 + v20) + v13) ^ v14;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v23 + v22 - (v15 & (2 * (v23 + v22))) + v10) ^ 0x8855C57B8C9CAF8FLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x86DDB2288368D06BLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) | 0xF66DF487EFFB0FF0) - (v28 + v27) - 0x7B36FA43F7FD87F8) ^ 0x505F90DE67A5454ELL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x4ECDBB75EB25F542;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  *v16 = ((__ROR8__((((2 * (v33 + v32)) & 0xBD87EC7090AAB48ALL) - (v33 + v32) + 0x213C09C7B7AAA5BALL) ^ 0x16B2900D6A0AD68FLL, 8) + ((((2 * (v33 + v32)) & 0xBD87EC7090AAB48ALL) - (v33 + v32) + 0x213C09C7B7AAA5BALL) ^ 0x16B2900D6A0AD68FLL ^ __ROR8__(v32, 61))) ^ 0xE2A4B35BAE269AA1) >> (8 * (v16 & 7u));
  return (*(a7 + 8 * ((3180 * (v11 == 1)) ^ v12)))();
}

uint64_t sub_FEB4()
{
  v2 = STACK[0x600];
  *STACK[0xA18] = v0 << LODWORD(STACK[0x600]);
  v3 = STACK[0x8D8];
  *v1 -= v2;
  return v3();
}

uint64_t sub_FEE4()
{
  *&STACK[0x390] = vdupq_n_s64(0x20F0084EEB0498C4uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0x504CFCA82F57270EuLL);
  *&STACK[0x3E0] = vdupq_n_s64(0x6C44714321C46F3AuLL);
  return sub_21378();
}

uint64_t sub_100C0(uint64_t a1, uint64_t a2)
{
  v8 = (v4 + v6 + 1152);
  v9 = *(v4 + v3 - 15);
  *(v8 - 1) = *(v4 + v3 - 31);
  *v8 = v9;
  return (*(v2 + 8 * ((((v4 & 0xFFFFFFE0) == 32) * (11 * (v7 ^ (v5 + 758)) - 3535)) ^ (v7 - 1244314853))))(a1, a2, (v4 & 0xFFFFFFE0) - 32);
}

void sub_10208(int a1@<W4>, int a2@<W5>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  v19 = STACK[0x230];
  LODWORD(STACK[0x3D0]) = v7 - ((2 * v7) & 0xFFFFFFD6) - 21;
  LODWORD(STACK[0x320]) = v6 + (v8 | ~(2 * v6)) + 98;
  LODWORD(STACK[0x3F0]) = v5 - ((2 * v5) & 0xFFFFFFDC) - 18;
  LODWORD(STACK[0x3E0]) = v10 - ((2 * v10) & 0xFFFFFFD8) + 108;
  LODWORD(STACK[0x380]) = v18 - ((2 * v18) & 0x78) + 60;
  LODWORD(STACK[0x310]) = a5 - ((2 * a5) & 0xA) + 5;
  LODWORD(STACK[0x300]) = v17 - ((2 * v17) & 0xFFFFFFA6) - 45;
  LODWORD(STACK[0x3C0]) = v16 - ((2 * v16) & 0x12) + 9;
  LODWORD(STACK[0x330]) = v15 - ((2 * v15) & 0x62) + 49;
  LODWORD(STACK[0x3A0]) = v13 - ((2 * v13) & 0x46) + 35;
  LODWORD(STACK[0x3B0]) = v12 - ((2 * v12) & 0xFFFFFFE3) - 15;
  LODWORD(STACK[0x350]) = v11 - ((2 * v11) & 0x12) - 119;
  LODWORD(STACK[0x340]) = a4 - ((2 * a4) & 0x70) - 72;
  LODWORD(STACK[0x390]) = a3 - ((2 * a3) & 0x18) - 116;
  LODWORD(STACK[0x360]) = a2 - ((2 * a2) & 0xFFFFFFCA) - 27;
  LODWORD(STACK[0x370]) = a1 - ((2 * a1) & 0xFFFFFFC4) + 98;
  LODWORD(STACK[0x410]) = v9 + 16;
  LODWORD(STACK[0x420]) = 1;
  v20 = v14[12];
  STACK[0x2F0] = v20;
  v21 = v14[9];
  v22 = v14[3];
  v23 = v21 ^ v22;
  v24 = v22;
  STACK[0x240] = v22;
  STACK[0x250] = v21;
  v25 = v14[1];
  v26 = v14[6];
  v27 = v14[1];
  STACK[0x270] = v25;
  STACK[0x2B0] = v26;
  v28 = v23 ^ v25 ^ v26;
  v29 = v14[2];
  v30 = *v14;
  v31 = v29 ^ v30;
  STACK[0x220] = v30;
  v32 = v29;
  STACK[0x210] = v29;
  v33 = v14[5];
  v34 = v14[5];
  STACK[0x280] = v33;
  v35 = v14[7];
  v36 = v28 ^ v31 ^ v33 ^ v35 ^ (v20 - ((2 * v20) & 0x40) - 96);
  v37 = v14[11];
  v38 = v14[10];
  STACK[0x290] = v38;
  STACK[0x2E0] = v37;
  v39 = v14[4];
  v40 = v14[4];
  STACK[0x260] = v39;
  v41 = v14[13];
  v42 = v14[8];
  v43 = v30 ^ 0xB5;
  LODWORD(v30) = v19;
  v44 = *(&off_103F00 + v19 - 1615) - 4;
  v45 = *&v44[8 * (v26 ^ 0xB3)];
  LODWORD(v26) = v14[15];
  v46 = v14[14];
  v47 = v46 ^ v26 ^ *&v44[8 * (v35 ^ 0x1B2)] ^ *&v44[8 * (v27 ^ 0xB4)] ^ *&v44[8 * v43] ^ *&v44[8 * (v32 ^ 0xB7)] ^ *&v44[8 * (v24 ^ 0x1B6)] ^ *&v44[8 * (v40 ^ 0xB1)] ^ *&v44[8 * (v34 ^ 0xB0)] ^ v45 ^ ((-(v36 ^ v37 ^ v38 ^ v39 ^ 0xFFFFFFA0) ^ (v41 - (v36 ^ v37 ^ v38 ^ v39 ^ 0xFFFFFFA0 ^ v41)) ^ 0xFFFFFFF6 ^ ((v36 ^ v37 ^ v38 ^ v39 ^ 0xFFFFFFA0) - ((2 * (v36 ^ v37 ^ v38 ^ v39 ^ 0xFFFFFFA0)) & 0xFFFFFFEC) - 10)) + v41);
  LODWORD(v39) = (v47 & 0x6E ^ 0xFFFFFFF6) & (v47 & 0xFFFFFF91 ^ 0xFFFFFFFE);
  v48 = v47 & 1 | 8;
  v49 = *&v44[8 * (v26 ^ 0xB2)];
  LODWORD(v49) = v48 ^ *&v44[8 * (v21 ^ 0x1B4)] ^ *&v44[8 * (v42 ^ 0xB5)] ^ *&v44[8 * (v38 ^ 0xB7)] ^ *&v44[8 * (v37 ^ 0x1B6)] ^ *&v44[8 * (v20 ^ 0xB1)] ^ *&v44[8 * (v41 ^ 0xB0)] ^ *&v44[8 * (v46 ^ 0x1B3)] ^ (v49 - ((2 * v49) & 0xFFFFFF9C) + 78) ^ v39;
  v50 = v49 ^ v42;
  v51 = v50 ^ 0xFFFFFFB0;
  v52 = (v49 ^ v42);
  v53 = *(&off_103F00 + v30 - 1464) - 8;
  LODWORD(v26) = v50 ^ 0xFFFFFFB0 ^ v53[v52 ^ 0xE0];
  LODWORD(STACK[0x2D0]) = v26;
  v54 = (((v26 ^ 0x55u) << 8) ^ 0x2588BA3726D64187) & (v26 ^ 0xBD8CBBBF67FFFFD5) ^ ((v26 ^ 0x55) & 0x78 | 0x980401884129C900);
  v55 = ((v54 << 16) ^ 0x701EDC33740D66E3) & (v54 ^ 0x4273444098009100) ^ v54 & 0x340C00336405991CLL;
  STACK[0x2C0] = ((v55 << 32) ^ 0x10000008FFFFFFFFLL) & (v55 ^ 0x2817CF2825CDC1A1);
  v56 = v53[v52 ^ 0xF8] ^ v50 ^ 0xFFFFFF82;
  LODWORD(STACK[0x2A0]) = v53[v49 ^ 0xELL] ^ v49;
  v57 = v53[v52 ^ 0xAD];
  v58 = (v50 ^ 0x2E) & 2;
  if ((v57 & v58) != 0)
  {
    v58 = -v58;
  }

  LODWORD(STACK[0x230]) = v58 + v57;
  v59 = v53[v35 ^ 0x50];
  v60 = (v35 ^ 0xD3) & 0x10;
  if ((v59 & v60) != 0)
  {
    v60 = -v60;
  }

  v61 = v60 + v59;
  v62 = STACK[0x220] ^ v53[STACK[0x220] ^ 0x50];
  v63 = STACK[0x270] ^ v53[STACK[0x270] ^ 0x50];
  STACK[0x220] = v52 ^ 0x2D;
  v64 = v51 ^ v53[v52 ^ 0x2D];
  LODWORD(STACK[0x270]) = (((v63 ^ v56 ^ 0x55555555) << 24) ^ 0xB35EB4DD) & ((v64 ^ v62) ^ 0xFF7EBC12) & 0x24002484 | (v64 ^ v62) & 0x22;
  v65 = STACK[0x260] ^ v53[STACK[0x260] ^ 0x50] ^ 0x85 ^ v56;
  v66 = v64 ^ STACK[0x280] ^ v53[STACK[0x280] ^ 0x50];
  v67 = v53[v52 ^ 0x2A] ^ STACK[0x2B0] ^ v51 ^ v53[STACK[0x2B0] ^ 0x50];
  v68 = v53[v52 ^ 0x14] ^ (v35 ^ 0xD3) & 0xEF ^ v51 ^ v61;
  STACK[0x210] = v52 ^ 0x2F;
  STACK[0x2E0] = v50;
  STACK[0x2F0] = v53;
  v65 <<= 24;
  v69 = v66 << 16;
  LODWORD(STACK[0x2B0]) = v67 << 8;
  LODWORD(STACK[0x290]) = v69 ^ 0xB310FF03;
  LODWORD(STACK[0x280]) = v69 & 0x230000;
  LODWORD(STACK[0x260]) = v65 ^ 0x50FFFF8B;
  LODWORD(STACK[0x250]) = v65 & 0x4A000000;
  LODWORD(STACK[0x240]) = v68 ^ 0xFFFFFF69;
  JUMPOUT(0xB6ADCLL);
}

uint64_t sub_10388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1480] = v8;
  v9 = STACK[0x8F0];
  STACK[0x1488] = STACK[0x8F0];
  return (*(a7 + 8 * (((v8 - v9 > 9) * ((((v7 ^ 0x2B8) + 2842) ^ 0xF5F) + 8 * (v7 ^ 0x2B8))) ^ v7)))();
}

uint64_t sub_103DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xB64];
  LODWORD(STACK[0xB64]) = LODWORD(STACK[0xB64]) + ((v7 + 1327858212) & 0xB0DA7ECB) - 1607;
  return (*(a7 + 8 * (v7 ^ (2 * (v8 > 0x3E6)))))();
}

uint64_t sub_10458@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v7 = *(v4 + (917 * v2 + v5) % 0x3D6u);
  *(v4 + (917 * v2 + v3) % 0x3D6u) = *(a1 + (95 * (v7 ^ 0xB) + 24415) % 0x3A0u) ^ ((v7 ^ 3) + ((a2 + 61) ^ 0x40)) ^ 0xA7;
  return (*(v6 + 8 * ((2466 * (v2 == 15)) ^ a2)))();
}

uint64_t sub_10514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(&STACK[0x1520] + v10 + v7 - 16);
  *(v7 + v9 - 29) = *(&STACK[0x1520] + v10 + v7 - 32);
  *(v7 + v9 - 13) = v11;
  return (*(a7 + 8 * ((((v7 & 0x7FFFFFE0) == 32) * (v8 ^ 0x5E3)) ^ v8)))();
}

uint64_t sub_1063C@<X0>(int a1@<W8>)
{
  v4 = a1 + 6;
  v5 = (a1 + 1638528955) & 0x9E560B3E;
  v6 = v1;
  v7 = (*(v1 + 8 * ((a1 + 6) ^ 0x6B0)))(v2);
  return (*(v6 + 8 * (((v5 ^ 0x908) * (v3 == 1682696337)) ^ v4)))(v7);
}

uint64_t sub_10768@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  LODWORD(STACK[0xBF4]) = v2;
  v5 = v2 < 8 && v3 == 0;
  return (*(a1 + 8 * ((v5 * (((a2 + 123) | 0x110) ^ 0xB58 ^ (a2 - 284554824) & 0x10F5FFA6)) ^ a2)))();
}

uint64_t sub_107BC@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v2 = STACK[0xE30];
  STACK[0x9C0] = STACK[0xE30];
  return (*(a1 + 8 * (((((v2 == 0) ^ (a2 - 7)) & 1) * (((a2 - 494189330) & 0x1D74BFEF) - 2822)) | a2)))();
}

uint64_t sub_10908@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 - 1;
  *(a1 + v5) = v2 + *(v3 + v5) - ((2 * *(v3 + v5)) & 0xEF) + 33;
  return (*(v1 + 8 * ((62 * (v5 != 0)) ^ v2)))(0);
}

uint64_t sub_10948(int a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x52C]) = a1;
  v15 = (a1 - 1363482923) & 0x51451BDD;
  LODWORD(STACK[0x32C]) = v15;
  LODWORD(STACK[0x31C]) = v15 - 1095;
  v16 = v12 + a8 + v15 + 1968463924;
  LODWORD(STACK[0x4F0]) = v14;
  LODWORD(STACK[0x530]) = v9;
  LODWORD(STACK[0x560]) = a5;
  LODWORD(STACK[0x470]) = v13;
  v17 = STACK[0x598];
  v18 = *(STACK[0x598] + (917 * (HIWORD(v16) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIWORD(v16) & 0xF) + 809711)) >> 32)));
  v19 = (v18 & 1 | 0x200) ^ ((*(STACK[0x598] + (917 * (v16 >> 28) + 809711 - 982 * ((4373694 * (917 * (v16 >> 28) + 809711)) >> 32))) << 12) ^ (*(STACK[0x598] + (917 * (HIBYTE(v16) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIBYTE(v16) & 0xF) + 809711)) >> 32))) << 8) ^ 0x349DFE) & ~v18;
  v20 = v10;
  v21 = *(STACK[0x598] + (917 * (v16 >> 12) + 809711 - 982 * ((4373694 * (917 * (v16 >> 12) + 809711)) >> 32)));
  v22 = *(STACK[0x598] + (917 * ((v16 >> 8) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v16 >> 8) & 0xF) + 809711)) >> 32)));
  v23 = (*(STACK[0x598] + (917 * ((v16 >> 20) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v16 >> 20) & 0xF) + 809711)) >> 32))) << 12) ^ (v19 << 8) ^ 0x3FD169;
  LODWORD(STACK[0x520]) = v23;
  v24 = v23 & (v22 ^ 0xFFFFF9);
  LODWORD(STACK[0x524]) = v24;
  v25 = ((v24 | v22 & 0x96) << 8) ^ (v21 << 12);
  LODWORD(STACK[0x518]) = v25;
  LODWORD(STACK[0x528]) = v16;
  v26 = *(v17 + (917 * (v16 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v16 & 0xF) + 809711)) >> 32)));
  v27 = *(v17 + (917 * (v16 >> 4) + 809711 - 982 * ((4373694 * (917 * (v16 >> 4) + 809711)) >> 32))) << ((v16 | (102 - (v12 + a8))) & 4);
  v28 = v8 + 1371372819 - a6 - 1144723010;
  LODWORD(STACK[0x500]) = v28;
  v29 = *(v17 + (917 * (v28 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v28 & 0xFu) + 809711)) >> 32)));
  LODWORD(STACK[0x510]) = v29;
  v30 = ((v25 ^ 0x65ECBE67) & (v26 ^ 0xFFFFFF6F) | v26 & 0x98) ^ v27;
  LODWORD(STACK[0x514]) = v30;
  LODWORD(STACK[0x51C]) = v30 & 0xF;
  v31 = 917 * (((v30 & 0xF ^ 0x4FC355AE) & ((16 * v29) & 0xF0 ^ 0x5FE3DFBF) | (16 * v29) & 0x50) ^ 0x4FC355A9);
  v32 = 16 * *(v17 + 543);
  v33 = 917 * (v32 ^ *(v17 + (v31 + 307195) % 0x3D6u));
  LODWORD(STACK[0x4F8]) = v33;
  v34 = 917 * (*(v17 + (v31 + 63273) % 0x3D6u) ^ (*(v17 + (v33 + 63273 - 982 * ((4373694 * (v33 + 63273)) >> 32))) >> 4));
  LODWORD(STACK[0x508]) = (v34 + 307195) % (((v34 + 307195) ^ (4 - v34)) & 0x3D6u);
  v36 = a8 - a7;
  v37 = a4 + ((((a8 - a7) ^ 0xC91F6701) - 919750457) ^ (((a8 - a7) ^ 0x8FE0EF6D) - 1882050389) ^ (((a8 - a7) ^ 0xC801307A) - 936120386));
  v38 = 917 * (((v37 + 698613455) >> 24) & 0xF) + 809711;
  v39 = v38 - 982 * ((4373694 * v38) >> 32);
  v40 = a6 - v20;
  LODWORD(STACK[0x460]) = a6 - v20;
  v41 = ((a6 - v20) ^ 0x710147E9) + 1;
  LODWORD(STACK[0x478]) = v41;
  v42 = v41 + LODWORD(STACK[0x2E4]) + LODWORD(STACK[0x580]);
  LODWORD(STACK[0x404]) = a2;
  v43 = (((((v37 + 698613455) >> 20) & 0xF) + 883) & 0x395 ^ (140 - (((v37 + 698613455) >> 20) & 0xF)) & 0x95) * ((((v37 + 698613455) >> 20) & 0xF) + 883);
  v44 = 917 * (((v37 + 698613455) >> 16) & 0xF) + 809711;
  v45 = (*(v17 + (917 * ((v37 + 698613455) >> 28) + 809711 - 982 * ((4373694 * (917 * ((v37 + 698613455) >> 28) + 809711)) >> 32))) << 12) ^ (*(v17 + v39) << 8);
  v46 = *(v17 + (v44 - 982 * ((4373694 * v44) >> 32)));
  v47 = (v46 & 0xC2 | 0x2800) ^ (v45 ^ 0x7DD43D) & ~v46;
  v48 = 917 * ((v37 - 305) >> 12) + 809711;
  LODWORD(STACK[0x46C]) = v37 + 698613455;
  v49 = 917 * (((v37 + 698613455) >> 8) & 0xF) + 809711;
  v50 = 917 * ((v37 - 49) >> 4) + 809711;
  v51 = 917 * ((v37 - 1) & 0xF) + 809711;
  v52 = *(v17 + (v48 - 982 * ((4373694 * v48) >> 32)));
  v53 = *(v17 + (v49 - 982 * ((4373694 * v49) >> 32)));
  v54 = (*(v17 + (v43 - 982 * ((4373694 * v43) >> 32))) << 12) ^ (v47 << 8) ^ 0x9E18A8;
  v55 = v54 & (v53 ^ 0xFFFFFE);
  LODWORD(STACK[0x4E0]) = v55;
  v56 = v54;
  v57 = ((v55 | v53 & 0x57) << 8) ^ (v52 << 12);
  v58 = *(v17 + (v51 - 982 * ((4373694 * v51) >> 32)));
  v59 = v11;
  v60 = ((v57 ^ 0x6320F3CC) & (v58 ^ 0xFFFFFFDF) | v58 & 0x33333333) ^ (16 * *(v17 + (v50 - 982 * ((4373694 * v50) >> 32))));
  v61 = *(v17 + (917 * (HIWORD(v42) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIWORD(v42) & 0xF) + 809711)) >> 32)));
  v62 = (((140 - (v42 >> 4)) & 0x95) + (((v42 >> 4) + 883) & 0x395)) * ((v42 >> 4) + 883);
  v63 = v62 - 982 * ((4373694 * v62) >> 32);
  v64 = *(v17 + (917 * ((v42 >> 8) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v42 >> 8) & 0xF) + 809711)) >> 32)));
  v65 = (*(v17 + (917 * ((v42 >> 20) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v42 >> 20) & 0xF) + 809711)) >> 32))) << 12) ^ ((((*(v17 + (917 * (v42 >> 28) + 809711 - 982 * ((4373694 * (917 * (v42 >> 28) + 809711)) >> 32))) << 12) ^ (*(v17 + (917 * (HIBYTE(v42) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIBYTE(v42) & 0xF) + 809711)) >> 32))) << 8) ^ 0xF5CD81) & ~v61 | v61 & 0x7E) << 8) ^ 0x862482;
  v66 = ((v65 & (v64 ^ 0xFFFFD6) | v64 & 0x7D) << 8) ^ (*(v17 + (917 * (v42 >> 12) + 809711 - 982 * ((4373694 * (917 * (v42 >> 12) + 809711)) >> 32))) << 12);
  v67 = *(v17 + (917 * (v42 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v42 & 0xF) + 809711)) >> 32)));
  v68 = *(v17 + v63) ^ (((v66 ^ 0x879E9E70) & ~v67 | v67 & 0x80) >> 4);
  LODWORD(STACK[0x4C0]) = v60;
  v69 = (16 * v68) ^ 0x2F285DA0;
  v70 = 917 * (((v69 | 0xE4B3310F) & ((v60 >> 4) ^ 0xE4B331C7) | v69 & 0x30) ^ 0xE4B331DB);
  v71 = (v70 + 63273) % ((v69 & 0xD0) + (v69 & 0xD0 ^ 0xD0u) + 774);
  LODWORD(STACK[0x354]) = v57;
  v72 = 917 * ((((v66 >> 12) & 0xF0 ^ 0x1A6059F5) & (HIWORD(v57) & 0xF ^ 0x1A6059FA) | HIWORD(v57) & 0xA) ^ 0x1A6059A5);
  LODWORD(STACK[0x4D8]) = v58 & 0xF;
  v73 = 917 * (v58 & 0xF | (16 * (v67 & 0xF)));
  v74 = *(v17 + (v73 + 307195 - 982 * ((4373694 * (v73 + 307195)) >> 32))) ^ v32;
  LODWORD(STACK[0x548]) = v32;
  LODWORD(STACK[0x4B0]) = v74;
  v75 = *(v17 + (917 * v74 + 63273 - 982 * ((4373694 * (917 * v74 + 63273)) >> 32)));
  v76 = v73 + 63273 - 982 * ((4373694 * (v73 + 63273)) >> 32);
  LODWORD(STACK[0x4AC]) = v76;
  v77 = 917 * (*(v17 + v76) ^ (v75 >> 4)) + 307195;
  v78 = *(v17 + v71);
  v79 = 917 * (*(v17 + (v70 + 307195) % 0x3D6) ^ (16 * *(v17 + (v77 - 982 * ((4373694 * v77) >> 32)))));
  LODWORD(STACK[0x4A0]) = v79;
  v80 = 917 * (v78 ^ (*(v17 + (v79 + 63273 - 982 * ((4373694 * (v79 + 63273)) >> 32))) >> 4)) + 307195;
  v81 = 917 * ((v68 & 0xF0 | (v60 >> 8) & 0xF) ^ 0xCB);
  v82 = 917 * (*(v17 + (v81 + 307195 - 982 * ((4373694 * (v81 + 307195)) >> 32))) ^ (16 * *(v17 + (v80 - 982 * ((4373694 * v80) >> 32)))));
  LODWORD(STACK[0x468]) = v82;
  v83 = *(v17 + (v81 + 63273 - 982 * ((4373694 * (v81 + 63273)) >> 32))) ^ (*(v17 + (v82 + 63273 - 982 * ((4373694 * (v82 + 63273)) >> 32))) >> 4);
  v84 = 917 * ((((v66 >> 8) & 0xB0 ^ 0x669F483F) & ((v57 >> 12) ^ 0x669F48B9) | (v66 >> 8) & 0x40) ^ 0x669F48B3);
  v85 = *(v17 + (v84 + 307195) % 0x3D6u) ^ (16 * *(v17 + (917 * v83 + 307195 - 982 * ((4373694 * (917 * v83 + 307195)) >> 32))));
  LODWORD(STACK[0x464]) = 917 * v85;
  v86 = 917 * (*(v17 + (v84 + 63273) % 0x3D6u) ^ (*(v17 + (917 * v85 + 63273 - 982 * ((4373694 * (917 * v85 + 63273)) >> 32))) >> 4)) + 307195;
  v87 = *(v17 + (v72 + 307195) % 0x3D6u) ^ (16 * *(v17 + (v86 - 982 * ((4373694 * v86) >> 32))));
  v88 = *(v17 + (v72 + 63273) % (((214 - v72) ^ (v72 + 63273)) & 0x3D6u));
  v87 *= 917;
  LODWORD(STACK[0x498]) = v87;
  v89 = 917 * (v88 ^ (*(v17 + (v87 + 63273 - 982 * ((4373694 * (v87 + 63273)) >> 32))) >> 4)) + 307195;
  LODWORD(STACK[0x494]) = v65;
  LODWORD(STACK[0x49C]) = v56;
  v90 = 917 * (((v65 >> 8) & 0xF0 | (v56 >> 12)) ^ 0xA2);
  v91 = 917 * (*(v17 + (v90 + 307195 - 982 * ((4373694 * (v90 + 307195)) >> 32))) ^ (16 * *(v17 + (v89 - 982 * ((4373694 * v89) >> 32)))));
  LODWORD(STACK[0x488]) = v91;
  v92 = 917 * (*(v17 + (v90 + 63273 - 982 * ((4373694 * (v90 + 63273)) >> 32))) ^ (*(v17 + (v91 + 63273 - 982 * ((4373694 * (v91 + 63273)) >> 32))) >> 4)) + 307195;
  v93 = 917 * (((v65 >> 12) & 0xF0 ^ 0x204010CF) & (HIWORD(v56) & 0xF ^ 0x204010F7) ^ 0x20401075);
  LODWORD(STACK[0x480]) = v93;
  v94 = 917 * (*(v17 + (v93 + 307195) % 0x3D6u) ^ (16 * *(v17 + (v92 - 982 * ((4373694 * v92) >> 32)))));
  LODWORD(STACK[0x47C]) = v94;
  LODWORD(STACK[0x484]) = (v94 + 307195) % ((((3887108 - v94) | (v94 + 307195)) & 0x3F337Fu) - 4140969);
  v95 = v59;
  LODWORD(STACK[0x474]) = 2 * v59;
  v96 = v36 ^ 0xFFCD2038 ^ (v59 - ((2 * v59) & 0xE267305C) + 1899206702);
  v97 = ((v40 ^ LODWORD(STACK[0x588]) ^ 0x49F3C1D) + 2123465451) ^ ((v40 ^ LODWORD(STACK[0x588]) ^ 0xC74EC3AC) - 1119847076) ^ ((v40 ^ LODWORD(STACK[0x588]) ^ 0x4D2F47A7) + 924973393);
  LODWORD(STACK[0x550]) = v97;
  v98 = LODWORD(STACK[0x420]) + 1470055476;
  LODWORD(STACK[0x4E4]) = v98;
  LODWORD(STACK[0x4D0]) = v96;
  v99 = v96 + 445250805 + v98;
  v96 += 445250805;
  LODWORD(STACK[0x458]) = v96;
  v100 = *(v17 + (917 * (v99 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v99 & 0xF) + 809711)) >> 32)));
  v101 = ((778 - (v36 ^ 0xFFCD2038 ^ (v59 - ((2 * v59) & 0xE267305C) + 1899206702))) & 0x352) + (v96 & 0x352);
  v102 = LODWORD(STACK[0x404]) - v97 - 1460796478;
  v103 = (v100 + 2058691508 - ((2 * v100) & 0x168)) ^ 0x7AB523B4;
  v104 = *(v17 + (917 * (v102 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v102 & 0xF) + 809711)) >> 32)));
  v105 = ((v100 - 76 - ((2 * v100) & 0x68)) ^ 0xB4) & 0xF;
  v106 = 917 * (v105 | (16 * (v104 & 0xF)));
  v107 = 917 * (*(v17 + (v106 + 307195 - 982 * ((4373694 * (v106 + 307195)) >> 32))) ^ v32);
  v108 = *(v17 + (v106 + 63273 - 982 * ((4373694 * (v106 + 63273)) >> 32)));
  v109 = *(v17 + (v107 + 63273 - 982 * ((4373694 * (v107 + 63273)) >> 32)));
  v110 = a7;
  LODWORD(STACK[0x4DC]) = a7;
  v111 = (917 * ((v99 >> 20) & 0xF) + 809711) % (v101 | 0x184);
  v112 = (917 * (v108 ^ (v109 >> 4)) + 307195) % (((-307196 - 917 * (v108 ^ (v109 >> 4))) & 0x9C460C63) + ((917 * (v108 ^ (v109 >> 4)) + 307195) & 0x60C63) + 1673131891);
  v113 = a8 ^ LODWORD(STACK[0x560]);
  v114 = *(v17 + (917 * (HIWORD(v99) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIWORD(v99) & 0xF) + 809711)) >> 32)));
  v115 = ((*(v17 + (917 * (v99 >> 28) + 809711 - 982 * ((4373694 * (917 * (v99 >> 28) + 809711)) >> 32))) << 12) ^ (*(v17 + (917 * (HIBYTE(v99) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIBYTE(v99) & 0xF) + 809711)) >> 32))) << 8) ^ 0x740BF7) & ~v114 | v114 & 8;
  LODWORD(STACK[0x4E8]) = v99;
  v116 = *(v17 + (917 * ((v99 >> 8) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v99 >> 8) & 0xF) + 809711)) >> 32)));
  v117 = ((*(v17 + v111) << 12) ^ (v115 << 8) ^ 0xC2CAE4) & (v116 ^ 0xFFFFE4) ^ (v116 & 0x1B | 0x168000);
  v118 = ((((v99 >> 4) + 883) | (140 - (v99 >> 4))) & 0x395) * ((v99 >> 4) + 883);
  v119 = *(v17 + (917 * (v99 >> 12) + 809711 - 982 * ((4373694 * (917 * (v99 >> 12) + 809711)) >> 32)));
  v120 = (((v119 << 12) - ((v119 << 13) & 0x44000) - 1894636543) ^ (v117 << 8) ^ 0x50AFC001) + v103;
  v121 = *(v17 + (917 * (HIWORD(v102) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIWORD(v102) & 0xF) + 809711)) >> 32))) ^ (16 * *(v17 + (917 * ((v102 >> 20) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v102 >> 20) & 0xF) + 809711)) >> 32))));
  v122 = 917 * (v102 >> 12) + 809711 - 982 * ((4373694 * (917 * (v102 >> 12) + 809711)) >> 32);
  v123 = (*(v17 + (917 * (HIBYTE(v102) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIBYTE(v102) & 0xF) + 809711)) >> 32))) << 8) ^ (*(v17 + (917 * (v102 >> 28) + 809711 - 982 * ((4373694 * (917 * (v102 >> 28) + 809711)) >> 32))) << 12);
  v124 = 917 * (v102 >> 4) + 809711 - 982 * ((4373694 * (917 * (v102 >> 4) + 809711)) >> 32);
  v125 = *(v17 + (917 * ((v102 >> 8) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v102 >> 8) & 0xF) + 809711)) >> 32))) << 8;
  v126 = v123 ^ v121;
  v127 = ((((v123 ^ v121) << 16) ^ 0xF494EBF) & (v125 ^ 0xFFFF7FBF) | v125 & 0xB100) ^ (*(v17 + v122) << 12);
  v128 = *(v17 + v124) ^ (((v127 ^ 0xAE9FCE10) & ~v104 | v104 & 0x55555555) >> 4);
  v129 = *(v17 + (v118 - 982 * ((4373694 * v118) >> 32))) ^ (v120 >> 4);
  v130 = 917 * ((((16 * v128) ^ 0x27C2FF70 | 0x69A2260F) & (v129 & 0xF ^ 0x69A22648) | ((16 * v128) ^ 0x27C2FF70) & 0xB0) ^ 0x69A226D8);
  v131 = 917 * (*(v17 + (v130 + 307195) % 0x3D6u) ^ (16 * *(v17 + v112)));
  v132 = v131 + 307195 - 982 * ((4373694 * (v131 + 307195)) >> 32);
  v133 = 917 * (*(v17 + (v130 + 63273) % 0x3D6u) ^ (*(v17 + (v131 + 63273 - 982 * ((4373694 * (v131 + 63273)) >> 32))) >> 4)) + 307195;
  v134 = 917 * (v128 & 0xF0 | (v129 >> 4));
  v135 = 917 * (*(v17 + (v134 + 307195 - 982 * ((4373694 * (v134 + 307195)) >> 32))) ^ (16 * *(v17 + (v133 - 982 * ((4373694 * v133) >> 32)))));
  v136 = v135 + 307195 - 982 * ((4373694 * (v135 + 307195)) >> 32);
  v137 = 917 * (*(v17 + (v134 + 63273 - 982 * ((4373694 * (v134 + 63273)) >> 32))) ^ (*(v17 + (v135 + 63273 - 982 * ((4373694 * (v135 + 63273)) >> 32))) >> 4)) + 307195;
  v138 = 917 * (((v127 >> 8) & 0xF0 | (v120 >> 12)) ^ 0x40);
  v139 = 917 * (*(v17 + (v138 + 307195 - 982 * ((4373694 * (v138 + 307195)) >> 32))) ^ (16 * *(v17 + (v137 - 982 * ((4373694 * v137) >> 32)))));
  v140 = (*(v17 + (v139 + 307195 - 982 * ((4373694 * (v139 + 307195)) >> 32))) << 12) ^ (*(v17 + v136) << 8);
  v141 = 917 * (*(v17 + (v138 + 63273 - 982 * ((4373694 * (v138 + 63273)) >> 32))) ^ (*(v17 + (v139 + 63273 - 982 * ((4373694 * (v139 + 63273)) >> 32))) >> 4)) + 307195;
  v142 = (v127 >> 12) & 0xF0 ^ 0x9ACD1DD1;
  v143 = HIWORD(v120) & 0xF;
  v144 = 917 * ((v142 & (v143 ^ 0x9FDD7FF5) | HIWORD(v120) & 0xE) ^ 0x9ACD1D41);
  v145 = 917 * (*(v17 + (v144 + 307195) % 0x3D6) ^ (16 * *(v17 + (v141 - 982 * ((4373694 * v141) >> 32)))));
  v146 = v145 + 307195 - 982 * ((4373694 * (v145 + 307195)) >> 32);
  v147 = 917 * (*(v17 + (v144 + 63273) % 0x3D6) ^ (*(v17 + (v145 + 63273 - 982 * ((4373694 * (v145 + 63273)) >> 32))) >> 4)) + 307195;
  v148 = 917 * (v121 & 0xF0 | (v120 >> 20) & 0xF);
  v149 = *(v17 + (v148 + 307195 - 982 * ((4373694 * (v148 + 307195)) >> 32))) ^ (16 * *(v17 + (v147 - 982 * ((4373694 * v147) >> 32))));
  v150 = *(v17 + (v107 + 307195 - 982 * ((4373694 * (v107 + 307195)) >> 32)));
  v151 = 917 * v149;
  v152 = (*(v17 + (917 * v149 + 307195 - 982 * ((4373694 * (917 * v149 + 307195)) >> 32))) << 20) ^ (*(v17 + v146) << 16);
  v153 = v150 ^ (16 * *(v17 + v132));
  v154 = 917 * (v105 & 0xFFFFFF0F | (16 * (v150 & 0xF))) + 571291;
  v155 = v154 - 982 * ((4373694 * v154) >> 32);
  v156 = v153 ^ 0x61E9447F ^ v140;
  v157 = 917 * (v153 & 0xF0 | v129 & 0xF) + 571291;
  v158 = *(v17 + (v157 - 982 * ((4373694 * v157) >> 32)));
  v159 = (917 * ((((v156 >> 4) & 0xF0 ^ 0xFC96AE28) & ((v129 >> 4) ^ 0xFC96AEFF) | (v129 >> 4) & 7) ^ 0xFC96AE68) + 571291) % 0x3D6;
  v160 = ((v158 & 0xF ^ 0xF) + (v158 & 0xF)) & (v120 >> 12);
  v161 = 917 * ((v140 >> 8) & 0xF0 ^ (v160 + 1090748535 - ((2 * v160) & 0xFFFFFFEF)) ^ 0x41038077) + 571291;
  v162 = v152 ^ v156;
  v163 = 917 * (v143 & (((v152 ^ v156) >> 12) & 0xF0 ^ 0xDA3CF46F) | ~(((v152 ^ v156) >> 12) & 0xF0 ^ 0xDA3CF46F) & 0xDA3CF4F9) + 571291;
  v164 = v110 - v113 + 1437089245;
  v165 = v164 ^ v36;
  v166 = v164 ^ v36 ^ 0xC4E01BB6;
  LODWORD(STACK[0x580]) = v166;
  v167 = ((766 - v166) & 0x3D6) + ((v166 + 257) & 0x3D6);
  v168 = *(v17 + v155);
  LODWORD(STACK[0x560]) = v168;
  v169 = v168 ^ (16 * v158);
  LODWORD(STACK[0x4D4]) = v169;
  v170 = *(v17 + v161 % 0x3D6);
  v171 = v169 ^ (*(v17 + v159) << 8);
  LODWORD(STACK[0x4C8]) = v171;
  v172 = v171 ^ (v170 << 12);
  LODWORD(STACK[0x4B8]) = v172;
  v173 = v172 ^ (*(v17 + v163 % 0x3D6) << 16);
  v174 = (917 * (HIWORD(v173) & 0xF) + 547449) % v167;
  v175 = (v113 ^ v95) + v36 - (((v36 ^ 0xC8937134) - 928928012) ^ ((v36 ^ 0x682E49A0) + 1746703976) ^ ((v36 ^ 0x2E438082) + 779181894));
  v176 = (v95 - (STACK[0x474] & 0x3D414F2E) - 1633638505) ^ 0x105E1F81 ^ v165;
  v177 = 917 * (*(v17 + (v148 + 63273 - 982 * ((4373694 * (v148 + 63273)) >> 32))) ^ (*(v17 + (v151 + 63273 - 982 * ((4373694 * (v151 + 63273)) >> 32))) >> 4)) + 307195;
  v178 = 917 * ((((v126 >> 4) & 0xF0 ^ 0x240474BA) & (HIBYTE(v120) & 0xF ^ 0x240474FE) | HIBYTE(v120) & 5) ^ 0x240474BA);
  v179 = 917 * (*(v17 + (v178 + 307195) % 0x3D6u) ^ (16 * *(v17 + (v177 - 982 * ((4373694 * v177) >> 32)))));
  v180 = v179 + 307195 - 982 * ((4373694 * (v179 + 307195)) >> 32);
  v181 = 917 * (*(v17 + (v178 + 63273) % 0x3D6u) ^ (*(v17 + (v179 + 63273 - 982 * ((4373694 * (v179 + 63273)) >> 32))) >> 4)) + 307195;
  v182 = v181 - 982 * ((4373694 * v181) >> 32);
  v183 = 917 * ((HIBYTE(v120) >> ((v182 & 4 ^ 4) + (v182 & 4))) & 0xF | (16 * (v123 >> 12))) + 307195;
  v184 = 917 * (*(v17 + (v183 - 982 * ((4373694 * v183) >> 32))) ^ (16 * *(v17 + v182))) + 307195;
  v185 = v162 ^ (*(v17 + v180) << 24);
  v186 = v185 ^ (*(v17 + (v184 - 982 * ((4373694 * v184) >> 32))) << 28);
  v187 = 917 * (((v185 >> 20) & 0xF0 | HIBYTE(v120) & 0xF) ^ 0x10) + 571291;
  v188 = v173 ^ (*(v17 + (917 * (((HIWORD(v152) & 0xF0 ^ 0xA37109E6) & ((v120 >> 20) & 0xF ^ 0xA37109FF) | (v120 >> 20) & 9) ^ 0xA37109E6) + 571291) % 0x3D6) << 20);
  v189 = v188 ^ (*(v17 + (v187 - 982 * ((4373694 * v187) >> 32))) << 24);
  v190 = 917 * ((v189 ^ (*(v17 + (917 * (((16 * (v186 >> 28)) ^ 0x2BDCF38F) & ((v120 >> 28) ^ 0xFBFFFFFF) ^ 0x2BDCF3EF) + 571291) % 0x3D6) << 28)) >> 28) + 547449;
  v191 = (((*(v17 + (v190 - 982 * ((4373694 * v190) >> 32))) << 12) ^ (*(v17 + (917 * (HIBYTE(v189) & 0xF) + 547449 - 982 * ((4373694 * (917 * (HIBYTE(v189) & 0xF) + 547449)) >> 32))) << 8) ^ 0xF5A2B47C) & ~*(v17 + v174) | *(v17 + v174) & 0x83) ^ (16 * *(v17 + (917 * ((v188 >> 20) & 0xF) + 547449 - 982 * ((4373694 * (917 * ((v188 >> 20) & 0xF) + 547449)) >> 32))));
  LODWORD(STACK[0x474]) = v191;
  v192 = (v191 & 0x3D6 ^ 0x54) + (v191 & 0x3D6 ^ 0x382);
  v193 = v176 + LODWORD(STACK[0x4D0]);
  v194 = v193 + LODWORD(STACK[0x4D0]);
  LODWORD(STACK[0x3E8]) = v194;
  LODWORD(STACK[0x34C]) = v193;
  v195 = LODWORD(STACK[0x414]) + v175 + v194;
  v196 = (917 * (((v195 - 1919804319) >> 8) & 0xF) + 809711) % v192;
  v197 = LODWORD(STACK[0x57C]) ^ LODWORD(STACK[0x56C]);
  v198 = LODWORD(STACK[0x468]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x468]) + 307195)) >> 32);
  v199 = LODWORD(STACK[0x464]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x464]) + 307195)) >> 32);
  v200 = STACK[0x460];
  v201 = (v197 ^ LODWORD(STACK[0x588])) + LODWORD(STACK[0x460]) + LODWORD(STACK[0x478]);
  v202 = LODWORD(STACK[0x46C]) ^ v164;
  v203 = LODWORD(STACK[0x588]) - ((2 * LODWORD(STACK[0x588])) & 0xAB3BA0DE);
  v204 = 917 * (((v195 - 1919804319) >> 24) & 0xF) + 809711;
  v205 = v204 - 982 * ((4373694 * v204) >> 32);
  v206 = LODWORD(STACK[0x55C]) - v197 + 1437089245;
  LODWORD(STACK[0x39C]) = v206;
  LODWORD(STACK[0x398]) = v206 ^ v200;
  LODWORD(STACK[0x46C]) = v206 ^ v200 ^ 0x5B636879;
  v207 = STACK[0x550];
  v208 = LODWORD(STACK[0x550]) + (v206 ^ v200 ^ 0x5B636879 ^ (v203 - 711077777)) + 185596190;
  LODWORD(STACK[0x588]) = v208;
  v209 = v207 - 870495575 + v208;
  v210 = LODWORD(STACK[0x418]) - (v209 + v201);
  v211 = 917 * (((v195 - 1919804319) >> 16) & 0xF) + 809711;
  v212 = (*(v17 + (917 * ((v195 - 1919804319) >> 28) + 809711 - 982 * ((4373694 * (917 * ((v195 - 1919804319) >> 28) + 809711)) >> 32))) << 12) ^ (*(v17 + v205) << 8);
  v213 = *(v17 + (v211 - 982 * ((4373694 * v211) >> 32)));
  v214 = (v212 ^ 0x6F08B6) & ~v213 | v213 & 0x49;
  LODWORD(STACK[0x4D0]) = v195 - 1919804319;
  v215 = 917 * ((v195 + 7265) >> 12) + 809711;
  v216 = v215 - 982 * ((4373694 * v215) >> 32);
  v217 = 917 * ((v195 + 97) >> 4) + 809711;
  v218 = *(v17 + v216);
  v219 = *(v17 + v196);
  v220 = (*(v17 + (((1073740940 - (((v195 - 1919804319) >> 20) & 0xF)) & 0x207950B7 | ((((v195 - 1919804319) >> 20) & 0xF) + 883) & 0x3B7) ^ 0x20795022) * ((((v195 - 1919804319) >> 20) & 0xF) + 883) % 0x3D6) << 12) ^ (v214 << 8) ^ 0xEEDC0;
  v221 = v220 & (v219 ^ 0xFFFFDE);
  LODWORD(STACK[0x478]) = v221;
  LOWORD(v164) = v220;
  LODWORD(STACK[0x404]) = v220;
  v222 = ((v221 & 0xFFFFFFC0 | v219 & 0x3F) << 8) ^ (v218 << 12);
  LODWORD(STACK[0x56C]) = v202;
  v195 += 1111973233;
  LODWORD(STACK[0x57C]) = v195;
  v223 = ((v202 & 0x395 ^ 0x395) + (v202 & 0x395)) * ((v195 & 0xF) + 883);
  v224 = *(v17 + (v223 - 982 * ((4373694 * v223) >> 32)));
  LODWORD(STACK[0x468]) = v224;
  v225 = (v222 ^ 0x884EE3C0) & (v224 ^ 0xFFFFFFC0) ^ (v224 & 0x30 | 0x60EA0C00);
  v226 = 917 * (((v210 - 1911101957) >> 24) & 0xF) + 809711;
  v227 = (*(v17 + (v226 - 982 * ((4373694 * v226) >> 32))) << 8) ^ (*(v17 + (917 * ((v210 - 1911101957) >> 28) + 809711 - 982 * ((4373694 * (917 * ((v210 - 1911101957) >> 28) + 809711)) >> 32))) << 12);
  LODWORD(STACK[0x464]) = v227;
  LODWORD(STACK[0x33C]) = v175;
  v228 = *(v17 + (v217 - 982 * ((4373694 * v217) >> 32)));
  v229 = 917 * (((v210 - 1911101957) >> 20) & 0xF) + 809711;
  v230 = 917 * ((((((16 * v228) & 0x90 ^ 0x9C) + ((16 * v228) & 0x90)) ^ (((-126 - v175) & 0xCA) + ((v175 + 125) & 0xCA))) - 71) & ((v210 - 1911101957) >> 16)) + 809711;
  v231 = *(v17 + (v230 - 982 * ((4373694 * v230) >> 32))) ^ (16 * *(v17 + (v229 - 982 * ((4373694 * v229) >> 32))));
  v232 = 917 * ((v210 - 6661) >> 12) + 809711;
  v233 = 917 * (((v210 - 1911101957) >> 8) & 0xF) + 809711;
  v234 = 917 * ((v210 - 5) >> 4) + 809711;
  v235 = *(v17 + (v233 - 982 * ((4373694 * v233) >> 32))) << 8;
  LODWORD(STACK[0x454]) = v227 ^ v231;
  v236 = 917 * ((v210 + 27) & 0xF) + 809711;
  v237 = *(v17 + (v236 - 982 * ((4373694 * v236) >> 32)));
  v238 = ((((v227 ^ v231) << 16) ^ 0x3138AE95) & (v235 ^ 0xFFFFBFF5) | v235 & 0x5100) ^ (*(v17 + (v232 - 982 * ((4373694 * v232) >> 32))) << 12);
  LODWORD(STACK[0x430]) = v238;
  v239 = (v238 ^ 0x8C3D85C0) & ~v237 | v237 & 0xAAAAAAAA;
  LODWORD(STACK[0x3E4]) = v224 & 0xF;
  v240 = 917 * (v224 & 0xF | (16 * (v237 & 0xF)));
  v241 = STACK[0x548];
  v242 = 917 * (*(v17 + (v240 + 307195 - 982 * ((4373694 * (v240 + 307195)) >> 32))) ^ LODWORD(STACK[0x548]));
  LODWORD(STACK[0x444]) = v242;
  v243 = v228 ^ (v225 >> 4);
  LOBYTE(v240) = *(v17 + (v240 + 63273 - 982 * ((4373694 * (v240 + 63273)) >> 32)));
  v244 = *(v17 + (v234 - 982 * ((4373694 * v234) >> 32))) ^ (v239 >> 4);
  v245 = *(v17 + (v242 + 63273 - 982 * ((4373694 * (v242 + 63273)) >> 32))) >> 4;
  v246 = 917 * (v245 + v240 - 2 * (v245 & v240)) + 307195;
  LODWORD(STACK[0x460]) = v243 & 0xF;
  v247 = 917 * ((((16 * v244) & 0xB0 ^ 0xFFC951AF) & (v243 & 0xF ^ 0xFFC951BB) | (16 * v244) & 0x40) ^ 0xFFC951F7);
  v248 = 917 * (*(v17 + (v247 + 307195) % 0x3D6) ^ (16 * *(v17 + (v246 - 982 * ((4373694 * v246) >> 32)))));
  LODWORD(STACK[0x438]) = v248;
  v249 = 917 * (*(v17 + (v247 + 63273) % 0x3D6) ^ (*(v17 + (v248 + 63273 - 982 * ((4373694 * (v248 + 63273)) >> 32))) >> 4)) + 307195;
  LODWORD(STACK[0x44C]) = v243;
  v250 = v243 >> 4;
  LODWORD(STACK[0x450]) = v250;
  v251 = 917 * (((v244 & 0xF0 | 0x4CFF2308) & (v250 ^ 0x4CFF23F5) | (v243 >> 4) & 7) ^ 0x4CFF23BF);
  v252 = 917 * (*(v17 + (v251 + 307195) % 0x3D6u) ^ (16 * *(v17 + (v249 - 982 * ((4373694 * v249) >> 32)))));
  LODWORD(STACK[0x434]) = v252;
  v253 = *(v17 + (v251 + 63273) % 0x3D6u) ^ (*(v17 + (v252 + 63273 - 982 * ((4373694 * (v252 + 63273)) >> 32))) >> 4);
  LODWORD(STACK[0x418]) = v222;
  v254 = v222 >> 12;
  LODWORD(STACK[0x448]) = v254;
  v255 = 917 * ((((v238 >> 8) & 0xF0 ^ 0x8DCC6D89) & (v254 ^ 0x9FDE6FF1) | (v222 >> 12) & 6) ^ 0x8DCC6D2D);
  LOBYTE(v238) = *(v17 + v198);
  v256 = *(v17 + v199);
  LODWORD(STACK[0x348]) = v256;
  v257 = STACK[0x354];
  v258 = 917 * (((v238 ^ (16 * v256)) & 0xF0 | (LODWORD(STACK[0x354]) >> 12)) ^ 0xA);
  v259 = *(v17 + (917 * v253 + 307195 - 982 * ((4373694 * (917 * v253 + 307195)) >> 32)));
  v260 = *(v17 + (v255 + 307195) % 0x3D6);
  LODWORD(STACK[0x350]) = (v258 + 571291) % (((v258 + 571291) ^ (100 - v258)) & 0x3D6u);
  v261 = 917 * (v260 ^ (16 * v259));
  LODWORD(STACK[0x414]) = v261;
  v262 = *(v17 + (v261 + 63273 - 982 * ((4373694 * (v261 + 63273)) >> 32))) >> 4;
  v263 = 917 * (((*(v17 + (v255 + 63273) % 0x3D6) & 0x95 ^ 0xB ^ (v262 & 0x45 | 0x90)) & ~(*(v17 + (v255 + 63273) % 0x3D6) & 0x6A ^ v262 & 0xAA) | *(v17 + (v255 + 63273) % 0x3D6) & 0x60) ^ 0x9B);
  LODWORD(STACK[0x3F8]) = (v263 + 307195) % (((4 - v263) | (v263 + 307195)) & 0x3D6u);
  LODWORD(STACK[0x35C]) = v201;
  v264 = 917 * ((v231 & 0xF0 | (v164 >> 12)) ^ 5);
  LODWORD(STACK[0x3EC]) = v264;
  LODWORD(STACK[0x3F4]) = (v264 + 63273) % (1887368034 * (((v201 - 151163877) & 0x389BC05B) + ((151163876 - v201) & 0x389BC05Bu)));
  v265 = STACK[0x3E8];
  v266 = (LODWORD(STACK[0x3E8]) + 445250805 + (v193 ^ 0x13E5F047)) ^ (v175 - 2050370579);
  LODWORD(STACK[0x344]) = v266;
  v267 = ((LODWORD(STACK[0x588]) ^ 0x13E5F047) + v209 + 1501342570) ^ (v201 - 151163877);
  v268 = v265 + 1050788421 + v266;
  v269 = LODWORD(STACK[0x470]) - 231366583 + v268;
  v270 = (*(v17 + (917 * (HIBYTE(v269) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIBYTE(v269) & 0xF) + 809711)) >> 32))) << 8) ^ (*(v17 + (917 * (v269 >> 28) + 809711 - 982 * ((4373694 * (917 * (v269 >> 28) + 809711)) >> 32))) << 12) | *(v17 + (917 * (HIWORD(v269) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIWORD(v269) & 0xF) + 809711)) >> 32)));
  LODWORD(STACK[0x470]) = v270;
  v271 = (v270 << 16) ^ (*(v17 + (917 * ((v269 >> 20) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v269 >> 20) & 0xF) + 809711)) >> 32))) << 20);
  v272 = v209 + 2106880186 + v267;
  v273 = LODWORD(STACK[0x540]) + 470852220 - v272 + 1261667265;
  v274 = (*(v17 + (917 * (HIBYTE(v273) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIBYTE(v273) & 0xF) + 809711)) >> 32))) << 8) ^ (*(v17 + (917 * (v273 >> 28) + 809711 - 982 * ((4373694 * (917 * (v273 >> 28) + 809711)) >> 32))) << 12);
  LODWORD(STACK[0x540]) = v274;
  v275 = ((v274 | *(v17 + (917 * (HIWORD(v273) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIWORD(v273) & 0xF) + 809711)) >> 32)))) << 8) ^ (*(v17 + (917 * ((v273 >> 20) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v273 >> 20) & 0xF) + 809711)) >> 32))) << 12);
  LODWORD(STACK[0x3D4]) = v275;
  v276 = v271;
  LODWORD(STACK[0x3D8]) = v271;
  v277 = 917 * ((v275 >> 8) & 0xF0 | (v271 >> 20) & 0xF);
  LODWORD(STACK[0x3DC]) = (v277 + 63273) % (((v277 + 63273) & STACK[0x2A8] | (2147420374 - v277) & 0x4C0118CE) ^ 0x4C011B18u);
  v278 = v269;
  LODWORD(STACK[0x3E8]) = v269;
  v279 = 917 * (v269 >> 4) + 809711 - 982 * ((4373694 * (917 * (v269 >> 4) + 809711)) >> 32);
  v280 = (v276 | (*(v17 + (917 * ((v278 >> 8) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v278 >> 8) & 0xF) + 809711)) >> 32))) << 8)) ^ (*(v17 + (917 * (v269 >> 12) + 809711 - 982 * ((4373694 * (917 * (v269 >> 12) + 809711)) >> 32))) << 12);
  v281 = *(v17 + (917 * (v278 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v278 & 0xF) + 809711)) >> 32)));
  v282 = (v280 | v281) ^ (16 * *(v17 + v279));
  v283 = ((v275 | *(v17 + (917 * ((v273 >> 8) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v273 >> 8) & 0xF) + 809711)) >> 32)))) << 8) ^ (*(v17 + (917 * (v273 >> 12) + 809711 - 982 * ((4373694 * (917 * (v273 >> 12) + 809711)) >> 32))) << 12);
  v284 = 917 * (v273 >> 4) + 809711 - 982 * ((4373694 * (917 * (v273 >> 4) + 809711)) >> 32);
  v285 = *(v17 + (917 * (v273 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v273 & 0xF) + 809711)) >> 32)));
  LODWORD(STACK[0x3E0]) = v281 & 0xF;
  v286 = 917 * (v281 & 0xF | (16 * (v285 & 0xF)));
  LOBYTE(v284) = *(v17 + v284) ^ ((v283 | v285) >> 4);
  v287 = 917 * (*(v17 + (v286 + 307195 - 982 * ((4373694 * (v286 + 307195)) >> 32))) ^ v241);
  LODWORD(STACK[0x3BC]) = v287;
  v288 = *(v17 + (v286 + 63273 - 982 * ((4373694 * (v286 + 63273)) >> 32))) ^ (*(v17 + (v287 + 63273 - 982 * ((4373694 * (v287 + 63273)) >> 32))) >> 4);
  LODWORD(STACK[0x334]) = v267 + 267229425;
  v289 = (v288 + 335) * (((782 - v267) | (v267 + 267229425)) & 0x395);
  LODWORD(STACK[0x3D0]) = v282;
  v290 = 917 * ((v282 >> 4) | (16 * (v284 & 0xF)));
  v291 = v290 + 307195 - 982 * ((4373694 * (v290 + 307195)) >> 32);
  v292 = ((v282 & 0x10) != 0) | (16 * (v284 & 0xF)) & 0x11;
  v293 = v290 + 63273 - 982 * ((4373694 * (v290 + 63273)) >> 32);
  v294 = *(v17 + v291) ^ (16 * *(v17 + (v289 - 982 * ((4373694 * v289) >> 32))));
  LODWORD(STACK[0x3B8]) = v294 + ((v293 & 0xA7 ^ 0x5B7B28A7) + (v293 & 0xA7)) * (((v292 ^ 0xD546CF11) + v292) | 0x64520008);
  v295 = 917 * (*(v17 + v293) ^ (*(v17 + (917 * v294 + 63273 - 982 * ((4373694 * (917 * v294 + 63273)) >> 32))) >> 4)) + 307195;
  v296 = 917 * (v284 & 0xF0 | (v282 >> 8) & 0xF);
  v297 = *(v17 + (v296 + 307195 - 982 * ((4373694 * (v296 + 307195)) >> 32))) ^ (16 * *(v17 + (v295 - 982 * ((4373694 * v295) >> 32))));
  LODWORD(STACK[0x3B4]) = 917 * v297;
  v298 = 917 * (*(v17 + (v296 + 63273 - 982 * ((4373694 * (v296 + 63273)) >> 32))) ^ (*(v17 + (917 * v297 + 63273 - 982 * ((4373694 * (917 * v297 + 63273)) >> 32))) >> 4)) + 307195;
  LODWORD(STACK[0x3CC]) = v280;
  v299 = 917 * ((v283 >> 8) & 0xF0 | (v280 >> 12));
  v300 = 917 * (*(v17 + (v299 + 307195 - 982 * ((4373694 * (v299 + 307195)) >> 32))) ^ (16 * *(v17 + (v298 - 982 * ((4373694 * v298) >> 32)))));
  LODWORD(STACK[0x3B0]) = v300;
  v301 = 917 * (*(v17 + (v299 + 63273 - 982 * ((4373694 * (v299 + 63273)) >> 32))) ^ (*(v17 + (v300 + 63273 - 982 * ((4373694 * (v300 + 63273)) >> 32))) >> 4)) + 307195;
  v302 = 917 * ((v283 >> 12) & 0xF0 | HIWORD(v280) & 0xF);
  v303 = 917 * (*(v17 + (v302 + 307195 - 982 * ((4373694 * (v302 + 307195)) >> 32))) ^ (16 * *(v17 + (v301 - 982 * ((4373694 * v301) >> 32)))));
  LODWORD(STACK[0x3AC]) = v303;
  v304 = 917 * (*(v17 + (v302 + 63273 - 982 * ((4373694 * (v302 + 63273)) >> 32))) ^ (*(v17 + (v303 + 63273 - 982 * ((4373694 * (v303 + 63273)) >> 32))) >> 4)) + 307195;
  v305 = v304 - 982 * ((4373694 * v304) >> 32);
  v306 = v277 + 307195 - 982 * ((4373694 * (v277 + 307195)) >> 32);
  v307 = ((v268 ^ 0xC056B5D2) - 1362569325) ^ ((v268 ^ 0xC38CFF62) - 1391289053) ^ ((v268 ^ 0x8BD2F1B1) - 447966222);
  LODWORD(STACK[0x330]) = v307;
  v308 = v272 ^ 0x8808BB01;
  v309 = v272;
  v310 = 121795048 - (v272 ^ 0x8808BB01) + LODWORD(STACK[0x41C]);
  v311 = LODWORD(STACK[0x408]) - 756720275 + v307;
  v312 = 917 * ((LOWORD(STACK[0x408]) + 23917 + v307) >> 12) + 809711;
  v313 = *(v17 + (v312 - 982 * ((4373694 * v312) >> 32)));
  v314 = (((*(v17 + (917 * (HIBYTE(v311) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIBYTE(v311) & 0xF) + 809711)) >> 32))) << 8) ^ (*(v17 + (917 * (v311 >> 28) + 809711 - 982 * ((4373694 * (917 * (v311 >> 28) + 809711)) >> 32))) << 12) | *(v17 + (917 * (HIWORD(v311) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIWORD(v311) & 0xF) + 809711)) >> 32)))) << 8) ^ (*(v17 + (917 * ((v311 >> 20) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v311 >> 20) & 0xF) + 809711)) >> 32))) << 12);
  LODWORD(STACK[0x3A8]) = v314;
  v315 = v314 | *(v17 + (917 * ((v311 >> 8) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v311 >> 8) & 0xF) + 809711)) >> 32)));
  LODWORD(STACK[0x408]) = v315;
  v316 = (v315 << 8) ^ (v313 << 12);
  LODWORD(STACK[0x41C]) = v311;
  v317 = *(v17 + (917 * (v311 >> 4) + 809711 - 982 * ((4373694 * (917 * (v311 >> 4) + 809711)) >> 32)));
  v318 = *(v17 + (917 * (v311 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v311 & 0xF) + 809711)) >> 32)));
  LODWORD(STACK[0x380]) = v316;
  v319 = (v316 | v318) ^ (16 * v317);
  v320 = (*(v17 + (917 * (HIBYTE(v310) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIBYTE(v310) & 0xF) + 809711)) >> 32))) << 8) ^ (*(v17 + (917 * (v310 >> 28) + 809711 - 982 * ((4373694 * (917 * (v310 >> 28) + 809711)) >> 32))) << 12);
  LODWORD(STACK[0x3A0]) = v320;
  v321 = ((v320 | *(v17 + (917 * (HIWORD(v310) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIWORD(v310) & 0xF) + 809711)) >> 32)))) << 8) ^ (*(v17 + (917 * ((v310 >> 20) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v310 >> 20) & 0xF) + 809711)) >> 32))) << 12);
  LODWORD(STACK[0x394]) = v321;
  v322 = 917 * (v310 >> 4) + 809711 - 982 * ((4373694 * (917 * (v310 >> 4) + 809711)) >> 32);
  v323 = ((v321 | *(v17 + (917 * ((v310 >> 8) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v310 >> 8) & 0xF) + 809711)) >> 32)))) << 8) ^ (*(v17 + (917 * (v310 >> 12) + 809711 - 982 * ((4373694 * (917 * (v310 >> 12) + 809711)) >> 32))) << 12);
  v324 = *(v17 + (917 * (v310 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v310 & 0xF) + 809711)) >> 32)));
  v325 = v318 & 0xF;
  v326 = 917 * (v325 | (16 * (v324 & 0xF)));
  v327 = v241;
  v328 = 917 * (*(v17 + (v326 + 307195 - 982 * ((4373694 * (v326 + 307195)) >> 32))) ^ v241);
  v329 = 917 * (*(v17 + (v326 + 63273 - 982 * ((4373694 * (v326 + 63273)) >> 32))) ^ (*(v17 + (v328 + 63273 - 982 * ((4373694 * (v328 + 63273)) >> 32))) >> 4)) + 307195;
  LOBYTE(v322) = *(v17 + v322);
  LODWORD(STACK[0x388]) = v323;
  LOBYTE(v322) = v322 ^ ((v323 | v324) >> 4);
  LODWORD(STACK[0x390]) = v319;
  v330 = (16 * (v322 & 0xF)) | (((v324 & 4 ^ 0xB503694) + (v324 & 4)) ^ 0xB50369B) & (v319 >> 4);
  v331 = 917 * (*(v17 + 917 * (((2 * v330) & 0x29E) + (v330 ^ 0x14Fu)) % 0x3D6) ^ (16 * *(v17 + (v329 - 982 * ((4373694 * v329) >> 32)))));
  LODWORD(STACK[0x38C]) = v331;
  v332 = 917 * (*(v17 + (917 * v330 + 63273) % 0x3D6u) ^ (*(v17 + (v331 + 63273 - 982 * ((4373694 * (v331 + 63273)) >> 32))) >> 4)) + 307195;
  v333 = 917 * (v322 & 0xF0 | (v319 >> 8) & 0xF);
  v334 = 917 * (*(v17 + (v333 + 307195 - 982 * ((4373694 * (v333 + 307195)) >> 32))) ^ (16 * *(v17 + (v332 - 982 * ((4373694 * v332) >> 32)))));
  LODWORD(STACK[0x37C]) = v334;
  v335 = *(v17 + v306) ^ (16 * *(v17 + v305));
  v336 = 917 * (*(v17 + (v333 + 63273 - 982 * ((4373694 * (v333 + 63273)) >> 32))) ^ (*(v17 + (v334 + 63273 - 982 * ((4373694 * (v334 + 63273)) >> 32))) >> 4)) + 307195;
  v337 = 917 * ((v323 >> 8) & 0xF0 | (v316 >> 12));
  LODWORD(STACK[0x378]) = v337;
  LODWORD(STACK[0x358]) = 917 * v335;
  v338 = *(v17 + (v336 - 982 * ((4373694 * v336) >> 32)));
  v339 = *(v17 + (v337 + 307195 - 982 * ((4373694 * (v337 + 307195)) >> 32)));
  LODWORD(STACK[0x360]) = (917 * v335 + 307195) % (((4 - 917 * v335) | (917 * v335 + 307195)) & 0x3D6u);
  v340 = 917 * (v339 ^ (16 * v338));
  LODWORD(STACK[0x370]) = v340;
  LODWORD(STACK[0x374]) = (v340 + 63273) % (((214 - v340) | (v340 + 63273)) & 0x3D6u);
  v341 = *(v17 + (v328 + 307195 - 982 * ((4373694 * (v328 + 307195)) >> 32)));
  LODWORD(STACK[0x364]) = v341;
  v342 = 917 * (v325 & 0xFFFFFF0F | (16 * (v341 & 0xF)));
  LODWORD(STACK[0x368]) = (v342 + 571291) % (((v342 + 571291) | (100 - v342)) & 0x3D6);
  v343 = 917 * ((STACK[0x4AC] & 0x14F) + (STACK[0x4AC] & 0x14F ^ 0x14F) + LODWORD(STACK[0x4B0]));
  v344 = v343 - 982 * ((4373694 * v343) >> 32);
  v345 = *(v17 + (LODWORD(STACK[0x480]) + 63273) % 0x3D6u) ^ (*(v17 + (LODWORD(STACK[0x47C]) + 63273 - 982 * ((4373694 * (LODWORD(STACK[0x47C]) + 63273)) >> 32))) >> 4);
  v346 = LODWORD(STACK[0x4E0]) >> 20;
  v347 = 917 * (*(v17 + (917 * (((HIWORD(LODWORD(STACK[0x494])) & 0xF0 ^ 0x7A7EDB22) & (v346 ^ 0xFF7FDFFC) | v346 & 0xFFFFFFFD) ^ 0x7A7EDB66) + 307195) % 0x3D6) ^ (16 * *(v17 + (917 * v345 + 307195 - 982 * ((4373694 * (917 * v345 + 307195)) >> 32))))) + 307195;
  v348 = (*(v17 + (v347 - 982 * ((4373694 * v347) >> 32))) << 28) ^ (*(v17 + LODWORD(STACK[0x484])) << 24);
  LOBYTE(v241) = *(v17 + v344);
  v349 = 917 * (STACK[0x4D8] & 0xFFFFFF0F | (16 * (v241 & 0xF))) + 571291;
  LOBYTE(v306) = *(v17 + (LODWORD(STACK[0x4A0]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x4A0]) + 307195)) >> 32)));
  v350 = 917 * (((v241 ^ (16 * v306)) & 0xF0 | (LODWORD(STACK[0x4C0]) >> 4)) ^ 0xC) + 571291;
  v351 = 917 * (((v306 ^ (16 * v238)) & 0xF0 | (LODWORD(STACK[0x4C0]) >> 8) & 0xF) ^ 0xB) + 571291;
  v352 = *(v17 + (LODWORD(STACK[0x498]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x498]) + 307195)) >> 32)));
  v353 = ((*(v17 + (LODWORD(STACK[0x488]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x488]) + 307195)) >> 32))) << 20) ^ (v352 << 16) ^ v348) >> 20;
  LOBYTE(v339) = v353 ^ 0xAF;
  v354 = 917 * (((LODWORD(STACK[0x348]) ^ (16 * v352)) & 0xF0 | HIWORD(v257) & 0xF) ^ 5) + 571291;
  v355 = v354 - 982 * ((4373694 * v354) >> 32);
  v356 = 16 * ((v353 ^ 0x1AF) & 0x128 | v353 & 0x127);
  v357 = 917 * ((v339 & 0xF0 | HIWORD(LODWORD(STACK[0x49C])) & 0xF) ^ 0xA2) + 571291;
  v358 = v357 - 982 * ((4373694 * v357) >> 32);
  v359 = (917 * ((~HIBYTE(v348) | 0xFFFFFF1F) & (v346 ^ 0x11EC43E9) ^ (HIBYTE(v348) | 0x11EC43EF)) + 571291) % 0x3D6;
  v360 = *(v17 + (v349 - 982 * ((4373694 * v349) >> 32)));
  v361 = v360 ^ (16 * *(v17 + (v350 - 982 * ((4373694 * v350) >> 32))));
  v362 = v361 ^ (*(v17 + (v351 - 982 * ((4373694 * v351) >> 32))) << 8);
  v363 = v362 ^ (*(v17 + LODWORD(STACK[0x350])) << 12);
  v364 = v363 ^ (*(v17 + v355) << 16) ^ 0x104BD472;
  v365 = v364 ^ (*(v17 + (917 * (((v356 ^ 0x802FC02F) & ((LODWORD(STACK[0x49C]) >> 12) ^ 0x802FC2A3) | v356 & 0x55555555) ^ 0x802FD2A1) + 571291) % 0x3D6) << 20);
  v366 = v365 ^ (*(v17 + v358) << 24);
  v367 = 917 * (((v366 ^ (*(v17 + v359) << 28)) >> 28) ^ 1) + 547449;
  v368 = (v365 >> 20) & 0xF ^ 4;
  v369 = (((-598 - v368) | (v368 + 597)) & 0x395 | (((v368 + 597) & 0x14) + ((-598 - v368) & 0x14))) * (v368 + 597);
  v370 = 917 * (HIWORD(v364) & 0xF ^ 0xB) + 547449;
  v371 = (*(v17 + (v367 - 982 * ((4373694 * v367) >> 32))) << 12) ^ (*(v17 + (917 * (HIBYTE(v366) & 0xF) + 547449 - 982 * ((4373694 * (917 * (HIBYTE(v366) & 0xF) + 547449)) >> 32))) << 8);
  v372 = *(v17 + (v370 - 982 * ((4373694 * v370) >> 32)));
  v373 = *(v17 + (917 * ((v362 >> 8) & 0xF) + 547449 - 982 * ((4373694 * (917 * ((v362 >> 8) & 0xF) + 547449)) >> 32)));
  v374 = *(v17 + (917 * (v360 & 0xF) + 547449 - 982 * ((4373694 * (917 * (v360 & 0xFu) + 547449)) >> 32)));
  v375 = LODWORD(STACK[0x39C]) ^ (16 * *(v17 + (917 * (v361 >> 4) + 547449 - 982 * ((4373694 * (917 * (v361 >> 4) + 547449)) >> 32)))) ^ (((*(v17 + (917 * (v363 >> 12) + 547449 - 982 * ((4373694 * (917 * (v363 >> 12) + 547449)) >> 32))) << 12) ^ ((((*(v17 + (v369 - 982 * ((4373694 * v369) >> 32))) << 12) ^ (((v371 ^ 0x834A2F) & ~v372 | v372 & 0xD0) << 8) ^ 0xDE4A69) & (v373 ^ 0xFFFFFB) | v373 & 0x96) << 8) ^ 0x49D01496) & (v374 ^ 0xFFFFFFBE) | v374 & 0x69);
  v376 = (LODWORD(STACK[0x580]) + LODWORD(STACK[0x458])) ^ LODWORD(STACK[0x34C]);
  v377 = LODWORD(STACK[0x588]) ^ 0x665EA7AE ^ (LODWORD(STACK[0x550]) + 1503537502 + (((LODWORD(STACK[0x398]) ^ 0x41701D29) + 1315686956) ^ ((LODWORD(STACK[0x398]) ^ 0xADBCD1C9) - 1566112052) ^ ((LODWORD(STACK[0x398]) ^ 0x282CD756) + 657915989)));
  LODWORD(STACK[0x338]) = v377;
  v378 = STACK[0x33C];
  v379 = (LODWORD(STACK[0x33C]) + 1236968784) & 0x7445A46F ^ STACK[0x33C] & 8;
  v380 = STACK[0x35C];
  v381 = (v377 ^ (LODWORD(STACK[0x35C]) - ((2 * (LODWORD(STACK[0x35C]) + 988691838)) & 0xEB76AFD2) - 1331063449)) - (LODWORD(STACK[0x35C]) + 988691838);
  LODWORD(STACK[0x34C]) = v381;
  v382 = v380 - 839484194 + v309;
  LODWORD(STACK[0x494]) = v382;
  v383 = LODWORD(STACK[0x3F0]) + LODWORD(STACK[0x4F0]);
  v384 = v380 + 536501128 + LODWORD(STACK[0x334]);
  LODWORD(STACK[0x334]) = v376 ^ 0x67A05420;
  v385 = ((v378 - 2 * v379 + 1040206263) ^ v376 ^ 0x67A05420) - v378 + 910514864;
  LODWORD(STACK[0x35C]) = v385;
  v386 = v378 + 1556276400 + v268;
  v387 = LODWORD(STACK[0x344]) - v268;
  v388 = v268 ^ 0x8808BB01 ^ v386 ^ v385;
  LODWORD(STACK[0x4AC]) = v388;
  v389 = v387 + v386 + 1643214747;
  LODWORD(STACK[0x320]) = v389;
  v390 = v388 - v389;
  LODWORD(STACK[0x4D8]) = v390;
  v391 = STACK[0x330];
  v392 = LODWORD(STACK[0x330]) - v390 - 1034486312;
  LODWORD(STACK[0x4E0]) = v392;
  v393 = v383 - 317847523 + v392;
  LODWORD(STACK[0x340]) = v308;
  v394 = v382 ^ v381 ^ v308;
  LODWORD(STACK[0x49C]) = v394;
  LODWORD(STACK[0x328]) = v384;
  v395 = v394 - v384;
  LODWORD(STACK[0x4C0]) = v395;
  v396 = ((v308 - v395) ^ 0x7FDFFA66) - 1683815003 + ((2 * (v308 - v395)) & 0xFFBFF4CC);
  LODWORD(STACK[0x4B0]) = v396;
  v397 = (*(v17 + (917 * (HIBYTE(v393) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIBYTE(v393) & 0xF) + 809711)) >> 32))) << 8) ^ (*(v17 + (917 * (v393 >> 28) + 809711 - 982 * ((4373694 * (917 * (v393 >> 28) + 809711)) >> 32))) << 12) | *(v17 + (917 * (HIWORD(v393) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIWORD(v393) & 0xF) + 809711)) >> 32)));
  LODWORD(STACK[0x4F0]) = v393;
  v398 = (v397 << 8) ^ (*(v17 + (917 * ((v393 >> 20) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v393 >> 20) & 0xF) + 809711)) >> 32))) << 12);
  LODWORD(STACK[0x488]) = v398;
  v399 = LODWORD(STACK[0x40C]) - v396 + 195078893;
  v400 = *(v17 + (917 * (v393 >> 4) + 809711 - 982 * ((4373694 * (917 * (v393 >> 4) + 809711)) >> 32)));
  v401 = v398 ^ (16 * *(v17 + (917 * (v393 >> 12) + 809711 - 982 * ((4373694 * (917 * (v393 >> 12) + 809711)) >> 32))));
  v402 = *(v17 + (917 * (v393 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v393 & 0xF) + 809711)) >> 32)));
  v403 = v401 ^ *(v17 + (917 * ((v393 >> 8) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v393 >> 8) & 0xF) + 809711)) >> 32)));
  LODWORD(STACK[0x40C]) = v401;
  LOBYTE(v243) = v403;
  LODWORD(STACK[0x458]) = v403;
  v404 = (v402 | (v403 << 8)) ^ (16 * v400);
  v405 = (*(v17 + (917 * (HIBYTE(v399) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIBYTE(v399) & 0xF) + 809711)) >> 32))) << 8) ^ (*(v17 + (917 * (v399 >> 28) + 809711 - 982 * ((4373694 * (917 * (v399 >> 28) + 809711)) >> 32))) << 12);
  LODWORD(STACK[0x498]) = v405;
  v406 = *(v17 + (917 * (HIWORD(v399) & 0xF) + 809711 - 982 * ((4373694 * (917 * (HIWORD(v399) & 0xF) + 809711)) >> 32)));
  v407 = v405 ^ (16 * *(v17 + (917 * ((v399 >> 20) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v399 >> 20) & 0xF) + 809711)) >> 32))));
  LODWORD(STACK[0x484]) = v407;
  v408 = *(v17 + (917 * (v399 >> 12) + 809711 - 982 * ((4373694 * (917 * (v399 >> 12) + 809711)) >> 32)));
  v409 = *(v17 + (917 * ((v399 >> 8) & 0xF) + 809711 - 982 * ((4373694 * (917 * ((v399 >> 8) & 0xF) + 809711)) >> 32)));
  v410 = v407 ^ v406;
  LODWORD(STACK[0x47C]) = v410;
  v411 = ((v409 << 8) | (v410 << 16)) ^ (v408 << 12);
  LOBYTE(v408) = *(v17 + (917 * (v399 >> 4) + 809711 - 982 * ((4373694 * (917 * (v399 >> 4) + 809711)) >> 32)));
  v412 = v402 & 0xF;
  LODWORD(STACK[0x4A0]) = v412;
  v413 = *(v17 + (917 * (v399 & 0xF) + 809711 - 982 * ((4373694 * (917 * (v399 & 0xF) + 809711)) >> 32)));
  v414 = v412 & 0xFFFFFF0F | (16 * (v413 & 0xF));
  LOBYTE(v413) = v408 ^ ((v411 | v413) >> 4);
  v414 *= 917;
  v415 = 917 * (*(v17 + (v414 + 307195 - 982 * ((4373694 * (v414 + 307195)) >> 32))) ^ v327);
  LODWORD(STACK[0x3F0]) = v415;
  v416 = 917 * (*(v17 + (v414 + 63273 - 982 * ((4373694 * (v414 + 63273)) >> 32))) ^ (*(v17 + (v415 + 63273 - 982 * ((4373694 * (v415 + 63273)) >> 32))) >> 4)) + 307195;
  LODWORD(STACK[0x480]) = v404;
  v417 = 917 * ((v404 >> 4) | (16 * (v413 & 0xF)));
  v418 = 917 * (*(v17 + (v417 + 307195 - 982 * ((4373694 * (v417 + 307195)) >> 32))) ^ (16 * *(v17 + (v416 - 982 * ((4373694 * v416) >> 32)))));
  LODWORD(STACK[0x39C]) = v418;
  v419 = 917 * (*(v17 + (v417 + 63273 - 982 * ((4373694 * (v417 + 63273)) >> 32))) ^ (*(v17 + (v418 + 63273 - 982 * ((4373694 * (v418 + 63273)) >> 32))) >> 4)) + 307195;
  v420 = 917 * (v413 & 0xF0 | (v404 >> 8) & 0xF);
  v421 = 917 * (*(v17 + (v420 + 307195 - 982 * ((4373694 * (v420 + 307195)) >> 32))) ^ (16 * *(v17 + (v419 - 982 * ((4373694 * v419) >> 32)))));
  LODWORD(STACK[0x398]) = v421;
  v422 = 917 * (*(v17 + (v420 + 63273 - 982 * ((4373694 * (v420 + 63273)) >> 32))) ^ (*(v17 + (v421 + 63273 - 982 * ((4373694 * (v421 + 63273)) >> 32))) >> 4)) + 307195;
  v423 = *(v17 + (v422 - 982 * ((4373694 * v422) >> 32)));
  v424 = 917 * ((v411 >> 8) & 0xF0 | (v243 >> 4));
  LODWORD(STACK[0x354]) = v424;
  v425 = *(v17 + (v424 + 307195 - 982 * ((4373694 * (v424 + 307195)) >> 32))) ^ (16 * v423);
  LODWORD(STACK[0x550]) = v375;
  v425 *= 917;
  LODWORD(STACK[0x348]) = v425;
  LODWORD(STACK[0x350]) = (v425 + 307195) % (v375 & 0x3D6 ^ 0x196 | v375 & 0x3D6 ^ 0x240);
  v426 = v391 + (((v386 ^ 0xBE5FCBE7) - 75492962) ^ ((v386 ^ 0x5FA5BDE) + 1076199845) ^ ((v386 ^ 0x26C97D90) + 1662429163));
  LODWORD(STACK[0x588]) = v426;
  v427 = ((v426 - 1907286742) & 0x3D6) + ((1907287765 - v426) & 0x3D6);
  v428 = 917 * ((v411 >> 12) & 0xF0 | (v401 >> 8) & 0xF);
  LODWORD(STACK[0x33C]) = v428;
  LODWORD(STACK[0x344]) = (v428 + 63273) % v427;
  v429 = LODWORD(STACK[0x3E4]) ^ 0x573C82FF;
  v430 = 917 * (HIBYTE(LODWORD(STACK[0x500])) & 0xF) + 809711;
  v431 = 917 * ((LODWORD(STACK[0x500]) >> 20) & 0xF) + 809711;
  v432 = 917 * (HIWORD(LODWORD(STACK[0x500])) & 0xF) + 809711;
  v433 = (*(v17 + (917 * (LODWORD(STACK[0x500]) >> 28) + 809711 - 982 * ((4373694 * (917 * (LODWORD(STACK[0x500]) >> 28) + 809711)) >> 32))) << 12) ^ 0xA03E54 ^ (*(v17 + (v430 - 982 * ((4373694 * v430) >> 32))) << 8);
  v434 = *(v17 + (v432 - 982 * ((4373694 * v432) >> 32)));
  v435 = v433 & ~v434 | v434 & 0xAB;
  v436 = 917 * (LODWORD(STACK[0x500]) >> 12) + 809711;
  v437 = 917 * ((LODWORD(STACK[0x500]) >> 8) & 0xF) + 809711;
  v438 = 917 * (LODWORD(STACK[0x500]) >> 4) + 809711;
  v439 = (*(v17 + (v431 - 982 * ((4373694 * v431) >> 32))) << 12) ^ (v435 << 8);
  v440 = *(v17 + (v437 - 982 * ((4373694 * v437) >> 32)));
  v441 = v439 ^ 0xB117CB;
  v442 = (((v439 ^ 0xB117CB) & (v440 ^ 0xFFFFDB) | v440 & 0x34) << 8) ^ (*(v17 + (v436 - 982 * ((4373694 * v436) >> 32))) << 12);
  LOBYTE(v436) = *(v17 + (v438 - 982 * ((4373694 * v438) >> 32))) ^ (((v442 ^ 0x6E8229E0) & (LODWORD(STACK[0x510]) ^ 0xFFFFFFE0) | STACK[0x510] & 0x10) >> 4);
  v443 = LODWORD(STACK[0x514]) >> 4;
  v444 = 917 * ((((16 * (v436 & 0xF)) ^ 0x79C8D92C) & (v443 ^ 0xFFDEDFF9) | (LODWORD(STACK[0x514]) >> 4) & 3) ^ 0x79C8D9CE);
  v445 = (v444 + 63273) % 0x3D6;
  v446 = 917 * (*(v17 + (v444 + 307195) % 0x3D6) ^ (16 * *(v17 + LODWORD(STACK[0x508]))));
  v447 = v446 + 307195 - 982 * ((4373694 * (v446 + 307195)) >> 32);
  v448 = 917 * (*(v17 + v445) ^ (*(v17 + (v446 + 63273 - 982 * ((4373694 * (v446 + 63273)) >> 32))) >> 4)) + 307195;
  v449 = 917 * ((v436 & 0xF0 ^ 0x10D808DF) & ((LODWORD(STACK[0x514]) >> 8) & 0xF ^ 0x10D808F7) ^ 0x10D808F0);
  v450 = 917 * (*(v17 + (v449 + 307195) % 0x3D6u) ^ (16 * *(v17 + (v448 - 982 * ((4373694 * v448) >> 32)))));
  v451 = v450 + 307195 - 982 * ((4373694 * (v450 + 307195)) >> 32);
  v452 = 917 * (*(v17 + (v449 + 63273) % 0x3D6u) ^ (*(v17 + (v450 + 63273 - 982 * ((4373694 * (v450 + 63273)) >> 32))) >> 4)) + 307195;
  v453 = (((v442 >> 8) & 0xF0 ^ 0x3E65E154) & ((LODWORD(STACK[0x518]) >> 12) ^ 0x3EF7EBF9) | (LODWORD(STACK[0x518]) >> 12) & 0xB) ^ 0x3E65E196;
  v454 = *(v17 + 917 * (v453 + (((459 - LODWORD(STACK[0x420])) | LODWORD(STACK[0x4E4])) & 0x14Fu)) % 0x3D6) ^ (16 * *(v17 + (v452 - 982 * ((4373694 * v452) >> 32))));
  v455 = (((688 - v454) & 0x395) + ((v454 + 335) & 0x395)) * (v454 + 335);
  v456 = 917 * (*(v17 + (917 * v453 + 63273) % 0x3D6u) ^ (*(v17 + (917 * v454 + 63273 - 982 * ((4373694 * (917 * v454 + 63273)) >> 32))) >> 4)) + 307195;
  v457 = 917 * (((v442 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x518])) & 0xF) ^ 0x3F);
  v458 = v455 - 982 * ((4373694 * v455) >> 32);
  v459 = 917 * (*(v17 + (v457 + 307195 - 982 * ((4373694 * (v457 + 307195)) >> 32))) ^ (16 * *(v17 + (v456 - 982 * ((4373694 * v456) >> 32)))));
  v460 = 917 * (*(v17 + (v457 + 63273 - 982 * ((4373694 * (v457 + 63273)) >> 32))) ^ (*(v17 + (v459 + 63273 - 982 * ((4373694 * (v459 + 63273)) >> 32))) >> 4)) + 307195;
  v461 = 917 * (((v441 >> 8) & 0xF0 | (LODWORD(STACK[0x520]) >> 12)) ^ 0x42);
  v462 = 917 * (*(v17 + (v461 + 307195 - 982 * ((4373694 * (v461 + 307195)) >> 32))) ^ (16 * *(v17 + (v460 - 982 * ((4373694 * v460) >> 32)))));
  v463 = v462 + 307195 - 982 * ((4373694 * (v462 + 307195)) >> 32);
  v464 = 917 * (*(v17 + (v461 + 63273 - 982 * ((4373694 * (v461 + 63273)) >> 32))) ^ (*(v17 + (v462 + 63273 - 982 * ((4373694 * (v462 + 63273)) >> 32))) >> 4)) + 307195;
  v465 = 917 * (((v441 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x520])) & 0xF) ^ 0xF0);
  v466 = 917 * (*(v17 + (v465 + 307195 - 982 * ((4373694 * (v465 + 307195)) >> 32))) ^ (16 * *(v17 + (v464 - 982 * ((4373694 * v464) >> 32)))));
  v467 = 917 * (*(v17 + (v465 + 63273 - 982 * ((4373694 * (v465 + 63273)) >> 32))) ^ (*(v17 + (v466 + 63273 - 982 * ((4373694 * (v466 + 63273)) >> 32))) >> 4)) + 307195;
  v468 = 917 * (*(v17 + (917 * (((HIWORD(v441) & 0xF0 ^ 0xD713BCA3) & ((LODWORD(STACK[0x524]) >> 20) ^ 0xD713BCFD) | (LODWORD(STACK[0x524]) >> 20) & 0xC) ^ 0xD713BC2B) + 307195) % 0x3D6) ^ (16 * *(v17 + (v467 - 982 * ((4373694 * v467) >> 32))))) + 307195;
  v469 = *(v17 + (LODWORD(STACK[0x4F8]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x4F8]) + 307195)) >> 32)));
  v470 = v469 ^ (16 * *(v17 + v447));
  v471 = v470 ^ (*(v17 + v451) << 8);
  v472 = *(v17 + v463);
  v473 = v471 ^ (*(v17 + v458) << 12);
  v474 = v473 ^ (*(v17 + (v459 + 307195 - 982 * ((4373694 * (v459 + 307195)) >> 32))) << 16);
  v475 = v474 ^ (v472 << 20);
  v476 = v475 ^ (*(v17 + (v466 + 307195 - 982 * ((4373694 * (v466 + 307195)) >> 32))) << 24) ^ ((*(v17 + (v468 - 982 * ((4373694 * v468) >> 32))) << 28) | 0x2B75E55);
  v477 = 917 * ((STACK[0x51C] & 0xFFFFFF0F | (16 * (v469 & 0xF))) ^ 7) + 571291;
  v478 = 917 * (((v470 & 0xF0 ^ 0xBA6AE82E) & (v443 ^ 0xBA6EFCF9) | (LODWORD(STACK[0x514]) >> 4) & 1) ^ 0xBA6AE82E) + 571291;
  v479 = 917 * (((v471 >> 4) & 0xF0 | (LODWORD(STACK[0x514]) >> 8) & 0xF) ^ 7) + 571291;
  v480 = 917 * (((v473 >> 8) & 0xF0 | (LODWORD(STACK[0x518]) >> 12)) ^ 6) + 571291;
  v481 = 917 * (((v474 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x518])) & 0xF) ^ 0xF) + 571291;
  v482 = 917 * ((HIWORD(v475) & 0xF0 | (LODWORD(STACK[0x520]) >> 12)) ^ 2) + 571291;
  v483 = 917 * (((v476 >> 20) & 0xF0 | HIWORD(LODWORD(STACK[0x520])) & 0xF) ^ 0x20) + 571291;
  v484 = ((HIBYTE(v476) & 0x50) - 1768077400) ^ (~HIBYTE(v476) | 0xFFFFFF5F) & ((LODWORD(STACK[0x524]) >> 20) ^ 0x969D47A2);
  v485 = *(v17 + (v477 - 982 * ((4373694 * v477) >> 32)));
  v486 = *(v17 + ((400 - v484) & 0x195 ^ (v484 + 623) & 0x395) * (v484 + 623) % 0x3D6);
  v487 = (~(v486 << 29) | 0x5FFFFFFF) + (v486 << 28);
  v488 = v485 ^ (16 * *(v17 + v478 % 0x3D6));
  v489 = v488 ^ (*(v17 + (v479 - 982 * ((4373694 * v479) >> 32))) << 8);
  v490 = v489 ^ (*(v17 + (v480 - 982 * ((4373694 * v480) >> 32))) << 12);
  v491 = v490 ^ (*(v17 + (v481 - 982 * ((4373694 * v481) >> 32))) << 16) ^ 0xE25D907C;
  v492 = v491 ^ (*(v17 + (v482 - 982 * ((4373694 * v482) >> 32))) << 20);
  v493 = v492 ^ (*(v17 + (v483 - 982 * ((4373694 * v483) >> 32))) << 24);
  v494 = ((((268434858 - (((v493 ^ (v487 + 1557957626)) >> 28) ^ 0xB)) | ((((v493 ^ (v487 + 1557957626)) >> 28) ^ 0xB) + 597)) & 0x8200204) - 136314479) * ((((v493 ^ (v487 + 1557957626)) >> 28) ^ 0xB) + 597);
  v495 = 917 * ((HIBYTE(v493) & 0xF ^ 0x257) + ((v493 >> 23) & 0xA));
  v496 = 917 * ((v492 >> 20) & 0xF ^ 5) + 547449;
  v497 = 917 * (HIWORD(v491) & 0xF ^ 0xD) + 547449;
  v498 = *(v17 + (v497 - 982 * ((4373694 * v497) >> 32)));
  v499 = *(v17 + (917 * ((v489 >> 8) & 0xF) + 547449 - 982 * ((4373694 * (917 * ((v489 >> 8) & 0xF) + 547449)) >> 32)));
  v500 = *(v17 + (917 * (v485 & 0xF) + 547449 - 982 * ((4373694 * (917 * (v485 & 0xFu) + 547449)) >> 32)));
  v501 = ((*(v17 + (917 * (v490 >> 12) + 547449 - 982 * ((4373694 * (917 * (v490 >> 12) + 547449)) >> 32))) << 12) ^ ((((*(v17 + (v496 - 982 * ((4373694 * v496) >> 32))) << 12) ^ ((((*(v17 + v494 % 0x3D6) << 12) ^ (*(v17 + (v495 - 982 * ((4373694 * v495) >> 32))) << 8) ^ 0xA5D117) & ~v498 | v498 & 0xE8) << 8) ^ 0xCD1E14) & (v499 ^ 0xFFFF3E) | v499 & 0xEB) << 8) ^ 0xECE5B0D2) & (v500 ^ 0xFFFFFFF7) | v500 & 0x2D;
  LODWORD(STACK[0x528]) ^= LODWORD(STACK[0x4DC]);
  LODWORD(STACK[0x520]) = (LODWORD(STACK[0x55C]) - ((2 * LODWORD(STACK[0x55C])) & 0x261C3CD4) + 319692394) ^ (16 * *(v17 + (917 * (v488 >> 4) + 547449 - 982 * ((4373694 * (917 * (v488 >> 4) + 547449)) >> 32)))) ^ v501;
  v502 = 917 * (LODWORD(STACK[0x4B8]) >> 12) + 547449;
  v503 = 917 * ((LODWORD(STACK[0x4C8]) >> 8) & 0xF) + 547449;
  v504 = 917 * (LODWORD(STACK[0x4D4]) >> 4) + 547449;
  v505 = *(v17 + (v503 - 982 * ((4373694 * v503) >> 32)));
  v506 = ((LODWORD(STACK[0x474]) << 16) ^ 0xAF529FFD) & ((v505 << 8) ^ 0xFFFFDFFD) & 0xFFFF9FFF | (((v505 >> 5) & 3) << 13);
  LODWORD(STACK[0x55C]) = LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x580]);
  v507 = *(v17 + (917 * (STACK[0x560] & 0xF) + 547449 - 982 * ((4373694 * (917 * (STACK[0x560] & 0xF) + 547449)) >> 32)));
  LODWORD(STACK[0x560]) = LODWORD(STACK[0x46C]) ^ (16 * *(v17 + (v504 - 982 * ((4373694 * v504) >> 32)))) ^ ((v506 ^ (*(v17 + (v502 - 982 * ((4373694 * v502) >> 32))) << 12) ^ 0xEEA45EDF) & ~v507 | v507 & 0xDDDDDDDD);
  v508 = *(v17 + (LODWORD(STACK[0x444]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x444]) + 307195)) >> 32))) ^ (16 * *(v17 + (LODWORD(STACK[0x438]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x438]) + 307195)) >> 32))));
  v509 = 917 * (((LODWORD(STACK[0x430]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x418])) & 0xF) ^ 0x8B);
  v510 = *(v17 + (v509 + 307195 - 982 * ((4373694 * (v509 + 307195)) >> 32))) ^ (16 * *(v17 + LODWORD(STACK[0x3F8])));
  v511 = 917 * (*(v17 + (v509 + 63273 - 982 * ((4373694 * (v509 + 63273)) >> 32))) ^ (*(v17 + (917 * v510 + 63273 - 982 * ((4373694 * (917 * v510 + 63273)) >> 32))) >> 4)) + 307195;
  v512 = 917 * (*(v17 + (LODWORD(STACK[0x3EC]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x3EC]) + 307195)) >> 32))) ^ (16 * *(v17 + (v511 - 982 * ((4373694 * v511) >> 32)))));
  v513 = v512 + 307195 - 982 * ((4373694 * (v512 + 307195)) >> 32);
  v514 = 917 * (*(v17 + LODWORD(STACK[0x3F4])) ^ (*(v17 + (v512 + 63273 - 982 * ((4373694 * (v512 + 63273)) >> 32))) >> 4)) + 307195;
  v515 = ((LODWORD(STACK[0x454]) >> 4) & 0xF0 | HIWORD(LODWORD(STACK[0x404])) & 0xF) ^ 6;
  v516 = 917 * v515 + 307195 - 982 * ((4373694 * (917 * v515 + 307195)) >> 32);
  v517 = (((442 - v515) ^ (v515 + 69)) & 0xFFFFFD81 | 0x214) * (v515 + 69);
  v518 = *(v17 + v516) ^ (16 * *(v17 + (v514 - 982 * ((4373694 * v514) >> 32))));
  v519 = v517 - 982 * ((4373694 * v517) >> 32);
  v520 = 917 * v518 + 307195 - 982 * ((4373694 * (917 * v518 + 307195)) >> 32);
  v521 = v508 ^ (*(v17 + (LODWORD(STACK[0x434]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x434]) + 307195)) >> 32))) << 8);
  v522 = 917 * (*(v17 + v519) ^ (*(v17 + (v518 + 69) * (v521 & 0x195 ^ 0x6BD497DF ^ (v521 & 0x395 ^ 0x6BD4964A) & (v521 | 0x6BD4944A)) % 0x3D6) >> 4)) + 307195;
  v523 = v522 - 982 * ((4373694 * v522) >> 32);
  v524 = LODWORD(STACK[0x478]) >> 20;
  v525 = 917 * (((LODWORD(STACK[0x464]) >> 8) & 0xF0 ^ 0x16D4124E) & (v524 ^ 0x16FE9EFE) ^ (v524 | 0x16D4124E)) + 307195;
  v526 = 917 * ((*(v17 + v525 % 0x3D6) ^ (16 * *(v17 + v523))) + ((((v525 % 0x3D6) & 0xA0 ^ 0x74BBC0A0) + ((v525 % 0x3D6) & 0xA0)) ^ 0x74BBC1EF));
  v527 = v521 ^ (*(v17 + (LODWORD(STACK[0x414]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x414]) + 307195)) >> 32))) << 12);
  v528 = v527 ^ (*(v17 + (917 * v510 + 307195 - 982 * ((4373694 * (917 * v510 + 307195)) >> 32))) << 16);
  v529 = v528 ^ 0x24A064FC ^ (*(v17 + v513) << 20);
  v530 = 917 * ((((16 * ((v528 ^ 0x24A064FC) & 0xF)) ^ 0x573C823D) & v429 | STACK[0x468] & 2) ^ 0x573C82FD) + 571291;
  v531 = v529 ^ (*(v17 + v520) << 24);
  v532 = *(v17 + (917 * (HIWORD(LODWORD(STACK[0x418])) & 0xF ^ 0x2248240F ^ ((v528 >> 12) & 0xF0 | 0x22482404)) + 571291) % 0x3D6) << ((STACK[0x44C] & 0x57 ^ 0x54) + (STACK[0x44C] & 0x57 ^ 3u) - 71);
  v533 = 917 * ((HIWORD(v529) & 0xF0 | (LODWORD(STACK[0x404]) >> 12)) ^ 0xA5) + 571291;
  v534 = v533 - 982 * ((4373694 * v533) >> 32);
  v535 = *(v17 + v530 % 0x3D6) ^ 0xEC51BAD3 ^ (16 * *(v17 + (917 * (((v508 & 0xF0 | 0x1185CC0B) & (LODWORD(STACK[0x460]) ^ 0x7BADFDF3) | STACK[0x44C] & 4) ^ 0x1185CC0Fu) + 571291) % 0x3D6)) ^ (*(v17 + (917 * ((((v521 >> 4) & 0xF0 ^ 0x15BA77B7) & (LODWORD(STACK[0x450]) + 364541936) | (LODWORD(STACK[0x44C]) >> 4) & 8) ^ 0x15BA77BF) + 571291) % 0x3D6) << 8) ^ (*(v17 + (917 * ((((v527 >> 8) & 0xF0 ^ 0x3A3A6048) & (LODWORD(STACK[0x448]) ^ 0xBE7AFCF4) | (LODWORD(STACK[0x418]) >> 12) & 7) ^ 0x3A3A604C) + 571291) % 0x3D6) << 12) ^ (v532 - 330188077 - ((2 * v532) & 0xD8A375A6));
  v536 = v531 ^ (*(v17 + v526 % 0x3D6) << 28);
  v537 = 917 * ((v531 >> 20) & 0xF0 ^ ((v534 & 0xF ^ 0xF) + (v534 & 0xF)) & (HIWORD(LODWORD(STACK[0x478])) ^ 6) ^ 0x40) + 571291;
  v538 = 917 * ((v524 | (16 * (v536 >> 28))) ^ 0x20) + 571291;
  v539 = v535 ^ (*(v17 + v534) << 20);
  v540 = v539 ^ (*(v17 + v537 - 982 * (((69979101 * v537) >> 32) >> 4)) << 24);
  v541 = 917 * ((v540 ^ (*(v17 + (v538 - 982 * ((4373694 * v538) >> 32))) << 28)) >> 28) + 547449;
  v542 = (*(v17 + (917 * (HIBYTE(v540) & 0xF) + 547449 - 982 * ((4373694 * (917 * (HIBYTE(v540) & 0xF) + 547449)) >> 32))) << 8) ^ (*(v17 + (v541 - 982 * ((4373694 * v541) >> 32))) << 12) | *(v17 + (917 * (HIWORD(v535) & 0xF) + 547449 - 982 * ((4373694 * (917 * (HIWORD(v535) & 0xF) + 547449)) >> 32)));
  v543 = ((((((v535 >> 8) & 0xF) + 597) & 0xFFFFFE3F) + ((-598 - ((v535 >> 8) & 0xF)) & 0x165D5BF)) & (((-598 - ((v535 >> 8) & 0xF)) & 0xC822995) + ((((v535 >> 8) & 0xF) + 597) & 0x215))) * (((v535 >> 8) & 0xF) + 597);
  v544 = ((((v542 << 8) ^ (*(v17 + (917 * ((v539 >> 20) & 0xF) + 547449 - 982 * ((4373694 * (917 * ((v539 >> 20) & 0xF) + 547449)) >> 32))) << 12) | *(v17 + (v543 - 982 * ((4373694 * v543) >> 32)))) << 8) ^ (*(v17 + (917 * (v535 >> 12) + 547449 - 982 * ((4373694 * (917 * (v535 >> 12) + 547449)) >> 32))) << 12) | *(v17 + (917 * (v535 & 0xF) + 547449 - 982 * ((4373694 * (917 * (v535 & 0xF) + 547449)) >> 32)))) ^ (16 * *(v17 + (917 * (v535 >> 4) + 547449 - 982 * ((4373694 * (917 * (v535 >> 4) + 547449)) >> 32))));
  LODWORD(STACK[0x524]) = (v544 - ((2 * v544) & 0xEB76AFD2) + 1975212009) ^ LODWORD(STACK[0x338]);
  v545 = (LODWORD(STACK[0x57C]) - ((2 * LODWORD(STACK[0x4D0])) & 0xE88B48CE) - 1081056425) ^ LODWORD(STACK[0x334]);
  v546 = (*(v17 + (LODWORD(STACK[0x3B0]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x3B0]) + 307195)) >> 32))) << 12) ^ (*(v17 + (LODWORD(STACK[0x3B4]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x3B4]) + 307195)) >> 32))) << 8);
  v547 = 917 * (*(v17 + LODWORD(STACK[0x3DC])) ^ (*(v17 + (LODWORD(STACK[0x358]) + 63273 - 982 * ((4373694 * (LODWORD(STACK[0x358]) + 63273)) >> 32))) >> 4)) + 307195;
  v548 = 917 * ((LODWORD(STACK[0x3D4]) >> 12) & 0xF0 | HIBYTE(LODWORD(STACK[0x3D8])) & 0xF);
  v549 = (*(v17 + LODWORD(STACK[0x360])) << 20) ^ (*(v17 + (LODWORD(STACK[0x3AC]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x3AC]) + 307195)) >> 32))) << 16);
  v550 = 917 * (*(v17 + (v548 + 307195 - 982 * ((4373694 * (v548 + 307195)) >> 32))) ^ (16 * *(v17 + (v547 - 982 * ((4373694 * v547) >> 32)))));
  v551 = v550 + 307195 - 982 * ((4373694 * (v550 + 307195)) >> 32);
  v552 = 917 * (*(v17 + (v548 + 63273 - 982 * ((4373694 * (v548 + 63273)) >> 32))) ^ (*(v17 + (v550 + 63273 - 982 * ((4373694 * (v550 + 63273)) >> 32))) >> 4)) + 307195;
  v553 = 917 * ((LODWORD(STACK[0x540]) >> 8) & 0xF0 | (LODWORD(STACK[0x470]) >> 12)) + 307195;
  v554 = 917 * (*(v17 + (v553 - 982 * ((4373694 * v553) >> 32))) ^ (16 * *(v17 + (v552 - 982 * ((4373694 * v552) >> 32))))) + 307195;
  v555 = *(v17 + (LODWORD(STACK[0x3BC]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x3BC]) + 307195)) >> 32)));
  v556 = v555 ^ (16 * *(v17 + 917 * LODWORD(STACK[0x3B8]) % 0x3D6u));
  v557 = 917 * (STACK[0x3E0] & 0xFFFFFF0F | (16 * (v555 & 0xF))) + 571291;
  v558 = 917 * (v556 & 0xF0 | (LODWORD(STACK[0x3D0]) >> 4)) + 571291;
  v559 = v546 ^ v556;
  v560 = 917 * ((v559 >> 4) & 0xF0 | (LODWORD(STACK[0x3D0]) >> 8) & 0xF) + 571291;
  v561 = 917 * ((v546 >> 8) & 0xF0 | (LODWORD(STACK[0x3CC]) >> 12)) + 571291;
  v562 = *(v17 + (v561 - 982 * ((4373694 * v561) >> 32)));
  v563 = (v562 << 12) ^ (*(v17 + (v560 - 982 * ((4373694 * v560) >> 32))) << 8);
  v564 = v549 ^ v559;
  v565 = v564 ^ (*(v17 + v551) << 24);
  v566 = 917 * (((v562 & 0xF ^ 0xF) + (v562 & 0xF)) & HIWORD(LODWORD(STACK[0x3CC])) ^ (v564 >> 12) & 0xF0) + 571291;
  v567 = 917 * (HIWORD(v549) & 0xF0 | (LODWORD(STACK[0x3D8]) >> 20) & 0xF) + 571291;
  v568 = (*(v17 + (v567 - 982 * ((4373694 * v567) >> 32))) << 20) ^ (*(v17 + v566 - 982 * (((69979101 * v566) >> 32) >> 4)) << 16);
  v569 = 917 * ((v565 >> 20) & 0xF0 | HIBYTE(LODWORD(STACK[0x3D8])) & 0xF) + 571291;
  v570 = v568 ^ (*(v17 + (v569 - 982 * ((4373694 * v569) >> 32))) << 24);
  v571 = 917 * (((v565 ^ (*(v17 + (v554 - 982 * ((4373694 * v554) >> 32))) << 28)) >> 24) & 0xF0 | (LODWORD(STACK[0x470]) >> 12)) + 571291;
  v572 = *(v17 + (v557 - 982 * ((4373694 * v557) >> 32)));
  v573 = v572 ^ (16 * *(v17 + (v558 - 982 * ((4373694 * v558) >> 32))));
  v574 = v563 ^ v573;
  v575 = (v563 ^ v573 | (*(v17 + (v571 - 982 * ((4373694 * v571) >> 32))) << 28)) ^ v570;
  v576 = ((((v563 >> 12) + 597) | (426 - (v563 >> 12))) & 0x395) * ((v563 >> 12) + 597);
  v577 = (((((*(v17 + (917 * (HIBYTE(v570) & 0xF) + 547449 - 982 * ((4373694 * (917 * (HIBYTE(v570) & 0xF) + 547449)) >> 32))) << 8) ^ (*(v17 + (917 * (v575 >> 28) + 547449 - 982 * ((4373694 * (917 * (v575 >> 28) + 547449)) >> 32))) << 12) | *(v17 + (917 * (HIWORD(v575) & 0xF) + 547449 - 982 * ((4373694 * (917 * (HIWORD(v575) & 0xF) + 547449)) >> 32)))) << 8) ^ (*(v17 + (917 * ((v575 >> 20) & 0xF) + 547449 - 982 * ((4373694 * (917 * ((v575 >> 20) & 0xF) + 547449)) >> 32))) << 12) | *(v17 + (917 * ((v574 >> 8) & 0xF) + 547449 - 982 * ((4373694 * (917 * ((v574 >> 8) & 0xF) + 547449)) >> 32)))) << 8) ^ (*(v17 + (v576 - 982 * ((4373694 * v576) >> 32))) << 12) | *(v17 + (917 * (v572 & 0xF) + 547449 - 982 * ((4373694 * (917 * (v572 & 0xFu) + 547449)) >> 32)));
  LODWORD(STACK[0x518]) = LODWORD(STACK[0x35C]) ^ LODWORD(STACK[0x3E8]);
  LODWORD(STACK[0x51C]) = LODWORD(STACK[0x34C]) ^ (16 * *(v17 + (917 * (v573 >> 4) + 547449 - 982 * ((4373694 * (917 * (v573 >> 4) + 547449)) >> 32)))) ^ v577;
  v578 = (*(v17 + (LODWORD(STACK[0x37C]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x37C]) + 307195)) >> 32))) << 8) ^ (16 * *(v17 + (LODWORD(STACK[0x38C]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x38C]) + 307195)) >> 32))));
  v579 = 917 * (*(v17 + (LODWORD(STACK[0x378]) + 63273 - 982 * ((4373694 * (LODWORD(STACK[0x378]) + 63273)) >> 32))) ^ (*(v17 + LODWORD(STACK[0x374])) >> 4)) + 307195;
  v580 = 917 * ((LODWORD(STACK[0x388]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x380])) & 0xF);
  v581 = *(v17 + (v580 + 307195 - 982 * ((4373694 * (v580 + 307195)) >> 32))) ^ (16 * *(v17 + (v579 - 982 * ((4373694 * v579) >> 32))));
  v582 = 917 * (*(v17 + (v580 + 63273 - 982 * ((4373694 * (v580 + 63273)) >> 32))) ^ (*(v17 + (917 * v581 + 63273 - 982 * ((4373694 * (917 * v581 + 63273)) >> 32))) >> 4)) + 307195;
  v583 = (LODWORD(STACK[0x394]) >> 8) & 0xF0 | (LODWORD(STACK[0x3A8]) >> 12);
  v584 = *(v17 + (917 * v583 + 307195 - 982 * ((4373694 * (917 * v583 + 307195)) >> 32))) ^ (16 * *(v17 + (v582 - 982 * ((4373694 * v582) >> 32))));
  v585 = 917 * (((2 * v583) & 0x8A) + (v583 ^ 0x45));
  v586 = 917 * (*(v17 + (v585 - 982 * ((4373694 * v585) >> 32))) ^ (*(v17 + (917 * v584 + 63273 - 982 * ((4373694 * (917 * v584 + 63273)) >> 32))) >> 4)) + 307195;
  v587 = 917 * ((LODWORD(STACK[0x394]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x3A8])) & 0xF);
  v588 = *(v17 + (v587 + 307195 - 982 * ((4373694 * (v587 + 307195)) >> 32))) ^ (16 * *(v17 + (v586 - 982 * ((4373694 * v586) >> 32))));
  v589 = 917 * (*(v17 + (v587 + 63273 - 982 * ((4373694 * (v587 + 63273)) >> 32))) ^ (*(v17 + (917 * v588 + 63273 - 982 * ((4373694 * (917 * v588 + 63273)) >> 32))) >> 4)) + 307195;
  v590 = 917 * ((LODWORD(STACK[0x3A0]) >> 8) & 0xF0 | (LODWORD(STACK[0x408]) >> 20) & 0xF) + 307195;
  v591 = 917 * (*(v17 + (v590 - 982 * ((4373694 * v590) >> 32))) ^ (16 * *(v17 + (v589 - 982 * ((4373694 * v589) >> 32))))) + 307195;
  v592 = v578 ^ LODWORD(STACK[0x364]);
  v593 = v592 ^ (*(v17 + (LODWORD(STACK[0x370]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x370]) + 307195)) >> 32))) << 12);
  v594 = 917 * (v592 & 0xF0 | (LODWORD(STACK[0x390]) >> 4)) + 571291;
  v595 = 917 * ((v578 >> 4) & 0xF0 | (LODWORD(STACK[0x390]) >> 8) & 0xF) + 571291;
  v596 = v593 ^ (*(v17 + (917 * v581 + 307195 - 982 * ((4373694 * (917 * v581 + 307195)) >> 32))) << 16);
  v597 = *(v17 + LODWORD(STACK[0x368])) ^ (16 * *(v17 + (v594 - 982 * ((4373694 * v594) >> 32)))) ^ (*(v17 + (v595 - 982 * ((4373694 * v595) >> 32))) << 8);
  v598 = *(v17 + (LODWORD(STACK[0x42C]) + 917 * (((v593 >> 8) & 0xF0 | (LODWORD(STACK[0x380]) >> 12)) - (v581 & 0xD91) + (v581 | 0x26E))) % 0x3D6) << 12;
  v599 = v597 ^ -v597 ^ (v598 - (v598 ^ v597));
  v600 = v596 ^ (*(v17 + (917 * v584 + 307195 - 982 * ((4373694 * (917 * v584 + 307195)) >> 32))) << 20);
  v601 = 917 * ((v596 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x380])) & 0xF) + 571291;
  v602 = v600 ^ (*(v17 + (917 * v588 + 307195 - 982 * ((4373694 * (917 * v588 + 307195)) >> 32))) << 24);
  v603 = 917 * (HIWORD(v600) & 0xF0 | (LODWORD(STACK[0x3A8]) >> 12)) + 571291;
  v604 = v602 ^ (*(v17 + (v591 - 982 * ((4373694 * v591) >> 32))) << 28);
  v605 = 917 * ((v602 >> 20) & 0xF0 | HIWORD(LODWORD(STACK[0x3A8])) & 0xF) + 571291;
  v606 = 917 * (HIBYTE(v604) & 0xF0 | (LODWORD(STACK[0x408]) >> 20) & 0xF) + 571291;
  v607 = v599 + v598;
  v608 = (*(v17 + (v603 - 982 * ((4373694 * v603) >> 32))) << 20) ^ (*(v17 + (v601 - 982 * ((4373694 * v601) >> 32))) << 16) ^ v607;
  v609 = ((*(v17 + (v606 - 982 * ((4373694 * v606) >> 32))) << 28) ^ (*(v17 + (v605 - 982 * ((4373694 * v605) >> 32))) << 24) ^ v608) >> (v599 & 0x18) >> (v599 & 0x18 ^ 0x18);
  v610 = 917 * (v609 >> 4) + 547449 - 982 * ((4373694 * (917 * (v609 >> 4) + 547449)) >> 32);
  LODWORD(STACK[0x540]) = v545;
  v611 = ((v609 & 0xF) + 597) * ((v545 & 0x395 ^ 0x395) + (v545 & 0x395));
  v612 = (((((*(v17 + (v611 - 982 * ((4373694 * v611) >> 32))) << 8) ^ (*(v17 + v610) << 12) | *(v17 + (917 * (HIWORD(v608) & 0xF) + 547449 - 982 * ((4373694 * (917 * (HIWORD(v608) & 0xF) + 547449)) >> 32)))) << 8) ^ (*(v17 + (917 * ((v608 >> 20) & 0xF) + 547449 - 982 * ((4373694 * (917 * ((v608 >> 20) & 0xF) + 547449)) >> 32))) << 12) | *(v17 + (917 * ((v599 >> 8) & 0xF) + 547449 - 982 * ((4373694 * (917 * ((v599 >> 8) & 0xF) + 547449)) >> 32)))) << 8) ^ (*(v17 + (917 * (v607 >> 12) + 547449 - 982 * ((4373694 * (917 * (v607 >> 12) + 547449)) >> 32))) << 12);
  v613 = ((((v599 & 0xF) + 597) & 0x215) + ((426 - (v599 & 0xF)) & 0x195)) * ((v599 & 0xF) + 597);
  LODWORD(STACK[0x514]) = LODWORD(STACK[0x4AC]) ^ LODWORD(STACK[0x41C]);
  v614 = (LODWORD(STACK[0x494]) ^ 0x9D6CEDA9) + LODWORD(STACK[0x340]);
  LODWORD(STACK[0x510]) = LODWORD(STACK[0x49C]) ^ (16 * *(v17 + (917 * (v599 >> 4) + 547449 - 982 * ((4373694 * (917 * (v599 >> 4) + 547449)) >> 32)))) ^ (v612 | *(v17 + (v613 - 982 * ((4373694 * v613) >> 32))));
  v615 = 917 * (*(v17 + (LODWORD(STACK[0x354]) + 63273 - 982 * ((4373694 * (LODWORD(STACK[0x354]) + 63273)) >> 32))) ^ (*(v17 + (LODWORD(STACK[0x348]) + 63273 - 982 * ((4373694 * (LODWORD(STACK[0x348]) + 63273)) >> 32))) >> 4)) + 307195;
  v616 = (*(v17 + LODWORD(STACK[0x350])) << 12) ^ (*(v17 + (LODWORD(STACK[0x398]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x398]) + 307195)) >> 32))) << 8);
  v617 = 917 * (*(v17 + (LODWORD(STACK[0x33C]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x33C]) + 307195)) >> 32))) ^ (16 * *(v17 + (v615 - 982 * ((4373694 * v615) >> 32)))));
  v618 = v617 + 307195 - 982 * ((4373694 * (v617 + 307195)) >> 32);
  v619 = 917 * (*(v17 + LODWORD(STACK[0x344])) ^ (*(v17 + (v617 + 63273 - 982 * ((4373694 * (v617 + 63273)) >> 32))) >> 4)) + 307195;
  v620 = 917 * (STACK[0x47C] & 0xF0 | (LODWORD(STACK[0x488]) >> 12));
  v621 = 917 * (*(v17 + (v620 + 307195 - 982 * ((4373694 * (v620 + 307195)) >> 32))) ^ (16 * *(v17 + (v619 - 982 * ((4373694 * v619) >> 32)))));
  v622 = v621 + 307195 - 982 * ((4373694 * (v621 + 307195)) >> 32);
  v623 = 917 * (*(v17 + (v620 + 63273 - 982 * ((4373694 * (v620 + 63273)) >> 32))) ^ (*(v17 + (v621 + 63273 - 982 * ((4373694 * (v621 + 63273)) >> 32))) >> 4)) + 307195;
  v624 = 917 * ((LODWORD(STACK[0x484]) >> 4) & 0xF0 | HIWORD(LODWORD(STACK[0x488])) & 0xF);
  v625 = (*(v17 + v622) << 20) ^ (*(v17 + v618) << 16);
  v626 = 917 * (*(v17 + (v624 + 307195 - 982 * ((4373694 * (v624 + 307195)) >> 32))) ^ (16 * *(v17 + (v623 - 982 * ((4373694 * v623) >> 32)))));
  v627 = v626 + 307195 - 982 * ((4373694 * (v626 + 307195)) >> 32);
  v628 = 917 * (*(v17 + (v624 + 63273 - 982 * ((4373694 * (v624 + 63273)) >> 32))) ^ (*(v17 + (v626 + 63273 - 982 * ((4373694 * (v626 + 63273)) >> 32))) >> 4)) + 307195;
  v629 = 917 * ((LODWORD(STACK[0x498]) >> 8) & 0xF0 | (LODWORD(STACK[0x458]) >> 20) & 0xF) + 307195;
  v630 = 917 * (*(v17 + (v629 - 982 * ((4373694 * v629) >> 32))) ^ (16 * *(v17 + (v628 - 982 * ((4373694 * v628) >> 32))))) + 307195;
  v631 = *(v17 + (LODWORD(STACK[0x3F0]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x3F0]) + 307195)) >> 32)));
  v632 = v631 ^ (16 * *(v17 + (LODWORD(STACK[0x39C]) + 307195 - 982 * ((4373694 * (LODWORD(STACK[0x39C]) + 307195)) >> 32))));
  v633 = 917 * (STACK[0x4A0] & 0xFFFFFF0F | (16 * (v631 & 0xF))) + 571291;
  v634 = 917 * (v632 & 0xF0 | (LODWORD(STACK[0x480]) >> 4)) + 571291;
  v635 = v616 ^ v632;
  v636 = 917 * (((v616 ^ v632) >> 4) & 0xF0 | (LODWORD(STACK[0x480]) >> 8) & 0xF) + 571291;
  v637 = 917 * ((v616 >> 8) & 0xF0 | (LODWORD(STACK[0x458]) >> 4)) + 571291;
  v638 = v637 - 982 * ((4373694 * v637) >> 32);
  v639 = v625 ^ v635 ^ (*(v17 + v627) << 24);
  v640 = ((v625 ^ v635) >> 12) & 0xF0 | (LODWORD(STACK[0x40C]) >> 8) & 0xF;
  v641 = 917 * (((2 * v640) & 0xDE) + (v640 ^ 0x26F));
  v642 = v641 - 982 * ((4373694 * v641) >> 32);
  v643 = 917 * ((HIWORD(v625) & 0xF0 | (LODWORD(STACK[0x488]) >> 12)) + 623);
  v644 = v643 - 982 * ((4373694 * v643) >> 32);
  v645 = v639 ^ (*(v17 + (v630 - 982 * ((4373694 * v630) >> 32))) << 28);
  v646 = 917 * ((v639 >> 20) & 0xF0 | HIWORD(LODWORD(STACK[0x488])) & 0xF) + 571291;
  v647 = 917 * (HIBYTE(v645) & 0xF0 | (LODWORD(STACK[0x458]) >> 20) & 0xF) + 571291;
  v648 = v647 - 982 * ((4373694 * v647) >> 32);
  v649 = *(v17 + (v633 - 982 * ((4373694 * v633) >> 32)));
  v650 = v649 ^ (16 * *(v17 + (v634 - 982 * ((4373694 * v634) >> 32))));
  v651 = v650 ^ (*(v17 + (v636 - 982 * ((4373694 * v636) >> 32))) << 8);
  v652 = v651 ^ (*(v17 + v638) << 12);
  v653 = v652 ^ (*(v17 + v642) << 16);
  v654 = v653 ^ (*(v17 + v644) << 20);
  v655 = v654 ^ (*(v17 + (v646 - 982 * ((4373694 * v646) >> 32))) << 24);
  v656 = 917 * ((v655 ^ (*(v17 + v648) << 28)) >> 28) + 547449;
  v657 = (((((*(v17 + (917 * (HIBYTE(v655) & 0xF) + 547449 - 982 * ((4373694 * (917 * (HIBYTE(v655) & 0xF) + 547449)) >> 32))) << 8) ^ (*(v17 + (v656 - 982 * ((4373694 * v656) >> 32))) << 12) | *(v17 + (917 * (HIWORD(v653) & 0xF) + 547449 - 982 * ((4373694 * (917 * (HIWORD(v653) & 0xF) + 547449)) >> 32)))) << 8) ^ (*(v17 + (917 * ((v654 >> 20) & 0xF) + 547449 - 982 * ((4373694 * (917 * ((v654 >> 20) & 0xF) + 547449)) >> 32))) << 12) | *(v17 + (917 * ((v651 >> 8) & 0xF) + 547449 - 982 * ((4373694 * (917 * ((v651 >> 8) & 0xF) + 547449)) >> 32)))) << 8) ^ (*(v17 + (917 * (v652 >> 12) + 547449 - 982 * ((4373694 * (917 * (v652 >> 12) + 547449)) >> 32))) << 12);
  v658 = (917 * (v649 & 0xFu) + 546467) % 0x3D6;
  v659 = LODWORD(STACK[0x4C0]) - 988833002;
  v660 = LODWORD(STACK[0x4D8]) - 988833002;
  LODWORD(STACK[0x508]) = v659 ^ (16 * *(v17 + (917 * (v650 >> 4) + 547449 - 982 * ((4373694 * (917 * (v650 >> 4) + 547449)) >> 32)))) ^ (v657 | *(v17 + v658));
  v661 = v660 ^ (LODWORD(STACK[0x588]) + 618764480) ^ (LODWORD(STACK[0x4E0]) - (v660 ^ 0xB4F9F28C));
  v662 = LODWORD(STACK[0x4B0]) - (((v659 ^ 0xE2A90A39) - 872562892) ^ ((v659 ^ 0x142EBB68) + 1031409251) ^ ((v659 ^ 0x427E43DD) + 1797977816)) + 723000982;
  LODWORD(STACK[0x500]) = v614;
  LODWORD(STACK[0x4F8]) = v614 - 466900522;
  LODWORD(STACK[0x57C]) = v661;
  LODWORD(STACK[0x53C]) = v659 ^ (v614 - 466900522) ^ v662;
  return (*(STACK[0x570] + 8 * (LODWORD(STACK[0x52C]) ^ (11 * LODWORD(STACK[0x530])))))();
}

uint64_t sub_16734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x5E0] + 24);
  STACK[0xFC8] = v4;
  return (*(a3 + 8 * (((v4 != 0) * (((29 * (v3 ^ 0x6B4)) ^ 0xFFFFF719) + (v3 ^ 0xD81))) ^ v3)))();
}

uint64_t sub_16784(unsigned int a1, unsigned int a2, int a3, char a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  HIDWORD(a45) = v52 + 16;
  LODWORD(a35) = 1;
  return sub_CB1F8(a1, a2, a3, a4, (a5 + 16), a6, 87, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_167A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v9 = (LOBYTE(STACK[0x1511]) << (21 * (v7 ^ 0x68) + 28)) | (LOBYTE(STACK[0x1510]) << 24) | (LOBYTE(STACK[0x1512]) << 8) | LOBYTE(STACK[0x1513]);
  v10 = ((v9 - 634164002 - ((2 * v9) & 0xB466D9BC)) ^ 0xDA336CDE) << 32;
  v11 = STACK[0xCD0];
  v12 = bswap32(STACK[0x1514]);
  *v11 = ((v12 - 634164002 - ((2 * v12) & 0xB466D9BC)) ^ 0xF4E504027182A95FLL) & (v10 ^ 0xFEEF1526FFFFFFFFLL) ^ (v10 | 0xF4E50402ABB1C581);
  *(v11 + 16) = 12;
  *(v11 + 28) = 32;
  return (*(a7 + 8 * ((1312 * ((((*v11 & 0xFFFFFF0000000000) + v8 - (((*v11 & 0xFFFFFF0000000000) << (((21 * (v7 ^ 0x68)) ^ a6) - 75)) & 0x7703A9FE94C0B930)) ^ 0x30000000000) == v8)) ^ (21 * (v7 ^ 0x668)))))(STACK[0xD78]);
}

uint64_t sub_16940(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a2 * a1 + 1074987681 + v9;
  v11 = ((v8 + 2290) ^ 0x3E200D1C) + v10;
  v12 = *(v7 + 20) + 955314026;
  v13 = v10 > 0xC1DFF9C5;
  v14 = v11 > v12;
  if (v13 != v12 < 0x3E20063A)
  {
    v14 = v13;
  }

  return (*(a7 + 8 * ((93 * !v14) ^ v8)))();
}

uint64_t sub_169C8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W7>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v54 = a1 + 16;
  v55 = a2 - 16;
  v56 = (v51 - 1617) & (v54 - 8) | (v55 + 8) & a3;
  v57 = v50 ^ (v55 & a3 | v54 & 0xD8) ^ 0x89CB74BD ^ (((v55 & a3 | v54 & 0xD8) ^ 0x89CB74BD) - 0x12438BE671F685A3) ^ *(a4 + 8 * ((v55 & a3 | v54 & 0xD8) ^ 0x89CB7518));
  *(v48 + 8 * (v49 ^ v53)) = v50 ^ v56 ^ 0x89CB74BD ^ ((v56 ^ 0x89CB74BD) - 0x12438BE671F685A3) ^ *(a4 + 8 * (v56 ^ 0x89CB7518));
  *(v48 + 8 * ((v49 + 1) ^ v53)) = v57;
  return (*(a48 + 8 * (((2 * (v49 == 62)) | (16 * (v49 == 62))) ^ v52)))();
}

uint64_t sub_16E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *v6 = v5;
  *(v5 + 8) = *(a5 + 8);
  *(a5 + 8) = v5;
  return sub_201E4(a1, a2, a3, a4, 0x4E179E9CD88A77F9);
}

uint64_t sub_16EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = STACK[0x900];
  STACK[0x230] = STACK[0x890];
  *&STACK[0x310] = vdupq_n_s64(0x38uLL);
  *&STACK[0x420] = vdupq_n_s64(a5);
  *&STACK[0x3E0] = vdupq_n_s64(0x31E8616327758806uLL);
  *&STACK[0x3F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3C0] = vdupq_n_s64(0xD8ED138AC9B02D97);
  *&STACK[0x3D0] = vdupq_n_s64(0x2112EC75364FD268uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x7E2E43BDD4B4AACuLL);
  *&STACK[0x300] = vdupq_n_s64(0x775E10DD1918F566uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xC6FF552B5A03FB5DLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x8DFEAA56B407F6BALL);
  *&STACK[0x2B0] = vdupq_n_s64(0x68F247D12F420CDCuLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x2C22B00FFD4718DAuLL);
  *&STACK[0x290] = vdupq_n_s64(0xFD2F6A175F5B04CDLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x4B86DC17685EF991uLL);
  *&STACK[0x270] = vdupq_n_s64(0x2F200FBAC41AEAEFuLL);
  *&STACK[0x280] = vdupq_n_s64(0x2CFD3C6D034E92BEuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0x6CDE7E449AD50C82uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0xD0DFF0453BE51510);
  *&STACK[0x340] = vdupq_n_s64(0xD0E02262DF67D69uLL);
  *&STACK[0x320] = vdupq_n_s64(0xAFC44C9EE43CCADALL);
  *&STACK[0x330] = vdupq_n_s64(0x72E8FC861E8794C0uLL);
  *&STACK[0x250] = vdupq_n_s64(0x8B386A3CBF92BE35);
  *&STACK[0x260] = vdupq_n_s64(0x1670D4797F257C6AuLL);
  *&STACK[0x240] = vdupq_n_s64(0xE77C1B7F9E56D10FLL);
  *&STACK[0x410] = xmmword_F8180;
  LODWORD(STACK[0x220]) = v9 ^ 0x5B3;
  return (*(a7 + 8 * (((v8 - v10 < 0x10) * ((((v7 ^ 0xB47) - 267629768) & 0xFF3AFFD) + (((v7 ^ 0xB47) - 1226) ^ 0xE6))) ^ ((v7 ^ 0xB47) - 1222))))(975);
}

uint64_t sub_17180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x658];
  *(v8 - 240) = v7 - 1703288393 * ((v8 - 240) ^ 0xD91F6CDA) - 478;
  *(v8 - 232) = v9;
  (*(a7 + 8 * (v7 ^ 0x6D5)))(v8 - 240);
  v10 = (*(STACK[0x430] + 8 * (v7 ^ 0x6CD)))(STACK[0x658]);
  return sub_5E9B0(v10, v11, v12, v13, v14, v15, STACK[0x430]);
}

uint64_t sub_17280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, char a18, int a19, uint64_t a20, int a21, int *a22, uint64_t *a23, uint64_t a24, int a25, int a26, char *a27, int *a28)
{
  a19 = 1299398907;
  v31 = 1327116359 * ((&a21 + 243903010 - 2 * (&a21 & 0xE89AA22)) ^ 0xE8660F79);
  a24 = a20;
  a27 = &a18;
  a28 = &a19;
  a22 = &a17;
  a23 = &a20;
  a25 = v31 + a17 + 281254580;
  a21 = v31 + v28 + 3189;
  v32 = (*(v30 + 8 * (v28 ^ 0xF32)))(&a21);
  return (*(v30 + 8 * (((a26 == 1682696337) * (v28 ^ 0x32E ^ ((v28 + 663) | 0x282))) ^ v28)))(v32, v29);
}

uint64_t sub_1751C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 ^ 0x2C8)))();
  STACK[0x4C0] = 0;
  return sub_17554(v8);
}

uint64_t sub_17584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = ((v6 + 488) ^ 0xFFFFFFFFFFFFFCA9) + v5;
  if (HIDWORD(v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = -2 - LODWORD(STACK[0x3F0]) >= v7;
  }

  v9 = !v8;
  return (*(a5 + 8 * ((224 * v9) ^ v6)))();
}

uint64_t sub_175D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (*(a7 + 8 * (v7 ^ 0x3A5)))(128, 0x100004077774924);
  v9 = STACK[0x430];
  STACK[0xD18] = v8;
  return (*(v9 + 8 * (((STACK[0xF80] - v8 < 0x20) * ((v7 ^ 0xA6C) - 1745)) ^ v7)))();
}

uint64_t sub_17640(uint64_t a1, int a2, signed int a3, uint64_t a4, int a5)
{
  v7 = ((22 * (a5 ^ 0x806)) ^ (v5 + 1990)) - a2;
  if (a3 > v7)
  {
    v7 = a3;
  }

  return (*(v6 + 8 * ((41 * (((a5 + 62) ^ (v7 > 0x7FFFFFFE)) & 1)) ^ a5)))();
}

uint64_t sub_176CC(_DWORD *a1)
{
  v1 = 1579770187 * (((a1 | 0x37939CDC) - a1 + (a1 & 0xC86C6323)) ^ 0x424D1FA2);
  v2 = v1 + a1[4] - 1846872425 == 0;
  return (*(*(&off_103F00 + (*a1 - v1 - 2466)) + 8 * (((v2 ^ (*a1 - v1 - 70)) & 1 | (16 * ((v2 ^ (*a1 - v1 - 70)) & 1))) ^ (*a1 - v1)) - 4))();
}

uint64_t sub_17764@<X0>(int a1@<W8>)
{
  v4 = *(v2 + 8) + 24 * v1;
  *v4 = 458198970;
  *(v4 + 8) = 0xC4141C8D56F894BLL;
  *(v4 + 16) = 0;
  return (*(v3 + 8 * (a1 | (32 * (v1 + (a1 + 2424) - 3342 < *(v2 + 4))))))();
}

uint64_t sub_177C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (v8 + 909533912) & 0xC9C9933F;
  v10 = STACK[0x550] + 4 * LOWORD(STACK[0xE3E]);
  *(v10 + 692) = (v7 << *STACK[0x500]) + (v9 ^ 0xEF543CE5) - ((2 << *STACK[0x500]) & 0xDEA87BB6);
  *(v10 + 820) = 571775998;
  STACK[0x8D8] = *(a7 + 8 * v9);
  return sub_40FA4(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_17834@<X0>(uint64_t a1@<X2>, _DWORD *a2@<X8>)
{
  *(v3 + 80) = 1;
  v4 = 193 * ((v2 - 1202) ^ 0xDA);
  *(v3 + 84) = *a2;
  v5 = STACK[0xDF8];
  v6 = STACK[0x5B0];
  STACK[0x6C0] = *(a1 + 8 * (v2 - 1202));
  STACK[0x520] = &STACK[0xB10];
  LODWORD(STACK[0xCB0]) = v6;
  v7 = STACK[0xD90];
  STACK[0xDC0] = &STACK[0x1520] + STACK[0xD90];
  STACK[0xD90] = v7 + 32;
  STACK[0x880] = v5;
  STACK[0x558] = 0;
  STACK[0xFD0] = 0;
  STACK[0xCB8] = 0;
  LODWORD(STACK[0xAFC]) = -1340669477;
  LODWORD(STACK[0x9A4]) = 0;
  STACK[0x9E8] = 0;
  STACK[0xFB0] = 0;
  LODWORD(STACK[0xD6C]) = -1340669477;
  v8 = (*(a1 + 8 * (v4 + 803)))();
  if (v5)
  {
    v9 = v6 == -1340669477;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  return (*(STACK[0x430] + 8 * ((v10 * ((1099 * (((v4 - 585) | 0x220) ^ 0xB24)) ^ 0x8A4)) ^ v4)))(v8);
}

uint64_t sub_1785C@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  STACK[0x5B8] = *(a1 + 8 * v2);
  STACK[0xE40] = a2;
  LODWORD(STACK[0x14C0]) = v5;
  LOWORD(STACK[0x14C6]) = -14054;
  LODWORD(STACK[0x14C8]) = v4;
  LODWORD(STACK[0x14CC]) = -1340669477;
  STACK[0x14D0] = 0xA70C7FEF20BA9ADBLL;
  STACK[0x14D8] = v3;
  return (*(a1 + 8 * (((a2 != 0) * ((59 * ((v2 + 1197) ^ 0x4D5)) ^ 0x373)) ^ (v2 + 1197))))();
}

uint64_t sub_178E8(int a1)
{
  v7 = v4 - 1;
  *(v5 + v7) ^= *(v3 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ (103 * (v7 & 0xF)) ^ *(v2 + (v7 & 0xF));
  return (*(v6 + 8 * ((230 * (v7 == 0)) ^ (a1 - 1945))))();
}

uint64_t sub_179A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  a1[1] = 0;
  *v7 = a1;
  return (*(a7 + 8 * ((((((v8 - 1221648408) ^ (STACK[0xFC0] == 0)) & 1) == 0) * ((v8 - 722775960) & 0x2B14AF3F ^ 0xCF5)) ^ (v8 + 109))))();
}

uint64_t sub_17B54(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int64x2_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10)
{
  v31 = a2 - 8;
  v32.i64[0] = v31 + v13 + v12;
  v32.i64[1] = v31 + v13 + 8;
  v33.i64[0] = v31 + v13 + 7;
  v33.i64[1] = v31 + v13 + 6;
  v34.i64[0] = v31 + v13 + 5;
  v34.i64[1] = v31 + v13 + 4;
  v35.i64[0] = v31 + v13 + 3;
  v35.i64[1] = v31 + v13 + 2;
  v36 = vandq_s8(v35, *&STACK[0x410]);
  v37 = vandq_s8(v34, *&STACK[0x410]);
  v38 = vandq_s8(v33, *&STACK[0x410]);
  v39 = vandq_s8(v32, *&STACK[0x410]);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), *&STACK[0x3E0]);
  v44 = vaddq_s64(v42, *&STACK[0x3E0]);
  v45 = vaddq_s64(v41, *&STACK[0x3E0]);
  v46 = vaddq_s64(v40, *&STACK[0x3E0]);
  *&STACK[0x420] = vsubq_s64(vorrq_s8(vaddq_s64(v46, v46), v14), v46);
  v47 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v43, v43), v14), v43), a7);
  v48 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v44, v44), v14), v44), a7);
  v49 = veorq_s8(v48, a8);
  v50 = veorq_s8(v47, a8);
  v51 = veorq_s8(v47, a9);
  v52 = veorq_s8(v48, a9);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v52);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v51);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v53, a10), vorrq_s8(v53, v15)), v15), v16);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v54, a10), vorrq_s8(v54, v15)), v15), v16);
  v57 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v58 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v58);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v57);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, v17), vorrq_s8(v59, v18)), v18), v19);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, v17), vorrq_s8(v60, v18)), v18), v19);
  v63 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v63), v20);
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v64), v20);
  v67 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v21);
  v73 = veorq_s8(v71, v21);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), v22), v79), v23), v24);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), v22), v78), v23), v24);
  v82 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = vaddq_s64(v85, v83);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v87, v87), v25), v87), v26), v27);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v86, v86), v25), v86), v26), v27);
  v90 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v91 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v92 = veorq_s8(v88, v90);
  v93 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v95 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v45, v45), v14), v45), a7);
  v96 = vaddq_s64(v94, v92);
  v97 = vaddq_s64(v93, v91);
  v136.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, v28), vorrq_s8(v97, v29)), v29), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), *&STACK[0x3F0])));
  v136.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v96, v28), vorrq_s8(v96, v29)), v29), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), *&STACK[0x3F0])));
  v98 = veorq_s8(v95, a8);
  v99 = veorq_s8(v95, a9);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, a10), vorrq_s8(v100, v15)), v15), v16);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v103, v17), vorrq_s8(v103, v18)), v18), v19);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v20);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v21);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), v22), v110), v23), v24);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v113, v113), v25), v113), v26), v27);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL)));
  v116 = vaddq_s64(*&STACK[0x420], a7);
  v136.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, v28), vorrq_s8(v115, v29)), v29), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), *&STACK[0x3F0])));
  v117 = veorq_s8(v116, a8);
  v118 = veorq_s8(v116, a9);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, a10), vorrq_s8(v119, v15)), v15), v16);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v122, v17), vorrq_s8(v122, v18)), v18), v19);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v20);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v21);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v22), v129), v23), v24);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), v25), v132), v26), v27);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL)));
  v136.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v134, v28), vorrq_s8(v134, v29)), v29), v30), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), *&STACK[0x3F0])));
  *(v32.i64[0] - 7) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v11 - 8 + v13)), 0xF7F7F7F7F7F7F7F7), *&vqtbl4q_s8(v136, *&STACK[0x3D0])));
  return (*(STACK[0x430] + 8 * ((8 * (a1 != -8)) | (16 * (a1 != -8)) | v10)))();
}

uint64_t sub_17F6C(uint64_t a1)
{
  v5 = 1427 * (v1 ^ 0x292);
  *STACK[0x958] = a1;
  *STACK[0x938] = 128;
  LODWORD(STACK[0x7CC]) = v3;
  v6 = (*(STACK[0x208] + 1336 * STACK[0x990] + 244) - 861627941);
  v7 = 1327116359 * ((v4 + 0x6812AFB81F656BC3 - 2 * ((v4 - 240) & 0x6812AFB81F656CB3)) ^ 0xECF59601F98AC9E8);
  *(v4 - 224) = 515558778 - v7;
  *(v4 - 196) = (v5 - 304006151) ^ v7;
  *(v4 - 208) = v6 ^ v7;
  *(v4 - 240) = 1 - v7;
  *(v4 - 236) = (v5 - 861820773) ^ v7;
  *(v4 - 232) = v5 - v7 - 861820831;
  *(v4 - 216) = (v5 - 861820982) ^ v7;
  v8 = (*(v2 + 8 * (v5 ^ 0x543)))(v4 - 240);
  return (*(STACK[0x430] + 8 * *(v4 - 200)))(v8);
}

uint64_t sub_18048()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + 1;
  v10 = v8 + 1 - v3;
  v11 = v2 + v10;
  v12 = v2 + v8 + 1;
  v13 = v1 - v3 + v8 + 2;
  v14 = v8 + (v4 ^ 0x5CBu) + (v4 ^ 0xED0u) + v1 - 5145;
  v15 = v0 + v10;
  v16 = v0 + v9;
  v18 = v12 > v5 && v11 < v7;
  v20 = v13 < v7 && v14 > v5 || v18;
  if (v16 > v5 && v15 < v7)
  {
    v20 = 1;
  }

  return (*(v6 + 8 * ((52 * v20) ^ v4)))();
}

uint64_t sub_18184@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  v5 = 14 * (v3 ^ 0x910);
  STACK[0x5B8] = *(a1 + 8 * v5);
  STACK[0xE40] = a2;
  LODWORD(STACK[0x14C0]) = v4;
  LOWORD(STACK[0x14C6]) = 3766;
  LODWORD(STACK[0x14C8]) = -1340669473;
  LODWORD(STACK[0x14CC]) = v2;
  STACK[0x14D0] = 0xA70C7FEF20BA9ADBLL;
  STACK[0x14D8] = 0;
  return (*(a1 + 8 * (((a2 != 0) * ((59 * ((v5 + 1846056871) & 0x91F76CDE ^ 0x4D5)) ^ 0x373)) ^ (v5 + 1846056871) & 0x91F76CDE)))();
}

uint64_t sub_181DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_201E4(a7, v7 - 692);
}

uint64_t sub_1823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = *(a1 + 32);
  if (v24)
  {
    v27 = v26 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v27;
  return (*(v25 + 8 * ((v28 * (((237 * (v23 ^ 0x6D7) + 375) | 0x40) ^ 0x7AB)) ^ v23)))(a1, a2, a3, a4, v26, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_182D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *STACK[0x1298];
  LODWORD(STACK[0xE58]) = v6 - 1209905670;
  return (*(a5 + 8 * ((((v6 & 3) == 2) * ((v5 ^ 0xB40) + 555)) ^ v5)))();
}

uint64_t sub_183A0(double a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16)
{
  v32 = v18 - 16;
  *&v33 = a16 + v32 + 11;
  *(&v33 + 1) = a16 + v32 + 10;
  *&STACK[0x420] = v33;
  v34.i64[0] = a16 + v32 + 13;
  v34.i64[1] = a16 + v32 + 12;
  *&v33 = a16 + v32 + 15;
  *(&v33 + 1) = a16 + v32 + 14;
  *&STACK[0x410] = v33;
  v35.i64[0] = a16 + v32 + 19;
  v35.i64[1] = a16 + v32 + 18;
  v36.i64[0] = a16 + v32 + 21;
  v36.i64[1] = a16 + v32 + 20;
  v37.i64[0] = a16 + v32 + 25;
  v37.i64[1] = a16 + v32 + 24;
  v38.i64[0] = a16 + v32 + 23;
  v38.i64[1] = a16 + v32 + (((a15 + 8) | v19) ^ v20) + 16;
  v39 = vandq_s8(v38, *&STACK[0x3E0]);
  v40 = vandq_s8(v37, *&STACK[0x3E0]);
  v41 = vandq_s8(v36, *&STACK[0x3E0]);
  v42 = vandq_s8(v35, *&STACK[0x3E0]);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), a3);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), a3);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), a3);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), a3);
  v47 = vsubq_s64(vorrq_s8(vaddq_s64(v46, v46), a4), v46);
  v48 = vsubq_s64(vorrq_s8(vaddq_s64(v43, v43), a4), v43);
  v49 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v45, v45), a4), v45), a5);
  v50 = vaddq_s64(v47, a5);
  v51 = veorq_s8(v50, a6);
  v52 = veorq_s8(v49, a6);
  v53 = veorq_s8(v49, a7);
  v54 = veorq_s8(v50, a7);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53), a8);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54), a8);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v58 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v59 = veorq_s8(v55, v57);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), v22);
  v63 = veorq_s8(v61, v22);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(v67, vandq_s8(vaddq_s64(v67, v67), v23)), v24), v25);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v66, vandq_s8(vaddq_s64(v66, v66), v23)), v24), v25);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v71 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v70), v26);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v71), v26);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v27);
  v80 = veorq_s8(v78, v27);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v28);
  v87 = veorq_s8(v85, v28);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v83.i64[0] = a16 + v32 + 17;
  v83.i64[1] = a16 + v32 + 16;
  v92 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v44, v44), a4), v44), a5);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v94 = vaddq_s64(v91, v89);
  v204.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v93, v93), v29), v93), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v204.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v94, v94), v29), v94), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v95 = veorq_s8(v92, a6);
  v96 = veorq_s8(v92, a7);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), a8);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v22);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), v23)), v24), v25);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v26);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v27);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v28);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL)));
  v110 = vandq_s8(v83, *&STACK[0x3E0]);
  v111 = vaddq_s64(v48, a5);
  v204.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v109, v109), v29), v109), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a2)));
  v112 = veorq_s8(v111, a6);
  v113 = veorq_s8(v111, a7);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), a8);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v22);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(v118, vandq_s8(vaddq_s64(v118, v118), v23)), v24), v25);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v26);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v27);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v28);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v128 = vandq_s8(*&STACK[0x410], *&STACK[0x3E0]);
  v129 = vaddq_s64(v127, v126);
  v130 = vandq_s8(v34, *&STACK[0x3E0]);
  v204.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), v29), v129), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a2)));
  v131 = vandq_s8(*&STACK[0x420], *&STACK[0x3E0]);
  v132 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), a3);
  v136 = vaddq_s64(v134, a3);
  v137 = vaddq_s64(v133, a3);
  v138 = vaddq_s64(v132, a3);
  v139 = vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), a4), v136);
  v140 = vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), a4), v135);
  v141 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v137, v137), a4), v137), a5);
  v142 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v138, v138), a4), v138), a5);
  v138.i64[0] = vqtbl4q_s8(v204, *&STACK[0x3F0]).u64[0];
  v143 = veorq_s8(v142, a6);
  v204.val[0] = veorq_s8(v141, a6);
  v144 = veorq_s8(v141, a7);
  v145 = veorq_s8(v142, a7);
  v204.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204.val[0], 0x38uLL), v204.val[0], 8uLL), v144), a8);
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v145), a8);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(v204.val[0], v204.val[1]);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204.val[0], 0x38uLL), v204.val[0], 8uLL), v148);
  v204.val[0] = veorq_s8(vaddq_s64(v204.val[1], v147), v22);
  v150 = veorq_s8(v149, v22);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(v204.val[0], v204.val[1]);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204.val[0], 0x38uLL), v204.val[0], 8uLL), v152);
  v204.val[0] = vaddq_s64(v204.val[1], v151);
  v204.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v204.val[0], vandq_s8(vaddq_s64(v204.val[0], v204.val[0]), v23)), v24), v25);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(v153, vandq_s8(vaddq_s64(v153, v153), v23)), v24), v25);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = veorq_s8(v204.val[0], v204.val[1]);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204.val[0], 0x38uLL), v204.val[0], 8uLL), v156);
  v204.val[0] = veorq_s8(vaddq_s64(v204.val[1], v155), v26);
  v158 = veorq_s8(v157, v26);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v160 = veorq_s8(v204.val[0], v204.val[1]);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204.val[0], 0x38uLL), v204.val[0], 8uLL), v160);
  v204.val[0] = veorq_s8(vaddq_s64(v204.val[1], v159), v27);
  v162 = veorq_s8(v161, v27);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = veorq_s8(v204.val[0], v204.val[1]);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204.val[0], 0x38uLL), v204.val[0], 8uLL), v164);
  v204.val[0] = veorq_s8(vaddq_s64(v204.val[1], v163), v28);
  v166 = veorq_s8(v165, v28);
  v204.val[1] = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = vaddq_s64(v139, a5);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204.val[0], 0x38uLL), v204.val[0], 8uLL), veorq_s8(v204.val[0], v204.val[1]));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v204.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), v29), v169), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x420], 3uLL), a2)));
  v204.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v170, v170), v29), v170), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v171 = veorq_s8(v168, a6);
  v172 = veorq_s8(v168, a7);
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), a8);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v22);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(v177, vandq_s8(vaddq_s64(v177, v177), v23)), v24), v25);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v26);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v27);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v28);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL)));
  v186 = vaddq_s64(v140, a5);
  v204.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v185, v185), v29), v185), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x410], 3uLL), a2)));
  v187 = veorq_s8(v186, a6);
  v188 = veorq_s8(v186, a7);
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), a8);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v22);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(v193, vandq_s8(vaddq_s64(v193, v193), v23)), v24), v25);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195), v26);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), v27);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v28);
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL)));
  v204.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v201, v201), v29), v201), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), a2)));
  v138.i64[1] = vqtbl4q_s8(v204, *&STACK[0x3F0]).u64[0];
  v202 = vrev64q_s8(v138);
  *(a16 + v32 + 10) = veorq_s8(vextq_s8(v202, v202, 8uLL), *(v17 + v32));
  return (*(v16 + 8 * (((a14 + v32 != 0) * v21) | a15)))();
}

uint64_t sub_183A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v8 != 1805022201 && v8 != 1805022198)
  {
    return sub_5ECE0();
  }

  v11 = v7 - ((2 * v7) & 0xBCD291B38414BDFALL) + 0x5E6948D9C20A5EFDLL;
  LOBYTE(STACK[0x24E8]) = (125 * (v9 ^ 0x24)) ^ HIBYTE(v11) ^ (((v9 + 18) & 0xD7) - 108);
  LOBYTE(STACK[0x24E9]) = BYTE6(v11) ^ 0x69;
  LOBYTE(STACK[0x24EA]) = BYTE5(v11) ^ 0x48;
  LOBYTE(STACK[0x24EB]) = BYTE4(v11) ^ 0xD9;
  LOBYTE(STACK[0x24EC]) = ((v7 - ((2 * v7) & 0x8414BDFA) - 1039507715) >> 24) ^ 0xC2;
  LOBYTE(STACK[0x24ED]) = ((v7 - ((2 * v7) & 0x8414BDFA) - 1039507715) >> 16) ^ 0xA;
  LOBYTE(STACK[0x24EE]) = ((v7 - ((2 * v7) & 0xBDFA) + 24317) >> 8) ^ 0x5E;
  LOBYTE(STACK[0x24EF]) = (v7 - ((2 * v7) & 0xFA) - 3) ^ 0xFD;
  return (*(a7 + 8 * ((v9 - 2087) ^ (504 * (HIBYTE(v11) != 94)))))();
}

uint64_t sub_183B4@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v5 = (*(((2 * (v2 + 6)) & 0x3397FF3DF36CFFD4) + ((v2 + 6) ^ 0xD9CBFF9EF9B67FEALL) + a2 + 0x2634006106498016) << 24) | (*(((2 * (v2 + 6)) & 0x3397FF3DF36CFFD4) + ((v2 + 6) ^ 0xD9CBFF9EF9B67FEALL) + a2 + 0x2634006106498017) << 16) | (*(((2 * (v2 + 6)) & 0x3397FF3DF36CFFD4) + ((v2 + 6) ^ 0xD9CBFF9EF9B67FEALL) + a2 + 0x2634006106498018) << 8);
  v6 = *(((2 * (v2 + 6)) & 0x3397FF3DF36CFFD4) + ((v2 + 6) ^ 0xD9CBFF9EF9B67FEALL) + a2 + 0x2634006106498019);
  return (*(a1 + 8 * ((13 * ((((v5 | v6) - 1340669477 - 2 * ((v5 | v6) & 0x301701DF ^ v6 & 4)) ^ 0xB01701DB) + v2 + 10 <= v3)) ^ v4)))();
}

uint64_t sub_18474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x420]) = v6 - 2853;
  LODWORD(STACK[0x410]) = v6 ^ 0x5A9;
  return sub_18524(418762472, a2, a3, a4, a5, a6, 4201744359);
}

uint64_t sub_18524@<X0>(int a1@<W0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  STACK[0xF98] = *(a2 + 8 * v4);
  if (a3)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(a2 + 8 * ((v9 * (v5 ^ v6 ^ 0xE04 ^ (v5 + a1) & v7)) ^ v5)))();
}

uint64_t sub_1856C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  **(result + 32) += ((v3 - 2542) | 0xD4E) ^ 0xD4F;
  v5 = *(result + 8);
  *(v2 + 8) = *result - a2;
  *(v2 + 16) = v5;
  *v2 = v4;
  return result;
}

void sub_185D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 8) == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_18708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(v8 + 8);
  STACK[0xB98] = v7;
  return (*(a7 + 8 * ((((((v9 - 1111044568) & 0x423925CD) + 1785) ^ (v9 + 454804384) & 0xE4E4371E) * (v10 == 0)) ^ v9)))();
}

uint64_t sub_18764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, uint64_t a15, char a16)
{
  a14 = v16 - 1200424264;
  *(v20 - 128) = &a16;
  *(v20 - 112) = v17;
  *(v20 - 120) = v19 + 539293837 * ((v20 - 239566184 - 2 * ((v20 - 128) & 0xF1B88318)) ^ 0x4CB949EF) - 2403;
  (*(v18 + 8 * (v19 ^ 0x29D)))(v20 - 128);
  *(v20 - 120) = &a13;
  *(v20 - 112) = v17;
  *(v20 - 128) = v19 + 1327116359 * (((v20 - 128) & 0x333F827A | ~((v20 - 128) | 0x333F827A)) ^ 0x2A2FD8DE) - 2359;
  v21 = (*(v18 + 8 * (v19 + 489)))(v20 - 128);
  v22 = *(v20 - 104) != (v19 ^ 0x2B6) + 1903880329;
  return (*(v18 + 8 * (((2 * v22) | (16 * v22)) ^ v19)))(v21);
}

uint64_t sub_18884@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, int a4@<W5>, int a5@<W8>)
{
  STACK[0x590] = v6;
  STACK[0x580] = a1;
  v13 = (v9 + 4 * (a1 - 85012528));
  v14 = *v13;
  LODWORD(STACK[0x52C]) = v7 - 400;
  v15 = v14 ^ (v12 + v7 - 400 - 1722);
  v16 = v13[66];
  v17 = v13[13];
  v18 = v13;
  LODWORD(STACK[0x57C]) = v12 - 128;
  v19 = v17 ^ (v12 - 128);
  v20 = (v15 >> 3) ^ __ROR4__(v15, 7) ^ __ROR4__(v15, 18);
  HIDWORD(v21) = v16 ^ 0x35A11;
  LODWORD(v21) = v16 ^ 0x3D940000;
  v22 = (v19 >> 10) ^ __ROR4__(v19, 17);
  v23 = (v16 >> 3) ^ __ROR4__(v16, 7) ^ (v21 >> 18) ^ 0x25C9C5F6;
  v24 = *(v9 + 4 * (v6 & 0xFFFFFFBF) + 256);
  HIDWORD(v21) = v24 ^ 0x15A11;
  LODWORD(v21) = v24 ^ 0x3D960000;
  v25 = v21 >> 17;
  v26 = (a4 - 1702707353) ^ v5 ^ v23;
  v27 = v20 ^ v10;
  v28 = v26 ^ v20;
  v29 = v5 ^ a5;
  v30 = v11 - v5;
  LODWORD(v21) = __ROR4__(v19, 19);
  v31 = (v20 ^ a2) - a2;
  v32 = (v24 << 13) ^ (v24 >> 10) ^ (v24 >> 19) ^ v25 ^ 0xEB4D4264;
  v33 = a3 - v10;
  v34 = v28 - v26;
  v35 = (v10 ^ v8) + a2;
  v36 = v35 + (v10 ^ v8);
  v37 = a4 + (v5 ^ a5) - 1338749535;
  LODWORD(STACK[0x56C]) = v37;
  v38 = a4 - 1702707353 + 2 * v29;
  v39 = (v27 - v10) ^ v31 ^ v34;
  v40 = (a5 - v30) ^ 0xE9E02FD5;
  LODWORD(STACK[0x560]) = v40 - (v30 - v38);
  LODWORD(STACK[0x55C]) = v30 - v40;
  v41 = ((v32 & 0xE9E02FD5 ^ 0xE9E02FD5) + (v32 & 0xE9E02FD5)) ^ (v8 - v33);
  v42 = (v30 - v38) ^ v38 ^ (v30 - v40);
  LODWORD(STACK[0x548]) = v42;
  v43 = (((v22 ^ v21 ^ v36) - v36) ^ ((v22 ^ v21 ^ (v35 + 363957818)) - (v35 + 363957818)) ^ ((v38 ^ v37 ^ v32 ^ v22 ^ v21) - (v38 ^ v37 ^ v32))) - v41;
  v44 = v41 - (v33 - v36);
  v45 = ((v18[139] ^ 0x4AC6EF17) - 1254551319) ^ ((v18[139] ^ 0x76A84404) - 1990738948) ^ ((v18[139] ^ 0x1F9F102) - 33157378);
  v46 = v13[148];
  LODWORD(STACK[0x53C]) = v36 - v44;
  LODWORD(v13) = v44 ^ (v35 + 363957818);
  LODWORD(STACK[0x550]) = v13;
  v47 = (v33 - v36) ^ v36 ^ (v36 - v44);
  LODWORD(STACK[0x530]) = v47;
  v48 = a5 + v45 + v23 + (((v46 ^ 0x917FADED) + 1853903379) ^ ((v46 ^ 0xB6B8432C) + 1229438164) ^ ((v46 ^ 0x1A50B4D0) - 441496784)) + v43;
  v49 = ((v48 - 1449415275) ^ 0xD2921755) & (2 * ((v48 - 1449415275) & 0xD4C01715)) ^ (v48 - 1449415275) & 0xD4C01715;
  v50 = ((2 * ((v48 - 1449415275) ^ 0x5A92135F)) ^ 0x1CA40894) & ((v48 - 1449415275) ^ 0x5A92135F) ^ (2 * ((v48 - 1449415275) ^ 0x5A92135F)) & 0x8E52044A;
  v51 = v50 ^ 0x8252044A;
  v52 = (v50 ^ 0x4000000) & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0x39481128) & v51 ^ (4 * v51) & 0x8E520448;
  v54 = v52 ^ 0x8E52044A ^ (v53 ^ 0x8400000) & (16 * v52);
  v55 = (16 * (v53 ^ 0x86120442)) & 0x8E520440 ^ 0xA52004A ^ ((16 * (v53 ^ 0x86120442)) ^ 0xE52044A0) & (v53 ^ 0x86120442);
  v56 = ((v54 << 8) ^ 0x52044A00) & v55;
  v57 = (v54 << 8) & 0x8E520400 ^ v54;
  v58 = v48 + v42 - 2121738958;
  v59 = v18[221];
  v60 = v44 + 15 - v13;
  v61 = v18[212];
  STACK[0x540] = v18;
  v62 = 1655649882 - v8 + v40 + v32 + (((v61 ^ 0xA21C69F9) + 1575196167) ^ ((v61 ^ 0x7B04EE73) - 2063920755) ^ ((v61 ^ 0xE48FDD9B) + 460333669)) + (((v59 ^ 0x33D35AE5) - 869489381) ^ ((v59 ^ 0xD38B0773) + 745863309) ^ ((v59 ^ 0xDDCF0787) + 573634681)) + 1655649882 + v39;
  *(STACK[0x598] + 4 * (a1 - 85012300)) = (v62 - 588152943) ^ (((v62 - 588152943) ^ 0xD701988B) + 720845999) ^ (((v62 - 588152943) ^ 0xE910B2A0) + 350623366) ^ (((v62 - 588152943) ^ 0xC3A7CE06) + 1045522980) ^ (((v62 - 588152943) ^ 0xFFBFBFF7) + 38345683) ^ 0x3F9E01CB;
  v63 = 403 * ((((a1 - 85012300) & 0x160 ^ 0x160) + ((a1 - 85012300) & 0x160)) & 0xFFFFFFF0 | (v58 >> 28));
  v64 = v63 - 968 * ((4436950 * v63) >> 32);
  v18[155] = (v48 - 1449415275) ^ (2 * (((v57 ^ v56) << 16) & 0xE520000 ^ v57 ^ v56 ^ (((v57 ^ v56) << 16) ^ 0x44A0000) & ((v55 << 8) & 0x8E520000 ^ 0xC520000 ^ ((v55 << 8) ^ 0x52040000) & v55))) ^ 0xF9774590;
  v65 = v62 - v47;
  v66 = &STACK[0x6D0];
  v67 = *(&STACK[0x6D0] + v64);
  v68 = 403 * ((v48 + v42 - 10958) >> 12) + 141856;
  v69 = *(&STACK[0x6D0] + (403 * ((v48 + v42 + 50) & 0xF) + 141856 - 968 * ((4436950 * (403 * ((v48 + v42 + 50) & 0xFu) + 141856)) >> 32))) ^ 0x65;
  v70 = ((*(v66 + (403 * (HIBYTE(v65) & 0xF) + 141856 - 968 * ((4436950 * (403 * (HIBYTE(v65) & 0xF) + 141856)) >> 32))) ^ 0x65) << 8) ^ ((*(v66 + (403 * (v65 >> 28) + 141856 - 968 * ((4436950 * (403 * (v65 >> 28) + 141856)) >> 32))) ^ 0x65) << 12);
  v71 = v65 & 0xF;
  v72 = ((((*(v66 + (403 * (HIBYTE(v58) & 0xF) + 141856) % (((421 - (((v59 ^ 0xCB) + 821) ^ ((v59 ^ 0x34C) + 180) ^ ((v59 ^ 0x196) + 618))) & 0x3C8) + ((((((v59 ^ 0x5AE5) - 23269) ^ ((v59 ^ 0x773) - 1907)) ^ ((v59 ^ 0x787) - 1927)) + 13914) & 0x3C8u))) ^ 0x65) << 8) ^ ((v67 ^ 0x65) << 12) | *(v66 + (403 * (HIWORD(v58) & 0xF) + 141856 - 968 * ((4436950 * (403 * (HIWORD(v58) & 0xF) + 141856)) >> 32))) ^ 0x65) ^ (16 * (*(v66 + (403 * ((v58 >> 20) & 0xF) + 141856 - 968 * ((4436950 * (403 * ((v58 >> 20) & 0xF) + 141856)) >> 32))) ^ 0x65))) << ((v60 & 8 ^ 8) + (v60 & 8));
  v73 = v69 & 0xF;
  v74 = *(&STACK[0x6D0] + (403 * ((v58 >> 8) & 0xF) + 141856 - 968 * ((4436950 * (403 * ((v58 >> 8) & 0xF) + 141856)) >> 32))) ^ 0x65 ^ v72;
  v75 = ((*(v66 + (403 * (HIWORD(v65) & 0xF) + 141856 - 968 * ((4436950 * (403 * (HIWORD(v65) & 0xF) + 141856)) >> 32))) ^ 0x65 | v70) << 8) ^ ((*(v66 + (403 * ((v65 >> 20) & 0xF) + 141856 - 968 * ((4436950 * (403 * ((v65 >> 20) & 0xF) + 141856)) >> 32))) ^ 0x65) << 12);
  v76 = 403 * (v65 >> 4) + 141856 - 968 * ((4436950 * (403 * (v65 >> 4) + 141856)) >> 32);
  v77 = (v74 << 8) ^ ((*(&STACK[0x6D0] + (v68 - 968 * ((4436950 * v68) >> 32))) ^ 0x65) << 12);
  v78 = ((v75 | *(v66 + (403 * ((v65 >> 8) & 0xF) + 141856 - 968 * ((4436950 * (403 * ((v65 >> 8) & 0xF) + 141856)) >> 32))) ^ 0x65) << 8) ^ ((*(v66 + (403 * (v65 >> 12) + 141856 - 968 * ((4436950 * (403 * (v65 >> 12) + 141856)) >> 32))) ^ 0x65) << 12);
  v79 = *(&STACK[0x6D0] + (403 * v71 + 141856 - 968 * ((4436950 * (403 * v71 + 141856)) >> 32))) ^ 0x65;
  v80 = v73 | (16 * (v79 & 0xF));
  LOBYTE(v40) = v77 | v69;
  v81 = (v77 | v69) ^ (16 * (*(&STACK[0x6D0] + (403 * (v58 >> 4) + 141856 - 968 * ((4436950 * (403 * (v58 >> 4) + 141856)) >> 32))) ^ 0x65));
  v82 = 403 * (*(&STACK[0x6D0] + (403 * v80 + 152334 - 968 * ((4436950 * (403 * v80 + 152334)) >> 32))) ^ (16 * (LOBYTE(STACK[0x8E0]) ^ 0x65)) ^ 0x65);
  LOBYTE(v67) = *(&STACK[0x6D0] + v76) ^ ((v78 | v79) >> 4) ^ 0x65;
  v83 = (*(&STACK[0x6D0] + (v82 + 283309 - 968 * ((4436950 * (v82 + 283309)) >> 32))) >> 4) ^ 6;
  v84 = 403 * ((v83 - ((2 * v83) & 0xAA) + 101) ^ *(&STACK[0x6D0] + 151184485 * (v80 + 703) * ((v80 + 703) & 0x297 ^ (-704 - v80) & 0x9D108097) % 0x3C8)) + 152334;
  v85 = 403 * (((v40 ^ (16 * (*(&STACK[0x6D0] + (403 * (v58 >> 4) + 141856 - 968 * ((4436950 * (403 * (v58 >> 4) + 141856)) >> 32))) ^ 0x65))) >> 4) & 0xF | (16 * (v67 & 0xF)));
  v86 = 403 * (*(v66 + (v85 + 152334 - 968 * ((4436950 * (v85 + 152334)) >> 32))) ^ (16 * (*(v66 + (v84 - 968 * ((4436950 * v84) >> 32))) ^ 0x65)) ^ 0x65);
  v87 = *(&STACK[0x6D0] + (v82 + 152334 - 968 * ((4436950 * (v82 + 152334)) >> 32)));
  v88 = *(&STACK[0x6D0] + (v86 + 283309 - 968 * ((4436950 * (v86 + 283309)) >> 32)));
  v89 = 403 * ((((v88 >> 4) ^ 6) - ((2 * ((v88 >> 4) ^ 6)) & 0xAA) + 101) ^ *(&STACK[0x6D0] + (v85 + 283309 - 968 * ((4436950 * (v85 + 283309)) >> 32)))) + 152334;
  v90 = 403 * (v67 & 0xF0 | (v81 >> 8) & 0xF);
  v91 = 403 * (*(v66 + (v90 + 152334) % 0x3C8u) ^ (16 * (*(v66 + (v89 - 968 * ((4436950 * v89) >> 32))) ^ 0x65)) ^ 0x65);
  v92 = v87 ^ (16 * (*(&STACK[0x6D0] + (v86 + 152334 - 968 * ((4436950 * (v86 + 152334)) >> 32))) ^ 0x65)) ^ 0x65;
  v93 = (*(&STACK[0x6D0] + (v91 + 282341 - 968 * ((4436950 * (v91 + 282341)) >> 32))) >> 4) ^ 6;
  v94 = 403 * ((v93 - ((2 * v93) & 0xAA) + 101) ^ *(&STACK[0x6D0] + (v90 + 283309) % 0x3C8u)) + 152334;
  v95 = 403 * ((v78 >> 8) & 0xF0 | (v77 >> 12));
  v96 = 403 * (*(v66 + (v95 + 152334 - 968 * ((4436950 * (v95 + 152334)) >> 32))) ^ (16 * (*(v66 + (v94 - 968 * ((4436950 * v94) >> 32))) ^ 0x65)) ^ 0x65);
  v97 = *(&STACK[0x6D0] + (v91 + 152334 - 968 * ((4436950 * (v91 + 152334)) >> 32))) ^ 0x65;
  v98 = (*(&STACK[0x6D0] + (v96 + 283309 - 968 * ((4436950 * (v96 + 283309)) >> 32))) >> 4) ^ 6;
  v99 = 403 * ((v98 - ((2 * v98) & 0xAA) + 101) ^ *(&STACK[0x6D0] + (v95 + 283309) % (((v77 >> 12) & 0x3C8 ^ 0x3C8) + ((v77 >> 12) & 0x3C8)))) + 152334;
  v100 = 403 * ((v78 >> 12) & 0xF0 | HIWORD(v77) & 0xF);
  v101 = v100 + 283309;
  v102 = 403 * (*(v66 + (v100 + 152334 - 968 * ((4436950 * (v100 + 152334)) >> 32))) ^ (16 * (*(v66 + (v99 - 968 * ((4436950 * v99) >> 32))) ^ 0x65)) ^ 0x65);
  v103 = (*(&STACK[0x6D0] + (v102 + 283309 - 968 * ((4436950 * (v102 + 283309)) >> 32))) >> 4) ^ 6;
  LOBYTE(v33) = (v103 + (~(2 * v103) | 0xF5) + 102) ^ *(&STACK[0x6D0] + (v101 - 968 * ((4436950 * v101) >> 32)));
  v104 = (v96 + 151366) % 0x3C8u;
  v105 = 403 * ((v75 >> 8) & 0xF0 | (v72 >> 12));
  v106 = v92 ^ (v97 << 8);
  v107 = 403 * (*(v66 + (v105 + 152334 - 968 * ((4436950 * (v105 + 152334)) >> 32))) ^ (16 * (*(v66 + (403 * v33 + 152334 - 968 * ((4436950 * (403 * v33 + 152334)) >> 32))) ^ 0x65)) ^ 0x65);
  v108 = (*(&STACK[0x6D0] + (v107 + 283309 - 968 * ((4436950 * (v107 + 283309)) >> 32))) >> 4) ^ 6;
  v109 = (v108 - ((2 * v108) & 0xAA) + 101) ^ *(&STACK[0x6D0] + (v105 + 283309 - 968 * ((4436950 * (v105 + 283309)) >> 32)));
  v110 = (v75 >> 12) & 0xF0 | HIWORD(v72) & 0xF;
  v111 = (((v106 & 0x193 ^ 0x193) + (v106 & 0x193)) | ((v110 + 378) | (5 - v110)) & 0x11) * (v110 + 378);
  v112 = ((*(v66 + (v102 + 152334) % ((HIWORD(v77) & 8 ^ 0x3C8) + (HIWORD(v77) & 8))) ^ 0x65) << 16) ^ ((*(v66 + v104) ^ 0x65) << 12);
  v113 = 403 * (*(v66 + (v111 - 968 * ((4436950 * v111) >> 32))) ^ (16 * (*(v66 + (403 * v109 + 152334 - 968 * ((4436950 * (403 * v109 + 152334)) >> 32))) ^ 0x65)) ^ 0x65);
  v114 = (*(&STACK[0x6D0] + (v113 + 283309 - 968 * ((4436950 * (v113 + 283309)) >> 32))) >> 4) ^ 6;
  v115 = 403 * ((v114 - ((2 * v114) & 0xAA) + 101) ^ *(&STACK[0x6D0] + (403 * v110 + 283309 - 968 * ((4436950 * (403 * v110 + 283309)) >> 32)))) + 152334;
  v116 = 403 * ((v70 >> 8) & 0xF0 | (v74 >> 20) & 0xF) + 152334;
  v117 = *(&STACK[0x6D0] + (v116 - 968 * ((4436950 * v116) >> 32)));
  v118 = 403 * (v117 ^ (16 * (*(&STACK[0x6D0] + (v115 - 968 * ((4436950 * v115) >> 32))) ^ 0x65)) ^ 0x65) + 152334;
  v119 = ((*(v66 + (v118 - 968 * ((4436950 * v118) >> 32))) ^ 0x55555555) << 28) ^ ((*(v66 + (v113 + 152334 - 968 * ((4436950 * (v113 + 152334)) >> 32))) ^ 0x65) << 24);
  v120 = v112 ^ ((*(&STACK[0x6D0] + (v107 + 152334 - 968 * ((4436950 * (v107 + 152334)) >> 32))) ^ 0x65) << 20);
  v121 = ((v117 ^ 0xAA) & 0xF | v117 & 0xF ^ 5) & (v81 >> 4);
  v122 = v119 ^ v120 ^ v106;
  v123 = 403 * (v73 & 0xFFFFFF0F | (16 * (v122 & 0xF)));
  v124 = 403 * ((v122 >> 4) & 0xF0 | (v81 >> 8) & 0xF);
  v125 = *(v66 + (v123 - 968 * ((4436950 * v123) >> 32))) ^ (16 * (*(v66 + (403 * (v121 | v92 & 0xF0) - 968 * ((4436950 * (403 * (v121 | v92 & 0xF0u))) >> 32))) ^ 0x65));
  v126 = 403 * ((v122 >> 8) & 0xF0 | (v77 >> 12));
  v127 = 403 * ((v112 >> 12) & 0xF0 | HIWORD(v77) & 0xF);
  v128 = v125 ^ ((*(&STACK[0x6D0] + (v124 - 968 * ((4436950 * v124) >> 32))) ^ 0x65) << ((v33 & 8 ^ 8) + (v33 & 8)));
  v129 = 403 * (HIWORD(v120) & 0xF0 | (v72 >> 12));
  v130 = 403 * (((v119 ^ v120) >> 20) & 0xF0 | HIWORD(v72) & 0xF);
  v131 = 403 * (HIBYTE(v119) & 0xF0 | (v74 >> 20) & 0xF);
  LOBYTE(v112) = v128 ^ 0x65;
  v132 = v128 ^ 0x65 ^ ((*(&STACK[0x6D0] + (v126 - 968 * ((4436950 * v126) >> 32))) ^ 0x65) << 12);
  v133 = v132 ^ ((*(&STACK[0x6D0] + (v127 - 968 * ((4436950 * v127) >> 32))) ^ 0x65) << 16);
  v134 = v133 ^ ((*(&STACK[0x6D0] + (v129 - 968 * ((4436950 * v129) >> 32))) ^ 0x65) << 20);
  v135 = *(&STACK[0x6D0] + (v130 - 968 * ((4436950 * v130) >> 32)));
  v136 = LODWORD(STACK[0x53C]) ^ v44;
  v137 = v134 ^ ((v135 ^ 0x65) << 24);
  v138 = v137 ^ ((*(&STACK[0x6D0] + (v131 - 968 * ((4436950 * v131) >> 32))) ^ 0x55555555) << 28);
  v139 = 403 * ((v134 >> 20) & 0xF) + 103974;
  v140 = ((((*(v66 + (403 * (HIBYTE(v137) & 0xF) + 103974 - 968 * ((4436950 * (403 * (HIBYTE(v137) & 0xF) + 103974)) >> 32))) ^ 0x65) << 8) ^ ((*(v66 + (403 * (v138 >> 28) + 103974 - 968 * ((4436950 * (403 * (v138 >> 28) + 103974)) >> 32))) ^ 0x65) << 12) | *(v66 + (403 * (HIWORD(v133) & 0xF) + 103974 - 968 * ((4436950 * (403 * (HIWORD(v133) & 0xF) + 103974)) >> 32))) ^ 0x65) << 8) ^ ((*(v66 + (v139 - 968 * ((4436950 * v139) >> 32))) ^ 0x65) << 12);
  v141 = STACK[0x580];
  LODWORD(v21) = __ROR4__(LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x560]), 15) ^ 0xC380F033;
  HIDWORD(v21) = v21;
  *(STACK[0x598] + 4 * STACK[0x590]) = v136 ^ LODWORD(STACK[0x57C]) ^ (16 * (*(&STACK[0x6D0] + (403 * (v112 >> 4) + 103974 - 968 * ((4436950 * (403 * (v112 >> 4) + 103974)) >> 32))) ^ 0x65)) ^ (((v140 | *(&STACK[0x6D0] + (403 * ((v128 >> 8) & 0xF) + 103974 - 968 * ((4436950 * (403 * ((v128 >> 8) & 0xF) + 103974)) >> 32))) ^ 0x65) << 8) ^ ((*(&STACK[0x6D0] + (403 * (v132 >> 12) + 103974 - 968 * ((4436950 * (403 * (v132 >> 12) + 103974)) >> 32))) ^ 0x65) << 12) | *(&STACK[0x6D0] + (403 * (v112 & 0xF) + 103974 - 968 * ((4436950 * (403 * (v112 & 0xF) + 103974)) >> 32))) ^ 0x65);
  *(STACK[0x540] + 324) = (v21 >> 17) ^ 0x458EBBD1 ^ v58;
  return (*(STACK[0x570] + 8 * (((2 * (v141 == 85012576)) | (16 * (v141 == 85012576))) ^ LODWORD(STACK[0x588]))))();
}

uint64_t sub_19A3C()
{
  v5 = (v2 + v4 - 220);
  *v5 = 0xC6C6C6C6C6C6C6C6;
  v5[1] = 0xC6C6C6C6C6C6C6C6;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * ((v1 + 552) ^ 0x5C2)) ^ v1)))();
}

uint64_t sub_19A88()
{
  v8 = *(v1 + 4 * (v3 - 1));
  *(v1 + 4 * v3) = (*(v5 + 4 * v2) ^ 0x218569D8) + v2 + ((1664525 * (v8 ^ (v8 >> 30))) ^ *(v1 + 4 * v3));
  *(v7 - 216) = v6 ^ (v4 + 938767235) ^ 0x184;
  *(v7 - 240) = 1 - v6;
  *(v7 - 236) = v6 ^ (v4 + 938767235) ^ 0xF7;
  *(v7 - 232) = v4 + 938767235 - v6;
  *(v7 - 224) = v3 + 1 - v6;
  *(v7 - 196) = (v4 - 304006151) ^ v6;
  *(v7 - 208) = STACK[0x410];
  v9 = (*(v0 + 8 * (v4 ^ 0x543)))(v7 - 240);
  return (*(STACK[0x430] + 8 * *(v7 - 200)))(v9);
}

uint64_t sub_19AC0()
{
  v9 = (*(*(v7 + 8) + 4 * v1) ^ 0x649F27CC) + v2;
  *(*(v0 + 8) + 4 * v1) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * (((v8 <= (v1 + 1)) * ((v3 + 684) ^ 0x505)) ^ v3)))();
}

void sub_19BD4(uint64_t a1)
{
  v1 = *(a1 + 8) - 1643603977 * ((-2 - ((a1 | 0xCB081D34) + (~a1 | 0x34F7E2CB))) ^ 0xDBACFA63);
  v5 = 552;
  v2 = 539293837 * ((~v6 & 0x3D75387C | v6 & 0xC28AC783) ^ 0x8074F28B);
  v9 = &v4;
  v7 = 3702 - v2;
  v8 = v1 + v2 - 1128;
  v3 = *(&off_103F00 + v1 - 2905) - 4;
  (*&v3[8 * (v1 ^ 0x59B)])(v6);
  __asm { BRAA            X10, X17 }
}

void sub_19DA4()
{
  v6 = *v1;
  *(v5 - 232) = v4 + ((v5 + 1989173847 - 2 * ((v5 - 240) & 0x76906347)) ^ 0x6C2C4556) * v3 + v2;
  *(v5 - 240) = v6;
  (*(v0 + 8 * (v2 ^ 0xD1F)))(v5 - 240);
  sub_B0B28();
}

uint64_t sub_19E38(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v12.val[0].i64[0] = (v7 - v8 - 1) & 0xF;
  v12.val[0].i64[1] = (v7 - v8 + 14) & 0xF;
  v12.val[1].i64[0] = (v7 - v8 + 13) & 0xF;
  v12.val[1].i64[1] = (v7 - v8 + 12) & 0xF;
  v12.val[2].i64[0] = (v7 - v8 + 11) & 0xF;
  v12.val[2].i64[1] = (v7 - v8 + 10) & 0xF;
  v12.val[3].i64[0] = (v7 - v8 + ((a4 - 83) ^ 0xAA)) & 0xF;
  v12.val[3].i64[1] = (v7 - v8) & 0xF ^ 8;
  *(v7 + v9 - 8 - v8) = veor_s8(veor_s8(veor_s8(*(v6 + v12.val[0].i64[0] - 7), *(v7 + v9 - 8 - v8)), veor_s8(*(v4 + v12.val[0].i64[0] - 7), *(v5 + v12.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v12, xmmword_F8190), 0x6767676767676767)));
  return (*(v10 + 8 * ((4036 * (8 - (v7 & 0x18) == -v8)) ^ (a4 - 1314))))(xmmword_F8190);
}

uint64_t sub_1A004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (v5 + 1278);
  v7 = ((2 * STACK[0x2B0]) & 0x772EFB3FFBBFF45ALL) + (STACK[0x2B0] ^ 0x3B977D9FFDDFFA2DLL) + STACK[0x1058] - 0x3B977D9FFDDFFA2DLL;
  v8 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = ((2 * (v8 + (v6 ^ (a5 - 1710)))) | 0x125C63C12017AE08) - (v8 + (v6 ^ (a5 - 1710))) + 0x76D1CE1F6FF428FCLL;
  v10 = v9 ^ 0xD962CD48BF5CF00ALL;
  v9 ^= 0xA9DE39AE7B0F4FC0;
  v11 = (__ROR8__(v10, 8) + v9) ^ 0xEADDE524A744E387;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((v13 + v12 - ((2 * (v13 + v12)) & 0x46F51DC793DB6B3CLL) + 0x237A8EE3C9EDB59ELL) ^ 0x95D338E3FEE848C2, 8);
  v15 = (v13 + v12 - ((2 * (v13 + v12)) & 0x46F51DC793DB6B3CLL) + 0x237A8EE3C9EDB59ELL) ^ 0x95D338E3FEE848C2 ^ __ROR8__(v12, 61);
  v16 = (((v14 + v15) ^ 0x10A635F7F9B97647) - ((2 * ((v14 + v15) ^ 0x10A635F7F9B97647)) & 0x4EB5136C46E782A2) - 0x58A57649DC8C3EAFLL) ^ 0x1838F0DF3EF67DCCLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = __ROR8__((((2 * (v18 + v17)) & 0x7781CFBA3CFFC5FELL) - (v18 + v17) - 0x3BC0E7DD1E7FE300) ^ 0x54C3AA4E43FE962CLL, 8);
  v20 = (((2 * (v18 + v17)) & 0x7781CFBA3CFFC5FELL) - (v18 + v17) - 0x3BC0E7DD1E7FE300) ^ 0x54C3AA4E43FE962CLL ^ __ROR8__(v17, 61);
  v21 = (v19 + v20 - ((2 * (v19 + v20)) & 0x8712EA882D24F660) - 0x3C768ABBE96D84D0) ^ 0xCE8777623B640659;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x72E8FC861E8794C0;
  v24 = __ROR8__((((2 * STACK[0x2B0]) & 0x772EFB3FFBBFF45ALL) + (STACK[0x2B0] ^ 0x3B977D9FFDDFFA2DLL) + STACK[0x1058] - 0x3B977D9FFDDFFA2CLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = -2 - (((0xB1E8616327758806 - v24) | 0x6E820B25E4C8478DLL) + ((v24 + 0x4E179E9CD88A77F9) | 0x917DF4DA1B37B872));
  v26 = v25 ^ 0x3ECEF78DCB9F6083;
  v25 ^= 0x4E72036B0FCCDF49uLL;
  v27 = __ROR8__(v26, 8);
  v28 = __ROR8__((((2 * (v27 + v25)) & 0xC6C0E4F2B9BC7A8) - (v27 + v25) - 0x636072795CDE3D5) ^ 0x13141DFCCD76FFACLL, 8);
  v29 = (((2 * (v27 + v25)) & 0xC6C0E4F2B9BC7A8) - (v27 + v25) - 0x636072795CDE3D5) ^ 0x13141DFCCD76FFACLL ^ __ROR8__(v25, 61);
  v30 = (((v28 + v29) | 0x78C7DE01D05292D9) - ((v28 + v29) | 0x873821FE2FAD6D26) - 0x78C7DE01D05292DALL) ^ 0xCE6E6801E7576F85;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = (v31 + v32 - ((2 * (v31 + v32)) & 0xE96C7DCF1E76CC16) - 0xB49C11870C499F5) ^ 0x5B7272796B07ACD1;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x90FCB26CA27E8B2CLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - ((2 * (v37 + v36)) & 0xB9F8791FE676981ELL) + 0x5CFC3C8FF33B4C0FLL) ^ 0x51F23EA9DECD3166;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - ((2 * (v40 + v39)) & 0xE453F13703A4EE68) + 0x7229F89B81D27734) ^ 0xC1041D9F55E3F4;
  v42 = (((((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0x6C44714321C46F3AuLL) >> (8 * (v7 & 7u))) ^ *v7) << 56) | (((((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v39, 61))) ^ 0x6C44714321C46F3ALL) >> (8 * ((v7 + 1) & 7))) ^ *(v7 + 1)) << 48);
  v43 = __ROR8__((((2 * STACK[0x2B0]) & 0x772EFB3FFBBFF45ALL) + (STACK[0x2B0] ^ 0x3B977D9FFDDFFA2DLL) + STACK[0x1058] - 0x3B977D9FFDDFFA2BLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v44 = ((2 * v43 - 0x63D0C2C64EEB100ELL) & 0xD77CB29EFD5A852ELL) - v43 + 0x462A0813A8C8456FLL;
  v45 = v44 ^ 0xC40D5A18AE059A66;
  v44 ^= 0xB4B1AEFE6A5625ACLL;
  v46 = __ROR8__(v45, 8);
  v47 = (v46 + v44 - ((2 * (v46 + v44)) & 0xE70D929C9BD19758) - 0xC7936B1B2173454) ^ 0x195B2C6AEAAC282BLL;
  v48 = v47 ^ __ROR8__(v44, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xB6A9B6003705FD5CLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((v51 + v50) | 0x4D251BAEC283E0BDLL) - ((v51 + v50) | 0xB2DAE4513D7C1F42) - 0x4D251BAEC283E0BELL) ^ 0xE2E1573026BF2A67;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  v55 = __ROR8__((v54 + v53 - ((2 * (v54 + v53)) & 0x8706927EF8F1DFB6) + 0x4383493F7C78EFDBLL) ^ 0xD37FFB53DE0664F7, 8);
  v56 = (v54 + v53 - ((2 * (v54 + v53)) & 0x8706927EF8F1DFB6) + 0x4383493F7C78EFDBLL) ^ 0xD37FFB53DE0664F7 ^ __ROR8__(v53, 61);
  v57 = (v55 + v56 - ((2 * (v55 + v56)) & 0xB42648A55A99E1FELL) - 0x25ECDBAD52B30F01) ^ 0xD71D267480BA8D96;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x72E8FC861E8794C0;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = v42 | (((((v61 + v60 - ((2 * (v61 + v60)) & 0x9ED44E2D9CFACCFCLL) - 0x3095D8E931829982) ^ 0xA32E5655EFB90944) >> (8 * ((v7 + 2) & 7))) ^ *(v7 + 2)) << 40);
  v63 = __ROR8__((((2 * STACK[0x2B0]) & 0x772EFB3FFBBFF45ALL) + (STACK[0x2B0] ^ 0x3B977D9FFDDFFA2DLL) + STACK[0x1058] - 0x3B977D9FFDDFFA2ALL) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = v63 - ((2 * v63 + 0x1C2F3D39B114EFF2) & 0x32945EEFC8269C34) + 0x6761CE14BC9DC613;
  v65 = v64 ^ 0x4906D3DFCB446914;
  v64 ^= 0x39BA27390F17D6DEuLL;
  v66 = (__ROR8__(v65, 8) + v64) ^ 0xEADDE524A744E387;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) | 0x8C51EFFED9A23880) - (v68 + v67) + 0x39D70800932EE3C0) ^ 0x708141FF5BD4E11CLL;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xAFC44C9EE43CCADALL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x90FCB26CA27E8B2CLL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xD0E02262DF67D69;
  v76 = __ROR8__(v75, 8);
  v77 = v75 ^ __ROR8__(v74, 61);
  v78 = (((2 * (v76 + v77)) | 0x35447B864F26CC0ELL) - (v76 + v77) - 0x1AA23DC327936607) ^ 0x684AC1453914F2C7;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((((2 * (v80 + v79)) | 0x33DC92BF1217B21ELL) - (v80 + v79) - 0x19EE495F890BD90FLL) ^ 0x75AA381CA8CFB635uLL) >> (8 * ((v7 + 3) & 7))) ^ *(v7 + 3);
  v82 = __ROR8__((((2 * STACK[0x2B0]) & 0x772EFB3FFBBFF45ALL) + (STACK[0x2B0] ^ 0x3B977D9FFDDFFA2DLL) + STACK[0x1058] - 0x3B977D9FFDDFFA29) & 0xFFFFFFFFFFFFFFF8, 8);
  v83 = v62 | (v81 << 32);
  v84 = (v82 + 0x4E179E9CD88A77F9) ^ 0x20F0084EEB0498C4;
  v85 = (__ROR8__((v82 + 0x4E179E9CD88A77F9) ^ 0x504CFCA82F57270ELL, 8) + v84) ^ 0xEADDE524A744E387;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0xB6A9B6003705FD5CLL;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((2 * (v89 + v88)) & 0x16DCB6736AD7A7C2) - (v89 + v88) - 0xB6E5B39B56BD3E2) ^ 0x5B55E858AEA8E6C4;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0x90FCB26CA27E8B2CLL;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  v95 = __ROR8__((v94 + v93 - ((2 * (v94 + v93)) & 0x86EDD8D0A64A0CE0) + 0x4376EC6853250670) ^ 0x4E78EE4E7ED37B19, 8);
  v96 = (v94 + v93 - ((2 * (v94 + v93)) & 0x86EDD8D0A64A0CE0) + 0x4376EC6853250670) ^ 0x4E78EE4E7ED37B19 ^ __ROR8__(v93, 61);
  v97 = (v95 + v96) ^ 0x72E8FC861E8794C0;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = __ROR8__(v97, 8);
  LOBYTE(v79) = (((((v99 + v98) | 0x90327BE548EB5D27) - ((v99 + v98) | 0x6FCD841AB714A2D8) + 0x6FCD841AB714A2D8) ^ 0xFC760AA6692F321DLL) >> (8 * ((v7 + 4) & 7))) ^ *(v7 + 4);
  v100 = __ROR8__((((2 * STACK[0x2B0]) & 0x772EFB3FFBBFF45ALL) + (STACK[0x2B0] ^ 0x3B977D9FFDDFFA2DLL) + STACK[0x1058] - 0x3B977D9FFDDFFA28) & 0xFFFFFFFFFFFFFFF8, 8);
  v101 = v83 & 0xFFFFFFFF00FFFFFFLL | (v79 << 24);
  v102 = ((v100 + 0x4E179E9CD88A77F9) | 0x57CD9A3C01A11855) - ((v100 + 0x4E179E9CD88A77F9) | 0xA83265C3FE5EE7AALL) - 0x57CD9A3C01A11856;
  v103 = v102 ^ 0x78166942EF63F5BLL;
  v102 ^= 0x773D9272EAA58091uLL;
  v104 = (__ROR8__(v103, 8) + v102) ^ 0xEADDE524A744E387;
  v105 = __ROR8__(v104, 8);
  v106 = v104 ^ __ROR8__(v102, 61);
  v107 = (((2 * (v105 + v106)) | 0x7BF6ED6E0070228ELL) - (v105 + v106) + 0x42048948FFC7EEB9) ^ 0xB52C0B7373DEC1BLL;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((v109 + v108) | 0x1F941CF6C065B53DLL) - ((v109 + v108) | 0xE06BE3093F9A4AC2) - 0x1F941CF6C065B53ELL) ^ 0xB050506824597FE7;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x90FCB26CA27E8B2CLL;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = __ROR8__(v112, 8);
  v115 = (((2 * (v114 + v113)) | 0xFA5AED14CF08BE28) - (v114 + v113) + 0x2D28975987BA0ECLL) ^ 0xF02374AC4A72227DLL;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x72E8FC861E8794C0;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = __ROR8__(v117, 8);
  v120 = v101 & 0xFFFFFFFFFF00FFFFLL | (((((((v119 + v118) | 0xF7E46432FB02FF77) - ((v119 + v118) | 0x81B9BCD04FD0088) + 0x81B9BCD04FD0088) ^ 0x9BA01571DAC6904DLL) >> (8 * ((v7 + 5) & 7))) ^ *(v7 + 5)) << 16);
  v121 = __ROR8__((((2 * STACK[0x2B0]) & 0x772EFB3FFBBFF45ALL) + (STACK[0x2B0] ^ 0x3B977D9FFDDFFA2DLL) + STACK[0x1058] - 0x3B977D9FFDDFFA27) & 0xFFFFFFFFFFFFFFF8, 8);
  v122 = (v121 + 0x4E179E9CD88A77F9) ^ 0x20F0084EEB0498C4;
  v123 = (__ROR8__((v121 + 0x4E179E9CD88A77F9) ^ 0x504CFCA82F57270ELL, 8) + v122) ^ 0xEADDE524A744E387;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xB6A9B6003705FD5CLL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0xAFC44C9EE43CCADALL;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0x90FCB26CA27E8B2CLL;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = __ROR8__(v129, 8);
  v132 = (((2 * (v131 + v130)) & 0x9EAA66CF2B646106) - (v131 + v130) + 0x30AACC986A4DCF7CLL) ^ 0x3DA4CEBE47BBB215;
  v133 = v132 ^ __ROR8__(v130, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0x72E8FC861E8794C0;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = __ROR8__(v134, 8);
  v137 = v120 & 0xFFFFFFFFFFFF00FFLL | (((((((2 * (v136 + v135)) & 0xDDADF673CFBEAD96) - (v136 + v135) - 0x6ED6FB39E7DF56CCLL) ^ 0xFD6D758539E4C60ELL) >> (8 * ((v7 + 6) & 7))) ^ *(v7 + 6)) << 8);
  v138 = ((2 * STACK[0x2B0]) & 0x772EFB3FFBBFF45ALL) + (STACK[0x2B0] ^ 0x3B977D9FFDDFFA2DLL) + STACK[0x1058] - 0x3B977D9FFDDFFA26;
  v139 = __ROR8__(v138 & 0xFFFFFFFFFFFFFFF8, 8);
  v140 = (0xB1E8616327758806 - v139) & 0xC91966A2A7EF8620 | (v139 + 0xE179E9CD88A77F9) & 0x34E6995D581079DFLL;
  v141 = v140 ^ 0x9B559A0A88B8A12ELL;
  v140 ^= 0xEBE96EEC4CEB1EE4;
  v142 = __ROR8__(v141, 8);
  v143 = (((2 * (v142 + v140)) & 0xAA8CA97E45681DC8) - (v142 + v140) + 0x2AB9AB40DD4BF11BLL) ^ 0xC0644E647A0F129CLL;
  v144 = v143 ^ __ROR8__(v140, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0xB6A9B6003705FD5CLL;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = __ROR8__(v145, 8);
  v148 = __ROR8__((((2 * (v147 + v146)) | 0xFDEB6B33669720A8) - (v147 + v146) - 0x7EF5B599B34B9054) ^ 0xD131F90757775A8ELL, 8);
  v149 = (((2 * (v147 + v146)) | 0xFDEB6B33669720A8) - (v147 + v146) - 0x7EF5B599B34B9054) ^ 0xD131F90757775A8ELL ^ __ROR8__(v146, 61);
  v150 = (((v148 + v149) | 0xD04B99BE0AE8CEA3) - ((v148 + v149) | 0x2FB46641F517315CLL) + 0x2FB46641F517315CLL) ^ 0x40B72BD2A896458FLL;
  v151 = __ROR8__(v150, 8);
  v152 = v150 ^ __ROR8__(v149, 61);
  v153 = (v151 + v152 - ((2 * (v151 + v152)) & 0x7F57DE7DB4280680) - 0x405410C125EBFCC0) ^ 0xB2A5ED18F7E27E29;
  v154 = v153 ^ __ROR8__(v152, 61);
  v155 = (__ROR8__(v153, 8) + v154) ^ 0x72E8FC861E8794C0;
  v156 = v137 | ((((__ROR8__(v155, 8) + (v155 ^ __ROR8__(v154, 61))) ^ 0x6C44714321C46F3AuLL) >> (8 * (v138 & 7u))) ^ *v138);
  STACK[0xB90] = v156 - ((2 * v156) & 0x331FFD33A8212B62) - 0x667001662BEF6A4FLL;
  v157 = STACK[0x430];
  STACK[0xA60] = STACK[0x1140];
  v159 = LODWORD(STACK[0x1134]) == (v6 ^ 0xB01702E1 ^ v6 ^ 0x33A) && LOWORD(STACK[0x113A]) == 43973;
  return (*(v157 + 8 * ((84 * v159) ^ v6)))();
}

uint64_t sub_1AFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1400] = v4;
  v5 = STACK[0x7E0];
  STACK[0x1408] = STACK[0x7E0];
  return (*(a3 + 8 * (((v4 - v5 > ((v3 - 1685) | 0xC5u) - 206) * ((v3 ^ 0xD81) - 2399)) ^ v3)))();
}

uint64_t sub_1B034@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v13 = a1 - 1;
  *(v9 + v13 + v6) = *(v4 + ((v13 + v8) & 0xF)) ^ *(v7 + v13 + v8) ^ *(((v13 + v8) & 0xF) + v5 + 5) ^ *(((v13 + v8) & 0xF) + a4 + 1) ^ (((v13 + v8) & 0xF) * v11);
  return (*(a3 + 8 * (((v13 == 0) * ((a2 ^ v12) * v10 - 1966)) ^ a2)))();
}

uint64_t sub_1B128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, int a39, char a40)
{
  if (a40 == 2)
  {
    return (*(v40 + 8 * ((201 * (((a39 == 0) ^ (-105 * (v41 ^ (v41 - 15)))) & 1)) ^ (v41 - 596845043))))(3698122253, a11, a3, 1209905666, a5, HIDWORD(a10));
  }

  if (a40 == 1)
  {
    return (*(v40 + 8 * ((11 * (a39 != 0)) ^ (v41 - 596845043))))(3698122253, a11, a3, 1209905666, a5, HIDWORD(a10));
  }

  v43 = 39 * ((v41 - 65) ^ 0x23932BFA);
  a38 = (&a23 ^ 0xBA) * (&a23 + 17);
  a37 = (((v43 ^ 0xA4) + 42) ^ &a23) * (&a23 + 18);
  return (*(v40 + 8 * v43))(*(v40 + 8 * v43), ((v43 ^ 0xEA4) - 982) ^ &a23, a3, 1209905666, a5, HIDWORD(a10), a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1B264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 - 240) = a1;
  *(v8 - 232) = (v7 + 489) ^ (772352333 * ((((v8 - 240) | 0xF79DB710) - ((v8 - 240) & 0xF79DB710)) ^ 0x13DFBFAB));
  v9 = (*(a7 + 8 * ((v7 - 490) ^ 0x7A1)))(v8 - 240);
  return (*(STACK[0x430] + 8 * ((*(v8 - 228) != ((v7 - 2805) | 0x482) + ((v7 - 1642) ^ 0x51602FC3)) ^ (v7 - 490))))(v9);
}

uint64_t sub_1B328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x5E8] = STACK[0x910];
  STACK[0xC60] = *(a7 + 8 * v7);
  return sub_23C2C(a7, v7 ^ 0xBACu);
}

uint64_t sub_1B3B0()
{
  result = v1;
  *(v1 + 24) = v2 - ((2 * v2) & 0xC8969002) + 1682696337;
  return result;
}

uint64_t sub_1B584@<X0>(void *a1@<X8>)
{
  v8 = v6 + v4;
  v9 = v6 - 1;
  *(*a1 + (v3 + v9)) = *(*a1 + v8);
  return (*(v1 + 8 * (((v9 == v5) * v7) ^ v2)))();
}

uint64_t sub_1B5B8(uint64_t a1)
{
  v2 = 475723357 * ((((2 * a1) | 0x2052F08E) - a1 - 271153223) ^ 0xA955E56);
  v3 = *(a1 + 36) - v2;
  v4 = *(a1 + 8) ^ v2;
  v5 = *a1;
  v6 = *(a1 + 12) - v2;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 40);
  v12 = v4;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v16 = v8;
  v17 = v9;
  v10 = 1658355091 * ((v18 - 903013058 - 2 * (v18 & 0xCA2D1D3E)) ^ 0x745D27C4);
  v19 = &v12;
  v18[0] = -271001516 - v10;
  v18[2] = v3 + 1907054012 - v10 + 2713;
  result = (*(*(&off_103F00 + v3 + 1907054012) + 8 * (v3 ^ 0x8E54A498) - 4))(v18);
  *(a1 + 32) = v18[1] ^ 0x644BE891;
  return result;
}

void sub_1B718(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1327116359 * ((a1 - 2 * (a1 & 0x90E38C5E) - 1864135586) ^ 0x760C2905));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1B814(uint64_t a1)
{
  v2 = 1327116359 * (((a1 | 0xA9A1642FCA55FC80) - (a1 & 0xA9A1642FCA55FC80)) ^ 0x2D465D962CBA59DBLL);
  v3 = *(a1 + 4) ^ v2;
  v4 = *(a1 + 16) - v2;
  v5 = *(a1 + 8) - v2;
  v6 = *(a1 + 24);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  LODWORD(v5) = 1658355091 * (v11 ^ 0xBE703AFA);
  v12 = &v8;
  v11[0] = -271001518 - v5;
  v11[2] = v3 + 769837123 - v5 + 2713;
  result = (*(*(&off_103F00 + v3 + 769837123) + 8 * (v3 ^ 0xD21D3603) - 4))(v11);
  *a1 = v11[1] ^ 0x644BE891;
  return result;
}

uint64_t sub_1BAF0()
{
  v4 = (*(v3 + 8 * (v2 ^ 0x96D)))(v1);
  if (v4 == 16)
  {
    v5 = -42029;
  }

  else
  {
    v5 = -42030;
  }

  if (v4 == (v2 ^ 0xD8D) - 2609)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  result = (*(v3 + 8 * (v2 + 1734)))(v1);
  *(v0 + 8) = v6;
  return result;
}

void sub_1BB58(uint64_t a1)
{
  v1 = *(a1 + 24) - 1556812919 * (((a1 | 0x30439D71) - (a1 | 0xCFBC628E) - 809737586) ^ 0x6AC0F112);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1BD54@<X0>(uint64_t a1@<X8>)
{
  v9 = v6 - 8;
  v10.i64[0] = a1 + v9 - 7;
  v10.i64[1] = a1 + v9 - 8;
  v11.i64[0] = a1 + v9 - 5;
  v11.i64[1] = a1 + v9 - 6;
  v12.i64[0] = a1 + v9 - 1;
  v12.i64[1] = a1 + v9 - 2;
  v13.i64[0] = a1 + v9 - 3;
  v13.i64[1] = a1 + v9 + (v4 ^ v1);
  v14 = vandq_s8(v13, *&STACK[0x350]);
  v15 = vandq_s8(v12, *&STACK[0x350]);
  v16 = vandq_s8(v11, *&STACK[0x350]);
  v17 = vandq_s8(v10, *&STACK[0x350]);
  v18 = vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL);
  v19 = vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL);
  v20 = vsraq_n_u64(vshlq_n_s64(v15, 0x38uLL), v15, 8uLL);
  v21 = vdupq_n_s64(0x38uLL);
  v22 = vsraq_n_u64(vshlq_n_s64(v14, 0x38uLL), v14, 8uLL);
  v23 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v22), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v22, *&STACK[0x3F0]), *&STACK[0x3C0]));
  v24 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v20), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v20, *&STACK[0x3F0]), *&STACK[0x3C0]));
  v25 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v19), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v19, *&STACK[0x3F0]), *&STACK[0x3C0]));
  v26 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v18), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v18, *&STACK[0x3F0]), *&STACK[0x3C0]));
  v27 = veorq_s8(v26, *&STACK[0x340]);
  v28 = veorq_s8(v25, *&STACK[0x340]);
  v29 = veorq_s8(v25, *&STACK[0x330]);
  v30 = veorq_s8(v26, *&STACK[0x330]);
  v31 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL), v30);
  v32 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), v29);
  v33 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v32, v32), *&STACK[0x320]), v32), *&STACK[0x310]), *&STACK[0x300]);
  v34 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v31, v31), *&STACK[0x320]), v31), *&STACK[0x310]), *&STACK[0x300]);
  v35 = veorq_s8(v34, vsraq_n_u64(vshlq_n_s64(v30, 3uLL), v30, 0x3DuLL));
  v36 = veorq_s8(v33, vsraq_n_u64(vshlq_n_s64(v29, 3uLL), v29, 0x3DuLL));
  v37 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), v36);
  v39 = vaddq_s64(v37, v35);
  v40 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v38, *&STACK[0x2F0]), vorrq_s8(v38, *&STACK[0x2B0])), *&STACK[0x2B0]), *&STACK[0x2E0]);
  v41 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v39, *&STACK[0x2F0]), vorrq_s8(v39, *&STACK[0x2B0])), *&STACK[0x2B0]), *&STACK[0x2E0]);
  v42 = veorq_s8(v41, vsraq_n_u64(vshlq_n_s64(v35, 3uLL), v35, 0x3DuLL));
  v43 = veorq_s8(v40, vsraq_n_u64(vshlq_n_s64(v36, 3uLL), v36, 0x3DuLL));
  v44 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v42), *&STACK[0x420]);
  v45 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v43), *&STACK[0x420]);
  v46 = vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL);
  v47 = veorq_s8(v45, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v48 = veorq_s8(v44, v46);
  v49 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v48);
  v51 = veorq_s8(vaddq_s64(v49, v47), *&STACK[0x410]);
  v52 = veorq_s8(v50, *&STACK[0x410]);
  v53 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = vaddq_s64(v56, v54);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(v58, vandq_s8(vaddq_s64(v58, v58), *&STACK[0x3B0])), *&STACK[0x3A0]), *&STACK[0x390]);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(v57, vandq_s8(vaddq_s64(v57, v57), *&STACK[0x3B0])), *&STACK[0x3A0]), *&STACK[0x390]);
  v61 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, *&STACK[0x2D0]), vorrq_s8(v65, *&STACK[0x2A0])), *&STACK[0x2A0]), *&STACK[0x380]);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, *&STACK[0x2D0]), vorrq_s8(v66, *&STACK[0x2A0])), *&STACK[0x2A0]), *&STACK[0x380]);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL))), *&STACK[0x2C0]);
  v105.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL))), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v10, 3uLL), v21)));
  v105.val[2] = vshlq_u64(v69, vnegq_s64(vandq_s8(vshlq_n_s64(v11, 3uLL), v21)));
  v70 = veorq_s8(v24, *&STACK[0x340]);
  v71 = veorq_s8(v24, *&STACK[0x330]);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v71);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), *&STACK[0x320]), v72), *&STACK[0x310]), *&STACK[0x300]);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v74);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, *&STACK[0x2F0]), vorrq_s8(v75, *&STACK[0x2B0])), *&STACK[0x2B0]), *&STACK[0x2E0]);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v77), *&STACK[0x420]);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v79), *&STACK[0x410]);
  v81 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v81);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(v82, vandq_s8(vaddq_s64(v82, v82), *&STACK[0x3B0])), *&STACK[0x3A0]), *&STACK[0x390]);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v84);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v85, *&STACK[0x2D0]), vorrq_s8(v85, *&STACK[0x2A0])), *&STACK[0x2A0]), *&STACK[0x380]);
  v105.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL))), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v12, 3uLL), v21)));
  v87 = veorq_s8(v23, *&STACK[0x340]);
  v88 = veorq_s8(v23, *&STACK[0x330]);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), *&STACK[0x320]), v89), *&STACK[0x310]), *&STACK[0x300]);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v92, *&STACK[0x2F0]), vorrq_s8(v92, *&STACK[0x2B0])), *&STACK[0x2B0]), *&STACK[0x2E0]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), *&STACK[0x420]);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), *&STACK[0x410]);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(v99, v99), *&STACK[0x3B0])), *&STACK[0x3A0]), *&STACK[0x390]);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v102, *&STACK[0x2D0]), vorrq_s8(v102, *&STACK[0x2A0])), *&STACK[0x2A0]), *&STACK[0x380]);
  v105.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL))), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), v21)));
  *(v7 + v9) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(a1 + v9 - 8)), 0xF7F7F7F7F7F7F7F7), *&vqtbl4q_s8(v105, v8)));
  return (*(STACK[0x430] + 8 * (((v5 == v9) * v2) ^ v3)))();
}

uint64_t sub_1BDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v38 = 1658355091 * ((((v37 - 160) | 0xDF9B581F) + (~(v37 - 160) | 0x2064A7E0)) ^ 0x61EB62E4);
  *(v37 - 160) = &a26;
  *(v37 - 152) = (a16 + 555831804) ^ v38;
  *(v37 - 148) = (v35 + 1980) ^ v38;
  v39 = (*(v36 + 8 * (v35 + 3426)))(v37 - 160);
  v40 = ((a35 & ((((v35 - 1278001452) & 0x6FBFEBFA) - 596847208) ^ ((v35 - 30) | 0xA0)) ^ 0xCA7C8012) - 562768168) ^ ((a35 & ((((v35 - 1278001452) & 0x6FBFEBFA) - 596847208) ^ ((v35 - 30) | 0xA0)) ^ 0xC64EB135) - 767105039) ^ ((a35 & ((((v35 - 1278001452) & 0x6FBFEBFA) - 596847208) ^ ((v35 - 30) | 0xA0)) ^ 0xC323127) + 406480867);
  *(&a26 + v40 - 336090822) = 70;
  return (*(v36 + 8 * ((3898 * (v40 - 336090878 < 0xFFFFFFC8)) ^ v35)))(v39);
}

void sub_1C0EC(uint64_t a1)
{
  v1 = *(a1 + 8) + 475723357 * ((-2 - ((a1 ^ 0x40800040 | 0xB377B795) + (a1 ^ 0x3335A795 | 0x4C88486A))) ^ 0x96F67E3B);
  __asm { BRAA            X12, X17 }
}

void sub_1C22C()
{
  v1 = STACK[0x550] + 4 * LOWORD(STACK[0x9BE]);
  *(v1 + 948) = (v0 << *STACK[0x500]) - 1145819634 - ((2 << *STACK[0x500]) & (STACK[0x2D0] + 2003325684));
  *(v1 + 1076) = 473016980;
  JUMPOUT(0x1C28CLL);
}

uint64_t sub_1C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, unint64_t a49)
{
  v52 = v51;
  v53 = __ROR8__(a49 & 0xFFFFFFFFFFFFFFF8, 8);
  v54 = ((v53 + 0x572D1AAD66CAC63) | 0xA377469F7E4A9F61) - ((v53 + 0x572D1AAD66CAC63) | 0x5C88B96081B5609ELL) + 0x5C88B96081B5609ELL;
  v55 = __ROR8__(v54 ^ 0xCBB0FD3175802D92, 8);
  v54 ^= 0xE0267067C6E54E8ALL;
  v56 = (v55 + v54) ^ a3;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v52;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (0x40A78BFA627753F5 - ((v60 + v59) | 0x40A78BFA627753F5) + ((v60 + v59) | 0xBF5874059D88AC0ALL)) ^ 0x3985C62D1EE07C61;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x2B696A9D9058C2B6;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x4ECDBB75EB25F542;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = *(STACK[0x430] + 8 * v49);
  v68 = (__ROR8__(v65, 8) + v66) ^ v50;
  *a49 = ((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v66, 61))) ^ 0xE2A4B35BAE269AA1) >> (8 * (a49 & 7u));
  v69 = __ROR8__((a49 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v70 = ((0x3A8D2E552993539CLL - v69) & 0x30A1CE9E7CEE7509) + v69 + 0x572D1AAD66CAC63 - ((v69 + 0x572D1AAD66CAC63) & 0x34A1CE9E7CEE7509);
  v71 = v70 ^ 0x5C6675307724C7FALL;
  v70 ^= 0x77F0F866C441A4E2uLL;
  v72 = __ROR8__(v71, 8);
  v73 = (((2 * (v72 + v70)) | 0xE864E1BED72744EELL) - (v72 + v70) - 0x743270DF6B93A277) ^ 0xE25234EA0282D26CLL;
  v74 = v73 ^ __ROR8__(v70, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) & 0xEBEADA3C48313912) - (v75 + v74) + 0xA0A92E1DBE76376) ^ 0xAE3812843D2456A9;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x86DDB2288368D06BLL;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0x2B696A9D9058C2B6;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((2 * (v82 + v81)) | 0x3CAF727B762C46B6) - (v82 + v81) + 0x61A846C244E9DCA5) ^ 0xD09A02485033D619;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * (v85 + v84)) | 0xD1EED25D4BCA7334) - (v85 + v84) + 0x170896D15A1AC666) ^ 0xDF79F0E478454AAFLL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  *(a49 + 1) = ((((2 * (v88 + v87)) | 0x1F7B57394C09D62CLL) - (v88 + v87) - 0xFBDAB9CA604EB16) ^ 0xED1918C7082271B7) >> (8 * ((a49 + 1) & 7));
  v89 = __ROR8__((a49 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v90 = ((0xFA8D2E552993539CLL - v89) & 0xD1156EA5A1C7A5C7) + v89 + 0x572D1AAD66CAC63 - ((v89 + 0x572D1AAD66CAC63) & 0xD1156EA5A1C7A5C7);
  v91 = v90 ^ 0xB9D2D50BAA0D1734;
  v90 ^= 0x9244585D1968742CLL;
  v92 = __ROR8__(v91, 8);
  v93 = (((2 * (v92 + v90)) | 0xA9D86E5AB1C142A4) - (v92 + v90) + 0x2B13C8D2A71F5EAELL) ^ 0x428C731831F1D149;
  v94 = v93 ^ __ROR8__(v90, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ v52;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0x86DDB2288368D06BLL;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * (v99 + v98)) & 0xB976A268771B7558) - (v99 + v98) + 0x2344AECBC4724553) ^ 0x82DC456542A87E5;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = __ROR8__(v100, 8);
  v103 = __ROR8__((0x3898392877F4406ALL - ((v102 + v101) | 0x3898392877F4406ALL) + ((v102 + v101) | 0xC767C6D7880BBF95)) ^ 0x89AA7DA2632E4AD7, 8);
  v104 = (0x3898392877F4406ALL - ((v102 + v101) | 0x3898392877F4406ALL) + ((v102 + v101) | 0xC767C6D7880BBF95)) ^ 0x89AA7DA2632E4AD7 ^ __ROR8__(v101, 61);
  v105 = (((2 * (v103 + v104)) & 0xCFE07E7B0EB345ELL) - (v103 + v104) - 0x67F03F3D8759A30) ^ 0xCE0E65C6FA2A16E5;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  *(a49 + 2) = ((((2 * (v107 + v106)) & 0x452DA019A2332FB2) - (v107 + v106) - 0x2296D00CD11997DALL) ^ 0x3FCD9CA880C0F287) >> (8 * ((a49 + 2) & 7));
  v108 = __ROR8__((a49 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v109 = ((0x52E552993539CLL - v108) & 0x648001D02DF13) + v108 + 0x572D1AAD66CAC63 - ((v108 + 0x572D1AAD66CAC63) & 0x40648001D02DF13);
  v110 = v109 ^ 0x6CC1F3AE16C86DE0;
  v109 ^= 0x47577EF8A5AD0EF8uLL;
  v111 = __ROR8__(v110, 8);
  v112 = (((2 * (v111 + v109)) | 0xAB865BA93C36565ALL) - (v111 + v109) - 0x55C32DD49E1B2B2DLL) ^ 0xC3A369E1F70A5B36;
  v113 = v112 ^ __ROR8__(v109, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ v52;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0x86DDB2288368D06BLL;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = __ROR8__(v116, 8);
  v119 = (0x4CB55865924162A5 - ((v118 + v117) | 0x4CB55865924162A5) + ((v118 + v117) | 0xB34AA79A6DBE9D5ALL)) ^ 0x9823CD07FDE65FECLL;
  v120 = v119 ^ __ROR8__(v117, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x4ECDBB75EB25F542;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (0x761B7842AA5ABA74 - ((v123 + v122) | 0x761B7842AA5ABA74) + ((v123 + v122) | 0x89E487BD55A5458BLL)) ^ 0xBE6A1E77880536BELL;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = __ROR8__(v124, 8);
  *(a49 + 3) = ((((2 * (v126 + v125)) & 0x25CAE8B48755C00ALL) - (v126 + v125) - 0x12E5745A43AAE006) ^ 0xFBE38FE1273855BLL) >> (8 * ((a49 + 3) & 7));
  return v67(20, 0xD1156EA5A1C7A5C7, v50, 0x761B7842AA5ABA74, 0x5C88B96081B5609ELL, 0x4CB55865924162A5, 0x40A78BFA627753F5, 0x3898392877F4406ALL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1E3F8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (v8 - 1519281731) & 0x5A8E6D6A;
  v12 = ((7 - a1) ^ 0xF5) & (2 * ((7 - a1) & 0xF9)) ^ (7 - a1) & 0xF9;
  v13 = ((((1985720327 - a1) ^ 0x1E7E4DF7) << (v11 ^ 3)) ^ 0x2FB4041C) & ((1985720327 - a1) ^ 0x1E7E4DF7) ^ (((1985720327 - a1) ^ 0x1E7E4DF7) << (v11 ^ 3)) & 0x97DA020E;
  v14 = (7 - a1) ^ (2 * (((4 * v13) ^ 0x30) & v13 & (16 * ((v13 ^ 0xC) & (4 * v12) ^ v12)) ^ (v13 ^ 0xC) & (4 * v12) ^ v12)) ^ 0xB5;
  STACK[0x9F0] = (v9 >> (~v14 & 0xC) >> (v14 & 0x33)) ^ 0xC8CC8AFA2F7E568BLL;
  v15 = *(v7 + 16);
  STACK[0x540] = v7 + 16;
  v16 = *(v7 + 24) + ((v11 - 476) ^ 0x22AD155D ^ (v11 - 2065562925) & 0x7B1DF56F);
  v17 = (v15 - 1582874833 < v10) ^ (v16 < v10);
  v18 = v15 - 1582874833 > v16;
  if (v17)
  {
    v18 = v15 - 1582874833 < v10;
  }

  return (*(a7 + 8 * ((11 * v18) ^ v11)))();
}

uint64_t sub_1E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v21 = (((v11 ^ a6) + v13) ^ ((v11 ^ 0x7D415C07) - 2101435399) ^ ((a8 ^ 0x61D) + ((a8 - 2197) ^ v12) + (v11 ^ 0x454BBFAF))) + v9;
  v22 = (((v20 ^ v14) + v15) ^ ((v20 ^ v16) + v17) ^ ((v20 ^ v18) + v19)) + v9;
  v23 = (v22 < v10) ^ (v21 < v10);
  v24 = v21 < v22;
  if (v23)
  {
    v24 = v22 < v10;
  }

  return (*(v8 + 8 * ((8 * v24) | (v24 << 9) | a8)))();
}

uint64_t sub_1E620()
{
  v1 = STACK[0x430];
  STACK[0x1128] = *(STACK[0x430] + 8 * (v0 - 2760));
  return (*(v1 + 8 * ((23 * ((((((((v0 ^ 0x1A1) + 761867636) & 0xD296CC0E) + 1554662965) & 0xA355B7FD) + 1668807954) ^ 0x6377FF5FuLL) < (((((v0 ^ 0x1A1) + 761867636) & 0xD296CC0E) - 114) ^ 0x390uLL))) ^ ((v0 ^ 0x1A1) + 761867636) & 0xD296CC0E)))(0x48ABF69D8F94DC78, 0x4AB79B36F531244, 0xAB7E7F28BB1FC576, 0x55BF3F945D8FE2BBLL, 0x2757C3124308767BLL);
}

uint64_t sub_1E78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x550];
  *(v9 + 68) = 0;
  v9 += 68;
  STACK[0xF50] = v9;
  *(v9 + 4) = 0;
  STACK[0x908] = v9 + 4;
  STACK[0x638] = v9 + 8;
  v10 = *(STACK[0x710] - 0x6B555BBDDC267359);
  if (v10 == 1040777597)
  {
    return (*(a7 + 8 * ((1832 * (*(STACK[0x710] - 0x6B555BBDDC267351) == LODWORD(STACK[0x2A0]))) ^ (v8 - 1996))))();
  }

  if (v10 != 1040777596)
  {
    return (*(a7 + 8 * ((82 * (*STACK[0x580] == (((2 * v8) ^ 0xAA) + 121 * (v8 ^ v7) - 72))) ^ (v8 + 129))))();
  }

  STACK[0x8D8] = *(a7 + 8 * (v8 - 2495));
  return sub_40FA4();
}

uint64_t sub_1EAB4(unsigned __int8 a1, int8x16_t a2, int8x8_t a3, int8x8_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v16 = a8 - 8;
  v18.val[0].i64[0] = (v14 + v16 - 1) & 0xF;
  v18.val[0].i64[1] = (v14 + v16 + 14) & 0xF;
  v18.val[1].i64[0] = (v14 + v16 + 13) & 0xF;
  v18.val[1].i64[1] = (v14 + v16 + 12) & 0xF;
  v18.val[2].i64[0] = (v14 + v16 + (a1 ^ 0xE)) & 0xF;
  v18.val[2].i64[1] = (v14 + v16 + 10) & 0xF;
  v18.val[3].i64[0] = (v14 + v16 + 9) & 0xF;
  v18.val[3].i64[1] = (v14 + v16) & 0xF ^ 8;
  *(v10 - 8 + v14) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a9 - 8 + v14), *(v12 + v18.val[0].i64[0] - 7)), veor_s8(*(v18.val[0].i64[0] + v13 - 4), *(v11 + v18.val[0].i64[0] - 7)))), a4), vmul_s8(*&vqtbl4q_s8(v18, a2), a3)));
  return (*(v15 + 8 * (((a7 + v16 != 0) * a10) ^ a6)))();
}

uint64_t sub_1EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  HIDWORD(a14) = HIDWORD(a11) - 1717552106;
  v35.i64[0] = 0xC6C6C6C6C6C6C6C6;
  v35.i64[1] = 0xC6C6C6C6C6C6C6C6;
  return sub_AECE0(v35, vdupq_n_s32(0x2CB7FFD7u), vdupq_n_s32(0x2CB7FFD3u), a1, 1159725056, a3, 344, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, v34 - 16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1EB1C@<X0>(uint64_t a1@<X8>)
{
  v7 = (v3 - 1211577171) & 0x483735E5;
  v8 = (v7 ^ 0x584) + v5;
  *(*(v1 + 8) + 4 * (v5 + v2)) = v6 ^ v4;
  *(v1 + 4) = v8;
  v9 = v8 + v2;
  if (v8 + v2 < 0)
  {
    v9 = -v9;
  }

  return (*(a1 + 8 * ((42 * ((v7 + (v9 ^ 0xFDFE1FBB) + ((2 * v9) & 0xFBFC3F76) + 33675967) >> 31)) ^ (v7 - 826))))();
}

uint64_t sub_1EBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(STACK[0xE58]) = 0;
  STACK[0xA28] = v5 + 1544;
  return sub_C31D8(a1, a2, a3, a4, a5);
}

uint64_t sub_1EBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(v8 + 1336 * v9);
  *(v10 - 240) = (v7 - 355568180) ^ (1579770187 * ((2 * ((v10 - 240) & 0x7A03B640) - (v10 - 240) - 2047063619) ^ 0xF022CAC3));
  *(v10 - 232) = v11;
  v12 = (*(a7 + 8 * ((v7 + 35) ^ 0xB44)))(v10 - 240);
  v13 = STACK[0x430];
  LOBYTE(STACK[0xB7F]) = 1;
  return (*(v13 + 8 * ((76 * (*(v8 + 1336 * v9 + 252) != ((5 * ((v7 + 35) ^ 0x4BB) - 4) ^ 0x2EBEF018))) | (5 * ((v7 + 35) ^ 0x4BB)))))(v12);
}

uint64_t sub_1ECD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (v7 + 2302);
  v12 = STACK[0x550];
  *(v10 - 240) = v7 + ((~((v10 - 240) | v8) + ((v10 - 240) & v8)) ^ 0x22340CD3) * v9 + 640;
  *(v10 - 232) = v12;
  v13 = (*(a7 + 8 * (v7 ^ 0xC8C)))(v10 - 240);
  v14 = STACK[0xC18];
  STACK[0x710] = STACK[0xC18] + 0x6B555BBDDC267475;
  STACK[0x9E0] = *(v14 + 272);
  v15 = STACK[0xD90];
  v16 = &STACK[0x1520] + STACK[0xD90];
  STACK[0xCD0] = v16;
  STACK[0xD90] = v15 + (v11 ^ 0xB66);
  *v16 = 0;
  v17 = STACK[0x700];
  *(v16 + 4) = 0;
  *(v16 + 7) = 0;
  *(v16 + 12) = 0;
  *(v16 + 20) = 0x7EFA24110FB56B71;
  *(v16 + 4) = 32;
  *(v16 + 1) = v17;
  STACK[0x1510] = 0;
  *(v16 + 5) = 0;
  STACK[0xD78] = (v16 + 40);
  STACK[0xAF0] = (v16 + 8);
  LODWORD(STACK[0xE6C]) = 0;
  return sub_D8684(v13);
}

void sub_1EE44()
{
  v2 = *(v0 + 16);
  **(v0 + 40) = v1;
  *v2 = v3;
  *(v0 + 4) = 1682696337;
}

uint64_t sub_1EEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, int a29)
{
  v34 = v30 ^ 0x91504119B61D4B4CLL;
  v35 = (a28 ^ v31 ^ 0x812A75436C740598) + a27 - (((a28 ^ v31 ^ 0x812A75436C740598) & a27) << (((v29 - 18) | 6u) - 5));
  v36 = v30 ^ 0x91504119B61D4B4CLL ^ a7;
  v37 = v30 ^ 0x91504119B61D4B4CLL ^ v32 ^ 0x8D6E61D9FC0C1350;
  v38 = v35 ^ 0x384EE38AFA843517 ^ a8;
  v39 = v38 ^ 0x9D659E1D016D321BLL;
  v40 = (v35 ^ 0x384EE38AFA843517) & (v36 ^ 0x754484F8A3175691);
  v38 ^= 0x629A61E2FE92CDE4uLL;
  v41 = (((v38 - v39) ^ 0xFFFFFFFFFFFFFFFELL) + v38) & (v32 ^ 0x8D6E61D9FC0C1350);
  v36 ^= 0x8ABB7B075CE8A96ELL;
  v42 = v36 & ~v37;
  v43 = v40 ^ v37;
  v44 = v38 ^ v34 & (v32 ^ 0x72919E2603F3ECAFLL);
  v45 = v38 & ((v29 + 1282818795) & 0xB389BC6A ^ 0xC7B11C75057BCE80 ^ v35) ^ v36;
  v46 = v35 ^ v45 ^ 0xB2F01BF6728CF9A2 ^ v41;
  v47 = (v44 ^ 0x92CFC162FD513143) + 0x54D6FD3E4E31A11FLL;
  v48 = 0xAB2902C1B1CE5EE1;
  if ((v44 ^ 0x92CFC162FD513143) < 0xAB2902C1B1CE5EE1)
  {
    v47 = v44 ^ 0x92CFC162FD513143;
    v48 = 0;
  }

  if (v47)
  {
    v49 = v44 ^ 0x92CFC162FD513143;
  }

  else
  {
    v49 = v48;
  }

  v50 = (v46 | 0xA4) >> (v49 & 0x3D) >> (v49 & 0x3D ^ 0x3D);
  v51 = v43 ^ 0xF38BFF733C051F6 ^ v45;
  v52 = v32 ^ v42 ^ 0x3CF183EDD7997487 ^ v44;
  v53 = ((v49 << 63) ^ (v49 << 58)) & 0xFC00000000000000 | (v49 >> 6);
  v54 = (v43 ^ 0xB73927F742B277DFLL) - ((2 * (v43 ^ 0xB73927F742B277DFLL)) & 0x25FB6E5A) + 318617389;
  v55 = v46 ^ (v46 >> 39) ^ (8 * v46) ^ (v46 << 25) ^ v50;
  v56 = v44 ^ 0x92CFC162FD513143 ^ (v44 >> 1) ^ v53 ^ v55;
  v57 = v52 ^ (v52 << 47) ^ (v52 << 54) ^ (v52 >> 10) ^ (v52 >> 17);
  v58 = (((v43 ^ 0xB73927F7504FC0F2) >> 41) | ((v43 ^ 0xB73927F7504FC0F2) << 57)) ^ ((v43 ^ 0xB73927F7504FC0F2) << 23) ^ v54 ^ (v54 >> 7);
  v59 = v51 ^ __ROR8__(v51, 19) ^ (v51 >> 28) ^ (v51 << 36) ^ v58;
  v60 = v59 & 0xFFDFFFFFFFFFFFFFLL ^ 0x8927B2A344FB39CCLL ^ (v59 & 0x20000000000000 | 0x76D84D5CBB04C633);
  v61 = v59 & ~(v58 ^ v57);
  v62 = (v56 ^ 0x4967E0B17EA898A1) & ~v55 ^ v59;
  v63 = v56 ^ 0x4967E0B17EA898A1 ^ v58 & ~v57;
  v64 = v55 & v60 ^ v58 ^ v57;
  v65 = v62 ^ v64 ^ 0xAC7C0FF4012565E3;
  v66 = v55 ^ 0x5747C156E755AED6 ^ (v56 ^ 0xB6981F4E8157675ELL) & v57 ^ v62;
  v67 = __ROR8__(((v62 ^ v64) >> 19) ^ 0xCD5555B4C0E67FD0, 26) ^ 0x463FFD3355500ED0;
  v68 = v57 ^ 0x28FA59BDD48D0B6 ^ v61 ^ v63;
  v69 = v63 ^ 0x6F45779FA95FC03ALL ^ ((v63 ^ 0x6F45779FA95FC03AuLL) >> 1) ^ ((((v63 ^ 0x6F45779FA95FC03ALL) << 58) ^ (v63 << 63)) & 0xFC00000000000000 | ((v63 ^ 0x6F45779FA95FC03AuLL) >> 6));
  v70 = (v66 ^ (v66 >> 39) ^ (8 * v66) ^ (v66 << 25)) & 0xAF910E57F0FE3348 | (v66 ^ (v66 >> 39) ^ (v66 >> 61)) & 0x506EF1A80F01CCB7 ^ ((8 * v66) ^ (v66 << 25)) & 0x506EF1A80F01CCB0;
  v71 = v70 ^ v69;
  v72 = v64 ^ 0x9A383CF881807545 ^ ((v64 ^ 0x9A383CF881807545) << 23) ^ ((v64 ^ 0x9A383CF881807545) >> 7) ^ ((v64 >> 41) | ((v64 ^ 0x9A383CF881807545) << 57)) ^ 0x4D1C1E;
  v73 = v68 ^ __ROR8__(v68, 17) ^ (v68 >> 10) ^ (v68 << 54);
  v74 = (((v65 << 36) ^ (v65 << 45)) & 0xFFFFFFF000000000 | (v65 >> 28)) ^ v65 ^ v72 ^ __ROR8__(v67, 38);
  v75 = v70 & ~v74;
  v76 = v74 & ~(v72 ^ v73);
  v77 = v73 & ~(v70 ^ v69);
  v78 = v74 ^ v69 & ~v70;
  v79 = v75 ^ v72 ^ v73;
  LOBYTE(v60) = v75 & 0x3D;
  v80 = v78 ^ 0x6E04C15915AB860ALL ^ v79;
  v81 = v71 ^ v72 & ~v73;
  v82 = __ROR8__(v80, 19);
  v83 = v73 ^ 0x7370AC685030CB36 ^ v76;
  v84 = (v80 ^ v82) & 0x2000;
  v86 = v70 ^ v77 ^ v78 ^ 0x3278F838FE43D2BCLL;
  v87 = v80 >> 28;
  v88 = (v80 ^ v82) & 0xFFFFFFFFFFFFDFFFLL ^ (v80 << 36);
  v89 = v86 >> v60 >> (v60 ^ 0x3Du);
  if ((v84 & v87) != 0)
  {
    v84 = -v84;
  }

  v90 = v79 ^ 0x26974B18501E2B14;
  v91 = v88 ^ (v84 + v87);
  v92 = __ROR8__(v86 ^ (v86 >> 39) ^ (v89 | (v86 << 25)), 20);
  v85 = v83 ^ v81;
  v93 = ((v85 ^ (v85 >> 10)) + (v85 << 47) - 2 * ((v85 ^ (v85 >> 10)) & (v85 << 47))) ^ ((v85 >> 17) | (v85 << 54));
  v94 = __ROR8__(__ROR8__(v86, 17) & 0xFFFF8FFFFFFFFFFFLL ^ v92 ^ 0xE3B89271AC5D8DB6, 44);
  v95 = (v90 << 23) ^ __ROR8__(v90, 7) ^ ((v90 ^ -v90 ^ ((v90 >> 41) - ((v90 >> 41) ^ v90))) + (v90 >> 41));
  v96 = v93 ^ v95;
  v97 = v95 & ~v93;
  v98 = v91 ^ v95;
  *(&v99 + 1) = v81;
  *&v99 = v81 ^ 0x7955EAEC4D48B80CLL;
  v100 = (v99 >> 1) ^ ((v81 ^ 0x7955EAEC4D48B80CLL) >> 6) ^ __ROR8__((((v81 ^ 0x7955EAEC4D48B80CLL) & 0x3F) << 9) ^ __ROR8__(v81 ^ 0x7955EAEC4D48B80CLL, 49) ^ 0x1568C2E9B14CF29BLL, 15) ^ v94 ^ 0xD8E53A272491C476;
  v101 = (v100 ^ 0x1AC9D52E7A2C9D66) & (v94 ^ 0xD8E53A272491C476) ^ v98;
  v102 = (v94 ^ 0x271AC5D8DB6E3B89) & ~v98;
  v103 = v100 ^ 0x1AC9D52E7A2C9D66 ^ v97;
  v104 = v94 ^ (v100 ^ 0xE5362AD185D36299) & v93;
  v105 = (v103 ^ 0xD3DA1E3360BF843ALL) << 58;
  v106 = v104 ^ v101 ^ 0x654DA1638319E1ACLL;
  v107 = v98 & ~v96;
  v108 = v102 ^ v96;
  v109 = v108 ^ 0x97F6A7E5F6E8F58ALL ^ v101;
  v110 = v93 ^ 0x44C9D571A5C4A51CLL ^ v107 ^ v103;
  v111 = v106 ^ (v106 >> 39) ^ (v106 >> 61) ^ (8 * v106) ^ (v106 << 25);
  v112 = v103 & 0x2000000000000000;
  if ((v105 & v103 & 0x2000000000000000) != 0)
  {
    v112 = -v112;
  }

  v113 = v112 + v105;
  v114 = v110 ^ (v110 >> 10) ^ (v110 >> 17);
  v115 = v114 + (v110 << 47) - 2 * (v114 & (v110 << 47));
  v116 = ((((v103 ^ 0xD3DA1E3360BF843ALL) >> 6) | (v103 << 63)) - 2 * (((v103 ^ 0xD3DA1E3360BF843ALL) >> 6) & (v103 ^ 0xD3DA1E3360BF843ALL)) + (v113 ^ (v103 ^ 0xD3DA1E3360BF843ALL) & 0xDFFFFFFFFFFFFFFFLL)) ^ ((v103 ^ 0xD3DA1E3360BF843ALL) >> 1);
  v117 = v114 & 8 | (v110 << 54);
  v118 = v116 ^ v111;
  v119 = v115 & 0xFFFFFFFFFFFFFFF7;
  v120 = (v108 >> 7) ^ ((v108 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v108 ^ 0x70C7A8D3F3643DFDLL) << 23) ^ (0x200000000000001 * (v108 ^ 0x70C7A8D3F3643DFDLL) - (((v108 ^ 0x70C7A8D3F3643DFDLL) << 58) & (2 * (v108 ^ 0x70C7A8D3F3643DFDLL)))) ^ 0xE18F51A7E6C87BLL;
  v121 = v109 ^ (v109 << 36) ^ v120 ^ ((v109 >> 19) ^ (v109 >> 28) | (v109 << 45));
  v122 = v116 & ~v111 ^ v121;
  v123 = v122 & 0x200000000;
  if ((v122 & 0x200000000 & v111) != 0)
  {
    v123 = -v123;
  }

  v124 = v119 ^ v117;
  v125 = v124 ^ v120;
  v126 = (v123 + v111) ^ 0x6005BE354A5BB0B2;
  v127 = v124 ^ v120 ^ v111 & ~v121;
  v128 = v118 ^ v120 & ~v124;
  v129 = v121 & ~v125;
  v130 = v128 ^ 0x6DC4FB0BD4FFFF44;
  v131 = v126 & 0xEAE473D30C589FF9 ^ v122 & 0xEAE473D10C589FF9 | v126 & 0x151B8C2CF3A76006;
  v132 = v122 ^ 0x93C23431B76D41FLL ^ v127;
  v133 = (v128 ^ 0x6DC4FB0BD4FFFF44) - 2 * ((v128 ^ 0x6DC4FB0BD4FFFF44) & 7) + 7;
  v134 = v122 & 0x151B8C2CF3A76006 ^ v124 & ~v118 ^ v131;
  v135 = v124 ^ 0xF374A001D380BDC2 ^ v129 ^ v128;
  v136 = v128 << 63;
  v137 = (v128 ^ 0x6DC4FB0BD4FFFF44) >> 1;
  v138 = v130 == v136;
  v139 = v130 ^ (v130 << 58) ^ (v136 & 0xFC00000000000000 | (v133 >> 6));
  v140 = v135 ^ (v135 >> 10);
  v141 = v140 ^ 0xA8FF72FC882CBACALL;
  if (v138)
  {
    v141 = 0x57008D0377D34535;
  }

  v142 = (((v141 & v140 ^ (v135 << 47) & 0x5700800000000000) + (v140 & 0xA8FF72FC882CBACALL ^ (v135 << 47) & 0xA8FF000000000000)) | (v135 >> 17)) ^ (v135 << 54) ^ ((v141 & v140 ^ (v135 << 47) & 0x5700800000000000) + (v140 & 0xA8FF72FC882CBACALL ^ (v135 << 47) & 0xA8FF000000000000)) & (v135 >> 17);
  v143 = v127 ^ 0x2DB5B6AF87F64351 ^ __ROR8__(v127 ^ 0x2DB5B6AF87F64351, 7) ^ __ROR8__(v127 ^ 0x2DB5B6AF87F64351, 41);
  v144 = v132 ^ __ROR8__(v132, 28) ^ __ROR8__(v132, 19) ^ v143;
  v145 = v134 ^ __ROR8__(v134, 61) ^ (v134 << 25) ^ (v134 >> 39);
  v146 = v139 + v137 - 2 * (v139 & v137);
  v147 = __ROR8__(__ROR8__(v142 ^ v143, 28) ^ 0x6140053D519F4A83, 36) ^ 0xD519F4A836140053;
  v148 = v146 & ~v145 ^ v144;
  v149 = v145 ^ v146;
  *(&v150 + 1) = v147 & ~v142 ^ v149;
  *&v150 = *(&v150 + 1) ^ 0xC39D9869C05A48AELL;
  v151 = v142 & ~v149 ^ v145 ^ v148;
  v152 = v148 ^ 0x69309AC4CAE2F93 ^ v147 ^ v145 & (__ROR8__(__ROR8__(__ROR8__(v144, 9) ^ 0x88EC8B4313713A83, 52) ^ 0xDF4A693FC00C1C53, 3) ^ 0x5D0034FEE58B7B64);
  return (*(v33 + 8 * (v29 ^ (114 * (a29 + 1 != a26)))))(a1, a2, a3, a4, v151 ^ __ROR8__(v151 ^ 0x62030E578F798D5ALL, 61) ^ ((v151 ^ 0x62030E578F798D5ALL) << 25) ^ ((v151 ^ 0x62030E578F798D5ALL) >> 39), a6, v152 ^ __ROR8__(v152, 28) ^ (v152 << 45) ^ (v152 >> 19), *(&v150 + 1) ^ 0xC39D9869C05A48AELL ^ ((*(&v150 + 1) ^ 0xC39D9869C05A48AELL) << 58) ^ (v150 >> 1) ^ ((*(&v150 + 1) ^ 0xC39D9869C05A48AELL) >> 6), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, (v29 - 1298) | 0x406u);
}

uint64_t sub_1FAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x3F0] = STACK[0x768] + 24;
  STACK[0x3E0] = STACK[0x998] + 24;
  STACK[0x3D0] = STACK[0x1020] + 24;
  STACK[0x420] = STACK[0x8E8] + 24;
  v5 = LOWORD(STACK[0x14A6]);
  LODWORD(STACK[0x3B0]) = v5;
  LODWORD(STACK[0x3A0]) = v5 ^ 0xFFFFF418;
  v6 = LODWORD(STACK[0x14A8]);
  LODWORD(STACK[0x3C0]) = -1340669473;
  LODWORD(STACK[0x320]) = LODWORD(STACK[0x14AC]) ^ 0x90B70278;
  STACK[0x410] = STACK[0xF30] + 24;
  v7 = LOWORD(STACK[0x14C6]);
  LODWORD(STACK[0x390]) = v7;
  LODWORD(STACK[0x380]) = v7 ^ 0xFFFF96C7;
  LODWORD(STACK[0x370]) = LODWORD(STACK[0x5D4]) ^ 0x90B70278;
  LODWORD(STACK[0x340]) = v6;
  LODWORD(STACK[0x360]) = v6 ^ 0x90B70278;
  v8 = STACK[0x14C8];
  LODWORD(STACK[0x310]) = LODWORD(STACK[0x14CC]) ^ 0x90B70278;
  LODWORD(STACK[0x330]) = v8;
  LODWORD(STACK[0x350]) = v8 ^ 0x90B70278;
  return sub_BA234(0x6BEAE8D1BA9FBEECLL, 0x3A7FBC8F2149D50DLL, 0x283D2946C0F3CD81, v6, a5, 163, 0xEB43AAA2D3734E69);
}

uint64_t sub_1FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, int a6@<W8>)
{
  STACK[0xC28] = v6;
  LODWORD(STACK[0x8CC]) = STACK[0x954];
  return (*(a5 + 8 * (((STACK[0x610] != 0) * (((7 * (a6 ^ 0xF8E)) ^ 0x845) - 600)) ^ a6)))(a1, a2, a3, a4, 0x4E179E9CD88A77F9);
}

uint64_t sub_1FD4C(uint64_t a1)
{
  *(STACK[0x1270] + 160) = -2127042687;
  STACK[0xD90] += (v1 - 556791071) & 0x212FEFDF ^ 0xFFFFFFFFFFFFFB81;
  return sub_4C744(a1, 2612310853);
}

uint64_t sub_1FDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (STACK[0xAB8] == 0xCA4341AAF7536FB7 || STACK[0xAB8] == 0xCA4341AAF7536FB0)
  {
    STACK[0x10C0] = *(a7 + 8 * (v7 - 2706));
    v9 = &STACK[0x1018];
  }

  else
  {
    STACK[0x10C0] = *(a7 + 8 * (v7 - 2728));
    v9 = &STACK[0xEE0];
  }

  return sub_B29F8(a1, a2, a3, a4, a5, a6, a7, v9);
}

uint64_t sub_1FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = 147;
  v9 = v7 + 48;
  STACK[0xA78] = v9;
  STACK[0xFE0] = v9 + 1;
  return (*(a7 + 8 * (((*(STACK[0x710] - 0x6B555BBDDC267341) != (((v8 + 220) | 9) ^ 0x71397401)) * ((v8 - 710084951) & 0x2A52FF7C ^ 0x13E)) ^ (v8 - 1269))))();
}

uint64_t sub_1FE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = STACK[0x408] + 227;
  v6 = STACK[0x408];
  STACK[0x758] = 0;
  LODWORD(STACK[0xF8C]) = 1209905666;
  STACK[0x10C8] = 0;
  return (*(a5 + 8 * (((STACK[0x1280] == 0) * (v6 ^ 0x21 ^ (1427 * (v5 ^ 0xC0B)))) ^ v5)))(a1, 2612310856);
}

uint64_t sub_1FEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 128) = &a15;
  *(v18 - 120) = a14;
  *(v18 - 136) = v17 + ((1580918019 - ((v18 - 136) | 0x5E3AE503) + ((v18 - 136) | 0xA1C51AFC)) ^ 0x472ABFA7) * v15 - 1256;
  v19 = (*(v16 + 8 * (v17 + 1592)))(v18 - 136);
  return (*(v16 + 8 * ((210 * (*(v18 - 112) - 1903883946 >= ((1541 * (v17 ^ 0x858)) ^ 0xA320702C))) ^ v17)))(v19);
}

uint64_t sub_1FFB4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W8>)
{
  v12 = a4 + 1;
  v13 = *(v10 + (v12 * a3 - ((((v12 * a3) * v8) >> 16) >> 8) * v7)) * a3;
  *(v10 + (v13 + v6) % (((v4 - v13) ^ (v13 + v6)) & (a2 - 147) | v5)) = v12;
  return (*(v11 + 8 * (((v12 != 15) * v9) ^ a1)))();
}

uint64_t sub_1FFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v13 = (((a11 - 875666258) ^ 0x7E063A61) - 2012673422) ^ (a11 - 875666258) ^ (((a11 - 875666258) ^ 0xEA44E4E7) + 474731768) ^ (((a11 - 875666258) ^ 0x7FFFFFFF) - 1980706832) ^ ((a5 ^ 0x1442DA95) + ((a11 - 875666258) ^ 0xE24DEE96));
  v15 = (~v13 & 0xF) != 0 || v13 == (a5 ^ 0xDF9) + 166774276;
  v16 = *(v11 + 8 * ((v15 * (a5 ^ 0x7AC)) ^ a5 ^ 0xDF9));
  *(v12 - 128) = -42899;
  return v16();
}

void sub_20088(uint64_t a1)
{
  v1 = *a1 + 1556812919 * ((((2 * a1) | 0x88CEE7B6) - a1 + 999853093) ^ 0x9EE41FB8);
  v2 = *(&off_103F00 + (v1 & 0xFE91B29D)) - 4;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0x667)])(24 * (2 * *(*(a1 + 8) + 4)), 0x10800404ACF7207) != 0) * (((v1 - 1111) | 1) ^ 0x537)) ^ v1)];
  __asm { BRAA            X10, X17 }
}

void sub_20180(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v3 = (v2 - 1357) | 7;
  (*(a1 + 8 * (v2 + 277)))(a2);
  v4 = STACK[0x430];
  *(STACK[0x480] + 24) = 0;
  (*(v4 + 8 * (v3 ^ 0x6A5)))();
  STACK[0x480] = 0;
  JUMPOUT(0x201C8);
}

uint64_t sub_20294()
{
  LOBYTE(STACK[0x1267]) = 0;
  LODWORD(STACK[0x1260]) = 0;
  v2 = (v1 ^ 0x758) == 0xDE3;
  return (*(v0 + 8 * ((16 * v2) | (32 * v2) | v1)))();
}

uint64_t sub_202A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9.i64[0] = 0xF7F7F7F7F7F7F7F7;
  v9.i64[1] = 0xF7F7F7F7F7F7F7F7;
  v10 = veorq_s8(*(v5 + v8 - 12), v9);
  *(v5 + v7 + 1256) = veorq_s8(*(v5 + v8 - 28), v9);
  *(v5 + v7 + 1272) = v10;
  return (*(a5 + 8 * ((((v5 & 0xFFFFFFE0) == 32) * ((v6 + 832963225) & 0xCE59FE6F ^ 0xC3A)) ^ (v6 - 1720))))();
}

uint64_t sub_20370(int8x16_t a1, int8x16_t a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v38 = v17 - 8;
  STACK[0x420] = *(v22 + v38 - 8);
  v39.i64[0] = v22 + v38 - 7;
  v39.i64[1] = v22 + v38 - 8;
  v40.i64[0] = v22 + v38 - 5;
  v40.i64[1] = v22 + v38 - 6;
  v41.i64[0] = v22 + v38 - 1;
  v41.i64[1] = v22 + v38 - 2;
  v42.i64[0] = v22 + v38 - 3;
  v42.i64[1] = v22 + v38 + v21 - 684;
  v43.i64[0] = v20 + v38 - 7;
  v43.i64[1] = v20 + v38 - 8;
  v44.i64[0] = v20 + v38 - 5;
  v44.i64[1] = v20 + v38 - 6;
  v45 = vandq_s8(v42, a1);
  v46 = vandq_s8(v41, a1);
  v47 = vandq_s8(v40, a1);
  v48 = vandq_s8(v39, a1);
  v49 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v53 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v52, v52), *&STACK[0x3F0]), *&STACK[0x3E0]), v52), *&STACK[0x3D0]);
  v54 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v51, v51), *&STACK[0x3F0]), *&STACK[0x3E0]), v51), *&STACK[0x3D0]);
  v55 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v50, v50), *&STACK[0x3F0]), *&STACK[0x3E0]), v50), *&STACK[0x3D0]);
  v56 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v49, v49), *&STACK[0x3F0]), *&STACK[0x3E0]), v49), *&STACK[0x3D0]);
  v57 = veorq_s8(v56, *&STACK[0x3C0]);
  v58 = veorq_s8(v55, *&STACK[0x3C0]);
  v59 = veorq_s8(v54, *&STACK[0x3C0]);
  v60 = veorq_s8(v53, *&STACK[0x3C0]);
  v61 = veorq_s8(v53, *&STACK[0x3B0]);
  v62 = veorq_s8(v54, *&STACK[0x3B0]);
  v63 = veorq_s8(v55, *&STACK[0x3B0]);
  v64 = veorq_s8(v56, *&STACK[0x3B0]);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v61), a8);
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v62), a8);
  v67 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v63), a8);
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v64), a8);
  v69 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v70 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v72 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v73 = veorq_s8(v67, v71);
  v74 = veorq_s8(v66, v70);
  v75 = veorq_s8(v65, v69);
  v76 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v75);
  v80 = vaddq_s64(v78, v74);
  v81 = vaddq_s64(v77, v73);
  v82 = vaddq_s64(v76, v72);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v82, v82), *&STACK[0x3A0]), v82), *&STACK[0x390]), *&STACK[0x380]);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v81, v81), *&STACK[0x3A0]), v81), *&STACK[0x390]), *&STACK[0x380]);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v80, v80), *&STACK[0x3A0]), v80), *&STACK[0x390]), *&STACK[0x380]);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), *&STACK[0x3A0]), v79), *&STACK[0x390]), *&STACK[0x380]);
  v87 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v90 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v91 = veorq_s8(v85, v89);
  v92 = veorq_s8(v84, v88);
  v93 = veorq_s8(v83, v87);
  v94 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v93);
  v98 = veorq_s8(vaddq_s64(v94, v90), *&STACK[0x370]);
  v99 = veorq_s8(vaddq_s64(v95, v91), *&STACK[0x370]);
  v100 = veorq_s8(vaddq_s64(v96, v92), *&STACK[0x370]);
  v101 = veorq_s8(v97, *&STACK[0x370]);
  v102 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v105 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v106 = veorq_s8(v100, v104);
  v107 = veorq_s8(v99, v103);
  v108 = veorq_s8(v98, v102);
  v109 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v108);
  v113 = veorq_s8(vaddq_s64(v109, v105), *&STACK[0x360]);
  v114 = veorq_s8(vaddq_s64(v110, v106), *&STACK[0x360]);
  v115 = veorq_s8(vaddq_s64(v111, v107), *&STACK[0x360]);
  v116 = veorq_s8(v112, *&STACK[0x360]);
  v117 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v120 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v121 = veorq_s8(v115, v119);
  v122 = veorq_s8(v114, v118);
  v123 = veorq_s8(v113, v117);
  v124 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v123);
  v128 = veorq_s8(vaddq_s64(v124, v120), v32);
  v129 = veorq_s8(vaddq_s64(v125, v121), v32);
  v130 = veorq_s8(vaddq_s64(v126, v122), v32);
  v131 = veorq_s8(v127, v32);
  v132 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v135 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v136 = veorq_s8(v130, v134);
  v137 = veorq_s8(v129, v133);
  v138 = veorq_s8(v128, v132);
  v139 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v138);
  v143 = vaddq_s64(v141, v137);
  v144 = vaddq_s64(v140, v136);
  v145 = vaddq_s64(v139, v135);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v142, *&STACK[0x350]), vorrq_s8(v142, v33)), v33), *&STACK[0x340]);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v143, *&STACK[0x350]), vorrq_s8(v143, v33)), v33), *&STACK[0x340]);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v144, *&STACK[0x350]), vorrq_s8(v144, v33)), v33), *&STACK[0x340]);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v145, *&STACK[0x350]), vorrq_s8(v145, v33)), v33), *&STACK[0x340]);
  v150 = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v151 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v152 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v153 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v154 = veorq_s8(v146, v150);
  v155 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v136.i64[0] = v20 + v38 - 1;
  v136.i64[1] = v20 + v38 - 2;
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v154);
  v154.i64[0] = v20 + v38 - 3;
  v154.i64[1] = v20 + v38 + v21 - 684;
  v159 = vaddq_s64(v157, v153);
  v160 = veorq_s8(vaddq_s64(v155, v151), *&STACK[0x330]);
  v161 = veorq_s8(vaddq_s64(v156, v152), *&STACK[0x330]);
  v162 = veorq_s8(v159, *&STACK[0x330]);
  v163 = vandq_s8(vshlq_n_s64(v39, 3uLL), a2);
  *&STACK[0x410] = vshlq_u64(veorq_s8(v158, *&STACK[0x330]), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), a2)));
  v164 = vshlq_u64(v162, vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), a2)));
  v165 = vshlq_u64(v161, vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), a2)));
  v166 = vshlq_u64(v160, vnegq_s64(v163));
  v167 = vandq_s8(v154, a1);
  v168 = vandq_s8(v136, a1);
  v169 = vandq_s8(v44, a1);
  v170 = vandq_s8(v43, a1);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), *&STACK[0x320]);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), *&STACK[0x320]);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), *&STACK[0x320]);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), *&STACK[0x320]);
  v175 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v172, v172), *&STACK[0x310]), v172), v34);
  v176 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173, v173), *&STACK[0x310]), v173), v34);
  v177 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v174, v174), *&STACK[0x310]), v174), v34);
  v178 = veorq_s8(v177, v35);
  v179 = veorq_s8(v176, v35);
  v180 = veorq_s8(v176, v36);
  v181 = veorq_s8(v177, v36);
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), a8);
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v181), a8);
  v184 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v185 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v186 = veorq_s8(v182, v184);
  v187 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v186);
  v189 = veorq_s8(vaddq_s64(v187, v185), v37);
  v190 = veorq_s8(v188, v37);
  v191 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v192 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v193 = veorq_s8(v189, v191);
  v194 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v193);
  v196 = vaddq_s64(v194, v192);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v195, v25), vorrq_s8(v195, v26)), v26), v27);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v196, v25), vorrq_s8(v196, v26)), v26), v27);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v200 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v200);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202, v202), v28), v202), v29), v30);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v201, v201), v28), v201), v29), v30);
  v205 = vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL);
  v206 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v207 = veorq_s8(v203, v205);
  v208 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v207);
  v210 = veorq_s8(vaddq_s64(v208, v206), v32);
  v211 = veorq_s8(v209, v32);
  v212 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v213 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v214 = veorq_s8(v210, v212);
  v215 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v214);
  v217 = veorq_s8(vaddq_s64(v215, v213), v31);
  v218 = veorq_s8(v216, v31);
  v219 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v220 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), veorq_s8(v217, v219));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v220);
  v223 = vdupq_n_s64(v24);
  v224 = vsubq_s64(v221, vandq_s8(vaddq_s64(v221, v221), v223));
  v225 = vdupq_n_s64(v15);
  v226 = vaddq_s64(vsubq_s64(v222, vandq_s8(vaddq_s64(v222, v222), v223)), v225);
  v227 = vdupq_n_s64(v16);
  v263.val[3] = veorq_s8(vshlq_u64(veorq_s8(v226, v227), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), a2))), v166);
  v263.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v224, v225), v227), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), a2))), v165);
  v228 = veorq_s8(v175, v35);
  v229 = veorq_s8(v175, v36);
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), a8);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), v37);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v234 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233);
  v235 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v234, v25), vorrq_s8(v234, v26)), v26), v27);
  v236 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236);
  v238 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v237, v237), v28), v237), v29), v30);
  v239 = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v240 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v239), v32);
  v241 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241), v31);
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL)));
  v244 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v243, vandq_s8(vaddq_s64(v243, v243), v223)), v225), v227), vnegq_s64(vandq_s8(vshlq_n_s64(v136, 3uLL), a2)));
  v245 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v171, v171), *&STACK[0x310]), v171), v34);
  v263.val[0] = veorq_s8(v244, v164);
  v246 = veorq_s8(v245, v35);
  v247 = veorq_s8(v245, v36);
  v248 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247), a8);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v250 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249), v37);
  v251 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v251);
  v253 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v252, v25), vorrq_s8(v252, v26)), v26), v27);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v255 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254);
  v256 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v255, v255), v28), v255), v29), v30);
  v257 = veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v258 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v257), v32);
  v259 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v260 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), v259), v31);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL)));
  v263.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v261, vandq_s8(vaddq_s64(v261, v261), v223)), v225), v227), vnegq_s64(vandq_s8(vshlq_n_s64(v154, 3uLL), a2))), *&STACK[0x410]);
  *(v20 + v38 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v263, *&STACK[0x300])), STACK[0x420]);
  return (*(a15 + 8 * (((v19 == v38) * v23) ^ v18)))();
}

uint64_t sub_20378@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v9 = (v3 + 1176395806) & 0xB9E19FCD;
  v10 = (*(a2 + 1128) ^ v7) - ((v9 - 81) & v8 ^ v5 ^ *(v2 + 1148));
  v11 = v10 + v4 - (v6 & (2 * v10)) == v4;
  return (*(a1 + 8 * (((4 * v11) | (16 * v11)) ^ v9)))(4201744359);
}

uint64_t sub_20440(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int32x4_t a37, int32x4_t a38, int32x4_t a39, int32x4_t a40)
{
  v46 = vdupq_n_s32(0x2CB7FFD7u);
  v47 = (v45 - 220);
  v48 = vdupq_n_s32(0x2CB7FFD3u);
  v49.n128_u64[0] = 0xC6C6C6C6C6C6C6C6;
  v49.n128_u64[1] = 0xC6C6C6C6C6C6C6C6;
  v50.n128_u64[0] = 0x8C8C8C8C8C8C8C8CLL;
  v50.n128_u64[1] = 0x8C8C8C8C8C8C8C8CLL;
  v102 = *(v41 + 8 * (a5 + v40 - 642));
  v51 = *(v45 - 148);
  v52 = *(v45 - 144);
  v54 = *(v45 - 140);
  v53 = *(v45 - 136);
  v55 = (*(v45 - 124) - ((2 * *(v45 - 124)) & 0x1A) + 21);
  if (v55 == 23)
  {
    v103 = vld4q_s8(v47);
    v81 = veorq_s8(v103.val[0], v49);
    v82 = vmovl_high_u8(v81);
    v83 = vmovl_u8(*v81.i8);
    v84 = veorq_s8(v103.val[1], v49);
    _Q21 = vmovl_high_u8(v84);
    _Q20 = vmovl_u8(*v84.i8);
    v87 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v88 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v89 = veorq_s8(v103.val[2], v49);
    v90 = vmovl_u8(*v89.i8);
    v91 = vmovl_high_u8(v89);
    v103.val[0] = veorq_s8(v103.val[3], v49);
    v103.val[1] = vmovl_u8(*v103.val[0].i8);
    v103.val[2] = vmovl_u16(*v103.val[1].i8);
    v103.val[1] = vmovl_high_u16(v103.val[1]);
    v103.val[0] = vmovl_high_u8(v103.val[0]);
    v103.val[3] = vmovl_u16(*v103.val[0].i8);
    v103.val[0] = vmovl_high_u16(v103.val[0]);
    v92 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v91, 8uLL)), vshlq_n_s32(vmovl_high_u16(v82), 0x18uLL)), v103.val[0]);
    v93 = vorrq_s8(vorrq_s8(vorrq_s8(v88, vshll_n_u16(*v91.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v82.i8), 0x18uLL)), v103.val[3]);
    v94 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v90, 8uLL)), vshlq_n_s32(vmovl_high_u16(v83), 0x18uLL)), v103.val[1]);
    v95 = vorrq_s8(vorrq_s8(vorrq_s8(v87, vshll_n_u16(*v90.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v83.i8), 0x18uLL)), v103.val[2]);
    v103.val[0] = veorq_s8(vandq_s8(v92, v46), (*v103.val & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v103.val[3] = veorq_s8(vandq_s8(v93, v46), (*&v103.val[3] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v103.val[1] = veorq_s8(vandq_s8(v94, v46), (*&v103.val[1] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v103.val[2] = veorq_s8(vandq_s8(v95, v46), (*&v103.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    a37 = vaddq_s32(vsubq_s32(v95, vaddq_s32(v103.val[2], v103.val[2])), v48);
    a38 = vaddq_s32(vsubq_s32(v94, vaddq_s32(v103.val[1], v103.val[1])), v48);
    a39 = vaddq_s32(vsubq_s32(v93, vaddq_s32(v103.val[3], v103.val[3])), v48);
    a40 = vaddq_s32(vsubq_s32(v92, vaddq_s32(v103.val[0], v103.val[0])), v48);
    v96 = (a6 + a4 + 528);
    *(&a37 + v42 + 60346620) = v43 ^ __ROR4__(*(&a33 + v42 + 60346620) ^ *(&a30 + v42 + 60346620) ^ *(&a29 + v42 + 60346620) ^ *(&a37 + v42 + v96 + 60344615), 31);
    v97 = *(v41 + 8 * ((152 * (v44 == 60346557)) ^ (a6 + a4 + 1877)));
    return v97(60346621, v96, v51, v52, v97, a6, v52, 57, a9, a10, a11, a12, a13);
  }

  else if (v55 == 20)
  {
    v104 = vld4q_s8(v47);
    v56 = veorq_s8(v104.val[0], v49);
    v57 = vmovl_high_u8(v56);
    v58 = vmovl_high_u16(v57);
    v59 = vmovl_u16(*v57.i8);
    v60 = vmovl_u8(*v56.i8);
    v61 = vmovl_high_u16(v60);
    v62 = vmovl_u16(*v60.i8);
    v63 = veorq_s8(v104.val[1], v49);
    v64 = vmovl_u8(*v63.i8);
    v65 = vmovl_high_u8(v63);
    v66 = veorq_s8(v104.val[2], v49);
    _Q25 = vmovl_u8(*v66.i8);
    _Q24 = vmovl_high_u8(v66);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v104.val[0] = veorq_s8(v104.val[3], v49);
    v104.val[1] = vmovl_u8(*v104.val[0].i8);
    v104.val[2] = vmovl_u16(*v104.val[1].i8);
    v104.val[0] = vmovl_high_u8(v104.val[0]);
    v104.val[3] = vmovl_u16(*v104.val[0].i8);
    v104.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v104.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v65, 8uLL), v58));
    v104.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v104.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v65.i8, 8uLL), v59));
    v104.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v104.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v64, 8uLL), v61));
    v104.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v104.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v64.i8, 8uLL), v62));
    v75 = vdupq_n_s32(0x2CB7FFDBu);
    v76 = veorq_s8(vandq_s8(v104.val[0], v75), (*&v58 & __PAIR128__(0xFFFFFF08FFFFFF08, 0xFFFFFF08FFFFFF08)));
    v77 = veorq_s8(vandq_s8(v104.val[3], v75), (*&v59 & __PAIR128__(0xFFFFFF08FFFFFF08, 0xFFFFFF08FFFFFF08)));
    v78 = veorq_s8(vandq_s8(v104.val[1], v75), (*&v61 & __PAIR128__(0xFFFFFF08FFFFFF08, 0xFFFFFF08FFFFFF08)));
    v79 = veorq_s8(vandq_s8(v104.val[2], v75), (*&v62 & __PAIR128__(0xFFFFFF08FFFFFF08, 0xFFFFFF08FFFFFF08)));
    a37 = vaddq_s32(vsubq_s32(v104.val[2], vaddq_s32(v79, v79)), v48);
    a38 = vaddq_s32(vsubq_s32(v104.val[1], vaddq_s32(v78, v78)), v48);
    a39 = vaddq_s32(vsubq_s32(v104.val[3], vaddq_s32(v77, v77)), v48);
    a40 = vaddq_s32(vsubq_s32(v104.val[0], vaddq_s32(v76, v76)), v48);
    return (*(v41 + 8 * (a5 + a4 - 433)))(v46);
  }

  else
  {
    v98 = (((v51 ^ 0x832C9DE3) + 2094227997) ^ ((v51 ^ 0xE6CF41C8) + 422624824) ^ ((v51 ^ 0x75D4704E) - 1976856654)) + (((v51 ^ 0xA07CDD95) + 1602429547) ^ ((v51 ^ 0x65BDC65E) - 1706935902) ^ ((v51 ^ 0xD5F6B7AE) + 705251410)) - 2102776495;
    v99 = (((v52 ^ 0xEE0A1585) + 301329019) ^ ((v52 ^ 0x13836E21) - 327380513) ^ ((v52 ^ 0xEDBED7C1) + 306260031)) + (((v52 ^ 0x4422AC72) - 1143123058) ^ ((v52 ^ 0xF2F9D572) + 218507918) ^ ((v52 ^ 0xA6ECD565) + 1494428315)) + 1367645072;
    *(v45 - 148) = v98 ^ ((v98 ^ 0x5D64AEDA) - 1063156317) ^ ((v98 ^ 0xB11D6FBB) + 752370884) ^ ((v98 ^ 0xE1BCEB09) + 2088353906) ^ ((v98 ^ 0x6FFFFEEF) - 231025256) ^ 0x720D78E2;
    *(v45 - 144) = v99 ^ ((v99 ^ 0xD5E1CE7E) + 453735240) ^ ((v99 ^ 0xC784DD52) + 158228588) ^ ((v99 ^ 0xFC8DAF15) + 845615661) ^ ((v99 ^ 0xDFFDFEFF) + 286737351) ^ 0x2122EEA3;
    v100 = (((v54 ^ 0x5E4186A) - 98834538) ^ ((v54 ^ 0x9F6889B) - 167151771) ^ ((v54 ^ 0x1C253C94) - 472202388)) + (((v54 ^ 0x161E91C8) - 371102152) ^ ((v54 ^ 0xADA5AC0A) + 1381651446) ^ ((v54 ^ 0xAB8C91A7) + 1416851033)) - 2118536833;
    v101 = (((v53 ^ 0xD84A6629) + 666212823) ^ ((v53 ^ 0x7EBEDA3E) - 2126436926) ^ ((v53 ^ 0xB6C31072) + 1228730254)) + (((*(v45 - 136) ^ 0xDAEF8413) + 621837293) ^ ((*(v45 - 136) ^ 0xBF7DA7AB) + 1082284117) ^ ((*(v45 - 136) ^ 0x75A58FDD) - 1973784541)) - 1737380682;
    *(v45 - 140) = v100 ^ ((v100 ^ 0xBB3AEB34) + 630148223) ^ ((v100 ^ 0xB9DAED91) + 661605084) ^ ((v100 ^ 0x9C15A3EF) + 44041382) ^ ((v100 ^ 0xFFBFFDFF) + 1628068534) ^ 0x717DF4D0;
    *(v45 - 136) = v101 ^ ((v101 ^ 0x4D2F3AAB) - 892168519) ^ ((v101 ^ 0x1DCC383F) - 1708026835) ^ ((v101 ^ 0x5F1EAE05) - 656211433) ^ ((v101 ^ 0x77FFFF7D) - 268283025) ^ 0x6835FF89;
    return v102(v47, 140, v46, v48, v49, v50);
  }
}

uint64_t sub_20FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1368] = v8;
  v9 = STACK[0xED8];
  STACK[0x1370] = STACK[0xED8];
  v10 = v8 - v9 > (((v7 ^ 0x143u) + 2635) ^ 0xB2FuLL);
  return (*(a7 + 8 * (((4 * v10) | (32 * v10)) ^ v7)))();
}

uint64_t sub_2102C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int *a10)
{
  v14 = 2 * (a1 ^ 0x466);
  *v10 = 1;
  v15 = *a10;
  v16 = 1327116359 * ((v12 - ((v13 - 152) | v12) + ((v13 - 152) | 0x44738791F5E9A0F3)) ^ 0xC094BE28130605A8);
  *(v13 - 128) = (v14 + 775020610) ^ v16;
  *(v13 - 108) = (v14 - 304005215) ^ v16;
  v17 = v13 - 152;
  *(v17 + 16) = v15 - v16;
  *(v13 - 148) = v16 ^ (v14 + 775020274) ^ 0x1C;
  *(v13 - 144) = v14 + 775020274 - v16;
  *(v13 - 152) = 1 - v16;
  *(v17 + 32) = v16 ^ 0x13FF;
  v18 = (*(v11 + 8 * (v14 + 1767)))(v13 - 152);
  return (*(v11 + 8 * *(v13 - 112)))(v18);
}

uint64_t sub_21040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (v8 - 2853);
  v10 = STACK[0x3D0];
  *v7 = v6 + 1;
  LODWORD(v9) = (v9 ^ 0x9D2C5681) & (((v5 >> 11) ^ v5) << 7) ^ (v5 >> 11) ^ v5 ^ ((-((~(v8 + 2265) + v6) ^ (v6 - v9 - 5119)) | (~(v8 + 2265) + v6)) > v9 - 2) ^ (((v9 ^ 0x9D2C5681) & (((v5 >> 11) ^ v5) << 7) ^ (v5 >> 11) ^ v5) << 15) & 0xEFC60000;
  return sub_24408(v10, a5, v9 ^ (v9 >> 18));
}

uint64_t sub_210EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7 ^ (v9 - 2611) ^ ((v8 ^ 0x20E) + 1552);
  v13 = (v10 - a1) > 0xF && v11 > 7;
  return (*(a7 + 8 * (((4 * v13) | (16 * v13)) ^ v8)))();
}

uint64_t sub_211D0@<X0>(uint64_t a1@<X6>, unint64_t a2@<X8>)
{
  v4 = v3 - 291;
  v5 = v3 - 3010;
  v6 = *STACK[0x498];
  LODWORD(STACK[0x5D4]) = v2;
  v7 = STACK[0xD90];
  STACK[0xD20] = &STACK[0x1520] + STACK[0xD90];
  STACK[0xD90] = v7 + 48;
  STACK[0x8F8] = a2;
  STACK[0xEC8] = 0;
  STACK[0x1040] = 0;
  STACK[0x7D0] = v6;
  if (v6)
  {
    v8 = a2 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(a1 + 8 * ((v9 * (v5 ^ 0xDB)) ^ (v4 - 1769))))();
}

uint64_t sub_21200@<X0>(uint64_t a1@<X8>)
{
  v12.val[1].i64[0] = (v4 + 13) & 0xF;
  v12.val[1].i64[1] = (v4 + 12) & 0xF;
  v12.val[2].i64[0] = (v4 + 11) & 0xF;
  v12.val[2].i64[1] = (v4 + 10) & 0xF;
  v12.val[3].i64[0] = (v4 + 9) & 0xF;
  v12.val[3].i64[1] = v6 & 0xF ^ 4;
  v13.val[0].i64[0] = (v4 + 7) & 0xF;
  v13.val[0].i64[1] = (v4 + 6) & 0xF;
  v13.val[1].i64[0] = (v4 + 5) & 0xF;
  v13.val[1].i64[1] = (v4 + 4) & 0xF;
  v13.val[2].i64[0] = (v4 + 3) & 0xF;
  v13.val[2].i64[1] = (v4 + 2) & 0xF;
  v13.val[3].i64[0] = (v4 + 1) & 0xF;
  v13.val[3].i64[1] = v4 & 0xF;
  v9 = vqtbl4q_s8(v13, xmmword_F8180).u64[0];
  v10.i64[0] = 0x4B4B4B4B4B4B4B4BLL;
  v10.i64[1] = 0x4B4B4B4B4B4B4B4BLL;
  v12.val[0].i64[0] = (v4 - 17) & 0xF;
  v12.val[0].i64[1] = (v4 + 14) & 0xF;
  v13.val[2].i64[0] = vqtbl4q_s8(v12, xmmword_F8180).u64[0];
  v13.val[2].i64[1] = v9;
  v13.val[0] = vrev64q_s8(vmulq_s8(v13.val[2], v10));
  *(v7 + v4 - 16) = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v3 + v12.val[0].i64[0] - 15), *(a1 + v4 - 16)), *(v1 + v12.val[0].i64[0] - 15)), *((v5 ^ 0x384) + v12.val[0].i64[0] + v2 - 2781)), vextq_s8(v13.val[0], v13.val[0], 8uLL));
  return (*(v8 + 8 * ((713 * ((v4 & 0x10) == 16)) ^ v5)))((v4 & 0x10) - 16);
}

uint64_t sub_2134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = STACK[0xEB8] + 32;
  STACK[0x3F0] = STACK[0xB18];
  return sub_21378(a1, a2, a3, a4, a5, v5);
}

uint64_t sub_21378()
{
  v3 = STACK[0x430];
  STACK[0x1198] = *(STACK[0x430] + 8 * v1);
  return (*(v3 + 8 * ((27 * (v0 - 17 < (((v2 + 243) | 0x204u) ^ 0xFFFFFFFFFFFFF4D6))) ^ v2)))();
}

uint64_t sub_21400(uint64_t a1, uint64_t a2, int a3)
{
  v10 = (a3 - 1829) | 0x711;
  v17.val[1].i64[0] = (v7 + 13) & 0xF;
  v17.val[1].i64[1] = (v7 + 12) & 0xF;
  v17.val[2].i64[0] = (v7 + 11) & 0xF;
  v17.val[2].i64[1] = (v7 + 10) & 0xF;
  v17.val[3].i64[0] = ((v10 ^ 8) + v7) & 0xF;
  v17.val[3].i64[1] = v8 & 0xF ^ 0xALL;
  v18.val[0].i64[0] = (v7 + 7) & 0xF;
  v18.val[0].i64[1] = (v7 + 6) & 0xF;
  v18.val[1].i64[0] = (v7 + 5) & 0xF;
  v18.val[1].i64[1] = (v7 + 4) & 0xF;
  v18.val[2].i64[0] = (v7 + 3) & 0xF;
  v18.val[2].i64[1] = (v7 + 2) & 0xF;
  v18.val[3].i64[0] = (v7 + 1) & 0xF;
  v11 = *(v9 - 144);
  v18.val[3].i64[1] = v7 & 0xF;
  v12.i64[0] = 0xF1F1F1F1F1F1F1F1;
  v12.i64[1] = 0xF1F1F1F1F1F1F1F1;
  v13.i64[0] = 0xF7F7F7F7F7F7F7F7;
  v13.i64[1] = 0xF7F7F7F7F7F7F7F7;
  v14 = ((v10 - 1292) | 2u) - 648 + v7;
  v17.val[0].i64[0] = v14 & 0xF;
  v17.val[0].i64[1] = (v7 + 14) & 0xF;
  v15.i64[0] = vqtbl4q_s8(v17, xmmword_F8180).u64[0];
  v15.i64[1] = vqtbl4q_s8(v18, xmmword_F8180).u64[0];
  v18.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v3 - 15 + v14), *(v5 + v17.val[0].i64[0] - 15)), veorq_s8(*(v17.val[0].i64[0] + v6 - 12), *(v4 + v17.val[0].i64[0] - 15))));
  v18.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v18.val[0], v18.val[0], 8uLL), v13), vmulq_s8(v15, v12)));
  *(*(v9 - 136) - 15 + v14) = vextq_s8(v18.val[0], v18.val[0], 8uLL);
  return (*(v11 + 8 * ((52 * ((v7 & 0x10) != 16)) ^ v10)))();
}

uint64_t sub_21888@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 - 572) | 0x301;
  v4 = (v3 ^ 0x6E0E5DC2) + LODWORD(STACK[0x498]);
  v5 = v4 < v2;
  if (v5 == v2 + 1 < v2)
  {
    v5 = v2 + 1 < v4;
  }

  return (*(a1 + 8 * ((224 * v5) ^ v3)))();
}

uint64_t sub_21B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v19 + ((((2 * (v21 - 128)) | 0x15D077E0) - (v21 - 128) + 1964491792) ^ 0x6C079EAB) * v18 - 114;
  *(v21 - 120) = &a17;
  *(v21 - 112) = a16;
  v22 = (*(v17 + 8 * (v19 ^ 0xD76)))(v21 - 128);
  return (*(v17 + 8 * ((((v20 + *(v21 - 104) - 1) > 0xE7ABC6DD) * (((v19 ^ 0x10B) + 732) ^ (2 * (v19 ^ 0x10B)))) ^ v19)))(v22);
}

uint64_t sub_21CC0@<X0>(unint64_t a1@<X4>, unint64_t a2@<X5>, unint64_t a3@<X6>, unint64_t a4@<X7>, int a5@<W8>)
{
  *&STACK[0x3D0] = vdupq_n_s64(0x4E179E9CD88A77F9uLL);
  *&STACK[0x3E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x340] = vdupq_n_s64(v12);
  *&STACK[0x350] = vdupq_n_s64(0x38uLL);
  *&STACK[0x320] = vdupq_n_s64(a4);
  *&STACK[0x330] = vdupq_n_s64(v17);
  *&STACK[0x3B0] = vdupq_n_s64(v14);
  *&STACK[0x3C0] = vdupq_n_s64(v11);
  *&STACK[0x250] = vdupq_n_s64(a2);
  *&STACK[0x260] = vdupq_n_s64(v7);
  *&STACK[0x300] = vdupq_n_s64(v16);
  *&STACK[0x310] = vdupq_n_s64(v13);
  *&STACK[0x2E0] = vdupq_n_s64(v10);
  *&STACK[0x2F0] = vdupq_n_s64(a1);
  *&STACK[0x390] = vdupq_n_s64(v6);
  *&STACK[0x3A0] = vdupq_n_s64(v15);
  *&STACK[0x380] = vdupq_n_s64(a3);
  *&STACK[0x2C0] = vdupq_n_s64(0x3D19862C756CC2CuLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xA04B38BC8AD9D4E5);
  *&STACK[0x2A0] = vdupq_n_s64(0x730030B77D2CF2D6uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xFE1733CE9C5499EALL);
  *&STACK[0x240] = vdupq_n_s64(v8);
  *&STACK[0x280] = vdupq_n_s64(0xB6A61D5A80DB7123);
  *&STACK[0x290] = vdupq_n_s64(0xDAE26C19A11F1E19);
  *&STACK[0x270] = xmmword_F8180;
  v19 = *&STACK[0x340];
  v20 = *&STACK[0x350];
  v21 = *&STACK[0x240];
  v22 = *&STACK[0x250];
  v23 = *&STACK[0x300];
  v25 = *&STACK[0x2C0];
  v24 = *&STACK[0x2D0];
  v27 = *&STACK[0x2A0];
  v26 = *&STACK[0x2B0];
  v28 = *&STACK[0x280];
  v29.i64[0] = v9 + v18 + (((a5 | 0x226) + 1357246539) & 0xAF1A0FB7) - 813;
  v29.i64[1] = v9 + v18 + 4;
  v30 = v29;
  *&STACK[0x360] = v29;
  v31.i64[0] = v9 + v18 + 9;
  v31.i64[1] = v9 + v18 + 8;
  v32.i64[0] = v9 + v18 + 7;
  v32.i64[1] = v9 + v18 + 6;
  v33.i64[0] = v9 + v18 + 3;
  v33.i64[1] = v9 + v18 + 2;
  v29.i64[0] = v9 + v18 + 1;
  v29.i64[1] = v9 + v18;
  *&STACK[0x420] = v29;
  v29.i64[0] = v9 + v18 - 1;
  v29.i64[1] = v9 + v18 - 2;
  *&STACK[0x410] = v29;
  v34 = vandq_s8(v33, *&STACK[0x3E0]);
  v35 = vandq_s8(v32, *&STACK[0x3E0]);
  v36 = vandq_s8(v31, *&STACK[0x3E0]);
  v37 = vandq_s8(v30, *&STACK[0x3E0]);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x3D0]);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), *&STACK[0x3D0]);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), *&STACK[0x3D0]);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0x3D0]);
  v42 = *&STACK[0x3C0];
  *&STACK[0x370] = vsubq_s64(vorrq_s8(vaddq_s64(v41, v41), *&STACK[0x3C0]), v41);
  v43 = vsubq_s64(vorrq_s8(vaddq_s64(v40, v40), v42), v40);
  v44 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v38, v38), v42), v38), v19);
  v45 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v39, v39), v42), v39), v19);
  v46 = veorq_s8(v45, *&STACK[0x330]);
  v47 = veorq_s8(v44, *&STACK[0x330]);
  v48 = *&STACK[0x330];
  v49 = veorq_s8(v44, *&STACK[0x320]);
  v50 = veorq_s8(v45, *&STACK[0x320]);
  v51 = *&STACK[0x320];
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v50);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v49);
  v54 = *&STACK[0x260];
  v55 = *&STACK[0x310];
  v56 = *&STACK[0x3A0];
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v52, *&STACK[0x310]), vorrq_s8(v52, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x3B0]);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v53, *&STACK[0x310]), vorrq_s8(v53, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x3B0]);
  v59 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v60 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v60);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v59);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, *&STACK[0x3A0]), vorrq_s8(v61, v22)), v22), v23);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v62, *&STACK[0x3A0]), vorrq_s8(v62, v22)), v22), v23);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v68 = *&STACK[0x2E0];
  v67 = *&STACK[0x2F0];
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v65), *&STACK[0x2F0]);
  v70 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66), *&STACK[0x2F0]);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), *&STACK[0x2E0]);
  v77 = veorq_s8(v75, *&STACK[0x2E0]);
  v78 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v79 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v79);
  v82 = vaddq_s64(v80, v78);
  v83 = *&STACK[0x380];
  v84 = *&STACK[0x390];
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v82, v82), *&STACK[0x390]), v82), *&STACK[0x380]), v24);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v81, v81), *&STACK[0x390]), v81), *&STACK[0x380]), v24);
  v87 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89);
  v92 = vaddq_s64(v90, v88);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v92, v92), v25), v92), v26), v27);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v91, v91), v25), v91), v26), v27);
  v95 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v96 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v89.i64[0] = v9 + v18 - 3;
  v89.i64[1] = v9 + v18 - 4;
  *&STACK[0x3F0] = v89;
  v98 = vaddq_s64(v43, v19);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), veorq_s8(v93, v95));
  v100 = vaddq_s64(v97, v96);
  v192.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, *&STACK[0x290]), vorrq_s8(v100, v21)), v21), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v20)));
  v192.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, *&STACK[0x290]), vorrq_s8(v99, v21)), v21), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v20)));
  v101 = v48;
  v102 = veorq_s8(v98, v48);
  v103 = v51;
  v104 = veorq_s8(v98, v51);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v104);
  v106 = v55;
  v107 = vaddq_s64(vsubq_s64(vorrq_s8(v105, v55), vorrq_s8(v105, v54)), v54);
  v108 = *&STACK[0x3B0];
  v109 = veorq_s8(v107, *&STACK[0x3B0]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v56), vorrq_s8(v111, v22)), v22), v23);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v67);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = v68;
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v68);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), v84), v119), v83), v24);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v25), v122), v26), v27);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v121.i64[0] = v9 + v18 - 5;
  v121.i64[1] = v9 + v18 - 6;
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = *&STACK[0x290];
  v127 = vsubq_s64(vorrq_s8(v125, *&STACK[0x290]), vorrq_s8(v125, v21));
  v128 = vandq_s8(v121, *&STACK[0x3E0]);
  v129 = vaddq_s64(*&STACK[0x370], v19);
  v192.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v127, v21), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v20)));
  v130 = veorq_s8(v129, v101);
  v131 = veorq_s8(v129, v103);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = v106;
  v134 = vaddq_s64(vsubq_s64(vorrq_s8(v132, v106), vorrq_s8(v132, v54)), v54);
  v135 = v54;
  v136 = veorq_s8(v134, *&STACK[0x3B0]);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v138, v56), vorrq_s8(v138, v22)), v22), v23);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), v67);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), v116);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v145, v145), v84), v145), v83), v24);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v148, v148), v25), v148), v26), v27);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = vandq_s8(*&STACK[0x3F0], *&STACK[0x3E0]);
  v153 = vaddq_s64(v151, v150);
  v154 = vandq_s8(*&STACK[0x410], *&STACK[0x3E0]);
  v192.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v153, *&STACK[0x290]), vorrq_s8(v153, v21)), v21), v28), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), v20)));
  v155 = vandq_s8(*&STACK[0x420], *&STACK[0x3E0]);
  v156 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v157 = *&STACK[0x3C0];
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), *&STACK[0x3D0]);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), *&STACK[0x3D0]);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), *&STACK[0x3D0]);
  v161 = vaddq_s64(v156, *&STACK[0x3D0]);
  *&STACK[0x370] = vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), *&STACK[0x3C0]), v161);
  v162 = vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), v157), v160);
  v163 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), v157), v158), v19);
  v164 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v159, v159), v157), v159), v19);
  v158.i64[0] = vqtbl4q_s8(v192, *&STACK[0x270]).u64[0];
  v192.val[0] = veorq_s8(v164, v101);
  v192.val[1] = veorq_s8(v163, v101);
  v192.val[2] = veorq_s8(v163, v103);
  v192.val[3] = veorq_s8(v164, v103);
  v192.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL), v192.val[3]);
  v192.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[1], 0x38uLL), v192.val[1], 8uLL), v192.val[2]);
  v165 = v135;
  v192.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[0], v133), vorrq_s8(v192.val[0], v135)), v135), v108);
  v192.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[1], v133), vorrq_s8(v192.val[1], v135)), v135), v108);
  v192.val[2] = veorq_s8(v192.val[1], vsraq_n_u64(vshlq_n_s64(v192.val[2], 3uLL), v192.val[2], 0x3DuLL));
  v192.val[3] = veorq_s8(v192.val[0], vsraq_n_u64(vshlq_n_s64(v192.val[3], 3uLL), v192.val[3], 0x3DuLL));
  v192.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL), v192.val[3]);
  v192.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[1], 0x38uLL), v192.val[1], 8uLL), v192.val[2]);
  v192.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[0], *&STACK[0x3A0]), vorrq_s8(v192.val[0], v22)), v22), v23);
  v192.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[1], *&STACK[0x3A0]), vorrq_s8(v192.val[1], v22)), v22), v23);
  v192.val[2] = veorq_s8(v192.val[1], vsraq_n_u64(vshlq_n_s64(v192.val[2], 3uLL), v192.val[2], 0x3DuLL));
  v192.val[3] = veorq_s8(v192.val[0], vsraq_n_u64(vshlq_n_s64(v192.val[3], 3uLL), v192.val[3], 0x3DuLL));
  v192.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[1], 0x38uLL), v192.val[1], 8uLL), v192.val[2]), v67);
  v192.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL), v192.val[3]), v67);
  v166 = vsraq_n_u64(vshlq_n_s64(v192.val[2], 3uLL), v192.val[2], 0x3DuLL);
  v192.val[2] = veorq_s8(v192.val[0], vsraq_n_u64(vshlq_n_s64(v192.val[3], 3uLL), v192.val[3], 0x3DuLL));
  v192.val[3] = veorq_s8(v192.val[1], v166);
  v167 = vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL);
  v192.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[1], 0x38uLL), v192.val[1], 8uLL), v192.val[3]);
  v192.val[1] = veorq_s8(vaddq_s64(v167, v192.val[2]), v116);
  v192.val[0] = veorq_s8(v192.val[0], v116);
  v168 = vsraq_n_u64(vshlq_n_s64(v192.val[2], 3uLL), v192.val[2], 0x3DuLL);
  v192.val[2] = veorq_s8(v192.val[0], vsraq_n_u64(vshlq_n_s64(v192.val[3], 3uLL), v192.val[3], 0x3DuLL));
  v192.val[3] = veorq_s8(v192.val[1], v168);
  v169 = vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL);
  v192.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[1], 0x38uLL), v192.val[1], 8uLL), v192.val[3]);
  v192.val[1] = vaddq_s64(v169, v192.val[2]);
  v192.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192.val[1], v192.val[1]), *&STACK[0x390]), v192.val[1]), *&STACK[0x380]), v24);
  v192.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192.val[0], v192.val[0]), *&STACK[0x390]), v192.val[0]), *&STACK[0x380]), v24);
  v170 = vsraq_n_u64(vshlq_n_s64(v192.val[2], 3uLL), v192.val[2], 0x3DuLL);
  v192.val[2] = veorq_s8(v192.val[0], vsraq_n_u64(vshlq_n_s64(v192.val[3], 3uLL), v192.val[3], 0x3DuLL));
  v192.val[3] = veorq_s8(v192.val[1], v170);
  v171 = vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL);
  v192.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[1], 0x38uLL), v192.val[1], 8uLL), v192.val[3]);
  v192.val[1] = vaddq_s64(v171, v192.val[2]);
  v192.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v192.val[1], v192.val[1]), v25), v192.val[1]), v26), v27);
  v192.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v192.val[0], v192.val[0]), v25), v192.val[0]), v26), v27);
  v172 = vsraq_n_u64(vshlq_n_s64(v192.val[2], 3uLL), v192.val[2], 0x3DuLL);
  v192.val[2] = veorq_s8(v192.val[0], vsraq_n_u64(vshlq_n_s64(v192.val[3], 3uLL), v192.val[3], 0x3DuLL));
  v192.val[3] = veorq_s8(v192.val[1], v172);
  v173 = vsraq_n_u64(vshlq_n_s64(v192.val[0], 0x38uLL), v192.val[0], 8uLL);
  v174 = vaddq_s64(v162, v19);
  v192.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[1], 0x38uLL), v192.val[1], 8uLL), v192.val[3]);
  v192.val[1] = vaddq_s64(v173, v192.val[2]);
  v192.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[1], v126), vorrq_s8(v192.val[1], v21)), v21), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v121, 3uLL), v20)));
  v192.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[0], v126), vorrq_s8(v192.val[0], v21)), v21), v28), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3F0], 3uLL), v20)));
  v192.val[3] = veorq_s8(v174, v101);
  v175 = veorq_s8(v174, v103);
  v192.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v175);
  v192.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[3], v133), vorrq_s8(v192.val[3], v165)), v165), v108);
  v176 = veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v192.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v176);
  v192.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[3], *&STACK[0x3A0]), vorrq_s8(v192.val[3], v22)), v22), v23);
  v177 = veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v192.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v177), v67);
  v178 = veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v192.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v178), v116);
  v179 = veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v192.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v179);
  v192.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192.val[3], v192.val[3]), *&STACK[0x390]), v192.val[3]), *&STACK[0x380]), v24);
  v180 = veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v192.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v180);
  v192.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v192.val[3], v192.val[3]), v25), v192.val[3]), v26), v27);
  v192.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL)));
  v181 = vaddq_s64(*&STACK[0x370], v19);
  v192.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[3], v126), vorrq_s8(v192.val[3], v21)), v21), v28), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x410], 3uLL), v20)));
  v192.val[3] = veorq_s8(v181, v101);
  v182 = veorq_s8(v181, v103);
  v192.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v182);
  v192.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[3], v133), vorrq_s8(v192.val[3], v165)), v165), v108);
  v183 = veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v192.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v183);
  v192.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[3], *&STACK[0x3A0]), vorrq_s8(v192.val[3], v22)), v22), v23);
  v184 = veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v192.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v184), v67);
  v185 = veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v192.val[3] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v185), v116);
  v186 = veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v192.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v186);
  v192.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192.val[3], v192.val[3]), *&STACK[0x390]), v192.val[3]), *&STACK[0x380]), v24);
  v187 = veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v192.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), v187);
  v192.val[3] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v192.val[3], v192.val[3]), v25), v192.val[3]), v26), v27);
  v192.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192.val[3], 0x38uLL), v192.val[3], 8uLL), veorq_s8(v192.val[3], vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL)));
  v188 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192.val[3], v126), vorrq_s8(v192.val[3], v21)), v21), v28), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x420], 3uLL), v20)));
  v158.i64[1] = vqtbl4q_s8(v192, *&STACK[0x270]).u64[0];
  v189 = vrev64q_s8(*(v5 - 16 + v18));
  v192.val[0].i64[0] = 0xF7F7F7F7F7F7F7F7;
  v192.val[0].i64[1] = 0xF7F7F7F7F7F7F7F7;
  v190 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v189, v189, 8uLL), v192.val[0]), v158));
  *(v9 + v18 - 6) = vextq_s8(v190, v190, 8uLL);
  return (*(STACK[0x430] + 8 * ((2060 * ((v18 & 0xFFFFFFF0) == 16)) ^ (a5 | 0x226))))();
}

uint64_t sub_22D64@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v6 = 89 * (v5 ^ 0x410);
  *(a2 + v2) = (*(v4 + v2) - ((2 * *(v4 + v2)) & 0xEF) + (v6 ^ 0xEC)) ^ *(v3 + v2);
  return (*(a1 + 8 * ((3643 * (v2 + 1 == ((v6 - 919) | 0x822u) - 2838)) ^ v6)))();
}

uint64_t sub_231F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (v7 ^ 0xB9) + (v8 & 0x72) + 79;
  *v9 = v11;
  return (*(a7 + 8 * ((431 * ((((((v10 - 108) & 0xD7) - 126) ^ 0xEC) + v11) < 3u)) ^ (v10 - 2312))))();
}

uint64_t sub_23260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 104) = veorq_s8(*(v8 + 88), xmmword_F81A0);
  v9 = *(v8 + 4);
  *(a1 + 20) = v9;
  return (*(a7 + 8 * ((2306 * (v9 == ((((v7 - 1747043472) & 0x6821C6FE) + 2018781335) & 0x87ABDFFF ^ (((v7 - 1747043472) & 0x6821C6FE) + 1530919801) & 0xA4C00B26 ^ 0x63B))) | (((v7 - 1747043472) & 0x6821C6FE) - 561))))();
}

uint64_t sub_2330C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v6 - 226;
  v9 = STACK[0xE18];
  v10 = 1327116359 * ((-517610303 - ((v7 - 240) | 0xE125E4C1) + ((v7 - 240) | 0x1EDA1B3E)) ^ 0xF835BE65);
  *(v7 - 232) = &STACK[0x46C];
  *(v7 - 224) = &STACK[0x1028];
  *(v7 - 216) = v9;
  *(v7 - 200) = &STACK[0xCB4];
  *(v7 - 192) = &STACK[0x73C];
  *(v7 - 208) = v5 + v10 + ((13 * ((v6 - 226) ^ 0x500)) ^ 0x10C39FDB);
  *(v7 - 240) = v10 + v6 - 226 + 2236;
  v11 = (*(a5 + 8 * ((v6 - 226) ^ 0xBEB)))(v7 - 240);
  return (*(STACK[0x430] + 8 * (((*(v7 - 204) == 1682696337) * (v8 + 2178)) ^ v8)))(v11, 0);
}

uint64_t sub_23474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 8 * (v7 + 2612)))();
  v14 = STACK[0x430];
  v15 = *(STACK[0x10E0] + 20);
  if (v15)
  {
    if (v15 == 1)
    {
      (*(v14 + 8 * (v8 + 844)))(STACK[0x7D8], 0, 32);
      return sub_4CF08();
    }

    else
    {
      return sub_5B194(v9, v10, v11, v12, 0x4E179E9CD88A77F9, v13, v14);
    }
  }

  else
  {
    v17 = STACK[0xC88];
    STACK[0x10A8] = *(v14 + 8 * (v8 - 2613));
    STACK[0x578] = &STACK[0x478];
    STACK[0xA88] = 0;
    LODWORD(STACK[0x10EC]) = 2002191922;
    LODWORD(STACK[0x10F8]) = -1340669477;
    return (*(v14 + 8 * (((v17 == 0) * ((((1601 * (v8 ^ 0xB24) + 1529917101) & 0xA4CF4FF6) - 2330) ^ ((1601 * (v8 ^ 0xB24) - 3196) | 0x201))) ^ (1601 * (v8 ^ 0xB24)))))();
  }
}

uint64_t sub_235E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x550];
  STACK[0x940] = STACK[0x550] + 0x250142C48605C729;
  *(v9 + 28) = v7;
  STACK[0xFF8] = *(a7 + 8 * (v8 - 2735));
  return sub_D42D0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_23668@<X0>(int a1@<W0>, int8x16_t *a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, int8x16_t *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, __n128 a8@<Q1>, uint64_t a9@<D4>)
{
  v15 = (a4 - 16) & 0xF;
  v17.i64[0] = vqtbl4q_s8(*(&a8 - 1), *&STACK[0x280]).u64[0];
  v17.i64[1] = a9;
  v18.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v18.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v19 = vrev64q_s8(vmulq_s8(v17, v18));
  *a5 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(*(v12 + v15 - 15), *a2), *(v15 + v13 - 10)), *(a3 + v15 + a7 - 2910)), vextq_s8(v19, v19, 8uLL));
  return (*(STACK[0x430] + 8 * (((a6 == 16) * v14) ^ a1)))();
}

uint64_t sub_236A4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v28 = *(v25 + 4 * (v26 - 1));
  *(v25 + 4 * v26) = ((1566083941 * (v28 ^ (v28 >> 30))) ^ *(v25 + 4 * v26)) - v26;
  v29 = 1327116359 * ((0x743E23A0E11A9EBCLL - ((v27 - 168) | 0x743E23A0E11A9EBCLL) + ((v27 - 168) | 0x8BC1DC5F1EE56143)) ^ 0xF26E5E6F80AC418);
  v30 = v27 - 176;
  *(v30 + 24) = v26 + 1 - v29;
  *(v27 - 124) = (a1 + 1727023247) ^ v29;
  *(v30 + 40) = v29 ^ 0x26F;
  v31 = v29 ^ (a1 - 1357466790);
  *(v27 - 164) = v31 ^ 0xD8;
  *(v27 - 160) = a1 - 1357466790 - v29;
  *(v27 - 144) = v31 ^ 0x17A;
  *(v27 - 168) = 1 - v29;
  v32 = (*(v23 + 8 * (a1 ^ v24)))(v27 - 168);
  return (*(a23 + 8 * *(v27 - 128)))(v32);
}

uint64_t sub_2389C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v2 = a2 + 888;
  (*(a1 + 8 * (a2 ^ 0xDDE)))();
  v3 = STACK[0x430];
  STACK[0x608] = 0;
  return (*(v3 + 8 * ((((v2 + 1529764109) & 0xA4D1A6FF ^ (v2 + 2104792274) & 0x828B6F7F ^ 0xDF2) * (STACK[0x760] == 0)) ^ v2)))();
}

uint64_t sub_239B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((4 * v2) ^ 0xFFFFFFFFFFFFEFD3) + v3;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((21 * (v5 != 0)) ^ v2)))();
}

_DWORD *sub_239E8()
{
  v6 = 772352333 * ((((v5 - 144) | 0xAC83E20B) + (~(v5 - 144) | 0x537C1DF4)) ^ 0x48C1EAB1);
  *(v5 - 136) = v4;
  *(v5 - 128) = v6 + v3 - 1057;
  *(v5 - 120) = v2;
  *(v5 - 144) = ((((v3 - 804) | 0x10) ^ 0xDC0CF572) + v0) ^ v6;
  (*(v1 + 8 * (v3 + 1740)))(v5 - 144);
  result = v10;
  *v9 = v8;
  *v10 = 1682696337;
  return result;
}

uint64_t sub_23AB8()
{
  v9.val[0].i64[0] = (v3 - v5 - 1) & 0xF;
  v9.val[0].i64[1] = (v3 - v5 + 14) & 0xF;
  v9.val[1].i64[0] = (v3 - v5 + (v4 ^ 6)) & 0xF;
  v9.val[1].i64[1] = (v3 - v5 + 12) & 0xF;
  v9.val[2].i64[0] = (v3 - v5 + 11) & 0xF;
  v9.val[2].i64[1] = (v3 - v5 + 10) & 0xF;
  v9.val[3].i64[0] = (v3 - v5 + 9) & 0xF;
  v9.val[3].i64[1] = (v3 - v5) & 0xF ^ 8;
  *(v3 + v6 - 8 - v5) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v3 + v6 - 8 - v5), *(v2 + v9.val[0].i64[0] - 7)), veor_s8(*(v9.val[0].i64[0] + v1 - 6), *(v0 + v9.val[0].i64[0] - 7)))), 0xF7F7F7F7F7F7F7F7), vmul_s8(*&vqtbl4q_s8(v9, xmmword_F8190), 0xB9B9B9B9B9B9B9B9)));
  return (*(v7 + 8 * ((3078 * (8 - (v3 & 0x18) == -v5)) ^ (v4 - 1474))))(xmmword_F8190);
}

uint64_t sub_23C2C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  STACK[0xAE8] = v2;
  v3 = *v2;
  STACK[0x868] = *v2;
  return (*(a1 + 8 * (((v3 == 0) * (((a2 + 457912326) & 0xE4B4C522) + 1751)) ^ a2)))();
}

void sub_23CA4(uint64_t a1@<X8>)
{
  v3 = (((v1 ^ 0x9F7B7C04) + 1619297276) ^ ((v1 ^ 0x713D60FF) - 1899847935) ^ ((v1 ^ v2 ^ 0xFB6 ^ 0x5E511606) - 1582374176)) + 794578048;
  *(a1 + 112) = STACK[0xE4C];
  *(a1 + 116) = v3 ^ ((v3 ^ 0x268FB783) - 1506475303) ^ ((v3 ^ 0x762DD961) - 157848517) ^ ((v3 ^ 0xD108BBA9) + 1370623731) ^ ((v3 ^ 0xFEEF9FEF) + 2119510709) ^ 0xCF524B7F;
  JUMPOUT(0x942BCLL);
}

uint64_t sub_23D94()
{
  v1 = STACK[0x570];
  LOBYTE(STACK[0x8F8]) = 101;
  *(&STACK[0x6D0] + (((v0 ^ 0x3F7) - 1880) ^ 0x1B8C9u) % 0x3C8) = 100;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_23E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1460] = v8;
  v9 = STACK[0x568];
  STACK[0x1468] = STACK[0x568];
  return (*(a7 + 8 * (((v8 - v9 > ((v7 - 713) ^ 0x7E8u) - 190) * (v7 + 516)) ^ (v7 - 713))))();
}

void sub_23F14()
{
  v3 = (-((v0 & 1) == 0) ^ (v1 >> 1)) + ((v0 & 1) == 0);
  *(STACK[0x550] + 4 * STACK[0xCD8] + 1332) = v3 + 874676467 - ((((v2 - 2706) | 0x268) ^ 0x6845031A) & (2 * v3));
  JUMPOUT(0xD42CCLL);
}

uint64_t sub_240B4()
{
  v3 = *v1;
  *(v2 + 4 * v3) *= *(v2 + 4 * v3);
  *v1 = (v3 + 1) % (v0 - 841);
  return sub_B0B28();
}

uint64_t sub_2423C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x14E0] = v2 ^ 0xB01701DB;
  *(a1 + 16) = ((v1 - 385) | 0x924) - 1340669477 + (((v2 ^ 0xDE5369B6) + 564958794) ^ ((v2 ^ 0x178BD06A) - 395038826) ^ ((v1 ^ 0x8630447A) + (v2 ^ 0x79CFB807))) - 2844;
  v4 = STACK[0x430];
  v5 = (*(STACK[0x430] + 8 * (v1 + 2821)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((23 * (v5 != 0)) ^ v1)))();
}

uint64_t sub_24360(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 8 * (v5 ^ 0x5A4)))();
  v8 = STACK[0x430];
  *(STACK[0x1270] + 160) = -2127042687;
  STACK[0xD90] = (v5 - 2149) + STACK[0xD90] - 2433;
  return (*(v8 + 8 * ((a2 == v5 - 1682659416) | (4 * (a2 == v5 - 1682659416)) | (v5 - 806))))(v7);
}

uint64_t sub_2445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = (a1 + v5);
  v16 = veorq_s8(*v15, veorq_s8(*v7, v14));
  v17 = veorq_s8(v15[1], veorq_s8(v7[1], v14));
  return (*(a5 + 8 * ((((v9 & 0xFFFFFFE0) == 32) * (((v8 - 527) | 0x328) - 1822)) | v8)))(vorrq_s8(vqtbl1q_s8(v16, v10), v6), vorrq_s8(vqtbl1q_s8(v16, v11), 0), vorrq_s8(vqtbl1q_s8(v16, v12), 0), vorrq_s8(vqtbl1q_s8(v16, v13), 0), vorrq_s8(vqtbl1q_s8(v17, v10), 0), vorrq_s8(vqtbl1q_s8(v17, v12), 0), vorrq_s8(vqtbl1q_s8(v17, v11), 0), vorrq_s8(vqtbl1q_s8(v17, v13), 0));
}

uint64_t sub_24540@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = STACK[0x408] - 460;
  v21 = (a1 ^ v19) + a19;
  STACK[0x1110] = v21;
  return (*(STACK[0x430] + 8 * (v20 ^ (59 * (v21 <= a13)))))();
}

uint64_t sub_245E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x814];
  v10 = STACK[0xF04];
  v11 = 2015586863 * ((((2 * ((v8 - 240) ^ 0x3C405D2A)) | 0x6ED6DE18) - ((v8 - 240) ^ 0x3C405D2A) + 1217695988) ^ 0xA8BC5FF);
  *(v8 - 228) = v7 + 1840255002 + v11 + 790;
  *(v8 - 240) = (v9 ^ 0xA876609 ^ ((v9 ^ 0xA2306BDB) + 911861708) ^ ((v9 ^ 0xFABAAEE0) + 1859330801) ^ ((v9 ^ 0xBFFF7EFF) + 731312880) ^ (((v7 + 1798) | 0x80) + (v7 ^ 0x21 ^ v9 ^ 0x8CE3CA09) + 411712179)) + v11;
  *(v8 - 236) = (1148007339 * v10 + 1442987869) ^ v11;
  v12 = (*(a7 + 8 * (v7 ^ 0xC93)))(v8 - 240);
  return (*(STACK[0x430] + 8 * (((*(v8 - 232) != 557439815) | (32 * (*(v8 - 232) != 557439815))) ^ v7)))(v12);
}

uint64_t sub_24778@<X0>(char a1@<W0>, char a2@<W3>, int a3@<W8>)
{
  v8 = (v4 - 2);
  v9 = v3 + 2;
  *v8 = (v9 ^ v6) * (v9 + 17);
  *(v8 - 1) = (a1 + v9 + (a3 ^ (a2 - 99)) + 17) * (v9 ^ 0xBB);
  return (*(v7 + 8 * ((2044 * (v5 != 2)) ^ a3)))();
}

uint64_t sub_247E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v20 = v7 - 1;
  v21 = __ROR8__((v6 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = (v21 - 0x22355D33A04CA130) ^ 0x903ED0D0775E6A64;
  v23 = (__ROR8__((v21 - 0x22355D33A04CA130) ^ 0x7E6BC6B28AC49CE2, 8) + v22) ^ 0x698E307F1C800D9CLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xB558837DE3CADE64;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v10 - ((v27 + v26) | v10) + ((v27 + v26) | ((v14 - 1428) | 0x806u) ^ 0xFDEFEB49D36D77C0)) ^ 0x6A7A5CD8A5E926D7;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((v30 + v29) & v8 ^ 0x982006A040912050) + ((v30 + v29) ^ 0x654ED11B9D6ACF2FLL) - (((v30 + v29) ^ 0x654ED11B9D6ACF2FLL) & v8)) ^ a3;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a2;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v32, 61);
  v36 = __ROR8__((a6 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = (v34 + v35) ^ a5;
  v38 = (v36 + 0x4E179E9CD88A77F9) ^ 0x20F0084EEB0498C4;
  v39 = __ROR8__((v36 + 0x4E179E9CD88A77F9) ^ 0x504CFCA82F57270ELL, 8) + v38;
  v40 = (v9 - (v39 | v9) + (v39 | v18)) ^ v19;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__(v37, 8) + (v37 ^ __ROR8__(v35, 61));
  v44 = (v42 + v41 - (v17 & (2 * (v42 + v41))) + v16) ^ v11;
  v45 = v44 ^ __ROR8__(v41, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xAFC44C9EE43CCADALL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = ((v12 | (2 * (v48 + v47))) - (v48 + v47) + v13) ^ a1;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xD0E02262DF67D69;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x72E8FC861E8794C0;
  *(a6 + v20) = (((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v52, 61))) ^ 0x6C44714321C46F3AuLL) >> (8 * ((a6 + v20) & 7))) ^ ((v43 ^ v15) >> (8 * ((v6 + v20) & 7))) ^ *(v6 + v20);
  return (*(a4 + 8 * ((110 * (v20 != 0)) ^ v14)))();
}

uint64_t sub_24A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(a7 + 8 * (v7 ^ 0x5A4)))();
  v11 = STACK[0x430];
  STACK[0xD90] -= 32;
  return (*(v11 + 8 * (((v7 ^ 0x36E) * (v8 == v9)) ^ (v7 - 2378))))(v10);
}

uint64_t sub_24BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = v17 + 772352333 * ((~((v19 - 136) | 0xA6FB9CA0) + ((v19 - 136) & 0xA6FB9CA0)) ^ 0xBD466BE4) + 2288;
  *(v19 - 136) = &a15;
  *(v19 - 128) = v15;
  v20 = (*(v16 + 8 * (v17 + 2319)))(v19 - 136);
  return (*(v16 + 8 * (((v18 != 1) * (1069 * (v17 ^ 0x53F) - 2013)) ^ v17)))(v20);
}

void sub_24CD0(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_103F00 + ((-55 * ((qword_10AB48 - dword_10AAB8) ^ 0x3F)) ^ byte_F0BE0[byte_E9AD0[(-55 * ((qword_10AB48 - dword_10AAB8) ^ 0x3F))] ^ 0x15]) + 139);
  v4 = *(v3 - 4);
  v5 = *(&off_103F00 + (byte_F7F34[(byte_F0CE4[(-55 * ((qword_10AB48 - v4) ^ 0x3F)) - 4] ^ 0x20) - 4] ^ (-55 * ((qword_10AB48 - v4) ^ 0x3F))) + 78);
  v6 = (*(v5 - 4) ^ v4) - &v8;
  *(v3 - 4) = (2091414217 * v6) ^ 0x61622C39E7EDC73FLL;
  *(v5 - 4) = 2091414217 * (v6 ^ 0x61622C39E7EDC73FLL);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 1579770187 * (((v10 | 0xFF307655) - v10 + (v10 & 0xCF89A8)) ^ 0x8AEEF52B);
  v11 = v9;
  v10[0] = v6 - 1127120184;
  v10[1] = v6 ^ 0x2F0DA851;
  LODWORD(v5) = 2091414217 * ((*(v5 - 4) - *(v3 - 4)) ^ 0xE7EDC73F);
  v7 = *(&off_103F00 + ((-55 * ((qword_10AB48 - dword_10AAB8) ^ 0x3F)) ^ byte_F7F30[byte_F0CE0[(-55 * ((qword_10AB48 - dword_10AAB8) ^ 0x3F))] ^ 0x20]) + 90) - 4;
  (*&v7[8 * (byte_F0AE8[(byte_E99D0[v5] ^ 0xEA) - 8] ^ v5) + 29200])(v10);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_25008@<X0>(uint64_t a1@<X8>)
{
  v7 = v1;
  v8 = v3;
  v5 = v2 - 1556812919 * ((((&v5 | 0xAF016526) ^ 0xFFFFFFFE) - (~&v5 | 0x50FE9AD9)) ^ 0xA7DF6BA) + 1061;
  v6 = v3;
  return (*(a1 + 8 * (v2 + 2418)))(&v5);
}

uint64_t sub_25110()
{
  v5 = *v3;
  v6 = v1 + 475723357 * ((&v5 + 1927194126 - 2 * (&v5 & 0x72DEA60E)) ^ 0x6862801F) - 1834145303;
  result = (*(v2 + 8 * (v1 + 437)))(&v5);
  *v0 = -1682657015;
  return result;
}

void sub_25180()
{
  v3 = 0x56C74677F96DDEDBLL * (*(v0 + 16) ^ v2) + 0x520F73266EA1B27;
  v4 = (v3 ^ 0x3248ADB369378A16) & (2 * (v3 & 0xBB52B0036D27D227)) ^ v3 & 0xBB52B0036D27D227;
  v5 = ((2 * (v3 ^ 0x76ECCDB569358E50)) ^ 0x9B7CFB6C0824B8EELL) & (v3 ^ 0x76ECCDB569358E50) ^ (2 * (v3 ^ 0x76ECCDB569358E50)) & 0xCDBE7DB604125C76;
  v6 = v5 ^ 0x4482049204124411;
  v7 = (v5 ^ 0x891C400400001824) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x36F9F6D8104971DCLL) & v6 ^ (4 * v6) & 0xCDBE7DB604125C74;
  v9 = (v8 ^ 0x4B8749000005050) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0xC906092604120C23)) ^ 0xDBE7DB604125C770) & (v8 ^ 0xC906092604120C23) ^ (16 * (v8 ^ 0xC906092604120C23)) & 0xCDBE7DB604125C70;
  v11 = (v10 ^ 0xC9A6592000004400) & (v9 << 8) ^ v9;
  v12 = (((v10 ^ 0x418249604121807) << 8) ^ 0xBE7DB604125C7700) & (v10 ^ 0x418249604121807) ^ ((v10 ^ 0x418249604121807) << 8) & 0xCDBE7DB604125C00;
  v13 = v11 ^ 0xCDBE7DB604125C77 ^ (v12 ^ 0x8C3C340400100000) & (v11 << 16);
  v14 = v3 ^ (2 * ((v13 << 32) & 0x4DBE7DB600000000 ^ v13 ^ ((v13 << 32) ^ 0x4125C7700000000) & (((v12 ^ 0x418249B204020877) << 16) & 0x4DBE7DB600000000 ^ 0x879A400000000 ^ (((v12 ^ 0x418249B204020877) << 16) ^ 0x7DB6041200000000) & (v12 ^ 0x418249B204020877))));
  *v15 = (HIBYTE(v14) ^ 0x28) - ((2 * (HIBYTE(v14) ^ 0x28)) & 0xEF) - 9;
  v15[1] = (BYTE6(v14) ^ 0xA) + (~(2 * (BYTE6(v14) ^ 0xA)) | 0x11) - 8;
  v15[2] = (BYTE5(v14) ^ 0xF3) + ((2 * BYTE5(v14)) & 0xEF ^ 0x19) - 8;
  v15[3] = (BYTE4(v14) ^ 3) - ((2 * (BYTE4(v14) ^ 3)) & 0xEF) - 9;
  v15[4] = (BYTE3(v14) ^ 0x65) - ((2 * (BYTE3(v14) ^ 0x65)) & 0xEF) - 9;
  v15[5] = (BYTE2(v14) ^ 3) - ((2 * (BYTE2(v14) ^ 3)) & 0xEF) - 9;
  v15[6] = (BYTE1(v14) ^ 0x6A) - ((2 * (BYTE1(v14) ^ 0x6A)) & 0xEF) - 9;
  v15[7] = v14 ^ 0x3E;
  *(v0 + 8) = *(v1 + 24);
}

uint64_t sub_25538(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (v6 <= 69461984)
  {
    if (v6 > -961707362)
    {
      if (v6 == -961707361)
      {
        STACK[0x3F0] = v7;
      }
    }

    else if (v6 == -2049640011)
    {
      STACK[0x410] = v7;
    }

    goto LABEL_18;
  }

  if (v6 > 1157394634)
  {
    if (v6 == 1157394635)
    {
      return sub_254DC(a1);
    }

    if (v6 == 1729742612)
    {
      STACK[0x3E0] = v7;
    }

LABEL_18:
    JUMPOUT(0x254F0);
  }

  if (v6 == 641809962)
  {
    STACK[0x420] = v7;
    goto LABEL_18;
  }

  if (v6 != 69461985)
  {
    goto LABEL_18;
  }

  STACK[0x360] = a4;
  STACK[0x708] = a4;
  STACK[0x370] = a2;
  STACK[0x548] = a2;
  STACK[0xF48] = a6;
  STACK[0xDE8] = STACK[0x410];
  STACK[0x10A0] = STACK[0x420];
  STACK[0x898] = STACK[0x3F0];
  v10 = STACK[0x3E0];
  STACK[0x6E0] = STACK[0x3E0];
  return (*(a5 + 8 * (((v10 != 0) * (LODWORD(STACK[0x350]) - 3103)) ^ (v8 - 168))))(a1);
}

uint64_t sub_25710(uint64_t a1)
{
  v7 = *(v3 + 8 * (v6 ^ 0x42B));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 ^ 0x41B)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 8) = v5;
  return result;
}

uint64_t sub_257E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v7 + 1336 * v5;
  STACK[0x12D0] = v9 + 168;
  STACK[0x12D8] = v9 + 212;
  if ((v6 - 1805022195) < 2)
  {
    return sub_A1810();
  }

  if (v6 == 1805022194)
  {
    return sub_C31D8(a1, a2, &off_103F00, a4, a5);
  }

  return sub_A1488(v8);
}

uint64_t sub_258A4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W4>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x3D4]) = a6;
  LODWORD(STACK[0x3DC]) = v10;
  LODWORD(STACK[0x3E0]) = a3;
  LODWORD(STACK[0x404]) = a2;
  v12 = (a1 - 1206) | 0xA08;
  LODWORD(STACK[0x560]) = a1 ^ 0x257;
  v13 = a1 ^ 0x537F5D5F ^ v9;
  v14 = a4 - v13;
  LODWORD(STACK[0x580]) = v12;
  v15 = v13 + (v12 ^ (v11 - 1562)) + v6;
  v16 = a5 ^ (v6 + v11);
  v17 = LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x57C]);
  v18 = LODWORD(STACK[0x588]) ^ 0x537F5597;
  v19 = ((v13 + 437885504) ^ (98985407 - v13)) & 0x16B66BFA;
  v20 = 1783665567 - ((v12 ^ (v11 - 1562)) + v6) + v16;
  v21 = LODWORD(STACK[0x55C]) + v18;
  v22 = LODWORD(STACK[0x56C]) - v18;
  v23 = v15 ^ v14;
  v24 = v14 - v19;
  v25 = v21 ^ v22;
  v26 = v20 + v23;
  v27 = v17 - LODWORD(STACK[0x55C]);
  v28 = (v27 + 1783665567) ^ (v17 + 1534760760);
  v29 = v27 + 1783665567 + v25;
  v30 = v24 + 2 * v26;
  v31 = v20 ^ (v16 + 1534760760);
  v27 -= 280992230;
  v20 -= 2064657797;
  v32 = v31 - v20;
  v33 = v22 + 2 * v29 - 381053946;
  v34 = v30 ^ v32;
  v35 = v26 ^ 0xBC52986 ^ v30;
  v36 = v28 - v27;
  v32 ^= 0x4A510D37u;
  v37 = v33 ^ v36;
  v38 = v32 ^ v20;
  v39 = v35 + v32;
  v36 ^= 0x4A510D37u;
  v40 = v36 ^ v27;
  v41 = v29 ^ 0xBC52986 ^ v33;
  v42 = v35 - v38;
  v43 = (v34 + v35) ^ v35;
  v44 = v41 + v36;
  v45 = (v41 + v37) ^ v41;
  v46 = v45 - v44;
  v47 = v43 - v39;
  v48 = (v43 - v39) ^ (v42 + v39);
  v49 = v43 - v39 + (v39 ^ 0x6CC15FDC);
  v50 = v45 - v44 + (v44 ^ 0x6CC15FDC);
  v51 = v49 ^ v48;
  v52 = v39 + v38 - v43 - v49 + (v49 ^ v48);
  v53 = v45 + v41 - v40 - 2 * ((v45 - v44) & (v41 - v40 + v44));
  v54 = v53 ^ v50;
  v55 = v52 + (v49 ^ v48 ^ 0xA4445879);
  v56 = v48 - v52 - v55;
  v57 = v40 + v44 - v45 - v50 + 29770222 + (v53 ^ v50);
  v58 = v53 - v57 + 718482395;
  v59 = (v53 ^ v50 ^ 0xA4445879) + v57 + 1729000222;
  v60 = v47 + v55 + 1154819894;
  v61 = v51 ^ 0x577A3A9B;
  v62 = v60 ^ v51 ^ 0x577A3A9B;
  v63 = v58 - v59;
  v64 = v46 + v59 - 603950550;
  v65 = (v58 - v59 + 1070058271) ^ v54;
  v66 = v60 ^ 0xA4ABCC05;
  v67 = v56 ^ v51 ^ 0x6E4D0E85;
  v68 = (v56 ^ v51 ^ 0x9F443F0) + v66;
  v69 = (-v67 ^ 0xB889212D ^ (v67 - 1198972627 - 2 * (v67 & 0x3889212F ^ (v56 ^ v51) & 2)) ^ ((v68 ^ v62) - (v68 ^ v62 ^ v67))) + (v68 ^ v62);
  v70 = (v68 ^ v62) + 980845616;
  v71 = (v65 ^ 0x9F443F0) + (v64 ^ 0xA4ABCC05);
  v72 = v68 - v67 - v69;
  v73 = v72 ^ v70;
  v74 = (v69 + 404920118 + v73) ^ (v72 + 760095948);
  v54 ^= 0x577A3A9Bu;
  v75 = v64 ^ v54;
  v76 = v55 - v61;
  v77 = v71 ^ v75;
  v65 ^= 0x6E4D0E85u;
  v78 = v71 - v65;
  v79 = v77 ^ v65;
  v80 = v78 - v79;
  v81 = v80 ^ (v77 + 980845616);
  v82 = v69 + 2 * v73;
  v83 = v76 - v56 - v62;
  v84 = v81 + v79;
  v85 = v81 - 50670389 + v81 + v79;
  v86 = v83 + v69 - v82 + 1426863312;
  v87 = (v84 + 404920118) ^ (v80 + 760095948);
  v88 = v82 - v72 - v86 - 410294877;
  v89 = v88 ^ (v72 - 994599848);
  v88 ^= 0x6ABE05EEu;
  v90 = v59 - v54 - v63 - v75 + v79 - v85 + 919264296;
  v91 = v85 - v80 - v90 + 2012275600;
  v92 = v91 ^ (v80 - 994599848);
  v93 = v86 - v89 - ((815362059 - v88) & 0x2BF45AAB) - ((v88 + 258379764) & 0x2BF45AAB) + 553720854;
  v94 = v93 + ((v89 + 272212597) ^ v88);
  v95 = v90 - v92 + 1739353779;
  v96 = v95 + ((v92 + 272212597) ^ v91 ^ 0x6ABE05EE);
  v97 = (-1626937136 - v72 + v74 + v88 - v94) ^ v94;
  v98 = (-1626937136 - v80 + v87 + (v91 ^ 0x6ABE05EE) - v96) ^ v96;
  v99 = (v91 ^ 0x6ABE05EE) - v98;
  v100 = v94 ^ 0x9DAFB209;
  v101 = v94 + (v93 ^ 0xBE08737B) + (v96 & 0x9A199A40) + (v96 & 0x9A199A40 ^ 0x9A199A40);
  v102 = v88 - v97;
  v103 = v88 - v97 - 1762729696;
  v104 = (v95 ^ 0xBE08737B) + v96;
  v105 = (v103 - v100) ^ v103;
  v106 = (v101 + v7) ^ v103;
  v107 = (v99 - 1762729696 - ((v96 - ((2 * v96) & 0x46FEC4FC) - 1551932802) ^ 0x3D5705F5 ^ ((v97 & 0x387D582 ^ 0x387D582) + (v97 & 0x387D582)))) ^ (v99 - 1762729696);
  v108 = v97 - 1709598144 - v103 - v105 - v101 + v106;
  v109 = (v99 - 1762729696) ^ v104;
  v110 = v98 - v104 - v99 + v109 - v107 + 1762729696;
  v111 = v99 - 116423394;
  v112 = (v102 - 116423394) ^ 0x6B7A4476 ^ v108;
  v113 = v108 - v112;
  v114 = v105 + 1286764868 - v106 - (v106 & v7) + (v106 | 0x9A199A3F) + 3248;
  v115 = v114 + v112;
  v116 = v106 ^ 0x2BE0196A;
  v117 = v107 - v109 - 422830029;
  v118 = v111 ^ 0x6B7A4476 ^ v110;
  v119 = v113 ^ 0x332ADF16;
  v120 = v110 - v118;
  v121 = v115 ^ 0x332ADF16;
  v122 = v114 ^ 0x7B6ADE34 ^ v115;
  v123 = (v118 ^ v117) + 2 * (v118 & v117);
  v124 = v123 ^ 0x332ADF16;
  v125 = v122 + (v113 ^ 0x332ADF16);
  v126 = v116 - v113 + v121 - v122 - v125;
  v127 = v117 ^ 0x7B6ADE34 ^ v123;
  v128 = v127 + (v120 ^ 0x332ADF16);
  v129 = (v109 ^ 0x2BE0196A) - v120 + v124 - v127;
  v130 = v126 + v119 - ((2 * (v126 + v119) - 926736872) & 0x9DBA632E) + 859750563;
  v131 = v130 ^ 0xF1E686D4;
  v132 = v126 + v121;
  v133 = v129 - v127 - 463368436;
  v134 = STACK[0x598];
  v134[882] = (v126 + 122) ^ 0x72;
  v135 = (v125 ^ 0xD885E877) - (v130 ^ 0xF1E686D4);
  v136 = (v129 - v128 + v124) ^ 0x4E94ACC0;
  v134[852] = v136;
  v137 = v129 - v128 - 1144161670;
  v134[817] = v130 ^ 0xA6;
  v138 = v136 - 1069779862;
  v133 ^= 0xBF3BB743;
  v139 = (v128 ^ 0xD885E877) - v133;
  v140 = v135 + 1004722999;
  v134[917] = v133;
  v141 = v131 + 927232327 + v140 - 2 * v140;
  v134[687] = v135 ^ 0x72;
  v134[787] = v139;
  v142 = v126 - 1144161670 - v131;
  v134[752] = v132 ^ 0xB2;
  v143 = (v132 ^ 0x454416B5 ^ ((v139 & 0xBD0BA75 ^ 0xBD0BA75) + (v139 & 0xBD0BA75))) - 1069779862;
  v144 = v137 - v133;
  v139 += 1004722999;
  v145 = (v135 + 1004722999) ^ v143;
  v146 = v133 - v139;
  v147 = v142 - 1709598144 + (((v142 & 0x67E767C0 ^ 0x67E767C0) + (v142 & 0x67E767C0)) & 0xEDEEE5C0);
  v148 = v147 ^ v141;
  v149 = v139 ^ v138;
  v150 = v140 ^ v142;
  v151 = v139 ^ v144;
  v134[622] = v147 ^ v141 ^ 0x72;
  v134[592] = v149;
  v134[527] = v151;
  v152 = (((635856319 - (v147 ^ v141)) | ((v147 ^ v141) + 437885504)) & 0x37447147) + v146;
  v153 = v152 ^ v144;
  v134[557] = v141 ^ 0x72;
  v134[657] = v152;
  v134[722] = v152 ^ v144;
  v154 = v150 - v147;
  v134[492] = v145 ^ 0x72;
  v155 = v148 ^ (v150 - v147);
  v156 = v151 - v144;
  v157 = v147 - (v150 - v147);
  v134[427] = v150 ^ 0x72;
  v158 = v149 + 1800478451;
  v159 = v155 + 1882775412;
  v160 = (v153 ^ v156) + 1882775412;
  v134[362] = (v155 + 116) ^ 0x72;
  v134[462] = v160;
  v158 ^= 0x18CB65B7u;
  v134[297] = v157 ^ 0x72;
  v161 = v144 - v156;
  v156 -= 178979420;
  v134[332] = v158;
  v134[397] = v161;
  v162 = v160 ^ v156;
  v163 = v159 ^ (v154 - 178979420);
  v134[232] = (12 - v145) & 0xC5 | (v145 - 13) & 0x3A;
  v164 = (v145 + 1800478451) ^ 0x18CB65B7;
  v165 = v154 - 178979420 - v164;
  v164 += 1425204746;
  v134[267] = v156;
  v166 = (v162 + 361657188) ^ (v156 - v158);
  v134[167] = (v154 - 92) ^ 0x72;
  v167 = (v163 + 361657188) ^ v165;
  v168 = v163 - 851918999;
  v134[202] = v162 + 100;
  v169 = v157 - v163 - v167;
  v170 = v158 + 1425204746;
  v134[954] = v164 ^ 0xC8;
  v171 = v161 - v162 - v166;
  v172 = v169 ^ 0x4823D3B1;
  v134[889] = v167 ^ 0x72;
  v134[102] = (v163 - ((2 * v163 - 56) & 0x8A) + 41) ^ 0xB7;
  v170 ^= 0x508C32BAu;
  LOBYTE(v100) = (v169 ^ 0xB1) + 2;
  v134[37] = v169 ^ 0x72;
  v134[72] = v170;
  v134[137] = v171;
  v173 = (v167 + 1697269104) ^ (v163 - 851918999);
  v174 = (v169 ^ 0x4823D3B1) + (v164 ^ 0x508C32BA ^ (v163 - 851918999));
  v175 = (v169 ^ 0x4823D3B1) + 1165067377;
  v162 -= 851918999;
  v176 = ((-1165067377 - (v169 ^ 0x4823D3B1)) ^ (v168 - (v175 ^ v168)) ^ 0xA2963A55 ^ ((v169 ^ 0x4823D3B1) - ((2 * v175) & 0x452C74AA) - 402145594)) + v168;
  v177 = (v169 ^ 0x4823D3B1) + 113;
  v134[7] = v166;
  v178 = v162 ^ v170;
  v179 = v171 ^ 0x4823D3B1;
  v180 = (v171 ^ 0x4823D3B1) + v178;
  v181 = (v166 + 1697269104) ^ v162;
  v134[694] = v174 ^ 0x72;
  v134[729] = v181;
  v182 = (v179 + 1165067377) ^ v162;
  HIDWORD(v183) = (v177 >> 3) ^ 1;
  LODWORD(v183) = (v177 << 29) ^ 0x20000000;
  v134[824] = v176 ^ 0x72;
  v134[759] = (v183 >> 29) ^ 0x7B;
  v134[629] = v173 ^ 0x72;
  v134[794] = v180;
  v134[924] = v182;
  v134[859] = v179 + 113;
  v173 ^= 0xBAA6CC9C;
  v184 = v172 - v173 + v176 - 1493472910 + ((((v180 & 0xB ^ 0x3782246F) & 0xA ^ 0xFC574F4F ^ ((v180 & 0xB ^ 0x3782246F) & 0x3402044E | 0xC8554B00)) - ((v100 & 0xB) + ((13 - v172) & 0xB))) ^ v11);
  v185 = v174 + 708048612 + v175;
  v186 = v180 + 708048612 + v179 + 1165067377;
  v134[564] = v184 ^ 0x72;
  v187 = (((982416270 - v179) | (v179 + 1165067377)) & 0x3F3535BD) + v179 + 1165067377;
  v188 = v181 ^ 0xBAA6CC9C;
  v189 = v179 + 1165067377 - (v181 ^ 0xBAA6CC9C) + v182;
  v190 = v185 ^ (v172 - 2069448146);
  v134[664] = v189;
  v189 -= 1418396314;
  v134[499] = (v172 + 46) ^ 0x72;
  v134[599] = v187;
  v191 = v187 ^ v186;
  v184 -= 1418396314;
  v192 = v185 - v184;
  v134[434] = v185 ^ 0x72;
  v134[369] = (v173 + 33) ^ 0x72;
  v134[534] = v186;
  v193 = v184 ^ v190;
  v134[469] = (v181 ^ 0x9C) + 33;
  v194 = v184 ^ v190 ^ (v173 - 823223133);
  v195 = v191 ^ v189;
  v196 = v194 + v192;
  v134[339] = v191 + 43;
  v134[239] = (v190 + 43) ^ 0x72;
  LOBYTE(v181) = v194 ^ 0x72;
  v134[404] = v191 ^ v189;
  v197 = v194 - v190 + 850589141;
  v198 = v197 + v196;
  v134[109] = v181;
  v134[304] = v193 ^ 0x72;
  v199 = v191 ^ v189 ^ (v188 - 823223133);
  v200 = v199 + v186 - v189;
  v134[174] = v196 ^ 0x72;
  v134[274] = v200;
  v134[209] = v199;
  v201 = v190 + 1201166481;
  v202 = v197 + v190 + 1201166481;
  v203 = v193 - v190 - 1201166481;
  v204 = v202 ^ v203;
  v205 = v199 - (v191 - 850589141);
  v191 += 1201166481;
  v206 = v200 + v205;
  v207 = v195 - v191;
  v208 = v198 ^ v202;
  v209 = v202 ^ v203 ^ v201;
  v134[961] = v209 ^ 0x72;
  v210 = v205 + v191;
  v134[931] = v210;
  v134[44] = v202 ^ v203 ^ 0x72;
  v211 = v210 ^ v206;
  v134[144] = v210 ^ v207;
  v212 = v203 ^ 0x7E41C93C ^ v198;
  v134[896] = v198 ^ v202 ^ 0x72;
  v213 = v210 ^ v207 ^ v191;
  v214 = v202 ^ 0x1D8DA259;
  v134[79] = v213;
  v215 = v213 + (v210 ^ v207);
  v210 ^= 0x1D8DA259u;
  v134[831] = v202 ^ 0x72;
  v134[766] = v212 ^ 0x72;
  v216 = (v209 + v204) ^ v212;
  v217 = v207 ^ 0x7E41C93C ^ v206;
  v134[14] = v211;
  v218 = (v208 ^ 0x51B1F7F6) - v216;
  v219 = v215 ^ v217;
  v220 = (v211 ^ 0x51B1F7F6) - v219;
  v134[866] = v217;
  v134[701] = v216 ^ 0x72;
  v134[801] = v219;
  v221 = v217 - v219;
  v134[736] = v220;
  v134[671] = v210 - 35;
  v222 = v220 - v219;
  v223 = v210 + 181622858;
  v224 = v218 - v216;
  v225 = v222 ^ v221;
  v226 = v212 - v216;
  v134[636] = v218 ^ 0x72;
  v134[571] = (v214 - 35) ^ 0x72;
  v227 = v214 + 181622858;
  v134[411] = v223;
  v134[506] = (v226 + 101) ^ 0x72;
  v221 -= 2135108763;
  v228 = v216 ^ 0x890CBDA5;
  v229 = v224 ^ v226;
  v230 = v228 - (v224 ^ v226);
  v231 = v219 ^ 0x890CBDA5;
  v134[606] = v221;
  v232 = v226 - 2135108763;
  v233 = v231 - v225;
  v134[541] = v233;
  v134[376] = v229 ^ 0x72;
  v134[476] = v225;
  v234 = (v229 + v226 - 2135108763) ^ (v214 + 181622858);
  v134[441] = v230 ^ 0x72;
  v235 = (v226 - 2135108763) ^ 0x28476243;
  v236 = 1965860789 - v214;
  LOBYTE(v214) = (v214 + 74) ^ 0x72;
  v134[311] = v214;
  v237 = v234 + v235 - 1568985549 * ((v227 ^ v236) & 0x7C913CC0);
  v238 = v233 - 1030086264;
  v239 = (v225 + v221) ^ v223;
  v240 = v239 + (v221 ^ 0x28476243);
  v134[246] = (v237 - 64) ^ 0x72;
  v241 = v234 + 1550925673;
  v134[216] = v223;
  v242 = ((v234 + v235) & 0x5C713F69) + v239 + ((v234 + v235) & 0x5C713F69 ^ 0x5C713F69);
  v134[346] = v240;
  v134[181] = (v230 - 120) ^ 0x72;
  v243 = v237 + v7;
  v134[281] = v238;
  v244 = (v230 - 1030086264) ^ v227;
  v245 = v238 ^ v223;
  v246 = v243 ^ 0x555027D1;
  v247 = v240 ^ 0x555027D1;
  v134[116] = v214;
  v134[51] = v241 ^ 0x72;
  v134[151] = v242;
  v248 = v246 + v244;
  v249 = v223 - v247;
  v250 = v247 + (v238 ^ v223);
  v251 = v242 + v249;
  LOBYTE(v227) = v227 - v246 + v241;
  v252 = v242 + v245;
  v134[968] = (v246 + v244) ^ 0x72;
  v253 = v241 + v244;
  LOBYTE(v244) = v227 + v246 + v244;
  v134[86] = v250;
  v134[873] = v242;
  v134[903] = v253 ^ 0x72;
  v134[838] = v227 ^ 0x72;
  v134[773] = v241 ^ 0x72;
  LOBYTE(v227) = v248 + v241;
  v254 = v248 + v241 + 1895896032;
  v134[21] = v252;
  v255 = (v235 & 0xCB026C02 | 0x24A41251) ^ (v232 & 0xCB266C03 ^ 0x187BE1AE | v235 & 0xCB266C03);
  LOBYTE(v235) = v248 - (v244 ^ v253);
  v134[938] = v251;
  v134[v255 - (((v254 | 0x34D99538) - (v254 & 0xCB266AC7)) & 0xB5FFD9FD)] = (v235 + 122) ^ 0x72;
  *v134 = v137;
  v256 = v242 + v250;
  v257 = v251 + v250;
  v258 = ((v251 + v250) ^ v252) - (((v253 & 0x87296C4A ^ 0x87296C4A) + (v253 & 0x87296C4A)) | 0xE31A900);
  LOBYTE(v251) = ((v244 ^ v253) - 74) ^ v244;
  v259 = v258 ^ v257;
  v134[743] = v258;
  LOBYTE(v244) = ((v244 ^ v253) - 74) ^ 0x72;
  LOBYTE(v253) = v235 + 88;
  v134[678] = v258 ^ v257;
  v134[808] = v250 - v258 + 48;
  v260 = v250 - v258 + 26352654;
  v134[643] = v244;
  v134[613] = v256 - 32;
  v261 = v250 + 26352654;
  v262 = v248 + 26352654;
  v134[578] = v251 ^ 0x72;
  LOBYTE(v248) = v251 - v253;
  v263 = v259 - v260;
  LOBYTE(v227) = v227 + 56;
  v134[513] = v254 ^ 0x72;
  LOBYTE(v254) = v260 ^ (v250 + 14);
  v264 = v256 - 1040628680;
  v134[548] = v254;
  LOBYTE(v256) = ((2 * (v253 ^ v262)) & 0x80) + (v253 ^ v262 ^ 0x40);
  v134[448] = (v256 - 64) ^ 0x72;
  v134[383] = v262 ^ 0xBD;
  v134[(((v262 ^ 0xB89FFBCF) + 1) ^ (254 - (v262 ^ 0xB89FFBCF))) & 0xFDLL] = (v251 - v253) ^ v227 ^ 0x72;
  LOBYTE(v254) = (v251 - v253) ^ v262;
  v134[318] = v254 ^ 0x72;
  LOBYTE(v227) = v262 ^ 0x46 ^ v227;
  v134[418] = (v259 - v260) ^ v261;
  v134[483] = v261 ^ 0xCF;
  v134[353] = (v259 - v260) ^ v264;
  v265 = (v259 - v260) ^ v261 ^ 0x38EFFCED;
  LOBYTE(v256) = (v256 - 2 * ((v256 + v7) & 0x4E ^ (v253 ^ v262) & 8) + 6) ^ v227;
  LOBYTE(v248) = v248 ^ 0xCF;
  v266 = v260 ^ v264;
  v267 = v261 ^ 0x8ACCDDC3 ^ v264 ^ (v265 - 1966285373 - ((2 * v265) & 0x1599BB86));
  LOBYTE(v227) = ((v254 ^ 0xED) + 70 - ((2 * (v254 ^ 0xED)) & 0x8C)) ^ v227;
  LOBYTE(v259) = (v254 ^ 0xED) - v256;
  v134[123] = (v248 + 117) ^ 0x72;
  v134[58] = v259 ^ 0x72;
  LOBYTE(v253) = v248 - 30 + v256;
  v134[188] = (v256 + 109) ^ 0x72;
  v268 = (v263 ^ 0xB89FFBCF) + 1463605109;
  v134[223] = v268;
  v134[158] = v265 - v266;
  v134[288] = v266 + 109;
  v134[93] = v267;
  v269 = v267 - (v265 - v266);
  v270 = v268 + v266 + 852701549;
  v134[975] = v227 ^ 0x72;
  v134[910] = (v259 - (((v248 + 117) ^ 0x32 ^ (v227 - v259)) - (((-119 - v248) & v11) + ((v248 + 118) & v11))) - 65) ^ v253 ^ 0x72;
  v134[845] = (((v248 + 117) ^ 0x32 ^ (v227 - v259)) - (((-119 - v248) & v11) + ((v248 + 118) & v11)) - 1) ^ 0x72;
  v271 = v268 ^ 0xF9422932 ^ v269;
  v272 = v265 - v266 - v271 - 2102390338;
  v134[880] = v272;
  v134[780] = (v259 - (((v248 + 117) ^ 0x32 ^ (v227 - v259)) - (((-119 - v248) & v11) + ((v248 + 118) & v11))) - 65) ^ 0x72;
  v134[945] = v271;
  v273 = v272 ^ v270;
  v134[28] = v273;
  v134[715] = (v227 - v259 + 120) ^ 0x72;
  v274 = v273 - v272;
  v134[815] = v269 + 120;
  LODWORD(STACK[0x55C]) = v265 - v266 - 2102390338 - v269 - 575315938;
  LODWORD(STACK[0x57C]) = v269 - 1513241825 + v274;
  LODWORD(STACK[0x588]) = v274 ^ 0xBBAA598D;
  return (*(v8 + 8 * ((a1 + 375) ^ (90 * (STACK[0x3D8] & 1)))))();
}

uint64_t sub_26B8C@<X0>(int a1@<W0>, int a2@<W4>, int a3@<W8>)
{
  v19 = (v7 + 879) | v6;
  v20 = v4 + 1;
  v21 = ((v20 + *(&STACK[0x5A8] + v20) * ((v19 ^ 0x781) - 1673082513) + 1818200211) * v10 - 278898722) ^ (v8 + v19 + v3 - 1156423716);
  v22 = LODWORD(STACK[0x56C]) - 1636427009;
  v23 = ((v21 % 0xDAB * (v11 + 2517) - v21) ^ v22) + a2;
  v24 = v23 ^ LODWORD(STACK[0x55C]) ^ v12;
  v25 = v24 + a2;
  v26 = v24 + LODWORD(STACK[0x56C]);
  HIDWORD(v27) = v24;
  LODWORD(v27) = v24 - 1709598144 + (((v24 & 3) + ((v23 ^ LODWORD(STACK[0x55C])) & 0x83 ^ 0x82) + 61) | 0x65E665C0);
  v28 = ((v24 + v22) ^ 0xEEE0B0B6 ^ (v25 - 287264586 - (v14 & (2 * v25))) ^ (v27 >> 30)) + (v23 ^ v12);
  HIDWORD(v27) = v28 + v13;
  LODWORD(v27) = v28 + v13;
  v29 = v23 ^ v15 ^ (v28 + v13);
  v30 = ((v27 >> 30) + v26 - v25 - ((2 * ((v27 >> 30) + v26 - v25) + 1022113278) & 0x954341AE) + v16) ^ v29;
  v31 = (v30 + v17 + ~((2 * (v30 - 1986968827)) & 0x954341AE)) ^ v29;
  v32 = v28 + v26 - v30;
  v33 = ((v32 + a1) ^ __ROR4__(v30 - 1986968827, 30)) - (v28 + v25 - v30) - v31;
  LODWORD(STACK[0x580]) = v33 + a3;
  LODWORD(STACK[0x56C]) = v32 + v9 + v33 + a3;
  LODWORD(STACK[0x55C]) = v31 + 805531226 + v33 + v18;
  return (*(STACK[0x570] + 8 * (((v20 != 73) * v5) ^ v19)))();
}

uint64_t sub_26BA8@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  STACK[0xB08] = 0;
  STACK[0xD10] = 0;
  STACK[0x920] = *(a1 + 8 * v2);
  return sub_9AD6C(a1, a2);
}

uint64_t sub_26C70@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v9 = v8 - 16;
  v10 = *(v7 + v9 - 16);
  v11.i64[0] = v7 + v9 - 15;
  v11.i64[1] = v7 + v9 - 16;
  *&STACK[0x270] = v11;
  *&STACK[0x280] = v10;
  v11.i64[0] = v7 + v9 - 13;
  v11.i64[1] = v7 + v9 - 14;
  *&STACK[0x260] = v11;
  v12.i64[0] = v7 + v9 - 7;
  v12.i64[1] = v7 + v9 - 8;
  v13.i64[0] = v7 + v9 - 5;
  v13.i64[1] = v7 + v9 - 6;
  v14.i64[0] = v7 + v9 - 1;
  v14.i64[1] = v7 + v9 - 2;
  v11.i64[0] = v7 + v9 + (v5 ^ v3);
  v11.i64[1] = v7 + v9 - 4;
  *&STACK[0x240] = v11;
  v15 = *&STACK[0x350];
  v16 = vandq_s8(v11, *&STACK[0x350]);
  v17 = vandq_s8(v14, *&STACK[0x350]);
  v18 = vandq_s8(v13, *&STACK[0x350]);
  v19 = vandq_s8(v12, *&STACK[0x350]);
  v20 = vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL);
  v21 = vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL);
  v22 = vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL);
  v23 = vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL);
  v24 = *&STACK[0x3F0];
  v25 = vaddq_s64(v22, *&STACK[0x3F0]);
  v26 = vaddq_s64(v21, *&STACK[0x3F0]);
  v27 = *&STACK[0x3E0];
  v29 = *&STACK[0x3C0];
  v28 = *&STACK[0x3D0];
  *&STACK[0x250] = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v23), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v23, *&STACK[0x3F0]), *&STACK[0x3C0]));
  v30 = vorrq_s8(vandq_s8(vsubq_s64(v27, v22), v28), vandq_s8(v25, v29));
  v31 = vorrq_s8(vandq_s8(vsubq_s64(v27, v21), v28), vandq_s8(v26, v29));
  v32 = vorrq_s8(vandq_s8(vsubq_s64(v27, v20), v28), vandq_s8(vaddq_s64(v20, v24), v29));
  v33 = *&STACK[0x330];
  v34 = veorq_s8(v32, *&STACK[0x340]);
  v35 = veorq_s8(v31, *&STACK[0x340]);
  v36 = *&STACK[0x340];
  v37 = veorq_s8(v31, *&STACK[0x330]);
  v38 = veorq_s8(v32, *&STACK[0x330]);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v38);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v37);
  v41 = *&STACK[0x310];
  v42 = *&STACK[0x320];
  v43 = *&STACK[0x2F0];
  v44 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v40, v40), *&STACK[0x320]), v40), *&STACK[0x310]), *&STACK[0x300]);
  v45 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v39, v39), *&STACK[0x320]), v39), *&STACK[0x310]), *&STACK[0x300]);
  v46 = *&STACK[0x300];
  v47 = veorq_s8(v45, vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL));
  v48 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL));
  v49 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v48);
  v51 = vaddq_s64(v49, v47);
  v52 = *&STACK[0x2B0];
  v53 = *&STACK[0x2E0];
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v50, *&STACK[0x2F0]), vorrq_s8(v50, *&STACK[0x2B0])), *&STACK[0x2B0]), *&STACK[0x2E0]);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v51, *&STACK[0x2F0]), vorrq_s8(v51, *&STACK[0x2B0])), *&STACK[0x2B0]), *&STACK[0x2E0]);
  v56 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v57 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56), *&STACK[0x420]);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57), *&STACK[0x420]);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), *&STACK[0x410]);
  v66 = veorq_s8(v64, *&STACK[0x410]);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v73 = *&STACK[0x3A0];
  v72 = *&STACK[0x3B0];
  v74 = *&STACK[0x390];
  v75 = veorq_s8(vaddq_s64(vsubq_s64(v71, vandq_s8(vaddq_s64(v71, v71), *&STACK[0x3B0])), *&STACK[0x3A0]), *&STACK[0x390]);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(v70, vandq_s8(vaddq_s64(v70, v70), *&STACK[0x3B0])), *&STACK[0x3A0]), *&STACK[0x390]);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78);
  v81 = vaddq_s64(v79, v77);
  v82 = *&STACK[0x2D0];
  v83 = *&STACK[0x2A0];
  v84 = *&STACK[0x380];
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v80, *&STACK[0x2D0]), vorrq_s8(v80, *&STACK[0x2A0])), *&STACK[0x2A0]), *&STACK[0x380]);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v81, *&STACK[0x2D0]), vorrq_s8(v81, *&STACK[0x2A0])), *&STACK[0x2A0]), *&STACK[0x380]);
  v87.i64[0] = v7 + v9 - 11;
  v87.i64[1] = v7 + v9 - 12;
  *&STACK[0x220] = v87;
  v88 = *&STACK[0x2C0];
  v89 = *&STACK[0x210];
  v223.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL))), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v12, 3uLL), *&STACK[0x210])));
  v223.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL))), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), *&STACK[0x210])));
  v90 = veorq_s8(v30, v36);
  v91 = veorq_s8(v30, v33);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v92, v92), v42), v92), v41), v46);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, v43), vorrq_s8(v95, v52)), v52), v53);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = *&STACK[0x420];
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), *&STACK[0x420]);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = *&STACK[0x410];
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), *&STACK[0x410]);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(v104, vandq_s8(vaddq_s64(v104, v104), v72)), v73), v74);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, v82), vorrq_s8(v107, v83)), v83), v84);
  v77.i64[0] = v7 + v9 - 9;
  v77.i64[1] = v7 + v9 - 10;
  *&STACK[0x230] = v77;
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL)));
  v110 = vandq_s8(v77, v15);
  v223.val[0] = vshlq_u64(veorq_s8(v109, v88), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v89)));
  v111 = veorq_s8(*&STACK[0x250], v36);
  v112 = veorq_s8(*&STACK[0x250], v33);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v42), v113), v41), v46);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v43), vorrq_s8(v116, v52)), v52), v53);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v98);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v101);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(v123, vandq_s8(vaddq_s64(v123, v123), v72)), v73), v74);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, v82), vorrq_s8(v126, v83)), v83), v84);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v130 = vandq_s8(v87, v15);
  v131 = vaddq_s64(v129, v128);
  v132 = vandq_s8(*&STACK[0x260], v15);
  v223.val[1] = vshlq_u64(veorq_s8(v131, v88), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x240], 3uLL), v89)));
  v133 = vandq_s8(*&STACK[0x270], v15);
  v134 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v138 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v137), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v137, *&STACK[0x3F0]), *&STACK[0x3C0]));
  v139 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v136), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v136, *&STACK[0x3F0]), *&STACK[0x3C0]));
  v140 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v135), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v135, *&STACK[0x3F0]), *&STACK[0x3C0]));
  v141 = vorrq_s8(vandq_s8(vsubq_s64(*&STACK[0x3E0], v134), *&STACK[0x3D0]), vandq_s8(vaddq_s64(v134, *&STACK[0x3F0]), *&STACK[0x3C0]));
  v137.i64[0] = vqtbl4q_s8(v223, *&STACK[0x290]).u64[0];
  v142 = veorq_s8(v141, v36);
  v143 = veorq_s8(v140, v36);
  v144 = veorq_s8(v140, v33);
  v145 = veorq_s8(v141, v33);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v145);
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), v42), v147), v41), v46);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), v42), v146), v41), v46);
  v150 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v151 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v152 = veorq_s8(v148, v150);
  v153 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v152);
  v155 = vaddq_s64(v153, v151);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v154, v43), vorrq_s8(v154, v52)), v52), v53);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, v43), vorrq_s8(v155, v52)), v52), v53);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v159 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), *&STACK[0x420]);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v159), *&STACK[0x420]);
  v162 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v163 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v164 = veorq_s8(v160, v162);
  v165 = vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v164);
  v167 = veorq_s8(vaddq_s64(v165, v163), *&STACK[0x410]);
  v168 = veorq_s8(v166, *&STACK[0x410]);
  v169 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v170 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v171 = veorq_s8(v167, v169);
  v172 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v171);
  v174 = vaddq_s64(v172, v170);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(v174, vandq_s8(vaddq_s64(v174, v174), *&STACK[0x3B0])), *&STACK[0x3A0]), *&STACK[0x390]);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(v173, vandq_s8(vaddq_s64(v173, v173), *&STACK[0x3B0])), *&STACK[0x3A0]), *&STACK[0x390]);
  v177 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v178 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v179 = veorq_s8(v175, v177);
  v180 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v179);
  v182 = vaddq_s64(v180, v178);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181, v82), vorrq_s8(v181, v83)), v83), *&STACK[0x380]);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v182, v82), vorrq_s8(v182, v83)), v83), *&STACK[0x380]);
  v222.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x270], 3uLL), v89)));
  v222.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x260], 3uLL), v89)));
  v185 = veorq_s8(v139, v36);
  v186 = veorq_s8(v139, v33);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v187, v187), v42), v187), v41), v46);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190, v43), vorrq_s8(v190, v52)), v52), v53);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), *&STACK[0x420]);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), *&STACK[0x410]);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(v197, vandq_s8(vaddq_s64(v197, v197), *&STACK[0x3B0])), *&STACK[0x3A0]), *&STACK[0x390]);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v200, v82), vorrq_s8(v200, v83)), v83), *&STACK[0x380]);
  v222.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x220], 3uLL), v89)));
  v202 = veorq_s8(v138, v36);
  v203 = veorq_s8(v138, v33);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v204, v204), v42), v204), v41), v46);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v207, v43), vorrq_s8(v207, v52)), v52), v53);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v210 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209), *&STACK[0x420]);
  v211 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211), *&STACK[0x410]);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v214 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213);
  v215 = veorq_s8(vaddq_s64(vsubq_s64(v214, vandq_s8(vaddq_s64(v214, v214), *&STACK[0x3B0])), *&STACK[0x3A0]), *&STACK[0x390]);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL));
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216);
  v218 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v217, v82), vorrq_s8(v217, v83)), v83), *&STACK[0x380]);
  v222.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x230], 3uLL), v89)));
  v137.i64[1] = vqtbl4q_s8(v222, *&STACK[0x290]).u64[0];
  v219 = vrev64q_s8(*&STACK[0x280]);
  v41.i64[0] = 0xF7F7F7F7F7F7F7F7;
  v41.i64[1] = 0xF7F7F7F7F7F7F7F7;
  v220 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v219, v219, 8uLL), v41), v137));
  *(v6 + v9) = vextq_s8(v220, v220, 8uLL);
  return (*(a1 + 8 * (((v4 == v9) * a2) ^ v2)))();
}

uint64_t sub_26D4C@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v4 = (*(a1 + 8 * (a2 + 1787)))();
  *v2 = 0;
  return v3(v4);
}

uint64_t sub_26D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x6A8];
  STACK[0x1058] = STACK[0x6A8];
  return (*(a7 + 8 * (((((v7 - 2117) | 0x902) ^ 0xACD ^ (10 * (v7 ^ 0xA5A))) * (v8 != 0)) ^ v7)))();
}

uint64_t sub_26DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = **(a2 + 8);
  v4 = *(a2 + 4) + 864559904;
  v5 = v4 > 0x7BA5D523;
  if (v4 < 0x7BA5D522)
  {
    v5 = 1;
  }

  return (*(a3 + 8 * ((15 * !v5) ^ 0x420u)))();
}

uint64_t sub_26F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  LODWORD(STACK[0x550]) = a6;
  LODWORD(STACK[0x560]) = v6;
  STACK[0x2D8] = 0;
  v8 = STACK[0x6CC];
  LODWORD(STACK[0x3F8]) = 0;
  STACK[0x3C0] = 0;
  STACK[0x298] = 0;
  v9 = -1663319554 - 1673081951 * v8;
  v10 = (v9 >> 25) ^ 0x64DB231A;
  LODWORD(STACK[0x468]) = v10;
  v11 = (v9 >> 22) ^ 0xEDA004CF;
  LODWORD(STACK[0x498]) = v11;
  v12 = (4 * v9) ^ (8 * v9) ^ 0x39691B32;
  LODWORD(STACK[0x4F8]) = v12;
  v13 = (v9 >> 19) ^ 0xF110DE8;
  v14 = HIWORD(v9) ^ 0x88FC3641;
  v15 = (v9 >> 18) ^ 0xE1BD3673;
  LODWORD(STACK[0x4E8]) = v15;
  v16 = (v9 >> 14) ^ 0xCC59D806;
  LODWORD(STACK[0x548]) = (v8 << 31) | 0xFCD620F;
  v17 = (v9 >> 20) ^ (v9 >> 1) ^ (v9 >> 25);
  LODWORD(STACK[0x3E8]) = v9 >> 21;
  LODWORD(STACK[0x514]) = v13;
  v18 = (v9 >> 13) ^ 0x2A69579D;
  LODWORD(STACK[0x4F0]) = v18;
  LODWORD(STACK[0x414]) = v16;
  LODWORD(STACK[0x46C]) = v14;
  v19 = v11 ^ (v9 >> 21) ^ v13 ^ v15 ^ v14 ^ v16 ^ v18;
  v20 = (v9 >> 12) ^ 0x222DCD31;
  v21 = (v9 >> 6) ^ 0xDEBBA23F;
  v22 = (v9 >> 7) ^ 0x66410E40;
  LODWORD(STACK[0x494]) = v22;
  v23 = (v9 >> 11) ^ 0x49C4A25;
  LODWORD(STACK[0x420]) = v23;
  LODWORD(STACK[0x464]) = v20;
  LODWORD(STACK[0x510]) = v21;
  v24 = (v9 >> 4) ^ 0x110A3F13;
  LODWORD(STACK[0x528]) = v24;
  v25 = v19 ^ v20 ^ v23 ^ v22 ^ v21 ^ v24 ^ (v17 - ((2 * v17) & 0xDB40099E) - 308280113);
  LOBYTE(v24) = (v25 >> 27) & 0xB;
  LODWORD(STACK[0x458]) = v9 >> 31;
  v26 = (v9 >> 31) ^ (v25 >> 21) ^ (v25 >> 27) ^ 0xFB040789;
  v27 = v25 ^ 0xF441C493;
  v28 = (v25 ^ 0xF219639) << ((((v24 ^ 0xC5) - 124) ^ ((v24 ^ 0x96) - 47) ^ ((v24 ^ 0x59) + 32)) + (((v24 ^ 0x17) - 124) ^ ((v24 ^ 0x67) - 12) ^ ((v24 ^ 0x71) - 26)) + 29);
  LODWORD(STACK[0x540]) = v28 - ((2 * v28) & 0x7B470310) + 1034125704;
  v29 = (v9 >> 10) ^ 0x2435C383;
  LODWORD(STACK[0x418]) = v29;
  v30 = (v9 >> 17) ^ HIBYTE(v9) ^ (v9 >> 22) ^ (v9 >> 7) ^ (v9 >> 21) ^ v10 ^ (v9 >> 19) ^ 0xF110DE8 ^ HIWORD(v9) ^ 0x88FC3641 ^ v16 ^ v20 ^ (v9 >> 11) ^ 0x49C4A25 ^ v29;
  v31 = (v9 >> 29) ^ (v9 >> 30);
  LODWORD(STACK[0x454]) = v31;
  v32 = (v9 >> 8) ^ 0x6AE02F09;
  LODWORD(STACK[0x460]) = v32;
  v33 = v31 ^ 0x71D3C999;
  LODWORD(STACK[0x40C]) = v31 ^ 0x71D3C999;
  v34 = (v9 >> 9) ^ 0xD0D16446;
  LODWORD(STACK[0x3F4]) = v34;
  v35 = (v9 >> 5) ^ 0x7E325255;
  LODWORD(STACK[0x408]) = v35;
  v36 = v30 ^ v34 ^ v32 ^ v21 ^ v35 ^ v33;
  v37 = v36 ^ 0x1833E5B2;
  v38 = (v36 >> 21) ^ 0xF2332E73;
  v39 = (v9 << 7) ^ 0xD6F7BEF7;
  v40 = (v9 << 10) ^ 0xF9CD171D;
  v41 = (-1663319554 - 1673081951 * LODWORD(STACK[0x6C8])) ^ (v9 << 15) ^ (v9 << 8);
  LODWORD(STACK[0x424]) = v9 << 27;
  v42 = v39;
  LODWORD(STACK[0x444]) = v39;
  v43 = v40;
  LODWORD(STACK[0x438]) = v40;
  v44 = v41 ^ (v9 << 27) ^ v39 ^ v40;
  LODWORD(STACK[0x41C]) = v9 << 13;
  v45 = (v9 << 13) ^ 0x8DE03283;
  v46 = (v9 << 16) ^ 0x2E88D038;
  LODWORD(STACK[0x4C8]) = a5;
  v47 = (v9 << 11) ^ 0xDA29C9DB;
  v48 = (v9 << 18) ^ 0x153313D4;
  LODWORD(STACK[0x3E0]) = v47;
  v49 = v45;
  LODWORD(STACK[0x430]) = v45;
  v50 = v46;
  LODWORD(STACK[0x434]) = v46;
  v51 = (v9 << 20) ^ 0x94F24F26;
  v52 = (v9 << 22) ^ 0xC86AC0E3;
  LODWORD(STACK[0x508]) = v52;
  v53 = (v9 << 24) ^ 0xD3D32FE8;
  LODWORD(STACK[0x450]) = v53;
  v54 = (v9 << 21) ^ 0x89D11E8A;
  v55 = (v9 << 23) ^ 0x8DCE1969;
  LODWORD(STACK[0x3E4]) = v55;
  LODWORD(STACK[0x428]) = v51;
  v56 = v44 ^ v47 ^ v45 ^ v46 ^ v48 ^ v51 ^ v54 ^ v52 ^ v55 ^ v53;
  LODWORD(STACK[0x44C]) = v9 << 25;
  v57 = v9;
  v58 = (v9 << 25) ^ 0x1DDFB5B1;
  v59 = (v9 << 26) ^ 0x505A2CBF;
  v60 = v56 ^ v58 ^ v59 ^ v12 ^ v37 ^ (4 * v37) ^ (32 * v37) ^ (v37 << 11) ^ (4 * v38) ^ (32 * v38) ^ (v38 << 11);
  LODWORD(STACK[0x4D8]) = v60 ^ v38;
  v61 = v60 ^ v38 ^ 0xC67B3F62;
  v62 = (4 * v61) ^ (8 * v61) ^ 0x8A3B893;
  LODWORD(STACK[0x4AC]) = v62;
  v63 = ((v60 >> 30) | 0xAC8FC884) ^ (v60 >> 29) ^ 0x11739399;
  LODWORD(STACK[0x488]) = v63;
  v64 = (v60 >> 21) ^ 0x1327DB5C;
  LODWORD(STACK[0x524]) = v64;
  v65 = (v60 >> 19) ^ 0xC967113D;
  LODWORD(STACK[0x520]) = v65;
  v66 = (v60 >> 25) ^ 0x3B0823D9;
  LODWORD(STACK[0x3CC]) = v66;
  v67 = (v60 >> 22) ^ 0xA146E928;
  LODWORD(STACK[0x3D4]) = v67;
  v68 = HIWORD(v60) ^ 0xD0BBB711;
  LODWORD(STACK[0x3EC]) = v68;
  LODWORD(STACK[0x3DC]) = v60 >> 12;
  v69 = HIBYTE(v60) ^ (v60 >> 17) ^ (v60 >> 12) ^ ((v60 ^ v38) >> 8) ^ v66 ^ v67 ^ v64 ^ v65 ^ v68;
  LODWORD(STACK[0x4E4]) = v60;
  v70 = (v60 >> 14) ^ 0x6E5BABF6;
  LODWORD(STACK[0x518]) = v70;
  v71 = (v60 >> 11) ^ 0x7114DC20;
  LODWORD(STACK[0x51C]) = v71;
  v72 = ((v60 ^ v38) >> 9) ^ 0x11B14169;
  LODWORD(STACK[0x484]) = v72;
  v73 = ((v60 ^ v38) >> 10) ^ 0x6624C28A;
  LODWORD(STACK[0x480]) = v73;
  v74 = v69 ^ v70 ^ v71 ^ v63 ^ v73 ^ v72;
  v75 = ((v60 ^ v38) >> 6) ^ 0xCD54830;
  LODWORD(STACK[0x47C]) = v75;
  v76 = ((v60 ^ v38) >> 5) ^ 0xB60950A8;
  LODWORD(STACK[0x478]) = v76;
  v77 = ((v60 ^ v38) >> 7) ^ 0x35D18282 ^ v75;
  LODWORD(STACK[0x3BC]) = v77;
  v78 = v74 ^ v77 ^ v76;
  v79 = v78 ^ 0xF30450AB;
  v80 = (v78 >> 21) ^ 0xC6F9C23B;
  v81 = LODWORD(STACK[0x548]) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x6C4])) ^ v57 ^ (v57 << 12) ^ v42 ^ v43 ^ v47;
  v82 = (v57 << 14) ^ 0xB3188237;
  LODWORD(STACK[0x500]) = v82;
  v83 = v81 ^ v49 ^ v82 ^ v50 ^ v48;
  v84 = (v57 << 19) ^ 0x82898AB6;
  LODWORD(STACK[0x3D8]) = v84;
  v85 = v59;
  LODWORD(STACK[0x448]) = v59;
  v86 = v83 ^ v84 ^ v51 ^ v54 ^ v58 ^ v59;
  v87 = (v57 << 28) ^ 0x722C1098;
  LODWORD(STACK[0x548]) = v87;
  v88 = v86 ^ v87 ^ v27 ^ (4 * v27) ^ (32 * v27) ^ v26 ^ (4 * v26) ^ (32 * v26) ^ (v26 << 11) ^ LODWORD(STACK[0x540]);
  v89 = (v61 << 11) ^ 0x91831AB5;
  LODWORD(STACK[0x53C]) = v89;
  v90 = (v61 << 18) ^ 0xC578DD50;
  LODWORD(STACK[0x540]) = v90;
  v91 = (v61 << 13) ^ 0xAB6CD13;
  LODWORD(STACK[0x530]) = v91;
  v92 = (v61 << 10) ^ 0x515CBA6F;
  LODWORD(STACK[0x358]) = v92;
  v93 = (v61 << 16) ^ 0x32B977D1;
  LODWORD(STACK[0x348]) = v93;
  v94 = (v61 << 7) ^ 0xBA75CEDF;
  LODWORD(STACK[0x34C]) = v94;
  v95 = (v61 << 20) ^ 0x6A04F8A4;
  LODWORD(STACK[0x334]) = v95;
  v96 = v88 ^ (v61 << 15) ^ (v61 << 8) ^ (v61 << 22) ^ (v61 << 24) ^ v94 ^ v92 ^ v89 ^ v91 ^ v93 ^ v90 ^ v95;
  LODWORD(STACK[0x4D4]) = v61;
  LODWORD(STACK[0x32C]) = v61 << 21;
  v97 = (v61 << 21) ^ 0xFA6DEADA;
  LODWORD(STACK[0x4A0]) = v97;
  v98 = (v61 << 26) ^ 0x41E89AE9;
  LODWORD(STACK[0x52C]) = v98;
  v99 = (v61 << 23) ^ 0xFDD5890E;
  LODWORD(STACK[0x4B0]) = v99;
  v100 = (v61 << 27) ^ 0x33C269CB;
  LODWORD(STACK[0x49C]) = v100;
  v101 = (v61 << 25) ^ 0x7B793D2;
  LODWORD(STACK[0x330]) = v101;
  LODWORD(STACK[0x360]) = v80;
  v102 = v96 ^ v97 ^ v99 ^ v101 ^ v98 ^ v100 ^ v62 ^ v79 ^ (4 * v79) ^ (32 * v79) ^ (v79 << 11) ^ (4 * v80) ^ (v80 << 11) ^ (32 * v80);
  LODWORD(STACK[0x4E0]) = v102;
  v103 = ((v102 >> 29) | 0x56E0E358) ^ (v102 >> 30) ^ 0xDEF970AD;
  LODWORD(STACK[0x318]) = v103;
  v104 = (v102 >> 25) ^ 0x7086E2CE;
  LODWORD(STACK[0x474]) = v104;
  v105 = (v102 >> 22) ^ 0xB42F8EAE;
  LODWORD(STACK[0x470]) = v105;
  v106 = v104 ^ v105;
  LODWORD(STACK[0x314]) = v106;
  v107 = v103 ^ HIBYTE(v102) ^ v106;
  LODWORD(STACK[0x328]) = v107;
  v108 = (v107 & 0x2F3 ^ 0xE332D24E) & (v107 & 0x2F3 ^ 0xFB7BD3DF) ^ v107 & 0x262;
  STACK[0x320] = 1816277365 * (((v108 ^ 0x8B1ADE) + 2001973307) ^ ((v108 ^ 0x84E1CBAF) - 214343348) ^ ((v108 ^ 0xFF8715CC) - 2006991063)) - 968796450;
  LODWORD(STACK[0x4B8]) = v7 - 526;
  LODWORD(STACK[0x3F0]) = LODWORD(STACK[0x6B4]) * (v7 - 1673084468) - 1663319554;
  v109 = STACK[0x6BC];
  LODWORD(STACK[0x3A8]) = STACK[0x6BC];
  v109 *= -1673081951;
  v110 = v109 - 1663319554;
  v111 = (v109 - 1663319554) >> 29;
  v112 = (v109 - 1663319554) >> 21;
  v113 = (v109 - 1663319554) >> 19;
  v114 = ((v109 - 1663319554) >> 10) ^ 0x9C84C823;
  v115 = ((v109 - 1663319554) >> 11) ^ 0xDB203A75;
  v116 = ((v109 - 1663319554) >> 14) ^ 0xBCA41738;
  v117 = ((v109 - 1663319554) >> 13) ^ 0xBBE7403E;
  v118 = v112 ^ v113 ^ ((v109 - 1663319554) >> 18) ^ 0xEC64F121 ^ v116;
  v119 = ((v109 - 1663319554) >> 9) ^ 0xF2029179;
  v120 = ((v109 - 1663319554) >> 5) ^ 0x5C7E9C54;
  v121 = ((v109 - 1663319554) >> 6) ^ 0xDADB2639;
  v122 = ((v109 - 1663319554) >> 4) ^ 0xF5755A9C;
  v123 = ((v109 - 1663319554) >> 27) ^ ((v109 - 1663319554) >> 28) ^ ((v109 - 1663319554) >> 15) ^ ((v109 - 1663319554) >> 2) ^ v118 ^ v117 ^ v115 ^ v114 ^ v119 ^ v121 ^ v120 ^ v122;
  LODWORD(STACK[0x4DC]) = v123 ^ 0x240C3D7F ^ ((((v111 ^ 0x16) + 25) ^ ((v111 ^ 0x99) - 104) ^ ((v111 ^ 0x8F) - 126)) - 2 * (v111 & ((v109 - 1663319554) >> 30)) + (((((v109 - 1663319554) >> 30) ^ 0x65) + 83) ^ (56 - ((v109 - 1663319554) >> 30)) ^ ((((v109 - 1663319554) >> 30) ^ 0x66) + 82)) - 71);
  LODWORD(STACK[0x4D0]) = (v123 >> 27) ^ (v123 >> 21) ^ 0x59414E95;
  LOBYTE(v123) = 1 - v109;
  v124 = ((v109 - 1663319554) >> 25) ^ ((v109 - 1663319554) >> 16);
  v125 = ((v109 - 1663319554) >> 20) ^ ((v109 - 1663319554) >> 1);
  v126 = (v109 - 1663319554) >> 22;
  v127 = (v110 >> 7) ^ 0xDB1719ED;
  v128 = (v110 >> 12) ^ 0xB9539CFF;
  v129 = v125 ^ v124 ^ v126 ^ v118 ^ v117 ^ v128 ^ v115 ^ v127 ^ v121 ^ v122;
  STACK[0x3A0] = (v129 ^ 0x7DED65E5) << ((((v110 & 0xCE) + (v123 & 0xCE)) ^ 0x16) & 0x88 ^ 0x88) << ((((v110 & 0xCE) + (v123 & 0xCE)) ^ 0x16) & 0x56 ^ 0x52);
  LODWORD(STACK[0x398]) = v129 ^ 0x45B32A86;
  LODWORD(STACK[0x39C]) = (v110 >> 31) ^ (v129 >> 27) ^ (v129 >> 21) ^ 0xCB0A6485;
  v130 = (8 * v110) ^ (4 * v110);
  LODWORD(STACK[0x35C]) = v130;
  v131 = (v110 << 7) ^ 0x40743935;
  LODWORD(STACK[0x38C]) = v131;
  LODWORD(STACK[0x310]) = v110 << 11;
  v132 = (v110 << 8) ^ (v110 << 15) ^ (v110 << 11) ^ v130 ^ v131;
  LODWORD(STACK[0x380]) = (v110 << 10) ^ 0xCD1915CD;
  v133 = (v110 << 18) ^ 0x6076A9DD;
  LODWORD(STACK[0x350]) = v133;
  v134 = (v110 << 22) ^ 0xA4ED6883;
  LODWORD(STACK[0x354]) = v134;
  v135 = (v110 << 21) ^ 0xAC68F3B2;
  LODWORD(STACK[0x338]) = v135;
  v136 = (v110 << 13) ^ 0xC92CCE74;
  LODWORD(STACK[0x33C]) = v136;
  LODWORD(STACK[0x344]) = v110 << 23;
  LODWORD(STACK[0x394]) = v110 << 16;
  v137 = v133 ^ (v110 << 20) ^ 0x919AE15F;
  LODWORD(STACK[0x390]) = v137;
  v138 = (v110 << 23) ^ (v110 << 16) ^ v136 ^ v137 ^ v135 ^ v134 ^ 0xF969D3B3 ^ ((v132 ^ (v110 << 10) ^ 0x40743935) - ((2 * (v132 ^ (v110 << 10) ^ 0x40743935)) & 0x92599CE8) - 919810444);
  v139 = HIBYTE(v110) ^ (v110 >> 17) ^ (v110 >> 8) ^ v124 ^ v111 ^ v112 ^ v113 ^ ((v110 >> 30) | 0xFE1575C8) ^ v115 ^ v128 ^ v116 ^ v114 ^ v119 ^ v127 ^ v121 ^ v120 ^ (v126 - (v112 & 0x7EA) - 98005003);
  v140 = v139 ^ 0xD0706381;
  v141 = (v139 >> 21) ^ 0x1FC4AACC;
  v142 = -1673081951 * LODWORD(STACK[0x6B8]) - 1663319554;
  v143 = (v110 << 26) ^ 0x429DB11F;
  LODWORD(STACK[0x30C]) = v143;
  v144 = (v110 << 27) ^ 0x3259A4B7;
  LODWORD(STACK[0x340]) = v144;
  v145 = (v110 << 25) ^ 0xB5FC7EAE;
  LODWORD(STACK[0x374]) = v145;
  v146 = v145 ^ v142 ^ v143 ^ v144 ^ v140 ^ (v140 << 11) ^ (32 * v140) ^ (4 * (v140 ^ v141)) ^ (32 * v141) ^ (v141 << 11) ^ ((v138 ^ -v138 ^ ((v110 << 24) - (v138 ^ (v110 << 24)))) + (v110 << 24));
  v147 = STACK[0x4F8];
  LODWORD(STACK[0x404]) = v57;
  HIDWORD(v148) = v147;
  LODWORD(v148) = v147 ^ (16 * v57) ^ 0xD98D9E0;
  LODWORD(STACK[0x410]) = 2 * v57;
  v149 = LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x424]) ^ LODWORD(STACK[0x3E0]);
  v150 = (v57 << 17) ^ 0x8FFD62E3;
  LODWORD(STACK[0x41C]) = v150;
  HIDWORD(v148) = (2 * v57) & 0xFFFFFFE ^ 0x13192E5B ^ (v148 >> 4);
  LODWORD(v148) = HIDWORD(v148);
  v151 = v148 >> 28;
  v152 = v149 ^ LODWORD(STACK[0x500]) ^ v150 ^ v48 ^ LODWORD(STACK[0x3D8]) ^ v54 ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x3E4]) ^ v85 ^ v151;
  LOBYTE(v151) = (v152 ^ 2) & (v151 ^ 2) ^ (v151 | 0x53);
  LODWORD(STACK[0x424]) = v57 >> 15;
  v153 = (v57 >> 28) ^ (v57 >> 27) ^ (v57 >> 2) ^ (v57 >> 15) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x4F0]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x40C]);
  HIDWORD(v148) = v152 ^ 0x9693036B ^ (v57 << (v151 & 0x14 ^ 4) << (v151 & 0xA ^ 8));
  LODWORD(v148) = HIDWORD(v148) ^ LODWORD(STACK[0x548]);
  LODWORD(STACK[0x2F4]) = (v148 >> 7) ^ 0x209A8CA6;
  LODWORD(STACK[0x2F0]) = v153 ^ 0x2D48DA13;
  LODWORD(STACK[0x2E8]) = (v153 >> 27) ^ (v153 >> 21) ^ 0x1D722DF8;
  v154 = v146 ^ 0xBAC1807B ^ v141;
  LODWORD(STACK[0x40C]) = v146 ^ 0xBAC1807B;
  v155 = (4 * v154) ^ 0x7F855C1A ^ (8 * v154) ^ 0x192FE416;
  LODWORD(STACK[0x3D0]) = v155;
  v156 = (v146 >> 25) ^ 0x68FB179A;
  LODWORD(STACK[0x420]) = v156;
  v157 = (v146 >> 22) ^ 0xB959249;
  LODWORD(STACK[0x4E8]) = v157;
  v158 = (v146 >> 19) ^ 0x3690B4E5;
  LODWORD(STACK[0x4F0]) = v158;
  v159 = (v146 >> 21) ^ 0x12A74EB9;
  LODWORD(STACK[0x364]) = v159;
  v160 = (v146 >> 20) ^ (v146 >> 13) ^ (v146 >> 11) ^ v156 ^ v157 ^ v159 ^ v158;
  v161 = HIWORD(v146) ^ 0x9664A088;
  v162 = (v146 >> 12) ^ 0x7E3CE6B9;
  v163 = (v146 >> 18) ^ 0xB036CE70 ^ v161;
  LODWORD(STACK[0x418]) = v163;
  v164 = (v146 >> 14) ^ 0x4CCFFC63;
  LODWORD(STACK[0x37C]) = v162;
  v165 = v160 ^ v163 ^ v164 ^ v162;
  v166 = (v154 >> 4) ^ 0x36463471;
  LODWORD(STACK[0x414]) = v166;
  v167 = (v154 >> 6) ^ 0xE7E94FEC;
  v168 = (v154 >> 7) ^ 0xD1682D42;
  v169 = (v154 >> 10) ^ 0x12EF8496 ^ (v154 >> 8) ^ 0x42C81019 ^ v168;
  LODWORD(STACK[0x378]) = v169;
  LODWORD(STACK[0x388]) = v167;
  v170 = v165 ^ (v154 >> 1) ^ v168 ^ v167 ^ v166;
  v171 = v170 ^ 0xDD83BB1A;
  v172 = (((v146 ^ 0xBAC1807B) >> 31) | 0x21F86F9A) ^ (v170 >> 27) ^ (v170 >> 21);
  v173 = (v172 ^ 0xDE0792A0) & ((v171 << 11) ^ 0x97089EB1);
  v174 = v172 ^ 0x2F12C711;
  LODWORD(STACK[0x300]) = v172 ^ 0x2F12C711;
  v175 = v172 & 0x50494E;
  v176 = (v154 << 7) ^ 0x1E05AAF8;
  v177 = (v154 << 10) ^ 0x7DAEF3C1;
  v178 = (v154 << 11) ^ 0xEFEE07F7;
  v179 = (-1673081951 * LODWORD(STACK[0x6B0]) - 1663319554) ^ (32 * v110) ^ (16 * v110) ^ (v110 << 17) ^ (v110 << 30) ^ (v110 << 19) ^ (4 * LODWORD(STACK[0x4DC])) ^ (32 * LODWORD(STACK[0x4DC])) ^ (LODWORD(STACK[0x4DC]) << 11) ^ (4 * LODWORD(STACK[0x4D0])) ^ (32 * LODWORD(STACK[0x4D0])) ^ (LODWORD(STACK[0x4D0]) << 11) ^ v154 ^ (v154 << 19) ^ (v154 << 12);
  LODWORD(STACK[0x3E4]) = v176;
  LODWORD(STACK[0x3E8]) = v177;
  v180 = (v154 << 13) ^ 0xFDC920DB;
  v181 = (v154 << 14) ^ 0xE2B94B1E;
  LODWORD(STACK[0x408]) = v181;
  v182 = (v154 << 20) ^ 0x14F4CE8E;
  v183 = (v154 << 16) ^ 0x7937DC30;
  v184 = (v154 << 18) ^ 0x890D3B15;
  LODWORD(STACK[0x3D8]) = v180;
  LODWORD(STACK[0x3E0]) = v183;
  LODWORD(STACK[0x3B8]) = v182;
  v185 = (v154 << 26) ^ 0x3448B4EF;
  v186 = (v154 << 25) ^ 0xE7CA83E2;
  v187 = (v154 << 28) ^ 0x6D9F8334;
  LODWORD(STACK[0x3F4]) = v187;
  v188 = (v154 << 21) ^ 0x7C78BA15;
  LODWORD(STACK[0x31C]) = v186;
  LODWORD(STACK[0x368]) = v185;
  LODWORD(STACK[0x308]) = v171;
  v189 = v179 ^ ((v154 << 31) | 0x7994B3AB) ^ v176 ^ v177 ^ v178 ^ v180 ^ v181 ^ v183 ^ v184 ^ v182 ^ v188 ^ v186 ^ v185 ^ v187 ^ (4 * v171) ^ (32 * v171) ^ v175 ^ v173 ^ (4 * v174) ^ 0x58DB8537;
  LODWORD(STACK[0x304]) = v189 - ((2 * v189) & 0xE8AFB50E) - 195569017;
  v190 = (v146 >> 29) ^ 0x5A3B2;
  LODWORD(STACK[0x3B0]) = v190;
  v191 = (v146 >> 30) ^ 0xC7D1B0C7;
  LODWORD(STACK[0x3B4]) = v191;
  LODWORD(STACK[0x370]) = v146;
  v192 = v191 ^ HIBYTE(v146) ^ v190 ^ ((~((v154 ^ 0x5E8F33B3) >> 24) | 0x8D) + ((v154 ^ 0x5E8F33B3) >> 25) + 58);
  v193 = v180 ^ v183 ^ v184;
  LOBYTE(v184) = v192 & 9 ^ 0x9A ^ (v192 & 0xB ^ 0xC1) & (v192 & 0xB ^ 0xE3);
  v194 = (v154 ^ 0x5E8F33B3) >> (v184 & 0xE) >> (v184 & 1);
  v195 = (v154 << 22) ^ 0xA051BFB8;
  LODWORD(STACK[0x3AC]) = v195;
  v196 = (v154 << 8) ^ (v154 << 15) ^ v155 ^ v176 ^ v177 ^ v178 ^ v193 ^ v182 ^ v188 ^ v195;
  v197 = LODWORD(STACK[0x4E8]) ^ (v146 >> 17) ^ LODWORD(STACK[0x364]) ^ LODWORD(STACK[0x4F0]) ^ v161 ^ v164 ^ v162 ^ (v154 >> 5) ^ (v154 >> 9) ^ v169 ^ v167 ^ v192 ^ v194;
  v198 = v197 ^ 0xFC589133;
  v199 = (v194 >> 30) ^ (v194 >> 27) ^ (v197 >> 21) ^ 0x4FAAE8A;
  v200 = STACK[0x310];
  v201 = STACK[0x398];
  v202 = ((LODWORD(STACK[0x3A8]) << 31) | 0x38A4FB28) ^ v110 ^ LODWORD(STACK[0x3F0]) ^ (v110 << 19) ^ (v110 << 12) ^ LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x380]) ^ (LODWORD(STACK[0x310]) - ((v110 << 12) & 0x50F5A000) - 1468344655) ^ (32 * LODWORD(STACK[0x398])) ^ (LODWORD(STACK[0x398]) << 11) ^ STACK[0x3A0];
  v203 = (v154 << 24) ^ 0xB0D3AC0B;
  LODWORD(STACK[0x364]) = v203;
  v204 = v202 ^ (4 * LODWORD(STACK[0x39C])) ^ (32 * LODWORD(STACK[0x39C])) ^ (LODWORD(STACK[0x39C]) << 11) ^ (v154 << 27) ^ v203 ^ v186 ^ v185 ^ ((v196 & 0xEE72E8F3 ^ (v154 << 23) & 0xEE000000 ^ 0x118D1F1C) & ((v154 << 23) & 0x11800000 ^ 0x43880ADE ^ v196 & 0x118D170C) | (v196 & 0xEE72E8F3 ^ (v154 << 23) & 0xEE000000) & 0xAC72E021) ^ (4 * (v197 ^ 0xFC589133)) ^ (32 * (v197 ^ 0xFC589133)) ^ ((v197 ^ 0xFC589133) << 11);
  v205 = (v110 << 28) ^ 0xD0C795EF;
  v206 = v110 << 14;
  v207 = STACK[0x33C];
  v208 = STACK[0x338];
  v209 = STACK[0x30C];
  v210 = LODWORD(STACK[0x394]) ^ (v110 << 14) ^ LODWORD(STACK[0x33C]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x374]) ^ LODWORD(STACK[0x30C]) ^ v205 ^ v201 ^ LODWORD(STACK[0x39C]) ^ v198 ^ v199 ^ (v204 - ((2 * v204) & 0x92599CE8) - 919810444);
  LODWORD(STACK[0x3F0]) = v210;
  v211 = STACK[0x4E4];
  v212 = LODWORD(STACK[0x3DC]) ^ (LODWORD(STACK[0x4E4]) >> 20) ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x3CC]);
  v213 = (LODWORD(STACK[0x4E4]) >> 18) ^ 0x10AEF35A;
  LODWORD(STACK[0x3DC]) = v213;
  v214 = v212 ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x520]) ^ v213;
  v215 = (v211 >> 13) ^ 0x98E6BA30;
  LODWORD(STACK[0x3D4]) = v215;
  v216 = v214 ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x518]) ^ v215 ^ LODWORD(STACK[0x51C]);
  v217 = STACK[0x4D8];
  v218 = (LODWORD(STACK[0x4D8]) >> 4) ^ 0xD5C19D81;
  LODWORD(STACK[0x3CC]) = v218;
  v219 = STACK[0x4D4];
  v220 = v216 ^ (LODWORD(STACK[0x4D4]) >> 1) ^ LODWORD(STACK[0x3BC]) ^ v218;
  v221 = v220 ^ 0x22EBB304;
  v222 = ((v211 >> 31) | 0x2D24BCC0) ^ (v220 >> 21) ^ ((v220 >> 27) | 0x757D6E20);
  v223 = (4 * v199) ^ (32 * v199) ^ v210;
  v224 = v223 ^ 0x813D5C77;
  v225 = (((v223 ^ 0x813D5C77) >> 30) | 0x4D1AC338) ^ (v223 >> 29) ^ 0x916FC5A5;
  LODWORD(STACK[0x3A0]) = v225;
  v226 = v223 ^ 0x813D5C77 ^ (v199 << 11);
  v227 = (v226 >> 4) ^ (v223 >> 27) ^ (v226 >> 2) ^ (v226 >> 15) ^ (v226 >> 18) ^ (v226 >> 13) ^ (v226 >> 11) ^ (((v223 ^ 0x813D5C77) >> 28) | 0x1327F5B0);
  LODWORD(STACK[0x3BC]) = v227;
  v227 >>= 27;
  LODWORD(STACK[0x3EC]) = v227;
  LOBYTE(v218) = (-23 * (v227 & 0xF3 ^ 0xD0 | v227 & 0xF3 ^ 3)) ^ 0x46;
  v228 = (v223 >> 25) ^ (v223 >> 22) ^ HIBYTE(v223) ^ (v226 >> 17) ^ HIWORD(v226) ^ (v226 >> 12) ^ ((v226 ^ 0x803630A4) >> (v218 & 0xA4 ^ 4) >> (v218 & 0x5B ^ 0x42));
  v229 = v226 ^ 0x68C6AACE;
  v230 = (v226 >> 19) ^ 0x6AF17A70;
  LODWORD(STACK[0x38C]) = v230;
  v231 = (v226 >> 21) ^ 0xE744506B;
  LODWORD(STACK[0x39C]) = v231;
  v232 = (v226 >> 14) ^ 0x8DE883E0;
  LODWORD(STACK[0x398]) = v232;
  v233 = (v226 >> 9) ^ 0x7793EDCA;
  LODWORD(STACK[0x374]) = v233;
  v234 = (v226 >> 5) ^ 0x7E098D31;
  LODWORD(STACK[0x390]) = v234;
  v235 = (v226 >> 6) ^ 0x679698C7;
  LODWORD(STACK[0x380]) = v235;
  v236 = (v226 >> 8) ^ (v226 >> 7);
  v226 >>= 10;
  LODWORD(STACK[0x394]) = v226;
  v237 = v236 ^ v226 ^ v225 ^ v231 ^ v230 ^ v232 ^ v233 ^ v235 ^ v234 ^ v228;
  v238 = STACK[0x300];
  v239 = (LODWORD(STACK[0x300]) << 11) ^ (v224 << 25) ^ (v224 << 24) ^ (v229 << 20) ^ (v229 << 16) ^ (v229 << 8) ^ (v229 << 7) ^ (v229 << 10) ^ (v229 << 15);
  LODWORD(STACK[0x3A8]) = v229 << 13;
  v240 = v239 ^ (v229 << 13) ^ (4 * (v237 ^ 0x35DFE3CD)) ^ 0x911792B0;
  v241 = (v240 - ((2 * v240) & 0xE53580FE) + 1922744445) ^ (32 * (v237 ^ 0x35DFE3CD)) ^ 0x70926DFD;
  v242 = STACK[0x4E0];
  v243 = LODWORD(STACK[0x4E0]) ^ 0x8167D1B4;
  v244 = v243 ^ LODWORD(STACK[0x360]);
  v245 = (v243 >> 31) | 0x387C56B8;
  v246 = (v228 >> 27) ^ (v228 >> 30) ^ (v237 >> 21);
  v247 = v206 ^ v200 ^ LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x35C]) ^ v207 ^ LODWORD(STACK[0x350]) ^ v208 ^ LODWORD(STACK[0x354]) ^ v209 ^ LODWORD(STACK[0x340]) ^ v205 ^ LODWORD(STACK[0x4DC]) ^ LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x308]) ^ (32 * v238) ^ LODWORD(STACK[0x304]);
  v248 = (v224 << 23) ^ 0xE4E44F48;
  LODWORD(STACK[0x35C]) = v248;
  v249 = (v224 << 21) ^ 0x1FD70D30;
  LODWORD(STACK[0x354]) = v249;
  v250 = (v224 << 22) ^ 0x23D98164;
  LODWORD(STACK[0x350]) = v250;
  v251 = v247 ^ v249 ^ v250 ^ v248;
  v252 = (v224 << 27) ^ 0x4B831324;
  LODWORD(STACK[0x344]) = v252;
  v253 = (v224 << 26) ^ 0xFD1E30EC;
  LODWORD(STACK[0x340]) = v253;
  v254 = v251 ^ v253 ^ v252;
  v255 = (8 * v229) ^ (4 * v229);
  LODWORD(STACK[0x310]) = v255;
  v256 = (v229 << 11) ^ 0xC351CCC8;
  LODWORD(STACK[0x33C]) = v256;
  v257 = (v229 << 18) ^ 0x64DFDC28;
  LODWORD(STACK[0x338]) = v257;
  v258 = v254 ^ v256 ^ v255 ^ v257 ^ v237 ^ 0x35DFE3CD ^ ((v237 ^ 0x35DFE3CD) << 11) ^ (4 * v246) ^ (32 * v246) ^ (v246 << 11) ^ (v241 - ((2 * v241) & 0x68679966) - 1271673677);
  LODWORD(STACK[0x360]) = v242 >> 19;
  v259 = (v242 >> 19) ^ 0x2E44A1DD;
  v260 = LODWORD(STACK[0x318]) ^ (v242 >> 26) ^ LODWORD(STACK[0x314]) ^ v259 ^ v245;
  v261 = v244 ^ 0x830C9E9E;
  v262 = v261 >> ((((v260 & 0x10 ^ 0x9D) - 49) ^ ((v260 & 0x10 ^ 0x3C) + 112) ^ ((v260 & 0x10 ^ 0xB1) - 29)) + (((v260 & 0x10 ^ 0x94) + 3) ^ ((v260 & 0x10) - 41) ^ ((v260 & 0x10 ^ 0xB0) + 39)) + 37);
  v263 = (v242 >> 18) ^ 0xB585DDD8;
  LODWORD(STACK[0x318]) = v263;
  LODWORD(STACK[0x314]) = v244 >> 4;
  v264 = v263 ^ (v242 >> 15) ^ (v244 >> 3) ^ (v244 >> 4) ^ v260 ^ (v262 - ((2 * v262) & 0xFC89C146) + 2118443171);
  v265 = (v244 >> 8) ^ 0x3A14955A;
  v266 = (v244 >> 10) ^ 0x2F606220;
  v267 = (v242 >> 12) ^ 0x280ABCCD;
  v268 = (v244 >> 7) ^ 0x7C764A23;
  LODWORD(STACK[0x300]) = v268;
  v269 = (v244 >> 6) ^ 0xC284907;
  LODWORD(STACK[0x304]) = v269;
  v270 = v266 ^ v267 ^ v265 ^ v268 ^ v269 ^ v264;
  v271 = (v264 >> 27) ^ (v264 >> 30);
  LOBYTE(v269) = (v271 ^ 0xBA) & (v271 ^ 0xAE) ^ (v271 | 0x56);
  LODWORD(STACK[0x294]) = v270 ^ 0xBCC271B0;
  v272 = v271 ^ 0x7B3F5128 ^ ((v270 ^ 0xC79C2923) >> (v269 & 0x10) >> (v269 & 5 ^ 1));
  v273 = v267 ^ (v242 >> 11) ^ 0x9F546B08;
  LODWORD(STACK[0x2F8]) = v273;
  v274 = (v261 << STACK[0x320]) - ((2 * (v261 << STACK[0x320])) & 0xD0499D6) - 2038280981;
  v275 = (v242 >> 21) ^ 0xB152E296;
  LODWORD(STACK[0x2FC]) = v275;
  LODWORD(v261) = (v242 >> 14) ^ 0x29E29C2B;
  LODWORD(STACK[0x30C]) = v261;
  v276 = HIWORD(v242) ^ 0x4C73BE6D;
  LODWORD(STACK[0x308]) = v276;
  v277 = v275 ^ (v242 >> 17) ^ v259 ^ v276 ^ v261 ^ v273 ^ (v244 >> 9) ^ (v244 >> 5) ^ v266 ^ v265 ^ v268 ^ (v244 >> 6) ^ 0xC284907 ^ LODWORD(STACK[0x328]);
  v278 = v277 ^ 0xA92C0F8D;
  v279 = (v277 >> 21) ^ 0x473F7E11;
  v280 = LODWORD(STACK[0x2F0]) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x6C0])) ^ (4 * LODWORD(STACK[0x2F0])) ^ (32 * LODWORD(STACK[0x2F0])) ^ (LODWORD(STACK[0x2F0]) << 11) ^ LODWORD(STACK[0x2E8]) ^ (4 * LODWORD(STACK[0x2E8])) ^ (32 * LODWORD(STACK[0x2E8])) ^ (LODWORD(STACK[0x2E8]) << 11) ^ __ROR4__(STACK[0x2F4], 25);
  LODWORD(v261) = ((v217 << 31) | 0x48578CED) ^ LODWORD(STACK[0x32C]) ^ LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x358]);
  v281 = (v219 << 14) ^ 0x514A15;
  LODWORD(STACK[0x358]) = v281;
  v282 = v280 ^ v219 ^ (v219 << 12) ^ v261 ^ LODWORD(STACK[0x53C]) ^ LODWORD(STACK[0x530]) ^ v281;
  v283 = (v219 << 19) ^ 0x4A09BB02;
  LODWORD(STACK[0x34C]) = v283;
  LODWORD(v261) = LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x540]) ^ v283 ^ LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x330]);
  v284 = (v219 << 28) ^ 0x8A2F701B;
  LODWORD(STACK[0x348]) = v284;
  v285 = v282 ^ v261 ^ LODWORD(STACK[0x52C]) ^ v284 ^ v221 ^ (32 * v221) ^ (4 * v221) ^ (v221 << 11) ^ v222 ^ (4 * v222) ^ (32 * v222) ^ (v222 << 11);
  v286 = (v244 << 7) ^ 0xDA7216A8;
  LODWORD(STACK[0x334]) = v286;
  v287 = (v244 << 10) ^ 0x9813BCD5;
  LODWORD(STACK[0x32C]) = v287;
  v288 = (v244 << 11) ^ 0x21E2506C;
  LODWORD(STACK[0x330]) = v288;
  LODWORD(v261) = (4 * v244) ^ 0x3F475818 ^ (8 * v244) ^ 0x2CE03F63 ^ v286 ^ v287;
  LODWORD(STACK[0x2F4]) = v261;
  v289 = v285 ^ (v244 << 8) ^ (v244 << 23) ^ (v244 << 27) ^ v261 ^ v288;
  v290 = (v244 << 13) ^ 0x5E7812D7;
  v291 = (v244 << 20) ^ 0xEBCA74B8;
  v292 = (v244 << 16) ^ 0xE280E016;
  LODWORD(STACK[0x4D0]) = v292;
  v293 = (v244 << 22) ^ 0xBE313480;
  LODWORD(STACK[0x2F0]) = v293;
  v294 = (v244 << 18) ^ 0xDB061B3E;
  LODWORD(STACK[0x328]) = v294;
  v295 = (v244 << 21) ^ 0x1349817B;
  LODWORD(STACK[0x320]) = v295;
  LODWORD(STACK[0x274]) = v290;
  LODWORD(STACK[0x278]) = v291;
  v296 = v289 ^ v290 ^ v292 ^ v294 ^ v291 ^ v295 ^ v293;
  v297 = (v244 << 24) ^ 0xD7036807;
  LODWORD(STACK[0x290]) = v297;
  v298 = (v244 << 25) ^ 0x184F0691;
  v299 = (v244 << 26) ^ 0xB39891B8;
  LODWORD(STACK[0x270]) = v298;
  LODWORD(STACK[0x284]) = v299;
  LODWORD(STACK[0x244]) = v296 ^ v297 ^ v298 ^ v299 ^ v278 ^ (4 * v278) ^ (32 * v278) ^ (v278 << 11) ^ (4 * v279) ^ (32 * v279) ^ (v279 << 11) ^ v274;
  v300 = v258 ^ v246 ^ 0x65F6679D;
  v301 = (((2 * v300) ^ (4 * v300) ^ 0x657FC07A) - ((2 * ((2 * v300) ^ (4 * v300) ^ 0x657FC07A)) & 0xBC832A4C) + 1581356327) ^ (8 * v300) ^ 0xD2EB6A7F;
  v302 = (v258 >> 30) ^ 0x60A151CD ^ ((v258 >> 31) | 0x60A151CC);
  v303 = (v301 - ((2 * v301) & 0x6CDFBDC0) - 1234182432) ^ (v300 << 6) ^ 0xD3382420;
  v304 = ((v302 | 0xD9758468) - 2 * v302 + 3) ^ ((v258 >> 29) | 0xD9758468);
  v305 = (v304 + 1867389791 + (~(2 * v304) | 0xA163C943)) ^ (v258 >> 15) ^ 0x6F4EF398;
  v306 = (v258 >> 26) ^ 0x5608F9DE ^ (v305 - ((2 * v305) & 0x2C11F386) + 1443428803);
  v307 = (((v303 - ((2 * v303) & 0xE5110ACE) - 225933977) ^ (v300 << 17) ^ 0x4D5E8567) - 2 * (((v303 - ((2 * v303) & 0xE5110ACE) - 225933977) ^ (v300 << 17) ^ 0x4D5E8567) & 0x7049DD9F ^ (v303 - ((2 * v303) & 0xE5110ACE) - 225933977) & 0x10) + 1883889039) ^ (v300 << 24) ^ 0x9B49DD8F;
  v308 = (v307 - ((2 * v307) & 0xCFA87096) - 405522357) ^ (v300 << 22) ^ 0x1D14384B;
  v309 = v306 - ((2 * v306) & 0x489305A4) + 1682539218;
  v310 = v258 ^ v246 ^ 0xB1C2341F;
  v311 = (v310 >> 8) ^ (v310 >> 3) ^ (v310 >> 10) ^ v309;
  v312 = (v258 >> 25) ^ 0x38EBC179 ^ ((v311 ^ 0x7C096A10) - 2 * ((v311 ^ 0x7C096A10) & 0x38EBC14B ^ v311 & 8) + 954974531);
  v313 = (v258 >> 22) ^ 0x4841A80;
  v314 = (v312 - ((2 * v312) & 0x90836A2) + 75766609) ^ v313;
  v315 = (v258 >> 19) ^ 0x17F39B63;
  v316 = (v314 - ((2 * v314) & 0x2FE72BDE) + 401839599) ^ v315;
  v317 = (v258 >> 18) ^ 0x854486B5;
  v318 = (v316 - ((2 * v316) & 0xA89375A) - 2059101267) ^ v317;
  v319 = HIWORD(v258) ^ 0xD179F0B9;
  v320 = (v318 - ((2 * v318) & 0xA2F309B4) - 780565286) ^ v319;
  v321 = (v258 >> 12) ^ (v310 >> 7) ^ ((v258 ^ v246) >> 6) ^ ((v258 ^ v246) >> 4) ^ 0x1F100F03;
  v322 = (v308 - ((2 * v308) & 0x9CCC1BB4) + 1315311066) ^ (v300 << 29) ^ 0x2E660DDA;
  v323 = v322 - ((2 * v322) & 0xEA377694) - 182731958;
  v324 = v321 ^ (v320 - ((2 * v320) & 0x38E1EB78) - 1670318660);
  v325 = v324 ^ 0x8D566B35;
  v326 = (v323 ^ (4 * (v324 ^ 0x8D566B35)) ^ 0xD1AF1056) - 2099926797 + ~(2 * ((v323 ^ (4 * (v324 ^ 0x8D566B35)) ^ 0xD1AF1056) & 0x2D5A8F3 ^ v308 & 1));
  v327 = (v324 >> 21) ^ (v324 >> 27) ^ 0x433;
  v328 = v300 ^ (v300 << 7) ^ 0x196140B8;
  LODWORD(STACK[0x2E8]) = v328;
  v329 = v328 ^ ((v324 ^ 0x8D566B35) << 11) ^ (4 * v327) ^ (32 * v327) ^ (v327 << 11) ^ (((32 * (v324 ^ 0x8D566B35)) ^ 0xA770F012 ^ v326) - 2 * (((32 * (v324 ^ 0x8D566B35)) ^ 0xA770F012 ^ v326) & 0x5E66BB93 ^ v326 & 1) - 563692654);
  v330 = (v300 << 10) ^ 0x56C7C211;
  LODWORD(STACK[0x2E0]) = v330;
  v331 = ((v329 ^ 0x756B6941) + 62418449 - 2 * ((v329 ^ 0x756B6941) & 0x3B86E1B ^ v329 & 0xA)) ^ v330;
  v332 = (v300 << 14) ^ 0xA7371238;
  LODWORD(STACK[0x2E4]) = v332;
  v333 = (v331 - ((2 * v331) & 0xE19BA470) - 254946760) ^ v332;
  v334 = (v300 << 13) ^ 0x11921983;
  LODWORD(STACK[0x2D4]) = v334;
  v335 = (v333 - ((2 * v333) & 0x74DEF306) - 1167099517) ^ v334;
  v336 = (v300 << 16) ^ 0x7290812C;
  LODWORD(STACK[0x2BC]) = v336;
  v337 = (v335 - ((2 * v335) & 0x5AF70258) + 763068716) ^ v336;
  v338 = (v300 << 20) ^ 0x4B27B0EB;
  LODWORD(STACK[0x2B8]) = v338;
  v339 = (v337 - ((2 * v337) & 0x6B2F61D6) - 1248349973) ^ v338;
  v340 = (v300 << 25) ^ 0x558AE192;
  LODWORD(STACK[0x2A8]) = v340;
  v341 = ((v339 - ((2 * v339) & 0x715C324) - 2088050286) ^ v340) - 2 * (((v339 - ((2 * v339) & 0x715C324) - 2088050286) ^ v340) & 0x6619F0B6 ^ (v339 - ((2 * v339) & 0x715C324) - 2088050286) & 4);
  v342 = (v300 << 26) ^ (v300 << 28) ^ 0xCA19F0B2;
  LODWORD(STACK[0x2B4]) = v342;
  v343 = v342 ^ v325 ^ (v327 - ((2 * v327) & 0x39A) + 283158989) ^ 0xA9CD830A ^ (v341 + 1712976050);
  LODWORD(STACK[0x4DC]) = v343;
  v344 = (((v258 >> 21) ^ (v258 >> 20) ^ 0x4E5) - ((2 * ((v258 >> 21) ^ (v258 >> 20) ^ 0x4E5)) & 0x1472) + 2130471481) ^ (v258 >> 14) ^ 0x7EFDBBB5;
  v345 = (v344 - ((2 * v344) & 0x2AB251C) - 648703346) ^ (v258 >> 13) ^ 0xD9563197;
  v346 = ((v258 ^ v246) >> 1) ^ (v258 >> 11) ^ (v345 - ((2 * v345) & 0x1B96D122) - 1916049263);
  LODWORD(STACK[0x288]) = v346;
  v347 = (((v258 >> 25) ^ 0xB7F478F7 ^ v346) - ((2 * ((v258 >> 25) ^ 0xB7F478F7 ^ v346)) & 0x90836A2) + 75766609) ^ v313;
  v348 = (v347 - ((2 * v347) & 0x2FE72BDE) + 401839599) ^ v315;
  v349 = (v348 - ((2 * v348) & 0xA89375A) - 2059101267) ^ v317;
  v350 = (v349 - ((2 * v349) & 0xA2F309B4) - 780565286) ^ v319;
  v351 = v321 ^ (v350 - ((2 * v350) & 0x38E1EB78) - 1670318660);
  LODWORD(STACK[0x26C]) = v351 >> 21;
  LOBYTE(v350) = ((v351 & 0x200000) != 0) ^ ((v351 >> 21) & 0xD | 0x40) & ((v351 >> 21) & 0xD ^ 0xCE);
  v352 = STACK[0x244];
  v353 = LODWORD(STACK[0x244]) ^ v279;
  v354 = v353 ^ 0xDFC9642;
  v355 = ((v353 >> 30) | 0xA74A74C4) ^ (v353 >> 29) ^ 0x10A6831;
  LODWORD(STACK[0x248]) = v355;
  v356 = (v353 ^ 0xC7FFD2B) << ((v350 & 1) == 0) << ((v350 ^ 0x4C) & 0x1E);
  v357 = (v353 >> 13) ^ (v353 >> 15) ^ (v353 >> 18) ^ (v353 >> 28) ^ (v353 >> 27) ^ (v353 >> 4) ^ (v353 >> 2) ^ 0x99256A0C;
  v358 = (v353 >> 21) ^ 0x1F43FD9;
  LODWORD(STACK[0x25C]) = v358;
  v359 = (v353 >> 19) ^ 0xBE5D8120;
  LODWORD(STACK[0x260]) = v359;
  v360 = (v353 >> 14) ^ 0xE1693FCC;
  LODWORD(STACK[0x258]) = v360;
  v361 = (v353 >> 11) ^ 0xC5781ED;
  LODWORD(STACK[0x264]) = v361;
  v362 = v359 ^ v358 ^ v360 ^ v361;
  v363 = (v353 >> 5) ^ 0x1B5F04B0;
  LODWORD(STACK[0x254]) = v363;
  v364 = (v353 >> 10) ^ 0x17473C87;
  LODWORD(STACK[0x24C]) = v364;
  v365 = (v353 >> 9) ^ 0xE5894891;
  LODWORD(STACK[0x250]) = v365;
  v366 = v362 ^ v364 ^ v365 ^ v363;
  v367 = (v353 >> 6) ^ 0xBB65A982;
  v368 = v366 ^ v367 ^ v355;
  v369 = (v244 << 14) ^ 0xA555C3B7;
  LODWORD(STACK[0x27C]) = v369;
  v370 = v244 ^ (2 * v244) ^ (v244 << 6) ^ (v244 << 17) ^ (v244 << 29) ^ LODWORD(STACK[0x2F4]) ^ (v244 << 13) ^ 0x5E7812D7 ^ v369 ^ LODWORD(STACK[0x4D0]);
  v371 = (v244 << 20) ^ 0xEBCA74B8 ^ LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x290]);
  v372 = (v244 << 28) ^ 0x97D0A752;
  LODWORD(STACK[0x280]) = v372;
  v373 = v370 ^ v371 ^ v299 ^ v298 ^ v372 ^ LODWORD(STACK[0x294]) ^ (4 * LODWORD(STACK[0x294])) ^ (32 * LODWORD(STACK[0x294])) ^ (LODWORD(STACK[0x294]) << 11) ^ v272 ^ (4 * v272) ^ (32 * v272) ^ (v272 << 11);
  v374 = (v354 << 11) ^ 0xD0463281 ^ (v354 << 18) ^ 0x94E72197 ^ (v354 << 21) ^ 0xB1F1859E ^ (v354 << 22) ^ 0x4DC0202D ^ (v354 << 23) ^ 0x949CF02C ^ (v354 << 26) ^ 0x58131354 ^ (v354 << 27) ^ 0x923A319A ^ (4 * v354) ^ (8 * v354) ^ 0x15482C99;
  LODWORD(STACK[0x268]) = v374;
  v375 = v368 ^ v357;
  v376 = v373 ^ (v354 << 30) ^ (v354 << 28) ^ (32 * v354) ^ (16 * v354) ^ (v354 << 14) ^ (v354 << 17) ^ (v354 << 19) ^ v374 ^ v368 ^ v357 ^ 0x850D6667 ^ v356;
  LODWORD(v148) = __ROR4__(((v352 >> 31) | (v357 >> 27 << 30)) ^ 0xB7862FB8 ^ ((v375 >> 23) ^ 0xE0D2B25D) & (~(v375 << 9) | 0x3FFFFFFF), 30);
  v377 = v376 ^ -v376 ^ (((((4 * v375) ^ 0x940ABA7A) - 466024738) ^ (((4 * v375) ^ 0xDBDDFD82) - 1410449114) ^ (((4 * v375) ^ 0xBDF66634) - 842671468)) - (((v376 ^ (4 * v375) ^ 0xDA8B7146) - 2062881800) ^ ((v376 ^ (4 * v375) ^ 0xFC238EE9) - 1549659047) ^ ((v376 ^ (4 * v375) ^ 0xD489DE63) - 1962392365)) + 730734098);
  v378 = (v375 << 11) ^ (32 * v375) ^ (4 * (v148 ^ 0x8F5C37DD)) ^ (32 * (v148 ^ 0x8F5C37DD)) ^ ((v148 ^ 0x8F5C37DD) << 11) ^ (((((4 * v375) ^ 0x1ABB064) + 1905790148) ^ (((4 * v375) ^ 0x637B34CC) + 323520620) ^ (((4 * v375) ^ 0x90F1A564) - 524150332)) + 1110570929 + (((v377 ^ 0x5FA2217C) + 1679379359) ^ ((v377 ^ 0xB616E959) - 1918008388) ^ ((v377 ^ 0xE9B4C825) - 770727224)));
  LODWORD(STACK[0x290]) = v378;
  v379 = v378 ^ v148 ^ 0x8F5C37DD;
  v380 = STACK[0x684];
  LODWORD(STACK[0x294]) = STACK[0x688];
  v381 = v379 ^ (-1673081951 * v380 - 1663319554);
  LODWORD(STACK[0x2F4]) = v381;
  v382 = STACK[0x62C];
  LODWORD(STACK[0x244]) = STACK[0x630];
  v383 = v343 ^ (-1673081951 * v382 - 1663319554);
  LODWORD(STACK[0x2F0]) = v383;
  v384 = STACK[0x598];
  v384[622] = HIBYTE(v383) ^ 0x72;
  v384[(v381 & 0x2D ^ 1) + 512 + (v381 & 0x2D ^ 0x2C)] = BYTE2(v383) ^ 0x72;
  v385 = LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x404]) ^ LODWORD(STACK[0x410]);
  v386 = LODWORD(STACK[0x454]) ^ (LODWORD(STACK[0x404]) >> 26) ^ LODWORD(STACK[0x458]) ^ 0xA2710D56;
  v387 = (LODWORD(STACK[0x404]) >> (v385 & 0xA ^ 2) >> (~v385 & 8) >> (v385 & 2)) ^ (LODWORD(STACK[0x404]) >> (v386 & 2 ^ 2) >> (v386 & 0x10 ^ 0x10) >> (v386 & 2) >> (v386 & 0x10));
  v388 = LODWORD(STACK[0x444]) ^ (LODWORD(STACK[0x404]) << 6) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x434]) ^ LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x428]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x450]) ^ v385;
  v389 = (v388 ^ 0x610001A) & (LODWORD(STACK[0x44C]) ^ 0x7410275E) ^ v388 & 0x7410275E;
  v390 = (((LODWORD(STACK[0x44C]) ^ 0xEB1BCC9D) + 154896084) ^ ((LODWORD(STACK[0x44C]) ^ 0xE41CC4F0) + 104631999) ^ ((LODWORD(STACK[0x44C]) ^ 0xF07086D) - 316194268)) + (((v388 ^ 0x71BACD61) - 1447416205) ^ ((v388 ^ 0xA19FA3FB) + 2040479977) ^ ((v388 ^ 0xD6B07E00) + 246455572)) - ((((2 * v389) ^ 0xFAC2C18A) - 1296418594) ^ (((2 * v389) ^ 0xD267C658) - 1709228272) ^ (((2 * v389) ^ 0x208507E6) + 1761476274)) + 2141371275;
  v392 = LODWORD(STACK[0x424]) ^ (LODWORD(STACK[0x404]) >> 3) ^ LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x46C]) ^ LODWORD(STACK[0x464]) ^ LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x494]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x528]) ^ v386 ^ v387;
  v393 = v392 ^ 0x49E2D396;
  v394 = (v387 >> 30) ^ (v392 >> 21) ^ (v392 >> 27) ^ 0x3B272873;
  v395 = (LODWORD(STACK[0x370]) >> 15) ^ (LODWORD(STACK[0x370]) >> 26) ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x3B0]) ^ LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x4F0]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x37C]) ^ ((LODWORD(STACK[0x40C]) >> 31) | 0x26A48694) ^ (v154 >> 3) ^ LODWORD(STACK[0x378]) ^ LODWORD(STACK[0x414]);
  v396 = v395 ^ LODWORD(STACK[0x388]);
  v397 = v396 ^ 0x38B8C665;
  v398 = (v396 >> 21) ^ (v395 >> 27);
  v399 = v154 ^ (2 * v154) ^ (v154 << 6) ^ (v154 << 17) ^ (v154 << 29) ^ LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x3E4]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x364]) ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x368]) ^ v396 ^ 0x38B8C665 ^ (4 * (v396 ^ 0x38B8C665));
  v400 = 32 * (v396 ^ 0x38B8C665);
  v401 = (v399 ^ 0x2BDA5244) & (v400 ^ 0x2D46D2A5) ^ v399 & 0x4D726505;
  v402 = ((v400 ^ 0x547E9205) - 1994966640) ^ ((v400 ^ 0x80366113) + 1566558874) ^ ((v400 ^ 0xB47C44B6) + 1763045181);
  v403 = v398 ^ 0xBBB4150;
  v404 = ((v398 ^ 0x89192844) & ((v397 << 11) ^ 0x823247FF) | (v397 << 11) & 0x76E6D000) ^ (4 * (v398 ^ 0xBBB4150)) ^ 0xA3D0FECF ^ (v402 + (((v399 ^ 0x413DCC2D) - 1673155668) ^ ((v399 ^ 0x6F84A4DB) - 1292057762) ^ ((v399 ^ 0x5633ABA) - 669295299)) - ((((2 * v401) ^ 0xD9E0DA10) - 507549521) ^ (((2 * v401) ^ 0x8977727A) - 1322729275) ^ (((2 * v401) ^ 0x42332862) + 2053937885)) + 1996218561);
  v405 = v404 - ((2 * v404) & 0x96C17728) - 882852972;
  LOBYTE(v404) = v154 & 2 ^ 0xF7 ^ (v154 & 0x12 ^ 0x38) & (v154 | 0x28);
  v406 = (LODWORD(STACK[0x4D8]) ^ 0x338CC30B) << (v404 & 0x10) << (v404 & 0xCF ^ 0xC9);
  v408 = (LODWORD(STACK[0x4E4]) >> 28) ^ (LODWORD(STACK[0x4E4]) >> 27) ^ (LODWORD(STACK[0x4E4]) >> 15) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x3DC]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x51C]) ^ (LODWORD(STACK[0x4D4]) >> 2) ^ LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x484]) ^ LODWORD(STACK[0x47C]) ^ LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x3CC]);
  v409 = v408 ^ 0xB5DC384A;
  v410 = (v408 >> 27) ^ (v408 >> 21) ^ 0xB8D38B07;
  v411 = LODWORD(STACK[0x310]) ^ (16 * v229);
  v412 = (32 * v229) & 0x40000;
  v413 = (v412 & ~v411) == 0;
  v414 = v411 ^ 0x6B4F1C58;
  if (!v413)
  {
    v412 = -v412;
  }

  v415 = v412 + v414;
  v416 = LODWORD(STACK[0x374]) ^ LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x3BC]);
  v417 = v416 ^ 0xA;
  v418 = ((4 * (v416 ^ 0xA)) ^ 0x3DEC0704) - ((2 * ((4 * (v416 ^ 0xA)) ^ 0x3DEC0704)) & 0x999CC4E8) + 1288594036;
  v419 = v416 ^ 0xEDADDFBF;
  v420 = LODWORD(STACK[0x3EC]) ^ (v416 >> 21) ^ 0x18A078B4;
  v421 = (v403 << 11) ^ (32 * v403) ^ v405 ^ (LODWORD(STACK[0x3F0]) << 30) ^ (v224 << 28) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x35C]) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x344]) ^ (v229 << 14) ^ (v229 << 17) ^ (v229 << 19) ^ LODWORD(STACK[0x3A8]) ^ (32 * v229) & 0xFFFBFFE0 ^ LODWORD(STACK[0x33C]) ^ LODWORD(STACK[0x338]) ^ v415 ^ (32 * v417) ^ (v419 << 11) ^ 0xC431CC54 ^ v418;
  v422 = (v421 - ((2 * v421) & 0x9F89E9D0) - 809175832) ^ (4 * v420) ^ 0xAD4507C8;
  v423 = v422 - ((2 * v422) & 0xC8F18B9E) + 1685636559;
  v424 = (LODWORD(STACK[0x4E0]) >> 20) ^ (LODWORD(STACK[0x4E0]) >> 13) ^ (v244 >> 1) ^ LODWORD(STACK[0x314]);
  v425 = LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x474]) ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x318]) ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x30C]) ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x304]) ^ v424 ^ 0x82AC67E2;
  v426 = (v244 >> 31) ^ (v424 >> 27) ^ (v425 >> 21) ^ 0x39815F41;
  v427 = (((v300 << 11) ^ (v300 << 12) ^ 0xFF01E800) - ((2 * ((v300 << 11) ^ (v300 << 12) ^ 0xFF01E800)) & 0xF1DAF000) + 2028829947) ^ (v300 << 18) ^ 0x7417CFB;
  v428 = (v427 - ((2 * v427) & 0x3048AEC0) - 1742448800) ^ (v300 << 19) ^ 0x677C5760;
  v429 = LODWORD(STACK[0x2E8]) ^ (v300 << 31) ^ (v300 << 21) ^ 0xC42EE34A ^ (v428 - ((2 * v428) & 0xF62A1332) + 2064976281);
  v430 = (v429 - ((2 * v429) & 0x770DC22) + 62418449) ^ LODWORD(STACK[0x2E0]);
  v431 = (v430 - ((2 * v430) & 0x74DEF306) - 1167099517) ^ LODWORD(STACK[0x2D4]);
  v432 = (v431 - ((2 * v431) & 0xE19BA470) - 254946760) ^ LODWORD(STACK[0x2E4]);
  v433 = (v432 - ((2 * v432) & 0x5AF70258) + 763068716) ^ LODWORD(STACK[0x2BC]);
  v434 = (v433 - ((2 * v433) & 0x6B2F61D6) - 1248349973) ^ LODWORD(STACK[0x2B8]);
  v435 = v351 ^ 0x7268A3FA;
  v436 = LODWORD(STACK[0x26C]) ^ (LODWORD(STACK[0x288]) >> 30) ^ ((v351 >> 27) | 0xCA203560) ^ 0xDC85DDE9;
  v437 = LODWORD(STACK[0x2B4]) ^ v420 ^ v419 ^ (v420 << 11) ^ (32 * v420) ^ v423 ^ v435 ^ (4 * v435) ^ (32 * v435) ^ (v435 << 11) ^ v436 ^ (4 * v436) ^ (32 * v436) ^ (v436 << 11) ^ (((v434 - ((2 * v434) & 0x715C324) - 2088050286) ^ LODWORD(STACK[0x2A8])) - 2 * (((v434 - ((2 * v434) & 0x715C324) - 2088050286) ^ LODWORD(STACK[0x2A8])) & 0x6619F0BB ^ (v434 - ((2 * v434) & 0x715C324) - 2088050286) & 9) + 1712976050);
  v438 = (v353 >> 8) ^ (v353 >> 7) ^ HIBYTE(v353) ^ (v353 >> 25) ^ (v353 >> 22) ^ (v353 >> 17) ^ HIWORD(v353) ^ (v353 >> 12) ^ LODWORD(STACK[0x25C]) ^ LODWORD(STACK[0x260]) ^ LODWORD(STACK[0x258]) ^ LODWORD(STACK[0x264]) ^ LODWORD(STACK[0x24C]) ^ LODWORD(STACK[0x250]) ^ v367 ^ LODWORD(STACK[0x254]) ^ LODWORD(STACK[0x248]);
  v407 = STACK[0x4D4];
  v391 = (LODWORD(STACK[0x404]) << 29) | 0x634AF8D;
  v439 = LODWORD(STACK[0x448]) ^ v391 ^ LODWORD(STACK[0x548]) ^ v393 ^ v390 ^ (4 * v393) ^ (v393 << 11) ^ (32 * v393) ^ v394 ^ (4 * v394) ^ (32 * v394) ^ (v394 << 11) ^ (32 * v407) ^ (16 * v407) ^ (v407 << 17) ^ (v407 << 30) ^ v406 ^ LODWORD(STACK[0x53C]) ^ LODWORD(STACK[0x530]) ^ LODWORD(STACK[0x358]) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x52C]) ^ LODWORD(STACK[0x49C]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x4AC]) ^ v409 ^ (4 * v409) ^ (32 * v409) ^ (v409 << 11) ^ v410 ^ (4 * v410) ^ (32 * v410) ^ (v410 << 11) ^ v244 ^ (v244 << 19) ^ (v244 << 12) ^ ((v244 << 31) | 0x16B419F8) ^ LODWORD(STACK[0x32C]) ^ LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x274]) ^ LODWORD(STACK[0x27C]) ^ LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x284]) ^ LODWORD(STACK[0x280]) ^ v425 ^ (32 * v425) ^ (v425 << 11) ^ (4 * v425) ^ v426 ^ (4 * v426) ^ (32 * v426) ^ (v426 << 11) ^ (v354 << 8) ^ (v354 << 7) ^ (v354 << 10) ^ (v354 << 13) ^ (v354 << 15) ^ (v354 << 16) ^ (v354 << 20) ^ (v354 << 24) ^ (v354 << 25);
  v440 = v439 ^ LODWORD(STACK[0x268]) ^ v438 ^ 0xEBF5DD5D ^ (4 * (v438 ^ 0xEBF5DD5D)) ^ (32 * (v438 ^ 0xEBF5DD5D)) ^ ((v438 ^ 0xEBF5DD5D) << 11);
  v441 = v438 >> 21;
  v442 = v440 & 0x10;
  v413 = v442 == (v442 & (v438 >> 21));
  v443 = (v438 >> 21) ^ 0xF668E44A;
  v444 = v441 ^ 0x533;
  if (!v413)
  {
    v442 = -v442;
  }

  v445 = (32 * v443) ^ (4 * v443) ^ (v443 << 11) ^ v440 & 0xFFFFFFEF ^ (v442 + v444);
  v446 = STACK[0x668];
  LODWORD(STACK[0x514]) = STACK[0x664];
  v447 = v445 ^ (-1673081951 * v446 - 1663319554);
  *v384 = HIBYTE(v447) ^ 0xC6;
  v448 = v437 ^ (-1673081951 * LODWORD(STACK[0x244]) - 1663319554);
  v384[167] = v448 ^ 0x71;
  v384[232] = BYTE1(v448) ^ 0xAE;
  v449 = STACK[0x678];
  v450 = v379 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x674]));
  v384[202] = HIBYTE(v450) ^ 0x7A;
  v451 = STACK[0x638];
  v452 = LODWORD(STACK[0x4DC]) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x634]));
  v384[102] = HIBYTE(v452) ^ 0x72;
  v384[72] = BYTE1(v450) ^ 0x9C;
  v384[37] = BYTE2(v452) ^ 0x72;
  v384[137] = BYTE2(v450) ^ 0xB8;
  v384[7] = v450 ^ 0x93;
  v453 = v437 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x640]));
  v384[239] = BYTE2(v453) ^ 0x4F;
  v384[174] = BYTE1(v453) ^ 0xAE;
  v384[109] = v453 ^ 0x71;
  v454 = STACK[0x670];
  v455 = v379 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x66C]));
  LODWORD(STACK[0x210]) = v379;
  v456 = v445 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x680]));
  v384[((v455 & 0xD1 ^ 0x40) + (v455 & 0xD1 ^ 0x91))] = v456 ^ 4;
  v457 = v445 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x6A0]));
  LODWORD(STACK[0x52C]) = v457;
  LODWORD(STACK[0x4E4]) = -1783454741 * ((((v457 & 0x7E936618 ^ 0xC6812B52) + 1831663464) ^ ((v457 & 0x7E936618 ^ 0x8C2BBB2E) + 663119644) ^ ((v457 & 0x7E936618 ^ 0xC39927C) - 1483452854)) + (((v457 & 0x7E936618 ^ 0xE34A2484) - 1211946357) ^ ((v457 & 0x7E936618 ^ 0x3864EF7F) + 1827529074) ^ ((v457 & 0x7E936618 ^ 0xE32EAFE3) - 1213750802))) - 124609967;
  v458 = STACK[0x4C0] - 0x7DD2E9523CAB0EA6;
  v459 = (v244 & 0x9C46CBA1 ^ 0x371E83D7) & (v244 & 0x9C46CBA1 ^ 0x3F7B717F) ^ v244 & 0x94020901;
  v460 = (((v459 ^ 0xCD4291B5) - 83008997) ^ ((v459 ^ 0x1A26E44C) + 745084900) ^ ((v459 ^ 0x7C38BF0F) + 1249332385)) + 1659684518;
  v461 = v379 ^ 0x67AFB2E3;
  v462 = -1663319554 - 1673081951 * LODWORD(STACK[0x6AC]);
  HIDWORD(v463) = v379 ^ 0x67AFB2E3 ^ v462;
  LODWORD(v463) = LODWORD(STACK[0x290]) ^ v462;
  v464 = STACK[0x5C4];
  LODWORD(STACK[0x4F0]) = v460 * LODWORD(STACK[0x5C8]) - 1663319554;
  LODWORD(STACK[0x448]) = (v463 >> 24) ^ 0x97BD6A8C;
  v465 = -1673081951 * LODWORD(STACK[0x294]) + 1560360121;
  v466 = -1673081951 * LODWORD(STACK[0x294]) - 1663319554;
  LODWORD(STACK[0x49C]) = v466;
  v467 = ~(((1560360122 - v465) | v466) - ((2 * ((1560360122 - v465) | v466)) & 0xFFFFFFF7) + 59) & 0x39;
  v468 = STACK[0x64C];
  v469 = STACK[0x650];
  v470 = STACK[0x64C] & 0x8A;
  v471 = *(v458 + 4 * v467);
  v472 = *(v458 + 4 * (((((v470 ^ 0xA4) + 121) ^ (v470 - 33) ^ ((v470 ^ 0xE5) + 58)) + (((v470 ^ 0x53) + 123) ^ ((v470 ^ 0xB5) - 99) ^ ((v470 ^ 0x6C) + 70)) + 47) & 0xFE));
  LODWORD(STACK[0x4D8]) = -1663319554 - 1673081951 * *v458;
  v473 = STACK[0x5E4];
  LODWORD(STACK[0x51C]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5E8]);
  LODWORD(v458) = STACK[0x604];
  LODWORD(STACK[0x4AC]) = -1663319554 - 1673081951 * LODWORD(STACK[0x608]);
  v474 = STACK[0x5B0];
  LODWORD(STACK[0x4D4]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5AC]);
  v475 = STACK[0x610];
  LODWORD(STACK[0x494]) = -1663319554 - 1673081951 * LODWORD(STACK[0x60C]);
  v476 = STACK[0x5D0];
  LODWORD(STACK[0x488]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5CC]);
  v477 = STACK[0x5EC];
  LODWORD(STACK[0x510]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5F0]);
  LODWORD(STACK[0x518]) = -1663319554 - 1673081951 * v477;
  LODWORD(STACK[0x484]) = -1663319554 - 1673081951 * v476;
  LODWORD(STACK[0x4C0]) = -1663319554 - 1673081951 * v474;
  v478 = STACK[0x5F8];
  LODWORD(STACK[0x540]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5F4]);
  LODWORD(STACK[0x480]) = -1663319554 - 1673081951 * v475;
  v479 = STACK[0x5B4];
  LODWORD(STACK[0x4B0]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5B8]);
  LODWORD(STACK[0x4A0]) = -1663319554 - 1673081951 * v479;
  v480 = STACK[0x5D8];
  LODWORD(STACK[0x46C]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5D4]);
  v481 = STACK[0x618];
  LODWORD(STACK[0x474]) = -1663319554 - 1673081951 * LODWORD(STACK[0x614]);
  LODWORD(STACK[0x478]) = -1663319554 - 1673081951 * v480;
  v482 = STACK[0x5C0];
  LODWORD(STACK[0x438]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5BC]);
  LODWORD(STACK[0x508]) = -1663319554 - 1673081951 * v478;
  v483 = STACK[0x600];
  LODWORD(STACK[0x500]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5FC]);
  LODWORD(STACK[0x524]) = -1663319554 - 1673081951 * v481;
  v484 = STACK[0x5E0];
  LODWORD(STACK[0x468]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5DC]);
  LODWORD(STACK[0x470]) = -1663319554 - 1673081951 * v482;
  v485 = STACK[0x620];
  LODWORD(STACK[0x530]) = -1663319554 - 1673081951 * LODWORD(STACK[0x61C]);
  LODWORD(STACK[0x458]) = -1663319554 - 1673081951 * v484;
  LODWORD(STACK[0x4F8]) = -1663319554 - 1673081951 * v483;
  LODWORD(STACK[0x520]) = -1663319554 - 1673081951 * v485;
  LODWORD(STACK[0x464]) = -1663319554 - 1673081951 * v464;
  LODWORD(STACK[0x548]) = -1663319554 - 1673081951 * v473;
  v486 = STACK[0x628];
  LODWORD(STACK[0x528]) = -1663319554 - 1673081951 * LODWORD(STACK[0x624]);
  LODWORD(STACK[0x53C]) = -1663319554 - 1673081951 * v458;
  v487 = STACK[0x6A4];
  LODWORD(STACK[0x454]) = -1663319554 - 1673081951 * LODWORD(STACK[0x6A8]);
  v488 = -1663319554 - 1673081951 * v486;
  v489 = -1663319554 - 1673081951 * v451;
  v490 = -1663319554 - 1673081951 * v454;
  v491 = -1663319554 - 1673081951 * v449;
  v492 = -1663319554 - 1673081951 * LODWORD(STACK[0x63C]);
  v493 = -1663319554 - 1673081951 * LODWORD(STACK[0x67C]);
  LODWORD(STACK[0x420]) = -1663319554 - 1673081951 * LODWORD(STACK[0x648]);
  LODWORD(v458) = -1663319554 - 1673081951 * LODWORD(STACK[0x644]);
  LODWORD(STACK[0x424]) = -1663319554 - 1673081951 * v468;
  LODWORD(STACK[0x44C]) = -1663319554 - 1673081951 * v469;
  LODWORD(STACK[0x428]) = -1663319554 - 1673081951 * v471;
  LODWORD(STACK[0x450]) = -1663319554 - 1673081951 * v472;
  v494 = STACK[0x660];
  LODWORD(STACK[0x444]) = -1663319554 - 1673081951 * LODWORD(STACK[0x65C]);
  v495 = STACK[0x658];
  LODWORD(STACK[0x434]) = -1663319554 - 1673081951 * LODWORD(STACK[0x654]);
  v496 = STACK[0x698];
  LODWORD(STACK[0x460]) = -1663319554 - 1673081951 * LODWORD(STACK[0x694]);
  LODWORD(STACK[0x498]) = -1663319554 - 1673081951 * v495;
  LODWORD(STACK[0x47C]) = -1663319554 - 1673081951 * v496;
  LODWORD(STACK[0x4E0]) = -1663319554 - 1673081951 * v494;
  LODWORD(STACK[0x430]) = -1663319554 - 1673081951 * LODWORD(STACK[0x514]);
  LODWORD(STACK[0x4E8]) = -1663319554 - 1673081951 * v487;
  v497 = STACK[0x69C];
  LODWORD(STACK[0x4D0]) = -1663319554 - 1673081951 * LODWORD(STACK[0x69C]);
  v384[917] = BYTE2(v447) ^ 0xBB;
  LOBYTE(v454) = v437 ^ v488;
  v384[882] = ((v437 ^ v488) >> 24) ^ 0xF;
  v384[817] = ((v437 ^ v488) >> 16) ^ 0x4F;
  v384[687] = v437 ^ v488 ^ 0x71;
  v384[787] = v447 ^ 4;
  v384[752] = ((v437 ^ v488) >> 8) ^ 0xAE;
  v384[852] = BYTE1(v447) ^ 0x8B;
  v384[722] = HIBYTE(v455) ^ 0x7A;
  v384[527] = v455 ^ 0x93;
  v498 = STACK[0x2F0];
  v384[492] = BYTE1(LODWORD(STACK[0x2F0])) ^ 0x72;
  v384[657] = BYTE2(v455) ^ 0xB8;
  v384[592] = BYTE1(v455) ^ 0x9C;
  v384[362] = HIBYTE(v448) ^ 0xF;
  v384[297] = BYTE2(v448) ^ 0x4F;
  v384[462] = ((v445 ^ v490) >> 24) ^ 0xC6;
  v384[332] = ((v445 ^ v490) >> 8) ^ 0x8B;
  v384[267] = v445 ^ v490 ^ 4;
  v384[427] = v498 ^ 0x72;
  v384[889] = v452 ^ 0x72;
  v384[954] = BYTE1(v452) ^ 0x72;
  v384[397] = ((v445 ^ v490) >> 16) ^ 0xBB;
  v384[824] = ((v437 ^ v489) >> 24) ^ 0xF;
  v384[924] = ((v445 ^ v491) >> 24) ^ 0xC6;
  v384[759] = ((v437 ^ v489) >> 16) ^ 0x4F;
  v384[794] = ((v445 ^ v491) >> 8) ^ 0x8B;
  v384[694] = ((v437 ^ v489) >> 8) ^ 0xAE;
  v384[729] = v445 ^ v491 ^ 4;
  v384[629] = v437 ^ v489 ^ 0x71;
  v384[859] = BYTE2(v445) ^ BYTE2(v491) ^ 0xBB;
  v499 = STACK[0x210];
  v500 = LODWORD(STACK[0x210]) ^ v493;
  v501 = v384;
  v384[534] = BYTE1(v500) ^ 0x9C;
  v384[599] = BYTE2(v500) ^ 0xB8;
  v502 = STACK[0x4DC];
  v503 = LODWORD(STACK[0x4DC]) ^ v492;
  v384[564] = HIBYTE(v503) ^ 0x72;
  v384[469] = v500 ^ 0x93;
  v384[499] = BYTE2(v503) ^ 0x72;
  v384[434] = BYTE1(v503) ^ 0x72;
  v384[664] = HIBYTE(v500) ^ 0x7A;
  v384[404] = HIBYTE(v456) ^ 0xC6;
  v384[339] = BYTE2(v456) ^ 0xBB;
  v384[369] = v503 ^ 0x72;
  v384[304] = HIBYTE(v453) ^ 0xF;
  v384[274] = BYTE1(v456) ^ 0x8B;
  HIDWORD(v463) = STACK[0x448];
  LODWORD(v463) = STACK[0x448];
  v504 = v463 >> 8;
  LODWORD(STACK[0x514]) = v504 ^ 0x2480931A;
  v505 = STACK[0x2F4];
  v384[79] = HIWORD(LODWORD(STACK[0x2F4])) ^ 0xB8;
  v384[896] = ((v502 ^ v458) >> 8) ^ 0x72;
  v384[44] = ((v502 ^ v458) >> 24) ^ 0x72;
  v384[14] = BYTE1(v505) ^ 0x9C;
  v384[931] = v505 ^ 0x93;
  v384[144] = (v505 ^ 0x7AB89C93u) >> ((((((v504 ^ 0x1A) & 0x1E) + (v504 & 0x1E ^ 4)) & ((((v497 & 0xF9 ^ 0x46) - 125) ^ ((v497 & 0xF9 ^ 0x99) + 94) ^ ((v497 & 0xF9 ^ 0xDF) + 28)) + (((v497 & 0xF9 ^ 0x44) - 6) ^ ((v497 & 0xF9 ^ 0xA) - 72) ^ ((v497 & 0xF9 ^ 0xB7) + 11)) - 10)) - ((2 * ((((BYTE1(v463) ^ 0x1A) & 0x1E) + (BYTE1(v463) & 0x1E ^ 4)) & ((((v497 & 0xF9 ^ 0x46) - 125) ^ ((v497 & 0xF9 ^ 0x99) + 94) ^ ((v497 & 0xF9 ^ 0xDF) + 28)) + (((v497 & 0xF9 ^ 0x44) - 6) ^ ((v497 & 0xF9 ^ 0xA) - 72) ^ ((v497 & 0xF9 ^ 0xB7) + 11)) - 10))) & 0x68) - 12) & 0x7E ^ 0x74);
  v384[831] = v502 ^ v458 ^ ((v448 & 0x72 ^ 2) + (v448 & 0x72 ^ 0x70));
  v384[961] = ((v502 ^ v458) >> 16) ^ 0x72;
  v506 = v437 ^ LODWORD(STACK[0x420]);
  v384[766] = HIBYTE(v506) ^ 0xF;
  LOBYTE(v504) = ((v506 ^ 0x7D3DDC03u) >> LODWORD(STACK[0x4E4])) - ((2 * ((v506 ^ 0x7D3DDC03u) >> LODWORD(STACK[0x4E4]))) & 0x62);
  v507 = v445 ^ LODWORD(STACK[0x49C]);
  v384[866] = HIBYTE(v507) ^ 0xC6;
  v384[701] = BYTE2(v506) ^ 0x4F;
  v508 = v502 ^ LODWORD(STACK[0x424]);
  v384[506] = HIBYTE(v508) ^ 0x72;
  v384[636] = (v504 - 79) ^ 0xC3;
  v384[571] = v506 ^ 0x71;
  v384[801] = BYTE2(v507) ^ 0xBB;
  v384[671] = v507 ^ 4;
  v384[736] = BYTE1(v507) ^ 0x8B;
  v509 = v499 ^ LODWORD(STACK[0x428]);
  v510 = v499;
  v384[606] = HIBYTE(v509) ^ 0x7A;
  v384[441] = BYTE2(v508) ^ 0x72;
  v384[376] = BYTE1(v508) ^ 0x72;
  v384[541] = BYTE2(v509) ^ 0xB8;
  v511 = v502 ^ LODWORD(STACK[0x438]);
  v384[((v511 | 0xEC53881) - (v511 & 0x113AC77E) + 504250203) & 0x122C09DE] = BYTE1(v509) ^ 0x9C;
  v512 = LODWORD(STACK[0x4F0]) ^ 0x7EB4E778;
  v513 = LODWORD(STACK[0x4AC]) ^ 0xA518420C;
  LODWORD(STACK[0x4AC]) = LODWORD(STACK[0x494]) ^ 0x1900DDBB;
  v514 = LODWORD(STACK[0x488]) ^ 0xC2AC78CF;
  v515 = LODWORD(STACK[0x484]) ^ 0xCC61023A;
  v516 = LODWORD(STACK[0x46C]) ^ 0x774B4F0F;
  v517 = LODWORD(STACK[0x480]) ^ 0x17CDA74E;
  v518 = LODWORD(STACK[0x474]) ^ 0xACE7EA7B;
  LODWORD(STACK[0x294]) = v512 ^ v461;
  LODWORD(STACK[0x290]) = v514 ^ v461;
  LODWORD(STACK[0x288]) = v515 ^ v461;
  LODWORD(STACK[0x284]) = v516 ^ v461;
  v519 = v461 ^ LODWORD(STACK[0x478]);
  LODWORD(v458) = v461 ^ LODWORD(STACK[0x468]);
  v520 = v461 ^ LODWORD(STACK[0x458]);
  v521 = v502 ^ LODWORD(STACK[0x4D8]);
  LODWORD(STACK[0x4D4]) ^= v502;
  LODWORD(STACK[0x4D8]) = v502 ^ LODWORD(STACK[0x4C0]);
  LODWORD(STACK[0x280]) = v502 ^ LODWORD(STACK[0x4A0]);
  LODWORD(STACK[0x4E4]) = v502 ^ LODWORD(STACK[0x4B0]);
  LODWORD(STACK[0x4F0]) = v502 ^ LODWORD(STACK[0x470]);
  LODWORD(STACK[0x27C]) = v502 ^ LODWORD(STACK[0x464]);
  v522 = v502 ^ LODWORD(STACK[0x454]);
  v523 = v502 ^ LODWORD(STACK[0x434]);
  v524 = v502 ^ LODWORD(STACK[0x430]);
  v525 = v502 ^ LODWORD(STACK[0x444]);
  v501[311] = v508 ^ 0x72;
  v526 = v437 ^ LODWORD(STACK[0x44C]);
  v501[246] = HIBYTE(v526) ^ 0xF;
  v527 = v445 ^ LODWORD(STACK[0x450]);
  v501[346] = HIBYTE(v527) ^ 0xC6;
  v501[116] = BYTE1(v526) ^ 0xAE;
  v501[411] = v509 ^ 0x93;
  v501[216] = BYTE1(v527) ^ 0x8B;
  v501[51] = v526 ^ 0x71;
  v501[151] = v527 ^ 4;
  v501[281] = BYTE2(v527) ^ 0xBB;
  v528 = v510 ^ LODWORD(STACK[0x460]);
  v501[86] = HIBYTE(v528) ^ 0x7A;
  v501[21] = BYTE2(v528) ^ 0xB8;
  v501[181] = BYTE2(v526) ^ 0x4F;
  v501[968] = HIBYTE(v523) ^ 0x72;
  v501[938] = BYTE1(v528) ^ 0x9C;
  v501[838] = BYTE1(v523) ^ 0x72;
  v501[903] = ((v454 & 0x72 ^ 0x70) + (v454 & 0x72 ^ 2)) ^ BYTE2(v523);
  v501[873] = v528 ^ 0x93;
  v529 = v445 ^ LODWORD(STACK[0x47C]);
  v501[808] = HIBYTE(v529) ^ 0xC6;
  v501[743] = BYTE2(v529) ^ 0xBB;
  v530 = v437 ^ LODWORD(STACK[0x498]);
  v501[643] = BYTE2(v530) ^ 0x4F;
  v501[773] = v523 ^ 0x72;
  v501[708] = HIBYTE(v530) ^ 0xF;
  v501[678] = BYTE1(v529) ^ 0x8B;
  v501[578] = BYTE1(v530) ^ 0xAE;
  v501[613] = v529 ^ 4;
  v501[513] = v530 ^ 0x71;
  v501[448] = HIBYTE(v525) ^ 0x72;
  v501[383] = BYTE2(v525) ^ 0x72;
  v531 = v510 ^ LODWORD(STACK[0x4D0]);
  v501[548] = HIBYTE(v531) ^ 0x7A;
  v532 = STACK[0x52C];
  v501[288] = HIBYTE(LODWORD(STACK[0x52C])) ^ 0xC6;
  v501[318] = (v525 >> ((HIBYTE(v525) & 8 ^ 8) + (HIBYTE(v525) & 8))) ^ 0x72;
  v501[418] = BYTE1(v531) ^ 0x9C;
  v501[253] = v525 ^ 0x72;
  v501[353] = v531 ^ 0x93;
  v533 = v437 ^ LODWORD(STACK[0x4E0]);
  v501[188] = HIBYTE(v533) ^ 0xF;
  v501[483] = BYTE2(v531) ^ 0xB8;
  v501[223] = BYTE2(v532) ^ 0xBB;
  v501[123] = BYTE2(v533) ^ 0x4F;
  v501[975] = v533 ^ 0x71;
  v501[910] = HIBYTE(v524) ^ 0x72;
  v534 = v510 ^ LODWORD(STACK[0x4E8]);
  v501[28] = HIBYTE(v534) ^ 0x7A;
  v501[58] = BYTE1(v533) ^ 0xAE;
  v501[945] = BYTE2(v534) ^ 0xB8;
  v501[158] = BYTE1(v532) ^ 0x8B;
  v501[780] = BYTE1(v524) ^ 0x72;
  v501[815] = v534 ^ 0x93;
  v501[880] = BYTE1(v534) ^ 0x9C;
  v501[845] = BYTE2(v524) ^ 0x72;
  v501[93] = v532 ^ 4;
  v501[715] = v524 ^ 0x72;
  v535 = ((v437 ^ LODWORD(STACK[0x510]) ^ 0xEE6B83BB) + 1528409060) ^ ((v437 ^ LODWORD(STACK[0x510]) ^ 0x1B704384) - 1375573027) ^ ((v437 ^ LODWORD(STACK[0x510]) ^ 0x88261C3C) + 1028928613);
  v536 = v437 ^ LODWORD(STACK[0x51C]);
  v537 = v437 ^ LODWORD(STACK[0x518]);
  v538 = v437 ^ LODWORD(STACK[0x500]);
  v539 = v437 ^ LODWORD(STACK[0x508]);
  v540 = v437 ^ LODWORD(STACK[0x4F8]);
  LODWORD(STACK[0x274]) = (((v536 ^ 0x2B684D87) + 1751274053) ^ ((v536 ^ 0xFA5EDD7B) - 1185627463) ^ ((v536 ^ 0xAC0B4CFF) - 285125827)) + 2121462961;
  LODWORD(STACK[0x270]) = v535 - 535771280;
  LODWORD(STACK[0x26C]) = ((v537 ^ 0xD4C9B8C3) - 1775422044) ^ ((v537 ^ 0xAEF6B064) - 334349051) ^ ((v537 ^ 0x702D4A4) + 1172724165);
  LODWORD(STACK[0x268]) = (v536 & 0x9E761AFF ^ 0x1C341803) + (v536 & 0x9E761AFF ^ 0x824202FC);
  LODWORD(STACK[0x264]) = (((v539 ^ 0x3389D925) - 550241578) ^ ((v539 ^ 0x68A90064) - 2079120491) ^ ((v539 ^ 0x261D0542) - 895015245)) + 1766652982;
  LODWORD(STACK[0x260]) = (((v538 ^ 0xEA99F55A) - 967275072) ^ ((v538 ^ 0xE31EA1A0) - 807413434) ^ ((v538 ^ 0x74BA88F9) + 1484517405)) - 2098594489;
  LODWORD(STACK[0x25C]) = (((v445 ^ LODWORD(STACK[0x520]) ^ 0xC929AE75) + 592183712) ^ ((v445 ^ LODWORD(STACK[0x520]) ^ 0x5E6C3911) - 1274439940) ^ ((v445 ^ LODWORD(STACK[0x520]) ^ 0x51FE1C60) - 1147423861)) + 1600706860;
  LODWORD(STACK[0x258]) = ((v445 ^ LODWORD(STACK[0x524]) ^ 0x5803E67A) - 1986380009) ^ ((v445 ^ LODWORD(STACK[0x524]) ^ 0x86F3D296) + 1466567675) ^ ((v445 ^ LODWORD(STACK[0x524]) ^ 0x184BBFE8) - 908958075);
  v541 = LODWORD(STACK[0x528]) ^ 0xC6BB8B04;
  LODWORD(STACK[0x254]) = v513 ^ v445;
  LODWORD(STACK[0x250]) = LODWORD(STACK[0x4AC]) ^ v445;
  LODWORD(STACK[0x24C]) = v517 ^ v445;
  LODWORD(STACK[0x248]) = v518 ^ v445;
  v542 = v445 ^ LODWORD(STACK[0x530]);
  LODWORD(STACK[0x244]) = v541 ^ v445;
  v543 = STACK[0x4B8];
  LODWORD(STACK[0x240]) = (((v542 ^ 0xA251B824) - 2126696781) ^ ((v542 ^ 0x77898143) + 1424299990) ^ ((v542 ^ 0x1363B263) + 806298870)) + 2112057720;
  LODWORD(STACK[0x23C]) = v437 ^ 0x7D3DDC03 ^ LODWORD(STACK[0x540]);
  LODWORD(STACK[0x238]) = v437 ^ 0x7D3DDC03 ^ LODWORD(STACK[0x53C]);
  LODWORD(STACK[0x234]) = (((v540 ^ 0xC0DA63FF) - 433660803) ^ ((v540 ^ 0x8FDA3208) - 1457091188) ^ ((v540 ^ 0x323D8DF4) + 348205688)) + 1683725809;
  LODWORD(STACK[0x230]) = v521 - 1129662350;
  LODWORD(STACK[0x228]) = LODWORD(STACK[0x4D4]) - 68784659;
  LODWORD(STACK[0x224]) = LODWORD(STACK[0x4D8]) - 1470055476;
  LODWORD(STACK[0x220]) = v511 + 132514964;
  LODWORD(STACK[0x21C]) = LODWORD(STACK[0x4E4]) - 1151212773;
  LODWORD(STACK[0x218]) = (((v520 ^ 0x37FF1B92) - 768632745) ^ ((v520 ^ 0x8DC3E482) + 1746102087) ^ ((v520 ^ 0xA72BD160) + 1123766949)) - 875767295;
  LODWORD(STACK[0x214]) = (((v458 ^ 0x5A4F7D4B) + 305728979) ^ ((v458 ^ 0x779F607D) + 1072238821) ^ ((v458 ^ 0x30C73346) + 2024883168)) - 249402777;
  LODWORD(STACK[0x210]) = LODWORD(STACK[0x548]) ^ 0x7AB89C93 ^ v510;
  LODWORD(STACK[0x20C]) = ((v519 ^ 0x8B2FFA3F) - 1111681425) ^ ((v519 ^ 0xBB1D6608) - 1919972774) ^ ((v519 ^ 0x2D25B247) + 465002007);
  LODWORD(STACK[0x208]) = LODWORD(STACK[0x4F0]) + 947978336;
  LODWORD(STACK[0x278]) = v522;
  LODWORD(STACK[0x204]) = v522 - LODWORD(STACK[0x514]);
  LODWORD(STACK[0x428]) = 292165;
  LODWORD(STACK[0x2BC]) = 9860717;
  LODWORD(STACK[0x2B8]) = 6219546;
  LODWORD(STACK[0x2B4]) = -1286089292;
  LODWORD(STACK[0x424]) = 8454005;
  LODWORD(STACK[0x2A8]) = 71886;
  v544 = STACK[0x570];
  LODWORD(STACK[0x3D8]) = 1;
  return (*(v544 + 8 * v543))();
}

uint64_t sub_2BAEC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, __int16 a8)
{
  v11 = a1 + 2;
  *(v10 + (810 * v11 - ((((810 * v11) * v9) >> 16) >> 9) * a8)) = -v11 - 33;
  *(v10 + ((810 * v11 + 810) & 0xFFFEu) % ((a5 + 1120) ^ v8)) = -v11 - 34;
  return (*(STACK[0x570] + 8 * (((v11 == 14) * a6) ^ a5)))();
}

uint64_t sub_2BB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v8;
  STACK[0x4C8] = v7;
  STACK[0x5F8] = 0;
  if (v10)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  return (*(a7 + 8 * ((v12 * (((v9 - 1779) | 4) ^ 0x216 ^ (19 * (v9 ^ 0x713)))) ^ v9)))();
}

uint64_t sub_2BC84@<X0>(int a1@<W8>)
{
  v4 = *(STACK[0x208] + 1336 * v1);
  *(v3 - 232) = 475723357 * (((v3 - 240) & 0x22F04894 | ~((v3 - 240) | 0x22F04894)) ^ 0xC7B3917A) - 1834142901 + a1 + 413;
  *(v3 - 240) = v4;
  v5 = (*(v2 + 8 * (a1 + 3252)))(v3 - 240);
  return sub_B0B28(v5);
}

uint64_t sub_2BD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = LODWORD(STACK[0xE6C]);
  *(&STACK[0x1510] + v9) = v7 ^ 0xC6;
  LODWORD(STACK[0xE6C]) = v9 + 1;
  return (*(a7 + 8 * ((((v9 + 1) < 8) * (LODWORD(STACK[0x3C0]) - 1532)) ^ (v8 + 525))))();
}

uint64_t sub_2BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7 & 0x8F98F7ED;
  v10 = ((v7 & 0x8F98F7ED) - 1984) | 0x280;
  v11 = (*(a7 + 8 * ((v7 & 0x8F98F7ED) + 1723)))(((v7 & 0x8F98F7ED) - 1956) ^ 0xB01701F2 ^ LODWORD(STACK[0xB3C]), 0x100004077774924);
  v12 = STACK[0x430];
  STACK[0x1358] = v11;
  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = -1682656443;
  }

  LODWORD(STACK[0x1364]) = v13;
  return (*(v12 + 8 * (((v11 == 0) * (v10 - 624)) ^ v9)))();
}

uint64_t sub_2BE70@<X0>(uint64_t a1@<X4>, char a2@<W5>, char a3@<W6>, unsigned int a4@<W8>)
{
  v6 = 490 * (v4 ^ 0xA0E);
  v7 = *(STACK[0x3A0] + a4 + 4);
  v8 = ((((v7 ^ a2) + 20) ^ v7 ^ ((v7 ^ a3) - 27)) - 126);
  v9 = (*(STACK[0x390] + a4) + 46);
  v10 = (v9 < (v6 - 7)) ^ (v8 < 0x8B);
  v11 = v8 < v9;
  if (v10)
  {
    v11 = v9 < (v6 - 7);
  }

  return (*(a1 + 8 * ((!v11 * v5) ^ v6)))();
}

uint64_t sub_2BE88@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 0xEF) - 9;
  return (*(v1 + 8 * (((v6 == 0) * v4) ^ v5)))(0);
}

uint64_t sub_2BEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = (BYTE4(a30) - ((2 * BYTE4(a30)) & 0x55) + 48);
  if (v35 == 49)
  {
    BYTE4(a25) = (8 * (a27 + ~(((a7 + v34 - 8) ^ 4) & (2 * a27))) + 104) ^ 0xA6;
    BYTE5(a25) = (a27 >> 5) ^ 0xC6;
    BYTE6(a25) = (a27 >> 13) ^ 0xC6;
    HIBYTE(a25) = (a27 >> 21) ^ 0xC6;
    LOBYTE(a26) = ((__PAIR64__(HIDWORD(a26), a27) >> 29) - ((2 * (__PAIR64__(HIDWORD(a26), a27) >> 29)) & 0x64) - 78) ^ 0x74;
    BYTE1(a26) = (HIDWORD(a26) >> 5) ^ 0xC6;
    BYTE2(a26) = (HIDWORD(a26) >> 13) ^ 0xC6;
    v36 = (HIDWORD(a26) >> 21) ^ 0xFFFFFFC6;
    goto LABEL_5;
  }

  if (v35 == 46)
  {
    BYTE4(a25) = (HIDWORD(a26) >> 21) ^ 0xC6;
    BYTE5(a25) = (3 * (v34 ^ (v34 + 52)) + 106) ^ (HIDWORD(a26) >> 13);
    BYTE6(a25) = (HIDWORD(a26) >> 5) ^ 0xC6;
    HIBYTE(a25) = ((__PAIR64__(HIDWORD(a26), a27) >> 29) - ((2 * (__PAIR64__(HIDWORD(a26), a27) >> 29)) & 0x22) + 17) ^ 0xD7;
    LOBYTE(a26) = (a27 >> 21) ^ 0xC6;
    BYTE1(a26) = (a27 >> 13) ^ 0xC6;
    BYTE2(a26) = (a27 >> 5) ^ 0xC6;
    LOBYTE(v36) = (8 * (a27 - ((2 * a27) & 0xA)) + 40) ^ 0xEE;
LABEL_5:
    BYTE3(a26) = v36;
  }

  return sub_1EAC4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_2C07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = v12 - 1214627420 < a12 - 1840591077;
  if ((a12 - 1840591077) < 0xB79A41A4 != v12 > 3 * (v14 ^ 0x556u) + 1214627308)
  {
    v15 = (a12 - 1840591077) < 0xB79A41A4;
  }

  return (*(v13 + 8 * ((205 * !v15) ^ v14)))();
}

uint64_t sub_2C170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xC58] = -v8;
  *(v9 + 227) = (&STACK[0x1098] + 67 * (v7 ^ 0xA4) - 117) * (&STACK[0x1098] ^ 0xBA);
  return (*(a7 + 8 * v7))();
}

void sub_2C200()
{
  *v6 = *v2;
  *v5 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x7DA4FEE57DA4FEE5;
  v3 = *(v2 + 24);
  v4 = *(v2 + 20) & ((v0 - 57) ^ 0xFFFFF7FA);
  *(v2 + 16) = 936849326;
  *(v2 + 20) = v4;
  *(v7 + 4) = v3;
}

uint64_t sub_2C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = ((v6 - a5 - 396) ^ (v9 - 2732)) - v5 + 336088079;
  if ((64 - v7) >> 32)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 >= 64 - v7;
  }

  v12 = v11;
  return (*(v8 + 8 * ((86 * v12) ^ v6)))();
}

void sub_2C418()
{
  v4 = *(v0 + 8) - v2;
  v5 = (v4 ^ (v3 - 63282775)) & (2 * (v4 & 0xFC3B702A)) ^ v4 & 0xFC3B702A;
  v6 = ((2 * (v4 ^ 0xE43E03C5)) ^ 0x300AE7DE) & (v4 ^ 0xE43E03C5) ^ (2 * (v4 ^ 0xE43E03C5)) & 0x180573EE;
  v7 = v6 ^ 0x8051021;
  v8 = (v6 ^ 0x100041C8) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x6015CFBC) & v7 ^ (4 * v7) & 0x180573EC;
  v10 = (v9 ^ 0x543A0) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x18003043)) ^ 0x80573EF0) & (v9 ^ 0x18003043) ^ (16 * (v9 ^ 0x18003043)) & 0x180573E0;
  v12 = v10 ^ 0x180573EF ^ (v11 ^ 0x53200) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x18050000 ^ v12 ^ ((v12 << 16) ^ 0x73EF0000) & (((v11 ^ 0x1800410F) << 8) & 0x18050000 ^ 0x18040000 ^ (((v11 ^ 0x1800410F) << 8) ^ 0x5730000) & (v11 ^ 0x1800410F))));
  *v14 = (HIBYTE(v13) ^ 0xEC) + (~(2 * (HIBYTE(v13) ^ 0xEC)) | 0x11) - 8;
  v14[1] = (BYTE2(v13) ^ 0x3B) - ((2 * (BYTE2(v13) ^ 0x3B)) & 0xEF) - 9;
  v14[2] = (BYTE1(v13) ^ 0x97) - ((2 * (BYTE1(v13) ^ 0x97)) & 0xEF) - 9;
  v14[3] = v13 ^ 3;
  *(v0 + 12) = *(v1 + 24);
}

uint64_t sub_2C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(v7 + 4);
  v13 = 922715317 * ((((v11 - 240) | 0xF3C786F7E7179CCELL) - ((v11 - 240) | 0xC38790818E86331) + 0xC38790818E86331) ^ 0x4CB579D6D291BC01);
  *(v11 - 240) = *(v7 + 8);
  *(v11 - 232) = v9 + 1781 - v13 - 855;
  *(v11 - 208) = (v12 ^ 0x3967BFBE) - v13 + ((2 * v12) & 0x72CF7F7C) - 671292192;
  *(v11 - 200) = &STACK[0xDCC];
  *(v11 - 224) = 0x4DF79F80E44E715DLL - v13 + v8 - ((2 * v8) & 0x9BEF3F01C89CE2BALL);
  *(v11 - 216) = 0;
  v14 = (*(a7 + 8 * (v9 + 2649)))(v11 - 240);
  return (*(STACK[0x430] + 8 * ((186 * (*(v11 - 228) == ((v9 + 1781) ^ 0x717 ^ (v10 - 1009)))) ^ v9)))(v14);
}

uint64_t sub_2C74C@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 2742)))(a2);
  v3 = STACK[0x430];
  v4 = STACK[0x4C0];
  *(STACK[0x4C0] + 24) = 0;
  return sub_1751C(v4, v5, v6, v7, v8, v9, v3);
}

uint64_t sub_2C788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = v5 - v8 + 2459;
  v11 = v9 + v5 + 3525;
  v12 = a5 - 59026350 < ((v5 - 28419771) & 0x1710076F ^ 0x44990531u);
  v13 = v6 - 148519591 < (a5 - 59026350);
  if (v6 - 148519591 < (v10 ^ 0x44990FCFu) != v12)
  {
    v13 = v12;
  }

  return (*(v7 + 8 * ((26 * v13) ^ v11)))();
}

uint64_t sub_2C8BC@<X0>(int a1@<W8>)
{
  v5 = *(v1 + 4 * (v3 - 1));
  *(v1 + 4 * v3) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v1 + 4 * v3)) - v3;
  v6 = 1327116359 * ((v4 - 152) ^ 0x84E739B9E6EFA55BLL);
  *(v4 - 128) = v6 ^ (a1 - 175453201) ^ 0xE9;
  *(v4 - 144) = a1 - 175453201 - v6;
  v7 = v4 - 152;
  *(v7 + 32) = v6 ^ 0x26F;
  *(v7 + 16) = v3 + 1 - v6;
  *(v4 - 108) = (a1 - 304005215) ^ v6;
  *(v4 - 152) = 1 - v6;
  *(v4 - 148) = (a1 - 175453337) ^ v6;
  v8 = (*(v2 + 8 * (a1 ^ 0x91B)))(v4 - 152);
  return (*(v2 + 8 * *(v4 - 112)))(v8);
}

void sub_2C9D8(uint64_t a1)
{
  v1 = *(a1 + 12) + 1556812919 * (a1 ^ 0x5A836C63);
  __asm { BRAA            X8, X17 }
}

void sub_2CA80(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 40) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 24) == 0;
  v1 = *(a1 + 16) ^ (1658355091 * (((a1 | 0xAC517E7C) - (a1 & 0xAC517E7C)) ^ 0x12214486));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2CB64@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v3 = (*(a1 + 8 * (a2 + 1098)))();
  v4 = STACK[0x430];
  *(v2 + 24) = 0;
  return sub_93910(v3, v5, v6, v7, v8, v9, v4);
}

uint64_t sub_2CBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = LODWORD(STACK[0x73C]) + 1276836502;
  v8 = ((v5 + 1366329743) < 0x998E3B91) ^ (v7 < ((v6 - 219279259) & 0xD11EFFDu) - 1718733599);
  v9 = v7 < v5 + 1366329743;
  if (v8)
  {
    v9 = (v5 + 1366329743) < 0x998E3B91;
  }

  return (*(a5 + 8 * (((8 * !v9) | (32 * !v9)) ^ v6)))();
}

uint64_t sub_2CD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x1188] = v7;
  *(v9 - 232) = (v8 - 1438385445) ^ (475723357 * ((2 * ((v9 - 240) & 0x4BDE7990) - (v9 - 240) - 1272871319) ^ 0xAE9DA078));
  (*(a7 + 8 * (v8 ^ 0x5B3)))(v9 - 240);
  LODWORD(STACK[0xBDC]) = *(v9 - 240) ^ 0x5ABEE34B;
  v10 = STACK[0x608];
  v11 = STACK[0xFA8];
  v12 = STACK[0xD90];
  STACK[0x1190] = &STACK[0x1520] + STACK[0xD90];
  STACK[0xD90] = v12 + ((v8 + 873783673) & 0xCBEB1F71 ^ (526 * (v8 ^ 0xB22)) ^ 0x409);
  v13 = STACK[0x230];
  STACK[0xA38] = STACK[0x230];
  STACK[0xB28] = v11;
  v14 = (*(STACK[0x430] + 8 * (v8 ^ 0x554)))();
  v15 = STACK[0x430];
  STACK[0xD98] = 0;
  STACK[0x3F0] = v10;
  if (v10)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = v16 || v11 == 0;
  return (*(v15 + 8 * ((31 * v18) ^ (v8 - 764))))(v14);
}

uint64_t sub_2CEBC@<X0>(uint64_t a1@<X8>)
{
  v9 = (((v6 - 3132) | 0x208u) - 733) & (v4 - v5 - 1);
  v12.val[0].i64[0] = v9;
  v12.val[0].i64[1] = (v4 - v5 + 14) & 0xF;
  v12.val[1].i64[0] = (v4 - v5 + 13) & 0xF;
  v12.val[1].i64[1] = (v4 - v5 + 12) & 0xF;
  v12.val[2].i64[0] = (v4 - v5 + 11) & 0xF;
  v12.val[2].i64[1] = (v4 - v5 + 10) & 0xF;
  v12.val[3].i64[0] = (v4 - v5 + 9) & 0xF;
  v12.val[3].i64[1] = (v4 - v5) & 0xF ^ 8;
  *(v7 + -8 - v5 + v4) = veor_s8(veor_s8(veor_s8(*(v3 + v9 - 7), *(a1 + -8 - v5 + v4)), veor_s8(*(v1 + v9 - 7), *(v9 + v2 - 3))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v12, xmmword_F8190), 0x4B4B4B4B4B4B4B4BLL)));
  v10 = 8 - (v4 & 0x18) == -v5;
  return (*(v8 + 8 * ((2 * v10) | (8 * v10) | v6)))(xmmword_F8190);
}

uint64_t sub_2D030@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X6>, unint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v23 = (v10 + 6430682) | 0x800034u;
  v24 = ((a2 ^ 0x8F3AF10412380AD1) + 0x70C50EFBEDC7F52FLL) ^ ((a2 ^ v14) + v15) ^ ((a2 ^ v16) + v17);
  v25 = v21 + (v24 + v23 + v19) * (v24 + v18);
  v26 = v25 - (((v25 * v22) >> 64) >> 31) * a7;
  v27 = v26 * a1 + (v20 ^ v13) * (v20 ^ v13) + a5;
  v28 = (v27 - (((v27 * a6) >> 64) >> 31) * a4) * v26;
  *(v9 + a3) = *(v7 + a3) ^ (v28 >> 15) ^ 0xF7;
  *(v9 + (a3 | 1)) = *(v7 + (a3 | 1)) ^ (v28 >> 23) ^ 0xF7;
  *(v9 + (a3 | 2)) = *(v7 + (a3 | 2)) ^ (v28 >> 31) ^ 0xF7;
  *(v9 + (a3 | 3)) = *(v7 + (a3 | 3)) ^ (v28 >> 39) ^ 0xF7;
  v29 = a3 + 4;
  v30 = v23 - 14819342;
  LODWORD(v27) = (v30 ^ 0x5457B835) + v11;
  v31 = v27 < v12;
  v32 = v29 + v12 < v27;
  if (v29 > 0x404926D8 != v31)
  {
    v32 = v31;
  }

  return (*(v8 + 8 * ((117 * v32) ^ (v30 + 1551))))();
}

uint64_t sub_2D1A0@<X0>(uint64_t a1@<X4>, unint64_t a2@<X8>)
{
  v5 = 1427 * ((v3 - 3626) ^ 0x17);
  LODWORD(STACK[0x350]) = v4 ^ 0x999;
  LODWORD(STACK[0x3A0]) = v4 ^ 0xB24;
  LODWORD(STACK[0x360]) = v4 ^ 0xB2B;
  STACK[0xDF0] = *(a1 + 8 * (v3 - 3626));
  STACK[0xD90] = 223 * (v5 ^ 0xB21u) + STACK[0xD90] - 1449;
  STACK[0x670] = a2;
  if (a2)
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(a1 + 8 * ((7 * v7) ^ (v5 - 1764))))(0);
}

uint64_t sub_2D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v25 = v22[(v24 - 1976068447) & 0x75C867EE ^ 0x60FLL];
  v26 = v22[2];
  v27 = v22[398];
  v28 = *(&a22 + (v26 & 1));
  *v22 = v22[397] ^ ((v25 & 0x7FFFFFFE | *v22 & 0x80000000) >> 1) ^ *(&a22 + (v25 & 1));
  v22[1] = v27 ^ ((v26 & 0x7FFFFFFE | v25 & 0x80000000) >> 1) ^ v28;
  return (*(v23 + 8 * (v24 - 375)))();
}

uint64_t sub_2D39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xF08] = v8;
  LODWORD(STACK[0xB64]) = 0;
  v10 = (v7 + 1104);
  v11 = v7 - 987;
  *(v9 - 232) = (v7 - 1438383818) ^ (475723357 * ((((v9 - 240) | 0x97AB1B22) - ((v9 - 240) & 0x97AB1B22)) ^ 0x8D173D33));
  v12 = (*(a7 + 8 * (v7 + 2506)))(v9 - 240);
  v13 = STACK[0x430];
  v14 = *(v9 - 240);
  LODWORD(STACK[0x934]) = v14 ^ 0x5ABEE34B;
  LOBYTE(STACK[0xE9F]) = 0;
  STACK[0x770] = v14 & (v10 + 4294964964) ^ 0xEAA9E290;
  STACK[0xA20] = *(v13 + 8 * v11);
  return sub_B8D20(v12, v15, v16, v17, v18, v19, v13);
}

uint64_t sub_2D3F0()
{
  v1 = STACK[0x430];
  v2 = (*(STACK[0x430] + 8 * (v0 ^ 0xBBE)))(32, 0x103004054B5FA7DLL);
  STACK[0x8E8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 310) | 0x915) + ((v0 + 1516) | 4) - 6122)) ^ v0)))();
}

uint64_t sub_2D468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *STACK[0x208];
  *(v65 - 240) = (v64 - 355568753) ^ (1579770187 * (((((v65 - 240) | 0xCA1C20B4) ^ 0xFFFFFFFE) - (~(v65 - 240) | 0x35E3DF4B)) ^ 0x403D5C35));
  *(v65 - 232) = v66;
  v67 = (*(a7 + 8 * (v64 ^ 0x92E)))(v65 - 240);
  return (*(STACK[0x430] + 8 * ((*a64 * ((v64 + 1227290593) & 0xB6D90BEE ^ 0xB85)) ^ v64)))(v67);
}

uint64_t sub_2D520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, _BYTE *a13, _BYTE *a14, _BYTE *a15, _BYTE *a16, _BYTE *a17, _BYTE *a18, unsigned __int8 **a19, uint64_t a20, _BYTE *a21, _BYTE *a22, unsigned __int8 *a23, _BYTE *a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, unsigned int a33)
{
  v92 = (a25 - 1664443915) & 0x63356ECD;
  *a16 = BYTE1(a7);
  a24[12] = (a7 - ((2 * a7) & 0xDA) + 109) ^ 0x6D;
  v37 = *(a11 + ((v92 - 3018) & (a7 >> 16) ^ 0xF5));
  *a15 = BYTE3(a7);
  a14[3] = BYTE3(a5) ^ 0x8F;
  a23[16] = BYTE4(a7);
  a14[4] = BYTE5(a7);
  v39 = ((2 * (v37 + 88)) | 0x98) ^ (v37 + 88);
  *a17 = a5 ^ 0x5A;
  a14[5] = HIBYTE(a7);
  *a12 = ((v39 >> 5) | (8 * v39)) ^ 0xD0;
  a23[4] = BYTE6(a5) ^ 3;
  *a18 = BYTE5(a5) ^ 0xE;
  a23[17] = BYTE6(a7);
  a14[11] = BYTE1(a5) ^ 0x8D;
  a14[14] = BYTE4(a5) ^ 0x57;
  a24[4] = ((BYTE2(a5) ^ 0x79) - ((2 * (BYTE2(a5) ^ 0x79)) & 0xA2) - 47) ^ 0xD1;
  v40 = *(a2 + ((-31 * (HIBYTE(a5) ^ 0x62)) ^ 0x2ELL));
  a24[24] = (BYTE1(a8) + (~(2 * BYTE1(a8)) | 0xE7) + 13) ^ 0xC;
  v41 = (225 * (HIBYTE(a5) ^ 0x62)) ^ 0x4C;
  v42 = (((-31 * (HIBYTE(a5) ^ 0x62)) ^ 0x4C) + 61) & 0xC4 ^ 0xB7;
  v43 = (((-31 * (HIBYTE(a5) ^ 0x62)) ^ 0x4C) + 61) ^ 0x1E;
  LOBYTE(v41) = (v41 + 61) ^ (v41 - ((2 * v41) & 0x83) + 65) ^ (2 * (v43 & (2 * (v43 & (2 * (v43 & (2 * (v43 & (2 * (v43 & (2 * (v43 & 0x1A ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v40 ^ 0x85;
  *a22 = BYTE4(a8);
  *a13 = BYTE2(a8);
  a14[2] = BYTE5(a8);
  a23[19] = BYTE3(a8);
  a14[1] = HIBYTE(a8);
  a14[20] = v35 ^ 0x53;
  a24[15] = (BYTE6(a8) - ((2 * BYTE6(a8)) & 0xF4) - 6) ^ 0xFA;
  a24[16] = (a8 - ((2 * a8) & 0x8C) - 58) ^ 0xC6;
  a24[6] = (((v41 & 0x80) != 0) | (2 * v41)) ^ 0xA;
  v44 = *(a2 + ((-31 * (BYTE1(v35) ^ 0xE0)) ^ 0x2ELL));
  a14[15] = BYTE4(v35) ^ 0xF2;
  a14[13] = BYTE6(v35) ^ 0x15;
  v45 = (225 * ((v35 >> 8) ^ 0xE0)) ^ 0x4C;
  v46 = (v45 + 6) & 0x59 ^ 0x42;
  v47 = (v45 + 6) ^ 0x54;
  LOBYTE(v45) = (v45 + 6) ^ (v45 - ((2 * v45) & 8) + 4) ^ (2 * (v47 & (2 * (v47 & (2 * (v47 & (2 * (v47 & (2 * (v47 & (2 * ((v45 + 6) & (2 * (v45 + 6)) & 0x2A ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v44;
  a23[7] = v34;
  *a21 = BYTE5(v35) ^ 0xBB;
  a23[11] = BYTE3(v35) ^ 0xC1;
  a24[8] = (BYTE1(v34) - ((2 * BYTE1(v34)) & 0xCA) - 27) ^ 0xE5;
  a23[24] = BYTE2(v35) ^ 0x1D;
  a14[10] = BYTE3(v34);
  a24[14] = (BYTE5(v34) - ((2 * BYTE5(v34)) & 0xA) + 5) ^ 5;
  a14[24] = ((((v45 & 0x80) != 0) | (2 * (v45 ^ 0x5D))) - ((4 * (v45 ^ 0x5D)) & 0x38) + 28) ^ 0x16;
  a14[8] = BYTE6(v34);
  a24[18] = (BYTE4(v33) - ((2 * BYTE4(v33)) & 0x24) - 110) ^ 0x92;
  a24[7] = (HIBYTE(v34) + (~(2 * HIBYTE(v34)) | 0x15) - 10) ^ 0xF5;
  a14[22] = BYTE2(v34);
  a23[18] = HIBYTE(v35) ^ 0x4F;
  *(*a19 + 4) = a20 + 1;
  v49 = *a19;
  v50 = (a23[5] >> 5) | (8 * a23[5]);
  LOBYTE(v45) = v50 - ((2 * v50) & 0x5E) + 47;
  v51 = ((v45 ^ 0x2FF5C2FC) - 804635388) ^ ((v45 ^ 0xBD5252E2) + 1118678302) ^ ((v45 ^ 0x92A79031) + 1834512335);
  v52 = ((((v51 + 758522630) ^ 0x5223290D) + 38) ^ (v51 + 758522630) ^ (((v51 + 758522630) ^ 0xFFFFFF8F) + 168) ^ (((v51 + 758522630) ^ 0x2A) + 3) ^ (((v51 + 758522630) ^ 0x7F) + 88)) & 0x85 | v45 & 0x7A;
  v53 = v51 - (((v52 ^ 0x899BD064) - 1768534437) ^ ((v52 ^ 0x6F0BF172) + 1879469901) ^ ((v52 ^ 0xE6902183) - 107102274)) + 837798957;
  v54 = ((2 * (v53 ^ 0xAA1BEAB6)) ^ 0x8E0C7030) & (v53 ^ 0xAA1BEAB6) ^ (2 * (v53 ^ 0xAA1BEAB6)) & 0x47063818;
  v55 = ((4 * (v54 ^ 0x41020808)) ^ 0x1C18E060) & (v54 ^ 0x41020808) ^ (4 * (v54 ^ 0x41020808)) & 0x47063818;
  v56 = ((16 * (v55 ^ 0x43061818)) ^ 0x70638180) & (v55 ^ 0x43061818) ^ (16 * (v55 ^ 0x43061818)) & 0x47063810;
  v57 = (v53 ^ 0xE819CAAE) & (2 * (v53 & 0xED1DD2AE)) ^ v53 & 0xED1DD2AE;
  v58 = (v55 ^ 0x4002000) & (16 * ((v54 ^ 0x4041010) & (4 * v57) ^ v57)) ^ (v54 ^ 0x4041010) & (4 * v57) ^ v57;
  v59 = v58 ^ 0x47063818 ^ (v56 ^ 0x40020000) & (v58 << 8);
  v60 = v53 ^ (2 * ((v59 << 16) & 0x47060000 ^ v59 ^ ((v59 << 16) ^ 0x38180000) & (((v56 ^ 0x7043818) << 8) & 0x47060000 ^ 0x41060000 ^ (((v56 ^ 0x7043818) << 8) ^ 0x6380000) & (v56 ^ 0x7043818))));
  v61 = v51 + 718907269 + (((v60 ^ 0x8B39089F) + 1448951391) ^ ((v60 ^ 0x443279E9) - 1722396887) ^ ((v60 ^ 0x53E52C14) - 1904141610));
  v62 = ((v61 ^ 0x3E1A230C) - 1384002038) ^ v61 ^ ((v61 ^ 0xF8FA8D8D) + 1801543817) ^ ((v61 ^ 0xD57B4185) + 1189129345) ^ ((v61 ^ 0x7FFFFDFE) - 328986372);
  v63 = *(&off_103F00 + (a25 ^ 0x404));
  LOBYTE(v60) = *(v63 + 6 + (v62 ^ 0x6C641212));
  LOBYTE(v62) = (((v62 ^ 0x7E) - 16) ^ ((v62 ^ 0xBB) + 43) ^ ((v62 ^ 0x3F) - 81)) - (((v62 ^ 3) - 86) ^ ((v62 ^ 0xF8) + 83) ^ ((v62 ^ 0x43) - 22)) - 62;
  LOBYTE(v60) = ((v62 ^ 0x34) - 47) ^ v62 ^ ((v62 ^ 0x33) - 40) ^ ((v62 ^ 0xFB) + 32) ^ ((v62 ^ 0xE7) + 4) ^ v60;
  LOBYTE(v60) = 99 - 5 * (((v60 ^ 0xDD) - 65) ^ ((v60 ^ 0x1B) + 121) ^ ((v60 ^ 0x8B) - 23));
  LOBYTE(v59) = (v60 & 0x88 | 0x57) ^ v60 & 0xBE;
  v64 = v60 ^ (2 * ((v60 ^ 8) & (2 * ((v60 ^ 8) & (2 * ((v60 ^ 8) & (2 * ((v60 ^ 8) & (2 * ((v60 ^ 8) & (2 * (v60 & (2 * v59) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59));
  v65 = ((a24[11] - ((2 * a24[11]) & 0x148u) + 15328) << 50) - 0xF0000000000000;
  v66 = v49[9] - ((2 * v49[9]) & 0x140) - 0x491931E68DF22960;
  LOBYTE(v56) = a24[19] - 101;
  v67 = v56 & 0x92 ^ 0x30;
  v68 = (v56 ^ (2 * ((v56 ^ 0x30) & (2 * ((v56 ^ 0x30) & (2 * ((v56 ^ 0x30) & (2 * ((v56 ^ 0x30) & (2 * (v56 & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)));
  v69 = 38564362 - (((v68 ^ 0xC971ECB5) + 1364599819) ^ ((v68 ^ 0xB0F4D839) + 684920967) ^ ((v68 ^ 0x79853457) - 509412119));
  v70 = -1252565568 - (((v68 ^ 0x5005424B) - 722553954) ^ ((v68 ^ 0x27CD87A4) - 1557760397) ^ ((v68 ^ 0x77C8C5F4) - 215796701));
  v71 = ((2 * (v70 ^ 0xD9691ACF)) ^ 0x2DFB1C02) & (v70 ^ 0xD9691ACF) ^ (2 * (v70 ^ 0xD9691ACF)) & 0x16FD8E00;
  v72 = ((4 * (v71 ^ 0x12048201)) ^ 0x5BF63804) & (v71 ^ 0x12048201) ^ (4 * (v71 ^ 0x12048201)) & 0x16FD8E00;
  v73 = (16 * (v72 ^ 0x4098601)) & 0x16FD8E00 ^ 0x10250E01 ^ ((16 * (v72 ^ 0x4098601)) ^ 0x6FD8E010) & (v72 ^ 0x4098601);
  v74 = (v70 ^ 0xCF4012CF) & (2 * (v70 & 0x4CE)) ^ v70 & 0x4CE;
  v75 = (v71 ^ 0x400) & (4 * v74) ^ v74 ^ 0x16FD8E01 ^ (v72 ^ 0x12F40800) & (16 * ((v71 ^ 0x400) & (4 * v74) ^ v74));
  v76 = (v75 << 8) & 0x16FD8E00 ^ v75 ^ ((v75 << 8) ^ 0xFD8E0100) & v73;
  v77 = v69 ^ v68 ^ v70 ^ ((v69 ^ 0xA5553F52) + 814639369) ^ ((v69 ^ 0x2E318FC3) - 1142236774) ^ ((v69 ^ 0x9EBEE7DE) + 191213957) ^ ((v69 ^ 0x7FFEFEEA) - 366630735) ^ (2 * ((v76 << 16) & 0x16FD0000 ^ v76 ^ ((v76 << 16) ^ 0xE010000) & ((v73 << 8) & 0x16FD0000 ^ 0x2710000 ^ ((v73 << 8) ^ 0xFD8E0000) & v73)));
  LOBYTE(v77) = *(v63 + 799 + (((v77 ^ 0xFDA7608B) + 1317850810) ^ ((v77 ^ 0xA72F37FC) + 335845839) ^ ((v77 ^ 0xF7D976C5) + 1156765944)) - 511348417) - 49;
  LOBYTE(v62) = v77 & 0x24 ^ 0xDD;
  v78 = (((a24[9] - ((2 * a24[9]) & 0xC8u) + 240) << 56) - 0xC00000000000000) ^ __ROR8__((((a24[20] - ((2 * a24[20]) & 0xDDDD)) << 28) - 0x23FF44120000000) ^ __ROR8__(v66 & 0x20000000406A1 ^ __ROR8__(v65 & 0x7980000000000000 ^ 0xB3B75C70DB038373 ^ (__ROR8__(a23[2] - ((2 * a23[2]) & 0x60) - 0x282BB57FE421E3D0, 6) ^ 0x4520005CC4B75553) & (v65 ^ 0x116FFFFFFFFFFFFFLL), 34) ^ (((a24[13] - ((2 * a24[13]) & 0x138u) - 2099070765) << 32) - 0x3700000000) ^ 0x4F1958950FEB5218 ^ (((v77 ^ (2 * ((v77 ^ 0xA) & (2 * ((v77 ^ 0xA) & (2 * ((v77 ^ 0xA) & (2 * ((v77 ^ 0xA) & (2 * (((2 * v77) & 0x14 ^ 0x2E) & (v77 ^ 0xA) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62))) << 8) ^ 0xC229CE5B83CA2C5ELL) & (v66 ^ 0x4D9D31E6FDE3295FLL), 12) ^ 0x55EDE87E480A3F84, 52) ^ (v64 << 48) ^ 0x7C02524B94292242;
  v79 = ((v49[21] - ((2 * v49[21]) & 0x3Au) + 753994817) << 32) - 0x2400000000;
  v80 = ((a23[1] - ((2 * a23[1]) & 0xE4)) << 24) + 0x4DF1142472000000;
  v81 = v49[23] - ((2 * v49[23]) & 0x80) - 0x56FA77DCF84A78C0;
  v82 = ((((a23[10] - ((2 * a23[10]) & 0x5A)) << 8) + 0x1CD80A00094D2D00) ^ 0xA02BF9F0D06F23B3) & (v81 ^ 0x56FA77DCF84A78FFLL) ^ v81 & 0x10008010481F14CLL;
  v83 = (((a23[6] - ((2 * a23[6]) & 0xFFCFu) + 116) << 56) - 0xD00000000000000) ^ (((a23[29] - ((2 * a23[29]) & 0x96u) + 7021668) << 40) - 0x190000000000) ^ (((a23[28] - ((2 * a23[28]) & 0x1D2u) + 60455) << 48) - 0x3E000000000000) ^ v79 & 0xCE100E800000000 ^ 0xDBE3C124E7E6409BLL ^ (v80 & 0x4DB0141572000000 ^ 0xCCEF51395AFE332BLL ^ (v82 & 0x8F1BF5371C540C55 ^ 0x4DB871D3723FF980 ^ (v82 ^ 0x420C040E225C7008) & ((((*v49 - ((2 * *v49) & 0x1B6)) << 16) + 0x5CC2E4F476DB0000) ^ 0x2C26EE3C9570F3AALL)) & (v80 ^ 0xB20EEBDB8DFFFFFFLL)) & (v79 ^ 0xD30EF3E2FFFFFFFFLL);
  v84 = ((a23[14] - 2 * (a23[14] & 3u) + 65036) << 48) - 0x9000000000000;
  v85 = v84 & 0x9538000000000000;
  v86 = ((((a23[22] - ((2 * a23[22]) & 0x96u) + 12162923) << 40) - 0x200000000000) ^ 0xD35099FD1F49FECELL) & (v84 ^ 0x1FCFFFDBF6FFFFFLL);
  v90 = a23[25] - ((2 * a23[25]) & 0x126) - 0x4632B5377EE2CC6DLL;
  v87 = ((a23[13] - 2 * (a23[13] & 3u) + 440885779) << 32) - 0x1000000000;
  v89 = ((a23[23] - ((2 * a23[23]) & 0x1B6)) << 24) - 0x6AE3018B25000000;
  v88 = ((*a23 - ((2 * *a23) & 0x8C)) << 16) + 0x24D7C46657460000;
  return (*(a30 + 8 * (v92 ^ 0x19)))((v92 - 2243), 25, 0x6AE3018B24FFFFFFLL, v85 ^ v87 & 0x1806638200000000 ^ v86 ^ ((a23[21] + (~(2 * a23[21]) | 0xCBu) + 155) << 56) ^ 0xF4D24D3CC884BC2DLL ^ (v88 & 0x164046050E0000 ^ 0x5CBE71128CBC3186 ^ (v89 & 0xC78027B000000 ^ 0x89652D4254803E8 ^ (v90 & 0x8001008000000D28 ^ 0x75FC62771943972BLL ^ ((((a23[8] - ((2 * a23[8]) & 0x1B4)) << 8) + 0x74C8DEFDE2FADA00) ^ 0x36663BF77F0048D7) & (v90 ^ 0x4632B5377EE2CC6CLL)) & (v89 ^ 0x6AE3018B24FFFFFFLL)) & (v88 ^ 0xDB283B99A8B9FFFFLL)) & (v87 ^ 0xE5B89DFCFFFFFFFFLL), v78, *(v36 - 176), 0, v83, a9, v92, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a33);
}

uint64_t sub_2EFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xE30];
  STACK[0x8B8] = *(a7 + 8 * v7);
  return sub_94480(a7, v8);
}

uint64_t sub_2EFEC()
{
  v4 = -2130451661 - v0;
  if ((64 - v2) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= 64 - v2;
  }

  v6 = !v5;
  return (*(v3 + 8 * (((v1 - 4117 + ((v1 - 1778) | 0x400)) * v6) ^ v1)))();
}

uint64_t sub_2F188()
{
  STACK[0x1490] = v3;
  STACK[0x1498] = v1;
  return (*(STACK[0x430] + 8 * (((v2 > ((v0 - 563958296) & 0x219D5B3F) - 2845) * (v0 ^ 0x755)) ^ v0)))();
}

uint64_t sub_2F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v128 = LODWORD(STACK[0x51C]) + 2034;
  v129 = STACK[0x2BC];
  v130 = LODWORD(STACK[0x2BC]) ^ 0x57426116;
  LODWORD(STACK[0x590]) = v128;
  LODWORD(STACK[0x2BC]) = ((2 * v129) & 0xAE84D48E) - 1463970375 + (v130 ^ v128);
  v131 = a19 ^ (LODWORD(STACK[0x488]) >> 27);
  v132 = LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x390]);
  LODWORD(STACK[0x548]) = a50 ^ a49;
  v133 = LODWORD(STACK[0x208]) ^ LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x204]) ^ LODWORD(STACK[0x394]);
  v134 = a101 ^ LODWORD(STACK[0x35C]) ^ LODWORD(STACK[0x358]) ^ a116 ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x320]) ^ a48 ^ a115 ^ a114 ^ LODWORD(STACK[0x350]) ^ a113 ^ LODWORD(STACK[0x34C]) ^ a112 ^ LODWORD(STACK[0x328]);
  v135 = v131 ^ a76 ^ a92 ^ LODWORD(STACK[0x300]) ^ a93;
  LODWORD(STACK[0x588]) = LODWORD(STACK[0x374]) ^ (LODWORD(STACK[0x304]) << 30) ^ a75 ^ a38;
  v136 = a70 ^ HIBYTE(a105) ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x318]);
  v137 = (a105 >> 22) & 1;
  if ((v136 & v137) != 0)
  {
    v137 = -v137;
  }

  v138 = v137 + v136;
  v139 = a89 ^ (a105 >> 17) ^ LODWORD(STACK[0x314]) ^ a73 ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x30C]);
  LODWORD(STACK[0x550]) = a105 >> 9;
  v140 = a71 & 0x3FE ^ v138;
  v141 = (STACK[0x288] >> 26) ^ (STACK[0x288] >> 3) ^ LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x224]) ^ LODWORD(STACK[0x220]) ^ LODWORD(STACK[0x274]) ^ LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x26C]) ^ LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x264]) ^ a107 ^ LODWORD(STACK[0x268]) ^ LODWORD(STACK[0x23C]) ^ v132;
  v142 = (LODWORD(STACK[0x474]) >> 28) ^ (LODWORD(STACK[0x474]) >> 27) ^ LODWORD(STACK[0x3A8]) ^ LODWORD(STACK[0x3B0]) ^ LODWORD(STACK[0x20C]) ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x334]) ^ a65 ^ a119 ^ a106 ^ a118 ^ (a122 >> 2) ^ a121 ^ LODWORD(STACK[0x370]) ^ a120 ^ a117 ^ LODWORD(STACK[0x338]);
  v143 = STACK[0x398];
  v144 = STACK[0x200];
  v145 = (v141 >> 27) ^ (v141 >> 21);
  v146 = STACK[0x2A0];
  v147 = STACK[0x378];
  v148 = LODWORD(STACK[0x380]) ^ (LODWORD(STACK[0x398]) >> 20) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x200]) ^ a51 ^ a128 ^ LODWORD(STACK[0x340]) ^ (LODWORD(STACK[0x2A0]) >> 1) ^ LODWORD(STACK[0x378]) ^ a124 ^ a90;
  v149 = STACK[0x288] ^ (2 * STACK[0x288]) ^ (STACK[0x288] << 6) ^ (STACK[0x288] << 29) ^ LODWORD(STACK[0x3C0]) ^ LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x248]) ^ LODWORD(STACK[0x244]) ^ LODWORD(STACK[0x260]) ^ LODWORD(STACK[0x25C]) ^ LODWORD(STACK[0x258]) ^ LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x254]) ^ a108 ^ v133 ^ v141 ^ (4 * v141) ^ (32 * v141) ^ (v141 << 11) ^ v145 ^ (4 * v145) ^ (32 * v145) ^ (v145 << 11) ^ (32 * a122) ^ (16 * a122) ^ (a122 << 30) ^ v134 ^ v142 ^ (4 * v142) ^ (v142 << 11) ^ (32 * v142) ^ (v142 >> 27) ^ (v142 >> 21) ^ (4 * ((v142 >> 27) ^ (v142 >> 21))) ^ (32 * ((v142 >> 27) ^ (v142 >> 21))) ^ (((v142 >> 27) ^ (v142 >> 21)) << 11) ^ v146 ^ (v146 << 31) ^ (v146 << 12) ^ LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x410]) ^ LODWORD(STACK[0x364]) ^ a68 ^ LODWORD(STACK[0x40C]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x404]) ^ LODWORD(STACK[0x47C]) ^ LODWORD(STACK[0x3B4]) ^ v148;
  v150 = LODWORD(STACK[0x398]) >> 31;
  v151 = v149 ^ (4 * v148) ^ (32 * v148) ^ (v148 << 11) ^ v150 ^ (v148 >> 21) ^ (v148 >> 27) ^ (4 * (v150 ^ (v148 >> 21) ^ (v148 >> 27))) ^ (32 * (v150 ^ (v148 >> 21) ^ (v148 >> 27))) ^ ((v150 ^ (v148 >> 21) ^ (v148 >> 27)) << 11) ^ (a105 << 8) ^ (a105 << 15) ^ LODWORD(STACK[0x3D8]) ^ a82 ^ a81 ^ a88 ^ a83 ^ a80 ^ a86 ^ a79;
  v152 = v139 ^ (a105 >> 9) ^ a74 ^ a72 ^ a97 ^ (a105 >> 5);
  LODWORD(STACK[0x55C]) = v152;
  LODWORD(STACK[0x56C]) = a105 << 27;
  LODWORD(STACK[0x580]) = v151 ^ a85 ^ a95 ^ (a105 << 23) ^ a78 ^ a77 ^ (a105 << 27) ^ a50 ^ a49 ^ v152 ^ v140 ^ (32 * (v152 ^ v140)) ^ (4 * (v152 ^ v140)) ^ ((v152 ^ v140) << 11);
  v153 = (((a30 ^ 0xC75620C4) + 329988874) ^ ((a30 ^ 0xEE61235E) + 983316628) ^ ((a30 ^ 0x87FBAD5A) + 1392948888)) - 1609493503;
  v154 = ((v153 ^ 0x686D4589) - 352993944) ^ v153 ^ ((v153 ^ 0xE0187D51) + 1652590016) ^ ((v153 ^ 0xFEDC436) - 1921696551) ^ ((v153 ^ 0xFAFFFBFF) + 2020016914) ^ a29;
  v155 = STACK[0x498];
  LODWORD(STACK[0x510]) = LODWORD(STACK[0x498]) + 121188887 + (((v154 ^ 0x58B9464D) - 438237655) ^ ((v154 ^ 0xE7A803E0) + 1525695366) ^ ((v154 ^ 0xE5406B97) + 1477979123));
  v156 = STACK[0x308];
  v157 = a36 ^ (LODWORD(STACK[0x308]) >> 20) ^ a37 ^ a54 ^ a69 ^ a67 ^ a52 ^ a32 ^ a53 ^ a34 ^ LODWORD(STACK[0x2C0]);
  LODWORD(STACK[0x57C]) = (a69 & 0x6B ^ 0x6B) + (a69 & 0x6B);
  v158 = v135 ^ (LODWORD(STACK[0x3F8]) >> 2) ^ a110 ^ LODWORD(STACK[0x330]) ^ a47 ^ LODWORD(STACK[0x32C]) ^ a111 ^ a103 ^ a109 ^ a102 ^ LODWORD(STACK[0x33C]);
  LODWORD(STACK[0x560]) = v156 >> 31;
  v159 = STACK[0x228];
  v160 = v157 ^ (STACK[0x228] >> 1) ^ a33 ^ a64 ^ a61;
  v161 = (v156 >> 31) ^ (v156 >> 26) ^ a66 ^ a32 ^ a59 ^ a58 ^ a37 ^ a36 ^ a69 ^ a67 ^ a34 ^ (STACK[0x228] >> 3) ^ a63 ^ a31 ^ a33 ^ a64 ^ a61;
  v162 = STACK[0x228] ^ (2 * STACK[0x228]) ^ (STACK[0x228] << 6) ^ (STACK[0x228] << 29) ^ a56 ^ a55 ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x2F4]) ^ LODWORD(STACK[0x3AC]) ^ a60 ^ LODWORD(STACK[0x2E8]) ^ a62 ^ LODWORD(STACK[0x2F0]) ^ a57 ^ a35 ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x478]) ^ v161;
  v163 = v162 & 0x40055F96 ^ (4 * v161) & 0x40055F94 | v162 & 0xBFFAA069 ^ (4 * v161) & 0x3FFAA068;
  v164 = (a105 >> 28) ^ (a105 >> 27) ^ (a105 >> 2) ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x318]) ^ a89 ^ LODWORD(STACK[0x314]) ^ LODWORD(STACK[0x310]) ^ a100 ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x2D8]) ^ a84 ^ LODWORD(STACK[0x30C]) ^ LODWORD(STACK[0x550]) ^ a97 ^ (a105 >> 5) ^ a98;
  v165 = v150 ^ (v143 >> 26) ^ a127 ^ a126 ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x2FC]) ^ v144 ^ a91 ^ a128 ^ (v146 >> 3) ^ LODWORD(STACK[0x37C]) ^ a125 ^ a124 ^ v147 ^ a90;
  if ((a104 & 0x400000) != 0)
  {
    v166 = 14;
  }

  else
  {
    v166 = 2;
  }

  v167 = (32 * a105) ^ (16 * a105) ^ a94 ^ a86 ^ a88 ^ a96 ^ a87 ^ a85 ^ a95 ^ LODWORD(STACK[0x548]) ^ (a105 << ((a89 | ~(a89 + v166)) & 0xD));
  v168 = v167 + (a105 << 23) - 2 * (v167 & (a105 << 23));
  v169 = LODWORD(STACK[0x420]) + 689073576;
  v170 = (v169 ^ 0xC0A114E6) & (2 * (v169 & 0xC28116E7)) ^ v169 & 0xC28116E7;
  v171 = ((2 * (v169 ^ 0x45A3352E)) ^ 0xE444792) & (v169 ^ 0x45A3352E) ^ (2 * (v169 ^ 0x45A3352E)) & 0x872223C8;
  v172 = (v171 ^ 0x872203C1) & (4 * v170) ^ v170;
  v173 = ((4 * (v171 ^ 0x81222049)) ^ 0x1C888F24) & (v171 ^ 0x81222049) ^ (4 * (v171 ^ 0x81222049)) & 0x872223C8;
  v174 = (v173 ^ 0x4000309) & (16 * v172) ^ v172;
  v175 = ((16 * (v173 ^ 0x832220C9)) ^ 0x72223C90) & (v173 ^ 0x832220C9) ^ (16 * (v173 ^ 0x832220C9)) & 0x872223C0;
  v176 = v174 ^ 0x872223C9 ^ (v175 ^ 0x2222000) & (v174 << 8);
  LODWORD(STACK[0x3BC]) = v169 ^ (2 * ((v176 << 16) & 0x7220000 ^ v176 ^ ((v176 << 16) ^ 0x23C90000) & (((v175 ^ 0x85000349) << 8) & 0x87220000 ^ 0x5000000 ^ (((v175 ^ 0x85000349) << 8) ^ 0x22230000) & (v175 ^ 0x85000349))));
  v177 = LODWORD(STACK[0x41C]) - 422743176;
  v178 = (v177 ^ 0xA8E9FA79) & (2 * (v177 & 0xA8E1F27C)) ^ v177 & 0xA8E1F27C;
  v179 = ((2 * (v177 ^ 0xB9E89E99)) ^ 0x2212D9CA) & (v177 ^ 0xB9E89E99) ^ (2 * (v177 ^ 0xB9E89E99)) & 0x11096CE4;
  v180 = (v179 ^ 0x48C0) & (4 * v178) ^ v178;
  v181 = ((4 * (v179 ^ 0x11092425)) ^ 0x4425B394) & (v179 ^ 0x11092425) ^ (4 * (v179 ^ 0x11092425)) & 0x11096CE4;
  v182 = (v181 ^ 0x12081) & (16 * v180) ^ v180;
  v183 = ((16 * (v181 ^ 0x11084C61)) ^ 0x1096CE50) & (v181 ^ 0x11084C61) ^ (16 * (v181 ^ 0x11084C61)) & 0x11096CE0;
  v184 = v182 ^ 0x11096CE5 ^ (v183 ^ 0x10004C00) & (v182 << 8);
  LODWORD(STACK[0x3D0]) = v177 ^ (2 * ((v184 << 16) & 0x11090000 ^ v184 ^ ((v184 << 16) ^ 0x6CE50000) & (((v183 ^ 0x10920A5) << 8) & 0x11090000 ^ 0x10010000 ^ (((v183 ^ 0x10920A5) << 8) ^ 0x96C0000) & (v183 ^ 0x10920A5))));
  v185 = LODWORD(STACK[0x428]) - 170568798;
  v186 = (v185 ^ 0xFD89BC17) & (2 * (v185 & 0xF9D23CA7)) ^ v185 & 0xF9D23CA7;
  v187 = ((2 * (v185 ^ 0xDD8DF419)) ^ 0x48BF917C) & (v185 ^ 0xDD8DF419) ^ (2 * (v185 ^ 0xDD8DF419)) & 0x245FC8BE;
  v188 = (v187 ^ 0x19803C) & (4 * v186) ^ v186;
  v189 = ((4 * (v187 ^ 0x24404882)) ^ 0x917F22F8) & (v187 ^ 0x24404882) ^ (4 * (v187 ^ 0x24404882)) & 0x245FC8BC;
  v190 = (v189 ^ 0x5F00B0) & (16 * v188) ^ v188;
  v191 = ((16 * (v189 ^ 0x2400C806)) ^ 0x45FC8BE0) & (v189 ^ 0x2400C806) ^ (16 * (v189 ^ 0x2400C806)) & 0x245FC8B0;
  v192 = v190 ^ 0x245FC8BE ^ (v191 ^ 0x45C881E) & (v190 << 8);
  LODWORD(STACK[0x474]) = v185 ^ (2 * ((v192 << 16) & 0x245F0000 ^ v192 ^ ((v192 << 16) ^ 0x48BE0000) & (((v191 ^ a12) << 8) & 0x245F0000 ^ 0x20170000 ^ (((v191 ^ a12) << 8) ^ 0x5FC80000) & (v191 ^ a12))));
  v193 = STACK[0x598];
  v194 = ((*(STACK[0x598] + 354) ^ 0xDF) << 8) | ((*(STACK[0x598] + 515) ^ 0xFFFFFFDF) << 16) | *(STACK[0x598] + 193) ^ 0xDF;
  v195 = LODWORD(STACK[0x424]) - 502779219;
  v196 = (v195 ^ 0x860E001F) & (2 * (v195 & 0xD60EAA9E)) ^ v195 & 0xD60EAA9E;
  v197 = ((2 * (v195 ^ 0x26120123)) ^ 0xE039577A) & (v195 ^ 0x26120123) ^ (2 * (v195 ^ 0x26120123)) & 0xF01CABBC;
  v198 = (v197 ^ 0xE0180238) & (4 * v196) ^ v196;
  v199 = ((4 * (v197 ^ 0x1004A885)) ^ 0xC072AEF4) & (v197 ^ 0x1004A885) ^ (4 * (v197 ^ 0x1004A885)) & 0xF01CABBC;
  v200 = (v199 ^ 0xC010AAA0) & (16 * v198) ^ v198;
  v201 = ((16 * (v199 ^ 0x300C0109)) ^ 0x1CABBD0) & (v199 ^ 0x300C0109) ^ (16 * (v199 ^ 0x300C0109)) & 0xF01CABB0;
  v202 = v200 ^ 0xF01CABBD ^ (v201 ^ 0x8AB2D) & (v200 << 8);
  LODWORD(STACK[0x49C]) = v195 ^ (2 * ((v202 << 16) & 0x701C0000 ^ v202 ^ ((v202 << 16) ^ 0x2BBD0000) & (((v201 ^ 0xF014002D) << 8) & 0x701C0000 ^ 0x60140000 ^ (((v201 ^ 0xF014002D) << 8) ^ 0x1CAB0000) & (v201 ^ 0xF014002D))));
  LODWORD(STACK[0x500]) = v155 + a20 - LODWORD(STACK[0x484]);
  v203 = LODWORD(STACK[0x42C]) - 1984772235;
  v204 = (v203 ^ 0x913657A0) & (2 * (v203 & 0xD5B457C0)) ^ v203 & 0xD5B457C0;
  v205 = ((2 * (v203 ^ 0x12567420)) ^ 0x8FC447C0) & (v203 ^ 0x12567420) ^ (2 * (v203 ^ 0x12567420)) & 0xC7E223E0;
  v206 = (v205 ^ 0x87C00300) & (4 * v204) ^ v204;
  v207 = ((4 * (v205 ^ 0x40222020)) ^ 0x1F888F80) & (v205 ^ 0x40222020) ^ (4 * (v205 ^ 0x40222020)) & 0xC7E223E0;
  v208 = (v207 ^ 0x7800380) & (16 * v206) ^ v206;
  v209 = ((16 * (v207 ^ 0xC0622060)) ^ 0x7E223E00) & (v207 ^ 0xC0622060) ^ (16 * (v207 ^ 0xC0622060)) & 0xC7E223E0;
  v210 = v208 ^ 0xC7E223E0 ^ (v209 ^ 0x46222200) & (v208 << 8);
  LODWORD(STACK[0x398]) = v203 ^ (2 * ((v210 << 16) & 0x47E20000 ^ v210 ^ ((v210 << 16) ^ 0x23E00000) & (((v209 ^ 0x81C001E0) << 8) & 0x47E20000 ^ 0x5C00000 ^ (((v209 ^ 0x81C001E0) << 8) ^ 0x62230000) & (v209 ^ 0x81C001E0))));
  LODWORD(STACK[0x508]) = v193[32] ^ 0xDF | (v194 << 8);
  v211 = v193[649] ^ 0xDF | ((v193[810] ^ 0xDF) << 8) | ((*v193 ^ 0xFFFFFFDF) << 16);
  v212 = ((v193[166] ^ 0xDF) << 8) | ((v193[327] ^ 0xFFFFFFDF) << 16);
  v213 = v193[359] ^ 0xDF;
  v214 = v213 | ((v193[520] ^ 0xDF | ((v193[842] ^ 0xFFFFFFDF) << 16) | ((v193[681] ^ 0xDF) << 8)) << 8);
  LODWORD(STACK[0x4E8]) = v214 + 1788064072 - 2 * (v214 & 0x6A93B15B ^ v213 & 0x13);
  LODWORD(STACK[0x4F8]) = v193[488] ^ 0xDF | (v211 << 8);
  v215 = v193[5] ^ 0xDF | v212;
  LODWORD(STACK[0x4F0]) = v193[686] ^ 0xDF | ((((v193[37] ^ 0xDF) << 8) | ((v193[198] ^ 0xFFFFFFDF) << 16) | v193[847] ^ 0xDF) << 8);
  v216 = v193[815];
  LODWORD(STACK[0x4D4]) = (v216 ^ 0xDF | (v215 << 8)) - ((2 * (v216 ^ 0xDF | (v215 << 8))) & 0xE94A2A7E);
  v217 = ((v193[654] ^ 0xFFFFFFDF) << 16) | ((v193[493] ^ 0xDF) << 8) | v193[332] ^ 0xDF;
  LODWORD(STACK[0x4E4]) = v193[42] ^ 0xDF | ((((v193[525] ^ 0xFFFFFFDF) << 16) | ((v193[364] ^ 0xDF) << 8) | v193[203] ^ 0xDF) << 8);
  LODWORD(STACK[0x4D8]) = v193[171] ^ 0xDF | (v217 << 8);
  v218 = v193[498] ^ 0xDF | ((((v193[10] ^ 0xFFFFFFDF) << 16) | ((v193[820] ^ 0xDF) << 8) | v193[659] ^ 0xDF) << 8);
  LODWORD(STACK[0x4C8]) = v218 - ((2 * v218) & 0xF148E5C4);
  v219 = ((v193[852] ^ 0xFFFFFFDF) << 16) | ((v193[691] ^ 0xDF) << 8);
  LODWORD(STACK[0x4E0]) = v193[825] ^ 0xDF | ((((v193[337] ^ 0xFFFFFFDF) << 16) | ((v193[176] ^ 0xDF) << 8) | v193[15] ^ 0xDF) << 8);
  LODWORD(STACK[0x4DC]) = v193[369] ^ 0xDF | ((v219 | v193[530] ^ 0xDF) << 8);
  LOBYTE(v219) = v193[47] ^ 0xD6;
  v220 = v193[696] ^ 0xDF;
  v221 = v220 | (((v193[857] ^ 0xDF) & 0xFFFF00FF | ((v193[208] ^ 0xFFFFFFDF) << 16) | (v219 << 8)) << 8);
  LODWORD(STACK[0x4D0]) = v221 + 477012184 - 2 * (v221 & 0x1C6EA0D9 ^ v220 & 1);
  v222 = v193[181] ^ 0xDF | ((((v193[664] ^ 0xFFFFFFDF) << 16) | ((v193[503] ^ 0xDF) << 8) | v193[342] ^ 0xDF) << 8);
  LODWORD(STACK[0x4B8]) = v222 - ((2 * v222) & 0x3A727FBE);
  v223 = ((v193[535] ^ 0xFFFFFFDF) << 16) | ((v193[((((v219 & 1) << 8) ^ 0x164) + ((v219 & 1) << 8)) | 0x12] ^ 0xDF) << 8) | v193[213] ^ 0xDF;
  v224 = ((v193[830] ^ 0xDF) << 8) | ((v193[20] ^ 0xFFFFFFDF) << 16) | v193[669] ^ 0xDF;
  LODWORD(STACK[0x4C0]) = v193[52] ^ 0xDF | (v223 << 8);
  LODWORD(STACK[0x4B0]) = v193[508] ^ 0xDF | (v224 << 8);
  v225 = ((v193[862] ^ 0xFFFFFFDF) << 16) | ((v193[701] ^ 0xDF) << 8) | v193[540] ^ 0xDF;
  v226 = v193[835] ^ 0xDF | ((v193[25] ^ 0xDF | ((v193[347] ^ 0xFFFFFFDF) << 16) | ((v193[186] ^ 0xDF) << 8)) << 8);
  LODWORD(STACK[0x4A0]) = v226 - ((2 * v226) & 0x565A657C);
  LODWORD(STACK[0x4AC]) = (v193[379] ^ 0xDF | (v225 << 8)) + 2043721740 - 2 * ((v193[379] ^ 0xDF | (v225 << 8)) & 0x79D0B80D ^ (v193[379] ^ 0xDF) & 1);
  v227 = ((v193[57] ^ 0xDF) << 8) | ((v193[218] ^ 0xFFFFFFDF) << 16) | v193[867] ^ 0xDF;
  v228 = ((v193[384] ^ 0xDF) << 8) | ((v193[545] ^ 0xFFFFFFDF) << 16);
  LODWORD(STACK[0x488]) = v193[191] ^ 0xDF | ((((v193[674] ^ 0xFFFFFFDF) << 16) | ((v193[513] ^ 0xDF) << 8) | v193[352] ^ 0xDF) << 8);
  LODWORD(STACK[0x498]) = v193[706] ^ 0xDF | (v227 << 8);
  v229 = v228 | v193[223] ^ 0xDF;
  v230 = v193[518] ^ 0xDF;
  v231 = v230 | ((((v193[840] ^ 0xDF) << 8) | ((v193[30] ^ 0xFFFFFFDF) << 16) | v193[679] ^ 0xDF) << 8);
  LODWORD(STACK[0x46C]) = v231 - 2 * (v231 & 0x7917B37D ^ v230 & 0x10);
  v232 = v193[62] ^ 0xDF | (v229 << 8);
  LODWORD(STACK[0x42C]) = v232 - ((2 * v232) & 0x9D7EE056);
  LODWORD(STACK[0x484]) = v193[845] ^ 0xDF | ((((v193[357] ^ 0xFFFFFFDF) << 16) | ((v193[196] ^ 0xDF) << 8) | v193[35] ^ 0xDF) << 8);
  v233 = ((v193[67] ^ 0xDF) << 8) | ((v193[228] ^ 0xFFFFFFDF) << 16);
  LODWORD(STACK[0x470]) = ((v193[711] ^ 0xD6) << 16) | ((v193[872] ^ 0xFFFFFFDF) << 24) | ((v193[550] ^ 0xDF) << 8) | v193[389] ^ 0xDF;
  v234 = v233 | v193[877] ^ 0xD6;
  v235 = ((v193[684] ^ 0xFFFFFFDF) << 16) | ((v193[523] ^ 0xDF) << 8);
  v236 = v193[716] ^ 0xDF | (v234 << 8);
  LODWORD(STACK[0x41C]) = v236 - ((2 * v236) & 0x140CD2DA);
  v237 = v193[362] ^ 0xDF | v235;
  v238 = ((v193[394] ^ 0xDF) << 8) | ((v193[555] ^ 0xFFFFFFDF) << 16);
  v239 = v193[201] ^ 0xDF | (v237 << 8);
  LODWORD(STACK[0x3C0]) = v239 - ((2 * v239) & 0x2328C8DE);
  v240 = v193[233] ^ 0xD6 | v238;
  v241 = v193[689] ^ 0xDF | ((v193[40] ^ 0xFFFFFFDF) << 16) | ((v193[850] ^ 0xDF) << 8);
  LODWORD(STACK[0x428]) = v193[72] ^ 0xDF | (v240 << 8);
  LODWORD(STACK[0x424]) = v193[528] ^ 0xDF | (v241 << 8);
  v242 = v193[399] ^ 0xDF;
  v243 = v242 | ((((v193[882] ^ 0xFFFFFFDF) << 16) | ((v193[721] ^ 0xDF) << 8) | v193[560] ^ 0xDF) << 8);
  LODWORD(STACK[0x3B0]) = v243 - 2 * (v243 & 0x72E5FE1F ^ v242 & 5);
  v244 = ((v193[206] ^ 0xDF) << 8) | ((v193[367] ^ 0xFFFFFFDF) << 16) | v193[45] ^ 0xDF;
  LODWORD(STACK[0x420]) = v193[726] ^ 0xDF | ((((v193[238] ^ 0xFFFFFFDF) << 16) | ((v193[77] ^ 0xDF) << 8) | v193[887] ^ 0xDF) << 8);
  LODWORD(STACK[0x3A8]) = (v193[855] ^ 0xDF | (v244 << 8)) - 2 * ((v193[855] ^ 0xDF | (v244 << 8)) & 0x53ADD2E ^ (v193[855] ^ 0xDF) & 0xC);
  LODWORD(STACK[0x3D4]) = ((v193[694] ^ 0xFFFFFFDF) << 16) | ((v193[533] ^ 0xDF) << 8) | v193[372] ^ 0xDF;
  v245 = ((v193[404] ^ 0xDF) << 8) | ((v193[565] ^ 0xFFFFFFDF) << 16) | v193[243] ^ 0xDF;
  v246 = v193[82];
  LODWORD(STACK[0x394]) = v246;
  LODWORD(STACK[0x39C]) = (v246 ^ 0xDF | (v245 << 8)) - 2 * ((v246 ^ 0xDF | (v245 << 8)) & 0x66B3D47D ^ (v246 ^ 0xDF) & 0xD);
  HIDWORD(v247) = LODWORD(STACK[0x55C]) >> 21;
  LODWORD(v247) = STACK[0x55C];
  v248 = ((LODWORD(STACK[0x3CC]) ^ 0xF68ABA15) + 695084962) ^ ((LODWORD(STACK[0x3CC]) ^ 0x1242582C) - 844708455) ^ ((LODWORD(STACK[0x3CC]) ^ 0x2903C7D6) - 152610205);
  v249 = (v165 >> 27) ^ (v165 >> 21);
  v250 = v146 ^ (v146 << 6) ^ (2 * v146) ^ (v146 << 29) ^ LODWORD(STACK[0x294]) ^ LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x410]) ^ LODWORD(STACK[0x24C]) ^ LODWORD(STACK[0x40C]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x404]) ^ LODWORD(STACK[0x47C]) ^ LODWORD(STACK[0x3B4]) ^ v165 ^ (4 * v165) ^ (32 * v165) ^ (v165 << 11) ^ v249 ^ (4 * v249) ^ (32 * v249) ^ (v249 << 11) ^ (LODWORD(STACK[0x3DC]) << 30) ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x27C]) ^ v164 ^ v168 ^ (4 * v164) ^ (32 * v164) ^ (v164 << 11) ^ (v164 >> 21) ^ (v164 >> 27) ^ (4 * ((v164 >> 21) ^ (v164 >> 27))) ^ (32 * ((v164 >> 21) ^ (v164 >> 27))) ^ (((v164 >> 21) ^ (v164 >> 27)) << 11);
  v251 = v193[538] ^ 0xDF | ((v193[699] ^ 0xDF | ((v193[50] ^ 0xFFFFFFDF) << 16) | ((v193[860] ^ 0xDF) << 8)) << 8);
  LODWORD(STACK[0x480]) = v251 - ((2 * v251) & 0x1FDBC338);
  v252 = (v161 << 11) ^ (32 * v161) ^ (v161 >> 21) ^ (v161 >> 27) ^ (4 * ((v161 >> 21) ^ (v161 >> 27))) ^ (32 * ((v161 >> 21) ^ (v161 >> 27))) ^ (((v161 >> 21) ^ (v161 >> 27)) << 11) ^ v163 ^ 0x86FCAA7;
  LODWORD(STACK[0x3D8]) = v252;
  v253 = STACK[0x580];
  v254 = (32 * HIDWORD(v247)) ^ (4 * HIDWORD(v247)) ^ (v247 >> 21) ^ 0x471DE4A7 ^ LODWORD(STACK[0x580]);
  LODWORD(STACK[0x6BC]) = -75026750 - 2009212831 * v254;
  LODWORD(STACK[0x6B0]) = -2009212831 * v248 + 100185062;
  v255 = LODWORD(STACK[0x468]) ^ 0x394E0672;
  LODWORD(STACK[0x3DC]) = v255;
  LODWORD(STACK[0x6C4]) = -75026750 - 2009212831 * v255;
  LODWORD(STACK[0x56C]) = v250 ^ 0x491D10C1;
  LODWORD(STACK[0x6B4]) = -75026750 - 2009212831 * (v250 ^ 0x491D10C1);
  v256 = LODWORD(STACK[0x494]) ^ 0x8DD4187F;
  LODWORD(STACK[0x6B8]) = -75026750 - 2009212831 * v256;
  LODWORD(STACK[0x6C0]) = -75026750 - 2009212831 * v252;
  v257 = STACK[0x2D4];
  LODWORD(STACK[0x47C]) = LODWORD(STACK[0x2D4]) ^ (-1663319554 - 1673081951 * a23);
  LODWORD(STACK[0x468]) = v257 ^ (-1673081951 * a25 - 1663319554);
  LODWORD(STACK[0x418]) = v257 ^ (-1663319554 - 1673081951 * a28);
  LODWORD(STACK[0x414]) = v257 ^ (-1663319554 - 1673081951 * a22);
  LODWORD(STACK[0x410]) = v257 ^ (-1663319554 - 1673081951 * a24);
  LODWORD(STACK[0x40C]) = v257 ^ (-1663319554 - 1673081951 * a26);
  LODWORD(STACK[0x408]) = v257 ^ (-1663319554 - 1673081951 * a27);
  v258 = v257 ^ 0x1309965Du;
  LODWORD(STACK[0x6CC]) = -2009212831 * v258 - 75026750;
  v259 = (v158 >> 27) ^ (v158 >> 21);
  v260 = LODWORD(STACK[0x588]) ^ (32 * LODWORD(STACK[0x3F8])) ^ (16 * LODWORD(STACK[0x3F8])) ^ LODWORD(STACK[0x284]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x234]) ^ LODWORD(STACK[0x3F0]) ^ a123 ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x3E4]) ^ v158 ^ (4 * v158) ^ (v158 << 11) ^ (32 * v158) ^ v259 ^ (4 * v259) ^ (32 * v259) ^ (v259 << 11) ^ v159 ^ (v159 << 12) ^ (v159 << 31) ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x2F4]) ^ LODWORD(STACK[0x21C]) ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x210]) ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x3A0]) ^ (v159 << (LODWORD(STACK[0x57C]) ^ 0x65u)) ^ v160;
  v261 = LODWORD(STACK[0x560]) ^ (v160 >> 27) ^ (v160 >> 21);
  v262 = v260 ^ (4 * v160) ^ (32 * v160) ^ (v160 << 11) ^ v261 ^ (4 * v261) ^ (32 * v261) ^ (v261 << 11) ^ 0x7C71985C;
  LODWORD(STACK[0x588]) = v262;
  LODWORD(STACK[0x6C8]) = -2009212831 * v262 - 75026750;
  v263 = (v254 >> 27) ^ (v254 >> 28) ^ (v254 >> 15) ^ (v254 >> 2) ^ (v254 >> 21) ^ (v254 >> 19) ^ (v254 >> 18) ^ (v254 >> 14) ^ (v254 >> 13) ^ (v254 >> 9) ^ (v254 >> 10) ^ (v254 >> 11) ^ (v254 >> 6) ^ (v254 >> 5) ^ (v254 >> 4);
  v264 = (v254 << 17) ^ (v254 << 30) ^ (32 * v254) ^ (16 * v254);
  LODWORD(STACK[0x3EC]) = v264 + 2011795976 - 2 * (v264 & 0x77E99210 ^ (16 * v254) & 0x10);
  v265 = (v254 >> 20) ^ (v254 >> 1) ^ (v254 >> 22) ^ (v254 >> 25) ^ (v254 >> 21) ^ (v254 >> 19) ^ (v254 >> 18) ^ WORD1(v254) ^ (v254 >> 14) ^ (v254 >> 13) ^ (v254 >> 12) ^ (v254 >> 11) ^ (v254 >> 7) ^ (v254 >> 4);
  LODWORD(STACK[0x560]) = (v265 >> 27) ^ (v253 >> 31);
  v266 = v265 ^ (v254 >> 6);
  v267 = BYTE3(v254) ^ (v254 >> 17) ^ (v254 >> 8) ^ (v254 >> 25) ^ (v254 >> 21) ^ (v254 >> 22) ^ (v254 >> 19) ^ WORD1(v254) ^ (v254 >> 14) ^ (v254 >> 12) ^ (v254 >> 11) ^ (v254 >> 10) ^ (v254 >> 9) ^ (v254 >> 7) ^ (v254 >> 6) ^ (v254 >> 5);
  v268 = (v254 << 7) ^ (v254 << 10);
  LODWORD(STACK[0x53C]) = v268;
  LODWORD(STACK[0x530]) = v254 << 11;
  LODWORD(STACK[0x550]) = v254 << 13;
  LODWORD(STACK[0x55C]) = v254 << 16;
  LODWORD(STACK[0x548]) = v254 << 18;
  v269 = (8 * v254) ^ (4 * v254);
  LODWORD(STACK[0x3AC]) = v269;
  LODWORD(STACK[0x3B4]) = v254 << 23;
  LODWORD(STACK[0x540]) = v254 << 21;
  LODWORD(STACK[0x3B8]) = v254 << 22;
  LODWORD(STACK[0x514]) = v254 << 25;
  LODWORD(STACK[0x52C]) = v254 << 26;
  LODWORD(STACK[0x390]) = v254 << 27;
  v270 = v256 ^ (v254 << 15) ^ (v254 << 8) ^ (v254 << 24) ^ v268 ^ (v254 << 13) ^ (v254 << 11) ^ (v254 << 16) ^ (v254 << 18) ^ (v254 << 21) ^ (v254 << 22) ^ (v254 << 23) ^ (v254 << 25) ^ (v254 << 26) ^ (v254 << 27) ^ v269 ^ (v254 << (((v254 >> 14) & 0x14 ^ 0x14) + ((v254 >> 14) & 0x14)));
  v271 = (v254 >> 29) ^ (v254 >> 30);
  LODWORD(STACK[0x3A0]) = (v263 >> 27) ^ (v263 >> 21);
  LODWORD(STACK[0x38C]) = v263 ^ v271;
  HIDWORD(v247) = v267 ^ v271;
  LODWORD(v247) = v267;
  v272 = v270 ^ v267 ^ v271 ^ (4 * (v267 ^ v271)) ^ (32 * (v267 ^ v271)) ^ (v247 >> 21);
  LODWORD(STACK[0x580]) = (4 * (v267 >> 21)) ^ (32 * (v267 >> 21)) ^ (v267 >> 21 << 11);
  STACK[0x3F8] = (v216 & 0x19 ^ 0x19) + (v216 & 0x19);
  v273 = (a99 >> 30) ^ (a99 >> 29);
  v274 = (v258 >> 25) ^ (v258 >> 22);
  LODWORD(STACK[0x3E8]) = v273 ^ (a99 >> 31) ^ (v258 >> 26) ^ (v258 >> 15) ^ (v258 >> 3) ^ v274 ^ (v258 >> 19) ^ (v258 >> 18) ^ WORD1(v258) ^ (v258 >> 12) ^ (v258 >> 10) ^ (v258 >> 8) ^ (v258 >> 7) ^ (v258 >> 6) ^ (v258 >> 4);
  LODWORD(STACK[0x334]) = 8 * v258;
  LODWORD(STACK[0x328]) = 4 * v258;
  v275 = (8 * v258) ^ (4 * v258);
  v276 = (16 * v258) ^ (32 * v258) ^ v275;
  LODWORD(STACK[0x370]) = v276;
  STACK[0x368] = (v276 & 0x10 ^ 0x13) + (v276 & 0x10u);
  v277 = (v258 >> 11) ^ (v258 >> 14);
  v278 = (v258 >> 20) ^ (v258 >> 1) ^ v274 ^ (v258 >> 21) ^ (v258 >> 19) ^ WORD1(v258) ^ (v258 >> 18) ^ (v258 >> 14) ^ (v258 >> 13) ^ (v258 >> 12) ^ (v258 >> 11) ^ (v258 >> 7) ^ (v258 >> 6);
  v279 = (v258 >> 15) ^ v273 ^ (v258 >> 2) ^ (v258 >> 28) ^ (v258 >> 27) ^ (v258 >> 19) ^ (v258 >> 21) ^ (v258 >> 18) ^ (v258 >> 13) ^ (v258 >> 10) ^ (v258 >> 9) ^ (v258 >> 6) ^ (v258 >> 5) ^ (v258 >> 4);
  v280 = v278 ^ (v258 >> 4);
  STACK[0x380] = v280;
  LODWORD(STACK[0x388]) = (v280 >> 21) ^ (v280 >> 27) ^ (v280 >> (((v258 >> 25) & 0x1E ^ 0x1E) + ((v258 >> 25) & 0x1E)));
  v281 = v273 ^ BYTE3(v258) ^ (v258 >> 17) ^ (v258 >> 21) ^ (v258 >> 25) ^ (v258 >> 22) ^ (v258 >> 19) ^ WORD1(v258) ^ (v258 >> 12) ^ (v258 >> 10) ^ (v258 >> 9) ^ (v258 >> 7) ^ (v258 >> 8) ^ (v258 >> 6) ^ (v258 >> 5);
  LODWORD(STACK[0x528]) = v258 << 20;
  LODWORD(STACK[0x31C]) = v258 << 24;
  LODWORD(STACK[0x348]) = v258 << 21;
  LODWORD(STACK[0x524]) = v258 << 7;
  LODWORD(STACK[0x314]) = v258 << 10;
  LODWORD(STACK[0x340]) = v258 << 11;
  LODWORD(STACK[0x51C]) = v258 << 13;
  LODWORD(STACK[0x520]) = v258 << 16;
  LODWORD(STACK[0x33C]) = v258 << 18;
  LODWORD(STACK[0x318]) = v258 << 22;
  LODWORD(STACK[0x338]) = v258 << 23;
  LODWORD(STACK[0x360]) = v258 << 25;
  LODWORD(STACK[0x32C]) = v258 << 27;
  LODWORD(STACK[0x518]) = v258 << 26;
  LODWORD(STACK[0x344]) = (v279 >> 27) ^ (v279 >> 21);
  LODWORD(STACK[0x330]) = v279 ^ v277;
  HIDWORD(v247) = v281 ^ v277;
  LODWORD(v247) = v281;
  v282 = LODWORD(STACK[0x588]) ^ (v258 << 8) ^ (v258 << 15) ^ (v258 << 24) ^ (v258 << 20) ^ (v258 << 21) ^ (v258 << 7) ^ (v258 << 10) ^ (v258 << 11) ^ (v258 << 13) ^ (v258 << 16) ^ (v258 << 18) ^ (v258 << 22) ^ (v258 << 23) ^ (v258 << 25) ^ (v258 << 27) ^ (v258 << 26) ^ v275 ^ v281 ^ v277 ^ (32 * (v281 ^ v277)) ^ (4 * (v281 ^ v277)) ^ (v247 >> 21);
  v283 = LODWORD(STACK[0x580]) ^ v272;
  LODWORD(STACK[0x364]) = v272;
  v284 = (v272 >> 30) ^ (v272 >> 26) ^ (v272 >> 29) ^ (v272 >> 25) ^ (v272 >> 22) ^ (v283 >> 15) ^ (v283 >> 3) ^ (v283 >> 19) ^ (v283 >> 18) ^ WORD1(v283) ^ (v283 >> 12) ^ (v283 >> 10) ^ (v283 >> 8) ^ (v283 >> 7) ^ (v283 >> 6) ^ (v283 >> 4);
  LODWORD(STACK[0x404]) = v284 ^ (v283 >> (((v281 >> 21) & 0x1F ^ 0x1F) + ((v281 >> 21) & 0x1F)));
  LODWORD(STACK[0x478]) = (v284 >> 27) ^ (v284 >> 21);
  LODWORD(STACK[0x37C]) = (v283 >> 13) ^ (v283 >> 20) ^ (v283 >> 11) ^ (v283 >> 1) ^ (v283 >> 4);
  v285 = (v283 >> 21) ^ (v283 >> 19);
  LODWORD(STACK[0x378]) = (v272 >> 22) ^ (v272 >> 25) ^ (v283 >> 6) ^ v285 ^ (v283 >> 18) ^ (v283 >> 14) ^ WORD1(v283) ^ (v283 >> 12) ^ (v283 >> 7);
  LODWORD(STACK[0x3F4]) = 8 * v283;
  LODWORD(STACK[0x57C]) = v283 << 7;
  LODWORD(STACK[0x588]) = v283 << 10;
  LODWORD(STACK[0x3F0]) = 4 * v283;
  LODWORD(STACK[0x374]) = v283 << 11;
  v286 = (4 * v283) ^ (v283 << 8) ^ (8 * v283) ^ (v283 << 7) ^ (v283 << 10) ^ (v283 << 11);
  LODWORD(STACK[0x580]) = v283 << 13;
  LODWORD(v280) = (v272 >> 25) ^ HIBYTE(v272) ^ (v272 >> 29) ^ (v272 >> 30) ^ (v272 >> 22) ^ (v283 >> 5) ^ (v283 >> 9) ^ (v283 >> 17) ^ v285 ^ WORD1(v283) ^ (v283 >> 14) ^ (v283 >> 12) ^ (v283 >> 10) ^ (v283 >> 8) ^ (v283 >> 7) ^ (v283 >> 6);
  LODWORD(STACK[0x320]) = v280;
  v287 = LODWORD(STACK[0x53C]) ^ LODWORD(STACK[0x530]) ^ LODWORD(STACK[0x550]);
  LODWORD(STACK[0x354]) = v254 << 14;
  v288 = v254 ^ LODWORD(STACK[0x56C]) ^ (v254 << 12) ^ (v254 << 20) ^ (v254 << 31) ^ v287 ^ (v254 << 14) ^ LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x548]);
  LODWORD(STACK[0x34C]) = v254 << 19;
  v289 = (v254 << 19) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x514]);
  LODWORD(STACK[0x350]) = v254 << 28;
  v290 = v288 ^ v289 ^ LODWORD(STACK[0x52C]) ^ (v254 << 28) ^ v266 ^ (4 * v266) ^ (32 * v266) ^ (v266 << 11) ^ LODWORD(STACK[0x560]) ^ (v266 >> 21) ^ (4 * (LODWORD(STACK[0x560]) ^ (v266 >> 21))) ^ (32 * (LODWORD(STACK[0x560]) ^ (v266 >> 21))) ^ ((LODWORD(STACK[0x560]) ^ (v266 >> 21)) << 11);
  LODWORD(STACK[0x53C]) = v283 << 20;
  LODWORD(STACK[0x56C]) = v283 << 16;
  LODWORD(STACK[0x35C]) = v283 << 18;
  LODWORD(STACK[0x358]) = v283 << 21;
  LODWORD(STACK[0x3E4]) = v283 << 22;
  LODWORD(STACK[0x3E0]) = v283 << 24;
  LODWORD(STACK[0x560]) = v283 << 25;
  LODWORD(STACK[0x55C]) = v283 << 26;
  v291 = v280 ^ (v283 >> 11);
  v292 = v290 ^ (v283 << 15) ^ (v283 << 23) ^ (v283 << 27) ^ (v283 << 16) ^ (v283 << 18) ^ (v283 << 20) ^ (v283 << 21) ^ (v283 << 22) ^ (v283 << 24) ^ (v283 << 25) ^ (v283 << 26) ^ (v286 & 0xC437CA25 ^ (v283 << 13) & 0xC437C000 | v286 & 0x3BC835D8 ^ (v283 << 13) & 0x3BC82000) ^ v291 ^ (v291 << 11) ^ (32 * v291) ^ (4 * v291);
  v293 = v282 ^ (4 * (v281 >> 21));
  v294 = v293 ^ (32 * (v281 >> 21));
  v295 = v294 ^ (v281 >> 21 << 11);
  LODWORD(STACK[0x514]) = v295 >> 11;
  LODWORD(STACK[0x310]) = v295 >> 10;
  LODWORD(STACK[0x30C]) = v295 >> 9;
  LODWORD(STACK[0x2FC]) = v295 >> 6;
  LODWORD(STACK[0x308]) = v295 >> 5;
  v296 = (v282 >> 28) ^ (v282 >> 27) ^ (v295 >> 15) ^ (v295 >> 2) ^ (v295 >> 19) ^ (v295 >> 21) ^ (v295 >> 18) ^ (v295 >> 14) ^ (v295 >> 13) ^ (v295 >> 11) ^ (v295 >> 10) ^ (v295 >> 9) ^ (v295 >> 6) ^ (v295 >> 5) ^ (v295 >> 4);
  v297 = STACK[0x51C];
  v298 = v258 ^ (v258 << 6) ^ (2 * v258) ^ (v258 << 29) ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x31C]) ^ (v258 << 10) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x51C]);
  v299 = (v258 << 14) ^ LODWORD(STACK[0x520]);
  LODWORD(STACK[0x2E0]) = v258 << 14;
  v300 = STACK[0x318];
  v301 = STACK[0x518];
  v302 = v299 ^ (v258 << 17) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x318]) ^ LODWORD(STACK[0x518]) ^ (v258 << 28);
  LODWORD(STACK[0x2D8]) = v258 << 28;
  v303 = v298 ^ v302;
  v304 = (LODWORD(STACK[0x3E8]) >> 27) ^ (LODWORD(STACK[0x3E8]) >> 21);
  v305 = v303 ^ LODWORD(STACK[0x3E8]) ^ (4 * LODWORD(STACK[0x3E8])) ^ (32 * LODWORD(STACK[0x3E8])) ^ (LODWORD(STACK[0x3E8]) << 11) ^ v304 ^ (4 * v304) ^ (32 * v304) ^ (v304 << 11) ^ (32 * v295) ^ (16 * v295) ^ (v295 << 17) ^ (v282 << 30);
  LODWORD(STACK[0x2F0]) = v295 << 13;
  LODWORD(STACK[0x2E8]) = v295 << 11;
  LODWORD(STACK[0x2F8]) = v295 << 18;
  LODWORD(STACK[0x2F4]) = v294 << 21;
  LODWORD(STACK[0x334]) = v294 << 22;
  LODWORD(STACK[0x328]) = v294 << 23;
  v306 = v305 ^ (v295 << 11) ^ (v295 << 13) ^ (v295 << 14) ^ (v295 << 18) ^ (v295 << 19) ^ (v294 << 21) ^ (v294 << 22) ^ (v294 << 23);
  v307 = (v282 >> 30) ^ (v282 >> 29);
  LODWORD(STACK[0x31C]) = v307;
  LODWORD(v254) = (8 * v295) ^ (4 * v295);
  LODWORD(STACK[0x304]) = v254;
  v308 = v293 << 28;
  LODWORD(STACK[0x300]) = v293 << 27;
  v309 = (v296 >> 21) ^ (v296 >> 27);
  LODWORD(STACK[0x3E8]) = v309;
  LODWORD(STACK[0x2E4]) = v294 << 26;
  v310 = v306 ^ (v294 << 26) ^ (v293 << 27) ^ (v293 << 28) ^ v254 ^ v296 ^ v307 ^ (4 * (v296 ^ v307)) ^ (32 * (v296 ^ v307)) ^ ((v296 ^ v307) << 11) ^ v309 ^ (v258 << STACK[0x3F8]);
  LODWORD(STACK[0x3F8]) = (v310 ^ -v310 ^ (4 * v309 - (v310 ^ (4 * v309)))) + 4 * v309;
  LODWORD(v254) = (v282 >> 25) ^ (v282 >> 22) ^ (v295 >> 21) ^ (v295 >> 19);
  v311 = STACK[0x2FC];
  v312 = (v295 >> 20) ^ (v295 >> 1) ^ v254 ^ (v295 >> 18) ^ HIWORD(v295) ^ (v295 >> 14) ^ (v295 >> 13) ^ (v295 >> 12) ^ LODWORD(STACK[0x514]) ^ (v295 >> 7) ^ LODWORD(STACK[0x2FC]) ^ (v295 >> 4);
  v313 = STACK[0x340];
  v314 = STACK[0x33C];
  v315 = STACK[0x348];
  v316 = LODWORD(STACK[0x3D8]) ^ (v258 << 30) ^ LODWORD(STACK[0x340]) ^ v297 ^ (v258 << 14) ^ (v258 << 17) ^ LODWORD(STACK[0x33C]) ^ LODWORD(STACK[0x348]) ^ v300 ^ LODWORD(STACK[0x338]) ^ v301 ^ LODWORD(STACK[0x32C]) ^ (v258 << 28) ^ LODWORD(STACK[0x370]) ^ (v258 << STACK[0x368]) ^ LODWORD(STACK[0x330]) ^ (4 * LODWORD(STACK[0x330])) ^ (32 * LODWORD(STACK[0x330])) ^ (LODWORD(STACK[0x330]) << 11) ^ LODWORD(STACK[0x344]) ^ (4 * LODWORD(STACK[0x344])) ^ (32 * LODWORD(STACK[0x344])) ^ (LODWORD(STACK[0x344]) << 11);
  v317 = STACK[0x2E8];
  v318 = STACK[0x2F0];
  v319 = STACK[0x2F8];
  v320 = STACK[0x2F4];
  v321 = STACK[0x2E4];
  v322 = v316 ^ v295 ^ (v282 << 31) ^ (v295 << 12) ^ (v295 << 10) ^ LODWORD(STACK[0x2E8]) ^ (v295 << 7) ^ LODWORD(STACK[0x2F0]) ^ (v295 << 14) ^ LODWORD(STACK[0x2F8]) ^ (v295 << 16) ^ (v295 << 19) ^ (v295 << 20) ^ LODWORD(STACK[0x2F4]) ^ (v294 << 25) ^ LODWORD(STACK[0x2E4]) ^ v308 ^ v312;
  v323 = (v312 >> 27) ^ (v282 >> 31) ^ (v312 >> 21);
  LODWORD(STACK[0x370]) = v322 ^ (4 * v312) ^ (32 * v312) ^ (v312 << 11) ^ v323 ^ (4 * v323) ^ (32 * v323) ^ (v323 << 11);
  LODWORD(v254) = HIBYTE(v282) ^ (v295 >> 17) ^ (v295 >> 8) ^ v254 ^ HIWORD(v295) ^ (v295 >> 14) ^ (v295 >> 12) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x30C]) ^ (v295 >> 7) ^ v311 ^ LODWORD(STACK[0x308]);
  v324 = v254 ^ LODWORD(STACK[0x31C]);
  v325 = v258 ^ LODWORD(STACK[0x3DC]) ^ (v258 << 12) ^ (v258 << 19) ^ (v258 << 31) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x314]) ^ v313 ^ LODWORD(STACK[0x51C]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x520]) ^ v314 ^ LODWORD(STACK[0x528]) ^ v315 ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x518]) ^ STACK[0x380] ^ (4 * STACK[0x380]) ^ (32 * STACK[0x380]) ^ (STACK[0x380] << 11) ^ LODWORD(STACK[0x388]) ^ (4 * LODWORD(STACK[0x388])) ^ (32 * LODWORD(STACK[0x388])) ^ (LODWORD(STACK[0x388]) << 11) ^ (v295 << 15) ^ (v295 << 8) ^ (v294 << 24) ^ v321 ^ (v295 << 7) ^ v317 ^ (v295 << 10) ^ v318 ^ (v295 << 16) ^ v319 ^ (v295 << 20) ^ v320 ^ LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x328]) ^ (v294 << 25) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x304]) ^ v324 ^ (4 * v324) ^ (32 * v324) ^ (v324 << 11);
  v326 = LODWORD(STACK[0x320]) >> 21;
  v327 = (32 * v326) ^ (v326 << 11) ^ (4 * v326) ^ v292;
  v328 = v327 ^ v326;
  v329 = (v292 >> 30) ^ (v292 >> 29) ^ (v327 >> 21);
  v330 = (v292 >> 28) ^ (v292 >> 27) ^ (v327 >> 18) ^ (v327 >> 13) ^ (v327 >> 15) ^ (v328 >> 2) ^ (v328 >> 4);
  LODWORD(v280) = v329 ^ (v327 >> 14) ^ (v327 >> 19) ^ (v327 >> 11) ^ (v328 >> 10) ^ (v328 >> 9) ^ (v328 >> 6) ^ (v328 >> 5) ^ v330;
  LODWORD(STACK[0x524]) = v280;
  LODWORD(STACK[0x528]) = (v280 >> 21) ^ (v330 >> 27);
  v331 = v329 ^ HIBYTE(v292) ^ (v292 >> 25) ^ (v292 >> 22);
  LOWORD(v331) = v331 + (v327 >> 19) - 2 * (v331 & (v327 >> 19));
  v332 = (v327 >> 17) ^ HIWORD(v327) ^ (v327 >> 12) ^ (v327 >> 14) ^ (v327 >> 11) ^ (v328 >> 8) ^ (v328 >> 7) ^ (v328 >> 6) ^ (v328 >> 10) ^ (v328 >> 9) ^ (v328 >> 5);
  LODWORD(STACK[0x368]) = v332;
  v333 = LODWORD(STACK[0x378]) ^ LODWORD(STACK[0x37C]);
  v334 = (LODWORD(STACK[0x37C]) >> 27) ^ (LODWORD(STACK[0x364]) >> 31);
  v335 = LODWORD(STACK[0x3CC]) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x530]) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x52C]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x38C]) ^ (4 * LODWORD(STACK[0x38C])) ^ (32 * LODWORD(STACK[0x38C])) ^ (LODWORD(STACK[0x3A0]) | (LODWORD(STACK[0x38C]) << 11)) ^ (4 * LODWORD(STACK[0x3A0])) ^ (32 * LODWORD(STACK[0x3A0])) ^ (LODWORD(STACK[0x3A0]) << 11) ^ (LODWORD(STACK[0x364]) << 31);
  LODWORD(STACK[0x52C]) = v283 << 14;
  v336 = (v283 << 14) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x57C]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x374]) ^ LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x35C]) ^ LODWORD(STACK[0x53C]) ^ LODWORD(STACK[0x358]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x55C]);
  LODWORD(STACK[0x51C]) = v283 << 28;
  v337 = v332 ^ v331;
  LODWORD(STACK[0x3DC]) = 4 * v328;
  LODWORD(STACK[0x518]) = 8 * v328;
  LODWORD(STACK[0x514]) = v328 << 11;
  LODWORD(STACK[0x3EC]) = v328 << 13;
  LODWORD(STACK[0x3B8]) = v328 << 18;
  LODWORD(STACK[0x3D8]) = v328 << 21;
  LODWORD(STACK[0x3CC]) = v328 << 22;
  LODWORD(STACK[0x3B4]) = v328 << 23;
  LODWORD(STACK[0x3AC]) = v328 << 26;
  LODWORD(STACK[0x3A0]) = v328 << 27;
  LODWORD(STACK[0x378]) = v335 ^ v283 ^ (v283 << 19) ^ (v283 << 12) ^ v336 ^ (v283 << 28) ^ v333 ^ (4 * v333) ^ (32 * v333) ^ (v333 << 11) ^ v334 ^ (v333 >> 21) ^ (4 * (v334 ^ (v333 >> 21))) ^ (32 * (v334 ^ (v333 >> 21))) ^ ((v334 ^ (v333 >> 21)) << 11) ^ (v328 << 15) ^ (v328 << 16) ^ (v328 << 7) ^ (v328 << 8) ^ (v328 << 10) ^ (v328 << 20) ^ (v328 << 24) ^ (v328 << 25) ^ (4 * v328) ^ (8 * v328) ^ (v328 << 11) ^ (v328 << 13) ^ (v328 << 18) ^ (v328 << 21) ^ (v328 << 22) ^ (v328 << 23) ^ (v328 << 26) ^ (v328 << 27) ^ v337 ^ (4 * v337) ^ (32 * v337) ^ (v337 << 11);
  v338 = v254 >> 21;
  v339 = v325 ^ (4 * (v254 >> 21)) ^ (32 * (v254 >> 21)) ^ (v254 >> 21 << 11);
  LODWORD(STACK[0x550]) = v325 >> 31;
  LODWORD(STACK[0x374]) = v325 >> 30;
  v340 = v339 >> 12;
  v341 = v339 ^ v338;
  LODWORD(STACK[0x364]) = v325 >> 29;
  LODWORD(STACK[0x390]) = v341 >> 10;
  v342 = (v339 >> 15) ^ (v325 >> 26) ^ (v339 >> 12) ^ (v325 >> 31) ^ (v325 >> 30) ^ (v325 >> 29) ^ (v341 >> 3) ^ (v341 >> 10) ^ (v341 >> 4);
  LODWORD(STACK[0x35C]) = v325 >> 25;
  LODWORD(STACK[0x360]) = v325 >> 22;
  v343 = v339 >> 19;
  v344 = (v325 >> 22) ^ (v325 >> 25);
  v345 = v344 & 2;
  if ((v345 & (v339 >> 19)) != 0)
  {
    v345 = -v345;
  }

  LODWORD(STACK[0x358]) = v341 >> 8;
  v346 = HIWORD(v339) ^ (v339 >> 18);
  v347 = v346 ^ (v341 >> 7) ^ (v341 >> 8) ^ (v341 >> 6) ^ v342 ^ v344 & 0xFFFFFFFD ^ (v345 + v343);
  v348 = (v347 >> 21) ^ (v342 >> 27);
  v349 = (8 * v341) ^ (4 * v341) ^ (v341 << 7) ^ (v341 << 10) ^ (v341 << 13);
  LODWORD(STACK[0x38C]) = v341 << 20;
  LODWORD(STACK[0x37C]) = v341 << 26;
  LODWORD(STACK[0x548]) = v341 << 28;
  v350 = v341 ^ (2 * v341) ^ (v341 << 6) ^ (v341 << 17) ^ (v341 << 29) ^ v349 ^ (v341 << 14) ^ (v341 << 16) ^ (v341 << 20) ^ (v341 << 22) ^ (v341 << 24) ^ (v341 << 25) ^ (v341 << 26) ^ (v341 << 28) ^ v347 ^ (4 * v347) ^ (32 * v347) ^ (v347 << 11) ^ v348 ^ (4 * v348);
  LODWORD(STACK[0x388]) = v348;
  LOBYTE(v347) = (v341 ^ (2 * v341) ^ (v341 << 6) ^ (8 * v341) ^ (4 * v341) ^ (v341 << 7) ^ v347 ^ (4 * v347) ^ (32 * v347) ^ v348 ^ (4 * v348)) & 0xA3;
  v351 = v350 ^ (32 * v348);
  LODWORD(STACK[0x380]) = v351;
  v352 = v341 ^ (v341 << 12) ^ (v341 << 11) ^ (v341 << 10) ^ (v341 << 13) ^ (v341 << 14) ^ (v341 << (-57 * ((v347 ^ 0xA3) + v347) * ((v351 & 0x4B ^ 0x4B) + (v351 & 0x4B))));
  LODWORD(STACK[0x540]) = v352 & 0x78C5C01 ^ (v341 << 16) & 0x78C0000 | v352 & 0xF873A3FE ^ (v341 << 16) & 0xF8730000;
  v353 = STACK[0x370];
  STACK[0x530] = (STACK[0x370] & 0x15 ^ 0x15) + (STACK[0x370] & 0x15);
  LODWORD(STACK[0x520]) = v346 ^ (v339 >> 14) ^ (v339 >> 20) ^ (v339 >> 13) ^ (v339 >> 21) ^ v343 ^ v340 ^ (v339 >> 11) ^ (v341 >> 1) ^ v344 ^ (v341 >> 7) ^ (v341 >> 6) ^ (v341 >> 4);
  v354 = HIBYTE(v325) ^ (v339 >> 17) ^ LODWORD(STACK[0x35C]) ^ LODWORD(STACK[0x374]) ^ LODWORD(STACK[0x364]) ^ LODWORD(STACK[0x360]) ^ v343 ^ (v339 >> 21) ^ (v339 >> 14) ^ v340 ^ HIWORD(v339) ^ (v339 >> 11) ^ (v341 >> 9) ^ (v341 >> 5) ^ LODWORD(STACK[0x390]) ^ (v341 >> 7) ^ LODWORD(STACK[0x358]) ^ (v341 >> 6);
  LODWORD(STACK[0x390]) = v341 << 18;
  LODWORD(STACK[0x374]) = v353 ^ (v341 << 15) ^ (v341 << 8) ^ (v341 << 21) ^ (v341 << 23) ^ (v341 << 27) ^ v349 ^ (v341 << 11) ^ (v341 << 16) ^ (v341 << 18) ^ (v341 << 20) ^ (v341 << 24) ^ (v341 << 22) ^ (v341 << 25) ^ (v341 << 26) ^ v354;
  v355 = LODWORD(STACK[0x368]) >> 21;
  v356 = LODWORD(STACK[0x378]) ^ 0xBA22B7E7;
  v357 = v356 ^ (4 * v355) ^ (32 * v355) ^ (v355 << 11);
  v358 = v356 >> 22;
  v359 = v356 >> 25;
  v360 = (v356 >> 31) ^ (v357 >> 15) ^ (v356 >> 30) ^ (v356 >> 29) ^ (v356 >> 26) ^ (v356 >> 25) ^ HIWORD(v357) ^ (v356 >> 22) ^ (v357 >> 19) ^ (v357 >> 18) ^ (v357 >> 12);
  v361 = v357 ^ v355;
  v362 = v360 ^ ((v357 ^ v355) >> 3) ^ ((v357 ^ v355) >> 8) ^ ((v357 ^ v355) >> 10) ^ (v361 >> 7) ^ (v361 >> 6) ^ (v361 >> 4);
  v363 = (v361 << 28) ^ (v361 << 26);
  v364 = v361 << 16;
  v365 = v361 << 7;
  v366 = v361 << 10;
  v367 = v361 << 20;
  v368 = v361 << 13;
  v369 = v361 << 14;
  v370 = v361 << 25;
  v371 = (v362 >> 27) ^ (v362 >> 21);
  LODWORD(STACK[0x394]) = v361 ^ (8 * v361) ^ (v361 << 22) ^ (2 * v361) ^ (4 * v361) ^ (v361 << 6) ^ (v361 << 16) ^ (v361 << 17) ^ (v361 << 24) ^ (v361 << 29) ^ (v361 << 20) ^ (v361 << 7) ^ (v361 << 10) ^ (v361 << 13) ^ (v361 << 14) ^ (v361 << 25) ^ v363 ^ v362 ^ (4 * v362) ^ (32 * v362) ^ v371 ^ (4 * v371) ^ (v371 << 11) ^ (32 * v371) ^ (v362 << ((STACK[0x394] & 0xB ^ 0xB) + (STACK[0x394] & 0xB))) ^ 0xC77BE7B7;
  v372 = (v357 >> 14) ^ (v357 >> 20) ^ (v357 >> 21) ^ (v357 >> 13) ^ (v357 >> 11) ^ (v361 >> 1);
  v373 = v358 ^ v359 ^ (v357 >> 12) ^ (v357 >> 19) ^ (v357 >> 18) ^ HIWORD(v357) ^ (v361 >> 7) ^ (v361 >> 6) ^ (v361 >> 4) ^ v372;
  v374 = v283 ^ (2 * v283) ^ (v283 << 6) ^ (v283 << 17) ^ (v283 << 29) ^ LODWORD(STACK[0x3F0]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x57C]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x52C]) ^ LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x53C]) ^ LODWORD(STACK[0x3E4]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x51C]) ^ LODWORD(STACK[0x404]) ^ (4 * LODWORD(STACK[0x404])) ^ (32 * LODWORD(STACK[0x404])) ^ (LODWORD(STACK[0x404]) << 11) ^ LODWORD(STACK[0x478]) ^ (4 * LODWORD(STACK[0x478])) ^ (32 * LODWORD(STACK[0x478])) ^ (LODWORD(STACK[0x478]) << 11) ^ (v328 << 19) ^ (16 * v328) ^ (32 * v328) ^ (v328 << 14) ^ (v328 << 17) ^ (v328 << 28) ^ (v328 << 30) ^ LODWORD(STACK[0x3DC]) ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x3CC]) ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x524]) ^ (4 * LODWORD(STACK[0x524])) ^ (32 * LODWORD(STACK[0x524])) ^ (LODWORD(STACK[0x524]) << 11) ^ LODWORD(STACK[0x528]) ^ (4 * LODWORD(STACK[0x528])) ^ (32 * LODWORD(STACK[0x528])) ^ (LODWORD(STACK[0x528]) << 11) ^ v361 ^ (v361 << 18) ^ (v361 << 19) ^ (v361 << 12) ^ (v361 << 11) ^ (v361 << 21) ^ (v361 << 31);
  v375 = (v373 >> 27) ^ (v372 >> 30) ^ (v373 >> 21);
  v376 = v374 ^ v364 ^ v365 ^ v366 ^ v368 ^ v369 ^ v367 ^ v370 ^ v363 ^ v373 ^ (4 * v373) ^ (32 * v373) ^ (v373 << 11) ^ v375 ^ (4 * v375) ^ (32 * v375) ^ (v375 << 11);
  v377 = LODWORD(STACK[0x374]) ^ (4 * v354) ^ (32 * v354) ^ (v354 << 11);
  v378 = v377 ^ (4 * (v354 >> 21)) ^ (32 * (v354 >> 21)) ^ (v354 >> 21 << 11);
  v379 = (v378 >> 21) ^ (v378 >> 19) ^ (v378 >> 14);
  v380 = (v377 >> 29) ^ (v377 >> 30);
  v381 = (v377 >> 28) ^ (v377 >> 27) ^ (v378 >> 18) ^ (v378 >> 15) ^ v379 ^ v380;
  v382 = v381 & 0x11494933 ^ (v378 >> 13) & 0x14933 | v381 & 0xEEB6B6CC ^ (v378 >> 13) & 0x6B6CC;
  v383 = v378 ^ (v354 >> 21);
  v384 = (v383 >> 4) ^ (v383 >> 2) ^ v382;
  v385 = (v383 >> 10) ^ (v378 >> 11) ^ (v383 >> 9) ^ (v383 >> 6) ^ (v383 >> 5) ^ v384;
  v384 >>= 27;
  LOBYTE(v354) = (v384 & 0xB ^ 0xB) + (v384 & 0xB);
  v386 = v384 ^ (v385 >> 21);
  v387 = LODWORD(STACK[0x380]) ^ (LODWORD(STACK[0x388]) << 11) ^ (16 * v383) ^ (4 * v383) ^ (32 * v383) ^ (v383 << 14) ^ (v383 << 17) ^ (v383 << 19) ^ (v383 << 28) ^ (v383 << 30) ^ (v383 << 13) ^ (v383 << 11) ^ (8 * v383) ^ (v383 << 18) ^ (v383 << 21) ^ (v383 << 22) ^ (v383 << 26) ^ (v383 << 23) ^ (v383 << 27) ^ v385 ^ (4 * v385) ^ (32 * v385) ^ v386 ^ (4 * v386) ^ (32 * v386) ^ (v386 << 11) ^ (v385 << v354) ^ 0xFA4C1E85;
  v388 = HIBYTE(v377) ^ (v377 >> 22) ^ (v377 >> 25) ^ (v378 >> 17) ^ HIWORD(v378) ^ (v378 >> 12) ^ v379 ^ (v378 >> 11) ^ (v383 >> 7) ^ (v383 >> 8) ^ v380 ^ (v383 >> 10) ^ (v383 >> 9) ^ (v383 >> 6) ^ (v383 >> 5);
  v389 = LODWORD(STACK[0x590]) - 2147;
  LODWORD(STACK[0x588]) = v389;
  v390 = STACK[0x494];
  v391 = LODWORD(STACK[0x494]) ^ (-1673081951 * a39 - 1663319554);
  LODWORD(STACK[0x590]) = LODWORD(STACK[0x494]) ^ (-1663319554 - 1673081951 * a40);
  v392 = v390 ^ (-1663319554 - 1673081951 * a41);
  v393 = v390 ^ (-1663319554 - 1673081951 * a42);
  v394 = v390 ^ (-1663319554 - 1673081951 * a44);
  v395 = v390 ^ (-1663319554 - 1673081951 * a45);
  v396 = v390 ^ (-1663319554 - 1673081951 * a43 + v389 - 750);
  v397 = STACK[0x394];
  v398 = LODWORD(STACK[0x550]) ^ (LODWORD(STACK[0x520]) >> 27) ^ (LODWORD(STACK[0x520]) >> 21);
  v399 = STACK[0x570];
  v400 = (v341 << 31) ^ (v341 << 19) ^ LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x37C]) ^ LODWORD(STACK[0x548]) ^ (((LODWORD(STACK[0x3E8]) << 11) ^ (32 * LODWORD(STACK[0x3E8]))) & 0x1FFFFFF | (v341 << 25)) ^ (v341 << STACK[0x530]) ^ LODWORD(STACK[0x520]) ^ (32 * LODWORD(STACK[0x520])) ^ (4 * LODWORD(STACK[0x520])) ^ (LODWORD(STACK[0x520]) << 11) ^ v398 ^ (4 * v398) ^ (32 * v398) ^ (v398 << 11) ^ (4 * v383) ^ (v383 << 7) ^ (v383 << 8) ^ (v383 << 10) ^ (v383 << 15) ^ (v383 << 16) ^ (v383 << 20) ^ (v383 << 24) ^ (v383 << 25) ^ (8 * v383) ^ (v383 << 11) ^ (v383 << 13) ^ (v383 << 18) ^ (v383 << 21) ^ (v383 << 22) ^ (v383 << 23) ^ (v383 << 26) ^ (v383 << 27) ^ LODWORD(STACK[0x540]) ^ v388 ^ (4 * v388) ^ (32 * v388) ^ (v388 << 11) ^ (v388 >> 21) ^ (4 * (v388 >> 21)) ^ (32 * (v388 >> 21)) ^ (v388 >> 21 << 11) ^ LODWORD(STACK[0x3F8]);
  v401 = LODWORD(STACK[0x444]) ^ ((LODWORD(STACK[0x444]) ^ 0x4411078E) - 1179805620) ^ ((LODWORD(STACK[0x444]) ^ 0x202E69E1) - 577571291) ^ ((LODWORD(STACK[0x444]) ^ 0x98ABF5A6) + 1696033380) ^ ((LODWORD(STACK[0x444]) ^ 0xFED7FBF3) + 57369655);
  v402 = LODWORD(STACK[0x438]) ^ ((LODWORD(STACK[0x438]) ^ 0xE6E69BEF) + 1603419443) ^ ((LODWORD(STACK[0x438]) ^ 0xB851B324) + 19207674) ^ ((LODWORD(STACK[0x438]) ^ 0x65C38F32) - 591975952) ^ ((LODWORD(STACK[0x438]) ^ 0x7DFFFEDB) - 997500921) ^ v387;
  v403 = -2009212831 * (((LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x394]) ^ 0x3CF8F2DC) - 633442444) ^ ((LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x394]) ^ 0x1316A297) - 170901703) ^ ((LODWORD(STACK[0x3D0]) ^ LODWORD(STACK[0x394]) ^ 0x62649C4A) - 2069757466)) + 1073582963;
  LODWORD(STACK[0x5A8]) = -740515934 - 2009212831 * (((LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x394]) ^ 0xF0FF360D) + 700703697) ^ ((LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x394]) ^ 0xDE68869) - 723886667) ^ ((LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x394]) ^ 0xF0A708A6) + 698080636));
  LODWORD(STACK[0x5AC]) = v403;
  LODWORD(STACK[0x5C8]) = -102028744 - 2009212831 * (((v402 ^ 0x99A2A45A) + 890350389) ^ ((v402 ^ 0x9E4A7D70) + 855208479) ^ ((v402 ^ 0xBB2F9E8D) + 396136932));
  LODWORD(STACK[0x5CC]) = -2009212831 * (((v401 ^ v387 ^ 0xA88A7860) + 1694829392) ^ ((v401 ^ v387 ^ 0x174DBBAE) - 624768894) ^ ((v401 ^ v387 ^ 0x47C8BD71) - 1975005601)) + 1728230097;
  LODWORD(STACK[0x5E8]) = -2009212831 * (v376 ^ v396) - 75026750;
  LODWORD(STACK[0x5EC]) = -2009212831 * (v390 ^ (-1673081951 * a46 - 1663319554) ^ v376) - 75026750;
  v404 = ((LODWORD(STACK[0x398]) ^ v397 ^ 0x94DE25AE) - 2049415784) ^ ((LODWORD(STACK[0x398]) ^ v397 ^ 0x2CD2FEB8) + 1037352578) ^ ((LODWORD(STACK[0x398]) ^ v397 ^ 0x22C72CA1) + 868314265);
  v405 = -2009212831 * (LODWORD(STACK[0x40C]) ^ v400) - 75026750;
  LODWORD(STACK[0x608]) = -2009212831 * (LODWORD(STACK[0x408]) ^ v400) - 75026750;
  LODWORD(STACK[0x60C]) = v405;
  v406 = (LODWORD(STACK[0x448]) ^ 0xAE59545A) & (2 * (STACK[0x448] & 0xCE59441B)) ^ STACK[0x448] & 0xCE59441B;
  v407 = ((2 * (LODWORD(STACK[0x448]) ^ 0xBA7BD46A)) ^ 0xE84520E2) & (LODWORD(STACK[0x448]) ^ 0xBA7BD46A) ^ (2 * (LODWORD(STACK[0x448]) ^ 0xBA7BD46A)) & 0x74229070;
  v408 = (v407 ^ 0x64008060) & (4 * v406) ^ v406;
  v409 = ((4 * (v407 ^ 0x14229011)) ^ 0xD08A41C4) & (v407 ^ 0x14229011) ^ (4 * (v407 ^ 0x14229011)) & 0x74229070;
  v410 = (v409 ^ 0x50020040) & (16 * v408) ^ v408;
  v411 = ((16 * (v409 ^ 0x24209031)) ^ 0x42290710) & (v409 ^ 0x24209031) ^ (16 * (v409 ^ 0x24209031)) & 0x74229070;
  v412 = v410 ^ 0x74229071 ^ (v411 ^ 0x40200000) & (v410 << 8);
  v413 = LODWORD(STACK[0x448]) ^ v387 ^ (2 * ((v412 << 16) & 0x74220000 ^ v412 ^ ((v412 << 16) ^ 0x10710000) & (((v411 ^ 0x34029061) << 8) & 0x74220000 ^ 0x54220000 ^ (((v411 ^ 0x34029061) << 8) ^ 0x22900000) & (v411 ^ 0x34029061))));
  v414 = (LODWORD(STACK[0x460]) ^ 0x96ECBFD1) & (2 * (STACK[0x460] & 0xD80CC018)) ^ STACK[0x460] & 0xD80CC018;
  v415 = ((2 * (LODWORD(STACK[0x460]) ^ 0x26EC3FF1)) ^ 0xFDC1FFD2) & (LODWORD(STACK[0x460]) ^ 0x26EC3FF1) ^ (2 * (LODWORD(STACK[0x460]) ^ 0x26EC3FF1)) & 0xFEE0FFE8;
  v416 = (v415 ^ 0xE24000C8) & (4 * v414) ^ v414;
  v417 = ((4 * (v415 ^ 0x2200029)) ^ 0xFB83FFA4) & (v415 ^ 0x2200029) ^ (4 * (v415 ^ 0x2200029)) & 0xFEE0FFE8;
  v418 = (v417 ^ 0xFA80FFA0) & (16 * v416) ^ v416;
  v419 = ((16 * (v417 ^ 0x4600049)) ^ 0xEE0FFE90) & (v417 ^ 0x4600049) ^ (16 * (v417 ^ 0x4600049)) & 0xFEE0FFE0;
  v420 = v418 ^ 0xFEE0FFE9 ^ (v419 ^ 0xEE00FE00) & (v418 << 8);
  v421 = LODWORD(STACK[0x460]) ^ v387 ^ (2 * ((v420 << 16) & 0x7EE00000 ^ v420 ^ ((v420 << 16) ^ 0x7FE90000) & (((v419 ^ 0x10E00169) << 8) & 0x7EE00000 ^ (((v419 ^ 0x10E00169) << 8) ^ 0x60FF0000) & (v419 ^ 0x10E00169) ^ 0x1E000000)));
  v422 = ((2 * v421) & 0xC6487C04 ^ 0x44004004) + (v421 ^ 0x41651F4D);
  v423 = (LODWORD(STACK[0x450]) ^ 0xD837DD97) & (2 * (STACK[0x450] & 0xD9379E17)) ^ STACK[0x450] & 0xD9379E17;
  v424 = ((2 * (LODWORD(STACK[0x450]) ^ 0x5A32EDBB)) ^ 0x60AE758) & (LODWORD(STACK[0x450]) ^ 0x5A32EDBB) ^ (2 * (LODWORD(STACK[0x450]) ^ 0x5A32EDBB)) & 0x830573AC;
  v425 = (v424 ^ 0x16008) & (4 * v423) ^ v423;
  v426 = ((4 * (v424 ^ 0x810510A4)) ^ 0xC15CEB0) & (v424 ^ 0x810510A4) ^ (4 * (v424 ^ 0x810510A4)) & 0x830573AC;
  v427 = (v426 ^ 0x542AC) & (16 * v425) ^ v425;
  v428 = ((16 * (v426 ^ 0x8300310C)) ^ 0x30573AC0) & (v426 ^ 0x8300310C) ^ (16 * (v426 ^ 0x8300310C)) & 0x830573A0;
  v429 = v427 ^ 0x830573AC ^ (v428 ^ 0x53200) & (v427 << 8);
  v430 = LODWORD(STACK[0x450]) ^ v387 ^ (2 * ((v429 << 16) & 0x3050000 ^ v429 ^ ((v429 << 16) ^ 0x73AC0000) & (((v428 ^ 0x8300412C) << 8) & 0x3050000 ^ 0x2040000 ^ (((v428 ^ 0x8300412C) << 8) ^ 0x5730000) & (v428 ^ 0x8300412C))));
  v431 = -2009212831 * (((LODWORD(STACK[0x474]) ^ v397 ^ 0x53D0E3CA) - 1435527281) ^ ((LODWORD(STACK[0x474]) ^ v397 ^ 0x6AAACE80) - 1827292475) ^ ((LODWORD(STACK[0x474]) ^ v397 ^ 0x4F506726) - 1225845917));
  LODWORD(STACK[0x5B0]) = -1163855469 - 2009212831 * v404;
  LODWORD(STACK[0x5B4]) = v431 + 264440121;
  LODWORD(STACK[0x5D0]) = -2009212831 * (((v413 ^ 0x413FC6D7) + 851138729) ^ ((v413 ^ 0x7A71DF2B) + 167067989) ^ ((v413 ^ 0xC75E6380) - 1260716544)) + 2126866750;
  LODWORD(STACK[0x5D4]) = -2009212831 * v422;
  v432 = (((LODWORD(STACK[0x458]) + 1248118170) ^ 0x79112D5D) - 688323311) ^ (LODWORD(STACK[0x458]) + 1248118170) ^ (((LODWORD(STACK[0x458]) + 1248118170) ^ 0x90F4A8CB) + 1058832519) ^ (((LODWORD(STACK[0x458]) + 1248118170) ^ 0x4225AD9A) - 305297960) ^ (((LODWORD(STACK[0x458]) + 1248118170) ^ 0xFBD7FFBE) + 1413470196);
  v433 = ((LODWORD(STACK[0x49C]) ^ v397 ^ 0x90DEF7C9) - 1442268239) ^ ((LODWORD(STACK[0x49C]) ^ v397 ^ 0xE947F6D6) - 745424208) ^ ((LODWORD(STACK[0x49C]) ^ v397 ^ 0xC8ED1B4C) - 230992074);
  LODWORD(STACK[0x5F0]) = -2009212831 * (v395 ^ v376) - 75026750;
  LODWORD(STACK[0x5F4]) = (((-264440122 - v431) & 0x883DD861) + ((v431 + 264440121) & 0x883DD861)) * ((v394 ^ v376) + 1663319554);
  v434 = -2009212831 * (LODWORD(STACK[0x414]) ^ v400) - 75026750;
  LODWORD(STACK[0x610]) = -2009212831 * (LODWORD(STACK[0x410]) ^ v400) - 75026750;
  LODWORD(STACK[0x614]) = v434;
  v435 = LODWORD(STACK[0x454]) ^ ((LODWORD(STACK[0x454]) ^ 0x369C8BE3) - 608821754) ^ ((LODWORD(STACK[0x454]) ^ 0xAB006EEA) + 1177221901) ^ ((LODWORD(STACK[0x454]) ^ 0x78B652EB) - 1784887538) ^ ((LODWORD(STACK[0x454]) ^ 0xF7FFDDFB) + 450185246);
  v436 = (((LODWORD(STACK[0x464]) + 88842901) ^ 0x7AAD2D09) - 603801108) ^ (LODWORD(STACK[0x464]) + 88842901) ^ (((LODWORD(STACK[0x464]) + 88842901) ^ 0xF4D49CC4) + 1383794727) ^ (((LODWORD(STACK[0x464]) + 88842901) ^ 0xA8F6A52F) + 240726478) ^ (((LODWORD(STACK[0x464]) + 88842901) ^ 0x7FDF7FFF) - 646911202);
  LODWORD(STACK[0x5B8]) = -2009212831 * v433 - 1173274505;
  LODWORD(STACK[0x5BC]) = -2009212831 * (((v432 ^ v397 ^ 0x1CDE57F7) + 994062980) ^ ((v432 ^ v397 ^ 0xA46DAFB) + 769179536) ^ ((v432 ^ v397 ^ 0x81F4BD09) - 1502947202)) - 1955422576;
  v437 = -2009212831 * (((LODWORD(STACK[0x44C]) ^ v387 ^ 0xF483FD93) + 192676461) ^ ((LODWORD(STACK[0x44C]) ^ v387 ^ 0x830C83D0) + 2096331824) ^ ((LODWORD(STACK[0x44C]) ^ v387 ^ 0xDBF0CCE3) + 604975901)) - 1497309854;
  LODWORD(STACK[0x5D8]) = -2009212831 * (((v430 ^ 0xD31FF1D7) + 992141969) ^ ((v430 ^ 0x9159EE7B) + 2036661565) ^ ((v430 ^ 0x613F7866) - 1996330206)) - 26659596;
  LODWORD(STACK[0x5DC]) = v437;
  v438 = (((LODWORD(STACK[0x434]) + 1565297860) ^ 0xC21DA776) + 1306761507) ^ (LODWORD(STACK[0x434]) + 1565297860) ^ (((LODWORD(STACK[0x434]) + 1565297860) ^ 0xB3B6756) - 2067441405) ^ (((LODWORD(STACK[0x434]) + 1565297860) ^ 0xCE58FE34) + 1101447265) ^ (((LODWORD(STACK[0x434]) + 1565297860) ^ 0x777FFFBF) - 125713940);
  LODWORD(STACK[0x5F8]) = -2009212831 * (v391 ^ v376) - 75026750;
  LODWORD(STACK[0x5FC]) = -2009212831 * (v393 ^ v376) - 75026750;
  v439 = -2009212831 * (v400 ^ LODWORD(STACK[0x2BC])) - 75026750;
  LODWORD(STACK[0x61C]) = -2009212831 * (LODWORD(STACK[0x418]) ^ v400) - 75026750;
  LODWORD(STACK[0x618]) = v439;
  v440 = LODWORD(STACK[0x430]) ^ ((LODWORD(STACK[0x430]) ^ 0xE92BE6ED) + 102392777) ^ ((LODWORD(STACK[0x430]) ^ 0x95A1D877) + 2056281427) ^ ((LODWORD(STACK[0x430]) ^ 0x138BABBE) - 54907236) ^ ((LODWORD(STACK[0x430]) ^ 0x7FCFEFFE) - 1862374692);
  LODWORD(STACK[0x5C0]) = -2009212831 * (((v436 ^ v397 ^ 0x811D929A) - 1068616700) ^ ((v436 ^ v397 ^ 0xC72E15EC) - 2038582410) ^ ((v436 ^ v397 ^ 0xD8180BDC) - 1723093690)) + 1023365390;
  LODWORD(STACK[0x5C4]) = -2009212831 * (((v438 ^ v397 ^ 0x2A80246D) - 756652498) ^ ((v438 ^ v397 ^ 0xEC79B43E) + 337639039) ^ ((v438 ^ v397 ^ 0x7183B64F) - 1981418480)) - 1158828155;
  v441 = ((v440 ^ v387 ^ 0x38233708) - 1359100865) ^ ((v440 ^ v387 ^ 0xCDD02F52) + 1527700581) ^ ((v440 ^ v387 ^ 0x1F717C05) - 1984983244);
  v442 = -2009212831 * (LODWORD(STACK[0x47C]) ^ v400) - 75026750;
  LODWORD(STACK[0x620]) = -2009212831 * (LODWORD(STACK[0x468]) ^ v400) - 75026750;
  LODWORD(STACK[0x624]) = v442;
  v443 = (LODWORD(STACK[0x500]) + 734897113) ^ (811966381 - LODWORD(STACK[0x500])) ^ (((LODWORD(STACK[0x500]) + 734897113) ^ 0xE1EE9DAF) + 1109533143) ^ (((LODWORD(STACK[0x500]) + 734897113) ^ 0x7C19B3F8) - 539684990) ^ (((LODWORD(STACK[0x500]) + 734897113) ^ 0x3E3B922E) - 1644745128);
  v444 = ((LODWORD(STACK[0x510]) ^ 0x4D079968) - 1404033356) ^ LODWORD(STACK[0x510]) ^ ((LODWORD(STACK[0x510]) ^ 0x9F3C7FC3) + 2120990745) ^ ((LODWORD(STACK[0x510]) ^ 0x136CC930) - 230983956) ^ ((LODWORD(STACK[0x510]) ^ 0xDFFF6FBF) + 1051250789);
  LODWORD(STACK[0x5E0]) = -2009212831 * (((v435 ^ v387 ^ 0x3DE2D67E) - 1513866247) ^ ((v435 ^ v387 ^ 0x6BBA033C) - 207819077) ^ ((v435 ^ v387 ^ 0xBEC1A1DE) + 652692569)) - 967810169;
  LODWORD(STACK[0x5E4]) = -2009212831 * v441 + 1483628440;
  v445 = -2009212831 * (v392 ^ v376) - 75026750;
  v446 = -2009212831 * (LODWORD(STACK[0x590]) ^ v376) - 75026750;
  LODWORD(STACK[0x600]) = v445;
  LODWORD(STACK[0x604]) = v446;
  LODWORD(STACK[0x6A8]) = -2009212831 * (((v444 ^ v397 ^ 0x7877B2BC) + 996026219) ^ ((v444 ^ v397 ^ 0x6581F932) + 648572133) ^ ((v444 ^ v397 ^ 0xC425EC1D) - 2029225524)) - 39775684;
  LODWORD(STACK[0x6AC]) = -2009212831 * (((v443 ^ v387 ^ 0xC93B1F48) + 208642708) ^ ((v443 ^ v387 ^ 0xC624EB98) + 57693764) ^ ((v443 ^ v387 ^ 0xA960A9D3) + 1815352329)) - 2038766455;
  v447 = (((LODWORD(STACK[0x4D4]) + 1956975935) ^ v387 ^ 0x46F1AA88) - 1190242952) ^ (((LODWORD(STACK[0x4D4]) + 1956975935) ^ v387 ^ 0x653FC27E) - 1698677374) ^ (((LODWORD(STACK[0x4D4]) + 1956975935) ^ v387 ^ 0xAD27634C) + 1389927604);
  v448 = -2009212831 * (LODWORD(STACK[0x4E8]) ^ 0xA4E15FF6 ^ v397) - 75026750;
  LODWORD(STACK[0x628]) = -2009212831 * (v376 ^ 0x9090909 ^ LODWORD(STACK[0x508])) - 75026750;
  LODWORD(STACK[0x62C]) = v448;
  LODWORD(STACK[0x668]) = -2009212831 * (v400 ^ LODWORD(STACK[0x4F8])) - 75026750;
  LODWORD(STACK[0x66C]) = -2009212831 * v447 + 1594593340;
  v449 = -2009212831 * ((((LODWORD(STACK[0x4C8]) - 123440414) ^ v387 ^ 0x5070178) - 84345208) ^ (((LODWORD(STACK[0x4C8]) - 123440414) ^ v387 ^ 0xCFFE9C9F) + 805397345) ^ (((LODWORD(STACK[0x4C8]) - 123440414) ^ v387 ^ 0xC811F180) + 938348160)) - 1113970231;
  LODWORD(STACK[0x670]) = -2009212831 * (v400 ^ LODWORD(STACK[0x4D8])) - 75026750;
  LODWORD(STACK[0x674]) = v449;
  v450 = LODWORD(STACK[0x4F0]) ^ v376;
  v451 = v450 ^ 0x9090909;
  v452 = -2009212831 * ((v450 & 0x11 ^ 0x6E75D2B0 | (v450 ^ 0x9090909) & 0x11) ^ LODWORD(STACK[0x4E4]) ^ v397 ^ 0xA0073C0F) - 75026750;
  LODWORD(STACK[0x630]) = -2009212831 * v451 - 75026750;
  LODWORD(STACK[0x634]) = v452;
  v453 = LODWORD(STACK[0x4A0]) - 1423101250;
  v454 = LODWORD(STACK[0x46C]) - 115887251;
  v455 = LODWORD(STACK[0x42C]) + 1321168939;
  v456 = LODWORD(STACK[0x41C]) - 1979291283;
  v457 = LODWORD(STACK[0x3C0]) - 1852545937;
  v458 = LODWORD(STACK[0x3B0]) - 219808230;
  v459 = LODWORD(STACK[0x3A8]) - 2059739870;
  v460 = v193[211] ^ 0xDF;
  v461 = LODWORD(STACK[0x39C]) - 424422288;
  v462 = LODWORD(STACK[0x480]) + 267248028;
  v463 = -2009212831 * (v400 ^ LODWORD(STACK[0x4E0])) - 75026750;
  v464 = v376 ^ 0x9090909 ^ LODWORD(STACK[0x4C0]);
  v465 = v400 ^ LODWORD(STACK[0x4B0]);
  v466 = -2009212831 * (LODWORD(STACK[0x4D0]) ^ 0xD2154E66 ^ v397) - 75026750;
  v467 = LODWORD(STACK[0x4AC]) ^ 0xB7A256B2 ^ v397;
  v468 = LODWORD(STACK[0x488]) ^ v400;
  v469 = -2009212831 * ((((LODWORD(STACK[0x4B8]) - 1657192481) ^ v387 ^ 0x7C6423EC) - 2086937580) ^ (((LODWORD(STACK[0x4B8]) - 1657192481) ^ v387 ^ 0x1B6A7B0A) - 459963146) ^ (((LODWORD(STACK[0x4B8]) - 1657192481) ^ v387 ^ 0x7B79BC) - 8092092)) - 981548580;
  LODWORD(STACK[0x638]) = -2009212831 * (v376 ^ 0x9090909 ^ LODWORD(STACK[0x4DC])) - 75026750;
  LODWORD(STACK[0x63C]) = v466;
  LODWORD(STACK[0x678]) = v463;
  LODWORD(STACK[0x67C]) = v469;
  LODWORD(STACK[0x680]) = -2009212831 * v465 - 75026750;
  LODWORD(STACK[0x684]) = -2009212831 * (((v453 ^ v387 ^ 0x1D9AF0F0) - 496693488) ^ ((v453 ^ v387 ^ 0x171E07DF) - 387844063) ^ ((v453 ^ v387 ^ 0x5BE5DB14) - 1541790484)) - 1330005731;
  v470 = v376 ^ 0x9090909 ^ LODWORD(STACK[0x498]);
  LODWORD(STACK[0x640]) = -2009212831 * v464 - 75026750;
  LODWORD(STACK[0x644]) = -2009212831 * v467 - 75026750;
  v471 = v457 ^ v387;
  v472 = v376 ^ LODWORD(STACK[0x470]) ^ 0x9000909;
  v473 = -2009212831 * (LODWORD(STACK[0x484]) ^ v400) - 75026750;
  LODWORD(STACK[0x68C]) = -2009212831 * (((v454 ^ v387 ^ 0x269CE127) - 647815463) ^ ((v454 ^ v387 ^ 0xF4BD4BE1) + 188920863) ^ ((v454 ^ v387 ^ 0xD17A072E) + 780531922)) + 1279775658;
  LODWORD(STACK[0x688]) = -2009212831 * v468 - 75026750;
  LODWORD(STACK[0x64C]) = -2009212831 * (v455 ^ 0x80CD9E95 ^ v397) - 75026750;
  LODWORD(STACK[0x648]) = -2009212831 * v470 - 75026750;
  v474 = LODWORD(STACK[0x424]) ^ v400;
  LODWORD(STACK[0x690]) = v473;
  LODWORD(STACK[0x694]) = -2009212831 * (((v471 ^ 0x5153C1A9) - 1364443561) ^ ((v471 ^ 0x9C2DDE66) + 1674715546) ^ ((v471 ^ 0xA6A66525) + 1499044571)) + 436547948;
  v475 = -2009212831 * (v376 ^ LODWORD(STACK[0x428]) ^ 0x9090009) - 75026750;
  v476 = v376 ^ 0x9090909 ^ LODWORD(STACK[0x420]);
  v477 = STACK[0x3D4];
  LODWORD(STACK[0x69C]) = -2009212831 * (((v459 ^ v387 ^ 0x477A6EDA) - 1199206106) ^ ((v459 ^ v387 ^ 0xECB08B31) + 323974351) ^ ((v459 ^ v387 ^ 0xD4BC264C) + 725866932)) - 748209911;
  LODWORD(STACK[0x698]) = -2009212831 * v474 - 75026750;
  LODWORD(STACK[0x650]) = -2009212831 * v472 - 75026750;
  LODWORD(STACK[0x654]) = -2009212831 * (v456 ^ 0x44748ED3 ^ v397) - 75026750;
  LODWORD(STACK[0x658]) = v475;
  LODWORD(STACK[0x65C]) = -2009212831 * (v458 ^ 0x3C9710A4 ^ v397) - 75026750;
  LODWORD(STACK[0x6A4]) = -2009212831 * (((v462 ^ v387 ^ 0x89C0EF77) + 1983844489) ^ ((v462 ^ v387 ^ 0x13C9429B) - 331956891) ^ ((v462 ^ v387 ^ 0x6FA852F5) - 1873302261)) - 837095621;
  LODWORD(STACK[0x6A0]) = -2009212831 * ((v460 | (v477 << 8)) ^ v400) - 75026750;
  LODWORD(STACK[0x660]) = -2009212831 * v476 - 75026750;
  LODWORD(STACK[0x664]) = -2009212831 * (v461 ^ 0x28C13ACE ^ v397) - 75026750;
  STACK[0x5A0] -= 2096;
  return (*(v399 + 8 * ((482 * (*STACK[0x2A8] != 0)) ^ LODWORD(STACK[0x588]))))(a14, 0xB1E8616327758806);
}