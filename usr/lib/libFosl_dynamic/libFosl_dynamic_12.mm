BOOL sub_2978C6B5C(int a1, int a2)
{
  result = 0;
  switch(a1)
  {
    case 3:
    case 4:
    case 5:
    case 6:
      return (a2 - 3) < 2;
    case 8:
    case 11:
    case 14:
    case 17:
      v4 = a2 == 8 || a2 == 11;
      goto LABEL_18;
    case 9:
    case 12:
    case 15:
    case 18:
      v4 = a2 == 9 || a2 == 12;
      goto LABEL_18;
    case 10:
    case 13:
    case 16:
    case 19:
      v4 = a2 == 10 || a2 == 13;
      goto LABEL_18;
    case 23:
    case 32:
      v5 = a2 == 23;
      v6 = 32;
      goto LABEL_15;
    case 24:
    case 33:
      v5 = a2 == 24;
      v6 = 33;
      goto LABEL_15;
    case 25:
    case 34:
      v5 = a2 == 25;
      v6 = 34;
LABEL_15:
      v4 = v5 || a2 == v6;
LABEL_18:
      result = v4;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2978C6BF0(uint64_t a1, _DWORD *a2)
{
  v9 = sub_2977FD5B0(a2);
  v3 = sub_2977FB720(&v9);
  if (sub_2978B90B8(v3))
  {
    return 0;
  }

  v9 = sub_2977FD5B0(a2);
  v4 = sub_2977FB720(&v9);
  v5 = sub_29788865C(v4);
  if (v5)
  {
    v9 = sub_2977FB7B8(v5);
    v6 = sub_2977FB720(&v9);
    if (sub_2978B90B8(v6))
    {
      return 0;
    }
  }

  v7 = sub_297887CEC(a2);
  if (v7 > 8)
  {
    return 0;
  }

  else
  {
    return dword_2978FC084[v7];
  }
}

uint64_t sub_2978C6C8C(uint64_t a1, uint64_t a2)
{
  if (sub_297888998(a2))
  {
    return 0;
  }

  v5 = sub_2977FD5B0(a2);
  v4 = sub_2977FB720(&v5);
  return sub_2978C6CE4(v4) ^ 1;
}

uint64_t sub_2978C6D0C(uint64_t a1, _BYTE *a2)
{
  sub_297802744(&v8);
  sub_2978B4D64(a2, &v8);
  std::operator+<char>();
  sub_297808D80(&v5, "'", &v6);
  sub_2978044E8(v7, &v6);
  sub_29782B0B4(a1, v7[0], v7[1]);
  std::string::~string(&v6);
  std::string::~string(&v5);
  std::string::~string(&v8);
  return a1;
}

uint64_t sub_2978C6DB0(uint64_t a1, int a2)
{
  *a1 = a2;
  sub_297829180((a1 + 4));
  sub_297829180((a1 + 8));
  sub_2978C6E08(a1 + 16);
  *(a1 + 32) = 0;
  sub_297804560((a1 + 40));
  *(a1 + 56) = 0;
  *(a1 + 58) &= 0xE0u;
  return a1;
}

uint64_t sub_2978C6E0C(uint64_t a1)
{
  v2 = sub_29780AE44(a1);
  sub_297829180((v2 + 8));
  sub_297829180((a1 + 12));
  sub_2978C6E50(a1, 0);
  return a1;
}

uint64_t sub_2978C6E68(int *a1)
{
  if (sub_2977FB634(a1))
  {
    v2 = *a1;
    v3 = v2 - sub_2977FF4FC(a1);
  }

  else
  {
    v3 = sub_2977FD698(a1);
  }

  return (v3 + 1);
}

uint64_t sub_2978C6F10(uint64_t a1)
{
  v5[11] = *MEMORY[0x29EDCA608];
  sub_29788E11C(v5);
  sub_2978C6F98(a1, v5, 1);
  v2 = sub_2978BFAAC(*(a1 + 8), v5);
  sub_2977FD134(v5);
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t sub_2978C6F98(uint64_t a1, uint64_t a2, char a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (sub_2978780CC(a1 + 32))
  {
    result = sub_2978C865C(a1);
    goto LABEL_5;
  }

  *(a1 + 72) = 1;
  if (!sub_29784FF04(a1 + 32, 399))
  {
    sub_29783CEF0(v24);
    v7 = sub_2977FB5F0((a1 + 32));
    sub_2978C6DA8(v23, v7);
    v8 = sub_2978C75A4(a1);
    v9 = v8;
    if (v8)
    {
      if (sub_2978C88A8(a1, v23, v24))
      {
LABEL_22:
        result = sub_2977FD134(v24);
        goto LABEL_23;
      }

      if (sub_29784FF04(a1 + 32, 61))
      {
        if (sub_2978094B8(v24))
        {
          *&v18[0] = sub_2978BA410(*(a1 + 8), v23);
          if (*&v18[0])
          {
            sub_2978040A4(a2, v18);
          }
        }

        goto LABEL_13;
      }
    }

    else if (sub_29784FF04(a1 + 32, 61))
    {
      sub_2978C765C(a1, (a1 + 32), 977, v22);
      v10 = v22;
      goto LABEL_16;
    }

    if (!sub_29784FF04(a1 + 32, 6) || (v11 = *(a1 + 8), v12 = sub_29784F384(a1 + 32), sub_2977FB5F0((a1 + 32)), sub_2978BF178(v11, v12)))
    {
      if (!sub_2978C76B4(a1, v23, 1))
      {
        sub_2978C90A4(a1, a2, v23, 0, a3);
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if ((v9 & 1) == 0)
    {
      sub_2978C892C(a1, (a1 + 32));
      goto LABEL_20;
    }

    v14 = sub_29784F384(a1 + 32);
    v15 = sub_2978C77C0(a1);
    if (sub_29784FF04(a1 + 32, 23))
    {
      sub_2978C8538(v18, v23, v14, v15);
      sub_2978C8A54(a1, v18, a2);
      goto LABEL_22;
    }

    if (sub_2978B8554(v23))
    {
      sub_2978C8538(v20, v23, v14, v15);
      *&v18[0] = sub_2978B8748(*(a1 + 8), v20, 1);
      sub_2978040A4(a2, v18);
      if (!*sub_29783D2C4(a2))
      {
        sub_29783D2E0(a2);
        goto LABEL_20;
      }

      if (!sub_2978C8E7C(a1, v23, a2))
      {
LABEL_20:
        sub_2978D58A8(a1);
        goto LABEL_22;
      }

      if (!sub_297850F64(a1 + 32, 61))
      {
LABEL_13:
        sub_2978C75A0(a1, 61);
        goto LABEL_22;
      }

      sub_2978C765C(a1, (a1 + 32), 1013, v19);
      v16 = sub_2977FB5F0((a1 + 32));
      sub_2977FB7B4(v17, ";");
      sub_297852794(v16, v17[0], v17[1], 0, v18);
      sub_297852754(v19, v18);
      sub_29782AC18(v18);
      v10 = v19;
    }

    else
    {
      sub_2978C765C(a1, (a1 + 32), 1018, v21);
      v10 = v21;
    }

LABEL_16:
    sub_29782963C(v10);
    goto LABEL_20;
  }

  result = sub_2978C8754(a1);
LABEL_5:
  v23[0] = result;
  if (result)
  {
    result = sub_2978040A4(a2, v23);
  }

LABEL_23:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978C72F4(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (sub_29784FF04(a1 + 32, 459))
  {
    sub_2978C75A0(a1, 459);
  }

  *(a1 + 72) = 1;
  v4 = sub_2977FB5F0((a1 + 32));
  sub_2978C6DA8(v17, v4);
  if (sub_29784FF04(a1 + 32, 399) || sub_2978C75A4(a1))
  {
    sub_2978C765C(a1, (a1 + 32), 980, v16);
    v5 = v16;
LABEL_6:
    sub_29782963C(v5);
LABEL_7:
    sub_2978D58A8(a1);
    goto LABEL_8;
  }

  if (sub_2978C76B4(a1, v17, 1))
  {
    goto LABEL_7;
  }

  if (sub_297850F64(a1 + 32, 6))
  {
    sub_2978C765C(a1, (a1 + 32), 8, v18);
    sub_297869528(v18, 6u);
    v5 = v18;
    goto LABEL_6;
  }

  sub_29784F384(a1 + 32);
  v9 = sub_2978C7798(a2);
  v10 = sub_2978C77C0(a1);
  if (sub_297850F64(a1 + 32, 21))
  {
    sub_2978C765C(a1, (a1 + 32), 1034, v15);
    sub_29782963C(v15);
  }

  sub_2978B65DC(v14, *(a1 + 8), 9);
  sub_2978C77C4(v18, v17, v9, v10);
  sub_2978C77CC(a1, v18);
  if (sub_29784FF04(a1 + 32, 460) && (sub_2978C7D5C(a1, v18) & 1) != 0)
  {
    goto LABEL_21;
  }

  if (sub_29784FF04(a1 + 32, 61))
  {
    sub_2978C765C(a1, (a1 + 32), 981, v13);
    sub_29782963C(v13);
    sub_2978C75A0(a1, 61);
    sub_2978B9B10(*(a1 + 8), v18);
    sub_2978CFF00(a1);
LABEL_21:
    v6 = 0;
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if (sub_297850F64(a1 + 32, 23))
  {
    sub_2978CFF00(a1);
    sub_2978C765C(a1, (a1 + 32), 979, v12);
    sub_29782963C(v12);
    sub_2978D58A8(a1);
    goto LABEL_21;
  }

  v6 = sub_2978C804C(a1, v18);
  if (!v6)
  {
    sub_2978CFF00(a1);
    goto LABEL_22;
  }

  v11 = 1;
LABEL_23:
  sub_2978C80D0(v18);
  sub_2978B6620(v14);
  if (v11)
  {
    sub_2978BF928(*(a1 + 8), v6);
    goto LABEL_9;
  }

LABEL_8:
  v6 = 0;
LABEL_9:
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_2978C75A4(uint64_t a1)
{
  v2 = sub_2978503FC(a1 + 32);
  result = 0;
  if (v2 > 360)
  {
    if ((v2 - 361) <= 0x3E && ((1 << (v2 - 105)) & 0x4000000400020001) != 0)
    {
      return 1;
    }

    if (v2 != 454)
    {
      if (v2 != 438)
      {
        return result;
      }

      return 1;
    }

LABEL_14:
    sub_297882B50(*(a1 + 16));
    return 1;
  }

  if (v2 <= 301)
  {
    if (v2 == 79)
    {
      return 1;
    }

    if (v2 != 296)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v2 == 302 || v2 == 323 || v2 == 357)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2978C765C@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = sub_2977FB5F0(a2);

  return sub_2978CFEF4(a1, v7, a3, a4);
}

BOOL sub_2978C76B4(unsigned int *a1, uint64_t a2, int a3)
{
  sub_2978C9608(a1, a2);
  if (sub_2978CA564(a1, a2, a3))
  {
    return 1;
  }

  if (sub_29784FF04((a1 + 8), 19))
  {
    v7 = sub_297806460(a2);
    if (sub_2978C856C(a1, v7))
    {
      return 1;
    }
  }

  result = sub_29784FF04((a1 + 8), 19);
  if (result)
  {
    sub_2978C765C(a1, a1 + 8, 929, v9);
    sub_29782963C(v9);
    result = sub_29784FF04((a1 + 8), 19);
    if (result)
    {
      do
      {
        sub_2978C6E08(&v8);
        sub_2978C856C(a1, &v8);
      }

      while (sub_29784FF04((a1 + 8), 19));
      return 0;
    }
  }

  return result;
}

BOOL sub_2978C77CC(uint64_t a1, uint64_t a2)
{
  sub_297829180(&v37);
  sub_297829180(&v36);
  if (!sub_2978D58FC(a1, 0x15u, &v37))
  {
    if (sub_29784FF04(a1 + 32, 106))
    {
      sub_2978C75A0(a1, 106);
      return sub_2978C8368(a1, 0x16u, v37, &v36);
    }

    v4 = 0;
    if (!sub_297850F64(a1 + 32, 22))
    {
LABEL_61:
      sub_2978C8368(a1, 0x16u, v37, &v36);
      return v4;
    }

    while (1)
    {
      if (sub_29784FF04(a1 + 32, 1))
      {
        sub_2978C765C(a1, (a1 + 32), 8, v35);
        sub_297869528(v35, 0x16u);
        sub_29782963C(v35);
        sub_2978D58A8(a1);
        break;
      }

      v5 = sub_2977FB5F0((a1 + 32));
      sub_2978C6DA8(v35, v5);
      if (sub_2978503FC(a1 + 32) == 79)
      {
        v6 = sub_2977FB5F0((a1 + 32));
        sub_2978C8430(v35, v6, 2);
        sub_2978C75A0(a1, 79);
      }

      sub_2978C844C(a1, v35);
      v7 = sub_2978503FC(a1 + 32);
      sub_297829180(&v34);
      if (v7 == 493)
      {
        v34 = sub_2977FB5F0((a1 + 32));
        sub_2978C75A0(a1, 493);
      }

      v8 = sub_2978503FC(a1 + 32);
      v9 = 0;
      if (v8 <= 462)
      {
        switch(v8)
        {
          case 403:
            v12 = a1;
            v13 = 403;
            goto LABEL_25;
          case 461:
            v14 = a1;
            v15 = 461;
LABEL_29:
            sub_2978C75A0(v14, v15);
            sub_2978C84CC(v35, 10);
            v11 = 2;
LABEL_30:
            sub_2978C84E4(v35, v11);
LABEL_31:
            v9 = 1;
            break;
          case 462:
            sub_2978C75A0(a1, 462);
            sub_2978C84CC(v35, 13);
            v11 = 3;
            goto LABEL_30;
        }
      }

      else if (v8 > 490)
      {
        if (v8 == 491)
        {
          v14 = a1;
          v15 = 491;
          goto LABEL_29;
        }

        if (v8 == 492)
        {
          sub_2978C75A0(a1, 492);
          sub_2978C84CC(v35, 10);
          v9 = 1;
          sub_2978C84E4(v35, 1);
        }
      }

      else
      {
        if (v8 == 463)
        {
          v12 = a1;
          v13 = 463;
LABEL_25:
          sub_2978C75A0(v12, v13);
          v10 = 41;
LABEL_26:
          sub_2978C84CC(v35, v10);
          goto LABEL_31;
        }

        if (v8 == 464)
        {
          sub_2978C75A0(a1, 464);
          v10 = 42;
          goto LABEL_26;
        }
      }

      if (v7 == 493 && sub_2978BA734(v35) != 41 && sub_2978BA734(v35) != 42)
      {
        sub_2978CFEF4(a1, v34, 1066, v33);
        sub_29782963C(v33);
LABEL_55:
        v31.n128_u32[0] = 1441856;
        sub_2977FB8D0(v32, &v31);
        v24 = *(&v32[0] + 1);
        v23 = *&v32[0];
LABEL_56:
        sub_2978D56B8(a1, v23, v24, 1, 1);
        if (sub_29784FF04(a1 + 32, 64))
        {
          sub_2978C84FC(a1);
          v25 = 2;
          v4 = 1;
        }

        else
        {
          sub_2978C8368(a1, 0x16u, v37, &v36);
          v25 = 1;
        }

        if (v25 != 2)
        {
          break;
        }

        goto LABEL_60;
      }

      if ((v9 & 1) == 0 && sub_2978C76B4(a1, v35, 1))
      {
        goto LABEL_55;
      }

      if (sub_297850F64(a1 + 32, 6))
      {
        v16 = sub_2977FB5F0((a1 + 32));
        sub_2978C8538(v32, v35, 0, v16);
        v17 = sub_2978B7E40(*(a1 + 8), v32);
        sub_2978C8540(a2, v17);
      }

      else
      {
        v18 = sub_29784F384(a1 + 32);
        v19 = sub_2978C77C0(a1);
        sub_2978C6E08(&v31);
        if (sub_29784FF04(a1 + 32, 19))
        {
          v20 = sub_2978C856C(a1, &v31);
        }

        else
        {
          v20 = 0;
        }

        if (sub_29784FF04(a1 + 32, 19))
        {
          sub_2978C765C(a1, (a1 + 32), 929, v30);
          sub_29782963C(v30);
          while (sub_29784FF04(a1 + 32, 19))
          {
            sub_2978C6E08(v32);
            sub_2978C856C(a1, v32);
          }

          v20 = 1;
        }

        if (sub_29784FF04(a1 + 32, 62))
        {
          sub_2978C765C(a1, (a1 + 32), 1041, v29);
          sub_29782963C(v29);
          sub_2978C863C(v32, v35, v18, v19, &v31);
          v21 = sub_2978B7E40(*(a1 + 8), v32);
          sub_2978C8540(a2, v21);
LABEL_53:
          v28 = 1441856;
          sub_2977FB8D0(v27, &v28);
          v23 = v27[0];
          v24 = v27[1];
          goto LABEL_56;
        }

        sub_2978C863C(v32, v35, v18, v19, &v31);
        v22 = sub_2978B7E40(*(a1 + 8), v32);
        sub_2978C8540(a2, v22);
        if (v20)
        {
          goto LABEL_53;
        }
      }

      if (sub_29784FF04(a1 + 32, 64))
      {
        sub_2978C75A0(a1, 64);
      }

      else if (sub_297850F64(a1 + 32, 22))
      {
        sub_2978C765C(a1, (a1 + 32), 8, v32);
        sub_297869528(v32, 0x16u);
        sub_29782963C(v32);
        break;
      }

LABEL_60:
      if (!sub_297850F64(a1 + 32, 22))
      {
        goto LABEL_61;
      }
    }
  }

  return 1;
}

uint64_t sub_2978C7D5C(uint64_t a1, uint64_t a2)
{
  sub_2978C75A0(a1, 460);
  if (sub_2978CFC00(a1, 21, 8, "'('", 0) || sub_2978CFC00(a1, 21, 8, "'('", 0))
  {
    return 1;
  }

  if (sub_29784FF04(a1 + 32, 22))
  {
LABEL_14:
    if (sub_2978CFC00(a1, 22, 8, "')'", 0))
    {
      return 1;
    }

    v19 = sub_2978CFC00(a1, 22, 8, "')'", 0);
    result = 0;
    if (v19)
    {
      return 1;
    }

    return result;
  }

  while (1)
  {
    if (!sub_29787EFCC(a1 + 32))
    {
      sub_2978C765C(a1, (a1 + 32), 1050, v27);
      v21 = v27;
      goto LABEL_18;
    }

    v4 = sub_29784F384(a1 + 32);
    v5 = sub_297828314(v4);
    v7 = v6;
    v8 = sub_2977FB5F0((a1 + 32));
    sub_2978C80D4(v26, v8, v5, v7);
    sub_2978C75A0(a1, 6);
    if (sub_29784FF04(a1 + 32, 21))
    {
      break;
    }

LABEL_11:
    v18 = sub_2978B7D5C(*(a1 + 8), v26);
    sub_2978C833C(a2, v18);
    if (sub_29784FF04(a1 + 32, 64))
    {
      sub_2978C75A0(a1, 64);
    }

    if (sub_29784FF04(a1 + 32, 22))
    {
      goto LABEL_14;
    }
  }

  sub_2978C80DC(a1);
  if (sub_29787EFCC(a1 + 32))
  {
    v9 = sub_29784F384(a1 + 32);
    v10 = sub_297828314(v9);
    sub_2978C8144(v26, v10, v11);
    sub_2978C75A0(a1, 6);
    goto LABEL_10;
  }

  if (sub_29784FF04(a1 + 32, 8))
  {
    sub_2978C817C(v25);
    v12 = sub_2978C8260(v25, sub_2978C82A0);
    LODWORD(v23[0]) = sub_2978C82D0(16);
    v13 = sub_2978C821C(v12, v23);
    v14 = sub_2977FB7B8(a1 + 32);
    sub_297804638(&__str, v14);
    v15 = std::stod(&__str, 0);
    MEMORY[0x29C275C10](v13, v15);
    std::string::~string(&__str);
    sub_2978C82FC(v25);
    v16 = sub_2978037C8(&__str);
    v17 = strdup(v16);
    sub_2977FB7B4(v23, v17);
    std::string::~string(&__str);
    sub_2978C8144(v26, v23[0], v23[1]);
    sub_2978C75A0(a1, 8);
    sub_2978C8304(v25);
LABEL_10:
    if (sub_2978CFC00(a1, 22, 8, "')'", 0))
    {
      return 1;
    }

    goto LABEL_11;
  }

  sub_2978C765C(a1, (a1 + 32), 1051, v22);
  v21 = v22;
LABEL_18:
  sub_29782963C(v21);
  return 1;
}

uint64_t sub_2978C804C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978BA2D0(*(a1 + 8), a2);
  if (v3)
  {

    return sub_2978CFA7C(a1, v3);
  }

  else
  {
    sub_2978CFC00(a1, 23, 8, "'{'", 0);
    sub_2978CFD74(a1, 24, 0, 0);
    return 0;
  }
}

uint64_t sub_2978C80DC(uint64_t a1)
{
  v2 = sub_29784FF04(a1 + 32, 21);
  v3 = *(a1 + 60);
  if (v2)
  {
    v4 = 1;
LABEL_5:
    *(a1 + 60) = v3 + v4;
    goto LABEL_6;
  }

  if (v3)
  {
    v4 = -1;
    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 56) = sub_2977FB5F0((a1 + 32));
  sub_29787C4FC(*a1, (a1 + 32));
  return *(a1 + 56);
}

uint64_t sub_2978C8144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  result = sub_2977FB720(v5);
  *(a1 + 24) = result;
  return result;
}

uint64_t *sub_2978C817C(uint64_t *a1)
{
  sub_2978CBD28(a1 + 14);
  v2 = MEMORY[0x29EDC95A8] + 24;
  *a1 = MEMORY[0x29EDC95A8] + 24;
  v3 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  sub_2978CBD5C(a1, (MEMORY[0x29EDC9538] + 8), a1 + 1);
  *a1 = v2;
  a1[14] = v3;
  sub_2978CBE24((a1 + 1), 16);
  return a1;
}

uint64_t *sub_2978C8304(uint64_t *a1)
{
  v2 = sub_2978CBA58(a1, MEMORY[0x29EDC9538]);
  MEMORY[0x29C275CD0](v2 + 112);
  return a1;
}

BOOL sub_2978C8368(_DWORD *a1, unsigned int a2, int a3, _DWORD *a4)
{
  v8 = sub_2978503FC((a1 + 8));
  if (v8 == a2)
  {
    if (a2 == 20)
    {
      v10 = a1[16];
      if (v10)
      {
        a1[16] = v10 - 1;
      }
    }

    else if (a2 == 22)
    {
      v9 = a1[15];
      if (v9)
      {
        a1[15] = v9 - 1;
      }
    }

    else
    {
      v11 = a1[17];
      if (v11)
      {
        a1[17] = v11 - 1;
      }
    }

    *a4 = sub_2978C77C0(a1);
  }

  else
  {
    sub_2978D59C8(a1, a2, a3, a4);
  }

  return v8 != a2;
}

uint64_t sub_2978C8430(uint64_t result, int a2, char a3)
{
  *(result + 4) = a2;
  *(result + 56) = *(result + 56) & 0xF0FF | ((a3 & 0xF) << 8);
  return result;
}

uint64_t sub_2978C844C(uint64_t a1, uint64_t a2)
{
  result = sub_2978503FC(a1 + 32);
  switch(result)
  {
    case 0x18B:
      v5 = 2;
      break;
    case 0x166:
      v5 = 3;
      break;
    case 0x165:
      v5 = 1;
      break;
    default:
      return result;
  }

  sub_2978C8644(a2, v5);

  return sub_2978C77C0(a1);
}

uint64_t sub_2978C84FC(uint64_t a1)
{
  *(a1 + 56) = sub_2977FB5F0((a1 + 32));
  sub_29787C4FC(*a1, (a1 + 32));
  return *(a1 + 56);
}

uint64_t sub_2978C856C(unsigned int *a1, _OWORD *a2)
{
  sub_297829180(&v10);
  sub_2978D58FC(a1, 0x13u, &v10);
  if (sub_297850F64((a1 + 8), 20))
  {
    v4 = sub_2978CC114(a1);
    if (!v4)
    {
      v5 = 1;
      sub_2978CFD74(a1, 20, 1, 1);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
LABEL_6:
  sub_297829180(&v9);
  v6 = v5 | sub_2978C8368(a1, 0x14u, v10, &v9);
  if ((v6 & 1) == 0)
  {
    sub_2978CB0C8(&v8, v10, v9, v4);
    *a2 = v8;
  }

  return v6;
}

unsigned int *sub_2978C865C(uint64_t a1)
{
  if (sub_29784FF04(a1 + 32, 523))
  {

    return sub_2978CE178(a1);
  }

  else if (sub_29784FF04(a1 + 32, 524))
  {
    if (*(a1 + 72) == 1)
    {
      sub_2978C765C(a1, (a1 + 32), 636, v3);
      sub_29782963C(v3);
    }

    return sub_2978CE2B4(a1);
  }

  else if (sub_29784FF04(a1 + 32, 521))
  {

    return sub_2978CDBFC(a1);
  }

  else
  {
    sub_29784FF04(a1 + 32, 525);
    sub_2978B69F8(*(a1 + 8));
    sub_2978C75A0(a1, 525);
    return 0;
  }
}

unsigned int *sub_2978C8754(uint64_t a1)
{
  v2 = sub_2977FB5F0((a1 + 32));
  sub_2978C6DA8(v12, v2);
  v3 = sub_2978C75A0(a1, 399);
  if ((sub_2978C9608(a1, v12) & 1) == 0)
  {
    sub_2978C765C(a1, (a1 + 32), 1146, v11);
    v5 = v11;
LABEL_7:
    sub_29782963C(v5);
    goto LABEL_8;
  }

  if (!sub_2978C76B4(a1, v12, 1))
  {
    if (!sub_2978B80B4(v12))
    {
      sub_2978C765C(a1, (a1 + 32), 1146, v10);
      sub_29782963C(v10);
      return 0;
    }

    if (!sub_297850F64(a1 + 32, 61))
    {
      sub_2978C75A0(a1, 61);
      return sub_2978BA59C(*(a1 + 8), v12, v3);
    }

    sub_2978C765C(a1, (a1 + 32), 1013, v9);
    v4 = sub_2977FB5F0((a1 + 32));
    sub_2977FB7B4(v7, ";");
    sub_297852794(v4, v7[0], v7[1], 0, v8);
    sub_297852754(v9, v8);
    sub_29782AC18(v8);
    v5 = v9;
    goto LABEL_7;
  }

LABEL_8:
  sub_2978D58A8(a1);
  return 0;
}

uint64_t sub_2978C88A8(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (sub_29784FF04((a1 + 8), 378))
  {
    if (sub_2978C9684(a1, a2, a3))
    {
      return 1;
    }
  }

  else
  {
    sub_2978C9A2C(a1, a2);
    sub_2978C9A8C(a1, a2);
  }

  sub_2978C98E8(a1, a2);
  return 0;
}

uint64_t sub_2978C892C(uint64_t a1, unsigned int *a2)
{
  sub_2978B84F4(&v16, 1, 0, 0);
  v4 = *(a1 + 8);
  v5 = sub_29784F384(a2);
  v6 = sub_2977FB5F0(a2);
  v15[0] = sub_2978BF04C(v4, v5, v6, &v16);
  v15[1] = v7;
  result = sub_2977FB5F0(v15);
  if (result > 3)
  {
    if (result == 5)
    {
      sub_2978C765C(a1, a2, 1018, v13);
      v9 = v13;
    }

    else
    {
      if (result != 4)
      {
        return result;
      }

      sub_2978C765C(a1, a2, 1018, v14);
      v9 = v14;
    }
  }

  else if (result)
  {
    if (result != 3)
    {
      return result;
    }

    sub_2978C765C(a1, a2, 1018, v11);
    v9 = v11;
  }

  else
  {
    sub_2978C765C(a1, a2, 3137, v12);
    v10 = sub_29784F384(a2);
    sub_297869558(v12, v10);
    v9 = v12;
  }

  return sub_29782963C(v9);
}

uint64_t sub_2978C8A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x29EDCA608];
  sub_297829180(&v35);
  sub_2978D58FC(a1, 0x17u, &v35);
  v6 = sub_2977FB720(a2);
  if (sub_2978B80F0(v6) == 7)
  {
    sub_2978A19CC(&v33);
    sub_29788E11C(v37);
    sub_2978B65DC(&v31, *(a1 + 8), 136);
    v7 = *(a1 + 8);
    v8 = sub_2977FB720(a2);
    sub_2978C967C(v29, v7, v8);
    while (sub_297850F64(a1 + 32, 24))
    {
      if (!sub_297850F64(a1 + 32, 1))
      {
        break;
      }

      sub_2978CFF00(a1);
      sub_29788E11C(v36);
      sub_2978C6F98(a1, v36, 0);
      v28[0] = sub_2978BFAAC(*(a1 + 8), v36);
      sub_2978040A4(v37, v28);
      sub_2977FD134(v36);
    }

    LOWORD(v33) = sub_29782B550(v29);
    sub_2978C9680(v29);
    sub_2978B6620(&v31);
    sub_297829180(&v32);
    if (sub_2978C8368(a1, 0x18u, v35, &v32))
    {
      goto LABEL_22;
    }

    if (sub_29784FF04(a1 + 32, 6))
    {
      v9 = sub_29784F384(a1 + 32);
      v10 = sub_2978C77C0(a1);
      sub_2978C6E08(&v31);
      if (sub_29784FF04(a1 + 32, 19))
      {
        sub_2978C856C(a1, &v31);
      }

      if (sub_29784FF04(a1 + 32, 19))
      {
        sub_2978C765C(a1, (a1 + 32), 929, v30);
        sub_29782963C(v30);
        while (sub_29784FF04(a1 + 32, 19))
        {
          sub_2978C6E08(v36);
          sub_2978C856C(a1, v36);
        }
      }

      sub_2978C1AD4(v36);
      sub_2978C863C(v29, v36, v9, v10, &v31);
      if (sub_297850F64(a1 + 32, 61))
      {
        sub_2978CFEF4(a1, v32, 1013, v28);
        v11 = sub_2977FB5F0((a1 + 32));
        sub_2977FB7B4(v27, ";");
        sub_297852794(v11, v27[0], v27[1], 0, v36);
        sub_297852754(v28, v36);
        sub_29782AC18(v36);
        v12 = v28;
LABEL_17:
        sub_29782963C(v12);
LABEL_22:
        result = sub_2977FD134(v37);
        goto LABEL_23;
      }

      sub_2978C75A0(a1, 61);
      v17 = *(a1 + 8);
      v18 = v35;
      v19 = v32;
      v20 = v33;
      sub_29780B1E8(v36, v37);
      v21 = sub_2978B93E0(v17, a2, v18, v19, v20, *&v36[0], *(&v36[0] + 1), v29);
    }

    else
    {
      if (sub_297850F64(a1 + 32, 61))
      {
        sub_2978CFEF4(a1, v32, 1013, v29);
        v16 = sub_2977FB5F0((a1 + 32));
        sub_2977FB7B4(&v31, ";");
        sub_297852794(v16, v31.n128_i64[0], v31.n128_i64[1], 0, v36);
        sub_297852754(v29, v36);
        sub_29782AC18(v36);
        v12 = v29;
        goto LABEL_17;
      }

      sub_2978C75A0(a1, 61);
      v22 = *(a1 + 8);
      v23 = v35;
      v24 = v32;
      v25 = v33;
      sub_29780B1E8(v36, v37);
      v21 = sub_2978B91A4(v22, a2, v23, v24, v25, *&v36[0], *(&v36[0] + 1));
    }

    *&v36[0] = v21;
    if (v21)
    {
      sub_2978040A4(a3, v36);
    }

    goto LABEL_22;
  }

  v13 = sub_2977FB720(a2);
  v14 = sub_297847BE0(v13);
  sub_2978CFEF4(a1, v14, 1096, v34);
  sub_29782963C(v34);
  sub_2978CFD74(a1, 24, 0, 1);
  result = sub_2978D58A8(a1);
LABEL_23:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_2978C8E7C(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29784FF04((a1 + 8), 64);
  if (!sub_29784FF04((a1 + 8), 64))
  {
    return v6;
  }

  while (1)
  {
    sub_2978C75A0(a1, 64);
    if (sub_297850F64((a1 + 8), 6))
    {
      sub_2978C765C(a1, a1 + 8, 8, v13);
      sub_297869528(v13, 6u);
      sub_29782963C(v13);
      return 0;
    }

    v7 = sub_29784F384((a1 + 8));
    v8 = sub_2978C77C0(a1);
    if (sub_29784FF04((a1 + 8), 19))
    {
      break;
    }

    sub_2978C8538(v13, a2, v7, v8);
    v15.n128_u64[0] = sub_2978C94E8(a1, v13);
    if (v15.n128_u64[0])
    {
      v10 = &v15;
LABEL_12:
      sub_2978040A4(a3, v10);
    }

LABEL_13:
    if (!sub_29784FF04((a1 + 8), 64))
    {
      return v6;
    }
  }

  v9 = sub_297806460(a2);
  if (!sub_2978B810C(v9))
  {
    sub_2978C6E08(&v15);
    sub_2978C856C(a1, &v15);
    if (sub_29784FF04((a1 + 8), 19))
    {
      sub_2978C765C(a1, a1 + 8, 929, v14);
      sub_29782963C(v14);
      while (sub_29784FF04((a1 + 8), 19))
      {
        sub_2978C6E08(v13);
        sub_2978C856C(a1, v13);
      }
    }

    sub_2978C863C(v13, a2, v7, v8, &v15);
    v12 = sub_2978C94E8(a1, v13);
    if (!v12)
    {
      goto LABEL_13;
    }

    v10 = &v12;
    goto LABEL_12;
  }

  sub_2978C765C(a1, a1 + 8, 929, v16);
  sub_29782963C(v16);
  while (sub_29784FF04((a1 + 8), 19))
  {
    sub_2978C6E08(v13);
    sub_2978C856C(a1, v13);
  }

  return 0;
}

uint64_t sub_2978C90A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!sub_29784FF04(a1 + 32, 61))
  {
    if (sub_297850F64(a1 + 32, 6))
    {
      sub_2978C765C(a1, (a1 + 32), 8, v30);
      sub_297869528(v30, 6u);
      v9 = v30;
      goto LABEL_7;
    }

    v12 = sub_29784F384(a1 + 32);
    v13 = sub_2978C77C0(a1);
    if (!sub_29784FF04(a1 + 32, 21))
    {
      sub_2978C6E08(&v28);
      if (sub_29784FF04(a1 + 32, 19))
      {
        v14 = sub_297806460(a3);
        if (sub_2978B810C(v14))
        {
          v15 = sub_2977FB5F0((a1 + 32));
          sub_2978CFEF4(a1, v15, 929, v24);
          v9 = v24;
          goto LABEL_7;
        }

        result = sub_2978C856C(a1, &v28);
        if (result)
        {
          goto LABEL_36;
        }

        if (sub_29784FF04(a1 + 32, 19))
        {
          v17 = sub_2977FB5F0((a1 + 32));
          sub_2978CFEF4(a1, v17, 929, v23);
          v9 = v23;
          goto LABEL_7;
        }
      }

      sub_2978C863C(v27, a3, v12, v13, &v28);
      v22 = sub_2978C94E8(a1, v27);
      if (v22)
      {
        sub_2978040A4(a2, &v22);
      }

      if (!sub_2978C8E7C(a1, a3, a2))
      {
        goto LABEL_8;
      }

      if (!sub_297850F64(a1 + 32, 61))
      {
LABEL_18:
        result = sub_2978C75A0(a1, 61);
        goto LABEL_36;
      }

      sub_2978C765C(a1, (a1 + 32), 1013, v26);
      v18 = sub_2977FB5F0((a1 + 32));
      sub_2977FB7B4(v21, ";");
      sub_297852794(v18, v21[0], v21[1], 0, v30);
      sub_297852754(v26, v30);
      sub_29782AC18(v30);
      v9 = v26;
LABEL_7:
      sub_29782963C(v9);
LABEL_8:
      result = sub_2978D58A8(a1);
LABEL_36:
      v20 = *MEMORY[0x29EDCA608];
      return result;
    }

    sub_2978B65DC(v21, *(a1 + 8), 9);
    sub_2978C77C4(v30, a3, v12, v13);
    sub_2978C77CC(a1, v30);
    if (sub_29784FF04(a1 + 32, 61))
    {
      sub_2978C75A0(a1, 61);
      *&v27[0] = sub_2978B9B10(*(a1 + 8), v30);
      if (*&v27[0])
      {
        sub_2978040A4(a2, v27);
      }

      sub_2978CFF00(a1);
    }

    else
    {
      if (a5)
      {
        if (!sub_297850F64(a1 + 32, 23))
        {
          *&v27[0] = sub_2978C804C(a1, v30);
          if (*&v27[0])
          {
            sub_2978040A4(a2, v27);
          }

          goto LABEL_35;
        }

        sub_2978CFF00(a1);
        sub_2978C765C(a1, (a1 + 32), 979, v25);
        v16 = v25;
      }

      else
      {
        sub_2978CFF00(a1);
        sub_2978C765C(a1, (a1 + 32), 1013, &v28);
        v19 = sub_2977FB5F0((a1 + 32));
        sub_2977FB7B4(v26, ";");
        sub_297852794(v19, v26[0], v26[1], 0, v27);
        sub_297852754(&v28, v27);
        sub_29782AC18(v27);
        v16 = &v28;
      }

      sub_29782963C(v16);
      sub_2978D58A8(a1);
    }

LABEL_35:
    sub_2978C80D0(v30);
    result = sub_2978B6620(v21);
    goto LABEL_36;
  }

  if (sub_2978BA734(a3) == 1)
  {
    if (sub_2978B9058(a3))
    {
      *&v30[0] = sub_297805510(a3);
      sub_2978040A4(a2, v30);
    }

    else
    {
      sub_2978C765C(a1, (a1 + 32), 925, v29);
      sub_29782963C(v29);
    }

    goto LABEL_18;
  }

  v11 = *MEMORY[0x29EDCA608];

  return sub_2978C75A0(a1, 61);
}

unsigned __int8 *sub_2978C94E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FB7B8(a2);
  v14[0] = sub_297828314(v4);
  v14[1] = v5;
  if (sub_2977FB7B8(v14) >= 0x401)
  {
    v6 = sub_29782AFB0(a2);
    sub_2978CFEF4(a1, v6, 1043, v13);
    sub_29782963C(v13);
  }

  v7 = sub_2978B8748(*(a1 + 8), a2, 0);
  if (sub_29784FF04(a1 + 32, 62))
  {
    v8 = sub_2978C75A0(a1, 62);
    v9 = sub_2978CC164(a1);
    if (v9)
    {
      v7 = sub_2978B95FC(*(a1 + 8), v7, v9, v8);
    }
  }

  else
  {
    v10 = sub_2977FB720(a2);
    if (sub_2978B80F0(v10) == 2)
    {
      sub_2978C765C(a1, (a1 + 32), 947, v12);
      sub_29782963C(v12);
      return 0;
    }
  }

  if (v7)
  {
    sub_2978B9A6C(*(a1 + 8), v7);
  }

  return v7;
}

uint64_t sub_2978C9608(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978503FC(a1 + 32);
  switch(v4)
  {
    case 327:
      v5 = 3;
      goto LABEL_7;
    case 379:
      v5 = 1;
      goto LABEL_7;
    case 392:
      v5 = 2;
LABEL_7:
      sub_2978CA54C(a2, v5);
      sub_2978C77C0(a1);
      return 1;
  }

  return 0;
}

uint64_t sub_2978C9684(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2978C75A0(a1, 378);
  v7 = sub_2977FB5F0(a1 + 8);
  sub_297829180(&v25);
  if (sub_2978CFC00(a1, 21, 992, "layout", 61))
  {
LABEL_19:
    v8 = 1;
    return v8 & 1;
  }

  v8 = 0;
  do
  {
    while (sub_29784FF04((a1 + 8), 6))
    {
      v9 = sub_29784F384((a1 + 8));
      v10 = sub_297828314(v9);
      v12 = sub_2978C9AF0(v10, v11);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = sub_2978C75A0(a1, 6);
      sub_2978CA278(&v23, v14, v13);
      if (sub_29784FF04((a1 + 8), 62))
      {
        sub_2978C75A0(a1, 62);
        if (sub_297850F64((a1 + 8), 8))
        {
          sub_2978C765C(a1, a1 + 8, 991, v22);
          sub_29782963C(v22);
          v21 = 1441856;
          sub_2977FB8D0(v20, &v21);
          v15 = v20[0];
          v16 = v20[1];
          goto LABEL_9;
        }

        v18 = sub_2978CD190(a1);
        sub_2977FE390(&v23, v18);
      }

      sub_297803F88(a3, &v23);
      if (sub_297850F64((a1 + 8), 64))
      {
        v17 = 3;
        goto LABEL_16;
      }

      sub_2978C75A0(a1, 64);
    }

    sub_2978C765C(a1, a1 + 8, 987, v24);
    sub_29782963C(v24);
    LODWORD(v20[0]) = 1441856;
    sub_2977FB8D0(&v23, v20);
    v16 = *(&v23 + 1);
    v15 = v23;
LABEL_9:
    sub_2978D56B8(a1, v15, v16, 1, 1);
    if (sub_29784FF04((a1 + 8), 64))
    {
      sub_2978C84FC(a1);
      v17 = 2;
      v8 = 1;
    }

    else
    {
      sub_2978C8368(a1, 0x16u, v7, &v25);
      v17 = 1;
    }

LABEL_16:
    ;
  }

  while (v17 == 2);
  if (v17 != 3 || sub_2978C8368(a1, 0x16u, v7, &v25))
  {
    goto LABEL_19;
  }

  sub_29781601C(&v23, a3);
  sub_2978CA280(a2, v6, v23, *(&v23 + 1));
  return v8 & 1;
}

uint64_t sub_2978C98E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FB5F0((a1 + 32));
  v5 = sub_2978503FC(a1 + 32);
  result = 0;
  if (v5 <= 356)
  {
    switch(v5)
    {
      case 79:
        v7 = 2;
        break;
      case 296:
        v7 = 1;
        break;
      case 302:
        sub_2978C75A0(a1, 302);
        if (sub_2978503FC(a1 + 32) == 357)
        {
          v7 = 5;
        }

        else
        {
          if (sub_2978503FC(a1 + 32) != 395)
          {
            v8 = sub_2977FB5F0((a1 + 32));
            sub_2978CFEF4(a1, v8, 985, v9);
            sub_29782963C(v9);
            return 0;
          }

          v7 = 6;
        }

        break;
      default:
        return result;
    }
  }

  else if (v5 > 437)
  {
    if (v5 == 438)
    {
      v7 = 7;
    }

    else
    {
      if (v5 != 454)
      {
        return result;
      }

      v7 = 8;
    }
  }

  else if (v5 == 357)
  {
    v7 = 3;
  }

  else
  {
    if (v5 != 395)
    {
      return result;
    }

    v7 = 4;
  }

  sub_2978C8430(a2, v4, v7);
  sub_2978C77C0(a1);
  return 1;
}

BOOL sub_2978C9A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978503FC(a1 + 32);
  if (v4 == 361)
  {
    sub_2978CA28C(a2, 1);
    sub_2978C75A0(a1, 361);
  }

  return v4 == 361;
}

uint64_t sub_2978C9A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978503FC(a1 + 32);
  if (v4 == 423)
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (v4 == 323)
  {
    v5 = 2;
LABEL_5:
    sub_2978CA29C(a2, v5);
    sub_2978C77C0(a1);
    return 1;
  }

  return 0;
}

uint64_t sub_2978C9AF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2978102C8(v161, a1, a2);
  v160 = 1;
  v3 = sub_297810504(v2, "shared", &v160);
  v159 = 2;
  v4 = sub_297810504(v3, "packed", &v159);
  v158 = 3;
  v5 = sub_297810504(v4, "std140", &v158);
  v157 = 4;
  v6 = sub_297810504(v5, "std430", &v157);
  v156 = 5;
  v7 = sub_297812160(v6, "row_major", &v156);
  v155 = 6;
  v8 = sub_2978121D4(v7, "column_major", &v155);
  v154 = 7;
  v9 = sub_2978102CC(v8, "rgba32f", &v154);
  v153 = 8;
  v10 = sub_2978102CC(v9, "rgba16f", &v153);
  v152 = 9;
  v11 = sub_2978103B4(v10, "rg32f", &v152);
  v151 = 10;
  v12 = sub_2978103B4(v11, "rg16f", &v151);
  v150 = 11;
  v13 = sub_297812248(v12, "r11f_g11f_b10f", &v150);
  v149 = 12;
  v14 = sub_29781049C(v13, "r32f", &v149);
  v148 = 13;
  v15 = sub_29781049C(v14, "r16f", &v148);
  v147 = 14;
  v16 = sub_297810504(v15, "rgba16", &v147);
  v146 = 15;
  v17 = sub_297810578(v16, "rgb10_a2", &v146);
  v145 = 16;
  v18 = sub_2978103B4(v17, "rgba8", &v145);
  v144 = 17;
  v19 = sub_29781049C(v18, "rg16", &v144);
  v143 = 18;
  v20 = sub_297810428(v19, "rg8", &v143);
  v142 = 19;
  v21 = sub_297810428(v20, "r16", &v142);
  v141 = 20;
  v22 = sub_29781243C(v21, "r8", &v141);
  v140 = 21;
  v23 = sub_2978121D4(v22, "rgba16_snorm", &v140);
  v139 = 22;
  v24 = sub_297811E3C(v23, "rgba8_snorm", &v139);
  v138 = 23;
  v25 = sub_297810340(v24, "rg16_snorm", &v138);
  v137 = 24;
  v26 = sub_297812160(v25, "rg8_snorm", &v137);
  v136 = 25;
  v27 = sub_297812160(v26, "r16_snorm", &v136);
  v135 = 26;
  v28 = sub_297810578(v27, "r8_snorm", &v135);
  v134 = 27;
  v29 = sub_2978102CC(v28, "rgba32i", &v134);
  v133 = 28;
  v30 = sub_2978102CC(v29, "rgba16i", &v133);
  v132 = 29;
  v31 = sub_297810504(v30, "rgba8i", &v132);
  v131 = 30;
  v32 = sub_2978103B4(v31, "rg32i", &v131);
  v130 = 31;
  v33 = sub_2978103B4(v32, "rg16i", &v130);
  v129 = 32;
  v34 = sub_29781049C(v33, "rg8i", &v129);
  v128 = 33;
  v35 = sub_29781049C(v34, "r32i", &v128);
  v127 = 34;
  v36 = sub_29781049C(v35, "r16i", &v127);
  v126 = 35;
  v37 = sub_297810428(v36, "r8i", &v126);
  v125 = 36;
  v38 = sub_297810578(v37, "rgba32ui", &v125);
  v124 = 37;
  v39 = sub_297810578(v38, "rgba16ui", &v124);
  v123 = 38;
  v40 = sub_297810340(v39, "rgb10_a2ui", &v123);
  v122 = 39;
  v41 = sub_2978102CC(v40, "rgba8ui", &v122);
  v121 = 40;
  v42 = sub_297810504(v41, "rg32ui", &v121);
  v120 = 41;
  v43 = sub_297810504(v42, "rg16ui", &v120);
  v119 = 42;
  v44 = sub_2978103B4(v43, "rg8ui", &v119);
  v118 = 43;
  v45 = sub_2978103B4(v44, "r32ui", &v118);
  v117 = 44;
  v46 = sub_2978103B4(v45, "r16ui", &v117);
  v116 = 45;
  v47 = sub_29781049C(v46, "r8ui", &v116);
  v115 = 46;
  v48 = sub_297810578(v47, "location", &v115);
  v114 = 47;
  v49 = sub_2978102CC(v48, "binding", &v114);
  v113 = 48;
  v50 = sub_297812160(v49, "triangles", &v113);
  v112 = 49;
  v51 = sub_2978103B4(v50, "quads", &v112);
  v111 = 50;
  v52 = sub_297810578(v51, "isolines", &v111);
  v110 = 51;
  v53 = sub_297828618(v52, "equal_spacing", &v110);
  v109 = 52;
  v54 = sub_2978284B4(v53, "fractional_even_spacing", &v109);
  v108 = 53;
  v55 = sub_297828770(v54, "fractional_odd_spacing", &v108);
  v107 = 54;
  v56 = sub_29781243C(v55, "cw", &v107);
  v106 = 55;
  v57 = sub_297810428(v56, "ccw", &v106);
  v105 = 56;
  v58 = sub_297810340(v57, "point_mode", &v105);
  v104 = 57;
  v59 = sub_297810504(v58, "points", &v104);
  v103 = 58;
  v60 = sub_2978103B4(v59, "lines", &v103);
  v102 = 59;
  v61 = sub_2978285A4(v60, "lines_adjacency", &v102);
  v101 = 60;
  v62 = sub_2978288D8(v61, "triangles_adjacency", &v101);
  v100 = 61;
  v63 = sub_297811E3C(v62, "invocations", &v100);
  v99 = 62;
  v64 = sub_29782868C(v63, "origin_upper_left", &v99);
  v98 = 63;
  v65 = sub_29782852C(v64, "pixel_center_integer", &v98);
  v97 = 64;
  v66 = sub_29782852C(v65, "early_fragment_tests", &v97);
  v96 = 65;
  v67 = sub_2978121D4(v66, "local_size_x", &v96);
  v95 = 66;
  v68 = sub_2978121D4(v67, "local_size_y", &v95);
  v94 = 67;
  v69 = sub_2978121D4(v68, "local_size_z", &v94);
  v93 = 68;
  v70 = sub_297810578(v69, "depthAny", &v93);
  v92 = 69;
  v71 = sub_297828618(v70, "depth_greater", &v92);
  v91 = 70;
  v72 = sub_297812160(v71, "depthLess", &v91);
  v90 = 71;
  v73 = sub_2978285A4(v72, "depth_unchanged", &v90);
  v89 = 72;
  v74 = sub_2978103B4(v73, "index", &v89);
  v88 = 73;
  v75 = sub_297810578(v74, "vertices", &v88);
  v87 = 74;
  v76 = sub_297810340(v75, "line_strip", &v87);
  v86 = 75;
  v77 = sub_297812248(v76, "triangle_strip", &v86);
  v85 = 76;
  v78 = sub_2978121D4(v77, "max_vertices", &v85);
  v84 = 77;
  v79 = sub_297810504(v78, "stream", &v84);
  v83 = 78;
  v80 = sub_297810504(v79, "offset", &v83);
  v82 = 0;
  return sub_297828CA4(v80, &v82);
}

uint64_t sub_2978CA280(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *(result + 8) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  return result;
}

uint64_t sub_2978CA2AC(uint64_t a1)
{
  v2 = sub_2978503FC(a1 + 32);
  if (v2 <= 328)
  {
    if (v2 > 268)
    {
      if (v2 > 298)
      {
        return v2 == 299 || v2 == 327 || v2 == 328;
      }

      v5 = v2 == 297 || v2 == 298;
      v6 = v2 == 269;
    }

    else if (v2 > 100)
    {
      v5 = v2 == 106 || v2 == 123;
      v6 = v2 == 101;
    }

    else
    {
      if (v2 == 6)
      {
        v7 = *(a1 + 8);
        v8 = sub_29784F384(a1 + 32);
        sub_2977FB5F0((a1 + 32));
        return sub_2978BF178(v7, v8) != 0;
      }

      v5 = v2 == 92;
      v6 = v2 == 87;
    }

    return v6 || v5;
  }

  v3 = v2 - 375;
  result = 0;
  switch(v3)
  {
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 28:
    case 33:
    case 62:
    case 76:
    case 77:
    case 78:
    case 80:
    case 81:
    case 82:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
      return 1;
    case 3:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 29:
    case 30:
    case 31:
    case 32:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 83:
    case 84:
    case 85:
      return result;
    default:
      v5 = 0;
      v6 = 0;
      return v6 || v5;
  }

  return result;
}

BOOL sub_2978CA408(uint64_t a1)
{
  v2 = sub_2978503FC(a1 + 32);
  result = 1;
  if (v2 <= 436)
  {
    if (v2 <= 356)
    {
      if (((v2 - 269) > 0x3D || ((1 << (v2 - 13)) & 0x3C00000270000001) == 0) && ((v2 - 87) > 0x24 || ((1 << (v2 - 87)) & 0x1000084021) == 0))
      {
        if (v2 == 6)
        {
          v5 = *(a1 + 8);
          v6 = sub_29784F384(a1 + 32);
          sub_2977FB5F0((a1 + 32));
          return sub_2978BF178(v5, v6) != 0;
        }

        return 0;
      }
    }

    else
    {
      v4 = v2 - 357;
      if (v4 > 0x33 || ((1 << v4) & 0x8444FFFDC0003) == 0)
      {
        return 0;
      }
    }
  }

  else if (((v2 - 437) > 0x37 || ((1 << (v2 + 75)) & 0xFFFFFFFF1DC001) == 0) && v2 != 521)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2978CA564(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a1;
  v33 = a3;
  while (1)
  {
    while (1)
    {
      v6 = sub_2978503FC(a1 + 32);
      if (v6 > 327)
      {
        if (v6 > 374)
        {
          switch(v6)
          {
            case 375:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 14);
              v16 = a1;
              v17 = 375;
              goto LABEL_107;
            case 376:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 15);
              v16 = a1;
              v17 = 376;
              goto LABEL_107;
            case 377:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 16);
              v16 = a1;
              v17 = 377;
              goto LABEL_107;
            case 380:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 23);
              v16 = a1;
              v17 = 380;
              goto LABEL_107;
            case 381:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 23);
              v16 = a1;
              v17 = 381;
              goto LABEL_107;
            case 382:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 26);
              v16 = a1;
              v17 = 382;
              goto LABEL_107;
            case 383:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 27);
              v16 = a1;
              v17 = 383;
              goto LABEL_107;
            case 384:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 24);
              v16 = a1;
              v17 = 384;
              goto LABEL_107;
            case 385:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 28);
              v16 = a1;
              v17 = 385;
              goto LABEL_107;
            case 386:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 24);
              v16 = a1;
              v17 = 386;
              goto LABEL_107;
            case 387:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 29);
              v16 = a1;
              v17 = 387;
              goto LABEL_107;
            case 388:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 25);
              v16 = a1;
              v17 = 388;
              goto LABEL_107;
            case 389:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 30);
              v16 = a1;
              v17 = 389;
              goto LABEL_107;
            case 390:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 31);
              v16 = a1;
              v17 = 390;
              goto LABEL_107;
            case 391:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 25);
              v16 = a1;
              v17 = 391;
              goto LABEL_107;
            case 403:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 41);
              v16 = a1;
              v17 = 403;
              goto LABEL_107;
            case 408:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 43);
              v16 = a1;
              v17 = 408;
              goto LABEL_107;
            case 437:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 6);
              v16 = a1;
              v17 = 437;
              goto LABEL_107;
            case 451:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 17);
              v16 = a1;
              v17 = 451;
              goto LABEL_107;
            case 452:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 18);
              v16 = a1;
              v17 = 452;
              goto LABEL_107;
            case 453:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 19);
              v16 = a1;
              v17 = 453;
              goto LABEL_107;
            case 455:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 8);
              v16 = a1;
              v17 = 455;
              goto LABEL_107;
            case 456:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 9);
              v16 = a1;
              v17 = 456;
              goto LABEL_107;
            case 457:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 10);
              v16 = a1;
              v17 = 457;
              goto LABEL_107;
            case 461:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 10);
              v16 = a1;
              v17 = 461;
              goto LABEL_107;
            case 462:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 13);
              v16 = a1;
              v17 = 462;
              goto LABEL_107;
            case 463:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 41);
              v16 = a1;
              v17 = 463;
              goto LABEL_107;
            case 464:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 42);
              v16 = a1;
              v17 = 464;
              goto LABEL_107;
            case 465:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 32);
              v16 = a1;
              v17 = 465;
              goto LABEL_107;
            case 466:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 32);
              v16 = a1;
              v17 = 466;
              goto LABEL_107;
            case 467:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 35);
              v16 = a1;
              v17 = 467;
              goto LABEL_107;
            case 468:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 36);
              v16 = a1;
              v17 = 468;
              goto LABEL_107;
            case 469:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 33);
              v16 = a1;
              v17 = 469;
              goto LABEL_107;
            case 470:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 37);
              v16 = a1;
              v17 = 470;
              goto LABEL_107;
            case 471:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 33);
              v16 = a1;
              v17 = 471;
              goto LABEL_107;
            case 472:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 38);
              v16 = a1;
              v17 = 472;
              goto LABEL_107;
            case 473:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 34);
              v16 = a1;
              v17 = 473;
              goto LABEL_107;
            case 474:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 39);
              v16 = a1;
              v17 = 474;
              goto LABEL_107;
            case 475:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 40);
              v16 = a1;
              v17 = 475;
              goto LABEL_107;
            case 476:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 34);
              v16 = a1;
              v17 = 476;
              goto LABEL_107;
            case 477:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 8);
              v16 = a1;
              v17 = 477;
              goto LABEL_107;
            case 478:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 9);
              v16 = a1;
              v17 = 478;
              goto LABEL_107;
            case 479:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 10);
              v16 = a1;
              v17 = 479;
              goto LABEL_107;
            case 480:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 11);
              v16 = a1;
              v17 = 480;
              goto LABEL_107;
            case 481:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 12);
              v16 = a1;
              v17 = 481;
              goto LABEL_107;
            case 482:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 13);
              v16 = a1;
              v17 = 482;
              goto LABEL_107;
            case 483:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 23);
              v16 = a1;
              v17 = 483;
              goto LABEL_107;
            case 484:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 24);
              v16 = a1;
              v17 = 484;
              goto LABEL_107;
            case 485:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 25);
              v16 = a1;
              v17 = 485;
              goto LABEL_107;
            case 486:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 32);
              v16 = a1;
              v17 = 486;
              goto LABEL_107;
            case 487:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 33);
              v16 = a1;
              v17 = 487;
              goto LABEL_107;
            case 488:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 34);
              v16 = a1;
              v17 = 488;
              goto LABEL_107;
            case 489:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 42);
              v16 = a1;
              v17 = 489;
              goto LABEL_107;
            case 490:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 44);
              v16 = a1;
              v17 = 490;
              goto LABEL_107;
            case 491:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 10);
              v16 = a1;
              v17 = 491;
              goto LABEL_107;
            case 492:
              sub_2978CB0D4(&v32);
              sub_2978C84CC(a2, 10);
              v16 = a1;
              v17 = 492;
              goto LABEL_107;
            default:
              goto LABEL_42;
          }
        }

        if (v6 == 328)
        {
          sub_2978CB0D4(&v32);
          sub_2978C84CC(a2, 11);
          v16 = a1;
          v17 = 328;
          goto LABEL_107;
        }

        if (v6 == 329)
        {
          sub_2978CB0D4(&v32);
          sub_2978C84CC(a2, 12);
          v16 = a1;
          v17 = 329;
          goto LABEL_107;
        }

        if (v6 != 330)
        {
          goto LABEL_42;
        }

        sub_2978CB0D4(&v32);
        sub_2978C84CC(a2, 13);
        v16 = a1;
        v17 = 330;
        goto LABEL_107;
      }

      if (v6 <= 122)
      {
        break;
      }

      if (v6 <= 297)
      {
        if (v6 == 123)
        {
          sub_2978CB0D4(&v32);
          sub_2978C84CC(a2, 7);
          v16 = a1;
          v17 = 123;
          goto LABEL_107;
        }

        if (v6 == 269)
        {
          sub_2978CB0D4(&v32);
          sub_2978C84CC(a2, 4);
          v16 = a1;
          v17 = 269;
          goto LABEL_107;
        }

        if (v6 != 297)
        {
          goto LABEL_42;
        }

        sub_2978CB0D4(&v32);
        sub_2978C84CC(a2, 20);
        v16 = a1;
        v17 = 297;
LABEL_107:
        sub_2978C75A0(v16, v17);
        return 0;
      }

      if (v6 != 302)
      {
        if (v6 == 298)
        {
          sub_2978CB0D4(&v32);
          sub_2978C84CC(a2, 21);
          v16 = a1;
          v17 = 298;
          goto LABEL_107;
        }

        if (v6 == 299)
        {
          sub_2978CB0D4(&v32);
          sub_2978C84CC(a2, 22);
          v16 = a1;
          v17 = 299;
          goto LABEL_107;
        }

LABEL_42:
        if (a3)
        {
LABEL_43:
          sub_2978C765C(a1, (a1 + 32), 1018, v27);
          v19 = v27;
LABEL_44:
          sub_29782963C(v19);
        }

        return 1;
      }

      if (!a3)
      {
        return 1;
      }

      v7 = sub_2978B80F0(a2);
      if (v7 > 8 || ((1 << v7) & 0x118) == 0)
      {
        goto LABEL_43;
      }

      sub_2978C765C(a1, (a1 + 32), 945, v28);
      sub_29782963C(v28);
      sub_2978C77C0(a1);
    }

    if (v6 > 86)
    {
      if (v6 > 100)
      {
        if (v6 == 101)
        {
          v21 = sub_2978CB164(a1);
          if (!v21)
          {
            return 1;
          }

          v22 = sub_29781BF50(v21);
          sub_2978C84CC(a2, 1);
          sub_2978CB4A8(a2, v22);
          sub_2978CB4B0(a2);
          return 0;
        }

        if (v6 != 106)
        {
          goto LABEL_42;
        }

        sub_2978CB0D4(&v32);
        sub_2978C84CC(a2, 2);
        v16 = a1;
        v17 = 106;
      }

      else
      {
        if (v6 == 87)
        {
          sub_2978CB0D4(&v32);
          sub_2978C84CC(a2, 3);
          v16 = a1;
          v17 = 87;
          goto LABEL_107;
        }

        if (v6 != 92)
        {
          goto LABEL_42;
        }

        sub_2978CB0D4(&v32);
        sub_2978C84CC(a2, 5);
        v16 = a1;
        v17 = 92;
      }

      goto LABEL_107;
    }

    if (v6 != 6)
    {
      goto LABEL_42;
    }

    sub_2978B84F4(&v31, 1, 0, 0);
    v8 = *(a1 + 8);
    v9 = sub_29784F384(a1 + 32);
    v10 = sub_2977FB5F0((a1 + 32));
    v30[0] = sub_2978BF04C(v8, v9, v10, &v31);
    v30[1] = v11;
    v12 = sub_2977FB5F0(v30);
    if (v12 != 1)
    {
      break;
    }

    v13 = sub_2977FB7B8(v30);
    sub_2977FD5DC(a1 + 32, v13);
    v14 = sub_2977FB7B8(v30);
    v15 = sub_297871628(v14);
    sub_297853640(a1 + 32, v15);
    sub_2978CB4C0(*a1, a1 + 32);
  }

  if (v12 > 2 || !v12)
  {
    if (a3)
    {
      sub_2978C765C(a1, (a1 + 32), 3137, v29);
      v18 = sub_29784F384(a1 + 32);
      sub_297869558(v29, v18);
      v19 = v29;
      goto LABEL_44;
    }

    return 1;
  }

  v29[0] = sub_2978CB514(v30);
  v23 = sub_2977FB720(v29);
  v24 = sub_297887DB4(v23);
  if (!v24)
  {
    return 1;
  }

  v25 = v24;
  sub_2978C84CC(a2, 1);
  v26 = sub_2977FB7B8(v25);
  sub_2978CB4A8(a2, v26);
  sub_2978C77C0(a1);
  return 0;
}

char *sub_2978CB0D4(char *result)
{
  if (result[8] == 1)
  {
    v8[4] = v1;
    v8[5] = v2;
    v3 = *result;
    v4 = sub_2978503FC(*result + 32);
    result = sub_29784833C(v4);
    if (result)
    {
      v5 = sub_2978503FC(v3 + 32);
      result = sub_297882A94(v5, *(v3 + 16));
      if ((result & 1) == 0)
      {
        sub_2978C765C(v3, (v3 + 32), 1169, v8);
        v6 = sub_297882B50(*(v3 + 16));
        v7 = sub_297883C6C(v6);
        sub_29785965C(v8, v7);
        return sub_29782963C(v8);
      }
    }
  }

  return result;
}

uint64_t sub_2978CB164(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = sub_2978C75A0(a1, 101);
  if (sub_297850F64(a1 + 32, 23) && sub_297850F64(a1 + 32, 6))
  {
    sub_2978C765C(a1, (a1 + 32), 11, v22);
    v3 = sub_297869528(v22, 6u);
    sub_297869528(v3, 0x17u);
    v4 = v22;
LABEL_11:
    sub_29782963C(v4);
    v7 = 0;
    goto LABEL_26;
  }

  sub_297829180(&v20);
  if (sub_29784FF04(a1 + 32, 6))
  {
    v5 = sub_29784F384(a1 + 32);
    v20 = sub_2978C75A0(a1, 6);
    if (sub_297850F64(a1 + 32, 23))
    {
      if (v5)
      {
        v6 = sub_2978BF178(*(a1 + 8), v5);
        if (v6)
        {
          v7 = v6;
          sub_2978CFEF4(a1, v2, 4735, v21);
          v8 = sub_297869558(v21, v5);
          sub_2978634C0(&v19, v2);
          sub_2978CB540(v19, v22);
          sub_297852754(v8, v22);
          sub_29782AC18(v22);
          sub_29782963C(v21);
          goto LABEL_26;
        }
      }

LABEL_10:
      sub_2978C765C(a1, (a1 + 32), 1155, v18);
      v4 = v18;
      goto LABEL_11;
    }
  }

  else
  {
    if (sub_297850F64(a1 + 32, 23))
    {
      goto LABEL_10;
    }

    v5 = 0;
  }

  sub_297829180(&v17);
  sub_2978D58FC(a1, 0x17u, &v17);
  if (sub_29784FF04(a1 + 32, 24))
  {
    sub_2978C765C(a1, (a1 + 32), 964, v16);
    sub_29782963C(v16);
  }

  sub_29788E11C(v22);
  sub_2978B65DC(&v19, *(a1 + 8), 24);
  sub_29788E11C(v21);
  while (sub_297850F64(a1 + 32, 24))
  {
    if (!sub_297850F64(a1 + 32, 1))
    {
      break;
    }

    sub_2978CFF00(a1);
    sub_2978CB57C(a1, v21);
    if (sub_29780406C(v21))
    {
      v15 = sub_2978BFAAC(*(a1 + 8), v21);
      sub_2977FD800(v21);
      if (v15)
      {
        sub_2978040A4(v22, &v15);
      }
    }

    else
    {
      sub_2978CFF00(a1);
    }
  }

  sub_2977FD134(v21);
  sub_2978B6620(&v19);
  sub_297829180(&v19);
  if (sub_2978C8368(a1, 0x18u, v17, &v19))
  {
    v7 = 0;
  }

  else
  {
    sub_29784FF04(a1 + 32, 6);
    v9 = *(a1 + 8);
    v10 = v20;
    v11 = v17;
    v12 = v19;
    sub_29780B1E8(v21, v22);
    v7 = sub_2978B7B98(v9, v2, v10, v5, v11, v12, v21[0], v21[1]);
  }

  sub_2977FD134(v22);
LABEL_26:
  v13 = *MEMORY[0x29EDCA608];
  return v7;
}

__n128 sub_2978CB4C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1984))
  {
    if (sub_297866DE0(a1))
    {
      v5 = sub_29783E88C(a1 + 1928, *(a1 + 1984) - 1);
      v6 = *(a2 + 15);
      result = *a2;
      *v5 = *a2;
      *(v5 + 15) = v6;
    }
  }

  return result;
}

uint64_t sub_2978CB540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_297859984(a1);

  return sub_297854790(v3, v4, a2);
}

uint64_t sub_2978CB57C(uint64_t a1, uint64_t a2)
{
  if (sub_2978C75A4(a1))
  {
    sub_2978C765C(a1, (a1 + 32), 1158, v14);
    v4 = v14;
LABEL_3:
    sub_29782963C(v4);
    return sub_2978D58A8(a1);
  }

  v5 = sub_2977FB5F0((a1 + 32));
  sub_2978C6DA8(v13, v5);
  if (!sub_2978C76B4(a1, v13, 1))
  {
    v12 = sub_2978CB708(a1, v13);
    v7 = v12 == 0;
    if (v12)
    {
      sub_2978040A4(a2, &v12);
    }

    while (sub_29784FF04(a1 + 32, 64))
    {
      sub_2978C75A0(a1, 64);
      v12 = sub_2978CB708(a1, v13);
      if (v12)
      {
        sub_2978040A4(a2, &v12);
      }

      else
      {
        v7 = 1;
      }
    }

    if (!sub_297850F64(a1 + 32, 61))
    {
      return sub_2978C75A0(a1, 61);
    }

    if (!v7)
    {
      sub_2978C765C(a1, (a1 + 32), 1013, v11);
      v8 = sub_2977FB5F0((a1 + 32));
      sub_2977FB7B4(v9, ";");
      sub_297852794(v8, v9[0], v9[1], 0, v10);
      sub_297852754(v11, v10);
      sub_29782AC18(v10);
      v4 = v11;
      goto LABEL_3;
    }
  }

  return sub_2978D58A8(a1);
}

unsigned int *sub_2978CB708(uint64_t a1, uint64_t a2)
{
  v4 = sub_297806460(a2);
  if (sub_2978B810C(v4))
  {
    v5 = sub_297806460(a2);
    if (!sub_29784DD58(v5, v6))
    {
      sub_2978C765C(a1, (a1 + 32), 1156, v20);
      sub_29782963C(v20);
    }
  }

  if (sub_297850F64(a1 + 32, 6))
  {
    sub_2978C765C(a1, (a1 + 32), 8, v15);
    sub_297869528(v15, 6u);
    v7 = v15;
LABEL_6:
    sub_29782963C(v7);
    return 0;
  }

  v10 = sub_29784F384(a1 + 32);
  v11 = sub_2978C75A0(a1, 6);
  sub_2978C6E08(&v19);
  if (!sub_29784FF04(a1 + 32, 19))
  {
LABEL_17:
    if (sub_29784FF04(a1 + 32, 19))
    {
      sub_2978C765C(a1, (a1 + 32), 929, v16);
      sub_29782963C(v16);
      while (sub_29784FF04(a1 + 32, 19))
      {
        sub_2978C6E08(v15);
        sub_2978C856C(a1, v15);
      }

      return 0;
    }

    sub_2978C863C(v15, a2, v10, v11, &v19);
    v8 = sub_2978B8748(*(a1 + 8), v15, 1);
    if (!sub_29784FF04(a1 + 32, 62))
    {
      return v8;
    }

    sub_2978C765C(a1, (a1 + 32), 1157, v14);
    v7 = v14;
    goto LABEL_6;
  }

  v12 = sub_297806460(a2);
  if (sub_2978B810C(v12))
  {
    sub_2978C765C(a1, (a1 + 32), 929, v18);
    sub_29782963C(v18);
    while (sub_29784FF04(a1 + 32, 19))
    {
      sub_2978C6E08(v15);
      sub_2978C856C(a1, v15);
    }

    return 0;
  }

  if ((sub_2978C856C(a1, &v19) & 1) == 0)
  {
    if (!sub_29784DD58(&v19, v13))
    {
      sub_2978C765C(a1, (a1 + 32), 1156, v17);
      sub_29782963C(v17);
    }

    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_2978CB944(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = sub_2978CB980(a1, a2, a3, a4);
  sub_29788E11C(v5 + 40);
  sub_29788E11C(a1 + 128);
  return a1;
}

uint64_t sub_2978CB980(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  sub_2978C6E08(a1 + 24);
  return a1;
}

uint64_t sub_2978CB9B4(uint64_t a1)
{
  sub_2977FD134(a1 + 128);
  sub_2977FD134(a1 + 40);
  return a1;
}

uint64_t sub_2978CB9E8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_2978CB9F8(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 8);
  sub_2978CBA48(a1, a3);
  *(a1 + 8) |= a3 & a2;
  return v6;
}

uint64_t sub_2978CBA58(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  sub_2978CBB20(a1 + 1);

  return MEMORY[0x2A1C6FDE8](a1, a2 + 1);
}

uint64_t sub_2978CBB24(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9570] + 16;
  std::string::~string((a1 + 64));

  return MEMORY[0x2A1C6FED0](a1);
}

__n128 sub_2978CBB78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __n128 *a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  result = *a5;
  *(a1 + 24) = *a5;
  return result;
}

uint64_t sub_2978CBB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2978A19CC((a1 + 8));
  sub_2978A19CC((a1 + 12));
  sub_297829180((a1 + 16));
  sub_297829180((a1 + 20));
  sub_2978B80F0(a3);
  *(a1 + 12) = *(a2 + 440);
  *(a1 + 16) = *(a2 + 444);
  *(a1 + 20) = *(a2 + 448);
  sub_2978C3150(a2, a3, (a1 + 8), (a2 + 444), (a2 + 448));
  if (sub_297887D4C((a1 + 8)))
  {
    v6 = sub_297887D70((a1 + 8));
    sub_2978B7170((a2 + 440), v6);
  }

  if (sub_297887D7C((a1 + 8)))
  {
    v7 = sub_297887D88((a1 + 8));
    sub_2978B7188((a2 + 440), v7);
  }

  return a1;
}

uint64_t *sub_2978CBC58(uint64_t *result)
{
  *(*result + 440) = *(result + 6);
  v1 = *result;
  *(v1 + 444) = *(result + 4);
  *(v1 + 448) = *(result + 5);
  return result;
}

uint64_t sub_2978CBC7C(uint64_t result, int a2, char a3)
{
  *result = 0;
  *(result + 8) = a2;
  *(result + 12) = a3;
  return result;
}

uint64_t *sub_2978CBC8C(uint64_t *a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_29780AE44(a1);
  *(v8 + 8) = a2;
  *(v8 + 12) = a3;
  sub_2978C6E50(v8, 1u);
  sub_29783EB08(a1, a4);
  return a1;
}

uint64_t sub_2978CBCE0(uint64_t a1)
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
    return sub_2978CBD28(v5);
  }
}

void *sub_2978CBD28(void *a1)
{
  result = sub_2978CBE28(a1);
  *result = MEMORY[0x29EDC95B8] + 16;
  return result;
}

uint64_t *sub_2978CBD5C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  sub_2978CBE4C((a1 + *(*a1 - 24)), a3);
  return a1;
}

void *sub_2978CBE28(void *result)
{
  *result = MEMORY[0x29EDC95B0] + 16;
  result[6] = 0;
  return result;
}

uint64_t sub_2978CBE4C(std::ios_base *a1, void *a2)
{
  std::ios_base::init(a1, a2);
  a1[1].__vftable = 0;

  return sub_2978CBE88(&a1[1].__fmtflags_);
}

uint64_t sub_2978CBE88(_DWORD *a1)
{
  result = sub_29782AFA4();
  *a1 = result;
  return result;
}

uint64_t sub_2978CBEB0(uint64_t a1, int a2)
{
  v4 = std::streambuf::basic_streambuf();
  *v4 = MEMORY[0x29EDC9570] + 16;
  sub_297802744(v4 + 8);
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  sub_2978CBF0C(a1);
  return a1;
}

uint64_t sub_2978CBF0C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = sub_2978037CC(a1 + 64);
  result = sub_2978032A4(a1 + 64);
  v4 = result;
  v5 = *(a1 + 96);
  if ((v5 & 8) != 0)
  {
    *(a1 + 88) = v2 + result;
    result = sub_2978CC00C(a1, v2, v2, v2 + result);
    v5 = *(a1 + 96);
  }

  if ((v5 & 0x10) != 0)
  {
    *(a1 + 88) = v2 + v4;
    v6 = sub_297818B9C(a1 + 64);
    sub_297803274((a1 + 64), v6);
    v7 = sub_2978032A4(a1 + 64);
    result = sub_2978CC018(a1, v2, v2 + v7);
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v4 >> 31)
      {
        do
        {
          sub_2978CC024(a1, 0x7FFFFFFF);
          v4 -= 0x7FFFFFFFLL;
        }

        while (v4 >> 31);
      }

      else if (!v4)
      {
        return result;
      }

      return sub_2978CC024(a1, v4);
    }
  }

  return result;
}

void *sub_2978CC00C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

void *sub_2978CC018(void *result, uint64_t a2, uint64_t a3)
{
  result[5] = a2;
  result[6] = a2;
  result[7] = a3;
  return result;
}

uint64_t sub_2978CC034(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  return v2;
}

uint64_t sub_2978CC044(int a1)
{
  if ((a1 - 27) > 0x2F)
  {
    return 0;
  }

  else
  {
    return dword_2978FC0D0[(a1 - 27)];
  }
}

uint64_t sub_2978CC094(int a1)
{
  if (a1 == 58)
  {
    v1 = 8;
  }

  else
  {
    v1 = 4;
  }

  if (a1 == 55)
  {
    v2 = 11;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 49)
  {
    v3 = 5;
  }

  else
  {
    v3 = 9;
  }

  if (a1 == 45)
  {
    v4 = 6;
  }

  else
  {
    v4 = v3;
  }

  if (a1 <= 54)
  {
    v2 = v4;
  }

  if (a1 == 38)
  {
    v5 = 10;
  }

  else
  {
    v5 = 3;
  }

  if (a1 == 34)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 29)
  {
    v7 = 2;
  }

  else
  {
    v7 = 7;
  }

  if (a1 <= 33)
  {
    v6 = v7;
  }

  if (a1 <= 44)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

unsigned int *sub_2978CC114(uint64_t a1)
{
  result = sub_2978CC164(a1);
  if (result)
  {

    return sub_2978CC1B4(a1, result, 1);
  }

  return result;
}

unsigned int *sub_2978CC164(uint64_t a1)
{
  result = sub_2978CC34C(a1);
  if (result)
  {

    return sub_2978CC1B4(a1, result, 2);
  }

  return result;
}

uint64_t sub_2978CC1B4(uint64_t a1, unsigned int *a2, int a3)
{
  v6 = sub_2978503FC(a1 + 32);
  if (a2)
  {
    v7 = sub_2978CC044(v6);
    while (v7 >= a3)
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      sub_2978C77C0(a1);
      if (v7 == 3)
      {
        v25 = v27;
        v26 = v28;
        a2 = sub_2978CC954(a1, a2, &v25);
        v8 = sub_2978503FC(a1 + 32);
        v9 = sub_2978CC044(v8);
      }

      else
      {
        v10 = sub_2978CC34C(a1);
        if (!v10)
        {
          return 0;
        }

        v11 = v10;
        v12 = sub_2978503FC(a1 + 32);
        v13 = sub_2978CC044(v12);
        v15 = v7 != 2 || v13 != 2;
        if (v7 < v13 || !v15)
        {
          if (v7 == 2)
          {
            v16 = 2;
          }

          else
          {
            v16 = v7 + 1;
          }

          v17 = sub_2978CC1B4(a1, v11, v16);
          if (!v17)
          {
            return 0;
          }

          v11 = v17;
          v18 = sub_2978503FC(a1 + 32);
          v13 = sub_2978CC044(v18);
        }

        v9 = v13;
        v19 = *(a1 + 8);
        v20 = sub_2977FB5F0(&v27);
        v21 = sub_2978503FC(&v27);
        if (v7 == 2)
        {
          v23 = sub_2978CC094(v21);
          return sub_2978BC760(v19, v20, v23, a2, v11);
        }

        v22 = sub_2978CC06C(v21);
        a2 = sub_2978BC33C(v19, v20, v22, a2, v11);
      }

      v7 = v9;
      if (!a2)
      {
        return a2;
      }
    }
  }

  return a2;
}

uint64_t sub_2978CC34C(uint64_t a1)
{
  v2 = sub_2977FB5F0((a1 + 32));
  sub_2978C6DA8(v50, v2);
  if (sub_297850F64(a1 + 32, 6) && (sub_2978C76B4(a1, v50, 0) & 1) == 0)
  {
    if (!sub_297850F64(a1 + 32, 21))
    {
      v13 = *(a1 + 8);
      sub_2977FB7B4(&v47, &byte_2978FC3E5);
      v14 = sub_2978C1AC4(v13, v50, v47, v48);
      v15 = sub_2977FB5F0(v50);
      v16 = sub_2978CCB78(a1, v14, v15);
      v17 = a1;
      return sub_2978CCC68(v17, v16);
    }

    sub_2978C765C(a1, (a1 + 32), 993, v49);
    v11 = v49;
    goto LABEL_45;
  }

  v3 = sub_2978503FC(a1 + 32);
  if (v3 > 98)
  {
    if (v3 <= 130)
    {
      if (v3 == 99)
      {
        sub_2978C765C(a1, (a1 + 32), 1040, &v47);
        v12 = "'sizeof'";
        goto LABEL_43;
      }

      if (v3 == 105)
      {
        sub_2978C765C(a1, (a1 + 32), 1039, &v47);
        v18 = sub_29783F028(&v47, "'unsigned'");
        v12 = "'uint'";
LABEL_44:
        sub_29783F028(v18, v12);
        v11 = &v47;
        goto LABEL_45;
      }
    }

    else
    {
      if (v3 == 131 || v3 == 145)
      {
        v20 = sub_2978503FC(a1 + 32);
        v21 = *(a1 + 8);
        v22 = sub_2978C77C0(a1);
        result = sub_2978BB160(v21, v20, v22);
        goto LABEL_33;
      }

      if (v3 == 361)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_41;
  }

  if (v3 > 12)
  {
    if (v3 <= 0x3D)
    {
      if (((1 << v3) & 0x1AB00000000) != 0)
      {
        v4 = sub_2978503FC(a1 + 32);
        v5 = sub_2978C77C0(a1);
        v6 = sub_2978CC34C(a1);
        if (!v6)
        {
          v19 = 0;
LABEL_34:
          v17 = a1;
          v16 = v19;
          return sub_2978CCC68(v17, v16);
        }

        v7 = v6;
        v8 = *(a1 + 8);
        v9 = sub_2978CC080(v4);
        result = sub_2978BB898(v8, v5, v9, v7, 0);
LABEL_33:
        v19 = result;
        goto LABEL_34;
      }

      if (((1 << v3) & 0x2000000000100000) != 0)
      {
LABEL_22:
        sub_2978C765C(a1, (a1 + 32), 976, v45);
        v11 = v45;
LABEL_45:
        sub_29782963C(v11);
        return 0;
      }

      if (v3 == 21)
      {
        sub_297829180(&v47);
        sub_2978D58FC(a1, 0x15u, &v47);
        v19 = sub_2978CC114(a1);
        sub_297829180(v44);
        if (!sub_2978C8368(a1, 0x16u, v47, v44))
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    if (v3 == 13)
    {
      sub_2978C765C(a1, (a1 + 32), 1040, &v47);
      v12 = "string literals";
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v3 != 6)
  {
    if (v3 == 8)
    {
      result = sub_2978CD190(a1);
      goto LABEL_33;
    }

    if (v3 == 9)
    {
      sub_2978C765C(a1, (a1 + 32), 1040, &v47);
      v12 = "char constants";
LABEL_43:
      v18 = &v47;
      goto LABEL_44;
    }

LABEL_41:
    sub_2978C765C(a1, (a1 + 32), 976, v46);
    v11 = v46;
    goto LABEL_45;
  }

  v23 = sub_2977FB5F0((a1 + 32));
  v24 = sub_29784F384(a1 + 32);
  sub_2978C75A0(a1, 6);
  if (!sub_297850F64(a1 + 32, 21) || !sub_297850F64(a1 + 32, 19))
  {
    if (sub_29784FF04(a1 + 32, 21))
    {
      sub_2978B84F4(v41, 1, 1, 1);
      v47 = sub_2978BF04C(*(a1 + 8), v24, v23, v41);
      v48 = v25;
      v26 = sub_2977FB5F0(&v47);
      v19 = 0;
      v27 = 2;
      if (v26 > 2)
      {
        if (v26 != 3)
        {
          if (v26 == 4)
          {
            v37 = sub_2977FB7B8(&v47);
            v29 = sub_2978CCF80(a1, v37, v23);
          }

          else
          {
            if (v26 != 5)
            {
              goto LABEL_75;
            }

            v32 = sub_2978B8578(&v47);
            v29 = sub_2978CD068(a1, v32, v23);
          }

          goto LABEL_72;
        }

        sub_2978C765C(a1, (a1 + 32), 982, v43);
        v36 = v43;
LABEL_69:
        sub_29782963C(v36);
        v27 = 1;
        sub_2978CFD74(a1, 61, 1, 1);
        v19 = 0;
        goto LABEL_75;
      }

      if (v26 >= 2)
      {
        if (v26 != 2)
        {
          goto LABEL_75;
        }

        v28 = sub_2978CB514(&v47);
        v29 = sub_2978CCB78(a1, v28, v23);
LABEL_72:
        v19 = v29;
        goto LABEL_75;
      }

      v33 = (a1 + 32);
      v34 = a1;
      v35 = 1185;
LABEL_68:
      sub_2978C765C(v34, v33, v35, v44);
      sub_297869558(v44, v24);
      v36 = v44;
      goto LABEL_69;
    }

    sub_2978B84F4(&v42, 1, 1, 0);
    v47 = sub_2978BF04C(*(a1 + 8), v24, v23, &v42);
    v48 = v30;
    v31 = sub_2977FB5F0(&v47);
    v19 = 0;
    if (v31 <= 2)
    {
      if (v31 >= 2)
      {
        if (v31 == 2)
        {
          sub_2978C6E08(v44);
          if (sub_2978C856C(a1, v44))
          {
            v19 = 0;
LABEL_65:
            v27 = 1;
            goto LABEL_75;
          }

          v38 = *(a1 + 8);
          v39 = sub_2978CB514(&v47);
          sub_2977FB7B4(v41, &byte_2978FC3E5);
          v40 = sub_2978C1780(v38, v44, v39, v41[0], v41[1]);
          v19 = sub_2978CCB78(a1, v40, v23);
        }

LABEL_74:
        v27 = 2;
LABEL_75:
        if (v27 == 2)
        {
          goto LABEL_34;
        }

        return 0;
      }

LABEL_66:
      v33 = (a1 + 32);
      v34 = a1;
      v35 = 1186;
      goto LABEL_68;
    }

    if (v31 != 3)
    {
      if (v31 == 4)
      {
        goto LABEL_66;
      }

      if (v31 != 5)
      {
        goto LABEL_74;
      }
    }

    v19 = sub_2978BAE44(*(a1 + 8), v23, v24);
    if (!v19)
    {
      goto LABEL_65;
    }

    goto LABEL_74;
  }

  result = sub_2978BAE44(*(a1 + 8), v23, v24);
  if (result)
  {
    goto LABEL_33;
  }

  return result;
}

unsigned int *sub_2978CC954(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  result = sub_2978CC114(a1);
  if (result)
  {
    v7 = result;
    sub_297829180(&v24);
    if (sub_29784FF04(a1 + 32, 60))
    {
      v8 = sub_2978C77C0(a1);
    }

    else
    {
      v23 = sub_2977FB5F0((a1 + 32));
      v9 = sub_29781F408(*a1);
      if ((sub_29782D9A0(&v23) || sub_2978CCB60(*a1, v23, &v23)) && (LOBYTE(v21[0]) = 0, v10 = sub_297840FC8(&v23, -1), v11 = sub_297841788(v9, v10, v21), (v21[0] & 1) == 0) && *v11 == 32 && (v12 = sub_297840FC8(&v23, -2), v13 = sub_297841788(v9, v12, v21), (v21[0] & 1) == 0) && *v13 == 32)
      {
        v23 = sub_297840FC8(&v23, -1);
        v14 = ":";
      }

      else
      {
        v14 = ": ";
      }

      sub_2978C765C(a1, (a1 + 32), 8, v22);
      v15 = sub_297869528(v22, 0x3Cu);
      v16 = v23;
      sub_2977FB7B4(v20, v14);
      sub_297852794(v16, v20[0], v20[1], 0, v21);
      sub_297852754(v15, v21);
      sub_29782AC18(v21);
      sub_29782963C(v22);
      sub_2978C765C(a1, a3, 50, v21);
      sub_29783F028(v21, "?");
      sub_29782963C(v21);
      v8 = sub_2977FB5F0((a1 + 32));
    }

    v24 = v8;
    result = sub_2978CC164(a1);
    if (result)
    {
      v17 = result;
      v18 = *(a1 + 8);
      v19 = sub_2977FB5F0(a3);
      return sub_2978BC5A4(v18, v19, v24, a2, v7, v17);
    }
  }

  return result;
}

uint64_t sub_2978CCB78(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  sub_29780B1B8(v15);
  sub_297813788(v14);
  sub_297829180(&v13);
  sub_297829180(&v12);
  if (sub_2978CD5D8(a1, v15, v14, &v13, &v12))
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = v13;
    sub_2978CD694(v11, v15);
    v6 = sub_2978C4EDC(v7, a2, a3, v8, v11[0], v11[1], v12);
  }

  sub_2977FD134(v14);
  sub_2977FD134(v15);
  v9 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_2978CCC68(uint64_t a1, unsigned int *a2)
{
  v2 = a2;
  if (a2)
  {
    HIDWORD(v5) = sub_2978503FC(a1 + 32) - 19;
    LODWORD(v5) = HIDWORD(v5);
    v4 = v5 >> 1;
    if (v4 > 6)
    {
      if (v4 == 7 || v4 == 9)
      {
        v12 = *(a1 + 8);
        v13 = sub_2977FB5F0((a1 + 32));
        v14 = sub_2978503FC(a1 + 32);
        v15 = sub_2978CC080(v14);
        v16 = sub_2978BB898(v12, v13, v15, v2, 1);
        sub_2978C77C0(a1);
        return sub_2978CCC68(a1, v16);
      }
    }

    else
    {
      if (!v4)
      {
        v17 = sub_2978CD4A0(a1);
        sub_297829180(v35);
        v18 = sub_2978CC114(a1);
        if (v18 && (v19 = v18, sub_29784FF04(a1 + 32, 20)))
        {
          LODWORD(v35[0]) = sub_2977FB5F0((a1 + 32));
          v16 = sub_2978BBF5C(*(a1 + 8), v2, v17, v19, v35[0]);
        }

        else
        {
          v16 = 0;
        }

        sub_2978C8368(a1, 0x14u, v17, v35);
        return sub_2978CCC68(a1, v16);
      }

      if (v4 == 3)
      {
        v6 = sub_2978C75A0(a1, 25);
        if (sub_29784FF04(a1 + 32, 3))
        {
          v35[0] = sub_29788C170(v2);
          v7 = sub_2977FB720(v35);
          v8 = sub_2978876EC(v7);
          if (v8)
          {
            v9 = sub_297887A38(v8);
            v10 = sub_297806460(*(a1 + 8));
            sub_2978CD240(v9, v10, a1 + 80);
          }

          else
          {
            v35[0] = sub_29788C170(v2);
            v25 = sub_2977FB720(v35);
            v26 = sub_297887DB4(v25);
            if (v26)
            {
              v27 = sub_2977FB7B8(v26);
              v28 = sub_2978BBBF0(v27 + 16);
              v30 = v29;
              v31 = sub_297806460(*(a1 + 8));
              sub_2978CD3D4(v28, v30, v31, a1 + 80);
            }
          }

          sub_2978C77C0(a1);
          goto LABEL_26;
        }

        if (sub_29784FF04(a1 + 32, 6))
        {
          v20 = sub_29784F384(a1 + 32);
          v21 = sub_2978C77C0(a1);
          v22 = sub_297828314(v20);
          v24 = v23;
          sub_2977FB7B4(v35, "length");
          if (sub_297804D28(v22, v24, v35[0], v35[1]))
          {
            if (sub_297850F64(a1 + 32, 21))
            {
              sub_2978C765C(a1, (a1 + 32), 8, v35);
              sub_297869528(v35, 0x15u);
              sub_29782963C(v35);
              sub_2978CFD74(a1, 22, 0, 0);
              goto LABEL_26;
            }

            v34 = sub_2978C80DC(a1);
            sub_297829180(v35);
            if (sub_2978C8368(a1, 0x16u, v34, v35))
            {
              goto LABEL_26;
            }

            v33 = sub_2978BBC88(*(a1 + 8), v2, v6, v35[0]);
          }

          else
          {
            v33 = sub_2978BB930(*(a1 + 8), v2, v6, v20, v21);
          }

          v16 = v33;
          return sub_2978CCC68(a1, v16);
        }

LABEL_26:
        v16 = 0;
        return sub_2978CCC68(a1, v16);
      }
    }
  }

  return v2;
}

unsigned int *sub_2978CCF80(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  sub_29780B1B8(v14);
  sub_297813788(v13);
  sub_297829180(&v12);
  sub_297829180(&v11);
  if (sub_2978CD5D8(a1, v14, v13, &v12, &v11))
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 8);
    sub_2978CD694(v10, v14);
    v6 = sub_2978BC8AC(v7, a3, a2, v10[0], v10[1], v11);
  }

  sub_2977FD134(v13);
  sub_2977FD134(v14);
  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_2978CD068(uint64_t a1, unsigned int a2, int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  sub_29780B1B8(v16);
  sub_297813788(v15);
  sub_297829180(&v14);
  sub_297829180(&v13);
  if (a2 != 76)
  {
    if (sub_2978CD5D8(a1, v16, v15, &v14, &v13))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = *(a1 + 8);
    v9 = v13;
    sub_2978CD694(v12, v16);
    v7 = sub_2978BD120(v8, a3, v9, a2, v12[0], v12[1]);
    goto LABEL_6;
  }

  sub_2978B65E0(v12, *(a1 + 8));
  v6 = sub_2978CD5D8(a1, v16, v15, &v14, &v13);
  sub_2978B6624(v12);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 0;
LABEL_6:
  sub_2977FD134(v15);
  sub_2977FD134(v16);
  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

_DWORD *sub_2978CD190(uint64_t a1)
{
  sub_297806EC8(v12);
  v2 = sub_297847BE0(a1 + 32);
  sub_297806DA4(v12, v2 + 1);
  v11 = 0;
  v3 = sub_29787BB08(*a1, (a1 + 32), v12, &v11);
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v8 = *(a1 + 8);
    v9 = sub_2978C77C0(a1);
    v5 = sub_2978BB1F0(v8, v6, v7, v9);
  }

  sub_297801F60(v12);
  return v5;
}

uint64_t sub_2978CD240(int a1, uint64_t *a2, uint64_t a3)
{
  sub_297804560(&v13);
  sub_297804560(&v12);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      sub_2977FB7B4(&v11, "xyz");
      v13 = v11;
      v6 = "rgb";
    }

    else
    {
      sub_2977FB7B4(&v11, "xyzw");
      v13 = v11;
      v6 = "rgba";
    }
  }

  else if (a1 == 1)
  {
    sub_2977FB7B4(&v11, "x");
    v13 = v11;
    v6 = "r";
  }

  else
  {
    sub_2977FB7B4(&v11, "xy");
    v13 = v11;
    v6 = "rg";
  }

  sub_2977FB7B4(&v11, v6);
  v12 = v11;
  v7 = 1;
  do
  {
    v8 = v13;
    sub_2977FB7B4(&v11, &byte_2978FC3E5);
    sub_2978CD698(v8, *(&v8 + 1), v7, v11, *(&v11 + 1), a2, a3);
    v9 = v12;
    sub_2977FB7B4(&v11, &byte_2978FC3E5);
    sub_2978CD698(v9, *(&v9 + 1), v7, v11, *(&v11 + 1), a2, a3);
    v7 = (v7 + 1);
  }

  while (v7 <= a1);
  *&v11 = "length()";
  return sub_29781B720(a3, &v11);
}

uint64_t sub_2978CD3D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v6 = sub_2977FB720(v17);
  result = sub_2978130B8(v17);
  if (v6 != result)
  {
    v8 = result;
    do
    {
      v9 = *v6;
      v10 = sub_2978862BC(*v6);
      result = sub_2978862C0(v9);
      for (i = result; v10 != i; result = sub_29781B720(a4, &v15))
      {
        v12 = *v10++;
        v13 = sub_29788709C(v12);
        sub_2978CD79C(&v16, a3, v13, v14);
        v15 = sub_2978CD7A0(&v16);
      }

      ++v6;
    }

    while (v6 != v8);
  }

  return result;
}

uint64_t sub_2978CD4A0(uint64_t a1)
{
  if (sub_29784FF04(a1 + 32, 19))
  {
    v2 = 1;
LABEL_5:
    *(a1 + 64) += v2;
    goto LABEL_6;
  }

  if (*(a1 + 60))
  {
    v2 = -1;
    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 56) = sub_2977FB5F0((a1 + 32));
  sub_29787C4FC(*a1, (a1 + 32));
  return *(a1 + 56);
}

BOOL sub_2978CD50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v11 = sub_2978CC164(a1);
    if (sub_2978CD5D0(*(a1 + 8)))
    {
      v6 = sub_2978CD5D0(*(a1 + 8));
      v7 = sub_2978B6588(v6) == 256;
    }

    else
    {
      v7 = 0;
    }

    v8 = v11 != 0 || v7;
    if (v11 == 0 && !v7)
    {
      break;
    }

    sub_2978040A4(a2, &v11);
    if (sub_297850F64(a1 + 32, 64))
    {
      break;
    }

    v10 = sub_2978C75A0(a1, 64);
    sub_297803988(a3, &v10);
  }

  return !v8;
}

BOOL sub_2978CD5D8(unsigned int *a1, uint64_t a2, uint64_t a3, int *a4, _DWORD *a5)
{
  sub_2978D58FC(a1, 0x15u, a4);
  if (sub_297850F64((a1 + 8), 22) && sub_2978CD50C(a1, a2, a3))
  {
    sub_2978CFD74(a1, 22, 1, 0);
    return 1;
  }

  else
  {
    v11 = *a4;

    return sub_2978C8368(a1, 0x16u, v11, a5);
  }
}

uint64_t sub_2978CD698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v22 = a1;
  v23 = a2;
  v20 = a4;
  v21 = a5;
  if (sub_2977FB7B8(&v20) >= a3)
  {
    sub_2978CD79C(v18, a6, v20, v21);
    v19 = sub_2978CD7A0(v18);
    return sub_29781B720(a7, &v19);
  }

  else
  {
    v10 = sub_2977FB720(&v22);
    result = sub_2977FB728(&v22);
    if (v10 != result)
    {
      v12 = result;
      do
      {
        v13 = *v10++;
        sub_2978CD7F0(v18, v20, v21);
        sub_29784CE18(v18, v13);
        v14 = v22;
        v15 = v23;
        v16 = sub_2978059B8(v18);
        sub_2978CD698(v14, v15, a3, v16, v17, a6, a7);
        result = sub_297801F60(v18);
      }

      while (v10 != v12);
    }
  }

  return result;
}

char *sub_2978CD7A0(void *a1)
{
  if (sub_29783E4C0(a1))
  {
    return &byte_2978FC3E5;
  }

  return sub_297887B84(a1);
}

uint64_t *sub_2978CD7F4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a3;
  v15[1] = a4;
  *a1 = 0;
  sub_2977FB7B4(v14, &byte_2978FC3E5);
  if (!sub_297804D28(a3, a4, v14[0], v14[1]))
  {
    v8 = sub_2977FB7B8(v15);
    *a1 = sub_297803E1C(a2, (v8 + 5), 4uLL);
    **a1 = sub_2977FB7B8(v15);
    v9 = sub_297887BC0(a1);
    v10 = sub_2977FB720(v15);
    v11 = sub_2977FB7B8(v15);
    memcpy(v9, v10, v11);
    v12 = sub_297887BC0(a1);
    *(v12 + sub_2977FB7B8(v15)) = 0;
  }

  return a1;
}

uint64_t sub_2978CD8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB728(v7);
  return sub_2978CD924(a1, v4, v5);
}

uint64_t sub_2978CD924(uint64_t a1, char *a2, char *a3)
{
  v6 = sub_2977FE408();
  sub_2977FD4F8(v6, a2, a3);
  return a1;
}

uint64_t sub_2978CD96C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v14 = *a4;
  v15 = *(a4 + 2);
  sub_29787B54C(v16);
  v5 = sub_2977FB5F0(&v14);
  sub_2978CDAD8(521, v5, v13);
  sub_2978405F8(v16, v13);
  while (sub_297850F64(&v14, 2))
  {
    sub_2978405F8(v16, &v14);
    sub_2978692B0(a2, &v14);
  }

  v6 = sub_2977FB5F0(&v14);
  sub_2978CDAD8(522, v6, v13);
  sub_2978405F8(v16, v13);
  v7 = sub_29783E83C(v16);
  v13[0] = sub_2978CDB3C(v7, a2);
  v13[1] = v8;
  sub_2977FB720(v16);
  sub_2977FB7B8(v16);
  sub_297803A7C(v13);
  sub_297859C14();
  v9 = sub_297803A7C(v13);
  v10 = sub_29783E83C(v16);
  sub_2978727D0(a2, v9, v10, 1, 0);
  result = sub_2977FD134(v16);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *sub_2978CDAD8@<X0>(__int16 a1@<W0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  sub_29784FB00(a3);
  sub_297853ED0(a3);
  sub_297853640(a3, a1);

  return sub_29780819C(a3, a2);
}

uint64_t sub_2978CDB3C(unsigned int a1, uint64_t a2)
{
  v3 = sub_2978CE65C(a2);
  v4 = sub_29781C25C();
  v5 = sub_297803E1C(v3, 24 * a1, v4);
  sub_2978CE664(&v7, v5, a1);
  return v7;
}

uint64_t sub_2978CDBB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_2977FA198(32);
  sub_2978CDBF8(v2);

  return sub_29787ADE0(v1, v2);
}

uint64_t sub_2978CDBFC(uint64_t a1)
{
  sub_2978CDF90(v21, a1);
  sub_2978C75A0(a1, 521);
  v19[1] = a1;
  v20 = a1;
  v18[1] = a1;
  v19[0] = a1;
  v18[0] = a1;
  v2 = sub_29784F384(a1 + 32);
  if (!v2)
  {
    v12 = "pragma";
    goto LABEL_10;
  }

  v3 = v2;
  if (!sub_2978CE00C(v2, "optimize") && !sub_2978CE05C(v3, "debug"))
  {
    if (!sub_2978CE05C(v3, "STDGL"))
    {
      sub_2978C765C(a1, (a1 + 32), 875, v17);
      sub_297869558(v17, v3);
      goto LABEL_19;
    }

    sub_2978C75A0(a1, 6);
    if (sub_297850F64(a1 + 32, 361))
    {
      v13 = 361;
LABEL_22:
      sub_2978CE0B8(v19, v13);
      goto LABEL_23;
    }

    sub_2978C75A0(a1, 361);
    if (sub_297850F64(a1 + 32, 21))
    {
LABEL_21:
      v13 = 21;
      goto LABEL_22;
    }

    sub_2978C77C0(a1);
    if (sub_297850F64(a1 + 32, 6))
    {
      v13 = 6;
      goto LABEL_22;
    }

    v16 = sub_29784F384(a1 + 32);
    if (sub_29787AD84(v16, "all"))
    {
      sub_2978C75A0(a1, 6);
      if (sub_297850F64(a1 + 32, 22))
      {
        v13 = 22;
      }

      else
      {
        sub_2978C77C0(a1);
        if (!sub_297850F64(a1 + 32, 522))
        {
          sub_2978C75A0(a1, 522);
          sub_2978CE16C(*(a1 + 8), 1);
          goto LABEL_23;
        }

        v13 = 2;
      }

      goto LABEL_22;
    }

    v12 = "all";
LABEL_10:
    sub_2977FB7B4(v17, v12);
    sub_2978CDF94(v18, v17[0], v17[1]);
    goto LABEL_23;
  }

  v4 = sub_2978CE00C(v3, "optimize");
  v5 = sub_2978C75A0(a1, 6);
  if (!sub_29784FF04(a1 + 32, 21))
  {
    goto LABEL_21;
  }

  v6 = sub_2978C77C0(a1);
  v7 = sub_29784F384(a1 + 32);
  if (!v7 || (v8 = v7, sub_297850F64(a1 + 32, 6)))
  {
    v9 = (a1 + 32);
    v10 = a1;
    v11 = 639;
LABEL_8:
    sub_2978C765C(v10, v9, v11, v17);
    sub_29785965C(v17, !v4);
LABEL_19:
    sub_29782963C(v17);
    sub_2978CE128(&v20);
    goto LABEL_23;
  }

  if (!sub_29787AD34(v8, "on") && !sub_29787AD84(v8, "off"))
  {
    goto LABEL_25;
  }

  sub_29787AD34(v8, "on");
  sub_2978C75A0(a1, 6);
  if (sub_297850F64(a1 + 32, 22))
  {
    sub_2978C765C(a1, (a1 + 32), 8, v17);
    sub_297869528(v17, 0x16u);
    sub_29782963C(v17);
    sub_2978CFEF4(a1, v6, 50, v17);
    sub_297869528(v17, 0x15u);
    goto LABEL_19;
  }

  sub_2978C77C0(a1);
  if (sub_297850F64(a1 + 32, 522))
  {
LABEL_25:
    v9 = (a1 + 32);
    v10 = a1;
    v11 = 640;
    goto LABEL_8;
  }

  sub_2978C75A0(a1, 522);
  v15 = *(a1 + 8);
  if (v4)
  {
    sub_2978BF638(v15, v5);
  }

  else
  {
    sub_2978BF698(v15, v5);
  }

LABEL_23:
  sub_2978CE174(v21);
  return 0;
}

uint64_t sub_2978CDF94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 1;
  v6 = *a1;
  v7 = sub_297876C1C(*a1);
  sub_2978C765C(v6, v7, 8, v9);
  sub_2978295C0(v9, a2, a3);
  sub_29782963C(v9);
  return sub_2978CE128(v5);
}

BOOL sub_2978CE05C(uint64_t a1, uint64_t a2)
{
  if (sub_297828CD0(a1) != 5)
  {
    return 0;
  }

  v4 = sub_297828CB8(a1);
  return *v4 == *a2 && *(v4 + 4) == *(a2 + 4);
}

uint64_t sub_2978CE0B8(uint64_t *a1, unsigned int a2)
{
  v3 = a1 + 1;
  v4 = *a1;
  v5 = sub_297876C1C(*a1);
  sub_2978C765C(v4, v5, 8, v7);
  sub_297869528(v7, a2);
  sub_29782963C(v7);
  return sub_2978CE128(v3);
}

uint64_t sub_2978CE128(uint64_t *a1)
{
  v1 = *a1;
  sub_2978CE6B4(*a1, 522);

  return sub_2978C75A0(v1, 522);
}

_WORD *sub_2978CE178(uint64_t a1)
{
  sub_2978C75A0(a1, 523);
  v2 = sub_2977FB5F0((a1 + 32));
  v9 = a1;
  v3 = sub_2977FB7B8(a1 + 32);
  v4 = sub_297883C7C(v3);
  if (v4)
  {
    v5 = v4;
    sub_2978C75A0(a1, 8);
    sub_2978CE2A4(*(a1 + 16), v5);
    sub_2978C75A0(a1, 2);
    v6 = *(a1 + 8);

    return sub_2978BF6F8(v6, v5, v2);
  }

  else
  {
    sub_2978CFEF4(a1, v2, 432, v8);
    sub_29785965C(v8, v3);
    sub_29782963C(v8);
    sub_2978CE260(&v9);
    return 0;
  }
}

uint64_t sub_2978CE260(uint64_t *a1)
{
  v1 = *a1;
  sub_2978CE6B4(*a1, 2);

  return sub_2978C75A0(v1, 2);
}

unsigned int *sub_2978CE2B4(uint64_t a1)
{
  v25 = a1;
  sub_2978C75A0(a1, 524);
  v2 = sub_2977FB5F0((a1 + 32));
  v3 = sub_29784F384(a1 + 32);
  v4 = sub_297828314(v3);
  v6 = v5;
  sub_2978CFC00(a1, 6, 8, "extension name", 0);
  v7 = sub_29784F384(a1 + 32);
  v8 = sub_297828314(v7);
  v10 = v9;
  sub_2978CFC00(a1, 6, 8, "extension behavior", 0);
  v11 = sub_2978CE4F4(v8, v10);
  if (!v11)
  {
    sub_2978CFEF4(a1, v2, 430, &v23);
    v15 = v8;
    v16 = v10;
LABEL_8:
    sub_2978295C0(&v23, v15, v16);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = sub_2978805C4(*(a1 + 16), v4, v6);
  if (!sub_29786AC48(v13))
  {
    sub_2978CFEF4(a1, v2, 429, &v23);
    v15 = v4;
    v16 = v6;
    goto LABEL_8;
  }

  v14 = sub_29786AC48(v13);
  if (v12 <= 2 && v14 == 178)
  {
    sub_2978CFEF4(a1, v2, 426, &v23);
    sub_2978563C8(&v23, v12 != 1);
LABEL_9:
    sub_29782963C(&v23);
    sub_2978CE260(&v25);
    return 0;
  }

  if (sub_29786AC48(v13) == 180)
  {
    v22 = a1;
    sub_2977FB7B4(&v23, "centroid");
    sub_2978CE590(&v22, 302, v23, v24);
    sub_2977FB7B4(&v23, "smooth");
    sub_2978CE590(&v22, 423, v23, v24);
    v18 = *a1;
    sub_2977FB7B4(&v23, "fwidth");
    v19 = sub_297869520(v18, v23, v24);
    sub_297828E3C(v19, 0);
  }

  sub_2978CE618(v13, v12);
  sub_2978C75A0(a1, 2);
  v20 = *(a1 + 8);
  v21 = sub_29786AC48(v13);
  return sub_2978BF818(v20, v21, v12, v2);
}

uint64_t sub_2978CE4F4(uint64_t a1, uint64_t a2)
{
  sub_2978102C8(v12, a1, a2);
  v11 = 2;
  v2 = sub_297810504(v12, "enable", &v11);
  v10 = 1;
  v3 = sub_2978102CC(v2, "require", &v10);
  v9 = 4;
  v4 = sub_29781049C(v3, "warn", &v9);
  v8 = 3;
  v5 = sub_2978102CC(v4, "disable", &v8);
  v7 = 0;
  return sub_2978105E0(v5, &v7);
}

uint64_t sub_2978CE590(uint64_t **a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  result = sub_297882A94(a2, (*a1)[2]);
  if ((result & 1) == 0)
  {
    v8 = sub_297869520(*v6, a3, a4);
    result = sub_297871628(v8);
    if (result != 6)
    {

      return sub_2978CE72C(v8);
    }
  }

  return result;
}

void sub_2978CE634()
{
  v0 = sub_2978CE630();

  j__free(v0);
}

void *sub_2978CE668(void *a1)
{
  result = sub_297879FC4(a1);
  *result = &unk_2A1E57E20;
  return result;
}

double sub_2978CE69C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = *(a2 + 60);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 68);
  return result;
}

BOOL sub_2978CE6B4(uint64_t a1, int a2)
{
  for (result = sub_297850F64(a1 + 32, a2); result; result = sub_297850F64(a1 + 32, a2))
  {
    result = sub_2978CE708(a1);
    if (result)
    {
      break;
    }

    sub_2978C84FC(a1);
  }

  return result;
}

double sub_2978CE714(double *a1)
{
  v1 = *a1;
  result = a1[1];
  *(v1 + 60) = result;
  *(v1 + 68) = *(a1 + 4);
  return result;
}

_DWORD *sub_2978CE74C(uint64_t a1)
{
  v2 = sub_2978503FC(a1 + 32);
  if (v2 > 81)
  {
    if (v2 <= 95)
    {
      switch(v2)
      {
        case 'R':
          v6 = sub_2978CEFC0(a1);
          v7 = "do/while";
          goto LABEL_45;
        case 'X':

          return sub_2978CF0B4(a1);
        case 'Z':

          return sub_2978CED30(a1);
        default:
          goto LABEL_54;
      }
    }

    else if (v2 > 107)
    {
      if (v2 != 108)
      {
        if (v2 == 305)
        {
          v6 = sub_2978CF748(a1);
          v7 = "discard";
          goto LABEL_45;
        }

        goto LABEL_54;
      }

      return sub_2978CEF04(a1);
    }

    else
    {
      if (v2 == 96)
      {
        v6 = sub_2978CF6C0(a1);
        v7 = "return";
        goto LABEL_45;
      }

      if (v2 != 102)
      {
        goto LABEL_54;
      }

      return sub_2978CF36C(a1);
    }
  }

  else
  {
    if (v2 > 75)
    {
      if (v2 <= 79)
      {
        if (v2 != 76)
        {
          if (v2 == 77)
          {

            return sub_2978CF494(a1);
          }

          goto LABEL_54;
        }

        v6 = sub_2978CF680(a1);
        v7 = "break";
        goto LABEL_45;
      }

      if (v2 != 80)
      {

        return sub_2978CF578(a1);
      }

      v6 = sub_2978CF640(a1);
      v7 = "continue";
LABEL_45:
      if (sub_29784FF04(a1 + 32, 61))
      {
        sub_2978C75A0(a1, 61);
      }

      else if (v6)
      {
        sub_2978CFC00(a1, 61, 1011, v7, 0);
        sub_2978CFD74(a1, 24, 1, 1);
      }

      return v6;
    }

    if (v2 != 23)
    {
      if (v2 == 24)
      {
        sub_2978C765C(a1, (a1 + 32), 1015, v8);
        sub_29782963C(v8);
        return 0;
      }

      if (v2 == 61)
      {
        v4 = *(a1 + 8);
        v5 = sub_2978C75A0(a1, 61);

        return sub_2978BF8D8(v4, v5);
      }

LABEL_54:

      return sub_2978CEA84(a1);
    }

    return sub_2978CECD4(a1);
  }
}

_DWORD *sub_2978CEA84(uint64_t a1)
{
  v25[7] = *MEMORY[0x29EDCA608];
  if (sub_29784FF04(a1 + 32, 399))
  {
    v2 = *(a1 + 8);
    v25[0] = sub_2978C8754(a1);
    sub_29784CE50(v24, v25);
    v4 = *(&v24[0] + 1);
    v3 = *&v24[0];
    v5 = v2;
    goto LABEL_6;
  }

  if (!sub_29784FF04(a1 + 32, 521))
  {
    sub_29780B1B8(v25);
    if (sub_2978C75A4(a1))
    {
      sub_2978C6F98(a1, v25, 0);
      v8 = *(a1 + 8);
      sub_29780B1E8(v24, v25);
      v10 = *(&v24[0] + 1);
      v9 = *&v24[0];
LABEL_9:
      v11 = sub_2978BF8E4(v8, v9, v10);
LABEL_20:
      v7 = v11;
      goto LABEL_21;
    }

    if (sub_2978CA2AC(a1))
    {
      v12 = sub_2977FB5F0((a1 + 32));
      sub_2978C6DA8(v24, v12);
      if (sub_2978C76B4(a1, v24, 1))
      {
        goto LABEL_16;
      }

      if (!sub_29784FF04(a1 + 32, 21))
      {
        sub_2978C90A4(a1, v25, v24, 0, 0);
        v8 = *(a1 + 8);
        sub_29780B1E8(&v22, v25);
        v9 = v22;
        v10 = v23;
        goto LABEL_9;
      }

      v13 = *(a1 + 8);
      sub_2977FB7B4(&v22, &byte_2978FC3E5);
      v14 = sub_2978C1AC4(v13, v24, v22, v23);
      v15 = sub_2977FB5F0(v24);
      v16 = sub_2978CCB78(a1, v14, v15);
      if (!v16 || (v17 = sub_2978CCC68(a1, v16)) == 0 || (v18 = sub_2978CC1B4(a1, v17, 1)) == 0)
      {
LABEL_16:
        sub_2978D58A8(a1);
        v7 = 0;
LABEL_21:
        sub_2977FD134(v25);
        goto LABEL_22;
      }
    }

    else
    {
      v18 = sub_2978CC114(a1);
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    v19 = v18;
    sub_2978CFC00(a1, 61, 1007, &byte_2978FC3E5, 61);
    v11 = sub_2978BFCE4(*(a1 + 8), v19);
    goto LABEL_20;
  }

  v25[0] = sub_2978CDBFC(a1);
  if (!v25[0])
  {
    v7 = 0;
    goto LABEL_22;
  }

  v6 = *(a1 + 8);
  sub_29784CE50(v24, v25);
  v4 = *(&v24[0] + 1);
  v3 = *&v24[0];
  v5 = v6;
LABEL_6:
  v7 = sub_2978BF8E4(v5, v3, v4);
LABEL_22:
  v20 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sub_2978CECD4(uint64_t *a1)
{
  sub_2978B65DC(v4, a1[1], 8);
  v2 = sub_2978CF788(a1);
  if (!v2)
  {
    sub_2978CFF00(a1);
  }

  sub_2978B6620(v4);
  return v2;
}

_DWORD *sub_2978CED30(uint64_t a1)
{
  v2 = sub_2978C75A0(a1, 90);
  sub_297829180(&v14);
  if (!sub_2978D58FC(a1, 0x15u, &v14))
  {
    v3 = sub_2978CC114(a1);
    if (v3)
    {
      v4 = v3;
      sub_297829180(&v13);
      if (!sub_2978C8368(a1, 0x16u, v14, &v13))
      {
        v5 = sub_2977FB5F0((a1 + 32));
        sub_2978B65DC(&v12, *(a1 + 8), 72);
        if (sub_29784FF04(a1 + 32, 23))
        {
          v6 = sub_2978CF788(a1);
        }

        else
        {
          v6 = sub_2978CE74C(a1);
        }

        v7 = v6;
        if (v6)
        {
          sub_2978B6620(&v12);
          v8 = sub_2977FB5F0((a1 + 32));
          if (!sub_29784FF04(a1 + 32, 84))
          {
            v10 = 0;
            return sub_2978BFDD8(*(a1 + 8), v2, v4, v7, v5, v10, v8);
          }

          sub_2978C75A0(a1, 84);
          sub_2978B65DC(&v12, *(a1 + 8), 72);
          if (sub_29784FF04(a1 + 32, 23))
          {
            v9 = sub_2978CF788(a1);
          }

          else
          {
            v9 = sub_2978CE74C(a1);
          }

          v10 = v9;
          if (v9)
          {
            sub_2978B6620(&v12);
            return sub_2978BFDD8(*(a1 + 8), v2, v4, v7, v5, v10, v8);
          }

          sub_2978CFF00(a1);
        }

        else
        {
          sub_2978CFF00(a1);
          if (sub_29784FF04(a1 + 32, 84))
          {
            sub_2978C77C0(a1);
            sub_2978CFF00(a1);
            sub_2978D58A8(a1);
          }
        }

        sub_2978B6620(&v12);
      }
    }

    else
    {
      sub_2978D58A8(a1);
    }
  }

  return 0;
}

_DWORD *sub_2978CEF04(uint64_t a1)
{
  sub_2978B65DC(v8, *(a1 + 8), 78);
  v2 = sub_2978C75A0(a1, 108);
  v3 = sub_2978CF910(a1, 0);
  if (!v3 || ((v4 = v3, !sub_29784FF04(a1 + 32, 23)) ? (v5 = sub_2978CE74C(a1)) : (v5 = sub_2978CF788(a1)), (v6 = sub_2978BFEC8(*(a1 + 8), v2, v4, v5)) == 0))
  {
    sub_2978CFF00(a1);
    v6 = 0;
  }

  sub_2978B6620(v8);
  return v6;
}

_DWORD *sub_2978CEFC0(uint64_t a1)
{
  v2 = sub_2978C75A0(a1, 82);
  sub_2978B65DC(v8, *(a1 + 8), 78);
  if (sub_29784FF04(a1 + 32, 23))
  {
    v3 = sub_2978CF788(a1);
  }

  else
  {
    v3 = sub_2978CE74C(a1);
  }

  v4 = v3;
  if (!v3)
  {
    sub_2978CFF00(a1);
    sub_2978B6620(v8);
    return 0;
  }

  sub_2978B6620(v8);
  if (sub_297850F64(a1 + 32, 108))
  {
    sub_2978C765C(a1, (a1 + 32), 1022, v7);
    sub_29782963C(v7);
    return 0;
  }

  sub_2978C75A0(a1, 108);
  v6 = sub_2978CF910(a1, 1);
  return sub_2978BFED4(*(a1 + 8), v2, v4, v6);
}

_DWORD *sub_2978CF0B4(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = sub_2978C75A0(a1, 88);
  sub_2978B65DC(v17, *(a1 + 8), 78);
  sub_297829180(&v16);
  if (sub_2978D58FC(a1, 0x15u, &v16))
  {
    goto LABEL_2;
  }

  if (sub_29784FF04(a1 + 32, 61))
  {
    sub_2978C75A0(a1, 61);
    v3 = 0;
  }

  else if (sub_2978CA408(a1))
  {
    sub_29780B1B8(v18);
    sub_2978C6F98(a1, v18, 0);
    v4 = *(a1 + 8);
    sub_29780B1E8(&v14, v18);
    v3 = sub_2978BF8E4(v4, v14, v15);
    sub_2977FD134(v18);
  }

  else
  {
    v5 = sub_2978CC114(a1);
    v3 = sub_2978BFCE4(*(a1 + 8), v5);
    if (sub_2978CFC00(a1, 61, 1014, &byte_2978FC3E5, 0))
    {
      goto LABEL_2;
    }
  }

  if (sub_29784FF04(a1 + 32, 61))
  {
    sub_2978C75A0(a1, 61);
    v6 = 0;
    goto LABEL_13;
  }

  if (sub_2978CA408(a1))
  {
    sub_29780B1B8(v18);
    sub_2978C6F98(a1, v18, 0);
    v7 = *(a1 + 8);
    sub_29780B1E8(&v14, v18);
    v6 = sub_2978BF8E4(v7, v14, v15);
    sub_2977FD134(v18);
    goto LABEL_13;
  }

  v8 = sub_2978CC114(a1);
  v6 = sub_2978BFCE4(*(a1 + 8), v8);
  if (sub_2978CFC00(a1, 61, 1014, &byte_2978FC3E5, 0))
  {
LABEL_2:
    sub_2978CFF00(a1);
    sub_2978CFD74(a1, 22, 0, 0);
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

LABEL_13:
  if (sub_297850F64(a1 + 32, 22))
  {
    v9 = sub_2978CC114(a1);
  }

  else
  {
    v9 = 0;
  }

  sub_297829180(v18);
  if (sub_2978C8368(a1, 0x16u, v16, v18) || (!sub_29784FF04(a1 + 32, 23) ? (v10 = sub_2978CE74C(a1)) : (v10 = sub_2978CF788(a1)), (v11 = sub_2978BFEBC(*(a1 + 8), v2, v3, v6, v9, v10)) == 0))
  {
    sub_2978CFF00(a1);
    goto LABEL_22;
  }

LABEL_23:
  sub_2978B6620(v17);
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_2978CF36C(uint64_t a1)
{
  v2 = sub_2978C75A0(a1, 102);
  sub_297829180(&v11);
  if (sub_2978D58FC(a1, 0x15u, &v11))
  {
    return 0;
  }

  v3 = sub_2978CC114(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_297829180(&v10);
  if (sub_2978C8368(a1, 0x16u, v11, &v10))
  {
    return 0;
  }

  if (sub_297850F64(a1 + 32, 23))
  {
    sub_2978C765C(a1, (a1 + 32), 8, v9);
    sub_297869528(v9, 0x17u);
    sub_29782963C(v9);
    sub_2978D58A8(a1);
    return 0;
  }

  sub_2978B65DC(v9, *(a1 + 8), 34);
  v7 = sub_2978C0040(*(a1 + 8), v2, v4);
  v8 = sub_2978CF788(a1);
  v5 = sub_2978C013C(*(a1 + 8), v7, v8);
  if (!v5)
  {
    sub_2978CFF00(a1);
  }

  sub_2978B6620(v9);
  return v5;
}

_DWORD *sub_2978CF494(uint64_t a1)
{
  v2 = sub_2978C75A0(a1, 77);
  v3 = sub_2978CC114(a1);
  if (sub_297850F64(a1 + 32, 60))
  {
    v4 = sub_2978780B4(*a1, *(a1 + 56), 0);
    sub_2978CFEF4(a1, v4, 9, v9);
    v5 = sub_29783F028(v9, "'case'");
    sub_297869528(v5, 0x3Cu);
    sub_29782963C(v9);
    return 0;
  }

  else
  {
    v7 = sub_2978C75A0(a1, 60);
    v8 = *(a1 + 8);

    return sub_2978C06EC(v8, v2, v7, v3);
  }
}

_DWORD *sub_2978CF578(uint64_t a1)
{
  v2 = sub_2978C75A0(a1, 81);
  if (sub_297850F64(a1 + 32, 60))
  {
    v3 = sub_2978780B4(*a1, *(a1 + 56), 0);
    sub_2978CFEF4(a1, v3, 9, v8);
    v4 = sub_29783F028(v8, "'default'");
    sub_297869528(v4, 0x3Cu);
    sub_29782963C(v8);
    return 0;
  }

  else
  {
    v6 = sub_2978C75A0(a1, 60);
    v7 = *(a1 + 8);

    return sub_2978C088C(v7, v2, v6);
  }
}

_DWORD *sub_2978CF640(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_2978C75A0(a1, 80);

  return sub_2978BFFC0(v1, v2);
}

_DWORD *sub_2978CF680(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_2978C75A0(a1, 76);

  return sub_2978BFF40(v1, v2);
}

_DWORD *sub_2978CF6C0(uint64_t *a1)
{
  v2 = sub_2978C75A0(a1, 96);
  if (sub_297850F64((a1 + 4), 61))
  {
    v3 = sub_2978CC114(a1);
    if (!v3)
    {
      sub_2978CFD74(a1, 61, 0, 1);
      return 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = a1[1];

  return sub_2978C092C(v5, v2, v3);
}

_DWORD *sub_2978CF748(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_2978C75A0(a1, 305);

  return sub_2978C0920(v1, v2);
}

_DWORD *sub_2978CF788(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = sub_2978CF8A4(a1);
  sub_29786EC00(v10);
  while (sub_297850F64(a1 + 32, 24))
  {
    if (!sub_297850F64(a1 + 32, 1))
    {
      break;
    }

    v8[0] = sub_2978CE74C(a1);
    if (v8[0])
    {
      sub_2978040A4(v10, v8);
    }
  }

  sub_297829180(&v9);
  if (sub_2978C8368(a1, 0x18u, v2, &v9))
  {
    v3 = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = v9;
    sub_29780B1E8(v8, v10);
    v3 = sub_2978BFDC8(v4, v2, v5, v8[0], v8[1]);
  }

  sub_2977FD134(v10);
  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t sub_2978CF8A4(uint64_t a1)
{
  if (sub_29784FF04(a1 + 32, 23))
  {
    v2 = 1;
LABEL_5:
    *(a1 + 68) += v2;
    goto LABEL_6;
  }

  if (*(a1 + 60))
  {
    v2 = -1;
    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 56) = sub_2977FB5F0((a1 + 32));
  sub_29787C4FC(*a1, (a1 + 32));
  return *(a1 + 56);
}

_DWORD *sub_2978CF910(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (sub_297850F64(a1 + 32, 21))
  {
    sub_2978C765C(a1, (a1 + 32), 8, v13);
    sub_297869528(v13, 0x15u);
    v4 = v13;
LABEL_3:
    sub_29782963C(v4);
    sub_2978CFD74(a1, 22, 0, 0);
    result = 0;
    goto LABEL_12;
  }

  v6 = sub_2978C80DC(a1);
  if (sub_2978CA408(a1))
  {
    if (a2)
    {
      sub_2978C765C(a1, (a1 + 32), 954, v12);
      v4 = v12;
      goto LABEL_3;
    }

    sub_29780B1B8(v13);
    sub_2978C6F98(a1, v13, 0);
    v9 = *(a1 + 8);
    sub_29780B1E8(v11, v13);
    v8 = sub_2978BF8E4(v9, v11[0], v11[1]);
    sub_2977FD134(v13);
  }

  else
  {
    v7 = sub_2978CC114(a1);
    v8 = sub_2978BFCE4(*(a1 + 8), v7);
  }

  sub_297829180(v13);
  if (sub_2978C8368(a1, 0x16u, v6, v13))
  {
    result = 0;
  }

  else
  {
    result = v8;
  }

LABEL_12:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978CFA7C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2978CF788(a1);
  if (a2)
  {
    v5 = v4;
    if (!v4)
    {
      sub_2978CFF00(a1);
      v6 = a1[1];
      v7 = sub_297847BE0(a2);
      v8 = sub_297847BE0(a2);
      sub_297804560(v10);
      v5 = sub_2978BFDC8(v6, v7, v8, v10[0], v10[1]);
    }

    sub_2978BA364(a1[1], a2, v5);
  }

  return a2;
}

uint64_t sub_2978CFB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = sub_2977FB7B8(a3);
  *(a1 + 24) = sub_2977FD5B0(a2);
  sub_29784FB00(a1 + 32);
  sub_297829180((a1 + 56));
  *(a1 + 65) = 0;
  *(a1 + 60) = 0;
  sub_297809B88((a1 + 80));
  sub_297853ED0(a1 + 32);
  sub_297853640(a1 + 32, 1);
  return a1;
}

uint64_t sub_2978CFBC8(uint64_t *a1)
{
  sub_2978CDBB0(a1);

  return sub_2978C77C0(a1);
}

BOOL sub_2978CFC00(_DWORD *a1, int a2, int a3, uint64_t a4, int a5)
{
  v9 = sub_29784FF04((a1 + 8), a2);
  if (v9)
  {
    sub_2978CFCA4(a1);
  }

  else
  {
    sub_2978C765C(a1, a1 + 8, a3, v11);
    sub_29783F028(v11, a4);
    sub_29782963C(v11);
    if (a5)
    {
      sub_2978CFD74(a1, a5, 1, 0);
    }
  }

  return !v9;
}

uint64_t sub_2978CFCA4(_DWORD *a1)
{
  v2 = sub_2978503FC((a1 + 8));
  if (v2 > 21)
  {
    switch(v2)
    {
      case 22:
        v7 = a1[15];
        if (!v7)
        {
          goto LABEL_20;
        }

        v3 = v7 - 1;
        goto LABEL_14;
      case 23:
        v5 = a1[17] + 1;
        break;
      case 24:
        v4 = a1[17];
        if (!v4)
        {
          goto LABEL_20;
        }

        v5 = v4 - 1;
        break;
      default:
        goto LABEL_20;
    }

    a1[17] = v5;
    goto LABEL_20;
  }

  if (v2 == 19)
  {
    v6 = a1[16] + 1;
LABEL_17:
    a1[16] = v6;
    goto LABEL_20;
  }

  if (v2 != 20)
  {
    if (v2 != 21)
    {
      goto LABEL_20;
    }

    v3 = a1[15] + 1;
LABEL_14:
    a1[15] = v3;
    goto LABEL_20;
  }

  v8 = a1[16];
  if (v8)
  {
    v6 = v8 - 1;
    goto LABEL_17;
  }

LABEL_20:

  return sub_2978C84FC(a1);
}

uint64_t sub_2978CFD74(uint64_t *a1, int a2, char a3, char a4)
{
  while (sub_297850F64((a1 + 4), a2))
  {
    if (!sub_297850F64((a1 + 4), 1))
    {
      break;
    }

    result = sub_2978503FC((a1 + 4));
    if (result > 21)
    {
      if (result > 23)
      {
        if (result == 24)
        {
          sub_2978CF8A4(a1);
          continue;
        }

        if (result == 61 && (a3 & 1) != 0)
        {
          return result;
        }

LABEL_17:
        sub_2978C77C0(a1);
        continue;
      }

      if (result == 22)
      {
        sub_2978C80DC(a1);
        continue;
      }

      sub_2978CF8A4(a1);
      v9 = a1;
      v10 = 24;
    }

    else if (result > 19)
    {
      if (result == 20)
      {
        sub_2978CD4A0(a1);
        continue;
      }

      sub_2978C80DC(a1);
      v9 = a1;
      v10 = 22;
    }

    else
    {
      if (result == 3)
      {
        sub_2978CFF00(a1);
        continue;
      }

      if (result != 19)
      {
        goto LABEL_17;
      }

      sub_2978CD4A0(a1);
      v9 = a1;
      v10 = 20;
    }

    sub_2978CFD74(v9, v10, 0, 0);
  }

  result = sub_29784FF04((a1 + 4), a2);
  if (result && (a4 & 1) == 0)
  {

    return sub_2978C77C0(a1);
  }

  return result;
}

BOOL sub_2978CFF00(uint64_t *a1)
{
  v2 = sub_297850F64((a1 + 4), 3);
  if (!v2)
  {
    v3 = sub_2978BE260(*a1);
    v18 = a1;
    v4 = a1 + 2;
    if (sub_297882A94(75, a1[2]))
    {
      sub_2977FB7B4(&v16, "auto");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(76, *v4))
    {
      sub_2977FB7B4(&v16, "break");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(77, *v4))
    {
      sub_2977FB7B4(&v16, "case");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(78, *v4))
    {
      sub_2977FB7B4(&v16, "char");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(79, *v4))
    {
      sub_2977FB7B4(&v16, "const");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(80, *v4))
    {
      sub_2977FB7B4(&v16, "continue");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(81, *v4))
    {
      sub_2977FB7B4(&v16, "default");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(82, *v4))
    {
      sub_2977FB7B4(&v16, "do");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(83, *v4))
    {
      sub_2977FB7B4(&v16, "double");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(84, *v4))
    {
      sub_2977FB7B4(&v16, "else");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(85, *v4))
    {
      sub_2977FB7B4(&v16, "enum");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(86, *v4))
    {
      sub_2977FB7B4(&v16, "extern");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(87, *v4))
    {
      sub_2977FB7B4(&v16, "float");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(88, *v4))
    {
      sub_2977FB7B4(&v16, "for");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(89, *v4))
    {
      sub_2977FB7B4(&v16, "goto");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(90, *v4))
    {
      sub_2977FB7B4(&v16, "if");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(91, *v4))
    {
      sub_2977FB7B4(&v16, "inline");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(92, *v4))
    {
      sub_2977FB7B4(&v16, "int");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(93, *v4))
    {
      sub_2977FB7B4(&v16, "long");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(94, *v4))
    {
      sub_2977FB7B4(&v16, "register");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(95, *v4))
    {
      sub_2977FB7B4(&v16, "restrict");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(96, *v4))
    {
      sub_2977FB7B4(&v16, "return");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(97, *v4))
    {
      sub_2977FB7B4(&v16, "short");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(98, *v4))
    {
      sub_2977FB7B4(&v16, "signed");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(99, *v4))
    {
      sub_2977FB7B4(&v16, "sizeof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(100, *v4))
    {
      sub_2977FB7B4(&v16, "static");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(101, *v4))
    {
      sub_2977FB7B4(&v16, "struct");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(102, *v4))
    {
      sub_2977FB7B4(&v16, "switch");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(103, *v4))
    {
      sub_2977FB7B4(&v16, "typedef");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(104, *v4))
    {
      sub_2977FB7B4(&v16, "union");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(105, *v4))
    {
      sub_2977FB7B4(&v16, "unsigned");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(106, *v4))
    {
      sub_2977FB7B4(&v16, "void");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(107, *v4))
    {
      sub_2977FB7B4(&v16, "volatile");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(108, *v4))
    {
      sub_2977FB7B4(&v16, "while");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(109, *v4))
    {
      sub_2977FB7B4(&v16, "_Alignas");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(110, *v4))
    {
      sub_2977FB7B4(&v16, "_Alignof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(111, *v4))
    {
      sub_2977FB7B4(&v16, "_Atomic");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(112, *v4))
    {
      sub_2977FB7B4(&v16, "_Bool");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(113, *v4))
    {
      sub_2977FB7B4(&v16, "_Complex");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(114, *v4))
    {
      sub_2977FB7B4(&v16, "_Generic");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(115, *v4))
    {
      sub_2977FB7B4(&v16, "_Imaginary");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(116, *v4))
    {
      sub_2977FB7B4(&v16, "_Noreturn");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(117, *v4))
    {
      sub_2977FB7B4(&v16, "_Static_assert");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(118, *v4))
    {
      sub_2977FB7B4(&v16, "_Thread_local");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(119, *v4))
    {
      sub_2977FB7B4(&v16, "__func__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(120, *v4))
    {
      sub_2977FB7B4(&v16, "__objc_yes");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(121, *v4))
    {
      sub_2977FB7B4(&v16, "__objc_no");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(122, *v4))
    {
      sub_2977FB7B4(&v16, "asm");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(123, *v4))
    {
      sub_2977FB7B4(&v16, "BOOL");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(124, *v4))
    {
      sub_2977FB7B4(&v16, "catch");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(125, *v4))
    {
      sub_2977FB7B4(&v16, "class");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(126, *v4))
    {
      sub_2977FB7B4(&v16, "const_cast");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(127, *v4))
    {
      sub_2977FB7B4(&v16, "delete");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(128, *v4))
    {
      sub_2977FB7B4(&v16, "dynamic_cast");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(129, *v4))
    {
      sub_2977FB7B4(&v16, "explicit");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(130, *v4))
    {
      sub_2977FB7B4(&v16, "export");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(131, *v4))
    {
      sub_2977FB7B4(&v16, "false");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(132, *v4))
    {
      sub_2977FB7B4(&v16, "friend");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(133, *v4))
    {
      sub_2977FB7B4(&v16, "mutable");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(134, *v4))
    {
      sub_2977FB7B4(&v16, "namespace");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(135, *v4))
    {
      sub_2977FB7B4(&v16, "new");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(136, *v4))
    {
      sub_2977FB7B4(&v16, "operator");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(137, *v4))
    {
      sub_2977FB7B4(&v16, "private");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(138, *v4))
    {
      sub_2977FB7B4(&v16, "protected");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(139, *v4))
    {
      sub_2977FB7B4(&v16, "public");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(140, *v4))
    {
      sub_2977FB7B4(&v16, "reinterpret_cast");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(141, *v4))
    {
      sub_2977FB7B4(&v16, "static_cast");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(142, *v4))
    {
      sub_2977FB7B4(&v16, "template");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(143, *v4))
    {
      sub_2977FB7B4(&v16, "this");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(144, *v4))
    {
      sub_2977FB7B4(&v16, "throw");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(145, *v4))
    {
      sub_2977FB7B4(&v16, "true");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(146, *v4))
    {
      sub_2977FB7B4(&v16, "try");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(147, *v4))
    {
      sub_2977FB7B4(&v16, "typename");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(148, *v4))
    {
      sub_2977FB7B4(&v16, "typeid");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(149, *v4))
    {
      sub_2977FB7B4(&v16, "using");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(150, *v4))
    {
      sub_2977FB7B4(&v16, "virtual");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(151, *v4))
    {
      sub_2977FB7B4(&v16, "wchar_t");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(152, *v4))
    {
      sub_2977FB7B4(&v16, "alignas");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(153, *v4))
    {
      sub_2977FB7B4(&v16, "alignof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(154, *v4))
    {
      sub_2977FB7B4(&v16, "char16_t");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(155, *v4))
    {
      sub_2977FB7B4(&v16, "char32_t");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(156, *v4))
    {
      sub_2977FB7B4(&v16, "constexpr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(157, *v4))
    {
      sub_2977FB7B4(&v16, "decltype");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(158, *v4))
    {
      sub_2977FB7B4(&v16, "noexcept");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(159, *v4))
    {
      sub_2977FB7B4(&v16, "nullptr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(160, *v4))
    {
      sub_2977FB7B4(&v16, "static_assert");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(161, *v4))
    {
      sub_2977FB7B4(&v16, "thread_local");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(162, *v4))
    {
      sub_2977FB7B4(&v16, "_Decimal32");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(163, *v4))
    {
      sub_2977FB7B4(&v16, "_Decimal64");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(164, *v4))
    {
      sub_2977FB7B4(&v16, "_Decimal128");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(165, *v4))
    {
      sub_2977FB7B4(&v16, "__null");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(166, *v4))
    {
      sub_2977FB7B4(&v16, "__alignof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(167, *v4))
    {
      sub_2977FB7B4(&v16, "__attribute");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(168, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_choose_expr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(169, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_offsetof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(170, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_types_compatible_p");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(171, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_va_arg");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(172, *v4))
    {
      sub_2977FB7B4(&v16, "__extension__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(173, *v4))
    {
      sub_2977FB7B4(&v16, "__imag");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(174, *v4))
    {
      sub_2977FB7B4(&v16, "__int128");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(175, *v4))
    {
      sub_2977FB7B4(&v16, "__label__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(176, *v4))
    {
      sub_2977FB7B4(&v16, "__real");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(177, *v4))
    {
      sub_2977FB7B4(&v16, "__thread");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(178, *v4))
    {
      sub_2977FB7B4(&v16, "__FUNCTION__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(179, *v4))
    {
      sub_2977FB7B4(&v16, "__PRETTY_FUNCTION__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(180, *v4))
    {
      sub_2977FB7B4(&v16, "typeof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(181, *v4))
    {
      sub_2977FB7B4(&v16, "__FUNCDNAME__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(182, *v4))
    {
      sub_2977FB7B4(&v16, "__FUNCSIG__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(183, *v4))
    {
      sub_2977FB7B4(&v16, "L__FUNCTION__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(184, *v4))
    {
      sub_2977FB7B4(&v16, "__is_interface_class");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(185, *v4))
    {
      sub_2977FB7B4(&v16, "__is_sealed");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(186, *v4))
    {
      sub_2977FB7B4(&v16, "__is_destructible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(187, *v4))
    {
      sub_2977FB7B4(&v16, "__is_nothrow_destructible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(188, *v4))
    {
      sub_2977FB7B4(&v16, "__is_nothrow_assignable");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(189, *v4))
    {
      sub_2977FB7B4(&v16, "__is_constructible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(190, *v4))
    {
      sub_2977FB7B4(&v16, "__is_nothrow_constructible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(191, *v4))
    {
      sub_2977FB7B4(&v16, "__has_nothrow_assign");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(192, *v4))
    {
      sub_2977FB7B4(&v16, "__has_nothrow_move_assign");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(193, *v4))
    {
      sub_2977FB7B4(&v16, "__has_nothrow_copy");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(194, *v4))
    {
      sub_2977FB7B4(&v16, "__has_nothrow_constructor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(195, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_assign");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(196, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_move_assign");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(197, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_copy");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(198, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_constructor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(199, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_move_constructor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(200, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_destructor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(201, *v4))
    {
      sub_2977FB7B4(&v16, "__has_virtual_destructor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(202, *v4))
    {
      sub_2977FB7B4(&v16, "__is_abstract");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(203, *v4))
    {
      sub_2977FB7B4(&v16, "__is_base_of");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(204, *v4))
    {
      sub_2977FB7B4(&v16, "__is_class");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(205, *v4))
    {
      sub_2977FB7B4(&v16, "__is_convertible_to");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(206, *v4))
    {
      sub_2977FB7B4(&v16, "__is_empty");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(207, *v4))
    {
      sub_2977FB7B4(&v16, "__is_enum");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(208, *v4))
    {
      sub_2977FB7B4(&v16, "__is_final");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(209, *v4))
    {
      sub_2977FB7B4(&v16, "__is_literal");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(210, *v4))
    {
      sub_2977FB7B4(&v16, "__is_pod");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(211, *v4))
    {
      sub_2977FB7B4(&v16, "__is_polymorphic");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(212, *v4))
    {
      sub_2977FB7B4(&v16, "__is_trivial");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(213, *v4))
    {
      sub_2977FB7B4(&v16, "__is_union");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(214, *v4))
    {
      sub_2977FB7B4(&v16, "__is_trivially_constructible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(215, *v4))
    {
      sub_2977FB7B4(&v16, "__is_trivially_copyable");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(216, *v4))
    {
      sub_2977FB7B4(&v16, "__is_trivially_assignable");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(217, *v4))
    {
      sub_2977FB7B4(&v16, "__underlying_type");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(218, *v4))
    {
      sub_2977FB7B4(&v16, "__is_lvalue_expr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(219, *v4))
    {
      sub_2977FB7B4(&v16, "__is_rvalue_expr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(220, *v4))
    {
      sub_2977FB7B4(&v16, "__is_arithmetic");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(221, *v4))
    {
      sub_2977FB7B4(&v16, "__is_floating_point");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(222, *v4))
    {
      sub_2977FB7B4(&v16, "__is_integral");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(223, *v4))
    {
      sub_2977FB7B4(&v16, "__is_complete_type");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(224, *v4))
    {
      sub_2977FB7B4(&v16, "__is_void");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(225, *v4))
    {
      sub_2977FB7B4(&v16, "__is_array");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(226, *v4))
    {
      sub_2977FB7B4(&v16, "__is_function");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(227, *v4))
    {
      sub_2977FB7B4(&v16, "__is_reference");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(228, *v4))
    {
      sub_2977FB7B4(&v16, "__is_lvalue_reference");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(229, *v4))
    {
      sub_2977FB7B4(&v16, "__is_rvalue_reference");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(230, *v4))
    {
      sub_2977FB7B4(&v16, "__is_fundamental");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(231, *v4))
    {
      sub_2977FB7B4(&v16, "__is_object");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(232, *v4))
    {
      sub_2977FB7B4(&v16, "__is_scalar");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(233, *v4))
    {
      sub_2977FB7B4(&v16, "__is_compound");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(234, *v4))
    {
      sub_2977FB7B4(&v16, "__is_pointer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(235, *v4))
    {
      sub_2977FB7B4(&v16, "__is_member_object_pointer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(236, *v4))
    {
      sub_2977FB7B4(&v16, "__is_member_function_pointer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(237, *v4))
    {
      sub_2977FB7B4(&v16, "__is_member_pointer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(238, *v4))
    {
      sub_2977FB7B4(&v16, "__is_const");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(239, *v4))
    {
      sub_2977FB7B4(&v16, "__is_volatile");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(240, *v4))
    {
      sub_2977FB7B4(&v16, "__is_standard_layout");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(241, *v4))
    {
      sub_2977FB7B4(&v16, "__is_signed");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(242, *v4))
    {
      sub_2977FB7B4(&v16, "__is_unsigned");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(243, *v4))
    {
      sub_2977FB7B4(&v16, "__is_same");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(244, *v4))
    {
      sub_2977FB7B4(&v16, "__is_convertible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(245, *v4))
    {
      sub_2977FB7B4(&v16, "__array_rank");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(246, *v4))
    {
      sub_2977FB7B4(&v16, "__array_extent");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(247, *v4))
    {
      sub_2977FB7B4(&v16, "__private_extern__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(248, *v4))
    {
      sub_2977FB7B4(&v16, "__module_private__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(249, *v4))
    {
      sub_2977FB7B4(&v16, "__declspec");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(250, *v4))
    {
      sub_2977FB7B4(&v16, "__cdecl");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(251, *v4))
    {
      sub_2977FB7B4(&v16, "__stdcall");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(252, *v4))
    {
      sub_2977FB7B4(&v16, "__fastcall");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(253, *v4))
    {
      sub_2977FB7B4(&v16, "__thiscall");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(254, *v4))
    {
      sub_2977FB7B4(&v16, "__forceinline");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(255, *v4))
    {
      sub_2977FB7B4(&v16, "__unaligned");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(256, *v4))
    {
      sub_2977FB7B4(&v16, "__global");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(257, *v4))
    {
      sub_2977FB7B4(&v16, "__local");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(258, *v4))
    {
      sub_2977FB7B4(&v16, "__constant");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(259, *v4))
    {
      sub_2977FB7B4(&v16, "__private");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(260, *v4))
    {
      sub_2977FB7B4(&v16, "__kernel");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(261, *v4))
    {
      sub_2977FB7B4(&v16, "__read_only");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(262, *v4))
    {
      sub_2977FB7B4(&v16, "__write_only");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(263, *v4))
    {
      sub_2977FB7B4(&v16, "__read_write");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(264, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_astype");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(265, *v4))
    {
      sub_2977FB7B4(&v16, "vec_step");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(266, *v4))
    {
      sub_2977FB7B4(&v16, "__pascal");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(267, *v4))
    {
      sub_2977FB7B4(&v16, "__vector");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(268, *v4))
    {
      sub_2977FB7B4(&v16, "__pixel");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(269, *v4))
    {
      sub_2977FB7B4(&v16, "half");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(270, *v4))
    {
      sub_2977FB7B4(&v16, "__bridge");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(271, *v4))
    {
      sub_2977FB7B4(&v16, "__bridge_transfer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(272, *v4))
    {
      sub_2977FB7B4(&v16, "__bridge_retained");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(273, *v4))
    {
      sub_2977FB7B4(&v16, "__bridge_retain");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(274, *v4))
    {
      sub_2977FB7B4(&v16, "__nonnull");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(275, *v4))
    {
      sub_2977FB7B4(&v16, "__nullable");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(276, *v4))
    {
      sub_2977FB7B4(&v16, "__null_unspecified");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(277, *v4))
    {
      sub_2977FB7B4(&v16, "__ptr64");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(278, *v4))
    {
      sub_2977FB7B4(&v16, "__ptr32");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(279, *v4))
    {
      sub_2977FB7B4(&v16, "__sptr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(280, *v4))
    {
      sub_2977FB7B4(&v16, "__uptr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(281, *v4))
    {
      sub_2977FB7B4(&v16, "__w64");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(282, *v4))
    {
      sub_2977FB7B4(&v16, "__uuidof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(283, *v4))
    {
      sub_2977FB7B4(&v16, "__try");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(284, *v4))
    {
      sub_2977FB7B4(&v16, "__finally");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(285, *v4))
    {
      sub_2977FB7B4(&v16, "__leave");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(286, *v4))
    {
      sub_2977FB7B4(&v16, "uint64_t");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(287, *v4))
    {
      sub_2977FB7B4(&v16, "__if_exists");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(288, *v4))
    {
      sub_2977FB7B4(&v16, "__if_not_exists");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(289, *v4))
    {
      sub_2977FB7B4(&v16, "__single_inheritance");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(290, *v4))
    {
      sub_2977FB7B4(&v16, "__multiple_inheritance");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(291, *v4))
    {
      sub_2977FB7B4(&v16, "__virtual_inheritance");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(292, *v4))
    {
      sub_2977FB7B4(&v16, "__interface");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(293, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_convertvector");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(294, *v4))
    {
      sub_2977FB7B4(&v16, "active");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(295, *v4))
    {
      sub_2977FB7B4(&v16, "atomic_uint");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(296, *v4))
    {
      sub_2977FB7B4(&v16, "attribute");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(297, *v4))
    {
      sub_2977FB7B4(&v16, "bvec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(298, *v4))
    {
      sub_2977FB7B4(&v16, "bvec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(299, *v4))
    {
      sub_2977FB7B4(&v16, "bvec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(300, *v4))
    {
      sub_2977FB7B4(&v16, "buffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(301, *v4))
    {
      sub_2977FB7B4(&v16, "cast");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(302, *v4))
    {
      sub_2977FB7B4(&v16, "centroid");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(303, *v4))
    {
      sub_2977FB7B4(&v16, "coherent");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(304, *v4))
    {
      sub_2977FB7B4(&v16, "common");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(305, *v4))
    {
      sub_2977FB7B4(&v16, "discard");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(306, *v4))
    {
      sub_2977FB7B4(&v16, "dmat2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(307, *v4))
    {
      sub_2977FB7B4(&v16, "dmat2x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(308, *v4))
    {
      sub_2977FB7B4(&v16, "dmat2x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(309, *v4))
    {
      sub_2977FB7B4(&v16, "dmat2x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(310, *v4))
    {
      sub_2977FB7B4(&v16, "dmat3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(311, *v4))
    {
      sub_2977FB7B4(&v16, "dmat3x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(312, *v4))
    {
      sub_2977FB7B4(&v16, "dmat3x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(313, *v4))
    {
      sub_2977FB7B4(&v16, "dmat3x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(314, *v4))
    {
      sub_2977FB7B4(&v16, "dmat4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(315, *v4))
    {
      sub_2977FB7B4(&v16, "dmat4x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(316, *v4))
    {
      sub_2977FB7B4(&v16, "dmat4x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(317, *v4))
    {
      sub_2977FB7B4(&v16, "dmat4x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(318, *v4))
    {
      sub_2977FB7B4(&v16, "dvec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(319, *v4))
    {
      sub_2977FB7B4(&v16, "dvec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(320, *v4))
    {
      sub_2977FB7B4(&v16, "dvec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(321, *v4))
    {
      sub_2977FB7B4(&v16, "filter");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(322, *v4))
    {
      sub_2977FB7B4(&v16, "fixed");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(323, *v4))
    {
      sub_2977FB7B4(&v16, "flat");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(324, *v4))
    {
      sub_2977FB7B4(&v16, "fvec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(325, *v4))
    {
      sub_2977FB7B4(&v16, "fvec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(326, *v4))
    {
      sub_2977FB7B4(&v16, "fvec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(327, *v4))
    {
      sub_2977FB7B4(&v16, "highp");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(328, *v4))
    {
      sub_2977FB7B4(&v16, "hvec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(329, *v4))
    {
      sub_2977FB7B4(&v16, "hvec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(330, *v4))
    {
      sub_2977FB7B4(&v16, "hvec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(331, *v4))
    {
      sub_2977FB7B4(&v16, "iimage1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(332, *v4))
    {
      sub_2977FB7B4(&v16, "iimage1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(333, *v4))
    {
      sub_2977FB7B4(&v16, "iimage2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(334, *v4))
    {
      sub_2977FB7B4(&v16, "iimage2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(335, *v4))
    {
      sub_2977FB7B4(&v16, "iimage2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(336, *v4))
    {
      sub_2977FB7B4(&v16, "iimage2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(337, *v4))
    {
      sub_2977FB7B4(&v16, "iimage2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(338, *v4))
    {
      sub_2977FB7B4(&v16, "iimage3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(339, *v4))
    {
      sub_2977FB7B4(&v16, "iimageBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(340, *v4))
    {
      sub_2977FB7B4(&v16, "iimageCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(341, *v4))
    {
      sub_2977FB7B4(&v16, "iimageCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(342, *v4))
    {
      sub_2977FB7B4(&v16, "image1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(343, *v4))
    {
      sub_2977FB7B4(&v16, "image1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(344, *v4))
    {
      sub_2977FB7B4(&v16, "image1DArrayShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(345, *v4))
    {
      sub_2977FB7B4(&v16, "image1DShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(346, *v4))
    {
      sub_2977FB7B4(&v16, "image2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(347, *v4))
    {
      sub_2977FB7B4(&v16, "image2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(348, *v4))
    {
      sub_2977FB7B4(&v16, "image2DArrayShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(349, *v4))
    {
      sub_2977FB7B4(&v16, "image2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(350, *v4))
    {
      sub_2977FB7B4(&v16, "image2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(351, *v4))
    {
      sub_2977FB7B4(&v16, "image2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(352, *v4))
    {
      sub_2977FB7B4(&v16, "image2DShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(353, *v4))
    {
      sub_2977FB7B4(&v16, "image3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(354, *v4))
    {
      sub_2977FB7B4(&v16, "imageBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(355, *v4))
    {
      sub_2977FB7B4(&v16, "imageCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(356, *v4))
    {
      sub_2977FB7B4(&v16, "imageCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(357, *v4))
    {
      sub_2977FB7B4(&v16, "in");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(358, *v4))
    {
      sub_2977FB7B4(&v16, "inout");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(359, *v4))
    {
      sub_2977FB7B4(&v16, "input");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(360, *v4))
    {
      sub_2977FB7B4(&v16, "interface");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(361, *v4))
    {
      sub_2977FB7B4(&v16, "invariant");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(362, *v4))
    {
      sub_2977FB7B4(&v16, "isampler");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(363, *v4))
    {
      sub_2977FB7B4(&v16, "isampler1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(364, *v4))
    {
      sub_2977FB7B4(&v16, "isampler1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(365, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(366, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(367, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(368, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(369, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(370, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2DShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(371, *v4))
    {
      sub_2977FB7B4(&v16, "isampler3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(372, *v4))
    {
      sub_2977FB7B4(&v16, "isamplerBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(373, *v4))
    {
      sub_2977FB7B4(&v16, "isamplerCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(374, *v4))
    {
      sub_2977FB7B4(&v16, "isamplerCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(375, *v4))
    {
      sub_2977FB7B4(&v16, "ivec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(376, *v4))
    {
      sub_2977FB7B4(&v16, "ivec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(377, *v4))
    {
      sub_2977FB7B4(&v16, "ivec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(378, *v4))
    {
      sub_2977FB7B4(&v16, "layout");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(379, *v4))
    {
      sub_2977FB7B4(&v16, "lowp");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(380, *v4))
    {
      sub_2977FB7B4(&v16, "mat2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(381, *v4))
    {
      sub_2977FB7B4(&v16, "mat2x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(382, *v4))
    {
      sub_2977FB7B4(&v16, "mat2x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(383, *v4))
    {
      sub_2977FB7B4(&v16, "mat2x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(384, *v4))
    {
      sub_2977FB7B4(&v16, "mat3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(385, *v4))
    {
      sub_2977FB7B4(&v16, "mat3x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(386, *v4))
    {
      sub_2977FB7B4(&v16, "mat3x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(387, *v4))
    {
      sub_2977FB7B4(&v16, "mat3x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(388, *v4))
    {
      sub_2977FB7B4(&v16, "mat4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(389, *v4))
    {
      sub_2977FB7B4(&v16, "mat4x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(390, *v4))
    {
      sub_2977FB7B4(&v16, "mat4x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(391, *v4))
    {
      sub_2977FB7B4(&v16, "mat4x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(392, *v4))
    {
      sub_2977FB7B4(&v16, "mediump");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(393, *v4))
    {
      sub_2977FB7B4(&v16, "noinline");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(394, *v4))
    {
      sub_2977FB7B4(&v16, "noperspective");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(395, *v4))
    {
      sub_2977FB7B4(&v16, "out");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(396, *v4))
    {
      sub_2977FB7B4(&v16, "output");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(397, *v4))
    {
      sub_2977FB7B4(&v16, "partition");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(398, *v4))
    {
      sub_2977FB7B4(&v16, "patch");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(399, *v4))
    {
      sub_2977FB7B4(&v16, "precision");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(400, *v4))
    {
      sub_2977FB7B4(&v16, "readonly");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(401, *v4))
    {
      sub_2977FB7B4(&v16, "resource");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(402, *v4))
    {
      sub_2977FB7B4(&v16, "sample");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(403, *v4))
    {
      sub_2977FB7B4(&v16, "sampler");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(404, *v4))
    {
      sub_2977FB7B4(&v16, "sampler1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(405, *v4))
    {
      sub_2977FB7B4(&v16, "sampler1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(406, *v4))
    {
      sub_2977FB7B4(&v16, "sampler1DArrayShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(407, *v4))
    {
      sub_2977FB7B4(&v16, "sampler1DShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(408, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(409, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(410, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DArrayShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(411, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(412, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(413, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(414, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DRectShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(415, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(416, *v4))
    {
      sub_2977FB7B4(&v16, "sampler3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(417, *v4))
    {
      sub_2977FB7B4(&v16, "sampler3DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(418, *v4))
    {
      sub_2977FB7B4(&v16, "samplerBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(419, *v4))
    {
      sub_2977FB7B4(&v16, "samplerCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(420, *v4))
    {
      sub_2977FB7B4(&v16, "samplerCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(421, *v4))
    {
      sub_2977FB7B4(&v16, "samplerCubeArrayShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(422, *v4))
    {
      sub_2977FB7B4(&v16, "samplerCubeShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(423, *v4))
    {
      sub_2977FB7B4(&v16, "smooth");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(424, *v4))
    {
      sub_2977FB7B4(&v16, "subroutine");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(425, *v4))
    {
      sub_2977FB7B4(&v16, "superp");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(426, *v4))
    {
      sub_2977FB7B4(&v16, "uimage1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(427, *v4))
    {
      sub_2977FB7B4(&v16, "uimage1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(428, *v4))
    {
      sub_2977FB7B4(&v16, "uimage2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(429, *v4))
    {
      sub_2977FB7B4(&v16, "uimage2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(430, *v4))
    {
      sub_2977FB7B4(&v16, "uimage2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(431, *v4))
    {
      sub_2977FB7B4(&v16, "uimage2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(432, *v4))
    {
      sub_2977FB7B4(&v16, "uimage2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(433, *v4))
    {
      sub_2977FB7B4(&v16, "uimage3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(434, *v4))
    {
      sub_2977FB7B4(&v16, "uimageBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(435, *v4))
    {
      sub_2977FB7B4(&v16, "uimageCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(436, *v4))
    {
      sub_2977FB7B4(&v16, "uimageCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(437, *v4))
    {
      sub_2977FB7B4(&v16, "uint");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(438, *v4))
    {
      sub_2977FB7B4(&v16, "uniform");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(439, *v4))
    {
      sub_2977FB7B4(&v16, "usampler");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(440, *v4))
    {
      sub_2977FB7B4(&v16, "usampler1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(441, *v4))
    {
      sub_2977FB7B4(&v16, "usampler1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(442, *v4))
    {
      sub_2977FB7B4(&v16, "usampler2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(443, *v4))
    {
      sub_2977FB7B4(&v16, "usampler2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(444, *v4))
    {
      sub_2977FB7B4(&v16, "usampler2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(445, *v4))
    {
      sub_2977FB7B4(&v16, "usampler2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(446, *v4))
    {
      sub_2977FB7B4(&v16, "usampler2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(447, *v4))
    {
      sub_2977FB7B4(&v16, "usampler3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(448, *v4))
    {
      sub_2977FB7B4(&v16, "usamplerBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(449, *v4))
    {
      sub_2977FB7B4(&v16, "usamplerCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(450, *v4))
    {
      sub_2977FB7B4(&v16, "usamplerCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(451, *v4))
    {
      sub_2977FB7B4(&v16, "uvec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(452, *v4))
    {
      sub_2977FB7B4(&v16, "uvec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(453, *v4))
    {
      sub_2977FB7B4(&v16, "uvec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(454, *v4))
    {
      sub_2977FB7B4(&v16, "varying");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(455, *v4))
    {
      sub_2977FB7B4(&v16, "vec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(456, *v4))
    {
      sub_2977FB7B4(&v16, "vec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(457, *v4))
    {
      sub_2977FB7B4(&v16, "vec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(458, *v4))
    {
      sub_2977FB7B4(&v16, "writeonly");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(459, *v4))
    {
      sub_2977FB7B4(&v16, "kernel");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(460, *v4))
    {
      sub_2977FB7B4(&v16, "__attribute__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(461, *v4))
    {
      sub_2977FB7B4(&v16, "sample_f");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(462, *v4))
    {
      sub_2977FB7B4(&v16, "sample_h");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(463, *v4))
    {
      sub_2977FB7B4(&v16, "sampler_f");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(464, *v4))
    {
      sub_2977FB7B4(&v16, "sampler_h");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(465, *v4))
    {
      sub_2977FB7B4(&v16, "hmat2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(466, *v4))
    {
      sub_2977FB7B4(&v16, "hmat2x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(467, *v4))
    {
      sub_2977FB7B4(&v16, "hmat2x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(468, *v4))
    {
      sub_2977FB7B4(&v16, "hmat2x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(469, *v4))
    {
      sub_2977FB7B4(&v16, "hmat3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(470, *v4))
    {
      sub_2977FB7B4(&v16, "hmat3x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(471, *v4))
    {
      sub_2977FB7B4(&v16, "hmat3x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(472, *v4))
    {
      sub_2977FB7B4(&v16, "hmat3x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(473, *v4))
    {
      sub_2977FB7B4(&v16, "hmat4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(474, *v4))
    {
      sub_2977FB7B4(&v16, "hmat4x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(475, *v4))
    {
      sub_2977FB7B4(&v16, "hmat4x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(476, *v4))
    {
      sub_2977FB7B4(&v16, "hmat4x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(477, *v4))
    {
      sub_2977FB7B4(&v16, "float2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(478, *v4))
    {
      sub_2977FB7B4(&v16, "float3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(479, *v4))
    {
      sub_2977FB7B4(&v16, "float4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(480, *v4))
    {
      sub_2977FB7B4(&v16, "half2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(481, *v4))
    {
      sub_2977FB7B4(&v16, "half3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(482, *v4))
    {
      sub_2977FB7B4(&v16, "half4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(483, *v4))
    {
      sub_2977FB7B4(&v16, "float2x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(484, *v4))
    {
      sub_2977FB7B4(&v16, "float3x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(485, *v4))
    {
      sub_2977FB7B4(&v16, "float4x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(486, *v4))
    {
      sub_2977FB7B4(&v16, "half2x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(487, *v4))
    {
      sub_2977FB7B4(&v16, "half3x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(488, *v4))
    {
      sub_2977FB7B4(&v16, "half4x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(489, *v4))
    {
      sub_2977FB7B4(&v16, "hsampler");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(490, *v4))
    {
      sub_2977FB7B4(&v16, "hsampler2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(491, *v4))
    {
      sub_2977FB7B4(&v16, "__sample");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(492, *v4))
    {
      sub_2977FB7B4(&v16, "__color");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(493, *v4))
    {
      sub_2977FB7B4(&v16, "__table");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(494, *v4))
    {
      sub_2977FB7B4(&v16, "__unknown_anytype");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 3u))
    {
      sub_2977FB7B4(&v16, "radians");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 4u))
    {
      sub_2977FB7B4(&v16, "degrees");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 5u))
    {
      sub_2977FB7B4(&v16, "sin");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 6u))
    {
      sub_2977FB7B4(&v16, "cos");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 7u))
    {
      sub_2977FB7B4(&v16, "tan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 8u))
    {
      sub_2977FB7B4(&v16, "asin");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 9u))
    {
      sub_2977FB7B4(&v16, "acos");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xAu))
    {
      sub_2977FB7B4(&v16, "atan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xBu))
    {
      sub_2977FB7B4(&v16, "atan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xCu))
    {
      sub_2977FB7B4(&v16, "sinh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xDu))
    {
      sub_2977FB7B4(&v16, "cosh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xEu))
    {
      sub_2977FB7B4(&v16, "tanh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xFu))
    {
      sub_2977FB7B4(&v16, "asinh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x10u))
    {
      sub_2977FB7B4(&v16, "acosh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x11u))
    {
      sub_2977FB7B4(&v16, "atanh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x12u))
    {
      sub_2977FB7B4(&v16, "pow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x13u))
    {
      sub_2977FB7B4(&v16, "exp");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x14u))
    {
      sub_2977FB7B4(&v16, "log");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x15u))
    {
      sub_2977FB7B4(&v16, "exp2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x16u))
    {
      sub_2977FB7B4(&v16, "log2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x17u))
    {
      sub_2977FB7B4(&v16, "sqrt");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x18u))
    {
      sub_2977FB7B4(&v16, "inversesqrt");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x19u))
    {
      sub_2977FB7B4(&v16, "abs");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Au))
    {
      sub_2977FB7B4(&v16, "sign");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Bu))
    {
      sub_2977FB7B4(&v16, "floor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Cu))
    {
      sub_2977FB7B4(&v16, "trunc");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Du))
    {
      sub_2977FB7B4(&v16, "round");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Eu))
    {
      sub_2977FB7B4(&v16, "roundEven");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Fu))
    {
      sub_2977FB7B4(&v16, "ceil");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x20u))
    {
      sub_2977FB7B4(&v16, "fract");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x21u))
    {
      sub_2977FB7B4(&v16, "mod");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x22u))
    {
      sub_2977FB7B4(&v16, "modf");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x23u))
    {
      sub_2977FB7B4(&v16, "min");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x24u))
    {
      sub_2977FB7B4(&v16, "max");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x25u))
    {
      sub_2977FB7B4(&v16, "clamp");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x26u))
    {
      sub_2977FB7B4(&v16, "mix");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x27u))
    {
      sub_2977FB7B4(&v16, "mix");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x28u))
    {
      sub_2977FB7B4(&v16, "step");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x29u))
    {
      sub_2977FB7B4(&v16, "smoothstep");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Au))
    {
      sub_2977FB7B4(&v16, "isnan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Bu))
    {
      sub_2977FB7B4(&v16, "isinf");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Cu))
    {
      sub_2977FB7B4(&v16, "floatBitsToInt");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Du))
    {
      sub_2977FB7B4(&v16, "floatBitsToUint");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Eu))
    {
      sub_2977FB7B4(&v16, "intBitsToFloat");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Fu))
    {
      sub_2977FB7B4(&v16, "uintBitsToFloat");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x30u))
    {
      sub_2977FB7B4(&v16, "packSnorm2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x31u))
    {
      sub_2977FB7B4(&v16, "unpackSnorm2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x32u))
    {
      sub_2977FB7B4(&v16, "packUnorm2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x33u))
    {
      sub_2977FB7B4(&v16, "unpackUnorm2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x34u))
    {
      sub_2977FB7B4(&v16, "packHalf2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x35u))
    {
      sub_2977FB7B4(&v16, "unpackHalf2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x36u))
    {
      sub_2977FB7B4(&v16, "length");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x37u))
    {
      sub_2977FB7B4(&v16, "distance");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x38u))
    {
      sub_2977FB7B4(&v16, "dot");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x39u))
    {
      sub_2977FB7B4(&v16, "cross");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Au))
    {
      sub_2977FB7B4(&v16, "normalize");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Bu))
    {
      sub_2977FB7B4(&v16, "faceforward");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Cu))
    {
      sub_2977FB7B4(&v16, "reflect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Du))
    {
      sub_2977FB7B4(&v16, "refract");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Eu))
    {
      sub_2977FB7B4(&v16, "matrixCompMult");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Fu))
    {
      sub_2977FB7B4(&v16, "outerProduct");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x40u))
    {
      sub_2977FB7B4(&v16, "transpose");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x41u))
    {
      sub_2977FB7B4(&v16, "determinant");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x42u))
    {
      sub_2977FB7B4(&v16, "inverse");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x43u))
    {
      sub_2977FB7B4(&v16, "lessThan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x44u))
    {
      sub_2977FB7B4(&v16, "lessThanEqual");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x45u))
    {
      sub_2977FB7B4(&v16, "greaterThan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x46u))
    {
      sub_2977FB7B4(&v16, "greaterThanEqual");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x47u))
    {
      sub_2977FB7B4(&v16, "equal");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x48u))
    {
      sub_2977FB7B4(&v16, "notEqual");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x49u))
    {
      sub_2977FB7B4(&v16, "any");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Au))
    {
      sub_2977FB7B4(&v16, "all");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Bu))
    {
      sub_2977FB7B4(&v16, "not");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Cu))
    {
      sub_2977FB7B4(&v16, "$assert");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Du))
    {
      sub_2977FB7B4(&v16, "sample");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Eu))
    {
      sub_2977FB7B4(&v16, "samplerTransform");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Fu))
    {
      sub_2977FB7B4(&v16, "samplerExtent");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x50u))
    {
      sub_2977FB7B4(&v16, "samplerCoord");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x51u))
    {
      sub_2977FB7B4(&v16, "texture2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 1u))
    {
      sub_2977FB7B4(&v16, "ci_outColorF");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 2u))
    {
      sub_2977FB7B4(&v16, "ci_outColorH");
      sub_297828D2C(v3, v16, v17);
    }

    v15 = sub_2978D568C(v3);
    v14 = sub_2978D5690(v3);
    while (sub_29781550C(&v15, &v14))
    {
      v5 = sub_29781AD54(&v15);
      sub_2978B695C(&v16, *(v5 + 8));
      if (!sub_2978B93C8(&v16, v6) || !sub_2978D5694(&v16) || sub_2978B8E90(&v16))
      {
        v7 = sub_297806460(a1[1]);
        v8 = sub_29781AD54(&v15);
        v9 = sub_29781ADE4(v8);
        sub_2978CD79C(&v13, v7, v9, v10);
        v12 = sub_2978CD7A0(&v13);
        sub_29781B720(a1 + 10, &v12);
      }

      sub_2978B69A8(&v16);
      sub_29781AE30(&v15);
    }

    sub_2978C77C0(a1);
  }

  return !v2;
}

uint64_t sub_2978D5644(uint64_t *a1, unsigned int a2)
{
  v3 = *a1;
  v4 = sub_2977FB720(*(*a1 + 8));
  v5 = sub_29788FA28(v4, a2);
  v6 = *(v3 + 16);

  return sub_29788FAD8(v5, v6);
}

uint64_t sub_2978D56B8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v11[0] = v12;
  v11[1] = a1;
  while (!sub_2978D5830(v11))
  {
    if (!sub_297850F64((a1 + 4), 1) || !sub_297850F64((a1 + 4), 0))
    {
      break;
    }

    result = sub_2978503FC((a1 + 4));
    if (result > 21)
    {
      if (result > 23)
      {
        if (result == 24)
        {
          sub_2978CF8A4(a1);
          continue;
        }

        if (result == 61 && (a4 & 1) != 0)
        {
          return result;
        }

LABEL_18:
        sub_2978C77C0(a1);
        continue;
      }

      if (result == 22)
      {
        sub_2978C80DC(a1);
        continue;
      }

      sub_2978CF8A4(a1);
      v9 = a1;
      v10 = 24;
    }

    else if (result > 19)
    {
      if (result == 20)
      {
        sub_2978CD4A0(a1);
        continue;
      }

      sub_2978C80DC(a1);
      v9 = a1;
      v10 = 22;
    }

    else
    {
      if (result == 3)
      {
        sub_2978CFF00(a1);
        continue;
      }

      if (result != 19)
      {
        goto LABEL_18;
      }

      sub_2978CD4A0(a1);
      v9 = a1;
      v10 = 20;
    }

    sub_2978CFD74(v9, v10, 0, 0);
  }

  result = sub_2978D5830(v11);
  if (result)
  {
    if ((a5 & 1) == 0)
    {
      return sub_2978C84FC(a1);
    }
  }

  return result;
}

BOOL sub_2978D5830(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2977FB720(*a1);
  v4 = sub_2978D5B54(*a1);
  v7 = sub_2978503FC(v2 + 32);
  v5 = sub_2978D5AEC(v3, v4, &v7);
  return v5 != sub_2978D5B54(*a1);
}

uint64_t sub_2978D58A8(uint64_t *a1)
{
  result = sub_2978CFF00(a1);
  if ((result & 1) == 0)
  {

    return sub_2978CFD74(a1, 61, 0, 0);
  }

  return result;
}

BOOL sub_2978D58FC(unsigned int *a1, unsigned int a2, _DWORD *a3)
{
  v6 = sub_2978503FC((a1 + 8));
  if (v6 == a2)
  {
    if (a2 == 19)
    {
      ++a1[16];
    }

    else if (a2 == 21)
    {
      ++a1[15];
    }

    else
    {
      ++a1[17];
    }

    *a3 = sub_2978C77C0(a1);
  }

  else
  {
    sub_2978C765C(a1, a1 + 8, 8, v8);
    sub_297869528(v8, a2);
    sub_29782963C(v8);
  }

  return v6 != a2;
}

uint64_t sub_2978D59C8(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  v8 = word_2978FC274[a2 - 20];
  sub_2978C765C(a1, (a1 + 32), 8, v10);
  sub_297869528(v10, a2);
  sub_29782963C(v10);
  sub_2978CFEF4(a1, a3, 50, v10);
  sub_297869528(v10, v8);
  sub_29782963C(v10);
  *a4 = sub_2977FB5F0((a1 + 32));
  sub_2978CFD74(a1, a2, 0, 0);
  result = sub_2978503FC(a1 + 32);
  if (result == a2)
  {
    *a4 = sub_2977FB5F0((a1 + 32));
    return sub_2978C77C0(a1);
  }

  return result;
}

BOOL sub_2978D5AB0(uint64_t a1)
{
  for (result = sub_2978CE708(a1); !result; result = sub_2978CE708(a1))
  {
    sub_2978C6F10(a1);
  }

  return result;
}

uint64_t sub_2978D5AEC(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v6 = j_j_nullsub_1(a1, a2);
  v8 = j_j_nullsub_1(a2, v7);
  v9 = sub_2978D5B60(v6, v8, a3, &v11);
  return sub_2977FD98C(a1, v9);
}

uint64_t sub_2978D5B60(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  for (i = a1; i != a2; i += 2)
  {
    if (*sub_297813268(a4, i) == *a3)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2978D5BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  sub_29783DC08(a1 + 16, 0);
  sub_297817C28((a1 + 40));
  sub_29786EC00(a1 + 176);
  sub_29780AE44(a1 + 456);
  sub_29788E11C(a1 + 464);
  *(a1 + 552) = 0;
  *(a1 + 560) = 0u;
  sub_297804638(a1 + 576, "main");
  sub_297802744(a1 + 600);
  *(a1 + 624) = 0;
  *(a1 + 628) = 0;
  sub_2978EF4A0(a2, a3, 0, &v7);
  sub_2978D5C8C((a1 + 456), &v7);
  sub_2978D5CE4(&v7);
  return a1;
}

uint64_t *sub_2978D5C8C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_2978058AC(a2);
  sub_2978D87E8(a1, v4);
  v6 = nullsub_1(a2, v5);
  j_nullsub_1(&v8, v6);
  return a1;
}

uint64_t sub_2978D5CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v122 = *MEMORY[0x29EDCA608];
  v10 = sub_2977FB720(a1 + 456);
  v11 = sub_2978D65BC(v10);
  sub_2978D65C4(v118, v11);
  v12 = sub_2977FB720(a1 + 456);
  v13 = sub_2978D65C8(v12);
  sub_297829180(&v117);
  v109 = sub_29781F408(v13);
  sub_2978D65D0(a2, a5, v116);
  sub_2978D6614(v115);
  if (!sub_2978D6658(v116, v115))
  {
LABEL_65:
    sub_2978D6C90(v115);
    sub_2978D6C90(v116);
    result = 1;
    goto LABEL_68;
  }

  while (1)
  {
    sub_297806EC8(v114);
    v14 = sub_2978D66B0(v116);
    v15 = sub_2978D6674(v14);
    v110[0] = v15;
    if (v15)
    {
      if (sub_29783CFFC(v15))
      {
        goto LABEL_6;
      }

      v120 = sub_297805510(v110[0]);
      v16 = sub_297896C10(a1 + 16, &v120);
      v17 = v110[0];
      if (v16)
      {
        v120 = sub_297805510(v110[0]);
        v18 = sub_2978D66D0(a1 + 16, &v120);
        sub_29785BC50(v17, *v18);
LABEL_6:
        v19 = 4;
        goto LABEL_7;
      }

      v31 = "filter";
      if (sub_2978D66EC(v110[0]))
      {
        v32 = v110[0];
        sub_2978D66F8(v110[0], &v120);
        sub_2978D67BC(v32, &v111);
        while (sub_2978D6840(&v120, &v111))
        {
          sub_2978D685C(&v120);
          sub_2978D68A0(&v120, v33);
        }

        v31 = "coordinate-transform";
      }

      if (sub_2978D6914(v110[0]))
      {
        v34 = "sample-with-transform";
      }

      else
      {
        v34 = v31;
      }

      v35 = sub_297805510(v110[0]);
      sub_2977FB7B4(&v120, v35);
      sub_2977FB7B4(&v111, v34);
      v36 = sub_297804A04(v120, v121, v111, v112);
      sub_297829180(&v120);
      v37 = sub_29787BEA0(v109, v36, 0, 0, 0, v120);
      sub_29787229C(v13, v37, 0, v117);
      v38 = sub_2978D6920(a4);
      v39 = sub_2977FB720(a1 + 456);
      v40 = sub_2978D6928(v39);
      (*(*v38 + 24))(v38, v40, v13);
      sub_2978D6930(a3);
      sub_29780B1B8(&v120);
      v41 = 0;
      if (!sub_2978CE708(a3))
      {
        v41 = 0;
        do
        {
          while (1)
          {
            v62 = sub_297876C1C(a3);
            if (!sub_29784FF04(v62, 79))
            {
              break;
            }

            sub_2978C6F10(a3);
            if (sub_2978CE708(a3))
            {
              goto LABEL_21;
            }
          }

          v111 = &v120;
          v112 = v13;
          v113 = v110;
          sub_2978D6938(v119, &v111);
          v41 = sub_2978C72F4(a3, v119);
          sub_2978D693C(v119);
          if (!sub_297806904(&v120))
          {
            v63 = sub_29783D2C4(&v120);
            sub_2978B695C(&v111, *v63);
            v64 = sub_297806460(v11);
            sub_2978BDF3C(&v111, v41, v64);
            sub_2978B69A8(&v111);
          }
        }

        while (!sub_2978CE708(a3));
      }

LABEL_21:
      v42 = sub_2977FB720(&v120);
      v43 = sub_2977FB7B8(&v120);
      while (v42 != v43)
      {
        v44 = *v42++;
        sub_2978B695C(&v111, v44);
        sub_2978BE050(&v111);
        sub_2978B69A8(&v111);
      }

      if (v41 && sub_2978CE708(a3))
      {
        v45 = v110[0];
        v46 = sub_29781BF50(v41);
        sub_29785BC50(v45, v46);
        v47 = sub_29783CFFC(v110[0]);
        v111 = sub_297805510(v110[0]);
        *sub_2978D66D0(a1 + 16, &v111) = v47;
        sub_29787BF14(v13);
        v48 = sub_2978D6920(a4);
        (*(*v48 + 32))(v48);
        v19 = 4;
      }

      else
      {
        sub_2978B677C(v11, v117, 2331, &v111);
        v61 = sub_297805510(v110[0]);
        sub_29783F028(&v111, v61);
        sub_29782963C(&v111);
        v19 = 1;
      }

      sub_2977FD134(&v120);
      goto LABEL_7;
    }

    v120 = sub_2978D66B0(v116);
    if (sub_2978D6940(&v120, v20))
    {
      v21 = sub_2978D6944(v116);
      v23 = sub_2978D6948(v21, v22);
      sub_2978D5CEC(a1, v23, a3, a4, a5);
LABEL_56:
      sub_297801F60(v114);
      goto LABEL_57;
    }

    v24 = sub_2978D66B0(v116);
    v26 = sub_2978D697C(v24, v25);
    if (v26)
    {
      v27 = v26;
      sub_2977FB7B4(&v120, "_dc");
      v28 = sub_2978D69B8(v118, v120, v121);
      v29 = sub_29781BF50(v28);
      v30 = v27;
LABEL_55:
      sub_2977FE390(v30, v29);
      goto LABEL_56;
    }

    v49 = sub_2978D66B0(v116);
    v50 = sub_2978D69F4(v49);
    if (v50)
    {
      v51 = v50;
      sub_2978036E0(&v111, "c");
      v52 = sub_2978D6A30(v51);
      sub_2978B5D7C(v110, v52);
      sub_297807128(&v111, v110, &v120);
      v53 = sub_297812A04(&v120, v114);
      v55 = v54;
      v56 = sub_2978D6A38(v51);
      v57 = sub_29780C788(v51);
      v59 = sub_2978D6A44(v118, v57, v58);
      v60 = sub_2978D6A54(v118, v53, v55, v56, v59, 0, 2);
      if (!v60)
      {
        goto LABEL_66;
      }

      v29 = v60;
      v30 = v51;
      goto LABEL_55;
    }

    v65 = sub_2978D66B0(v116);
    v67 = sub_2978D6AB4(v65, v66);
    if (v67)
    {
      v68 = v67;
      if (sub_2978D66EC(v67))
      {
        v69 = "_t";
      }

      else
      {
        v69 = "_u";
      }

      sub_2978036E0(&v111, v69);
      v70 = sub_2978D6A30(v68);
      sub_2978B5D7C(v110, v70);
      sub_297807128(&v111, v110, &v120);
      v71 = sub_297812A04(&v120, v114);
      v73 = v72;
      v74 = sub_2978D6BAC(v68);
      v75 = sub_2978D6AF0(v118, v71, v73, v74, 3, 7);
      if (!v75)
      {
        goto LABEL_66;
      }

      v76 = v75;
LABEL_53:
      if (!sub_2978BF928(v11, v76))
      {
        goto LABEL_66;
      }

      v30 = v68;
      v29 = v76;
      goto LABEL_55;
    }

    v77 = sub_2978D66B0(v116);
    v79 = sub_2978D6BB8(v77, v78);
    if (v79)
    {
      break;
    }

    v87 = sub_2978D66B0(v116);
    v89 = sub_2978D6C00(v87, v88);
    if (v89)
    {
      v90 = v89;
      if (sub_2978D6BF4(v89))
      {
        sub_2978036E0(&v111, "_i");
        v91 = sub_2978D6A30(v90);
        sub_2978B5D7C(v110, v91);
        sub_297807128(&v111, v110, &v120);
        v92 = sub_297812A04(&v120, v114);
        v94 = v93;
        v95 = v92;
        v96 = v94;
        v97 = 44;
      }

      else
      {
        sub_2978036E0(&v111, "_i");
        v102 = sub_2978D6A30(v90);
        sub_2978B5D7C(v110, v102);
        sub_297807128(&v111, v110, &v120);
        v103 = sub_297812A04(&v120, v114);
        v105 = v104;
        v95 = v103;
        v96 = v105;
        v97 = 43;
      }

      v106 = sub_2978D6AF0(v118, v95, v96, v97, 1, 7);
      if (v106 && sub_2978BF928(v11, v106))
      {
        sub_2977FE390(v90, v106);
        goto LABEL_6;
      }

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

LABEL_7:
    sub_297801F60(v114);
    if (v19 != 4)
    {
      goto LABEL_67;
    }

LABEL_57:
    sub_2978D6C3C(v116);
    if ((sub_2978D6658(v116, v115) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v68 = v79;
  if (sub_2978D6BF4(v79))
  {
    sub_2978036E0(&v111, "_s");
    v80 = sub_2978D6A30(v68);
    sub_2978B5D7C(v110, v80);
    sub_297807128(&v111, v110, &v120);
    v81 = sub_297812A04(&v120, v114);
    v83 = v82;
    v84 = v81;
    v85 = v83;
    v86 = 42;
  }

  else
  {
    sub_2978036E0(&v111, "_s");
    v98 = sub_2978D6A30(v68);
    sub_2978B5D7C(v110, v98);
    sub_297807128(&v111, v110, &v120);
    v99 = sub_297812A04(&v120, v114);
    v101 = v100;
    v84 = v99;
    v85 = v101;
    v86 = 41;
  }

  v76 = sub_2978D6AF0(v118, v84, v85, v86, 0, 7);
  if (v76)
  {
    goto LABEL_53;
  }

LABEL_66:
  sub_297801F60(v114);
LABEL_67:
  sub_2978D6C90(v115);
  sub_2978D6C90(v116);
  result = 0;
LABEL_68:
  v108 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978D65D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2978D8830(a1, a2, v5);
  sub_2978D8874(a3, v5);
  return sub_2978D8588(v5);
}

uint64_t sub_2978D6614@<X0>(uint64_t a1@<X8>)
{
  sub_2978D90DC(v3);
  sub_2978D8874(a1, v3);
  return sub_2978D8588(v3);
}

uint64_t sub_2978D6674(uint64_t a1)
{
  v2 = a1;
  if (sub_2978D8750(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

void *sub_2978D66F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2978D6674(a1);
  if (v4)
  {
    v6 = v4;
    v7 = sub_297806460(v4);
    v8 = sub_2978B6CB0(v7);

    return sub_2978D84D4(a2, v6, v8);
  }

  else
  {
    v10 = sub_2978D76E4(a1, v5);
    if (v10)
    {
      v11 = v10;
      v12 = sub_2977FD5B0(v10);

      return sub_2978D84D8(a2, v11, v12);
    }

    else
    {

      return sub_2978D84DC(a2, a1);
    }
  }
}

void *sub_2978D67BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2978D6674(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_297806460(v4);
    v7 = sub_2978B6D10(v6);

    return sub_2978D84D4(a2, v5, v7);
  }

  else
  {

    return sub_2978D84DC(a2, a1);
  }
}

uint64_t sub_2978D685C(uint64_t a1)
{
  if (sub_29783E2B8((a1 + 8)))
  {
    v3 = j_j_nullsub_1(a1 + 8, v2);
  }

  else
  {
    v3 = sub_29788AA04((a1 + 8), v2);
  }

  return *v3;
}

uint64_t *sub_2978D68A0(uint64_t *a1, uint64_t a2)
{
  if (!sub_2978B78A0(a1 + 1, a2))
  {
    if (sub_2978D6674(*a1))
    {
      v5 = sub_29788AA04(a1 + 1, v3) + 8;
      sub_2978BD908(a1 + 1, &v5);
    }

    else
    {
      sub_2978B47C8(&v5);
      a1[1] = v5;
    }
  }

  return a1;
}

uint64_t sub_2978D6948(uint64_t a1, uint64_t a2)
{
  result = sub_2978D76E4(a1, a2);
  if (result)
  {

    return sub_29783CFFC(result);
  }

  return result;
}

uint64_t sub_2978D697C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_2978D76E0(&v3, a2))
  {
    return sub_29781BF50(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978D69B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2978D74F0(a1, a2, a3);

  return sub_2978D856C(a1, v4);
}

uint64_t sub_2978D69F4(uint64_t a1)
{
  v2 = a1;
  if (sub_2978D9720(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978D6A54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int *a5, char a6, char a7)
{
  v9 = sub_2978D6AF0(a1, a2, a3, a4, a6, a7);
  v10 = sub_2978D8574(a1, v9);
  sub_2978B95FC(*a1, v10, a5, *(a1 + 8));
  return v10;
}

uint64_t sub_2978D6AB4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_2978D76DC(&v3, a2))
  {
    return sub_29781BF50(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978D6AF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  sub_2978C1AD4(v16);
  sub_2978CA54C(v16, a5);
  sub_2978C84CC(v16, a4);
  sub_2978C8430(v16, *(a1 + 8), a6);
  v12 = sub_2978D74F0(a1, a2, a3);
  sub_2978C8538(v15, v16, v12, *(a1 + 8));
  v13 = sub_2978B8748(*a1, v15, 1);
  return sub_2978D8574(a1, v13);
}

uint64_t sub_2978D6BB8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_2978D76D4(&v3, a2))
  {
    return sub_29781BF50(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978D6C00(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_2978D76D8(&v3, a2))
  {
    return sub_29781BF50(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_2978D6C3C(uint64_t *a1)
{
  v2 = sub_297829740((a1 + 1));
  nullsub_1(a1, *v2);
  sub_2978D9324(a1 + 1);
  if (!sub_297806904(a1 + 1))
  {
    sub_2978D8928(a1);
  }

  return a1;
}

uint64_t sub_2978D6C94(uint64_t a1)
{
  sub_297829180(&v26);
  v2 = sub_2977FB720(a1 + 456);
  v3 = sub_2978EE93C(v2);
  v4 = sub_2977FB720(a1 + 456);
  v5 = sub_2978D65C8(v4);
  v6 = sub_2977FB720(a1 + 456);
  v7 = sub_2978D65BC(v6);
  sub_2978D65C4(v25, v7);
  v8 = sub_2977FB720(a1 + 456);
  v9 = sub_29787CC6C(v8);
  v10 = sub_29781F408(v5);
  sub_2978B6A00(v7);
  sub_2978D6F10(v25, 3, 3);
  sub_2977FB7B4(&v22, "_dc");
  sub_2978D6F88(v25, v22, v23, 8, 3, 0);
  sub_2977FB7B4(&v22, "p0");
  sub_2978D6F88(v25, v22, v23, 8, 3, 8);
  v11 = sub_2977FB720(a1 + 464);
  v12 = sub_2977FB7B8(a1 + 464);
  if (v11 != v12)
  {
    v13 = v12;
    do
    {
      sub_2977FB7B4(&v22, *v11);
      sub_2977FB7B4(v24, "lib");
      v14 = sub_297804A04(v22, v23, v24[0], v24[1]);
      sub_297829180(&v22);
      v15 = sub_29787BEA0(v10, v14, 0, 0, 0, v22);
      sub_29787229C(v5, v15, 0, v26);
      v16 = sub_2978D6920(v3);
      v17 = sub_2977FB720(a1 + 456);
      v18 = sub_2978D6928(v17);
      (*(*v16 + 24))(v16, v18, v5);
      sub_2978D6930(v9);
      while (!sub_2978CE708(v9))
      {
        sub_2978C6F10(v9);
      }

      ++v11;
    }

    while (v11 != v13);
  }

  sub_29788E120(&v22);
  v19 = sub_2978D5CEC(a1, *a1, v9, v3, &v22);
  v20 = sub_2978D6920(v3);
  (*(*v20 + 40))(v20);
  *(a1 + 624) = v19 ^ 1;
  sub_29787B7C8(&v22);
  return v19;
}

_DWORD *sub_2978D6F10(uint64_t a1, char a2, char a3)
{
  sub_2978C1AD4(v9);
  sub_2978CA54C(v9, a2);
  sub_2978C84CC(v9, a3);
  v6 = *a1;
  v7 = sub_2978BA59C(*a1, v9, *(a1 + 8));
  return sub_2978BF928(v6, v7);
}

_DWORD *sub_2978D6F88(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v6 = *a1;
  v7 = sub_2978D6AF0(a1, a2, a3, a4, a5, a6);

  return sub_2978BF928(v6, v7);
}

BOOL sub_2978D6FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2977FB720(a1 + 456);
  v9 = sub_2978D65BC(v8);
  sub_2978D65C4(v65, v9);
  sub_297829180(&v64);
  sub_2978D65D0(a2, a4, v63);
  sub_2978D6614(v62);
  if (sub_2978D6658(v63, v62))
  {
    while (1)
    {
      sub_297806EC8(v61);
      v10 = sub_2978D66B0(v63);
      v11 = sub_2978D6674(v10);
      if (v11)
      {
        break;
      }

      v59 = sub_2978D66B0(v63);
      if ((sub_2978D76D4(&v59, v33) & 1) == 0)
      {
        v59 = sub_2978D66B0(v63);
        if ((sub_2978D76D8(&v59, v34) & 1) == 0)
        {
          v35 = sub_2978D66B0(v63);
          v36 = sub_2978D69F4(v35);
          if (v36)
          {
            v58[0] = sub_2977FB720(v36);
            sub_29784CE50(&v59, v58);
            v59 = sub_2978BF8E4(v9, v59, v60);
            if (v59)
            {
              sub_2978040A4(a3, &v59);
              goto LABEL_14;
            }

            goto LABEL_32;
          }

          v59 = sub_2978D66B0(v63);
          if ((sub_2978D76DC(&v59, v37) & 1) == 0)
          {
            v59 = sub_2978D66B0(v63);
            if ((sub_2978D76E0(&v59, v38) & 1) == 0)
            {
              v39 = sub_2978D66B0(v63);
              v32 = sub_2978D76E4(v39, v40);
              if (!v32)
              {
                goto LABEL_33;
              }

              sub_2978036E0(v58, "_pos_");
              v41 = sub_2978D74AC(v32);
              sub_2978B5D7C(v57, v41);
              sub_297807128(v58, v57, &v59);
              v42 = sub_297812A04(&v59, v61);
              v44 = v43;
              sub_2977FB7B4(&v59, "_dc");
              v45 = sub_2978D7720(v65, v42, v44, 8, v59, v60, 0, 0);
              if (v45)
              {
                v58[0] = v45;
                sub_29784CE50(&v59, v58);
                v58[0] = sub_2978BF8E4(v9, v59, v60);
                if (v58[0])
                {
                  sub_2978040A4(a3, v58);
                  sub_2977FB7B4(&v59, "_dc");
                  v46 = sub_2977FD5B0(v32);
                  v47 = sub_2978D7810(v46);
                  v49 = sub_2978D779C(v65, v59, v60, v47, v48, 4);
                  if (v49)
                  {
                    v57[0] = sub_2978BFCE4(v9, v49);
                    if (v57[0])
                    {
                      sub_2978040A4(a3, v57);
                      v50 = sub_29783CFFC(v32);
                      if (sub_2978D6FC4(a1, v50, a3, a4))
                      {
                        sub_2977FB7B4(&v59, "_dc");
                        v51 = sub_2978D779C(v65, v59, v60, v42, v44, 4);
                        if (v51)
                        {
                          v59 = sub_2978BFCE4(v9, v51);
                          if (v59)
                          {
                            sub_2978040A4(a3, &v59);
                            v52 = sub_29783CFFC(v32);
                            v31 = sub_2977FB720(v52);
                            v30 = v32;
LABEL_13:
                            sub_2977FE390(v30, v31);
LABEL_14:
                            LODWORD(v32) = 4;
LABEL_33:
                            sub_297801F60(v61);
                            if (v32 != 4)
                            {
                              goto LABEL_36;
                            }

                            goto LABEL_34;
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_32:
              LODWORD(v32) = 1;
              goto LABEL_33;
            }
          }
        }
      }

      sub_297801F60(v61);
LABEL_34:
      sub_2978D6C3C(v63);
      if ((sub_2978D6658(v63, v62) & 1) == 0)
      {
        LODWORD(v32) = 2;
LABEL_36:
        v53 = v32 == 2;
        goto LABEL_39;
      }
    }

    v12 = v11;
    if (sub_2978D66EC(v11))
    {
      v13 = "dc";
    }

    else
    {
      v13 = &byte_2978FC3E5;
    }

    if (sub_2978D6914(v12))
    {
      v13 = "rp";
    }

    sub_2978036E0(v57, "_");
    v14 = sub_2978D74AC(v12);
    sub_2978B5D7C(v56, v14);
    sub_297807128(v57, v56, v58);
    sub_2978036E0(v55, v13);
    sub_297807128(v58, v55, &v59);
    v15 = sub_297812A04(&v59, v61);
    v17 = v16;
    v18 = sub_2978D74B8(v12);
    v19 = sub_2978D6AF0(v65, v15, v17, v18, 0, 0);
    if (!v19 || (v20 = v19, v21 = sub_29783CFFC(v12), v22 = sub_29788709C(v21), v24 = sub_2978D74F0(v65, v22, v23), v25 = sub_297806460(v12), v27 = sub_2978D7644(v25, v26), (v29 = sub_2978D7538(v65, v24, v27, v28)) == 0) || !sub_2978B95FC(v9, v20, v29, v64))
    {
      sub_297801F60(v61);
      v53 = 0;
      goto LABEL_39;
    }

    v58[0] = v20;
    sub_29784CE50(&v59, v58);
    v59 = sub_2978BF8E4(v9, v59, v60);
    if (v59)
    {
      sub_2978040A4(a3, &v59);
      v30 = v12;
      v31 = v20;
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  v53 = 1;
LABEL_39:
  sub_2978D6C90(v62);
  sub_2978D6C90(v63);
  return v53;
}

uint64_t sub_2978D74B8(uint64_t a1)
{
  v4 = sub_2978735BC(*(a1 + 24));
  v1 = sub_2977FB720(&v4);
  v2 = sub_297890568(v1);
  return sub_29788862C(v2);
}