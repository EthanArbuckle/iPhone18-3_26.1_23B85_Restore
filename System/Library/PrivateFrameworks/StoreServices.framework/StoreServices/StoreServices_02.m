uint64_t sub_1D493B5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *(v67 - 192) = ((-308116544 - ((v67 - 192) | 0xEDA283C0) + ((v67 - 192) | 0x125D7C3F)) ^ 0xC7FF16A) * v66 - 2013068026 + v65 + 1005;
  (*(v68 + 8 * (v65 + 3271)))(v67 - 192);
  LOBYTE(STACK[0x1860]) = -85 * ((~(v67 + 64) & 0xD1 | (v67 + 64) & 0x2E) ^ 0xAE) + 126;
  *(v67 - 192) = &STACK[0x374];
  *(v67 - 168) = &STACK[0x284];
  *(v67 - 180) = (v65 + 1417) ^ (1037613739 * ((~(v67 - 192) & 0x212868D1 | (v67 - 192) & 0xDED7972E) ^ 0xF02A45AE));
  v69 = (*(a62 + 8 * (v65 ^ 0xF5E)))(v67 - 192);
  LODWORD(STACK[0x2FC]) = *(v67 - 184);
  LODWORD(STACK[0x3DC]) = v64 + v65 - 431 - 49;
  LODWORD(STACK[0x280]) = v63;
  return (*(a62 + 8 * ((2216 * (LODWORD(STACK[0x2FC]) == v65 + 671455706 + ((v65 + 945034733) & 0xC7ABEDFF) - 3038)) ^ (v65 - 431))))(v69);
}

uint64_t sub_1D493B774@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, char a5@<W5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v14 = (a7 - 1);
  *(v8 + v14) = *(v9 + v14) ^ *(a3 + (v14 & 0xF)) ^ *((v14 & 0xF) + a2 + 5) ^ *((v14 & 0xF) + a6 + 1) ^ (((v7 + a1) & a4 ^ a5) * (v14 & 0xF)) ^ v12;
  return (*(v13 + 8 * (((((v14 == 0) ^ (((v7 + a1) & a4) + v10)) & 1) * v11) ^ (((v7 + a1) & a4) + 700))))();
}

uint64_t sub_1D493B854@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W8>)
{
  v7 = *(v6 + 48 * v3 + 36);
  v9 = v7 != a1 && a2 + a3 - 556 + v7 + 1451 < (a3 + 1942 + v4);
  return (*(v5 + 8 * ((243 * v9) ^ a3)))();
}

uint64_t sub_1D493B8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char *a22, unsigned int a23, uint64_t a24, char *a25)
{
  a22 = &a16;
  a24 = a20;
  a25 = &a14;
  a23 = v25 + 1037613739 * (&a21 ^ 0xD1022D7F) + 3023;
  v27 = (*(v26 + 8 * (v25 + 3223)))(&a21);
  return (*(v26 + 8 * (((a21 == 671454635) * (v25 ^ 0x43B)) ^ v25)))(v27);
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

void sub_1D493B9EC()
{
  v4 = 210068311 * ((2 * ((v3 - 192) & 0x173E9038) - (v3 - 192) - 389976128) ^ 0xBFAEF517);
  *(v3 - 192) = &STACK[0x2FC];
  *(v3 - 184) = (v2 + (v1 ^ 0x55C) + 235508784) ^ v4;
  *(v3 - 180) = v1 - v4 + 790;
  (*(v0 + 8 * (v1 ^ 0xE0F)))(v3 - 192);
  JUMPOUT(0x1D48C7A18);
}

uint64_t sub_1D493BA84@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  v15 = a1 ^ (a1 + 174);
  v16 = v13 + a1 + 308;
  a13 = (a1 - 1898786490) ^ (1037613739 * (&a12 ^ 0xD1022D7F));
  v17 = (*(v14 + 8 * (v13 + a1 + 3616)))(&a12);
  return (*(v14 + 8 * (((a12 == 671454635) * (v15 ^ 0x9BC)) ^ v16)))(v17);
}

uint64_t sub_1D493BB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char a17, uint64_t a18, int a19, char a20, _BYTE *a21, char *a22, _BYTE *a23, char *a24, char *a25, unsigned int a26)
{
  a26 = v26 - 1037613739 * ((2 * (&a22 & 0x2506F738) - &a22 - 621213500) ^ 0xBFB25BB) + 68671433;
  a25 = &a14;
  a22 = &a20;
  a23 = a21;
  (*(v27 + 8 * (v26 ^ 0xF55)))(&a22);
  a22 = a21;
  a24 = &a17;
  LODWORD(a25) = (v26 + 1548) ^ (843532609 * (((&a22 | 0xFFA70B5D) - (&a22 & 0xFFA70B5D)) ^ 0xA3EA5FD8));
  (*(v27 + 8 * (v26 ^ 0xF75)))(&a22);
  LODWORD(a22) = (v26 + 1295) ^ (1504884919 * (((&a22 | 0x8BCB54EE) - (&a22 & 0x8BCB54EE)) ^ 0x7008E3F5));
  a23 = a21;
  v28 = (*(v27 + 8 * (v26 + 3221)))(&a22);
  return (*(v27 + 8 * ((893 * (HIDWORD(a22) == (v26 ^ 0x2805945F))) ^ v26)))(v28);
}

uint64_t sub_1D493BC88@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = (*(v3 + 8 * (v4 ^ 0x810)))(**(v2 + 8 * (v4 - 1661)), va, ((((v4 + 1663259165) ^ (a1 - 1611467934) & 0xFFFFF000) + 1845546200) ^ (((a1 - 1611467934) & 0xFFFFF000 ^ 0x640F43A0) + 1764546451) ^ (((((v4 - 424) | 0xD0) + 120329557) ^ (a1 - 1611467934) & 0xFFFFF000) + 168791928)) - 220435507, 1) == 0;
  return (*(v3 + 8 * ((v5 | (2 * v5)) ^ v4)))();
}

uint64_t sub_1D493BD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  HIDWORD(a17) = v28;
  v29 = (*(v27 + 8 * (v25 ^ 0xFA3u)))(v26 + 16, 0);
  v30 = *(v26 + 16);
  *(v26 + 4) = *(v26 + 24);
  *(v26 + 8) = v30;
  v31 = v25 ^ 0xFAD;
  *(v26 + 12) = (*(v27 + 8 * v31))(v29);
  v32 = (*(v27 + 8 * v31))();
  *v26 = v32;
  return sub_1D493BDC0(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1D493BDC0()
{
  v7 = *(v5 + 4 * (v4 - 1));
  *(v5 + 4 * v4) = *(v2 + 4 * v1) + v1 + ((1664525 * (v7 ^ (v7 >> 30))) ^ *(v5 + 4 * v4));
  v8 = v6 - 152;
  v9 = 1504884919 * ((~((v6 - 152) | 0xCE517900CF9E779CLL) + ((v6 - 152) & 0xCE517900CF9E779CLL)) ^ 0x1DFEDC45CBA23F78);
  *(v6 - 152) = v9;
  *(v6 - 128) = -2124587433 - v9 + v0;
  *(v6 - 124) = v9 + v0 - 793943876 + 109;
  *(v8 + 8) = (v4 + 1) ^ v9;
  *(v8 + 16) = v9 ^ 0x26F;
  *(v6 - 120) = v0 - 793943876 - v9;
  *(v6 - 116) = ((v0 - 793943876) ^ 0xD) - v9;
  v10 = (*(v3 + 8 * (v0 + 2066)))(v6 - 152);
  return (*(v3 + 8 * *(v6 - 148)))(v10);
}

void sub_1D493BEAC(uint64_t a1)
{
  if (*a1)
  {
    v2 = (*(a1 + 16) - 6989 * (a1 ^ 0xA42C)) == 2630;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 12) + 1785193651 * (a1 ^ 0xF621A42C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D493BF60@<X0>(int a1@<W8>)
{
  v5 = (a1 + 910854755) & 0xC9B57FB1;
  *v1 = (v2 + v5 - 2945) ^ v9;
  v6 = 2 * (v5 ^ 0xAD3);
  v12 = v10;
  v11 = v5 - ((((&v11 | 0x20E8A5DC) ^ 0xFFFFFFFE) - (~&v11 | 0xDF175A23)) ^ 0x39BFF633) * v4 - 717;
  (*(v3 + 8 * (v5 ^ 0x5E1)))(&v11);
  v11 = v6 - ((&v11 - 1878942147 - 2 * (&v11 & 0x90019E3D)) ^ 0x76A9322D) * v4 + 1552;
  v12 = v8;
  (*(v3 + 8 * (v6 ^ 0xCC4)))(&v11);
  return 0;
}

uint64_t sub_1D493C210()
{
  v5 = 1785193651 * ((((v3 - 192) | 0x77B21175) + (~(v3 - 192) | 0x884DEE8A)) ^ 0x8193B558);
  *(v3 - 192) = v1;
  *(v3 - 184) = v5 + v2 + 1105;
  *(v3 - 180) = v0 - v5 - 1802651705;
  v6 = (*(v4 + 8 * (v2 ^ 0xB67)))(v3 - 192);
  return (STACK[0x230])(v6);
}

uint64_t sub_1D493C314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((38 * (v6 != (((v2 + v4 + 1264) | 0x68u) ^ 0x578))) ^ (v2 + v4 + 101))))();
}

uint64_t sub_1D493C424(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *v6 = veorq_s8(*v8, xmmword_1D4B4B560);
  STACK[0x460] += 32;
  STACK[0x468] = a1;
  STACK[0x470] = a1;
  return (*(v9 + 8 * (((((v7 - 1852209632) & 0x6E667DF1) - 3339) * (v6 != a1)) ^ v7)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D493C488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  LOBYTE(STACK[0x3F7]) = (v63 & 0x20) == 0;
  if ((v63 & 0x20) != 0)
  {
    v65 = 5;
  }

  else
  {
    v65 = 2;
  }

  LODWORD(STACK[0x414]) = v65;
  if (a8 <= -568992600)
  {
    if (a8 <= -1288193304)
    {
      if (a8 > -1762794139)
      {
        if (a8 > -1710786180)
        {
          if (a8 == -1710786179)
          {
            goto LABEL_54;
          }

          v68 = -1615123701;
        }

        else
        {
          if (a8 == -1762794138)
          {
            goto LABEL_54;
          }

          v68 = -1710786182;
        }

        goto LABEL_53;
      }

      if (a8 == -1950969267 || a8 == -1816919732)
      {
        goto LABEL_54;
      }

      v66 = -1797747877;
LABEL_41:
      v69 = a62;
      if (a8 == v66)
      {
        goto LABEL_42;
      }

      goto LABEL_10;
    }

    if (a8 <= -1156510251)
    {
      if (a8 == -1288193303 || a8 == -1217254596)
      {
        goto LABEL_54;
      }

      v68 = -1197833688;
      goto LABEL_53;
    }

    if (a8 > -730657143)
    {
      if (a8 == -730657142)
      {
        goto LABEL_54;
      }

      v68 = -649326129;
      goto LABEL_53;
    }

    if (a8 != -1156510250)
    {
      v68 = -1134443296;
      goto LABEL_53;
    }

LABEL_42:
    *&STACK[0x1790] = xmmword_1D4B4B4D0;
    return (*(v64 + 8 * (((((a62 - 1047) ^ 0xD0A) + 241) * ((v63 & 0x20) == 0)) ^ (a62 - 1287))))();
  }

  if (a8 <= -195800036)
  {
    if (a8 > -308959714)
    {
      if (a8 > -200415463)
      {
        if (a8 == -200415462)
        {
          goto LABEL_54;
        }

        v68 = -198362357;
      }

      else
      {
        if (a8 == -308959713)
        {
          goto LABEL_54;
        }

        v68 = -222567236;
      }

      goto LABEL_53;
    }

    if (a8 == -568992599)
    {
      goto LABEL_54;
    }

    if (a8 != -542718102)
    {
      v66 = -456149908;
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (a8 > 501090893)
  {
    if (a8 > 820506049)
    {
      if (a8 == 820506050)
      {
        goto LABEL_54;
      }

      v68 = 2033636393;
      goto LABEL_53;
    }

    if (a8 == 501090894)
    {
      goto LABEL_54;
    }

    v66 = 585038713;
    goto LABEL_41;
  }

  if (a8 <= -45684800)
  {
    if (a8 != -195800035)
    {
      v66 = -68345520;
      goto LABEL_41;
    }

LABEL_54:
    *&STACK[0x1790] = xmmword_1D4B4B4C0;
    return (*(v64 + 8 * ((7 * ((v63 >> 5) & 1)) | (a62 - 1294))))();
  }

  if (a8 == -45684799)
  {
    goto LABEL_54;
  }

  v68 = 265443612;
LABEL_53:
  v69 = a62;
  if (a8 == v68)
  {
    goto LABEL_54;
  }

LABEL_10:
  if (((v69 ^ 0x58E) & v63) != 0)
  {
    v67 = 6;
  }

  else
  {
    v67 = 2;
  }

  if ((v63 & 2) != 0)
  {
    v67 = 1;
  }

  LODWORD(STACK[0x2AC]) = v67;
  LODWORD(STACK[0x3DC]) = 0;
  LODWORD(STACK[0x280]) = 0;
  return (*(v64 + 8 * ((2216 * (LODWORD(STACK[0x2FC]) == (v69 ^ 0x5FC) + 671456137 + (((v69 ^ 0x5FC) + 945035164) & 0xC7ABEDFF) - 3038)) ^ v69 ^ 0x5FC)))();
}

uint64_t sub_1D493C800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v30 = ((v29 - 922434491 - 2 * ((v29 - 144) & 0xC904C4D5)) ^ 0x1806E9AA) * v24;
  *(v27 + 8) = &a24;
  *(v29 - 144) = (v25 + 1214) ^ v30;
  *(v29 - 140) = v30 ^ 0x307A01A;
  v31 = (*(v26 + 8 * (v25 + 2270)))(v29 - 144);
  return (*(v26 + 8 * (((2 * (v25 + 1197) - 5051) * (v28 == 0)) ^ (v25 - 794))))(v31);
}

uint64_t sub_1D493C938(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = *(v11 + 48 * v9 + 36);
  v14 = v12 != a3 && v12 + a5 < ((v8 + 336857138) | 0xC8AB7020) + a8;
  return (*(v10 + 8 * ((760 * v14) ^ v8)))();
}

_BYTE *sub_1D493CB64(_BYTE *result, unsigned int a2, unint64_t a3)
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

uint64_t sub_1D493CD20@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = -769513831 * a2;
  v4 = (qword_1F5034510[-769513831 * a2 + 2])();
  qword_1F5034510[v3 + 1](a1);
  if (v4 == 16)
  {
    v5 = -42029;
  }

  else
  {
    v5 = -42030;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D493CDF8@<X0>(int a1@<W8>)
{
  v3 = (-21985942 * v1) | a1;
  v4 = (qword_1F5034510[v3 - 1])(200);
  return (*(v2 + 8 * (v3 + 2 * (v4 != 0))))();
}

uint64_t sub_1D493CE64@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = (*(v5 + 8 * (v6 + a2 * (v4 - 1) + 21985945)))(a1, 0);
  if (v8 == 16)
  {
    v3 = 1537719254;
    goto LABEL_7;
  }

  if (v8 == 12)
  {
LABEL_7:
    (*(v5 + 8 * (v4 + 21985943)))(a1);
    return (1510190423 * v3 + 277669913);
  }

  if (v8)
  {
    v3 = 292433263;
    goto LABEL_7;
  }

  *v2 = a1;
  v3 = 1191165937;
  return (1510190423 * v3 + 277669913);
}

uint64_t D2Zl4GdLl(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23A0) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E23A0) ^ 0xFD))] ^ 0xA6]) - 177);
  v4 = *(v3 - 4);
  v5 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + (35 * ((dword_1EC7E24C8 - v4) ^ 0xFD)) - 8) ^ 0x75u) - 4) ^ (35 * ((dword_1EC7E24C8 - v4) ^ 0xFD))) - 159);
  v6 = 1835632163 * (v4 ^ &v9 ^ 0x5A968D362BDD27FDLL ^ *v5);
  *(v3 - 4) = v6;
  *v5 = v6;
  v7 = 1547649839 * ((((2 * v10) | 0xCFB86912) - v10 + 404999031) ^ 0x41AAF159);
  v11 = a1;
  v12 = a2;
  v10[0] = (a3 ^ 0xD7DB57DD) + ((2 * a3) & 0xAFB6AFBA) - v7 + 1781513792;
  v10[1] = v7 - 1056166977;
  LOBYTE(v5) = 35 * ((*v5 - *(v3 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E23A0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E23A0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA7]) - 142) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v5 - 4) ^ 0x7Au)) ^ v5) + 25180))(v10);
  return 4294924449;
}

uint64_t f5zGmdURga6BZ(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2590) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E2590) ^ 0xFD))] ^ 0x40]) - 36);
  v6 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - *v5) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - *v5) ^ 0xFD))] ^ 0x99]) - 181);
  v7 = *v5 ^ &v10 ^ *v6;
  *v5 = 1835632163 * v7 + 0x2C64D119E1EFE597;
  *v6 = 1835632163 * (v7 ^ 0x5A968D362BDD27FDLL);
  v8 = 370149929 * (((v11 | 0x76926F17) - (v11 & 0x76926F17)) ^ 0xCA1B5DF3);
  v13 = v8 ^ ((a1 ^ 0x379EFCFF) - 269673514 + ((2 * a1) & 0x6F3DF9FE));
  v11[0] = a2;
  v11[1] = a4;
  v14 = a5;
  v15 = v8 ^ 0x676;
  v16 = (a3 ^ 0x2FF7B79B) + ((2 * a3) & 0x5FEF6F36) - 635704587 + v8;
  LOBYTE(v5) = 35 * (*v5 ^ 0xFD ^ *v6);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2590) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E2590) ^ 0xFD))] ^ 0x75]) - 208) + 8 * (*(off_1F503AFD0 + (*(off_1F503AF08 + v5 - 12) ^ 0x98u) - 4) ^ v5) + 24812))(v11);
  return v12 ^ 0xBEA3DD08;
}

uint64_t sub_1D493D3D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * ((dword_1EC7E24C8 - dword_1EC7E21C8) ^ 0xFD)) - 4) ^ 0x65u) - 4) ^ (35 * ((dword_1EC7E24C8 - dword_1EC7E21C8) ^ 0xFD))) - 242);
  v6 = *(v5 - 4);
  v7 = *(&off_1F503AD40 + ((35 * (v6 ^ dword_1EC7E24C8 ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (v6 ^ dword_1EC7E24C8 ^ 0xFD))] ^ 0x99]) - 181);
  v8 = v6 - &v11 + *v7;
  *(v5 - 4) = 1835632163 * v8 + 0x2C64D119E1EFE597;
  *v7 = 1835632163 * (v8 ^ 0x5A968D362BDD27FDLL);
  v9 = 1547649839 * ((~&v12 & 0x80420DD3 | &v12 & 0x7FBDF22C) ^ 0x2634C803);
  v18 = v9 ^ 0x5A;
  v17 = a2;
  v12 = a1;
  v14 = a4;
  v15 = (a3 ^ 0x6A6E9ADF) + ((2 * a3) & 0xD4DD35BE) - v9 - 539891713;
  v16 = 394 - v9;
  v19 = a5;
  LOBYTE(v5) = 35 * ((*v7 - *(v5 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E21C8) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E21C8) ^ 0xFD))] ^ 0x65]) - 241) + 8 * (*(off_1F503AEF8 + (*(off_1F503AE18 + v5 - 4) ^ 0x5Cu)) ^ v5) + 25764))(&v12);
  return v13 ^ 0xBEA3DD08;
}

uint64_t sub_1D493D638(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E21F8) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E21F8) ^ 0xFD))] ^ 0x3E]) - 114);
  v10 = *(v9 - 4);
  v11 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - v10) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - v10) ^ 0xFD))] ^ 0xA6]) - 148);
  v12 = (*v11 ^ v10) - &v15;
  *(v9 - 4) = (1835632163 * v12) ^ 0x5A968D362BDD27FDLL;
  *v11 = 1835632163 * (v12 ^ 0x5A968D362BDD27FDLL);
  v13 = 1427277979 * (((&v16 | 0xC901F0833632096ALL) - (&v16 | 0x36FE0F7CC9CDF695) + 0x36FE0F7CC9CDF695) ^ 0x7DBD4166AB5A2AECLL);
  v26 = v13 ^ 0xF1FA1FF4;
  v25 = a9;
  v19 = -49 - v13;
  v28 = v13 ^ 0x6D465073;
  v29 = (a2 ^ 0x6FF7787B) + ((2 * a2) & 0xDFEEF0F6) - v13 - 45164552;
  v20 = a8;
  v21 = 0;
  v17 = (a6 ^ 0x7DDAFFF9) + ((2 * a6) & 0xFBB5FFF2) - v13 - 159532096;
  v18 = 2483 - v13;
  v16 = 0;
  v30 = (a4 ^ 0xF5DBBBFB) + ((2 * a4) & 0xEBB777F6) + 2122121150 + v13;
  v22 = a7;
  v23 = (a1 ^ 0x1FCEDFDFEBCBFD9BLL) + ((2 * a1) & 0x3F9DBFBFD797FB36) - 0x5401A450003E082 + v13;
  v27 = a5;
  v31 = a3;
  LOBYTE(v9) = 35 * ((*v11 - *(v9 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E21F8 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E21F8 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x40]) - 131) + 8 * (*(off_1F503AEF8 + (*(off_1F503AE18 + v9 - 4) ^ 0x5Cu)) ^ v9) + 25316))(&v16);
  return v24 ^ 0xBEA3DD08;
}

uint64_t sub_1D493D970(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E21E0) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E21E0) ^ 0xFD))] ^ 0xCB]) - 128);
  v6 = 35 * ((dword_1EC7E24C8 - *v5) ^ 0xFD);
  v7 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + v6 - 12) ^ 0x98u) - 4) ^ v6) - 104);
  v8 = (*v7 - *v5) ^ &v11;
  *v5 = (1835632163 * v8) ^ 0x5A968D362BDD27FDLL;
  *v7 = 1835632163 * (v8 ^ 0x5A968D362BDD27FDLL);
  v9 = 370149929 * (((v12 | 0xFA2537DB) + (~v12 | 0x5DAC824)) ^ 0x46AC053E);
  v12[0] = a2;
  v12[1] = a4;
  v16 = v9 ^ 0x676;
  v17 = (a3 ^ 0xAA3BBAFB) + ((2 * a3) & 0x547775F6) + 1607985045 + v9;
  v14 = v9 ^ ((a1 ^ 0xAF9D3DD7) + 2012142334 + ((2 * a1) & 0x5F3A7BAE));
  v15 = a5;
  LOBYTE(v5) = 35 * (*v5 ^ 0xFD ^ *v7);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E21E0) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E21E0) ^ 0xFD))] ^ 0xA7]) - 142) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v5 - 8) ^ 0x75u) - 4) ^ v5) + 24372))(v12);
  return v13 ^ 0xBEA3DD08;
}

uint64_t BaRGxXGfX6Am0I()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2570) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E2570) ^ 0xFD))] ^ 0x7A]) - 111);
  v1 = *(v0 - 4);
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + v1) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + v1) ^ 0xFD))] ^ 0xC9]) + 9);
  v3 = *v2 - v1 - &v5;
  *(v0 - 4) = 1835632163 * v3 + 0x5A968D362BDD27FDLL;
  *v2 = 1835632163 * (v3 ^ 0x5A968D362BDD27FDLL);
  v6[0] = 583883621 * ((((2 * v6) | 0x99354CC6) - v6 - 1285203555) ^ 0xB6C156AA) + 2046;
  LOBYTE(v2) = 35 * (*(v0 - 4) ^ 0xFD ^ *v2);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2570) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 - dword_1EC7E2570) ^ 0xFD))] ^ 0x4D]) - 164) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v2 - 12) ^ 0xCBu) - 4) ^ v2) + 24612))(v6);
  return v6[1] ^ 0xBEA3DD08;
}

uint64_t sub_1D493DDE0(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2220) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 + dword_1EC7E2220) ^ 0xFD))] ^ 0x51]) - 251);
  v2 = *(v1 - 4);
  v3 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + (35 * ((dword_1EC7E24C8 - v2) ^ 0xFD)) - 8) ^ 0x75u) - 4) ^ (35 * ((dword_1EC7E24C8 - v2) ^ 0xFD))) - 159);
  v4 = (*v3 + v2) ^ &v7;
  *(v1 - 4) = 1835632163 * v4 + 0x5A968D362BDD27FDLL;
  *v3 = 1835632163 * (v4 ^ 0x5A968D362BDD27FDLL);
  v5 = 1661262079 * ((((2 * v8) | 0xBC345BFA7205ADE8) - v8 - 0x5E1A2DFD3902D6F4) ^ 0xA98E4B2CAF326913);
  v8[1] = 2399 - v5;
  v9 = v5 ^ ((a1 ^ 0xEFBDDF7FEDFFD8DCLL) + 0x13E7AEAF3E5B67A8 + ((2 * a1) & 0xDF7BBEFFDBFFB1B8));
  LOBYTE(v3) = 35 * (*(v1 - 4) ^ 0xFD ^ *v3);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2220) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E2220) ^ 0xFD))] ^ 0x65]) - 241) + 8 * (*(off_1F503AD60 + (*(off_1F503AF70 + v3 - 4) ^ 0x65u) - 4) ^ v3) + 24028))(v8);
  return v8[0] ^ 0xBEA3DD08;
}

uint64_t sub_1D493E048(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2210) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E2210) ^ 0xFD))] ^ 0x3E]) - 195);
  v3 = *(v2 - 4);
  v4 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + (35 * ((dword_1EC7E24C8 - v3) ^ 0xFD)) - 8) ^ 0x75u) - 4) ^ (35 * ((dword_1EC7E24C8 - v3) ^ 0xFD))) - 159);
  v5 = (*v4 + v3) ^ &v7;
  *(v2 - 4) = 1835632163 * (v5 - 0x5A968D362BDD27FDLL);
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v5) = 2017535981 * ((-2 - ((v8 ^ 0x301A0008 | 0xFE1F5E6) + (v8 ^ 0xE217002 | 0xF01E0A19))) ^ 0x11DDCE20);
  v8[0] = 50 - v5;
  v9 = 2593 - v5;
  v10 = a1;
  v11 = a2;
  LOBYTE(v4) = 35 * ((*v4 - *(v2 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2210) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E2210) ^ 0xFD))] ^ 0x7A]) - 120) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v4 - 4) ^ 0x7Au)) ^ v4) + 25156))(v8);
  return v12 ^ 0xBEA3DD08;
}

uint64_t sub_1D493E284(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + (35 * ((dword_1EC7E24C8 - dword_1EC7E2560) ^ 0xFD)) - 12) ^ 0x51u) - 4) ^ (35 * ((dword_1EC7E24C8 - dword_1EC7E2560) ^ 0xFD))) - 215);
  v3 = 35 * (*v2 ^ dword_1EC7E24C8 ^ 0xFD);
  v4 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + v3 - 4) ^ 0x3Eu) - 4) ^ v3) - 170);
  v5 = (*v4 + *v2) ^ &v7;
  *v2 = (1835632163 * v5) ^ 0x5A968D362BDD27FDLL;
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v9 = a2;
  v10 = a1;
  v8 = 169829299 * ((&v8 + 1895190459 - 2 * (&v8 & 0x70F64FBB)) ^ 0xB980AA58) - 2041212326;
  LOBYTE(v4) = 35 * ((*v4 - *v2) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2560) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E2560) ^ 0xFD))] ^ 0x58]) - 18) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v4 - 12) ^ 0xC9u) - 4) ^ v4) + 25396))(&v8);
  return v11;
}

uint64_t sub_1D493E484(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2380) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E2380) ^ 0xFD))] ^ 0x99]) - 180);
  v11 = *(v10 - 4);
  v12 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + (35 * ((dword_1EC7E24C8 - v11) ^ 0xFD)) - 12) ^ 0x51u) - 4) ^ (35 * ((dword_1EC7E24C8 - v11) ^ 0xFD))) - 203);
  v13 = &v17[*v12 ^ v11];
  *(v10 - 4) = 1835632163 * v13 + 0x5A968D362BDD27FDLL;
  *v12 = 1835632163 * (v13 ^ 0x5A968D362BDD27FDLL);
  v14 = 1427277979 * ((~&v18 & 0xA2BD06828B7CDAB9 | &v18 & 0x5D42F97D74832546) ^ 0x1601B7671614F93FLL);
  v18 = 0;
  v21 = -49 - v14;
  v22 = a9;
  v23 = a7;
  v32 = (a4 ^ 0xF6FFFBB9) + ((2 * a4) & 0xEDFFF772) + 2102968320 + v14;
  v27 = a10;
  v28 = v14 ^ 0xF1FA1FF4;
  v24 = a8;
  v25 = (a1 ^ 0xDEBECD9BEBFE5FF9) + ((2 * a1) & 0xBD7D9B37D7FCBFF2) + 0x3BCFF7FEFFC9BD20 + v14;
  v19 = (a6 ^ 0xF4DBFBBB) + ((2 * a6) & 0xE9B7F776) - v14 + 2138882046;
  v20 = 2483 - v14;
  v29 = a5;
  v33 = a3;
  v30 = v14 ^ 0x6D465073;
  v31 = (a2 ^ 0xFF5F73F3) + ((2 * a2) & 0xFEBEE7E6) - v14 + 1843846272;
  v15 = 35 * ((*v12 - *(v10 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2380) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E2380) ^ 0xFD))] ^ 0xC9]) - 40) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v15 - 8) ^ 0x58u) - 4) ^ v15) + 25228))(&v18);
  return v26 ^ 0xBEA3DD08;
}

uint64_t sub_1D493E7B0(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(&off_1F503AD40 + ((35 * (dword_1EC7E23C0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E23C0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x3E]) - 155);
  v8 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - *v7) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - *v7) ^ 0xFD))] ^ 0x99]) - 181);
  v9 = *v7 ^ &v12 ^ *v8;
  *v7 = (1835632163 * v9) ^ 0x5A968D362BDD27FDLL;
  *v8 = 1835632163 * (v9 ^ 0x5A968D362BDD27FDLL);
  v10 = 169829299 * ((((&v13 | 0xC7821AEE) ^ 0xFFFFFFFE) - (~&v13 | 0x387DE511)) ^ 0xF10B00F2);
  v16 = a6;
  v13 = a4;
  v19 = 1707167831 * a2 - v10 + 686059498;
  v20 = a1;
  v17 = a5 - ((2 * a5) & 0x77E7F9CE) - v10 - 1141637913;
  v18 = a3 - ((2 * a3) & 0x71F4999A) - v10 - 1191555891;
  v14 = a7 - ((2 * a7) & 0xA4F080D2) - v10 + 1383612521;
  v15 = v10 ^ 0x5A0C102A;
  LOBYTE(v7) = 35 * ((*v8 - *v7) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23C0) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E23C0) ^ 0xFD))] ^ 0x58]) - 18) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v7 - 8) ^ 0x58u) - 4) ^ v7) + 25876))(&v13);
  return 4294924449;
}

uint64_t sub_1D493EA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2580 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2580 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x65]) - 228);
  v10 = 35 * ((dword_1EC7E24C8 - *v9) ^ 0xFD);
  v11 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + v10 - 12) ^ 0x51u) - 4) ^ v10) - 203);
  v12 = &v17[*v11 - *v9];
  *v9 = (1835632163 * v12) ^ 0x5A968D362BDD27FDLL;
  *v11 = 1835632163 * (v12 ^ 0x5A968D362BDD27FDLL);
  v13 = (a3 ^ 0xBDBB9A6D) + ((2 * a3) & 0x7B7734DA);
  v14 = 1427277979 * (((&v18 | 0xC99C8C146A9A225ALL) - (&v18 | 0x366373EB9565DDA5) + 0x366373EB9565DDA5) ^ 0x7D203DF1F7F201DCLL);
  v21 = 0x2208371327174719;
  v23 = a4;
  v22 = 118 - v14;
  v36 = 0;
  v18 = v13 - v14 + 2129657335;
  v27 = v14 + 1017878628;
  v28 = v14 ^ 0x2E6;
  v26 = v14 - 1997706464;
  v29 = a9;
  v30 = a2;
  v34 = v14 ^ ((a5 ^ 0xBEAFBB6D) + 2113658103 + ((2 * a5) & 0x7D5F76DA));
  v35 = (859938249 - v14);
  v25 = v14 ^ (a1 - ((2 * a1) & 0x572BF118826C53C4) - 0x546A0773BEC9D61ELL);
  v24 = v14 + 9;
  v32 = a8;
  v33 = a7;
  v19 = 0;
  v20 = a6;
  v15 = 35 * (*v9 ^ 0xFD ^ *v11);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2580) ^ 0xFD)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * ((dword_1EC7E24C8 - dword_1EC7E2580) ^ 0xFD))] ^ 0x5C]) - 7) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v15 - 4) ^ 0x4Du)) ^ v15) + 24980))(&v18);
  return v31 ^ 0xBEA3DD08;
}

uint64_t pC3lVfLuVJLMz(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2368 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (dword_1EC7E2368 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xC9]) + 32);
  v3 = 35 * ((dword_1EC7E24C8 - *v2) ^ 0xFD);
  v4 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + v3 - 4) ^ 0x3Eu) - 4) ^ v3) - 170);
  v5 = *v2 - &v7 + *v4;
  *v2 = 1835632163 * v5 + 0x5A968D362BDD27FDLL;
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v5) = 2017535981 * (((v8 | 0x696C031D) - v8 + (v8 & 0x9693FCE0)) ^ 0xB97542C8);
  v9 = 2593 - v5;
  v10 = a1;
  v11 = a2;
  v8[0] = 51 - v5;
  LOBYTE(v4) = 35 * ((*v4 - *v2) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2368) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E2368) ^ 0xFD))] ^ 0x5B]) - 175) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v4 - 4) ^ 0x7Au)) ^ v4) + 25156))(v8);
  return v12 ^ 0xBEA3DD08;
}

uint64_t JE2f6WCx(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2238) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E2238) ^ 0xFD))] ^ 0xC9]) + 2);
  v2 = off_1F503AEA8 - 4;
  v3 = off_1F503AE58;
  v4 = *(&off_1F503AD40 + (*(off_1F503AE58 + (*(off_1F503AEA8 + (35 * ((dword_1EC7E24C8 - *v1) ^ 0xFD)) - 4) ^ 0x4Du)) ^ (35 * ((dword_1EC7E24C8 - *v1) ^ 0xFD))) - 115);
  v5 = 1835632163 * (&v7[*v4 ^ *v1] ^ 0x5A968D362BDD27FDLL);
  *v1 = v5;
  *v4 = v5;
  v8[1] = 701400691 * ((-451582152 - (v8 | 0xE5156738) + (v8 | 0x1AEA98C7)) ^ 0x7871CFD) + 1676;
  v9 = a1;
  LOBYTE(v4) = 35 * ((*v4 + *v1) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2238 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2238 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA7]) - 142) + 8 * (v4 ^ v3[v2[v4] ^ 0xB2]) + 26044))(v8);
  return v8[0] ^ 0xBEA3DD08;
}

uint64_t KUndSWGZ9wrfzhCOQ2qDQiWsxmFc(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, __int16 a11)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E25B0) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E25B0) ^ 0xFD))] ^ 0xA7]) - 132);
  v12 = 35 * ((dword_1EC7E24C8 - *v11) ^ 0xFD);
  v13 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + v12 - 4) ^ 0x40u) - 4) ^ v12) - 82);
  v14 = 1835632163 * (((*v13 ^ *v11) - &v17) ^ 0x5A968D362BDD27FDLL);
  *v11 = v14;
  *v13 = v14;
  LODWORD(v14) = 169829299 * (&v18 ^ 0xC976E5E3);
  v18 = v14 + a6;
  v22 = v14 ^ a2;
  v29 = a4 - v14;
  v24 = v14;
  v20 = v14 + 182909389;
  v21 = v14 + a8;
  v30 = a3;
  v27 = a7;
  v28 = a9;
  v19 = a5;
  v25 = a10;
  v26 = a1;
  v23 = (25523 * (&v18 ^ 0xE5E3)) ^ a11;
  v15 = 35 * (*v11 ^ 0xFD ^ *v13);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E25B0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E25B0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x65]) - 241) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v15 - 12) ^ 0xC9u) - 4) ^ v15) + 25444))(&v18);
  return 4294924449;
}

uint64_t jSNXSLgDwR(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2500) ^ 0xFD)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * ((dword_1EC7E24C8 - dword_1EC7E2500) ^ 0xFD))] ^ 0x5C]) + 40);
  v2 = *(v1 - 4);
  v3 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * (v2 ^ dword_1EC7E24C8 ^ 0xFD)) - 4) ^ 0x3Eu) - 4) ^ (35 * (v2 ^ dword_1EC7E24C8 ^ 0xFD))) - 170);
  v4 = *v3 - v2 - &v6;
  *(v1 - 4) = 1835632163 * v4 + 0x2C64D119E1EFE597;
  *v3 = 1835632163 * (v4 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v4) = 585927707 * (&v7 ^ 0xE94136DE);
  v9 = v4 - 35;
  v7 = a1;
  v10 = v4 ^ 0x6EE;
  LOBYTE(v3) = 35 * ((*v3 + *(v1 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2500 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2500 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x40]) - 131) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v3 - 8) ^ 0x5Bu) - 4) ^ v3) + 24980))(&v7);
  return v8 ^ 0xBEA3DD08;
}

uint64_t sub_1D493F5B4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2568) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 - dword_1EC7E2568) ^ 0xFD))] ^ 0x75]) - 170);
  v13 = *(&off_1F503AD40 + ((35 * (*v12 ^ dword_1EC7E24C8 ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (*v12 ^ dword_1EC7E24C8 ^ 0xFD))] ^ 0xA6]) - 148);
  v14 = (*v13 - *v12) ^ &v17;
  *v12 = 1835632163 * v14 + 0x5A968D362BDD27FDLL;
  *v13 = 1835632163 * (v14 ^ 0x5A968D362BDD27FDLL);
  v15 = 1427277979 * (((&v18 | 0x74592EB0DFE91EFDLL) - &v18 + (&v18 & 0x8BA6D14F2016E100)) ^ 0xC0E59F5542813D7BLL);
  v33 = a3;
  v29 = a7;
  v19 = (a8 ^ 0x7C59FBBD) + ((2 * a8) & 0xF8B3F77A) - v15 - 134299652;
  v20 = 2483 - v15;
  v22 = a11;
  v23 = a9;
  v24 = a10;
  v25 = (a1 ^ 0xBBAFD5DFFBFABDFDLL) + ((2 * a1) & 0x775FABBFF7F57BFALL) + 0x5EDEEFBAEFCD5F1CLL + v15;
  v32 = (a4 ^ 0xFC7BFBBF) + ((2 * a4) & 0xF8F7F77E) + 2010955770 + v15;
  v18 = a5;
  v21 = -49 - v15;
  v30 = v15 ^ 0x6D465073;
  v31 = (a2 ^ 0x6F67D57F) + ((2 * a2) & 0xDECFAAFE) - v15 - 35751180;
  v27 = a12;
  v28 = v15 ^ (a6 - ((2 * a6) & 0xE3F43FE8) - 235266060);
  LOBYTE(v12) = 35 * (*v12 ^ 0xFD ^ *v13);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2568 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * (dword_1EC7E2568 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x75]) - 208) + 8 * (*(off_1F503AD60 + (*(off_1F503AF70 + v12 - 4) ^ 0x3Eu) - 4) ^ v12) + 23620))(&v18);
  return v26 ^ 0xBEA3DD08;
}

uint64_t sub_1D493F914(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * (dword_1EC7E23B0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E23B0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA7]) - 65);
  v3 = *(v2 - 4);
  v4 = off_1F503AF70 - 4;
  v5 = off_1F503AD60 - 4;
  v6 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * ((dword_1EC7E24C8 - v3) ^ 0xFD)) - 4) ^ 0xA7u) - 4) ^ (35 * ((dword_1EC7E24C8 - v3) ^ 0xFD))) - 93);
  v7 = 1835632163 * ((*v6 + v3) ^ &v9 ^ 0x5A968D362BDD27FDLL);
  *(v2 - 4) = v7;
  *v6 = v7;
  LODWORD(v7) = 370149929 * (&v10 ^ 0xBC8932E4);
  v11 = (a2 ^ 0xEFFF7AB1) + ((2 * a2) & 0xDFFEF562) - v7 + 1606012272;
  v12 = v7 - 1626118877;
  v10 = a1;
  LODWORD(v6) = 1835632163 * ((*v6 + *(v2 - 4)) ^ 0x2BDD27FD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E23B0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E23B0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x40]) - 131) + 8 * (v6 ^ v5[v4[v6] ^ 0xA7]) + 24916))(&v10);
  return 4294924449;
}

uint64_t sub_1D493FB0C(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2578 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * (dword_1EC7E2578 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x5C]) + 63);
  v3 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - *v2) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - *v2) ^ 0xFD))] ^ 0xA6]) - 148);
  v4 = *v2 ^ &v7 ^ *v3;
  *v2 = 1835632163 * v4 + 0x5A968D362BDD27FDLL;
  *v3 = 1835632163 * (v4 ^ 0x5A968D362BDD27FDLL);
  v5 = 912648571 * ((v8 & 0xECA309BD | ~(v8 | 0xECA309BD)) ^ 0xCF91BA77);
  v9 = v5 + 2024068013;
  v10 = a2 - ((2 * a2) & 0x567DB800) - 1421943808 + v5;
  v11 = a1;
  LOBYTE(v3) = 35 * (*v2 ^ 0xFD ^ *v3);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2578) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 - dword_1EC7E2578) ^ 0xFD))] ^ 0x51]) - 252) + 8 * (*(off_1F503AD60 + (*(off_1F503AF70 + v3 - 4) ^ 0xA7u) - 4) ^ v3) + 24812))(v8);
  return 4294924449;
}

uint64_t sub_1D493FD38(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E21D8) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E21D8) ^ 0xFD))] ^ 0x7A]) - 74);
  v2 = off_1F503AEC8 - 8;
  v3 = off_1F503ADC0 - 4;
  v4 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + (35 * (*v1 ^ dword_1EC7E24C8 ^ 0xFD)) - 8) ^ 0x75u) - 4) ^ (35 * (*v1 ^ dword_1EC7E24C8 ^ 0xFD))) - 159);
  v5 = *v1 - &v7 + *v4;
  *v1 = 1835632163 * v5 - 0x5A968D362BDD27FDLL;
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v9 = a1;
  v8 = (1427277979 * (((&v8 | 0xFD514094) - (&v8 & 0xFD514094)) ^ 0x60396312)) ^ 0x25D43EB5;
  LOBYTE(v4) = 35 * (*v1 ^ 0xFD ^ *v4);
  return (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E21D8) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 + dword_1EC7E21D8) ^ 0xFD))] ^ 0x51]) - 252) + 8 * (v4 ^ v3[v2[v4] ^ 0x5B]) + 24140))(&v8);
}

uint64_t sub_1D493FF38(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * (dword_1EC7E23F8 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * (dword_1EC7E23F8 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x75]) - 196);
  v3 = *(v2 - 4);
  v4 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + (35 * (v3 ^ dword_1EC7E24C8 ^ 0xFD)) - 8) ^ 0x75u) - 4) ^ (35 * (v3 ^ dword_1EC7E24C8 ^ 0xFD))) - 159);
  v5 = (*v4 ^ v3) - &v7;
  *(v2 - 4) = 1835632163 * v5 + 0x2C64D119E1EFE597;
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v10 = (370149929 * ((2 * (&v8 & 0x96C1FC8) - &v8 + 1989402677) ^ 0xCA1AD2D1)) ^ 0x8CA;
  v8 = a2;
  v11 = a1;
  LOBYTE(v4) = 35 * (*(v2 - 4) ^ 0xFD ^ *v4);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23F8) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E23F8) ^ 0xFD))] ^ 0x40]) - 131) + 8 * (*(off_1F503AD60 + (*(off_1F503AF70 + v4 - 4) ^ 0xA7u) - 4) ^ v4) + 24932))(&v8);
  return v9 ^ 0xBEA3DD08;
}

uint64_t ShHwAthFTZpQ05NCik7qQZ9wja(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2268) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E2268) ^ 0xFD))] ^ 0xA6]) - 130);
  v7 = *(v6 - 4);
  v8 = *(&off_1F503AD40 + ((35 * (v7 ^ dword_1EC7E24C8 ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (v7 ^ dword_1EC7E24C8 ^ 0xFD))] ^ 0xCB]) - 137);
  v9 = 1835632163 * ((*v8 - v7) ^ &v12 ^ 0x5A968D362BDD27FDLL);
  *(v6 - 4) = v9;
  *v8 = v9;
  v10 = 1661262079 * (&v13 ^ 0xF79466D19630BFE7);
  v21 = v10 + 0x7D45F3A87ACAC8ACLL;
  v22 = a5;
  v15 = a6;
  v16 = a4;
  v13 = 2285 - v10;
  v23 = v10 ^ ((a3 ^ 0xFFF6FADF) + 1325121402 + ((2 * a3) & 0xFFEDF5BE));
  v14 = a2;
  v20 = v10 + 0x4EE3544DD16C1C52;
  v18 = (a1 ^ 0x622BF7FF) + ((2 * a1) & 0xC457EFFE) - 1074275085 + v10;
  v19 = v10 + 572773621;
  LOBYTE(v6) = 35 * ((*v8 - *(v6 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2268 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2268 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x65]) - 241) + 8 * (*(off_1F503AEF8 + (*(off_1F503AE18 + v6 - 4) ^ 0x5Cu)) ^ v6) + 26172))(&v13);
  return v17 ^ 0xBEA3DD08;
}

uint64_t hKBLIYWgX(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2250) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 - dword_1EC7E2250) ^ 0xFD))] ^ 0x58]) + 48);
  v6 = *(v5 - 4);
  v7 = *(&off_1F503AD40 + (*(off_1F503AEF8 + (*(off_1F503AE18 + (35 * (v6 ^ dword_1EC7E24C8 ^ 0xFD)) - 4) ^ 0x5Cu)) ^ (35 * (v6 ^ dword_1EC7E24C8 ^ 0xFD))) + 42);
  v8 = v6 ^ &v10 ^ *v7;
  *(v5 - 4) = 1835632163 * (v8 - 0x5A968D362BDD27FDLL);
  *v7 = 1835632163 * (v8 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v8) = 891395573 * ((&v11 + 1230561877 - 2 * (&v11 & 0x4958E255)) ^ 0xC1103A71);
  v11 = v8 + a2;
  v12 = a3;
  v14 = a5;
  v15 = a4;
  v16 = a1;
  v17 = v8 ^ 0x4E966793;
  LOBYTE(v7) = 35 * ((*v7 - *(v5 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2250) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E2250) ^ 0xFD))] ^ 0x58]) - 18) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v7 - 12) ^ 0xA6u) - 4) ^ v7) + 24588))(&v11);
  return v13;
}

uint64_t sub_1D49405D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23E8) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E23E8) ^ 0xFD))] ^ 0xC9]) + 31);
  v5 = *(v4 - 4);
  v6 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * (v5 ^ dword_1EC7E24C8 ^ 0xFD)) - 4) ^ 0x40u) - 4) ^ (35 * (v5 ^ dword_1EC7E24C8 ^ 0xFD))) - 82);
  v7 = 1835632163 * ((*v6 + v5) ^ &v10 ^ 0x5A968D362BDD27FDLL);
  *(v4 - 4) = v7;
  *v6 = v7;
  LODWORD(v7) = a2 - ((2 * a2) & 0xD1F230B8);
  v8 = 1547649839 * (((v11 | 0x6521D5D6) - v11 + (v11 & 0x9ADE2A28)) ^ 0xC3571006);
  v11[0] = a4;
  v11[1] = a1;
  v14 = a3;
  v12 = v7 + 1761155164 + v8;
  v13 = v8 ^ 0x963DD1A6;
  LOBYTE(v6) = 35 * ((*v6 + *(v4 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E23E8) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E23E8) ^ 0xFD))] ^ 0xA6]) - 197) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v6 - 4) ^ 0x7Au)) ^ v6) + 25052))(v11);
  return 4294924449;
}

uint64_t jomCL4mkolcRMRSf(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = *(&off_1F503AD40 + ((35 * (dword_1EC7E25C0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (dword_1EC7E25C0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xC9]) + 62);
  v10 = 35 * (*v9 ^ dword_1EC7E24C8 ^ 0xFD);
  v11 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + v10 - 4) ^ 0x65u) - 4) ^ v10) - 192);
  v12 = *v11 - *v9 - &v17;
  *v9 = 1835632163 * v12 + 0x2C64D119E1EFE597;
  *v11 = 1835632163 * (v12 ^ 0x5A968D362BDD27FDLL);
  v13 = (a3 ^ 0x7FAF9EF5) + ((2 * a3) & 0xFF5F3DEA);
  v14 = 1427277979 * ((((2 * &v18) | 0x12441C75FD08FC66) - &v18 + 0x76DDF1C5017B81CDLL) ^ 0x3D9EBFDF63EC5DB5);
  v22 = 89 - v14;
  v23 = a4;
  v20 = a6;
  v21 = 0x2208371327174719;
  v25 = v14 ^ (a1 - ((2 * a1) & 0x572BF118826C53C4) - 0x546A0773BEC9D61ELL);
  v28 = v14 ^ 0x2E6;
  v19 = 0;
  v26 = v14 - 1997706464;
  v27 = v14 + 1017878628;
  v36 = 0;
  v24 = v14 + 9;
  v29 = a9;
  v30 = a2;
  v32 = a8;
  v33 = a7;
  v34 = v14 ^ ((a5 ^ 0x3DFFDAF7) - 22299283 + ((2 * a5) & 0x7BFFB5EE));
  v35 = (859938249 - v14);
  v18 = v13 - v14 - 1124337297;
  v15 = 35 * ((*v11 - *v9) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E25C0) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 - dword_1EC7E25C0) ^ 0xFD))] ^ 0x98]) - 153) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v15 - 8) ^ 0x58u) - 4) ^ v15) + 26148))(&v18);
  return v31 ^ 0xBEA3DD08;
}

uint64_t sub_1D4940B20(uint64_t a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2200 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * (dword_1EC7E2200 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x7A]) - 90);
  v4 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - *v3) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - *v3) ^ 0xFD))] ^ 0xA6]) - 148);
  v5 = (*v4 ^ *v3) - &v8;
  *v3 = 1835632163 * (v5 - 0x5A968D362BDD27FDLL);
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v6 = 1547649839 * (((v9 | 0xFDD2E2E) - v9 + (v9 & 0xF022D1D0)) ^ 0xA9ABEBFE);
  v10 = a1;
  v11 = a2;
  v9[0] = (a3 ^ 0xF6DB3EFF) + ((2 * a3) & 0xEDB67DFE) - v6 + 1261426462;
  v9[1] = v6 - 1056166977;
  LOBYTE(v4) = 35 * ((*v4 + *v3) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2200) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 - dword_1EC7E2200) ^ 0xFD))] ^ 0x51]) - 252) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v4 - 4) ^ 0xB2u)) ^ v4) + 25908))(v9);
  return 4294924449;
}

uint64_t NShFxR7kzzF227Pf(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2518) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E2518) ^ 0xFD))] ^ 0x5B]) - 83);
  v11 = off_1F503AF70 - 4;
  v12 = off_1F503AD60 - 4;
  v13 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * ((dword_1EC7E24C8 + *v10) ^ 0xFD)) - 4) ^ 0xA7u) - 4) ^ (35 * ((dword_1EC7E24C8 + *v10) ^ 0xFD))) - 93);
  v14 = &v17[*v10 + *v13];
  *v10 = 1835632163 * (v14 - 0x5A968D362BDD27FDLL);
  *v13 = 1835632163 * (v14 ^ 0x5A968D362BDD27FDLL);
  v15 = 1427277979 * ((-2 - ((~&v18 | 0x506E35F68E53300BLL) + (&v18 | 0xAF91CA0971ACCFF4))) ^ 0xE4D28413133B138DLL);
  v33 = a3;
  v28 = v15 ^ 0xF1FA1FF4;
  v21 = -50 - v15;
  v29 = a5;
  v22 = a9;
  v23 = a7;
  v24 = a8;
  v25 = (a1 ^ 0x3FCEFD9AEBD8FD9FLL) + ((2 * a1) & 0x7F9DFB35D7B1FB3ELL) - 0x254038000010E086 + v15;
  v19 = (a6 ^ 0x7D7EBBBF) + ((2 * a6) & 0xFAFD777E) - v15 - 153485318;
  v20 = 2483 - v15;
  v27 = a10;
  v31 = (a2 ^ 0xFD7ED173) + ((2 * a2) & 0xFAFDA2E6) - v15 + 1875345152;
  v32 = (a4 ^ 0xFC58BFBF) + ((2 * a4) & 0xF8B17F7E) + 2013264890 + v15;
  v18 = 0;
  v30 = v15 ^ 0x6D465073;
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2518) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E2518) ^ 0xFD))] ^ 0xC9]) - 40) + 8 * ((35 * ((*v13 + *v10) ^ 0xFD)) ^ v12[v11[(35 * ((*v13 + *v10) ^ 0xFD))] ^ 0x40]) + 24324))(&v18);
  return v26 ^ 0xBEA3DD08;
}

uint64_t sub_1D49411BC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E24D8) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E24D8) ^ 0xFD))] ^ 0x75]) - 121);
  v6 = *(&off_1F503AD40 + ((35 * (*v5 ^ dword_1EC7E24C8 ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (*v5 ^ dword_1EC7E24C8 ^ 0xFD))] ^ 0xCB]) - 137);
  v7 = &v10[*v6 - *v5];
  *v5 = 1835632163 * v7 + 0x2C64D119E1EFE597;
  *v6 = 1835632163 * (v7 ^ 0x5A968D362BDD27FDLL);
  v8 = 169829299 * ((1709636400 - (&v11 | 0x65E6FB30) + (&v11 | 0x9A1904CF)) ^ 0x536FE12C);
  v14 = a4 - ((2 * a4) & 0x9DECD59A) + 1324772045 + v8;
  v15 = v8 ^ 0xB5F;
  v16 = (a2 ^ 0x8F6F7E7) + ((2 * a2) & 0x11EDEFCE) - v8 - 135529574;
  v12 = a3;
  v13 = a1;
  v17 = a5;
  LOBYTE(v5) = 35 * (*v5 ^ 0xFD ^ *v6);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E24D8) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 - dword_1EC7E24D8) ^ 0xFD))] ^ 0x98]) - 153) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v5 - 4) ^ 0x4Du)) ^ v5) + 24580))(&v11);
  return v11 ^ 0xBEA3DD08;
}

uint64_t ZPgKbdFMwRgHoKHRfhLwlbNZ77M(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, __int16 a12)
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = *(&off_1F503AD40 + ((35 * (dword_1EC7E21C0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (dword_1EC7E21C0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA6]) - 93);
  v13 = 35 * ((dword_1EC7E24C8 + *v12) ^ 0xFD);
  v14 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + v13 - 4) ^ 0x40u) - 4) ^ v13) - 82);
  v15 = *v14 - *v12 - &v18;
  *v12 = (1835632163 * v15) ^ 0x5A968D362BDD27FDLL;
  *v14 = 1835632163 * (v15 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v15) = 169829299 * ((2 * (&v19 & 0x469F568) - &v19 - 74052975) ^ 0x32E0EF72);
  v19 = v15 + a7;
  v22 = v15 + a9;
  v23 = v15 ^ a3;
  v32 = a4;
  v24 = (25523 * ((2 * (&v19 & 0xF568) - &v19 + 2705) ^ 0xEF72)) ^ a12;
  v25 = v15 ^ a2;
  v28 = a8;
  v29 = a10;
  v20 = a6;
  v30 = a5 - v15;
  v26 = a11;
  v27 = a1;
  v21 = v15 + 182909389;
  v16 = 35 * ((*v14 + *v12) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E21C0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * (dword_1EC7E21C0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x51]) - 252) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v16 - 4) ^ 0xB2u)) ^ v16) + 25532))(&v19);
  return v31;
}

uint64_t xUyIiUiS1XwJ8aERoPC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2398 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * (dword_1EC7E2398 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x5B]) - 113);
  v5 = 35 * (*v4 ^ dword_1EC7E24C8 ^ 0xFD);
  v6 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + v5 - 8) ^ 0x75u) - 4) ^ v5) - 159);
  v7 = &v9[*v4 + *v6];
  *v4 = 1835632163 * v7 + 0x2C64D119E1EFE597;
  *v6 = 1835632163 * (v7 ^ 0x5A968D362BDD27FDLL);
  v13 = a3;
  v14 = a1;
  v15 = (891395573 * (((&v10 | 0xF3AEE41C) - &v10 + (&v10 & 0xC511BE0)) ^ 0x7BE63C38)) ^ 0x4E966793;
  v10 = 891395573 * (((&v10 | 0xF3AEE41C) - &v10 + (&v10 & 0xC511BE0)) ^ 0x7BE63C38);
  v11 = a2;
  v12 = a4;
  LOBYTE(v6) = 35 * ((*v6 - *v4) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2398) ^ 0xFD)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * ((dword_1EC7E24C8 - dword_1EC7E2398) ^ 0xFD))] ^ 0x5C]) - 7) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v6 - 12) ^ 0xC9u) - 4) ^ v6) + 25844))(&v10);
  return 4294924449;
}

uint64_t sub_1D49418A8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23D0) ^ 0xFD)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * ((dword_1EC7E24C8 + dword_1EC7E23D0) ^ 0xFD))] ^ 0x5C]) + 93);
  v12 = *(v11 - 4);
  v13 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * ((dword_1EC7E24C8 - v12) ^ 0xFD)) - 4) ^ 0xA7u) - 4) ^ (35 * ((dword_1EC7E24C8 - v12) ^ 0xFD))) - 93);
  v14 = (*v13 ^ v12) - &v17;
  *(v11 - 4) = 1835632163 * (v14 - 0x5A968D362BDD27FDLL);
  *v13 = 1835632163 * (v14 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v14) = 370149929 * ((2 * (v18 & 0x5F75B358) - v18 + 545934497) ^ 0x9C037E45);
  v27 = a3;
  v29 = a1;
  v22 = a10;
  v23 = a11;
  v18[0] = a5;
  v18[1] = a7;
  v28 = 41 * ((2 * (v18 & 0x58) - v18 - 95) ^ 0x45) + 7;
  v18[2] = a9;
  v25 = (a8 ^ 0xFFCDFFED) + ((2 * a8) & 0xFF9BFFDA) - v14 + 1438103516;
  v26 = a6 - ((2 * a6) & 0xE0FDDAAE) - v14 + 1887366487;
  v19 = (a4 ^ 0xF7A7B7DD) + ((2 * a4) & 0xEF4F6FBA) - v14 + 1574830060;
  v20 = v14 ^ 0x805;
  v21 = (a2 ^ 0xDDBFB7CB) + ((2 * a2) & 0xBB7F6F96) - v14 + 2009464830;
  v15 = 35 * ((*v13 - *(v11 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E23D0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * (dword_1EC7E23D0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x7A]) - 120) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v15 - 8) ^ 0x75u) - 4) ^ v15) + 24596))(v18);
  return v24 ^ 0xBEA3DD08;
}

uint64_t sub_1D4941B9C()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23A8) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E23A8) ^ 0xFD))] ^ 0xC9]) + 15);
  v1 = 35 * (*v0 ^ dword_1EC7E24C8 ^ 0xFD);
  v2 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + v1 - 4) ^ 0xA7u) - 4) ^ v1) - 93);
  v3 = 1835632163 * (&v5[*v2 ^ *v0] ^ 0x5A968D362BDD27FDLL);
  *v0 = v3;
  *v2 = v3;
  LODWORD(v3) = 891395573 * ((2 * (&v6 & 0x66FED6B8) - &v6 + 419506500) ^ 0x9149F160);
  v6 = 2663 - v3;
  v7 = v3 ^ 0xA3;
  LOBYTE(v2) = 35 * ((*v2 + *v0) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E23A8) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E23A8) ^ 0xFD))] ^ 0x65]) - 241) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v2 - 12) ^ 0x99u) - 4) ^ v2) + 24068))(&v6);
  return v8 ^ 0xBEA3DD08;
}

uint64_t YejTSDq30PG(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2370) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E2370) ^ 0xFD))] ^ 0x3E]) - 213);
  v10 = 35 * ((dword_1EC7E24C8 - *v9) ^ 0xFD);
  v11 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + v10 - 8) ^ 0x58u) - 4) ^ v10) + 31);
  v12 = (*v11 ^ *v9) - &v16;
  *v9 = 1835632163 * v12 + 0x5A968D362BDD27FDLL;
  *v11 = 1835632163 * (v12 ^ 0x5A968D362BDD27FDLL);
  v13 = (a4 ^ 0x5FFE7FD7) - 1085407553 + ((2 * a4) & 0xBFFCFFAE);
  v14 = 2017535981 * (((&v17 | 0xC37116DF) - &v17 + (&v17 & 0x3C8EE920)) ^ 0x1368570A);
  v23 = (-19 * (((&v17 | 0xDF) - &v17 + (&v17 & 0x20)) ^ 0xA)) ^ 0x43;
  v25 = a1;
  v24 = (a2 ^ 0x3FFD7EB7) + ((2 * a2) & 0x7FFAFD6E) - v14 - 548470817;
  v27 = a9;
  v28 = a7;
  v22 = a8;
  v20 = a3;
  v26 = v14 + 2650;
  v18 = v14 ^ v13;
  v19 = a6 - ((2 * a6) & 0x3F80FD20) + 532709008 + v14;
  v17 = a5;
  LOBYTE(v9) = 35 * ((*v11 + *v9) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2370) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 - dword_1EC7E2370) ^ 0xFD))] ^ 0xB2]) - 29) + 8 * (*(off_1F503AFD0 + (*(off_1F503AF08 + v9 - 12) ^ 0x98u) - 4) ^ v9) + 24756))(&v17);
  return v21 ^ 0xBEA3DD08;
}

uint64_t rRYQuwj7HYeZMhTReWwPHi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2588) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E2588) ^ 0xFD))] ^ 0xA7]) - 46);
  v4 = *(&off_1F503AD40 + ((35 * (*v3 ^ dword_1EC7E24C8 ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (*v3 ^ dword_1EC7E24C8 ^ 0xFD))] ^ 0xCB]) - 137);
  v5 = *v3 ^ &v8 ^ *v4;
  *v3 = (1835632163 * v5) ^ 0x5A968D362BDD27FDLL;
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v6 = 1661262079 * ((2 * (&v9 & 0x3E0D9791AD01F30) - &v9 - 0x3E0D9791AD01F35) ^ 0xB8B4057731F5F2CLL);
  v12 = a1;
  v16 = v6 + 0x4EE3544DD16C1C52;
  v17 = v6 + 0x7D45F3A87ACAC8ACLL;
  v18 = a2;
  v19 = v6 ^ 0x4EF2BA59;
  v14 = v6 + 572773618;
  v15 = v6 + 572773619;
  v9 = 2285 - v6;
  v10 = 0;
  v11 = a3;
  LOBYTE(v3) = 35 * ((*v4 + *v3) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2588) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E2588) ^ 0xFD))] ^ 0x7A]) - 120) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v3 - 12) ^ 0xA6u) - 4) ^ v3) + 24652))(&v9);
  return v13 ^ 0xBEA3DD08;
}

uint64_t RbGlMmy8pVzTlxW41KGzMrqckl4Pa345h(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2218 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * (dword_1EC7E2218 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x5B]) - 143);
  v6 = *(v5 - 4);
  v7 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + (35 * ((dword_1EC7E24C8 - v6) ^ 0xFD)) - 12) ^ 0x51u) - 4) ^ (35 * ((dword_1EC7E24C8 - v6) ^ 0xFD))) - 203);
  v8 = &v11[v6 + *v7];
  *(v5 - 4) = 1835632163 * v8 + 0x2C64D119E1EFE597;
  *v7 = 1835632163 * (v8 ^ 0x5A968D362BDD27FDLL);
  v9 = 1547649839 * (((&v12 | 0x4080959F) - &v12 + (&v12 & 0xBF7F6A60)) ^ 0xE6F6504F);
  v15 = (a3 ^ 0xFAF7DEDF) + ((2 * a3) & 0xF5EFBDBE) - v9 + 1330160639;
  v16 = 394 - v9;
  v19 = a5;
  v17 = a2;
  v18 = v9 ^ 0x59;
  v14 = a4;
  v12 = a1;
  LODWORD(v5) = 1835632163 * (*(v5 - 4) ^ 0x2BDD27FD ^ *v7);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2218) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 - dword_1EC7E2218) ^ 0xFD))] ^ 0xB2]) - 29) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v5 - 8) ^ 0x5Bu) - 4) ^ v5) + 24420))(&v12);
  return v13 ^ 0xBEA3DD08;
}

uint64_t sub_1D494254C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E21E8) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 - dword_1EC7E21E8) ^ 0xFD))] ^ 0x98]) - 78);
  v2 = 35 * ((dword_1EC7E24C8 - *v1) ^ 0xFD);
  v3 = *(&off_1F503AD40 + (*(off_1F503AEF8 + (*(off_1F503AE18 + v2 - 4) ^ 0x5Cu)) ^ v2) + 42);
  v4 = *v1 ^ &v6 ^ *v3;
  *v1 = 1835632163 * v4 - 0x5A968D362BDD27FDLL;
  *v3 = 1835632163 * (v4 ^ 0x5A968D362BDD27FDLL);
  v8 = (891395573 * ((2 * (v7 & 0x6E0F98F8) - v7 + 300967687) ^ 0x99B8BF23)) ^ 0x48C;
  v9 = a1;
  LOBYTE(v3) = 35 * ((*v3 - *v1) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E21E8) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E21E8) ^ 0xFD))] ^ 0xC9]) - 40) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v3 - 8) ^ 0x58u) - 4) ^ v3) + 25980))(v7);
  return 0;
}

uint64_t sub_1D4942754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2520) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 - dword_1EC7E2520) ^ 0xFD))] ^ 0x4D]) - 119);
  v4 = *(v3 - 4);
  v5 = *(&off_1F503AD40 + ((35 * (v4 ^ dword_1EC7E24C8 ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (v4 ^ dword_1EC7E24C8 ^ 0xFD))] ^ 0xCB]) - 137);
  v6 = 1835632163 * ((*v5 - v4) ^ &v9 ^ 0x5A968D362BDD27FDLL);
  *(v3 - 4) = v6;
  *v5 = v6;
  v7 = 1661262079 * (((&v10 | 0xCFC57E649508F3DFLL) - (&v10 | 0x303A819B6AF70C20) + 0x303A819B6AF70C20) ^ 0x385118B503384C38);
  v15 = v7 + 572773618;
  v16 = v7 + 572773619;
  v18 = v7 + 0x7D45F3A87ACAC8ACLL;
  v19 = a2;
  v20 = v7 ^ 0x4EF2BA59;
  v10 = 2285 - v7;
  v11 = 0;
  v12 = a3;
  v13 = a1;
  v17 = v7 + 0x4EE3544DD16C1C52;
  LOBYTE(v3) = 35 * ((*v5 + *(v3 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2520) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E2520) ^ 0xFD))] ^ 0xA7]) - 142) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v3 - 12) ^ 0x99u) - 4) ^ v3) + 24388))(&v10);
  return v14 ^ 0xBEA3DD08;
}

uint64_t GW9oysOw9zb8E8sQxGyy(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E25E8) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E25E8) ^ 0xFD))] ^ 0x99]) - 151);
  v10 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - *v9) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - *v9) ^ 0xFD))] ^ 0xA6]) - 148);
  v11 = *v9 ^ &v14 ^ *v10;
  *v9 = (1835632163 * v11) ^ 0x5A968D362BDD27FDLL;
  *v10 = 1835632163 * (v11 ^ 0x5A968D362BDD27FDLL);
  v12 = 1427277979 * ((((2 * &v15) | 0x55A5D16B86CAE9E2) - &v15 + 0x552D174A3C9A8B0FLL) ^ 0x1E6E59505E0D5777);
  v25 = v12 ^ 0xF1FA1FF4;
  v24 = a9;
  v18 = -50 - v12;
  v27 = v12 ^ 0x6D465073;
  v28 = (a2 ^ 0x6FF77B77) + ((2 * a2) & 0xDFEEF6EE) - v12 - 45165316;
  v29 = (a4 ^ 0xF4D9BBBD) + ((2 * a4) & 0xE9B3777A) + 2139029500 + v12;
  v16 = (a6 ^ 0x757ABBF9) + ((2 * a6) & 0xEAF577F2) - v12 - 19005504;
  v17 = 2483 - v12;
  v30 = a3;
  v19 = a8;
  v20 = 0;
  v26 = a5;
  v21 = a7;
  v22 = (a1 ^ 0xDFDED59BFBEBDD19) + ((2 * a1) & 0xBFBDAB37F7D7BA32) + 0x3AAFEFFEEFDC4000 + v12;
  v15 = 0;
  LODWORD(v9) = 1835632163 * ((*v10 + *v9) ^ 0x2BDD27FD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E25E8) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 - dword_1EC7E25E8) ^ 0xFD))] ^ 0x98]) - 153) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v9 - 12) ^ 0xA6u) - 4) ^ v9) + 23796))(&v15);
  return v23 ^ 0xBEA3DD08;
}

uint64_t LNrThVmoRTuqGf(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = *(&off_1F503AD40 + ((35 * (dword_1EC7E24F0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E24F0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA7]) - 138);
  v13 = *(v12 - 4);
  v14 = *(&off_1F503AD40 + ((35 * (v13 ^ dword_1EC7E24C8 ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (v13 ^ dword_1EC7E24C8 ^ 0xFD))] ^ 0xC9]) + 9);
  v15 = (*v14 + v13) ^ &v19;
  *(v12 - 4) = (1835632163 * v15) ^ 0x5A968D362BDD27FDLL;
  *v14 = 1835632163 * (v15 ^ 0x5A968D362BDD27FDLL);
  v16 = 1427277979 * ((2 * (&v20 & 0x1C08F5C6FDAA2238) - &v20 + 0x63F70A390255DDC5) ^ 0xD74BBBDC9F3DFE43);
  v31 = a7;
  v34 = (a4 ^ 0xF6DEFFBB) + ((2 * a4) & 0xEDBDFF76) + 2105129982 + v16;
  v23 = -50 - v16;
  v21 = (a8 ^ 0xFEDBBFF9) + ((2 * a8) & 0xFDB77FF2) - v16 + 1971125184;
  v22 = 2483 - v16;
  v20 = a5;
  v29 = a12;
  v32 = v16 ^ 0x6D465073;
  v33 = (a2 ^ 0x7DD770FF) + ((2 * a2) & 0xFBAEE1FE) - v16 - 277946508;
  v24 = a11;
  v25 = a9;
  v26 = a10;
  v27 = (a1 ^ 0x1B9ECFFFEFF9BD3BLL) + ((2 * a1) & 0x373D9FFFDFF37A76) - 0x1100A650431A022 + v16;
  v35 = a3;
  v30 = v16 ^ (a6 - ((2 * a6) & 0xE3F43FE8) - 235266060);
  v17 = 35 * ((*v14 + *(v12 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E24F0) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 - dword_1EC7E24F0) ^ 0xFD))] ^ 0x5B]) - 175) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v17 - 12) ^ 0xC9u) - 4) ^ v17) + 25052))(&v20);
  return v28 ^ 0xBEA3DD08;
}

uint64_t sub_1D494307C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2358) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E2358) ^ 0xFD))] ^ 0xCB]) - 146);
  v2 = 35 * (*v1 ^ dword_1EC7E24C8 ^ 0xFD);
  v3 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + v2 - 8) ^ 0x58u) - 4) ^ v2) + 31);
  v4 = 1835632163 * (*v1 ^ &v6 ^ 0x5A968D362BDD27FDLL ^ *v3);
  *v1 = v4;
  *v3 = v4;
  v7 = 1661262079 * (((&v7 | 0x1E1B9E45) - &v7 + (&v7 & 0xE1E461B8)) ^ 0x882B21A2) - 1496397695;
  v8 = a1;
  LOBYTE(v3) = 35 * (*v1 ^ 0xFD ^ *v3);
  return (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2358 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2358 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA7]) - 142) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v3 - 12) ^ 0x99u) - 4) ^ v3) + 24076))(&v7);
}

uint64_t sub_1D494327C(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2270 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2270 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA7]) - 137);
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + *v1) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + *v1) ^ 0xFD))] ^ 0xC9]) + 9);
  v3 = &v6[*v1 + *v2];
  *v1 = 1835632163 * v3 + 0x2C64D119E1EFE597;
  *v2 = 1835632163 * (v3 ^ 0x5A968D362BDD27FDLL);
  v4 = 2017535981 * ((((2 * v7) | 0xD2C918E) - v7 + 2036971321) ^ 0x568F0912);
  v7[0] = v4 + 2956;
  v7[1] = 887882129 * a1 - v4 + 1133207441;
  LOBYTE(v2) = 35 * (*v1 ^ 0xFD ^ *v2);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2270) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E2270) ^ 0xFD))] ^ 0x40]) - 131) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v2 - 8) ^ 0x5Bu) - 4) ^ v2) + 24692))(v7);
  return v7[2] ^ 0xBEA3DD08;
}

uint64_t XjXLwKrEB9m8(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E24F8) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E24F8) ^ 0xFD))] ^ 0x65]) - 213);
  v3 = *(v2 - 4);
  v4 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + v3) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + v3) ^ 0xFD))] ^ 0xC9]) + 9);
  v5 = &v8[v3 + *v4];
  *(v2 - 4) = (1835632163 * v5) ^ 0x5A968D362BDD27FDLL;
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v6 = 912648571 * ((v9 & 0xCD950D6A | ~(v9 | 0xCD950D6A)) ^ 0xEEA7BEA0);
  v12 = a1;
  v10 = v6 + 2024068013;
  v11 = a2 - ((2 * a2) & 0x567DB800) - 1421943808 + v6;
  LOBYTE(v4) = 35 * (*(v2 - 4) ^ 0xFD ^ *v4);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E24F8 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * (dword_1EC7E24F8 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x4D]) - 164) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v4 - 12) ^ 0xC9u) - 4) ^ v4) + 25628))(v9);
  return 4294924449;
}

uint64_t sub_1D49436C0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * (dword_1EC7E25C8 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * (dword_1EC7E25C8 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xB2]) + 7);
  v2 = *(v1 - 4);
  v3 = off_1F503AF70 - 4;
  v4 = off_1F503AD60 - 4;
  v5 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * (v2 ^ dword_1EC7E24C8 ^ 0xFD)) - 4) ^ 0x40u) - 4) ^ (35 * (v2 ^ dword_1EC7E24C8 ^ 0xFD))) - 82);
  v6 = v2 ^ &v8 ^ *v5;
  *(v1 - 4) = (1835632163 * v6) ^ 0x5A968D362BDD27FDLL;
  *v5 = 1835632163 * (v6 ^ 0x5A968D362BDD27FDLL);
  v10 = a1;
  v9[1] = 701400691 * ((v9 + 793053183 - 2 * (v9 & 0x2F4507FF)) ^ 0x322883C5) + 1676;
  LOBYTE(v5) = 35 * ((*v5 + *(v1 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E25C8) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E25C8) ^ 0xFD))] ^ 0xC9]) - 40) + 8 * (v5 ^ v4[v3[v5] ^ 0xA7]) + 25140))(v9);
  return v9[0] ^ 0xBEA3DD08;
}

uint64_t i2DzSgbBIIe95gyG0gW(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * (dword_1EC7E23E0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * (dword_1EC7E23E0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x58]) + 43);
  v3 = *(v2 - 4);
  v4 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * (v3 ^ dword_1EC7E24C8 ^ 0xFD)) - 4) ^ 0x65u) - 4) ^ (35 * (v3 ^ dword_1EC7E24C8 ^ 0xFD))) - 192);
  v5 = v3 ^ &v7 ^ *v4;
  *(v2 - 4) = 1835632163 * v5 + 0x5A968D362BDD27FDLL;
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v10 = (370149929 * ((((&v8 | 0xC970A28A) ^ 0xFFFFFFFE) - (~&v8 | 0x368F5D75)) ^ 0x8A066F91)) ^ 0x8CA;
  v11 = a1;
  v8 = a2;
  LOBYTE(v4) = 35 * ((*v4 + *(v2 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23E0) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E23E0) ^ 0xFD))] ^ 0x5B]) - 175) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v4 - 4) ^ 0x7Au)) ^ v4) + 25108))(&v8);
  return v9 ^ 0xBEA3DD08;
}

uint64_t C956s6fM(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E25B8) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E25B8) ^ 0xFD))] ^ 0xC9]) + 11);
  v6 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + *v5) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + *v5) ^ 0xFD))] ^ 0xA6]) - 148);
  v7 = (*v6 + *v5) ^ &v12;
  *v5 = 1835632163 * v7 + 0x2C64D119E1EFE597;
  *v6 = 1835632163 * (v7 ^ 0x5A968D362BDD27FDLL);
  v11 = *a4;
  v8 = 1661262079 * ((-2 - ((~v13 | 0x6A48FA9B) + (v13 | 0x95B70564))) ^ 0xFC78457C);
  v14 = v8 ^ 0x403;
  v22 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v23 = (a3 ^ 0xBFE74F7F) + ((2 * a3) & 0x7FCE9EFE) - v8 + 2111635195;
  v15 = a2;
  v16 = &v11;
  v21 = ((-2 - ((~v13 | 0x9B) + (v13 | 0x64))) ^ 0x7C) - 71;
  v19 = 0;
  v20 = a1;
  v18 = 0;
  LODWORD(v5) = 1835632163 * ((*v6 - *v5) ^ 0x2BDD27FD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E25B8 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E25B8 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA7]) - 142) + 8 * ((*(off_1F503AE58 + (*(off_1F503AEA8 + v5 - 4) ^ 0x4Du)) ^ v5) | 0xC00u) - 4))(v13);
  v9 = v17;
  *a4 = v11;
  return v9 ^ 0xBEA3DD08;
}

uint64_t wnFx1xLULXLA()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23F0) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E23F0) ^ 0xFD))] ^ 0x7A]) - 87);
  v1 = 35 * ((dword_1EC7E24C8 + *v0) ^ 0xFD);
  v2 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + v1 - 4) ^ 0x65u) - 4) ^ v1) - 192);
  v3 = (*v2 + *v0) ^ &v5;
  *v0 = 1835632163 * v3 - 0x5A968D362BDD27FDLL;
  *v2 = 1835632163 * (v3 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v3) = 891395573 * (((&v6 | 0x46956241) - (&v6 & 0x46956241)) ^ 0xCEDDBA65);
  v7 = v3 ^ 0xA2;
  v6 = 2663 - v3;
  LOBYTE(v2) = 35 * ((*v2 - *v0) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E23F0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E23F0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA7]) - 142) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v2 - 12) ^ 0xA6u) - 4) ^ v2) + 24332))(&v6);
  return v8 ^ 0xBEA3DD08;
}

uint64_t ZZUDP2EEn9tLDQ()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2248) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E2248) ^ 0xFD))] ^ 0x75]) - 165);
  v1 = 35 * ((dword_1EC7E24C8 - *v0) ^ 0xFD);
  v2 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + v1 - 12) ^ 0x51u) - 4) ^ v1) - 203);
  v3 = 1835632163 * (*v0 ^ &v5 ^ 0x5A968D362BDD27FDLL ^ *v2);
  *v0 = v3;
  *v2 = v3;
  LODWORD(v3) = 583883621 * (((v6 ^ 0x28348070) & 0x2C3CC6F8 | (v6 ^ 0x42032807) & 0xD3C33907) ^ 0x906C58BE);
  v6[0] = v3 ^ 0x1E;
  v7 = 1768 - v3;
  LOBYTE(v2) = 35 * ((*v2 - *v0) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2248 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2248 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x40]) - 131) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v2 - 12) ^ 0xC9u) - 4) ^ v2) + 26084))(v6);
  return v8 ^ 0xBEA3DD08;
}

uint64_t dCvqjypPKUsP(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2240 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * (dword_1EC7E2240 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x7A]) - 97);
  v4 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + *v3) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + *v3) ^ 0xFD))] ^ 0xCB]) - 137);
  v5 = &v10[1] + *v3 + *v4;
  *v3 = 1835632163 * (v5 - 0x5A968D362BDD27FDLL);
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v10[0] = *a2;
  v6 = a1 - ((2 * a1) & 0x2E4D5FF87F2C5DBELL) + 0x1726AFFC3F962EDFLL;
  v7 = 169829299 * (((v11 | 0x3D144EB8648FB9A7) - (v11 | 0xC2EBB1479B704658) - 0x3D144EB8648FB9A8) ^ 0x55E40DAFADF95C44);
  v11[1] = 2170 - v7;
  v12 = v7 + 45;
  v13 = v7 ^ v6;
  v14 = v10;
  LOBYTE(v4) = 35 * ((*v4 + *v3) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2240) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E2240) ^ 0xFD))] ^ 0x4D]) - 164) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v4 - 8) ^ 0x58u) - 4) ^ v4) + 26212))(v11);
  v8 = v11[0];
  *a2 = v10[0];
  return v8 ^ 0xBEA3DD08;
}

uint64_t sub_1D4944414(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2350) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E2350) ^ 0xFD))] ^ 0xCB]) - 159);
  v2 = *(v1 - 4);
  v3 = off_1F503AF70 - 4;
  v4 = off_1F503AD60 - 4;
  v5 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * ((dword_1EC7E24C8 - v2) ^ 0xFD)) - 4) ^ 0x3Eu) - 4) ^ (35 * ((dword_1EC7E24C8 - v2) ^ 0xFD))) - 170);
  v6 = v2 - &v8 + *v5;
  *(v1 - 4) = (1835632163 * v6) ^ 0x5A968D362BDD27FDLL;
  *v5 = 1835632163 * (v6 ^ 0x5A968D362BDD27FDLL);
  v11 = a1;
  v9[0] = -83 * (((v9 | 0x1B) - (v9 | 0xE4) - 28) ^ 0x74) + 55;
  v12 = 1384597421 * (((v9 | 0x8220261B) - (v9 | 0x7DDFD9E4) + 2111822308) ^ 0xF45DFE74) + 184620743;
  LOBYTE(v5) = 35 * ((*v5 + *(v1 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2350) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E2350) ^ 0xFD))] ^ 0x4D]) - 164) + 8 * (v5 ^ v4[v3[v5] ^ 0x65]) + 23844))(v9);
  return v10 ^ 0xBEA3DD08;
}

uint64_t PqUfoAiCUu(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2540 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2540 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x3E]) - 151);
  v2 = 35 * ((dword_1EC7E24C8 - *v1) ^ 0xFD);
  v3 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + v2 - 12) ^ 0x98u) - 4) ^ v2) - 104);
  v4 = 1835632163 * (&v6[*v1 + *v3] ^ 0x5A968D362BDD27FDLL);
  *v1 = v4;
  *v3 = v4;
  v10 = 1384597421 * ((v7 - 2 * (v7 & 0xC6626A65) - 966628763) ^ 0xB01FB20A) + 184620743;
  v7[0] = -83 * ((v7 - 2 * (v7 & 0x65) + 101) ^ 0xA) + 14;
  v9 = a1;
  LOBYTE(v3) = 35 * ((*v3 + *v1) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2540) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 - dword_1EC7E2540) ^ 0xFD))] ^ 0x7A]) - 120) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v3 - 4) ^ 0xB2u)) ^ v3) + 25540))(v7);
  return v8 ^ 0xBEA3DD08;
}

uint64_t sub_1D4944844(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2378) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 - dword_1EC7E2378) ^ 0xFD))] ^ 0x5B]) - 140);
  v3 = 35 * ((dword_1EC7E24C8 + *v2) ^ 0xFD);
  v4 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + v3 - 12) ^ 0x51u) - 4) ^ v3) - 203);
  v5 = *v2 - &v7 + *v4;
  *v2 = 1835632163 * v5 - 0x5A968D362BDD27FDLL;
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v8 = 169829299 * ((((2 * &v8) | 0x3988F234) - &v8 - 482638106) ^ 0xD5B29CF9) - 2041212326;
  v9 = a2;
  v10 = a1;
  LOBYTE(v4) = 35 * (*v2 ^ 0xFD ^ *v4);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2378 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * (dword_1EC7E2378 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x5C]) - 7) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v4 - 8) ^ 0x58u) - 4) ^ v4) + 25572))(&v8);
  return v11;
}

uint64_t sub_1D4944A4C(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2538) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E2538) ^ 0xFD))] ^ 0x65]) - 225);
  v3 = *(v2 - 4);
  v4 = *(&off_1F503AD40 + (*(off_1F503AEF8 + (*(off_1F503AE18 + (35 * ((dword_1EC7E24C8 + v3) ^ 0xFD)) - 4) ^ 0x5Cu)) ^ (35 * ((dword_1EC7E24C8 + v3) ^ 0xFD))) + 42);
  v5 = (*v4 + v3) ^ &v8;
  *(v2 - 4) = 1835632163 * v5 + 0x5A968D362BDD27FDLL;
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v6 = 1384597421 * (((&v9 | 0xE32C984A) - &v9 + (&v9 & 0x1CD367B0)) ^ 0x95514025);
  v9 = a1;
  v10 = (a2 ^ 0x7DDB79DE) + ((2 * a2) & 0xFBB6F3BC) - v6 - 1763180560;
  v11 = 1035309529 - v6;
  LOBYTE(v4) = 35 * ((*v4 + *(v2 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2538) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E2538) ^ 0xFD))] ^ 0x99]) - 230) + 8 * (*(off_1F503AD60 + (*(off_1F503AF70 + v4 - 4) ^ 0x40u) - 4) ^ v4) + 25188))(&v9);
  return 4294924449;
}

uint64_t ITFyRQiJdLZiV2zQ6FE(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23C8) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E23C8) ^ 0xFD))] ^ 0x99]) - 136);
  v3 = *(v2 - 4);
  v4 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + (35 * ((dword_1EC7E24C8 - v3) ^ 0xFD)) - 8) ^ 0x5Bu) - 4) ^ (35 * ((dword_1EC7E24C8 - v3) ^ 0xFD))) - 126);
  v5 = 1835632163 * (v3 ^ &v7 ^ 0x5A968D362BDD27FDLL ^ *v4);
  *(v2 - 4) = v5;
  *v4 = v5;
  LODWORD(v5) = 912648571 * (((&v8 | 0xC69B2BFD) - &v8 + (&v8 & 0x3964D400)) ^ 0x1A5667C8);
  v10 = v5 ^ 0x3E74EDF6;
  v8 = v5 ^ 1;
  v9 = a1;
  v11 = a2;
  LOBYTE(v4) = 35 * ((*v4 - *(v2 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E23C8) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 - dword_1EC7E23C8) ^ 0xFD))] ^ 0x58]) - 18) + 8 * (*(off_1F503AFD0 + (*(off_1F503AF08 + v4 - 12) ^ 0x51u) - 4) ^ v4) + 24028))(&v8);
  return 4294924449;
}

uint64_t sub_1D4944E9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2558) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E2558) ^ 0xFD))] ^ 0xCB]) - 167);
  v12 = *(v11 - 4);
  v13 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * (v12 ^ dword_1EC7E24C8 ^ 0xFD)) - 4) ^ 0x40u) - 4) ^ (35 * (v12 ^ dword_1EC7E24C8 ^ 0xFD))) - 82);
  v14 = &v18[*v13 ^ v12];
  *(v11 - 4) = (1835632163 * v14) ^ 0x5A968D362BDD27FDLL;
  *v13 = 1835632163 * (v14 ^ 0x5A968D362BDD27FDLL);
  v15 = 1427277979 * (((&v19 | 0x63982D97A695DD31) - (&v19 & 0x63982D97A695DD31)) ^ 0xD7249C723BFDFEB7);
  v27 = a7 - ((2 * a7) & 0x11DAD640) - 1997706464 + v15;
  v28 = v15 + 1017878628;
  v35 = v15 ^ ((a5 ^ 0xBEAFFFFC) + 2113640552 + ((2 * a5) & 0x7D5FFFF8));
  v36 = 859938249 - v15;
  v26 = v15 ^ (a1 - ((2 * a1) & 0x572BF118826C53C4) - 0x546A0773BEC9D61ELL);
  v24 = a4;
  v29 = v15 ^ 0x2E6;
  v30 = a11;
  v31 = a2;
  v21 = a8;
  v22 = 0x2208371327174719;
  v37 = 0;
  v25 = v15 + 9;
  v19 = (a3 ^ 0xFCBFBE74) + ((2 * a3) & 0xF97F7CE8) - v15 + 1072421360;
  v33 = a10;
  v34 = a9;
  v20 = a6;
  v23 = 118 - v15;
  v16 = 35 * ((*v13 - *(v11 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2558 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2558 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA7]) - 142) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v16 - 8) ^ 0x75u) - 4) ^ v16) + 24628))(&v19);
  return v32 ^ 0xBEA3DD08;
}

uint64_t kNsH5DWSn1J(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2550) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E2550) ^ 0xFD))] ^ 0x3E]) - 208);
  v3 = *(v2 - 4);
  v4 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * (v3 ^ dword_1EC7E24C8 ^ 0xFD)) - 4) ^ 0xA7u) - 4) ^ (35 * (v3 ^ dword_1EC7E24C8 ^ 0xFD))) - 93);
  v5 = 1835632163 * (&v7[v3 + *v4] ^ 0x5A968D362BDD27FDLL);
  *(v2 - 4) = v5;
  *v4 = v5;
  v9 = (891395573 * ((&v8 - 1687855414 - 2 * (&v8 & 0x9B655ECA)) ^ 0x132D86EE)) ^ 0x7AA489C1;
  v8 = a1;
  v10 = a2;
  LOBYTE(v4) = 35 * (*(v2 - 4) ^ 0xFD ^ *v4);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2550) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 - dword_1EC7E2550) ^ 0xFD))] ^ 0x58]) - 18) + 8 * (*(off_1F503AFD0 + (*(off_1F503AF08 + v4 - 12) ^ 0x98u) - 4) ^ v4) + 25252))(&v8);
  return v11;
}

uint64_t CciXYFQnBz4DB9mkGvXwsTwkFUalVp70Gcf5Y(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = *(&off_1F503AD40 + ((35 * (dword_1EC7E24E8 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * (dword_1EC7E24E8 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x58]) + 41);
  v8 = *(v7 - 4);
  v9 = off_1F503AEA8 - 4;
  v10 = off_1F503AE58;
  v11 = *(&off_1F503AD40 + (*(off_1F503AE58 + (*(off_1F503AEA8 + (35 * ((dword_1EC7E24C8 - v8) ^ 0xFD)) - 4) ^ 0x4Du)) ^ (35 * ((dword_1EC7E24C8 - v8) ^ 0xFD))) - 115);
  v12 = (*v11 ^ v8) - &v15;
  *(v7 - 4) = (1835632163 * v12) ^ 0x5A968D362BDD27FDLL;
  *v11 = 1835632163 * (v12 ^ 0x5A968D362BDD27FDLL);
  v13 = 169829299 * ((2 * (&v16 & 0x65C59980) - &v16 - 1707448711) ^ 0x534C839A);
  v23 = a1;
  v17 = a7 - ((2 * a7) & 0xA4F080D2) - v13 + 1383612521;
  v18 = v13 ^ 0x5A0C102A;
  v16 = a4;
  v19 = a6;
  v21 = a3 - ((2 * a3) & 0x71F4999A) - v13 - 1191555891;
  v22 = 1707167831 * a2 - v13 + 686059498;
  v20 = a5 - ((2 * a5) & 0x77E7F9CE) - v13 - 1141637913;
  LOBYTE(v7) = 35 * ((*v11 + *(v7 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E24E8) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 + dword_1EC7E24E8) ^ 0xFD))] ^ 0x51]) - 252) + 8 * (v7 ^ v10[v9[v7] ^ 0x4D]) + 24708))(&v16);
  return 4294924449;
}

uint64_t sub_1D494572C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2528 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * (dword_1EC7E2528 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x5B]) - 122);
  v9 = 35 * ((dword_1EC7E24C8 + *v8) ^ 0xFD);
  v10 = *(&off_1F503AD40 + (*(off_1F503AE58 + (*(off_1F503AEA8 + v9 - 4) ^ 0x7Au)) ^ v9) - 71);
  v11 = (*v10 + *v8) ^ &v15;
  *v8 = 1835632163 * v11 - 0x5A968D362BDD27FDLL;
  *v10 = 1835632163 * (v11 ^ 0x5A968D362BDD27FDLL);
  v12 = a1 - ((2 * a1) & 0x572BF118826C53C4) - 0x546A0773BEC9D61ELL;
  v13 = 1427277979 * ((~&v16 & 0x2413D327F46ECD92 | &v16 & 0xDBEC2CD80B91326DLL) ^ 0x90AF62C26906EE14);
  v20 = 118 - v13;
  v34 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0x2208371327174719;
  v22 = v13 + 9;
  v26 = v13 ^ 0x2E6;
  v32 = v13 ^ ((a5 ^ 0x3FEBBAF5) - 54534801 + ((2 * a5) & 0x7FD775EA));
  v33 = (859938249 - v13);
  v21 = a4;
  v24 = v13 - 1997706464;
  v25 = v13 + 1017878628;
  v16 = (a3 ^ 0x3DAFB9E5) + ((2 * a3) & 0x7B5F73CA) - v13 - 17047937;
  v23 = v13 ^ v12;
  v30 = a7;
  v31 = a6;
  v27 = a8;
  v28 = a2;
  LOBYTE(v8) = 35 * ((*v10 - *v8) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2528) ^ 0xFD)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * ((dword_1EC7E24C8 + dword_1EC7E2528) ^ 0xFD))] ^ 0x5C]) - 7) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v8 - 12) ^ 0x99u) - 4) ^ v8) + 24452))(&v16);
  return v29 ^ 0xBEA3DD08;
}

uint64_t nS1Q9ljw9esy9(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23D8) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E23D8) ^ 0xFD))] ^ 0x65]) - 155);
  v3 = *(v2 - 4);
  v4 = *(&off_1F503AD40 + (*(off_1F503AEF8 + (*(off_1F503AE18 + (35 * ((dword_1EC7E24C8 + v3) ^ 0xFD)) - 4) ^ 0x5Cu)) ^ (35 * ((dword_1EC7E24C8 + v3) ^ 0xFD))) + 42);
  v5 = 1835632163 * ((*v4 - v3) ^ &v7 ^ 0x5A968D362BDD27FDLL);
  *(v2 - 4) = v5;
  *v4 = v5;
  v10 = a1;
  v8 = a2;
  v9 = 1037 - 169829299 * ((&v8 & 0x9E867ECB | ~(&v8 | 0x9E867ECB)) ^ 0xA80F64D7);
  LOBYTE(v4) = 35 * ((*v4 + *(v2 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E23D8 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E23D8 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x40]) - 131) + 8 * (*(off_1F503AFD0 + (*(off_1F503AF08 + v4 - 12) ^ 0x98u) - 4) ^ v4) + 24804))(&v8);
  return v11;
}

uint64_t pNl28qYdqR8Dyw(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E25D8) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E25D8) ^ 0xFD))] ^ 0x3E]) - 128);
  v2 = *(v1 - 4);
  v3 = off_1F503AF08 - 12;
  v4 = off_1F503AFD0 - 4;
  v5 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + (35 * ((dword_1EC7E24C8 - v2) ^ 0xFD)) - 12) ^ 0x51u) - 4) ^ (35 * ((dword_1EC7E24C8 - v2) ^ 0xFD))) - 203);
  v6 = v2 - &v8 + *v5;
  *(v1 - 4) = (1835632163 * v6) ^ 0x5A968D362BDD27FDLL;
  *v5 = 1835632163 * (v6 ^ 0x5A968D362BDD27FDLL);
  v9 = (912648571 * (&v9 ^ 0xDCCD4C35)) ^ 0xFB3A1ED5;
  v10 = a1;
  LOBYTE(v5) = 35 * ((*v5 + *(v1 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E25D8) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E25D8) ^ 0xFD))] ^ 0x5B]) - 175) + 8 * (v5 ^ v4[v3[v5] ^ 0x98]) + 25020))(&v9);
  return 0;
}

uint64_t MzdSdcDIXg8COV(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2258) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E2258) ^ 0xFD))] ^ 0x5B]) - 167);
  v2 = 35 * ((dword_1EC7E24C8 - *v1) ^ 0xFD);
  v3 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + v2 - 4) ^ 0xA7u) - 4) ^ v2) - 93);
  v4 = *v1 ^ &v7 ^ *v3;
  *v1 = (1835632163 * v4) ^ 0x5A968D362BDD27FDLL;
  *v3 = 1835632163 * (v4 ^ 0x5A968D362BDD27FDLL);
  v5 = 1661262079 * (((v8 | 0x37F1CBB9BD776160) - v8 + (v8 & 0xC80E344642889E98)) ^ 0xC065AD682B47DE87);
  v8[1] = 2399 - v5;
  v9 = v5 ^ ((a1 ^ 0x83EFDEEFED5B6BB6) + 0x7FB5AF3F3EFFD4CELL + ((2 * a1) & 0x7DFBDDFDAB6D76CLL));
  LOBYTE(v3) = 35 * ((*v3 + *v1) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2258) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E2258) ^ 0xFD))] ^ 0x3E]) - 219) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v3 - 8) ^ 0x75u) - 4) ^ v3) + 24292))(v8);
  return v8[0] ^ 0xBEA3DD08;
}

uint64_t xznuOJnBntNZhCW(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2390) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E2390) ^ 0xFD))] ^ 0xC9]) - 22);
  v4 = *(v3 - 4);
  v5 = *(&off_1F503AD40 + (*(off_1F503AE58 + (*(off_1F503AEA8 + (35 * ((dword_1EC7E24C8 + v4) ^ 0xFD)) - 4) ^ 0xB2u)) ^ (35 * ((dword_1EC7E24C8 + v4) ^ 0xFD))) + 20);
  v6 = &v8[*v5 - v4];
  *(v3 - 4) = 1835632163 * v6 - 0x5A968D362BDD27FDLL;
  *v5 = 1835632163 * (v6 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v6) = 912648571 * ((1208169014 - (&v9 | 0x48033236) + (&v9 | 0xB7FCCDC9)) ^ 0x6B3181FC);
  v11 = v6 ^ 0x3E74EDF6;
  v9 = v6 ^ a3;
  v12 = a2;
  v10 = a1;
  LOBYTE(v5) = 35 * (*(v3 - 4) ^ 0xFD ^ *v5);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2390) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E2390) ^ 0xFD))] ^ 0xC9]) - 40) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v5 - 12) ^ 0xC9u) - 4) ^ v5) + 25724))(&v9);
  return v13;
}

uint64_t Qhl17oSYJtCJIxM(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2548) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 - dword_1EC7E2548) ^ 0xFD))] ^ 0x5B]) - 97);
  v6 = 35 * (*v5 ^ dword_1EC7E24C8 ^ 0xFD);
  v7 = *(&off_1F503AD40 + (*(off_1F503AEF8 + (*(off_1F503AE18 + v6 - 4) ^ 0x5Cu)) ^ v6) + 42);
  v8 = (*v7 ^ *v5) - &v11;
  *v5 = 1835632163 * v8 + 0x5A968D362BDD27FDLL;
  *v7 = 1835632163 * (v8 ^ 0x5A968D362BDD27FDLL);
  v9 = 169829299 * ((2 * ((&v12 ^ 0x49E1E6BA) & 0x2959E9A) - (&v12 ^ 0x49E1E6BA) - 43359903) ^ 0x7DFD6238);
  v16 = v9 ^ 0xB5F;
  v17 = (a2 ^ 0xF8FEFFD9) + ((2 * a2) & 0xF1FDFFB2) - v9 + 132379560;
  v15 = a4 - ((2 * a4) & 0x9DECD59A) + 1324772045 + v9;
  v18 = a5;
  v13 = a3;
  v14 = a1;
  LOBYTE(v5) = 35 * ((*v7 - *v5) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2548) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 - dword_1EC7E2548) ^ 0xFD))] ^ 0x4D]) - 164) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v5 - 12) ^ 0xCBu) - 4) ^ v5) + 24404))(&v12);
  return v12 ^ 0xBEA3DD08;
}

uint64_t sub_1D4946518(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2340) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E2340) ^ 0xFD))] ^ 0xB2]) + 47);
  v2 = off_1F503AEC8 - 8;
  v3 = off_1F503ADC0 - 4;
  v4 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + (35 * (*v1 ^ dword_1EC7E24C8 ^ 0xFD)) - 8) ^ 0x5Bu) - 4) ^ (35 * (*v1 ^ dword_1EC7E24C8 ^ 0xFD))) - 126);
  v5 = &v7[*v4 - *v1];
  *v1 = 1835632163 * (v5 - 0x5A968D362BDD27FDLL);
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v10 = a1;
  v11 = 585927707 * (((&v8 | 0xDC6B5118) - (&v8 | 0x2394AEE7) + 596946663) ^ 0x352A67C6) + 769;
  v9 = (27 * (((&v8 | 0x18) - (&v8 | 0xE7) - 25) ^ 0xC6)) ^ 0x4C;
  LOBYTE(v4) = 35 * ((*v4 - *v1) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2340 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2340 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x65]) - 241) + 8 * (v4 ^ v3[v2[v4] ^ 0x58]) + 25684))(&v8);
  return v8 ^ 0xBEA3DD08;
}

uint64_t sub_1D4946738()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2598) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E2598) ^ 0xFD))] ^ 0x40]) - 47);
  v1 = 35 * (*v0 ^ dword_1EC7E24C8 ^ 0xFD);
  v2 = *(&off_1F503AD40 + (*(off_1F503AE58 + (*(off_1F503AEA8 + v1 - 4) ^ 0x7Au)) ^ v1) - 71);
  v3 = *v0 - &v5 + *v2;
  *v0 = 1835632163 * v3 + 0x5A968D362BDD27FDLL;
  *v2 = 1835632163 * (v3 ^ 0x5A968D362BDD27FDLL);
  v6[0] = 583883621 * ((2 * (v6 & 0x78E85AC) - v6 - 126780845) ^ 0x22A8A9A) + 2046;
  LOBYTE(v2) = 35 * (*v0 ^ 0xFD ^ *v2);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2598) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E2598) ^ 0xFD))] ^ 0x40]) - 131) + 8 * (*(off_1F503AFD0 + (*(off_1F503AF08 + v2 - 12) ^ 0x98u) - 4) ^ v2) + 24876))(v6);
  return v6[1] ^ 0xBEA3DD08;
}

uint64_t f834ofwoih1(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2230) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E2230) ^ 0xFD))] ^ 0x4D]) - 66);
  v12 = 35 * (*v11 ^ dword_1EC7E24C8 ^ 0xFD);
  v13 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + v12 - 12) ^ 0x51u) - 4) ^ v12) - 203);
  v14 = &v18[*v13 - *v11];
  *v11 = 1835632163 * (v14 - 0x5A968D362BDD27FDLL);
  *v13 = 1835632163 * (v14 ^ 0x5A968D362BDD27FDLL);
  v15 = 1427277979 * (((&v19 | 0x4FDA1F3E335F12C2) - (&v19 | 0xB025E0C1CCA0ED3DLL) - 0x4FDA1F3E335F12C3) ^ 0xFB66AEDBAE373144);
  v29 = v15 ^ 0x2E6;
  v23 = 89 - v15;
  v24 = a4;
  v37 = 0;
  v19 = (a3 ^ 0xBEFFD8F5) + ((2 * a3) & 0x7DFFB1EA) - v15 + 2108407663;
  v27 = a7 - ((2 * a7) & 0x11DAD640) - 1997706464 + v15;
  v28 = v15 + 1017878628;
  v21 = a8;
  v22 = 0x2208371327174719;
  v35 = v15 ^ ((a5 ^ 0x7DBBBCFF) - 1091576987 + ((2 * a5) & 0xFB7779FE));
  v36 = (859938249 - v15);
  v30 = a11;
  v31 = a2;
  v26 = v15 ^ (a1 - ((2 * a1) & 0x572BF118826C53C4) - 0x546A0773BEC9D61ELL);
  v20 = a6;
  v25 = v15 + 9;
  v33 = a10;
  v34 = a9;
  v16 = 35 * ((*v13 - *v11) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2230 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2230 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x65]) - 241) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v16 - 12) ^ 0xA6u) - 4) ^ v16) + 24716))(&v19);
  return v32 ^ 0xBEA3DD08;
}

uint64_t u9Pn79N5SPDWUA3d2nHLYS0sWXB1z(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2360) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E2360) ^ 0xFD))] ^ 0x40]) - 90);
  v5 = *(v4 - 4);
  v6 = *(&off_1F503AD40 + ((35 * (v5 ^ dword_1EC7E24C8 ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (v5 ^ dword_1EC7E24C8 ^ 0xFD))] ^ 0xCB]) - 137);
  v7 = &v10[*v6 - v5];
  *(v4 - 4) = 1835632163 * (v7 - 0x5A968D362BDD27FDLL);
  *v6 = 1835632163 * (v7 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v7) = a2 - ((2 * a2) & 0xD1F230B8);
  v8 = 1547649839 * (((v11 | 0x3C5FF9BC) - v11 + (v11 & 0xC3A00640)) ^ 0x9A293C6C);
  v11[0] = a4;
  v11[1] = a1;
  v12 = v7 + 1761155164 + v8;
  v13 = v8 ^ 0x963DD1A6;
  v14 = a3;
  LOBYTE(v4) = 35 * (*(v4 - 4) ^ 0xFD ^ *v6);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2360) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E2360) ^ 0xFD))] ^ 0xCB]) - 186) + 8 * (*(off_1F503AFD0 + (*(off_1F503AF08 + v4 - 12) ^ 0x98u) - 4) ^ v4) + 24788))(v11);
  return 4294924449;
}

uint64_t esRr9ErBMyrb1sB3ZZea5Ys(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2208) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 - dword_1EC7E2208) ^ 0xFD))] ^ 0x5B]) - 101);
  v10 = 35 * (*v9 ^ dword_1EC7E24C8 ^ 0xFD);
  v11 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + v10 - 12) ^ 0x51u) - 4) ^ v10) - 203);
  v12 = *v11 - *v9 - &v16;
  *v9 = 1835632163 * v12 + 0x2C64D119E1EFE597;
  *v11 = 1835632163 * (v12 ^ 0x5A968D362BDD27FDLL);
  v13 = 891395573 * (((v17 ^ 0xCFBA2E06) & 0x45A994FE | ~(v17 ^ 0xCFBA2E06 | 0x45A994FE)) ^ 0xFDA49D23);
  v20 = v13 + 1392126281 * a2 + 2007000259;
  v24 = a4;
  v17[0] = a1;
  v17[1] = a6;
  v21 = a8;
  v22 = v13 + 256861813 * a9 + 1856903980;
  v23 = -117546963 - v13;
  v19 = v13 ^ (1406172609 * a7 + 1849857309);
  v18 = a5 - ((2 * a5) & 0x76742914) - v13 + 993662090;
  v25 = (a3 ^ 0xF9D7F7BF) + ((2 * a3) & 0xF3AFEF7E) + 2011811324 + v13;
  v14 = 35 * (*v9 ^ 0xFD ^ *v11);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2208) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E2208) ^ 0xFD))] ^ 0xA6]) - 197) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v14 - 4) ^ 0x7Au)) ^ v14) + 25324))(v17);
  return 4294924449;
}

uint64_t FhS8L9pZ83yt(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2260 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * (dword_1EC7E2260 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA7]) - 111);
  v3 = *(v2 - 4);
  v4 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + (35 * ((dword_1EC7E24C8 + v3) ^ 0xFD)) - 12) ^ 0x98u) - 4) ^ (35 * ((dword_1EC7E24C8 + v3) ^ 0xFD))) - 104);
  v5 = &v7[v3 + *v4];
  *(v2 - 4) = 1835632163 * (v5 - 0x5A968D362BDD27FDLL);
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v5) = 1384597421 * ((&v8 - 1264621057 - 2 * (&v8 & 0xB49F69FF)) ^ 0xC2E2B190);
  v10 = 1035309529 - v5;
  v9 = (a2 ^ 0x95EF7DCF) + ((2 * a2) & 0x2BDEFB9E) - v5 + 2127821823;
  v8 = a1;
  LOBYTE(v4) = 35 * ((*v4 - *(v2 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2260) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E2260) ^ 0xFD))] ^ 0xA7]) - 142) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v4 - 12) ^ 0xA6u) - 4) ^ v4) + 24660))(&v8);
  return 4294924449;
}

uint64_t sub_1D4947394()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2228 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * (dword_1EC7E2228 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xB2]) + 31);
  v1 = 35 * ((dword_1EC7E24C8 + *v0) ^ 0xFD);
  v2 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + v1 - 4) ^ 0x3Eu) - 4) ^ v1) - 170);
  v3 = *v0 ^ &v5 ^ *v2;
  *v0 = 1835632163 * v3 - 0x5A968D362BDD27FDLL;
  *v2 = 1835632163 * (v3 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v3) = 583883621 * (((~v6 | 0xBAA5CCC4) + (v6 | 0x455A333B)) ^ 0xBF01C3F3);
  v6[0] = v3 ^ 0x1F;
  v7 = 1768 - v3;
  LOBYTE(v2) = 35 * ((*v2 - *v0) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2228) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E2228) ^ 0xFD))] ^ 0xA7]) - 142) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v2 - 12) ^ 0xA6u) - 4) ^ v2) + 24828))(v6);
  return v8 ^ 0xBEA3DD08;
}

uint64_t sub_1D49475A8(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2530 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (dword_1EC7E2530 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xC9]) + 43);
  v4 = 35 * ((dword_1EC7E24C8 - *v3) ^ 0xFD);
  v5 = *(&off_1F503AD40 + (*(off_1F503AFD0 + (*(off_1F503AF08 + v4 - 12) ^ 0x51u) - 4) ^ v4) - 203);
  v6 = &v9[*v5 - *v3];
  *v3 = 1835632163 * v6 + 0x5A968D362BDD27FDLL;
  *v5 = 1835632163 * (v6 ^ 0x5A968D362BDD27FDLL);
  v7 = 1427277979 * ((&v10 & 0xC176EA3B | ~(&v10 | 0xC176EA3B)) ^ 0xA3E13642);
  v10 = a1;
  v13 = a2;
  v11 = v7 + 295939877 * a3 + 1266701253;
  v12 = -544300315 - v7;
  LOBYTE(v5) = 35 * (*v3 ^ 0xFD ^ *v5);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E2530 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * (dword_1EC7E2530 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xB2]) - 29) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v5 - 8) ^ 0x5Bu) - 4) ^ v5) + 24540))(&v10);
  return 4294924449;
}

uint64_t sub_1D49477D4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2388) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 - dword_1EC7E2388) ^ 0xFD))] ^ 0x51]) - 155);
  v2 = *(v1 - 4);
  v3 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + (35 * ((dword_1EC7E24C8 - v2) ^ 0xFD)) - 8) ^ 0x58u) - 4) ^ (35 * ((dword_1EC7E24C8 - v2) ^ 0xFD))) + 31);
  v4 = 1835632163 * (&v6[v2 + *v3] ^ 0x5A968D362BDD27FDLL);
  *(v1 - 4) = v4;
  *v3 = v4;
  LODWORD(v4) = 585927707 * ((2 * (&v7 & 0x28187020) - &v7 - 672690214) ^ 0x3EA6B904);
  v7 = a1;
  v10 = v4 ^ 0x6EE;
  v9 = v4 - 36;
  LOBYTE(v3) = 35 * ((*v3 - *(v1 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2388) ^ 0xFD)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * ((dword_1EC7E24C8 - dword_1EC7E2388) ^ 0xFD))] ^ 0x5C]) - 7) + 8 * (*(off_1F503AEF8 + (*(off_1F503AE18 + v3 - 4) ^ 0x5Cu)) ^ v3) + 26324))(&v7);
  return v8 ^ 0xBEA3DD08;
}

uint64_t qo0PLbO2vEnVix1GkQeB8LR(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * (dword_1EC7E25D0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (dword_1EC7E25D0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xC9]) + 59);
  v2 = 35 * ((dword_1EC7E24C8 - *v1) ^ 0xFD);
  v3 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + v2 - 8) ^ 0x75u) - 4) ^ v2) - 159);
  v4 = (*v3 + *v1) ^ &v7;
  *v1 = 1835632163 * v4 + 0x2C64D119E1EFE597;
  *v3 = 1835632163 * (v4 ^ 0x5A968D362BDD27FDLL);
  v5 = 2017535981 * ((-568963137 - (v8 | 0xDE164FBF) + (v8 | 0x21E9B040)) ^ 0xF1F0F195);
  v8[0] = v5 + 2956;
  v8[1] = 887882129 * a1 - v5 + 1133207441;
  LOBYTE(v3) = 35 * (*v1 ^ 0xFD ^ *v3);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E25D0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (dword_1EC7E25D0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xC9]) - 40) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v3 - 12) ^ 0xCBu) - 4) ^ v3) + 24604))(v8);
  return v8[2] ^ 0xBEA3DD08;
}

uint64_t N8pdwAfn(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2508) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E2508) ^ 0xFD))] ^ 0xA7]) - 113);
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - *v1) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - *v1) ^ 0xFD))] ^ 0xCB]) - 137);
  v3 = (*v2 - *v1) ^ &v5;
  *v1 = 1835632163 * v3 - 0x5A968D362BDD27FDLL;
  *v2 = 1835632163 * (v3 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v3) = 585927707 * (((&v6 | 0xD889D26D) - (&v6 & 0xD889D26D)) ^ 0x31C8E4B3);
  v7 = v3 ^ 0x4B;
  v8 = a1;
  v9 = v3 + 769;
  LOBYTE(v2) = 35 * ((*v2 - *v1) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E2508) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 - dword_1EC7E2508) ^ 0xFD))] ^ 0xB2]) - 29) + 8 * (*(off_1F503AD60 + (*(off_1F503AF70 + v2 - 4) ^ 0x65u) - 4) ^ v2) + 23900))(&v6);
  return v6 ^ 0xBEA3DD08;
}

uint64_t sub_1D4947E24(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E24E0) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E24E0) ^ 0xFD))] ^ 0x65]) - 224);
  v10 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + *v9) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + *v9) ^ 0xFD))] ^ 0x99]) - 181);
  v11 = (*v10 ^ *v9) - &v14;
  *v9 = (1835632163 * v11) ^ 0x5A968D362BDD27FDLL;
  *v10 = 1835632163 * (v11 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v11) = (a2 ^ 0x1FED7EB7) + ((2 * a2) & 0x3FDAFD6E);
  v12 = 2017535981 * (((~&v15 | 0xF468A672) + (&v15 | 0xB97598D)) ^ 0xDB8E1859);
  v15 = a5;
  v24 = v12 + 2650;
  v25 = a9;
  v26 = a7;
  v21 = (-19 * (((~&v15 | 0x72) + (&v15 | 0x8D)) ^ 0x59)) ^ 0x42;
  v23 = a1;
  v16 = v12 ^ ((a4 ^ 0x3FFCFFDE) - 548438344 + ((2 * a4) & 0x7FF9FFBC));
  v17 = a6 - ((2 * a6) & 0x3F80FD20) + 532709008 + v12;
  v22 = v11 - v12 - 10551329;
  v18 = a3;
  v20 = a8;
  LOBYTE(v9) = 35 * (*v9 ^ 0xFD ^ *v10);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E24E0) ^ 0xFD)) ^ byte_1D4B4E010[byte_1D4B4E810[(35 * ((dword_1EC7E24C8 - dword_1EC7E24E0) ^ 0xFD))] ^ 0x51]) - 252) + 8 * (*(off_1F503AD60 + (*(off_1F503AF70 + v9 - 4) ^ 0x40u) - 4) ^ v9) + 24932))(&v15);
  return v19 ^ 0xBEA3DD08;
}

uint64_t hFQBjnUlBh73NidnyhtgBkR(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E21D0) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E21D0) ^ 0xFD))] ^ 0x58]) + 45);
  v6 = *(v5 - 4);
  v7 = *(&off_1F503AD40 + ((35 * (v6 ^ dword_1EC7E24C8 ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (v6 ^ dword_1EC7E24C8 ^ 0xFD))] ^ 0xC9]) + 9);
  v8 = &v10[*v7 ^ v6];
  *(v5 - 4) = 1835632163 * v8 + 0x5A968D362BDD27FDLL;
  *v7 = 1835632163 * (v8 ^ 0x5A968D362BDD27FDLL);
  v14 = 2017535981 * ((((2 * &v11) | 0x1EDC5200) - &v11 + 1888605952) ^ 0x5F7768D5);
  v15 = v14 ^ a4;
  v12 = a1;
  v13 = a3;
  v11 = v14 ^ 0xD5584439;
  v16 = v14 ^ a2;
  v17 = a5;
  LOBYTE(v7) = 35 * (*(v5 - 4) ^ 0xFD ^ *v7);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E21D0) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E21D0) ^ 0xFD))] ^ 0xB2]) - 29) + 8 * (*(off_1F503AEE8 + (*(off_1F503AFD8 + v7 - 12) ^ 0xA6u) - 4) ^ v7) + 24228))(&v11);
  return 4294924449;
}

uint64_t V1ENnlVTqh9Sf(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = *(&off_1F503AD40 + ((35 * (dword_1EC7E25A8 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * (dword_1EC7E25A8 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x5C]) + 66);
  v12 = *(&off_1F503AD40 + ((35 * (*v11 ^ dword_1EC7E24C8 ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (*v11 ^ dword_1EC7E24C8 ^ 0xFD))] ^ 0xA6]) - 148);
  v13 = &v16[*v12 ^ *v11];
  *v11 = 1835632163 * v13 - 0x5A968D362BDD27FDLL;
  *v12 = 1835632163 * (v13 ^ 0x5A968D362BDD27FDLL);
  LODWORD(v13) = 370149929 * (((v17 | 0x80813A2A) - (v17 | 0x7F7EC5D5) + 2139014613) ^ 0x3C0808CE);
  v27 = 41 * (((v17 | 0x2A) - (v17 | 0xD5) - 43) ^ 0xCE) + 6;
  v26 = a3;
  v24 = (a8 ^ 0xFDF5BFCF) + ((2 * a8) & 0xFBEB7F9E) - v13 + 1469052922;
  v25 = a6 - ((2 * a6) & 0xE0FDDAAE) - v13 + 1887366487;
  v17[1] = a7;
  v17[2] = a9;
  v21 = a10;
  v22 = a11;
  v17[0] = a5;
  v18 = (a4 ^ 0xF7E5B7DB) + ((2 * a4) & 0xEFCB6FB6) - v13 + 1570766830;
  v19 = v13 ^ 0x805;
  v20 = (a2 ^ 0x55AFF7DB) + ((2 * a2) & 0xAB5FEFB6) - v13 - 2768914;
  v28 = a1;
  v14 = 35 * ((*v12 - *v11) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E25A8) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - dword_1EC7E25A8) ^ 0xFD))] ^ 0x99]) - 230) + 8 * (*(off_1F503AD60 + (*(off_1F503AF70 + v14 - 4) ^ 0x3Eu) - 4) ^ v14) + 24508))(v17);
  return v23 ^ 0xBEA3DD08;
}

uint64_t sWBoEyhXQd6FTiLw(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E23B8) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E23B8) ^ 0xFD))] ^ 0xC9]) - 18);
  v9 = 35 * (*v8 ^ dword_1EC7E24C8 ^ 0xFD);
  v10 = *(&off_1F503AD40 + (*(off_1F503AE58 + (*(off_1F503AEA8 + v9 - 4) ^ 0xB2u)) ^ v9) + 20);
  v11 = 1835632163 * (((*v10 ^ *v8) - &v15) ^ 0x5A968D362BDD27FDLL);
  *v8 = v11;
  *v10 = v11;
  v12 = a1 - ((2 * a1) & 0x572BF118826C53C4) - 0x546A0773BEC9D61ELL;
  v13 = 1427277979 * (((&v16 | 0x6C3D0D78BC68B296) - &v16 + (&v16 & 0x93C2F28743974D68)) ^ 0xD881BC9D21009110);
  v21 = a4;
  v17 = 0;
  v18 = 0;
  v16 = (a3 ^ 0xFFFFBD7C) + ((2 * a3) & 0xFFFF7AF8) - v13 + 1017895656;
  v22 = v13 + 9;
  v23 = v13 ^ v12;
  v19 = 0x2208371327174719;
  v25 = v13 + 1017878628;
  v26 = v13 ^ 0x2E6;
  v27 = a8;
  v28 = a2;
  v20 = 89 - v13;
  v34 = 0;
  v30 = a7;
  v31 = a6;
  v32 = v13 ^ ((a5 ^ 0x7EBBDE74) - 1108362768 + ((2 * a5) & 0xFD77BCE8));
  v33 = (859938249 - v13);
  v24 = v13 - 1997706464;
  LOBYTE(v8) = 35 * ((*v10 + *v8) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E23B8) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E23B8) ^ 0xFD))] ^ 0x3E]) - 219) + 8 * (*(off_1F503AFD0 + (*(off_1F503AF08 + v8 - 12) ^ 0x51u) - 4) ^ v8) + 24276))(&v16);
  return v29 ^ 0xBEA3DD08;
}

uint64_t gojqbvrX305gQO(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E25E0) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 - dword_1EC7E25E0) ^ 0xFD))] ^ 0x7A]) - 32);
  v3 = 35 * (*v2 ^ dword_1EC7E24C8 ^ 0xFD);
  v4 = *(&off_1F503AD40 + (*(off_1F503ADC0 + (*(off_1F503AEC8 + v3 - 8) ^ 0x75u) - 4) ^ v3) - 159);
  v5 = (*v4 + *v2) ^ &v7;
  *v2 = 1835632163 * v5 - 0x5A968D362BDD27FDLL;
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v10 = a2;
  v8 = a1;
  v9 = (891395573 * ((((2 * &v8) | 0xA7B7149C) - &v8 - 1406896718) ^ 0xDB93526A)) ^ 0x7AA489C1;
  LOBYTE(v4) = 35 * ((*v4 - *v2) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E25E0) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E25E0) ^ 0xFD))] ^ 0xA6]) - 197) + 8 * (*(off_1F503AD60 + (*(off_1F503AF70 + v4 - 4) ^ 0x40u) - 4) ^ v4) + 25428))(&v8);
  return v11;
}

uint64_t Ud5PNQt99i(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2510) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 + dword_1EC7E2510) ^ 0xFD))] ^ 0x40]) - 42);
  v2 = *(v1 - 4);
  v3 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + v2) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + v2) ^ 0xFD))] ^ 0xC9]) + 9);
  v4 = (*v3 - v2) ^ &v6;
  *(v1 - 4) = 1835632163 * v4 + 0x2C64D119E1EFE597;
  *v3 = 1835632163 * (v4 ^ 0x5A968D362BDD27FDLL);
  v7 = a1;
  v9 = (891395573 * (((&v7 | 0x540B6BAD) - (&v7 & 0x540B6BAD)) ^ 0xDC43B389)) ^ 0x43B41B37;
  LOBYTE(v3) = 35 * (*(v1 - 4) ^ 0xFD ^ *v3);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2510) ^ 0xFD)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * ((dword_1EC7E24C8 + dword_1EC7E2510) ^ 0xFD))] ^ 0x5C]) - 7) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v3 - 8) ^ 0x75u) - 4) ^ v3) + 24332))(&v7);
  return v8;
}

uint64_t lgv67dUsckqCBq9YUoNoW(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *(&off_1F503AD40 + ((35 * (dword_1EC7E21F0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * (dword_1EC7E21F0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x7A]) - 113);
  v7 = *(v6 - 4);
  v8 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * ((dword_1EC7E24C8 + v7) ^ 0xFD)) - 4) ^ 0xA7u) - 4) ^ (35 * ((dword_1EC7E24C8 + v7) ^ 0xFD))) - 93);
  v9 = 1835632163 * (&v11[*v8 - v7] ^ 0x5A968D362BDD27FDLL);
  *(v6 - 4) = v9;
  *v8 = v9;
  LODWORD(v9) = 2017535981 * ((((&v12 | 0x9198A8E) ^ 0xFFFFFFFE) - (~&v12 | 0xF6E67571)) ^ 0x26FF34A4);
  v15 = v9 ^ a2;
  v16 = v9 ^ a5;
  v19 = a6;
  v18 = v9 ^ a3;
  v13 = a1;
  v14 = a4;
  v12 = v9 ^ 0xD5584439;
  LODWORD(v8) = 1835632163 * (*(v6 - 4) ^ 0x2BDD27FD ^ *v8);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - dword_1EC7E21F0) ^ 0xFD)) ^ byte_1D4B4E110[byte_1D4B4E910[(35 * ((dword_1EC7E24C8 - dword_1EC7E21F0) ^ 0xFD))] ^ 0x40]) - 131) + 8 * (*(off_1F503AE58 + (*(off_1F503AEA8 + v8 - 4) ^ 0x7Au)) ^ v8) + 24844))(&v12);
  return v17;
}

uint64_t sub_1D4948F30(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E25F0) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E25F0) ^ 0xFD))] ^ 0xB2]) - 15);
  v6 = *(v5 - 4);
  v7 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 - v6) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 - v6) ^ 0xFD))] ^ 0xC9]) + 9);
  v8 = (*v7 + v6) ^ &v13;
  *(v5 - 4) = 1835632163 * v8 - 0x5A968D362BDD27FDLL;
  *v7 = 1835632163 * (v8 ^ 0x5A968D362BDD27FDLL);
  v12 = *a4;
  LODWORD(v8) = (a3 ^ 0xFFFEEE7E) + ((2 * a3) & 0xFFFDDCFC);
  v9 = 1661262079 * ((~v14 & 0x1016E07 | v14 & 0xFEFE91F8) ^ 0x9731D1E0);
  v20 = 0;
  v21 = a1;
  v15 = v9 ^ 0x403;
  v16 = a2;
  v17 = &v12;
  v24 = v8 - v9 + 1036345340;
  v19 = 0;
  v23 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v22 = ((~v14 & 7 | v14 & 0xF8) ^ 0xE0) - 72;
  LOBYTE(v5) = 35 * (*(v5 - 4) ^ 0xFD ^ *v7);
  (*(*(&off_1F503AD40 + ((35 * (dword_1EC7E25F0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (dword_1EC7E25F0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA6]) - 197) + 8 * (*(off_1F503AD60 + (*(off_1F503AF70 + v5 - 4) ^ 0x40u) - 4) ^ v5) + 24836))(v14);
  v10 = v18;
  *a4 = v12;
  return v10 ^ 0xBEA3DD08;
}

uint64_t cRLCDS4RDykIYKucqwdbVFlu(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E24D0) ^ 0xFD)) ^ byte_1D4B4DF10[byte_1D4B4E610[(35 * ((dword_1EC7E24C8 + dword_1EC7E24D0) ^ 0xFD))] ^ 0x5B]) - 72);
  v3 = *(v2 - 4);
  v4 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + v3) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + v3) ^ 0xFD))] ^ 0xA6]) - 148);
  v5 = (*v4 ^ v3) - &v8;
  *(v2 - 4) = 1835632163 * (v5 - 0x5A968D362BDD27FDLL);
  *v4 = 1835632163 * (v5 ^ 0x5A968D362BDD27FDLL);
  v6 = 370149929 * ((((2 * &v9) | 0xAD0A4866) - &v9 - 1451566131) ^ 0xEA0C16D7);
  v9 = a1;
  v10 = (a2 ^ 0xFFBDFAAF) + ((2 * a2) & 0xFF7BF55E) - v6 + 1341869426;
  v11 = v6 - 1626118877;
  LOBYTE(v4) = 35 * ((*v4 - *(v2 - 4)) ^ 0xFD);
  (*(*(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E24D0) ^ 0xFD)) ^ byte_1D4B4E710[byte_1D4B4E410[(35 * ((dword_1EC7E24C8 + dword_1EC7E24D0) ^ 0xFD))] ^ 0x5C]) - 7) + 8 * (*(off_1F503ADC0 + (*(off_1F503AEC8 + v4 - 8) ^ 0x75u) - 4) ^ v4) + 24388))(&v9);
  return 4294924449;
}

void sub_1D4949634(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 169829299 * ((((2 * a1) | 0xCF29BBC) - a1 + 2038870562) ^ 0x4F0FA83D);
  v3[0] = v1 + 1661262079 * (((v3 | 0x24B69579) - v3 + (v3 & 0xDB496A80)) ^ 0xB2862A9E) + 684;
  v2 = *(&off_1F503AD40 + (v1 ^ 0x87B)) - 4;
  (*&v2[8 * v1 + 8712])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4949790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v6 + 8;
  *(a3 + (v11 ^ a5 ^ v7) + v5) = *(v9 + (v11 ^ a5 ^ v7) + v5);
  return (*(v10 + 8 * ((112 * (a4 != v11)) ^ v8)))();
}

uint64_t sub_1D4949798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  *(*(v37 - 168) + 8) = *(v37 - 176);
  v38 = *(v37 - 212);
  (*(v36 + 8 * a35))(**(&off_1F503AD40 + v35 - 1001), *(v37 - 192), *(v37 - 176));
  return (*(v36 + 8 * (((v38 == (v35 ^ 0xBEA3D90B)) * ((v35 - 266386055) & 0xFE0BFD7 ^ 0x686)) ^ (v35 + 572))))();
}

uint64_t sub_1D49497F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v30 - 208) = -1096557304;
  HIDWORD(a24) = 1;
  return (*(v29 + 8 * ((108 * (*(*(v30 - 184) + 12) >= (v28 - 399))) ^ (v28 + 1307))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, *(v30 - 184) + 12, a24, a25, a26, a27, a28);
}

uint64_t sub_1D49499A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = v14;
  v18 = (*(v17 + 8 * (v16 ^ 0x967)))(v15, 3886098504);
  return (*(v17 + 8 * (((v18 == 0) * (((v16 - 918) | 0xA04) + (v16 ^ 0xFFFFF186))) ^ v16)))(2147482550, 336, 214, 1305, a5, &off_1F503AD40, a7, a8, a9, a10, a11, v20, a13, a14, a7, a5, a8);
}

uint64_t sub_1D4949A44@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 ^ (v2 + 816);
  v7 = 7 * (v6 ^ 0x76Bu);
  *(a1 + (v7 ^ 0xFFFFFFFFFFFFFFB2) + v3) = *(v1 + (v7 ^ 0xFFFFFFFFFFFFFFB2) + v3);
  return (*(v5 + 8 * ((232 * ((v7 ^ 0xFFFFFFFFFFFFFFB2) + v3 != 0)) ^ v6)))();
}

uint64_t sub_1D4949A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = (*(a23 + 36) - a15);
  v26 = (v23 - 1042) | 0x412u;
  v44 = (v26 ^ 0x101BD55AAE8CB626) + v25 + ((v25 < 0xA13A290) << 32);
  v27 = ((v25 ^ 0x555E4DD6) - 1598943046) ^ v25 ^ ((v25 ^ 0xD14FACC6) + 614724010) ^ ((v25 ^ 0x716DBC5F) - 2071862991) ^ ((v25 ^ 0xFF6FFFDF) + 176399025);
  LODWORD(v43) = HIWORD(v27) ^ 0x13;
  HIDWORD(v43) = HIBYTE(v27) ^ 0xA;
  LODWORD(v42) = v27 ^ 0xFFFFFF90;
  HIDWORD(v42) = (v27 >> 8) ^ 0xFFFFFFA2;
  HIDWORD(a16) = v25 - 169058960;
  HIDWORD(a12) = v25 - 169058956;
  LODWORD(v41) = (v23 + 884583749) & 0xCB464D6F;
  HIDWORD(v41) = v41 ^ 0x7C2;
  v40 = *a23 - 7;
  v39 = *a23 - 16;
  v28 = (v26 - 1525) | 0x814;
  v29 = v26 + 365;
  v30 = (*(v24 + 8 * (v26 + 1539)))(16, 3886098504);
  return (*(v24 + 8 * (((v30 != 0) * (v28 ^ 0x89F)) ^ v29)))(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, a12, v44 - 0x101BD55AB8A052E0, v41, a15, a16, v42, v43, v44);
}

uint64_t sub_1D4949BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v25 = (v21 + 2069) | 0x205;
  *(v22 + 8) = a21;
  *(v22 + 12) = 0;
  v26 = (*(v23 + 8 * (v25 ^ 0x60A)))(**(&off_1F503AD40 + (v25 ^ 0xA7D)), a19, a21);
  return (*(v23 + 8 * (((v24 == -1096557304) * ((v25 + 516439316) & 0xE137BAFE ^ 0x118)) ^ (v25 - 2605))))(v26);
}

uint64_t sub_1D4949C90()
{
  (*(v3 + 8 * (v4 & 0xBC348DFB ^ 0x5A0)))(v2);
  *v0 = 0;
  return v1(2027685708);
}

uint64_t sub_1D4949DC8()
{
  (*(v4 + 8 * (v2 + 2171)))(v1);
  *v3 = 0;
  return v0(117, 2192);
}

uint64_t sub_1D4949EE4()
{
  v7 = (v2 - 32);
  v8 = (v3 - 32);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * (((((v4 + 32) | (v0 + v5 - 32)) >> 63) * (v1 - 1524)) ^ v1)))();
}

uint64_t sub_1D4949FF8()
{
  v5 = v1 ^ (v0 - 779) ^ (v2 + 231835195) & 0xF22E775F;
  v7 = v3 < ((v2 + 231835195) ^ 0xDD180BBu) - 2796 || v5 < 8;
  return (*(v4 + 8 * ((227 * v7) ^ v2)))();
}

uint64_t sub_1D494A1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, uint64_t a14, int a15, uint64_t a16, char *a17, uint64_t *a18, int a19, int a20, int a21, uint64_t a22, uint64_t a23, int *a24, int a25)
{
  v31 = (*(v26 + 8 * (v29 ^ 0xBDE)))();
  v32 = v29 + 123 + v27 + v31 - ((2 * v31) & 0xC842AB16);
  v33 = (*(v26 + 8 * (v29 ^ 0xBDD)))(a1);
  v34 = 1661262079 * ((2 * (&a15 & 0x718F4797AF53FAE8) - &a15 + 0xE70B86850AC0512) ^ 0xF9E4DEB9C69CBAF5);
  a25 = ((((v32 ^ 0x355B8FEE) - 895193070) ^ ((v32 ^ 0x603CD832) - 1614600242) ^ ((v32 ^ 0xB1460257) + 1320811945)) + 856952804) ^ v34;
  a16 = v33;
  a17 = &a12;
  a18 = &a14;
  a23 = v34 + 0x57324DBEE90CD6CDLL * a10 + 0x7D45F3A87ACAC8ACLL;
  a24 = &a13;
  a20 = v34 + (v28 ^ 0x232FDEFF) + ((2 * v28) & 0x465FBDFE) - 17566221;
  a21 = v34 + (v25 ^ 0x72AFD6FF) - 1351352845 + ((v25 << ((v29 - 10) ^ 0xC)) & 0x655FADFE);
  a22 = v34 + 0x7CA247E1512A601 * a9 + 0x4EE3544DD16C1C52;
  a15 = v29 + 123 - v34 + 347;
  v35 = (*(v26 + 8 * ((v29 + 123) ^ 0xB42)))(&a15);
  if (a14)
  {
    v36 = a13 == 0;
  }

  else
  {
    v36 = 1;
  }

  v38 = !v36 && a19 == -1096557304;
  return (*(v26 + 8 * ((82 * v38) ^ (v29 + 123))))(v35);
}

uint64_t sub_1D494A450@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  HIDWORD(a5) = *(a8 + 40);
  v16 = a1 - 126;
  HIDWORD(a9) = (a15 + 1666164252) & 0x9CB0598F;
  LODWORD(v27) = (a15 + 1574612193) & 0xA2254A43;
  HIDWORD(v27) = v27 ^ 0x6FF;
  v17 = a1 + 2942;
  v18 = (*(v15 + 8 * (a1 + 3104)))(16, 3886098504);
  LODWORD(a10) = 1096582252;
  return (*(v15 + 8 * ((39 * ((v16 ^ (v18 == 0)) & 1)) ^ v17)))(v18, v19, v20, v21, v22, v23, v24, v25, a2, 0x53DDE2AC5E43E8D2, a4, a5, v27, a7, a8, a9, a10, a11);
}

uint64_t sub_1D494A534@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, _DWORD *a3@<X4>, char a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v14 = *a1;
  v15 = a14 - ((2 * a14) & 0x64403082) + 840964161;
  v16 = ((*a3 << ((a4 - 5) ^ 0xDA)) & 0x2BD7DCEC) + (*a3 ^ 0x15EBEE76) - 367783542;
  *(*a1 + v16) = HIBYTE(v15) ^ 0x32;
  *(v14 + v16 + 1) = BYTE2(v15) ^ 0x20;
  *(v14 + v16 + 2) = BYTE1(v15) ^ 0x18;
  *(v14 + v16 + 3) = v15 ^ 0x41;
  *a3 += 4;
  return a2();
}

uint64_t sub_1D494A5F4@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (((v3 - 1621) | 0x12) + 1280)) ^ (v3 - 1032))))();
}

uint64_t sub_1D494A660(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0xA6C)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((((v1 - 1285) | 0xA1) + 70) ^ (v1 + 496015850) & 0xE26F61B1)) ^ v1)))();
}

uint64_t sub_1D494A6FC()
{
  *v0 = 0;
  v0[1] = 0;
  v4 = (*(v3 + 8 * (v1 + 2549)))(v0);
  return v2(v4);
}

uint64_t sub_1D494A87C(uint64_t a1)
{
  v4 = (a1 + v1);
  *v4 = 0u;
  v4[1] = 0u;
  return (*(v3 + 8 * ((511 * (v1 == 160)) ^ v2)))();
}

uint64_t sub_1D494A8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *v26 = *(v29 - 212) ^ 0xBEA3DD08;
  *a9 = ((v27 - 2220) | 0xB4) ^ 0xBEA3DDFD ^ *(v29 - 188);
  return (*(v28 + 8 * (((((((v27 + 84) | 0xB4) - 82) ^ (*(v29 - 168) == 0)) & 1) * (((((v27 - 2220) | 0xB4) + 2060837642) & 0x852A1F65) - 796)) ^ (((v27 - 2220) | 0xB4) + 1197))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1D494A930@<X0>(uint64_t (*a1)(void)@<X2>, char a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, _DWORD *a9, uint64_t a10, uint64_t *a11)
{
  v11 = *a11;
  v12 = a7 - ((a7 << ((a2 - 111) ^ 0x5E)) & 0x64403082) + 840964161;
  v13 = ((2 * *a9) & 0x79D7DA7C) + (*a9 ^ 0x3CEBED3E) - 1022094654;
  *(*a11 + v13) = HIBYTE(v12) ^ 0x32;
  *(v11 + v13 + 1) = BYTE2(v12) ^ 0x20;
  *(v11 + v13 + 2) = BYTE1(v12) ^ 0x18;
  *(v11 + v13 + 3) = v12 ^ 0x41;
  *a9 += 4;
  return a1();
}

uint64_t sub_1D494AB84(uint64_t a1, uint64_t a2)
{
  *(v3 + 8) = 4096;
  *v2 = v3;
  return v4(a1, a2, 1699082897, 1490920670, 2804047867, 840962581, 2147480998, 3296);
}

uint64_t sub_1D494AD2C(uint64_t a1, int a2)
{
  v8 = (v4 - 32);
  v9 = v6 - 32;
  v10 = *(v9 + v2);
  *(v8 - 1) = *(v9 + v2 - 16);
  *v8 = v10;
  return (*(v7 + 8 * (((v5 == 32) * (((v3 - 751) | a2) - 133)) ^ v3)))();
}

uint64_t sub_1D494AD3C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(v1 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((3213 * (((v3 - 1069) ^ 0x76FLL) == (v2 & 0xFFFFFFE0))) ^ (v3 - 1030))))();
}

uint64_t sub_1D494ADB4()
{
  v3 = (v0 + 435702683) & 0xE607BCEF;
  v4 = *(v2 - 200);
  *(v2 - 232) = *(v1 + 8 * v0);
  *(v2 - 176) = 0;
  *(v2 - 192) = 0;
  v5 = *(&off_1F503AD40 + (v3 - 2204)) - 12;
  (*(v1 + 8 * (v3 ^ 0x4AC)))(v5);
  v6 = *v4;
  v7 = 891395573 * ((((v2 - 144) | 0x9AC8DBB3) + (~(v2 - 144) | 0x6537244C)) ^ 0x12800396);
  v8 = v7 + 994577233 + *(v4 + 3) * ((v3 ^ 0x1CB) + 1341021621);
  *(v2 - 136) = (972028385 * **(&off_1F503AD40 + (v3 - 2183)) + 907749015) ^ v7;
  *(v2 - 132) = v8;
  *(v2 - 128) = v3 - v7 - 1774;
  *(v2 - 120) = v2 - 192;
  *(v2 - 112) = v6;
  *(v2 - 144) = v2 - 176;
  (*(v1 + 8 * (v3 + 957)))(v2 - 144);
  v9 = *(v2 - 104);
  v10 = (*(v1 + 8 * (v3 + 857)))(v5);
  return (*(v1 + 8 * (((v9 == 1449251652) * (v3 ^ 0x372)) ^ (v3 - 324))))(v10);
}

uint64_t sub_1D494AEA8()
{
  v4 = ((((4 * v0) ^ 0x1DB8) + 1035908751) ^ v1) + ((2 * v1) & 0x7B7D6FFE);
  v5 = *(*v2 + v4 + ((v0 + 819) ^ 0xC2414264)) << 24;
  v4 -= 1035910556;
  v6 = v5 | (*(*v2 + (v4 + 1438)) << 16);
  v7 = *(*v2 + (v4 + 1439));
  v8 = *(*v2 + (v4 + 1440));
  *(v2 + 12) = v1 + 4;
  return (*(v3 + 8 * ((81 * ((v6 | (v7 << 8) | v8) - 1096557304 - 2 * ((v6 | (v7 << 8) | v8) & 0x3EA3DD1E ^ v8 & 0x16) == -1096557304)) ^ v0)))();
}

uint64_t sub_1D494AF68@<X0>(uint64_t (*a1)(void)@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, _DWORD *a34)
{
  v35 = (a33 ^ 0x8A3C7A36) & (2 * (a33 & 0xCCBE6237)) ^ a33 & 0xCCBE6237;
  v36 = ((2 * (a33 ^ 0x1274BE1A)) ^ 0xBD95B85A) & (a33 ^ 0x1274BE1A) ^ (2 * (a33 ^ 0x1274BE1A)) & 0xDECADC2C;
  v37 = v36 ^ 0x424A4425;
  v38 = (v36 ^ 0x14809808) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0x7B2B70B4) & v37 ^ (4 * v37) & 0xDECADC2C;
  v40 = (v39 ^ 0x5A0A5020) & (16 * v38) ^ v38;
  v41 = ((16 * (v39 ^ 0x84C08C09)) ^ 0xECADC2D0) & (v39 ^ 0x84C08C09) ^ (16 * (v39 ^ 0x84C08C09)) & 0xDECADC20;
  v42 = v40 ^ 0xDECADC2D ^ (v41 ^ 0xCC88C000) & (v40 << 8);
  v43 = *v34;
  v44 = a33 ^ (2 * ((v42 << 16) & 0x5ECA0000 ^ v42 ^ ((v42 << 16) ^ 0x5C2D0000) & (((v41 ^ 0x12421C2D) << 8) & 0x5ECA0000 ^ 0x14020000 ^ (((v41 ^ 0x12421C2D) << 8) ^ 0x4ADC0000) & (v41 ^ 0x12421C2D))));
  v45 = ((2 * *a34) & 0xBFDFD0EC) + 537925514 + ((((a2 + 800705226) & 0xD04633EE) - 537926256) ^ *a34);
  *(*v34 + v45 + 1) = BYTE2(v44) ^ 0x3B;
  *(v43 + v45 + 2) = BYTE1(v44) ^ 0xDA;
  *(v43 + v45) = HIBYTE(v44) ^ 0xC9;
  *(v43 + v45 + 3) = v44 ^ 0x6D;
  *a34 += 4;
  return a1();
}

uint64_t sub_1D494B19C()
{
  v5 = (*(v4 + 8 * (v1 ^ 0xF74)))(v0);
  *v2 = 0;
  return v3(v5);
}

uint64_t sub_1D494B290(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1 - 169829299 * (((a1 ^ 0x5937D2A6 | 0x759C0722) - (a1 ^ 0x5937D2A6) + ((a1 ^ 0x5937D2A6) & 0x8A63F8DD)) ^ 0xE5DD3067) + 2041212327;
  v6 = v4 + 1661262079 * (((&v6 | 0x85F12330) - (&v6 | 0x7A0EDCCF) + 2047794383) ^ 0x13C19CD7) + 2551;
  v9 = -(((&v6 | 0x30) - (&v6 | 0xCF) - 49) ^ 0xD7) ^ 0x8D;
  v7 = v2;
  v8 = v3;
  result = (*(*(&off_1F503AD40 + v4) + 8 * v4 + 25972))(&v6);
  *(a1 + 24) = v10 ^ 0xBEA3DD08;
  return result;
}

void sub_1D494B3D4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 20) - 912648571 * ((2 * (a1 & 0x398B4F67) - a1 + 1182052504) ^ 0x9AB9FCAD);
  v3[0] = v1 + 1661262079 * (((v3 | 0x1D8DDD97) - v3 + (v3 & 0xE2722268)) ^ 0x8BBD6270) + 587;
  v2 = *(&off_1F503AD40 + (v1 ^ 0x8DA)) - 4;
  (*&v2[8 * v1 + 7936])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D494B50C@<X0>(unint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = ((v3 - 1505) ^ a1) + v2;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((56 * (v6 == 0)) ^ v3)))();
}

uint64_t sub_1D494B5C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  *(a3 + v5 + v3) = *(a2 + v5);
  v10 = ((v5 + 1) ^ v6) == ((v4 + v7) & v8) + a1;
  return (*(v9 + 8 * ((v10 | (4 * v10)) ^ v4)))();
}

uint64_t sub_1D494B604@<X0>(uint64_t a1@<X8>)
{
  v5 = (((v3 - 1419) | 0xB8u) ^ 0xFFFFFFFFFFFFFF00) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((990 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1D494B78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 8) = 4096;
  **(v5 - 208) = v3;
  return v4(*(v5 - 196), a2, a3, 246);
}

uint64_t sub_1D494B8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(v19 + 8 * (v18 ^ 0x614u)))(a9, @"DD04WvpO", v17);
  v20 = (*(v19 + 8 * (v18 + 482)))(v17);
  return (*(v19 + 8 * (((a17 != 0) * ((((v18 - 863804627) & 0x337C9BFA) - 384) ^ 0x876)) ^ v18)))(v20);
}

uint64_t sub_1D494B960@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 16);
  v6 = *(a1 + v1 - 16);
  *(v5 - 1) = *(a1 + v1 - 32);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((v2 | 0x200) + 557)) ^ (v2 | 0x200))))();
}

uint64_t sub_1D494B9B0(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x78D)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 - 605276160) ^ 0xDBEC4040) + ((v1 - 605276160) & 0x2413BFBF) + 146)) ^ v1)))();
}

uint64_t sub_1D494BA74@<X0>(int a1@<W1>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X3>, _DWORD *a4@<X4>, int a5@<W8>)
{
  v5 = *a3;
  v6 = a1 - ((a5 + 1681926275) & (2 * a1)) + 840964161;
  v7 = ((2 * *a4) & 0xAFFFF67E) + (*a4 ^ 0x57FFFB3F) - 1476393791;
  *(*a3 + v7) = HIBYTE(v6) ^ 0x32;
  *(v5 + v7 + 1) = BYTE2(v6) ^ 0x20;
  *(v5 + v7 + 2) = BYTE1(v6) ^ 0x18;
  *(v5 + v7 + 3) = v6 ^ 0x41;
  *a4 += 4;
  return a2();
}

uint64_t sub_1D494BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v32 - 208) = *(a30 + 32);
  *v30 = 0;
  return v31(a1, a2, a3, a4, a5, a6, 79);
}

uint64_t sub_1D494BC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  v33 = (v28 + 206981977) & 0xF3A9B6EF;
  v34 = *(v32 - 192);
  return (*(v29 + 8 * (((v30 + (a8 ^ 0xFCEBFB6E) + ((2 * a8) & 0xF9D7F6DC) + 1069521424 + v33 + 742 + (*(v34 + 12) ^ 0x6EE6EAEFD3FFFAA8) + ((2 * *(v34 + 12)) & 0x1A7FFF550uLL) - 0x6EE6EAEFD3FFFAA8 < v31 + 1743) * ((107 * (v33 ^ 0x2E5)) ^ 0xF7D)) ^ (v33 + 507))))(a1, a2, a3, a4, a5, v34, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, *a26);
}

uint64_t sub_1D494C16C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 - 2165) | 0x858;
  v6 = (v5 - 2386);
  *(a1 + v2 + v6 - 173) = *(v1 + v2 + v6 - 173);
  return (*(v4 + 8 * ((997 * (v2 + v6 != 173)) ^ v5)))();
}

uint64_t sub_1D494C1A8@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 ^ 0x5FC7808Bu;
  v7 = (((v6 + 412) - 3102) ^ v3) + v2;
  *(a1 - 7 + v7) = *(v1 - 7 + v7);
  return (*(v5 + 8 * ((459 * (((v6 + 4294964599) & v2) - 8 == v3)) ^ v6)))();
}

uint64_t sub_1D494C20C@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == (v3 - 1841) - 1033) * a1) ^ v3)))();
}

uint64_t sub_1D494C2A4()
{
  v5 = v0 ^ v3;
  v7 = v1 < 0x20 || v5 < (v2 ^ 0xE26u) - 2687;
  return (*(v4 + 8 * ((v7 * ((v2 ^ 0xFC3) - 2834)) | v2)))();
}

uint64_t sub_1D494C4C0@<X0>(uint64_t a1@<X8>)
{
  v8 = v3 + 32;
  v9 = (v6 ^ v8) + v2;
  v10 = *(v1 + v9 - 15);
  v11 = *(v1 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v7 + 8 * ((4 * (v5 != v8)) | (8 * (v5 != v8)) | (v4 + 329))))();
}

uint64_t sub_1D494C508()
{
  v3 = 7 * (v0 ^ 0xA32u) + (*(v1 + 12) ^ 0x7FF5DFF6DEEFFFF3) + ((2 * *(v1 + 12)) & 0x1BDDFFFE6) - 0x7FF5DFF641138186;
  v5 = v3 < 0x9DDC89A6 || v3 > *(v1 + 8) + 2648476070u;
  return (*(v2 + 8 * ((v5 * (((v0 - 2963) | 0x220) - 461)) ^ v0)))();
}

uint64_t sub_1D494C59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v4 + 779) ^ 0xFFFFFFFFFFFFF3C1) + v3;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6 + v2;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((118 * ((v3 & 0xFFFFFFE0) == 32)) ^ v4)))();
}

uint64_t sub_1D494C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v28 = v19;
  v23 = (*(v22 + 8 * (v21 ^ 0x7F0)))(v20, 3886098504);
  return (*(v22 + 8 * (((((v23 == 0) ^ v21) & 1) * (((v21 + 554702027) | 0x86465500) ^ 0xA7567512)) | v21)))(v23, v24, v25, v26, a5, 3563, 2147486654, 55, a9, a10, v28, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_1D494C684()
{
  v3 = (*(v1 + 12) ^ 0xDF69FF7FE3AFF2FELL) + ((*(v1 + 12) << ((v0 + 64) & 0xEB ^ 0xE8u)) & 0x1C75FE5FCLL) + 0x209600807B4031E3;
  v5 = v3 < (v0 - 2107) + 1592796251 || v3 > *(v1 + 8) + 1592796381;
  return (*(v2 + 8 * ((85 * v5) ^ v0)))();
}

uint64_t sub_1D494C730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26)
{
  v29 = (*(v27 + 8 * (v26 + 1409)))(*(v28 - 156) ^ 0xBEA3DD08, 3886098504);
  *a26 = v29;
  return (*(v27 + 8 * (((((v26 + 65) ^ (v29 == 0)) & 1) * (v26 ^ 0x723)) ^ v26)))();
}

uint64_t sub_1D494C85C@<X0>(uint64_t a1@<X8>)
{
  v9 = v4 + 32;
  v10 = (v9 ^ v7 ^ v3) + v2;
  v11 = *(v1 + v10 - 15);
  v12 = *(v1 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (v5 | ((v6 == v9) << 9))))();
}

uint64_t sub_1D494C864@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v4 = a2 - 8;
  v5 = a2 - 1;
  if (v2 == v3 - 1741)
  {
    v5 = v4;
  }

  *(result + 16) = v5;
  return result;
}

uint64_t sub_1D494C97C@<X0>(uint64_t a1@<X8>)
{
  v8 = (v6 ^ v3) + v4;
  *(a1 + v8) = *(v1 + v8);
  return (*(v7 + 8 * (((v8 != 0) * v5) ^ v2)))();
}

uint64_t sub_1D494C9A4()
{
  v5 = v1 ^ v0;
  v7 = v3 > 0x1F && v5 >= (v2 - 394) - 1193;
  return (*(v4 + 8 * ((121 * v7) ^ v2)))();
}

uint64_t sub_1D494CA30@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v3) ^ v1)))();
}

uint64_t sub_1D494CB44@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W8>)
{
  v9 = ((a5 << (45 * (v5 ^ 0x24) - 89)) & a2) + (a5 ^ a1) - 2109731007;
  v10 = (*(*v6 + v9) << 24) | (*(*v6 + v9 + 1) << 16) | (*(*v6 + v9 + 2) << 8);
  v11 = *(*v6 + v9 + 3);
  *v8 = (v10 | v11) - 1096557304 - 2 * ((v10 | v11) & a3 ^ v11 & a4);
  *(v6 + 12) += 4;
  return v7();
}

uint64_t sub_1D494CBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v15 - 136) = a12;
  *(v15 - 144) = v12 + 277 + 1661262079 * ((2 * (v14 & 0x662C80D0) - v14 + 433291049) ^ 0x8FE3C0CE) - 1496398974;
  (*(v13 + 8 * (v12 + 2239)))(v15 - 144);
  v16 = (*(v13 + 8 * ((v12 + 277) ^ 0x8AB)))(**(&off_1F503AD40 + v12 - 999), *(&off_1F503AD40 + ((v12 + 277) & 0x27CCE342)) - 4, a11);
  *(v15 - 208) = v16 - 1096557295 - ((2 * v16) & 0x7D47BA10);
  *(v15 - 136) = a12;
  *(v15 - 144) = (v12 + 634665675) ^ (1427277979 * (((v14 | 0x20FF6F33) + (~v14 | 0xDF0090CC)) ^ 0xBD974CB4));
  v17 = (*(v13 + 8 * (v12 + 2192)))(v15 - 144);
  v18 = *(v13 + 8 * (((*(v15 - 208) == -1096557295) * (55 * ((v12 + 277) ^ 0x4EC) + ((v12 - 397) ^ 0xFFFFFFBF))) ^ (v12 + 277)));
  *(v15 - 208) = -1096557304;
  return v18(v17);
}

uint64_t sub_1D494CE10@<X0>(uint64_t a1@<X8>)
{
  v6 = ((((v4 - 397) | 0x105u) - 774) ^ v3) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * (v4 ^ (16 * ((v2 & 0xFFFFFFF8) - 8 == v3)))))();
}

uint64_t sub_1D494CEA4@<X0>(uint64_t a1@<X8>)
{
  v4 = *a1 + v2 == 0;
  *(a1 + 12) = v2 + 8;
  v5 = !v4;
  return (*(v3 + 8 * ((v5 * (((v1 - 1563) | 0x320) ^ 0x346)) ^ v1)))();
}

uint64_t sub_1D494CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  *(v18 + 8) = 4096;
  *v19 = v18;
  return v20(2743, a18, a3, a4, a16);
}

uint64_t sub_1D494CF2C@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 7 + ~v2 + v1) = *(a1 - 7 + ~v2 + v1);
  v6 = (((v3 - 1263) | 0x3BCu) ^ 0x3F4) + v2 == (v1 & 0xFFFFFFF8);
  return (*(v5 + 8 * (((8 * v6) | (16 * v6)) ^ v3)))();
}

uint64_t sub_1D494D008()
{
  v5 = 41 * (v0 ^ 0xE);
  *(v1 + 8) = *(v4 - 148);
  v6 = (v5 - 2653) | 0x19;
  v7 = (*(v2 + 8 * (v5 + 270)))(**(&off_1F503AD40 + (v5 & 0x2F34E03A)), *(v4 - 160), *(v4 - 148));
  return (*(v2 + 8 * (((v3 == -1096557304) * (((v6 + 2551) | 0x4D) + ((v6 - 1119650076) & 0x42BC8B5F) - 4375)) ^ v6)))(v7);
}

void sub_1D494D43C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56) - 2017535981 * (((a1 | 0x9633FFEF) - a1 + (a1 & 0x69CC0010)) ^ 0x462ABE3A);
  v3[0] = v1 + 1661262079 * ((2 * (v3 & 0xACCA768) - v3 + 1966299283) ^ 0xE303E774) + 204;
  v2 = *(&off_1F503AD40 + v1 - 2649) - 4;
  (*&v2[8 * v1 + 4872])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D494D58C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(v1 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  LODWORD(v6) = ((v3 - 592) ^ 0x2FBLL) == (v2 & 0xFFFFFFE0);
  return (*(v4 + 8 * (((2 * v6) | (v6 << 9)) ^ v3)))();
}

void sub_1D494D608(unsigned int *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  *v18 = (v19 - 2022) ^ 0xBEA3DC0F ^ *(v20 - 212);
  *a1 = *(v20 - 188) ^ 0xBEA3DD08;
  sub_1D494C45C(a18);
}

uint64_t sub_1D494D77C@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 10;
  v7 = (v3 ^ 0xFFFFFFFFFFFFFB06 ^ (v6 + 294672690) & 0xEE6FA7FD) + v2;
  *(a1 - 7 + v7) = *(v1 - 7 + v7);
  return (*(v5 + 8 * ((26 * ((v2 & 0xFFFFFFF8) - 8 != v3)) ^ v6)))();
}

uint64_t sub_1D494D878@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((47 * (v5 == (v3 - 440) - 351)) ^ v3)))();
}

uint64_t sub_1D494D928()
{
  (*(v3 + 8 * ((v4 & 0xE1F37BEF) + 2383)))(v1);
  *v0 = 0;
  return v2(229);
}

uint64_t sub_1D494D970()
{
  *v1 = 0;
  v1[1] = 0;
  v4 = (*(v3 + 8 * (v2 + 1414)))(v1);
  return v0(v4);
}

uint64_t sub_1D494D9A0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 47 * (a1 ^ 0xD9);
  v7 = (*(v5 + 8 * (v6 ^ 0x5C2)))(16, 3886098504);
  return (*(v5 + 8 * (((v7 != 0) * (((v6 - 1570) ^ 0x4BCD5493) - 1271747412)) ^ v6)))(v7, v8, v9, v10, v11, v12, v13, v14, a2, a3, a4, a5);
}

uint64_t sub_1D494DA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = (*(v35 + 8 * a22))(*a35);
  *a35 = a28;
  *a31 = a27;
  *(v36 - 236) = *(v36 - 236);
  return (*(v36 - 248))(v37);
}

uint64_t sub_1D494DB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37)
{
  v39 = *(v38 - 160);
  *(*(v38 - 168) + 8) = v39;
  v40 = (*(v37 + 8 * ((a30 & 0x6A648CFF) + 1902)))(**(&off_1F503AD40 + (a30 & 0x6A648CFF) - 1253), *(v38 - 152), v39);
  return (*(v37 + 8 * (((a37 == 22 * (((a30 & 0x6A648CFF) - 1214570784) & 0x4864DE7D ^ 0x25A) - 1096557458) * ((((((a30 & 0x6A648CFF) - 1214570784) & 0x4864DE7D) - 469) | 0x850) ^ 0x61D)) ^ ((a30 & 0x6A648CFF) - 1214570784) & 0x4864DE7D)))(v40);
}

uint64_t sub_1D494DB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = *(v18 - 192);
  *(v18 - 224) = v19;
  v21 = v19 + 12;
  v20 = *(v19 + 12);
  *(v18 - 232) = v21;
  return (*(v16 + 8 * ((445 * (v20 + a15 < ((v15 + 126678997) & 0xF8730AE6 ^ (v17 + 764) ^ (103 * (v15 ^ 0x29u))))) ^ v15)))();
}

uint64_t sub_1D494DBD4()
{
  v4 = (((v0 - 1838) ^ 0x7FFE7A04) & (2 * v1)) + (v1 ^ 0xBFFF3CFF);
  v5 = *(*v3 + v4 + ((v0 - 192) ^ 0x4000C969)) << 24;
  v4 += 1073791746;
  v6 = v5 | (*(*v3 + v4) << 16);
  v7 = *(*v3 + v4 + 1);
  v8 = *(*v3 + v4 + 2);
  *(v3 + 12) = v1 + 4;
  return (*(v2 + 8 * ((168 * ((v6 | (v7 << 8) | v8) - 1096557304 - 2 * ((v6 | (v7 << 8) | v8) & 0x3EA3DD1E ^ v8 & 0x16) == -1096557304)) ^ v0)))();
}

uint64_t sub_1D494DC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7 + v2) = *(a2 + v7);
  return (*(v6 + 8 * (((v7 != 0) * v5) ^ v3)))();
}

uint64_t sub_1D494DD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(v7 + v8 - 1 - 31);
  v13 = a7 + v8 - 1;
  *(v13 - 15) = *(v7 + v8 - 1 - 15);
  *(v13 - 31) = v12;
  return (*(v11 + 8 * ((1298 * (((v9 + v10 + 2293) ^ 0xF6u) - 2527 == (((v9 + v10 + 2293) ^ 0xFFFFF6E9) & v8))) ^ (v9 + v10 + 2293))))();
}

uint64_t sub_1D494DE58@<X0>(uint64_t a1@<X8>)
{
  v5 = ((458 * (v2 ^ 0xBA2u)) ^ 0xFFFFFFFFFFFFE8BDLL) + v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((14 * (((229 * (v2 ^ 0xBA2) - 3009) & v1) != 32)) | (229 * (v2 ^ 0xBA2)))))(-1195);
}

uint64_t sub_1D494DECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *(a25 + 40);
  v30 = (*(v27 + 8 * (v26 ^ 0x9FA)))(*(v28 - 188) ^ v25, 3886098504);
  *v29 = v30;
  return (*(v27 + 8 * (((v30 != 0) * ((v26 - 691393989) & 0x2935D7EB ^ 0x11F ^ ((v26 + 176) | 0x80))) ^ v26)))();
}

uint64_t sub_1D494DF54@<X0>(uint64_t a1@<X8>)
{
  v6 = ((v3 - 628954353) & 0x257D175D) - 1110 + v2;
  v7 = *(v4 + v6 - 15);
  v8 = *(v4 + v6 - 31);
  v9 = a1 + v6 + v1;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((2363 * ((v2 & 0xFFFFFFE0) == 32)) ^ v3)))();
}

uint64_t sub_1D494E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v33 - 136) = v29;
  *(v33 - 144) = v32 + 1661262079 * ((1161531840 - (v30 | 0x453B91C0) + (v30 | 0xBAC46E3F)) ^ 0x2CF4D1D8) - 1496398567;
  (*(v31 + 8 * (v32 ^ 0xFC1)))(v33 - 144);
  v34 = (*(v31 + 8 * (v32 ^ 0xF3C)))(**(&off_1F503AD40 + v32 - 869), *(&off_1F503AD40 + (v32 ^ 0x32A)) - 4, a29);
  v35 = v34 - 1096557287 - ((2 * v34) & 0x7D47BA10);
  *(v33 - 136) = v29;
  *(v33 - 144) = (v32 + 634665805) ^ (1427277979 * ((((v30 ^ 0x108CD4 | 0xE3EE7302) ^ 0xFFFFFFFE) - (v30 ^ 0x80444002 | 0x1C118CFD)) ^ 0xE2C310AF));
  v36 = (*(v31 + 8 * (v32 ^ 0xF12)))(v33 - 144);
  return (*(v31 + 8 * (((v35 == -1096557287) * (((3 * (v32 ^ 0x17D)) ^ 0x54C) + 902)) ^ v32)))(v36);
}

uint64_t sub_1D494E51C@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v8 = (v4 ^ a1) + v5;
  *(v6 + v8) = *(a3 + v8);
  return (*(v7 + 8 * (((v8 == 0) * a2) ^ v3)))();
}

uint64_t sub_1D494E548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = v3 - 1;
  *(a1 + v9 + v2) = *(a2 + v9);
  return (*(v8 + 8 * (((v9 == 0) * ((v4 + v5) & v7 ^ v6)) ^ v4)))();
}

uint64_t sub_1D494E66C(int a1)
{
  v6 = (v3 - 32);
  v7 = (v4 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v2 == 32) * a1) ^ v1)))();
}

uint64_t sub_1D494E67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v3 + a2 - 1 - 31);
  v6 = a1 + a2 - 1;
  *(v6 - 15) = *(v3 + a2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((31 * (((41 * (v2 ^ 0xA09)) ^ 0x5CDLL) == (a2 & 0xFFFFFFE0))) ^ v2)))();
}

uint64_t sub_1D494E728()
{
  v5 = v1 ^ v0;
  v7 = v3 >= (v2 - 806) - 1711 && v5 >= ((v2 - 2385) | 0x409u) - 1189;
  return (*(v4 + 8 * ((992 * v7) ^ v2)))();
}

uint64_t sub_1D494E900@<X0>(int a1@<W8>)
{
  v5 = a1 ^ 0x140;
  (*(v4 + 8 * (a1 ^ 0xFD8)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  (*(v4 + 8 * (v5 ^ 0xE98)))(v2);
  return v1(v3);
}

uint64_t sub_1D494E95C@<X0>(unsigned int a1@<W2>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (v3 ^ ((((v6 - (v3 ^ a1)) | ((v3 ^ a1) - v6)) >= 0) * (v3 ^ a1 ^ 0xD39)))))();
}

uint64_t sub_1D494E9A4(uint64_t a1)
{
  v3 = 186 * (v1 ^ 0xA16);
  v4 = (*(v2 + 8 * (v1 + 725)))(a1, 0);
  return (*(v2 + 8 * (((v4 < ((v3 + 1932) | 2) - 2294) * ((v3 + 1932) ^ 0x9F8)) ^ v3)))();
}

uint64_t sub_1D494EA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v36 = (*(v34 + 8 * (v30 + 2816)))(v31);
  *(v35 - 208) = *(a30 + 32);
  *v32 = 0;
  return v33(v36);
}

uint64_t sub_1D494EB98@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(a1 + 12) ^ 0x5ECF777BDEBEFFEFLL) + ((2 * *(a1 + 12)) & 0x1BD7DFFDELL) - 0x5ECF777BAF09D1DFLL;
  v5 = v3 < 0x2FB52E0C || v3 > *(a1 + 8) + 800402956;
  return (*(v2 + 8 * ((v5 * (((v1 - 1605) | 0x883) - 1985)) ^ v1)))();
}

uint64_t sub_1D494ECD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void), _DWORD *a8)
{
  v10 = 739696497 * v9 - 397195252;
  v11 = (v10 ^ 0x3B613DEA) & (2 * (v10 & 0xBC7239F3)) ^ v10 & 0xBC7239F3;
  v12 = ((2 * (v10 ^ 0x4BA14C28)) ^ 0xEFA6EBB6) & (v10 ^ 0x4BA14C28) ^ (2 * (v10 ^ 0x4BA14C28)) & 0xF7D375DA;
  v13 = v12 ^ 0x10511449;
  v14 = (v12 ^ 0xE3806190) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0xDF4DD76C) & v13 ^ (4 * v13) & 0xF7D375D8;
  v16 = (v15 ^ 0xD7415540) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x20922093)) ^ 0x7D375DB0) & (v15 ^ 0x20922093) ^ (16 * (v15 ^ 0x20922093)) & 0xF7D375D0;
  v18 = v16 ^ 0xF7D375DB ^ (v17 ^ 0x75135500) & (v16 << 8);
  v19 = *a5;
  v20 = v10 ^ (2 * ((v18 << 16) & 0x77D30000 ^ v18 ^ ((v18 << 16) ^ 0x75DB0000) & (((v17 ^ 0x82C0204B) << 8) & 0x77D30000 ^ 0x24820000 ^ (((v17 ^ 0x82C0204B) << 8) ^ 0x53750000) & (v17 ^ 0x82C0204B))));
  v21 = ((2 * *a8) & 0xBBFECCEE) + 570464649 + ((((v8 - 1341) | 0xA80) - 570467605) ^ *a8);
  *(*a5 + v21 + 1) = BYTE2(v20) ^ 0x72;
  *(v19 + v21 + 2) = BYTE1(v20) ^ 0xD2;
  *(v19 + v21) = HIBYTE(v20) ^ 0xB8;
  *(v19 + v21 + 3) = v20 ^ 0x45;
  *a8 += 4;
  return a7();
}

uint64_t sub_1D494EED8@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v20 = *v19;
  v21 = *(a4 + 4 * ((a9 ^ a2) + v9 + a3));
  v22 = v21 - (a7 & (2 * v21)) + a8;
  v23 = (a6 & (2 * v10)) + (v10 ^ a5) + v11;
  *(*v19 + v23) = v14 ^ HIBYTE(v22);
  *(v20 + v23 + 1) = BYTE2(v22) ^ 0x20;
  *(v20 + v23 + 2) = BYTE1(v22) ^ 0x18;
  *(v20 + v23 + 3) = v22 ^ v15;
  v24 = v12 < a1;
  *v13 += 4;
  if (v24 == v9 + v16 < a1)
  {
    v24 = v9 + v16 < v12;
  }

  return (*(v17 + 8 * ((v24 * v18) ^ a9)))();
}

uint64_t sub_1D494EF8C@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v11 = v4 + 32;
  v12 = (v11 ^ a1 ^ v6) + v3;
  v13 = *(a3 + v12 - 15);
  v14 = *(a3 + v12 - 31);
  v15 = v9 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((((v8 + v11) | (v7 - 32)) >= 0) * a2) ^ v5)))();
}

uint64_t sub_1D494EF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v25 = (*(v23 + 8 * (a22 ^ 0x600)))(*(v24 - 212) ^ 0xBEA3DC0F ^ ((a22 - 2423) | 5), 3886098504);
  *v22 = v25;
  return (*(v23 + 8 * ((140 * (v25 != 0)) ^ a22)))(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D494F044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, __int16 a18, char a19, uint64_t a20, uint64_t a21, char *a22, int a23, int a24, int a25, char *a26, uint64_t a27, int a28)
{
  v34 = (v31 + 395144773) & 0xE8729ABE;
  (*(v30 + 8 * (v31 + 2703)))(v28);
  v35 = 891395573 * ((((2 * &a22) | 0x1326A8AC) - &a22 - 160650326) ^ 0x81DB8C72);
  v36 = v35 + 994577233 + *(v32 + 3) * (v34 ^ 0x4FEE6C6D);
  v37 = *v32;
  v38 = 972028385 * *v29 + 907749015;
  a22 = &a19;
  a23 = v38 ^ v35;
  a24 = v36;
  a25 = v31 - v35 + 77;
  a26 = &a17;
  a27 = v37;
  (*(v30 + 8 * (v31 ^ 0xD18)))(&a22);
  v39 = a28;
  v40 = (*(v30 + 8 * (v31 ^ 0xDF4)))(v28);
  return (*(v30 + 8 * (((v39 == 1180816193) * (v34 + 1333198346 + (v34 ^ (v33 + 1366)) - 63)) ^ v34)))(v40);
}

uint64_t sub_1D494F1D0()
{
  v5 = (v1 - 80079762) ^ (912648571 * ((((2 * &v5) | 0xD4025FEA) - &v5 + 369020939) ^ 0x36CC63C0));
  v6 = 0;
  result = (*(v2 + 8 * (v1 ^ 0x6B5)))(&v5);
  *(v4 + 8) = v0;
  return result;
}

void sub_1D494F280(uint64_t a1)
{
  v1 = *(a1 + 16) + 891395573 * ((-224476316 - (a1 | 0xF29EC364) + (a1 | 0xD613C9B)) ^ 0x8529E4BF);
  v2 = *(&off_1F503AD40 + (v1 ^ 0x1FE)) - 4;
  (*&v2[8 * v1 + 22440])();
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D494F41C()
{
  *(v5 - 136) = v1;
  *(v5 - 144) = v0 + 1661262079 * ((((v5 - 144) | 0x2C852224) - ((v5 - 144) & 0x2C852224)) ^ 0xBAB59DC3) - 1496398156;
  (*(v3 + 8 * (v0 + 2780)))(v5 - 144);
  v6 = (*(v3 + 8 * (v0 ^ 0xD99)))(**(v2 + 8 * (v0 ^ 0x1CE)), *(v2 + 8 * (v0 - 395)) - 4, v4);
  v7 = 3 * (v0 ^ 0x1CF) - 1096557304 + v6 - ((2 * v6) & 0x7D47BA10) + 12;
  *(v5 - 136) = v1;
  *(v5 - 144) = (v0 + 634666216) ^ (1427277979 * ((((v5 - 144) | 0x428B75A6) - (v5 - 144) + ((v5 - 144) & 0xBD748A58)) ^ 0xDFE35620));
  v8 = (*(v3 + 8 * (v0 + 2733)))(v5 - 144);
  return (*(v3 + 8 * ((2958 * (v7 == ((v0 + 563) | 0xA8) - 1096558478)) ^ v0)))(v8);
}

uint64_t sub_1D494F5E0@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 + v4 - 173;
  *(a1 + v7) = *(v1 + v7);
  return (*(v6 + 8 * (((v7 != 0) * v5) ^ v2)))();
}

uint64_t sub_1D494F694@<X0>(unsigned int a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v11 = v6 + 32;
  v12 = (v11 ^ a3 ^ ((v7 - 2255) | a1)) + v5;
  v13 = *(a2 + v12 - 15);
  v14 = *(a2 + v12 - 31);
  v15 = a4 + v4 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v8 != v11) * v9) ^ (v7 - 2430))))();
}

void sub_1D494F6FC(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 28) ^ (370149929 * (((a1 | 0x7289D99E) - a1 + (a1 & 0x8D762661)) ^ 0xCE00EB7A));
  v3[0] = v1 + 1661262079 * (((v3 | 0x96200D27) - v3 + (v3 & 0x69DFF2D8)) ^ 0x10B2C0) + 801;
  v2 = *(&off_1F503AD40 + (v1 ^ 0x804)) - 4;
  (*&v2[8 * (v1 ^ 0x4BE)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D494F8A4()
{
  v4 = *(v3 - 208);
  *(v4 + 8) = *(v3 - 192);
  *(v3 - 168) = v4;
  v5 = (*(v2 + 8 * ((v0 + 57) ^ 0x54B)))(**(v1 + 8 * (v0 - 2259)), *(v3 - 176), *(v3 - 192));
  return (*(v3 - 232))(v5);
}

uint64_t sub_1D494F98C()
{
  *(v0 + 8) = 4096;
  *v1 = v0;
  return v2(3865);
}

uint64_t sub_1D494F9CC()
{
  v5 = v1 ^ (v0 - 32) ^ ((v2 ^ 0x27Du) - 1614);
  v7 = v3 > 0x1F && v5 > 7;
  return (*(v4 + 8 * ((73 * v7) ^ v2)))();
}

uint64_t sub_1D494FB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, int a19)
{
  a18 = v22;
  a17 = (v21 + 1867) ^ (912648571 * (((&a17 | 0x71AE4F6D) - (&a17 & 0x71AE4F6D)) ^ 0xAD630358));
  v23 = (*(v19 + 8 * (v21 + 2250)))(&a17);
  v24 = a19 == v20 + 4 * ((v21 + 518622105) & 0x211672F5 ^ 0x2E9) + 369;
  return (*(v19 + 8 * (((4 * v24) | (16 * v24)) ^ v21)))(v23);
}

uint64_t sub_1D494FC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t *a19, uint64_t a20, uint64_t *a21, int a22, unsigned int a23, int a24, int *a25, uint64_t a26, int a27)
{
  v29 = a19;
  a20 = 0;
  a18 = 0;
  v30 = *(&off_1F503AD40 + (v27 ^ 0x423)) - 12;
  (*(v28 + 8 * (v27 ^ 0x833)))(v30);
  v31 = *(v29 + 3);
  v32 = 972028385 * **(&off_1F503AD40 + v27 - 1036) + 907749015;
  v33 = 891395573 * (((&a21 | 0x87AA6EDB) - (&a21 & 0x87AA6EDB)) ^ 0xFE2B6FF);
  a26 = *v29;
  a25 = &a18;
  a21 = &a20;
  a22 = v32 ^ v33;
  a23 = v33 + 994576840 + v31 * ((v27 + 132595531) & 0xF818BEDB ^ 0x4FEE6442) + 393;
  a24 = v27 - v33 - 627;
  (*(v28 + 8 * (v27 + 2104)))(&a21);
  v34 = a27;
  v35 = (*(v28 + 8 * (v27 ^ 0x834)))(v30);
  return (*(v28 + 8 * (((v34 == 1449251652) * (((v27 + 132595531) ^ 0x7E74124) + 2748)) ^ v27)))(v35);
}

uint64_t sub_1D494FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = v13 ^ HIDWORD(a13);
  v16 = v13 + 178963323;
  v17 = v16 + 615;
  v18 = (*(v14 + 8 * (v16 + 670)))(16, 3886098504);
  return (*(v14 + 8 * (((v18 != 0) * (v15 - 1028)) | v17)))(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13);
}

uint64_t sub_1D4950650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  v20 = (((a18 + 2617) + 4226446223) & (2 * v18)) + (v18 ^ ((a18 - 13) | 0xA46u) ^ 0x79EE99BD7DF5349CLL) - 0x79EE99BCEF61F7D8;
  v22 = v20 < 0x8E93471F || v20 > *(a4 + 8) + 2392016671u;
  return (*(v19 + 8 * ((585 * v22) ^ a18)))();
}

uint64_t sub_1D4950720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24)
{
  a24 = v24;
  a23 = v28 + 1661262079 * (&a23 ^ 0x9630BFE7) - 1496399672;
  (*(v26 + 8 * (v28 + 1264)))(&a23);
  v29 = (*(v26 + 8 * (v28 + 1179)))(**(v25 + 8 * (v28 - 1974)), *(v25 + 8 * (v28 - 1911)) - 4, v27);
  v30 = ((v28 + 554731897) | 0x4C034049) + v29 - ((2 * v29) & 0x7D47BA10) + 1368394649;
  a23 = (v28 + 634664700) ^ (1427277979 * ((&a23 + 1995679825 - 2 * (&a23 & 0x76F3A851)) ^ 0xEB9B8BD7));
  a24 = v24;
  v31 = (*(v26 + 8 * (v28 ^ 0xBC3u)))(&a23);
  return (*(v26 + 8 * (((v30 != -1096557292) * (((v28 + 1132481617) | 0x84D0300) ^ 0x4BCD5776)) ^ v28)))(v31);
}

uint64_t sub_1D495089C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, char a32)
{
  v38 = (v36 - 1301) | 0x282;
  (*(v34 + 8 * (v36 ^ 0xA74)))(v32);
  v39 = *(v35 + 12);
  v40 = 972028385 * *v33 + 907749015;
  v41 = 891395573 * ((((v37 - 144) | 0x6E22B539) + (~(v37 - 144) | 0x91DD4AC6)) ^ 0xE66A6D1C);
  *(v37 - 112) = *v35;
  *(v37 - 120) = &a32;
  *(v37 - 128) = v36 - v41 - 1078;
  *(v37 - 144) = v37 - 168;
  *(v37 - 136) = v40 ^ v41;
  *(v37 - 132) = v41 + 994577233 + v39 * (v38 ^ 0x4FEE6579);
  (*(v34 + 8 * (v36 ^ 0xA9F)))(v37 - 144);
  v42 = *(v37 - 104);
  v43 = (*(v34 + 8 * (v36 ^ 0xA73)))(v32);
  return (*(v34 + 8 * ((1603 * (v42 == v38 + 1180812613 + ((v38 - 912) | 0xA48))) ^ v38)))(v43);
}

uint64_t sub_1D4950AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, int a21)
{
  a20 = 1661262079 * ((1034227523 - (&a20 | 0x3DA50F43) + (&a20 | 0xC25AF0BC)) ^ 0x546A4F5B) + 2854;
  (*(v21 + 26072))(&a20);
  return (*(v21 + 8 * (((a21 != 184620743) | (2 * (a21 != 184620743))) ^ 0x3C1u)))(0);
}

uint64_t sub_1D4950CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = *(v5 + 12) + (((*(v8 - 212) ^ 0x1E8F7CC67349082FLL) - 0x1E8F7CC67349082FLL) ^ ((*(v8 - 212) ^ 0x9304C1DED251EACELL) + 0x6CFB3E212DAE1532) ^ ((((v6 - 731) - 0x727442E7E044C11ELL) ^ *(v8 - 212)) + 0x727442E7E044C017)) + 0x162D2CDF3;
  v11 = v9 >= 0xA42EF0EB && v9 <= *(v5 + 8) + ((v6 - 893) ^ 0xA42EF08EuLL);
  return (*(v7 + 8 * ((v11 * a5) ^ v6)))();
}

void sub_1D4951050()
{
  v2 = *(v0 + 24);
  **v0 = v3;
  *v2 = v4;
  *(v0 + 40) = v1 + 997;
}

uint64_t sub_1D49510A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  a21 = v23 + 1661262079 * ((152435741 - (v24 | 0x915FC1D) + (v24 | 0xF6EA03E2)) ^ 0x60DABC05) - 1496398677;
  a22 = v22;
  (*(v25 + 8 * (v23 + 2259)))(&a21);
  v27 = (*(v25 + 8 * (v23 + 2174)))(**(v26 + 8 * (v23 - 979)), *(v26 + 8 * (v23 ^ 0x394)) - 4, a13);
  v28 = v27 - 1096557304 - ((v27 << ((37 * (v23 ^ 0xFD)) ^ 0x36)) & 0x7D47BA10) + 26;
  a22 = v22;
  a21 = (v23 + 634665695) ^ (1427277979 * (v24 ^ 0x9D682386));
  v29 = (*(v25 + 8 * (v23 ^ 0xFAC)))(&a21);
  return (*(v25 + 8 * ((1775 * (v28 == (v23 ^ 0x3FD) - 1096557321)) ^ v23)))(v29);
}

uint64_t sub_1D4951254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = (v8 ^ 0xFFFFFFFFFFFFFA7ELL ^ (v9 + 2050949684) & 0x85C0FF8F) + v7;
  *(a1 - 7 + v11) = *(a7 - 7 + v11);
  return (*(v10 + 8 * ((4020 * ((v7 & 0xFFFFFFF8) - 8 == v8)) ^ v9)))();
}

uint64_t sub_1D49512B8()
{
  (*(v4 + 8 * (v1 + 704)))(v2);
  *v3 = 0;
  return v0(3921093605, 373872639, 3419232010, 3722148018, 20, 23, 3049);
}

uint64_t sub_1D49513A0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, int a26, int a27, int a28, char *a29, uint64_t a30, int a31, char *a32, char *a33, int a34, int a35, uint64_t a36)
{
  v41 = (a1 + 1016548533) & 0xC368AF5B;
  v42 = 1427277979 * (((&a18 | 0xEF33381235A28359) - (&a18 & 0xEF33381235A28359)) ^ 0x5B8F89F7A8CAA0DFLL);
  a28 = (a1 - 1116) ^ v42;
  a23 = v36;
  a22 = 29 * (((a8 ^ 0x2C) - 44) ^ ((a8 ^ 0x1C) - 28) ^ ((a8 ^ 3) - 3)) - v42 + 32;
  a24 = v42 + 9;
  a26 = v42 + v39 - ((2 * v39) & 0x11DAD640) - 1997706464;
  a27 = v42 - 213789336 + (((v38 ^ 0x5B8385B7) - 1535346103) ^ ((v38 ^ 0x131F7778) - 320829304) ^ ((v38 ^ 0xFE0ACFCB) + 32845877));
  a20 = a12;
  a21 = 0x2208371327174719;
  a18 = (v37 ^ 0xBDBBFEED) - v42 + ((2 * v37) & 0x7B77FDDA) + 2129631607;
  a25 = (a13 - ((v41 + 0x572BF118826C5071) & (2 * a13)) - 0x546A0773BEC9D61ELL) ^ v42;
  a19 = a10;
  a36 = a4;
  a34 = ((a6 ^ 0xFEBBDFFC) + 1039120488 + ((2 * a6) & 0xFD77BFF8)) ^ v42;
  a35 = (a16 ^ 0x3B4DBFDF) - v42 + ((2 * a16) & 0x769B7FBE) - 135012886;
  a29 = &a11;
  a30 = a3;
  a32 = &a17;
  a33 = &a14;
  v43 = (*(v40 + 8 * (a1 + 1430)))(&a18);
  return (*(v40 + 8 * ((1869 * (a31 == (((v41 ^ 0x972) - 474) ^ 0xBEA3D54F))) ^ v41)))(v43);
}

uint64_t sub_1D4951790(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x423)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 ^ 0x815) + 1210) ^ (19 * (v1 ^ 0x815)))) ^ v1)))();
}

uint64_t sub_1D495182C()
{
  v3 = (*(v1 + 12) ^ 0x9BEFFFFD26DFEDAFLL) + (((v0 + 1268) ^ 0x4DBFDDAFLL) & (2 * *(v1 + 12))) + 0x6410000305D94923;
  v5 = v3 >= 0x2CB936CE && v3 <= (v0 - 336) + *(v1 + 8) + 750335521;
  return (*(v2 + 8 * ((1004 * v5) ^ v0)))();
}

uint64_t sub_1D4951918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (v4 ^ 0xFFFFFFFFFFFFFE48 ^ (v5 + 1505996582) & 0xA63C4FFF) + v2;
  *(a1 - 7 + v7) = *(a2 - 7 + v7);
  return (*(v6 + 8 * ((89 * (v2 - (v3 & 7) - 8 == v4)) ^ v5)))();
}

uint64_t sub_1D4951B44@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = (*(v20 + 24) - v17);
  v23 = (*(v20 + 32) + v17);
  v24 = 11 * (a1 ^ 0x92);
  *(v21 - 152) = v18;
  *(v21 - 164) = v18;
  v25 = v23 | ((v23 < 0xE2F381) << 32);
  v26 = (v23 ^ (v24 - 19290988)) & (2 * (v23 & 0xFF1D0C7F)) ^ v23 & 0xFF1D0C7F;
  v27 = ((2 * (v23 ^ 0x9AEBB7AA)) ^ 0xCBED77AA) & (v23 ^ 0x9AEBB7AA) ^ (2 * (v23 ^ 0x9AEBB7AA)) & 0x65F6BBD4;
  v28 = v27 ^ 0x24128855;
  v29 = (v27 ^ 0x40E43380) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0x97DAEF54) & v28 ^ (4 * v28) & 0x65F6BBD4;
  v31 = (v30 ^ 0x5D2AB50) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x60241081)) ^ 0x5F6BBD50) & (v30 ^ 0x60241081) ^ (16 * (v30 ^ 0x60241081)) & 0x65F6BBD0;
  v33 = v31 ^ 0x65F6BBD5 ^ (v32 ^ 0x4562B900) & (v31 << 8);
  v34 = v23 ^ (2 * ((v33 << 16) & 0x65F60000 ^ v33 ^ ((v33 << 16) ^ 0x3BD50000) & (((v32 ^ 0x20940285) << 8) & 0x65F60000 ^ 0x1440000 ^ (((v32 ^ 0x20940285) << 8) ^ 0x76BB0000) & (v32 ^ 0x20940285))));
  LODWORD(v51) = HIWORD(v34) ^ 0x58;
  HIDWORD(v51) = HIBYTE(v34) ^ 0x77;
  LODWORD(v50) = v34 ^ 0xFFFFFFD5;
  HIDWORD(v50) = (v34 >> 8) ^ 0x7B;
  v49 = (4 * v22) ^ 0x13BD9AB34;
  HIDWORD(v46) = BYTE3(v22) ^ 0x4E;
  LODWORD(v46) = WORD1(v22) ^ 0xFFFFFFF6;
  HIDWORD(v45) = (v22 >> 8) ^ 0x6A;
  LODWORD(v45) = v22 ^ 0xFFFFFFCD;
  HIDWORD(a5) = (((v22 ^ 0xA4EC19E9) + 1528030743) ^ ((v22 ^ 0x783195F5) - 2016515573) ^ ((v22 ^ 0x922BE6D1) + 1842616623)) - 1447810378;
  LODWORD(v44) = (4 * v22) ^ 0x3BD9AB34;
  v48 = v25 + 0x598AB31FB8BB5AEELL;
  v52 = v25 - 14873473;
  HIDWORD(a12) = v23 - 14873473;
  HIDWORD(v44) = v23 - 14873469;
  v47 = *(v20 + 16);
  v35 = (*(v19 + 8 * (v24 ^ 0x693)))(16, 3886098504);
  LODWORD(a16) = 1096582252;
  return (*(v19 + 8 * (((v35 == 0) * (v24 + 29 + 71 * (v24 ^ 0xAC3) - 5251)) ^ v24)))(v35, v36, v37, v38, v39, v40, v41, v42, v47 - 7, v44, a4, a5, v45, v46, v20, v47, v48, v49, a12, v50, v51, v52, a16, a17);
}

uint64_t sub_1D4951E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a16, uint64_t a17)
{
  (*(v21 + 8 * (v17 ^ 0x4AD)))(*v20);
  *v20 = v19;
  *(v20 + 8) = v18;
  return a15(117, 2192, a16, a17);
}

uint64_t sub_1D4951E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t *a27)
{
  v29 = *a27;
  v30 = ((a25 & 0x8BA74447) << ((v27 + 0x80) & 0x59 ^ 0x51)) & (a25 ^ 0xEBB74047) ^ a25 & 0x8BA74447;
  v31 = ((2 * (a25 ^ 0xECF5C0C9)) ^ 0xCEA5091C) & (a25 ^ 0xECF5C0C9) ^ (2 * (a25 ^ 0xECF5C0C9)) & 0x6752848E;
  v32 = v31 ^ 0x21528482;
  v33 = (v31 ^ 0x4640848E) & (4 * v30) ^ v30;
  v34 = ((4 * v32) ^ 0x9D4A1238) & v32 ^ (4 * v32) & 0x6752848C;
  v35 = (v34 ^ 0x5420006) & (16 * v33) ^ v33;
  v36 = ((16 * (v34 ^ 0x62108486)) ^ 0x752848E0) & (v34 ^ 0x62108486) ^ (16 * (v34 ^ 0x62108486)) & 0x67528480;
  v37 = v35 ^ 0x6752848E ^ (v36 ^ 0x6500000E) & (v35 << 8);
  v38 = a25 ^ (2 * ((v37 << 16) & 0x67520000 ^ v37 ^ ((v37 << 16) ^ 0x48E0000) & (((v36 ^ 0x252840E) << 8) & 0x67520000 ^ 0x25520000 ^ (((v36 ^ 0x252840E) << 8) ^ 0x52840000) & (v36 ^ 0x252840E))));
  v39 = ((2 * *a22) & 0x6FF7E8EC) + 1208224650 + ((((4 * v27) ^ 0x16DC) - 1208225422) ^ *a22);
  *(*a27 + v39) = HIBYTE(v38) ^ 0x4D;
  *(v29 + v39 + 1) = BYTE2(v38) ^ 6;
  *(v29 + v39 + 2) = BYTE1(v38) ^ 0x4D;
  *(v29 + v39 + 3) = v38 ^ 0x5B;
  v40 = (*a22 + 4);
  *a22 = v40;
  return (*(v28 + 8 * ((15 * (a18 <= *a27 + ((2 * v40) & 0x1FCB6DFBALL) + (v40 ^ 0xFFBBE993FE5B6FDDLL) + 0x44166C01A49023)) ^ v27)))();
}

uint64_t sub_1D49521E4@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + -8 - v3;
  *(a1 + -8 - v3 + v2) = *(v6 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * (v4 ^ 0xA45)) ^ v4)))(v6 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_1D4952240(uint64_t a1)
{
  (*(v1 + 8 * (v2 + 2089)))();
  v5 = (*(v1 + 8 * (v2 ^ 0x86A)))(a1);
  return (*(v1 + 8 * ((((v2 - 1980525985) & 0x760C6BFF ^ 0xEBC ^ (((v2 - 1980525985) & 0x760C6BFF) - 259) ^ 0xC5B) * (v3 < 4)) ^ (v2 - 1980525985) & 0x760C6BFF)))(v5);
}

uint64_t sub_1D49522C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(v25) = v14;
  HIDWORD(v25) = v14 - 2012966302;
  v16 = (*(v15 + 8 * (v14 ^ 0xB87)))(16, 3886098504);
  return (*(v15 + 8 * (((v16 != 0) * ((v14 + 92) ^ 0x845)) ^ (v14 + 258))))(v16, v17, v18, v19, v20, v21, v22, v23, a9, 0x82E074235276B54ALL, a11, a12, v25, a14);
}

uint64_t sub_1D4952384()
{
  *v1 = 0;
  v1[1] = 0;
  (*(v2 + 8 * (v0 ^ 0xE14)))(v1);
  return (*(v2 + 8 * (((((v0 - 35667058) & 0xBF7DFF5E) - v3 - 616) * (*v1 == 0)) ^ (v0 + 995))))();
}

uint64_t sub_1D495243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  (*(v19 + 8 * (v15 + 2332)))(*v16);
  *v16 = v18;
  *(v16 + 8) = v17;
  return v20(229, a15, a14);
}

void sub_1D4952740(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 12) + 1427277979 * ((-2 - ((~a1 | 0xA2B387BF) + (a1 | 0x5D4C7840))) ^ 0x3FDBA439);
  v3[0] = v1 + 1661262079 * ((((2 * v3) | 0x2FE95812) - v3 + 1745572855) ^ 0x1C413EE) + 371;
  v2 = *(&off_1F503AD40 + (v1 ^ 0x9B2)) - 4;
  (*&v2[8 * v1 + 6208])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D495389C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 + 2057;
  v10 = a1 + 819;
  v11 = (*(v8 + 8 * (a1 + 2851)))(16, 3886098504);
  HIDWORD(a4) = 1096582252;
  return (*(v8 + 8 * (((v11 != 0) * (v9 - 2397)) | v10)))(v11, v12, v13, v14, v15, v16, v17, v18, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1D4953A50@<X0>(int a1@<W8>, uint64_t a2)
{
  v3 = (a1 + 411785486) & 0xE774ABF7;
  v4 = a1 - 833;
  v5 = (*(v2 + 8 * (a1 + 1419)))(16, 3886098504);
  return (*(v2 + 8 * (((v5 == 0) * (v3 - 3035)) ^ v4)))(v5, v6, v7, v8, v9, v10, v11, v12, a2);
}

uint64_t sub_1D4953AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  a21 = v23 + 1661262079 * ((&a21 + 403698058 - 2 * (&a21 & 0x180FF18A)) ^ 0x8E3F4E6D) - 1496398167;
  a22 = v22;
  (*(v26 + 8 * (v23 ^ 0xD71)))(&a21);
  v27 = (*(v26 + 8 * (v23 ^ 0xD8C)))(**(v24 + 8 * (v23 - 469)), *(v24 + 8 * (v23 - 406)) - 4, v25);
  v28 = v27 - 1096557302 - ((((v23 + 134286957) | 0x3000682) + 1917231945) & (2 * v27));
  a22 = v22;
  a21 = (v23 + 634666205) ^ (1427277979 * (&a21 ^ 0x9D682386));
  v29 = (*(v26 + 8 * (v23 + 2722)))(&a21);
  return (*(v26 + 8 * (((v28 != -1096557302) * ((97 * (v23 ^ 0x1C7)) ^ 0x869)) ^ v23)))(v29);
}

void sub_1D4953C3C(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 1420)))();
  *v1 = 0;
  JUMPOUT(0x1D4950198);
}

uint64_t sub_1D4953D5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 606;
  (*(v4 + 8 * (v2 ^ 0x41B)))(a2);
  *a1 = 0;
  *a1 = 0;
  a1[1] = 0;
  v7 = (*(v4 + 8 * (v5 ^ 0xA79)))();
  return v3(v7);
}

uint64_t sub_1D4953E0C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((1856 * (v5 == (v3 ^ 0x2ECu) - 247)) ^ v3)))();
}

uint64_t sub_1D4953E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *(v40 - 160) = a17;
  *(v40 - 159) = BYTE4(a16);
  *(v40 - 158) = a16;
  *(v40 - 157) = BYTE4(a15);
  *(v40 - 156) = a15;
  *(v40 - 155) = BYTE4(a14);
  *(v40 - 154) = a14;
  *(v40 - 153) = BYTE4(a13);
  return (*(v39 + 8 * ((2887 * ((*(*(v40 - 200) + 12) ^ 0x3FFDBEEDEFEF7CFFLL) + 8 + ((457 * (v38 ^ 0xAu) - 1980 + 0x1DFDEF8CDLL) & (2 * *(*(v40 - 200) + 12))) - 0x3FFDBEEDEFEF7CFFLL < 0xFFFFFFFB)) ^ (457 * (v38 ^ 0xA) - 1561))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v40 - 160, 8, a33, a34, *(v40 - 200) + 12, a36, a37, a38);
}

uint64_t sub_1D4953F38@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v4 ^ 0xC0u) - 2144) ^ v3) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((317 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1D4953F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  (*(v21 + 8 * (v20 ^ 0x6E5)))(a12, @"yN1lNULD2GD", a1);
  v23 = (*(v21 + 8 * (v20 + 657)))(a1);
  return (*(v21 + 8 * (((a20 != 0) * (v20 - 1672137971 + (v20 ^ 0x176) + 1672132596)) ^ (v20 - 105))))(v23);
}

uint64_t sub_1D495406C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 + v3 - 663;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (((v7 != 0) * v5) ^ v2)))();
}

uint64_t sub_1D4954158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = ((2 * v9) & 0xFB7E697E) + (v9 ^ 0xFDBF34BF);
  v11 = v10 + 37800769;
  v12 = (*(*v7 + v10 + 37800769) << 24) | (*(*v7 + (v8 ^ 0x240CFE0) + v10) << 16);
  v13 = *(*v7 + v11 + 2);
  v14 = *(*v7 + v11 + 3);
  *v6 = (v12 | (v13 << 8) | v14) - 1096557304 - 2 * ((v12 | (v13 << 8) | v14) & 0x3EA3DD1E ^ v14 & a5);
  *(v7 + 12) += 4;
  return v5();
}

uint64_t sub_1D4954208@<X0>(_DWORD *a1@<X8>)
{
  v6 = (v2 ^ 0x5DBE34C5 ^ (v3 + 906107820) & 0xC9FDEAFB) + ((2 * v2) & 0xBB7C797E) - 1572748479;
  v7 = (*(*v4 + v6) << 24) | (*(*v4 + v6 + 1) << 16) | (*(*v4 + v6 + 2) << 8);
  v8 = *(*v4 + v6 + 3);
  *a1 = (v7 | v8) + v5 - 2 * ((v7 | v8) & 0x3EA3DD1E ^ v8 & 0x16);
  *(v4 + 12) = v2 + 4;
  return v1();
}

void sub_1D49542F4()
{
  v3 = ((((v2 + 1111) ^ 0xFFFFFFE7) << 56) - 0x1C00000000000000) ^ 0x1100000000000000;
  *v1 = (v3 - ((2 * v3) & 0x5DA40617F9ED94BALL) - 0x512DFCF4030935B8) ^ 0xAED2030BFCF6CA48;
  *(v0 + 8) = -1096557304;
}

uint64_t sub_1D4954618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, uint64_t a21)
{
  a21 = v21;
  a20 = v24 + 1661262079 * ((~(&a20 | 0x5CCEF4EF) + (&a20 & 0x5CCEF4EF)) ^ 0x3501B4F7) - 1496398360;
  (*(v23 + 8 * (v24 ^ 0xE30)))(&a20);
  v27 = (*(v23 + 8 * (v24 + 2491)))(**(v26 + 8 * (v24 ^ 0x29A)), *(v26 + 8 * (v24 ^ 0x2DB)) - 4, v22);
  v28 = v27 + (((v24 ^ 0x6EB) - v25 - 998) ^ 0x7927EB11) - ((2 * v27) & 0x7D47BA10);
  a21 = v21;
  a20 = (v24 + 634666012) ^ (1427277979 * ((2 * (&a20 & 0x4A46CC8) - &a20 - 77884620) ^ 0x6633B0B2));
  v29 = (*(v23 + 8 * (v24 + 2529)))(&a20);
  return (*(v23 + 8 * ((2557 * (v28 == -1096557301)) ^ v24)))(v29);
}

uint64_t sub_1D4954804@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  v9 = *(*(v8 - 192) + 16);
  *(v2 + 12) = ((v6 - 1096557424) ^ v3) + v4;
  return (*(v7 + 8 * ((501 * (a2 <= v9 + a1 + v5)) ^ (((v6 + 699942739) & 0xD647B9BE) + 880))))();
}

uint64_t sub_1D49549A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v26 = 11 * (v22 ^ 5);
  *(v23 + 8) = a22;
  v27 = (v26 ^ 0x69F) + 2762;
  v28 = v26 + 573;
  (*(v24 + 8 * (v26 + 1135)))(**(v25 + 8 * (v26 & 0xD9CF501B)), a19, a22);
  return (*(v24 + 8 * (v27 ^ 0xDB7 ^ v28)))(v23);
}

uint64_t sub_1D4954A70(int a1)
{
  v6 = *(v4 + 8 * ((13 * ((((v1 + 544) ^ (v3 == v2 + ((v1 - 394) | 0x76) - 118)) & 1) == 0)) ^ (v1 + 2300)));
  *(v5 - 196) = a1;
  return v6();
}

uint64_t sub_1D4954ABC(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v1 + 8 * (v2 + 2690)))(4096, 3886098504);
  *a1 = v4;
  return (*(v1 + 8 * ((((((v2 + 504137029) ^ (v4 == 0)) & 1) == 0) * (v2 + 464)) ^ v2)))();
}

uint64_t sub_1D4954B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = ((341 * (v8 ^ 0x121u)) ^ 0x42001406949A2AC3) + ((2 * v9) & 0x1BCDE7BFELL) + (v9 ^ 0xBDFFEBF9DE6F3A01 ^ (3 * (v8 ^ 0x38Du)));
  v13 = v11 < 0x73096B38 || v11 > *(a8 + 8) + 1929997112;
  return (*(v10 + 8 * ((1159 * v13) ^ v8)))();
}

uint64_t sub_1D4954BD4()
{
  (*(v3 + 8 * (v4 + 2100)))(v1);
  *v2 = 0;
  return v0(378, 640);
}

uint64_t sub_1D4954C10@<X0>(int a1@<W5>, uint64_t (*a2)(void)@<X6>, uint64_t *a3@<X7>, char a4@<W8>)
{
  v5 = *a3;
  v6 = a1 - ((2 * a1) & 0x64403082) + 840964161;
  v7 = ((*v4 << ~((a4 - 99) | 0x4C)) & 0x29FEEBFC) + (*v4 ^ 0x94FF75FE) + 1795197442;
  *(*a3 + v7) = HIBYTE(v6) ^ 0x32;
  *(v5 + v7 + 1) = BYTE2(v6) ^ 0x20;
  *(v5 + v7 + 2) = BYTE1(v6) ^ 0x18;
  *(v5 + v7 + 3) = v6 ^ 0x41;
  *v4 += 4;
  return a2();
}

uint64_t sub_1D4954CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = (*(v10 + 8 * (v11 ^ 0x898)))(v9, @"lK1");
  (*(v10 + 8 * (v11 ^ 0x8B9)))(v12, 4, &a9);
  v13 = (*(v10 + 8 * (v11 | 0x8C2)))(v9, @"DhpWkh3rnR") == (-64 * (v11 ^ 6) - 63);
  return (*(v10 + 8 * ((v13 * (((v11 ^ 0x406) + 2604) ^ 0xA38)) ^ (v11 + 1578))))();
}

uint64_t sub_1D4954E98@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, unsigned int a6@<W8>)
{
  v19 = a3 < a4;
  v20 = *v8;
  v21 = *(*(a1 + 8) + 4 * (v6 + v10));
  v22 = v21 - ((v21 << a6) & v13) + v14;
  v23 = (v12 & (2 * v7)) + (v7 ^ v11) + a5;
  *(*v8 + v23) = v15 ^ HIBYTE(v22);
  *(v20 + v23 + 1) = BYTE2(v22) ^ 0x20;
  *(v20 + v23 + 2) = BYTE1(v22) ^ 0x18;
  v24 = *(v18 - 232);
  *(v20 + v23 + 3) = v22 ^ a2;
  *v24 += 4;
  if (v19 == v6 + v17 < a4)
  {
    v19 = v6 + v17 < a3;
  }

  return (*(v16 + 8 * ((!v19 * v9) ^ a6)))();
}

void sub_1D4954F54(uint64_t a1)
{
  (*(v3 + 8 * (v2 ^ 0x1851E55A)))();
  (*(v3 + 8 * (v1 + v2 + 3130)))(a1);
  JUMPOUT(0x1D4954FB8);
}

uint64_t sub_1D4955034(uint64_t a1)
{
  v1 = *a1 ^ (912648571 * ((((2 * a1) | 0x1FEC83F6) - a1 + 1879686661) ^ 0x533B0DCE));
  v2 = *(*(a1 + 8) + 20) == 1300;
  return (*(*(&off_1F503AD40 + v1 - 2863) + 8 * (((4 * ((v2 ^ ((v1 - 28) ^ (v1 - 119))) & 1)) & 0xF7 | (8 * ((v2 ^ ((v1 - 28) ^ (v1 - 119))) & 1))) ^ v1) - 4))();
}

uint64_t sub_1D4955410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v32 = (v30 ^ 0x77F7FFDF6BF7FBFLL) + (((41 * (v29 ^ 0x157u)) ^ 0x1ED7EF420) & (2 * v30)) - 0x77F7FFD184718FALL;
  v34 = v32 < 0xDE7866C1 || v32 > *(a29 + 8) + 3732432577u;
  return (*(v31 + 8 * ((2719 * v34) ^ v29)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1D49554AC@<X0>(int a1@<W8>)
{
  v4 = a1 + 201;
  (*(v3 + 8 * (a1 + 2496)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0xFFF)))(v1);
  return v2(v5);
}

uint64_t sub_1D49554C8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a1 ^ 0xA06;
  *(v13 - 168) = 0;
  v15 = (7 * (a1 ^ 0xAD)) ^ 0x72A;
  v16 = (*(v12 + 8 * ((a1 ^ 0xA06) + 440)))(16, 3886098504);
  return (*(v12 + 8 * (((v16 == 0) * (v15 - 1445)) ^ v14)))(v16, v17, v18, v19, v20, v21, v22, v23, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_1D4955524@<X0>(int a1@<W0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1 ^ 5u;
  *(a2 - 7 + ~v8 + v6 + v5) = *(a5 + ~v8 + v6);
  v11 = v8 + (a1 ^ 0x58Cu) - 403 != v6 - ((v10 - 1035) & v7);
  return (*(v9 + 8 * ((v11 | (4 * v11)) ^ v10)))();
}

uint64_t sub_1D4955580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24)
{
  a24 = v25;
  a23 = v27 + 1661262079 * ((-1837644777 - (v24 | 0x9277C417) + (v24 | 0x6D883BE8)) ^ 0xFBB8840F) - 1496399937;
  (*(v28 + 8 * (v27 + 999)))(&a23);
  v30 = (*(v28 + 8 * (v27 + 914)))(**(v29 + 8 * (v27 - 2239)), *(v29 + 8 * (v27 & 0xA78D404F)) - 4, v26);
  v31 = v30 - 1096557302 - (((35 * (v27 ^ 0x8FC)) ^ 0x7D47B26A) & (2 * v30));
  a24 = v25;
  a23 = (v27 + 634664435) ^ (1427277979 * (((v24 | 0xC5A44982) - v24 + (v24 & 0x3A5BB678)) ^ 0x58CC6A04));
  v32 = (*(v28 + 8 * (v27 + 952)))(&a23);
  return (*(v28 + 8 * ((764 * (v31 == -1096557302)) ^ v27)))(v32);
}

uint64_t sub_1D4955A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16)
{
  (*(v20 + 8 * (v16 ^ 0x558)))(*v17);
  *v17 = v19;
  *(v17 + 8) = v18;
  return a13(3865, a16, a15, a14);
}

void sub_1D4955AB8(uint64_t a1)
{
  v1 = *a1 - 1661262079 * (((a1 | 0x72640AC7) - (a1 | 0x8D9BF538) - 1919158984) ^ 0xE454B520);
  v2 = *(&off_1F503AD40 + (v1 ^ 0x9F9)) - 4;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0x56D)])(*(a1 + 8), @"WEfR") != 0) * ((v1 - 37) ^ 0xA2A)) ^ v1)];
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4955BC0@<X0>(uint64_t a1@<X8>)
{
  v8 = a1 - 0x7DBB7FFFADB65F04 + v2 + v3 - v4;
  *(v8 + v1) = *(v6 - v4 - 8 + v1);
  return (*(v7 + 8 * (((v4 - (v1 & 0xFFFFFFF8) == -8) * (v5 - 1009)) ^ v5)))(v8 - 8, v4 - (v1 & 0xFFFFFFF8) + 16);
}

uint64_t sub_1D4955DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, int a26, uint64_t *a27, int a28, int a29, int a30, int *a31, uint64_t a32, int a33)
{
  v35 = 22 * (v34 ^ 0x8D9);
  v36 = v34 - 115;
  v37 = v34;
  v38 = a23;
  a22 = 0;
  a26 = 0;
  v39 = *(&off_1F503AD40 + v37 - 2102) - 12;
  (*(v33 + 8 * (v37 + 954)))(v39);
  v40 = *v38;
  v41 = *(v38 + 3);
  v42 = 891395573 * ((~(&a27 | 0x965BAC58) + (&a27 & 0x965BAC58)) ^ 0xE1EC8B83);
  v43 = (**(&off_1F503AD40 + v37 - 2081) * (v36 + 972026317) + 907749015) ^ v42;
  a27 = &a22;
  a31 = &a26;
  a32 = v40;
  a28 = v43;
  a29 = v42 + 994577233 + v41 * (v35 ^ 0x4FEE6ECF);
  a30 = v37 - v42 - 1672;
  (*(v33 + 8 * (v37 ^ 0x42D)))(&a27);
  v44 = a33;
  v45 = (*(v33 + 8 * (v37 + 959)))(v39);
  return (*(v33 + 8 * ((14 * (v44 == 1449251652)) ^ v37)))(v45);
}

uint64_t sub_1D4956040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  HIDWORD(a24) = v28;
  v31 = *a27 <= a1 + ((267 * (v29 ^ 0xFEu)) ^ 0x9CDA5D45E6E43B7CLL) + 0x6325A2BA191BC3CFLL;
  return (*(v30 + 8 * ((60 * v31) ^ v29 ^ 0x8E7)))(a1, (v31 << 6), 2949059784, 1856, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a1, a26, a27, a28);
}

void sub_1D4956264(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 891395573 * ((2 * (a1 & 0x2915FFF6) - a1 + 1458176009) ^ 0xDEA2D82D);
  v3[0] = v1 + 1661262079 * ((2 * (v3 & 0xF2D0ED8) - v3 - 254611165) ^ 0x66E24EC4) + 191;
  v2 = *(&off_1F503AD40 + (v1 ^ 0xA66)) - 4;
  (*&v2[8 * (v1 + 596)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4956388@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 16);
  v6 = *(a1 + v1 - 16);
  *(v5 - 1) = *(a1 + v1 - 32);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (v2 + 1528)) ^ v2)))(a1 + v1 - 48);
}

uint64_t sub_1D4956414@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X2>, _DWORD *a3@<X3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v9 = *a2;
  v10 = a9 - ((2 * a9) & 0x64403082) + 840964161;
  v11 = ((2 * *a3) & 0x6BD7FE6E) + ((a4 - 442470043) & 0xCB63F7D7 ^ *a3 ^ 0x3EEAE9F0) - 904658743;
  *(*a2 + v11) = HIBYTE(v10) ^ 0x32;
  *(v9 + v11 + 1) = BYTE2(v10) ^ 0x20;
  *(v9 + v11 + 2) = BYTE1(v10) ^ 0x18;
  *(v9 + v11 + 3) = v10 ^ 0x41;
  *a3 += 4;
  return a1();
}

uint64_t sub_1D4956604@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 3 * (v2 ^ 0x306);
  (*(v4 + 8 * (v2 + 2608)))(a2);
  *a1 = 0;
  *a1 = 0;
  a1[1] = 0;
  v7 = (*(v4 + 8 * (v5 + 2196)))();
  return v3(v7);
}

void sub_1D495680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23)
{
  a23 = v23 - 169829299 * ((1806070858 - (&a22 | 0x6BA6744A) + (&a22 | 0x94598BB5)) ^ 0x5D2F6E56) + 186;
  (*(v24 + 8 * (v23 + 2404)))(&a22);
  JUMPOUT(0x1D4953FD0);
}

uint64_t sub_1D4956920@<X0>(uint64_t a1@<X8>)
{
  v6 = ((((v3 - 234) | 8u) - 2122) ^ v2) + v1;
  *(v5 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v4 + 8 * ((179 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1D4956BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + 131 * (v3 ^ 0x1CBu) - 918;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((4 * (v5 == 0)) | ((v5 == 0) << 9)) ^ v3)))();
}

uint64_t sub_1D4956C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, __int16 a20, char a21, uint64_t a22, char *a23, int a24, int a25, int a26, char *a27, uint64_t a28, int a29)
{
  v34 = (v33 - 298353526) & 0x11C883A7;
  (*(v32 + 8 * (v33 + 2766)))(v29);
  v35 = *v31;
  v36 = *(v31 + 3);
  v37 = (v34 ^ 0x361B2732) + 972028385 * *v30;
  v38 = 891395573 * (((&a23 | 0x50794C5F) + (~&a23 | 0xAF86B3A0)) ^ 0xD831947A);
  a23 = &a21;
  a28 = v35;
  a27 = &a19;
  a24 = v37 ^ v38;
  a25 = v38 + 994577140 + 1341023963 * v36 + 93;
  a26 = v33 - v38 + 140;
  (*(v32 + 8 * (v33 + 2871)))(&a23);
  v39 = a29;
  v40 = (*(v32 + 8 * (v33 + 2771)))(v29);
  return (*(v32 + 8 * (((v39 == ((v34 - 143317687) & 0x88ADFFF) + 1180814419) * ((v34 ^ 0x1A8) + 1349)) ^ v34)))(v40);
}

uint64_t sub_1D4957030@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = v3 - 1;
  *(v5 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((28 * (v7 != (v4 ^ a1))) ^ v2)))();
}

uint64_t sub_1D49572DC(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v1 + 8 * (v2 ^ 0x4A2)))(4096, 3886098504);
  *a1 = v4;
  return (*(v1 + 8 * (((v4 != 0) * (((v2 ^ 0xFE8) - 1072) ^ 0x436724A8 ^ (((v2 ^ 0xFE8) + 35847529) | 0x41442340))) ^ v2 ^ 0xFE8)))();
}

uint64_t sub_1D49574DC()
{
  v3 = (*(v2 + 8 * (v0 + 2484)))();
  *v1 = 0;
  return sub_1D49574F4(v3);
}

uint64_t sub_1D49574F4()
{
  v4 = (v3 - 2076149511) | 0x20220050;
  *v0 = 0;
  v0[1] = 0;
  v5 = (*(v2 + 8 * (v3 + 1138)))(v0);
  return (*(v2 + 8 * ((((v1 & (v4 ^ v1) | (v1 - v4) & ~(v4 ^ v1)) >= 0) * (((v4 + 1537048276) | 0x249) - 534)) ^ (v4 + 1537051239))))(v5);
}

uint64_t sub_1D49575D8()
{
  v5 = *(v2 + 8 * (((*v1 == 0) * (((v0 ^ 0xB5A) + 922) ^ (461 * (v0 ^ 0xB5A)))) | v0));
  *(v4 - 212) = v3;
  return v5();
}

uint64_t sub_1D4957624@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = (v2 ^ 0x6FEFFF7EF5CBECDFLL) + (((17 * (a2 ^ 0x57u)) ^ 0x1EB97DF56) & (2 * v2)) - 0x6FEFFF7E78646BA9;
  v6 = v4 < 0x7D678132 || v4 > *(a1 + 8) + 2103935282;
  return (*(v3 + 8 * ((1557 * v6) ^ a2)))();
}

uint64_t sub_1D4957764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = v14;
  v18 = *(v17 + 8 * ((54 * ((((*(v17 + 8 * (v16 ^ 0x66B)))(v15, 3886098504) == 0) ^ ((v16 ^ 0xFC) + 13)) & 1)) ^ v16));
  return v18(74, 2147481874, 3794308737, 500659117, 2617145512, 1677823991, 2488, a8, a9, a10, a11, a12, v20, a14, a8);
}

uint64_t sub_1D4957808@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7 + v1) = *(v5 + v7);
  return (*(v6 + 8 * (((v7 != 0) * v4) ^ v2)))();
}

uint64_t sub_1D495785C(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13)
{
  v16 = *a2;
  v17 = ((2 * *a13) & 0x69F7C87C) + (*a13 ^ 0x34FBE43E) - 888923198;
  *(*a2 + v17) = 0;
  *(v16 + v17 + 1) = 0;
  *(v16 + v17 + 2) = 0;
  *(v16 + v17 + 3) = 8;
  v18 = *a13 + ((v13 + 843) ^ 0x5FDu);
  *a13 = v18;
  return (*(v15 + 8 * ((101 * (a4 > v14 + *a2 + ((2 * v18) & 0x11FFD3B74) + (v18 ^ 0x1B7BFEDF8FFE9DBAuLL) - 1)) ^ v13)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1D49579F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  (*(v40 + 8 * (v35 ^ 0x9F7)))(*v36);
  *v36 = v38;
  *(v36 + 8) = v37;
  return v39(a35, 4294967291);
}

void sub_1D4957A64(uint64_t a1)
{
  v1 = *(a1 + 8) + 169829299 * ((((2 * a1) | 0x88EB331A) - a1 - 1148557709) ^ 0x8D037C6E);
  v2 = *(&off_1F503AD40 + (v1 & 0xFD66CAA3)) - 4;
  v3 = *&v2[8 * ((27 * ((*&v2[8 * (v1 ^ 0x8C2)])(*(a1 + 16), @"lK1") != 1)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

void sub_1D4957C78(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) - 1384597421 * ((a1 & 0xFCBC5C2B | ~(a1 | 0xFCBC5C2B)) ^ 0x753E7BBB);
  v3 = v1 - 184620571 + 1661262079 * (((&v3 | 0xDB70B86A) - (&v3 & 0xDB70B86A)) ^ 0x4D40078D) + 2682;
  v2 = *(&off_1F503AD40 + (v1 & 0xF0B0A811)) - 4;
  (*&v2[8 * v1 - 1476939872])(&v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4957EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v30 + 8) = 4096;
  *(v33 - 208) = *(a30 + 32);
  *v31 = v30;
  return v32(a1, a2, a3, a4, a5, a6, 79);
}

uint64_t sub_1D4958028()
{
  v3 = *(v2 - 160);
  *(v2 - 192) = 0;
  *(v2 - 176) = 0;
  v4 = *(&off_1F503AD40 + v0 - 800) - 12;
  (*(v1 + 8 * (v0 ^ 0xF30)))(v4);
  v5 = *v3;
  v6 = *(v3 + 3);
  v7 = **(&off_1F503AD40 + v0 - 779) * ((((v0 - 1509505030) & 0x59F937BF) + 972027742) ^ (v0 - 9)) + 907749015;
  v8 = 891395573 * ((((v2 - 144) | 0x2A55E9D9) + (~(v2 - 144) | 0xD5AA1626)) ^ 0xA21D31FC);
  *(v2 - 120) = v2 - 176;
  *(v2 - 112) = v5;
  *(v2 - 128) = v0 - v8 - 370;
  *(v2 - 144) = v2 - 192;
  *(v2 - 136) = v7 ^ v8;
  *(v2 - 132) = v8 + 994577233 + 1341023963 * v6;
  (*(v1 + 8 * (v0 + 2361)))(v2 - 144);
  v9 = *(v2 - 104);
  v10 = (*(v1 + 8 * (v0 + 2261)))(v4);
  return (*(v1 + 8 * (v0 ^ (2 * (v9 != 1449251652)))))(v10);
}

uint64_t sub_1D49581BC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 12) + (((v1 ^ 0x843D438D33FBE992) + 0x7BC2BC72CC04166ELL) ^ ((v1 ^ 0xF1DAD620F51F24C2) + 0xE2529DF0AE0DB3ELL) ^ ((v1 ^ ((((v2 ^ 0xCF2) - 644310463) & 0x26676CE7u) - 2181) ^ 0x75E795AD784713A6) - 0x75E795AD78471058)) + 0x125A615BELL;
  v6 = v4 < 0x670238B6 || v4 > *(a1 + 8) + 1728198838;
  return (*(v3 + 8 * ((45 * v6) ^ v2 ^ 0xCF2)))();
}

uint64_t sub_1D49582B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = (*(v17 + 8 * a9))(((HIDWORD(a9) ^ 0x705u) - 1096557588) ^ *(v18 - 212), 3886098504);
  *v16 = v19;
  return (*(v17 + 8 * ((89 * (v19 != 0)) ^ HIDWORD(a9))))(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D4958334@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t *a31)
{
  v32 = *a31;
  v33 = a28 - ((2 * a28) & 0x64403082) + 840964161;
  v34 = ((2 * *a26) & 0xA9FFF8FE) + (*a26 ^ 0xD4FFFC7F) + 721421185;
  *(*a31 + v34) = (v33 >> (((a1 + 95) | 3) ^ 0x1B)) ^ 0x32;
  *(v32 + v34 + 1) = BYTE2(v33) ^ 0x20;
  *(v32 + v34 + 2) = BYTE1(v33) ^ 0x18;
  *(v32 + v34 + 3) = (a28 - ((2 * a28) & 0x82) + 65) ^ 0x41;
  *a26 += 4;
  return v31();
}

uint64_t sub_1D49583FC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, char a9, __int16 a10, char a11, __int16 a12, char a13, __int16 a14, char a15)
{
  v18 = *v15;
  v19 = (*v16 ^ 0xF6EFEE7E) + 152045951 + ((2 * *v16) & 0xEDDFDCFC);
  *(*v15 + v19 + 2051) = a15;
  *(v18 + v19 + 2052) = a13;
  *(v18 + v19 + a1 + 1293) = a11;
  *(v18 + v19 + 2054) = a9;
  *v16 += 4;
  return (*(v17 + 8 * (a1 | (a8 == 1061101365) | (2 * (a8 == 1061101365)))))(2917122940, 2052, 2836405826, 1681928322);
}

uint64_t sub_1D495852C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, _DWORD *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31)
{
  v32 = *a31;
  v33 = a25 + 840964161 - (((a9 + 1457) ^ 0x64403BDD) & (2 * a25));
  v34 = ((2 * *a27) & 0xEDD6E67C) + (*a27 ^ 0x76EB733E) - 1995141950;
  *(*a31 + v34) = HIBYTE(v33) ^ 0x32;
  *(v32 + v34 + 1) = BYTE2(v33) ^ 0x20;
  *(v32 + v34 + 2) = BYTE1(v33) ^ 0x18;
  *(v32 + v34 + 3) = v33 ^ 0x41;
  *a27 += 4;
  return v31(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_1D4958974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  (*(v21 + 8 * (v18 + 607)))(v19);
  *v20 = 0;
  return v22(2743, a18);
}

uint64_t sub_1D4958A74@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = *(v1 + v2 - 16);
  *(v5 - 1) = *(v1 + v2 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) != 32) * ((v3 ^ 0x1C8) - 2905)) ^ (v3 - 1800))))();
}

uint64_t sub_1D4958AF0@<X0>(uint64_t a1@<X8>)
{
  v6 = ((3 * (v3 ^ 0x20Du) - 916) ^ v2) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((2504 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1D4958BCC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  v9 = (a1 + v7 - 0x7F35EFFB1FFFEBEFLL + v6 + v3);
  v10 = *(a3 + v3);
  *(v9 - 1) = *(a3 + v3 - 16);
  *v9 = v10;
  return (*(v8 + 8 * (((v3 - (v4 & 0x1F) != 32) * ((((v5 - 313399308) & 0x12AE17DD) + 1700) ^ 0xAD0)) ^ (v5 - 313399308) & 0x12AE17DDu)))(v3 - (v4 & 0x1F) - 64, a3 + v3 - 32, v9 - 2);
}

uint64_t sub_1D4958CDC@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + -8 - v3;
  *(a1 + -8 - v3 + v2) = *(v6 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * (((v4 - 2112284660) & 0x7DE6DEF9) - 686)) ^ v4)))(v6 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_1D4958E2C@<X0>(int a1@<W0>, int a2@<W6>, _DWORD *a3@<X8>)
{
  v7 = (v4 ^ 0x5FFEB9FC ^ ((v5 ^ 0x44C) * a2)) + ((2 * v4) & 0xBFFD7BFE) - 1610530303;
  v8 = (*(*v6 + v7) << 24) | (*(*v6 + v7 + 1) << 16) | (*(*v6 + v7 + 2) << 8);
  v9 = *(*v6 + v7 + 3);
  *a3 = (v8 | v9) + a1 - 2 * ((v8 | v9) & 0x3EA3DD1E ^ v9 & 0x16);
  *(v6 + 12) += 4;
  return v3();
}

uint64_t sub_1D4958FAC(uint64_t a1, uint64_t a2)
{
  *(v4 + 8) = 4096;
  *v2 = v4;
  return v3(2027685708, a2, 2267281347, 1088, 1986, 178961152);
}

uint64_t sub_1D4959054@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, unsigned int a16, uint64_t a17)
{
  v20 = a1 ^ 0x9C553679;
  a17 = v17;
  a16 = (v18 + a1 + 3946) ^ (891395573 * (((&a15 | 0xCA75C780) - (&a15 & 0xCA75C780)) ^ 0x423D1FA4));
  (*(v19 + 8 * (a1 ^ 0x9C5531ED)))(&a15);
  return (*(v19 + 8 * ((((v20 - 343) ^ (v20 - 310)) * (a9 == 0)) ^ v20)))(a9, v21, v22, v23, v24, v25, v26, v27, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1D49590F0(uint64_t a1, ...)
{
  va_start(va, a1);
  v4 = (*(v2 + 8 * (v3 ^ 0x6A2)))(v1, @"DhpWkh3rnR");
  (*(v2 + 8 * (v3 + 637)))(v4, 4, va);
  v5 = (*(v2 + 8 * (v3 + 664)))(v1, @"gaX8gT7e") == 1;
  return (*(v2 + 8 * ((v5 * ((v3 - 503) ^ 0x9F3)) | (v3 - 503))))();
}

uint64_t sub_1D4959138(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8) ^ (891395573 * (((a1 | 0x370DB6EB) - (a1 & 0x370DB6EB)) ^ 0xBF456ECF));
  v3 = *a1;
  v4 = *(a1 + 16);
  v9 = -((~&v6 & 0x99 | &v6 & 0x66) ^ 0x7E) ^ 0x26;
  v7 = v3;
  v8 = v4;
  v6 = v2 + 1661262079 * ((~&v6 & 0x72985499 | &v6 & 0x8D67AB66) ^ 0xE4A8EB7E) - 2057600969;
  result = (*(*(&off_1F503AD40 + (v2 ^ 0x7AA489C0)) + 8 * (v2 ^ 0x7AA48571) - 4))(&v6);
  *(a1 + 24) = v10 ^ 0xBEA3DD08;
  return result;
}

void sub_1D4959280(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72) ^ (1427277979 * ((~a1 & 0xD9896022 | a1 & 0x26769FDD) ^ 0x44E143A4));
  v3 = v1 + 1661262079 * (((&v3 | 0xCC73B237) - &v3 + (&v3 & 0x338C4DC8)) ^ 0x5A430DD0) + 2112;
  v2 = *(&off_1F503AD40 + (v1 ^ 0x2E7)) - 4;
  (*&v2[8 * v1 + 20136])(&v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D4959544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = (*(v9 + 8 * (v8 + 1081)))(0, 4, va) == 0;
  return (*(v9 + 8 * ((v10 * (((v8 + 615363380) & 0xDB5247D7) - 821)) ^ v8)))();
}

uint64_t sub_1D49595D8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (a1 - 380577018) & 0x16AF2DF6;
  *(v9 - 168) = 0;
  v11 = (*(v8 + 8 * (v10 + 695)))(16, 3886098504);
  return (*(v8 + 8 * (((v11 != 0) * (((v10 - 2385) | 0x10A) ^ 0x149)) ^ v10)))(v11, v12, v13, v14, v15, v16, v17, v18, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1D49596B4()
{
  v5 = (*(v4 + 8 * (v3 ^ 0xDCA)))(v1);
  *v0 = 0;
  return v2(v5);
}

uint64_t sub_1D4959728@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v4 ^ 0xC18u) - 1488) ^ v3) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((902 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1D49597F0()
{
  (*(v4 + 8 * (v0 + 2527)))(v1);
  *v2 = 0;
  return v3(3865);
}

uint64_t sub_1D4959884()
{
  v5 = v1 ^ v0;
  v7 = v2 < 0x20 || v5 < 8;
  return (*(v4 + 8 * (((827 * (v3 ^ 0x58A) - 1636) * v7) | v3)))();
}

uint64_t sub_1D49599FC()
{
  *(v1 + 8) = 4096;
  *v2 = v1;
  return v0();
}

uint64_t sub_1D4959B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v8 + 8 * (((((197 * (v6 ^ 0x4FD) + 127) | 0x54) + 2898) * (v7 == 1180816193)) ^ v6));
  *(v9 - 208) = -1096557304;
  return v10(a1, a2, a3, a4, a5, a6, 3290146028);
}

uint64_t sub_1D4959C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, unsigned int a13, uint64_t a14)
{
  v17 = v16 - 263;
  v18 = ((v16 - 7) ^ 0xB6) - 16;
  v19 = (*(v15 + 8 * (v17 ^ 0xA0B)))(0, 3, &a12);
  v20 = (*(v15 + 8 * (v17 ^ 0xA29)))(**(v14 + 8 * (v17 - 1617)), a14, a13);
  if (v19)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  return (*(v15 + 8 * ((((v18 ^ v22) & 1) * ((17 * (v17 ^ 0x6B6)) ^ 0x425)) ^ v17)))(v20);
}

uint64_t sub_1D4959D70()
{
  v5 = v0 + 98;
  v6 = (v1 ^ 0x67DD7FE4FACFBD1DLL) + (((v3 + v5 - 324) ^ 0x1BE522D30) & (2 * v1)) - 0x67DD7FE41A6D2C35;
  v8 = v6 < 0xE06290E4 || v6 > *(v4 + 8) + 3764556004u;
  return (*(v2 + 8 * ((3555 * v8) ^ v5)))();
}

uint64_t sub_1D4959E28()
{
  v3 = v0 ^ 0x1B90;
  v4 = (*(v2 + 8 * (v3 ^ 0x855)))((((v3 + 1052) | 0x11u) ^ 0xFFFFF7A4) & (4 * v1), 3886098504);
  return (*(v2 + 8 * ((26 * (v4 != 0)) ^ v3)))(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D4959F38@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W5>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a4 + v8);
  return (*(v7 + 8 * (((v8 == 0) * ((v5 + a1) & a2 ^ a3)) ^ v5)))();
}

uint64_t sub_1D4959FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v40 = *(v39 - 224);
  v42 = (v37 - 1939);
  v68 = *(v40 + 8);
  LODWORD(v69) = *(v40 + 72) ^ a37;
  if (v68)
  {
    v43 = (*(v40 + 72) ^ a37) == 1324530265;
  }

  else
  {
    v43 = 1;
  }

  v44 = 0x12FED60306930605 * (*(v40 + 56) - a37) + 0x246BC691A5C8DCE9;
  v45 = (v42 ^ 0xB8D09FD5F4E52E61 ^ v44) & (2 * (v44 & 0xC2191F19F0C92FBBLL)) ^ v44 & 0xC2191F19F0C92FBBLL;
  v46 = ((2 * (v44 ^ 0x38E2B3C495656C09)) ^ 0xF5F759BACB588764) & (v44 ^ 0x38E2B3C495656C09) ^ (2 * (v44 ^ 0x38E2B3C495656C09)) & 0xFAFBACDD65AC43B2;
  v47 = v46 ^ 0xA08A44524A44092;
  v48 = (v46 ^ 0x10E0088841080320) & (4 * v45) ^ v45;
  v49 = ((4 * v47) ^ 0xEBEEB37596B10EC8) & v47 ^ (4 * v47) & 0xFAFBACDD65AC43B0;
  v50 = (v49 ^ 0xEAEAA05504A00280) & (16 * v48) ^ v48;
  v51 = ((16 * (v49 ^ 0x10110C88610C4132)) ^ 0xAFBACDD65AC43B20) & (v49 ^ 0x10110C88610C4132) ^ (16 * (v49 ^ 0x10110C88610C4132)) & 0xFAFBACDD65AC43B0;
  v52 = (v51 ^ 0xAABA8CD440840300) & (v50 << 8) ^ v50;
  v53 = (((v51 ^ 0x5041200925284092) << 8) ^ 0xFBACDD65AC43B200) & (v51 ^ 0x5041200925284092) ^ ((v51 ^ 0x5041200925284092) << 8) & 0xFAFBACDD65AC4300;
  v54 = v52 ^ 0xFAFBACDD65AC43B2 ^ (v53 ^ 0xFAA88C4524000000) & (v52 << 16);
  v55 = v44 ^ (2 * ((v54 << 32) & 0x7AFBACDD00000000 ^ v54 ^ ((v54 << 32) ^ 0x65AC43B200000000) & (((v53 ^ 0x53209841AC41B2) << 16) & 0x7AFBACDD00000000 ^ 0x5222885100000000 ^ (((v53 ^ 0x53209841AC41B2) << 16) ^ 0x2CDD65AC00000000) & (v53 ^ 0x53209841AC41B2))));
  LODWORD(v79) = HIBYTE(v55) ^ 0xFFFFFFF6;
  HIDWORD(v78) = HIWORD(v55) ^ 0xFFFFFFBE;
  LODWORD(v78) = (v55 >> 40) ^ 0x47;
  HIDWORD(v77) = HIDWORD(v55) ^ 0xFFFFFF83;
  LODWORD(v77) = (v55 >> 24) ^ 0x3B;
  HIDWORD(v76) = (v55 >> 16) ^ 0xFFFFFF91;
  HIDWORD(v75) = v55 ^ 0xFFFFFFDF;
  LODWORD(v76) = (v55 >> 8) ^ 0xFFFFFFA8;
  v41 = *(v40 + 48) - a37;
  v56 = (((0xFE4596C556915A01 * v41 - 0x7DF22BAD0DDEBE4CLL) ^ 0xC6458BFC1D992656) + 0x265C3F19B992EBB0) ^ (0xFE4596C556915A01 * v41 - 0x7DF22BAD0DDEBE4CLL) ^ (((0xFE4596C556915A01 * v41 - 0x7DF22BAD0DDEBE4CLL) ^ 0xC4709BD5F4C19538) + 0x24692F3050CA58C2) ^ (((0xFE4596C556915A01 * v41 - 0x7DF22BAD0DDEBE4CLL) ^ 0x62EFF8CD4E910ED7) - 0x7D09B3D715653CD1) ^ (((0xFE4596C556915A01 * v41 - 0x7DF22BAD0DDEBE4CLL) ^ 0x7F3CA3FEFC3D8FBFLL) - 0x60DAE8E4A7C9BDB9);
  LODWORD(v75) = HIBYTE(v56) ^ 0x1F;
  HIDWORD(v74) = HIWORD(v56) ^ 0xFFFFFFE6;
  LODWORD(v74) = (v56 >> 40) ^ 0x4B;
  HIDWORD(v73) = HIDWORD(v56) ^ 0x1A;
  LODWORD(v73) = (v56 >> 24) ^ 0x5B;
  HIDWORD(v72) = (v56 >> 16) ^ 0xFFFFFFF4;
  HIDWORD(v71) = v56 ^ 6;
  LODWORD(v72) = (v56 >> 8) ^ 0x32;
  LODWORD(v55) = 49 * (v37 ^ 0x8E8);
  HIDWORD(v69) = v55 ^ 0x7B0;
  LODWORD(v67) = v55 ^ 0xC8C;
  HIDWORD(v67) = v55 ^ 0x6EC;
  v57 = v43;
  LODWORD(v71) = v57;
  HIDWORD(a34) = v37;
  v58 = (*(v38 + 8 * (v42 ^ 0xD23)))(16, 3886098504);
  HIDWORD(a28) = 1096582252;
  LODWORD(v70) = 49 * (v37 ^ 0x8E8);
  HIDWORD(v70) = v37 ^ 0x8E7;
  HIDWORD(v79) = v37 ^ 0x496;
  LODWORD(v80) = 383 * (v37 ^ 0x8EA);
  HIDWORD(v80) = 309 * (v37 ^ 0x8E7);
  return (*(v38 + 8 * (((v58 == 0) * ((((v37 - 2208) | 0x8A0) - 1583) ^ 0x29C)) ^ (v37 - 1939))))(v58, v59, v60, v61, v62, v63, v64, v65, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, 0, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1D495A4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, _UNKNOWN **, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(v20 + 8 * (v17 ^ 0x941)))(*v19);
  *v19 = v21;
  *(v19 + 8) = v18;
  return a12(2147482550, 336, 214, 1305, a16, &off_1F503AD40, a15, a17);
}

uint64_t sub_1D495A550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v22 = (v20 ^ 0xFD7F56FBDFEE483FLL) + ((2 * v20) & 0x1BFDC907ELL) + 0x280A904A3E72A38;
  v24 = v22 < ((a20 + 2523) ^ 0x83D57829uLL) || v22 > *(a2 + 8) + 2211803763u;
  return (*(v21 + 8 * ((1520 * v24) ^ a20)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_1D495A5E4@<X0>(_DWORD *a1@<X1>, uint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v10 = *a2;
  v11 = a10 - ((2 * a10) & 0x64403082) + (((a4 - 1870) | 0x820) ^ 0x3220103B);
  v12 = ((2 * *a1) & 0xFBDFF5FE) + (*a1 ^ 0xFDEFFAFF) + 34604289;
  *(*a2 + v12) = HIBYTE(v11) ^ 0x32;
  *(v10 + v12 + 1) = BYTE2(v11) ^ 0x20;
  *(v10 + v12 + 2) = BYTE1(v11) ^ 0x18;
  *(v10 + v12 + 3) = v11 ^ 0x41;
  *a1 += 4;
  return a3();
}

uint64_t sub_1D495A69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, unsigned int a32)
{
  v36 = 530 * (v32 ^ 0x5B);
  *(v33 + 8) = a32;
  (*(v34 + 8 * (v36 ^ 0x637)))(**(&off_1F503AD40 + (v36 ^ 0xA40)), *(v35 - 168), a32);
  return (*(v34 + 8 * (((v36 ^ 0xA51) + 930) ^ (v36 - 2603))))(3198409992);
}

uint64_t sub_1D495A8AC@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v3 + 883) - 1519) ^ v2) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((((v1 & 0xFFFFFFF8) - 8 == v2) | (4 * ((v1 & 0xFFFFFFF8) - 8 == v2))) ^ v3)))();
}

uint64_t sub_1D495A8F8()
{
  result = (*(v1 + 8 * (v3 ^ 0xEAD)))(&v5);
  *(v0 + 40) = v2;
  return result;
}

uint64_t sub_1D495A994()
{
  v4 = (v1 ^ 0x5DFE7EBDCEE3AF79) + ((v1 << ((v0 + 98) & 0xF8 ^ 0xF1u)) & (((v0 - 1161167008) & 0xF5BEF7FA) + 3980289794)) - 0x5DFE7EBD8461DB2CLL;
  v6 = v4 < 0x4A81D449 || v4 > *(v2 + 8) + 1250022473;
  return (*(v3 + 8 * ((2854 * v6) ^ v0)))();
}

uint64_t sub_1D495AB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, int a20, int a21, uint64_t *a22, int a23, int a24, int a25, int *a26, uint64_t a27, int a28)
{
  v30 = a18;
  a17 = 0;
  a21 = 0;
  v31 = *(&off_1F503AD40 + (v28 ^ 0xBEE)) - 12;
  (*(v29 + 8 * (v28 + 130)))(v31);
  v32 = *v30;
  v33 = *(v30 + 3);
  v34 = **(&off_1F503AD40 + v28 - 2905) * (((v28 - 2687) | 0x98) + 972027913) + 907749015;
  v35 = 891395573 * ((((2 * &a22) | 0x139AD432) - &a22 + 1983026663) ^ 0x185B23D);
  a26 = &a21;
  a27 = v32;
  a22 = &a17;
  a23 = v34 ^ v35;
  a24 = v35 + 994577233 + v33 * (((v28 - 2493) | 0xC) + 1341023437);
  a25 = v28 - v35 - 2496;
  (*(v29 + 8 * (v28 ^ 0x715)))(&a22);
  v36 = a28;
  v37 = (*(v29 + 8 * (v28 ^ 0x7F9)))(v31);
  return (*(v29 + 8 * ((105 * (v36 == 1449251652)) ^ v28)))(v37);
}

uint64_t sub_1D495AFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29)
{
  (*(v31 + 8 * (v30 + 2254)))(v29);
  v33 = *a21;
  v34 = 891395573 * ((((v32 - 144) | 0x19F19675) - ((v32 - 144) & 0x19F19675)) ^ 0x91B94E51);
  v35 = v34 + 994577233 + 1341023963 * *(a21 + 3);
  *(v32 - 136) = (((v30 - 72) ^ 0x361B25BC) + 972028385 * *a29) ^ v34;
  *(v32 - 132) = v35;
  *(v32 - 144) = v32 - 192;
  *(v32 - 120) = v32 - 176;
  *(v32 - 112) = v33;
  *(v32 - 128) = v30 - v34 - 372;
  (*(v31 + 8 * (v30 ^ 0xFD9)))(v32 - 144);
  v36 = *(v32 - 104);
  v37 = (*(v31 + 8 * (v30 ^ 0xF35)))(v29);
  return (*(v31 + 8 * ((67 * (v36 != ((v30 - 883) ^ 0x4661D341))) ^ (v30 - 72))))(v37);
}

uint64_t sub_1D495B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, int a21, int a22, uint64_t a23, uint64_t *a24, int a25, int a26, int a27, int *a28, uint64_t a29, int a30)
{
  v33 = a20;
  a19 = 0;
  a22 = 0;
  v34 = *(v30 + 8 * (v32 ^ 0x37C)) - 12;
  (*(v31 + 8 * (v32 ^ 0xF6C)))(v34);
  v35 = *v33;
  v36 = *(v33 + 3);
  v37 = 891395573 * ((2 * ((&a24 ^ 0x2327F6E3) & 0x43EFD5E3) - (&a24 ^ 0x2327F6E3) - 1139791336) ^ 0x177F04DF);
  v38 = (((v32 - 167405390) & 0x9FA67BF ^ 0x361B2508) + 972028385 * **(v30 + 8 * (v32 - 711))) ^ v37;
  a24 = &a19;
  a25 = v38;
  a26 = v37 + 994577233 + 1341023963 * v36;
  a27 = v32 - v37 - 302;
  a28 = &a22;
  a29 = v35;
  (*(v31 + 8 * (v32 ^ 0xF87)))(&a24);
  v39 = a30;
  v40 = (*(v31 + 8 * (v32 + 2329)))(v34);
  return (*(v31 + 8 * ((1351 * (v39 == 1449251652)) ^ v32)))(v40);
}

uint64_t sub_1D495B334@<X0>(int a1@<W8>)
{
  v4 = a1 + 1438;
  (*(v3 + 8 * (a1 + 2523)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0x445)))(v1);
  return v2(v5);
}

uint64_t sub_1D495B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned int a30, uint64_t a31)
{
  *(v32 + 8) = a30;
  *(v32 + 12) = 0;
  v34 = (v31 + 61) | 0x82;
  v35 = v31 - 45;
  v36 = (*(v33 + 8 * (v31 + 3130)))(**(&off_1F503AD40 + v31 - 25), a31, a30);
  return (*(v33 + 8 * ((1682 * (v34 == 242)) ^ v35)))(v36);
}

uint64_t sub_1D495B504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  HIDWORD(a10) = 192843775;
  v11 = (*(v10 + 25544))(16, 3886098504);
  return (*(v10 + 8 * ((81 * (v11 == 0)) ^ 0x598)))(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D495B6F0()
{
  v3 = (*(v0 + 12) ^ 0xEFF9CFCADF7DEBFCLL) + (((((v1 + 571) ^ 0xB67u) + 1704) ^ 0x1BEFBDF82) & (2 * *(v0 + 12))) + 0x1006303566F43E74;
  v5 = v3 >= 0x46722A6C && v3 <= *(v0 + 8) + 1181887084;
  return (*(v2 + 8 * ((125 * v5) ^ (v1 + 571))))();
}

uint64_t sub_1D495B898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v26 = v22 + 2876;
  *(v23 + 8) = a22;
  *(v23 + 12) = 0;
  v27 = (*(v24 + 8 * (v22 + 3101)))(**(a6 + 8 * ((v22 + 2876) ^ 0xB96)), a19, a22);
  return (*(v24 + 8 * ((335 * ((v26 ^ 0x7D ^ (((-1096554348 - (v25 + v26)) | (v25 + v26 + 1096554348)) < 0)) & 1)) ^ (v25 + v26 + 1096554521))))(v27);
}

uint64_t sub_1D495B98C(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x6DE)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 ^ 0xAA3) + 728) ^ (183 * (v1 ^ 0xAA3)) ^ 0x10)) ^ v1)))();
}

uint64_t sub_1D495BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = ((2 * v9) & 0xCBAFD7ECLL) + (v9 ^ ((v8 - 1606072975) | 0x55100040u) ^ 0x7FF5DDF59082AD96) - 0x7FF5DDF540A29AC2;
  v13 = v11 < (((v8 + 1157956465) | 0xB0504240) ^ 0xD0601750uLL) || v11 > *(a8 + 8) + 624251184;
  return (*(v10 + 8 * ((2434 * v13) ^ v8)))();
}

uint64_t sub_1D495C0FC@<X0>(uint64_t a1@<X8>)
{
  v6 = ((((v4 - 1602) | 0x880) + 1073508627) & (2 * v3)) + (v3 ^ 0x1FFE3CF7) - 536755447;
  v7 = (*(*a1 + v6) << 24) | (*(*a1 + v6 + 1) << 16) | (*(*a1 + v6 + 2) << 8);
  v8 = *(*a1 + v6 + 3);
  *v1 = (v7 | v8) + v5 - 2 * ((v7 | v8) & 0x3EA3DD1E ^ v8 & 0x16);
  *(a1 + 12) = v3 + 4;
  return v2();
}

uint64_t sub_1D495C218(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t (*a8)(void))
{
  v14 = ((v11 << (v13 + 4)) & v9) + (v11 ^ v8) - 1040117951;
  v15 = *(*v12 + v14 + 3);
  v16 = (*(*v12 + v14) << 24) | (*(*v12 + v14 + 1) << 16) | (*(*v12 + v14 + 2) << 8) | v15;
  *a7 = v16 - 1096557304 - 2 * (v16 & v10 ^ v15 & a1);
  *(v12 + 12) = v11 + 4;
  return a8();
}

uint64_t sub_1D495C430@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 32);
  v6 = *(a1 + v1 - 32);
  v5[1] = *(a1 + v1 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((1463 * (v2 - 1621 - (v1 & 0xFFFFFFE0) == 701)) ^ v2)))();
}

uint64_t sub_1D495C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24)
{
  a23 = v26 + 1661262079 * (((v27 | 0xC30703E9) - (v27 & 0xC30703E9)) ^ 0x5537BC0E) - 1496398767;
  a24 = v25;
  (*(v28 + 8 * (v26 ^ 0x899)))(&a23);
  v29 = (*(v28 + 8 * (v26 + 2084)))(**(v24 + 8 * (v26 ^ 0x433)), *(v24 + 8 * (v26 ^ 0x472)) - 4, a12);
  v30 = ((v26 - 1782861121) & 0xEFDDF9F7) + v29 - ((2 * v29) & 0x7D47BA10) + 956968001;
  a23 = (v26 + 634665605) ^ (1427277979 * (((v27 | 0x45D92BC6) - v27 + (v27 & 0xBA26D438)) ^ 0xD8B10840));
  a24 = v25;
  v31 = (*(v28 + 8 * (v26 | 0x84A)))(&a23);
  return (*(v28 + 8 * ((912 * (v30 == -1096557272)) ^ v26)))(v31);
}

uint64_t sub_1D495C674@<X0>(int a1@<W8>, uint64_t a2, int a3, unsigned int a4)
{
  v5 = a1 | 0x420;
  (*(v4 + 8 * (a1 + 3176)))(&a2);
  v6 = (*(v4 + 8 * (v5 ^ 0x8DD)))(&a2, 3, 56, 64, a4, 0, 0);
  v7 = ((2 * v6) & 0xDCC7AFAA) + (v6 ^ 0xEE63D7D5) + 1476262764 == ((v5 - 612) ^ 0x21A) + 1180815196;
  return (*(v4 + 8 * ((v7 | (8 * v7)) ^ v5)))();
}

uint64_t sub_1D495C7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24)
{
  a24 = v24;
  a23 = v28 + 1661262079 * ((~(&a23 | 0xA70B8914) + (&a23 & 0xA70B8914)) ^ 0xCEC4C90C) - 1496398298;
  (*(v27 + 8 * (v28 + 2638)))(&a23);
  v29 = (*(v27 + 8 * (v28 + 2553)))(**(v26 + 8 * (v28 ^ 0x258)), *(v26 + 8 * (v28 - 537)) - 4, v25);
  v30 = v29 - 1096557292 - ((v29 << ((((v28 - 67) | 0x22) - 94) ^ 0xDD)) & 0x7D47BA10);
  a24 = v24;
  a23 = (v28 + 634666074) ^ (1427277979 * (((&a23 | 0x99575E14) - (&a23 & 0x99575E14)) ^ 0x43F7D92));
  v31 = (*(v27 + 8 * (v28 ^ 0xE21)))(&a23);
  return (*(v27 + 8 * ((3694 * (v30 == -1096557292)) ^ v28)))(v31);
}

uint64_t sub_1D495C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = ((2 * v20) & 0x135B6FEF6) + (v20 ^ 0x77FF7F6D9ADB7F7BLL) + v19 - 0x77FF7F6D9ADB880ELL;
  v25 = (*(v24 + (v18 ^ 0x9E3u)) << 56) | (*(((2 * v20) & 0x135B6FEF6) + (v20 ^ 0x77FF7F6D9ADB7F7BLL) + v19 - 0x77FF7F6D9ADB7F7ALL) << 48) | (*(((2 * v20) & 0x135B6FEF6) + (v20 ^ 0x77FF7F6D9ADB7F7BLL) + v19 - 0x77FF7F6D9ADB7F79) << 40) | (*(((2 * v20) & 0x135B6FEF6) + (v20 ^ 0x77FF7F6D9ADB7F7BLL) + v19 - 0x77FF7F6D9ADB7F78) << 32) | (*(((2 * v20) & 0x135B6FEF6) + (v20 ^ 0x77FF7F6D9ADB7F7BLL) + v19 - 0x77FF7F6D9ADB7F77) << 24) | (*(((2 * v20) & 0x135B6FEF6) + (v20 ^ 0x77FF7F6D9ADB7F7BLL) + v19 - 0x77FF7F6D9ADB7F76) << 16) | (*(((2 * v20) & 0x135B6FEF6) + (v20 ^ 0x77FF7F6D9ADB7F7BLL) + v19 - 0x77FF7F6D9ADB7F75) << 8) | *(v24 + 2202);
  *a11 = (v25 - ((2 * v25) & 0x427CFD7D5B227C5ELL) + 0x213E7EBEAD913E2FLL) ^ 0x213E7EBEAD913E2FLL;
  *(v21 + 12) += 8;
  return (*(v22 + 8 * (((a18 == 0) * ((v23 + (v18 ^ 0x9E3) - 2195) ^ ((v18 ^ 0x9E3) - 944361752) & 0xFFCDFE9E ^ 0x2D)) ^ v18 ^ 0x9E3)))();
}

uint64_t sub_1D495CA44(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + a2 - 16);
  *(v6 + a2 + 16) = *(a1 + a2);
  *(v6 + a2) = v8;
  return (*(v7 + 8 * (((v5 == a2) * a4) ^ v4)))();
}

uint64_t sub_1D495CA7C()
{
  *v1 = 0;
  v1[1] = 0;
  v4 = (*(v3 + 8 * (v2 ^ 0x92E)))(v1);
  return v0(v4);
}

uint64_t sub_1D495CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 8) = 4096;
  *v5 = v4;
  return v6(a1, a2, a3, a4, 4294964165, 1288, 2527451392, 1767515903);
}

uint64_t sub_1D495CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, _DWORD *a11, uint64_t a12)
{
  (*(v12 + 8 * (v13 ^ 0x854)))(a12);
  v15 = *a10;
  v16 = v13 + 907747970 + 972028385 * *a11;
  v17 = 891395573 * ((((2 * (v14 - 144)) | 0x9583C006) - (v14 - 144) + 893263869) ^ 0x42893827);
  v18 = v17 + 994577233 + 1341023963 * *(a10 + 3);
  *(v14 - 144) = v14 - 152;
  *(v14 - 136) = v16 ^ v17;
  *(v14 - 132) = v18;
  *(v14 - 128) = v13 - v17 - 534;
  *(v14 - 120) = v14 - 160;
  *(v14 - 112) = v15;
  (*(v12 + 8 * (v13 ^ 0x8BF)))(v14 - 144);
  v19 = *(v14 - 104);
  v20 = (*(v12 + 8 * (v13 + 2097)))(a12);
  v21 = *(v12 + 8 * (((((197 * ((v13 + 234) ^ 0x4FD) + 127) | 0x54) + 2898) * (v19 == 1180816193)) ^ (v13 + 234)));
  *(v14 - 208) = -1096557304;
  return v21(v20);
}

uint64_t sub_1D495CDAC()
{
  (*(v3 + 8 * ((v2 ^ 0xABA) + 2449)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v4 = (*(v3 + 8 * (((v2 ^ 0xABA) - 730) | 0xC6B)))(v1);
  return v0(v4);
}

uint64_t sub_1D495CDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23)
{
  v27 = (v23 - 1879030527) | 0x65550000;
  *(v24 + 8) = a23;
  *(v24 + 12) = 0;
  v28 = (*(v25 + 8 * (v27 ^ (v26 + 941))))(**(&off_1F503AD40 + a6 + v27 - 326), a19, a23);
  return (*(v25 + 8 * ((v27 + 178961152) ^ 0x7B2)))(v28);
}

uint64_t sub_1D495CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, _DWORD *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, __int16 a26, char a27, __int16 a28, char a29, __int16 a30, char a31)
{
  v36 = *(*(v35 - 192) + 32);
  v37 = *a13;
  v38 = ((2 * *a16) & 0x3FD7F77C) + (*a16 ^ 0x1FEBFBBE) - 535559102;
  *(*a13 + v38) = a31;
  *(v37 + v38 + 1) = a29;
  *(v37 + v38 + 2) = a27;
  *(v37 + v38 + 3) = a25;
  v39 = *a16 + ((v32 + 1671) ^ 0x6BFu);
  *a16 = v39;
  v40 = *a13;
  *(v35 - 196) = v33;
  *(v35 - 208) = -1096557304;
  return (*(v34 + 8 * ((501 * (v36 <= v40 + (v39 ^ 0xFF3DAEBFBDFBD3EFLL) + 0x63E7F3FA5B1FEFE0 + ((2 * v39) & 0x17BF7A7DELL) - 0x6325A2BA191BC3CFLL)) ^ (((v32 + 699942807) & 0xD647B9BE) + 880))))();
}

uint64_t sub_1D495D164@<X0>(uint64_t a1@<X8>)
{
  v5 = 4 * (v2 ^ 0xD87DB80A);
  v6 = ((v5 + 1212) | 0x246) - 3023 + v1;
  v7 = *(a1 + v6 - 15);
  v8 = *(a1 + v6 - 31);
  v9 = v3 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v4 + 8 * (((8 * ((v1 & 0xFFFFFFE0) != 32)) | (32 * ((v1 & 0xFFFFFFE0) != 32))) ^ v5)))(582);
}

uint64_t sub_1D495D1D0@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 32);
  v6 = *(a1 + v1 - 32);
  v5[1] = *(a1 + v1 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((1113 * ((v2 ^ 0xD38u) + 1156 - (v1 & 0xFFFFFFE0) == 1992)) ^ v2 ^ 0xD38)))(1992 - ((v2 ^ 0xD38u) + 1156));
}

uint64_t sub_1D495D26C(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 736)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((((v1 ^ 0x9AE) + 495) ^ 0xFFFFFC24) + 10 * (v1 ^ 0x9AE))) ^ v1)))();
}

uint64_t sub_1D495D3A4@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19)
{
  v24 = *(a1 + 80);
  *a19 = v21;
  *v24 = *(v23 - 200) ^ (v19 - a2 - 1096559470);
  return (*(v22 + 8 * (((v20 != 0) * (((v19 - a2 - 2160) | 0x2E0) ^ 0x25D)) ^ (v19 - a2 - 573))))();
}

uint64_t sub_1D495D488@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (v3 | ((v5 == (v3 - 1107) - 90) << 6))))();
}

void sub_1D495D57C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32) ^ (370149929 * ((2 * (a1 & 0xFB0F43C8) - a1 + 82885687) ^ 0xB8798ED3));
  v3[0] = v1 + 1661262079 * ((830533779 - (v3 | 0x3180F093) + (v3 | 0xCE7F0F6C)) ^ 0x584FB08B) + 1200;
  v2 = *(&off_1F503AD40 + (v1 ^ 0x677)) - 4;
  (*&v2[8 * (v1 ^ 0xACD)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D495D7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v13 = *(v12 - 152);
  *(v12 - 176) = 0;
  *(v12 - 180) = 0;
  v14 = *(a2 + 8 * (a11 ^ 0x38Eu)) - 12;
  (*(v11 + 8 * (a11 ^ 0xF9Eu)))(v14);
  v16 = *v13;
  v17 = 972028385 * **(a2 + 8 * (a11 - 889)) + 907749015;
  v18 = 891395573 * ((((v12 - 144) | 0xC3AB3674) - ((v12 - 144) & 0xC3AB3674)) ^ 0x4BE3EE50);
  v19 = ((a11 + 1377528563) & 0xADE4933F ^ 0x3B480943) + v18 + 1341023963 * *(v13 + 3);
  *(v12 - 144) = v12 - 176;
  *(v12 - 136) = v17 ^ v18;
  *(v12 - 132) = v19;
  *(v12 - 128) = a11 - v18 - 480;
  *(v12 - 120) = v12 - 180;
  *(v12 - 112) = v16;
  (*(v11 + 8 * (a11 ^ 0xF75u)))(v12 - 144);
  v20 = *(v12 - 104);
  v21 = (*(v11 + 8 * (a11 ^ 0xF99u)))(v14);
  return (*(v11 + 8 * (((v20 == 1449251652) * (((a11 - 479) | 2) ^ 0x843)) ^ a11)))(v21);
}

uint64_t sub_1D495D974@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v10 = v7 + 32;
  v11 = ((v6 - 2086) ^ v10) + v4;
  v12 = *(a3 + v11 - 15);
  v13 = *(a3 + v11 - 31);
  v14 = a1 + v11 + v3;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v8 == v10) * a2) ^ v5)))();
}

uint64_t sub_1D495DA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{
  v24 = (*(v23 + 8 * (v22 + 705)))(v21, @"gaX8gT7e");
  v25 = (*(v23 + 8 * (v22 + 736)))(v24, 3, &a21);
  return (*(v23 + 8 * (((a21 != (((v22 - 2004) | 0x849) ^ 0xA4D)) * ((v22 ^ 0xA87) + 162)) ^ v22)))(v25);
}

uint64_t sub_1D495DB08(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0xAD3)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (v1 ^ 0x570 ^ (13 * (v1 ^ 0x6ED)))) ^ v1)))();
}

uint64_t sub_1D495DB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, char a22, uint64_t a23, char *a24, int a25, int a26, int a27, char *a28, uint64_t a29, int a30)
{
  v34 = (v31 + 1168225353) & 0x34C49EFF;
  v35 = v31 + 2053525784;
  (*(v33 + 8 * (v35 + 2626)))(v30);
  v36 = *v32;
  v37 = 891395573 * ((~(&a24 | 0x7C78B74D) + (&a24 & 0x7C78B74D)) ^ 0xBCF9096);
  v38 = v37 + 994577233 + 1341023963 * *(v32 + 3);
  a25 = ((v34 ^ 0x361B22A7) + 972028385 * *a12) ^ v37;
  a26 = v38;
  a28 = &a22;
  a29 = v36;
  a24 = &a19;
  a27 = v35 - v37;
  (*(v33 + 8 * (v35 + 2731)))(&a24);
  v39 = a30;
  v40 = (*(v33 + 8 * (v35 + 2631)))(v30);
  return (*(v33 + 8 * (((v39 == 1180816193) * (((v34 - 880) | 0x17) ^ 0xAC)) ^ v34)))(v40);
}

uint64_t sub_1D495DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, char a22, uint64_t a23, char *a24, int a25, int a26, int a27, char *a28, uint64_t a29, int a30)
{
  (*(v32 + 8 * (v33 + 46498484)))(v31);
  v35 = *v30;
  v36 = *(v30 + 3);
  v37 = v33 + 954244362 + 972028385 * *a14;
  v38 = 891395573 * ((((2 * (v34 ^ 0x5895906B)) | 0x8524EA0A) - (v34 ^ 0x5895906B) - 1116894469) ^ 0x924F3D4A);
  a24 = &a19;
  a26 = v38 + 994577233 + 1341023963 * v36;
  a27 = 46495348 - v38 + v33 + 510;
  a28 = &a22;
  a29 = v35;
  a25 = v37 ^ v38;
  (*(v32 + 8 * (v33 + 46498589)))(&a24);
  v39 = a30;
  v40 = (*(v32 + 8 * (v33 ^ 0xFD3A85CB)))(v31);
  return (*(v32 + 8 * ((2355 * (v39 == ((((v33 + 46496274) ^ 0x392) + 756) ^ 0x4661D1CD) + 9 * ((v33 + 46496274) ^ 0x392))) ^ (v33 + 46496274))))(v40);
}

uint64_t sub_1D495DEB8()
{
  v5 = v2 ^ v0;
  v7 = v3 > 0x1F && v5 >= ((((v1 - 1839) | 0x460u) - 77) ^ 0x49BuLL);
  return (*(v4 + 8 * ((103 * v7) ^ v1)))();
}

uint64_t sub_1D495DF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  HIDWORD(a10) = (v15 - 1262) ^ *(a12 + 16) ^ v13 ^ 0x3F962D53;
  LODWORD(v25) = (v15 - 1143534780) & 0x4428ED49;
  HIDWORD(v25) = v15 ^ 0x62;
  v16 = (*(v14 + 8 * (v15 + 1023)))(16, 3886098504);
  LODWORD(a13) = 1096582252;
  return (*(v14 + 8 * (((v16 == 0) * (((v15 - 1520) | 0x420) - 1683)) ^ (v15 - 1262))))(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, v25, a12, a13);
}

uint64_t sub_1D495E050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18)
{
  v22 = v18 ^ (v20 - 203);
  *(v21 + 8) = a17;
  *(v21 + 12) = 0;
  v23 = (*(v19 + 8 * (v22 ^ (v20 + 941))))(**(&off_1F503AD40 + (v22 ^ (v20 - 6))), a18, a17);
  return (*(v19 + 8 * ((761 * (v22 ^ (v20 + 4)) - 123174021) & 0x7577BEB ^ 0x24A ^ (v22 + 1333201930))))(v23);
}

uint64_t sub_1D495E4BC()
{
  v3 = (*(v1 + 12) ^ 0xD9FBAFFF8AA4FEFFLL) + ((2 * *(v1 + 12)) & 0x11549FDFELL) + 0x26045000F7558F44;
  v5 = v3 < 0x81FA8E3F || v3 > ((((v0 + 1950075675) & 0x8BC429EE) + 1117) ^ 0x81FA8B00) + *(v1 + 8);
  return (*(v2 + 8 * ((v5 | (2 * v5)) ^ v0)))();
}

uint64_t sub_1D495E5C0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 + 538)) ^ (v3 - 999))))();
}

uint64_t sub_1D495E604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  v17 = (*(v15 + 8 * (v12 ^ 0xDEF)))(*v16);
  *v16 = v14;
  *(v16 + 8) = v13;
  return a12(v17);
}

uint64_t sub_1D495E718()
{
  *(v1 + 8) = 4096;
  *v2 = v1;
  return v0(3921093605, 373872639, 3419232010, 3722148018, 20, 23, 3049);
}

uint64_t sub_1D495E778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19)
{
  v24 = (v19 + 324) | 0x488;
  *(v20 + 8) = a18;
  v25 = (*(v21 + 8 * (v24 + 1505)))(**(v23 + 8 * (v24 ^ 0x696)), a19, a18);
  return (*(v21 + 8 * ((1075 * (v22 + v24 - 1148 + ((v24 - 457551230) & 0x1B45AEFF) == -1096554714)) ^ (v24 + 386))))(v25);
}

uint64_t sub_1D495E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, int a22, int a23, uint64_t a24, uint64_t *a25, int a26, int a27, int a28, int *a29, uint64_t a30, int a31)
{
  v32 = a21;
  a20 = 0;
  a23 = 0;
  v33 = *(a6 + 8 * (a15 ^ 0x556)) - 12;
  (*(v31 + 8 * (a15 ^ 0x946)))(v33);
  v35 = 891395573 * (&a25 ^ 0x8848D824);
  v36 = v35 + 994577233 + 1341023963 * *(v32 + 3);
  v37 = *v32;
  v38 = **(a6 + 8 * (a15 - 1185)) * (((a15 - 1287) | 0x430) ^ 0x39EFFDD1) + 907749015;
  a25 = &a20;
  a26 = v38 ^ v35;
  a27 = v36;
  a29 = &a23;
  a30 = v37;
  a28 = a15 - v35 - 776;
  (*(v31 + 8 * (a15 + 1955)))(&a25);
  v39 = a31;
  v40 = (*(v31 + 8 * (a15 ^ 0x941)))(v33);
  return (*(v31 + 8 * ((23 * (v39 != 1449251652)) ^ a15)))(v40);
}

void sub_1D495E994(uint64_t a1)
{
  (*(v2 + 8 * (v1 + 2585)))();
  (*(v2 + 8 * (v1 ^ 0xE7A)))(a1);
  JUMPOUT(0x1D4952498);
}

uint64_t sub_1D495EA90()
{
  (*(v4 + 8 * (v3 + 2247)))(v0);
  *v1 = 0;
  return v2(74, 2147481874, 3794308737, 500659117, 2617145512, 1677823991, 2488);
}

uint64_t sub_1D495EB00@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (v1 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((44 * (((((32 - (v2 & 0xFFFFFFE0)) | ((v2 & 0xFFFFFFE0) - 32)) >> (((v3 - 54) & 0xEFu) + 114)) & 1) == 0)) | v3)))();
}

uint64_t sub_1D495EB84(int a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  v17 = (v15 + 55535141) & 0xFCB09A5B;
  v18 = *a2;
  v19 = a6 + a1 - ((2 * a1) & 0x64403082) + 1580;
  v20 = ((v17 ^ 0xFBF7F0B6) & (2 * *a15)) + (*a15 ^ 0xFDFBFD76) + 33817226;
  *(*a2 + v20) = HIBYTE(v19) ^ 0x32;
  *(v18 + v20 + 1) = BYTE2(v19) ^ 0x20;
  *(v18 + v20 + 2) = BYTE1(v19) ^ 0x18;
  *(v18 + v20 + 3) = v19 ^ 0x41;
  *a15 += 4;
  return v16();
}

uint64_t sub_1D495ECFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  a21 = v24 + 1661262079 * (v26 ^ 0x9630BFE7) - 399840398;
  a22 = v23;
  (*(v27 + 8 * (v24 + 1096560538)))(&a21);
  v28 = (*(v27 + 8 * (v24 + 1096560453)))(**(v22 + 8 * (v24 & 0x1140203)), *(v22 + 8 * (v24 + 1096557363)) - 4, a12);
  v29 = v28 - 1096557304 - ((v24 ^ 0xC3E4671F) & (2 * v28)) + 7;
  a21 = (v24 + 1731223974) ^ (1427277979 * (((v26 | 0xE135D781) + (~v26 | 0x1ECA287E)) ^ 0x7C5DF406));
  a22 = v23;
  v30 = (*(v27 + 8 * (v24 + 1096560491)))(&a21);
  return (*(v27 + 8 * (v24 ^ 0xBEA3D8D3 ^ (((((v29 - v24) | (v24 - v29)) & 0x80000000) == 0) * (838 * (v24 ^ (v25 + 5)) - 818)))))(v30);
}

uint64_t sub_1D495EFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t *a23, uint64_t *a24, int a25, int a26, int a27, int *a28, uint64_t a29, int a30)
{
  v34 = a23;
  a19 = 0;
  a22 = 0;
  v35 = *(v33 + 8 * (v31 ^ 0x886)) - 12;
  (*(v32 + 8 * (v31 ^ 0x496)))(v35);
  v36 = *v34;
  v37 = 891395573 * (((v30 | 0xC3A30262) - v30 + (v30 & 0x3C5CFD98)) ^ 0x4BEBDA46);
  v38 = v37 + 994577233 + 1341023963 * *(v34 + 3);
  a25 = (972028385 * **(v33 + 8 * (v31 ^ 0x8B1)) + 907749015) ^ v37;
  a26 = v38;
  a27 = v31 - v37 - 1752;
  a24 = &a19;
  a28 = &a22;
  a29 = v36;
  (*(v32 + 8 * (v31 + 979)))(&a24);
  v39 = a30;
  v40 = (*(v32 + 8 * (v31 + 879)))(v35);
  return (*(v32 + 8 * ((56 * (v39 == v31 + 1449249389)) ^ v31)))(v40);
}

uint64_t sub_1D495F0F0@<X0>(uint64_t a1@<X8>)
{
  v6 = (((v4 ^ 0x19Bu) - 598) ^ v3) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((1634 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1D495F144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = (v14 - 1855) | 0x612;
  v16 = (*(v13 + 8 * (v14 ^ 0x4D5)))(v12, @"gaX8gT7e");
  (*(v13 + 8 * (v14 ^ 0x4F4)))(v16, 3, &a12);
  v17 = (*(v13 + 8 * (v15 ^ 0xB86)))(v12, @"Y7bdIsnh7") == 0;
  return (*(v13 + 8 * ((v17 * ((v15 ^ 4) + 646 * (v15 ^ 0x710) - 3749)) | v15)))();
}

uint64_t sub_1D495F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, int a25, int a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t (*a34)(uint64_t, uint64_t, uint64_t))
{
  (*(v34 + 8 * a17))(*a29);
  *a29 = a27;
  *a24 = a26;
  return a34(3198409992, 697182148, 3597785045);
}

uint64_t sub_1D495F20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + v7 - 1 - 31);
  v11 = a1 + v7 - 1;
  *(v11 - 15) = *(a7 + v7 - 1 - 15);
  *(v11 - 31) = v10;
  return (*(v9 + 8 * ((61 * (((2 * v8) ^ 0x218u) - 2570 == (v7 & 0xFFFFFFE0))) ^ v8)))();
}

uint64_t sub_1D495F3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, int a3@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (v4 ^ (a3 + 1929) ^ (a3 + 485))) ^ v4)))();
}

uint64_t sub_1D495F3EC(uint64_t a1)
{
  (*(v3 + 8 * (v2 + 2422)))();
  v5 = (*(v3 + 8 * (v2 + 2423)))(a1);
  return (*(v3 + 8 * ((((v2 + 1007) ^ 0x9C2 ^ ((v2 - 819) | 0xA01)) * (v1 == -1096557304)) ^ v2)))(v5);
}

uint64_t sub_1D495F45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  v18 = v16 + 243;
  v19 = v16 - 1111;
  a15 = v16 + 243 + 1661262079 * ((((2 * &a15) | 0xBFCFA5C) - &a15 - 100564270) ^ 0x93CEC2C9) + 361;
  v20 = (*(v17 + 8 * ((v16 + 243) ^ 0x506)))(&a15);
  return (*(v17 + 8 * (((a16 != 67 * (v18 ^ 0x9AC) + 184619604) * (v19 ^ 0x471)) | v18)))(v20);
}

uint64_t sub_1D495F538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t (*a34)(uint64_t))
{
  (*(v34 + 8 * a30))(*a22);
  *a22 = a19;
  *a15 = a18;
  v36 = *(v35 - 196);
  *(v35 - 200) = *(v35 - 200);
  return a34(v36);
}

uint64_t sub_1D495F720()
{
  (*(v4 + 8 * (v2 + 2463)))(v0);
  *v1 = 0;
  return v3(2147482550, 336, 214, 1305);
}

uint64_t sub_1D495F864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v2 + 481) - 1658 + a2;
  v6 = *(v3 + v5 - 15);
  v7 = *(v3 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((3847 * ((a2 & 0xFFFFFFE0) == 32)) ^ v2)))();
}

uint64_t sub_1D495F8EC()
{
  v5 = (*(v4 + 8 * (v0 + 1348)))(v1);
  *v2 = 0;
  return v3(v5);
}

uint64_t sub_1D495F928()
{
  v4 = v1 & 0x95479C75;
  v5 = *(v0 + 12) + (((*(v3 - 172) ^ 0xAE45B2CD11BA91BDLL) + 0x51BA4D32EE456E43) ^ ((*(v3 - 172) ^ 0xDB3C1BBAED1B49CBLL) + 0x24C3E44512E4B635) ^ ((*(v3 - 172) ^ 0x7579A977FBF62CE4 ^ (v4 - 2137) ^ 0xB9F42992) + (((v4 - 2137) | 0xA1) ^ 0x8A865688BDFDFA2BLL))) + 3458016453u;
  v7 = v5 < 0xF7947BD || v5 > *(v0 + 8) + 259606461;
  return (*(v2 + 8 * ((v7 | (8 * v7)) ^ v4)))();
}

uint64_t sub_1D495FA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  (*(v22 + 8 * (v18 ^ 0x813)))(*v21);
  *v21 = v20;
  *(v21 + 8) = v19;
  return v23(1270, a18);
}

uint64_t sub_1D495FB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v32 = *(a28 + 72);
  *v32 = (*(v29 + 8 * (v30 + 475)))(((v30 - 2708) | 0x444) ^ 0xBEA3D969 ^ (v30 - 206126111) & 0xC4931AF ^ *(v31 - 156), 3886098504);
  return (*(v29 + 8 * (v30 ^ (32 * (v28 != 0)))))();
}

uint64_t sub_1D495FC40@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 - 361125580) & 0x15865CBF) - 3211 + v2;
  v6 = *(v1 + v5 - 15);
  v7 = *(v1 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((82 * ((v2 & 0xFFFFFFE0) == 32)) ^ v3)))();
}

uint64_t sub_1D495FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, __int16 a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, int a28, int a29, int a30, char *a31, uint64_t a32, int a33)
{
  (*(v36 + 8 * (v37 - 504681476)))(v34);
  v39 = *v33;
  v40 = *(v33 + 3);
  v41 = 972028385 * *v35 + 907749015;
  v42 = 891395573 * (v38 ^ 0x8848D824);
  a27 = &a23;
  a32 = v39;
  a31 = &a21;
  a28 = v41 ^ v42;
  a29 = ((v37 - 504684052) ^ 0x3B480960) + v42 + 1341023963 * v40;
  a30 = -504684612 - v42 + v37 + 510;
  (*(v36 + 8 * (v37 ^ 0x1E14ECEF)))(&a27);
  v43 = a33;
  v44 = (*(v36 + 8 * (v37 ^ 0x1E14EC03)))(v34);
  return (*(v36 + 8 * ((2527 * (v43 == ((v37 - 1119748231) & 0x77FB316B ^ 0x1533C0C1) + ((2 * (v37 - 504684052)) ^ 0x534))) ^ (v37 - 504684052))))(v44);
}

uint64_t sub_1D495FE08@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v5 + v6) = *(a1 + v6);
  return (*(v4 + 8 * (((v6 != 0) * v3) ^ v1)))();
}

void sub_1D495FE2C(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 583883621 * ((((2 * a1) | 0x42DDBC7A) - a1 - 560913981) ^ 0xDB352EF4);
  v3[0] = v1 + 1661262079 * (v3 ^ 0x9630BFE7) + 808;
  v2 = *(&off_1F503AD40 + (v1 - 2045)) - 4;
  (*&v2[8 * (v1 + 1213)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D495FF24(uint64_t a1)
{
  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *v3 = 1;
  *(v3 + 8) = a1;
  *(v3 + 16) = *(v2 + 16);
  return v1 ^ 0xBEA3DD08;
}

uint64_t sub_1D4960018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v3 - 839) | 0x80u;
  *(a1 + v2 + v5 - 663) = *(a2 + v2 + v5 - 663);
  return (*(v4 + 8 * ((104 * (v2 + v5 != 663)) ^ (v3 - 40))))();
}

uint64_t sub_1D49600DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12)
{
  v18 = v12 - 314;
  a10 = v13;
  a12 = (v12 + 1135874820) ^ (891395573 * ((v17 - (&a10 | v17) + (&a10 | 0x4B295565)) ^ 0xC3618D41));
  v19 = (*(v14 + 8 * (v12 ^ 0x480)))(&a10);
  return (*(v14 + 8 * ((3411 * ((((v18 - 138) + 533) ^ v18 ^ 0xE7Cu) + v16 == v15)) ^ v18)))(v19);
}

uint64_t sub_1D49602DC()
{
  v6 = (*(v5 + 8 * (v0 + 2568)))(*v1);
  *v1 = v3;
  *(v1 + 8) = v2;
  return v4(v6);
}

uint64_t sub_1D4960338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29, char a30, int a31, char a32)
{
  v37 = (v35 - 679147225) & 0x287AF3FD;
  (*(v34 + 8 * (v35 ^ 0x8E9)))(v32);
  v38 = *a29;
  v39 = (v37 ^ 0x361B275A) + 972028385 * *v33;
  v40 = 891395573 * ((((2 * ((v36 - 144) ^ 0xD0EE48E9)) | 0x3B06ED70) - ((v36 - 144) ^ 0xD0EE48E9) - 495154872) ^ 0x4525E675);
  *(v36 - 132) = v40 + 994577052 + 1341023963 * *(a29 + 3) + 181;
  *(v36 - 128) = v35 - v40 - 681;
  *(v36 - 120) = &a30;
  *(v36 - 112) = v38;
  *(v36 - 144) = &a32;
  *(v36 - 136) = v39 ^ v40;
  (*(v34 + 8 * (v35 | 0x802)))(v36 - 144);
  v41 = *(v36 - 104);
  v42 = (*(v34 + 8 * (v35 ^ 0x8EE)))(v32);
  return (*(v34 + 8 * ((2865 * (v41 == ((2 * v37) ^ 0x39C) + ((2 * v37) ^ 0x5EC) + 1180814533)) ^ v37)))(v42);
}

uint64_t sub_1D49605EC@<X0>(uint64_t a1@<X8>)
{
  v5 = (((v3 + 49) | 0x84Cu) ^ 0xFFFFFFFFFFFFF5B3) + v2;
  v6 = *(v1 + v5 - 15);
  v7 = *(v1 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((30 * ((v2 & 0xFFFFFFE0) == 32)) ^ v3)))(-2637);
}

uint64_t sub_1D49606EC(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v1 + 8 * (v2 + 370)))(4096, 3886098504);
  *a1 = v4;
  return (*(v1 + 8 * (((v4 != 0) * ((v2 - 2040) ^ 0x15 ^ (261 * (v2 ^ 0xB04)))) ^ v2)))();
}

uint64_t sub_1D4960830@<X0>(unsigned int a1@<W2>, int a2@<W3>, unint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X8>)
{
  v9 = v5 - 1;
  *(v7 + v9) = *(a5 + v9);
  return (*(v8 + 8 * (((v9 == (((v6 ^ a1) * a2) ^ a3)) * a4) ^ v6)))();
}

uint64_t sub_1D4960BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 ^ 0x37DFFA5F3FFBE7AFLL) + ((v5 ^ 0x7FF7C724) & (2 * v3)) - 0x37DFFA5F0204D52ELL;
  v8 = v6 < 0x3DF7127D || v6 > *(a3 + 8) + 1039602301;
  return (*(v4 + 8 * ((1212 * v8) ^ (v5 - 1972))))();
}

uint64_t sub_1D4960CC0@<X0>(_BYTE *a1@<X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t *a20, int a21, int a22, int a23, int *a24, uint64_t a25, int a26)
{
  v32 = 263 * (v27 ^ 0x5FEu);
  v33 = v28 + v30;
  v34 = (a2 + v28 + v30);
  v34[6] = a1[7];
  v34[5] = a1[6];
  *(v33 + v32 + a2 - 1837) = a1[5];
  v34[3] = a1[4];
  v34[2] = a1[3];
  v34[1] = a1[2];
  *v34 = a1[1];
  *v26 = *a1;
  *v29 += 8;
  v35 = a17;
  a16 = 0;
  a15 = 0;
  v36 = *(&off_1F503AD40 + v32 - 1760) - 12;
  (*(v31 + 8 * (v32 ^ 0xB70)))(v36);
  v37 = *v35;
  v38 = *(v35 + 3);
  v39 = 972028385 * **(&off_1F503AD40 + v32 - 1739) + 907749015;
  v40 = 891395573 * (((&a20 | 0xDADE6E69) - (&a20 & 0xDADE6E69)) ^ 0x5296B64D);
  a20 = &a16;
  a22 = v40 + 994576111 + ((v32 - 1312) | 0x20) + ((v32 - 1328) | 0x30) + 1341023963 * v38;
  a23 = v32 - v40 - 1330;
  a21 = v39 ^ v40;
  a24 = &a15;
  a25 = v37;
  (*(v31 + 8 * (v32 ^ 0xB9B)))(&a20);
  v41 = a26;
  v42 = (*(v31 + 8 * (v32 ^ 0xB77)))(v36);
  return (*(v31 + 8 * ((13 * (v41 == 1449251652)) ^ v32)))(v42);
}

uint64_t sub_1D4960EEC@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 + 2109) ^ 0xFFFFFFFFFFFFF605) + v2;
  v6 = *(v1 + v5 - 15);
  v7 = *(v1 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((2932 * ((v2 & 0xFFFFFFE0) == 32)) ^ v3)))(-2555);
}

uint64_t sub_1D4960FF0@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (v1 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * (((((v3 ^ 0xFFFFF835) & v2) != 32) * (((v3 ^ 7) + 861733656) & 0xCCA2FDBF ^ 0x8AD)) ^ v3 ^ 7)))();
}

uint64_t sub_1D4961160()
{
  v4 = v0 ^ 0x616;
  (*(v3 + 8 * (v0 ^ 0xDE9)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0xBFF)))(v1);
  return v2(v5);
}

uint64_t sub_1D4961364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((3122 * (((v3 - 640) ^ 0x40FLL) == (v2 & 0xFFFFFFE0))) ^ v3)))();
}

uint64_t sub_1D4961684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, __int16 a21, char a22, __int16 a23, char a24, __int16 a25, char a26, uint64_t a27, uint64_t a28, _DWORD *a29)
{
  v31 = *a5;
  v32 = (*a29 ^ 0x57EB798E ^ (8 * (((v29 - 155) | 0x848) ^ 0x966))) + ((2 * *a29) & 0xAFD6FBFC) - 1475051006;
  *(*a5 + v32) = a26;
  *(v31 + v32 + 1) = a24;
  *(v31 + v32 + 2) = a22;
  *(v31 + v32 + 3) = a20;
  v33 = (*a29 + 4);
  *a29 = v33;
  return (*(v30 + 8 * ((107 * (a16 <= *a5 + ((2 * v33) & 0x17F3FDFBELL) + (v33 ^ 0xEB65B2BEBF9FEFDFLL) + 0x149A4D4140601021)) ^ v29)))();
}

uint64_t sub_1D4961848@<X0>(uint64_t a1@<X8>)
{
  v8 = ~v5 + v2;
  v9 = *(v1 + v8 - 15);
  v10 = *(v1 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = v9;
  *(v11 - 31) = v10;
  return (*(v7 + 8 * (((v6 + v5 == v3) | (4 * (v6 + v5 == v3))) ^ v4)))();
}

uint64_t sub_1D4961B50@<X0>(unint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a2 + v6);
  v7 = v6 == ((v3 - 709) ^ a1);
  return (*(v5 + 8 * ((v7 | (v7 << 7)) ^ v3)))();
}

uint64_t sub_1D4961B80@<X0>(int a1@<W4>, unsigned int a2@<W5>, unint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a4 + v8);
  v9 = v8 == ((v5 + a1) & a2 ^ a3);
  return (*(v7 + 8 * ((2 * v9) | (8 * v9) | v5)))();
}

uint64_t sub_1D4961BF8@<X0>(uint64_t a1@<X8>)
{
  v10 = v3 - 1;
  *(a1 + v10 + v1) = *(v9 + v10);
  return (*(v8 + 8 * (((v10 == ((v2 + v6) & v7 ^ v4)) * v5) ^ v2)))();
}

uint64_t sub_1D4961C30(int a1, uint64_t a2)
{
  v7 = (v4 - 32);
  v8 = a2 - 32;
  v9 = *(v8 + v3);
  *(v7 - 1) = *(v8 + v3 - 16);
  *v7 = v9;
  return (*(v6 + 8 * (((v5 == 32) * a1) ^ v2)))();
}

uint64_t sub_1D4961C80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v10 = v3 + 32;
  v11 = (v10 ^ a1 ^ v5) + v2;
  v12 = *(a2 + v11 - 15);
  v13 = *(a2 + v11 - 31);
  v14 = v8 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((8 * (((v7 + v10) | (v6 - 32)) >> 63)) | (((v7 + v10) | (v6 - 32)) >> 63 << 6)) ^ v4)))();
}

void sub_1D4961CC0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) ^ (585927707 * ((2 * (a1 & 0x6BADA0E0) - a1 + 340942623) ^ 0xFD1369C1));
  v3[0] = v1 + 1661262079 * (((v3 | 0xC36850A2) - (v3 & 0xC36850A2)) ^ 0x5558EF45) + 1080;
  v2 = *(&off_1F503AD40 + v1 - 1773) - 4;
  (*&v2[8 * (v1 ^ 0xA55)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4962114(__int128 *a1)
{
  v6 = *a1;
  *(v3 - 1) = *(a1 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v4 == 0) * v2) ^ v1)))(a1 - 2);
}

uint64_t sub_1D4962234()
{
  v5 = (*(v4 + 8 * (v0 ^ 0x14CE37FB)))(v1);
  *v2 = 0;
  return v3(v5, 4294967291);
}

uint64_t sub_1D496228C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFAC2 ^ (v3 - 1234176609) & 0x4990057D) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((228 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1D4962360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W8>)
{
  v10 = *(v8 + 8 * (((a7 > *(*(v9 - 168) + 8)) * (v7 ^ 0xDCE)) ^ (v7 - 355)));
  *(v9 - 208) = -1096557304;
  return v10(a1, a2, a3, a4, a5, a6, 3290146028);
}

uint64_t sub_1D49624DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v5 = (a1 + a3 - 16);
  v6 = *(a2 + a3 - 16);
  *(v5 - 1) = *(a2 + a3 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * (((((((v3 - 105) | 4) - 293) & a3) != 32) * (156 * (((v3 - 105) | 4) ^ 0x101) - 513)) ^ ((v3 - 105) | 4))))();
}

uint64_t sub_1D496257C@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 1661)))();
  *v1 = 0;
  return sub_1D494D970();
}

uint64_t sub_1D4962618@<X0>(uint64_t a1@<X8>)
{
  v9 = ~v4 + v1;
  v10 = *(a1 + v9 - 15);
  v11 = *(a1 + v9 - 31);
  v12 = v8 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v7 + 8 * (v5 ^ (8 * ((v3 ^ v6) + v4 != v2)))))();
}

uint64_t sub_1D49626AC()
{
  v7 = (*(v6 + 8 * (v1 + 1874)))(v2, v5);
  v8 = (*(v6 + 8 * (v1 ^ 0x9AE)))(v7, 3, v4 + 4 * v5);
  return (*(v6 + 8 * (((((v5 + 1 == v3) ^ (v1 - 1)) & 1) * v0) ^ v1)))(v8);
}

uint64_t sub_1D4962748(__int128 *a1)
{
  v6 = *a1;
  *(v3 - 1) = *(a1 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v4 == 0) * v1) ^ v2)))(a1 - 2);
}

uint64_t sub_1D4962934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t))
{
  v16 = (*(v14 + 8 * (v11 + 1478)))(*v13);
  *v13 = v15;
  *(v13 + 8) = v12;
  return a11(v16);
}

uint64_t sub_1D4962998@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = *(a16 + 8);
  v21 = a1 ^ 0xBEA3DD0E ^ (v19 + 458262338) & 0xE4AF7207;
  *(v16 + 12) = v21 + v17;
  v22 = (*(v18 + 8 * (v19 + 1469)))(v21, 3886098504);
  *v20 = v22;
  return (*(v18 + 8 * (((v22 == 0) * (v19 ^ 0x6DE)) ^ v19)))();
}

uint64_t sub_1D4962A20@<X0>(int a1@<W8>)
{
  v4 = a1 - 239;
  (*(v3 + 8 * (a1 ^ 0xA0A)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0x9F9)))(v1);
  return v2(v5);
}

uint64_t sub_1D4962A40@<X0>(uint64_t a1@<X8>)
{
  v6 = 67 * (v4 ^ 0x1F7);
  v7 = (v3 ^ 0xFFFFFFFFFFFFF711 ^ (v6 + 1817)) + v2;
  *(a1 - 7 + v7) = *(v1 - 7 + v7);
  return (*(v5 + 8 * ((37 * ((v2 & 0xFFFFFFF8) - 8 != v3)) ^ v6)))();
}

void sub_1D4962B68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 12) ^ (370149929 * (a1 ^ 0xBC8932E4));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1D4962C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(v8 + 12) + ((a5 + 2143362056) & 0x803EE286) + (((*(v10 - 168) ^ 0x92A1B69F2848238CLL) + 0x6D5E4960D7B7DC74) ^ ((*(v10 - 168) ^ 0x39D6597A0F96580ALL) - 0x39D6597A0F96580ALL) ^ (((152 * (a5 ^ 0x1F7u)) ^ 0x5488101A66825842) + (*(v10 - 168) ^ 0xAB77EFE5997DA68ELL))) + 3370791471u;
  v13 = v11 < 0xA4655AB || v11 > *(v8 + 8) + 172381611;
  return (*(v9 + 8 * ((v13 * a8) ^ a5)))();
}

uint64_t sub_1D4962E10()
{
  v5 = (v0 + (v3 ^ 0x25) - 738) ^ v1 ^ (199 * (v3 ^ 0x8E3));
  v7 = v2 > 0x1F && v5 > 7;
  return (*(v4 + 8 * ((30 * v7) ^ v3)))();
}

uint64_t sub_1D4962FD8()
{
  v4 = (*(v1 + 12) ^ 0x7B797ABBBB1E76AFLL) + (((v2 ^ 0xEBBu) - 1201 + 0x1763CE85CLL) & (2 * *(v1 + 12))) + v0;
  v6 = v4 < 0xAFC55B48 || v4 > *(v1 + 8) + 2948946760u;
  return (*(v3 + 8 * (v2 ^ (2 * v6))))();
}

uint64_t sub_1D496304C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, char a23, char *a24, int a25, int a26, unsigned int a27, char *a28, uint64_t a29, int a30)
{
  (*(v33 + 8 * (v34 ^ 0xC32ED6F6)))(v31);
  v35 = *v30;
  v36 = *(v30 + 3);
  v37 = 891395573 * ((~(&a24 | 0x776AAB56) + (&a24 & 0x776AAB56)) ^ 0xDD8C8D);
  v38 = (972028385 * *v32 + 907749015) ^ v37;
  a24 = &a23;
  a27 = v34 + 1020340040 - v37;
  a28 = &a21;
  a29 = v35;
  a25 = v38;
  a26 = v37 + 994577233 + v36 * (v34 - 1933603804);
  (*(v33 + 8 * (v34 + 1020342771)))(&a24);
  v39 = a30;
  v40 = (*(v33 + 8 * (v34 ^ 0xC32ED6F1)))(v31);
  return (*(v33 + 8 * (((((v34 + 1512939462) & 0xE2A3859F) + ((v34 + 1902427843) & 0xCB6C6EFF) - 2193) * (v39 == 1180816193)) ^ (v34 + 1020341771))))(v40);
}

uint64_t sub_1D496314C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31)
{
  v34 = *(v32 + 12) + (((a31 ^ 0x72167E82B995EB28) - 0x72167E82B995EB28) ^ ((a31 ^ 0x5753DA29B9920803) - 0x5753DA29B9920803) ^ ((a31 ^ 0x2545A4ABBEA4389FLL ^ (v31 - 1919) ^ 0x6BAu) - 0x2545A4ABBEA43E23)) + 3761784063;
  v36 = v34 < 0x219467F7 || v34 > *(v32 + 8) + 563374071;
  return (*(v33 + 8 * ((2 * v36) | (16 * v36) | v31)))();
}

uint64_t sub_1D4963224()
{
  v5 = (v2 - 2275) | 0x551;
  v6 = v1 ^ (v0 - 1544) ^ (v5 + 17);
  v8 = v3 < 0x20 || v6 < (((v5 - 1327) | 0xA06u) ^ 0xAC6uLL);
  return (*(v4 + 8 * ((911 * v8) ^ v5)))();
}

uint64_t sub_1D4963300@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(v1 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((19 * (((v3 - 1443) ^ 0x223) == (v2 & 0xFFFFFFE0))) ^ v3)))();
}

uint64_t sub_1D4963358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  *(v44 - 144) = v42 + 1661262079 * ((1855569001 - (v40 | 0x6E99BC69) + (v40 | 0x91664396)) ^ 0x756FC71) - 1496400037;
  *(v44 - 136) = v39;
  (*(v43 + 8 * (v42 + 899)))(v44 - 144);
  v45 = (*(v43 + 8 * (v42 + 814)))(**(v41 + 8 * (v42 ^ 0x925)), *(v41 + 8 * (v42 ^ 0x964)) - 4, a39);
  *(v44 - 136) = v39;
  *(v44 - 144) = (v42 + 634664335) ^ (1427277979 * ((2 * (v40 & 0x45E7ECE0) - v40 - 1172827363) ^ 0x2770309B));
  v46 = (*(v43 + 8 * (v42 + 852)))(v44 - 144);
  return (*(v43 + 8 * (((((v45 << (((v42 + 90) | 0x29) ^ 0xA8)) & 0x7D47BA10) == v45) * ((v42 + 844813255) & 0xCDA52BFF ^ 0xAA3)) ^ v42)))(v46);
}

uint64_t sub_1D49634D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t))
{
  v19 = (*(v17 + 8 * (v14 + 2248)))(*v18);
  *v18 = v16;
  *(v18 + 8) = v15;
  return a14(v19);
}

void sub_1D4963520(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 28) ^ (169829299 * ((a1 - 2 * (a1 & 0x2837C5C3) + 674743747) ^ 0xE1412020));
  v3[0] = v1 + 1661262079 * ((((2 * v3) | 0xBB376964) - v3 + 576998222) ^ 0x4BAB0B55) - 57;
  v2 = *(&off_1F503AD40 + (v1 ^ 0xB5E)) - 4;
  (*&v2[8 * v1 + 2784])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D49636D0@<X0>(unint64_t a1@<X4>, int a2@<W5>, uint64_t a3@<X8>)
{
  v7 = v3 - 1;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 == (((v4 + 474) | 0x10u) ^ a1)) * a2) ^ v4)))();
}

uint64_t sub_1D496375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _DWORD *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  v49 = *a47;
  v50 = (a41 ^ 0x208D75B7) & (2 * (a41 & 0xB10D45A7)) ^ a41 & 0xB10D45A7;
  v51 = ((2 * (a41 ^ 0x628D77B1)) ^ 0xA700642C) & (a41 ^ 0x628D77B1) ^ (2 * (a41 ^ 0x628D77B1)) & 0xD3803216;
  v52 = v51 ^ 0x50801212;
  v53 = (v51 ^ 0x90802004) & (4 * v50) ^ v50;
  v54 = ((4 * v52) ^ 0x4E00C858) & v52 ^ (4 * v52) & 0xD3803214;
  v55 = (v54 ^ 0x42000010) & (16 * v53) ^ v53;
  v56 = ((16 * (v54 ^ 0x91803206)) ^ 0x38032160) & (v54 ^ 0x91803206) ^ (16 * (v54 ^ 0x91803206)) & 0xD3803210;
  v57 = v55 ^ 0xD3803216 ^ (v56 ^ 0x10002000) & (v55 << 8);
  v58 = a41 ^ (2 * ((v57 << 16) & 0x53800000 ^ v57 ^ ((v57 << 16) ^ 0x32160000) & (((v56 ^ 0xC3801216) << 8) & 0x53800000 ^ 0x53800000 ^ (((v56 ^ 0xC3801216) << 8) ^ 0x320000) & (v56 ^ 0xC3801216))));
  v59 = ((*a35 << (v47 + 62)) & 0x2FDED7EC) + (*a35 ^ 0x97EF6BF6) + 1745916938;
  *(*a47 + v59) = HIBYTE(v58) ^ 0x32;
  *(v49 + v59 + 1) = BYTE2(v58) ^ 0xD;
  *(v49 + v59 + 2) = BYTE1(v58) ^ 0x21;
  *(v49 + v59 + 3) = v58 ^ 0x8B;
  v60 = (*a35 + 4);
  *a35 = v60;
  return (*(v48 + 8 * (((a31 > *a47 + (v60 ^ 0xBEDCF3EF879B9E7ALL) - 0x5BB751356E7FDAABLL + ((2 * v60) & 0x10F373CF4) - 0x6325A2BA191BC3CFLL) * (((v47 + 1234) ^ 0xF07) - 4611 + ((v47 - 19) | 0x702))) ^ (v47 + 1234))))(*a47, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D49639E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, int a26, char *a27, unsigned int a28, int a29, uint64_t a30, char a31, char *a32)
{
  v36 = 1547649839 * (((&a25 | 0x131CB2C5) - (&a25 & 0x131CB2C5)) ^ 0xB56A7715);
  a30 = a11;
  a31 = (87 * v33 + 111) ^ (47 * (((&a25 | 0xC5) - (&a25 & 0xC5)) ^ 0x15));
  a32 = &a23;
  a27 = &a21;
  a25 = a19;
  a28 = (v32 ^ 0x5AD8D7FF) - v36 + ((8 * v35) ^ 0xEF67923F) + (((v35 ^ 0xEE4) - 1246648826) & (2 * v32));
  a29 = v35 - v36 - 1426;
  v37 = (*(v34 + 8 * (v35 + 1409)))(&a25);
  return (*(v34 + 8 * ((119 * (a26 == -1096557304)) ^ v35)))(v37);
}

uint64_t sub_1D4963E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v33 = *(a28 + 64);
  **(a28 + 32) = v30;
  *v33 = (v28 + 1299818506) & 0xB28656BF ^ 0xBEA3DD27 ^ *(v32 - 152);
  return (*(v31 + 8 * (((2 * ((((((v28 + 10) & 0xBF) + 47) & 0xFB ^ (v29 == 0)) & 1) == 0)) & 0xFB | (4 * (((((v28 + 1299818506) & 0xB28656BF) + 1407113775) & 0xAC212FFB ^ ~(v29 == 0)) & 1))) ^ (((((v28 + 1299818506) & 0xB28656BF) + 1407113775) & 0xAC212FFB) - 1353))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1D4963F28@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 2004;
  *(v5 - 176) = 0;
  v7 = a1 + 2644;
  v8 = (*(v4 + 8 * ((a1 + 2004) ^ 0x4FD)))(16, 3886098504);
  return (*(v4 + 8 * (((v8 == 0) * (v6 + v7 - 4992)) ^ v6)))(v8, v9, v10, v11, v12, v13, v14, v15, a2, a3, a4);
}

uint64_t sub_1D4963F60@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v2 ^ 0x26D06563) - 1257)) ^ v2 ^ 0x26D06563)))();
}

uint64_t sub_1D4963FC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v30 = *(a25 + 64);
  v31 = (v25 - 1675304243) & 0x63DB1FBF;
  **(a25 + 24) = v27;
  *v30 = v31 ^ (a4 - 333) ^ *(v29 - 192);
  return (*(v28 + 8 * ((((v31 + 768) ^ 0x34C ^ (v31 - 1095168985) & 0x4146ED77) * (v26 == 0)) ^ v31)))();
}

uint64_t sub_1D4964078()
{
  v3 = (*(v1 + 12) ^ 0x4FBEEDE37FFBF656) + ((2 * *(v1 + 12)) & 0xFFF7ECACLL) - 0x4FBEEDE359D4468ALL;
  v5 = v3 >= (((v0 - 1786502336) & 0x6A7BD3EFu) + 2752) + 640131997 && v3 <= *(v1 + 8) + 640135112;
  return (*(v2 + 8 * ((7 * v5) ^ v0)))(v1);
}

uint64_t sub_1D496418C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 + 637;
  v6 = a1 + 184620553;
  v7 = (*(v4 + 8 * (a1 + 3003)))(16, 3886098504);
  return (*(v4 + 8 * (((v7 == 0) * (v6 ^ 0xB011116 ^ v5 ^ 0x4B1)) ^ v5)))(v7, v8, v9, v10, v11, v12, v13, v14, a2, a3, a4);
}

uint64_t sub_1D49641B0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  *(v7 + v3) = *(a2 + v3);
  v9 = ((v3 + 1) ^ v4) == ((v2 + v5) & a1 ^ (v6 - 916));
  return (*(v8 + 8 * ((4 * v9) | (8 * v9) | v2)))();
}

uint64_t sub_1D49647B0()
{
  v3 = *(v2 - 192);
  *(v2 - 184) = 0;
  *(v2 - 204) = 0;
  v4 = *(&off_1F503AD40 + (v1 ^ 0x25C)) - 12;
  (*(v0 + 8 * (v1 + 2612)))(v4);
  v5 = 891395573 * ((v2 - 144) ^ 0x8848D824);
  v6 = v5 + 994577233 + 1341023963 * *(v3 + 3);
  v7 = *v3;
  v8 = 972028385 * **(&off_1F503AD40 + v1 - 423) + 907749015;
  *(v2 - 144) = v2 - 184;
  *(v2 - 136) = v8 ^ v5;
  *(v2 - 132) = v6;
  *(v2 - 128) = v1 - v5 - 14;
  *(v2 - 120) = v2 - 204;
  *(v2 - 112) = v7;
  (*(v0 + 8 * (v1 ^ 0xEA7)))(v2 - 144);
  v9 = *(v2 - 104);
  v10 = (*(v0 + 8 * (v1 ^ 0xE4B)))(v4);
  return (*(v0 + 8 * (((v9 != ((v1 - 1260636752) ^ 0xB4DC30A5) + 1449249836) * (((v1 - 1260636752) & 0x4B23CF5A) - 1780)) ^ v1)))(v10);
}

uint64_t sub_1D496498C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t *a21, uint64_t *a22, int a23, int a24, int a25, int *a26, uint64_t a27, int a28)
{
  v31 = a21;
  a20 = 0;
  a19 = 0;
  v32 = *(v28 + 8 * (v30 ^ 0x122)) - 12;
  (*(v29 + 8 * (v30 ^ 0xD32)))(v32);
  v33 = *v31;
  v34 = 891395573 * (((&a22 | 0xD1E3B2D4) - (&a22 & 0xD1E3B2D4)) ^ 0x59AB6AF0);
  v35 = (((v30 + 14) | 0x24) + 907748594 + 972028385 * **(v28 + 8 * (v30 - 269))) ^ v34;
  a24 = ((v30 + 50) ^ 0x3B480AF4) + v34 + 1341023963 * *(v31 + 3);
  a25 = v30 - v34 + 140;
  a23 = v35;
  a22 = &a20;
  a26 = &a19;
  a27 = v33;
  (*(v29 + 8 * (v30 ^ 0xDD9)))(&a22);
  v36 = a28;
  v37 = (*(v29 + 8 * (v30 + 2771)))(v32);
  return (*(v29 + 8 * ((2289 * (v36 == 1449251652)) ^ v30)))(v37);
}

uint64_t sub_1D4964B94@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (v1 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (v3 - 324)) ^ v3)))(v6 - 2);
}

void sub_1D4964EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, int a22, int a23, char a24, uint64_t a25, int a26, int a27, char a28, char *a29, uint64_t a30, char *a31, unint64_t a32, uint64_t a33, char *a34, int a35, uint64_t a36, int a37, int a38, int a39)
{
  v43 = 1427277979 * ((&a25 - 2 * (&a25 & 0x3E9988B56EF14987) + 0x3E9988B56EF14987) ^ 0x8A253950F3996A01);
  a34 = &a18;
  a29 = &a24;
  a30 = a19;
  a35 = (v41 - ((2 * v41) & 0xE3F43FE8) - 235266060) ^ v43;
  a26 = (v40 ^ 0xFEFBBBBB) - v43 + ((2 * v40) & 0xFDF77776) + 1969029118;
  a27 = v39 - v43 + 625;
  a28 = (a15 ^ 0xFD) - v43;
  a25 = a17;
  a31 = &a21;
  a32 = v43 + (a20 ^ 0x9BAFDDBBFBEBDDDBLL) + ((2 * a20) & 0x375FBB77F7D7BBB6) + 0x7EDEE7DEEFDC3F3ELL;
  a37 = v43 ^ 0x6D46507B;
  a38 = 1833324659 - v43;
  a36 = a1;
  a39 = v43 + ((2 * a13) & 0xFBB1777A) + 1988100092 + (a13 ^ 0xFDD8B8EE ^ (v39 - 1007));
  (*(v42 + 8 * (v39 ^ 0xB27)))(&a25);
  JUMPOUT(0x1D4965080);
}

uint64_t sub_1D4965118()
{
  v3 = (*(v1 + 12) ^ 0x6EBFFF679FFED7D7) + ((*(v1 + 12) << (((12 * ((v0 + 92) ^ 0x49)) ^ 0x81u) - 12)) & 0x13FFDAFAELL) - 0x6EBFFF66CD2AFE4CLL;
  v5 = v3 >= 0xD2D3D987 && v3 <= *(v1 + 8) + 3537099143u;
  return (*(v2 + 8 * ((494 * v5) ^ (v0 + 860))))();
}

void sub_1D49651B0()
{
  *(v1 - 200) = -1096557304;
  *(v1 - 196) = v0;
  JUMPOUT(0x1D495BE78);
}

uint64_t sub_1D496553C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24)
{
  a24 = v25;
  a23 = v24 + 1661262079 * (((v27 | 0xD9B67126) - v27 + (v27 & 0x26498ED8)) ^ 0x4F86CEC1) - 1496398348;
  (*(v28 + 8 * (v24 ^ 0xE24)))(&a23);
  v30 = (*(v28 + 8 * (v24 ^ 0xED9)))(**(v29 + 8 * (v24 ^ 0x28E)), *(v29 + 8 * (v24 - 587)) - 4, v26);
  v31 = v30 + ((v24 - 1936656526) & 0x736F0ED7 ^ 0xBEA3D5D8) - ((v30 << ((v24 ^ 0xE9) - 99)) & 0x7D47BA10);
  a23 = (v24 + 634666024) ^ (1427277979 * ((1760515376 - (v27 | 0x68EF5530) + (v27 | 0x9710AACF)) ^ 0xA788949));
  a24 = v25;
  v32 = (*(v28 + 8 * (v24 + 2541)))(&a23);
  return (*(v28 + 8 * ((2383 * (v31 == -1096557297)) ^ v24)))(v32);
}

uint64_t sub_1D49657C0@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 + 661)))();
  *v1 = 0;
  return sub_1D49657DC(v3);
}

uint64_t sub_1D49657DC()
{
  *v1 = 0;
  v1[1] = 0;
  v4 = (*(v3 + 8 * (v0 ^ 0xE88)))(v1);
  return v2(v4);
}

uint64_t sub_1D49659FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W6>, int a6@<W8>)
{
  v9 = *(v6 + 12) + (((v7 ^ 0xBB86A053B480206ELL) + 0x44795FAC4B7FDF92) ^ ((v7 ^ 0xAD72BAD73FD670CELL) + 0x528D4528C0298F32) ^ ((v7 ^ 0x16F41A8435F58D77 ^ ((a6 ^ 0xABDu) + 210)) + (((a6 ^ 0xABDu) * a5) ^ 0xE90BE57BCA0A765BLL))) + 0x197B2C39BLL;
  v11 = v9 >= 0xD90EE693 && v9 <= *(v6 + 8) + 3641632403u;
  return (*(v8 + 8 * ((97 * v11) ^ a6)))(a1, a2, a3, a4);
}

uint64_t sub_1D4965B18@<X0>(uint64_t *a1@<X7>, int a2@<W8>)
{
  v5 = *a1;
  v6 = v3 - ((2 * v3) & 0x64403082) + a2 + 840963028;
  v7 = ((2 * *v4) & 0x7FF7E9FC) + (*v4 ^ 0x3FFBF4FE) - 1073476862;
  *(*a1 + v7) = HIBYTE(v6) ^ 0x32;
  *(v5 + v7 + 1) = BYTE2(v6) ^ 0x20;
  *(v5 + v7 + 2) = BYTE1(v6) ^ 0x18;
  *(v5 + v7 + 3) = v6 ^ 0x41;
  *v4 += 4;
  return v2();
}

uint64_t sub_1D4965BC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v10 = v6 + 32;
  v11 = (v10 ^ a1 ^ v5) + v4;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = a3 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v7 != v10) * a2) ^ v8)))();
}

uint64_t sub_1D4965BC8(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0xBF3)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 ^ 0x4EA) - 16) ^ (48 * (v1 ^ 0x798)))) | v1)))();
}

uint64_t sub_1D4965D80@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + -8 - v3;
  *(a1 + -8 - v3 + v2) = *(v6 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * ((v4 + 352) ^ 0xD8B)) ^ v4)))(v6 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_1D4965DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20)
{
  v23 = v20 + 1733;
  *(v21 + 8) = a19;
  *(v21 + 12) = 0;
  v24 = v20 - 28;
  v25 = (*(v22 + 8 * ((v20 + 1733) ^ 0xA83)))(**(&off_1F503AD40 + v20 - 15), a20, a19);
  return (*(v22 + 8 * ((398 * (84 * (v23 ^ 0x6F9) == 1932)) ^ v24)))(v25);
}

uint64_t sub_1D4965EB0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 1;
  *(result + 4) = 184620744;
  return result;
}

uint64_t sub_1D4966064()
{
  v3 = (*(v1 + 12) ^ 0xBFF52F4FDFD79FCFLL) + ((*(v1 + 12) << (((v0 + 37) & 0x6Du) - 107)) & 0x1BFAF3F9ELL) + 0x400AD0B032EC7799;
  v5 = v3 >= 0x12C41764 && v3 <= *(v1 + 8) + 314840932;
  return (*(v2 + 8 * ((59 * v5) ^ v0)))();
}

uint64_t sub_1D49661EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  v14 = (*(v13 + 8 * (v12 ^ 0x3442)))(*a2, va, 16);
  return (*(v13 + 8 * (((v14 != 0) * ((((v12 ^ 0x34B8) - 2704) | 0xA24) ^ ((v12 ^ 0x34B8) + 2079724450) & 0x8409E9FD ^ 0x234)) | v12 ^ 0x34B8)))(v14, v15, v16, v17);
}

uint64_t sub_1D4966324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, __int16 a19, char a20, uint64_t a21, uint64_t a22, char *a23, int a24, int a25, int a26, char *a27, uint64_t a28, int a29)
{
  (*(v32 + 8 * (v33 ^ 0xEE0)))(v30);
  v34 = *v31;
  v35 = *(v31 + 3);
  v36 = 972028385 * *v29 + 907749015;
  v37 = 891395573 * ((&a23 + 595390746 - 2 * (&a23 & 0x237CF11A)) ^ 0xAB34293E);
  a23 = &a20;
  a27 = &a18;
  a28 = v34;
  a26 = v33 - v37 - 162;
  a24 = v36 ^ v37;
  a25 = v37 + 994577233 + v35 * ((v33 ^ 0x770) + 1341022474);
  (*(v32 + 8 * (v33 + 2569)))(&a23);
  v38 = a29;
  v39 = (*(v32 + 8 * (v33 ^ 0xEE7)))(v30);
  return (*(v32 + 8 * (((v38 != (v33 ^ 0x770) + 1180814704) * (v33 ^ 0x2AC)) ^ v33 ^ 0x770)))(v39);
}

uint64_t sub_1D4966500@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 - 16 + v3);
  v6 = *(a1 + v1 - 16);
  *(v5 - 1) = *(a1 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * (((((((v2 - 332) | 0x112u) + 4294965966) & v1) != 32) * (((v2 - 332) | 0x112) ^ 0x54C)) ^ ((v2 - 332) | 0x112))))(32, a1);
}

uint64_t sub_1D49665B0()
{
  *(v6 - 136) = v2;
  *(v6 - 144) = v4 + 1661262079 * ((2 * ((v6 - 144) & 0x62910768) - (v6 - 144) - 1653671785) ^ 0xB5E4770) - 1496400124;
  (*(v5 + 8 * (v4 + 812)))(v6 - 144);
  v7 = (*(v5 + 8 * (v4 ^ 0x529)))(**(v1 + 8 * (v4 - 2426)), *(v1 + 8 * (v4 - 2363)) - 4, v3);
  v8 = v7 + ((v4 + 33814407) ^ 0x20408B7 ^ (v0 - 2142)) - ((2 * v7) & 0x7D47BA10);
  *(v6 - 144) = (v4 + 634664248) ^ (1427277979 * ((2 * (((v6 - 144) ^ 0xA4525B6) & 0x53CD172A) - ((v6 - 144) ^ 0xA4525B6) - 1405949740) ^ 0x3B1FEEE4));
  *(v6 - 136) = v2;
  v9 = (*(v5 + 8 * (v4 + 765)))(v6 - 144);
  return (*(v5 + 8 * ((249 * (v8 == ((v4 + 33814407) | 0x28582248) - 1807238707)) ^ v4)))(v9);
}

uint64_t sub_1D4966738()
{
  v6 = *v4;
  *(v2 - 1) = *(v4 - 1);
  *v2 = v6;
  return (*(v5 + 8 * (((v3 == 0) * v1) ^ v0)))();
}

uint64_t sub_1D49667E0@<X0>(unint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v7 = (((v4 - 745901169) | 0x20u) ^ a1) + v3;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 == 0) * a2) ^ (v4 - 745899377))))();
}

void sub_1D49668E0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 583883621 * ((((2 * a1) | 0x5055C530) - a1 + 1473584488) ^ 0x52711251);
  v3[0] = v1 + 1661262079 * ((v3 + 662515008 - 2 * (v3 & 0x277D2D40)) ^ 0xB14D92A7) + 1086;
  v2 = *(&off_1F503AD40 + (v1 ^ 0x6E9)) - 4;
  (*&v2[8 * v1 + 11928])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4966A40@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + 1273685254) & 0xB4151AF7;
  v6 = ((769 * (v5 ^ 0x816)) ^ 0xFFFFFFFFFFFFF6FCLL) + v1;
  v7 = *(a1 + v6 - 15);
  v8 = *(a1 + v6 - 31);
  v9 = v3 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v4 + 8 * (v5 | (2 * (((v5 ^ 0xFFFFF7F5) & v1) != 32)))))(-2308);
}

uint64_t sub_1D4966ADC@<X0>(uint64_t (*a1)(void)@<X2>, _DWORD *a2@<X3>, int a3@<W8>)
{
  v5 = *v4;
  v6 = v3 - ((((a3 - 262) | 0x101) + 1681927553) & (2 * v3)) + 840964161;
  v7 = ((2 * *a2) & 0x79D7C4FE) + (*a2 ^ 0x3CEBE27F) - 1022091903;
  *(*v4 + v7) = HIBYTE(v6) ^ 0x32;
  *(v5 + v7 + 1) = BYTE2(v6) ^ 0x20;
  *(v5 + v7 + 2) = BYTE1(v6) ^ 0x18;
  *(v5 + v7 + 3) = v6 ^ 0x41;
  *a2 += 4;
  return a1();
}

uint64_t sub_1D4966BC0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = v5 + 32;
  v10 = (v9 ^ v7 ^ (v4 + 670)) + v3;
  v11 = *(v2 + v10 - 15);
  v12 = *(v2 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v6 == v9) * a1) ^ v4)))();
}

uint64_t sub_1D4966BF0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = ~v5 + v2;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = v8 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * ((((v6 ^ v7) + v5 == v4) * a1) ^ v3)))();
}

uint64_t sub_1D4966DE0@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ (v3 + 1594))))();
  *v1 = 0;
  return sub_1D4952384();
}

uint64_t sub_1D4966E18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + a2 - 16);
  *(v6 + a2 + 16) = *(a1 + a2);
  *(v6 + a2) = v8;
  return (*(v7 + 8 * (((v5 == a2) * a4) ^ v4)))();
}

uint64_t sub_1D4966EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29)
{
  v34 = (v32 - 991) | 0x202;
  (*(v31 + 8 * (v32 ^ 0xF9E)))(v29);
  v35 = *v30;
  v36 = *(v30 + 3);
  v37 = 972028385 * *a29 + 907749015;
  v38 = 891395573 * ((v33 - 1325587120 - 2 * ((v33 - 144) & 0xB0FD25E0)) ^ 0x38B5FDC4);
  *(v33 - 144) = v33 - 176;
  *(v33 - 132) = v38 + 994576707 + v34 + 1341023963 * v36 + 12;
  *(v33 - 128) = v32 - v38 - 480;
  *(v33 - 136) = v37 ^ v38;
  *(v33 - 120) = v33 - 180;
  *(v33 - 112) = v35;
  (*(v31 + 8 * (v32 ^ 0xF75)))(v33 - 144);
  v39 = *(v33 - 104);
  v40 = (*(v31 + 8 * (v32 + 2151)))(v29);
  return (*(v31 + 8 * (((v39 != v34 + 1180815679) * ((v34 - 1136464968) & 0x43BD1375 ^ 0x120)) ^ v34)))(v40);
}

uint64_t sub_1D4967028@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + v5 + v4) = *(v8 + v5);
  v10 = ((((v5 + 1) ^ v7) - v6) | (v6 - ((v5 + 1) ^ v7))) >= 0;
  return (*(v9 + 8 * (((16 * v10) | (32 * v10)) ^ ((((v6 ^ (a1 + 748)) * a2) ^ a3) + v6))))();
}

uint64_t sub_1D49670A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  (*(v13 + 8 * (v12 + 700)))(a1, 4, va);
  return sub_1D4962D14();
}

uint64_t sub_1D4967390@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 - 16 + v3);
  v6 = *(a1 + v1 - 16);
  *(v5 - 1) = *(a1 + v1 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (((v2 - 950) | 0x464) - 776)) ^ v2)))();
}

uint64_t sub_1D49674B8@<X0>(int a1@<W2>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _DWORD *a21)
{
  v21 = *a2;
  v22 = ((a1 ^ 0xDDC2FA90) + 95493563) ^ a1 ^ ((a1 ^ 0xB2A4774D) + 1792512104) ^ ((a1 ^ 0x3FEFFCFF) - 409199658) ^ (((a4 - 556) ^ 0xAF7688A8) + (a1 ^ 0x770569F7));
  v23 = ((2 * *a21) & 0x6BDFD1EE) + (*a21 ^ 0x35EFE8F7) - 904915191;
  *(*a2 + v23) = HIBYTE(v22) ^ 0x27;
  *(v21 + v23 + 1) = BYTE2(v22) ^ 0x8C;
  *(v21 + v23 + 2) = BYTE1(v22) ^ 0x18;
  *(v21 + v23 + 3) = v22 ^ 0xD5;
  *a21 += 4;
  return a3();
}

uint64_t sub_1D49675B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, int a25, int a26, int a27, int *a28, uint64_t a29, int a30)
{
  v32 = a20;
  a22 = 0;
  a19 = 0;
  v33 = *(&off_1F503AD40 + v30 - 1609) - 12;
  (*(v31 + 8 * (v30 + 1447)))(v33);
  v34 = *v32;
  v35 = *(v32 + 3);
  v36 = 972028385 * **(&off_1F503AD40 + (v30 ^ 0x6FC)) + 907749015;
  v37 = 891395573 * ((((2 * &a24) | 0xAF76E0CA) - &a24 - 1471901797) ^ 0xDFF3A841);
  a24 = &a22;
  a29 = v34;
  a28 = &a19;
  a25 = v36 ^ v37;
  a26 = v37 + 994577233 + 1341023963 * v35;
  a27 = v30 - v37 - 1179;
  (*(v31 + 8 * (v30 + 1552)))(&a24);
  v38 = a30;
  v39 = (*(v31 + 8 * (v30 + 1452)))(v33);
  return (*(v31 + 8 * ((102 * (v38 == ((v30 - 2143930079) & 0x7FC9C7FD ^ 0x5661CCC6) + v30 + 299)) ^ v30)))(v39);
}

uint64_t sub_1D4967808()
{
  (*(v2 + 8 * (v0 + 1704)))(v1);
  **(v4 - 208) = 0;
  return v3(*(v4 - 196));
}

void sub_1D49678C0(uint64_t a1)
{
  v1 = *(a1 + 4) + 2017535981 * (((a1 | 0x2DB2F948) - (a1 & 0x2DB2F948)) ^ 0xFDABB89D);
  v2 = *(&off_1F503AD40 + v1 - 2592) - 4;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0x6EE)])(*(a1 + 8), @"gaX8gT7e") == 1) * (((v1 - 353) | 0x114) ^ 0x996)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D49679FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = v13;
  v18 = (*(v16 + 8 * (v14 ^ 0x479u)))(v15, 3886098504);
  return (*(v16 + 8 * (((v18 == 0) * (((v14 - 184) ^ 0xB432AE44) + (v14 ^ 0x4BCD5F0A))) ^ v14)))(3921093605, 373872639, 3419232010, 3722148018, 20, 23, 3049, a8, a9, a10, a11, v20, a13, v17);
}

uint64_t sub_1D4967B44()
{
  result = (*(v2 + 8 * (v0 ^ 0xEC9)))(v5);
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_1D4967BAC@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v7 = (v4 ^ 0xFFFFFFFFFFFFFB8FLL ^ (v5 + 1474786617) & 0xA8188D75) + v3;
  *(a1 - 7 + v7 + v2) = *(a2 + v7);
  return (*(v6 + 8 * ((2367 * ((v3 & 0xFFFFFFF8) - 8 == v4)) ^ v5)))();
}

uint64_t sub_1D4967C18()
{
  v5 = (v4 ^ 0xBDBEFF11 ^ ((v2 - 838) | 0x2C0)) + ((2 * v4) & 0x7B7DFBEE) + 1111556617;
  v6 = (*(*v3 + v5) << 24) | (*(*v3 + v5 + 1) << 16) | (*(*v3 + v5 + 2) << 8);
  v7 = *(*v3 + v5 + 3);
  *v1 = (v6 | v7) - 1096557304 - 2 * ((v6 | v7) & 0x3EA3DD1E ^ v7 & 0x16);
  *(v3 + 12) += 4;
  return v0();
}

uint64_t sub_1D4967D78@<X0>(uint64_t a1@<X8>)
{
  v9 = ~v5 + v1;
  v10 = *(a1 + v9 - 15);
  v11 = *(a1 + v9 - 31);
  v12 = v8 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v7 + 8 * (((v5 + v3 - 1289 != v2) * v6) ^ v4)))();
}

uint64_t sub_1D4967DBC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7, __int16 a8, char a9, __int16 a10, char a11, __int16 a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *a23;
  v30 = ((2 * *v27) & 0x69F6ECEE) + (*v27 ^ (a1 - 1258589566)) + 1258588553;
  *(*a23 + v30) = a13;
  *(v29 + v30 + 1) = a11;
  *(v29 + v30 + 2) = a9;
  *(v29 + v30 + 3) = a7;
  *v27 += 4;
  return (*(v28 + 8 * (a1 ^ (2 * (a6 != 1299428549)))))(a27, 3926164034, 1681928322);
}

uint64_t sub_1D4967F9C()
{
  *(v1 + 8) = *(v3 - 180);
  *(v1 + 12) = 0;
  v4 = v0 - 188;
  v5 = v0 - 25;
  (*(v2 + 8 * ((v0 + 1724) ^ 0x468)))(**(&off_1F503AD40 + v0 - 303), *(v3 - 176), *(v3 - 180));
  return (*(v2 + 8 * (v4 ^ 0xAA7 ^ v5)))(3198409992);
}

uint64_t sub_1D4968020(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0xAF5)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((334 * ((((v1 ^ 0xE70) - 2164) | 0x214) ^ 0x29E)) ^ 0x371)) ^ v1 ^ 0xE70)))();
}

void sub_1D49681A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char *a27, int a28, int a29, int a30, char *a31, uint64_t a32)
{
  v37 = v32 + 115;
  (*(v35 + 8 * (v37 ^ 0x4C6)))(v33);
  v38 = *v36;
  v39 = *(v36 + 3);
  v40 = 891395573 * (((&a27 | 0x631D12B8) - (&a27 & 0x631D12B8)) ^ 0xEB55CA9C);
  v41 = (((22 * (v37 ^ 0x8D9)) ^ 0x361B2E83) + 972028385 * *v34) ^ v40;
  a27 = &a22;
  a31 = &a26;
  a32 = v38;
  a30 = v37 - v40 - 1672;
  a28 = v41;
  a29 = v40 + 994577233 + 1341023963 * v39;
  (*(v35 + 8 * (v37 + 1059)))(&a27);
  (*(v35 + 8 * (v37 ^ 0x4C1)))(v33);
  JUMPOUT(0x1D4953520);
}

uint64_t sub_1D49682D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t *a23, uint64_t *a24, int a25, int a26, int a27, int *a28, uint64_t a29, int a30)
{
  v33 = a23;
  a19 = 0;
  a21 = 0;
  v34 = *(v30 + 8 * (v32 ^ 0xB66)) - 12;
  (*(v31 + 8 * (v32 + 266)))(v34);
  v35 = *v33;
  v36 = *(v33 + 3);
  v37 = **(v30 + 8 * (v32 ^ 0xB51)) * ((v32 ^ 0x96C) + 972027782) + 907749015;
  v38 = 891395573 * (&a24 ^ 0x8848D824);
  a24 = &a19;
  a28 = &a21;
  a29 = v35;
  a25 = v37 ^ v38;
  a26 = v38 + 994577233 + 1341023963 * v36;
  a27 = v32 - v38 - 2360;
  (*(v31 + 8 * (v32 ^ 0x79D)))(&a24);
  v39 = a30;
  v40 = (*(v31 + 8 * (v32 + 271)))(v34);
  return (*(v31 + 8 * ((1978 * (v39 == 1449251652)) ^ v32)))(v40);
}

uint64_t sub_1D4968434(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = (*(a1 + 12) ^ (891395573 * (((a1 | 0xFE8ABB74) - (a1 & 0xFE8ABB74)) ^ 0x76C26350))) - 1135876918;
  v6 = (891395573 * (((v5 | 0x878D9207) + (~v5 | 0x78726DF8)) ^ 0xFC54A22)) ^ ((*(a1 + 12) ^ (891395573 * (((a1 | 0xFE8ABB74) - (a1 & 0xFE8ABB74)) ^ 0x76C26350))) - 1135875755);
  v7 = v2;
  result = (*(*(&off_1F503AD40 + v3) + 8 * v3 + 26124))(v5);
  *(a1 + 8) = 0;
  return result;
}

void MpP1bcydEGt61uk5lIIoLR(uint64_t a1, uint64_t a2)
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

void dh6aBEBplJsY(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D49687C0()
{
  *(v3 - 216) = 0;
  v4 = 7 * (v0 ^ 0x95);
  *(v1 + 8) = *(v3 - 204);
  *(v1 + 12) = 0;
  v5 = (*(v2 + 8 * (v4 ^ 0xE8B)))(**(&off_1F503AD40 + v4 - 716), *(v3 - 184), *(v3 - 204));
  return (*(v2 + 8 * ((v4 - 424) ^ 0x8D0)))(v5);
}

uint64_t sub_1D4968850(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  *(v11 + 12) = v13 + (v15 ^ a2);
  v16 = (*(v12 + 8 * (v14 ^ 0x780)))();
  *a11 = v16;
  return (*(v12 + 8 * (((v16 == 0) * (v14 - 1961 + v14 + 67 - 2189)) ^ v14)))(v16, v17, v18, v19, v20, 178961152, v21, v22, a9);
}

uint64_t sub_1D4968988()
{
  v5 = ((v1 ^ v0 ^ (((v3 + 1248364533) & 0xB5977ADB) - 730)) & ((v1 ^ v0) - v3) | ((v3 | v1 ^ v0) - (v1 ^ v0))) >> 63;
  if (v2 < 0x20)
  {
    LODWORD(v5) = 1;
  }

  return (*(v4 + 8 * (v3 ^ 0xBC9 ^ (19 * v5))))();
}

uint64_t sub_1D49689F0(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 996)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((v1 - 1793215423) ^ 0x951DBCE7)) ^ v1)))();
}

uint64_t sub_1D4968CF0@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 != 0;
  if (*(v4 - 164) != v3 - 8)
  {
    v5 = 0;
  }

  return (*(v2 + 8 * ((v5 * ((v1 + 1223) ^ (v1 + 1109))) ^ v1)))();
}

uint64_t sub_1D49690FC(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((2360 * (v5 == ((v2 + 1156249701) & 0xBB150677) - 535)) ^ v2)))();
}

uint64_t sub_1D49691EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, int a34, int a35)
{
  v37 = *a6;
  v38 = ((a35 ^ 0x98AF402C) + 1543186360) ^ a35 ^ ((a35 ^ 0x2BD96168) - 393410828) ^ ((a35 ^ 0x70204B4F) - 1284231979) ^ ((a35 ^ 0xFFFDF26F) + 1017746933);
  v39 = ((2 * *a32) & 0xEFDEEF7C) + ((v35 - 22) ^ v35 ^ 0xD82 ^ *a32 ^ 0x77EF7A26) - 2012182462;
  *(*a6 + v39) = HIBYTE(v38) ^ 0x3C;
  *(v37 + v39 + 1) = BYTE2(v38) ^ 0xAB;
  *(v37 + v39 + 2) = ((((a35 ^ 0x402C) + 10168) ^ a35 ^ ((a35 ^ 0x6168) + 1780) ^ ((a35 ^ 0x4B4F) + 11477) ^ ((a35 ^ 0xF26F) - 27147)) >> 8) ^ 0x98;
  *(v37 + v39 + 3) = ((a35 ^ 0x2C) - 72) ^ a35 ^ ((a35 ^ 0x68) - 12) ^ ((a35 ^ 0x4F) - 43) ^ ((a35 ^ 0x6F) - 11) ^ 0x64;
  v40 = (*a32 + 4);
  *a32 = v40;
  return (*(v36 + 8 * ((225 * (a29 > *a6 + ((2 * v40) & 0x1C9FAFEDALL) + (v40 ^ 0x57F396B7E4FD7F6DuLL) - 0x57F396B7E4FD7F6DLL)) ^ v35)))();
}

uint64_t sub_1D49693C8@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (v1 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((((v3 + 452820266) ^ 0xFFFFFBA5) & v2) != 32) * (((v3 + 1901856475) & 0xA9A17ADB) - 2229)) ^ (v3 + 452820266))))();
}

uint64_t sub_1D49694D0@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, int a3@<W3>, int a4@<W4>, char a5@<W5>, char a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v19 = *v15;
  v20 = *(*(v18 + 8) + 4 * (v9 - 1188 + a8 + a7));
  v21 = v20 + a3 - (v11 & (2 * v20));
  v22 = (v13 & (2 * v8)) + (v8 ^ v12) + v10;
  *(*v15 + v22) = a5 ^ HIBYTE(v21);
  *(v19 + v22 + 1) = BYTE2(v21) ^ 0x20;
  *(v19 + v22 + 2) = BYTE1(v21) ^ 0x18;
  *(v19 + v22 + 3) = v21 ^ a6;
  v23 = a1 < a2;
  *v16 += 4;
  if (v23 == a8 + v14 < a2)
  {
    v23 = a8 + v14 < a1;
  }

  return (*(v17 + 8 * ((v23 * a4) ^ v9)))();
}

uint64_t sub_1D4969654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15)
{
  (*(v18 + 8 * (v15 + 2266)))(*v19);
  *v19 = v17;
  *(v19 + 8) = v16;
  return a13(74, 2147481874, 3794308737, 500659117, 2617145512, 1677823991, 2488, a15);
}

uint64_t sub_1D49697FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(v19 + 8 * (v17 ^ 0x53Cu)))(a9, @"AAYLwXkf", v18);
  v20 = (*(v19 + 8 * (v17 + 698)))(v18);
  return (*(v19 + 8 * (((((2 * ((v17 - 440) | 0x38)) ^ 0x110C) + 22 * (((v17 - 440) | 0x38) ^ 0x80C) - 2281) * (a17 == 0)) ^ ((v17 - 440) | 0x38))))(v20);
}

uint64_t sub_1D4969884()
{
  (*(v2 + 8 * (v0 ^ 0x849)))();
  *v1 = 0;
  return sub_1D495CA7C();
}

uint64_t sub_1D496996C@<X0>(int a1@<W8>)
{
  v4 = (*(v3 + 8 * (a1 ^ (v1 + 3468))))();
  *v2 = 0;
  return sub_1D496998C(v4);
}

uint64_t sub_1D496998C()
{
  *v0 = 0;
  v0[1] = 0;
  v4 = (*(v3 + 8 * (v2 ^ 0x416)))(v0);
  return v1(v4);
}

uint64_t sub_1D4969CC0(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x77D)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (v1 - 4643 + ((v1 - 1327985413) & 0x4F276F37))) ^ v1)))();
}

uint64_t sub_1D4969D2C(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0xFE0)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 - 622) ^ 0xFFFFF7A5) + ((v1 - 622) | 0x890))) ^ v1)))();
}

uint64_t sub_1D4969E74@<X0>(uint64_t *a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, int a12)
{
  v13 = *a1;
  v14 = a12 + 840964161 - ((a2 ^ 0x644032E2) & (2 * a12));
  v15 = ((2 * *a11) & 0xAFFFC0FC) + (*a11 ^ 0xD7FFE07E) + 671096706;
  *(*a1 + v15) = HIBYTE(v14) ^ 0x32;
  *(v13 + v15 + 1) = BYTE2(v14) ^ 0x20;
  *(v13 + v15 + 2) = BYTE1(v14) ^ 0x18;
  *(v13 + v15 + 3) = v14 ^ 0x41;
  *a11 += 4;
  return v12();
}

uint64_t sub_1D4969F28@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a1 + v6);
  return (*(v5 + 8 * (((v6 == 0) * v3) ^ v1)))();
}

void sub_1D4969F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, int a20, char a21, char *a22, int a23, int a24, int a25, char *a26, uint64_t a27)
{
  (*(v30 + 8 * (v31 ^ 0x7FE)))(v27);
  v32 = *v28;
  v33 = *(v28 + 3);
  v34 = *v29 * (((v31 + 1434480240) & 0xAA7F87DE) + 972027859) + 907749015;
  v35 = 891395573 * (&a22 ^ 0x8848D824);
  a26 = &a21;
  a27 = v32;
  a25 = v31 - v35 - 2496;
  a22 = &a17;
  a23 = v34 ^ v35;
  a24 = v35 + 994577233 + 1341023963 * v33;
  (*(v30 + 8 * (v31 + 235)))(&a22);
  (*(v30 + 8 * (v31 + 135)))(v27);
  JUMPOUT(0x1D4963B48);
}

uint64_t sub_1D496A170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, uint64_t a26)
{
  a26 = v27;
  a25 = v29 + 1661262079 * (v26 ^ 0x9630BFE7) - 1496398256;
  (*(v31 + 8 * (v29 ^ 0xE98)))(&a25);
  v32 = (*(v31 + 8 * (v29 ^ 0xE65)))(**(v30 + 8 * (v29 ^ 0x232)), *(v30 + 8 * (v29 - 495)) - 4, v28);
  v33 = v32 - 1096557304 - ((v32 << ((v29 ^ 0x74) - 68)) & 0x7D47BA10) + 2;
  a25 = (v29 + 634666116) ^ (1427277979 * ((2 * (&a25 & 0xC9E49B0) - &a25 + 1935783498) ^ 0xEE0995CC));
  a26 = v27;
  v34 = (*(v31 + 8 * (v29 + 2633)))(&a25);
  return (*(v31 + 8 * ((110 * (v33 == ((v29 + 1397886713) ^ 0xEDF1CC20))) ^ v29)))(v34);
}

uint64_t sub_1D496A590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = v11 + v8 + 62;
  v14 = *v12;
  v15 = a8 - ((2 * a8) & 0x64403082) + 840964161;
  v16 = ((2 * *v10) & 0x79FFC5EE) + (*v10 ^ 0xBCFFE2F7) + 1124080905;
  *(*v12 + v16) = v13 ^ HIBYTE(v15) ^ 0x38;
  *(v14 + v16 + 1) = BYTE2(v15) ^ 0x20;
  *(v14 + v16 + 2) = BYTE1(v15) ^ 0x18;
  *(v14 + v16 + 3) = (a8 - ((2 * a8) & 0x82) + 65) ^ 0x41;
  *v10 += 4;
  return v9();
}

uint64_t sub_1D496A6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v12 - 160) = 0;
  v13 = (v10 - 1021) | 0x840;
  v14 = v10 - 463;
  v15 = (*(v11 + 8 * (v10 + 1140)))(16, 3886098504);
  return (*(v11 + 8 * (((v15 == 0) * (v13 - 3130)) ^ v14)))(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D496A87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v7 + ((v6 - 1952) ^ a2) + a3) = *(v5 + ((v6 - 1952) ^ a2) + a3);
  v10 = v8 == a2;
  v11 = a2 + 8;
  v12 = v10;
  return (*(v9 + 8 * ((v12 * v3) ^ v4)))(a1, v11);
}

uint64_t sub_1D496A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  (*(v23 + 8 * (v22 + 1694)))(v20);
  *v19 = 0;
  return v21(2147484401, 24480, 755, 202, 21, a19);
}

void EKNEpfxz52bXl()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F503AD40 + ((35 * (dword_1EC7E2348 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * (dword_1EC7E2348 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0xA6]) - 176);
  v1 = *(v0 - 4);
  v2 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * (v1 ^ dword_1EC7E24C8 ^ 0xFD)) - 4) ^ 0x40u) - 4) ^ (35 * (v1 ^ dword_1EC7E24C8 ^ 0xFD))) - 82);
  v3 = (*v2 ^ v1) - &v5;
  *(v0 - 4) = 1835632163 * v3 - 0x5A968D362BDD27FDLL;
  *v2 = 1835632163 * (v3 ^ 0x5A968D362BDD27FDLL);
  v6[0] = 1661262079 * ((v6 & 0x9FA56B9F | ~(v6 | 0x9FA56B9F)) ^ 0xF66A2B87) + 2854;
  LOBYTE(v2) = 35 * (*(v0 - 4) ^ 0xFD ^ *v2);
  v4 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E2348) ^ 0xFD)) ^ byte_1D4B4E210[byte_1D4B4DE10[(35 * ((dword_1EC7E24C8 + dword_1EC7E2348) ^ 0xFD))] ^ 0xA6]) - 197) - 4;
  (*&v4[8 * (*(off_1F503AFD0 + (*(off_1F503AF08 + v2 - 12) ^ 0x51u) - 4) ^ v2) + 24048])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D496AB2C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v3 - 1776) ^ 0xE5)) ^ v3)))();
}

uint64_t sub_1D496ABA8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  *(a1 + v2) = 0;
  v4 = v2 + 8 == ((a2 + 1579554927) & 0x2BFC) - 2380;
  return (*(v3 + 8 * (((8 * v4) | (16 * v4)) ^ a2)))();
}

uint64_t sub_1D496AC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35, uint64_t a36, uint64_t (*a37)(void))
{
  v38 = (v37 - 1137330430) & 0x43CA43BE;
  v39 = *a35;
  v40 = a25 - ((v38 ^ 0x64403108) & (2 * a25)) + 840964161;
  v41 = ((2 * *a23) & 0x79F6CE6E) + (*a23 ^ 0x3CFB6737) - 1023108919;
  *(*a35 + v41) = HIBYTE(v40) ^ 0x32;
  *(v39 + v41 + 1) = BYTE2(v40) ^ 0x20;
  *(v39 + v41 + 2) = BYTE1(v40) ^ 0x18;
  *(v39 + v41 + 3) = v40 ^ 0x41;
  *a23 += 4;
  return a37();
}

uint64_t sub_1D496AD30@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(a1 + 12) ^ 0xDECFF97972DC7EFALL) + ((2 * *(a1 + 12)) & 0xE5B8FDF4) + 0x2130068709A53ABFLL;
  v5 = v3 < 0x7C81B9B5 || v3 > ((v1 - 742) | 0x347u) + *(a1 + 8) + 2088873558;
  return (*(v2 + 8 * ((491 * (((v1 - 1) ^ v5) & 1)) ^ v1)))();
}

void sub_1D496AE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  (*(v11 + 8 * (v10 ^ 0x695u)))(a1, 4, va);
  JUMPOUT(0x1D496AE5CLL);
}

uint64_t sub_1D496AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32)
{
  *a7 += a17;
  v37 = *(v36 - 160);
  a32 = 0;
  a31 = 0;
  v38 = *(v32 + 8 * (v35 - 1111)) - 12;
  (*(v34 + 8 * (v35 + 1945)))(v38);
  v39 = *v37;
  v40 = *(v37 + 3);
  v41 = **(v32 + 8 * (v35 ^ 0x4CE)) * (((v35 + 1945241927) & 0x8C0DF3DD) + 972027924) + 907749015;
  v42 = 891395573 * ((((2 * v33) | 0xEC736016) - v33 + 163991541) ^ 0x7E71682F);
  *(v36 - 120) = &a31;
  *(v36 - 112) = v39;
  *(v36 - 132) = ((v35 + 1945241927) ^ 0x48BA06BE) + v42 + 1341023963 * v40;
  *(v36 - 128) = v35 - v42 - 681;
  *(v36 - 136) = v41 ^ v42;
  *(v36 - 144) = &a32;
  (*(v34 + 8 * (v35 + 2050)))(v36 - 144);
  v43 = *(v36 - 104);
  v44 = (*(v34 + 8 * (v35 ^ 0x8EE)))(v38);
  return (*(v34 + 8 * ((3917 * (v43 == 1449251652)) ^ v35)))(v44);
}

uint64_t sub_1D496B0A8(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *(v7 + a1 - 16);
  *(v6 + a1 + 16) = *(v7 + a1);
  *(v6 + a1) = v9;
  return (*(v8 + 8 * (((v4 == a1) * a3) ^ v3)))(a1 + v5);
}

uint64_t sub_1D496B0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = (*(v7 + 8 * (v8 + 700)))(a1, 4, va);
  return sub_1D496B0F8(v9);
}

uint64_t sub_1D496B0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, int a15, char a16, __int16 a17, char a18, int a19, int a20, char a21, __int16 a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, char *a32, int a33, uint64_t a34, char *a35, int a36, char *a37, uint64_t a38, uint64_t a39, char a40, char *a41, unsigned int a42)
{
  v47 = 87 * v43 + 52;
  v48 = v47 & 0x72 ^ 0xC8;
  v49 = 1661262079 * ((~&a31 & 0xBDF4324F | &a31 & 0x420BCDB0) ^ 0x2BC48DA8);
  a41 = &a23;
  a37 = &a21;
  a38 = 0;
  a42 = (v42 ^ 0xBFFCDEFA) - v49 + 2110222208 + ((v42 << ((v46 - 123) & 0xFA ^ 0x79)) & 0x7FF9BDF4);
  a39 = a25;
  a31 = &a16;
  a32 = &a13;
  a33 = (v46 - 1525) ^ v49;
  a40 = (v47 ^ (2 * ((v47 ^ 0x60) & (2 * ((v47 ^ 0x60) & (2 * ((v47 ^ 0x60) & (2 * ((v47 ^ 0x60) & (2 * ((v47 ^ 0x60) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ 0xCB) + ((~&a31 & 0x4F | &a31 & 0xB0) ^ 0xA8);
  a35 = &a18;
  a34 = a11;
  v50 = (*(v44 + 8 * (v46 + 685)))(&a31);
  return (*(v44 + 8 * ((732 * (a36 == v45)) ^ (v46 - 79))))(v50);
}

uint64_t sub_1D496B264()
{
  v3 = (*(v2 + 12) ^ 0xBB9FCEAFFFFB87EFLL) + (((34 * (v0 ^ 0x3AEu)) ^ 0x1FFF704F6) & (2 * *(v2 + 12))) + 0x446031506628E3C2;
  v5 = v3 >= 0x66246BAD && v3 <= *(v2 + 8) + ((v0 + 1873) ^ 0x662460E6uLL);
  return (*(v1 + 8 * ((2018 * v5) ^ v0)))();
}

uint64_t sub_1D496B35C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = (v2 ^ 0x74B7EFE7EFF6ECFFLL) + ((2 * v2) & 0x1DFEDD9FELL) - 0x74B7EFE7D77193FCLL;
  v6 = v4 < 0x188558FF || v4 > ((a2 + 1502) ^ 0x18855E73) + *(a1 + 8);
  return (*(v3 + 8 * ((1749 * v6) ^ a2)))();
}

uint64_t sub_1D496B404(uint64_t a1)
{
  v5 = ((v2 - 2540) ^ 0xFFFFFFFFFFFFFE9ALL) + v1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * ((1897 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1D496B4CC()
{
  v4 = *(v0 + 12) + (((*(v3 - 172) ^ 0x883129519D430C00) + 0x77CED6AE62BCF400) ^ ((*(v3 - 172) ^ 0xCD1B6A77B47A73EELL) + 0x32E495884B858C12) ^ ((*(v3 - 172) ^ 0x452A4326979AA2E6) - 0x452A4326979AA2E6)) + ((v1 - 784) ^ 0xD8DF2CE2);
  v6 = v4 < 0x1A3B4F92 || v4 > ((2 * v1) ^ 0x1A3B4882) + *(v0 + 8);
  return (*(v2 + 8 * ((2 * v6) | (32 * v6) | v1)))();
}

uint64_t sub_1D496B698@<X0>(uint64_t a1@<X4>, int a2@<W5>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a3 + v7 + v3) = *(a1 + v7);
  return (*(v6 + 8 * (((((v7 == 0) ^ (v5 - 1)) & 1) * a2) ^ (v5 - 401))))();
}

uint64_t sub_1D496B844()
{
  v5 = *(v3 + 8 * ((236 * (v2 == v1 + ((2 * v0) ^ 0x320) - 52)) ^ (v0 + 211)));
  *(v4 - 208) = v2;
  return v5();
}

void sub_1D496B8A4()
{
  *(v5 - 216) = *v4 + v3;
  *(v4 + 12) = (v2 ^ 0xBEA3DE64 ^ ((v1 - 20) | v0)) + v3;
  JUMPOUT(0x1D4964E08);
}

uint64_t sub_1D496B8DC()
{
  v4 = v2 - 1454;
  v6 = *(v0 + 24) == 1 && v3 == 56;
  return (*(v1 + 8 * ((v6 * ((v4 + 1573) ^ 0x83E)) ^ v4)))();
}

uint64_t sub_1D496B914@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, int a24, _DWORD *a25, uint64_t a26, uint64_t a27, uint64_t *a28)
{
  v29 = *a28;
  v30 = ((a24 ^ 0x826D07FC) + 282372209) ^ a24 ^ ((a24 ^ 0xDBE2E629) + 1230719398) ^ ((a24 ^ 0x7FAFFF7F) - 317304588) ^ ((a24 ^ a1 ^ 0x4B664BEF) - 639639210);
  v31 = ((2 * *a25) & 0x2BD6F57E) + (*a25 ^ 0x95EB7ABF) + 1779729729;
  *(*a28 + v31) = HIBYTE(v30) ^ 0x6D;
  *(v29 + v31 + 1) = BYTE2(v30) ^ 0x46;
  *(v29 + v31 + 2) = BYTE1(v30) ^ 0x50;
  *(v29 + v31 + 3) = v30 ^ 0x73;
  *a25 += 4;
  return v28();
}

uint64_t sub_1D496BA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, int a3@<W8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (((v7 != v5 - 1062) * v4) ^ a3)))();
}

uint64_t sub_1D496BB10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27)
{
  v30 = *a27;
  v31 = ((a1 ^ 0x8E1BDF16) + 1856528000) ^ a1 ^ ((a1 ^ 0x6CCA538F) - 1938173209) ^ ((a1 ^ 0xF7FFFFFF) + 390889111) ^ ((a1 ^ v27 ^ 0x51 ^ 0xA62051A) - 355365734);
  v32 = (((v27 ^ 0x9A6) - 1409813167) & (2 * *a22)) + (*a22 ^ 0x55FBFB37) - 1442577207;
  *(*a27 + v32) = HIBYTE(v31) ^ 0x1F;
  *(v30 + v32 + 1) = BYTE2(v31) ^ 0x4C;
  *(v30 + v32 + 2) = ((((a1 ^ 0xDF16) + 24192) ^ a1 ^ ((a1 ^ 0x538F) - 11545) ^ (32406 - a1) ^ ((a1 ^ v27 ^ 0x51 ^ 0x51A) - 29542)) >> 8) ^ 0x7E;
  *(v30 + v32 + 3) = ((a1 ^ 0x16) + 0x80) ^ a1 ^ ((a1 ^ 0x8F) - 25) ^ (-a1 - 106) ^ ((a1 ^ v27 ^ 0x51 ^ 0x1A) - 102) ^ 0x96;
  v33 = (*a22 + 4);
  *a22 = v33;
  return (*(v28 + 8 * ((94 * (v29 <= *a27 + ((2 * v33) & 0xF7C3B9FELL) + (v33 ^ 0x3FFF5FF77BE1DCFFuLL) - 0x3FFF5FF77BE1DCFFLL)) ^ v27)))();
}

uint64_t sub_1D496BCF8@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 + 1217386718) & 0xB77026DF;
  v7 = (v2 ^ 0xFFFFFFFFFFFFFA9CLL ^ ((v6 - 435) | 0x42)) + v1;
  *(v4 - 7 + v7) = *(a1 - 7 + v7);
  return (*(v5 + 8 * ((450 * (((v6 ^ 0xFFFFF92C) & v1) - 8 != v2)) ^ v6)))();
}

uint64_t sub_1D496BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int a27, uint64_t a28)
{
  a28 = v29;
  a27 = v28 + 1661262079 * ((~(v32 | 0xDCDFC11C) + (v32 & 0xDCDFC11C)) ^ 0xB5108104) - 1496399763;
  (*(v31 + 8 * (v28 + 1173)))(&a27);
  v33 = (*(v31 + 8 * (v28 + 1088)))(**(&off_1F503AD40 + v28 - 2065), *(&off_1F503AD40 + (v28 ^ 0x856)) - 4, v30);
  v34 = v33 - 1096557304 - ((2 * v33) & 0x7D47BA10) + 9;
  a28 = v29;
  a27 = (v28 + 634664609) ^ (1427277979 * (((v32 | 0x53D5658) - v32 + (v32 & 0xFAC2A9A0)) ^ 0x985575DE));
  v35 = (*(v31 + 8 * (v28 ^ 0x46E)))(&a27);
  return (*(v31 + 8 * ((1049 * (v34 == ((v28 - 1618590773) & 0x6079BCFB) - 1096559562)) ^ v28)))(v35);
}

uint64_t sub_1D496BFD8@<X0>(int a1@<W8>)
{
  result = (*(v2 + 8 * (a1 ^ 0x65A)))();
  *(v4 + 24) = v1;
  return result;
}

uint64_t sub_1D496C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *(v34 - 144) = v33 + 1661262079 * (((v31 | 0xC3C113D1) - v31 + (v31 & 0x3C3EEC28)) ^ 0x55F1AC36) - 1496398225;
  *(v34 - 136) = v29;
  (*(v32 + 8 * (v33 ^ 0xEBB)))(v34 - 144);
  v35 = (*(v32 + 8 * (v33 + 2626)))(**(v30 + 8 * (v33 ^ 0x211)), *(v30 + 8 * (v33 ^ 0x250)) - 4, a29);
  v36 = v35 - 1096557278 - ((v35 << (76 * (((v33 - 15) | 0xDC) ^ 0xDB) - 47)) & 0x7D47BA10);
  *(v34 - 144) = (v33 + 634666147) ^ (1427277979 * (((v31 | 0x7E2437F0) - v31 + (v31 & 0x81DBC808)) ^ 0xE34C1476));
  *(v34 - 136) = v29;
  v37 = (*(v32 + 8 * (v33 ^ 0xE68)))(v34 - 144);
  return (*(v32 + 8 * ((421 * (v36 == -1096557278)) ^ v33)))(v37);
}

uint64_t sub_1D496C28C()
{
  *(v1 + 8) = 4096;
  *v0 = v1;
  return v2(229);
}

uint64_t sub_1D496C528@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE4ALL ^ v3 ^ 0x4C1u) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((3392 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

void sub_1D496C580(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) - 585927707 * ((-2 - ((a1 | 0xFCF5A0B0) + (~a1 | 0x30A5F4F))) ^ 0xEA4B6991);
  v3[0] = v1 + 1661262079 * ((2 * (v3 & 0x2311EDB0) - v3 - 588377521) ^ 0x4ADEADA8) + 2085;
  v2 = *(&off_1F503AD40 + (v1 & 0xDC2CE8CD)) - 4;
  (*&v2[8 * (v1 ^ 0xFBA)])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D496C720(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, _DWORD *a14)
{
  v15 = *a2;
  v16 = a13 - ((v14 + 1681927072) & (2 * a13)) + 840964161;
  v17 = ((2 * *a14) & 0x6DDEC6FE) + (*a14 ^ 0x36EF637F) - 921658239;
  *(*a2 + v17) = HIBYTE(v16) ^ 0x32;
  *(v15 + v17 + 1) = BYTE2(v16) ^ 0x20;
  *(v15 + v17 + 2) = BYTE1(v16) ^ 0x18;
  *(v15 + v17 + 3) = v16 ^ 0x41;
  *a14 += 4;
  return a3();
}

void sub_1D496C830()
{
  (*(v2 + 8 * (v3 - 710678283)))(v0);
  v6 = *(v4 + 12);
  v7 = 972028385 * *v1 + 907749015;
  v8 = 891395573 * ((((v5 - 144) | 0xCD8F5A6A) - ((v5 - 144) & 0xCD8F5A6A)) ^ 0x45C7824E);
  *(v5 - 112) = *v4;
  *(v5 - 120) = v5 - 164;
  *(v5 - 144) = v5 - 184;
  *(v5 - 136) = v7 ^ v8;
  *(v5 - 132) = v8 + 994577233 + 1341023963 * v6;
  *(v5 - 128) = -710681352 - v8 + v3 + 443;
  (*(v2 + 8 * (v3 ^ 0x2A5C2FE6)))(v5 - 144);
  (*(v2 + 8 * (v3 ^ 0x2A5C2F0A)))(v0);
  JUMPOUT(0x1D495E6BCLL);
}

uint64_t sub_1D496CA7C@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, _DWORD *a3@<X4>, char a4@<W8>)
{
  v5 = *a1;
  v6 = v4 - ((2 * v4) & 0x64403082) + 840964161;
  v7 = ((2 * *a3) & 0x79D6C56E) + (*a3 ^ 0xBCEB62B7) + 1125424457;
  *(*a1 + v7) = (a4 - 78) ^ HIBYTE(v6) ^ 0xDA;
  *(v5 + v7 + 1) = BYTE2(v6) ^ 0x20;
  *(v5 + v7 + 2) = BYTE1(v6) ^ 0x18;
  *(v5 + v7 + 3) = (v4 - ((2 * v4) & 0x82) + 65) ^ 0x41;
  *a3 += 4;
  return a2();
}

uint64_t sub_1D496CB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, uint64_t a19, uint64_t a20, char a21, char *a22, int a23, int a24, int a25, char *a26, uint64_t a27, int a28)
{
  (*(v31 + 8 * (v29 + 1546)))(v28);
  v32 = *v30;
  v33 = *(v30 + 3);
  v34 = 972028385 * *a13 + 907749015;
  v35 = 891395573 * (((&a22 | 0xAF24498A) - (&a22 & 0xAF24498A)) ^ 0x276C91AE);
  a22 = &a21;
  a27 = v32;
  a26 = &a18;
  a24 = (v29 ^ 0x3B480D66) + v35 + 1341023963 * v33;
  a25 = v29 - v35 - 1080;
  a23 = v34 ^ v35;
  (*(v31 + 8 * (v29 ^ 0xA9D)))(&a22);
  v36 = a28;
  v37 = (*(v31 + 8 * (v29 + 1551)))(v28);
  return (*(v31 + 8 * (((v36 == (v29 ^ 0x4661D576)) * (((4 * (v29 ^ 0x5E1)) ^ 0xF00) + 1903)) ^ v29 ^ 0x5E1)))(v37);
}

uint64_t sub_1D496CD88@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = *(v1 + v2 - 16);
  *(v5 - 1) = *(v1 + v2 - 16 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (((v3 - 2038698993) & 0x798414DD) + 2007)) ^ v3)))(v1);
}

uint64_t sub_1D496CE88@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (v1 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (v3 - 2249)) ^ v3)))(v6 - 2);
}

uint64_t sub_1D496D0A8()
{
  (*(v4 + 8 * (v0 + 2331)))(v1);
  *v2 = 0;
  return v3(4018);
}

uint64_t sub_1D496D3C4(int a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = (v8 & (2 * a5)) + (a5 ^ v7) + 1648379718;
  v14 = (*(*v10 + (v13 + 2051)) << 24) | (*(*v10 + (v13 + 2052)) << 16) | (*(*v10 + v13 + ((v9 + v5) & v6)) << 8);
  v15 = *(*v10 + (v13 + 2054));
  *v12 = (v14 | v15) - 1096557304 - 2 * ((v14 | v15) & a1 ^ v15 & a2);
  *(v10 + 12) += 4;
  return v11();
}

uint64_t sub_1D496D640@<X0>(int a1@<W8>)
{
  v6 = a1 ^ 0xCB5647E3;
  (*(v3 + 8 * (a1 + 2273)))();
  *v1 = 0;
  *(v5 - 216) = v4;
  *v1 = 0;
  v1[1] = 0;
  v7 = (*(v3 + 8 * (v6 + 883542018)))(v1);
  return v2(v7);
}

uint64_t sub_1D496D6DC()
{
  v5 = (*(v3 + 8 * (v2 + 2343)))(v1);
  *v0 = 0;
  return v4(v5, 1333201021);
}

uint64_t sub_1D496D8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (v8 ^ 0x7FFFBBC231FAF3F9) + ((2 * v8) & 0x63F5E7F2) + 887 * ((v9 - 1596) ^ 0xB0u) - 0x7FFFBBC15C0C2AA1;
  v13 = v11 < ((v9 - 1676) | 0x68Cu) + 3589196116u || v11 > *(a8 + 8) + 3589197890u;
  return (*(v10 + 8 * ((2657 * v13) ^ (v9 - 1596))))();
}

uint64_t sub_1D496DA4C(uint64_t a1)
{
  v5 = (a1 + ((v2 + 1078725787) & 0xBFB3F8DF) - 2270) ^ v1;
  v7 = v3 < ((v2 + 336653460) & 0xEBEF140E ^ 0x426uLL) || v5 < 8;
  return (*(v4 + 8 * ((v7 | (4 * v7)) ^ v2)))();
}

uint64_t sub_1D496DB58()
{
  v3 = (*(v2 + 8 * (v0 + 2301)))();
  *v1 = 0;
  return sub_1D496DB70(v3);
}

uint64_t sub_1D496DB70()
{
  *v1 = 0;
  v1[1] = 0;
  v4 = (*(v3 + 8 * (v2 ^ 0xEA3)))(v1);
  return v0(v4);
}

uint64_t sub_1D496DC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = *(v26 + 104);
  v29 = *(v26 + 112);
  *v24 = 0;
  return v25(a1, 4294967291, a3, a4, a5, a6, 3478, 2147484390, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v28, v29);
}

uint64_t sub_1D496DC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v8 = (*(v7 + 8 * (v6 ^ 0x529)))(0, 4, va) == 0;
  return (*(v7 + 8 * (((((v6 ^ 0x1D1 ^ v8) & 1) == 0) * (v6 - 2367)) ^ v6)))();
}

uint64_t sub_1D496DE34()
{
  v5 = v1 ^ (v0 + 1246) ^ (v2 + 1270107524) & 0xB44BBB6F;
  v7 = v3 < 0x20 || v5 < 8;
  return (*(v4 + 8 * ((111 * v7) ^ v2)))();
}

uint64_t sub_1D496DE90(_DWORD *a1, uint64_t (*a2)(void))
{
  v6 = (((v2 - 1412278603) & 0x542DADFA ^ 0xFB7F6A5C) & (2 * v5)) + (v5 ^ 0x7DBFB1F7) - 2109714935;
  v7 = (*(*v4 + v6) << 24) | (*(*v4 + v6 + 1) << 16) | (*(*v4 + v6 + 2) << 8);
  v8 = *(*v4 + v6 + 3);
  *a1 = (v7 | v8) + v3 - 2 * ((v7 | v8) & 0x3EA3DD1E ^ v8 & 0x16);
  *(v4 + 12) += 4;
  return a2();
}

uint64_t sub_1D496DFDC()
{
  v5 = (v0 + ((v2 - 1561) | 0x28u) - 681) ^ v1;
  v7 = v3 < 0x20 || v5 < (((v2 - 2164) | 0x418u) ^ 0x436uLL);
  return (*(v4 + 8 * ((60 * v7) ^ v2)))();
}

uint64_t sub_1D496E040()
{
  *(v1 + 8) = 4096;
  *v2 = v1;
  return v0(378, 640);
}

uint64_t sub_1D496E078(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 12) + (((*(v9 - 156) ^ a4) + a5) ^ ((*(v9 - 156) ^ a2) + a3) ^ (((v6 - 2919) | 0x40u) + a1 + (((v6 ^ 0xC81u) + v10) ^ *(v9 - 156)))) + v7;
  v13 = v11 >= 0x454A2577 && v11 <= *(v5 + 8) + 1162487159;
  return (*(v8 + 8 * (v6 ^ (16 * v13))))();
}

uint64_t sub_1D496E130@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v3 - 976) ^ a1)) ^ v3)))();
}

uint64_t sub_1D496E174@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v14 = a2 + 577;
  v15 = (*(v13 + 8 * (a2 ^ 0x567)))(a1, 3, &a13);
  return (*(v13 + 8 * (((((v14 - 2516) | 0xBA) ^ 0x2D9) * (a13 < 7)) | v14)))(v15);
}

uint64_t sub_1D496E3A8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = ~v3 + v2;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = v7 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((((v5 + 522) ^ v6) + v3 == v4) * a1) ^ v5)))();
}

uint64_t sub_1D496E470()
{
  v8 = (v6 ^ v0 ^ *(v5 + 12) ^ v1) + (v2 & (2 * *(v5 + 12))) + v3;
  v10 = v8 >= 0x2D8B96B8 && v8 <= *(v5 + 8) + 764122808;
  return (*(v7 + 8 * ((v10 * ((v6 - 83) ^ v4)) ^ v6)))();
}

uint64_t sub_1D496E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v25 = (v22 + 703770285) & 0xD60D53D9;
  *(v23 + 8) = a22;
  *(v23 + 12) = 0;
  v26 = (*(v24 + 8 * (v25 + 2412)))(**(&off_1F503AD40 + (v25 - 743)), a19, a22);
  return (*(v24 + 8 * ((2904 * (((v25 - 1369941778) & 0x51A7AE7A ^ 0xBEA3D762) == -1096557304)) ^ (v25 - 652))))(v26);
}

void sub_1D496E578(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) ^ (1661262079 * ((a1 - 2 * (a1 & 0xAEF463E6) - 1359715354) ^ 0x38C4DC01));
  v3[0] = v1 + 1661262079 * ((((2 * v3) | 0xBD0BA358) - v3 + 561655380) ^ 0x48B56E4B) + 1827;
  v2 = *(&off_1F503AD40 + (v1 & 0xD59283B9)) - 4;
  (*&v2[8 * (v1 | 0x8B8)])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D496E6A0(uint64_t a1)
{
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *v3 = 1;
  *(v3 + 8) = a1;
  *(v3 + 16) = *(v2 + 16);
  return v1 ^ 0xBEA3DD08;
}

uint64_t sub_1D496E754@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 - 31);
  v6 = (v5 ^ 0xF79) - 2897 + v1;
  v7 = *(a1 + v6 - 15);
  v8 = *(a1 + v6 - 31);
  v9 = v3 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v4 + 8 * ((97 * (((v5 ^ 0xFFFFFBC9) & v1) != 32)) ^ v5)))();
}

uint64_t sub_1D496E980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v17 + 8) = 4096;
  *v18 = v17;
  return v16(a1, a2, a3, a4, a16);
}

uint64_t sub_1D496EB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (v3 + v4 + 517) | 0x552;
  v8 = (((v7 + 72) - 1952) ^ v2) + a2;
  *(a1 - 7 + v8) = *(v5 - 7 + v8);
  return (*(v6 + 8 * ((3329 * ((a2 & 0xFFFFFFF8) - 8 == v2)) ^ v7)))();
}

uint64_t sub_1D496EE6C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + (v3 - 1352) - 193;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((3299 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1D496EEB0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v4 - 16 + v1);
  v8 = (a1 + v3 - 0x57F396B7E4FD7F7DLL + v1);
  *(v8 - 1) = *(v4 - 16 + v1 - 16);
  *v8 = v7;
  return (*(v5 + 8 * (((((((v2 - 533) | 0x200u) ^ v6) & v1) != 32) * (((v2 - 533) | 0x200) - 1695)) ^ ((v2 - 533) | 0x200))))(32);
}

uint64_t sub_1D496EF4C()
{
  (*(v3 + 8 * (v2 ^ 0xEC9)))(v0);
  v6 = *v4;
  v7 = *v1 * ((v2 + 1059) ^ 0x39EFFF4A) + 907749015;
  v8 = 891395573 * ((v5 + 867196876 - 2 * ((v5 - 144) & 0x33B0605C)) ^ 0xBBF8B878);
  *(v5 - 132) = v8 + 994577233 + 1341023963 * *(v4 + 3);
  *(v5 - 128) = v2 - v8 - 137;
  *(v5 - 120) = v5 - 148;
  *(v5 - 112) = v6;
  *(v5 - 136) = v7 ^ v8;
  *(v5 - 144) = v5 - 160;
  (*(v3 + 8 * (v2 + 2594)))(v5 - 144);
  v9 = *(v5 - 104);
  v10 = (*(v3 + 8 * (v2 ^ 0xECE)))(v0);
  return (*(v3 + 8 * ((29 * (v9 != ((v2 - 81815665) & 0xEFFE75FD ^ (v2 - 1384136500)))) ^ (v2 + 1059))))(v10);
}

uint64_t sub_1D496F104(uint64_t a1)
{
  (*(v3 + 8 * ((v1 + 250) ^ 0x59Au)))();
  (*(v3 + 8 * (v1 + 1137)))(a1);
  v5 = (*(v3 + 8 * (v1 + 1084)))(v2, @"AAYLwXkf");
  return (*(v3 + 8 * (((v5 == 0) * (((v1 + 250) ^ 0x372) + v1 + 456 - 5137)) ^ (v1 + 250))))(v5, v6, v7, v8, v9);
}

uint64_t sub_1D496F2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  (*(v21 + 8 * (v16 ^ 0xBD7)))(*v20);
  *v20 = v18;
  *(v20 + 8) = v17;
  return v19(100, a16, a15, a14);
}

uint64_t sub_1D496F438@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v4 - 16 + v1);
  v7 = (a1 + v3 - 0x7DBB7FFFADB65F1CLL + v1);
  *v7 = *(v4 - 16 + v1 - 16);
  v7[1] = v6;
  return (*(v5 + 8 * ((241 * ((v1 & 0xFFFFFFE0) != 32)) ^ (v2 - 56486205))))((v1 & 0xFFFFFFE0) - 32);
}

uint64_t sub_1D496F590@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == ((v3 - 2007) | 0x400u) - 1408) * a1) ^ v3)))();
}

uint64_t sub_1D496F7DC@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFB3DLL ^ (v3 - 1029)) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((473 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_1D496FB98()
{
  v3 = (*(v1 + 12) ^ 0xEEB7FA6EFF7EFE6BLL) + ((((v0 + 381827604) + 0x1E83BB6F3) ^ (v0 - 2863)) & (2 * *(v1 + 12))) + 0x1148059124E846D2;
  v5 = v3 < 0x24674539 || v3 > *(v1 + 8) + 610747705;
  return (*(v2 + 8 * ((106 * v5) ^ v0)))();
}

uint64_t sub_1D496FCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = v7 + 32;
  v10 = ((v6 - 2867) ^ v9) + v4;
  v11 = *(a3 + v10 - 15);
  v12 = *(a3 + v10 - 31);
  v13 = a1 + v3 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * ((118 * (a2 == v9)) ^ v5)))();
}

uint64_t sub_1D496FD90@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, int a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v19 = a5 < a4;
  v20 = *(*a1 + 4 * (v9 + v12));
  v21 = *v18;
  v22 = v11 + a6 + v20 - (a3 & (2 * v20));
  v23 = (v14 & (2 * v10)) + (v10 ^ v13) + a2;
  *(*v18 + v23) = a7 ^ HIBYTE(v22);
  *(v21 + v23 + 1) = BYTE2(v22) ^ 0x20;
  *(v21 + v23 + 2) = BYTE1(v22) ^ 0x18;
  *(v21 + v23 + 3) = v22 ^ a8;
  *v15 += 4;
  if (v19 == v9 + v17 < a4)
  {
    v19 = v9 + v17 < a5;
  }

  return (*(v16 + 8 * (a9 ^ (2 * v19))))();
}

uint64_t sub_1D496FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, _DWORD *a17)
{
  v18 = *a8;
  v19 = a15 - ((2 * a15) & 0x64403082) + 840964161;
  v20 = ((2 * *a17) & 0x2BF6CDEC) + (*a17 ^ (v17 + 368796830)) - 368797430;
  *(*a8 + v20) = HIBYTE(v19) ^ 0x32;
  *(v18 + v20 + 1) = BYTE2(v19) ^ 0x20;
  *(v18 + v20 + 2) = BYTE1(v19) ^ 0x18;
  *(v18 + v20 + 3) = (a15 - ((2 * a15) & 0x82) + 65) ^ 0x41;
  *a17 += 4;
  return a7();
}

uint64_t sub_1D497005C@<X0>(int a1@<W8>)
{
  v4 = a1 + 19;
  (*(v3 + 8 * (a1 + 2577)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v5 = (*(v3 + 8 * (v4 ^ 0xE06)))(v2);
  return v1(v5);
}

uint64_t sub_1D49700B4@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 2354)))();
  *v1 = 0;
  return sub_1D494A6FC();
}

uint64_t sub_1D49700D8@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 32);
  v6 = *(a1 + v1 - 32);
  v5[1] = *(a1 + v1 - 16);
  *v5 = v6;
  return (*(v4 + 8 * ((75 * ((v2 + 59) - (v1 & 0xFFFFFFE0) == 804)) ^ v2)))();
}

uint64_t sub_1D497021C@<X0>(int a1@<W4>, unsigned int a2@<W5>, unint64_t a3@<X6>, int a4@<W7>, uint64_t a5@<X8>)
{
  v9 = ((v6 + a1) & a2 ^ a3) + v5;
  *(v7 + v9) = *(a5 + v9);
  return (*(v8 + 8 * (((v9 == 0) * a4) ^ v6)))();
}

void fcexHpmxKluw(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = *(&off_1F503AD40 + ((35 * ((dword_1EC7E24C8 + dword_1EC7E25A0) ^ 0xFD)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * ((dword_1EC7E24C8 + dword_1EC7E25A0) ^ 0xFD))] ^ 0x7A]) - 81);
  v9 = *(v8 - 4);
  v10 = off_1F503AF70 - 4;
  v11 = off_1F503AD60 - 4;
  v12 = *(&off_1F503AD40 + (*(off_1F503AD60 + (*(off_1F503AF70 + (35 * (v9 ^ dword_1EC7E24C8 ^ 0xFD)) - 4) ^ 0xA7u) - 4) ^ (35 * (v9 ^ dword_1EC7E24C8 ^ 0xFD))) - 93);
  v13 = &v15[1] + (*v12 ^ v9);
  *(v8 - 4) = 1835632163 * (v13 - 0x5A968D362BDD27FDLL);
  *v12 = 1835632163 * (v13 ^ 0x5A968D362BDD27FDLL);
  v15[0] = *a4;
  LODWORD(v13) = 1661262079 * ((v16 - 2 * (v16 & 0x4C3CDF4F) + 1279057743) ^ 0xDA0C60A8);
  v16[0] = 0;
  v16[1] = 0;
  v18 = a2;
  v19 = v15;
  v24 = 0;
  v20 = 0;
  v21 = a5;
  v25 = (a3 ^ 0x7FEF5EFE) + ((2 * a3) & 0xFFDEBDFC) - v13 - 1110118532;
  v17 = v13 ^ 0x403;
  v22 = a1;
  v23 = ((v16 - 2 * (v16 & 0x4F) + 79) ^ 0xA8) - 71;
  LOBYTE(v8) = 35 * (*(v8 - 4) ^ 0xFD ^ *v12);
  v14 = *(&off_1F503AD40 + ((35 * (dword_1EC7E25A0 ^ 0xFD ^ dword_1EC7E24C8)) ^ byte_1D4B4E510[byte_1D4B4E310[(35 * (dword_1EC7E25A0 ^ 0xFD ^ dword_1EC7E24C8))] ^ 0x4D]) - 164) - 4;
  (*&v14[8 * (v8 ^ v11[v10[v8] ^ 0xA7]) + 24752])(v16);
  *a4 = v15[0];
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1D49705E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v32 = *(a28 + 16);
  *v32 = (*(v29 + 8 * (v30 + 2889)))((((v30 + 786) | 0x10Cu) - 1096558662) ^ *(v31 - 168), 3886098504);
  return (*(v29 + 8 * ((v30 + 1007) ^ (60 * (v28 == 0)))))();
}

uint64_t sub_1D49706EC@<X0>(int a1@<W0>, int a2@<W3>, unsigned int a3@<W4>, uint64_t a4@<X8>)
{
  v9 = v5 - 1;
  *(a4 + v9 + v4) = *(v7 + v9);
  return (*(v8 + 8 * (((v9 == ((a1 + a2) & a3) - 1249) * v6) ^ a1)))();
}

uint64_t sub_1D4970724(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 827)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((v1 ^ 0x322) - 5090 + 2 * (v1 ^ 0xC30))) ^ v1)))();
}

uint64_t sub_1D4970798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7 + v2) = *(a2 + v7);
  return (*(v6 + 8 * ((7 * (v7 != v5 - 2285)) ^ v3)))();
}

uint64_t sub_1D49707CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *(v28 - 200);
  v30 = v29 - 2482;
  v31 = v29 - 997;
  if (a4)
  {
    v32 = a16 == -235266060;
  }

  else
  {
    v32 = 1;
  }

  v34 = !v32 && v25 == v27;
  return (*(v26 + 8 * ((v34 * (v30 ^ 0x3D6 ^ HIDWORD(a17))) ^ v31)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1D4970A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = *(v27 - 192);
  v29 = (v28[6] + v24);
  v39 = (v29 | ((v29 < 0x4A4082DE) << 32)) - 1245741790;
  HIDWORD(a14) = v29 - 1245741786;
  HIDWORD(a19) = (*v28 - ((2 * *v28) & 0x819A8D40) - 1060288864) ^ 0xC0CD46A0;
  *(v27 - 208) = v27 - 184;
  v30 = (*(v26 + 8 * (v25 ^ 0xDF3)))(16, 3886098504);
  return (*(v26 + 8 * (((v30 == 0) * ((v25 - 1375738772) & 0x52001F9F ^ 0x6F4)) ^ (v25 + 1117))))(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v39, a21, a22, a23, a24);
}

uint64_t sub_1D4970CD0()
{
  *(v1 + 8) = 4096;
  *v2 = v1;
  return v0();
}

void sub_1D4970D78(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __int16 a7, char a8, __int16 a9, char a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, _DWORD *a26)
{
  v26 = *a24;
  v27 = (*a26 ^ 0xBCFFF4F7) + 1124074220 + ((2 * *a26) & 0x79FFE9EE);
  *(*a24 + v27 + 2077) = a12;
  *(v26 + v27 + (a1 ^ 0x4CF) + 1874) = a10;
  *(v26 + v27 + 2079) = a8;
  *(v26 + v27 + 2080) = a6;
  *a26 += 4;
  JUMPOUT(0x1D49723A4);
}

uint64_t sub_1D4970F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  (*(v19 + 8 * (v15 + 2212)))(*v18);
  *v18 = v17;
  *(v18 + 8) = v16;
  return a10(4018, a15, a14, a13);
}

uint64_t sub_1D4970FF4()
{
  v6 = *v4;
  *(v2 - 1) = *(v4 - 1);
  *v2 = v6;
  return (*(v5 + 8 * (((v3 == 0) * v1) ^ v0)))();
}

uint64_t sub_1D4971108@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v10 = ~v6 + v3;
  v11 = *(v9 + v10 - 15);
  v12 = *(v9 + v10 - 31);
  v13 = a2 + v2 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v6 + (7 * v7) - 2621 == v4) * a1) ^ v5)))();
}

uint64_t sub_1D4971304()
{
  *(v5 - 136) = v1;
  *(v5 - 144) = v4 + 1661262079 * ((((2 * (v5 - 144)) | 0xD32E802C) - (v5 - 144) - 1771520022) ^ 0xFFA7FFF1) - 1496399413;
  (*(v3 + 8 * (v4 ^ 0xA1F)))(v5 - 144);
  v6 = (*(v3 + 8 * (v4 + 1438)))(**(v0 + 8 * (v4 - 1715)), *(v0 + 8 * (v4 - 1652)) - 4, v2);
  v7 = v6 + (((v4 - 1198) | 0x80) ^ 0xBEA3DF97) - ((v6 << (((v4 + 75) | 0x14) ^ 0x14)) & 0x7D47BA10);
  *(v5 - 136) = v1;
  *(v5 - 144) = (v4 + 634664959) ^ (1427277979 * ((~((v5 - 144) | 0x67626B9) + ((v5 - 144) & 0x67626B9)) ^ 0x64E1FAC0));
  v8 = (*(v3 + 8 * (v4 + 1476)))(v5 - 144);
  return (*(v3 + 8 * ((3632 * (v7 == -1096557281)) ^ v4)))(v8);
}

uint64_t sub_1D497148C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v13 = (*(v12 + 8 * (v10 ^ 0xAC3)))(v11 ^ a1, 3886098504);
  *a10 = v13;
  return (*(v12 + 8 * (((v13 != 0) * ((v10 + 1808410949) & 0x9435D774 ^ 0x6C9)) ^ v10)))();
}

uint64_t sub_1D497167C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v17 + 8 * (v15 + 216)))(v18, @"sPJ8AGu5PT", a1);
  (*(v17 + 8 * (v15 + 198)))(a1);
  v20 = (*(v17 + 8 * (v15 + 182)))(v16, va, 16) != 0;
  return (*(v17 + 8 * ((v20 * (v15 ^ 0x5F7 ^ (1276 * (v15 ^ 0xBEE)))) ^ v15)))();
}

uint64_t sub_1D4971710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v11 = ((a5 + 431 + v5) ^ *(v9 + 12) ^ v6) + (v7 & (2 * *(v9 + 12))) + v8;
  v13 = v11 < a5 + 345816366 || v11 > *(v9 + 8) + 345818419;
  return (*(v10 + 8 * ((124 * v13) ^ (a5 + 431))))();
}

uint64_t sub_1D49718A4()
{
  v3 = (*(v1 + 12) ^ 0xBE7FBFEFF8CEEFF6) + (((((v0 + 1991458006) ^ 0x76B34E83u) + 0x1F19DD7A3) ^ (v0 + 1991458006) & 0x894CB6FF) & (2 * *(v1 + 12))) + 0x4180401095625FAELL;
  v5 = v3 < 0x8E314FA0 || v3 > *(v1 + 8) + 2385596320u;
  return (*(v2 + 8 * ((62 * v5) ^ v0)))();
}

uint64_t sub_1D4971964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v14 = (*(v12 + 8 * (6 * v11 + 2490)))(a1, 4, va);
  return (*(v12 + 8 * ((924 * (v13 < ((((6 * v11 + 698424565) & 0xD65EEB57) - 1441) ^ 0x709 ^ (6 * ((((6 * v11 + 698424565) & 0xD65EEB57) - 1441) ^ 0x5D4))))) ^ (((6 * v11 + 698424565) & 0xD65EEB57) - 1441))))(v14);
}

uint64_t sub_1D4971A78@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v7 = v3 - 1;
  *(v5 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (((v7 != v4 - 404) * a1) ^ v2)))();
}

uint64_t sub_1D4971AE8(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 2491)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((v1 ^ 0x3C6) - 251)) ^ v1)))();
}

uint64_t sub_1D4971BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 8) = 4096;
  *v6 = v5;
  return v7(a1, a2, a3, a4, a5, 3563, 2147486654, 55);
}

uint64_t sub_1D4971D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, int a21, char a22, uint64_t a23, uint64_t a24, char *a25, int a26, int a27, int a28, char *a29, uint64_t a30, int a31)
{
  v36 = (v35 - 1933319305) & 0x767BDFED;
  (*(v33 + 8 * (v35 ^ 0x4322039D)))(v31);
  v37 = *v34;
  v38 = 891395573 * ((&a25 + 138794510 - 2 * (&a25 & 0x845D60E)) ^ 0x800D0E2A);
  v39 = (*v32 * (v36 - 208787808) + 907749015) ^ v38;
  a27 = v38 + 994577233 + 1341023963 * *(v34 + 3);
  a28 = -1126305698 - v38 + v35 + 453;
  a26 = v39;
  a25 = &a19;
  a29 = &a22;
  a30 = v37;
  (*(v33 + 8 * (v35 ^ 0x43220376)))(&a25);
  v40 = a31;
  v41 = (*(v33 + 8 * (v35 ^ 0x4322039A)))(v31);
  return (*(v33 + 8 * (v36 ^ 0x4661D282 ^ (920 * ((((v36 + 876930046) ^ (((v40 - v36) | (v36 - v40)) >> 31)) & 1) == 0)))))(v41);
}

uint64_t sub_1D4971E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39)
{
  (*(v42 + 8 * (v39 + 1176)))(v40);
  v44 = *v41;
  v45 = *(v41 + 3);
  v46 = 972028385 * *a39 + 907749015;
  v47 = 891395573 * ((((2 * (v43 - 144)) | 0x377CFDFE) - (v43 - 144) - 465469183) ^ 0x93F6A6DB);
  *(v43 - 120) = v43 - 192;
  *(v43 - 112) = v44;
  *(v43 - 144) = v43 - 176;
  *(v43 - 132) = v47 + 994577233 + v45 * ((v39 ^ 0xE8F) + 1341021621);
  *(v43 - 128) = v39 - v47 - 1450;
  *(v43 - 136) = v46 ^ v47;
  (*(v42 + 8 * (v39 + 1281)))(v43 - 144);
  v48 = (*(v42 + 8 * (v39 ^ 0xBEF)))(v40);
  return sub_1D494B688(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1D4971F74@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 ^ 0x5FBEFCA0 ^ (((v4 - 992914306) & 0x3B2EA59F) - 378800541) & 0x16940FDF) + ((2 * v3) & 0xBF7DEFFE) - 1606350847;
  v7 = (*(*a1 + v6) << 24) | (*(*a1 + v6 + 1) << 16) | (*(*a1 + v6 + 2) << 8);
  v8 = *(*a1 + v6 + 3);
  *v1 = (v7 | v8) + v5 - 2 * ((v7 | v8) & 0x3EA3DD1E ^ v8 & 0x16);
  *(a1 + 12) = v3 + 4;
  return v2();
}

uint64_t sub_1D4972048(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x875)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * ((47 * (((v1 - 45) ^ (v4 == 0)) & 1)) ^ v1)))();
}

uint64_t sub_1D497220C()
{
  *(v0 + 8) = 4096;
  *v1 = v0;
  return v2(4018);
}

void sub_1D4972250(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0xFF2)))();
  *v1 = 0;
  JUMPOUT(0x1D4972278);
}

uint64_t sub_1D49722A8()
{
  *v1 = 0;
  v1[1] = 0;
  v4 = (*(v3 + 8 * (v0 + 2391)))(v1);
  return v2(v4);
}

uint64_t sub_1D49726C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v12 = 3 * (v9 ^ 0x117u) + ((2 * *(v8 + 12)) & 0x1DDBFFFAELL) + ((((v9 + v10) & 0x474247AF) - 0xF040085112001B3) ^ *(v8 + 12)) + 0xF040085754F8195;
  v14 = v12 < a8 || v12 > *(v8 + 8) + a8;
  return (*(v11 + 8 * ((29 * v14) ^ v9)))();
}

void J8WWtDMwk(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D49729A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, uint64_t a20)
{
  v25 = v20 - v23 - 111;
  *(v21 + 8) = a18;
  *(v21 + 12) = 0;
  v26 = (*(v22 + 8 * (v25 ^ (v24 + 1117))))(**(&off_1F503AD40 + (v25 & 0x852095E)), a20, a18);
  return (*(v22 + 8 * ((v25 + 947640241) ^ (v25 + 947638953) ^ (v25 + 947637078))))(v26);
}

uint64_t sub_1D4972A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t *a22, int a23, int a24, int a25, int *a26, uint64_t a27, int a28)
{
  v31 = a20;
  a19 = 0;
  a18 = 0;
  v32 = *(v30 + 8 * (v28 - 592)) - 12;
  (*(v29 + 8 * (v28 + 2464)))(v32);
  v33 = *v31;
  v34 = *(v31 + 3);
  v35 = 972028385 * **(v30 + 8 * (v28 ^ 0x2C7)) + 907749015;
  v36 = 891395573 * ((2 * (&a22 & 0x3E6E3BF0) - &a22 + 1100071946) ^ 0xC9D91C2E);
  a26 = &a18;
  a27 = v33;
  a22 = &a19;
  a23 = v35 ^ v36;
  a24 = v36 + 994577233 + 1341023963 * v34;
  a25 = v28 - v36 - 162;
  (*(v29 + 8 * (v28 ^ 0xE0B)))(&a22);
  v37 = a28;
  v38 = (*(v29 + 8 * (v28 + 2469)))(v32);
  return (*(v29 + 8 * (((v37 == ((v28 + 688) | 0x80) + 1449250163) * ((v28 - 1836386) & 0xBEBFDFCF ^ 0xBEA3D5D5)) ^ v28)))(v38);
}

uint64_t sub_1D4972C28@<X0>(int a1@<W8>)
{
  v5 = (a1 - 157422981) & 0xFF7EF667;
  (*(v3 + 8 * (a1 ^ 0x959)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  (*(v3 + 8 * (v5 ^ 0xF61CEA7E)))(v1);
  return v2(v4);
}

uint64_t sub_1D4972D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = ((2 * v34) & 0x1F6F7DDDELL) + ((((v35 - 266) | 0x10Au) - 0x7043D0410484129BLL) ^ v34) + 0x7043D0411985C2E9;
  v39 = v37 < 0x1501B1D4 || v37 > *(a34 + 8) + 352432596;
  return (*(v36 + 8 * ((1669 * v39) ^ (v35 - 374))))();
}

uint64_t sub_1D4972F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  a22 = v22;
  a21 = v24 + 1661262079 * ((~(&a21 | 0xD1A58BC6) + (&a21 & 0xD1A58BC6)) ^ 0xB86ACBDE) - 1496398116;
  (*(v25 + 8 * (v24 + 2820)))(&a21);
  v26 = (*(v25 + 8 * (v24 ^ 0xDF1)))(**(v23 + 8 * (v24 - 418)), *(v23 + 8 * (v24 ^ 0x1E7)) - 4, a14);
  v27 = v26 - 1096557296 - ((v26 << (((v24 + 103) | 1) ^ 0xC)) & (7 * (v24 ^ 0x190) + 2101852317));
  a21 = (v24 + 634666256) ^ (1427277979 * ((((2 * &a21) | 0x5283A98A) - &a21 - 692180165) ^ 0xB429F743));
  a22 = v22;
  v28 = (*(v25 + 8 * (v24 + 2773)))(&a21);
  return (*(v25 + 8 * ((2972 * (v27 == -1096557296)) ^ v24)))(v28);
}

uint64_t sub_1D4973104(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = (*(v3 + 12) ^ 0xFFFDDB6FFEFF7F1DLL) + (((v4 ^ 0x1FDFEF1DFLL) + v4 + 1115) & (2 * *(v3 + 12))) + 0x22490B3214EE0;
  v8 = v6 < a3 || v6 > *(v3 + 8) + a3;
  return (*(v5 + 8 * (((16 * v8) | (32 * v8)) ^ v4)))();
}

uint64_t sub_1D4973324@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * ((a1 & 0xF777BDFF) + 699950780)))();
  *v1 = 0;
  return sub_1D49722A8();
}

uint64_t sub_1D4973354(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 2424)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((v1 + 255) ^ 5 ^ (v1 - 242834264) & 0xE795C56)) | (v1 + 7))))();
}

uint64_t sub_1D4973618(uint64_t a1)
{
  v6 = (v2 - 310) | 0x83;
  v7 = (v1 + a1 - 16);
  v8 = *(v1 + v3 + v5 - 16);
  *(v7 - 1) = *(v1 + v3 + v5 - 32);
  *v7 = v8;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * ((v6 ^ 0x918) + 639)) ^ v6)))();
}

uint64_t sub_1D4973678@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v1 + v7);
  return (*(v6 + 8 * ((((v4 ^ (v7 == 0)) & 1) * v5) ^ v2)))();
}

uint64_t sub_1D4973890(uint64_t *a1)
{
  v4 = v2 & 0x41223BC3;
  *a1 = 0;
  a1[1] = 0;
  v5 = (*(v1 + 8 * (v4 ^ 0x6BAu)))(4096, 3886098504);
  *a1 = v5;
  return (*(v1 + 8 * (((v5 == 0) * (((284 * (v4 ^ 0xAC0) - 532) | 0x214) ^ 0x374)) | v4)))();
}

uint64_t sub_1D4973908@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v23 = a1 == 0;
  if (v22 + (((a20 ^ 0xDDC323E5) + 574413851) ^ ((a20 ^ 0xD22AF165) + 768937627) ^ (((2 * v20) ^ 0x4EB5F9D0) + (a20 ^ 0xB14A0F88))) - 17 < 0xFFFFFFEF)
  {
    v23 = 1;
  }

  return (*(v21 + 8 * (v23 | (2 * v23) | v20)))();
}

uint64_t sub_1D49739AC(uint64_t a1)
{
  (*(v3 + 8 * (v2 + 1245)))(v4, @"o9YYYJ64ntzC", a1);
  result = (*(v3 + 8 * (v2 ^ 0xB55)))(a1);
  *(v1 + 28) = -1096557304;
  return result;
}

uint64_t sub_1D4973AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t a13, uint64_t a14, unsigned int a15)
{
  (*(v18 + 8 * (v15 | 0x872)))(*v19);
  *v19 = v17;
  *(v19 + 8) = v16;
  return a12(3921093605, 373872639, 3419232010, 3722148018, 20, 23, 3049, a15);
}

uint64_t sub_1D4973C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int a27)
{
  v31 = (v27 - 1612622923) & 0x601EAFFC;
  *(v28 + 8) = a27;
  *(v28 + 12) = 0;
  v32 = (v31 - 592365537) & 0x234EC8FF;
  (*(v29 + 8 * (v31 + 1201)))(**(&off_1F503AD40 + (v31 ^ 0x7A6)), a23, a27);
  return (*(v29 + 8 * ((1905 * (v30 == -1096557304)) ^ (v32 - 2097))))(3198409992, a22);
}

uint64_t sub_1D4973E64@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v4 + v5) = *(a1 + v5);
  return (*(v3 + 8 * (((v5 == 0) * (v2 + 1085)) ^ v2)))();
}

uint64_t sub_1D4973EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *(v41 - 152) = a21;
  *(v41 - 151) = BYTE4(a20);
  *(v41 - 150) = a20;
  *(v41 - 149) = BYTE4(a19);
  *(v41 - 148) = a19;
  *(v41 - 147) = BYTE4(a18);
  *(v41 - 146) = a18;
  *(v41 - 145) = BYTE4(a17);
  return (*(v40 + 8 * ((2887 * ((*(*(v41 - 200) + 12) ^ 0x3FFDBEEDEFEF7CFFLL) + 8 + ((((v39 + 2179) | 0x65u) - 1980 + 0x1DFDEF8CDLL) & (2 * *(*(v41 - 200) + 12))) - 0x3FFDBEEDEFEF7CFFLL < 0xFFFFFFFB)) ^ (((v39 + 2179) | 0x65) - 1561))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v41 - 152, 8, a33, a34, *(v41 - 200) + 12, a36, a37, a38);
}

void sub_1D4973F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v31 = *(a30 + 48);
  v32 = *(a30 + 56);
  *(v30 - 160) = 0;
  *(v30 - 172) = -1096557304;
  *(v30 - 180) = -1096557304;
  if (v32)
  {
    v33 = 3;
  }

  else
  {
    v33 = 2;
  }

  if (v31)
  {
    v33 = 5;
  }

  *(v30 - 196) = v33;
  JUMPOUT(0x1D49595FCLL);
}

uint64_t sub_1D497415C@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0xC59;
  (*(v3 + 8 * (a1 ^ 0xAB3)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 + 490)))(v1);
  return v2(v5);
}

uint64_t sub_1D49742EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = *v13 + v12;
  *(v13 + 12) = v12 + v14;
  v10 = v17 <= *a10 + ((267 * ((v15 + 1855) ^ 0x819u)) ^ 0x9CDA5D45E6E43B7CLL) + 0x6325A2BA191BC3CFLL;
  return (*(v16 + 8 * ((60 * v10) ^ (v15 + 1855))))(*a10, (v10 << 6), 2949059784, 1856);
}

uint64_t sub_1D4974584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = (a9 ^ 0x7D89F6E7DBEF36FLL) + ((2 * a9) & 0xFB7DE6DELL) - 0x7D89F6DAE2A3D19;
  v21 = v19 < 0xCF94B652 || v19 > (((v17 + 1852) + 3482629714) ^ (v17 + 1852)) + *(a1 + 8);
  return (*(v18 + 8 * ((582 * v21) ^ v17)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1D497460C()
{
  v5 = (*(v4 + 8 * (v3 + 2645)))(v1);
  *v2 = 0;
  return v0(v5);
}

uint64_t sub_1D497467C(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 1763)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((((7 * (v1 ^ 0x43)) ^ (v4 == 0)) & 1) * ((v1 ^ 0x543) - 177)) ^ v1)))();
}

uint64_t sub_1D49746E0()
{
  v6 = (*(v3 + 12) ^ v0) + (v1 & (2 * *(v3 + 12))) + v2;
  v8 = v6 < 0xC28D0356 || v6 > *(v3 + 8) + ((v5 - 1313) ^ 0xC28D06ABuLL);
  return (*(v4 + 8 * ((63 * (((v5 + 1) ^ v8) & 1)) ^ v5)))();
}

uint64_t sub_1D497475C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v27 = v21 - v26;
  *(v23 + 8) = a21;
  *(v23 + 12) = 0;
  v28 = (*(v25 + 8 * ((v21 - v26) ^ (v24 + 1978))))(**(&off_1F503AD40 + v21 - 146), a17, a21);
  return (*(v25 + 8 * (((v22 != -1096557304) * ((((v27 - 184620583) | 0x60C) ^ 0x72F) + 11 * (v27 ^ (v24 + 866)))) ^ (v27 - 184619773))))(v28);
}

uint64_t sub_1D4974800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, char a12, uint64_t a13, char a14, uint64_t a15, char *a16, int *a17, char a18, int a19, uint64_t a20, char *a21, uint64_t a22, unsigned int a23, unsigned int a24)
{
  v27 = 912648571 * ((&a16 - 2 * (&a16 & 0x1D32A662) + 489858658) ^ 0xC1FFEA57);
  a18 = -98 - v27;
  a19 = v27 + v26 + 1128;
  a23 = 240217284 - v27;
  a24 = 302689067 - v27;
  a16 = &a14;
  a17 = &a11;
  a21 = &a12;
  a22 = v25;
  v28 = (*(v24 + 8 * (v26 ^ 0x8AF)))(&a16);
  return (*(v24 + 8 * ((3337 * (a11 == ((v26 + 1103) | 8) + ((v26 - 1655747749) & 0x62B0B8FF) - 1096561816)) ^ v26)))(v28);
}

uint64_t sub_1D49748F4()
{
  *(v1 + 8) = 4096;
  *v2 = v1;
  return v0(100);
}

uint64_t sub_1D49749AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t (*a29)(uint64_t, _UNKNOWN **))
{
  v34 = (*(v32 + 8 * (v29 ^ 0xF95)))(*v33);
  *v33 = v31;
  *(v33 + 8) = v30;
  return a29(v34, &off_1F503AD40);
}

uint64_t sub_1D4974AEC@<X0>(uint64_t a1@<X8>)
{
  v7 = (v3 ^ 0xFFFFFFFFFFFFFABALL ^ (71 * (v4 ^ 0xA23u))) + v2;
  *(a1 - 7 + v7 + v1) = *(v5 - 7 + v7);
  return (*(v6 + 8 * ((358 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1D4974B4C(uint64_t a1, int a2)
{
  v8 = v5 ^ 0xFB;
  v9 = ((2 * v6) & 0xFFFCF56E) + (v6 ^ 0x7FFE7AB7) + v7;
  v10 = *(*v2 + v9 + 397);
  v11 = (*(*v2 + v9 + v8) << 24) | (*(*v2 + v9 + 395) << 16) | (*(*v2 + v9 + 396) << 8) | v10;
  *v4 = v11 + a2 - 2 * (v11 & 0x3EA3DD1E ^ v10 & 0x16);
  *(v2 + 12) += 4;
  return v3();
}

uint64_t sub_1D4974C38@<X0>(int a1@<W8>)
{
  v4 = *(v1 + 12) + (((*(v3 - 156) ^ 0x237E441493C28A2CLL) - 0x237E441493C28A2CLL) ^ ((*(v3 - 156) ^ 0xDBB6376A84BE2B0BLL) + 0x2449C8957B41D4F5) ^ ((*(v3 - 156) ^ 0xF8C8737EA9DF7C2BLL ^ (a1 - 2631)) + ((a1 - 2588) ^ 0x7378C81562083FELL))) + 0x196283B0ALL;
  v6 = v4 >= 0xD7845E02 && v4 <= *(v1 + 8) + 3615776258u;
  return (*(v2 + 8 * ((a1 - 2278) ^ (8 * v6))))();
}

uint64_t sub_1D4974E38(uint64_t a1)
{
  v1 = *a1 ^ (1427277979 * ((a1 + 2026066301 - 2 * (a1 & 0x78C3517D)) ^ 0xE5AB72FB));
  v2 = v1 - 634666676;
  if (*(a1 + 8))
  {
    return (*(*(&off_1F503AD40 + v2) + 8 * (v1 ^ 0x25D432F3) - 4))(*(a1 + 8));
  }

  else
  {
    return (*(*(&off_1F503AD40 + v2) + 8 * (v1 ^ 0x25D432F3) - 4))(*(&off_1F503AD40 + v1 - 634666591) - 4);
  }
}

uint64_t sub_1D4974EC0(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = 912648571 * ((2 * (a1 & 0x2C4977A7) - a1 - 743012264) ^ 0xF7BC46D);
  v3 = *(a1 + 16) ^ v2;
  v4 = *(a1 + 24);
  v5 = 1427277979 * (&v8 ^ 0x9D682386);
  v6 = v5 + 295939877 * (*a1 ^ v2);
  v8 = *(a1 + 8);
  v9 = v6 + 1266701253;
  v10 = v3 - v5 - 1592150801;
  v11 = v4;
  result = (*(*(&off_1F503AD40 + v3 - 1047850485) + 8 * v3 - 0x1F3A70A54))(&v8);
  *(a1 + 32) = -42847;
  return result;
}

void sub_1D4975084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 48);
  **(a5 + 40) = v6;
  *v8 = *(v7 - 164) ^ (((v5 - 535) | 0x130u) - 1096557608);
  JUMPOUT(0x1D4972680);
}

uint64_t sub_1D49751A4(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  v6 = *a2;
  *(a3 - 1) = *(a2 - 1);
  *a3 = v6;
  return (*(v5 + 8 * (((a1 != 0) * v3) ^ v4)))(a1 - 32, a2 - 2, a3 - 2);
}

uint64_t sub_1D49751D4()
{
  (*(v3 + 8 * (v0 + 1809)))(*v5);
  *v5 = v2;
  *(v5 + 8) = v1;
  return v4(378, 640);
}

void sub_1D4975224(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 1661262079 * ((((2 * a1) | 0xF1304EDA) - a1 + 124246163) ^ 0x6EA8988A);
  v3[0] = v1 + 1661262079 * ((((2 * v3) | 0x140575FE) - v3 + 1979532545) ^ 0x1C320518) + 569;
  v2 = *(&off_1F503AD40 + (v1 & 0x4C2D7213)) - 4;
  (*&v2[8 * (v1 + 974)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D4975350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t))
{
  v18 = (*(v17 + 8 * (v13 ^ 0x9EF)))(*v14);
  *v14 = v16;
  *(v14 + 8) = v15;
  return a13(v18);
}

uint64_t sub_1D49754E0(unsigned int a1)
{
  v4 = *(v3 - 196) > 2u;
  **(v3 - 208) = *(v3 - 180) ^ a1;
  return (*(v2 + 8 * (((((v1 + 1818834804) & 0x9396C79B) + 2136) * v4) ^ v1)))();
}

uint64_t sub_1D4975688@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v18 = *(v15 + 12) + (((a15 ^ 0x3F30F1F0DB19A051) - 0x3F30F1F0DB19A051) ^ ((a15 ^ 0xD39956EEDE729471) + 0x2C66A911218D6B8FLL) ^ ((a15 ^ 0xECA9A71EBBC8E928) + 0x135658E144371288 + v17)) + 0x1A4F6B8BCLL;
  v20 = v18 >= 0xE652DBB4 && v18 <= (((a1 - 2671) | 0xBC0u) ^ 0xE652D04DLL) + *(v15 + 8);
  return (*(v16 + 8 * ((103 * v20) ^ a1)))();
}

uint64_t sub_1D4975770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = (*(v7 + 12) ^ 0x5E3FEEFB777F9A3FLL) + ((*(v7 + 12) << ((v6 - 19) ^ 0x41u)) & 0xEEFF347E) - 0x5E3FEEFABBCD34CALL;
  v11 = v9 < 0xBBB26571 || v9 > *(v7 + 8) + 3149030769u;
  return (*(v8 + 8 * ((v11 * (a6 + ((v6 - 1521158163) | 0x50004620) - 339)) ^ v6)))();
}

uint64_t sub_1D49758BC()
{
  v5 = v0 ^ v3;
  v7 = v1 > 0x1F && v5 > 7;
  return (*(v4 + 8 * ((v7 * (211 * (v2 ^ 0x666) - 608)) ^ v2)))();
}

uint64_t sub_1D4975BFC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, __int16 a14, char a15, __int16 a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *(v29 - 232);
  v31 = *(v29 - 224);
  v32 = *v31;
  v33 = (*v30 ^ 0x96FB65BE) + 1761906815 + ((2 * *v30) & 0x2DF6CB7C);
  *(*v31 + v33 + 2499) = a17;
  *(v32 + v33 + 2500) = a15;
  *(v32 + v33 + 2501) = a13;
  *(v32 + v33 + (a1 ^ 0xAA7)) = a11;
  *v30 += 4;
  return (*(v28 + 8 * (a1 ^ (25 * (a10 == 1325822203)))))(a28, 65);
}

uint64_t sub_1D4975CF8()
{
  v3 = ((v0 - 916) | 1u) + (*(v1 + 12) ^ 0xF76DDFF7DF7F4F5DLL) + ((*(v1 + 12) << ((v0 + 47) ^ 2u)) & 0x1BEFE9EBALL) + 0x8922008B68C6D89;
  v5 = v3 >= 0x960BC123 && v3 <= *(v1 + 8) + 2517352739u;
  return (*(v2 + 8 * ((54 * v5) ^ v0)))();
}

uint64_t sub_1D4975DCC()
{
  (*(v3 + 8 * (v4 ^ 0xE68)))(v1);
  v6 = *v0;
  v7 = *(v0 + 3);
  v8 = ((v4 - 2055848527) & 0x7A89C73D) + 907747199 + 972028385 * *v2;
  v9 = 891395573 * ((((2 * (v5 - 144)) | 0xA9B56F0A) - (v5 - 144) + 723863675) ^ 0x5C926FA1);
  *(v5 - 144) = v5 - 184;
  *(v5 - 132) = v9 + 994577233 + 1341023963 * v7;
  *(v5 - 128) = v4 - v9 - 42;
  *(v5 - 136) = v8 ^ v9;
  *(v5 - 120) = v5 - 204;
  *(v5 - 112) = v6;
  (*(v3 + 8 * (v4 + 2689)))(v5 - 144);
  v10 = (*(v3 + 8 * (v4 + 2589)))(v1);
  return sub_1D4975EC0(v10);
}

uint64_t sub_1D4975FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char *a24, int a25, int a26, unsigned int a27, char *a28, uint64_t a29)
{
  (*(v32 + 8 * (v33 - 1830012218)))(v30);
  v34 = 972028385 * *v31 + 907749015;
  v35 = 891395573 * ((-2089875960 - (&a24 | 0x836F0608) + (&a24 | 0x7C90F9F7)) ^ 0xF4D821D3);
  v36 = (((v33 - 1830014138) | 0x304) ^ 0x3B480C94) + v35 + 1341023963 * *(v29 + 3);
  a29 = *v29;
  a28 = &a19;
  a25 = v34 ^ v35;
  a26 = v36;
  a24 = &a22;
  a27 = v33 - 1830014844 - v35;
  (*(v32 + 8 * (v33 - 1830012113)))(&a24);
  (*(v32 + 8 * (v33 ^ 0x6D13DD3D)))(v30);
  return sub_1D4951630();
}

uint64_t sub_1D497616C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + (v3 ^ 0x4BAu) - 42;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((15 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1D49761A0()
{
  v3 = *(v2 - 160);
  *(v2 - 184) = 0;
  *(v2 - 164) = 0;
  v4 = *(&off_1F503AD40 + v1 - 2649) - 12;
  (*(v0 + 8 * (v1 ^ 0x6EB)))(v4);
  v5 = *v3;
  v6 = *(v3 + 3);
  v7 = 972028385 * **(&off_1F503AD40 + v1 - 2628) + 907749015;
  v8 = 891395573 * ((v2 - 1576661069 - 2 * ((v2 - 144) & 0xA2061043)) ^ 0x2A4EC867);
  *(v2 - 144) = v2 - 184;
  *(v2 - 112) = v5;
  *(v2 - 120) = v2 - 164;
  *(v2 - 136) = v7 ^ v8;
  *(v2 - 132) = v8 + 994577233 + 1341023963 * v6;
  *(v2 - 128) = v1 - v8 - 2219;
  (*(v0 + 8 * (v1 ^ 0x600)))(v2 - 144);
  v9 = *(v2 - 104);
  v10 = (*(v0 + 8 * (v1 ^ 0x6EC)))(v4);
  return (*(v0 + 8 * ((30 * (v9 == ((v1 - 1692131115) & 0x64DBDDFD ^ 0x5661DA39))) ^ v1)))(v10);
}

uint64_t sub_1D497643C@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 - 315) ^ 0xFFFFFFFFFFFFFFAFLL) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((104 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1D4976658()
{
  v3 = (*(v1 + 12) ^ 0xDF799FFC8EBA6FFDLL) + ((2 * *(v1 + 12)) & 0x11D74DFFALL) + 0x2086600402B02515;
  v5 = v3 >= (29 * (v0 ^ 0xC3Bu)) + 2439681236u && v3 <= *(v1 + 8) + 2439681294u;
  return (*(v2 + 8 * ((76 * v5) ^ v0)))();
}

uint64_t sub_1D4976AAC()
{
  *(v1 + 8) = 4096;
  *v0 = v1;
  return v2(1270);
}

uint64_t sub_1D4976B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30)
{
  v33 = *a30;
  v34 = ((*v31 << ((v30 + 92) ^ 0x89)) & 0xBBF7FFFC) + (*v31 ^ 0xDDFBFFFE) + 570687490;
  *(*a30 + v34) = BYTE4(a14);
  *(v33 + v34 + 1) = a14;
  *(v33 + v34 + 2) = BYTE4(a13);
  *(v33 + v34 + 3) = a13;
  *v31 += 4;
  return (*(v32 + 8 * (v30 ^ (101 * (HIDWORD(a12) != 1522384873)))))(HIDWORD(a12), 1522384873, a3, 840964161, 101, 50, 65, 2757862153, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_1D4976C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24)
{
  a24 = v24;
  a23 = v27 + 114 + 1661262079 * ((~(v25 | 0x2BC22B1B) + (v25 & 0x2BC22B1B)) ^ 0x420D6B03) - 1496398622;
  (*(v26 + 8 * (v27 + 2428)))(&a23);
  v29 = (*(v26 + 8 * ((v27 + 114) ^ 0xFCB)))(**(v28 + 8 * ((v27 + 114) & 0xA4BFE423)), *(v28 + 8 * ((v27 + 114) ^ 0x3DD)) - 4, a14);
  v30 = v29 - 1096557304 - ((v29 << (((v27 - 126) & 0xDD) + 116)) & 0x7D47BA10) + 16;
  a23 = (v27 + 634665864) ^ (1427277979 * (((v25 | 0xD246FBEE) - v25 + (v25 & 0x2DB90410)) ^ 0x4F2ED868));
  a24 = v24;
  v31 = (*(v26 + 8 * (v27 + 2381)))(&a23);
  return (*(v26 + 8 * ((4036 * (v30 == ((v27 - 761) | 0x41) - 1096557405)) ^ (v27 + 114))))(v31);
}

uint64_t sub_1D4976DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  *(v20 + 8) = 4096;
  *v19 = v20;
  return v21(2147484401, 24480, 755, 202, 21, a19);
}

uint64_t sub_1D4977150@<X0>(int a1@<W1>, unsigned int a2@<W4>, int a3@<W5>, uint64_t a4@<X8>)
{
  v8 = v5 - 1;
  *(a4 + v8 + v4) = *(v6 + v8);
  return (*(v7 + 8 * (((v8 == ((a1 - 223) | a2) - 1348) * a3) ^ a1)))();
}

uint64_t sub_1D4977244@<X0>(uint64_t a1@<X8>)
{
  *(v6 + v2) = *(a1 + v2);
  v8 = ((v2 + 1) ^ v1) != v4 + ((v3 + 126) | v5) - 929;
  return (*(v7 + 8 * (v8 | (16 * v8) | v3)))();
}

uint64_t sub_1D497729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, uint64_t *a33)
{
  v37 = a33;
  *(v36 - 168) = 0;
  a32 = 0;
  v38 = *(v34 + 8 * (v33 ^ 0x67D)) - 12;
  (*(v35 + 8 * (v33 ^ 0xA6D)))(v38);
  v39 = *v37;
  v40 = *(v37 + 3);
  v41 = 891395573 * ((((v36 - 144) | 0x1B1BBDD) + (~(v36 - 144) | 0xFE4E4422)) ^ 0x89F963F8);
  v42 = (972028385 * **(v34 + 8 * (v33 ^ 0x64A)) + 907749015) ^ v41;
  *(v36 - 120) = &a32;
  *(v36 - 112) = v39;
  *(v36 - 128) = v33 - v41 - 1069;
  *(v36 - 144) = v36 - 168;
  *(v36 - 136) = v42;
  *(v36 - 132) = v41 + 994577233 + v40 * (((v33 - 497152629) & 0x1DA1EFEA) + 1341023033);
  (*(v35 + 8 * (v33 + 1662)))(v36 - 144);
  v43 = *(v36 - 104);
  v44 = (*(v35 + 8 * (v33 ^ 0xA6A)))(v38);
  return (*(v35 + 8 * ((25 * (v43 != 1449251652)) ^ v33)))(v44);
}

uint64_t sub_1D497748C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = (a9 ^ 0x1DECE77F6BC1BFCBLL) + ((2 * a9) & 0xD7837F96) - 0x1DECE77EE5E8CD0BLL;
  v21 = v19 < 0x85D8F2BC || v19 > (v17 + 2089) + *(a17 + 8) + ((v17 + 2089) ^ 0x85D8E002);
  return (*(v18 + 8 * ((1678 * v21) ^ v17)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12);
}

uint64_t sub_1D497751C()
{
  v6 = (*(v4 + 8 * (v0 ^ 0xF69)))(*v1);
  *v1 = v3;
  *(v1 + 8) = v2;
  return v5(v6, 1333201021);
}

uint64_t sub_1D4977570(uint64_t a1)
{
  v5 = v1 ^ a1;
  v7 = v3 > 0x1F && v5 >= ((v2 - 1178) | 0x140u) - 1482;
  return (*(v4 + 8 * ((v7 * (((v2 - 1178) ^ 0xED) - 1148)) ^ v2)))();
}

void sub_1D49775B4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 701400691 * (((a1 | 0x9128DCB6) - (a1 & 0x9128DCB6)) ^ 0x8C45588C);
  v3[0] = v1 + 1661262079 * ((722506589 - (v3 | 0x2B10935D) + (v3 | 0xD4EF6CA2)) ^ 0x42DFD345) + 1178;
  v2 = *(&off_1F503AD40 + (v1 ^ 0x68D)) - 4;
  (*&v2[8 * v1 + 12664])(v3);
  __asm { BRAA            X8, X17 }
}

void sub_1D49776E8(uint64_t a1)
{
  (*(v2 + 8 * (v1 ^ 0xE62)))();
  (*(v2 + 8 * (v1 + 2591)))(a1);
  JUMPOUT(0x1D4977714);
}

uint64_t sub_1D4977858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, uint64_t a21)
{
  v27 = v21 ^ 0x1D;
  a21 = v22;
  a20 = v27 + 1661262079 * (v26 ^ 0x9630BFE7) - 1496400426;
  (*(v24 + 8 * (v27 ^ 0x602u)))(&a20);
  v28 = (*(v24 + 8 * (v27 ^ 0x6FFu)))(**(v25 + 8 * (v27 & 0x285B1513)), *(v25 + 8 * (v27 - 2665)) - 4, v23);
  v29 = v28 - 1096557293 - ((2 * v28) & 0x7D47BA10);
  a21 = v22;
  a20 = (v27 + 634663946) ^ (1427277979 * (((v26 | 0xE44DB1E4) - (v26 & 0xE44DB1E4)) ^ 0x79259262));
  v30 = (*(v24 + 8 * (v27 + 463)))(&a20);
  return (*(v24 + 8 * (((v29 != -1096557293) * (((v27 - 2315) | 0x12) - 405)) ^ v27)))(v30);
}

uint64_t sub_1D4977AD4(uint64_t a1)
{
  v6 = *v1;
  (*(v3 + 8 * (v5 ^ 0x9E9)))(*v1, @"xNJu5eepP", a1);
  v11 = (v5 + 1135875594) ^ (891395573 * ((1173650514 - (&v10 | 0x45F47C52) + (&v10 | 0xBA0B83AD)) ^ 0x32435B89));
  v10 = v9;
  (*(v3 + 8 * (v5 + 1926)))(&v10);
  (*(v3 + 8 * (v5 + 1925)))(a1);
  (*(v3 + 8 * (v5 + 1943)))(v6, @"rGLU5bt2", v2);
  result = (*(v3 + 8 * (v5 + 1925)))(v2);
  *(v1 + 6) = v4 ^ 0xBEA3DD08;
  return result;
}

uint64_t sub_1D4977C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = (v22 + 1099437344) | 0xA45410A;
  *(v23 + 8) = a19;
  v26 = (*(v24 + 8 * (v25 ^ 0x4BCD5B67)))(**(&off_1F503AD40 + (v25 ^ 0x4BCD5710)), a22, a19);
  return (*(v24 + 8 * ((v25 - 569407898) & 0xD62327BF ^ 0x3F0 ^ (v25 - 1271748136))))(v26);
}

uint64_t sub_1D4977D64@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (((v3 + 217022822) & 0xF31077DD) - 267)) ^ (v3 - 1254))))();
}

uint64_t sub_1D4977DB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, uint64_t a14, int a15, int a16, char a17, char *a18, uint64_t a19, uint64_t *a20, unint64_t a21, int a22, char *a23, int a24, uint64_t a25, int a26, int a27, int a28, uint64_t a29)
{
  v33 = *(v29 + 1);
  v34 = *v29;
  v35 = *(v29 + 4);
  v36 = v29[10];
  v37 = *(v29 + 6);
  v38 = 1427277979 * (((&a14 | 0xB97169356A220354) - (&a14 | 0x468E96CA95DDFCABLL) + 0x468E96CA95DDFCABLL) ^ 0xDCDD8D0F74A20D2);
  a14 = 0;
  a18 = &a11;
  a19 = v37;
  a20 = &a9;
  a21 = v38 + ((2 * v33) & 0xB79F8B77DF9DBAFELL) + 0x3EBEFFDEFBF93F9ALL + ((((v32 - 1565533189) & 0xDFF8FF4F) + 2102864392 - 0x24303A4410312B98) ^ v33);
  a29 = v35;
  a28 = v38 + (v36 ^ 0xFEDDFFB9) + ((2 * v36) & 0xFDBBFF72) + 1970977792;
  a15 = (a3 ^ 0x76FDFBBB) + ((2 * a3) & 0xEDFBF776) - v38 - 44384258;
  a16 = v32 - v38 + 1519;
  a24 = v38 ^ 0xF1FA1FF4;
  a25 = a2;
  a26 = ((v34 ^ 0x6DDF54F7) - 10028164 + ((2 * v34) & 0xDBBEA9EE)) ^ v38;
  a27 = 1833324659 - v38;
  a23 = &a13;
  a17 = -50 - v38;
  v39 = (*(v31 + 8 * (v32 ^ 0xFA1)))(&a14);
  return (*(v31 + 8 * ((1111 * (a22 == v30)) ^ v32)))(v39);
}

uint64_t sub_1D4978394()
{
  v4 = (v0 + 1370016121) & 0xAE573FF3;
  *(v1 + 8) = *(v3 - 164);
  *(v1 + 12) = 0;
  v5 = (*(v2 + 8 * (v4 ^ 0x5DE)))(**(&off_1F503AD40 + (v4 - 2457)), *(v3 - 184), *(v3 - 164));
  return (*(v2 + 8 * ((v4 - 2482) | 0x442)))(v5);
}

uint64_t sub_1D497845C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v3 + 280251474) & 0xEF4BB14D | 0x630)) ^ v3)))();
}

uint64_t sub_1D49784A0()
{
  v4 = *(v0 + 12) + (((*(v3 - 212) ^ 0x973CDE074311B4F0) + 0x68C321F8BCEE4B10) ^ ((*(v3 - 212) ^ 0xD5180ED91A04A94ALL) + 0x2AE7F126E5FB56B6) ^ ((*(v3 - 212) ^ 0x4224D0DEE7B6C0B2) - 0x4224D0DEE7B6C155 + (v1 - 551))) + 0x172B7A7B3;
  v6 = v4 < 0xB413CAAB || v4 > (v1 - 469) + 3021195702 + *(v0 + 8);
  return (*(v2 + 8 * (((2 * v6) | (32 * v6)) ^ v1)))();
}

uint64_t sub_1D4978864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v4 ^ 0x7EBA5F7FDB77B6FDLL) + ((v4 << ((v3 + 35) & 0xC7 ^ 0xC6u)) & 0x1B6EF6DFALL) - 0x7EBA5F7F50724FDBLL;
  v8 = v6 < 0x8B05671E || v6 > (((v3 + 69611) | 0xB000600u) ^ 0x800471D9) + *(a3 + 8);
  return (*(v5 + 8 * ((3262 * v8) ^ v3)))();
}

uint64_t sub_1D4978AA8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((486 * (v5 == (v3 ^ 0x4B1))) ^ v3)))();
}

uint64_t sub_1D4978B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, int a21)
{
  a20 = 1661262079 * (((&a20 | 0xE97D34C4) - &a20 + (&a20 & 0x1682CB38)) ^ 0x7F4D8B23) + 2854;
  (*(v21 + 26072))(&a20);
  return (*(v21 + 8 * (((a21 == 184620743) | (8 * (a21 == 184620743))) ^ 0xB65u)))(0);
}

uint64_t sub_1D4978DD8()
{
  v5 = v1 ^ v0;
  v7 = v3 < 0x20 || v5 < 8;
  return (*(v4 + 8 * ((((((v2 + 2558) ^ 0xBF4) + 3991) ^ (178 * ((v2 + 2558) ^ 0xBF4))) * v7) ^ (v2 + 2558))))();
}

uint64_t sub_1D4978E3C@<X0>(uint64_t a1@<X8>)
{
  v9 = ~v5 + v2;
  v10 = *(v1 + v9 - 15);
  v11 = *(v1 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((v6 + v5 == v3) * v7) ^ v4)))();
}

uint64_t sub_1D4978E7C(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x9B5)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((v1 ^ 0x13A) - 1247)) ^ v1)))();
}

void sub_1D4978FE4(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 2017535981 * (a1 ^ 0xD01941D5);
  v3[0] = v1 + 1661262079 * ((((2 * v3) | 0xF6D86ECC) - v3 + 76794010) ^ 0x6D5C8881) - 102;
  v2 = *(&off_1F503AD40 + (v1 - 2955)) - 4;
  (*&v2[8 * (v1 ^ 0x737)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D49792E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v18 + 8) = 4096;
  *v19 = v18;
  return v17(117, 2192, a3, a17);
}

uint64_t sub_1D4979500@<X0>(uint64_t a1@<X8>)
{
  v9 = ~v6 + v2;
  v10 = *(v1 + v9 - 15);
  v11 = *(v1 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((v6 + v4 - 303 == v3) * v7) ^ v5)))();
}

uint64_t sub_1D4979544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, int a22, char a23, char *a24, int a25, int a26, int a27, char *a28, uint64_t a29)
{
  (*(v32 + 8 * (v33 ^ 0x756u)))(v30);
  v34 = *v29;
  v35 = *v31 * (((v33 - 2326) | 0x896) ^ 0x39EFF376) + 907749015;
  v36 = 891395573 * ((-1247909149 - (&a24 | 0xB59E6AE3) + (&a24 | 0x4A61951C)) ^ 0xC2294D38);
  a26 = v36 + 994577233 + 1341023963 * *(v29 + 3);
  a27 = v33 - v36 - 2328;
  a25 = v35 ^ v36;
  a28 = &a23;
  a29 = v34;
  a24 = &a19;
  (*(v32 + 8 * (v33 ^ 0x7BDu)))(&a24);
  v37 = (*(v32 + 8 * (v33 + 303)))(v30);
  return sub_1D4975468(v37, v38, v39, v40, v41);
}

uint64_t sub_1D4979644()
{
  (*(v4 + 8 * (v3 ^ 0xFE0)))(v1);
  *v2 = 0;
  return v0(100);
}

uint64_t sub_1D49796F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t *a21, int a22, int a23, int a24, int *a25, uint64_t a26, int a27)
{
  v29 = a19;
  a18 = 0;
  a17 = 0;
  v30 = *(&off_1F503AD40 + (a11 - 353)) - 12;
  (*(v27 + 8 * (a11 + 2703)))(v30);
  v31 = 891395573 * ((((2 * v28) | 0x73F2521C) - v28 + 1174853362) ^ 0x31B1F12A);
  v32 = v31 + 994577233 + 1341023963 * *(v29 + 3);
  v33 = *v29;
  a22 = (972028385 * **(&off_1F503AD40 + (a11 - 332)) + 907749015) ^ v31;
  a23 = v32;
  a21 = &a18;
  a25 = &a17;
  a26 = v33;
  a24 = a11 - v31 + 77;
  (*(v27 + 8 * (a11 ^ 0xD18)))(&a21);
  v34 = a27;
  v35 = (*(v27 + 8 * (a11 ^ 0xDF4)))(v30);
  return (*(v27 + 8 * ((3523 * (v34 == ((a11 + 2308) ^ 0x5661D9F2))) ^ a11)))(v35);
}

uint64_t sub_1D4979828@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v3 - 516) ^ 0x87E)) ^ v3)))();
}

uint64_t sub_1D49799D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t *a42, uint64_t (*a43)(void))
{
  v44 = *a42;
  v45 = ((a31 & 0xDDDC2B0E) << (v43 - 93)) & (a31 ^ 0xD99C0A4D) ^ a31 & 0xDDDC2B0E;
  v46 = ((2 * (a31 ^ 0x5A3C1A51)) ^ 0xFC062BE) & (a31 ^ 0x5A3C1A51) ^ (2 * (a31 ^ 0x5A3C1A51)) & 0x87E0315E;
  v47 = v46 ^ 0x80201141;
  v48 = (v46 ^ 0x7C02119) & (4 * v45) ^ v45;
  v49 = ((4 * v47) ^ 0x1F80C57C) & v47 ^ (4 * v47) & 0x87E0315C;
  v50 = (v49 ^ 0x7800143) & (16 * v48) ^ v48;
  v51 = ((16 * (v49 ^ 0x80603003)) ^ 0x7E0315F0) & (v49 ^ 0x80603003) ^ (16 * (v49 ^ 0x80603003)) & 0x87E03150;
  v52 = v50 ^ 0x87E0315F ^ (v51 ^ 0x600110F) & (v50 << 8);
  v53 = a31 ^ (2 * ((v52 << 16) & 0x7E00000 ^ v52 ^ ((v52 << 16) ^ 0x315F0000) & (((v51 ^ 0x81E0200F) << 8) & 0x7E00000 ^ (((v51 ^ 0x81E0200F) << 8) ^ 0x60310000) & (v51 ^ 0x81E0200F) ^ 0x7C00000)));
  v54 = ((2 * *a27) & 0x6BFEE8EC) + (*a27 ^ 0xB5FF7476) + 1241549706;
  *(*a42 + v54 + 1) = BYTE2(v53) ^ 0x9C;
  *(v44 + v54 + 2) = BYTE1(v53) ^ 0x49;
  *(v44 + v54) = HIBYTE(v53) ^ 0xD0;
  *(v44 + v54 + 3) = v53 ^ 0xB0;
  *a27 += 4;
  return a43();
}

uint64_t sub_1D4979BC4()
{
  (*(v4 + 8 * (v3 + 2727)))(v1);
  *v0 = 0;
  return v2(1270);
}

uint64_t sub_1D4979C0C(uint64_t a1)
{
  (*(v2 + 8 * (v3 ^ 0xB2E)))();
  (*(v2 + 8 * (v3 ^ 0xB2D)))(a1);
  v5 = (*(v2 + 8 * (v3 + 1198)))(v1, @"ag9jz");
  return (*(v2 + 8 * (((v5 != 0) * ((v3 ^ 0x798) - 116)) ^ v3)))(v5, v6, v7);
}

uint64_t sub_1D4979CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t *a22, unsigned int a23, int a24, int a25, int *a26, uint64_t a27, int a28)
{
  v29 = a20;
  a21 = 0;
  a18 = 0;
  v30 = *(&off_1F503AD40 + a10 - 1510) - 12;
  (*(v28 + 8 * (a10 ^ 0xA76)))(v30);
  v31 = *(v29 + 3);
  v32 = 891395573 * (((&a22 | 0x2EB06C2F) - &a22 + (&a22 & 0xD14F93D0)) ^ 0xA6F8B40B);
  v33 = (**(&off_1F503AD40 + a10 - 1489) * ((a10 + 1531868607) & 0xA4B187DF ^ 0x39EFFA37) + 907749015) ^ v32;
  a27 = *v29;
  a26 = &a18;
  a23 = v33;
  a24 = v32 + 994576519 + 1341023963 * v31 + 714;
  a25 = a10 - v32 - 1080;
  a22 = &a21;
  (*(v28 + 8 * (a10 + 1651)))(&a22);
  v34 = a28;
  v35 = (*(v28 + 8 * (a10 + 1551)))(v30);
  return (*(v28 + 8 * ((467 * (v34 == ((2 * a10) ^ 0x5661DF2A))) ^ a10)))(v35);
}

uint64_t sub_1D4979EE8()
{
  v6 = (*(v3 + 8 * (v0 + 1787)))(*v4);
  *v4 = v2;
  *(v4 + 8) = v1;
  return v5(v6);
}

uint64_t sub_1D4979F64@<X0>(int *a1@<X8>, uint64_t a2, int a3, char a4, __int16 a5, char a6, int a7, char a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, int a19, int a20, char *a21, uint64_t a22, int a23, char *a24, char *a25, __int128 a26)
{
  v30 = *(a1 + 1);
  v29 = *(a1 + 2);
  v31 = a1[6];
  v32 = *a1;
  v33 = *(a1 + 4);
  v34 = a1[10];
  v35 = *(a1 + 6);
  v36 = 1427277979 * ((((2 * &a10) | 0x6070CC0B73731358) - &a10 - 0x30386605B9B989ACLL) ^ 0x8484D7E024D1AA2ALL);
  a15 = v33;
  a24 = &a4;
  a14 = 89 - v36;
  a25 = &a6;
  a17 = (v30 - ((v30 << ((v28 + 34) & 0xBF ^ 0xBDu)) & (((v28 - 1029604045) | 0x214A6000u) + 0x572BF1179E8073B7)) - 0x546A0773BEC9D61ELL) ^ v36;
  a13 = 0x2208371327174719;
  a10 = (v31 ^ 0x3EEBDF7E) - v36 + ((2 * v31) & 0x7DD7BEFC) - 37766938;
  a16 = v36 + 9;
  a20 = (v28 + 12) ^ v36;
  HIDWORD(a26) = 0;
  a18 = v36 - 1997706464;
  a19 = v36 + 1017878628;
  a21 = &a8;
  a22 = v29;
  LODWORD(a26) = ((v34 ^ 0x7EBFF97E) - 1108631834 + ((2 * v34) & 0xFD7FF2FC)) ^ v36;
  *(&a26 + 4) = (v32 ^ 0x7FFFFFFD) - v36 + ((2 * v32) & 0xFFFFFFFB) - 1287545396;
  a11 = 0;
  a12 = v35;
  v37 = (*(v27 + 8 * (v28 + 2558)))(&a10);
  return (*(v27 + 8 * ((1570 * (a23 == v26)) ^ v28)))(v37);
}

uint64_t sub_1D497A224()
{
  v5 = (*(v3 + 8 * (v4 + 748198499)))(v0);
  *v1 = 0;
  return v2(v5);
}

uint64_t sub_1D497A268(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 | 0x31)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (v1 + 748193941 + v1 - 748198448 - 1747)) | v1)))();
}

uint64_t sub_1D497A2D0()
{
  v4 = v0 | 0x212;
  v6 = v2 < 0x20 || (v1 ^ 0xC76714B4uLL) < ((5 * ((v4 - 1297550052) & 0x4D570BBA ^ 0xBCFu)) ^ 0x151uLL);
  return (*(v3 + 8 * ((14 * v6) ^ v4)))();
}

uint64_t sub_1D497A424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, void, uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  v24 = (*(v21 + 8 * (v18 ^ 0xDB1)))(*v22);
  *v22 = v20;
  *(v22 + 8) = v19;
  return a13(v24, a18, a15, v23, a16);
}

uint64_t sub_1D497A488@<X0>(uint64_t a1@<X8>)
{
  v5 = ((47 * (v3 ^ 0x678u)) ^ 0xFFFFFFFFFFFFFBF5) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((3542 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1D497A624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v35 = v30 - 650;
  *(v34 - 136) = v31;
  *(v34 - 144) = v35 + 1661262079 * ((((v34 - 144) ^ 0xD080A12C | 0x682885CD) - ((v34 - 144) ^ 0xD080A12C) + (((v34 - 144) ^ 0xD080A12C) & 0x97D77A30)) ^ 0x2E989B06) - 1496398625;
  (*(v33 + 8 * (v35 + 2311)))(v34 - 144);
  v36 = (*(v33 + 8 * (v35 + 2226)))(**(v32 + 8 * (v35 ^ 0x3A1)), *(v32 + 8 * (v35 ^ 0x3E0)) - 4, a30);
  v37 = v36 - 1096557304 - ((v35 ^ 0x7D47B9B2) & (2 * v36)) + 13;
  *(v34 - 136) = v31;
  *(v34 - 144) = (v35 + 634665747) ^ (1427277979 * ((((2 * (v34 - 144)) | 0x76BA2AEC) - (v34 - 144) - 995956086) ^ 0xA63536F0));
  v38 = (*(v33 + 8 * (v35 ^ 0xFD8)))(v34 - 144);
  return (*(v33 + 8 * ((1625 * (v37 == (v35 ^ 0x597) - 1096558880)) ^ v35)))(v38);
}

uint64_t sub_1D497A7A0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v6[1] = (a2 + 656) ^ (891395573 * (((v6 | 0x772D5EA5) - v6 + (v6 & 0x88D2A158)) ^ 0xFF658681));
  v7 = a1;
  result = (*(v3 + 8 * (a2 + 2759)))(v6);
  *(v2 + 28) = v5;
  return result;
}

uint64_t sub_1D497A814()
{
  v5 = v1 | 0x620;
  v7 = (v0 ^ v3) < 8 || v2 < (((398 * (v5 ^ 0x621) - 1974) | 0xC41u) ^ 0xC71uLL);
  return (*(v4 + 8 * (((32 * v7) | (v7 << 6)) ^ v5)))();
}

uint64_t sub_1D497A8B0(uint64_t a1)
{
  *(v2 + 8) = 4096;
  *v1 = v2;
  return v3(a1, 1333201021);
}

uint64_t sub_1D497A988(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0xD02)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 - 151) | 0x800) - 2088)) ^ v1)))();
}

void sub_1D497AED4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 1661262079 * ((~a1 & 0x71A5FACB | a1 & 0x8E5A0534) ^ 0xE795452C);
  v3[0] = v1 + 1661262079 * (((~v3 & 0x6F51C7EA) - (~v3 | 0x6F51C7EB)) ^ 0xF961780C) + 455;
  v2 = *(&off_1F503AD40 + (v1 ^ 0x95E)) - 4;
  (*&v2[8 * v1 + 6880])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D497B118@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 2016;
  (*(v4 + 8 * (v2 ^ 0x5B1)))(a2);
  *a1 = 0;
  *a1 = 0;
  a1[1] = 0;
  v7 = (*(v4 + 8 * (v5 ^ 0xD91)))();
  return v3(v7, 1333201021);
}

uint64_t sub_1D497B1D0@<X0>(int a1@<W1>, _DWORD *a2@<X8>)
{
  v6 = (v3 ^ v4 ^ 0xDFBE7A6B) + ((2 * v3) & 0xBF7CF3EE) + 541165065;
  v7 = *(*v5 + v6 + 3);
  v8 = (*(*v5 + v6) << 24) | (*(*v5 + v6 + 1) << 16) | (*(*v5 + v6 + 2) << 8) | v7;
  *a2 = v8 + a1 - 2 * (v8 & 0x3EA3DD1E ^ v7 & 0x16);
  *(v5 + 12) = v3 + 4;
  return v2();
}

uint64_t sub_1D497B280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, char a22, uint64_t a23, char *a24, int a25, int a26, int a27, char *a28, uint64_t a29, int a30)
{
  (*(v34 + 8 * (v33 + 874)))(v30);
  v36 = *v35;
  v37 = *(v35 + 3);
  v38 = 972028385 * *v31 + 907749015;
  v39 = 891395573 * (((v32 | 0xA692C351) + (~v32 | 0x596D3CAE)) ^ 0x2EDA1B74);
  a24 = &a19;
  a28 = &a22;
  a29 = v36;
  a26 = v39 + 994577233 + v37 * (v33 + 1341021700);
  a27 = v33 - v39 - 1752;
  a25 = v38 ^ v39;
  (*(v34 + 8 * (v33 + 979)))(&a24);
  v40 = a30;
  v41 = (*(v34 + 8 * (v33 ^ 0x491u)))(v30);
  return (*(v34 + 8 * ((2393 * (v40 == ((v33 - 182635480) & 0xAE2C337 ^ (v33 + 1180813983)))) ^ (v33 - 1610))))(v41);
}

uint64_t sub_1D497B3BC@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((4005 * (v5 == (v3 ^ 0x7A7))) ^ v3)))();
}

uint64_t sub_1D497B568@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, unsigned int a6@<W5>, void *a7@<X6>, int a8@<W8>)
{
  v21 = a5 < a6;
  v22 = *v10;
  v23 = *(*a7 + 4 * (v8 + v18));
  v24 = v23 + v17 - (a4 & (2 * v23));
  v25 = ((v9 << ((a8 + v14) & v15 ^ a2)) & a1) + (v9 ^ v19) + a3;
  *(v22 + v25) = v12 ^ HIBYTE(v24);
  *(v22 + v25 + 1) = BYTE2(v24) ^ 0x20;
  *(v22 + v25 + 2) = BYTE1(v24) ^ 0x18;
  *(v22 + v25 + 3) = v24 ^ v13;
  *v11 += 4;
  if (v21 == v8 + v20 < a6)
  {
    v21 = v8 + v20 < a5;
  }

  return (*(v16 + 8 * (!v21 | (2 * !v21) | a8)))();
}

uint64_t sub_1D497B728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v36 = (*v32 << 56) | (v32[1] << 48) | (v32[2] << 40) | (v32[3] << (v33 ^ 0x16u)) | (v32[4] << 24) | (v32[5] << 16) | (v32[6] << 8) | v32[7];
  **(v35 + 40) = (v36 - ((2 * v36) & 0x427CFD7D5B227C5ELL) + 0x213E7EBEAD913E2FLL) ^ 0x213E7EBEAD913E2FLL;
  return (*(v34 + 8 * (((a32 == 0) * ((41 * (v33 ^ 0x371) - 566324064) & 0x21C16B5F ^ 0xB5A)) ^ v33 ^ 0x4BD)))();
}

uint64_t sub_1D497B820@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v9 = ~v5 + v2;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = v7 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((v5 + (3 * v6) - 1891 == v4) * a1) ^ v3)))();
}

uint64_t sub_1D497B968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 + 8) = 4096;
  *v18 = v17;
  return v19(2147482550, 336, 214, 1305, a5, &off_1F503AD40, a7, a17);
}

uint64_t sub_1D497BAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, __int16 a18, char a19, __int16 a20, char a21, __int16 a22, char a23, uint64_t a24, unint64_t a25, _DWORD *a26, uint64_t a27, uint64_t a28, uint64_t *a29)
{
  v31 = *a29;
  v32 = ((2 * *a26) & 0x39DFC16E) + (*a26 ^ 0x9CEFE0B7);
  *(*a29 + v32 + 1662000969) = a23;
  *(v31 + v32 + 1662000970) = a21;
  *(v31 + v32 + 1662000971) = a19;
  *(v31 + v32 + ((v29 + 1561810700) & 0xA2E8A8AD ^ 0x63101760)) = a17;
  v33 = (*a26 + 4);
  *a26 = v33;
  return (*(v30 + 8 * ((238 * (a25 <= *a29 + ((2 * v33) & 0x3FFFD7BE) + (v33 ^ 0x7F35EFFB1FFFEBDFuLL) - 0x7F35EFFB1FFFEBDFLL)) ^ v29)))();
}

uint64_t sub_1D497BD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v24 + 8) = 4096;
  v29 = *(v27 + 104);
  v30 = *(v27 + 112);
  *v25 = v24;
  return v26(a1, 4294967291, a3, a4, a5, a6, 3478, 2147484390, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v29, v30);
}

void sub_1D497BDFC()
{
  *(v0 - 160) = 0;
  *(v0 - 196) = -1096557304;
  *(v0 - 192) = -1096557304;
  *(v0 - 188) = -1096557304;
  JUMPOUT(0x1D497BF48);
}

uint64_t sub_1D497C0A0@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 + 2063)))();
  *v1 = 0;
  return sub_1D497C0BC(v3);
}

uint64_t sub_1D497C0BC()
{
  *v1 = 0;
  v1[1] = 0;
  v4 = (*(v3 + 8 * (v2 + 1518106162)))(v1);
  return v0(v4);
}

void sub_1D497C3B8()
{
  *(v0 - 168) = 0;
  *(v0 - 208) = v0 - 168;
  JUMPOUT(0x1D4970C58);
}

uint64_t sub_1D497C3F4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 ^ 0x1FDBC8FF7F7625FFLL) + ((2 * v2) & 0xFEEC4BFELL) - 0x1FDBC8FF6E8FF8A8;
  v7 = v5 < 0x10E62D53 || v5 > ((v4 + 241) ^ 0xD7621A58) + *(a2 + 8);
  return (*(v3 + 8 * ((2848 * v7) ^ 0x111u)))();
}

uint64_t sub_1D497C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v20 = (((v14 ^ a8) * v12) ^ v10) + *(v11 + 12) + (((*(v18 - 188) ^ v8) + v9) ^ ((*(v18 - 188) ^ v17) + v19) ^ ((*(v18 - 188) ^ v13 ^ (v14 - 1631)) + v16));
  v22 = v20 < 0xFD318534 || v20 > *(v11 + 8) + 4247881012u;
  return (*(v15 + 8 * (((8 * v22) | (32 * v22)) ^ v14)))();
}

uint64_t sub_1D497C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  v26 = v22 + 1877;
  *(v23 + 8) = a21;
  *(v23 + 12) = 0;
  v27 = (*(v24 + 8 * (v26 ^ 0x417)))(**(&off_1F503AD40 + (v26 ^ 0x860)), a22, a21);
  return (*(v24 + 8 * ((2718 * (v25 == -1096557304)) ^ (v26 - 1985))))(v27);
}

uint64_t sub_1D497C728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v4 ^ 0xDF6B6E3BADFF97BDLL) + ((v4 << ((v3 - 47) ^ 0xDAu)) & 0x15BFF2F7ALL) + 0x209491C501C1A831;
  v8 = v6 < (v3 ^ 0x8D1u) + 2948675343u || v6 > *(a3 + 8) + 2948677610u;
  return (*(v5 + 8 * ((2615 * v8) ^ v3)))();
}

uint64_t sub_1D497C8E4@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W6>, uint64_t a4@<X8>)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a4 + v8);
  return (*(v7 + 8 * (((v8 == 0) * ((v5 + a1) & a2 ^ a3)) ^ v5)))();
}

uint64_t sub_1D497C914@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a1 + v6);
  return (*(v5 + 8 * (((v6 == 0) * v3) ^ v1)))();
}

uint64_t sub_1D497C980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *a2 + v7;
  *(a2 + 12) = ((v9 + ((v6 - 2023861386) & 0x78A1A93E) - 2360) ^ v5) + v7;
  v11 = (((v5 ^ 0x29DFE0C2) - 702537922) ^ ((v5 ^ 0x6EB1E730) - 1857152816) ^ (((v6 - 103952777) ^ v5) + 103949574)) + 1005315126;
  v12 = (v11 ^ 0xCAA7FCD0) & (2 * (v11 & 0x82B7F8D2)) ^ v11 & 0x82B7F8D2;
  v13 = ((2 * (v11 ^ 0xCEEA5C54)) ^ 0x98BB490C) & (v11 ^ 0xCEEA5C54) ^ (2 * (v11 ^ 0xCEEA5C54)) & 0x4C5DA486;
  v14 = v13 ^ 0x4444A482;
  v15 = (v13 ^ 0x8190000) & (4 * v12) ^ v12;
  v16 = ((4 * v14) ^ 0x31769218) & v14 ^ (4 * v14) & 0x4C5DA484;
  v17 = (v16 ^ 0x548000) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0x4C092486)) ^ 0xC5DA4860) & (v16 ^ 0x4C092486) ^ (16 * (v16 ^ 0x4C092486)) & 0x4C5DA480;
  return (*(v8 + 8 * ((4 * (v10 <= a5)) | (8 * (v10 <= a5)) | v6)))(a1, v11 ^ (2 * ((((v18 ^ 0x805A486) << 8) & 0x4C5DA400 ^ 0x4C040000 ^ (((v18 ^ 0x805A486) << 8) ^ 0x5DA40000) & (v18 ^ 0x805A486)) & (((v18 ^ 0x44580000) & (v17 << 8) ^ v17) << 16) ^ (v18 ^ 0x44580000) & (v17 << 8) ^ v17)));
}

uint64_t sub_1D497CC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, uint64_t a24)
{
  a23 = v28 + 1661262079 * (&a23 ^ 0x9630BFE7) - 1496400433;
  a24 = v25;
  (*(v27 + 8 * (v28 ^ 0x61B)))(&a23);
  v29 = (*(v27 + 8 * (v28 + 418)))(**(v24 + 8 * (v28 ^ 0xAB1)), *(v24 + 8 * (v28 - 2672)) - 4, v26);
  v30 = v29 - 1096557286 - ((v29 << (((v28 + 71) & 0x66) + ((v28 + 5) & 0x5F) - 118)) & 0x7D47BA10);
  a23 = (v28 + 634663939) ^ (1427277979 * ((922273851 - (&a23 | 0x36F8C83B) + (&a23 | 0xC90737C4)) ^ 0x546F1442));
  a24 = v25;
  v31 = (*(v27 + 8 * (v28 ^ 0x6C8)))(&a23);
  return (*(v27 + 8 * ((325 * (v30 == -1096557286)) ^ v28)))(v31);
}

uint64_t sub_1D497CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23)
{
  v27 = *v26;
  v28 = ((v24 & 0xAA7A4837) << (10 * (v23 ^ 0x8C) + 13)) & (v24 ^ 0x2A782027) ^ v24 & 0xAA7A4837;
  v29 = (((v24 ^ 0x6ED8A049) << ((v23 + 52) ^ 0xF3)) ^ 0x8945D0FC) & (v24 ^ 0x6ED8A049) ^ ((v24 ^ 0x6ED8A049) << ((v23 + 52) ^ 0xF3)) & 0xC4A2E87E;
  v30 = v29 ^ 0x44A22802;
  v31 = (v29 ^ 0x8400487E) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0x128BA1F8) & v30 ^ (4 * v30) & 0xC4A2E87C;
  v33 = (v32 ^ 0x82A070) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0xC4204806)) ^ 0x4A2E87E0) & (v32 ^ 0xC4204806) ^ (16 * (v32 ^ 0xC4204806)) & 0xC4A2E870;
  v35 = v33 ^ 0xC4A2E87E ^ (v34 ^ 0x40228000) & (v33 << 8);
  v36 = v24 ^ (2 * ((v35 << 16) & 0x44A20000 ^ v35 ^ ((v35 << 16) ^ 0x687E0000) & (((v34 ^ 0x8480681E) << 8) & 0x44A20000 ^ 0x44020000 ^ (((v34 ^ 0x8480681E) << 8) ^ 0x22E80000) & (v34 ^ 0x8480681E))));
  v37 = ((2 * *a23) & 0x7DDFE7EE) + (*a23 ^ 0xBEEFF3F7) + 1091570697;
  *(*v26 + v37) = HIBYTE(v36) ^ 0xA3;
  *(v27 + v37 + 1) = BYTE2(v36) ^ 0x7B;
  *(v27 + v37 + 2) = BYTE1(v36) ^ 0x98;
  *(v27 + v37 + 3) = v36 ^ 0xCB;
  v38 = (*a23 + 4);
  *a23 = v38;
  return (*(v25 + 8 * ((103 * (a20 <= *v26 + ((2 * v38) & 0x15B6CBDF8) + (v38 ^ 0x7DBB7FFFADB65EFCuLL) - 0x7DBB7FFFADB65EFCLL)) ^ v23)))();
}

uint64_t sub_1D497D234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t *a23, int a24, int a25, int a26, int *a27, uint64_t a28, int a29)
{
  v31 = 59 * (v29 ^ 0x83E);
  v32 = 118 * (v29 ^ 0x80B);
  a22 = 0;
  a21 = 0;
  v33 = *(&off_1F503AD40 + v29 - 1991) - 12;
  v34 = v29;
  (*(v30 + 8 * (v29 + 1065)))(v33);
  v35 = *(a18 + 3);
  v36 = **(&off_1F503AD40 + (v34 ^ 0x87E)) * (v32 + 972026143) + 907749015;
  v37 = 891395573 * (((&a23 | 0xDB4C15B2) - &a23 + (&a23 & 0x24B3EA48)) ^ 0x5304CD96);
  a28 = *a18;
  a27 = &a21;
  a23 = &a22;
  a25 = v37 + 994577233 + 1341023963 * v35;
  a26 = v34 - v37 - 1561;
  a24 = v36 ^ v37;
  (*(v30 + 8 * (v34 + 1170)))(&a23);
  v38 = a29;
  v39 = (*(v30 + 8 * (v34 + 1070)))(v33);
  return (*(v30 + 8 * ((695 * (v38 == v31 + 1449249410)) ^ v34)))(v39);
}

void sub_1D497D3AC()
{
  *(v1 - 192) = 0;
  *(v1 - 172) = -1096557304;
  *(v1 - 156) = -1096557304;
  *(v1 - 200) = -1096557304;
  *(v1 - 208) = v0;
  JUMPOUT(0x1D497D590);
}

uint64_t sub_1D497D6D8(uint64_t a1)
{
  v1 = *a1 - 1661262079 * ((a1 & 0x8832A6DC | ~(a1 | 0x8832A6DC)) ^ 0xE1FDE6C4);
  if (*(a1 + 8))
  {
    return (*(*(&off_1F503AD40 + v1 + 1496397696) + 8 * v1 + 0x2C98A2264))(*(a1 + 8));
  }

  else
  {
    return (*(*(&off_1F503AD40 + v1 + 1496397696) + 8 * v1 + 0x2C98A2264))(*(&off_1F503AD40 + (v1 ^ 0xA6CEC8D7)) - 4);
  }
}

void sub_1D497D75C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 28) + 1547649839 * ((((2 * a1) | 0xA0270812) - a1 - 1343456265) ^ 0xF66541D9);
  v3[0] = v1 + 1661262079 * (v3 ^ 0x9630BFE7) + 2460;
  v2 = *(&off_1F503AD40 + (v1 ^ 0x18B)) - 4;
  (*&v2[8 * (v1 ^ 0xD31)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1D497DA24(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, int a24)
{
  *a2 = 0;
  *v24 = 0;
  a23 = 1661262079 * (((&a23 ^ 0x2B733D6F) & 0x83F4CB3D | ~(&a23 ^ 0x2B733D6F | 0x83F4CB3D)) ^ 0xC148B64A) + 2854;
  (*(v25 + 26072))(&a23);
  return (*(v25 + 8 * ((30 * (a24 != 184620743)) ^ 0xA4Au)))(0);
}

void sub_1D497DAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v14 = ((2 * v12) & 0x17F7C1F76) + (v12 ^ 0x3FFDFBEFBFBE0FBBLL) + v11;
  v15 = (*(v14 - 0x3FFDFBEFBFBE0FBBLL) << 56) | (*(v14 - 0x3FFDFBEFBFBE0FBALL) << 48) | (*(v14 + ((v10 - 876157083) & 0x34391FEB ^ 0xC00204104041FB0CLL)) << 40) | (*(v14 - 0x3FFDFBEFBFBE0FB8) << 32) | (*(v14 - 0x3FFDFBEFBFBE0FB7) << 24) | (*(v14 - 0x3FFDFBEFBFBE0FB6) << 16) | (*(v14 - 0x3FFDFBEFBFBE0FB5) << 8) | *(v14 - 0x3FFDFBEFBFBE0FB4);
  *a10 = (v15 - ((2 * v15) & 0x427CFD7D5B227C5ELL) + 0x213E7EBEAD913E2FLL) ^ 0x213E7EBEAD913E2FLL;
  *(v13 + 12) += 8;
  JUMPOUT(0x1D4978338);
}

uint64_t sub_1D497DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(v21 + 8 * (v17 ^ 0x915)))(*v18);
  *v18 = v20;
  *(v18 + 8) = v19;
  return v22(2027685708, 3198409992, 2267281347, 1088, 1986, 178961152, a17, v23);
}

uint64_t sub_1D497DD10@<X0>(char a1@<W1>, char a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, _DWORD *a8)
{
  v11 = *v9;
  v12 = a7 - ((a7 << (a1 + (a2 ^ (v10 - 4)) - 108)) & 0x64403082) + 840964161;
  v13 = ((2 * *a8) & 0x69FFFD7C) + (*a8 ^ 0xB4FFFEBE) + 1258291522;
  *(*v9 + v13) = HIBYTE(v12) ^ 0x32;
  *(v11 + v13 + 1) = BYTE2(v12) ^ 0x20;
  *(v11 + v13 + 2) = BYTE1(v12) ^ 0x18;
  *(v11 + v13 + 3) = v12 ^ 0x41;
  *a8 += 4;
  return v8();
}

uint64_t sub_1D497DE04(__int128 *a1)
{
  v6 = *a1;
  *(v3 - 1) = *(a1 - 1);
  *v3 = v6;
  return (*(v5 + 8 * (((v4 == 0) * v2) ^ v1)))(a1 - 2);
}

uint64_t sub_1D497DEB0()
{
  *(v0 + 8) = 4096;
  *v1 = v0;
  return v2(74, 2147481874, 3794308737, 500659117, 2617145512, 1677823991, 2488);
}

uint64_t sub_1D497DF08@<X0>(uint64_t (*a1)(void)@<X1>, _DWORD *a2@<X2>, uint64_t *a3@<X3>, int a4@<W8>)
{
  v5 = *a3;
  v6 = v4 - ((((a4 - 1911311525) & 0x71EC4EDF) + 1681926646) & (2 * v4)) + 840964161;
  v7 = ((2 * *a2) & 0x6FDFE37C) + (*a2 ^ 0xB7EFF1BE) + 1209011778;
  *(*a3 + v7) = HIBYTE(v6) ^ 0x32;
  *(v5 + v7 + 1) = BYTE2(v6) ^ 0x20;
  *(v5 + v7 + 2) = BYTE1(v6) ^ 0x18;
  *(v5 + v7 + 3) = v6 ^ 0x41;
  *a2 += 4;
  return a1();
}

uint64_t sub_1D497E1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 8) = 4096;
  *v8 = v7;
  return v9(a1, a2, a3, 2485, a5, a6, a7, 473);
}

uint64_t sub_1D497E240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v13 + 8 * (v12 ^ 0x9B9)))(a1, 4, va);
  v14 = (*(v13 + 8 * (v12 + 1928)))(v11, @"P5h3ZgzLxs");
  return (*(v13 + 8 * (((v14 == 0) * (((v12 + 375) | 0x16B) ^ ((v12 ^ 0xFFB) - 766))) ^ v12)))(v14, v15, v16, v17, v18, v19, v20, v21);
}

void sub_1D497E300(_BYTE *a1@<X3>, uint64_t a2@<X8>)
{
  v6 = (v3 + 312);
  *v2 = *a1;
  v7 = (a2 + v4 + v5);
  *v7 = a1[1];
  v7[1] = a1[2];
  v7[2] = a1[3];
  *(v4 + v5 + v6 + a2 - 1838) = a1[4];
  v7[4] = a1[5];
  v7[5] = a1[6];
  v7[6] = a1[7];
  JUMPOUT(0x1D4960D24);
}

uint64_t sub_1D497E3C0@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 - 1623) ^ 0xFFFFFFFFFFFFFF85) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((3474 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1D497E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = (v21 - 185903451) & 0xB14AFE8;
  *(v22 + 8) = a18;
  *(v22 + 12) = 0;
  v25 = (*(v23 + 8 * (v24 ^ 0xA85)))(**(&off_1F503AD40 + v24 - 1742), a21, a18);
  return (*(v23 + 8 * (((v24 - 22) | 0x108) ^ 0xF1C ^ (v24 - 1680))))(v25);
}

uint64_t sub_1D497E4F8@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 + -8 - v3;
  *(a1 + -8 - v3 + v2) = *(v6 + v2);
  return (*(v5 + 8 * (((v3 - (v2 & 0xFFFFFFF8) == -8) * (v4 - 2622)) ^ v4)))(v6 - 8, v3 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_1D497E60C@<X0>(int a1@<W8>)
{
  v3 = (a1 ^ 0x8DCu ^ *(v1 + 12) ^ 0xBFDFBBFF8FE9FF2FLL) + ((2 * *(v1 + 12)) & 0x11FD3FFFALL) + 0x40204400E1209FE7;
  v5 = v3 >= 0x710A9FE0 && v3 <= *(v1 + 8) + 1896521696;
  return (*(v2 + 8 * (v5 | (v5 << 6) | a1 ^ 0xA1Eu)))();
}

uint64_t sub_1D497E6A4()
{
  v5 = (1234 * ((v2 - 237022242) & 0xE20A6D5 ^ 0x6D3u) + v0) ^ v1;
  v7 = v3 > 0x1F && v5 > 7;
  return (*(v4 + 8 * ((58 * v7) ^ v2)))();
}

uint64_t sub_1D497E83C()
{
  v5 = v0 ^ (v3 + 1025) ^ (v1 - 302519067) & 0x12081C37;
  v7 = v2 < 0x20 || v5 < 8;
  return (*(v4 + 8 * ((v7 * ((v1 + 554) ^ 0x4C9)) ^ v1)))();
}

uint64_t sub_1D497E8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, uint64_t a19, char a20, char *a21, int a22, int a23, int a24, char *a25, uint64_t a26, int a27)
{
  (*(v29 + 8 * (v30 + 1999)))(v27);
  v32 = *(v31 + 3);
  v33 = 972028385 * *v28 + 907749015;
  v34 = 891395573 * ((~(&a21 | 0x4CFA67B9) + (&a21 & 0x4CFA67B9)) ^ 0x3B4D4062);
  a26 = *v31;
  a25 = &a18;
  a21 = &a20;
  a23 = ((v30 - 473) ^ 0x3B4809C8) + v34 + 1341023963 * v32;
  a24 = v30 - v34 - 627;
  a22 = v33 ^ v34;
  (*(v29 + 8 * (v30 + 2104)))(&a21);
  v35 = a27;
  v36 = (*(v29 + 8 * (v30 + 2004)))(v27);
  return (*(v29 + 8 * ((59 * (v35 == ((v30 - 2115641111) ^ (v30 - 947637848)))) ^ (v30 - 473))))(v36);
}

uint64_t sub_1D497EB48@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v3) ^ v1)))();
}

uint64_t sub_1D497ECA8()
{
  v3 = (*(v1 + 12) ^ 0x78DCDF5DEF17BFF7) + ((*(v1 + 12) << ((v0 ^ 0xE3u) + 110)) & 0x1DE2F7FEELL) - 0x78DCDF5D5F0F9DA5;
  v5 = v3 >= 0x9008224E && v3 <= ((v0 + 1186) | 0x120u) + *(v1 + 8) + 2416450332u;
  return (*(v2 + 8 * ((15 * v5) ^ v0)))();
}

uint64_t sub_1D497ED4C()
{
  v5 = (*(v3 + 8 * (v4 ^ 0xF78)))(v1);
  *v2 = 0;
  return v0(v5);
}

void sub_1D497EE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22)
{
  *(v23 + 8) = a21;
  *(v23 + 12) = 0;
  (*(v24 + 8 * ((v22 + 2152) ^ 0x532)))(**(&off_1F503AD40 + v22 - 221), a22, a21);
  JUMPOUT(0x1D497EE94);
}

void __Block_byref_object_dispose__10(uint64_t a1)
{
}

{
}

void sub_1D49819C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void handleConnect(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = *a4;
  v6 = +[SSHTTPServer sharedServer];
  [v6 _handleConnectWithType:a2 handle:v5];
}

void sub_1D4984514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4985144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4985618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

Class __getAMSUIPrivacyViewControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppleMediaServicesUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E84AC2C8;
    v5 = 0;
    AppleMediaServicesUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    __getAMSUIPrivacyViewControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AMSUIPrivacyViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSUIPrivacyViewControllerClass_block_invoke_cold_1();
  }

  getAMSUIPrivacyViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleMediaServicesUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getOBBundleClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBBundle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBBundleClass_block_invoke_cold_1();
  }

  getOBBundleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OnBoardingKitLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __OnBoardingKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E84AC300;
    v2 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    OnBoardingKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __OnBoardingKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getOBPrivacyFlowClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBPrivacyFlow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBPrivacyFlowClass_block_invoke_cold_1();
  }

  getOBPrivacyFlowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getISStoreURLOperationClass_block_invoke(uint64_t a1)
{
  iTunesStoreLibrary();
  result = objc_getClass("ISStoreURLOperation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISStoreURLOperationClass_block_invoke_cold_1();
  }

  getISStoreURLOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void iTunesStoreLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!iTunesStoreLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __iTunesStoreLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E84AC318;
    v2 = 0;
    iTunesStoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!iTunesStoreLibraryCore_frameworkLibrary)
  {
    iTunesStoreLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __iTunesStoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  iTunesStoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getISProtocolDataProviderClass_block_invoke(uint64_t a1)
{
  iTunesStoreLibrary();
  result = objc_getClass("ISProtocolDataProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISProtocolDataProviderClass_block_invoke_cold_1();
  }

  getISProtocolDataProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getISOperationQueueClass_block_invoke(uint64_t a1)
{
  iTunesStoreLibrary();
  result = objc_getClass("ISOperationQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getISOperationQueueClass_block_invoke_cold_1();
  }

  getISOperationQueueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __DaemonLaunchNotification(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____DaemonLaunchNotification_block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1D4987EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4988078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SendDownloadStatusChanged(void *a1, uint64_t *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *a2;
    v6 = a2[1];

    return [a1 downloadQueue:v5 downloadStatusChangedAtIndex:v6];
  }

  return result;
}

uint64_t __SendNetworkUsageChanged(void *a1, uint64_t *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *a2;

    return [a1 downloadQueueNetworkUsageChanged:v5];
  }

  return result;
}

uint64_t __SendPreOrdersChanged(void *a1, uint64_t *a2)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *a2;

    return [a1 downloadQueuePreOrdersChanged:v5];
  }

  return result;
}

void sub_1D4989488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SSDownloadKindForAssetType(__CFString *a1)
{
  v2 = &off_1E84AC830;
  v3 = 14;
  result = @"other";
  while (*(v2 - 1) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  return *v2;
}

void sub_1D498ABE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D498ADC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D498C0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SSAssetTypeForDownloadKind(uint64_t a1)
{
  v2 = &off_1E84AC830;
  v3 = 14;
  while (![*v2 isEqualToString:a1])
  {
    v2 += 2;
    if (!--v3)
    {
      return 0;
    }
  }

  return *(v2 - 1);
}

__CFString *SSClientIdentifierForDownloadKind(void *a1)
{
  if ([a1 isEqualToString:@"ebook"])
  {
    return @"com.apple.iBooks";
  }

  if ([a1 isEqualToString:@"software"])
  {
    return @"com.apple.AppStore";
  }

  if (([a1 isEqualToString:@"book"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"feature-movie") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"song") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"music-video") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"podcast") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"videoPodcast") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"ringtone") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"tv-episode") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"tone") & 1) != 0 || objc_msgSend(a1, "isEqualToString:", @"coached-audio"))
  {
    return @"com.apple.MobileStore";
  }

  return 0;
}

uint64_t SSDownloadAssetTypeIsMediaType(void *a1)
{
  if ([a1 isEqualToString:@"media"])
  {
    return 1;
  }

  return [a1 isEqualToString:@"delta-package"];
}

uint64_t SSDownloadKindIsBookToShimKind(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4[0] = a1;
  v1 = 1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  if (([v2 containsObject:@"ebook"] & 1) == 0)
  {
    return [v2 containsObject:@"book"];
  }

  return v1;
}

uint64_t SSDownloadKindIsMediaKind(void *a1)
{
  if ([a1 isEqualToString:@"feature-movie"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"song") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"music-video") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"podcast") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"tv-episode") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"videoPodcast"))
  {
    return 1;
  }

  return [a1 isEqualToString:@"coached-audio"];
}

uint64_t SSDownloadKindIsPodcastKind(void *a1)
{
  if ([a1 isEqualToString:@"podcast"])
  {
    return 1;
  }

  return [a1 isEqualToString:@"videoPodcast"];
}

uint64_t SSDownloadKindIsSoftwareKind(void *a1)
{
  if ([a1 isEqualToString:@"software"])
  {
    return 1;
  }

  return [a1 isEqualToString:@"vpn-plugin"];
}

uint64_t SSDownloadKindIsThirdPartyKind(void *a1)
{
  if ([a1 isEqualToString:@"storekit-content"])
  {
    return 1;
  }

  return [a1 isEqualToString:@"newsstand"];
}

uint64_t SSDownloadKindIsToneKind(void *a1)
{
  if ([a1 isEqualToString:@"ringtone"])
  {
    return 1;
  }

  return [a1 isEqualToString:@"tone"];
}

uint64_t SSDownloadKindIsVideoKind(void *a1)
{
  if ([a1 isEqualToString:@"feature-movie"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"tv-episode") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"videoPodcast"))
  {
    return 1;
  }

  return [a1 isEqualToString:@"music-video"];
}

uint64_t SSDownloadKindIsVideosAppKind(void *a1)
{
  if ([a1 isEqualToString:@"feature-movie"])
  {
    return 1;
  }

  return [a1 isEqualToString:@"tv-episode"];
}

uint64_t SSDownloadPhaseIsFinishedPhase(void *a1)
{
  if ([a1 isEqualToString:@"SSDownloadPhaseFinished"])
  {
    return 1;
  }

  return [a1 isEqualToString:@"SSDownloadPhaseCanceled"];
}

uint64_t SSDownloadPhaseIsInactivePhase(void *a1)
{
  if ([a1 isEqualToString:@"SSDownloadPhaseWaiting"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"SSDownloadPhaseFinished") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"SSDownloadPhaseFailed") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"SSDownloadPhasePaused"))
  {
    return 1;
  }

  return [a1 isEqualToString:@"SSDownloadPhaseCanceled"];
}

uint64_t SSDownloadPhaseIsPausable(void *a1)
{
  if ([a1 isEqualToString:@"SSDownloadPhaseWaiting"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"SSDownloadPhaseDownloading") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"SSDownloadPhasePreflight"))
  {
    return 1;
  }

  return [a1 isEqualToString:@"SSDownloadPhaseDataRestore"];
}

uint64_t SSDownloadPhaseIsUnsuccessful(void *a1)
{
  if ([a1 isEqualToString:@"SSDownloadPhaseFailed"])
  {
    return 1;
  }

  return [a1 isEqualToString:@"SSDownloadPhaseCanceled"];
}

uint64_t __AbsoluteTimeForDate(void *a1)
{
  v1 = MEMORY[0x1E696AD98];
  [a1 timeIntervalSinceReferenceDate];

  return [v1 numberWithDouble:?];
}

uint64_t __DateValueForAbsoluteTime(void *a1)
{
  v1 = MEMORY[0x1E695DF00];
  [a1 doubleValue];

  return [v1 dateWithTimeIntervalSinceReferenceDate:?];
}

void sub_1D4995294(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1D49959E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
}

{
}

uint64_t __Block_byref_object_copy__87(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA6DFBB0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __Block_byref_object_dispose__88(uint64_t a1)
{
}

{
}

void sub_1D4999944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v55 - 192), 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Unwind_Resume(a1);
}

void sub_1D499AC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL SSVAssetResourceLoadingRequestContainsSecureKeyDeliveryRequest(void *a1)
{
  v1 = [a1 request];
  v2 = [v1 URL];
  v3 = [v2 scheme];

  v5 = v3 && [v3 rangeOfString:@"skd" options:1] != 0x7FFFFFFFFFFFFFFFLL && v4 == objc_msgSend(@"skd", "length");
  return v5;
}

double parseISO8601(unsigned __int8 *a1, uint64_t a2)
{
  v2 = &a1[a2];
  if (a2 < 1)
  {
    v12 = 0;
    v10 = a1;
  }

  else
  {
    v3 = *a1;
    v4 = v3 - 48;
    v5 = 10 * v3 - 480;
    if (a1[1] - 48 >= 0xA)
    {
      v6 = 0;
    }

    else
    {
      v6 = a1[1] - 48;
    }

    if (v4 >= 0xA)
    {
      v5 = 0;
    }

    v7 = v5 + v6;
    v8 = a1[2] - 48;
    if (v8 >= 0xA)
    {
      v8 = 0;
    }

    v9 = v8 + 10 * v7;
    v10 = a1 + 4;
    v11 = a1[3] - 48;
    if (v11 >= 0xA)
    {
      v11 = 0;
    }

    v12 = v11 + 10 * v9;
  }

  if (v10 < v2 && *v10 == 45)
  {
    ++v10;
  }

  if (v10 >= v2)
  {
    v18 = 0;
  }

  else
  {
    v13 = *v10;
    v14 = v13 - 48;
    v15 = 10 * v13 + 32;
    if (v14 >= 0xA)
    {
      v15 = 0;
    }

    v16 = v10[1];
    v10 += 2;
    v17 = v16 - 48;
    if (v17 >= 0xA)
    {
      LOBYTE(v17) = 0;
    }

    v18 = (v17 + v15) << 32;
  }

  if (v10 < v2 && *v10 == 45)
  {
    ++v10;
  }

  if (v10 >= v2)
  {
    v24 = 0;
  }

  else
  {
    v19 = *v10;
    v20 = v19 - 48;
    v21 = 10 * v19 + 32;
    if (v20 >= 0xA)
    {
      v21 = 0;
    }

    v22 = v10[1];
    v10 += 2;
    v23 = v22 - 48;
    if (v23 >= 0xA)
    {
      LOBYTE(v23) = 0;
    }

    v24 = (v23 + v21) << 40;
  }

  v25 = 0.0;
  if (v10 >= v2)
  {
    v26 = 0;
    v29 = 0;
LABEL_43:
    v30 = 0.0;
    goto LABEL_109;
  }

  v26 = 0;
  v28 = v10 + 1;
  v27 = *v10;
  if ((v27 - 32) > 0x3A)
  {
    v29 = 0;
    goto LABEL_43;
  }

  v29 = 0;
  v30 = 0.0;
  if (((1 << (v27 - 32)) & 0x410000000000001) == 0)
  {
    goto LABEL_109;
  }

  if (v28 >= v2)
  {
    v26 = 0;
  }

  else
  {
    v31 = v10[1];
    v32 = v31 - 48;
    v33 = 10 * v31 + 32;
    if (v32 >= 0xA)
    {
      v33 = 0;
    }

    v28 = v10 + 3;
    v34 = v10[2] - 48;
    if (v34 >= 0xA)
    {
      LOBYTE(v34) = 0;
    }

    v26 = v34 + v33;
  }

  if (v28 >= v2)
  {
    v29 = 0;
  }

  else
  {
    v35 = v28 + 1;
    if (*v28 == 58)
    {
      if (v35 >= v2)
      {
        v29 = 0;
      }

      else
      {
        v36 = v28[1];
        v37 = v36 - 48;
        v38 = 10 * v36 + 32;
        if (v37 >= 0xA)
        {
          v38 = 0;
        }

        v35 = v28 + 3;
        v39 = v28[2] - 48;
        if (v39 >= 0xA)
        {
          v39 = 0;
        }

        v29 = v39 + v38;
      }

      if (v35 < v2)
      {
        v28 = v35 + 1;
        if (*v35 == 58)
        {
          v40 = v35[1];
          v41 = v40 - 48;
          v42 = 10 * v40 + 32;
          if (v41 >= 0xA)
          {
            v43 = 0;
          }

          else
          {
            v43 = v42;
          }

          v28 = v35 + 3;
          v44 = v35[2] - 48;
          if (v44 >= 0xA)
          {
            LOBYTE(v44) = 0;
          }

          v25 = (v44 + v43);
        }

        goto LABEL_66;
      }
    }

    else
    {
      v29 = 0;
    }

    v28 = v35;
  }

LABEL_66:
  if (v28 >= v2)
  {
    v49 = 0;
  }

  else if (*v28 == 32)
  {
    v45 = &a1[a2];
    v46 = v28 + 1;
    v47 = &a1[a2 + ~v28];
    while (1)
    {
      v48 = v46;
      if (!v47)
      {
        break;
      }

      ++v46;
      --v47;
      if (*v48 != 32)
      {
        v45 = v48;
        break;
      }
    }

    v49 = v48 < v2;
    v28 = v45;
  }

  else
  {
    v49 = 1;
  }

  v50 = v27 == 84 && v49;
  v30 = 0.0;
  if (v27 == 32 || v50)
  {
    v51 = *v28;
    v52 = (v51 == 45 ? v28 + 1 : v28);
    v53 = v51 == 43;
    v54 = v51 != 43 && v51 == 45;
    v55 = v53 ? v28 + 1 : v52;
    if (v55 < v2)
    {
      v56 = *v55;
      v57 = v56 - 48;
      v58 = 10 * v56 + 32;
      if (v57 >= 0xA)
      {
        v58 = 0;
      }

      v59 = v55 + 2;
      v60 = v55[1] - 48;
      if (v60 >= 0xA)
      {
        LOBYTE(v60) = 0;
      }

      v61 = v60 + v58;
      if (v59 < v2 && *v59 == 58)
      {
        v62 = v55[3];
        v63 = v62 - 48;
        v64 = 10 * v62 + 32;
        if (v63 >= 0xA)
        {
          v64 = 0;
        }

        v65 = v55[4] - 48;
        if (v65 >= 0xA)
        {
          LOBYTE(v65) = 0;
        }

        v66 = (v65 + v64);
      }

      else
      {
        v66 = 0;
      }

      v67 = !v54;
      if (v54)
      {
        v68 = 3600;
      }

      else
      {
        v68 = -3600;
      }

      if (v67)
      {
        v69 = -60;
      }

      else
      {
        v69 = 60;
      }

      v30 = (v68 * v61 + v66 * v69);
    }
  }

LABEL_109:
  v71.second = v25;
  *&v71.year = v18 | v12 | v24 | (v26 << 48) | (v29 << 56);
  return v30 + CFGregorianDateGetAbsoluteTime(v71, 0);
}