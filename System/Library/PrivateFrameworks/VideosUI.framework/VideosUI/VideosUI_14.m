uint64_t sub_1E348F204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4 + a2;
  v10 = a4 - 1;
  *(v6 + v10) = *(v7 + v10) ^ *(a1 + v10) ^ (47 * v10) ^ *(v9 + 3) ^ *(v4 + v10) ^ 0x3C;
  return (*(v8 + 8 * ((59 * (v10 == ((v5 + 1461900446) & 0xA8DD1FD5 ^ 0xF11))) ^ v5)))();
}

void sub_1E348F27C()
{
  *&STACK[0x2D0] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x300] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x310] = vdupq_n_s64(v1);
  *&STACK[0x2E0] = vdupq_n_s64(0x2AB11F016CBDAD66uLL);
  *&STACK[0x2F0] = vdupq_n_s64(v0);
  JUMPOUT(0x1E348F4E8);
}

uint64_t sub_1E3490A0C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  STACK[0x848] = *(a1 + 8 * v4);
  LODWORD(STACK[0x9F4]) = v3;
  STACK[0x9F8] = &STACK[0x758];
  return (*(a1 + 8 * (((a2 == 0) * ((((((v4 + 6065) | 0x44) - 2868) | 0x424) - 2167) ^ 0xB0F)) ^ ((v4 + 6065) | 0x44))))();
}

uint64_t sub_1E3490B04@<X0>(int a1@<W8>)
{
  STACK[0x9A8] = v1;
  v3 = STACK[0x7F8];
  STACK[0x9B0] = STACK[0x7F8];
  return (*(v2 + 8 * ((2448 * (v1 - v3 > ((a1 - 3125) | 0x1180u) - 5613)) ^ a1)))();
}

uint64_t sub_1E3490B54@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x31A6)))(a1);
  *(STACK[0x790] + 24) = 0;
  return sub_1E3490B80();
}

void sub_1E3490B80()
{
  (*(v1 + 8 * (v0 + 6155)))();
  STACK[0x790] = 0;
  JUMPOUT(0x1E3490BACLL);
}

void df35957c4e0()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF43178) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF43178) ^ 0xDF))] ^ 0x1F]) - 58);
  v1 = *(v0 - 4);
  v6 = off_1F5DB1D28 - 8;
  v2 = off_1F5DB16B8 - 8;
  v3 = *(&off_1F5DB1610 + (*(off_1F5DB16B8 + (*(off_1F5DB1D28 + (-85 * ((dword_1ECF432C0 - v1) ^ 0xDF)) - 8) ^ 0x9Bu) - 8) ^ (-85 * ((dword_1ECF432C0 - v1) ^ 0xDF))) + 128);
  v4 = 2054362027 * ((&v9[1] + v1 + *v3) ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v4;
  *v3 = v4;
  v8 = 0;
  v7 = 0;
  v11 = &v7;
  v10[0] = 869295389 * ((1800565523 - (v10 | 0x6B527313) + (v10 | 0x94AD8CEC)) ^ 0x25F9A0BF) + 1903876051;
  LODWORD(v4) = 2054362027 * ((*v3 - *(v0 - 4)) ^ 0x3EF64BDF);
  v5 = *(&off_1F5DB1610 + ((-85 * (dword_1ECF43178 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * (dword_1ECF43178 ^ 0xDF ^ dword_1ECF432C0))] ^ 0x1F]) + 191) - 8;
  (*&v5[8 * (*(off_1F5DB1800 + (*(off_1F5DB19C8 + v4 - 12) ^ 0xE2u) - 12) ^ v4) + 76816])(v10);
  v9[0] = 0;
  v10[0] = 869295389 * ((v10 & 0x6C6D09CE | ~(v10 | 0x6C6D09CE)) ^ 0x22C6DA62) + 1903876051;
  v11 = v9;
  (*&v5[8 * (*(off_1F5DB1B28 + ((*off_1F5DB1C30)[(-85 * ((*v3 - *(v0 - 4)) ^ 0xDF))] ^ 0x21u) - 12) ^ (-85 * ((*v3 - *(v0 - 4)) ^ 0xDF))) + 76024])(v10);
  v10[0] = 476323082 - 1710126949 * ((((v10 | 0x15AA73E0) ^ 0xFFFFFFFE) - (~v10 | 0xEA558C1F)) ^ 0xD84ED78F);
  (*&v5[8 * ((-85 * ((*v3 - *(v0 - 4)) ^ 0xDF)) ^ v2[v6[(-85 * ((*v3 - *(v0 - 4)) ^ 0xDF))] ^ 0xBF]) + 75368])(v10);
  __asm { BRAA            X8, X17 }
}

void sub_1E34911A4(uint64_t a1)
{
  v1 = *(a1 + 16) + 33731311 * ((-2 - ((a1 | 0x7FFD9340) + (~a1 | 0x80026CBF))) ^ 0xB9F4A69C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E3491358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x600] = v4;
  v6 = (*(a4 + 8 * (v5 ^ 0x3765)))(32, 0x103004054B5FA7DLL);
  v7 = STACK[0x3E8];
  STACK[0x4C0] = v6;
  return (*(v7 + 8 * (((v6 == 0) * (((v5 + 414) ^ 0xFFFFFD79) + (v5 ^ 0xA63))) ^ v5)))();
}

void WGrQCCz7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 && a5 != 0 && a6 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E3491A5C()
{
  STACK[0x948] = v1;
  v3 = STACK[0x478];
  STACK[0x950] = STACK[0x478];
  return (*(v2 + 8 * ((3130 * (v1 - v3 > (4 * ((v0 - 1814264284) & 0x2C236F4A ^ 0xA15u)) - 371)) ^ v0)))();
}

uint64_t sub_1E3491B88()
{
  v4 = (*(v3 + 8 * (v0 + 4623)))();
  *v1 = 0;
  return v2(v4);
}

uint64_t sub_1E3491C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = STACK[0x3F8] - 507;
  v44 = (v41 ^ v42) + a41;
  STACK[0xA10] = v44;
  return (*(STACK[0x400] + 8 * (v43 ^ (29 * (v44 > a34)))))();
}

uint64_t sub_1E3491C6C()
{
  v5 = (v2 - 1901) - v1 - 1800;
  v6 = *(v0 + v5 - 15);
  v7 = *(v0 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((6347 * (v1 == 96)) ^ v2)))();
}

uint64_t sub_1E3491CB8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * (((v7 == 0) * ((v5 - a2 - 712) ^ 0x1F0E)) ^ (v3 + v5 + 3252))))();
}

uint64_t sub_1E3491CF4@<X0>(int8x16_t *a1@<X8>)
{
  v2.i64[0] = 0x7878787878787878;
  v2.i64[1] = 0x7878787878787878;
  v3 = vsubq_s8(v1[1], vandq_s8(vaddq_s8(v1[1], v1[1]), v2));
  v4 = vandq_s8(vaddq_s8(*v1, *v1), v2);
  v2.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v2.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *a1 = vaddq_s8(vsubq_s8(*v1, v4), v2);
  a1[1] = vaddq_s8(v3, v2);
  return sub_1E3491D28();
}

uint64_t sub_1E3491D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(v64 + 8 * (v65 ^ 0x34CA)))(v67, 0, 24);
  *(v66 + 104) = 0x1FA834112;
  *(v66 + 112) = 0x200000004;
  STACK[0x5B8] = v67;
  LODWORD(STACK[0x73C]) = 0;
  STACK[0x4D8] = 0;
  v68 = (*(a64 + 8 * (v65 ^ 0x34E8)))(128, 0x10800400FED9166);
  STACK[0x668] = v68;
  return (*(a64 + 8 * (((v68 == 0) * (((v65 - 4416) | 0xA40) ^ 0xA57)) ^ v65)))();
}

void sub_1E3491DD8(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&STACK[0x310] = vdupq_n_s64(0x731CB210FB4C4567uLL);
  *&STACK[0x320] = vdupq_n_s64(0x19C69BDE09677532uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x6D4CEA43F2532C17uLL);
  *&STACK[0x300] = vdupq_n_s64(v7);
  *&STACK[0x2D0] = vdupq_n_s64(0xC008A9762A8A187uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xE7FEEAD13AAEBCF2);
  STACK[0x2C0] = a6 + v8;
  *&STACK[0x2A0] = vdupq_n_s64(v9);
  *&STACK[0x2B0] = vdupq_n_s64(0x176202B71A6AE107uLL);
  *&STACK[0x290] = vdupq_n_s64(a1);
  STACK[0x280] = v6 + v8 - 8512;
  *&STACK[0x260] = vdupq_n_s64(a3);
  *&STACK[0x270] = vdupq_n_s64(a2);
  *&STACK[0x240] = vdupq_n_s64(a5);
  *&STACK[0x250] = vdupq_n_s64(a4);
  *&STACK[0x220] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x230] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x200] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x210] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  JUMPOUT(0x1E3491FC4);
}

uint64_t sub_1E3493230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((&a14 & 0xDACD8FDA | ~(&a14 | 0xDACD8FDA)) ^ 0x7D5BA347) * v21;
  a15 = v23 + 920149463;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674576251;
  a16 = a12;
  a17 = &a11;
  v24 = (*(v19 + 8 * (v22 ^ 0x2EA7u)))(&a14);
  return (*(v19 + 8 * (((a14 == v20) * ((((v22 - 557378418) & 0x37C7) - 3800) ^ 0x117B)) ^ v22)))(v24);
}

uint64_t sub_1E34933D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v65 - 224) = (v64 - 2140796570) ^ (914963389 * ((v65 - 232) ^ 0x2CFCB17B));
  v67 = (*(v66 + 8 * (v64 + 9178)))(v65 - 232);
  v68 = *(STACK[0x668] + 8);
  STACK[0x5F8] = *(a64 + 8 * v64);
  return (*(a64 + 8 * (((v68 == 0) * (((210 * (v64 ^ 0x1CE)) ^ 0xFFFFF466) + 6 * (v64 ^ 0x7B))) ^ v64 ^ 0x248B)))(v67, 16215976);
}

uint64_t sub_1E34934F4()
{
  v1.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v1.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return sub_1E3493518((v0 + 2138297564) ^ 0x1866, 9512, v1);
}

uint64_t sub_1E3493518(uint64_t a1, int a2, int8x16_t a3)
{
  v11 = ~v7 + v5;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = v9 + v11;
  *(v14 - 15) = veorq_s8(v12, a3);
  *(v14 - 31) = veorq_s8(v13, a3);
  return (*(v10 + 8 * (((a1 + v7 == v6) * a2) ^ (v4 + v8 + 1283))))();
}

uint64_t sub_1E3493568@<X0>(unint64_t a1@<X8>)
{
  STACK[0x938] = v2;
  v4 = STACK[0x370];
  STACK[0x940] = STACK[0x370];
  return (*(v3 + 8 * ((1532 * (v2 - v4 > (((v1 ^ 0x1B45u) + 5274) ^ a1))) ^ v1)))();
}

void sub_1E3493650(uint64_t a1)
{
  v1 = 869295389 * ((~a1 & 0xF52F98AE | a1 & 0xAD06751) ^ 0x447BB4FD);
  v2 = *(a1 + 12) - v1;
  v3 = (*(a1 + 8) - v1);
  if (*a1)
  {
    v4 = v3 == 12299;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

void sub_1E3493778()
{
  STACK[0x310] = STACK[0x4E0] + 24;
  v0 = LOWORD(STACK[0x9BE]);
  LODWORD(STACK[0x2C0]) = v0;
  LODWORD(STACK[0x2B0]) = v0 ^ 0xFFFFA60A;
  v1 = STACK[0x9C0];
  LODWORD(STACK[0x2D0]) = 197499223;
  LODWORD(STACK[0x220]) = LODWORD(STACK[0x9C4]) ^ 0xD6A561FA;
  STACK[0x300] = STACK[0x820] + 24;
  v2 = LOWORD(STACK[0x9F6]);
  LODWORD(STACK[0x2A0]) = v2;
  LODWORD(STACK[0x290]) = v2 ^ 0x4CF9;
  v3 = STACK[0x9F8];
  LODWORD(STACK[0x210]) = LODWORD(STACK[0x9FC]) ^ 0xD6A561FA;
  STACK[0x2F0] = STACK[0x6F0] + 24;
  STACK[0x2E0] = STACK[0x470] + 24;
  LODWORD(STACK[0x240]) = v1;
  LODWORD(STACK[0x280]) = v1 ^ 0xD6A561FA;
  LODWORD(STACK[0x230]) = v3;
  LODWORD(STACK[0x270]) = v3 ^ 0xD6A561FA;
  LODWORD(STACK[0x260]) = LODWORD(STACK[0x51C]) ^ 0xD6A561FA;
  LODWORD(STACK[0x250]) = LODWORD(STACK[0x8F4]) - ((2 * LODWORD(STACK[0x8F4])) & 0xBAC1F152) - 580847447;
  JUMPOUT(0x1E331FA84);
}

uint64_t sub_1E3493790(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v27 = v20;
  STACK[0x310] = a5 & 0xFFFFFFF8;
  v28 = a16 - (a5 & 0xFFFFFFF8) + 8;
  v29 = a6 + v19 + a1 + v16 + a5 - a16;
  v30 = v17 + a5 - a16;
  v31.i64[0] = v30 - 7;
  v31.i64[1] = v30 - 8;
  v32.i64[0] = v30 - 3;
  v32.i64[1] = v30 - 4;
  v33.i64[0] = v30 - 1;
  v33.i64[1] = v30 - 2;
  v34 = (a3 + 3904) | 0x200u;
  v35.i64[0] = v30 - 5;
  v35.i64[1] = v30 + (v34 ^ 0xFFFFFFFFFFFFE5A2);
  v36.i64[0] = v29 - 5;
  v36.i64[1] = v29 + (v34 ^ 0xFFFFFFFFFFFFE5A2);
  v37.i64[0] = v29 - 1;
  v37.i64[1] = v29 - 2;
  v38.i64[0] = v29 - 3;
  v38.i64[1] = v29 - 4;
  v39.i64[0] = v29 - 7;
  v39.i64[1] = v29 - 8;
  v40 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v41 = vandq_s8(v35, v40);
  v42 = vandq_s8(v33, v40);
  v43 = vandq_s8(v32, v40);
  v44 = vandq_s8(v31, v40);
  v45 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v49 = vdupq_n_s64(0x38uLL);
  v50 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v51 = vaddq_s64(v48, v50);
  v52 = vaddq_s64(v47, v50);
  v53 = vaddq_s64(v46, v50);
  v54 = vaddq_s64(v45, v50);
  v55 = vdupq_n_s64(v27);
  v56 = vdupq_n_s64(0xB30538E1A5AF13B6);
  v57 = vsubq_s64(vorrq_s8(v51, v55), vorrq_s8(v51, v56));
  v58 = vaddq_s64(vsubq_s64(vorrq_s8(v54, v55), vorrq_s8(v54, v56)), v56);
  v59 = vaddq_s64(vsubq_s64(vorrq_s8(v53, v55), vorrq_s8(v53, v56)), v56);
  v60 = vaddq_s64(vsubq_s64(vorrq_s8(v52, v55), vorrq_s8(v52, v56)), v56);
  v61 = vdupq_n_s64(0x513852535460B9BuLL);
  v62 = vaddq_s64(v57, v56);
  v63 = veorq_s8(v62, v61);
  v64 = veorq_s8(v60, v61);
  v65 = veorq_s8(v59, v61);
  v66 = vdupq_n_s64(0xAD5560B2ACB07AC7);
  v67 = veorq_s8(v58, v61);
  v68 = veorq_s8(v58, v66);
  v69 = veorq_s8(v59, v66);
  v70 = veorq_s8(v60, v66);
  v71 = veorq_s8(v62, v66);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v74 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v75 = veorq_s8(vaddq_s64(v72, v68), v74);
  v76 = veorq_s8(v73, v74);
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v70), v74);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v71), v74);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v81 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v82 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v83 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v82);
  v87 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v88 = veorq_s8(vaddq_s64(v83, v79), v87);
  v89 = veorq_s8(vaddq_s64(v84, v80), v87);
  v90 = veorq_s8(vaddq_s64(v85, v81), v87);
  v91 = veorq_s8(v86, v87);
  v92 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v95 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v96 = veorq_s8(v90, v94);
  v97 = veorq_s8(v89, v93);
  v98 = veorq_s8(v88, v92);
  v99 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v98);
  v103 = vaddq_s64(v101, v97);
  v104 = vaddq_s64(v100, v96);
  v105 = vaddq_s64(v99, v95);
  v106 = vdupq_n_s64(0x68767FB9A21293EuLL);
  v107 = vdupq_n_s64(0x343B3FDCD10949FuLL);
  v108 = vaddq_s64(vsubq_s64(v102, vandq_s8(vaddq_s64(v102, v102), v106)), v107);
  v109 = vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), v106)), v107);
  v110 = vaddq_s64(vsubq_s64(v104, vandq_s8(vaddq_s64(v104, v104), v106)), v107);
  v111 = vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v106)), v107);
  v112 = vdupq_n_s64(0x5A20053898C9EB80uLL);
  v113 = veorq_s8(v111, v112);
  v114 = veorq_s8(v110, v112);
  v115 = veorq_s8(v109, v112);
  v116 = veorq_s8(v108, v112);
  v117 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v120 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v121 = veorq_s8(v115, v119);
  v122 = veorq_s8(v114, v118);
  v123 = veorq_s8(v113, v117);
  v124 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v123);
  v128 = vaddq_s64(v126, v122);
  v129 = vaddq_s64(v125, v121);
  v130 = vaddq_s64(v124, v120);
  v131 = vdupq_n_s64(0x20842EAD28A8535AuLL);
  v132 = vdupq_n_s64(0xDF7BD152D757ACA5);
  v133 = vaddq_s64(vsubq_s64(vorrq_s8(v130, v131), vorrq_s8(v130, v132)), v132);
  v134 = vaddq_s64(vsubq_s64(vorrq_s8(v129, v131), vorrq_s8(v129, v132)), v132);
  v135 = vaddq_s64(vsubq_s64(vorrq_s8(v128, v131), vorrq_s8(v128, v132)), v132);
  v136 = vaddq_s64(vsubq_s64(vorrq_s8(v127, v131), vorrq_s8(v127, v132)), v132);
  v137 = vdupq_n_s64(0x41C1B387D8B777ADuLL);
  v138 = veorq_s8(v136, v137);
  v139 = veorq_s8(v135, v137);
  v140 = veorq_s8(v134, v137);
  v141 = veorq_s8(v133, v137);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v143 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v144 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v145 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v146 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v145);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v144);
  v150 = vaddq_s64(v147, v143);
  v151 = vaddq_s64(v146, v142);
  v152 = vdupq_n_s64(0x9D61AAA81A10264DLL);
  v153 = vdupq_n_s64(0x629E5557E5EFD9B2uLL);
  v154 = vsubq_s64(vorrq_s8(v148, v152), vorrq_s8(v148, v153));
  v155 = vaddq_s64(vsubq_s64(vorrq_s8(v151, v152), vorrq_s8(v151, v153)), v153);
  v156 = vaddq_s64(vsubq_s64(vorrq_s8(v150, v152), vorrq_s8(v150, v153)), v153);
  v157 = vaddq_s64(vsubq_s64(vorrq_s8(v149, v152), vorrq_s8(v149, v153)), v153);
  v158 = vdupq_n_s64(0xF9A2B6AA6A94F821);
  v159 = veorq_s8(vaddq_s64(v154, v153), v158);
  v160 = veorq_s8(v157, v158);
  v161 = veorq_s8(v156, v158);
  v162 = veorq_s8(v155, v158);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v164 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v165 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v166 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v167 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v168 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v169 = veorq_s8(vaddq_s64(v167, v163), v168);
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v164), v168);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v165), v168);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v166), v168);
  v173 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v176 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, v173));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, v174));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, v175));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v176);
  v181 = vdupq_n_s64(0x170BF460A85E9EEEuLL);
  v182 = vdupq_n_s64(0xF47A05CFABD0B088);
  v183 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), v181), v177), v182);
  v184 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v181), v178), v182);
  v185 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), v181), v179), v182);
  v186 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v181), v180), v182);
  v187 = vdupq_n_s64(0x5F4A471D8357ECC9uLL);
  v188 = veorq_s8(v186, v187);
  v189 = veorq_s8(v185, v187);
  v190 = veorq_s8(v184, v187);
  v191 = veorq_s8(v183, v187);
  v192 = vandq_s8(vshlq_n_s64(v31, 3uLL), v49);
  v193 = vandq_s8(vshlq_n_s64(v32, 3uLL), v49);
  v194 = vshlq_u64(v191, vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v49)));
  v195 = vshlq_u64(v190, vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v49)));
  v196 = vshlq_u64(v189, vnegq_s64(v193));
  v197 = vshlq_u64(v188, vnegq_s64(v192));
  v198 = vandq_s8(v39, v40);
  v199 = vandq_s8(v38, v40);
  v200 = vandq_s8(v37, v40);
  v201 = vandq_s8(v36, v40);
  v202 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v205 = vdupq_n_s64(0x568FD0F9DF82F1E3uLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v207 = vaddq_s64(v206, v205);
  v208 = vaddq_s64(v204, v205);
  v209 = vaddq_s64(v203, v205);
  v210 = vdupq_n_s64(0x29702F06207D0E1CuLL);
  v211 = vaddq_s64(v202, v205);
  v212 = vdupq_n_s64(0x5879FD990C46CAD5uLL);
  v213 = vaddq_s64(vandq_s8(vsubq_s64(v210, v202), v212), v211);
  v214 = vaddq_s64(vandq_s8(vsubq_s64(v210, v203), v212), v209);
  v215 = vaddq_s64(vandq_s8(vsubq_s64(v210, v204), v212), v208);
  v216 = vaddq_s64(vandq_s8(vsubq_s64(v210, v206), v212), v207);
  v217 = vdupq_n_s64(0x5E79FD990C46CAD5uLL);
  v218 = vsubq_s64(v216, vandq_s8(v207, v217));
  v219 = vsubq_s64(v215, vandq_s8(v208, v217));
  v220 = vsubq_s64(v214, vandq_s8(v209, v217));
  v221 = vsubq_s64(v213, vandq_s8(v211, v217));
  v222 = vdupq_n_s64(0x6F262667B511DA8BuLL);
  v223 = veorq_s8(v221, v222);
  v224 = veorq_s8(v220, v222);
  v225 = veorq_s8(v219, v222);
  v226 = veorq_s8(v218, v222);
  v227 = vdupq_n_s64(0xDB58A1A949065591);
  v228 = veorq_s8(v218, v227);
  v229 = veorq_s8(v219, v227);
  v230 = veorq_s8(v220, v227);
  v231 = veorq_s8(v221, v227);
  v232 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v229);
  v234 = vaddq_s64(v232, v228);
  v235 = vdupq_n_s64(0xBC7AB44B3A189480);
  v236 = veorq_s8(v234, v235);
  v237 = veorq_s8(v233, v235);
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v230), v235);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v231), v235);
  v240 = vdupq_n_s64(0xF0BA186BA47F666CLL);
  v241 = vdupq_n_s64(0x87A2F3CA2DC04CCALL);
  v242 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v236, v236), v240), v236), v241);
  v243 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v237, v237), v240), v237), v241);
  v244 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v238, v238), v240), v238), v241);
  v245 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v239, v239), v240), v239), v241);
  v246 = vdupq_n_s64(a7);
  v247 = veorq_s8(v245, v246);
  v248 = veorq_s8(v244, v246);
  v249 = veorq_s8(v243, v246);
  v250 = veorq_s8(v242, v246);
  v251 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v253 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v254 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v255 = veorq_s8(v248, v252);
  v256 = veorq_s8(v247, v251);
  v257 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v258 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v256);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v255);
  v261 = vaddq_s64(v258, v254);
  v262 = vaddq_s64(v257, v253);
  v263 = vdupq_n_s64(a8);
  v264 = vdupq_n_s64(v22);
  v265 = vdupq_n_s64(v23);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(v262, vandq_s8(vaddq_s64(v262, v262), v263)), v264), v265);
  v267 = veorq_s8(vaddq_s64(vsubq_s64(v261, vandq_s8(vaddq_s64(v261, v261), v263)), v264), v265);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(v260, vandq_s8(vaddq_s64(v260, v260), v263)), v264), v265);
  v269 = veorq_s8(vaddq_s64(vsubq_s64(v259, vandq_s8(vaddq_s64(v259, v259), v263)), v264), v265);
  v270 = vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL);
  v271 = vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL);
  v273 = veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v274 = veorq_s8(v268, v272);
  v275 = veorq_s8(v267, v271);
  v276 = veorq_s8(v266, v270);
  v277 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v276);
  v281 = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  v282 = veorq_s8(vaddq_s64(v277, v273), v281);
  v283 = veorq_s8(vaddq_s64(v278, v274), v281);
  v284 = veorq_s8(vaddq_s64(v279, v275), v281);
  v285 = veorq_s8(v280, v281);
  v286 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v287 = vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL);
  v288 = vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL);
  v289 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v290 = veorq_s8(v284, v288);
  v291 = veorq_s8(v283, v287);
  v292 = veorq_s8(v282, v286);
  v293 = vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL);
  v294 = vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL);
  v295 = vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL);
  v296 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v292);
  v297 = vaddq_s64(v295, v291);
  v298 = vaddq_s64(v294, v290);
  v299 = vaddq_s64(v293, v289);
  v300 = vdupq_n_s64(v24);
  v301 = vdupq_n_s64(v25);
  v302 = vaddq_s64(vsubq_s64(v296, vandq_s8(vaddq_s64(v296, v296), v300)), v301);
  v303 = vaddq_s64(vsubq_s64(v297, vandq_s8(vaddq_s64(v297, v297), v300)), v301);
  v304 = vaddq_s64(vsubq_s64(v298, vandq_s8(vaddq_s64(v298, v298), v300)), v301);
  v305 = vaddq_s64(vsubq_s64(v299, vandq_s8(vaddq_s64(v299, v299), v300)), v301);
  v306 = vdupq_n_s64(v26);
  v307 = veorq_s8(v305, v306);
  v308 = veorq_s8(v304, v306);
  v309 = veorq_s8(v303, v306);
  v310 = veorq_s8(v302, v306);
  v311 = vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL);
  v312 = vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL);
  v313 = vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL);
  v314 = veorq_s8(v310, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v315 = veorq_s8(v309, v313);
  v316 = veorq_s8(v308, v312);
  v317 = veorq_s8(v307, v311);
  v318 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v319 = vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL);
  v320 = vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL);
  v321 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL), v317);
  v322 = vaddq_s64(v320, v316);
  v323 = vaddq_s64(v319, v315);
  v324 = vaddq_s64(v318, v314);
  v325 = vdupq_n_s64(v21);
  v326 = vdupq_n_s64(0x2451E0AF25CF2710uLL);
  v327 = vaddq_s64(vsubq_s64(vorrq_s8(v324, v325), vorrq_s8(v324, v326)), v326);
  v328 = vaddq_s64(vsubq_s64(vorrq_s8(v323, v325), vorrq_s8(v323, v326)), v326);
  v329 = vaddq_s64(vsubq_s64(vorrq_s8(v322, v325), vorrq_s8(v322, v326)), v326);
  v330 = vaddq_s64(vsubq_s64(vorrq_s8(v321, v325), vorrq_s8(v321, v326)), v326);
  v331 = vdupq_n_s64(v18);
  v332 = veorq_s8(v330, v331);
  v333 = veorq_s8(v329, v331);
  v334 = veorq_s8(v328, v331);
  v335 = veorq_s8(v327, v331);
  v336 = vsraq_n_u64(vshlq_n_s64(v317, 3uLL), v317, 0x3DuLL);
  v337 = vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL);
  v339 = veorq_s8(v335, vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL));
  v340 = veorq_s8(v334, v338);
  v341 = veorq_s8(v333, v337);
  v342 = veorq_s8(v332, v336);
  v343 = vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL);
  v344 = vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL);
  v345 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v346 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), v342);
  v347 = vaddq_s64(v344, v340);
  v348 = vaddq_s64(v343, v339);
  v349 = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  v350 = veorq_s8(v348, v349);
  v351 = veorq_s8(v347, v349);
  v352 = veorq_s8(vaddq_s64(v345, v341), v349);
  v353 = veorq_s8(v346, v349);
  v354 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v355 = vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL);
  v356 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL)));
  v358 = vdupq_n_s64(0x3532CD90FD5B1622uLL);
  v359 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), veorq_s8(v351, v355)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v49)));
  v361.val[3] = veorq_s8(vshlq_u64(veorq_s8(v357, v358), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v49))), v197);
  v361.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL), veorq_s8(v352, v356)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v49))), v196);
  v361.val[0] = veorq_s8(v359, v195);
  v361.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), veorq_s8(v350, v354)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v49))), v194);
  *(v29 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v361, xmmword_1E4316DF0)), *(v30 - 8));
  return (*(STACK[0x330] + 8 * ((6644 * (v28 == 0)) ^ a3)))();
}

uint64_t sub_1E3494510()
{
  *(v5 - 224) = v1 ^ (914963389 * ((((2 * (v5 - 232)) | 0xF478A40A) - (v5 - 232) + 96710139) ^ 0xD6C0E37E));
  v6 = (*(v4 + 8 * (v0 ^ 0x326D)))(v5 - 232);
  *(v3 + 16) = *(v5 - 232) ^ v2;
  return (*(v4 + 8 * (v0 + 674)))(v6);
}

uint64_t sub_1E3494600()
{
  LOWORD(STACK[0x89A]) = v2;
  LODWORD(STACK[0x2B0]) = v2;
  return (*(STACK[0x330] + 8 * (v1 - 5298)))();
}

uint64_t sub_1E34946DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51)
{
  v51 = STACK[0x3E4];
  v52 = (a3 ^ 0xBC59953u) + STACK[0x240];
  STACK[0x8B0] = v52;
  return (*(STACK[0x3E8] + 8 * ((v51 - 260) | (8 * (v52 <= a51)))))();
}

uint64_t sub_1E34948C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, int a11, uint64_t a12, int a13, unsigned int a14)
{
  v18 = 914963389 * (((&a10 | 0xB4866586) - &a10 + (&a10 & 0x4B799A78)) ^ 0x987AD4FD);
  a10 = &a9;
  a12 = v14;
  a13 = (((2 * v17) & 0x32) - 68295680 + (((v16 ^ 0x1D34) + 503206904) ^ v17)) ^ v18;
  a14 = -1686438660 - v18;
  a11 = (v16 - 4185) ^ v18;
  v19 = (*(v15 + 8 * (v16 + 4491)))(&a10);
  return (*(v15 + 8 * ((2708 * (*(v14 + 24) == 16257999)) ^ v16)))(v19);
}

void sub_1E34949E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  *&STACK[0x380] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x390] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x360] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x370] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  STACK[0x210] = a5 & 0xFFFFFFF8;
  *&STACK[0x340] = vdupq_n_s64(0x6FE9388060F65D57uLL);
  *&STACK[0x350] = vdupq_n_s64(0x202D8EFF3E134550uLL);
  *&STACK[0x320] = vdupq_n_s64(0x45B996DFB575EE6uLL);
  *&STACK[0x330] = vdupq_n_s64(0x9A4BC939D526EF5ELL);
  *&STACK[0x300] = vdupq_n_s64(0x5B4E7A73A872D06CuLL);
  *&STACK[0x310] = vdupq_n_s64(0xFDD233490254508DLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xE50EF93BD6C6A2AALL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x2C0] = vdupq_n_s64(0x8D788362149CAEAALL);
  *&STACK[0x2D0] = xmmword_1E4316DF0;
  *&STACK[0x2A0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xEC3D1E48E4838A5DLL);
  *&STACK[0x280] = vdupq_n_s64(0x39627EADB2F598AFuLL);
  *&STACK[0x290] = vdupq_n_s64(0x8D3B02A49A14CEA0);
  *&STACK[0x260] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x270] = vdupq_n_s64(0x92523C7F9A72C4EELL);
  *&STACK[0x240] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x250] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x220] = vdupq_n_s64(a6);
  *&STACK[0x230] = vdupq_n_s64(a8);
  JUMPOUT(0x1E3494C44);
}

void sub_1E349570C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) - 2008441969 * ((((2 * a1) | 0x66E4568) - a1 - 53945012) ^ 0x4BAE76BA);
  v2 = *(&off_1F5DB1610 + v1 - 3776) - 8;
  (*&v2[8 * v1 + 44360])(v5, 0, 128);
  v3 = 1710126949 * ((&v6 + 738329364 - 2 * (&v6 & 0x2C020314)) ^ 0x1E195884);
  LODWORD(v7) = v3 ^ (v1 + 940076323);
  HIDWORD(v7) = 1303982150 - v3;
  v6 = v5;
  (*&v2[8 * (v1 ^ 0x2A6A)])(&v6);
  v4 = 31943069 * (&v6 ^ 0x5312319B63A94678);
  v6 = v5;
  v7 = (v4 + 0x605222BC435F6A18) | 1;
  v8 = v1 - v4 + 584252646;
  (*&v2[8 * v1 + 44912])(&v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E3495984@<X0>(uint64_t a1@<X8>)
{
  STACK[0x518] = *(v3 + 8 * v2);
  LODWORD(STACK[0xAA4]) = -152192876;
  STACK[0xAA8] = &STACK[0x608];
  return (*(v3 + 8 * ((a1 == 0) | (v2 - 2037334234) & 0x796F6082u)))();
}

uint64_t sub_1E3495AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a2 - 1;
  v18 = v9 + v17 + v8;
  v19 = __ROR8__(v18 & ((4243 * (v7 ^ 0x1467u)) ^ 0xFFFFFFFFFFFFDEDELL), 8);
  v20 = (v19 + a5) ^ a6;
  v21 = __ROR8__((v19 + a5) ^ v16, 8);
  v22 = __ROR8__(((v11 & (2 * (v21 + v20))) - (v21 + v20) + v15) ^ v13, 8);
  v23 = ((v11 & (2 * (v21 + v20))) - (v21 + v20) + v15) ^ v13 ^ __ROR8__(v20, 61);
  v24 = (v10 - ((v22 + v23) | v10) + ((v22 + v23) | v12)) ^ v14;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a7;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xF2620266DFD8DE82;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x5C3E923DC79C4710) + 0x2E1F491EE3CE2388) ^ 0x97A1B9D365930275;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x6E1E19DDB33CB23ALL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  *v18 = ((((2 * (v35 + v34)) & 0x93BA3B681E438AC2) - (v35 + v34) + 0x3622E24BF0DE3A9ELL) ^ 0x3102FDB0D852CBCLL) >> (8 * (v18 & 7u));
  return (*(a4 + 8 * ((3146 * (v17 == 0)) ^ (v7 + 613))))();
}

uint64_t sub_1E3495C3C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2887)))();
  STACK[0x418] = 0;
  return (STACK[0x770])(v2);
}

uint64_t sub_1E3495C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 + 2109) ^ ((((&a15 | 0x93B9EC39) - &a15 + (&a15 & 0x6C4613C0)) ^ 0xAA4F261A) * v21);
  a17 = a10;
  a18 = &a12;
  (*(v20 + 8 * (v18 ^ 0x2136)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * (((&a15 ^ 0x709A6727 | 0xD9489401) - ((&a15 ^ 0x709A6727) & 0xD9489401)) ^ 0xE14BA728) + 4542;
  a17 = a10;
  v22 = (*(v20 + 8 * (v18 + 8508)))(&a15);
  return (*(v20 + 8 * ((6862 * (a15 == ((v18 + 1715159448) & 0x1E9F ^ (v19 + 905)))) ^ v18)))(v22);
}

uint64_t sub_1E3495DD4()
{
  v3 = (*(v2 + 8 * (v1 + 3212)))(64, v0);
  STACK[0x760] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 1788240529) & 0x9569A57B) - 8456)) ^ (v1 + 1657))))();
}

void sub_1E3495E48(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 1875091903 * ((a1 & 0xE8D1405E | ~(a1 | 0xE8D1405E)) ^ 0x215B3C22);
  v3 = v1 - 1710126949 * ((((&v3 | 0x1649C412) ^ 0xFFFFFFFE) - (~&v3 | 0xE9B63BED)) ^ 0xDBAD607D) + 476319409;
  v2 = *(&off_1F5DB1610 + (v1 ^ 0xF4E)) - 8;
  (*&v2[8 * v1 + 47704])(&v3);
  __asm { BRAA            X8, X17 }
}

void i1IfStf2DSO(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E34961C4(uint64_t a1)
{
  v7 = *(v3 + 8 * (((v5 - 8844) | 0x1003) ^ 0x370C));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v6 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 5221)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v6 = -42030;
    goto LABEL_7;
  }

  v6 = 0;
  *v4 = a1;
LABEL_8:
  *v1 = v6;
  return result;
}

uint64_t sub_1E3496254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12)
{
  v18 = ((2 * (v14 & 0x7B7D5B721A426FF8) - v14 - 0x7B7D5B721A427000) ^ 0x50662B01540C0705) * v17;
  a12 = *(v16 + 20) - v18 + 0x4BDB88A3AECF6863 + (~(2 * *(v16 + 20)) | 0x6848EEB8A2612F3BLL);
  a10 = v18 - 1219622829 + v13;
  v19 = (*(v12 + 8 * (v13 + 3284)))(&a10);
  if (a11 != 16257999 && a11 != 16215948)
  {
    return (*(v12 + 8 * (((v15 - 6340) * (a11 == 16257999)) ^ (v15 - 3715))))(v19);
  }

  *(v16 + 20) = 0;
  *(v16 + 92) = 203186117;
  v22 = *(v16 + 124);
  if (v22)
  {
    v23 = *(v16 + 116) == ((v15 - 1119) ^ 0x14E1);
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  return (*(v12 + 8 * ((143 * v24) ^ (v15 - 2854))))(v22, v20, v21);
}

uint64_t sub_1E34963D4@<X0>(int a1@<W8>)
{
  v2 = a1 | 0x4B8;
  v3 = (a1 | 0x4B8) ^ 0x1839;
  v4 = *(STACK[0x720] + 24);
  STACK[0x388] = v4;
  return (*(v1 + 8 * (((v4 != 0) * (v3 - 3354)) ^ v2)))();
}

uint64_t sub_1E3496418(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 4) + 956911519 * ((a1 - 1138522822 - 2 * (a1 & 0xBC23853A)) ^ 0x56B2F53F);
  v5 = v2 + 2048652491 * ((-381725712 - (v4 | 0xE93F53F0) + (v4 | 0x16C0AC0F)) ^ 0xA7713B0A) - 1986968849;
  result = (*(*(&off_1F5DB1610 + (v2 ^ 0x766EDD31)) + (v2 ^ 0x766EF9F1) - 1))(v4);
  *a1 = v4[0];
  return result;
}

void mm0Euuzhc()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF43458) ^ 0xDF)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * ((dword_1ECF432C0 - dword_1ECF43458) ^ 0xDF))] ^ 0xEE]) + 144);
  v1 = -85 * ((dword_1ECF432C0 - *v0) ^ 0xDF);
  v2 = *(&off_1F5DB1610 + (*(off_1F5DB16B8 + (*(off_1F5DB1D28 + v1 - 8) ^ 1u) - 8) ^ v1) + 14);
  v3 = *v2 - *v0 - &v5;
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((2 * (v6 & 0x36DDAAE8) - v6 + 1226986771) ^ 0x7B390E83);
  LOBYTE(v2) = -85 * (*v0 ^ 0xDF ^ *v2);
  v4 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + dword_1ECF43458) ^ 0xDF)) ^ byte_1E430E980[byte_1E4307AA0[(-85 * ((dword_1ECF432C0 + dword_1ECF43458) ^ 0xDF))] ^ 0x9B]) + 206) - 8;
  (*&v4[8 * (*(off_1F5DB1E80 + (*(off_1F5DB1BE0 + v2) ^ 0x2Au) - 8) ^ v2) + 75712])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E3496754@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((14241 * (v7 == (((a2 + v5 + 2114) | 0x335u) ^ 0xBB5))) ^ (v5 + v3))))();
}

void sub_1E3496848(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x3C5E)))(a1);
  *(STACK[0x618] + 24) = 0;
  JUMPOUT(0x1E3389230);
}

uint64_t sub_1E34968C0()
{
  STACK[0xA88] = v1;
  v3 = STACK[0x928];
  STACK[0xA90] = STACK[0x928];
  return (*(v2 + 8 * (((v1 - v3 > (v0 ^ 0x9E5u) - 478) * ((v0 ^ 0x1FC9) - 6053)) ^ v0)))();
}

uint64_t sub_1E3496914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v23 = ((2 * (&a16 & 0xF70C7B8) - &a16 + 1888434244) ^ 0x28E6EB26) * v21;
  a17 = v23 + 982124808;
  a18 = a12;
  a19 = &a14;
  a20 = -654855621 - v23;
  a21 = v23 + a10 + 1674574660;
  v24 = (*(v22 + 8 * (a10 ^ 0x34EE)))(&a16);
  return (*(v22 + 8 * ((13329 * (a16 == ((a10 - 2512) ^ 0xF81459))) ^ a10)))(v24);
}

uint64_t sub_1E3496A94(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 104) = veorq_s8(*(v4 + 88), xmmword_1E4316E00);
  v5 = *(v4 + 4);
  *(a1 + 20) = v5;
  return (*(a4 + 8 * (((v5 == ((a2 + 7428) ^ 0x24D7)) * (a2 + 3628)) ^ (a2 - 917))))();
}

uint64_t sub_1E3496AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 138;
  v6 = (*(a4 + 8 * (v4 + 3326)))(138, 0x100004077774924);
  v7 = STACK[0x3E8];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((v6 != 0) * ((((v4 - 5919) | 0x400) + 3808) ^ 0x146E)) | v4)))();
}

uint64_t sub_1E3496BC4()
{
  v3 = STACK[0x6B0];
  *(v1 + 104) = 16;
  *(v1 + 103) = *(v3 + 23);
  *(v1 + 102) = *(v3 + 22);
  *(v1 + 101) = *(v3 + 21);
  *(v1 + 100) = *(v3 + 20);
  *(v1 + 99) = *(v3 + 19);
  *(v1 + 98) = *(v3 + 18);
  *(v1 + 97) = *(v3 + 17);
  *(v1 + 96) = *(v3 + 16);
  *(v1 + 95) = *(v3 + 15);
  *(v1 + 94) = *(v3 + 14);
  *(v1 + 93) = *(v3 + 13);
  *(v1 + 92) = *(v3 + 12);
  *(v1 + 91) = *(v3 + 11);
  *(v1 + 90) = *(v3 + 10);
  *(v1 + 89) = *(v3 + 9);
  *(v1 + 88) = *(v3 + 8);
  *(v1 + 84) = *v3;
  return (*(v2 + 8 * (((*(v3 + 4) == 0) * ((v0 + 458231097) & 0xE4AFF4DF ^ 0x1DE6)) ^ v0)))();
}

void sub_1E3496D20()
{
  v3 = *(v0 + 40);
  **(v0 + 16) = v2;
  *v3 = v4;
  *(v0 + 56) = v1;
}

uint64_t sub_1E3496D90(_DWORD *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a1[1] ^ (956911519 * ((2 * (a1 & 0x3B074F9) - a1 - 61895930) ^ 0x16DEFB03));
  v4[1] = v2 + 1710126949 * (((v4 | 0xB6B0CF29) + (~v4 | 0x494F30D6)) ^ 0x84AB94B8) - 1179738666;
  result = (*(*(&off_1F5DB1610 + (v2 ^ 0xA98300C0)) + (v2 ^ 0xA983240E) - 1))(v4);
  *a1 = v4[0];
  return result;
}

void S12yWPyxCU(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3 || a3 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E3497E4C()
{
  v3 = STACK[0x580];
  STACK[0x548] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((((v1 ^ 0xAFB) - 13) ^ 0xBFA ^ (((v1 ^ 0xAFB) - 13) | 8) ^ 0xBD8) * (v3 == 0)) ^ v1 ^ 0xAFB)))();
}

uint64_t sub_1E3497EB4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0xA64]) = v3;
  STACK[0x640] = STACK[0x640] + ((a2 - 1683) | 0x32Au) - 859;
  return (*(v4 + 8 * (a2 ^ (2845 * (v3 == v2)))))(a1, 16215976);
}

uint64_t sub_1E3498D9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, uint64_t a61, uint64_t a62, _DWORD *a63)
{
  *a4 = a1;
  *a63 = a59;
  return a5();
}

void cp2g1b9ro(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

void sub_1E3498ED0()
{
  STACK[0x890] = 0;
  STACK[0x7F8] = 0;
  STACK[0x518] = *(v1 + 8 * v0);
  JUMPOUT(0x1E3462CA8);
}

uint64_t sub_1E3498EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v17 = v11 - 1;
  v18 = (__ROR8__((v7 + v17) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v19 = v18 ^ 0x4DE9423B6F16E7D2;
  v20 = v18 ^ v14;
  v21 = (__ROR8__(v19, 8) + v20) ^ v15;
  v22 = __ROR8__(v21, 8);
  v23 = __ROR8__(v20, 61);
  v24 = (v22 + (v21 ^ v23) - (((v22 + (v21 ^ v23)) << ((v12 - 1) ^ a7)) & v8) + v9) ^ v10;
  v25 = v24 ^ __ROR8__(v21 ^ v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5963B6C555D97F1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((a2 | (2 * ((v30 + v29) ^ a1))) - ((v30 + v29) ^ a1) + a3) ^ a4;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x1A2AEBE44253AF03;
  *(v7 + v17) = *(v13 + v17) ^ (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + v17) & 7))) ^ 0x3C;
  return (*(v16 + 8 * (v12 ^ (4 * (v17 != 0)))))();
}

void sub_1E3499030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = STACK[0x930];
  v7 = STACK[0x930] + 4;
  STACK[0x3D0] = STACK[0x6E0];
  STACK[0x2E0] = (v7 ^ 0xE76B6AF3B37FAF7FLL) + 0x7ED7D77DFCFFF497 + ((2 * v7) & 0xCED6D5E766FF5EFELL);
  STACK[0x2D0] = STACK[0x928];
  v8 = STACK[0x920];
  STACK[0x2C0] = ((STACK[0x920] + 4) ^ 0x6EE3F2F1B2FFB75FLL) - 0x8A0B08002801349 + ((2 * (STACK[0x920] + 4)) & 0xDDC7E5E365FF6EBELL);
  STACK[0x2B0] = ((STACK[0x910] + 4) ^ 0x7EE3E77BFCFFADB7) - 0x18A0A50A4C8009A1 + ((2 * (STACK[0x910] + 4)) & 0xFDC7CEF7F9FF5B6ELL);
  STACK[0x2A0] = ((STACK[0x960] + 4) ^ 0xEFCB6279B07FFFFFLL) + 0x7677DFF7FFFFA417 + ((2 * (STACK[0x960] + 4)) & 0xDF96C4F360FFFFFELL);
  STACK[0x290] = ((STACK[0x980] + 4) ^ 0x7F63E379F7FFFDFFLL) - 0x1920A108478059E9 + ((2 * (STACK[0x980] + 4)) & 0xFEC7C6F3EFFFFBFELL);
  STACK[0x280] = ((STACK[0x900] + 4) ^ 0x7F5F77F1FAFFFC77) - 0x191C35804A805861 + ((2 * (STACK[0x900] + 4)) & 0xFEBEEFE3F5FFF8EELL);
  v9 = STACK[0x9A0];
  STACK[0x270] = ((STACK[0x9A0] + 4) ^ 0xFE576B7FF4FFEC1ELL) + 0x67EBD6F1BB7FB7F8 + ((2 * (STACK[0x9A0] + 4)) & 0xFCAED6FFE9FFD83CLL);
  v10 = STACK[0x9B0];
  STACK[0x250] = ((STACK[0x9B0] + 4) ^ 0x7E776BFDB1FFA6FELL) - 0x1834298C018002E8 + ((2 * (STACK[0x9B0] + 4)) & 0xFCEED7FB63FF4DFCLL);
  STACK[0x230] = ((STACK[0x8F0] + 4) ^ 0xFEDB56F1B47FFC9FLL) + 0x6767EB7FFBFFA777 + ((2 * (STACK[0x8F0] + 4)) & 0xFDB6ADE368FFF93ELL);
  STACK[0x220] = ((STACK[0x9E8] + 4) ^ 0xEFF34A79B07FBF36) + 0x764FF7F7FFFFE4E0 + ((2 * (STACK[0x9E8] + 4)) & 0xDFE694F360FF7E6CLL);
  STACK[0x210] = ((v6 + 6) ^ 0xFB5EBFFBFFFFF3FFLL) + 0x66AFFFBDF8FBFD3ALL + ((2 * (v6 + 6)) & 0xF6BD7FF7FFFFE7FELL);
  STACK[0x200] = ((v8 + 6) ^ 0x6AEFFFBDFAFBF53BLL) - 0x8E1400402000402 + ((2 * (v8 + 6)) & 0xD5DFFF7BF5F7EA76);
  STACK[0x2F0] = v6 + ((a6 + 4799) ^ 0x14E9);
  STACK[0x260] = v9 + 10;
  STACK[0x240] = v10 + 10;
  STACK[0x350] = STACK[0x7A0];
  STACK[0x340] = STACK[0x668];
  STACK[0x310] = STACK[0x740];
  STACK[0x300] = STACK[0x7E8];
  STACK[0x330] = STACK[0x7A8];
  STACK[0x3C0] = STACK[0x478];
  STACK[0x3B0] = STACK[0x4F8];
  STACK[0x320] = STACK[0x520];
  STACK[0x3A0] = STACK[0x790];
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x8DA]);
  LODWORD(STACK[0x390]) = LOWORD(STACK[0x8BE]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x8AE]);
  LODWORD(STACK[0x380]) = LOWORD(STACK[0x88E]);
  JUMPOUT(0x1E3447E90);
}

void sub_1E3499134(uint64_t a1)
{
  v1 = 1317436891 * (((a1 ^ 0xF854B432) - 292733615 - 2 * ((a1 ^ 0xF854B432) & 0xEE8D3D51)) ^ 0xA6DA1115);
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_1E349922C()
{
  result = v1;
  *v1 = v2;
  return result;
}

void sub_1E3499324(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v10 = (((&a3 | 0xF87D1697) + (~&a3 | 0x782E968)) ^ 0xD481A7ED) * a1;
  a4 = (v8 - 3892) ^ v10;
  a3 = 0;
  a6 = v10 ^ 0x19EC40F9;
  a7 = v7 - v10;
  (*(v9 + 8 * (v8 + 4784)))(&a3);
  JUMPOUT(0x1E34993A0);
}

uint64_t sub_1E34993DC()
{
  v14 = v10;
  v15 = &v12;
  v13[1] = (v0 + 1339) ^ (33731311 * ((((v13 | 0xA10C6F50) ^ 0xFFFFFFFE) - (~v13 | 0x5EF390AF)) ^ 0x67055A8C));
  (*(v2 + 8 * (v0 + 7688)))(v13);
  LODWORD(v15) = v0 - 2008441969 * ((v13 & 0xD988E45C | ~(v13 | 0xD988E45C)) ^ 0x6EEE4FAD) + 3772;
  v14 = v10;
  (*(v2 + 8 * (v0 + 7738)))(v13);
  if (v13[0] == v4 + v1)
  {
    v5 = -956802065;
  }

  else
  {
    v5 = 1073657839;
  }

  if (v13[0] == v4 + v1)
  {
    v6 = -1913604130;
  }

  else
  {
    v6 = 2147315678;
  }

  if (v13[0] == v4 + v1)
  {
    v7 = 973060064;
  }

  else
  {
    v7 = -1057399840;
  }

  v8 = (v5 ^ v12) + v7 + (v6 & (2 * v12));
  v14 = v10;
  LODWORD(v15) = (v0 + 6457) ^ ((v13 ^ 0x5869D362) * v3);
  (*(v2 + 8 * (v0 + 7723)))(v13);
  v14 = v11;
  LODWORD(v15) = (v4 + 3497) ^ (((v13 & 0xFFE671B1 | ~(v13 | 0xFFE671B1)) ^ 0x58705D2C) * v3);
  (*(v2 + 8 * (v4 ^ 0x377D)))(v13);
  return (v8 - 16257999);
}

uint64_t sub_1E3499708@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (a1 ^ v64) + a28;
  STACK[0x9B8] = v66;
  return (*(v65 + 8 * ((a64 + 2229) | (v66 <= a23) | (4 * (v66 <= a23)))))();
}

uint64_t sub_1E34997D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v25 = ((2 * ((&a17 ^ 0x98CBBE13) & 0x21B3E491) - (&a17 ^ 0x98CBBE13) - 565437590) ^ 0x1EEE761B) * v22;
  a21 = -654855621 - v25;
  a22 = v25 + v24 + 1674574563;
  a19 = a16;
  a20 = &a13;
  a18 = v25 - 357109105;
  v26 = (*(v23 + 8 * (v24 + 5057)))(&a17);
  return (*(v23 + 8 * ((13540 * (a17 == ((((v24 - 4119) | 0x400) + 16256664) ^ (v24 - 2624)))) ^ v24)))(v26);
}

uint64_t sub_1E3499950(uint64_t a1)
{
  v3 = v1 | 0x912;
  v4 = (*(v2 + 8 * ((v1 | 0x912) + 7184)))(a1, 2631218403) == 0;
  return (*(v2 + 8 * ((v4 ^ ((v3 - 114) ^ (v3 - 1))) & 1 | v3)))();
}

uint64_t sub_1E3499A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = ((v4 - 589) ^ 0xFFFFFFFFFFFFEB9ALL) + v5;
  *(a1 + v7) = *(v6 + v7);
  return (*(a4 + 8 * ((13995 * (v7 == 0)) ^ v4)))();
}

uint64_t sub_1E3499B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v24 = ((2 * (&a16 & 0x791754E0) - &a16 + 115911449) ^ 0x5E81787B) * v23;
  a18 = a12;
  a19 = &a14;
  a17 = v24 - 1383858828;
  a20 = -654855621 - v24;
  a21 = v24 + 1674579114;
  v25 = (*(v22 + 76864))(&a16);
  return (*(v22 + 8 * ((2244 * (a16 == 16257999)) ^ v21)))(v25);
}

void sub_1E3499CC4()
{
  STACK[0x748] = 0;
  STACK[0x848] = *(STACK[0x3E8] + 8 * (v0 - 4337));
  JUMPOUT(0x1E3390B74);
}

uint64_t sub_1E3499D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v2 + 2135574407) & 0x80B5BACE ^ 0xFFFFFFFFFFFFE7B3) + a2;
  v6 = *(v3 + v5 - 15);
  v7 = *(v3 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((58 * ((a2 & 0xFFFFFFE0) == 32)) ^ (v2 - 355))))();
}

uint64_t sub_1E3499DD8@<X0>(int a1@<W8>)
{
  v2 = STACK[0x938];
  LODWORD(STACK[0x52C]) = STACK[0x6B4];
  return (*(v1 + 8 * (((((v2 == 0) ^ (a1 - 1)) & 1) * (((a1 - 1171162863) & 0x45CE6CB5) - 699)) ^ a1)))();
}

uint64_t sub_1E3499F68()
{
  v3 = LODWORD(STACK[0x2C0]);
  if (v3 == 17168)
  {
    return (*(STACK[0x330] + 8 * ((v2 + 3320) ^ (1744 * (v1 == 197499223)))))();
  }

  if (v3 == 20706 || v3 == 33980)
  {
    STACK[0x448] = v0;
  }

  return (STACK[0x758])();
}

uint64_t sub_1E349A01C()
{
  v2 = STACK[0x868];
  STACK[0x510] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 843) ^ (v0 + 8710) ^ 0x2567)) | (v0 + 8710))))();
}

uint64_t sub_1E349A07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (((&a14 | 0x3E0A11C6) - &a14 + (&a14 & 0xC1F5EE38)) ^ 0x6663C2A4) * v21;
  a15 = v22 - 1041240636;
  a18 = -654855621 - v22;
  a19 = v22 + v20 + 1674576915;
  a16 = a12;
  a17 = &a11;
  v23 = (*(v19 + 8 * (v20 ^ 0x2D1F)))(&a14);
  return (*(v19 + 8 * ((53 * (a14 == ((v20 - 34246809) & 0x6CF4EFDF ^ (v20 - 573762018) & 0x3DEB ^ 0x6C0C68B0))) ^ v20)))(v23);
}

uint64_t sub_1E349A1A0(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = a16 - 16;
  v29.i64[0] = a14 + v28 + 11;
  v29.i64[1] = a14 + v28 + 10;
  v30.i64[0] = a14 + v28 + 13;
  v30.i64[1] = a14 + v28 + 12;
  v31.i64[0] = a14 + v28 + 15;
  v31.i64[1] = a14 + v28 + 14;
  v32.i64[0] = a14 + v28 + 19;
  v32.i64[1] = a14 + v28 + 18;
  v33.i64[0] = a14 + v28 + 21;
  v33.i64[1] = a14 + v28 + 20;
  v34.i64[0] = a14 + v28 + 23;
  v34.i64[1] = a14 + v28 + 22;
  v35.i64[0] = a14 + v28 + 25;
  v35.i64[1] = a14 + v28 + v16 + 16;
  v36 = vandq_s8(v35, a1);
  v37 = vandq_s8(v34, a1);
  v38 = vandq_s8(v33, a1);
  v39 = vandq_s8(v32, a1);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v44 = vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), a3), a4));
  v45 = vsubq_s64(v43, vandq_s8(vaddq_s64(vaddq_s64(v43, v43), a3), a4));
  v46 = vaddq_s64(vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4)), a5);
  v47 = vaddq_s64(vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4)), a5);
  v48 = veorq_s8(v47, a6);
  v49 = veorq_s8(v46, a6);
  v50 = veorq_s8(v46, a7);
  v51 = veorq_s8(v47, a7);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), a8);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), a8);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v52, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = veorq_s8(vaddq_s64(v57, v55), v19);
  v60 = veorq_s8(v58, v19);
  v61 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = veorq_s8(vaddq_s64(v64, v62), v20);
  v67 = veorq_s8(v65, v20);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v21), v72), v22), v23);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v21), v71), v22), v23);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v24);
  v80 = veorq_s8(v78, v24);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v25);
  v87 = veorq_s8(v85, v25);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v82.i64[0] = a14 + v28 + 17;
  v82.i64[1] = a14 + v28 + 16;
  v89 = vaddq_s64(v44, a5);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v88), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v90 = veorq_s8(v89, a6);
  v91 = veorq_s8(v89, a7);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), a8);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v19);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v20);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), v21), v98), v22), v23);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v24);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v25);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL)));
  v105 = vandq_s8(v82, a1);
  v106 = vaddq_s64(v45, a5);
  v191.val[1] = vshlq_u64(veorq_s8(v104, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v107 = veorq_s8(v106, a6);
  v108 = veorq_s8(v106, a7);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a8);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v19);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v20);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), v21), v115), v22), v23);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v24);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v25);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vandq_s8(v31, a1);
  v124 = vaddq_s64(v122, v121);
  v125 = vandq_s8(v30, a1);
  v191.val[0] = vshlq_u64(veorq_s8(v124, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v126 = vandq_s8(v29, a1);
  v127 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v131 = vsubq_s64(v129, vandq_s8(vaddq_s64(vaddq_s64(v129, v129), a3), a4));
  v132 = vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a3), a4)), a5);
  v133 = vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(vaddq_s64(v127, v127), a3), a4)), a5);
  v128.i64[0] = vqtbl4q_s8(v191, v27).u64[0];
  v134 = veorq_s8(v133, a6);
  v191.val[0] = veorq_s8(v132, a6);
  v135 = veorq_s8(v132, a7);
  v136 = veorq_s8(v133, a7);
  v191.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v135), a8);
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v136), a8);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v139);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v138), v19);
  v141 = veorq_s8(v140, v19);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v143);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v142), v20);
  v145 = veorq_s8(v144, v20);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v147);
  v191.val[0] = vaddq_s64(v191.val[1], v146);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191.val[0], v191.val[0]), v21), v191.val[0]), v22), v23);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v21), v148), v22), v23);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v151);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v150), v24);
  v153 = veorq_s8(v152, v24);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v155);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v154), v25);
  v157 = veorq_s8(v156, v25);
  v158 = vaddq_s64(v131, a5);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v159 = veorq_s8(v158, a6);
  v160 = veorq_s8(v158, a7);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), a8);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v19);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v20);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v21), v167), v22), v23);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v24);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v25);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL)));
  v174 = vaddq_s64(vsubq_s64(v130, vandq_s8(vaddq_s64(vaddq_s64(v130, v130), a3), a4)), a5);
  v191.val[1] = vshlq_u64(veorq_s8(v173, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v175 = veorq_s8(v174, a6);
  v176 = veorq_s8(v174, a7);
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), a8);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v19);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v20);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v21), v183), v22), v23);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v24);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v25);
  v191.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), a2)));
  v128.i64[1] = vqtbl4q_s8(v191, v27).u64[0];
  v189 = vrev64q_s8(v128);
  *(a14 + v28 + 10) = veorq_s8(vextq_s8(v189, v189, 8uLL), *(a15 + v28));
  return (*(v18 + 8 * (((a11 + v28 != 0) * v17) ^ a13)))();
}

void sub_1E349AD78()
{
  v3 = (((2 * v1) & 0x1FFFF9783B7BF4FELL) + (v1 ^ 0x4FFFFCBC1DBDFA7FLL) + v0 - 0x4FFFFCBC1DBDFA7FLL);
  v4 = (v3[1] << (v2 - 32)) | (*v3 << 56) | (v3[2] << 40) | (v3[3] << 32) | (v3[4] << 24) | (v3[5] << 16) | (v3[6] << 8) | v3[7];
  STACK[0x8F0] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  JUMPOUT(0x1E349AE34);
}

uint64_t sub_1E349AE74()
{
  v3 = (*(v2 + 8 * (v0 + 3865)))(LODWORD(STACK[0x4B4]) ^ 0xBC59953u, 0x100004077774924);
  v4 = STACK[0x330];
  STACK[0x958] = v3;
  if (v3)
  {
    v5 = 16257999;
  }

  else
  {
    v5 = v1 - 5;
  }

  LODWORD(STACK[0x964]) = v5;
  return (*(v4 + 8 * ((102 * (((v3 == 0) ^ ((v0 ^ 0xD1) - 63 * (v0 ^ 0x80))) & 1)) | v0)))();
}

uint64_t sub_1E349AF28@<X0>(int a1@<W8>)
{
  v6 = LOWORD(STACK[0x99A]);
  if (v6 == 17168)
  {
    goto LABEL_4;
  }

  if (v6 == 33980)
  {
    v8 = STACK[0x438];
    STACK[0x7B8] = v1;
    LODWORD(STACK[0x520]) = a1;
    STACK[0x7C8] = v8 + v2;
    v7 = v3;
    v4 = 16257999;
    return (*(v5 + 8 * (((v4 == 16257999) * ((4283 * (v7 ^ 0x17C9)) ^ 0x2C56)) ^ (v7 - 4056))))();
  }

  v7 = v3;
  if (v6 == 20706)
  {
LABEL_4:
    STACK[0x7B8] = v1;
    LODWORD(STACK[0x520]) = a1;
    v4 = 16215638;
    v7 = v3;
  }

  return (*(v5 + 8 * (((v4 == 16257999) * ((4283 * (v7 ^ 0x17C9)) ^ 0x2C56)) ^ (v7 - 4056))))();
}

uint64_t sub_1E349AFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  STACK[0x858] = STACK[0x4D8];
  STACK[0x4C8] = 0;
  return (*(v4 + 8 * a4))(a1, a2, a3, v4);
}

uint64_t sub_1E349B10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8 * (v4 ^ 0x2176)))(LODWORD(STACK[0x7F4]) ^ 0xBC58D36 ^ (v4 - 1180) ^ 0x145Du, 0x100004077774924);
  v6 = STACK[0x3E8];
  STACK[0x968] = v5;
  if (v5)
  {
    v7 = 16257999;
  }

  else
  {
    v7 = 16215971;
  }

  LODWORD(STACK[0x974]) = v7;
  return (*(v6 + 8 * (((v5 != 0) * (((v4 - 1180) | 0x542) ^ 0x54E)) ^ v4)))();
}

void sub_1E349B230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  *&STACK[0x210] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x370] = vdupq_n_s64(v9);
  *&STACK[0x380] = vdupq_n_s64(v15);
  *&STACK[0x350] = vdupq_n_s64(v10);
  *&STACK[0x360] = vdupq_n_s64(v8);
  *&STACK[0x330] = vdupq_n_s64(v12);
  *&STACK[0x340] = vdupq_n_s64(v11);
  *&STACK[0x310] = vdupq_n_s64(a6);
  *&STACK[0x320] = vdupq_n_s64(v14);
  *&STACK[0x2F0] = vdupq_n_s64(a7);
  *&STACK[0x300] = vdupq_n_s64(v13);
  *&STACK[0x2D0] = vdupq_n_s64(0x52D1CFA255142C6CuLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xA5A39F44AA2858D8);
  *&STACK[0x2B0] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x2C0] = vdupq_n_s64(0x48FB24461747836FuLL);
  *&STACK[0x290] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x2A0] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x270] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x280] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x250] = vdupq_n_s64(0xBCFFAF874FA44A5ALL);
  *&STACK[0x260] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x240] = vdupq_n_s64(0xDE7FD7C3A7D2252DLL);
  *&STACK[0x220] = vdupq_n_s64(a8);
  *&STACK[0x230] = xmmword_1E4316E10;
  JUMPOUT(0x1E349B400);
}

uint64_t sub_1E349C6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  STACK[0x3C0] = *(a8 + 24);
  HIDWORD(a35) = a7;
  return (*(a4 + 8 * ((47 * ((v37 ^ v36) < 227 * (v35 ^ 0x16D9u) - 5213)) ^ v35)))(0x5879FD990C46CAD5, a5, 0xD02B2EB47D7683C6, 0x6815975A3EBB41E3, v38, a2, 0xE49D77DF873DBF7ELL, 0x4CFAC71E5A50EC49, a9, a10, a11, a12, a13, a7 ^ 0xF67EFDFFDF195FEFLL, a8, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1E349C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (&a12 ^ 0xB0039876) + 8154;
  a12 = &a11;
  v17 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((61 * (a13 == v16)) ^ v15)))(v17);
}

uint64_t sub_1E349CB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&STACK[0x240] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x390] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x380] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x340] = vdupq_n_s64(0x518DC1691103FE2CuLL);
  *&STACK[0x350] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x320] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x330] = vdupq_n_s64(0xF9CB24FE88F58F70);
  *&STACK[0x300] = vdupq_n_s64(0xD8E8834EF9F28923);
  *&STACK[0x310] = vdupq_n_s64(0x4E2EF9620C1AEDB8uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x2D4A72F74C223B2AuLL);
  *&STACK[0x360] = vdupq_n_s64(0x71C80D200006C20uLL);
  *&STACK[0x370] = vdupq_n_s64(0xF8C32E29FF588391);
  *&STACK[0x2C0] = vdupq_n_s64(0x9BDDB8F1D8DC304DLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x230] = xmmword_1E4316E10;
  *&STACK[0x2A0] = vdupq_n_s64(v7);
  *&STACK[0x2B0] = vdupq_n_s64(v8);
  return sub_1E3434F34(2021819248, 0, 0x71C80D200006C20, a4, 0x518DC1691103FE2CLL, a6, a7);
}

void sub_1E349CD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 ^ 0x8E6;
  *(v6 - 224) = ((v4 ^ 0x14B8) - 2140796667) ^ (914963389 * ((v6 - 232) ^ 0x2CFCB17B));
  (*(a4 + 8 * (v4 ^ 0x3333)))(v6 - 232);
  *(v5 + 112) = *(v6 - 232) ^ (v7 - 1232139380);
  JUMPOUT(0x1E3404EF0);
}

uint64_t sub_1E349CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v7 = v5;
  *(v5 + 8) = *(a4 + 8);
  *(a4 + 8) = v5;
  return (*(v8 + 8 * ((8 * (v6 ^ 0xA4) - 6584) ^ (16 * (((8 * (v6 ^ 0xA4) + 543902687) & 0xDF949BEB ^ 0xF81824) == 16257999)))))(a1, a2, a3, 16257999);
}

uint64_t sub_1E349CDD0()
{
  STACK[0x590] = 0;
  v3 = STACK[0x6F8];
  STACK[0x3D8] = *(v2 + 8 * v1);
  LODWORD(STACK[0xA24]) = -126895411;
  STACK[0xA28] = &STACK[0x590];
  return (*(v2 + 8 * (((v3 != 0) * ((((((v1 - 1789415859) & 0x6AA875C1) - 7361) | 0x1406) - 1552) ^ 0x15FB)) ^ (v1 - 1789415859) & 0x6AA875C1)))();
}

uint64_t sub_1E349CE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, _DWORD *a27, void *a28)
{
  v35 = a11 & 0x889E8C11;
  v36 = ((v35 ^ (v30 - 970) ^ 0xFFFFFFFE | v29) & (((v30 - 970) | 0x13FE) - v29) | (v35 ^ (v30 - 970) ^ 0xFFFFFFFE) & v29) >> 31;
  v37 = (a11 & 0x889E8C11) + 2599;
  *a24 = v29 + 1;
  v38 = v28 ^ ((v28 - (a11 & 0x889E8C11) + v30 - 970) >> 11);
  v39 = (((v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) << 15) & 0xEFC60000 ^ (v35 - 1658038657) & ((v38 - v36) << 7) ^ v38 ^ (((((v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) << 15) & 0xEFC60000 ^ (v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) >> 18);
  v40 = (v31 + (v34 - 1));
  v41 = -778651209 * ((*(*a28 + (*a27 & 0x148A538C)) ^ v40) & 0x7FFFFFFF);
  v42 = -778651209 * (v41 ^ HIWORD(v41));
  v43 = *(*(v33 + 8 * (v37 ^ 0xA18)) + (v42 >> 24));
  v44 = *(*(v33 + 8 * (v37 ^ 0xABF)) + (((a11 & 0x889E8C11) + 253902330) & 0xF0DDCBB6) - 2479 + (v42 >> 24) - 12);
  v45 = *(*(v33 + 8 * (v37 ^ 0xA2D)) + (v42 >> 24) - 8) ^ v39 ^ v43 ^ v44 ^ v42 ^ (-73 * (v42 >> 24));
  LODWORD(v42) = (*(*(v33 + 8 * (v37 ^ 0xA2D)) + (v42 >> 24) - 8) ^ v39 ^ v43 ^ v44 ^ v42 ^ (-73 * BYTE3(v42)));
  *v40 = v45;
  return (*(v32 + 8 * ((1321 * (v34 == (v42 != 60))) ^ v37)))();
}

uint64_t sub_1E349CF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, char *a17, int a18, char a19, __int16 a20, char a21, uint64_t a22, int a23, unsigned int a24, char *a25, char *a26, char *a27, char *a28)
{
  a25 = a17;
  a26 = &a19;
  a28 = &a16;
  LODWORD(a27) = (v28 + 242) ^ (((-1186758393 - (&a23 | 0xB9438107) + (&a23 | 0x46BC7EF8)) ^ 0x74A72568) * v31);
  (*(v29 + 8 * (v28 + 6491)))(&a23);
  a27 = a17;
  a25 = &a21;
  LODWORD(a26) = v28 + 956911519 * ((-1668232106 - (&a23 | 0x9C90CC56) + (&a23 | 0x636F33A9)) ^ 0x89FE43AC) + 6196;
  (*(v29 + 8 * (v28 + 6530)))(&a23);
  a25 = a17;
  a26 = &a14;
  a24 = (v28 + 136) ^ (33731311 * ((((2 * &a23) | 0x4587746C) - &a23 - 583252534) ^ 0x1B357015));
  (*(v29 + 8 * (v28 ^ 0x297Du)))(&a23);
  LODWORD(a26) = v28 - 2008441969 * ((&a23 - 924682220 - 2 * (&a23 & 0xC8E27814)) ^ 0x807B2C1A) + 2569;
  a25 = a17;
  v32 = (*(v29 + 8 * (v28 + 6535)))(&a23);
  return (*(v29 + 8 * (((a23 == v30) * ((v28 - 99) ^ 0x973)) ^ v28)))(v32);
}

uint64_t sub_1E349D23C()
{
  v1 = *(STACK[0x668] + 24);
  STACK[0x570] = v1;
  return (*(STACK[0x330] + 8 * (((v1 == 0) * (((v0 + 1981207108) & 0x89E93BD7 ^ 0xFFFFF3DB) + ((v0 - 1687) | 0x10D4))) ^ v0)))();
}

uint64_t sub_1E349D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23)
{
  v27 = 1824088897 * (((&a19 | 0xF5BECD65) - &a19 + (&a19 & 0xA413298)) ^ 0xADD71E07);
  a21 = (v25 ^ 0x7FB6FEDF) + ((2 * v25) & 0xFF6DFDBE) - v27 - 823268437;
  a19 = v27 + v23 + 764;
  a22 = v24;
  a23 = a12;
  v28 = (*(v26 + 8 * (v23 + 6638)))(&a19);
  return (*(v26 + 8 * ((10840 * (a20 == 2177 * (v23 ^ 0xBB3) + 16253645)) ^ v23)))(v28);
}

void sub_1E349D39C()
{
  v2 = (v0 - 1041) | 0x400;
  STACK[0x3A0] = (v2 ^ 0xFFFFFB5E) & v1;
  LODWORD(STACK[0x3B0]) = v2;
  STACK[0x390] = (v2 + 4115);
  JUMPOUT(0x1E349D548);
}

uint64_t sub_1E349E254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((-1275135746 - (&a14 | 0xB3FEF8FE) + (&a14 | 0x4C010701)) ^ 0x1468D463) * v21;
  a15 = v23 - 85195060;
  a16 = a12;
  a17 = &a10;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674577939;
  v24 = (*(v20 + 8 * (v22 ^ 0x211F)))(&a14);
  return (*(v20 + 8 * (((a14 == ((v22 - 1310437144) & 0xEDF ^ (v19 + 961))) * ((v22 - 698094757) & 0x1EED ^ 0x1B6)) ^ v22)))(v24);
}

uint64_t sub_1E349E3C4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v2) = 0;
  v6 = v2 < 0xFFFFFFFFCDE53684 && v2 + 840616316 < v1;
  return (*(v4 + 8 * ((v6 * (((24 * (v3 ^ 0x14D9) + 2776) | 0x140) + 22)) ^ (24 * (v3 ^ 0x14D9)))))();
}

uint64_t sub_1E349E420@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = v5 + 32;
  v12 = (v11 ^ v8 ^ v4) + v3;
  v13 = *(v9 + v12 - 15);
  v14 = *(v9 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a2)), a3);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a2)), a3);
  return (*(v10 + 8 * ((120 * (v6 != v11)) ^ v7)))();
}

uint64_t sub_1E349E680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v35 = *(v30 + 4 * (v31 - 1));
  *(v30 + 4 * v31) = ((1566083941 * (v35 ^ (v35 >> 30))) ^ *(v30 + 4 * v31)) - v31;
  v36 = 2048652491 * ((0xC81A77718E866EC0 - ((v34 - 152) | 0xC81A77718E866EC0) + a29) ^ 0xE3010702C0C8063ALL);
  *(v34 - 112) = v36 ^ 1;
  v37 = v29 - 2026031905 + v36;
  *(v34 - 152) = (v29 + 1745252473) ^ v36;
  *(v34 - 136) = v37;
  *(v34 - 128) = ((v29 - 2026031905) ^ 0x28) + v36;
  *(v34 - 124) = v37 + 648;
  *(v33 + 16) = 623 - v36;
  *(v33 + 40) = (v31 + 1) ^ v36;
  v38 = (*(v32 + 8 * (v29 ^ 0x261A)))(v34 - 152);
  return (*(v32 + 8 * *(v34 - 132)))(v38);
}

uint64_t sub_1E349E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a22 = (v23 + 1305605087) ^ (1358806181 * ((&a18 + 1415417890 - 2 * (&a18 & 0x545D9022)) ^ 0x6B72FCA1));
  a23 = &a14;
  a20 = a10;
  a21 = &a11;
  (*(v24 + 8 * (v23 ^ 0x2E34)))(&a18);
  a19 = (v23 + 182) ^ (33731311 * ((&a18 - 240232212 - 2 * (&a18 & 0xF1AE58EC)) ^ 0xC85892CF));
  a20 = a10;
  a21 = &a14;
  (*(v24 + 8 * (v23 + 6531)))(&a18);
  a19 = (v23 + 182) ^ (33731311 * ((((2 * &a18) | 0x53B26B7E) - &a18 + 1445382721) ^ 0x902FFF9C));
  a20 = a10;
  a21 = &a17;
  (*(v24 + 8 * (v23 + 6531)))(&a18);
  a20 = a10;
  LODWORD(a21) = v23 - 2008441969 * (&a18 ^ 0x4899540E) + 2615;
  v25 = (*(v24 + 8 * (v23 ^ 0x2E7D)))(&a18);
  return (*(v24 + 8 * (((a18 == 16257999) * (((11 * (v23 ^ 0xB91) + 3379) | 0xD85) - 1787)) ^ v23)))(v25);
}

uint64_t sub_1E349EA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v24 = 1875091903 * ((((2 * &a15) | 0xA99D4AB2) - &a15 - 1422828889) ^ 0x62BB26DA);
  a18 = a12;
  a16 = (v21 ^ 0xBEBDBFFE) + ((2 * v21) & 0x7D7B7FFC) + 1633613484 + v24;
  a17 = v24 + 7724;
  (*(v22 + 77160))(&a15);
  v25 = 1824088897 * (((&a15 | 0xF210C612) - &a15 + (&a15 & 0xDEF39E8)) ^ 0xAA791570);
  a18 = v19;
  a19 = a12;
  a17 = (v20 ^ 0x6FFEEF9F) - v25 + ((2 * v20) & 0xDFFDDF3E) - 559547669;
  a15 = v25 + 3757;
  v26 = (*(v22 + 77048))(&a15);
  return (*(v22 + 8 * ((9095 * (a16 == v23)) ^ 0x713u)))(v26);
}

uint64_t sub_1E349EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, unsigned int a21)
{
  a20 = a18;
  a21 = v21 - (((&a19 | 0xBEBF446A) - (&a19 & 0xBEBF446A)) ^ 0xF6261064) * v22 + 1907;
  v25 = (*(v24 + 8 * (v21 ^ 0x2B31u)))(&a19);
  return (*(v24 + 8 * (((a19 == (v21 ^ 0x1E2C ^ v23)) * (((v21 + 273846595) & 0xEFAD6E76) + 3561)) ^ v21)))(v25);
}

uint64_t sub_1E349EC70@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x2760;
  v3 = v2 + 7558;
  (*(v1 + 8 * (v2 + 8212)))();
  v4 = STACK[0x400];
  STACK[0x7B0] = 0;
  return (*(v4 + 8 * (((STACK[0x730] != 0) * ((v3 ^ 0x3319) - 4579)) ^ v3)))();
}

uint64_t sub_1E349EDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (&a12 ^ 0xB0039876) + 8154;
  a12 = &a10;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((3906 * (a13 == v15)) ^ 0x149Eu)))(v16);
}

uint64_t sub_1E349EE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v8;
  STACK[0x328] = *v8;
  return (*(v9 + 8 * (((v10 != 0) * ((v7 + 1701929530) & 0x9A8E9BFE ^ 0xA31)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 16215950);
}

uint64_t sub_1E349EF80(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (((a3 + 2900) - 7079) ^ a1) + v4;
  *(v5 - 7 + v7) = veor_s8(*(v3 - 7 + v7), 0x3C3C3C3C3C3C3C3CLL);
  return (*(v6 + 8 * ((12817 * ((v4 & 0xFFFFFFF8) - 8 == a1)) ^ a3)))();
}

uint64_t sub_1E349F1D4@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = (a2 + 212) | 0xE80;
  v3 = LODWORD(STACK[0x688]) - 7842 + v2;
  LODWORD(STACK[0x688]) = v3;
  return (*(a1 + 8 * (((v3 != ((v2 - 943646518) & 0x383EDCF7 ^ 0x1465)) * (((v2 - 425520877) & 0x195CDDEF) - 3381)) ^ v2)))();
}

void sub_1E349F260()
{
  v0 = STACK[0x9A0];
  STACK[0x210] = ((STACK[0x9A0] + 4) ^ 0x7F57DEFBFFFFB5BELL) - 0x19149C8A4F8011A8 + (((STACK[0x9A0] + 4) << ((103 * (v2 ^ 0x48) + 19) ^ 0xF7u)) & 0xFEAFBDF7FFFF6B7CLL);
  v1 = STACK[0x9E8];
  STACK[0x200] = v0 + 10;
  STACK[0x220] = v1 + 10;
  STACK[0x310] = STACK[0x570];
  STACK[0x290] = STACK[0x840];
  STACK[0x300] = STACK[0x588];
  STACK[0x280] = STACK[0x398];
  STACK[0x270] = STACK[0x630];
  STACK[0x260] = STACK[0x7E0];
  STACK[0x250] = STACK[0x360];
  STACK[0x240] = STACK[0x420];
  STACK[0x2F0] = STACK[0x718];
  STACK[0x230] = STACK[0x620];
  STACK[0x2E0] = STACK[0x768];
  LODWORD(STACK[0x2A0]) = LOWORD(STACK[0x8E6]);
  LODWORD(STACK[0x2D0]) = LOWORD(STACK[0x8D6]);
  LODWORD(STACK[0x2B0]) = LOWORD(STACK[0x89A]);
  LODWORD(STACK[0x2C0]) = LOWORD(STACK[0x886]);
  JUMPOUT(0x1E34206CCLL);
}

uint64_t sub_1E349F348()
{
  v2 = STACK[0x558];
  v3 = STACK[0x528];
  v4 = STACK[0x64C];
  STACK[0x4A0] = 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = !v5 && v4 != ((v0 - 1843) ^ 0x999) - 7279;
  return (*(v1 + 8 * (((2 * v7) | (4 * v7)) ^ v0)))();
}

void sub_1E349F3C0(int a1@<W8>)
{
  v5 = *v2;
  v6 = *(v2 + 4) + a1;
  *(*v2 + v6) = (HIBYTE(v1) ^ 0x9B) - ((2 * (HIBYTE(v1) ^ 0x9B)) & 0x78) + 60;
  *(v5 + v6 + 1) = (BYTE2(v1) ^ 0xF2) - ((2 * (BYTE2(v1) ^ 0xF2)) & 0x78) + 60;
  *(v5 + v6 + 2) = (BYTE1(v1) ^ 0xB) - ((2 * (BYTE1(v1) ^ 0xB)) & 0x78) + 60;
  *(v5 + v6 + 3) = v1 ^ 0x84;
  v7 = *v2;
  v8 = ((v4 ^ 0xD94019CF) + 1062446794) ^ v4 ^ ((v4 ^ 0x614DC877) - 2023852174) ^ ((v4 ^ 0x5D1C6EAE) - 1156591191) ^ ((v4 ^ 0xFCFDFFEF) + 451821802);
  v9 = ((2 * (a1 + *(v2 + 4) + 4)) & 0xABFD9FFE) + ((a1 + *(v2 + 4) + 4) ^ 0x55FECFFF) - 1442762751;
  *(*v2 + v9) = (HIBYTE(v8) ^ 0x19) - 2 * ((HIBYTE(v8) ^ 0x19) & 0x3E ^ HIBYTE(v8) & 2) + 60;
  *(v7 + v9 + 1) = (BYTE2(v8) ^ 0xEC) - 2 * ((BYTE2(v8) ^ 0xEC) & 0x3E ^ BYTE2(v8) & 2) + 60;
  *(v7 + v9 + 2) = (((((v4 ^ 0x19CF) - 22838) ^ v4 ^ ((v4 ^ 0xC877) + 30578) ^ ((v4 ^ 0x6EAE) - 11863) ^ ((v4 ^ 0xFFEF) + 16618)) >> 8) ^ 0x40) - ((v8 >> 7) & 0x78) + 60;
  *(v7 + v9 + 3) = ((v4 ^ 0xCF) - 54) ^ v4 ^ ((v4 ^ 0x77) + 114) ^ ((v4 ^ 0xAE) - 87) ^ ((v4 ^ 0xEF) - 22) ^ 0xC5;
  *(v2 + 4) = v3;
  JUMPOUT(0x1E3375280);
}

uint64_t sub_1E349F67C()
{
  STACK[0x748] = 0;
  v3 = STACK[0x378];
  STACK[0x3D8] = *(v2 + 8 * v1);
  LODWORD(STACK[0xA24]) = 485375226;
  STACK[0xA28] = &STACK[0x748];
  return (*(v2 + 8 * (((v3 != 0) * ((((((v1 + 8066) | 0x481) - 7361) | 0x1406) - 1552) ^ 0x15FB)) ^ ((v1 + 8066) | 0x481))))();
}

void sub_1E34A0084(int a1@<W8>)
{
  v4 = (a1 ^ 0x2324) + 8740;
  *(v2 - 224) = ((a1 ^ 0x2324) - 2140796942) ^ (914963389 * ((v2 - 26035230 - 2 * ((v2 - 232) & 0xFE72BCCA)) ^ 0xD28E0DB1));
  (*(v3 + 8 * ((a1 ^ 0x2324) + 8806)))(v2 - 232);
  *(v1 + 112) = v4 ^ *(v2 - 232) ^ 0xB68F0C9B;
  JUMPOUT(0x1E349A034);
}

uint64_t sub_1E34A01A4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((5372 * (v7 == (v5 - a2) - 3262)) ^ (v3 + v5 + 2442))))();
}

void sub_1E34A01E0(uint64_t a1@<X8>)
{
  *(a1 + 16) = *v1;
  *(a1 + 88) = *(v1 + 72);
  *(a1 + 92) = *(v1 + 76);
  *(a1 + 96) = *(v1 + 80);
  *(a1 + 97) = *(v1 + 81);
  *(a1 + 120) = *(v1 + 104);
  *(a1 + 100) = *(v1 + 84);
  *(a1 + 124) = *(v1 + 108) & 1;
  JUMPOUT(0x1E34A0260);
}

uint64_t sub_1E34A02D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = v17 - 1710126949 * ((1572677594 - (&a15 | 0x5DBD27DA) + (&a15 | 0xA242D825)) ^ 0x905983B5) + 476320890;
  v18 = (*(v16 + 8 * (v17 + 7444)))(&a15);
  return (*(v16 + 8 * (((a16 != 16257999) | (2 * (a16 != 16257999))) ^ v17)))(v18);
}

uint64_t sub_1E34A03A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((&a15 - 84886246 - 2 * (&a15 & 0xFAF0BD1A)) ^ 0xC8EBE68A);
  v18 = (*(v17 + 77088))(&a15);
  return (*(v17 + 8 * ((823 * (a16 == 16257999)) ^ v16)))(v18);
}

uint64_t sub_1E34A080C()
{
  v3 = ((v1 - 223574237) & 0xD537B35) - ((v0 + 474961462) & 0xF ^ (2 * (v0 + 474961462)) & 8 ^ 4) - 4865;
  LODWORD(STACK[0x778]) = v3;
  return (*(v2 + 8 * ((115 * ((v0 ^ 0x7FDFF3FED4AFEF5ALL) + ((2 * v0) & 0x1A95FDEB4) + 2 * v3 + 0x26A49C5B8FD131C7 + (v3 ^ 0x597B6FA59B7EDEDFuLL) < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_1E34A0B0C()
{
  v3 = *(v1 + 8);
  STACK[0x6F8] = v3;
  return (*(v2 + 8 * ((((((v0 + 1142129034) & 0xBBEC6B5F) + 651) ^ ((v0 - 4465) | 0x117)) * (v3 != 0)) ^ v0)))();
}

uint64_t sub_1E34A0B64(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  v17 = v16 - v14 - 3164;
  *a2 = 0;
  *a3 = 0;
  a13 = v16 - 1710126949 * (((&a13 | 0xA17C00A5) - (&a13 & 0xA17C00A5)) ^ 0x93675B35) + 476319856;
  v18 = (*(v15 + 8 * (v16 + 6410)))(&a13);
  return (*(v15 + 8 * ((4749 * (a14 == (v17 ^ 0x78A51DB3))) ^ v16)))(v18);
}

uint64_t sub_1E34A0C10@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 228) = (v2 - 476) ^ (33731311 * ((((2 * (v4 - 232)) | 0x524A3E62) - (v4 - 232) + 1457184975) ^ 0x90D3D512));
  *(v4 - 224) = a1;
  *(v4 - 216) = &STACK[0x604];
  v5 = (*(v1 + 8 * (v2 + 5873)))(v4 - 232);
  return (*(STACK[0x330] + 8 * (((*(v4 - 232) == ((v2 + 1432457583) & 0xAA9E65FE ^ (v3 + 602))) * ((2 * v2) ^ 0x1C16)) ^ v2)))(v5);
}

uint64_t sub_1E34A0CC8(uint64_t a1)
{
  v6 = (((v3 + v2) | 0x82Eu) ^ 0xFFFFFFFFFFFFF5D1) + v4;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * ((1004 * (v6 == 0)) ^ (v3 + v2 + 4070))))();
}

uint64_t sub_1E34A0DE8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v4 + 8 * (((v2 != 0xBC59953) * (((535 * (v3 ^ 0x1632) + 584240574) & 0xDD2D3BEE) + ((535 * (v3 ^ 0x1632)) ^ 0xFFFFF7E5))) ^ (535 * (v3 ^ 0x1632)))))();
}

void sub_1E34A0E40()
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3A0] = xmmword_1E4316DF0;
  JUMPOUT(0x1E34A0FACLL);
}

uint64_t sub_1E34A14E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = 1875091903 * (((&v9 | 0x8BCF3D0F) - (&v9 & 0x8BCF3D0F)) ^ 0xBDBABE8C);
  v14 = a4;
  v15 = a6;
  v16 = v7 ^ ((a2 ^ 0xFEDDB6F3) + 1974886208 + ((2 * a2) & 0xFDBB6DE6));
  v12 = ((2 * a5) & 0xFF6B3FE8) - v7 + (a5 ^ 0x7FB59FF4) - 637534464;
  v13 = v7 + 9377;
  v10 = a1;
  v11 = a3;
  (*(v6 + 76960))(&v9);
  return (v9 - 16257999);
}

uint64_t sub_1E34A1670@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  v2 = (LODWORD(STACK[0x3E4]) - 5141) | 0x40A;
  STACK[0x8E8] = a2;
  v3 = STACK[0x780];
  STACK[0x8F0] = STACK[0x780];
  return (*(a1 + 8 * ((9734 * (a2 - v3 > ((v2 ^ 0x103Fu) - 4661) - 551)) ^ v2)))();
}

uint64_t sub_1E34A16F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = 1317436891 * ((&a14 + 2073060290 - 2 * (&a14 & 0x7B9063C2)) ^ 0xCB93FBB4) + 8154;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((54 * (a15 != v17)) ^ 0x615)))(v18);
}

uint64_t sub_1E34A17AC(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v5 + v3 - 16);
  v8 = (v5 + a1 - 16);
  *(v8 - 1) = *(v5 + v3 - 32);
  *v8 = v7;
  return (*(v6 + 8 * ((1368 * ((a3 + 1898357693) - (v5 & 0xFFFFFFE0) == 8468)) ^ (v4 + a3 + 3662))))();
}

uint64_t sub_1E34A1828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, uint64_t *a14, char *a15, uint64_t a16, unsigned int a17, int a18)
{
  v21 = v18 - 653;
  v22 = v18 + 114;
  v23 = v18 - 27;
  v24 = v18 - 784;
  v25 = 1317436891 * ((2 * ((&a13 ^ 0x9CDEE4A8) & 0x30E7F470) - (&a13 ^ 0x9CDEE4A8) - 820507767) ^ 0xE3C57757);
  a14 = &a9;
  a15 = &a11;
  a16 = v19;
  a17 = 1602299020 - v25;
  a18 = v24 ^ v25;
  v26 = (*(v20 + 8 * (v21 ^ 0x2FEE)))(&a13);
  return (*(v20 + 8 * (v21 ^ (16 * (((v22 ^ v23) ^ (*(v19 + 24) == 16257999)) & 1)))))(v26);
}

void sub_1E34A195C()
{
  LODWORD(STACK[0x310]) = 0;
  *v0 = 0u;
  v0[1] = 0u;
  JUMPOUT(0x1E346B5B4);
}

void sub_1E34A19D8()
{
  STACK[0x7E8] = STACK[0x348];
  STACK[0x670] = *(v1 + 8 * v0);
  JUMPOUT(0x1E349C8E4);
}

uint64_t sub_1E34A19E0()
{
  v9 = (v1 + 6486) ^ (1824088897 * (((&v7 | 0x66EE4855) - &v7 + (&v7 & 0x9911B7A8)) ^ 0x3E879B37));
  v8 = v4;
  (*(v2 + 8 * (v1 ^ 0x22C8u)))(&v7);
  v9 = (v1 + 6486) ^ (1824088897 * ((((&v7 | 0x5E4F3F3C) ^ 0xFFFFFFFE) - (~&v7 | 0xA1B0C0C3)) ^ 0xF9D913A1));
  v8 = v6;
  (*(v2 + 8 * ((v1 - 104) ^ 0x2350)))(&v7);
  return (v5 ^ 0xB7F993FF) + 1224638416 + ((v5 << (v0 ^ 0x31)) & 0x6FF327FE) - 16257999;
}

void sub_1E34A1B30()
{
  LODWORD(STACK[0x534]) = v1;
  LODWORD(STACK[0x61C]) = 197499219;
  LODWORD(STACK[0x7E0]) = 197499219;
  LODWORD(STACK[0x844]) = v2;
  STACK[0x4E8] = v0;
  JUMPOUT(0x1E34A1B58);
}

uint64_t sub_1E34A1C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X6>, int a7@<W7>, int a8@<W8>)
{
  if (v8 == 17168)
  {
    return (*(a6 + 8 * ((a7 + 52) ^ (5025 * (a5 == a8 + 4)))))();
  }

  if (v8 == 20706 || v8 == 33980)
  {
    return (*(a6 + 8 * (((((a7 + 51) | 1) + 4376) * (v8 == 17168)) ^ (a7 + 52))))(a1, a2, a3, a4, 197499219);
  }

  LODWORD(STACK[0x268]) = v8;
  return (STACK[0x260])();
}

uint64_t sub_1E34A1EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36)
{
  v40 = (v38 + ((2 * (v37 + 6)) & 0x6C7E72F77DF7E76CLL) + ((v37 + 6) ^ 0xF63F397BBEFBF3B6) + 0x9C0C68441040C4ALL);
  v41 = (*v40 << 24) | (v40[1] << 16) | (v40[2] << 8);
  return (*(v39 + 8 * ((2037 * ((((v41 | v40[3]) + 197499219 - 2 * ((v41 | v40[3]) & 0xBC5995F ^ v40[3] & 0xC)) ^ 0xBC59953u) + v37 + 10 <= a36)) ^ v36)))();
}

uint64_t sub_1E34A2224@<X0>(int a1@<W3>, int a2@<W8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int32x4_t a8@<Q7>)
{
  v14 = v9 + 4;
  a4.i64[0] = *(v10 + 4);
  a4.i32[2] = *(v11 + 4 * (v14 + v8));
  v15 = vextq_s8(a3, a4, 0xCuLL);
  v16 = a4;
  v16.i32[3] = *(v10 + 16);
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, a6), vandq_s8(v15, a5)), 1uLL), *(v10 - 908));
  v15.i32[0] = *(v13 + 4 * (*(v10 + 4) & 1));
  v15.i32[1] = *(v13 + 4 * (*(v10 + 8) & 1));
  v15.i32[2] = *(v13 + 4 * (*(v11 + 4 * (v14 + v8)) & 1));
  v15.i32[3] = *(v13 + 4 * (v16.i8[12] & 1));
  *v10 = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), a7)), a8), v15);
  return (*(v12 + 8 * (((v14 == -3245) * a1) ^ a2)))();
}

uint64_t sub_1E34A2298@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  STACK[0x9B0] = 0;
  STACK[0x520] = 0;
  return (*(STACK[0x400] + 8 * (((((v1 + 841) | 0x20) - 9166) * (v2 != 0)) ^ v1)))();
}

void sub_1E34A2330(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x394]) = v2;
  JUMPOUT(0x1E3450A0CLL);
}

uint64_t sub_1E34A2350@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = v65 ^ a1;
  v67 = *(STACK[0x678] + 24);
  STACK[0x3D0] = v67;
  return (*(a65 + 8 * (((v67 == 0) * ((v65 - 878694419) & 0x345FBFFF ^ (v66 - 4057))) ^ v65)))();
}

uint64_t sub_1E34A2410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LODWORD(STACK[0x360]);
  switch(v6)
  {
    case 17168:
      return (*(STACK[0x3E8] + 8 * ((v5 - 4071) ^ (146 * (a3 == 197499223)))))();
    case 20706:
      return (*(STACK[0x3E8] + 8 * ((((v5 + 2130862360) & 0x80FD9AF2 ^ 0x1F0D) * (a3 == 197499227)) ^ (v5 - 4071))))();
    case 33980:
      STACK[0x708] = STACK[0x6E0] + STACK[0x2F0];
      JUMPOUT(0x1E341DFF8);
  }

  return sub_1E344D4E8(a1, a2, a3, a4, a5, v5);
}

void sub_1E34A26D8()
{
  v0 = LOWORD(STACK[0xA4E]);
  v1 = STACK[0xA50];
  LODWORD(STACK[0x370]) = 197499223;
  STACK[0x3B0] = STACK[0x7B0] + 24;
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0xA54]) ^ 0xD6A561FA;
  LODWORD(STACK[0x360]) = v0;
  LODWORD(STACK[0x340]) = v0 ^ 0x4CF9;
  STACK[0x3A0] = STACK[0x5F8] + 24;
  v2 = LOWORD(STACK[0xB1E]);
  LODWORD(STACK[0x350]) = v2;
  LODWORD(STACK[0x330]) = v2 ^ 0xFFFFA60A;
  v3 = STACK[0xB20];
  LODWORD(STACK[0x2D0]) = LODWORD(STACK[0xB24]) ^ 0xD6A561FA;
  STACK[0x390] = STACK[0x580] + 24;
  STACK[0x380] = STACK[0x658] + 24;
  LODWORD(STACK[0x300]) = v1;
  LODWORD(STACK[0x320]) = v1 ^ 0xD6A561FA;
  LODWORD(STACK[0x2F0]) = v3;
  LODWORD(STACK[0x310]) = v3 ^ 0xD6A561FA;
  JUMPOUT(0x1E336D6F8);
}

uint64_t sub_1E34A270C()
{
  v4 = (*(v3 + 8 * (v0 + 8394)))();
  *v1 = 0;
  return v2(v4);
}

void sub_1E34A2730(int a1)
{
  v2 = *(&off_1F5DB1610 + (a1 ^ 0x903)) - 4;
  *(v1 - 256) = *(&off_1F5DB1610 + (a1 ^ 0x9F2));
  *(v1 - 248) = v2;
  JUMPOUT(0x1E34A2E74);
}

uint64_t sub_1E34A49AC@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v6 = v5 < v3;
  *(v4 + v2) = 0;
  if (v6 == (a2 ^ 0x13F1uLL) + v2 > 0xFFFFFFFFCDE53684)
  {
    v6 = v3 + v2 + 1 < v5;
  }

  return (*(a1 + 8 * ((2044 * v6) ^ a2)))();
}

uint64_t sub_1E34A4A10(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA50] = ((v1 - 32) | 0x20u) + 0x5E419F52E8AC3FEELL + (((v2 ^ 0x11A1C2F5AE308480) - 0x11A1C2F5AE308480) ^ ((v2 ^ 0x244643D37C7A7A97) - 0x244643D37C7A7A97) ^ ((v2 ^ 0x35E78126D98F6744) - 0x35E78126D98F6EBELL + ((v1 - 874) ^ 0x27CCu)));
  *(a1 + 16) = (((v2 ^ 0xA004CBBB) + 1610298437) ^ ((v2 ^ 0x40FF2A48) - 1090464328) ^ ((v2 ^ 0xEB3E78A0) + 348227424)) + 197499229;
  v5 = (*(v3 + 8 * (v1 + 386)))();
  v6 = STACK[0x400];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((69 * (v5 == 0)) ^ (v1 - 874))))();
}

uint64_t sub_1E34A4B84()
{
  v0 = STACK[0x32C];
  v1 = LOWORD(STACK[0x886]);
  STACK[0x448] = STACK[0x888];
  return (*(STACK[0x330] + 8 * (((v1 == 17168) * (((v0 + 379570601) & 0xE960377E) - 342)) ^ (v0 - 2561))))();
}

void sub_1E34A4BE4()
{
  STACK[0x540] = 0;
  STACK[0x690] = 0;
  STACK[0x3D8] = *(STACK[0x330] + 8 * v0);
  JUMPOUT(0x1E34653D4);
}

uint64_t sub_1E34A4C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, unsigned int a23)
{
  v26 = (v23 + 130279740) & 0x40B9E;
  v27 = ((((&a18 | 0xB20D1424) ^ 0xFFFFFFFE) - (~&a18 | 0x4DF2EBDB)) ^ 0x159B38B9) * v24;
  a19 = v27 + 1136829205;
  a22 = -654855621 - v27;
  a23 = v27 + 1674579114;
  a20 = a13;
  a21 = &a16;
  v28 = (*(v25 + 76864))(&a18);
  return (*(v25 + 8 * ((14191 * (a18 == v26 + 16255565)) ^ 0x14A7u)))(v28);
}

uint64_t sub_1E34A4D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20)
{
  a18 = (33731311 * (((&a17 | 0xBE3FBC99) - (&a17 & 0xBE3FBC99)) ^ 0x87C976BA)) ^ 0xC9C;
  a19 = a15;
  a20 = &a14;
  (*(v21 + 76616))(&a17);
  a19 = a15;
  LODWORD(a20) = 5661 - 2008441969 * ((&a17 + 128911006 - 2 * (&a17 & 0x7AF069E)) ^ 0x4F365290);
  v23 = (*(v21 + 77016))(&a17);
  return (*(v21 + 8 * ((2845 * (a17 == v22)) ^ v20)))(v23);
}

void sub_1E34A4E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x830] = *(a4 + 8 * (v4 - 5051));
  LODWORD(STACK[0x3A0]) = STACK[0x534];
  LODWORD(STACK[0x3B0]) = STACK[0x61C];
  LODWORD(STACK[0x3D0]) = 16215971;
  LODWORD(STACK[0x3C0]) = STACK[0x7E0];
  LODWORD(STACK[0x390]) = v5 ^ 0x1FAA;
  JUMPOUT(0x1E3420D54);
}

uint64_t sub_1E34A4F2C@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 + 127 - a1;
  v6 = *(v5 - 31);
  v7 = v3 + 127 - a1;
  v8.i64[0] = 0x7878787878787878;
  v8.i64[1] = 0x7878787878787878;
  v9.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v9.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v1 + 8 * (((a1 == 96) * ((v2 - 3176) ^ 0x984)) ^ v2)))();
}

uint64_t sub_1E34A5128(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *(v5 + a3 + 16);
  v9 = (v6 + a3);
  *v9 = *(v5 + a3);
  v9[1] = v8;
  return (*(v7 + 8 * (((v3 == a3) * a2) ^ v4)))();
}

uint64_t sub_1E34A51EC(uint64_t a1)
{
  *(a1 + 16) = *v2;
  *(a1 + 88) = *(v2 + 72);
  *(a1 + 92) = *(v2 + 76);
  *(a1 + 96) = *(v2 + 80);
  *(a1 + 97) = *(v2 + 81);
  *(a1 + 120) = *(v2 + 104);
  *(a1 + 100) = *(v2 + 84);
  *(a1 + 124) = *(v2 + 108) & (((v1 + 114) & 0x77) - 114);
  return sub_1E34A5278();
}

uint64_t sub_1E34A5278(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, char a7, int a8)
{
  v12 = a3 + v8 - 1312;
  *(v10 + v12) = *(a2 + v12) ^ *(*(v11 + 8 * a4) - 8 + (v12 & 0xF)) ^ *((v12 & 0xF) + *(v11 + 8 * a5) - 12 + 3) ^ ((v12 & 0xF) * a7) ^ *(*(v11 + 8 * a6) + (v12 & 0xF)) ^ 0x3C;
  return (*(STACK[0x3E8] + 8 * (((v12 != 0) * a8) ^ v9)))();
}

uint64_t sub_1E34A5380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
{
  v21 = ((&a12 - 200548955 - 2 * (&a12 & 0xF40BDDA5)) ^ 0xAC620EC7) * v18;
  a14 = a10;
  a15 = &a9;
  a16 = -654855621 - v21;
  a17 = v21 + v20 + 1674576141;
  a13 = v21 - 179957024;
  v22 = (*(v17 + 8 * (v20 ^ 0x2E15)))(&a12);
  return (*(v17 + 8 * ((52 * (a12 != (((v20 ^ 0xFFB) + 1719) ^ (v19 + 2280)))) ^ v20)))(v22);
}

uint64_t sub_1E34A54B8()
{
  v2 = (v0 - 4286) | 0xA01;
  v3 = (STACK[0x900] ^ 0xDE538BA8) & (2 * (STACK[0x900] & 0xDF630BA9)) ^ STACK[0x900] & 0xDF630BA9;
  v4 = v0 ^ 0x909285B7 ^ ((2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) ^ 0x2F652086) & (LODWORD(STACK[0x900]) ^ (v2 + 1221692593)) ^ (2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) & 0x97B29042;
  v5 = (((2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) ^ 0x2F652086) & (LODWORD(STACK[0x900]) ^ (v2 + 1221692593)) ^ (2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) & 0x97B29042 ^ 0x7000000) & (4 * v3) ^ v3;
  v6 = ((4 * v4) ^ 0x5ECA410C) & v4 ^ (4 * v4) & 0x97B29040;
  v7 = (v6 ^ 0x16820000) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x81309043)) ^ 0x7B290430) & (v6 ^ 0x81309043) ^ (16 * (v6 ^ 0x81309043)) & 0x97B29040;
  v9 = (STACK[0x900] ^ (2 * ((((v8 ^ 0x84929043) << 8) & 0x17B20000 ^ 0x12900000 ^ (((v8 ^ 0x84929043) << 8) ^ 0xB2900000) & (v8 ^ 0x84929043)) & (((v8 ^ 0x13200000) & (v7 << 8) ^ v7) << 16) ^ (v8 ^ 0x13200000) & (v7 << 8) ^ v7))) == -547157079;
  return (*(v1 + 8 * (((8 * v9) | (16 * v9)) ^ (v0 + 2347))))();
}

uint64_t sub_1E34A569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v3.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return sub_1E34A56C4(a1, 4445, a3, 770041607, v3);
}

uint64_t sub_1E34A56C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X8>, int8x16_t a5@<Q0>)
{
  v13 = ~v8 + v5;
  v14 = *(a4 + v13 - 15);
  v15 = *(a4 + v13 - 31);
  v16 = a1 + v13;
  *(v16 - 15) = veorq_s8(v14, a5);
  *(v16 - 31) = veorq_s8(v15, a5);
  return (*(v12 + 8 * ((((((a3 + v7 + 72) | v9) ^ v11) + v8 == v6) * a2) ^ v10)))();
}

uint64_t sub_1E34A5734()
{
  v4 = 1358806181 * ((v3 + 1475160102 - 2 * ((v3 - 120) & 0x57ED289E)) ^ 0x68C2441D);
  *(v3 - 104) = v2;
  *(v3 - 120) = v4 - 1569389450;
  *(v3 - 116) = v4 - 740060536 + v1;
  v5 = (*(v0 + 8 * (v1 ^ 0x2A02)))(v3 - 120);
  return (*(v0 + 8 * (((*(v3 - 112) == 16257999) * ((v1 ^ 0x7A3) + 2657)) ^ v1)))(v5);
}

void sub_1E34A57DC(unint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v19 = ((a2 ^ v10) + v11) ^ ((a2 ^ 0x5AFB426E0B8A3085) - 0x5AFB426E0B8A3085) ^ ((a2 ^ (v9 + v8) ^ 0x72A534C6BE2CFC05) - 0x72A534C6DF106852);
  v20 = v15 + (v19 + v12) * (v19 + v13) - ((((v15 + (v19 + v12) * (v19 + v13)) * v16) >> 64) >> 31) * v17;
  v21 = v20 * v18 + (v14 ^ v7) * (v14 ^ v7) + a4;
  v22 = (v21 - (((v21 * a1) >> 64) >> 31) * a5) * v20;
  *(a6 + a3) = *(v6 + a3) ^ (v22 >> 15) ^ 0x3C;
  *(a6 + (a3 | 1)) = *(v6 + (a3 | 1)) ^ (v22 >> 23) ^ 0x3C;
  *(a6 + (a3 | 2)) = *(v6 + (a3 | 2)) ^ (v22 >> 31) ^ 0x3C;
  *(a6 + (a3 | 3)) = *(v6 + (a3 | 3)) ^ (v22 >> 39) ^ 0x3C;
  JUMPOUT(0x1E33B67C4);
}

uint64_t sub_1E34A5940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a12;
  a18 = &a11;
  a16 = (v18 + 1007) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  (*(v19 + 8 * (v18 + 7356)))(&a15);
  a17 = a12;
  LODWORD(a18) = v18 - 2008441969 * ((934883449 - (&a15 | 0x37B93079) + (&a15 | 0xC846CF86)) ^ 0x80DF9B88) + 3440;
  v21 = (*(v19 + 8 * (v18 ^ 0x2D36)))(&a15);
  return (*(v19 + 8 * (((a15 == v20) * ((v18 ^ 0x382) - 2785)) ^ v18)))(v21);
}

uint64_t sub_1E34A5A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (((&a14 ^ 0x86037F31) & 0xEBD1BD42 | ~(&a14 ^ 0x86037F31 | 0xEBD1BD42)) ^ 0xCA44EEEE) * v19;
  a15 = v22 - 1953920832;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674574045;
  a16 = a9;
  a17 = &a12;
  v23 = (*(v20 + 8 * (v21 ^ 0x3645u)))(&a14);
  return (*(v20 + 8 * (((a14 == 16257999) * (((v21 - 4040) | 0x38) ^ 0xCB4)) ^ v21)))(v23);
}

uint64_t sub_1E34A5DEC(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, int a17, int a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned int a26)
{
  v27.n128_u64[0] = 0x7878787878787878;
  v27.n128_u64[1] = 0x7878787878787878;
  v28.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v28.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return (*(v26 + 8 * ((((a18 + 726283800) & 0xD4B5E8DE ^ 0x2AE4) * (a15 < 0xFFFFFFFE)) ^ a18)))(a21, -474, 27, a25, 3953782941, 3904377628, 2443927634, a26, a1, a2, a3, v27, v28);
}

uint64_t sub_1E34A5EEC@<X0>(int a1@<W8>)
{
  STACK[0x998] = v1;
  v2 = STACK[0x698];
  STACK[0x9A0] = STACK[0x698];
  return (*(STACK[0x330] + 8 * (((v1 - v2 > ((6 * (a1 ^ 0x1A7Cu)) ^ 0x15FFuLL)) * (((a1 - 6613) | 0x187) + 14462)) ^ a1)))();
}

uint64_t sub_1E34A5F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, int a44, int a45, int a46)
{
  v51 = v50 - 224;
  *(v51 + 88) = v49 | 3;
  *(v51 + 72) = ((v48 + 1) ^ a43 ^ 0xC5A1302D ^ (v46 - (a46 - 8863) >= ~(a46 - 8863))) - v49;
  *(v50 - 144) = (a46 + 1324639579) ^ v49;
  *(v50 - 160) = a43 - v49 + 12;
  *(v50 - 156) = a45 - v49;
  *(v50 - 168) = a43 ^ v49;
  *(v50 - 164) = v49;
  v52 = (*(v47 + 8 * a44))(v50 - 168);
  return (*(v47 + 8 * *(v50 - 140)))(v52);
}

void sub_1E34A5FF4()
{
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v0;
  JUMPOUT(0x1E33AB980);
}

uint64_t sub_1E34A6044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, uint64_t a13, char *a14, int a15, char a16, int a17)
{
  v25 = -3 * (*(v17 + 32) + v23);
  v26 = (&a12 ^ 0x321B5B90) * v21;
  a17 = v26 + v20 + 1458;
  a13 = v22;
  a14 = &a10;
  a16 = (&a12 ^ 0x90) * v21 + v25 + 92;
  a15 = v26 + 864028683 + v24;
  v27 = (*(v19 + 8 * (v20 + 6273)))(&a12);
  return (*(v19 + 8 * (((a12 == v18) * (v20 ^ 0x10A0)) ^ v20)))(v27);
}

uint64_t sub_1E34A6214()
{
  (*(v1 + 8 * (v0 + 1166)))();
  v2 = STACK[0x330];
  STACK[0x5E0] = 0;
  return (*(v2 + 8 * (((STACK[0x520] == 0) * ((3437 * (v0 ^ 0x20F4) + 1871) ^ 0x221B)) ^ (3437 * (v0 ^ 0x20F4)))))();
}

void sub_1E34A6370()
{
  v3 = (((2 * v1) & 0xFEDBD7BBB1BEF9CLL) + (v1 ^ 0x87F6DEBDDD8DF7CELL) + v0 + 0x780921422271FA0CLL);
  v4 = (v3[3622] << 56) | (v3[3623] << 48) | (v3[(2 * (v2 ^ 0x3D14)) ^ 0x2594] << 40) | (v3[3625] << 32) | (v3[3626] << 24) | (v3[3627] << 16) | (v3[3628] << 8) | v3[3629];
  STACK[0x458] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  JUMPOUT(0x1E34A6434);
}

uint64_t sub_1E34A64B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = LOWORD(STACK[0x8CE]);
  switch(v7)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v8 = STACK[0x740];
      STACK[0x570] = v4;
      LODWORD(STACK[0x7F4]) = a3;
      return (*(a4 + 8 * (((v8 + v5 != 0) * (((v6 + 750605168) & 0xD3429CFE) - 1109)) ^ (v6 - 689))))();
    case 20706:
LABEL_4:
      STACK[0x570] = v4;
      break;
  }

  *STACK[0x580] = 0;
  LODWORD(STACK[0x7F4]) = 197499219;
  return sub_1E348EEA8(a1, a2, a3, a4);
}

void sub_1E34A6658()
{
  v2 = *(STACK[0x5B8] + 20);
  if (v2)
  {
    if (v2 == 1)
    {
      (*(v1 + 8 * (v0 + 352)))(STACK[0x628], 0, 32);
      JUMPOUT(0x1E3324280);
    }

    JUMPOUT(0x1E33DA0E0);
  }

  JUMPOUT(0x1E34A66D0);
}

uint64_t sub_1E34A6760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = LODWORD(STACK[0x380]);
  if (v7 == 17168)
  {
    return (*(STACK[0x3E8] + 8 * ((v6 - 563) ^ (12428 * (a3 == 197499223)))))();
  }

  if (v7 == 20706 || v7 == 33980)
  {
    STACK[0x620] = a6;
  }

  return (STACK[0x770])(a1, a2, a3, STACK[0x3E8]);
}

uint64_t sub_1E34A67F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x230] = a1;
  *(v8 - 200) = a1;
  v9 = *(a7 + 8 * ((70 * (LODWORD(STACK[0x25C]) == ((((((v7 - 330) | 0x1A0) - 1442) | 0x84) + 16258553) ^ (((v7 - 330) | 0x1A0) + 1021391274) & 0xC31ECDFF))) ^ ((v7 - 330) | 0x1A0)));
  STACK[0x2A8] = STACK[0x270];
  return v9();
}

uint64_t sub_1E34A6880()
{
  v1 = *(STACK[0x758] + 24);
  STACK[0x790] = v1;
  return (*(STACK[0x3E8] + 8 * (((v1 == 0) * (((227 * (v0 ^ 0x147F)) ^ 0xFFFFFFCD) + v0 + 8)) ^ v0)))();
}

uint64_t sub_1E34A698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v24 = ((917997502 - (&a15 | 0x36B787BE) + (&a15 | 0xC9487841)) ^ 0x9121AB23) * v21;
  a16 = v24 - 1540187763;
  a17 = a13;
  a18 = &a10;
  a19 = -654855621 - v24;
  a20 = v24 + v22 + 1674574376;
  v25 = (*(v20 + 8 * (v22 + 4870)))(&a15);
  return (*(v20 + 8 * (((a15 != v23) * ((335 * (v22 ^ 0x1286) + 59) ^ (v22 - 3343))) ^ v22)))(v25);
}

uint64_t sub_1E34A6A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 1863741123 - 2 * (&a14 & 0x6F166EC3)) ^ 0xDF15F6B5) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((197 * (a15 == v18)) ^ v17)))(v19);
}

uint64_t sub_1E34A6ADC()
{
  v1 = ((v0 + 41341218) & 0xFD8939C9) + 378997690 + (((*(STACK[0x518] + 116) ^ 0x34ECEC58) - 887942232) ^ ((*(STACK[0x518] + 116) ^ 0xFF4A3F24) + 11911388) ^ ((*(STACK[0x518] + 116) ^ 0xC0634A2F) + 1067234769));
  *(STACK[0x518] + 116) = v1 ^ ((v1 ^ 0x79FB7E12) - 1932193269) ^ ((v1 ^ 0xEA9DE919) + 531858690) ^ ((v1 ^ 0xE668EB93) + 323389324) ^ ((v1 ^ 0x7FDFEF7F) - 1963883672) ^ 0x1140AB4;
  return sub_1E34A6BD8();
}

uint64_t sub_1E34A6BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x470];
  v6 = STACK[0x4E8];
  v7 = &STACK[0xA00] + STACK[0x4E8];
  STACK[0x440] = v7;
  v8 = v7 + 16;
  STACK[0x798] = (v7 + 16);
  STACK[0x738] = (v7 + 48);
  STACK[0x4E8] = v6 + 80;
  (*(a4 + 8 * (v4 ^ 0x401)))();
  v9 = (*(STACK[0x3E8] + 8 * (v4 ^ 0x401)))(v8, 0, 32);
  v10 = STACK[0x3E8];
  STACK[0x5F0] = 0;
  STACK[0x7F8] = 0;
  LODWORD(STACK[0x6DC]) = 197499219;
  STACK[0x4B0] = 0;
  LODWORD(STACK[0x5EC]) = 0;
  STACK[0x4D0] = v5;
  return (*(v10 + 8 * ((((((v4 + 194469502) & 0xF4688BCF) - 2808) ^ 0xDD) * (v5 != 0)) ^ v4)))(v9);
}

uint64_t sub_1E34A6CDC@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v12 = (((&a3 | 0xC87FE277) - &a3 + (&a3 & 0x37801D88)) ^ 0xE483530C) * a1;
  a5 = v7;
  a3 = &a2;
  a6 = (((v11 + 3518) ^ 0xCB47733D) + v9) ^ v12;
  a7 = -1683109072 - v12;
  a4 = (v11 - 5048) ^ v12;
  v13 = (*(v8 + 8 * (v11 + 3628)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == v10 + 3956) * (v11 ^ 0x187C)) ^ v11)))(v13);
}

void sub_1E34A6DE0()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x1E34A6E0CLL);
}

uint64_t sub_1E34A6EB0@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 3203));

  return v3(v1);
}

uint64_t sub_1E34A6FA8@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X6>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x210] = a6;
  v66 = *(a6 + 24);
  LODWORD(STACK[0x220]) = a2;
  STACK[0x200] = a2 ^ 0x9DFEFFEEFDFFF39FLL;
  v67 = (v65 ^ a1) < (((a7 ^ 0x32D8) - 2744) | 4u) - 6086;
  v68 = *(a4 + 8 * ((v67 | (4 * v67)) ^ a7 ^ 0x32D8));
  STACK[0x3D0] = v66;
  return v68(a65, ((2 * a2) & 0x1FBFFE73ELL) + (a2 ^ 0x9DFEFFEEFDFFF39FLL) + 0x6201001102000C61, a3, 0x61459D2AF01F24F7, a5, 1280, -2);
}

void sub_1E34A709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 ^ 0xB7B;
  (*(a4 + 8 * (v4 ^ 0x2B7A)))();
  v7 = STACK[0x3E8];
  *(v5 + 24) = 0;
  (*(v7 + 8 * (v6 ^ 0x2001)))(v5);
  JUMPOUT(0x1E346B0E8);
}

uint64_t sub_1E34A715C()
{
  LOWORD(STACK[0x8D6]) = v2;
  LODWORD(STACK[0x2D0]) = v2;
  return (*(STACK[0x330] + 8 * (v1 - 5235)))();
}

uint64_t sub_1E34A7178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 1603139409 - 2 * (&a14 & 0x5F8DF751)) ^ 0xEF8E6F27) + 8154;
  v17 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((3661 * (a15 == 16257999)) ^ 0x15EAu)))(v17);
}

uint64_t sub_1E34A7284()
{
  v2 = (*(v1 + 8 * (v0 + 1573)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x4E0] = v2;
  return (*(v3 + 8 * ((((v0 - 1024360319) & 0x3D0E75F7 ^ 0x8DB ^ ((v0 - 698) | 0x100)) * (v2 != 0)) ^ v0)))();
}

void MaYVT0G(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v7 || a6 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E34A7380@<X0>(uint64_t a1@<X8>)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t sub_1E34A75C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v6 - 224) = (v5 - 2140796422) ^ (914963389 * ((((v6 - 232) | 0x7F3CA9F7) - (v6 - 232) + ((v6 - 232) & 0x80C35608)) ^ 0x53C0188C));
  v7 = (*(a4 + 8 * (v5 ^ 0x249E)))(v6 - 232);
  v8 = STACK[0x3E8];
  v9 = *(STACK[0x6C0] + 8);
  STACK[0x6B8] = *(STACK[0x3E8] + 8 * v5);
  return (*(v8 + 8 * (((v9 != 0) * (((((v5 + 4812) | 0xA80) ^ 0x1F83) + 4958) ^ 0x144C)) ^ ((v5 + 4812) | 0xA80))))(v7);
}

void sub_1E34A7678()
{
  v2 = *(STACK[0x800] + 20);
  if (v2)
  {
    if (v2 == 1)
    {
      (*(v1 + 8 * (v0 ^ 0x324B)))(STACK[0x4E8], 0, 32);
      JUMPOUT(0x1E34A76C8);
    }

    sub_1E33CF50C();
  }

  else
  {
    STACK[0x498] = *(v1 + 8 * (v0 - 5775));
    sub_1E33DD698();
  }
}

uint64_t sub_1E34A7748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x7F8];
  STACK[0x5C0] = STACK[0x7F8];
  v7 = *(STACK[0x4D0] + 100);
  v8 = STACK[0x440];
  v9 = v4 + 2439 + (*(STACK[0x4D0] + 120) ^ 0x3BF2FDFE) + ((2 * *(STACK[0x4D0] + 120)) & 0x77E5FBFC) - 679501093;
  v10 = 236591001 * (((v4 ^ 0x18B1DEF7 ^ LODWORD(STACK[0x6DC])) - 414307369) ^ ((LODWORD(STACK[0x6DC]) ^ 0x5D502825) - 1565534245) ^ ((LODWORD(STACK[0x6DC]) ^ 0x4E24655F) - 1311008095)) + 179962559;
  v11 = 1358806181 * ((2 * ((v5 - 232) & 0x6C88B710) - (v5 - 232) + 326584558) ^ 0x2C58246D);
  *(v5 - 208) = STACK[0x4D0] + 104;
  *(v5 - 216) = v11 - 1498995465;
  *(v5 - 200) = v11 + v4 - 310;
  *(v5 - 196) = v9 ^ v11;
  *(v5 - 224) = v8;
  *(v5 - 192) = v10 ^ v11;
  *(v5 - 188) = v11 + 1334444757 * v7 + 206659825;
  *(v5 - 184) = v6;
  *(v5 - 176) = v6;
  v12 = (*(a4 + 8 * (v4 ^ 0x2F3D)))(v5 - 232);
  return (*(STACK[0x3E8] + 8 * ((340 * (*(v5 - 232) == 16257999)) ^ v4)))(v12);
}

void TRKYieUV6ptjZFoDvz()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF432D0) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF432D0) ^ 0xDF))] ^ 0xE9]) - 88);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + v1) ^ 0xDF)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * ((dword_1ECF432C0 + v1) ^ 0xDF))] ^ 0x21]) + 72);
  v3 = (*v2 - v1) ^ &v5;
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[1] = 1934676430 - 33731311 * (v6 ^ 0x39F6CA23);
  LODWORD(v2) = 2054362027 * ((*v2 - *(v0 - 4)) ^ 0x3EF64BDF);
  v4 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF432D0) ^ 0xDF)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * ((dword_1ECF432C0 - dword_1ECF432D0) ^ 0xDF))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (*(off_1F5DB16B8 + (*(off_1F5DB1D28 + v2 - 8) ^ 0xBFu) - 8) ^ v2) + 75264])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E34A7E48@<X0>(int a1@<W8>)
{
  v1 = (((*(STACK[0x6B0] + 116) ^ 0x5CC190D0) + ((2 * a1) ^ 0xA33E7F08)) ^ ((*(STACK[0x6B0] + 116) ^ 0x5689D319) - 1451873049) ^ ((*(STACK[0x6B0] + 116) ^ 0x18DDA9A) - 26073754)) + 711842995;
  v2 = (v1 ^ 0xF407BA28) & (2 * (v1 & 0xE157BCA1)) ^ v1 & 0xE157BCA1;
  v3 = ((2 * (v1 ^ 0x7605FB28)) ^ 0x2EA48F12) & (v1 ^ 0x7605FB28) ^ (2 * (v1 ^ 0x7605FB28)) & 0x97524788;
  v4 = v3 ^ 0x91524089;
  v5 = (v3 ^ 0x6000700) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x5D491E24) & v4 ^ (4 * v4) & 0x97524788;
  v7 = (v6 ^ 0x15400600) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x82124189)) ^ 0x75247890) & (v6 ^ 0x82124189) ^ (16 * (v6 ^ 0x82124189)) & 0x97524780;
  v9 = v7 ^ 0x97524789 ^ (v8 ^ 0x15004000) & (v7 << 8);
  *(STACK[0x6B0] + 116) = v1 ^ (2 * ((v9 << 16) & 0x17520000 ^ v9 ^ ((v9 << 16) ^ 0x47890000) & (((v8 ^ 0x82520709) << 8) & 0x17520000 ^ 0x5100000 ^ (((v8 ^ 0x82520709) << 8) ^ 0x52470000) & (v8 ^ 0x82520709)))) ^ 0xCA36AAE0;
  return sub_1E34A8004();
}

uint64_t sub_1E34A8004()
{
  v2 = STACK[0x868];
  v3 = STACK[0x728];
  v4 = &STACK[0xA30] + STACK[0x728];
  STACK[0x700] = v4;
  v5 = v4 + 16;
  STACK[0x5F0] = (v4 + 16);
  STACK[0x7A0] = (v4 + 48);
  STACK[0x728] = v3 - 5089 + 1723 * (v0 ^ 0x2025u);
  (*(v1 + 8 * (v0 + 1370)))();
  v6 = (*(STACK[0x330] + 8 * (v0 + 1370)))(v5, 0, 32);
  v7 = STACK[0x330];
  STACK[0x3E8] = 0;
  STACK[0x7F0] = 0;
  LODWORD(STACK[0x82C]) = 197499219;
  STACK[0x430] = 0;
  LODWORD(STACK[0x828]) = 0;
  STACK[0x4B8] = v2;
  return (*(v7 + 8 * (((v2 == 0) * (((v0 - 8230) | 0x282) ^ 0x2F4)) ^ v0)))(v6);
}

uint64_t sub_1E34A80D4()
{
  v2 = *STACK[0x4B0];
  STACK[0x858] = 0;
  STACK[0x540] = 0;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x2309) + 1748)) ^ v0)))();
}

uint64_t sub_1E34A8188@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  LODWORD(STACK[0x90C]) = a1;
  v57 = (a1 ^ 0xBC59953u) + STACK[0x270];
  STACK[0x910] = v57;
  return (*(v56 + 8 * ((a56 + 6368) ^ (30 * (v57 > a19)))))();
}

uint64_t sub_1E34A8234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (*(v67 + 8 * (v65 ^ 0x2004)))(LODWORD(STACK[0x80C]) ^ 0xBC59953u, 0x100004077774924);
  STACK[0x9C8] = v68;
  if (v68)
  {
    a51 = v66;
  }

  LODWORD(STACK[0x9D4]) = a51;
  return (*(a65 + 8 * (((v68 != 0) * ((v65 ^ 0x23B) - 1940)) | v65)))();
}

uint64_t sub_1E34A82A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 != 0) * ((42 * (v3 ^ 0x1E5D)) ^ 0x811)) ^ (v3 - 4223))))();
}

uint64_t sub_1E34A82EC()
{
  STACK[0xA18] = v1;
  v3 = STACK[0x590];
  STACK[0xA20] = STACK[0x590];
  return (*(v2 + 8 * ((54 * (((v1 - v3 > (v0 ^ 0x27Bu) - 416) ^ (v0 - 1)) & 1)) ^ v0)))();
}

uint64_t sub_1E34A8448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x78C]) = v4 - v5 + 26;
  v7 = (*(a4 + 8 * (v6 + 3198)))();
  v8 = STACK[0x3E8];
  STACK[0x828] = v7;
  return (*(v8 + 8 * ((29 * (((v7 == 0) ^ (-77 * (((v6 - 31) | 0x60) ^ 0x67) + 1)) & 1)) ^ v6)))();
}

uint64_t sub_1E34A84E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF4B6 ^ ((v4 ^ 0xE0u) + 716)) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((224 * ((v2 & 0xFFFFFFF8) - 8 != v3)) ^ v4 ^ 0xE0)))();
}

void NuRl2rYpg6zLtnsguhi3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + (*(off_1F5DB1800 + (*(off_1F5DB19C8 + (-85 * (dword_1ECF433E0 ^ 0xDF ^ dword_1ECF432C0)) - 12) ^ 0xB1u) - 12) ^ (-85 * (dword_1ECF433E0 ^ 0xDF ^ dword_1ECF432C0))) + 203);
  v1 = *(v0 - 4);
  v2 = *(&off_1F5DB1610 + (*(off_1F5DB1CB0 + (*(off_1F5DB1C08 + (-85 * ((dword_1ECF432C0 + v1) ^ 0xDF)) - 4) ^ 0xADu) - 12) ^ (-85 * ((dword_1ECF432C0 + v1) ^ 0xDF))) + 199);
  v3 = &v5[*v2 ^ v1];
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((184128274 - (v6 | 0xAF99312) + (v6 | 0xF5066CED)) ^ 0xC71D377D);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_1F5DB1610 + ((-85 * (dword_1ECF433E0 ^ 0xDF ^ dword_1ECF432C0)) ^ byte_1E42FD730[byte_1E4316CE0[(-85 * (dword_1ECF433E0 ^ 0xDF ^ dword_1ECF432C0))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (*(off_1F5DB16B8 + (*(off_1F5DB1D28 + v2 - 8) ^ 0x67u) - 8) ^ v2) + 76624])(v6);
  __asm { BRAA            X8, X17 }
}

void sub_1E34A876C(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1E34A5650);
}

uint64_t sub_1E34A8838()
{
  *(v2 - 228) = v1 - 33731311 * ((((v2 - 232) | 0x614E82E0) - ((v2 - 232) & 0x614E82E0)) ^ 0x58B848C3) + 1934673796;
  v5 = v0;
  v3 = (*(v0 + 8 * (v1 ^ 0x2FDD)))(v2 - 232);
  return (*(v5 + 8 * (((*(v2 - 232) == 16257999) * (v1 - 2202)) | v1)))(v3);
}

uint64_t sub_1E34A8F70()
{
  v2 = STACK[0x438];
  LODWORD(STACK[0x68C]) = STACK[0x7CC];
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 4184) ^ (v0 - 4211))) ^ v0)))();
}

void sub_1E34A9040(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = 2008441969 * ((a1 & 0xB41CF87E | ~(a1 | 0xB41CF87E)) ^ 0x37A538F);
  v2 = *(a1 + 28) ^ v1;
  v3 = *(a1 + 32);
  v4 = ((((*(a1 + 24) - v1) ^ 0x1151993F) - 290560319) ^ (((*(a1 + 24) - v1) ^ 0xC28C3A17) + 1030997481) ^ (((*(a1 + 24) - v1) ^ 0xEAC39360) + 356281504)) - 1539757407;
  v5 = 2008441969 * ((2 * (&v9 & 0x2FBB62E8) - &v9 - 800809705) ^ 0x98DDC919);
  v9 = v5 - 235825323 * (*(a1 + 8) ^ v1) + 118679478;
  v13 = &v8;
  v10 = v3;
  v11 = &v7;
  v12 = v4 ^ v5;
  v14 = v2 - v5 + 2761;
  v6 = *(&off_1F5DB1610 + v2 - 5360) - 8;
  (*&v6[8 * v2 + 32560])(&v9);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E34A92A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (((*(v5 + 16) ^ 0x4E50E979) + 614863233) ^ ((*(v5 + 16) ^ 0xEE517093) - 2069395349) ^ ((*(v5 + 16) ^ 0x5FFE6615) + 889757421)) - 156278046;
  v8 = (((v6 - 5304) | 0x821) ^ 0x8BB86590) + v4 > v7;
  v9 = (v4 > 0x74479616) ^ (v7 < 0x8BB869E9);
  v10 = v8;
  if (v9)
  {
    v11 = v4 > 0x74479616;
  }

  else
  {
    v11 = v10;
  }

  return (*(a4 + 8 * (v11 | (4 * v11) | v6)))();
}

uint64_t sub_1E34A9378(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  v4 = (*(v3 + 8 * (v2 + 3717)))(16, 0x20040A4A59CD2) != 0;
  return (*(STACK[0x330] + 8 * ((v4 * (((v2 - 4121) | 0x18DA) ^ 0x1FED)) ^ v2)))();
}

void RpUSQN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || a5 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1E34A94D4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x161u)))(32, 0x103004054B5FA7DLL);
  STACK[0x7B0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x3308) - 6072)) ^ v0)))();
}

uint64_t sub_1E34A9640@<X0>(int a1@<W8>)
{
  v6 = v3 - 1;
  *(v5 + v6) = *(v2 + v6) ^ 0x3C;
  return (*(v4 + 8 * (((v6 != 0) * a1) ^ v1)))();
}

uint64_t sub_1E34AA26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (956911519 * (&a12 ^ 0xEA917005)) ^ 0xA98301D7;
  v14 = (*(v13 + 77112))(&a12);
  return (*(v13 + 8 * ((46 * (a12 == 538291946)) ^ 0xFCFu)))(v14);
}

uint64_t sub_1E34AA64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = ((((&a15 | 0x116EE940) ^ 0xFFFFFFFE) - (~&a15 | 0xEE9116BF)) ^ 0xB6F8C5DD) * v21;
  a19 = 1032869496 - v23;
  a20 = v23 + v22 + 1674577821;
  a16 = v23 + 1723283275;
  a17 = a13;
  a18 = &a10;
  v24 = (*(v20 + 8 * (v22 + 8315)))(&a15);
  return (*(v20 + 8 * (v22 | (16 * (a15 != ((v22 - 1998583382) & 0x771FF9DB) + ((v22 + 915) | 0x346) + 16252758)))))(v24);
}

void sub_1E34AA720(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 956911519 * ((2 * (a1 & 0x98084BF6) - a1 + 1744286729) ^ 0x8D66C40C);
  v4 = 552;
  v6 = 25885 * (((&v5 ^ 0xF2B3 | 0x38E2) - (&v5 ^ 0xF2B3 | 0xC71D) - 14563) ^ 0xE602) + 12303;
  v5 = &v3;
  v7 = v1 + 869295389 * (((&v5 ^ 0x2818F2B3 | 0xF05438E2) - (&v5 ^ 0x2818F2B3 | 0xFABC71D) + 262915869) ^ 0x6918E602) - 8515;
  v2 = *(&off_1F5DB1610 + (v1 ^ 0x2419)) - 8;
  (*&v2[8 * (v1 ^ 0xEA)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E34AA944@<X0>(uint64_t a1@<X8>)
{
  v5 = _byteswap_ulong(*(((2 * (v1 + 6)) & 0x3D9FF3FBFFF61F5ELL) + ((v1 + 6) ^ 0x5ECFF9FDFFFB0FAFLL) + a1 - 0x5ECFF9FDFFFB0FAFLL));
  v6 = ((v5 + 197499219 - 2 * (v5 & 0xBC5995F ^ *(((2 * (v1 + 6)) & 0x3D9FF3FBFFF61F5ELL) + ((v1 + 6) ^ 0x5ECFF9FDFFFB0FAFLL) + a1 - 0x5ECFF9FDFFFB0FACLL) & 0xC)) ^ 0xBC59953) + v1 + 10 > v2;
  return (*(v4 + 8 * (((16 * v6) | (v6 << 6)) ^ v3)))();
}

uint64_t sub_1E34AAA20@<X0>(uint64_t a1@<X8>)
{
  *v4 = v2;
  *(v2 + 8) = *(a1 + 8);
  *(a1 + 8) = v2;
  return (*(v6 + 8 * (((((439 * ((v3 - 2039) ^ 0x35B) - 72) | 0x48) ^ 0x2D95) * (v5 == 16257999)) ^ (v3 - 2039))))();
}

uint64_t sub_1E34AAB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = LOWORD(STACK[0x8CC]);
  if (v8 == 17168)
  {
    goto LABEL_4;
  }

  if (v8 == 33980)
  {
    v10 = STACK[0x7E8];
    STACK[0x3F0] = v4;
    LODWORD(STACK[0x7F4]) = a3;
    return (*(a4 + 8 * (((v10 + v5 != 0) * (v7 - 5206)) ^ (v7 - 498))))();
  }

  v9 = v7;
  if (v8 == 20706)
  {
LABEL_4:
    STACK[0x3F0] = v4;
    v6 = 16215638;
    v9 = v7;
  }

  *STACK[0x820] = 0;
  LODWORD(STACK[0x7F4]) = 197499219;
  return (*(a4 + 8 * (((((v9 - 4741) ^ 0x1585) + ((v9 - 4741) | 0x400) - 6632) * (v6 == 16257999)) ^ (v9 - 2471))))();
}

uint64_t sub_1E34AB5C4()
{
  STACK[0x958] = v1;
  v3 = STACK[0x700];
  STACK[0x960] = STACK[0x700];
  return (*(v2 + 8 * (((v1 - v3 > ((v0 ^ 0x2A34u) - 5682) - 2625) * (v0 ^ 0xE47)) ^ v0 ^ 0x2A34)))();
}

uint64_t sub_1E34AB630()
{
  STACK[0x948] = v1;
  v3 = STACK[0x6D8];
  STACK[0x950] = STACK[0x6D8];
  return (*(v2 + 8 * (((v1 - v3 > (v0 + 3885) - 5613) * (((v0 - 1444) | 0x48) ^ 0x14B6)) ^ v0)))();
}

uint64_t sub_1E34AB6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((121 * (v6 == (v4 - v2 - 2) - 3483)) ^ (v4 + 1267638684))))();
}

uint64_t sub_1E34AB7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v18 = ((((v17 - 120) | 0xE2C930A7DEE3331BLL) - ((v17 - 120) | 0x1D36CF58211CCCE4) + 0x1D36CF58211CCCE4) ^ 0xB1DB013CBD4A7563) * v16;
  v19 = v18 + v15 + *v10 - (v13 & (2 * *v10));
  *(v17 - 120) = &a10;
  *(v17 - 112) = v19;
  *(v17 - 104) = v14 - v18 + v12;
  v20 = (*(v11 + 8 * (v12 ^ 0x2A12)))(v17 - 120);
  return (*(v11 + 8 * ((8156 * (*(v17 - 100) == 16257999)) ^ v12)))(v20);
}

uint64_t sub_1E34AB870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * (v65 + 6970)))();
  v68 = STACK[0x614];
  STACK[0x640] = (v65 - 1740) + STACK[0x640] - 974;
  return (*(a64 + 8 * ((12675 * (v68 == v64)) ^ (v65 + 1805))))(v67);
}

void sub_1E34AB8C8(uint64_t a1)
{
  v1 = *a1 - 1710126949 * ((a1 & 0x515F7A29 | ~(a1 | 0x515F7A29)) ^ 0x9CBBDE46);
  v2 = *(a1 + 8);
  v3 = *(&off_1F5DB1610 + (v1 ^ 0x2327)) - 8;
  (*&v3[8 * (v1 ^ 0x799)])(*(&off_1F5DB1610 + (v1 ^ 0x22B3)), sub_1E3392394);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1E34ABAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x3E4];
  v5 = (*(a4 + 8 * (LODWORD(STACK[0x3E4]) ^ 0x31C7)))(16, 0x20040A4A59CD2);
  return (*(STACK[0x3E8] + 8 * ((121 * ((v4 ^ (v5 == 0)) & 1)) ^ (v4 - 1333))))();
}

uint64_t sub_1E34ABB6C()
{
  v2 = (*(v1 + 8 * (v0 + 4047)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x470] = v2;
  return (*(v3 + 8 * ((49 * (((v2 == 0) ^ (v0 + 36)) & 1)) ^ v0)))();
}

uint64_t sub_1E34ABBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  HIDWORD(a20) = v53;
  v54 = (*(v52 + 8 * (v51 + 6120)))(&a51, 0);
  (*(v52 + 8 * (v51 + 6063)))(v54);
  v55 = (*(v52 + 8 * (v51 ^ 0x2873)))();
  HIDWORD(a38) = a39 ^ a15;
  return sub_1E34ABCB4(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_1E34ABCB4()
{
  v7 = *(v0 + 4 * (v1 - 1));
  *(v0 + 4 * v1) = (*(v5 + 4 * v4) ^ 0x2DDD12DF) + v4 + ((1664525 * (v7 ^ (v7 >> 30))) ^ *(v0 + 4 * v1));
  v8 = 1710126949 * ((~((v6 - 168) | 0x3FCECA77471D3365) + ((v6 - 168) & 0x3FCECA77471D3365)) ^ 0xA83751518AF9970ALL);
  v9 = v6 - 224;
  *(v9 + 88) = v8 ^ 0x26F;
  *(v9 + 72) = v1 + 1 - v8;
  *(v6 - 160) = v3 - 937004365 - v8 + 13;
  *(v6 - 156) = ((v3 - 937004365) ^ 0x3B9) - v8;
  *(v6 - 168) = (v3 - 937004365) ^ v8;
  *(v6 - 164) = v8;
  *(v6 - 144) = (v3 + 1324639579) ^ v8;
  v10 = (*(v2 + 8 * (v3 + 210)))(v6 - 168);
  return (*(v2 + 8 * *(v6 - 140)))(v10);
}

uint64_t sub_1E34ABDB4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = ((a2 + v4 + 2188) ^ 0xFFFFFFFFFFFFF744) + v3;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((940 * (v6 == 0)) ^ (a2 + v4 + 3501))))();
}

uint64_t sub_1E34ABDF0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA08] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x1F3CD3FB) - 524080123) ^ ((v1 ^ 0x9DE3C384) + 1646017660) ^ ((v1 ^ 0x891A89B9 ^ ((v2 ^ 0x3FFE) - 2739) ^ 0x1563) + 1994749652)) + 197499229;
  v5 = (*(v3 + 8 * ((v2 ^ 0x3FFE) + 1273)))();
  v6 = STACK[0x330];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((19 * (v5 == 0)) ^ v2 ^ 0x3FFE)))();
}

void sub_1E34ABF10()
{
  v3 = ((2 * v1) & 0x3FFDBBDBBB7B3C8ELL) + (v1 ^ 0x1FFEDDEDDDBD9E47) + v0;
  v4 = (*(v3 - 0x1FFEDDEDDDBD9E47) << 56) | (*(v3 + (((v2 - 5278) | 0x965u) ^ 0xE00122122242685FLL)) << 48) | (*(v3 - 0x1FFEDDEDDDBD9E45) << 40) | (*(v3 - 0x1FFEDDEDDDBD9E44) << 32) | (*(v3 - 0x1FFEDDEDDDBD9E43) << 24) | (*(v3 - 0x1FFEDDEDDDBD9E42) << 16) | (*(v3 - 0x1FFEDDEDDDBD9E41) << 8) | *(v3 - 0x1FFEDDEDDDBD9E40);
  STACK[0x7D0] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  JUMPOUT(0x1E34ABFDCLL);
}

uint64_t sub_1E34AC044(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * (((STACK[0x858] == 0) * (2 * (v2 - 2536) - 11190)) ^ v2)))();
}

uint64_t sub_1E34AC0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * ((2 * (&a12 & 0x30F538A0) - &a12 + 1326106462) ^ 0xFF095F28) + 8154;
  a12 = &a11;
  v17 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * (((a13 == v16) * ((v15 - 1655664906) ^ 0x9D509B8E)) ^ v15)))(v17);
}

void sub_1E34ADE78(uint64_t a1)
{
  v1 = *(a1 + 16) + 33731311 * ((-2 - ((a1 | 0x9E6A01AA) + (~a1 | 0x6195FE55))) ^ 0x58633476);
  __asm { BRAA            X10, X17 }
}

void pDCGH0ta()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 - dword_1ECF43428) ^ 0xDF)) ^ byte_1E430EA80[byte_1E4307BA0[(-85 * ((dword_1ECF432C0 - dword_1ECF43428) ^ 0xDF))] ^ 0x2A]) + 163);
  v1 = *(&off_1F5DB1610 + ((-85 * (*v0 ^ dword_1ECF432C0 ^ 0xDF)) ^ byte_1E43079A0[byte_1E42FD430[(-85 * (*v0 ^ dword_1ECF432C0 ^ 0xDF))] ^ 0xEE]) + 85);
  v2 = &v4[*v1 - *v0];
  *v0 = 2054362027 * v2 + 0x1FC86B74B1533AF5;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((v5 + 686639723 - 2 * (v5 & 0x28ED4A6B)) ^ 0x1AF611FB);
  LOBYTE(v1) = -85 * (*v0 ^ 0xDF ^ *v1);
  v3 = *(&off_1F5DB1610 + ((-85 * ((dword_1ECF432C0 + dword_1ECF43428) ^ 0xDF)) ^ byte_1E430E980[byte_1E4307AA0[(-85 * ((dword_1ECF432C0 + dword_1ECF43428) ^ 0xDF))] ^ 1]) + 92) - 8;
  (*&v3[8 * (*(off_1F5DB1800 + (*(off_1F5DB19C8 + v1 - 12) ^ 0xE9u) - 12) ^ v1) + 75936])(v5);
  __asm { BRAA            X8, X17 }
}

void sub_1E34AE208(_DWORD *a1)
{
  v1 = *a1 - 1824088897 * ((-2 - ((~a1 | 0x839EE099) + (a1 | 0x7C611F66))) ^ 0xDBF733FB);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E34AE2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v5);
  return (*(a4 + 8 * (((v6 == 0) * (((v5 + 37) | 0xC6) + ((v5 + 37) | 0xC6) - 735 + 704)) ^ ((v5 + 37) | 0xC6))))();
}

uint64_t sub_1E34AE320@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = ((a2 + v4 + 3584) ^ 0xFFFFFFFFFFFFF1D0) + v3;
  v7 = *(v2 + v6 - 15);
  v8 = *(v2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((5420 * ((v3 & 0xFFFFFFE0) == 32)) ^ (a2 + v4 + 1520))))();
}

uint64_t sub_1E34AE3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v68 - 220) = v66 + (((~(v68 - 232) & 0x3A0B8DA8) - (~(v68 - 232) | 0x3A0B8DA9)) ^ 0x62625ECB) * v65 + 1624351959;
  *(v68 - 232) = v64;
  v70 = (*(v69 + 8 * (v66 ^ 0x2C42)))(v68 - 232);
  return (*(a64 + 8 * (((*(v67 + 32) == (v66 - 444) - 2190) * (v66 ^ 0x991)) ^ (v66 + 2495))))(v70);
}

uint64_t sub_1E34AE548@<X0>(unsigned int a1@<W8>)
{
  v4 = (((*(v1 + 16) ^ 0x95109AD8) + 1894256436) ^ ((*(v1 + 16) ^ 0xAA36D061) + 1338918283) ^ ((*(v1 + 16) ^ 0xC0D9B546) + 622928046)) - 1967799525;
  v5 = (a1 > 0x5B42D2CF) ^ (v4 < 0xA4BD2D30);
  v6 = a1 - 1531111122 + ((v2 - 1178890415) & 0x46447556) > v4;
  if (v5)
  {
    v6 = a1 > 0x5B42D2CF;
  }

  return (*(v3 + 8 * ((61 * !v6) ^ v2)))();
}

void sub_1E34AE6F0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56) + 1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB);
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v4 = 914963389 * ((1049250315 - (v8 | 0x3E8A4A0B) + (v8 | 0xC175B5F4)) ^ 0xED89048F);
  v5 = *(a1 + 36) + 1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB) - v4;
  v6 = -1048309713 * (*(a1 + 8) ^ (1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB)));
  v14 = *(a1 + 24);
  v12 = v3;
  v9 = v2;
  v10 = v3;
  v13 = (v6 + 925357747) ^ v4;
  v11 = v5 + 997465963;
  v8[0] = v1 - v4 + 1631356711;
  v7 = *(&off_1F5DB1610 + v1 - 3097) - 8;
  (*&v7[8 * (v1 ^ 0x2880)])(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E34AE888()
{
  v4 = *(v0 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v7 = STACK[0x6C8];
      STACK[0x5F8] = *(v3 + 8 * (v2 - 2143));
      return (*(v3 + 8 * (((v7 == 0) * (((210 * ((v2 + 6909) ^ 0x2545)) ^ 0xFFFFF466) + 6 * ((v2 + 6909) ^ 0x24F0))) ^ (v2 + 6909))))();
    case 3:
      v6 = *(v0 + 40 * v1 + 16);
      return (*(v3 + 8 * ((250 * (((43 * (v2 ^ 0xA77u) + 0x1A3AF77BE7AB60B8) ^ v6) + ((2 * v6) & 0x3475EEF7CF56D5EELL) != 0x1A3AF77BE7AB6AF7)) ^ (v2 - 254))))();
    case 2:
      return (*(v3 + 8 * (((STACK[0x6C8] != 0) * (((v2 - 673267795) & 0x282137BD) - 435)) ^ (v2 + 3587))))();
    default:
      return (STACK[0x800])();
  }
}

uint64_t sub_1E34AEA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 1117 * (LODWORD(STACK[0x3E4]) ^ 0x1466);
  v5 = STACK[0x86C];
  STACK[0x4E8] = STACK[0x4E8] - 5269 + ((v4 + 1869) | 1u);
  return (*(a4 + 8 * ((6267 * (v5 == ((v4 - 1219358489) & 0x48ADFFFB) + 16250325)) ^ v4)))();
}

uint64_t sub_1E34AEB8C@<X0>(uint64_t a1@<X8>)
{
  v6 = 1710126949 * ((v4 - 232) ^ 0x321B5B90);
  *(v4 - 204) = 101 * ((v4 + 24) ^ 0x90) + 22;
  *(v4 - 208) = v6 + 636535337 + (((v3 ^ 0x2F414975) - 792807797) ^ ((v3 ^ 0x5CA05111) - 1554010385) ^ (((((((8 * v1) ^ 0x10528) + 1917888382) & 0x8DAF5FFE) + 2015652673) ^ v3) - 2015658295));
  *(v4 - 200) = v6 + v1 - 3720;
  *(v4 - 224) = a1;
  *(v4 - 216) = &STACK[0x550];
  v7 = (*(v5 + 8 * (v1 + 1095)))(v4 - 232);
  return (*(STACK[0x330] + 8 * ((26 * (*(v4 - 232) != v2)) ^ v1)))(v7);
}

void sub_1E34AECEC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x65C]) = v2;
  JUMPOUT(0x1E338BAA4);
}

void sub_1E34AEE98(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 2048652491 * ((2 * (a1 & 0x54A06222) - a1 + 727686621) ^ 0x9AEE0AD8);
  v3[1] = v1 - 33731311 * (((v3 | 0xEFE0B918) - (v3 & 0xEFE0B918)) ^ 0xD616733B) + 1934669966;
  v2 = *(&off_1F5DB1610 + v1 - 6185) - 8;
  (*&v2[8 * (v1 ^ 0x3CD7)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1E34AF23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a21 = 1317436891 * (((&a19 ^ 0x402030 | 0xF610124F) + (&a19 ^ 0x50101201 | 0x9EFEDB0)) ^ 0xE053AA46) + 8154;
  a19 = &a12;
  v23 = (*(v21 + 77096))(&a19);
  return (*(v21 + 8 * ((13233 * (a20 == ((v22 + 1199) ^ 0xBB1))) ^ 0x1102u)))(v23);
}

_BYTE *sub_1E34AF368(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

unint64_t sub_1E34AF4E4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t _s6EffectVwet(uint64_t a1, int a2)
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

uint64_t _s6EffectVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_1E34AF594(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1E34AF5F4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1E34AF604(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1E34B2B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34B7F18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 - 104));
  _Unwind_Resume(a1);
}

void sub_1E34B9DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

uint64_t VUIAppDocumentUpdateEventTypeFromStringRepresentation(void *a1, uint64_t *a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"foregroundTTL"])
  {
    v4 = 0;
LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"refreshTTL"])
  {
    v4 = 1;
    goto LABEL_5;
  }

  if ([v3 isEqualToString:@"activeTTL"])
  {
    v5 = 1;
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"purchases"])
  {
    v5 = 1;
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"purchase"])
  {
    v5 = 1;
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"playActivity"])
  {
    v5 = 1;
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"settings"])
  {
    v5 = 1;
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"upNext"])
  {
    v5 = 1;
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"upNextLockupArtSettingChanged"])
  {
    v5 = 1;
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"favorites"])
  {
    v5 = 1;
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"favoritesInBackground"])
  {
    v5 = 1;
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"accountChanged"])
  {
    v5 = 1;
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"removeFromPlayHistory"])
  {
    v5 = 1;
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"entitlements"])
  {
    v5 = 1;
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"restrictions"])
  {
    v5 = 1;
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"utsk"])
  {
    v5 = 1;
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"preferredVideoFormat"])
  {
    v5 = 1;
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"postPlay"])
  {
    v5 = 1;
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"appDidBecomeActive"])
  {
    v5 = 1;
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"playHistoryUpdated"])
  {
    v5 = 1;
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"clearPlayHistory"])
  {
    v5 = 1;
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"appRefresh"])
  {
    v5 = 1;
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"locationAuthorizationChanged"])
  {
    v5 = 1;
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"locationRetrieved"])
  {
    v5 = 1;
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"favoritesSyncCompleted"])
  {
    v5 = 1;
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"preferredPlaybackDimensionalityChanged"])
  {
    v5 = 1;
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"brandVisibilityChanged"])
  {
    v5 = 1;
    v4 = 30;
  }

  else
  {
    v5 = [v3 isEqualToString:@"pinnedTabsChanged"];
    v4 = 32;
    if (!v5)
    {
      v4 = 0;
    }
  }

LABEL_6:
  if (a2)
  {
    *a2 = v4;
  }

  return v5;
}

__CFString *VUIAppDocumentUpdateEventStringRepresentationFromEventType(unint64_t a1)
{
  if (a1 > 0x20)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1E872DC78[a1];
  }

  return v2;
}

__CFString *VUIAppDocumentUpdateEventStringRepresentationForDescriptors(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  }

  else
  {
    v2 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = VUIAppDocumentUpdateEventStringRepresentationFromEventType([*(*(&v12 + 1) + 8 * v7) type]);
        [(__CFString *)v2 appendFormat:@"%@, ", v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if (v2)
  {
    v9 = v2;
  }

  else
  {
    v9 = &stru_1F5DB25C0;
  }

  v10 = v9;

  return v9;
}

void sub_1E34BC5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34BE9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34BF9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34C03BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34C0D18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1E34C23A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34C2F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34C3AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34C47C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak((v42 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34C6298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34C707C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1E34C922C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34CB5E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1E34CE944(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1E34CF924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34CFAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34CFC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34CFE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34CFF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34D0118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34D0AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34D11FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E34D1F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 128), 8);
  _Unwind_Resume(a1);
}

id VUIMPSeasonMediaCollectionKind()
{
  if (VUIMPSeasonMediaCollectionKind_onceToken != -1)
  {
    VUIMPSeasonMediaCollectionKind_cold_1();
  }

  v1 = VUIMPSeasonMediaCollectionKind_entityKind;

  return v1;
}

void __VUIMPSeasonMediaCollectionKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUIMPSeasonMediaCollectionKind_entityKind;
  VUIMPSeasonMediaCollectionKind_entityKind = v3;

  v12 = VUIMediaCollectionPropertyDescriptors();
  VUIUpdateMPMediaCollectionPropertyDescriptors(v12);
  v5 = [v12 objectForKey:@"identifier"];
  VUIUpdateMPSeasonMediaCollectionIdentifierPropertyDescriptor(v5);
  v6 = [v12 objectForKey:@"title"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB08]];
  [v6 setSourcePropertyNames:v7];

  [v6 setSortAsName:0];
  v8 = [v12 objectForKey:@"storeID"];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB68]];
  [v8 setSourcePropertyNames:v9];

  [v8 setSourceSupportsFiltering:1];
  v10 = VUIMPSeasonMediaCollectionKind_entityKind;
  v11 = [v12 allValues];
  [v10 setPropertyDescriptors:v11];
}

void sub_1E34D70D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34D73C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34D8868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34D92FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a36);
  objc_destroyWeak((v36 - 112));
  _Unwind_Resume(a1);
}

void sub_1E34DA6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id location)
{
  objc_destroyWeak((v52 + 40));
  objc_destroyWeak(&a50);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_sFeatureTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E872E910[a1 - 1];
  }
}

__CFString *VUIMediaLibraryConnectionStateLogString(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E872E9A0[a1];
  }
}

void sub_1E34E1C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34E27A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *VUIMediaCollectionTypeLogString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E872EA60[a1];
  }
}

id VUIMediaCollectionTypesLogString(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) unsignedIntegerValue];
        if (v8 > 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = off_1E872EA60[v8];
        }

        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 componentsJoinedByString:{@", "}];

  return v10;
}

void sub_1E34E7060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34E7248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34E743C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34E7630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34E7CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34E8400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34EC724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34EE3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E34EE77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34EEAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34EEDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34EF61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1E34F0374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34F0778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  _Block_object_dispose((v2 - 120), 8);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1E34F0E50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  _Block_object_dispose((v2 - 136), 8);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1E34F2488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_1E34F2834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1E34F2BA4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1E34F2F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34F4104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose((v25 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E34F4548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34F61F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34F6A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34F6BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34F909C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34FB7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E34FC190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E34FD2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_1E34FD898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_1E34FDE68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E3504D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3508D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E350CD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1E350F7A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *VUIMediaEntityAssetControllerStatusLogString(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E872F408[a1];
  }
}

__CFString *VUIMediaEntityPlayedStateLogString(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E872F438[a1];
  }
}

void sub_1E35133E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3515DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3516DEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1E351A05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E351A76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E351AAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E351B1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E351CC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35240F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E3527544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3527C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3528310(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1E3528F7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E3529278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1E3529DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E352A69C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E352A8A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E352ACB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E352BBF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v6 - 128));
  _Unwind_Resume(a1);
}

id VUISidebandSeasonMediaCollectionKind()
{
  if (VUISidebandSeasonMediaCollectionKind_onceToken != -1)
  {
    VUISidebandSeasonMediaCollectionKind_cold_1();
  }

  v1 = VUISidebandSeasonMediaCollectionKind_entityKind;

  return v1;
}

void __VUISidebandSeasonMediaCollectionKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUISidebandSeasonMediaCollectionKind_entityKind;
  VUISidebandSeasonMediaCollectionKind_entityKind = v3;

  v7 = VUIMediaCollectionPropertyDescriptors();
  v5 = VUISidebandSeasonMediaCollectionKind_entityKind;
  v6 = [v7 allValues];
  [v5 setPropertyDescriptors:v6];
}

void sub_1E352E664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E352E814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E352EA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E352EC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E352EDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3535138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  objc_destroyWeak((v43 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v44 - 256), 8);
  _Block_object_dispose((v44 - 208), 8);
  _Block_object_dispose((v44 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1E3535FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VUIPlistSeasonMediaKind()
{
  if (VUIPlistSeasonMediaKind_onceToken != -1)
  {
    VUIPlistSeasonMediaKind_cold_1();
  }

  v1 = VUIPlistSeasonMediaKind_entityKind;

  return v1;
}

void __VUIPlistSeasonMediaKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUIPlistSeasonMediaKind_entityKind;
  VUIPlistSeasonMediaKind_entityKind = v3;

  v7 = VUIMediaCollectionPropertyDescriptors();
  v5 = VUIPlistSeasonMediaKind_entityKind;
  v6 = [v7 allValues];
  [v5 setPropertyDescriptors:v6];
}

void sub_1E3537690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3538F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3539A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E353B840(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1E353BD20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1E353CF40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

void sub_1E353EE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v75 + 48));
  objc_destroyWeak((v74 + 40));
  objc_destroyWeak((v71 + 32));
  objc_destroyWeak((v73 + 32));
  objc_destroyWeak((v72 + 32));
  objc_destroyWeak(&a55);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&a66);
  objc_destroyWeak(&a71);
  objc_destroyWeak(&STACK[0x218]);
  objc_destroyWeak(&STACK[0x240]);
  objc_destroyWeak(&STACK[0x268]);
  objc_destroyWeak(&STACK[0x298]);
  objc_destroyWeak(&STACK[0x2C0]);
  objc_destroyWeak(&STACK[0x2E8]);
  objc_destroyWeak(&STACK[0x318]);
  objc_destroyWeak(&STACK[0x348]);
  objc_destroyWeak(&STACK[0x378]);
  objc_destroyWeak(&STACK[0x400]);
  objc_destroyWeak(&STACK[0x428]);
  objc_destroyWeak(&STACK[0x450]);
  objc_destroyWeak(&STACK[0x480]);
  objc_destroyWeak(&STACK[0x4B0]);
  objc_destroyWeak(&STACK[0x508]);
  objc_destroyWeak(&STACK[0x530]);
  objc_destroyWeak(&STACK[0x560]);
  objc_destroyWeak(&STACK[0x588]);
  objc_destroyWeak(&STACK[0x5B0]);
  objc_destroyWeak(&STACK[0x5E8]);
  objc_destroyWeak(&STACK[0x618]);
  objc_destroyWeak(&STACK[0x640]);
  objc_destroyWeak(&STACK[0x668]);
  objc_destroyWeak(&STACK[0x690]);
  objc_destroyWeak(&STACK[0x698]);
  _Unwind_Resume(a1);
}

void sub_1E353FD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __PlaybackDelayTimeIntervalOverride_block_invoke()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v1 doubleForKey:@"mediaControllerPlaybackDelay"];
  PlaybackDelayTimeIntervalOverride_playbackDelayInterval = v0;
}

id VUIMediaEntityAssetTypeLogString(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (!a1)
  {
    v4 = @"**UNDEFINED**";
LABEL_10:
    [v3 addObject:v4];
    goto LABEL_11;
  }

  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    [v3 addObject:@"NetworkHLS"];
    if ((a1 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  [v2 addObject:@"Local"];
  if ((a1 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((a1 & 4) != 0)
  {
LABEL_9:
    v4 = @"NetworkCRABS";
    goto LABEL_10;
  }

LABEL_11:
  v5 = [v3 componentsJoinedByString:{@", "}];

  return v5;
}

void sub_1E3546FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_1E3547828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3548130(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E3548670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3549F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E354AC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void VideosExtrasLoggingToOSLogging(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = a2;
  if (onceToken != -1)
  {
    VideosExtrasLoggingToOSLogging_cold_1();
  }

  v16 = &a9;
  if (a1 == 3)
  {
    v15 = VideosExtrasLogObject;
    if (os_log_type_enabled(VideosExtrasLogObject, OS_LOG_TYPE_ERROR))
    {
      VideosExtrasLoggingToOSLogging_cold_2(v15, &v16, v10);
    }
  }

  else if (a1 == 6)
  {
    v11 = VideosExtrasLogObject;
    if (os_log_type_enabled(VideosExtrasLogObject, OS_LOG_TYPE_INFO))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = v11;
      v14 = [[v12 alloc] initWithFormat:v10 arguments:v16];
      *buf = 136315138;
      v18 = [v14 UTF8String];
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }
}

void __VideosExtrasLoggingToOSLogging_block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v3 bundleIdentifier];
  v1 = os_log_create([v0 UTF8String], "Extras");
  v2 = VideosExtrasLogObject;
  VideosExtrasLogObject = v1;
}

void sub_1E354DFAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id VUIPlistShowMediaKind()
{
  if (VUIPlistShowMediaKind_onceToken != -1)
  {
    VUIPlistShowMediaKind_cold_1();
  }

  v1 = VUIPlistShowMediaKind_entityKind;

  return v1;
}

void __VUIPlistShowMediaKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUIPlistShowMediaKind_entityKind;
  VUIPlistShowMediaKind_entityKind = v3;

  v7 = VUIMediaCollectionPropertyDescriptors();
  v5 = VUIPlistShowMediaKind_entityKind;
  v6 = [v7 allValues];
  [v5 setPropertyDescriptors:v6];
}

void sub_1E354EF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_1E354F338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void _MPUEnumerateItemsOfCollectionView(void *a1, void *a2, void *a3)
{
  v16 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v16 dataSource];
  v8 = [v7 numberOfSectionsInCollectionView:v16];
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = 0;
    v15 = v5 + 16;
    do
    {
      if (v5)
      {
        (*(v5 + 2))(v5, v10);
      }

      if (v6)
      {
        v11 = [v7 collectionView:v16 numberOfItemsInSection:v10];
        if (v11 >= 1)
        {
          v12 = v11;
          for (i = 0; i != v12; ++i)
          {
            v14 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:{v10, v15}];
            v6[2](v6, v14);
          }
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }
}

void sub_1E3554B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_1E3555A74(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E3555E24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *VUIMediaCategoryTypeLogString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E8730640[a1];
  }
}

id VUIMediaCategoryTypesLogString(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) unsignedIntegerValue];
        if (v8 > 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = off_1E8730640[v8];
        }

        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 componentsJoinedByString:{@", "}];

  return v10;
}

void sub_1E3559084(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1E35594E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E355B1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E355B338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E355BA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E355C2E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1E355C850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E355C9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E355CC74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1E355D008(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E355D920(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E355E0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E355ECA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E35600EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3562610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3563568(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E3565824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3565FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PIPStates()
{
  if (PIPStates_onceToken != -1)
  {
    PIPStates_cold_1();
  }

  v1 = PIPStates__states;

  return v1;
}

void sub_1E3566FFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1E356AEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E356B5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E356CBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E356DD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E356E664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_destroyWeak(va);
  objc_destroyWeak((v7 - 112));
  _Unwind_Resume(a1);
}

void sub_1E356EC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35701E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1E3571E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E357216C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E3573CA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_1E35747D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1E3575230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  objc_destroyWeak((v42 + 72));
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v43 - 144), 8);
  objc_destroyWeak((v43 - 160));
  objc_destroyWeak((v43 - 152));
  _Unwind_Resume(a1);
}

void sub_1E357614C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E357730C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3578808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1E357A868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  objc_destroyWeak((v29 + 48));
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  objc_destroyWeak((v28 + 32));
  _Unwind_Resume(a1);
}

void sub_1E357CEC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 40));
  _Unwind_Resume(a1);
}

void sub_1E3581EF8(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_1E35826A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  _Unwind_Resume(a1);
}

void sub_1E35835CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void __PIPStates_block_invoke()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"Showing main video picture in picture";
  v2[1] = @"Playing background media in picture and picture";
  v2[2] = @"Showing extras video picture in picture outside extras content";
  v2[3] = @"Showing extras video picture in picture on extras content";
  v2[4] = @"Showing multiview playback fullscreen in PIP";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];
  v1 = PIPStates__states;
  PIPStates__states = v0;
}

void sub_1E35919D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3591D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3593DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35971F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3599088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E359A004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E359A5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E359FB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1E35A141C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35A4C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35A6B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35ACA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35B1E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_1E35B21D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E35B24E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E35B34BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  _Block_object_dispose((v2 - 128), 8);
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1E35B4648(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1E35B520C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak((v29 + 56));
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak((v30 - 176));
  objc_destroyWeak((v30 - 168));
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1E35B580C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1E35B6AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

id VUIFamilySharingMediaItemKind()
{
  if (VUIFamilySharingMediaItemKind_onceToken != -1)
  {
    VUIFamilySharingMediaItemKind_cold_1();
  }

  v1 = VUIFamilySharingMediaItemKind_entityKind;

  return v1;
}

void __VUIFamilySharingMediaItemKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUIFamilySharingMediaItemKind_entityKind;
  VUIFamilySharingMediaItemKind_entityKind = v3;

  v7 = VUIMediaItemPropertyDescriptors();
  v5 = VUIFamilySharingMediaItemKind_entityKind;
  v6 = [v7 allValues];
  [v5 setPropertyDescriptors:v6];
}

void sub_1E35BDC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35BE174(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1E35BF534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35C0C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a37);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35C16DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id location)
{
  objc_destroyWeak(&a48);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35C2FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E35C3620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35C3DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35C62AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35C972C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35C9C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void VUIUpdateMPMediaEntityPropertyDescriptors(void *a1)
{
  v1 = a1;
  v46 = [v1 objectForKey:@"identifier"];
  v2 = *MEMORY[0x1E696FA98];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FA98]];
  [v46 setSourcePropertyNames:v3];

  [v46 setRetrievesSourcePropertiesAtFetch:1];
  [v46 setSourceFilterValueBlock:&__block_literal_global_78];
  v45 = [v1 objectForKey:@"type"];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FA88]];
  [v45 setSourcePropertyNames:v4];

  [v45 setRetrievesSourcePropertiesAtFetch:1];
  [v45 setSourceFilterBlock:&__block_literal_global_7_0];
  v44 = [v1 objectForKey:@"isLocal"];
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA38], *MEMORY[0x1E696FA68], 0}];
  [v44 setSourcePropertyNames:v5];

  [v44 setSourceFilterBlock:&__block_literal_global_15];
  v43 = [v1 objectForKey:@"resolution"];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB90]];
  [v43 setSourcePropertyNames:v6];

  [v43 setSourceFilterValueBlock:&__block_literal_global_21];
  v42 = [v1 objectForKey:@"colorCapability"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F960]];
  [v42 setSourcePropertyNames:v7];

  [v42 setSourceFilterValueBlock:&__block_literal_global_28_0];
  v41 = [v1 objectForKey:@"audioCapability"];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F948]];
  [v41 setSourcePropertyNames:v8];

  [v41 setSourceFilterValueBlock:&__block_literal_global_33];
  v40 = [v1 objectForKey:@"HLSResolution"];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F9F0]];
  [v40 setSourcePropertyNames:v9];

  [v40 setSourceFilterValueBlock:&__block_literal_global_38_0];
  v39 = [v1 objectForKey:@"HLSColorCapability"];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F9C8]];
  [v39 setSourcePropertyNames:v10];

  [v39 setSourceFilterValueBlock:&__block_literal_global_43];
  v38 = [v1 objectForKey:@"HLSAudioCapability"];
  v11 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F9C0]];
  [v38 setSourcePropertyNames:v11];

  [v38 setSourceFilterValueBlock:&__block_literal_global_48_0];
  v12 = [v1 objectForKey:@"title"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB88]];
  [v12 setSourcePropertyNames:v13];

  [v12 setRetrievesSourcePropertiesAtFetch:1];
  [v12 setSourceSupportsFiltering:1];
  v37 = [v1 objectForKey:@"sortTitle"];
  v14 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB30]];
  [v37 setSourcePropertyNames:v14];

  [v37 setSourceSupportsFiltering:1];
  v36 = [v1 objectForKey:@"genreTitle"];
  v15 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F9B0]];
  [v36 setSourcePropertyNames:v15];

  [v36 setSourceSupportsFiltering:1];
  v35 = [v1 objectForKey:@"contentDescription"];
  v16 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F980]];
  [v35 setSourcePropertyNames:v16];

  v34 = [v1 objectForKey:@"addedDate"];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F978]];
  [v34 setSourcePropertyNames:v17];

  v33 = [v1 objectForKey:@"releaseDate"];
  v18 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FAD8]];
  [v33 setSourcePropertyNames:v18];

  v19 = [v1 objectForKey:@"releaseYear"];
  v20 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB98]];
  [v19 setSourcePropertyNames:v20];

  v21 = [v1 objectForKey:@"contentRating"];
  v22 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F970]];
  [v21 setSourcePropertyNames:v22];

  v23 = [v1 objectForKey:@"coverArtImageIdentifier"];
  v24 = [MEMORY[0x1E695DFD8] setWithObject:v2];
  [v23 setSourcePropertyNames:v24];

  [v23 setRetrievesSourcePropertiesAtFetch:1];
  v25 = [v1 objectForKey:@"playedState"];
  v26 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA00], *MEMORY[0x1E696FAA0], *MEMORY[0x1E696FAB0], *MEMORY[0x1E696F950], 0}];
  [v25 setSourcePropertyNames:v26];

  v27 = [v1 objectForKey:@"showIdentifier"];
  v28 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F938]];
  [v27 setSourcePropertyNames:v28];

  [v27 setSourceFilterValueBlock:&__block_literal_global_83];
  v29 = [v1 objectForKey:@"showTitle"];
  v30 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB18]];
  [v29 setSourcePropertyNames:v30];

  [v29 setSourceSupportsFiltering:1];
  v31 = [v1 objectForKey:@"seasonNumber"];

  v32 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB10]];
  [v31 setSourcePropertyNames:v32];

  [v31 setSourceSupportsFiltering:1];
}

id __VUIUpdateMPMediaEntityPropertyDescriptors_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E6970608];
  v6 = MEMORY[0x1E6970610];
  v7 = a4;
  v8 = [v5 vui_mediaEntityTypePredicate:v7 comparison:{objc_msgSend(v6, "vui_mediaPropertyPredicateComparisonWithPredicateOperatorType:", a3)}];

  return v8;
}

uint64_t __VUIUpdateMPMediaEntityPropertyDescriptors_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E6970608];
  v6 = [a4 BOOLValue];
  v7 = [MEMORY[0x1E6970610] vui_mediaPropertyPredicateComparisonWithPredicateOperatorType:a3];

  return [v5 vui_isLocalPredicate:v6 comparison:v7];
}

uint64_t __VUIUpdateMPMediaEntityPropertyDescriptors_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 unsignedIntegerValue];

  v6 = [v4 vui_MPMediaItemColorCapabilityFromVUIMediaEntityColorCapability:v5];

  return [v2 numberWithInteger:v6];
}

uint64_t __VUIUpdateMPMediaEntityPropertyDescriptors_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 unsignedIntegerValue];

  v6 = [v4 vui_MPMediaItemColorCapabilityFromVUIMediaEntityColorCapability:v5];

  return [v2 numberWithInteger:v6];
}

uint64_t __VUIUpdateMPMediaEntityPropertyDescriptors_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 unsignedIntegerValue];

  v6 = [v4 vui_MPMediaItemAudioCapabilityFromVUIMediaEntityAudioCapability:v5];

  return [v2 numberWithInteger:v6];
}

uint64_t __VUIUpdateMPMediaEntityPropertyDescriptors_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 unsignedIntegerValue];

  v6 = [v4 vui_MPMediaItemColorCapabilityFromVUIMediaEntityColorCapability:v5];

  return [v2 numberWithInteger:v6];
}

uint64_t __VUIUpdateMPMediaEntityPropertyDescriptors_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 unsignedIntegerValue];

  v6 = [v4 vui_MPMediaItemColorCapabilityFromVUIMediaEntityColorCapability:v5];

  return [v2 numberWithInteger:v6];
}

uint64_t __VUIUpdateMPMediaEntityPropertyDescriptors_block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 unsignedIntegerValue];

  v6 = [v4 vui_MPMediaItemAudioCapabilityFromVUIMediaEntityAudioCapability:v5];

  return [v2 numberWithInteger:v6];
}

void VUIUpdateMPMediaCollectionPropertyDescriptors(void *a1)
{
  v1 = a1;
  VUIUpdateMPMediaEntityPropertyDescriptors(v1);
  v7 = [v1 objectForKey:@"contentDescription"];
  v2 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F958]];
  [v7 setSourcePropertyNames:v2];

  v3 = [v1 objectForKey:@"addedToDate"];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F978]];
  [v3 setSourcePropertyNames:v4];

  v5 = [v1 objectForKey:@"mediaItemCount"];

  v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F920]];
  [v5 setSourcePropertyNames:v6];
}

void VUIUpdateMPSeasonMediaCollectionIdentifierPropertyDescriptor(void *a1)
{
  v1 = a1;
  v2 = +[VUIMPSeasonMediaCollectionIdentifier requiredMPPropertyNames];
  [v1 setSourcePropertyNames:v2];
  [v1 setSourceFilterValueBlock:0];
  [v1 setSourceFilterBlock:&__block_literal_global_99];
}

id __VUIUpdateMPSeasonMediaCollectionIdentifierPropertyDescriptor_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E6970608];
  v6 = MEMORY[0x1E6970610];
  v7 = a4;
  v8 = [v5 vui_seasonIdentifierPredicate:v7 comparison:{objc_msgSend(v6, "vui_mediaPropertyPredicateComparisonWithPredicateOperatorType:", a3)}];

  return v8;
}

void sub_1E35CD8E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

__CFString *SizeClassString(uint64_t a1)
{
  if (SizeClassString_onceToken != -1)
  {
    SizeClassString_cold_1();
  }

  v2 = SizeClassString_sizeClassStrings;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"unspecified";
  }

  v7 = v6;

  return v6;
}

void __SizeClassString_block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F5E5D590;
  v2[1] = &unk_1F5E5D5A8;
  v3[0] = @"compact";
  v3[1] = @"regular";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = SizeClassString_sizeClassStrings;
  SizeClassString_sizeClassStrings = v0;
}

void __UserInterfaceString_block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F5E5D5C0;
  v2[1] = &unk_1F5E5D590;
  v3[0] = @"phone";
  v3[1] = @"pad";
  v2[2] = &unk_1F5E5D5A8;
  v2[3] = &unk_1F5E5D5D8;
  v3[2] = @"tv";
  v3[3] = @"carPlay";
  v2[4] = &unk_1F5E5D5F0;
  v3[4] = @"mac";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = UserInterfaceString_userInterfaceStrings;
  UserInterfaceString_userInterfaceStrings = v0;
}

void sub_1E35CF9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E35CFC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E35D0CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35D155C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35D2734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1E35D395C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1E35D4220(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E35D4DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t isPerfLoggingEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 valueForKey:@"LogLevel"];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __isPerfLoggingEnabled_block_invoke;
  block[3] = &unk_1E872D768;
  v7 = v1;
  v2 = isPerfLoggingEnabled_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&isPerfLoggingEnabled_onceToken, block);
  }

  v4 = isPerfLoggingEnabled_isPerfLoggingEnabled;

  return v4;
}

void __isPerfLoggingEnabled_block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v3 BOOLForKey:@"perfLoggingEnabled"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [*(a1 + 32) isEqualToString:@"LoggingPerf"];
  }

  isPerfLoggingEnabled_isPerfLoggingEnabled = v2;
}

void sub_1E35D8614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35D889C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1E35D8C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18 + 7);
  objc_destroyWeak(v18 + 6);
  objc_destroyWeak(v18 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 64));
  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

void sub_1E35D8FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_1E35D9174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_1E35D9CD0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1E35DCA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E35DDD7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E35DE640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35DF900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35E1018(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1E35E7608(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1E35E798C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E35E7DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E35E84D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E35E9CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E35EECB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

__CFString *VUIMediaLibraryTypeLogString(uint64_t a1)
{
  v1 = @"Home Share";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Device";
  }
}

void sub_1E35F197C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35F34B4(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x240]);
  objc_destroyWeak(&STACK[0x260]);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2C8], 8);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Block_object_dispose(&STACK[0x368], 8);
  _Block_object_dispose(&STACK[0x398], 8);
  _Block_object_dispose(&STACK[0x3B8], 8);
  _Block_object_dispose(&STACK[0x3D8], 8);
  _Block_object_dispose(&STACK[0x418], 8);
  _Block_object_dispose(&STACK[0x448], 8);
  _Block_object_dispose(&STACK[0x478], 8);
  _Block_object_dispose(&STACK[0x4A8], 8);
  _Block_object_dispose(&STACK[0x4C8], 8);
  _Unwind_Resume(a1);
}

void sub_1E35F6474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id location, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_1E35F695C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E35F8E0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 136));
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E35FA2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E35FAFB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1E35FD5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1E35FDCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E360348C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3603F84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1E36049E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

__CFString *VUIMediaEntitySubtypeLogString(uint64_t a1)
{
  v1 = @"Collection";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Item";
  }
}

void VUIHTMLMarkupParserStartDocument(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidStartDocument:v1];
}

void VUIHTMLMarkupParserEndDocument(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidEndDocument:v1];
}

void VUIHTMLMarkupParserStartElement(void *a1, const xmlChar *a2)
{
  v4 = a1;
  v5 = 0;
  v3 = [v4 delegate];
  if (TryTextElementFromName(a2, &v5))
  {
    [v3 parser:v4 didStartElement:v5];
  }
}

void VUIHTMLMarkupParserEndElement(void *a1, const xmlChar *a2)
{
  v4 = a1;
  v3 = [v4 delegate];
  if (xmlStrEqual(a2, "br"))
  {
    [v3 parserDidFindNewline:v4];
  }

  else
  {
    v5 = 0;
    if (TryTextElementFromName(a2, &v5))
    {
      [v3 parser:v4 didEndElement:v5];
    }
  }
}

void VUIHTMLMarkupParserCharacters(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (a2)
  {
    v8 = v5;
    if (a3)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
      v5 = v8;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = &stru_1F5DB25C0;
    }

    v7 = [v8 delegate];
    [v7 parser:v8 didFindCharacters:v6];

    v5 = v8;
  }

LABEL_7:
}

void VUIHTMLMarkupParserError(void *a1)
{
  v3 = a1;
  LastError = xmlCtxtGetLastError([v3 _parserContext]);
  if (LastError)
  {
    v2 = LastError;
    [v3 reportParseError:LastError];
    if (v2->level == XML_ERR_FATAL)
    {
      xmlStopParser([v3 _parserContext]);
    }
  }
}

uint64_t TryTextElementFromName(const xmlChar *a1, uint64_t *a2)
{
  if (xmlStrEqual(a1, "b") || xmlStrEqual(a1, "em"))
  {
    v4 = 0;
LABEL_4:
    *a2 = v4;
    return 1;
  }

  result = xmlStrEqual(a1, "i");
  if (result)
  {
    v4 = 1;
    goto LABEL_4;
  }

  return result;
}

void sub_1E3609CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E360A1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1E360A500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E360B7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E360C964(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1E360D470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E360DEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E360F6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3611240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3611380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3611CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36124F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1E3612A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3612BE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E361310C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1E361443C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1E36150A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *VUIMediaLibraryFetchReasonLogString(uint64_t a1)
{
  v1 = @"ContentsChange";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Manual";
  }
}

void sub_1E361A4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E361BDC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E361FA1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [NSURL(VideosUI) vui_URLByAddingQueryParamWithName:value:];
    }

    objc_end_catch();
    JUMPOUT(0x1E361F9DCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E361FDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NSURL(VideosUI) vui_URLByAddingQueryParamWithName:value:];
    }

    objc_end_catch();
    JUMPOUT(0x1E361FD70);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E3620B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *VUIAccountMessageVisibiltyTypeString(uint64_t a1)
{
  if (a1)
  {
    return @"highVisibility";
  }

  else
  {
    return @"passiveVisibility";
  }
}

uint64_t VUIAccountMessageVisibilityTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"passiveVisibility"])
  {
    v2 = 0;
  }

  else
  {
    [v1 isEqualToString:@"highVisibility"];
    v2 = 1;
  }

  return v2;
}

void sub_1E362606C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E362CA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21, id a22)
{
  objc_destroyWeak(v22 + 6);
  objc_destroyWeak(v22 + 5);
  objc_destroyWeak(v22 + 4);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_1E362D04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E362DEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3631CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3632168(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1E3632D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E363339C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1E3634908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 168));
  _Unwind_Resume(a1);
}

void sub_1E3636320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&a30);
  objc_destroyWeak((v31 - 112));
  _Unwind_Resume(a1);
}

void sub_1E3638B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  objc_sync_exit(v24);
  objc_destroyWeak((v25 + 48));
  _Block_object_dispose(&a24, 8);
  objc_destroyWeak((v26 - 88));
  _Unwind_Resume(a1);
}

void sub_1E3639150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VUIMediaItemPropertyDescriptors()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = VUIMediaEntityPropertyDescriptors();
  [v0 addEntriesFromDictionary:v25];
  v24 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v24 setName:@"assetType"];
  [(VUIMediaEntityPropertyDescriptor *)v24 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v24, v0);
  v23 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v23 setName:@"isPlayable"];
  [(VUIMediaEntityPropertyDescriptor *)v23 setPropertyType:0];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v23, v0);
  v22 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v22 setName:@"duration"];
  [(VUIMediaEntityPropertyDescriptor *)v22 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v22, v0);
  v21 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v21 setName:@"previewFrameImageIdentifier"];
  [(VUIMediaEntityPropertyDescriptor *)v21 setPropertyType:4];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v21, v0);
  v20 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v20 setName:@"extrasURL"];
  [(VUIMediaEntityPropertyDescriptor *)v20 setPropertyType:5];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v20, v0);
  v19 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v19 setName:@"seasonTitle"];
  [(VUIMediaEntityPropertyDescriptor *)v19 setPropertyType:4];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v19, v0);
  v18 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v18 setName:@"seasonIdentifier"];
  [(VUIMediaEntityPropertyDescriptor *)v18 setPropertyType:6];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v18, v0);
  v17 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v17 setName:@"episodeNumber"];
  [(VUIMediaEntityPropertyDescriptor *)v17 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v17, v0);
  v16 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v16 setName:@"fractionalEpisodeNumber"];
  [(VUIMediaEntityPropertyDescriptor *)v16 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v16, v0);
  v15 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v15 setName:@"episodeIndexInSeries"];
  [(VUIMediaEntityPropertyDescriptor *)v15 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v15, v0);
  v14 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v14 setName:@"rentalExpirationDate"];
  [(VUIMediaEntityPropertyDescriptor *)v14 setPropertyType:2];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v14, v0);
  v13 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v13 setName:@"rentalPlaybackDuration"];
  [(VUIMediaEntityPropertyDescriptor *)v13 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v13, v0);
  v1 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v1 setName:@"studio"];
  [(VUIMediaEntityPropertyDescriptor *)v1 setPropertyType:4];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v1, v0);
  v2 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v2 setName:@"credits"];
  [(VUIMediaEntityPropertyDescriptor *)v2 setPropertyType:6];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(VUIMediaEntityPropertyDescriptor *)v2 setPropertyValueClassName:v4];

  VUIAddMediaEntityPropertyDescriptorToDictionary(v2, v0);
  v5 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v5 setName:@"hasBeenPlayed"];
  [(VUIMediaEntityPropertyDescriptor *)v5 setPropertyType:0];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v5, v0);
  v6 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v6 setName:@"playCount"];
  [(VUIMediaEntityPropertyDescriptor *)v6 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v6, v0);
  v7 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v7 setName:@"bookmark"];
  [(VUIMediaEntityPropertyDescriptor *)v7 setPropertyType:3];
  [(VUIMediaEntityPropertyDescriptor *)v7 setAllowsDefaultValue:1];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v7, v0);
  v8 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v8 setName:@"downloadExpirationDate"];
  [(VUIMediaEntityPropertyDescriptor *)v8 setPropertyType:2];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v8, v0);
  v9 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v9 setName:@"availabilityEndDate"];
  [(VUIMediaEntityPropertyDescriptor *)v9 setPropertyType:2];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v9, v0);
  v10 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v10 setName:@"allowsManualDownloadRenewal"];
  [(VUIMediaEntityPropertyDescriptor *)v10 setPropertyType:0];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v10, v0);
  v11 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v11 setName:@"renewsOfflineKeysAutomatically"];
  [(VUIMediaEntityPropertyDescriptor *)v11 setPropertyType:0];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v11, v0);

  return v0;
}

void sub_1E363D3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CFStringRef VUICFListFormatterCreateStringByStyleJoiningStrings(const __CFAllocator *a1, __CFListFormatter *a2, NSString *a3, const __CFArray *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  p_isa = a3;
  if (a4)
  {
    Count = CFArrayGetCount(a4);
    v8 = Count;
    if (Count)
    {
      v39 = p_isa;
      v37 = *(a2 + 2);
      v9 = malloc_type_malloc(8 * Count, 0x10040436913F5uLL);
      v10 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
      v40 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
          Length = CFStringGetLength(ValueAtIndex);
          CharactersPtr = CFStringGetCharactersPtr(ValueAtIndex);
          if (!CharactersPtr)
          {
            CharactersPtr = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
            v46.location = 0;
            v46.length = Length;
            CFStringGetCharacters(ValueAtIndex, v46, CharactersPtr);
            v40[i] = 1;
          }

          v10[i] = Length;
          v9[i] = CharactersPtr;
        }
      }

      v42 = 0;
      v15 = MEMORY[0x1E69126E0](v37);
      CStringPtr = CFStringGetCStringPtr(v15, 0x600u);
      if (!CStringPtr)
      {
        if (CFStringGetCString(v15, buffer, 256, 0x600u))
        {
          CStringPtr = buffer;
        }

        else
        {
          CStringPtr = 0;
        }
      }

      if ([(__CFString *)v39 isEqualToString:@"unit-short", v37]&& *CStringPtr == 97 && CStringPtr[1] == 114)
      {

        v39 = @"unit";
        v17 = 1;
        v18 = @"unit";
      }

      else
      {
        v17 = 0;
        v20 = v39;
      }

      v21 = [(__CFString *)v39 UTF8String];
      if (strcmp(v21, "unit") && strcmp(v21, "unit-short") && strcmp(v21, "unit-narrow") && strcmp(v21, "standard") && strcmp(v21, "standard-short") && strcmp(v21, "standard-narrow") && (*v21 != 111 || *(v21 + 1) != 114 || *(v21 + 2)) && strcmp(v21, "or-short"))
      {
        strcmp(v21, "or-narrow");
      }

      v22 = ulistfmt_openForType();
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___Z51VUICFListFormatterCreateStringByStyleJoiningStringsPK13__CFAllocatorP17__CFListFormatterP8NSStringPK9__CFArray_block_invoke;
      aBlock[3] = &__block_descriptor_72_e5_v8__0l;
      aBlock[4] = v22;
      aBlock[5] = v8;
      aBlock[6] = v9;
      aBlock[7] = v40;
      aBlock[8] = v10;
      v23 = _Block_copy(aBlock);
      v24 = v23;
      if (v42 < 1)
      {
        v42 = 0;
        v25 = ulistfmt_format();
        if (v42 <= 0)
        {
          if (v25 > 0)
          {
            v26 = v17;
          }

          else
          {
            v26 = 0;
          }

          if (v26)
          {
            v27 = 0;
            v28 = __dst;
            while (*v28 != 1608)
            {
              ++v27;
              ++v28;
              if (v25 == v27)
              {
                goto LABEL_43;
              }
            }

            v29 = v25 - 1;
            memmove(v28, v28 + 1, 2 * (v25 - 1 - v27));
          }

          else
          {
LABEL_43:
            v29 = v25;
          }

          v19 = CFStringCreateWithCharacters(a1, __dst, v29);
        }

        else if (v42 == 15 || v8 < v25)
        {
          v42 = 0;
          v30 = malloc_type_malloc(2 * (v25 + 1), 0x1000040BDFB0063uLL);
          v31 = ulistfmt_format();
          if (v42 <= 0)
          {
            if (v31 > 0)
            {
              v32 = v17;
            }

            else
            {
              v32 = 0;
            }

            if (v32)
            {
              v33 = 0;
              v34 = v30;
              while (*v34 != 1608)
              {
                ++v33;
                ++v34;
                if (v31 == v33)
                {
                  goto LABEL_53;
                }
              }

              v35 = v31 - 1;
              memmove(v34, v34 + 1, 2 * (v31 - 1 - v33));
            }

            else
            {
LABEL_53:
              v35 = v31;
            }

            v19 = CFStringCreateWithCharacters(a1, v30, v35);
          }

          else
          {
            v19 = 0;
          }

          free(v30);
        }

        else
        {
          v19 = 0;
        }

        v24[2](v24);
      }

      else
      {
        v23[2](v23);
        v19 = 0;
      }

      p_isa = &v39->isa;
    }

    else
    {
      v19 = &stru_1F5DB25C0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void ___Z51VUICFListFormatterCreateStringByStyleJoiningStringsPK13__CFAllocatorP17__CFListFormatterP8NSStringPK9__CFArray_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    ulistfmt_close();
  }

  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 48) + 8 * i);
      if (v4 && *(*(a1 + 56) + i) == 1)
      {
        free(v4);
        v2 = *(a1 + 40);
      }
    }
  }

  free(*(a1 + 56));
  free(*(a1 + 48));
  v5 = *(a1 + 64);

  free(v5);
}

void sub_1E3641A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3641F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3642970(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E3642CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_1E3647778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3648560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E364B104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E364C654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E365103C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1E3651550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_1E36532E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v70 + 48));
  objc_destroyWeak((v68 + 56));
  objc_destroyWeak((v67 + 40));
  objc_destroyWeak((v69 + 40));
  objc_destroyWeak(&a61);
  objc_destroyWeak(&a67);
  objc_destroyWeak(&STACK[0x228]);
  objc_destroyWeak(&STACK[0x280]);
  objc_destroyWeak(&STACK[0x2A8]);
  objc_destroyWeak(&STACK[0x2F0]);
  objc_destroyWeak(&STACK[0x328]);
  objc_destroyWeak(&STACK[0x350]);
  objc_destroyWeak(&STACK[0x380]);
  objc_destroyWeak(&STACK[0x3C8]);
  objc_destroyWeak(&STACK[0x3F0]);
  objc_destroyWeak(&STACK[0x418]);
  objc_destroyWeak(&STACK[0x468]);
  objc_destroyWeak(&STACK[0x490]);
  objc_destroyWeak((v71 - 208));
  objc_destroyWeak((v71 - 160));
  objc_destroyWeak((v71 - 120));
  objc_destroyWeak((v71 - 112));
  _Unwind_Resume(a1);
}

void sub_1E36555B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_1E3656DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1E3658D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 56));
  objc_destroyWeak(&a33);
  objc_destroyWeak((v34 - 152));
  _Unwind_Resume(a1);
}

__CFString *VUILibraryCategoryStringFromType(unint64_t a1)
{
  if (a1 > 0xA)
  {
    v3 = @"TRANSLATION NOT PROVIDED";
  }

  else
  {
    v1 = off_1E8734670[a1];
    v2 = +[VUILocalizationManager sharedInstance];
    v3 = [v2 localizedStringForKey:v1];
  }

  return v3;
}

__CFString *VUILibraryCategoryIdentifierFromType(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_1E8734670[a1];
  }
}

__CFString *VUILibraryCategoryImageNameFromType(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"square.stack.3d.down.right";
  }

  else
  {
    return off_1E87346C8[a1];
  }
}

void sub_1E366528C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void VUIAddMediaEntityPropertyDescriptorToDictionary(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 name];
  [v3 setObject:v4 forKey:v5];
}

id VUIMediaEntityPropertyDescriptors()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v1 setName:@"type"];
  v33 = v1;
  [(VUIMediaEntityPropertyDescriptor *)v1 setPropertyType:6];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [(VUIMediaEntityPropertyDescriptor *)v1 setPropertyValueClassName:v3];

  VUIAddMediaEntityPropertyDescriptorToDictionary(v1, v0);
  v32 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v32 setName:@"identifier"];
  [(VUIMediaEntityPropertyDescriptor *)v32 setPropertyType:6];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v32, v0);
  v31 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v31 setName:@"isLocal"];
  [(VUIMediaEntityPropertyDescriptor *)v31 setPropertyType:0];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v31, v0);
  v30 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v30 setName:@"resolution"];
  [(VUIMediaEntityPropertyDescriptor *)v30 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v30, v0);
  v29 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v29 setName:@"colorCapability"];
  [(VUIMediaEntityPropertyDescriptor *)v29 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v29, v0);
  v28 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v28 setName:@"audioCapability"];
  [(VUIMediaEntityPropertyDescriptor *)v28 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v28, v0);
  v27 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v27 setName:@"HLSResolution"];
  [(VUIMediaEntityPropertyDescriptor *)v27 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v27, v0);
  v26 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v26 setName:@"HLSColorCapability"];
  [(VUIMediaEntityPropertyDescriptor *)v26 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v26, v0);
  v25 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v25 setName:@"HLSAudioCapability"];
  [(VUIMediaEntityPropertyDescriptor *)v25 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v25, v0);
  v24 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v24 setName:@"title"];
  [(VUIMediaEntityPropertyDescriptor *)v24 setSortAsName:@"sortTitle"];
  [(VUIMediaEntityPropertyDescriptor *)v24 setPropertyType:4];
  [(VUIMediaEntityPropertyDescriptor *)v24 setAllowsDefaultValue:1];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v24, v0);
  v23 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v23 setName:@"sortTitle"];
  [(VUIMediaEntityPropertyDescriptor *)v23 setPropertyType:4];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v23, v0);
  v22 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v22 setName:@"genreTitle"];
  [(VUIMediaEntityPropertyDescriptor *)v22 setPropertyType:4];
  [(VUIMediaEntityPropertyDescriptor *)v22 setAllowsDefaultValue:1];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v22, v0);
  v21 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v21 setName:@"contentDescription"];
  [(VUIMediaEntityPropertyDescriptor *)v21 setPropertyType:4];
  [(VUIMediaEntityPropertyDescriptor *)v21 setAllowsDefaultValue:1];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v21, v0);
  v20 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v20 setName:@"addedDate"];
  [(VUIMediaEntityPropertyDescriptor *)v20 setPropertyType:2];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v20, v0);
  v19 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v19 setName:@"releaseDate"];
  [(VUIMediaEntityPropertyDescriptor *)v19 setPropertyType:2];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v19, v0);
  v18 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v18 setName:@"releaseYear"];
  [(VUIMediaEntityPropertyDescriptor *)v18 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v18, v0);
  v17 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v17 setName:@"contentRating"];
  [(VUIMediaEntityPropertyDescriptor *)v17 setPropertyType:4];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v17, v0);
  v16 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v16 setName:@"coverArtImageIdentifier"];
  [(VUIMediaEntityPropertyDescriptor *)v16 setPropertyType:4];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v16, v0);
  v15 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v15 setName:@"storeID"];
  [(VUIMediaEntityPropertyDescriptor *)v15 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v15, v0);
  v4 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v4 setName:@"purchaseHistoryID"];
  [(VUIMediaEntityPropertyDescriptor *)v4 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v4, v0);
  v5 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v5 setName:@"playedState"];
  [(VUIMediaEntityPropertyDescriptor *)v5 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v5, v0);
  v6 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v6 setName:@"showIdentifier"];
  [(VUIMediaEntityPropertyDescriptor *)v6 setPropertyType:6];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v6, v0);
  v7 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v7 setName:@"showTitle"];
  [(VUIMediaEntityPropertyDescriptor *)v7 setPropertyType:4];
  [(VUIMediaEntityPropertyDescriptor *)v7 setAllowsDefaultValue:1];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v7, v0);
  v8 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v8 setName:@"seasonNumber"];
  [(VUIMediaEntityPropertyDescriptor *)v8 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v8, v0);
  v9 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v9 setName:@"canonicalID"];
  [(VUIMediaEntityPropertyDescriptor *)v9 setPropertyType:4];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v9, v0);
  v10 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v10 setName:@"markedAsDeleted"];
  [(VUIMediaEntityPropertyDescriptor *)v10 setPropertyType:0];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v10, v0);
  v11 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v11 setName:@"brandID"];
  [(VUIMediaEntityPropertyDescriptor *)v11 setPropertyType:4];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v11, v0);
  v12 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v12 setName:@"brandName"];
  [(VUIMediaEntityPropertyDescriptor *)v12 setPropertyType:4];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v12, v0);
  v14 = [v0 copy];

  return v14;
}

void sub_1E366FD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36700AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3671300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36740C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36758E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

id VUIMPShowMediaCollectionKind()
{
  if (VUIMPShowMediaCollectionKind_onceToken != -1)
  {
    VUIMPShowMediaCollectionKind_cold_1();
  }

  v1 = VUIMPShowMediaCollectionKind_entityKind;

  return v1;
}

void __VUIMPShowMediaCollectionKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUIMPShowMediaCollectionKind_entityKind;
  VUIMPShowMediaCollectionKind_entityKind = v3;

  v13 = VUIMediaCollectionPropertyDescriptors();
  VUIUpdateMPMediaCollectionPropertyDescriptors(v13);
  v5 = [v13 objectForKey:@"identifier"];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F938]];
  [v5 setSourcePropertyNames:v6];

  v7 = [v13 objectForKey:@"title"];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB18]];
  [v7 setSourcePropertyNames:v8];

  [v7 setSortAsName:0];
  v9 = [v13 objectForKey:@"seasonCount"];
  v10 = +[VUIMPSeasonMediaCollectionIdentifier requiredMPPropertyNames];
  [v9 setSourcePropertyNames:v10];

  [v9 setRetrievesSourcePropertiesAtFetch:1];
  v11 = VUIMPShowMediaCollectionKind_entityKind;
  v12 = [v13 allValues];
  [v11 setPropertyDescriptors:v12];
}

void sub_1E367FB14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1E3680AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VUIPlistMediaItemKind()
{
  if (VUIPlistMediaItemKind_onceToken != -1)
  {
    VUIPlistMediaItemKind_cold_1();
  }

  v1 = VUIPlistMediaItemKind_entityKind;

  return v1;
}

void __VUIPlistMediaItemKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUIPlistMediaItemKind_entityKind;
  VUIPlistMediaItemKind_entityKind = v3;

  v7 = VUIMediaItemPropertyDescriptors();
  v5 = VUIPlistMediaItemKind_entityKind;
  v6 = [v7 allValues];
  [v5 setPropertyDescriptors:v6];
}

double VUIAccountSettingsButtonDimension()
{
  v0 = MEMORY[0x1E6913230]();
  result = 34.0;
  if (v0)
  {
    return 44.0;
  }

  return result;
}

void sub_1E3683608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36854B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3685C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *VUIImageTypeString(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E8734CB0[a1];
  }
}

uint64_t VUIImageTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PreviewFrame"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"PostPlay"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1E368FB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E369012C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1E3696824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AMPGetBidiClass(int a1)
{
  if (a1 == 65532)
  {
    return 14;
  }

  NSGetUnicodeBidiCategory();
  return 2;
}

void sub_1E369DFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36A2B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36A3900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36A5184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36A8B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v22 + 64));
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_1E36ACEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36AD184(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36AE3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36AF0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&a32);
  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

void sub_1E36AFC8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 120));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1E36B3270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36B4484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36B4D50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36B4F68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36B557C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36B5934(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36B5BA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36B8140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromVUIPresentationType(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return @"unknown";
  }

  else
  {
    return off_1E8735FD0[a1 - 1];
  }
}

id VUISidebandMediaItemKind()
{
  if (VUISidebandMediaItemKind_onceToken != -1)
  {
    VUISidebandMediaItemKind_cold_1();
  }

  v1 = VUISidebandMediaItemKind_entityKind;

  return v1;
}

void __VUISidebandMediaItemKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUISidebandMediaItemKind_entityKind;
  VUISidebandMediaItemKind_entityKind = v3;

  v7 = VUIMediaItemPropertyDescriptors();
  v5 = VUISidebandMediaItemKind_entityKind;
  v6 = [v7 allValues];
  [v5 setPropertyDescriptors:v6];
}

void sub_1E36BA41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BA5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BA740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BA888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BAA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BABA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BAD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BAEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BB050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BB1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BB3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BB5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BB7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BB9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BBBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BBDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BC014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BC1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BC3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BC5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BC77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BC90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BCA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BCBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BCD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BCEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BD040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36BDD54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36BE300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36C2670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36C51F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36C9054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36C9474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36CB5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id location)
{
  objc_destroyWeak((v50 + 32));
  objc_destroyWeak((v49 + 32));
  objc_destroyWeak((v48 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36CC024(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1E36CC624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36CC8DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36CD714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36CDFC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36CE588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36CEDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36D0908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 96));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1E36D584C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id VUIMediaCollectionPropertyDescriptors()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = VUIMediaEntityPropertyDescriptors();
  [v0 addEntriesFromDictionary:v1];
  v2 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v2 setName:@"addedToDate"];
  [(VUIMediaEntityPropertyDescriptor *)v2 setPropertyType:2];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v2, v0);
  v3 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v3 setName:@"mediaItemCount"];
  [(VUIMediaEntityPropertyDescriptor *)v3 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v3, v0);
  v4 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  [(VUIMediaEntityPropertyDescriptor *)v4 setName:@"seasonCount"];
  [(VUIMediaEntityPropertyDescriptor *)v4 setPropertyType:3];
  VUIAddMediaEntityPropertyDescriptorToDictionary(v4, v0);

  return v0;
}

void sub_1E36D7FAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36D8538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t VUILibraryGenreFromGenreID(uint64_t a1)
{
  if (VUILibraryGenreFromGenreID_onceToken != -1)
  {
    VUILibraryGenreFromGenreID_cold_1();
  }

  v2 = VUILibraryGenreFromGenreID_sGenreMap;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __VUILibraryGenreFromGenreID_block_invoke()
{
  v3[48] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F5E5DDB8;
  v2[1] = &unk_1F5E5DDE8;
  v3[0] = &unk_1F5E5DDD0;
  v3[1] = &unk_1F5E5DDD0;
  v2[2] = &unk_1F5E5DE00;
  v2[3] = &unk_1F5E5DE30;
  v3[2] = &unk_1F5E5DE18;
  v3[3] = &unk_1F5E5DE48;
  v2[4] = &unk_1F5E5DE60;
  v2[5] = &unk_1F5E5DE90;
  v3[4] = &unk_1F5E5DE78;
  v3[5] = &unk_1F5E5DEA8;
  v2[6] = &unk_1F5E5DEC0;
  v2[7] = &unk_1F5E5DEF0;
  v3[6] = &unk_1F5E5DED8;
  v3[7] = &unk_1F5E5DED8;
  v2[8] = &unk_1F5E5DF08;
  v2[9] = &unk_1F5E5DF38;
  v3[8] = &unk_1F5E5DF20;
  v3[9] = &unk_1F5E5DF20;
  v2[10] = &unk_1F5E5DF50;
  v2[11] = &unk_1F5E5DF80;
  v3[10] = &unk_1F5E5DF68;
  v3[11] = &unk_1F5E5DF98;
  v2[12] = &unk_1F5E5DFB0;
  v2[13] = &unk_1F5E5DFE0;
  v3[12] = &unk_1F5E5DFC8;
  v3[13] = &unk_1F5E5DFC8;
  v2[14] = &unk_1F5E5DFF8;
  v2[15] = &unk_1F5E5E028;
  v3[14] = &unk_1F5E5E010;
  v3[15] = &unk_1F5E5E040;
  v2[16] = &unk_1F5E5E058;
  v2[17] = &unk_1F5E5E088;
  v3[16] = &unk_1F5E5E070;
  v3[17] = &unk_1F5E5E0A0;
  v2[18] = &unk_1F5E5E0B8;
  v2[19] = &unk_1F5E5E0E8;
  v3[18] = &unk_1F5E5E0D0;
  v3[19] = &unk_1F5E5E100;
  v2[20] = &unk_1F5E5E118;
  v2[21] = &unk_1F5E5E148;
  v3[20] = &unk_1F5E5E130;
  v3[21] = &unk_1F5E5E130;
  v2[22] = &unk_1F5E5E160;
  v2[23] = &unk_1F5E5E190;
  v3[22] = &unk_1F5E5E178;
  v3[23] = &unk_1F5E5E1A8;
  v2[24] = &unk_1F5E5E1C0;
  v2[25] = &unk_1F5E5E1F0;
  v3[24] = &unk_1F5E5E1D8;
  v3[25] = &unk_1F5E5E208;
  v2[26] = &unk_1F5E5E220;
  v2[27] = &unk_1F5E5E250;
  v3[26] = &unk_1F5E5E238;
  v3[27] = &unk_1F5E5E268;
  v2[28] = &unk_1F5E5E280;
  v2[29] = &unk_1F5E5E2B0;
  v3[28] = &unk_1F5E5E298;
  v3[29] = &unk_1F5E5E2C8;
  v2[30] = &unk_1F5E5E2E0;
  v2[31] = &unk_1F5E5E310;
  v3[30] = &unk_1F5E5E2F8;
  v3[31] = &unk_1F5E5E328;
  v2[32] = &unk_1F5E5E340;
  v2[33] = &unk_1F5E5E370;
  v3[32] = &unk_1F5E5E358;
  v3[33] = &unk_1F5E5E388;
  v2[34] = &unk_1F5E5E3A0;
  v2[35] = &unk_1F5E5E3D0;
  v3[34] = &unk_1F5E5E3B8;
  v3[35] = &unk_1F5E5E3E8;
  v2[36] = &unk_1F5E5E400;
  v2[37] = &unk_1F5E5E418;
  v3[36] = &unk_1F5E5E3E8;
  v3[37] = &unk_1F5E5E430;
  v2[38] = &unk_1F5E5E448;
  v2[39] = &unk_1F5E5E478;
  v3[38] = &unk_1F5E5E460;
  v3[39] = &unk_1F5E5E490;
  v2[40] = &unk_1F5E5E4A8;
  v2[41] = &unk_1F5E5E4C0;
  v3[40] = &unk_1F5E5E490;
  v3[41] = &unk_1F5E5E4D8;
  v2[42] = &unk_1F5E5E4F0;
  v2[43] = &unk_1F5E5E520;
  v3[42] = &unk_1F5E5E508;
  v3[43] = &unk_1F5E5E538;
  v2[44] = &unk_1F5E5E550;
  v2[45] = &unk_1F5E5E580;
  v3[44] = &unk_1F5E5E568;
  v3[45] = &unk_1F5E5E598;
  v2[46] = &unk_1F5E5E5B0;
  v2[47] = &unk_1F5E5E5E0;
  v3[46] = &unk_1F5E5E5C8;
  v3[47] = &unk_1F5E5E5F8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:48];
  v1 = VUILibraryGenreFromGenreID_sGenreMap;
  VUILibraryGenreFromGenreID_sGenreMap = v0;
}

void sub_1E36D9B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36D9EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36DC30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36DEC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36DF654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36DFD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36E0B78(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1E36E1AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36E2B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36E5808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36E5E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1E36E64A4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id VUIMediaEntityFetchRequestAllPropertiesSet()
{
  if (VUIMediaEntityFetchRequestAllPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestAllPropertiesSet_cold_1();
  }

  v1 = VUIMediaEntityFetchRequestAllPropertiesSet___fetchAllPropertiesSet;

  return v1;
}

void __VUIMediaEntityFetchRequestAllPropertiesSet_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObject:@"__All__"];
  v1 = VUIMediaEntityFetchRequestAllPropertiesSet___fetchAllPropertiesSet;
  VUIMediaEntityFetchRequestAllPropertiesSet___fetchAllPropertiesSet = v0;
}

uint64_t VUIMediaEntityFetchRequestIsAllPropertiesSet(void *a1)
{
  v1 = a1;
  v2 = VUIMediaEntityFetchRequestAllPropertiesSet();
  v3 = [v1 isEqualToSet:v2];

  return v3;
}

id VUIMediaEntityFetchRequestMinimalPropertiesSet()
{
  if (VUIMediaEntityFetchRequestMinimalPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalPropertiesSet_cold_1();
  }

  v1 = VUIMediaEntityFetchRequestMinimalPropertiesSet___minimalPropertiesSet;

  return v1;
}

void __VUIMediaEntityFetchRequestMinimalPropertiesSet_block_invoke()
{
  v4 = VUIMediaEntityFetchRequestRequiredProperties();
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"genreTitle", @"resolution", @"HLSResolution", @"colorCapability", @"audioCapability", @"HLSColorCapability", @"HLSAudioCapability", 0}];
  v1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v1 unionSet:v4];
  [v1 unionSet:v0];
  v2 = [v1 copy];
  v3 = VUIMediaEntityFetchRequestMinimalPropertiesSet___minimalPropertiesSet;
  VUIMediaEntityFetchRequestMinimalPropertiesSet___minimalPropertiesSet = v2;
}

id VUIMediaEntityFetchRequestRequiredProperties()
{
  if (VUIMediaEntityFetchRequestRequiredProperties___onceToken != -1)
  {
    VUIMediaEntityFetchRequestRequiredProperties_cold_1();
  }

  v1 = VUIMediaEntityFetchRequestRequiredProperties___requiredProperties;

  return v1;
}

id VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet()
{
  if (VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet_cold_1();
  }

  v1 = VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet___minimalMoviesPropertiesSet;

  return v1;
}

void __VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet_block_invoke()
{
  v4 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"extrasURL", 0}];
  v1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v1 unionSet:v4];
  [v1 unionSet:v0];
  v2 = [v1 copy];
  v3 = VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet___minimalMoviesPropertiesSet;
  VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet___minimalMoviesPropertiesSet = v2;
}

id VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet()
{
  if (VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet_cold_1();
  }

  v1 = VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet___minimalMoviesPropertiesSet;

  return v1;
}

void __VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet_block_invoke()
{
  v4 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"rentalPlaybackDuration", @"rentalExpirationDate", 0}];
  v1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v1 unionSet:v4];
  [v1 unionSet:v0];
  v2 = [v1 copy];
  v3 = VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet___minimalMoviesPropertiesSet;
  VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet___minimalMoviesPropertiesSet = v2;
}

id VUIMediaEntityFetchRequestMinimalShowPropertiesSet()
{
  if (VUIMediaEntityFetchRequestMinimalShowPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalShowPropertiesSet_cold_1();
  }

  v1 = VUIMediaEntityFetchRequestMinimalShowPropertiesSet___minimalShowsPropertiesSet;

  return v1;
}

void __VUIMediaEntityFetchRequestMinimalShowPropertiesSet_block_invoke()
{
  v4 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"seasonCount", 0}];
  v1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v1 unionSet:v4];
  [v1 unionSet:v0];
  v2 = [v1 copy];
  v3 = VUIMediaEntityFetchRequestMinimalShowPropertiesSet___minimalShowsPropertiesSet;
  VUIMediaEntityFetchRequestMinimalShowPropertiesSet___minimalShowsPropertiesSet = v2;
}

id VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet()
{
  if (VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet_cold_1();
  }

  v1 = VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet___minimalSeasonPropertiesSet;

  return v1;
}

void __VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet_block_invoke()
{
  v4 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"isLocal", @"genreTitle", @"releaseYear", @"releaseDate", @"seasonNumber", @"resolution", @"HLSResolution", @"colorCapability", @"HLSColorCapability", @"audioCapability", @"HLSAudioCapability", 0}];
  v1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v1 unionSet:v4];
  [v1 unionSet:v0];
  v2 = [v1 copy];
  v3 = VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet___minimalSeasonPropertiesSet;
  VUIMediaEntityFetchRequestMinimalSeasonPropertiesSet___minimalSeasonPropertiesSet = v2;
}

id VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet()
{
  if (VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet___once != -1)
  {
    VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet_cold_1();
  }

  v1 = VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet___minimalSeasonPropertiesSet;

  return v1;
}

void __VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet_block_invoke()
{
  v4 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"releaseYear", @"releaseDate", @"isLocal", @"seasonNumber", @"storeID", @"isPlayable", @"duration", @"previewFrameImageIdentifier", @"episodeNumber", @"fractionalEpisodeNumber", 0}];
  v1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v1 unionSet:v4];
  [v1 unionSet:v0];
  v2 = [v1 copy];
  v3 = VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet___minimalSeasonPropertiesSet;
  VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet___minimalSeasonPropertiesSet = v2;
}

void __VUIMediaEntityFetchRequestRequiredProperties_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"type", @"title", @"identifier", @"coverArtImageIdentifier", 0}];
  v1 = VUIMediaEntityFetchRequestRequiredProperties___requiredProperties;
  VUIMediaEntityFetchRequestRequiredProperties___requiredProperties = v0;
}

void sub_1E36ECAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1E36EE07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36EF024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36EF8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36F1154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36F134C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36F15E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36F3F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_1E36F56F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36F6474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36F68CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36F6FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E36F9ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36FB1E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E36FC6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E36FD714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36FDB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E36FE8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1E3702B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

id VUISidebandSeriesMediaCollectionKind()
{
  if (VUISidebandSeriesMediaCollectionKind_onceToken != -1)
  {
    VUISidebandSeriesMediaCollectionKind_cold_1();
  }

  v1 = VUISidebandSeriesMediaCollectionKind_entityKind;

  return v1;
}

void __VUISidebandSeriesMediaCollectionKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUISidebandSeriesMediaCollectionKind_entityKind;
  VUISidebandSeriesMediaCollectionKind_entityKind = v3;

  v7 = VUIMediaCollectionPropertyDescriptors();
  v5 = VUISidebandSeriesMediaCollectionKind_entityKind;
  v6 = [v7 allValues];
  [v5 setPropertyDescriptors:v6];
}

void sub_1E37038F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3703AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3703CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3703EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3704070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3706AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E370A9A0(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1E370D4AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E370EAB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E370ECEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E370F054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_1E370F388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_1E370FB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_sync_exit(v16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E37100D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1E3711058(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 40));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void VUIRunLoopSourceCancelCallBack(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [a1 _sourceCanceledOnRunLoop:a2];

  objc_autoreleasePoolPop(v4);
}

void sub_1E37137E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E371703C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3719B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E371AE4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1E371B88C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 72));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_1E371C26C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1E371CC7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E371E448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E371F318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E371FB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E37205C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3722644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v71 + 32));
  objc_destroyWeak((v75 + 40));
  objc_destroyWeak((v73 + 40));
  objc_destroyWeak((v72 + 40));
  objc_destroyWeak((v74 + 48));
  objc_destroyWeak(&a46);
  objc_destroyWeak(&a51);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&a66);
  objc_destroyWeak(&a71);
  objc_destroyWeak(&STACK[0x218]);
  objc_destroyWeak(&STACK[0x240]);
  objc_destroyWeak(&STACK[0x268]);
  objc_destroyWeak(&STACK[0x290]);
  objc_destroyWeak(&STACK[0x2B8]);
  objc_destroyWeak(&STACK[0x2E0]);
  objc_destroyWeak(&STACK[0x308]);
  objc_destroyWeak(&STACK[0x330]);
  objc_destroyWeak(&STACK[0x358]);
  objc_destroyWeak(&STACK[0x380]);
  objc_destroyWeak(&STACK[0x3A8]);
  objc_destroyWeak(&STACK[0x3D0]);
  objc_destroyWeak(&STACK[0x3F8]);
  objc_destroyWeak(&STACK[0x428]);
  objc_destroyWeak(&STACK[0x458]);
  objc_destroyWeak(&STACK[0x480]);
  objc_destroyWeak(&STACK[0x4A8]);
  objc_destroyWeak(&STACK[0x4D0]);
  objc_destroyWeak(&STACK[0x500]);
  objc_destroyWeak(&STACK[0x528]);
  objc_destroyWeak(&STACK[0x550]);
  objc_destroyWeak(&STACK[0x578]);
  objc_destroyWeak(&STACK[0x5A0]);
  objc_destroyWeak(&STACK[0x5C8]);
  objc_destroyWeak(&STACK[0x5F8]);
  objc_destroyWeak(&STACK[0x620]);
  objc_destroyWeak(&STACK[0x628]);
  _Unwind_Resume(a1);
}

void sub_1E37277A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1E372A060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __PlaybackDelayTimeIntervalOverride_block_invoke_0()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v1 doubleForKey:@"mediaControllerPlaybackDelay"];
  PlaybackDelayTimeIntervalOverride_playbackDelayInterval_0 = v0;
}

void sub_1E372BC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E372BE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E372C4B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1E3731AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1E373432C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3734500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E3735008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E3735858(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E3737C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a48, 8);
  _Unwind_Resume(a1);
}

void sub_1E3738A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

id VUIFamilySharingMediaCollectionKind()
{
  if (VUIFamilySharingMediaCollectionKind_onceToken[0] != -1)
  {
    VUIFamilySharingMediaCollectionKind_cold_1();
  }

  v1 = VUIFamilySharingMediaCollectionKind_entityKind;

  return v1;
}

void __VUIFamilySharingMediaCollectionKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUIFamilySharingMediaCollectionKind_entityKind;
  VUIFamilySharingMediaCollectionKind_entityKind = v3;

  v7 = VUIMediaCollectionPropertyDescriptors();
  v5 = VUIFamilySharingMediaCollectionKind_entityKind;
  v6 = [v7 allValues];
  [v5 setPropertyDescriptors:v6];
}

id VUIMPMediaItemKind()
{
  if (VUIMPMediaItemKind_onceToken != -1)
  {
    VUIMPMediaItemKind_cold_1();
  }

  v1 = VUIMPMediaItemKind_entityKind;

  return v1;
}

void __VUIMPMediaItemKind_block_invoke()
{
  v0 = [VUIMediaEntityKind alloc];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [(VUIMediaEntityKind *)v0 initWithMediaEntityClassName:v2];
  v4 = VUIMPMediaItemKind_entityKind;
  VUIMPMediaItemKind_entityKind = v3;

  v41 = VUIMediaItemPropertyDescriptors();
  VUIUpdateMPMediaEntityPropertyDescriptors(v41);
  v40 = [v41 objectForKey:@"isPlayable"];
  v5 = *MEMORY[0x1E696FB60];
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA38], *MEMORY[0x1E696FA68], *MEMORY[0x1E696FB60], *MEMORY[0x1E696FA10], *MEMORY[0x1E696FA58], 0}];
  [v40 setSourcePropertyNames:v6];

  [v40 setSourceFilterBlock:&__block_literal_global_6_3];
  v39 = [v41 objectForKey:@"duration"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FAB0]];
  [v39 setSourcePropertyNames:v7];

  v38 = [v41 objectForKey:@"previewFrameImageIdentifier"];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FA98]];
  [v38 setSourcePropertyNames:v8];

  v37 = [v41 objectForKey:@"storeID"];
  v9 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  [v37 setSourcePropertyNames:v9];

  [v37 setSourceSupportsFiltering:1];
  v36 = [v41 objectForKey:@"purchaseHistoryID"];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FAC8]];
  [v36 setSourcePropertyNames:v10];

  v11 = [v41 objectForKey:@"extrasURL"];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB50]];
  [v11 setSourcePropertyNames:v12];

  [v11 setSourceSupportsFiltering:1];
  v35 = [v41 objectForKey:@"seasonTitle"];
  v13 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FB08]];
  [v35 setSourcePropertyNames:v13];

  v34 = [v41 objectForKey:@"seasonIdentifier"];
  VUIUpdateMPSeasonMediaCollectionIdentifierPropertyDescriptor(v34);
  v33 = [v41 objectForKey:@"episodeNumber"];
  v14 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F998]];
  [v33 setSourcePropertyNames:v14];

  v15 = [v41 objectForKey:@"studio"];
  v16 = *MEMORY[0x1E696FA90];
  v17 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FA90]];
  [v15 setSourcePropertyNames:v17];

  v18 = [v41 objectForKey:@"credits"];
  v19 = [MEMORY[0x1E695DFD8] setWithObject:v16];
  [v18 setSourcePropertyNames:v19];

  v20 = [v41 objectForKey:@"rentalExpirationDate"];
  v21 = *MEMORY[0x1E696FAF0];
  v22 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FB00], *MEMORY[0x1E696FAE0], *MEMORY[0x1E696FAF8], *MEMORY[0x1E696FAF0], 0}];
  [v20 setSourcePropertyNames:v22];

  v23 = [v41 objectForKey:@"rentalPlaybackDuration"];
  v24 = [MEMORY[0x1E695DFD8] setWithObject:v21];
  [v23 setSourcePropertyNames:v24];

  [v23 setSourceSupportsFiltering:1];
  v25 = [v41 objectForKey:@"hasBeenPlayed"];
  v26 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FA00]];
  [v25 setSourcePropertyNames:v26];

  [v25 setSourceSupportsFiltering:1];
  v27 = [v41 objectForKey:@"playCount"];
  v28 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696FAA0]];
  [v27 setSourcePropertyNames:v28];

  [v27 setSourceSupportsFiltering:1];
  v29 = [v41 objectForKey:@"bookmark"];
  v30 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E696F950]];
  [v29 setSourcePropertyNames:v30];

  v31 = VUIMPMediaItemKind_entityKind;
  v32 = [v41 allValues];
  [v31 setPropertyDescriptors:v32];
}

uint64_t __VUIMPMediaItemKind_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E6970608];
  v6 = [a4 BOOLValue];
  v7 = [MEMORY[0x1E6970610] vui_mediaPropertyPredicateComparisonWithPredicateOperatorType:a3];

  return [v5 vui_isPlayablePredicate:v6 comparison:v7];
}

uint64_t sub_1E373AFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double sub_1E373B090@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
  result = 0.0;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  return result;
}

double sub_1E373B0B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  result = 0.0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 80) = a3;
  return result;
}

uint64_t sub_1E373B0DC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

uint64_t sub_1E373B10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1E373B354(0, v1, 0);
    v2 = v22;
    v4 = a1 + 32;
    do
    {
      sub_1E327F454(v4, v20);
      sub_1E327F454(v20, v17);
      v5 = v18;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      OUTLINED_FUNCTION_0_7();
      __src[0] = (*(v6 + 16))(v5);
      __src[1] = v7;
      v8 = v18;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      OUTLINED_FUNCTION_0_7();
      __src[2] = (*(v9 + 8))(v8);
      __src[3] = v10;
      LOBYTE(__src[4]) = 0;
      v11 = v18;
      v12 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v13 = (*(v12 + 64))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v20);
      BYTE1(__src[4]) = v13 & 1;
      sub_1E327F454(v17, &__src[5]);
      __src[10] = 0;
      __swift_destroy_boxed_opaque_existential_1(v17);
      v22 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1E373B354((v14 > 1), v15 + 1, 1);
        v2 = v22;
      }

      *(v2 + 16) = v15 + 1;
      memcpy((v2 + 88 * v15 + 32), __src, 0x58uLL);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E373B2C4()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E373B310()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

char *sub_1E373B354(char *a1, int64_t a2, char a3)
{
  result = sub_1E373B490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1E373B378()
{
  result = qword_1EE283800;
  if (!qword_1EE283800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283800);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI11SidebarItem_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E373B3EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E373B42C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1E373B490(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[88 * v8] <= v12)
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E373B5B4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseCollectionView();
  objc_msgSendSuper2(&v2, sel_setDelegate_, v0);
  return swift_unknownObjectRelease();
}

void (*sub_1E373B654(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI18BaseCollectionView_vuiDelegate;
  v3[6] = v1;
  v3[7] = v4;
  OUTLINED_FUNCTION_1_45();
  v3[5] = swift_unknownObjectWeakLoadStrong();
  return sub_1E373B6C8;
}

void sub_1E373B6C8(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = *(v3 + 48);
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = type metadata accessor for BaseCollectionView();
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;
    objc_msgSendSuper2((v3 + 24), sel_setDelegate_, v4);
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t (*sub_1E373B7B8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI18BaseCollectionView_vuiScrollDelegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_1_45();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E373B82C;
}