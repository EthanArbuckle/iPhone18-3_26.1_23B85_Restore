unint64_t sub_29785B3E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FB7B8(a1);
  v5 = sub_29785B3D8(a1);
  if (v4 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = -v4;
  while (*v4 != a2)
  {
    v4 += 8;
    v6 -= 8;
    if (v4 == v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (-v6 - sub_2977FB7B8(a1)) >> 3;
}

uint64_t sub_29785B484(uint64_t a1)
{
  sub_297829180(&v17);
  sub_29785B5A0(v16);
  if (a1)
  {
    while (1)
    {
      v2 = sub_29785B5A4(a1);
      if (v2)
      {
        break;
      }

      v3 = sub_29785B5E8(a1);
      if (v3)
      {
        v17 = sub_29782B550(v3);
      }

      else
      {
        v4 = sub_29781BF50(a1);
        if ((sub_297849BE8(v16) & 1) == 0)
        {
          v15 = sub_29785B624(v4);
          sub_29785B630(v16, &v15);
        }
      }

      a1 = sub_2977FB720(a1);
      if (!a1)
      {
        goto LABEL_8;
      }
    }

    v10 = v2;
    v5 = v17;
    if (sub_297849BE8(v16))
    {
      v12 = *j_nullsub_1(v16, v11);
    }

    else
    {
      v12 = 1;
    }

    v8 = v12 & 1;
    v9 = v10;
  }

  else
  {
LABEL_8:
    v5 = v17;
    if (sub_297849BE8(v16))
    {
      v7 = *j_nullsub_1(v16, v6);
    }

    else
    {
      v7 = 1;
    }

    v8 = v7 & 1;
    v9 = 0;
  }

  sub_29785B5E0(&v18, v9, v5, v8);
  sub_2978486D8(v16, v13);
  return v18;
}

uint64_t sub_29785B5A4(uint64_t a1)
{
  v2 = a1;
  if (sub_29785B758(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29785B5E8(uint64_t a1)
{
  v2 = a1;
  if (sub_29785B7C0(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_29785B630(_BYTE *a1, char *a2)
{
  v3 = *a2;
  if (a1[1] == 1)
  {
    *j_nullsub_1(a1, a2) = v3;
  }

  else
  {
    *a1 = v3;
    a1[1] = 1;
  }

  return a1;
}

uint64_t sub_29785B6A8(uint64_t *a1)
{
  if (sub_29785A96C(a1) || !sub_2977FB720(*a1))
  {
    sub_29785B6A4(&v6);
    return v6;
  }

  else
  {
    v2 = sub_2977FB720(*a1);
    result = sub_29785B484(v2);
    v7 = v4;
    v8 = v5;
  }

  return result;
}

uint64_t sub_29785B71C(uint64_t result, uint64_t a2, int a3, char a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  return result;
}

uint64_t sub_29785B72C(uint64_t a1)
{
  *a1 = 0;
  sub_297829180((a1 + 8));
  return a1;
}

uint64_t sub_29785B824(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_29783DA9C(a2, 0);
  sub_2978044E8(&v26, v8);
  v9 = sub_29785BA3C(a1, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_, a3);
  if (v9)
  {
    v10 = v9;
    v11 = sub_29783CBB0(a2);
    if (v11 == 1)
    {
      return v10;
    }

    v17 = 1;
    while (1)
    {
      v18 = sub_29783DA9C(a2, v17);
      sub_2978044E8(&v26, v18);
      result = sub_29785BAC0(a1, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_, v10);
      if (!result && a4 != 0)
      {
        break;
      }

      if (result)
      {
        ++v17;
        v10 = result;
        if (v11 != v17)
        {
          continue;
        }
      }

      return result;
    }

    v20 = *(a1 + 8);
    v21 = sub_29783DA9C(a2, v17);
    sub_29782B128(v20, *(v21 + 24), 681, v29);
    v22 = sub_29783DA9C(a2, v17);
    sub_2978044E8(&v26, v22);
    v23 = sub_2978295C0(v29, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
    sub_29783CDF0(v10, &v26);
    sub_2978044E8(&v27, &v26);
    v24 = sub_2978295C0(v23, v27, v28);
    LODWORD(v23) = *(sub_29783DA9C(a2, 0) + 24);
    v25 = sub_29783DA9C(a2, v17 - 1);
    sub_297853514(&v27, v23, *(v25 + 24));
    sub_2978591B8(v24, &v27);
    goto LABEL_15;
  }

  if (a4)
  {
    v13 = *(a1 + 8);
    v14 = sub_29783DA9C(a2, 0);
    sub_29782B128(v13, *(v14 + 24), 682, v29);
    v15 = sub_29783DA9C(a2, 0);
    sub_2978044E8(&v26, v15);
    v16 = sub_2978295C0(v29, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
    sub_29783CDF0(a3, &v26);
    sub_2978044E8(&v27, &v26);
    sub_2978295C0(v16, v27, v28);
LABEL_15:
    std::string::~string(&v26);
    sub_29782963C(v29);
  }

  return 0;
}

uint64_t sub_29785BA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = a4;
    while (1)
    {
      result = sub_29785BAC0(a1, a2, a3, v7);
      if (result)
      {
        break;
      }

      v7 = *(v7 + 32);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    return sub_29785F688(a1, a2, a3);
  }

  return result;
}

uint64_t sub_29785BAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return sub_29783D31C(a4, a2, a3);
  }

  else
  {
    return sub_29785F688(a1, a2, a3);
  }
}

void *sub_29785BAD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = 0;
  sub_29783C7D0(a1 + 6);
  a1[36] = 0;
  a1[37] = 0;
  sub_297802744(a1 + 38);
  sub_29781BBD0(a1 + 41);
  sub_29785BB64(a1 + 45, 0);
  sub_29783DC08(a1 + 48, 0);
  sub_29785BB68(a1 + 51, 0);
  sub_29783DC08(a1 + 54, 0);
  sub_29785BB64(a1 + 57, 0);
  sub_29783DC08(a1 + 60, 0);
  return a1;
}

uint64_t sub_29785BB70(uint64_t a1)
{
  v6 = sub_29781ACE4(a1 + 328);
  v5 = sub_29781AD1C(a1 + 328);
  while (sub_29781550C(&v6, &v5))
  {
    v2 = sub_29781AD54(&v6);
    if (*sub_297819E7C(v2))
    {
      v3 = sub_29783CB8C();
      j__free(v3);
    }

    sub_29781AE30(&v6);
  }

  sub_29783D790(a1 + 480);
  sub_29785BC40(a1 + 456);
  sub_29783D790(a1 + 432);
  sub_29785BC44(a1 + 408);
  sub_29783D790(a1 + 384);
  sub_29785BC48(a1 + 360);
  sub_29781B854(a1 + 328);
  std::string::~string((a1 + 304));
  sub_29785617C(a1 + 48);
  return a1;
}

uint64_t sub_29785BC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a2;
  sub_29785BD20(a1 + 360, &v13, v12);
  sub_29785BD94(a1 + 360, v10);
  sub_29782DA30(v11, v10);
  if (!sub_29783FFE0(v12, v11))
  {
    return sub_29782DA30(a3, v12);
  }

  if (sub_29783CFFC(v13) != *(a1 + 40))
  {
    return sub_29782DA30(a3, v12);
  }

  v5 = sub_2977FB720(v13);
  sub_2977FB7B4(v9, v5);
  v6 = sub_297806BB4(v9[0], v9[1]);
  if (!sub_29785BDF0(v6, v7))
  {
    return sub_29782DA30(a3, v12);
  }

  sub_29784DC7C(*(a1 + 32));
  return sub_29785BD20(a1 + 360, &v13, a3);
}

uint64_t sub_29785BD20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 0;
  if (!sub_297863C08(a1, a2, &v8))
  {
    return sub_29785BD94(a1, a3);
  }

  v5 = v8;
  v6 = sub_29786412C(a1);
  return sub_2978647C8(a3, v5, v6, 1);
}

uint64_t sub_29785BD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29786412C(a1);
  v5 = sub_29786412C(a1);

  return sub_2978647C8(a2, v4, v5, 1);
}

uint64_t sub_29785BDF0(uint64_t a1, uint64_t a2)
{
  sub_2978102C8(v24, a1, a2);
  v23 = 1;
  v2 = sub_2978102CC(v24, "float.h", &v23);
  v22 = 1;
  v3 = sub_297810578(v2, "iso646.h", &v22);
  v21 = 1;
  v4 = sub_297810578(v3, "limits.h", &v21);
  v20 = 1;
  v5 = sub_297810340(v4, "stdalign.h", &v20);
  v19 = 1;
  v6 = sub_297810578(v5, "stdarg.h", &v19);
  v18 = 1;
  v7 = sub_297812160(v6, "stdBOOL.h", &v18);
  v17 = 1;
  v8 = sub_297810578(v7, "stddef.h", &v17);
  v16 = 1;
  v9 = sub_297810578(v8, "stdint.h", &v16);
  v15 = 1;
  v10 = sub_297810578(v9, "tgmath.h", &v15);
  v14 = 1;
  v11 = sub_297810578(v10, "unwind.h", &v14);
  v13 = 0;
  return sub_297828CA4(v11, &v13);
}

uint64_t sub_29785BF00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v16 = sub_29783CFFC(a2);
  v5 = sub_2977FD5B0(*a1);
  v14 = sub_29782EC8C(v5, v16);
  v15 = v6;
  while (1)
  {
    sub_29783FF6C((a1 + 48), &v16, v13);
    sub_29783FC30((a1 + 48), v11);
    sub_29782DA30(v12, v11);
    if (sub_29782EE3C(v13, v12))
    {
      break;
    }

    sub_2978040A4(a3, &v16);
    v14 = sub_297806980(v14, v15);
    v15 = v7;
    if (!sub_297806914(&v14))
    {
      v8 = sub_2977FD5B0(*a1);
      v16 = sub_29782DFB8(v8, v14, v15, 1);
      if (v16)
      {
        continue;
      }
    }

    sub_29784CB48(&v17);
    return v17;
  }

  v9 = sub_2977FB720(v13);
  sub_29785BFF8(&v17, *(v9 + 8), 0);
  return v17;
}

uint64_t sub_29785BFFC(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_29785C290(a2);
  result = sub_29785C290(a1[37]);
  if (v12 == result)
  {
    v33 = a4;
    v34 = a5;
    if (a2)
    {
      sub_29785C29C(a1, a2, 0);
    }

    sub_29785BC58(a1, a6, v39);
    sub_29785BD94((a1 + 45), v38);
    sub_29782DA30(&v35, v38);
    if (sub_29782EE3C(v39, &v35))
    {
      v14 = sub_2977FB720(v39);
      v15 = sub_2977FB720(v14 + 8);
      v16 = sub_2977FB7B8(v14 + 8);
      if (v15 != v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        do
        {
          result = sub_29785C348(v15);
          if (result == 2)
          {
            v18 = 1;
          }

          else
          {
            result = sub_29784DD58(v15, v21);
            if (result == a2)
            {
              return result;
            }

            v22 = sub_29785C348(v15);
            v24 = sub_29784DD58(v15, v23);
            result = sub_29785C34C(a2, v22, v24);
            if (result)
            {
              result = sub_29784DD58(v15, v25);
              v19 = result;
            }

            else
            {
              if (!a2)
              {
                return result;
              }

              if ((*(a1[2] + 6) & 0x20) == 0)
              {
                return result;
              }

              v26 = sub_29784DD58(v15, v25);
              result = sub_29785C390(a2, v26);
              if (result)
              {
                return result;
              }

              result = sub_29784DD58(v15, v27);
              v20 = result;
            }
          }

          v15 += 2;
        }

        while (v15 != v17);
        if (v19)
        {
          sub_29782B128(a1[1], a3, 772, &v35);
          sub_2978295C0(&v35, v33, v34);
          v28 = &v35;
          return sub_29782963C(v28);
        }

        if (v20)
        {
          goto LABEL_29;
        }

        if (v18)
        {
          return result;
        }
      }
    }

    result = sub_29785C3F4(a1, a6);
    if (result)
    {
      return result;
    }

    if ((*(a1[2] + 6) & 0x80) == 0)
    {
      if (!a2)
      {
        return result;
      }

      if ((*(sub_29785C480(a2) + 528) & 8) != 0)
      {
        v29 = 882;
      }

      else
      {
        v29 = 883;
      }

      sub_29782B128(a1[1], a3, v29, v38);
      sub_29783CDF0(a2, &v35);
      sub_2978044E8(&v36, &v35);
      v30 = v36;
      v31 = v37;
      v32 = v38;
      goto LABEL_30;
    }

LABEL_29:
    sub_29782B128(a1[1], a3, 771, v38);
    sub_29783CDF0(a2, &v35);
    sub_2978044E8(&v36, &v35);
    v32 = sub_2978295C0(v38, v36, v37);
    v30 = v33;
    v31 = v34;
LABEL_30:
    sub_2978295C0(v32, v30, v31);
    std::string::~string(&v35);
    v28 = v38;
    return sub_29782963C(v28);
  }

  return result;
}

uint64_t sub_29785C290(uint64_t result)
{
  if (result)
  {
    return sub_29785C480(result);
  }

  return result;
}

uint64_t sub_29785C29C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = sub_29783D46C(a2 + 896);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = sub_29786073C(a2 + 896, i);
      v11 = sub_29785B824(a1, v9, a2, a3);
      if (v11)
      {
        sub_2978040A4(a2 + 856, &v11);
      }

      else
      {
        v6 = 1;
      }
    }
  }

  sub_297860768((a2 + 896));
  return v6 & 1;
}

BOOL sub_29785C390(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = sub_2977FB720(a1 + 856);
  v4 = sub_2977FB7B8(a1 + 856);
  v5 = sub_297863818(v3, v4, &v7);
  return v5 != sub_2977FB7B8(a1 + 856);
}

BOOL sub_29785C3F4(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  sub_29782A6EC(v9);
  v8 = sub_29785BF00(a1, a2, v9);
  v5 = sub_29785C8DC(&v8, v4);
  sub_2977FD134(v9);
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

const void *sub_29785C484(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x29EDCA608];
  v55 = a2;
  sub_29785BC58(a1, a2, v54);
  sub_29785BD94((a1 + 45), v57);
  sub_29782DA30(v51, v57);
  if (!sub_29782EE3C(v54, v51))
  {
    sub_29782A6EC(v57);
    v53 = sub_29785BF00(a1, a2, v57);
    if (!sub_29785C8DC(&v53, v18))
    {
      goto LABEL_36;
    }

    v20 = sub_29784DD58(&v53, v19);
    v52 = v20;
    v21 = v20;
    do
    {
      v22 = v21;
      if (sub_29783CF9C(v21))
      {
        break;
      }

      v21 = *(v22 + 32);
    }

    while (v21);
    if ((*(v22 + 528) & 0x100) != 0)
    {
      v26 = sub_29785C8FC(a1, v22);
      v27 = *(v22 + 528);
      v28 = sub_29780406C(v57);
      v29 = (v27 >> 9) & 1;
      if (v28)
      {
        v30 = v28 - 1;
        do
        {
          sub_2978068F8(v51);
          v31 = sub_29782DEAC(v57, v30);
          v32 = sub_2977FB720(*v31);
          sub_2977FB7B4(&v49, v32);
          v33 = sub_297806BE8(v49, v50);
          sub_29785C95C(v33, v34, v51);
          v52 = sub_29785EFB4(a1, v33, v35, v52, 0, v29);
          *sub_29785F118((a1 + 54), &v52) = v26;
          v36 = v52;
          *(v52 + 528) |= 0x80u;
          v37 = sub_29782DEAC(v57, v30);
          *sub_29785F134((a1 + 48), v37) = v36;
          if ((*(v22 + 528) & 0x400) != 0 && sub_297806904((v52 + 584)))
          {
            v38 = v52;
            sub_29785B820(&v49, 0, 1);
            sub_2978040A4(v38 + 584, &v49);
          }

          sub_297801F60(v51);
          --v30;
        }

        while (v30 != -1);
      }

      sub_2978068F8(v51);
      v39 = sub_2977FB720(a2);
      sub_2977FB7B4(&v49, v39);
      v40 = sub_297806BE8(v49, v50);
      sub_29785C95C(v40, v41, v51);
      v52 = sub_29785EFB4(a1, v40, v42, v52, 0, v29);
      *sub_29785F118((a1 + 54), &v52) = v26;
      v43 = v52;
      *(v52 + 528) |= 0x80u;
      sub_29785F150(v43, a2);
      if ((*(v22 + 528) & 0x400) != 0 && sub_297806904((v52 + 584)))
      {
        v44 = v52;
        sub_29785B820(&v49, 0, 1);
        sub_2978040A4(v44 + 584, &v49);
      }

      sub_297801F60(v51);
    }

    else
    {
      v23 = sub_29780406C(v57);
      if (v23)
      {
        v24 = 0;
        do
        {
          v25 = sub_29782DEAC(v57, v24);
          *sub_29785F134((a1 + 48), v25) = v20;
          ++v24;
        }

        while (v23 != v24);
      }
    }

    v45 = sub_29785F17C((a1 + 45), &v55);
    sub_29785BFF8(v51, v52, 0);
    sub_2978040A4(v45, v51);
    if (sub_29783CA24(v52))
    {
      v46 = sub_29785F17C((a1 + 45), &v55);
      v56 = *sub_29783D2C4(v46);
    }

    else
    {
LABEL_36:
      sub_29784CB48(&v56);
    }

    sub_2977FD134(v57);
    result = v56;
    goto LABEL_40;
  }

  v6 = v51;
  sub_29784CB48(v51);
  v7 = sub_2977FB720(v54);
  v8 = sub_2977FB720(v7 + 8);
  v9 = sub_2977FB720(v54);
  v10 = sub_2977FB7B8(v9 + 8);
  if (v8 == v10)
  {
    goto LABEL_39;
  }

  v11 = v10;
  while (1)
  {
    if (sub_29785C348(v8) == 2)
    {
      goto LABEL_13;
    }

    v13 = sub_29784DD58(v8, v12);
    if (!sub_29783CA24(v13))
    {
      goto LABEL_13;
    }

    if (sub_29784DD58(v8, v14) == a3)
    {
      break;
    }

    if (a3 && (*(a1[2] + 6) & 0x20) != 0 && (v16 = sub_29784DD58(v8, v15), !sub_29785C390(a3, v16)))
    {
LABEL_13:
      if (++v8 == v11)
      {
        v6 = v51;
        goto LABEL_39;
      }
    }

    else
    {
      v17 = v8 + 1;
      v51[0] = *v8;
      v6 = v51;
      if (!sub_29785C348(v8))
      {
        goto LABEL_39;
      }

      ++v8;
      if (v17 == v11)
      {
        goto LABEL_39;
      }
    }
  }

  v6 = v8;
LABEL_39:
  result = *v6;
LABEL_40:
  v48 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_29785C8FC(_DWORD **a1, uint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 528) & 0x80) != 0)
  {
    v4[0] = sub_29785F5B8((a1 + 54), &v5);
    v4[1] = v3;
    return *(sub_2977FB720(v4) + 8);
  }

  else
  {

    return sub_297860670(a1, a2);
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_29785C95C(uint64_t a1, uint64_t a2, const void **a3)
{
  *(&v957 + 1) = a2;
  if (!sub_297806914(&v957))
  {
    if (sub_2978638E8(v957, *(&v957 + 1)))
    {
      goto LABEL_12;
    }

    sub_2977FD800(a3);
    v4 = sub_297803A20(&v957, 0);
    if (sub_29782A734(v4))
    {
      LOBYTE(v956) = 95;
      sub_2977FCD50(a3, &v956);
    }

    v5 = sub_2977FD0D4(a3);
    v6 = sub_2977FB7B8(&v957);
    sub_297805924(a3, v6 + v5);
    v7 = sub_2977FB7B8(&v957);
    v8 = v7;
    if (v7)
    {
      v9 = 0;
      do
      {
        v10 = sub_297803A20(&v957, v9);
        if (sub_297863980(v10))
        {
          LOBYTE(v956) = sub_297803A20(&v957, v9);
        }

        else
        {
          LOBYTE(v956) = 95;
        }

        sub_2977FCD50(a3, &v956);
        ++v9;
      }

      while (v8 != v9);
    }

    while (1)
    {
      v11 = sub_297803A7C(a3);
      v12 = sub_2977FD0D4(a3);
      sub_2977FB7C0(&v956, v11, v12);
      v957 = v956;
LABEL_12:
      v13 = sub_2978102C8(&v956, v957, *(&v957 + 1));
      v955 = 1;
      v14 = sub_29781049C(v13, "auto", &v955);
      v954 = 1;
      v15 = sub_2978103B4(v14, "break", &v954);
      v953 = 1;
      v16 = sub_29781049C(v15, "case", &v953);
      v952 = 1;
      v17 = sub_29781049C(v16, "char", &v952);
      v951 = 1;
      v18 = sub_2978103B4(v17, "const", &v951);
      v950 = 1;
      v19 = sub_297810578(v18, "continue", &v950);
      v949 = 1;
      v20 = sub_2978102CC(v19, "default", &v949);
      v948 = 1;
      v21 = sub_29781243C(v20, "do", &v948);
      v947 = 1;
      v22 = sub_297810504(v21, "double", &v947);
      v946 = 1;
      v23 = sub_29781049C(v22, "else", &v946);
      v945 = 1;
      v24 = sub_29781049C(v23, "enum", &v945);
      v944 = 1;
      v25 = sub_297810504(v24, "extern", &v944);
      v943 = 1;
      v26 = sub_2978103B4(v25, "float", &v943);
      v942 = 1;
      v27 = sub_297810428(v26, "for", &v942);
      v941 = 1;
      v28 = sub_29781049C(v27, "goto", &v941);
      v940 = 1;
      v29 = sub_29781243C(v28, "if", &v940);
      v939 = 1;
      v30 = sub_297810504(v29, "inline", &v939);
      v938 = 1;
      v31 = sub_297810428(v30, "int", &v938);
      v937 = 1;
      v32 = sub_29781049C(v31, "long", &v937);
      v936 = 1;
      v33 = sub_297810578(v32, "register", &v936);
      v935 = 1;
      v34 = sub_297810578(v33, "restrict", &v935);
      v934 = 1;
      v35 = sub_297810504(v34, "return", &v934);
      v933 = 1;
      v36 = sub_2978103B4(v35, "short", &v933);
      v932 = 1;
      v37 = sub_297810504(v36, "signed", &v932);
      v931 = 1;
      v38 = sub_297810504(v37, "sizeof", &v931);
      v930 = 1;
      v39 = sub_297810504(v38, "static", &v930);
      v929 = 1;
      v40 = sub_297810504(v39, "struct", &v929);
      v928 = 1;
      v41 = sub_297810504(v40, "switch", &v928);
      v927 = 1;
      v42 = sub_2978102CC(v41, "typedef", &v927);
      v926 = 1;
      v43 = sub_2978103B4(v42, "union", &v926);
      v925 = 1;
      v44 = sub_297810578(v43, "unsigned", &v925);
      v924 = 1;
      v45 = sub_29781049C(v44, "void", &v924);
      v923 = 1;
      v46 = sub_297810578(v45, "volatile", &v923);
      v922 = 1;
      v47 = sub_2978103B4(v46, "while", &v922);
      v921 = 1;
      v48 = sub_297810578(v47, "_Alignas", &v921);
      v920 = 1;
      v49 = sub_297810578(v48, "_Alignof", &v920);
      v919 = 1;
      v50 = sub_2978102CC(v49, "_Atomic", &v919);
      v918 = 1;
      v51 = sub_2978103B4(v50, "_Bool", &v918);
      v917 = 1;
      v52 = sub_297810578(v51, "_Complex", &v917);
      v916 = 1;
      v53 = sub_297810578(v52, "_Generic", &v916);
      v915 = 1;
      v54 = sub_297810340(v53, "_Imaginary", &v915);
      v914 = 1;
      v55 = sub_297812160(v54, "_Noreturn", &v914);
      v913 = 1;
      v56 = sub_297812248(v55, "_Static_assert", &v913);
      v912 = 1;
      v57 = sub_297828618(v56, "_Thread_local", &v912);
      v911 = 1;
      v58 = sub_297810578(v57, "__func__", &v911);
      v910 = 1;
      v59 = sub_297810340(v58, "__objc_yes", &v910);
      v909 = 1;
      v60 = sub_297812160(v59, "__objc_no", &v909);
      v908 = 1;
      v61 = sub_297810428(v60, "asm", &v908);
      v907 = 1;
      v62 = sub_29781049C(v61, "BOOL", &v907);
      v906 = 1;
      v63 = sub_2978103B4(v62, "catch", &v906);
      v905 = 1;
      v64 = sub_2978103B4(v63, "class", &v905);
      v904 = 1;
      v65 = sub_297810340(v64, "const_cast", &v904);
      v903 = 1;
      v66 = sub_297810504(v65, "delete", &v903);
      v902 = 1;
      v67 = sub_2978121D4(v66, "dynamic_cast", &v902);
      v901 = 1;
      v68 = sub_297810578(v67, "explicit", &v901);
      v900 = 1;
      v69 = sub_297810504(v68, "export", &v900);
      v899 = 1;
      v70 = sub_2978103B4(v69, "false", &v899);
      v898 = 1;
      v71 = sub_297810504(v70, "friend", &v898);
      v897 = 1;
      v72 = sub_2978102CC(v71, "mutable", &v897);
      v896 = 1;
      v73 = sub_297812160(v72, "namespace", &v896);
      v895 = 1;
      v74 = sub_297810428(v73, "new", &v895);
      v894 = 1;
      v75 = sub_297810578(v74, "operator", &v894);
      v893 = 1;
      v76 = sub_2978102CC(v75, "private", &v893);
      v892 = 1;
      v77 = sub_297812160(v76, "protected", &v892);
      v891 = 1;
      v78 = sub_297810504(v77, "public", &v891);
      v890 = 1;
      v79 = sub_297828A58(v78, "reinterpret_cast", &v890);
      v889 = 1;
      v80 = sub_297811E3C(v79, "static_cast", &v889);
      v888 = 1;
      v81 = sub_297810578(v80, "template", &v888);
      v887 = 1;
      v82 = sub_29781049C(v81, "this", &v887);
      v886 = 1;
      v83 = sub_2978103B4(v82, "throw", &v886);
      v885 = 1;
      v84 = sub_29781049C(v83, "true", &v885);
      v884 = 1;
      v85 = sub_297810428(v84, "try", &v884);
      v883 = 1;
      v86 = sub_297810578(v85, "typename", &v883);
      v882 = 1;
      v87 = sub_297810504(v86, "typeid", &v882);
      v881 = 1;
      v88 = sub_2978103B4(v87, "using", &v881);
      v880 = 1;
      v89 = sub_2978102CC(v88, "virtual", &v880);
      v879 = 1;
      v90 = sub_2978102CC(v89, "wchar_t", &v879);
      v878 = 1;
      v91 = sub_2978102CC(v90, "alignas", &v878);
      v877 = 1;
      v92 = sub_2978102CC(v91, "alignof", &v877);
      v876 = 1;
      v93 = sub_297810578(v92, "char16_t", &v876);
      v875 = 1;
      v94 = sub_297810578(v93, "char32_t", &v875);
      v874 = 1;
      v95 = sub_297812160(v94, "constexpr", &v874);
      v873 = 1;
      v96 = sub_297810578(v95, "decltype", &v873);
      v872 = 1;
      v97 = sub_297810578(v96, "noexcept", &v872);
      v871 = 1;
      v98 = sub_2978102CC(v97, "nullptr", &v871);
      v870 = 1;
      v99 = sub_297828618(v98, "static_assert", &v870);
      v869 = 1;
      v100 = sub_2978121D4(v99, "thread_local", &v869);
      v868 = 1;
      v101 = sub_297810340(v100, "_Decimal32", &v868);
      v867 = 1;
      v102 = sub_297810340(v101, "_Decimal64", &v867);
      v866 = 1;
      v103 = sub_297811E3C(v102, "_Decimal128", &v866);
      v865 = 1;
      v104 = sub_297810504(v103, "__null", &v865);
      v864 = 1;
      v105 = sub_297812160(v104, "__alignof", &v864);
      v863 = 1;
      v106 = sub_297811E3C(v105, "__attribute", &v863);
      v862 = 1;
      v107 = sub_2978287E8(v106, "__builtin_choose_expr", &v862);
      v861 = 1;
      v108 = sub_2978283B8(v107, "__builtin_offsetof", &v861);
      v860 = 1;
      v109 = sub_2978289D4(v108, "__builtin_types_compatible_p", &v860);
      v859 = 1;
      v110 = sub_297828A58(v109, "__builtin_va_arg", &v859);
      v858 = 1;
      v111 = sub_297828618(v110, "__extension__", &v858);
      v857 = 1;
      v112 = sub_297810504(v111, "__imag", &v857);
      v856 = 1;
      v113 = sub_297810578(v112, "__int128", &v856);
      v855 = 1;
      v114 = sub_297812160(v113, "__label__", &v855);
      v854 = 1;
      v115 = sub_297810504(v114, "__real", &v854);
      v853 = 1;
      v116 = sub_297810578(v115, "__thread", &v853);
      v852 = 1;
      v117 = sub_2978121D4(v116, "__FUNCTION__", &v852);
      v851 = 1;
      v118 = sub_2978288D8(v117, "__PRETTY_FUNCTION__", &v851);
      v850 = 1;
      v119 = sub_297810504(v118, "typeof", &v850);
      v849 = 1;
      v120 = sub_297828618(v119, "__FUNCDNAME__", &v849);
      v848 = 1;
      v121 = sub_297811E3C(v120, "__FUNCSIG__", &v848);
      v847 = 1;
      v122 = sub_297828618(v121, "L__FUNCTION__", &v847);
      v846 = 1;
      v123 = sub_29782852C(v122, "__is_interface_class", &v846);
      v845 = 1;
      v124 = sub_297811E3C(v123, "__is_sealed", &v845);
      v844 = 1;
      v125 = sub_29782868C(v124, "__is_destructible", &v844);
      v843 = 1;
      v126 = sub_297828430(v125, "__is_nothrow_destructible", &v843);
      v842 = 1;
      v127 = sub_2978284B4(v126, "__is_nothrow_assignable", &v842);
      v841 = 1;
      v128 = sub_2978283B8(v127, "__is_constructible", &v841);
      v840 = 1;
      v129 = sub_297828950(v128, "__is_nothrow_constructible", &v840);
      v839 = 1;
      v130 = sub_29782852C(v129, "__has_nothrow_assign", &v839);
      v838 = 1;
      v131 = sub_297828430(v130, "__has_nothrow_move_assign", &v838);
      v837 = 1;
      v132 = sub_2978283B8(v131, "__has_nothrow_copy", &v837);
      v836 = 1;
      v133 = sub_297828430(v132, "__has_nothrow_constructor", &v836);
      v835 = 1;
      v134 = sub_29782852C(v133, "__has_trivial_assign", &v835);
      v834 = 1;
      v135 = sub_297828430(v134, "__has_trivial_move_assign", &v834);
      v833 = 1;
      v136 = sub_2978283B8(v135, "__has_trivial_copy", &v833);
      v832 = 1;
      v137 = sub_297828430(v136, "__has_trivial_constructor", &v832);
      v831 = 1;
      v138 = sub_29786399C(v137, "__has_trivial_move_constructor", &v831);
      v830 = 1;
      v139 = sub_297828860(v138, "__has_trivial_destructor", &v830);
      v829 = 1;
      v140 = sub_297828860(v139, "__has_virtual_destructor", &v829);
      v828 = 1;
      v141 = sub_297828618(v140, "__is_abstract", &v828);
      v827 = 1;
      v142 = sub_2978121D4(v141, "__is_base_of", &v827);
      v826 = 1;
      v143 = sub_297810340(v142, "__is_class", &v826);
      v825 = 1;
      v144 = sub_2978288D8(v143, "__is_convertible_to", &v825);
      v824 = 1;
      v145 = sub_297810340(v144, "__is_empty", &v824);
      v823 = 1;
      v146 = sub_297812160(v145, "__is_enum", &v823);
      v822 = 1;
      v147 = sub_297810340(v146, "__is_final", &v822);
      v821 = 1;
      v148 = sub_2978121D4(v147, "__is_literal", &v821);
      v820 = 1;
      v149 = sub_29782868C(v148, "__is_literal_type", &v820);
      v819 = 1;
      v150 = sub_297810578(v149, "__is_pod", &v819);
      v818 = 1;
      v151 = sub_297828A58(v150, "__is_polymorphic", &v818);
      v817 = 1;
      v152 = sub_2978121D4(v151, "__is_trivial", &v817);
      v816 = 1;
      v153 = sub_297810340(v152, "__is_union", &v816);
      v815 = 1;
      v154 = sub_2978289D4(v153, "__is_trivially_constructible", &v815);
      v814 = 1;
      v155 = sub_2978284B4(v154, "__is_trivially_copyable", &v814);
      v813 = 1;
      v156 = sub_297828430(v155, "__is_trivially_assignable", &v813);
      v812 = 1;
      v157 = sub_29782868C(v156, "__underlying_type", &v812);
      v811 = 1;
      v158 = sub_297828A58(v157, "__is_lvalue_expr", &v811);
      v810 = 1;
      v159 = sub_297828A58(v158, "__is_rvalue_expr", &v810);
      v809 = 1;
      v160 = sub_2978285A4(v159, "__is_arithmetic", &v809);
      v808 = 1;
      v161 = sub_2978288D8(v160, "__is_floating_point", &v808);
      v807 = 1;
      v162 = sub_297828618(v161, "__is_integral", &v807);
      v806 = 1;
      v163 = sub_2978283B8(v162, "__is_complete_type", &v806);
      v805 = 1;
      v164 = sub_297812160(v163, "__is_void", &v805);
      v804 = 1;
      v165 = sub_297810340(v164, "__is_array", &v804);
      v803 = 1;
      v166 = sub_297828618(v165, "__is_function", &v803);
      v802 = 1;
      v167 = sub_297812248(v166, "__is_reference", &v802);
      v801 = 1;
      v168 = sub_2978287E8(v167, "__is_lvalue_reference", &v801);
      v800 = 1;
      v169 = sub_2978287E8(v168, "__is_rvalue_reference", &v800);
      v799 = 1;
      v170 = sub_297828A58(v169, "__is_fundamental", &v799);
      v798 = 1;
      v171 = sub_297811E3C(v170, "__is_object", &v798);
      v797 = 1;
      v172 = sub_297811E3C(v171, "__is_scalar", &v797);
      v796 = 1;
      v173 = sub_297828618(v172, "__is_compound", &v796);
      v795 = 1;
      v174 = sub_2978121D4(v173, "__is_pointer", &v795);
      v794 = 1;
      v175 = sub_297828950(v174, "__is_member_object_pointer", &v794);
      v793 = 1;
      v176 = sub_2978289D4(v175, "__is_member_function_pointer", &v793);
      v792 = 1;
      v177 = sub_2978288D8(v176, "__is_member_pointer", &v792);
      v791 = 1;
      v178 = sub_297810340(v177, "__is_const", &v791);
      v790 = 1;
      v179 = sub_297828618(v178, "__is_volatile", &v790);
      v789 = 1;
      v180 = sub_29782852C(v179, "__is_standard_layout", &v789);
      v788 = 1;
      v181 = sub_297811E3C(v180, "__is_signed", &v788);
      v787 = 1;
      v182 = sub_297828618(v181, "__is_unsigned", &v787);
      v786 = 1;
      v183 = sub_297812160(v182, "__is_same", &v786);
      v785 = 1;
      v184 = sub_297828A58(v183, "__is_convertible", &v785);
      v784 = 1;
      v185 = sub_2978121D4(v184, "__array_rank", &v784);
      v783 = 1;
      v186 = sub_297812248(v185, "__array_extent", &v783);
      v782 = 1;
      v187 = sub_2978283B8(v186, "__private_extern__", &v782);
      v781 = 1;
      v188 = sub_2978283B8(v187, "__module_private__", &v781);
      v780 = 1;
      v189 = sub_297810340(v188, "__declspec", &v780);
      v779 = 1;
      v190 = sub_2978102CC(v189, "__cdecl", &v779);
      v778 = 1;
      v191 = sub_297812160(v190, "__stdcall", &v778);
      v777 = 1;
      v192 = sub_297810340(v191, "__fastcall", &v777);
      v776 = 1;
      v193 = sub_297810340(v192, "__thiscall", &v776);
      v775 = 1;
      v194 = sub_297828618(v193, "__forceinline", &v775);
      v774 = 1;
      v195 = sub_297811E3C(v194, "__unaligned", &v774);
      v773 = 1;
      v196 = sub_297810578(v195, "__global", &v773);
      v772 = 1;
      v197 = sub_2978102CC(v196, "__local", &v772);
      v771 = 1;
      v198 = sub_297810340(v197, "__constant", &v771);
      v770 = 1;
      v199 = sub_297812160(v198, "__private", &v770);
      v769 = 1;
      v200 = sub_297810504(v199, "global", &v769);
      v768 = 1;
      v201 = sub_2978103B4(v200, "local", &v768);
      v767 = 1;
      v202 = sub_297810578(v201, "constant", &v767);
      v766 = 1;
      v203 = sub_2978102CC(v202, "private", &v766);
      v765 = 1;
      v204 = sub_297810578(v203, "__kernel", &v765);
      v764 = 1;
      v205 = sub_297810504(v204, "kernel", &v764);
      v763 = 1;
      v206 = sub_297811E3C(v205, "__read_only", &v763);
      v762 = 1;
      v207 = sub_2978121D4(v206, "__write_only", &v762);
      v761 = 1;
      v208 = sub_2978121D4(v207, "__read_write", &v761);
      v760 = 1;
      v209 = sub_297812160(v208, "read_only", &v760);
      v759 = 1;
      v210 = sub_297810340(v209, "write_only", &v759);
      v758 = 1;
      v211 = sub_297810340(v210, "read_write", &v758);
      v757 = 1;
      v212 = sub_297828A58(v211, "__builtin_astype", &v757);
      v756 = 1;
      v213 = sub_297810578(v212, "vec_step", &v756);
      v755 = 1;
      v214 = sub_297810578(v213, "__pascal", &v755);
      v754 = 1;
      v215 = sub_297810578(v214, "__vector", &v754);
      v753 = 1;
      v216 = sub_2978102CC(v215, "__pixel", &v753);
      v752 = 1;
      v217 = sub_297810504(v216, "__fp16", &v752);
      v751 = 1;
      v218 = sub_29781049C(v217, "half", &v751);
      v750 = 1;
      v219 = sub_297810578(v218, "__bridge", &v750);
      v749 = 1;
      v220 = sub_29782868C(v219, "__bridge_transfer", &v749);
      v748 = 1;
      v221 = sub_29782868C(v220, "__bridge_retained", &v748);
      v747 = 1;
      v222 = sub_2978285A4(v221, "__bridge_retain", &v747);
      v746 = 1;
      v223 = sub_297811E3C(v222, "__alignof__", &v746);
      v745 = 1;
      v224 = sub_2978103B4(v223, "__asm", &v745);
      v744 = 1;
      v225 = sub_2978102CC(v224, "__asm__", &v744);
      v743 = 1;
      v226 = sub_297828618(v225, "__attribute__", &v743);
      v742 = 1;
      v227 = sub_297812160(v226, "__complex", &v742);
      v741 = 1;
      v228 = sub_297811E3C(v227, "__complex__", &v741);
      v740 = 1;
      v229 = sub_2978102CC(v228, "__const", &v740);
      v739 = 1;
      v230 = sub_297812160(v229, "__const__", &v739);
      v738 = 1;
      v231 = sub_297810340(v230, "__decltype", &v738);
      v737 = 1;
      v232 = sub_297810578(v231, "__imag__", &v737);
      v736 = 1;
      v233 = sub_297810578(v232, "__inline", &v736);
      v735 = 1;
      v234 = sub_297810340(v233, "__inline__", &v735);
      v734 = 1;
      v235 = sub_297812160(v234, "__nullptr", &v734);
      v733 = 1;
      v236 = sub_297810578(v235, "__real__", &v733);
      v732 = 1;
      v237 = sub_297810340(v236, "__restrict", &v732);
      v731 = 1;
      v238 = sub_2978121D4(v237, "__restrict__", &v731);
      v730 = 1;
      v239 = sub_297810578(v238, "__signed", &v730);
      v729 = 1;
      v240 = sub_297810340(v239, "__signed__", &v729);
      v728 = 1;
      v241 = sub_297810578(v240, "__typeof", &v728);
      v727 = 1;
      v242 = sub_297810340(v241, "__typeof__", &v727);
      v726 = 1;
      v243 = sub_297810340(v242, "__volatile", &v726);
      v725 = 1;
      v244 = sub_2978121D4(v243, "__volatile__", &v725);
      v724 = 1;
      v245 = sub_297812160(v244, "__nonnull", &v724);
      v723 = 1;
      v246 = sub_297810340(v245, "__nullable", &v723);
      v722 = 1;
      v247 = sub_2978283B8(v246, "__null_unspecified", &v722);
      v721 = 1;
      v248 = sub_2978102CC(v247, "__ptr64", &v721);
      v720 = 1;
      v249 = sub_2978102CC(v248, "__ptr32", &v720);
      v719 = 1;
      v250 = sub_297810504(v249, "__sptr", &v719);
      v718 = 1;
      v251 = sub_297810504(v250, "__uptr", &v718);
      v717 = 1;
      v252 = sub_2978103B4(v251, "__w64", &v717);
      v716 = 1;
      v253 = sub_297810578(v252, "__uuidof", &v716);
      v715 = 1;
      v254 = sub_2978103B4(v253, "__try", &v715);
      v714 = 1;
      v255 = sub_297812160(v254, "__finally", &v714);
      v713 = 1;
      v256 = sub_2978102CC(v255, "__leave", &v713);
      v712 = 1;
      v257 = sub_2978102CC(v256, "uint64_t", &v712);
      v711 = 1;
      v258 = sub_297811E3C(v257, "__if_exists", &v711);
      v710 = 1;
      v259 = sub_2978285A4(v258, "__if_not_exists", &v710);
      v709 = 1;
      v260 = sub_29782852C(v259, "__single_inheritance", &v709);
      v708 = 1;
      v261 = sub_297828770(v260, "__multiple_inheritance", &v708);
      v707 = 1;
      v262 = sub_2978287E8(v261, "__virtual_inheritance", &v707);
      v706 = 1;
      v263 = sub_297811E3C(v262, "__interface", &v706);
      v705 = 1;
      v264 = sub_297810504(v263, "__int8", &v705);
      v704 = 1;
      v265 = sub_2978102CC(v264, "__int16", &v704);
      v703 = 1;
      v266 = sub_2978102CC(v265, "__int32", &v703);
      v702 = 1;
      v267 = sub_297812160(v266, "__wchar_t", &v702);
      v701 = 1;
      v268 = sub_29781049C(v267, "_asm", &v701);
      v700 = 1;
      v269 = sub_297810578(v268, "_alignof", &v700);
      v699 = 1;
      v270 = sub_29782868C(v269, "__builtin_alignof", &v699);
      v698 = 1;
      v271 = sub_297810504(v270, "_cdecl", &v698);
      v697 = 1;
      v272 = sub_297812160(v271, "_fastcall", &v697);
      v696 = 1;
      v273 = sub_297810578(v272, "_stdcall", &v696);
      v695 = 1;
      v274 = sub_297812160(v273, "_thiscall", &v695);
      v694 = 1;
      v275 = sub_2978102CC(v274, "_uuidof", &v694);
      v693 = 1;
      v276 = sub_2978102CC(v275, "_inline", &v693);
      v692 = 1;
      v277 = sub_297812160(v276, "_declspec", &v692);
      v691 = 1;
      v278 = sub_2978102CC(v277, "_pascal", &v691);
      v690 = 1;
      v279 = sub_2978284B4(v278, "__builtin_convertvector", &v690);
      v689 = 1;
      v280 = sub_297810340(v279, "__char16_t", &v689);
      v688 = 1;
      v281 = sub_297810340(v280, "__char32_t", &v688);
      v687 = 1;
      v282 = sub_297810504(v281, "active", &v687);
      v686 = 1;
      v283 = sub_297811E3C(v282, "atomic_uint", &v686);
      v685 = 1;
      v284 = sub_297812160(v283, "attribute", &v685);
      v684 = 1;
      v285 = sub_2978103B4(v284, "bvec2", &v684);
      v683 = 1;
      v286 = sub_2978103B4(v285, "bvec3", &v683);
      v682 = 1;
      v287 = sub_2978103B4(v286, "bvec4", &v682);
      v681 = 1;
      v288 = sub_297810504(v287, "buffer", &v681);
      v680 = 1;
      v289 = sub_29781049C(v288, "cast", &v680);
      v679 = 1;
      v290 = sub_297810578(v289, "centroid", &v679);
      v678 = 1;
      v291 = sub_297810578(v290, "coherent", &v678);
      v677 = 1;
      v292 = sub_297810504(v291, "common", &v677);
      v676 = 1;
      v293 = sub_2978102CC(v292, "discard", &v676);
      v675 = 1;
      v294 = sub_2978103B4(v293, "dmat2", &v675);
      v674 = 1;
      v295 = sub_2978102CC(v294, "dmat2x2", &v674);
      v673 = 1;
      v296 = sub_2978102CC(v295, "dmat2x3", &v673);
      v672 = 1;
      v297 = sub_2978102CC(v296, "dmat2x4", &v672);
      v671 = 1;
      v298 = sub_2978103B4(v297, "dmat3", &v671);
      v670 = 1;
      v299 = sub_2978102CC(v298, "dmat3x2", &v670);
      v669 = 1;
      v300 = sub_2978102CC(v299, "dmat3x3", &v669);
      v668 = 1;
      v301 = sub_2978102CC(v300, "dmat3x4", &v668);
      v667 = 1;
      v302 = sub_2978103B4(v301, "dmat4", &v667);
      v666 = 1;
      v303 = sub_2978102CC(v302, "dmat4x2", &v666);
      v665 = 1;
      v304 = sub_2978102CC(v303, "dmat4x3", &v665);
      v664 = 1;
      v305 = sub_2978102CC(v304, "dmat4x4", &v664);
      v663 = 1;
      v306 = sub_2978103B4(v305, "dvec2", &v663);
      v662 = 1;
      v307 = sub_2978103B4(v306, "dvec3", &v662);
      v661 = 1;
      v308 = sub_2978103B4(v307, "dvec4", &v661);
      v660 = 1;
      v309 = sub_297810504(v308, "filter", &v660);
      v659 = 1;
      v310 = sub_2978103B4(v309, "fixed", &v659);
      v658 = 1;
      v311 = sub_29781049C(v310, "flat", &v658);
      v657 = 1;
      v312 = sub_2978103B4(v311, "fvec2", &v657);
      v656 = 1;
      v313 = sub_2978103B4(v312, "fvec3", &v656);
      v655 = 1;
      v314 = sub_2978103B4(v313, "fvec4", &v655);
      v654 = 1;
      v315 = sub_2978103B4(v314, "highp", &v654);
      v653 = 1;
      v316 = sub_2978103B4(v315, "hvec2", &v653);
      v652 = 1;
      v317 = sub_2978103B4(v316, "hvec3", &v652);
      v651 = 1;
      v318 = sub_2978103B4(v317, "hvec4", &v651);
      v650 = 1;
      v319 = sub_297810578(v318, "iimage1D", &v650);
      v649 = 1;
      v320 = sub_297828618(v319, "iimage1DArray", &v649);
      v648 = 1;
      v321 = sub_297810578(v320, "iimage2D", &v648);
      v647 = 1;
      v322 = sub_297828618(v321, "iimage2DArray", &v647);
      v646 = 1;
      v323 = sub_297810340(v322, "iimage2DMS", &v646);
      v645 = 1;
      v324 = sub_2978285A4(v323, "iimage2DMSArray", &v645);
      v644 = 1;
      v325 = sub_2978121D4(v324, "iimage2DRect", &v644);
      v643 = 1;
      v326 = sub_297810578(v325, "iimage3D", &v643);
      v642 = 1;
      v327 = sub_2978121D4(v326, "iimageBuffer", &v642);
      v641 = 1;
      v328 = sub_297810340(v327, "iimageCube", &v641);
      v640 = 1;
      v329 = sub_2978285A4(v328, "iimageCubeArray", &v640);
      v639 = 1;
      v330 = sub_2978102CC(v329, "image1D", &v639);
      v638 = 1;
      v331 = sub_2978121D4(v330, "image1DArray", &v638);
      v637 = 1;
      v332 = sub_2978283B8(v331, "image1DArrayShadow", &v637);
      v636 = 1;
      v333 = sub_297828618(v332, "image1DShadow", &v636);
      v635 = 1;
      v334 = sub_2978102CC(v333, "image2D", &v635);
      v634 = 1;
      v335 = sub_2978121D4(v334, "image2DArray", &v634);
      v633 = 1;
      v336 = sub_2978283B8(v335, "image2DArrayShadow", &v633);
      v632 = 1;
      v337 = sub_297812160(v336, "image2DMS", &v632);
      v631 = 1;
      v338 = sub_297812248(v337, "image2DMSArray", &v631);
      v630 = 1;
      v339 = sub_297811E3C(v338, "image2DRect", &v630);
      v629 = 1;
      v340 = sub_297828618(v339, "image2DShadow", &v629);
      v628 = 1;
      v341 = sub_2978102CC(v340, "image3D", &v628);
      v627 = 1;
      v342 = sub_297811E3C(v341, "imageBuffer", &v627);
      v626 = 1;
      v343 = sub_297812160(v342, "imageCube", &v626);
      v625 = 1;
      v344 = sub_297812248(v343, "imageCubeArray", &v625);
      v624 = 1;
      v345 = sub_29781243C(v344, "in", &v624);
      v623 = 1;
      v346 = sub_2978103B4(v345, "inout", &v623);
      v622 = 1;
      v347 = sub_2978103B4(v346, "input", &v622);
      v621 = 1;
      v348 = sub_297812160(v347, "interface", &v621);
      v620 = 1;
      v349 = sub_297812160(v348, "invariant", &v620);
      v619 = 1;
      v350 = sub_297810578(v349, "isampler", &v619);
      v618 = 1;
      v351 = sub_297810340(v350, "isampler1D", &v618);
      v617 = 1;
      v352 = sub_2978285A4(v351, "isampler1DArray", &v617);
      v616 = 1;
      v353 = sub_297810340(v352, "isampler2D", &v616);
      v615 = 1;
      v354 = sub_2978285A4(v353, "isampler2DArray", &v615);
      v614 = 1;
      v355 = sub_2978121D4(v354, "isampler2DMS", &v614);
      v613 = 1;
      v356 = sub_29782868C(v355, "isampler2DMSArray", &v613);
      v612 = 1;
      v357 = sub_297812248(v356, "isampler2DRect", &v612);
      v611 = 1;
      v358 = sub_297828A58(v357, "isampler2DShadow", &v611);
      v610 = 1;
      v359 = sub_297810340(v358, "isampler3D", &v610);
      v609 = 1;
      v360 = sub_297812248(v359, "isamplerBuffer", &v609);
      v608 = 1;
      v361 = sub_2978121D4(v360, "isamplerCube", &v608);
      v607 = 1;
      v362 = sub_29782868C(v361, "isamplerCubeArray", &v607);
      v606 = 1;
      v363 = sub_2978103B4(v362, "ivec2", &v606);
      v605 = 1;
      v364 = sub_2978103B4(v363, "ivec3", &v605);
      v604 = 1;
      v365 = sub_2978103B4(v364, "ivec4", &v604);
      v603 = 1;
      v366 = sub_297810504(v365, "layout", &v603);
      v602 = 1;
      v367 = sub_29781049C(v366, "lowp", &v602);
      v601 = 1;
      v368 = sub_29781049C(v367, "mat2", &v601);
      v600 = 1;
      v369 = sub_297810504(v368, "mat2x2", &v600);
      v599 = 1;
      v370 = sub_297810504(v369, "mat2x3", &v599);
      v598 = 1;
      v371 = sub_297810504(v370, "mat2x4", &v598);
      v597 = 1;
      v372 = sub_29781049C(v371, "mat3", &v597);
      v596 = 1;
      v373 = sub_297810504(v372, "mat3x2", &v596);
      v595 = 1;
      v374 = sub_297810504(v373, "mat3x3", &v595);
      v594 = 1;
      v375 = sub_297810504(v374, "mat3x4", &v594);
      v593 = 1;
      v376 = sub_29781049C(v375, "mat4", &v593);
      v592 = 1;
      v377 = sub_297810504(v376, "mat4x2", &v592);
      v591 = 1;
      v378 = sub_297810504(v377, "mat4x3", &v591);
      v590 = 1;
      v379 = sub_297810504(v378, "mat4x4", &v590);
      v589 = 1;
      v380 = sub_2978102CC(v379, "mediump", &v589);
      v588 = 1;
      v381 = sub_297810578(v380, "noinline", &v588);
      v587 = 1;
      v382 = sub_297828618(v381, "noperspective", &v587);
      v586 = 1;
      v383 = sub_297810428(v382, "out", &v586);
      v585 = 1;
      v384 = sub_297810504(v383, "output", &v585);
      v584 = 1;
      v385 = sub_297812160(v384, "partition", &v584);
      v583 = 1;
      v386 = sub_2978103B4(v385, "patch", &v583);
      v582 = 1;
      v387 = sub_297812160(v386, "precision", &v582);
      v581 = 1;
      v388 = sub_297810578(v387, "readonly", &v581);
      v580 = 1;
      v389 = sub_297810578(v388, "resource", &v580);
      v579 = 1;
      v390 = sub_297810504(v389, "sample", &v579);
      v578 = 1;
      v391 = sub_2978102CC(v390, "sampler", &v578);
      v577 = 1;
      v392 = sub_297812160(v391, "sampler1D", &v577);
      v576 = 1;
      v393 = sub_297812248(v392, "sampler1DArray", &v576);
      v575 = 1;
      v394 = sub_29782852C(v393, "sampler1DArrayShadow", &v575);
      v574 = 1;
      v395 = sub_2978285A4(v394, "sampler1DShadow", &v574);
      v573 = 1;
      v396 = sub_297812160(v395, "sampler2D", &v573);
      v572 = 1;
      v397 = sub_297812248(v396, "sampler2DArray", &v572);
      v571 = 1;
      v398 = sub_29782852C(v397, "sampler2DArrayShadow", &v571);
      v570 = 1;
      v399 = sub_297811E3C(v398, "sampler2DMS", &v570);
      v569 = 1;
      v400 = sub_297828A58(v399, "sampler2DMSArray", &v569);
      v568 = 1;
      v401 = sub_297828618(v400, "sampler2DRect", &v568);
      v567 = 1;
      v402 = sub_2978288D8(v401, "sampler2DRectShadow", &v567);
      v566 = 1;
      v403 = sub_2978285A4(v402, "sampler2DShadow", &v566);
      v565 = 1;
      v404 = sub_297812160(v403, "sampler3D", &v565);
      v564 = 1;
      v405 = sub_297828618(v404, "sampler3DRect", &v564);
      v563 = 1;
      v406 = sub_297828618(v405, "samplerBuffer", &v563);
      v562 = 1;
      v407 = sub_297811E3C(v406, "samplerCube", &v562);
      v561 = 1;
      v408 = sub_297828A58(v407, "samplerCubeArray", &v561);
      v560 = 1;
      v409 = sub_297828770(v408, "samplerCubeArrayShadow", &v560);
      v559 = 1;
      v410 = sub_29782868C(v409, "samplerCubeShadow", &v559);
      v558 = 1;
      v411 = sub_297810504(v410, "smooth", &v558);
      v557 = 1;
      v412 = sub_297810340(v411, "subroutine", &v557);
      v556 = 1;
      v413 = sub_297810504(v412, "superp", &v556);
      v555 = 1;
      v414 = sub_297810578(v413, "uimage1D", &v555);
      v554 = 1;
      v415 = sub_297828618(v414, "uimage1DArray", &v554);
      v553 = 1;
      v416 = sub_297810578(v415, "uimage2D", &v553);
      v552 = 1;
      v417 = sub_297828618(v416, "uimage2DArray", &v552);
      v551 = 1;
      v418 = sub_297810340(v417, "uimage2DMS", &v551);
      v550 = 1;
      v419 = sub_2978285A4(v418, "uimage2DMSArray", &v550);
      v549 = 1;
      v420 = sub_2978121D4(v419, "uimage2DRect", &v549);
      v548 = 1;
      v421 = sub_297810578(v420, "uimage3D", &v548);
      v547 = 1;
      v422 = sub_2978121D4(v421, "uimageBuffer", &v547);
      v546 = 1;
      v423 = sub_297810340(v422, "uimageCube", &v546);
      v545 = 1;
      v424 = sub_2978285A4(v423, "uimageCubeArray", &v545);
      v544 = 1;
      v425 = sub_29781049C(v424, "uint", &v544);
      v543 = 1;
      v426 = sub_2978102CC(v425, "uniform", &v543);
      v542 = 1;
      v427 = sub_297810578(v426, "usampler", &v542);
      v541 = 1;
      v428 = sub_297810340(v427, "usampler1D", &v541);
      v540 = 1;
      v429 = sub_2978285A4(v428, "usampler1DArray", &v540);
      v539 = 1;
      v430 = sub_297810340(v429, "usampler2D", &v539);
      v538 = 1;
      v431 = sub_2978285A4(v430, "usampler2DArray", &v538);
      v537 = 1;
      v432 = sub_2978121D4(v431, "usampler2DMS", &v537);
      v536 = 1;
      v433 = sub_29782868C(v432, "usampler2DMSArray", &v536);
      v535 = 1;
      v434 = sub_297812248(v433, "usampler2DRect", &v535);
      v534 = 1;
      v435 = sub_297810340(v434, "usampler3D", &v534);
      v533 = 1;
      v436 = sub_297812248(v435, "usamplerBuffer", &v533);
      v532 = 1;
      v437 = sub_2978121D4(v436, "usamplerCube", &v532);
      v531 = 1;
      v438 = sub_29782868C(v437, "usamplerCubeArray", &v531);
      v530 = 1;
      v439 = sub_2978103B4(v438, "uvec2", &v530);
      v529 = 1;
      v440 = sub_2978103B4(v439, "uvec3", &v529);
      v528 = 1;
      v441 = sub_2978103B4(v440, "uvec4", &v528);
      v527 = 1;
      v442 = sub_2978102CC(v441, "varying", &v527);
      v526 = 1;
      v443 = sub_29781049C(v442, "vec2", &v526);
      v525 = 1;
      v444 = sub_29781049C(v443, "vec3", &v525);
      v524 = 1;
      v445 = sub_29781049C(v444, "vec4", &v524);
      v523 = 1;
      v446 = sub_297812160(v445, "writeonly", &v523);
      v522 = 1;
      v447 = sub_297810504(v446, "kernel", &v522);
      v521 = 1;
      v448 = sub_297828618(v447, "__attribute__", &v521);
      v520 = 1;
      v449 = sub_297810578(v448, "sample_f", &v520);
      v519 = 1;
      v450 = sub_297810578(v449, "sample_h", &v519);
      v518 = 1;
      v451 = sub_297812160(v450, "sampler_f", &v518);
      v517 = 1;
      v452 = sub_297812160(v451, "sampler_h", &v517);
      v516 = 1;
      v453 = sub_2978103B4(v452, "hmat2", &v516);
      v515 = 1;
      v454 = sub_2978102CC(v453, "hmat2x2", &v515);
      v514 = 1;
      v455 = sub_2978102CC(v454, "hmat2x3", &v514);
      v513 = 1;
      v456 = sub_2978102CC(v455, "hmat2x4", &v513);
      v512 = 1;
      v457 = sub_2978103B4(v456, "hmat3", &v512);
      v511 = 1;
      v458 = sub_2978102CC(v457, "hmat3x2", &v511);
      v510 = 1;
      v459 = sub_2978102CC(v458, "hmat3x3", &v510);
      v509 = 1;
      v460 = sub_2978102CC(v459, "hmat3x4", &v509);
      v508 = 1;
      v461 = sub_2978103B4(v460, "hmat4", &v508);
      v507 = 1;
      v462 = sub_2978102CC(v461, "hmat4x2", &v507);
      v506 = 1;
      v463 = sub_2978102CC(v462, "hmat4x3", &v506);
      v505 = 1;
      v464 = sub_2978102CC(v463, "hmat4x4", &v505);
      v504 = 1;
      v465 = sub_297810504(v464, "float2", &v504);
      v503 = 1;
      v466 = sub_297810504(v465, "float3", &v503);
      v502 = 1;
      v467 = sub_297810504(v466, "float4", &v502);
      v501 = 1;
      v468 = sub_2978103B4(v467, "half2", &v501);
      v500 = 1;
      v469 = sub_2978103B4(v468, "half3", &v500);
      v499 = 1;
      v470 = sub_2978103B4(v469, "half4", &v499);
      v498 = 1;
      v471 = sub_297810578(v470, "float2x2", &v498);
      v497 = 1;
      v472 = sub_297810578(v471, "float3x3", &v497);
      v496 = 1;
      v473 = sub_297810578(v472, "float4x4", &v496);
      v495 = 1;
      v474 = sub_2978102CC(v473, "half2x2", &v495);
      v494 = 1;
      v475 = sub_2978102CC(v474, "half3x3", &v494);
      v493 = 1;
      v476 = sub_2978102CC(v475, "half4x4", &v493);
      v492 = 1;
      v477 = sub_297810578(v476, "hsampler", &v492);
      v491 = 1;
      v478 = sub_297810340(v477, "hsampler2D", &v491);
      v490 = 1;
      v479 = sub_297810578(v478, "__sample", &v490);
      v489 = 1;
      v480 = sub_2978102CC(v479, "__color", &v489);
      v488 = 1;
      v481 = sub_2978102CC(v480, "__table", &v488);
      v487 = 1;
      v482 = sub_29782868C(v481, "__unknown_anytype", &v487);
      v486 = 0;
      if (!sub_297828CA4(v482, &v486))
      {
        break;
      }

      v483 = sub_2977FB720(&v957);
      if (v483 != sub_297803A7C(a3))
      {
        v484 = sub_2977FB720(&v957);
        v485 = sub_2977FB728(&v957);
        sub_2977FD4F8(a3, v484, v485);
      }

      LOBYTE(v956) = 95;
      sub_2977FCD50(a3, &v956);
    }
  }
}

uint64_t sub_29785EFB4(void *a1, const void *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v20 = a2;
  v21 = a3;
  v18.__r_.__value_.__r.__words[0] = sub_29785BAC0(a1, a2, a3, a4);
  if (v18.__r_.__value_.__r.__words[0])
  {
    LOBYTE(v19) = 0;
    v12 = &v18;
    v13 = &v19;
  }

  else
  {
    v14 = sub_2977FA198(1256);
    sub_297829180(&v18);
    sub_29783CA58(v14, a2, a3, v18.__r_.__value_.__l.__data_, a4, a5, a6);
    v19 = v14;
    sub_2978044E8(&v18, a1[2] + 136);
    if (sub_297804D28(v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_, a2, a3))
    {
      a1[37] = v14;
      sub_297801F5C(&v20, &v18);
      sub_2978046C4((a1 + 38), &v18);
      std::string::~string(&v18);
    }

    if (!a4)
    {
      *sub_29781AB8C((a1 + 41), v20, v21) = v14;
      if (!sub_29780347C(a1[2] + 136) && !a1[36])
      {
        v15 = v20;
        v16 = v21;
        sub_2978044E8(&v18, a1[2] + 136);
        if (sub_297804D28(v15, v16, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_))
        {
          a1[36] = v14;
        }
      }
    }

    v18.__r_.__value_.__s.__data_[0] = 1;
    v12 = &v19;
    v13 = &v18;
  }

  return sub_29780EB40(v12, v13);
}

BOOL sub_29785F1A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x29EDCA608];
  v48 = a3;
  v49 = a2;
  v47[0] = sub_29785F4AC((a1 + 45), &v49);
  v47[1] = v5;
  v40 = sub_29785F514((a1 + 45));
  v41 = v6;
  if (sub_29782EE3C(v47, &v40))
  {
    v7 = sub_2977FB720(v47);
    v8 = sub_2977FB720(v7 + 8);
    v9 = sub_2977FB720(v47);
    v10 = sub_2977FB7B8(v9 + 8);
    if (v8 == v10)
    {
LABEL_8:
      v14 = 1;
    }

    else
    {
      v11 = v10;
      while (1)
      {
        if (sub_29785F564(v8))
        {
          if (!a3)
          {
            break;
          }

          v13 = sub_29784DD58(v8, v12);
          if (sub_29783CDBC(v13, a3))
          {
            break;
          }
        }

        if (++v8 == v11)
        {
          goto LABEL_8;
        }
      }

      v14 = 0;
    }
  }

  else
  {
    v15 = sub_29783CFFC(v49);
    v46 = v15;
    sub_29782A6EC(v50);
    v16 = sub_2977FB720(v15);
    sub_2977FB7B4(&v44, v16);
    v43 = &v48;
    while (1)
    {
      v42[0] = sub_29785F5B8((a1 + 48), &v46);
      v42[1] = v17;
      v40 = sub_297844244((a1 + 48));
      v41 = v18;
      if (sub_29782EE3C(v42, &v40))
      {
        break;
      }

      sub_2978040A4(v50, &v46);
      v44 = sub_297806980(v44, v45);
      v45 = v19;
      if (!sub_297806914(&v44))
      {
        v20 = sub_2977FD5B0(*a1);
        v46 = sub_29782DFB8(v20, v44, v45, 1);
        if (v46)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v21 = *(sub_2977FB720(v42) + 8);
    if (sub_29785F620(&v43, v21))
    {
LABEL_15:
      v14 = 1;
    }

    else
    {
      v22 = v21;
      do
      {
        v23 = v22;
        if (sub_29783CF9C(v22))
        {
          break;
        }

        v22 = *(v23 + 32);
      }

      while (v22);
      if ((*(v23 + 528) & 0x100) != 0)
      {
        v26 = sub_29780406C(v50) - 1;
        while (v26 != -1)
        {
          sub_2978068F8(&v40);
          v27 = sub_29782DEAC(v50, v26);
          v28 = sub_2977FB720(*v27);
          sub_2977FB7B4(&v38, v28);
          v29 = sub_297806BE8(v38, v39);
          sub_29785C95C(v29, v30, &v40);
          v32 = sub_29785BAC0(a1, v29, v31, v21);
          if (!v32)
          {
            sub_297801F60(&v40);
            goto LABEL_13;
          }

          v21 = v32;
          v33 = sub_29785F620(&v43, v32);
          sub_297801F60(&v40);
          --v26;
          if (v33)
          {
            goto LABEL_15;
          }
        }

        sub_2978068F8(&v40);
        v34 = sub_2977FB720(v49);
        sub_2977FB7B4(&v38, v34);
        v35 = sub_297806BE8(v38, v39);
        sub_29785C95C(v35, v36, &v40);
        v21 = sub_29785BAC0(a1, v35, v37, v21);
        sub_297801F60(&v40);
        if (v21)
        {
          goto LABEL_21;
        }

LABEL_13:
        v14 = 0;
        goto LABEL_22;
      }

LABEL_21:
      v14 = sub_29785F620(&v43, v21);
    }

LABEL_22:
    sub_2977FD134(v50);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t sub_29785F4AC(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  if (!sub_297863C98(a1, a2, &v6))
  {
    return sub_29785F514(a1);
  }

  v3 = v6;
  v4 = sub_29786412C(a1);
  sub_2978647C8(&v7, v3, v4, 1);
  return v7;
}

uint64_t sub_29785F514(uint64_t a1)
{
  v2 = sub_29786412C(a1);
  v3 = sub_29786412C(a1);
  sub_2978647C8(&v5, v2, v3, 1);
  return v5;
}

uint64_t sub_29785F564(_DWORD *a1)
{
  if (sub_29785C348(a1) == 2)
  {
    return 0;
  }

  v4 = sub_29784DD58(a1, v2);

  return sub_29783CA24(v4);
}

uint64_t sub_29785F5B8(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  if (!sub_297843F60(a1, a2, &v6))
  {
    return sub_297844244(a1);
  }

  v3 = v6;
  v4 = sub_29783D84C(a1);
  sub_297844294(&v7, v3, v4, 1);
  return v7;
}

BOOL sub_29785F620(uint64_t **a1, uint64_t a2)
{
  if (sub_29783CA24(a2))
  {
    return 0;
  }

  v5 = **a1;
  if (!v5)
  {
    return 1;
  }

  return sub_29783CDBC(a2, v5);
}

uint64_t sub_29785F688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_29783D390((a1 + 328), a2, a3);
  v6 = sub_29783BFD4(a1 + 328);
  if (!sub_29781550C(&v7, &v6))
  {
    return 0;
  }

  v4 = sub_29781AD54(&v7);
  return *sub_297819E7C(v4);
}

const std::string *sub_29785F6F0(uint64_t *a1, const void *a2, size_t a3, void *a4, char a5, uint64_t a6)
{
  sub_29785F770(&v13);
  LOBYTE(v13) = v13 & 0xFE | a5;
  return sub_29785F774(a1, a2, a3, a4, v13, a6);
}

const std::string *sub_29785F774(uint64_t *a1, const void *a2, size_t a3, void *a4, int a5, uint64_t a6)
{
  v82 = *MEMORY[0x29EDCA608];
  v78 = a2;
  v79 = a3;
  v12 = sub_29785BAC0(a1, a2, a3, a6);
  if (!v12)
  {
    v13 = a5;
    v14 = sub_2977FD5B0(*a1);
    if (a6)
    {
      v15 = sub_29785C8FC(a1, a6);
    }

    else
    {
      v45 = sub_2977FD5B0(*a1);
      v74 = sub_29782EC8C(v45, a4);
      v75 = v46;
      v47 = sub_297806BE8(v74, v46);
      if (sub_297808D64(v47, v48, a2, a3))
      {
        goto LABEL_32;
      }

      v49 = sub_2978036E8(v81, &v74);
      if (!sub_297806F28(v49))
      {
        goto LABEL_32;
      }

      v72 = sub_297806980(v74, v75);
      v73 = v50;
      v77 = sub_29782DFB8(v14, v72, v50, 1);
      if (!v77)
      {
        goto LABEL_32;
      }

      sub_29785FEF4((a1 + 51), &v77, v81);
      sub_29782DA30(v70, v81);
      sub_29785FF68((a1 + 51), &v80);
      sub_29782DA30(v81, &v80);
      if (sub_29783FFE0(v70, v81))
      {
        sub_2977FB7B4(v81, ".framework");
        v51 = sub_297828360(&v72, *&v81[0], *(&v81[0] + 1));
        v52 = sub_29784DA74(a1[4], v77, v51);
        if (v52)
        {
          sub_29785FFC4(a1, v52, a5 & 1);
          sub_29785FEF4((a1 + 51), &v77, &v80);
          sub_29782DA30(v81, &v80);
          v70[0] = v81[0];
        }

        sub_29785FF68((a1 + 51), &v80);
        sub_29782DA30(v81, &v80);
        if (sub_29783FFE0(v70, v81))
        {
          sub_2978602C8(&v80);
          sub_2978602B8(&v77, &v80, v81);
          sub_2978601F8((a1 + 51), v81, &v67);
          sub_29782DA30(&v76, &v67);
          v70[0] = v76;
          sub_2978602CC(v81);
          sub_2978602D0(&v80);
        }
      }

      if ((*(sub_2977FB720(v70) + 8) & 1) == 0)
      {
        goto LABEL_32;
      }

      *&v81[0] = sub_297806BE8(v74, v75);
      *(&v81[0] + 1) = v53;
      v54 = sub_2977FB720(v70);
      v55 = sub_2977FB720(v54 + 24);
      v56 = sub_2977FB720(v70);
      v57 = sub_2977FB7B8(v56 + 24);
      v58 = sub_2978602D4(v55, v57, v81);
      v59 = sub_2977FB720(v70);
      v60 = sub_2977FB7B8(v59 + 24);
      v66 = *(sub_2977FB720(v70) + 12);
      v61 = *(sub_2977FB720(v70) + 12);
      v62 = *(sub_2977FB720(v70) + 12);
      v63 = sub_2977FB720(v70);
      if (v58 != v60)
      {
LABEL_32:
        v12 = 0;
        goto LABEL_35;
      }

      v15 = *(v63 + 16);
      v13 = v66 & 1 | a5 & 0xF9 | (v61 | a5) & 2 | (v62 | a5) & 4;
    }

    v16 = sub_2977FB720(a4);
    sub_2977FB7B4(&v80, v16);
    sub_297807A08(v81, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
    sub_2978036E0(&v80, "Headers");
    sub_297811CAC(&v78, ".h", &v67);
    sub_2978036E0(&v74, &byte_2978FC3E5);
    sub_2978036E0(&v72, &byte_2978FC3E5);
    sub_297806664(v81, &v80.__r_.__value_.__l.__data_, &v67, &v74, &v72);
    v17 = sub_2978059B8(v81);
    v77 = sub_29782E354(v14, v17, v18, 0, 1);
    if (v77)
    {
      v19 = sub_2977FA198(1256);
      v20 = v78;
      v21 = v79;
      sub_297829180(&v80);
      sub_29783CA58(v19, v20, v21, v80.__r_.__value_.__l.__data_, a6, 1, 0);
      v71 = v19;
      *sub_29785F118((a1 + 54), &v71) = v15;
      LOWORD(v71[22].__r_.__value_.__l.__data_) |= 0x80u;
      sub_2978044E8(&v80, a1[2] + 136);
      if (sub_297804D28(v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_, v78, v79))
      {
        a1[37] = v71;
        sub_297801F5C(&v78, &v80);
        sub_2978046C4((a1 + 38), &v80);
        std::string::~string(&v80);
      }

      v22 = v71;
      LOWORD(v71[22].__r_.__value_.__l.__data_) |= (v13 << 9) & 0x800 | (32 * (v13 & 3));
      if (!a6)
      {
        *sub_29781AB8C((a1 + 41), v78, v79) = v22;
        v22 = v71;
      }

      sub_29786033C(&v22[1].__r_.__value_.__r.__words[2], &v77);
      v23 = sub_29785F17C((a1 + 45), &v77);
      sub_29785BFF8(&v80, v71, 0);
      sub_2978040A4(v23, &v80);
      v24 = v71;
      v80.__r_.__value_.__r.__words[0] = sub_29783CFFC(v77);
      *sub_29785F134((a1 + 48), &v80) = v24;
      v25 = v71;
      sub_29785B820(&v80, 0, 1);
      sub_2978040A4(&v25[24].__r_.__value_.__l.__size_, &v80);
      LOWORD(v71[22].__r_.__value_.__l.__data_) |= 0x500u;
      sub_2978055DC(&v76);
      v26 = sub_2977FB720(a4);
      sub_2977FB7B4(&v67, v26);
      sub_297807A08(&v80, v67, v68);
      sub_2978036E0(&v67, "Frameworks");
      v27 = &byte_2978FC3E5;
      sub_2978036E0(&v74, &byte_2978FC3E5);
      sub_2978036E0(&v72, &byte_2978FC3E5);
      sub_2978036E0(v70, &byte_2978FC3E5);
      sub_297806664(&v80.__r_.__value_.__l.__data_, &v67, &v74, &v72, v70);
      sub_297806B40(&v80);
      v74 = sub_297801F10(&v80);
      v75 = v28;
      sub_2978036E8(&v67, &v74);
      sub_29784964C(v70, &v67, &v76);
      sub_29784966C(&v69);
      if (sub_297849650(v70, &v69))
      {
        do
        {
          if (sub_297805430(&v76))
          {
            break;
          }

          v29 = sub_297849674(v70);
          v31 = nullsub_1(v29, v30);
          sub_2978044E8(&v67, v31);
          sub_2977FB7B4(&v74, ".framework");
          if (sub_297828360(&v67, v74, v75))
          {
            v32 = sub_297849674(v70);
            v34 = nullsub_1(v32, v33);
            sub_2978044E8(&v67, v34);
            v35 = sub_29782DFB8(v14, v67, v68, 1);
            if (v35)
            {
              v36 = v35;
              v74 = sub_29782EC8C(v14, v35);
              v75 = v37;
              while (1)
              {
                v74 = sub_297806980(v74, v75);
                v75 = v38;
                if (sub_297806914(&v74))
                {
                  break;
                }

                if (sub_29782DFB8(v14, v74, v75, 1) == a4)
                {
                  sub_2978068F8(&v67);
                  v39 = sub_297849674(v70);
                  v41 = nullsub_1(v39, v40);
                  sub_2978044E8(&v72, v41);
                  v42 = sub_297806BE8(v72, v73);
                  sub_29785C95C(v42, v43, &v67);
                  v27 = a5 & 0xFFFFFF00 | v13 | v27 & 0xFFFFFFFF00000000;
                  sub_29785F774(a1, v42, v44, v36, v27, v71);
                  sub_297801F60(&v67);
                  break;
                }
              }
            }
          }

          sub_297849AC4(v70, &v76);
        }

        while ((sub_297849650(v70, &v69) & 1) != 0);
      }

      sub_297849670(&v69);
      sub_297849670(v70);
      if ((sub_297860378(v71) & 1) == 0)
      {
        sub_297860394(v71, a4, v14);
      }

      v12 = v71;
      sub_297801F60(&v80);
    }

    else
    {
      v12 = 0;
    }

    sub_297801F60(v81);
  }

LABEL_35:
  v64 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t sub_29785FEF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 0;
  if (!sub_297864E48(a1, a2, &v8))
  {
    return sub_29785FF68(a1, a3);
  }

  v5 = v8;
  v6 = sub_297864544(a1);
  return sub_297864E84(a3, v5, v6, 1);
}

uint64_t sub_29785FF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_297864544(a1);
  v5 = sub_297864544(a1);

  return sub_297864E84(a2, v4, v5, 1);
}

uint64_t sub_29785FFC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v22 = a2;
  sub_29783FF6C((a1 + 60), &v22, v21);
  sub_29783FC30((a1 + 60), v23);
  sub_29782DA30(&v24, v23);
  if (sub_29782EE3C(v21, &v24))
  {
    v5 = *(sub_2977FB720(v21) + 8);
  }

  else
  {
    v6 = *a1;
    v7 = v22;
    sub_297829180(&v24);
    v8 = sub_297863788(v6, v7, v24, a3, 0, 0);
    if (sub_29783E5C0(*a1, v8, 0))
    {
      v9 = sub_29783CFFC(v22);
      v10 = sub_2977FB720(v9);
      sub_2977FB7B4(&v19, v10);
      v11 = sub_297806BB4(v19, v20);
      v13 = v12;
      sub_2977FB7B4(&v24, "Modules");
      if (sub_297804D28(v11, v13, v24, v25))
      {
        v19 = sub_297806980(v19, v20);
        v20 = v14;
        sub_2977FB7B4(&v24, ".framework");
        if (sub_297828360(&v19, v24, v25))
        {
          v15 = sub_2977FD5B0(*a1);
          v9 = sub_29782DFB8(v15, v19, v20, 1);
        }
      }

      v16 = sub_29783E5C0(*a1, v8, 0);
      sub_29784F774(&v24, v8, v16, *a1, (a1 + 6));
      sub_2978637FC(v23, &v24, *a1, a1[3], a1[1], a1, v22, v9, a1[5], a3);
      v5 = sub_2978636D8(v23);
      *sub_29784D7EC((a1 + 60), &v22) = v5;
      sub_297863810(v23);
      sub_29784FCAC(&v24);
    }

    else
    {
      v5 = 1;
      *sub_29784D7EC((a1 + 60), &v22) = 1;
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return v5 & 1;
}

uint64_t sub_2978601F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 0;
  if (sub_297864E48(a1, a2, &v13))
  {
    v6 = v13;
    v7 = sub_297864544(a1);
    sub_297864E84(v12, v6, v7, 1);
    v11 = 0;
  }

  else
  {
    v8 = sub_297865378(a1, a2, (a2 + 1), v13);
    v13 = v8;
    v9 = sub_297864544(a1);
    sub_297864E84(v12, v8, v9, 1);
    v11 = 1;
  }

  return sub_29782D9B0(v12, &v11, a3);
}

uint64_t sub_2978602D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = j_j_nullsub_1(a1, a2);
  v8 = j_j_nullsub_1(a2, v7);
  v9 = sub_29783D944(v6, v8, a3, &v11);
  return sub_2977FD98C(a1, v9);
}

uint64_t *sub_29786033C(uint64_t *a1, void *a2)
{
  v3 = j_nullsub_1(*a2, a2);
  sub_2978642EC(a1, v3, 1);
  return a1;
}

uint64_t sub_297860378(uint64_t a1)
{
  if ((*(a1 + 528) & 8) != 0 && (v1 = *(a1 + 32)) != 0)
  {
    return sub_2978631D8(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_297860394(const std::string *a1, uint64_t a2, uint64_t a3)
{
  sub_297806EC8(v14);
  v6 = sub_2977FB720(a2);
  sub_2977FB7B4(&v10, v6);
  sub_297811C58(v14, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  sub_2978036E4(&v10, a1);
  sub_2978036E0(v13, &byte_2978FC3E5);
  sub_2978036E0(v12, &byte_2978FC3E5);
  sub_2978036E0(v11, &byte_2978FC3E5);
  sub_297806664(v14, &v10.__r_.__value_.__l.__data_, v13, v12, v11);
  v7 = sub_2978059B8(v14);
  if (sub_29782E354(a3, v7, v8, 0, 1))
  {
    sub_2978634C8(&v10, a1, 1);
    sub_29783D128(&a1[45].__r_.__value_.__r.__words[2], &v10);
    j_std::string::~string(&v10);
  }

  return sub_297801F60(v14);
}

uint64_t *sub_29786049C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  v5 = sub_29785F17C(a1 + 360, &v8);
  sub_29785BFF8(&v7, a2, 0);
  sub_2978040A4(v5, &v7);
  sub_29786033C((a2 + 40), &v8);
  v7 = sub_29783CFFC(v8);
  result = sub_29785F134(a1 + 384, &v7);
  *result = a2;
  return result;
}

uint64_t *sub_297860528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  sub_297860574((a2 + 40), &v6);
  result = sub_29785F134(a1 + 384, &v6);
  *result = a2;
  return result;
}

uint64_t *sub_297860574(uint64_t *a1, void *a2)
{
  v3 = j_nullsub_1(*a2, a2);
  sub_297865610(a1, v3);
  return a1;
}

uint64_t sub_2978605AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  if (a4 == 1)
  {
    v7 = 328;
LABEL_6:
    sub_2978040A4(a2 + v7, &v12);
    v8 = sub_29785C480(a2) == *(a1 + 288);
    sub_29784D4B8(*(a1 + 32), v12, a4, v8);
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    v7 = 248;
    goto LABEL_6;
  }

  sub_2978040A4(a2 + 288, &v12);
LABEL_7:
  v9 = sub_29785F17C(a1 + 360, &v12);
  sub_29785BFF8(&v11, a2, a4);
  return sub_2978040A4(v9, &v11);
}

unint64_t sub_297860670(_DWORD **a1, uint64_t a2)
{
  if (sub_297829730((a2 + 24)))
  {
    return 0;
  }

  v5 = *a1;
  v6 = sub_29783E548(v5, *(a2 + 24));

  return sub_2978606D8(v5, v6);
}

unint64_t sub_2978606D8(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v2 = sub_29783E808(a1, a2, &v6);
  if (v6)
  {
    return 0;
  }

  v3 = v2;
  if (!sub_29783E940(v2))
  {
    return 0;
  }

  v4 = sub_297819E7C(v3);
  result = sub_29783E95C(v4);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_297860768(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  result = sub_29783D5D8(v2, v3);
  a1[1] = *a1;
  return result;
}

uint64_t sub_2978607AC(uint64_t a1, unsigned int a2)
{
  v6 = 0;
  v2 = sub_29783E808(a1, a2, &v6);
  if ((v6 & 1) != 0 || (v3 = v2, (sub_29783E940(v2) & 1) == 0))
  {
    sub_297829180(&v7);
    return v7;
  }

  else
  {
    v4 = sub_297819E7C(v3);
    return sub_297840FC0(v4);
  }
}

uint64_t sub_297860810(uint64_t a1)
{
  do
  {
    while (1)
    {
      v2 = sub_297840F40(a1 + 208);
      sub_297860C2C(a1 + 208);
      sub_29784FB00(v52);
      sub_29784FB04(*a1, v52);
      LODWORD(v33[0]) = sub_2977FB5F0(v52);
      *(a1 + 212) = sub_2977FB5F0(v33);
      v3 = sub_2978503FC(v52);
      if (v3 <= 12)
      {
        break;
      }

      if (v3 > 18)
      {
        if (v3 > 24)
        {
          if (v3 > 39)
          {
            if (v3 == 40)
            {
              v9 = 6;
              goto LABEL_32;
            }

            if (v3 == 64)
            {
              *(a1 + 208) = 0;
              return v2;
            }
          }

          else
          {
            if (v3 == 25)
            {
              v9 = 14;
              goto LABEL_32;
            }

            if (v3 == 30)
            {
              v9 = 19;
              goto LABEL_32;
            }
          }
        }

        else
        {
          if (v3 > 22)
          {
            if (v3 == 23)
            {
              v9 = 21;
            }

            else
            {
              v9 = 22;
            }

            goto LABEL_32;
          }

          if (v3 == 19)
          {
            v9 = 23;
            goto LABEL_32;
          }

          if (v3 == 20)
          {
            v9 = 24;
LABEL_32:
            *(a1 + 208) = v9;
            return v2;
          }
        }

LABEL_9:
        v7 = *(a1 + 24);
        v8 = sub_2977FB5F0(v52);
        sub_29782B128(v7, v8, 689, v30);
        v6 = v30;
LABEL_10:
        sub_29782963C(v6);
        *(a1 + 65) = 1;
      }

      else
      {
        if (v3 != 13)
        {
          goto LABEL_9;
        }

        if (sub_297860C44(v52))
        {
          v4 = *(a1 + 24);
          v5 = sub_2977FB5F0(v52);
          sub_29782B128(v4, v5, 19, v37);
          v6 = v37;
          goto LABEL_10;
        }

        sub_29783C7D0(&v35);
        sub_29784CE50(&v31, v52);
        sub_297860C50(v33, v31, v32, *(a1 + 8), &v35, *(a1 + 16), 0);
        if ((v34 & 1) == 0)
        {
          v26 = sub_29785961C(v33);
          v27 = sub_29781B6D0(a1 + 72, v26 + 1);
          v31 = sub_297860C54(v33);
          v32 = v28;
          v29 = sub_2977FB720(&v31);
          memcpy(v27, v29, v26);
          *(v27 + v26) = 0;
          *(a1 + 208) = 20;
          *(a1 + 224) = v27;
          *(a1 + 216) = v26;
          sub_297860CA4(v33);
          sub_29785617C(&v35);
          return v2;
        }

        sub_297860CA4(v33);
        sub_29785617C(&v35);
      }
    }
  }

  while (v3 == 5);
  if (v3 == 1)
  {
    v9 = 3;
    goto LABEL_32;
  }

  if (v3 != 7)
  {
    goto LABEL_9;
  }

  v35 = sub_29784FF14(v52);
  v36 = v11;
  *(a1 + 224) = sub_2977FB720(&v35);
  *(a1 + 216) = sub_2977FB7B8(&v35);
  sub_2978102C8(v33, v35, v36);
  LODWORD(v31) = 1;
  v12 = sub_297828618(v33, "config_macros", &v31);
  v51 = 2;
  v13 = sub_297810578(v12, "conflict", &v51);
  v50 = 7;
  v14 = sub_2978102CC(v13, "exclude", &v50);
  v49 = 8;
  v15 = sub_297810578(v14, "explicit", &v49);
  v48 = 9;
  v16 = sub_297810504(v15, "export", &v48);
  v47 = 10;
  v17 = sub_297810504(v16, "extern", &v47);
  v46 = 11;
  v18 = sub_297812160(v17, "framework", &v46);
  v45 = 4;
  v19 = sub_297810504(v18, "header", &v45);
  v44 = 12;
  v20 = sub_29781049C(v19, "link", &v44);
  v43 = 13;
  v21 = sub_297810504(v20, "module", &v43);
  v42 = 15;
  v22 = sub_2978102CC(v21, "private", &v42);
  v41 = 18;
  v23 = sub_297810578(v22, "requires", &v41);
  v40 = 16;
  v24 = sub_297810578(v23, "umbrella", &v40);
  v39 = 17;
  v25 = sub_297810428(v24, "use", &v39);
  v38 = 5;
  *(a1 + 208) = sub_2978105E0(v25, &v38);
  return v2;
}

double sub_297860C2C(uint64_t a1)
{
  *&result = 3;
  *a1 = 3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_297860C54(uint64_t a1)
{
  v2 = sub_297803A7C(a1 + 48);
  v3 = sub_29785961C(a1);
  sub_2977FB7C0(&v5, v2, v3);
  return v5;
}

uint64_t sub_297860CA8(uint64_t result, int a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = *(v3 + 208);
    if (v6 > 22)
    {
      break;
    }

    if (v6 != 21)
    {
      if (v6 == 22)
      {
        if (v5)
        {
          --v5;
          goto LABEL_27;
        }

        result = sub_297860DC0((v3 + 208), a2);
        if (result)
        {
          return result;
        }
      }

      else
      {
        if (v6 == 3)
        {
          return result;
        }

LABEL_20:
        if (v5 | v4)
        {
          goto LABEL_27;
        }

        result = sub_297860DC0((v3 + 208), a2);
        if (result)
        {
          return result;
        }

        v4 = 0;
      }

      v5 = 0;
      goto LABEL_27;
    }

    result = sub_297860DC0((v3 + 208), a2);
    if (result && !v5 && !v4)
    {
      return result;
    }

    ++v5;
LABEL_27:
    result = sub_297860810(v3);
  }

  if (v6 != 23)
  {
    if (v6 != 24)
    {
      goto LABEL_20;
    }

    if (v4)
    {
      --v4;
    }

    else
    {
      result = sub_297860DC0((v3 + 208), a2);
      if (result)
      {
        return result;
      }

      v4 = 0;
    }

    goto LABEL_27;
  }

  result = sub_297860DC0((v3 + 208), a2);
  if (!result || v5 || v4)
  {
    ++v4;
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_297860DD0(uint64_t a1, void *a2)
{
  sub_297860EC4(a2);
  while (sub_297860DC0((a1 + 208), 5) || sub_297860DC0((a1 + 208), 20))
  {
    v10[0] = sub_297860F78(a1 + 208);
    v10[1] = v4;
    v9 = sub_297840F40(a1 + 208);
    sub_29783E1BC(v10, &v9, v11);
    sub_297860FA8(&v12, v11);
    sub_297860F08(a2, &v12);
    j_std::string::~string(&v12);
    sub_297860810(a1);
    if (!sub_297860DC0((a1 + 208), 14))
    {
      return 0;
    }

    sub_297860810(a1);
  }

  v6 = *(a1 + 24);
  v7 = sub_297840F40(a1 + 208);
  sub_29782B128(v6, v7, 672, v8);
  sub_29782963C(v8);
  return 1;
}

void sub_297860EC4(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_29783D538(v2, v3);
  a1[1] = *a1;
}

uint64_t sub_297860F08(void *a1, uint64_t a2)
{
  if (a1[1] >= a1[2])
  {
    sub_29786563C(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_29786572C(v4, a2);
  v5 = sub_2977FB7B8(a1) + 32;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_297860FAC(uint64_t a1)
{
  v77[11] = *MEMORY[0x29EDCA608];
  if (!sub_297860DC0((a1 + 208), 10))
  {
    sub_297829180(&data);
    v4 = sub_297860DC0((a1 + 208), 8);
    if (v4)
    {
      data = sub_297860810(a1);
    }

    v5 = sub_297860DC0((a1 + 208), 11);
    if (v5)
    {
      sub_297860810(a1);
    }

    if (!sub_297860DC0((a1 + 208), 13))
    {
      v6 = *(a1 + 24);
      v7 = sub_297840F40(a1 + 208);
      sub_29782B128(v6, v7, 671, v75);
      sub_29782963C(v75);
      result = sub_297860810(a1);
      *(a1 + 65) = 1;
      goto LABEL_41;
    }

    sub_297860810(a1);
    if (sub_297860DC0((a1 + 208), 19))
    {
      result = sub_297861A60(a1, v5, v4);
LABEL_41:
      v31 = *MEMORY[0x29EDCA608];
      return result;
    }

    sub_29783CA18(v77);
    if (sub_297860DD0(a1, v77))
    {
      goto LABEL_39;
    }

    v8 = *(a1 + 232);
    v9 = sub_29783CBB0(v77);
    if (v8)
    {
      if (v9 >= 2)
      {
        v10 = *(a1 + 24);
        v11 = sub_297803A7C(v77);
        sub_29782B128(v10, *(v11 + 24), 685, &v71);
        LODWORD(v10) = *(sub_297803A7C(v77) + 24);
        v12 = sub_297861EBC(v77);
        sub_297853514(v73, v10, *(v12 + 24));
        sub_2978591B8(&v71, v73);
        v13 = &v71;
        goto LABEL_38;
      }
    }

    else
    {
      v14 = !v4;
      if (v9 != 1)
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0)
      {
        sub_29782B128(*(a1 + 24), data, 676, v74);
        sub_29782963C(v74);
        sub_297829180(&v71);
        v4 = 0;
        data = v71.__r_.__value_.__l.__data_;
        *(a1 + 65) = 1;
      }
    }

    v15 = *(a1 + 232);
    if (sub_29783CBB0(v77) >= 2)
    {
      *(a1 + 232) = 0;
      v16 = sub_29783CBB0(v77);
      v17 = 0;
      v18 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 0;
        while (1)
        {
          v20 = *(a1 + 32);
          v21 = sub_29783DA9C(v77, v19);
          sub_2978044E8(&v71, v21);
          v22 = sub_29785BAC0(v20, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_, *(a1 + 232));
          if (!v22)
          {
            break;
          }

          if (!v19)
          {
            v17 = v22;
          }

          *(a1 + 232) = v22;
          if (v18 == ++v19)
          {
            goto LABEL_28;
          }
        }

        if (!*(a1 + 232))
        {
          v60 = *(a1 + 24);
          v61 = sub_29783DA9C(v77, v19);
          sub_29782B128(v60, *(v61 + 24), 672, v70);
          v13 = v70;
          goto LABEL_38;
        }

        v32 = *(a1 + 24);
        v33 = sub_29783DA9C(v77, v19);
        sub_29782B128(v32, *(v33 + 24), 681, v73);
        v34 = sub_29783DA9C(v77, v19);
        sub_2978044E8(&v71, v34);
        v35 = sub_2978295C0(v73, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
        v36 = sub_29785C480(*(a1 + 232));
        sub_29783CDF0(v36, &v71);
        sub_2978044E8(v72, &v71);
        sub_2978295C0(v35, v72[0], v72[1]);
        std::string::~string(&v71);
        goto LABEL_37;
      }

LABEL_28:
      v23 = *(a1 + 40);
      if (v23 != sub_297860670(*(a1 + 32), v17))
      {
        sub_297861ED8(*(a1 + 32), v17, *(a1 + 40));
      }
    }

    v24 = sub_297861EBC(v77);
    sub_2978044E8(&v71, v24);
    v25 = *(sub_297861EBC(v77) + 24);
    sub_29785F770(v72);
    sub_297861F18(a1, v72);
    if (!sub_297860DC0((a1 + 208), 21))
    {
      v29 = *(a1 + 24);
      v30 = sub_297840F40(a1 + 208);
      sub_29782B128(v29, v30, 666, v73);
      sub_2978295C0(v73, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
LABEL_37:
      v13 = v73;
      goto LABEL_38;
    }

    v26 = sub_297860810(a1);
    v27 = sub_29785BAC0(*(a1 + 32), v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_, *(a1 + 232));
    if (v27)
    {
      v28 = v27;
      if (!sub_297829730((v27 + 24)) || *(a1 + 232))
      {
        sub_29782B128(*(a1 + 24), v25, 684, v73);
        sub_2978295C0(v73, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
        sub_29782963C(v73);
        sub_29782B128(*(a1 + 24), *(v28 + 24), 826, v67);
        sub_29782963C(v67);
        sub_297860CA8(a1, 22);
        if (sub_297860DC0((a1 + 208), 22))
        {
          sub_297860810(a1);
        }

        goto LABEL_39;
      }

      sub_297860CA8(a1, 22);
      if (sub_297860DC0((a1 + 208), 22))
      {
        sub_297860810(a1);
        goto LABEL_40;
      }

      v62 = *(a1 + 24);
      v63 = sub_297840F40(a1 + 208);
      sub_29782B128(v62, v63, 673, v69);
      sub_29782963C(v69);
      sub_29782B128(*(a1 + 24), v26, 824, v68);
      v13 = v68;
LABEL_38:
      sub_29782963C(v13);
LABEL_39:
      *(a1 + 65) = 1;
LABEL_40:
      result = sub_29783CB94(v77);
      goto LABEL_41;
    }

    v37 = sub_29785EFB4(*(a1 + 32), v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_, *(a1 + 232), v5, v4);
    *(a1 + 232) = v37;
    *(v37 + 24) = v25;
    v38 = v72[0];
    if ((v72[0] & 1) != 0 || *(a1 + 64) == 1)
    {
      *(*(a1 + 232) + 528) |= 0x20u;
    }

    if ((v38 & 2) != 0)
    {
      *(*(a1 + 232) + 528) |= 0x40u;
    }

    while (1)
    {
      switch(*(a1 + 208))
      {
        case 1:
          sub_297862174(a1);
          continue;
        case 2:
          sub_2978622F4(a1);
          continue;
        case 3:
        case 0x16:
          if (sub_297860DC0((a1 + 208), 22))
          {
            sub_297860810(a1);
          }

          else
          {
            v49 = *(a1 + 24);
            v50 = sub_297840F40(a1 + 208);
            sub_29782B128(v49, v50, 673, v65);
            sub_29782963C(v65);
            sub_29782B128(*(a1 + 24), v26, 824, v64);
            sub_29782963C(v64);
            *(a1 + 65) = 1;
          }

          v51 = *(a1 + 232);
          if ((*(v51 + 528) & 8) != 0)
          {
            v52 = sub_297860378(*(a1 + 232));
            v51 = *(a1 + 232);
            if ((v52 & 1) == 0)
            {
              v53 = sub_297806904((v51 + 1096));
              v51 = *(a1 + 232);
              if (v53)
              {
                v54 = *(a1 + 48);
                v55 = sub_2977FD5B0(*(a1 + 8));
                sub_297860394(v51, v54, v55);
                v51 = *(a1 + 232);
              }
            }
          }

          if ((*(v51 + 528) & 3) == 0 && *(v51 + 32))
          {
            v56 = sub_29785C480(v51);
            sub_29783D19C(v56, 0);
            v57 = sub_29785C480(*(a1 + 232));
            v58 = sub_2977FB720(*(a1 + 232) + 368);
            v59 = sub_2977FB7B8(*(a1 + 232) + 368);
            sub_2978630F0((v57 + 368), v58, v59);
          }

          *(a1 + 232) = v15;
          goto LABEL_40;
        case 4:
          sub_297829180(v73);
          sub_297862790(a1, 4, v73[0]);
          continue;
        case 7:
          v39 = sub_297860810(a1);
          if (!sub_297860DC0((a1 + 208), 4))
          {
            v44 = *(a1 + 24);
            v45 = sub_297840F40(a1 + 208);
            sub_29782B128(v44, v45, 664, v73);
            v46 = "exclude";
            goto LABEL_68;
          }

          sub_297862790(a1, 7, v39);
          break;
        case 8:
        case 0xA:
        case 0xB:
        case 0xD:
          sub_297860FAC(a1);
          continue;
        case 9:
          sub_297862480(a1);
          continue;
        case 0xC:
          sub_297862FE0(a1);
          continue;
        case 0xF:
          v41 = sub_297860810(a1);
          if (sub_297860DC0((a1 + 208), 4))
          {
            sub_297862790(a1, 15, v41);
          }

          else
          {
            v47 = *(a1 + 24);
            v48 = sub_297840F40(a1 + 208);
            sub_29782B128(v47, v48, 664, v73);
            v46 = "private";
LABEL_68:
            sub_29783F028(v73, v46);
            sub_29782963C(v73);
          }

          break;
        case 0x10:
          v40 = sub_297860810(a1);
          if (sub_297860DC0((a1 + 208), 4))
          {
            sub_297862790(a1, 16, v40);
          }

          else
          {
            sub_297862D3C(a1, v40);
          }

          continue;
        case 0x11:
          sub_297862604(a1);
          continue;
        case 0x12:
          sub_297862688(a1);
          continue;
        default:
          v42 = *(a1 + 24);
          v43 = sub_297840F40(a1 + 208);
          sub_29782B128(v42, v43, 669, v66);
          sub_29782963C(v66);
          sub_297860810(a1);
          continue;
      }
    }
  }

  v2 = *MEMORY[0x29EDCA608];

  return sub_297861844(a1);
}

uint64_t sub_297861844(uint64_t a1)
{
  v23[11] = *MEMORY[0x29EDCA608];
  sub_297860810(a1);
  if (sub_297860DC0((a1 + 208), 13))
  {
    sub_297860810(a1);
    sub_29783CA18(v23);
    if (!sub_297860DD0(a1, v23))
    {
      if (sub_297860DC0((a1 + 208), 20))
      {
        v17[0] = sub_297860F78(a1 + 208);
        v17[1] = v2;
        sub_297801F5C(v17, &v20);
        sub_297860810(a1);
        sub_2978044E8(&v18, &v20);
        sub_297806EC8(v17);
        sub_2978036E8(v16, &v18);
        if (sub_297806FE8(v16))
        {
          v3 = sub_2977FB720(*(a1 + 48));
          sub_2977FB7B4(v16, v3);
          sub_297811C58(v17, v16[0], v16[1]);
          sub_2978036E4(v16, &v20);
          sub_2978036E0(v15, &byte_2978FC3E5);
          sub_2978036E0(v14, &byte_2978FC3E5);
          sub_2978036E0(v13, &byte_2978FC3E5);
          sub_297806664(v17, v16, v15, v14, v13);
          v18 = sub_297801F10(v17);
          v19 = v4;
        }

        v5 = sub_2977FD5B0(*(a1 + 8));
        v6 = sub_29782E354(v5, v18, v19, 0, 1);
        if (v6)
        {
          sub_29785FFC4(*(a1 + 32), v6, 0);
        }

        sub_297801F60(v17);
        std::string::~string(&v20);
        goto LABEL_12;
      }

      v10 = *(a1 + 24);
      v11 = sub_297840F40(a1 + 208);
      sub_29782B128(v10, v11, 670, v21);
      sub_29782963C(v21);
    }

    *(a1 + 65) = 1;
LABEL_12:
    result = sub_29783CB94(v23);
    goto LABEL_13;
  }

  v7 = *(a1 + 24);
  v8 = sub_297840F40(a1 + 208);
  sub_29782B128(v7, v8, 671, v22);
  sub_29782963C(v22);
  result = sub_297860810(a1);
  *(a1 + 65) = 1;
LABEL_13:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297861A60(uint64_t a1, int a2, int a3)
{
  v6 = sub_297860810(a1);
  v7 = *(a1 + 232);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2;
  }

  if (v8)
  {
    if (v7)
    {
      v9 = *(v7 + 528);
      if ((v9 & 2) != 0)
      {
        if (!sub_29783CF9C(v7))
        {
          v11 = *(a1 + 24);
          v12 = v6;
          v13 = v50;
          v14 = v50;
          v15 = 678;
          goto LABEL_20;
        }

        v9 = *(*(a1 + 232) + 528);
      }

      if ((v9 & 0x100) == 0)
      {
        v10 = 0;
        if (!a2)
        {
LABEL_28:
          if (v10)
          {
LABEL_29:
            result = sub_297860DC0((a1 + 208), 21);
            if (result)
            {
              sub_297860810(a1);
              sub_297860CA8(a1, 22);
              result = sub_297860DC0((a1 + 208), 22);
              if (result)
              {
                result = sub_297860810(a1);
              }
            }

            goto LABEL_57;
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }

      sub_29782B128(*(a1 + 24), v6, 679, v49);
      sub_29782963C(v49);
      if (!sub_297805430((*(a1 + 232) + 540)))
      {
LABEL_21:
        v10 = 1;
        if (!a2)
        {
          goto LABEL_28;
        }

LABEL_22:
        sub_29782B128(*(a1 + 24), v6, 677, v47);
        sub_29782963C(v47);
        if (v10)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      v11 = *(a1 + 24);
      v12 = *(*(a1 + 232) + 540);
      v13 = v48;
      v14 = v48;
      v15 = 826;
LABEL_20:
      sub_29782B128(v11, v12, v15, v14);
      sub_29782963C(v13);
      goto LABEL_21;
    }
  }

  else
  {
    sub_29782B128(*(a1 + 24), v6, 686, v51);
    sub_29782963C(v51);
    if (*(a1 + 232))
    {
      goto LABEL_21;
    }
  }

  if (!a3)
  {
    v10 = v8 ^ 1;
    goto LABEL_28;
  }

  sub_29782B128(*(a1 + 24), v6, 675, v46);
  sub_29782963C(v46);
  if ((v8 & 1) == 0)
  {
    goto LABEL_29;
  }

  a3 = 0;
LABEL_23:
  sub_29785F770(v45);
  sub_297861F18(a1, v45);
  v16 = *(a1 + 232);
  if (v16)
  {
    *(v16 + 528) |= 0x100u;
    *(*(a1 + 232) + 540) = v6;
    if (a3)
    {
      v17 = 512;
    }

    else
    {
      v17 = 0;
    }

    *(*(a1 + 232) + 528) = *(*(a1 + 232) + 528) & 0xFDFF | v17;
  }

  else
  {
    v19 = sub_297863574(*(a1 + 32) + 408, (a1 + 48));
    *v19 |= 1u;
    v20 = sub_297863574(*(a1 + 32) + 408, (a1 + 48));
    *(v20 + 4) = v45[0];
    v21 = *(a1 + 40);
    sub_297863574(*(a1 + 32) + 408, (a1 + 48))[1] = v21;
  }

  if (!sub_297860DC0((a1 + 208), 21))
  {
    v33 = *(a1 + 24);
    v34 = sub_297840F40(a1 + 208);
    sub_29782B128(v33, v34, 667, v44);
    v35 = v44;
    goto LABEL_56;
  }

  v22 = sub_297860810(a1);
  while (1)
  {
    while (1)
    {
      v23 = *(a1 + 208);
      if (v23 > 8)
      {
        break;
      }

      if (v23 != 7)
      {
        if (v23 == 3)
        {
          goto LABEL_53;
        }

        goto LABEL_47;
      }

      if (*(a1 + 232))
      {
        goto LABEL_47;
      }

      sub_297860810(a1);
      if (sub_297860DC0((a1 + 208), 5))
      {
        v24 = sub_297863574(*(a1 + 32) + 408, (a1 + 48));
        v41[0] = sub_297860F78(a1 + 208);
        v41[1] = v25;
        sub_297801F5C(v41, &v42);
        sub_29784DDA8(v24 + 2, &v42);
        std::string::~string(&v42);
        goto LABEL_49;
      }

      v31 = *(a1 + 24);
      v32 = sub_297840F40(a1 + 208);
      sub_29782B128(v31, v32, 680, v43);
      sub_29782963C(v43);
    }

    if (v23 != 9)
    {
      break;
    }

    if (!*(a1 + 232))
    {
      goto LABEL_47;
    }

    sub_297860810(a1);
    if (sub_297860DC0((a1 + 208), 19))
    {
      *(*(a1 + 232) + 528) |= 0x400u;
      goto LABEL_49;
    }

    v29 = *(a1 + 24);
    v30 = sub_297840F40(a1 + 208);
    sub_29782B128(v29, v30, 662, v40);
    v28 = v40;
LABEL_48:
    sub_29782963C(v28);
LABEL_49:
    sub_297860810(a1);
  }

  if (v23 != 22)
  {
LABEL_47:
    v26 = *(a1 + 24);
    v27 = sub_297840F40(a1 + 208);
    sub_29782B128(v26, v27, 665, &v42);
    sub_297863490(&v42, *(a1 + 232) != 0);
    v28 = &v42;
    goto LABEL_48;
  }

LABEL_53:
  if (sub_297860DC0((a1 + 208), 22))
  {
    return sub_297860810(a1);
  }

  v36 = *(a1 + 24);
  v37 = sub_297840F40(a1 + 208);
  sub_29782B128(v36, v37, 673, v39);
  sub_29782963C(v39);
  sub_29782B128(*(a1 + 24), v22, 824, v38);
  v35 = v38;
LABEL_56:
  result = sub_29782963C(v35);
LABEL_57:
  *(a1 + 65) = 1;
  return result;
}

uint64_t sub_297861ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v4 = sub_297863B7C(a1 + 456, &v6);
  return sub_29783DAC8(v4, a3);
}

uint64_t sub_297861F18(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  while (sub_297860DC0((a1 + 208), 23))
  {
    v5 = sub_297860810(a1);
    if (!sub_297860DC0((a1 + 208), 5))
    {
      v6 = *(a1 + 24);
      v7 = sub_297840F40(a1 + 208);
      sub_29782B128(v6, v7, 658, v26);
      sub_29782963C(v26);
      sub_297860CA8(a1, 24);
      if (sub_297860DC0((a1 + 208), 24))
      {
        sub_297860810(a1);
      }

      v4 = 1;
    }

    v8 = sub_297860F78(a1 + 208);
    sub_2978102C8(v25, v8, v9);
    v24 = 3;
    sub_297863590(v25, &v24);
    v23 = 2;
    sub_297863604(v25, &v23);
    v22 = 1;
    sub_29786366C(v25, &v22);
    v21 = 0;
    v10 = sub_2978105E0(v25, &v21);
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = *a2 | 2;
        goto LABEL_15;
      }

      if (v10 == 3)
      {
        v11 = *a2 | 4;
        goto LABEL_15;
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        v11 = *a2 | 1;
LABEL_15:
        *a2 = v11;
      }
    }

    else
    {
      v12 = *(a1 + 24);
      v13 = sub_297840F40(a1 + 208);
      sub_29782B128(v12, v13, 879, v25);
      v14 = sub_297860F78(a1 + 208);
      sub_2978295C0(v25, v14, v15);
      sub_29782963C(v25);
    }

    sub_297860810(a1);
    if (!sub_297860DC0((a1 + 208), 24))
    {
      v16 = *(a1 + 24);
      v17 = sub_297840F40(a1 + 208);
      sub_29782B128(v16, v17, 674, v20);
      sub_29782963C(v20);
      sub_29782B128(*(a1 + 24), v5, 825, v19);
      sub_29782963C(v19);
      sub_297860CA8(a1, 24);
      v4 = 1;
    }

    if (sub_297860DC0((a1 + 208), 24))
    {
      sub_297860810(a1);
    }
  }

  return v4 & 1;
}

uint64_t sub_297862174(uint64_t a1)
{
  v2 = sub_297860810(a1);
  if (*(*(a1 + 232) + 32))
  {
    sub_29782B128(*(a1 + 24), v2, 657, v16);
    sub_29782963C(v16);
  }

  sub_29785F770(v15);
  sub_297861F18(a1, v15);
  if ((v15[0] & 4) != 0)
  {
    v3 = *(a1 + 232);
    if (!*(v3 + 32))
    {
      *(v3 + 528) |= 0x800u;
    }
  }

  result = sub_297860DC0((a1 + 208), 5);
  if (result)
  {
    v5 = *(a1 + 232);
    if (!*(v5 + 32))
    {
      v12 = sub_297860F78(a1 + 208);
      v13 = v6;
      sub_297802728(&v12, &v14);
      sub_297809AEC((v5 + 1184), &v14);
      std::string::~string(&v14);
    }

    sub_297860810(a1);
    result = sub_297860DC0((a1 + 208), 0);
    if (result)
    {
      while (1)
      {
        sub_297860810(a1);
        if (!sub_297860DC0((a1 + 208), 5))
        {
          break;
        }

        v7 = *(a1 + 232);
        if (!*(v7 + 32))
        {
          v12 = sub_297860F78(a1 + 208);
          v13 = v8;
          sub_297802728(&v12, &v14);
          sub_297809AEC((v7 + 1184), &v14);
          std::string::~string(&v14);
        }

        sub_297860810(a1);
        result = sub_297860DC0((a1 + 208), 0);
        if ((result & 1) == 0)
        {
          return result;
        }
      }

      v9 = *(a1 + 24);
      v10 = sub_297840F40(a1 + 208);
      sub_29782B128(v9, v10, 659, v11);
      return sub_29782963C(v11);
    }
  }

  return result;
}

uint64_t sub_2978622F4(uint64_t a1)
{
  v15[3] = *MEMORY[0x29EDCA608];
  v2 = sub_297860810(a1);
  sub_2978634CC(v14);
  if ((sub_297860DD0(a1, v14) & 1) == 0)
  {
    if (sub_297860DC0((a1 + 208), 0))
    {
      sub_297860810(a1);
      if (sub_297860DC0((a1 + 208), 20))
      {
        v13[0] = sub_297860F78(a1 + 208);
        v13[1] = v3;
        sub_297802728(v13, &v11);
        sub_2978046C4(v15, &v11);
        std::string::~string(&v11);
        sub_297860810(a1);
        sub_297863570((*(a1 + 232) + 1208), v14);
        goto LABEL_8;
      }

      v7 = *(a1 + 24);
      v8 = sub_297840F40(a1 + 208);
      sub_29782B128(v7, v8, 661, v13);
      sub_2978634D0(v14, &v11);
      sub_2978044E8(v12, &v11);
      sub_2978295C0(v13, v12[0], v12[1]);
      std::string::~string(&v11);
      v6 = v13;
    }

    else
    {
      v4 = *(a1 + 24);
      v5 = sub_297840F40(a1 + 208);
      sub_29782B128(v4, v5, 660, &v11);
      sub_2978634C0(v13, v2);
      sub_2978591B8(&v11, v13);
      v6 = &v11;
    }

    sub_29782963C(v6);
  }

LABEL_8:
  result = sub_29783E024(v14);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297862480(uint64_t a1)
{
  v15[11] = *MEMORY[0x29EDCA608];
  v2 = sub_297860810(a1);
  sub_29783CA18(v15);
  if (sub_297860DC0((a1 + 208), 5))
  {
    while (1)
    {
      v11[0] = sub_297860F78(a1 + 208);
      v11[1] = v3;
      v10 = sub_297840F40(a1 + 208);
      sub_29783E1BC(v11, &v10, v12);
      sub_297860FA8(&v13, v12);
      sub_297860F08(v15, &v13);
      j_std::string::~string(&v13);
      sub_297860810(a1);
      if (!sub_297860DC0((a1 + 208), 14))
      {
        break;
      }

      sub_297860810(a1);
      if (!sub_297860DC0((a1 + 208), 5))
      {
        goto LABEL_4;
      }
    }

    v4 = 0;
    goto LABEL_8;
  }

LABEL_4:
  if (sub_297860DC0((a1 + 208), 19))
  {
    sub_297860810(a1);
    v4 = 1;
LABEL_8:
    LODWORD(v13.__r_.__value_.__l.__data_) = v2;
    sub_2978633AC(&v13.__r_.__value_.__r.__words[1], v15);
    v14 = v4;
    sub_2978633B0((*(a1 + 232) + 624), &v13);
    sub_29783D6BC(&v13);
    goto LABEL_9;
  }

  v5 = *(a1 + 24);
  v6 = sub_297840F40(a1 + 208);
  sub_29782B128(v5, v6, 683, v9);
  sub_29782963C(v9);
  *(a1 + 65) = 1;
LABEL_9:
  result = sub_29783CB94(v15);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297862604(uint64_t a1)
{
  v4[11] = *MEMORY[0x29EDCA608];
  sub_297860810(a1);
  sub_29783CA18(v4);
  sub_297860DD0(a1, v4);
  sub_297863420((*(a1 + 232) + 896), v4);
  result = sub_29783CB94(v4);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297862688(uint64_t a1)
{
  sub_297860810(a1);
  while (1)
  {
    v2 = sub_297860DC0((a1 + 208), 6);
    v3 = v2;
    if (v2)
    {
      sub_297860810(a1);
    }

    if (!sub_297860DC0((a1 + 208), 5))
    {
      v6 = *(a1 + 24);
      v7 = sub_297840F40(a1 + 208);
      sub_29782B128(v6, v7, 663, v11);
      sub_29782963C(v11);
      *(a1 + 65) = 1;
      return;
    }

    v8 = sub_297860F78(a1 + 208);
    v9 = v4;
    sub_297801F5C(&v8, &v10);
    sub_297860810(a1);
    v5 = *(a1 + 232);
    sub_2978044E8(&v8, &v10);
    sub_29783D09C(v5, v8, v9, !v3, *(*(a1 + 32) + 16), *(*(a1 + 32) + 24));
    if (!sub_297860DC0((a1 + 208), 0))
    {
      break;
    }

    sub_297860810(a1);
    std::string::~string(&v10);
  }

  std::string::~string(&v10);
}

uint64_t sub_297862790(uint64_t a1, int a2, int a3)
{
  sub_297860810(a1);
  if (!sub_297860DC0((a1 + 208), 20))
  {
    v8 = *(a1 + 24);
    v9 = sub_297840F40(a1 + 208);
    sub_29782B128(v8, v9, 664, &v40);
    sub_29783F028(&v40, "header");
    result = sub_29782963C(&v40);
    *(a1 + 65) = 1;
    return result;
  }

  sub_2978631B8(&v41);
  v35.__r_.__value_.__r.__words[0] = sub_297860F78(a1 + 208);
  v35.__r_.__value_.__l.__size_ = v6;
  sub_297801F5C(&v35, &v40);
  sub_2978046C4(v42, &v40);
  std::string::~string(&v40);
  v41 = sub_297860810(a1);
  if (a2 != 16 || !sub_2978631BC((*(a1 + 232) + 40), v7))
  {
    sub_297806EC8(&v40);
    sub_2978036E4(&v35, v42);
    if (sub_297806F84(&v35.__r_.__value_.__l.__data_))
    {
      sub_2978044E8(&v35, v42);
      sub_29784B428(&v40.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
    }

    else
    {
      v16 = sub_2977FB720(*(a1 + 48));
      sub_2977FB7B4(&v35, v16);
      sub_29784B428(&v40.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
      v17 = sub_2977FD0D4(&v40);
      if (!sub_2978631D8(*(a1 + 232)))
      {
        sub_2978036E4(&v35, v42);
        sub_2978036E0(&v38, &byte_2978FC3E5);
        sub_2978036E0(v37, &byte_2978FC3E5);
        sub_2978036E0(v36, &byte_2978FC3E5);
        sub_297806664(&v40.__r_.__value_.__l.__data_, &v35.__r_.__value_.__l.__data_, &v38, v37, v36);
        v24 = sub_2977FD5B0(*(a1 + 8));
        v25 = sub_2978059B8(&v40);
        v14 = sub_29782E354(v24, v25, v26, 0, 1);
        v15 = 0;
        if (a2 != 16 && (*(*(a1 + 232) + 528) & 0x20) != 0)
        {
          v27 = *(a1 + 56);
          if (!v27)
          {
            goto LABEL_9;
          }

          if (v27 == *(a1 + 48))
          {
            goto LABEL_9;
          }

          sub_2978044E8(&v35, v42);
          if (!sub_29785BDF0(v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_))
          {
            goto LABEL_9;
          }

          v28 = sub_2977FB720(*(a1 + 56));
          sub_2977FB7B4(&v38, v28);
          sub_297807A08(&v35, v38, v39);
          sub_2978036E4(&v38, v42);
          sub_2978036E0(v37, &byte_2978FC3E5);
          sub_2978036E0(v36, &byte_2978FC3E5);
          sub_2978036E0(v34, &byte_2978FC3E5);
          sub_297806664(&v35.__r_.__value_.__l.__data_, &v38, v37, v36, v34);
          v29 = sub_2977FD5B0(*(a1 + 8));
          v30 = sub_2978059B8(&v35);
          v32 = sub_29782E354(v29, v30, v31, 0, 1);
          if (v14)
          {
            v15 = v32;
          }

          else
          {
            v15 = 0;
          }

          if (v32)
          {
            v33 = v14 == 0;
          }

          else
          {
            v33 = 0;
          }

          if (v33)
          {
            v14 = v32;
          }

          sub_297801F60(&v35);
        }

LABEL_10:
        if (!v14)
        {
          if (a2 != 7)
          {
            v42[24] = a2 == 16;
            sub_29783D19C(*(a1 + 232), 0);
            sub_29786333C((*(a1 + 232) + 368), &v41);
          }

LABEL_39:
          sub_297801F60(&v40);
          return sub_29782D764(&v41);
        }

LABEL_16:
        if (a2 == 16)
        {
          v36[0] = sub_29783CFFC(v14);
          v22 = *sub_29785F134(*(a1 + 32) + 384, v36);
          if (v22)
          {
            sub_29782B128(*(a1 + 24), a3, 687, &v38);
            sub_29783CDF0(v22, &v35);
            sub_2978044E8(v37, &v35);
            sub_2978295C0(&v38, v37[0], v37[1]);
            std::string::~string(&v35);
            sub_29782963C(&v38);
            *(a1 + 65) = 1;
          }

          else
          {
            sub_29786049C(*(a1 + 32), *(a1 + 232), v14);
          }
        }

        else
        {
          if (a2 == 7)
          {
            v23 = 2;
          }

          else
          {
            v23 = a2 == 15;
          }

          sub_2978605AC(*(a1 + 32), *(a1 + 232), v14, v23);
          if (v15)
          {
            sub_2978605AC(*(a1 + 32), *(a1 + 232), v15, v23);
          }
        }

        goto LABEL_39;
      }

      sub_297863200(*(a1 + 232), &v40.__r_.__value_.__l.__data_);
      sub_2978036E0(&v35, "Headers");
      sub_2978036E4(&v38, v42);
      sub_2978036E0(v37, &byte_2978FC3E5);
      sub_2978036E0(v36, &byte_2978FC3E5);
      sub_297806664(&v40.__r_.__value_.__l.__data_, &v35.__r_.__value_.__l.__data_, &v38, v37, v36);
      v18 = sub_2977FD5B0(*(a1 + 8));
      v19 = sub_2978059B8(&v40);
      v21 = sub_29782E354(v18, v19, v20, 0, 1);
      if (v21)
      {
        v14 = v21;
        v15 = 0;
        goto LABEL_16;
      }

      sub_297806DA4(&v40.__r_.__value_.__l.__data_, v17);
      sub_2978036E0(&v35, "PrivateHeaders");
      sub_2978036E4(&v38, v42);
      sub_2978036E0(v37, &byte_2978FC3E5);
      sub_2978036E0(v36, &byte_2978FC3E5);
      sub_297806664(&v40.__r_.__value_.__l.__data_, &v35.__r_.__value_.__l.__data_, &v38, v37, v36);
    }

    v11 = sub_2977FD5B0(*(a1 + 8));
    v12 = sub_2978059B8(&v40);
    v14 = sub_29782E354(v11, v12, v13, 0, 1);
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  sub_29782B128(*(a1 + 24), v41, 687, &v35);
  sub_29783CDF0(*(a1 + 232), &v40);
  sub_2978044E8(&v38, &v40);
  sub_2978295C0(&v35, v38, v39);
  std::string::~string(&v40);
  sub_29782963C(&v35);
  *(a1 + 65) = 1;
  return sub_29782D764(&v41);
}

void sub_297862D3C(uint64_t a1, int a2)
{
  if (!sub_297860DC0((a1 + 208), 20))
  {
    v8 = *(a1 + 24);
    v9 = sub_297840F40(a1 + 208);
    sub_29782B128(v8, v9, 664, &v23);
    sub_29783F028(&v23, "umbrella");
    sub_29782963C(&v23);
    *(a1 + 65) = 1;
    return;
  }

  v23.__r_.__value_.__r.__words[0] = sub_297860F78(a1 + 208);
  v23.__r_.__value_.__l.__size_ = v4;
  sub_297801F5C(&v23, &v24);
  v5 = sub_297860810(a1);
  if (!sub_2978631BC((*(a1 + 232) + 40), v6))
  {
    sub_2978036E4(&v23, &v24);
    if (sub_297806F84(&v23.__r_.__value_.__l.__data_))
    {
      v10 = sub_2977FD5B0(*(a1 + 8));
      sub_2978044E8(&v23, &v24);
      v19[0] = sub_29782DFB8(v10, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_, 1);
      if (v19[0])
      {
LABEL_7:
        v11 = *sub_29785F134(*(a1 + 32) + 384, v19);
        if (!v11)
        {
          sub_297860528(*(a1 + 32), *(a1 + 232), v19[0]);
          goto LABEL_13;
        }

        sub_29782B128(*(a1 + 24), a2, 687, &v21);
        v7 = v11;
        goto LABEL_9;
      }
    }

    else
    {
      sub_297806EC8(&v23);
      v13 = sub_2977FB720(*(a1 + 48));
      sub_2977FB7B4(&v21, v13);
      sub_29784B428(&v23.__r_.__value_.__l.__data_, v21, v22);
      sub_2978036E4(&v21, &v24);
      sub_2978036E0(v20, &byte_2978FC3E5);
      sub_2978036E0(v19, &byte_2978FC3E5);
      sub_2978036E0(v18, &byte_2978FC3E5);
      sub_297806664(&v23.__r_.__value_.__l.__data_, &v21, v20, v19, v18);
      v14 = sub_2977FD5B0(*(a1 + 8));
      v15 = sub_2978059B8(&v23);
      v17 = sub_29782DFB8(v14, v15, v16, 1);
      v19[0] = v17;
      sub_297801F60(&v23);
      if (v17)
      {
        goto LABEL_7;
      }
    }

    sub_29782B128(*(a1 + 24), v5, 688, &v23);
    sub_2978044E8(&v21, &v24);
    sub_2978295C0(&v23, v21, v22);
    v12 = &v23;
    goto LABEL_12;
  }

  sub_29782B128(*(a1 + 24), v5, 687, &v21);
  v7 = *(a1 + 232);
LABEL_9:
  sub_29783CDF0(v7, &v23);
  sub_2978044E8(v20, &v23);
  sub_2978295C0(&v21, v20[0], v20[1]);
  std::string::~string(&v23);
  v12 = &v21;
LABEL_12:
  sub_29782963C(v12);
  *(a1 + 65) = 1;
LABEL_13:
  std::string::~string(&v24);
}

void sub_297862FE0(uint64_t a1)
{
  v2 = sub_297860810(a1);
  v3 = sub_297860DC0((a1 + 208), 11);
  if (v3)
  {
    sub_297860810(a1);
  }

  if (sub_297860DC0((a1 + 208), 20))
  {
    v9.__r_.__value_.__r.__words[0] = sub_297860F78(a1 + 208);
    v9.__r_.__value_.__l.__size_ = v4;
    sub_297801F5C(&v9, &v10);
    sub_297860810(a1);
    v5 = *(a1 + 232);
    sub_2978634C8(&v9, &v10, v3);
    sub_29783D128((v5 + 1096), &v9);
    j_std::string::~string(&v9);
    std::string::~string(&v10);
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = sub_297840F40(a1 + 208);
    sub_29782B128(v6, v7, 668, &v9);
    v8 = sub_297863490(&v9, v3);
    sub_2978634C0(&v10, v2);
    sub_2978591B8(v8, &v10);
    sub_29782963C(&v9);
    *(a1 + 65) = 1;
  }
}

uint64_t sub_2978630F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780D1E8(a2, a3);
  v7 = sub_2977FD5B0(a1);
  if (v6 > 0xCCCCCCCCCCCCCCCDLL * ((v7 - sub_2977FB7B8(a1)) >> 3))
  {
    v8 = sub_29780CAF4(a1);
    sub_2978657F0(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_2978658E8(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + 40 * v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_2978631D8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  do
  {
    v1 = *(a1 + 528);
    v2 = (v1 >> 3) & 1;
    if ((v1 & 8) != 0)
    {
      break;
    }

    a1 = *(a1 + 32);
  }

  while (a1);
  return v2;
}

uint64_t sub_297863200(uint64_t a1, const void **a2)
{
  v13[7] = *MEMORY[0x29EDCA608];
  sub_29783CEF0(v13);
  for (; a1; a1 = *(a1 + 32))
  {
    if ((*(a1 + 528) & 8) != 0)
    {
      sub_2978044E8(&v12, a1);
      sub_297803F88(v13, &v12);
    }
  }

  if (!sub_297806904(v13))
  {
    v4 = sub_2978094B8(v13);
    if (v4 != 1)
    {
      v5 = v4 - 2;
      do
      {
        sub_2978036E0(&v12, "Frameworks");
        v6 = sub_29780942C(v13, v5);
        sub_297811CAC(v6, ".framework", v11);
        sub_2978036E0(v10, &byte_2978FC3E5);
        sub_2978036E0(v9, &byte_2978FC3E5);
        sub_297806664(a2, &v12, v11, v10, v9);
        --v5;
      }

      while (v5 != -1);
    }
  }

  result = sub_2977FD134(v13);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29786333C(void *a1, uint64_t a2)
{
  if (a1[1] >= a1[2])
  {
    sub_2978657F0(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_297865A1C(v4, a2);
  v5 = sub_2977FB7B8(a1) + 40;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_2978633B0(void *a1, uint64_t a2)
{
  if (a1[1] >= a1[2])
  {
    sub_297865E58(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_297865F50(v4, a2);
  v5 = sub_2977FB7B8(a1) + 104;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_297863420(void *a1, uint64_t a2)
{
  if (a1[1] >= a1[2])
  {
    sub_297866344(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_2978633AC(v4, a2);
  v5 = sub_2977FB7B8(a1) + 88;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_2978634D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_297802744(a2);
  sub_29783E51C(v8, a2);
  v4 = sub_29783CBB0(a1);
  if (v4)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        sub_297801F64(v8, ".");
      }

      v6 = sub_29783DA9C(a1, v5);
      sub_29780BB74(v8, v6);
      ++v5;
    }

    while (v4 != v5);
  }

  return sub_29781F160(v8);
}

uint64_t sub_297863590(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 10)
  {
    v4 = sub_2977FB720(a1);
    if (*v4 == 0x6974737561687865 && *(v4 + 8) == 25974)
    {
      *(a1 + 16) = a2;
    }
  }

  return a1;
}

uint64_t sub_297863604(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 8 && *sub_2977FB720(a1) == 0x635F6E7265747865)
  {
    *(a1 + 16) = a2;
  }

  return a1;
}

uint64_t sub_29786366C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 6)
  {
    v4 = sub_2977FB720(a1);
    if (*v4 == 1953724787 && *(v4 + 4) == 28005)
    {
      *(a1 + 16) = a2;
    }
  }

  return a1;
}

uint64_t sub_2978636D8(uint64_t a1)
{
  while (1)
  {
    while (1)
    {
      do
      {
        v2 = *(a1 + 208);
      }

      while (v2 > 0x18);
      v3 = 1 << v2;
      if ((v3 & 0x1FFD2F7) == 0)
      {
        break;
      }

      v4 = *(a1 + 24);
      v5 = sub_297840F40(a1 + 208);
      sub_29782B128(v4, v5, 671, v7);
      sub_29782963C(v7);
      *(a1 + 65) = 1;
      sub_297860810(a1);
    }

    if ((v3 & 0x2D00) == 0)
    {
      break;
    }

    sub_297860FAC(a1);
  }

  return *(a1 + 65);
}

uint64_t sub_297863788(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = sub_29783FE24(a1, a2, a4 != 0);

  return sub_2978404E0(a1, v11, a3, a4, a5, a6);
}

uint64_t sub_297863818(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = j_j_nullsub_1(a1, a2);
  v8 = j_j_nullsub_1(a2, v7);
  v9 = sub_297863880(v6, v8, a3, &v11);
  return sub_2977FD98C(a1, v9);
}

uint64_t sub_297863880(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  for (i = a1; i != a2; i += 8)
  {
    if (*sub_297813268(a4, i) == *a3)
    {
      break;
    }
  }

  return i;
}

BOOL sub_2978638E8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  if (sub_297806914(v9))
  {
    return 0;
  }

  v3 = sub_297803A20(v9, 0);
  result = sub_29785273C(v3);
  if (result)
  {
    v4 = sub_2977FB720(v9);
    v5 = sub_2977FB728(v9);
    if (v4 == v5)
    {
      return 1;
    }

    else
    {
      v6 = v5;
      v7 = v4 + 1;
      do
      {
        result = sub_297863980(*(v7 - 1));
      }

      while (result && v7++ != v6);
    }
  }

  return result;
}

uint64_t sub_29786399C(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 30)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1] && a2[2] == v6[2] && *(a2 + 22) == *(v6 + 22))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

_BYTE *sub_297863A30(_BYTE *a1)
{
  *a1 &= ~1u;
  sub_29785F770(a1 + 4);
  sub_297863A70(a1 + 16);
  return a1;
}

uint64_t sub_297863AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = a7;
  *(a1 + 32) = 0;
  *(a1 + 38) = 0;
  sub_297858800(a1 + 48);
  *(a1 + 584) = sub_297803A7C(a1 + 48);
  sub_2978068F8(a1 + 592);
  *(a1 + 656) = 0;
  sub_297858804(a1, a2, a3);
  return a1;
}

uint64_t sub_297863B48(uint64_t a1)
{
  sub_297801F60(a1 + 592);
  sub_297801F60(a1 + 48);
  return a1;
}

uint64_t *sub_297863B98(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  if (sub_297863C08(a1, a2, &v7))
  {
    return v7;
  }

  sub_297863C90(v6);
  v4 = sub_297863C44(a1, a2, v6, v7);
  sub_297863C94(v6);
  return v4;
}

uint64_t sub_297863C08(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = 0;
  result = sub_297863C98(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t *sub_297863C44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_297863DC4(a1, a2, a4);
  *v6 = *a2;
  sub_297863EB0((v6 + 1), a3);
  return v6;
}

uint64_t sub_297863C98(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v6 = sub_297803A7C(a1);
  result = sub_29782AFAC(a1);
  if (result)
  {
    v8 = result;
    v9 = sub_29782F360();
    v10 = sub_29782F70C();
    v11 = v8 - 1;
    v12 = sub_2978307C8(a2) & (v8 - 1);
    v13 = (v6 + 48 * v12);
    if (sub_297807F98(*a2, *v13))
    {
      result = 1;
    }

    else
    {
      v16 = a3;
      v14 = 0;
      v15 = 1;
      while (!sub_297807F98(*v13, v9))
      {
        if (sub_297807F98(*v13, v10) && v14 == 0)
        {
          v14 = v13;
        }

        v12 = (v12 + v15) & v11;
        v13 = (v6 + 48 * v12);
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

LABEL_13:
      a3 = v16;
    }
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  return result;
}

uint64_t *sub_297863DC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_297863EB4(a1, (2 * v6));
    sub_297863C08(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_297863EB4(a1, v7);
    sub_297863C08(a1, a2, &v10);
  }

  sub_29782B4D8(a1);
  v8 = sub_29782F360();
  if (!sub_297807F98(*v10, v8))
  {
    sub_29782B514(a1);
  }

  return v10;
}

void sub_297863EB8(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_297863F48(a1, *v5);
  if (v4)
  {
    sub_297864060(a1, v4, &v4[6 * v3]);
    j__free(v4);
  }

  else
  {
    sub_297863F98(a1);
  }
}

BOOL sub_297863F48(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = a2;
  if (a2)
  {
    v4 = sub_2977FA198(48 * a2);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return a2 != 0;
}

uint64_t sub_297863F98(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  sub_29782AF58(a1, 0);
  v2 = sub_29782F360();
  v3 = sub_297803A7C(a1);
  result = sub_29786412C(a1);
  if (v3 != result)
  {
    v5 = 0;
    v6 = (result - v3 - 48) / 0x30uLL;
    v7 = vdupq_n_s64(v6);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_2978F4C70)));
      if (v8.i8[0])
      {
        *v3 = v2;
      }

      if (v8.i8[4])
      {
        v3[6] = v2;
      }

      v5 += 2;
      v3 += 12;
    }

    while (((v6 + 2) & 0xFFFFFFFFFFFFFFELL) != v5);
  }

  return result;
}

uint64_t sub_297864060(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_297863F98(a1);
  v6 = sub_29782F360();
  result = sub_29782F70C();
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
          sub_297863C08(a1, a2, &v9);
          *v9 = *a2;
          sub_297863EB0((v9 + 1), (a2 + 1));
          sub_29782B4D8(a1);
          result = sub_297863C94(a2 + 1);
        }
      }

      a2 += 6;
    }

    while (a2 != a3);
  }

  return result;
}

_DWORD *sub_297864184(_DWORD *a1)
{
  v2 = sub_297829180(a1);
  sub_297802744(v2 + 2);
  return a1;
}

_DWORD *sub_2978641B4(_DWORD *result, int a2)
{
  *result = a2;
  result[1] = a2;
  return result;
}

std::string *sub_2978641BC(std::string *a1, const std::string *a2, std::string::value_type a3)
{
  result = std::string::basic_string(a1, a2);
  result[1].__r_.__value_.__s.__data_[0] = a3;
  return result;
}

uint64_t sub_2978641E4(uint64_t a1)
{
  v2 = sub_29783CA18();
  sub_297802744(v2 + 88);
  return a1;
}

uint64_t sub_297864214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  sub_297817C28((a1 + 72));
  *(a1 + 232) = 0;
  sub_297860C2C(a1 + 208);
  sub_297860810(a1);
  return a1;
}

uint64_t sub_2978642EC(uint64_t *a1, uint64_t a2, int a3)
{
  result = nullsub_1(a2, a2);
  v6 = 2;
  if (!a3)
  {
    v6 = 0;
  }

  *a1 = v6 | result;
  return result;
}

uint64_t sub_29786432C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_297864360(v4, v2);
  return a1;
}

uint64_t sub_297864360(uint64_t a1, unsigned int a2)
{
  result = sub_297863F48(a1, a2);
  if (result)
  {

    return sub_297863F98(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_2978643AC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_2978643E0(v4, v2);
  return a1;
}

uint64_t sub_2978643E0(uint64_t a1, unsigned int a2)
{
  result = sub_29786442C(a1, a2);
  if (result)
  {

    return sub_29786447C(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

BOOL sub_29786442C(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = a2;
  if (a2)
  {
    v4 = sub_2977FA198(96 * a2);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return a2 != 0;
}

uint64_t sub_29786447C(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  sub_29782AF58(a1, 0);
  v2 = sub_29782F360();
  v3 = sub_297803A7C(a1);
  result = sub_297864544(a1);
  if (v3 != result)
  {
    v5 = 0;
    v6 = (result - v3 - 96) / 0x60uLL;
    v7 = vdupq_n_s64(v6);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v5), xmmword_2978F4C70)));
      if (v8.i8[0])
      {
        *v3 = v2;
      }

      if (v8.i8[4])
      {
        v3[12] = v2;
      }

      v5 += 2;
      v3 += 24;
    }

    while (((v6 + 2) & 0x7FFFFFFFFFFFFFELL) != v5);
  }

  return result;
}

void **sub_29786457C(void **a1)
{
  sub_2978645AC(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_2978645AC(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_29782F360();
    v4 = sub_29782F70C();
    v5 = sub_297803A7C(a1);
    result = sub_29786412C(a1);
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
            result = sub_2977FD134(v5 + 1);
          }
        }

        v5 += 6;
      }

      while (v5 != v6);
    }
  }

  return result;
}

void **sub_297864640(void **a1)
{
  sub_297864670(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_297864670(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_29782F360();
    v4 = sub_29782F70C();
    v5 = sub_297803A7C(a1);
    result = sub_297864544(a1);
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
            result = sub_2978602D0(v5 + 1);
          }
        }

        v5 += 12;
      }

      while (v5 != v6);
    }
  }

  return result;
}

void **sub_297864704(void **a1)
{
  sub_297864734(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_297864734(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_29782F360();
    v4 = sub_29782F70C();
    v5 = sub_297803A7C(a1);
    result = sub_29786412C(a1);
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
            result = sub_297863C94(v5 + 1);
          }
        }

        v5 += 6;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_2978647CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a4 & 1) == 0)
  {
    sub_297864800(a1);
  }

  return a1;
}

uint64_t sub_297864800(uint64_t **a1)
{
  v2 = sub_29782F39C();
  result = sub_29782F710();
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
      v4 = *a1 + 6;
      *a1 = v4;
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t *sub_29786487C(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = 0;
  if (sub_297863C08(a1, a2, &v7))
  {
    v4 = v7;
  }

  else
  {
    sub_297864964(v8);
    v4 = sub_297864918(a1, a2, v8, v7);
    sub_2977FD134(v8);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t *sub_297864918(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_297864968(a1, a2, a4);
  *v6 = *a2;
  sub_297864A54(v6 + 1, a3);
  return v6;
}

uint64_t *sub_297864968(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_297864A58(a1, (2 * v6));
    sub_297863C08(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_297864A58(a1, v7);
    sub_297863C08(a1, a2, &v10);
  }

  sub_29782B4D8(a1);
  v8 = sub_29782F360();
  if (!sub_297807F98(*v10, v8))
  {
    sub_29782B514(a1);
  }

  return v10;
}

void sub_297864A5C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_297863F48(a1, *v5);
  if (v4)
  {
    sub_297864AEC(a1, v4, &v4[6 * v3]);
    j__free(v4);
  }

  else
  {
    sub_297863F98(a1);
  }
}

uint64_t sub_297864AEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_297863F98(a1);
  v6 = sub_29782F360();
  result = sub_29782F70C();
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
          sub_297863C08(a1, a2, &v9);
          *v9 = *a2;
          sub_297864A54(v9 + 1, a2 + 1);
          sub_29782B4D8(a1);
          result = sub_2977FD134(a2 + 1);
        }
      }

      a2 += 6;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t sub_297864BB8(uint64_t a1, void *a2)
{
  sub_29780CC38(a1, 1u);
  if (!sub_297806904(a2))
  {
    sub_297864C00(a1, a2);
  }

  return a1;
}

uint64_t sub_297864C00(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    if (sub_2977FDA84(a2))
    {
      v4 = sub_29780406C(a2);
      v5 = sub_29780406C(a1);
      if (v5 >= v4)
      {
        v13 = sub_2977FB720(a1);
        if (v4)
        {
          v14 = sub_2977FB720(a2);
          v15 = sub_2977FB7B8(a2);
          v13 = sub_297819044(v14, v15, v13);
        }

        v16 = sub_2977FB7B8(a1);
        nullsub_1(v13, v16);
        v17 = a1;
        v18 = v13;
      }

      else
      {
        v6 = v5;
        if (sub_297864E08(a1) >= v4)
        {
          if (v6)
          {
            v19 = sub_2977FB720(a2);
            v20 = sub_2977FB720(a2) + 8 * v6;
            v21 = sub_2977FB720(a1);
            sub_297819044(v19, v20, v21);
          }
        }

        else
        {
          v7 = sub_2977FB720(a1);
          v8 = sub_2977FB7B8(a1);
          nullsub_1(v7, v8);
          v9 = sub_2977FB720(a1);
          sub_2977FD5DC(a1, v9);
          sub_297804114(a1, v4);
          v6 = 0;
        }

        v22 = (sub_2977FB720(a2) + 8 * v6);
        v23 = sub_2977FB7B8(a2);
        v24 = sub_2977FB720(a1);
        sub_2978198E8(v22, v23, (v24 + 8 * v6));
        v18 = sub_2977FB720(a1) + 8 * v4;
        v17 = a1;
      }

      sub_2977FD5DC(v17, v18);
      sub_2977FD800(a2);
    }

    else
    {
      v10 = sub_2977FB720(a1);
      v11 = sub_2977FB7B8(a1);
      nullsub_1(v10, v11);
      if (!sub_2977FDA84(a1))
      {
        v12 = sub_2977FB720(a1);
        free(v12);
      }

      *a1 = *a2;
      *(a1 + 8) = a2[1];
      *(a1 + 16) = a2[2];
      sub_297864DF8(a2);
    }
  }

  return a1;
}

void *sub_297864DF8(void *result)
{
  result[1] = result + 3;
  result[2] = result + 3;
  *result = result + 3;
  return result;
}

uint64_t sub_297864E48(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = 0;
  result = sub_297864E88(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_297864E88(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v6 = sub_297803A7C(a1);
  result = sub_29782AFAC(a1);
  if (result)
  {
    v8 = result;
    v9 = sub_29782F360();
    v10 = sub_29782F70C();
    v11 = v8 - 1;
    v12 = sub_2978307C8(a2) & (v8 - 1);
    v13 = (v6 + 96 * v12);
    if (sub_297807F98(*a2, *v13))
    {
      result = 1;
    }

    else
    {
      v16 = a3;
      v14 = 0;
      v15 = 1;
      while (!sub_297807F98(*v13, v9))
      {
        if (sub_297807F98(*v13, v10) && v14 == 0)
        {
          v14 = v13;
        }

        v12 = (v12 + v15) & v11;
        v13 = (v6 + 96 * v12);
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

LABEL_13:
      a3 = v16;
    }
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  return result;
}

uint64_t sub_297864FB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a4 & 1) == 0)
  {
    sub_297864FE8(a1);
  }

  return a1;
}

uint64_t sub_297864FE8(uint64_t **a1)
{
  v2 = sub_29782F39C();
  result = sub_29782F710();
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
      v4 = *a1 + 12;
      *a1 = v4;
    }

    while (v4 != v6);
  }

  return result;
}

void *sub_297865068(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_29786509C(a1 + 1, a3);
  return a1;
}

_OWORD *sub_2978650A0(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_2978650D0(a1 + 1, a2 + 1);
  return a1;
}

void *sub_2978650D4(void *a1, void *a2)
{
  sub_29784503C(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_29786511C(a1, a2);
  }

  return a1;
}

void *sub_29786511C(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (sub_2977FDA84(a2))
    {
      v4 = sub_29783E83C(a2);
      v5 = sub_29783E83C(a1);
      if (v5 >= v4)
      {
        v13 = sub_2977FB720(a1);
        if (v4)
        {
          v14 = sub_2977FB720(a2);
          v15 = sub_2977FB7B8(a2);
          v13 = sub_297865320(v14, v15, v13);
        }

        v16 = sub_2977FB7B8(a1);
        sub_29784DFAC(v13, v16);
        v17 = a1;
        v18 = v13;
      }

      else
      {
        v6 = v5;
        if (sub_29784DF10(a1) >= v4)
        {
          if (v6)
          {
            v19 = sub_2977FB720(a2);
            v20 = sub_2977FB720(a2) + 24 * v6;
            v21 = sub_2977FB720(a1);
            sub_297865320(v19, v20, v21);
          }
        }

        else
        {
          v7 = sub_2977FB720(a1);
          v8 = sub_2977FB7B8(a1);
          sub_29784DFAC(v7, v8);
          v9 = sub_2977FB720(a1);
          sub_2977FD5DC(a1, v9);
          sub_29784DE18(a1, v4);
          v6 = 0;
        }

        v22 = 3 * v6;
        v23 = sub_2977FB720(a2) + 24 * v6;
        v24 = sub_2977FB7B8(a2);
        v25 = sub_2977FB720(a1);
        sub_29784DF54(v23, v24, v25 + 8 * v22);
        v18 = sub_2977FB720(a1) + 24 * v4;
        v17 = a1;
      }

      sub_2977FD5DC(v17, v18);
      sub_29784EAB8(a2);
    }

    else
    {
      v10 = sub_2977FB720(a1);
      v11 = sub_2977FB7B8(a1);
      sub_29784DFAC(v10, v11);
      if (!sub_2977FDA84(a1))
      {
        v12 = sub_2977FB720(a1);
        free(v12);
      }

      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      sub_297864DF8(a2);
    }
  }

  return a1;
}

uint64_t sub_297865320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_2978046C4(a3, v5);
      v5 += 24;
      a3 += 24;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_297865378(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_2978653C4(a1, a2, a4);
  *v6 = *a2;
  sub_29786509C(v6 + 1, a3);
  return v6;
}

uint64_t *sub_2978653C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978654B0(a1, (2 * v6));
    sub_297864E48(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_2978654B0(a1, v7);
    sub_297864E48(a1, a2, &v10);
  }

  sub_29782B4D8(a1);
  v8 = sub_29782F360();
  if (!sub_297807F98(*v10, v8))
  {
    sub_29782B514(a1);
  }

  return v10;
}

void sub_2978654B4(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29786442C(a1, *v5);
  if (v4)
  {
    sub_297865544(a1, v4, &v4[12 * v3]);
    j__free(v4);
  }

  else
  {
    sub_29786447C(a1);
  }
}

uint64_t sub_297865544(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_29786447C(a1);
  v6 = sub_29782F360();
  result = sub_29782F70C();
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
          sub_297864E48(a1, a2, &v9);
          *v9 = *a2;
          sub_29786509C(v9 + 1, a2 + 1);
          sub_29782B4D8(a1);
          result = sub_2978602D0(a2 + 1);
        }
      }

      a2 += 12;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t sub_297865610(uint64_t *a1, uint64_t a2)
{
  result = nullsub_1(a2, a2);
  *a1 = result;
  return result;
}

uint64_t sub_29786563C(void *a1, unint64_t a2)
{
  v4 = sub_29783E404(a1);
  v5 = sub_29783CBB0(a1);
  v6 = sub_2977FB4FC(v4 + 2);
  if (v6 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_malloc(32 * v7, 0x10120405C87E9CEuLL);
  v9 = sub_2977FB720(a1);
  v10 = sub_2977FB7B8(a1);
  sub_297865730(v9, v10, v8);
  v11 = sub_2977FB720(a1);
  v12 = sub_2977FB7B8(a1);
  sub_29783D538(v11, v12);
  if (!sub_2977FDA84(a1))
  {
    v13 = sub_2977FB720(a1);
    free(v13);
  }

  sub_2977FD5DC(a1, v8 + 32 * v5);
  *a1 = v8;
  result = sub_2977FB720(a1);
  a1[2] = result + 32 * v7;
  return result;
}

uint64_t sub_297865730(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = sub_29786572C(a3, v5);
      v5 += 32;
      a3 += 32;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_297865788(uint64_t a1, uint64_t a2)
{
  result = sub_297808AB4(a1, a2);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t sub_2978657B4(uint64_t a1, uint64_t a2)
{
  sub_297801F5C(a2, a1);
  *(a1 + 24) = *(a2 + 16);
  return a1;
}

uint64_t sub_2978657F0(void *a1, unint64_t a2)
{
  v4 = sub_29780D318(a1);
  v5 = sub_29780CAF4(a1);
  v6 = sub_2977FB4FC(v4 + 2);
  if (v6 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_malloc(40 * v7, 0x1012040ABBA4411uLL);
  v9 = sub_2977FB720(a1);
  v10 = sub_2977FB7B8(a1);
  sub_297865904(v9, v10, v8);
  v11 = sub_2977FB720(a1);
  v12 = sub_2977FB7B8(a1);
  sub_29783D748(v11, v12);
  if (!sub_2977FDA84(a1))
  {
    v13 = sub_2977FB720(a1);
    free(v13);
  }

  sub_2977FD5DC(a1, v8 + 40 * v5);
  *a1 = v8;
  result = sub_2977FB720(a1);
  a1[2] = result + 40 * v7;
  return result;
}

uint64_t sub_297865904(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = sub_29786595C(a3, v5);
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_297865960(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_297808AB4(a1 + 8, a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_29786599C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      sub_297865A1C(v6, v4);
      v4 += 40;
      v6 += 40;
      v7 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v8, &v7, &v6);
  return v8;
}

uint64_t sub_297865A20(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::basic_string((a1 + 8), (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void *sub_297865A5C(void *a1, void *a2)
{
  sub_29783DDA8(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_297865AA4(a1, a2);
  }

  return a1;
}

void *sub_297865AA4(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = sub_29783CBB0(a2);
    v5 = sub_29783CBB0(a1);
    if (v5 >= v4)
    {
      if (v4)
      {
        sub_2977FB720(a2);
        sub_2977FB720(a2);
        sub_2977FB720(a1);
        v10 = sub_297865C38();
      }

      else
      {
        v10 = sub_2977FB720(a1);
      }

      v16 = v10;
      v17 = sub_2977FB7B8(a1);
      sub_29783D538(v16, v17);
      v15 = a1;
      v14 = v16;
    }

    else
    {
      v6 = v5;
      if (sub_29783E404(a1) >= v4)
      {
        if (v6)
        {
          sub_2977FB720(a2);
          sub_2977FB720(a2);
          sub_2977FB720(a1);
          sub_297865C38();
        }
      }

      else
      {
        v7 = sub_2977FB720(a1);
        v8 = sub_2977FB7B8(a1);
        sub_29783D538(v7, v8);
        v9 = sub_2977FB720(a1);
        sub_2977FD5DC(a1, v9);
        sub_29786563C(a1, v4);
        v6 = 0;
      }

      v11 = sub_2977FB720(a2) + 32 * v6;
      v12 = sub_2977FB7B8(a2);
      v13 = sub_2977FB720(a1);
      sub_297865C54(v11, v12, v13 + 32 * v6);
      v14 = sub_2977FB720(a1) + 32 * v4;
      v15 = a1;
    }

    sub_2977FD5DC(v15, v14);
  }

  return a1;
}

uint64_t sub_297865C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_297865CEC(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_297865CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = a2; i != a3; a4 += 32)
  {
    sub_297865D58(a4, i);
    i += 32;
  }

  v8 = a4;
  v9 = i;
  return sub_2977FD958(&v9, &v8);
}

uint64_t sub_297865D58(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_297865DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      sub_297865E28(v6, v4);
      v4 += 32;
      v6 += 32;
      v7 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v8, &v7, &v6);
  return v8;
}

std::string *sub_297865E2C(std::string *a1, uint64_t a2)
{
  result = std::string::basic_string(a1, a2);
  LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
  return result;
}

uint64_t sub_297865E58(void *a1, unint64_t a2)
{
  v4 = sub_297865F54(a1);
  v5 = sub_29783D420(a1);
  v6 = sub_2977FB4FC(v4 + 2);
  if (v6 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_malloc(104 * v7, 0x1080040D6D0946FuLL);
  v9 = sub_2977FB720(a1);
  v10 = sub_2977FB7B8(a1);
  sub_297865FA0(v9, v10, v8);
  v11 = sub_2977FB720(a1);
  v12 = sub_2977FB7B8(a1);
  sub_29783D678(v11, v12);
  if (!sub_2977FDA84(a1))
  {
    v13 = sub_2977FB720(a1);
    free(v13);
  }

  sub_2977FD5DC(a1, v8 + 104 * v5);
  *a1 = v8;
  result = sub_2977FB720(a1);
  a1[2] = result + 104 * v7;
  return result;
}

uint64_t sub_297865FA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = sub_297865FF8(a3, v5);
      v5 += 104;
      a3 += 104;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_297865FFC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_297866038(a1 + 8, a2 + 8);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void *sub_29786603C(void *a1, void *a2)
{
  sub_29783DDA8(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_297866084(a1, a2);
  }

  return a1;
}

void *sub_297866084(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (sub_2977FDA84(a2))
    {
      v4 = sub_29783CBB0(a2);
      v5 = sub_29783CBB0(a1);
      if (v5 >= v4)
      {
        v13 = sub_2977FB720(a1);
        if (v4)
        {
          v14 = sub_2977FB720(a2);
          v15 = sub_2977FB7B8(a2);
          v13 = sub_29786627C(v14, v15, v13);
        }

        v16 = sub_2977FB7B8(a1);
        sub_29783D538(v13, v16);
        v17 = a1;
        v18 = v13;
      }

      else
      {
        v6 = v5;
        if (sub_29783E404(a1) >= v4)
        {
          if (v6)
          {
            v19 = sub_2977FB720(a2);
            v20 = sub_2977FB720(a2) + 32 * v6;
            v21 = sub_2977FB720(a1);
            sub_29786627C(v19, v20, v21);
          }
        }

        else
        {
          v7 = sub_2977FB720(a1);
          v8 = sub_2977FB7B8(a1);
          sub_29783D538(v7, v8);
          v9 = sub_2977FB720(a1);
          sub_2977FD5DC(a1, v9);
          sub_29786563C(a1, v4);
          v6 = 0;
        }

        v22 = sub_2977FB720(a2) + 32 * v6;
        v23 = sub_2977FB7B8(a2);
        v24 = sub_2977FB720(a1);
        sub_297865730(v22, v23, v24 + 32 * v6);
        v18 = sub_2977FB720(a1) + 32 * v4;
        v17 = a1;
      }

      sub_2977FD5DC(v17, v18);
      sub_297860EC4(a2);
    }

    else
    {
      v10 = sub_2977FB720(a1);
      v11 = sub_2977FB7B8(a1);
      sub_29783D538(v10, v11);
      if (!sub_2977FDA84(a1))
      {
        v12 = sub_2977FB720(a1);
        free(v12);
      }

      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      sub_297864DF8(a2);
    }
  }

  return a1;
}

uint64_t sub_29786627C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_2978662D4(a3, v5);
      v5 += 32;
      a3 += 32;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_2978662D4(uint64_t a1, uint64_t a2)
{
  sub_2978046C4(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_297866308(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_2978633AC(a1 + 8, a2 + 8);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t sub_297866344(void *a1, unint64_t a2)
{
  v4 = sub_29786643C(a1);
  v5 = sub_29783D46C(a1);
  v6 = sub_2977FB4FC(v4 + 2);
  if (v6 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_malloc(88 * v7, 0x10800404030E7B3uLL);
  v9 = sub_2977FB720(a1);
  v10 = sub_2977FB7B8(a1);
  sub_297866488(v9, v10, v8);
  v11 = sub_2977FB720(a1);
  v12 = sub_2977FB7B8(a1);
  sub_29783D5D8(v11, v12);
  if (!sub_2977FDA84(a1))
  {
    v13 = sub_2977FB720(a1);
    free(v13);
  }

  sub_2977FD5DC(a1, v8 + 88 * v5);
  *a1 = v8;
  result = sub_2977FB720(a1);
  a1[2] = result + 88 * v7;
  return result;
}

uint64_t sub_297866488(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = sub_297866038(a3, v5);
      v5 += 88;
      a3 += 88;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_2978664E0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_297866588(a1, a2);
  }

  else
  {
    sub_297866520(a1, a2);
    result = v3 + 112;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_297866520(uint64_t a1, uint64_t a2)
{
  sub_29786662C(v7, a1, 1);
  v5 = nullsub_1(v8, v4);
  sub_297866630(a1, v5, a2);
  v8 += 112;
  return sub_297809E88(v7);
}

uint64_t sub_297866588(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29783D4B8(a1);
  v5 = sub_297866694(a1, v4 + 1);
  v6 = sub_29783D4B8(a1);
  sub_29786670C(v11, v5, v6, a1);
  v8 = nullsub_1(v12, v7);
  sub_297866630(a1, v8, a2);
  v12 += 112;
  sub_297866710(a1, v11);
  v9 = a1[1];
  sub_2978667F4(v11);
  return v9;
}

void *sub_297866634(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  v3 = *(a2 + 8);
  result[1] = v3;
  result[2] = v3 + 112 * a3;
  return result;
}

uint64_t sub_29786665C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978633AC(a1, a2);
  std::string::basic_string((v4 + 88), (a2 + 88));
  return a1;
}

unint64_t sub_297866694(void *a1, unint64_t a2)
{
  v9 = a2;
  v4 = sub_2978667F8();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  v6 = sub_29783DF94(a1);
  if (v6 < v5 >> 1)
  {
    v8 = 2 * v6;
    return *sub_29780338C(&v8, &v9);
  }

  return v5;
}

uint64_t sub_297866710(uint64_t *a1, uint64_t *a2)
{
  nullsub_1(a1, a2);
  v4 = a2[1] + *a1 - a1[1];
  v6 = nullsub_1(*a1, v5);
  v8 = nullsub_1(a1[1], v7);
  v10 = nullsub_1(v4, v9);
  sub_29786691C(a1, v6, v8, v10);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  v11 = sub_29783D4B8(a1);

  return nullsub_1(a1, v11);
}

uint64_t sub_2978667F8()
{
  v2 = sub_297866834();
  v1 = sub_297803390();
  return *sub_297802578(&v2, &v1);
}

uint64_t *sub_29786684C(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_2978668A0(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 112 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 112 * a2;
  return a1;
}

uint64_t sub_2978668C8(uint64_t a1, unint64_t a2)
{
  if (sub_297866834() < a2)
  {
    sub_29780339C();
  }

  return sub_297866910(a2);
}

uint64_t sub_29786691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  sub_29780D0AC(&v13, a1, &v15, &v16);
  sub_29780D074(&v13, &v14);
  if (a2 != a3)
  {
    v8 = v16;
    v9 = a2;
    do
    {
      v10 = nullsub_1(v8, v7);
      sub_2978669D4(a1, v10, v9);
      v9 += 112;
      v8 = v16 + 112;
      v16 += 112;
    }

    while (v9 != a3);
  }

  sub_29780CE64(&v14);
  sub_2978669D8(a1, a2, a3);
  return j_nullsub_1(&v14, v11);
}

uint64_t sub_2978669D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = nullsub_1(v4, a2);
      result = sub_29783E018(v5, v6);
      v4 += 112;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t sub_297866A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_297866038(a1, a2);
  sub_297808AB4(v4 + 88, a2 + 88);
  return a1;
}

uint64_t *sub_297866A7C(uint64_t *a1)
{
  sub_297866AD0(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_297866AD8(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_297866B04(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 112;
      v6 = nullsub_1(v2 - 112, a2);
      result = sub_29783E018(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *sub_297866B68(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = 0;
  if (sub_297864E48(a1, a2, &v7))
  {
    v4 = v7;
  }

  else
  {
    sub_2978602C8(v8);
    v4 = sub_297865378(a1, a2, v8, v7);
    sub_2978602D0(v8);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t sub_297866C04(uint64_t a1)
{
  sub_29781B720(a1 + 1992, a1 + 1984);

  return sub_297866C44(a1);
}

uint64_t sub_297866C44(uint64_t a1)
{
  result = sub_29785A000(a1);
  if ((result & 1) == 0)
  {
    result = sub_297866E00(a1);
    *(a1 + 832) = 3;
  }

  return result;
}

BOOL sub_297866C90(uint64_t a1)
{
  *(a1 + 1984) = *sub_297866CDC(a1 + 1992);
  sub_297866C84((a1 + 1992));

  return sub_29787B84C(a1);
}

uint64_t sub_297866CE8(void *a1, uint64_t a2)
{
  result = sub_29785A000(a1);
  if (result)
  {
    v5 = a1[248];
    if (v5 >= sub_29783E83C((a1 + 241)))
    {
      sub_29785A060(a1);
      sub_29787C4FC(a1, a2);
      if (sub_297866DE0(a1))
      {
        sub_297866C44(a1);
        result = sub_2978405F8((a1 + 241), a2);
        ++a1[248];
      }

      else
      {
        v8 = a1[248];
        if (v8 >= sub_29783E83C((a1 + 241)))
        {
          result = sub_2977FD800(a1 + 241);
          a1[248] = 0;
        }

        else
        {

          return sub_297866C44(a1);
        }
      }
    }

    else
    {
      v6 = a1[248];
      a1[248] = v6 + 1;
      result = sub_29783E88C((a1 + 241), v6);
      v7 = *(result + 15);
      *a2 = *result;
      *(a2 + 15) = v7;
    }
  }

  return result;
}

uint64_t sub_297866E00(uint64_t a1)
{
  sub_297866E68(v3, *(a1 + 832), *(a1 + 840), a1 + 792, a1 + 800, *(a1 + 808), a1 + 824, *(a1 + 816));
  sub_297866E64(a1 + 848, v3);
  result = sub_297866E6C(v3);
  *(a1 + 808) = 0;
  return result;
}

uint64_t sub_297866E70(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_297866F18(a1, a2);
  }

  else
  {
    sub_297866EB0(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_297866EB0(uint64_t a1, uint64_t a2)
{
  sub_297866FBC(v7, a1, 1);
  v5 = nullsub_1(v8, v4);
  sub_297866FC0(a1, v5, a2);
  v8 += 56;
  return sub_297809E88(v7);
}

uint64_t sub_297866F18(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2978670D0(a1);
  v5 = sub_297867058(a1, v4 + 1);
  v6 = sub_2978670D0(a1);
  sub_2978670F4(v11, v5, v6, a1);
  v8 = nullsub_1(v12, v7);
  sub_297866FC0(a1, v8, a2);
  v12 += 56;
  sub_2978670F8(a1, v11);
  v9 = a1[1];
  sub_2978671DC(v11);
  return v9;
}

void *sub_297866FC4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  v3 = *(a2 + 8);
  result[1] = v3;
  result[2] = v3 + 56 * a3;
  return result;
}

uint64_t sub_297866FEC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_2978055E4(a1 + 16, a2 + 16);
  sub_2978055E4(a1 + 24, a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_2978055E4(a1 + 40, a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

unint64_t sub_297867058(void *a1, unint64_t a2)
{
  v9 = a2;
  v4 = sub_2978671E0();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  v6 = sub_29786721C(a1);
  if (v6 < v5 >> 1)
  {
    v8 = 2 * v6;
    return *sub_29780338C(&v8, &v9);
  }

  return v5;
}

uint64_t sub_2978670F8(uint64_t *a1, uint64_t *a2)
{
  nullsub_1(a1, a2);
  v4 = a2[1] + *a1 - a1[1];
  v6 = nullsub_1(*a1, v5);
  v8 = nullsub_1(a1[1], v7);
  v10 = nullsub_1(v4, v9);
  sub_2978672C0(a1, v6, v8, v10);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  v11 = sub_2978670D0(a1);

  return nullsub_1(a1, v11);
}

uint64_t sub_2978671E0()
{
  v2 = sub_29782FDB8();
  v1 = sub_297803390();
  return *sub_297802578(&v2, &v1);
}

uint64_t *sub_297867244(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_297867298(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 56 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 56 * a2;
  return a1;
}

uint64_t sub_2978672C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  sub_29780D0AC(&v13, a1, &v15, &v16);
  sub_29780D074(&v13, &v14);
  if (a2 != a3)
  {
    v8 = v16;
    v9 = a2;
    do
    {
      v10 = nullsub_1(v8, v7);
      sub_297866FC0(a1, v10, v9);
      v9 += 56;
      v8 = v16 + 56;
      v16 += 56;
    }

    while (v9 != a3);
  }

  sub_29780CE64(&v14);
  sub_297867378(a1, a2, a3);
  return j_nullsub_1(&v14, v11);
}

uint64_t sub_297867378(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = nullsub_1(v4, a2);
      result = sub_2978673D4(v5, v6);
      v4 += 56;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t *sub_2978673E0(uint64_t *a1)
{
  sub_297867434(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29786743C(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_297867468(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 56;
      v6 = nullsub_1(v2 - 56, a2);
      result = sub_2978673D4(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_2978674CC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_2978055E4(a1 + 16, a4);
  sub_2978055E4(a1 + 24, a5);
  *(a1 + 32) = a6;
  sub_2978055E4(a1 + 40, a7);
  *(a1 + 48) = a8;
  return a1;
}

uint64_t sub_297867544(uint64_t a1)
{
  sub_297867580(a1 + 40);
  sub_297867584(a1 + 24);
  sub_297867584(a1 + 16);
  return a1;
}

void sub_2978675B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978675CC(a1, v3);
  }
}

void sub_2978675CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_297867600(a2);

    j__free(v2);
  }
}

uint64_t *sub_297867658(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_297867670(result, v3);
  }

  return result;
}

uint64_t sub_297867670(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t sub_2978676A0(void *a1, uint64_t a2)
{
  v4 = sub_29780BD00(a1);
  sub_29780C71C(a1, a2);

  return nullsub_1(a1, v4);
}

void sub_297867700()
{
  v0 = sub_2978676FC();

  j__free(v0);
}

uint64_t sub_297867728(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  (*(**(a1 + 8) + 16))(*(a1 + 8), a2, a3, a4, a5);
  v6 = *(**(a1 + 16) + 16);

  return v6();
}

uint64_t sub_2978677DC(uint64_t a1)
{
  (*(**(a1 + 8) + 24))(*(a1 + 8));
  v2 = *(**(a1 + 16) + 24);

  return v2();
}

uint64_t sub_297867878(uint64_t a1)
{
  if ((*(**(a1 + 8) + 32))(*(a1 + 8)))
  {
    return 1;
  }

  v3 = *(**(a1 + 16) + 32);

  return v3();
}

uint64_t sub_29786792C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = a2;
  (*(**(a1 + 8) + 40))(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  v17 = *(a1 + 16);
  v18 = *(*v17 + 40);

  return v18(v17, v15, a3, a4, a5, a6);
}

uint64_t sub_297867A3C(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 48);

  return v3();
}

uint64_t sub_297867AEC(uint64_t a1)
{
  (*(**(a1 + 8) + 56))(*(a1 + 8));
  v2 = *(**(a1 + 16) + 56);

  return v2();
}

uint64_t sub_297867B68(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 64))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 64);

  return v3();
}

uint64_t sub_297867C00(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 80))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 80);

  return v3();
}

uint64_t sub_297867CA0(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 88))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 88);

  return v3();
}

uint64_t sub_297867D40(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 104))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 104);

  return v3();
}

uint64_t sub_297867E08(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 112))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 112);

  return v3();
}

uint64_t sub_297867EA8(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 120))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 120);

  return v3();
}

uint64_t sub_297867F48(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 128))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 128);

  return v3();
}

uint64_t sub_297868010(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  (*(**(a1 + 8) + 136))(*(a1 + 8), a2, a3, a4);
  v5 = *(**(a1 + 16) + 136);

  return v5();
}

uint64_t sub_2978680C4(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 144))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 144);

  return v3();
}

uint64_t sub_29786817C(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 152))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 152);

  return v3();
}

uint64_t sub_297868214(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 160))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 160);

  return v3();
}

uint64_t sub_29786829C(uint64_t a1)
{
  (*(**(a1 + 8) + 168))(*(a1 + 8));
  v2 = *(**(a1 + 16) + 168);

  return v2();
}

uint64_t sub_297868348(uint64_t a1)
{
  (*(**(a1 + 8) + 176))(*(a1 + 8));
  v2 = *(**(a1 + 16) + 176);

  return v2();
}

uint64_t sub_2978683DC(uint64_t a1)
{
  (*(**(a1 + 8) + 184))(*(a1 + 8));
  v2 = *(**(a1 + 16) + 184);

  return v2();
}

uint64_t sub_297868470(uint64_t a1)
{
  (*(**(a1 + 8) + 192))(*(a1 + 8));
  v2 = *(**(a1 + 16) + 192);

  return v2();
}

uint64_t sub_29786850C(uint64_t a1)
{
  (*(**(a1 + 8) + 200))(*(a1 + 8));
  v2 = *(**(a1 + 16) + 200);

  return v2();
}

uint64_t sub_297868590(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 208))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 208);

  return v3();
}

uint64_t sub_297868630(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  (*(**(a1 + 8) + 216))(*(a1 + 8), a2, a3, a4, a5);
  v6 = *(**(a1 + 16) + 216);

  return v6();
}

uint64_t sub_2978686E4(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 224))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 224);

  return v3();
}

uint64_t sub_297868784(uint64_t a1, unsigned int a2)
{
  (*(**(a1 + 8) + 232))(*(a1 + 8), a2);
  v3 = *(**(a1 + 16) + 232);

  return v3();
}

uint64_t sub_297868824(uint64_t a1, unsigned int a2, unsigned int a3)
{
  (*(**(a1 + 8) + 240))(*(a1 + 8), a2, a3);
  v4 = *(**(a1 + 16) + 240);

  return v4();
}

uint64_t sub_2978688C0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  (*(**(a1 + 8) + 248))(*(a1 + 8), a2, a3);
  v4 = *(**(a1 + 16) + 248);

  return v4();
}

uint64_t sub_29786895C(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1E55410;
  v3 = a1[2];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return nullsub_1(a1, a2);
}

BOOL sub_297868A24(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  if (sub_297868B90(&v25))
  {
    return 0;
  }

  v4 = sub_29780A294((a1 + 64), v3);
  v6 = sub_297809B0C(a1 + 64, v5);
  v21[0] = sub_2977FB5F0(&v25);
  sub_2977FDEF4(&v23, *(a1 + 8));
  v24 = sub_297868BAC(v4, v6, v21, v23);
  v23 = sub_297809B0C(a1 + 64, v7);
  if (sub_297808558(&v24, &v23))
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v9 = sub_297847BE0(&v25);
  v11 = sub_2978297B4(&v24, v10);
  v12 = sub_2977FB5F0(v11);
  if (sub_297843148(v8, v9, v12))
  {
    return 0;
  }

  v15 = v24;
  v16 = sub_297809B0C(a1 + 64, v13);
  v22 = sub_297847BE0(&v25);
  sub_2977FDEF4(v21, *(a1 + 8));
  v23 = sub_297868BDC(v15, v16, &v22, *v21);
  sub_297829180(&v22);
  *v21 = sub_297809B0C(a1 + 64, v17);
  if (sub_29780852C(&v23, v21))
  {
    v19 = sub_2978297B4(&v23, v18);
    v22 = sub_297847BE0(v19);
  }

  v20 = sub_2978297B4(&v24, v18);
  v21[0] = sub_297847BE0(v20);
  return sub_297853F10(v21, &v22);
}

uint64_t sub_297868BAC(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v6 = a4;
  v5 = 0;
  return sub_297868CE8(a1, a2, a3, &v6, &v5);
}

uint64_t sub_297868C08(uint64_t a1, int a2)
{
  v15 = a2;
  if (sub_297829730(&v15) || sub_297806904((a1 + 64)))
  {
    sub_297829180(&v16);
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = sub_297866CDC(a1 + 64);
    v6 = sub_2977FB5F0(v5);
    if (sub_297843148(v4, v6, v15))
    {
      return *sub_2978192CC(a1 + 16);
    }

    else
    {
      v8 = sub_29780A294((a1 + 64), v7);
      v10 = sub_297809B0C(a1 + 64, v9);
      sub_2977FDEF4(&v13, *(a1 + 8));
      v14 = sub_297868BAC(v8, v10, &v15, v13);
      v12 = sub_2978297B4(&v14, v11);
      return sub_297847BE0(v12);
    }
  }

  return v16;
}

uint64_t sub_297868CE8(uint64_t a1, uint64_t a2, int *a3, _DWORD **a4, uint64_t a5)
{
  v9 = sub_297868D44();

  return sub_297868D48(a1, a3, v9, a4, a5);
}

uint64_t sub_297868D48(uint64_t a1, int *a2, unint64_t a3, _DWORD **a4, uint64_t a5)
{
  if (a3)
  {
    v8 = a3;
    do
    {
      v10 = sub_297813258(v8);
      v14 = a1;
      sub_297868E60(&v14, v10);
      v11 = sub_2977FB720(&v14);
      v12 = sub_297813268(a5, v11);
      if (sub_297868E64(a4, v12, a2))
      {
        a1 = *sub_29781B504(&v14);
        v10 = v8 + ~v10;
      }

      v8 = v10;
    }

    while (v10);
  }

  return a1;
}

uint64_t sub_297868DFC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return sub_297868E28(&v3, &v4);
}

void *sub_297868E6C(void *a1, uint64_t a2)
{
  v3 = nullsub_1(a2, a2);

  return sub_297868EAC(a1, v3);
}

uint64_t sub_297868EB0(_DWORD **a1, unsigned int *a2, int a3)
{
  v4 = *a1;
  v5 = sub_2977FB5F0(a2);

  return sub_297843148(v4, v5, a3);
}

uint64_t sub_297868EF8(uint64_t a1, uint64_t a2, int *a3, _DWORD **a4, uint64_t a5)
{
  v8 = a1;
  v17 = a1;
  v9 = sub_297868D44();
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = sub_297813258(v10);
      sub_297868FB8(&v17, v11);
      v16 = v12;
      v13 = sub_2977FB720(&v16);
      v14 = sub_297813268(a5, v13);
      if ((sub_297868FC0(a4, a3, v14) & 1) == 0)
      {
        v17 = *sub_29781B504(&v16);
        v11 = v10 + ~v11;
      }

      v10 = v11;
    }

    while (v11);
    return v17;
  }

  return v8;
}

uint64_t sub_297868FF4(_DWORD **a1, int a2, unsigned int *a3)
{
  v4 = *a1;
  v5 = sub_2977FB5F0(a3);

  return sub_297843148(v4, a2, v5);
}

uint64_t sub_29786903C(uint64_t a1)
{
  result = sub_297869074(a1 + 104, 1);
  *(result + 248) = *(a1 + 2016);
  *(a1 + 2016) = result;
  return result;
}

uint64_t sub_297869080(uint64_t a1, int a2)
{
  v3 = sub_29786903C(a1);

  return sub_29785B044(v3, a2);
}

uint64_t sub_2978690B8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v16 = a5;
  v17 = a6;
  v10 = sub_2977FB7B8(&v16);
  if (a4)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = 4 * v11;
  v13 = sub_29781C25C();
  v14 = sub_297803E1C((a1 + 104), v12 + 24, v13);
  return sub_29786913C(v14, a2, a3, a4, v16, v17);
}

uint64_t sub_297869144(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v8 = sub_2977FB7B8(&v14);
  if (a3)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = 4 * v9;
  v11 = sub_29781C25C();
  v12 = sub_297803E1C((a1 + 104), v10 + 16, v11);
  return sub_2978691B8(v12, a2, a3, v14, v15);
}

uint64_t sub_2978691C0(uint64_t a1, int a2, int a3)
{
  v5 = sub_297869208(0x10uLL, (a1 + 104));

  return sub_29786925C(v5, a2, a3);
}

uint64_t sub_297869208(unint64_t a1, uint64_t *a2)
{
  v6 = 8;
  v7 = sub_2977FB4FC(a1);
  v4 = sub_297802578(&v7, &v6);
  return sub_297803E1C(a2, a1, *v4);
}

BOOL sub_297869264(uint64_t a1)
{
  sub_29784FB00(v3);
  do
  {
    sub_2978692B0(a1, v3);
    result = sub_297850F64(v3, 2);
  }

  while (result);
  return result;
}

BOOL sub_2978692B0(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 436);
  *(a1 + 436) = v3 | 0x20;
  result = sub_29787C4FC(a1, a2);
  *(a1 + 436) = *(a1 + 436) & 0xFFDF | v3 & 0x20;
  return result;
}

uint64_t sub_2978692F4(uint64_t a1, unsigned int *a2, int a3)
{
  if (!sub_29784FF04(a2, 2))
  {
    v11 = sub_29784F384(a2);
    if (v11)
    {
      if (!a3)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = 0;
      sub_297853628(a1, a2, &v20, &v19);
      if (v20 == 1 || (sub_2978044E8(v18, &v19), v11 = sub_297869520(a1, v18[0], v18[1]), (sub_29783C23C(v11) & 1) == 0))
      {
        sub_29785A4E4(a1, a2, 741, v18);
        v9 = sub_2978100EC();
        sub_29782963C(v18);
        std::string::~string(&v19);
        return v9;
      }

      if ((*sub_29783CFFC(a1) & 8) != 0)
      {
        v12 = 807;
      }

      else
      {
        v12 = 746;
      }

      sub_29785A4E4(a1, a2, v12, v18);
      v13 = sub_297869558(v18, v11);
      v14 = sub_2978503FC(a2);
      sub_297869528(v13, v14);
      sub_29782963C(v18);
      sub_2977FD5DC(a2, v11);
      std::string::~string(&v19);
      if (!a3)
      {
        goto LABEL_21;
      }
    }

    if (sub_29783B9F8(v11) == 7)
    {
      v6 = a1;
      v7 = a2;
      v8 = 627;
      goto LABEL_3;
    }

    if (a3 == 2)
    {
      if (sub_29783C230(v11))
      {
        v15 = sub_297859DFC(a1, v11);
        if (sub_297869584(v15))
        {
          sub_29785A4E4(a1, a2, 809, v17);
          sub_29782963C(v17);
        }
      }
    }

LABEL_21:
    if (!sub_29783B9A8(*(a1 + 24)))
    {
      return 0;
    }

    v19.__r_.__value_.__r.__words[0] = sub_297828314(v11);
    v19.__r_.__value_.__l.__size_ = v16;
    if (sub_2977FB7B8(&v19) < 0x401)
    {
      return 0;
    }

    v6 = a1;
    v7 = a2;
    v8 = 656;
    goto LABEL_3;
  }

  v6 = a1;
  v7 = a2;
  v8 = 743;
LABEL_3:
  sub_29785A4E4(v6, v7, v8, &v19);
  v9 = sub_2978100EC();
  sub_29782963C(&v19);
  return v9;
}

uint64_t sub_297869590(uint64_t a1, unsigned int *a2, int a3)
{
  sub_2978692B0(a1, a2);
  if (sub_29784FF04(a2, 3))
  {
    v6 = *(a1 + 680);
    if (v6)
    {
      (*(*v6 + 32))(v6, a3 == 1);
    }

    sub_297869670(a1);
    sub_2978692B0(a1, a2);
  }

  result = sub_2978692F4(a1, a2, a3);
  if (result)
  {
    result = sub_297850F64(a2, 2);
    if (result)
    {
      sub_297853640(a2, 2);

      return sub_297869264(a1);
    }
  }

  return result;
}

uint64_t sub_297869670(uint64_t a1)
{
  *(a1 + 780) = 1;
  v1 = sub_2977FD5B0(a1);

  return sub_29786F060(v1, 1);
}

uint64_t sub_2978696A4(uint64_t a1, uint64_t a2, int a3)
{
  sub_29784FB00(v12);
  if (a3)
  {
    sub_29787C4FC(a1, v12);
  }

  else
  {
    sub_2978692B0(a1, v12);
  }

  while (sub_29784FF04(v12, 5))
  {
    sub_2978692B0(a1, v12);
  }

  result = sub_297850F64(v12, 2);
  if (result)
  {
    sub_297856410(v11);
    if ((**(a1 + 24) & 0x800041) != 0 && !sub_29780B1BC((a1 + 824)))
    {
      v7 = sub_2977FB5F0(v12);
      sub_2977FB7B4(v9, "//");
      sub_297852794(v7, v9[0], v9[1], 0, v10);
      sub_2978697E8(v11, v10);
      sub_29782AC18(v10);
    }

    sub_29785A4E4(a1, v12, 799, v10);
    v8 = sub_29783F028(v10, a2);
    sub_297852754(v8, v11);
    sub_29782963C(v10);
    sub_297869264(a1);
    return sub_29782AC18(v11);
  }

  return result;
}

uint64_t sub_2978697E8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = v4;
  sub_2978046C4(a1 + 24, a2 + 24);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_297869830(uint64_t a1, int a2, char a3, char a4, int a5)
{
  v5 = a2;
  v55 = *MEMORY[0x29EDCA608];
  v53 = a5;
  ++*(a1 + 1388);
  sub_297869FFC(*(a1 + 808), a2, 0, a3, a4);
  if (sub_29780B1BC((a1 + 800)))
  {
    v7 = *MEMORY[0x29EDCA608];

    return sub_29786A068(a1);
  }

  *(*(a1 + 808) + 26) = 1;
  sub_29784FB00(v52);
  while (1)
  {
    while (1)
    {
      v9 = sub_2977FB720(a1 + 792);
      sub_297853C20(v9, v52);
      if (!sub_29784FF04(v52, 3))
      {
        break;
      }

      v10 = *(a1 + 680);
      if (v10)
      {
        (*(*v10 + 24))(v10);
      }

      sub_297869670(a1);
    }

    if (sub_29784FF04(v52, 1))
    {
      break;
    }

    if (!sub_297850F64(v52, 65) && sub_297850404(v52))
    {
      *(*(a1 + 808) + 24) = 1;
      if (sub_29780B1BC((a1 + 792)))
      {
        v11 = sub_2977FB720(a1 + 792);
        sub_29784F598(v11, 0);
      }

      sub_2978692B0(a1, v52);
      if (sub_297850F64(v52, 7))
      {
        goto LABEL_16;
      }

      *&v50 = sub_29784FF14(v52);
      *(&v50 + 1) = v13;
      v14 = sub_297803A20(&v50, 0);
      if ((v14 - 97) <= 0x19u && v14 != 101 && v14 != 105)
      {
        goto LABEL_16;
      }

      sub_297804560(&v49);
      if ((sub_2977FB568(v52) & 1) == 0 && sub_2977FB7B8(&v50) <= 0x13)
      {
        v49 = v50;
        goto LABEL_26;
      }

      sub_297853628(a1, v52, 0, &v48);
      v15 = sub_2978032A4(&v48);
      v16 = v15;
      if (v15 >= 0x14)
      {
        *(*(a1 + 808) + 24) = 0;
        if (sub_29780B1BC((a1 + 792)))
        {
          v23 = sub_2977FB720(a1 + 792);
          sub_29784F524(v23);
        }

        std::string::~string(&v48);
      }

      else
      {
        v17 = sub_29780327C(&v48, 0);
        memcpy(__dst, v17, v16 & 0x1F);
        sub_2977FB7C0(&v47, __dst, v16 & 0x1F);
        v49 = v47;
        std::string::~string(&v48);
LABEL_26:
        sub_2977FB7B4(&v48, "if");
        if (sub_297807C54(&v49, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_))
        {
          v48.__r_.__value_.__r.__words[0] = sub_297805EA4(&v49, 2uLL, 0xFFFFFFFFFFFFFFFFLL);
          v48.__r_.__value_.__l.__size_ = v18;
          if (sub_297806914(&v48) || (v19 = *&v48.__r_.__value_.__l.__data_, sub_2977FB7B4(&v47, "def"), sub_297804D28(v19, *(&v19 + 1), v47, *(&v47 + 1))) || (v20 = *&v48.__r_.__value_.__l.__data_, sub_2977FB7B4(&v47, "ndef"), sub_297804D28(v20, *(&v20 + 1), v47, *(&v47 + 1))))
          {
            sub_297869264(a1);
            v21 = *(a1 + 808);
            v22 = sub_2977FB5F0(v52);
            sub_297869FFC(v21, v22, 1, 0, 0);
          }
        }

        else if (sub_297803A20(&v49, 0) == 101)
        {
          v24 = sub_297805EA4(&v49, 1uLL, 0xFFFFFFFFFFFFFFFFLL);
          v26 = v25;
          sub_2977FB7B4(&v48, "ndif");
          if (sub_297804D28(v24, v26, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_))
          {
            sub_29784FB00(&v48);
            v48.__r_.__value_.__s.__data_[4] = 1;
            sub_29786A1C0(*(a1 + 808), &v48);
            if ((v48.__r_.__value_.__s.__data_[4] & 1) == 0)
            {
              *(*(a1 + 808) + 26) = 0;
              result = sub_2978696A4(a1, "endif", 0);
              *(*(a1 + 808) + 26) = 1;
              v37 = *(a1 + 872);
              if (v37)
              {
                v38 = sub_2977FB5F0(v52);
                result = (*(*v37 + 248))(v37, v38, LODWORD(v48.__r_.__value_.__l.__data_));
              }

              goto LABEL_61;
            }

LABEL_49:
            sub_297869264(a1);
            goto LABEL_16;
          }

          sub_2977FB7B4(&v48, "lse");
          if (sub_297804D28(v24, v26, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_))
          {
            v27 = sub_29786A21C(*(a1 + 808));
            if (v27[6] == 1)
            {
              sub_29785A4E4(a1, v52, 837, v46);
              sub_29782963C(v46);
            }

            v27[6] = 1;
            if ((v27[4] & 1) == 0 && (v27[5] & 1) == 0)
            {
              v27[5] = 1;
              *(*(a1 + 808) + 26) = 0;
              result = sub_2978696A4(a1, "else", 0);
              *(*(a1 + 808) + 26) = 1;
              v39 = *(a1 + 872);
              if (v39)
              {
                v40 = sub_2977FB5F0(v52);
                result = (*(*v39 + 240))(v39, v40, *v27);
              }

              goto LABEL_61;
            }

            goto LABEL_49;
          }

          sub_2977FB7B4(&v48, "lif");
          if (sub_297804D28(v24, v26, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_))
          {
            v28 = sub_29786A21C(*(a1 + 808));
            if (v28[6] == 1)
            {
              sub_29785A4E4(a1, v52, 835, v45);
              sub_29782963C(v45);
            }

            if ((v28[4] & 1) != 0 || v28[5] == 1)
            {
              goto LABEL_49;
            }

            v29 = (*(**(a1 + 808) + 32))(*(a1 + 808));
            *(*(a1 + 808) + 26) = 0;
            v48.__r_.__value_.__r.__words[0] = 0;
            result = sub_29786FBC4(a1, &v48);
            *(*(a1 + 808) + 26) = 1;
            if (*(a1 + 872))
            {
              v44 = result;
              v41 = v29;
              v42 = (*(**(a1 + 808) + 32))(*(a1 + 808));
              v30 = *(a1 + 872);
              v43 = sub_2977FB5F0(v52);
              sub_297853514(&v47, v41, v42);
              if (v44)
              {
                v31 = 2;
              }

              else
              {
                v31 = 1;
              }

              (*(*v30 + 216))(v30, v43, v47, v31, *v28);
              result = v44;
            }

            if (result)
            {
              v28[5] = 1;
              goto LABEL_61;
            }
          }
        }

LABEL_16:
        *(*(a1 + 808) + 24) = 0;
        if (sub_29780B1BC((a1 + 792)))
        {
          v12 = sub_2977FB720(a1 + 792);
          sub_29784F524(v12);
        }
      }
    }
  }

  while (1)
  {
    result = sub_297806904((*(a1 + 808) + 64));
    if (result)
    {
      break;
    }

    v32 = sub_2977FB720(a1 + 792);
    LODWORD(v48.__r_.__value_.__l.__data_) = sub_29786A1B8(v32);
    if (sub_297853F10(&v48, (a1 + 704)))
    {
      v33 = sub_29783D2C4(*(a1 + 808) + 64);
      sub_297850EEC(a1, *v33, 751, v51);
      sub_29782963C(v51);
    }

    sub_29783D2E0(*(a1 + 808) + 64);
  }

LABEL_61:
  *(*(a1 + 808) + 26) = 0;
  if (*(a1 + 872))
  {
    if (sub_297805430(&v53))
    {
      v5 = v53;
    }

    v34 = *(a1 + 872);
    v35 = sub_2977FB5F0(v52);
    sub_297853514(&v48, v5, v35);
    result = (*(*v34 + 200))(v34, v48.__r_.__value_.__r.__words[0]);
  }

  v36 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297869FFC(uint64_t a1, int a2, char a3, char a4, char a5)
{
  sub_29784FB00(&v11);
  LODWORD(v11) = a2;
  BYTE4(v11) = a3;
  BYTE5(v11) = a4;
  BYTE6(v11) = a5;
  return sub_2978040A4(a1 + 64, &v11);
}

uint64_t sub_29786A068(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 800);
  if (!sub_2978798C0(v2, v3))
  {
    do
    {
      sub_29784FB00(v16);
      sub_2978692B0(a1, v16);
      v4 = sub_29784F384(v16);
      v5 = sub_29783B9F8(v4);
      v6 = sub_2977FB720(a1 + 800);
      v7 = sub_29786A21C(v6);
      v8 = v7;
      if (v5 == 5)
      {
        *(v7 + 6) = 1;
        if ((*(v7 + 5) & 1) == 0)
        {
          *(v7 + 5) = 1;
          *(sub_2977FB720(a1 + 800) + 24) = 1;
          sub_297869264(a1);
          result = sub_2977FB720(a1 + 800);
          *(result + 24) = 0;
          return result;
        }
      }

      else
      {
        if (*(v7 + 6) == 1)
        {
          sub_29785A4E4(a1, v16, 835, v15);
          sub_29782963C(v15);
        }

        if ((*(v8 + 5) & 1) == 0)
        {
          v14 = 0;
          *(sub_2977FB720(a1 + 800) + 24) = 1;
          v9 = sub_29786FBC4(a1, &v14);
          result = sub_2977FB720(a1 + 800);
          *(result + 24) = 0;
          if (v9)
          {
            *(v8 + 5) = 1;
            return result;
          }
        }
      }

      v10 = sub_2977FB720(a1 + 800);
    }

    while (!sub_2978798C0(v10, v11));
  }

  sub_29784FB00(v16);
  v12 = sub_2977FB720(a1 + 800);
  return sub_29786A1C0(v12, v16);
}

BOOL sub_29786A1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_297806904((a1 + 64));
  if (!v4)
  {
    v5 = sub_29786F068(a1 + 64);
    *a2 = v5;
    *(a2 + 6) = BYTE6(v5);
    *(a2 + 4) = WORD2(v5);
  }

  return v4;
}

uint64_t sub_29786A224(uint64_t a1, unsigned int a2)
{
  v4 = sub_29784AE8C(*(a1 + 64));
  if (sub_297842414(*(a1 + 48), a2))
  {
    result = sub_29787BCDC(a1);
    if (!result)
    {
      return *(sub_29784AE8C(*(a1 + 64)) + 296);
    }
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = sub_29782CF94(v6, a2);
    v8 = sub_29783E548(v6, v7);
    v9 = sub_2978606D8(*(a1 + 48), v8);
    if (v9)
    {
      v11 = sub_29785C484(v4, v9, 0);
      return sub_29784DD58(&v11, v10);
    }

    else
    {

      return sub_29787BCDC(a1);
    }
  }

  return result;
}

uint64_t sub_29786A308(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t *a7, const void **a8, const void **a9, const void **a10, char a11)
{
  v18 = a11;
  v67 = *MEMORY[0x29EDCA608];
  sub_29786A6AC(v66);
  if (a6)
  {
    goto LABEL_16;
  }

  v58 = a2;
  v59 = a4;
  v19 = a8;
  v20 = sub_297872220(a1);
  v21 = sub_29782AFB0(v20);
  v22 = sub_2978606D8(*(a1 + 48), v21);
  v65 = v22;
  if (v22)
  {
    v23 = sub_29783CFFC(v22);
  }

  else
  {
    v24 = *(a1 + 48);
    v25 = sub_29786A6B0(v24);
    v65 = sub_2978606D8(v24, v25);
    if (!v65)
    {
      goto LABEL_7;
    }

    v26 = *(a1 + 40);
    sub_2977FB7B4(&v64, ".");
    v23 = sub_29782DFB8(v26, v64, *(&v64 + 1), 1);
  }

  v63 = v23;
  *&v64 = sub_2977FD958(&v65, &v63);
  *(&v64 + 1) = v27;
  sub_297803F88(v66, &v64);
LABEL_7:
  if ((**(a1 + 24) & 4) != 0 && (a5 & 1) == 0)
  {
    v28 = sub_2978670D0((a1 + 848));
    v29 = v28;
    if (v28)
    {
      v30 = v28 - 1;
      do
      {
        v31 = sub_29786A6B8((a1 + 848), v30);
        if (sub_29786A6C8(v31))
        {
          v32 = a7;
          v33 = *(a1 + 48);
          v34 = sub_29782AFB0(*(v31 + 32));
          v35 = v33;
          a7 = v32;
          v36 = sub_2978606D8(v35, v34);
          v65 = v36;
          if (v36)
          {
            v63 = sub_29783CFFC(v36);
            *&v64 = sub_2977FD958(&v65, &v63);
            *(&v64 + 1) = v37;
            sub_297803F88(v66, &v64);
          }
        }

        --v30;
        --v29;
      }

      while (v29);
    }
  }

  a4 = v59;
  a8 = v19;
  v18 = a11;
  a6 = 0;
  a2 = v58;
LABEL_16:
  v61 = a7;
  *a7 = *(a1 + 816);
  v38 = *(a1 + 64);
  sub_29781601C(&v64, v66);
  v60 = a3;
  v40 = sub_29784C20C(v38, a3, a4, a2, a5, a6, v61, v39, v64, *(&v64 + 1), a8, a9, a10, v18);
  v41 = a4;
  if (v40 || sub_29786A704(a1) && (v45 = *(a1 + 48), v46 = sub_29782AFB0(*(a1 + 808)), (v47 = sub_2978606D8(v45, v46)) != 0) && (v40 = sub_29784CE54(*(a1 + 64), a3, a4, v47, a8, a9, a10)) != 0)
  {
    v42 = v40;
    if (!a10 || (*(*(a1 + 24) + 2) & 0x40) != 0)
    {
      goto LABEL_30;
    }

LABEL_19:
    v43 = sub_29784AE8C(*(a1 + 64));
    v44 = sub_29786A224(a1, a2);
    sub_29785BFFC(v43, v44, a2, v60, v41, v42);
    goto LABEL_30;
  }

  v48 = sub_2978670D0((a1 + 848));
  v49 = v48;
  if (!v48)
  {
LABEL_29:
    v42 = 0;
    goto LABEL_30;
  }

  v50 = v48 - 1;
  while (1)
  {
    v51 = sub_29786A6B8((a1 + 848), v50);
    if (sub_29786A6C8(v51))
    {
      v52 = *(a1 + 48);
      v53 = sub_29782AFB0(*(v51 + 32));
      v54 = sub_2978606D8(v52, v53);
      if (v54)
      {
        v55 = sub_29784CE54(*(a1 + 64), a3, v41, v54, a8, a9, a10);
        if (v55)
        {
          break;
        }
      }
    }

    --v50;
    if (!--v49)
    {
      goto LABEL_29;
    }
  }

  v42 = v55;
  if (a10 && (*(*(a1 + 24) + 2) & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_30:
  sub_2977FD134(v66);
  v56 = *MEMORY[0x29EDCA608];
  return v42;
}

uint64_t sub_29786A6C8(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 16);
  v3 = *(a1 + 32);

  return sub_29786F09C(v2, v3);
}

uint64_t sub_29786A704(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 792);
  v3 = *(a1 + 808);

  return sub_29786F09C(v2, v3);
}

_BYTE *sub_29786A740(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 808) + 24) = 1;
  if (sub_29780B1BC((a1 + 792)))
  {
    v4 = sub_2977FB720(a1 + 792);
    sub_29784F598(v4, 0);
  }

  v5 = sub_297849BE8(*(a1 + 808) + 32);
  sub_29785B7B8(*(a1 + 808) + 32);
  ++*(a1 + 1328);
  v6 = sub_29786AC48((*(a1 + 808) + 32));
  *v36 = *a2;
  *&v36[16] = *(a2 + 16);
  sub_2978692B0(a1, a2);
  if (sub_29783B9A8(*(a1 + 24)) && sub_29786AC50(a2))
  {
    sub_29785A4E4(a1, a2, 633, v35);
    v7 = sub_29784F384(a2);
    sub_297869558(v35, v7);
    return sub_29782963C(v35);
  }

  if ((*(a1 + 436) & 8) != 0)
  {
    v9 = sub_29784F384(a2);
    if (v9)
    {
      v10 = v9;
      v11 = sub_29783B9F8(v9);
      if (v11 <= 0x10 && ((1 << v11) & 0x18300) != 0)
      {
        sub_29785A4E4(a1, a2, 629, v35);
        v12 = sub_297828314(v10);
        sub_2978295C0(v35, v12, v13);
        sub_29782963C(v35);
        return sub_297869264(a1);
      }
    }

    sub_29785A4E4(a1, a2, 779, v34);
    sub_29782963C(v34);
  }

  sub_29786ACC8(v35, a1);
  v14 = sub_2978503FC(a2);
  if (v14 != 2)
  {
    if (v14 != 8)
    {
      if (v14 == 3)
      {
        v15 = *(a1 + 680);
        if (v15)
        {
          v16 = sub_29786ACCC(*(a1 + 808)) != 0;
          (*(*v15 + 16))(v15, v16);
        }

        sub_297869670(a1);
        return sub_29786DDA0(v35);
      }

      v17 = sub_29784F384(a2);
      if (v17)
      {
        switch(sub_29783B9F8(v17))
        {
          case 1u:
            sub_29786AF80(a1, a2, v6);
            return sub_29786DDA0(v35);
          case 2u:
            v22 = a1;
            v23 = a2;
            v24 = 0;
            v25 = 1;
            goto LABEL_44;
          case 3u:
            v22 = a1;
            v23 = a2;
            v24 = 1;
            v25 = v6;
LABEL_44:
            sub_29786B140(v22, v23, v24, v25);
            return sub_29786DDA0(v35);
          case 4u:
            sub_29786B358(a1, a2);
            return sub_29786DDA0(v35);
          case 5u:
            sub_29786B4FC(a1, a2);
            return sub_29786DDA0(v35);
          case 6u:
            sub_29786B628(a1, a2);
            return sub_29786DDA0(v35);
          case 8u:
            v29 = sub_2977FB5F0(v36);
            sub_29786B700(a1, v29, a2, 0, 0);
            return sub_29786DDA0(v35);
          case 9u:
            v30 = sub_2977FB5F0(v36);
            sub_29786C60C(a1, v30, a2);
            return sub_29786DDA0(v35);
          case 0xAu:
            sub_29786C6DC(a1, a2, v5);
            return sub_29786DDA0(v35);
          case 0xBu:
            sub_29786CF20(a1);
            return sub_29786DDA0(v35);
          case 0xCu:
            sub_29786D0A4(a1);
            return sub_29786DDA0(v35);
          case 0xDu:
            v26 = a1;
            v27 = a2;
            v28 = 0;
            goto LABEL_49;
          case 0xEu:
            v19 = sub_2977FB5F0(v36);
            sub_29787A34C(a1, v19, 0);
            return sub_29786DDA0(v35);
          case 0xFu:
            v18 = sub_2977FB5F0(v36);
            sub_29786D474(a1, v18, a2);
            return sub_29786DDA0(v35);
          case 0x10u:
            v31 = sub_2977FB5F0(v36);
            sub_29786D51C(a1, v31, a2);
            return sub_29786DDA0(v35);
          case 0x11u:
            sub_29785A4E4(a1, a2, 810, v33);
            sub_29782963C(v33);
            v26 = a1;
            v27 = a2;
            v28 = 1;
LABEL_49:
            sub_29786D370(v26, v27, v28);
            break;
          case 0x12u:
          case 0x13u:
            sub_29786D5D8(a1, a2);
            break;
          case 0x16u:
            if ((*(sub_29783CFFC(a1) + 6) & 0x10) == 0)
            {
              goto LABEL_30;
            }

            sub_29786DBF8(a1);
            break;
          case 0x17u:
            if ((*(sub_29783CFFC(a1) + 6) & 0x10) == 0)
            {
              goto LABEL_30;
            }

            sub_29786DCCC(a1);
            break;
          case 0x18u:
            sub_29786D730(a1, a2);
            break;
          case 0x19u:
            sub_29786D960(a1, a2);
            break;
          default:
            goto LABEL_30;
        }

        return sub_29786DDA0(v35);
      }

LABEL_30:
      if ((*(sub_29783CFFC(a1) + 2) & 0x40) != 0)
      {
        v20 = sub_2977FA198(48);
        for (i = 0; i != 48; i += 24)
        {
          sub_29784FB00(v20 + i);
        }

        *v20 = *v36;
        *(v20 + 15) = *&v36[15];
        *(v20 + 24) = *a2;
        *(v20 + 39) = *(a2 + 15);
        if (sub_29784FF04(a2, 66))
        {
          sub_297853640(v20 + 24, 0);
        }

        sub_2978727D0(a1, v20, 2, 0, 1);
      }

      else
      {
        sub_29785A4E4(a1, a2, 730, v32);
        sub_29782963C(v32);
        sub_297869264(a1);
      }

      return sub_29786DDA0(v35);
    }

    if ((*(sub_29783CFFC(a1) + 2) & 0x40) != 0)
    {
      goto LABEL_30;
    }

    sub_29786ACE8(a1, a2);
  }

  return sub_29786DDA0(v35);
}

uint64_t sub_29786AC50(uint64_t a1)
{
  v2 = sub_2978503FC(a1);
  if (v2 == 2)
  {
    v5 = 0;
  }

  else if (v2 == 8 || v2 == 3 || (v3 = sub_29784F384(a1)) == 0)
  {
    v5 = 1;
  }

  else
  {
    v4 = sub_29783B9F8(v3);
    if (v4 <= 0x19)
    {
      v5 = 0xFF8381u >> v4;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5 & 1;
}

uint64_t sub_29786ACE8(uint64_t a1, unsigned int *a2)
{
  v32 = 0;
  result = sub_29786DDA4(a2, &v32, 740, a1, 1);
  if (result)
  {
    return result;
  }

  sub_29784FB00(v31);
  sub_29787C4FC(a1, v31);
  v30 = 0;
  v29 = 0;
  if (!sub_29784FF04(v31, 2))
  {
    if (sub_297850F64(v31, 13))
    {
      sub_29785A4E4(a1, v31, 737, v28);
      v17 = v28;
    }

    else
    {
      if (!sub_297860C44(v31))
      {
        sub_29784CE50(v23, v31);
        sub_297859108(v24, v23[0], v23[1], a1, 1);
        if ((v25 & 1) == 0)
        {
          if (v26 != 1)
          {
            v18 = *(a1 + 48);
            v19 = sub_297860C54(v24);
            v9 = sub_29783F4BC(v18, v19, v20);
            v21 = sub_29786DFA8(&v30 + 1, &v30, &v29 + 1, &v29, a1);
            result = sub_297860CA4(v24);
            if (v21)
            {
              return result;
            }

            v6 = HIBYTE(v29);
            v5 = v29;
            v7 = v30;
            v8 = HIBYTE(v30);
            goto LABEL_4;
          }

          sub_29785A4E4(a1, v31, 737, v22);
          sub_29782963C(v22);
        }

        sub_297869264(a1);
        return sub_297860CA4(v24);
      }

      sub_29785A4E4(a1, v31, 19, v27);
      v17 = v27;
    }

    sub_29782963C(v17);
    return sub_297869264(a1);
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
LABEL_4:
  v10 = *(a1 + 48);
  v11 = sub_2977FB5F0(a2);
  result = sub_29783F6BC(v10, v11, v32, v9, v8 & 1, v7 & 1, v6 & 1, v5 & 1);
  v12 = *(a1 + 872);
  if (v12)
  {
    if (v7)
    {
      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    if (v8)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (v5)
    {
      v15 = 2;
    }

    else
    {
      v15 = v6;
    }

    v16 = (*(**(a1 + 808) + 32))(*(a1 + 808));
    sub_297829180(v24);
    return (*(*v12 + 16))(v12, v16, v14, v15, v24[0]);
  }

  return result;
}

uint64_t sub_29786AF80(uint64_t a1, unsigned int *a2, char a3)
{
  ++*(a1 + 1344);
  v20 = 0;
  v6 = (*(**(a1 + 808) + 32))(*(a1 + 808));
  v7 = sub_29786FBC4(a1, &v20);
  v8 = (*(**(a1 + 808) + 32))(*(a1 + 808));
  if (!sub_29786ACCC(*(a1 + 808)))
  {
    v9 = *(a1 + 808);
    if (a3 & 1) != 0 || (v10 = v20) == 0 || ((v7 ^ 1))
    {
      sub_29786EE8C(v9 + 32);
    }

    else
    {
      v11 = sub_2977FB5F0(a2);
      sub_29786EE60(v9 + 32, v10, v11);
    }
  }

  v12 = *(a1 + 872);
  if (v12)
  {
    v13 = sub_2977FB5F0(a2);
    sub_297853514(&v19, v6, v8);
    if (v7)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    (*(*v12 + 208))(v12, v13, v19, v14);
  }

  if (v7)
  {
    v15 = *(a1 + 808);
    v16 = sub_2977FB5F0(a2);
    return sub_297869FFC(v15, v16, 0, 1, 0);
  }

  else
  {
    v18 = sub_2977FB5F0(a2);
    sub_297829180(&v19);
    return sub_297869830(a1, v18, 0, 0, v19);
  }
}

uint64_t sub_29786B140(uint64_t a1, __int128 *a2, int a3, char a4)
{
  ++*(a1 + 1344);
  v24 = *a2;
  v25 = *(a2 + 2);
  sub_29784FB00(v23);
  sub_297869590(a1, v23, 0);
  if (sub_29784FF04(v23, 2))
  {
LABEL_21:
    v18 = sub_2977FB5F0(&v24);
    sub_297829180(&v22);
    return sub_297869830(a1, v18, 0, 0, v22);
  }

  if (a3)
  {
    v7 = "ifndef";
  }

  else
  {
    v7 = "ifdef";
  }

  sub_2978696A4(a1, v7, 0);
  v8 = sub_29784F384(v23);
  v9 = sub_29785A890(a1, v8);
  v10 = v9;
  if (v9)
  {
    v11 = sub_29785A8E8(v9);
  }

  else
  {
    v11 = 0;
  }

  if (sub_29786ACCC(*(a1 + 808)))
  {
    if (v11)
    {
LABEL_10:
      sub_297875E70(a1, v11);
      v12 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a1 + 808);
    if ((a4 & 1) != 0 || v11)
    {
      sub_29786EE8C(v13 + 32);
      if (v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = sub_2977FB5F0(v23);
      sub_29786EE60(v13 + 32, v8, v14);
    }
  }

  v12 = 1;
LABEL_16:
  v15 = *(a1 + 872);
  if (v15)
  {
    v16 = sub_2977FB5F0(&v24);
    v17 = *v15;
    if (a3)
    {
      (*(v17 + 232))(v15, v16, v23, v10);
    }

    else
    {
      (*(v17 + 224))(v15, v16, v23, v10);
    }
  }

  if (v12 != a3)
  {
    goto LABEL_21;
  }

  v20 = *(a1 + 808);
  v21 = sub_2977FB5F0(&v24);
  return sub_297869FFC(v20, v21, 0, 1, 0);
}

uint64_t sub_29786B358(uint64_t a1, unsigned int *a2)
{
  ++*(a1 + 1348);
  v4 = (*(**(a1 + 808) + 32))(*(a1 + 808));
  sub_297869264(a1);
  v5 = (*(**(a1 + 808) + 32))(*(a1 + 808));
  sub_29784FB00(&v15);
  if (sub_29786A1C0(*(a1 + 808), &v15))
  {
    sub_29785A4E4(a1, a2, 836, v14);
    return sub_29782963C(v14);
  }

  else
  {
    if (!sub_29786ACCC(*(a1 + 808)))
    {
      sub_29786EE8C(*(a1 + 808) + 32);
    }

    if (v16 == 1)
    {
      sub_29785A4E4(a1, a2, 835, v13);
      sub_29782963C(v13);
    }

    v7 = *(a1 + 872);
    if (v7)
    {
      v8 = sub_2977FB5F0(a2);
      sub_297853514(&v12, v4, v5);
      (*(*v7 + 216))(v7, v8, v12, 0, v15);
    }

    v9 = v15;
    v10 = v16;
    v11 = sub_2977FB5F0(a2);
    return sub_297869830(a1, v9, 1, v10, v11);
  }
}

uint64_t sub_29786B4FC(uint64_t a1, unsigned int *a2)
{
  ++*(a1 + 1348);
  sub_2978696A4(a1, "else", 0);
  sub_29784FB00(&v11);
  if (sub_29786A1C0(*(a1 + 808), &v11))
  {
    sub_29785A4E4(a1, a2, 838, v10);
    return sub_29782963C(v10);
  }

  else
  {
    if (!sub_29786ACCC(*(a1 + 808)))
    {
      sub_29786EE8C(*(a1 + 808) + 32);
    }

    if (v12 == 1)
    {
      sub_29785A4E4(a1, a2, 837, v9);
      sub_29782963C(v9);
    }

    v5 = *(a1 + 872);
    if (v5)
    {
      v6 = sub_2977FB5F0(a2);
      (*(*v5 + 240))(v5, v6, v11);
    }

    v7 = v11;
    v8 = sub_2977FB5F0(a2);
    return sub_297869830(a1, v7, 1, 1, v8);
  }
}

uint64_t sub_29786B628(uint64_t a1, unsigned int *a2)
{
  ++*(a1 + 1352);
  sub_2978696A4(a1, "endif", 0);
  sub_29784FB00(&v8);
  if (sub_29786A1C0(*(a1 + 808), &v8))
  {
    sub_29785A4E4(a1, a2, 708, v7);
    return sub_29782963C(v7);
  }

  else
  {
    result = sub_29786ACCC(*(a1 + 808));
    if (!result)
    {
      result = sub_29786EE90(*(a1 + 808) + 32);
    }

    v5 = *(a1 + 872);
    if (v5)
    {
      v6 = sub_2977FB5F0(a2);
      return (*(*v5 + 248))(v5, v6, v8);
    }
  }

  return result;
}

uint64_t sub_29786B700(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, int a5)
{
  v191 = *MEMORY[0x29EDCA608];
  sub_29784FB00(v189);
  sub_29787D794(*(a1 + 808), v189);
  sub_297806EC8(v188);
  sub_297804560(&v187);
  sub_297829180(&v186);
  sub_297829180(&v185);
  v10 = sub_2978503FC(v189);
  if (v10 > 14)
  {
    if (v10 == 46)
    {
      LOBYTE(v177[0]) = 60;
      sub_2977FCD50(v188, v177);
      if (sub_29786E470(a1, v188, &v186))
      {
        goto LABEL_112;
      }

      *&v187 = sub_297801F10(v188);
      *(&v187 + 1) = v23;
      v13 = 1;
LABEL_8:
      v185 = sub_297840FC8(&v186, v13);
      v14 = sub_2977FB5F0(v189);
      v15 = sub_2978562D8(v14, v185);
      v17 = v16;
      v18 = v187;
      v19 = sub_2977FB5F0(v189);
      v20 = sub_29786E338(a1, v19, &v187);
      if (sub_297806914(&v187))
      {
        goto LABEL_9;
      }

      v21 = sub_29784F384(a3);
      v22 = sub_297828CB8(v21);
      sub_2978696A4(a1, v22, 1);
      if (sub_2978670D0((a1 + 848)) == 199)
      {
        sub_29785A4E4(a1, v189, 729, v183);
        sub_29782963C(v183);
        goto LABEL_112;
      }

      if (sub_297805430((a1 + 772)))
      {
        sub_297850EEC(a1, a2, 727, v182);
        sub_29782963C(v182);
        sub_297850EEC(a1, *(a1 + 772), 54, v181);
        sub_29782963C(v181);
        sub_297829180(v177);
        *(a1 + 772) = v177[0];
      }

      if (sub_297805430((a1 + 776)))
      {
        sub_297850EEC(a1, a2, 728, v180);
        sub_29782963C(v180);
        sub_297850EEC(a1, *(a1 + 776), 54, v179);
        sub_29782963C(v179);
        sub_297829180(v177);
        *(a1 + 776) = v177[0];
      }

      if (sub_29786E614(*(a1 + 64)))
      {
        *&v177[0] = sub_29786E61C(*(a1 + 64), v18, *(&v18 + 1));
        *(&v177[0] + 1) = v24;
        if (!sub_297806914(v177))
        {
          v187 = v177[0];
        }
      }

      v178 = 0;
      sub_29784A9BC(v177);
      sub_29784A9BC(v176);
      sub_29784CB48(&v175);
      v25 = sub_2977FB5F0(v189);
      sub_297806EC8(v174);
      v26 = **(a1 + 24);
      if ((v26 & 4) != 0)
      {
        sub_297802728(&v187, &v173);
        sub_2978044E8(&v190, &v173);
        sub_29784B428(v174, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
        std::string::~string(&v173);
        sub_297806B40(v174);
        v26 = **(a1 + 24);
      }

      v163 = v17;
      if ((v26 & 4) != 0)
      {
        v27 = sub_297807A0C(v174);
        sub_2977FB7B4(&v173, v27);
      }

      else
      {
        *&v173.__r_.__value_.__l.__data_ = v187;
      }

      if (*(a1 + 872))
      {
        v28 = v177;
      }

      else
      {
        v28 = 0;
      }

      if (*(a1 + 872))
      {
        v29 = v176;
      }

      else
      {
        v29 = 0;
      }

      v30 = sub_297803A7C(*(a1 + 64));
      v31 = &v175;
      if ((*(v30 + 152) & 2) == 0)
      {
        v31 = 0;
      }

      v159 = v25;
      v32 = sub_29786A308(a1, v25, v173.__r_.__value_.__l.__data_, v173.__r_.__value_.__l.__size_, v20, a4, &v178, v28, v29, v31, 0);
      v34 = v32;
      if (*(a1 + 872))
      {
        v161 = a5;
        if (!v32)
        {
          sub_297806EC8(&v173);
          if ((*(**(a1 + 872) + 32))(*(a1 + 872), v187, *(&v187 + 1), &v173) && (v35 = *(a1 + 40), v36 = sub_2978059B8(&v173), (v38 = sub_29782DFB8(v35, v36, v37, 1)) != 0))
          {
            sub_29786E6B4(&v190, v38, 0, 0);
            sub_29786E6B8(*(a1 + 64), &v190, v20);
            if ((**(a1 + 24) & 4) != 0)
            {
              v39 = sub_297807A0C(v174);
              sub_2977FB7B4(&v168, v39);
            }

            else
            {
              *&v168.__r_.__value_.__l.__data_ = v187;
            }

            v40 = sub_297803A7C(*(a1 + 64));
            v41 = &v175;
            if ((*(v40 + 152) & 2) == 0)
            {
              v41 = 0;
            }

            v34 = sub_29786A308(a1, v159, v168.__r_.__value_.__l.__data_, v168.__r_.__value_.__l.__size_, v20, a4, &v178, 0, 0, v41, 1);
          }

          else
          {
            v34 = 0;
          }

          sub_297801F60(&v173);
        }

        if (!sub_29785C8DC(&v175, v33) || (*(sub_29783CFFC(a1) + 6) & 0x10) == 0)
        {
          v42 = v15;
          v43 = *(a1 + 872);
          v44 = v34;
          v45 = v20;
          if ((**(a1 + 24) & 4) != 0)
          {
            v46 = sub_297807A0C(v174);
            sub_2977FB7B4(&v173, v46);
          }

          else
          {
            *&v173.__r_.__value_.__l.__data_ = v187;
          }

          v47 = sub_2978059B8(v177);
          v49 = v48;
          v50 = sub_2978059B8(v176);
          v154 = v49;
          v152 = v44;
          v153 = v47;
          v34 = v44;
          v20 = v45;
          v15 = v42;
          (*(*v43 + 40))(v43, a2, a3, v173.__r_.__value_.__r.__words[0], v173.__r_.__value_.__l.__size_, v45, v42, v163, v152, v153, v154, v50, v51, 0);
        }

        a5 = v161;
      }

      if (v34)
      {
LABEL_54:
        if (sub_29785C8DC(&v175, v33) && (*(sub_29783CFFC(a1) + 6) & 0x10) != 0)
        {
          v53 = sub_29784DD58(&v175, v52);
          v162 = v34;
          v54 = sub_29786E7AC(v53);
          v55 = v20;
          v20 = v56;
          v57 = sub_29783CFFC(a1);
          sub_2978044E8(&v173, v57 + 160);
          v58 = v54;
          v34 = v162;
          v59 = v20;
          LODWORD(v20) = v55;
          if (sub_297808D64(v58, v59, v173.__r_.__value_.__l.__data_, v173.__r_.__value_.__l.__size_))
          {
            sub_29783CEF0(&v190);
            v61 = sub_29784DD58(&v175, v60);
            if (v61)
            {
              v62 = v61;
              do
              {
                sub_2978044E8(&v173, v62);
                v168.__r_.__value_.__r.__words[0] = sub_297869520(a1, v173.__r_.__value_.__l.__data_, v173.__r_.__value_.__l.__size_);
                LODWORD(v172.__r_.__value_.__l.__data_) = sub_2977FB5F0(v189);
                v173.__r_.__value_.__r.__words[0] = sub_2978461F8(&v168, &v172);
                LODWORD(v173.__r_.__value_.__r.__words[1]) = v63;
                sub_297803F88(&v190, &v173);
                v62 = *(v62 + 32);
              }

              while (v62);
            }

            v64 = sub_2977FB720(&v190);
            v65 = sub_2977FB7B8(&v190);
            sub_29786E7DC(v64, v65);
            sub_297806EC8(&v173);
            v66 = sub_2978094B8(&v190);
            if (v66)
            {
              for (i = 0; i != v66; ++i)
              {
                if (i)
                {
                  sub_29784CE18(&v173, 46);
                }

                v68 = sub_29780942C(&v190, i);
                v69 = sub_297828314(*v68);
                sub_297811C58(&v173.__r_.__value_.__l.__data_, v69, v70);
              }
            }

            v71 = sub_29784F384(a3);
            v72 = sub_29783B9F8(v71);
            v157 = v15;
            if (v72 > 14)
            {
              v73 = 0;
              if (v72 == 15)
              {
                v74 = 1;
              }

              else
              {
                v74 = 2;
              }
            }

            else if (v72 == 8)
            {
              v73 = 0;
              v74 = 0;
            }

            else
            {
              v74 = 3;
              v73 = 1;
            }

            v92 = sub_29780942C(&v190, 0);
            v93 = sub_297828314(*v92);
            v95 = v94;
            v96 = sub_29783CFFC(a1);
            sub_2978044E8(&v168, v96 + 136);
            v97 = sub_297804D28(v93, v95, v168.__r_.__value_.__l.__data_, v168.__r_.__value_.__l.__size_);
            if (!v97 && (*(sub_29783CFFC(a1) + 1) & 8) != 0)
            {
              sub_297853514(&v168, a2, v185);
              sub_297819E70(&v170, v168.__r_.__value_.__l.__data_, 0);
              sub_297850EEC(a1, a2, 853, v169);
              v98 = sub_2978563C8(v169, v74);
              v99 = sub_2978059B8(&v173);
              v101 = sub_2978295C0(v98, v99, v100);
              v102 = v170;
              v103 = v171;
              v164[0] = sub_297801F10(&v173);
              v164[1] = v104;
              sub_297802728(v164, &v165);
              sub_2978094F0("@import ", &v165, &v166);
              sub_297808D80(&v166, ";", &v172);
              sub_2978044E8(v167, &v172);
              sub_297854348(v102, v103, v167[0], v167[1], &v168);
              sub_297852754(v101, &v168);
              sub_29782AC18(&v168);
              std::string::~string(&v172);
              std::string::~string(&v166);
              std::string::~string(&v165);
              sub_29782963C(v169);
            }

            v105 = *(a1 + 72);
            v106 = sub_2977FB5F0(a3);
            sub_29781601C(&v168, &v190);
            v172.__r_.__value_.__r.__words[0] = (*(*v105 + 16))(v105, v106, v168.__r_.__value_.__r.__words[0], v168.__r_.__value_.__l.__size_, 1, 1);
            if (!sub_29784DD58(&v172, v107) && sub_297855CEC(a1))
            {
              if (sub_29780B1BC((a1 + 792)))
              {
                sub_297853ED0(a3);
                v109 = sub_2977FB720(a1 + 792);
                v110 = sub_2977FB720(a1 + 792);
                sub_297851FAC(v109, a3, *(v110 + 128), 1);
                v111 = sub_2977FB720(a1 + 792);
                sub_297852A8C(v111);
              }

              else
              {
                v151 = sub_2977FB720(a1 + 800);
                sub_297879880(v151, a3);
              }

              goto LABEL_121;
            }

            LODWORD(v20) = v55;
            v34 = v162;
            if (!v97)
            {
              if (sub_29784DD58(&v172, v108))
              {
                v142 = *(a1 + 872);
                if (v142)
                {
                  v158 = *(&v187 + 1);
                  v160 = v187;
                  v156 = sub_2978059B8(v177);
                  v144 = v143;
                  v145 = sub_2978059B8(v176);
                  v147 = v146;
                  v148 = sub_29784DD58(&v172, v146);
                  (*(*v142 + 40))(v142, a2, a3, v160, v158, v55, v157, v163, v162, v156, v144, v145, v147, v148);
                }

                if ((v73 & 1) == 0)
                {
                  v149 = v186;
                  v150 = sub_29784DD58(&v172, v141);
                  sub_29786E7E0(a1, a2, v149, 518, v150);
                }

                goto LABEL_121;
              }

              if (!sub_29786E888(&v172))
              {
LABEL_121:
                sub_297801F60(&v173);
                sub_2977FD134(&v190);
                goto LABEL_111;
              }
            }

            sub_297801F60(&v173);
            sub_2977FD134(&v190);
            v15 = v157;
          }
        }

        if (*(a1 + 872) && sub_29785C8DC(&v175, v52))
        {
          v112 = v34;
          v113 = *(a1 + 872);
          v114 = v187;
          v115 = sub_2978059B8(v177);
          v116 = v15;
          v118 = v117;
          v119 = sub_2978059B8(v176);
          v120 = *(*v113 + 40);
          v155 = v119;
          v121 = v113;
          v34 = v112;
          v120(v121, a2, a3, v114, *(&v114 + 1), v20, v116, v163, v112, v115, v118, v155, v122, 0);
        }

        LODWORD(v173.__r_.__value_.__l.__data_) = sub_29786E88C(*(a1 + 64), v34);
        v123 = *(a1 + 48);
        v124 = sub_2977FB5F0(v189);
        LODWORD(v190.__r_.__value_.__l.__data_) = sub_29784220C(v123, v124);
        v125 = *sub_29782CF54(&v173, &v190);
        if (sub_29784D584(*(a1 + 64), v34, a5))
        {
          LODWORD(v190.__r_.__value_.__l.__data_) = v186;
          v126 = sub_29783C26C(&v190);
          LODWORD(v127) = v190.__r_.__value_.__l.__data_;
          if (v126)
          {
            v128 = sub_297841340(*(a1 + 48), v190.__r_.__value_.__l.__data_);
            v127 = HIDWORD(v128);
            LODWORD(v190.__r_.__value_.__l.__data_) = HIDWORD(v128);
          }

          v129 = sub_297863788(*(a1 + 48), v34, v127, v125, 0, 0);
          sub_29784CB48(&v173);
          if ((*(sub_29783CFFC(a1) + 6) & 0x10) != 0)
          {
            v130 = sub_29783CFFC(a1);
            if (!sub_29780347C(v130 + 136))
            {
              v131 = sub_29786A224(a1, v159);
              v132 = sub_29784AE8C(*(a1 + 64));
              v173.__r_.__value_.__r.__words[0] = sub_29785C484(v132, v34, v131);
            }
          }

          v133 = v178;
          v134 = sub_2977FB5F0(v189);
          if ((sub_29787229C(a1, v129, v133, v134) & 1) == 0 && sub_29785C8DC(&v173, v135))
          {
            v137 = sub_29784DD58(&v173, v136);
            *(a1 + 840) = v137;
            sub_29786E7E0(a1, a2, v186, 519, v137);
          }
        }

        else
        {
          v138 = *(a1 + 872);
          if (v138)
          {
            (*(*v138 + 24))(v138, v34, v189, v125);
          }
        }

        goto LABEL_111;
      }

      if ((*(a1 + 436) & 4) == 0)
      {
        if (v20)
        {
          v75 = v20;
          v76 = v15;
          if ((**(a1 + 24) & 4) != 0)
          {
            v77 = sub_297807A0C(v174);
            sub_2977FB7B4(&v173, v77);
          }

          else
          {
            *&v173.__r_.__value_.__l.__data_ = v187;
          }

          if (*(a1 + 872))
          {
            v78 = v177;
          }

          else
          {
            v78 = 0;
          }

          if (*(a1 + 872))
          {
            v79 = v176;
          }

          else
          {
            v79 = 0;
          }

          v80 = sub_297803A7C(*(a1 + 64));
          v81 = &v175;
          if ((*(v80 + 152) & 2) == 0)
          {
            v81 = 0;
          }

          v82 = sub_29786A308(a1, v159, v173.__r_.__value_.__l.__data_, v173.__r_.__value_.__l.__size_, 0, a4, &v178, v78, v79, v81, 0);
          if (v82)
          {
            v83 = v82;
            v84 = sub_2977FB5F0(v189);
            sub_297853514(v169, v84, v185);
            sub_29785A4E4(a1, v189, 722, &v166);
            v85 = a2;
            v86 = v76;
            v87 = v83;
            v88 = sub_2978295C0(&v166, v187, *(&v187 + 1));
            v89 = v169[0];
            sub_297802728(&v187, &v172);
            sub_2978094F0("", &v172, &v168);
            sub_297808D80(&v168, "", &v190);
            sub_2978044E8(&v165, &v190);
            v90 = v89;
            v20 = v75;
            sub_29786E758(v90, v165.__r_.__value_.__l.__data_, v165.__r_.__value_.__l.__size_, &v173);
            v91 = v88;
            v34 = v87;
            v15 = v86;
            a2 = v85;
            sub_297852754(v91, &v173);
            sub_29782AC18(&v173);
            std::string::~string(&v190);
            std::string::~string(&v168);
            std::string::~string(&v172);
            sub_29782963C(&v166);
            goto LABEL_54;
          }
        }

        sub_29785A4E4(a1, v189, 721, &v173);
        sub_2978295C0(&v173, v187, *(&v187 + 1));
        sub_29782963C(&v173);
      }

LABEL_111:
      sub_297801F60(v174);
      sub_297801F60(v176);
      sub_297801F60(v177);
      goto LABEL_112;
    }

    if (v10 != 15)
    {
      goto LABEL_4;
    }

LABEL_7:
    *&v187 = sub_29787BB08(a1, v189, v188, 0);
    *(&v187 + 1) = v12;
    v186 = sub_2977FB5F0(v189);
    v13 = sub_297847BE0(v189);
    goto LABEL_8;
  }

  if (v10 != 2)
  {
    if (v10 != 13)
    {
LABEL_4:
      v11 = sub_2977FB5F0(v189);
      sub_297850EEC(a1, v11, 718, v184);
      sub_29782963C(v184);
LABEL_9:
      sub_297869264(a1);
      goto LABEL_112;
    }

    goto LABEL_7;
  }

LABEL_112:
  result = sub_297801F60(v188);
  v140 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_29786C60C(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v6 = sub_2977FB5F0(a3);
  v7 = sub_2978422CC(*(a1 + 48), v6, 0);
  if (!strcmp(v7, "<built-in>"))
  {
    sub_29786B700(a1, a2, a3, 0, 0);
    sub_29784FB00(v10);
    do
    {
      sub_29787C4FC(a1, v10);
      result = sub_297850F64(v10, 66);
    }

    while (result);
  }

  else
  {
    v8 = sub_2977FB5F0(a3);
    sub_297850EEC(a1, v8, 840, v11);
    sub_29782963C(v11);
    return sub_297869264(a1);
  }

  return result;
}

uint64_t sub_29786C6DC(uint64_t a1, unsigned int *a2, int a3)
{
  ++*(a1 + 1332);
  sub_29784FB00(&v69);
  sub_297869590(a1, &v69, 1);
  if (sub_29783B9A8(*(a1 + 24)))
  {
    v6 = *(a1 + 48);
    v7 = sub_2977FB5F0(a2);
    *v68 = sub_29783E548(v6, v7);
    if (sub_2978435D4(v68, (a1 + 1416)))
    {
      v8 = sub_29784F384(&v69);
      if (v8)
      {
        v9 = v8;
        *v68 = sub_297828314(v8);
        *&v68[8] = v10;
        sub_2977FB7B4(v67, "GL_");
        if (sub_297807C54(v68, *v67, *&v67[8]))
        {
          sub_29785A4E4(a1, a2, 634, v67);
          sub_297869558(v67, v9);
          sub_29782963C(v67);
        }

        if (sub_2977FB7B8(v68) >= 2)
        {
          v11 = 2;
          v12 = 1;
          while (sub_297803A20(v68, v12) != 95 || sub_297803A20(v68, v11 - 2) != 95)
          {
            v12 = v11;
            if (sub_2977FB7B8(v68) <= v11++)
            {
              goto LABEL_13;
            }
          }

          sub_29785A4E4(a1, a2, 634, v67);
          sub_297869558(v67, v9);
          sub_29782963C(v67);
        }
      }
    }
  }

LABEL_13:
  result = sub_29784FF04(&v69, 2);
  if ((result & 1) == 0)
  {
    *v68 = v69;
    *&v68[16] = v70;
    if (sub_29780B1BC((a1 + 792)))
    {
      v15 = sub_2977FB720(a1 + 792);
      sub_29784F5AC(v15, (*(a1 + 436) & 2) != 0);
    }

    v16 = sub_2977FB5F0(&v69);
    v17 = sub_297869080(a1, v16);
    sub_29784FB00(v67);
    sub_2978692B0(a1, v67);
    if (sub_29784FF04(v67, 2))
    {
      if (a3)
      {
        v18 = *(a1 + 808);
        v19 = sub_29784F384(&v69);
        v20 = sub_2977FB5F0(&v69);
        sub_29786EC90(v18 + 32, v19, v20);
      }

      goto LABEL_35;
    }

    if (sub_29785480C(v67))
    {
      sub_297853618(v67, 2);
LABEL_35:
      if (!sub_29784FF04(v67, 2))
      {
        *v68 = *v67;
        *&v68[15] = *&v67[15];
      }

      v22 = sub_29786ECDC(v17);
      v23 = sub_297850F64(v67, 2);
      if (v22)
      {
        if (v23)
        {
          do
          {
            *v68 = *v67;
            *&v68[15] = *&v67[15];
            sub_29786ECEC(v17, v67);
            sub_2978692B0(a1, v67);
          }

          while (sub_297850F64(v67, 2));
        }

LABEL_62:
        sub_29786ECAC(*(a1 + 328), 1);
        v29 = sub_29786ECF4(v17);
        if (v29)
        {
          v30 = v29;
          v31 = sub_29786ED10(v17, 0);
          if (sub_29784FF04(v31, 66))
          {
            v32 = sub_29786ED10(v17, 0);
            sub_29785A4E4(a1, v32, 697, v62);
            v33 = v62;
            return sub_29782963C(v33);
          }

          v34 = v30 - 1;
          v35 = sub_29786ED10(v17, v34);
          if (sub_29784FF04(v35, 66))
          {
            v36 = sub_29786ED10(v17, v34);
            sub_29785A4E4(a1, v36, 696, v61);
            v33 = v61;
            return sub_29782963C(v33);
          }
        }

        v37 = sub_2977FB5F0(v68);
        sub_297847418(v17, v37);
        v38 = sub_29784F384(&v69);
        v39 = sub_297859DFC(a1, v38);
        if (!v39)
        {
          goto LABEL_81;
        }

        v40 = v39;
        v41 = sub_2977FD5B0(a1);
        if (!sub_29786ED28(v41) || (v42 = *(a1 + 48), v43 = sub_2977FB5F0(a2), !sub_29782CF70(v42, v43)))
        {
          if ((sub_29786ED30(v40) & 1) == 0 && sub_29786ED3C(v40))
          {
            v44 = sub_2977FB5F0(v40);
            sub_297850EEC(a1, v44, 844, v60);
            sub_29782963C(v60);
          }

          if (sub_297869584(v40))
          {
            v45 = v59;
            sub_29785A4E4(a1, &v69, 808, v59);
LABEL_76:
            sub_29782963C(v45);
            goto LABEL_79;
          }

          if ((sub_29786ED48(v40) & 1) == 0 && (sub_29785B110(v17, v40, a1, (**(a1 + 24) >> 3) & 1) & 1) == 0)
          {
            v54 = sub_2977FB5F0(v17);
            sub_297850EEC(a1, v54, 806, v58);
            v55 = sub_29784F384(&v69);
            sub_297869558(v58, v55);
            sub_29782963C(v58);
            v56 = sub_2977FB5F0(v40);
            v45 = v57;
            sub_297850EEC(a1, v56, 56, v57);
            goto LABEL_76;
          }
        }

LABEL_79:
        if (sub_29786ED3C(v40))
        {
          v46 = sub_2977FB5F0(v40);
          sub_29786ED54(a1 + 1008, v46);
        }

LABEL_81:
        v47 = sub_29784F384(&v69);
        v48 = sub_29786ED94(a1, v47, v17);
        v49 = sub_29781F408(a1);
        v50 = sub_2977FB5F0(v17);
        if (sub_297842414(v49, v50))
        {
          v51 = *(a1 + 16);
          v52 = sub_2977FB5F0(v17);
          if (!sub_29784CC2C(v51, 0x34Cu, v52))
          {
            sub_29786EE00(v17, 1);
            v53 = sub_2977FB5F0(v17);
            sub_29786EE20(a1 + 1008, v53);
          }
        }

        result = *(a1 + 872);
        if (result)
        {
          return (*(*result + 176))(result, &v69, v48);
        }

        return result;
      }

      if (!v23)
      {
        goto LABEL_62;
      }

      while (1)
      {
        *v68 = *v67;
        *&v68[15] = *&v67[15];
        if (sub_297850F64(v67, 65) && sub_297850F64(v67, 66))
        {
          goto LABEL_52;
        }

        if ((*(sub_29783CFFC(a1) + 4) & 0x80) != 0)
        {
          break;
        }

        v24 = sub_29784FF04(v67, 66);
        sub_2978692B0(a1, v67);
        if (v24)
        {
          if (sub_29784FF04(v67, 2))
          {
            sub_29786ECEC(v17, v68);
            goto LABEL_62;
          }

          v25 = sub_29786ECF4(v17);
          if (v25)
          {
            v26 = v25;
            if (sub_29784F384(v67) == *(a1 + 328))
            {
              v27 = sub_29786ED10(v17, v26 - 1);
              if (sub_29784FF04(v27, 64))
              {
                sub_29786ED18(v17);
              }
            }
          }

          goto LABEL_60;
        }

        if (!sub_29784F384(v67) || (v28 = sub_29784F384(v67), sub_29785B3E8(v17, v28) == -1))
        {
          if ((*(sub_29783CFFC(a1) + 2) & 0x40) == 0 || !sub_297850F64(v67, 2))
          {
            sub_29785A4E4(a1, v67, 748, v63);
            sub_29782963C(v63);
            return sub_29786ECAC(*(a1 + 328), 1);
          }

          sub_297853640(v68, 0);
LABEL_60:
          sub_29786ECEC(v17, v68);
          goto LABEL_61;
        }

        sub_29786ECEC(v17, v68);
        sub_29786ECEC(v17, v67);
        *v68 = *v67;
        *&v68[15] = *&v67[15];
LABEL_53:
        sub_2978692B0(a1, v67);
LABEL_61:
        if (!sub_297850F64(v67, 2))
        {
          goto LABEL_62;
        }
      }

      sub_297853640(v67, 0);
LABEL_52:
      sub_29786ECEC(v17, v67);
      goto LABEL_53;
    }

    if (!sub_29784FF04(v67, 21))
    {
      if ((**(a1 + 24) & 0x81) != 0)
      {
        sub_29785A4E4(a1, v67, 776, v66);
        v21 = v66;
      }

      else if (sub_29784FF04(v67, 71) || sub_29784FF04(v67, 0))
      {
        sub_29785A4E4(a1, v67, 787, v65);
        v21 = v65;
      }

      else
      {
        sub_29785A4E4(a1, v67, 878, v64);
        v21 = v64;
      }

      sub_29782963C(v21);
      goto LABEL_35;
    }

    sub_29786EC9C(v17);
    result = sub_29786E8F0(a1, v17, v68);
    if (!result)
    {
      if (sub_29785B3C0(v17))
      {
        sub_29786ECAC(*(a1 + 328), 0);
      }

      sub_2978692B0(a1, v67);
      goto LABEL_35;
    }

    if (*(*(a1 + 808) + 24) == 1)
    {
      return sub_297869264(a1);
    }
  }

  return result;
}

uint64_t sub_29786CF20(uint64_t a1)
{
  ++*(a1 + 1336);
  sub_29784FB00(v14);
  sub_297869590(a1, v14, 2);
  result = sub_29784FF04(v14, 2);
  if ((result & 1) == 0)
  {
    sub_2978696A4(a1, "undef", 0);
    v3 = sub_29784F384(v14);
    v4 = sub_29785A890(a1, v3);
    v5 = v4;
    if (v4)
    {
      v6 = sub_29785A8E8(v4);
    }

    else
    {
      v6 = 0;
    }

    result = *(a1 + 872);
    if (result)
    {
      result = (*(*result + 184))(result, v14, v5);
    }

    if (v6)
    {
      if ((sub_29786ED30(v6) & 1) == 0 && sub_29786ED3C(v6))
      {
        v7 = sub_2977FB5F0(v6);
        sub_297850EEC(a1, v7, 844, v13);
        sub_29782963C(v13);
      }

      if (sub_29786ED3C(v6))
      {
        v8 = sub_2977FB5F0(v6);
        sub_29786ED54(a1 + 1008, v8);
      }

      v9 = sub_29784F384(v14);
      v10 = sub_2977FB5F0(v14);
      sub_297804560(v12);
      v11 = sub_297869144(a1, v10, 0, v12[0], v12[1]);
      return sub_297873E88(a1, v9, v11);
    }
  }

  return result;
}