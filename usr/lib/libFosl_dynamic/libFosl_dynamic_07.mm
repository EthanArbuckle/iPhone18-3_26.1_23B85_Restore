uint64_t sub_29786D0A4(uint64_t a1)
{
  sub_29784FB00(v27);
  sub_29787C4FC(a1, v27);
  v26 = 0;
  result = sub_29786DDA4(v27, &v26, 736, a1, 0);
  if ((result & 1) == 0)
  {
    v3 = v26;
    if (!v26)
    {
      sub_29785A4E4(a1, v27, 805, v25);
      sub_29782963C(v25);
    }

    v4 = **(a1 + 24);
    if ((v4 & 0x81) != 0)
    {
      v5 = 0x80000000;
    }

    else
    {
      v5 = 0x8000;
    }

    if (v3 >= v5)
    {
      sub_29785A4E4(a1, v27, 804, v18);
      sub_29785965C(v18, v5);
      v6 = v18;
    }

    else
    {
      if (v3 < 0x8000 || (v4 & 0x80) == 0)
      {
LABEL_13:
        sub_29784FB00(v23);
        sub_29787C4FC(a1, v23);
        if (sub_29784FF04(v23, 2))
        {
          v7 = -1;
          goto LABEL_15;
        }

        if (sub_297850F64(v23, 13))
        {
          sub_29785A4E4(a1, v23, 735, v22);
          v12 = v22;
        }

        else
        {
          if (!sub_297860C44(v23))
          {
            sub_29784CE50(v17, v23);
            sub_297859108(v18, v17[0], v17[1], a1, 1);
            if ((v19 & 1) == 0)
            {
              if (v20 != 1)
              {
                v13 = *(a1 + 48);
                v14 = sub_297860C54(v18);
                v7 = sub_29783F4BC(v13, v14, v15);
                sub_2978696A4(a1, "line", 1);
                sub_297860CA4(v18);
LABEL_15:
                v8 = *(a1 + 48);
                v9 = sub_2977FB5F0(v27);
                result = sub_29783F520(v8, v9, v3, v7);
                v10 = *(a1 + 872);
                if (v10)
                {
                  v11 = (*(**(a1 + 808) + 32))(*(a1 + 808));
                  sub_297829180(v18);
                  return (*(*v10 + 16))(v10, v11, 3, 0, v18[0]);
                }

                return result;
              }

              sub_29785A4E4(a1, v23, 737, v16);
              sub_29782963C(v16);
            }

            sub_297869264(a1);
            return sub_297860CA4(v18);
          }

          sub_29785A4E4(a1, v23, 19, v21);
          v12 = v21;
        }

        sub_29782963C(v12);
        return sub_297869264(a1);
      }

      sub_29785A4E4(a1, v27, 869, v24);
      v6 = v24;
    }

    sub_29782963C(v6);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_29786D370(uint64_t a1, unsigned int *a2, int a3)
{
  if (sub_29780B1BC((a1 + 800)))
  {
    v6 = sub_2977FB720(a1 + 800);

    return sub_297879894(v6);
  }

  else
  {
    sub_297806EC8(v16);
    v8 = sub_2977FB720(a1 + 792);
    sub_297853B30(v8, v16);
    v15[0] = sub_297801F10(v16);
    v15[1] = v9;
    sub_2977FB7B4(v14, " ");
    v10 = sub_297817EE8(v15, v14[0], v14[1]);
    v12 = v11;
    if (a3)
    {
      v13 = 839;
    }

    else
    {
      v13 = 723;
    }

    sub_29785A4E4(a1, a2, v13, v15);
    sub_2978295C0(v15, v10, v12);
    sub_29782963C(v15);
    return sub_297801F60(v16);
  }
}

uint64_t sub_29786D474(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v6 = **(a1 + 24);
  if ((v6 & 0x400) != 0)
  {
    return sub_29786B700(a1, a2, a3, 0, 1);
  }

  if ((v6 & 4) == 0)
  {
    sub_29785A4E4(a1, a3, 801, v8);
    sub_29782963C(v8);
    return sub_29786B700(a1, a2, a3, 0, 1);
  }

  return sub_29786E8AC(a1, a3);
}

uint64_t sub_29786D51C(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  sub_29785A4E4(a1, a3, 802, v12);
  sub_29782963C(v12);
  v6 = *(a1 + 816);
  if (sub_297872188(a1))
  {
    sub_29785A4E4(a1, a3, 842, v11);
    v7 = v11;
LABEL_6:
    sub_29782963C(v7);
    v8 = 0;
    return sub_29786B700(a1, a2, a3, v8, 0);
  }

  if (!v6)
  {
    sub_29785A4E4(a1, a3, 841, v10);
    v7 = v10;
    goto LABEL_6;
  }

  v8 = v6 + 16;
  return sub_29786B700(a1, a2, a3, v8, 0);
}

void sub_29786D5D8(uint64_t a1, unsigned int *a2)
{
  sub_29785A4E4(a1, a2, 800, v11);
  sub_29782963C(v11);
  sub_29784FB00(v10);
  sub_29787C4FC(a1, v10);
  if (sub_297850F64(v10, 13) && sub_297850F64(v10, 14))
  {
    sub_29785A4E4(a1, v10, 742, v9);
    sub_29782963C(v9);
    if (!sub_297850F64(v10, 2))
    {
      return;
    }

LABEL_7:
    sub_297869264(a1);
    return;
  }

  if (sub_297860C44(v10))
  {
    sub_29785A4E4(a1, v10, 19, v8);
    sub_29782963C(v8);
    goto LABEL_7;
  }

  sub_2978696A4(a1, "ident", 0);
  if (*(a1 + 872))
  {
    v7 = 0;
    sub_297853628(a1, v10, &v7, &v6);
    if ((v7 & 1) == 0)
    {
      v4 = *(a1 + 872);
      v5 = sub_2977FB5F0(a2);
      (*(*v4 + 64))(v4, v5, &v6);
    }

    std::string::~string(&v6);
  }
}

uint64_t sub_29786D730(uint64_t *a1, unsigned int *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (sub_29783B9A8(a1[3]))
  {
    sub_29784FB00(v22);
    sub_2978692B0(a1, v22);
    v21 = 0;
    result = sub_29786DDA4(v22, &v21, 641, a1, 2);
    if ((result & 1) == 0)
    {
      v5 = a1[6];
      v6 = sub_2977FB5F0(a2);
      v7 = sub_29783E664(v5, v6);
      if (sub_297841D38(a1[6], v7, SHIDWORD(v7), 0) >= 2 && (sub_29786E230(a1[2]) & 1) == 0)
      {
        sub_29785A4E4(a1, a2, 635, v20);
        sub_29782963C(v20);
      }

      sub_29786E238(v23);
      v19[0] = v23;
      v19[1] = a1;
      memset(v18, 0, sizeof(v18));
      sub_29784FB00(v18);
      sub_2978405F8(v23, v18);
      v8 = sub_297819418(v23);
      sub_297853ED0(v8);
      v9 = sub_297819418(v23);
      sub_297853640(v9, 523);
      v10 = sub_297819418(v23);
      v11 = sub_2977FB5F0(v22);
      sub_29780819C(v10, v11);
      sub_2978405F8(v23, v22);
      v12 = v21;
      v13 = sub_297819418(v23);
      sub_2977FD5DC(v13, v12);
      sub_29784FB00(v18);
      sub_2978692B0(a1, v18);
      if (!sub_29784FF04(v18, 2))
      {
        sub_29784F384(v18);
        sub_2978405F8(v23, v18);
        sub_2978696A4(a1, "version", 0);
      }

      sub_29786E23C(v19);
      result = sub_2977FD134(v23);
    }
  }

  else
  {
    sub_29785A4E4(a1, a2, 638, v23);
    v14 = sub_29784F384(a2);
    v15 = sub_297828314(v14);
    sub_2978295C0(v23, v15, v16);
    sub_29782963C(v23);
    result = sub_297869264(a1);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29786D960(uint64_t a1, unsigned int *a2)
{
  if (!sub_29783B9A8(*(a1 + 24)))
  {
    sub_29785A4E4(a1, a2, 638, v20);
    v5 = sub_29784F384(a2);
    v6 = sub_297828314(v5);
    sub_2978295C0(v20, v6, v7);
    sub_29782963C(v20);
    goto LABEL_6;
  }

  sub_29784FB00(v20);
  sub_2978692B0(a1, v20);
  if (sub_29784FF04(v20, 2))
  {
    sub_29785A4E4(a1, v20, 637, v19);
    sub_2978563C8(v19, 0);
    v4 = v19;
LABEL_4:
    sub_29782963C(v4);
    return;
  }

  sub_29784FB00(v19);
  sub_2978692B0(a1, v19);
  if (sub_297850F64(v19, 60))
  {
    sub_29785A4E4(a1, v19, 9, v18);
    v8 = sub_29784F384(v20);
    v9 = sub_297828314(v8);
    v11 = sub_2978295C0(v18, v9, v10);
    sub_297869528(v11, 0x3Cu);
    sub_29782963C(v18);
    if (!sub_297850F64(v19, 2))
    {
      return;
    }

LABEL_6:
    sub_297869264(a1);
    return;
  }

  sub_29784FB00(v18);
  sub_2978692B0(a1, v18);
  if (sub_29784FF04(v18, 2))
  {
    sub_29785A4E4(a1, v18, 637, v17);
    sub_2978563C8(v17, 1);
    v4 = v17;
    goto LABEL_4;
  }

  sub_2978696A4(a1, "extension", 0);
  sub_29784FB00(v17);
  sub_297853ED0(v17);
  sub_297853640(v17, 524);
  v12 = sub_2977FB5F0(v20);
  sub_29780819C(v17, v12);
  sub_29784FB00(v16);
  sub_297853ED0(v16);
  sub_297853640(v16, 2);
  v13 = sub_2977FB5F0(v18);
  sub_29780819C(v16, v13);
  v14 = sub_2977FA198(96);
  for (i = 0; i != 96; i += 24)
  {
    sub_29784FB00(v14 + i);
  }

  *v14 = *v17;
  *(v14 + 15) = *&v17[15];
  *(v14 + 24) = *v20;
  *(v14 + 39) = *(&v20[3] + 3);
  *(v14 + 48) = *v18;
  *(v14 + 63) = *(&v18[3] + 3);
  *(v14 + 87) = *&v16[15];
  *(v14 + 72) = *v16;
  sub_2978727D0(a1, v14, 4, 1, 1);
}

uint64_t sub_29786DBF8(uint64_t a1)
{
  sub_29784FB00(v7);
  sub_297869590(a1, v7, 2);
  result = sub_29784FF04(v7, 2);
  if ((result & 1) == 0)
  {
    sub_2978696A4(a1, "__public_macro", 0);
    v3 = sub_29784F384(v7);
    if (sub_29785A890(a1, v3))
    {
      v4 = sub_2977FB5F0(v7);
      v5 = sub_2978691C0(a1, v4, 1);
      return sub_297873E88(a1, v3, v5);
    }

    else
    {
      sub_29785A4E4(a1, v7, 753, v6);
      sub_297869558(v6, v3);
      return sub_29782963C(v6);
    }
  }

  return result;
}

uint64_t sub_29786DCCC(uint64_t a1)
{
  sub_29784FB00(v7);
  sub_297869590(a1, v7, 2);
  result = sub_29784FF04(v7, 2);
  if ((result & 1) == 0)
  {
    sub_2978696A4(a1, "__private_macro", 0);
    v3 = sub_29784F384(v7);
    if (sub_29785A890(a1, v3))
    {
      v4 = sub_2977FB5F0(v7);
      v5 = sub_2978691C0(a1, v4, 0);
      return sub_297873E88(a1, v3, v5);
    }

    else
    {
      sub_29785A4E4(a1, v7, 753, v6);
      sub_297869558(v6, v3);
      return sub_29782963C(v6);
    }
  }

  return result;
}

uint64_t sub_29786DDA4(unsigned int *a1, unsigned int *a2, int a3, uint64_t a4, int a5)
{
  if (sub_297850F64(a1, 8))
  {
    sub_29785A4E4(a4, a1, a3, v31);
    sub_29782963C(v31);
    if (sub_297850F64(a1, 2))
    {
      sub_297869264(a4);
    }

    return 1;
  }

  sub_297811C54(v30);
  v11 = sub_297847BE0(a1);
  sub_297806DA4(v30, v11);
  v29 = sub_2977FD108(v30, 0);
  v28 = 0;
  v12 = sub_29785A4C8(a4, a1, &v29, &v28);
  if (v28)
  {
LABEL_22:
    v10 = 1;
    goto LABEL_23;
  }

  *a2 = 0;
  if (!v12)
  {
    goto LABEL_18;
  }

  v25 = a5;
  v13 = 0;
  v14 = 0;
  v15 = v29;
  v16 = v12;
  do
  {
    v17 = v15[v13];
    if (v17 == 39)
    {
      goto LABEL_12;
    }

    if ((sub_29782A734(v15[v13]) & 1) == 0)
    {
      v21 = sub_2977FB5F0(a1);
      v22 = sub_2978571C4(a4, v21, v13);
      sub_297850EEC(a4, v22, 734, v27);
      sub_2978563C8(v27, v25);
      v23 = v27;
LABEL_21:
      sub_29782963C(v23);
      sub_297869264(a4);
      goto LABEL_22;
    }

    v18 = v17 + 10 * v14 - 48;
    if (v18 < v14)
    {
      sub_29785A4E4(a4, a1, a3, v26);
      v23 = v26;
      goto LABEL_21;
    }

    *a2 = v18;
    v14 = v17 + 10 * v14 - 48;
LABEL_12:
    ++v13;
  }

  while (v16 != v13);
  if (*v15 == 48 && v14 != 0)
  {
    v20 = sub_2977FB5F0(a1);
    sub_297850EEC(a4, v20, 889, v27);
    sub_2978563C8(v27, v25);
    sub_29782963C(v27);
  }

LABEL_18:
  v10 = 0;
LABEL_23:
  sub_297801F60(v30);
  return v10;
}

uint64_t sub_29786DFA8(_BYTE *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  sub_29784FB00(v24);
  sub_29787C4FC(a5, v24);
  if (sub_29784FF04(v24, 2))
  {
    return 0;
  }

  v25 = 0;
  if (sub_29786DDA4(v24, &v25, 738, a5, 0))
  {
    return 1;
  }

  v11 = v25;
  if (v25 == 2)
  {
    *a2 = 1;
    v13 = sub_29781F408(a5);
    v14 = sub_2977FB5F0(v24);
    v23 = sub_29783F5D4(v13, v14);
    v15 = sub_2977FB5F0(v24);
    sub_297841B1C(v13, v15, 1, v22);
    if (sub_29783E4C0(v22))
    {
      return 1;
    }

    v21 = sub_29782AFB0(v22);
    if (sub_297829730(&v21) || (v20 = sub_29783F5D4(v13, v21), sub_2978435D4(&v20, &v23)))
    {
      sub_29785A4E4(a5, v24, 739, v19);
      v12 = v19;
      goto LABEL_20;
    }

    sub_29787C4FC(a5, v24);
    if (sub_29784FF04(v24, 2))
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v25 == 1)
  {
    *a1 = 1;
    sub_29787C4FC(a5, v24);
    if (sub_29784FF04(v24, 2))
    {
      return 0;
    }

LABEL_7:
    if (sub_29786DDA4(v24, &v25, 738, a5, 0))
    {
      return 1;
    }

    v11 = v25;
  }

  if (v11 != 3)
  {
    sub_29785A4E4(a5, v24, 738, v18);
    v12 = v18;
    goto LABEL_20;
  }

  *a3 = 1;
  sub_29787C4FC(a5, v24);
  if (sub_29784FF04(v24, 2))
  {
    return 0;
  }

  if ((sub_29786DDA4(v24, &v25, 738, a5, 0) & 1) == 0)
  {
    if (v25 != 4)
    {
      sub_29785A4E4(a5, v24, 738, v17);
      v12 = v17;
      goto LABEL_20;
    }

    *a4 = 1;
    sub_29787C4FC(a5, v24);
    if (!sub_29784FF04(v24, 2))
    {
      sub_29785A4E4(a5, v24, 738, v16);
      v12 = v16;
LABEL_20:
      sub_29782963C(v12);
      sub_297869264(a5);
      return 1;
    }

    return 0;
  }

  return 1;
}

void sub_29786E23C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  memset(v13, 0, sizeof(v13));
  sub_29784FB00(v13);
  sub_2978405F8(v3, v13);
  v4 = sub_297819418(*a1);
  sub_297853ED0(v4);
  v5 = sub_297819418(*a1);
  sub_297853640(v5, 2);
  v6 = sub_29783E83C(*a1);
  v7 = v6;
  v8 = 24 * v6;
  if (is_mul_ok(v6, 0x18uLL))
  {
    v9 = 24 * v6;
  }

  else
  {
    v9 = -1;
  }

  v10 = sub_2977FA198(v9);
  v11 = v10;
  if (v7)
  {
    do
    {
      v10 = sub_29784FB00(v10) + 24;
      v8 -= 24;
    }

    while (v8);
  }

  sub_2977FB720(*a1);
  sub_2977FB7B8(*a1);
  sub_297859C14();
  v12 = sub_29783E83C(*a1);
  sub_2978727D0(v2, v11, v12, 1, 1);
}

uint64_t sub_29786E338(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = sub_297803A20(a3, 0) == 60;
  v7 = v6;
  if (v6)
  {
    if (sub_29782E158(a3) != 62)
    {
      sub_297850EEC(a1, a2, 718, v17);
      v8 = v17;
LABEL_12:
      sub_29782963C(v8);
      sub_297804560(&v16);
      *a3 = v16;
      return 1;
    }
  }

  else
  {
    v9 = sub_297803A20(a3, 0);
    if (v9 != 34)
    {
      sub_297850EEC(a1, a2, 718, v14);
      v8 = v14;
      goto LABEL_12;
    }

    if (sub_29782E158(a3) != 34)
    {
      sub_297850EEC(a1, a2, 718, v15);
      v8 = v15;
      goto LABEL_12;
    }
  }

  if (sub_2977FB7B8(a3) <= 2)
  {
    sub_297850EEC(a1, a2, 707, v13);
    v8 = v13;
    goto LABEL_12;
  }

  v10 = sub_2977FB7B8(a3);
  *a3 = sub_297805EA4(a3, 1uLL, v10 - 2);
  a3[1] = v11;
  return v7;
}

uint64_t sub_29786E470(uint64_t a1, const void **a2, _DWORD *a3)
{
  sub_29784FB00(v15);
  sub_29787C4FC(a1, v15);
  while (sub_297850F64(v15, 2))
  {
    *a3 = sub_2977FB5F0(v15);
    if (sub_29784FF04(v15, 3))
    {
      sub_297869670(a1);
    }

    else
    {
      if (sub_29785480C(v15))
      {
        LOBYTE(__src) = 32;
        sub_2977FCD50(a2, &__src);
      }

      v6 = sub_2977FD0D4(a2);
      v7 = sub_297847BE0(v15);
      sub_297806DA4(a2, v7 + v6);
      __src = sub_2977FD108(a2, v6);
      v8 = sub_29785A4C8(a1, v15, &__src, 0);
      v9 = __src;
      if (v9 != sub_2977FD108(a2, v6))
      {
        v10 = sub_2977FD108(a2, v6);
        memcpy(v10, __src, v8);
      }

      if (sub_297847BE0(v15) != v8)
      {
        sub_297806DA4(a2, v8 + v6);
      }

      if (sub_29784FF04(v15, 50))
      {
        return 0;
      }
    }

    sub_29787C4FC(a1, v15);
  }

  v11 = sub_2977FB5F0(v15);
  sub_297850EEC(a1, v11, 718, v13);
  sub_29782963C(v13);
  return 1;
}

uint64_t sub_29786E61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FB720(a1 + 456);
  v11 = sub_29782F7A4(v6, a2, a3);
  v7 = sub_2977FB720(a1 + 456);
  v10 = sub_29781AD1C(v7);
  if (sub_29781550C(&v11, &v10))
  {
    v8 = sub_29781AD54(&v11);
    sub_2978044E8(&v12, v8 + 8);
  }

  else
  {
    sub_297804560(&v12);
  }

  return v12;
}

uint64_t sub_29786E6B8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v6 = 48;
  if (a3)
  {
    v6 = 52;
  }

  v7 = *(a1 + v6);
  v9 = sub_29780A294((a1 + 24), a2);
  v10 = sub_29786F280(&v9, v7);
  sub_297809B4C(&v11, &v10);
  result = sub_29786F138((a1 + 24), v11, a2);
  if ((v3 & 1) == 0)
  {
    ++*(a1 + 48);
  }

  ++*(a1 + 52);
  return result;
}

void sub_29786E758(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_297859984(a1);

  sub_297854348(v7, v8, a2, a3, a4);
}

uint64_t sub_29786E7AC(uint64_t a1)
{
  v1 = sub_29783CDDC(a1);
  sub_2978044E8(&v3, v1);
  return v3;
}

void sub_29786E7E0(uint64_t a1, int a2, unsigned int a3, __int16 a4, uint64_t a5)
{
  v10 = sub_2977FA198(24);
  v11 = sub_29784FB00(v10);
  sub_297853ED0(v11);
  sub_297853640(v10, a4);
  sub_29780819C(v10, a2);
  sub_29786FA00(v10, a3);
  sub_2977FD5DC(v10, a5);

  sub_2978727D0(a1, v10, 1, 1, 1);
}

BOOL sub_29786E8AC(uint64_t a1, unsigned int *a2)
{
  sub_29785A4E4(a1, a2, 726, v4);
  sub_29782963C(v4);
  return sub_297869264(a1);
}

uint64_t sub_29786E8F0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v30[35] = *MEMORY[0x29EDCA608];
  sub_29786EC00(v30);
  while (1)
  {
    sub_2978692B0(a1, a3);
    v6 = sub_2978503FC(a3);
    if (v6 == 2)
    {
      sub_29785A4E4(a1, a3, 744, v25);
      v11 = v25;
      goto LABEL_27;
    }

    if (v6 == 26)
    {
      v12 = *(a1 + 24);
      if ((*v12 & 1) == 0)
      {
        if ((*v12 & 0x80) != 0)
        {
          v13 = 873;
        }

        else
        {
          v13 = 820;
        }

        sub_29785A4E4(a1, a3, v13, v28);
        sub_29782963C(v28);
        v12 = *(a1 + 24);
      }

      if ((*(v12 + 17) & 0x40) != 0)
      {
        sub_29785A4E4(a1, a3, 745, v27);
        v11 = v27;
        goto LABEL_27;
      }

      sub_2978692B0(a1, a3);
      if (sub_297850F64(a3, 22))
      {
        sub_29785A4E4(a1, a3, 744, v26);
        v11 = v26;
        goto LABEL_27;
      }

      sub_2978040A4(v30, (a1 + 328));
      sub_29786EC04(a2);
LABEL_30:
      v15 = sub_29782DEAC(v30, 0);
      v16 = sub_29780406C(v30);
      sub_29786EC14(a2, v15, v16, a1 + 104);
      goto LABEL_31;
    }

    if (v6 == 22)
    {
      break;
    }

    v24 = sub_29784F384(a3);
    if (!v24)
    {
      sub_29785A4E4(a1, a3, 732, v23);
      v11 = v23;
      goto LABEL_27;
    }

    v7 = sub_2977FB720(v30);
    v8 = sub_2977FB7B8(v30);
    v9 = sub_297863818(v7, v8, &v24);
    if (v9 != sub_2977FB7B8(v30))
    {
      sub_29785A4E4(a1, a3, 706, v22);
      sub_297869558(v22, v24);
      v11 = v22;
      goto LABEL_27;
    }

    sub_2978040A4(v30, &v24);
    sub_2978692B0(a1, a3);
    v10 = sub_2978503FC(a3);
    if (v10 != 64)
    {
      if (v10 != 22)
      {
        if (v10 != 26)
        {
          sub_29785A4E4(a1, a3, 713, v21);
          v11 = v21;
          goto LABEL_27;
        }

        sub_29785A4E4(a1, a3, 791, v20);
        sub_29782963C(v20);
        sub_2978692B0(a1, a3);
        if (sub_297850F64(a3, 22))
        {
          sub_29785A4E4(a1, a3, 744, v19);
          v11 = v19;
LABEL_27:
          sub_29782963C(v11);
          v14 = 1;
          goto LABEL_32;
        }

        sub_29786EC80(a2);
      }

      goto LABEL_30;
    }
  }

  if (!sub_297806904(v30))
  {
    sub_29785A4E4(a1, a3, 715, v29);
    v11 = v29;
    goto LABEL_27;
  }

LABEL_31:
  v14 = 0;
LABEL_32:
  sub_2977FD134(v30);
  v17 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t sub_29786EC14(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v6 = result;
    *(result + 16) = a3;
    result = sub_29786FA38(a4, a3);
    v7 = 0;
    *(v6 + 8) = result;
    do
    {
      *(*(v6 + 8) + v7) = *(a2 + v7);
      v7 += 8;
    }

    while (8 * a3 != v7);
  }

  return result;
}

uint64_t sub_29786EC90(uint64_t result, uint64_t a2, int a3)
{
  *(result + 16) = a2;
  *(result + 28) = a3;
  return result;
}

unsigned int *sub_29786ECAC(unsigned int *a1, int a2)
{
  if (a2)
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  v3 = *a1 & 0xFEFFFFFF | v2;
  *a1 = v3;
  if (!a2)
  {
    return sub_29783C17C(a1);
  }

  *a1 = v3 | 0x4000000;
  return a1;
}

uint64_t sub_29786ED54(uint64_t a1, unsigned int a2)
{
  v3 = sub_29786FB80(a2);

  return sub_29780A6BC(a1, v3);
}

void *sub_29786ED94(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = sub_2977FB5F0(a3);
  sub_297804560(v8);
  return sub_29786FA44(a1, a2, a3, v6, 0, v8[0], v8[1]);
}

uint64_t sub_29786EE00(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(result + 244) = *(result + 244) & 0xFDFF | v2;
  return result;
}

uint64_t sub_29786EE20(uint64_t a1, unsigned int a2)
{
  v3 = sub_29786FB80(a2);

  return sub_29780A3EC(a1, v3);
}

uint64_t sub_29786EE60(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 8) || *(result + 2) == 1)
  {
    return sub_29786FAA4(result);
  }

  *result = 257;
  *(result + 8) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t sub_29786EE90(uint64_t result)
{
  if (!*(result + 8))
  {
    return sub_29786FAA4(result);
  }

  *result = 0;
  return result;
}

uint64_t sub_29786EEA4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  result = sub_29786EED4(a1, 0, a3, a4, a5, a6);
  *(result + 16) = a2;
  return result;
}

uint64_t sub_29786EED4(uint64_t a1, char a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a5;
  v12[1] = a6;
  *a1 = 0;
  v8 = a2 & 3 | (32 * (a4 != 0)) | *(a1 + 12) & 0xFFFFFFC0 | 0x10;
  *(a1 + 8) = a3;
  *(a1 + 12) = v8;
  v9 = sub_2977FB7B8(v12);
  v10 = *(a1 + 12);
  *(a1 + 12) = v10 & 0x3F | (v9 << 6);
  if ((v10 & 0x20) != 0)
  {
    *sub_29786EF88(a1) = a4;
    sub_2977FB720(v12);
    sub_29786EFC4(v12);
    sub_297844084();
  }

  return a1;
}

uint64_t sub_29786EF88(uint64_t a1)
{
  v2 = sub_29785B5A4(a1);
  if (v2)
  {
    return v2 + 24;
  }

  else
  {
    return sub_29781BF50(a1) + 16;
  }
}

uint64_t sub_29786EFE8(uint64_t a1, int a2, int a3)
{
  sub_297804560(v8);
  result = sub_29786EED4(a1, 2, a2, 0, v8[0], v8[1]);
  if (a3)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 12) = *(a1 + 12) & 0xFFFFFFEF | v7;
  return result;
}

uint64_t sub_29786F068(uint64_t a1)
{
  v2 = *sub_29783D2C4(a1);
  sub_29783D2E0(a1);
  return v2;
}

uint64_t sub_29786F09C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return sub_297853F2C(a1) ^ 1;
  }

  else
  {
    return a2 != 0;
  }
}

uint64_t sub_29786F0CC(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = (*(a2 + 436) & 0x20) != 0;
  v2 = *(a2 + 436);
  if ((v2 & 0x40) != 0)
  {
    *(a2 + 436) = v2 & 0xFFDF;
  }

  return result;
}

uint64_t sub_29786F110(uint64_t result, uint64_t a2, char a3, int a4)
{
  if (a4)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(result + 8) = v4 & 0xFC | a3 & 3 | *(result + 8) & 0xC0;
  *result = a2;
  return result;
}

uint64_t sub_29786F138(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v5 = *a1;
  v21[0] = sub_29780A294(a1, a2);
  v6 = v5 + 16 * sub_29786F2B0(&v22, v21);
  v7 = a1[1];
  if (v7 >= a1[2])
  {
    v18 = sub_29780AAE8(a1);
    v19 = sub_29780C17C(a1, v18 + 1);
    sub_29780C1F4(v21, v19, (v6 - *a1) >> 4, a1);
    sub_29786F3F4(v21, a3);
    v6 = sub_29786F550(a1, v21, v6);
    sub_29780C2DC(v21);
  }

  else if (v6 == v7)
  {
    sub_29780C048(a1, a3);
  }

  else
  {
    sub_29786F2E8(a1, v6, v7, v6 + 16);
    v9 = nullsub_1(a3, v8);
    v11 = nullsub_1(v6, v10);
    v13 = nullsub_1(a1[1], v12);
    v14 = sub_29786F3A4(v11, v13, a3);
    v15 = 16;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = v9 + v15;
    v17 = *(v16 + 8);
    *v6 = *v16;
    *(v6 + 8) = v17;
  }

  return sub_2978082EC(a1, v6);
}

uint64_t sub_29786F280(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_29786F9F0(&v3, a2);
  return v3;
}

uint64_t sub_29786F2E8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = a2 + *(a1 + 8) - a4;
  sub_29780C154(v12, a1, (a3 - v6) >> 4);
  if (a3 > v6)
  {
    v8 = v13;
    v9 = v6;
    do
    {
      v10 = nullsub_1(v8, v7);
      sub_29780C158(a1, v10, v9);
      v9 += 16;
      v8 += 16;
      v13 = v8;
    }

    while (v9 < a3);
  }

  sub_297809E88(v12);
  return sub_29786F688();
}

BOOL sub_29786F3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v6 = a3;
  v7 = a2;
  return !sub_2978025BC(&v5, &v6, &v8) && sub_2978025BC(&v4, &v6, &v7);
}

uint64_t sub_29786F3F4(uint64_t *a1, uint64_t a2)
{
  v5 = a1 + 2;
  v4 = a1[2];
  v6 = a1 + 3;
  if (v4 == a1[3])
  {
    v8 = a1 + 1;
    v7 = a1[1];
    if (v7 <= *a1)
    {
      v15 = (v4 - *a1) >> 3;
      v19 = 1;
      v10 = sub_29780338C(&v15, &v19);
      sub_29780C1F4(&v15, *v10, *v10 >> 2, a1[4]);
      sub_2977FDEF4(&v19, a1[1]);
      sub_2977FDEF4(&v14, a1[2]);
      sub_29786F7C0(&v15, v19, v14);
      sub_2977FDE84(a1, &v15);
      sub_2977FDE84(a1 + 1, &v16);
      sub_2977FDE84(v5, &v17);
      sub_2977FDE84(v6, &v18);
      sub_29780C2DC(&v15);
      v4 = a1[2];
    }

    else
    {
      v9 = (((v7 - *a1) >> 4) + 1 + ((((v7 - *a1) >> 4) + 1) >> 63)) >> 1;
      v4 = sub_29786F7A4();
      *v5 = v4;
      *v8 -= 16 * v9;
    }
  }

  v11 = a1[4];
  v12 = nullsub_1(v4, v4);
  result = sub_29780C158(v11, v12, a2);
  a1[2] += 16;
  return result;
}

uint64_t sub_29786F550(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  nullsub_1(a1, a2);
  v6 = a2[1];
  v8 = nullsub_1(a3, v7);
  v10 = nullsub_1(a1[1], v9);
  v12 = nullsub_1(a2[2], v11);
  sub_29780A154(a1, v8, v10, v12);
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v13 = a2[1] + *a1 - a3;
  v15 = nullsub_1(*a1, v14);
  v17 = nullsub_1(a3, v16);
  v19 = nullsub_1(v13, v18);
  sub_29780A154(a1, v15, v17, v19);
  a2[1] = v13;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  v20 = sub_29780AAE8(a1);
  nullsub_1(a1, v20);
  return v6;
}

uint64_t sub_29786F6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_29786F738(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_29786F748(const void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 - (a2 - a1));
  v5 = a2;
  sub_29786F790(v4, a1, (a2 - a1) >> 4);
  return sub_2977FD958(&v5, &v4);
}

void *sub_29786F790(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, 16 * a3 - 7);
  }

  return result;
}

uint64_t sub_29786F7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29786F998(a2, a3);

  return sub_29786F908(a1, a2, v5);
}

uint64_t sub_29786F810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_29786F8A0(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_29786F8B0(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_29786F790(a3, a1, (a2 - a1) >> 4);
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

uint64_t sub_29786F908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  sub_29786F99C(v9, (a1 + 16), a3);
  while (v9[0] != v9[1])
  {
    v5 = *(a1 + 32);
    v6 = nullsub_1(v9[0], v4);
    v7 = sub_2977FB720(&v10);
    sub_29780C158(v5, v6, v7);
    v9[0] += 16;
    sub_29786F9A0(&v10);
  }

  return sub_29784F0A0(v9);
}

void *sub_29786F9B0(void *result, void *a2, uint64_t a3)
{
  v3 = *a2 + 16 * a3;
  *result = *a2;
  result[1] = v3;
  result[2] = a2;
  return result;
}

uint64_t sub_29786F9C4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return sub_29786F2B0(&v3, &v4);
}

uint64_t sub_29786FA00(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  result = sub_2977FB5F0(&v4);
  *(a1 + 4) = result;
  return result;
}

void *sub_29786FA44(uint64_t a1, unsigned int *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_2978690B8(a1, a3, a4, a5, a6, a7);
  sub_297873E88(a1, a2, v9);
  return v9;
}

uint64_t sub_29786FAA4(uint64_t result)
{
  *result = 1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

unint64_t sub_29786FAC8(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (result != a2)
  {
    v2 = a2 - 16;
    if (a2 - 16 > result)
    {
      do
      {
        result = sub_29786FB24(&v3, &v2);
        v2 -= 16;
        v3 += 16;
      }

      while (v3 < v2);
    }
  }

  return result;
}

int *sub_29786FB38(uint64_t a1, uint64_t a2)
{
  sub_2977FDE84(a1, a2);

  return sub_29780A814((a1 + 8), (a2 + 8));
}

uint64_t sub_29786FBC4(uint64_t a1, void *a2)
{
  LOBYTE(v15) = 1;
  sub_297859FFC(v18, (a1 + 438), &v15);
  v4 = *(a1 + 436) & 0x20;
  *(a1 + 436) &= ~0x20u;
  sub_29784FB00(v17);
  sub_29786FD54(a1, v17);
  v5 = sub_297805510(a1);
  v6 = sub_29786FD94(v5);
  sub_29786FD9C(&v15, v6);
  if (!sub_29786FDA0(&v15, v17, &v13, 1, a1))
  {
    if (sub_29784FF04(v17, 2))
    {
      if (v13 == 1)
      {
        *a2 = v14;
      }
    }

    else
    {
      v9 = sub_2978711BC(59);
      v10 = sub_297870730(&v15, v9, v17, 1, a1);
      v7 = sub_297850F64(v17, 2);
      if (v10)
      {
        goto LABEL_3;
      }

      if (v7)
      {
        sub_29785A4E4(a1, v17, 714, v12);
        sub_29782963C(v12);
        sub_297869264(a1);
      }
    }

    *(a1 + 436) = *(a1 + 436) & 0xFFDF | v4;
    v8 = sub_297870714(v16, 0);
    goto LABEL_13;
  }

  v7 = sub_297850F64(v17, 2);
LABEL_3:
  if (v7)
  {
    sub_297869264(a1);
  }

  v8 = 0;
  *(a1 + 436) = *(a1 + 436) & 0xFFDF | v4;
LABEL_13:
  sub_29787126C(&v15);
  sub_29785A0A8(v18);
  return v8;
}

uint64_t sub_29786FD54(uint64_t a1, uint64_t a2)
{
  do
  {
    sub_29787C4FC(a1, a2);
    result = sub_2978503FC(a2);
  }

  while (result == 5);
  return result;
}

uint64_t sub_29786FDA0(_DWORD *a1, unsigned int *a2, int *a3, uint64_t a4, uint64_t a5)
{
  *a3 = 2;
  if (sub_29784FF04(a2, 3))
  {
    if (sub_2978712E0(a5))
    {
      v10 = sub_2978712E0(a5);
      (*(*v10 + 40))(v10);
    }

    sub_297869670(a5);
    sub_29786FD54(a5, a2);
  }

  v11 = sub_29784F384(a2);
  if (!v11)
  {
    v14 = sub_2978503FC(a2);
    if (v14 <= 20)
    {
      if ((v14 - 9) < 4)
      {
        if (sub_297860C44(a2))
        {
          sub_29785A4E4(a5, a2, 733, v60);
          sub_2978563C8(v60, 0);
          sub_29782963C(v60);
        }

        sub_2978068F8(v65);
        v55 = 0;
        v54[0] = sub_29787BB08(a5, a2, v65, &v55);
        v54[1] = v15;
        if (v55)
        {
          v16 = 1;
        }

        else
        {
          v25 = sub_2977FB720(v54);
          v26 = sub_2977FB728(v54);
          v27 = sub_2977FB5F0(a2);
          v28 = sub_2978503FC(a2);
          sub_297858744(v60, v25, v26, v27, a5, v28);
          v16 = sub_2978716BC(v60);
          if ((v16 & 1) == 0)
          {
            v29 = sub_297805510(a5);
            if (sub_29785873C(v60))
            {
              v30 = sub_297847E30(v29);
            }

            else if (sub_29785872C(v60))
            {
              v30 = sub_297857EF4(v29);
            }

            else if (sub_2978716C4(v60))
            {
              v30 = sub_297859890(v29);
            }

            else if (sub_2978716D4(v60))
            {
              v30 = sub_297859898(v29);
            }

            else
            {
              v30 = sub_29781C25C();
            }

            sub_2978712AC(v53, v30, 1);
            v40 = sub_2977FB720(v60);
            sub_297871634(v53, v40);
            if (!sub_2978716C4(v60) && !sub_2978716D4(v60))
            {
              v41 = (*(sub_29783CFFC(a5) + 16) & 0x800) == 0;
              sub_29787165C(v53, v41);
            }

            v42 = sub_2977FB5F0(a1 + 2);
            if (v42 <= sub_2977FB5F0(v53))
            {
              sub_297871798((a1 + 2), v53);
            }

            else
            {
              v43 = sub_2977FB5F0(a1 + 2);
              sub_2978716E4(v53, v43, v52);
              sub_297871760((a1 + 2), v52);
              sub_297871794(v52);
            }

            v44 = sub_2977FB5F0(a2);
            sub_297871664(a1, v44);
            sub_29786FD54(a5, a2);
            sub_297871794(v53);
          }

          sub_2978717CC(v60);
        }

        goto LABEL_85;
      }

      if (v14 != 2)
      {
        if (v14 == 8)
        {
          sub_297811C54(v65);
          v52[0] = 0;
          v23 = sub_29787BB08(a5, a2, v65, v52);
          if (v52[0])
          {
            v16 = 1;
LABEL_85:
            sub_297801F60(v65);
            return v16;
          }

          v36 = v23;
          v37 = v24;
          v38 = sub_2977FB5F0(a2);
          sub_2978573A8(v60, v36, v37, v38, a5);
          if (v61)
          {
            goto LABEL_65;
          }

          if ((sub_297857294(v60) & 1) != 0 || v64 == 1)
          {
            sub_29785A4E4(a5, a2, 725, v59);
            sub_29782963C(v59);
LABEL_65:
            v16 = 1;
LABEL_66:
            sub_2978716B8(v60);
            goto LABEL_85;
          }

          if (sub_2978716A8(v60))
          {
            sub_29785A4E4(a5, a2, 733, v53);
            sub_2978563C8(v53, 1);
            sub_29782963C(v53);
          }

          if ((*sub_29783CFFC(a5) & 1) == 0 && v63 == 1)
          {
            if ((*sub_29783CFFC(a5) & 0x40) != 0)
            {
              if ((*sub_29783CFFC(a5) & 0x80) != 0)
              {
                v49 = 63;
              }

              else
              {
                v49 = 39;
              }

              v45 = v58;
              v46 = v58;
              v47 = a5;
              v48 = a2;
            }

            else
            {
              v45 = v57;
              v46 = v57;
              v47 = a5;
              v48 = a2;
              v49 = 38;
            }

            sub_29785A4E4(v47, v48, v49, v46);
            sub_29782963C(v45);
          }

          if (sub_2978575F0(v60, a1 + 2))
          {
            if (a4)
            {
              sub_29785A4E4(a5, a2, 15, v53);
              sub_2978563C8(v53, 1);
              v50 = v53;
LABEL_101:
              sub_29782963C(v50);
            }
          }

          else
          {
            sub_29787165C((a1 + 2), v62);
            if ((v62 & 1) != 0 || !sub_2977FB634(a1 + 2))
            {
              goto LABEL_108;
            }

            if (a4 && sub_2978716B0(v60) == 10)
            {
              sub_29785A4E4(a5, a2, 40, v56);
              v50 = v56;
              goto LABEL_101;
            }
          }

          sub_29787165C((a1 + 2), 1);
LABEL_108:
          v51 = sub_2977FB5F0(a2);
          sub_297871664(a1, v51);
          sub_29786FD54(a5, a2);
          v16 = 0;
          goto LABEL_66;
        }

        goto LABEL_56;
      }

LABEL_43:
      sub_29785A4E4(a5, a2, 717, v66);
      v31 = v66;
LABEL_57:
      sub_29782963C(v31);
      return 1;
    }

    if (v14 <= 34)
    {
      switch(v14)
      {
        case 21:
          v32 = sub_2977FB5F0(a2);
          sub_29786FD54(a5, a2);
          if ((sub_29786FDA0(a1, a2, a3, a4, a5) & 1) == 0)
          {
            if (!sub_29784FF04(a2, 22))
            {
              v16 = 1;
              if (sub_297870730(a1, 1u, a2, a4, a5))
              {
                return v16;
              }

              if (sub_297850F64(a2, 22))
              {
                v39 = sub_2977FB5F0(a2);
                sub_297850EEC(a5, v39, 716, v60);
                sub_2978591B8(v60, a1);
                sub_29782963C(v60);
                sub_297850EEC(a5, v32, 50, v60);
                sub_297869528(v60, 0x15u);
                sub_29782963C(v60);
                return v16;
              }

              *a3 = 2;
            }

            v33 = sub_2977FB5F0(a2);
            sub_2978717D0(a1, v32, v33);
            goto LABEL_21;
          }

          return 1;
        case 22:
          goto LABEL_43;
        case 32:
          v19 = sub_2977FB5F0(a2);
          sub_29786FD54(a5, a2);
          if ((sub_29786FDA0(a1, a2, a3, a4, a5) & 1) == 0)
          {
            sub_297850BFC(a1, v19);
            return 0;
          }

          return 1;
      }

LABEL_56:
      sub_29785A4E4(a5, a2, 720, v67);
      v31 = v67;
      goto LABEL_57;
    }

    switch(v14)
    {
      case '#':
        v34 = sub_2977FB5F0(a2);
        sub_29786FD54(a5, a2);
        if (sub_29786FDA0(a1, a2, a3, a4, a5))
        {
          return 1;
        }

        sub_297850BFC(a1, v34);
        sub_297871814((a1 + 2), v60);
        sub_297871760((a1 + 2), v60);
        sub_297871794(v60);
        if ((sub_297871860(a1) & 1) == 0 && sub_2978016C4((a1 + 2)) && a4)
        {
          sub_297850EEC(a5, v34, 888, v60);
          sub_2978591B8(v60, a1);
          sub_29782963C(v60);
        }

        break;
      case '\'':
        v35 = sub_2977FB5F0(a2);
        sub_29786FD54(a5, a2);
        if (sub_29786FDA0(a1, a2, a3, a4, a5))
        {
          return 1;
        }

        sub_297850BFC(a1, v35);
        sub_297871868((a1 + 2), v60);
        sub_297871760((a1 + 2), v60);
        sub_297871794(v60);
        break;
      case '(':
        v20 = sub_2977FB5F0(a2);
        sub_29786FD54(a5, a2);
        if (sub_29786FDA0(a1, a2, a3, a4, a5))
        {
          return 1;
        }

        sub_297850BFC(a1, v20);
        v21 = sub_2977FF7C0((a1 + 2));
        sub_297871634((a1 + 2), v21);
        sub_29787165C((a1 + 2), 0);
        if (*a3 == 1)
        {
          v16 = 0;
          *a3 = 0;
          return v16;
        }

        v16 = 0;
        if (*a3)
        {
          return v16;
        }

        v16 = 0;
        v22 = 1;
LABEL_55:
        *a3 = v22;
        return v16;
      default:
        goto LABEL_56;
    }

    v16 = 0;
    v22 = 2;
    goto LABEL_55;
  }

  v12 = v11;
  if (!sub_2978712E8(v11, "defined"))
  {
    if (a4 && sub_297871628(v12) != 145 && sub_297871628(v12) != 131)
    {
      sub_29785A4E4(a5, a2, 890, v60);
      sub_297869558(v60, v12);
      sub_29782963C(v60);
    }

    v17 = sub_297871628(v12) == 145;
    sub_297871634((a1 + 2), v17);
    sub_29787165C((a1 + 2), 0);
    v18 = sub_2977FB5F0(a2);
    sub_297871664(a1, v18);
LABEL_21:
    sub_29786FD54(a5, a2);
    return 0;
  }

  return sub_297871344(a1, a2, a3, a4, a5);
}

uint64_t sub_297870730(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2978503FC(a3);
  v10 = sub_2978711BC(v9);
  if (v10 != -1)
  {
    v11 = v10;
    while (1)
    {
      v12 = v11 >= a2;
      if (v11 < a2)
      {
        return v12;
      }

      v13 = sub_2978503FC(a3);
      v14 = v13;
      if (v13 == 59)
      {
        goto LABEL_7;
      }

      if (v13 != 57)
      {
        break;
      }

      if ((sub_297870714((a1 + 8), 0) & 1) == 0)
      {
LABEL_10:
        v15 = a4;
        goto LABEL_11;
      }

LABEL_8:
      v15 = 0;
LABEL_11:
      v16 = sub_2977FB5F0(a3);
      sub_29786FD54(a5, a3);
      v17 = sub_297871BF4(a1);
      v18 = sub_29786FD9C(&v75, v17);
      if (sub_29786FDA0(v18, a3, v74, v15, a5))
      {
        goto LABEL_102;
      }

      v19 = sub_2978503FC(a3);
      v20 = sub_2978711BC(v19);
      if (v20 == -1)
      {
        v58 = sub_2977FB5F0(a3);
        sub_297850EEC(a5, v58, 719, &v60);
        sub_2978591B8(&v60, &v75);
        sub_29782963C(&v60);
LABEL_102:
        sub_29787126C(&v75);
        return 1;
      }

      v21 = v20;
      if (v14 == 59)
      {
        v22 = sub_2978711BC(64);
      }

      else
      {
        v22 = v11 + 1;
      }

      if (v21 >= v22)
      {
        if (sub_297870730(&v75))
        {
          goto LABEL_102;
        }

        v23 = sub_2978503FC(a3);
        v21 = sub_2978711BC(v23);
      }

      v24 = sub_297871BF4(a1);
      result = sub_2978712AC(v73, v24, 1);
      if ((v14 - 28) > 0x24 || ((1 << (v14 - 28)) & 0x10A0880001) == 0)
      {
        v26 = sub_297871860(a1);
        v27 = sub_297871860(&v75);
        sub_29787165C(v73, v26 | v27);
        if (a4 && sub_297807D1C(v73))
        {
          if ((sub_297871860(a1) & 1) == 0 && sub_2977FB634((a1 + 8)))
          {
            sub_297850EEC(a5, v16, 885, v72);
            sub_297801E90((a1 + 8), 0xAu, 1, &v68);
            sub_297808D80(&v68, " to ", &v69);
            sub_297801E90((a1 + 8), 0xAu, 0, &v67);
            sub_297808D28(&v69, &v67, &v60);
            sub_2978044E8(&v70, &v60);
            v28 = sub_2978295C0(v72, v70, v71);
            v29 = sub_2978591B8(v28, a1);
            sub_2978591B8(v29, &v75);
            std::string::~string(&v60);
            std::string::~string(&v67);
            std::string::~string(&v69);
            std::string::~string(&v68);
            sub_29782963C(v72);
          }

          if ((sub_297871860(&v75) & 1) == 0 && sub_2977FB634(v76))
          {
            sub_297850EEC(a5, v16, 886, v72);
            sub_297801E90(v76, 0xAu, 1, &v68);
            sub_297808D80(&v68, " to ", &v69);
            sub_297801E90(v76, 0xAu, 0, &v67);
            sub_297808D28(&v69, &v67, &v60);
            sub_2978044E8(&v70, &v60);
            v30 = sub_2978295C0(v72, v70, v71);
            v31 = sub_2978591B8(v30, a1);
            sub_2978591B8(v31, &v75);
            std::string::~string(&v60);
            std::string::~string(&v67);
            std::string::~string(&v69);
            std::string::~string(&v68);
            sub_29782963C(v72);
          }
        }

        v32 = sub_297807D1C(v73);
        sub_29787165C(a1 + 8, v32);
        v33 = sub_297807D1C(v73);
        result = sub_29787165C(v76, v33);
      }

      v68.__r_.__value_.__s.__data_[0] = 0;
      switch(v14)
      {
        case 28:
          v40 = sub_297870714((a1 + 8), 0);
          v41 = 0;
          if (!v40)
          {
            goto LABEL_83;
          }

          goto LABEL_81;
        case 29:
        case 31:
        case 33:
        case 34:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 43:
        case 45:
        case 49:
        case 53:
        case 55:
        case 58:
        case 61:
        case 62:
          __break(1u);
          return result;
        case 30:
          if (sub_2977FB5F8(v73))
          {
            sub_297801784((a1 + 8), v76, &v68, v65);
            sub_297871928(&v60, v65, 0);
            sub_297871760(v73, &v60);
            sub_297871794(&v60);
            v36 = v65;
            goto LABEL_77;
          }

          sub_297871CDC(a1 + 8, v76, &v60);
          goto LABEL_85;
        case 32:
          if (sub_297871860(a1))
          {
            sub_297871D98(a1 + 8, v76, &v60);
            goto LABEL_85;
          }

          sub_297801544((a1 + 8), v76, &v68, v62);
          sub_297871928(&v60, v62, 0);
          sub_297871760(v73, &v60);
          sub_297871794(&v60);
          v36 = v62;
          goto LABEL_77;
        case 35:
          if (sub_297871860(a1))
          {
            sub_297871DE4(a1 + 8, v76, &v60);
            goto LABEL_85;
          }

          sub_2978015E0((a1 + 8), v76, &v68, v61);
          sub_297871928(&v60, v61, 0);
          sub_297871760(v73, &v60);
          sub_297871794(&v60);
          v36 = v61;
          goto LABEL_77;
        case 41:
          v34 = sub_297871E80();
          goto LABEL_82;
        case 42:
          if (!sub_297870714(v76, 0))
          {
            if (!a4)
            {
              goto LABEL_89;
            }

            v43 = v16;
            v44 = a5;
            v45 = 703;
            goto LABEL_72;
          }

          if (!sub_2977FB5F8(a1 + 8))
          {
            sub_297871C6C(a1 + 8, v76, &v60);
            goto LABEL_85;
          }

          sub_297801660((a1 + 8), v76, &v68, v66);
          sub_297871928(&v60, v66, 0);
          sub_297871760(v73, &v60);
          sub_297871794(&v60);
          v36 = v66;
LABEL_77:
          sub_2977FAA04(v36);
          goto LABEL_86;
        case 44:
          if (sub_297870714(v76, 0))
          {
            sub_297871BFC(a1 + 8, v76, &v60);
LABEL_85:
            sub_297871760(v73, &v60);
            sub_297871794(&v60);
            goto LABEL_86;
          }

          if (!a4)
          {
            goto LABEL_89;
          }

          v43 = v16;
          v44 = a5;
          v45 = 747;
LABEL_72:
          sub_297850EEC(v44, v43, v45, &v60);
          v46 = sub_2978591B8(&v60, a1);
          sub_2978591B8(v46, &v75);
          goto LABEL_73;
        case 46:
          v34 = sub_297871E44(a1 + 8, v76);
          goto LABEL_82;
        case 47:
          if (sub_297871860(a1))
          {
            sub_297801990((a1 + 8), v76, &v68, v64);
            sub_2977FB608(v73, v64);
            v36 = v64;
          }

          else
          {
            sub_297801864((a1 + 8), v76, &v68, v63);
            sub_297871928(&v60, v63, 0);
            sub_297871760(v73, &v60);
            sub_297871794(&v60);
            v36 = v63;
          }

          goto LABEL_77;
        case 48:
          v34 = sub_297871E30(a1 + 8, v76);
          goto LABEL_82;
        case 50:
          v34 = sub_297871E6C(a1 + 8, v76);
          goto LABEL_82;
        case 51:
          v35 = sub_2977FFEB0(v76, 0xFFFFFFFFFFFFFFFFLL);
          if (sub_297871BF4(a1) <= v35)
          {
            v68.__r_.__value_.__s.__data_[0] = 1;
            v35 = sub_297871BF4(a1) - 1;
          }

          sub_297871D28(a1 + 8, v35, &v60);
          goto LABEL_85;
        case 52:
          v34 = sub_297871E58(a1 + 8, v76);
          goto LABEL_82;
        case 54:
          sub_297871EE8(a1 + 8, v76, &v60);
          goto LABEL_85;
        case 56:
          sub_297871F34(a1 + 8, v76, &v60);
          goto LABEL_85;
        case 57:
          if (sub_297870714((a1 + 8), 0))
          {
            v41 = 1;
          }

          else
          {
LABEL_81:
            v34 = sub_297870714(v76, 0);
LABEL_82:
            v41 = v34;
          }

LABEL_83:
          sub_297871634(v73, v41);
          sub_29787165C(v73, 0);
          goto LABEL_86;
        case 59:
          if (sub_297850F64(a3, 60))
          {
            v37 = sub_2977FB5F0(a3);
            sub_297850EEC(a5, v37, 8, &v60);
            v38 = sub_297869528(&v60, 0x3Cu);
            v39 = sub_2978591B8(v38, a1);
            sub_2978591B8(v39, &v75);
            sub_29782963C(&v60);
            sub_297850EEC(a5, v16, 50, &v60);
            sub_297869528(&v60, 0x3Bu);
LABEL_73:
            sub_29782963C(&v60);
            goto LABEL_74;
          }

          sub_29786FD54(a5, a3);
          if (a4)
          {
            v48 = sub_2978719B4((a1 + 8), 0);
          }

          else
          {
            v48 = 0;
          }

          v51 = sub_297871BF4(a1);
          sub_29786FD9C(&v60, v51);
          if ((sub_29786FDA0(&v60, a3, &v69, v48, a5) & 1) != 0 || sub_297870730(&v60))
          {
            sub_29787126C(&v60);
LABEL_74:
            v47 = 0;
            goto LABEL_90;
          }

          if (sub_297870714((a1 + 8), 0))
          {
            p_size = v76;
          }

          else
          {
            p_size = &v60.__r_.__value_.__l.__size_;
          }

          sub_297871798(v73, p_size);
          v53 = sub_297847BE0(&v60);
          sub_297850C1C(&v75, v53);
          v54 = sub_297871860(&v75);
          v55 = sub_297871860(&v60);
          sub_29787165C(v73, v54 | v55);
          v56 = sub_2978503FC(a3);
          v21 = sub_2978711BC(v56);
          sub_29787126C(&v60);
LABEL_86:
          if (v68.__r_.__value_.__s.__data_[0] == 1)
          {
            if (a4)
            {
              sub_297850EEC(a5, v16, 888, &v60);
              v49 = sub_2978591B8(&v60, a1);
              sub_2978591B8(v49, &v75);
              sub_29782963C(&v60);
            }
          }

LABEL_89:
          sub_297871798(a1 + 8, v73);
          v50 = sub_297847BE0(&v75);
          sub_297850C1C(a1, v50);
          v47 = 1;
LABEL_90:
          sub_297871794(v73);
          sub_29787126C(&v75);
          v11 = v21;
          if ((v47 & 1) == 0)
          {
            return v12;
          }

          break;
        case 60:
          v43 = v16;
          v44 = a5;
          v45 = 701;
          goto LABEL_72;
        case 63:
          v34 = sub_297871BF0(a1 + 8, v76);
          goto LABEL_82;
        case 64:
          if ((*sub_29783CFFC(a5) & 1) == 0 || a4)
          {
            sub_297850EEC(a5, v16, 798, &v60);
            v42 = sub_2978591B8(&v60, a1);
            sub_2978591B8(v42, &v75);
            sub_29782963C(&v60);
          }

          sub_297871798(v73, v76);
          goto LABEL_86;
        default:
          sub_297871E9C(a1 + 8, v76, &v60);
          goto LABEL_85;
      }
    }

    if (v13 != 28)
    {
      goto LABEL_10;
    }

LABEL_7:
    if ((sub_2978719B4((a1 + 8), 0) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v57 = sub_2977FB5F0(a3);
  sub_297850EEC(a5, v57, 719, &v75);
  sub_2978591B8(&v75, a1);
  sub_29782963C(&v75);
  return 1;
}

uint64_t sub_2978711BC(int a1)
{
  result = 0xFFFFFFFFLL;
  switch(a1)
  {
    case 22:
      result = 0;
      break;
    case 23:
    case 24:
    case 25:
    case 26:
    case 29:
    case 31:
    case 33:
    case 34:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 43:
    case 45:
    case 49:
    case 53:
    case 55:
    case 58:
    case 61:
    case 62:
      return result;
    case 27:
      result = 9;
      break;
    case 28:
      result = 6;
      break;
    case 30:
    case 42:
    case 44:
      result = 14;
      break;
    case 32:
    case 35:
      result = 13;
      break;
    case 41:
    case 63:
      result = 10;
      break;
    case 46:
    case 48:
    case 50:
    case 52:
      result = 11;
      break;
    case 47:
    case 51:
      result = 12;
      break;
    case 54:
      result = 8;
      break;
    case 56:
      result = 7;
      break;
    case 57:
      result = 5;
      break;
    case 59:
      result = 4;
      break;
    case 60:
      result = 2;
      break;
    case 64:
      result = 3;
      break;
    default:
      if (a1 == 2)
      {
        result = 0;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      break;
  }

  return result;
}

uint64_t sub_297871270(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978562A4();
  sub_2978712AC(v4 + 8, a2, 1);
  return a1;
}

uint64_t sub_2978712B0(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_2977FD238(a1, a2, 0, 0);
  *(result + 16) = a3;
  return result;
}

BOOL sub_2978712E8(uint64_t a1, _DWORD *a2)
{
  if (sub_297828CD0(a1) != 7)
  {
    return 0;
  }

  v4 = sub_297828CB8(a1);
  return *v4 == *a2 && *(v4 + 3) == *(a2 + 3);
}

uint64_t sub_297871344(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = sub_2977FB5F0(a2);
  sub_297850BFC(a1, v10);
  sub_2978718B4(a5, a2);
  sub_297829180(&v28);
  if (sub_29784FF04(a2, 21))
  {
    v28 = sub_2977FB5F0(a2);
    sub_2978718B4(a5, a2);
  }

  if (sub_29784FF04(a2, 3))
  {
    if (sub_2978712E0(a5))
    {
      v11 = sub_2978712E0(a5);
      (*(*v11 + 32))(v11, 0);
    }

    sub_297869670(a5);
    sub_2978718B4(a5, a2);
  }

  if (sub_2978692F4(a5, a2, 0))
  {
    return 1;
  }

  v13 = sub_29784F384(a2);
  v14 = sub_29783C230(v13);
  sub_297871634((a1 + 2), v14);
  sub_29787165C((a1 + 2), 0);
  v15 = 0;
  if (sub_297870714(a1 + 2, 0) && a4)
  {
    v15 = sub_29785A890(a5, v13);
    v16 = sub_29785A8E8(v15);
    sub_297875E70(a5, v16);
  }

  v26 = *a2;
  v27 = *(a2 + 16);
  v17 = sub_297805430(&v28);
  v18 = sub_2977FB5F0(a2);
  sub_297850C1C(a1, v18);
  if (v17)
  {
    sub_2978718B4(a5, a2);
    if (sub_297850F64(a2, 22))
    {
      v19 = sub_2977FB5F0(a2);
      sub_297850EEC(a5, v19, 712, v25);
      v20 = sub_29783F028(v25, "'defined'");
      sub_297869528(v20, 0x16u);
      sub_29782963C(v25);
      sub_297850EEC(a5, v28, 50, v25);
      sub_297869528(v25, 0x15u);
      sub_29782963C(v25);
      return 1;
    }

    v21 = sub_2977FB5F0(a2);
    sub_297850C1C(a1, v21);
  }

  sub_29786FD54(a5, a2);
  v22 = sub_2978718F4(a5);
  if (v22)
  {
    v23 = v22;
    if (!v15)
    {
      if (sub_297870714(a1 + 2, 0))
      {
        v15 = sub_29785A890(a5, v13);
      }
    }

    v24 = sub_2977FB5F0(a2);
    sub_297853514(v25, v10, v24);
    (*(*v23 + 192))(v23, &v26, v15, v25[0]);
  }

  result = 0;
  *a3 = 0;
  *(a3 + 8) = v13;
  return result;
}

uint64_t sub_297871664(_DWORD *a1, int a2)
{
  sub_29780819C(a1, a2);

  return sub_297847418(a1, a2);
}

uint64_t sub_2978716E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v5 = v8;
    sub_2977FFAF8(a1, a2, v8);
  }

  else
  {
    v5 = v7;
    sub_2977FF9A0(a1, a2, v7);
  }

  sub_297871928(a3, v5, *(a1 + 16));
  return sub_2977FAA04(v5);
}

uint64_t sub_297871760(uint64_t a1, uint64_t a2)
{
  sub_2977FB698(a1, a2);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_297871798(uint64_t a1, uint64_t a2)
{
  sub_2977FF844(a1, a2);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_2978717D0(_DWORD *a1, int a2, int a3)
{
  sub_29780819C(a1, a2);

  return sub_297847418(a1, a3);
}

uint64_t sub_297871814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2977FB640(a1, v5);
  sub_297871928(a2, v5, *(a1 + 16));
  return sub_2977FAA04(v5);
}

uint64_t sub_297871868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_297871984(a1, v5);
  sub_297871928(a2, v5, *(a1 + 16));
  return sub_2977FAA04(v5);
}

uint64_t sub_2978718B4(uint64_t a1, uint64_t a2)
{
  do
  {
    sub_2978692B0(a1, a2);
    result = sub_2978503FC(a2);
  }

  while (result == 5);
  return result;
}

uint64_t sub_29787192C(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_29780267C(a1, a2);
  *(result + 16) = a3;
  return result;
}

uint64_t sub_297871984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_2977FB630(a2, a1);

  return sub_2977FF380(v2);
}

uint64_t sub_2978719B4(unsigned int *a1, uint64_t a2)
{
  sub_2977FB51C(v5, 64, a2, 0);
  sub_297871928(v6, v5, 1);
  v3 = sub_297871A24(a1, v6);
  sub_297871794(v6);
  sub_2977FAA04(v5);
  return v3;
}

uint64_t sub_297871A24(unsigned int *a1, unsigned int *a2)
{
  v4 = sub_2977FB5F0(a1);
  if (v4 != sub_2977FB5F0(a2) || (v5 = sub_2977FB5F8(a1), v5 != sub_2977FB5F8(a2)))
  {
    v6 = sub_2977FB5F0(a1);
    if (v6 > sub_2977FB5F0(a2))
    {
      v7 = sub_2977FB5F0(a1);
      sub_2978716E4(a2, v7, v17);
      v8 = v17;
      v9 = a1;
LABEL_7:
      v12 = sub_297871A24(v9, v8);
      sub_297871794(v17);
      return v12;
    }

    v10 = sub_2977FB5F0(a2);
    if (v10 > sub_2977FB5F0(a1))
    {
      v11 = sub_2977FB5F0(a2);
      sub_2978716E4(a1, v11, v17);
      v9 = v17;
      v8 = a2;
      goto LABEL_7;
    }

    if (sub_2977FB5F8(a1))
    {
      if (!sub_2977FB634(a1))
      {
        sub_2977FB630(v16, a1);
        sub_297871928(v17, v16, 1);
        v12 = sub_297871BF0(v17, a2);
        sub_297871794(v17);
        v14 = v16;
LABEL_18:
        sub_2977FAA04(v14);
        return v12;
      }
    }

    else if (!sub_2977FB634(a2))
    {
      sub_2977FB630(v15, a2);
      sub_297871928(v17, v15, 1);
      v12 = sub_297871BF0(a1, v17);
      sub_297871794(v17);
      v14 = v15;
      goto LABEL_18;
    }

    return 0;
  }

  return sub_297871BF0(a1, a2);
}

uint64_t sub_297871BFC@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = v10;
    sub_297800880(a1, a2, v10);
    v5 = v10;
    v6 = a3;
    v7 = 1;
  }

  else
  {
    v4 = v9;
    sub_297801424(a1, a2, v9);
    v5 = v9;
    v6 = a3;
    v7 = 0;
  }

  sub_297871928(v6, v5, v7);
  return sub_2977FAA04(v4);
}

uint64_t sub_297871C6C@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = v10;
    sub_2978004D0(a1, a2, v10);
    v5 = v10;
    v6 = a3;
    v7 = 1;
  }

  else
  {
    v4 = v9;
    sub_297801314(a1, a2, v9);
    v5 = v9;
    v6 = a3;
    v7 = 0;
  }

  sub_297871928(v6, v5, v7);
  return sub_2977FAA04(v4);
}

uint64_t sub_297871CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2977FEE38(a1, a2, v6);
  sub_297871928(a3, v6, *(a1 + 16));
  return sub_2977FAA04(v6);
}

uint64_t sub_297871D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = v10;
    sub_2977FFF14(a1, a2, v10);
    v5 = v10;
    v6 = a3;
    v7 = 1;
  }

  else
  {
    v4 = v9;
    sub_2977FFBE0(a1, a2, v9);
    v5 = v9;
    v6 = a3;
    v7 = 0;
  }

  sub_297871928(v6, v5, v7);
  return sub_2977FAA04(v4);
}

uint64_t sub_297871D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2977FEEC8(a1, a2, v6);
  sub_297871928(a3, v6, *(a1 + 16));
  return sub_2977FAA04(v6);
}

uint64_t sub_297871DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2977FEFA8(a1, a2, v6);
  sub_297871928(a3, v6, *(a1 + 16));
  return sub_2977FAA04(v6);
}

uint64_t sub_297871E30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    return sub_29780047C(a1, a2);
  }

  else
  {
    return sub_297871F80(a1, a2);
  }
}

uint64_t sub_297871E44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    return sub_2977FF180(a1, a2);
  }

  else
  {
    return sub_2977FF28C(a1, a2);
  }
}

uint64_t sub_297871E58(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    return sub_297800A20(a1, a2);
  }

  else
  {
    return sub_297871FD4(a1, a2);
  }
}

uint64_t sub_297871E6C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    return sub_2977FF400(a1, a2);
  }

  else
  {
    return sub_297871FF0(a1, a2);
  }
}

uint64_t sub_297871E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_297872034(a1, a2, v6);
  sub_297871928(a3, v6, *(a1 + 16));
  return sub_2977FAA04(v6);
}

uint64_t sub_297871EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2978720C8(a1, a2, v6);
  sub_297871928(a3, v6, *(a1 + 16));
  return sub_2977FAA04(v6);
}

uint64_t sub_297871F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2978003E8(a1, a2, v6);
  sub_297871928(a3, v6, *(a1 + 16));
  return sub_2977FAA04(v6);
}

uint64_t sub_297871F80(uint64_t a1, uint64_t a2)
{
  if (sub_2977FF28C(a1, a2))
  {
    return 1;
  }

  return sub_297802670(a1, a2);
}

uint64_t sub_297871FF0(uint64_t a1, uint64_t a2)
{
  if (sub_2977FF28C(a1, a2))
  {
    return 0;
  }

  else
  {
    return sub_297802670(a1, a2) ^ 1;
  }
}

uint64_t sub_297872034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_2977FD1C4(a1))
  {
    v6 = sub_2977FB5F0(a1);
    v7 = *(a2 + 8) & *(a1 + 8);

    return sub_2977FB51C(a3, v6, v7, 0);
  }

  else
  {

    return sub_2977FEC54(a1, a2, a3);
  }
}

uint64_t sub_2978720C8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_2977FD1C4(a1))
  {
    v6 = *a1;
    v7 = *(a2 + 8) ^ *(a1 + 1);

    return sub_2977FB51C(a3, v6, v7, 0);
  }

  else
  {

    return sub_2977FED88(a1, a2, a3);
  }
}

uint64_t sub_297872188(uint64_t a1)
{
  if (sub_29786A704(a1))
  {

    return sub_297806904((a1 + 848));
  }

  else
  {
    v3 = sub_2978670D0((a1 + 848));
    if (v3 == 1)
    {
      return 1;
    }

    else
    {
      v4 = 1;
      do
      {
        v5 = sub_29786A6B8((a1 + 848), v4);
        v6 = sub_29786A6C8(v5);
        if (v6)
        {
          break;
        }

        ++v4;
      }

      while (v3 != v4);
      return v6 ^ 1u;
    }
  }
}

uint64_t sub_297872220(uint64_t a1)
{
  if (sub_29786A704(a1))
  {
    v2 = a1 + 808;
    return *v2;
  }

  else
  {
    for (i = sub_2978670D0((a1 + 848)) - 1; i != -1; --i)
    {
      v4 = sub_29786A6B8((a1 + 848), i);
      if (sub_29786A6C8(v4))
      {
        v2 = v4 + 32;
        return *v2;
      }
    }

    return 0;
  }
}

uint64_t sub_29787229C(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  ++*(a1 + 1356);
  v8 = *(a1 + 1360);
  if (sub_2978670D0((a1 + 848)) > v8)
  {
    *(a1 + 1360) = sub_2978670D0((a1 + 848));
  }

  if (sub_29780B1BC((a1 + 96)) && (v9 = sub_2977FB720(a1 + 96), (v10 = sub_297879AF0(v9, a2)) != 0))
  {
    sub_297872468(a1, v10, a3);
    return 0;
  }

  else
  {
    v24 = 0;
    v12 = sub_29781F408(a1);
    v13 = a4;
    v14 = sub_297872568(v12, a2, a4, &v24);
    v11 = v24;
    if (v24 == 1)
    {
      v15 = sub_2978423A8(*(a1 + 48), a2);
      sub_297850EEC(a1, v13, 711, v23);
      v16 = sub_2978422CC(*(a1 + 48), v15, 0);
      sub_297804638(&v21, v16);
      sub_2978044E8(v22, &v21);
      v17 = sub_2978295C0(v23, v22[0], v22[1]);
      sub_29783F028(v17, &byte_2978FC3E5);
      std::string::~string(&v21);
      sub_29782963C(v23);
    }

    else
    {
      v18 = v14;
      if (sub_297854300(a1) && sub_2978606D8(*(a1 + 48), a2) == *(a1 + 688))
      {
        *(a1 + 704) = sub_2978423A8(*(a1 + 48), a2);
        *(a1 + 700) = sub_297840FC8((a1 + 704), *(a1 + 696));
      }

      v19 = sub_2977FA198(408);
      sub_29784F590(v19, a2, v18, a1);
      sub_2978725FC(a1, v19, a3);
    }
  }

  return v11;
}

uint64_t sub_297872468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 808) || sub_29780B1BC((a1 + 824)))
  {
    sub_297866E00(a1);
  }

  *(a1 + 816) = a3;
  sub_297867658((a1 + 800), a2);
  result = sub_2977FB720(a1 + 800);
  *(a1 + 808) = result;
  *(a1 + 840) = 0;
  if (*(a1 + 832) != 4)
  {
    *(a1 + 832) = 1;
  }

  if (*(a1 + 872))
  {
    v7 = sub_29782AFB0(result);
    v8 = sub_2978423A8(*(a1 + 48), v7);
    v9 = v8;
    v10 = sub_29784220C(*(a1 + 48), v8);
    v11 = *(a1 + 872);
    sub_297829180(&v12);
    return (*(*v11 + 16))(v11, v9, 0, v10, v12);
  }

  return result;
}

uint64_t sub_297872568(uint64_t a1, unsigned int a2, int a3, _BYTE *a4)
{
  v12 = 0;
  v7 = sub_29783E808(a1, a2, &v12);
  if ((v12 & 1) != 0 || (v8 = v7, (sub_29783E940(v7) & 1) == 0))
  {
    if (a4)
    {
      *a4 = 1;
    }

    return sub_29784027C(a1);
  }

  else
  {
    v9 = sub_297819E7C(v8);
    v10 = sub_29783E95C(v9);
    return sub_29783EB40(v10, *(a1 + 8), a1, a3, a4);
  }
}

uint64_t sub_2978725FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 808) || sub_29780B1BC((a1 + 824)))
  {
    sub_297866E00(a1);
  }

  result = sub_297867658((a1 + 792), a2);
  *(a1 + 808) = a2;
  *(a1 + 816) = a3;
  *(a1 + 840) = 0;
  if (*(a1 + 832) != 4)
  {
    *(a1 + 832) = 0;
  }

  if (*(a1 + 872))
  {
    result = sub_2977FB720(a1 + 792);
    if ((*(result + 384) & 1) == 0)
    {
      v7 = *(a1 + 48);
      v8 = sub_2977FB720(a1 + 792);
      v9 = sub_29786A1B8(v8);
      v10 = sub_29784220C(v7, v9);
      v11 = *(a1 + 872);
      v12 = sub_2977FB720(a1 + 792);
      v13 = sub_29786A1B8(v12);
      sub_297829180(&v14);
      return (*(*v11 + 16))(v11, v13, 0, v10, v14);
    }
  }

  return result;
}

void sub_297872704(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 1420);
  if (v10)
  {
    v11 = v10 - 1;
    *(a1 + 1420) = v11;
    v12 = *(a1 + 8 * v11 + 1424);
    sub_29787DA04(v12, a2, a3, a4, a5);
  }

  else
  {
    v12 = sub_2977FA198(72);
    sub_2978727C8(v12, a2, a3, a4, a5, a1);
  }

  sub_297866E00(a1);
  *(a1 + 816) = 0;
  sub_2978675B4((a1 + 824), v12);
  if (*(a1 + 832) != 4)
  {
    *(a1 + 832) = 2;
  }
}

void sub_2978727D0(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = *(a1 + 1420);
  if (v10)
  {
    v11 = v10 - 1;
    *(a1 + 1420) = v11;
    v12 = *(a1 + 8 * v11 + 1424);
    sub_29787E2B8(v12, a2, a3, a4, a5);
  }

  else
  {
    v12 = sub_2977FA198(72);
    sub_297872894(v12, a2, a3, a4, a5, a1);
  }

  sub_297866E00(a1);
  *(a1 + 816) = 0;
  sub_2978675B4((a1 + 824), v12);
  if (*(a1 + 832) != 4)
  {
    *(a1 + 832) = 2;
  }
}

uint64_t sub_297872898(uint64_t a1, uint64_t a2)
{
  if (sub_29780B1BC((a1 + 824)))
  {
    v4 = sub_2977FB720(a1 + 824);

    return sub_29787F2DC(v4, a2);
  }

  else
  {
    result = sub_29780B1BC((a1 + 792));
    if (result)
    {
      v6 = sub_2977FB720(a1 + 792);

      return sub_2978547C4(v6, a2);
    }
  }

  return result;
}

unsigned __int8 *sub_297872924(uint64_t a1)
{
  v2 = *(sub_2977FB720(a1 + 792) + 128);
  if (v2 != *(sub_2977FB720(a1 + 792) + 120))
  {
    v4 = (v2 - 1);
    v3 = *(v2 - 1);
    if (v3 == 13 || v3 == 10)
    {
      if (v4 != *(sub_2977FB720(a1 + 792) + 120) && ((v7 = *(v2 - 2), v2 -= 2, v6 = v7, v7 != 13) ? (v8 = v6 == 10) : (v8 = 1), v8))
      {
        if (v6 == *v4)
        {
          return v4;
        }
      }

      else
      {
        return v4;
      }
    }
  }

  return v2;
}

uint64_t sub_2978729BC(uint64_t a1, unsigned int *a2, char a3)
{
  v6 = *(a1 + 808);
  if (v6)
  {
    v7 = sub_297873308(v6 + 32);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 48);
      v10 = sub_29782AFB0(*(a1 + 808));
      v11 = sub_2978606D8(v9, v10);
      if (v11)
      {
        v12 = v11;
        sub_297873320(*(a1 + 64), v11, v8);
        v13 = sub_297859DFC(a1, v8);
        if (v13)
        {
          *(v13 + 244) |= 0x800u;
        }

        v14 = sub_2977FD5B0(*(a1 + 808) + 32);
        if (v14)
        {
          v15 = v14;
          v16 = sub_29783C230(v8);
          if (v15 != v8 && (v16 & 1) == 0 && sub_297873348(*(a1 + 64), v12))
          {
            v97 = sub_297828314(v8);
            v98 = v17;
            v95 = sub_297828314(v15);
            v96 = v18;
            *&v94[0] = sub_2977FB7B8(&v97);
            v91.__r_.__value_.__r.__words[0] = sub_2977FB7B8(&v95);
            v19 = *sub_29780338C(v94, &v91) >> 1;
            if (v19 >= sub_29780F320(&v97, v95, v96, 1, v19))
            {
              v20 = sub_297811C4C(*(a1 + 808) + 32);
              sub_297850EEC(a1, v20, 877, v94);
              v21 = sub_297811C4C(*(a1 + 808) + 32);
              sub_2978634C0(&v91, v21);
              v22 = sub_2978591B8(v94, &v91);
              sub_297869558(v22, v8);
              sub_29782963C(v94);
              v23 = sub_2978483EC(*(a1 + 808) + 32);
              sub_297850EEC(a1, v23, 821, &v91);
              v24 = sub_2978483EC(*(a1 + 808) + 32);
              sub_2978634C0(v99, v24);
              v25 = sub_2978591B8(&v91, v99);
              v26 = sub_297869558(v25, v15);
              v27 = sub_297869558(v26, v8);
              v28 = sub_2978483EC(*(a1 + 808) + 32);
              sub_2978634C0(v93, v28);
              v29 = sub_297828314(v8);
              sub_29786E758(v93[0], v29, v30, v94);
              sub_297852754(v27, v94);
              sub_29782AC18(v94);
              sub_29782963C(&v91);
            }
          }
        }
      }
    }
  }

  if (sub_297805430((a1 + 772)) && (a3 & 1) == 0 && (!sub_29780B1BC((a1 + 792)) || (*(sub_2977FB720(a1 + 792) + 384) & 1) == 0))
  {
    sub_297850EEC(a1, *(a1 + 772), 709, v102);
    sub_29782963C(v102);
    sub_297829180(v94);
    *(a1 + 772) = v94[0];
  }

  if (sub_297805430((a1 + 776)) && (a3 & 1) == 0 && (!sub_29780B1BC((a1 + 792)) || (*(sub_2977FB720(a1 + 792) + 384) & 1) == 0))
  {
    sub_297850EEC(a1, *(a1 + 776), 710, v101);
    sub_29782963C(v101);
    sub_297829180(v94);
    *(a1 + 776) = v94[0];
  }

  if (sub_297806904((a1 + 848)))
  {
    if (sub_29780B1BC((a1 + 792)))
    {
      v31 = sub_297872924(a1);
      sub_297853ED0(a2);
      *(sub_2977FB720(a1 + 792) + 392) = v31;
      v32 = sub_2977FB720(a1 + 792);
      sub_297851FAC(v32, a2, v31, 1);
      if (sub_297854300(a1))
      {
        v33 = sub_2977FB720(a1 + 792);
        LODWORD(v94[0]) = sub_29786A1B8(v33);
        if (sub_297841544(v94, (a1 + 704)))
        {
          LODWORD(v94[0]) = sub_2977FB5F0(a2);
          v34 = sub_297840FC8(v94, -1);
          sub_29780819C(a2, v34);
        }
      }

      if ((sub_297873440(a1) & 1) == 0)
      {
        sub_297867658((a1 + 792), 0);
      }
    }

    else
    {
      v58 = sub_2977FB720(a1 + 800);
      sub_297879880(v58, a2);
      sub_297867658((a1 + 800), 0);
    }

    if ((sub_297873440(a1) & 1) == 0)
    {
      *(a1 + 808) = 0;
    }

    if (!*(a1 + 676))
    {
      *&v94[0] = sub_297873448(a1 + 1008);
      *(&v94[0] + 1) = v59;
      v97 = sub_29787347C(a1 + 1008);
      v98 = v60;
      while (sub_29781550C(v94, &v97))
      {
        v61 = sub_2978734B4(v94);
        sub_297850EEC(a1, v61, 844, v100);
        sub_29782963C(v100);
        sub_2978734C0(v94);
      }
    }

    v62 = sub_29787BCDC(a1);
    if (v62)
    {
      v63 = v62;
      if (sub_29783CFF4(v62))
      {
        v64 = *(a1 + 48);
        v65 = sub_29786A6B0(v64);
        v66 = sub_2978423A8(v64, v65);
        v67 = sub_2977FD5B0(a1);
        if (!sub_29784CC2C(v67, 0x392u, v66))
        {
          v68 = sub_297830E34(a1);
          v90 = sub_29784AE8C(v68);
          v69 = sub_29783CF9C(v63);
          sub_2978734F4(*(a1 + 40), v94);
          v70 = sub_2977FB720(v94);
          sub_29782DDAC(v94);
          sub_2978055DC(v99);
          v71 = sub_2977FB720(v69);
          sub_2978036E0(v94, v71);
          sub_297848864(&v97, v70, v94, v99);
          sub_297873500(&v95);
          while (sub_297873504(&v97, &v95))
          {
            if (sub_297805430(v99))
            {
              break;
            }

            v72 = sub_297873520(&v97);
            v73 = sub_297830E08(v72);
            v75 = sub_297806CC0(v73, v74);
            sub_2978102C8(v94, v75, v76);
            v91.__r_.__value_.__s.__data_[0] = 1;
            v77 = sub_297873550(v94, ".h", ".H", ".hh", ".hpp", &v91);
            LOBYTE(v93[0]) = 0;
            if (sub_297828CA4(v77, v93))
            {
              v78 = sub_2978735BC(a1);
              v79 = sub_297873520(&v97);
              v80 = sub_297830E08(v79);
              v82 = sub_29782E354(v78, v80, v81, 0, 1);
              if (v82)
              {
                v83 = v82;
                v84 = sub_29781F408(a1);
                if (!sub_2978735C4(v84, v83) && !sub_29785F198(v90, v83))
                {
                  sub_297806EC8(v94);
                  sub_297873618(*(a1 + 40), v69, v83, v94);
                  sub_297850EEC(a1, v66, 914, v93);
                  sub_29783CDF0(v63, &v91);
                  sub_2978044E8(v92, &v91);
                  v85 = sub_2978295C0(v93, v92[0], v92[1]);
                  v86 = sub_2978059B8(v94);
                  sub_2978295C0(v85, v86, v87);
                  std::string::~string(&v91);
                  sub_29782963C(v93);
                  sub_297801F60(v94);
                }
              }
            }

            sub_297848868(&v97, v99);
          }

          sub_297873780(&v95);
          sub_297873780(&v97);
        }
      }
    }

    return 1;
  }

  if (sub_297854300(a1))
  {
    v35 = *(a1 + 808);
    if (v35)
    {
      v36 = *(a1 + 48);
      v37 = sub_29782AFB0(v35);
      LODWORD(v94[0]) = sub_2978423A8(v36, v37);
      if (sub_297841544(v94, (a1 + 704)))
      {
        if (sub_29780B1BC((a1 + 792)))
        {
          sub_297853ED0(a2);
          v38 = sub_2977FB720(a1 + 792);
          v39 = sub_2977FB720(a1 + 792);
          sub_297851FAC(v38, a2, *(v39 + 128), 1);
          sub_297867658((a1 + 792), 0);
        }

        else
        {
          v88 = sub_2977FB720(a1 + 800);
          sub_297879880(v88, a2);
          sub_297867658((a1 + 800), 0);
        }

        *(a1 + 808) = 0;
        return 1;
      }
    }
  }

  if ((a3 & 1) == 0)
  {
    v40 = *(a1 + 808);
    if (v40)
    {
      v41 = *(a1 + 48);
      v42 = sub_29782AFB0(v40);
      LODWORD(v94[0]) = sub_2978607AC(v41, v42);
      if (sub_297805430(v94))
      {
        v43 = sub_2978404C4(*(a1 + 48));
        v44 = v43 - sub_29787336C(*(a1 + 808));
        v45 = *(a1 + 48);
        v46 = sub_29782AFB0(*(a1 + 808));
        sub_297873374(v45, v46, v44 + 1);
      }
    }
  }

  sub_297829180(v94);
  if (*(a1 + 872))
  {
    if ((a3 & 1) == 0)
    {
      v47 = *(a1 + 808);
      if (v47)
      {
        LODWORD(v94[0]) = sub_29782AFB0(v47);
      }
    }
  }

  if (*(a1 + 840) && sub_29780B1BC((a1 + 792)))
  {
    v48 = sub_297872924(a1);
    sub_297853ED0(a2);
    *(sub_2977FB720(a1 + 792) + 392) = v48;
    v49 = sub_2977FB720(a1 + 792);
    sub_297851FAC(v49, a2, v48, 520);
    v50 = sub_2977FB5F0(a2);
    sub_29786FA00(a2, v50);
    sub_2977FD5DC(a2, *(a1 + 840));
    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  sub_2978733CC(a1);
  sub_297872898(a1, a2);
  if (*(a1 + 872))
  {
    if ((a3 & 1) == 0)
    {
      v52 = *(a1 + 808);
      if (v52)
      {
        v53 = *(a1 + 48);
        v54 = (*(*v52 + 32))(v52);
        v55 = sub_29784220C(v53, v54);
        v56 = *(a1 + 872);
        v57 = (*(**(a1 + 808) + 32))(*(a1 + 808));
        (*(*v56 + 16))(v56, v57, 1, v55, LODWORD(v94[0]));
      }
    }
  }

  return v51;
}

uint64_t sub_297873308(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

__int16 *sub_297873320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_29784CB58(a1, a2);
  *(result + 1) = a3;
  return result;
}

_DWORD *sub_297873374(uint64_t a1, unsigned int a2, int a3)
{
  v6 = 0;
  result = sub_29783E808(a1, a2, &v6);
  if ((v6 & 1) == 0)
  {
    v5 = result;
    result = sub_29783E940(result);
    if (result)
    {
      result = sub_297819E7C(v5);
      result[1] = a3;
    }
  }

  return result;
}

uint64_t sub_2978733CC(uint64_t a1)
{
  if (sub_29780B1BC((a1 + 824)))
  {
    v2 = (a1 + 824);
    if (*(a1 + 1420) == 8)
    {
      sub_2978675B4(v2, 0);
    }

    else
    {
      v3 = sub_2978058AC(v2);
      v4 = *(a1 + 1420);
      *(a1 + 1420) = v4 + 1;
      *(a1 + 8 * v4 + 1424) = v3;
    }
  }

  return sub_297873830(a1);
}

uint64_t sub_29787347C(uint64_t a1)
{
  v1 = *(a1 + 8) + 8 * *(a1 + 16);
  sub_297873D00(&v3, v1, v1);
  return v3;
}

void *sub_2978734C0(void *a1)
{
  *a1 += 8;
  sub_297873D34(a1);
  return a1;
}

uint64_t sub_297873520(uint64_t a1)
{
  v1 = sub_2977FB720(a1 + 8);
  v2 = sub_2978489C8(v1);

  return sub_2978489CC(v2);
}

uint64_t sub_297873550(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, _DWORD *a5, uint64_t a6)
{
  v10 = sub_29781243C(a1, a2, a6);
  v11 = sub_29781243C(v10, a3, a6);
  v12 = sub_297810428(v11, a4, a6);

  return sub_29781049C(v12, a5, a6);
}

BOOL sub_2978735C4(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v7[0] = sub_29785F5B8(a1 + 160, &v8);
  v7[1] = v3;
  v6[0] = sub_297844244(a1 + 160);
  v6[1] = v4;
  return sub_29782EE3C(v7, v6);
}

const void **sub_297873618(uint64_t a1, void *a2, uint64_t a3, const void **a4)
{
  sub_2977FD800(a4);
  v8 = sub_29783CFFC(a3);
  v9 = sub_2977FB720(v8);
  sub_2977FB7B4(&v27, v9);
  v26 = v27;
  if (sub_297806914(&v26))
  {
LABEL_7:
    v13 = sub_2977FB720(a3);
    sub_2977FB7B4(&v24, v13);
    return sub_29784B428(a4, v24, v25);
  }

  else
  {
    while (1)
    {
      v10 = sub_29782DFB8(a1, v26, *(&v26 + 1), 1);
      if (v10 && v10 == a2)
      {
        break;
      }

      *&v26 = sub_297806980(v26, *(&v26 + 1));
      *(&v26 + 1) = v12;
      if (sub_297806914(&v26))
      {
        goto LABEL_7;
      }
    }

    v15 = sub_2977FB7B8(&v26);
    v16 = sub_297805EA4(&v27, v15, 0xFFFFFFFFFFFFFFFFLL);
    sub_29784B428(a4, v16, v17);
    v18 = sub_2977FB720(a3);
    sub_2977FB7B4(&v24, v18);
    v23[0] = sub_297806BB4(v24, v25);
    v23[1] = v19;
    sub_2978036E8(&v24, v23);
    sub_2978036E0(v22, &byte_2978FC3E5);
    sub_2978036E0(v21, &byte_2978FC3E5);
    sub_2978036E0(v20, &byte_2978FC3E5);
    return sub_297806664(a4, &v24, v22, v21, v20);
  }
}

uint64_t sub_297873784(uint64_t a1, unsigned int *a2)
{
  if (!sub_297806904((a1 + 1896)))
  {
    v4 = *sub_29780A9C0(a1 + 1896);
    if (v4 == sub_2977FB720(a1 + 824))
    {
      sub_2978768F0(a1);
    }
  }

  v5 = (a1 + 824);
  if (*(a1 + 1420) == 8)
  {
    sub_2978675B4(v5, 0);
  }

  else
  {
    v6 = sub_2978058AC(v5);
    v7 = *(a1 + 1420);
    *(a1 + 1420) = v7 + 1;
    *(a1 + 8 * v7 + 1424) = v6;
  }

  return sub_2978729BC(a1, a2, 1);
}

uint64_t sub_297873830(uint64_t a1)
{
  v2 = sub_297873BAC(a1 + 848);
  sub_297873BB8((a1 + 792), (v2 + 16));
  v3 = sub_297873BAC(a1 + 848);
  sub_297873BB8((a1 + 800), (v3 + 24));
  *(a1 + 808) = *(sub_297873BAC(a1 + 848) + 32);
  v4 = sub_297873BAC(a1 + 848);
  sub_297873BFC((a1 + 824), (v4 + 40));
  *(a1 + 816) = *(sub_297873BAC(a1 + 848) + 48);
  *(a1 + 840) = *(sub_297873BAC(a1 + 848) + 8);
  *(a1 + 832) = *sub_297873BAC(a1 + 848);

  return sub_297873C40((a1 + 848));
}

uint64_t sub_2978738EC(uint64_t a1, unsigned int *a2)
{
  v4 = sub_2978670D0((a1 + 848));
  v6 = v4;
  if (v4)
  {
    v7 = 0;
    while (1)
    {
      v11 = sub_297809B0C(a1 + 848, v5);
      v12 = sub_297873A20(&v11, v7);
      v13 = sub_297873A20(&v12, 1);
      v8 = *(sub_2977FB720(&v13) + 32);
      if (v8)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    *(v8 + 26) = 1;
    v9 = *(v8 + 24);
    *(v8 + 24) = 1;
  }

  else
  {
LABEL_5:
    v9 = 0;
    v8 = 0;
  }

  if ((sub_297873784(a1, a2) & 1) == 0)
  {
    sub_29787C4FC(a1, a2);
  }

  while (sub_297850F64(a2, 2))
  {
    if (!sub_297850F64(a2, 1))
    {
      break;
    }

    sub_29787C4FC(a1, a2);
  }

  result = sub_29784FF04(a2, 2);
  if (result)
  {
    *(v8 + 26) = 0;
    if ((v9 & 1) == 0)
    {
      *(v8 + 24) = 0;
      return sub_29787C4FC(a1, a2);
    }
  }

  return result;
}

uint64_t sub_297873A28(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a6;
  sub_297829180((a1 + 40));
  sub_297829180((a1 + 44));
  sub_297829180((a1 + 48));
  sub_297829180((a1 + 56));
  *(a1 + 64) &= ~8u;
  sub_29787DA04(a1, a2, a3, a4, a5);
  return a1;
}

uint64_t sub_297873AB8(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a6;
  sub_297829180((a1 + 40));
  sub_297829180((a1 + 44));
  sub_297829180((a1 + 48));
  sub_297829180((a1 + 56));
  *(a1 + 64) &= ~8u;
  sub_29787E2B8(a1, a2, a3, a4, a5);
  return a1;
}

uint64_t *sub_297873BB8(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_2978058AC(a2);
  sub_297867658(a1, v4);
  nullsub_1(a2, v5);
  return a1;
}

uint64_t *sub_297873BFC(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_2978058AC(a2);
  sub_2978675B4(a1, v4);
  nullsub_1(a2, v5);
  return a1;
}

uint64_t sub_297873C4C(void *a1, uint64_t a2)
{
  v4 = sub_2978670D0(a1);
  sub_297873CA4(a1, a2);

  return nullsub_1(a1, v4);
}

uint64_t sub_297873CA4(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_2978673D4(v3, v5))
  {
    i -= 56;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_297873D08(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  sub_297873D34(a1);
  return a1;
}

uint64_t sub_297873D34(uint64_t result)
{
  v1 = *result;
  if (*result != *(result + 8))
  {
    v2 = result;
    do
    {
      v3 = *v1;
      result = sub_2978027E4();
      if (v3 != result)
      {
        v4 = **v2;
        result = sub_29780A6B4();
        if (v4 != result)
        {
          break;
        }
      }

      v5 = *(v2 + 8);
      v1 = (*v2 + 8);
      *v2 = v1;
    }

    while (v1 != v5);
  }

  return result;
}

uint64_t sub_297873DA0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_297873DD0(&v3, a2);
  return v3;
}

uint64_t sub_297873DE4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v4[0] = sub_297873E20(a1 + 984, &v5);
  v4[1] = v2;
  return *(sub_2977FB720(v4) + 8);
}

uint64_t sub_297873E20(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  if (!sub_297878E88(a1, a2, &v6))
  {
    return sub_297878FB0(a1);
  }

  v3 = v6;
  v4 = sub_29783D84C(a1);
  sub_297878FAC(&v7, v3, v4, 1);
  return v7;
}

_DWORD *sub_297873E88(uint64_t a1, unsigned int *a2, void *a3)
{
  v8 = a3;
  v9 = a2;
  v4 = sub_297873F34(a1 + 984, &v9);
  sub_2977FE390(a3, *v4);
  *v4 = a3;
  sub_297873F50(v9, 1);
  if (!sub_297873F94(a3))
  {
    sub_297873F50(v9, 0);
  }

  if (sub_29785B758(&v8))
  {
    v5 = sub_29781BF50(v8);
    v6 = sub_297873FDC(v5);
  }

  else
  {
    v6 = 0;
  }

  result = sub_297873FE8(v9);
  if (result)
  {
    if ((v6 & 1) == 0)
    {
      return sub_297873FF4(v9);
    }
  }

  return result;
}

unsigned int *sub_297873F50(unsigned int *a1, int a2)
{
  if (((((*a1 & 0x100000) == 0) ^ a2) & 1) == 0)
  {
    if (a2)
    {
      v2 = 0x100000;
    }

    else
    {
      v2 = 0;
    }

    v3 = *a1 & 0xFFEFFFFF | v2;
    *a1 = v3;
    if (a2)
    {
      *a1 = v3 | 0x4200000;
    }

    else
    {
      return sub_29783C17C(a1);
    }
  }

  return a1;
}

BOOL sub_297873F94(uint64_t a1)
{
  v4 = sub_29785B680(a1);
  v5 = v1;
  v6 = v2;
  result = sub_29780B1CC(&v4);
  if (result)
  {
    return !sub_29785B69C(&v4);
  }

  return result;
}

unsigned int *sub_297874004(uint64_t *a1)
{
  a1[30] = sub_297874230(a1, "__LINE__");
  a1[31] = sub_297874230(a1, "__FILE__");
  if (sub_29783B9A8(a1[3]))
  {
    result = sub_297874230(a1, "__VERSION__");
    a1[52] = result;
  }

  else
  {
    a1[52] = 0;
    a1[32] = sub_297874230(a1, "__DATE__");
    a1[33] = sub_297874230(a1, "__TIME__");
    a1[37] = sub_297874230(a1, "__COUNTER__");
    a1[38] = sub_297874230(a1, "_Pragma");
    a1[35] = sub_297874230(a1, "__BASE_FILE__");
    a1[34] = sub_297874230(a1, "__INCLUDE_LEVEL__");
    a1[36] = sub_297874230(a1, "__TIMESTAMP__");
    if ((*a1[3] & 8) != 0)
    {
      a1[40] = sub_297874230(a1, "__identifier");
      v3 = sub_297874230(a1, "__pragma");
    }

    else
    {
      v3 = 0;
      a1[40] = 0;
    }

    a1[39] = v3;
    a1[42] = sub_297874230(a1, "__has_feature");
    a1[43] = sub_297874230(a1, "__has_extension");
    a1[44] = sub_297874230(a1, "__has_builtin");
    a1[45] = sub_297874230(a1, "__has_attribute");
    a1[46] = sub_297874230(a1, "__has_include");
    a1[47] = sub_297874230(a1, "__has_include_next");
    a1[48] = sub_297874230(a1, "__has_warning");
    result = sub_297874230(a1, "__is_identifier");
    a1[49] = result;
    if ((*(a1[3] + 6) & 0x10) != 0)
    {
      a1[50] = sub_297874230(a1, "__building_module");
      result = sub_29780347C(a1[3] + 136);
      if (result)
      {
        a1[51] = 0;
      }

      else
      {
        result = sub_297874230(a1, "__MODULE__");
        a1[51] = result;
      }
    }

    else
    {
      a1[50] = 0;
      a1[51] = 0;
    }
  }

  return result;
}

unsigned int *sub_297874230(uint64_t a1, char *a2)
{
  sub_2977FB7B4(v6, a2);
  v3 = sub_297869520(a1, v6[0], v6[1]);
  sub_297829180(v6);
  v4 = sub_297869080(a1, v6[0]);
  sub_297878114(v4, 1);
  sub_29786ED94(a1, v3, v4);
  return v3;
}

BOOL sub_2978742AC(void *a1)
{
  if (sub_29780B1BC(a1 + 99))
  {
    v2 = sub_2977FB720((a1 + 99));
    v3 = sub_297853F34(v2);
  }

  else if (sub_29780B1BC(a1 + 100))
  {
    v4 = sub_2977FB720((a1 + 100));
    v3 = sub_2978743C0(v4);
  }

  else
  {
    v5 = sub_2977FB720((a1 + 103));
    v3 = sub_29787F05C(v5);
  }

  if (v3 == 2)
  {
    if (a1[101])
    {
      return 0;
    }

    for (i = sub_2978670D0(a1 + 106) - 1; i != -1; --i)
    {
      v8 = sub_29786A6B8(a1 + 106, i);
      if (sub_29780B1BC(v8 + 2))
      {
        v9 = sub_2977FB720((v8 + 2));
        v3 = sub_297853F34(v9);
      }

      else if (sub_29780B1BC(v8 + 3))
      {
        v10 = sub_2977FB720((v8 + 3));
        v3 = sub_2978743C0(v10);
      }

      else
      {
        v11 = sub_2977FB720((v8 + 5));
        v3 = sub_29787F05C(v11);
      }

      if (v3 != 2)
      {
        return v3 == 1;
      }

      if (v8[4])
      {
        return 0;
      }
    }

    v3 = 2;
  }

  return v3 == 1;
}

uint64_t sub_2978743C0(uint64_t a1)
{
  v1 = **(a1 + 136);
  if (v1 == 1)
  {
    return 2;
  }

  else
  {
    return v1 == 21;
  }
}

uint64_t sub_2978743E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v51 = sub_29785B484(a3);
  v52 = v6;
  v53 = v7;
  v8 = sub_29785A920(&v51);
  v9 = *(a1 + 808);
  if (v9)
  {
    sub_297874928(v9 + 32);
  }

  if (sub_297869584(v8))
  {
    v10 = *(a1 + 872);
    if (v10)
    {
      v11 = sub_2977FB5F0(a2);
      sub_2978634C0(v48, v11);
      (*(*v10 + 168))(v10, a2, a3, v48[0].n128_u64[0], 0);
    }

    sub_297874934(a1, a2);
    return 1;
  }

  v13 = sub_2977FB5F0(a2);
  v50 = v13;
  if (sub_29785B3B4(v8))
  {
    *(a1 + 436) |= 8u;
    v14 = sub_297875584(a1, a2, v8, &v50);
    *(a1 + 436) &= ~8u;
    if (!v14)
    {
      return 1;
    }

    v15 = v14;
    ++*(a1 + 1368);
    v13 = v50;
  }

  else
  {
    v15 = 0;
    ++*(a1 + 1364);
  }

  sub_297875E70(a1, v8);
  v16 = sub_2977FB5F0(a2);
  sub_297853514(&v49, v16, v13);
  v17 = *(a1 + 872);
  if (v17)
  {
    if ((*(a1 + 436) & 8) != 0)
    {
      v46 = *a2;
      v47 = *(a2 + 16);
      sub_297875F50(v48, &v46, a3, v49);
      sub_297875ED8(a1 + 880, v48);
    }

    else
    {
      (*(*v17 + 168))(v17, a2, a3, v49, v15);
      if (!sub_297806904((a1 + 880)))
      {
        v18 = sub_29780CAF4(a1 + 880);
        if (v18)
        {
          v19 = 0;
          do
          {
            v20 = sub_297875F54(a1 + 880, v19);
            (*(**(a1 + 872) + 168))(*(a1 + 872), v20, *(v20 + 24), *(v20 + 32), 0);
            ++v19;
          }

          while (v18 != v19);
        }

        sub_2977FD800((a1 + 880));
      }
    }
  }

  v21 = sub_2977FB720(&v51);
  if (sub_297875F80(v21))
  {
    sub_29785A4E4(a1, a2, 884, v48);
    v22 = sub_29784F384(a2);
    sub_297869558(v48, v22);
    sub_29782963C(v48);
    v23 = sub_2977FB5F0(v8);
    sub_297850EEC(a1, v23, 827, v48);
    v24 = sub_29784F384(a2);
    sub_297869558(v48, v24);
    sub_29782963C(v48);
    v48[0].n128_u64[0] = sub_29785B6A8(&v51);
    v48[0].n128_u32[2] = v25;
    for (v48[0].n128_u8[12] = v26; sub_29780B1CC(v48); v48[0].n128_u8[12] = v32)
    {
      if (sub_29785B69C(v48))
      {
        break;
      }

      v27 = sub_29785A920(v48);
      v28 = sub_2977FB5F0(v27);
      sub_297850EEC(a1, v28, 828, &v46);
      v29 = sub_29784F384(a2);
      sub_297869558(&v46, v29);
      sub_29782963C(&v46);
      v30 = sub_2977FB720(v48);
      if (!sub_297875F80(v30))
      {
        break;
      }

      v48[0].n128_u64[0] = sub_29785B6A8(v48);
      v48[0].n128_u32[2] = v31;
    }
  }

  if (sub_29786ECF4(v8))
  {
    if (sub_29786ECF4(v8) == 1)
    {
      v33 = sub_29784F384(a2);
      if (sub_297875F8C(v8, v33, a1))
      {
        if (v15)
        {
          sub_297859C84(v15, a1);
        }

        v34 = sub_297850404(a2);
        v35 = sub_29785480C(a2);
        v36 = sub_29786ED10(v8, 0);
        v37 = *(v36 + 15);
        *a2 = *v36;
        *(a2 + 15) = v37;
        sub_2978531A8(a2, 1, v34);
        sub_2978531A8(a2, 2, v35);
        v38 = *(a1 + 48);
        v39 = sub_2977FB5F0(a2);
        v40 = sub_297847BE0(a2);
        v41 = sub_29783FDB8(v38, v39, v16, v13, v40, 0, 0);
        sub_29780819C(a2, v41);
        v42 = sub_29784F384(a2);
        if (v42)
        {
          v43 = sub_297859DFC(a1, v42);
          if (v43)
          {
            v44 = v43;
            if (!sub_297859E30(v43) || v44 == v8)
            {
              sub_29785111C(a2, 4);
              if (v44 != v8 || sub_29785B3B4(v8))
              {
                sub_29785A4E4(a1, a2, 834, v45);
                sub_29782963C(v45);
              }
            }
          }
        }

        ++*(a1 + 1376);
        return 1;
      }
    }

    sub_297872704(a1, a2, v13, v8, v15);
    return 0;
  }

  else
  {
    if (v15)
    {
      sub_297859C84(v15, a1);
    }

    sub_29785111C(a2, 16);
    sub_297872898(a1, a2);
    result = 0;
    ++*(a1 + 1376);
  }

  return result;
}

uint64_t sub_297874934(uint64_t a1, unsigned int *a2)
{
  v4 = sub_29784F384(a2);
  if (v4 == *(a1 + 304))
  {

    return sub_29787A434(a1, a2);
  }

  else
  {
    v5 = v4;
    if (v4 != *(a1 + 312))
    {
      ++*(a1 + 1372);
      sub_297806EC8(v96);
      sub_29781F238(v95);
      sub_2977FD5DC(a2, 0);
      sub_297853618(a2, 8);
      if (v5 != *(a1 + 240))
      {
        if (v5 == *(a1 + 248) || v5 == *(a1 + 280))
        {
          v8 = *(a1 + 48);
          v9 = sub_2977FB5F0(a2);
          sub_297841B1C(v8, v9, 1, &v94);
          if (v5 == *(a1 + 280) && sub_29780B1BC(&v94))
          {
            for (LODWORD(v83.__r_.__value_.__l.__data_) = sub_29782AFB0(&v94); sub_297805430(&v83); LODWORD(v83.__r_.__value_.__l.__data_) = sub_29782AFB0(&v94))
            {
              sub_297841B1C(*(a1 + 48), v83.__r_.__value_.__l.__data_, 1, &v92);
              *&v94.__r_.__value_.__l.__data_ = v92;
              LODWORD(v94.__r_.__value_.__r.__words[2]) = v93;
              if (sub_29783E4C0(&v94))
              {
                break;
              }
            }
          }

          sub_297806EC8(&v92);
          if (sub_29780B1BC(&v94))
          {
            v10 = sub_2977FB720(&v94);
            sub_2977FB7B4(&v83, v10);
            sub_297811C58(&v92, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
            sub_29784F960(&v92);
            v11 = sub_2978028D8(v95, 34);
            v12 = sub_297801F10(&v92);
            v14 = sub_297801FA8(v11, v12, v13);
            sub_2978028D8(v14, 34);
          }

          sub_297853640(a2, 13);
          sub_297801F60(&v92);
          goto LABEL_43;
        }

        if (v5 == *(a1 + 256))
        {
          v26 = sub_2977FB5F0(a2);
          sub_297850EEC(a1, v26, 887, v91);
          sub_29782963C(v91);
          if (!sub_297805430((a1 + 424)))
          {
            sub_297876A44((a1 + 424), (a1 + 428), a1);
          }

          sub_297853640(a2, 13);
          sub_297847418(a2, 13);
          v27 = *(a1 + 48);
          v28 = *(a1 + 424);
        }

        else
        {
          if (v5 != *(a1 + 264))
          {
            if (v5 != *(a1 + 272))
            {
              if (v5 == *(a1 + 288))
              {
                v40 = sub_2977FB5F0(a2);
                sub_297850EEC(a1, v40, 887, v89);
                sub_29782963C(v89);
                v41 = sub_297872220(a1);
                if (v41 && (v42 = *(a1 + 48), v43 = sub_29782AFB0(v41), (v44 = sub_2978606D8(v42, v43)) != 0))
                {
                  *&v92 = sub_2977FD5B0(v44);
                  v45 = localtime(&v92);
                  v46 = asctime(v45);
                }

                else
                {
                  v46 = "??? ??? ?? ??:??:?? ????\n";
                }

                v52 = sub_2978028D8(v95, 34);
                sub_2977FB7B4(&v92, v46);
                v53 = sub_2978184AC(&v92, 1);
                v55 = sub_297801FA8(v52, v53, v54);
                sub_2978028D8(v55, 34);
                v19 = a2;
                v20 = 13;
                goto LABEL_42;
              }

              if (v5 != *(a1 + 296))
              {
                if (v5 == *(a1 + 336) || v5 == *(a1 + 344) || v5 == *(a1 + 352) || v5 == *(a1 + 392) || v5 == *(a1 + 360))
                {
                  v47 = sub_2977FB5F0(a2);
                  sub_2978692B0(a1, a2);
                  if (sub_29784FF04(a2, 21))
                  {
                    sub_2978692B0(a1, a2);
                    v48 = sub_29784F384(a2);
                    if (v48)
                    {
                      v49 = v48;
                      sub_2978692B0(a1, a2);
                      if (sub_29784FF04(a2, 22))
                      {
                        if (v5 == *(a1 + 392))
                        {
                          v56 = sub_297871628(v49) == 6;
                        }

                        else
                        {
                          if (v5 != *(a1 + 352))
                          {
                            if (v5 == *(a1 + 360))
                            {
                              v58 = sub_297805510(a1);
                              v59 = sub_297876C1C(v58);
                              v60 = sub_29783CFFC(a1);
                              v50 = sub_297824314(0, 0, v49, v59, v60);
                            }

                            else if (v5 == *(a1 + 344))
                            {
                              v50 = sub_297876C24(a1, v49);
                            }

                            else
                            {
                              v50 = sub_297876F18(a1, v49);
                            }

LABEL_86:
                            v56 = v50;
                            goto LABEL_87;
                          }

                          v56 = sub_297876C04(v49) != 0;
                        }

LABEL_87:
                        sub_29780BBD0(v95, v56);
                        goto LABEL_41;
                      }
                    }
                  }

                  sub_297850EEC(a1, v47, 632, v88);
                  v51 = v88;
                  goto LABEL_70;
                }

                if (v5 == *(a1 + 368))
                {
                  v57 = sub_297877E0C(a2, v5, a1);
                }

                else
                {
                  if (v5 != *(a1 + 376))
                  {
                    if (v5 != *(a1 + 384))
                    {
                      if (v5 != *(a1 + 400))
                      {
                        if (v5 == *(a1 + 408))
                        {
                          v69 = sub_29783CFFC(a1);
                          sub_29780BB74(v95, v69 + 136);
                          v70 = sub_29783CFFC(a1);
                          sub_2978044E8(&v92, v70 + 136);
                          v71 = sub_297869520(a1, v92, *(&v92 + 1));
                          sub_2977FD5DC(a2, v71);
                          v20 = sub_297871628(v71);
                          v19 = a2;
                          goto LABEL_42;
                        }

                        if (v5 == *(a1 + 320))
                        {
                          v72 = sub_2977FB5F0(a2);
                          sub_29786FD54(a1, a2);
                          if (sub_297850F64(a2, 21))
                          {
                            v73 = sub_2978780B4(a1, v72, 0);
                            sub_297850EEC(a1, v73, 712, &v92);
                            v74 = sub_297869558(&v92, v5);
                            sub_297869528(v74, 0x15u);
                            sub_29782963C(&v92);
                            if (!sub_2978780CC(a2))
                            {
                              if (sub_29784F384(a2))
                              {
                                sub_297853640(a2, 6);
                              }
                            }

                            goto LABEL_44;
                          }

                          v76 = sub_2977FB5F0(a2);
                          sub_29786FD54(a1, a2);
                          if (sub_2978780CC(a2) || !sub_29784F384(a2))
                          {
                            v77 = sub_2977FB5F0(a2);
                            sub_297850EEC(a1, v77, 724, &v92);
                            v78 = sub_2978503FC(a2);
                            sub_297869528(&v92, v78);
                            sub_29782963C(&v92);
                            if (sub_29784FF04(a2, 1) || sub_29784FF04(a2, 2) || sub_2978780CC(a2))
                            {
                              goto LABEL_44;
                            }
                          }

                          else
                          {
                            sub_297853640(a2, 6);
                          }

                          sub_29784FB00(&v92);
                          sub_29786FD54(a1, &v92);
                          if (sub_297850F64(&v92, 22))
                          {
                            v79 = sub_2977FB5F0(a2);
                            v80 = sub_2978780B4(a1, v79, 0);
                            sub_297850EEC(a1, v80, 712, &v94);
                            v81 = sub_2978503FC(a2);
                            v82 = sub_297869528(&v94, v81);
                            sub_297869528(v82, 0x16u);
                            sub_29782963C(&v94);
                            sub_297850EEC(a1, v76, 50, &v94);
                            sub_297869528(&v94, 0x15u);
                            sub_29782963C(&v94);
                          }

                          goto LABEL_44;
                        }

                        v6 = (***(a1 + 80))(*(a1 + 80));
                        goto LABEL_40;
                      }

                      v50 = sub_297877F1C(a2, v5, a1);
                      goto LABEL_86;
                    }

                    v61 = sub_2977FB5F0(a2);
                    sub_2978692B0(a1, a2);
                    if (sub_297850F64(a2, 21))
                    {
                      sub_297850EEC(a1, v61, 770, v87);
                      v51 = v87;
LABEL_70:
                      sub_29782963C(v51);
LABEL_71:
                      sub_29780BBD0(v95, 0);
                      goto LABEL_43;
                    }

                    v62 = v61;
                    sub_2978692B0(a1, a2);
                    sub_297802744(&v94);
                    v63 = sub_2977FB5F0(a2);
                    if ((sub_29787C780(a1, a2, &v94, "'__has_warning'", 0) & 1) == 0)
                    {
                      while (sub_297850F64(a2, 22))
                      {
                        if (!sub_297850F64(a2, 2))
                        {
                          break;
                        }

                        if (!sub_297850F64(a2, 1))
                        {
                          break;
                        }

                        sub_2978692B0(a1, a2);
                      }

                      std::string::~string(&v94);
                      goto LABEL_71;
                    }

                    v64 = sub_29784FF04(a2, 22);
                    if (v64)
                    {
                      if (sub_2978032A4(&v94) >= 3 && *sub_29780327C(&v94, 0) == 45 && *sub_29780327C(&v94, 1) == 87)
                      {
                        sub_297877EBC(&v92);
                        v65 = sub_2977FD5B0(a1);
                        v66 = sub_297829BD8(v65);
                        v67 = sub_2977FB720(v66);
                        sub_297877EC0(&v94, 2, -1, &v83);
                        sub_2978044E8(v84, &v83);
                        v68 = sub_29782D070(v67, 0, v84[0], v84[1], &v92) ^ 1;
                        std::string::~string(&v83);
                        sub_2977FD134(&v92);
                        goto LABEL_110;
                      }

                      sub_297850EEC(a1, v63, 876, v85);
                      v75 = v85;
                    }

                    else
                    {
                      sub_297850EEC(a1, v62, 770, v86);
                      v75 = v86;
                    }

                    sub_29782963C(v75);
                    v68 = 0;
LABEL_110:
                    std::string::~string(&v94);
                    sub_29780BBD0(v95, v68);
                    if (!v64)
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_41;
                  }

                  v57 = sub_297877E14(a2, v5, a1);
                }

                sub_29780BBD0(v95, v57);
                if (!sub_29784FF04(a2, 22))
                {
                  goto LABEL_43;
                }

                goto LABEL_41;
              }

              v6 = *(a1 + 432);
              *(a1 + 432) = v6 + 1;
LABEL_40:
              sub_297801FA0(v95, v6);
LABEL_41:
              v19 = a2;
              v20 = 8;
LABEL_42:
              sub_297853640(v19, v20);
LABEL_43:
              v21 = sub_29781F384(v95);
              v23 = v22;
              v24 = sub_2977FB5F0(a2);
              v25 = sub_2977FB5F0(a2);
              sub_29787BBC8(a1, v21, v23, a2, v24, v25);
LABEL_44:
              sub_29781F290(v95);
              return sub_297801F60(v96);
            }

            v34 = *(a1 + 48);
            v35 = sub_2977FB5F0(a2);
            sub_297841B1C(v34, v35, 1, &v92);
            if (sub_29780B1BC(&v92) && (v36 = *(a1 + 48), v37 = sub_29782AFB0(&v92), sub_297841B1C(v36, v37, 1, &v94), v92 = *&v94.__r_.__value_.__l.__data_, v93 = v94.__r_.__value_.__r.__words[2], sub_29780B1BC(&v92)))
            {
              v18 = 0;
              do
              {
                v38 = *(a1 + 48);
                v39 = sub_29782AFB0(&v92);
                sub_297841B1C(v38, v39, 1, &v94);
                v92 = *&v94.__r_.__value_.__l.__data_;
                v93 = v94.__r_.__value_.__r.__words[2];
                ++v18;
              }

              while (sub_29780B1BC(&v92));
            }

            else
            {
              v18 = 0;
            }

LABEL_39:
            v6 = v18;
            goto LABEL_40;
          }

          v29 = sub_2977FB5F0(a2);
          sub_297850EEC(a1, v29, 887, v90);
          sub_29782963C(v90);
          if (!sub_297805430((a1 + 428)))
          {
            sub_297876A44((a1 + 424), (a1 + 428), a1);
          }

          sub_297853640(a2, 13);
          sub_297847418(a2, 10);
          v27 = *(a1 + 48);
          v28 = *(a1 + 428);
        }

        v30 = sub_2977FB5F0(a2);
        v31 = sub_2977FB5F0(a2);
        v32 = sub_297847BE0(a2);
        v33 = sub_29783FDB8(v27, v28, v30, v31, v32, 0, 0);
        sub_29780819C(a2, v33);
        goto LABEL_44;
      }

      v15 = sub_2977FB5F0(a2);
      v16 = sub_2978571C4(a1, v15, 0);
      v17 = sub_297841340(*(a1 + 48), v16);
      v18 = 1;
      sub_297841B1C(*(a1 + 48), SHIDWORD(v17), 1, &v92);
      if (sub_29780B1BC(&v92))
      {
        v18 = sub_29782B550(&v92);
      }

      goto LABEL_39;
    }

    return sub_29787AA44(a1, a2);
  }
}

_BYTE *sub_297875584(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD *a4)
{
  v77[195] = *MEMORY[0x29EDCA608];
  v7 = sub_29782AFB0(a3);
  v60 = a3;
  v8 = sub_297876088(a3);
  sub_29784FB00(v73);
  sub_2978692B0(a1, v73);
  sub_297876098(v77);
  sub_297829180(&v72);
  if (!sub_297850F64(v73, 22))
  {
    LODWORD(v10) = 0;
    v9 = 0;
    goto LABEL_55;
  }

  v58 = a4;
  v9 = 0;
  v10 = 0;
  do
  {
    if ((v9 & 1) != 0 && (sub_29784FF04(v73, 1) || sub_29784FF04(v73, 2)))
    {
      v9 = 1;
      break;
    }

    v11 = sub_29783E83C(v77);
    v12 = sub_2977FB5F0(v73);
    v13 = 0;
    v14 = v7 < 2 && v8;
    while (1)
    {
      sub_2978692B0(a1, v73);
      if (sub_29784FF04(v73, 1) || sub_29784FF04(v73, 2))
      {
        break;
      }

      if (sub_29784FF04(v73, 22))
      {
        if (!v13)
        {
          *v58 = sub_2977FB5F0(v73);
          goto LABEL_34;
        }

        --v13;
LABEL_31:
        sub_2978405F8(v77, v73);
      }

      else
      {
        if (sub_29784FF04(v73, 21))
        {
          ++v13;
          goto LABEL_31;
        }

        if (sub_29784FF04(v73, 64) && !v13 && (sub_29787609C(v73) & 0x80) == 0)
        {
          if (!v14)
          {
            goto LABEL_34;
          }

          v13 = 0;
          goto LABEL_31;
        }

        if (!sub_29784FF04(v73, 5) || (*(a1 + 436) & 2) != 0)
        {
          if (sub_29784F384(v73))
          {
            v15 = sub_29784F384(v73);
            v16 = sub_297859DFC(a1, v15);
            if (v16)
            {
              if (!sub_297859E30(v16))
              {
                sub_29785111C(v73, 4);
              }
            }
          }

          else if (sub_29784FF04(v73, 3))
          {
            v17 = *(a1 + 680);
            if (v17)
            {
              v18 = sub_29784F384(a2);
              (*(*v17 + 48))(v17, v18, v60, v10);
            }

            v9 = 1;
          }

          goto LABEL_31;
        }
      }
    }

    if ((v9 & 1) == 0)
    {
      sub_29785A4E4(a1, a2, 766, v71);
      sub_29782963C(v71);
      v37 = sub_2977FB5F0(v60);
      sub_297850EEC(a1, v37, 823, v76);
      v38 = sub_29784F384(a2);
      sub_297869558(v76, v38);
      sub_29782963C(v76);
      v39 = 0;
      *a2 = *v73;
      *(a2 + 15) = *(&v73[3] + 3);
      goto LABEL_107;
    }

    v19 = sub_2977FA198(24);
    v20 = sub_29784FB00(v19);
    *v20 = *v73;
    *(v20 + 15) = *(&v73[3] + 3);
    v9 = 1;
    sub_2978727D0(a1, v19, 1, 1, 1);
LABEL_34:
    if (sub_297806904(v77) && sub_2978503FC(v73) == 22)
    {
      break;
    }

    if (v7)
    {
      v21 = 1;
    }

    else
    {
      v21 = v8;
    }

    if ((v21 & 1) == 0 && sub_297829730(&v72))
    {
      if (sub_29783E83C(v77) == v11)
      {
        v72 = v12;
      }

      else
      {
        v22 = sub_29783E88C(v77, v11);
        v72 = sub_2977FB5F0(v22);
      }
    }

    if (sub_29783E83C(v77) == v11)
    {
      v23 = **(a1 + 24);
      if ((v23 & 1) == 0)
      {
        if ((v23 & 0x80) != 0)
        {
          v24 = 864;
        }

        else
        {
          v24 = 781;
        }

        sub_29785A4E4(a1, v73, v24, v70);
        sub_29782963C(v70);
      }
    }

    sub_29784FB00(v76);
    sub_297853ED0(v76);
    sub_297853640(v76, 1);
    v25 = sub_2977FB5F0(v73);
    sub_29780819C(v76, v25);
    sub_297847418(v76, 0);
    sub_2978405F8(v77, v76);
    v10 = (v10 + 1);
    v7 -= (v7 != 0) & ~v9;
  }

  while (sub_297850F64(v73, 22));
LABEL_55:
  v26 = v60;
  v27 = sub_29782AFB0(v60);
  v28 = v10 <= v27 || v8;
  if ((v28 & 1) == 0 && (v9 & 1) == 0)
  {
    sub_297850EEC(a1, v72, 760, v69);
    sub_29782963C(v69);
    v29 = sub_2977FB5F0(v60);
    sub_297850EEC(a1, v29, 823, v76);
    v30 = sub_29784F384(a2);
    sub_297869558(v76, v30);
    sub_29782963C(v76);
    sub_29784C09C(v76);
    v68 = 0;
    sub_29780B1B8(v75);
    sub_29780B1B8(v74);
    if (sub_2978760A4(a1, v77, v76, &v68, v75, v74))
    {
      if (v68 == v27)
      {
        sub_29785A4E4(a1, a2, 829, v67);
        v31 = sub_2977FB720(v75);
        v32 = sub_2977FB7B8(v75);
        if (v31 != v32)
        {
          v33 = v32;
          do
          {
            v34 = sub_2977FB5F0(v31);
            sub_2977FB7B4(&v64, "(");
            sub_297852794(v34, v64, v65, 0, v66);
            sub_297852754(v67, v66);
            sub_29782AC18(v66);
            v35 = sub_297847BE0(v31);
            sub_2977FB7B4(&v64, ")");
            sub_297852794(v35, v64, v65, 0, v66);
            sub_297852754(v67, v66);
            sub_29782AC18(v66);
            v31 += 2;
          }

          while (v31 != v33);
        }

        sub_297876374(v77, v76);
        sub_29782963C(v67);
        v36 = 1;
        LODWORD(v10) = v27;
        goto LABEL_73;
      }

LABEL_67:
      v36 = 0;
    }

    else
    {
      if (sub_297806904(v74))
      {
        goto LABEL_67;
      }

      sub_29785A4E4(a1, a2, 822, v66);
      v40 = sub_2977FB720(v74);
      v41 = sub_2977FB7B8(v74);
      if (v40 != v41)
      {
        v42 = v41;
        do
        {
          sub_2978591B8(v66, v40++);
        }

        while (v40 != v42);
      }

      sub_29782963C(v66);
      v36 = 0;
LABEL_73:
      v26 = v60;
    }

    sub_2977FD134(v74);
    sub_2977FD134(v75);
    sub_2977FD134(v76);
    if (!v36)
    {
      goto LABEL_99;
    }
  }

  if (v9)
  {
    sub_29784FB00(v76);
    sub_297853ED0(v76);
    sub_297853640(v76, 1);
    v43 = sub_2977FB5F0(v73);
    sub_29780819C(v76, v43);
    sub_297847418(v76, 0);
    v44 = v27 - v10;
    if (v27 > v10)
    {
      do
      {
        sub_2978405F8(v77, v76);
        --v44;
      }

      while (v44);
      LODWORD(v10) = v27;
    }
  }

  if (v10 >= v27)
  {
    if (v10 > v27 && ((sub_297876088(v26) | v9) & 1) == 0)
    {
      sub_29785A4E4(a1, a2, 760, v61);
      sub_29782963C(v61);
      v49 = sub_2977FB5F0(v26);
      sub_297850EEC(a1, v49, 823, v76);
      v50 = a2;
      goto LABEL_98;
    }

    v46 = 0;
    goto LABEL_106;
  }

  v45 = sub_297876088(v26);
  v46 = v45;
  if (!v10 && v27 == 1)
  {
    goto LABEL_103;
  }

  if (v45)
  {
    v47 = !v10 && v27 == 2;
    v48 = v47;
    if (v10 + 1 == v27 || v48)
    {
      if ((sub_297876654(v26) & 1) == 0)
      {
        sub_29785A4E4(a1, v73, 786, v63);
        sub_29782963C(v63);
        v53 = sub_2977FB5F0(v26);
        sub_297850EEC(a1, v53, 823, v76);
        v54 = sub_29784F384(a2);
        sub_297869558(v76, v54);
        sub_29782963C(v76);
      }

      v46 = 1;
LABEL_103:
      v55 = sub_2977FB5F0(v73);
      sub_297853ED0(v73);
      sub_297853640(v73, 1);
      sub_29780819C(v73, v55);
      sub_297847418(v73, 0);
      sub_2978405F8(v77, v73);
      if (!v10 && v27 == 2)
      {
        sub_2978405F8(v77, v73);
      }

LABEL_106:
      sub_297876660(v76, v77);
      v39 = sub_297859AC4(v26, v76[0], v76[1], v46, a1);
      goto LABEL_107;
    }
  }

  if (v9)
  {
    v46 = 0;
    goto LABEL_103;
  }

  sub_29785A4E4(a1, v73, 759, v62);
  sub_29782963C(v62);
  v51 = sub_2977FB5F0(v26);
  sub_297850EEC(a1, v51, 823, v76);
  v50 = a2;
LABEL_98:
  v52 = sub_29784F384(v50);
  sub_297869558(v76, v52);
  sub_29782963C(v76);
LABEL_99:
  v39 = 0;
LABEL_107:
  sub_2977FD134(v77);
  v56 = *MEMORY[0x29EDCA608];
  return v39;
}

uint64_t sub_297875E70(uint64_t a1, unsigned int *a2)
{
  if (sub_29786ED3C(a2) && (sub_29786ED30(a2) & 1) == 0)
  {
    v4 = sub_2977FB5F0(a2);
    sub_29786ED54(a1 + 1008, v4);
  }

  return sub_2978780F4(a2, 1);
}

uint64_t sub_297875ED8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_297879480(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  v7 = sub_2977FB7B8(a1) + 40;

  return sub_2977FD5DC(a1, v7);
}

BOOL sub_297875F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29786ED10(a1, 0);
  v7 = sub_29784F384(v6);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  if (sub_29783C260(v7))
  {
    v9 = sub_29787814C(a3);
    (*(*v9 + 24))(v9, v8);
  }

  if (sub_29783C230(v8))
  {
    v10 = sub_297859DFC(a3, v8);
    v11 = sub_297859E30(v10);
    if (v8 != a2 && v11)
    {
      return 0;
    }
  }

  if (sub_29786ECDC(a1))
  {
    return 1;
  }

  v13 = sub_2977FB7B8(a1);
  v14 = sub_29785B3D8(a1);
  if (v13 == v14)
  {
    return 1;
  }

  v15 = v14;
  v16 = v13 + 8;
  do
  {
    v17 = *(v16 - 8);
    result = v17 != v8;
    v18 = v17 == v8 || v16 == v15;
    v16 += 8;
  }

  while (!v18);
  return result;
}

BOOL sub_2978760A4(uint64_t a1, uint64_t a2, const void **a3, _DWORD *a4, void *a5, void *a6)
{
  result = sub_297878154(a2);
  if (result)
  {
    v30 = a6;
    v13 = sub_2977FB720(a2);
    v14 = sub_2977FB7B8(a2);
    *a4 = 0;
    sub_29784FB00(v32);
    v15 = sub_2977FB720(a2);
    v16 = sub_2977FB7B8(a2);
    if (v15 != v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = 0;
      do
      {
        if (sub_29784FF04(v15, 23))
        {
          ++v18;
        }

        else if (sub_29784FF04(v15, 24))
        {
          if (((v14 == v17) & v19) != 0)
          {
            v20 = v15;
          }

          else
          {
            v20 = v14;
          }

          if (v18 == 1)
          {
            v14 = v20;
            v18 = 0;
          }

          else
          {
            --v18;
          }
        }

        else if (sub_29784FF04(v15, 1))
        {
          if (v18)
          {
            sub_297853640(v15, 64);
            v19 = 1;
            sub_297847418(v15, 1);
          }

          else
          {
            ++*a4;
            if (v19)
            {
              if (sub_29784FF04(v13, 23))
              {
                v21 = sub_2977FB5F0(v13);
                v22 = sub_2977FB5F0(v14);
                v23 = sub_2978780B4(a1, v22, 0);
                sub_297853514(&v31, v21, v23);
                sub_2978040A4(v30, &v31);
                v14 = v17;
              }

              sub_297853ED0(v32);
              sub_297853640(v32, 21);
              v24 = sub_2977FB5F0(v13);
              sub_29780819C(v32, v24);
              sub_297847418(v32, 0);
              sub_2978405F8(a3, v32);
              v25 = sub_2977FB7B8(a3);
              sub_297878280(a3, v25, v13, v15);
              v26 = sub_2977FB5F0(v15 - 6);
              v27 = sub_2978780B4(a1, v26, 0);
              sub_297853ED0(v32);
              sub_297853640(v32, 22);
              sub_29780819C(v32, v27);
              sub_297847418(v32, 0);
              sub_2978405F8(a3, v32);
              v28 = sub_2977FB5F0(v13);
              sub_297853514(&v31, v28, v27);
              sub_2978040A4(a5, &v31);
            }

            else
            {
              v29 = sub_2977FB7B8(a3);
              sub_297878280(a3, v29, v13, v15);
            }

            sub_2978405F8(a3, v15);
            v19 = 0;
            v18 = 0;
            v13 = v15 + 6;
          }
        }

        v15 = (v15 + 24);
      }

      while (v15 != v17);
    }

    return !sub_297806904(a5) && sub_297806904(v30);
  }

  return result;
}

uint64_t *sub_297876374(uint64_t *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if (sub_2977FDA84(result) || sub_2977FDA84(a2))
    {
      v4 = sub_29783E83C(a2);
      if (v4 > sub_29784DF10(v3))
      {
        v5 = sub_29783E83C(a2);
        sub_297846128(v3, v5);
      }

      v6 = sub_29783E83C(v3);
      if (v6 > sub_29784DF10(a2))
      {
        v7 = sub_29783E83C(v3);
        sub_297846128(a2, v7);
      }

      v8 = sub_29783E83C(v3);
      if (v8 > sub_29783E83C(a2))
      {
        v8 = sub_29783E83C(a2);
      }

      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = sub_29783E88C(v3, v9);
          v11 = sub_29783E88C(a2, v9);
          sub_297879498(v10, v11);
          ++v9;
        }

        while (v8 != v9);
      }

      v12 = sub_29783E83C(v3);
      if (v12 <= sub_29783E83C(a2))
      {
        v24 = sub_29783E83C(a2);
        result = sub_29783E83C(v3);
        if (v24 <= result)
        {
          return result;
        }

        v25 = sub_29783E83C(a2);
        v26 = v25 - sub_29783E83C(v3);
        v27 = 3 * v8;
        v28 = (sub_2977FB720(a2) + 24 * v8);
        v29 = sub_2977FB7B8(a2);
        v30 = sub_2977FB7B8(v3);
        sub_297807F80(v28, v29, v30);
        v31 = sub_2977FB7B8(v3);
        sub_2977FD5DC(v3, v31 + 24 * v26);
        v32 = sub_2977FB720(a2) + 8 * v27;
        v33 = sub_2977FB7B8(a2);
        nullsub_1(v32, v33);
        v22 = sub_2977FB720(a2) + 8 * v27;
        v23 = a2;
      }

      else
      {
        v13 = sub_29783E83C(v3);
        v14 = v13 - sub_29783E83C(a2);
        v15 = 3 * v8;
        v16 = (sub_2977FB720(v3) + 24 * v8);
        v17 = sub_2977FB7B8(v3);
        v18 = sub_2977FB7B8(a2);
        sub_297807F80(v16, v17, v18);
        v19 = sub_2977FB7B8(a2);
        sub_2977FD5DC(a2, v19 + 24 * v14);
        v20 = sub_2977FB720(v3) + 8 * v15;
        v21 = sub_2977FB7B8(v3);
        nullsub_1(v20, v21);
        v22 = sub_2977FB720(v3) + 8 * v15;
        v23 = v3;
      }

      return sub_2977FD5DC(v23, v22);
    }

    else
    {
      sub_2977FDE84(v3, a2);
      sub_2977FDE84((v3 + 8), (a2 + 8));

      return sub_2977FDE84((v3 + 16), (a2 + 16));
    }
  }

  return result;
}

unint64_t sub_297876664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[0] = a3;
  v25[1] = a4;
  v24 = a2;
  if (sub_297806914(v25))
  {
    return 0;
  }

  v23 = sub_29783E83C(a1 + 1488);
  v6 = sub_2977FB7B8(v25);
  v7 = sub_29784DF10(a1 + 1488);
  v8 = v7 - sub_29783E83C(a1 + 1488);
  v9 = sub_2977FB720(v25);
  v10 = sub_297859C30(v25);
  sub_2978767AC((a1 + 1488), v9, v10);
  if (v6 > v8)
  {
    v11 = sub_29780AAE8((a1 + 1896));
    v12 = v11;
    if (v11)
    {
      v13 = 0;
      do
      {
        v21 = 0;
        v22 = 0;
        v14 = sub_29780AAF8((a1 + 1896), v13);
        v19 = sub_297876874(&v22, &v21);
        v20 = v15;
        sub_2978768A4(&v19, v14);
        v16 = sub_297803A7C(a1 + 1488);
        *(v22 + 24) = v16 + 24 * v21;
        ++v13;
      }

      while (v12 != v13);
    }
  }

  v19 = sub_2977FD958(&v24, &v23);
  v20 = v17;
  sub_29780BFD8((a1 + 1896), &v19);
  v18 = sub_297803A7C(a1 + 1488);
  return v18 + 24 * v23;
}

uint64_t sub_2978767AC(const void **a1, __int128 *a2, __int128 *a3)
{
  v6 = sub_29787844C(a2, a3);
  v7 = sub_2977FD5B0(a1);
  if (v6 > 0xAAAAAAAAAAAAAAABLL * ((v7 - sub_2977FB7B8(a1)) >> 3))
  {
    v8 = sub_29783E83C(a1);
    sub_297846128(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_297878570(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + 24 * v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_2978768A4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *sub_297803A7C(a1) = v4;
  v5 = a2[1];
  *sub_29782FD1C(a1) = v5;
  return a1;
}

uint64_t sub_2978768F0(uint64_t a1)
{
  v2 = sub_29780A9C0(a1 + 1896);
  sub_297876938((a1 + 1488), *(v2 + 8));

  return sub_29780A9CC((a1 + 1896));
}

unint64_t sub_297876938(const void **a1, unsigned int a2)
{
  v3 = a2;
  if (sub_29783E83C(a1) <= a2)
  {
    result = sub_29783E83C(a1);
    if (result >= v3)
    {
      return result;
    }

    if (sub_29784DF10(a1) < v3)
    {
      sub_297846128(a1, v3);
    }

    v9 = sub_2977FB7B8(a1);
    v10 = sub_2977FB720(a1) + 24 * v3;
    while (v9 != v10)
    {
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      sub_29784FB00(v9);
      v9 += 3;
    }

    v7 = sub_2977FB720(a1) + 24 * v3;
  }

  else
  {
    v4 = 3 * v3;
    v5 = sub_2977FB720(a1) + 24 * v3;
    v6 = sub_2977FB7B8(a1);
    nullsub_1(v5, v6);
    v7 = sub_2977FB720(a1) + 8 * v4;
  }

  return sub_2977FD5DC(a1, v7);
}

uint64_t sub_297876A44(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v22 = time(0);
  v6 = localtime(&v22);
  sub_2978068F8(v21);
  sub_29781F238(v20);
  v7 = &off_29EE80478[v6->tm_mon];
  v18 = v6->tm_year + 1900;
  sub_2978787FC("%s %2d %4d", v7, &v6->tm_mday, &v18, v19);
  sub_29781E7A8(v20, v19);
  j_j_nullsub_1(v19, v8);
  sub_29784FB00(v19);
  sub_297853ED0(v19);
  v9 = sub_29781F384(v20);
  v11 = v10;
  sub_297829180(&v18);
  sub_297829180(&v17);
  sub_29787BBC8(a3, v9, v11, v19, v18, v17);
  *a1 = sub_2977FB5F0(v19);
  sub_29781F290(v20);
  sub_297801F60(v21);
  sub_2978068F8(v21);
  sub_29781F238(v20);
  sub_297878814("%02d:%02d:%02d", &v6->tm_hour, &v6->tm_min, v6, v19);
  sub_29781E7A8(v20, v19);
  j_j_nullsub_1(v19, v12);
  sub_29784FB00(v19);
  sub_297853ED0(v19);
  v13 = sub_29781F384(v20);
  v15 = v14;
  sub_297829180(&v18);
  sub_297829180(&v17);
  sub_29787BBC8(a3, v13, v15, v19, v18, v17);
  *a2 = sub_2977FB5F0(v19);
  sub_29781F290(v20);
  return sub_297801F60(v21);
}

uint64_t sub_297876C04(_DWORD *a1)
{
  v1 = (*a1 >> 9) & 0x7FF;
  if (v1 <= 0x1A)
  {
    return 0;
  }

  else
  {
    return v1 - 27;
  }
}

uint64_t sub_297876C24(uint64_t a1, uint64_t a2)
{
  if (sub_297876F18(a1, a2))
  {
    return 1;
  }

  v5 = sub_2977FD5B0(a1);
  if (sub_297816700(v5) > 3)
  {
    return 0;
  }

  v6 = sub_29783CFFC(a1);
  v52 = sub_297828314(a2);
  v53 = v7;
  sub_2977FB7B4(&v50, "__");
  if (sub_297807C54(&v52, v50, v51))
  {
    sub_2977FB7B4(&v50, "__");
    if (sub_297828360(&v52, v50, v51) && sub_2977FB7B8(&v52) >= 4)
    {
      v8 = sub_2977FB7B8(&v52);
      v52 = sub_297805EA4(&v52, 2uLL, v8 - 4);
      v53 = v9;
    }
  }

  sub_2978102C8(&v50, v52, v53);
  v49 = 1;
  v10 = sub_297811E3C(&v50, "nullability", &v49);
  v48 = 1;
  v11 = sub_297812160(v10, "c_alignas", &v48);
  v47 = 1;
  v12 = sub_297810578(v11, "c_atomic", &v47);
  v46 = 1;
  v13 = sub_29782852C(v12, "c_generic_selections", &v46);
  v45 = 1;
  v14 = sub_2978285A4(v13, "c_static_assert", &v45);
  v15 = sub_297805510(a1);
  v44 = sub_29783D8D0(v15);
  v16 = sub_297812248(v14, "c_thread_local", &v44);
  v43 = (*v6 & 0x40) != 0;
  v17 = sub_297810340(v16, "cxx_atomic", &v43);
  v42 = (*v6 & 0x40) != 0;
  v18 = sub_2978287E8(v17, "cxx_deleted_functions", &v42);
  v41 = (*v6 & 0x40) != 0;
  v19 = sub_297828860(v18, "cxx_explicit_conversions", &v41);
  v40 = (*v6 & 0x40) != 0;
  v20 = sub_2978287E8(v19, "cxx_inline_namespaces", &v40);
  v39 = (*v6 & 0x40) != 0;
  v21 = sub_2978289D4(v20, "cxx_local_type_template_args", &v39);
  v38 = (*v6 & 0x40) != 0;
  v22 = sub_297828430(v21, "cxx_nonstatic_member_init", &v38);
  v37 = (*v6 & 0x40) != 0;
  v23 = sub_29782852C(v22, "cxx_override_control", &v37);
  v36 = (*v6 & 0x40) != 0;
  v24 = sub_297828618(v23, "cxx_range_for", &v36);
  v35 = (*v6 & 0x40) != 0;
  v25 = sub_297878980(v24, "cxx_reference_qualified_functions", &v35);
  v34 = (*v6 & 0x40) != 0;
  v26 = sub_2978287E8(v25, "cxx_rvalue_references", &v34);
  v33 = 1;
  v27 = sub_2978288D8(v26, "cxx_binary_literals", &v33);
  v32 = (*v6 & 0x80) != 0;
  v28 = sub_29782868C(v27, "cxx_init_captures", &v32);
  v31 = (*v6 & 0x40) != 0;
  v29 = sub_297828770(v28, "cxx_variable_templates", &v31);
  v30 = 0;
  return sub_297828CA4(v29, &v30);
}

uint64_t sub_297876F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_29783CFFC(a1);
  v284 = sub_297828314(a2);
  v285 = v5;
  sub_2977FB7B4(&v282, "__");
  if (sub_297807C54(&v284, v282, v283))
  {
    sub_2977FB7B4(&v282, "__");
    if (sub_297828360(&v284, v282, v283) && sub_2977FB7B8(&v284) >= 4)
    {
      v6 = sub_2977FB7B8(&v284);
      v284 = sub_297805EA4(&v284, 2uLL, v6 - 4);
      v285 = v7;
    }
  }

  v8 = sub_2978102C8(&v282, v284, v285);
  v281 = *(v4 + 60) & 1;
  v9 = sub_29782868C(v8, "address_sanitizer", &v281);
  v280 = (*v4 & 0x800400) != 0;
  v10 = sub_297812248(v9, "assume_nonnull", &v280);
  v279 = 1;
  v11 = sub_297828AC4(v10, "attribute_analyzer_noreturn", &v279);
  v278 = 1;
  v12 = sub_297828770(v11, "attribute_availability", &v278);
  v277 = 1;
  v13 = sub_297828704(v12, "attribute_availability_with_message", &v277);
  v276 = 1;
  v14 = sub_2978789EC(v13, "attribute_availability_app_extension", &v276);
  v275 = 1;
  v15 = sub_297828AC4(v14, "attribute_availability_tvos", &v275);
  v274 = 1;
  v16 = sub_297878980(v15, "attribute_cf_returns_not_retained", &v274);
  v273 = 1;
  v17 = sub_297828C20(v16, "attribute_cf_returns_retained", &v273);
  v272 = 1;
  v18 = sub_297878980(v17, "attribute_deprecated_with_message", &v272);
  v271 = 1;
  v19 = sub_297828430(v18, "attribute_ext_vector_type", &v271);
  v270 = 1;
  v20 = sub_297878980(v19, "attribute_ns_returns_not_retained", &v270);
  v269 = 1;
  v21 = sub_297828C20(v20, "attribute_ns_returns_retained", &v269);
  v268 = 1;
  v22 = sub_297828950(v21, "attribute_ns_consumes_self", &v268);
  v267 = 1;
  v23 = sub_2978287E8(v22, "attribute_ns_consumed", &v267);
  v266 = 1;
  v24 = sub_2978287E8(v23, "attribute_cf_consumed", &v266);
  v265 = 1;
  v25 = sub_297828950(v24, "attribute_objc_ivar_unused", &v265);
  v264 = 1;
  v26 = sub_2978289D4(v25, "attribute_objc_method_family", &v264);
  v263 = 1;
  v27 = sub_297828770(v26, "attribute_overloadable", &v263);
  v262 = 1;
  v28 = sub_297828BB4(v27, "attribute_unavailable_with_message", &v262);
  v261 = 1;
  v29 = sub_297828950(v28, "attribute_unused_on_fields", &v261);
  v260 = *(v4 + 6) & 1;
  v30 = sub_297810504(v29, "blocks", &v260);
  v259 = 1;
  v31 = sub_297828950(v30, "c_thread_safety_attributes", &v259);
  v258 = (*v4 & 0x2000000000) != 0;
  v32 = sub_297812248(v31, "cxx_exceptions", &v258);
  v257 = *(v4 + 5) & 1;
  v33 = sub_297810578(v32, "cxx_rtti", &v257);
  v256 = 1;
  v34 = sub_2978287E8(v33, "enumerator_attributes", &v256);
  v255 = (*v4 & 0x800400) != 0;
  v35 = sub_297811E3C(v34, "nullability", &v255);
  v254 = (*(v4 + 60) & 2) != 0;
  v36 = sub_297828A58(v35, "memory_sanitizer", &v254);
  v253 = (*(v4 + 60) & 4) != 0;
  v37 = sub_297828A58(v36, "thread_sanitizer", &v253);
  v252 = (*(v4 + 60) & 0x400000) != 0;
  v38 = sub_2978283B8(v37, "dataflow_sanitizer", &v252);
  v251 = (*(v4 + 24) & 0x200000) != 0;
  v39 = sub_297810578(v38, "objc_arr", &v251);
  v250 = (*(v4 + 24) & 0x200000) != 0;
  v40 = sub_297810578(v39, "objc_arc", &v250);
  v249 = (*(v4 + 24) & 0x400000) != 0;
  v41 = sub_297828618(v40, "objc_arc_weak", &v249);
  v248 = (*v4 & 0x800) != 0;
  v42 = sub_297828BB4(v41, "objc_default_synthesize_properties", &v248);
  v247 = (*v4 & 0x800) != 0;
  v43 = sub_2978285A4(v42, "objc_fixed_enum", &v247);
  v246 = (*v4 & 0x800) != 0;
  v44 = sub_29782868C(v43, "objc_instancetype", &v246);
  v245 = (~*v4 & 0x10000000000800) == 0;
  v45 = sub_2978121D4(v44, "objc_modules", &v245);
  v244 = sub_297878A58((v4 + 68));
  v46 = sub_2978288D8(v45, "objc_nonfragile_abi", &v244);
  v243 = 1;
  v47 = sub_297828C20(v46, "objc_property_explicit_atomic", &v243);
  v242 = 1;
  v48 = sub_297878A7C(v47, "objc_protocol_qualifier_mangling", &v242);
  v241 = sub_297878AF8((v4 + 68));
  v49 = sub_2978285A4(v48, "objc_weak_class", &v241);
  v240 = 1;
  v50 = sub_2978285A4(v49, "ownership_holds", &v240);
  v239 = 1;
  v51 = sub_29782868C(v50, "ownership_returns", &v239);
  v238 = 1;
  v52 = sub_2978285A4(v51, "ownership_takes", &v238);
  v237 = 1;
  v53 = sub_297812160(v52, "objc_BOOL", &v237);
  v236 = sub_297878A58((v4 + 68));
  v54 = sub_29782868C(v53, "objc_subscripting", &v236);
  v235 = (*v4 & 0x800) != 0;
  v55 = sub_2978288D8(v54, "objc_array_literals", &v235);
  v234 = (*v4 & 0x800) != 0;
  v56 = sub_297828860(v55, "objc_dictionary_literals", &v234);
  v233 = (*v4 & 0x800) != 0;
  v57 = sub_297828770(v56, "objc_boxed_expressions", &v233);
  v232 = 1;
  v58 = sub_2978288D8(v57, "arc_cf_code_audited", &v232);
  v231 = (*v4 & 0x800) != 0;
  v59 = sub_297812248(v58, "objc_bridge_id", &v231);
  v230 = (*v4 & 0x800) != 0;
  v60 = sub_297828950(v59, "objc_bridge_id_on_typedefs", &v230);
  v229 = (*v4 & 0x800) != 0;
  v61 = sub_297828618(v60, "objc_generics", &v229);
  v228 = (*v4 & 2) != 0;
  v62 = sub_297812160(v61, "c_alignas", &v228);
  v227 = (*v4 & 2) != 0;
  v63 = sub_297810578(v62, "c_atomic", &v227);
  v226 = (*v4 & 2) != 0;
  v64 = sub_29782852C(v63, "c_generic_selections", &v226);
  v225 = (*v4 & 2) != 0;
  v65 = sub_2978285A4(v64, "c_static_assert", &v225);
  if ((*v4 & 2) != 0)
  {
    v67 = sub_297805510(a1);
    v66 = sub_29783D8D0(v67);
  }

  else
  {
    v66 = 0;
  }

  v224 = v66;
  v68 = sub_297812248(v65, "c_thread_local", &v224);
  v223 = (*v4 & 0x80) != 0;
  v69 = sub_297828430(v68, "cxx_access_control_sfinae", &v223);
  v222 = (*v4 & 0x80) != 0;
  v70 = sub_2978288D8(v69, "cxx_alias_templates", &v222);
  v221 = (*v4 & 0x80) != 0;
  v71 = sub_297811E3C(v70, "cxx_alignas", &v221);
  v220 = (*v4 & 0x80) != 0;
  v72 = sub_297810340(v71, "cxx_atomic", &v220);
  v219 = (*v4 & 0x80) != 0;
  v73 = sub_297812248(v72, "cxx_attributes", &v219);
  v218 = (*v4 & 0x80) != 0;
  v74 = sub_297828618(v73, "cxx_auto_type", &v218);
  v217 = (*v4 & 0x80) != 0;
  v75 = sub_297828618(v74, "cxx_constexpr", &v217);
  v216 = (*v4 & 0x80) != 0;
  v76 = sub_2978121D4(v75, "cxx_decltype", &v216);
  v215 = (*v4 & 0x80) != 0;
  v77 = sub_2978789EC(v76, "cxx_decltype_incomplete_return_types", &v215);
  v214 = (*v4 & 0x80) != 0;
  v78 = sub_297828BB4(v77, "cxx_default_function_template_args", &v214);
  v213 = (*v4 & 0x80) != 0;
  v79 = sub_2978284B4(v78, "cxx_defaulted_functions", &v213);
  v212 = (*v4 & 0x80) != 0;
  v80 = sub_297828AC4(v79, "cxx_delegating_constructors", &v212);
  v211 = (*v4 & 0x80) != 0;
  v81 = sub_2978287E8(v80, "cxx_deleted_functions", &v211);
  v210 = (*v4 & 0x80) != 0;
  v82 = sub_297828860(v81, "cxx_explicit_conversions", &v210);
  v209 = (*v4 & 0x80) != 0;
  v83 = sub_2978289D4(v82, "cxx_generalized_initializers", &v209);
  v208 = (*v4 & 0x80) != 0;
  v84 = sub_2978283B8(v83, "cxx_implicit_moves", &v208);
  v207 = (*v4 & 0x80) != 0;
  v85 = sub_297828AC4(v84, "cxx_inheriting_constructors", &v207);
  v206 = (*v4 & 0x80) != 0;
  v86 = sub_2978287E8(v85, "cxx_inline_namespaces", &v206);
  v205 = (*v4 & 0x80) != 0;
  v87 = sub_297811E3C(v86, "cxx_lambdas", &v205);
  v204 = (*v4 & 0x80) != 0;
  v88 = sub_2978289D4(v87, "cxx_local_type_template_args", &v204);
  v203 = (*v4 & 0x80) != 0;
  v89 = sub_297828430(v88, "cxx_nonstatic_member_init", &v203);
  v202 = (*v4 & 0x80) != 0;
  v90 = sub_2978121D4(v89, "cxx_noexcept", &v202);
  v201 = (*v4 & 0x80) != 0;
  v91 = sub_297811E3C(v90, "cxx_nullptr", &v201);
  v200 = (*v4 & 0x80) != 0;
  v92 = sub_29782852C(v91, "cxx_override_control", &v200);
  v199 = (*v4 & 0x80) != 0;
  v93 = sub_297828618(v92, "cxx_range_for", &v199);
  v198 = (*v4 & 0x80) != 0;
  v94 = sub_2978284B4(v93, "cxx_raw_string_literals", &v198);
  v197 = (*v4 & 0x80) != 0;
  v95 = sub_297878980(v94, "cxx_reference_qualified_functions", &v197);
  v196 = (*v4 & 0x80) != 0;
  v96 = sub_2978287E8(v95, "cxx_rvalue_references", &v196);
  v195 = (*v4 & 0x80) != 0;
  v97 = sub_297828A58(v96, "cxx_strong_enums", &v195);
  v194 = (*v4 & 0x80) != 0;
  v98 = sub_29782868C(v97, "cxx_static_assert", &v194);
  if ((*v4 & 0x80) != 0 && (v99 = sub_297805510(a1), sub_29783D8D0(v99)))
  {
    v100 = sub_297805510(a1);
    v101 = sub_297876C1C(v100);
    v102 = !sub_2978126F8(v101);
  }

  else
  {
    v102 = 0;
  }

  v193 = v102;
  v103 = sub_297828A58(v98, "cxx_thread_local", &v193);
  v192 = (*v4 & 0x80) != 0;
  v104 = sub_2978288D8(v103, "cxx_trailing_return", &v192);
  v191 = (*v4 & 0x80) != 0;
  v105 = sub_29782852C(v104, "cxx_unicode_literals", &v191);
  v190 = (*v4 & 0x80) != 0;
  v106 = sub_2978284B4(v105, "cxx_unrestricted_unions", &v190);
  v189 = (*v4 & 0x80) != 0;
  v107 = sub_29782868C(v106, "cxx_user_literals", &v189);
  v188 = (*v4 & 0x80) != 0;
  v108 = sub_297828770(v107, "cxx_variadic_templates", &v188);
  v187 = *(v4 + 1) & 1;
  v109 = sub_2978288D8(v108, "cxx_aggregate_nsdmi", &v187);
  v186 = *(v4 + 1) & 1;
  v110 = sub_2978288D8(v109, "cxx_binary_literals", &v186);
  v185 = *(v4 + 1) & 1;
  v111 = sub_297828950(v110, "cxx_contextual_conversions", &v185);
  v184 = *(v4 + 1) & 1;
  v112 = sub_29782868C(v111, "cxx_decltype_auto", &v184);
  v183 = *(v4 + 1) & 1;
  v113 = sub_2978288D8(v112, "cxx_generic_lambdas", &v183);
  v182 = *(v4 + 1) & 1;
  v114 = sub_29782868C(v113, "cxx_init_captures", &v182);
  v181 = *(v4 + 1) & 1;
  v115 = sub_2978287E8(v114, "cxx_relaxed_constexpr", &v181);
  v180 = *(v4 + 1) & 1;
  v116 = sub_297828430(v115, "cxx_return_type_deduction", &v180);
  v179 = *(v4 + 1) & 1;
  v117 = sub_297828770(v116, "cxx_variable_templates", &v179);
  v178 = (*v4 & 0x40) != 0;
  v118 = sub_2978283B8(v117, "has_nothrow_assign", &v178);
  v177 = (*v4 & 0x40) != 0;
  v119 = sub_297828A58(v118, "has_nothrow_copy", &v177);
  v176 = (*v4 & 0x40) != 0;
  v120 = sub_2978284B4(v119, "has_nothrow_constructor", &v176);
  v175 = (*v4 & 0x40) != 0;
  v121 = sub_2978283B8(v120, "has_trivial_assign", &v175);
  v174 = (*v4 & 0x40) != 0;
  v122 = sub_297828A58(v121, "has_trivial_copy", &v174);
  v173 = (*v4 & 0x40) != 0;
  v123 = sub_2978284B4(v122, "has_trivial_constructor", &v173);
  v172 = (*v4 & 0x40) != 0;
  v124 = sub_297828770(v123, "has_trivial_destructor", &v172);
  v171 = (*v4 & 0x40) != 0;
  v125 = sub_297828770(v124, "has_virtual_destructor", &v171);
  v170 = (*v4 & 0x40) != 0;
  v126 = sub_297811E3C(v125, "is_abstract", &v170);
  v169 = (*v4 & 0x40) != 0;
  v127 = sub_297810340(v126, "is_base_of", &v169);
  v168 = (*v4 & 0x40) != 0;
  v128 = sub_297810578(v127, "is_class", &v168);
  v167 = (*v4 & 0x40) != 0;
  v129 = sub_297828A58(v128, "is_constructible", &v167);
  v166 = (*v4 & 0x40) != 0;
  v130 = sub_29782868C(v129, "is_convertible_to", &v166);
  v165 = (*v4 & 0x40) != 0;
  v131 = sub_297810578(v130, "is_empty", &v165);
  v164 = (*v4 & 0x40) != 0;
  v132 = sub_2978102CC(v131, "is_enum", &v164);
  v163 = (*v4 & 0x40) != 0;
  v133 = sub_297810578(v132, "is_final", &v163);
  v162 = (*v4 & 0x40) != 0;
  v134 = sub_297810340(v133, "is_literal", &v162);
  v161 = (*v4 & 0x40) != 0;
  v135 = sub_2978283B8(v134, "is_standard_layout", &v161);
  v160 = (*v4 & 0x40) != 0;
  v136 = sub_297810504(v135, "is_pod", &v160);
  v159 = (*v4 & 0x40) != 0;
  v137 = sub_297812248(v136, "is_polymorphic", &v159);
  v158 = (*v4 & 8) != 0;
  v138 = sub_297812160(v137, "is_sealed", &v158);
  v157 = (*v4 & 0x40) != 0;
  v139 = sub_297810340(v138, "is_trivial", &v157);
  v156 = (*v4 & 0x40) != 0;
  v140 = sub_2978284B4(v139, "is_trivially_assignable", &v156);
  v155 = (*v4 & 0x40) != 0;
  v141 = sub_297828950(v140, "is_trivially_constructible", &v155);
  v154 = (*v4 & 0x40) != 0;
  v142 = sub_2978287E8(v141, "is_trivially_copyable", &v154);
  v153 = (*v4 & 0x40) != 0;
  v143 = sub_297810578(v142, "is_union", &v153);
  v152 = (*v4 & 0x10000000000000) != 0;
  v144 = sub_2978102CC(v143, "modules", &v152);
  v145 = sub_297805510(a1);
  v151 = sub_29783D8D0(v145);
  v146 = sub_297810428(v144, "tls", &v151);
  v150 = (*v4 & 0x40) != 0;
  v147 = sub_2978285A4(v146, "underlying_type", &v150);
  v149 = 0;
  return sub_297828CA4(v147, &v149);
}

BOOL sub_297877E14(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_297878E70(a3);
  if (sub_297872188(a3))
  {
    sub_29785A4E4(a3, a1, 842, v11);
    v7 = v11;
LABEL_6:
    sub_29782963C(v7);
    v8 = 0;
    return sub_297878B18(a1, a2, a3, v8);
  }

  if (!v6)
  {
    sub_29785A4E4(a3, a1, 841, v10);
    v7 = v10;
    goto LABEL_6;
  }

  v8 = v6 + 16;
  return sub_297878B18(a1, a2, a3, v8);
}

BOOL sub_297877F1C(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  sub_29786FD54(a3, a1);
  if (sub_297850F64(a1, 21))
  {
    v6 = sub_2977FB5F0(a1);
    sub_297850EEC(a3, v6, 712, v21);
    v7 = sub_297869558(v21, a2);
  }

  else
  {
    v9 = sub_2977FB5F0(a1);
    sub_29786FD54(a3, a1);
    if (sub_297850F64(a1, 6))
    {
      v10 = sub_2977FB5F0(a1);
      sub_297850EEC(a3, v10, 630, v20);
      v8 = v20;
      goto LABEL_6;
    }

    v13 = sub_29784F384(a1);
    v14 = sub_297828314(v13);
    v16 = v15;
    v17 = sub_29783CFFC(a3);
    sub_2978044E8(v21, v17 + 136);
    v11 = sub_297804D28(v14, v16, v21[0], v21[1]);
    sub_29786FD54(a3, a1);
    if (!sub_297850F64(a1, 22))
    {
      return v11;
    }

    v18 = sub_2977FB5F0(a1);
    sub_297850EEC(a3, v18, 712, v21);
    v19 = sub_297869558(v21, a2);
    sub_297869528(v19, 0x16u);
    sub_29782963C(v21);
    sub_297850EEC(a3, v9, 50, v21);
    v7 = v21;
  }

  sub_297869528(v7, 0x15u);
  v8 = v21;
LABEL_6:
  sub_29782963C(v8);
  return 0;
}

BOOL sub_2978780CC(uint64_t a1)
{
  v1 = sub_2978503FC(a1);

  return sub_297878E78(v1);
}

uint64_t sub_2978780F4(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  *(result + 244) = *(result + 244) & 0xFF7F | v2;
  return result;
}

uint64_t sub_297878114(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(result + 244) = *(result + 244) & 0xFFEF | v2;
  return result;
}

__n128 sub_297878134(__n128 *a1, __n128 *a2, unint64_t a3, unint64_t a4)
{
  result = *a2;
  v5 = a2[1].n128_u64[0];
  *a1 = *a2;
  a1[1].n128_u64[0] = v5;
  a1[1].n128_u64[1] = a3;
  a1[2].n128_u64[0] = a4;
  return result;
}

BOOL sub_297878154(uint64_t a1)
{
  sub_297878440(v8);
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  if (v2 == v3)
  {
LABEL_18:
    v5 = sub_297806904(v8);
    goto LABEL_19;
  }

  v4 = v3;
  while (sub_29784FF04(v2, 21))
  {
    v7 = 1;
LABEL_5:
    sub_297803988(v8, &v7);
LABEL_10:
    v2 += 24;
    if (v2 == v4)
    {
      goto LABEL_18;
    }
  }

  if (sub_29784FF04(v2, 22))
  {
    if (sub_297806904(v8) || !*sub_2978192CC(v8))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (sub_29784FF04(v2, 23))
  {
    v7 = 0;
    goto LABEL_5;
  }

  if (!sub_29784FF04(v2, 24))
  {
    goto LABEL_10;
  }

  if (!sub_297806904(v8) && *sub_2978192CC(v8) != 1)
  {
LABEL_9:
    sub_2978192E8(v8);
    goto LABEL_10;
  }

LABEL_17:
  v5 = 0;
LABEL_19:
  sub_2977FD134(v8);
  return v5;
}

_BYTE *sub_297878280(const void **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = a2 - sub_2977FB720(a1);
  if (sub_2977FB7B8(a1) == a2)
  {
    sub_2978767AC(a1, a3, a4);
    return (sub_2977FB720(a1) + v8);
  }

  else
  {
    v9 = sub_29787844C(a3, a4);
    v10 = sub_29783E83C(a1);
    sub_297878450(a1, v10 + v9);
    v11 = (sub_2977FB720(a1) + v8);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((sub_2977FB7B8(a1) - v11) >> 3);
    v13 = sub_2977FB7B8(a1);
    if (v12 >= v9)
    {
      v19 = sub_2977FB7B8(a1);
      sub_2977FDEF4(&v23, v19 - 24 * v9);
      v20 = sub_2977FB7B8(a1);
      sub_2977FDEF4(&v22, v20);
      sub_2978784A4(a1, v23, v22);
      sub_29787856C();
      sub_297859C14();
    }

    else
    {
      v14 = sub_2977FB7B8(a1);
      sub_2977FD5DC(a1, v14 + 24 * v9);
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v11) >> 3);
      v16 = sub_2977FB7B8(a1);
      sub_2978198E8(v11, v13, (v16 - 8 * ((v13 - v11) >> 3)));
      if (v13 != v11)
      {
        v17 = v11;
        do
        {
          v18 = *a3;
          *(v17 + 15) = *(a3 + 15);
          *v17 = v18;
          v17 += 24;
          a3 += 24;
          --v15;
        }

        while (v15);
      }

      sub_297807F80(a3, a4, v13);
    }
  }

  return v11;
}

char *sub_297878450(const void **a1, unsigned int a2)
{
  result = sub_29784DF10(a1);
  if (result < a2)
  {

    return sub_297846128(a1, a2);
  }

  return result;
}

uint64_t sub_2978784A4(const void **a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29782C504(a2, a3);
  v7 = sub_2977FD5B0(a1);
  if (v6 > 0xAAAAAAAAAAAAAAABLL * ((v7 - sub_2977FB7B8(a1)) >> 3))
  {
    v8 = sub_29783E83C(a1);
    sub_297846128(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_297878624(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + 24 * v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_29787858C(__int128 *a1, __int128 *a2, _OWORD *a3)
{
  v9 = a3;
  v10 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      v5 = v9;
      v6 = *(v4 + 2);
      v7 = *v4;
      v4 = (v4 + 24);
      *v9 = v7;
      *(v5 + 2) = v6;
      v9 = (v5 + 24);
      v10 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v11, &v10, &v9);
  return v11;
}

uint64_t sub_297878640(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v8 = a2;
  v9 = a1;
  for (i = a3; sub_2978199A0(&v9, &v8); i = (i + 24))
  {
    if (sub_2977FD678())
    {
      break;
    }

    v3 = i;
    v4 = sub_2977FB720(&v9);
    v5 = *(v4 + 16);
    *i = *v4;
    *(v3 + 2) = v5;
    sub_2978297A4(&v9);
  }

  sub_2977FD680(&v10, &v9, &i);
  return v10;
}

uint64_t sub_297878700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_297878790(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_2978787A0(const void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 - 8 * ((a2 - a1) >> 3));
  v5 = a2;
  sub_29785AA90(v4, a1, 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3));
  return sub_2977FD958(&v5, &v4);
}

void *sub_297878830(void *a1, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  result = sub_29781DFB8(a1, a2);
  *result = &unk_2A1E55638;
  result[2] = *a3;
  *(result + 6) = *a4;
  *(result + 7) = *a5;
  return result;
}

void *sub_2978788D8(void *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  result = sub_29781DFB8(a1, a2);
  *result = &unk_2A1E55668;
  *(result + 4) = *a3;
  *(result + 5) = *a4;
  *(result + 6) = *a5;
  return result;
}

uint64_t sub_297878980(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 33)
  {
    v6 = sub_2977FB720(a1);
    if (!memcmp(a2, v6, 0x21uLL))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978789EC(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 36)
  {
    v6 = sub_2977FB720(a1);
    if (!memcmp(a2, v6, 0x24uLL))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297878A7C(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 32)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1] && a2[2] == v6[2] && a2[3] == v6[3])
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

BOOL sub_297878B18(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2977FB5F0(a1);
  if (sub_297878E60(a3))
  {
    sub_29786FD54(a3, a1);
    if (!sub_297850F64(a1, 21))
    {
      v9 = sub_2977FB5F0(a1);
      if (sub_297878E68(a3))
      {
        v14 = sub_297878E68(a3);
        sub_29787D794(v14, a1);
      }

      else
      {
        sub_29787C4FC(a3, a1);
      }

LABEL_12:
      sub_297806EC8(v31);
      sub_297804560(&v29);
      sub_297829180(&v28);
      v15 = sub_2978503FC(a1);
      if (v15 > 14)
      {
        if (v15 == 46)
        {
          LOBYTE(v26[0]) = 60;
          sub_2977FCD50(v31, v26);
          if (sub_29786E470(a3, v31, &v28))
          {
            sub_297853640(a1, 2);
            goto LABEL_26;
          }

          v29 = sub_297801F10(v31);
          v30 = v19;
          goto LABEL_23;
        }

        if (v15 != 15)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v15 == 2)
        {
          goto LABEL_26;
        }

        if (v15 != 13)
        {
LABEL_15:
          v16 = sub_2977FB5F0(a1);
          sub_297850EEC(a3, v16, 718, v27);
          v17 = v27;
LABEL_25:
          sub_29782963C(v17);
          goto LABEL_26;
        }
      }

      LOBYTE(v26[0]) = 0;
      v29 = sub_29787BB08(a3, a1, v31, v26);
      v30 = v18;
      if (v26[0])
      {
        goto LABEL_26;
      }

LABEL_23:
      v20 = sub_2977FB5F0(a1);
      sub_29786FD54(a3, a1);
      if (sub_297850F64(a1, 22))
      {
        v21 = sub_2978780B4(a3, v20, 0);
        sub_297850EEC(a3, v21, 712, v26);
        v22 = sub_297869558(v26, a2);
        sub_297869528(v22, 0x16u);
        sub_29782963C(v26);
        sub_297850EEC(a3, v9, 50, v26);
        sub_297869528(v26, 0x15u);
        v17 = v26;
        goto LABEL_25;
      }

      v24 = sub_2977FB5F0(a1);
      v25 = sub_29786E338(a3, v24, &v29);
      if (!sub_297806914(&v29))
      {
        v26[0] = 0;
        v13 = sub_29786A308(a3, v20, v29, v30, v25, a4, v26, 0, 0, 0, 0) != 0;
        goto LABEL_27;
      }

LABEL_26:
      v13 = 0;
LABEL_27:
      sub_297801F60(v31);
      return v13;
    }

    v9 = sub_2978780B4(a3, v8, 0);
    sub_297850EEC(a3, v9, 712, v31);
    v10 = sub_297869558(v31, a2);
    sub_297869528(v10, 0x15u);
    sub_29782963C(v31);
    if (sub_29784FF04(a1, 15) || sub_29784FF04(a1, 13) || sub_29784FF04(a1, 46))
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_297850EEC(a3, v8, 702, v31);
    v11 = sub_297828314(a2);
    sub_2978295C0(v31, v11, v12);
    sub_29782963C(v31);
  }

  return 0;
}

uint64_t sub_297878E88(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v6 = sub_297803A7C(a1);
  result = sub_29782AFAC(a1);
  if (result)
  {
    v8 = result;
    v9 = sub_297879000();
    v10 = sub_29782F360();
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

uint64_t sub_297878FB0(uint64_t a1)
{
  v2 = sub_29783D84C(a1);
  v3 = sub_29783D84C(a1);
  sub_297878FAC(&v5, v2, v3, 1);
  return v5;
}

uint64_t sub_297879004(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a4 & 1) == 0)
  {
    sub_297879038(a1);
  }

  return a1;
}

uint64_t sub_297879038(uint64_t **a1)
{
  v2 = sub_29780A6B4();
  result = sub_29782F39C();
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

uint64_t *sub_2978790B4(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  if (sub_297879110(a1, a2, &v6))
  {
    return v6;
  }

  v5 = 0;
  return sub_29787914C(a1, a2, &v5, v6);
}

uint64_t sub_297879110(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = 0;
  result = sub_297878E88(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t *sub_29787914C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_297879188(a1, a2, a4);
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t *sub_297879188(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_297879274(a1, (2 * v6));
    sub_297879110(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_297879274(a1, v7);
    sub_297879110(a1, a2, &v10);
  }

  sub_29782B4D8(a1);
  v8 = sub_297879000();
  if (!sub_297807F98(*v10, v8))
  {
    sub_29782B514(a1);
  }

  return v10;
}

void sub_297879278(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29783DC8C(a1, *v5);
  if (v4)
  {
    sub_2978793C4(a1, v4, &v4[2 * v3]);
    j__free(v4);
  }

  else
  {
    sub_297879304(a1);
  }
}

uint64_t sub_297879304(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  sub_29782AF58(a1, 0);
  v2 = sub_297879000();
  v3 = sub_297803A7C(a1);
  result = sub_29783D84C(a1);
  if (v3 != result)
  {
    v5 = 0;
    v6 = (result - v3 - 16) >> 4;
    v7 = (v6 + 2) & 0x1FFFFFFFFFFFFFFELL;
    v8 = vdupq_n_s64(v6);
    v9 = (v3 + 16);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v5), xmmword_2978F4C70)));
      if (v10.i8[0])
      {
        *(v9 - 2) = v2;
      }

      if (v10.i8[4])
      {
        *v9 = v2;
      }

      v5 += 2;
      v9 += 4;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t sub_2978793C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_297879304(a1);
  v6 = sub_297879000();
  result = sub_29782F360();
  if (a2 != a3)
  {
    v8 = result;
    do
    {
      result = sub_297807F98(*a2, v6);
      if ((result & 1) == 0)
      {
        result = sub_297807F98(*a2, v8);
        if ((result & 1) == 0)
        {
          v9 = 0;
          sub_297879110(a1, a2, &v9);
          *v9 = *a2;
          v9[1] = a2[1];
          result = sub_29782B4D8(a1);
        }
      }

      a2 += 2;
    }

    while (a2 != a3);
  }

  return result;
}

__n128 sub_297879498(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *&v4[1] = *(a1 + 16);
  v3 = *(a2 + 15);
  *a1 = *a2;
  *(a1 + 15) = v3;
  *a2 = result;
  *(a2 + 15) = *v4;
  return result;
}

uint64_t *sub_2978794CC(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_29783E83C(a2);
  return a1;
}

uint64_t sub_29787951C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_29787D714(a1, a2, a3);
  *v12 = &unk_2A1E55698;
  sub_297829180((v12 + 120));
  *(a1 + 128) = a4;
  *(a1 + 136) = a4;
  *(a1 + 144) = 0;
  *(a1 + 152) = a5;
  *(a1 + 160) = a5;
  *(a1 + 168) = a6;
  sub_29784FB00(a1 + 176);
  v13 = sub_29781F408(a2);
  *(a1 + 120) = sub_2978423A8(v13, a3);
  return a1;
}

uint64_t sub_2978795BC(uint64_t a1, unsigned int *a2)
{
  v14 = *(a1 + 136);
  v4 = sub_297879778(&v14, a2);
  v6 = sub_297879778(&v14, v5);
  v8 = sub_297879778(&v14, v7);
  *(a1 + 136) = v14;
  sub_297853ED0(a2);
  sub_297853640(a2, v4);
  sub_29785111C(a2, SBYTE1(v4));
  v9 = sub_297840FC8((a1 + 120), v8);
  sub_29780819C(a2, v9);
  sub_297847418(a2, HIWORD(v4));
  if (sub_29784FF60(a2))
  {
    sub_2977FD5DC(a2, *(*(a1 + 168) + 200) + v6);
  }

  else if (v6)
  {
    sub_297854784((a1 + 32));
    v10 = sub_2978797AC(*(a1 + 168), v6 - 1);
    sub_2977FD5DC(a2, v10);
    v11 = sub_297871628(v10);
    sub_297853640(a2, v11);
    if (sub_297852028(v10))
    {
      return sub_29787C22C(*(a1 + 8), a2);
    }

    return 1;
  }

  if (v4 == 65)
  {
    if (sub_297850404(a2))
    {
      *(a1 + 144) = *(a1 + 136) - 12;
      sub_29786A740(*(a1 + 8), a2);
      return 0;
    }

    goto LABEL_13;
  }

  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v13 = *a2;
      *(a1 + 191) = *(a2 + 15);
      *(a1 + 176) = v13;
      return sub_2978797C4(a1, a2);
    }

LABEL_13:
    sub_297854784((a1 + 32));
    return 1;
  }

  *(a1 + 24) = 0;
  return 1;
}

uint64_t sub_297879778(unsigned int **a1, uint64_t a2)
{
  result = sub_297808590(*a1, a2);
  ++*a1;
  return result;
}

uint64_t sub_2978797AC(uint64_t *a1, unsigned int a2)
{
  if (*(a1[19] + 8 * a2))
  {
    return *(a1[19] + 8 * a2);
  }

  else
  {
    return sub_297879A70(a1, a2);
  }
}

uint64_t sub_2978797C4(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    return 1;
  }

  else
  {
    while (!sub_297806904((a1 + 64)))
    {
      v8 = sub_297853994(*(a1 + 8));
      if (sub_297853F10(&v8, (a1 + 120)))
      {
        v5 = *(a1 + 8);
        v6 = sub_29783D2C4(a1 + 64);
        sub_297850EEC(v5, *v6, 751, v7);
        sub_29782963C(v7);
      }

      sub_29783D2E0(a1 + 64);
    }

    return sub_2978729BC(*(a1 + 8), a2, 0);
  }
}

__n128 sub_297879880(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 176);
  *(a2 + 15) = *(a1 + 191);
  *a2 = result;
  return result;
}

uint64_t sub_297879894(uint64_t result)
{
  *(result + 24) = 0;
  v1 = *(result + 136);
  do
  {
    v2 = v1;
    if (*v1 == 1)
    {
      break;
    }

    v1 += 12;
  }

  while ((v2[1] & 1) == 0);
  *(result + 136) = v2;
  return result;
}

BOOL sub_2978798C0(uint64_t a1, uint64_t a2)
{
  do
  {
    v3 = sub_297879778((a1 + 160), a2);
    v5 = sub_297879778((a1 + 160), v4);
    v6 = v5;
    v7 = *(a1 + 128);
    v8 = v7 + v3;
    v9 = *(a1 + 144);
    if (v8 < v9 && v5 != 0)
    {
      v20 = (*(a1 + 152) + 8 * v5);
      v11 = v7 + sub_297879778(&v20, a2);
      v9 = *(a1 + 144);
      if (v11 <= v9)
      {
        v6 = sub_297879778(&v20, a2);
        *(a1 + 160) = v20;
        v9 = *(a1 + 144);
        v8 = v11;
      }
    }
  }

  while (v8 < v9);
  v20 = (*(a1 + 152) + 8 * v6);
  *(a1 + 160) = v20;
  v12 = *(a1 + 128);
  v13 = v12 + sub_297879778(&v20, a2);
  v15 = sub_297879778(&v20, v14);
  v16 = *(a1 + 136);
  if (v16 <= v13)
  {
    v17 = 12;
    if (!v15)
    {
      v17 = 36;
    }

    v18 = v13 + v17;
    *(a1 + 144) = v13;
    goto LABEL_15;
  }

  if (!v15)
  {
    v18 = v16 + 24;
LABEL_15:
    *(a1 + 136) = v18;
    return v15 == 0;
  }

  *(a1 + 144) = v13;
  return v15 == 0;
}

uint64_t sub_2978799D4(uint64_t a1, uint64_t a2)
{
  v5 = (*(a1 + 136) + 8);
  v3 = sub_297879778(&v5, a2);
  return sub_297840FC8((a1 + 120), v3);
}

uint64_t sub_297879A3C(unsigned __int16 **a1, uint64_t a2)
{
  result = sub_297879D60(*a1, a2);
  ++*a1;
  return result;
}

uint64_t sub_297879A70(uint64_t *a1, unsigned int a2)
{
  v9 = (a1[21] + 4 * a2);
  v4 = sub_2977FB7B8(a1[1]);
  v6 = v4 + sub_297879778(&v9, v5);
  v7 = sub_297879AE4((a1 + 2), 1);
  *(v7 + 24) = v6;
  result = sub_297830E6C(v7);
  *(a1[19] + 8 * a2) = result;
  return result;
}

unint64_t sub_297879AF0(uint64_t *a1, unsigned int a2)
{
  v4 = sub_29781F408(a1[24]);
  result = sub_2978606D8(v4, a2);
  v15 = result;
  if (result)
  {
    sub_297879BE0(a1[20], &v15, v14);
    sub_297879D1C(v13);
    if (sub_297879D08(v14, v13))
    {
      return 0;
    }

    else
    {
      *v13 = sub_297879D24(v14, v6);
      v7 = sub_2977FB7B8(a1[1]);
      v8 = v7 + sub_2977FB5F0(v13);
      v12 = (v7 + sub_297847BE0(v13));
      if (sub_297879778(&v12, v9))
      {
        v10 = v12;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v11 = sub_2977FA198(200);
      return sub_2978795B4(v11, a1[24], a2, v8, v10, a1);
    }
  }

  return result;
}

uint64_t sub_297879BE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_297879D68(*a2);
  v6 = v5;
  v8 = v7;
  v9 = sub_297879DA0(v5, v7);
  v25 = (*(a1 + 8) + 4 * ((*a1 - 1) & v9));
  v11 = sub_297879778(&v25, v10);
  if (!v11)
  {
    return sub_297879DCC(a3);
  }

  v24 = (*(a1 + 16) + v11);
  v13 = sub_297879A3C(&v24, v12);
  if (!v13)
  {
    return sub_297879DCC(a3);
  }

  v15 = v13;
  while (1)
  {
    v16 = sub_297879778(&v24, v14);
    v18 = sub_297879DD0(&v24, v17);
    v19 = v24;
    if (v16 == v9)
    {
      break;
    }

LABEL_7:
    v24 = &v19[(v18 + HIDWORD(v18))];
    if (!--v15)
    {
      return sub_297879DCC(a3);
    }
  }

  v20 = sub_297879E20(v24);
  v22 = v21;
  if (!sub_297879E54(v20, v21, v6, v8))
  {
    v19 = v24;
    goto LABEL_7;
  }

  return sub_297879E94(a3, v20, v22, &v24[v18], SHIDWORD(v18), a1 + 24);
}

void sub_297879D30()
{
  v0 = sub_297879D2C();

  j__free(v0);
}

uint64_t sub_297879D68(uint64_t a1)
{
  v3 = 1;
  v2 = sub_2977FB720(a1);
  return sub_297879E98(&v3, &v2);
}

uint64_t sub_297879DD0(unsigned __int16 **a1, uint64_t a2)
{
  v6 = sub_297879A3C(a1, a2);
  v3 = *a1;
  *a1 = (*a1 + 1);
  v5 = *v3;
  return sub_2978182B8(&v6, &v5);
}

uint64_t sub_297879E20(char *a1)
{
  v3 = *a1;
  v2 = a1 + 1;
  return sub_297879E98(&v3, &v2);
}

uint64_t sub_297879ECC(uint64_t result, _BYTE *a2, void *a3)
{
  *result = *a2;
  *(result + 8) = *a3;
  return result;
}

uint64_t sub_297879EE0()
{
  result = sub_297879F00();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_297879F04(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_297879F10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  return result;
}

uint64_t sub_297879F24(unsigned int *a1, uint64_t a2)
{
  v6 = a1;
  v2 = sub_297879778(&v6, a2);
  v4 = sub_297879778(&v6, v3);
  sub_297879F74(&v7, v2, v4);
  return v7;
}

uint64_t sub_297879F78(uint64_t a1)
{
  *a1 = &unk_2A1E556D0;
  std::string::~string((a1 + 8));
  return a1;
}

void *sub_297879FC4(void *a1)
{
  *a1 = &unk_2A1E556D0;
  sub_297802744(a1 + 1);
  return a1;
}

uint64_t sub_29787A008(void *a1)
{
  *a1 = &unk_2A1E55700;
  v2 = a1 + 4;
  sub_29787A06C((a1 + 4));
  sub_29781B854(v2);

  return sub_297879F78(a1);
}

void sub_29787A06C(uint64_t a1)
{
  v4 = sub_29781ACE4(a1);
  v3 = sub_29781AD1C(a1);
  while (sub_29781550C(&v4, &v3))
  {
    v2 = *(sub_29781AD54(&v4) + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    sub_29781AE30(&v4);
  }

  sub_29787AF90(a1);
}

void sub_29787A110()
{
  v0 = sub_29787A10C();

  j__free(v0);
}

uint64_t sub_29787A138(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_29787A188((a1 + 32), a2, a3);
  if (!result && (a4 & 1) == 0)
  {
    sub_297804560(v7);
    return sub_29787A188((a1 + 32), v7[0], v7[1]);
  }

  return result;
}

uint64_t sub_29787A188(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29783D390(a1, a2, a3);
  v5 = sub_29783BFD4(a1);
  if (sub_29781550C(&v6, &v5))
  {
    return *(sub_29781AD54(&v6) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29787A1E8(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = sub_29787A23C(a2);
  v5 = sub_29781BFDC(a1 + 32, v3, v4);
  return sub_297828E60(v5, &v7);
}

uint64_t sub_29787A26C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  sub_2978692B0(a2, a4);
  if (sub_29784F384(a4))
  {
    v8 = sub_29784F384(a4);
    v9 = sub_297828314(v8);
    v11 = v10;
    v15 = v9;
    v16 = v10;
  }

  else
  {
    sub_297804560(&v15);
    v9 = v15;
    v11 = v16;
  }

  v12 = sub_29787A138(a1, v9, v11, 0);
  if (v12)
  {
    return (*(*v12 + 16))(v12, a2, a3, a4);
  }

  sub_29785A4E4(a2, a4, 897, v14);
  return sub_29782963C(v14);
}

uint64_t sub_29787A34C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = *(a1 + 872);
  if (result)
  {
    result = (*(*result + 72))(result, a2, a3);
  }

  if ((*(a1 + 436) & 0x100) != 0)
  {
    ++*(a1 + 1340);
    sub_29784FB00(v8);
    (*(**(a1 + 640) + 16))(*(a1 + 640), a1, a3, v8);
    result = sub_29780B1BC((a1 + 824));
    if (result)
    {
      v6 = sub_2977FB720(a1 + 824);
      result = sub_29787F0A4(v6);
      if (result)
      {
        return sub_297869264(a1);
      }
    }

    v7 = *(a1 + 808);
    if (v7)
    {
      if (*(v7 + 24) == 1)
      {
        return sub_297869264(a1);
      }
    }
  }

  return result;
}

uint64_t sub_29787A434(uint64_t a1, uint64_t a2)
{
  sub_29787A95C(v37, a1, *(a1 + 439), a2);
  v4 = sub_2977FB5F0(a2);
  sub_29787C4FC(a1, a2);
  if (sub_297850F64(a2, 21))
  {
    sub_297850EEC(a1, v4, 622, v36);
    v5 = v36;
LABEL_3:
    sub_29782963C(v5);
LABEL_12:
    sub_29787A960(v37);
    return sub_29787AA40(v37);
  }

  sub_29787C4FC(a1, a2);
  v6 = sub_2978503FC(a2);
  if ((sub_297856264(v6) & 1) == 0)
  {
    sub_297850EEC(a1, v4, 622, v35);
    sub_29782963C(v35);
    if (!sub_297850F64(a2, 22) || !sub_297850F64(a2, 1))
    {
LABEL_10:
      if (sub_29784FF04(a2, 22))
      {
        sub_29787C4FC(a1, a2);
      }

      goto LABEL_12;
    }

LABEL_9:
    sub_29787C4FC(a1, a2);
    goto LABEL_10;
  }

  if (sub_297860C44(a2))
  {
    sub_29785A4E4(a1, a2, 19, v34);
    sub_29782963C(v34);
    goto LABEL_9;
  }

  v32 = *a2;
  v33 = *(a2 + 16);
  sub_29787C4FC(a1, a2);
  if (sub_297850F64(a2, 22))
  {
    sub_297850EEC(a1, v4, 622, v31);
    v5 = v31;
    goto LABEL_3;
  }

  if ((*(a1 + 439) & 1) == 0)
  {
    v8 = sub_2977FB5F0(a2);
    sub_297853628(a1, &v32, 0, &v30);
    if (*sub_29780327C(&v30, 0) == 76 || *sub_29780327C(&v30, 0) == 85 || *sub_29780327C(&v30, 0) == 117 && *sub_29780327C(&v30, 1) != 56)
    {
      v24[0] = sub_29780739C(&v30);
      sub_297809B4C(v25, v24);
      sub_29787A96C(&v30, v25[0]);
    }

    else if (*sub_29780327C(&v30, 0) == 117)
    {
      v24[0] = sub_29780739C(&v30);
      sub_297809B4C(v25, v24);
      v27 = sub_29780739C(&v30);
      v28 = sub_29780C7E0(&v27, 2);
      sub_297809B4C(&v29, &v28);
      sub_29787A9CC(&v30, v25[0], v29);
    }

    if (*sub_29780327C(&v30, 0) == 82)
    {
      LODWORD(v9) = -1;
      do
      {
        v10 = (v9 + 3);
        v9 = (v9 + 1);
      }

      while (*sub_29780327C(&v30, v10) != 40);
      std::string::erase(&v30, 0, v10);
      v11 = sub_2978032A4(&v30);
      std::string::erase(&v30, v11 + ~v9, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v12 = sub_2978032A4(&v30);
      v13 = v12 - 1;
      if (v12 == 2)
      {
        v14 = 1;
      }

      else
      {
        v19 = 1;
        v20 = 1;
        do
        {
          v21 = v20;
          v22 = *sub_29780327C(&v30, v20) != 92 || v20 + 1 >= v13;
          if (!v22 && (*sub_29780327C(&v30, v20 + 1) == 92 || *sub_29780327C(&v30, v20 + 1) == 34))
          {
            v21 = ++v20;
          }

          v23 = *sub_29780327C(&v30, v21);
          v14 = v19 + 1;
          *sub_29780327C(&v30, v19) = v23;
          ++v20;
          ++v19;
        }

        while (v20 != v13);
      }

      v29 = sub_29780739C(&v30);
      v24[0] = sub_29780C7E0(&v29, v14);
      sub_297809B4C(v25, v24);
      v26 = sub_2978073D8(&v30);
      v27 = sub_29787AA38(&v26, 1);
      sub_297809B4C(&v28, &v27);
      sub_29787A9CC(&v30, v25[0], v28);
    }

    *sub_29780327C(&v30, 0) = 32;
    v15 = sub_2978032A4(&v30);
    *sub_29780327C(&v30, v15 - 1) = 10;
    sub_29784FB00(v25);
    sub_297853ED0(v25);
    sub_2978044E8(v24, &v30);
    sub_297829180(&v29);
    sub_297829180(&v28);
    sub_29787BBC8(a1, v24[0], v24[1], v25, v29, v28);
    v16 = sub_2977FB5F0(v25);
    v17 = sub_2978032A4(&v30);
    v18 = sub_29784F77C(v16, v4, v8, v17, a1);
    sub_2978725FC(a1, v18, 0);
    sub_29787A34C(a1, v4, 1);
    sub_29787C4FC(a1, a2);
    std::string::~string(&v30);
  }

  return sub_29787AA40(v37);
}

uint64_t sub_29787A96C(std::string *a1, uint64_t a2)
{
  v6 = a2;
  v5 = sub_29780739C(a1);
  v3 = sub_297808460(&v6, &v5);
  std::string::erase(a1, v3, 1uLL);
  return sub_29780C7E0(&v5, v3);
}

uint64_t sub_29787A9CC(std::string *a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  v9 = a2;
  v7 = sub_29780739C(a1);
  v4 = sub_297808460(&v9, &v7);
  v5 = sub_297808460(&v8, &v9);
  std::string::erase(a1, v4, v5);
  return sub_29780C7E0(&v7, v4);
}

uint64_t sub_29787AA44(uint64_t a1, unsigned int *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = sub_2977FB5F0(a2);
  sub_29787C4FC(a1, a2);
  if (sub_297850F64(a2, 21))
  {
    sub_297850EEC(a1, v4, 622, v18);
    result = sub_29782963C(v18);
  }

  else
  {
    sub_29787AC78(v19);
    sub_29787C4FC(a1, a2);
    if (sub_297850F64(a2, 1))
    {
      v6 = 0;
      do
      {
        sub_2978405F8(v19, a2);
        if (sub_29784FF04(a2, 21))
        {
          ++v6;
        }

        else if (sub_29784FF04(a2, 22))
        {
          if (!v6)
          {
            break;
          }

          --v6;
        }

        sub_29787C4FC(a1, a2);
      }

      while (sub_297850F64(a2, 1));
    }

    if (sub_29784FF04(a2, 1))
    {
      sub_297850EEC(a1, v4, 767, v17);
      sub_29782963C(v17);
    }

    else
    {
      v7 = sub_297803A7C(v19);
      sub_29785111C(v7, 2);
      v8 = sub_297819418(v19);
      sub_297853640(v8, 2);
      v9 = sub_29783E83C(v19);
      v10 = v9;
      v11 = 24 * v9;
      if (is_mul_ok(v9, 0x18uLL))
      {
        v12 = 24 * v9;
      }

      else
      {
        v12 = -1;
      }

      v13 = sub_2977FA198(v12);
      v14 = v13;
      if (v10)
      {
        do
        {
          v13 = sub_29784FB00(v13) + 24;
          v11 -= 24;
        }

        while (v11);
      }

      sub_2977FB720(v19);
      sub_2977FB7B8(v19);
      sub_297859C14();
      v15 = sub_29783E83C(v19);
      sub_2978727D0(a1, v14, v15, 1, 1);
      sub_29787A34C(a1, v4, 2);
      sub_29787C4FC(a1, a2);
    }

    result = sub_2977FD134(v19);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29787AC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v10 = a3;
  v6 = *(a1 + 640);
  if (!sub_297806914(&v9))
  {
    v7 = sub_29787A138(*(a1 + 640), v9, v10, 1);
    if (v7)
    {
      v6 = (*(*v7 + 24))(v7);
    }

    else
    {
      v6 = sub_2977FA198(64);
      sub_29787AD30(v6, v9, v10);
      sub_29787A1E8(*(a1 + 640), v6);
    }
  }

  return sub_29787A1E8(v6, a4);
}

BOOL sub_29787AD84(uint64_t a1, unsigned __int16 *a2)
{
  if (sub_297828CD0(a1) != 3)
  {
    return 0;
  }

  v4 = sub_297828CB8(a1);
  return *v4 == *a2 && *(v4 + 2) == *(a2 + 2);
}

uint64_t sub_29787AE24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 9) = 0;
  *(a1 + 16) = a4;
  sub_29784FB00(a1 + 24);
  if (a3)
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 15);
    *(a1 + 24) = *v7;
    *(a1 + 39) = v8;
    sub_297866C04(a2);
  }

  return a1;
}

uint64_t sub_29787AE90(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *(a1 + 9);
    v3 = *a1;
    if (v2 == 1)
    {
      sub_297866C7C(v3);
    }

    else
    {
      sub_297866C90(v3);
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
      *(v4 + 15) = *(a1 + 39);
      *v4 = v5;
    }
  }

  return a1;
}

void *sub_29787AEF0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29787AF38(a1, a2, a3);
  *v4 = &unk_2A1E55700;
  sub_29781BBD0(v4 + 4);
  return a1;
}

void *sub_29787AF38(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  *a1 = &unk_2A1E556D0;
  sub_297801F5C(v5, (a1 + 1));
  return a1;
}

void sub_29787AF90(uint64_t a1)
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
        v5 = *a1;
        v6 = *(*a1 + v3);
        if (v6)
        {
          if (v6 != sub_2978027E4())
          {
            sub_29781BCB4(*(v5 + v3), a1 + 24);
          }
        }

        *(v5 + v3) = 0;
        v3 += 8;
      }

      while (v4 != v3);
    }

    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_29787B018(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  sub_29782AF58(a1, 0);
  v2 = sub_297879000();
  v3 = sub_297803A7C(a1);
  result = sub_29784541C(a1);
  if (v3 != result)
  {
    v5 = 0;
    v6 = (result - v3 - 32) >> 5;
    v7 = (v6 + 2) & 0xFFFFFFFFFFFFFFELL;
    v8 = vdupq_n_s64(v6);
    v9 = (v3 + 32);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v5), xmmword_2978F4C70)));
      if (v10.i8[0])
      {
        *(v9 - 4) = v2;
      }

      if (v10.i8[4])
      {
        *v9 = v2;
      }

      v5 += 2;
      v9 += 8;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t sub_29787B0D8(_DWORD *a1, unsigned int a2)
{
  v6 = a2;
  v3 = sub_29782D9A0(&v6);
  v4 = v6;
  if (!v3)
  {
    return sub_297841004(a1, v6);
  }

  return v4;
}

uint64_t sub_29787B124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10)
{
  v18 = sub_29782916C(a1);
  sub_297829174(v18 + 2, a2);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = sub_2977FD5B0(a6);
  *(a1 + 48) = a5;
  *(a1 + 64) = a6;
  *(a1 + 72) = a7;
  *(a1 + 80) = 0u;
  sub_29780AE44(a1 + 96);
  sub_297817C28((a1 + 104));
  sub_297829180((a1 + 424));
  sub_297829180((a1 + 428));
  sub_297831F94(a1 + 440, a4, a8);
  sub_29783C0BC((a1 + 616));
  sub_2978074A4(a1 + 624);
  sub_297809B88((a1 + 648));
  *(a1 + 672) = 0;
  *(a1 + 676) = a10;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0;
  sub_297829180((a1 + 700));
  sub_297829180((a1 + 704));
  sub_297829180((a1 + 708));
  sub_29783CEF0(a1 + 712);
  *(a1 + 768) = 0;
  sub_297829180((a1 + 772));
  sub_297829180((a1 + 776));
  *(a1 + 780) = 0;
  LODWORD(v27) = 0;
  v29 = 1;
  sub_29787B53C(a1 + 784, &v27, &v29);
  sub_29780AE44(a1 + 792);
  sub_29780AE44(a1 + 800);
  *(a1 + 808) = 0u;
  sub_29780AE44(a1 + 824);
  *(a1 + 832) = 0;
  *(a1 + 840) = 0;
  sub_297809B88((a1 + 848));
  *(a1 + 872) = 0;
  sub_29783F918(a1 + 880);
  sub_29787B540(a1 + 984, 0);
  sub_29787B544(a1 + 1008);
  *(a1 + 1296) = 0;
  sub_29787B548(a1 + 1304, 0);
  sub_297802744(a1 + 1392);
  sub_297829180((a1 + 1416));
  sub_29787B54C(a1 + 1488);
  sub_297809B88((a1 + 1896));
  *(a1 + 1920) = 0;
  sub_29787B550(a1 + 1928);
  sub_297809B88((a1 + 1992));
  *(a1 + 2016) = 0u;
  sub_29787B540(a1 + 2032, 0);
  if (a9)
  {
    v19 = 16;
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 436) = *(a1 + 436) & 0xFFEF | v19;
  v20 = sub_2977FA198(24);
  *(a1 + 56) = sub_29787D880(v20, *(a1 + 48));
  *(a1 + 432) = 0;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 0u;
  v21 = *(a1 + 436);
  *(a1 + 1420) = 0;
  *(a1 + 438) = 0;
  *(a1 + 1984) = 0;
  *(a1 + 436) = v21 & 0xFC10 | 0x100;
  sub_2977FB7B4(&v27, "__VA_ARGS__");
  v22 = sub_297869520(a1, v27, v28);
  *(a1 + 328) = v22;
  sub_29786ECAC(v22, 1);
  sub_29787B554(a1, *(a1 + 328), 797);
  v23 = sub_2977FA198(64);
  sub_297804560(&v27);
  sub_29787AD30(v23, v27, v28);
  *(a1 + 640) = v23;
  nullsub_1(a1, v24);
  sub_297874004(a1);
  if ((**(a1 + 24) & 0x20) != 0)
  {
    sub_2977FB7B4(&v27, "_exception_info");
    *(a1 + 2080) = sub_297869520(a1, v27, v28);
    sub_2977FB7B4(&v27, "__exception_info");
    *(a1 + 2088) = sub_297869520(a1, v27, v28);
    sub_2977FB7B4(&v27, "GetExceptionInformation");
    *(a1 + 2096) = sub_297869520(a1, v27, v28);
    sub_2977FB7B4(&v27, "_exception_code");
    *(a1 + 2056) = sub_297869520(a1, v27, v28);
    sub_2977FB7B4(&v27, "__exception_code");
    *(a1 + 2064) = sub_297869520(a1, v27, v28);
    sub_2977FB7B4(&v27, "GetExceptionCode");
    *(a1 + 2072) = sub_297869520(a1, v27, v28);
    sub_2977FB7B4(&v27, "_abnormal_termination");
    *(a1 + 2104) = sub_297869520(a1, v27, v28);
    sub_2977FB7B4(&v27, "__abnormal_termination");
    *(a1 + 2112) = sub_297869520(a1, v27, v28);
    sub_2977FB7B4(&v27, "AbnormalTermination");
    v25 = sub_297869520(a1, v27, v28);
  }

  else
  {
    v25 = 0;
    *(a1 + 2088) = 0u;
    *(a1 + 2104) = 0u;
    *(a1 + 2056) = 0u;
    *(a1 + 2072) = 0u;
  }

  *(a1 + 2120) = v25;
  return a1;
}

uint64_t *sub_29787B554(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  result = sub_29787C070(a1 + 2032, &v5);
  *result = a3;
  return result;
}

uint64_t sub_29787B5A4(uint64_t a1)
{
  sub_29787B770((a1 + 848));
  while (1)
  {
    v2 = *(a1 + 2016);
    if (!v2)
    {
      break;
    }

    *(a1 + 2016) = *(v2 + 248);
    sub_29787B7BC();
  }

  v3 = *(a1 + 1420);
  if (v3)
  {
    v4 = (a1 + 1424);
    do
    {
      if (*v4)
      {
        v5 = sub_297867600(*v4);
        j__free(v5);
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  sub_2978675B4((a1 + 824), 0);
  while (1)
  {
    v6 = *(a1 + 2024);
    if (!v6)
    {
      break;
    }

    *(a1 + 2024) = *(v6 + 256);
    sub_29787B7BC();
  }

    ;
  }

  v8 = *(a1 + 640);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    j__free(v9);
  }

  if ((*(a1 + 436) & 0x10) != 0)
  {
    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = sub_29784AE88(v10);
      j__free(v11);
    }
  }

  v12 = *(a1 + 872);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  sub_29787B7C0(a1 + 2032);
  sub_29781B950(a1 + 1992);
  sub_2977FD134(a1 + 1928);
  sub_29780A9D8(a1 + 1896);
  sub_2977FD134(a1 + 1488);
  std::string::~string((a1 + 1392));
  sub_29787B7C4(a1 + 1304);
  sub_29787B7C8(a1 + 1008);
  sub_29787B7C0(a1 + 984);
  sub_2977FD134(a1 + 880);
  sub_29787B7CC(a1 + 848);
  sub_297867580(a1 + 824);
  sub_297867584(a1 + 800);
  sub_297867584(a1 + 792);
  sub_2977FD134(a1 + 712);
  sub_29781B950(a1 + 648);
  sub_29783C0F4((a1 + 616));
  sub_29787B7D0(a1 + 440);
  sub_297818154(a1 + 104);
  sub_29787B7D4(a1 + 96);
  sub_29787B7D8(a1 + 8);
  return a1;
}

uint64_t sub_29787B770(uint64_t *a1)
{
  v2 = sub_2978670D0(a1);
  sub_297873CA4(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_29787B7E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  sub_297828CF8(a1 + 624, a2);
  v4 = *(a1 + 64);

  return sub_29784C204(v4, a2);
}

uint64_t *sub_29787B828(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_29787D394(result, v3);
  }

  return result;
}

BOOL sub_29787B84C(uint64_t a1)
{
  result = sub_29780B1BC((a1 + 792));
  if (result)
  {
    *(a1 + 832) = 0;
  }

  else
  {
    result = sub_29780B1BC((a1 + 800));
    if (result)
    {
      v3 = 1;
    }

    else
    {
      result = sub_29780B1BC((a1 + 824));
      if (result)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }
    }

    *(a1 + 832) = v3;
  }

  return result;
}

uint64_t sub_29787B8B0(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v27 = 0;
  v8 = sub_29784087C(*(a1 + 48), a2, &v27);
  v9 = v27;
  if ((v27 & 1) == 0)
  {
    v10 = v8;
    v11 = sub_2977FB7B8(v8);
    if (a3 >= 2)
    {
      v12 = 1;
      do
      {
        for (i = (v11 + 1); ; ++i)
        {
          v14 = *(i - 1);
          if (!*(i - 1))
          {
            v11 = (i - 1);
            goto LABEL_20;
          }

          if (v14 == 13 || v14 == 10)
          {
            break;
          }
        }

        v16 = i - 1;
        v17 = *i;
        if (v14 == v17)
        {
          --i;
        }

        if (v17 != 10 && v17 != 13)
        {
          i = v16;
        }

        v11 = (i + 1);
LABEL_20:
        ++v12;
      }

      while (v12 != a3);
    }

    v19 = v11 + (a4 - 1);
    if (*(a1 + 784))
    {
      v20 = *(a1 + 48);
      v21 = sub_29786A6B0(v20);
      if (sub_2978606D8(v20, v21) == a2 && (v19 - sub_2977FB7B8(v10)) < *(a1 + 784))
      {
        v19 = sub_2977FB7B8(v10) + *(a1 + 784);
      }
    }

    if (v19 > sub_2977FD5B0(v10))
    {
      LODWORD(v19) = sub_2977FD5B0(v10);
    }

    *(a1 + 688) = a2;
    *(a1 + 696) = v19 - sub_2977FB7B8(v10);
    v22 = sub_2978059FC(v10);
    v23 = (*(*v10 + 16))(v10);
    sub_2977FB7B4(v26, v23);
    v24 = sub_297804B48(v22 + 1, v26[0], v26[1]);
    sub_2977FB7B8(v24);
    sub_2977FB7B8(v10);
    *sub_2977FD84C() = 0;
    sub_2977FD5B0(v10);
    sub_2977FD84C();
    sub_2978408E0(*(a1 + 48), a2, v24, 0);
  }

  return v9;
}

uint64_t sub_29787BAA8(uint64_t a1)
{
  v2 = *(a1 + 680);
  if (v2)
  {
    (*(*v2 + 56))(v2);
  }

  return sub_297869670(a1);
}

uint64_t sub_29787BB08(uint64_t a1, unsigned int *a2, const void **a3, _BYTE *a4)
{
  if (sub_297850F64(a2, 7) && (sub_29784FF54(a2) & 1) == 0)
  {
    v8 = sub_29784F384(a2);
    if (v8)
    {
      return sub_297828314(v8);
    }
  }

  if (sub_2977FB568(a2))
  {
    v10 = sub_297847BE0(a2);
    sub_297806DA4(a3, v10);
  }

  v12 = sub_297803A7C(a3);
  v11 = sub_29785A4C8(a1, a2, &v12, a4);
  sub_2977FB7C0(&v13, v12, v11);
  return v13;
}

uint64_t sub_29787BBC8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned int a5, unsigned int a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v19 = a5;
  v9 = sub_2977FB7B8(v20);
  sub_297847418(a4, v9);
  v18 = 0;
  v10 = *(a1 + 56);
  v11 = sub_2977FB720(v20);
  v12 = sub_2977FB7B8(v20);
  v13 = sub_29787D884(v10, v11, v12, &v18);
  if (sub_297805430(&v19))
  {
    v14 = *(a1 + 48);
    v15 = v19;
    v16 = sub_2977FB7B8(v20);
    v13 = sub_29783FDB8(v14, v13, v15, a6, v16, 0, 0);
  }

  sub_29780819C(a4, v13);
  if (sub_29784FF04(a4, 7))
  {
    return sub_2977FD5DC(a4, v18);
  }

  result = sub_29784FF60(a4);
  if (result)
  {
    return sub_2977FD5DC(a4, v18);
  }

  return result;
}

uint64_t sub_29787BCDC(uint64_t a1)
{
  v2 = sub_29783CFFC(a1);
  if (sub_29780347C(v2 + 136))
  {
    return 0;
  }

  v4 = sub_297830E34(a1);
  v5 = sub_29783CFFC(a1);
  sub_2978044E8(v6, v5 + 136);
  return sub_29784AE94(v4, v6[0], v6[1], 1);
}

uint64_t sub_29787BD50(uint64_t a1)
{
  v2 = sub_29786A6B0(*(a1 + 48));
  if ((sub_29787BE74(*(a1 + 48), v2) & 1) == 0)
  {
    sub_297829180(v9);
    sub_29787229C(a1, v2, 0, v9[0]);
    if (*(a1 + 784))
    {
      v3 = sub_2977FB720(a1 + 792);
      sub_297851390(v3, *(a1 + 784), *(a1 + 788));
    }

    v4 = sub_2978606D8(*(a1 + 48), v2);
    if (v4)
    {
      sub_29787BE7C(*(a1 + 64), v4);
    }
  }

  sub_2978044E8(v9, a1 + 1392);
  sub_2977FB7B4(v8, "<built-in>");
  v5 = sub_297804AC0(v9[0], v9[1], v8[0], v8[1]);
  v6 = *(a1 + 48);
  sub_297829180(v9);
  LODWORD(v5) = sub_29787BEA0(v6, v5, 0, 0, 0, v9[0]);
  sub_29787BF0C(a1, v5);
  sub_297829180(v9);
  return sub_29787229C(a1, v5, 0, v9[0]);
}

__int16 *sub_29787BE7C(uint64_t a1, uint64_t a2)
{
  result = sub_29784CB58(a1, a2);
  ++result[1];
  return result;
}

uint64_t sub_29787BEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v11 = sub_297840018(a1, a2);

  return sub_2978404E0(a1, v11, a6, a3, a4, a5);
}

uint64_t sub_29787BF14(uint64_t a1)
{
  result = *(a1 + 872);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

_DWORD *sub_29787BF44(uint64_t a1, unsigned int *a2)
{
  if (sub_2977FB568(a2) & 1) != 0 || (sub_29784FF54(a2))
  {
    sub_297811C54(v15);
    v4 = sub_29787BB08(a1, a2, v15, 0);
    v6 = v5;
    if (sub_29784FF54(a2))
    {
      sub_297811C54(v14);
      sub_297856480(v14, v4, v6);
      v7 = sub_2978059B8(v14);
      v9 = sub_297869520(a1, v7, v8);
      sub_297801F60(v14);
    }

    else
    {
      v9 = sub_297869520(a1, v4, v6);
    }

    sub_297801F60(v15);
  }

  else
  {
    v10 = sub_29784FF14(a2);
    v9 = sub_297869520(a1, v10, v11);
  }

  sub_2977FD5DC(a2, v9);
  v12 = sub_297871628(v9);
  sub_297853640(a2, v12);
  return v9;
}

uint64_t sub_29787C08C(uint64_t a1, unsigned int *a2)
{
  v9[0] = sub_29784F384(a2);
  sub_29787C15C(a1 + 2032, v9, v10);
  sub_29782DA30(v11, v10);
  sub_29787C1D0(a1 + 2032, v9);
  sub_29782DA30(v10, v9);
  if (sub_29783FFE0(v11, v10))
  {
    sub_29785A4E4(a1, a2, 752, v8);
    v4 = v8;
  }

  else
  {
    v5 = sub_2977FB720(v11);
    sub_29785A4E4(a1, a2, *(v5 + 8), v10);
    v6 = sub_29784F384(a2);
    sub_297869558(v10, v6);
    v4 = v10;
  }

  return sub_29782963C(v4);
}

uint64_t sub_29787C15C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 0;
  if (!sub_297879110(a1, a2, &v8))
  {
    return sub_29787C1D0(a1, a3);
  }

  v5 = v8;
  v6 = sub_29783D84C(a1);
  return sub_297878FAC(a3, v5, v6, 1);
}

uint64_t sub_29787C1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29783D84C(a1);
  v5 = sub_29783D84C(a1);

  return sub_297878FAC(a2, v4, v5, 1);
}

uint64_t sub_29787C22C(uint64_t a1, unsigned int *a2)
{
  v4 = sub_29784F384(a2);
  if (sub_29783C260(v4))
  {
    v5 = *(a1 + 328);
    v6 = v4 == v5 ? sub_29783C224(v5) : 0;
    (*(**(a1 + 88) + 24))(*(a1 + 88), v4);
    v7 = sub_297871628(v4);
    sub_297853640(a2, v7);
    if (v4 == *(a1 + 328))
    {
      sub_29786ECAC(v4, v6);
    }
  }

  if (sub_29783C224(v4) && *(a1 + 808))
  {
    sub_29787C08C(a1, a2);
  }

  v8 = sub_29785A890(a1, v4);
  if (v8)
  {
    v9 = v8;
    v10 = sub_29785A8E8(v8);
    if ((*(a1 + 436) & 0x20) == 0)
    {
      v11 = v10;
      if ((sub_29787B840(a2) & 1) != 0 || !sub_297859E30(v11))
      {
        sub_29785111C(a2, 4);
        if (sub_29786ECDC(v11) || sub_2978742AC(a1))
        {
          sub_29785A4E4(a1, a2, 834, v17);
          sub_29782963C(v17);
        }
      }

      else if (!sub_29785B3B4(v11) || sub_2978742AC(a1))
      {

        return sub_2978743E0(a1, a2, v9);
      }
    }
  }

  if (sub_29783C254(v4) && (*(a1 + 436) & 0x20) == 0)
  {
    sub_29785A4E4(a1, a2, 863, v16);
    v13 = sub_297828314(v4);
    sub_2978295C0(v16, v13, v14);
    sub_29782963C(v16);
    sub_29783C378(v4, 0);
  }

  if (sub_29783C23C(v4))
  {
    sub_2977FD5DC(a2, 0);
  }

  if (sub_29783C248(v4) && (*(a1 + 436) & 0x20) == 0)
  {
    sub_29785A4E4(a1, a2, 815, v15);
    sub_29782963C(v15);
  }

  if (*(a1 + 768) == 1 && sub_29783C26C(v4) && (*(a1 + 436) & 0x28) == 0 && ((*(sub_29783CFFC(a1) + 6) & 0x10) != 0 || (*(sub_29783CFFC(a1) + 25) & 0x10) != 0) && *(a1 + 832) != 3)
  {
    *(a1 + 708) = sub_2977FB5F0(a2);
    sub_2977FD800((a1 + 712));
    *(a1 + 769) = 1;
    *(a1 + 832) = 4;
  }

  return 1;
}

BOOL sub_29787C4FC(uint64_t a1, unsigned int *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a1 + 832);
        if (v4 > 1)
        {
          break;
        }

        if (v4)
        {
          if (v4 == 1)
          {
            v5 = sub_2977FB720(a1 + 800);
            if (sub_2978795BC(v5, a2))
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
          v7 = sub_2977FB720(a1 + 792);
          if (sub_297853C20(v7, a2))
          {
            goto LABEL_15;
          }
        }
      }

      if (v4 != 2)
      {
        break;
      }

      v6 = sub_2977FB720(a1 + 824);
      if (sub_29787E63C(v6, a2))
      {
        goto LABEL_15;
      }
    }

    if (v4 == 3)
    {
      break;
    }

    if (v4 == 4)
    {
      sub_29787C5C4(a1, a2);
      goto LABEL_15;
    }
  }

  sub_297866CE8(a1, a2);
LABEL_15:
  result = sub_29784FF04(a2, 71);
  *(a1 + 768) = result;
  return result;
}

uint64_t sub_29787C5C4(uint64_t a1, unsigned int *a2)
{
  sub_29787B84C(a1);
  sub_29787C4FC(a1, a2);
  if (*(a1 + 769) != 1)
  {
    goto LABEL_5;
  }

  if (sub_2978503FC(a2) == 6)
  {
    v13 = sub_29784F384(a2);
    v12 = sub_2977FB5F0(a2);
    *&v14 = sub_2978461F8(&v13, &v12);
    DWORD2(v14) = v4;
    result = sub_297803F88(a1 + 712, &v14);
    *(a1 + 769) = 0;
LABEL_7:
    *(a1 + 832) = 4;
    return result;
  }

  if ((*(a1 + 769) & 1) == 0)
  {
LABEL_5:
    result = sub_2978503FC(a2);
    if (result == 25)
    {
      *(a1 + 769) = 1;
      goto LABEL_7;
    }
  }

  result = sub_297806904((a1 + 712));
  if ((result & 1) == 0)
  {
    result = sub_29783CFFC(a1);
    if ((*(result + 6) & 0x10) != 0)
    {
      v7 = *(a1 + 72);
      v8 = *(a1 + 708);
      sub_29781601C(&v14, a1 + 712);
      v13 = (*(*v7 + 16))(v7, v8, v14, *(&v14 + 1), 1, 0);
      result = sub_29784DD58(&v13, v9);
      v6 = result;
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 872))
    {
      if ((*(sub_29783CFFC(a1) + 6) & 0x10) != 0 || (result = sub_29783CFFC(a1), (*(result + 25) & 0x10) != 0))
      {
        v10 = *(a1 + 872);
        v11 = *(a1 + 708);
        sub_29781601C(&v14, a1 + 712);
        return (*(*v10 + 48))(v10, v11, v14, *(&v14 + 1), v6);
      }
    }
  }

  return result;
}

uint64_t sub_29787C780(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, int a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (!sub_297850F64(a2, 13))
  {
    sub_29784C09C(v22);
    do
    {
      sub_2978405F8(v22, a2);
      if (sub_297860C44(a2))
      {
        sub_29785A4E4(a1, a2, 19, v21);
        sub_29782963C(v21);
      }

      if (a5)
      {
        sub_29787C4FC(a1, a2);
      }

      else
      {
        sub_2978692B0(a1, a2);
      }
    }

    while (sub_29784FF04(a2, 13));
    sub_297876660(&v19, v22);
    sub_297859108(v20, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_, a1, 1);
    if ((v20[656] & 1) == 0)
    {
      if (v20[657] != 1)
      {
        v18[0] = sub_297860C54(v20);
        v18[1] = v15;
        sub_297801F5C(v18, &v19);
        sub_2978046C4(a3, &v19);
        std::string::~string(&v19);
        v11 = 1;
        goto LABEL_15;
      }

      v12 = sub_29783E88C(v22, 0);
      v13 = sub_2977FB5F0(v12);
      sub_297850EEC(a1, v13, 13, &v19);
      v14 = sub_2978563C8(&v19, 0);
      sub_29783F028(v14, a4);
      sub_29782963C(&v19);
    }

    v11 = 0;
LABEL_15:
    sub_297860CA4(v20);
    sub_2977FD134(v22);
    goto LABEL_16;
  }

  sub_29785A4E4(a1, a2, 13, v20);
  v10 = sub_2978563C8(v20, 0);
  sub_29783F028(v10, a4);
  sub_29782963C(v20);
  v11 = 0;
LABEL_16:
  v16 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_29787C960(uint64_t a1)
{
  if (*(a1 + 53))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(a1 + 52) ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_29787C9AC(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v3 = sub_29780A294((a1 + 648), a2);
  v5 = sub_297809B0C(a1 + 648, v4);
  v8 = sub_29787CA18(v3, v5, &v9);
  sub_297809B4C(&v7, &v8);
  return sub_29787CA80((a1 + 648), v7);
}

uint64_t sub_29787CA18(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_29780C8A4(a1);
  v7 = sub_29780C8A4(a2);
  v8 = sub_297863880(v6, v7, a3, &v10);
  return sub_29787D694(a1, v8);
}

uint64_t sub_29787CA80(void *a1, uint64_t a2)
{
  v9 = a2;
  v8 = sub_29787D70C(a1, a2);
  v3 = sub_297868E28(&v9, &v8);
  v4 = a1[1];
  v5 = *a1 + 8 * v3;
  v6 = sub_297819048();
  sub_2978676A0(a1, v6);
  return sub_2978082EC(a1, v5);
}

BOOL sub_29787CAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = sub_29780A294((a1 + 648), a2);
  v10 = sub_297809B0C(a1 + 648, v6);
  result = sub_29780852C(&v11, &v10);
  if (result)
  {
    v8 = 0;
    do
    {
      v9 = sub_2977FB720(&v11);
      v8 |= (*(**v9 + 16))(*v9, a1, a3);
      sub_29781B504(&v11);
    }

    while (sub_29780852C(&v11, &v10));
    if ((v8 & 1) != 0 && (sub_29784F5B4(a1) & 1) == 0)
    {
      sub_29787C4FC(a1, a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29787CBDC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 872);
  if (v4)
  {
    v5 = sub_2977FA198(24);
    result = sub_29787CC74(v5, a2, v4);
    a2 = result;
  }

  *(v3 + 872) = a2;
  return result;
}

void *sub_29787CC78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_297868A04(a1);
  *result = &unk_2A1E55410;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t sub_29787CCC0(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  *result = *a2;
  *(result + 4) = *a3;
  return result;
}

uint64_t sub_29787CCD4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_29787CD08(v4, v2);
  return a1;
}

uint64_t sub_29787CD08(uint64_t a1, unsigned int a2)
{
  result = sub_29783DC8C(a1, a2);
  if (result)
  {

    return sub_297879304(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_29787CD64(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_29787CD98(v4, v2);
  return a1;
}

uint64_t sub_29787CD98(uint64_t a1, unsigned int a2)
{
  result = sub_29784530C(a1, a2);
  if (result)
  {

    return sub_29787B018(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_29787CE1C(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return sub_29787CE2C();
  }

  return result;
}

void sub_29787CE30(_DWORD *a1)
{
  if ((*a1)-- == 1)
  {
    v3 = sub_29787CE6C(a1);

    j__free(v3);
  }
}

uint64_t sub_29787CE70(uint64_t a1)
{
  sub_29787CEEC(a1 + 288);
  sub_29784AE80(a1 + 256);
  sub_29787CEF0(a1 + 232);
  std::string::~string((a1 + 200));
  std::string::~string((a1 + 176));
  sub_29784E4D0(a1 + 144);
  sub_297809B8C(a1 + 112);
  std::string::~string((a1 + 88));
  sub_297809B8C(a1 + 56);
  sub_297809B8C(a1 + 32);
  sub_29784AE80(a1 + 8);
  return a1;
}

uint64_t sub_29787CF1C(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return sub_29787CF2C();
  }

  return result;
}

void sub_29787CF30(_DWORD *a1)
{
  if ((*a1)-- == 1)
  {
    v3 = sub_29787CF6C(a1);

    j__free(v3);
  }
}

uint64_t sub_29787CF9C(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29787CFDC(&v3);
  return a1;
}

uint64_t *sub_29787CFDC(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29787D04C(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_29787D098(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

uint64_t sub_29787D04C(uint64_t *a1)
{
  v2 = sub_29787D0B8(a1);
  sub_29787D0D4(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_29787D0D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_29787D130(v3, v5))
  {
    i -= 48;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_29787D168(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29787D1A8(&v3);
  return a1;
}

uint64_t *sub_29787D1A8(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29787B770(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_29786721C(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

void **sub_29787D218(void **a1)
{
  sub_29787D248(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_29787D248(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_297879000();
    v4 = sub_29782F360();
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

void **sub_29787D2D0(void **a1)
{
  sub_29787D300(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_29787D300(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_297879000();
    v4 = sub_29782F360();
    v5 = sub_297803A7C(a1);
    result = sub_29784541C(a1);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        result = sub_297807F98(*v5, v3);
        if ((result & 1) == 0)
        {
          result = sub_297807F98(*v5, v4);
          if ((result & 1) == 0)
          {
            result = sub_29781B950(v5 + 1);
          }
        }

        v5 += 4;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_29787D394(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t *sub_29787D3C4(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  if (sub_297879110(a1, a2, &v6))
  {
    return v6;
  }

  v5 = 0;
  return sub_29787D420(a1, a2, &v5, v6);
}

uint64_t *sub_29787D420(uint64_t a1, uint64_t *a2, _DWORD *a3, uint64_t *a4)
{
  result = sub_29787D45C(a1, a2, a4);
  *result = *a2;
  *(result + 2) = *a3;
  return result;
}

uint64_t *sub_29787D45C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_29787D548(a1, (2 * v6));
    sub_297879110(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_29787D548(a1, v7);
    sub_297879110(a1, a2, &v10);
  }

  sub_29782B4D8(a1);
  v8 = sub_297879000();
  if (!sub_297807F98(*v10, v8))
  {
    sub_29782B514(a1);
  }

  return v10;
}

void sub_29787D54C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29783DC8C(a1, *v5);
  if (v4)
  {
    sub_29787D5D8(a1, v4, v4 + 16 * v3);
    j__free(v4);
  }

  else
  {
    sub_297879304(a1);
  }
}

uint64_t sub_29787D5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297879304(a1);
  v6 = sub_297879000();
  result = sub_29782F360();
  if (a2 != a3)
  {
    v8 = result;
    do
    {
      result = sub_297807F98(*a2, v6);
      if ((result & 1) == 0)
      {
        result = sub_297807F98(*a2, v8);
        if ((result & 1) == 0)
        {
          v9 = 0;
          sub_297879110(a1, a2, &v9);
          *v9 = *a2;
          *(v9 + 8) = *(a2 + 8);
          result = sub_29782B4D8(a1);
        }
      }

      a2 += 16;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t sub_29787D698(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v3 = sub_29780C8D4(&v5);
  return sub_29787D6DC(&v5, (a2 - v3) >> 3);
}

uint64_t sub_29787D6DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_2978132AC(&v3, a2);
  return v3;
}

uint64_t sub_29787D714(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_2A1E55798;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 20) = 0;
  v5 = (a1 + 20);
  *(a1 + 23) = 0;
  sub_2978560E0(a1 + 32);
  sub_29780B1B8(a1 + 64);
  if (a2)
  {
    v6 = sub_29781F408(a2);
    *v5 = sub_2978404C4(v6);
  }

  return a1;
}

uint64_t sub_29787D794(uint64_t a1, unsigned int *a2)
{
  *(a1 + 25) = 1;
  if (*(a1 + 26) == 1)
  {
    (*(*a1 + 24))(a1, a2);
  }

  else
  {
    sub_29787C4FC(*(a1 + 8), a2);
  }

  *(a1 + 25) = 0;
  result = sub_29784FF04(a2, 2);
  if (result)
  {
    v5 = *(a1 + 8);
    v6 = sub_2977FB5F0(a2);
    sub_297850EEC(v5, v6, 718, v7);
    return sub_29782963C(v7);
  }

  return result;
}

uint64_t sub_29787D84C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  sub_297829180((a1 + 16));
  *(a1 + 20) = 4060;
  return a1;
}

uint64_t sub_29787D884(uint64_t a1, void *__src, size_t __n, void *a4)
{
  v5 = __n;
  v8 = *(a1 + 20);
  if (__n + v8 - 4059 <= 0xFFFFF022)
  {
    sub_29787D950(a1, __n + 2);
    v8 = *(a1 + 20);
  }

  v9 = *(a1 + 8);
  *(a1 + 20) = v8 + 1;
  *(v9 + v8) = 10;
  *a4 = *(a1 + 8) + *(a1 + 20);
  memcpy((*(a1 + 8) + *(a1 + 20)), __src, v5);
  v10 = *(a1 + 20) + v5;
  *(a1 + 20) = v10 + 1;
  *(*(a1 + 8) + v10) = 0;
  v11 = *(a1 + 20) + ~v5;

  return sub_297840FC8((a1 + 16), v11);
}

_BYTE *sub_29787D950(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0xFDC)
  {
    v3 = 4060;
  }

  else
  {
    v3 = a2;
  }

  sub_2977FB7B4(v8, "<scratch space>");
  v4 = sub_297804C54(v3, v8[0], v8[1]);
  v5 = *a1;
  sub_297829180(v8);
  v6 = sub_29787BEA0(v5, v4, 0, 0, 0, v8[0]);
  *(a1 + 16) = sub_2978423A8(*a1, v6);
  result = sub_2977FB7B8(v4);
  *(a1 + 8) = result;
  *(a1 + 20) = 1;
  *result = 48;
  return result;
}

uint64_t sub_29787DA04(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  sub_29787DB80(a1);
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 36) = 0;
  *(a1 + 40) = sub_2977FB5F0(a2);
  *(a1 + 44) = a3;
  *(a1 + 64) = *(a1 + 64) & 0xFE | sub_297850404(a2);
  if (sub_29785480C(a2))
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 64) = *(a1 + 64) & 0xF9 | v10;
  *(a1 + 24) = sub_29787CC6C(*a1);
  *(a1 + 64) &= 0xE7u;
  v11 = sub_29787DBEC(*a1);
  *(a1 + 32) = -1431655765 * ((v11 - sub_29787CC6C(*a1)) >> 3);
  sub_297829180(&v16);
  *(a1 + 48) = v16;
  v12 = sub_29781F408(*(a1 + 16));
  *(a1 + 52) = sub_2978424DC(v12);
  if (*(a1 + 32))
  {
    v13 = sub_2977FB5F0(*(a1 + 24));
    *(a1 + 56) = sub_29782CF94(v12, v13);
    v14 = sub_29787DBF4(*a1, v12);
    *(a1 + 60) = v14;
    *(a1 + 48) = sub_29783FDB8(v12, *(a1 + 56), *(a1 + 40), *(a1 + 44), v14, 0, 0);
  }

  if (sub_29785B3B4(*a1) && sub_29782AFB0(*a1))
  {
    sub_29787DC08(a1);
  }

  return sub_29787E2A8(*a1);
}

void *sub_29787DB80(uint64_t a1)
{
  v2 = *(a1 + 64);
  if ((v2 & 8) != 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      j__free(v3);
      v2 = *(a1 + 64);
    }

    *(a1 + 24) = 0;
    *(a1 + 64) = v2 & 0xF7;
  }

  result = *(a1 + 8);
  if (result)
  {
    v5 = *(a1 + 16);

    return sub_297859C84(result, v5);
  }

  return result;
}

uint64_t sub_29787DBF4(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 244))
  {
    return *(a1 + 240);
  }

  else
  {
    return sub_29785B04C(a1, a2);
  }
}

uint64_t sub_29787DC08(uint64_t a1)
{
  v63[387] = *MEMORY[0x29EDCA608];
  sub_29787E4EC(v63);
  i = *(a1 + 32);
  if (!i)
  {
    goto LABEL_77;
  }

  v3 = 0;
  v4 = 0;
  v59 = *(a1 + 32);
  do
  {
    v5 = *(a1 + 24);
    v6 = (v5 + 24 * v4);
    if (v4 && !sub_29784FF04(v5 + 24 * (v4 - 1), 66) && sub_29785480C(v6))
    {
      *(a1 + 64) |= 4u;
    }

    if (sub_29784FF04(v6, 65) || sub_29784FF04(v6, 67))
    {
      v7 = *a1;
      v8 = sub_29784F384(*(a1 + 24) + 24 * ++v4);
      v9 = sub_29785B3E8(v7, v8);
      v10 = sub_2977FB5F0(v6);
      v11 = sub_29787E4F0(a1, v10);
      v12 = sub_2977FB5F0((*(a1 + 24) + 24 * v4));
      v13 = sub_29787E4F0(a1, v12);
      sub_29784FB00(v62);
      if (sub_29784FF04(v6, 65))
      {
        v14 = sub_29785A53C(*(a1 + 8), v9, *(a1 + 16), v11, v13);
        v15 = *(v14 + 15);
        *v62 = *v14;
      }

      else
      {
        v16 = sub_297859C40(*(a1 + 8), v9);
        sub_29785A0AC(v16, *(a1 + 16), 1, v11, v13, v61);
        *v62 = *v61;
        v15 = *&v61[15];
      }

      *(&v62[1] + 7) = v15;
      if ((*(a1 + 64) & 4) != 0)
      {
        sub_29785111C(v62, 2);
      }

      sub_2978405F8(v63, v62);
      goto LABEL_15;
    }

    if (sub_297806904(v63))
    {
      v18 = 0;
      if (!v4)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v20 = sub_297819418(v63);
      v18 = sub_29784FF04(v20, 66);
      if (!v4)
      {
LABEL_22:
        v19 = 0;
        goto LABEL_25;
      }
    }

    v19 = sub_29784FF04(*(a1 + 24) + 24 * (v4 - 1), 66);
LABEL_25:
    v21 = v4 + 1 != i && sub_29784FF04(*(a1 + 24) + 24 * (v4 + 1), 66);
    v22 = sub_29784F384(v6);
    if (!v22 || (v23 = sub_29785B3E8(*a1, v22), v23 == -1))
    {
      sub_2978405F8(v63, v6);
      if ((*(a1 + 64) & 4) != 0)
      {
        v26 = sub_297819418(v63);
        sub_29785111C(v26, 2);
        *(a1 + 64) &= ~4u;
        goto LABEL_38;
      }

      i = v59;
      if (!v18 && v19)
      {
        v25 = sub_297819418(v63);
        sub_297853618(v25, 2);
      }
    }

    else
    {
      v24 = v23;
      if (v19)
      {
        goto LABEL_40;
      }

      if (sub_29787E544(*(a1 + 8)) && sub_29787E3A8(a1, v63, 0, *a1, v24, *(a1 + 16)))
      {
        v3 = 1;
LABEL_38:
        i = v59;
        goto LABEL_18;
      }

      if (v21)
      {
LABEL_40:
        v27 = sub_297859C40(*(a1 + 8), v24);
        v28 = sub_297859D24(v27);
        if (v28)
        {
          v29 = v28;
          if (v18 && sub_29783E83C(v63) >= 2)
          {
            v30 = sub_29783E83C(v63);
            v31 = sub_29783E88C(v63, v30 - 2);
            if (sub_29784FF04(v31, 64) && v24 == sub_29782AFB0(*a1) - 1 && sub_297876088(*a1))
            {
              v32 = *(a1 + 16);
              sub_297815484(v63, v62);
              v33 = sub_2977FB5F0(v62);
              sub_297850EEC(v32, v33, 795, v60);
              sub_29782963C(v60);
            }
          }

          sub_2978767AC(v63, v27, (v27 + 24 * v29));
          v34 = sub_29783E83C(v63) - v29;
          v35 = sub_29783E83C(v63);
          for (i = v59; v35 != v34; ++v34)
          {
            v36 = sub_29783E88C(v63, v34);
            if (sub_29784FF04(v36, 66))
            {
              sub_297853640(v36, 0);
            }
          }

          if (sub_297805430((a1 + 40)))
          {
            v37 = sub_2977FB5F0(v6);
            v38 = sub_2977FB7B8(v63);
            v39 = sub_2977FB7B8(v63);
            sub_29787E54C(a1, v37, (v38 - 24 * v29), v39);
          }

          v17 = *(a1 + 64);
          if ((v17 & 4) != 0)
          {
            v40 = sub_29783E83C(v63);
            v41 = sub_29783E88C(v63, v40 - v29);
            sub_29785111C(v41, 2);
            goto LABEL_15;
          }

          goto LABEL_16;
        }

        if (v21)
        {
          v3 = 1;
          ++v4;
          goto LABEL_38;
        }

        if (v18)
        {
          sub_297814678(v63);
        }

        i = v59;
        if (!sub_29787E544(*(a1 + 8)))
        {
          goto LABEL_17;
        }

        v3 = 1;
        sub_29787E3A8(a1, v63, 1, *a1, v24, *(a1 + 16));
      }

      else
      {
        v42 = sub_297859C40(*(a1 + 8), v24);
        if (sub_297859D74(*(a1 + 8), v42, *(a1 + 16)))
        {
          v43 = sub_297859E40(*(a1 + 8), v24, *a1, *(a1 + 16));
          v42 = sub_297809ADC(v43, 0);
        }

        v3 = 1;
        i = v59;
        if (sub_297850F64(v42, 1))
        {
          v44 = sub_29783E83C(v63);
          v45 = sub_297859D24(v42);
          sub_2978767AC(v63, v42, (v42 + 24 * v45));
          v46 = sub_29783CFFC(*(a1 + 16));
          if (v45 == 1 && (*v46 & 4) != 0)
          {
            v47 = sub_297819418(v63);
            if (sub_29784FF04(v47, 64))
            {
              v48 = sub_297819418(v63);
              sub_29785111C(v48, 128);
            }
          }

          v49 = sub_29783E83C(v63);
          for (j = v44; v49 != j; ++j)
          {
            v51 = sub_29783E88C(v63, j);
            if (sub_29784FF04(v51, 66))
            {
              sub_297853640(v51, 0);
            }
          }

          if (sub_297805430((a1 + 40)))
          {
            v52 = sub_2977FB5F0(v6);
            v53 = (sub_2977FB720(v63) + 24 * v44);
            v54 = sub_2977FB7B8(v63);
            sub_29787E54C(a1, v52, v53, v54);
          }

          v55 = sub_29783E88C(v63, v44);
          sub_2978531A8(v55, 2, (*(a1 + 64) >> 2) & 1);
LABEL_15:
          v17 = *(a1 + 64);
LABEL_16:
          *(a1 + 64) = v17 & 0xFB;
LABEL_17:
          v3 = 1;
        }
      }
    }

LABEL_18:
    ++v4;
  }

  while (v4 != i);
  if (v3)
  {
    *(a1 + 32) = sub_29783E83C(v63);
    v56 = *(a1 + 16);
    sub_297876660(v62, v63);
    *(a1 + 24) = sub_297876664(v56, a1, v62[0], v62[1]);
    *(a1 + 64) &= ~8u;
  }

LABEL_77:
  result = sub_2977FD134(v63);
  v58 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29787E2B8(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  sub_29787DB80(a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  if (a5)
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 64) = v10 | v11 | *(a1 + 64) & 0xE7;
  *(a1 + 32) = a3;
  *(a1 + 36) = 0;
  sub_297829180(&v16);
  v12 = v16;
  *(a1 + 40) = v16;
  *(a1 + 44) = v12;
  *(a1 + 64) &= 0xF8u;
  result = sub_297829180(&v15);
  *(a1 + 48) = v15;
  if (a3)
  {
    *(a1 + 64) = *(a1 + 64) & 0xFE | sub_297850404(a2);
    result = sub_29785480C(a2);
    if (result)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 64) = *(a1 + 64) & 0xFD | v14;
  }

  return result;
}

BOOL sub_29787E3A8(uint64_t a1, void *a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  result = sub_297876088(a4);
  if (result)
  {
    if (sub_29782AFB0(a4) - 1 == a5 && ((a3 & 1) != 0 || (*sub_29783CFFC(a6) & 4) != 0) && ((*sub_29783CFFC(a6) & 1) == 0 || (*(sub_29783CFFC(a6) + 2) & 0x80) != 0 || sub_29782AFB0(a4) >= 2) && !sub_297806904(a2))
    {
      v13 = sub_297819418(a2);
      result = sub_29784FF04(v13, 64);
      if (result)
      {
        if (a3)
        {
          v14 = sub_297819418(a2);
          v15 = sub_2977FB5F0(v14);
          sub_297850EEC(a6, v15, 795, v17);
          sub_29782963C(v17);
        }

        sub_297814678(a2);
        if (!sub_297806904(a2))
        {
          v16 = sub_297819418(a2);
          if (sub_29784FF04(v16, 66))
          {
            sub_297814678(a2);
          }
        }

        *(a1 + 64) &= ~4u;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}