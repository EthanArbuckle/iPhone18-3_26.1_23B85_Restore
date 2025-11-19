uint64_t sub_297828314(uint64_t a1)
{
  v2 = sub_297828CB8(a1);
  v3 = sub_297828CD0(a1);
  sub_2977FB7C0(&v5, v2, v3);
  return v5;
}

BOOL sub_297828360(void *a1, const void *a2, size_t a3)
{
  if (a1[1] < a3)
  {
    return 0;
  }

  v6 = sub_2977FB728(a1);
  return sub_2977FD4A0((v6 - a3), a2, a3) == 0;
}

uint64_t sub_2978283B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 18)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 8) == *(v6 + 8) && *(a2 + 16) == *(v6 + 16))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 25)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 8) == *(v6 + 8) && *(a2 + 16) == *(v6 + 16) && *(a2 + 24) == *(v6 + 24))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978284B4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 23)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1] && *(a2 + 15) == *(v6 + 15))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_29782852C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 20)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 8) == *(v6 + 8) && *(a2 + 16) == *(v6 + 16))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978285A4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 15)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 7) == *(v6 + 7))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828618(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 13)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 5) == *(v6 + 5))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_29782868C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 17)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 8) == *(v6 + 8) && *(a2 + 16) == *(v6 + 16))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828704(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 35)
  {
    v6 = sub_2977FB720(a1);
    if (!memcmp(a2, v6, 0x23uLL))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828770(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 22)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1] && *(a2 + 14) == *(v6 + 14))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978287E8(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 21)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1] && *(a2 + 13) == *(v6 + 13))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828860(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 24)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1] && a2[2] == v6[2])
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978288D8(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 19)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1] && *(a2 + 11) == *(v6 + 11))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 26)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 8) == *(v6 + 8) && *(a2 + 16) == *(v6 + 16) && *(a2 + 24) == *(v6 + 24))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_2978289D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 28)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && *(a2 + 8) == *(v6 + 8) && *(a2 + 16) == *(v6 + 16) && *(a2 + 24) == *(v6 + 24))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828A58(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 16)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1])
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828AC4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 27)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1] && a2[2] == v6[2] && *(a2 + 19) == *(v6 + 19))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828B48(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 46)
  {
    v6 = sub_2977FB720(a1);
    if (!memcmp(a2, v6, 0x2EuLL))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828BB4(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 34)
  {
    v6 = sub_2977FB720(a1);
    if (!memcmp(a2, v6, 0x22uLL))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828C20(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 29)
  {
    v6 = sub_2977FB720(a1);
    if (*a2 == *v6 && a2[1] == v6[1] && a2[2] == v6[2] && *(a2 + 21) == *(v6 + 21))
    {
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_297828CA4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v2 = a2;
  }

  return *v2;
}

uint64_t sub_297828CB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    return sub_297806460(v2);
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_297828CD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    return sub_2977FB5F0(v2);
  }

  else
  {
    return (*(*(a1 + 24) - 2) | (*(*(a1 + 24) - 1) << 8)) - 1;
  }
}

uint64_t sub_297828D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = sub_297828E58(a1, a2, a3);
    result = *sub_297819E7C(v6);
    if (result)
    {
      break;
    }

    v8 = *(v5 + 160);
    if (v8)
    {
      v11 = (*(*v8 + 16))(v8, v4, v3);
      if (v11)
      {
        sub_297828E60(v6, &v11);
        return v11;
      }
    }

    if (!sub_297831F98(v5, v4, v3))
    {
      v9 = sub_297828E6C(v5);
      v10 = sub_297828E70(v9, 1);
      v11 = sub_297830E6C(v10);
      sub_297828E60(v6, &v11);
      result = v11;
      *(v11 + 16) = v6;
      return result;
    }

    a1 = v5;
    a2 = v4;
    a3 = v3;
  }

  return result;
}

uint64_t sub_297828E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  sub_29781C134(v11, &v10, v7);
  v8 = sub_297828EDC(a1, v7);
  v9 = v5;
  return sub_29781AD54(&v8);
}

uint64_t sub_297828EDC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_29780ED7C(a1, *a2, a2[1]);
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

  *(v5 + 8 * v6) = sub_297828FD0(*a2, a2[1], (a1 + 24), a2[2]);
  ++*(a1 + 12);
  v8 = sub_29780F0F4(a1, v6);
  sub_29781C144(v11, *a1 + 8 * v8, 0);
  v10 = 1;
  return sub_29780EB40(v11, &v10);
}

uint64_t sub_297828FD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v13[0] = a1;
  v13[1] = a2;
  v6 = sub_2977FB7B8(v13);
  v7 = sub_29781C25C();
  v8 = sub_297803E1C(a3, (v6 + 17), v7);
  v9 = sub_29781C264(v8, v6, a4);
  v10 = sub_297806460(v9);
  v11 = sub_2977FB720(v13);
  memcpy(v10, v11, v6);
  *(v10 + v6) = 0;
  return v8;
}

uint64_t sub_29782906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_29782916C(a1);
  sub_297829174(v10 + 10, a2);
  sub_297829178(a1 + 48, a3);
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 72) = 0;
  sub_29782917C(a1 + 80);
  sub_297809B88((a1 + 104));
  sub_297809B88((a1 + 128));
  sub_297802744(a1 + 208);
  sub_297802744(a1 + 232);
  sub_297802744(a1 + 256);
  sub_297829180((a1 + 280));
  for (i = 304; i != 544; i += 24)
  {
    sub_297802744(a1 + i);
  }

  sub_297829184(a1 + 624);
  sub_297829188(a1 + 744);
  *(a1 + 184) = 0;
  *(a1 + 192) = sub_29782918C;
  *(a1 + 4) = 0;
  *(a1 + 7) = 0;
  *(a1 + 11) = 1;
  *(a1 + 13) = 0;
  *(a1 + 32) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_2978291E8(a1);
  return a1;
}

uint64_t sub_29782918C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void **a9)
{
  sub_2977FB7B4(v12, "<can't format argument>");
  v9 = sub_2977FB720(v12);
  v10 = sub_2977FB728(v12);
  return sub_2977FD4F8(a9, v9, v10);
}

uint64_t sub_2978291E8(uint64_t a1)
{
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 284) = -1;
  *(a1 + 176) = 0;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  sub_2978293E4(a1 + 80);
  sub_2978293E8((a1 + 104));
  sub_29780C6B8((a1 + 128));
  memset(v6, 0, sizeof(v6));
  sub_297829484(v6);
  sub_297829434((a1 + 80), v6);
  sub_297829488(v6);
  v3 = sub_297829490((a1 + 80), v2);
  sub_2978294BC(v5);
  sub_29780D0AC(v6, v3, v5[0], v5[1]);
  return sub_29782948C(a1 + 104, v6);
}

uint64_t sub_297829298(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      (*(*v2 + 16))(v2);
    }
  }

  sub_29782935C(a1 + 744);
  sub_2977FD134(a1 + 624);
  for (i = 520; i != 280; i -= 24)
  {
    std::string::~string((a1 + i));
  }

  std::string::~string((a1 + 256));
  std::string::~string((a1 + 232));
  std::string::~string((a1 + 208));
  sub_29781B950(a1 + 128);
  sub_297829360(a1 + 104);
  sub_297829364(a1 + 80);
  sub_297829368(a1 + 48);
  sub_29782936C(a1 + 40);
  return a1;
}

uint64_t sub_297829374(uint64_t result, uint64_t a2, char a3)
{
  v5 = result;
  if (*(result + 64) == 1)
  {
    result = *(result + 56);
    if (result)
    {
      result = (*(*result + 16))(result);
    }
  }

  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  return result;
}

uint64_t sub_2978293E8(uint64_t *a1)
{
  v2 = sub_297809AF0(a1);
  sub_29782C108(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_297829434(uint64_t *a1, uint64_t a2)
{
  v3 = sub_29782C164(a1, 0, 0, a2);
  v5 = j_j_nullsub_1(v3, v4);
  result = sub_29782C214(a1, v5, v5);
  ++a1[2];
  return result;
}

uint64_t sub_297829490(void *a1, uint64_t a2)
{
  v2 = j_j_nullsub_1(*a1, a2);

  return sub_297806460(v2);
}

void sub_2978294C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a3;
  v9[1] = a4;
  v8[0] = a5;
  v8[1] = a6;
  if (!*(a1 + 200))
  {
    *(a1 + 200) = a2;
    sub_297802728(v9, &v7);
    sub_2978046C4(a1 + 208, &v7);
    std::string::~string(&v7);
    sub_297802728(v8, &v7);
    sub_2978046C4(a1 + 232, &v7);
    std::string::~string(&v7);
  }
}

uint64_t sub_29782953C(uint64_t a1)
{
  sub_2978295E8(a1, *(a1 + 200), v6);
  sub_2978044E8(&v4, a1 + 208);
  v2 = sub_2978295C0(v6, v4, v5);
  sub_2978044E8(&v4, a1 + 232);
  sub_2978295C0(v2, v4, v5);
  sub_29782963C(v6);
  *(a1 + 200) = 0;
  sub_297803300(a1 + 208);
  return sub_297803300(a1 + 232);
}

uint64_t sub_297829640(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  if (v3 && (v4 = sub_297829728(v12, a2, v3), !sub_297829730(v4)))
  {
    v13 = sub_297809B0C(a1 + 104, a2);
    v11 = *(sub_297829740(a1 + 104) + 8);
    if (sub_297805430(&v11))
    {
      if (sub_29782974C(v12, v11))
      {
        v7 = sub_29780A294((a1 + 104), v6);
        v9 = sub_297809B0C(a1 + 104, v8);
        sub_29780D0AC(v10, 0, v12[0], v12[1]);
        v13 = sub_297829754(v7, v9, v10);
      }
    }

    sub_297829758(&v13);
    return v13;
  }

  else
  {
    v10[0] = sub_297809B0C(a1 + 104, a2);
    return sub_297829720(v10, 1);
  }
}

uint64_t sub_297829774(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_29782C5E8(&v3, a2);
  return v3;
}

_BYTE *sub_2978297F8(_BYTE *result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *result = *result & 0xDF | v2;
  return result;
}

uint64_t sub_297829818(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_29782BBD4(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  v5 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 8) = v5;
  v6 = sub_2977FB7B8(a1) + 12;

  return sub_2977FD5DC(a1, v6);
}

uint64_t sub_297829890(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  result = sub_29782ABD4(v2, v3);
  a1[1] = *a1;
  return result;
}

uint64_t sub_2978298D4(void *a1, __int128 *a2)
{
  if (a1[1] >= a1[2])
  {
    sub_29782BBE4(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_29782BCDC(v4, a2);
  v5 = sub_2977FB7B8(a1) + 56;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_297829944(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_297829A1C(v14, a1);
    v3 = sub_2977FB720(a1 + 40);
    v4 = sub_297829A20(v14);
    v5 = sub_297829A2C(v14);
    v6 = sub_29782CC78(v3, v4, *v5, a1);
    v7 = v6 != 0;
    if (v6)
    {
      v8 = v6;
      v9 = sub_2977FB720(a1 + 40);
      sub_29782D564(v9, a1, v8);
    }

    sub_297829A74(a1);
  }

  else
  {
    v7 = sub_297829A38(a1);
    v10 = *(a1 + 284);
    sub_297829A74(a1);
    v11 = *(a1 + 200);
    if (v11)
    {
      v12 = v11 == v10;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      sub_29782953C(a1);
    }
  }

  return v7;
}

uint64_t sub_297829A38(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 40);

  return sub_29782D2C8(v2, a1);
}

uint64_t sub_297829A88(_DWORD *a1, int a2)
{
  result = (*(*a1 + 48))(a1);
  if (result)
  {
    if (a2 == 3)
    {
      ++a1[2];
    }

    else if (a2 >= 4)
    {
      ++a1[3];
    }
  }

  return result;
}

uint64_t sub_297829B00(void *a1, const void **a2)
{
  if (sub_297806914((a1 + 1)))
  {
    v4 = sub_2977FB720(a1);
    v5 = sub_297829BD8(v4);
    v6 = sub_2977FB720(v5);
    v7 = sub_297829A20(a1);
    v14[0] = sub_29782CBA8(v6, v7);
    v14[1] = v8;
    v9 = sub_2977FB720(v14);
    v10 = sub_2977FB728(v14);
    return sub_297829BE0(a1, v9, v10, a2);
  }

  else
  {
    v12 = sub_2977FB720((a1 + 1));
    v13 = sub_2977FB728(a1 + 1);

    return sub_2977FD4F8(a2, v12, v13);
  }
}

uint64_t sub_297829BE0(void *a1, char *a2, unsigned __int8 *a3, const void **a4)
{
  v105 = *MEMORY[0x29EDCA608];
  sub_297809334(v104);
  sub_29782A6EC(v103);
  sub_2978036EC();
  v8 = sub_29782A6F0(a1);
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      if (sub_29782A6FC(a1, i) == 6)
      {
        *&v99 = sub_29782A70C(a1, i);
        sub_2978040A4(v103, &v99);
      }
    }
  }

  if (a2 != a3)
  {
    v90 = a4;
    v87 = a3;
    do
    {
      if (*a2 != 37)
      {
        LOBYTE(v99) = 37;
        v13 = sub_297808B6C(a2, a3, &v99);
        sub_2977FD4F8(a4, a2, v13);
        a2 = v13;
        continue;
      }

      v12 = a2 + 1;
      v11 = a2[1];
      if (sub_29782A71C(v11))
      {
        sub_2977FCD50(a4, a2 + 1);
        a2 += 2;
        continue;
      }

      if (sub_29782A734(v11))
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
      }

      else
      {
        if (v11 == 45 || (v18 = a2 + 1, (v11 - 97) <= 0x19u))
        {
          v18 = a2 + 1;
          do
          {
            v19 = *++v18;
            v11 = v19;
            v20 = (v19 - 97);
          }

          while (v19 == 45 || v20 < 0x1A);
        }

        v15 = v18 - v12;
        if (v11 == 123)
        {
          v16 = (v18 + 1);
          v22 = sub_29782A748(v18 + 1, a3, 0x7Du);
          v17 = (a2 + 1);
          v14 = v22 - v16;
          LOBYTE(v11) = v22[1];
          v12 = (v22 + 1);
        }

        else
        {
          v14 = 0;
          v16 = 0;
          v17 = (a2 + 1);
          v12 = v18;
        }
      }

      v91 = v11 - 48;
      v23 = sub_29782A6FC(a1, v91);
      v101 = v23;
      if (sub_29782A834(v17, v15))
      {
        a2 = v12 + 3;
        v24 = v12[2];
        v25 = v24 - 48;
        v26 = sub_29782A6FC(a1, v24 - 48);
        if (v101 != 6 || v26 != 6)
        {
          v54 = sub_29782A748(v16, &v16[v14], 0x7Cu);
          v55 = sub_29782A748(v16, v54, 0x24u);
          v56 = sub_29782A748(v55 + 1, v54, 0x24u);
          LOBYTE(v99) = 37;
          BYTE1(v99) = v11;
          LOBYTE(v98) = 37;
          BYTE1(v98) = v24;
          v57 = v16;
          a4 = v90;
          sub_297829BE0(a1, v57, v55, v90);
          sub_297829BE0(a1, &v99, &v99 + 2, v90);
          sub_297829BE0(a1, v55 + 1, v56, v90);
          sub_297829BE0(a1, &v98, &v98 + 2, v90);
          sub_297829BE0(a1, v56 + 1, v54, v90);
          continue;
        }

        v101 = 11;
LABEL_31:
        *&v99 = sub_29782A70C(a1, v91);
        *(&v99 + 1) = sub_29782A70C(a1, v25);
        v27 = sub_2977FB720(a1);
        v100 = v100 & 0xFB | (4 * *(v27 + 11));
        v28 = sub_2977FB720(a1);
        v100 = v100 & 0xE7 | (8 * *(v28 + 13));
        v29 = v14;
        v30 = &v16[v14];
        v31 = sub_29782A748(v16, v30, 0x7Cu);
        if (*(sub_2977FB720(a1) + 12) != 1)
        {
          goto LABEL_34;
        }

        if (!sub_297806904(v102))
        {
          goto LABEL_34;
        }

        v100 |= 3u;
        v32 = sub_2977FB720(a1);
        v33 = v101;
        sub_2977FB7C0(&v98, v17, v15);
        sub_2977FB7C0(&v96, v16, v29);
        sub_29781601C(&v94, v104);
        sub_29780B1E8(&v92, v103);
        sub_29782AB0C(v32, v33, &v99, v98, *(&v98 + 1), v96, v97, v34, v94, v95, v102, v92, v93);
        if (!sub_297806904(v102))
        {
          v46 = v30;
          v40 = v31;
          a4 = v90;
          a3 = v87;
        }

        else
        {
LABEL_34:
          v89 = v31;
          v35 = sub_29782A748(v16, v30, 0x24u);
          v88 = sub_29782A748(v35 + 1, v30, 0x24u);
          sub_297829BE0(a1, v16, v35, v90);
          v100 = v100 & 0xFC | 2;
          v36 = sub_2977FB720(a1);
          v37 = v101;
          sub_2977FB7C0(&v98, v17, v15);
          sub_2977FB7C0(&v96, v16, v29);
          sub_29781601C(&v94, v104);
          sub_29780B1E8(&v92, v103);
          sub_29782AB0C(v36, v37, &v99, v98, *(&v98 + 1), v96, v97, v38, v94, v95, v90, v92, v93);
          if ((v100 & 0x10) == 0)
          {
            LODWORD(v96) = 6;
            *&v98 = sub_29780ACF4(&v96, &v99);
            *(&v98 + 1) = v39;
            sub_297803F88(v104, &v98);
          }

          v40 = v88;
          sub_297829BE0(a1, v35 + 1, v88, v90);
          v100 &= ~2u;
          v41 = sub_2977FB720(a1);
          v42 = v101;
          sub_2977FB7C0(&v98, v17, v15);
          v43 = v16;
          a4 = v90;
          sub_2977FB7C0(&v96, v43, v29);
          sub_29781601C(&v94, v104);
          sub_29780B1E8(&v92, v103);
          sub_29782AB0C(v41, v42, &v99, v98, *(&v98 + 1), v96, v97, v44, v94, v95, v90, v92, v93);
          a3 = v87;
          if ((v100 & 0x10) == 0)
          {
            LODWORD(v96) = 6;
            *&v98 = sub_29780ACF4(&v96, &v99 + 8);
            *(&v98 + 1) = v45;
            sub_297803F88(v104, &v98);
          }

          v46 = v89;
        }

        sub_297829BE0(a1, v40 + 1, v46, a4);
        goto LABEL_43;
      }

      a2 = v12 + 1;
      if (v23 <= 5)
      {
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            v58 = sub_29782A870(a1, v91);
            if (sub_29782A880(v17, v15, "select"))
            {
              goto LABEL_67;
            }

            if (sub_29782A940(v17, v15))
            {
              goto LABEL_79;
            }

            if (sub_29782A880(v17, v15, "plural"))
            {
              goto LABEL_87;
            }

            if (sub_29782AA58(v17, v15))
            {
              goto LABEL_89;
            }

            a4 = v90;
            sub_29781F238(&v99);
            sub_297801FA0(&v99, v58);
          }

          else if (v23 == 4)
          {
            v72 = sub_29782A70C(a1, v91);
            a4 = v90;
            sub_29781F238(&v99);
            v73 = sub_297848314(v72);
            if (v73)
            {
              v74 = v73;
              v75 = sub_2978028D8(&v99, 39);
              v64 = sub_297801F64(v75, v74);
              goto LABEL_75;
            }

            v77 = sub_29784833C(v72);
            if (v77 || (v77 = sub_29782AAF8(v72)) != 0)
            {
              v78 = v77;
            }

            else
            {
              v80 = sub_297848304(v72);
              if (v80)
              {
                v81 = v80;
                v82 = sub_2978028D8(&v99, 60);
                v64 = sub_297801F64(v82, v81);
                v76 = 62;
                goto LABEL_76;
              }

              v78 = "(null)";
            }

            sub_297801F64(&v99, v78);
          }

          else
          {
            a4 = v90;
            v59 = sub_29782A70C(a1, v91);
            if (!v59)
            {
              sub_2977FD4F8(v90, "(null)", "");
              continue;
            }

            v60 = v59;
            sub_29781F238(&v99);
            v61 = sub_2978028D8(&v99, 39);
            v62 = sub_297828314(v60);
            v64 = sub_297801FA8(v61, v62, v63);
LABEL_75:
            v76 = 39;
LABEL_76:
            sub_2978028D8(v64, v76);
          }

LABEL_84:
          sub_29781F290(&v99);
          goto LABEL_43;
        }

        switch(v23)
        {
          case 0:
            v65 = sub_29782A85C(a1, v91);
            v66 = sub_29780739C(v65);
            v67 = sub_2978073D8(v65);
            a4 = v90;
            sub_297808360(v90, v66, v67);
            goto LABEL_43;
          case 1:
            v69 = sub_29782A70C(a1, v91);
            if (v69)
            {
              v70 = v69;
            }

            else
            {
              v70 = "(null)";
            }

            v71 = strlen(v70);
            a4 = v90;
            sub_2977FD4F8(v90, v70, &v70[v71]);
            goto LABEL_43;
          case 2:
            v58 = sub_29782A870(a1, v91);
            if (!sub_29782A880(v17, v15, "select"))
            {
              if (!sub_29782A940(v17, v15))
              {
                if (!sub_29782A880(v17, v15, "plural"))
                {
                  if (!sub_29782AA58(v17, v15))
                  {
                    a4 = v90;
                    sub_29781F238(&v99);
                    sub_29780BBD0(&v99, v58);
                    goto LABEL_84;
                  }

LABEL_89:
                  a4 = v90;
                  sub_29782AA90(v58);
LABEL_43:
                  v23 = v101;
                  if (!v101)
                  {
                    LODWORD(v96) = 1;
                    v51 = sub_29782A85C(a1, v91);
                    *&v98 = sub_2978037C8(v51);
                    v52 = sub_29780ACF4(&v96, &v98);
LABEL_64:
                    *&v99 = v52;
                    *(&v99 + 1) = v53;
                    sub_297803F88(v104, &v99);
                    continue;
                  }

                  goto LABEL_62;
                }

LABEL_87:
                v79 = v16;
                a4 = v90;
                sub_29782A9A0(a1, v58, v79, v14, v90);
                goto LABEL_43;
              }

LABEL_79:
              a4 = v90;
              sub_29782A960(v58, v90);
              goto LABEL_43;
            }

LABEL_67:
            v68 = v16;
            a4 = v90;
            sub_29782A8B0(a1, v58, v68, v14, v90);
            goto LABEL_43;
        }
      }

      else
      {
        if ((v23 - 6) < 5)
        {
          goto LABEL_42;
        }

        if (v23 == 11)
        {
          v25 = v11 - 48;
          goto LABEL_31;
        }

        if (v23 == 12)
        {
LABEL_42:
          v47 = sub_2977FB720(a1);
          v48 = v101;
          v49 = sub_29782A70C(a1, v91);
          sub_2977FB7C0(&v99, v17, v15);
          sub_2977FB7C0(&v98, v16, v14);
          sub_29781601C(&v96, v104);
          sub_29780B1E8(&v94, v103);
          a4 = v90;
          sub_29782AB0C(v47, v48, v49, v99, *(&v99 + 1), v98, *(&v98 + 1), v50, v96, v97, v90, v94, v95);
          goto LABEL_43;
        }
      }

      a4 = v90;
LABEL_62:
      if (v23 != 11)
      {
        *&v98 = sub_29782A70C(a1, v91);
        v52 = sub_29780ACF4(&v101, &v98);
        goto LABEL_64;
      }
    }

    while (a2 != a3);
  }

  v83 = sub_2977FB720(v102);
  v84 = sub_2977FB7B8(v102);
  sub_2977FD4F8(a4, v83, v84);
  sub_2977FD134(v102);
  sub_2977FD134(v103);
  result = sub_2977FD134(v104);
  v86 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *sub_29782A748(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = a1;
  v5 = 0;
  v6 = a3;
  while (1)
  {
    v7 = *v4;
    if (v5)
    {
      v5 -= v7 == 125;
    }

    else
    {
      if (v7 == v6)
      {
        return v4;
      }

      v5 = 0;
    }

    if (v7 == 37)
    {
      break;
    }

LABEL_12:
    if (++v4 == v3)
    {
      return v3;
    }
  }

  if (v4 + 1 == v3)
  {
    return v3;
  }

  v8 = v4[1];
  if ((sub_29782A734(v8) & 1) != 0 || sub_29782A71C(v8))
  {
    ++v4;
    goto LABEL_12;
  }

  for (v4 += 2; v4 != v3; ++v4)
  {
    v9 = *v4;
    if ((sub_29782A734(v9) & 1) != 0 || v9 == 123)
    {
      if (v9 == 123)
      {
        ++v5;
      }

      goto LABEL_12;
    }
  }

  return v3;
}

BOOL sub_29782A880(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != 6)
  {
    return 0;
  }

  return *a1 == *a3 && *(a1 + 4) == *(a3 + 4);
}

uint64_t sub_29782A8B0(uint64_t a1, int a2, unsigned __int8 *a3, int a4, uint64_t a5)
{
  v6 = a3;
  v8 = &a3[a4];
  if (a2)
  {
    v9 = a2;
    do
    {
      v6 = sub_29782A748(v6, v8, 0x7Cu) + 1;
      --v9;
    }

    while (v9);
  }

  v10 = sub_29782A748(v6, v8, 0x7Cu);

  return sub_297829BE0(a1, v6, v10, a5);
}

uint64_t sub_29782A960(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    v5 = v2;
    v6 = v3;
    v4 = 115;
    return sub_2977FCD50(a2, &v4);
  }

  return result;
}

uint64_t sub_29782A9A0(uint64_t a1, unsigned int a2, unsigned __int8 *a3, int a4, uint64_t a5)
{
  v6 = a3;
  for (i = &a3[a4]; ; v6 = sub_29782A748(v6, i - 1, 0x7Cu) + 1)
  {
    v10 = v6;
    do
    {
      v11 = *v10++;
    }

    while (v11 != 58);
    if (sub_29782B6C8(a2, v6, v10 - 1))
    {
      break;
    }
  }

  v12 = sub_29782A748(v10, i, 0x7Cu);

  return sub_297829BE0(a1, v10, v12, a5);
}

BOOL sub_29782AA58(_DWORD *a1, int a2)
{
  if (a2 != 7)
  {
    return 0;
  }

  return *a1 == 1768190575 && *(a1 + 3) == 1818324585;
}

uint64_t sub_29782AA90(unsigned int a1)
{
  sub_29781F238(v6);
  v2 = sub_297801FA0(v6, a1);
  v3 = sub_29782B880(a1);
  sub_297801FA8(v2, v3, v4);
  return sub_29781F290(v6);
}

const char *sub_29782AAF8(int a1)
{
  if (a1 == 6)
  {
    return "identifier";
  }

  else
  {
    return 0;
  }
}

void *sub_29782AB7C(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_29782ABD4(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

uint64_t sub_29782ABD4(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v2 -= 56;
      result = sub_29782AC18(v2);
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_29782AC74(uint64_t a1)
{
  result = sub_29782ACE8(a1);
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 8);
    v5 = sub_297817F34(a1, v3);
    result = sub_29782ACF8(v4, *v5);
    *(a1 + 16) = 0;
    while (v4 != v5)
    {
      v7 = j_j_nullsub_1(v4, v6);
      v4 = *(v4 + 8);
      result = sub_29782AD10(a1, v7);
    }
  }

  return result;
}

uint64_t sub_29782ACF8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(*result + 8) = v2;
  *v2 = *result;
  return result;
}

uint64_t sub_29782AD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_297806460(a2);
  sub_29782AD6C(a1, v4);
  j_j_nullsub_1(a2, v5);

  return sub_297809C98(a1, a2, 1);
}

uint64_t sub_29782AD8C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_29782ADC0(v4, v2);
  return a1;
}

uint64_t sub_29782ADC0(uint64_t a1, unsigned int a2)
{
  result = sub_29782AE0C(a1, a2);
  if (result)
  {

    return sub_29782AE58(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

BOOL sub_29782AE0C(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = a2;
  if (a2)
  {
    v4 = sub_2977FA198(8 * a2);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return a2 != 0;
}

uint64_t sub_29782AE58(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  sub_29782AF58(a1, 0);
  v2 = sub_29782AF5C();
  v3 = sub_297803A7C(a1);
  result = sub_29782AF60(a1);
  if (v3 != result)
  {
    v5 = 0;
    v6 = (result - v3 - 8) >> 3;
    v7 = vdupq_n_s64(v6);
    v8 = (v6 + 4) & 0x3FFFFFFFFFFFFFFCLL;
    v9 = (v3 + 16);
    do
    {
      v10 = vdupq_n_s64(v5);
      v11 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_2978F4C70)));
      if (vuzp1_s16(v11, *v7.i8).u8[0])
      {
        *(v9 - 4) = v2;
      }

      if (vuzp1_s16(v11, *&v7).i8[2])
      {
        *(v9 - 2) = v2;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_2978F4C80)))).i32[1])
      {
        *v9 = v2;
        v9[2] = v2;
      }

      v5 += 4;
      v9 += 8;
    }

    while (v8 != v5);
  }

  return result;
}

void **sub_29782AFC0(void **a1)
{
  sub_29782AFF0(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_29782AFF0(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v6 = sub_29782AF5C();
    v5 = sub_29782B078();
    v3 = sub_297803A7C(a1);
    result = sub_29782AF60(a1);
    if (v3 != result)
    {
      v4 = result;
      do
      {
        result = sub_29782B07C(v3, &v6);
        if ((result & 1) == 0)
        {
          result = sub_29782B07C(v3, &v5);
        }

        v3 += 2;
      }

      while (v3 != v4);
    }
  }

  return result;
}

_DWORD *sub_29782B098(_DWORD *a1)
{
  result = sub_29782916C(a1);
  *(result + 1) = 0;
  return result;
}

void sub_29782B0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  *(*a1 + *(a1 + 8) + 289) = 0;
  sub_297801F5C(v7, &v6);
  v4 = *(a1 + 8);
  v5 = *a1 + 24 * v4;
  *(a1 + 8) = v4 + 1;
  sub_2978046C4(v5 + 304, &v6);
  std::string::~string(&v6);
}

uint64_t sub_29782B128@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a1 + 280) = a2;
  *(a1 + 284) = a3;
  sub_297803300(a1 + 256);

  return sub_29782B174(a4, a1);
}

uint64_t sub_29782B178(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  sub_2977FD800((a2 + 624));
  sub_297829890((a2 + 744));
  return a1;
}

uint64_t sub_29782B1E8(uint64_t a1)
{
  result = sub_29782B234(a1);
  if (result)
  {
    sub_29782B23C(a1);
    v3 = sub_297829944(*a1, *(a1 + 13));
    sub_29782B24C(a1);
    return v3;
  }

  return result;
}

uint64_t sub_29782B24C(uint64_t result)
{
  *result = 0;
  *(result + 12) = 0;
  return result;
}

uint64_t sub_29782B258(char a1, int a2, int a3)
{
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFF8 | a1 & 7;
  if (a3)
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  return v4 | v5;
}

uint64_t sub_29782B27C(uint64_t a1, _DWORD *a2, void *a3)
{
  v5 = 0;
  result = sub_29782B2B8(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_29782B2B8(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = sub_297803A7C(a1);
  result = sub_29782AFAC(a1);
  if (result)
  {
    v8 = result;
    v15 = sub_29782AF5C();
    v14 = sub_29782B078();
    v9 = v8 - 1;
    v10 = sub_29782B3CC(a2) & (v8 - 1);
    v11 = (v6 + 8 * v10);
    if (sub_29782B07C(a2, v11))
    {
LABEL_8:
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (!sub_29782B07C(v11, &v15))
      {
        if (sub_29782B07C(v11, &v14) && v12 == 0)
        {
          v12 = v11;
        }

        v10 = (v10 + v13) & v9;
        v11 = (v6 + 8 * v10);
        ++v13;
        if (sub_29782B07C(a2, v11))
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v12)
      {
        v11 = v12;
      }
    }

    *a3 = v11;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

_DWORD *sub_29782B3E0(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC();
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_29782B4D0(a1, (2 * v6));
    sub_29782B27C(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_29782B4D0(a1, v7);
    sub_29782B27C(a1, a2, &v10);
  }

  sub_29782B4D8(a1);
  v9 = sub_29782AF5C();
  if (!sub_29782B07C(v10, &v9))
  {
    sub_29782B514(a1);
  }

  return v10;
}

uint64_t sub_29782B4D8(uint64_t a1)
{
  v2 = sub_29782B4CC() + 1;

  return sub_29782AF54(a1, v2);
}

uint64_t sub_29782B514(uint64_t a1)
{
  v2 = sub_29782B4D4() - 1;

  return sub_29782AF58(a1, v2);
}

void sub_29782B558(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29782AE0C(a1, *v5);
  if (v4)
  {
    sub_29782B5E4(a1, v4, &v4[2 * v3]);
    j__free(v4);
  }

  else
  {
    sub_29782AE58(a1);
  }
}

uint64_t sub_29782B5E4(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  sub_29782AE58(a1);
  v9 = sub_29782AF5C();
  result = sub_29782B078();
  v8 = result;
  while (a2 != a3)
  {
    result = sub_29782B07C(a2, &v9);
    if ((result & 1) == 0)
    {
      result = sub_29782B07C(a2, &v8);
      if ((result & 1) == 0)
      {
        v7 = 0;
        sub_29782B27C(a1, a2, &v7);
        *v7 = *a2;
        v7[1] = a2[1];
        result = sub_29782B4D8(a1);
      }
    }

    a2 += 2;
  }

  return result;
}

void *sub_29782B69C(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_297804560(a1 + 1);
  return a1;
}

uint64_t sub_29782B6C8(unsigned int a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v11 = a2;
  v3 = *a2;
  if (v3 != 58)
  {
    while (1)
    {
      if (v3 == 37)
      {
        v11 = a2 + 1;
        v7 = sub_29782B794(&v11, a3);
        ++v11;
        v8 = a1 % v7;
      }

      else
      {
        v8 = a1;
      }

      if (sub_29782B7E0(v8, &v11, a3))
      {
        break;
      }

      v10 = 44;
      v9 = sub_297808B6C(v11, a3, &v10);
      if (v9 == a3)
      {
        return 0;
      }

      a2 = (v9 + 1);
      v3 = *(v9 + 1);
      v11 = (v9 + 1);
    }
  }

  return 1;
}

uint64_t sub_29782B794(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (*a1 == a2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *v2 - 48;
    if (v5 > 9)
    {
      break;
    }

    result = 10 * result + v5;
    *a1 = ++v2;
  }

  while (v2 != a2);
  return result;
}

BOOL sub_29782B7E0(unsigned int a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  if (**a2 != 91)
  {
    return sub_29782B794(a2, a3) == a1;
  }

  ++*a2;
  v6 = sub_29782B794(a2, a3);
  ++*a2;
  v7 = sub_29782B794(a2, a3);
  ++*a2;
  return v6 <= a1 && v7 >= a1;
}

uint64_t sub_29782B880(unsigned int a1)
{
  if (a1 % 0x64 - 11 < 3 || (v3 = ~(10 * (a1 / 0xA)) + a1, v3 > 2))
  {
    v4 = "th";
  }

  else
  {
    v4 = off_29EE6EBE8[v3];
  }

  v6[2] = v1;
  v6[3] = v2;
  sub_2977FB7B4(v6, v4);
  return v6[0];
}

uint64_t sub_29782B9A8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29782BA50(a1, a2);
  }

  else
  {
    sub_29782B9E8(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29782B9E8(uint64_t a1, uint64_t a2)
{
  sub_297809E80(v7, a1, 1);
  v5 = nullsub_1(v8, v4);
  sub_29782BAF4(a1, v5, a2);
  v8 += 24;
  return sub_297809E88(v7);
}

uint64_t sub_29782BA50(uint64_t *a1, uint64_t a2)
{
  v4 = sub_297809AF0(a1);
  v5 = sub_297809EBC(a1, v4 + 1);
  v6 = sub_297809AF0(a1);
  sub_297809F34(v11, v5, v6, a1);
  v8 = nullsub_1(v12, v7);
  sub_29782BAF4(a1, v8, a2);
  v12 += 24;
  sub_297809F38(a1, v11);
  v9 = a1[1];
  sub_29782BB0C(v11);
  return v9;
}

__n128 sub_29782BAF8(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t *sub_29782BB10(uint64_t *a1)
{
  sub_29782BB64(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29780A20C(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_29782BB70(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 24;
      v6 = nullsub_1(v2 - 24, a2);
      result = j_nullsub_1(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_29782BBE4(void *a1, unint64_t a2)
{
  v4 = sub_29782BCE0(a1);
  v5 = sub_29782B950(a1);
  v6 = sub_2977FB4FC(v4 + 2);
  if (v6 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_malloc(56 * v7, 0x1012040998C4DBDuLL);
  v9 = sub_2977FB720(a1);
  v10 = sub_2977FB7B8(a1);
  sub_29782BD2C(v9, v10, v8);
  v11 = sub_2977FB720(a1);
  v12 = sub_2977FB7B8(a1);
  sub_29782ABD4(v11, v12);
  if (!sub_2977FDA84(a1))
  {
    v13 = sub_2977FB720(a1);
    free(v13);
  }

  sub_2977FD5DC(a1, v8 + 56 * v5);
  *a1 = v8;
  result = sub_2977FB720(a1);
  a1[2] = result + 56 * v7;
  return result;
}

uint64_t sub_29782BD2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = sub_29782BD84(a3, v5);
      v5 += 56;
      a3 += 56;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_29782BD88(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = v4;
  sub_297808AB4(a1 + 24, a2 + 24);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_29782BDD0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = v4;
  std::string::basic_string((a1 + 24), a2 + 1);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t *sub_29782BE2C(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_29782BE5C(a1);
  return a1;
}

uint64_t sub_29782BE5C(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return sub_29782BE6C();
  }

  return result;
}

uint64_t *sub_29782BE80(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  sub_29782BE5C(a1);
  return a1;
}

uint64_t sub_29782BEB0()
{
  v0 = sub_29782BEDC();
  *(v0 + 16) = 0;

  return j_j_nullsub_1(v0, v1);
}

void *sub_29782BEE0(void *a1, uint64_t a2)
{
  *a1 = j_nullsub_1(a1, a2);
  a1[1] = j_nullsub_1(a1, v3);
  return a1;
}

uint64_t sub_29782BF48(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return sub_29782BF58();
  }

  return result;
}

void sub_29782BF5C(_DWORD *a1)
{
  if ((*a1)-- == 1)
  {
    v3 = sub_29782CA78(a1);

    j__free(v3);
  }
}

uint64_t sub_29782BFC0(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return sub_29782BFD0();
  }

  return result;
}

void sub_29782BFD4(_DWORD *a1)
{
  if ((*a1)-- == 1)
  {
    v3 = sub_29782C010(a1);

    j__free(v3);
  }
}

uint64_t sub_29782C014(uint64_t a1)
{
  sub_297809B8C(a1 + 112);
  sub_297809B8C(a1 + 88);
  std::string::~string((a1 + 64));
  std::string::~string((a1 + 40));
  return a1;
}

uint64_t sub_29782C058(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29782C098(&v3);
  return a1;
}

uint64_t *sub_29782C098(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_2978293E8(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_297809C9C(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

uint64_t sub_29782C108(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = j_nullsub_1(v3, v5))
  {
    i -= 24;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_29782C164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = a3;
  v13 = a2;
  sub_29782C25C(v14, 1);
  v6 = sub_2977FD5B0(v14);
  sub_29782C260(v6, &v13, &v12);
  v7 = sub_2977FD5B0(v14);
  v8 = sub_297806460(v7);
  sub_29782C26C(a1, v8, a4);
  v9 = sub_29782C270(v14);
  sub_29782C280(v14);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_29782C214(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = sub_297817F34(a1, a2);
  *(a3 + 8) = result;
  v7 = *a1;
  *a2 = *a1;
  *(v7 + 8) = a2;
  *a1 = a3;
  return result;
}

uint64_t sub_29782C270(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 16) = 0;
  return v1;
}

uint64_t sub_29782C284(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = sub_29782C2B4();
  return a1;
}

uint64_t sub_29782C2B8(uint64_t a1, unint64_t a2)
{
  if (sub_29782C300() < a2)
  {
    sub_29780339C();
  }

  return sub_29782C304(a2);
}

uint64_t sub_29782C338(uint64_t a1, uint64_t a2)
{
  v4 = nullsub_1(a1, a2);
  sub_29782ADC0(v4, 0);
  sub_29782C378(a1, a2);
  return a1;
}

int *sub_29782C378(uint64_t a1, uint64_t a2)
{
  sub_2977FDE84(a1, a2);
  sub_29780A814((a1 + 8), (a2 + 8));
  sub_29780A814((a1 + 12), (a2 + 12));

  return sub_29780A814((a1 + 16), (a2 + 16));
}

uint64_t sub_29782C3F8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return sub_297809C98(result, v1, *(result + 8));
  }

  return result;
}

uint64_t sub_29782C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v17 = a1;
  v9 = sub_29782C4F4();
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = sub_297813258(v10);
      sub_29782C4F8(&v17, v11);
      v16 = v12;
      v13 = sub_2977FB720(&v16);
      v14 = sub_297813268(a5, v13);
      if ((sub_29782C500(a4, a3, v14) & 1) == 0)
      {
        v17 = *sub_2978297A4(&v16);
        v11 = v10 + ~v11;
      }

      v10 = v11;
    }

    while (v11);
    return v17;
  }

  return v8;
}

unint64_t sub_29782C508(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return sub_29782C534(&v3, &v4);
}

uint64_t sub_29782C5A4(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2, a2);

  return sub_29782C5E4(a1, v3);
}

uint64_t sub_29782C608(uint64_t a1, uint64_t a2)
{
  if (sub_297829730((a2 + 8)))
  {
    return 0;
  }

  if (sub_297829730((a1 + 8)))
  {
    return 1;
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 16);

  return sub_29782974C(a1 + 8, v5);
}

unsigned __int16 *sub_29782C6E4(unsigned int a1)
{
  result = sub_29782C708(a1);
  if (result)
  {
    return ((result[1] >> 10) & 0x1F);
  }

  return result;
}

unsigned __int16 *sub_29782C708(unsigned int a1)
{
  if (a1 - 5720 < 0xFFFFE9A9)
  {
    return 0;
  }

  if (a1 <= 0x12C)
  {
    v1 = 0;
  }

  else
  {
    v1 = 68;
  }

  if (a1 <= 0x12C)
  {
    v2 = -1;
  }

  else
  {
    v2 = -301;
  }

  v3 = v2 + a1;
  if (a1 > 0x190)
  {
    v1 += 84;
    v3 -= 100;
  }

  if (a1 > 0x1F4)
  {
    v1 += 93;
    v3 -= 100;
  }

  if (a1 > 0x26C)
  {
    v1 += 34;
    v3 -= 120;
  }

  if (a1 > 0x398)
  {
    v1 += 294;
    v3 -= 300;
  }

  if (a1 > 0x58C)
  {
    v1 += 416;
    v3 -= 500;
  }

  if (a1 > 0x5F0)
  {
    v1 += 98;
    v3 -= 100;
  }

  if (a1 > 0x654)
  {
    v1 += 34;
    v3 -= 100;
  }

  if (a1 > 0x120C)
  {
    v1 += 2807;
    v3 -= 3000;
  }

  if (a1 > 0x1270)
  {
    v3 -= 100;
  }

  v4 = v3 + v1;
  if (v4 > 0xF6E)
  {
    return 0;
  }

  v6 = (&unk_29EE6EE30 + 16 * v4);
  if (*v6 == a1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29782C818(uint64_t a1, unsigned int a2)
{
  v8 = a2;
  v5 = 0;
  v6 = sub_2978182B8(&v8, &v5);
  sub_29782C898(a1, &v6, v7);
  if (v7[16] == 1)
  {
    v3 = sub_29782C958(v8);
    *(sub_2977FB720(v7) + 4) = v3;
  }

  return sub_2977FB720(v7) + 4;
}

uint64_t sub_29782C898@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 0;
  if (sub_29782B27C(a1, a2, &v13))
  {
    v6 = v13;
    v7 = sub_29782AF60(a1);
    sub_29782D9C0(v12, v6, v7, 1);
    v11 = 0;
  }

  else
  {
    v8 = sub_29782D9C4(a1, a2, a2 + 1, v13);
    v13 = v8;
    v9 = sub_29782AF60(a1);
    sub_29782D9C0(v12, v8, v9, 1);
    v11 = 1;
  }

  return sub_29782D9B0(v12, &v11, a3);
}

uint64_t sub_29782C958(unsigned int a1)
{
  v5 = sub_29782B258(5, 0, 0);
  v2 = sub_29782C708(a1);
  if (v2)
  {
    v3 = v2;
    sub_2978297E8(&v5, v2[1] & 7);
    if ((v3[1] & 0x100) != 0)
    {
      sub_2978297F8(&v5, 1);
    }
  }

  return v5;
}

uint64_t sub_29782C9CC(unsigned int a1)
{
  if (a1 < 0x22)
  {
    return sub_29782CA10(&(&off_29EE6EC00)[2 * a1]);
  }

  sub_297804560(&v2);
  return v2;
}

uint64_t sub_29782CA40(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = sub_29782CA74();
    j__free(v2);
  }

  return a1;
}

uint64_t sub_29782CAB4(unsigned int a1)
{
  v1 = sub_29782C708(a1);
  if (v1)
  {
    return (v1[1] >> 3) & 7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_29782CAE0(unsigned int a1, BOOL *a2)
{
  if (a1 >> 3 > 0x2CA)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  if (sub_29782CAB4(a1) != 4)
  {
    return 0;
  }

  v7 = sub_29782C958(a1);
  *a2 = sub_297829768(&v7) != 1;
  return 1;
}

BOOL sub_29782CB5C(unsigned int a1)
{
  if (a1 >> 3 > 0x2CA)
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  v4 = sub_29782C958(a1);
  return sub_297829768(&v4) == 4;
}

uint64_t sub_29782CBA8(uint64_t a1, unsigned int a2)
{
  v4 = sub_29782C708(a2);
  if (v4)
  {

    return sub_29782CC0C(v4);
  }

  else
  {
    v6 = *(a1 + 8);

    return sub_29782CC3C(v6, a2);
  }
}

uint64_t sub_29782CC3C(void *a1, int a2)
{
  v2 = sub_29782D994(a1, (a2 - 5720));
  sub_2978044E8(&v4, v2 + 8);
  return v4;
}

uint64_t sub_29782CC78(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  if (a2 >> 3 < 0x2CB)
  {
    result = sub_29782CAB4(a2);
    if (result != 1)
    {
      v9 = sub_29782CD54(result, a2, a3, a4);

      return sub_29782CD40(v9);
    }
  }

  else
  {
    v5 = *(a1 + 8);

    return sub_29782CD1C(v5, a2);
  }

  return result;
}

uint64_t sub_29782CD54(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v6 = 5;
  v20 = 5;
  v21 = a3;
  v19 = sub_297829640(a4, a3);
  v8 = sub_2978297B4(&v19, v7);
  v9 = sub_29782C818(*v8, a2);
  if (sub_297829768(v9))
  {
    v10 = sub_297829768(v9);
    v6 = v10;
    v20 = v10;
    if (a4[7] == 1 && v10 == 1)
    {
      if (sub_29782CF48(v9))
      {
        v6 = 1;
        goto LABEL_12;
      }

      v20 = 3;
    }

    else if (v10 != 3)
    {
      goto LABEL_12;
    }

    if (sub_29782CAB4(a2) == 2)
    {
      v6 = 2;
      v20 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

LABEL_12:
  v18 = 0;
  v11 = sub_29782CAE0(a2, &v18);
  if (v11 && a4[4] && !v18)
  {
    return 1;
  }

  if (v11 && (sub_29782CF48(v9) & 1) == 0)
  {
    v12 = sub_29782CF54(&v20, a4 + 32);
    v6 = *v12;
    v20 = *v12;
  }

  if (v6 != 1)
  {
    if (v6 == 3)
    {
      if (a4[5])
      {
        return 1;
      }

      if (a4[6] != 1)
      {
LABEL_29:
        v13 = sub_29782C708(a2);
        if (!v13)
        {
          return v20;
        }

        if (a4[9] != 1)
        {
          return v20;
        }

        if ((v13[1] & 0x200) != 0)
        {
          return v20;
        }

        if (!sub_297805430(&v21))
        {
          return v20;
        }

        v14 = sub_29782AD78(a4);
        v15 = sub_29782AD78(a4);
        v16 = sub_29782CF94(v15, v21);
        if (!sub_29782CF70(v14, v16))
        {
          return v20;
        }

        return 1;
      }

      if (!sub_29782CF58(v9))
      {
        v20 = 4;
LABEL_26:
        if (a4[8] == 1 && (sub_29782CF64(v9) & 1) == 0)
        {
          v20 = 5;
        }

        goto LABEL_29;
      }

      LODWORD(v6) = v20;
    }

    if (v6 != 4)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  return v6;
}

uint64_t sub_29782CF94(_DWORD *a1, unsigned int a2)
{
  v6 = a2;
  v3 = sub_29782D9A0(&v6);
  v4 = v6;
  if (!v3)
  {
    return sub_297840EDC(a1, v6);
  }

  return v4;
}

uint64_t sub_29782CFE0(unsigned int a1)
{
  v1 = sub_29782C708(a1);
  if (v1)
  {
    v2 = sub_29782D02C(v1);
    return sub_29782D034(&word_2978F6A00[3 * v2]);
  }

  else
  {
    sub_297804560(&v4);
    return v4;
  }
}

uint64_t sub_29782D070(uint64_t a1, uint64_t a2, const void *a3, size_t a4, uint64_t a5)
{
  v14[0] = a3;
  v14[1] = a4;
  v9 = sub_29782D120(v14);
  if (v9 == byte_2978F767E)
  {
    return 1;
  }

  v10 = v9;
  v11 = sub_29782D034(v9);
  if (sub_297808D64(v11, v12, a3, a4))
  {
    return 1;
  }

  return sub_29782D194(a2, v10, a5);
}

BOOL sub_29782D154(unsigned __int16 *a1, const void *a2, unint64_t a3)
{
  v5 = sub_29782D034(a1);

  return sub_29781975C(v5, v6, a2, a3);
}

uint64_t sub_29782D194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 2);
  if (*(a2 + 2) || *(a2 + 4))
  {
    v7 = word_2978FA020[v6];
    if (v7 == 0xFFFF)
    {
      v9 = 1;
    }

    else
    {
      v8 = &word_2978FA020[v6 + 1];
      v9 = 1;
      do
      {
        v10 = v7;
        v11 = sub_29782C708(v7);
        if (sub_29782D2B4(v11) == a1)
        {
          v18 = v10;
          sub_297803988(a3, &v18);
          v9 = 0;
        }

        v12 = *v8++;
        LOWORD(v7) = v12;
      }

      while (v12 != 0xFFFF);
    }

    v13 = *(a2 + 4);
    v14 = word_2978FABE6[v13];
    if (v14 != 0xFFFF)
    {
      v15 = &word_2978FABE6[v13 + 1];
      do
      {
        v9 &= sub_29782D194(a1, &unk_2978F6A00 + 6 * v14, a3);
        v16 = *v15++;
        LOWORD(v14) = v16;
      }

      while (v16 != 0xFFFF);
    }
  }

  else
  {
    LOBYTE(v9) = a1 == 1;
  }

  return v9 & 1;
}

uint64_t sub_29782D2C8(uint64_t a1, uint64_t a2)
{
  sub_297829A1C(v12, a2);
  if (*(a2 + 10))
  {
    return 0;
  }

  v5 = sub_297829A20(v12);
  v6 = sub_297829A2C(v12);
  result = sub_29782CC78(a1, v5, *v6, a2);
  v7 = result;
  if (result != 1)
  {
    if (*(a2 + 164) == 5)
    {
      *(a2 + 154) = 1;
    }

    *(a2 + 164) = result;
    v8 = result > 3;
    if (result < 4)
    {
      if (*(a2 + 154))
      {
        return 0;
      }
    }

    else
    {
      ++*(a2 + 156);
      result = sub_29782D4F0(a1, v5);
      if (result)
      {
        ++*(a2 + 160);
      }

      if (*(a2 + 154))
      {
        result = (*(**(a2 + 56) + 48))(*(a2 + 56));
        if (result)
        {
          result = 0;
          *(a2 + 172) = vadd_s32(*(a2 + 172), 0x100000001);
        }

        return result;
      }
    }

    if (!v7)
    {
      return 0;
    }

    if (v7 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v8 = 0;
  result = 0;
  if ((*(a2 + 154) & 1) == 0)
  {
LABEL_18:
    if (*(a2 + 164))
    {
LABEL_19:
      if (!v8)
      {
        goto LABEL_30;
      }

      if (sub_29782D4F0(a1, v5))
      {
        *(a2 + 155) = 1;
      }

      if (sub_29782CB5C(v5))
      {
        *(a2 + 153) = 1;
      }

      *(a2 + 152) = 1;
      result = (*(**(a2 + 56) + 48))(*(a2 + 56));
      if (result)
      {
        ++*(a2 + 172);
      }

      v9 = *(a2 + 20);
      if (!v9 || v7 != 4 || *(a2 + 172) <= v9)
      {
LABEL_30:
        sub_29782D564(result, a2, v7);
        return 1;
      }

      sub_2977FB7B4(v11, &byte_2978FC3E5);
      sub_2977FB7B4(v10, &byte_2978FC3E5);
      sub_2978294C0(a2, 42, v11[0], v11[1], v10[0], v10[1]);
    }

    return 0;
  }

  return result;
}

BOOL sub_29782D4F0(uint64_t a1, unsigned int a2)
{
  if (a2 >> 3 >= 0x2CB)
  {
    return sub_29782CD1C(*(a1 + 8), a2) > 3;
  }

  v4 = sub_29782CAB4(a2);
  result = 0;
  if (v4 >= 5 && a2 - 3093 >= 2)
  {
    return !sub_29782D610(a2);
  }

  return result;
}

uint64_t sub_29782D564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297829A1C(v6, a2);
  (*(**(a2 + 56) + 56))(*(a2 + 56), a3, v6);
  result = (*(**(a2 + 56) + 48))(*(a2 + 56));
  if (a3 == 3 && result)
  {
    ++*(a2 + 168);
  }

  *(a2 + 284) = -1;
  return result;
}

BOOL sub_29782D610(unsigned int a1)
{
  v1 = sub_29782C6E4(a1);
  v5[0] = sub_29782C9CC(v1);
  v5[1] = v2;
  sub_2977FB7B4(v4, "ARC ");
  return sub_297807C54(v5, v4[0], v4[1]);
}

uint64_t sub_29782D654(uint64_t a1)
{
  sub_29782D690(a1 + 24);

  return sub_29782D694(a1);
}

uint64_t sub_29782D6A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_297818B70(a1, a2);
  sub_29782D6D4(a1, v3);
  return a1;
}

uint64_t sub_29782D6D4(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29782D6D4(result, *a2);
    sub_29782D6D4(v3, a2[1]);
    v5 = nullsub_1(v3, v4);
    v7 = j_nullsub_1(a2 + 4, v6);
    sub_29782D750(v5, v7);

    return sub_297809C98(v5, a2, 1);
  }

  return result;
}

uint64_t sub_29782D794(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29782D7D4(&v3);
  return a1;
}

uint64_t *sub_29782D7D4(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29782D844(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_29782D890(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

uint64_t sub_29782D844(uint64_t *a1)
{
  v2 = sub_29782D8A4(a1);
  sub_29782D8B4(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_29782D8B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_29782D910(v3, v5))
  {
    i -= 32;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

BOOL sub_29782D91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978032A4(a1);
  if (v4 != sub_2978032A4(a2))
  {
    return 0;
  }

  v5 = sub_2978037CC(a1);
  v6 = sub_2978037CC(a2);
  return j__memcmp(v5, v6, v4) == 0;
}

_DWORD *sub_29782D9C4(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = sub_29782B3E0(a1, a2, a4);
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t sub_29782DA04(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_29782DA30();
  *(result + 16) = *a3;
  return result;
}

void *sub_29782DA34(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  return result;
}

uint64_t *sub_29782DA48(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  a1[1] = a3;
  if ((a4 & 1) == 0)
  {
    sub_29782DA7C(a1);
  }

  return a1;
}

uint64_t sub_29782DA7C(uint64_t *a1)
{
  v5 = sub_29782AFA4();
  v4 = sub_29782B090();
  result = *a1;
  if (*a1 != a1[1])
  {
    do
    {
      if (!sub_29782B07C(result, &v5))
      {
        result = sub_29782B07C(*a1, &v4);
        if (!result)
        {
          break;
        }
      }

      v3 = a1[1];
      result = *a1 + 8;
      *a1 = result;
    }

    while (result != v3);
  }

  return result;
}

_DWORD *sub_29782DAF0(_DWORD *a1, _DWORD *a2)
{
  if (sub_29782DB34(&v5, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void *sub_29782DB4C(void *a1, uint64_t (**a2)(uint64_t, void, void))
{
  v4 = 533;
  v5 = &unk_2978F6A00;
  do
  {
    v6 = sub_297813258(v4);
    v10 = v5;
    sub_29782DBE4(&v10, v6);
    v7 = v10;
    v8 = sub_29782DBE8(a2, v10, a1);
    if (v8)
    {
      v4 += ~v6;
    }

    else
    {
      v4 = v6;
    }

    if (v8)
    {
      v5 = (v7 + 6);
    }
  }

  while (v4);
  return v5;
}

void *sub_29782DBFC(void *a1, uint64_t a2)
{
  v3 = nullsub_1(a2, a2);

  return sub_29782DC3C(a1, v3);
}

uint64_t sub_29782DC50(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_29782916C(a1);
  sub_29782DD34(v6 + 1, a3);
  sub_29782DD38(a1 + 24, a2);
  sub_297817C2C(a1 + 72, v7);
  sub_297817C2C(a1 + 96, v8);
  sub_29780B1B8(a1 + 120);
  sub_29780B1B8(a1 + 176);
  sub_29782DD3C(a1 + 232, 64);
  sub_29782DD3C(a1 + 392, 64);
  sub_29782DD40(a1 + 552, 0);
  sub_297817C28((a1 + 576));
  *(a1 + 712) = 0;
  sub_29780AE44(a1 + 736);
  *(a1 + 716) = 0u;
  if (!sub_29782DD44(a3))
  {
    sub_29784855C(v10);
    sub_29782DD64((a1 + 8), v10);
    sub_29782DDAC(v10);
  }

  return a1;
}

uint64_t *sub_29782DD64(uint64_t *a1, void *a2)
{
  sub_29782F718(v4, a2);
  sub_29782F71C(v4, a1);
  sub_29782DDAC(v4);
  return a1;
}

uint64_t sub_29782DDB4(uint64_t a1)
{
  v2 = sub_29780406C(a1 + 176);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = *sub_29782DEAC(a1 + 176, v3);
      if (v4)
      {
        v5 = sub_29782DED4(v4);
        j__free(v5);
      }

      ++v3;
    }

    while (v2 != v3);
  }

  v6 = sub_29780406C(a1 + 120);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = *sub_29782DEAC(a1 + 120, v7);
      if (v8)
      {
        j__free(v8);
      }

      ++v7;
    }

    while (v6 != v7);
  }

  sub_29782DED8(a1 + 736);
  sub_297818154(a1 + 576);
  sub_29782DEDC(a1 + 552);
  sub_29782DEE0(a1 + 392);
  sub_29782DEE0(a1 + 232);
  sub_2977FD134(a1 + 176);
  sub_2977FD134(a1 + 120);
  sub_29782DEE4(a1 + 96);
  sub_29782DEE8(a1 + 72);
  sub_29782DEEC(a1 + 24);
  sub_29782DDAC(a1 + 8);
  return a1;
}

uint64_t *sub_29782DEF4(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_29782F774(result, v3);
  }

  return result;
}

uint64_t sub_29782DF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_297806980(a2, a3);
  v10 = v4;
  result = sub_297806914(&v9);
  if ((result & 1) == 0)
  {
    v6 = sub_297828E58(a1 + 232, v9, v10);
    result = sub_297819E7C(v6);
    if (!*result)
    {
      v7 = sub_2977FA198(8);
      v8 = sub_29780AE44(v7);
      *v7 = sub_297806460(v6);
      sub_297828E60(v6, &v8);
      sub_2978040A4(a1 + 120, &v8);
      return sub_29782DF0C(a1, v9, v10);
    }
  }

  return result;
}

void *sub_29782DFB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v20 = a2;
  v21 = a3;
  if (sub_2977FB7B8(&v20) >= 2)
  {
    v6 = v20;
    v7 = v21;
    v8 = sub_2978062DC(v20, v21);
    if (sub_297808D64(v6, v7, v8, v9))
    {
      v10 = sub_29782E158(&v20);
      if (sub_297805E98(v10))
      {
        v11 = sub_2977FB7B8(&v20);
        v20 = sub_297805EA4(&v20, 0, v11 - 1);
        v21 = v12;
      }
    }
  }

  ++*(a1 + 716);
  v13 = sub_297828E58(a1 + 232, v20, v21);
  if (*sub_297819E7C(v13))
  {
    if (*sub_297819E7C(v13) == -1)
    {
      return 0;
    }

    else
    {
      return *sub_297819E7C(v13);
    }
  }

  else
  {
    ++*(a1 + 724);
    v18.__r_.__value_.__r.__words[0] = -1;
    sub_297828E60(v13, &v18);
    v15 = sub_297806460(v13);
    sub_29782E168(&v18);
    if (sub_29782E16C(a1, v15, &v18, 0, 0))
    {
      if ((a4 & 1) == 0)
      {
        sub_29782E284((a1 + 232), v20, v21);
      }

      v14 = 0;
    }

    else
    {
      v14 = sub_29782E2E4(a1 + 72, &v19);
      v17 = v14;
      sub_297828E60(v13, &v17);
      if (!sub_2977FB720(v14))
      {
        *v14 = v15;
      }
    }

    j_std::string::~string(&v18);
  }

  return v14;
}

uint64_t sub_29782E16C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (sub_29780347C(a1 + 24))
  {
    v10 = sub_2977FB720(a1 + 736);
    v11 = sub_2977FB720(a1 + 8);

    return sub_297830B10(a2, a3, a4, a5, v10, v11);
  }

  else
  {
    sub_2977FB7B4(v17, a2);
    sub_297807A08(v18, v17[0], v17[1]);
    sub_29782E928(a1, v18);
    v13 = sub_297807A0C(v18);
    v14 = sub_2977FB720(a1 + 736);
    v15 = sub_2977FB720(a1 + 8);
    v16 = sub_297830B10(v13, a3, a4, a5, v14, v15);
    sub_297801F60(v18);
    return v16;
  }
}

BOOL sub_29782E284(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_29782F7A4(a1, a2, a3);
  v6 = sub_29781AD1C(a1);
  v4 = sub_297815520(&v7, &v6);
  if (!v4)
  {
    sub_29782F814(a1, v7);
  }

  return !v4;
}

uint64_t sub_29782E2E4(uint64_t a1, uint64_t a2)
{
  v9 = sub_297819C3C(a2);
  nullsub_1(v9, v4);
  v10 = sub_29782F868(a1, a2, &unk_2978FAE84, &v9);
  v11 = v5;
  v6 = sub_297819804(&v10);
  return nullsub_1(v6, v7) + 16;
}

uint64_t sub_29782E354(uint64_t a1, const void *a2, size_t a3, int a4, char a5)
{
  ++*(a1 + 720);
  v10 = sub_297828E58(a1 + 392, a2, a3);
  if (*sub_297819E7C(v10))
  {
    if (*sub_297819E7C(v10) != -1)
    {
      return *sub_297819E7C(v10);
    }

    return 0;
  }

  ++*(a1 + 728);
  v21.__r_.__value_.__r.__words[0] = -1;
  sub_297828E60(v10, &v21);
  v12 = sub_297806460(v10);
  v13 = sub_29782E5B8(a1, a2, a3, a5);
  if (!v13)
  {
    if ((a5 & 1) == 0)
    {
      sub_29782E284((a1 + 392), a2, a3);
    }

    return 0;
  }

  v14 = v13;
  sub_29780AE44(&v26);
  sub_29782E168(&v21);
  if (a4)
  {
    v15 = &v26;
  }

  else
  {
    v15 = 0;
  }

  if (sub_29782E16C(a1, v12, &v21, 1, v15))
  {
    if ((a5 & 1) == 0)
    {
      sub_29782E284((a1 + 392), a2, a3);
    }

    v11 = 0;
  }

  else
  {
    v11 = sub_29782E658(a1 + 96, &v23);
    v19 = v11;
    sub_297828E60(v10, &v19);
    sub_2978044E8(&v19, &v21);
    if (sub_297808D64(v19, v20, a2, a3))
    {
      sub_2978044E8(&v19, &v21);
      v16 = sub_297828E58(a1 + 392, v19, v20);
      if (!*sub_297819E7C(v16))
      {
        v19 = v11;
        sub_297828E60(v16, &v19);
      }

      v12 = sub_297806460(v16);
    }

    if (sub_29782E6C8(v11))
    {
      if (v14 != *(v11 + 24) && v25 == 1)
      {
        *(v11 + 24) = v14;
      }

      *v11 = v12;
    }

    else
    {
      *v11 = v12;
      *(v11 + 8) = v22;
      *(v11 + 24) = v14;
      v17 = *(a1 + 712);
      *(a1 + 712) = v17 + 1;
      *(v11 + 32) = v17;
      *(v11 + 40) = v23;
      *(v11 + 56) = v24;
      sub_29782E6D0((v11 + 64), &v26);
      *(v11 + 58) = 1;
    }
  }

  j_std::string::~string(&v21);
  sub_29782E714(&v26);
  return v11;
}

void *sub_29782E5B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = a2;
  v13 = a3;
  if (sub_297806914(&v12))
  {
    return 0;
  }

  v6 = sub_2977FB7B8(&v12);
  v7 = sub_297803A20(&v12, v6 - 1);
  if (sub_297805E98(v7))
  {
    return 0;
  }

  *&v11 = sub_297806980(v12, v13);
  *(&v11 + 1) = v9;
  if (sub_297806914(&v11))
  {
    sub_2977FB7B4(&v10, ".");
    v11 = v10;
  }

  return sub_29782DFB8(a1, v11, *(&v11 + 1), a4);
}

uint64_t sub_29782E658(uint64_t a1, uint64_t a2)
{
  v9 = sub_297819C3C(a2);
  nullsub_1(v9, v4);
  v10 = sub_29782FE54(a1, a2, &unk_2978FAE84, &v9);
  v11 = v5;
  v6 = sub_297819804(&v10);
  return nullsub_1(v6, v7) + 16;
}

uint64_t *sub_29782E6D0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_2978058AC(a2);
  sub_29782E910(a1, v4);
  nullsub_1(a2, v5);
  return a1;
}

uint64_t sub_29782E718(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ++a1[180];
  v10 = sub_297828E58((a1 + 98), a2, a3);
  if (!*sub_297819E7C(v10) || *sub_297819E7C(v10) == -1)
  {
    ++a1[182];
    v19.__r_.__value_.__r.__words[0] = -1;
    sub_297828E60(v10, &v19);
    sub_29782DF0C(a1, a2, a3);
    v25 = 0;
    v12 = sub_29782E5B8(a1, a2, a3, 1);
    sub_29782E168(&v19);
    v13 = sub_297806460(v10);
    if (sub_29782E16C(a1, v13, &v19, 1, 0))
    {
      goto LABEL_5;
    }

    v20 = a4;
    v21 = a5;
    v25 = sub_29782E658((a1 + 24), &v22);
    sub_297828E60(v10, &v25);
    if (sub_29780B1BC((v25 + 64)))
    {
      sub_29782E900(v25);
    }

    if (sub_29782E6C8(v25))
    {
      goto LABEL_11;
    }

    v15 = v25;
    *(v25 + 40) = v22;
    *(v15 + 56) = v23;
    *(v15 + 57) = v24;
    if (!v15)
    {
LABEL_5:
      v14 = sub_2977FA198(72);
      v25 = sub_29782E90C(v14);
      sub_2978040A4((a1 + 44), &v25);
      sub_297828E60(v10, &v25);
      v15 = v25;
    }

    *v15 = v13;
    v16 = v25;
    *(v25 + 8) = a4;
    *(v16 + 16) = a5;
    *(v16 + 24) = v12;
    v17 = a1[178];
    a1[178] = v17 + 1;
    *(v16 + 32) = v17;
    sub_29782E910((v16 + 64), 0);
LABEL_11:
    v11 = v25;
    j_std::string::~string(&v19);
    return v11;
  }

  return *sub_297819E7C(v10);
}

uint64_t *sub_29782E910(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_29782F0E0(result, v3);
  }

  return result;
}

uint64_t sub_29782E928(uint64_t a1, const void **a2)
{
  v4 = sub_297803A7C(a2);
  v5 = sub_2977FD0D4(a2);
  sub_2977FB7C0(v12, v4, v5);
  result = sub_29780347C(a1 + 24);
  if ((result & 1) == 0)
  {
    sub_2978036E8(v11, v12);
    result = sub_297806F84(v11);
    if ((result & 1) == 0)
    {
      sub_2978044E8(v10, a1 + 24);
      sub_297807A08(v11, v10[0], v10[1]);
      sub_2978036E8(v10, v12);
      sub_2978036E0(v9, &byte_2978FC3E5);
      sub_2978036E0(v8, &byte_2978FC3E5);
      sub_2978036E0(v7, &byte_2978FC3E5);
      sub_297806664(v11, v10, v9, v8, v7);
      sub_297807D80(a2, v11);
      return sub_297801F60(v11);
    }
  }

  return result;
}

uint64_t sub_29782EA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_29780AE44(&v29);
  sub_2978055DC(&v28);
  v10 = sub_2977FB7B8(a2);
  if (a4)
  {
    v11 = -1;
  }

  else
  {
    v11 = v10;
  }

  v12 = sub_2977FB720(a2);
  if (sub_29780B1BC((a2 + 64)))
  {
    v13 = sub_2977FB720(a2 + 64);
    sub_2978036E0(&v27, v12);
    *&v28.__val_ = (*(*v13 + 24))(v13, &v27, &v29, v11, 1, a4);
    v28.__cat_ = v14;
    if (a3)
    {
      std::error_code::message(&v27, &v28);
      sub_2978046C4(a3, &v27);
      std::string::~string(&v27);
    }

    if (a5)
    {
      sub_29782E900(a2);
    }

LABEL_13:
    v18 = sub_2978058AC(&v29);
    goto LABEL_18;
  }

  if (sub_29780347C(a1 + 24))
  {
    v15 = sub_2977FB720(a1 + 8);
    sub_2978036E0(&v27, v12);
    *&v28.__val_ = sub_297848478(v15, &v27, &v29, v11, 1, a4);
    v28.__cat_ = v16;
    v17 = sub_297805430(&v28);
    if (a3 && v17)
    {
      std::error_code::message(&v27, &v28);
      sub_2978046C4(a3, &v27);
      std::string::~string(&v27);
    }

    goto LABEL_13;
  }

  v19 = sub_2977FB720(a2);
  sub_2977FB7B4(&v26, v19);
  sub_297807A08(&v27, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  sub_29782E928(a1, &v27.__r_.__value_.__l.__data_);
  v20 = sub_2977FB720(a1 + 8);
  v25[0] = sub_297801F10(&v27);
  v25[1] = v21;
  sub_2978036E8(&v26, v25);
  *&v28.__val_ = sub_297848478(v20, &v26, &v29, v11, 1, a4);
  v28.__cat_ = v22;
  v23 = sub_297805430(&v28);
  if (a3 && v23)
  {
    std::error_code::message(&v26, &v28);
    sub_2978046C4(a3, &v26);
    std::string::~string(&v26);
  }

  v18 = sub_2978058AC(&v29);
  sub_297801F60(&v27);
LABEL_18:
  sub_29780548C(&v29);
  return v18;
}

uint64_t sub_29782EC8C(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = a2;
  sub_29782EDC8(a1 + 552, &v12, v11);
  sub_29782EE6C(a1 + 552, &v10);
  sub_29782DA30(__s, &v10);
  if (sub_29782EE3C(v11, __s))
  {
    v13 = *(sub_2977FB720(v11) + 8);
  }

  else
  {
    v3 = sub_2977FB720(v12);
    sub_2977FB7B4(&v13, v3);
    v4 = sub_2977FB720(v12);
    if (realpath_DARWIN_EXTSN(v4, __s))
    {
      v5 = strlen(__s);
      v6 = sub_297803E1C((a1 + 576), v5, 1uLL);
      memcpy(v6, __s, v5);
      sub_2977FB7C0(&v10, v6, v5);
      v13 = v10;
    }

    sub_29782EF88(&v12, &v13, &v10);
    sub_29782EEC8(a1 + 552, &v10, v9);
  }

  result = v13;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29782EDC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 0;
  if (!sub_29783065C(a1, a2, &v8))
  {
    return sub_29782EE6C(a1, a3);
  }

  v5 = v8;
  v6 = sub_29782F364(a1);
  return sub_297830698(a3, v5, v6, 1);
}

uint64_t sub_29782EE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29782F364(a1);
  v5 = sub_29782F364(a1);

  return sub_297830698(a2, v4, v5, 1);
}

uint64_t sub_29782EEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = 0;
  if (sub_29783065C(a1, a2, &v14))
  {
    v6 = v14;
    v7 = sub_29782F364(a1);
    sub_297830698(v13, v6, v7, 1);
    v12 = 0;
  }

  else
  {
    sub_297830898(a1, a2, (a2 + 8), v14);
    v9 = v8;
    v14 = v8;
    v10 = sub_29782F364(a1);
    sub_297830698(v13, v9, v10, 1);
    v12 = 1;
  }

  return sub_29782D9B0(v13, &v12, a3);
}

std::string *sub_29782EF98(std::string *a1, const std::string *a2)
{
  v4 = std::string::basic_string(a1, a2);
  std::string::basic_string(v4 + 1, a2 + 1);
  return a1;
}

void sub_29782EFFC(std::string *a1)
{
  std::string::~string(a1 + 1);

  std::string::~string(a1);
}

uint64_t sub_29782F038(uint64_t a1)
{
  v2 = sub_297802744(a1);
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  j_nullsub_1(v2 + 40, v3);
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_29782F070(uint64_t a1)
{
  sub_2977FB7C0(a1 + 40, 0, 0);
  *(a1 + 56) = 0;
  *(a1 + 58) = 0;
  sub_29780AE44(a1 + 64);
  return a1;
}

uint64_t sub_29782F0E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void *sub_29782F110(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  a1[1] = v3;
  if (v3)
  {
    sub_29782F14C();
  }

  return a1;
}

uint64_t sub_29782F194(uint64_t a1, int a2)
{
  v3 = sub_29780ECDC(a1, a2, 16);
  sub_297817C28((v3 + 24));
  return a1;
}

uint64_t sub_29782F1C8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_29782F1FC(v4, v2);
  return a1;
}

uint64_t sub_29782F1FC(uint64_t a1, unsigned int a2)
{
  result = sub_29782F248(a1, a2);
  if (result)
  {

    return sub_29782F298(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

BOOL sub_29782F248(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = a2;
  if (a2)
  {
    v4 = sub_2977FA198(24 * a2);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return a2 != 0;
}

uint64_t sub_29782F298(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  sub_29782AF58(a1, 0);
  v2 = sub_29782F360();
  v3 = sub_297803A7C(a1);
  result = sub_29782F364(a1);
  if (v3 != result)
  {
    v5 = 0;
    v6 = (result - v3 - 24) / 0x18uLL;
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
        v3[3] = v2;
      }

      v5 += 2;
      v3 += 6;
    }

    while (((v6 + 2) & 0x1FFFFFFFFFFFFFFELL) != v5);
  }

  return result;
}

uint64_t sub_29782F3A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_29782F3D4(v2);
  }

  return a1;
}

void sub_29782F3D4(std::__shared_weak_count *a1)
{
  if (sub_29782F41C(a1))
  {

    std::__shared_weak_count::__release_weak(a1);
  }
}

BOOL sub_29782F41C(atomic_ullong *a1)
{
  v2 = sub_29782F480(a1 + 1);
  if (v2 == -1)
  {
    (*(*a1 + 16))(a1);
  }

  return v2 == -1;
}

uint64_t sub_29782F49C(uint64_t a1, uint64_t a2)
{
  v3 = sub_297818B70(a1, a2);
  sub_29782F4D0(a1, v3);
  return a1;
}

uint64_t sub_29782F4D0(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29782F4D0(result, *a2);
    sub_29782F4D0(v3, a2[1]);
    v5 = nullsub_1(v3, v4);
    v7 = j_nullsub_1(a2 + 4, v6);
    sub_29782F54C(v5, v7);

    return sub_297809C98(v5, a2, 1);
  }

  return result;
}

uint64_t sub_29782F588(uint64_t a1)
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
          sub_29782F610(v5, a1 + 24);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  sub_297818154(a1 + 24);
  return a1;
}

uint64_t sub_29782F610(unsigned int *a1, uint64_t a2)
{
  sub_2977FB5F0(a1);

  return nullsub_1(a2, a1);
}

void **sub_29782F654(void **a1)
{
  sub_29782F684(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_29782F684(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_29782F360();
    v4 = sub_29782F70C();
    v5 = sub_297803A7C(a1);
    result = sub_29782F364(a1);
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

        v5 += 3;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t *sub_29782F71C(uint64_t *a1, uint64_t *a2)
{
  sub_2977FDE84(a1, a2);

  return sub_2977FDE84(a1 + 1, a2 + 1);
}

void *sub_29782F75C(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_29782F774(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t sub_29782F7A4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29780EF2C(a1, a2, a3);
  if (v4 == -1)
  {

    return sub_29781AD1C(a1);
  }

  else
  {
    sub_29781C144(&v6, *a1 + 8 * v4, 1);
    return v6;
  }
}

uint64_t sub_29782F814(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = sub_29781AD54(&v5);
  sub_29782F864(a1, v3);
  return sub_29782F610(v3, a1 + 24);
}

uint64_t sub_29782F868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_29782F93C(a1, &v15, a2);
  v8 = *v7;
  v14 = 0;
  if (!v8)
  {
    v9 = v7;
    sub_29782F9F8(a1, a3, a4, v13);
    v10 = v15;
    v11 = sub_2977FB720(v13);
    sub_297819DD8(a1, v10, v9, v11);
    v8 = sub_2978058AC(v13);
    v14 = 1;
    sub_297819E64(v13);
  }

  sub_2977FDEF4(v13, v8);
  sub_29780EB70(&v16, v13, &v14);
  return v16;
}

void *sub_29782F93C(uint64_t a1, void *a2, uint64_t a3)
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
        if (!sub_29782FAAC(v12, a3, (v6 + 4)))
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
      if (!sub_29782FAF4(v13, (v6 + 4), a3))
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

uint64_t sub_29782F9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = nullsub_1(a1, a2);
  v8 = sub_29782FD68(v7, 1uLL);
  sub_297819E70(&v14, v7, 0);
  v9 = sub_297819E74(a4, v8, &v14);
  v10 = sub_2977FB720(v9);
  v12 = j_nullsub_1(v10 + 32, v11);
  sub_29782FD6C(v7, v12, a2, a3);
  result = sub_297819E7C(a4);
  *(result + 8) = 1;
  return result;
}

uint64_t sub_29782FAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = nullsub_1(a3, a2);

  return sub_29782FB3C(a1, a2, v5);
}

uint64_t sub_29782FAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = nullsub_1(a2, a2);

  return sub_29782FB3C(a1, v5, a3);
}

uint64_t sub_29782FB48(uint64_t a1, uint64_t a2)
{
  v7[0] = sub_29782FBC4(a1, a1 + 8);
  v7[1] = v3;
  v6[0] = sub_29782FBC4(a2, a2 + 8);
  v6[1] = v4;
  return sub_29782FB98(v7, v6);
}

uint64_t sub_29782FBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *sub_297803A7C(a2);
  if (v5 < *sub_297803A7C(a3))
  {
    return 1;
  }

  v7 = *sub_297803A7C(a3);
  if (v7 >= *sub_297803A7C(a2))
  {
    return sub_29782FC88(&v8, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29782FC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *sub_29782FD1C(a2);
  if (v5 < *sub_29782FD1C(a3))
  {
    return 1;
  }

  v7 = *sub_29782FD1C(a3);
  if (v7 >= *sub_29782FD1C(a2))
  {
    return sub_2977FD678();
  }

  else
  {
    return 0;
  }
}

void *sub_29782FD30(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FE390(a1, a2);
  sub_2977FE390(v5 + 1, a3);
  return a1;
}

uint64_t sub_29782FD70(uint64_t a1, unint64_t a2)
{
  if (sub_29782FDB8() < a2)
  {
    sub_29780339C();
  }

  return sub_29782FDBC(a2);
}

_OWORD *sub_29782FE18(_OWORD *a1, uint64_t a2)
{
  *a1 = *sub_297803A7C(a2);
  sub_29780AE44(a1 + 1);
  return a1;
}

uint64_t sub_29782FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_29782F93C(a1, &v15, a2);
  v8 = *v7;
  v14 = 0;
  if (!v8)
  {
    v9 = v7;
    sub_29782FF28(a1, a3, a4, v13);
    v10 = v15;
    v11 = sub_2977FB720(v13);
    sub_297819DD8(a1, v10, v9, v11);
    v8 = sub_2978058AC(v13);
    v14 = 1;
    sub_29782FFDC(v13);
  }

  sub_2977FDEF4(v13, v8);
  sub_29780EB70(&v16, v13, &v14);
  return v16;
}

uint64_t sub_29782FF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = nullsub_1(a1, a2);
  v8 = sub_29782FFE0(v7, 1uLL);
  sub_297819E70(&v14, v7, 0);
  v9 = sub_297819E74(a4, v8, &v14);
  v10 = sub_2977FB720(v9);
  v12 = j_nullsub_1(v10 + 32, v11);
  sub_29782FFE4(v7, v12, a2, a3);
  result = sub_297819E7C(a4);
  *(result + 8) = 1;
  return result;
}

uint64_t sub_29782FFE8(uint64_t a1, unint64_t a2)
{
  if (sub_297830030() < a2)
  {
    sub_29780339C();
  }

  return sub_297830034(a2);
}

_OWORD *sub_297830088(_OWORD *a1, uint64_t a2)
{
  *a1 = *sub_297803A7C(a2);
  sub_29782E90C((a1 + 1));
  return a1;
}

uint64_t *sub_2978300F0(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_29783010C((result + 1), v3);
  }

  return result;
}

uint64_t sub_29783010C(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 8) == 1)
  {
    v4 = *result;
    v5 = j_nullsub_1(a2 + 32, a2);
    result = sub_29782F54C(v4, v5);
  }

  if (a2)
  {
    v6 = *v3;

    return sub_297809C98(v6, a2, 1);
  }

  return result;
}

uint64_t sub_29783018C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    v3 = nullsub_1(a1, a2);
    j_std::string::~string(v3);
  }

  return a1;
}

uint64_t sub_2978301C4(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = a2;
  if (!*a2)
  {
    goto LABEL_4;
  }

  if (!*(a2 + 8))
  {
    v5 = a2;
    goto LABEL_7;
  }

  v5 = sub_2978305E4(a2);
  v4 = *v5;
  if (!*v5)
  {
LABEL_4:
    v4 = v5[1];
    if (!v4)
    {
      v6 = 1;
      goto LABEL_8;
    }
  }

LABEL_7:
  v6 = 0;
  *(v4 + 16) = v5[2];
LABEL_8:
  result = sub_29781A11C(v5);
  if (result)
  {
    *v5[2] = v4;
    if (v5 == a1)
    {
      v9 = 0;
      a1 = v4;
      goto LABEL_13;
    }

    result = sub_2977FD5B0(v5);
    v8 = (result + 8);
  }

  else
  {
    result = sub_2977FD5B0(v5);
    *(result + 8) = v4;
    v8 = v5[2];
  }

  v9 = *v8;
LABEL_13:
  v10 = *(v5 + 24);
  if (v5 != a2)
  {
    v5[2] = *(a2 + 16);
    if (sub_29781A11C(a2))
    {
      v11 = v5[2];
    }

    else
    {
      v11 = (sub_2977FD5B0(v5) + 8);
    }

    *v11 = v5;
    v12 = *a2;
    *v5 = *a2;
    sub_29781A230(v12, v5);
    result = *(a2 + 8);
    v5[1] = result;
    if (result)
    {
      result = sub_29781A230(result, v5);
    }

    *(v5 + 24) = *(a2 + 24);
    if (a1 == a2)
    {
      a1 = v5;
    }
  }

  if (!a1 || !v10)
  {
    return result;
  }

  if (!v6)
  {
    *(v4 + 24) = 1;
    return result;
  }

  while (1)
  {
    v13 = sub_29781A11C(v9);
    v14 = *(v9 + 24);
    if (!v13)
    {
      break;
    }

    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      *(sub_2977FD5B0(v9) + 24) = 0;
      v15 = sub_2977FD5B0(v9);
      sub_29781A1B0(v15);
      v16 = *(v9 + 8);
      if (a1 == v16)
      {
        a1 = v9;
      }

      v9 = *v16;
    }

    v17 = *v9;
    if (*v9 && *(v17 + 24) != 1)
    {
      goto LABEL_64;
    }

    v18 = *(v9 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      if (!v17)
      {
        goto LABEL_63;
      }

      if (*(v17 + 24))
      {
        v18 = *(v9 + 8);
LABEL_63:
        *(v18 + 24) = 1;
        *(v9 + 24) = 0;
        sub_29781A130(v9);
        v9 = sub_2977FD5B0(v9);
      }

LABEL_64:
      *(v9 + 24) = *(sub_2977FD5B0(v9) + 24);
      *(sub_2977FD5B0(v9) + 24) = 1;
      *(*v9 + 24) = 1;
      v25 = sub_2977FD5B0(v9);

      return sub_29781A1B0(v25);
    }

    *(v9 + 24) = 0;
    result = sub_2977FD5B0(v9);
    v19 = result;
    if (*(result + 24) != 1 || result == a1)
    {
      goto LABEL_52;
    }

LABEL_46:
    if (sub_29781A11C(v19))
    {
      v23 = (sub_2977FD5B0(v19) + 8);
    }

    else
    {
      v23 = *(v19 + 16);
    }

    v9 = *v23;
  }

  if ((*(v9 + 24) & 1) == 0)
  {
    *(v9 + 24) = 1;
    *(sub_2977FD5B0(v9) + 24) = 0;
    v20 = sub_2977FD5B0(v9);
    sub_29781A130(v20);
    if (a1 == *v9)
    {
      a1 = v9;
    }

    v9 = *(*v9 + 8);
  }

  v21 = *v9;
  if (!*v9 || *(v21 + 24) == 1)
  {
    v22 = *(v9 + 8);
    if (v22 && *(v22 + 24) != 1)
    {
      goto LABEL_55;
    }

    *(v9 + 24) = 0;
    result = sub_2977FD5B0(v9);
    v19 = result;
    if (result == a1 || (*(result + 24) & 1) == 0)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_46;
  }

  v22 = *(v9 + 8);
  if (!v22)
  {
    goto LABEL_56;
  }

LABEL_55:
  if (*(v22 + 24) == 1)
  {
LABEL_56:
    *(v21 + 24) = 1;
    *(v9 + 24) = 0;
    sub_29781A1B0(v9);
    v9 = sub_2977FD5B0(v9);
  }

  *(v9 + 24) = *(sub_2977FD5B0(v9) + 24);
  *(sub_2977FD5B0(v9) + 24) = 1;
  *(*(v9 + 8) + 24) = 1;
  v24 = sub_2977FD5B0(v9);

  return sub_29781A130(v24);
}

void *sub_297830568(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {

    return sub_2978305D0(v2);
  }

  else
  {
      ;
    }

    return *(v1 + 16);
  }
}

void *sub_2978305D0(void *a1)
{
  do
  {
    v1 = a1;
    a1 = *a1;
  }

  while (a1);
  return v1;
}

void *sub_2978305E4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (v2)
  {

    return sub_2978305D0(v2);
  }

  else
  {
      ;
    }

    return sub_2977FD5B0(v1);
  }
}

uint64_t sub_29783065C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = 0;
  result = sub_29783069C(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_29783069C(uint64_t a1, uint64_t *a2, uint64_t **a3)
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
    v13 = (v6 + 24 * v12);
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
        v13 = (v6 + 24 * v12);
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

uint64_t sub_2978307D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a4 & 1) == 0)
  {
    sub_297830804(a1);
  }

  return a1;
}

uint64_t sub_297830804(uint64_t **a1)
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
      v4 = *a1 + 3;
      *a1 = v4;
    }

    while (v4 != v6);
  }

  return result;
}

__n128 sub_297830884(uint64_t a1, void *a2, __n128 *a3)
{
  *a1 = *a2;
  result = *a3;
  *(a1 + 8) = *a3;
  return result;
}

__n128 sub_297830898(uint64_t a1, uint64_t *a2, __n128 *a3, uint64_t *a4)
{
  v6 = sub_2978308D4(a1, a2, a4);
  *v6 = *a2;
  result = *a3;
  *(v6 + 1) = *a3;
  return result;
}

uint64_t *sub_2978308D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978309C0(a1, (2 * v6));
    sub_29783065C(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_2978309C0(a1, v7);
    sub_29783065C(a1, a2, &v10);
  }

  sub_29782B4D8(a1);
  v8 = sub_29782F360();
  if (!sub_297807F98(*v10, v8))
  {
    sub_29782B514(a1);
  }

  return v10;
}

void sub_2978309C4(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29782F248(a1, *v5);
  if (v4)
  {
    sub_297830A54(a1, v4, v4 + 24 * v3);
    j__free(v4);
  }

  else
  {
    sub_29782F298(a1);
  }
}

uint64_t sub_297830A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29782F298(a1);
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
          sub_29783065C(a1, a2, &v9);
          *v9 = *a2;
          *(v9 + 8) = *(a2 + 8);
          result = sub_29782B4D8(a1);
        }
      }

      a2 += 24;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t sub_297830B10(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v23[12] = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v11 = (*(*a5 + 24))(a5, a1, a2, a3, a4, a6);
  }

  else if (a4 && (a3 & 1) != 0)
  {
    sub_29780AE44(&v21);
    sub_2978036E0(v23, a1);
    v22[0] = (*(*a6 + 24))(a6, v23, &v21);
    v22[1] = v12;
    if (sub_297805430(v22))
    {
      v11 = 1;
    }

    else
    {
      v15 = sub_2977FB720(&v21);
      (*(*v15 + 16))(v23);
      if (sub_29782EC78(v23))
      {
        v17 = j_nullsub_1(v23, v16);
        sub_297830D54(v17, a2);
        sub_29782E6D0(a4, &v21);
        v11 = 0;
      }

      else
      {
        sub_29782F0B4(a4);
        v11 = 1;
      }

      sub_29782EC88(v23, v18);
    }

    sub_29782E714(&v21);
  }

  else
  {
    sub_2978036E0(v22, a1);
    (*(*a6 + 16))(v23, a6, v22);
    if (sub_29782EC78(v23))
    {
      v14 = j_nullsub_1(v23, v13);
      sub_297830D54(v14, a2);
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    sub_29782EC88(v23, v13);
  }

  if (v11 == 1)
  {
    goto LABEL_21;
  }

  if (*(a2 + 56) != (v8 ^ 1))
  {
    if (a4)
    {
      sub_29782F0B4(a4);
    }

LABEL_21:
    result = 1;
    goto LABEL_22;
  }

  result = 0;
LABEL_22:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297830D54(uint64_t a1, uint64_t a2)
{
  v8[0] = sub_297830E08(a1);
  v8[1] = v4;
  sub_297801F5C(v8, &v9);
  sub_2978046C4(a2, &v9);
  std::string::~string(&v9);
  *(a2 + 24) = sub_297830E34(a1);
  v9.__r_.__value_.__r.__words[0] = sub_297830E3C(a1);
  LODWORD(v9.__r_.__value_.__r.__words[1]) = v5;
  *(a2 + 32) = sub_2978076D4(&v9);
  *(a2 + 40) = sub_297830E48(a1);
  *(a2 + 48) = v6;
  *(a2 + 56) = sub_297848448(a1);
  result = sub_297830E54(a1);
  *(a2 + 57) = result == 7;
  *(a2 + 58) = 0;
  *(a2 + 59) = *(a1 + 80);
  return result;
}

uint64_t sub_297830E5C(uint64_t result)
{
  *result = 6;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_297830E80()
{
  *sub_2977FA198(8) = 0;

  return sub_297830EB0();
}

uint64_t sub_297830EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29782DD3C(a1, 0x2000);
  *(v6 + 160) = a3;
  *(v6 + 168) = a2;
  sub_297830F28(v6, a2);
  sub_2977FB7B4(v9, "import");
  v7 = sub_297828D2C(a1, v9[0], v9[1]);
  sub_297831F68(v7, 1);
  return a1;
}

uint64_t sub_297830F28(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 3) & 0x10) != 0)
  {
    sub_2977FB7B4(&v6, "and");
    sub_29783B968(v6, v7, 28, a1);
    if ((*(a2 + 3) & 0x10) != 0)
    {
      sub_2977FB7B4(&v6, "and_eq");
      sub_29783B968(v6, v7, 29, a1);
      if ((*(a2 + 3) & 0x10) != 0)
      {
        sub_2977FB7B4(&v6, "bitand");
        sub_29783B968(v6, v7, 27, a1);
        if ((*(a2 + 3) & 0x10) != 0)
        {
          sub_2977FB7B4(&v6, "bitor");
          sub_29783B968(v6, v7, 56, a1);
          if ((*(a2 + 3) & 0x10) != 0)
          {
            sub_2977FB7B4(&v6, "compl");
            sub_29783B968(v6, v7, 39, a1);
            if ((*(a2 + 3) & 0x10) != 0)
            {
              sub_2977FB7B4(&v6, "not");
              sub_29783B968(v6, v7, 40, a1);
              if ((*(a2 + 3) & 0x10) != 0)
              {
                sub_2977FB7B4(&v6, "not_eq");
                sub_29783B968(v6, v7, 41, a1);
                if ((*(a2 + 3) & 0x10) != 0)
                {
                  sub_2977FB7B4(&v6, "or");
                  sub_29783B968(v6, v7, 57, a1);
                  if ((*(a2 + 3) & 0x10) != 0)
                  {
                    sub_2977FB7B4(&v6, "or_eq");
                    sub_29783B968(v6, v7, 58, a1);
                    if ((*(a2 + 3) & 0x10) != 0)
                    {
                      sub_2977FB7B4(&v6, "xor");
                      sub_29783B968(v6, v7, 54, a1);
                      if ((*(a2 + 3) & 0x10) != 0)
                      {
                        sub_2977FB7B4(&v6, "xor_eq");
                        sub_29783B968(v6, v7, 55, a1);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__is_literal_type");
    sub_29783B7D0(v6, v7, 209, 2u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "global");
    sub_29783B7D0(v6, v7, 256, 0x200u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "local");
    sub_29783B7D0(v6, v7, 257, 0x200u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "constant");
    sub_29783B7D0(v6, v7, 258, 0x200u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "private");
    sub_29783B7D0(v6, v7, 259, 0x200u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "kernel");
    sub_29783B7D0(v6, v7, 260, 0x200u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "read_only");
    sub_29783B7D0(v6, v7, 261, 0x200u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "write_only");
    sub_29783B7D0(v6, v7, 262, 0x200u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "read_write");
    sub_29783B7D0(v6, v7, 263, 0x200u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__fp16");
    sub_29783B7D0(v6, v7, 269, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__alignof__");
    sub_29783B7D0(v6, v7, 166, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__asm");
    sub_29783B7D0(v6, v7, 122, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__asm__");
    sub_29783B7D0(v6, v7, 122, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__attribute__");
    sub_29783B7D0(v6, v7, 167, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__complex");
    sub_29783B7D0(v6, v7, 113, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__complex__");
    sub_29783B7D0(v6, v7, 113, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__const");
    sub_29783B7D0(v6, v7, 79, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__const__");
    sub_29783B7D0(v6, v7, 79, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__decltype");
    sub_29783B7D0(v6, v7, 157, 2u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__imag__");
    sub_29783B7D0(v6, v7, 173, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__inline");
    sub_29783B7D0(v6, v7, 91, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__inline__");
    sub_29783B7D0(v6, v7, 91, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__nullptr");
    sub_29783B7D0(v6, v7, 159, 2u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__real__");
    sub_29783B7D0(v6, v7, 176, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__restrict");
    sub_29783B7D0(v6, v7, 95, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__restrict__");
    sub_29783B7D0(v6, v7, 95, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__signed");
    sub_29783B7D0(v6, v7, 98, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__signed__");
    sub_29783B7D0(v6, v7, 98, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__typeof");
    sub_29783B7D0(v6, v7, 180, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__typeof__");
    sub_29783B7D0(v6, v7, 180, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__volatile");
    sub_29783B7D0(v6, v7, 107, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__volatile__");
    sub_29783B7D0(v6, v7, 107, 0xEFFFu, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__int8");
    sub_29783B7D0(v6, v7, 78, 0x10u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__int16");
    sub_29783B7D0(v6, v7, 97, 0x10u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__int32");
    sub_29783B7D0(v6, v7, 92, 0x10u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__wchar_t");
    sub_29783B7D0(v6, v7, 151, 0x10u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "_asm");
    sub_29783B7D0(v6, v7, 122, 0x10u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "_alignof");
    sub_29783B7D0(v6, v7, 166, 0x10u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__builtin_alignof");
    sub_29783B7D0(v6, v7, 166, 0x10u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "_cdecl");
    sub_29783B7D0(v6, v7, 250, 0x110u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "_fastcall");
    sub_29783B7D0(v6, v7, 252, 0x110u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "_stdcall");
    sub_29783B7D0(v6, v7, 251, 0x110u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "_thiscall");
    sub_29783B7D0(v6, v7, 253, 0x10u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "_uuidof");
    sub_29783B7D0(v6, v7, 282, 0x110u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "_inline");
    sub_29783B7D0(v6, v7, 91, 0x10u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "_declspec");
    sub_29783B7D0(v6, v7, 249, 0x10u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "_pascal");
    sub_29783B7D0(v6, v7, 266, 0x100u, a2, a1);
  }

  if (!sub_29783B9A8(a2))
  {
    sub_2977FB7B4(&v6, "__char16_t");
    sub_29783B7D0(v6, v7, 154, 2u, a2, a1);
  }

  result = sub_29783B9A8(a2);
  if (!result)
  {
    sub_2977FB7B4(&v6, "__char32_t");
    result = sub_29783B7D0(v6, v7, 155, 2u, a2, a1);
  }

  v5 = *a2;
  if ((*a2 & 0x400) != 0)
  {
    sub_2977FB7B4(&v6, "not_keyword");
    result = sub_29783B9B4(v6, v7, 0, a1);
    v5 = *a2;
    if ((*a2 & 0x400) != 0)
    {
      sub_2977FB7B4(&v6, "class");
      result = sub_29783B9B4(v6, v7, 1, a1);
      v5 = *a2;
      if ((*a2 & 0x400) != 0)
      {
        sub_2977FB7B4(&v6, "compatibility_alias");
        result = sub_29783B9B4(v6, v7, 2, a1);
        v5 = *a2;
        if ((*a2 & 0x400) != 0)
        {
          sub_2977FB7B4(&v6, "defs");
          result = sub_29783B9B4(v6, v7, 3, a1);
          v5 = *a2;
          if ((*a2 & 0x400) != 0)
          {
            sub_2977FB7B4(&v6, "encode");
            result = sub_29783B9B4(v6, v7, 4, a1);
            v5 = *a2;
            if ((*a2 & 0x400) != 0)
            {
              sub_2977FB7B4(&v6, "end");
              result = sub_29783B9B4(v6, v7, 5, a1);
              v5 = *a2;
              if ((*a2 & 0x400) != 0)
              {
                sub_2977FB7B4(&v6, "implementation");
                result = sub_29783B9B4(v6, v7, 6, a1);
                v5 = *a2;
                if ((*a2 & 0x400) != 0)
                {
                  sub_2977FB7B4(&v6, "interface");
                  result = sub_29783B9B4(v6, v7, 7, a1);
                  v5 = *a2;
                  if ((*a2 & 0x400) != 0)
                  {
                    sub_2977FB7B4(&v6, "private");
                    result = sub_29783B9B4(v6, v7, 8, a1);
                    v5 = *a2;
                    if ((*a2 & 0x400) != 0)
                    {
                      sub_2977FB7B4(&v6, "protected");
                      result = sub_29783B9B4(v6, v7, 9, a1);
                      v5 = *a2;
                      if ((*a2 & 0x400) != 0)
                      {
                        sub_2977FB7B4(&v6, "protocol");
                        result = sub_29783B9B4(v6, v7, 10, a1);
                        v5 = *a2;
                        if ((*a2 & 0x400) != 0)
                        {
                          sub_2977FB7B4(&v6, "public");
                          result = sub_29783B9B4(v6, v7, 11, a1);
                          v5 = *a2;
                          if ((*a2 & 0x400) != 0)
                          {
                            sub_2977FB7B4(&v6, "selector");
                            result = sub_29783B9B4(v6, v7, 12, a1);
                            v5 = *a2;
                            if ((*a2 & 0x400) != 0)
                            {
                              sub_2977FB7B4(&v6, "throw");
                              result = sub_29783B9B4(v6, v7, 13, a1);
                              v5 = *a2;
                              if ((*a2 & 0x400) != 0)
                              {
                                sub_2977FB7B4(&v6, "try");
                                result = sub_29783B9B4(v6, v7, 14, a1);
                                v5 = *a2;
                                if ((*a2 & 0x400) != 0)
                                {
                                  sub_2977FB7B4(&v6, "catch");
                                  result = sub_29783B9B4(v6, v7, 15, a1);
                                  v5 = *a2;
                                  if ((*a2 & 0x400) != 0)
                                  {
                                    sub_2977FB7B4(&v6, "finally");
                                    result = sub_29783B9B4(v6, v7, 16, a1);
                                    v5 = *a2;
                                    if ((*a2 & 0x400) != 0)
                                    {
                                      sub_2977FB7B4(&v6, "synchronized");
                                      result = sub_29783B9B4(v6, v7, 17, a1);
                                      v5 = *a2;
                                      if ((*a2 & 0x400) != 0)
                                      {
                                        sub_2977FB7B4(&v6, "autoreleasepool");
                                        result = sub_29783B9B4(v6, v7, 18, a1);
                                        v5 = *a2;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v5 & 0x800) != 0)
  {
    sub_2977FB7B4(&v6, "property");
    result = sub_29783B9B4(v6, v7, 19, a1);
    if ((*(a2 + 1) & 8) != 0)
    {
      sub_2977FB7B4(&v6, "package");
      result = sub_29783B9B4(v6, v7, 20, a1);
      if ((*(a2 + 1) & 8) != 0)
      {
        sub_2977FB7B4(&v6, "required");
        result = sub_29783B9B4(v6, v7, 21, a1);
        if ((*(a2 + 1) & 8) != 0)
        {
          sub_2977FB7B4(&v6, "optional");
          result = sub_29783B9B4(v6, v7, 22, a1);
          if ((*(a2 + 1) & 8) != 0)
          {
            sub_2977FB7B4(&v6, "synthesize");
            result = sub_29783B9B4(v6, v7, 23, a1);
            if ((*(a2 + 1) & 8) != 0)
            {
              sub_2977FB7B4(&v6, "dynamic");
              result = sub_29783B9B4(v6, v7, 24, a1);
              if ((*(a2 + 1) & 8) != 0)
              {
                sub_2977FB7B4(&v6, "import");
                result = sub_29783B9B4(v6, v7, 25, a1);
                if ((*(a2 + 1) & 8) != 0)
                {
                  sub_2977FB7B4(&v6, "partial_interface");
                  result = sub_29783B9B4(v6, v7, 26, a1);
                }
              }
            }
          }
        }
      }
    }
  }

  if ((*(a2 + 25) & 8) != 0)
  {
    sub_2977FB7B4(&v6, "__unknown_anytype");
    return sub_29783B7D0(v6, v7, 494, 0xEFFFu, a2, a1);
  }

  return result;
}

unsigned int *sub_297831F68(unsigned int *a1, int a2)
{
  if (a2)
  {
    v2 = 0x80000000;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 & 0x80000000 | *a1 & 0x7FFFFFFF;
  *a1 = v3;
  if (!a2)
  {
    return sub_29783C17C(a1);
  }

  *a1 = v3 | 0x4000000;
  return a1;
}

uint64_t sub_297831F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v797[0] = a2;
  v797[1] = a3;
  v4 = sub_2977FB7B8(v797);
  result = 0;
  switch(v4)
  {
    case 2:
      v6 = sub_297803A20(v797, 0);
      if (v6 != 105)
      {
        if (v6 == 100 && sub_297803A20(v797, 1) == 111)
        {
          sub_2977FB7B4(&v795, "do");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 82;
          goto LABEL_2558;
        }

        return 0;
      }

      v161 = sub_297803A20(v797, 1);
      if (v161 == 110)
      {
        sub_2977FB7B4(&v795, "in");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 357;
        goto LABEL_2642;
      }

      if (v161 != 102)
      {
        return 0;
      }

      sub_2977FB7B4(&v795, "if");
      v7 = *(a1 + 168);
      v8 = v795;
      v9 = v796;
      v10 = 90;
      goto LABEL_2558;
    case 3:
      v78 = sub_297803A20(v797, 0);
      result = 0;
      if (v78 <= 0x6Du)
      {
        if (v78 == 97)
        {
          if (*(sub_2977FB720(v797) + 1) != 28019)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "asm");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 122;
          v30 = 32778;
          return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
        }

        if (v78 != 102)
        {
          if (v78 != 105)
          {
            return result;
          }

          if (*(sub_2977FB720(v797) + 1) == 29806)
          {
            sub_2977FB7B4(&v795, "int");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 92;
            goto LABEL_2558;
          }

          return 0;
        }

        if (*(sub_2977FB720(v797) + 1) != 29295)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "for");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 88;
        goto LABEL_2558;
      }

      if (v78 == 110)
      {
        if (*(sub_2977FB720(v797) + 1) != 30565)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "new");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 135;
        goto LABEL_333;
      }

      if (v78 != 111)
      {
        if (v78 != 116)
        {
          return result;
        }

        if (*(sub_2977FB720(v797) + 1) == 31090)
        {
          sub_2977FB7B4(&v795, "try");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 146;
          goto LABEL_333;
        }

        return 0;
      }

      if (*(sub_2977FB720(v797) + 1) != 29813)
      {
        return 0;
      }

      sub_2977FB7B4(&v795, "out");
      v7 = *(a1 + 168);
      v8 = v795;
      v9 = v796;
      v10 = 395;
      goto LABEL_2642;
    case 4:
      v60 = sub_297803A20(v797, 0);
      result = 0;
      if (v60 <= 0x67u)
      {
        if (v60 > 0x64u)
        {
          if (v60 != 101)
          {
            if (v60 == 102)
            {
              v297 = sub_2977FB720(v797);
              if (*(v297 + 1) == 24940 && *(v297 + 3) == 116)
              {
                sub_2977FB7B4(&v795, "flat");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 323;
                goto LABEL_2642;
              }
            }

            else
            {
              v171 = sub_2977FB720(v797);
              if (*(v171 + 1) == 29807 && *(v171 + 3) == 111)
              {
                sub_2977FB7B4(&v795, "goto");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 89;
                goto LABEL_2558;
              }
            }

            return 0;
          }

          v292 = sub_297803A20(v797, 1);
          if (v292 != 110)
          {
            if (v292 == 108 && *(sub_2977FB720(v797) + 2) == 25971)
            {
              sub_2977FB7B4(&v795, "else");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 84;
              goto LABEL_2558;
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 2) != 28021)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "enum");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 85;
        }

        else
        {
          if (v60 == 97)
          {
            v288 = sub_2977FB720(v797);
            if (*(v288 + 1) == 29813 && *(v288 + 3) == 111)
            {
              sub_2977FB7B4(&v795, "auto");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 75;
              goto LABEL_2558;
            }

            return 0;
          }

          if (v60 == 98)
          {
            v294 = sub_2977FB720(v797);
            if (*(v294 + 1) == 28527 && *(v294 + 3) == 108)
            {
              sub_2977FB7B4(&v795, "BOOL");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 123;
              goto LABEL_1856;
            }

            return 0;
          }

          if (v60 != 99)
          {
            return result;
          }

          v61 = sub_297803A20(v797, 1);
          if (v61 == 104)
          {
            if (*(sub_2977FB720(v797) + 2) != 29281)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "char");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 78;
          }

          else
          {
            if (v61 != 97 || sub_297803A20(v797, 2) != 115)
            {
              return 0;
            }

            v62 = sub_297803A20(v797, 3);
            if (v62 == 116)
            {
              sub_2977FB7B4(&v795, "cast");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 301;
              goto LABEL_2642;
            }

            if (v62 != 101)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "case");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 77;
          }
        }

        goto LABEL_2558;
      }

      if (v60 > 0x73u)
      {
        if (v60 == 116)
        {
          v293 = sub_297803A20(v797, 1);
          if (v293 != 114)
          {
            if (v293 == 104 && *(sub_2977FB720(v797) + 2) == 29545)
            {
              sub_2977FB7B4(&v795, "this");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 143;
              goto LABEL_1727;
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 2) != 25973)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "true");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 145;
          goto LABEL_1856;
        }

        if (v60 == 117)
        {
          v299 = sub_2977FB720(v797);
          if (*(v299 + 1) == 28265 && *(v299 + 3) == 116)
          {
            sub_2977FB7B4(&v795, "uint");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 437;
            goto LABEL_2642;
          }

          return 0;
        }

        if (v60 != 118)
        {
          return result;
        }

        v173 = sub_297803A20(v797, 1);
        if (v173 == 111)
        {
          if (*(sub_2977FB720(v797) + 2) != 25705)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "void");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 106;
          goto LABEL_2558;
        }

        if (v173 != 101 || sub_297803A20(v797, 2) != 99)
        {
          return 0;
        }

        v174 = sub_297803A20(v797, 3);
        if (v174 == 52)
        {
          sub_2977FB7B4(&v795, "vec4");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 457;
        }

        else if (v174 == 51)
        {
          sub_2977FB7B4(&v795, "vec3");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 456;
        }

        else
        {
          if (v174 != 50)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "vec2");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 455;
        }
      }

      else
      {
        switch(v60)
        {
          case 'h':
            v290 = sub_2977FB720(v797);
            if (*(v290 + 1) == 27745 && *(v290 + 3) == 102)
            {
              sub_2977FB7B4(&v795, "half");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 269;
              v30 = 49152;
              return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
            }

            return 0;
          case 'l':
            if (sub_297803A20(v797, 1) != 111)
            {
              return 0;
            }

            v296 = sub_297803A20(v797, 2);
            if (v296 != 119)
            {
              if (v296 == 110 && sub_297803A20(v797, 3) == 103)
              {
                sub_2977FB7B4(&v795, "long");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 93;
                goto LABEL_2558;
              }

              return 0;
            }

            if (sub_297803A20(v797, 3) != 112)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "lowp");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 379;
            break;
          case 'm':
            if (*(sub_2977FB720(v797) + 1) != 29793)
            {
              return 0;
            }

            v129 = sub_297803A20(v797, 3);
            if (v129 == 52)
            {
              sub_2977FB7B4(&v795, "mat4");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 388;
            }

            else if (v129 == 51)
            {
              sub_2977FB7B4(&v795, "mat3");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 384;
            }

            else
            {
              if (v129 != 50)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "mat2");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 380;
            }

            break;
          default:
            return result;
        }
      }

      goto LABEL_2642;
    case 5:
      v91 = sub_297803A20(v797, 0);
      result = 0;
      if (v91 > 0x68u)
      {
        if (v91 > 0x73u)
        {
          if (v91 == 116)
          {
            if (*(sub_2977FB720(v797) + 1) != 2003792488)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "throw");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 144;
            goto LABEL_333;
          }

          if (v91 != 117)
          {
            if (v91 != 119)
            {
              return result;
            }

            if (*(sub_2977FB720(v797) + 1) == 1701603688)
            {
              sub_2977FB7B4(&v795, "while");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 108;
              goto LABEL_2558;
            }

            return 0;
          }

          v314 = sub_297803A20(v797, 1);
          if (v314 != 118)
          {
            if (v314 == 115)
            {
              v541 = sub_2977FB720(v797);
              if (*(v541 + 2) == 28265 && *(v541 + 4) == 103)
              {
                sub_2977FB7B4(&v795, "using");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 149;
                goto LABEL_1727;
              }
            }

            else if (v314 == 110)
            {
              v315 = sub_2977FB720(v797);
              if (*(v315 + 2) == 28521 && *(v315 + 4) == 110)
              {
                sub_2977FB7B4(&v795, "union");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 104;
                goto LABEL_2558;
              }
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 2) != 25445)
          {
            return 0;
          }

          v543 = sub_297803A20(v797, 4);
          if (v543 == 52)
          {
            sub_2977FB7B4(&v795, "uvec4");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 453;
          }

          else if (v543 == 51)
          {
            sub_2977FB7B4(&v795, "uvec3");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 452;
          }

          else
          {
            if (v543 != 50)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "uvec2");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 451;
          }
        }

        else
        {
          switch(v91)
          {
            case 'i':
              v304 = sub_297803A20(v797, 1);
              if (v304 == 118)
              {
                if (*(sub_2977FB720(v797) + 2) != 25445)
                {
                  return 0;
                }

                v494 = sub_297803A20(v797, 4);
                if (v494 == 52)
                {
                  sub_2977FB7B4(&v795, "ivec4");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 377;
                }

                else if (v494 == 51)
                {
                  sub_2977FB7B4(&v795, "ivec3");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 376;
                }

                else
                {
                  if (v494 != 50)
                  {
                    return 0;
                  }

                  sub_2977FB7B4(&v795, "ivec2");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 375;
                }
              }

              else
              {
                if (v304 != 110)
                {
                  return 0;
                }

                v305 = sub_297803A20(v797, 2);
                if (v305 != 112)
                {
                  if (v305 == 111 && *(sub_2977FB720(v797) + 3) == 29813)
                  {
                    sub_2977FB7B4(&v795, "inout");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 358;
                    goto LABEL_2642;
                  }

                  return 0;
                }

                if (*(sub_2977FB720(v797) + 3) != 29813)
                {
                  return 0;
                }

                sub_2977FB7B4(&v795, "input");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 359;
              }

              break;
            case 'p':
              if (*(sub_2977FB720(v797) + 1) != 1751348321)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "patch");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 398;
              break;
            case 's':
              if (*(sub_2977FB720(v797) + 1) == 1953656680)
              {
                sub_2977FB7B4(&v795, "short");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 97;
                goto LABEL_2558;
              }

              return 0;
            default:
              return result;
          }
        }
      }

      else if (v91 > 0x63u)
      {
        switch(v91)
        {
          case 'd':
            v306 = sub_297803A20(v797, 1);
            if (v306 == 118)
            {
              if (*(sub_2977FB720(v797) + 2) != 25445)
              {
                return 0;
              }

              v495 = sub_297803A20(v797, 4);
              if (v495 == 52)
              {
                sub_2977FB7B4(&v795, "dvec4");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 320;
              }

              else if (v495 == 51)
              {
                sub_2977FB7B4(&v795, "dvec3");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 319;
              }

              else
              {
                if (v495 != 50)
                {
                  return 0;
                }

                sub_2977FB7B4(&v795, "dvec2");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 318;
              }

              goto LABEL_2642;
            }

            if (v306 != 109 || *(sub_2977FB720(v797) + 2) != 29793)
            {
              return 0;
            }

            v307 = sub_297803A20(v797, 4);
            if (v307 == 52)
            {
              sub_2977FB7B4(&v795, "dmat4");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 314;
            }

            else if (v307 == 51)
            {
              sub_2977FB7B4(&v795, "dmat3");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 310;
            }

            else
            {
              if (v307 != 50)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "dmat2");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 306;
            }

            goto LABEL_509;
          case 'f':
            v311 = sub_297803A20(v797, 1);
            result = 0;
            if (v311 <= 0x6Bu)
            {
              if (v311 != 97)
              {
                if (v311 != 105)
                {
                  return result;
                }

                v312 = sub_2977FB720(v797);
                if (*(v312 + 2) == 25976 && *(v312 + 4) == 100)
                {
                  sub_2977FB7B4(&v795, "fixed");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 322;
                  goto LABEL_2642;
                }

                return 0;
              }

              v580 = sub_2977FB720(v797);
              if (*(v580 + 2) != 29548 || *(v580 + 4) != 101)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "false");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 131;
LABEL_1856:
              v30 = 32800;
              return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
            }

            if (v311 == 108)
            {
              v582 = sub_2977FB720(v797);
              if (*(v582 + 2) == 24943 && *(v582 + 4) == 116)
              {
                sub_2977FB7B4(&v795, "float");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 87;
                goto LABEL_2558;
              }

              return 0;
            }

            if (v311 != 118)
            {
              return result;
            }

            if (*(sub_2977FB720(v797) + 2) != 25445)
            {
              return 0;
            }

            v469 = sub_297803A20(v797, 4);
            if (v469 == 52)
            {
              sub_2977FB7B4(&v795, "fvec4");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 326;
            }

            else if (v469 == 51)
            {
              sub_2977FB7B4(&v795, "fvec3");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 325;
            }

            else
            {
              if (v469 != 50)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "fvec2");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 324;
            }

            break;
          case 'h':
            v181 = sub_297803A20(v797, 1);
            result = 0;
            if (v181 > 0x6Cu)
            {
              if (v181 == 109)
              {
                if (*(sub_2977FB720(v797) + 2) != 29793)
                {
                  return 0;
                }

                v579 = sub_297803A20(v797, 4);
                if (v579 == 52)
                {
                  sub_2977FB7B4(&v795, "hmat4");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 473;
                }

                else if (v579 == 51)
                {
                  sub_2977FB7B4(&v795, "hmat3");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 469;
                }

                else
                {
                  if (v579 != 50)
                  {
                    return 0;
                  }

                  sub_2977FB7B4(&v795, "hmat2");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 465;
                }
              }

              else
              {
                if (v181 != 118)
                {
                  return result;
                }

                if (*(sub_2977FB720(v797) + 2) != 25445)
                {
                  return 0;
                }

                v468 = sub_297803A20(v797, 4);
                if (v468 == 52)
                {
                  sub_2977FB7B4(&v795, "hvec4");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 330;
                }

                else if (v468 == 51)
                {
                  sub_2977FB7B4(&v795, "hvec3");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 329;
                }

                else
                {
                  if (v468 != 50)
                  {
                    return 0;
                  }

                  sub_2977FB7B4(&v795, "hvec2");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 328;
                }
              }
            }

            else
            {
              if (v181 != 97)
              {
                if (v181 != 105)
                {
                  return result;
                }

                v182 = sub_2977FB720(v797);
                if (*(v182 + 2) == 26727 && *(v182 + 4) == 112)
                {
                  sub_2977FB7B4(&v795, "highp");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 327;
                  goto LABEL_2642;
                }

                return 0;
              }

              if (*(sub_2977FB720(v797) + 2) != 26220)
              {
                return 0;
              }

              v578 = sub_297803A20(v797, 4);
              if (v578 == 52)
              {
                sub_2977FB7B4(&v795, "half4");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 482;
              }

              else if (v578 == 51)
              {
                sub_2977FB7B4(&v795, "half3");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 481;
              }

              else
              {
                if (v578 != 50)
                {
                  return 0;
                }

                sub_2977FB7B4(&v795, "half2");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 480;
              }
            }

            break;
          default:
            return result;
        }
      }

      else
      {
        if (v91 == 95)
        {
          v301 = sub_297803A20(v797, 1);
          if (v301 != 95)
          {
            if (v301 == 66)
            {
              v302 = sub_2977FB720(v797);
              if (*(v302 + 2) == 28527 && *(v302 + 4) == 108)
              {
                sub_2977FB7B4(&v795, "_Bool");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 112;
                goto LABEL_62;
              }
            }

            return 0;
          }

          v493 = sub_297803A20(v797, 2);
          if (v493 != 119)
          {
            if (v493 == 116 && *(sub_2977FB720(v797) + 3) == 31090)
            {
              sub_2977FB7B4(&v795, "__try");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 283;
              goto LABEL_1559;
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 3) != 13366)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "__w64");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 281;
          goto LABEL_2378;
        }

        if (v91 != 98)
        {
          if (v91 != 99)
          {
            return result;
          }

          v92 = sub_297803A20(v797, 1);
          if (v92 == 111)
          {
            v539 = sub_2977FB720(v797);
            if (*(v539 + 2) == 29550 && *(v539 + 4) == 116)
            {
              sub_2977FB7B4(&v795, "const");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 79;
              goto LABEL_2558;
            }
          }

          else if (v92 == 108)
          {
            v537 = sub_2977FB720(v797);
            if (*(v537 + 2) == 29537 && *(v537 + 4) == 115)
            {
              sub_2977FB7B4(&v795, "class");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 125;
              goto LABEL_1727;
            }
          }

          else if (v92 == 97)
          {
            v93 = sub_2977FB720(v797);
            if (*(v93 + 2) == 25460 && *(v93 + 4) == 104)
            {
              sub_2977FB7B4(&v795, "catch");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 124;
              goto LABEL_333;
            }
          }

          return 0;
        }

        v308 = sub_297803A20(v797, 1);
        if (v308 != 118)
        {
          if (v308 == 114)
          {
            v309 = sub_2977FB720(v797);
            if (*(v309 + 2) == 24933 && *(v309 + 4) == 107)
            {
              sub_2977FB7B4(&v795, "break");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 76;
              goto LABEL_2558;
            }
          }

          return 0;
        }

        if (*(sub_2977FB720(v797) + 2) != 25445)
        {
          return 0;
        }

        v496 = sub_297803A20(v797, 4);
        if (v496 == 52)
        {
          sub_2977FB7B4(&v795, "bvec4");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 299;
        }

        else if (v496 == 51)
        {
          sub_2977FB7B4(&v795, "bvec3");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 298;
        }

        else
        {
          if (v496 != 50)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "bvec2");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 297;
        }
      }

      goto LABEL_2642;
    case 6:
      v95 = sub_297803A20(v797, 0);
      result = 0;
      switch(v95)
      {
        case '_':
          if (sub_297803A20(v797, 1) != 95)
          {
            return 0;
          }

          v96 = sub_297803A20(v797, 2);
          result = 0;
          if (v96 <= 0x71u)
          {
            if (v96 == 105)
            {
              v683 = sub_2977FB720(v797);
              if (*(v683 + 3) == 24941 && *(v683 + 5) == 103)
              {
                sub_2977FB7B4(&v795, "__imag");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 173;
                goto LABEL_2558;
              }
            }

            else
            {
              if (v96 != 110)
              {
                return result;
              }

              v603 = sub_2977FB720(v797);
              if (*(v603 + 3) == 27765 && *(v603 + 5) == 108)
              {
                sub_2977FB7B4(&v795, "__null");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 165;
                goto LABEL_333;
              }
            }
          }

          else
          {
            switch(v96)
            {
              case 'r':
                v679 = sub_2977FB720(v797);
                if (*(v679 + 3) == 24933 && *(v679 + 5) == 108)
                {
                  sub_2977FB7B4(&v795, "__real");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 176;
                  goto LABEL_2558;
                }

                break;
              case 's':
                v681 = sub_2977FB720(v797);
                if (*(v681 + 3) == 29808 && *(v681 + 5) == 114)
                {
                  sub_2977FB7B4(&v795, "__sptr");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 279;
                  goto LABEL_2378;
                }

                break;
              case 'u':
                v97 = sub_2977FB720(v797);
                if (*(v97 + 3) == 29808 && *(v97 + 5) == 114)
                {
                  sub_2977FB7B4(&v795, "__uptr");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 280;
                  goto LABEL_2378;
                }

                break;
              default:
                return result;
            }
          }

          return 0;
        case 'a':
          v407 = sub_2977FB720(v797);
          if (*(v407 + 1) != 1986622563 || *(v407 + 5) != 101)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "active");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 294;
          goto LABEL_2642;
        case 'b':
          v400 = sub_2977FB720(v797);
          if (*(v400 + 1) != 1701209717 || *(v400 + 5) != 114)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "buffer");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 300;
          goto LABEL_509;
        case 'c':
          v416 = sub_2977FB720(v797);
          if (*(v416 + 1) != 1869442415 || *(v416 + 5) != 110)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "common");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 304;
          goto LABEL_2642;
        case 'd':
          v418 = sub_297803A20(v797, 1);
          if (v418 != 111)
          {
            if (v418 == 101 && *(sub_2977FB720(v797) + 2) == 1702126956)
            {
              sub_2977FB7B4(&v795, "delete");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 127;
              goto LABEL_333;
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 2) != 1701601909)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "double");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 83;
          goto LABEL_2558;
        case 'e':
          if (sub_297803A20(v797, 1) != 120)
          {
            return 0;
          }

          v402 = sub_297803A20(v797, 2);
          if (v402 == 116)
          {
            v616 = sub_2977FB720(v797);
            if (*(v616 + 3) == 29285 && *(v616 + 5) == 110)
            {
              sub_2977FB7B4(&v795, "extern");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 86;
              goto LABEL_2558;
            }
          }

          else if (v402 == 112)
          {
            v403 = sub_2977FB720(v797);
            if (*(v403 + 3) == 29295 && *(v403 + 5) == 116)
            {
              sub_2977FB7B4(&v795, "export");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 130;
              goto LABEL_333;
            }
          }

          return 0;
        case 'f':
          v409 = sub_297803A20(v797, 1);
          if (v409 == 114)
          {
            if (*(sub_2977FB720(v797) + 2) != 1684956521)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "friend");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 132;
            goto LABEL_333;
          }

          if (v409 != 108)
          {
            if (v409 == 105 && *(sub_2977FB720(v797) + 2) == 1919251564)
            {
              sub_2977FB7B4(&v795, "filter");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 321;
              goto LABEL_2642;
            }

            return 0;
          }

          v584 = sub_2977FB720(v797);
          if (*(v584 + 2) != 24943 || *(v584 + 4) != 116)
          {
            return 0;
          }

          v586 = sub_297803A20(v797, 5);
          if (v586 == 52)
          {
            sub_2977FB7B4(&v795, "float4");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 479;
          }

          else if (v586 == 51)
          {
            sub_2977FB7B4(&v795, "float3");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 478;
          }

          else
          {
            if (v586 != 50)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "float2");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 477;
          }

          goto LABEL_2642;
        case 'i':
          v410 = sub_2977FB720(v797);
          if (*(v410 + 1) != 1852402798 || *(v410 + 5) != 101)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "inline");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 91;
          v30 = 32779;
          return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
        case 'k':
          v421 = sub_2977FB720(v797);
          if (*(v421 + 1) != 1701737061 || *(v421 + 5) != 108)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "kernel");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 459;
          goto LABEL_2642;
        case 'l':
          v419 = sub_2977FB720(v797);
          if (*(v419 + 1) != 1970239841 || *(v419 + 5) != 116)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "layout");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 378;
          goto LABEL_2642;
        case 'm':
          if (*(sub_2977FB720(v797) + 1) != 29793)
          {
            return 0;
          }

          v396 = sub_297803A20(v797, 3);
          if (v396 == 52)
          {
            if (sub_297803A20(v797, 4) != 120)
            {
              return 0;
            }

            v662 = sub_297803A20(v797, 5);
            if (v662 == 52)
            {
              sub_2977FB7B4(&v795, "mat4x4");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 391;
            }

            else if (v662 == 51)
            {
              sub_2977FB7B4(&v795, "mat4x3");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 390;
            }

            else
            {
              if (v662 != 50)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "mat4x2");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 389;
            }
          }

          else if (v396 == 51)
          {
            if (sub_297803A20(v797, 4) != 120)
            {
              return 0;
            }

            v661 = sub_297803A20(v797, 5);
            if (v661 == 52)
            {
              sub_2977FB7B4(&v795, "mat3x4");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 387;
            }

            else if (v661 == 51)
            {
              sub_2977FB7B4(&v795, "mat3x3");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 386;
            }

            else
            {
              if (v661 != 50)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "mat3x2");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 385;
            }
          }

          else
          {
            if (v396 != 50 || sub_297803A20(v797, 4) != 120)
            {
              return 0;
            }

            v397 = sub_297803A20(v797, 5);
            if (v397 == 52)
            {
              sub_2977FB7B4(&v795, "mat2x4");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 383;
            }

            else if (v397 == 51)
            {
              sub_2977FB7B4(&v795, "mat2x3");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 382;
            }

            else
            {
              if (v397 != 50)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "mat2x2");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 381;
            }
          }

          goto LABEL_2642;
        case 'o':
          v405 = sub_2977FB720(v797);
          if (*(v405 + 1) != 1970304117 || *(v405 + 5) != 116)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "output");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 396;
          goto LABEL_2642;
        case 'p':
          v398 = sub_2977FB720(v797);
          if (*(v398 + 1) != 1768710773 || *(v398 + 5) != 99)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "public");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 139;
          goto LABEL_1727;
        case 'r':
          v394 = sub_2977FB720(v797);
          if (*(v394 + 1) != 1920300133 || *(v394 + 5) != 110)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "return");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 96;
          goto LABEL_2558;
        case 's':
          v412 = sub_297803A20(v797, 1);
          result = 0;
          if (v412 <= 0x73u)
          {
            switch(v412)
            {
              case 'a':
                if (*(sub_2977FB720(v797) + 2) != 1701605485)
                {
                  return 0;
                }

                sub_2977FB7B4(&v795, "sample");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 402;
                goto LABEL_2642;
              case 'i':
                v625 = sub_297803A20(v797, 2);
                if (v625 == 122)
                {
                  v726 = sub_2977FB720(v797);
                  if (*(v726 + 3) == 28517 && *(v726 + 5) == 102)
                  {
                    sub_2977FB7B4(&v795, "sizeof");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 99;
                    goto LABEL_2558;
                  }
                }

                else if (v625 == 103)
                {
                  v626 = sub_2977FB720(v797);
                  if (*(v626 + 3) == 25966 && *(v626 + 5) == 100)
                  {
                    sub_2977FB7B4(&v795, "signed");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 98;
                    goto LABEL_2558;
                  }
                }

                break;
              case 'm':
                if (*(sub_2977FB720(v797) + 2) == 1752461167)
                {
                  sub_2977FB7B4(&v795, "smooth");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 423;
                  goto LABEL_2642;
                }

                break;
              default:
                return result;
            }

            return 0;
          }

          if (v412 == 116)
          {
            v622 = sub_297803A20(v797, 2);
            if (v622 == 114)
            {
              v724 = sub_2977FB720(v797);
              if (*(v724 + 3) == 25461 && *(v724 + 5) == 116)
              {
                sub_2977FB7B4(&v795, "struct");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 101;
                goto LABEL_2558;
              }
            }

            else if (v622 == 97)
            {
              v623 = sub_2977FB720(v797);
              if (*(v623 + 3) == 26996 && *(v623 + 5) == 99)
              {
                sub_2977FB7B4(&v795, "static");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 100;
                goto LABEL_2558;
              }
            }

            return 0;
          }

          if (v412 != 117)
          {
            if (v412 != 119)
            {
              return result;
            }

            if (*(sub_2977FB720(v797) + 2) == 1751348329)
            {
              sub_2977FB7B4(&v795, "switch");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 102;
              goto LABEL_2558;
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 2) != 1886545264)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "superp");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 425;
          goto LABEL_2642;
        case 't':
          v413 = sub_2977FB720(v797);
          if (*(v413 + 1) != 28793 || *(v413 + 3) != 101)
          {
            return 0;
          }

          v415 = sub_297803A20(v797, 4);
          if (v415 != 111)
          {
            if (v415 == 105 && sub_297803A20(v797, 5) == 100)
            {
              sub_2977FB7B4(&v795, "typeid");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 148;
              goto LABEL_333;
            }

            return 0;
          }

          if (sub_297803A20(v797, 5) != 102)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "typeof");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 180;
          v30 = 8;
          break;
        default:
          return result;
      }

      return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
    case 7:
      v63 = sub_297803A20(v797, 0);
      result = 0;
      switch(v63)
      {
        case '_':
          v64 = sub_297803A20(v797, 1);
          if (v64 != 95)
          {
            if (v64 == 65)
            {
              v65 = sub_2977FB720(v797);
              if (*(v65 + 2) == 1768779636 && *(v65 + 6) == 99)
              {
                sub_2977FB7B4(&v795, "_Atomic");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 111;
                v30 = 0xFFFF;
                return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
              }
            }

            return 0;
          }

          v515 = sub_297803A20(v797, 2);
          result = 0;
          if (v515 <= 0x6Bu)
          {
            if (v515 == 99)
            {
              v715 = sub_297803A20(v797, 3);
              if (v715 == 111)
              {
                v760 = sub_2977FB720(v797);
                if (*(v760 + 4) == 28524 && *(v760 + 6) == 114)
                {
                  sub_2977FB7B4(&v795, "__color");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 492;
                  goto LABEL_2642;
                }
              }

              else if (v715 == 100)
              {
                v716 = sub_2977FB720(v797);
                if (*(v716 + 4) == 25445 && *(v716 + 6) == 108)
                {
                  sub_2977FB7B4(&v795, "__cdecl");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 250;
                  goto LABEL_2558;
                }
              }
            }

            else
            {
              if (v515 != 105)
              {
                return result;
              }

              if (*(sub_2977FB720(v797) + 3) == 875983982)
              {
                sub_2977FB7B4(&v795, "uint64_t");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 286;
                goto LABEL_2378;
              }
            }

            return 0;
          }

          if (v515 == 108)
          {
            v709 = sub_297803A20(v797, 3);
            if (v709 == 111)
            {
              v757 = sub_2977FB720(v797);
              if (*(v757 + 4) == 24931 && *(v757 + 6) == 108)
              {
                sub_2977FB7B4(&v795, "__local");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 257;
                goto LABEL_2547;
              }
            }

            else if (v709 == 101)
            {
              v710 = sub_2977FB720(v797);
              if (*(v710 + 4) == 30305 && *(v710 + 6) == 101)
              {
                sub_2977FB7B4(&v795, "__leave");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 285;
                goto LABEL_1559;
              }
            }

            return 0;
          }

          if (v515 != 112)
          {
            if (v515 != 116)
            {
              return result;
            }

            if (*(sub_2977FB720(v797) + 3) == 1701601889)
            {
              sub_2977FB7B4(&v795, "__table");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 493;
              goto LABEL_2642;
            }

            return 0;
          }

          v712 = sub_297803A20(v797, 3);
          if (v712 != 116)
          {
            if (v712 == 105)
            {
              v713 = sub_2977FB720(v797);
              if (*(v713 + 4) == 25976 && *(v713 + 6) == 108)
              {
                sub_2977FB7B4(&v795, "__pixel");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 268;
                goto LABEL_2329;
              }
            }

            return 0;
          }

          if (sub_297803A20(v797, 4) != 114)
          {
            return 0;
          }

          v759 = sub_297803A20(v797, 5);
          if (v759 != 54)
          {
            if (v759 == 51 && sub_297803A20(v797, 6) == 50)
            {
              sub_2977FB7B4(&v795, "__ptr32");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 278;
              goto LABEL_2378;
            }

            return 0;
          }

          if (sub_297803A20(v797, 6) != 52)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "__ptr64");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 277;
          goto LABEL_2378;
        case 'a':
          if (*(sub_2977FB720(v797) + 1) != 1852270956)
          {
            return 0;
          }

          v333 = sub_297803A20(v797, 5);
          if (v333 != 111)
          {
            if (v333 == 97 && sub_297803A20(v797, 6) == 115)
            {
              sub_2977FB7B4(&v795, "alignas");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 152;
              goto LABEL_1369;
            }

            return 0;
          }

          if (sub_297803A20(v797, 6) != 102)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "alignof");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 153;
          goto LABEL_1369;
        case 'd':
          v330 = sub_297803A20(v797, 1);
          if (v330 != 109)
          {
            if (v330 == 105)
            {
              v548 = sub_2977FB720(v797);
              if (*(v548 + 2) == 1918985075 && *(v548 + 6) == 100)
              {
                sub_2977FB7B4(&v795, "discard");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 305;
                goto LABEL_2642;
              }
            }

            else if (v330 == 101)
            {
              v331 = sub_2977FB720(v797);
              if (*(v331 + 2) == 1819631974 && *(v331 + 6) == 116)
              {
                sub_2977FB7B4(&v795, "default");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 81;
                goto LABEL_2558;
              }
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 2) != 29793)
          {
            return 0;
          }

          v550 = sub_297803A20(v797, 4);
          if (v550 == 52)
          {
            if (sub_297803A20(v797, 5) != 120)
            {
              return 0;
            }

            v754 = sub_297803A20(v797, 6);
            if (v754 == 52)
            {
              sub_2977FB7B4(&v795, "dmat4x4");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 317;
            }

            else if (v754 == 51)
            {
              sub_2977FB7B4(&v795, "dmat4x3");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 316;
            }

            else
            {
              if (v754 != 50)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "dmat4x2");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 315;
            }
          }

          else if (v550 == 51)
          {
            if (sub_297803A20(v797, 5) != 120)
            {
              return 0;
            }

            v753 = sub_297803A20(v797, 6);
            if (v753 == 52)
            {
              sub_2977FB7B4(&v795, "dmat3x4");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 313;
            }

            else if (v753 == 51)
            {
              sub_2977FB7B4(&v795, "dmat3x3");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 312;
            }

            else
            {
              if (v753 != 50)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "dmat3x2");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 311;
            }
          }

          else
          {
            if (v550 != 50 || sub_297803A20(v797, 5) != 120)
            {
              return 0;
            }

            v551 = sub_297803A20(v797, 6);
            if (v551 == 52)
            {
              sub_2977FB7B4(&v795, "dmat2x4");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 309;
            }

            else if (v551 == 51)
            {
              sub_2977FB7B4(&v795, "dmat2x3");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 308;
            }

            else
            {
              if (v551 != 50)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "dmat2x2");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 307;
            }
          }

          goto LABEL_509;
        case 'h':
          v328 = sub_297803A20(v797, 1);
          if (v328 == 109)
          {
            if (*(sub_2977FB720(v797) + 2) != 29793)
            {
              return 0;
            }

            v513 = sub_297803A20(v797, 4);
            if (v513 == 52)
            {
              if (sub_297803A20(v797, 5) != 120)
              {
                return 0;
              }

              v740 = sub_297803A20(v797, 6);
              if (v740 == 52)
              {
                sub_2977FB7B4(&v795, "hmat4x4");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 476;
              }

              else if (v740 == 51)
              {
                sub_2977FB7B4(&v795, "hmat4x3");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 475;
              }

              else
              {
                if (v740 != 50)
                {
                  return 0;
                }

                sub_2977FB7B4(&v795, "hmat4x2");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 474;
              }
            }

            else if (v513 == 51)
            {
              if (sub_297803A20(v797, 5) != 120)
              {
                return 0;
              }

              v739 = sub_297803A20(v797, 6);
              if (v739 == 52)
              {
                sub_2977FB7B4(&v795, "hmat3x4");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 472;
              }

              else if (v739 == 51)
              {
                sub_2977FB7B4(&v795, "hmat3x3");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 471;
              }

              else
              {
                if (v739 != 50)
                {
                  return 0;
                }

                sub_2977FB7B4(&v795, "hmat3x2");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 470;
              }
            }

            else
            {
              if (v513 != 50 || sub_297803A20(v797, 5) != 120)
              {
                return 0;
              }

              v514 = sub_297803A20(v797, 6);
              if (v514 == 52)
              {
                sub_2977FB7B4(&v795, "hmat2x4");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 468;
              }

              else if (v514 == 51)
              {
                sub_2977FB7B4(&v795, "hmat2x3");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 467;
              }

              else
              {
                if (v514 != 50)
                {
                  return 0;
                }

                sub_2977FB7B4(&v795, "hmat2x2");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 466;
              }
            }
          }

          else
          {
            if (v328 != 97 || *(sub_2977FB720(v797) + 2) != 26220)
            {
              return 0;
            }

            v329 = sub_297803A20(v797, 4);
            if (v329 == 52)
            {
              if (*(sub_2977FB720(v797) + 5) != 13432)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "half4x4");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 488;
            }

            else
            {
              if (v329 != 51)
              {
                if (v329 == 50 && *(sub_2977FB720(v797) + 5) == 12920)
                {
                  sub_2977FB7B4(&v795, "half2x2");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 486;
                  goto LABEL_2642;
                }

                return 0;
              }

              if (*(sub_2977FB720(v797) + 5) != 13176)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "half3x3");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 487;
            }
          }

          goto LABEL_2642;
        case 'i':
          if (*(sub_2977FB720(v797) + 1) != 1701273965)
          {
            return 0;
          }

          v319 = sub_297803A20(v797, 5);
          if (v319 == 51)
          {
            if (sub_297803A20(v797, 6) != 68)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "image3D");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 353;
          }

          else
          {
            if (v319 != 50)
            {
              if (v319 == 49 && sub_297803A20(v797, 6) == 68)
              {
                sub_2977FB7B4(&v795, "image1D");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 342;
                goto LABEL_2642;
              }

              return 0;
            }

            if (sub_297803A20(v797, 6) != 68)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "image2D");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 346;
          }

          goto LABEL_2642;
        case 'm':
          v322 = sub_297803A20(v797, 1);
          if (v322 == 117)
          {
            v509 = sub_2977FB720(v797);
            if (*(v509 + 2) == 1818386804 && *(v509 + 6) == 101)
            {
              sub_2977FB7B4(&v795, "mutable");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 133;
              goto LABEL_333;
            }
          }

          else if (v322 == 101)
          {
            v323 = sub_2977FB720(v797);
            if (*(v323 + 2) == 1836411236 && *(v323 + 6) == 112)
            {
              sub_2977FB7B4(&v795, "mediump");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 392;
              goto LABEL_2642;
            }
          }

          return 0;
        case 'n':
          v334 = sub_2977FB720(v797);
          if (*(v334 + 1) != 1886153845 || *(v334 + 5) != 29300)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "nullptr");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 159;
          goto LABEL_1369;
        case 'p':
          v336 = sub_2977FB720(v797);
          if (*(v336 + 1) != 1635150194 || *(v336 + 5) != 25972)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "private");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 137;
          goto LABEL_333;
        case 's':
          v340 = sub_2977FB720(v797);
          if (*(v340 + 1) != 1819307361 || *(v340 + 5) != 29285)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "sampler");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 403;
          goto LABEL_2642;
        case 't':
          v338 = sub_2977FB720(v797);
          if (*(v338 + 1) != 1684369529 || *(v338 + 5) != 26213)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "typedef");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 103;
          goto LABEL_2558;
        case 'u':
          v317 = sub_2977FB720(v797);
          if (*(v317 + 1) != 1868982638 || *(v317 + 5) != 28018)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "uniform");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 438;
          goto LABEL_2642;
        case 'v':
          v325 = sub_297803A20(v797, 1);
          if (v325 == 105)
          {
            v511 = sub_2977FB720(v797);
            if (*(v511 + 2) == 1635087474 && *(v511 + 6) == 108)
            {
              sub_2977FB7B4(&v795, "virtual");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 150;
              goto LABEL_333;
            }
          }

          else if (v325 == 97)
          {
            v326 = sub_2977FB720(v797);
            if (*(v326 + 2) == 1852406130 && *(v326 + 6) == 103)
            {
              sub_2977FB7B4(&v795, "varying");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 454;
              goto LABEL_2642;
            }
          }

          break;
        case 'w':
          v320 = sub_2977FB720(v797);
          if (*(v320 + 1) != 1918986339 || *(v320 + 5) != 29791)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "wchar_t");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 151;
          v30 = 0x2000;
          return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
        default:
          return result;
      }

      return 0;
    case 8:
      v79 = sub_297803A20(v797, 0);
      result = 0;
      switch(v79)
      {
        case '_':
          v80 = sub_297803A20(v797, 1);
          result = 0;
          if (v80 <= 0x46u)
          {
            if (v80 != 65)
            {
              if (v80 != 67)
              {
                return result;
              }

              v81 = sub_2977FB720(v797);
              if (*(v81 + 2) == 1819307375 && *(v81 + 6) == 30821)
              {
                sub_2977FB7B4(&v795, "_Complex");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 113;
                goto LABEL_2558;
              }

              return 0;
            }

            if (*(sub_2977FB720(v797) + 2) != 1852270956)
            {
              return 0;
            }

            v596 = sub_297803A20(v797, 6);
            if (v596 != 111)
            {
              if (v596 == 97 && sub_297803A20(v797, 7) == 115)
              {
                sub_2977FB7B4(&v795, "_Alignas");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 109;
                goto LABEL_2558;
              }

              return 0;
            }

            if (sub_297803A20(v797, 7) != 102)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "_Alignof");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 110;
            goto LABEL_2558;
          }

          if (v80 == 71)
          {
            v597 = sub_2977FB720(v797);
            if (*(v597 + 2) == 1919250021 && *(v597 + 6) == 25449)
            {
              sub_2977FB7B4(&v795, "_Generic");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 114;
              goto LABEL_2558;
            }

            return 0;
          }

          if (v80 != 95)
          {
            return result;
          }

          v487 = sub_297803A20(v797, 2);
          result = 0;
          if (v487 > 0x6Fu)
          {
            if (v487 <= 0x73u)
            {
              if (v487 == 112)
              {
                v764 = sub_2977FB720(v797);
                if (*(v764 + 3) == 1633907553 && *(v764 + 7) == 108)
                {
                  sub_2977FB7B4(&v795, "__pascal");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 266;
                  goto LABEL_2558;
                }
              }

              else
              {
                if (v487 != 115)
                {
                  return result;
                }

                v735 = sub_2977FB720(v797);
                if (*(v735 + 3) == 1819307361 && *(v735 + 7) == 101)
                {
                  sub_2977FB7B4(&v795, "__sample");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 491;
                  goto LABEL_2642;
                }
              }
            }

            else
            {
              switch(v487)
              {
                case 't':
                  v768 = sub_2977FB720(v797);
                  if (*(v768 + 3) == 1634038376 && *(v768 + 7) == 100)
                  {
                    sub_2977FB7B4(&v795, "__thread");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 177;
                    goto LABEL_2558;
                  }

                  break;
                case 'u':
                  v771 = sub_2977FB720(v797);
                  if (*(v771 + 3) == 1868851573 && *(v771 + 7) == 102)
                  {
                    sub_2977FB7B4(&v795, "__uuidof");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 282;
                    goto LABEL_1559;
                  }

                  break;
                case 'v':
                  v649 = sub_2977FB720(v797);
                  if (*(v649 + 3) == 1869898597 && *(v649 + 7) == 114)
                  {
                    sub_2977FB7B4(&v795, "__vector");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 267;
LABEL_2329:
                    v30 = 64;
                    return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
                  }

                  break;
                default:
                  return result;
              }
            }

            return 0;
          }

          if (v487 <= 0x66u)
          {
            if (v487 == 98)
            {
              v762 = sub_2977FB720(v797);
              if (*(v762 + 3) == 1734633842 && *(v762 + 7) == 101)
              {
                sub_2977FB7B4(&v795, "__bridge");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 270;
                goto LABEL_575;
              }
            }

            else
            {
              if (v487 != 102)
              {
                return result;
              }

              v733 = sub_2977FB720(v797);
              if (*(v733 + 3) == 1600351861 && *(v733 + 7) == 95)
              {
                sub_2977FB7B4(&v795, "__func__");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 119;
                goto LABEL_2558;
              }
            }

            return 0;
          }

          if (v487 == 103)
          {
            v766 = sub_2977FB720(v797);
            if (*(v766 + 3) == 1633841004 && *(v766 + 7) == 108)
            {
              sub_2977FB7B4(&v795, "__global");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 256;
              goto LABEL_2547;
            }

            return 0;
          }

          if (v487 != 105)
          {
            if (v487 != 107)
            {
              return result;
            }

            v488 = sub_2977FB720(v797);
            if (*(v488 + 3) == 1701737061 && *(v488 + 7) == 108)
            {
              sub_2977FB7B4(&v795, "__kernel");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 260;
              goto LABEL_2547;
            }

            return 0;
          }

          v770 = sub_297803A20(v797, 3);
          if (v770 != 115)
          {
            if (v770 == 110 && *(sub_2977FB720(v797) + 4) == 942813556)
            {
              sub_2977FB7B4(&v795, "__int128");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 174;
              goto LABEL_2558;
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 4) != 1685024863)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "__is_pod");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 210;
          goto LABEL_333;
        case 'c':
          v370 = sub_297803A20(v797, 1);
          if (v370 == 111)
          {
            v559 = sub_297803A20(v797, 2);
            if (v559 == 110)
            {
              v659 = sub_2977FB720(v797);
              if (*(v659 + 3) == 1970170228 && *(v659 + 7) == 101)
              {
                sub_2977FB7B4(&v795, "continue");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 80;
                goto LABEL_2558;
              }
            }

            else if (v559 == 104)
            {
              v560 = sub_2977FB720(v797);
              if (*(v560 + 3) == 1852142181 && *(v560 + 7) == 116)
              {
                sub_2977FB7B4(&v795, "coherent");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 303;
                goto LABEL_2642;
              }
            }

            return 0;
          }

          if (v370 != 104)
          {
            if (v370 == 101)
            {
              v371 = sub_2977FB720(v797);
              if (*(v371 + 2) == 1869771886 && *(v371 + 6) == 25705)
              {
                sub_2977FB7B4(&v795, "centroid");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 302;
                goto LABEL_2642;
              }
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 2) != 29281)
          {
            return 0;
          }

          v556 = sub_297803A20(v797, 4);
          if (v556 == 51)
          {
            v741 = sub_2977FB720(v797);
            if (*(v741 + 5) != 24370 || *(v741 + 7) != 116)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "char32_t");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 155;
          }

          else
          {
            if (v556 != 49)
            {
              return 0;
            }

            v557 = sub_2977FB720(v797);
            if (*(v557 + 5) != 24374 || *(v557 + 7) != 116)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "char16_t");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 154;
          }

          v30 = 4100;
          return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
        case 'd':
          v368 = sub_2977FB720(v797);
          if (*(v368 + 1) != 1953260389 || *(v368 + 4) != 1701869940)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "decltype");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 157;
          goto LABEL_1369;
        case 'e':
          v366 = sub_2977FB720(v797);
          if (*(v366 + 1) != 1768714360 || *(v366 + 4) != 1953063785)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "explicit");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 129;
          goto LABEL_333;
        case 'f':
          if (*(sub_2977FB720(v797) + 1) != 1952542572)
          {
            return 0;
          }

          v348 = sub_297803A20(v797, 5);
          if (v348 == 52)
          {
            if (*(sub_2977FB720(v797) + 6) != 13432)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "float4x4");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 485;
          }

          else
          {
            if (v348 != 51)
            {
              if (v348 == 50 && *(sub_2977FB720(v797) + 6) == 12920)
              {
                sub_2977FB7B4(&v795, "float2x2");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 483;
                goto LABEL_2642;
              }

              return 0;
            }

            if (*(sub_2977FB720(v797) + 6) != 13176)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "float3x3");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 484;
          }

          goto LABEL_2642;
        case 'h':
          v361 = sub_2977FB720(v797);
          if (*(v361 + 1) != 1886216563 || *(v361 + 4) != 1919249520)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "hsampler");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 489;
          goto LABEL_2642;
        case 'i':
          v373 = sub_297803A20(v797, 1);
          if (v373 == 115)
          {
            v531 = sub_2977FB720(v797);
            if (*(v531 + 2) == 1819307361 && *(v531 + 6) == 29285)
            {
              sub_2977FB7B4(&v795, "isampler");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 362;
              goto LABEL_2642;
            }

            return 0;
          }

          if (v373 != 105 || *(sub_2977FB720(v797) + 2) != 1701273965)
          {
            return 0;
          }

          v374 = sub_297803A20(v797, 6);
          if (v374 == 51)
          {
            if (sub_297803A20(v797, 7) != 68)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "iimage3D");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 338;
          }

          else
          {
            if (v374 != 50)
            {
              if (v374 == 49 && sub_297803A20(v797, 7) == 68)
              {
                sub_2977FB7B4(&v795, "iimage1D");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 331;
                goto LABEL_2642;
              }

              return 0;
            }

            if (sub_297803A20(v797, 7) != 68)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "iimage2D");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 333;
          }

          goto LABEL_2642;
        case 'n':
          if (sub_297803A20(v797, 1) != 111)
          {
            return 0;
          }

          v375 = sub_297803A20(v797, 2);
          if (v375 == 105)
          {
            v609 = sub_2977FB720(v797);
            if (*(v609 + 3) == 1852402798 && *(v609 + 7) == 101)
            {
              sub_2977FB7B4(&v795, "noinline");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 393;
              goto LABEL_2642;
            }
          }

          else if (v375 == 101)
          {
            v376 = sub_2977FB720(v797);
            if (*(v376 + 3) == 1885692792 && *(v376 + 7) == 116)
            {
              sub_2977FB7B4(&v795, "noexcept");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 158;
              goto LABEL_1369;
            }
          }

          return 0;
        case 'o':
          v389 = sub_2977FB720(v797);
          if (*(v389 + 1) != 1634887024 || *(v389 + 4) != 1919906913)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "operator");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 136;
          goto LABEL_333;
        case 'r':
          if (sub_297803A20(v797, 1) != 101)
          {
            return 0;
          }

          v386 = sub_297803A20(v797, 2);
          if (v386 != 115)
          {
            if (v386 == 103)
            {
              v634 = sub_2977FB720(v797);
              if (*(v634 + 3) == 1702130537 && *(v634 + 7) == 114)
              {
                sub_2977FB7B4(&v795, "register");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 94;
                goto LABEL_2558;
              }
            }

            else if (v386 == 97)
            {
              v387 = sub_2977FB720(v797);
              if (*(v387 + 3) == 1819176804 && *(v387 + 7) == 121)
              {
                sub_2977FB7B4(&v795, "readonly");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 400;
                goto LABEL_2642;
              }
            }

            return 0;
          }

          v636 = sub_297803A20(v797, 3);
          if (v636 != 116)
          {
            if (v636 == 111 && *(sub_2977FB720(v797) + 4) == 1701016181)
            {
              sub_2977FB7B4(&v795, "resource");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 401;
              goto LABEL_2642;
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 4) != 1952672114)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "restrict");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 95;
          v30 = 32769;
          return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
        case 's':
          v345 = sub_2977FB720(v797);
          if (*(v345 + 1) != 1819307361 || *(v345 + 5) != 24421)
          {
            return 0;
          }

          v347 = sub_297803A20(v797, 7);
          if (v347 == 104)
          {
            sub_2977FB7B4(&v795, "sample_h");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 462;
          }

          else
          {
            if (v347 != 102)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "sample_f");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 461;
          }

          goto LABEL_2642;
        case 't':
          v363 = sub_297803A20(v797, 1);
          if (v363 == 121)
          {
            v529 = sub_2977FB720(v797);
            if (*(v529 + 2) == 1634624880 && *(v529 + 6) == 25965)
            {
              sub_2977FB7B4(&v795, "typename");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 147;
              goto LABEL_333;
            }
          }

          else if (v363 == 101)
          {
            v364 = sub_2977FB720(v797);
            if (*(v364 + 2) == 1634496621 && *(v364 + 6) == 25972)
            {
              sub_2977FB7B4(&v795, "template");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 142;
              goto LABEL_1727;
            }
          }

          return 0;
        case 'u':
          v359 = sub_297803A20(v797, 1);
          if (v359 == 115)
          {
            v554 = sub_2977FB720(v797);
            if (*(v554 + 2) == 1819307361 && *(v554 + 6) == 29285)
            {
              sub_2977FB7B4(&v795, "usampler");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 439;
              goto LABEL_2642;
            }

            return 0;
          }

          if (v359 == 110)
          {
            v552 = sub_2977FB720(v797);
            if (*(v552 + 2) == 1852270963 && *(v552 + 6) == 25701)
            {
              sub_2977FB7B4(&v795, "unsigned");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 105;
              goto LABEL_2558;
            }

            return 0;
          }

          if (v359 != 105 || *(sub_2977FB720(v797) + 2) != 1701273965)
          {
            return 0;
          }

          v360 = sub_297803A20(v797, 6);
          if (v360 == 51)
          {
            if (sub_297803A20(v797, 7) != 68)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "uimage3D");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 433;
          }

          else
          {
            if (v360 != 50)
            {
              if (v360 == 49 && sub_297803A20(v797, 7) == 68)
              {
                sub_2977FB7B4(&v795, "uimage1D");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 426;
                goto LABEL_2642;
              }

              return 0;
            }

            if (sub_297803A20(v797, 7) != 68)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "uimage2D");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 428;
          }

          goto LABEL_2642;
        case 'v':
          v342 = sub_297803A20(v797, 1);
          if (v342 == 111)
          {
            v527 = sub_2977FB720(v797);
            if (*(v527 + 2) == 1769234796 && *(v527 + 6) == 25964)
            {
              sub_2977FB7B4(&v795, "volatile");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 107;
              goto LABEL_2558;
            }
          }

          else if (v342 == 101)
          {
            v343 = sub_2977FB720(v797);
            if (*(v343 + 2) == 1953718115 && *(v343 + 6) == 28773)
            {
              sub_2977FB7B4(&v795, "vec_step");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 265;
              v30 = 576;
              return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
            }
          }

          return 0;
        default:
          return result;
      }

    case 9:
      v83 = sub_297803A20(v797, 0);
      result = 0;
      if (v83 <= 0x6Du)
      {
        if (v83 > 0x62u)
        {
          if (v83 == 99)
          {
            if (*(sub_2977FB720(v797) + 1) != 0x7270786574736E6FLL)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "constexpr");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 156;
            goto LABEL_1369;
          }

          if (v83 != 105)
          {
            return result;
          }

          v175 = sub_297803A20(v797, 1);
          if (v175 == 110)
          {
            v476 = sub_297803A20(v797, 2);
            if (v476 == 118)
            {
              v601 = sub_2977FB720(v797);
              if (*(v601 + 3) == 1634300513 && *(v601 + 7) == 29806)
              {
                sub_2977FB7B4(&v795, "invariant");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 361;
                goto LABEL_2642;
              }
            }

            else if (v476 == 116)
            {
              v477 = sub_2977FB720(v797);
              if (*(v477 + 3) == 1634103909 && *(v477 + 7) == 25955)
              {
                sub_2977FB7B4(&v795, "interface");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 360;
                goto LABEL_2642;
              }
            }
          }

          else if (v175 == 109)
          {
            v176 = sub_2977FB720(v797);
            if (*(v176 + 2) == 26465 && *(v176 + 4) == 101)
            {
              v178 = sub_297803A20(v797, 5);
              if (v178 == 67)
              {
                v685 = sub_2977FB720(v797);
                if (*(v685 + 6) == 25205 && *(v685 + 8) == 101)
                {
                  sub_2977FB7B4(&v795, "imageCube");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 355;
                  goto LABEL_2642;
                }
              }

              else if (v178 == 50)
              {
                v179 = sub_2977FB720(v797);
                if (*(v179 + 6) == 19780 && *(v179 + 8) == 83)
                {
                  sub_2977FB7B4(&v795, "image2DMS");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 349;
                  goto LABEL_509;
                }
              }
            }
          }
        }

        else if (v83 == 95)
        {
          v274 = sub_297803A20(v797, 1);
          if (v274 == 95)
          {
            v470 = sub_297803A20(v797, 2);
            result = 0;
            if (v470 > 0x6Du)
            {
              if (v470 > 0x6Fu)
              {
                if (v470 == 112)
                {
                  v707 = sub_2977FB720(v797);
                  if (*(v707 + 3) == 1635150194 && *(v707 + 7) == 25972)
                  {
                    sub_2977FB7B4(&v795, "__private");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 259;
                    goto LABEL_2547;
                  }
                }

                else
                {
                  if (v470 != 115)
                  {
                    return result;
                  }

                  v620 = sub_2977FB720(v797);
                  if (*(v620 + 3) == 1633903732 && *(v620 + 7) == 27756)
                  {
                    sub_2977FB7B4(&v795, "__stdcall");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 251;
                    goto LABEL_2558;
                  }
                }
              }

              else if (v470 == 110)
              {
                v702 = sub_2977FB720(v797);
                if (*(v702 + 3) == 1970171503 && *(v702 + 7) == 27756)
                {
                  sub_2977FB7B4(&v795, "__nonnull");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 274;
                  goto LABEL_2558;
                }
              }

              else
              {
                v544 = sub_2977FB720(v797);
                if (*(v544 + 3) == 1600350818 && *(v544 + 7) == 28526)
                {
                  sub_2977FB7B4(&v795, "__objc_no");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 121;
                  goto LABEL_2558;
                }
              }
            }

            else if (v470 > 0x68u)
            {
              if (v470 == 105)
              {
                if (*(sub_2977FB720(v797) + 3) != 24435)
                {
                  return 0;
                }

                v704 = sub_297803A20(v797, 5);
                if (v704 == 118)
                {
                  v791 = sub_2977FB720(v797);
                  if (*(v791 + 6) == 26991 && *(v791 + 8) == 100)
                  {
                    sub_2977FB7B4(&v795, "__is_void");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 224;
                    goto LABEL_333;
                  }
                }

                else if (v704 == 115)
                {
                  v789 = sub_2977FB720(v797);
                  if (*(v789 + 6) == 28001 && *(v789 + 8) == 101)
                  {
                    sub_2977FB7B4(&v795, "__is_same");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 243;
                    goto LABEL_333;
                  }
                }

                else if (v704 == 101)
                {
                  v705 = sub_2977FB720(v797);
                  if (*(v705 + 6) == 30062 && *(v705 + 8) == 109)
                  {
                    sub_2977FB7B4(&v795, "__is_enum");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 207;
                    goto LABEL_333;
                  }
                }
              }

              else
              {
                if (v470 != 108)
                {
                  return result;
                }

                v618 = sub_2977FB720(v797);
                if (*(v618 + 3) == 1818583649 && *(v618 + 7) == 24415)
                {
                  sub_2977FB7B4(&v795, "__label__");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 175;
                  goto LABEL_2558;
                }
              }
            }

            else if (v470 == 97)
            {
              v700 = sub_2977FB720(v797);
              if (*(v700 + 3) == 1852270956 && *(v700 + 7) == 26223)
              {
                sub_2977FB7B4(&v795, "__alignof");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 166;
                goto LABEL_2558;
              }
            }

            else
            {
              if (v470 != 102)
              {
                return result;
              }

              v471 = sub_2977FB720(v797);
              if (*(v471 + 3) == 1818324585 && *(v471 + 7) == 31084)
              {
                sub_2977FB7B4(&v795, "__finally");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 284;
LABEL_1559:
                v30 = 272;
                return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
              }
            }
          }

          else if (v274 == 78)
          {
            v275 = sub_2977FB720(v797);
            if (*(v275 + 2) == 1952805487 && *(v275 + 5) == 1852994932)
            {
              sub_2977FB7B4(&v795, "_Noreturn");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 116;
              goto LABEL_2558;
            }
          }
        }

        else
        {
          if (v83 != 97)
          {
            return result;
          }

          if (*(sub_2977FB720(v797) + 1) == 0x6574756269727474)
          {
            sub_2977FB7B4(&v795, "attribute");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 296;
            goto LABEL_2642;
          }
        }

        return 0;
      }

      if (v83 <= 0x72u)
      {
        if (v83 == 110)
        {
          if (*(sub_2977FB720(v797) + 1) != 0x6563617073656D61)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "namespace");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 134;
LABEL_1727:
          v30 = 32770;
          return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
        }

        if (v83 != 112)
        {
          return result;
        }

        v135 = sub_297803A20(v797, 1);
        if (v135 == 114)
        {
          v473 = sub_297803A20(v797, 2);
          if (v473 == 111)
          {
            v599 = sub_2977FB720(v797);
            if (*(v599 + 3) == 1952671092 && *(v599 + 7) == 25701)
            {
              sub_2977FB7B4(&v795, "protected");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 138;
              goto LABEL_333;
            }
          }

          else if (v473 == 101)
          {
            v474 = sub_2977FB720(v797);
            if (*(v474 + 3) == 1769171299 && *(v474 + 7) == 28271)
            {
              sub_2977FB7B4(&v795, "precision");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 399;
              goto LABEL_2642;
            }
          }
        }

        else if (v135 == 97)
        {
          v136 = sub_2977FB720(v797);
          if (*(v136 + 2) == 1953068146 && *(v136 + 5) == 1852795252)
          {
            sub_2977FB7B4(&v795, "partition");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 397;
            goto LABEL_2642;
          }
        }

        return 0;
      }

      if (v83 != 115)
      {
        if (v83 != 119)
        {
          return result;
        }

        if (*(sub_2977FB720(v797) + 1) == 0x796C6E6F65746972)
        {
          sub_2977FB7B4(&v795, "writeonly");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 458;
          goto LABEL_2642;
        }

        return 0;
      }

      v277 = sub_2977FB720(v797);
      if (*(v277 + 1) != 1819307361 || *(v277 + 5) != 29285)
      {
        return 0;
      }

      v279 = sub_297803A20(v797, 7);
      if (v279 == 51)
      {
        if (sub_297803A20(v797, 8) != 68)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "sampler3D");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 416;
      }

      else
      {
        if (v279 != 50)
        {
          if (v279 == 49 && sub_297803A20(v797, 8) == 68)
          {
            sub_2977FB7B4(&v795, "sampler1D");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 404;
            goto LABEL_2642;
          }

          return 0;
        }

        if (sub_297803A20(v797, 8) != 68)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "sampler2D");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 408;
      }

      goto LABEL_2642;
    case 10:
      v102 = sub_297803A20(v797, 0);
      result = 0;
      if (v102 > 0x68u)
      {
        switch(v102)
        {
          case 'i':
            v248 = sub_297803A20(v797, 1);
            if (v248 != 115)
            {
              if (v248 == 105 && *(sub_2977FB720(v797) + 2) == 1701273965)
              {
                v249 = sub_297803A20(v797, 6);
                if (v249 == 67)
                {
                  v655 = sub_2977FB720(v797);
                  if (*(v655 + 7) == 25205 && *(v655 + 9) == 101)
                  {
                    sub_2977FB7B4(&v795, "iimageCube");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 340;
                    goto LABEL_2642;
                  }
                }

                else if (v249 == 50)
                {
                  v250 = sub_2977FB720(v797);
                  if (*(v250 + 7) == 19780 && *(v250 + 9) == 83)
                  {
                    sub_2977FB7B4(&v795, "iimage2DMS");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 335;
                    goto LABEL_509;
                  }
                }
              }

              return 0;
            }

            v442 = sub_2977FB720(v797);
            if (*(v442 + 2) != 1819307361 || *(v442 + 6) != 29285)
            {
              return 0;
            }

            v444 = sub_297803A20(v797, 8);
            if (v444 == 51)
            {
              if (sub_297803A20(v797, 9) != 68)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "isampler3D");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 371;
            }

            else
            {
              if (v444 != 50)
              {
                if (v444 == 49 && sub_297803A20(v797, 9) == 68)
                {
                  sub_2977FB7B4(&v795, "isampler1D");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 363;
                  goto LABEL_2642;
                }

                return 0;
              }

              if (sub_297803A20(v797, 9) != 68)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "isampler2D");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 365;
            }

            break;
          case 's':
            v254 = sub_2977FB720(v797);
            if (*(v254 + 1) == 0x6E6974756F726275 && *(v254 + 9) == 101)
            {
              sub_2977FB7B4(&v795, "subroutine");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 424;
              goto LABEL_2642;
            }

            return 0;
          case 'u':
            v150 = sub_297803A20(v797, 1);
            if (v150 != 115)
            {
              if (v150 == 105 && *(sub_2977FB720(v797) + 2) == 1701273965)
              {
                v151 = sub_297803A20(v797, 6);
                if (v151 == 67)
                {
                  v657 = sub_2977FB720(v797);
                  if (*(v657 + 7) == 25205 && *(v657 + 9) == 101)
                  {
                    sub_2977FB7B4(&v795, "uimageCube");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 435;
                    goto LABEL_2642;
                  }
                }

                else if (v151 == 50)
                {
                  v152 = sub_2977FB720(v797);
                  if (*(v152 + 7) == 19780 && *(v152 + 9) == 83)
                  {
                    sub_2977FB7B4(&v795, "uimage2DMS");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 430;
                    goto LABEL_509;
                  }
                }
              }

              return 0;
            }

            v445 = sub_2977FB720(v797);
            if (*(v445 + 2) != 1819307361 || *(v445 + 6) != 29285)
            {
              return 0;
            }

            v447 = sub_297803A20(v797, 8);
            if (v447 == 51)
            {
              if (sub_297803A20(v797, 9) != 68)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "usampler3D");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 447;
            }

            else
            {
              if (v447 != 50)
              {
                if (v447 == 49 && sub_297803A20(v797, 9) == 68)
                {
                  sub_2977FB7B4(&v795, "usampler1D");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 440;
                  goto LABEL_2642;
                }

                return 0;
              }

              if (sub_297803A20(v797, 9) != 68)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "usampler2D");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 442;
            }

            break;
          default:
            return result;
        }

        goto LABEL_2642;
      }

      if (v102 != 95)
      {
        if (v102 == 99)
        {
          v252 = sub_2977FB720(v797);
          if (*(v252 + 1) == 0x7361635F74736E6FLL && *(v252 + 9) == 116)
          {
            sub_2977FB7B4(&v795, "const_cast");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 126;
            goto LABEL_333;
          }
        }

        else
        {
          if (v102 != 104)
          {
            return result;
          }

          v103 = sub_2977FB720(v797);
          if (*(v103 + 1) == 0x3272656C706D6173 && *(v103 + 9) == 68)
          {
            sub_2977FB7B4(&v795, "hsampler2D");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 490;
            goto LABEL_2642;
          }
        }

        return 0;
      }

      v244 = sub_297803A20(v797, 1);
      if (v244 != 95)
      {
        if (v244 == 73)
        {
          if (*(sub_2977FB720(v797) + 2) != 0x7972616E6967616DLL)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "_Imaginary");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 115;
        }

        else
        {
          if (v244 != 68)
          {
            return 0;
          }

          v245 = sub_2977FB720(v797);
          if (*(v245 + 2) != 1835623269 || *(v245 + 6) != 27745)
          {
            return 0;
          }

          v247 = sub_297803A20(v797, 8);
          if (v247 != 54)
          {
            if (v247 == 51 && sub_297803A20(v797, 9) == 50)
            {
              sub_2977FB7B4(&v795, "_Decimal32");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 162;
              goto LABEL_2558;
            }

            return 0;
          }

          if (sub_297803A20(v797, 9) != 52)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "_Decimal64");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 163;
        }

        goto LABEL_2558;
      }

      v479 = sub_297803A20(v797, 2);
      result = 0;
      if (v479 <= 0x68u)
      {
        switch(v479)
        {
          case 'c':
            v691 = sub_2977FB720(v797);
            if (*(v691 + 3) == 1953721967 && *(v691 + 6) == 1953390964)
            {
              sub_2977FB7B4(&v795, "__constant");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 258;
              goto LABEL_2547;
            }

            break;
          case 'd':
            v696 = sub_2977FB720(v797);
            if (*(v696 + 3) == 1936483173 && *(v696 + 6) == 1667592307)
            {
              sub_2977FB7B4(&v795, "__declspec");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 249;
              goto LABEL_2558;
            }

            break;
          case 'f':
            v576 = sub_2977FB720(v797);
            if (*(v576 + 3) == 1668576097 && *(v576 + 6) == 1819042147)
            {
              sub_2977FB7B4(&v795, "__fastcall");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 252;
              goto LABEL_2558;
            }

            break;
          default:
            return result;
        }

        return 0;
      }

      if (v479 > 0x6Eu)
      {
        if (v479 == 111)
        {
          v694 = sub_2977FB720(v797);
          if (*(v694 + 3) == 1600350818 && *(v694 + 6) == 1936030047)
          {
            sub_2977FB7B4(&v795, "__objc_yes");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 120;
            goto LABEL_2558;
          }
        }

        else
        {
          if (v479 != 116)
          {
            return result;
          }

          v614 = sub_2977FB720(v797);
          if (*(v614 + 3) == 1668508008 && *(v614 + 6) == 1819042147)
          {
            sub_2977FB7B4(&v795, "__thiscall");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 253;
            goto LABEL_2558;
          }
        }

        return 0;
      }

      if (v479 != 105)
      {
        if (v479 != 110)
        {
          return result;
        }

        v480 = sub_2977FB720(v797);
        if (*(v480 + 3) == 1634495605 && *(v480 + 6) == 1701601889)
        {
          sub_2977FB7B4(&v795, "__nullable");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 275;
          goto LABEL_2558;
        }

        return 0;
      }

      if (*(sub_2977FB720(v797) + 3) != 24435)
      {
        return 0;
      }

      v693 = sub_297803A20(v797, 5);
      result = 0;
      if (v693 > 0x64u)
      {
        switch(v693)
        {
          case 'e':
            if (*(sub_2977FB720(v797) + 6) != 2037674093)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "__is_empty");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 206;
            break;
          case 'f':
            if (*(sub_2977FB720(v797) + 6) != 1818324585)
            {
              return 0;
            }

            sub_2977FB7B4(&v795, "__is_final");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 208;
            break;
          case 'u':
            if (*(sub_2977FB720(v797) + 6) == 1852795246)
            {
              sub_2977FB7B4(&v795, "__is_union");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 213;
              goto LABEL_333;
            }

            return 0;
          default:
            return result;
        }

        goto LABEL_333;
      }

      if (v693 == 97)
      {
        if (*(sub_2977FB720(v797) + 6) != 2036429426)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "__is_array");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 225;
        goto LABEL_333;
      }

      if (v693 != 99)
      {
        return result;
      }

      v777 = sub_297803A20(v797, 6);
      if (v777 == 111)
      {
        v793 = sub_2977FB720(v797);
        if (*(v793 + 7) == 29550 && *(v793 + 9) == 116)
        {
          sub_2977FB7B4(&v795, "__is_const");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 238;
          goto LABEL_333;
        }
      }

      else if (v777 == 108)
      {
        v778 = sub_2977FB720(v797);
        if (*(v778 + 7) == 29537 && *(v778 + 9) == 115)
        {
          sub_2977FB7B4(&v795, "__is_class");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 204;
          goto LABEL_333;
        }
      }

      return 0;
    case 11:
      v99 = sub_297803A20(v797, 0);
      result = 0;
      if (v99 > 0x68u)
      {
        if (v99 == 105)
        {
          if (*(sub_2977FB720(v797) + 1) != 1701273965)
          {
            return 0;
          }

          v219 = sub_297803A20(v797, 5);
          if (v219 == 66)
          {
            v507 = sub_2977FB720(v797);
            if (*(v507 + 6) == 1701209717 && *(v507 + 10) == 114)
            {
              sub_2977FB7B4(&v795, "imageBuffer");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 354;
              goto LABEL_2642;
            }
          }

          else if (v219 == 50)
          {
            v220 = sub_2977FB720(v797);
            if (*(v220 + 6) == 1667584580 && *(v220 + 10) == 116)
            {
              sub_2977FB7B4(&v795, "image2DRect");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 351;
              goto LABEL_509;
            }
          }
        }

        else
        {
          if (v99 != 115)
          {
            return result;
          }

          v144 = sub_297803A20(v797, 1);
          if (v144 == 116)
          {
            v391 = sub_2977FB720(v797);
            if (*(v391 + 2) == 0x7361635F63697461 && *(v391 + 10) == 116)
            {
              sub_2977FB7B4(&v795, "static_cast");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 141;
              goto LABEL_333;
            }
          }

          else if (v144 == 97)
          {
            v145 = sub_2977FB720(v797);
            if (*(v145 + 2) == 1701605485 && *(v145 + 6) == 114)
            {
              v147 = sub_297803A20(v797, 7);
              if (v147 == 67)
              {
                v637 = sub_2977FB720(v797);
                if (*(v637 + 8) == 25205 && *(v637 + 10) == 101)
                {
                  sub_2977FB7B4(&v795, "samplerCube");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 419;
                  goto LABEL_2642;
                }
              }

              else if (v147 == 50)
              {
                v148 = sub_2977FB720(v797);
                if (*(v148 + 8) == 19780 && *(v148 + 10) == 83)
                {
                  sub_2977FB7B4(&v795, "sampler2DMS");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 411;
                  goto LABEL_2642;
                }
              }
            }
          }
        }

        return 0;
      }

      if (v99 != 95)
      {
        if (v99 != 97)
        {
          return result;
        }

        v100 = sub_2977FB720(v797);
        if (*(v100 + 1) == 0x69755F63696D6F74 && *(v100 + 9) == 29806)
        {
          sub_2977FB7B4(&v795, "atomic_uint");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 295;
          goto LABEL_2642;
        }

        return 0;
      }

      v216 = sub_297803A20(v797, 1);
      if (v216 != 95)
      {
        if (v216 == 68)
        {
          v217 = sub_2977FB720(v797);
          if (*(v217 + 2) == 0x32316C616D696365 && *(v217 + 10) == 56)
          {
            sub_2977FB7B4(&v795, "_Decimal128");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 164;
            goto LABEL_2558;
          }
        }

        return 0;
      }

      v393 = sub_297803A20(v797, 2);
      result = 0;
      if (v393 <= 0x68u)
      {
        if (v393 != 70)
        {
          if (v393 != 97)
          {
            return result;
          }

          if (*(sub_2977FB720(v797) + 3) == 0x6574756269727474)
          {
            sub_2977FB7B4(&v795, "__attribute");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 167;
            goto LABEL_2558;
          }

          return 0;
        }

        if (*(sub_2977FB720(v797) + 3) != 0x5F5F474953434E55)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "__FUNCSIG__");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 182;
      }

      else
      {
        if (v393 != 105)
        {
          if (v393 != 114)
          {
            if (v393 != 117)
            {
              return result;
            }

            if (*(sub_2977FB720(v797) + 3) == 0x64656E67696C616ELL)
            {
              sub_2977FB7B4(&v795, "__unaligned");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 255;
              goto LABEL_2378;
            }

            return 0;
          }

          if (*(sub_2977FB720(v797) + 3) != 0x796C6E6F5F646165)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "__read_only");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 261;
          goto LABEL_2547;
        }

        v611 = sub_297803A20(v797, 3);
        if (v611 != 115)
        {
          if (v611 == 110)
          {
            v728 = sub_2977FB720(v797);
            if (*(v728 + 4) == 1718773108 && *(v728 + 7) == 1701011814)
            {
              sub_2977FB7B4(&v795, "__interface");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 292;
              goto LABEL_2378;
            }
          }

          else if (v611 == 102)
          {
            v612 = sub_2977FB720(v797);
            if (*(v612 + 4) == 1769497951 && *(v612 + 7) == 1937011561)
            {
              sub_2977FB7B4(&v795, "__if_exists");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 287;
              goto LABEL_2378;
            }
          }

          return 0;
        }

        if (sub_297803A20(v797, 4) != 95)
        {
          return 0;
        }

        v730 = sub_297803A20(v797, 5);
        if (v730 != 115)
        {
          if (v730 == 111)
          {
            v731 = sub_2977FB720(v797);
            if (*(v731 + 6) == 1667590754 && *(v731 + 10) == 116)
            {
              sub_2977FB7B4(&v795, "__is_object");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 231;
              goto LABEL_333;
            }
          }

          return 0;
        }

        v780 = sub_297803A20(v797, 6);
        if (v780 == 105)
        {
          if (*(sub_2977FB720(v797) + 7) != 1684368999)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "__is_signed");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 241;
          goto LABEL_333;
        }

        if (v780 != 101)
        {
          if (v780 == 99 && *(sub_2977FB720(v797) + 7) == 1918987361)
          {
            sub_2977FB7B4(&v795, "__is_scalar");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 232;
            goto LABEL_333;
          }

          return 0;
        }

        if (*(sub_2977FB720(v797) + 7) != 1684368481)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "__is_sealed");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 185;
      }

      goto LABEL_2378;
    case 12:
      v40 = sub_297803A20(v797, 0);
      result = 0;
      if (v40 <= 0x68u)
      {
        if (v40 == 95)
        {
          if (sub_297803A20(v797, 1) != 95)
          {
            return 0;
          }

          v228 = sub_297803A20(v797, 2);
          result = 0;
          if (v228 <= 0x68u)
          {
            if (v228 == 70)
            {
              v594 = sub_2977FB720(v797);
              if (*(v594 + 3) == 0x5F4E4F4954434E55 && *(v594 + 11) == 95)
              {
                sub_2977FB7B4(&v795, "__FUNCTION__");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 178;
                goto LABEL_2558;
              }
            }

            else
            {
              if (v228 != 97)
              {
                return result;
              }

              v482 = sub_2977FB720(v797);
              if (*(v482 + 3) == 0x6E61725F79617272 && *(v482 + 11) == 107)
              {
                sub_2977FB7B4(&v795, "__array_rank");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 245;
                goto LABEL_333;
              }
            }
          }

          else
          {
            switch(v228)
            {
              case 'i':
                if (*(sub_2977FB720(v797) + 3) != 24435)
                {
                  return 0;
                }

                v587 = sub_297803A20(v797, 5);
                result = 0;
                HIDWORD(v589) = v587 - 98;
                LODWORD(v589) = v587 - 98;
                v588 = v589 >> 1;
                if (v588 > 6)
                {
                  if (v588 == 7)
                  {
                    v775 = sub_2977FB720(v797);
                    if (*(v775 + 6) == 1953393007 && *(v775 + 10) == 29285)
                    {
                      sub_2977FB7B4(&v795, "__is_pointer");
                      v7 = *(a1 + 168);
                      v8 = v795;
                      v9 = v796;
                      v10 = 234;
                      goto LABEL_333;
                    }
                  }

                  else
                  {
                    if (v588 != 9)
                    {
                      return result;
                    }

                    v737 = sub_2977FB720(v797);
                    if (*(v737 + 6) == 1769367922 && *(v737 + 10) == 27745)
                    {
                      sub_2977FB7B4(&v795, "__is_trivial");
                      v7 = *(a1 + 168);
                      v8 = v795;
                      v9 = v796;
                      v10 = 212;
                      goto LABEL_333;
                    }
                  }
                }

                else if (v588)
                {
                  if (v588 != 5)
                  {
                    return result;
                  }

                  v590 = sub_2977FB720(v797);
                  if (*(v590 + 6) == 1919251561 && *(v590 + 10) == 27745)
                  {
                    sub_2977FB7B4(&v795, "__is_literal");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 209;
                    goto LABEL_333;
                  }
                }

                else
                {
                  v773 = sub_2977FB720(v797);
                  if (*(v773 + 6) == 1600484193 && *(v773 + 10) == 26223)
                  {
                    sub_2977FB7B4(&v795, "__is_base_of");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 203;
                    goto LABEL_333;
                  }
                }

                break;
              case 'r':
                v592 = sub_2977FB720(v797);
                if (*(v592 + 3) == 0x746972775F646165 && *(v592 + 11) == 101)
                {
                  sub_2977FB7B4(&v795, "__read_write");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 263;
                  goto LABEL_2547;
                }

                break;
              case 'w':
                v229 = sub_2977FB720(v797);
                if (*(v229 + 3) == 0x6C6E6F5F65746972 && *(v229 + 11) == 121)
                {
                  sub_2977FB7B4(&v795, "__write_only");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 262;
                  goto LABEL_2547;
                }

                break;
              default:
                return result;
            }
          }
        }

        else
        {
          if (v40 != 100)
          {
            return result;
          }

          v154 = sub_2977FB720(v797);
          if (*(v154 + 1) == 0x635F63696D616E79 && *(v154 + 4) == 0x747361635F63696DLL)
          {
            sub_2977FB7B4(&v795, "dynamic_cast");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 128;
            goto LABEL_333;
          }
        }
      }

      else
      {
        switch(v40)
        {
          case 'i':
            v222 = sub_297803A20(v797, 1);
            if (v222 == 115)
            {
              v461 = sub_2977FB720(v797);
              if (*(v461 + 2) == 1819307361 && *(v461 + 6) == 29285)
              {
                v463 = sub_297803A20(v797, 8);
                if (v463 == 67)
                {
                  v669 = sub_2977FB720(v797);
                  if (*(v669 + 9) == 25205 && *(v669 + 11) == 101)
                  {
                    sub_2977FB7B4(&v795, "isamplerCube");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 373;
                    goto LABEL_2642;
                  }
                }

                else if (v463 == 50)
                {
                  v464 = sub_2977FB720(v797);
                  if (*(v464 + 9) == 19780 && *(v464 + 11) == 83)
                  {
                    sub_2977FB7B4(&v795, "isampler2DMS");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 367;
                    goto LABEL_2642;
                  }
                }
              }
            }

            else if (v222 == 109)
            {
              v456 = sub_2977FB720(v797);
              if (*(v456 + 2) == 26465 && *(v456 + 4) == 101)
              {
                v458 = sub_297803A20(v797, 5);
                if (v458 == 50)
                {
                  v667 = sub_2977FB720(v797);
                  if (*(v667 + 6) == 1920090436 && *(v667 + 10) == 31073)
                  {
                    sub_2977FB7B4(&v795, "image2DArray");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 347;
                    goto LABEL_2642;
                  }
                }

                else if (v458 == 49)
                {
                  v459 = sub_2977FB720(v797);
                  if (*(v459 + 6) == 1920090436 && *(v459 + 10) == 31073)
                  {
                    sub_2977FB7B4(&v795, "image1DArray");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 343;
                    goto LABEL_2642;
                  }
                }
              }
            }

            else if (v222 == 105 && *(sub_2977FB720(v797) + 2) == 1701273965)
            {
              v223 = sub_297803A20(v797, 6);
              if (v223 == 66)
              {
                v671 = sub_2977FB720(v797);
                if (*(v671 + 7) == 1701209717 && *(v671 + 11) == 114)
                {
                  sub_2977FB7B4(&v795, "iimageBuffer");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 339;
                  goto LABEL_2642;
                }
              }

              else if (v223 == 50)
              {
                v224 = sub_2977FB720(v797);
                if (*(v224 + 7) == 1667584580 && *(v224 + 11) == 116)
                {
                  sub_2977FB7B4(&v795, "iimage2DRect");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 337;
                  goto LABEL_509;
                }
              }
            }

            break;
          case 't':
            v226 = sub_2977FB720(v797);
            if (*(v226 + 1) == 0x6F6C5F6461657268 && *(v226 + 4) == 0x6C61636F6C5F6461)
            {
              sub_2977FB7B4(&v795, "thread_local");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 161;
              goto LABEL_1369;
            }

            break;
          case 'u':
            v41 = sub_297803A20(v797, 1);
            if (v41 == 115)
            {
              v423 = sub_2977FB720(v797);
              if (*(v423 + 2) == 1819307361 && *(v423 + 6) == 29285)
              {
                v425 = sub_297803A20(v797, 8);
                if (v425 == 67)
                {
                  v647 = sub_2977FB720(v797);
                  if (*(v647 + 9) == 25205 && *(v647 + 11) == 101)
                  {
                    sub_2977FB7B4(&v795, "usamplerCube");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 449;
                    goto LABEL_2642;
                  }
                }

                else if (v425 == 50)
                {
                  v426 = sub_2977FB720(v797);
                  if (*(v426 + 9) == 19780 && *(v426 + 11) == 83)
                  {
                    sub_2977FB7B4(&v795, "usampler2DMS");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 444;
                    goto LABEL_2642;
                  }
                }
              }
            }

            else if (v41 == 105 && *(sub_2977FB720(v797) + 2) == 1701273965)
            {
              v42 = sub_297803A20(v797, 6);
              if (v42 == 66)
              {
                v645 = sub_2977FB720(v797);
                if (*(v645 + 7) == 1701209717 && *(v645 + 11) == 114)
                {
                  sub_2977FB7B4(&v795, "uimageBuffer");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 434;
                  goto LABEL_2642;
                }
              }

              else if (v42 == 50)
              {
                v43 = sub_2977FB720(v797);
                if (*(v43 + 7) == 1667584580 && *(v43 + 11) == 116)
                {
                  sub_2977FB7B4(&v795, "uimage2DRect");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 432;
                  goto LABEL_509;
                }
              }
            }

            break;
          default:
            return result;
        }
      }

      return 0;
    case 13:
      v67 = sub_297803A20(v797, 0);
      result = 0;
      if (v67 <= 0x6Du)
      {
        switch(v67)
        {
          case 'L':
            v231 = sub_2977FB720(v797);
            if (*(v231 + 1) == 0x4954434E55465F5FLL && *(v231 + 9) == 1600081487)
            {
              sub_2977FB7B4(&v795, "L__FUNCTION__");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 183;
              goto LABEL_2378;
            }

            break;
          case '_':
            v235 = sub_297803A20(v797, 1);
            if (v235 == 95)
            {
              v436 = sub_297803A20(v797, 2);
              result = 0;
              if (v436 <= 0x64u)
              {
                if (v436 == 70)
                {
                  v643 = sub_2977FB720(v797);
                  if (*(v643 + 3) == 0x454D414E44434E55 && *(v643 + 11) == 24415)
                  {
                    sub_2977FB7B4(&v795, "__FUNCDNAME__");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 181;
                    goto LABEL_2378;
                  }
                }

                else
                {
                  if (v436 != 97)
                  {
                    return result;
                  }

                  v535 = sub_2977FB720(v797);
                  if (*(v535 + 3) == 0x6574756269727474 && *(v535 + 11) == 24415)
                  {
                    sub_2977FB7B4(&v795, "__attribute__");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 460;
                    goto LABEL_2642;
                  }
                }
              }

              else
              {
                switch(v436)
                {
                  case 'e':
                    v639 = sub_2977FB720(v797);
                    if (*(v639 + 3) == 0x6E6F69736E657478 && *(v639 + 11) == 24415)
                    {
                      sub_2977FB7B4(&v795, "__extension__");
                      v7 = *(a1 + 168);
                      v8 = v795;
                      v9 = v796;
                      v10 = 172;
                      goto LABEL_2558;
                    }

                    break;
                  case 'f':
                    v641 = sub_2977FB720(v797);
                    if (*(v641 + 3) == 0x696C6E696563726FLL && *(v641 + 11) == 25966)
                    {
                      sub_2977FB7B4(&v795, "__forceinline");
                      v7 = *(a1 + 168);
                      v8 = v795;
                      v9 = v796;
                      v10 = 254;
                      goto LABEL_2378;
                    }

                    break;
                  case 'i':
                    if (*(sub_2977FB720(v797) + 3) == 24435)
                    {
                      v437 = sub_297803A20(v797, 5);
                      result = 0;
                      if (v437 > 0x68u)
                      {
                        switch(v437)
                        {
                          case 'i':
                            v783 = sub_2977FB720(v797);
                            if (*(v783 + 6) == 1734702190 && *(v783 + 9) == 1818325607)
                            {
                              sub_2977FB7B4(&v795, "__is_integral");
                              v7 = *(a1 + 168);
                              v8 = v795;
                              v9 = v796;
                              v10 = 222;
                              goto LABEL_333;
                            }

                            break;
                          case 'u':
                            v787 = sub_2977FB720(v797);
                            if (*(v787 + 6) == 1734964078 && *(v787 + 9) == 1684368999)
                            {
                              sub_2977FB7B4(&v795, "__is_unsigned");
                              v7 = *(a1 + 168);
                              v8 = v795;
                              v9 = v796;
                              v10 = 242;
                              goto LABEL_333;
                            }

                            break;
                          case 'v':
                            v755 = sub_2977FB720(v797);
                            if (*(v755 + 6) == 1952541807 && *(v755 + 9) == 1701603700)
                            {
                              sub_2977FB7B4(&v795, "__is_volatile");
                              v7 = *(a1 + 168);
                              v8 = v795;
                              v9 = v796;
                              v10 = 239;
                              goto LABEL_333;
                            }

                            break;
                          default:
                            return result;
                        }
                      }

                      else
                      {
                        switch(v437)
                        {
                          case 'a':
                            v781 = sub_2977FB720(v797);
                            if (*(v781 + 6) == 1920234338 && *(v781 + 9) == 1952670066)
                            {
                              sub_2977FB7B4(&v795, "__is_abstract");
                              v7 = *(a1 + 168);
                              v8 = v795;
                              v9 = v796;
                              v10 = 202;
                              goto LABEL_333;
                            }

                            break;
                          case 'c':
                            v785 = sub_2977FB720(v797);
                            if (*(v785 + 6) == 1869639023 && *(v785 + 9) == 1684960623)
                            {
                              sub_2977FB7B4(&v795, "__is_compound");
                              v7 = *(a1 + 168);
                              v8 = v795;
                              v9 = v796;
                              v10 = 233;
                              goto LABEL_333;
                            }

                            break;
                          case 'f':
                            v438 = sub_2977FB720(v797);
                            if (*(v438 + 6) == 1952673397 && *(v438 + 9) == 1852795252)
                            {
                              sub_2977FB7B4(&v795, "__is_function");
                              v7 = *(a1 + 168);
                              v8 = v795;
                              v9 = v796;
                              v10 = 226;
                              goto LABEL_333;
                            }

                            break;
                          default:
                            return result;
                        }
                      }
                    }

                    break;
                  default:
                    return result;
                }
              }
            }

            else if (v235 == 84)
            {
              v236 = sub_2977FB720(v797);
              if (*(v236 + 2) == 0x6F6C5F6461657268 && *(v236 + 5) == 0x6C61636F6C5F6461)
              {
                sub_2977FB7B4(&v795, "_Thread_local");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 118;
                goto LABEL_2558;
              }
            }

            break;
          case 'i':
            v68 = sub_297803A20(v797, 1);
            if (v68 == 109)
            {
              v431 = sub_2977FB720(v797);
              if (*(v431 + 2) == 26465 && *(v431 + 4) == 101)
              {
                v433 = sub_297803A20(v797, 5);
                if (v433 == 50)
                {
                  v653 = sub_2977FB720(v797);
                  if (*(v653 + 6) == 1634227012 && *(v653 + 9) == 2003788897)
                  {
                    sub_2977FB7B4(&v795, "image2DShadow");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 352;
                    goto LABEL_2642;
                  }
                }

                else if (v433 == 49)
                {
                  v434 = sub_2977FB720(v797);
                  if (*(v434 + 6) == 1634227012 && *(v434 + 9) == 2003788897)
                  {
                    sub_2977FB7B4(&v795, "image1DShadow");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 345;
                    goto LABEL_2642;
                  }
                }
              }
            }

            else if (v68 == 105 && *(sub_2977FB720(v797) + 2) == 1701273965)
            {
              v69 = sub_297803A20(v797, 6);
              if (v69 == 50)
              {
                v651 = sub_2977FB720(v797);
                if (*(v651 + 7) == 1920090436 && *(v651 + 11) == 31073)
                {
                  sub_2977FB7B4(&v795, "iimage2DArray");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 334;
                  goto LABEL_2642;
                }
              }

              else if (v69 == 49)
              {
                v70 = sub_2977FB720(v797);
                if (*(v70 + 7) == 1920090436 && *(v70 + 11) == 31073)
                {
                  sub_2977FB7B4(&v795, "iimage1DArray");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 332;
                  goto LABEL_2642;
                }
              }
            }

            break;
          default:
            return result;
        }

        return 0;
      }

      if (v67 == 110)
      {
        v233 = sub_2977FB720(v797);
        if (*(v233 + 1) == 0x636570737265706FLL && *(v233 + 9) == 1702259060)
        {
          sub_2977FB7B4(&v795, "noperspective");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 394;
          goto LABEL_2642;
        }

        return 0;
      }

      if (v67 != 115)
      {
        if (v67 != 117)
        {
          return result;
        }

        v130 = sub_2977FB720(v797);
        if (*(v130 + 1) == 1734438249 && *(v130 + 5) == 101)
        {
          v132 = sub_297803A20(v797, 6);
          if (v132 == 50)
          {
            v546 = sub_2977FB720(v797);
            if (*(v546 + 7) == 1920090436 && *(v546 + 11) == 31073)
            {
              sub_2977FB7B4(&v795, "uimage2DArray");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 429;
              goto LABEL_2642;
            }
          }

          else if (v132 == 49)
          {
            v133 = sub_2977FB720(v797);
            if (*(v133 + 7) == 1920090436 && *(v133 + 11) == 31073)
            {
              sub_2977FB7B4(&v795, "uimage1DArray");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 427;
              goto LABEL_2642;
            }
          }
        }

        return 0;
      }

      v238 = sub_297803A20(v797, 1);
      if (v238 != 116)
      {
        if (v238 == 97)
        {
          v239 = sub_2977FB720(v797);
          if (*(v239 + 2) == 1701605485 && *(v239 + 6) == 114)
          {
            v241 = sub_297803A20(v797, 7);
            if (v241 == 66)
            {
              v689 = sub_2977FB720(v797);
              if (*(v689 + 8) == 1701209717 && *(v689 + 12) == 114)
              {
                sub_2977FB7B4(&v795, "samplerBuffer");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 418;
                goto LABEL_2642;
              }
            }

            else if (v241 == 51)
            {
              v687 = sub_2977FB720(v797);
              if (*(v687 + 8) == 1667584580 && *(v687 + 12) == 116)
              {
                sub_2977FB7B4(&v795, "sampler3DRect");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 417;
                goto LABEL_2642;
              }
            }

            else if (v241 == 50)
            {
              v242 = sub_2977FB720(v797);
              if (*(v242 + 8) == 1667584580 && *(v242 + 12) == 116)
              {
                sub_2977FB7B4(&v795, "sampler2DRect");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 413;
                goto LABEL_2642;
              }
            }
          }
        }

        return 0;
      }

      v440 = sub_2977FB720(v797);
      if (*(v440 + 2) != 0x7373615F63697461 || *(v440 + 5) != 0x7472657373615F63)
      {
        return 0;
      }

      sub_2977FB7B4(&v795, "static_assert");
      v7 = *(a1 + 168);
      v8 = v795;
      v9 = v796;
      v10 = 160;
LABEL_1369:
      v30 = 4;
      return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
    case 14:
      v51 = sub_297803A20(v797, 0);
      result = 0;
      if (v51 > 0x72u)
      {
        if (v51 == 115)
        {
          v195 = sub_2977FB720(v797);
          if (*(v195 + 1) == 1819307361 && *(v195 + 5) == 29285)
          {
            v197 = sub_297803A20(v797, 7);
            if (v197 == 50)
            {
              v501 = sub_2977FB720(v797);
              if (*(v501 + 8) == 1920090436 && *(v501 + 12) == 31073)
              {
                sub_2977FB7B4(&v795, "sampler2DArray");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 409;
                goto LABEL_2642;
              }
            }

            else if (v197 == 49)
            {
              v198 = sub_2977FB720(v797);
              if (*(v198 + 8) == 1920090436 && *(v198 + 12) == 31073)
              {
                sub_2977FB7B4(&v795, "sampler1DArray");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 405;
                goto LABEL_2642;
              }
            }
          }
        }

        else
        {
          if (v51 != 117)
          {
            return result;
          }

          v124 = sub_2977FB720(v797);
          if (*(v124 + 1) == 1886216563 && *(v124 + 4) == 1919249520)
          {
            v126 = sub_297803A20(v797, 8);
            if (v126 == 66)
            {
              v499 = sub_2977FB720(v797);
              if (*(v499 + 9) == 1701209717 && *(v499 + 13) == 114)
              {
                sub_2977FB7B4(&v795, "usamplerBuffer");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 448;
                goto LABEL_2642;
              }
            }

            else if (v126 == 50)
            {
              v127 = sub_2977FB720(v797);
              if (*(v127 + 9) == 1667584580 && *(v127 + 13) == 116)
              {
                sub_2977FB7B4(&v795, "usampler2DRect");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 446;
                goto LABEL_2642;
              }
            }
          }
        }

        return 0;
      }

      if (v51 == 95)
      {
        v192 = sub_297803A20(v797, 1);
        if (v192 == 95)
        {
          v383 = sub_297803A20(v797, 2);
          if (v383 == 105)
          {
            v533 = sub_2977FB720(v797);
            if (*(v533 + 3) == 0x6572656665725F73 && *(v533 + 6) == 0x65636E6572656665)
            {
              sub_2977FB7B4(&v795, "__is_reference");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 227;
              goto LABEL_333;
            }
          }

          else if (v383 == 97)
          {
            v384 = sub_2977FB720(v797);
            if (*(v384 + 3) == 0x7478655F79617272 && *(v384 + 6) == 0x746E657478655F79)
            {
              sub_2977FB7B4(&v795, "__array_extent");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 246;
              goto LABEL_333;
            }
          }
        }

        else if (v192 == 83)
        {
          v193 = sub_2977FB720(v797);
          if (*(v193 + 2) == 0x73615F6369746174 && *(v193 + 10) == 1953654131)
          {
            sub_2977FB7B4(&v795, "_Static_assert");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 117;
            goto LABEL_2558;
          }
        }

        return 0;
      }

      if (v51 != 105)
      {
        return result;
      }

      v52 = sub_297803A20(v797, 1);
      if (v52 == 115)
      {
        v378 = sub_2977FB720(v797);
        if (*(v378 + 2) == 1819307361 && *(v378 + 6) == 29285)
        {
          v380 = sub_297803A20(v797, 8);
          if (v380 == 66)
          {
            v632 = sub_2977FB720(v797);
            if (*(v632 + 9) == 1701209717 && *(v632 + 13) == 114)
            {
              sub_2977FB7B4(&v795, "isamplerBuffer");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 372;
              goto LABEL_2642;
            }
          }

          else if (v380 == 50)
          {
            v381 = sub_2977FB720(v797);
            if (*(v381 + 9) == 1667584580 && *(v381 + 13) == 116)
            {
              sub_2977FB7B4(&v795, "isampler2DRect");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 369;
              goto LABEL_2642;
            }
          }
        }

        return 0;
      }

      if (v52 != 109)
      {
        return 0;
      }

      v53 = sub_2977FB720(v797);
      if (*(v53 + 2) != 26465 || *(v53 + 4) != 101)
      {
        return 0;
      }

      v55 = sub_297803A20(v797, 5);
      if (v55 != 67)
      {
        if (v55 == 50 && *(sub_2977FB720(v797) + 6) == 0x7961727241534D44)
        {
          sub_2977FB7B4(&v795, "image2DMSArray");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 350;
          goto LABEL_509;
        }

        return 0;
      }

      if (*(sub_2977FB720(v797) + 6) != 0x7961727241656275)
      {
        return 0;
      }

      sub_2977FB7B4(&v795, "imageCubeArray");
      v7 = *(a1 + 168);
      v8 = v795;
      v9 = v796;
      v10 = 356;
      goto LABEL_509;
    case 15:
      v22 = sub_297803A20(v797, 0);
      result = 0;
      if (v22 > 0x72u)
      {
        if (v22 == 115)
        {
          v187 = sub_2977FB720(v797);
          if (*(v187 + 1) == 1819307361 && *(v187 + 5) == 29285)
          {
            v189 = sub_297803A20(v797, 7);
            if (v189 == 50)
            {
              v497 = sub_2977FB720(v797);
              if (*(v497 + 8) == 1634227012 && *(v497 + 11) == 2003788897)
              {
                sub_2977FB7B4(&v795, "sampler2DShadow");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 415;
                goto LABEL_2642;
              }
            }

            else if (v189 == 49)
            {
              v190 = sub_2977FB720(v797);
              if (*(v190 + 8) == 1634227012 && *(v190 + 11) == 2003788897)
              {
                sub_2977FB7B4(&v795, "sampler1DShadow");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 407;
                goto LABEL_2642;
              }
            }
          }

          return 0;
        }

        if (v22 != 117)
        {
          return result;
        }

        v122 = sub_297803A20(v797, 1);
        if (v122 == 115)
        {
          v354 = sub_2977FB720(v797);
          if (*(v354 + 2) == 1819307361 && *(v354 + 6) == 29285)
          {
            v356 = sub_297803A20(v797, 8);
            if (v356 == 50)
            {
              v630 = sub_2977FB720(v797);
              if (*(v630 + 9) == 1920090436 && *(v630 + 13) == 31073)
              {
                sub_2977FB7B4(&v795, "usampler2DArray");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 443;
                goto LABEL_2642;
              }
            }

            else if (v356 == 49)
            {
              v357 = sub_2977FB720(v797);
              if (*(v357 + 9) == 1920090436 && *(v357 + 13) == 31073)
              {
                sub_2977FB7B4(&v795, "usampler1DArray");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 441;
                goto LABEL_2642;
              }
            }
          }

          return 0;
        }

        if (v122 != 105 || *(sub_2977FB720(v797) + 2) != 1701273965)
        {
          return 0;
        }

        v123 = sub_297803A20(v797, 6);
        if (v123 != 67)
        {
          if (v123 == 50 && *(sub_2977FB720(v797) + 7) == 0x7961727241534D44)
          {
            sub_2977FB7B4(&v795, "uimage2DMSArray");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 431;
            goto LABEL_509;
          }

          return 0;
        }

        if (*(sub_2977FB720(v797) + 7) != 0x7961727241656275)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "uimageCubeArray");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 436;
      }

      else
      {
        if (v22 == 95)
        {
          if (sub_297803A20(v797, 1) != 95)
          {
            return 0;
          }

          v184 = sub_297803A20(v797, 2);
          if (v184 == 105)
          {
            v484 = sub_297803A20(v797, 3);
            if (v484 == 115)
            {
              v607 = sub_2977FB720(v797);
              if (*(v607 + 4) == 0x656D68746972615FLL && *(v607 + 7) == 0x636974656D687469)
              {
                sub_2977FB7B4(&v795, "__is_arithmetic");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 220;
                goto LABEL_333;
              }
            }

            else if (v484 == 102)
            {
              v485 = sub_2977FB720(v797);
              if (*(v485 + 4) == 0x6978655F746F6E5FLL && *(v485 + 7) == 0x7374736978655F74)
              {
                sub_2977FB7B4(&v795, "__if_not_exists");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 288;
                goto LABEL_2378;
              }
            }
          }

          else if (v184 == 98)
          {
            v185 = sub_2977FB720(v797);
            if (*(v185 + 3) == 0x65725F6567646972 && *(v185 + 11) == 1852399988)
            {
              sub_2977FB7B4(&v795, "__bridge_retain");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 273;
              goto LABEL_575;
            }
          }

          return 0;
        }

        if (v22 != 105)
        {
          return result;
        }

        v23 = sub_297803A20(v797, 1);
        if (v23 == 115)
        {
          v349 = sub_2977FB720(v797);
          if (*(v349 + 2) == 1819307361 && *(v349 + 6) == 29285)
          {
            v351 = sub_297803A20(v797, 8);
            if (v351 == 50)
            {
              v628 = sub_2977FB720(v797);
              if (*(v628 + 9) == 1920090436 && *(v628 + 13) == 31073)
              {
                sub_2977FB7B4(&v795, "isampler2DArray");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 366;
                goto LABEL_2642;
              }
            }

            else if (v351 == 49)
            {
              v352 = sub_2977FB720(v797);
              if (*(v352 + 9) == 1920090436 && *(v352 + 13) == 31073)
              {
                sub_2977FB7B4(&v795, "isampler1DArray");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 364;
                goto LABEL_2642;
              }
            }
          }

          return 0;
        }

        if (v23 != 105 || *(sub_2977FB720(v797) + 2) != 1701273965)
        {
          return 0;
        }

        v24 = sub_297803A20(v797, 6);
        if (v24 != 67)
        {
          if (v24 == 50 && *(sub_2977FB720(v797) + 7) == 0x7961727241534D44)
          {
            sub_2977FB7B4(&v795, "iimage2DMSArray");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 336;
            goto LABEL_509;
          }

          return 0;
        }

        if (*(sub_2977FB720(v797) + 7) != 0x7961727241656275)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "iimageCubeArray");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 341;
      }

      goto LABEL_509;
    case 16:
      v84 = sub_297803A20(v797, 0);
      result = 0;
      if (v84 > 0x71u)
      {
        if (v84 == 114)
        {
          v206 = sub_2977FB720(v797);
          if (*(v206 + 1) == 0x72707265746E6965 && *(v206 + 8) == 0x747361635F746572)
          {
            sub_2977FB7B4(&v795, "reinterpret_cast");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 140;
            goto LABEL_333;
          }

          return 0;
        }

        if (v84 != 115)
        {
          return result;
        }

        v138 = sub_2977FB720(v797);
        if (*(v138 + 1) != 1819307361 || *(v138 + 5) != 29285)
        {
          return 0;
        }

        v140 = sub_297803A20(v797, 7);
        if (v140 != 67)
        {
          if (v140 == 50 && *(sub_2977FB720(v797) + 8) == 0x7961727241534D44)
          {
            sub_2977FB7B4(&v795, "sampler2DMSArray");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 412;
            goto LABEL_2642;
          }

          return 0;
        }

        if (*(sub_2977FB720(v797) + 8) != 0x7961727241656275)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "samplerCubeArray");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 420;
        goto LABEL_509;
      }

      if (v84 != 95)
      {
        if (v84 != 105)
        {
          return result;
        }

        v85 = sub_2977FB720(v797);
        if (*(v85 + 1) == 0x3272656C706D6173 && *(v85 + 8) == 0x776F646168534432)
        {
          sub_2977FB7B4(&v795, "isampler2DShadow");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 370;
          goto LABEL_2642;
        }

        return 0;
      }

      if (sub_297803A20(v797, 1) != 95)
      {
        return 0;
      }

      v200 = sub_297803A20(v797, 2);
      if (v200 == 105)
      {
        if (*(sub_2977FB720(v797) + 3) != 24435)
        {
          return 0;
        }

        v490 = sub_297803A20(v797, 5);
        result = 0;
        if (v490 <= 0x6Bu)
        {
          if (v490 == 99)
          {
            v747 = sub_2977FB720(v797);
            if (*(v747 + 6) == 0x6269747265766E6FLL && *(v747 + 14) == 25964)
            {
              sub_2977FB7B4(&v795, "__is_convertible");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 244;
              goto LABEL_333;
            }
          }

          else
          {
            if (v490 != 102)
            {
              return result;
            }

            v677 = sub_2977FB720(v797);
            if (*(v677 + 6) == 0x746E656D61646E75 && *(v677 + 14) == 27745)
            {
              sub_2977FB7B4(&v795, "__is_fundamental");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 230;
              goto LABEL_333;
            }
          }
        }

        else
        {
          switch(v490)
          {
            case 'l':
              v743 = sub_2977FB720(v797);
              if (*(v743 + 6) == 0x78655F65756C6176 && *(v743 + 14) == 29296)
              {
                sub_2977FB7B4(&v795, "__is_lvalue_expr");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 218;
                goto LABEL_333;
              }

              break;
            case 'p':
              v745 = sub_2977FB720(v797);
              if (*(v745 + 6) == 0x6870726F6D796C6FLL && *(v745 + 14) == 25449)
              {
                sub_2977FB7B4(&v795, "__is_polymorphic");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 211;
                goto LABEL_333;
              }

              break;
            case 'r':
              v491 = sub_2977FB720(v797);
              if (*(v491 + 6) == 0x78655F65756C6176 && *(v491 + 14) == 29296)
              {
                sub_2977FB7B4(&v795, "__is_rvalue_expr");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 219;
                goto LABEL_333;
              }

              break;
            default:
              return result;
          }
        }

        return 0;
      }

      if (v200 != 98)
      {
        return 0;
      }

      v201 = sub_2977FB720(v797);
      if (*(v201 + 3) != 1953261941 || *(v201 + 6) != 1601071476)
      {
        return 0;
      }

      v203 = sub_297803A20(v797, 10);
      if (v203 == 118)
      {
        v698 = sub_2977FB720(v797);
        if (*(v698 + 11) == 1918984033 && *(v698 + 15) == 103)
        {
          sub_2977FB7B4(&v795, "__builtin_va_arg");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 171;
          goto LABEL_2558;
        }

        return 0;
      }

      if (v203 != 97)
      {
        return 0;
      }

      v204 = sub_2977FB720(v797);
      if (*(v204 + 11) != 1887007859 || *(v204 + 15) != 101)
      {
        return 0;
      }

      sub_2977FB7B4(&v795, "__builtin_astype");
      v7 = *(a1 + 168);
      v8 = v795;
      v9 = v796;
      v10 = 264;
LABEL_2547:
      v30 = 512;
      return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
    case 17:
      v87 = sub_297803A20(v797, 0);
      result = 0;
      if (v87 <= 0x72u)
      {
        if (v87 != 95)
        {
          if (v87 != 105)
          {
            return result;
          }

          v88 = sub_2977FB720(v797);
          if (*(v88 + 1) == 1886216563 && *(v88 + 4) == 1919249520)
          {
            v90 = sub_297803A20(v797, 8);
            if (v90 != 67)
            {
              if (v90 == 50 && *(sub_2977FB720(v797) + 9) == 0x7961727241534D44)
              {
                sub_2977FB7B4(&v795, "isampler2DMSArray");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 368;
                goto LABEL_2642;
              }

              return 0;
            }

            if (*(sub_2977FB720(v797) + 9) == 0x7961727241656275)
            {
              sub_2977FB7B4(&v795, "isamplerCubeArray");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 374;
LABEL_509:
              v30 = 0x100000;
              return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
            }
          }

          return 0;
        }

        if (sub_297803A20(v797, 1) != 95)
        {
          return 0;
        }

        v208 = sub_297803A20(v797, 2);
        if (v208 == 117)
        {
          v505 = sub_2977FB720(v797);
          if (*(v505 + 3) != 0x6E69796C7265646ELL || *(v505 + 9) != 0x657079745F676E69)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "__underlying_type");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 217;
LABEL_333:
          v30 = 2;
        }

        else
        {
          if (v208 != 105)
          {
            if (v208 != 98)
            {
              return 0;
            }

            v209 = sub_2977FB720(v797);
            if (*(v209 + 3) != 1734633842 || *(v209 + 7) != 24421)
            {
              return 0;
            }

            v211 = sub_297803A20(v797, 9);
            if (v211 == 116)
            {
              v718 = sub_2977FB720(v797);
              if (*(v718 + 10) != 1936613746 || *(v718 + 13) != 1919247987)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "__bridge_transfer");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 271;
            }

            else
            {
              if (v211 != 114)
              {
                return 0;
              }

              v212 = sub_2977FB720(v797);
              if (*(v212 + 10) != 1767994469 || *(v212 + 13) != 1684369001)
              {
                return 0;
              }

              sub_2977FB7B4(&v795, "__bridge_retained");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 272;
            }

LABEL_575:
            v30 = 2048;
            return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
          }

          v503 = sub_2977FB720(v797);
          if (*(v503 + 3) != 0x7572747365645F73 || *(v503 + 9) != 0x656C626974637572)
          {
            return 0;
          }

          sub_2977FB7B4(&v795, "__is_destructible");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 186;
LABEL_2378:
          v30 = 16;
        }

        return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
      }

      if (v87 == 115)
      {
        v214 = sub_2977FB720(v797);
        if (*(v214 + 1) != 0x754372656C706D61 || *(v214 + 9) != 0x776F646168536562)
        {
          return 0;
        }

        sub_2977FB7B4(&v795, "samplerCubeShadow");
        v7 = *(a1 + 168);
        v8 = v795;
        v9 = v796;
        v10 = 422;
LABEL_2642:
        v30 = 0x8000;
        return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
      }

      if (v87 != 117)
      {
        return result;
      }

      v141 = sub_2977FB720(v797);
      if (*(v141 + 1) == 1886216563 && *(v141 + 4) == 1919249520)
      {
        v143 = sub_297803A20(v797, 8);
        if (v143 != 67)
        {
          if (v143 == 50 && *(sub_2977FB720(v797) + 9) == 0x7961727241534D44)
          {
            sub_2977FB7B4(&v795, "usampler2DMSArray");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 445;
            goto LABEL_2642;
          }

          return 0;
        }

        if (*(sub_2977FB720(v797) + 9) == 0x7961727241656275)
        {
          sub_2977FB7B4(&v795, "usamplerCubeArray");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 450;
          goto LABEL_509;
        }
      }

      return 0;
    case 18:
      v109 = sub_297803A20(v797, 0);
      if (v109 == 105)
      {
        if (*(sub_2977FB720(v797) + 1) != 1701273965)
        {
          return 0;
        }

        v165 = sub_297803A20(v797, 5);
        if (v165 == 50)
        {
          v466 = sub_2977FB720(v797);
          if (*(v466 + 6) == 0x6853796172724144 && *(v466 + 14) == 2003788897)
          {
            sub_2977FB7B4(&v795, "image2DArrayShadow");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 348;
            goto LABEL_2642;
          }
        }

        else if (v165 == 49)
        {
          v166 = sub_2977FB720(v797);
          if (*(v166 + 6) == 0x6853796172724144 && *(v166 + 14) == 2003788897)
          {
            sub_2977FB7B4(&v795, "image1DArrayShadow");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 344;
            goto LABEL_2642;
          }
        }
      }

      else if (v109 == 95 && sub_297803A20(v797, 1) == 95)
      {
        v110 = sub_297803A20(v797, 2);
        result = 0;
        if (v110 > 0x6Cu)
        {
          switch(v110)
          {
            case 'm':
              v518 = sub_2977FB720(v797);
              if (*(v518 + 3) == 0x72705F656C75646FLL && *(v518 + 10) == 0x5F5F657461766972)
              {
                sub_2977FB7B4(&v795, "__module_private__");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 248;
                goto LABEL_2558;
              }

              break;
            case 'n':
              v525 = sub_2977FB720(v797);
              if (*(v525 + 3) == 0x70736E755F6C6C75 && *(v525 + 10) == 0x6465696669636570)
              {
                sub_2977FB7B4(&v795, "__null_unspecified");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 276;
                goto LABEL_2558;
              }

              break;
            case 'p':
              v286 = sub_2977FB720(v797);
              if (*(v286 + 3) == 0x655F657461766972 && *(v286 + 10) == 0x5F5F6E7265747865)
              {
                sub_2977FB7B4(&v795, "__private_extern__");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 247;
                goto LABEL_2558;
              }

              break;
            default:
              return result;
          }
        }

        else
        {
          switch(v110)
          {
            case 'b':
              v516 = sub_2977FB720(v797);
              if (*(v516 + 3) == 0x6F5F6E69746C6975 && *(v516 + 10) == 0x666F74657366666FLL)
              {
                sub_2977FB7B4(&v795, "__builtin_offsetof");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 169;
                goto LABEL_2558;
              }

              break;
            case 'h':
              v520 = sub_2977FB720(v797);
              if (*(v520 + 3) == 29537 && *(v520 + 5) == 95)
              {
                v522 = sub_297803A20(v797, 6);
                if (v522 == 116)
                {
                  v722 = sub_2977FB720(v797);
                  if (*(v722 + 7) == 0x635F6C6169766972 && *(v722 + 10) == 0x79706F635F6C6169)
                  {
                    sub_2977FB7B4(&v795, "__has_trivial_copy");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 197;
                    goto LABEL_333;
                  }
                }

                else if (v522 == 110)
                {
                  v523 = sub_2977FB720(v797);
                  if (*(v523 + 7) == 0x635F776F7268746FLL && *(v523 + 10) == 0x79706F635F776F72)
                  {
                    sub_2977FB7B4(&v795, "__has_nothrow_copy");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 193;
                    goto LABEL_333;
                  }
                }
              }

              break;
            case 'i':
              if (*(sub_2977FB720(v797) + 3) == 1868783475)
              {
                v111 = sub_297803A20(v797, 7);
                if (v111 == 110)
                {
                  v720 = sub_2977FB720(v797);
                  if (*(v720 + 8) == 0x6269746375727473 && *(v720 + 16) == 25964)
                  {
                    sub_2977FB7B4(&v795, "__is_constructible");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 189;
                    goto LABEL_333;
                  }
                }

                else if (v111 == 109)
                {
                  v112 = sub_2977FB720(v797);
                  if (*(v112 + 8) == 0x79745F6574656C70 && *(v112 + 16) == 25968)
                  {
                    sub_2977FB7B4(&v795, "__is_complete_type");
                    v7 = *(a1 + 168);
                    v8 = v795;
                    v9 = v796;
                    v10 = 223;
                    goto LABEL_333;
                  }
                }
              }

              break;
            default:
              return result;
          }
        }
      }

      return 0;
    case 19:
      v105 = sub_297803A20(v797, 0);
      if (v105 == 115)
      {
        v162 = sub_2977FB720(v797);
        if (*(v162 + 1) == 0x443272656C706D61 && *(v162 + 9) == 0x6461685374636552 && *(v162 + 17) == 30575)
        {
          sub_2977FB7B4(&v795, "sampler2DRectShadow");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 414;
          goto LABEL_2642;
        }
      }

      else if (v105 == 95 && sub_297803A20(v797, 1) == 95)
      {
        v106 = sub_297803A20(v797, 2);
        if (v106 == 105)
        {
          if (*(sub_2977FB720(v797) + 3) != 24435)
          {
            return 0;
          }

          v428 = sub_297803A20(v797, 5);
          if (v428 == 109)
          {
            v675 = sub_2977FB720(v797);
            if (*(v675 + 6) == 0x6F705F7265626D65 && *(v675 + 11) == 0x7265746E696F705FLL)
            {
              sub_2977FB7B4(&v795, "__is_member_pointer");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 237;
              goto LABEL_333;
            }
          }

          else if (v428 == 102)
          {
            v673 = sub_2977FB720(v797);
            if (*(v673 + 6) == 0x5F676E6974616F6CLL && *(v673 + 11) == 0x746E696F705F676ELL)
            {
              sub_2977FB7B4(&v795, "__is_floating_point");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 221;
              goto LABEL_333;
            }
          }

          else if (v428 == 99)
          {
            v429 = sub_2977FB720(v797);
            if (*(v429 + 6) == 0x6269747265766E6FLL && *(v429 + 11) == 0x6F745F656C626974)
            {
              sub_2977FB7B4(&v795, "__is_convertible_to");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 205;
              goto LABEL_333;
            }
          }
        }

        else if (v106 == 80)
        {
          v107 = sub_2977FB720(v797);
          if (*(v107 + 3) == 0x55465F5954544552 && *(v107 + 11) == 0x5F5F4E4F4954434ELL)
          {
            sub_2977FB7B4(&v795, "__PRETTY_FUNCTION__");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 179;
            goto LABEL_2558;
          }
        }
      }

      return 0;
    case 20:
      v11 = sub_297803A20(v797, 0);
      if (v11 == 115)
      {
        v156 = sub_2977FB720(v797);
        if (*(v156 + 1) == 1819307361 && *(v156 + 5) == 29285)
        {
          v158 = sub_297803A20(v797, 7);
          if (v158 == 50)
          {
            v451 = sub_2977FB720(v797);
            if (*(v451 + 8) == 0x6853796172724144 && *(v451 + 16) == 2003788897)
            {
              sub_2977FB7B4(&v795, "sampler2DArrayShadow");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 410;
              goto LABEL_2642;
            }
          }

          else if (v158 == 49)
          {
            v159 = sub_2977FB720(v797);
            if (*(v159 + 8) == 0x6853796172724144 && *(v159 + 16) == 2003788897)
            {
              sub_2977FB7B4(&v795, "sampler1DArrayShadow");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 406;
              goto LABEL_2642;
            }
          }
        }
      }

      else if (v11 == 95 && sub_297803A20(v797, 1) == 95)
      {
        v12 = sub_297803A20(v797, 2);
        if (v12 == 115)
        {
          v453 = sub_2977FB720(v797);
          if (*(v453 + 3) == 0x6E695F656C676E69 && *(v453 + 11) == 0x636E617469726568 && *(v453 + 19) == 101)
          {
            sub_2977FB7B4(&v795, "__single_inheritance");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 289;
            goto LABEL_2378;
          }
        }

        else if (v12 == 105)
        {
          if (*(sub_2977FB720(v797) + 3) != 24435)
          {
            return 0;
          }

          v448 = sub_297803A20(v797, 5);
          if (v448 == 115)
          {
            v663 = sub_2977FB720(v797);
            if (*(v663 + 6) == 0x5F647261646E6174 && *(v663 + 12) == 0x74756F79616C5F64)
            {
              sub_2977FB7B4(&v795, "__is_standard_layout");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 240;
              goto LABEL_333;
            }
          }

          else if (v448 == 105)
          {
            v449 = sub_2977FB720(v797);
            if (*(v449 + 6) == 0x656361667265746ELL && *(v449 + 12) == 0x7373616C635F6563)
            {
              sub_2977FB7B4(&v795, "__is_interface_class");
              v7 = *(a1 + 168);
              v8 = v795;
              v9 = v796;
              v10 = 184;
              goto LABEL_2378;
            }
          }
        }

        else if (v12 == 104)
        {
          v13 = sub_2977FB720(v797);
          if (*(v13 + 3) == 29537 && *(v13 + 5) == 95)
          {
            v15 = sub_297803A20(v797, 6);
            if (v15 == 116)
            {
              v665 = sub_2977FB720(v797);
              if (*(v665 + 7) == 0x615F6C6169766972 && *(v665 + 12) == 0x6E67697373615F6CLL)
              {
                sub_2977FB7B4(&v795, "__has_trivial_assign");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 195;
                goto LABEL_333;
              }
            }

            else if (v15 == 110)
            {
              v16 = sub_2977FB720(v797);
              if (*(v16 + 7) == 0x615F776F7268746FLL && *(v16 + 12) == 0x6E67697373615F77)
              {
                sub_2977FB7B4(&v795, "__has_nothrow_assign");
                v7 = *(a1 + 168);
                v8 = v795;
                v9 = v796;
                v10 = 191;
                goto LABEL_333;
              }
            }
          }
        }
      }

      return 0;
    case 21:
      if (*sub_2977FB720(v797) != 24415)
      {
        return 0;
      }

      v56 = sub_297803A20(v797, 2);
      if (v56 == 118)
      {
        v283 = sub_2977FB720(v797);
        if (*(v283 + 3) == 0x695F6C6175747269 && *(v283 + 11) == 0x6E6174697265686ELL && *(v283 + 19) == 25955)
        {
          sub_2977FB7B4(&v795, "__virtual_inheritance");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 291;
          goto LABEL_2378;
        }
      }

      else if (v56 == 105)
      {
        if (*(sub_2977FB720(v797) + 3) != 24435)
        {
          return 0;
        }

        v280 = sub_297803A20(v797, 5);
        if (v280 == 114)
        {
          v605 = sub_2977FB720(v797);
          if (*(v605 + 6) == 0x65725F65756C6176 && *(v605 + 13) == 0x65636E6572656665)
          {
            sub_2977FB7B4(&v795, "__is_rvalue_reference");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 229;
            goto LABEL_333;
          }
        }

        else if (v280 == 108)
        {
          v281 = sub_2977FB720(v797);
          if (*(v281 + 6) == 0x65725F65756C6176 && *(v281 + 13) == 0x65636E6572656665)
          {
            sub_2977FB7B4(&v795, "__is_lvalue_reference");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 228;
            goto LABEL_333;
          }
        }
      }

      else if (v56 == 98)
      {
        v57 = sub_2977FB720(v797);
        v58 = *(v57 + 3) == 0x635F6E69746C6975 && *(v57 + 11) == 0x78655F65736F6F68;
        if (v58 && *(v57 + 19) == 29296)
        {
          sub_2977FB7B4(&v795, "__builtin_choose_expr");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 168;
          goto LABEL_2558;
        }
      }

      return 0;
    case 22:
      v114 = sub_297803A20(v797, 0);
      if (v114 == 115)
      {
        v168 = sub_2977FB720(v797);
        if (*(v168 + 1) == 0x754372656C706D61 && *(v168 + 9) == 0x5379617272416562 && *(v168 + 14) == 0x776F646168537961)
        {
          sub_2977FB7B4(&v795, "samplerCubeArrayShadow");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 421;
          goto LABEL_509;
        }
      }

      else if (v114 == 95)
      {
        v115 = sub_2977FB720(v797);
        v116 = *(v115 + 1) == 0x6C7069746C756D5FLL && *(v115 + 9) == 0x697265686E695F65;
        if (v116 && *(v115 + 14) == 0x65636E6174697265)
        {
          sub_2977FB7B4(&v795, "__multiple_inheritance");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 290;
          goto LABEL_2378;
        }
      }

      return 0;
    case 23:
      if (*sub_2977FB720(v797) != 24415)
      {
        return 0;
      }

      v18 = sub_297803A20(v797, 2);
      if (v18 == 105)
      {
        if (*(sub_2977FB720(v797) + 3) != 24435)
        {
          return 0;
        }

        v256 = sub_297803A20(v797, 5);
        if (v256 == 116)
        {
          v562 = sub_2977FB720(v797);
          if (*(v562 + 6) == 0x796C6C6169766972 && *(v562 + 14) == 0x6C626179706F635FLL && *(v562 + 22) == 101)
          {
            sub_2977FB7B4(&v795, "__is_trivially_copyable");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 215;
            goto LABEL_333;
          }
        }

        else if (v256 == 110)
        {
          v257 = sub_2977FB720(v797);
          v258 = *(v257 + 6) == 0x615F776F7268746FLL && *(v257 + 14) == 0x6C62616E67697373;
          if (v258 && *(v257 + 22) == 101)
          {
            sub_2977FB7B4(&v795, "__is_nothrow_assignable");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 188;
            goto LABEL_333;
          }
        }

        return 0;
      }

      if (v18 != 98)
      {
        return 0;
      }

      v19 = sub_2977FB720(v797);
      v20 = *(v19 + 3) == 0x635F6E69746C6975 && *(v19 + 11) == 0x6576747265766E6FLL;
      if (!v20 || *(v19 + 19) != 1919906915)
      {
        return 0;
      }

      sub_2977FB7B4(&v795, "__builtin_convertvector");
      v7 = *(a1 + 168);
      v8 = v795;
      v9 = v796;
      v10 = 293;
LABEL_2558:
      v30 = 61439;
      return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
    case 24:
      v45 = sub_2977FB720(v797);
      if (*v45 != 1634230111 || *(v45 + 4) != 24435)
      {
        return 0;
      }

      v47 = sub_297803A20(v797, 6);
      if (v47 == 118)
      {
        v268 = sub_2977FB720(v797);
        if (*(v268 + 7) == 0x645F6C6175747269 && *(v268 + 15) == 0x6F74637572747365 && *(v268 + 23) == 114)
        {
          sub_2977FB7B4(&v795, "__has_virtual_destructor");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 201;
          goto LABEL_333;
        }
      }

      else if (v47 == 116)
      {
        v48 = sub_2977FB720(v797);
        v49 = *(v48 + 7) == 0x645F6C6169766972 && *(v48 + 15) == 0x6F74637572747365;
        if (v49 && *(v48 + 23) == 114)
        {
          sub_2977FB7B4(&v795, "__has_trivial_destructor");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 200;
          goto LABEL_333;
        }
      }

      return 0;
    case 25:
      if (*sub_2977FB720(v797) != 24415)
      {
        return 0;
      }

      v31 = sub_297803A20(v797, 2);
      if (v31 == 105)
      {
        if (*(sub_2977FB720(v797) + 3) != 24435)
        {
          return 0;
        }

        v264 = sub_297803A20(v797, 5);
        if (v264 == 116)
        {
          v573 = sub_2977FB720(v797);
          if (*(v573 + 6) == 0x796C6C6169766972 && *(v573 + 14) == 0x616E67697373615FLL && *(v573 + 17) == 0x656C62616E676973)
          {
            sub_2977FB7B4(&v795, "__is_trivially_assignable");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 216;
            goto LABEL_333;
          }
        }

        else if (v264 == 110)
        {
          v265 = sub_2977FB720(v797);
          v266 = *(v265 + 6) == 0x645F776F7268746FLL && *(v265 + 14) == 0x6974637572747365;
          if (v266 && *(v265 + 17) == 0x656C626974637572)
          {
            sub_2977FB7B4(&v795, "__is_nothrow_destructible");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 187;
            goto LABEL_2378;
          }
        }
      }

      else if (v31 == 104)
      {
        v32 = sub_2977FB720(v797);
        if (*(v32 + 3) == 29537 && *(v32 + 5) == 95)
        {
          v34 = sub_297803A20(v797, 6);
          if (v34 == 116)
          {
            v568 = sub_2977FB720(v797);
            if (*(v568 + 7) == 1769367922 && *(v568 + 10) == 1600938345)
            {
              v570 = sub_297803A20(v797, 14);
              if (v570 == 109)
              {
                v751 = sub_2977FB720(v797);
                if (*(v751 + 15) == 0x697373615F65766FLL && *(v751 + 23) == 28263)
                {
                  sub_2977FB7B4(&v795, "__has_trivial_move_assign");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 196;
                  goto LABEL_333;
                }
              }

              else if (v570 == 99)
              {
                v571 = sub_2977FB720(v797);
                if (*(v571 + 15) == 0x7463757274736E6FLL && *(v571 + 23) == 29295)
                {
                  sub_2977FB7B4(&v795, "__has_trivial_constructor");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 198;
                  goto LABEL_333;
                }
              }
            }
          }

          else if (v34 == 110)
          {
            v35 = sub_2977FB720(v797);
            if (*(v35 + 7) == 1919448175 && *(v35 + 10) == 1601662834)
            {
              v37 = sub_297803A20(v797, 14);
              if (v37 == 109)
              {
                v749 = sub_2977FB720(v797);
                if (*(v749 + 15) == 0x697373615F65766FLL && *(v749 + 23) == 28263)
                {
                  sub_2977FB7B4(&v795, "__has_nothrow_move_assign");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 192;
                  goto LABEL_333;
                }
              }

              else if (v37 == 99)
              {
                v38 = sub_2977FB720(v797);
                if (*(v38 + 15) == 0x7463757274736E6FLL && *(v38 + 23) == 29295)
                {
                  sub_2977FB7B4(&v795, "__has_nothrow_constructor");
                  v7 = *(a1 + 168);
                  v8 = v795;
                  v9 = v796;
                  v10 = 194;
                  goto LABEL_333;
                }
              }
            }
          }
        }
      }

      return 0;
    case 26:
      v72 = sub_2977FB720(v797);
      if (*v72 != 1936285535 || *(v72 + 4) != 95)
      {
        return 0;
      }

      v74 = sub_297803A20(v797, 5);
      if (v74 == 110)
      {
        v271 = sub_2977FB720(v797);
        if (*(v271 + 6) == 0x635F776F7268746FLL && *(v271 + 14) == 0x7463757274736E6FLL && *(v271 + 22) == 1701601897)
        {
          sub_2977FB7B4(&v795, "__is_nothrow_constructible");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 190;
          goto LABEL_333;
        }
      }

      else if (v74 == 109)
      {
        v75 = sub_2977FB720(v797);
        v76 = *(v75 + 6) == 0x626F5F7265626D65 && *(v75 + 14) == 0x696F705F7463656ALL;
        if (v76 && *(v75 + 22) == 1919251566)
        {
          sub_2977FB7B4(&v795, "__is_member_object_pointer");
          v7 = *(a1 + 168);
          v8 = v795;
          v9 = v796;
          v10 = 235;
          goto LABEL_333;
        }
      }

      return 0;
    case 28:
      if (*sub_2977FB720(v797) != 24415)
      {
        return 0;
      }

      v25 = sub_297803A20(v797, 2);
      if (v25 == 105)
      {
        if (*(sub_2977FB720(v797) + 3) != 24435)
        {
          return 0;
        }

        v260 = sub_297803A20(v797, 5);
        if (v260 == 116)
        {
          v565 = sub_2977FB720(v797);
          if (*(v565 + 6) == 0x796C6C6169766972 && *(v565 + 14) == 0x757274736E6F635FLL && *(v565 + 20) == 0x656C626974637572)
          {
            sub_2977FB7B4(&v795, "__is_trivially_constructible");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 214;
            goto LABEL_333;
          }
        }

        else if (v260 == 109)
        {
          v261 = sub_2977FB720(v797);
          v262 = *(v261 + 6) == 0x75665F7265626D65 && *(v261 + 14) == 0x705F6E6F6974636ELL;
          if (v262 && *(v261 + 20) == 0x7265746E696F705FLL)
          {
            sub_2977FB7B4(&v795, "__is_member_function_pointer");
            v7 = *(a1 + 168);
            v8 = v795;
            v9 = v796;
            v10 = 236;
            goto LABEL_333;
          }
        }

        return 0;
      }

      if (v25 != 98)
      {
        return 0;
      }

      v26 = sub_2977FB720(v797);
      v27 = *(v26 + 3) == 0x745F6E69746C6975 && *(v26 + 11) == 0x6D6F635F73657079;
      v28 = v27 && *(v26 + 19) == 0x5F656C6269746170;
      if (!v28 || *(v26 + 27) != 112)
      {
        return 0;
      }

      sub_2977FB7B4(&v795, "__builtin_types_compatible_p");
      v7 = *(a1 + 168);
      v8 = v795;
      v9 = v796;
      v10 = 170;
LABEL_62:
      v30 = 128;
      return sub_29783B7D0(v8, v9, v10, v30, v7, a1);
    case 30:
      v118 = sub_2977FB720(v797);
      if (*v118 != 0x72745F7361685F5FLL || v118[1] != 0x6F6D5F6C61697669 || v118[2] != 0x74736E6F635F6576 || *(v118 + 22) != 0x726F746375727473)
      {
        return 0;
      }

      sub_2977FB7B4(&v795, "__has_trivial_move_constructor");
      v7 = *(a1 + 168);
      v8 = v795;
      v9 = v796;
      v10 = 199;
      goto LABEL_333;
    default:
      return result;
  }
}