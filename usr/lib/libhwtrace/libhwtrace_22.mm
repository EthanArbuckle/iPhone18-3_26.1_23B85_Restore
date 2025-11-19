const char *sub_298BFBA74(int a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) > 0xD)
  {
    return "Synced";
  }

  v2 = qword_298D1B500[v1];
  return off_29EEB62E0[v1];
}

void sub_298BFBAAC(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 0;
  }

  *(a1 + 24) = 1;
  if (*(a1 + 65) == 1)
  {
    *(a1 + 65) = 0;
  }

  memset_pattern16((a1 + 32), &unk_298D1B430, 0x20uLL);
}

uint64_t sub_298BFBAE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16) == 1)
  {
    *(result + 8) = a3;
    *(result + 12) = WORD2(a3);
  }

  else
  {
    *(result + 8) = a3;
    *(result + 16) = 1;
  }

  *result = a2;
  if ((a3 & 0x1000000) != 0)
  {
    if ((a3 & 0x100) != 0 || BYTE2(a2) < BYTE1(a2))
    {
      *(result + 64) = 256;
    }

    else if (*(result + 65) == 1)
    {
      *(result + 65) = 0;
    }
  }

  return result;
}

void sub_298BFBB50(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  v18 = 1;
  LOBYTE(__p[0]) = v4;
  sub_298B89CC0(a2, "ContextSwitchIgnoreAddressSpaceSwitch", 0x25uLL);
  sub_298B891F0(a2, &v18);
  --*(a2 + 8);
  if (v18 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v18 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v18 == 6 && v20 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(a1 + 2);
  v18 = 1;
  LOBYTE(__p[0]) = v5;
  sub_298B89CC0(a2, "ContextSwitchWithTPIDR", 0x16uLL);
  sub_298B891F0(a2, &v18);
  --*(a2 + 8);
  if (v18 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v18 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v18 == 6 && v20 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a1 + 3);
  v18 = 1;
  LOBYTE(__p[0]) = v6;
  sub_298B89CC0(a2, "ContextSwitchWithArchRegContextIDR", 0x22uLL);
  sub_298B891F0(a2, &v18);
  --*(a2 + 8);
  if (v18 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v18 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v18 == 6 && v20 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 4);
  v18 = 1;
  LOBYTE(__p[0]) = v7;
  sub_298B89CC0(a2, "ContextSwitchInstrumentation", 0x1CuLL);
  sub_298B891F0(a2, &v18);
  --*(a2 + 8);
  if (v18 == 8)
  {
    sub_298B8A314(__p);
    if (*(a1 + 24) != 1)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  if (v18 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v18 == 6 && v20 < 0)
  {
    operator delete(__p[0]);
    if (*(a1 + 24) != 1)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  if (*(a1 + 24) != 1)
  {
    goto LABEL_39;
  }

LABEL_30:
  v8 = *(a1 + 16);
  v18 = 4;
  __p[0] = v8;
  sub_298B89CC0(a2, "FallbackPID", 0xBuLL);
  sub_298B891F0(a2, &v18);
  --*(a2 + 8);
  if (v18 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v18 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v18 == 6 && v20 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  v9 = *(a1 + 5);
  v18 = 1;
  LOBYTE(__p[0]) = v9;
  sub_298B89CC0(a2, "ProcessFiltering", 0x10uLL);
  sub_298B891F0(a2, &v18);
  --*(a2 + 8);
  if (v18 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v18 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v18 == 6 && v20 < 0)
  {
    operator delete(__p[0]);
  }

  sub_298B89CC0(a2, "TracedExceptionLevels", 0x15uLL);
  sub_298B89A80(a2);
  sub_298BE71F8((a1 + 7), &v16);
  v10 = v16;
  v11 = v17;
  if (v16 != v17)
  {
    v12 = v16;
    do
    {
      v13 = "EL 0";
      if (*v12 - 1 <= 4)
      {
        v13 = off_29EEB6350[(*v12 - 1)];
      }

      sub_298BBB6E0(&v18, v13, 4uLL);
      sub_298B891F0(a2, &v18);
      if (v18 == 8)
      {
        sub_298B8A314(__p);
      }

      else if (v18 == 7)
      {
        sub_298B8A370(__p);
      }

      else if (v18 == 6 && v20 < 0)
      {
        operator delete(__p[0]);
      }

      ++v12;
    }

    while (v12 != v11);
  }

  if (v10)
  {
    operator delete(v10);
  }

  sub_298B89B0C(a2);
  --*(a2 + 8);
  v14 = *(a1 + 6);
  v18 = 3;
  __p[0] = v14;
  sub_298B89CC0(a2, "NumCounters", 0xBuLL);
  sub_298B891F0(a2, &v18);
  --*(a2 + 8);
  if (v18 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v18 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v18 == 6 && v20 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x29EDCA608];
}

unint64_t sub_298BFC074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = sub_298B8784C(a2, "ContextSwitchWithTPIDR", 22);
  *(a1 + 2) = v8 & ((v8 & 0x100) >> 8);
  v9 = sub_298B8784C(a2, "ContextSwitchIgnoreAddressSpaceSwitch", 37);
  if ((v9 & 0x100) == 0)
  {
    LOBYTE(v9) = *(a1 + 2);
  }

  *(a1 + 1) = v9 & 1;
  v10 = sub_298B8784C(a2, "ContextSwitchWithArchRegContextIDR", 34);
  *(a1 + 3) = v10 & ((v10 & 0x100) >> 8);
  v11 = sub_298B8784C(a2, "ContextSwitchInstrumentation", 28);
  *(a1 + 4) = v11 & ((v11 & 0x100) >> 8);
  v12 = sub_298B878FC(a2, "FallbackPID", 11);
  if (*(a1 + 24) == v13)
  {
    if (*(a1 + 24))
    {
      *(a1 + 16) = v12;
    }
  }

  else if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
  }

  else
  {
    *(a1 + 16) = v12;
    *(a1 + 24) = 1;
  }

  v14 = sub_298B8784C(a2, "ProcessFiltering", 16);
  *(a1 + 5) = v14 & ((v14 & 0x100) >> 8);
  v15 = sub_298B87C7C(a2, "TracedExceptionLevels", 21);
  if (v15)
  {
    *(a1 + 7) = 0;
    v16 = a1 + 7;
    *(v16 + 4) = 0;
    v17 = *v15;
    v18 = *(v15 + 8);
    if (*v15 != v18)
    {
      do
      {
        v19 = *v17;
        if (v19 == 6)
        {
          v20 = *(v17 + 31);
          if (v20 >= 0)
          {
            v3 = (v17 + 4);
          }

          else
          {
            v3 = *(v17 + 1);
          }

          v21 = *(v17 + 2);
          if (v20 >= 0)
          {
            v4 = *(v17 + 31);
          }

          else
          {
            v4 = *(v17 + 2);
          }
        }

        else if (v19 == 5)
        {
          v3 = *(v17 + 1);
          v4 = *(v17 + 2);
        }

        else
        {
          v3 &= 0xFFFFFFFFFFFFFF00;
        }

        v22 = sub_298BE75E4(v3, v4);
        if ((v22 & 0x100) == 0)
        {
          v26 = std::generic_category();
          v45[0] = "PCTrace.cpp";
          v46 = 259;
          v43[0] = ":";
          v44 = 259;
          sub_298ADC860(v45, v43, v47);
          sub_298AFB090(0x41DuLL, 0, __p);
          v42 = 260;
          v41[0] = __p;
          sub_298ADC860(v47, v41, v49);
          v38[0] = ": ";
          v39 = 259;
          sub_298ADC860(v49, v38, v51);
          v36 = "ExceptionLevel ";
          v37 = 259;
          sub_298ADC860(v51, &v36, v52);
          v28 = *v17;
          if (v28 == 6)
          {
            v31 = *(v17 + 1);
            v30 = v17 + 4;
            v29 = v31;
            v27 = *(v30 + 23);
            if (v27 >= 0)
            {
              v29 = v30;
            }

            if (v27 < 0)
            {
              v27 = *(v30 + 1);
            }
          }

          else if (v28 == 5)
          {
            v29 = *(v17 + 1);
            v27 = *(v17 + 2);
          }

          else
          {
            v29 = 0;
          }

          v35 = 261;
          v34[0] = v29;
          v34[1] = v27;
          sub_298ADC860(v52, v34, v53);
          v32 = "could not be parsed";
          v33 = 259;
          sub_298ADC860(v53, &v32, v54);
          sub_298ADDCA4(45, v26, v54);
        }

        *(v16 + v22) = 1;
        v17 += 16;
      }

      while (v17 != v18);
    }
  }

  result = sub_298B878FC(a2, "NumCounters", 11);
  if ((v24 & 1) != 0 && result >= 11)
  {
    v25 = std::generic_category();
    v49[0] = "PCTrace.cpp";
    v50 = 259;
    v47[0] = ":";
    v48 = 259;
    sub_298ADC860(v49, v47, v51);
    sub_298AFB090(0x423uLL, 0, v38);
    v46 = 260;
    v45[0] = v38;
    sub_298ADC860(v51, v45, v52);
    v43[0] = ": ";
    v44 = 259;
    sub_298ADC860(v52, v43, v53);
    v41[0] = "NumCounters exceeds maximum value";
    v42 = 259;
    sub_298ADC860(v53, v41, v54);
    sub_298ADDCA4(45, v25, v54);
  }

  *a3 = 0;
  return result;
}

void sub_298BFC490(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
  *(a1 + 22) = 0;
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  *(a1 + 56) = 1;
  if (*(a1 + 97) == 1)
  {
    *(a1 + 97) = 0;
  }

  memset_pattern16((a1 + 64), &unk_298D1B430, 0x20uLL);
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  if (*(a1 + 208) == 1)
  {
    *(a1 + 208) = 0;
  }

  *(a1 + 216) = 0;
}

uint64_t sub_298BFC52C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a1 != *a2)
  {
    return 1;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 1;
  }

  if (a3[5] != 1 || (a3[11] & 1) != 0 || (a3[10] & 1) != 0)
  {
    v4 = *(a1 + 232);
    v5 = *(a2 + 232);
    v6 = v4 != v5 || v4 == 0;
    if (v6)
    {
      if (v4 != v5)
      {
        return 3;
      }
    }

    else if (*(a1 + 224) != *(a2 + 224))
    {
      return 3;
    }

    v7 = *(a1 + 248);
    v8 = *(a2 + 248);
    if (v7 == v8 && *(a1 + 248))
    {
      if (*(a1 + 240) != *(a2 + 240))
      {
        return 4;
      }
    }

    else if (v7 != v8)
    {
      return 4;
    }

    v9 = *(a1 + 264);
    v10 = *(a2 + 264);
    if (v9 == v10 && *(a1 + 264))
    {
      if (*(a1 + 256) != *(a2 + 256))
      {
        return 5;
      }
    }

    else if (v9 != v10)
    {
      return 5;
    }
  }

  v11 = *(a1 + 208);
  v12 = *(a2 + 208);
  if (v11 != v12 || !*(a1 + 208))
  {
    if (v11 == v12)
    {
      goto LABEL_31;
    }

    return 3;
  }

  if (*(a1 + 200) != *(a2 + 200))
  {
    return 3;
  }

LABEL_31:
  if (*(a1 + 216) != *(a2 + 216))
  {
    return 3;
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == v14 && *(a1 + 48))
  {
    if (*(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33) || *(a1 + 34) != *(a2 + 34))
    {
      return 7;
    }

    v13 = *(a1 + 35);
    v14 = *(a2 + 35);
  }

  if (v13 != v14)
  {
    return 7;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 8;
  }

  v15 = *(a2 + 97);
  v16 = *(a1 + 97);
  v6 = v16 == v15;
  v17 = v16 != v15;
  if (v6 && *(a1 + 97))
  {
    v17 = *(a1 + 96) != *(a2 + 96);
  }

  if (v17)
  {
    return 9;
  }

  else
  {
    return 0;
  }
}

void *sub_298BFC704(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a1 + 770184;
  v6 = (a1 + 704600);
  v7 = (a1 + 49168);
  result = *(a1 + 8);
  v9 = v6[2];
  if (!(v9 + result[2]) || **(v5 + 16) < a2)
  {
    v10 = a1 + 606296;
    if (v9 == 4096)
    {
      *(v5 + 16) = 0;
    }

    else
    {
      v26 = *(v5 + 56);
      v27 = result[1] + v7[2];
      v28 = v6[1];
      v29 = (v10 + 24 * (v28 & 0xFFF));
      *v29 = a2;
      v29[1] = v27;
      v29[2] = v26;
      ++v9;
      v6[1] = v28 + 1;
      v6[2] = v9;
      *(v5 + 16) = v29;
      if (v9 < 0x841)
      {
        goto LABEL_9;
      }
    }

    v11 = *v6;
    v12 = v10 + 24 * *v6;
    if ((4096 - *v6) >= 0x800)
    {
      v13 = 2048;
    }

    else
    {
      v13 = 4096 - *v6;
    }

    v6[2] = v9 - v13;
    *v6 = (v13 + v11) & 0xFFF;
    result = (*(*result + 80))(result, v12);
  }

LABEL_9:
  v14 = a1 + 16;
  v15 = v7[2];
  if (v15 == 4096)
  {
    *v5 = 0;
LABEL_11:
    v16 = *(a1 + 8);
    v17 = *v7;
    v18 = v14 + 12 * *v7;
    if ((4096 - *v7) >= 0x800)
    {
      v19 = 2048;
    }

    else
    {
      v19 = 4096 - *v7;
    }

    v7[2] = v15 - v19;
    *v7 = (v19 + v17) & 0xFFF;
    result = (*(*v16 + 72))(v16, v18);
    goto LABEL_15;
  }

  v20 = *(v5 + 24);
  v21 = ((v20 >> 8) & 1) == 0;
  v22 = v7[1];
  v23 = v14 + 12 * (v22 & 0xFFF);
  v24 = v20 >> 8;
  v25 = (v20 & 7) << 26;
  if (v21)
  {
    v25 = 0;
  }

  *v23 = (a3 >> 2) & 0x7FFFFFFFFFFFLL;
  *(v23 + 8) = v25 | (v24 << 29);
  ++v15;
  v7[1] = v22 + 1;
  v7[2] = v15;
  *v5 = v23;
  if (v15 >= 0x841)
  {
    goto LABEL_11;
  }

LABEL_15:
  ++**a1;
  return result;
}

uint64_t sub_298BFC8F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 770184);
  v3 = *v2;
  v4 = *v2 >> 47;
  v5 = v4 + 1;
  if ((v4 + 1) < 0x1FFFF)
  {
    v6 = (v4 + 1);
  }

  else
  {
    v6 = 0x1FFFFLL;
  }

  *v2 = v3 & 0x7FFFFFFFFFFFLL | (v6 << 47);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    do
    {
      *(v2 + 2) = v2[1] & 0xFC3FFFFF | 0x2400000;
      v8 = result;
      v9 = a2;
      sub_298BFC704(result, *(a2 + 40), ((v3 << 17) >> 15) + 4 * v6);
      result = v8;
      a2 = v9;
      v2 = *(v8 + 770184);
      v3 = *v2;
      v10 = v7 + (*v2 >> 47);
      if (v10 >= 0x1FFFF)
      {
        v6 = 0x1FFFFLL;
      }

      else
      {
        v6 = v10;
      }

      *v2 = v3 & 0x7FFFFFFFFFFFLL | (v6 << 47);
      v7 = v10 - v6;
    }

    while (v10 != v6);
  }

  return result;
}

unint64_t sub_298BFC9BC(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(*(a1 + 328) + 16);
  if (!v3)
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    v7 = *(a1 + 128) == 0;
    goto LABEL_4;
  }

  v11 = *(a1 + 96);
  if (!v11)
  {
    v7 = 0;
    v26 = *(a1 + 128);
LABEL_4:
    v8 = (a1 + 104);
    *(a1 + 112) = *(a1 + 104);
    v9 = *(a1 + 80);
    (*(**(a1 + 72) + 40))(*(a1 + 72), v7);
    v10 = *v8;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - *(a1 + 104)) >> 3);
    *(a1 + 88) = v7;
    *(a1 + 96) = v11;
    if (*(v10 + 24 * -v7 + 16) > a2)
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v10 = *(a1 + 104);
  if (*(v10 + 16) > a2)
  {
LABEL_17:
    v15 = 0;
    v16 = 0;
    return v16 | v15;
  }

LABEL_9:
  v13 = v3 - 1;
  if (v7 > v3 - 1)
  {
    v14 = *(a1 + 128);
    if (v14 <= v13)
    {
      v7 = v3 - v14;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_15;
  }

  if (v11 + v7 <= v13)
  {
    v14 = *(a1 + 128);
    v7 = v3 - 1;
LABEL_15:
    *(a1 + 112) = v10;
    (*(**(a1 + 72) + 40))(*(a1 + 72), v7, v14, a1 + 104, *(a1 + 80));
    v10 = *(a1 + 104);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v10) >> 3);
    *(a1 + 88) = v7;
    *(a1 + 96) = v11;
  }

  if (*(v10 + 24 * (v13 - v7) + 16) < a2)
  {
    goto LABEL_17;
  }

  v17 = 0;
  v18 = v3;
  do
  {
    v22 = (v18 >> 1) + v17;
    if (v7 > v22)
    {
      v19 = *(a1 + 128);
      if (v19 <= v22)
      {
        v7 = v22 - v19 + 1;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_22;
    }

    if (v11 + v7 <= v22)
    {
      v23 = *(a1 + 128);
      v7 = (v18 >> 1) + v17;
LABEL_22:
      *(a1 + 112) = v10;
      v20 = *(a1 + 80);
      (*(**(a1 + 72) + 40))(*(a1 + 72), v7);
      v10 = *(a1 + 104);
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v10) >> 3);
      *(a1 + 88) = v7;
      *(a1 + 96) = v11;
    }

    v21 = *(v10 + 24 * (v22 - v7) + 16);
    if (v21 >= a2)
    {
      v18 >>= 1;
    }

    else
    {
      v18 += ~(v18 >> 1);
    }

    if (v21 < a2)
    {
      v17 = v22 + 1;
    }
  }

  while (v18);
  if (v7 <= v17)
  {
    v25 = a3;
    if (v11 + v7 <= v17)
    {
      v24 = *(a1 + 128);
      v7 = v17;
      goto LABEL_40;
    }
  }

  else
  {
    v24 = *(a1 + 128);
    if (v24 <= v17)
    {
      v7 = v17 - v24 + 1;
    }

    else
    {
      v7 = 0;
    }

    v25 = a3;
LABEL_40:
    *(a1 + 112) = v10;
    (*(**(a1 + 72) + 40))(*(a1 + 72), v7, v24, a1 + 104, *(a1 + 80));
    v10 = *(a1 + 104);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v10) >> 3);
    *(a1 + 88) = v7;
    *(a1 + 96) = v11;
  }

  v27 = v17 - v7;
  if (*(v10 + 24 * (v17 - v7) + 16) != a2)
  {
    if (v25)
    {
      if (v17 >= v7)
      {
LABEL_61:
        if (v11 + v7 > v17)
        {
LABEL_64:
          v15 = *(v10 + 24 * v27 + 8);
          goto LABEL_85;
        }

        v31 = *(a1 + 128);
        v32 = v17;
LABEL_63:
        *(a1 + 112) = v10;
        (*(**(a1 + 72) + 40))(*(a1 + 72), v32, v31, a1 + 104, *(a1 + 80));
        v10 = *(a1 + 104);
        v33 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v10) >> 3);
        *(a1 + 88) = v32;
        *(a1 + 96) = v33;
        v27 = v17 - v32;
        goto LABEL_64;
      }

LABEL_57:
      v31 = *(a1 + 128);
      if (v31 <= v17)
      {
        v32 = v17 - v31 + 1;
      }

      else
      {
        v32 = 0;
      }

      goto LABEL_63;
    }

    if (v17 >= v7)
    {
      if (v11 + v7 > v17)
      {
        goto LABEL_72;
      }

      v34 = *(a1 + 128);
      v7 = v17;
    }

    else
    {
      v34 = *(a1 + 128);
      if (v34 <= v17)
      {
        v7 = v17 - v34 + 1;
      }

      else
      {
        v7 = 0;
      }
    }

    *(a1 + 112) = v10;
    (*(**(a1 + 72) + 40))(*(a1 + 72), v7, v34, a1 + 104, *(a1 + 80));
    v10 = *(a1 + 104);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v10) >> 3);
    *(a1 + 88) = v7;
    *(a1 + 96) = v11;
    v27 = v17 - v7;
LABEL_72:
    v35 = *(v10 + 24 * v27 + 8);
    if (!v35)
    {
      v15 = 0;
      goto LABEL_85;
    }

    if (v7 <= v17)
    {
      if (v11 + v7 > v17)
      {
LABEL_84:
        v15 = v35 - 1;
        goto LABEL_85;
      }

      v36 = *(a1 + 128);
      v37 = v17;
    }

    else
    {
      v36 = *(a1 + 128);
      if (v36 <= v17)
      {
        v37 = v17 - v36 + 1;
      }

      else
      {
        v37 = 0;
      }
    }

    *(a1 + 112) = v10;
    (*(**(a1 + 72) + 40))(*(a1 + 72), v37, v36, a1 + 104, *(a1 + 80));
    v39 = *(a1 + 104);
    v40 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v39) >> 3);
    *(a1 + 88) = v37;
    *(a1 + 96) = v40;
    v35 = *(v39 + 24 * (v17 - v37) + 8);
    goto LABEL_84;
  }

  if (!v25)
  {
    if (v17 >= v7)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  v28 = v17 + 1;
  if (v17 + 1 == v3)
  {
    goto LABEL_78;
  }

  v29 = 24 * v17 + 40;
  while (2)
  {
    if (v7 <= v28)
    {
      if (v11 + v7 <= v28)
      {
        v30 = *(a1 + 128);
        v7 = v28;
        goto LABEL_51;
      }
    }

    else
    {
      v30 = *(a1 + 128);
      if (v30 <= v28)
      {
        v7 = v17 - v30 + 2;
      }

      else
      {
        v7 = 0;
      }

LABEL_51:
      *(a1 + 112) = v10;
      (*(**(a1 + 72) + 40))(*(a1 + 72), v7, v30, a1 + 104, *(a1 + 80));
      v10 = *(a1 + 104);
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v10) >> 3);
      *(a1 + 88) = v7;
      *(a1 + 96) = v11;
    }

    if (*(v10 - 24 * v7 + v29) == a2)
    {
      v29 += 24;
      ++v28;
      ++v17;
      if (v3 == v28)
      {
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  if (v3 == v28)
  {
LABEL_78:
    v38 = (*(a1 + 328) + 8);
    goto LABEL_79;
  }

  if (v7 <= v28)
  {
    if (v11 + v7 <= v28)
    {
      v41 = *(a1 + 128);
      goto LABEL_93;
    }
  }

  else
  {
    v41 = *(a1 + 128);
    if (v41 <= v28)
    {
      v28 = v28 - v41 + 1;
    }

    else
    {
      v28 = 0;
    }

LABEL_93:
    *(a1 + 112) = v10;
    (*(**(a1 + 72) + 40))(*(a1 + 72), v28, v41, a1 + 104, *(a1 + 80));
    v10 = *(a1 + 104);
    v42 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v10) >> 3);
    *(a1 + 88) = v28;
    *(a1 + 96) = v42;
    v7 = v28;
  }

  v38 = (v10 - 24 * v7 + v29 - 8);
LABEL_79:
  v15 = *v38 - 1;
LABEL_85:
  v16 = v15 & 0xFFFFFFFFFFFFFF00;
  v15 = v15;
  return v16 | v15;
}

void sub_298BFD044(uint64_t a1, int a2, int a3, int a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a7;
  v8 = *a5;
  *(a1 + 40) = a5[1];
  *(a1 + 24) = v8;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 56) = a6;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 86) = 0;
  *(a1 + 120) = 1;
  memset_pattern16((a1 + 128), &unk_298D1B430, 0x20uLL);
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 280) = 0;
  operator new();
}

void sub_298BFD584(uint64_t a1)
{
  v2 = *(a1 + 712);
  *(a1 + 712) = 0;
  if (v2)
  {
    v3 = sub_298B067E0(v2);
    MEMORY[0x29C2945F0](v3, 0x10E0C408B335C42);
  }

  *__p = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  DWORD2(v40) = 1065353216;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v4 = *(a1 + 488);
  *(a1 + 488) = 0;
  if (v4)
  {
    sub_298AEA480(a1 + 488, v4);
  }

  *(a1 + 496) = 0;
  *(&v33[1] + 1) = 0;
  v5 = *(a1 + 512);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  if (v5)
  {
    sub_298AEA480(a1 + 512, v5);
  }

  *(a1 + 520) = 0;
  *&v34[0] = 0;
  v6 = *(a1 + 536);
  *(a1 + 528) = 0u;
  if (v6)
  {
    sub_298AEA480(a1 + 536, v6);
  }

  *(a1 + 544) = 0;
  *(&v34[1] + 1) = 0;
  v7 = *(a1 + 560);
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  if (v7)
  {
    sub_298AEA480(a1 + 560, v7);
  }

  *(a1 + 568) = 0;
  *&v35[0] = 0;
  v8 = *(a1 + 584);
  *(a1 + 576) = 0u;
  if (v8)
  {
    sub_298AEA480(a1 + 584, v8);
  }

  *(a1 + 592) = 0;
  *(&v35[1] + 1) = 0;
  v9 = *(a1 + 608);
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  if (v9)
  {
    sub_298AEA480(a1 + 608, v9);
  }

  *(a1 + 616) = 0;
  *&v36 = 0;
  v10 = *(a1 + 632);
  *(a1 + 624) = 0u;
  if (v10)
  {
    sub_298AEA480(a1 + 632, v10);
  }

  *(a1 + 640) = 0;
  *(&v37 + 1) = 0;
  v11 = *(a1 + 656);
  *(a1 + 648) = 0;
  *(a1 + 656) = 0;
  if (v11)
  {
    sub_298AEA480(a1 + 656, v11);
  }

  *(a1 + 664) = 0;
  v12 = *(a1 + 696);
  if (v12)
  {
    v13 = *(a1 + 688);
    if (v13)
    {
      v14 = *v13;
      operator delete(v13);
      if (v14)
      {
        do
        {
          v32 = *v14;
          operator delete(v14);
          v14 = v32;
        }

        while (v32);
      }
    }

    *(a1 + 688) = 0;
    v12 = *(a1 + 680);
    if (v12)
    {
      **(a1 + 672) = 0;
      if (v12 != 1)
      {
        for (i = 1; i != v12; ++i)
        {
          *(*(a1 + 672) + 8 * i) = 0;
        }
      }

      v12 = *(&v38 + 1);
    }

    *(a1 + 696) = 0;
  }

  v15 = *(a1 + 672);
  *(a1 + 672) = v12;
  if (v15)
  {
    operator delete(v15);
  }

  *(a1 + 680) = 0;
  __p[0] = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 1065353216;
  v16 = __p[1];
  *(a1 + 688) = __p[1];
  if (v16)
  {
    v17 = *v16;
    operator delete(v16);
    if (v17)
    {
      do
      {
        v31 = *v17;
        operator delete(v17);
        v17 = v31;
      }

      while (v31);
    }
  }

  v18 = *(&v37 + 1);
  *(&v38 + 1) = 0;
  *(&v37 + 1) = 0;
  if (v18)
  {
    sub_298AEA480(&v37 + 8, v18);
  }

  v19 = v36;
  *&v36 = 0;
  if (v19)
  {
    sub_298AEA480(&v36, v19);
  }

  v20 = *(&v35[1] + 1);
  *(&v35[1] + 1) = 0;
  if (v20)
  {
    sub_298AEA480(&v35[1] + 8, v20);
  }

  v21 = *&v35[0];
  *&v35[0] = 0;
  if (v21)
  {
    sub_298AEA480(v35, v21);
  }

  v22 = *(&v34[1] + 1);
  *(&v34[1] + 1) = 0;
  if (v22)
  {
    sub_298AEA480(&v34[1] + 8, v22);
  }

  v23 = *&v34[0];
  *&v34[0] = 0;
  if (v23)
  {
    sub_298AEA480(v34, v23);
  }

  v24 = *(&v33[1] + 1);
  *(&v33[1] + 1) = 0;
  if (v24)
  {
    sub_298AEA480(&v33[1] + 8, v24);
  }

  v25 = *&v33[0];
  *&v33[0] = 0;
  if (v25)
  {
    sub_298AEA480(v33, v25);
  }

  *(a1 + 720) = 0;
  v26 = *(a1 + 56);
  if (v26)
  {
    if (*(a1 + 29) != 1 || (*(a1 + 35) & 1) != 0 || (*(a1 + 34) & 1) != 0)
    {
      v27 = (a1 + 448);
    }

    else
    {
      if (*(v26 + 672) != 1)
      {
        v28 = 0;
        goto LABEL_51;
      }

      v27 = (*(v26 + 656) + 40);
    }

    v28 = *v27;
LABEL_51:
    v29 = *sub_298BFD9C8((a1 + 456), v28);
    if (!v29)
    {
      sub_298BFDED4();
    }

    *(a1 + 720) = v29;
  }
}

uint64_t sub_298BFD95C(uint64_t a1, unint64_t a2)
{
  result = *sub_298BFD9C8((a1 + 456), a2);
  if (!result)
  {
    sub_298BFDED4();
  }

  return result;
}

uint64_t sub_298BFD9C8(void *a1, unint64_t a2)
{
  if (*a1)
  {
    v4 = &a1[3 * a1[1]];
    v6 = v4[3];
    v5 = (v4 + 3);
    if (v6 == a2)
    {
      goto LABEL_56;
    }
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v7 >> 47) ^ v7);
  v9 = v8 ^ (v8 >> 47);
  v10 = 0x9DDFEA08EB382D69 * v9;
  v11 = a1[28];
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] <= 1uLL)
    {
      v13 = (*&v11 - 1) & v10;
    }

    else
    {
      v13 = 0x9DDFEA08EB382D69 * v9;
      if (v10 >= *&v11)
      {
        v13 = v10 % *&v11;
      }
    }

    v14 = *(a1[27] + 8 * v13);
    if (v14)
    {
      v15 = *v14;
      if (v15)
      {
        if (v12.u32[0] >= 2uLL)
        {
          while (1)
          {
            v34 = v15[1];
            if (v34 == v10)
            {
              if (v15[2] == a2)
              {
LABEL_55:
                v38 = v15[3];
                a1[1] = v38;
                v5 = &a1[3 * v38 + 3];
LABEL_56:
                *(v5 + 16) = -1;
                return v5 + 8;
              }
            }

            else
            {
              if (v34 >= *&v11)
              {
                v34 %= *&v11;
              }

              if (v34 != v13)
              {
                goto LABEL_16;
              }
            }

            v15 = *v15;
            if (!v15)
            {
              goto LABEL_16;
            }
          }
        }

        v16 = *&v11 - 1;
        do
        {
          v17 = v15[1];
          if (v17 == v10)
          {
            if (v15[2] == a2)
            {
              goto LABEL_55;
            }
          }

          else if ((v17 & v16) != v13)
          {
            break;
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

LABEL_16:
  v18 = a1[2];
  v19 = a1 + 3;
  if (*a1 == 8)
  {
    v20 = -1;
    v21 = a1[2];
    v22 = v21;
    while (1)
    {
      v23 = &v19[3 * v21];
      v24 = *(v23 + 8);
      *(v23 + 8) >>= 1;
      if (v24 < 2)
      {
        break;
      }

      if (v24 >> 1 < v20)
      {
        v20 = v24 >> 1;
        v22 = v21;
      }

      v21 = (v21 + 1) & 7;
      a1[2] = v21;
      if (v21 == v18)
      {
        a1[2] = v22;
        v23 = &v19[3 * v22];
        break;
      }
    }

    sub_298C089BC(a1 + 27, *v23);
    --*a1;
    v18 = a1[2];
  }

  v25 = &v19[3 * v18];
  *v25 = a2;
  v27 = (v25 + 1);
  v26 = v25[1];
  v25[1] = 0;
  if (v26)
  {
    sub_298AEA480(v27, v26);
    v18 = a1[2];
  }

  *(v25 + 8) = -1;
  v28 = a1[28];
  if (!*&v28)
  {
    goto LABEL_52;
  }

  v29 = vcnt_s8(v28);
  v29.i16[0] = vaddlv_u8(v29);
  if (v29.u32[0] <= 1uLL)
  {
    v30 = (*&v28 - 1) & v10;
  }

  else
  {
    v30 = v10;
    if (v10 >= *&v28)
    {
      v30 = v10 % *&v28;
    }
  }

  v31 = *(a1[27] + 8 * v30);
  if (!v31 || (v32 = *v31) == 0)
  {
LABEL_52:
    operator new();
  }

  if (v29.u32[0] < 2uLL)
  {
    do
    {
      v33 = v32[1];
      if (v33 == v10)
      {
        if (v32[2] == a2)
        {
          goto LABEL_53;
        }
      }

      else if ((v33 & (*&v28 - 1)) != v30)
      {
        goto LABEL_52;
      }

      v32 = *v32;
    }

    while (v32);
    goto LABEL_52;
  }

  while (1)
  {
    v35 = v32[1];
    if (v35 == v10)
    {
      break;
    }

    if (v35 >= *&v28)
    {
      v35 %= *&v28;
    }

    if (v35 != v30)
    {
      goto LABEL_52;
    }

LABEL_47:
    v32 = *v32;
    if (!v32)
    {
      goto LABEL_52;
    }
  }

  if (v32[2] != a2)
  {
    goto LABEL_47;
  }

LABEL_53:
  v32[3] = v18;
  v36 = a1[2];
  ++*a1;
  a1[1] = v36;
  a1[2] = (v36 + 1) & 7;
  return v27;
}

uint64_t sub_298BFDFE0(uint64_t result)
{
  v1 = *(result + 56);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (*(result + 29) != 1 || (*(result + 35) & 1) != 0 || (*(result + 34) & 1) != 0)
  {
    v3 = (result + 448);
  }

  else
  {
    if (*(v1 + 672) != 1)
    {
      v4 = 0;
      goto LABEL_6;
    }

    v3 = (*(v1 + 656) + 40);
  }

  v4 = *v3;
LABEL_6:
  v5 = *(result + 720);
  if (!v5 || *v5 != v4)
  {
    result = sub_298BFD9C8((result + 456), v4);
    if (!*result)
    {
      sub_298BFDED4();
    }

    *(v2 + 720) = *result;
  }

  return result;
}

uint64_t sub_298BFE0BC(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  result = sub_298BFA54C(*(a1 + 8), a2, a3, a4, a5);
  if ((result & 1) == 0 && a3 >= 0x1D)
  {
    v9 = *a2 == 0x2D62363120212023 && a2[1] == 0x6E616C73692D7262;
    v10 = v9 && a2[2] == 0x612D627574732D64;
    if (v10 && *(a2 + 21) == 0x7830203A74612D62)
    {
      v12 = a3 - 29;
      if (a3 != 29)
      {
        v13 = 0;
        v14 = a2 + 29;
        v15 = v12;
        do
        {
          if (*v14 < 48)
          {
            break;
          }

          v16 = *v14;
          if (v16 >= 0x3A)
          {
            if (v16 < 0x61)
            {
              if (v16 - 65 > 0x19)
              {
                break;
              }

              v17 = -55;
            }

            else
            {
              if (v16 >= 0x7B)
              {
                break;
              }

              v17 = -87;
            }
          }

          else
          {
            v17 = -48;
          }

          v18 = v17 + v16;
          if (v18 > 0xF)
          {
            break;
          }

          if (v13 >> 60)
          {
            return result;
          }

          v13 = v18 | (16 * v13);
          ++v14;
          --v15;
        }

        while (v15);
        if (v13 && v12 != v15)
        {
          v19 = result;
          v20 = *(a1 + 56);
          v20[1] = 0;
          LOBYTE(v24) = 0;
          sub_298ADC1D4((v20 + 72), v13, v13 + 16, &v24, &v23);
          v21 = v23;
          if (v23 || (sub_298BDB5B8(v20 + 16, v13, v13 + 16, &v23), (v21 = v23) != 0))
          {
            v23 = 0;
            v24 = v21;
            sub_298B06434(&v24, &unk_298EAE23E, 0);
            sub_298AF1D58(&v24);
            exit(1);
          }

          v20[648] = 0;
          sub_298BD9C20(*(a1 + 56), &v22);
          if (v22)
          {
            v24 = v22;
            v22 = 0;
            sub_298B06434(&v24, "branch island overlap", 0x15uLL);
            sub_298AF1D58(&v24);
            exit(1);
          }

          return v19;
        }
      }
    }
  }

  return result;
}

uint64_t sub_298BFE2C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(result + 4);
  if ((*(a2 + 3) | (2 * *(a2 + 2))) == v9)
  {
    v44 = v7;
    v45 = v8;
    *(&v42 + 1) = v9;
    v43 = v4;
    v41 = v5;
    *&v42 = v6;
    result = MEMORY[0x2A1C7C4A8](result, a2, a3, a4);
    v11 = *(result + 344) + 770048;
    if (*(*(result + 344) + 770232))
    {
      v12 = *(*(result + 344) + 770224);
      v13 = *(v10 + 8);
      if (v12 <= v13)
      {
        *(*(result + 344) + 770232) = 0;
        v12 = v13;
      }
    }

    else
    {
      v12 = *(v10 + 8);
    }

    *(v11 + 192) = v12;
    if (*(result + 56))
    {
      v14 = *(result + 720);
      v15 = v14 + 155768;
      v16 = *(v14 + 155840);
      if (v16)
      {
        v17 = *(v14 + 155832);
        if (*v17 <= v12)
        {
          v18 = (v14 + 131128);
          v19 = 8 * v16;
          v20 = &v17[v16];
          while (*v17 <= v12)
          {
            ++v17;
            v19 -= 8;
            if (!v19)
            {
              v17 = v20;
              break;
            }
          }

          *(v14 + 155832) = v17;
          *(v14 + 155840) = v20 - v17;
          bzero(v39, 0x20040uLL);
          for (i = 24; i != 131096; i += 32)
          {
            v22 = &v39[i];
            *v22 = 0;
            *(v22 + 1) = 0;
            *(v22 + 12) = 0;
            *(v22 + 2) = 0;
          }

          v42 = 0u;
          LODWORD(v43) = 1065353216;
          memcpy((v14 + 32), v39, 0x20018uLL);
          if (*(v14 + 131152))
          {
            v23 = *(v14 + 131144);
            if (v23)
            {
              do
              {
                v24 = *v23;
                operator delete(v23);
                v23 = v24;
              }

              while (v24);
            }

            *(v14 + 131144) = 0;
            v25 = *(v14 + 131136);
            if (v25)
            {
              for (j = 0; j != v25; ++j)
              {
                *(*v18 + j) = 0;
              }
            }

            *(v14 + 131152) = 0;
          }

          v40 = 0;
          v27 = *v18;
          *v18 = 0;
          if (v27)
          {
            operator delete(v27);
          }

          *(v14 + 131136) = 0;
          *(v14 + 131144) = 0;
          v41 = 0;
          *(v14 + 131152) = 0;
          *(v14 + 131160) = 1065353216;
          sub_298C05284(v39);
          bzero(v39, 0x6040uLL);
          for (k = 0; k != 24576; k += 24)
          {
            v29 = &v39[k];
            *(v29 + 21) = 0;
            *(v29 + 3) = 0;
            *(v29 + 4) = 0;
            v29[40] = 0;
          }

          memset(&v39[24600], 0, 32);
          *&v39[24632] = 1065353216;
          *(v14 + 131168) = *v39;
          *(v14 + 131184) = *&v39[16];
          v30 = &v39[40];
          v31 = (v14 + 131208);
          v32 = 1024;
          do
          {
            *(v31 - 1) = *(v30 - 1);
            v33 = *v30;
            v30 += 6;
            *v31 = v33;
            v31 += 6;
            --v32;
          }

          while (v32);
          if (*(v14 + 155792))
          {
            v34 = *(v14 + 155784);
            if (v34)
            {
              do
              {
                v35 = *v34;
                operator delete(v34);
                v34 = v35;
              }

              while (v35);
            }

            *(v15 + 16) = 0;
            v36 = *(v15 + 8);
            if (v36)
            {
              for (m = 0; m != v36; ++m)
              {
                *(*v15 + 8 * m) = 0;
              }
            }

            *(v15 + 24) = 0;
          }

          *&v39[24600] = 0;
          v38 = *v15;
          *v15 = 0;
          if (v38)
          {
            operator delete(v38);
          }

          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *&v39[24608] = 0;
          *(v15 + 24) = 0;
          *(v15 + 32) = 1065353216;
          return sub_298C05354(v39);
        }
      }
    }
  }

  return result;
}

void sub_298BFE5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4);
  v15 = *(v4 + 344) + 770048;
  if ((*(v5 + 3) | (2 * *(v5 + 2))) == *(v4 + 4))
  {
    if (*(*(v4 + 344) + 770232))
    {
      v16 = *(*(v4 + 344) + 770224);
      v121 = *(v5 + 8);
      if (v16 <= v121)
      {
        *(*(v4 + 344) + 770232) = 0;
        v16 = v121;
      }
    }

    else
    {
      v16 = *(v5 + 8);
    }

    *(v15 + 192) = v16;
    if (*(v4 + 56))
    {
      v17 = *(v4 + 720);
      v18 = v17[19480];
      if (v18)
      {
        v19 = v17[19479];
        if (*v19 <= v16)
        {
          v20 = 8 * v18;
          v21 = &v19[v18];
          while (*v19 <= v16)
          {
            ++v19;
            v20 -= 8;
            if (!v20)
            {
              v22 = v6;
              v23 = v5;
              v24 = v4;
              v19 = v21;
              goto LABEL_12;
            }
          }

          v22 = v6;
          v23 = v5;
          v24 = v4;
LABEL_12:
          v17[19479] = v19;
          v17[19480] = v21 - v19;
          bzero(v123, 0x20040uLL);
          for (i = 24; i != 131096; i += 32)
          {
            v26 = &v123[i];
            *v26 = 0;
            *(v26 + 1) = 0;
            *(v26 + 12) = 0;
            *(v26 + 2) = 0;
          }

          memset(v124, 0, sizeof(v124));
          v125 = 1065353216;
          memcpy(v17 + 4, v123, 0x20018uLL);
          sub_298C05190((v17 + 16391), v124);
          sub_298C05284(v123);
          bzero(v123, 0x6040uLL);
          for (j = 0; j != 24576; j += 24)
          {
            v28 = &v123[j];
            *(v28 + 21) = 0;
            *(v28 + 3) = 0;
            *(v28 + 4) = 0;
            v28[40] = 0;
          }

          memset(&v123[24600], 0, 32);
          *&v123[24632] = 1065353216;
          sub_298C052E0((v17 + 16396), v123);
          sub_298C05354(v123);
          v4 = v24;
          v5 = v23;
          v6 = v22;
        }
      }
    }
  }

  v29 = *v6;
  if (*v6 != 12)
  {
    if (v29 != 8)
    {
      if (v29 == 16)
      {
        v122 = *(v6 + 8);

        sub_298BFF5E8(v4, v5, v122, v7);
      }

      else if (*(v4 + 64) == 1)
      {

        sub_298BFF66C(v4, v5, v6);
      }

      else if (v29 <= 5)
      {
        if (v29 > 1)
        {
          if (v29 == 2)
          {

            sub_298C01E2C(v4, v5, v6);
          }

          else if (v29 == 5)
          {

            sub_298C02310(v4, v5, v6);
          }
        }

        else if (v29)
        {
          if (v29 == 1)
          {
            v109 = *(v6 + 10);
            v110 = *(v6 + 8);

            sub_298C00028(v4, v5, v110, v109);
          }
        }

        else
        {

          sub_298BFFB28(v4, v5, v6);
        }
      }

      else if (v29 <= 9)
      {
        if (v29 == 6)
        {
          v115 = v6;
          v116 = *(v6 + 16);
          v117 = *(v115 + 24);

          sub_298C02614(v4, v5, v116, v117);
        }

        else if (v29 == 7)
        {
          v111 = v6;
          v112 = *(v6 + 16);
          v113 = *(v111 + 24);

          sub_298C027B8(v4, v5, v112, v113, v8, v9, v10, v11, v12, v13, v14);
        }
      }

      else
      {
        switch(v29)
        {
          case 10:
            v114 = *(v6 + 8);

            sub_298C02A2C(v4, v114);
            break;
          case 11:
            v118 = v6;
            v119 = *(v6 + 16);
            v120 = *(v118 + 8);

            sub_298C02BD0(v4, v120, v119);
            break;
          case 17:

            sub_298C02CE4(v4);
            break;
        }
      }

      return;
    }

    v75 = *(v6 + 24);
    if (!v75)
    {
      v90 = 0;
      goto LABEL_98;
    }

    v76 = *(v6 + 16);
    if (v75 < 8)
    {
      v78 = 0;
      v77 = 0;
      v79 = 0;
    }

    else
    {
      v77 = 0;
      v78 = 0;
      if (v75)
      {
        v79 = 0;
        if (!((v75 - 1) >> 32))
        {
          v78 = v75 & 0x1FFFFFFF8;
          v80 = (v75 & 0x1FFFFFFF8) - 24;
          if ((v75 & 0x1FFFFFFF8) <= 0x18 && ((1 << v78) & 0x1010100) != 0)
          {
            v81 = vmovl_u16(*v76);
            v82.i64[0] = v81.u32[0];
            v82.i64[1] = v81.u32[1];
            v83 = v82;
            v82.i64[0] = v81.u32[2];
            v82.i64[1] = v81.u32[3];
            v8 = vshlq_u64(v82, xmmword_298D1B3A0);
            v9 = vshlq_u64(v83, xmmword_298D1ABD0);
          }

          else
          {
            v92 = &v76[6];
            v93 = xmmword_298D1B3B0;
            v94 = xmmword_298D1B3C0;
            v95.i64[0] = 0x800000008;
            v95.i64[1] = 0x800000008;
            do
            {
              v96 = *v92++;
              v97 = vmovl_high_u16(v96);
              v98.i64[0] = v97.u32[2];
              v98.i64[1] = v97.u32[3];
              v99 = v98;
              v98.i64[0] = v97.u32[0];
              v98.i64[1] = v97.u32[1];
              v100 = v98;
              v101 = vmovl_u16(*v96.i8);
              v98.i64[0] = v101.u32[2];
              v98.i64[1] = v101.u32[3];
              v102 = v98;
              v98.i64[0] = v101.u32[0];
              v98.i64[1] = v101.u32[1];
              v103 = v98;
              v104 = vshlq_n_s32(v94, 4uLL);
              v105 = vshlq_n_s32(v93, 4uLL);
              v98.i64[0] = v105.u32[2];
              v98.i64[1] = v105.u32[3];
              v106 = v98;
              v98.i64[0] = v105.u32[0];
              v98.i64[1] = v105.u32[1];
              v107 = v98;
              v98.i64[0] = v104.u32[2];
              v98.i64[1] = v104.u32[3];
              v108 = v98;
              v98.i64[0] = v104.u32[0];
              v98.i64[1] = v104.u32[1];
              v14 = vorrq_s8(vshlq_u64(v99, v106), v14);
              v12 = vorrq_s8(vshlq_u64(v100, v107), v12);
              v8 = vorrq_s8(vshlq_u64(v102, v108), v8);
              v9 = vorrq_s8(vshlq_u64(v103, v98), v9);
              v94 = vaddq_s32(v94, v95);
              v93 = vaddq_s32(v93, v95);
              v80 -= 8;
            }

            while (v80);
          }

          v84 = vorrq_s8(vorrq_s8(v9, v12), vorrq_s8(v8, v14));
          v79 = vorr_s8(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
          if (v75 == v78)
          {
LABEL_97:
            v90 = v79.u32[0];
LABEL_98:
            v91 = (*(v15 + 160) == 4) & HIBYTE(*(v15 + 160));

            sub_298BFF0D4(v4, v5, v90, 1, v91);
            return;
          }

          v77 = v75 & 0xFFFFFFF8;
        }
      }

      else
      {
        v79 = 0;
      }
    }

    v85 = v76->u16[v78];
    v86 = 16 * v77;
    *&v79 |= v85 << (16 * v77);
    if (v75 > (v77 + 1))
    {
      *&v79 |= v76->u16[v77 + 1] << (16 * (v77 + 1));
      if (v75 > (v77 + 2))
      {
        *&v79 |= v76->u16[v77 + 2] << (16 * (v77 + 2));
        if (v75 > (v77 + 3))
        {
          *&v79 |= v76->u16[v77 + 3] << (16 * (v77 + 3));
          if (v75 > (v77 + 4))
          {
            *&v79 |= v76->u16[v77 + 4] << (16 * (v77 + 4));
            v87 = (v77 + 5);
            if (v75 > v87)
            {
              v88 = v77 + 6;
              v89 = v86 + 80;
              do
              {
                *&v79 |= v76->u16[v87] << v89;
                v87 = v88++;
                v89 += 16;
              }

              while (v75 > v87);
            }
          }
        }
      }
    }

    goto LABEL_97;
  }

  v30 = *(v5 + 40);
  *(v4 + 256) = v30;
  v31 = *(v6 + 8);
  if ((v31 & 1) == 0)
  {
    if (*(v4 + 272) == 1)
    {
      v32 = *(v4 + 280);
      v33 = *(v4 + 264);
      if (v32 < (BYTE3(v33) & 0x3F))
      {
        *(v4 + 280) = v32 + 1;
        v34 = (v33 >> 30 >> v32) & 1 | v31;
        switch(v32)
        {
          case 2:
            v67 = *(*(v4 + 344) + 8);
            if ((*(v67 + 64) & 1) == 0)
            {
              v68 = *(v4 + 16);
              if (v68)
              {
                v69 = *(v68 + 48);
                if (!v69)
                {
                  goto LABEL_71;
                }

                v70 = v68 + 48;
                do
                {
                  v71 = *(v69 + 32);
                  v55 = v71 >= v34;
                  v72 = v71 < v34;
                  if (v55)
                  {
                    v70 = v69;
                  }

                  v69 = *(v69 + 8 * v72);
                }

                while (v69);
                if (v70 != v68 + 48 && *(v70 + 32) <= v34)
                {
                  v73 = (v70 + 40);
                }

                else
                {
LABEL_71:
                  v73 = (v68 + 64);
                }

                v74 = *v73;
              }

              else
              {
                v74 = -1;
              }

              *(v67 + 48) = v74;
              *(v67 + 56) = v34;
              *(v67 + 64) = 1;
            }

            break;
          case 1:
            v66 = *(*(v4 + 344) + 770192);
            if (v66)
            {
              *(v66 + 48) = v34;
            }

            break;
          case 0:
            v35 = *(v4 + 344) + 770048;
            v36 = *(*(v4 + 344) + 770192);
            if (v36)
            {
              if ((*v36 != -1 || v36[1] != -1 || v36[5] != -1 || v36[6] != -1) && v36[5] == -1)
              {
                v36[5] = v34;
                if (*(v35 + 192) < v34)
                {
                  *(v35 + 176) = v34;
                  *(v35 + 184) = 1;
                  v37 = v4;
                  sub_298BFE2C8(v4, v5, v6, v7);
                  v4 = v37;
                }
              }
            }

            break;
        }
      }

      if (*(v4 + 280) >= (*(v4 + 267) & 0x3F))
      {
        *(v4 + 280) = 0;
        if (*(v4 + 272) == 1)
        {
          *(v4 + 272) = 0;
        }
      }

      return;
    }

    goto LABEL_40;
  }

  *(v4 + 280) = 0;
  if ((v31 & 0xFFFF00) != 0)
  {
    if (*(v4 + 272) == 1)
    {
      *(v4 + 272) = 0;
    }

    v38 = *(v4 + 344);
    v39 = (v38 + 96275);
    v40 = v38 + 88075;
    v41 = v38[1];
    v42 = v38[88077];
    if (v42 + v41[2] && **v39 >= v30)
    {
      goto LABEL_40;
    }

    v43 = v38 + 75787;
    if (v42 == 4096)
    {
      *v39 = 0;
      v44 = 4096;
    }

    else
    {
      v62 = v38[96280];
      v63 = v41[1] + v38[6148];
      v64 = v40[1];
      v65 = &v43[3 * (v64 & 0xFFF)];
      *v65 = v30;
      v65[1] = v63;
      v65[2] = v62;
      v44 = v42 + 1;
      v40[1] = v64 + 1;
      v40[2] = v42 + 1;
      *v39 = v65;
      if ((v42 + 1) < 0x841)
      {
LABEL_40:
        v49 = *(v4 + 344);
        v50 = v49 + 96270;
        v51 = v49[1];
        v52 = v49 + 88078;
        v53 = v49[96272];
        if (v53 == 4096)
        {
          goto LABEL_44;
        }

        v54 = v51[2] + v49[88077];
        v55 = v54 != 0;
        v56 = v54 - 1;
        if (!v55)
        {
          v56 = 0;
        }

        v57 = v50[1];
        v58 = &v52[2 * (v57 & 0xFFF)];
        *v58 = v56;
        v58[1] = v31;
        ++v53;
        v50[1] = v57 + 1;
        v50[2] = v53;
        if (v53 >= 0x841)
        {
LABEL_44:
          v59 = *v50;
          if ((4096 - *v50) >= 0x800)
          {
            v60 = 2048;
          }

          else
          {
            v60 = 4096 - *v50;
          }

          v50[2] = v53 - v60;
          *v50 = (v60 + v59) & 0xFFF;
          v61 = *(*v51 + 104);

          v61();
        }

        return;
      }
    }

    v45 = *v40;
    v46 = &v43[3 * *v40];
    if ((4096 - *v40) >= 0x800)
    {
      v47 = 2048;
    }

    else
    {
      v47 = 4096 - *v40;
    }

    v40[2] = v44 - v47;
    *v40 = (v47 + v45) & 0xFFF;
    v48 = v4;
    (*(*v41 + 80))(v41, v46);
    v4 = v48;
    goto LABEL_40;
  }

  if ((*(v4 + 272) & 1) == 0)
  {
    *(v4 + 272) = 1;
  }

  *(v4 + 264) = v31;
}

void *sub_298BFF0D4(void *result, uint64_t a2, unint64_t a3, char a4, char a5)
{
  v5 = a4;
  v8 = result;
  if (*(result + 29) == 1 && (a4 & 1) != 0)
  {
    if (!a3)
    {
      return result;
    }

    if (a3 == 0xFFFFFFFF)
    {
      v9 = a5;
      v10 = *(result[43] + 770184);
      if (v10)
      {
        *(v10 + 8) = *(v10 + 8) & 0xFC3FFFFF | 0x800000;
        if (!(*v10 >> 47))
        {
          *v10 |= 0x800000000000uLL;
        }
      }

      v11 = result[9];
      sub_298BFC490((result + 8));
      v5 = 0;
      *(v8 + 72) = v11;
      a5 = v9;
    }
  }

  if ((a5 & 1) == 0)
  {
    *(v8 + 304) = a3;
    *(v8 + 312) = v5;
  }

  v12 = *(v8 + 16);
  if (v12 && (v5 & 1) != 0)
  {
    v13 = v12[1];
    if (v13)
    {
      v14 = vcnt_s8(v13);
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] <= 1uLL)
      {
        v15 = (*&v13 - 1) & a3;
        v16 = *(*v12 + 8 * v15);
        if (v16)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = a3;
        if (*&v13 <= a3)
        {
          v15 = a3 % *&v13;
        }

        v16 = *(*v12 + 8 * v15);
        if (v16)
        {
LABEL_18:
          v17 = *v16;
          if (v17)
          {
            if (v14.u32[0] < 2uLL)
            {
              v18 = *&v13 - 1;
              while (1)
              {
                v58 = v17[1];
                if (v58 == a3)
                {
                  if (v17[2] == a3)
                  {
                    goto LABEL_109;
                  }
                }

                else if ((v58 & v18) != v15)
                {
                  goto LABEL_28;
                }

                v17 = *v17;
                if (!v17)
                {
                  goto LABEL_28;
                }
              }
            }

            do
            {
              v20 = v17[1];
              if (v20 == a3)
              {
                if (v17[2] == a3)
                {
LABEL_109:
                  v19 = 0;
                  goto LABEL_29;
                }
              }

              else
              {
                if (v20 >= *&v13)
                {
                  v20 %= *&v13;
                }

                if (v20 != v15)
                {
                  break;
                }
              }

              v17 = *v17;
            }

            while (v17);
          }
        }
      }
    }

LABEL_28:
    v19 = v12[9].i8[0] ^ 1;
    goto LABEL_29;
  }

  v19 = 1;
LABEL_29:
  *(v8 + 284) = v19 & 1;
  result = sub_298BFDFE0(v8);
  *(v8 + 288) = a3;
  *(v8 + 296) = v5;
  if (*(v8 + 29) == 1 && (*(v8 + 35) & 1) == 0 && *(v8 + 34) != 1 || !*(v8 + 16) || (*(v8 + 284) & 1) == 0) && (v5)
  {
    v21 = *(v8 + 16);
    if (!v21)
    {
      goto LABEL_72;
    }

    v22 = *(v8 + 16);
    v23 = v21[1];
    if (v23)
    {
      v24 = vcnt_s8(v23);
      v24.i16[0] = vaddlv_u8(v24);
      if (v24.u32[0] <= 1uLL)
      {
        v25 = (*&v23 - 1) & a3;
        v26 = *(*v21 + 8 * v25);
        if (!v26)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v25 = a3;
        if (*&v23 <= a3)
        {
          v25 = a3 % *&v23;
        }

        v26 = *(*v21 + 8 * v25);
        if (!v26)
        {
          goto LABEL_50;
        }
      }

      v27 = *v26;
      if (v27)
      {
        if (v24.u32[0] < 2uLL)
        {
          v28 = *&v23 - 1;
          while (1)
          {
            v59 = v27[1];
            if (v59 == a3)
            {
              if (v27[2] == a3)
              {
                goto LABEL_51;
              }
            }

            else if ((v59 & v28) != v25)
            {
              goto LABEL_50;
            }

            v27 = *v27;
            if (!v27)
            {
              goto LABEL_50;
            }
          }
        }

        do
        {
          v29 = v27[1];
          if (v29 == a3)
          {
            if (v27[2] == a3)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v29 >= *&v23)
            {
              v29 %= *&v23;
            }

            if (v29 != v25)
            {
              break;
            }
          }

          v27 = *v27;
        }

        while (v27);
      }
    }

LABEL_50:
    if (v21[9].i8[0] != 1)
    {
      v42 = *(v8 + 448);
      goto LABEL_71;
    }

LABEL_51:
    v30 = *(v8 + 56);
    v31 = v21[6];
    if (!*&v31)
    {
      goto LABEL_59;
    }

    v32 = v21 + 6;
    do
    {
      v33 = *(*&v31 + 32);
      v34 = v33 >= a3;
      v35 = v33 < a3;
      if (v34)
      {
        v32 = v31;
      }

      v31 = *(*&v31 + 8 * v35);
    }

    while (v31);
    if (v32 != &v21[6] && *&v32[4] <= a3)
    {
      v36 = v32 + 5;
      v37 = *(v30 + 664);
      if (!v37)
      {
        goto LABEL_70;
      }
    }

    else
    {
LABEL_59:
      v36 = v21 + 8;
      v37 = *(v30 + 664);
      if (!v37)
      {
        goto LABEL_70;
      }
    }

    v38 = *v36;
    v39 = v30 + 664;
    do
    {
      v40 = *(v37 + 32);
      v34 = v40 >= *&v38;
      v41 = v40 < *&v38;
      if (v34)
      {
        v39 = v37;
      }

      v37 = *(v37 + 8 * v41);
    }

    while (v37);
    if (v39 != v30 + 664 && *&v38 >= *(v39 + 32))
    {
      v42 = *(v39 + 40);
LABEL_71:
      result = sub_298BFD95C(v8, v42);
      *(v8 + 720) = result;
LABEL_72:
      if (*(v8 + 25))
      {
        return result;
      }

      v43 = *(v8 + 16);
      if (!v43)
      {
        goto LABEL_100;
      }

      v44 = *(v8 + 16);
      v45 = *(v43 + 8);
      if (v45)
      {
        v46 = vcnt_s8(v45);
        v46.i16[0] = vaddlv_u8(v46);
        if (v46.u32[0] <= 1uLL)
        {
          v47 = (*&v45 - 1) & a3;
          v48 = *(*v43 + 8 * v47);
          if (!v48)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v47 = a3;
          if (*&v45 <= a3)
          {
            v47 = a3 % *&v45;
          }

          v48 = *(*v43 + 8 * v47);
          if (!v48)
          {
            goto LABEL_89;
          }
        }

        v49 = *v48;
        if (v49)
        {
          if (v46.u32[0] < 2uLL)
          {
            v50 = *&v45 - 1;
            while (1)
            {
              v60 = v49[1];
              if (v60 == a3)
              {
                if (v49[2] == a3)
                {
                  goto LABEL_90;
                }
              }

              else if ((v60 & v50) != v47)
              {
                goto LABEL_89;
              }

              v49 = *v49;
              if (!v49)
              {
                goto LABEL_89;
              }
            }
          }

          do
          {
            v51 = v49[1];
            if (v51 == a3)
            {
              if (v49[2] == a3)
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (v51 >= *&v45)
              {
                v51 %= *&v45;
              }

              if (v51 != v47)
              {
                break;
              }
            }

            v49 = *v49;
          }

          while (v49);
        }
      }

LABEL_89:
      if (*(v43 + 72) == 1)
      {
LABEL_90:
        v52 = *(v43 + 48);
        if (!v52)
        {
          goto LABEL_98;
        }

        v53 = v43 + 48;
        do
        {
          v54 = *(v52 + 32);
          v34 = v54 >= a3;
          v55 = v54 < a3;
          if (v34)
          {
            v53 = v52;
          }

          v52 = *(v52 + 8 * v55);
        }

        while (v52);
        if (v53 != v43 + 48 && *(v53 + 32) <= a3)
        {
          v56 = (v53 + 40);
        }

        else
        {
LABEL_98:
          v56 = (v43 + 64);
        }

        v57 = *v56;
        goto LABEL_101;
      }

LABEL_100:
      v57 = -1;
LABEL_101:

      return sub_298C04710(v8, a2, v57, a3);
    }

LABEL_70:
    v42 = v30 + 8;
    goto LABEL_71;
  }

  return result;
}

uint64_t sub_298BFF5E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 344) + 770048;
  v5 = *(*(result + 344) + 770192);
  if (v5 && (*v5 != -1 || v5[1] != -1 || v5[5] != -1 || v5[6] != -1) && v5[5] == -1)
  {
    v6 = vcvtad_u64_f64(a3 / 41.6666667);
    v5[5] = v6;
    if (*(v4 + 192) < v6)
    {
      *(v4 + 176) = v6;
      *(v4 + 184) = 1;
      return sub_298BFE2C8(result, a2, a3, a4);
    }
  }

  return result;
}

void sub_298BFF66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  if (*a3 > 6)
  {
    if ((v3 - 9) < 8)
    {
      return;
    }

    if (v3 != 7)
    {
      if (v3 == 18)
      {
        return;
      }

      goto LABEL_40;
    }

    if (*(a1 + 29) != 1 || (*(a1 + 35) & 1) != 0 || *(a1 + 34) == 1) && *(a1 + 16) && (*(a1 + 284))
    {
      return;
    }

    v34 = *(a3 + 24);
    if (!v34)
    {
      goto LABEL_58;
    }

    if (v34 < 8)
    {
      v36 = 0;
      v35 = 0;
      v37 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      if (v34)
      {
        v37 = 0;
        if (!((v34 - 1) >> 32))
        {
          v36 = v34 & 0x1FFFFFFF8;
          v38 = xmmword_298D1A0A0;
          v39 = xmmword_298D1A0B0;
          v35 = v34 & 0xFFFFFFF8;
          v40 = 0uLL;
          v41.i64[0] = 0x800000008;
          v41.i64[1] = 0x800000008;
          v42 = v34 & 0x1FFFFFFF8;
          v43 = *(a3 + 16);
          v44 = 0uLL;
          v45 = 0uLL;
          v46 = 0uLL;
          do
          {
            v47 = *v43++;
            v48 = vmovl_high_u16(v47);
            v49.i64[0] = v48.u32[2];
            v49.i64[1] = v48.u32[3];
            v50 = v49;
            v49.i64[0] = v48.u32[0];
            v49.i64[1] = v48.u32[1];
            v51 = v49;
            v52 = vmovl_u16(*v47.i8);
            v49.i64[0] = v52.u32[2];
            v49.i64[1] = v52.u32[3];
            v53 = v49;
            v49.i64[0] = v52.u32[0];
            v49.i64[1] = v52.u32[1];
            v54 = v49;
            v55 = vshlq_n_s32(v39, 4uLL);
            v56 = vshlq_n_s32(v38, 4uLL);
            v49.i64[0] = v56.u32[2];
            v49.i64[1] = v56.u32[3];
            v57 = v49;
            v49.i64[0] = v56.u32[0];
            v49.i64[1] = v56.u32[1];
            v58 = v49;
            v49.i64[0] = v55.u32[2];
            v49.i64[1] = v55.u32[3];
            v59 = v49;
            v49.i64[0] = v55.u32[0];
            v49.i64[1] = v55.u32[1];
            v46 = vorrq_s8(vshlq_u64(v50, v57), v46);
            v45 = vorrq_s8(vshlq_u64(v51, v58), v45);
            v44 = vorrq_s8(vshlq_u64(v53, v59), v44);
            v40 = vorrq_s8(vshlq_u64(v54, v49), v40);
            v39 = vaddq_s32(v39, v41);
            v38 = vaddq_s32(v38, v41);
            v42 -= 8;
          }

          while (v42);
          v60 = vorrq_s8(vorrq_s8(v40, v45), vorrq_s8(v44, v46));
          v37 = vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
          if (v34 == v36)
          {
LABEL_56:
            v34 = (*&v37 << 16) >> 16;
            if ((v37.i8[0] & 3) != 0)
            {
              v34 &= 0xFFFFFFFFFFFFFFFCLL;
              ++*(a1 + 400);
            }

LABEL_58:
            *(a1 + 120) = v34;
            if (*(a1 + 112) != 1 || *(a1 + 107) != 1 || v34 == 1 || *(a1 + 161) != 1)
            {
              return;
            }

LABEL_62:

            sub_298C049DC(a1, a2);
            return;
          }
        }
      }

      else
      {
        v37 = 0;
      }
    }

    v61 = v35 + 1;
    v62 = 16 * v35;
    do
    {
      *&v37 |= *(*(a3 + 16) + 2 * v36) << v62;
      v36 = v61++;
      v62 += 16;
    }

    while (v34 > v36);
    goto LABEL_56;
  }

  if (v3 > 2)
  {
    if ((v3 - 3) < 2)
    {
      return;
    }

    if (v3 == 5)
    {

      sub_298C02310(a1, a2, a3);
      return;
    }

    if (v3 != 6)
    {
      goto LABEL_40;
    }

    if (*(a1 + 29) != 1 || (*(a1 + 35) & 1) != 0 || *(a1 + 34) == 1) && *(a1 + 16) && (*(a1 + 284))
    {
      return;
    }

    v4 = *(a3 + 24);
    if (!v4)
    {
      *(a1 + 160) = 256;
      if (*(a1 + 112) != 1)
      {
        return;
      }

      goto LABEL_23;
    }

    if (v4 < 8)
    {
      v6 = 0;
      v5 = 0;
      v7 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      if (v4)
      {
        v7 = 0;
        if (!((v4 - 1) >> 32))
        {
          v6 = v4 & 0x1FFFFFFF8;
          v8 = xmmword_298D1A0A0;
          v9 = xmmword_298D1A0B0;
          v5 = v4 & 0xFFFFFFF8;
          v10 = 0uLL;
          v11.i64[0] = 0x800000008;
          v11.i64[1] = 0x800000008;
          v12 = v4 & 0x1FFFFFFF8;
          v13 = *(a3 + 16);
          v14 = 0uLL;
          v15 = 0uLL;
          v16 = 0uLL;
          do
          {
            v17 = *v13++;
            v18 = vmovl_high_u16(v17);
            v19.i64[0] = v18.u32[2];
            v19.i64[1] = v18.u32[3];
            v20 = v19;
            v19.i64[0] = v18.u32[0];
            v19.i64[1] = v18.u32[1];
            v21 = v19;
            v22 = vmovl_u16(*v17.i8);
            v19.i64[0] = v22.u32[2];
            v19.i64[1] = v22.u32[3];
            v23 = v19;
            v19.i64[0] = v22.u32[0];
            v19.i64[1] = v22.u32[1];
            v24 = v19;
            v25 = vshlq_n_s32(v9, 4uLL);
            v26 = vshlq_n_s32(v8, 4uLL);
            v19.i64[0] = v26.u32[2];
            v19.i64[1] = v26.u32[3];
            v27 = v19;
            v19.i64[0] = v26.u32[0];
            v19.i64[1] = v26.u32[1];
            v28 = v19;
            v19.i64[0] = v25.u32[2];
            v19.i64[1] = v25.u32[3];
            v29 = v19;
            v19.i64[0] = v25.u32[0];
            v19.i64[1] = v25.u32[1];
            v16 = vorrq_s8(vshlq_u64(v20, v27), v16);
            v15 = vorrq_s8(vshlq_u64(v21, v28), v15);
            v14 = vorrq_s8(vshlq_u64(v23, v29), v14);
            v10 = vorrq_s8(vshlq_u64(v24, v19), v10);
            v9 = vaddq_s32(v9, v11);
            v8 = vaddq_s32(v8, v11);
            v12 -= 8;
          }

          while (v12);
          v30 = vorrq_s8(vorrq_s8(v10, v15), vorrq_s8(v14, v16));
          v7 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
          if (v4 == v6)
          {
LABEL_22:
            *(a1 + 160) = v7.i8[0] & 1 | 0x100;
            if (*(a1 + 112) != 1)
            {
              return;
            }

LABEL_23:
            if (*(a1 + 107) != 1 || *(a1 + 120) == 1)
            {
              return;
            }

            goto LABEL_62;
          }
        }
      }

      else
      {
        v7 = 0;
      }
    }

    v31 = v5 + 1;
    v32 = 16 * v5;
    do
    {
      *&v7 |= *(*(a3 + 16) + 2 * v6) << v32;
      v6 = v31++;
      v32 += 16;
    }

    while (v4 > v6);
    goto LABEL_22;
  }

  if (v3)
  {
    if (v3 == 2)
    {

      sub_298C01E2C(a1, a2, a3);
      return;
    }
  }

  else if (*(a1 + 72) || *(a3 + 24) >= *(a1 + 440))
  {
    v33 = a1;
    sub_298BFFB28(a1, a2, a3);
    a1 = v33;
    if (*(v33 + 64) != 1)
    {
      *(v33 + 84) = 1;
      if (*(v33 + 112) == 1)
      {
        *(v33 + 112) = 0;
      }

      return;
    }
  }

LABEL_40:
  if (*(a1 + 112))
  {
    *(a1 + 112) = 0;
  }

  else if (*(a1 + 120) == 1 && (*(a1 + 161) & 1) == 0)
  {
    return;
  }

  *(a1 + 120) = 1;
  if (*(a1 + 161) == 1)
  {
    *(a1 + 161) = 0;
  }

  *(a1 + 84) = 0;
}

void sub_298BFFB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(a1 + 440);
  if (v6 > v7)
  {
    v8 = &v5[v7];
    v9 = 2 * v6 - 2 * v7;
    while (!*v8)
    {
      ++v8;
      v9 -= 2;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    ++*(a1 + 400);
LABEL_7:
    v6 = v7;
  }

  if (v6)
  {
    v10 = *v5;
    if (v6 != 1)
    {
      v10 |= v5[1] << 16;
      if (v6 >= 3)
      {
        v14 = 3;
        v15 = 32;
        v16 = 2;
        do
        {
          v10 |= v5[v16] << v15;
          v16 = v14++;
          v15 += 16;
        }

        while (v6 > v16);
      }
    }

    v11 = v10 << 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | ((*(a1 + 72) & ~(0xFFFFFFFFFFFFFFFFLL >> ~(16 * v6))) << 15);
  v13 = v12 >> 15;
  if ((v12 & 0x10000) != 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFFCLL;
    ++*(a1 + 400);
  }

  *(a1 + 72) = v13;
  if (*(a1 + 92) == 1)
  {
    *(a1 + 92) = 0;
    return;
  }

  if (*(a1 + 29) == 1 && (*(a1 + 35) & 1) == 0 && *(a1 + 34) != 1 || !*(a1 + 16) || (*(a1 + 284) & 1) == 0)
  {
    if (*(a1 + 86) == 1)
    {
      if (*(a1 + 24) != 1)
      {
        sub_298B868A8("Failed to find exception", 1);
      }

LABEL_61:
      if (*(a1 + 84) == 1)
      {
        ++*(a1 + 416);
      }

      sub_298C031E0(a1);
      return;
    }

    if (*(a1 + 16))
    {
      v17 = *(a1 + 344);
      v18 = v17[96274];
      if (v18)
      {
        v19 = v17[96273];
        if (v19)
        {
          if (*(v18 + 24) == v17[6148] + *(v17[1] + 8))
          {
            v48 = *(v19 + 8);
            if ((v48 & 0x3C00000) != 0x400000)
            {
              *(v19 + 8) = v48 & 0xFC3FFFFF | 0x800000;
              if (!(*v19 >> 47))
              {
                *v19 |= 0x800000000000uLL;
              }

              *(a1 + 85) = 1;
            }
          }
        }
      }
    }

    v20 = *(a1 + 64);
    if (v20 != 1)
    {
      if (v20 == v13)
      {
        if (*(a3 + 8) == 1)
        {
          v47 = **(*(a1 + 344) + 770184);
          if (v13 + 4 == ((v47 << 17) >> 15) + 4 * (v47 >> 47))
          {
            return;
          }
        }

        if ((*(a1 + 85) & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else if (*(a1 + 85) != 1)
      {
        sub_298C032A4(a1, a2, v13);
        v13 = *(a1 + 64);
        if (v13 == 1)
        {
          return;
        }

        goto LABEL_45;
      }
    }

    v21 = *(a1 + 344);
    v22 = (v21 + 770184);
    v23 = (v21 + 704600);
    v24 = (v21 + 49168);
    v25 = *(a2 + 40);
    v26 = *(v21 + 8);
    v27 = *(v21 + 704616);
    if (!(v27 + v26[2]) || **(v21 + 770200) < v25)
    {
      v28 = v21 + 606296;
      if (v27 == 4096)
      {
        *(v21 + 770200) = 0;
      }

      else
      {
        v43 = *(v21 + 770240);
        v44 = v26[1] + *(v21 + 49184);
        v45 = *(v21 + 704608);
        v46 = (v28 + 24 * (v45 & 0xFFF));
        *v46 = v25;
        v46[1] = v44;
        v46[2] = v43;
        ++v27;
        *(v21 + 704608) = v45 + 1;
        *(v21 + 704616) = v27;
        *(v21 + 770200) = v46;
        if (v27 < 0x841)
        {
          goto LABEL_38;
        }
      }

      v29 = *v23;
      v30 = v28 + 24 * *v23;
      if ((4096 - *v23) >= 0x800)
      {
        v31 = 2048;
      }

      else
      {
        v31 = 4096 - *v23;
      }

      *(v21 + 704616) = v27 - v31;
      *v23 = (v31 + v29) & 0xFFF;
      (*(*v26 + 80))(v26, v30);
    }

LABEL_38:
    v32 = v21 + 16;
    v33 = *(v21 + 49184);
    if (v33 == 4096)
    {
      *v22 = 0;
    }

    else
    {
      v38 = *(v21 + 770208);
      v39 = v38 >> 8;
      v40 = (v38 & 7) << 26;
      if ((v39 & 1) == 0)
      {
        v40 = 0;
      }

      v41 = *(v21 + 49176);
      v42 = v32 + 12 * (v41 & 0xFFF);
      *v42 = (v13 >> 2) & 0x7FFFFFFFFFFFLL;
      *(v42 + 8) = v40 | (v39 << 29);
      ++v33;
      *(v21 + 49176) = v41 + 1;
      *(v21 + 49184) = v33;
      *v22 = v42;
      if (v33 < 0x841)
      {
        goto LABEL_44;
      }
    }

    v34 = *(v21 + 8);
    v35 = *v24;
    v36 = v32 + 12 * *v24;
    if ((4096 - *v24) >= 0x800)
    {
      v37 = 2048;
    }

    else
    {
      v37 = 4096 - *v24;
    }

    *(v21 + 49184) = v33 - v37;
    *v24 = (v37 + v35) & 0xFFF;
    (*(*v34 + 72))(v34, v36);
LABEL_44:
    ++**v21;
    *(a1 + 64) = v13;
    *(a1 + 85) = 0;
LABEL_45:
    if (*(a1 + 87) != 1)
    {
      return;
    }

    if (sub_298C03B24(a1, v13))
    {
      sub_298BFC8F4(*(a1 + 344), a2);

      sub_298C03D60(a1, a2);
      return;
    }

    if (*(a1 + 24) != 1)
    {
      sub_298B868A8("Failed to find expected ExceptionRet", 1);
    }

    goto LABEL_61;
  }
}

void sub_298C00028(uint64_t a1, void *a2, unsigned __int8 a3, unint64_t a4)
{
  v306 = *MEMORY[0x29EDCA608];
  if (*(a1 + 85) == 1)
  {
    if (*(a1 + 24) != 1)
    {
      sub_298B868A8("BrMask after indirect branch", 1);
    }
  }

  else
  {
    if ((*(a1 + 93) & 1) == 0)
    {
      v5 = 0;
      v6 = a3;
      v7 = a4;
      v8 = 0x2E8BA2E8BA2E8BA3;
      while (1)
      {
        v9 = v5 + 1;
        v10 = (v5 + 1);
        v11 = *(a1 + 88);
        if (v11 == 2)
        {
          *(a1 + 88) = 0;
          if (v6 == 1 && !a4)
          {
            goto LABEL_118;
          }
        }

        else if (v11 == 1)
        {
          *(a1 + 88) = 0;
          goto LABEL_118;
        }

        if (*(a1 + 29) != 1 || (*(a1 + 35) & 1) != 0 || *(a1 + 34) == 1) && *(a1 + 16) && (*(a1 + 284))
        {
LABEL_141:
          v107 = *MEMORY[0x29EDCA608];
          return;
        }

        v291 = v7;
        v292 = v5 + 1;
        v64 = (1 << v5) & v7;
        __dst = v64 != 0;
        v65 = (a1 + 64);
        v66 = *(a1 + 64);
        v67 = *(a1 + 344);
        v68 = *(a1 + 720);
        v69 = *(v68 + 32);
        v294 = (a1 + 64);
        v293 = v10;
        v289 = v67;
        v290 = v64;
        if (v69)
        {
          v70 = (v68 + 32 * *(v68 + 40));
          v72 = v70[7];
          v71 = v70 + 7;
          if (v72 == v66)
          {
            *(v71 + 12) = -1;
            v45 = v71 + 1;
            goto LABEL_89;
          }
        }

        v96 = *(v68 + 131136);
        if (v96)
        {
          v118 = vcnt_s8(v96);
          v118.i16[0] = vaddlv_u8(v118);
          if (v118.u32[0] <= 1uLL)
          {
            v119 = (*&v96 - 1) & v66;
          }

          else
          {
            v119 = *(a1 + 64);
            if (v66 >= *&v96)
            {
              v119 = v66 % *&v96;
            }
          }

          v120 = *(*(v68 + 131128) + 8 * v119);
          if (v120)
          {
            while (1)
            {
              v120 = *v120;
              if (!v120)
              {
                break;
              }

              v121 = v120[1];
              if (v121 == v66)
              {
                if (v120[2] == v66)
                {
                  v122 = v120[3];
                  *(v68 + 40) = v122;
                  v123 = (v68 + 32 * v122);
                  *(v123 + 40) = -1;
                  v45 = v123 + 8;
                  goto LABEL_89;
                }
              }

              else
              {
                if (v118.u32[0] <= 1uLL)
                {
                  v121 &= *&v96 - 1;
                }

                else if (v121 >= *&v96)
                {
                  v121 %= *&v96;
                }

                v65 = (a1 + 64);
                if (v121 != v119)
                {
                  break;
                }
              }
            }
          }
        }

        v285 = v6;
        v282 = a2;
        v283 = a4;
        v97 = *(v68 + 48);
        v98 = (v68 + 56);
        if (v69 == 4096)
        {
          v99 = -1;
          v100 = *(v68 + 48);
          v101 = v100;
          while (1)
          {
            v102 = &v98[4 * v100];
            v103 = *(v102 + 12);
            *(v102 + 12) >>= 1;
            if (v103 < 2)
            {
              break;
            }

            if (v103 >> 1 < v99)
            {
              v99 = v103 >> 1;
              v101 = v100;
            }

            v100 = (v100 + 1) & 0xFFF;
            *(v68 + 48) = v100;
            if (v100 == v97)
            {
              v127 = v8;
              *(v68 + 48) = v101;
              v102 = &v98[4 * v101];
              goto LABEL_133;
            }
          }

          v127 = v8;
LABEL_133:
          sub_298C0930C((v68 + 131128), *v102);
          --*(v68 + 32);
          v97 = *(v68 + 48);
          v8 = v127;
          v65 = (a1 + 64);
        }

        v104 = &v98[4 * v97];
        *v104 = v66;
        v104[2] = 0;
        *(v104 + 12) = -1;
        v104[1] = 0;
        v45 = v104 + 1;
        v105 = *(v68 + 131136);
        if (!*&v105)
        {
          goto LABEL_135;
        }

        v108 = vcnt_s8(v105);
        v108.i16[0] = vaddlv_u8(v108);
        if (v108.u32[0] <= 1uLL)
        {
          v109 = (*&v105 - 1) & v66;
        }

        else
        {
          v109 = v66;
          if (v66 >= *&v105)
          {
            v109 = v66 % *&v105;
          }
        }

        v110 = *(*(v68 + 131128) + 8 * v109);
        if (!v110 || (v12 = *v110) == 0)
        {
LABEL_135:
          operator new();
        }

        if (v108.u32[0] >= 2uLL)
        {
          while (1)
          {
            v13 = v12[1];
            if (v13 == v66)
            {
              if (v12[2] == v66)
              {
                goto LABEL_138;
              }
            }

            else
            {
              if (v13 >= *&v105)
              {
                v13 %= *&v105;
              }

              if (v13 != v109)
              {
                goto LABEL_135;
              }
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_135;
            }
          }
        }

        while (1)
        {
          v129 = v12[1];
          if (v129 != v66)
          {
            if ((v129 & (*&v105 - 1)) != v109)
            {
              goto LABEL_135;
            }

            goto LABEL_204;
          }

          if (v12[2] == v66)
          {
            break;
          }

LABEL_204:
          v12 = *v12;
          if (!v12)
          {
            goto LABEL_135;
          }
        }

        v65 = (a1 + 64);
LABEL_138:
        v12[3] = v97;
        v106 = *(v68 + 48);
        ++*(v68 + 32);
        *(v68 + 40) = v106;
        *(v68 + 48) = (v106 + 1) & 0xFFF;
        a4 = v283;
        a2 = v282;
        v6 = v285;
        v67 = v289;
LABEL_89:
        v46 = v67 + 96273;
        v73 = *v45;
        if (*v45)
        {
          if (*(a1 + 112) == 1)
          {
            v74 = *(a1 + 120);
            if (v74 != 1 && v73 >= v74)
            {
              *(a1 + 93) = 1;
              *(a1 + 86) = 1;
              goto LABEL_114;
            }
          }

          if (v73 < *v65)
          {
            if (*(a1 + 24) != 1)
            {
              sub_298B868A8("Cannot skip forward to target PC", 1);
            }

            v158 = v45;
            v159 = v67 + 96273;
            v160 = v8;
            v68 = a2;
            v73 = a4;
            if (*(a1 + 84) == 1)
            {
              ++*(a1 + 416);
            }

            sub_298C031E0(a1);
            a4 = v73;
            a2 = v68;
            v8 = v160;
            v65 = (a1 + 64);
            v46 = v159;
            v45 = v158;
          }

          else if (v73 != *v65)
          {
            v75 = *(a1 + 344);
            v76 = *(v75 + 770184);
            v77 = *v76;
            v78 = (*v76 >> 47) + ((v73 - *v65) >> 2);
            if (v78 >= 0x1FFFF)
            {
              v79 = 0x1FFFFLL;
            }

            else
            {
              v79 = v78;
            }

            *v76 = v77 & 0x7FFFFFFFFFFFLL | (v79 << 47);
            if (v78 >= 0x20000)
            {
              v161 = v78 - v79;
              *(v76 + 2) = v76[1] & 0xFC3FFFFF | 0x2400000;
              v162 = v8;
              v163 = a2;
              v68 = (v67 + 96273);
              v164 = a4;
              v165 = v45;
              sub_298BFC704(v75, a2[5], ((v77 << 17) >> 15) + 4 * v79);
              v45 = v165;
              v46 = v68;
              v65 = (a1 + 64);
              v8 = v162;
              a2 = v163;
              a4 = v164;
              v166 = *(v75 + 770184);
              v167 = *v166;
              v168 = v161 + (*v166 >> 47);
              if (v168 >= 0x1FFFF)
              {
                v169 = 0x1FFFFLL;
              }

              else
              {
                v169 = v168;
              }

              while (1)
              {
                *v166 = v167 & 0x7FFFFFFFFFFFLL | (v169 << 47);
                v170 = v168 - v169;
                if (v168 == v169)
                {
                  break;
                }

                *(v166 + 2) = v166[1] & 0xFC3FFFFF | 0x2400000;
                sub_298BFC704(v75, v163[5], ((v167 << 17) >> 15) + 4 * v169);
                v45 = v165;
                v46 = v68;
                v65 = (a1 + 64);
                v8 = v162;
                a2 = v163;
                a4 = v164;
                v166 = *(v75 + 770184);
                v167 = *v166;
                v168 = v170 + (*v166 >> 47);
                if (v168 >= 0x1FFFF)
                {
                  v169 = 0x1FFFFLL;
                }

                else
                {
                  v169 = v168;
                }
              }
            }

            *v65 = v73;
          }

          v81 = *(a1 + 56);
          v80 = *(a1 + 64);
          v82 = *(a1 + 720);
          v83 = v82[3];
          if (!v83 || (v84 = v46[7], *(v83 + 144) > v84) || ((v112 = v82[1], v111 = v82[2], *(v83 + 152) > v84) ? (v113 = v112 > v80) : (v113 = 1), !v113 ? (v114 = v111 > v80) : (v114 = 0), !v114))
          {
            v86 = v81 + 48;
            v85 = *(v81 + 48);
            v87 = (*(v86 + 8) - v85) >> 4;
            v88 = 1;
            if (v87 >= 2)
            {
              do
              {
                v95 = (v85 + 16 * v88);
                v94 = *v95 < v80 && v95[1] <= v80;
                v88 = v94 | (2 * v88);
              }

              while (v88 < v87);
            }

            v89 = __clz(__rbit32(~v88));
            v90 = v88 == -1 ? 0 : v89 + 1;
            v91 = (v85 + 16 * (v88 >> v90));
            if (*v91 <= v80 && v91[1] > v80)
            {
              v135 = a2;
              v134 = a4;
              v136 = v8;
              sub_298C044F8(__dst, a1);
              goto LABEL_216;
            }
          }

LABEL_107:
          if (*(v45 + 13) == 1)
          {
            *(a1 + 64) -= 4;
            *(a1 + 86) = 1;
            goto LABEL_114;
          }

          v92 = *(v45 + 12);
          if (v92 != 6)
          {
            if (v92 != 7)
            {
              if (*(v45 + 14) == 1)
              {
                if (v290)
                {
                  goto LABEL_112;
                }

                if (*(a1 + 24) != 1)
                {
                  sub_298B868A8("Unconditional branch not taken", 1);
                }

                v115 = v8;
                v116 = a2;
                v117 = a4;
                if (*(a1 + 84) == 1)
                {
                  ++*(a1 + 416);
                }

                sub_298C031E0(a1);
                a4 = v117;
                a2 = v116;
                v8 = v115;
                goto LABEL_285;
              }

              if (!v290)
              {
                goto LABEL_114;
              }

LABEL_112:
              *(*v46 + 8) = *(*v46 + 8) & 0xFC3FFFFF | ((v92 & 0xF) << 22);
              v93 = *v65 - 4;
              *v65 = v93;
              if (*(v45 + 15) == 1)
              {
                *(a1 + 85) = 1;
                goto LABEL_114;
              }

              v137 = v93 + *(v45 + 2);
              *(a1 + 64) = v137;
              v138 = *(a1 + 720);
              v139 = v138[3];
              if (!v139)
              {
                v140 = v46;
                v141 = v8;
                v142 = a4;
                goto LABEL_270;
              }

              v140 = v46;
              v141 = v8;
              v142 = a4;
              if (*(v139 + 137) == 1)
              {
                v287 = v6;
                v143 = a2;
                v144 = a4;
                v145 = *(a1 + 56);
                v146 = v46[7];
                if (*(v139 + 144) > v146 || *(v139 + 152) <= v146 || v138[1] > v93 || v138[2] <= v93)
                {
                  v139 = 0;
                  if (*(v145 + 1) == 1)
                  {
                    v147 = *v138;
                    if (*v138)
                    {
                      while (1)
                      {
                        v149 = v147[56];
                        v148 = v147[57];
                        if (v149 != v148)
                        {
                          v150 = ((v148 - v149) >> 4) * v8;
                          v151 = v147[56];
                          do
                          {
                            v152 = v150 >> 1;
                            v153 = v151 + 176 * (v150 >> 1);
                            v154 = *(v153 + 72);
                            v155 = v153 + 176;
                            v150 += ~(v150 >> 1);
                            if (v154 > v93)
                            {
                              v150 = v152;
                            }

                            else
                            {
                              v151 = v155;
                            }
                          }

                          while (v150);
                          if (v151 != v149)
                          {
                            break;
                          }
                        }

LABEL_240:
                        v147 = *v147;
                        if (!v147)
                        {
                          v139 = 0;
                          goto LABEL_395;
                        }
                      }

                      v139 = v151 - 176;
                      while (1)
                      {
                        if (*(v139 + 144) <= v146 && *(v139 + 152) > v146)
                        {
                          v156 = *(v139 + 72);
                          if (v156 <= v93)
                          {
                            v157 = *(v139 + 64) + v156;
                            if (v157 > v93)
                            {
                              break;
                            }
                          }
                        }

                        if (*(v139 + 72) <= v93)
                        {
                          v62 = v149 == v139;
                          v139 -= 176;
                          if (!v62)
                          {
                            continue;
                          }
                        }

                        goto LABEL_240;
                      }

                      v138[1] = v156;
                      v138[2] = v157;
                      v138[3] = v139;
                    }
                  }
                }

LABEL_395:
                if (*(v139 + 137) != 1 || *(v139 + 144) <= v146 && *(v139 + 152) > v146 && (v245 = *(v139 + 72), v245 <= v137) && *(v139 + 64) + v245 > v137)
                {
LABEL_429:
                  v137 = *v294;
LABEL_430:
                  v142 = v144;
                  a2 = v143;
                  v6 = v287;
                  goto LABEL_270;
                }

                v246 = *(*v139 + 512);
                v247 = *(*v139 + 528);
                if (v247)
                {
                  v248 = *(v139 + 96);
                  v249 = v247 - 1;
                  v250 = (v246 + 32 * (((v248 >> 4) ^ (v248 >> 9)) & (v247 - 1)));
                  v251 = *v250;
                  if (*v250 == v248)
                  {
LABEL_401:
                    v252 = v250[1];
                    v253 = v250[2];
                    while (v252 != v253)
                    {
                      v254 = *v252;
                      if (*v252 != v139)
                      {
                        v255 = v254[10];
                        v256 = v254[9] - v255;
                        v257 = v256 + v254[8];
                        v258 = v137 - *(v139 + 80);
                        if (v256 <= v258 && v257 > v258)
                        {
                          v270 = v258 + v255;
LABEL_423:
                          v272 = v270 & 0xFFFFFFFFFFFFFF00;
                          goto LABEL_424;
                        }
                      }

                      ++v252;
                    }

                    v260 = *(v145 + 752);
                    v261 = *(v145 + 768);
                    v262 = (v260 + 16 * v261);
                    if (v261)
                    {
                      v263 = v261 - 1;
                      LODWORD(v264) = v263 & (37 * v137);
                      v265 = (v260 + 16 * v264);
                      v266 = *v265;
                      if (*v265 == v137)
                      {
                        goto LABEL_411;
                      }

                      v279 = 1;
                      while (v266 != -1)
                      {
                        v281 = v264 + v279++;
                        v264 = v281 & v263;
                        v266 = *(v260 + 16 * v264);
                        if (v266 == v137)
                        {
                          v265 = (v260 + 16 * v264);
                          goto LABEL_411;
                        }
                      }
                    }

                    v265 = v262;
LABEL_411:
                    if (v265 == v262)
                    {
                      goto LABEL_429;
                    }

                    v267 = v265[1];
                    v268 = strlen(v267);
                    if (v268 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      sub_298ADDDA0();
                    }

                    v269 = v268;
                    if (v268 >= 0x17)
                    {
                      operator new();
                    }

                    HIBYTE(__src) = v268;
                    if (v268)
                    {
                      memmove(__p, v267, v268);
                    }

                    *(__p + v269) = 0;
                    v271 = sub_298B7FE44((v145 + 776), __p);
                    if (SHIBYTE(__src) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (v271)
                    {
                      v270 = v271[5];
                      goto LABEL_423;
                    }

                    LOBYTE(v270) = 0;
                    v272 = 0;
LABEL_424:
                    v137 = v272 | v270;
                    if (v137)
                    {
                      *v294 = v137;
                      goto LABEL_430;
                    }

                    ++*(a1 + 368);
                    sub_298C03154(a1);
                    a4 = v144;
                    a2 = v143;
                    v6 = v287;
                    v8 = v141;
LABEL_285:
                    v65 = (a1 + 64);
                    goto LABEL_114;
                  }

                  v277 = 1;
                  LODWORD(v278) = ((v248 >> 4) ^ (v248 >> 9)) & v249;
                  while (v251 != -4096)
                  {
                    v280 = v278 + v277++;
                    v278 = v280 & v249;
                    v251 = *(v246 + 32 * v278);
                    if (v251 == v248)
                    {
                      v250 = (v246 + 32 * v278);
                      goto LABEL_401;
                    }
                  }
                }

                v250 = (v246 + 32 * v247);
                goto LABEL_401;
              }

LABEL_270:
              v188 = v289 + 88075;
              v189 = v289 + 6146;
              v190 = a2[5];
              v191 = v289[1];
              v192 = v289[88077];
              v193 = a2;
              if (!(v192 + v191[2]) || *v140[2] < v190)
              {
                v194 = v289 + 75787;
                if (v192 == 4096)
                {
                  v140[2] = 0;
                  goto LABEL_274;
                }

                v210 = v140[7];
                v211 = v191[1] + v289[6148];
                v212 = v289[88076];
                v213 = &v194[3 * (v212 & 0xFFF)];
                *v213 = v190;
                v213[1] = v211;
                v213[2] = v210;
                ++v192;
                v289[88076] = v212 + 1;
                v289[88077] = v192;
                v140[2] = v213;
                if (v192 >= 0x841)
                {
LABEL_274:
                  v195 = *v188;
                  v196 = &v194[3 * *v188];
                  if ((4096 - *v188) >= 0x800)
                  {
                    v197 = 2048;
                  }

                  else
                  {
                    v197 = 4096 - *v188;
                  }

                  v289[88077] = v192 - v197;
                  *v188 = (v197 + v195) & 0xFFF;
                  (*(*v191 + 80))(v191, v196);
                }
              }

              v198 = v289 + 2;
              v199 = v289[6148];
              if (v199 == 4096)
              {
                *v140 = 0;
                v200 = v289;
                goto LABEL_280;
              }

              v205 = *(v140 + 12);
              v206 = v289[6147];
              v207 = v198 + 12 * (v206 & 0xFFF);
              v208 = v205 >> 8;
              v209 = (v205 & 7) << 26;
              if ((v208 & 1) == 0)
              {
                v209 = 0;
              }

              *v207 = (v137 >> 2) & 0x7FFFFFFFFFFFLL;
              *(v207 + 2) = v209 | (v208 << 29);
              ++v199;
              v289[6147] = v206 + 1;
              v289[6148] = v199;
              *v140 = v207;
              v200 = v289;
              if (v199 >= 0x841)
              {
LABEL_280:
                v201 = v200[1];
                v202 = *v189;
                v203 = v198 + 12 * *v189;
                if ((4096 - *v189) >= 0x800)
                {
                  v204 = 2048;
                }

                else
                {
                  v204 = 4096 - *v189;
                }

                v289[6148] = v199 - v204;
                *v189 = (v204 + v202) & 0xFFF;
                (*(*v201 + 72))(v201, v203);
              }

              ++**v200;
              a4 = v142;
              a2 = v193;
              v8 = v141;
              goto LABEL_285;
            }

            v134 = a4;
            v135 = a2;
            v136 = v8;
            sub_298C04640(a1);
LABEL_216:
            v65 = (a1 + 64);
            v8 = v136;
            a2 = v135;
            a4 = v134;
            goto LABEL_114;
          }

          v130 = *(a1 + 344);
          if (*(a1 + 87) != 1)
          {
            v186 = 0;
            v187 = 0;
            goto LABEL_321;
          }

          v131 = a1 + 128;
          v132 = *(a1 + 109);
          if (*(a1 + 107) != 1)
          {
            v133 = *(a1 + 98);
            if (*(a1 + 109))
            {
              if (v133 == 1)
              {
                goto LABEL_312;
              }

              if (v133 == 2)
              {
                v133 = 3;
                goto LABEL_312;
              }

LABEL_311:
              v133 = 2;
            }

            else
            {
              if (v133 != 1)
              {
                goto LABEL_311;
              }

              v133 = 0;
            }

LABEL_312:
            v186 = *(v131 + 8 * v133);
            if (v186 == 1)
            {
              v186 = 0;
              v187 = 0;
LABEL_319:
              if (*(a1 + 112) == 1)
              {
                *(a1 + 112) = 0;
              }

LABEL_321:
              v215 = a2;
              v216 = a4;
              v217 = v130 + 770048;
              *(*(v130 + 770184) + 8) = *(*(v130 + 770184) + 8) & 0xFC3FFFFF | 0x1800000;
              *(a1 + 87) = 0;
              if (!v187)
              {
                goto LABEL_323;
              }

              v218 = *(a1 + 56);
              v219 = sub_298BDA9EC(v218, *(v130 + 770240), v186, *(a1 + 720));
              if ((v219 - 2) < 3)
              {
                goto LABEL_323;
              }

              if (v219 == 1)
              {
                v225 = *(v218 + 48);
                v226 = (*(v218 + 56) - v225) >> 4;
                v227 = 1;
                if (v226 >= 2)
                {
                  do
                  {
                    v241 = (v225 + 16 * v227);
                    v240 = *v241 < v186 && v241[1] <= v186;
                    v227 = v240 | (2 * v227);
                  }

                  while (v227 < v226);
                }

                v228 = __clz(__rbit32(~v227));
                v229 = v227 == -1 ? 0 : v228 + 1;
                v230 = (v225 + 16 * (v227 >> v229));
                if (*v230 > v186 || v230[1] <= v186)
                {
LABEL_323:
                  ++*(a1 + 376);
                  v220 = *(a1 + 72);
                  v221 = *(a1 + 120);
                  v222 = *(a1 + 344);
                  v223 = *(v222 + 770184);
                  v224 = a1 + 64;
                  if (v223)
                  {
                    *(v223 + 8) = *(v223 + 8) & 0xFC3FFFFF | 0x400000;
                    if (!(*v223 >> 47))
                    {
                      *v223 |= 0x800000000000uLL;
                    }

                    v222 = *(a1 + 344);
                    *(v222 + 770216) += *(*(v222 + 8) + 8) - *(v222 + 770216) + *(v222 + 49184);
                    v224 = a1 + 64;
                  }

                  *(v222 + 770208) = 0;
                  ++*(a1 + 360);
                  sub_298BFC490(v224);
                  v65 = (a1 + 64);
                  *(a1 + 120) = v221;
                  *(a1 + 72) = v220;
                  a4 = v216;
                  a2 = v215;
                  v8 = 0x2E8BA2E8BA2E8BA3;
                  goto LABEL_114;
                }
              }

              if ((v68 & 0x1FF0000) == 0x1020000 && (v73 & 0x10000010000) == 0x10000000000 && BYTE1(v68) == 1 && *(a1 + 328) == 1)
              {
                sub_298BFF0D4(a1, v215, *(a1 + 320), *(a1 + 328), 1);
              }

              if ((v73 & 0x10000000000) == 0)
              {
LABEL_338:
                v231 = BYTE1(v68);
                if (((v68 >> 8) & 0xFE) != 0)
                {
                  v231 = 2;
                }

LABEL_340:
                *(v217 + 160) = v231 | 0x100;
                v232 = *(a1 + 344);
                v233 = *(v232 + 8);
                if (!(*(v232 + 704616) + *(v233 + 16)) || **(v232 + 770200) < *(v215 + 40))
                {
                  __p[0] = *(v215 + 40);
                  __p[1] = (*(v232 + 49184) + *(v233 + 8));
                  __src = *(v232 + 770240);
                  sub_298C0D43C(v232, __p);
                }

                v234 = *(v232 + 770208);
                __p[0] = ((v186 >> 2) & 0x7FFFFFFFFFFFLL);
                v235 = v234 >> 8;
                v236 = (v234 & 7) << 26;
                if ((v235 & 1) == 0)
                {
                  v236 = 0;
                }

                LODWORD(__p[1]) = v236 | (v235 << 29);
                sub_298C0D1FC(v232, __p);
                v237 = 0;
                ++**v232;
                *(a1 + 64) = v186;
                v239 = *(a1 + 8);
                v238 = *(a1 + 12);
                if (v239 > 6)
                {
                  if ((v239 - 7) >= 2)
                  {
                    if (v239 != 9 && v239 != 10)
                    {
                      goto LABEL_364;
                    }

                    v237 = 2;
                    if (!v238)
                    {
                      goto LABEL_364;
                    }

                    goto LABEL_363;
                  }

                  v237 = 2;
                  if (!v238 || v238 == 3)
                  {
                    goto LABEL_364;
                  }

                  if ((v73 & 0x10100000000) != 0)
                  {
                    v237 = 2;
                    goto LABEL_364;
                  }
                }

                else if ((v239 - 1) >= 5)
                {
                  if (v239 != 6)
                  {
                    goto LABEL_364;
                  }
                }

                else
                {
                  v237 = 0;
                  if (!v238)
                  {
                    goto LABEL_364;
                  }

LABEL_363:
                  if (v238 == 3)
                  {
LABEL_364:
                    *(a1 + 88) = v237;
                    a4 = v216;
                    a2 = v215;
                    v8 = 0x2E8BA2E8BA2E8BA3;
                    goto LABEL_285;
                  }
                }

                if (*(a1 + 93) == 1)
                {
                  v237 = 0;
                  *(a1 + 93) = 0;
                }

                else
                {
                  v237 = 1;
                }

                goto LABEL_364;
              }

              if ((v68 & 0xFF0000) == 0x20000)
              {
                v242 = BYTE1(v68);
                if ((v73 & 0x10000) != 0)
                {
                  if (BYTE1(v68) >= 2u && *(a1 + 328) == 1)
                  {
                    *(a1 + 328) = 0;
                  }

                  goto LABEL_338;
                }

                if (BYTE1(v68) >= 2u)
                {
                  goto LABEL_383;
                }
              }

              else
              {
                if ((v73 & 0x10000) != 0)
                {
                  goto LABEL_338;
                }

                v242 = BYTE1(v68);
              }

              if (!v242)
              {
                v231 = 3;
                goto LABEL_340;
              }

              if (v242 == 1)
              {
                v231 = 4;
                goto LABEL_340;
              }

LABEL_383:
              v231 = 5;
              goto LABEL_340;
            }

            v68 = *(a1 + 96);
            v73 = *(a1 + 104);
LABEL_318:
            v187 = 1;
            goto LABEL_319;
          }

          v214 = *(a1 + 97);
          if (*(a1 + 109))
          {
            if (v214 == 1)
            {
LABEL_316:
              v186 = *(a1 + 120);
              *(v131 + 8 * v214) = v186;
              v68 = *(a1 + 96);
              v73 = *(a1 + 104);
              v187 = 1;
              *(a1 + 120) = 1;
              if (*(a1 + 161) != 1)
              {
                goto LABEL_319;
              }

              *(a1 + 161) = 0;
              goto LABEL_318;
            }

            if (v214 == 2)
            {
              v214 = 3;
              goto LABEL_316;
            }
          }

          else if (v214 == 1)
          {
            v214 = 0;
            goto LABEL_316;
          }

          v214 = 2;
          goto LABEL_316;
        }

        __p[0] = 0;
        __p[1] = 0;
        v284 = v67 + 96273;
        __src = v303;
        v302 = 0xA00000000;
        v304 = 0;
        v305 = 0;
        v44 = *(a1 + 64);
        v286 = v45;
        while (2)
        {
          if (*(a1 + 112) == 1)
          {
            v14 = *(a1 + 120);
            if (v14 != 1 && v44 + 4 >= v14)
            {
              v36 = v8;
              v126 = a2;
              v68 = a4;
              v73 = 0;
              *(a1 + 93) = 1;
              *(a1 + 86) = 1;
              goto LABEL_188;
            }
          }

          v16 = *(a1 + 56);
          v17 = *(a1 + 720);
          v18 = v17[3];
          if (v18)
          {
            v19 = v46[7];
            v20 = *(v18 + 144);
            if (v20 <= v19)
            {
              v21 = *(v18 + 152) <= v19 || v17[1] > v44;
              if (!v21 && v17[2] > v44)
              {
                v29 = *(*(a1 + 344) + 770240);
                goto LABEL_36;
              }
            }
          }

          v23 = *(v16 + 48);
          v24 = (*(v16 + 56) - v23) >> 4;
          v25 = 1;
          if (v24 >= 2)
          {
            do
            {
              v48 = (v23 + 16 * v25);
              v47 = *v48 < v44 && v48[1] <= v44;
              v25 = v47 | (2 * v25);
            }

            while (v25 < v24);
          }

          v26 = __clz(__rbit32(~v25));
          if (v25 == -1)
          {
            v27 = 0;
          }

          else
          {
            v27 = v26 + 1;
          }

          v28 = (v23 + 16 * (v25 >> v27));
          if (*v28 <= v44 && v28[1] > v44)
          {
            v36 = v8;
            v126 = a2;
            v68 = a4;
            *v45 = v44;
            v45[1] = 0;
            sub_298C044F8(__dst, a1);
            v73 = 0;
            goto LABEL_188;
          }

          v29 = *(*(a1 + 344) + 770240);
          if (!v18)
          {
            goto LABEL_55;
          }

          v20 = *(v18 + 144);
LABEL_36:
          if (v20 > v29 || *(v18 + 152) <= v29 || v17[1] > v44 || v17[2] <= v44)
          {
LABEL_55:
            if (*(v16 + 1) != 1)
            {
              goto LABEL_186;
            }

            v49 = *v17;
            if (!*v17)
            {
              goto LABEL_186;
            }

            while (1)
            {
              v50 = v49[56];
              v51 = v49[57];
              if (v50 != v51)
              {
                v52 = ((v51 - v50) >> 4) * v8;
                v53 = v52 >> 1;
                v54 = v50 + 176 * (v52 >> 1);
                v55 = *(v54 + 72);
                v56 = v54 + 176;
                v57 = v52 + ~(v52 >> 1);
                if (v55 <= v44)
                {
                  v58 = v56;
                }

                else
                {
                  v58 = v49[56];
                }

                if (v55 <= v44)
                {
                  v59 = v57;
                }

                else
                {
                  v59 = v53;
                }

                while (v59)
                {
                  v273 = v59 >> 1;
                  v274 = v58 + 176 * (v59 >> 1);
                  v275 = *(v274 + 72);
                  v276 = v274 + 176;
                  v59 += ~(v59 >> 1);
                  if (v275 > v44)
                  {
                    v59 = v273;
                  }

                  else
                  {
                    v58 = v276;
                  }
                }

                if (v58 != v50)
                {
                  break;
                }
              }

LABEL_57:
              v49 = *v49;
              if (!v49)
              {
                goto LABEL_186;
              }
            }

            v18 = v58 - 176;
            while (1)
            {
              if (*(v18 + 144) <= v29 && *(v18 + 152) > v29)
              {
                v60 = *(v18 + 72);
                if (v60 <= v44)
                {
                  v61 = *(v18 + 64) + v60;
                  if (v61 > v44)
                  {
                    break;
                  }
                }
              }

              if (*(v18 + 72) <= v44)
              {
                v62 = v50 == v18;
                v18 -= 176;
                if (!v62)
                {
                  continue;
                }
              }

              goto LABEL_57;
            }

            v17[1] = v60;
            v17[2] = v61;
            v17[3] = v18;
          }

          if (*(v18 + 136) != 1)
          {
LABEL_43:
            v34 = *(v16 + 816);
            v35 = a2;
            v36 = v8;
            v37 = a4;
            v38 = (*(*v34 + 24))(v34, __p, *(v17[3] + 48) + v44 - v17[1], 4, v44);
            v8 = v36;
            a2 = v35;
            a4 = v37;
            if ((v38 & 1) == 0)
            {
              goto LABEL_186;
            }

            v39 = *(a1 + 344);
            v40 = *(v39 + 770184);
            v41 = *v40;
            v42 = *v40 >> 47;
            if ((v42 + 1) < 0x1FFFF)
            {
              v43 = v42 + 1;
            }

            else
            {
              v43 = 0x1FFFF;
            }

            *v40 = v41 & 0x7FFFFFFFFFFFLL | (v43 << 47);
            if (v42 == 0x1FFFF)
            {
              v171 = 0x20000 - v43;
              *(v40 + 2) = v40[1] & 0xFC3FFFFF | 0x2400000;
              sub_298BFC704(v39, v35[5], ((v41 << 17) >> 15) + 524284);
              v8 = v36;
              a2 = v35;
              a4 = v37;
              v172 = *(v39 + 770184);
              v173 = *v172;
              v174 = v171 + (*v172 >> 47);
              if (v174 >= 0x1FFFF)
              {
                v175 = 0x1FFFFLL;
              }

              else
              {
                v175 = v174;
              }

              while (1)
              {
                *v172 = v173 & 0x7FFFFFFFFFFFLL | (v175 << 47);
                v176 = v174 - v175;
                if (v174 == v175)
                {
                  break;
                }

                *(v172 + 2) = v172[1] & 0xFC3FFFFF | 0x2400000;
                sub_298BFC704(v39, v35[5], ((v173 << 17) >> 15) + 4 * v175);
                v8 = v36;
                a2 = v35;
                a4 = v37;
                v172 = *(v39 + 770184);
                v173 = *v172;
                v174 = v176 + (*v172 >> 47);
                if (v174 >= 0x1FFFF)
                {
                  v175 = 0x1FFFFLL;
                }

                else
                {
                  v175 = v174;
                }
              }
            }

            v44 = *v294 + 4;
            *v294 = v44;
            v46 = v284;
            v45 = v286;
            if (v305)
            {
              v295 = v297;
              v296 = 0xA00000000;
              v177 = v302;
              if (!v302)
              {
                v178 = v286;
                v126 = a2;
                v68 = a4;
                v179 = 0xFFFFFFFFLL;
                goto LABEL_264;
              }

              v178 = v286;
              v126 = a2;
              v68 = a4;
              if (v302 < 0xB)
              {
                v244 = v297;
                v243 = v302;
LABEL_378:
                memcpy(v244, __src, 16 * v243);
              }

              else
              {
                sub_298B90A44(&v295, v297, v302, 16);
                v243 = v302;
                if (v302)
                {
                  v244 = v295;
                  goto LABEL_378;
                }
              }

              LODWORD(v296) = v177;
              v179 = (v177 - 1);
LABEL_264:
              v299 = v305;
              v298 = v304;
              v180 = v305;
              v181 = HIBYTE(v305);
              switch(v305)
              {
                case 2u:
                  v183 = (*(v298 + 16) & 0xD00) != 1024;
                  break;
                case 3u:
                  v183 = 1;
                  break;
                case 4u:
                  v182 = 0;
                  v183 = 1;
                  v184 = v295;
                  LOBYTE(v185) = 1;
LABEL_302:
                  *v178 = v44;
                  *(v178 + 2) = v182;
                  *(v178 + 12) = v180;
                  *(v178 + 13) = v181;
                  *(v178 + 14) = v183;
                  *(v178 + 15) = v185;
                  if (v184 != v297)
                  {
                    free(v184);
                  }

                  v73 = 1;
                  goto LABEL_188;
                default:
                  if ((v305 & 0xFE) != 2)
                  {
                    v183 = 0;
                    LOBYTE(v185) = 0;
                    v182 = 0;
                    v184 = v295;
                    goto LABEL_302;
                  }

                  v183 = 0;
                  break;
              }

              v184 = v295;
              v185 = *(v295 + 16 * v179);
              if (v185 == 1)
              {
                v182 = 0;
              }

              else
              {
                LOBYTE(v185) = 0;
                v182 = 4 * *(v295 + 4 * v179 + 2);
              }

              goto LABEL_302;
            }

            continue;
          }

          break;
        }

        v30 = v6;
        v31 = a2;
        v32 = a4;
        v33 = sub_298BD4134(*v18, v18);
        std::mutex::lock(v33);
        if (*(v18 + 56))
        {
          std::mutex::unlock(v33);
          a4 = v32;
          a2 = v31;
          v6 = v30;
          v8 = 0x2E8BA2E8BA2E8BA3;
          goto LABEL_43;
        }

        if (*(v18 + 138) != 1)
        {
          v63 = sub_298BDAEC4(v16, v18);
          std::mutex::unlock(v33);
          a4 = v32;
          a2 = v31;
          v6 = v30;
          v8 = 0x2E8BA2E8BA2E8BA3;
          if (v63)
          {
            goto LABEL_186;
          }

          goto LABEL_43;
        }

        std::mutex::unlock(v33);
        a4 = v32;
        a2 = v31;
        v6 = v30;
        v8 = 0x2E8BA2E8BA2E8BA3;
LABEL_186:
        ++*(a1 + 368);
        v124 = *(a1 + 344);
        v125 = *(v124 + 770184);
        if (v125)
        {
          *(v125 + 8) = *(v125 + 8) & 0xFC3FFFFF | 0x400000;
          if (!(*v125 >> 47))
          {
            *v125 |= 0x800000000000uLL;
          }

          v124 = *(a1 + 344);
          *(v124 + 770216) += *(*(v124 + 8) + 8) - *(v124 + 770216) + *(v124 + 49184);
        }

        v36 = v8;
        v126 = a2;
        v68 = a4;
        *(v124 + 770208) = 0;
        ++*(a1 + 360);
        sub_298BFC490(v294);
        v73 = 0;
LABEL_188:
        if (__src != v303)
        {
          free(__src);
        }

        a4 = v68;
        a2 = v126;
        v8 = v36;
        v65 = (a1 + 64);
        v46 = v284;
        v45 = v286;
        if (v73)
        {
          goto LABEL_107;
        }

LABEL_114:
        v10 = v293;
        if (((*(a1 + 85) & 1) != 0 || (*(a1 + 86) & 1) != 0 || (*(*(*(a1 + 344) + 770184) + 8) & 0x3C00000) == 0x1C00000) && v293 != v6)
        {
          if (*(a1 + 24) != 1)
          {
            sub_298B868A8("Expected mask to be exhausted", 1);
          }

          goto LABEL_198;
        }

        v7 = v291;
        v9 = v292;
        if (*v65 == 1)
        {
          goto LABEL_141;
        }

LABEL_118:
        v5 = v9;
        if (v10 == v6)
        {
          if (*(a1 + 84) == 1)
          {
            *(a1 + 84) = 0;
          }

          goto LABEL_141;
        }
      }
    }

    if (*(a1 + 24) != 1)
    {
      sub_298B868A8("Expected exception after ignored branch-at-ELR", 1);
    }
  }

LABEL_198:
  if (*(a1 + 84) == 1)
  {
    ++*(a1 + 416);
  }

  v128 = *MEMORY[0x29EDCA608];

  sub_298C031E0(a1);
}

void *sub_298C01E2C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 2);
  if (v3 <= 0x12)
  {
    v4 = *(a3 + 8);
    if (((1 << v3) & 0x7F807) != 0)
    {
      v5 = v4 - 6;
      v6 = 0;
      switch(v5)
      {
        case 0:
          goto LABEL_29;
        case 1:
          v6 = 1;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 2:
          v6 = 2;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 3:
          v6 = 3;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 4:
          v6 = 4;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 5:
          v6 = 5;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 6:
          v6 = 6;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 7:
          v6 = 7;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 30:
          v6 = 10;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 31:
          v6 = 11;
LABEL_29:
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 35:
          v6 = 12;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 36:
          v6 = 13;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        case 38:
          v6 = 14;
          v7 = *(a3 + 24);
          if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
          {
            goto LABEL_30;
          }

          return result;
        default:
          return result;
      }
    }

    if (v4 < 0x23 && ((0x7AC6018FFuLL >> v4) & 1) != 0)
    {
      v6 = qword_298D1B570[v4];
      v7 = *(a3 + 24);
      if ((v7 & 0xFFFFFFFFFFFFFFFLL) == 2)
      {
LABEL_30:
        if (v7 - 0x100000001 >= 0xFFFFFFFF0000000FLL)
        {
            ;
          }
        }

        v8 = 0;
        v9 = 0;
        v10 = &unk_298D1B440 + 3 * v6;
        v11 = *v10;
        v12 = v10[2];
        v13 = *(a3 + 16);
        v14 = 1;
        do
        {
          v15 = *v13++;
          v9 |= v15 << v8;
          v16 = v7 > v14++;
          v8 += 16;
        }

        while (v16);
        if (v11 + 32 == v12)
        {
          if (v11 == 32)
          {
            v9 = *(result + 20) | (v9 << 32);
          }

          if (v6 > 10)
          {
            if (v6 <= 13)
            {
              if (v6 == 11)
              {
                result[18] = v9;
              }

              else
              {
                result[19] = v9;
              }
            }

            else if (v6 == 14 && *(result + 27) == 1)
            {
              return sub_298BFF0D4(result, a2, v9, 1, (*(result[43] + 770208) == 4) & HIBYTE(*(result[43] + 770208)));
            }
          }

          else if (v6 <= 4)
          {
            if (*(result + 26) == 1 && (*(result + 29) == 1 && (*(result + 35) & 1) == 0 && *(result + 34) != 1 || !result[2] || (*(result + 284) & 1) == 0) && *(result + 296) == 1)
            {
              v17 = result[2];
              if (!v17)
              {
                goto LABEL_86;
              }

              v18 = result[2];
              v19 = result[36];
              v20 = *(v17 + 8);
              if (v20)
              {
                v21 = vcnt_s8(v20);
                v21.i16[0] = vaddlv_u8(v21);
                if (v21.u32[0] <= 1uLL)
                {
                  v22 = (*&v20 - 1) & v19;
                }

                else
                {
                  v22 = *&v20 > v19 ? result[36] : v19 % *&v20;
                }

                v23 = *(*v17 + 8 * v22);
                if (v23)
                {
                  v24 = *v23;
                  if (v24)
                  {
                    if (v21.u32[0] < 2uLL)
                    {
                      v25 = *&v20 - 1;
                      while (1)
                      {
                        v33 = v24[1];
                        if (v33 == v19)
                        {
                          if (v24[2] == v19)
                          {
                            goto LABEL_76;
                          }
                        }

                        else if ((v33 & v25) != v22)
                        {
                          goto LABEL_75;
                        }

                        v24 = *v24;
                        if (!v24)
                        {
                          goto LABEL_75;
                        }
                      }
                    }

                    do
                    {
                      v26 = v24[1];
                      if (v26 == v19)
                      {
                        if (v24[2] == v19)
                        {
                          goto LABEL_76;
                        }
                      }

                      else
                      {
                        if (v26 >= *&v20)
                        {
                          v26 %= *&v20;
                        }

                        if (v26 != v22)
                        {
                          break;
                        }
                      }

                      v24 = *v24;
                    }

                    while (v24);
                  }
                }
              }

LABEL_75:
              if (*(v17 + 72) == 1)
              {
LABEL_76:
                v27 = *(v17 + 48);
                if (!v27)
                {
                  goto LABEL_84;
                }

                v28 = v17 + 48;
                do
                {
                  v29 = *(v27 + 32);
                  v30 = v29 >= v19;
                  v31 = v29 < v19;
                  if (v30)
                  {
                    v28 = v27;
                  }

                  v27 = *(v27 + 8 * v31);
                }

                while (v27);
                if (v28 != v17 + 48 && *(v28 + 32) <= v19)
                {
                  v32 = *(v28 + 40);
                }

                else
                {
LABEL_84:
                  v32 = *(v17 + 64);
                }
              }

              else
              {
LABEL_86:
                v32 = -1;
              }

              return sub_298C04710(result, a2, v32, v9);
            }
          }

          else if (v6 != 5)
          {
            if (v6 == 7)
            {
              result[16] = v9;
            }

            else
            {
              result[17] = v9;
            }
          }
        }

        else
        {
          *(result + 20) = v9;
        }
      }
    }
  }

  return result;
}

void sub_298C02310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) == 1)
  {
    if (*(a1 + 24) != 1)
    {
      sub_298B868A8("Unknown redirect type", 1);
    }

    if (*(a1 + 84) == 1)
    {
      ++*(a1 + 416);
    }

    sub_298C031E0(a1);
    return;
  }

  v6 = *(a1 + 248);
  if (v6 && v6 < *(a1 + 30))
  {
    *(a1 + 248) = 0;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
  }

  if (*(a1 + 64) == 1)
  {
    if (*(a3 + 19))
    {
      v7 = sub_298BFA500((a3 + 8));
      if ((*(a1 + v7 + 31) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if ((*(a3 + 20) & 1) == 0)
      {
        return;
      }

      v7 = sub_298BFA500((a3 + 8));
      if (*(a1 + v7 + 31) != 1)
      {
        return;
      }
    }

    *(*(a1 + 344) + 770208) = v7 | 0x100;
    if ((*(a3 + 19) & 1) == 0)
    {
      return;
    }
  }

LABEL_8:
  if (*(a1 + 29) != 1 || (*(a1 + 35) & 1) != 0 || *(a1 + 34) == 1) && *(a1 + 16) && (*(a1 + 284))
  {
    return;
  }

  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 107) == 1)
    {
      if (*(a1 + 120) == 1 || (*(a1 + 161) & 1) == 0)
      {
        ++*(a1 + 392);
        sub_298C03154(a1);

        sub_298BFBAAC(a1 + 96);
        return;
      }

      if (*(a3 + 19) == 1)
      {
        goto LABEL_25;
      }
    }

    else if (*(a3 + 19))
    {
LABEL_25:
      v8 = *(a3 + 8);
      v9 = *(a3 + 16);
      *(a1 + 104) = v9;
      *(a1 + 108) = WORD2(v9);
      goto LABEL_26;
    }

LABEL_46:
    if (*(a3 + 20) == 1)
    {
      *(a1 + 87) = 1;
      v12 = *(a3 + 8);
      v13 = *(a3 + 16);

      sub_298BFBAE8(a1 + 96, v12, v13);
    }

    else if (*(a3 + 12) == 18)
    {
      ++*(a1 + 384);
      sub_298BFC490(a1 + 64);
      v11 = *(*(a1 + 344) + 770184);
      if (v11)
      {
        *(v11 + 8) = *(v11 + 8) & 0xFC3FFFFF | 0x2000000;
        if (!(*v11 >> 47))
        {
          *v11 |= 0x800000000000uLL;
        }
      }
    }

    return;
  }

  if ((*(a3 + 19) & 1) == 0)
  {
    goto LABEL_46;
  }

  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  *(a1 + 104) = v9;
  *(a1 + 112) = 1;
LABEL_26:
  *(a1 + 96) = v8;
  if ((v9 & 0x1000000) != 0)
  {
    if ((v9 & 0x100) != 0 || BYTE2(v8) < BYTE1(v8))
    {
      *(a1 + 160) = 256;
      v10 = 1;
    }

    else
    {
      v10 = *(a1 + 161);
      if (v10)
      {
        *(a1 + 161) = 0;
        return;
      }
    }

    if (*(a1 + 120) != 1 && (v10 & 1) != 0)
    {

      sub_298C049DC(a1, a2);
    }
  }
}

void sub_298C02614(uint64_t a1, uint64_t a2, uint16x8_t *a3, unint64_t a4)
{
  if (*(a1 + 29) == 1 && (*(a1 + 35) & 1) == 0 && *(a1 + 34) != 1 || !*(a1 + 16) || (*(a1 + 284) & 1) == 0)
  {
    if (!a4)
    {
      *(a1 + 160) = 256;
      if (*(a1 + 112) != 1)
      {
        return;
      }

LABEL_16:
      if (*(a1 + 107) == 1 && *(a1 + 120) != 1)
      {
        sub_298C049DC(a1, a2);
      }

      return;
    }

    if (a4 < 8)
    {
      v5 = 0;
      v4 = 0;
      v6 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      if (a4)
      {
        v6 = 0;
        if (!((a4 - 1) >> 32))
        {
          v5 = a4 & 0x1FFFFFFF8;
          v7 = xmmword_298D1A0A0;
          v8 = xmmword_298D1A0B0;
          v4 = a4 & 0xFFFFFFF8;
          v9 = 0uLL;
          v10.i64[0] = 0x800000008;
          v10.i64[1] = 0x800000008;
          v11 = a4 & 0x1FFFFFFF8;
          v12 = a3;
          v13 = 0uLL;
          v14 = 0uLL;
          v15 = 0uLL;
          do
          {
            v16 = *v12++;
            v17 = vmovl_high_u16(v16);
            v18.i64[0] = v17.u32[2];
            v18.i64[1] = v17.u32[3];
            v19 = v18;
            v18.i64[0] = v17.u32[0];
            v18.i64[1] = v17.u32[1];
            v20 = v18;
            v21 = vmovl_u16(*v16.i8);
            v18.i64[0] = v21.u32[2];
            v18.i64[1] = v21.u32[3];
            v22 = v18;
            v18.i64[0] = v21.u32[0];
            v18.i64[1] = v21.u32[1];
            v23 = v18;
            v24 = vshlq_n_s32(v8, 4uLL);
            v25 = vshlq_n_s32(v7, 4uLL);
            v18.i64[0] = v25.u32[2];
            v18.i64[1] = v25.u32[3];
            v26 = v18;
            v18.i64[0] = v25.u32[0];
            v18.i64[1] = v25.u32[1];
            v27 = v18;
            v18.i64[0] = v24.u32[2];
            v18.i64[1] = v24.u32[3];
            v28 = v18;
            v18.i64[0] = v24.u32[0];
            v18.i64[1] = v24.u32[1];
            v15 = vorrq_s8(vshlq_u64(v19, v26), v15);
            v14 = vorrq_s8(vshlq_u64(v20, v27), v14);
            v13 = vorrq_s8(vshlq_u64(v22, v28), v13);
            v9 = vorrq_s8(vshlq_u64(v23, v18), v9);
            v8 = vaddq_s32(v8, v10);
            v7 = vaddq_s32(v7, v10);
            v11 -= 8;
          }

          while (v11);
          v29 = vorrq_s8(vorrq_s8(v9, v14), vorrq_s8(v13, v15));
          v6 = vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
          if (v5 == a4)
          {
LABEL_15:
            *(a1 + 160) = v6.i8[0] & 1 | 0x100;
            if (*(a1 + 112) != 1)
            {
              return;
            }

            goto LABEL_16;
          }
        }
      }

      else
      {
        v6 = 0;
      }
    }

    v30 = v4 + 1;
    v31 = 16 * v4;
    do
    {
      *&v6 |= a3->u16[v5] << v31;
      v5 = v30++;
      v31 += 16;
    }

    while (v5 < a4);
    goto LABEL_15;
  }
}

void sub_298C027B8(uint64_t a1, uint64_t a2, uint16x4_t *a3, unint64_t a4, int8x16_t a5, int8x16_t a6, double a7, double a8, int8x16_t a9, double a10, int8x16_t a11)
{
  if (*(a1 + 29) == 1 && (*(a1 + 35) & 1) == 0 && *(a1 + 34) != 1 || !*(a1 + 16) || (*(a1 + 284) & 1) == 0)
  {
    if (!a4)
    {
      v24 = 0;
LABEL_24:
      *(a1 + 120) = v24;
      if (*(a1 + 112) == 1 && *(a1 + 107) == 1 && v24 != 1 && *(a1 + 161) == 1)
      {
        sub_298C049DC(a1, a2);
      }

      return;
    }

    if (a4 < 8)
    {
      v12 = 0;
      v11 = 0;
      v13 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      if (a4)
      {
        v13 = 0;
        if (!((a4 - 1) >> 32))
        {
          v12 = a4 & 0x1FFFFFFF8;
          v14 = (a4 & 0x1FFFFFFF8) - 24;
          if ((a4 & 0x1FFFFFFF8) <= 0x18 && ((1 << v12) & 0x1010100) != 0)
          {
            v15 = vmovl_u16(*a3);
            v16.i64[0] = v15.u32[0];
            v16.i64[1] = v15.u32[1];
            v17 = v16;
            v16.i64[0] = v15.u32[2];
            v16.i64[1] = v15.u32[3];
            a5 = vshlq_u64(v16, xmmword_298D1B3A0);
            a6 = vshlq_u64(v17, xmmword_298D1ABD0);
          }

          else
          {
            v25 = &a3[6];
            v26 = xmmword_298D1B3B0;
            v27 = xmmword_298D1B3C0;
            v28.i64[0] = 0x800000008;
            v28.i64[1] = 0x800000008;
            do
            {
              v29 = *v25++;
              v30 = vmovl_high_u16(v29);
              v31.i64[0] = v30.u32[2];
              v31.i64[1] = v30.u32[3];
              v32 = v31;
              v31.i64[0] = v30.u32[0];
              v31.i64[1] = v30.u32[1];
              v33 = v31;
              v34 = vmovl_u16(*v29.i8);
              v31.i64[0] = v34.u32[2];
              v31.i64[1] = v34.u32[3];
              v35 = v31;
              v31.i64[0] = v34.u32[0];
              v31.i64[1] = v34.u32[1];
              v36 = v31;
              v37 = vshlq_n_s32(v27, 4uLL);
              v38 = vshlq_n_s32(v26, 4uLL);
              v31.i64[0] = v38.u32[2];
              v31.i64[1] = v38.u32[3];
              v39 = v31;
              v31.i64[0] = v38.u32[0];
              v31.i64[1] = v38.u32[1];
              v40 = v31;
              v31.i64[0] = v37.u32[2];
              v31.i64[1] = v37.u32[3];
              v41 = v31;
              v31.i64[0] = v37.u32[0];
              v31.i64[1] = v37.u32[1];
              a11 = vorrq_s8(vshlq_u64(v32, v39), a11);
              a9 = vorrq_s8(vshlq_u64(v33, v40), a9);
              a5 = vorrq_s8(vshlq_u64(v35, v41), a5);
              a6 = vorrq_s8(vshlq_u64(v36, v31), a6);
              v27 = vaddq_s32(v27, v28);
              v26 = vaddq_s32(v26, v28);
              v14 -= 8;
            }

            while (v14);
          }

          v18 = vorrq_s8(vorrq_s8(a6, a9), vorrq_s8(a5, a11));
          v13 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
          if (v12 == a4)
          {
LABEL_22:
            v24 = (*&v13 << 16) >> 16;
            if ((v13.i8[0] & 3) != 0)
            {
              v24 &= 0xFFFFFFFFFFFFFFFCLL;
              ++*(a1 + 400);
            }

            goto LABEL_24;
          }

          v11 = a4 & 0xFFFFFFF8;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    v19 = a3->u16[v12];
    v20 = 16 * v11;
    *&v13 |= v19 << (16 * v11);
    if ((v11 + 1) < a4)
    {
      *&v13 |= a3->u16[v11 + 1] << (16 * (v11 + 1));
      if ((v11 + 2) < a4)
      {
        *&v13 |= a3->u16[v11 + 2] << (16 * (v11 + 2));
        if ((v11 + 3) < a4)
        {
          *&v13 |= a3->u16[v11 + 3] << (16 * (v11 + 3));
          if ((v11 + 4) < a4)
          {
            *&v13 |= a3->u16[v11 + 4] << (16 * (v11 + 4));
            v21 = (v11 + 5);
            if (v21 < a4)
            {
              v22 = v11 + 6;
              v23 = v20 + 80;
              do
              {
                *&v13 |= a3->u16[v21] << v23;
                v21 = v22++;
                v23 += 16;
              }

              while (v21 < a4);
            }
          }
        }
      }
    }

    goto LABEL_22;
  }
}

uint64_t sub_298C02A2C(uint64_t result, unsigned int a2)
{
  v2 = *(result + 344);
  v3 = v2 + 96273;
  v4 = v2[96273];
  if (v4 && (*(result + 29) == 1 && (*(result + 35) & 1) == 0 && *(result + 34) != 1 || !*(result + 16) || (*(result + 284) & 1) == 0))
  {
    v5 = v2[96277];
    v6 = *(v2[1] + 8) - v5 + v2[6148];
    v7 = v6;
    if (!a2)
    {
LABEL_13:
      v3[4] = v7 + v5;
      return result;
    }

    if (v6)
    {
      v8 = a2 / v6;
      v9 = a2 % v6;
      v10 = v2 + 2;
      v11 = 0;
      v12 = v6 - 1;
      if (v6 == 1)
      {
        goto LABEL_8;
      }

      v17 = !is_mul_ok(v12, 0xCuLL);
      if ((~v5 & 0xFFFu) < (v12 & 0xFFF))
      {
        goto LABEL_8;
      }

      v18 = v2 + 12 * (v2[96277] & 0xFFFLL) + 24;
      v19 = v12 <= 0xFFF && v18 + 12 * v12 >= v18;
      if (!v19 || v17)
      {
        goto LABEL_8;
      }

      v20 = 0;
      v11 = v6 - (v6 & 1);
      result = v3[4];
      do
      {
        if (v20 >= v9)
        {
          v21 = v8;
        }

        else
        {
          v21 = v8 + 1;
        }

        if (v20 + 1 >= v9)
        {
          v22 = v8;
        }

        else
        {
          v22 = v8 + 1;
        }

        v23 = v10 + 12 * ((result + 1) & 0xFFF);
        v24 = *(v23 + 2) & 0xFFC00000 | v22 & 0x3FFFFF;
        *(v10 + 3 * (result & 0xFFF) + 2) = *(v10 + 3 * (result & 0xFFF) + 2) & 0xFFC00000 | v21 & 0x3FFFFF;
        *(v23 + 2) = v24;
        result += 2;
        v20 += 2;
      }

      while (v20 != v11);
      if (v6)
      {
LABEL_8:
        v13 = v6 - v11;
        v14 = v11 + v5;
        do
        {
          if (v11 >= v9)
          {
            result = v8;
          }

          else
          {
            result = v8 + 1;
          }

          *(v10 + 3 * (v14 & 0xFFF) + 2) = *(v10 + 3 * (v14 & 0xFFF) + 2) & 0xFFC00000 | result & 0x3FFFFF;
          ++v11;
          ++v14;
          --v13;
        }

        while (v13);
      }

      goto LABEL_13;
    }

    v15 = *(v4 + 8);
    v16 = (*&v15 & 0x3FFFFFLL) + a2;
    if (v16 >= 0x3FFFFF)
    {
      LODWORD(v16) = 0x3FFFFF;
    }

    *(v4 + 8) = v15 & 0xFFC00000 | v16;
  }

  return result;
}

double sub_298C02BD0(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = (a1 + 168);
  *(a1 + 168 + 8 * a2) = a3;
  v4 = *(a1 + 248) + 1;
  *(a1 + 248) = v4;
  if (v4 == *(a1 + 30))
  {
    v5 = *(a1 + 344);
    v6 = v5 + 34824;
    v7 = v5[75786];
    if (v7 == 4096)
    {
      v8 = 4096;
    }

    else
    {
      v9 = v5[75785];
      memmove(&v6[10 * (v9 & 0xFFF)], v3, 0x50uLL);
      v8 = v7 + 1;
      v5[75785] = v9 + 1;
      v5[75786] = v7 + 1;
      if ((v7 + 1) < 0x841)
      {
LABEL_9:
        *(v3 + 10) = 0;
        result = 0.0;
        v3[3] = 0u;
        v3[4] = 0u;
        v3[1] = 0u;
        v3[2] = 0u;
        *v3 = 0u;
        return result;
      }
    }

    v10 = v5[1];
    v11 = v5[75784];
    if ((4096 - v11) >= 0x800)
    {
      v12 = 2048;
    }

    else
    {
      v12 = 4096 - v11;
    }

    v5[75786] = v8 - v12;
    v5[75784] = (v12 + v11) & 0xFFF;
    (*(*v10 + 96))(v10, &v6[10 * v11]);
    goto LABEL_9;
  }

  return result;
}

void sub_298C02CE4(uint64_t a1)
{
  ++*(a1 + 392);
  sub_298C03154(a1);

  sub_298BFBAAC(a1 + 96);
}

uint64_t sub_298C02D28(uint64_t a1, uint64_t a2)
{
  result = sub_298BFC52C(a1 + 64, a2 + 64, (a1 + 24));
  if (!result)
  {
    result = sub_298C02DE8(a1 + 336, a2 + 336, a1 + 24);
    if (!result)
    {
      v5 = *(a1 + 344);
      if (!(*(v5 + 704616) + *(*(v5 + 8) + 16)))
      {
        return 0;
      }

      if (*(a1 + 256) == **(v5 + 770200))
      {
        return 14;
      }

      else
      {
        if ((*(a1 + 272) & 1) == 0)
        {
          return 0;
        }

        return 13;
      }
    }
  }

  return result;
}

uint64_t sub_298C02DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = (v3 + 770184);
  v5 = HIBYTE(*(v3 + 770208));
  v6 = *(a2 + 8);
  v7 = *(v6 + 770208);
  if (v5 == v7 >> 8 && (v5 & 1) != 0)
  {
    if (*(v3 + 770208) != v7)
    {
      return 2;
    }
  }

  else if (v5 != v7 >> 8)
  {
    return 2;
  }

  v9 = *(v3 + 770216);
  v10 = *(v3 + 8);
  if (v9 != *(v3 + 49184) + *(v10 + 8))
  {
    return 6;
  }

  v11 = *(v6 + 770216);
  v12 = *(v6 + 8);
  if (v11 != *(v6 + 49184) + *(v12 + 8))
  {
    return 6;
  }

  if (*(v3 + 704616) + *(v10 + 16))
  {
    v14 = **(v3 + 770200);
    v13 = 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (*(v6 + 704616) + *(v12 + 16))
  {
    v16 = **(v6 + 770200);
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v13 == v15 && v13)
  {
    if (v14 != v16)
    {
      return 12;
    }
  }

  else if (v13 != v15)
  {
    return 12;
  }

  v17 = *(v3 + 770232);
  v18 = *(v6 + 770232);
  if (v18 == v17 && (v17 & 1) != 0)
  {
    if (*(v3 + 770224) != *(v6 + 770224))
    {
      return 13;
    }
  }

  else if (v18 != v17)
  {
    return 13;
  }

  v19 = *(v3 + 770192);
  if (v19 && (v19[3] >= v9 || (*v19 != -1 || v19[1] != -1 || v19[5] != -1 || v19[6] != -1) && *(a3 + 4) == 1 && v19[5] == -1))
  {
    return 3;
  }

  v20 = *v4;
  v21 = *(v6 + 770184);
  if (!*v4)
  {
    if (!v21)
    {
      return 0;
    }

    return 10;
  }

  if (!v21)
  {
    return 10;
  }

  v22 = *v21;
  v23 = *(v21 + 2);
  if (*v20 != v22 || *(v20 + 8) != v23)
  {
    return 10;
  }

  if ((*(v20 + 10) & 0x3C0) != 0)
  {
    v25 = *(*(v3 + 770200) + 8);
    v26 = *(*(v6 + 770200) + 8);
    v27 = v9 - v25;
    if (v27 == v11 - v26)
    {
      if (v27 <= 1)
      {
        v27 = 1;
      }

      v28 = v27 - 1;
      v29 = v3 + 16;
      v30 = v6 + 16;
      result = 10;
      while (v28)
      {
        v31 = (v29 + 12 * (v25 & 0xFFF));
        v32 = (v30 + 12 * (v26 & 0xFFF));
        v33 = *v31;
        v34 = *v32;
        v35 = *(v31 + 2);
        v36 = *(v32 + 2);
        v37 = v33 == v34 && v35 == v36;
        LOWORD(v25) = v25 + 1;
        LOWORD(v26) = v26 + 1;
        --v28;
        if (!v37)
        {
          return result;
        }
      }

      return 0;
    }

    return 10;
  }

  return 11;
}

void sub_298C03064(uint64_t a1)
{
  v2 = *(*(a1 + 344) + 770184);
  if (v2)
  {
    v9 = *(v2 + 8);
    if ((v9 & 0x3C00000) == 0)
    {
      *(v2 + 8) = v9 | 0x800000;
      if (!(*v2 >> 47))
      {
        *v2 |= 0x800000000000uLL;
      }
    }
  }

  v3 = *(a1 + 344);
  v4 = v3[96273];
  if (v4)
  {
    v8 = *(v4 + 8);
    if ((v8 & 0x3C00000) == 0x400000)
    {
      *(v4 + 8) = v8 & 0xFC3FFFFF | 0x800000;
      v3 = *(a1 + 344);
    }
  }

  v5 = v3[96277];
  v6 = *(v3[1] + 8);
  v7 = v3[6148];
  if (v5 != v7 + v6)
  {
    v3[96277] = (v6 - v5 + v7) + v5;
  }

  sub_298C0D2BC(v3);
  sub_298C0D500(*(a1 + 344));

  sub_298BFD584(a1);
}

void sub_298C03154(uint64_t a1)
{
  v1 = *(a1 + 344);
  v2 = *(v1 + 770184);
  if (v2)
  {
    *(v2 + 8) = *(v2 + 8) & 0xFC3FFFFF | 0x400000;
    if (!(*v2 >> 47))
    {
      *v2 |= 0x800000000000uLL;
    }

    v1 = *(a1 + 344);
    *(v1 + 770216) += *(*(v1 + 8) + 8) - *(v1 + 770216) + *(v1 + 49184);
  }

  *(v1 + 770208) = 0;
  ++*(a1 + 360);
  sub_298BFC490(a1 + 64);
}

void sub_298C031E0(void *a1)
{
  v2 = a1[9];
  v3 = a1[15];
  v4 = a1[43];
  v5 = *(v4 + 770184);
  if (v5)
  {
    *(v5 + 8) = *(v5 + 8) & 0xFC3FFFFF | 0x400000;
    if (!(*v5 >> 47))
    {
      *v5 |= 0x800000000000uLL;
    }

    v4 = a1[43];
    *(v4 + 770216) += *(*(v4 + 8) + 8) - *(v4 + 770216) + *(v4 + 49184);
  }

  *(v4 + 770208) = 0;
  ++a1[45];
  sub_298BFC490((a1 + 8));
  a1[15] = v3;
  a1[9] = v2;
}

void sub_298C032A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v64 = *MEMORY[0x29EDCA608];
  v5 = (a1 + 64);
  v4 = *(a1 + 64);
  if (v4 >= a3)
  {
    if (*(a1 + 24) != 1)
    {
      sub_298B868A8("Cannot walk forward to target PC", 1);
    }

    if (*(a1 + 84) == 1)
    {
      ++*(a1 + 416);
    }

    v11 = *MEMORY[0x29EDCA608];

    sub_298C031E0(a1);
    return;
  }

  v8 = *(a1 + 344) + 770048;
  v9 = *(*(a1 + 344) + 770184);
  if (!v9 || (*(v9 + 10) & 0x3C0) != 0)
  {
    sub_298C04264(a1, *(a2 + 40), v4 + 4);
    v4 = *(a1 + 64);
    if (v4 == a3)
    {
      goto LABEL_4;
    }
  }

  if (sub_298C08E00((*(a1 + 720) + 131168), v4, a3))
  {
    v12 = *MEMORY[0x29EDCA608];

    sub_298C04340(a1, a2, a3);
    return;
  }

  v59[0] = 0;
  v59[1] = 0;
  v60 = v62;
  v61 = 0xA00000000;
  v62[20] = 0;
  v63 = 0;
  v13 = *(a1 + 64);
  while (1)
  {
    if ((v14 = *(a1 + 56), v15 = *(a1 + 720), (v16 = v15[3]) == 0) || (v17 = *(v8 + 192), *(v16 + 144) > v17) || (*(v16 + 152) > v17 ? (v18 = v15[1] > v13) : (v18 = 1), !v18 ? (v19 = v15[2] > v13) : (v19 = 0), !v19))
    {
      v20 = *(v14 + 48);
      v21 = (*(v14 + 56) - v20) >> 4;
      v22 = 1;
      if (v21 >= 2)
      {
        do
        {
          v34 = (v20 + 16 * v22);
          v33 = *v34 < v13 && v34[1] <= v13;
          v22 = v33 | (2 * v22);
        }

        while (v22 < v21);
      }

      v23 = __clz(__rbit32(~v22));
      v24 = v22 == -1 ? 0 : v23 + 1;
      v25 = (v20 + 16 * (v22 >> v24));
      if (*v25 <= v13 && v25[1] > v13)
      {
        break;
      }
    }

    if (sub_298BDA9EC(*(a1 + 56), *(*(a1 + 344) + 770240), v13, *(a1 + 720)) || ((*(**(v14 + 816) + 24))(*(v14 + 816), v59, *(v15[3] + 48) + v13 - v15[1], 4, v13) & 1) == 0)
    {
      ++*(a1 + 368);
      v35 = *(a1 + 344);
      v36 = *(v35 + 770184);
      if (v36)
      {
        *(v36 + 8) = *(v36 + 8) & 0xFC3FFFFF | 0x400000;
        if (!(*v36 >> 47))
        {
          *v36 |= 0x800000000000uLL;
        }

        v35 = *(a1 + 344);
        *(v35 + 770216) += *(*(v35 + 8) + 8) - *(v35 + 770216) + *(v35 + 49184);
      }

      *(v35 + 770208) = 0;
      ++*(a1 + 360);
      sub_298BFC490(v5);
      goto LABEL_47;
    }

    v26 = *(a1 + 344);
    v27 = *(v26 + 770184);
    v28 = *v27;
    v29 = *v27 >> 47;
    v30 = v29 + 1;
    if ((v29 + 1) < 0x1FFFF)
    {
      v31 = (v29 + 1);
    }

    else
    {
      v31 = 0x1FFFFLL;
    }

    *v27 = v28 & 0x7FFFFFFFFFFFLL | (v31 << 47);
    v32 = v30 - v31;
    if (v30 != v31)
    {
      do
      {
        *(v27 + 2) = v27[1] & 0xFC3FFFFF | 0x2400000;
        sub_298BFC704(v26, *(a2 + 40), ((v28 << 17) >> 15) + 4 * v31);
        v27 = *(v26 + 770184);
        v28 = *v27;
        v40 = v32 + (*v27 >> 47);
        if (v40 >= 0x1FFFF)
        {
          v31 = 0x1FFFFLL;
        }

        else
        {
          v31 = v40;
        }

        *v27 = v28 & 0x7FFFFFFFFFFFLL | (v31 << 47);
        v32 = v40 - v31;
      }

      while (v40 != v31);
    }

    v13 = *v5 + 4;
    *v5 = v13;
    if (v63)
    {
      *(*(v8 + 136) + 8) = *(*(v8 + 136) + 8) & 0xFC3FFFFF | 0x800000;
      sub_298C04264(a1, *(a2 + 40), a3);
      *(a1 + 85) = 0;
      goto LABEL_47;
    }

    if (v13 == a3)
    {
      goto LABEL_54;
    }
  }

  if (a3 - v13 >= 0x10)
  {
    if (*(a1 + 24) != 1)
    {
      sub_298B868A8("walkToPC failed to skip past branch island", 1);
    }

    if (*(a1 + 84) == 1)
    {
      ++*(a1 + 416);
    }

    sub_298C031E0(a1);
    goto LABEL_47;
  }

  sub_298C04340(a1, a2, a3);
LABEL_54:
  v37 = *(a1 + 720);
  v38 = v37 + 16396;
  v39 = sub_298C08E00(v37 + 16396, v4, a3);
  if (v39)
  {
    goto LABEL_55;
  }

  v41 = v37[16398];
  v42 = v37 + 16399;
  if (*v38 == 1024)
  {
    v43 = -1;
    v44 = v37[16398];
    v45 = v44;
    while (1)
    {
      v46 = &v42[3 * v44];
      v47 = *(v46 + 9);
      *(v46 + 9) >>= 1;
      if (v47 < 2)
      {
        break;
      }

      if (v47 >> 1 < v43)
      {
        v45 = v44;
        v43 = v47 >> 1;
      }

      v44 = (v44 + 1) & 0x3FF;
      v37[16398] = v44;
      if (v44 == v41)
      {
        v37[16398] = v45;
        v46 = &v42[3 * v45];
        break;
      }
    }

    sub_298C08F44(v37 + 19471, *v46, v46[1]);
    --*v38;
    v41 = v37[16398];
  }

  v48 = &v42[3 * v41];
  *v48 = v4;
  v48[1] = a3;
  *(v48 + 4) = -65536;
  v39 = v48 + 2;
  v49 = v37[16398];
  v50 = v4 ^ a3;
  v51 = v37[19472];
  if (!*&v51)
  {
    goto LABEL_71;
  }

  v52 = vcnt_s8(v51);
  v52.i16[0] = vaddlv_u8(v52);
  if (v52.u32[0] <= 1uLL)
  {
    v53 = (*&v51 - 1) & v50;
  }

  else
  {
    v53 = v4 ^ a3;
    if (v50 >= *&v51)
    {
      v53 = v50 % *&v51;
    }
  }

  v54 = *(v37[19471] + 8 * v53);
  if (!v54 || (v55 = *v54) == 0)
  {
LABEL_71:
    operator new();
  }

  while (1)
  {
    v56 = v55[1];
    if (v56 == v50)
    {
      break;
    }

    if (v52.u32[0] <= 1uLL)
    {
      v56 &= *&v51 - 1;
    }

    else if (v56 >= *&v51)
    {
      v56 %= *&v51;
    }

    if (v56 != v53)
    {
      goto LABEL_71;
    }

LABEL_94:
    v55 = *v55;
    if (!v55)
    {
      goto LABEL_71;
    }
  }

  if (v55[2] != v4 || v55[3] != a3)
  {
    goto LABEL_94;
  }

  v55[4] = v49;
  v58 = v38[2];
  ++*v38;
  v38[1] = v58;
  v38[2] = (v58 + 1) & 0x3FF;
LABEL_55:
  *v39 = 1;
LABEL_47:
  if (v60 != v62)
  {
    free(v60);
  }

LABEL_4:
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C03B24(void *a1, unint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v28 = a2;
  v2 = a1[90];
  v3 = *(v2 + 155808);
  v4 = *(v2 + 155824);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = v5 & (37 * a2);
    v7 = *(v3 + 8 * v6);
    if (v7 == a2)
    {
      v8 = 1;
      goto LABEL_4;
    }

    v11 = 1;
    v8 = 1;
    while (v7 != -1)
    {
      v12 = v6 + v11++;
      v6 = v12 & v5;
      v7 = *(v3 + 8 * v6);
      if (v7 == a2)
      {
        goto LABEL_4;
      }
    }
  }

  v29[0] = 0;
  v29[1] = 0;
  v30 = v32;
  v31 = 0xA00000000;
  v32[20] = 0;
  v33 = 0;
  v13 = a1[7];
  if (sub_298BDA9EC(v13, *(a1[43] + 770240), a2, v2) || ((*(**(v13 + 816) + 24))(*(v13 + 816), v29, *(*(v2 + 24) + 48) + a2 - *(v2 + 8), 4, a2) ? (v15 = v33 == 6) : (v15 = 0), !v15))
  {
    v8 = 0;
    goto LABEL_15;
  }

  v16 = *(v2 + 155824);
  if (!v16)
  {
    v22 = 0;
LABEL_21:
    v23 = sub_298AFFD94((v2 + 155808), &v28, &v28, v22);
    *v23 = v28;
    goto LABEL_19;
  }

  v17 = *(v2 + 155808);
  v18 = v16 - 1;
  v19 = v18 & (37 * a2);
  v20 = (v17 + 8 * v19);
  v21 = *v20;
  if (*v20 != a2)
  {
    v24 = 0;
    v25 = 1;
    v8 = 1;
    while (v21 != -1)
    {
      if (v24)
      {
        v26 = 0;
      }

      else
      {
        v26 = v21 == -2;
      }

      if (v26)
      {
        v24 = v20;
      }

      v27 = v19 + v25++;
      v19 = v27 & v18;
      v20 = (v17 + 8 * v19);
      v21 = *v20;
      if (*v20 == a2)
      {
        goto LABEL_15;
      }
    }

    if (v24)
    {
      v22 = v24;
    }

    else
    {
      v22 = v20;
    }

    goto LABEL_21;
  }

LABEL_19:
  v8 = 1;
LABEL_15:
  if (v30 != v32)
  {
    free(v30);
  }

LABEL_4:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_298C03D60(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 344) + 770048;
  if (*(a1 + 87) == 1)
  {
    v7 = *(a1 + 109);
    if (*(a1 + 107) != 1)
    {
      v8 = *(a1 + 98);
      if (*(a1 + 109))
      {
        if (v8 != 1)
        {
          if (v8 == 2)
          {
            v9 = *(a1 + 152);
            if (v9 != 1)
            {
              goto LABEL_20;
            }

LABEL_16:
            v9 = 0;
            v10 = 0;
            goto LABEL_25;
          }

          goto LABEL_19;
        }
      }

      else
      {
        if (v8 != 1)
        {
LABEL_19:
          v9 = *(a1 + 144);
          if (v9 == 1)
          {
            goto LABEL_16;
          }

          goto LABEL_20;
        }

        v8 = 0;
      }

      v9 = *(a1 + 8 * v8 + 128);
      if (v9 == 1)
      {
        goto LABEL_16;
      }

LABEL_20:
      v3 = *(a1 + 96);
      v2 = *(a1 + 104);
      goto LABEL_24;
    }

    v11 = *(a1 + 97);
    if (*(a1 + 109))
    {
      if (v11 == 1)
      {
LABEL_22:
        v9 = *(a1 + 120);
        *(a1 + 8 * v11 + 128) = v9;
        v3 = *(a1 + 96);
        v2 = *(a1 + 104);
        v10 = 1;
        *(a1 + 120) = 1;
        if (*(a1 + 161) != 1)
        {
          goto LABEL_25;
        }

        *(a1 + 161) = 0;
LABEL_24:
        v10 = 1;
LABEL_25:
        if (*(a1 + 112) == 1)
        {
          *(a1 + 112) = 0;
        }

        goto LABEL_27;
      }

      if (v11 == 2)
      {
        v11 = 3;
        goto LABEL_22;
      }
    }

    else if (v11 == 1)
    {
      v11 = 0;
      goto LABEL_22;
    }

    v11 = 2;
    goto LABEL_22;
  }

  v9 = 0;
  v10 = 0;
LABEL_27:
  *(*(v6 + 136) + 8) = *(*(v6 + 136) + 8) & 0xFC3FFFFF | 0x1800000;
  *(a1 + 87) = 0;
  if (v10)
  {
    v12 = *(a1 + 56);
    v13 = sub_298BDA9EC(v12, *(v6 + 192), v9, *(a1 + 720));
    if ((v13 - 2) >= 3)
    {
      if (v13 != 1)
      {
        goto LABEL_45;
      }

      v18 = *(v12 + 48);
      v19 = (*(v12 + 56) - v18) >> 4;
      v20 = 1;
      if (v19 >= 2)
      {
        do
        {
          while (1)
          {
            v21 = (v18 + 16 * v20);
            if (*v21 >= v9)
            {
              break;
            }

            v20 = (v21[1] <= v9) | (2 * v20);
            if (v20 >= v19)
            {
              goto LABEL_37;
            }
          }

          v20 *= 2;
        }

        while (v20 < v19);
      }

LABEL_37:
      v22 = __clz(__rbit32(~v20));
      v23 = v20 == -1 ? 0 : v22 + 1;
      v24 = (v18 + 16 * (v20 >> v23));
      if (*v24 <= v9 && v24[1] > v9)
      {
LABEL_45:
        if ((v3 & 0x1FF0000) == 0x1020000 && (v2 & 0x10000010000) == 0x10000000000 && BYTE1(v3) == 1 && *(a1 + 328) == 1)
        {
          sub_298BFF0D4(a1, a2, *(a1 + 320), *(a1 + 328), 1);
        }

        if ((v2 & 0x10000000000) == 0)
        {
          goto LABEL_48;
        }

        if ((v3 & 0xFF0000) == 0x20000)
        {
          v36 = BYTE1(v3);
          if ((v2 & 0x10000) == 0)
          {
            if (BYTE1(v3) >= 2u)
            {
              goto LABEL_81;
            }

            goto LABEL_71;
          }

          if (BYTE1(v3) >= 2u && *(a1 + 328) == 1)
          {
            *(a1 + 328) = 0;
          }
        }

        else if ((v2 & 0x10000) == 0)
        {
          v36 = BYTE1(v3);
LABEL_71:
          if (!v36)
          {
            v25 = 3;
            goto LABEL_50;
          }

          if (v36 == 1)
          {
            v25 = 4;
            goto LABEL_50;
          }

LABEL_81:
          v25 = 5;
          goto LABEL_50;
        }

LABEL_48:
        v25 = BYTE1(v3);
        if (((v3 >> 8) & 0xFE) != 0)
        {
          v25 = 2;
        }

LABEL_50:
        *(v6 + 160) = v25 | 0x100;
        v26 = *(a2 + 40);
        v27 = *(a1 + 344);
        v28 = *(v27 + 8);
        if (!(*(v27 + 704616) + *(v28 + 16)) || **(v27 + 770200) < v26)
        {
          v29 = *(v27 + 49184) + *(v28 + 8);
          v37 = v26;
          v38 = v29;
          v39 = *(v27 + 770240);
          sub_298C0D43C(v27, &v37);
        }

        v30 = *(v27 + 770208);
        v37 = (v9 >> 2) & 0x7FFFFFFFFFFFLL;
        v31 = v30 >> 8;
        v32 = (v30 & 7) << 26;
        if ((v31 & 1) == 0)
        {
          v32 = 0;
        }

        LODWORD(v38) = v32 | (v31 << 29);
        sub_298C0D1FC(v27, &v37);
        v33 = 0;
        ++**v27;
        *(a1 + 64) = v9;
        v35 = *(a1 + 8);
        v34 = *(a1 + 12);
        if (v35 > 6)
        {
          if ((v35 - 7) < 2)
          {
            v33 = 2;
            if (!v34 || v34 == 3)
            {
              goto LABEL_86;
            }

            if ((v2 & 0x10100000000) == 0)
            {
              goto LABEL_83;
            }

            v33 = 2;
            goto LABEL_86;
          }

          if (v35 != 9 && v35 != 10)
          {
            goto LABEL_86;
          }

          v33 = 2;
          if (!v34)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if ((v35 - 1) >= 5)
          {
            if (v35 == 6)
            {
              goto LABEL_83;
            }

            goto LABEL_86;
          }

          v33 = 0;
          if (!v34)
          {
            goto LABEL_86;
          }
        }

        if (v34 != 3)
        {
LABEL_83:
          if (*(a1 + 93) == 1)
          {
            v33 = 0;
            *(a1 + 93) = 0;
          }

          else
          {
            v33 = 1;
          }
        }

LABEL_86:
        *(a1 + 88) = v33;
        return;
      }
    }
  }

  ++*(a1 + 376);
  v14 = *(a1 + 72);
  v15 = *(a1 + 120);
  v16 = *(a1 + 344);
  v17 = *(v16 + 770184);
  if (v17)
  {
    *(v17 + 8) = *(v17 + 8) & 0xFC3FFFFF | 0x400000;
    if (!(*v17 >> 47))
    {
      *v17 |= 0x800000000000uLL;
    }

    v16 = *(a1 + 344);
    *(v16 + 770216) += *(*(v16 + 8) + 8) - *(v16 + 770216) + *(v16 + 49184);
  }

  *(v16 + 770208) = 0;
  ++*(a1 + 360);
  sub_298BFC490(a1 + 64);
  *(a1 + 120) = v15;
  *(a1 + 72) = v14;
}

void *sub_298C04264(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 344);
  v6 = *(v5 + 8);
  if (!(*(v5 + 704616) + *(v6 + 16)) || **(v5 + 770200) < a2)
  {
    v7 = *(v5 + 49184) + *(v6 + 8);
    v12 = a2;
    v13 = v7;
    v14 = *(v5 + 770240);
    sub_298C0D43C(v5, &v12);
  }

  v8 = *(v5 + 770208);
  v12 = (a3 >> 2) & 0x7FFFFFFFFFFFLL;
  v9 = v8 >> 8;
  v10 = (v8 & 7) << 26;
  if ((v9 & 1) == 0)
  {
    v10 = 0;
  }

  LODWORD(v13) = v10 | (v9 << 29);
  result = sub_298C0D1FC(v5, &v12);
  ++**v5;
  *(a1 + 64) = a3;
  return result;
}

void sub_298C04340(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = a3 >= v3;
  v5 = a3 - v3;
  if (v4)
  {
    if (v5)
    {
      v6 = v5 >> 2;
      v7 = *(a1 + 344);
      v8 = *(v7 + 770184);
      v9 = *v8;
      v10 = (*v8 >> 47) + v6;
      if (v10 >= 0x1FFFF)
      {
        v11 = 0x1FFFFLL;
      }

      else
      {
        v11 = v10;
      }

      *v8 = v9 & 0x7FFFFFFFFFFFLL | (v11 << 47);
      if (v10 >= 0x20000)
      {
        v12 = v10 - v11;
        *(v8 + 2) = v8[1] & 0xFC3FFFFF | 0x2400000;
        v13 = a1;
        v15 = a3;
        sub_298BFC704(v7, *(a2 + 40), ((v9 << 17) >> 15) + 4 * v11);
        a3 = v15;
        a1 = v13;
        v16 = *(v7 + 770184);
        v17 = *v16;
        v18 = v12 + (*v16 >> 47);
        v19 = v18 >= 0x1FFFF ? 0x1FFFFLL : v18;
        *v16 = v17 & 0x7FFFFFFFFFFFLL | (v19 << 47);
        v20 = v18 - v19;
        if (v20)
        {
          v21 = a2;
          do
          {
            *(v16 + 2) = v16[1] & 0xFC3FFFFF | 0x2400000;
            v22 = v20;
            sub_298BFC704(v7, *(v21 + 40), ((v17 << 17) >> 15) + 4 * v19);
            v21 = a2;
            a3 = v15;
            a1 = v13;
            v16 = *(v7 + 770184);
            v17 = *v16;
            v23 = v22 + (*v16 >> 47);
            if (v23 >= 0x1FFFF)
            {
              v19 = 0x1FFFFLL;
            }

            else
            {
              v19 = v23;
            }

            *v16 = v17 & 0x7FFFFFFFFFFFLL | (v19 << 47);
            v20 = v23 - v19;
          }

          while (v20);
        }
      }

      *(a1 + 64) = a3;
    }
  }

  else
  {
    if (*(a1 + 24) != 1)
    {
      sub_298B868A8("Cannot skip forward to target PC", 1);
    }

    if (*(a1 + 84) == 1)
    {
      ++*(a1 + 416);
    }

    sub_298C031E0(a1);
  }
}

void sub_298C044F8(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(*(a2 + 344) + 770184);
    *(v2 + 8) = *(v2 + 8) & 0xFC3FFFFF | 0x800000;
    if (!(*v2 >> 47))
    {
      *v2 |= 0x800000000000uLL;
    }

    *(a2 + 85) = 1;
  }

  else
  {
    if (*(a2 + 24) != 1)
    {
      sub_298B868A8("Branch island branch not taken", 1);
    }

    if (*(a2 + 84) == 1)
    {
      ++*(a2 + 416);
    }

    v3 = *(a2 + 72);
    v4 = *(a2 + 120);
    v5 = *(a2 + 344);
    v6 = *(v5 + 770184);
    if (v6)
    {
      *(v6 + 8) = *(v6 + 8) & 0xFC3FFFFF | 0x400000;
      if (!(*v6 >> 47))
      {
        *v6 |= 0x800000000000uLL;
      }

      v5 = *(a2 + 344);
      *(v5 + 770216) += *(*(v5 + 8) + 8) - *(v5 + 770216) + *(v5 + 49184);
    }

    *(v5 + 770208) = 0;
    ++*(a2 + 360);
    sub_298BFC490(a2 + 64);
    *(a2 + 120) = v4;
    *(a2 + 72) = v3;
  }
}

void sub_298C04640(void *a1)
{
  ++a1[51];
  v2 = a1[9];
  v3 = a1[15];
  v4 = a1[43];
  v5 = *(v4 + 770184);
  if (v5)
  {
    *(v5 + 8) = *(v5 + 8) & 0xFC3FFFFF | 0x400000;
    if (!(*v5 >> 47))
    {
      *v5 |= 0x800000000000uLL;
    }

    v4 = a1[43];
    *(v4 + 770216) += *(*(v4 + 8) + 8) - *(v4 + 770216) + *(v4 + 49184);
  }

  *(v4 + 770208) = 0;
  ++a1[45];
  sub_298BFC490((a1 + 8));
  a1[15] = v3;
  a1[9] = v2;
}

void *sub_298C04710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_298C0D2BC(*(a1 + 344));
  v9 = *(a1 + 344);
  v10 = (v9 + 96275);
  v11 = v9 + 88075;
  v12 = v9[1];
  v13 = v9[88077];
  if (v13 + v12[2])
  {
    v14 = *(a2 + 40);
    if (**v10 >= v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v14 = *(a2 + 40);
  }

  v15 = v9 + 75787;
  if (v13 == 4096)
  {
    *v10 = 0;
  }

  else
  {
    v16 = v9[96280];
    v17 = v12[1] + v9[6148];
    v18 = v11[1];
    v19 = &v15[3 * (v18 & 0xFFF)];
    *v19 = v14;
    v19[1] = v17;
    v19[2] = v16;
    ++v13;
    v11[1] = v18 + 1;
    v11[2] = v13;
    *v10 = v19;
    if (v13 < 0x841)
    {
      goto LABEL_11;
    }
  }

  v20 = *v11;
  v21 = &v15[3 * *v11];
  if ((4096 - *v11) >= 0x800)
  {
    v22 = 2048;
  }

  else
  {
    v22 = 4096 - *v11;
  }

  v11[2] = v13 - v22;
  *v11 = (v22 + v20) & 0xFFF;
  (*(*v12 + 80))(v12, v21, v8);
LABEL_11:
  v23 = *(a1 + 344);
  result = v23[1];
  v25 = v23[6148];
  v26 = result[2] + v23[88077] - 1;
  v27 = v25 + result[1];
  v28 = v23[96272] + result[5];
  v29 = v23[96274];
  if (v29 && v29[3] == v27)
  {
    *v29 = a3;
    v29[1] = a4;
    v29[2] = v26;
    v29[4] = v28;
    v29[5] = -1;
    v29[6] = -1;
    return result;
  }

  v30 = v23 + 34821;
  v31 = v23[34823];
  if (v31 == 4096)
  {
    v23[96274] = 0;
    v32 = 4096;
  }

  else
  {
    v33 = v23[34822];
    v34 = &v23[7 * (v33 & 0xFFF) + 6149];
    *v34 = a3;
    v34[1] = a4;
    v34[2] = v26;
    v34[3] = v27;
    v34[4] = v28;
    v34[5] = -1;
    v34[6] = -1;
    v32 = v31 + 1;
    v23[34822] = v33 + 1;
    v23[34823] = v31 + 1;
    v23[96274] = v34;
    if ((v31 + 1) < 0x841)
    {
      return result;
    }
  }

  v35 = *v30;
  if (*v30 != 4096)
  {
    if (4096 - v35 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = 4096 - v35;
    }

    v37 = v25 + result[1];
    v38 = &v23[7 * v36 + 6145 + 7 * v35];
    while (1)
    {
      v39 = *v38;
      v38 -= 7;
      if (v39 < v37)
      {
        break;
      }

      if (!--v36)
      {
        goto LABEL_33;
      }
    }

    if (v32 >= v36)
    {
      v40 = v36;
    }

    else
    {
      v40 = v32;
    }

    if (4096 - v35 >= v40)
    {
      v41 = v40;
    }

    else
    {
      v41 = 4096 - v35;
    }

    v30[2] = v32 - v41;
    *v30 = (v41 + v35) & 0xFFF;
  }

LABEL_33:
  v42 = *(*result + 88);

  return v42();
}

void sub_298C049DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 86) = 0;
  v6 = *(a1 + 109);
  if (*(a1 + 107) != 1)
  {
    v7 = *(a1 + 98);
    if (*(a1 + 109))
    {
      if (v7 == 1)
      {
        goto LABEL_6;
      }

      if (v7 == 2)
      {
        v7 = 3;
        goto LABEL_6;
      }
    }

    else if (v7 == 1)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v7 = 2;
LABEL_6:
    v8 = *(a1 + 8 * v7 + 128);
    if (v8 == 1)
    {
      v9 = 0;
      LOBYTE(v10) = 0;
      LOWORD(v37) = 0;
      v11 = 0;
      v38 = 0;
      LOBYTE(v12) = 0;
      LOBYTE(v8) = 0;
      v13 = 0;
      LOBYTE(v41) = *(a1 + 109);
      LOBYTE(v40) = v41;
      LOBYTE(v39) = v41;
    }

    else
    {
      v36 = 0;
      v13 = v8 >> 8;
      v12 = *(a1 + 96);
      v10 = *(a1 + 104);
      v9 = BYTE1(v12);
      v38 = BYTE2(v12);
      v2 = HIDWORD(v12);
      v37 = v10 >> 24;
      v3 = v10 >> 40;
      v11 = HIWORD(v10);
      v40 = v10 >> 8;
      v41 = v10 >> 16;
      v39 = v12 >> 24;
    }

    goto LABEL_21;
  }

  v14 = *(a1 + 97);
  if (*(a1 + 109))
  {
    if (v14 == 1)
    {
      goto LABEL_19;
    }

    if (v14 == 2)
    {
      v14 = 3;
      goto LABEL_19;
    }
  }

  else if (v14 == 1)
  {
    v14 = 0;
    goto LABEL_19;
  }

  v14 = 2;
LABEL_19:
  v8 = *(a1 + 120);
  *(a1 + 8 * v14 + 128) = v8;
  v12 = *(a1 + 96);
  v10 = *(a1 + 104);
  v36 = *(a1 + 160);
  v13 = v8 >> 8;
  v9 = BYTE1(v12);
  v38 = BYTE2(v12);
  v39 = v12 >> 24;
  v2 = HIDWORD(v12);
  v40 = v10 >> 8;
  v41 = v10 >> 16;
  v37 = v10 >> 24;
  v3 = v10 >> 40;
  v11 = HIWORD(v10);
  *(a1 + 120) = 1;
  if (*(a1 + 161) == 1)
  {
    *(a1 + 161) = 0;
  }

LABEL_21:
  if (*(a1 + 112) == 1)
  {
    *(a1 + 112) = 0;
  }

  v15 = v8 | (v13 << 8);
  if (v2 != 9)
  {
    if (*(a1 + 16))
    {
      v16 = *(a1 + 344);
      v17 = v16[96274];
      if (v17)
      {
        v18 = v16[96273];
        if (v18)
        {
          if (*(v17 + 24) == v16[6148] + *(v16[1] + 8))
          {
            v19 = *(v18 + 8);
            if ((v19 & 0x3C00000) != 0x400000)
            {
              *(v18 + 8) = v19 & 0xFC3FFFFF | 0x800000;
              if (!(*v18 >> 47))
              {
                *v18 |= 0x800000000000uLL;
              }

              *(a1 + 85) = 1;
            }
          }
        }
      }
    }
  }

  v20 = *(a1 + 64);
  if (v20 != 1)
  {
    v21 = v15;
    if ((v2 - 15) >= 5)
    {
      v21 = v15;
      if (v2 != 7)
      {
        v21 = v15;
        if (v2 != 12)
        {
          if (v2 == 10)
          {
            v21 = v15;
          }

          else
          {
            v21 = v15 - 4;
          }
        }
      }
    }

    if (*(a1 + 85) == 1)
    {
      sub_298C04264(a1, *(a2 + 40), v21);
      *(a1 + 85) = 0;
    }

    else
    {
      if (v20 == v21)
      {
        v22 = *(a1 + 344);
        v23 = *(a1 + 64);
        if (v20 + 4 == ((**(v22 + 770184) << 17) >> 15) + 4 * (**(v22 + 770184) >> 47))
        {
LABEL_35:
          if (v23 == 1)
          {
            return;
          }

          goto LABEL_36;
        }

LABEL_34:
        sub_298BFC8F4(v22, a2);
        v23 = *(a1 + 64);
        goto LABEL_35;
      }

      sub_298C032A4(a1, a2, v21);
      if (*(a1 + 64) == 1)
      {
        return;
      }
    }

    v22 = *(a1 + 344);
    goto LABEL_34;
  }

LABEL_36:
  if ((v3 & 1) != 0 && (v41 & 1) == 0)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v24 = 4;
      }

      else
      {
        v24 = 5;
      }
    }

    else
    {
      v24 = 3;
    }
  }

  else
  {
    v24 = v9;
    v25 = 2;
    if (v9 == 1)
    {
      v25 = 1;
    }

    if (v9)
    {
      v24 = v25;
    }
  }

  if (*(a1 + 31 + v24))
  {
    v27 = v12;
    if ((v39 & 1) != 0 && v38 == 1 && ((v3 ^ 1) & 1) == 0 && (v41 & 1) == 0 && v9 >= 2)
    {
      *(a1 + 320) = *(a1 + 288);
      *(a1 + 328) = *(a1 + 296);
      sub_298BFF0D4(a1, a2, *(a1 + 304), *(a1 + 312), 0);
    }

    v28 = (v39 << 24) | (v2 << 32) | (v38 << 16) | (v9 << 8) | v12;
    v42[0] = v15;
    v42[1] = (v39 << 24) | (v2 << 32) | (v38 << 16) | (v9 << 8) | v27;
    v42[2] = (v11 << 48) | (v3 << 40) | (v37 << 24) | (v41 << 16) | (v40 << 8) | v10;
    v43 = v36;
    v29 = sub_298C04F94(a1, v42);
    if (v29)
    {
      if (*(a1 + 64) == 1)
      {
        *(a1 + 72) = v29;
      }

      else
      {
        v35 = *(*(a1 + 344) + 770184);
        *(v35 + 8) = *(v35 + 8) & 0xFC3FFFFF | 0x1400000;
        if (!(*v35 >> 47))
        {
          *v35 |= 0x800000000000uLL;
        }
      }

      if (v9 == 1)
      {
        v30 = 4;
      }

      else
      {
        v30 = 5;
      }

      if (v9 == 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v9)
      {
        v32 = v30;
      }

      else
      {
        v32 = 3;
      }

      if (v9)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0;
      }

      if ((v3 ^ 1 | v41))
      {
        v34 = v33;
      }

      else
      {
        v34 = v32;
      }

      *(*(a1 + 344) + 770208) = v34 | 0x100;
      sub_298C04264(a1, *(a2 + 40), v29);
      *(a1 + 92) = 1;
      if ((v40 & 1) != 0 || (v2 & 0xFFFFFFFE) == 8)
      {
        *(a1 + 88) = sub_298C050D8(a1, v28, (v11 << 48) | (v3 << 40) | (v37 << 24) | (v41 << 16) | (v40 << 8) | v10);
      }
    }

    else
    {

      sub_298C02CE4(a1);
    }
  }

  else if (v20 != 1)
  {
    v26 = *(*(a1 + 344) + 770184);
    *(v26 + 8) = *(v26 + 8) & 0xFC3FFFFF | 0x800000;
    if (!(*v26 >> 47))
    {
      *v26 |= 0x800000000000uLL;
    }

    *(a1 + 85) = 1;
    if ((v40 & 1) != 0 || (v2 & 0xFFFFFFFE) == 8)
    {
      *(a1 + 88) = 2;
    }
  }
}

uint64_t sub_298C04F94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) != 3)
  {
    if (*(a2 + 17))
    {
      v6 = *(*(a1 + 56) + 712);
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else if (*(a2 + 11) == 1)
    {
      v16 = 2;
      if (*(a2 + 9) != 1)
      {
        v16 = 3;
      }

      v6 = *(*(a1 + 56) + 8 * v16 + 680);
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *(*(a1 + 56) + 688);
      if (v6)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  v2 = *(a1 + 56);
  v3 = (v2 + 680);
  v4 = (v2 + 712);
  if (*(a2 + 17))
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = *v5;
  if (!v6)
  {
    return 0;
  }

LABEL_6:
  v7 = *(a2 + 12);
  v8 = *(a2 + 9);
  v9 = *(a2 + 10);
  if (v7 == 17)
  {
    v17 = 384;
    if (*(a2 + 24))
    {
      v17 = 896;
    }

    v13 = v9 >= v8;
    v18 = 1408;
    if (v13)
    {
      v18 = v17;
    }

    return v18 + v6;
  }

  else
  {
    v10 = 128;
    if (*(a2 + 24))
    {
      v10 = 640;
    }

    if (v9 < v8)
    {
      v10 = 1152;
    }

    v11 = 512;
    if (!*(a2 + 24))
    {
      v11 = 0;
    }

    if (v9 < v8)
    {
      v11 = 1024;
    }

    v12 = 256;
    if (*(a2 + 24))
    {
      v12 = 768;
    }

    v13 = v9 >= v8;
    v14 = 1280;
    if (v13)
    {
      v14 = v12;
    }

    if (v7 != 15)
    {
      v14 = v11;
    }

    if (v7 == 16)
    {
      v14 = v10;
    }

    return v14 + v6;
  }
}

uint64_t sub_298C050D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  if (v6 <= 6)
  {
    if ((v6 - 1) >= 5)
    {
      if (v6 != 6)
      {
        return result;
      }
    }

    else
    {
      if (v5)
      {
        v7 = v5 == 3;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        return 0;
      }
    }

    goto LABEL_25;
  }

  if ((v6 - 7) < 2)
  {
    if (v5)
    {
      v8 = v5 == 3;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 2;
    }

    if ((a3 & 0x10100000000) != 0)
    {
      return 2;
    }

    goto LABEL_25;
  }

  if (v6 == 9 || v6 == 10)
  {
    result = 2;
    if (v5)
    {
      if (v5 != 3)
      {
LABEL_25:
        if (*(a1 + 93) == 1)
        {
          result = 0;
          *(a1 + 93) = 0;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_298C05190(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *a1;
  *a1 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v12 = a2[2];
  v11 = a2 + 2;
  v10 = v12;
  v13 = *(v11 - 1);
  *(a1 + 16) = v12;
  *(a1 + 8) = v13;
  *(v11 - 1) = 0;
  v14 = v11[1];
  *(a1 + 24) = v14;
  *(a1 + 32) = *(v11 + 4);
  if (v14)
  {
    v15 = *(v10 + 8);
    v16 = *(a1 + 8);
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v15 >= v16)
      {
        v15 %= v16;
      }
    }

    else
    {
      v15 &= v16 - 1;
    }

    *(*a1 + 8 * v15) = a1 + 16;
    *v11 = 0;
    v11[1] = 0;
  }
}

uint64_t sub_298C05284(uint64_t a1)
{
  v2 = a1 + 0x20000;
  v3 = *(a1 + 131112);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(v2 + 24);
  *(v2 + 24) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_298C052E0(uint64_t a1, __int128 *a2)
{
  v3 = 0;
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  do
  {
    v5 = a1 + v3;
    *(v5 + 24) = *(a2 + v3 + 24);
    *(v5 + 32) = *(a2 + v3 + 32);
    *(v5 + 40) = *(a2 + v3 + 40);
    v3 += 24;
  }

  while (v3 != 24576);
  sub_298C05190(a1 + 24600, a2 + 3075);
  return a1;
}

uint64_t sub_298C05354(uint64_t a1)
{
  v2 = *(a1 + 24616);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 24600);
  *(a1 + 24600) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_298C053A4(uint64_t result)
{
  if (*(result + 22) == 1)
  {
    *(result + 22) = 0;
    if (*(result + 26) != 1)
    {
      goto LABEL_3;
    }
  }

  else if (*(result + 26) != 1)
  {
LABEL_3:
    *(result + 28) = 0;
    *(result + 40) = 0;
    *(result + 38) = 0;
    return result;
  }

  *(result + 26) = 0;
  *(result + 28) = 0;
  *(result + 40) = 0;
  *(result + 38) = 0;
  return result;
}

unsigned __int16 *sub_298C05408(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 16) - 1) > 2)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 22);
  if (v6 == 1)
  {
    v7 = ((result[10] >> 4) & 3) - (*(result + 7) + *(result + 26));
    v8 = *(a2 + 32);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *(a2 + 20);
    v8 = *(a2 + 32);
    if (*(a2 + 20))
    {
LABEL_4:
      v9 = 0;
      v10 = v7;
      do
      {
        if (v5[11])
        {
          v11 = *(v5 + 7);
          v5[v11 + 16] = *(*(a2 + 24) + v9);
          *(v5 + 7) = v11 + 1;
          if (v11 + 1 >= ((v5[10] >> 4) & 3u))
          {
            result = sub_298C0568C(v5, a2, a3);
          }
        }

        else
        {
          result = (*(*a3 + 32))(a3);
        }

        v9 += 2;
      }

      while (2 * v7 != v9);
      LOBYTE(v6) = *(v5 + 22);
      goto LABEL_13;
    }
  }

  v10 = 0;
LABEL_13:
  v12 = *(*(a2 + 24) + 2 * v10);
  if ((v12 & 0xF) == 0xC)
  {
    v12 = v12 & 0xFFCC | 0x10;
  }

  if ((v6 & 1) == 0)
  {
    *(v5 + 22) = 1;
  }

  v13 = v7 + 1;
  v5[10] = v12;
  if ((v12 & 0x30) != 0)
  {
    v14 = (v12 >> 4) & 3;
    if (v13 >= v8)
    {
      return result;
    }
  }

  else
  {
    result = sub_298C0568C(v5, a2, a3);
    v14 = 0;
    if (v13 >= v8)
    {
      return result;
    }
  }

  v15 = ~v7 + v8;
  v16 = 2 * v13;
  do
  {
    if (v14)
    {
      if (v5[11])
      {
        v17 = *(v5 + 7);
        v5[v17 + 16] = *(*(a2 + 24) + v16);
        *(v5 + 7) = v17 + 1;
        if (v17 + 1 >= ((v5[10] >> 4) & 3u))
        {
          result = sub_298C0568C(v5, a2, a3);
        }
      }

      else
      {
        result = (*(*a3 + 32))(a3);
      }

      --v14;
    }

    else
    {
      v18 = *(*(a2 + 24) + v16);
      if ((v18 & 0xF) == 0xC)
      {
        v18 = v18 & 0xFFCC | 0x10;
      }

      if ((v5[11] & 1) == 0)
      {
        *(v5 + 22) = 1;
      }

      v5[10] = v18;
      if ((v18 & 0x30) != 0)
      {
        v14 = (v18 >> 4) & 3;
      }

      else
      {
        result = sub_298C0568C(v5, a2, a3);
        v14 = 0;
      }
    }

    v16 += 2;
    --v15;
  }

  while (v15);
  return result;
}

unsigned __int16 *sub_298C0568C(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = result[10];
  v6 = v5 & 0xF;
  v7 = dword_298D1B47C[v5 & 0xF];
  if (v7 > 3)
  {
    if (v7 <= 0xE)
    {
      if (((1 << v7) & 0x7980) != 0)
      {
LABEL_4:
        if (*(result + 22) == 1)
        {
          *(result + 22) = 0;
        }

        if (*(result + 26) == 1)
        {
          *(result + 26) = 0;
        }

        *(result + 7) = 0;
        *(result + 10) = 0;
        *(result + 38) = 0;
        v27 = 17;
        (*(*a3 + 16))(a3);
        return (*(*a3 + 40))(a3);
      }

      if (v7 == 5)
      {
        if ((~v5 & 0x30) != 0)
        {
          goto LABEL_4;
        }

        v17 = 7;
        goto LABEL_58;
      }

      if (v7 == 6)
      {
        if ((v5 & 0x30) != 0x20)
        {
          goto LABEL_4;
        }

        v17 = 8;
        goto LABEL_58;
      }
    }

    if (v7 == 4)
    {
      if ((v5 & 0x30) != 0x20)
      {
        goto LABEL_4;
      }

      v17 = 6;
      goto LABEL_58;
    }

LABEL_34:
    if (v7 == 2)
    {
      v17 = 4;
    }

    else if (v7 == 10)
    {
      v17 = 14;
    }

    else
    {
      v17 = 13;
    }

LABEL_58:
    v27 = v17;
LABEL_59:
    v25 = *(result + 7);
    v30 = (result + 16);
    v31 = v25;
LABEL_60:
    result = (*(*a3 + 16))(a3, a2, &v27);
    goto LABEL_61;
  }

  if (!v7)
  {
    v18 = *(result + 7);
    v19 = a2;
    if (v18)
    {
      v27 = 0;
      LOBYTE(v28) = v6 == 0;
      v30 = (result + 16);
      v31 = v18;
      (*(*a3 + 16))(a3, a2, &v27);
      v20 = *(v4 + 7);
      *(v4 + 10) = v20;
      result = memcpy(v4 + 22, v4 + 16, 2 * v20);
      a2 = v19;
      if ((v5 & 0xF) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if ((v5 & 0xF) == 0)
      {
        goto LABEL_43;
      }

      v21 = *(result + 10);
      if (v21)
      {
        v27 = 0;
        LOBYTE(v28) = 0;
        v30 = (result + 22);
        v31 = v21;
        (*(*a3 + 16))(a3, a2, &v27);
      }
    }

    v27 = 1;
    LOBYTE(v28) = v5 & 0xF;
    HIWORD(v28) = (0xFFFFu >> (16 - v6)) & (v5 >> 6) & 0x1FF;
    result = (*(*a3 + 16))(a3, v19, &v27);
    a2 = v19;
LABEL_43:
    v22 = *(a2 + 16);
    if (v22 == 1)
    {
      v23 = (0xFFFFFFFFFFFFFFFFLL >> (v6 + 55)) & (v5 >> (v6 + 6));
      if (v6 > 8)
      {
        v23 = 0;
      }

      v27 = 9;
      v28 = v23;
      result = (*(*a3 + 16))(a3, v19, &v27);
      a2 = v19;
      if (*(v19 + 16) != 2)
      {
LABEL_45:
        if (*(v4 + 22) == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_46;
      }
    }

    else if (v22 != 2)
    {
      goto LABEL_45;
    }

    v24 = (0xFFFFFFFFFFFFFFFFLL >> (v6 + 55)) & (v5 >> (v6 + 6));
    if (v6 > 8)
    {
      v24 = 0;
    }

    v27 = 10;
    v28 = v24;
    goto LABEL_60;
  }

  if (v7 == 1)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    v27 = 2;
    LOWORD(v28) = (v5 >> 7) & 0x3F;
    goto LABEL_59;
  }

  if (v7 != 3)
  {
    goto LABEL_34;
  }

  if ((v5 & 0x30) != 0x10)
  {
    goto LABEL_4;
  }

  *(result + 38) = 0;
  v27 = 5;
  v8 = result[16];
  v9 = v8 >> 6;
  if (v9 != 3)
  {
    v10 = (v8 >> 8) & 3;
    if (v10 != 3)
    {
      v11 = v8 & 0x3F;
      v12 = (v8 >> 10) & 1;
      v13 = a2;
      v14 = sub_298C36B04(*(result + 4), v8 & 0x3F);
      if ((v14 & 0x100000000) != 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 == 11 || v15 == 6;
      LOBYTE(v28) = v11;
      BYTE1(v28) = v9;
      BYTE2(v28) = v10;
      HIBYTE(v28) = v12;
      v29 = v15;
      LOBYTE(v30) = (v14 & 0x100000000) == 0;
      BYTE1(v30) = v15 == 11;
      BYTE2(v30) = v15 == 6;
      BYTE3(v30) = (v15 < 0x14) & (0xBBF80u >> v15);
      BYTE4(v30) = v15 - 5 < 2;
      BYTE5(v30) = v16 | v12;
      result = (*(*a3 + 16))(a3, v13, &v27);
LABEL_61:
      if (*(v4 + 22) == 1)
      {
LABEL_62:
        *(v4 + 22) = 0;
        if (*(v4 + 26) != 1)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

LABEL_46:
      if (*(v4 + 26) != 1)
      {
LABEL_48:
        *(v4 + 7) = 0;
        return result;
      }

LABEL_47:
      *(v4 + 26) = 0;
      goto LABEL_48;
    }
  }

  if (*(result + 22) == 1)
  {
    *(result + 22) = 0;
  }

  if (*(result + 26) == 1)
  {
    *(result + 26) = 0;
  }

  *(result + 7) = 0;
  *(result + 10) = 0;
  *(result + 38) = 0;
  v26[0] = 17;
  return (*(*a3 + 16))(a3, a2, v26);
}

uint64_t sub_298C05BEC(uint64_t result)
{
  if (*(result + 22) == 1)
  {
    *(result + 22) = 0;
    if (*(result + 25) != 1)
    {
      goto LABEL_3;
    }
  }

  else if (*(result + 25) != 1)
  {
LABEL_3:
    *(result + 28) = 0;
    *(result + 40) = 0;
    *(result + 38) = 0;
    return result;
  }

  *(result + 25) = 0;
  *(result + 28) = 0;
  *(result + 40) = 0;
  *(result + 38) = 0;
  return result;
}

uint64_t sub_298C05C50(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5, double a6, int8x16_t a7, double a8, int8x16_t a9, double a10, int8x16_t a11)
{
  if ((*(a2 + 16) - 1) > 2)
  {
    return result;
  }

  v168 = v11;
  v169 = v12;
  v16 = result;
  v17 = *(a2 + 32);
  v18 = *(a2 + 20);
  if (v18 >= v17)
  {
    if (*(result + 22))
    {
      *(result + 22) = 0;
    }

    if (*(result + 25) == 1)
    {
      *(result + 25) = 0;
    }

    *(result + 28) = 0;
    *(result + 40) = 0;
    *(result + 38) = 0;
    return result;
  }

  if (*(result + 22))
  {
    v22 = (result + 20);
    v32 = *(result + 20);
    v33 = *(result + 25);
    v18 = ((v32 >> 14) & 1) + ((v32 >> 4) & 3) - (*(result + 28) + v33);
    v21 = (a2 + 24);
    if ((v32 & 0x4000) != 0 && (v33 & 1) == 0)
    {
      v44 = **(a2 + 24);
      LODWORD(v20) = 1;
      *(result + 25) = 1;
      *(result + 23) = v44;
      if ((v32 & 0x30) == 0)
      {
        result = sub_298C06FDC(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      }
    }

    else
    {
      LODWORD(v20) = 0;
    }
  }

  else
  {
    LODWORD(v20) = 0;
    v21 = (a2 + 24);
    v22 = (result + 20);
  }

  if (v20 < v18)
  {
    v20 = v20;
    v23 = v16 + 42;
    while (1)
    {
      if (*(v16 + 22))
      {
        v34 = (v16 + 32);
        v35 = *(v16 + 28);
        *(v16 + 32 + 2 * v35) = *(*v21 + 2 * v20);
        v36 = (v35 + 1);
        *(v16 + 28) = v36;
        if (v36 >= ((*(v16 + 20) >> 4) & 3u))
        {
          v160 = v23;
          v37 = *(v16 + 20);
          v38 = *(v16 + 25);
          v39 = *(v16 + 23);
          v40 = v39 | (v38 << 16);
          v41 = (v39 >> 11) & (16 * v38) & 0xFFFFFFF0 | v37 & 0xF;
          result = dword_298D1B47C[v41];
          if (result > 3)
          {
            if (result == 5)
            {
              v23 = v160;
              if ((v37 & 0x4030) != 0x30)
              {
                goto LABEL_57;
              }

              goto LABEL_50;
            }

            v23 = v160;
            if (result <= 0xE)
            {
              if (((1 << result) & 0x3980) != 0)
              {
                if ((v37 & 0xC030) != 0x4030)
                {
                  goto LABEL_57;
                }

                v156 = v22;
                v158 = v21;
                v154 = v17;
                if (result == 8)
                {
                  v164 = 12;
                  if (v36)
                  {
                    if (v36 < 8)
                    {
                      v53 = 0;
                      v59 = 0;
LABEL_75:
                      *&v59 |= v34->u16[v53];
                      if ((v53 | 1) != v36)
                      {
                        *&v59 |= v34->u16[v53 | 1] << ((16 * (v53 | 1)) & 0x90);
                        if ((v53 | 2) != v36)
                        {
                          *&v59 |= v34->u16[v53 | 2] << ((16 * (v53 | 2)) & 0xA0);
                          if ((v53 | 3) != v36)
                          {
                            if ((v53 | 4) == v36)
                            {
                              *&v59 |= v34->u16[v53 | 3] << ((16 * (v53 | 3)) & 0xB0);
                            }

                            else if ((v53 | 5) != v36)
                            {
                              v116 = v36 - v53 - 5;
                              v117 = 16 * v53 + 80;
                              v59 = v160;
                              v118 = (*&v160 + 2 * v53);
                              do
                              {
                                v119 = *v118++;
                                *&v59 |= v119 << (v117 & 0xF0);
                                v117 += 16;
                                --v116;
                              }

                              while (v116);
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      v53 = v36 & 0xFFFFFFF8;
                      v54 = v53 - 24;
                      if (v53 <= 0x18 && ((1 << v53) & 0x1010100) != 0)
                      {
                        v55 = vmovl_u16(*v34);
                        v56.i64[0] = v55.u32[0];
                        v56.i64[1] = v55.u32[1];
                        v57 = v56;
                        v56.i64[0] = v55.u32[2];
                        v56.i64[1] = v55.u32[3];
                        a7 = vshlq_u64(v56, xmmword_298D1B3A0);
                        a9 = vshlq_u64(v57, xmmword_298D1ABD0);
                      }

                      else
                      {
                        v120 = xmmword_298D1B3D0;
                        v121 = xmmword_298D1B3E0;
                        v122 = xmmword_298D1B3F0;
                        v123 = xmmword_298D1B400;
                        v124 = vdupq_n_s64(0xFFFFFFF0uLL);
                        v125 = vdupq_n_s64(8uLL);
                        v126 = (v16 + 80);
                        do
                        {
                          v127 = *v126++;
                          v128 = vmovl_high_u16(v127);
                          v129.i64[0] = v128.u32[0];
                          v129.i64[1] = v128.u32[1];
                          v130 = v129;
                          v131 = vmovl_u16(*v127.i8);
                          v129.i64[0] = v131.u32[2];
                          v129.i64[1] = v131.u32[3];
                          v132 = v129;
                          v129.i64[0] = v128.u32[2];
                          v129.i64[1] = v128.u32[3];
                          v133 = v129;
                          v129.i64[0] = v131.u32[0];
                          v129.i64[1] = v131.u32[1];
                          v13 = vorrq_s8(vshlq_u64(v130, vandq_s8(vshlq_n_s64(v121, 4uLL), v124)), v13);
                          a7 = vorrq_s8(vshlq_u64(v132, vandq_s8(vshlq_n_s64(v122, 4uLL), v124)), a7);
                          v14 = vorrq_s8(vshlq_u64(v133, vandq_s8(vshlq_n_s64(v120, 4uLL), v124)), v14);
                          a9 = vorrq_s8(vshlq_u64(v129, vandq_s8(vshlq_n_s64(v123, 4uLL), v124)), a9);
                          v121 = vaddq_s64(v121, v125);
                          v122 = vaddq_s64(v122, v125);
                          v123 = vaddq_s64(v123, v125);
                          v120 = vaddq_s64(v120, v125);
                          v54 -= 8;
                        }

                        while (v54);
                      }

                      v58 = vorrq_s8(vorrq_s8(a9, v13), vorrq_s8(a7, v14));
                      v59 = vorr_s8(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
                      if (v53 != v36)
                      {
                        goto LABEL_75;
                      }
                    }

                    v60 = *&v59 << 16;
                  }

                  else
                  {
                    v60 = 0;
                  }

                  v165 = v60 | (4 * v37) & 0x8000 | v40 & 0x7FFFu;
                }

                else if (result > 10)
                {
                  switch(result)
                  {
                    case 0xC:
                      v149 = 16;
                      break;
                    case 0xB:
                      v149 = 15;
                      break;
                    case 0xD:
                      v149 = 18;
                      break;
                    default:
                      goto LABEL_50;
                  }

                  v164 = v149;
                  v165 = sub_298C078E0(v16, v37);
                }

                else
                {
                  if (result != 7)
                  {
                    goto LABEL_50;
                  }

                  v164 = 11;
                  v147 = *(v16 + 38);
                  if ((v147 + 1) <= 9u)
                  {
                    v148 = v147 + 1;
                  }

                  else
                  {
                    v148 = 0;
                  }

                  *(v16 + 38) = v148;
                  LOBYTE(v165) = v147;
                  v166 = sub_298C078E0(v16, v37);
                }

LABEL_124:
                result = (*(*a3 + 16))(a3, a2, &v164);
LABEL_125:
                if (*(v16 + 22) == 1)
                {
                  *(v16 + 22) = 0;
                }

                if (*(v16 + 25) == 1)
                {
                  *(v16 + 25) = 0;
                }

                *(v16 + 28) = 0;
LABEL_130:
                v17 = v154;
                v22 = v156;
                v21 = v158;
                v23 = v160;
                goto LABEL_9;
              }

              if (result == 6)
              {
LABEL_105:
                if ((v37 & 0x4030) != 0x20)
                {
                  goto LABEL_57;
                }

                goto LABEL_50;
              }

              if (result == 14)
              {
                goto LABEL_57;
              }
            }

            if (result != 4)
            {
              goto LABEL_50;
            }

            goto LABEL_105;
          }

          if (result > 2)
          {
            v23 = v160;
            if ((v37 & 0x4030) != 0x10)
            {
              goto LABEL_57;
            }

            v156 = v22;
            v158 = v21;
            v154 = v17;
            *(v16 + 38) = 0;
            v164 = 5;
            v89 = *(v16 + 32);
            v90 = (v89 >> 7) & 3;
            if (v90 != 3)
            {
              v91 = (v89 >> 9) & 3;
              if (v91 != 3)
              {
                v92 = v89 & 0x7F;
                v93 = (v89 >> 11) & 1;
                v94 = sub_298C36B04(*(v16 + 16), v89 & 0x7F);
                if ((v94 & 0x100000000) != 0)
                {
                  v95 = v94;
                }

                else
                {
                  v95 = 0;
                }

                v96 = v95 == 11 || v95 == 6;
                LOBYTE(v165) = v92;
                BYTE1(v165) = v90;
                BYTE2(v165) = v91;
                BYTE3(v165) = v93;
                HIDWORD(v165) = v95;
                LOBYTE(v166) = (v94 & 0x100000000) == 0;
                BYTE1(v166) = v95 == 11;
                BYTE2(v166) = v95 == 6;
                BYTE3(v166) = (v95 < 0x14) & (0xBBF80u >> v95);
                BYTE4(v166) = v95 - 5 < 2;
                BYTE5(v166) = v96 | v93;
                goto LABEL_124;
              }
            }

            *(v16 + 22) = 0;
            if ((v40 & 0x10000) != 0)
            {
              *(v16 + 25) = 0;
            }

            *(v16 + 28) = 0;
            *(v16 + 40) = 0;
            *(v16 + 38) = 0;
            v163[0] = 17;
            result = (*(*a3 + 16))(a3, a2, v163);
            goto LABEL_130;
          }

          v156 = v22;
          v158 = v21;
          v154 = v17;
          v153 = *(v16 + 20);
          if (result)
          {
            if (result == 1)
            {
              v23 = v160;
              if ((v37 & 0x4020) != 0x20)
              {
                goto LABEL_57;
              }

              v164 = 2;
              LOWORD(v165) = (v37 >> 7) & 0x3F;
              v166 = v16 + 32;
              v167 = v36;
              goto LABEL_124;
            }

            v23 = v160;
            if (result == 2 && (v37 & 0x4000) != 0)
            {
LABEL_57:
              *(v16 + 22) = 0;
              if ((v40 & 0x10000) != 0)
              {
                *(v16 + 25) = 0;
              }

              *(v16 + 28) = 0;
              *(v16 + 40) = 0;
              *(v16 + 38) = 0;
              v164 = 17;
              (*(*a3 + 16))(a3, a2, &v164);
              result = (*(*a3 + 40))(a3);
              goto LABEL_9;
            }

LABEL_50:
            v154 = v17;
            v156 = v22;
            v158 = v21;
            v42 = v36;
            v164 = sub_298C05BD8(result);
            v166 = v16 + 32;
            v167 = v42;
            goto LABEL_124;
          }

          if (v41 >= 0xA && v41 != 16)
          {
            v41 -= 16;
          }

          v97 = v37 & 0xF;
          if (v36)
          {
            v164 = 0;
            LOBYTE(v165) = v41 == 0;
            v166 = v16 + 32;
            v167 = v36;
            (*(*a3 + 16))(a3, a2, &v164);
            v98 = *(v16 + 28);
            *(v16 + 40) = v98;
            result = memcpy((v16 + 44), (v16 + 32), 2 * v98);
            if (v41)
            {
              goto LABEL_137;
            }
          }

          else if (v41)
          {
            v145 = *(v16 + 40);
            if (v145)
            {
              v164 = 0;
              LOBYTE(v165) = 0;
              v166 = v16 + 44;
              v167 = v145;
              (*(*a3 + 16))(a3, a2, &v164);
            }

LABEL_137:
            v164 = 1;
            LOBYTE(v165) = v41;
            v99 = *(v16 + 25);
            v100 = *(v16 + 23);
            v101 = (v100 >> 11) & (16 * v99) | v97;
            if (v101 >= 0xA && v101 != 16)
            {
              v101 = (v101 - 16);
            }

            v102 = (((v100 | (v99 << 16)) << 15) >> 23) & ((v100 | (v99 << 16)) << 8) & 0xFFFFFF00 | (v153 >> 6);
            if (v101)
            {
              v103 = 0xFFFFFFFF >> -v101;
            }

            else
            {
              v103 = 0;
            }

            WORD1(v165) = v103 & v102;
            result = (*(*a3 + 16))(a3, a2, &v164);
          }

          v104 = *(a2 + 16);
          if (v104 == 1)
          {
            v164 = 9;
            LODWORD(v165) = sub_298C078A8(v153, *(v16 + 23) | (*(v16 + 25) << 16));
            result = (*(*a3 + 16))(a3, a2, &v164);
            v104 = *(a2 + 16);
          }

          if (v104 == 2)
          {
            v164 = 10;
            v105 = *(v16 + 25);
            v106 = *(v16 + 23);
            v107 = (v106 >> 11) & (16 * v105) | v97;
            if (v107 >= 0xA && v107 != 16)
            {
              LOBYTE(v107) = v107 - 16;
            }

            LODWORD(v165) = (((v106 | (v105 << 16)) << 8) & (((v106 | (v105 << 16)) << 15) >> 31) & 0x3FFF00 | (v153 >> 6)) >> v107;
            goto LABEL_124;
          }

          goto LABEL_125;
        }
      }

      else
      {
        result = (*(*a3 + 32))(a3);
      }

LABEL_9:
      if (v18 == ++v20)
      {
        LODWORD(v20) = v18;
        break;
      }
    }
  }

  v24 = *(*v21 + 2 * v20);
  if ((v24 & 0x4000) == 0)
  {
    v43 = dword_298D1B47C[v24 & 0xF];
    if (v43 == 3)
    {
      v24 = v24 & 0xBFCF | 0x10;
    }

    else if (v43 == 5)
    {
      v24 |= 0x30u;
    }
  }

  if ((*(v16 + 22) & 1) == 0)
  {
    *(v16 + 22) = 1;
  }

  v25 = v20 + 1;
  *v22 = v24;
  if ((v24 & 0x4000) != 0 || (v24 & 0x30) != 0)
  {
    v26 = (v24 >> 4) & 3;
  }

  else
  {
    result = sub_298C06FDC(v16, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    v26 = 0;
  }

  if (v25 < v17 && *(v16 + 22) == 1)
  {
    v31 = *v22;
    if ((*v22 & 0x4000) != 0 && (*(v16 + 25) & 1) == 0)
    {
      *(v16 + 23) = *(*v21 + 2 * v25);
      *(v16 + 25) = 1;
      if ((v31 & 0x30) == 0)
      {
        result = sub_298C06FDC(v16, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      }

      v25 = v20 + 2;
    }
  }

  if (v25 < v17)
  {
    do
    {
      v27 = v25 + 1;
      if (!v26)
      {
        v28 = *(*v21 + 2 * v25);
        if ((v28 & 0x4000) == 0)
        {
          v61 = dword_298D1B47C[v28 & 0xF];
          if (v61 == 3)
          {
            v28 = v28 & 0xBFCF | 0x10;
          }

          else if (v61 == 5)
          {
            v28 |= 0x30u;
          }
        }

        if ((*(v16 + 22) & 1) == 0)
        {
          *(v16 + 22) = 1;
        }

        *v22 = v28;
        if ((v28 & 0x4030) != 0)
        {
          v26 = (v28 >> 4) & 3;
        }

        else
        {
          result = sub_298C06FDC(v16, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
          v26 = 0;
        }

        if (v27 < v17 && *(v16 + 22) == 1)
        {
          v29 = *v22;
          if ((*v22 & 0x4000) != 0 && (*(v16 + 25) & 1) == 0)
          {
            v30 = *(*v21 + 2 * v27);
            *(v16 + 25) = 1;
            *(v16 + 23) = v30;
            if ((v29 & 0x30) == 0)
            {
              result = sub_298C06FDC(v16, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
            }

            v27 = v25 + 2;
          }
        }

        goto LABEL_23;
      }

      if (*(v16 + 22))
      {
        v45 = *(v16 + 28);
        *(v16 + 32 + 2 * v45) = *(*v21 + 2 * v25);
        v46 = (v45 + 1);
        *(v16 + 28) = v46;
        if (v46 >= ((*(v16 + 20) >> 4) & 3u))
        {
          v47 = *(v16 + 20);
          v48 = *(v16 + 25);
          v49 = *(v16 + 23);
          v50 = v49 | (v48 << 16);
          v51 = (v49 >> 11) & (16 * v48) & 0xFFFFFFF0 | v47 & 0xF;
          result = dword_298D1B47C[v51];
          if (result > 3)
          {
            if (result == 5)
            {
              if ((v47 & 0x4030) != 0x30)
              {
                goto LABEL_88;
              }

              goto LABEL_64;
            }

            if (result <= 0xE)
            {
              if (((1 << result) & 0x3980) != 0)
              {
                if ((v47 & 0xC030) != 0x4030)
                {
                  goto LABEL_88;
                }

                v157 = v22;
                v159 = v21;
                v155 = v17;
                if (result == 8)
                {
                  v164 = 12;
                  if (v46)
                  {
                    if (v46 < 8)
                    {
                      v66 = 0;
                      v83 = 0;
                      goto LABEL_100;
                    }

                    v62 = xmmword_298D1B410;
                    v63 = xmmword_298D1B420;
                    v64 = xmmword_298D1A110;
                    v65 = xmmword_298D1A120;
                    v66 = v46 & 0xFFFFFFF8;
                    v67 = 0uLL;
                    v68 = vdupq_n_s64(0xFFFFFFF0uLL);
                    v69 = v66;
                    v70 = vdupq_n_s64(8uLL);
                    v71 = (v16 + 32);
                    v72 = 0uLL;
                    v73 = 0uLL;
                    v74 = 0uLL;
                    do
                    {
                      v75 = *v71++;
                      v76 = vmovl_high_u16(v75);
                      v77.i64[0] = v76.u32[0];
                      v77.i64[1] = v76.u32[1];
                      v78 = v77;
                      v79 = vmovl_u16(*v75.i8);
                      v77.i64[0] = v79.u32[2];
                      v77.i64[1] = v79.u32[3];
                      v80 = v77;
                      v77.i64[0] = v76.u32[2];
                      v77.i64[1] = v76.u32[3];
                      v81 = v77;
                      v77.i64[0] = v79.u32[0];
                      v77.i64[1] = v79.u32[1];
                      v73 = vorrq_s8(vshlq_u64(v78, vandq_s8(vshlq_n_s64(v63, 4uLL), v68)), v73);
                      v72 = vorrq_s8(vshlq_u64(v80, vandq_s8(vshlq_n_s64(v64, 4uLL), v68)), v72);
                      v74 = vorrq_s8(vshlq_u64(v81, vandq_s8(vshlq_n_s64(v62, 4uLL), v68)), v74);
                      v67 = vorrq_s8(vshlq_u64(v77, vandq_s8(vshlq_n_s64(v65, 4uLL), v68)), v67);
                      v63 = vaddq_s64(v63, v70);
                      v64 = vaddq_s64(v64, v70);
                      v65 = vaddq_s64(v65, v70);
                      v62 = vaddq_s64(v62, v70);
                      v69 -= 8;
                    }

                    while (v69);
                    v82 = vorrq_s8(vorrq_s8(v67, v73), vorrq_s8(v72, v74));
                    v83 = vorr_s8(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
                    if (v66 != v46)
                    {
LABEL_100:
                      v84 = v46 - v66;
                      v85 = 16 * v66;
                      v86 = (v16 + 32 + 2 * v66);
                      do
                      {
                        v87 = *v86++;
                        *&v83 |= v87 << (v85 & 0xF0);
                        v85 += 16;
                        --v84;
                      }

                      while (v84);
                    }

                    v88 = *&v83 << 16;
                  }

                  else
                  {
                    v88 = 0;
                  }

                  v165 = v88 | (4 * v47) & 0x8000 | v50 & 0x7FFFu;
                }

                else if (result > 10)
                {
                  switch(result)
                  {
                    case 0xC:
                      v152 = 16;
                      break;
                    case 0xB:
                      v152 = 15;
                      break;
                    case 0xD:
                      v152 = 18;
                      break;
                    default:
                      goto LABEL_64;
                  }

                  v164 = v152;
                  v165 = sub_298C078E0(v16, v47);
                }

                else
                {
                  if (result != 7)
                  {
                    goto LABEL_64;
                  }

                  v164 = 11;
                  v150 = *(v16 + 38);
                  if ((v150 + 1) <= 9u)
                  {
                    v151 = v150 + 1;
                  }

                  else
                  {
                    v151 = 0;
                  }

                  *(v16 + 38) = v151;
                  LOBYTE(v165) = v150;
                  v166 = sub_298C078E0(v16, v47);
                }

LABEL_160:
                result = (*(*a3 + 16))(a3, a2, &v164);
LABEL_161:
                if (*(v16 + 22) == 1)
                {
                  *(v16 + 22) = 0;
                }

                if (*(v16 + 25) == 1)
                {
                  *(v16 + 25) = 0;
                }

                *(v16 + 28) = 0;
LABEL_166:
                v17 = v155;
                v22 = v157;
                v21 = v159;
                goto LABEL_22;
              }

              if (result == 6)
              {
LABEL_111:
                if ((v47 & 0x4030) != 0x20)
                {
                  goto LABEL_88;
                }

                goto LABEL_64;
              }

              if (result == 14)
              {
                goto LABEL_88;
              }
            }

            if (result != 4)
            {
              goto LABEL_64;
            }

            goto LABEL_111;
          }

          if (result > 2)
          {
            if ((v47 & 0x4030) != 0x10)
            {
              goto LABEL_88;
            }

            v157 = v22;
            v159 = v21;
            v155 = v17;
            *(v16 + 38) = 0;
            v164 = 5;
            v108 = *(v16 + 32);
            v109 = (v108 >> 7) & 3;
            if (v109 != 3)
            {
              v110 = (v108 >> 9) & 3;
              if (v110 != 3)
              {
                v111 = v108 & 0x800;
                v112 = v108 & 0x7F;
                v161 = (v108 >> 11) & 1;
                v113 = sub_298C36B04(*(v16 + 16), v108 & 0x7F);
                if ((v113 & 0x100000000) != 0)
                {
                  v114 = v113;
                }

                else
                {
                  v114 = 0;
                }

                v115 = v114 == 11 || v114 == 6;
                LOBYTE(v165) = v112;
                BYTE1(v165) = v109;
                BYTE2(v165) = v110;
                BYTE3(v165) = v161;
                HIDWORD(v165) = v114;
                LOBYTE(v166) = (v113 & 0x100000000) == 0;
                BYTE1(v166) = v114 == 11;
                BYTE2(v166) = v114 == 6;
                BYTE3(v166) = (v114 < 0x14) & (0xBBF80u >> v114);
                BYTE4(v166) = v114 - 5 < 2;
                BYTE5(v166) = v115 | (v111 >> 11);
                goto LABEL_160;
              }
            }

            *(v16 + 22) = 0;
            if ((v50 & 0x10000) != 0)
            {
              *(v16 + 25) = 0;
            }

            *(v16 + 28) = 0;
            *(v16 + 40) = 0;
            *(v16 + 38) = 0;
            v163[0] = 17;
            result = (*(*a3 + 16))(a3, a2, v163);
            goto LABEL_166;
          }

          v157 = v22;
          v159 = v21;
          v155 = v17;
          v162 = *(v16 + 20);
          if (result)
          {
            if (result == 1)
            {
              if ((v47 & 0x4020) != 0x20)
              {
                goto LABEL_88;
              }

              v164 = 2;
              LOWORD(v165) = (v47 >> 7) & 0x3F;
              v166 = v16 + 32;
              v167 = v46;
              goto LABEL_160;
            }

            if (result == 2 && (v47 & 0x4000) != 0)
            {
LABEL_88:
              *(v16 + 22) = 0;
              if ((v50 & 0x10000) != 0)
              {
                *(v16 + 25) = 0;
              }

              *(v16 + 28) = 0;
              *(v16 + 40) = 0;
              *(v16 + 38) = 0;
              v164 = 17;
              (*(*a3 + 16))(a3, a2, &v164);
              result = (*(*a3 + 40))(a3);
              goto LABEL_22;
            }

LABEL_64:
            v155 = v17;
            v157 = v22;
            v159 = v21;
            v52 = v46;
            v164 = sub_298C05BD8(result);
            v166 = v16 + 32;
            v167 = v52;
            goto LABEL_160;
          }

          if (v51 >= 0xA && v51 != 16)
          {
            v51 -= 16;
          }

          v134 = v47 & 0xF;
          if (v46)
          {
            v164 = 0;
            LOBYTE(v165) = v51 == 0;
            v166 = v16 + 32;
            v167 = v46;
            (*(*a3 + 16))(a3, a2, &v164);
            v135 = *(v16 + 28);
            *(v16 + 40) = v135;
            result = memcpy((v16 + 44), (v16 + 32), 2 * v135);
            if (v51)
            {
              goto LABEL_189;
            }
          }

          else if (v51)
          {
            v146 = *(v16 + 40);
            if (v146)
            {
              v164 = 0;
              LOBYTE(v165) = 0;
              v166 = v16 + 44;
              v167 = v146;
              (*(*a3 + 16))(a3, a2, &v164);
            }

LABEL_189:
            v164 = 1;
            LOBYTE(v165) = v51;
            v136 = *(v16 + 25);
            v137 = *(v16 + 23);
            v138 = (v137 >> 11) & (16 * v136) | v134;
            if (v138 >= 0xA && v138 != 16)
            {
              v138 = (v138 - 16);
            }

            v139 = (((v137 | (v136 << 16)) << 15) >> 23) & ((v137 | (v136 << 16)) << 8) & 0xFFFFFF00 | (v162 >> 6);
            if (v138)
            {
              v140 = 0xFFFFFFFF >> -v138;
            }

            else
            {
              v140 = 0;
            }

            WORD1(v165) = v140 & v139;
            result = (*(*a3 + 16))(a3, a2, &v164);
          }

          v141 = *(a2 + 16);
          if (v141 == 1)
          {
            v164 = 9;
            LODWORD(v165) = sub_298C078A8(v162, *(v16 + 23) | (*(v16 + 25) << 16));
            result = (*(*a3 + 16))(a3, a2, &v164);
            v141 = *(a2 + 16);
          }

          if (v141 == 2)
          {
            v164 = 10;
            v142 = *(v16 + 25);
            v143 = *(v16 + 23);
            v144 = (v143 >> 11) & (16 * v142) | v134;
            if (v144 >= 0xA && v144 != 16)
            {
              LOBYTE(v144) = v144 - 16;
            }

            LODWORD(v165) = (((v143 | (v142 << 16)) << 8) & (((v143 | (v142 << 16)) << 15) >> 31) & 0x3FFF00 | (v162 >> 6)) >> v144;
            goto LABEL_160;
          }

          goto LABEL_161;
        }
      }

      else
      {
        result = (*(*a3 + 32))(a3);
      }

LABEL_22:
      --v26;
LABEL_23:
      v25 = v27;
    }

    while (v27 < v17);
  }

  return result;
}