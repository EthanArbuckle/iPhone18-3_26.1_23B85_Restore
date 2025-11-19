uint64_t sub_29787E4F0(uint64_t a1, int a2)
{
  v4 = sub_29781F408(*(a1 + 16));
  v6 = 0;
  sub_29787F0F0(v4, a2, *(a1 + 56), *(a1 + 60), &v6);
  return sub_297840FC8((a1 + 48), v6);
}

_DWORD *sub_29787E54C(uint64_t a1, int a2, unsigned int *a3, unint64_t a4)
{
  v5 = a3;
  v14 = a3;
  v8 = sub_29781F408(*(a1 + 16));
  result = sub_29787E4F0(a1, a2);
  if (v5 < a4)
  {
    v10 = result;
    while (a4 - v5 != 24)
    {
      result = sub_29787F158(v8, v10, &v14, a4);
      v5 = v14;
      if (v14 >= a4)
      {
        return result;
      }
    }

    v11 = sub_2977FB5F0(v5);
    v12 = sub_297847BE0(v5);
    v13 = sub_297840670(v8, v11, v10, v12);

    return sub_29780819C(v5, v13);
  }

  return result;
}

uint64_t sub_29787E63C(uint64_t a1, unsigned int *a2)
{
  if (!sub_29787E910(a1))
  {
    v6 = sub_29781F408(*(a1 + 16));
    v7 = *(a1 + 36);
    v8 = *(a1 + 24);
    *(a1 + 36) = v7 + 1;
    v9 = v8 + 24 * v7;
    v10 = *(v9 + 15);
    *a2 = *v9;
    *(a2 + 15) = v10;
    if (!sub_29787E910(a1) && sub_29784FF04(*(a1 + 24) + 24 * *(a1 + 36), 66) && *a1)
    {
      v11 = 1;
      if (sub_29787E930(a1, a2))
      {
        return v11;
      }
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if (sub_297805430((a1 + 40)))
    {
      v12 = sub_2977FB5F0(a2);
      if (sub_29787EF6C(v6, v12, *(a1 + 52)))
      {
        sub_297829180(&v23);
        v13 = sub_29784FF04(a2, 5);
        v14 = sub_2977FB5F0(a2);
        v15 = v14;
        if (v13)
        {
          v16 = *(a1 + 40);
          v17 = *(a1 + 44);
          v18 = sub_297847BE0(a2);
          v19 = sub_29783FDB8(v6, v15, v16, v17, v18, 0, 0);
        }

        else
        {
          v19 = sub_29787E4F0(a1, v14);
        }

        v23 = v19;
        sub_29780819C(a2, v19);
      }
    }

    v20 = *(a1 + 64);
    if (v7)
    {
      if (*(a1 + 64))
      {
        sub_29785111C(a2, 1);
        v20 = *(a1 + 64);
      }

      if ((v20 & 2) != 0)
      {
        sub_29785111C(a2, 2);
      }
    }

    else
    {
      sub_2978531A8(a2, 1, v20 & 1);
      sub_2978531A8(a2, 2, (*(a1 + 64) >> 1) & 1);
    }

    *(a1 + 64) &= 0xFCu;
    if (sub_2978780CC(a2) || !sub_29784F384(a2))
    {
      return 1;
    }

    v21 = sub_29784F384(a2);
    v22 = sub_297871628(v21);
    sub_297853640(a2, v22);
    if ((v11 & sub_29783C224(v21)) == 1)
    {
      sub_29787C08C(*(a1 + 16), a2);
    }

    if ((*(a1 + 64) & 0x10) != 0 || !sub_297852028(v21))
    {
      return 1;
    }

    else
    {
      return sub_29787C22C(*(a1 + 16), a2);
    }
  }

  if (*a1)
  {
    sub_29787E920(*a1);
  }

  sub_297853ED0(a2);
  sub_2978531A8(a2, 1, *(a1 + 64) & 1);
  sub_2978531A8(a2, 2, (*(a1 + 64) & 6) != 0);
  if (!*(a1 + 36))
  {
    sub_29785111C(a2, 16);
  }

  v4 = *(a1 + 16);

  return sub_297873784(v4, a2);
}

uint64_t sub_29787E930(uint64_t a1, unsigned int *a2)
{
  v56[51] = *MEMORY[0x29EDCA608];
  sub_297806EC8(v55);
  v54 = sub_2977FB5F0(a2);
  sub_297829180(&v53);
  while (1)
  {
    v53 = sub_2977FB5F0((*(a1 + 24) + 24 * *(a1 + 36)));
    v4 = *(a1 + 36) + 1;
    *(a1 + 36) = v4;
    v5 = (*(a1 + 24) + 24 * v4);
    v6 = sub_297847BE0(a2);
    v7 = sub_297847BE0(v5);
    sub_297806DA4(v55, v7 + v6);
    __src = sub_2977FD108(v55, 0);
    v51 = 0;
    v8 = sub_29785A4C8(*(a1 + 16), a2, &__src, &v51);
    v9 = __src;
    if (v9 != sub_2977FD108(v55, 0))
    {
      v10 = sub_2977FD108(v55, 0);
      memcpy(v10, __src, v8);
    }

    if (v51)
    {
      goto LABEL_24;
    }

    __src = sub_2977FD108(v55, v8);
    v11 = sub_29785A4C8(*(a1 + 16), v5, &__src, &v51);
    if (v51)
    {
      goto LABEL_24;
    }

    v12 = v11;
    v13 = __src;
    if (v13 != sub_2977FD108(v55, v8))
    {
      v14 = sub_2977FD108(v55, v8);
      memcpy(v14, __src, v12);
    }

    sub_297806DA4(v55, v12 + v8);
    sub_29784FB00(v50);
    sub_297853ED0(v50);
    sub_297853640(v50, 13);
    v15 = *(a1 + 16);
    v16 = sub_2978059B8(v55);
    v18 = v17;
    sub_297829180(v56);
    sub_297829180(v49);
    sub_29787BBC8(v15, v16, v18, v50, v56[0], v49[0]);
    v19 = sub_2977FB5F0(v50);
    v20 = sub_2977FB7B8(v50);
    sub_29784FB00(v49);
    if (!sub_29787EFCC(a2) || !sub_29787EFCC(v5))
    {
      break;
    }

    sub_29787EFF4(*(a1 + 16), 1);
    sub_297853ED0(v49);
    sub_297853640(v49, 7);
    sub_2977FD5DC(v49, v20);
    sub_29780819C(v49, v19);
    sub_297847418(v49, v12 + v8);
LABEL_17:
    v30 = sub_297850404(a2);
    sub_2978531A8(v49, 1, v30);
    v31 = sub_29785480C(a2);
    sub_2978531A8(v49, 2, v31);
    ++*(a1 + 36);
    *a2 = *v49;
    *(a2 + 15) = *(&v49[3] + 3);
    if (sub_29787E910(a1) || !sub_29784FF04(*(a1 + 24) + 24 * *(a1 + 36), 66))
    {
      goto LABEL_31;
    }
  }

  sub_29787EFF4(*(a1 + 16), 0);
  v21 = sub_29781F408(*(a1 + 16));
  v22 = sub_29783E548(v21, v19);
  v48 = 0;
  v23 = v22;
  v56[0] = sub_297840A24(v21, v22, &v48);
  v56[1] = v24;
  v25 = sub_2977FB720(v56);
  if (v48 == 1)
  {
    goto LABEL_41;
  }

  v26 = v25;
  v27 = sub_2978423A8(v21, v23);
  v28 = sub_29783CFFC(*(a1 + 16));
  sub_29784F6B0(v56, v27, v28, v26, v20, v20 + v8 + v12);
  v29 = sub_29784FB04(v56, v49);
  if (!sub_29784FF04(v49, 1) && v29)
  {
    if (sub_29784FF04(v49, 66))
    {
      sub_297853640(v49, 0);
    }

    sub_29784FCAC(v56);
    goto LABEL_17;
  }

  if ((*sub_29783CFFC(*(a1 + 16)) & 8) != 0 && sub_29784FF04(a2, 42) && sub_29784FF04(v5, 42))
  {
    sub_29787F018(a1, a2);
    sub_29784FCAC(v56);
LABEL_24:
    v32 = 1;
    goto LABEL_42;
  }

  if ((*(sub_29783CFFC(*(a1 + 16)) + 2) & 0x40) == 0)
  {
    v33 = sub_29781F408(*(a1 + 16));
    v34 = sub_29783FDB8(v33, v53, *(a1 + 40), *(a1 + 44), 2, 0, 0);
    v35 = *(a1 + 16);
    if ((*sub_29783CFFC(v35) & 8) != 0)
    {
      v36 = 796;
    }

    else
    {
      v36 = 700;
    }

    sub_297850EEC(v35, v34, v36, v47);
    v37 = sub_297801F10(v55);
    sub_2978295C0(v47, v37, v38);
    sub_29782963C(v47);
  }

  sub_29784FCAC(v56);
LABEL_31:
  LODWORD(v56[0]) = sub_2977FB5F0((*(a1 + 24) + 24 * (*(a1 + 36) - 1)));
  v39 = sub_29781F408(*(a1 + 16));
  if (sub_29782D9A0(&v54))
  {
    v54 = sub_29787E4F0(a1, v54);
  }

  if (sub_29782D9A0(v56))
  {
    LODWORD(v56[0]) = sub_29787E4F0(a1, v56[0]);
  }

  v50[0] = sub_29783E548(v39, *(a1 + 48));
  for (v49[0] = sub_29783E548(v39, v54); sub_2978435D4(v49, v50); v49[0] = sub_29783E548(v39, v54))
  {
    v54 = sub_297841140(v39, v54);
  }

  for (v49[0] = sub_29783E548(v39, v56[0]); sub_2978435D4(v49, v50); v49[0] = sub_29783E548(v39, v56[0]))
  {
    LODWORD(v56[0]) = sub_297841140(v39, v56[0]) >> 32;
  }

  v40 = sub_2977FB5F0(a2);
  v41 = v54;
  v42 = v56[0];
  v43 = sub_297847BE0(a2);
  v44 = sub_29783FDB8(v39, v40, v41, v42, v43, 0, 0);
  sub_29780819C(a2, v44);
  if (sub_29784FF04(a2, 7))
  {
    sub_29787BF44(*(a1 + 16), a2);
  }

LABEL_41:
  v32 = 0;
LABEL_42:
  sub_297801F60(v55);
  v45 = *MEMORY[0x29EDCA608];
  return v32;
}

BOOL sub_29787EF6C(uint64_t a1, int a2, unsigned int a3)
{
  v8 = a2;
  v5 = sub_29783E760(&v8);
  v6 = *(a1 + 500);
  if (v5 >= v6 != v6 > a3)
  {
    return v5 < a3;
  }

  else
  {
    return v5 >= v6;
  }
}

BOOL sub_29787EFCC(uint64_t a1)
{
  v1 = sub_2978503FC(a1);

  return sub_29787F33C(v1);
}

uint64_t sub_29787EFF4(uint64_t result, int a2)
{
  if (a2)
  {
    ++*(result + 1384);
  }

  else
  {
    ++*(result + 1380);
  }

  return result;
}

uint64_t sub_29787F018(uint64_t *a1, unsigned int *a2)
{
  sub_29787E920(*a1);
  v4 = a1[2];

  return sub_2978738EC(v4, a2);
}

uint64_t sub_29787F05C(uint64_t a1)
{
  if (sub_29787E910(a1))
  {
    return 2;
  }

  else
  {
    return sub_29784FF04(*(a1 + 24) + 24 * *(a1 + 36), 21);
  }
}

BOOL sub_29787F0A4(uint64_t a1)
{
  result = sub_29784FF04(*(a1 + 24) + 24 * (*(a1 + 32) - 1), 2);
  if (result)
  {
    return !sub_29787E910(a1);
  }

  return result;
}

BOOL sub_29787F0F0(uint64_t a1, int a2, int a3, int a4, _DWORD *a5)
{
  v12 = a3;
  v13 = a2;
  v7 = sub_29783E760(&v13);
  v8 = sub_29783E760(&v12);
  v9 = v7 - v8;
  result = v7 >= v8 && v7 < v8 + a4;
  if (a5)
  {
    if (result)
    {
      *a5 = v9;
    }
  }

  return result;
}

uint64_t sub_29787F158(uint64_t a1, unsigned int a2, unsigned int **a3, unint64_t a4)
{
  v8 = sub_2977FB5F0(*a3);
  v24 = v8;
  v9 = *a3;
  v10 = (*a3 + 6);
  if (v10 < a4)
  {
    while (1)
    {
      v10 = (v9 + 6);
      v23 = sub_2977FB5F0(v9 + 6);
      v11 = sub_29782D9A0(&v24);
      if (v11 != sub_29782D9A0(&v23))
      {
        break;
      }

      v22 = 0;
      if (!sub_29787F34C(a1, v24, v23, &v22) || v22 >= 0x33)
      {
        v10 = (v9 + 6);
        break;
      }

      v24 = v23;
      v12 = v9 + 6;
      v13 = v9 + 12;
      v9 += 6;
      if (v13 >= a4)
      {
        v10 = (v12 + 6);
        v9 = v12;
        break;
      }
    }
  }

  v23 = 0;
  v14 = sub_2977FB5F0(v9);
  sub_29787F34C(a1, v8, v14, &v23);
  v15 = v23;
  v16 = sub_297847BE0(v9);
  result = sub_297840670(a1, v8, a2, v16 + v15);
  v22 = result;
  for (i = *a3; i < v10; *a3 = i)
  {
    v21 = 0;
    v19 = sub_2977FB5F0(i);
    sub_29787F34C(a1, v8, v19, &v21);
    v20 = sub_297840FC8(&v22, v21);
    result = sub_29780819C(i, v20);
    i = *a3 + 6;
  }

  return result;
}

uint64_t sub_29787F2DC(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = *(a1 + 64) & 0xFE | sub_297850404(a2);
  result = sub_29785480C(a2);
  if (result)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 64) = *(a1 + 64) & 0xFD | v5;
  return result;
}

uint64_t sub_29787F34C(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v10 = a3;
  v11 = a2;
  v6 = sub_29783E760(&v11);
  v7 = sub_29783E760(&v10);
  v8 = (v6 >= *(a1 + 500)) ^ (v7 < *(a1 + 500));
  if (a4 && v8)
  {
    *a4 = v7 - v6;
  }

  return v8;
}

uint64_t sub_29787F3CC()
{
  v0 = off_2A1A90270;
  if ((*off_2A1A90270(&off_2A1A90270) & 1) == 0)
  {
    v6 = sub_2977FA198(136);
    sub_297817C28(v6);
    v7 = off_2A1A90258();
    sub_2977FDEF4(v7, v6);
    _tlv_atexit(sub_29787F584, v7);
    *v0(&off_2A1A90270) = 1;
  }

  v1 = off_2A1A902A0;
  if ((*off_2A1A902A0(&off_2A1A902A0) & 1) == 0)
  {
    v8 = sub_2977FA198(32);
    v9 = sub_2977FB4FC(0x52uLL);
    v10 = off_2A1A90258();
    v11 = sub_2977FB720(v10);
    sub_29787F588(v8, v9, v11);
    v12 = off_2A1A90288(&off_2A1A90288);
    sub_2977FDEF4(v12, v8);
    _tlv_atexit(sub_29787F58C, v12);
    *v1(&off_2A1A902A0) = 1;
  }

  v2 = off_2A1A902B8();
  v3 = *v2;
  v4 = off_2A1A90288(&off_2A1A90288);
  result = sub_2977FB720(v4);
  if (v3 == 1)
  {
    sub_29787F590(result);
    *v2 = 0;

    return sub_2977FB720(v4);
  }

  return result;
}

_WORD *sub_29787F590(uint64_t a1)
{
  sub_2977FB7B4(&v3, "ci_outColorF");
  *sub_29788035C(a1, v3, v4) = 1;
  sub_2977FB7B4(&v3, "ci_outColorH");
  *sub_29788035C(a1, v3, v4) = 2;
  sub_2977FB7B4(&v3, "radians");
  *sub_29788035C(a1, v3, v4) = 3;
  sub_2977FB7B4(&v3, "degrees");
  *sub_29788035C(a1, v3, v4) = 4;
  sub_2977FB7B4(&v3, "sin");
  *sub_29788035C(a1, v3, v4) = 5;
  sub_2977FB7B4(&v3, "cos");
  *sub_29788035C(a1, v3, v4) = 6;
  sub_2977FB7B4(&v3, "tan");
  *sub_29788035C(a1, v3, v4) = 7;
  sub_2977FB7B4(&v3, "asin");
  *sub_29788035C(a1, v3, v4) = 8;
  sub_2977FB7B4(&v3, "acos");
  *sub_29788035C(a1, v3, v4) = 9;
  sub_2977FB7B4(&v3, "atan");
  *sub_29788035C(a1, v3, v4) = 10;
  sub_2977FB7B4(&v3, "sinh");
  *sub_29788035C(a1, v3, v4) = 12;
  sub_2977FB7B4(&v3, "cosh");
  *sub_29788035C(a1, v3, v4) = 13;
  sub_2977FB7B4(&v3, "tanh");
  *sub_29788035C(a1, v3, v4) = 14;
  sub_2977FB7B4(&v3, "asinh");
  *sub_29788035C(a1, v3, v4) = 15;
  sub_2977FB7B4(&v3, "acosh");
  *sub_29788035C(a1, v3, v4) = 16;
  sub_2977FB7B4(&v3, "atanh");
  *sub_29788035C(a1, v3, v4) = 17;
  sub_2977FB7B4(&v3, "pow");
  *sub_29788035C(a1, v3, v4) = 18;
  sub_2977FB7B4(&v3, "exp");
  *sub_29788035C(a1, v3, v4) = 19;
  sub_2977FB7B4(&v3, "log");
  *sub_29788035C(a1, v3, v4) = 20;
  sub_2977FB7B4(&v3, "exp2");
  *sub_29788035C(a1, v3, v4) = 21;
  sub_2977FB7B4(&v3, "log2");
  *sub_29788035C(a1, v3, v4) = 22;
  sub_2977FB7B4(&v3, "sqrt");
  *sub_29788035C(a1, v3, v4) = 23;
  sub_2977FB7B4(&v3, "inversesqrt");
  *sub_29788035C(a1, v3, v4) = 24;
  sub_2977FB7B4(&v3, "abs");
  *sub_29788035C(a1, v3, v4) = 25;
  sub_2977FB7B4(&v3, "sign");
  *sub_29788035C(a1, v3, v4) = 26;
  sub_2977FB7B4(&v3, "floor");
  *sub_29788035C(a1, v3, v4) = 27;
  sub_2977FB7B4(&v3, "trunc");
  *sub_29788035C(a1, v3, v4) = 28;
  sub_2977FB7B4(&v3, "round");
  *sub_29788035C(a1, v3, v4) = 29;
  sub_2977FB7B4(&v3, "roundEven");
  *sub_29788035C(a1, v3, v4) = 30;
  sub_2977FB7B4(&v3, "ceil");
  *sub_29788035C(a1, v3, v4) = 31;
  sub_2977FB7B4(&v3, "fract");
  *sub_29788035C(a1, v3, v4) = 32;
  sub_2977FB7B4(&v3, "mod");
  *sub_29788035C(a1, v3, v4) = 33;
  sub_2977FB7B4(&v3, "modf");
  *sub_29788035C(a1, v3, v4) = 34;
  sub_2977FB7B4(&v3, "min");
  *sub_29788035C(a1, v3, v4) = 35;
  sub_2977FB7B4(&v3, "max");
  *sub_29788035C(a1, v3, v4) = 36;
  sub_2977FB7B4(&v3, "clamp");
  *sub_29788035C(a1, v3, v4) = 37;
  sub_2977FB7B4(&v3, "mix");
  *sub_29788035C(a1, v3, v4) = 38;
  sub_2977FB7B4(&v3, "step");
  *sub_29788035C(a1, v3, v4) = 40;
  sub_2977FB7B4(&v3, "smoothstep");
  *sub_29788035C(a1, v3, v4) = 41;
  sub_2977FB7B4(&v3, "isnan");
  *sub_29788035C(a1, v3, v4) = 42;
  sub_2977FB7B4(&v3, "isinf");
  *sub_29788035C(a1, v3, v4) = 43;
  sub_2977FB7B4(&v3, "floatBitsToInt");
  *sub_29788035C(a1, v3, v4) = 44;
  sub_2977FB7B4(&v3, "floatBitsToUint");
  *sub_29788035C(a1, v3, v4) = 45;
  sub_2977FB7B4(&v3, "intBitsToFloat");
  *sub_29788035C(a1, v3, v4) = 46;
  sub_2977FB7B4(&v3, "uintBitsToFloat");
  *sub_29788035C(a1, v3, v4) = 47;
  sub_2977FB7B4(&v3, "packSnorm2x16");
  *sub_29788035C(a1, v3, v4) = 48;
  sub_2977FB7B4(&v3, "unpackSnorm2x16");
  *sub_29788035C(a1, v3, v4) = 49;
  sub_2977FB7B4(&v3, "packUnorm2x16");
  *sub_29788035C(a1, v3, v4) = 50;
  sub_2977FB7B4(&v3, "unpackUnorm2x16");
  *sub_29788035C(a1, v3, v4) = 51;
  sub_2977FB7B4(&v3, "packHalf2x16");
  *sub_29788035C(a1, v3, v4) = 52;
  sub_2977FB7B4(&v3, "unpackHalf2x16");
  *sub_29788035C(a1, v3, v4) = 53;
  sub_2977FB7B4(&v3, "length");
  *sub_29788035C(a1, v3, v4) = 54;
  sub_2977FB7B4(&v3, "distance");
  *sub_29788035C(a1, v3, v4) = 55;
  sub_2977FB7B4(&v3, "dot");
  *sub_29788035C(a1, v3, v4) = 56;
  sub_2977FB7B4(&v3, "cross");
  *sub_29788035C(a1, v3, v4) = 57;
  sub_2977FB7B4(&v3, "normalize");
  *sub_29788035C(a1, v3, v4) = 58;
  sub_2977FB7B4(&v3, "faceforward");
  *sub_29788035C(a1, v3, v4) = 59;
  sub_2977FB7B4(&v3, "reflect");
  *sub_29788035C(a1, v3, v4) = 60;
  sub_2977FB7B4(&v3, "refract");
  *sub_29788035C(a1, v3, v4) = 61;
  sub_2977FB7B4(&v3, "matrixCompMult");
  *sub_29788035C(a1, v3, v4) = 62;
  sub_2977FB7B4(&v3, "outerProduct");
  *sub_29788035C(a1, v3, v4) = 63;
  sub_2977FB7B4(&v3, "transpose");
  *sub_29788035C(a1, v3, v4) = 64;
  sub_2977FB7B4(&v3, "determinant");
  *sub_29788035C(a1, v3, v4) = 65;
  sub_2977FB7B4(&v3, "inverse");
  *sub_29788035C(a1, v3, v4) = 66;
  sub_2977FB7B4(&v3, "lessThan");
  *sub_29788035C(a1, v3, v4) = 67;
  sub_2977FB7B4(&v3, "lessThanEqual");
  *sub_29788035C(a1, v3, v4) = 68;
  sub_2977FB7B4(&v3, "greaterThan");
  *sub_29788035C(a1, v3, v4) = 69;
  sub_2977FB7B4(&v3, "greaterThanEqual");
  *sub_29788035C(a1, v3, v4) = 70;
  sub_2977FB7B4(&v3, "equal");
  *sub_29788035C(a1, v3, v4) = 71;
  sub_2977FB7B4(&v3, "notEqual");
  *sub_29788035C(a1, v3, v4) = 72;
  sub_2977FB7B4(&v3, "any");
  *sub_29788035C(a1, v3, v4) = 73;
  sub_2977FB7B4(&v3, "all");
  *sub_29788035C(a1, v3, v4) = 74;
  sub_2977FB7B4(&v3, "not");
  *sub_29788035C(a1, v3, v4) = 75;
  sub_2977FB7B4(&v3, "$assert");
  *sub_29788035C(a1, v3, v4) = 76;
  sub_2977FB7B4(&v3, "sample");
  *sub_29788035C(a1, v3, v4) = 77;
  sub_2977FB7B4(&v3, "samplerTransform");
  *sub_29788035C(a1, v3, v4) = 78;
  sub_2977FB7B4(&v3, "samplerExtent");
  *sub_29788035C(a1, v3, v4) = 79;
  sub_2977FB7B4(&v3, "samplerCoord");
  *sub_29788035C(a1, v3, v4) = 80;
  sub_2977FB7B4(&v3, "texture2D");
  result = sub_29788035C(a1, v3, v4);
  *result = 81;
  return result;
}

void sub_2978800D8()
{
  v0 = j_j_nullsub_1_0();

  j__free(v0);
}

unsigned int *sub_297880100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_297880168(*(a1 + 24), a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_29783C278(*(a1 + 16), a2, a3);
  sub_297828E3C(v8, v7);
  return v8;
}

uint64_t sub_297880168(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29783D390(a1, a2, a3);
  v5 = sub_29783BFD4(a1);
  result = sub_29781550C(&v6, &v5);
  if (result)
  {
    return *(sub_29781AD54(&v6) + 4);
  }

  return result;
}

void sub_2978801EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_297880204(a1, v3);
  }
}

void sub_297880204(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_297818154(a2);

    j__free(v2);
  }
}

uint64_t sub_297880238(uint64_t a1, int a2, uint64_t a3)
{
  result = sub_29780ECDC(a1, a2, 8);
  *(result + 24) = a3;
  return result;
}

void sub_297880290(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978802A8(a1, v3);
  }
}

void sub_2978802A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978802DC(a2);

    j__free(v2);
  }
}

uint64_t sub_2978802E0(uint64_t a1)
{
  if (!sub_29781BCA4(a1))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 && v5 != sub_2978027E4())
        {
          sub_297843BB0(v5, *(a1 + 24));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_29788035C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_297880384(a1, a2, a3);

  return sub_29783D400(v3);
}

uint64_t sub_29788038C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  sub_2978804DC(v11, &v10, v7);
  v8 = sub_2978803E8(a1, v7);
  v9 = v5;
  return sub_29781AD54(&v8);
}

uint64_t sub_2978803E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29780ED7C(a1, *a2, *(a2 + 8));
  v5 = *a1;
  v6 = v4;
  v7 = *(*a1 + 8 * v4);
  if (v7)
  {
    if (v7 != sub_2978027E4())
    {
      sub_29781C144(v11, *a1 + 8 * v6, 0);
      v10 = 0;
      return sub_29780EB40(v11, &v10);
    }

    v7 = *(v5 + 8 * v6);
  }

  if (v7 == sub_2978027E4())
  {
    --*(a1 + 16);
  }

  *(v5 + 8 * v6) = sub_2978804EC(*a2, *(a2 + 8), *(a1 + 24), *(a2 + 16));
  ++*(a1 + 12);
  v8 = sub_29780F0F4(a1, v6);
  sub_29781C144(v11, *a1 + 8 * v8, 0);
  v10 = 1;
  return sub_29780EB40(v11, &v10);
}

uint64_t sub_2978804EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v13[0] = a1;
  v13[1] = a2;
  v6 = sub_2977FB7B8(v13);
  v7 = sub_297811B28();
  v8 = sub_297803E1C(a3, (v6 + 9), v7);
  v9 = sub_297880580(v8, v6, a4);
  v10 = sub_297819E7C(v9);
  v11 = sub_2977FB720(v13);
  memcpy(v10, v11, v6);
  *(v10 + v6) = 0;
  return v8;
}

_DWORD *sub_297880584(_DWORD *a1, int a2, __int16 a3)
{
  result = sub_29780819C(a1, a2);
  *(result + 2) = a3;
  return result;
}

__n128 sub_2978805B0(__n128 *a1, __n128 *a2, unsigned __int16 *a3)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u16[0] = *a3;
  return result;
}

uint64_t sub_2978805C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_297880614(a2, a3);

  return sub_297880608(a1, v4);
}

uint64_t sub_297880614(uint64_t a1, uint64_t a2)
{
  v2 = sub_2978102C8(v365, a1, a2);
  v364 = 1;
  v3 = sub_2978287E8(v2, "GL_ARB_shader_objects", &v364);
  v363 = 2;
  v4 = sub_29782852C(v3, "GL_ARB_vertex_shader", &v363);
  v362 = 3;
  v5 = sub_297828770(v4, "GL_ARB_fragment_shader", &v362);
  v361 = 4;
  v6 = sub_297828AC4(v5, "GL_ARB_shading_language_100", &v361);
  v360 = 5;
  v7 = sub_29786399C(v6, "GL_ARB_fragment_program_shadow", &v360);
  v359 = 6;
  v8 = sub_2978288D8(v7, "GL_ARB_draw_buffers", &v359);
  v358 = 7;
  v9 = sub_297828860(v8, "GL_ARB_texture_rectangle", &v358);
  v357 = 8;
  v10 = sub_297828430(v9, "GL_ARB_depth_buffer_float", &v357);
  v356 = 9;
  v11 = sub_2978287E8(v10, "GL_ARB_draw_instanced", &v356);
  v355 = 10;
  v12 = sub_2978284B4(v11, "GL_ARB_framebuffer_sRGB", &v355);
  v354 = 11;
  v13 = sub_2978284B4(v12, "GL_ARB_geometry_shader4", &v354);
  v353 = 12;
  v14 = sub_2978828CC(v13, "GL_ARB_texture_compression_rgtc", &v353);
  v352 = 13;
  v15 = sub_2978289D4(v14, "GL_ARB_uniform_buffer_object", &v352);
  v351 = 14;
  v16 = sub_297828430(v15, "GL_ARB_shader_texture_lod", &v351);
  v350 = 15;
  v17 = sub_297878980(v16, "GL_ARB_fragment_coord_conventions", &v350);
  v349 = 16;
  v18 = sub_2978284B4(v17, "GL_ARB_provoking_vertex", &v349);
  v348 = 17;
  v19 = sub_297828950(v18, "GL_ARB_texture_multisample", &v348);
  v347 = 18;
  v20 = sub_297828860(v19, "GL_ARB_vertex_array_bgra", &v347);
  v346 = 19;
  v21 = sub_2978287E8(v20, "GL_ARB_sample_shading", &v346);
  v345 = 20;
  v22 = sub_297828C20(v21, "GL_ARB_texture_cube_map_array", &v345);
  v344 = 21;
  v23 = sub_2978287E8(v22, "GL_ARB_texture_gather", &v344);
  v343 = 22;
  v24 = sub_297828860(v23, "GL_ARB_texture_query_lod", &v343);
  v342 = 23;
  v25 = sub_2978828CC(v24, "GL_ARB_shading_language_include", &v342);
  v341 = 24;
  v26 = sub_2978828CC(v25, "GL_ARB_explicit_attrib_location", &v341);
  v340 = 25;
  v27 = sub_297828950(v26, "GL_ARB_shader_bit_encoding", &v340);
  v339 = 26;
  v28 = sub_2978283B8(v27, "GL_ARB_gpu_shader5", &v339);
  v338 = 27;
  v29 = sub_297828770(v28, "GL_ARB_gpu_shader_fp64", &v338);
  v337 = 28;
  v30 = sub_297828860(v29, "GL_ARB_shader_subroutine", &v337);
  v336 = 29;
  v31 = sub_297828950(v30, "GL_ARB_tessellation_shader", &v336);
  v335 = 30;
  v32 = sub_297828950(v31, "GL_ARB_transform_feedback2", &v335);
  v334 = 31;
  v33 = sub_297828860(v32, "GL_ARB_ES2_compatibility", &v334);
  v333 = 32;
  v34 = sub_297828430(v33, "GL_ARB_get_program_binary", &v333);
  v332 = 33;
  v35 = sub_29786399C(v34, "GL_ARB_separate_shader_objects", &v332);
  v331 = 34;
  v36 = sub_2978284B4(v35, "GL_ARB_shader_precision", &v331);
  v330 = 35;
  v37 = sub_297828950(v36, "GL_ARB_vertex_attrib_64bit", &v330);
  v329 = 36;
  v38 = sub_2978287E8(v37, "GL_ARB_viewport_array", &v329);
  v328 = 37;
  v39 = sub_29782868C(v38, "GL_ARB_robustness", &v328);
  v327 = 38;
  v40 = sub_2978289D4(v39, "GL_ARB_shader_stencil_export", &v327);
  v326 = 39;
  v41 = sub_2978828CC(v40, "GL_ARB_shading_language_420pack", &v326);
  v325 = 40;
  v42 = sub_297828430(v41, "GL_ARB_conservative_depth", &v325);
  v324 = 41;
  v43 = sub_297828C20(v42, "GL_ARB_shader_atomic_counters", &v324);
  v323 = 42;
  v44 = sub_29786399C(v43, "GL_ARB_shader_image_load_store", &v323);
  v322 = 43;
  v45 = sub_2978828CC(v44, "GL_ARB_shading_language_packing", &v322);
  v321 = 44;
  v46 = sub_2978284B4(v45, "GL_ARB_arrays_of_arrays", &v321);
  v320 = 45;
  v47 = sub_2978287E8(v46, "GL_ARB_compute_shader", &v320);
  v319 = 46;
  v48 = sub_297828860(v47, "GL_ARB_ES3_compatibility", &v319);
  v318 = 47;
  v49 = sub_297878A7C(v48, "GL_ARB_explicit_uniform_location", &v318);
  v317 = 48;
  v50 = sub_29786399C(v49, "GL_ARB_fragment_layer_viewport", &v317);
  v316 = 49;
  v51 = sub_297828430(v50, "GL_ARB_invalidate_subdata", &v316);
  v315 = 50;
  v52 = sub_2978789EC(v51, "GL_ARB_robust_buffer_access_behavior", &v315);
  v314 = 51;
  v53 = sub_297828860(v52, "GL_ARB_shader_image_size", &v314);
  v313 = 52;
  v54 = sub_297828704(v53, "GL_ARB_shader_storage_buffer_object", &v313);
  v312 = 53;
  v55 = sub_297828860(v54, "GL_ARB_stencil_texturing", &v312);
  v311 = 54;
  v56 = sub_297828AC4(v55, "GL_ARB_texture_query_levels", &v311);
  v310 = 55;
  v57 = sub_2978284B4(v56, "GL_ARB_enhanced_layouts", &v310);
  v309 = 56;
  v58 = sub_2978284B4(v57, "GL_ARB_texture_stencil8", &v309);
  v308 = 57;
  v59 = sub_2978284B4(v58, "GL_ARB_bindless_texture", &v308);
  v307 = 58;
  v60 = sub_297828BB4(v59, "GL_ARB_compute_variable_group_size", &v307);
  v306 = 59;
  v61 = sub_297828C20(v60, "GL_ARB_shader_draw_parameters", &v306);
  v305 = 60;
  v62 = sub_297828860(v61, "GL_ARB_shader_group_vote", &v305);
  v304 = 61;
  v63 = sub_297828950(v62, "GL_ARB_ES3_1_compatibility", &v304);
  v303 = 62;
  v64 = sub_29782852C(v63, "GL_ARB_cull_distance", &v303);
  v302 = 63;
  v65 = sub_297828430(v64, "GL_ARB_derivative_control", &v302);
  v301 = 64;
  v66 = sub_297828704(v65, "GL_ARB_shader_texture_image_samples", &v301);
  v300 = 65;
  v67 = sub_2978288D8(v66, "GL_EXT_texture_sRGB", &v300);
  v299 = 66;
  v68 = sub_2978283B8(v67, "GL_NV_gpu_program4", &v299);
  v298 = 67;
  v69 = sub_2978284B4(v68, "GL_EXT_geometry_shader4", &v298);
  v297 = 68;
  v70 = sub_2978283B8(v69, "GL_EXT_gpu_shader4", &v297);
  v296 = 69;
  v71 = sub_2978287E8(v70, "GL_EXT_draw_instanced", &v296);
  v295 = 70;
  v72 = sub_2978288D8(v71, "GL_EXT_packed_float", &v295);
  v294 = 71;
  v73 = sub_29782852C(v72, "GL_EXT_texture_array", &v294);
  v293 = 72;
  v74 = sub_2978828CC(v73, "GL_EXT_texture_compression_latc", &v293);
  v292 = 73;
  v75 = sub_2978828CC(v74, "GL_EXT_texture_compression_rgtc", &v292);
  v291 = 74;
  v76 = sub_29786399C(v75, "GL_EXT_texture_shared_exponent", &v291);
  v290 = 75;
  v77 = sub_297828860(v76, "GL_NV_depth_buffer_float", &v290);
  v289 = 76;
  v78 = sub_2978284B4(v77, "GL_EXT_framebuffer_sRGB", &v289);
  v288 = 77;
  v79 = sub_297828860(v78, "GL_NV_transform_feedback", &v288);
  v287 = 78;
  v80 = sub_2978284B4(v79, "GL_EXT_bindable_uniform", &v287);
  v286 = 79;
  v81 = sub_297828430(v80, "GL_EXT_transform_feedback", &v286);
  v285 = 80;
  v82 = sub_297828860(v81, "GL_EXT_vertex_array_bgra", &v285);
  v284 = 81;
  v83 = sub_297828950(v82, "GL_NV_explicit_multisample", &v284);
  v283 = 82;
  v84 = sub_297812248(v83, "GL_ATI_meminfo", &v283);
  v282 = 83;
  v85 = sub_2978284B4(v84, "GL_AMD_texture_texture4", &v282);
  v281 = 84;
  v86 = sub_297878A7C(v85, "GL_AMD_vertex_shader_tessellator", &v281);
  v280 = 85;
  v87 = sub_2978284B4(v86, "GL_EXT_provoking_vertex", &v280);
  v279 = 86;
  v88 = sub_29782852C(v87, "GL_EXT_texture_snorm", &v279);
  v278 = 87;
  v89 = sub_29786399C(v88, "GL_EXT_separate_shader_objects", &v278);
  v277 = 88;
  v90 = sub_297828860(v89, "GL_NV_shader_buffer_load", &v277);
  v276 = 89;
  v91 = sub_2978289D4(v90, "GL_AMD_shader_stencil_export", &v276);
  v275 = 90;
  v92 = sub_297828430(v91, "GL_AMD_conservative_depth", &v275);
  v274 = 91;
  v93 = sub_29786399C(v92, "GL_EXT_shader_image_load_store", &v274);
  v273 = 92;
  v94 = sub_297828950(v93, "GL_EXT_vertex_attrib_64bit", &v273);
  v272 = 93;
  v95 = sub_2978283B8(v94, "GL_NV_gpu_program5", &v272);
  v271 = 94;
  v96 = sub_29782868C(v95, "GL_NV_gpu_shader5", &v271);
  v270 = 95;
  v97 = sub_297828430(v96, "GL_NV_shader_buffer_store", &v270);
  v269 = 96;
  v98 = sub_297828AC4(v97, "GL_NV_tessellation_program5", &v269);
  v268 = 97;
  v99 = sub_2978288D8(v98, "GL_NV_vdpau_interop", &v268);
  v267 = 98;
  v100 = sub_29782852C(v99, "GL_NV_path_rendering", &v267);
  v266 = 99;
  v101 = sub_297828704(v100, "GL_AMD_vertex_shader_viewport_index", &v266);
  v265 = 100;
  v102 = sub_297828950(v101, "GL_AMD_vertex_shader_layer", &v265);
  v264 = 101;
  v103 = sub_297828770(v102, "GL_NV_bindless_texture", &v264);
  v263 = 102;
  v104 = sub_297828430(v103, "GL_NV_shader_atomic_float", &v263);
  v262 = 103;
  v105 = sub_2978287E8(v104, "GL_AMD_sparse_texture", &v262);
  v261 = 104;
  v106 = sub_2978289D4(v105, "GL_AMD_shader_trinary_minmax", &v261);
  v260 = 105;
  v107 = sub_29782852C(v106, "GL_INTEL_map_texture", &v260);
  v259 = 106;
  v108 = sub_297828430(v107, "GL_EXT_shader_integer_mix", &v259);
  v258 = 107;
  v109 = sub_297878980(v108, "GL_INTEL_fragment_shader_ordering", &v258);
  v257 = 108;
  v110 = sub_297828BB4(v109, "GL_AMD_shader_stencil_value_export", &v257);
  v256 = 109;
  v111 = sub_297828430(v110, "GL_NV_shader_thread_group", &v256);
  v255 = 110;
  v112 = sub_297828AC4(v111, "GL_NV_shader_thread_shuffle", &v255);
  v254 = 111;
  v113 = sub_297828BB4(v112, "GL_EXT_shader_image_load_formatted", &v254);
  v253 = 112;
  v114 = sub_297828950(v113, "GL_AMD_transform_feedback4", &v253);
  v252 = 113;
  v115 = sub_2978284B4(v114, "GL_AMD_gpu_shader_int64", &v252);
  v251 = 114;
  v116 = sub_29782868C(v115, "GL_AMD_gcn_shader", &v251);
  v250 = 115;
  v117 = sub_297828430(v116, "GL_NV_shader_atomic_int64", &v250);
  v249 = 116;
  v118 = sub_29786399C(v117, "GL_KHR_blend_equation_advanced", &v249);
  v248 = 117;
  v119 = sub_297828950(v118, "GL_EXT_post_depth_coverage", &v248);
  v247 = 118;
  v120 = sub_297828430(v119, "GL_EXT_raster_multisample", &v247);
  v246 = 119;
  v121 = sub_297828770(v120, "GL_EXT_sparse_texture2", &v246);
  v245 = 120;
  v122 = sub_297828430(v121, "GL_NV_conservative_raster", &v245);
  v244 = 121;
  v123 = sub_29782852C(v122, "GL_NV_fill_rectangle", &v244);
  v243 = 122;
  v124 = sub_297878A7C(v123, "GL_NV_fragment_coverage_to_color", &v243);
  v242 = 123;
  v125 = sub_2978828CC(v124, "GL_NV_fragment_shader_interlock", &v242);
  v241 = 124;
  v126 = sub_2978828CC(v125, "GL_NV_framebuffer_mixed_samples", &v241);
  v240 = 125;
  v127 = sub_297878980(v126, "GL_NV_geometry_shader_passthrough", &v240);
  v239 = 126;
  v128 = sub_297878A7C(v127, "GL_NV_path_rendering_shared_edge", &v239);
  v238 = 127;
  v129 = sub_297828770(v128, "GL_NV_sample_locations", &v238);
  v237 = 128;
  v130 = sub_297828704(v129, "GL_NV_sample_mask_override_coverage", &v237);
  v236 = 129;
  v131 = sub_2978828CC(v130, "GL_NV_shader_atomic_fp16_vector", &v236);
  v235 = 130;
  v132 = sub_29782868C(v131, "GL_OES_texture_3D", &v235);
  v234 = 131;
  v133 = sub_297828AC4(v132, "GL_OES_standard_derivatives", &v234);
  v233 = 132;
  v134 = sub_297828430(v133, "GL_OES_get_program_binary", &v233);
  v232 = 133;
  v135 = sub_297828950(v134, "GL_AMD_program_binary_Z400", &v232);
  v231 = 134;
  v136 = sub_297828430(v135, "GL_EXT_shader_texture_lod", &v231);
  v230 = 135;
  v137 = sub_29782868C(v136, "GL_EXT_frag_depth", &v230);
  v229 = 136;
  v138 = sub_297828430(v137, "GL_OES_EGL_image_external", &v229);
  v228 = 137;
  v139 = sub_2978283B8(v138, "GL_NV_draw_buffers", &v228);
  v227 = 138;
  v140 = sub_29786399C(v139, "GL_EXT_separate_shader_objects", &v227);
  v226 = 139;
  v141 = sub_297828770(v140, "GL_EXT_shadow_samplers", &v226);
  v225 = 140;
  v142 = sub_297828BB4(v141, "GL_NV_EGL_stream_consumer_external", &v225);
  v224 = 141;
  v143 = sub_297811E3C(v142, "GL_EXT_sRGB", &v224);
  v223 = 142;
  v144 = sub_29782868C(v143, "GL_EXT_robustness", &v223);
  v222 = 143;
  v145 = sub_2978828CC(v144, "GL_EXT_shader_framebuffer_fetch", &v222);
  v221 = 144;
  v146 = sub_297828C20(v145, "GL_EXT_multiview_draw_buffers", &v221);
  v220 = 145;
  v147 = sub_2978288D8(v146, "GL_NV_texture_array", &v220);
  v219 = 146;
  v148 = sub_29782852C(v147, "GL_NV_draw_instanced", &v219);
  v218 = 147;
  v149 = sub_297828AC4(v148, "GL_NV_shadow_samplers_array", &v218);
  v217 = 148;
  v150 = sub_297828950(v149, "GL_NV_shadow_samplers_cube", &v217);
  v216 = 149;
  v151 = sub_2978288D8(v150, "GL_EXT_draw_buffers", &v216);
  v215 = 150;
  v152 = sub_29782868C(v151, "GL_EXT_pvrtc_sRGB", &v215);
  v214 = 151;
  v153 = sub_2978287E8(v152, "GL_EXT_draw_instanced", &v214);
  v213 = 152;
  v154 = sub_29786399C(v153, "GL_NV_explicit_attrib_location", &v213);
  v212 = 153;
  v155 = sub_297828430(v154, "GL_NV_non_square_matrices", &v212);
  v211 = 154;
  v156 = sub_297828430(v155, "GL_EXT_shader_integer_mix", &v211);
  v210 = 155;
  v157 = sub_2978828CC(v156, "GL_ARM_shader_framebuffer_fetch", &v210);
  v209 = 156;
  v158 = sub_297882950(v157, "GL_ARM_shader_framebuffer_fetch_depth_stencil", &v209);
  v208 = 157;
  v159 = sub_297878980(v158, "GL_EXT_shader_pixel_local_storage", &v208);
  v207 = 158;
  v160 = sub_29786399C(v159, "GL_KHR_blend_equation_advanced", &v207);
  v206 = 159;
  v161 = sub_2978287E8(v160, "GL_OES_sample_shading", &v206);
  v205 = 160;
  v162 = sub_2978284B4(v161, "GL_OES_sample_variables", &v205);
  v204 = 161;
  v163 = sub_297828950(v162, "GL_OES_shader_image_atomic", &v204);
  v203 = 162;
  v164 = sub_2978829BC(v163, "GL_OES_shader_multisample_interpolation", &v203);
  v202 = 163;
  v165 = sub_2978284B4(v164, "GL_OES_texture_stencil8", &v202);
  v201 = 164;
  v166 = sub_297882A28(v165, "GL_OES_texture_storage_multisample_2d_array", &v201);
  v200 = 165;
  v167 = sub_297828770(v166, "GL_EXT_geometry_shader", &v200);
  v199 = 166;
  v168 = sub_2978283B8(v167, "GL_EXT_gpu_shader5", &v199);
  v198 = 167;
  v169 = sub_297828BB4(v168, "GL_EXT_shader_implicit_conversions", &v198);
  v197 = 168;
  v170 = sub_2978284B4(v169, "GL_EXT_shader_io_blocks", &v197);
  v196 = 169;
  v171 = sub_297828950(v170, "GL_EXT_tessellation_shader", &v196);
  v195 = 170;
  v172 = sub_2978287E8(v171, "GL_EXT_texture_buffer", &v195);
  v194 = 171;
  v173 = sub_297828C20(v172, "GL_EXT_texture_cube_map_array", &v194);
  v193 = 172;
  v174 = sub_2978288D8(v173, "GL_EXT_texture_view", &v193);
  v192 = 173;
  v175 = sub_297828C20(v174, "GL_EXT_primitive_bounding_box", &v192);
  v191 = 174;
  v176 = sub_2978828CC(v175, "GL_ANDROID_extension_pack_es31a", &v191);
  v190 = 175;
  v177 = sub_2978789EC(v176, "GL_KHR_robust_buffer_access_behavior", &v190);
  v189 = 176;
  v178 = sub_29782868C(v177, "GL_KHR_robustness", &v189);
  v188 = 177;
  v179 = sub_297828770(v178, "GL_APPLE_clip_distance", &v188);
  v187 = 178;
  v180 = sub_297810428(v179, "all", &v187);
  v186 = 179;
  v181 = sub_297828770(v180, "GL_APPLE_sa_assertions", &v186);
  v185 = 180;
  v182 = sub_297828860(v181, "FOSL_cruft_compatibility", &v185);
  v184 = 0;
  return sub_2978105E0(v182, &v184);
}

uint64_t sub_297881744(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_2A13A3328, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v5 = __cxa_guard_acquire(&qword_2A13A3328);
    a1 = v4;
    if (v5)
    {
      sub_2977FB7B4(&unk_2A13A27D8, &byte_2978FC3E5);
      sub_2977FB7B4(&unk_2A13A27E8, "GL_ARB_shader_objects");
      sub_2977FB7B4(&unk_2A13A27F8, "GL_ARB_vertex_shader");
      sub_2977FB7B4(&unk_2A13A2808, "GL_ARB_fragment_shader");
      sub_2977FB7B4(&unk_2A13A2818, "GL_ARB_shading_language_100");
      sub_2977FB7B4(&unk_2A13A2828, "GL_ARB_fragment_program_shadow");
      sub_2977FB7B4(&unk_2A13A2838, "GL_ARB_draw_buffers");
      sub_2977FB7B4(&unk_2A13A2848, "GL_ARB_texture_rectangle");
      sub_2977FB7B4(&unk_2A13A2858, "GL_ARB_depth_buffer_float");
      sub_2977FB7B4(&unk_2A13A2868, "GL_ARB_draw_instanced");
      sub_2977FB7B4(&unk_2A13A2878, "GL_ARB_framebuffer_sRGB");
      sub_2977FB7B4(&unk_2A13A2888, "GL_ARB_geometry_shader4");
      sub_2977FB7B4(&unk_2A13A2898, "GL_ARB_texture_compression_rgtc");
      sub_2977FB7B4(&unk_2A13A28A8, "GL_ARB_uniform_buffer_object");
      sub_2977FB7B4(&unk_2A13A28B8, "GL_ARB_shader_texture_lod");
      sub_2977FB7B4(&unk_2A13A28C8, "GL_ARB_fragment_coord_conventions");
      sub_2977FB7B4(&unk_2A13A28D8, "GL_ARB_provoking_vertex");
      sub_2977FB7B4(&unk_2A13A28E8, "GL_ARB_texture_multisample");
      sub_2977FB7B4(&unk_2A13A28F8, "GL_ARB_vertex_array_bgra");
      sub_2977FB7B4(&unk_2A13A2908, "GL_ARB_sample_shading");
      sub_2977FB7B4(&unk_2A13A2918, "GL_ARB_texture_cube_map_array");
      sub_2977FB7B4(&unk_2A13A2928, "GL_ARB_texture_gather");
      sub_2977FB7B4(&unk_2A13A2938, "GL_ARB_texture_query_lod");
      sub_2977FB7B4(&unk_2A13A2948, "GL_ARB_shading_language_include");
      sub_2977FB7B4(&unk_2A13A2958, "GL_ARB_explicit_attrib_location");
      sub_2977FB7B4(&unk_2A13A2968, "GL_ARB_shader_bit_encoding");
      sub_2977FB7B4(&unk_2A13A2978, "GL_ARB_gpu_shader5");
      sub_2977FB7B4(&unk_2A13A2988, "GL_ARB_gpu_shader_fp64");
      sub_2977FB7B4(&unk_2A13A2998, "GL_ARB_shader_subroutine");
      sub_2977FB7B4(&unk_2A13A29A8, "GL_ARB_tessellation_shader");
      sub_2977FB7B4(&unk_2A13A29B8, "GL_ARB_transform_feedback2");
      sub_2977FB7B4(&unk_2A13A29C8, "GL_ARB_ES2_compatibility");
      sub_2977FB7B4(&unk_2A13A29D8, "GL_ARB_get_program_binary");
      sub_2977FB7B4(&unk_2A13A29E8, "GL_ARB_separate_shader_objects");
      sub_2977FB7B4(&unk_2A13A29F8, "GL_ARB_shader_precision");
      sub_2977FB7B4(&unk_2A13A2A08, "GL_ARB_vertex_attrib_64bit");
      sub_2977FB7B4(&unk_2A13A2A18, "GL_ARB_viewport_array");
      sub_2977FB7B4(&unk_2A13A2A28, "GL_ARB_robustness");
      sub_2977FB7B4(&unk_2A13A2A38, "GL_ARB_shader_stencil_export");
      sub_2977FB7B4(&unk_2A13A2A48, "GL_ARB_shading_language_420pack");
      sub_2977FB7B4(&unk_2A13A2A58, "GL_ARB_conservative_depth");
      sub_2977FB7B4(&unk_2A13A2A68, "GL_ARB_shader_atomic_counters");
      sub_2977FB7B4(&unk_2A13A2A78, "GL_ARB_shader_image_load_store");
      sub_2977FB7B4(&unk_2A13A2A88, "GL_ARB_shading_language_packing");
      sub_2977FB7B4(&unk_2A13A2A98, "GL_ARB_arrays_of_arrays");
      sub_2977FB7B4(&unk_2A13A2AA8, "GL_ARB_compute_shader");
      sub_2977FB7B4(&unk_2A13A2AB8, "GL_ARB_ES3_compatibility");
      sub_2977FB7B4(&unk_2A13A2AC8, "GL_ARB_explicit_uniform_location");
      sub_2977FB7B4(&unk_2A13A2AD8, "GL_ARB_fragment_layer_viewport");
      sub_2977FB7B4(&unk_2A13A2AE8, "GL_ARB_invalidate_subdata");
      sub_2977FB7B4(&unk_2A13A2AF8, "GL_ARB_robust_buffer_access_behavior");
      sub_2977FB7B4(&unk_2A13A2B08, "GL_ARB_shader_image_size");
      sub_2977FB7B4(&unk_2A13A2B18, "GL_ARB_shader_storage_buffer_object");
      sub_2977FB7B4(&unk_2A13A2B28, "GL_ARB_stencil_texturing");
      sub_2977FB7B4(&unk_2A13A2B38, "GL_ARB_texture_query_levels");
      sub_2977FB7B4(&unk_2A13A2B48, "GL_ARB_enhanced_layouts");
      sub_2977FB7B4(&unk_2A13A2B58, "GL_ARB_texture_stencil8");
      sub_2977FB7B4(&unk_2A13A2B68, "GL_ARB_bindless_texture");
      sub_2977FB7B4(&unk_2A13A2B78, "GL_ARB_compute_variable_group_size");
      sub_2977FB7B4(&unk_2A13A2B88, "GL_ARB_shader_draw_parameters");
      sub_2977FB7B4(&unk_2A13A2B98, "GL_ARB_shader_group_vote");
      sub_2977FB7B4(&unk_2A13A2BA8, "GL_ARB_ES3_1_compatibility");
      sub_2977FB7B4(&unk_2A13A2BB8, "GL_ARB_cull_distance");
      sub_2977FB7B4(&unk_2A13A2BC8, "GL_ARB_derivative_control");
      sub_2977FB7B4(&unk_2A13A2BD8, "GL_ARB_shader_texture_image_samples");
      sub_2977FB7B4(&unk_2A13A2BE8, "GL_EXT_texture_sRGB");
      sub_2977FB7B4(&unk_2A13A2BF8, "GL_NV_gpu_program4");
      sub_2977FB7B4(&unk_2A13A2C08, "GL_EXT_geometry_shader4");
      sub_2977FB7B4(&unk_2A13A2C18, "GL_EXT_gpu_shader4");
      sub_2977FB7B4(&unk_2A13A2C28, "GL_EXT_draw_instanced");
      sub_2977FB7B4(&unk_2A13A2C38, "GL_EXT_packed_float");
      sub_2977FB7B4(&unk_2A13A2C48, "GL_EXT_texture_array");
      sub_2977FB7B4(&unk_2A13A2C58, "GL_EXT_texture_compression_latc");
      sub_2977FB7B4(&unk_2A13A2C68, "GL_EXT_texture_compression_rgtc");
      sub_2977FB7B4(&unk_2A13A2C78, "GL_EXT_texture_shared_exponent");
      sub_2977FB7B4(&unk_2A13A2C88, "GL_NV_depth_buffer_float");
      sub_2977FB7B4(&unk_2A13A2C98, "GL_EXT_framebuffer_sRGB");
      sub_2977FB7B4(&unk_2A13A2CA8, "GL_NV_transform_feedback");
      sub_2977FB7B4(&unk_2A13A2CB8, "GL_EXT_bindable_uniform");
      sub_2977FB7B4(&unk_2A13A2CC8, "GL_EXT_transform_feedback");
      sub_2977FB7B4(&unk_2A13A2CD8, "GL_EXT_vertex_array_bgra");
      sub_2977FB7B4(&unk_2A13A2CE8, "GL_NV_explicit_multisample");
      sub_2977FB7B4(&unk_2A13A2CF8, "GL_ATI_meminfo");
      sub_2977FB7B4(&unk_2A13A2D08, "GL_AMD_texture_texture4");
      sub_2977FB7B4(&unk_2A13A2D18, "GL_AMD_vertex_shader_tessellator");
      sub_2977FB7B4(&unk_2A13A2D28, "GL_EXT_provoking_vertex");
      sub_2977FB7B4(&unk_2A13A2D38, "GL_EXT_texture_snorm");
      sub_2977FB7B4(&unk_2A13A2D48, "GL_EXT_separate_shader_objects");
      sub_2977FB7B4(&unk_2A13A2D58, "GL_NV_shader_buffer_load");
      sub_2977FB7B4(&unk_2A13A2D68, "GL_AMD_shader_stencil_export");
      sub_2977FB7B4(&unk_2A13A2D78, "GL_AMD_conservative_depth");
      sub_2977FB7B4(&unk_2A13A2D88, "GL_EXT_shader_image_load_store");
      sub_2977FB7B4(&unk_2A13A2D98, "GL_EXT_vertex_attrib_64bit");
      sub_2977FB7B4(&unk_2A13A2DA8, "GL_NV_gpu_program5");
      sub_2977FB7B4(&unk_2A13A2DB8, "GL_NV_gpu_shader5");
      sub_2977FB7B4(&unk_2A13A2DC8, "GL_NV_shader_buffer_store");
      sub_2977FB7B4(&unk_2A13A2DD8, "GL_NV_tessellation_program5");
      sub_2977FB7B4(&unk_2A13A2DE8, "GL_NV_vdpau_interop");
      sub_2977FB7B4(&unk_2A13A2DF8, "GL_NV_path_rendering");
      sub_2977FB7B4(&unk_2A13A2E08, "GL_AMD_vertex_shader_viewport_index");
      sub_2977FB7B4(&unk_2A13A2E18, "GL_AMD_vertex_shader_layer");
      sub_2977FB7B4(&unk_2A13A2E28, "GL_NV_bindless_texture");
      sub_2977FB7B4(&unk_2A13A2E38, "GL_NV_shader_atomic_float");
      sub_2977FB7B4(&unk_2A13A2E48, "GL_AMD_sparse_texture");
      sub_2977FB7B4(&unk_2A13A2E58, "GL_AMD_shader_trinary_minmax");
      sub_2977FB7B4(&unk_2A13A2E68, "GL_INTEL_map_texture");
      sub_2977FB7B4(&unk_2A13A2E78, "GL_EXT_shader_integer_mix");
      sub_2977FB7B4(&unk_2A13A2E88, "GL_INTEL_fragment_shader_ordering");
      sub_2977FB7B4(&unk_2A13A2E98, "GL_AMD_shader_stencil_value_export");
      sub_2977FB7B4(&unk_2A13A2EA8, "GL_NV_shader_thread_group");
      sub_2977FB7B4(&unk_2A13A2EB8, "GL_NV_shader_thread_shuffle");
      sub_2977FB7B4(&unk_2A13A2EC8, "GL_EXT_shader_image_load_formatted");
      sub_2977FB7B4(&unk_2A13A2ED8, "GL_AMD_transform_feedback4");
      sub_2977FB7B4(&unk_2A13A2EE8, "GL_AMD_gpu_shader_int64");
      sub_2977FB7B4(&unk_2A13A2EF8, "GL_AMD_gcn_shader");
      sub_2977FB7B4(&unk_2A13A2F08, "GL_NV_shader_atomic_int64");
      sub_2977FB7B4(&unk_2A13A2F18, "GL_KHR_blend_equation_advanced");
      sub_2977FB7B4(&unk_2A13A2F28, "GL_EXT_post_depth_coverage");
      sub_2977FB7B4(&unk_2A13A2F38, "GL_EXT_raster_multisample");
      sub_2977FB7B4(&unk_2A13A2F48, "GL_EXT_sparse_texture2");
      sub_2977FB7B4(&unk_2A13A2F58, "GL_NV_conservative_raster");
      sub_2977FB7B4(&unk_2A13A2F68, "GL_NV_fill_rectangle");
      sub_2977FB7B4(&unk_2A13A2F78, "GL_NV_fragment_coverage_to_color");
      sub_2977FB7B4(&unk_2A13A2F88, "GL_NV_fragment_shader_interlock");
      sub_2977FB7B4(&unk_2A13A2F98, "GL_NV_framebuffer_mixed_samples");
      sub_2977FB7B4(&unk_2A13A2FA8, "GL_NV_geometry_shader_passthrough");
      sub_2977FB7B4(&unk_2A13A2FB8, "GL_NV_path_rendering_shared_edge");
      sub_2977FB7B4(&unk_2A13A2FC8, "GL_NV_sample_locations");
      sub_2977FB7B4(&unk_2A13A2FD8, "GL_NV_sample_mask_override_coverage");
      sub_2977FB7B4(&unk_2A13A2FE8, "GL_NV_shader_atomic_fp16_vector");
      sub_2977FB7B4(&unk_2A13A2FF8, "GL_OES_texture_3D");
      sub_2977FB7B4(&unk_2A13A3008, "GL_OES_standard_derivatives");
      sub_2977FB7B4(&unk_2A13A3018, "GL_OES_get_program_binary");
      sub_2977FB7B4(&unk_2A13A3028, "GL_AMD_program_binary_Z400");
      sub_2977FB7B4(&unk_2A13A3038, "GL_EXT_shader_texture_lod");
      sub_2977FB7B4(&unk_2A13A3048, "GL_EXT_frag_depth");
      sub_2977FB7B4(&unk_2A13A3058, "GL_OES_EGL_image_external");
      sub_2977FB7B4(&unk_2A13A3068, "GL_NV_draw_buffers");
      sub_2977FB7B4(&unk_2A13A3078, "GL_EXT_separate_shader_objects");
      sub_2977FB7B4(&unk_2A13A3088, "GL_EXT_shadow_samplers");
      sub_2977FB7B4(&unk_2A13A3098, "GL_NV_EGL_stream_consumer_external");
      sub_2977FB7B4(&unk_2A13A30A8, "GL_EXT_sRGB");
      sub_2977FB7B4(&unk_2A13A30B8, "GL_EXT_robustness");
      sub_2977FB7B4(&unk_2A13A30C8, "GL_EXT_shader_framebuffer_fetch");
      sub_2977FB7B4(&unk_2A13A30D8, "GL_EXT_multiview_draw_buffers");
      sub_2977FB7B4(&unk_2A13A30E8, "GL_NV_texture_array");
      sub_2977FB7B4(&unk_2A13A30F8, "GL_NV_draw_instanced");
      sub_2977FB7B4(&unk_2A13A3108, "GL_NV_shadow_samplers_array");
      sub_2977FB7B4(&unk_2A13A3118, "GL_NV_shadow_samplers_cube");
      sub_2977FB7B4(&unk_2A13A3128, "GL_EXT_draw_buffers");
      sub_2977FB7B4(&unk_2A13A3138, "GL_EXT_pvrtc_sRGB");
      sub_2977FB7B4(&unk_2A13A3148, "GL_EXT_draw_instanced");
      sub_2977FB7B4(&unk_2A13A3158, "GL_NV_explicit_attrib_location");
      sub_2977FB7B4(&unk_2A13A3168, "GL_NV_non_square_matrices");
      sub_2977FB7B4(&unk_2A13A3178, "GL_EXT_shader_integer_mix");
      sub_2977FB7B4(&unk_2A13A3188, "GL_ARM_shader_framebuffer_fetch");
      sub_2977FB7B4(&unk_2A13A3198, "GL_ARM_shader_framebuffer_fetch_depth_stencil");
      sub_2977FB7B4(&unk_2A13A31A8, "GL_EXT_shader_pixel_local_storage");
      sub_2977FB7B4(&unk_2A13A31B8, "GL_KHR_blend_equation_advanced");
      sub_2977FB7B4(&unk_2A13A31C8, "GL_OES_sample_shading");
      sub_2977FB7B4(&unk_2A13A31D8, "GL_OES_sample_variables");
      sub_2977FB7B4(&unk_2A13A31E8, "GL_OES_shader_image_atomic");
      sub_2977FB7B4(&unk_2A13A31F8, "GL_OES_shader_multisample_interpolation");
      sub_2977FB7B4(&unk_2A13A3208, "GL_OES_texture_stencil8");
      sub_2977FB7B4(&unk_2A13A3218, "GL_OES_texture_storage_multisample_2d_array");
      sub_2977FB7B4(&unk_2A13A3228, "GL_EXT_geometry_shader");
      sub_2977FB7B4(&unk_2A13A3238, "GL_EXT_gpu_shader5");
      sub_2977FB7B4(&unk_2A13A3248, "GL_EXT_shader_implicit_conversions");
      sub_2977FB7B4(&unk_2A13A3258, "GL_EXT_shader_io_blocks");
      sub_2977FB7B4(&unk_2A13A3268, "GL_EXT_tessellation_shader");
      sub_2977FB7B4(&unk_2A13A3278, "GL_EXT_texture_buffer");
      sub_2977FB7B4(&unk_2A13A3288, "GL_EXT_texture_cube_map_array");
      sub_2977FB7B4(&unk_2A13A3298, "GL_EXT_texture_view");
      sub_2977FB7B4(&unk_2A13A32A8, "GL_EXT_primitive_bounding_box");
      sub_2977FB7B4(&unk_2A13A32B8, "GL_ANDROID_extension_pack_es31a");
      sub_2977FB7B4(&unk_2A13A32C8, "GL_KHR_robust_buffer_access_behavior");
      sub_2977FB7B4(&unk_2A13A32D8, "GL_KHR_robustness");
      sub_2977FB7B4(&unk_2A13A32E8, "GL_APPLE_clip_distance");
      sub_2977FB7B4(&unk_2A13A32F8, "all");
      sub_2977FB7B4(&unk_2A13A3308, "GL_APPLE_sa_assertions");
      sub_2977FB7B4(&unk_2A13A3318, "FOSL_cruft_compatibility");
      __cxa_guard_release(&qword_2A13A3328);
      a1 = v4;
    }
  }

  v1 = (&unk_2A13A27D8 + 16 * a1);
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_2978828CC(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 31)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1] && a2[2] == v6[2] && *(a2 + 23) == *(v6 + 23))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297882950(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 45)
  {
    v6 = sub_2977FB720(a1);
    if (!memcmp(a2, v6, 0x2DuLL))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978829BC(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 39)
  {
    v6 = sub_2977FB720(a1);
    if (!memcmp(a2, v6, 0x27uLL))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297882A28(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 43)
  {
    v6 = sub_2977FB720(a1);
    if (!memcmp(a2, v6, 0x2BuLL))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

BOOL sub_297882A94(int a1, uint64_t a2)
{
  v4 = sub_297882B50(a2);
  if ((byte_2A18A4A60 & 1) == 0)
  {
    sub_297883164(v6, byte_2A18A4A61);
    sub_297882B5C(v6[0], v6[1]);
    byte_2A18A4A60 = 1;
  }

  if (((byte_2A18A4A61[a1] >> v4) & 1) != 0 || (a1 - 491) < 2 || a1 == 403)
  {
    return 1;
  }

  if (a1 == 415)
  {
    return sub_297883168(a2);
  }

  return 0;
}

_BYTE *sub_297882B5C(uint64_t a1, uint64_t a2)
{
  v65[0] = a1;
  v65[1] = a2;
  v2 = sub_297883190(v65, 296);
  *v2 |= 2u;
  v3 = sub_297883190(v65, 79);
  *v3 |= 2u;
  v4 = sub_297883190(v65, 438);
  *v4 |= 2u;
  v5 = sub_297883190(v65, 454);
  *v5 |= 2u;
  v6 = sub_297883190(v65, 76);
  *v6 |= 2u;
  v7 = sub_297883190(v65, 80);
  *v7 |= 2u;
  v8 = sub_297883190(v65, 82);
  *v8 |= 2u;
  v9 = sub_297883190(v65, 88);
  *v9 |= 2u;
  v10 = sub_297883190(v65, 108);
  *v10 |= 2u;
  v11 = sub_297883190(v65, 90);
  *v11 |= 2u;
  v12 = sub_297883190(v65, 84);
  *v12 |= 2u;
  v13 = sub_297883190(v65, 357);
  *v13 |= 2u;
  v14 = sub_297883190(v65, 395);
  *v14 |= 2u;
  v15 = sub_297883190(v65, 358);
  *v15 |= 2u;
  v16 = sub_297883190(v65, 87);
  *v16 |= 2u;
  v17 = sub_297883190(v65, 269);
  *v17 |= 2u;
  v18 = sub_297883190(v65, 92);
  *v18 |= 2u;
  v19 = sub_297883190(v65, 106);
  *v19 |= 2u;
  v20 = sub_297883190(v65, 123);
  *v20 |= 2u;
  v21 = sub_297883190(v65, 145);
  *v21 |= 2u;
  v22 = sub_297883190(v65, 131);
  *v22 |= 2u;
  v23 = sub_297883190(v65, 379);
  *v23 |= 2u;
  v24 = sub_297883190(v65, 392);
  *v24 |= 2u;
  v25 = sub_297883190(v65, 327);
  *v25 |= 2u;
  v26 = sub_297883190(v65, 399);
  *v26 |= 2u;
  v27 = sub_297883190(v65, 361);
  *v27 |= 2u;
  v28 = sub_297883190(v65, 305);
  *v28 |= 2u;
  v29 = sub_297883190(v65, 96);
  *v29 |= 2u;
  v30 = sub_297883190(v65, 455);
  *v30 |= 2u;
  v31 = sub_297883190(v65, 456);
  *v31 |= 2u;
  v32 = sub_297883190(v65, 457);
  *v32 |= 2u;
  v33 = sub_297883190(v65, 477);
  *v33 |= 2u;
  v34 = sub_297883190(v65, 478);
  *v34 |= 2u;
  v35 = sub_297883190(v65, 479);
  *v35 |= 2u;
  v36 = sub_297883190(v65, 328);
  *v36 |= 2u;
  v37 = sub_297883190(v65, 329);
  *v37 |= 2u;
  v38 = sub_297883190(v65, 330);
  *v38 |= 2u;
  v39 = sub_297883190(v65, 480);
  *v39 |= 2u;
  v40 = sub_297883190(v65, 481);
  *v40 |= 2u;
  v41 = sub_297883190(v65, 482);
  *v41 |= 2u;
  v42 = sub_297883190(v65, 375);
  *v42 |= 2u;
  v43 = sub_297883190(v65, 376);
  *v43 |= 2u;
  v44 = sub_297883190(v65, 377);
  *v44 |= 2u;
  v45 = sub_297883190(v65, 297);
  *v45 |= 2u;
  v46 = sub_297883190(v65, 298);
  *v46 |= 2u;
  v47 = sub_297883190(v65, 299);
  *v47 |= 2u;
  v48 = sub_297883190(v65, 380);
  *v48 |= 2u;
  v49 = sub_297883190(v65, 384);
  *v49 |= 2u;
  v50 = sub_297883190(v65, 388);
  *v50 |= 2u;
  v51 = sub_297883190(v65, 483);
  *v51 |= 2u;
  v52 = sub_297883190(v65, 484);
  *v52 |= 2u;
  v53 = sub_297883190(v65, 485);
  *v53 |= 2u;
  v54 = sub_297883190(v65, 465);
  *v54 |= 2u;
  v55 = sub_297883190(v65, 469);
  *v55 |= 2u;
  v56 = sub_297883190(v65, 473);
  *v56 |= 2u;
  v57 = sub_297883190(v65, 486);
  *v57 |= 2u;
  v58 = sub_297883190(v65, 487);
  *v58 |= 2u;
  v59 = sub_297883190(v65, 488);
  *v59 |= 2u;
  v60 = sub_297883190(v65, 403);
  *v60 |= 2u;
  v61 = sub_297883190(v65, 489);
  *v61 |= 2u;
  v62 = sub_297883190(v65, 408);
  *v62 |= 2u;
  v63 = sub_297883190(v65, 490);
  *v63 |= 2u;
  result = sub_297883190(v65, 101);
  *result |= 2u;
  return result;
}

BOOL sub_297883168(uint64_t a1)
{
  v1 = sub_2978831C8(a1);

  return sub_2978831D0(v1);
}

void *sub_2978831BC(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 526;
  return result;
}

uint64_t sub_2978831E8(uint64_t a1)
{
  v2 = sub_297883254(a1);
  sub_29782916C(v2 + 2);
  *a1 = &unk_2A1E55800;
  *(a1 + 24) = *(a1 + 24) & 0xE0 | 1;
  v3 = sub_2977FA198(724);
  *(a1 + 16) = sub_297883274(v3);
  return a1;
}

BOOL sub_29788327C(uint64_t a1, unsigned int a2)
{
  v3 = a1;
  if (a2 < 4)
  {
    return 0;
  }

  if (a2 == 6)
  {
    return sub_2978832C4(&v3);
  }

  return 1;
}

BOOL sub_2978832C4(uint64_t *a1)
{
  v1 = sub_297883C64(*a1);

  return sub_2978831D0(v1);
}

uint64_t sub_2978832F0(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1E55800;
  v3 = a1[2];
  if (v3)
  {
    j__free(v3);
  }

  return nullsub_1(a1, a2);
}

void sub_297883350(void *a1, uint64_t a2)
{
  v2 = sub_29788334C(a1, a2);

  j__free(v2);
}

uint64_t sub_297883378(uint64_t a1)
{
  v1 = sub_297882B50(a1);

  return sub_297883C6C(v1);
}

uint64_t sub_2978833A0(uint64_t a1)
{
  v2 = sub_297883C38();
  sub_297883C3C(v2 + 4, 1);
  sub_297883C3C(a1 + 8, 2);
  sub_297883C3C(a1 + 12, 3);
  sub_297883C3C(a1 + 16, 4);
  sub_297883C3C(a1 + 20, 5);
  sub_297883C3C(a1 + 24, 6);
  sub_297883C3C(a1 + 28, 7);
  sub_297883C3C(a1 + 32, 8);
  sub_297883C3C(a1 + 36, 9);
  sub_297883C3C(a1 + 40, 10);
  sub_297883C3C(a1 + 44, 11);
  sub_297883C3C(a1 + 48, 12);
  sub_297883C3C(a1 + 52, 13);
  sub_297883C3C(a1 + 56, 14);
  sub_297883C3C(a1 + 60, 15);
  sub_297883C3C(a1 + 64, 16);
  sub_297883C3C(a1 + 68, 17);
  sub_297883C3C(a1 + 72, 18);
  sub_297883C3C(a1 + 76, 19);
  sub_297883C3C(a1 + 80, 20);
  sub_297883C3C(a1 + 84, 21);
  sub_297883C3C(a1 + 88, 22);
  sub_297883C3C(a1 + 92, 23);
  sub_297883C3C(a1 + 96, 24);
  sub_297883C3C(a1 + 100, 25);
  sub_297883C3C(a1 + 104, 26);
  sub_297883C3C(a1 + 108, 27);
  sub_297883C3C(a1 + 112, 28);
  sub_297883C3C(a1 + 116, 29);
  sub_297883C3C(a1 + 120, 30);
  sub_297883C3C(a1 + 124, 31);
  sub_297883C3C(a1 + 128, 32);
  sub_297883C3C(a1 + 132, 33);
  sub_297883C3C(a1 + 136, 34);
  sub_297883C3C(a1 + 140, 35);
  sub_297883C3C(a1 + 144, 36);
  sub_297883C3C(a1 + 148, 37);
  sub_297883C3C(a1 + 152, 38);
  sub_297883C3C(a1 + 156, 39);
  sub_297883C3C(a1 + 160, 40);
  sub_297883C3C(a1 + 164, 41);
  sub_297883C3C(a1 + 168, 42);
  sub_297883C3C(a1 + 172, 43);
  sub_297883C3C(a1 + 176, 44);
  sub_297883C3C(a1 + 180, 45);
  sub_297883C3C(a1 + 184, 46);
  sub_297883C3C(a1 + 188, 47);
  sub_297883C3C(a1 + 192, 48);
  sub_297883C3C(a1 + 196, 49);
  sub_297883C3C(a1 + 200, 50);
  sub_297883C3C(a1 + 204, 51);
  sub_297883C3C(a1 + 208, 52);
  sub_297883C3C(a1 + 212, 53);
  sub_297883C3C(a1 + 216, 54);
  sub_297883C3C(a1 + 220, 55);
  sub_297883C3C(a1 + 224, 56);
  sub_297883C3C(a1 + 228, 57);
  sub_297883C3C(a1 + 232, 58);
  sub_297883C3C(a1 + 236, 59);
  sub_297883C3C(a1 + 240, 60);
  sub_297883C3C(a1 + 244, 61);
  sub_297883C3C(a1 + 248, 62);
  sub_297883C3C(a1 + 252, 63);
  sub_297883C3C(a1 + 256, 64);
  sub_297883C3C(a1 + 260, 65);
  sub_297883C3C(a1 + 264, 66);
  sub_297883C3C(a1 + 268, 67);
  sub_297883C3C(a1 + 272, 68);
  sub_297883C3C(a1 + 276, 69);
  sub_297883C3C(a1 + 280, 70);
  sub_297883C3C(a1 + 284, 71);
  sub_297883C3C(a1 + 288, 72);
  sub_297883C3C(a1 + 292, 73);
  sub_297883C3C(a1 + 296, 74);
  sub_297883C3C(a1 + 300, 75);
  sub_297883C3C(a1 + 304, 76);
  sub_297883C3C(a1 + 308, 77);
  sub_297883C3C(a1 + 312, 78);
  sub_297883C3C(a1 + 316, 79);
  sub_297883C3C(a1 + 320, 80);
  sub_297883C3C(a1 + 324, 81);
  sub_297883C3C(a1 + 328, 82);
  sub_297883C3C(a1 + 332, 83);
  sub_297883C3C(a1 + 336, 84);
  sub_297883C3C(a1 + 340, 85);
  sub_297883C3C(a1 + 344, 86);
  sub_297883C3C(a1 + 348, 87);
  sub_297883C3C(a1 + 352, 88);
  sub_297883C3C(a1 + 356, 89);
  sub_297883C3C(a1 + 360, 90);
  sub_297883C3C(a1 + 364, 91);
  sub_297883C3C(a1 + 368, 92);
  sub_297883C3C(a1 + 372, 93);
  sub_297883C3C(a1 + 376, 94);
  sub_297883C3C(a1 + 380, 95);
  sub_297883C3C(a1 + 384, 96);
  sub_297883C3C(a1 + 388, 97);
  sub_297883C3C(a1 + 392, 98);
  sub_297883C3C(a1 + 396, 99);
  sub_297883C3C(a1 + 400, 100);
  sub_297883C3C(a1 + 404, 101);
  sub_297883C3C(a1 + 408, 102);
  sub_297883C3C(a1 + 412, 103);
  sub_297883C3C(a1 + 416, 104);
  sub_297883C3C(a1 + 420, 105);
  sub_297883C3C(a1 + 424, 106);
  sub_297883C3C(a1 + 428, 107);
  sub_297883C3C(a1 + 432, 108);
  sub_297883C3C(a1 + 436, 109);
  sub_297883C3C(a1 + 440, 110);
  sub_297883C3C(a1 + 444, 111);
  sub_297883C3C(a1 + 448, 112);
  sub_297883C3C(a1 + 452, 113);
  sub_297883C3C(a1 + 456, 114);
  sub_297883C3C(a1 + 460, 115);
  sub_297883C3C(a1 + 464, 116);
  sub_297883C3C(a1 + 468, 117);
  sub_297883C3C(a1 + 472, 118);
  sub_297883C3C(a1 + 476, 119);
  sub_297883C3C(a1 + 480, 120);
  sub_297883C3C(a1 + 484, 121);
  sub_297883C3C(a1 + 488, 122);
  sub_297883C3C(a1 + 492, 123);
  sub_297883C3C(a1 + 496, 124);
  sub_297883C3C(a1 + 500, 125);
  sub_297883C3C(a1 + 504, 126);
  sub_297883C3C(a1 + 508, 127);
  sub_297883C3C(a1 + 512, 128);
  sub_297883C3C(a1 + 516, 129);
  sub_297883C3C(a1 + 520, 130);
  sub_297883C3C(a1 + 524, 131);
  sub_297883C3C(a1 + 528, 132);
  sub_297883C3C(a1 + 532, 133);
  sub_297883C3C(a1 + 536, 134);
  sub_297883C3C(a1 + 540, 135);
  sub_297883C3C(a1 + 544, 136);
  sub_297883C3C(a1 + 548, 137);
  sub_297883C3C(a1 + 552, 138);
  sub_297883C3C(a1 + 556, 139);
  sub_297883C3C(a1 + 560, 140);
  sub_297883C3C(a1 + 564, 141);
  sub_297883C3C(a1 + 568, 142);
  sub_297883C3C(a1 + 572, 143);
  sub_297883C3C(a1 + 576, 144);
  sub_297883C3C(a1 + 580, 145);
  sub_297883C3C(a1 + 584, 146);
  sub_297883C3C(a1 + 588, 147);
  sub_297883C3C(a1 + 592, 148);
  sub_297883C3C(a1 + 596, 149);
  sub_297883C3C(a1 + 600, 150);
  sub_297883C3C(a1 + 604, 151);
  sub_297883C3C(a1 + 608, 152);
  sub_297883C3C(a1 + 612, 153);
  sub_297883C3C(a1 + 616, 154);
  sub_297883C3C(a1 + 620, 155);
  sub_297883C3C(a1 + 624, 156);
  sub_297883C3C(a1 + 628, 157);
  sub_297883C3C(a1 + 632, 158);
  sub_297883C3C(a1 + 636, 159);
  sub_297883C3C(a1 + 640, 160);
  sub_297883C3C(a1 + 644, 161);
  sub_297883C3C(a1 + 648, 162);
  sub_297883C3C(a1 + 652, 163);
  sub_297883C3C(a1 + 656, 164);
  sub_297883C3C(a1 + 660, 165);
  sub_297883C3C(a1 + 664, 166);
  sub_297883C3C(a1 + 668, 167);
  sub_297883C3C(a1 + 672, 168);
  sub_297883C3C(a1 + 676, 169);
  sub_297883C3C(a1 + 680, 170);
  sub_297883C3C(a1 + 684, 171);
  sub_297883C3C(a1 + 688, 172);
  sub_297883C3C(a1 + 692, 173);
  sub_297883C3C(a1 + 696, 174);
  sub_297883C3C(a1 + 700, 175);
  sub_297883C3C(a1 + 704, 176);
  sub_297883C3C(a1 + 708, 177);
  sub_297883C3C(a1 + 712, 178);
  sub_297883C3C(a1 + 716, 179);
  sub_297883C3C(a1 + 720, 180);
  return a1;
}

uint64_t sub_297883C88(uint64_t a1)
{
  v2 = sub_29782916C(a1);
  sub_297817C28(v2 + 1);
  sub_29782A6EC(a1 + 144);
  memset(v6, 0, sizeof(v6));
  sub_297883D1C(v6);
  sub_297804560(v5);
  sub_29782DDB0(a1 + 184, v6, v5);
  sub_29782DDAC(v5);
  sub_29782DEEC(v6);
  *(a1 + 928) = 0;
  v3 = sub_2977FA198(1776);
  *(a1 + 928) = sub_297883D20(v3);
  return a1;
}

uint64_t sub_297883D28(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 144);
  v3 = sub_2977FB7B8(a1 + 144);
  if (v2 != v3)
  {
    v4 = v3;
    do
    {
      if (*v2)
      {
        v5 = sub_297883DC0(*v2);
        j__free(v5);
      }

      ++v2;
    }

    while (v2 != v4);
  }

  sub_2977FD800((a1 + 144));
  v6 = *(a1 + 928);
  if (v6)
  {
    v7 = sub_297883DC4(v6);
    j__free(v7);
  }

  sub_29782DEF0(a1 + 184);
  sub_2977FD134(a1 + 144);
  sub_297818154(a1 + 8);
  return a1;
}

void *sub_297883DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FA198(512);
  v8 = sub_297883E30(v6, a1, a2, a3);
  sub_2978040A4(a1 + 144, &v8);
  return v8;
}

uint64_t sub_297883E34(uint64_t a1)
{
  v2 = sub_297802744(a1);
  sub_297802744(v2 + 24);
  return a1;
}

uint64_t sub_297883E64(uint64_t a1)
{
  v2 = sub_297884ECC();
  sub_297884ED0(v2 + 4, 3);
  sub_297884ED0(a1 + 8, 4);
  sub_297884ED0(a1 + 12, 5);
  sub_297884ED0(a1 + 16, 6);
  sub_297884ED0(a1 + 20, 7);
  sub_297884ED4(a1 + 24, a1 + 4, 2, 8);
  sub_297884ED4(a1 + 40, a1 + 4, 3, 9);
  sub_297884ED4(a1 + 56, a1 + 4, 4, 10);
  sub_297884ED4(a1 + 72, a1 + 8, 2, 11);
  sub_297884ED4(a1 + 88, a1 + 8, 3, 12);
  sub_297884ED4(a1 + 104, a1 + 8, 4, 13);
  sub_297884ED4(a1 + 120, a1 + 12, 2, 14);
  sub_297884ED4(a1 + 136, a1 + 12, 3, 15);
  sub_297884ED4(a1 + 152, a1 + 12, 4, 16);
  sub_297884ED4(a1 + 168, a1 + 16, 2, 17);
  sub_297884ED4(a1 + 184, a1 + 16, 3, 18);
  sub_297884ED4(a1 + 200, a1 + 16, 4, 19);
  sub_297884ED4(a1 + 216, a1 + 20, 2, 20);
  sub_297884ED4(a1 + 232, a1 + 20, 3, 21);
  sub_297884ED4(a1 + 248, a1 + 20, 4, 22);
  sub_297884ED8(a1 + 264, a1 + 4, 2, 2, 23);
  sub_297884ED8(a1 + 280, a1 + 4, 3, 3, 24);
  sub_297884ED8(a1 + 296, a1 + 4, 4, 4, 25);
  sub_297884ED8(a1 + 312, a1 + 4, 2, 3, 26);
  sub_297884ED8(a1 + 328, a1 + 4, 2, 4, 27);
  sub_297884ED8(a1 + 344, a1 + 4, 3, 2, 28);
  sub_297884ED8(a1 + 360, a1 + 4, 3, 4, 29);
  sub_297884ED8(a1 + 376, a1 + 4, 4, 2, 30);
  sub_297884ED8(a1 + 392, a1 + 4, 4, 3, 31);
  sub_297884ED8(a1 + 408, a1 + 8, 2, 2, 32);
  sub_297884ED8(a1 + 424, a1 + 8, 3, 3, 33);
  sub_297884ED8(a1 + 440, a1 + 8, 4, 4, 34);
  sub_297884ED8(a1 + 456, a1 + 8, 2, 3, 35);
  sub_297884ED8(a1 + 472, a1 + 8, 2, 4, 36);
  sub_297884ED8(a1 + 488, a1 + 8, 3, 2, 37);
  sub_297884ED8(a1 + 504, a1 + 8, 3, 4, 38);
  sub_297884ED8(a1 + 520, a1 + 8, 4, 2, 39);
  sub_297884ED8(a1 + 536, a1 + 8, 4, 3, 40);
  sub_297884EDC(a1 + 552, 41, 0, 0);
  sub_297884EDC(a1 + 556, 42, 1, 0);
  sub_297884EDC(a1 + 560, 43, 0, 1);
  sub_297884EDC(a1 + 564, 44, 1, 1);
  sub_297884EE0(a1 + 568, 0);
  sub_297884EE4();
  sub_297884EE8(&v4, 1);
  sub_297884EEC(a1 + 968, v4, 1, 10, 0, 2);
  sub_297884EE8(&v4, 2);
  sub_297884EEC(a1 + 976, v4, 2, 13, 0, 2);
  sub_297884EF4(&v4, 1);
  sub_297884EEC(a1 + 984, v4, 3, 0, 0, 0);
  sub_297884EF4(&v4, 2);
  sub_297884EEC(a1 + 992, v4, 4, 0, 0, 0);
  sub_297884EF4(&v4, 3);
  sub_297884EEC(a1 + 1000, v4, 5, 0, 0, 0);
  sub_297884EF4(&v4, 4);
  sub_297884EEC(a1 + 1008, v4, 6, 0, 0, 0);
  sub_297884EF4(&v4, 5);
  sub_297884EEC(a1 + 1016, v4, 7, 0, 0, 0);
  sub_297884EF4(&v4, 6);
  sub_297884EEC(a1 + 1024, v4, 8, 0, 0, 0);
  sub_297884EF4(&v4, 7);
  sub_297884EEC(a1 + 1032, v4, 9, 0, 0, 0);
  sub_297884EF4(&v4, 8);
  sub_297884EEC(a1 + 1040, v4, 10, 0, 0, 0);
  sub_297884EF4(&v4, 9);
  sub_297884EEC(a1 + 1048, v4, 11, 0, 0, 0);
  sub_297884EF4(&v4, 10);
  sub_297884EEC(a1 + 1056, v4, 12, 0, 0, 0);
  sub_297884EF4(&v4, 11);
  sub_297884EEC(a1 + 1064, v4, 13, 0, 0, 0);
  sub_297884EF4(&v4, 12);
  sub_297884EEC(a1 + 1072, v4, 14, 0, 0, 0);
  sub_297884EF4(&v4, 13);
  sub_297884EEC(a1 + 1080, v4, 15, 0, 0, 0);
  sub_297884EF4(&v4, 14);
  sub_297884EEC(a1 + 1088, v4, 16, 0, 0, 0);
  sub_297884EF4(&v4, 15);
  sub_297884EEC(a1 + 1096, v4, 17, 0, 0, 0);
  sub_297884EF4(&v4, 16);
  sub_297884EEC(a1 + 1104, v4, 18, 0, 0, 0);
  sub_297884EF4(&v4, 17);
  sub_297884EEC(a1 + 1112, v4, 19, 0, 0, 0);
  sub_297884EF4(&v4, 18);
  sub_297884EEC(a1 + 1120, v4, 20, 0, 0, 0);
  sub_297884EF4(&v4, 19);
  sub_297884EEC(a1 + 1128, v4, 21, 0, 0, 0);
  sub_297884EF4(&v4, 20);
  sub_297884EEC(a1 + 1136, v4, 22, 0, 0, 0);
  sub_297884EF4(&v4, 21);
  sub_297884EEC(a1 + 1144, v4, 23, 0, 0, 0);
  sub_297884EF4(&v4, 22);
  sub_297884EEC(a1 + 1152, v4, 24, 0, 0, 0);
  sub_297884EF4(&v4, 23);
  sub_297884EEC(a1 + 1160, v4, 25, 0, 0, 0);
  sub_297884EF4(&v4, 24);
  sub_297884EEC(a1 + 1168, v4, 26, 0, 0, 0);
  sub_297884EF4(&v4, 25);
  sub_297884EEC(a1 + 1176, v4, 27, 0, 0, 0);
  sub_297884EF4(&v4, 26);
  sub_297884EEC(a1 + 1184, v4, 28, 0, 0, 0);
  sub_297884EF4(&v4, 27);
  sub_297884EEC(a1 + 1192, v4, 29, 0, 0, 0);
  sub_297884EF4(&v4, 28);
  sub_297884EEC(a1 + 1200, v4, 30, 0, 0, 0);
  sub_297884EF4(&v4, 29);
  sub_297884EEC(a1 + 1208, v4, 31, 0, 0, 0);
  sub_297884EF4(&v4, 30);
  sub_297884EEC(a1 + 1216, v4, 32, 0, 0, 0);
  sub_297884EF4(&v4, 31);
  sub_297884EEC(a1 + 1224, v4, 33, 0, 0, 0);
  sub_297884EF4(&v4, 32);
  sub_297884EEC(a1 + 1232, v4, 34, 0, 0, 0);
  sub_297884EF4(&v4, 33);
  sub_297884EEC(a1 + 1240, v4, 35, 0, 0, 0);
  sub_297884EF4(&v4, 34);
  sub_297884EEC(a1 + 1248, v4, 36, 0, 0, 0);
  sub_297884EF4(&v4, 35);
  sub_297884EEC(a1 + 1256, v4, 37, 0, 0, 0);
  sub_297884EF4(&v4, 36);
  sub_297884EEC(a1 + 1264, v4, 38, 0, 0, 0);
  sub_297884EF4(&v4, 37);
  sub_297884EEC(a1 + 1272, v4, 39, 0, 0, 0);
  sub_297884EF4(&v4, 38);
  sub_297884EEC(a1 + 1280, v4, 40, 0, 0, 0);
  sub_297884EF4(&v4, 39);
  sub_297884EEC(a1 + 1288, v4, 41, 0, 0, 0);
  sub_297884EF4(&v4, 40);
  sub_297884EEC(a1 + 1296, v4, 42, 0, 0, 0);
  sub_297884EF4(&v4, 41);
  sub_297884EEC(a1 + 1304, v4, 43, 0, 0, 0);
  sub_297884EF4(&v4, 42);
  sub_297884EEC(a1 + 1312, v4, 44, 0, 0, 0);
  sub_297884EF4(&v4, 43);
  sub_297884EEC(a1 + 1320, v4, 45, 0, 0, 0);
  sub_297884EF4(&v4, 44);
  sub_297884EEC(a1 + 1328, v4, 46, 0, 0, 0);
  sub_297884EF4(&v4, 45);
  sub_297884EEC(a1 + 1336, v4, 47, 0, 0, 0);
  sub_297884EF4(&v4, 46);
  sub_297884EEC(a1 + 1344, v4, 48, 0, 0, 0);
  sub_297884EF4(&v4, 47);
  sub_297884EEC(a1 + 1352, v4, 49, 0, 0, 0);
  sub_297884EF4(&v4, 48);
  sub_297884EEC(a1 + 1360, v4, 50, 0, 0, 0);
  sub_297884EF4(&v4, 49);
  sub_297884EEC(a1 + 1368, v4, 51, 0, 0, 0);
  sub_297884EF4(&v4, 50);
  sub_297884EEC(a1 + 1376, v4, 52, 0, 0, 0);
  sub_297884EF4(&v4, 51);
  sub_297884EEC(a1 + 1384, v4, 53, 0, 0, 0);
  sub_297884EF4(&v4, 52);
  sub_297884EEC(a1 + 1392, v4, 54, 0, 0, 0);
  sub_297884EF4(&v4, 53);
  sub_297884EEC(a1 + 1400, v4, 55, 0, 0, 0);
  sub_297884EF4(&v4, 54);
  sub_297884EEC(a1 + 1408, v4, 56, 0, 0, 0);
  sub_297884EF4(&v4, 55);
  sub_297884EEC(a1 + 1416, v4, 57, 0, 0, 0);
  sub_297884EF4(&v4, 56);
  sub_297884EEC(a1 + 1424, v4, 58, 0, 0, 0);
  sub_297884EF4(&v4, 57);
  sub_297884EEC(a1 + 1432, v4, 59, 0, 0, 0);
  sub_297884EF4(&v4, 58);
  sub_297884EEC(a1 + 1440, v4, 60, 0, 0, 0);
  sub_297884EF4(&v4, 59);
  sub_297884EEC(a1 + 1448, v4, 61, 0, 0, 0);
  sub_297884EF4(&v4, 60);
  sub_297884EEC(a1 + 1456, v4, 62, 0, 0, 0);
  sub_297884EF4(&v4, 61);
  sub_297884EEC(a1 + 1464, v4, 63, 0, 0, 0);
  sub_297884EF4(&v4, 62);
  sub_297884EEC(a1 + 1472, v4, 64, 0, 0, 0);
  sub_297884EF4(&v4, 63);
  sub_297884EEC(a1 + 1480, v4, 65, 0, 0, 0);
  sub_297884EF4(&v4, 64);
  sub_297884EEC(a1 + 1488, v4, 66, 0, 0, 0);
  sub_297884EF4(&v4, 65);
  sub_297884EEC(a1 + 1496, v4, 67, 0, 0, 0);
  sub_297884EF4(&v4, 66);
  sub_297884EEC(a1 + 1504, v4, 68, 0, 0, 0);
  sub_297884EF4(&v4, 67);
  sub_297884EEC(a1 + 1512, v4, 69, 0, 0, 0);
  sub_297884EF4(&v4, 68);
  sub_297884EEC(a1 + 1520, v4, 70, 0, 0, 0);
  sub_297884EF4(&v4, 69);
  sub_297884EEC(a1 + 1528, v4, 71, 0, 0, 0);
  sub_297884EF4(&v4, 70);
  sub_297884EEC(a1 + 1536, v4, 72, 0, 0, 0);
  sub_297884EF4(&v4, 71);
  sub_297884EEC(a1 + 1544, v4, 73, 0, 0, 0);
  sub_297884EF4(&v4, 72);
  sub_297884EEC(a1 + 1552, v4, 74, 0, 0, 0);
  sub_297884EF4(&v4, 73);
  sub_297884EEC(a1 + 1560, v4, 75, 0, 0, 0);
  sub_297884EF4(&v4, 74);
  sub_297884EEC(a1 + 1568, v4, 76, 0, 0, 0);
  sub_297884EF8(&v4, 1);
  sub_297884EEC(a1 + 1576, v4, 77, 0, 0, 0);
  sub_297884EF8(&v4, 2);
  sub_297884EEC(a1 + 1584, v4, 78, 0, 0, 0);
  sub_297884EF8(&v4, 3);
  sub_297884EEC(a1 + 1592, v4, 79, 0, 0, 0);
  sub_297884EF8(&v4, 4);
  sub_297884EEC(a1 + 1600, v4, 80, 0, 0, 0);
  sub_297884EF8(&v4, 5);
  sub_297884EEC(a1 + 1608, v4, 81, 0, 0, 0);
  sub_297817C28((a1 + 1616));
  sub_29783DC08(a1 + 1752, 0);
  return a1;
}

_BYTE *sub_297884F08(_BYTE *a1, char a2, char a3)
{
  result = sub_297884F38(a1, a2);
  result[1] = result[1] & 0x80 | a3 & 0x7F;
  return result;
}

_BYTE *sub_297884F54(_BYTE *a1, uint64_t a2, char a3, char a4)
{
  result = sub_297884F08(a1, 1, a4);
  result[2] = result[2] & 0xF8 | a3 & 7;
  *(result + 1) = a2;
  return result;
}

_BYTE *sub_297884F94(_BYTE *a1, uint64_t a2, char a3, char a4, char a5)
{
  result = sub_297884F08(a1, 2, a5);
  result[2] = a3 & 7 | (8 * (a4 & 7)) | result[2] & 0xC0;
  *(result + 1) = a2;
  return result;
}

_BYTE *sub_297884FEC(_BYTE *a1, char a2, char a3, char a4)
{
  result = sub_297884F08(a1, 3, a2);
  result[2] = a3 & 3 | (4 * (a4 & 1)) | result[2] & 0xF8;
  return result;
}

uint64_t sub_297885034(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_297885068(v4, v2);
  return a1;
}

uint64_t sub_297885068(int *a1, unsigned int a2)
{
  v3 = *a1;
  *a1 |= 1u;
  if (a2 >= 0x11)
  {
    *a1 = v3 & 0xFFFFFFFE;
    v5 = sub_29784729C(a1);
    *v5 = sub_2978850E0(a1, a2);
    v5[1] = v6;
  }

  return sub_297885114(a1);
}

uint64_t sub_297885114(int *a1)
{
  sub_2978473C8(a1, 0);
  sub_2978473CC(a1, 0);
  v2 = sub_297885188();
  v4 = v3;
  v5 = sub_2978851A4(a1);
  result = sub_2978851A8(a1);
  while (v5 != result)
  {
    *v5 = v2;
    *(v5 + 8) = v4;
    v5 += 24;
  }

  return result;
}

uint64_t sub_2978851E0()
{
  v2 = sub_29782F39C();
  v1 = sub_29782AFA4();
  return sub_2978461F8(&v2, &v1);
}

uint64_t sub_29788521C()
{
  result = sub_29788524C();
  v1 = (*(result + 6) << 16) & 0xE00000;
  *(result + 4) = 0;
  *(result + 6) = BYTE2(v1);
  return result;
}

unsigned int *sub_297885288(unsigned int *a1, char a2)
{
  sub_297885278(a1);
  *a1 = *a1 & 0xFFFE0FFF | ((a2 & 0x1F) << 12);
  return a1;
}

uint64_t sub_2978852C0(uint64_t result, int a2, __int16 a3, __int16 a4, char a5, char a6)
{
  *result = a2;
  v6 = ((a4 & 0x7F) << 10) & 0xFF01FFFF | ((a5 & 3) << 17) & 0xFF07FFFF | ((a6 & 3) << 19) & 0xFF1FFFFF | (((*(result + 6) >> 5) & 7) << 21);
  *(result + 4) = a3 & 0x3FF | (a4 << 10);
  *(result + 6) = BYTE2(v6);
  return result;
}

unsigned int *sub_2978852F0(unsigned int *a1, char a2)
{
  sub_297885278(a1);
  *a1 = *a1 & 0xFFFFFF80 | a2 & 0x7F;
  return a1;
}

unsigned int *sub_297885328(unsigned int *a1, char a2)
{
  sub_297885278(a1);
  *a1 = *a1 & 0xFFFFF07F | ((a2 & 0x1F) << 7);
  return a1;
}

uint64_t sub_297885360(uint64_t a1)
{
  sub_2978853D4(a1 + 176);
  sub_2978853D8(a1 + 168);
  sub_2978853DC(a1 + 160);
  sub_2978853E0(a1 + 128);
  sub_29781B950(a1 + 96);
  sub_29781B950(a1 + 72);
  sub_29781B950(a1 + 48);
  sub_29781B950(a1 + 24);

  return sub_29781B950(a1);
}

uint64_t sub_2978853E4(uint64_t a1)
{
  sub_297885418(a1 + 320);
  sub_29788541C(a1 + 8);
  return a1;
}

uint64_t sub_29788544C(uint64_t a1)
{
  sub_297885490(a1 + 184);
  sub_29787B7C8(a1 + 88);

  return sub_2977FD134(a1);
}

uint64_t sub_297885494(uint64_t a1)
{
  sub_2978854E0(a1 + 96);
  sub_2978854E4(a1 + 64);
  sub_2978854E8(a1 + 32);

  return sub_2978854EC(a1);
}

uint64_t sub_2978854FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_297885584(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_29788560C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2978856B4(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return sub_2978856C4();
  }

  return result;
}

void sub_2978856C8(_DWORD *a1)
{
  if ((*a1)-- == 1)
  {
    v3 = sub_29783FD74(a1);

    j__free(v3);
  }
}

_DWORD *sub_29788572C(_DWORD **a1)
{
  result = *a1;
  if (result)
  {
    return sub_29788573C(result);
  }

  return result;
}

_DWORD *sub_297885744(_DWORD *result)
{
  if ((*result)-- == 1)
  {
    return (*(*(result - 1) + 16))();
  }

  return result;
}

void **sub_29788577C(void **a1)
{
  sub_2978857AC(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_2978857AC(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_29782F70C();
    v4 = sub_297885834();
    v5 = sub_297803A7C(a1);
    result = sub_29783D84C(a1);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        result = sub_297807F98(*v5, v3);
        if ((result & 1) == 0)
        {
          result = sub_297807F98(*v5, v4);
        }

        v5 += 2;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_297885840(uint64_t a1)
{
  sub_29783D790(a1 + 1752);
  sub_297818154(a1 + 1616);
  sub_29788587C(a1 + 568);
  return a1;
}

_BYTE *sub_297885880(_BYTE *a1)
{
  sub_2978858B0(a1);
  sub_29784754C(a1);
  return a1;
}

uint64_t sub_2978858B0(uint64_t a1)
{
  result = sub_297847458(a1);
  if (result)
  {
    v9 = sub_297885188();
    v10 = v3;
    v7 = sub_297885940();
    v8 = v4;
    v5 = sub_2978851A4(a1);
    result = sub_2978851A8(a1);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        result = sub_29788595C(v5, &v9);
        if ((result & 1) == 0)
        {
          result = sub_29788595C(v5, &v7);
        }

        v5 += 24;
      }

      while (v5 != v6);
    }
  }

  return result;
}

BOOL sub_29788595C(uint64_t a1, uint64_t a2)
{
  result = sub_297807F98(*a1, *a2);
  if (result)
  {

    return sub_29782B07C((a1 + 8), (a2 + 8));
  }

  return result;
}

uint64_t sub_2978859B4()
{
  v2 = sub_29782F710();
  v1 = sub_29782B090();
  return sub_2978461F8(&v2, &v1);
}

void *sub_2978859F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_297809B88(a1);
  sub_297809B88((v8 + 24));
  sub_297809B88(a1 + 6);
  sub_297809B88(a1 + 9);
  sub_297809B88(a1 + 12);
  sub_297885A88(a1 + 15);
  sub_297885A8C(a1 + 16, 0);
  a1[19] = a2;
  sub_297885A90(a1 + 20, a3);
  sub_297829178(a1 + 21, a4);
  sub_29788DFD4(a1 + 22, a1[19]);
  return a1;
}

uint64_t sub_297885A94(uint64_t a1)
{
  for (i = 0; i != 3; ++i)
  {
    sub_297885AD0(a1 + i);
  }

  return a1;
}

uint64_t sub_297885AE4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_297885B18(v4, v2);
  return a1;
}

uint64_t sub_297885B18(uint64_t a1, unsigned int a2)
{
  result = sub_29783DC8C(a1, a2);
  if (result)
  {

    return sub_297885B64(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_297885B64(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  v2 = sub_29782AF58(a1, 0);
  v3 = sub_29782F70C(v2);
  v4 = sub_297803A7C(a1);
  result = sub_29783D84C(a1);
  if (v4 != result)
  {
    v6 = 0;
    v7 = (result - v4 - 16) >> 4;
    v8 = (v7 + 2) & 0x1FFFFFFFFFFFFFFELL;
    v9 = vdupq_n_s64(v7);
    v10 = (v4 + 16);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v6), xmmword_2978F4C70)));
      if (v11.i8[0])
      {
        *(v10 - 2) = v3;
      }

      if (v11.i8[4])
      {
        *v10 = v3;
      }

      v6 += 2;
      v10 += 4;
    }

    while (v8 != v6);
  }

  return result;
}

_DWORD **sub_297885C24(_DWORD **a1, _DWORD *a2)
{
  *a1 = a2;
  sub_297885C50(a1);
  return a1;
}

_DWORD *sub_297885C50(_DWORD **a1)
{
  result = *a1;
  if (result)
  {
    return sub_297885C60(result);
  }

  return result;
}

void **sub_297885C68(unsigned __int8 *a1)
{
  v2 = sub_29781F06C();

  return sub_297885CA4(a1, v2);
}

void **sub_297885CE4(unsigned __int8 *a1)
{
  v2 = sub_29781F06C();

  return sub_297885D20(a1, v2);
}

void **sub_297885D60(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_297885D9C(a1, v2);
}

void **sub_297885DE0(uint64_t *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    return sub_297886658(a1, a2);
  }

  else
  {
    return sub_297801F64(*a1, " /* <none> */ ");
  }
}

void **sub_297885DF8(uint64_t *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    return sub_297888BF8(a1, a2);
  }

  else
  {
    return sub_297801F64(*a1, " /* <none> */ ");
  }
}

void **sub_297885E10(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    return sub_297889614(a1, a2);
  }

  else
  {
    return sub_297801F64(*a1, " /* <none> */ ");
  }
}

uint64_t sub_297885E28(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_297885E64(a1, v2);
}

uint64_t sub_297885E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_297885F38(a1);
  sub_297885DDC(v17, a2, v4);
  v15 = sub_297885F40(a1);
  v16 = v5;
  v6 = sub_2977FB720(&v15);
  v7 = sub_2978130B8(&v15);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      sub_297885F70(v17, v9, 1);
    }

    while (v6 != v8);
  }

  v15 = sub_297886048(a1);
  v16 = v10;
  v11 = sub_2977FB720(&v15);
  result = sub_2978130B8(&v15);
  if (v11 != result)
  {
    v13 = result;
    do
    {
      v14 = *v11++;
      result = sub_297885F70(v17, v14, 1);
    }

    while (v11 != v13);
  }

  return result;
}

uint64_t sub_297885F70(uint64_t *a1, uint64_t a2, char a3)
{
  v13[5] = *MEMORY[0x29EDCA608];
  sub_297864964(v13);
  v6 = sub_29788A970(a2);
  v7 = sub_29788A974(a2);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      v12[0] = v9;
      sub_2978040A4(v13, v12);
    }

    while (v6 != v8);
  }

  if (!sub_297806904(v13))
  {
    sub_29780B1E8(v12, v13);
    sub_297886350(a1, v12[0], v12[1], a3);
  }

  result = sub_2977FD134(v13);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297886074(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = sub_297885F38(a1);
  sub_297885DDC(v25, a2, v4);
  v5 = sub_297886294(a1);
  v23 = sub_297885F40(a1);
  v24 = v6;
  v7 = sub_2977FB720(&v23);
  v8 = sub_2978130B8(&v23);
  if (v7 != v8)
  {
    v9 = v8;
    do
    {
      v10 = *v7;
      sub_29780B1B8(v26);
      v11 = sub_2978862BC(v10);
      for (i = sub_2978862C0(v10); v11 != i; ++v11)
      {
        v21 = *v11;
        if ((sub_2978862F4(v21) & 1) != 0 || sub_297886348(v5, v21))
        {
          sub_2978040A4(v26, &v21);
        }
      }

      if (sub_29780406C(v26))
      {
        sub_29780B1E8(&v21, v26);
        sub_297886350(v25, v21, v22, 1);
      }

      sub_2977FD134(v26);
      ++v7;
    }

    while (v7 != v9);
  }

  v23 = sub_297886048(a1);
  v24 = v13;
  v14 = sub_2977FB720(&v23);
  result = sub_2978130B8(&v23);
  if (v14 != result)
  {
    v16 = result;
    do
    {
      v17 = *v14;
      sub_29780B1B8(v26);
      v18 = sub_2978862BC(v17);
      for (j = sub_2978862C0(v17); v18 != j; ++v18)
      {
        v21 = *v18;
        if ((sub_2978862F4(v21) & 1) != 0 || sub_297886348(v5, v21))
        {
          sub_2978040A4(v26, &v21);
        }
      }

      if (sub_29780406C(v26))
      {
        sub_29780B1E8(&v21, v26);
        sub_297886350(v25, v21, v22, 1);
      }

      result = sub_2977FD134(v26);
      ++v14;
    }

    while (v14 != v16);
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978862F4(uint64_t a1)
{
  v2 = a1;
  if (sub_29788AB94(&v2) & 1) != 0 || (sub_29788AB98(&v2) & 1) != 0 || (sub_29788AB9C(&v2))
  {
    return 1;
  }

  else
  {
    return sub_29788ABA0(&v2);
  }
}

uint64_t sub_297886350(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v41[0] = a2;
  v41[1] = a3;
  v40 = a4;
  v39[0] = v41;
  v39[1] = a1;
  v39[2] = &v40;
  v5 = sub_2977FB7B8(v41);
  v6 = sub_2977FB720(v41);
  if (v5 == 1)
  {
    sub_297885DE0(a1, *v6);
    return sub_29788ADE8(v39);
  }

  if (!sub_29788AE7C(v6))
  {
    v20 = sub_2977FB720(v41);
    if (sub_29788AE80(v20))
    {
      sub_297801F64(*a1, "invariant");
      v21 = sub_2977FB720(v41);
      v22 = sub_2978130B8(v41);
      if (v21 != v22)
      {
        v23 = v22;
        v24 = 1;
        do
        {
          v25 = *v21;
          if ((v24 & 1) == 0)
          {
            sub_297801F64(*a1, ",");
          }

          sub_297801F64(*a1, " ");
          v26 = sub_29781BF50(v25);
          if (sub_2977FD5B0(v26))
          {
            v27 = *a1;
            v28 = sub_2977FD5B0(v26);
            v29 = sub_29788709C(v28);
            sub_297801FA8(v27, v29, v30);
          }

          else
          {
            v31 = sub_297888B98(v26);
            sub_297888B78(a1, v31);
          }

          v24 = 0;
          ++v21;
        }

        while (v21 != v23);
      }
    }

    else
    {
      v32 = sub_2977FB720(v41);
      v33 = sub_2978130B8(v41);
      if (v32 != v33)
      {
        v34 = v33;
        do
        {
          v35 = *v32++;
          sub_297885DE0(a1, v35);
        }

        while (v32 != v34);
      }
    }

    return sub_29788ADE8(v39);
  }

  v8 = sub_2977FB720(v41);
  result = sub_2978130B8(v41);
  if (v8 != result)
  {
    v9 = result;
    v10 = 1;
    do
    {
      v38 = sub_29781BF50(*v8);
      v11 = a1[2];
      if (v11 && (v37[0] = sub_297886EF0(v11, &v38), v37[1] = v12, v36[0] = sub_297886F58(a1[2]), v36[1] = v13, sub_29782EE3C(v37, v36)))
      {
        v14 = v38;
        v15 = sub_2977FB720(v37);
        sub_297886FA8(a1, v14, *(v15 + 8));
        result = sub_29788ADE8(v39);
      }

      else
      {
        if (v10)
        {
          sub_2978870A4(a1, v38);
          sub_297887240(a1, v38);
        }

        else
        {
          sub_297801F64(*a1, ",");
        }

        v16 = sub_297801F64(*a1, " ");
        v17 = sub_29788709C(v38);
        sub_297801FA8(v16, v17, v18);
        sub_297887314(a1, v38);
        result = sub_29783CFFC(v38);
        if (result)
        {
          sub_297801F64(*a1, " = ");
          v19 = sub_29783CFFC(v38);
          result = sub_297885E10(a1, v19);
        }

        v10 = 0;
      }

      ++v8;
    }

    while (v8 != v9);
    if ((v10 & 1) == 0)
    {
      return sub_29788ADE8(v39);
    }
  }

  return result;
}

uint64_t sub_297886640(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 12) = 1;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void **sub_297886658(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = sub_29786AC48(a2);
  if (v4 <= 4)
  {
    if (v4 <= 1)
    {
      if (v4)
      {

        return sub_29788698C(a1, a2);
      }

      else
      {

        return sub_297886850(a1, a2);
      }
    }

    else if (v4 == 2)
    {

      return sub_297886AC8(a1, a2);
    }

    else if (v4 == 3)
    {

      return sub_297886C88(a1, a2);
    }

    else
    {

      return sub_297886C8C(a1, a2);
    }
  }

  else if (v4 > 7)
  {
    if (v4 == 8)
    {

      return sub_297886E50(a1, a2);
    }

    else if (v4 == 9)
    {

      return sub_297886EE8(a1, a2);
    }

    else
    {

      return sub_297886EEC(a1, a2);
    }
  }

  else if (v4 == 5)
  {

    return sub_297886CDC(a1, a2);
  }

  else if (v4 == 6)
  {

    return sub_297886D58(a1, a2);
  }

  else
  {

    return sub_297886DF8(a1, a2);
  }
}

void **sub_297886850(uint64_t *a1, _DWORD *a2)
{
  v18 = a2;
  v3 = a1[2];
  if (v3)
  {
    v17[0] = sub_297886EF0(v3, &v18);
    v17[1] = v4;
    v16[0] = sub_297886F58(a1[2]);
    v16[1] = v5;
    if (sub_29782EE3C(v17, v16))
    {
      v6 = v18;
      v7 = sub_2977FB720(v17);
      return sub_297886FA8(a1, v6, *(v7 + 8));
    }

    a2 = v18;
  }

  if (sub_29783C254(a2))
  {
    v9 = *a1;
    v10 = sub_29788709C(v18);
    sub_297801FA8(v9, v10, v11);
  }

  else
  {
    sub_2978870A4(a1, v18);
    sub_297887240(a1, v18);
    v12 = sub_297801F64(*a1, " ");
    v13 = sub_29788709C(v18);
    sub_297801FA8(v12, v13, v14);
    sub_297887314(a1, v18);
  }

  result = sub_29783CFFC(v18);
  if (result)
  {
    sub_297801F64(*a1, " = ");
    v15 = sub_29783CFFC(v18);
    return sub_297885E10(a1, v15);
  }

  return result;
}

uint64_t sub_29788698C(uint64_t *a1, _DWORD *a2)
{
  if (sub_297888998(a2))
  {
    sub_297801F64(*a1, "const ");
  }

  sub_2978889A4(a1, a2);
  if (sub_297887CC8(a2))
  {
    v4 = sub_297888A04(a2);
    sub_297887CF8(a1, v4);
  }

  v12 = -1;
  v5 = sub_2977FD5B0(a2);
  sub_297887F4C(a1, v5);
  v6 = sub_2977FD5B0(a2);
  if (sub_2978881F0(v6, &v12) && (sub_297888250(a2) & 1) == 0)
  {
    sub_29788825C(a1, v12);
  }

  result = sub_297888470(a2);
  if (result)
  {
    v8 = sub_297801F64(*a1, " ");
    v9 = sub_29788709C(a2);
    sub_297801FA8(v8, v9, v10);
    result = sub_297888250(a2);
    if (result)
    {
      v11 = v12;

      return sub_29788825C(a1, v11);
    }
  }

  return result;
}

void **sub_297886AC8(uint64_t *a1, _DWORD *a2)
{
  a1[3] = a2;
  if (sub_297888A1C(a2))
  {
    v4 = sub_297888A28(a2);
    sub_297887CF8(a1, v4);
  }

  v18 = 0;
  v5 = sub_2978735BC(a2);
  sub_297887F4C(a1, v5);
  v6 = sub_2978735BC(a2);
  if (sub_2978881F0(v6, &v18))
  {
    sub_29788825C(a1, v18);
  }

  v7 = sub_297801F64(*a1, " ");
  v8 = sub_29788709C(a2);
  v10 = sub_297801FA8(v7, v8, v9);
  sub_297801F64(v10, "(");
  v11 = sub_297803A7C((a2 + 4));
  v12 = sub_297888A34((a2 + 4));
  if (v11 != v12)
  {
    v13 = v12;
    v14 = v12 - v11;
    do
    {
      sub_297885DE0(a1, *v11);
      if (v14 >= 9)
      {
        sub_297801F64(*a1, ", ");
      }

      ++v11;
      v14 -= 8;
    }

    while (v11 != v13);
  }

  sub_297801F64(*a1, ")");
  if (sub_297888A68(a2))
  {
    sub_297801F64(*a1, " ");
    v15 = sub_297888A68(a2);
    sub_297885DF8(a1, v15);
    v16 = *a1;

    return sub_297801F64(v16, "\n");
  }

  else
  {

    return sub_297888A70(a1, 0);
  }
}

void **sub_297886C8C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_29782AFB0(a2);
  sub_297887BCC(a1, v3);
  v4 = *a1;

  return sub_297801F64(v4, "uniform");
}

void **sub_297886CDC(uint64_t *a1, _DWORD *a2)
{
  sub_297801F64(*a1, "precision ");
  v4 = sub_297888B60(a2);
  sub_297887CF8(a1, v4);
  v5 = *a1;
  v6 = sub_297888B6C(a2);
  v8 = sub_2978B5BAC(v6);

  return sub_297801FA8(v5, v8, v7);
}

void **sub_297886D58(uint64_t *a1, unsigned __int16 *a2)
{
  sub_297801F64(*a1, "invariant ");
  if (sub_2977FD5B0(a2))
  {
    v4 = *a1;
    v5 = sub_2977FD5B0(a2);
    v7 = sub_29788709C(v5);

    return sub_297801FA8(v4, v7, v6);
  }

  else
  {
    v9 = sub_297888B98(a2);

    return sub_297888B78(a1, v9);
  }
}

void **sub_297886DF8(uint64_t *a1, unsigned __int16 *a2)
{
  v3 = sub_297801F64(*a1, "#version ");
  v4 = sub_297888B98(a2);
  v5 = sub_297883C6C(v4);

  return sub_297801FA0(v3, v5);
}

void **sub_297886E50(uint64_t *a1, _DWORD *a2)
{
  v3 = sub_297801F64(*a1, "#extension ");
  v4 = sub_297888BA4(a2);
  v5 = sub_297881744(v4);
  v7 = sub_297801FA8(v3, v5, v6);
  v8 = sub_297801F64(v7, " : ");
  v9 = sub_297888BEC(a2);
  v11 = sub_297888BB0(v9);

  return sub_297801FA8(v8, v11, v10);
}

uint64_t sub_297886EF0(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  if (!sub_29788738C(a1, a2, &v6))
  {
    return sub_297886F58(a1);
  }

  v3 = v6;
  v4 = sub_29783D84C(a1);
  sub_2978874B0(&v7, v3, v4, 1);
  return v7;
}

uint64_t sub_297886F58(uint64_t a1)
{
  v2 = sub_29783D84C(a1);
  v3 = sub_29783D84C(a1);
  sub_2978874B0(&v5, v2, v3, 1);
  return v5;
}

void **sub_297886FA8(uint64_t *a1, uint64_t a2, float *a3)
{
  v6 = sub_29783C254(a2);
  v7 = *a1;
  if (v6)
  {
    v8 = sub_29788709C(a2);
    v10 = sub_297801FA8(v7, v8, v9);
  }

  else
  {
    sub_297801F64(*a1, "const ");
    sub_297887240(a1, a2);
    v11 = sub_297801F64(*a1, " ");
    v12 = sub_29788709C(a2);
    sub_297801FA8(v11, v12, v13);
    sub_297887314(a1, a2);
    v10 = *a1;
  }

  sub_297801F64(v10, " = ");
  v14 = sub_2977FD5B0(a2);
  v15 = *a1;

  return sub_297887564(a3, v14, v15);
}

uint64_t *sub_2978870A4(uint64_t *a1, _DWORD *a2)
{
  v4 = sub_297816700(a2);
  sub_297887BCC(a1, v4);
  if (sub_297887CC8(a2) && (sub_297887CD4(a2) & 1) == 0)
  {
    sub_297801F64(*a1, "invariant ");
  }

  v5 = sub_297887CE0(a2);
  if (v5 == 1)
  {
    v6 = "smooth ";
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_9;
    }

    v6 = "flat ";
  }

  sub_297801F64(*a1, v6);
LABEL_9:
  v7 = sub_297887CEC(a2);
  if (v7 > 4)
  {
    if (v7 > 6)
    {
      if (v7 == 7)
      {
        v8 = "uniform ";
      }

      else
      {
        if (v7 != 8)
        {
          goto LABEL_28;
        }

        v8 = "varying ";
      }
    }

    else if (v7 == 5)
    {
      v8 = "centroid in ";
    }

    else
    {
      v8 = "centroid out ";
    }

    goto LABEL_27;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v8 = "in ";
    }

    else
    {
      v8 = "out ";
    }

    goto LABEL_27;
  }

  if (v7 == 1)
  {
    v8 = "attribute ";
    goto LABEL_27;
  }

  if (v7 == 2 && (sub_29783C224(a2) & 1) == 0)
  {
    v8 = "const ";
LABEL_27:
    sub_297801F64(*a1, v8);
  }

LABEL_28:
  result = sub_29783C248(a2);
  if (result)
  {
    v10 = sub_297887D1C(a2);

    return sub_297887CF8(a1, v10);
  }

  return result;
}

uint64_t sub_297887240(uint64_t *a1, uint64_t a2)
{
  v13 = sub_2977FD5B0(a2);
  v4 = sub_2977FB720(&v13);
  v5 = sub_297887DB4(v4);
  if (v5)
  {
    v6 = sub_2977FB7B8(v5);
    sub_297887DB8(a1, v6, a2);
  }

  else
  {
    v13 = sub_2977FD5B0(a2);
    v7 = sub_2977FB720(&v13);
    v8 = sub_297887E3C(v7);
    if (v8)
    {
      v9 = sub_2977FB7B8(v8);
      sub_297887E40(a1, v9);
    }

    else
    {
      v10 = sub_2977FD5B0(a2);
      sub_297887F4C(a1, v10);
    }
  }

  LODWORD(v13) = 0;
  v11 = sub_2977FD5B0(a2);
  result = sub_2978881F0(v11, &v13);
  if (result)
  {
    result = sub_297888250(a2);
    if ((result & 1) == 0)
    {
      return sub_29788825C(a1, v13);
    }
  }

  return result;
}

void **sub_297887314(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v4 = sub_2977FD5B0(a2);
  result = sub_2978881F0(v4, &v7);
  if (result)
  {
    result = sub_297888250(a2);
    if (result)
    {
      v6 = v7;

      return sub_29788825C(a1, v6);
    }
  }

  return result;
}

uint64_t sub_29788738C(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v6 = sub_297803A7C(a1);
  result = sub_29782AFAC(a1);
  if (result)
  {
    v8 = result;
    v9 = sub_29782F70C(result);
    v10 = sub_297885834();
    v11 = v8 - 1;
    v12 = sub_2978307C8(a2) & (v8 - 1);
    v13 = (v6 + 16 * v12);
    if (sub_297807F98(*a2, *v13))
    {
      result = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (!sub_297807F98(*v13, v9))
      {
        if (sub_297807F98(*v13, v10) && v14 == 0)
        {
          v14 = v13;
        }

        v12 = (v12 + v15) & v11;
        v13 = (v6 + 16 * v12);
        ++v15;
        if (sub_297807F98(*a2, *v13))
        {
          result = 1;
          goto LABEL_13;
        }
      }

      result = 0;
      if (v14)
      {
        v13 = v14;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_13:
  *a3 = v13;
  return result;
}

uint64_t sub_2978874B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a4 & 1) == 0)
  {
    sub_2978874E8(a1);
  }

  return a1;
}

uint64_t sub_2978874E8(uint64_t **a1)
{
  v2 = sub_29782F710();
  result = sub_297885838();
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v5 = result;
    do
    {
      result = sub_297807F98(*v4, v2);
      if ((result & 1) == 0)
      {
        result = sub_297807F98(**a1, v5);
        if (!result)
        {
          break;
        }
      }

      v6 = a1[1];
      v4 = *a1 + 2;
      *a1 = v4;
    }

    while (v4 != v6);
  }

  return result;
}

void **sub_297887564(float *a1, uint64_t a2, void **a3)
{
  v11 = a2;
  v5 = sub_2977FB720(&v11);
  v6 = sub_2978875FC(v5);
  if (v6)
  {
    return sub_297887600(a1, v6, a3);
  }

  v8 = sub_2977FB720(&v11);
  v9 = sub_2978876EC(v8);
  if (v9)
  {
    return sub_2978876F0(a1, v9, a3);
  }

  v10 = sub_2977FB720(&v11);
  result = sub_2978877CC(v10);
  if (result)
  {
    return sub_2978877D0(a1, result, a3);
  }

  return result;
}

void **sub_297887600(float *a1, uint64_t a2, void **a3)
{
  if ((sub_2978B5A90(a2) & 1) != 0 || sub_2978B5AB4(a2))
  {
    v6 = *a1;

    return sub_29781E750(a3, v6);
  }

  else
  {
    v11 = 0;
    if (sub_2978B5AD8(a2, &v11))
    {
      v8 = *a1;
      if (v11 == 1)
      {
        return sub_29780BBD0(a3, v8);
      }

      v10 = sub_297801FA0(a3, v8);
      v9 = "U";
    }

    else
    {
      sub_2978B5B20(a2);
      if (*a1)
      {
        v9 = "true";
      }

      else
      {
        v9 = "false";
      }

      v10 = a3;
    }

    return sub_297801F64(v10, v9);
  }
}

void **sub_2978876F0(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = sub_2978B5B84(a2);
  v8 = sub_297801FA8(a3, v6, v7);
  sub_297801F64(v8, "(");
  if (sub_297887A38(a2))
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if ((v10 & 1) == 0)
      {
        sub_297801F64(a3, ", ");
      }

      v11 = sub_297887A44(a1, v9);
      sub_297887600(v11, a2, a3);
      ++v9;
      v12 = sub_297887A38(a2);
      v10 = 0;
    }

    while (v9 < v12);
  }

  return sub_297801F64(a3, ")");
}

void **sub_2978877D0(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = sub_2978B5B84(a2);
  v8 = sub_297801FA8(a3, v6, v7);
  sub_297801F64(v8, "(");
  if (sub_297887A38(a2))
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (sub_297887B08(a2))
      {
        v11 = 0;
        do
        {
          if ((v10 & 1) == 0)
          {
            sub_297801F64(a3, ", ");
          }

          v12 = sub_297887A44(a1 + 16 * v9, v11);
          sub_297887600(v12, a2, a3);
          ++v11;
          v13 = 0;
          LOBYTE(v10) = 0;
        }

        while (v11 < sub_297887B08(a2));
      }

      else
      {
        v13 = v10;
      }

      ++v9;
      v10 = v13;
    }

    while (v9 < sub_297887A38(a2));
  }

  return sub_297801F64(a3, ")");
}

uint64_t sub_2978878F4(uint64_t a1)
{
  v2 = a1;
  if (sub_297887930(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29788799C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978879D8(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_297887A44(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  if (a2 != 2)
  {
    v2 = a1 + 12;
  }

  v3 = a1 + 4;
  if (!a2)
  {
    v3 = a1;
  }

  if (a2 <= 1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_297887A6C(uint64_t a1)
{
  v2 = a1;
  if (sub_297887AA8(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_297887B18(void *a1)
{
  if (sub_29783E4C0(a1))
  {
    sub_2977FB7B4(&v5, &byte_2978FC3E5);
  }

  else
  {
    v2 = sub_297887B84(a1);
    v3 = sub_297887B88(a1);
    sub_2977FB7C0(&v5, v2, v3);
  }

  return v5;
}

uint64_t sub_297887B88(void *a1)
{
  if (sub_29783E4C0(a1))
  {
    return 0;
  }

  else
  {
    return **a1;
  }
}

void **sub_297887BCC(uint64_t *a1, int a2)
{
  v8 = a2;
  if (sub_297887D28(&v8) || (result = sub_297887D40(&v8), result))
  {
    sub_297801F64(*a1, "layout(");
    if (sub_297887D28(&v8))
    {
      if (sub_297887D4C(&v8))
      {
        v4 = sub_297887D70(&v8);
        sub_297887D58(a1, v4);
        if (sub_297887D7C(&v8))
        {
          sub_297801F64(*a1, ", ");
LABEL_9:
          v7 = sub_297887D88(&v8);
          sub_297887D58(a1, v7);
        }
      }

      else if (sub_297887D7C(&v8))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = sub_297801F64(*a1, "location = ");
      v6 = sub_29786AC48(&v8);
      sub_297801FA0(v5, v6);
    }

    return sub_297801F64(*a1, ") ");
  }

  return result;
}

uint64_t *sub_297887CF8(uint64_t *result, int a2)
{
  if ((a2 - 1) <= 2)
  {
    return sub_297801F64(*result, off_29EE804D8[a2 - 1]);
  }

  return result;
}

void **sub_297887DB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_297888358(a3))
  {

    return sub_297888364(a1, a2);
  }

  else
  {
    v6 = *a1;
    v8 = sub_29788709C(a2);

    return sub_297801FA8(v6, v8, v7);
  }
}

void **sub_297887E40(uint64_t a1, _DWORD *a2)
{
  v4 = sub_297811C44(a2);
  sub_297887BCC(a1, v4);
  sub_2978885D4(a2);
  sub_297801F64(*a1, "uniform ");
  v5 = *a1;
  v6 = sub_29788709C(a2);
  sub_297801FA8(v5, v6, v7);
  sub_297801F64(*a1, " {\n");
  ++*(a1 + 8);
  v8 = sub_297803A7C((a2 + 4));
  v9 = sub_2978885E0((a2 + 4));
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *v8++;
      sub_2978884C4(a1);
      sub_297885F70(a1, v11, 1);
    }

    while (v8 != v10);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v12 = *a1;

  return sub_297801F64(v12, "}");
}

void **sub_297887F4C(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  if (!sub_2977FB720(&v42))
  {
    v12 = *a1;
    v13 = " /* <> */ ";
    return sub_297801F64(v12, v13);
  }

  v3 = sub_2977FB720(&v42);
  v4 = sub_29788799C(v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_2977FB7B8(v4);
    v7 = sub_29788862C(v6) - 4;
    if (v7 <= 3)
    {
      sub_297801F64(*a1, off_29EE80520[v7]);
    }

    v8 = sub_297801F64(*a1, "vec");
    v9 = sub_297887A38(v5);
    v10 = v8;
    return sub_297801FA0(v10, v9);
  }

  v14 = sub_2977FB720(&v42);
  v15 = sub_2978877CC(v14);
  if (!v15)
  {
    v21 = sub_2977FB720(&v42);
    v22 = sub_297888638(v21);
    if (v22)
    {
      v23 = v22;
      v24 = sub_29788863C(v22) - 1;
      if (v24 <= 2)
      {
        sub_297801F64(*a1, off_29EE80540[v24]);
      }

      result = sub_297888648(v23);
      if (result == 1)
      {
        v12 = *a1;
        v13 = "sampler2D";
      }

      else
      {
        if (result)
        {
          return result;
        }

        v25 = *a1;
        if (sub_29786E230(a1[3]))
        {
          v13 = "vec4";
        }

        else
        {
          v13 = "sampler";
        }

        v12 = v25;
      }

      return sub_297801F64(v12, v13);
    }

    v26 = sub_2977FB720(&v42);
    if (sub_297888654(v26))
    {
      v12 = *a1;
      v13 = "void";
      return sub_297801F64(v12, v13);
    }

    v27 = sub_2977FB720(&v42);
    v28 = sub_297888658(v27);
    if (v28)
    {
      v29 = *a1;
      v30 = sub_2978B5B84(v28);
      return sub_297801FA8(v29, v30, v31);
    }

    v32 = sub_2977FB720(&v42);
    v33 = sub_29788865C(v32);
    if (v33)
    {
      v34 = sub_2977FB7B8(v33);
    }

    else
    {
      v35 = sub_2977FB720(&v42);
      v36 = sub_297887DB4(v35);
      if (v36)
      {
        v29 = *a1;
        v30 = sub_2978B5410(v36);
        return sub_297801FA8(v29, v30, v31);
      }

      v37 = sub_2977FB720(&v42);
      v38 = sub_297887E3C(v37);
      if (v38)
      {
        v39 = sub_2977FB7B8(v38);
        return sub_297887E40(a1, v39);
      }

      v40 = sub_2977FB720(&v42);
      v41 = sub_297888660(v40);
      if (!v41)
      {
        v12 = *a1;
        v13 = " /* <unknown> */ ";
        return sub_297801F64(v12, v13);
      }

      v34 = sub_2977FD5B0(v41);
    }

    return sub_297887F4C(a1, v34);
  }

  v16 = v15;
  v17 = sub_2977FB7B8(v15);
  if (sub_29788862C(v17) == 4)
  {
    sub_297801F64(*a1, "h");
  }

  v18 = sub_297887B08(v16);
  v19 = sub_297887A38(v16);
  v20 = sub_297801F64(*a1, "mat");
  result = sub_297801FA0(v20, v19);
  if (v18 != v19)
  {
    v10 = sub_297801F64(*a1, "x");
    v9 = v18;
    return sub_297801FA0(v10, v9);
  }

  return result;
}

uint64_t sub_2978881F0(uint64_t a1, _DWORD *a2)
{
  v7 = a1;
  v3 = sub_2977FB720(&v7);
  if (sub_297888970(v3))
  {
    v4 = 0;
  }

  else
  {
    v5 = sub_2977FB720(&v7);
    result = sub_29788865C(v5);
    if (!result)
    {
      return result;
    }

    v4 = sub_29782AFB0(result);
  }

  *a2 = v4;
  return 1;
}

void **sub_29788825C(uint64_t *a1, unsigned int a2)
{
  sub_297801F64(*a1, "[");
  if (a2)
  {
    sub_297801FA0(*a1, a2);
  }

  v4 = *a1;

  return sub_297801F64(v4, "]");
}

uint64_t sub_2978882BC(uint64_t a1)
{
  v2 = a1;
  if (sub_2978882F8(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

void **sub_297888364(uint64_t a1, uint64_t a2)
{
  sub_297801F64(*a1, "struct");
  if (sub_297888470(a2))
  {
    v4 = sub_297801F64(*a1, " ");
    v5 = sub_29788709C(a2);
    sub_297801FA8(v4, v5, v6);
  }

  sub_297801F64(*a1, " {\n");
  ++*(a1 + 8);
  v7 = sub_297803A7C(a2 + 16);
  v8 = sub_297888490(a2 + 16);
  if (v7 != v8)
  {
    v9 = v8;
    do
    {
      v10 = *v7++;
      sub_2978884C4(a1);
      sub_297885F70(a1, v10, 1);
    }

    while (v7 != v9);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v11 = *a1;

  return sub_297801F64(v11, "}");
}

void **sub_2978884C4(void **result)
{
  if (*(result + 2))
  {
    v1 = result;
    v2 = 0;
    do
    {
      result = sub_297801F64(*v1, "  ");
      ++v2;
    }

    while (v2 < *(v1 + 2));
  }

  return result;
}

uint64_t sub_297888538(uint64_t a1)
{
  v2 = a1;
  if (sub_297888574(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_297888664(uint64_t a1)
{
  v2 = a1;
  if (sub_2978886A0(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_297888700(uint64_t a1)
{
  v2 = a1;
  if (sub_29788873C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29788879C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978887D8(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_297888838(uint64_t a1)
{
  v2 = a1;
  if (sub_297888874(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978888D4(uint64_t a1)
{
  v2 = a1;
  if (sub_297888910(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

void **sub_2978889A4(uint64_t *a1, _DWORD *a2)
{
  result = sub_297888A10(a2);
  if ((result - 1) <= 2)
  {
    v4 = off_29EE80558[result - 1];
    v5 = *a1;

    return sub_297801F64(v5, v4);
  }

  return result;
}

void **sub_297888A70(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = "; ";
  }

  else
  {
    v3 = ";";
  }

  return sub_297801F64(v2, v3);
}

void **sub_297888AA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_297815F90(a2);
  sub_297801FA8(v4, v5, v6);
  result = sub_297888B50(a2);
  if (result)
  {
    v8 = sub_297801F64(*a1, "(");
    v9 = sub_297805510(a2);
    v10 = sub_297801F64(v8, v9);

    return sub_297801F64(v10, ")");
  }

  return result;
}

void **sub_297888B78(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (a2 == 1)
  {
    v3 = "ci_outColorF";
  }

  else
  {
    v3 = "ci_outColorH";
  }

  return sub_297801F64(v2, v3);
}

uint64_t sub_297888BB0(unsigned int a1)
{
  if (a1 <= 4)
  {
    sub_2977FB7B4(&v2, *(&off_29EE80570 + a1));
  }

  return v2;
}

uint64_t sub_297888BF8(uint64_t *a1, unsigned __int8 *a2)
{
  result = sub_29786AC48(a2);
  switch(result)
  {
    case 0:

      result = sub_297888E58(a1, a2);
      break;
    case 1:

      result = sub_297888F38(a1);
      break;
    case 2:

      result = sub_297888F48(a1, a2);
      break;
    case 3:

      result = sub_297888F54(a1, a2);
      break;
    case 4:

      result = sub_297889058(a1, a2);
      break;
    case 5:

      result = sub_2978890D0(a1, a2);
      break;
    case 6:

      result = sub_297889134(a1);
      break;
    case 7:

      result = sub_297889144(a1, a2);
      break;
    case 8:

      result = sub_29788925C(a1, a2);
      break;
    case 9:

      result = sub_2978892E8(a1, a2);
      break;
    case 10:

      result = sub_297889390(a1);
      break;
    case 11:

      result = sub_2978893D8(a1);
      break;
    case 12:

      result = sub_297889420(a1);
      break;
    case 13:

      result = sub_297889468(a1, a2);
      break;
    case 14:

      result = sub_2978894E4(a1, a2);
      break;
    default:
      return result;
  }

  return result;
}

void **sub_297888E58(uint64_t a1, uint64_t a2)
{
  sub_297801F64(*a1, "{\n");
  ++*(a1 + 8);
  v4 = sub_297803A7C(a2 + 8);
  v5 = sub_297889524(a2 + 8);
  if (v4 != v5)
  {
    v6 = v5;
    do
    {
      v7 = *v4++;
      sub_2978884C4(a1);
      sub_297885DF8(a1, v7);
      sub_297889558(a1, v7);
      sub_297801F64(*a1, "\n");
    }

    while (v4 != v6);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v8 = *a1;

  return sub_297801F64(v8, "}");
}

void **sub_297888F54(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "if (");
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    sub_297885E10(a1, v4);
  }

  sub_297801F64(*a1, ") ");
  if (sub_2977FD5B0(a2))
  {
    v5 = sub_2977FD5B0(a2);
    sub_297885DF8(a1, v5);
    v6 = sub_2977FD5B0(a2);
    sub_297889558(a1, v6);
  }

  else
  {
    sub_297888A70(a1, 0);
  }

  result = sub_29783CFFC(a2);
  if (result)
  {
    sub_297801F64(*a1, " else ");
    v8 = sub_29783CFFC(a2);
    sub_297885DF8(a1, v8);
    v9 = sub_29783CFFC(a2);

    return sub_297889558(a1, v9);
  }

  return result;
}

uint64_t sub_297889058(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "switch (");
  v4 = sub_2977FB7B8(a2);
  sub_297885E10(a1, v4);
  sub_297801F64(*a1, ") ");
  v5 = sub_2977FD5B0(a2);

  return sub_297885DF8(a1, v5);
}

void **sub_2978890D0(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "case ");
  v4 = sub_29783CFFC(a2);
  sub_297885E10(a1, v4);
  v5 = *a1;

  return sub_297801F64(v5, ": ");
}

void **sub_297889144(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "for (");
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    sub_297885DF8(a1, v4);
    v5 = sub_2977FB7B8(a2);
    sub_297889558(a1, v5);
  }

  else
  {
    sub_297888A70(a1, 0);
  }

  sub_297801F64(*a1, " ");
  if (sub_2977FD5B0(a2))
  {
    v6 = sub_2977FD5B0(a2);
    sub_297885DF8(a1, v6);
  }

  sub_297888A70(a1, 1);
  if (sub_29783CFFC(a2))
  {
    v7 = sub_29783CFFC(a2);
    sub_297885E10(a1, v7);
  }

  sub_297801F64(*a1, ") ");
  v8 = sub_297805510(a2);
  sub_297885DF8(a1, v8);
  v9 = sub_297805510(a2);

  return sub_297889558(a1, v9);
}

void **sub_29788925C(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "while (");
  v4 = sub_2977FB7B8(a2);
  sub_297885DF8(a1, v4);
  sub_297801F64(*a1, ") ");
  v5 = sub_2977FD5B0(a2);
  sub_297885DF8(a1, v5);
  v6 = sub_2977FD5B0(a2);

  return sub_297889558(a1, v6);
}

void **sub_2978892E8(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "do ");
  v4 = sub_2977FB7B8(a2);
  sub_297885DF8(a1, v4);
  v5 = sub_2977FB7B8(a2);
  sub_297889558(a1, v5);
  sub_297801F64(*a1, " while (");
  v6 = sub_2977FD5B0(a2);
  sub_297885E10(a1, v6);
  sub_297801F64(*a1, ")");

  return sub_297888A70(a1, 0);
}

void **sub_297889390(uint64_t *a1)
{
  sub_297801F64(*a1, "break");

  return sub_297888A70(a1, 0);
}

void **sub_2978893D8(uint64_t *a1)
{
  sub_297801F64(*a1, "continue");

  return sub_297888A70(a1, 0);
}

void **sub_297889420(uint64_t *a1)
{
  sub_297801F64(*a1, "discard");

  return sub_297888A70(a1, 0);
}

void **sub_297889468(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "return");
  if (sub_2977FB7B8(a2))
  {
    sub_297801F64(*a1, " ");
    v4 = sub_2977FB7B8(a2);
    sub_297885E10(a1, v4);
  }

  return sub_297888A70(a1, 0);
}

uint64_t sub_2978894E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2977FB7B8(a2);

  return sub_297885E10(a1, v3);
}

void **sub_297889558(uint64_t *a1, uint64_t a2)
{
  v4 = a2;
  result = sub_2978895B4(&v4);
  if (result)
  {
    return sub_297888A70(a1, 0);
  }

  return result;
}

void **sub_297889614(uint64_t *a1, uint64_t a2)
{
  result = sub_29787E544(a2);
  switch(result)
  {
    case 0:

      return sub_2978899A4(a1, a2);
    case 1:

      return sub_2978899EC(a1, a2);
    case 2:

      return sub_297889A40(a1, a2);
    case 3:

      return sub_297889A94(a1, a2);
    case 4:

      return sub_297889AE8(a1, a2);
    case 5:

      return sub_297889B48(a1, a2);
    case 6:

      return sub_297889BE8(a1, a2);
    case 7:

      return sub_297889C84(a1, a2);
    case 8:

      return sub_297889D10(a1, a2);
    case 9:

      return sub_297889DAC(a1, a2);
    case 10:

      return sub_297889DEC(a2);
    case 11:

      return sub_297889DF0(a1, a2);
    case 12:

      return sub_297889E40(a1, a2);
    case 13:
      v5 = a1;
      v6 = a2;

      return sub_297889F3C(v5, v6);
    case 14:
      v5 = a1;
      v6 = a2;

      return sub_297889F3C(v5, v6);
    case 15:
      v5 = a1;
      v6 = a2;

      return sub_297889F3C(v5, v6);
    case 16:

      return sub_297889FB4(a1, a2);
    case 17:

      return sub_29788A02C(a1, a2);
    case 18:

      return sub_29788A07C(a1, a2);
    case 19:

      return sub_29788A1AC(a1, a2);
    case 20:

      return sub_29788A27C(a1, a2);
    case 21:
      v7 = a1;
      v8 = a2;

      goto LABEL_49;
    case 22:
      v7 = a1;
      v8 = a2;

LABEL_49:
      result = sub_2978894E4(v7, v8);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2978899A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_29788A390(a2, v4);
  sub_29788A35C(v2, v4);
  return sub_2977FAA04(v4);
}

uint64_t sub_2978899EC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_29788A390(a2, v5);
  v3 = sub_29788A35C(v2, v5);
  sub_297801F64(v3, "u");
  return sub_2977FAA04(v5);
}

void **sub_297889A40(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (sub_297807D1C(a2))
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  return sub_297801F64(v2, v3);
}

uint64_t sub_297889A94(uint64_t *a1, uint64_t a2)
{
  sub_29788A39C(a2, v6);
  v3 = *a1;
  v4 = sub_2977FBD9C(v6);
  sub_29781E750(v3, v4);
  return sub_2977FA598(v6);
}

uint64_t sub_297889AE8(uint64_t *a1, uint64_t a2)
{
  sub_29788A39C(a2, v7);
  v3 = *a1;
  v4 = sub_2977FBD9C(v7);
  v5 = sub_29781E750(v3, v4);
  sub_297801F64(v5, "h");
  return sub_2977FA598(v7);
}

uint64_t sub_297889B48(uint64_t *a1, uint64_t a2)
{
  if (sub_29788A3A8(a2))
  {
    v4 = sub_2977FD5B0(a2);
    sub_29788A3B4(a1, v4);
  }

  v5 = sub_29788A44C(a2);
  if (v5 <= 6)
  {
    sub_297801F64(*a1, (&off_29EE80598)[v5]);
  }

  result = sub_29788A3A8(a2);
  if ((result & 1) == 0)
  {
    v7 = sub_2977FD5B0(a2);

    return sub_29788A3B4(a1, v7);
  }

  return result;
}

void **sub_297889BE8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_29788A3B4(a1, v4);
  sub_297801F64(*a1, " ");
  v5 = sub_29788A794(a2);
  if (v5 <= 0x14)
  {
    sub_297801F64(*a1, (&off_29EE805D0)[v5]);
  }

  sub_297801F64(*a1, " ");
  v6 = sub_29783CFFC(a2);

  return sub_29788A3B4(a1, v6);
}

void **sub_297889C84(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_29788A3B4(a1, v4);
  sub_297801F64(*a1, " ? ");
  v5 = sub_29783CFFC(a2);
  sub_29788A3B4(a1, v5);
  sub_297801F64(*a1, " : ");
  v6 = sub_297805510(a2);

  return sub_29788A3B4(a1, v6);
}

uint64_t sub_297889D10(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FB7B8(a2);
  sub_297885E10(a1, v4);
  sub_297801F64(*a1, " ");
  v5 = sub_29788A7A0(a2);
  if (v5 <= 0xB)
  {
    sub_297801F64(*a1, (&off_29EE80678)[v5]);
  }

  sub_297801F64(*a1, " ");
  v6 = sub_2977FD5B0(a2);

  return sub_297885E10(a1, v6);
}

void **sub_297889DAC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_29788A7AC(a2);

  return sub_297888B78(a1, v3);
}

void **sub_297889DF0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = sub_2977FB7B8(a2);
  v5 = sub_29788709C(v3);

  return sub_297801FA8(v2, v5, v4);
}

void **sub_297889E40(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_297887F4C(a1, v4);
  v12 = 0;
  v5 = sub_2977FD5B0(a2);
  if (sub_2978881F0(v5, &v12))
  {
    sub_29788825C(a1, v12);
  }

  sub_297801F64(*a1, "(");
  v6 = sub_297803A7C(a2 + 8);
  v7 = sub_29788A7C4(a2 + 8);
  if (v6 != v7)
  {
    v8 = v7;
    v9 = v7 - v6;
    do
    {
      sub_297885E10(a1, *v6);
      if (v9 >= 9)
      {
        sub_297801F64(*a1, ", ");
      }

      ++v6;
      v9 -= 8;
    }

    while (v6 != v8);
  }

  v10 = *a1;

  return sub_297801F64(v10, ")");
}

void **sub_297889F3C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_29788A3B4(a1, v4);
  v5 = sub_297801F64(*a1, ".");
  v7 = sub_29788A810(a2);

  return sub_297801FA8(v5, v7, v6);
}

void **sub_297889FB4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  sub_29788A3B4(a1, v4);
  sub_297801F64(*a1, "[");
  v5 = sub_29783CFFC(a2);
  sub_297885E10(a1, v5);
  v6 = *a1;

  return sub_297801F64(v6, "]");
}

void **sub_29788A02C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2977FD5B0(a2);
  sub_29788A3B4(a1, v3);
  v4 = *a1;

  return sub_297801F64(v4, ".length()");
}

void **sub_29788A07C(uint64_t *a1, uint64_t a2)
{
  if (sub_29786E230(a1[3]) && sub_29788A7AC(a2) == 1)
  {
    v4 = *sub_29788A818(a2 + 8, 0);

    return sub_297885E10(a1, v4);
  }

  else
  {
    v6 = sub_29788A7AC(a2);
    v7 = sub_297801F64(*a1, (&off_29EE806D8)[v6 - 1]);
    sub_297801F64(v7, "(");
    v8 = sub_297803A7C(a2 + 8);
    v9 = sub_29788A840(a2 + 8);
    if (v8 != v9)
    {
      v10 = v9;
      v11 = v9 - v8;
      do
      {
        sub_297885E10(a1, *v8);
        if (v11 >= 9)
        {
          sub_297801F64(*a1, ", ");
        }

        ++v8;
        v11 -= 8;
      }

      while (v8 != v10);
    }

    v12 = *a1;

    return sub_297801F64(v12, ")");
  }
}

void **sub_29788A1AC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29788A888(a2);
  sub_297801F64(*a1, (&off_29EE80700)[v4 - 1]);
  v5 = sub_297803A7C(a2 + 8);
  v6 = sub_29788A894(a2 + 8);
  if (v5 != v6)
  {
    v7 = v6;
    v8 = v6 - v5;
    do
    {
      sub_297885E10(a1, *v5);
      if (v8 >= 9)
      {
        sub_297801F64(*a1, ", ");
      }

      ++v5;
      v8 -= 8;
    }

    while (v5 != v7);
  }

  v9 = *a1;

  return sub_297801F64(v9, ")");
}

void **sub_29788A27C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_2977FD5B0(a2);
  v6 = sub_29788709C(v5);
  v8 = sub_297801FA8(v4, v6, v7);
  sub_297801F64(v8, "(");
  v9 = sub_297803A7C(a2 + 8);
  v10 = sub_29788A8E0(a2 + 8);
  if (v9 != v10)
  {
    v11 = v10;
    v12 = v10 - v9;
    do
    {
      sub_297885E10(a1, *v9);
      if (v12 >= 9)
      {
        sub_297801F64(*a1, ", ");
      }

      ++v9;
      v12 -= 8;
    }

    while (v9 != v11);
  }

  v13 = *a1;

  return sub_297801F64(v13, ")");
}

void **sub_29788A3B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == 1 && sub_29788A458(a2))
  {
    sub_297801F64(*a1, "(");
  }

  result = sub_297885E10(a1, a2);
  if (*(a1 + 12) == 1)
  {
    result = sub_29788A458(a2);
    if (result)
    {
      v5 = *a1;

      return sub_297801F64(v5, ")");
    }
  }

  return result;
}

uint64_t sub_29788A458(uint64_t a1)
{
  while (1)
  {
    v1 = a1;
    v2 = sub_29788A4DC(a1);
    if (!v2)
    {
      v2 = sub_29788A518(v1);
      if (!v2)
      {
        break;
      }
    }

    a1 = sub_2977FB7B8(v2);
  }

  v4 = v1;
  if (sub_29788A554(&v4) & 1) != 0 || (sub_29788A558(&v4) & 1) != 0 || (sub_29788A55C(&v4))
  {
    return 1;
  }

  else
  {
    return sub_29788A560(&v4);
  }
}

uint64_t sub_29788A4DC(uint64_t a1)
{
  v2 = a1;
  if (sub_29788A564(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29788A518(uint64_t a1)
{
  v2 = a1;
  if (sub_29788A5C4(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_29788A930(uint64_t *a1, void *a2)
{
  *a1 = sub_2978297B4(a2, a2);
  a1[1] = sub_29780BD00(a2);
  return a1;
}

uint64_t sub_29788A9A8(unsigned __int8 *a1)
{
  if (sub_29783DA5C(a1))
  {

    return sub_29788AA04(a1, v2);
  }

  else
  {

    return j_nullsub_1(a1, v2);
  }
}

uint64_t sub_29788AA04(void *a1, uint64_t a2)
{
  v2 = sub_29783D408(a1, a2);

  return nullsub_1(v2, v3);
}

BOOL sub_29788AA2C(uint64_t a1)
{
  v2 = sub_29788AA68(a1);

  return sub_29788DFD8(a1 + 176, v2);
}

uint64_t sub_29788AA68(uint64_t a1)
{
  v12[0] = sub_297886048(a1);
  v12[1] = v1;
  v2 = sub_2977FB720(v12);
  v3 = sub_2978130B8(v12);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = v3;
  while (1)
  {
    v5 = *v2;
    v6 = sub_2978862BC(*v2);
    v7 = sub_2978862C0(v5);
    if (v6 != v7)
    {
      break;
    }

LABEL_8:
    if (++v2 == v4)
    {
      return 0;
    }
  }

  v8 = v7;
  while (1)
  {
    v11 = *v6;
    if (sub_29788AB2C(&v11))
    {
      v9 = sub_29781BF50(v11);
      if (sub_29788AB30(v9))
      {
        return sub_29781BF50(v11);
      }
    }

    if (++v6 == v8)
    {
      goto LABEL_8;
    }
  }
}

BOOL sub_29788AD6C(uint64_t a1, uint64_t a2)
{
  if (!sub_29780A4F8(a1))
  {
    return *sub_29780A5FC(a1, a2) == a2;
  }

  v4 = *(a1 + 20);
  if (!v4)
  {
    return 0;
  }

  v5 = *a1;
  v6 = 8 * v4 - 8;
  do
  {
    v7 = *v5++;
    result = v7 == a2;
    v9 = v7 == a2 || v6 == 0;
    v6 -= 8;
  }

  while (!v9);
  return result;
}

uint64_t sub_29788ADE8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_2977FB720(*a1);
  result = sub_29788AB2C(v3);
  if ((result & 1) == 0)
  {
    v5 = sub_2977FB720(*a1);
    result = sub_29788AB98(v5);
    if ((result & 1) == 0)
    {
      v6 = sub_2977FB720(*a1);
      result = sub_29788AB9C(v6);
      if ((result & 1) == 0)
      {
        result = sub_297888A70(v2, 0);
      }
    }
  }

  if (**(a1 + 16) == 1)
  {
    v7 = *v2;

    return sub_297801F64(v7, "\n");
  }

  return result;
}

BOOL sub_29788AF3C(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_29788AF78(a1, v2);
}

BOOL sub_29788AF78(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29788B0B4(v6, a2);
  sub_29788B0B8(v6, a1);
  v3 = sub_29788B0BC(v6);
  sub_29788B0CC(v6);
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

BOOL sub_29788AFF8(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_29788B034(a1, v2);
}

BOOL sub_29788B034(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29788B0B4(v6, a2);
  sub_29788B0D0(v6, a1);
  v3 = sub_29788B0BC(v6);
  sub_29788B0CC(v6);
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

BOOL sub_29788B0D4(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  sub_29788B0B4(v5, a2);
  sub_29788B154(v5);
  v2 = sub_29788B0BC(v5);
  sub_29788B0CC(v5);
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

BOOL sub_29788B158(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29788B0B4(v6, a2);
  sub_29788B1D8(v6, a1);
  v3 = sub_29788B0BC(v6);
  sub_29788B0CC(v6);
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t sub_29788B1D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978862BC(a2);
  result = sub_2978862C0(a2);
  if (v4 != result)
  {
    v6 = result;
    do
    {
      v7 = *v4++;
      result = sub_29788B0B8(a1, v7);
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t sub_29788B238(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29788B2EC(v8, a1);
  sub_29788B2F0(v7, a1);
  sub_29788B2F4(v6, a1);
  sub_29788B2F8(a1, v8, v7, v6);
  sub_2978854E4(v6);
  sub_2978854E8(v7);
  sub_2978854EC(v8);
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_29788B32C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29788B34C();
  *(result + 24) = result;
  return result;
}

void *sub_29788B350(void *a1, void *a2)
{
  v4 = sub_29788B3A0(a1);
  *v4 = &unk_2A1E55828;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

void sub_29788B3C4()
{
  v0 = j_j_nullsub_1_1();

  j__free(v0);
}

uint64_t sub_29788B3EC(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(&v6, &v8);
  sub_29788B48C(v7, v2, &v6);
  v3 = sub_2977FB720(v7);
  sub_29788B34C(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

__n128 sub_29788B4A0(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a1 = a2;
  result = *a3;
  *(a1 + 8) = *a3;
  return result;
}

uint64_t *sub_29788B4D8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return sub_29788B4F0((result + 1), v1);
  }

  return result;
}

uint64_t sub_29788B544(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29788B564();
  *(result + 24) = result;
  return result;
}

void *sub_29788B568(void *a1, void *a2)
{
  v4 = sub_29788B5B8(a1);
  *v4 = &unk_2A1E558B8;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

void sub_29788B5DC()
{
  v0 = j_j_nullsub_1_2();

  j__free(v0);
}

uint64_t sub_29788B604(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(&v6, &v8);
  sub_29788B48C(v7, v2, &v6);
  v3 = sub_2977FB720(v7);
  sub_29788B564(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

uint64_t sub_29788B6B4(uint64_t *a1, uint64_t a2)
{
  result = sub_29788B0BC(*a1);
  if (result)
  {

    return sub_29788B700(a2);
  }

  return result;
}

uint64_t sub_29788B75C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29788B77C();
  *(result + 24) = result;
  return result;
}

void *sub_29788B780(void *a1, void *a2)
{
  v4 = sub_29788B7D0(a1);
  *v4 = &unk_2A1E55948;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

void sub_29788B7F4()
{
  v0 = j_j_nullsub_1_3();

  j__free(v0);
}

uint64_t sub_29788B81C(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(&v6, &v8);
  sub_29788B48C(v7, v2, &v6);
  v3 = sub_2977FB720(v7);
  sub_29788B77C(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

unint64_t sub_29788B8CC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_29788B0BC(*a1);
  if (result)
  {

    return sub_29788B920(v3, a2);
  }

  return result;
}

unint64_t sub_29788B920(uint64_t a1, uint64_t a2)
{
  v4 = sub_29788A4DC(a2);
  if (v4)
  {
    v5 = v4;
    v6 = sub_29788BC5C(v4);
    v7 = sub_2977FB7B8(v5);
    if (v6 == sub_29788BC5C(v7))
    {
      sub_2977FB7B4(&v42, "precision convert to same precision");
      sub_29788BC68(a1, v42, v43, v5);
    }
  }

  v8 = sub_29788BCF4(a2);
  if (v8)
  {
    v9 = v8;
    v10 = sub_2977FB7B8(v8);
    if (sub_29788BD30(v10) != 1)
    {
      sub_2977FB7B4(&v42, "non-lvalue in assignment node");
      sub_29788BC68(a1, v42, v43, v9);
    }

    if (!sub_29788A7A0(v9))
    {
      sub_2977FB7B4(&v42, "unspecified assignment operator");
      sub_29788BC68(a1, v42, v43, v9);
    }

    v11 = sub_29788A7A0(v9);
    v12 = sub_2977FB7B8(v9);
    if (v11 == 4)
    {
      v13 = sub_2977FD5B0(v9);
      sub_29788BD3C(a1, v9, v12, v13);
    }

    else
    {
      sub_29788BD8C(a1, v9, v12);
      v14 = sub_29788BEA4(v9);
      v15 = sub_2977FD5B0(v9);
      sub_29788BE28(a1, v14, v15);
    }
  }

  v16 = sub_29788BEB0(a2);
  if (v16)
  {
    v17 = v16;
    if (sub_29788BEEC(v16))
    {
      v18 = sub_2977FD5B0(v17);
      v19 = sub_29783CFFC(v17);
      sub_29788BD3C(a1, v17, v18, v19);
    }

    if (!sub_29788A794(v17))
    {
      sub_2977FB7B4(&v42, "No opcode");
      sub_29788BC68(a1, v42, v43, v17);
    }
  }

  v20 = sub_29788BF1C(a2);
  if (v20)
  {
    v21 = v20;
    v22 = sub_2977FD5B0(v20);
    sub_29788BD8C(a1, v21, v22);
    if (!sub_29788A44C(v21))
    {
      sub_2977FB7B4(&v42, "No opcode");
      sub_29788BC68(a1, v42, v43, v21);
    }
  }

  v23 = sub_29788BF58(a2);
  if (v23)
  {
    v24 = v23;
    v25 = sub_29783CFFC(v23);
    v26 = sub_297805510(v24);
    sub_29788BD3C(a1, v24, v25, v26);
  }

  v27 = sub_29788BF94(a2);
  if (v27)
  {
    v28 = v27;
    v29 = sub_297803A7C(v27 + 8);
    v30 = sub_29788A7C4(v28 + 8);
    if (v29 != v30)
    {
      v31 = v30;
      do
      {
        v32 = *v29++;
        sub_29788BD8C(a1, v28, v32);
      }

      while (v29 != v31);
    }
  }

  v33 = sub_29788BFD0(a2);
  if (v33)
  {
    v34 = v33;
    v35 = sub_2977FB7B8(v33);
    if ((sub_297887D40(v35) & 1) == 0)
    {
      sub_2977FB7B4(&v42, "variable marked unused in AST");
      v36 = sub_2977FB7B8(v34);
      sub_29788C00C(a1, v42, v43, v36);
    }
  }

  v37 = sub_29788C098(a2);
  if (v37)
  {
    v38 = v37;
    v39 = sub_2977FD5B0(v37);
    if ((sub_297887D40(v39) & 1) == 0)
    {
      sub_2977FB7B4(&v42, "function marked unused in AST");
      v40 = sub_2977FD5B0(v38);
      sub_29788C00C(a1, v42, v43, v40);
    }
  }

  result = sub_29788B0BC(a1);
  if (result)
  {
    return sub_29788BEEC(a2);
  }

  return result;
}

void **sub_29788BC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 128) = 1;
  v8 = sub_297801F64(*(a1 + 136), " * Verify error: ");
  sub_297801FA8(v8, a2, a3);
  sub_297801F64(*(a1 + 136), "\n  ");
  sub_297885D60(a4);
  v9 = *(a1 + 136);

  return sub_297801F64(v9, "\n");
}

uint64_t sub_29788BCF4(uint64_t a1)
{
  v2 = a1;
  if (sub_29788A560(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

void **sub_29788BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29788BD8C(a1, a2, a3);

  return sub_29788BD8C(a1, a2, a4);
}

void **sub_29788BD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29788C0D4(a1, a2);
  sub_29788C0D4(a1, a3);
  result = sub_29788BEEC(a2);
  if (result)
  {
    result = sub_29788BEEC(a3);
    if (result)
    {
      v7 = sub_29788BC5C(a2);
      result = sub_29788BC5C(a3);
      if (v7 != result)
      {
        sub_2977FB7B4(v8, "precision mismatch");
        return sub_29788BC68(a1, v8[0], v8[1], a2);
      }
    }
  }

  return result;
}

void **sub_29788BE28(uint64_t a1, int a2, uint64_t a3)
{
  sub_29788C0D4(a1, a3);
  result = sub_29788BEEC(a3);
  if (result)
  {
    result = sub_29788BC5C(a3);
    if (result != a2)
    {
      sub_2977FB7B4(v7, "precision mismatch");
      return sub_29788BC68(a1, v7[0], v7[1], a3);
    }
  }

  return result;
}

uint64_t sub_29788BEB0(uint64_t a1)
{
  v2 = a1;
  if (sub_29788A554(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29788BEEC(uint64_t a1)
{
  v3 = sub_29788C170(a1);
  v1 = sub_2977FB720(&v3);
  return sub_2978B5368(v1);
}

uint64_t sub_29788BF1C(uint64_t a1)
{
  v2 = a1;
  if (sub_29788A558(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29788BF58(uint64_t a1)
{
  v2 = a1;
  if (sub_29788A55C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29788BF94(uint64_t a1)
{
  v2 = a1;
  if (sub_29788C6B0(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29788BFD0(uint64_t a1)
{
  v2 = a1;
  if (sub_29788C710(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

void **sub_29788C00C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  *(a1 + 128) = 1;
  v8 = sub_297801F64(*(a1 + 136), " * Verify error: ");
  sub_297801FA8(v8, a2, a3);
  sub_297801F64(*(a1 + 136), "\n  ");
  sub_297885C68(a4);
  v9 = *(a1 + 136);

  return sub_297801F64(v9, "\n");
}

uint64_t sub_29788C098(uint64_t a1)
{
  v2 = a1;
  if (sub_29788C770(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

void **sub_29788C0D4(uint64_t a1, uint64_t a2)
{
  if ((sub_29788BEEC(a2) & 1) == 0 && sub_29788BC5C(a2))
  {
    sub_2977FB7B4(&v5, "precision set on invalid expression");
    sub_29788BC68(a1, v5, v6, a2);
  }

  result = sub_29788BEEC(a2);
  if (result)
  {
    result = sub_29788BC5C(a2);
    if (!result)
    {
      sub_2977FB7B4(&v5, "precision not set on expression");
      return sub_29788BC68(a1, v5, v6, a2);
    }
  }

  return result;
}

uint64_t sub_29788C170(uint64_t a1)
{
  result = sub_29787E544(a1);
  switch(result)
  {
    case 0:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 1:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 2:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 3:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 4:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 5:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 6:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 7:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 8:
      v7 = sub_29781BF50(a1);

      return sub_29788C4FC(v7);
    case 9:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 10:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 11:
      v4 = sub_29781BF50(a1);

      return sub_29788C504(v4);
    case 12:
      v5 = sub_29781BF50(a1);

      goto LABEL_19;
    case 13:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 14:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 15:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 16:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 17:
      v3 = sub_29781BF50(a1);

      return sub_2977FB7B8(v3);
    case 18:
      v5 = sub_29781BF50(a1);

      goto LABEL_19;
    case 19:
      v5 = sub_29781BF50(a1);

      goto LABEL_19;
    case 20:
      v6 = sub_29781BF50(a1);

      return sub_29788C50C(v6);
    case 21:
      v7 = sub_29781BF50(a1);

      return sub_29788C4FC(v7);
    case 22:
      v5 = sub_29781BF50(a1);

LABEL_19:
      result = sub_2977FD5B0(v5);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_29788C514(unsigned __int8 *a1)
{
  while (1)
  {
    v1 = a1;
    result = sub_29786AC48(a1);
    if (result > 4)
    {
      break;
    }

    if (result < 2)
    {
      if (result)
      {
        if (result != 1)
        {
          return result;
        }

        v3 = sub_29781BF50(v1);
      }

      else
      {
        v3 = sub_29781BF50(v1);
      }

      return sub_2977FD5B0(v3);
    }

LABEL_5:
    a1 = sub_29781BF50(v1);
  }

  if (result <= 8)
  {
    goto LABEL_5;
  }

  if (result == 9)
  {
    v4 = sub_29781BF50(v1);
  }

  else
  {
    if (result != 10)
    {
      return result;
    }

    v4 = sub_29781BF50(v1);
  }

  return sub_29788C680(v4);
}

uint64_t sub_29788C7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  v7 = sub_29788C874();
  sub_29788C878(v7 + 32, a3);
  sub_29788C87C(a1 + 64, a4);
  sub_29788C87C(v10, a1 + 64);
  sub_29788C880(a1 + 96, v10);
  sub_2978854E4(v10);
  v8 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_29788C88C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v5 = nullsub_1(a1, a2);
      *(a1 + 24) = v5;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v5);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29788C938(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v5 = nullsub_1(a1, a2);
      *(a1 + 24) = v5;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v5);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29788C9E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v5 = nullsub_1(a1, a2);
      *(a1 + 24) = v5;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v5);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29788CA90(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_29786AC48(a2);
  if (v4 <= 4)
  {
    if (v4 <= 1)
    {
      if (v4)
      {
        v5 = a1;

        return sub_29788CCEC(v5);
      }

      return sub_29788CC88(a1, a2);
    }

    else
    {
      if (v4 != 2)
      {
        if (v4 == 3)
        {

          sub_29788CD94(a1, a2);
        }

        v5 = a1;

        return sub_29788CCEC(v5);
      }

      return sub_29788CCF0(a1, a2);
    }
  }

  else
  {
    if (v4 <= 7)
    {
      if (v4 == 5)
      {
        v5 = a1;
      }

      else if (v4 == 6)
      {
        v5 = a1;
      }

      else
      {
        v5 = a1;
      }

      return sub_29788CCEC(v5);
    }

    if (v4 == 8)
    {
      v5 = a1;

      return sub_29788CCEC(v5);
    }

    if (v4 == 9)
    {

      return sub_29788CD98(a1, a2);
    }

    else
    {

      return sub_29788CE38(a1, a2);
    }
  }
}

uint64_t sub_29788CC88(uint64_t a1, uint64_t a2)
{
  result = sub_29788CED8(a1);
  if (result)
  {
    result = sub_29783CFFC(a2);
    if (result)
    {
      sub_29783CFFC(a2);

      return sub_29788CF00(a1);
    }
  }

  return result;
}

uint64_t sub_29788CCF0(uint64_t a1, uint64_t a2)
{
  result = sub_29788CED8(a1);
  if (result)
  {
    v5 = sub_297803A7C(a2 + 16);
    v6 = sub_297888A34(a2 + 16);
    if (v5 != v6)
    {
      v7 = v6;
      do
      {
        v8 = *v5++;
        sub_29788CA8C(a1, v8);
      }

      while (v5 != v7);
    }

    result = sub_297888A68(a2);
    if (result)
    {
      v9 = sub_297888A68(a2);

      return sub_29788D71C(a1, v9);
    }
  }

  return result;
}

uint64_t sub_29788CD98(uint64_t a1, uint64_t a2)
{
  result = sub_29788CED8(a1);
  if (result)
  {
    v5 = sub_297803A7C(a2 + 16);
    result = sub_297888490(a2 + 16);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        v7 = *v5;
        v8 = sub_2978862BC(*v5);
        result = sub_2978862C0(v7);
        for (i = result; v8 != i; result = sub_29788CA8C(a1, v10))
        {
          v10 = *v8++;
        }

        ++v5;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_29788CE38(uint64_t a1, uint64_t a2)
{
  result = sub_29788CED8(a1);
  if (result)
  {
    v5 = sub_297803A7C(a2 + 16);
    result = sub_2978885E0(a2 + 16);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        v7 = *v5;
        v8 = sub_2978862BC(*v5);
        result = sub_2978862C0(v7);
        for (i = result; v8 != i; result = sub_29788CA8C(a1, v10))
        {
          v10 = *v8++;
        }

        ++v5;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_29788CF08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    sub_29788CF50();
    return sub_29788CF50();
  }
}

uint64_t sub_29788CF6C(uint64_t a1, uint64_t a2)
{
  result = sub_29787E544(a2);
  switch(result)
  {
    case 0:
      v5 = a1;

      return sub_29788D300(v5);
    case 1:
      v5 = a1;

      return sub_29788D300(v5);
    case 2:
      v5 = a1;

      return sub_29788D300(v5);
    case 3:
      v5 = a1;

      return sub_29788D300(v5);
    case 4:
      v5 = a1;

      return sub_29788D300(v5);
    case 5:
      v8 = a1;
      v9 = a2;

      return sub_29788D304(v8, v9);
    case 6:
      v6 = a1;
      v7 = a2;

      return sub_29788D35C(v6, v7);
    case 7:

      return sub_29788D3C8(a1, a2);
    case 8:

      return sub_29788D448(a1, a2);
    case 9:
      v5 = a1;

      return sub_29788D300(v5);
    case 10:
      v5 = a1;

      return sub_29788D300(v5);
    case 11:
      v5 = a1;

      return sub_29788D300(v5);
    case 12:

      return sub_29788D4B4(a1, a2);
    case 13:
      v8 = a1;
      v9 = a2;

      return sub_29788D304(v8, v9);
    case 14:
      v8 = a1;
      v9 = a2;

      return sub_29788D304(v8, v9);
    case 15:
      v8 = a1;
      v9 = a2;

      return sub_29788D304(v8, v9);
    case 16:
      v6 = a1;
      v7 = a2;

      return sub_29788D35C(v6, v7);
    case 17:
      v8 = a1;
      v9 = a2;

      return sub_29788D304(v8, v9);
    case 18:

      return sub_29788D51C(a1, a2);
    case 19:

      return sub_29788D584(a1, a2);
    case 20:

      return sub_29788D5EC(a1, a2);
    case 21:
      v10 = a1;
      v11 = a2;

      goto LABEL_49;
    case 22:
      v10 = a1;
      v11 = a2;

LABEL_49:
      result = sub_29788D654(v10, v11);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_29788D304(uint64_t a1, uint64_t a2)
{
  result = sub_29788D6AC(a1);
  if (result)
  {
    sub_2977FD5B0(a2);

    return sub_29788CF68(a1);
  }

  return result;
}

uint64_t sub_29788D35C(uint64_t a1, uint64_t a2)
{
  result = sub_29788D6AC(a1);
  if (result)
  {
    sub_2977FD5B0(a2);
    sub_29788CF68(a1);
    sub_29783CFFC(a2);

    return sub_29788CF68(a1);
  }

  return result;
}

uint64_t sub_29788D3C8(uint64_t a1, uint64_t a2)
{
  result = sub_29788D6AC(a1);
  if (result)
  {
    sub_2977FD5B0(a2);
    sub_29788CF68(a1);
    sub_29783CFFC(a2);
    sub_29788CF68(a1);
    sub_297805510(a2);

    return sub_29788CF68(a1);
  }

  return result;
}

uint64_t sub_29788D448(uint64_t a1, uint64_t a2)
{
  result = sub_29788D6AC(a1);
  if (result)
  {
    sub_2977FB7B8(a2);
    sub_29788CF68(a1);
    sub_2977FD5B0(a2);

    return sub_29788CF68(a1);
  }

  return result;
}

uint64_t sub_29788D4B4(uint64_t a1, uint64_t a2)
{
  result = sub_29788D6AC(a1);
  if (result)
  {
    v5 = sub_297803A7C(a2 + 8);
    result = sub_29788A7C4(a2 + 8);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        v7 = *v5++;
        result = sub_29788CF68(a1);
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_29788D51C(uint64_t a1, uint64_t a2)
{
  result = sub_29788D6AC(a1);
  if (result)
  {
    v5 = sub_297803A7C(a2 + 8);
    result = sub_29788A840(a2 + 8);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        v7 = *v5++;
        result = sub_29788CF68(a1);
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_29788D584(uint64_t a1, uint64_t a2)
{
  result = sub_29788D6AC(a1);
  if (result)
  {
    v5 = sub_297803A7C(a2 + 8);
    result = sub_29788A894(a2 + 8);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        v7 = *v5++;
        result = sub_29788CF68(a1);
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_29788D5EC(uint64_t a1, uint64_t a2)
{
  result = sub_29788D6AC(a1);
  if (result)
  {
    v5 = sub_297803A7C(a2 + 8);
    result = sub_29788A8E0(a2 + 8);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        v7 = *v5++;
        result = sub_29788CF68(a1);
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_29788D654(uint64_t a1, uint64_t a2)
{
  result = sub_29788D6AC(a1);
  if (result)
  {
    sub_2977FB7B8(a2);

    return sub_29788CF68(a1);
  }

  return result;
}

uint64_t sub_29788D6D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = sub_29788CF50();
    return sub_29788D71C(v5, v6);
  }
}

uint64_t sub_29788D720(uint64_t a1, unsigned __int8 *a2)
{
  result = sub_29786AC48(a2);
  switch(result)
  {
    case 0:

      return sub_29788D994(a1, a2);
    case 1:
      v5 = a1;

      goto LABEL_10;
    case 2:

      return sub_29788DA08(a1, a2);
    case 3:

      return sub_29788DA74(a1, a2);
    case 4:

      return sub_29788DB10(a1, a2);
    case 5:

      return sub_29788DB6C(a1, a2);
    case 6:
      v5 = a1;

      goto LABEL_10;
    case 7:

      return sub_29788DBC8(a1, a2);
    case 8:

      return sub_29788DC90(a1, a2);
    case 9:

      return sub_29788DD18(a1, a2);
    case 10:
      v5 = a1;

      goto LABEL_10;
    case 11:
      v5 = a1;

      goto LABEL_10;
    case 12:
      v5 = a1;

LABEL_10:
      result = sub_29788DA00(v5);
      break;
    case 13:

      result = sub_29788DDA0(a1, a2);
      break;
    case 14:

      result = sub_29788DE08(a1, a2);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_29788D994(uint64_t a1, uint64_t a2)
{
  result = sub_29788DE64(a1 + 32);
  if (result)
  {
    v5 = sub_297803A7C(a2 + 8);
    result = sub_297889524(a2 + 8);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        v7 = *v5++;
        result = sub_29788D71C(a1, v7);
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_29788DA08(uint64_t a1, uint64_t a2)
{
  result = sub_29788DE64(a1 + 32);
  if (result)
  {
    v5 = sub_2978862BC(a2 + 8);
    result = sub_2978862C0(a2 + 8);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        v7 = *v5++;
        result = sub_29788CA8C(a1, v7);
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_29788DA74(uint64_t a1, uint64_t a2)
{
  result = sub_29788DE64(a1 + 32);
  if (result)
  {
    if (sub_2977FB7B8(a2))
    {
      sub_2977FB7B8(a2);
      sub_29788CF00(a1);
    }

    v5 = sub_2977FD5B0(a2);
    sub_29788D71C(a1, v5);
    result = sub_29783CFFC(a2);
    if (result)
    {
      v6 = sub_29783CFFC(a2);

      return sub_29788D71C(a1, v6);
    }
  }

  return result;
}

uint64_t sub_29788DB10(uint64_t a1, uint64_t a2)
{
  result = sub_29788DE64(a1 + 32);
  if (result)
  {
    v5 = sub_2977FD5B0(a2);

    return sub_29788D71C(a1, v5);
  }

  return result;
}

uint64_t sub_29788DB6C(uint64_t a1, uint64_t a2)
{
  result = sub_29788DE64(a1 + 32);
  if (result)
  {
    sub_29783CFFC(a2);

    return sub_29788CF00(a1);
  }

  return result;
}

uint64_t sub_29788DBC8(uint64_t a1, uint64_t a2)
{
  result = sub_29788DE64(a1 + 32);
  if (result)
  {
    if (sub_2977FD5B0(a2))
    {
      v5 = sub_2977FD5B0(a2);
      sub_29788D71C(a1, v5);
    }

    if (sub_2977FB7B8(a2))
    {
      v6 = sub_2977FB7B8(a2);
      sub_29788D71C(a1, v6);
    }

    if (sub_29783CFFC(a2))
    {
      sub_29783CFFC(a2);
      sub_29788CF00(a1);
    }

    result = sub_297805510(a2);
    if (result)
    {
      v7 = sub_297805510(a2);

      return sub_29788D71C(a1, v7);
    }
  }

  return result;
}

uint64_t sub_29788DC90(uint64_t a1, uint64_t a2)
{
  result = sub_29788DE64(a1 + 32);
  if (result)
  {
    if (sub_2977FB7B8(a2))
    {
      v5 = sub_2977FB7B8(a2);
      sub_29788D71C(a1, v5);
    }

    result = sub_2977FD5B0(a2);
    if (result)
    {
      v6 = sub_2977FD5B0(a2);

      return sub_29788D71C(a1, v6);
    }
  }

  return result;
}

uint64_t sub_29788DD18(uint64_t a1, uint64_t a2)
{
  result = sub_29788DE64(a1 + 32);
  if (result)
  {
    if (sub_2977FB7B8(a2))
    {
      v5 = sub_2977FB7B8(a2);
      sub_29788D71C(a1, v5);
    }

    result = sub_2977FD5B0(a2);
    if (result)
    {
      sub_2977FD5B0(a2);

      return sub_29788CF00(a1);
    }
  }

  return result;
}

uint64_t sub_29788DDA0(uint64_t a1, uint64_t a2)
{
  result = sub_29788DE64(a1 + 32);
  if (result)
  {
    result = sub_2977FB7B8(a2);
    if (result)
    {
      sub_2977FB7B8(a2);

      return sub_29788CF00(a1);
    }
  }

  return result;
}

uint64_t sub_29788DE08(uint64_t a1, uint64_t a2)
{
  result = sub_29788DE64(a1 + 32);
  if (result)
  {
    sub_2977FB7B8(a2);

    return sub_29788CF00(a1);
  }

  return result;
}

uint64_t sub_29788DE8C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = sub_29788CF50();
    return sub_29788DED4(v5);
  }
}

void *sub_29788DED8(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  v3 = (a1 + 1);
  sub_29788DFB8(v8, sub_29788DFB0);
  sub_29788DFC4(v7, sub_29788DFBC);
  sub_29788DFC8(v6, a1);
  sub_29788DFCC(v3, v8, v7, v6);
  sub_2978854E4(v6);
  sub_2978854E8(v7);
  sub_2978854EC(v8);
  sub_29788DFD0(a1 + 40, 82, 0);
  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

BOOL sub_29788DFE0(void *a1, uint64_t a2)
{
  sub_29788CA8C(a1 + 23, a2);

  return sub_29788EF6C(a1);
}

uint64_t sub_29788E01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v8 = sub_29788E11C();
  sub_29788E120(v8 + 88);
  v15 = a1;
  sub_29788C874(&v16, a2);
  sub_29788E124(v17, &v15);
  sub_29788C878(v14, a3);
  v11 = a1;
  sub_29788C87C(&v12, a4);
  sub_29788E128(v13, &v11);
  sub_29788B2F8(a1 + 184, v17, v14, v13);
  sub_2978854E4(v13);
  sub_29788E12C(&v11);
  sub_2978854E8(v14);
  sub_2978854EC(v17);
  sub_29788E130(&v15);
  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_29788E194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    v6 = j_j_nullsub_1(&v12, a3);
    v7 = sub_297849F34(v6, 1uLL);
    sub_2977FB7C0(&v10, &v12, 1);
    sub_29788B48C(v11, v7, &v10);
    v8 = sub_2977FB720(v11);
    sub_29788E240(v8, a2, &v10);
    *(a1 + 24) = sub_2978058AC(v11);
    sub_29788E244(v11);
  }

  return a1;
}

void *sub_29788E248(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29788B3A0(a1);
  *v6 = &unk_2A1E559D8;
  sub_29788E2A8(v6 + 1, a2, a3);
  return a1;
}

void sub_29788E2B0()
{
  v0 = sub_29788E2AC();

  j__free(v0);
}

uint64_t sub_29788E2D8(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  v4 = j_j_nullsub_1(&v13, v3);
  v5 = sub_297849F34(v4, 1uLL);
  sub_2977FB7C0(&v11, &v13, 1);
  sub_29788B48C(v12, v5, &v11);
  v6 = sub_2977FB720(v12);
  v8 = nullsub_1(a1 + 8, v7);
  j_j_nullsub_1(&v11, &v13);
  sub_29788E570(v6, v8, &v11);
  v9 = sub_2978058AC(v12);
  sub_29788E244(v12);
  return v9;
}

uint64_t sub_29788E38C(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(a1 + 8, a2);
  v6 = nullsub_1(a1 + 8, v5);

  return sub_29788E570(a2, v4, v6);
}

uint64_t sub_29788E3F0(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  j_j_nullsub_1(&v5, v3);
  sub_29788E56C(a1 + 8);
  return sub_297809D24(&v5, a1, 1);
}

void *sub_29788E454(void *a1, void *a2)
{
  *a1 = *a2;
  sub_29788E484(a1 + 1, a2 + 1);
  return a1;
}

uint64_t sub_29788E490(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v5 = nullsub_1(a1, a2);
      *(a1 + 24) = v5;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v5);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29788E514(void *a1)
{
  *a1 = &unk_2A1E559D8;
  sub_29788E568(a1 + 1);

  return nullsub_1(a1, v2);
}

void *sub_29788E574(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29788B3A0(a1);
  *v6 = &unk_2A1E559D8;
  sub_29788E5D4(v6 + 1, a2, a3);
  return a1;
}

void *sub_29788E5E0(void *a1, void *a2)
{
  *a1 = *a2;
  sub_29788C874(a1 + 1, a2 + 1);
  return a1;
}

uint64_t *sub_29788E63C(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_29788E658(result + 1, v3);
  }

  return result;
}

uint64_t sub_29788E678(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (sub_29788AD38(*a1 + 88, a2))
  {
    return 0;
  }

  sub_29788E6F8(v4, a2);
  sub_29783DAC8(v4 + 88, a2);

  return sub_29788CED8((a1 + 1));
}

uint64_t sub_29788E6F8(uint64_t a1, unsigned __int8 *a2)
{
  result = sub_29788E754(a2);
  if (result)
  {
    v5 = sub_29788C514(a2);

    return sub_29788E784(a1, v5);
  }

  return result;
}

uint64_t sub_29788E784(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v3 = sub_2977FB720(&v10);
  v9 = sub_2978B5074(v3);
  v4 = sub_2977FB720(&v9);
  result = sub_297887DB4(v4);
  if (result || (v6 = sub_2977FB720(&v10), v9 = sub_2978B5074(v6), v7 = sub_2977FB720(&v9), (result = sub_297887E3C(v7)) != 0))
  {
    v8 = sub_2977FB7B8(result);
    return sub_29788E808(a1, v8);
  }

  return result;
}

uint64_t sub_29788E808(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  result = sub_29788AD38(a1 + 88, a2);
  if (!result)
  {
    return sub_2978040A4(a1, &v4);
  }

  return result;
}

uint64_t sub_29788E898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    v6 = j_j_nullsub_1(&v12, a3);
    v7 = sub_297849F34(v6, 1uLL);
    sub_2977FB7C0(&v10, &v12, 1);
    sub_29788B48C(v11, v7, &v10);
    v8 = sub_2977FB720(v11);
    sub_29788E944(v8, a2, &v10);
    *(a1 + 24) = sub_2978058AC(v11);
    sub_29788E244(v11);
  }

  return a1;
}

void *sub_29788E948(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29788B7D0(a1);
  *v6 = &unk_2A1E55A20;
  sub_29788E9A8(v6 + 1, a2, a3);
  return a1;
}

void sub_29788E9B0()
{
  v0 = sub_29788E9AC();

  j__free(v0);
}

uint64_t sub_29788E9D8(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  v4 = j_j_nullsub_1(&v13, v3);
  v5 = sub_297849F34(v4, 1uLL);
  sub_2977FB7C0(&v11, &v13, 1);
  sub_29788B48C(v12, v5, &v11);
  v6 = sub_2977FB720(v12);
  v8 = nullsub_1(a1 + 8, v7);
  j_j_nullsub_1(&v11, &v13);
  sub_29788EC70(v6, v8, &v11);
  v9 = sub_2978058AC(v12);
  sub_29788E244(v12);
  return v9;
}

uint64_t sub_29788EA8C(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(a1 + 8, a2);
  v6 = nullsub_1(a1 + 8, v5);

  return sub_29788EC70(a2, v4, v6);
}

uint64_t sub_29788EAF0(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  j_j_nullsub_1(&v5, v3);
  sub_29788EC6C(a1 + 8);
  return sub_297809D24(&v5, a1, 1);
}

void *sub_29788EB54(void *a1, void *a2)
{
  *a1 = *a2;
  sub_29788EB84(a1 + 1, a2 + 1);
  return a1;
}

uint64_t sub_29788EB90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v5 = nullsub_1(a1, a2);
      *(a1 + 24) = v5;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v5);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_29788EC14(void *a1)
{
  *a1 = &unk_2A1E55A20;
  sub_29788EC68(a1 + 1);

  return nullsub_1(a1, v2);
}

void *sub_29788EC74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29788B7D0(a1);
  *v6 = &unk_2A1E55A20;
  sub_29788ECD4(v6 + 1, a2, a3);
  return a1;
}

void *sub_29788ECE0(void *a1, void *a2)
{
  *a1 = *a2;
  sub_29788C87C(a1 + 1, a2 + 1);
  return a1;
}

uint64_t sub_29788ED24(uint64_t *a1, uint64_t a2)
{
  v2 = (a1 + 1);
  sub_29788ED68(*a1, a2);

  return sub_29788D6AC(v2);
}

uint64_t sub_29788ED68(uint64_t a1, uint64_t a2)
{
  v4 = sub_29788C170(a2);
  sub_29788E784(a1, v4);
  v5 = sub_29788BFD0(a2);
  if (v5)
  {
    v6 = sub_2977FB7B8(v5);
  }

  else
  {
    result = sub_29788C098(a2);
    if (!result)
    {
      return result;
    }

    v6 = sub_2977FD5B0(result);
  }

  return sub_29788E808(a1, v6);
}

uint64_t sub_29788EE40(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = a2;
  v5 = sub_29788EEB0(a1, a2);
  *(a1 + 12) = v5;
  v6 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
  *a1 = v6;
  sub_29788EEBC(a1, v6, *(a1 + 12), a3);
  if (a3)
  {
    sub_29788EECC(a1);
  }

  return a1;
}

uint64_t sub_29788EED4(uint64_t a1, int a2)
{
  result = sub_29788EEB0(a1, *(a1 + 8));
  v5 = result;
  v6 = *(a1 + 12);
  if (v6 > result)
  {
    result = sub_29788EEBC(a1, (*a1 + 8 * result), v6 - result, a2);
  }

  if ((*(a1 + 8) & 0x3F) != 0)
  {
    v7 = -1 << (*(a1 + 8) & 0x3F);
    if (a2)
    {
      v8 = *(*a1 + 8 * (v5 - 1)) | v7;
    }

    else
    {
      v8 = *(*a1 + 8 * (v5 - 1)) & ~v7;
    }

    *(*a1 + 8 * (v5 - 1)) = v8;
  }

  return result;
}

BOOL sub_29788EF6C(void *a1)
{
  for (result = sub_297806904(a1); !result; result = sub_297806904(a1))
  {
    v3 = sub_29786F068(a1);
    sub_29788CA8C(a1 + 23, v3);
  }

  return result;
}

uint64_t sub_29788F024(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  if (sub_29788F09C(*a2))
  {
    j_j_nullsub_1(&v8, a3);
    j_j_nullsub_1(&v7, &v8);
    sub_29788F0A8(a1, a2, &v7);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_29788F0AC(void *a1, void *a2)
{
  v4 = sub_29788B3A0(a1);
  *v4 = &unk_2A1E55A68;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

uint64_t sub_29788F10C(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  v4 = j_j_nullsub_1(&v13, v3);
  v5 = sub_29780C3B4(v4, 1uLL);
  sub_2977FB7C0(&v11, &v13, 1);
  sub_29788B48C(v12, v5, &v11);
  v6 = sub_2977FB720(v12);
  v8 = nullsub_1(a1 + 8, v7);
  j_j_nullsub_1(&v11, &v13);
  sub_29788F0A8(v6, v8, &v11);
  v9 = sub_2978058AC(v12);
  sub_29788E244(v12);
  return v9;
}

uint64_t sub_29788F1C0(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(a1 + 8, a2);
  v6 = nullsub_1(a1 + 8, v5);

  return sub_29788F0A8(a2, v4, v6);
}

uint64_t sub_29788F224(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  j_j_nullsub_1(&v6, v3);
  nullsub_1(a1 + 8, v4);
  return sub_297809D24(&v6, a1, 1);
}

uint64_t sub_29788F308(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  if (sub_29788F09C(*a2))
  {
    j_j_nullsub_1(&v8, a3);
    j_j_nullsub_1(&v7, &v8);
    sub_29788F380(a1, a2, &v7);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_29788F384(void *a1, void *a2)
{
  v4 = sub_29788B5B8(a1);
  *v4 = &unk_2A1E55AB0;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

uint64_t sub_29788F3E4(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  v4 = j_j_nullsub_1(&v13, v3);
  v5 = sub_29780C3B4(v4, 1uLL);
  sub_2977FB7C0(&v11, &v13, 1);
  sub_29788B48C(v12, v5, &v11);
  v6 = sub_2977FB720(v12);
  v8 = nullsub_1(a1 + 8, v7);
  j_j_nullsub_1(&v11, &v13);
  sub_29788F380(v6, v8, &v11);
  v9 = sub_2978058AC(v12);
  sub_29788E244(v12);
  return v9;
}

uint64_t sub_29788F498(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(a1 + 8, a2);
  v6 = nullsub_1(a1 + 8, v5);

  return sub_29788F380(a2, v4, v6);
}

uint64_t sub_29788F4FC(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  j_j_nullsub_1(&v6, v3);
  nullsub_1(a1 + 8, v4);
  return sub_297809D24(&v6, a1, 1);
}

uint64_t sub_29788F588(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29788F5A8();
  *(result + 24) = result;
  return result;
}

void *sub_29788F5AC(void *a1, void *a2)
{
  v4 = sub_29788B7D0(a1);
  *v4 = &unk_2A1E55AF8;
  sub_297809B4C(v4 + 1, a2);
  return a1;
}

void sub_29788F600()
{
  v0 = j_j_nullsub_1_4();

  j__free(v0);
}

uint64_t sub_29788F628(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(&v6, &v8);
  sub_29788B48C(v7, v2, &v6);
  v3 = sub_2977FB720(v7);
  sub_29788F5A8(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

void *sub_29788F6F0(uint64_t *a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_29788F794(a2);
  if (v4)
  {
    v5 = *a1;
    v6 = sub_29788A888(v4);
    v7 = sub_29788F7DC(v5, v6);
  }

  else
  {
    v8 = sub_29788F804(a2);
    if (v8)
    {
      v9 = *a1;
      v10 = sub_29788A7AC(v8);
      v7 = sub_29788F840(v9, v10);
    }

    else
    {
      result = sub_29788F868(a2);
      if (!result)
      {
        return result;
      }

      v12 = *a1;
      v13 = sub_29788A7AC(result);
      v7 = sub_29788F8A4(v12, v13);
    }
  }

  return sub_29788F7D0(&v14, v7);
}

uint64_t sub_29788F794(uint64_t a1)
{
  v2 = a1;
  if (sub_29788F8CC(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29788F7DC(uint64_t a1, int a2)
{
  v2 = sub_29788FA40(a1, a2);

  return sub_29788F94C(v2);
}

uint64_t sub_29788F804(uint64_t a1)
{
  v2 = a1;
  if (sub_29788F958(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29788F840(uint64_t a1, int a2)
{
  v2 = sub_29788FA50(a1, a2);

  return sub_29788F94C(v2);
}

uint64_t sub_29788F868(uint64_t a1)
{
  v2 = a1;
  if (sub_29788F9B8(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29788F8A4(uint64_t a1, int a2)
{
  v2 = sub_29788FA18(a1, a2);

  return sub_29788F94C(v2);
}

uint64_t sub_29788FA60(_DWORD *a1)
{
  v1 = sub_29788FAC8(a1);
  if ((byte_2A13A3330 & 1) == 0)
  {
    sub_29788FAD4(&v3, dword_2A13A3334);
    byte_2A13A3330 = 1;
  }

  return dword_2A13A3334[v1];
}

uint64_t sub_29788FAD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_297882B50(a2);
  if ((byte_2A18A4A02 & 1) == 0)
  {
    sub_297890074(v5, byte_2A18A4A04);
    sub_29788FB5C(v5[0], v5[1]);
    byte_2A18A4A02 = 1;
  }

  return (byte_2A18A4A04[*(a1 + 4) & 0x3FF] >> v3) & 1;
}

_BYTE *sub_29788FB5C(uint64_t a1, uint64_t a2)
{
  v55[0] = a1;
  v55[1] = a2;
  v2 = sub_297883190(v55, 1);
  *v2 |= 2u;
  v3 = sub_297883190(v55, 2);
  *v3 |= 2u;
  v4 = sub_297883190(v55, 3);
  *v4 |= 2u;
  v5 = sub_297883190(v55, 4);
  *v5 |= 2u;
  v6 = sub_297883190(v55, 5);
  *v6 |= 2u;
  v7 = sub_297883190(v55, 6);
  *v7 |= 2u;
  v8 = sub_297883190(v55, 7);
  *v8 |= 2u;
  v9 = sub_297883190(v55, 8);
  *v9 |= 2u;
  v10 = sub_297883190(v55, 9);
  *v10 |= 2u;
  v11 = sub_297883190(v55, 10);
  *v11 |= 2u;
  v12 = sub_297883190(v55, 18);
  *v12 |= 2u;
  v13 = sub_297883190(v55, 19);
  *v13 |= 2u;
  v14 = sub_297883190(v55, 20);
  *v14 |= 2u;
  v15 = sub_297883190(v55, 21);
  *v15 |= 2u;
  v16 = sub_297883190(v55, 22);
  *v16 |= 2u;
  v17 = sub_297883190(v55, 23);
  *v17 |= 2u;
  v18 = sub_297883190(v55, 24);
  *v18 |= 2u;
  v19 = sub_297883190(v55, 25);
  *v19 |= 2u;
  v20 = sub_297883190(v55, 26);
  *v20 |= 2u;
  v21 = sub_297883190(v55, 27);
  *v21 |= 2u;
  v22 = sub_297883190(v55, 31);
  *v22 |= 2u;
  v23 = sub_297883190(v55, 32);
  *v23 |= 2u;
  v24 = sub_297883190(v55, 33);
  *v24 |= 2u;
  v25 = sub_297883190(v55, 35);
  *v25 |= 2u;
  v26 = sub_297883190(v55, 36);
  *v26 |= 2u;
  v27 = sub_297883190(v55, 37);
  *v27 |= 2u;
  v28 = sub_297883190(v55, 38);
  *v28 |= 2u;
  v29 = sub_297883190(v55, 40);
  *v29 |= 2u;
  v30 = sub_297883190(v55, 41);
  *v30 |= 2u;
  v31 = sub_297883190(v55, 54);
  *v31 |= 2u;
  v32 = sub_297883190(v55, 55);
  *v32 |= 2u;
  v33 = sub_297883190(v55, 56);
  *v33 |= 2u;
  v34 = sub_297883190(v55, 57);
  *v34 |= 2u;
  v35 = sub_297883190(v55, 58);
  *v35 |= 2u;
  v36 = sub_297883190(v55, 59);
  *v36 |= 2u;
  v37 = sub_297883190(v55, 60);
  *v37 |= 2u;
  v38 = sub_297883190(v55, 61);
  *v38 |= 2u;
  v39 = sub_297883190(v55, 62);
  *v39 |= 2u;
  v40 = sub_297883190(v55, 67);
  *v40 |= 2u;
  v41 = sub_297883190(v55, 68);
  *v41 |= 2u;
  v42 = sub_297883190(v55, 69);
  *v42 |= 2u;
  v43 = sub_297883190(v55, 70);
  *v43 |= 2u;
  v44 = sub_297883190(v55, 71);
  *v44 |= 2u;
  v45 = sub_297883190(v55, 72);
  *v45 |= 2u;
  v46 = sub_297883190(v55, 73);
  *v46 |= 2u;
  v47 = sub_297883190(v55, 74);
  *v47 |= 2u;
  v48 = sub_297883190(v55, 75);
  *v48 |= 2u;
  v49 = sub_297883190(v55, 77);
  *v49 |= 2u;
  v50 = sub_297883190(v55, 78);
  *v50 |= 2u;
  v51 = sub_297883190(v55, 79);
  *v51 |= 2u;
  v52 = sub_297883190(v55, 80);
  *v52 |= 2u;
  v53 = sub_297883190(v55, 81);
  *v53 |= 2u;
  result = sub_297883190(v55, 76);
  *result |= 2u;
  return result;
}

_BYTE *sub_2978900F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978900B4();
  result = sub_29789012C(a2, v3);
  *result |= 2u;
  return result;
}

_BYTE *sub_297890138(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978900B4();
  result = sub_29789012C(a2, v3);
  *result |= 1u;
  return result;
}

void *sub_297890178(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 82;
  return result;
}

unsigned int *sub_297890198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_297890358(a1, a3);
  v11 = sub_297890358(a1, a4);
  if (!sub_2978903F4(v10))
  {
    if (sub_2978903F4(v11))
    {
      return v11;
    }

    else
    {
      v12 = sub_297890404(a1, 4);
      v36 = sub_29788C170(a3);
      v13 = sub_2977FB720(&v36);
      v14 = sub_297890438(v13);
      v36 = sub_29788C170(a4);
      v15 = sub_2977FB720(&v36);
      v16 = sub_297890438(v15);
      v17 = sub_297887A38(a2);
      if (v17)
      {
        v18 = v11;
        v19 = 0;
        v29 = v12;
        v30 = v17;
        do
        {
          v20 = sub_297887B08(a2);
          v32 = v19;
          if (v20)
          {
            v21 = 0;
            v33 = &v18[4 * v19];
            v34 = &v10[4 * v19];
            v22 = v29 + 16 * v19;
            v23 = v20;
            do
            {
              v24 = v10;
              if ((v14 & 1) == 0)
              {
                v10 = sub_297887A44(v34, v21);
              }

              v25 = *v10;
              v26 = v18;
              if ((v16 & 1) == 0)
              {
                v26 = sub_297887A44(v33, v21);
              }

              v6 = v6 & 0xFFFFFFFF00000000 | v25;
              v5 = v5 & 0xFFFFFFFF00000000 | *v26;
              v27 = sub_297890460(a5);
              *sub_297887A44(v22, v21++) = v27;
              v10 = v24;
            }

            while (v23 != v21);
          }

          v19 = v32 + 1;
        }

        while (v32 + 1 != v30);
        return v29;
      }

      else
      {
        return v12;
      }
    }
  }

  return v10;
}

uint64_t sub_297890358(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (a2)
  {
    if (sub_297896C10(*(a1 + 16), &v5))
    {
      return *sub_297896C38(*(a1 + 16), &v5);
    }

    v3 = sub_297896C54(a1, v5);
    *sub_297896C38(*(a1 + 16), &v5) = v3;
    return v3;
  }

  else
  {

    return sub_297896A94(a1);
  }
}

uint64_t sub_297890404(uint64_t a1, char a2)
{
  v3 = sub_297869208(0x48uLL, *(a1 + 8));
  result = sub_29789702C(v3);
  *(result + 64) = a2;
  return result;
}

unsigned int *sub_297890490(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = sub_2977FD5B0(a2);
  v4 = sub_2977FB720(&v11);
  v5 = sub_297890568(v4);
  v6 = *sub_29789056C(a2 + 8);
  v7 = *sub_29788A818(a2 + 8, 1u);
  sub_297890570(v12);
  v8 = sub_297890198(a1, v5, v6, v7, v12);
  sub_297890574(v12);
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

unsigned int *sub_297890578(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = sub_2977FB7B8(a2);
  v4 = sub_2977FB720(&v12);
  v5 = sub_297890568(v4);
  v6 = sub_2977FD5B0(a2);
  v7 = sub_29783CFFC(a2);
  v8 = sub_29781BF50(v7);
  sub_297890570(v13);
  v9 = sub_297890198(a1, v5, v6, v8, v13);
  sub_297890574(v13);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_297890650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71[0] = a3;
  v71[1] = a4;
  v70 = sub_2977FD5B0(a2);
  v8 = sub_2977FB720(&v70);
  v9 = sub_2978876EC(v8);
  v10 = sub_297890404(a1, 3);
  v67 = a5;
  if (sub_2977FB7B8(v71) != 1)
  {
    goto LABEL_12;
  }

  v11 = sub_29789056C(a2 + 8);
  v70 = sub_29788C170(*v11);
  v12 = sub_2977FB720(&v70);
  v13 = sub_297890568(v12);
  v14 = sub_2978875FC(v13);
  if (v14)
  {
    sub_29788862C(v14);
    v15 = **sub_2977FB720(v71);
    v16 = sub_297890A64(a5);
    v17 = sub_297887A38(v9);
    if (v17)
    {
      v18 = 0;
      v19 = v17;
      do
      {
        *sub_297887A44(v10, v18++) = v16;
      }

      while (v19 != v18);
    }

    return v10;
  }

  v20 = sub_2978876EC(v13);
  if (v20)
  {
    v21 = sub_2977FB7B8(v20);
    v22 = sub_297887A38(v9);
    if (v22)
    {
      v23 = 0;
      v24 = v22;
      do
      {
        sub_29788862C(v21);
        v25 = sub_2977FB720(v71);
        v26 = *sub_297887A44(*v25, v23);
        v27 = sub_297890A64(a5);
        *sub_297887A44(v10, v23++) = v27;
      }

      while (v24 != v23);
    }
  }

  else
  {
LABEL_12:
    v28 = sub_2977FB720(v71);
    v29 = sub_297803A7C(a2 + 8);
    v30 = sub_29788A7C4(a2 + 8);
    if (v29 != v30)
    {
      v31 = v30;
      v32 = 0;
      v60 = v30;
      do
      {
        v70 = sub_29788C170(*v29);
        v33 = sub_2977FB720(&v70);
        v34 = sub_297890568(v33);
        v35 = sub_2978875FC(v34);
        if (v35)
        {
          sub_29788862C(v35);
          v65 = v65 & 0xFFFFFFFF00000000 | **v28;
          v36 = sub_297890A64(v67);
          *sub_297887A44(v10, v32++) = v36;
        }

        else
        {
          v37 = sub_2978876EC(v34);
          if (v37)
          {
            v38 = v37;
            v39 = sub_2977FB7B8(v37);
            v40 = sub_297887A38(v38);
            if (v40)
            {
              v62 = v29;
              v69 = v39;
              v41 = 0;
              v42 = v40;
              v68 = v32;
              v43 = v32;
              v44 = v28;
              v45 = v10;
              v46 = v61;
              do
              {
                sub_29788862C(v69);
                v46 = v46 & 0xFFFFFFFF00000000 | *sub_297887A44(*v44, v41);
                v47 = sub_297890A64(v67);
                *sub_297887A44(v45, v43 + v41++) = v47;
              }

              while (v42 != v41);
              v61 = v46;
              v32 = v68 + v41;
              v29 = v62;
              v31 = v60;
              v10 = v45;
              v28 = v44;
            }
          }

          else
          {
            v48 = sub_2978877CC(v34);
            if (v48)
            {
              v49 = v48;
              v50 = sub_2977FB7B8(v48);
              v51 = sub_297887A38(v49);
              if (v51)
              {
                v63 = v29;
                v64 = v49;
                v52 = 0;
                v66 = v51;
                do
                {
                  v53 = sub_297887B08(v49);
                  if (v53)
                  {
                    v54 = 0;
                    v55 = v53;
                    do
                    {
                      sub_29788862C(v50);
                      v56 = v50;
                      v57 = *sub_297887A44(*v28 + 16 * v52, v54);
                      v58 = sub_297890A64(v67);
                      *sub_297887A44(v10, v32 + v54) = v58;
                      v50 = v56;
                      ++v54;
                    }

                    while (v55 != v54);
                    v32 += v54;
                    v49 = v64;
                  }

                  ++v52;
                }

                while (v52 != v66);
                v29 = v63;
                v31 = v60;
              }
            }
          }
        }

        ++v29;
        ++v28;
      }

      while (v29 != v31);
    }
  }

  return v10;
}

uint64_t sub_297890A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_297890358(a1, a3);
  v12 = sub_297890358(a1, a4);
  if (!sub_2978903F4(v11))
  {
    if (sub_2978903F4(v12))
    {
      return v12;
    }

    else
    {
      v13 = sub_297890404(a1, 3);
      v27 = sub_29788C170(a3);
      v14 = sub_2977FB720(&v27);
      v15 = sub_297890438(v14);
      v27 = sub_29788C170(a4);
      v16 = sub_2977FB720(&v27);
      v17 = sub_297890438(v16);
      v18 = sub_297887A38(a2);
      if (v18)
      {
        v19 = 0;
        v20 = v18;
        do
        {
          v21 = v11;
          if ((v15 & 1) == 0)
          {
            v21 = sub_297887A44(v11, v19);
          }

          v22 = *v21;
          v23 = v12;
          if ((v17 & 1) == 0)
          {
            v23 = sub_297887A44(v12, v19);
          }

          v6 = v6 & 0xFFFFFFFF00000000 | v22;
          v5 = v5 & 0xFFFFFFFF00000000 | *v23;
          v24 = sub_297890460(a5);
          *sub_297887A44(v13, v19++) = v24;
        }

        while (v20 != v19);
      }

      return v13;
    }
  }

  return v11;
}

uint64_t sub_297890BFC(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = sub_2977FB7B8(a2);
  v4 = sub_2977FB720(&v12);
  v5 = sub_297890568(v4);
  v6 = sub_2977FD5B0(a2);
  v7 = sub_29783CFFC(a2);
  v8 = sub_29781BF50(v7);
  sub_297890570(v13);
  v9 = sub_297890A94(a1, v5, v6, v8, v13);
  sub_297890574(v13);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_297890CD4(uint64_t a1, uint64_t a2)
{
  sub_29788A39C(a2, v6);
  v3 = sub_2977FBD9C(v6);
  v4 = sub_297890D28(a1, v3);
  sub_2977FA598(v6);
  return v4;
}

uint64_t sub_297890D28(uint64_t a1, float a2)
{
  v3 = sub_297869208(0x48uLL, *(a1 + 8));
  v4.n128_f32[0] = a2;

  return sub_297897068(v3, v4);
}

uint64_t sub_297890D68(uint64_t a1, uint64_t a2)
{
  sub_29788A390(a2, v6);
  v3 = sub_297801E44(v6);
  v4 = sub_297890DC0(a1, v3);
  sub_2977FAA04(v6);
  return v4;
}

uint64_t sub_297890DC0(uint64_t a1, uint64_t a2)
{
  v3 = sub_297869208(0x48uLL, *(a1 + 8));

  return sub_29789707C(v3, a2);
}

uint64_t sub_297890E00(uint64_t a1, uint64_t a2)
{
  sub_29788A390(a2, v6);
  v3 = sub_2977FCF34(v6);
  v4 = sub_297890DC0(a1, v3);
  sub_2977FAA04(v6);
  return v4;
}

uint64_t sub_297890E58(uint64_t a1, uint64_t a2)
{
  v3 = sub_297807D1C(a2);

  return sub_297890E98(a1, v3);
}

uint64_t sub_297890E98(uint64_t a1, uint64_t a2)
{
  v3 = sub_297869208(0x48uLL, *(a1 + 8));

  return sub_297897090(v3, a2);
}

uint64_t sub_297890ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  v5 = sub_297890358(a1, v4);
  if (sub_2978903F4(v5))
  {
    return v5;
  }

  v6 = sub_29788A44C(a2);
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v63 = sub_2977FB7B8(a2);
        v17 = sub_2977FB720(&v63);
        v18 = sub_297890568(v17);
        v19 = sub_2978877CC(v18);
        if (v19)
        {
          v20 = v19;
          v10 = sub_297890404(a1, 4);
          v21 = sub_297887A38(v20);
          if (v21)
          {
            v22 = 0;
            v23 = v21;
            do
            {
              v24 = sub_297887B08(v20);
              if (v24)
              {
                v25 = 0;
                v26 = v24;
                do
                {
                  v27 = -*sub_297887A44(&v5[4 * v22], v25);
                  *sub_297887A44(v10 + 16 * v22, v25++) = v27;
                }

                while (v26 != v25);
              }

              ++v22;
            }

            while (v22 != v23);
          }

          return v10;
        }

        v36 = sub_29788862C(v18);
        if (v36 > 10)
        {
          if (((1 << v36) & 0x3800) != 0)
          {
            v10 = sub_297890404(a1, 3);
            v63 = sub_2977FB7B8(a2);
            v51 = sub_2977FB720(&v63);
            v52 = sub_297890568(v51);
            v53 = sub_297887A38(v52);
            if (v53)
            {
              v54 = 0;
              v55 = v53;
              do
              {
                v56 = -*sub_297887A44(v5, v54);
                *sub_297887A44(v10, v54++) = v56;
              }

              while (v55 != v54);
            }
          }

          else if (((1 << v36) & 0x1C000) != 0)
          {
            v10 = sub_297890404(a1, 3);
            v63 = sub_2977FB7B8(a2);
            v37 = sub_2977FB720(&v63);
            v38 = sub_297890568(v37);
            v39 = sub_297887A38(v38);
            if (v39)
            {
              v40 = 0;
              v41 = v39;
              do
              {
                v42 = -*sub_297887A44(v5, v40);
                *sub_297887A44(v10, v40++) = v42;
              }

              while (v41 != v40);
            }
          }

          else
          {
            v10 = sub_297890404(a1, 3);
            v63 = sub_2977FB7B8(a2);
            v57 = sub_2977FB720(&v63);
            v58 = sub_297890568(v57);
            v59 = sub_297887A38(v58);
            if (v59)
            {
              v60 = 0;
              v61 = v59;
              do
              {
                v62 = -*sub_297887A44(v5, v60);
                *sub_297887A44(v10, v60++) = v62;
              }

              while (v61 != v60);
            }
          }

          return v10;
        }

        if (v36 <= 5)
        {
          if (v36 == 3 || v36 == 4)
          {
            return sub_297890D28(a1, -*v5);
          }

          v43 = -*v5;
        }

        else
        {
          if ((v36 - 8) < 3)
          {
            v10 = sub_297890404(a1, 3);
            v63 = sub_2977FB7B8(a2);
            v45 = sub_2977FB720(&v63);
            v46 = sub_297890568(v45);
            v47 = sub_297887A38(v46);
            if (v47)
            {
              v48 = 0;
              v49 = v47;
              do
              {
                v50 = -*sub_297887A44(v5, v48);
                *sub_297887A44(v10, v48++) = v50;
              }

              while (v49 != v48);
            }

            return v10;
          }

          v43 = -*v5;
        }

        return sub_297890DC0(a1, v43);
      }

      return v5;
    }

    v29 = (*v5 & 1) == 0;

    return sub_297890E98(a1, v29);
  }

  else
  {
    if (v6 != 3 && v6 != 5)
    {
      if (v6 == 6)
      {
        v63 = sub_2977FB7B8(a2);
        v7 = sub_2977FB720(&v63);
        v8 = sub_297890568(v7);
        v9 = sub_29788862C(v8);
        if (v9 > 16)
        {
          v10 = sub_297890404(a1, 3);
          v63 = sub_2977FB7B8(a2);
          v30 = sub_2977FB720(&v63);
          v31 = sub_297890568(v30);
          v32 = sub_297887A38(v31);
          if (v32)
          {
            v33 = 0;
            v34 = v32;
            do
            {
              v35 = ~*sub_297887A44(v5, v33);
              *sub_297887A44(v10, v33++) = v35;
            }

            while (v34 != v33);
          }

          return v10;
        }

        if ((v9 - 14) < 3)
        {
          v10 = sub_297890404(a1, 3);
          v63 = sub_2977FB7B8(a2);
          v11 = sub_2977FB720(&v63);
          v12 = sub_297890568(v11);
          v13 = sub_297887A38(v12);
          if (v13)
          {
            v14 = 0;
            v15 = v13;
            do
            {
              v16 = ~*sub_297887A44(v5, v14);
              *sub_297887A44(v10, v14++) = v16;
            }

            while (v15 != v14);
          }

          return v10;
        }

        v43 = ~*v5;
        return sub_297890DC0(a1, v43);
      }

      return v5;
    }

    return sub_297891404(a1, a2);
  }
}

uint64_t sub_297891404(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978970A4(a1);
  sub_29789705C(v3, a2);
  return v3;
}

uint64_t sub_297891438(uint64_t a1)
{
  v2 = sub_2977FB720(a1);
  result = sub_29788865C(v2);
  if (!result)
  {
    v4 = sub_2977FB720(a1);
    v5 = sub_297888660(v4);
    if (!v5)
    {
      return 0;
    }

    v7 = sub_2977FB7B8(v5);
    v6 = sub_2977FB720(&v7);
    result = sub_29788865C(v6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_297891498(uint64_t a1, uint64_t a2)
{
  v219 = *MEMORY[0x29EDCA608];
  v4 = sub_2977FD5B0(a2);
  v5 = sub_297890358(a1, v4);
  v6 = sub_29783CFFC(a2);
  v7 = sub_297890358(a1, v6);
  if (sub_2978903F4(v5))
  {
    goto LABEL_230;
  }

  if (sub_2978903F4(v7))
  {
    v5 = v7;
    goto LABEL_230;
  }

  switch(sub_29788A794(a2))
  {
    case 1u:
      v8 = *MEMORY[0x29EDCA608];

      return sub_297891404(a1, a2);
    case 2u:
      if ((*v5 & 1) == 0)
      {
        goto LABEL_34;
      }

      v44 = 1;
      goto LABEL_35;
    case 3u:
      v37 = *MEMORY[0x29EDCA608];
      v38 = *v7 ^ *v5;

      return sub_297890DC0(a1, v38);
    case 4u:
      if (*v5 == 1)
      {
LABEL_34:
        v44 = *v7;
      }

      else
      {
        v44 = 0;
      }

LABEL_35:
      v50 = *MEMORY[0x29EDCA608];
      v49 = v44 & 1;
      goto LABEL_54;
    case 5u:
      v184 = sub_2977FB7B8(a2);
      v24 = sub_2977FB720(&v184);
      v25 = sub_297890568(v24);
      v26 = sub_29788862C(v25);
      if (v26 > 16)
      {
        sub_297892880(v218);
        v5 = sub_297890BFC(a1, a2);
        v15 = v218;
        goto LABEL_109;
      }

      if ((v26 - 14) < 3)
      {
        sub_297892884(v217);
        v5 = sub_297890BFC(a1, a2);
        v15 = v217;
        goto LABEL_109;
      }

      if (v26 == 5)
      {
        v111 = (*v7 | *v5);
        goto LABEL_129;
      }

      v111 = (*v7 | *v5);
      goto LABEL_227;
    case 6u:
      v184 = sub_2977FB7B8(a2);
      v54 = sub_2977FB720(&v184);
      v55 = sub_297890568(v54);
      v56 = sub_29788862C(v55);
      if (v56 > 16)
      {
        sub_297892888(v216);
        v5 = sub_297890BFC(a1, a2);
        v15 = v216;
        goto LABEL_109;
      }

      if ((v56 - 14) < 3)
      {
        sub_29789288C(v215);
        v5 = sub_297890BFC(a1, a2);
        v15 = v215;
        goto LABEL_109;
      }

      if (v56 == 5)
      {
        v111 = (*v7 ^ *v5);
        goto LABEL_129;
      }

      v111 = (*v7 ^ *v5);
      goto LABEL_227;
    case 7u:
      v184 = sub_2977FB7B8(a2);
      v60 = sub_2977FB720(&v184);
      v61 = sub_297890568(v60);
      v62 = sub_29788862C(v61);
      if (v62 > 16)
      {
        sub_297892890(v214);
        v5 = sub_297890BFC(a1, a2);
        v15 = v214;
        goto LABEL_109;
      }

      if ((v62 - 14) < 3)
      {
        sub_297892894(v213);
        v5 = sub_297890BFC(a1, a2);
        v15 = v213;
        goto LABEL_109;
      }

      if (v62 == 5)
      {
        v111 = (*v7 & *v5);
        goto LABEL_129;
      }

      v111 = (*v7 & *v5);
      goto LABEL_227;
    case 8u:
      v45 = sub_2977FD5B0(a2);
      v46 = sub_29788C170(v45);
      v47 = sub_297892898(v46, v5, v7);
      v48 = *MEMORY[0x29EDCA608];
      v49 = v47 ^ 1u;
      goto LABEL_54;
    case 9u:
      v73 = sub_2977FD5B0(a2);
      v74 = sub_29788C170(v73);
      v75 = sub_297892898(v74, v5, v7);
      v76 = *MEMORY[0x29EDCA608];
      v49 = v75;
LABEL_54:

      return sub_297890E98(a1, v49);
    case 0xAu:
      v32 = sub_2977FD5B0(a2);
      v184 = sub_29788C170(v32);
      v33 = sub_2977FB720(&v184);
      v34 = sub_297890568(v33);
      v35 = sub_29788862C(v34);
      if (v35 > 4)
      {
        if (v35 == 5)
        {
          v72 = *v5 <= *v7;
          goto LABEL_124;
        }

        v36 = *v5 > *v7;
      }

      else
      {
        v36 = *v5 > *v7;
      }

      v72 = !v36;
      goto LABEL_124;
    case 0xBu:
      v68 = sub_2977FD5B0(a2);
      v184 = sub_29788C170(v68);
      v69 = sub_2977FB720(&v184);
      v70 = sub_297890568(v69);
      v71 = sub_29788862C(v70);
      if (v71 > 4)
      {
        if (v71 == 5)
        {
          v72 = *v5 < *v7;
        }

        else
        {
          v72 = *v5 < *v7;
        }
      }

      else
      {
        v72 = *v5 < *v7;
      }

      goto LABEL_124;
    case 0xCu:
      v19 = sub_2977FD5B0(a2);
      v184 = sub_29788C170(v19);
      v20 = sub_2977FB720(&v184);
      v21 = sub_297890568(v20);
      v22 = sub_29788862C(v21);
      if (v22 > 4)
      {
        if (v22 != 5)
        {
          v72 = *v5 > *v7;
          goto LABEL_124;
        }

        v23 = *v5 <= *v7;
      }

      else
      {
        v23 = *v5 <= *v7;
      }

      v72 = !v23;
      goto LABEL_124;
    case 0xDu:
      v27 = sub_2977FD5B0(a2);
      v184 = sub_29788C170(v27);
      v28 = sub_2977FB720(&v184);
      v29 = sub_297890568(v28);
      v30 = sub_29788862C(v29);
      if (v30 > 4)
      {
        if (v30 != 5)
        {
          v72 = *v5 >= *v7;
          goto LABEL_124;
        }

        v31 = *v5 < *v7;
      }

      else
      {
        v31 = *v5 < *v7;
      }

      v72 = !v31;
LABEL_124:
      v112 = sub_297890E98(a1, v72);
      goto LABEL_229;
    case 0xEu:
      v184 = sub_2977FB7B8(a2);
      v57 = sub_2977FB720(&v184);
      v58 = sub_297890568(v57);
      v59 = sub_29788862C(v58);
      if (v59 > 16)
      {
        sub_297892CF8(v212);
        v5 = sub_297890BFC(a1, a2);
        v15 = v212;
        goto LABEL_109;
      }

      if ((v59 - 14) < 3)
      {
        sub_297892CFC(v211);
        v5 = sub_297890BFC(a1, a2);
        v15 = v211;
        goto LABEL_109;
      }

      if (v59 == 5)
      {
        v111 = (*v5 >> *v7);
        goto LABEL_129;
      }

      v111 = (*v5 >> *v7);
      goto LABEL_227;
    case 0xFu:
      v184 = sub_2977FB7B8(a2);
      v16 = sub_2977FB720(&v184);
      v17 = sub_297890568(v16);
      v18 = 1 << sub_29788862C(v17);
      if ((v18 & 0x1C000) != 0)
      {
        sub_297892D04(v209);
        v5 = sub_297890BFC(a1, a2);
        v15 = v209;
        goto LABEL_109;
      }

      if ((v18 & 0xE0000) != 0)
      {
        sub_297892D00(v210);
        v5 = sub_297890BFC(a1, a2);
        v15 = v210;
        goto LABEL_109;
      }

      v111 = (*v5 << *v7);
      goto LABEL_227;
    case 0x10u:
      v184 = sub_2977FB7B8(a2);
      v39 = sub_2977FB720(&v184);
      v40 = sub_297890568(v39);
      v41 = sub_2978877CC(v40);
      if (v41)
      {
        v42 = v41;
        v43 = sub_2977FB7B8(v41);
        sub_2977FDEF4(&v184, v43);
        if (sub_297892D08(v184, 3))
        {
          sub_297892D5C(v208);
          v5 = sub_297890578(a1, a2);
          v15 = v208;
        }

        else
        {
          v109 = sub_2977FB7B8(v42);
          sub_2977FDEF4(&v184, v109);
          sub_297892D08(v184, 4);
          sub_297892D60(v207);
          v5 = sub_297890578(a1, a2);
          v15 = v207;
        }

        goto LABEL_109;
      }

      v90 = sub_29788862C(v40);
      if (v90 > 7)
      {
        if (((1 << v90) & 0xFC000) != 0)
        {
          sub_297892D6C(v204);
          v5 = sub_297890BFC(a1, a2);
          v15 = v204;
        }

        else if (((1 << v90) & 0x700) != 0)
        {
          sub_297892D64(v206);
          v5 = sub_297890BFC(a1, a2);
          v15 = v206;
        }

        else
        {
          sub_297892D68(v205);
          v5 = sub_297890BFC(a1, a2);
          v15 = v205;
        }

        goto LABEL_109;
      }

      if ((v90 - 5) < 2)
      {
        v111 = (*v7 + *v5);
        goto LABEL_227;
      }

      v159 = *v5 + *v7;
      goto LABEL_201;
    case 0x11u:
      v184 = sub_2977FB7B8(a2);
      v10 = sub_2977FB720(&v184);
      v11 = sub_297890568(v10);
      v12 = sub_2978877CC(v11);
      if (v12)
      {
        v13 = v12;
        v14 = sub_2977FB7B8(v12);
        sub_2977FDEF4(&v184, v14);
        if (sub_297892D08(v184, 3))
        {
          sub_297892D70(v203);
          v5 = sub_297890578(a1, a2);
          v15 = v203;
        }

        else
        {
          v108 = sub_2977FB7B8(v13);
          sub_2977FDEF4(&v184, v108);
          sub_297892D08(v184, 4);
          sub_297892D74(v202);
          v5 = sub_297890578(a1, a2);
          v15 = v202;
        }

        goto LABEL_109;
      }

      v89 = sub_29788862C(v11);
      if (v89 > 10)
      {
        if (((1 << v89) & 0x3800) != 0)
        {
          sub_297892D7C(v200);
          v5 = sub_297890BFC(a1, a2);
          v15 = v200;
        }

        else if (((1 << v89) & 0x1C000) != 0)
        {
          sub_297892D80(v199);
          v5 = sub_297890BFC(a1, a2);
          v15 = v199;
        }

        else
        {
          sub_297892D84(v198);
          v5 = sub_297890BFC(a1, a2);
          v15 = v198;
        }

        goto LABEL_109;
      }

      if (v89 > 7)
      {
        sub_297892D78(v201);
        v5 = sub_297890BFC(a1, a2);
        v15 = v201;
        goto LABEL_109;
      }

      if ((v89 - 5) < 2)
      {
        v111 = (*v5 - *v7);
        goto LABEL_227;
      }

      v159 = *v5 - *v7;
      goto LABEL_201;
    case 0x12u:
      v184 = sub_2977FB7B8(a2);
      v51 = sub_2977FB720(&v184);
      v52 = sub_297890568(v51);
      v53 = sub_29788862C(v52);
      if (v53 > 16)
      {
        sub_297892D88(v197);
        v5 = sub_297890BFC(a1, a2);
        v15 = v197;
        goto LABEL_109;
      }

      if ((v53 - 14) < 3)
      {
        sub_297892D8C(v196);
        v5 = sub_297890BFC(a1, a2);
        v15 = v196;
        goto LABEL_109;
      }

      if (v53 == 5)
      {
        v111 = (*v5 % *v7);
        goto LABEL_129;
      }

      v111 = (*v5 % *v7);
      goto LABEL_227;
    case 0x13u:
      v184 = sub_2977FB7B8(a2);
      v63 = sub_2977FB720(&v184);
      v64 = sub_297890568(v63);
      v65 = sub_2978877CC(v64);
      if (v65)
      {
        v66 = v65;
        v67 = sub_2977FB7B8(v65);
        sub_2977FDEF4(&v184, v67);
        if (sub_297892D08(v184, 3))
        {
          sub_297892D90(v195);
          v5 = sub_297890578(a1, a2);
          v15 = v195;
        }

        else
        {
          v110 = sub_2977FB7B8(v66);
          sub_2977FDEF4(&v184, v110);
          sub_297892D08(v184, 4);
          sub_297892D94(v194);
          v5 = sub_297890578(a1, a2);
          v15 = v194;
        }

        goto LABEL_109;
      }

      v91 = sub_29788862C(v64);
      if (v91 > 10)
      {
        if (((1 << v91) & 0x3800) != 0)
        {
          sub_297892D9C(v192);
          v5 = sub_297890BFC(a1, a2);
          v15 = v192;
        }

        else if (((1 << v91) & 0x1C000) != 0)
        {
          sub_297892DA0(v191);
          v5 = sub_297890BFC(a1, a2);
          v15 = v191;
        }

        else
        {
          sub_297892DA4(v190);
          v5 = sub_297890BFC(a1, a2);
          v15 = v190;
        }

        goto LABEL_109;
      }

      if (v91 > 7)
      {
        sub_297892D98(v193);
        v5 = sub_297890BFC(a1, a2);
        v15 = v193;
LABEL_109:
        sub_297890574(v15);
        goto LABEL_230;
      }

      if ((v91 - 5) >= 2)
      {
        v159 = *v5 / *v7;
LABEL_201:
        v112 = sub_297890D28(a1, v159);
      }

      else
      {
        if (*v7)
        {
          v115 = sub_29788862C(v64);
          v116 = *v5;
          if (v115 == 5)
          {
            v117 = *v7;
            if (v116 == -0.0 && v117 == NAN)
            {
              v113 = a1;
              v111 = 0;
            }

            else
            {
              v111 = (SLODWORD(v116) / SLODWORD(v117));
LABEL_129:
              v113 = a1;
            }
          }

          else
          {
            v111 = (LODWORD(v116) / *v7);
LABEL_227:
            v113 = a1;
          }
        }

        else
        {
          v113 = a1;
          v111 = 0;
        }

        v112 = sub_297890DC0(v113, v111);
      }

LABEL_229:
      v5 = v112;
LABEL_230:
      v175 = *MEMORY[0x29EDCA608];
      return v5;
    case 0x14u:
      v184 = sub_2977FB7B8(a2);
      v77 = sub_2977FB720(&v184);
      v78 = sub_297890568(v77);
      v79 = sub_2977FD5B0(a2);
      v184 = sub_29788C170(v79);
      v80 = sub_29783CFFC(a2);
      v81 = sub_29781BF50(v80);
      v183 = sub_29788C170(v81);
      v82 = sub_2978877CC(v78);
      if (v82)
      {
        v83 = v82;
        v84 = sub_2977FB720(&v184);
        if ((sub_297890438(v84) & 1) != 0 || (v85 = sub_2977FB720(&v183), sub_297890438(v85)))
        {
          v86 = sub_2977FB7B8(v83);
          sub_2977FDEF4(&v182, v86);
          if (sub_297892D08(v182, 3))
          {
            sub_297892DA8(v189);
            v87 = sub_297890578(a1, a2);
            v88 = v189;
          }

          else
          {
            v114 = sub_2977FB7B8(v83);
            sub_2977FDEF4(&v182, v114);
            sub_297892D08(v182, 4);
            sub_297892DAC(v188);
            v87 = sub_297890578(a1, a2);
            v88 = v188;
          }

          goto LABEL_214;
        }

        v87 = sub_297890404(a1, 4);
        v118 = sub_2977FB720(&v184);
        v119 = sub_297890568(v118);
        v120 = sub_2977FB7B8(v83);
        sub_2977FDEF4(&v182, v120);
        v179 = v83;
        if (sub_297892D08(v182, 3))
        {
          v121 = sub_297887A38(v83);
          if (!v121)
          {
            goto LABEL_215;
          }

          v180 = 0;
          v176 = v121;
          v178 = v87;
          do
          {
            v122 = sub_297887B08(v83);
            if (v122)
            {
              v123 = 0;
              v124 = v122;
              do
              {
                v125 = sub_297887A38(v119);
                if (v125)
                {
                  v126 = 0;
                  v127 = v125;
                  v128 = 0.0;
                  v129 = v5;
                  do
                  {
                    v130 = *sub_297887A44(v129, v123);
                    v128 = v128 + (v130 * *sub_297887A44(&v7[4 * v180], v126++));
                    v129 += 16;
                  }

                  while (v127 != v126);
                }

                else
                {
                  v128 = 0.0;
                }

                *sub_297887A44(v178 + 16 * v180, v123++) = v128;
              }

              while (v123 != v124);
            }

            v83 = v179;
            ++v180;
          }

          while (v180 != v176);
        }

        else
        {
          v132 = sub_2977FB7B8(v83);
          sub_2977FDEF4(&v182, v132);
          sub_297892D08(v182, 4);
          v133 = sub_297887A38(v83);
          if (!v133)
          {
            goto LABEL_215;
          }

          v181 = 0;
          v177 = v133;
          v178 = v87;
          do
          {
            v134 = sub_297887B08(v83);
            if (v134)
            {
              v135 = 0;
              v136 = v134;
              do
              {
                v137 = sub_297887A38(v119);
                if (v137)
                {
                  v138 = 0;
                  v139 = v137;
                  v140 = 0.0;
                  v141 = v5;
                  do
                  {
                    v142 = *sub_297887A44(v141, v135);
                    v140 = v140 + (v142 * *sub_297887A44(&v7[4 * v181], v138++));
                    v141 += 16;
                  }

                  while (v139 != v138);
                }

                else
                {
                  v140 = 0.0;
                }

                *sub_297887A44(v178 + 16 * v181, v135++) = v140;
              }

              while (v135 != v136);
            }

            v83 = v179;
            ++v181;
          }

          while (v181 != v177);
        }

        v87 = v178;
      }

      else
      {
        v92 = sub_29788862C(v78);
        if (v92 <= 7)
        {
          if ((v92 - 5) >= 2)
          {
            v131 = sub_297890D28(a1, *v5 * *v7);
          }

          else
          {
            v131 = sub_297890DC0(a1, (*v7 * *v5));
          }

          v87 = v131;
        }

        else
        {
          if (((1 << v92) & 0x3F00) == 0)
          {
            if (((1 << v92) & 0x1C000) != 0)
            {
              sub_297892DB4(v186);
              v87 = sub_297890BFC(a1, a2);
              v88 = v186;
            }

            else
            {
              sub_297892DB8(v185);
              v87 = sub_297890BFC(a1, a2);
              v88 = v185;
            }

            goto LABEL_214;
          }

          v93 = sub_2977FB720(&v183);
          v94 = sub_2978877CC(v93);
          if (v94)
          {
            v95 = v94;
            v87 = sub_297890404(a1, 4);
            v96 = sub_2977FB720(&v184);
            v97 = sub_297890568(v96);
            v98 = sub_2977FB7B8(v95);
            sub_2977FDEF4(&v182, v98);
            v99 = sub_297892D08(v182, 3);
            v100 = sub_297887A38(v95);
            if (v99)
            {
              if (v100)
              {
                v101 = 0;
                v102 = v100;
                do
                {
                  v103 = sub_297887A38(v97);
                  if (v103)
                  {
                    v104 = 0;
                    v105 = 0.0;
                    v106 = v103;
                    do
                    {
                      v107 = *sub_297887A44(v5, v104);
                      v105 = v105 + (v107 * *sub_297887A44(&v7[4 * v101], v104++));
                    }

                    while (v106 != v104);
                  }

                  else
                  {
                    v105 = 0.0;
                  }

                  *sub_297887A44(v87, v101++) = v105;
                }

                while (v101 != v102);
              }
            }

            else if (v100)
            {
              v160 = 0;
              v161 = v100;
              do
              {
                v162 = sub_297887A38(v97);
                if (v162)
                {
                  v163 = 0;
                  v164 = 0.0;
                  v165 = v162;
                  do
                  {
                    v166 = *sub_297887A44(v5, v163);
                    v164 = v164 + (v166 * *sub_297887A44(&v7[4 * v160], v163++));
                  }

                  while (v165 != v163);
                }

                else
                {
                  v164 = 0.0;
                }

                *sub_297887A44(v87, v160++) = v164;
              }

              while (v160 != v161);
            }
          }

          else
          {
            v143 = sub_2977FB720(&v184);
            v144 = sub_2978877CC(v143);
            if (!v144)
            {
              sub_297892DB0(v187);
              v87 = sub_297890BFC(a1, a2);
              v88 = v187;
LABEL_214:
              sub_297890574(v88);
              goto LABEL_215;
            }

            v145 = v144;
            v87 = sub_297890404(a1, 4);
            v146 = sub_2977FB720(&v183);
            v147 = sub_297890568(v146);
            v148 = sub_2977FB7B8(v145);
            sub_2977FDEF4(&v182, v148);
            v149 = sub_297892D08(v182, 3);
            v150 = sub_297887B08(v145);
            if (v149)
            {
              if (v150)
              {
                v151 = 0;
                v152 = v150;
                do
                {
                  v153 = sub_297887A38(v147);
                  if (v153)
                  {
                    v154 = 0;
                    v155 = v153;
                    v156 = 0.0;
                    v157 = v5;
                    do
                    {
                      v158 = *sub_297887A44(v157, v151);
                      v156 = v156 + (v158 * *sub_297887A44(v7, v154++));
                      v157 += 16;
                    }

                    while (v155 != v154);
                  }

                  else
                  {
                    v156 = 0.0;
                  }

                  *sub_297887A44(v87, v151++) = v156;
                }

                while (v151 != v152);
              }
            }

            else if (v150)
            {
              v167 = 0;
              v168 = v150;
              do
              {
                v169 = sub_297887A38(v147);
                if (v169)
                {
                  v170 = 0;
                  v171 = v169;
                  v172 = 0.0;
                  v173 = v5;
                  do
                  {
                    v174 = *sub_297887A44(v173, v167);
                    v172 = v172 + (v174 * *sub_297887A44(v7, v170++));
                    v173 += 16;
                  }

                  while (v171 != v170);
                }

                else
                {
                  v172 = 0.0;
                }

                *sub_297887A44(v87, v167++) = v172;
              }

              while (v167 != v168);
            }
          }
        }
      }

LABEL_215:
      v5 = v87;
      goto LABEL_230;
    default:
      goto LABEL_230;
  }
}

uint64_t sub_297892898(uint64_t a1, float *a2, float *a3)
{
  v78 = a1;
  v5 = sub_2977FB720(&v78);
  v6 = sub_297888658(v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_2978877CC(v6);
    if (v8)
    {
      v9 = v8;
      v10 = sub_297887A38(v8);
      if (v10)
      {
        v11 = 0;
        v12 = v10;
        while (1)
        {
          v13 = sub_297887B08(v9);
          if (v13)
          {
            break;
          }

LABEL_9:
          ++v11;
          result = 1;
          if (v11 == v12)
          {
            return result;
          }
        }

        v14 = 0;
        v15 = v13;
        while (1)
        {
          v16 = *sub_297887A44(&a2[4 * v11], v14);
          if (v16 != *sub_297887A44(&a3[4 * v11], v14))
          {
            return 0;
          }

          if (v15 == ++v14)
          {
            goto LABEL_9;
          }
        }
      }

      return 1;
    }

    v27 = sub_29788862C(v7);
    if (v27 > 10)
    {
      if (v27 <= 0x16)
      {
        if (((1 << v27) & 0x1C000) != 0)
        {
          v56 = sub_297890568(v7);
          v57 = sub_297887A38(v56);
          if (v57)
          {
            v58 = 0;
            v59 = v57 - 1;
            do
            {
              v60 = *sub_297887A44(a2, v58);
              v61 = *sub_297887A44(a3, v58);
              result = v60 == v61;
            }

            while (v60 == v61 && v59 != v58++);
            return result;
          }

          return 1;
        }

        if (((1 << v27) & 0xE0000) != 0)
        {
          v43 = sub_297890568(v7);
          v44 = sub_297887A38(v43);
          if (v44)
          {
            v45 = 0;
            v46 = v44 - 1;
            do
            {
              v47 = *sub_297887A44(a2, v45);
              v48 = *sub_297887A44(a3, v45);
              result = v47 == v48;
            }

            while (v47 == v48 && v46 != v45++);
            return result;
          }

          return 1;
        }

        if (((1 << v27) & 0x700000) != 0)
        {
          v63 = sub_297890568(v7);
          v64 = sub_297887A38(v63);
          if (v64)
          {
            v65 = 0;
            v66 = v64 - 1;
            do
            {
              v67 = *sub_297887A44(a2, v65);
              v68 = *sub_297887A44(a3, v65);
              result = v67 == v68;
            }

            while (v67 == v68 && v66 != v65++);
            return result;
          }

          return 1;
        }
      }

      v70 = sub_297890568(v7);
      v71 = sub_297887A38(v70);
      if (v71)
      {
        v72 = 0;
        v73 = v71 - 1;
        do
        {
          v74 = *sub_297887A44(a2, v72);
          v26 = v74 == *sub_297887A44(a3, v72);
          result = v26;
        }

        while (v26 && v73 != v72++);
        return result;
      }

      return 1;
    }

    if (v27 > 5)
    {
      if ((v27 - 8) < 3)
      {
        v50 = sub_297890568(v7);
        v51 = sub_297887A38(v50);
        if (v51)
        {
          v52 = 0;
          v53 = v51 - 1;
          do
          {
            v54 = *sub_297887A44(a2, v52);
            v26 = v54 == *sub_297887A44(a3, v52);
            result = v26;
          }

          while (v26 && v53 != v52++);
          return result;
        }

        return 1;
      }

      if (v27 != 6)
      {
        LODWORD(v76) = *a2;
        LODWORD(v77) = *a3;
        return LODWORD(v76) == LODWORD(v77);
      }
    }

    else if (v27 == 3 || v27 == 4)
    {
      return *a2 == *a3;
    }

    v76 = *a2;
    v77 = *a3;
    return LODWORD(v76) == LODWORD(v77);
  }

  v18 = sub_297891438(&v78);
  if (v18)
  {
    v19 = v18;
    v20 = sub_2977FB7B8(v18);
    v21 = sub_29782AFB0(v19);
    if (v21)
    {
      v22 = 0;
      v23 = v21 - 1;
      do
      {
        v24 = *sub_29782DEAC(a2, v22);
        v25 = sub_29782DEAC(a3, v22);
        result = sub_297892898(v20, v24, *v25);
        if (result)
        {
          v26 = v23 == v22;
        }

        else
        {
          v26 = 1;
        }

        ++v22;
      }

      while (!v26);
      return result;
    }

    return 1;
  }

  v29 = sub_2977FB720(&v78);
  v30 = sub_297890568(v29);
  v31 = sub_2977FB7B8(v30);
  v32 = sub_297803A7C(v31 + 16);
  v33 = sub_297888490(v31 + 16);
  if (v32 == v33)
  {
    return 1;
  }

  v34 = v33;
  v35 = 0;
  while (1)
  {
    v36 = *v32;
    v37 = sub_2978862BC(*v32);
    v38 = sub_2978862C0(v36);
    if (v37 != v38)
    {
      break;
    }

LABEL_32:
    ++v32;
    result = 1;
    if (v32 == v34)
    {
      return result;
    }
  }

  v39 = v38;
  while (1)
  {
    v40 = sub_29788C514(*v37);
    v41 = *sub_29782DEAC(a2, v35);
    v42 = sub_29782DEAC(a3, v35);
    result = sub_297892898(v40, v41, *v42);
    if (!result)
    {
      return result;
    }

    ++v35;
    if (++v37 == v39)
    {
      goto LABEL_32;
    }
  }
}

uint64_t sub_297892D08(uint64_t a1, int a2)
{
  v7 = a1;
  v3 = sub_2977FB720(&v7);
  result = sub_2978970D4(v3);
  if (result)
  {
    v5 = sub_2977FB720(&v7);
    v6 = sub_297890568(v5);
    return sub_29788862C(v6) == a2;
  }

  return result;
}

_BYTE *sub_297892DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  v5 = sub_297890358(a1, v4);
  v6 = sub_29783CFFC(a2);
  v7 = sub_297890358(a1, v6);
  v8 = sub_297805510(a2);
  v9 = sub_297890358(a1, v8);
  if (sub_2978903F4(v5))
  {
    return v5;
  }

  v11 = sub_2978903F4(v7);
  result = v7;
  if (!v11)
  {
    v12 = sub_2978903F4(v9);
    result = v9;
    if (!v12)
    {
      if (*v5)
      {
        return v7;
      }

      else
      {
        return v9;
      }
    }
  }

  return result;
}