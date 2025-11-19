uint64_t sub_2978B6CB0(unsigned __int8 *a1)
{
  if (sub_29783E2B8(a1))
  {

    return j_nullsub_1(a1, v2);
  }

  else
  {
    v4 = sub_29788AA04(a1, v2);

    return sub_2977FB720(v4);
  }
}

uint64_t sub_2978B6D10(unsigned __int8 *a1)
{
  if (sub_29783E2B8(a1))
  {
    v3 = sub_2978B6CB0(a1);
    return v3 + 8 * !sub_2978B78A0(a1, v4);
  }

  else
  {
    v6 = sub_29788AA04(a1, v2);

    return sub_2977FB7B8(v6);
  }
}

void sub_2978B6D78(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = (a1 + 208);
  if (*(a1 + 208))
  {
    sub_2978B6F14(v16);
    sub_29788E11C(v15);
    sub_2978040A4(v15, v2);
    while (sub_29780406C(v15))
    {
      v14 = sub_29786F068(v15);
      if (v14)
      {
        if (sub_2978B6F5C(v16, &v14))
        {
          v3 = v14;
          v4 = sub_2978B6F7C(v16);
          v5 = sub_2978B6F84(v16);
          sub_2978A1858(v13, v4, v5);
          sub_2978B6A58(a1, v3, v13[0], v13[1]);
        }

        else if (sub_297896C10(a1 + 456, &v14))
        {
          sub_2978B6F8C(v16, &v14);
          v13[0] = 0;
          sub_2978040A4(v15, v13);
          v6 = sub_2978B6C94(a1 + 456, &v14);
          v7 = sub_2978B6CB0(v6);
          v8 = sub_2978B6D10(v6);
          if (v7 != v8)
          {
            v9 = v8;
            do
            {
              v10 = *v7++;
              v11 = sub_2977FD5B0(v10);
              v13[0] = sub_2978B69AC(v11);
              sub_2978040A4(v15, v13);
            }

            while (v7 != v9);
          }
        }
      }

      else
      {
        sub_2978B6F18(v16);
      }
    }

    sub_2977FD134(v15);
    sub_2978B6FD8(v16);
  }

  sub_2978B6FDC(a1 + 456);
  *(a1 + 200) = 0;
  sub_2978B6808(a1);
  v12 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2978B6F18(uint64_t a1)
{
  v2 = sub_2978B793C(a1);
  sub_2978B78FC(a1, *v2);

  return sub_29783D2E0(a1 + 96);
}

uint64_t sub_2978B6F8C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2978B7978(a1, *a2);
  if (v4)
  {
    sub_2978040A4(a1 + 96, a2);
  }

  return v4;
}

uint64_t sub_2978B6FDC(uint64_t a1)
{
  if (sub_29782B4CC(a1) || (result = sub_29782B4D4(a1), result))
  {
    v3 = sub_29782B4CC(a1);
    if (sub_29782AFAC(a1) <= 4 * v3 || sub_29782AFAC(a1) < 0x41)
    {
      v4 = sub_29782F360();
      v5 = sub_29782F70C(v4);
      v6 = sub_297803A7C(a1);
      v7 = sub_29783D84C(a1);
      if (v6 != v7)
      {
        v8 = v7;
        do
        {
          if (!sub_297807F98(*v6, v4))
          {
            if (!sub_297807F98(*v6, v5))
            {
              sub_2978B7308(v6 + 1);
              sub_297845D8C(a1);
            }

            *v6 = v4;
          }

          v6 += 2;
        }

        while (v6 != v8);
      }

      return sub_29782AF58(a1, 0);
    }

    else
    {

      return sub_2978B79B8(a1);
    }
  }

  return result;
}

uint64_t *sub_2978B7110(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2978B6788(a2, a3);
  return a1;
}

uint64_t sub_2978B71CC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(a1 + 12) &= 0xF000u;
  sub_29787B544(a1 + 40);
  sub_2978B6494(a1, a2, a3, a4);
  return a1;
}

uint64_t *sub_2978B722C(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  sub_2978B47C0(a1 + 1);
  a1[1] = sub_2978B7264(a1);
  return a1;
}

uint64_t sub_2978B7264(uint64_t *a1)
{
  v1 = sub_2977FB7B8(*a1);

  return sub_2978B7290(v1);
}

uint64_t sub_2978B72C8(uint64_t a1)
{
  sub_29780AE44(&v3);
  sub_2977FE390(&v3, a1);
  return v3;
}

uint64_t sub_2978B730C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_297803A7C((a1 + 1));

  return sub_2977FD5DC(v1, v2);
}

unsigned __int8 *sub_2978B7348(unsigned __int8 *a1)
{
  v2 = sub_2978B7378(a1);
  if (v2)
  {
    j_nullsub_1(v2, v3);
  }

  return a1;
}

uint64_t sub_2978B7378(unsigned __int8 *a1)
{
  if (!sub_29783DA5C(a1))
  {
    return 0;
  }

  return sub_29788AA04(a1, v2);
}

uint64_t sub_2978B73C4(uint64_t a1)
{
  *(a1 + 8) = sub_2978B7290(0);
  sub_2978B7308(a1 + 8);
  return a1;
}

uint64_t sub_2978B7404(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 16) = 1283;
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t sub_2978B7418(uint64_t a1)
{
  sub_2977FD134(a1 + 96);

  return sub_2978A5110(a1);
}

uint64_t *sub_2978B7454(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  if (sub_297844348(a1, a2, &v7))
  {
    return v7;
  }

  sub_2978B47C0(&v6);
  v4 = sub_2978B74C4(a1, a2, &v6, v7);
  sub_2978B7308(&v6);
  return v4;
}

uint64_t *sub_2978B74C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_2978B7510(a1, a2, a4);
  *v6 = *a2;
  sub_2978B75FC(v6 + 1, a3);
  return v6;
}

uint64_t *sub_2978B7510(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978B7600(a1, (2 * v6));
    sub_297844348(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_2978B7600(a1, v7);
    sub_297844348(a1, a2, &v10);
  }

  sub_29782B4D8(a1);
  v8 = sub_29782F360();
  if (!sub_297807F98(*v10, v8))
  {
    sub_29782B514(a1);
  }

  return v10;
}

void sub_2978B7604(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29783DC8C(a1, *v5);
  if (v4)
  {
    sub_2978B7690(a1, v4, &v4[2 * v3]);
    j__free(v4);
  }

  else
  {
    sub_29783DCD8(a1);
  }
}

uint64_t sub_2978B7690(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_29783DCD8(a1);
  v6 = sub_29782F360();
  result = sub_29782F70C(v6);
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
          sub_297844348(a1, a2, &v9);
          *v9 = *a2;
          sub_2978B75FC(v9 + 1, a2 + 1);
          sub_29782B4D8(a1);
          result = sub_2978B7308(a2 + 1);
        }
      }

      a2 += 2;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t *sub_2978B775C(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  v4 = 0;
  sub_2978B77A4(a2, &v4);
  return a1;
}

uint64_t *sub_2978B77A4(uint64_t *a1, void *a2)
{
  v3 = nullsub_1(*a2, a2);
  sub_297865610(a1, v3);
  return a1;
}

void **sub_2978B77DC(void **a1)
{
  sub_2978B780C(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_2978B780C(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_29782F360();
    v4 = sub_29782F70C(v3);
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
          if ((result & 1) == 0)
          {
            result = sub_2978B7308(v5 + 1);
          }
        }

        v5 += 2;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_2978B78C8(uint64_t a1)
{
  v2 = sub_2978B78F8(a1);
  sub_29788E11C(v2 + 96);
  return a1;
}

uint64_t sub_2978B78FC(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2, a2);

  return sub_29780A6BC(a1, v3);
}

uint64_t sub_2978B7978(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2, a2);

  return sub_29780A3EC(a1, v3);
}

uint64_t sub_2978B79BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_2978B780C(a1);
  if (v2)
  {
    v5 = 64;
    v4 = 1 << (sub_29780A3C4(v2) + 1);
    v2 = *sub_29782CF54(&v5, &v4);
  }

  if (v2 == *(a1 + 16))
  {
    return sub_29783DCD8(a1);
  }

  j__free(*a1);
  return sub_29783DC40(a1, v2);
}

uint64_t sub_2978B7A4C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a5)
  {
    v8 = 4743;
  }

  else
  {
    v8 = 4731;
  }

  sub_2978B677C(a1, a3, v8, v11);
  sub_297869558(v11, a2);
  sub_29782963C(v11);
  sub_2978B677C(a1, a4, 55, v10);
  return sub_29782963C(v10);
}

uint64_t sub_2978B7AD4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2978BE0EC(a1, a2);
  if (v8)
  {
    if (sub_2978B7B74(a1[23], v8))
    {
      v9 = sub_297847BE0(v8);
      v10 = sub_29788CED8(a4);
      sub_2978B7A4C(a1, a2, a3, v9, v10);
      sub_2978BE058(a1, v8);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_2978B7B98(uint64_t *a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    sub_2978B7D10(v27);
    sub_2978B7AD4(a1, a4, a3, v27);
    sub_2978854EC(v27);
  }

  v16 = a1[23];
  if (v16 == a1[22])
  {
LABEL_7:
    v17 = *a1;
    v18 = sub_2978BE268(a4);
    v21 = sub_2978A1044(v17, a2, a3, v18, v19, a5, a6, v20, a7, a8);
    sub_2978B7D54(a1, v21);
  }

  else
  {
    while (1)
    {
      if (sub_2978B7D14(v16))
      {
        sub_2978B677C(a1, a2, 2461, v26);
        v22 = v26;
        goto LABEL_10;
      }

      if (sub_2978B7D34(v16))
      {
        break;
      }

      v16 = sub_2977FB720(v16);
      if (v16 == a1[22])
      {
        goto LABEL_7;
      }
    }

    sub_2978B677C(a1, a2, 2375, v25);
    v22 = v25;
LABEL_10:
    sub_29782963C(v22);
    v21 = 0;
  }

  v23 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t sub_2978B7D5C(uint64_t *a1, unsigned int *a2)
{
  v4 = sub_2977FB5F0(a2);
  v5 = sub_2978B7DEC(a2);
  v7 = sub_2978A12A4(*a1, v4, v5, v6);
  if (sub_2978B7DF8(a2))
  {
    v8 = sub_29783CFFC(a2);
    sub_2977FB7B4(v10, v8);
    sub_2978B7E08(v7, v10[0], v10[1]);
  }

  return v7;
}

uint64_t sub_2978B7E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  result = sub_2977FB720(v5);
  *(a1 + 32) = result;
  return result;
}

unsigned int *sub_2978B7E40(uint64_t *a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = sub_2977FB720(a2);
  v5 = sub_2977FB7B8(a2);
  v6 = sub_29782AFB0(a2);
  v29 = sub_2978C15D0(a1, a2);
  if (sub_29780B1BC(&v29))
  {
    v7 = sub_2977FB720(&v29);
    if (sub_297888970(v7))
    {
      sub_2978B677C(a1, v6, 3140, v28);
      sub_29782963C(v28);
    }
  }

  v8 = sub_2978C1B60(a1, v4, v29);
  v9 = *a1;
  v25 = v5;
  v10 = sub_2978BE268(v5);
  v12 = v11;
  v13 = v29;
  v14 = sub_2977FB5F0(v4);
  v15 = v6;
  v16 = sub_2978A0F9C(v9, v6, v10, v12, v13, v14, v8);
  if (sub_2978B80B4(v4))
  {
    sub_2978B80C4(v16);
  }

  v17 = sub_2978B80E4(v4);
  sub_2978B80D4(v16, v17);
  if (sub_2978B80F0(v4) == 2)
  {
    sub_2978B80FC(v16);
  }

  v18 = sub_297829064(a2);
  if (sub_2978B810C(v18))
  {
    sub_2978B812C(v16);
  }

  if (v25)
  {
    sub_2978B7D10(v30);
    v19 = sub_2978B7AD4(a1, v25, v15, v30);
    sub_2978854EC(v30);
    if (!v19)
    {
      sub_2978B7D54(a1, v16);
    }
  }

  if (sub_297888A10(v16) == 2 || sub_297888A10(v16) == 3)
  {
    if (sub_297888998(v16))
    {
      v20 = sub_2977FB5F0(v4);
      sub_2978B677C(a1, v20, 2728, v27);
      sub_29782963C(v27);
    }

    if (sub_2978B813C(v29))
    {
      v21 = sub_297847BE0(v16);
      sub_2978B677C(a1, v21, 2832, v26);
      sub_29782963C(v26);
    }
  }

  v22 = sub_2978B81B4(v4);
  sub_2978B81A4(v16, v22);
  v23 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t sub_2978B813C(uint64_t a1)
{
  v8 = a1;
  v1 = sub_2977FB720(&v8);
  if (sub_2978B90B8(v1))
  {
    return 1;
  }

  v3 = sub_2977FB720(&v8);
  result = sub_2978BA7E8(v3);
  if (result)
  {
    v4 = sub_2977FB720(&v8);
    v5 = sub_297890568(v4);
    v7 = sub_2977FB7B8(v5);
    v6 = sub_2977FB720(&v7);
    return sub_2978B90B8(v6);
  }

  return result;
}

_WORD *sub_2978B81C0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_2978B848C(a2);
  sub_2978B80B4(a2);
  sub_2978B849C(a2);
  sub_2978B84AC(a2);
  sub_297888B50(a2);
  sub_2978B84BC(a2);
  sub_2978B84C4(a2);
  v8 = a4;
  if (!sub_2978B84E4(a1))
  {
    sub_2978B677C(a1, a4, 2351, v31);
    sub_29782963C(v31);
  }

  v9 = sub_2978A185C(*a1, a4);
  sub_2978B84F4(&v30, 0, 1, 0);
  v29[0] = sub_2978BF04C(a1, a3, v8, &v30);
  v29[1] = v10;
  v11 = sub_2977FB5F0(v29);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v13 = sub_2977FB7B8(v29);
      v14 = sub_2978B84F8(v13);
      if ((sub_297887D40(v14) & 1) != 0 || sub_29783CFFC(v14))
      {
        sub_2978B677C(a1, v8, 2354, v26);
        v12 = v26;
        goto LABEL_16;
      }

      v20 = sub_297887CEC(v14);
      if (!sub_2978B8534(a1, v20))
      {
        sub_2978B677C(a1, v8, 2352, v25);
        v12 = v25;
        goto LABEL_16;
      }

      if (sub_297887CC8(v14))
      {
        sub_2978B677C(a1, v8, 4099, v24);
        sub_29782963C(v24);
      }

      else
      {
        v21 = sub_2978B8554(a2);
        sub_2978B8544(v14, v21);
        sub_2978B8560(v14);
      }

      sub_2978B8570(v9, v14);
      return v9;
    }

    if (v11 == 5)
    {
      v15 = *a1;
      v16 = sub_2978B8578(v29);
      v17 = sub_29788FA28(v15, v16);
      v18 = sub_2978900B4();
      if (sub_297890078(v17, a1[25]))
      {
        sub_2978B677C(a1, v8, 2354, v23);
        v12 = v23;
        goto LABEL_16;
      }

      if (sub_2978900B8(v17, a1[25]))
      {
        sub_2978B677C(a1, v8, 4099, v22);
        sub_29782963C(v22);
      }

      sub_297890138(v17, a1[25]);
      sub_2978B8580(v9, v18);
      return v9;
    }

    if (v11 != 4)
    {
      return v9;
    }

LABEL_10:
    sub_2978B677C(a1, v8, 2353, v28);
    v12 = v28;
    goto LABEL_16;
  }

  if ((v11 - 1) < 2)
  {
    goto LABEL_10;
  }

  if (!v11)
  {
    sub_2978B677C(a1, v8, 3109, v27);
    sub_297869558(v27, a3);
    v12 = v27;
LABEL_16:
    sub_29782963C(v12);
    return 0;
  }

  return v9;
}

uint64_t sub_2978B84F8(uint64_t a1)
{
  v2 = a1;
  if (sub_29788AE7C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978B8598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2977FB7B4(v16, "layout qualifier");
  v6 = sub_29782B550(a3);
  result = sub_2978BDBEC(a1, 1u, v16[0], v16[1], v6);
  if (result)
  {
    if (!sub_2978B7D34(*(a1 + 184)) && sub_2978B80F0(a3) == 7)
    {
      v8 = sub_29782B550(a3);
      sub_2978B677C(a1, v8, 2378, v15);
      v9 = v15;
LABEL_8:
      sub_29782963C(v9);
      return 0;
    }

    sub_2978A19CC(&v14);
    sub_297829180(&v13);
    sub_297829180(&v12);
    result = sub_2978C3150(a1, a3, &v14, &v13, &v12);
    if (!result)
    {
      return result;
    }

    if (sub_297887D4C(&v14))
    {
      sub_2978B677C(a1, v13, 2377, v11);
      v9 = v11;
      goto LABEL_8;
    }

    sub_2978C3B9C(a1, v14, v13, v12);
    sub_2978B8718(a2, v14);
    if (sub_297887D7C(&v14))
    {
      v16[0] = sub_2977FD5B0(a2);
      v10 = sub_2977FB720(v16);
      if ((sub_2978B8720(v10) & 1) == 0)
      {
        sub_2978B677C(a1, v12, 4103, v16);
        sub_29783F028(v16, "matrix");
        sub_29782963C(v16);
      }
    }

    return 1;
  }

  return result;
}

unsigned int *sub_2978B8748(uint64_t a1, uint64_t a2, int a3)
{
  v79 = *MEMORY[0x29EDCA608];
  v6 = sub_2977FB720(a2);
  v7 = sub_2977FB7B8(a2);
  v8 = sub_29782AFB0(a2);
  if (sub_2978B8E80(v6))
  {
    v9 = sub_2978B695C(v77, v7);
    if (sub_2978B8E90(v9))
    {
      v10 = sub_2978B69A8(v77);
    }

    else
    {
      v13 = sub_297828314(v7);
      v15 = sub_2978B8EB0(v13, v14);
      v10 = sub_2978B69A8(v77);
      if (v15)
      {
        sub_2978B677C(a1, v8, 2820, v77);
        sub_297869558(v77, v7);
        v10 = sub_29782963C(v77);
      }
    }

    v16 = sub_2978B695C(v10, v7);
    v17 = sub_2978B8E90(v16);
    v18 = sub_2978B69A8(v77);
    if (!v17 || (v19 = sub_2978B695C(v18, v7), v20 = sub_2978B8F80(v19), v21 = sub_297828314(v7), v23 = sub_2978BDB24(a1, v20, v21, v22, v8), sub_2978B69A8(v77), v23))
    {
      v76 = sub_2978C15D0(a1, a2);
      if (sub_29780B1BC(&v76))
      {
        v77[0] = a1;
        v77[1] = &v76;
        sub_2978B8FA0(v78, a1, &v76);
        v24 = sub_2978B7AD4(a1, v7, v8, v78);
        sub_2978854EC(v78);
        if (sub_29780B1BC(&v76) && sub_2978B813C(v76) && !sub_2978B7D34(*(a1 + 184)) && sub_2978B80F0(v6) != 7)
        {
          v25 = sub_2977FB5F0(v6);
          sub_2978B677C(a1, v25, 2831, v75);
          sub_29782963C(v75);
        }

        v26 = *a1;
        v27 = sub_297828314(v7);
        v29 = v28;
        v30 = v76;
        v31 = sub_2978C1B60(a1, v6, v76);
        v32 = sub_2978B8FA4(v26, v8, v27, v29, v30, v31);
        v33 = sub_2978B80F0(v6);
        sub_2978A19D0(v32, v33);
        if (sub_2978B80B4(v6))
        {
          sub_2978B8FDC(v32);
        }

        if (v24 && sub_2978B8FEC(v77, v24))
        {
          sub_2978B9048(v32);
        }

        if (*(a1 + 216) == 1)
        {
          sub_2978B8544(v32, 1);
        }

        if (!sub_2978B8554(v6))
        {
LABEL_31:
          v36 = sub_297829064(a2);
          if (sub_2978B810C(v36))
          {
            sub_2978B812C(v32);
          }

          if (sub_2978B9058(v6))
          {
            sub_2978B9064(v32);
          }

          if (a3)
          {
            sub_2978B7D54(a1, v32);
          }

          if (sub_2978B84C4(v6))
          {
            sub_2978B8598(a1, v32, v6);
          }

          if (sub_2978B849C(v6))
          {
            sub_2977FB7B4(v71, "interpolation qualifier");
            if (sub_2978BDBEC(a1, 2u, v71[0], v71[1], v8))
            {
              if (!sub_2978B84E4(a1))
              {
                v38 = v70;
                v39 = v70;
                v40 = a1;
                v41 = v8;
                v42 = 2308;
                goto LABEL_69;
              }

              v37 = sub_2978B80F0(v6);
              if (v37 > 4)
              {
                if (v37 != 5)
                {
                  if (v37 != 6)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_68;
                }
              }

              else if (v37 != 3)
              {
                if (v37 != 4)
                {
LABEL_45:
                  v38 = v69;
                  v39 = v69;
                  v40 = a1;
                  v41 = v8;
                  v42 = 2309;
LABEL_69:
                  sub_2978B677C(v40, v41, v42, v39);
                  sub_29782963C(v38);
                  goto LABEL_70;
                }

LABEL_68:
                v38 = v68;
                v39 = v68;
                v40 = a1;
                v41 = v8;
                v42 = 2307;
                goto LABEL_69;
              }
            }

LABEL_70:
            v57 = sub_2978B9084(v6);
            sub_2978B9074(v32, v57);
            goto LABEL_71;
          }

          v67 = 0;
          v43 = sub_2977FB720(&v76);
          v66 = sub_2978B5074(v43);
          v44 = sub_2978B80F0(v6);
          if (v44 > 5)
          {
            if (v44 == 6)
            {
              sub_2978B677C(a1, v8, 1950, v71);
              v56 = sub_29783F028(v71, "fragment");
              sub_29783F028(v56, "out");
              v50 = v71;
              goto LABEL_65;
            }

            if (v44 == 8)
            {
              v52 = sub_2977FB720(&v76);
              if (sub_2978B9090(v52))
              {
                v53 = sub_2977FB5F0(v6);
                sub_2978B677C(a1, v53, 2306, v65);
                v50 = v65;
                goto LABEL_65;
              }
            }
          }

          else
          {
            if (v44 == 3)
            {
              v54 = sub_2977FB720(&v76);
              if (!sub_2978B5178(v54, &v67))
              {
                goto LABEL_71;
              }

              v55 = sub_2977FB5F0(v6);
              sub_2978B677C(a1, v55, 2305, v64);
              v50 = v64;
              goto LABEL_65;
            }

            if (v44 == 4)
            {
              v45 = sub_2977FB720(&v76);
              if (sub_2978B8720(v45) & 1) != 0 || (v46 = sub_2977FB720(&v66), !sub_2978970D4(v46)) || (v47 = sub_2977FB720(&v66), (sub_2978B90B8(v47)) || (v48 = sub_2977FB720(&v66), sub_2978B90E0(v48)))
              {
                v49 = sub_2977FB5F0(v6);
                sub_2978B677C(a1, v49, 2192, v63);
                v50 = v63;
LABEL_65:
                sub_29782963C(v50);
              }
            }
          }

LABEL_71:
          v58 = sub_2978B80F0(v6);
          if (sub_2978B9108(a1, v58))
          {
            v59 = sub_2977FD5B0(v32);
            v60 = sub_2977FB5F0(v6);
            sub_2978C35D8(a1, v59, v60);
          }

          if (!sub_2978B84E4(a1) && !sub_2978B7D34(*(a1 + 184)) && (sub_2978B80F0(v6) | 2) != 2)
          {
            sub_2978B677C(a1, v8, 2875, v62);
            sub_29782963C(v62);
          }

          v61 = sub_297887CEC(v32);
          if (v61 > 5)
          {
            if (v61 == 6)
            {
              goto LABEL_87;
            }

            if (v61 != 8)
            {
              if (v61 == 7)
              {
                sub_2978B9120(*(a1 + 200), v32);
              }

              goto LABEL_56;
            }
          }

          else if (v61 != 3)
          {
            if (v61 != 4)
            {
              if (v61 != 5)
              {
                goto LABEL_56;
              }

              goto LABEL_86;
            }

LABEL_87:
            sub_2978B9178(*(a1 + 200), v32);
            goto LABEL_56;
          }

LABEL_86:
          sub_2978B914C(*(a1 + 200), v32);
          goto LABEL_56;
        }

        if (!sub_2978B84E4(a1))
        {
          sub_2978B677C(a1, v8, 2351, v74);
          sub_29782963C(v74);
        }

        v34 = sub_2978B80F0(v6);
        if (sub_2978B8534(a1, v34))
        {
          if (*(a1 + 216) == 1)
          {
            sub_2978B677C(a1, v8, 4099, v73);
            sub_29782963C(v73);
          }

          v35 = sub_2978B8554(v6);
          sub_2978B8544(v32, v35);
          goto LABEL_31;
        }

        sub_2978B677C(a1, v8, 2352, v72);
        sub_29782963C(v72);
      }
    }

    v32 = 0;
LABEL_56:
    v51 = *MEMORY[0x29EDCA608];
    return v32;
  }

  v11 = *MEMORY[0x29EDCA608];

  return sub_2978B81C0(a1, v6, v7, v8);
}

BOOL sub_2978B8EB0(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  sub_2977FB7B4(&v3, "gl_");
  if (sub_297807C54(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "GL_");
  if (sub_297807C54(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "ci_");
  if (sub_297807C54(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "CI_");
  if (sub_297807C54(v5, v3, v4))
  {
    return 1;
  }

  sub_2977FB7B4(&v3, "__");
  return sub_29780F620(v5, v3, v4, 0) != -1;
}

unsigned int *sub_2978B8FA4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = sub_2978A0E14(a1, a2, a3, a4, a5);
  sub_2978A19E0(v7, a6);
  return v7;
}

uint64_t sub_2978B8FEC(uint64_t **a1, unsigned __int8 *a2)
{
  result = sub_29788327C((*a1)[1], 5u);
  if (result)
  {
    v5 = sub_29788C514(a2);
    return sub_2978B5D9C(&v5, *a1[1]);
  }

  return result;
}

uint64_t sub_2978B91A4(uint64_t *a1, uint64_t a2, int a3, int a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  sub_2977FB7B4(v37, "interface block");
  v12 = sub_29782AFB0(a2);
  if (!sub_2978BDBEC(a1, 3u, v37[0], v37[1], v12))
  {
    return 0;
  }

  if (!sub_2978B84E4(a1))
  {
    v30 = sub_29782AFB0(a2);
    sub_2978B677C(a1, v30, 2486, v36);
    sub_29782963C(v36);
    return 0;
  }

  v35 = a5;
  v13 = sub_2977FB720(&v38);
  v14 = sub_2978130B8(&v38);
  if (v13 == v14)
  {
LABEL_12:
    v23 = *a1;
    v24 = sub_2977FB720(a2);
    v25 = sub_2977FB5F0(v24);
    v26 = sub_29782AFB0(a2);
    v27 = sub_2977FB7B8(a2);
    v28 = sub_2978BE268(v27);
    v16 = sub_2978A116C(v23, 3, v25, v26, v28, v29, a3, a4, v38, v39);
    sub_2978B93D8(v16, v35);
  }

  else
  {
    v15 = v14;
    while (1)
    {
      v16 = *v13;
      if (!*v13)
      {
        break;
      }

      v17 = sub_2978862BC(*v13);
      v18 = sub_2978862C0(v16);
      if (v17 != v18)
      {
        v19 = v18;
        do
        {
          v20 = *v17;
          if (!sub_2978C497C(a1, *v17))
          {
            return 0;
          }

          v21 = sub_2978BDEBC(a1, v20);
          sub_2978B695C(v37, v21);
          if ((sub_2978B93C8(v37, v22) & 1) == 0)
          {
            v31 = sub_297847BE0(v20);
            v32 = sub_2978B93D0(v37);
            v33 = sub_297847BE0(v32);
            sub_2978B7A4C(a1, v21, v31, v33, 0);
            sub_2978B69A8(v37);
            return 0;
          }

          sub_2978BDC8C(a1, v20, a1[22]);
          sub_2978B69A8(v37);
          ++v17;
        }

        while (v17 != v19);
      }

      if (++v13 == v15)
      {
        goto LABEL_12;
      }
    }
  }

  return v16;
}

unsigned int *sub_2978B93E0(uint64_t *a1, uint64_t a2, int a3, int a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a6;
  v41 = a7;
  if (!sub_2978B84E4(a1))
  {
    v35 = sub_29782AFB0(a2);
    sub_2978B677C(a1, v35, 2486, v39);
    sub_29782963C(v39);
    return 0;
  }

  v14 = sub_2977FB720(&v40);
  v15 = sub_2978130B8(&v40);
  if (v14 != v15)
  {
    v16 = v15;
    do
    {
      v17 = *v14;
      if (!*v14)
      {
        return 0;
      }

      v18 = sub_2978862BC(*v14);
      v19 = sub_2978862C0(v17);
      if (v18 != v19)
      {
        while ((sub_2978C497C(a1, *v18) & 1) != 0)
        {
          if (++v18 == v19)
          {
            goto LABEL_8;
          }
        }

        return 0;
      }

LABEL_8:
      ++v14;
    }

    while (v14 != v16);
  }

  v20 = *a1;
  v21 = sub_2977FB720(a2);
  v22 = sub_2977FB5F0(v21);
  v23 = sub_29782AFB0(a2);
  v24 = sub_2977FB7B8(a2);
  v25 = sub_2978BE268(v24);
  v27 = sub_2978A116C(v20, 3, v22, v23, v25, v26, a3, a4, v40, v41);
  sub_2978B93D8(v27, a5);
  v28 = sub_29788C680(v27);
  v38 = *sub_297829064(a8);
  if (sub_2978B810C(&v38))
  {
    sub_2977FB7B4(v37, &byte_2978FC3E5);
    v28 = sub_2978C1780(a1, &v38, v28, v37[0], v37[1]);
  }

  v29 = *a1;
  v30 = sub_29782AFB0(a8);
  v31 = sub_2977FB7B8(a8);
  v32 = sub_297828314(v31);
  v34 = sub_2978A0E14(v29, v30, v32, v33, v28);
  if (sub_2978B810C(&v38))
  {
    sub_2978B812C(v34);
  }

  sub_2978B9064(v34);
  sub_2978B7D54(a1, v34);
  return v34;
}

_DWORD *sub_2978B95FC(uint64_t *a1, uint64_t a2, unsigned int *a3, int a4)
{
  v48 = a4;
  v46 = a3;
  v47 = a2;
  if (!a2)
  {
    return 0;
  }

  v7 = sub_2978B84F8(a2);
  v45 = v7;
  if (!v7)
  {
    v20 = sub_297847BE0(a2);
    sub_2978B677C(a1, v20, 2242, v44);
    v21 = v44;
    goto LABEL_15;
  }

  v8 = v7;
  if (sub_297887CEC(v7) == 2 && !sub_2978B994C(a3, a1[25]) && sub_2978B9974(a1[1]))
  {
    v9 = sub_297847BE0(v8);
    sub_2978B677C(a1, v9, 4740, v43);
    sub_29782963C(v43);
    sub_2978B999C(v8);
  }

  v42[0] = a1;
  v42[1] = &v46;
  v42[2] = &v47;
  v42[3] = &v45;
  v42[4] = &v48;
  if (sub_297887D1C(v8))
  {
    v10 = sub_297887D1C(v45);
    sub_2978C383C(a1, &v46, v10);
  }

  v37[0] = sub_2977FD5B0(v45);
  v11 = sub_29788C170(v46);
  if (sub_2978B5D80(v37, v11))
  {
    v37[0] = sub_2977FD5B0(v45);
    v12 = sub_2977FB720(v37);
    v13 = sub_297888660(v12);
    if (v13)
    {
      v14 = v13;
      v37[0] = sub_29788C170(v46);
      v15 = sub_2977FB720(v37);
      v16 = sub_29788865C(v15);
      if (v16)
      {
        v17 = v16;
        v37[0] = sub_2977FD5B0(v14);
        v18 = sub_2977FB7B8(v17);
        if (sub_2978B5D9C(v37, v18))
        {
          v19 = v17;
LABEL_25:
          sub_2977FDEF4(v37, v19);
          sub_2977FD5DC(v14, v37[0]);
          goto LABEL_32;
        }
      }

      v37[0] = sub_29788C170(v46);
      v25 = sub_2977FB720(v37);
      v26 = sub_297888660(v25);
      if (v26)
      {
        v37[0] = sub_2977FB7B8(v26);
        v27 = sub_2977FB720(v37);
        v28 = sub_297890568(v27);
        if (v28)
        {
          v19 = v28;
          goto LABEL_25;
        }
      }
    }

    else
    {
      v37[0] = sub_29788C170(v46);
      v29 = sub_2977FB720(v37);
      v30 = sub_297888660(v29);
      if (v30)
      {
        v31 = v30;
        v37[0] = sub_2977FB7B8(v30);
        v32 = sub_2977FD5B0(v45);
        if (sub_2978B5D9C(v37, v32))
        {
          goto LABEL_32;
        }

        v33 = sub_2977FB7B8(v31);
        return sub_2978B99AC(v42, v33);
      }
    }

    v33 = sub_29788C170(v46);
    return sub_2978B99AC(v42, v33);
  }

  if (sub_2978B84E4(a1))
  {
    v23 = sub_297887CEC(v45);
    if (!v23 || v23 == 2)
    {
      v39 = 0;
      if (sub_297896BA8(v46, a1[25], &v39))
      {
        goto LABEL_32;
      }

      v34 = sub_2977FB5F0(v46);
      sub_2978B677C(a1, v34, 2215, v38);
      sub_29782963C(v38);
      if (!v39)
      {
        return 0;
      }

      v35 = sub_2978A229C(v39);
      sub_2978B677C(a1, v35, 3584, v37);
      v36 = sub_2978A2A34(v39);
      sub_2978591B8(v37, &v36);
      v21 = v37;
    }

    else if (v23 == 7)
    {
      v24 = sub_297847BE0(v45);
      sub_2978B677C(a1, v24, 3125, v40);
      v21 = v40;
    }

    else
    {
      sub_2978B677C(a1, v48, 2777, v41);
      v21 = v41;
    }

LABEL_15:
    sub_29782963C(v21);
    return 0;
  }

LABEL_32:
  sub_29785BC50(v45, v46);
  return v45;
}

BOOL sub_2978B9974(uint64_t a1)
{
  v1 = sub_297883C64(a1);

  return sub_2978831D0(v1);
}

uint64_t sub_2978B99AC(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v3 = *a1;
  v4 = **(a1 + 8);
  v5 = sub_29788C514(**(a1 + 16));
  v6 = sub_2978C2F34(v3, v4, v5);
  if (v6)
  {
    sub_29785BC50(**(a1 + 24), v6);
    return **(a1 + 24);
  }

  else
  {
    sub_2978B677C(v3, **(a1 + 32), 2422, v10);
    v9 = sub_2977FD5B0(**(a1 + 24));
    v8 = sub_2978C1A84(v10, &v9);
    sub_2978C1A84(v8, &v11);
    sub_29782963C(v10);
    return 0;
  }
}

uint64_t sub_2978B9A6C(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_29788E754(a2))
  {
    v9 = sub_29788C514(a2);
    if (sub_29780B1BC(&v9))
    {
      v9 = sub_29788C514(a2);
      v4 = sub_2977FB720(&v9);
      v5 = sub_297888660(v4);
      if (v5)
      {
        if ((sub_2978B5138(v5) & 1) == 0)
        {
          v6 = sub_297847BE0(a2);
          sub_2978B677C(a1, v6, 3140, v8);
          sub_29782963C(v8);
        }
      }
    }
  }

  return sub_2978B7D54(a1, a2);
}

uint64_t sub_2978B9B10(uint64_t *a1, uint64_t a2)
{
  v75[11] = *MEMORY[0x29EDCA608];
  v4 = sub_2977FB7B8(a2);
  v5 = sub_297876C04(v4);
  if (v5)
  {
    v6 = sub_29788FA28(*a1, v5);
    if (sub_2978BA068(v6) || sub_2978BA06C(v6))
    {
      v7 = sub_29782AFB0(a2);
      v8 = a1;
      v9 = 2783;
    }

    else
    {
      v7 = sub_29782AFB0(a2);
      v8 = a1;
      v9 = 2820;
    }

    sub_2978B677C(v8, v7, v9, &v73);
    v49 = sub_2977FB7B8(a2);
    sub_297869558(&v73, v49);
    v48 = &v73;
    goto LABEL_34;
  }

  v10 = sub_2977FB7B8(a2);
  v73 = sub_297828314(v10);
  v74 = v11;
  sub_2977FB7B4(v72, "gl_");
  if (sub_297807C54(&v73, v72[0], v72[1]))
  {
    v12 = sub_29782AFB0(a2);
    sub_2978B677C(a1, v12, 2820, &v73);
    v13 = sub_2977FB7B8(a2);
    sub_297869558(&v73, v13);
    sub_29782963C(&v73);
  }

  v14 = sub_2977FB720(a1[23]);
  if (!sub_29783E4C0(v14))
  {
    v47 = sub_29782AFB0(a2);
    sub_2978B677C(a1, v47, 2455, v71);
    v48 = v71;
LABEL_34:
    sub_29782963C(v48);
    v46 = 0;
    goto LABEL_35;
  }

  v15 = sub_2977FB720(a2);
  v16 = a1[23];
  sub_2977FB7B4(&v73, &byte_2978FC3E5);
  v70 = sub_2978C169C(a1, v15, v16, v73, v74);
  if (sub_29780B1BC(&v70))
  {
    v17 = sub_2977FB720(&v70);
    if (sub_297888970(v17))
    {
      v18 = sub_29782AFB0(a2);
      sub_2978B677C(a1, v18, 3140, v69);
      sub_29782963C(v69);
    }
  }

  if (sub_2978BA070(v15))
  {
    v19 = sub_2977FB5F0(v15);
    sub_2978B677C(a1, v19, 2199, v68);
    sub_29782963C(v68);
  }

  v64 = sub_2978C1B60(a1, v15, v70);
  v20 = *a1;
  v21 = sub_29782AFB0(a2);
  v22 = sub_2977FB7B8(a2);
  v23 = sub_297828314(v22);
  v25 = v24;
  v26 = sub_2977FB5F0(v15);
  v27 = v70;
  v28 = sub_2978BA0E0(a2);
  v29 = sub_297885F38(a2);
  sub_2978A1400(v75, v29);
  v30 = sub_297829BD8(a2);
  sub_29780B1E8(&v73, v30);
  a1[24] = sub_2978A1414(v20, v21, v23, v25, v26, v27, v28, v64, v75, v73, v74);
  sub_2977FD134(v75);
  if (sub_2978B80B4(v15))
  {
    sub_2978BA108(a1[24]);
  }

  v31 = sub_2978BDEBC(a1, a1[24]);
  sub_2978B695C(&v73, v31);
  if (!sub_2978BA118(&v73, v32))
  {
LABEL_22:
    sub_2978B80FC(a1[24]);
    if (sub_2978BA118(&v73, v40))
    {
      sub_2978BA2C0(a1[24]);
    }

LABEL_24:
    v41 = sub_29788AB30(a1[24]);
    v42 = a1[24];
    if (v41)
    {
      v72[0] = sub_2978735BC(a1[24]);
      v43 = sub_2977FB720(v72);
      if (!sub_2978B90E0(v43) || sub_297888A90(a1[24] + 16))
      {
        v44 = sub_297847BE0(a1[24]);
        sub_2978B677C(a1, v44, 2397, v65);
        sub_29782963C(v65);
      }

      v42 = a1[24];
      if (!a1[26])
      {
        a1[26] = v42;
      }
    }

    v45 = sub_2977FB720(a1[23]);
    sub_2978BDC8C(a1, v42, v45);
    v46 = a1[24];
    goto LABEL_43;
  }

  v33 = 0;
  while (1)
  {
    v34 = sub_2978BA120(&v73, v33);
    v35 = sub_2978B6920(v34);
    if (v35)
    {
      break;
    }

    v38 = sub_2977FB720(a1[23]);
    v39 = sub_2978BA120(&v73, v33);
    if (sub_2978B7B74(v38, v39))
    {
      v57 = sub_297847BE0(a1[24]);
      sub_2978B677C(a1, v57, 2784, v72);
      v58 = sub_2978BDEBC(a1, a1[24]);
      sub_297869558(v72, v58);
      v56 = v72;
      goto LABEL_42;
    }

LABEL_21:
    if (++v33 >= sub_2978BA118(&v73, v37))
    {
      goto LABEL_22;
    }
  }

  v36 = v35;
  if (!sub_2978BA128(a1[24], v35))
  {
    goto LABEL_21;
  }

  v72[0] = sub_2978735BC(a1[24]);
  v52 = sub_2978735BC(v36);
  v53 = sub_2978B5D80(v72, v52);
  v54 = a1[24];
  if (v53)
  {
    v55 = sub_297847BE0(v54);
    sub_2978B677C(a1, v55, 2699, v67);
    v56 = v67;
  }

  else
  {
    v59 = sub_2978BA1F4(v54, v36);
    v60 = a1[24];
    if (v59)
    {
      sub_2978BA2B0(v60, v36);
      v61 = a1[24];
      *(sub_2978BA2B8(&v73) + 8 * v33) = v61;
      v62 = sub_2978B69AC(v36);
      sub_2978BA2B0(v62, a1[24]);
      goto LABEL_24;
    }

    v63 = sub_297847BE0(v60);
    sub_2978B677C(a1, v63, 2204, v66);
    v56 = v66;
  }

LABEL_42:
  sub_29782963C(v56);
  v46 = 0;
LABEL_43:
  sub_2978B69A8(&v73);
LABEL_35:
  v50 = *MEMORY[0x29EDCA608];
  return v46;
}

BOOL sub_2978BA070(uint64_t a1)
{
  if (sub_2978B848C(a1) || sub_2978B849C(a1) || (sub_2978B8554(a1) & 1) != 0 || sub_2978B84AC(a1))
  {
    return 1;
  }

  return sub_2978B84C4(a1);
}

uint64_t sub_2978BA0E0(uint64_t a1)
{
  v1 = sub_2977FB720(a1);

  return sub_2977FB5F0(v1);
}

uint64_t sub_2978BA128(uint64_t a1, uint64_t a2)
{
  v4 = sub_297888A90(a1 + 16);
  if (v4 != sub_297888A90(a2 + 16))
  {
    return 0;
  }

  v5 = sub_297803A7C(a1 + 16);
  v6 = sub_297803A7C(a2 + 16);
  if (v5 == sub_297888A34(a1 + 16))
  {
    return 1;
  }

  do
  {
    v10 = sub_2977FD5B0(*v5);
    v7 = sub_2977FD5B0(*v6);
    v8 = sub_2978B5D80(&v10, v7);
    if (v8)
    {
      break;
    }

    ++v5;
    ++v6;
  }

  while (v5 != sub_297888A34(a1 + 16));
  return v8 ^ 1u;
}

uint64_t sub_2978BA1F4(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_297888A28(a1);
  if (v4 != sub_297888A28(a2))
  {
    return 0;
  }

  v5 = sub_297803A7C((a1 + 4));
  v6 = sub_297803A7C((a2 + 4));
  while (v5 != sub_297888A34((a1 + 4)))
  {
    v7 = sub_297888A10(*v5);
    if (v7 != sub_297888A10(*v6))
    {
      return 0;
    }

    v8 = sub_297888A04(*v5);
    if (v8 != sub_297888A04(*v6))
    {
      return 0;
    }

    ++v5;
    ++v6;
  }

  return 1;
}

uint64_t sub_2978BA2D0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2978B9B10(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = sub_29781BF50(v4);
  v6 = v5;
  while ((sub_297888998(v6) & 1) == 0)
  {
    v6 = sub_29781F408(v6);
    if (sub_297888A68(v6))
    {
      v7 = sub_29782AFB0(a2);
      sub_2978B677C(a1, v7, 2791, v9);
      sub_29782963C(v9);
      return 0;
    }
  }

  return v5;
}

uint64_t sub_2978BA364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = sub_2978735BC(*(a1 + 192));
  v6 = sub_2977FB720(&v11);
  if ((sub_2978B90E0(v6) & 1) == 0 && (sub_2978BA3FC(*(a1 + 192)) & 1) == 0)
  {
    v7 = sub_297847BE0(a2);
    sub_2978B677C(a1, v7, 4728, v10);
    sub_29782963C(v10);
  }

  v8 = sub_29781BF50(a2);
  result = sub_2978BA408(v8, a3);
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_2978BA410(uint64_t a1, uint64_t a2)
{
  if (!sub_29783E4C0(*(a1 + 184)))
  {
    v7 = sub_29782B550(a2);
    sub_2978B677C(a1, v7, 2039, v14);
    v8 = v14;
LABEL_7:
    sub_29782963C(v8);
    return 0;
  }

  if (sub_2978B80F0(a2) != 7)
  {
    v9 = sub_29782B550(a2);
    sub_2978B677C(a1, v9, 2038, v13);
    v8 = v13;
    goto LABEL_7;
  }

  sub_2978A19CC(&v12);
  sub_297829180(&v11);
  sub_297829180(&v10);
  if (sub_2978C3150(a1, a2, &v12, &v11, &v10))
  {
    sub_2978C3B9C(a1, v12, v11, v10);
    sub_2978BA518(a1, v12, v11, v10);
    v4 = *a1;
    v5 = sub_29782B550(a2);
    return sub_2978A0F44(v4, v5, v12);
  }

  return 0;
}

_WORD *sub_2978BA518(uint64_t a1, int a2, int a3, int a4)
{
  v10 = a2;
  if (sub_297887D4C(&v10))
  {
    v7 = sub_297887D70(&v10);
    sub_2978B7170((a1 + 440), v7);
    *(a1 + 444) = a3;
  }

  result = sub_297887D7C(&v10);
  if (result)
  {
    v9 = sub_297887D88(&v10);
    result = sub_2978B7188((a1 + 440), v9);
    *(a1 + 448) = a4;
  }

  return result;
}

unsigned int *sub_2978BA59C(uint64_t *a1, unsigned int *a2, int a3)
{
  if (sub_2978B84BC(a2))
  {
    v6 = sub_2977FB5F0(a2);
    sub_2978B677C(a1, v6, 2467, v26);
    v7 = v26;
LABEL_3:
    sub_29782963C(v7);
    return 0;
  }

  v9 = sub_2978BA734(a2);
  if (v9 != 3 && v9 != 5)
  {
    v10 = sub_2978BA734(a2);
    if (!sub_2978BA740(v10))
    {
      v17 = sub_297805510(a2);
      if (v17)
      {
        v18 = v17;
        v19 = sub_2977FB5F0(a2);
        sub_2978B677C(a1, v19, 2468, v25);
        v20 = sub_29788C680(v18);
      }

      else
      {
        v21 = sub_2977FB5F0(a2);
        sub_2978B677C(a1, v21, 2468, v25);
        v22 = *a1;
        v23 = sub_2978BA734(a2);
        v20 = sub_2978B5844(v22, v23);
      }

      v24 = v20;
      sub_2978C1A84(v25, &v24);
      v7 = v25;
      goto LABEL_3;
    }
  }

  v11 = a1[23];
  v12 = sub_2978BA734(a2);
  v13 = sub_2978BA7D0(a2);
  sub_2978BA750(v11, v12, v13);
  v14 = *a1;
  v15 = sub_2978BA7D0(a2);
  v16 = sub_2978BA734(a2);

  return sub_2978A0EE0(v14, a3, v15, v16);
}

uint64_t sub_2978BA750(uint64_t result, int a2, char a3)
{
  v3 = (a3 & 3) << 8;
  if (a2 == 43)
  {
    v4 = -769;
  }

  else
  {
    v4 = -3073;
  }

  if (a2 != 43)
  {
    v3 = (a3 & 3) << 10;
  }

  if (a2 == 42)
  {
    v5 = -193;
  }

  else
  {
    v5 = v4;
  }

  if (a2 == 42)
  {
    v3 = (a3 & 3) << 6;
  }

  v6 = 4 * (a3 & 3);
  if (a2 == 5)
  {
    v7 = -13;
  }

  else
  {
    v7 = -49;
  }

  if (a2 != 5)
  {
    v6 = 16 * (a3 & 3);
  }

  if (a2 == 3)
  {
    v8 = -4;
  }

  else
  {
    v8 = v7;
  }

  if (a2 == 3)
  {
    v6 = a3 & 3;
  }

  if (a2 <= 41)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (a2 <= 41)
  {
    v10 = v6;
  }

  else
  {
    v10 = v3;
  }

  *(result + 12) = *(result + 12) & v9 | v10;
  return result;
}

_BYTE *sub_2978BA810(_BYTE *result, char a2, int a3, int a4)
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (a4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *result = v4 | a2 | v5 | *result & 0xF8;
  return result;
}

uint64_t sub_2978BA844(unsigned __int8 *a1, uint64_t a2)
{
  if (sub_2978B78A0(a1, a2))
  {
    return 1;
  }

  result = sub_2978B7378(a1);
  if (result)
  {

    return sub_297806904(result);
  }

  return result;
}

uint64_t sub_2978BA89C(unsigned __int8 *a1)
{
  result = sub_2978BA8D4(a1);
  if (!result)
  {
    v4 = sub_29788AA04(a1, v3);
    return *sub_29783D2C4(v4);
  }

  return result;
}

uint64_t sub_2978BA8D4(unsigned __int8 *a1)
{
  if (!sub_29783E2B8(a1))
  {
    return 0;
  }

  return sub_29788AA04(a1, v2);
}

uint64_t sub_2978BA940(unsigned __int8 *a1, uint64_t a2)
{
  if (sub_2978BA844(a1, a2))
  {
    return 0;
  }

  if (sub_29783E2B8(a1))
  {
    return 1;
  }

  v5 = sub_29788AA04(a1, v4);
  return sub_29780BD00(v5);
}

uint64_t sub_2978BA990(unsigned __int8 *a1, unsigned int a2)
{
  result = sub_2978BA8D4(a1);
  if (!result)
  {
    v6 = sub_29788AA04(a1, v5);
    return *sub_2978BA9D0(v6, a2);
  }

  return result;
}

uint64_t sub_2978BAA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    j_j_nullsub_1(&v8, a3);
    j_j_nullsub_1(&v7, &v8);
    sub_2978BAAC0(a1, a2, &v7);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_2978BAAC4(void *a1, uint64_t a2)
{
  v4 = sub_29788B3A0(a1);
  *v4 = &unk_2A1E57D90;
  j_nullsub_1(v4 + 1, a2);
  return a1;
}

uint64_t sub_2978BAB24(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  v4 = j_j_nullsub_1(&v13, v3);
  v5 = sub_29780C3B4(v4, 1uLL);
  sub_2977FB7C0(&v11, &v13, 1);
  sub_29788B48C(v12, v5, &v11);
  v6 = sub_2977FB720(v12);
  v8 = nullsub_1(a1 + 8, v7);
  j_j_nullsub_1(&v11, &v13);
  sub_2978BAAC0(v6, v8, &v11);
  v9 = sub_2978058AC(v12);
  sub_29788E244(v12);
  return v9;
}

uint64_t sub_2978BABD8(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(a1 + 8, a2);
  v6 = nullsub_1(a1 + 8, v5);

  return sub_2978BAAC0(a2, v4, v6);
}

uint64_t sub_2978BAC3C(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a1 + 8, a2);
  j_j_nullsub_1(&v6, v3);
  nullsub_1(a1 + 8, v4);
  return sub_297809D24(&v6, a1, 1);
}

uint64_t sub_2978BACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_2978BACD4(a1, v4);
}

uint64_t sub_2978BACDC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978BACFC();
  *(result + 24) = result;
  return result;
}

void *sub_2978BAD00(void *a1, __n128 *a2)
{
  v4 = sub_29788B3A0(a1);
  *v4 = &unk_2A1E57DD8;
  sub_2978BAD50((v4 + 1), a2);
  return a1;
}

void sub_2978BAD58()
{
  v0 = j_j_nullsub_1_123();

  j__free(v0);
}

uint64_t sub_2978BAD80(uint64_t a1)
{
  v2 = sub_2978BAE20();
  sub_29784CE50(&v6, &v8);
  sub_29788B48C(v7, v2, &v6);
  v3 = sub_2977FB720(v7);
  sub_2978BACFC(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

__n128 sub_2978BAE14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

_DWORD *sub_2978BAE44(uint64_t *a1, int a2, uint64_t a3)
{
  sub_2978B695C(v40, a3);
  v6 = sub_2978B8F80(v40);
  sub_2978B69A8(v40);
  if (v6)
  {
    v7 = sub_297828314(a3);
    v8 = a2;
    if (!sub_2978BDB24(a1, v6, v7, v9, a2))
    {
      return 0;
    }

    v10 = sub_29788FA28(*a1, v6);
    if (sub_2978BB0E8(v10))
    {
      v11 = sub_2978900B4(v10);
      sub_2978900F0(v10, a1[25]);
      v12 = *a1;
      v13 = sub_2978BB0EC(v10);
      v14 = sub_2978B5844(v12, v13);
      v15 = sub_2978BB100(v10);
      v16 = sub_2978BB10C(v10);
      return sub_2978A3810(v12, v8, v11, v14, v15, v16);
    }

    if (sub_2978BB118(v10))
    {
      v18 = sub_2978BB11C(v10);
      v19 = *a1;
      v20 = sub_2978BB0EC(v10);
      v21 = sub_2978B5844(v19, v20);
      v22 = sub_2978BB10C(v10);
      return sub_2978A3898(v19, v8, v18, v21, v22);
    }
  }

  v23 = sub_2978BE0EC(a1, a3);
  v39 = v23;
  if (v23)
  {
    v24 = v23;
    v25 = sub_2978B84F8(v23);
    if (v25)
    {
      v26 = v25;
      v27 = sub_2978C6BF0(a1, v25);
      v28 = sub_297887D1C(v26);
      return sub_2978A3178(*a1, v27, v28, a2, v24);
    }

    v33 = sub_2978BB120(v24);
    if (v33)
    {
      v35 = v33;
      v27 = sub_2978C6C8C(a1, v33);
      v28 = sub_297888A04(v35);
      return sub_2978A3178(*a1, v27, v28, a2, v24);
    }

    if (sub_2978BB15C(&v39, v34))
    {
      sub_2978B677C(a1, a2, 2878, v37);
      v32 = v37;
    }

    else
    {
      sub_2978B677C(a1, a2, 3095, v36);
      v32 = v36;
    }

    goto LABEL_18;
  }

  sub_2978B84F4(&v38, 1, 1, 0);
  v40[0] = sub_2978BEA0C(a1, a3, a2, &v38);
  v40[1] = v29;
  if (!sub_2977FB5F0(v40))
  {
    sub_2978B677C(a1, a2, 3109, v40);
    v30 = sub_297828314(a3);
    sub_2978295C0(v40, v30, v31);
    v32 = v40;
LABEL_18:
    sub_29782963C(v32);
  }

  return 0;
}

uint64_t sub_2978BB120(uint64_t a1)
{
  v2 = a1;
  if (sub_2978BD540(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_2978BB178(uint64_t a1, int a2, char a3)
{
  v6 = sub_2978A0C00(0x18u, a1, 8u);
  v7 = sub_2978B5B44(a1, 7);
  sub_2977FDEF4(&v9, v7);
  return sub_2978BD5FC(v6, v9, a2, a3);
}

_DWORD *sub_2978BB1F0(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v45[0] = a2;
  v45[1] = a3;
  v6 = sub_2978573A8(v39, a2, a3, a4, a1[20]);
  if (v39[112])
  {
    goto LABEL_8;
  }

  if (v42 == 1)
  {
    sub_2978B677C(a1, a4, 2379, v29);
    v7 = "long long";
LABEL_6:
    sub_29783F028(v29, v7);
    v8 = v29;
LABEL_7:
    sub_29782963C(v8);
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (v44 == 1)
  {
    sub_2978B677C(a1, a4, 2379, v29);
    v7 = "imaginary";
    goto LABEL_6;
  }

  if (sub_297857294(v6))
  {
    if (v41 == 1)
    {
      sub_2978B677C(a1, a4, 4730, v38);
      v8 = v38;
      goto LABEL_7;
    }

    v11 = sub_2977FB720(v45);
    v12 = strtof(v11, 0);
    sub_2977FC6C4(v37, v12);
    sub_2978BB654(v29);
    if (sub_2977FD228(v37))
    {
      sub_2977FC544(&unk_2978F4C38, 0, v36);
      sub_2977FC6C8(v36, v29, 0, 3u);
      sub_2977FA598(v36);
      v13 = 4741;
    }

    else
    {
      if (!sub_2977FA610(v37))
      {
LABEL_23:
        v20 = *a1;
        if (v43 == 1)
        {
          v21 = v32;
          sub_2977FA96C(v32, v37);
          v22 = sub_2978BB658(v20, a4, v32);
        }

        else
        {
          v21 = v31;
          sub_2977FA96C(v31, v37);
          v22 = sub_2978BB6E8(v20, a4, v31);
        }

        v9 = v22;
        sub_2977FA598(v21);
        sub_297801F60(v29);
        sub_2977FA598(v37);
        goto LABEL_9;
      }

      sub_2977FB734(&unk_2978F4C38, 0, v36);
      sub_2977FA59C(v37, v36);
      sub_2977FA598(v36);
      sub_2977FC588(&unk_2978F4C38, 0, v36);
      sub_2977FC6C8(v36, v29, 0, 3u);
      sub_2977FA598(v36);
      v13 = 4742;
    }

    sub_2978BB654(v36);
    sub_2977FC6C8(v37, v36, 0, 3u);
    sub_2978B677C(a1, a4, v13, v35);
    v15 = sub_297803A7C(v29);
    v16 = sub_2977FD0D4(v29);
    sub_2977FB7C0(&v33, v15, v16);
    v17 = sub_2978295C0(v35, v33, v34);
    v18 = sub_297803A7C(v36);
    v19 = sub_2977FD0D4(v36);
    sub_2977FB7C0(&v33, v18, v19);
    sub_2978295C0(v17, v33, v34);
    sub_29782963C(v35);
    sub_297801F60(v36);
    goto LABEL_23;
  }

  sub_29787C960(v39);
  if (v41 == 1)
  {
    sub_2978B677C(a1, a4, 2379, v29);
    v7 = "long";
    goto LABEL_6;
  }

  v14 = v40;
  sub_2977FB51C(v36, 32, 0, v40 ^ 1u);
  if (sub_2978575F0(v39, v36))
  {
    sub_2977FB51C(v37, 64, 0, (v40 & 1) == 0);
    if (sub_2978575F0(v39, v37))
    {
      sub_2978B677C(a1, a4, 2304, v30);
      sub_29782963C(v30);
    }

    else
    {
      sub_2978068F8(v29);
      sub_297801AA0(v37, v29, 0xAu, (v40 & 1) == 0, 0);
      sub_2978B677C(a1, a4, 2303, v35);
      v25 = sub_297801F10(v29);
      sub_2978295C0(v35, v25, v26);
      sub_29782963C(v35);
      sub_297801F60(v29);
    }

    sub_2977FAA04(v37);
    v9 = 0;
  }

  else
  {
    v23 = *a1;
    if (v14)
    {
      sub_2977FB630(v27, v36);
      v9 = sub_2978BB808(v23, a4, v27);
      v24 = v27;
    }

    else
    {
      sub_2977FB630(v28, v36);
      v9 = sub_2978BB778(v23, a4, v28);
      v24 = v28;
    }

    sub_2977FAA04(v24);
  }

  sub_2977FAA04(v36);
LABEL_9:
  sub_2978716B8(v39);
  return v9;
}

_DWORD *sub_2978BB658(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_2978A0C00(0x28u, a1, 8u);
  v7 = sub_2978B5B44(a1, 4);
  sub_2977FDEF4(&v10, v7);
  sub_2977FA958(v9, a3);
  sub_2978BD650(v6, v10, a2, v9);
  sub_2977FA598(v9);
  return v6;
}

_DWORD *sub_2978BB6E8(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_2978A0C00(0x28u, a1, 8u);
  v7 = sub_2978B5B44(a1, 3);
  sub_2977FDEF4(&v10, v7);
  sub_2977FA958(v9, a3);
  sub_2978BD6B0(v6, v10, a2, v9);
  sub_2977FA598(v9);
  return v6;
}

_DWORD *sub_2978BB778(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_2978A0C00(0x20u, a1, 8u);
  v7 = sub_2978B5B44(a1, 5);
  sub_2977FDEF4(&v10, v7);
  sub_2977FB630(v9, a3);
  sub_2978BD710(v6, v10, a2, v9);
  sub_2977FAA04(v9);
  return v6;
}

_DWORD *sub_2978BB808(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_2978A0C00(0x20u, a1, 8u);
  v7 = sub_2978B5B44(a1, 6);
  sub_2977FDEF4(&v10, v7);
  sub_2977FB630(v9, a3);
  sub_2978BD770(v6, v10, a2, v9);
  sub_2977FAA04(v9);
  return v6;
}

uint64_t sub_2978BB898(uint64_t *a1, unsigned int a2, int a3, uint64_t a4, int a5)
{
  v13 = sub_2978C1D30(a1, a3, a4, a2);
  if (!sub_29780B1BC(&v13))
  {
    return 0;
  }

  v10 = *a1;
  v11 = sub_29788C170(a4);
  return sub_2978A30FC(v10, a2, a4, v11, a3, a5);
}

void *sub_2978BB930(uint64_t *a1, unsigned int *a2, int a3, uint64_t a4, int a5)
{
  v49 = sub_29788C170(a2);
  v10 = sub_29788BD30(a2);
  v11 = v10;
  v48 = v10;
  v12 = sub_2977FB720(&v49);
  v13 = sub_2978876EC(v12);
  if (v13)
  {
    v47.__r_.__value_.__r.__words[0] = sub_2978C3E1C(a1, v13, &v48, a3, a4, a5);
    result = sub_2977FB720(&v47);
    if (result)
    {
      v15 = sub_29788BC5C(a2);
      return sub_2978A3B04(*a1, v48, v47.__r_.__value_.__l.__data_, v15, a2, a4, a5);
    }
  }

  else
  {
    v16 = sub_2977FB720(&v49);
    v17 = sub_297887DB4(v16);
    if (v17)
    {
      v18 = v17;
      v19 = sub_2977FB7B8(v17);
      v20 = sub_2978BBBF0(v19 + 16);
      v22 = v21;
      v23 = sub_2977FB7B8(v18);
      v24 = sub_2978BDEBC(a1, v23);
      result = sub_2978C3D10(a1, v20, v22, a3, a4, v24);
      if (result)
      {
        v25 = result;
        v26 = sub_297887D1C(result);
        v27 = sub_2977FD5B0(v25);
        return sub_2978A39A4(*a1, v11, v27, v26, a2, a4, a5);
      }
    }

    else
    {
      v28 = sub_2977FB720(&v49);
      v29 = sub_297887E3C(v28);
      if (v29)
      {
        v30 = v29;
        v31 = sub_2977FB7B8(v29);
        v32 = sub_2978BBC3C(v31 + 16);
        v34 = v33;
        v35 = sub_2977FB7B8(v30);
        v36 = sub_2978BDEBC(a1, v35);
        result = sub_2978C3D10(a1, v32, v34, a3, a4, v36);
        if (result)
        {
          v37 = result;
          v38 = sub_297887D1C(result);
          v39 = sub_2977FD5B0(v37);
          return sub_2978A3A54(*a1, v11, v39, v38, a2, a4, a5);
        }
      }

      else
      {
        sub_297802744(&v47);
        v40 = sub_2977FB720(&v49);
        sub_2978B4D64(v40, &v47);
        v41 = sub_2977FB5F0(a2);
        sub_2978B677C(a1, v41, 1875, v46);
        v42 = sub_297869558(v46, a4);
        std::operator+<char>();
        sub_297808D80(&v43, "'", &v44);
        sub_2978044E8(v45, &v44);
        sub_2978295C0(v42, v45[0], v45[1]);
        std::string::~string(&v44);
        std::string::~string(&v43);
        sub_29782963C(v46);
        std::string::~string(&v47);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2978BBBF0(uint64_t a1)
{
  v2 = sub_297803A7C(a1);
  v3 = sub_297888490(a1);
  sub_2978A1858(&v5, v2, v3);
  return v5;
}

uint64_t sub_2978BBC3C(uint64_t a1)
{
  v2 = sub_297803A7C(a1);
  v3 = sub_2978885E0(a1);
  sub_2978A1858(&v5, v2, v3);
  return v5;
}

_DWORD *sub_2978BBC88(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v21.__r_.__value_.__r.__words[0] = sub_29788C170(a2);
  v8 = sub_2977FB720(&v21);
  if ((sub_2978BA7E8(v8) & 1) == 0)
  {
    v21.__r_.__value_.__r.__words[0] = sub_29788C170(a2);
    v9 = sub_2977FB720(&v21);
    v10 = sub_297888660(v9);
    if (!v10 || (v11 = v10, !sub_2978B5138(v10)) || (v21.__r_.__value_.__r.__words[0] = sub_2977FB7B8(v11), v12 = sub_2977FB720(&v21), (sub_2978BA7E8(v12) & 1) == 0))
    {
      sub_297802744(&v21);
      v18.__r_.__value_.__r.__words[0] = sub_29788C170(a2);
      v13 = sub_2977FB720(&v18);
      sub_2978B4D64(v13, &v21);
      sub_2978B677C(a1, a3, 1873, v20);
      std::operator+<char>();
      sub_297808D80(&v17, "'", &v18);
      sub_2978044E8(v19, &v18);
      v14 = sub_2978295C0(v20, v19[0], v19[1]);
      v19[0] = sub_2978A2A34(a2);
      sub_2978591B8(v14, v19);
      std::string::~string(&v18);
      std::string::~string(&v17);
      sub_29782963C(v20);
      std::string::~string(&v21);
    }
  }

  v15 = sub_2978B5844(*a1, 5);
  return sub_2978A33D8(*a1, 0, v15, a2, a3, a4);
}

unint64_t sub_2978BBE08(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int *a6)
{
  if (sub_2977FB5F8(a2) && sub_2977FB634(a2))
  {
    v12 = sub_2977FB5F0(a6);
    sub_2978B677C(a1, v12, 2454, v24);
    v13 = sub_29785965C(v24, a3);
    v14 = sub_297801E44(a2);
    sub_2978563C8(v13, v14);
  }

  else
  {
    result = sub_2977FCF34(a2);
    if (result < a4)
    {
      return result;
    }

    v16 = sub_2977FB5F0(a6);
    sub_2978B677C(a1, v16, 2276, v24);
    v17 = sub_29785965C(v24, a3);
    v18 = sub_2977FCF34(a2);
    sub_29785965C(v17, v18);
  }

  sub_29782963C(v24);
  result = sub_29788BFD0(a5);
  if (result)
  {
    v19 = result;
    v20 = sub_2977FB7B8(result);
    v21 = sub_297847BE0(v20);
    sub_2978B677C(a1, v21, 3680, v24);
    v22 = sub_2977FB7B8(v19);
    v23 = sub_2978BDEBC(a1, v22);
    sub_297869558(v24, v23);
    return sub_29782963C(v24);
  }

  return result;
}

_DWORD *sub_2978BBF5C(uint64_t *a1, uint64_t a2, int a3, unsigned int *a4, int a5)
{
  v10 = sub_29788C170(a4);
  if ((sub_297892F04(v10) & 1) == 0)
  {
    sub_2978B677C(a1, a3, 3079, v48);
    v20 = v48;
    goto LABEL_6;
  }

  sub_29780AE44(&v47);
  v45[0] = sub_29788C170(a2);
  v11 = sub_2977FB720(v45);
  sub_2977FDEF4(&v46, v11);
  v12 = sub_2977FB720(&v46);
  v13 = sub_2978876EC(v12);
  if (v13)
  {
    v14 = v13;
    v15 = sub_29788BD30(a2);
    v16 = sub_2977FB7B8(v14);
    sub_2977FDEF4(v45, v16);
    v47 = v45[0];
    sub_2978BC27C(v45);
    if (sub_2978BC280(a4, a1[25], v45))
    {
      v17 = sub_297887A38(v14);
      v18 = a1;
      v19 = 2;
LABEL_13:
      sub_2978BBE08(v18, v45, v19, v17, a2, a4);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v22 = sub_2977FB720(&v46);
  v23 = sub_2978877CC(v22);
  if (!v23)
  {
    v29 = sub_2977FB720(&v46);
    v30 = sub_29788865C(v29);
    if (v30)
    {
      v31 = v30;
      v15 = sub_29788BD30(a2);
      v47 = sub_2977FB7B8(v31);
      sub_2978BC27C(v45);
      if (!sub_2978BC280(a4, a1[25], v45))
      {
        v36 = sub_2977FB720(&v47);
        if (sub_2978B90B8(v36))
        {
          v37 = sub_2977FB5F0(a4);
          sub_2978B677C(a1, v37, 2830, v44);
          sub_29782963C(v44);
        }

        v38 = sub_29788BFD0(a2);
        if (v38)
        {
          v39 = sub_2977FB7B8(v38);
          v40 = sub_2978B84F8(v39);
          if (v40)
          {
            if (sub_297887CEC(v40) == 4)
            {
              v41 = sub_2977FB5F0(a4);
              sub_2978B677C(a1, v41, 2191, v43);
              sub_29782963C(v43);
            }
          }
        }

        goto LABEL_14;
      }

      v17 = sub_29782AFB0(v31);
      v18 = a1;
      v19 = 0;
      goto LABEL_13;
    }

    sub_2978B677C(a1, a3, 2220, v42);
    v20 = v42;
LABEL_6:
    sub_29782963C(v20);
    return 0;
  }

  v24 = v23;
  v15 = sub_29788BD30(a2);
  v25 = *a1;
  v26 = sub_2977FB7B8(v24);
  v27 = sub_2978875FC(v26);
  v28 = sub_297887B08(v24);
  v47 = sub_2978B546C(v25, v27, v28);
  sub_2978BC27C(v45);
  if (sub_2978BC280(a4, a1[25], v45))
  {
    v17 = sub_297887A38(v24);
    v18 = a1;
    v19 = 1;
    goto LABEL_13;
  }

LABEL_14:
  sub_297871794(v45);
  if (!sub_29788BC5C(a4))
  {
    v45[0] = sub_29788C170(a4);
    v32 = sub_2977FB720(v45);
    v33 = sub_297890568(v32);
    v34 = sub_29788862C(v33);
    v35 = sub_2978BC2A8(a1[23], v34);
    sub_2978A2D74(a4, v35);
  }

  return sub_2978A3350(*a1, v15, v47, a2, a4, a3, a5);
}

uint64_t sub_2978BC2A8(uint64_t a1, int a2)
{
  result = 0;
  if (a2 <= 40)
  {
    if ((a2 - 3) >= 2)
    {
      if ((a2 - 5) < 2)
      {
        return (*(a1 + 12) >> 2) & 3;
      }

      return result;
    }

    LOWORD(a1) = *(a1 + 12);
    return a1 & 3;
  }

  if (a2 > 42)
  {
    if (a2 == 43)
    {
      LOBYTE(a1) = *(a1 + 13);
      return a1 & 3;
    }

    if (a2 == 44)
    {
      return (*(a1 + 12) >> 10) & 3;
    }
  }

  else if (a2 == 41)
  {
    return (*(a1 + 12) >> 4) & 3;
  }

  else
  {
    return *(a1 + 12) >> 6;
  }

  return result;
}

_DWORD *sub_2978BC33C(uint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v21 = a4;
  v19 = sub_2978C22B8(a1, a3, &v21, &v20, a2);
  if (!sub_29780B1BC(&v19))
  {
    return 0;
  }

  if (a3 == 18)
  {
    v18[0] = sub_29788C170(v20);
    v8 = sub_2977FB720(v18);
    if (sub_297890438(v8))
    {
      sub_2978BC27C(v18);
      if (sub_2978BC280(v20, a1[25], v18))
      {
        if (sub_2977FF7C0(v18))
        {
          sub_2978B677C(a1, a2, 4269, v17);
          v16 = sub_2978A2A34(v20);
          sub_2978591B8(v17, &v16);
          sub_29782963C(v17);
        }

        if (sub_2977FB634(v18))
        {
          sub_2978B677C(a1, a2, 4142, v17);
          v16 = sub_2978A2A34(v20);
          sub_2978591B8(v17, &v16);
          sub_29782963C(v17);
        }
      }

      sub_297871794(v18);
    }

    v18[0] = sub_29788C170(v21);
    v9 = sub_2977FB720(v18);
    if (!sub_297890438(v9))
    {
      goto LABEL_25;
    }

    sub_2978BC27C(v18);
    if (!sub_2978BC280(v21, a1[25], v18) || !sub_2977FB634(v18))
    {
      goto LABEL_24;
    }

    sub_2978B677C(a1, a2, 4142, v17);
    v10 = v21;
    goto LABEL_23;
  }

  if ((a3 & 0xFFFFFFFE) != 0xE)
  {
    goto LABEL_25;
  }

  v18[0] = sub_29788C170(v20);
  v12 = sub_2977FB720(v18);
  if (!sub_297890438(v12))
  {
    goto LABEL_25;
  }

  sub_2978BC27C(v18);
  if (sub_2978BC280(v20, a1[25], v18))
  {
    if (sub_2977FB634(v18))
    {
      v13 = a1;
      v14 = a2;
      v15 = 4293;
LABEL_22:
      sub_2978B677C(v13, v14, v15, v17);
      v10 = v20;
LABEL_23:
      v16 = sub_2978A2A34(v10);
      sub_2978591B8(v17, &v16);
      sub_29782963C(v17);
      goto LABEL_24;
    }

    if (sub_2977FCF34(v18) >= 0x20)
    {
      v13 = a1;
      v14 = a2;
      v15 = 4292;
      goto LABEL_22;
    }
  }

LABEL_24:
  sub_297871794(v18);
LABEL_25:
  sub_2978C3AE4(a1, &v21, &v20);
  return sub_2978A3004(*a1, a2, v21, v20, v19, a3);
}

_DWORD *sub_2978BC5A4(uint64_t *a1, int a2, int a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v29 = a6;
  v30 = a5;
  v28 = sub_29788C170(a4);
  v27 = sub_29788C170(a5);
  v12 = sub_29788C170(a6);
  v26 = v12;
  if (sub_2978B5D80(&v27, v12))
  {
    v13 = sub_2978C2F34(a1, a6, v27);
    if (v13)
    {
      v29 = v13;
      sub_29788C170(v13);
    }

    else
    {
      v14 = sub_2978C2F34(a1, a5, v12);
      if (!v14)
      {
        sub_2978B677C(a1, a3, 2424, v25);
        v20 = sub_2978C1A84(v25, &v27);
        v21 = sub_2978C1A84(v20, &v26);
        v24 = sub_2978A2A34(a5);
        v22 = sub_2978591B8(v21, &v24);
        v23 = sub_2978A2A34(a6);
        sub_2978591B8(v22, &v23);
        goto LABEL_10;
      }

      v30 = v14;
      v27 = sub_29788C170(v14);
    }
  }

  v15 = sub_2977FB720(&v28);
  if (sub_2978970D4(v15))
  {
    v16 = sub_2977FB720(&v28);
    v17 = sub_297890568(v16);
    if (sub_29788862C(v17) == 7)
    {
      sub_2978C3AE4(a1, &v30, &v29);
      return sub_2978A3080(*a1, a4, a2, v30, v29, v27);
    }
  }

  v19 = sub_2977FB5F0(a4);
  sub_2978B677C(a1, v19, 3007, v25);
  sub_2978C1A84(v25, &v28);
LABEL_10:
  sub_29782963C(v25);
  return 0;
}

uint64_t sub_2978BC760(uint64_t *a1, unsigned int a2, int a3, uint64_t a4, unsigned int *a5)
{
  v17 = a5;
  v16 = sub_2978C2D04(a1, a3, a4, &v17, a2);
  if (!sub_29780B1BC(&v16))
  {
    return 0;
  }

  if (!sub_29788BD30(a4))
  {
    sub_2978B677C(a1, a2, 3041, v15);
    v14 = sub_2978A2A34(a4);
    sub_2978591B8(v15, &v14);
    sub_29782963C(v15);
    return 0;
  }

  v9 = sub_29788BC5C(a4);
  LODWORD(v15[0]) = v9;
  v10 = sub_29788BC5C(v17);
  LODWORD(v14) = v10;
  if (a3 == 4)
  {
    v11 = v9;
  }

  else
  {
    v13 = sub_2977FF288(v15, &v14);
    v10 = v14;
    v11 = *v13;
    v9 = v15[0];
  }

  if (v10 != v11 && v9)
  {
    if (v10)
    {
      v17 = sub_2978A3904(*a1, v9, v17);
    }

    else
    {
      sub_2978A2D74(v17, v9);
    }
  }

  return sub_2978A2E04(*a1, a2, a4, v17, a3, v11);
}

unsigned int *sub_2978BC8AC(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v41 = a4;
  v42 = a5;
  sub_2978B695C(v40, a3);
  v10 = sub_2978BA2B8(v40);
  v11 = sub_2978BCB50(v40);
  if (v10 == v11)
  {
    goto LABEL_6;
  }

  v12 = v11;
  while (1)
  {
    v13 = sub_29781BF50(*v10);
    v14 = sub_2977FB7B8(&v41);
    if (v14 == sub_297888A90(v13 + 8))
    {
      v15 = sub_297803A7C((v13 + 8));
      v16 = sub_297888A34((v13 + 8));
      sub_2978A1858(v39, v15, v16);
      if (sub_2978BCB58(v39[0], v39[1], v41, v42))
      {
        break;
      }
    }

    if (++v10 == v12)
    {
      goto LABEL_6;
    }
  }

  if (!v13)
  {
LABEL_6:
    sub_2978B677C(a1, a2, 2703, v39);
    sub_297869558(v39, a3);
    v17 = v39;
    goto LABEL_7;
  }

  if (sub_2977FB7B8(&v41))
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = sub_29788A818((v13 + 8), v21);
      if (sub_2978A35CC(*v22))
      {
        v23 = sub_2978BCC04(&v41, v20);
        if (sub_29788BD30(*v23) != 1)
        {
          break;
        }
      }

      v20 = ++v21;
      if (sub_2977FB7B8(&v41) <= v21)
      {
        goto LABEL_16;
      }
    }

    v31 = sub_2978BCC04(&v41, v20);
    v32 = sub_2977FB5F0(*v31);
    sub_2978B677C(a1, v32, 2121, v38);
    sub_29782963C(v38);
    v33 = sub_2978BCC04(&v41, v20);
    v34 = sub_2978A2F8C(*v33);
    v18 = v34;
    if (v34)
    {
      v35 = sub_2977FD5B0(v34);
      if (sub_29788BD30(v35) != 1)
      {
        goto LABEL_8;
      }

      v36 = sub_2977FB5F0(v18);
      sub_2978B677C(a1, v36, 3797, v37);
      v17 = v37;
LABEL_7:
      sub_29782963C(v17);
LABEL_8:
      v18 = 0;
    }
  }

  else
  {
LABEL_16:
    v24 = sub_297803A7C((v13 + 8));
    v25 = sub_29789056C(&v41);
    v26 = sub_2978BCC2C(&v41);
    if (v25 != v26)
    {
      v27 = v26;
      do
      {
        v28 = sub_297888A04(*v24);
        if (v28)
        {
          sub_2978C383C(a1, v25, v28);
        }

        ++v24;
        ++v25;
      }

      while (v25 != v27);
    }

    v18 = sub_2978A3458(*a1, v13, a2, v41, v42, a6);
    v29 = a1[24];
    if (v29)
    {
      v39[0] = sub_2978B69AC(v29);
      v30 = sub_2978B6C94((a1 + 57), v39);
      sub_2978BCC60(v30, v18, a1 + 2);
    }
  }

  sub_2978B69A8(v40);
  return v18;
}

uint64_t sub_2978BCB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a1;
  v14[1] = a2;
  v13[0] = a3;
  v13[1] = a4;
  if (!sub_2977FB7B8(v14))
  {
    return 1;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = sub_2977FE5F8(v14, v4);
    v12 = sub_2977FD5B0(*v6);
    v7 = sub_2977FE5F8(v13, v4);
    v8 = sub_29788C170(*v7);
    v9 = sub_2978B5D80(&v12, v8);
    if (v9)
    {
      break;
    }

    v4 = v5;
  }

  while (sub_2977FB7B8(v14) > v5++);
  return v9 ^ 1u;
}

void *sub_2978BCC60(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v13 = a2;
  sub_2978BD7D0(&v12, a3);
  if (sub_2978B78A0(a1, v5))
  {
    sub_2978B77A4(a1, &v13);
  }

  else
  {
    v11 = sub_2978BA8D4(a1);
    if (v11)
    {
      sub_2978BD7D4(a1, a3);
      v8 = sub_29788AA04(a1, v7);
      sub_2978BD83C(v8, &v11, &v12);
    }

    v9 = sub_29788AA04(a1, v6);
    sub_2978BD83C(v9, &v13, &v12);
  }

  return sub_2978BD894(&v12);
}

void sub_2978BCD04(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v52[0] = a3;
  v52[1] = a4;
  if (!*sub_2978BCC04(v52, 0) || (v6 = sub_2978BCC04(v52, 0), (sub_29788C710(v6) & 1) == 0))
  {
    sub_2978B677C(a1, a2, 1758, v51);
    v17 = v51;
    goto LABEL_8;
  }

  v7 = sub_2978BCC04(v52, 0);
  v8 = sub_29781BF50(*v7);
  v9 = sub_2977FB7B8(v8);
  v50[0] = sub_29788709C(v9);
  v50[1] = v10;
  sub_2977FB7B4(&v49, "type_is_");
  if (sub_297807C54(v50, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_))
  {
    v11 = sub_2978187D4(v50, 8uLL);
    v13 = v12;
    sub_297802744(&v49);
    v14 = sub_2978BCC04(v52, 1);
    v48[0] = sub_29788C170(*v14);
    v15 = sub_2977FB720(v48);
    sub_2978B4D64(v15, &v49);
    sub_2978044E8(v48, &v49);
    if (sub_297808D64(v11, v13, v48[0], v48[1]))
    {
      sub_2978B677C(a1, a2, 1757, v48);
      v16 = sub_2978295C0(v48, v11, v13);
      sub_2978044E8(&v46, &v49);
      sub_2978295C0(v16, v46, v47);
      sub_29782963C(v48);
    }

    std::string::~string(&v49);
    return;
  }

  sub_2977FB7B4(&v49, "precision_is_");
  if (!sub_297807C54(v50, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_))
  {
    sub_2977FB7B4(&v49, "sa_failed");
    if (sub_297807C54(v50, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_))
    {
      if (!*sub_2978BCC04(v52, 1))
      {
        return;
      }

      sub_2978B677C(a1, a2, 1756, v36);
      v17 = v36;
    }

    else
    {
      sub_2978B677C(a1, a2, 1758, v35);
      v17 = v35;
    }

LABEL_8:
    sub_29782963C(v17);
    return;
  }

  v18 = sub_2978BCC04(v52, 1);
  v19 = sub_29788BC5C(*v18);
  v20 = sub_2978187D4(v50, 0xDuLL);
  v22 = v21;
  sub_2978102C8(&v49, v20, v21);
  v44 = 1;
  sub_2978BD100(v48, &v44);
  v23 = sub_29781049C(&v49, "lowp", v48);
  v43 = 2;
  sub_2978BD100(&v46, &v43);
  v24 = sub_2978102CC(v23, "mediump", &v46);
  v41 = 3;
  sub_2978BD100(v42, &v41);
  v25 = sub_2978103B4(v24, "highp", v42);
  v39 = 0;
  sub_2978BD100(v40, &v39);
  v26 = sub_297810428(v25, "nop", v40);
  sub_2978BD118(v38);
  sub_2978BD104(v26, v38, v45);
  sub_2978BD11C(v38, v27);
  sub_2978BD11C(v40, v28);
  sub_2978BD11C(v42, v29);
  sub_2978BD11C(&v46, v30);
  sub_2978BD11C(v48, v31);
  if (sub_29787E544(v45))
  {
    if (*j_nullsub_1(v45, v32) != v19)
    {
      sub_297802744(&v49);
      if (v19 <= 3)
      {
        sub_29780349C(&v49, (&off_29EE81478)[v19]);
      }

      sub_2978B677C(a1, a2, 1755, v48);
      v34 = sub_2978295C0(v48, v20, v22);
      sub_2978044E8(&v46, &v49);
      sub_2978295C0(v34, v46, v47);
      sub_29782963C(v48);
      std::string::~string(&v49);
    }
  }

  else
  {
    sub_2978B677C(a1, a2, 1758, v37);
    sub_29782963C(v37);
  }

  sub_2978BD11C(v45, v33);
}

uint64_t sub_2978BD104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    a2 = *(a1 + 16);
  }

  return sub_2978BDAD4(a3, a2);
}

uint64_t sub_2978BD120(uint64_t *a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v54 = a5;
  v55 = a6;
  v11 = sub_29788FA28(*a1, a4);
  if (!sub_2978BA068(v11))
  {
    sub_2978BA06C(v11);
    v16 = sub_2978BD4E8(v11);
    v17 = v16;
    v50 = sub_2978C5A84(a1, v16, a5, a6, a2);
    if (sub_29780B1BC(&v50))
    {
      v18 = sub_29789056C(&v54);
      v19 = sub_29788BC5C(*v18);
      return sub_2978A3710(*a1, v17, v50, v19, a2, v54, v55, a3);
    }

    return 0;
  }

  v53 = sub_2978BD48C(v11);
  v52 = sub_2978C5E88(a1, &v53, a5, a6, a2);
  if (!sub_29780B1BC(&v52))
  {
    return 0;
  }

  if (v53 <= 48)
  {
    v21 = 3;
    switch(v53)
    {
      case '.':
        goto LABEL_40;
      case '/':
        goto LABEL_17;
      case '0':
LABEL_40:
        v28 = *a1;
        v29 = v53;
        v30 = v52;
        v27 = a3;
        v25 = v54;
        v26 = v55;
        return sub_2978A3610(v28, v29, v30, v21, a2, v25, v26, v27);
    }

LABEL_19:
    v31 = sub_2978C37A4(v54, v55);
    if (v31)
    {
      v32 = v31;
LABEL_21:
      v33 = sub_29789056C(&v54);
      v34 = sub_2978BCC2C(&v54);
      if (v33 != v34)
      {
        v35 = v34;
        do
        {
          v50 = sub_29788C170(*v33);
          v36 = sub_2977FB720(&v50);
          if (sub_2978B5368(v36))
          {
            sub_2978C383C(a1, v33, v32);
          }

          ++v33;
        }

        while (v33 != v35);
      }

      v37 = 0;
      goto LABEL_34;
    }

    v42 = sub_29789056C(&v54);
    v43 = sub_2978BCC2C(&v54);
    if (v42 == v43)
    {
LABEL_32:
      LOBYTE(v32) = 0;
    }

    else
    {
      v44 = v43;
      while (1)
      {
        v45 = *v42;
        v50 = sub_29788C170(*v42);
        v46 = sub_2977FB720(&v50);
        if (sub_2978B5368(v46))
        {
          break;
        }

        if (++v42 == v44)
        {
          goto LABEL_32;
        }
      }

      v49 = sub_29788C170(v45);
      v32 = sub_2978BD490(a1, v49);
      if (v32)
      {
        goto LABEL_21;
      }
    }

    v37 = 1;
LABEL_34:
    v47 = sub_2977FB720(&v52);
    v48 = sub_2978B5368(v47);
    if (v48)
    {
      v21 = v32;
    }

    else
    {
      v21 = 0;
    }

    if (v37)
    {
      if (v48)
      {
        v21 = sub_2978BD490(a1, v52);
      }
    }

    goto LABEL_40;
  }

  if (v53 > 50)
  {
    if (v53 == 51)
    {
      v38 = sub_2978BCC04(&v54, 0);
      sub_2978C383C(a1, v38, 3);
      v39 = *a1;
      v40 = v53;
      v41 = v52;
      sub_29784CE50(&v50, v38);
      v25 = v50;
      v26 = v51;
      v27 = a3;
      v28 = v39;
      v29 = v40;
      v30 = v41;
      v21 = 2;
      return sub_2978A3610(v28, v29, v30, v21, a2, v25, v26, v27);
    }

    if (v53 == 74)
    {
      sub_2978BCD04(a1, a2, v54, v55);
      return 0;
    }

    goto LABEL_19;
  }

  if (v53 == 49)
  {
LABEL_17:
    v12 = sub_2978BCC04(&v54, 0);
    v13 = a1;
    v14 = v12;
    v15 = 3;
    goto LABEL_18;
  }

  v12 = sub_2978BCC04(&v54, 0);
  v13 = a1;
  v14 = v12;
  v15 = 2;
LABEL_18:
  sub_2978C383C(v13, v14, v15);
  v22 = *a1;
  v23 = v53;
  v24 = v52;
  sub_29784CE50(&v50, v12);
  v25 = v50;
  v26 = v51;
  v27 = a3;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  v21 = 3;
  return sub_2978A3610(v28, v29, v30, v21, a2, v25, v26, v27);
}

uint64_t sub_2978BD490(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v3 = sub_2977FB720(&v9);
  v8 = sub_2978B5074(v3);
  v4 = sub_2977FB720(&v8);
  v5 = sub_297890568(v4);
  v6 = sub_29788862C(v5);
  return sub_2978BC2A8(*(a1 + 184), v6);
}

_DWORD *sub_2978BD50C(_DWORD *a1)
{
  result = sub_297802694(a1);
  *(result + 16) = 0;
  return result;
}

_DWORD *sub_2978BD604(_DWORD *a1, uint64_t a2, int a3, char a4)
{
  result = sub_2978A3C5C(a1, 2, 0, 0, a3);
  *(result + 1) = a2;
  *(result + 16) = a4;
  return result;
}

_DWORD *sub_2978BD658(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_2978A3C5C(a1, 4, 0, 0, a3);
  *(v7 + 1) = a2;
  sub_2977FA958(v7 + 4, a4);
  return a1;
}

_DWORD *sub_2978BD6B8(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_2978A3C5C(a1, 3, 0, 0, a3);
  *(v7 + 1) = a2;
  sub_2977FA958(v7 + 4, a4);
  return a1;
}

_DWORD *sub_2978BD718(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_2978A3C5C(a1, 0, 0, 0, a3);
  *(v7 + 1) = a2;
  sub_2977FB630(v7 + 4, a4);
  return a1;
}

_DWORD *sub_2978BD778(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_2978A3C5C(a1, 1, 0, 0, a3);
  *(v7 + 1) = a2;
  sub_2977FB630(v7 + 4, a4);
  return a1;
}

void *sub_2978BD7D4(uint64_t *a1, uint64_t *a2)
{
  sub_2978BD7D0(&v7, a2);
  v4 = sub_297803E1C(a2, 24, 8uLL);
  v6 = sub_2978BD904(v4, &v7, 8u);
  sub_2978BD908(a1, &v6);
  return sub_2978BD894(&v7);
}

void *sub_2978BD83C(void *result, void *a2, void *a3)
{
  v4 = result;
  v5 = result[1];
  if (v5 >= result[2])
  {
    result = sub_2978BD998(result, a3, 1uLL);
    v5 = v4[1];
  }

  *v5 = *a2;
  v4[1] += 8;
  return result;
}

uint64_t sub_2978BD8CC(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  result = nullsub_1(a2, a2);
  *a1 = result | (2 * a3);
  return result;
}

uint64_t *sub_2978BD908(uint64_t *a1, void *a2)
{
  v3 = nullsub_1(*a2, a2);
  sub_2978642EC(a1, v3, 1);
  return a1;
}

uint64_t sub_2978BD944(uint64_t a1, void *a2, unsigned int a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2978BD974(a1, a2, a3);
  return a1;
}

const void **sub_2978BD974(const void **result, void *a2, unsigned int a3)
{
  if (((result[2] - *result) >> 3) < a3)
  {
    return sub_2978BD998(result, a2, a3);
  }

  return result;
}

void *sub_2978BD998(const void **a1, void *a2, unint64_t a3)
{
  v6 = a1[2] - *a1;
  v8 = sub_29780BD00(a1);
  if (v6 >> 2 > a3)
  {
    a3 = v6 >> 2;
  }

  v9 = sub_29784DD58(a2, v7);
  v10 = sub_29786FA38(v9, a3);
  result = memcpy(v10, *a1, 8 * v8);
  *a1 = v10;
  a1[1] = &v10[8 * v8];
  a1[2] = &v10[8 * a3];
  return result;
}

void *sub_2978BDA20(void *a1)
{
  if (sub_2978BA7DC(a1))
  {
    v3 = sub_29783D408(a1, v2);
    if (v3)
    {
      v4 = sub_297818154(v3);
      j__free(v4);
    }
  }

  return a1;
}

uint64_t sub_2978BDA60(uint64_t result, _DWORD *a2)
{
  *(result + 4) = 1;
  *result = *a2;
  return result;
}

uint64_t sub_2978BDA9C(uint64_t result, uint64_t a2)
{
  if (*(result + 4) == 1)
  {
    v2 = result;
    result = j_nullsub_1(result, a2);
    *(v2 + 4) = 0;
  }

  return result;
}

uint64_t sub_2978BDAD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  *(a1 + 4) = v3;
  if (v3 == 1)
  {
    *a1 = *j_nullsub_1(a2, a2);
  }

  return a1;
}

uint64_t sub_2978BDB24(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = sub_297882B50(a1[1]);
  v11 = sub_29788FA28(*a1, a2);
  v12 = sub_2977FB7B8(a1);
  v13 = sub_29788FAD8(v11, v12);
  if ((v13 & 1) == 0)
  {
    sub_2978B677C(a1, a5, 3183, v17);
    v14 = sub_2978295C0(v17, a3, a4);
    v15 = sub_297883C6C(v10);
    sub_29785965C(v14, v15);
    sub_29782963C(v17);
  }

  return v13;
}

BOOL sub_2978BDBEC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = sub_29788327C(*(a1 + 8), a2);
  if (!v9)
  {
    sub_2978B677C(a1, a5, 2222, v14);
    v10 = sub_2978295C0(v14, a3, a4);
    v11 = sub_297882B50(*(a1 + 8));
    v12 = sub_297883C6C(v11);
    sub_29785965C(v10, v12);
    sub_29782963C(v14);
  }

  return v9;
}

uint64_t sub_2978BDC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[11] = *MEMORY[0x29EDCA608];
  v23 = a2;
  result = sub_297888470(a2);
  if (result)
  {
    v7 = sub_2978BDEBC(a1, a2);
    if (sub_2978B84E4(a1))
    {
      sub_2978B695C(v24, v7);
      v8 = sub_2978B8E90(v24);
      sub_2978B69A8(v24);
      if (v8)
      {
        v9 = sub_297847BE0(a2);
        sub_2978B677C(a1, v9, 2789, v24);
        sub_297869558(v24, v7);
        sub_29782963C(v24);
      }
    }

    sub_2978BDF34(a3, a2);
    sub_2978B695C(v22, v7);
    if (sub_29788AB2C(&v23) && sub_2978BA118(v22, v10) && ((v11 = sub_2978B93D0(v22), !sub_2978B7B74(a3, v11)) || (v12 = sub_2978BA2B8(v22), !sub_2978B7B74(a3, *v12))))
    {
      sub_29788E11C(v24);
      v13 = sub_2978BA2B8(v22);
      v14 = sub_2978BCB50(v22);
      if (v13 != v14)
      {
        v16 = v14;
        while (sub_2978B7B74(a3, *v13))
        {
          sub_2978040A4(v24, v13++);
          if (v13 == v16)
          {
            goto LABEL_17;
          }
        }

        sub_2978040A4(v24, &v23);
        sub_2978BDF9C(v24, v13, v16);
      }

LABEL_17:
      while (sub_2978BA118(v22, v15))
      {
        sub_2978BE050(v22);
      }

      v17 = sub_2977FB720(v24);
      v18 = sub_2977FB7B8(v24);
      if (v17 != v18)
      {
        v19 = v18;
        do
        {
          v20 = *v17++;
          sub_2978BDF3C(v22, v20, (a1 + 16));
        }

        while (v17 != v19);
      }

      sub_2977FD134(v24);
    }

    else
    {
      sub_2978BDF3C(v22, v23, (a1 + 16));
    }

    result = sub_2978B69A8(v22);
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978BDEBC(uint64_t a1, uint64_t a2)
{
  if (!sub_297888470(a2))
  {
    return 0;
  }

  v4 = sub_2978BE260(*(a1 + 160));
  v6 = sub_29788709C(a2);

  return sub_297828D2C(v4, v6, v5);
}

uint64_t sub_2978BDF3C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = (a1 + 1);
  v7 = a1[1];
  sub_2978BCC60(a1 + 1, a2, a3);
  v5 = sub_297803A7C(v4);
  result = sub_297803A7C(&v7);
  if (v5 != result)
  {
    return sub_2978B730C(a1);
  }

  return result;
}

uint64_t sub_2978BDF9C(const void **a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_29780CCF4(a2, a3);
  v7 = sub_2977FD5B0(a1);
  if (v6 > (v7 - sub_2977FB7B8(a1)) >> 3)
  {
    v8 = sub_29780406C(a1);
    sub_297804114(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_2978BF2E4(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + 8 * v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_2978BE058(uint64_t a1, uint64_t a2)
{
  result = sub_297888470(a2);
  if (result)
  {
    result = sub_2978BDEBC(a1, a2);
    if (result)
    {
      sub_2978B695C(v7, result);
      if ((sub_2978B93C8(v7, v5) & 1) == 0 && sub_2978B93D0(v7) == a2)
      {
        sub_2978BE050(v7);
      }

      if (sub_2978B93C8(v7, v6))
      {
        sub_2978B6960(v7);
      }

      return sub_2978B69A8(v7);
    }
  }

  return result;
}

uint64_t sub_2978BE0EC(uint64_t *a1, uint64_t a2)
{
  sub_2978B695C(v24, a2);
  if (sub_2978B93C8(v24, v4))
  {
    v5 = sub_2977FB7B8(a1);
    if (!sub_2978BE238(v5))
    {
      goto LABEL_9;
    }

    v23[0] = sub_297828314(a2);
    v23[1] = v6;
    sub_2977FB7B4(&v21, "type_is_");
    if (!sub_297807C54(v23, v21, v22))
    {
      v21 = sub_297828314(a2);
      v22 = v7;
      sub_2977FB7B4(&v19, "precision_is_");
      if (!sub_297807C54(&v21, v19, v20))
      {
        v18[0] = sub_297828314(a2);
        v18[1] = v8;
        sub_2977FB7B4(&v19, "sa_failed");
        if (!sub_297807C54(v18, v19, v20))
        {
LABEL_9:
          v16 = 0;
          goto LABEL_10;
        }
      }
    }

    sub_297829180(v23);
    v9 = *a1;
    v10 = v23[0];
    v11 = sub_297828314(a2);
    v13 = v12;
    v14 = sub_2978B5844(*a1, 2);
    v15 = sub_2978A0E14(v9, v10, v11, v13, v14);
  }

  else
  {
    v15 = sub_2978B93D0(v24);
  }

  v16 = v15;
LABEL_10:
  sub_2978B69A8(v24);
  return v16;
}

BOOL sub_2978BE238(uint64_t a1)
{
  v1 = sub_2978BF25C(a1);

  return sub_2978831D0(v1);
}

uint64_t sub_2978BE268(uint64_t a1)
{
  if (a1)
  {
    return sub_297828314(a1);
  }

  sub_2977FB7B4(&v2, &byte_2978FC3E5);
  return v2;
}

uint64_t sub_2978BE2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978BE344(a2);
  if (v4)
  {
    v5 = sub_29788C514(v4);
    sub_2978BE380(&v10, v5);
  }

  else
  {
    v6 = sub_2978B6920(a2);
    if (v6)
    {
      v7 = sub_2978BDEBC(a1, v6);
      sub_2978BE384(&v10, v7, 1);
    }

    else
    {
      v8 = sub_2978B84F8(a2);
      if (v8 || (v8 = sub_2978BB120(a2)) != 0)
      {
        sub_2978BE388(&v10, v8);
      }
    }
  }

  return v10;
}

uint64_t sub_2978BE344(uint64_t a1)
{
  v2 = a1;
  if (sub_2978BF37C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978BE38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = sub_2977FB7B8(v11);
  v9[0] = v11;
  v9[1] = &v10;
  v9[2] = a4;
  v9[3] = a1;
  sub_2977FB7B4(&v7, "void");
  sub_2978BE944(v9, v7, v8, 2);
  sub_2977FB7B4(&v7, "float");
  sub_2978BE944(v9, v7, v8, 3);
  sub_2977FB7B4(&v7, "half");
  sub_2978BE944(v9, v7, v8, 4);
  sub_2977FB7B4(&v7, "int");
  sub_2978BE944(v9, v7, v8, 5);
  sub_2977FB7B4(&v7, "uint");
  sub_2978BE944(v9, v7, v8, 6);
  sub_2977FB7B4(&v7, "BOOL");
  sub_2978BE944(v9, v7, v8, 7);
  sub_2977FB7B4(&v7, "vec2");
  sub_2978BE944(v9, v7, v8, 8);
  sub_2977FB7B4(&v7, "vec3");
  sub_2978BE944(v9, v7, v8, 9);
  sub_2977FB7B4(&v7, "vec4");
  sub_2978BE944(v9, v7, v8, 10);
  sub_2977FB7B4(&v7, "hvec2");
  sub_2978BE944(v9, v7, v8, 11);
  sub_2977FB7B4(&v7, "hvec3");
  sub_2978BE944(v9, v7, v8, 12);
  sub_2977FB7B4(&v7, "hvec4");
  sub_2978BE944(v9, v7, v8, 13);
  sub_2977FB7B4(&v7, "ivec2");
  sub_2978BE944(v9, v7, v8, 14);
  sub_2977FB7B4(&v7, "ivec3");
  sub_2978BE944(v9, v7, v8, 15);
  sub_2977FB7B4(&v7, "ivec4");
  sub_2978BE944(v9, v7, v8, 16);
  sub_2977FB7B4(&v7, "uvec2");
  sub_2978BE944(v9, v7, v8, 17);
  sub_2977FB7B4(&v7, "uvec3");
  sub_2978BE944(v9, v7, v8, 18);
  sub_2977FB7B4(&v7, "uvec4");
  sub_2978BE944(v9, v7, v8, 19);
  sub_2977FB7B4(&v7, "bvec2");
  sub_2978BE944(v9, v7, v8, 20);
  sub_2977FB7B4(&v7, "bvec3");
  sub_2978BE944(v9, v7, v8, 21);
  sub_2977FB7B4(&v7, "bvec4");
  sub_2978BE944(v9, v7, v8, 22);
  sub_2977FB7B4(&v7, "mat2");
  sub_2978BE944(v9, v7, v8, 23);
  sub_2977FB7B4(&v7, "mat3");
  sub_2978BE944(v9, v7, v8, 24);
  sub_2977FB7B4(&v7, "mat4");
  sub_2978BE944(v9, v7, v8, 25);
  sub_2977FB7B4(&v7, "mat2x3");
  sub_2978BE944(v9, v7, v8, 26);
  sub_2977FB7B4(&v7, "mat2x4");
  sub_2978BE944(v9, v7, v8, 27);
  sub_2977FB7B4(&v7, "mat3x2");
  sub_2978BE944(v9, v7, v8, 28);
  sub_2977FB7B4(&v7, "mat3x4");
  sub_2978BE944(v9, v7, v8, 29);
  sub_2977FB7B4(&v7, "mat4x2");
  sub_2978BE944(v9, v7, v8, 30);
  sub_2977FB7B4(&v7, "mat4x3");
  sub_2978BE944(v9, v7, v8, 31);
  sub_2977FB7B4(&v7, "hmat2");
  sub_2978BE944(v9, v7, v8, 32);
  sub_2977FB7B4(&v7, "hmat3");
  sub_2978BE944(v9, v7, v8, 33);
  sub_2977FB7B4(&v7, "hmat4");
  sub_2978BE944(v9, v7, v8, 34);
  sub_2977FB7B4(&v7, "hmat2x3");
  sub_2978BE944(v9, v7, v8, 35);
  sub_2977FB7B4(&v7, "hmat2x4");
  sub_2978BE944(v9, v7, v8, 36);
  sub_2977FB7B4(&v7, "hmat3x2");
  sub_2978BE944(v9, v7, v8, 37);
  sub_2977FB7B4(&v7, "hmat3x4");
  sub_2978BE944(v9, v7, v8, 38);
  sub_2977FB7B4(&v7, "hmat4x2");
  sub_2978BE944(v9, v7, v8, 39);
  sub_2977FB7B4(&v7, "hmat4x3");
  sub_2978BE944(v9, v7, v8, 40);
  sub_2977FB7B4(&v7, "sampler");
  sub_2978BE944(v9, v7, v8, 41);
  sub_2977FB7B4(&v7, "hsampler");
  sub_2978BE944(v9, v7, v8, 42);
  sub_2977FB7B4(&v7, "sampler2D");
  sub_2978BE944(v9, v7, v8, 43);
  sub_2977FB7B4(&v7, "hsampler2D");
  sub_2978BE944(v9, v7, v8, 44);
  return v10;
}

unint64_t sub_2978BE944(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15[0] = a2;
  v15[1] = a3;
  v6 = *(a1 + 24);
  v7 = sub_29780F320(*a1, a2, a3, 1, **(a1 + 8));
  result = sub_2977FB7B8(v15);
  if (v7 <= 5 && result > v7)
  {
    v10 = *(a1 + 8);
    if (v7 >= *v10)
    {
      if (v7 != *v10)
      {
        return result;
      }
    }

    else
    {
      *v10 = v7;
      sub_2977FD800(*(a1 + 16));
    }

    v11 = *(a1 + 16);
    v13 = sub_2978B5844(*v6, a4);
    v12 = sub_2977FB720(&v13);
    v14 = sub_297888658(v12);
    return sub_2978040A4(v11, &v14);
  }

  return result;
}

uint64_t sub_2978BEA0C(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v60[67] = *MEMORY[0x29EDCA608];
  v60[0] = sub_297828314(a2);
  v60[1] = v8;
  v9 = sub_2977FB7B8(v60);
  sub_2978BEE88(v60);
  sub_29780B1B8(v59);
  if (*a4)
  {
    v10 = sub_297828314(a2);
    v9 = sub_2978BE38C(a1, v10, v11, v59);
    v12 = sub_2977FB720(v59);
    v13 = sub_2977FB7B8(v59);
    if (v12 != v13)
    {
      v14 = v13;
      do
      {
        v15 = *v12++;
        sub_2977FDEF4(&v54, v15);
        sub_2978BE380(&v50, v54);
        v50.__r_.__value_.__r.__words[2] = sub_2978B5B84(v15);
        v51 = v16;
        sub_2978BEE8C(v60, &v50);
      }

      while (v12 != v14);
    }
  }

  sub_29787B540(v58, 0);
  v17 = *(a1 + 184);
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      v19 = sub_297829BD8(v17);
      *&v54 = sub_297873448(v19);
      *(&v54 + 1) = v20;
      v53.__r_.__value_.__r.__words[0] = sub_29787347C(v19);
      v53.__r_.__value_.__l.__size_ = v21;
      if (sub_29781550C(&v54, &v53))
      {
        break;
      }

LABEL_24:
      v17 = sub_2977FB720(v17);
      ++v18;
      if (!v17)
      {
        goto LABEL_25;
      }
    }

    while (1)
    {
      v23 = sub_2978B6914(&v54, v22);
      if (sub_297888470(v23))
      {
        v57 = sub_2978BDEBC(a1, v23);
        v50.__r_.__value_.__r.__words[0] = sub_297828314(a2);
        v50.__r_.__value_.__l.__size_ = v24;
        v25 = sub_297828314(v57);
        v27 = sub_29780F320(&v50, v25, v26, 1, v9);
        v50.__r_.__value_.__r.__words[0] = sub_297828314(v57);
        v50.__r_.__value_.__l.__size_ = v28;
        v29 = sub_2977FB7B8(&v50);
        v30 = v27 <= 5 && v29 > v27;
        if (v30 && v27 <= v9)
        {
          sub_29787C15C(v58, &v57, &v52);
          sub_29787C1D0(v58, v56);
          sub_29782DA30(&v50, v56);
          if (!sub_29782EE3C(&v52, &v50))
          {
            *sub_29787C070(v58, &v57) = v18;
LABEL_20:
            if (v27 < v9)
            {
              sub_297814D10(v60);
              v9 = v27;
            }

            v50.__r_.__value_.__r.__words[0] = sub_2978BE2A4(a1, v23);
            v50.__r_.__value_.__l.__size_ = v32;
            v50.__r_.__value_.__r.__words[2] = sub_297828314(v57);
            v51 = v33;
            sub_2978BEE8C(v60, &v50);
            goto LABEL_23;
          }

          if (*(sub_2977FB720(&v52) + 8) >= v18)
          {
            goto LABEL_20;
          }
        }
      }

LABEL_23:
      sub_2978734C0(&v54);
      if (!sub_29781550C(&v54, &v53))
      {
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  v34 = sub_2977FB720(v60);
  v35 = sub_2977FB7B8(v60);
  v36 = sub_2978BEF4C(v34, v35, a4);
  v37 = sub_2977FB7B8(v60);
  sub_2978BEEF8(v60, v36, v37);
  if (!sub_297806904(v60) && (v38 = sub_2977FB720(v60), v39 = sub_2977FB7B8(v60), v40 = sub_2978BEFF0(v38 + 32, v39, v60), v40 == sub_2977FB7B8(v60)))
  {
    if ((*a4 & 2) != 0)
    {
      v44 = 3108;
    }

    else
    {
      v44 = 3138;
    }

    if ((*a4 & 4) != 0)
    {
      v45 = 3136;
    }

    else
    {
      v45 = v44;
    }

    v46 = sub_297803A7C(v60);
    v47 = v46[1];
    v54 = *v46;
    v55 = v47;
    sub_297802728(&v55, &v52);
    sub_2978094F0("'", &v52, &v50);
    sub_297808D80(&v50, "'", &v53);
    std::string::~string(&v50);
    std::string::~string(&v52);
    sub_2978B677C(a1, a3, v45, &v52);
    v48 = sub_297869558(&v52, a2);
    sub_2978044E8(&v50, &v53);
    v49 = sub_2978295C0(v48, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
    sub_2978634C0(v56, a3);
    sub_29786E758(v56[0], v55, *(&v55 + 1), &v50);
    sub_297852754(v49, &v50);
    sub_29782AC18(&v50);
    sub_29782963C(&v52);
    v41 = v54;
    std::string::~string(&v53);
  }

  else
  {
    v41 = sub_2978BEFC4();
  }

  sub_29787B7C0(v58);
  sub_2977FD134(v59);
  sub_2978BF048(v60);
  v42 = *MEMORY[0x29EDCA608];
  return v41;
}

uint64_t sub_2978BEE8C(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_2978BF418(a1);
  }

  v4 = sub_2977FB7B8(a1);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v6 = sub_2977FB7B8(a1) + 32;

  return sub_2977FD5DC(a1, v6);
}

uint64_t sub_2978BEEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FB7B8(a1);
  v7 = sub_2978BF4EC(a3, v6, a2);
  sub_2977FD5DC(a1, v7);
  return a2;
}

unsigned int *sub_2978BEF4C(unsigned int *a1, unsigned int *a2, _BYTE *a3)
{
  v9 = a3;
  v4 = sub_2978BF42C(a1, a2, &v9);
  v5 = v4 + 8;
  if (v4 != a2 && v5 != a2)
  {
    do
    {
      if ((sub_2978BF484(&v9, v5) & 1) == 0)
      {
        v7 = *(v5 + 1);
        *v4 = *v5;
        *(v4 + 1) = v7;
        v4 += 8;
      }

      v5 += 8;
    }

    while (v5 != a2);
  }

  return v4;
}

uint64_t sub_2978BEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  for (i = a3; v3 != a2; v3 += 32)
  {
    if (sub_2978BF5F4(&i, v3))
    {
      break;
    }
  }

  return v3;
}

uint64_t sub_2978BF04C(uint64_t *a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  sub_2978B695C(v18, a2);
  if (sub_2978B8E90(v18) && sub_2978B93C8(v18, v8))
  {
    if (sub_2978B8F80(v18) == 76)
    {
      v9 = sub_2977FB7B8(a1);
      if (!sub_2978BE238(v9))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v14 = sub_2978B8F80(v18);
      v15 = sub_297828314(a2);
      sub_2978BDB24(a1, v14, v15, v16, a3);
    }

    v17 = sub_2978B8F80(v18);
    sub_2978BF164(v19, v17);
    goto LABEL_11;
  }

LABEL_5:
  v10 = sub_2978BE0EC(a1, a2);
  if (v10)
  {
    v11 = sub_2978BE2A4(a1, v10);
  }

  else if (sub_2978BF168(a4))
  {
    v11 = sub_2978BEA0C(a1, a2, a3, a4);
  }

  else
  {
    v11 = sub_2978BEFC4();
  }

  v19[0] = v11;
  v19[1] = v12;
LABEL_11:
  sub_2978B69A8(v18);
  return v19[0];
}

uint64_t sub_2978BF178(uint64_t *a1, uint64_t a2)
{
  v2 = sub_2978BE0EC(a1, a2);

  return sub_2978BF1A0(v2, v3);
}

uint64_t sub_2978BF1A0(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (result)
  {
    if (sub_2978BB15C(&v2, a2))
    {
      return sub_29781BF50(v2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_2978BF1E0(uint64_t *a1)
{
  if (sub_29783E2B8(a1))
  {
    v4 = 0;
    return sub_2978B77A4(a1, &v4);
  }

  else
  {
    result = sub_29788AA04(a1, v2);
    if (result)
    {

      return sub_2978BF24C(result);
    }
  }

  return result;
}

uint64_t sub_2978BF264(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  *a1 = 2;
  *(a1 + 8) = sub_2977FB720(&v4);
  return a1;
}

uint64_t sub_2978BF2A8(uint64_t result, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  *result = v3;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_2978BF2C0(uint64_t result, uint64_t a2)
{
  *result = 3;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_2978BF2D4(uint64_t result, __int16 a2)
{
  *result = 5;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_2978BF300(uint64_t *a1, uint64_t *a2, void *a3)
{
  v7 = a3;
  v8 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      v5 = *v4++;
      *v7++ = v5;
      v8 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v9, &v8, &v7);
  return v9;
}

unsigned int *sub_2978BF42C(unsigned int *a1, unsigned int *a2, _BYTE **a3)
{
  for (i = a1; i != a2; i += 8)
  {
    if (sub_2978BF484(a3, i))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2978BF484(_BYTE **a1, unsigned int *a2)
{
  v3 = sub_2977FB5F0(a2);
  if ((v3 - 3) >= 3)
  {
    if (v3 == 2)
    {
      v4 = **a1 ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = (**a1 & 2) == 0;
  }

  return v4 & 1;
}

uint64_t sub_2978BF510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29781921C(a1, a2);
  v6 = sub_2978BF584(v5);
  v8 = v7;
  v11 = sub_2978BF588(a1, v6);
  v10 = sub_297813268(a3, v8);
  return sub_2977FD958(&v11, &v10);
}

uint64_t sub_2978BF58C(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_2978BF5E4(a3, a1, (a2 - a1) >> 5);
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

void *sub_2978BF5E4(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, 32 * a3);
  }

  return result;
}

BOOL sub_2978BF5F4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = sub_297803A7C(*a1);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);

  return sub_297808D64(v2, v3, v5, v6);
}

uint64_t sub_2978BF638(uint64_t a1, int a2)
{
  result = sub_2977FD5B0(*(a1 + 184));
  if (result)
  {
    sub_2978B677C(a1, a2, 2749, v5);
    sub_2978563C8(v5, 0);
    return sub_29782963C(v5);
  }

  return result;
}

uint64_t sub_2978BF698(uint64_t a1, int a2)
{
  result = sub_2977FD5B0(*(a1 + 184));
  if (result)
  {
    sub_2978B677C(a1, a2, 2749, v5);
    sub_2978563C8(v5, 1);
    return sub_29782963C(v5);
  }

  return result;
}

_WORD *sub_2978BF6F8(uint64_t *a1, int a2, int a3)
{
  v16 = sub_297885F40(a1[25]);
  v17 = v6;
  if (sub_297806914(&v16))
  {
    return sub_2978A18A8(*a1, a3, a2);
  }

  v16 = sub_297885F40(a1[25]);
  v17 = v7;
  v8 = sub_2977FB720(&v16);
  v9 = sub_2978BF814(*v8);
  v10 = sub_2978BF7D8(*v9);
  if (!v10)
  {
    return sub_2978A18A8(*a1, a3, a2);
  }

  v11 = v10;
  if (sub_297888B98(v10) != a2)
  {
    sub_2978B677C(a1, a3, 2218, v15);
    sub_29782963C(v15);
    v12 = sub_297847BE0(v11);
    sub_2978B677C(a1, v12, 3525, v14);
    sub_29782963C(v14);
  }

  return 0;
}

uint64_t sub_2978BF7D8(uint64_t a1)
{
  v2 = a1;
  if (sub_29788AB98(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_2978BF818(uint64_t *a1, unsigned int a2, int a3, int a4)
{
  v5 = a3;
  if (a2 - 131 > 0x31 || ((1 << (a2 + 125)) & 0x3800000000001) == 0)
  {
    if (a3 == 1)
    {
      v9 = 2221;
    }

    else
    {
      v9 = 4048;
    }

    sub_2978B677C(a1, a4, v9, v12);
    v10 = sub_297881744(a2);
    sub_2978295C0(v12, v10, v11);
    sub_29782963C(v12);
  }

  return sub_2978A18FC(*a1, a4, a2, v5);
}

_DWORD *sub_2978BF8E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = a3;
  result = sub_2977FB7B8(&v5);
  if (result)
  {
    return sub_2978B41D0(*a1, v5, v6);
  }

  return result;
}

_DWORD *sub_2978BF928(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  if (!a2)
  {
    return 0;
  }

  v3 = *a1;
  sub_29784CE50(v16, &v17);
  v4 = sub_2978B41D0(v3, v16[0], v16[1]);
  if (sub_2978B84E4(a1))
  {
    v5 = *(a1 + 200);
    if (v4)
    {
      v6 = (v4 + 2);
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 168) == 1)
    {
      sub_2978BFA58(v5, v6);
    }

    else
    {
      sub_2978BFA84(v5, v6);
    }
  }

  v8 = sub_2978862BC(v4 + 2);
  v9 = sub_2978862C0((v4 + 2));
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = sub_2978B84F8(*v8);
      if (v11)
      {
        v12 = v11;
        if (sub_29783C254(v11))
        {
          v13 = sub_297847BE0(v12);
          sub_2978B677C(a1, v13, 4731, v16);
          v14 = sub_29788709C(v12);
          sub_2978295C0(v16, v14, v15);
          sub_29782963C(v16);
        }
      }

      ++v8;
    }

    while (v8 != v10);
  }

  if (v4)
  {
    return v4 + 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978BFAAC(uint64_t a1, const void **a2)
{
  v4 = sub_2977FB720(a2);
  v5 = sub_2977FB7B8(a2);
  v15[0] = 0;
  v6 = sub_2978BFBA4(v4, v5, v15);
  v7 = sub_29780406C(a2);
  v8 = sub_2977FB7B8(a2);
  v9 = sub_29780CCF4(v6, v8);
  sub_2978BFBF0(a2, v7 - v9);
  result = sub_29780406C(a2);
  if (result)
  {
    v11 = *a1;
    sub_29780B1E8(v15, a2);
    v12 = sub_2978B41D0(v11, v15[0], v15[1]);
    if (sub_2978B84E4(a1))
    {
      v13 = *(a1 + 200);
      if (v12)
      {
        v14 = (v12 + 2);
      }

      else
      {
        v14 = 0;
      }

      if (*(a1 + 168) == 1)
      {
        sub_2978BFA58(v13, v14);
      }

      else
      {
        sub_2978BFA84(v13, v14);
      }
    }

    if (v12)
    {
      return (v12 + 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2978BFBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2978C0DB4(a1, a2, a3);
  if (result != a2)
  {
    for (i = result + 1; i != a2; ++i)
    {
      if (*i)
      {
        *result++ = *i;
      }
    }
  }

  return result;
}

unint64_t sub_2978BFBF0(const void **a1, unsigned int a2)
{
  v3 = a2;
  if (sub_29780406C(a1) <= a2)
  {
    result = sub_29780406C(a1);
    if (result >= v3)
    {
      return result;
    }

    if (sub_297864E08(a1) < v3)
    {
      sub_297804114(a1, v3);
    }

    v7 = sub_2977FB7B8(a1);
    v8 = sub_2977FB720(a1) + 8 * v3;
    if (v7 != v8)
    {
      bzero(v7, ((v8 - v7 - 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    }
  }

  else
  {
    v4 = sub_2977FB720(a1) + 8 * v3;
    v5 = sub_2977FB7B8(a1);
    nullsub_1(v4, v5);
  }

  v9 = sub_2977FB720(a1) + 8 * v3;

  return sub_2977FD5DC(a1, v9);
}

_DWORD *sub_2978BFCE4(uint64_t *a1, unsigned int *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!sub_29788BC5C(a2))
  {
    v14 = sub_29788C170(a2);
    v4 = sub_2977FB720(&v14);
    if (sub_2978B5368(v4))
    {
      v13 = sub_29788C170(a2);
      v5 = sub_2977FB720(&v13);
      v14 = sub_2978B5074(v5);
      v6 = sub_2977FB720(&v14);
      v7 = sub_297890568(v6);
      v8 = sub_29788862C(v7);
      v9 = sub_2978BC2A8(a1[23], v8);
      if (!v9)
      {
        v11 = sub_2977FB5F0(a2);
        sub_2978B677C(a1, v11, 2479, v12);
        sub_29782963C(v12);
        return 0;
      }

      sub_2978A2D74(a2, v9);
    }
  }

  return sub_2978B46BC(*a1, a2);
}

_DWORD *sub_2978BFDD8(uint64_t *a1, int a2, unsigned int *a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v19[0] = sub_29788C170(a3);
  v14 = sub_2977FB720(v19);
  v15 = sub_2978875FC(v14);
  if (v15 && sub_29788862C(v15) == 7)
  {
    return sub_2978B4288(*a1, a2, a3, a4, a5, a6, a7);
  }

  v17 = sub_2977FB5F0(a3);
  sub_2978B677C(a1, v17, 2118, v19);
  v18 = sub_2978A2A34(a3);
  sub_2978591B8(v19, &v18);
  sub_29782963C(v19);
  return 0;
}

_DWORD *sub_2978BFED4(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a3 || !a4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = sub_29781BF50(a4);
  v8 = sub_2977FB7B8(v7);

  return sub_2978B4508(v6, a2, a3, v8);
}

_DWORD *sub_2978BFF40(uint64_t *a1, int a2)
{
  if (sub_29783CFFC(a1[23]))
  {
    v4 = *a1;

    return sub_2978B4584(v4, a2);
  }

  else
  {
    sub_2978B677C(a1, a2, 1906, v6);
    sub_29782963C(v6);
    return 0;
  }
}

_DWORD *sub_2978BFFC0(uint64_t *a1, int a2)
{
  if (sub_297805510(a1[23]))
  {
    v4 = *a1;

    return sub_2978B45D0(v4, a2);
  }

  else
  {
    sub_2978B677C(a1, a2, 2000, v6);
    sub_29782963C(v6);
    return 0;
  }
}

uint64_t sub_2978C0040(uint64_t *a1, int a2, unsigned int *a3)
{
  sub_2977FB7B4(v11, "switch statement");
  v6 = sub_2978BDBEC(a1, 0, v11[0], v11[1], a2);
  result = 0;
  if (a3 && v6)
  {
    v11[0] = sub_29788C170(a3);
    v8 = sub_2977FB720(v11);
    if ((sub_2978C0114(v8) & 1) == 0)
    {
      v9 = sub_2977FB5F0(a3);
      sub_2978B677C(a1, v9, 2888, v10);
      sub_29782963C(v10);
    }

    v11[0] = sub_2978B4314(*a1, a2, a3);
    sub_2978040A4((a1 + 44), v11);
    return v11[0];
  }

  return result;
}

uint64_t sub_2978C013C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57[30] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    sub_29783D2E0(a1 + 352);
    v6 = sub_29781BF50(a2);
    v7 = sub_29781BF50(a3);
    sub_29781A230(v6, v7);
    v8 = sub_2977FD5B0(v6);
    v56 = *sub_29789056C(v8 + 8);
    if ((sub_29788AB94(&v56) & 1) == 0 && (sub_2978C0520(&v56, v9) & 1) == 0)
    {
      v10 = sub_2978B3DE0(v56);
      sub_2978B677C(a1, v10, 2887, v55);
      sub_29782963C(v55);
      v11 = sub_297816700(v6);
      sub_2978B677C(a1, v11, 3739, v54);
      sub_29782963C(v54);
    }

    v12 = sub_2977FD5B0(v6);
    v53 = *sub_2978C0524(v12 + 8);
    if ((sub_29788AB94(&v53) & 1) != 0 || sub_2978C0520(&v53, v13))
    {
      v14 = sub_2978B3DE0(v53);
      sub_2978B677C(a1, v14, 2882, v52);
      sub_29782963C(v52);
      v15 = sub_297816700(v6);
      sub_2978B677C(a1, v15, 3739, v51);
      sub_29782963C(v51);
    }

    sub_2978C0540(v57);
    v16 = sub_29783CFFC(v6);
    if (v16)
    {
      v18 = v16;
      v19 = 0;
      do
      {
        v20 = sub_2978C0544(v18, v17);
        if (v20)
        {
          v21 = v20;
          if (v19)
          {
            v22 = sub_29782AFB0(v19);
            sub_2978B677C(a1, v22, 2444, v50);
            sub_29782963C(v50);
            v23 = sub_29782AFB0(v21);
            sub_2978B677C(a1, v23, 47, v49);
            sub_29782963C(v49);
          }

          v19 = v21;
        }

        else
        {
          v24 = sub_29781BF50(v18);
          sub_2978BC27C(v48);
          v25 = sub_29783CFFC(v24);
          sub_2978BC280(v25, *(a1 + 200), v48);
          v26 = sub_29783CFFC(v24);
          v47 = sub_29788C170(v26);
          v27 = sub_2977FB7B8(v6);
          v46 = sub_29788C170(v27);
          if (sub_2978B5D80(&v47, v46))
          {
            v28 = sub_29783CFFC(v24);
            v29 = sub_2978A229C(v28);
            sub_2978B677C(a1, v29, 1935, v45);
            v30 = sub_2978C1A84(v45, &v47);
            sub_2978C1A84(v30, &v46);
            sub_29782963C(v45);
          }

          else if ((sub_2978C0580(v57, v48) & 1) == 0)
          {
            sub_2978577EC(v45);
            sub_2978C0654(v48, v45, 0xAu);
            v31 = sub_29783CFFC(v6);
            if (v31 != v18)
            {
              v32 = v31;
              while (1)
              {
                sub_2978BC27C(v44);
                v33 = sub_2978C06AC(v32);
                if (v33)
                {
                  v34 = v33;
                  v35 = sub_29783CFFC(v33);
                  if (sub_2978BC280(v35, *(a1 + 200), v44))
                  {
                    if (sub_297871BF0(v44, v48))
                    {
                      break;
                    }
                  }
                }

                sub_297871794(v44);
                v32 = sub_2977FB7B8(v32);
                if (v32 == v18)
                {
                  goto LABEL_25;
                }
              }

              v36 = sub_29782AFB0(v34);
              sub_2978B677C(a1, v36, 2089, v43);
              v37 = sub_297801F10(v45);
              sub_2978295C0(v43, v37, v38);
              sub_29782963C(v43);
              sub_297871794(v44);
            }

LABEL_25:
            v39 = sub_29782AFB0(v24);
            sub_2978B677C(a1, v39, 47, v42);
            sub_29782963C(v42);
            sub_297801F60(v45);
          }

          sub_297871794(v48);
        }

        v18 = sub_2977FB7B8(v18);
      }

      while (v18);
    }

    sub_2978C06E8(v57);
  }

  v40 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t sub_2978C0544(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_2978C0520(&v3, a2))
  {
    return sub_29781BF50(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978C0580(void *a1, uint64_t a2)
{
  if (sub_2978C0F08(a1))
  {
    v4 = sub_2978C0F48(a1, a2);
    if (v4 == sub_2977FB7B8(a1))
    {
      if (sub_29783E83C(a1) >= 8)
      {
        while (!sub_297806904(a1))
        {
          v6 = sub_297819418(a1);
          sub_2978C0F10((a1 + 27), v6);
          sub_2978C1044(a1);
        }

        sub_2978C0F10((a1 + 27), a2);
      }

      else
      {
        sub_2978C0FD4(a1, a2);
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_2978C0F10((a1 + 27), a2);
  }

  return v5 & 1;
}

uint64_t sub_2978C0654(_DWORD *a1, const void **a2, unsigned int a3)
{
  v6 = sub_2977FB5F8(a1);

  return sub_297801AA0(a1, a2, a3, v6, 0);
}

uint64_t sub_2978C06AC(uint64_t a1)
{
  v2 = a1;
  if (sub_29788AB94(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_2978C06EC(uint64_t *a1, int a2, int a3, uint64_t a4)
{
  if (sub_29780406C((a1 + 44)))
  {
    if (sub_2978C0804(a4, a1[25]))
    {
      v8 = sub_2978B4368(*a1, a2, a3, a4);
      v9 = sub_29783D2C4((a1 + 44));
      sub_2978C0858(*v9, v8);
    }

    else
    {
      sub_2978B677C(a1, a2, 1936, v14);
      sub_29782963C(v14);
      v10 = *a1;
      sub_2977FB51C(v13, 32, 0, 0);
      v11 = sub_2978BB778(v10, a2, v13);
      v8 = sub_2978B4368(v10, a2, a3, v11);
      sub_2977FAA04(v13);
    }
  }

  else
  {
    sub_2978B677C(a1, a2, 1937, v15);
    sub_29782963C(v15);
    return 0;
  }

  return v8;
}

uint64_t sub_2978C0804(uint64_t a1, uint64_t a2)
{
  sub_2978BC27C(v6);
  v4 = sub_2978BC280(a1, a2, v6);
  sub_297871794(v6);
  return v4;
}

uint64_t sub_2978C0858(uint64_t a1, uint64_t a2)
{
  result = sub_2977FD5DC(a2, *(a1 + 24));
  *(a1 + 24) = a2;
  return result;
}

_DWORD *sub_2978C088C(uint64_t *a1, int a2, int a3)
{
  if (sub_29780406C((a1 + 44)))
  {
    v6 = sub_2978B43D0(*a1, a2, a3);
    v7 = sub_29783D2C4((a1 + 44));
    sub_2978C0858(*v7, v6);
  }

  else
  {
    sub_2978B677C(a1, a2, 2040, v9);
    sub_29782963C(v9);
    return 0;
  }

  return v6;
}

_DWORD *sub_2978C092C(uint64_t *a1, int a2, unsigned int *a3)
{
  sub_2978C0BFC(a1[24]);
  v33[0] = sub_2978735BC(a1[24]);
  v6 = sub_2977FB720(v33);
  v7 = sub_2978B90E0(v6);
  if (a3 && v7)
  {
    v8 = sub_2977FB5F0(a3);
    sub_2978B677C(a1, v8, 3196, v35);
    v9 = v35;
LABEL_4:
    sub_29782963C(v9);
    return 0;
  }

  if (!a3)
  {
    v33[0] = sub_2978735BC(a1[24]);
    v20 = sub_2977FB720(v33);
    if ((sub_2978B90E0(v20) & 1) == 0)
    {
      sub_2978B677C(a1, a2, 2498, v29);
      sub_29782963C(v29);
      v23 = sub_297816700(a1[24]);
      sub_2978B677C(a1, v23, 3517, v28);
      v9 = v28;
      goto LABEL_4;
    }

    a3 = 0;
    goto LABEL_20;
  }

  v33[0] = sub_2978735BC(a1[24]);
  v11 = sub_29788C170(a3);
  if (!sub_2978B5D80(v33, v11))
  {
    v21 = sub_297888A28(a1[24]);
    v22 = sub_29788BC5C(a3);
    if (v21 != v22)
    {
      if (v22)
      {
        a3 = sub_2978A3904(*a1, v21, a3);
      }

      else
      {
        sub_2978A2D74(a3, v21);
      }
    }

LABEL_20:
    v19 = *a1;
    v18 = a2;
    return sub_2978B4668(v19, v18, a3);
  }

  v33[0] = sub_2978735BC(a1[24]);
  if (!sub_29780B1BC(v33))
  {
    return 0;
  }

  v34 = sub_2978735BC(a1[24]);
  v12 = sub_2977FB720(&v34);
  if (sub_297888970(v12))
  {
    return 0;
  }

  v33[0] = sub_29788C170(a3);
  v13 = sub_2977FB720(v33);
  v14 = sub_297888660(v13);
  if (!v14)
  {
    sub_2978B677C(a1, a2, 2205, v33);
    v34 = sub_2978735BC(a1[24]);
    v24 = sub_2978C1A84(v33, &v34);
    v32 = sub_29788C170(a3);
    sub_2978C1A84(v24, &v32);
    sub_29782963C(v33);
    v25 = sub_297816700(a1[24]);
    sub_2978B677C(a1, v25, 3517, v30);
    v9 = v30;
    goto LABEL_4;
  }

  v15 = v14;
  v33[0] = sub_2977FB7B8(v14);
  v16 = sub_2978735BC(a1[24]);
  v17 = sub_2978B5D9C(v33, v16);
  v18 = a2;
  if (!v17)
  {
    sub_2978B677C(a1, a2, 2205, v33);
    v34 = sub_2978735BC(a1[24]);
    v26 = sub_2978C1A84(v33, &v34);
    v32 = sub_2977FB7B8(v15);
    sub_2978C1A84(v26, &v32);
    sub_29782963C(v33);
    v27 = sub_297816700(a1[24]);
    sub_2978B677C(a1, v27, 3517, v31);
    v9 = v31;
    goto LABEL_4;
  }

  v19 = *a1;
  return sub_2978B4668(v19, v18, a3);
}

uint64_t sub_2978C0C0C(uint64_t a1)
{
  sub_2978C0C48(a1 + 216);

  return sub_2978C0C4C(a1);
}

uint64_t sub_2978C0C58(uint64_t a1, uint64_t a2)
{
  v3 = sub_297818B70(a1, a2);
  sub_2978C0C8C(a1, v3);
  return a1;
}

uint64_t sub_2978C0C8C(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_2978C0C8C(result, *a2);
    sub_2978C0C8C(v3, a2[1]);
    v5 = nullsub_1(v3, v4);
    v7 = nullsub_1(a2 + 4, v6);
    sub_2978C0D08(v5, v7);

    return sub_297809C98(v5, a2, 1);
  }

  return result;
}

void *sub_2978C0D18(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_2978C0D70(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

uint64_t sub_2978C0D70(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v2 -= 24;
      result = sub_297871794(v2);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_2978C0DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = j_j_nullsub_1(a1, a2);
  v8 = j_j_nullsub_1(a2, v7);
  v9 = sub_2978C0E1C(v6, v8, a3, &v11);
  return sub_2977FD98C(a1, v9);
}

uint64_t sub_2978C0E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = a1; i != a2; i += 8)
  {
    if (!*sub_297813268(a4, i))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2978C0EB0(uint64_t a1)
{
  v2 = sub_29783F900(a1);
  sub_2978C0EE0(v2 + 216);
  return a1;
}

uint64_t sub_2978C0F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978C10B0(a1, a2);
  v5 = v2;
  sub_2978C10F0(&v6, &v4);
  return v6;
}

uint64_t sub_2978C0F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FB720(a1);
  v5 = sub_2977FB7B8(a1);
  if (v4 == v5)
  {
LABEL_5:

    return sub_2977FB7B8(a1);
  }

  else
  {
    v6 = v5;
    while ((sub_297871BF0(v4, a2) & 1) == 0)
    {
      v4 += 24;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    return v4;
  }
}

uint64_t sub_2978C0FD4(void *a1, uint64_t a2)
{
  if (a1[1] >= a1[2])
  {
    sub_2978C1450(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_2978C1328(v4, a2);
  v5 = sub_2977FB7B8(a1) + 24;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_2978C1044(uint64_t a1)
{
  v2 = sub_2977FB7B8(a1);
  sub_2977FD5DC(a1, v2 - 24);
  v3 = sub_2977FB7B8(a1);

  return sub_297871794(v3);
}

uint64_t sub_2978C10F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2978C11B0(a1, &v13, a2);
  v6 = *v5;
  v12 = 0;
  if (!v6)
  {
    v7 = v5;
    sub_2978C126C(a1, a3, v11);
    v8 = v13;
    v9 = sub_2977FB720(v11);
    sub_297819DD8(a1, v8, v7, v9);
    v6 = sub_2978058AC(v11);
    v12 = 1;
    sub_2978C1308(v11);
  }

  sub_2977FDEF4(v11, v6);
  sub_29780EB70(&v14, v11, &v12);
  return v14;
}

void *sub_2978C11B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_297818B70(a1, a2);
  v8 = sub_297819E68(a1, v7);
  if (v6)
  {
    v10 = v8;
    do
    {
      while (1)
      {
        v11 = v6;
        v12 = nullsub_1(a1, v9);
        if (!sub_2978C130C(v12, a3, (v6 + 4)))
        {
          break;
        }

        v6 = *v6;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_10;
        }
      }

      v13 = nullsub_1(a1, v9);
      if (!sub_2978C130C(v13, (v6 + 4), a3))
      {
        break;
      }

      v10 = v6 + 1;
      v6 = v6[1];
    }

    while (v6);
  }

  else
  {
    v11 = sub_297818B94(a1, v9);
    v10 = v11;
  }

LABEL_10:
  *a2 = v11;
  return v10;
}

uint64_t sub_2978C126C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = nullsub_1(a1, a2);
  v6 = sub_29782FD68(v5, 1uLL);
  sub_297819E70(&v12, v5, 0);
  v7 = sub_297819E74(a3, v6, &v12);
  v8 = sub_2977FB720(v7);
  v10 = nullsub_1(v8 + 32, v9);
  sub_2978C1318(v5, v10, a2);
  result = sub_297819E7C(a3);
  *(result + 8) = 1;
  return result;
}

uint64_t sub_2978C132C(uint64_t a1, uint64_t a2)
{
  result = sub_2977FD3B8(a1, a2);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t *sub_2978C1384(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978C13A0((result + 1), v3);
  }

  return result;
}

uint64_t sub_2978C13A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 8) == 1)
  {
    v4 = *result;
    v5 = nullsub_1(a2 + 32, a2);
    result = sub_2978C0D08(v4, v5);
  }

  if (a2)
  {
    v6 = *v3;

    return sub_297809C98(v6, a2, 1);
  }

  return result;
}

void *sub_2978C1420(void *a1, uint64_t a2)
{
  result = sub_2977FDEF4(a1, *a2);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_2978C1450(void *a1, unint64_t a2)
{
  v4 = sub_29784DF10(a1);
  v5 = sub_29783E83C(a1);
  v6 = sub_2977FB4FC(v4 + 2);
  if (v6 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_malloc(24 * v7, 0x10120406B1B3107uLL);
  v9 = sub_2977FB720(a1);
  v10 = sub_2977FB7B8(a1);
  sub_2978C1548(v9, v10, v8);
  v11 = sub_2977FB720(a1);
  v12 = sub_2977FB7B8(a1);
  sub_2978C0D70(v11, v12);
  if (!sub_2977FDA84(a1))
  {
    v13 = sub_2977FB720(a1);
    free(v13);
  }

  sub_2977FD5DC(a1, v8 + 24 * v5);
  *a1 = v8;
  result = sub_2977FB720(a1);
  a1[2] = result + 24 * v7;
  return result;
}

uint64_t sub_2978C1548(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = sub_2978C15A0(a3, v5);
      v5 += 24;
      a3 += 24;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_2978C15A4(uint64_t a1, uint64_t a2)
{
  result = sub_29780267C(a1, a2);
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t sub_2978C15D0(uint64_t *a1, uint64_t a2)
{
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    v14 = sub_297828314(v4);
    v15 = v5;
  }

  else
  {
    sub_2977FB7B4(&v14, &byte_2978FC3E5);
  }

  v6 = sub_2977FB720(a2);
  v7 = sub_2978C169C(a1, v6, a1[23], v14, v15);
  v8 = sub_297829064(a2);
  if (sub_2978B810C(v8))
  {
    v9 = sub_297829064(a2);
    v10 = sub_2977FB7B8(a2);
    v11 = sub_297828314(v10);
    return sub_2978C1780(a1, v9, v7, v11, v12);
  }

  return v7;
}

uint64_t sub_2978C169C(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *sub_297806460(a2);
  if (sub_2978B810C(&v17))
  {
    sub_2978C1AD4(v16);
    v10 = sub_2978C1B10(a2, v16);
    v11 = sub_2978C169C(a1, v16, a3, a4, a5, v10);
    return sub_2978C1780(a1, &v17, v11, a4, a5);
  }

  else if (sub_2978BA734(a2) == 1)
  {
    v13 = sub_297805510(a2);
    return sub_2978B5468(v13);
  }

  else
  {
    v14 = *a1;
    v15 = sub_2978BA734(a2);
    return sub_2978B5844(v14, v15);
  }
}

uint64_t sub_2978C1780(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  if (!sub_29784DD58(a2, a2))
  {
    return sub_2978B5BE4(*a1, a3);
  }

  v11 = sub_29784DD58(a2, v10);
  v12 = sub_29788C170(v11);
  if (sub_297892F04(v12))
  {
    sub_2978BC27C(v30);
    v31 = 0;
    if (sub_297896A9C(v11, a1[25], v30, &v31))
    {
      v29[0] = sub_29788C170(v11);
      v13 = sub_2977FB720(v29);
      v14 = sub_2978875FC(v13);
      if (sub_29788862C(v14) != 5 || (sub_297801E44(v30) & 0x8000000000000000) == 0)
      {
        if (sub_2978719B4(v30, 0))
        {
          v15 = sub_2978A229C(v11);
          sub_2978B677C(a1, v15, 3200, v29);
          v28 = sub_29788C170(v11);
          sub_2978C1A84(v29, &v28);
          v27 = sub_2978A2A34(v11);
          sub_2978591B8(v29, &v27);
          sub_29782963C(v29);
        }

        v16 = *a1;
        v17 = sub_2977FCF34(v30);
        v33 = sub_2978B5C64(v16, a3, v17);
        goto LABEL_16;
      }

      sub_2977FB7B4(v29, &byte_2978FC3E5);
      if (sub_297808D64(a4, a5, v29[0], v29[1]))
      {
        v24 = sub_2978A229C(v11);
        sub_2978B677C(a1, v24, 2023, v29);
        v25 = sub_2978295C0(v29, a4, a5);
        v28 = sub_2978A2A34(v11);
        v22 = v25;
        goto LABEL_14;
      }

      v26 = sub_2978A229C(v11);
      sub_2978B677C(a1, v26, 2023, v29);
      sub_2978C1A84(v29, &v32);
      v21 = v11;
    }

    else
    {
      v19 = sub_2978A229C(v11);
      sub_2978B677C(a1, v19, 2661, v29);
      v28 = sub_29788C170(v11);
      sub_2978C1A84(v29, &v28);
      v27 = sub_2978A2A34(v11);
      sub_2978591B8(v29, &v27);
      sub_29782963C(v29);
      if (!v31)
      {
LABEL_15:
        sub_29780AE44(&v33);
LABEL_16:
        sub_297871794(v30);
        return v33;
      }

      v20 = sub_2978A229C(v31);
      sub_2978B677C(a1, v20, 3584, v29);
      v21 = v31;
    }

    v28 = sub_2978A2A34(v21);
    v22 = v29;
LABEL_14:
    sub_2978591B8(v22, &v28);
    sub_29782963C(v29);
    goto LABEL_15;
  }

  v18 = sub_2978A229C(v11);
  sub_2978B677C(a1, v18, 1735, v30);
  v29[0] = sub_29788C170(v11);
  sub_2978C1A84(v30, v29);
  v31 = sub_2978A2A34(v11);
  sub_2978591B8(v30, &v31);
  sub_29782963C(v30);
  sub_29780AE44(&v33);
  return v33;
}

uint64_t sub_2978C1A84(uint64_t a1, uint64_t a2)
{
  v3 = sub_2977FB720(a2);

  return sub_2978C41AC(a1, v3);
}

double sub_2978C1B10(__int128 *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  *(a2 + 43) = *(a1 + 43);
  a2[1] = v4;
  a2[2] = v5;
  *a2 = v3;
  sub_2978C6E08(&v7);
  result = *&v7;
  a2[1] = v7;
  return result;
}

uint64_t sub_2978C1B60(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v22 = a3;
  v21 = 0;
  v5 = sub_2978B80B4(a2);
  v6 = sub_29780B1BC(&v22);
  if (!v5)
  {
    if (v6 && ((v12 = sub_2977FB720(&v22), (sub_2978B5314(v12, &v21) & 1) != 0) || (v13 = sub_2977FB720(&v22), sub_2978C1CDC(v13, &v21))))
    {
      result = sub_2978BC2A8(*(a1 + 184), v21);
      if (result)
      {
        return result;
      }

      v14 = sub_2977FB5F0(a2);
      sub_2978B677C(a1, v14, 2479, v19);
      v15 = v19;
    }

    else
    {
      result = sub_29780B1BC(&v22);
      if (!result)
      {
        return result;
      }

      v16 = sub_2977FB720(&v22);
      result = sub_2978B55FC(v16, &v21);
      if (!result)
      {
        return result;
      }

      result = sub_2978BC2A8(*(a1 + 184), v21);
      if (result)
      {
        return result;
      }

      v17 = sub_2977FB5F0(a2);
      sub_2978B677C(a1, v17, 2479, v18);
      v15 = v18;
    }

    sub_29782963C(v15);
    return 0;
  }

  if (v6)
  {
    v7 = sub_2977FB720(&v22);
    if ((sub_2978B55FC(v7, &v21) & 1) == 0)
    {
      v8 = sub_2977FB720(&v22);
      if ((sub_2978B5314(v8, &v21) & 1) == 0)
      {
        v9 = sub_2977FB720(&v22);
        if ((sub_2978C1CDC(v9, &v21) & 1) == 0)
        {
          v10 = sub_2977FB5F0(a2);
          sub_2978B677C(a1, v10, 2753, v20);
          sub_29782963C(v20);
        }
      }
    }
  }

  return sub_2978BA7D0(a2);
}

uint64_t sub_2978C1CDC(uint64_t a1, _DWORD *a2)
{
  v6 = sub_2978B5074(a1);
  v3 = sub_2977FB720(&v6);
  result = sub_2978875FC(v3);
  if (result)
  {
    v5 = sub_29788862C(result);
    *a2 = v5;
    return (v5 - 3) < 2;
  }

  return result;
}

uint64_t sub_2978C1D30(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v16 = a3;
  v8 = sub_29788C170(a3);
  v9 = v8;
  v15 = v8;
  if (a2 > 3)
  {
    if (a2 == 4)
    {
LABEL_11:
      if (!sub_2978C1EA8(v8))
      {
        goto LABEL_19;
      }

      return v9;
    }

    if (a2 == 5)
    {
      goto LABEL_13;
    }

    if (a2 != 6)
    {
LABEL_19:
      sub_2978B677C(a1, a4, 3081, v14);
      sub_2978C1A84(v14, &v15);
      v13 = sub_2978A2A34(a3);
      sub_2978591B8(v14, &v13);
      sub_29782963C(v14);
      goto LABEL_20;
    }

    sub_29784CE50(v14, &v16);
    if ((sub_2978C207C(a1, v9, 0x18Cu, v14[0], v14[1]) & 1) == 0)
    {
      goto LABEL_20;
    }

    return v15;
  }

  if (a2 == 1)
  {
    v10 = sub_2977FB720(&v15);
    v11 = sub_2978875FC(v10);
    if (!v11 || sub_29788862C(v11) != 7)
    {
      goto LABEL_19;
    }

    return v15;
  }

  if (a2 == 2)
  {
    goto LABEL_11;
  }

  if (a2 != 3)
  {
    goto LABEL_19;
  }

LABEL_13:
  if (!sub_2978C1EA8(v8))
  {
    goto LABEL_19;
  }

  if (sub_2978C1F20(a1, a3, a4))
  {
LABEL_20:
    sub_29780AE44(&v17);
    return v17;
  }

  return v9;
}

uint64_t sub_2978C1EA8(uint64_t a1)
{
  v5 = a1;
  v1 = sub_2977FB720(&v5);
  result = sub_297888658(v1);
  if (result)
  {
    v3 = result;
    if (sub_2978B5B20(result))
    {
      return 0;
    }

    else if (sub_297890438(v3) & 1) != 0 || (sub_2978C6B34(v3))
    {
      return 1;
    }

    else
    {
      v4 = sub_2977FB720(&v5);
      return sub_2978B8720(v4);
    }
  }

  return result;
}

uint64_t sub_2978C1F20(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v21[0] = sub_29788C170(a2);
  if (!sub_2977FD678())
  {
    if (sub_29788BD30(a2))
    {
      return 0;
    }

    v8 = sub_29788BFD0(a2);
    if (v8)
    {
      v9 = v8;
      v10 = sub_2977FB7B8(v8);
      v11 = sub_297892FD8(v10);
      if (v11)
      {
        v12 = sub_297887CEC(v11);
        if (v12 <= 7 && ((1 << v12) & 0xAE) != 0)
        {
LABEL_9:
          v13 = a3;
          v14 = a1;
          v15 = 3006;
LABEL_18:
          sub_2978B677C(v14, v13, v15, v21);
          v20 = sub_2978A2A34(a2);
          sub_2978591B8(v21, &v20);
          v6 = v21;
          goto LABEL_19;
        }
      }

      else
      {
        v17 = sub_2977FB7B8(v9);
        v18 = sub_2978BB120(v17);
        if (v18 && sub_297888998(v18))
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v16 = sub_2978C2C8C(a2);
      if (v16 || (v16 = sub_2978C2CC8(a2)) != 0)
      {
        v19 = sub_2977FD5B0(v16);
        return sub_2978C1F20(a1, v19, a3);
      }
    }

    v13 = a3;
    v14 = a1;
    v15 = 3043;
    goto LABEL_18;
  }

  sub_2978B677C(a1, a3, 3006, v22);
  v6 = v22;
LABEL_19:
  sub_29782963C(v6);
  return 1;
}

uint64_t sub_2978C207C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a5;
  v20 = a2;
  v19[0] = a4;
  v18 = a3;
  v7 = sub_2978C5150(a2, a3);
  if ((v7 & 1) == 0)
  {
    sub_297811C54(v17);
    sub_2978C5224(1, "float", &v18, v17);
    sub_2978C5224(0x20, "vec2, vec3, vec4", &v18, v17);
    sub_2978C5224(2, "half", &v18, v17);
    sub_2978C5224(0x40, "hvec2, hvec3, hvec4", &v18, v17);
    sub_2978C5224(4, "int", &v18, v17);
    sub_2978C5224(0x80, "ivec2, ivec3, ivec4", &v18, v17);
    sub_2978C5224(8, "uint", &v18, v17);
    sub_2978C5224(0x100, "uvec2, uvec3, uvec4", &v18, v17);
    sub_2978C5224(0x10, "BOOL", &v18, v17);
    sub_2978C5224(0x200, "bvec2, bvec3, bvec4", &v18, v17);
    sub_2978C5224(0x400, "mat2, mat3, mat4, hmat2, hmat3, hmat4", &v18, v17);
    sub_2978C5224(0x800, "mat2, mat2x3, mat2x4, mat3x2, mat3, mat3x4, mat4x2, mat4x3, mat4, hmat2, hmat2x3, hmat2x4, hmat3x2, hmat3, hmat3x4, hmat4x2, hmat4x3, hmat4", &v18, v17);
    sub_297829180(&v16);
    v8 = sub_2977FB720(v19);
    v9 = sub_2978130B8(v19);
    if (v8 != v9)
    {
      v10 = v9;
      while (1)
      {
        v11 = *v8;
        v15[0] = sub_29788C170(*v8);
        if (sub_2978B5D9C(v15, a2))
        {
          break;
        }

        if (++v8 == v10)
        {
          goto LABEL_8;
        }
      }

      v16 = sub_2977FB5F0(v11);
    }

LABEL_8:
    sub_2978B677C(a1, v16, 2312, v15);
    sub_2978C1A84(v15, &v20);
    v12 = sub_297801F10(v17);
    sub_2978295C0(v15, v12, v13);
    sub_29782963C(v15);
    sub_297801F60(v17);
  }

  return v7;
}

uint64_t sub_2978C22B8(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v10 = sub_29788C170(*a3);
  v132 = v10;
  v11 = sub_29788C170(*a4);
  v130[4] = a3;
  v131 = v11;
  v130[0] = &v131;
  v130[1] = &v132;
  v130[2] = a1;
  v130[3] = a4;
  if (a2 <= 7)
  {
    if ((a2 - 2) < 3)
    {
      if (!sub_2978B5D9C(&v132, v11))
      {
        goto LABEL_118;
      }

      v33 = sub_2977FB720(&v132);
      if (!sub_297890438(v33))
      {
        goto LABEL_118;
      }

      v34 = sub_2977FB720(&v132);
      v35 = sub_297890568(v34);
      if (sub_29788862C(v35) != 7)
      {
        goto LABEL_118;
      }

      return v132;
    }

    if ((a2 - 5) >= 3)
    {
      if (a2 != 1)
      {
        goto LABEL_118;
      }

      return sub_29788C170(*a4);
    }

    sub_29784CE50(&v128, a3);
    if ((sub_2978C207C(a1, v10, 0x18Cu, v128, v129) & 1) == 0)
    {
LABEL_64:
      sub_29780AE44(&v133);
      return v133;
    }

    if (sub_2978B5D9C(&v132, v131))
    {
      return v132;
    }

    v23 = sub_2977FB720(&v132);
    v24 = sub_2978875FC(v23);
    v25 = sub_2977FB720(&v131);
    v26 = sub_2978875FC(v25);
    v27 = sub_2977FB720(&v132);
    v28 = sub_2978876EC(v27);
    v29 = sub_2977FB720(&v131);
    v30 = sub_2978876EC(v29);
    if (v24 && (v31 = v30) != 0)
    {
      if (sub_2977FB7B8(v30) != v24)
      {
        v32 = v24;
LABEL_60:
        if (sub_29788862C(v32) == 5)
        {
          v62 = 132;
        }

        else
        {
          v62 = 264;
        }

        v63 = v131;
        sub_29784CE50(&v128, a4);
        sub_2978C207C(a1, v63, v62, v128, v129);
        goto LABEL_64;
      }

      v80 = v31;
    }

    else
    {
      if (!v28 || !v26)
      {
        goto LABEL_118;
      }

      if (sub_2977FB7B8(v28) != v26)
      {
        v61 = sub_2977FB7B8(v28);
        v32 = sub_2978875FC(v61);
        goto LABEL_60;
      }

      v80 = v28;
    }

LABEL_121:
    sub_2977FDEF4(&v133, v80);
    return v133;
  }

  if (a2 <= 0x14)
  {
    if (((1 << a2) & 0x1B0000) != 0)
    {
      v12 = sub_2977FB720(&v132);
      v13 = sub_2978875FC(v12);
      v14 = sub_2977FB720(&v131);
      v15 = sub_2978875FC(v14);
      v16 = sub_2977FB720(&v132);
      v17 = sub_2978876EC(v16);
      v18 = sub_2977FB720(&v131);
      v19 = sub_2978876EC(v18);
      v20 = sub_2977FB720(&v132);
      v21 = sub_2978877CC(v20);
      v22 = sub_2977FB720(&v131);
      v124 = sub_2978877CC(v22);
      sub_2978C2BE8(v130);
      if (v13 && v15)
      {
        goto LABEL_6;
      }

      if (v17 | v21 && v15)
      {
        goto LABEL_33;
      }

      v46 = v19 != 0;
      if (v13)
      {
        if (v19 | v124)
        {
LABEL_33:
          if (v17)
          {
            v47 = sub_2977FB7B8(v17);
            goto LABEL_35;
          }

          if (v19)
          {
            v68 = sub_2977FB7B8(v19);
          }

          else
          {
            if (v21)
            {
              v47 = sub_2977FB7B8(v21);
LABEL_35:
              if (v47 == v15)
              {
                return v132;
              }

LABEL_118:
              sub_2978B677C(a1, a5, 3054, &v128);
              sub_2978C1A84(&v128, &v132);
              sub_2978C1A84(&v128, &v131);
              v127 = sub_2978A2A34(*a3);
              v84 = sub_2978591B8(&v128, &v127);
              v126 = sub_2978A2A34(*a4);
              sub_2978591B8(v84, &v126);
              v60 = &v128;
              goto LABEL_119;
            }

            if (!v124)
            {
              goto LABEL_118;
            }

            v68 = sub_2977FB7B8(v124);
          }

          if (v68 != v13)
          {
            goto LABEL_118;
          }

          return v131;
        }

        v71 = 0;
        v70 = 0;
        v46 = 0;
      }

      else if (v17 && v19 || ((v70 = v124 != 0, v124) ? (v71 = v21 != 0) : (v71 = 0), a2 != 20 && v71))
      {
LABEL_6:
        if (!sub_2978B5D9C(&v132, v131))
        {
          goto LABEL_118;
        }

        return v132;
      }

      if (a2 != 20)
      {
        goto LABEL_118;
      }

      v72 = v46;
      if (v21)
      {
        v73 = sub_2977FB7B8(v21);
      }

      else
      {
        if (!v17)
        {
          v81 = 0;
LABEL_109:
          sub_2977FDEF4(&v128, v81);
          if (v70)
          {
            v82 = sub_2977FB7B8(v124);
          }

          else
          {
            if (!v72)
            {
              v83 = 0;
              goto LABEL_117;
            }

            v82 = sub_2977FB7B8(v19);
          }

          v83 = v82;
LABEL_117:
          sub_2977FDEF4(&v127, v83);
          if (sub_2978B5D80(&v128, v127))
          {
            goto LABEL_118;
          }

          if (v21 != 0 && v72)
          {
            v86 = sub_2977FB720(&v132);
            v87 = sub_297890568(v86);
            v88 = sub_297887A38(v87);
            v89 = sub_2977FB720(&v131);
            v90 = sub_297890568(v89);
            if (v88 != sub_297887A38(v90))
            {
              goto LABEL_118;
            }

            v91 = *a1;
            v92 = sub_2977FB720(&v132);
            v93 = sub_297890568(v92);
            v94 = sub_2977FB7B8(v93);
            v95 = sub_2978875FC(v94);
            v96 = sub_2977FB720(&v132);
            v97 = sub_297890568(v96);
            v98 = sub_297887B08(v97);
          }

          else
          {
            if (v17 == 0 || !v70)
            {
              if (!v71)
              {
                goto LABEL_118;
              }

              v109 = sub_2977FB720(&v132);
              v110 = sub_297890568(v109);
              v111 = sub_297887A38(v110);
              v112 = sub_2977FB720(&v131);
              v113 = sub_297890568(v112);
              if (v111 != sub_297887B08(v113))
              {
                goto LABEL_118;
              }

              v114 = *a1;
              v115 = sub_2977FB720(&v132);
              v116 = sub_297890568(v115);
              v117 = sub_2977FB7B8(v116);
              v118 = sub_2977FB720(&v131);
              v119 = sub_297890568(v118);
              v120 = sub_297887A38(v119);
              v121 = sub_2977FB720(&v132);
              v122 = sub_297890568(v121);
              v123 = sub_297887B08(v122);
              return sub_2978B566C(v114, v117, v120, v123);
            }

            v99 = sub_2977FB720(&v132);
            v100 = sub_297890568(v99);
            v101 = sub_297887A38(v100);
            v102 = sub_2977FB720(&v131);
            v103 = sub_297890568(v102);
            if (v101 != sub_297887B08(v103))
            {
              goto LABEL_118;
            }

            v91 = *a1;
            v104 = sub_2977FB720(&v131);
            v105 = sub_297890568(v104);
            v106 = sub_2977FB7B8(v105);
            v95 = sub_2978875FC(v106);
            v107 = sub_2977FB720(&v131);
            v108 = sub_297890568(v107);
            v98 = sub_297887A38(v108);
          }

          return sub_2978B546C(v91, v95, v98);
        }

        v73 = sub_2977FB7B8(v17);
      }

      v81 = v73;
      goto LABEL_109;
    }

    if (((1 << a2) & 0xC000) != 0)
    {
      sub_29784CE50(&v128, a3);
      if (sub_2978C207C(a1, v10, 0x18Cu, v128, v129))
      {
        v36 = v131;
        sub_29784CE50(&v128, a4);
        if (sub_2978C207C(a1, v36, 0x18Cu, v128, v129))
        {
          v37 = sub_2977FB720(&v132);
          v38 = sub_2978875FC(v37);
          v39 = sub_2977FB720(&v131);
          v40 = sub_2978875FC(v39);
          if (!v38 || v40)
          {
            v74 = sub_2977FB720(&v132);
            v75 = sub_2978876EC(v74);
            v76 = sub_2977FB720(&v131);
            v77 = sub_2978876EC(v76);
            if (!v75)
            {
              return v132;
            }

            v78 = v77;
            if (!v77)
            {
              return v132;
            }

            v79 = sub_297887A38(v75);
            if (v79 == sub_297887A38(v78))
            {
              return v132;
            }

            v41 = a5;
            v42 = a1;
            v43 = 2842;
          }

          else
          {
            v41 = a5;
            v42 = a1;
            v43 = 2841;
          }

          sub_2978B677C(v42, v41, v43, &v128);
          sub_2978C1A84(&v128, &v132);
          sub_2978C1A84(&v128, &v131);
          v127 = sub_2978A2A34(*a3);
          v44 = sub_2978591B8(&v128, &v127);
          v126 = sub_2978A2A34(*a4);
          sub_2978591B8(v44, &v126);
          sub_29782963C(&v128);
        }
      }

      goto LABEL_64;
    }

    if (a2 == 18)
    {
      v48 = sub_2977FB720(&v132);
      v49 = sub_2978875FC(v48);
      v50 = sub_2977FB720(&v131);
      v51 = sub_2978875FC(v50);
      v52 = v51;
      if (v49 && v51)
      {
        if (sub_2978B5D80(&v132, v131))
        {
          goto LABEL_118;
        }

        v53 = v49;
      }

      else
      {
        v64 = sub_2977FB720(&v132);
        v65 = sub_2978876EC(v64);
        v66 = sub_2977FB720(&v131);
        v67 = sub_2978876EC(v66);
        if (!v65 || !v67)
        {
          if (v65 && v52)
          {
            if (sub_2977FB7B8(v65) != v52 || sub_29788862C(v52) - 7 < 0xFFFFFFFE)
            {
              goto LABEL_118;
            }

            return v132;
          }

          if (!v49 || !v67 || sub_2977FB7B8(v67) != v49 || sub_29788862C(v49) - 7 < 0xFFFFFFFE)
          {
            goto LABEL_118;
          }

          return v131;
        }

        if (sub_2978B5D80(&v132, v131))
        {
          goto LABEL_118;
        }

        v53 = v65;
      }

      sub_2977FDEF4(&v127, v53);
      sub_29784CE50(&v128, a3);
      if ((sub_2978C207C(a1, v127, 0x18Cu, v128, v129) & 1) == 0)
      {
        goto LABEL_120;
      }

      return v132;
    }
  }

  if ((a2 - 10) >= 4)
  {
    if ((a2 - 8) >= 2)
    {
      goto LABEL_118;
    }

    sub_2978C2BE8(v130);
    if (!sub_2978B5D9C(&v132, v131))
    {
      goto LABEL_118;
    }

    return sub_2978B5844(*a1, 7);
  }

  sub_2978C2BE8(v130);
  if (!sub_2978B5D9C(&v132, v131) || (v54 = sub_2977FB720(&v132), !sub_297890438(v54)) || (v55 = sub_2977FB720(&v132), v56 = sub_297890568(v55), v57 = sub_29788862C(v56), v57 > 6) || ((1 << v57) & 0x68) == 0)
  {
    v58 = sub_2977FB720(&v132);
    if (!sub_297890438(v58) || (v59 = sub_2977FB720(&v131), (sub_297890438(v59) & 1) == 0))
    {
      sub_2978B677C(a1, a5, 1958, v125);
      v60 = v125;
LABEL_119:
      sub_29782963C(v60);
LABEL_120:
      v80 = 0;
      goto LABEL_121;
    }

    sub_2978B5D80(&v132, v131);
    goto LABEL_118;
  }

  return sub_2978B5844(*a1, 7);
}

uint64_t sub_2978C2BE8(uint64_t **a1)
{
  v1 = a1;
  v2 = a1[2];
  result = sub_2978B5D80(*a1, *a1[1]);
  if (result)
  {
    v4 = v1 + 3;
    result = sub_2978C2F34(v2, *v1[3], *v1[1]);
    if (!result)
    {
      v4 = v1 + 4;
      result = sub_2978C2F34(v2, *v1[4], **v1);
      if (!result)
      {
        return result;
      }

      ++v1;
    }

    **v4 = result;
    result = sub_29788C170(**v4);
    **v1 = result;
  }

  return result;
}

uint64_t sub_2978C2C8C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978A44DC(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978C2CC8(uint64_t a1)
{
  v2 = a1;
  if (sub_2978A447C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978C2D04(uint64_t *a1, int a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v24 = a3;
  if (sub_2978C1F20(a1, a3, a5))
  {
    goto LABEL_30;
  }

  sub_29780AE44(&v23);
  if (a2 > 5)
  {
    v10 = a1;
    if (a2 > 8)
    {
      if (a2 == 9)
      {
        v11 = 14;
      }

      else if (a2 == 10)
      {
        v11 = 17;
      }

      else
      {
        v11 = 6;
      }
    }

    else if (a2 == 6)
    {
      v11 = 18;
    }

    else if (a2 == 7)
    {
      v11 = 20;
    }

    else
    {
      v11 = 5;
    }

    goto LABEL_24;
  }

  if (a2 <= 2)
  {
    v10 = a1;
    if (a2 == 1)
    {
      v11 = 16;
    }

    else
    {
      v11 = 7;
    }

    goto LABEL_24;
  }

  if (a2 == 3)
  {
    v10 = a1;
    v11 = 19;
LABEL_24:
    v15 = sub_2978C22B8(v10, v11, &v24, a4, a5);
    goto LABEL_25;
  }

  if (a2 != 4)
  {
    v10 = a1;
    v11 = 15;
    goto LABEL_24;
  }

  v12 = *a4;
  v13 = sub_29788C170(a3);
  v14 = sub_2978C2F34(a1, v12, v13);
  if (v14)
  {
    *a4 = v14;
  }

  else
  {
    v14 = *a4;
  }

  v15 = sub_29788C170(v14);
LABEL_25:
  v23 = v15;
  if (!sub_29780B1BC(&v23))
  {
LABEL_30:
    sub_29780AE44(&v25);
    return v25;
  }

  v22[0] = sub_29788C170(v24);
  if ((sub_2978B5D80(v22, v23) & 1) != 0 || v24 != a3)
  {
    sub_2978B677C(a1, a5, 2420, v22);
    v21 = sub_29788C170(v24);
    sub_2978C1A84(v22, &v21);
    v20 = sub_2978A2A34(v24);
    v16 = sub_2978591B8(v22, &v20);
    v19 = sub_29788C170(*a4);
    sub_2978C1A84(v16, &v19);
    v18 = sub_2978A2A34(*a4);
    sub_2978591B8(v16, &v18);
    sub_29782963C(v22);
    goto LABEL_30;
  }

  return v23;
}

_DWORD *sub_2978C2F34(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v14 = a3;
  v13 = sub_29788C170(a2);
  v5 = sub_2977FB720(&v13);
  v6 = sub_297888658(v5);
  v7 = sub_2977FB720(&v14);
  v8 = sub_297888658(v7);
  result = 0;
  if (v8 && v6)
  {
    if (sub_29788327C(a1[1], 4u) && (v10 = sub_29788862C(v6), v11 = sub_29788862C(v8), sub_2978C6B5C(v10, v11)))
    {
      v12 = *a1;
      sub_2977FDEF4(&v13, v8);
      return sub_2978A3954(v12, v13, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2978C3000(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_2978BC27C(v20);
  v19 = 0;
  v6 = sub_2977FB720(a2);
  if ((sub_297896A9C(v6, *(a1 + 200), v20, &v19) & 1) == 0)
  {
    v9 = sub_29782B550(a2);
    sub_2978B677C(a1, v9, 2387, v18);
    v8 = v18;
    goto LABEL_9;
  }

  if (sub_2977FB5F8(v20) && sub_2977FB634(v20))
  {
    v7 = sub_29782B550(a2);
    sub_2978B677C(a1, v7, 2386, v17);
    v8 = v17;
LABEL_9:
    sub_29782963C(v8);
    v12 = 0;
    goto LABEL_10;
  }

  v10 = sub_2977FCF34(v20);
  if (v10 >= 0x100)
  {
    v13 = sub_29782B550(a2);
    sub_2978B677C(a1, v13, 2388, v16);
    v14 = sub_29785965C(v16, v10);
    sub_29785965C(v14, 0xFFu);
    v8 = v16;
    goto LABEL_9;
  }

  v11 = sub_2977FCF34(v20);
  sub_2978C3138(a3, v11);
  v12 = 1;
LABEL_10:
  sub_297871794(v20);
  return v12;
}

uint64_t sub_2978C3150(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int *a4, int *a5)
{
  v10 = sub_2978B80F0(a2);
  if (v10 > 4)
  {
    if (v10 == 5)
    {
      goto LABEL_10;
    }

    if (v10 == 6)
    {
LABEL_15:
      v62 = sub_297830E3C(a2);
      v63 = v22;
      v23 = sub_2977FB720(&v62);
      v24 = sub_29784CB4C(&v62);
      if (v23 != v24)
      {
        v25 = v24;
        while (1)
        {
          v61 = *v23;
          if (sub_29782B234(&v61) != 46)
          {
            break;
          }

          if (++v23 == v25)
          {
            goto LABEL_19;
          }
        }

        v46 = sub_29782B550(&v61);
        sub_2978B677C(a1, v46, 2643, v59);
        v12 = v59;
        goto LABEL_40;
      }

LABEL_19:
      v62 = sub_297830E3C(a2);
      v63 = v26;
      if (sub_2977FB7B8(&v62) >= 2)
      {
        v62 = sub_297830E3C(a2);
        v63 = v27;
        v28 = sub_2978C35C8(&v62);
        v29 = sub_29782B550(v28);
        sub_2978B677C(a1, v29, 4102, v58);
        sub_29782963C(v58);
        v62 = sub_297830E3C(a2);
        v63 = v30;
        v31 = sub_2977FB720(&v62);
        v32 = sub_29782B550(v31);
        sub_2978B677C(a1, v32, 3555, v57);
        sub_29782963C(v57);
      }

      goto LABEL_21;
    }

    if (v10 != 7)
    {
LABEL_9:
      v11 = sub_297847BE0(a2);
      sub_2978B677C(a1, v11, 2373, v64);
      v12 = v64;
LABEL_40:
      sub_29782963C(v12);
      v35 = 0;
      return v35 & 1;
    }
  }

  else
  {
    if (v10)
    {
      if (v10 != 3)
      {
        if (v10 != 4)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

LABEL_10:
      *&v61 = sub_297830E3C(a2);
      *(&v61 + 1) = v13;
      v14 = sub_2977FB720(&v61);
      v15 = sub_29782B550(v14);
      sub_2978B677C(a1, v15, 2374, &v62);
      v16 = sub_29783F028(&v62, "in");
      sub_29783F028(v16, "vertex");
      sub_29782963C(&v62);
      v62 = sub_297830E3C(a2);
      v63 = v17;
      v18 = sub_2977FB720(&v62);
      v19 = sub_29784CB4C(&v62);
      if (v18 != v19)
      {
        v20 = v19;
        while (1)
        {
          v61 = *v18;
          if (sub_29782B234(&v61) != 46)
          {
            break;
          }

          if (++v18 == v20)
          {
            goto LABEL_14;
          }
        }

        v45 = sub_29782B550(&v61);
        sub_2978B677C(a1, v45, 2643, v60);
        v12 = v60;
        goto LABEL_40;
      }

LABEL_14:
      v62 = sub_297830E3C(a2);
      v63 = v21;
      sub_2977FB7B8(&v62);
LABEL_21:
      v62 = sub_297830E3C(a2);
      v63 = v33;
      v34 = sub_2978C35C8(&v62);
      v35 = sub_2978C3000(a1, v34, a3);
      return v35 & 1;
    }

    if (!sub_2978B7D34(*(a1 + 184)))
    {
      v62 = sub_297830E3C(a2);
      v63 = v47;
      v48 = sub_2977FB720(&v62);
      v49 = sub_29782B550(v48);
      sub_2978B677C(a1, v49, 2376, v56);
      v12 = v56;
      goto LABEL_40;
    }
  }

  v62 = sub_297830E3C(a2);
  v63 = v36;
  v37 = sub_2977FB720(&v62);
  v38 = sub_29784CB4C(&v62);
  if (v37 == v38)
  {
    v35 = 1;
  }

  else
  {
    v39 = v38;
    v35 = 1;
    do
    {
      v61 = *v37;
      v40 = sub_29782B234(&v61);
      v41 = byte_2978FC014[v40];
      if (byte_2978FC014[v40])
      {
        if (sub_297887D94(byte_2978FC014[v40]))
        {
          if (sub_297887D4C(a3))
          {
            v42 = sub_29782B550(&v61);
            sub_2978B677C(a1, v42, 4102, v54);
            sub_29782963C(v54);
            sub_2978B677C(a1, *a4, 3555, v53);
            sub_29782963C(v53);
          }

          sub_2978B7170(a3, v41);
          *a4 = sub_29782B550(&v61);
        }

        else
        {
          sub_297887DA4(v41);
          if (sub_297887D7C(a3))
          {
            v44 = sub_29782B550(&v61);
            sub_2978B677C(a1, v44, 4102, v52);
            sub_29782963C(v52);
            sub_2978B677C(a1, *a5, 3555, v51);
            sub_29782963C(v51);
          }

          sub_2978B7188(a3, v41);
          *a5 = sub_29782B550(&v61);
        }
      }

      else
      {
        v43 = sub_29782B550(&v61);
        sub_2978B677C(a1, v43, 2493, v55);
        sub_29782963C(v55);
        v35 = 0;
      }

      ++v37;
    }

    while (v37 != v39);
  }

  return v35 & 1;
}

uint64_t sub_2978C35D8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_2978C3658(a2);
  if ((v5 & 1) == 0)
  {
    sub_2978B677C(a1, a3, 2299, v8);
    v6 = sub_29783F028(v8, "fragment");
    sub_29783F028(v6, "in");
    sub_29782963C(v8);
  }

  return v5;
}

uint64_t sub_2978C3658(uint64_t a1)
{
  v20 = a1;
  v19 = 0;
  v1 = sub_2977FB720(&v20);
  if (sub_2978C1CDC(v1, &v19))
  {
    return 1;
  }

  v2 = sub_2977FB720(&v20);
  if (sub_2978B5314(v2, &v19))
  {
    return 1;
  }

  v4 = sub_2977FB720(&v20);
  if (sub_2978BA7E8(v4))
  {
    return 0;
  }

  v5 = sub_2977FB720(&v20);
  if (sub_297888970(v5))
  {
    return 0;
  }

  v6 = sub_2977FB720(&v20);
  result = sub_297887DB4(v6);
  if (result)
  {
    v7 = sub_2977FB7B8(result);
    v8 = sub_297803A7C(v7 + 16);
    v9 = sub_297888490(v7 + 16);
    if (v8 == v9)
    {
      return 1;
    }

    v10 = v9;
    while (1)
    {
      v11 = *v8;
      v12 = sub_2978862BC(*v8);
      v13 = sub_2978862C0(v11);
      if (v12 != v13)
      {
        break;
      }

LABEL_17:
      ++v8;
      result = 1;
      if (v8 == v10)
      {
        return result;
      }
    }

    v14 = v13;
    while (1)
    {
      v18 = sub_29788C514(*v12);
      v15 = sub_2977FB720(&v18);
      v16 = sub_297888658(v15);
      LODWORD(v18) = 0;
      if (!v16)
      {
        return 0;
      }

      v17 = v16;
      if ((sub_2978B5314(v16, &v18) & 1) == 0 && !sub_2978C1CDC(v17, &v18))
      {
        return 0;
      }

      if (++v12 == v14)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t sub_2978C37A4(uint64_t a1, uint64_t a2)
{
  v8[0] = a1;
  v8[1] = a2;
  if (sub_297806914(v8))
  {
    return 0;
  }

  v2 = sub_2977FB720(v8);
  v3 = sub_2978130B8(v8);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  do
  {
    v6 = *v2;
    if (v5 < sub_29788BC5C(*v2))
    {
      v5 = sub_29788BC5C(v6);
    }

    ++v2;
  }

  while (v2 != v4);
  return v5;
}

uint64_t sub_2978C383C(uint64_t *a1, uint64_t *a2, int a3)
{
  result = sub_29788BC5C(*a2);
  if (result != a3)
  {
    sub_2978C3968(*a2);
    v14[0] = sub_29788C170(*a2);
    v7 = sub_2977FB720(v14);
    v8 = sub_297888658(v7);
    if (v8)
    {
      v9 = v8;
      if (sub_29788862C(v8) == 5 || sub_29788862C(v9) == 6)
      {
        sub_2978BC27C(v14);
        if (sub_2978BC280(*a2, a1[25], v14))
        {
          sub_2978C1328(v13, v14);
          v10 = sub_2978C39A4(v13, a3);
          sub_297871794(v13);
          if (!v10)
          {
            v11 = sub_2977FB5F0(*a2);
            sub_2978B677C(a1, v11, 4105, v12);
            sub_29782963C(v12);
          }
        }

        sub_297871794(v14);
      }
    }

    if (sub_29788BC5C(*a2))
    {
      result = sub_2978A3904(*a1, a3, *a2);
      *a2 = result;
    }

    else
    {
      return sub_2978A2D74(*a2, a3);
    }
  }

  return result;
}

uint64_t sub_2978C3968(uint64_t a1)
{
  v2 = a1;
  if (sub_2978C6EB0(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

BOOL sub_2978C39A4(int *a1, int a2)
{
  v3 = dword_2978FC064[a2 - 1];
  if (sub_2977FB5F8(a1))
  {
    v4 = sub_2978C6E68(a1);
  }

  else
  {
    v4 = sub_2977FD698(a1);
  }

  return v4 <= v3;
}

uint64_t sub_2978C39F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a2;
  v15[1] = a3;
  v14 = 0;
  v4 = sub_29789056C(v15);
  v5 = sub_2978BCC2C(v15);
  if (v4 != v5)
  {
    v6 = v5;
    do
    {
      v7 = *v4++;
      v13 = sub_29788BC5C(v7);
      v14 = *sub_2977FF288(&v14, &v13);
    }

    while (v4 != v6);
  }

  v8 = sub_29789056C(v15);
  result = sub_2978BCC2C(v15);
  if (v8 != result)
  {
    v10 = result;
    do
    {
      v11 = sub_29788BC5C(*v8);
      v12 = *v8;
      if (v11)
      {
        result = sub_29788BC5C(v12);
        if (result != v14)
        {
          result = sub_2978A3904(*a1, v14, *v8);
          *v8 = result;
        }
      }

      else
      {
        result = sub_2978A2D74(v12, v14);
      }

      ++v8;
    }

    while (v8 != v10);
  }

  return result;
}

uint64_t sub_2978C3AE4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_29788BC5C(*a2);
  result = sub_29788BC5C(*a3);
  if (v6 != result)
  {
    v8 = result;
    if (v6)
    {
      if (result)
      {
        v9 = *a1;
        if (v6 <= v8)
        {
          result = sub_2978A3904(v9, v8, *a2);
          *a2 = result;
        }

        else
        {
          result = sub_2978A3904(v9, v6, *a3);
          *a3 = result;
        }

        return result;
      }

      v10 = *a3;
      v8 = v6;
    }

    else
    {
      v10 = *a2;
    }

    return sub_2978A2D74(v10, v8);
  }

  return result;
}

uint64_t sub_2978C3B9C(uint64_t a1, int a2, int a3, int a4)
{
  v15 = a2;
  if (sub_297887D4C(&v15))
  {
    v7 = sub_297887D70((a1 + 440));
    if (v7 == sub_297887D70(&v15))
    {
      sub_2978B677C(a1, a3, 4104, v14);
      sub_29782963C(v14);
      if (sub_297829730((a1 + 444)))
      {
        sub_2978B677C(a1, a3, 3554, v13);
        v8 = 1;
      }

      else
      {
        sub_2978B677C(a1, *(a1 + 444), 3554, v13);
        v8 = 0;
      }

      sub_2978563C8(v13, v8);
      sub_29782963C(v13);
    }
  }

  result = sub_297887D7C(&v15);
  if (result)
  {
    v10 = sub_297887D88((a1 + 440));
    result = sub_297887D88(&v15);
    if (v10 == result)
    {
      sub_2978B677C(a1, a4, 4104, v12);
      sub_29782963C(v12);
      if (sub_297829730((a1 + 448)))
      {
        sub_2978B677C(a1, a4, 3554, v13);
        v11 = 1;
      }

      else
      {
        sub_2978B677C(a1, *(a1 + 448), 3554, v13);
        v11 = 0;
      }

      sub_2978563C8(v13, v11);
      return sub_29782963C(v13);
    }
  }

  return result;
}

uint64_t sub_2978C3D10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v20[0] = a2;
  v20[1] = a3;
  v10 = sub_2977FB720(v20);
  v11 = sub_2978130B8(v20);
  if (v10 == v11)
  {
LABEL_7:
    sub_2978B677C(a1, a4, 1875, v19);
    v17 = sub_297869558(v19, a5);
    sub_297869558(v17, a6);
    sub_29782963C(v19);
    return 0;
  }

  else
  {
    v12 = v11;
    while (1)
    {
      v13 = *v10;
      v14 = sub_2978862BC(*v10);
      v15 = sub_2978862C0(v13);
      if (v14 != v15)
      {
        break;
      }

LABEL_6:
      if (++v10 == v12)
      {
        goto LABEL_7;
      }
    }

    while (1)
    {
      v16 = *v14;
      if (sub_2978BDEBC(a1, *v14) == a5)
      {
        return sub_29781BF50(v16);
      }

      if (++v14 == v15)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t sub_2978C3E1C(uint64_t *a1, _BYTE *a2, _DWORD *a3, int a4, uint64_t a5, int a6)
{
  v12 = sub_297828CB8(a5);
  v37 = 0;
  v13 = sub_2978C411C(*v12);
  if (v13 == -1)
  {
    v17 = sub_2978C4148(*v12);
    if (v17 == -1)
    {
      v20 = sub_2978C4184(*v12);
      if (v20 == -1)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          v14 |= *(&v37 + v20);
          *(&v37 + v20) = 1;
          v21 = *++v12;
          v20 = sub_2978C4184(v21);
        }

        while (v20 != -1);
      }

LABEL_16:
      if (*v12)
      {
        sub_2978B677C(a1, a4, 2152, v35);
        sub_2977FB7C0(v36, v12, 1);
        v22 = sub_2978295C0(v35, v36[0], v36[1]);
        sub_2978634C0(v36, a6);
        v23 = v22;
LABEL_18:
        sub_2978591B8(v23, v36);
        sub_29782963C(v35);
        sub_29780AE44(&v38);
        return v38;
      }
    }

    else
    {
      v14 = 0;
      while (1)
      {
        v14 |= *(&v37 + v17);
        *(&v37 + v17) = 1;
        v19 = *++v12;
        v18 = v19;
        if (!v19)
        {
          break;
        }

        v17 = sub_2978C4148(v18);
        if (v17 == -1)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v14 = 0;
    while (1)
    {
      v14 |= *(&v37 + v13);
      *(&v37 + v13) = 1;
      v16 = *++v12;
      v15 = v16;
      if (!v16)
      {
        break;
      }

      v13 = sub_2978C411C(v15);
      if (v13 == -1)
      {
        goto LABEL_16;
      }
    }
  }

  v24 = sub_297828CD0(a5);
  if (v24 >= 5)
  {
    sub_2978068F8(v35);
    sub_2977FB51C(v36, 64, v24, 0);
    sub_297801AA0(v36, v35, 0xAu, 0, 0);
    sub_2978B677C(a1, a4, 3181, v34);
    v25 = sub_297801F10(v35);
    v27 = sub_2978295C0(v34, v25, v26);
    sub_2978634C0(&v33, a6);
    sub_2978591B8(v27, &v33);
    sub_29782963C(v34);
    sub_29780AE44(&v38);
    sub_2977FAA04(v36);
    sub_297801F60(v35);
    return v38;
  }

  v28 = sub_297887A38(a2);
  if (v28 != 4)
  {
    while (*(&v37 + v28) != 1)
    {
      if (++v28 == 4)
      {
        goto LABEL_24;
      }
    }

    sub_2978B677C(a1, a4, 2151, v35);
    sub_2978C41AC(v35, a2);
    sub_2978634C0(v36, a6);
    v23 = v35;
    goto LABEL_18;
  }

LABEL_24:
  if (v24 == 1)
  {
    v29 = sub_2977FB7B8(a2);
    sub_2977FDEF4(&v38, v29);
  }

  else
  {
    if (v14)
    {
      *a3 = 0;
    }

    v30 = *a1;
    v31 = sub_2977FB7B8(a2);
    return sub_2978B546C(v30, v31, v24);
  }

  return v38;
}

uint64_t sub_2978C411C(char a1)
{
  if ((a1 - 119) > 3u)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_2978FC0B0[(a1 - 119)];
  }
}

uint64_t sub_2978C4148(int a1)
{
  if (a1 == 114)
  {
    v1 = 0;
  }

  else
  {
    v1 = -1;
  }

  if (a1 == 103)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 98)
  {
    v3 = 2;
  }

  else
  {
    v3 = -1;
  }

  if (a1 == 97)
  {
    v3 = 3;
  }

  if (a1 <= 102)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2978C4184(int a1)
{
  if ((a1 - 112) > 4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_2978FC070[(a1 - 112)];
  }
}

uint64_t sub_2978C41B0(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v20 = a5;
  v21 = a6;
  if (sub_2977FB7B8(&v20) >= 2)
  {
    sub_2978B677C(a1, a4, 2116, v19);
    v12 = sub_2978563C8(v19, 2);
    v13 = sub_2977FE5F8(&v20, 1);
    v14 = sub_2977FB5F0(*v13);
    sub_2978634C0(&v18, v14);
    sub_2978591B8(v12, &v18);
    v15 = v19;
LABEL_5:
    sub_29782963C(v15);
    return 0;
  }

  if (sub_297806914(&v20))
  {
    sub_2978B677C(a1, a4, 2101, v17);
    v15 = v17;
    goto LABEL_5;
  }

  return sub_2978A31F8(*a1, a2, a3, 0, v20, v21, a7);
}

uint64_t sub_2978C42B0(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v65 = a6;
  v66 = a2;
  v64 = a5;
  if (sub_2977FB7B8(&v64) == 1)
  {
    v12 = sub_2977FE5F8(&v64, 0);
    v61[0] = sub_29788C170(*v12);
    v13 = sub_2977FB720(v61);
    if (sub_297890438(v13))
    {
      v14 = *a1;
      v15 = a3;
      v16 = a7;
      v17 = v64;
      v18 = v65;
      v19 = a2;
      v20 = 1;
      return sub_2978A31F8(v14, v19, v15, v20, v17, v18, v16);
    }
  }

  v21 = sub_2977FB720(&v66);
  v22 = sub_29781BF50(v21);
  v23 = sub_297887A38(v22);
  v24 = sub_2977FB7B8(&v64);
  if (v24 && v23 >= 1)
  {
    v25 = 0;
    v26 = v24 - 1;
    do
    {
      v27 = sub_2977FE5F8(&v64, v25);
      v61[0] = sub_29788C170(*v27);
      v28 = sub_2977FB720(v61);
      if (sub_297890438(v28))
      {
        --v23;
      }

      else
      {
        v29 = sub_2977FB720(v61);
        v30 = sub_29788799C(v29);
        v31 = sub_2977FB720(v61);
        v32 = sub_297887A6C(v31);
        if (!(v30 | v32))
        {
          return 0;
        }

        if (v30)
        {
          v33 = sub_297887A38(v30);
        }

        else
        {
          v33 = sub_2978A1DA8(v32);
        }

        v23 -= v33;
      }

      v34 = v25 + 1;
      if (v26 == v25)
      {
        break;
      }

      ++v25;
    }

    while (v23 > 0);
    if (v23 <= 0)
    {
      goto LABEL_31;
    }
  }

  else if (v23 < 1)
  {
    v34 = 0;
LABEL_31:
    if (sub_2977FB7B8(&v64) == v34)
    {
      v14 = *a1;
      v18 = v65;
      v19 = v66;
      v15 = a3;
      v16 = a7;
      v17 = v64;
      v20 = 0;
      return sub_2978A31F8(v14, v19, v15, v20, v17, v18, v16);
    }

    sub_2978B677C(a1, a4, 2116, v61);
    v55 = sub_2978563C8(v61, 1);
    v56 = sub_2977FE5F8(&v64, v34);
    v57 = sub_2977FB5F0(*v56);
    sub_2978634C0(&v59, v57);
    sub_2978591B8(v55, &v59);
    goto LABEL_37;
  }

  sub_2978B677C(a1, a4, 2019, v63);
  sub_29782963C(v63);
  if (v22)
  {
    v35 = sub_2977FB720(&v64);
    v36 = sub_2978130B8(&v64);
    if (v35 == v36)
    {
      v53 = 0;
    }

    else
    {
      v37 = v36;
      v38 = 0;
      do
      {
        v39 = *v35;
        v62 = sub_29788C170(*v35);
        v40 = sub_2977FB720(&v62);
        if (sub_297890438(v40))
        {
          v41 = sub_2977FB5F0(v39);
          sub_2978B677C(a1, v41, 3798, v61);
          sub_2977FB7C0(&v59, &aXyzw[v38], 1);
          v42 = sub_2978295C0(v61, v59, v60);
          v43 = sub_2978563C8(v42, 0);
          v59 = sub_2978A2A34(v39);
          sub_2978591B8(v43, &v59);
          sub_29782963C(v61);
          ++v38;
        }

        else
        {
          v44 = sub_2977FB720(&v62);
          v45 = sub_29788799C(v44);
          v46 = sub_2977FB720(&v62);
          v47 = sub_297887A6C(v46);
          if (v45)
          {
            v48 = sub_297887A38(v45);
          }

          else
          {
            v48 = sub_2978A1DA8(v47);
          }

          v49 = v48;
          v50 = sub_2977FB5F0(v39);
          sub_2978B677C(a1, v50, 3798, v61);
          sub_2977FB7C0(&v59, &aXyzw[v38], v49);
          v51 = sub_2978295C0(v61, v59, v60);
          v52 = sub_2978563C8(v51, 1);
          v59 = sub_2978A2A34(v39);
          sub_2978591B8(v52, &v59);
          sub_29782963C(v61);
          v38 += v49;
        }

        ++v35;
      }

      while (v35 != v37);
      v53 = v38;
    }

    sub_2978B677C(a1, a7, 3799, v61);
    sub_2977FB7C0(&v59, &aXyzw[v53], v23);
    v58 = sub_2978295C0(v61, v59, v60);
    sub_29785965C(v58, v23 != 1);
LABEL_37:
    sub_29782963C(v61);
  }

  return 0;
}

uint64_t sub_2978C4690(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v53[5] = *MEMORY[0x29EDCA608];
  v51 = a6;
  v52 = a2;
  v50 = a5;
  if (sub_2977FB7B8(&v50) == 1)
  {
    v12 = sub_2977FE5F8(&v50, 0);
    v53[0] = sub_29788C170(*v12);
    v13 = sub_2977FB720(v53);
    if (sub_297890438(v13))
    {
      v14 = *a1;
      v15 = a3;
      v16 = a7;
      v17 = v50;
      v18 = v51;
      v19 = a2;
      v20 = 1;
LABEL_20:
      v34 = sub_2978A31F8(v14, v19, v15, v20, v17, v18, v16);
      goto LABEL_29;
    }
  }

  v21 = sub_2977FB720(&v52);
  v22 = sub_29781BF50(v21);
  v23 = sub_2978A1DA8(v22);
  v24 = sub_2977FB7B8(&v50);
  v25 = v24;
  if (!v24 || v23 < 1)
  {
    if (v23 >= 1)
    {
LABEL_16:
      sub_2978B677C(a1, a4, 2019, v46);
      v33 = v46;
      goto LABEL_27;
    }

    v32 = 0;
LABEL_18:
    if (sub_2977FB7B8(&v50) != v32)
    {
      sub_2978B677C(a1, a4, 2116, v53);
      v39 = sub_2978563C8(v53, 1);
      v40 = sub_2977FE5F8(&v50, v32);
      v41 = sub_2977FB5F0(*v40);
      sub_2978634C0(v48, v41);
      sub_2978591B8(v39, v48);
      v33 = v53;
      goto LABEL_27;
    }

    v14 = *a1;
    v18 = v51;
    v19 = v52;
    v15 = a3;
    v16 = a7;
    v17 = v50;
    v20 = 0;
    goto LABEL_20;
  }

  v26 = 0;
  v27 = v24 - 1;
  while (1)
  {
    v28 = sub_2977FE5F8(&v50, v26);
    v49 = sub_29788C170(*v28);
    v29 = sub_2977FB720(&v49);
    if (sub_297890438(v29))
    {
      --v23;
      goto LABEL_11;
    }

    v30 = sub_2977FB720(&v49);
    v31 = sub_29788799C(v30);
    if (!v31)
    {
      break;
    }

    v23 -= sub_297887A38(v31);
LABEL_11:
    v32 = v26 + 1;
    if (v27 != v26)
    {
      ++v26;
      if (v23 > 0)
      {
        continue;
      }
    }

    if (v23 > 0)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v35 = sub_2977FB720(&v49);
  if (!sub_2978B8720(v35))
  {
    goto LABEL_28;
  }

  if (v25 == 1 && !v26)
  {
    sub_297864964(v53);
    v36 = sub_2977FE5F8(&v50, 0);
    sub_2978040A4(v53, v36);
    v37 = *a1;
    v38 = v52;
    sub_29780B1E8(v48, v53);
    v34 = sub_2978A31F8(v37, v38, a3, 2, v48[0], v48[1], a7);
    sub_2977FD134(v53);
    goto LABEL_29;
  }

  v42 = sub_2977FE5F8(&v50, v26);
  v43 = sub_2977FB5F0(*v42);
  sub_2978B677C(a1, v43, 2400, v47);
  v33 = v47;
LABEL_27:
  sub_29782963C(v33);
LABEL_28:
  v34 = 0;
LABEL_29:
  v44 = *MEMORY[0x29EDCA608];
  return v34;
}

uint64_t sub_2978C497C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = sub_2978B84F8(a2);
  if (sub_297887CEC(v3) && sub_297887CEC(v3) != 7)
  {
    v11 = sub_297847BE0(v3);
    sub_2978B677C(a1, v11, 3124, v15);
    sub_29782963C(v15);
    v5 = sub_297847BE0(v3);
    v6 = v14;
    v7 = v14;
    v8 = a1;
    v9 = 3773;
  }

  else
  {
    v13 = sub_2977FD5B0(v3);
    v4 = sub_2977FB720(&v13);
    if (!sub_2978B90B8(v4))
    {
      return 1;
    }

    v5 = sub_297847BE0(v3);
    v6 = v12;
    v7 = v12;
    v8 = a1;
    v9 = 2302;
  }

  sub_2978B677C(v8, v5, v9, v7);
  sub_29782963C(v6);
  return 0;
}

uint64_t sub_2978C4A6C(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v42 = a6;
  v43 = a2;
  v41 = a5;
  v11 = sub_2977FB720(&v43);
  v12 = sub_29781BF50(v11);
  v13 = sub_2977FB7B8(v12);
  v14 = sub_29789056C(&v41);
  v15 = sub_297803A7C(v13 + 16);
  v16 = sub_297888490(v13 + 16);
  if (v15 == v16)
  {
LABEL_13:
    if (v14 == sub_2978BCC2C(&v41))
    {
      return sub_2978A31F8(*a1, v43, a3, 0, v41, v42, a7);
    }

    sub_2978B677C(a1, a4, 2116, v39);
    v26 = sub_2978563C8(v39, 4);
    v27 = sub_2977FB5F0(*v14);
    sub_2978634C0(&v38, v27);
    v28 = &v38;
LABEL_16:
    sub_2978591B8(v26, v28);
    v34 = v39;
LABEL_17:
    sub_29782963C(v34);
  }

  else
  {
    v17 = v16;
    while (1)
    {
      v18 = *v15;
      if (v14 == sub_2978BCC2C(&v41))
      {
        sub_2978B677C(a1, a4, 2019, v40);
        v34 = v40;
        goto LABEL_17;
      }

      v19 = sub_2978862BC(v18);
      v20 = sub_2978862C0(v18);
      if (v19 != v20)
      {
        break;
      }

LABEL_12:
      if (++v15 == v17)
      {
        goto LABEL_13;
      }
    }

    v21 = v20;
    while (1)
    {
      v22 = *v19;
      if (!*v19 || !*v14)
      {
        break;
      }

      v39[0] = sub_29788C514(*v19);
      v23 = sub_29788C170(*v14);
      if (sub_2978B5D80(v39, v23))
      {
        v29 = sub_2977FB5F0(*v14);
        sub_2978B677C(a1, v29, 2284, v39);
        v30 = sub_2978563C8(v39, 1);
        v38 = sub_29788C514(v22);
        v31 = sub_2978C1A84(v30, &v38);
        v32 = sub_2978563C8(v31, 0);
        v37 = sub_29788C170(*v14);
        v33 = sub_2978C1A84(v32, &v37);
        v26 = sub_2978563C8(v33, 0);
        v36 = sub_2978A2A34(*v14);
        v28 = &v36;
        goto LABEL_16;
      }

      v24 = sub_29781BF50(v22);
      v25 = sub_297887D1C(v24);
      if (v25)
      {
        sub_2978C383C(a1, v14, v25);
      }

      ++v14;
      if (++v19 == v21)
      {
        goto LABEL_12;
      }
    }
  }

  return 0;
}

uint64_t sub_2978C4CD0(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v38 = a2;
  v36 = a5;
  v37 = a6;
  sub_29780AE44(&v35);
  v11 = sub_2977FB720(&v38);
  v12 = sub_297888660(v11);
  if (v12)
  {
    v13 = sub_2977FB7B8(v12);
  }

  else
  {
    v13 = v38;
  }

  v35 = v13;
  v14 = sub_2977FB720(&v35);
  v15 = sub_297890568(v14);
  v16 = sub_2977FB720(&v36);
  v17 = sub_29782AFB0(v15);
  if (v17)
  {
    v18 = v17;
    while (1)
    {
      if (v16 == sub_2978130B8(&v36))
      {
        sub_2978B677C(a1, a4, 2019, v34);
        v24 = v34;
        goto LABEL_15;
      }

      v33[0] = sub_29788C170(*v16);
      v19 = sub_2977FB7B8(v15);
      if (sub_2978B5D80(v33, v19))
      {
        break;
      }

      ++v16;
      if (!--v18)
      {
        goto LABEL_9;
      }
    }

    v25 = sub_2977FB5F0(*v16);
    sub_2978B677C(a1, v25, 2284, v33);
    v26 = sub_2978563C8(v33, 1);
    v32 = sub_2977FB7B8(v15);
    v27 = sub_2978C1A84(v26, &v32);
    v28 = sub_2978563C8(v27, 0);
    v31 = sub_29788C170(*v16);
    v29 = sub_2978C1A84(v28, &v31);
    v20 = sub_2978563C8(v29, 0);
    v30 = sub_2978A2A34(*v16);
    v22 = &v30;
  }

  else
  {
LABEL_9:
    if (v16 == sub_2978130B8(&v36))
    {
      return sub_2978A31F8(*a1, v38, a3, 0, v36, v37, a7);
    }

    sub_2978B677C(a1, a4, 2116, v33);
    v20 = sub_2978563C8(v33, 0);
    v21 = sub_2977FB5F0(*v16);
    sub_2978634C0(&v32, v21);
    v22 = &v32;
  }

  sub_2978591B8(v20, v22);
  v24 = v33;
LABEL_15:
  sub_29782963C(v24);
  return 0;
}

uint64_t sub_2978C4EDC(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v41 = a6;
  v42 = a2;
  v40 = a5;
  v13 = sub_2977FB720(&v42);
  v14 = sub_2978876EC(v13);
  if (v14)
  {
    v15 = sub_2977FB7B8(v14);
    if (sub_2978B53EC(v15))
    {
      sub_2978C39F8(a1, a5, a6);
    }

    return sub_2978C42B0(a1, v42, a3, a4, a5, a6, a7);
  }

  v17 = sub_2977FB720(&v42);
  if (sub_2978B8720(v17))
  {
    sub_2978C39F8(a1, a5, a6);
    return sub_2978C4690(a1, v42, a3, a4, a5, a6, a7);
  }

  v18 = sub_2977FB720(&v42);
  if (sub_297893B38(v18))
  {
    return sub_2978C4A6C(a1, v42, a3, a4, a5, a6, a7);
  }

  v19 = sub_2977FB720(&v42);
  v20 = sub_29788865C(v19);
  if (v20)
  {
    v39 = sub_2977FB7B8(v20);
    v21 = sub_2977FB720(&v39);
    if (sub_2978B5368(v21))
    {
      sub_2978C39F8(a1, a5, a6);
    }

    v22 = v42;
    v23 = a3;
    v24 = a4;
    v25 = a7;
    v26 = a1;
    v27 = a5;
    v28 = a6;
    return sub_2978C4CD0(v26, v22, v23, v24, v27, v28, v25);
  }

  v29 = sub_2977FB720(&v42);
  v30 = sub_297888660(v29);
  if (v30)
  {
    v31 = v30;
    v32 = *a1;
    v33 = sub_2977FD5B0(v30);
    v34 = sub_2977FB7B8(&v40);
    v39 = sub_2978B5C64(v32, v33, v34);
    v35 = sub_2977FB720(&v39);
    v36 = sub_29788865C(v35);
    sub_2977FDEF4(&v39, v36);
    sub_2977FD5DC(v31, v39);
    v39 = sub_2977FB7B8(v36);
    v37 = sub_2977FB720(&v39);
    if (sub_2978B5368(v37))
    {
      sub_2978C39F8(a1, v40, v41);
    }

    sub_2977FDEF4(&v39, v31);
    v27 = v40;
    v28 = v41;
    v23 = a3;
    v24 = a4;
    v25 = a7;
    v22 = v39;
    v26 = a1;
    return sub_2978C4CD0(v26, v22, v23, v24, v27, v28, v25);
  }

  v38 = sub_2977FB720(&v42);
  if (sub_2978B5368(v38))
  {
    sub_2978C39F8(a1, a5, a6);
  }

  return sub_2978C41B0(a1, v42, a3, a4, a5, a6, a7);
}

uint64_t sub_2978C5150(uint64_t a1, unsigned int a2)
{
  v5 = a1;
  v3 = sub_2977FB720(&v5);
  result = sub_297888658(v3);
  if (result)
  {
    switch(sub_29788862C(result))
    {
      case 3u:
        result = a2 & 1;
        break;
      case 4u:
        result = (a2 >> 1) & 1;
        break;
      case 5u:
        result = (a2 >> 2) & 1;
        break;
      case 6u:
        result = (a2 >> 3) & 1;
        break;
      case 7u:
        result = (a2 >> 4) & 1;
        break;
      case 8u:
      case 9u:
      case 0xAu:
        result = (a2 >> 5) & 1;
        break;
      case 0xBu:
      case 0xCu:
      case 0xDu:
        result = (a2 >> 6) & 1;
        break;
      case 0xEu:
      case 0xFu:
      case 0x10u:
        result = (a2 >> 7) & 1;
        break;
      case 0x11u:
      case 0x12u:
      case 0x13u:
        result = (a2 >> 8) & 1;
        break;
      case 0x14u:
      case 0x15u:
      case 0x16u:
        result = (a2 >> 9) & 1;
        break;
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x20u:
      case 0x21u:
      case 0x22u:
        result = (a2 & 0xC00) != 0;
        break;
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
        result = (a2 >> 11) & 1;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

const void **sub_2978C5224(const void **result, char *a2, int *a3, const void **a4)
{
  if ((*a3 & result) != 0)
  {
    v12 = v4;
    v13 = v5;
    v8 = result;
    sub_2977FB7B4(&v10, a2);
    result = sub_297811C58(a4, v10, v11);
    v9 = *a3;
    *a3 ^= v8;
    if (v9 != v8)
    {
      sub_2977FB7B4(&v10, ", ");
      return sub_297811C58(a4, v10, v11);
    }
  }

  return result;
}

BOOL sub_2978C52B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13[0] = a2;
  v13[1] = a3;
  v6 = sub_2977FB7B8(v13);
  if (v6 != a4)
  {
    v7 = sub_2978C5354(v13);
    v8 = sub_2977FB5F0(*v7);
    sub_2978B677C(a1, v8, 2516, v12);
    v9 = sub_2977FB7B8(v13) > a4;
    v10 = sub_297863490(v12, v9);
    sub_29785965C(v10, a4);
    sub_29782963C(v12);
  }

  return v6 == a4;
}

uint64_t sub_2978C5364(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v51[0] = a2;
  v51[1] = a3;
  v10 = sub_2977FB720(v51);
  sub_2977FB7C0(&v50, v10, a5);
  v11 = sub_2977FE5F8(v51, a5);
  v12 = sub_2978130B8(v51);
  sub_2978A1858(&v49, v11, v12);
  if ((a6 & 1) == 0)
  {
    sub_297811B30(&v50, &v49);
  }

  v48 = sub_2978C5738(a1, v50.n128_i64[0], v50.n128_i64[1], a4);
  if (!sub_29780B1BC(&v48))
  {
    goto LABEL_19;
  }

  v47 = sub_2978C5738(a1, v49.n128_i64[0], v49.n128_i64[1], a4);
  if (!sub_29780B1BC(&v47))
  {
    goto LABEL_19;
  }

  if (!sub_2978B5D9C(&v48, v47))
  {
    v13 = sub_2977FB720(&v47);
    if (sub_297890438(v13))
    {
      v14 = sub_2977FB720(&v48);
      v15 = sub_2978876EC(v14);
      if (!v15)
      {
        v36 = sub_2977FE5F8(v51, a5);
        v37 = sub_2977FB5F0(*v36);
        sub_2978B677C(a1, v37, 1913, v39);
        v35 = v39;
        goto LABEL_18;
      }

      v16 = v15;
      v17 = sub_2977FB7B8(v15);
      if (v17 == sub_2977FB720(&v47))
      {
        return v48;
      }

      v18 = *sub_2977FE5F8(&v49, 0);
      v46 = v18;
      v45 = *sub_2977FE5F8(&v50, 0);
      if (a6)
      {
        sub_2977FDE84(&v46, &v45);
        v18 = v46;
      }

      v19 = sub_2977FB5F0(v18);
      sub_2978B677C(a1, v19, 2216, v44);
      v43 = sub_2978A2A34(v46);
      v20 = sub_2978591B8(v44, &v43);
      v42 = sub_2978A2A34(v45);
      sub_2978591B8(v20, &v42);
      sub_29782963C(v44);
      v21 = sub_2977FE5F8(&v50, 0);
      v22 = sub_2977FB5F0(*v21);
      sub_2978B677C(a1, v22, 3439, v44);
      v23 = sub_2977FE5F8(&v50, 0);
      v43 = sub_29788C170(*v23);
      sub_2978C1A84(v44, &v43);
      v24 = sub_2977FE5F8(&v50, 0);
      v42 = sub_2978A2A34(*v24);
      sub_2978591B8(v44, &v42);
      sub_29782963C(v44);
      v25 = sub_2977FE5F8(&v49, 0);
      v26 = sub_2977FB5F0(*v25);
      sub_2978B677C(a1, v26, 3440, v44);
      v27 = sub_2977FE5F8(&v49, 0);
      v43 = sub_29788C170(*v27);
      sub_2978C1A84(v44, &v43);
      sub_2978C41AC(v44, v16);
      v28 = sub_2977FB7B8(v16);
      sub_2978C41AC(v44, v28);
      v29 = sub_2977FE5F8(&v49, 0);
      v42 = sub_2978A2A34(*v29);
      v30 = v44;
      v31 = &v42;
    }

    else
    {
      v32 = *sub_2977FE5F8(&v49, 0);
      v46 = v32;
      v45 = *sub_2977FE5F8(&v50, 0);
      if (a6)
      {
        sub_2977FDE84(&v46, &v45);
        v32 = v46;
      }

      v33 = sub_2977FB5F0(v32);
      sub_2978B677C(a1, v33, 2217, v44);
      v43 = sub_29788C170(v46);
      sub_2978C1A84(v44, &v43);
      v42 = sub_29788C170(v45);
      sub_2978C1A84(v44, &v42);
      v41 = sub_2978A2A34(v46);
      v34 = sub_2978591B8(v44, &v41);
      v40 = sub_2978A2A34(v45);
      v31 = &v40;
      v30 = v34;
    }

    sub_2978591B8(v30, v31);
    v35 = v44;
LABEL_18:
    sub_29782963C(v35);
LABEL_19:
    sub_2977FDEF4(&v52, 0);
    return v52;
  }

  return v48;
}

uint64_t sub_2978C5738(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v28 = a2;
  v29 = a3;
  v27 = sub_2978C5918(a2, a3);
  if (!sub_29780B1BC(&v27))
  {
    v8 = sub_2977FB720(&v28);
    v9 = sub_2978130B8(&v28);
    if (v8 == v9)
    {
LABEL_8:
      v12 = sub_2977FB720(&v28);
      sub_2978130B8(&v28);
      while (1)
      {
        v13 = *v12;
        v14 = sub_2977FB720(&v28);
        v15 = sub_2978130B8(&v28);
        if (v14 != v15)
        {
          break;
        }

LABEL_13:
        ++v12;
      }

      v16 = v15;
      while (1)
      {
        v17 = *v14;
        v26[0] = sub_29788C170(v13);
        v18 = sub_29788C170(v17);
        if (sub_2978B5D80(v26, v18))
        {
          break;
        }

        if (++v14 == v16)
        {
          goto LABEL_13;
        }
      }

      v19 = sub_2977FB5F0(v13);
      sub_2978B677C(a1, v19, 2217, v26);
      v25 = sub_29788C170(v13);
      sub_2978C1A84(v26, &v25);
      v24 = sub_29788C170(v17);
      sub_2978C1A84(v26, &v24);
      v23 = sub_2978A2A34(v13);
      v20 = sub_2978591B8(v26, &v23);
      v22 = sub_2978A2A34(v17);
      sub_2978591B8(v20, &v22);
      sub_29782963C(v26);
    }

    else
    {
      v10 = v9;
      while (1)
      {
        v11 = sub_29788C170(*v8);
        if ((sub_2978C207C(a1, v11, a4, v28, v29) & 1) == 0)
        {
          break;
        }

        if (++v8 == v10)
        {
          goto LABEL_8;
        }
      }
    }

    goto LABEL_15;
  }

  if ((sub_2978C207C(a1, v27, a4, a2, a3) & 1) == 0)
  {
LABEL_15:
    sub_29780AE44(&v30);
    return v30;
  }

  return v27;
}

uint64_t sub_2978C5918(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  if (!sub_297806914(v10))
  {
    v2 = sub_2977FB720(v10);
    v3 = sub_29788C170(*v2);
    v9 = v3;
    v4 = sub_2977FB720(v10);
    v5 = sub_2978130B8(v10);
    if (v4 == v5)
    {
      return v3;
    }

    v6 = v5;
    while (1)
    {
      v7 = sub_29788C170(*v4);
      if (sub_2978B5D80(&v9, v7))
      {
        break;
      }

      if (++v4 == v6)
      {
        return v9;
      }
    }
  }

  sub_29780AE44(&v11);
  return v11;
}

uint64_t sub_2978C59C8(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a2 - 1) > 3)
  {
    if ((a3 - 43) >= 2)
    {
      sub_2978B677C(a1, a6, 2819, v11);
      v8 = sub_2978295C0(v11, a4, a5);
      v9 = "sampler2D or hsampler2D";
      goto LABEL_7;
    }

    return 1;
  }

  if ((a3 - 41) < 2)
  {
    return 1;
  }

  sub_2978B677C(a1, a6, 2819, v11);
  v8 = sub_2978295C0(v11, a4, a5);
  v9 = "sampler or hsampler";
LABEL_7:
  sub_29783F028(v8, v9);
  sub_29782963C(v11);
  return 0;
}

uint64_t sub_2978C5A84(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v35 = a3;
  v36 = a4;
  if (!sub_297806914(&v35))
  {
    v9 = sub_2977FE5F8(&v35, 0);
    *&v33 = sub_29788C170(*v9);
    v10 = sub_2977FB720(&v33);
    v11 = sub_297888638(v10);
    if (!v11)
    {
      v15 = sub_2977FE5F8(&v35, 0);
      v16 = sub_2977FB5F0(*v15);
      sub_2978B677C(a1, v16, 2122, &v33);
      v17 = sub_2977FE5F8(&v35, 0);
      *&v31 = sub_29788C170(*v17);
      sub_2978C1A84(&v33, &v31);
      v18 = sub_29783F028(&v33, "a sampler type");
      v19 = sub_2977FE5F8(&v35, 0);
      v32 = sub_2978A2A34(*v19);
      sub_2978591B8(v18, &v32);
      v8 = &v33;
      goto LABEL_10;
    }

    v12 = v11;
    sub_297804560(&v33);
    v13 = 0;
    if (a2 > 2)
    {
      switch(a2)
      {
        case 3:
          v21 = "samplerExtent";
          break;
        case 4:
          v21 = "samplerCoord";
          break;
        case 5:
          v14 = "texture2D";
LABEL_20:
          sub_2977FB7B4(&v31, v14);
          v33 = v31;
          v13 = 2;
          goto LABEL_21;
        default:
          goto LABEL_21;
      }

      sub_2977FB7B4(&v31, v21);
      v33 = v31;
      v13 = 1;
      goto LABEL_21;
    }

    if (a2 == 1)
    {
      v14 = "sample";
      goto LABEL_20;
    }

    if (a2 == 2)
    {
      v14 = "samplerTransform";
      goto LABEL_20;
    }

LABEL_21:
    v22 = sub_29788862C(v12);
    v23 = v33;
    v24 = sub_2977FE5F8(&v35, 0);
    v25 = sub_2977FB5F0(*v24);
    if ((sub_2978C59C8(a1, a2, v22, v23, *(&v23 + 1), v25) & 1) == 0 || !sub_2978C52B0(a1, v35, v36, v13))
    {
      goto LABEL_11;
    }

    v26 = sub_2978B5844(*a1, 8);
    v27 = sub_2978B5844(*a1, 10);
    if (a2 != 4)
    {
      if (a2 != 3)
      {
        if (a2 == 2)
        {
          return v26;
        }

        v28 = sub_29788862C(v12);
        v29 = *a1;
        v30 = sub_2978B5B44(v29, dword_2978FC0C0[v28 - 41]);
        return sub_2978B546C(v29, v30, 4);
      }

      return v27;
    }

    return v26;
  }

  sub_2978B677C(a1, a5, 2478, v34);
  v8 = v34;
LABEL_10:
  sub_29782963C(v8);
LABEL_11:
  sub_29780AE44(&v37);
  return v37;
}

void sub_2978C5D6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, std::string *a5, std::string *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_297804638(&v20, ", legal parameter types are:");
  std::string::append(&v20, "\n  (genType, genType, genType)");
  std::string::append(&v20, "\n  (genType, genType, float)");
  if (sub_297882B50(*(v12 + 8)) == 1)
  {
    v14 = "GenType = float, vec2, vec3, vec4";
    v15 = "\n    where ";
  }

  else
  {
    std::string::append(&v20, "\n  (genType, genType, genBType)");
    std::string::append(&v20, "\n    where ");
    std::string::append(&v20, "GenType = float, vec2, vec3, vec4");
    v14 = "GenBType = BOOL, bvec2, bvec3, bvec4";
    v15 = "\n          ";
  }

  std::string::append(&v20, v15);
  std::string::append(&v20, v14);
  sub_2978B677C(v12, v13, 2316, v19);
  sub_2978044E8(&v17, v21);
  v16 = sub_2978295C0(v19, v17, v18);
  sub_2978044E8(&v17, &v20);
  sub_2978295C0(v16, v17, v18);
  sub_29782963C(v19);
  std::string::~string(&v20);
  std::string::~string(v21);
}

uint64_t sub_2978C5E88(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4, int a5)
{
  v143 = a3;
  v144 = a4;
  v8 = sub_2978B5B44(*a1, 3);
  v9 = sub_2978B5B44(*a1, 7);
  v10 = sub_2978B5B44(*a1, 5);
  v11 = sub_2978B5B44(*a1, 6);
  v12 = sub_2978B5B58(*a1);
  result = sub_297806914(&v143);
  if (result)
  {
    sub_2978B677C(a1, a5, 2478, v142);
    v14 = v142;
LABEL_3:
    sub_29782963C(v14);
LABEL_4:
    sub_29780AE44(&v145);
    return v145;
  }

  v15 = *a2;
  switch(*a2)
  {
    case 8:
      v84 = sub_2977FB7B8(&v143);
      v20 = v143;
      v21 = v144;
      if (v84 == 2)
      {
        goto LABEL_10;
      }

      if (!sub_2978C52B0(a1, v143, v144, 1u))
      {
        goto LABEL_4;
      }

      *a2 = 9;
      goto LABEL_9;
    case 9:
    case 37:
      __break(1u);
      return result;
    case 16:
    case 58:
      v16 = v143;
      v17 = v144;
      v18 = a1;
      v19 = 2;
      goto LABEL_8;
    case 23:
    case 24:
      if (!sub_2978C52B0(a1, v143, v144, 1u))
      {
        goto LABEL_4;
      }

      v47 = sub_297882B50(a1[1]);
      v20 = v143;
      v21 = v144;
      if (v47 == 1)
      {
        goto LABEL_10;
      }

      v22 = a1;
      v23 = 231;
      return sub_2978C5738(v22, v20, v21, v23);
    case 31:
      if (!sub_2978C52B0(a1, v143, v144, 2u))
      {
        goto LABEL_4;
      }

      v70 = v143;
      v71 = v144;
      goto LABEL_103;
    case 32:
      if (!sub_2978C52B0(a1, v143, v144, 2u))
      {
        goto LABEL_4;
      }

      v67 = sub_2977FE5F8(&v143, 1);
      if (sub_29788BD30(*v67) == 1)
      {
        goto LABEL_9;
      }

      v68 = sub_2977FE5F8(&v143, 1);
      v69 = sub_2977FB5F0(*v68);
      sub_2978B677C(a1, v69, 2121, v141);
      v14 = v141;
      goto LABEL_3;
    case 33:
    case 34:
      v52 = v143;
      v53 = v144;
      v54 = a1;
      v55 = 2;
      goto LABEL_101;
    case 35:
      v52 = v143;
      v53 = v144;
      v54 = a1;
      v55 = 3;
LABEL_101:
      if (!sub_2978C52B0(v54, v52, v53, v55))
      {
        goto LABEL_4;
      }

      v85 = sub_297882B50(a1[1]);
      v70 = v143;
      v71 = v144;
      if (v85 == 1)
      {
LABEL_103:
        v75 = a1;
        v76 = 99;
      }

      else
      {
        v75 = a1;
        v76 = 495;
      }

      v77 = 1;
      v78 = 1;
      return sub_2978C5364(v75, v70, v71, v76, v77, v78);
    case 36:
      if (!sub_2978C52B0(a1, v143, v144, 3u))
      {
        goto LABEL_4;
      }

      v79 = sub_2977FB720(&v143);
      sub_2977FB7C0(&v138, v79, 2);
      v140 = sub_2978C5738(a1, v138, v139, 0x63u);
      if (!sub_29780B1BC(&v140))
      {
        goto LABEL_4;
      }

      v80 = sub_2977FE5F8(&v143, 2);
      v81 = sub_29788C170(*v80);
      if (sub_2978B5D9C(&v140, v81))
      {
        return v140;
      }

      v82 = sub_2977FE5F8(&v143, 2);
      v138 = sub_29788C170(*v82);
      v83 = sub_2978B5844(*a1, 3);
      if (sub_2978B5D9C(&v138, v83))
      {
        return v140;
      }

      if (sub_297882B50(a1[1]) == 1)
      {
        goto LABEL_141;
      }

      sub_29780AE44(&v138);
      v126 = sub_2977FB720(&v140);
      v127 = sub_297890568(v126);
      v128 = sub_29788862C(v127);
      if (v128 > 0xD)
      {
        goto LABEL_138;
      }

      if (((1 << v128) & 0x900) != 0)
      {
        v129 = *a1;
        v130 = 20;
      }

      else if (((1 << v128) & 0x1200) != 0)
      {
        v129 = *a1;
        v130 = 21;
      }

      else if (((1 << v128) & 0x2400) != 0)
      {
        v129 = *a1;
        v130 = 22;
      }

      else
      {
LABEL_138:
        v129 = *a1;
        v130 = 7;
      }

      v138 = sub_2978B5844(v129, v130);
      v131 = sub_2977FE5F8(&v143, 2);
      v137 = sub_29788C170(*v131);
      if (!sub_2978B5D9C(&v137, v138))
      {
LABEL_141:
        v132 = sub_2977FE5F8(&v143, 2);
        sub_2977FB5F0(*v132);
        sub_2978C5D28(a1, 38);
      }

      *a2 = 37;
      return v140;
    case 38:
      if (!sub_2978C52B0(a1, v143, v144, 2u))
      {
        goto LABEL_4;
      }

      v70 = v143;
      v71 = v144;
      v75 = a1;
      v76 = 99;
      v77 = 1;
      goto LABEL_90;
    case 39:
      if (!sub_2978C52B0(a1, v143, v144, 3u))
      {
        goto LABEL_4;
      }

      v70 = v143;
      v71 = v144;
      v75 = a1;
      v76 = 99;
      v77 = 2;
LABEL_90:
      v78 = 0;
      return sub_2978C5364(v75, v70, v71, v76, v77, v78);
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
      if (v15 == 44)
      {
        v26 = 132;
      }

      else
      {
        v26 = 264;
      }

      if (v15 == 43)
      {
        v27 = v11;
      }

      else
      {
        v27 = v8;
      }

      if (v15 == 43)
      {
        v28 = 33;
      }

      else
      {
        v28 = v26;
      }

      if ((v15 - 40) >= 2)
      {
        v29 = v10;
      }

      else
      {
        v29 = v9;
      }

      if (v15 <= 42)
      {
        v8 = v29;
      }

      else
      {
        v8 = v27;
      }

      if (v15 <= 42)
      {
        v30 = 33;
      }

      else
      {
        v30 = v28;
      }

      if (!sub_2978C52B0(a1, v143, v144, 1u))
      {
        goto LABEL_4;
      }

      v31 = sub_2977FB720(&v143);
      v32 = sub_29788C170(*v31);
      if ((sub_2978C207C(a1, v32, v30, v143, v144) & 1) == 0)
      {
        goto LABEL_4;
      }

      v33 = sub_2977FB720(&v143);
      v138 = sub_29788C170(*v33);
      v34 = sub_2977FB720(&v138);
      v35 = sub_2978876EC(v34);
      if (!v35)
      {
        goto LABEL_113;
      }

      v36 = *a1;
      v37 = sub_297887A38(v35);
      v38 = v36;
      v39 = v8;
      return sub_2978B546C(v38, v39, v37);
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
      sub_29780AE44(&v140);
      sub_29780AE44(&v137);
      v25 = *a2;
      if (*a2 <= 48)
      {
        if (v25 == 47)
        {
          goto LABEL_44;
        }

LABEL_43:
        v137 = sub_2978B546C(*a1, v8, 2);
        sub_2977FDEF4(&v138, v11);
        v140 = v138;
        goto LABEL_45;
      }

      if (v25 == 50)
      {
        goto LABEL_43;
      }

LABEL_44:
      sub_2977FDEF4(&v138, v11);
      v137 = v138;
      v140 = sub_2978B546C(*a1, v8, 2);
LABEL_45:
      if (!sub_2978C52B0(a1, v143, v144, 1u))
      {
        goto LABEL_4;
      }

      v43 = sub_2977FB720(&v143);
      v138 = sub_29788C170(*v43);
      if (sub_2978B5D80(&v138, v137))
      {
        v44 = sub_2977FB720(&v143);
        v45 = sub_2977FB5F0(*v44);
        sub_2978B677C(a1, v45, 2123, &v138);
        v46 = &v137;
LABEL_73:
        sub_2978C1A84(&v138, v46);
LABEL_74:
        v14 = &v138;
        goto LABEL_3;
      }

      return v140;
    case 52:
      if (!sub_2978C52B0(a1, v143, v144, 1u))
      {
        goto LABEL_4;
      }

      v110 = sub_2977FE5F8(&v143, 0);
      v105 = sub_29788C170(*v110);
      v106 = v143;
      v107 = v144;
      v108 = a1;
      v109 = 33;
      goto LABEL_112;
    case 53:
    case 54:
      if (sub_2978C52B0(a1, v143, v144, 2u))
      {
        v138 = sub_2978C5738(a1, v143, v144, 0x21u);
        if (sub_29780B1BC(&v138))
        {
          goto LABEL_113;
        }
      }

      goto LABEL_4;
    case 55:
      if (!sub_2978C52B0(a1, v143, v144, 2u))
      {
        goto LABEL_4;
      }

      v62 = sub_2978B546C(*a1, v8, 3);
      v140 = v62;
      v63 = sub_2977FE5F8(&v143, 0);
      v138 = sub_29788C170(*v63);
      if (sub_2978B5D80(&v138, v62) & 1) != 0 || (v64 = sub_2977FE5F8(&v143, 1), v137 = sub_29788C170(*v64), (sub_2978B5D80(&v137, v62)))
      {
        v65 = sub_2977FE5F8(&v143, 0);
        v66 = sub_2977FB5F0(*v65);
        sub_2978B677C(a1, v66, 2123, &v138);
        v46 = &v140;
        goto LABEL_73;
      }

      return v62;
    case 57:
      v16 = v143;
      v17 = v144;
      v18 = a1;
      v19 = 3;
      goto LABEL_8;
    case 59:
      if (!sub_2978C52B0(a1, v143, v144, 3u))
      {
        goto LABEL_4;
      }

      v72 = sub_2977FE5F8(&v143, 2);
      v138 = sub_29788C170(*v72);
      sub_2977FDEF4(&v140, v8);
      if (sub_2978B5D80(&v138, v140))
      {
        v73 = sub_2977FE5F8(&v143, 0);
        v74 = sub_2977FB5F0(*v73);
        sub_2978B677C(a1, v74, 2123, &v138);
        sub_2978C41AC(&v138, v8);
        goto LABEL_74;
      }

      v119 = sub_2977FB720(&v143);
      sub_2977FB7C0(&v138, v119, 2);
      v20 = v138;
      v21 = v139;
      v22 = a1;
      v23 = 33;
      return sub_2978C5738(v22, v20, v21, v23);
    case 60:
      if (!sub_2978C52B0(a1, v143, v144, 2u))
      {
        goto LABEL_4;
      }

      v20 = v143;
      v21 = v144;
      v22 = a1;
      v23 = 2048;
      return sub_2978C5738(v22, v20, v21, v23);
    case 61:
      if (!sub_2978C52B0(a1, v143, v144, 2u))
      {
        goto LABEL_4;
      }

      v86 = sub_2977FE5F8(&v143, 0);
      v87 = sub_29788C170(*v86);
      v88 = sub_2977FE5F8(&v143, 0);
      sub_29784CE50(&v138, v88);
      if ((sub_2978C207C(a1, v87, 0x20u, v138, v139) & 1) == 0)
      {
        goto LABEL_4;
      }

      v89 = sub_2977FE5F8(&v143, 1);
      v90 = sub_29788C170(*v89);
      v91 = sub_2977FE5F8(&v143, 1);
      sub_29784CE50(&v138, v91);
      if ((sub_2978C207C(a1, v90, 0x20u, v138, v139) & 1) == 0)
      {
        goto LABEL_4;
      }

      v92 = sub_2977FE5F8(&v143, 0);
      v138 = sub_29788C170(*v92);
      v93 = sub_2977FB720(&v138);
      v94 = sub_297890568(v93);
      v95 = sub_2977FE5F8(&v143, 1);
      v138 = sub_29788C170(*v95);
      v96 = sub_2977FB720(&v138);
      v97 = sub_297890568(v96);
      v98 = *a1;
      v99 = sub_2977FB7B8(v94);
      LODWORD(v97) = sub_297887A38(v97);
      v100 = sub_297887A38(v94);
      v101 = v98;
      v102 = v99;
      v103 = v97;
      return sub_2978B566C(v101, v102, v103, v100);
    case 62:
      if (!sub_2978C52B0(a1, v143, v144, 1u))
      {
        goto LABEL_4;
      }

      v111 = sub_2977FB720(&v143);
      v112 = sub_29788C170(*v111);
      if ((sub_2978C207C(a1, v112, 0x800u, v143, v144) & 1) == 0)
      {
        goto LABEL_4;
      }

      v113 = sub_2977FB720(&v143);
      v138 = sub_29788C170(*v113);
      v114 = sub_2977FB720(&v138);
      v115 = sub_297890568(v114);
      v116 = *a1;
      v117 = sub_2977FB7B8(v115);
      v118 = sub_297887B08(v115);
      v100 = sub_297887A38(v115);
      v101 = v116;
      v102 = v117;
      v103 = v118;
      return sub_2978B566C(v101, v102, v103, v100);
    case 63:
      if (!sub_2978C52B0(a1, v143, v144, 1u))
      {
        goto LABEL_4;
      }

      v104 = sub_2977FB720(&v143);
      v105 = sub_29788C170(*v104);
      v106 = v143;
      v107 = v144;
      v108 = a1;
      v109 = 1024;
LABEL_112:
      if ((sub_2978C207C(v108, v105, v109, v106, v107) & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_113:
      sub_2977FDEF4(&v145, v8);
      return v145;
    case 64:
      if (!sub_2978C52B0(a1, v143, v144, 1u))
      {
        goto LABEL_4;
      }

      v20 = v143;
      v21 = v144;
      v22 = a1;
      v23 = 1024;
      return sub_2978C5738(v22, v20, v21, v23);
    case 65:
    case 66:
    case 67:
    case 68:
      if (!sub_2978C52B0(a1, v143, v144, 2u))
      {
        goto LABEL_4;
      }

      v138 = sub_2978C5738(a1, v143, v144, 0x60u);
      if (!sub_29780B1BC(&v138))
      {
        goto LABEL_4;
      }

      v40 = sub_2977FB720(&v138);
      if (sub_2978C6B34(v40))
      {
        goto LABEL_63;
      }

      v41 = sub_2977FE5F8(&v143, 0);
      v42 = sub_2977FB5F0(*v41);
      sub_2978B677C(a1, v42, 2124, v136);
      v14 = v136;
      goto LABEL_3;
    case 69:
    case 70:
      if (!sub_2978C52B0(a1, v143, v144, 2u))
      {
        goto LABEL_4;
      }

      v138 = sub_2978C5738(a1, v143, v144, 0x60u);
      if (!sub_29780B1BC(&v138))
      {
        goto LABEL_4;
      }

      v56 = sub_2977FB720(&v138);
      if ((sub_2978C6B34(v56) & 1) == 0)
      {
        v122 = sub_2977FE5F8(&v143, 0);
        v123 = sub_2977FB5F0(*v122);
        sub_2978B677C(a1, v123, 2124, v135);
        v14 = v135;
        goto LABEL_3;
      }

LABEL_63:
      v57 = *a1;
      v58 = sub_2977FB720(&v138);
      v59 = sub_297890568(v58);
      v37 = sub_297887A38(v59);
      v38 = v57;
      v39 = v9;
      return sub_2978B546C(v38, v39, v37);
    case 71:
    case 72:
      if (!sub_2978C52B0(a1, v143, v144, 1u))
      {
        goto LABEL_4;
      }

      v48 = sub_2977FB720(&v143);
      v49 = sub_29788C170(*v48);
      if ((sub_2978C207C(a1, v49, 0x200u, v143, v144) & 1) == 0)
      {
        goto LABEL_4;
      }

      v50 = sub_2977FB720(&v143);
      v138 = sub_29788C170(*v50);
      v51 = sub_2977FB720(&v138);
      if ((sub_2978C6B34(v51) & 1) == 0)
      {
        v120 = sub_2977FE5F8(&v143, 0);
        v121 = sub_2977FB5F0(*v120);
        sub_2978B677C(a1, v121, 2124, v134);
        v14 = v134;
        goto LABEL_3;
      }

      return sub_2978B5844(*a1, 7);
    case 73:
      if (!sub_2978C52B0(a1, v143, v144, 1u))
      {
        goto LABEL_4;
      }

      v138 = sub_2978C5738(a1, v143, v144, 0x200u);
      if (!sub_29780B1BC(&v138))
      {
        goto LABEL_4;
      }

      v60 = sub_2977FB720(&v138);
      if (sub_2978C6B34(v60))
      {
        return v138;
      }

      v124 = sub_2977FE5F8(&v143, 0);
      v125 = sub_2977FB5F0(*v124);
      sub_2978B677C(a1, v125, 2124, v133);
      v14 = v133;
      goto LABEL_3;
    case 74:
      if (!sub_2978C52B0(a1, v143, v144, 2u))
      {
        goto LABEL_4;
      }

      return v12;
    default:
      v16 = v143;
      v17 = v144;
      v18 = a1;
      v19 = 1;
LABEL_8:
      if (!sub_2978C52B0(v18, v16, v17, v19))
      {
        goto LABEL_4;
      }

LABEL_9:
      v20 = v143;
      v21 = v144;
LABEL_10:
      v22 = a1;
      v23 = 99;
      return sub_2978C5738(v22, v20, v21, v23);
  }
}