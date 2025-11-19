uint64_t sub_29783B7D0(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4, uint64_t *a5, uint64_t a6)
{
  if (sub_29783B9A8(a5))
  {
    if ((a4 & 0x8000) == 0)
    {
      v12 = sub_29783B9A8(a5);
      v13 = 0;
      v14 = 0;
      v16 = (a4 & 0x100000) == 0 || v12 != 2;
      goto LABEL_17;
    }

LABEL_16:
    v16 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  if (a4 == 61439)
  {
    goto LABEL_16;
  }

  v17 = *a5;
  if ((a4 & 2) != 0 && (v17 & 0x40) != 0)
  {
    goto LABEL_16;
  }

  if (a4 & 4) != 0 && (v17 & 0x80) != 0 || (a4 & 1) != 0 && (v17)
  {
    goto LABEL_16;
  }

  if ((a4 & 8) != 0 && (v17 & 0x1000000) != 0 || (a4 & 0x10) != 0 && (v17 & 8) != 0 || (a4 & 0x100) != 0 && (v17 & 0x20) != 0)
  {
    v16 = 0;
    v13 = 0;
    v14 = 1;
    goto LABEL_17;
  }

  if ((a4 & 0x20) != 0 && (v17 & 0x40000) != 0 || (a4 & 0x4000) != 0 && (v17 & 0x80000) != 0 || (a4 & 0x2000) != 0 && (v17 & 0x100000) != 0 || (a4 & 0x40) != 0 && (v17 & 0x400000000) != 0 || (a4 & 0x200) != 0 && (a5[2] & 0x4000) != 0 || (a4 & 0x80) != 0 && (v17 & 0x40) == 0 || (a4 & 0x400) != 0 && (v17 & 2) != 0 || (a4 & 0x800) != 0 && (v17 & 0x800) != 0)
  {
    goto LABEL_16;
  }

  v14 = 0;
  v16 = (v17 & 0x40) == 0 || (a4 & 4) == 0;
  v13 = !v16;
LABEL_17:
  v18 = v16 | (a4 >> 12) & ((*a5 & 4) >> 2);
  if ((v18 & 1) == 0)
  {
    sub_29783C278(a6, a1, a2);
    if (v13)
    {
      v19 = 6;
    }

    else
    {
      v19 = a3;
    }

    v20 = sub_29783C318(a6, a1, a2, v19);
    sub_29783C348(v20, v14);
    sub_29783C378(v20, v13);
  }

  return v18 ^ 1u;
}

unsigned int *sub_29783B968(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v4 = sub_29783C318(a4, a1, a2, a3);

  return sub_29783C3A8(v4, 1);
}

unsigned int *sub_29783B9B4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = sub_297828D2C(a4, a1, a2);

  return sub_29783C3D8(v5, a3);
}

uint64_t sub_29783B9F8(uint64_t a1)
{
  v2 = sub_297828CD0(a1);
  if (v2 < 2)
  {
    return 0;
  }

  v4 = v2;
  v5 = sub_297828CB8(a1);
  result = 0;
  v6 = (*v5 + *(v5 + 2) + 30) & 0x1F | (32 * v4);
  if (v6 <= 209)
  {
    if (v6 > 170)
    {
      if (v6 > 182)
      {
        switch(v6)
        {
          case 183:
            v7 = (*v5 ^ 0x65646E75 | *(v5 + 4) ^ 0x66) == 0;
            v8 = 11;
            break;
          case 200:
            v7 = (*v5 ^ 0x69666564 | v5[2] ^ 0x656E) == 0;
            v8 = 10;
            break;
          case 207:
            v7 = (*v5 ^ 0x67617270 | v5[2] ^ 0x616D) == 0;
            v8 = 14;
            break;
          default:
            return result;
        }

        goto LABEL_72;
      }

      if (v6 != 171)
      {
        if (v6 == 172)
        {
          v7 = (*v5 ^ 0x6E656469 | *(v5 + 4) ^ 0x74) == 0;
          v8 = 18;
        }

        else
        {
          if (v6 != 181)
          {
            return result;
          }

          v7 = (*v5 ^ 0x6F727265 | *(v5 + 4) ^ 0x72) == 0;
          v8 = 13;
        }

        goto LABEL_72;
      }

      v9 = *v5;
      v10 = *(v5 + 4);
      v12 = v9 == 1701078633 && v10 == 102;
      return (2 * v12);
    }

    else
    {
      if (v6 > 149)
      {
        switch(v6)
        {
          case 150:
            v7 = *v5 == 1702063205;
            v8 = 5;
            break;
          case 152:
            v7 = *v5 == 1701734764;
            v8 = 12;
            break;
          case 167:
            v7 = (*v5 ^ 0x69646E65 | *(v5 + 4) ^ 0x66) == 0;
            v8 = 6;
            break;
          default:
            return result;
        }

        goto LABEL_72;
      }

      switch(v6)
      {
        case 71:
          return *v5 == 26217;
        case 140:
          return 4 * (*v5 == 1718185061);
        case 148:
          v7 = *v5 == 1935893363;
          v8 = 19;
LABEL_72:
          if (v7)
          {
            return v8;
          }

          else
          {
            return 0;
          }
      }
    }
  }

  else
  {
    if (v6 <= 233)
    {
      if (v6 > 229)
      {
        switch(v6)
        {
          case 230:
            v7 = (*v5 ^ 0x73726576 | *(v5 + 3) ^ 0x6E6F6973) == 0;
            v8 = 24;
            break;
          case 231:
            v7 = (*v5 ^ 0x6E726177 | *(v5 + 3) ^ 0x676E696E) == 0;
            v8 = 17;
            break;
          case 232:
            v7 = (*v5 ^ 0x69666564 | *(v5 + 3) ^ 0x64656E69) == 0;
            v8 = 7;
            break;
          default:
            return result;
        }
      }

      else
      {
        switch(v6)
        {
          case 210:
            v7 = (*v5 ^ 0x65737361 | v5[2] ^ 0x7472) == 0;
            v8 = 20;
            break;
          case 213:
            v7 = (*v5 ^ 0x646E6669 | v5[2] ^ 0x6665) == 0;
            v8 = 3;
            break;
          case 215:
            v7 = (*v5 ^ 0x6F706D69 | v5[2] ^ 0x7472) == 0;
            v8 = 15;
            break;
          default:
            return result;
        }
      }

      goto LABEL_72;
    }

    if (v6 <= 393)
    {
      if (v6 != 234)
      {
        if (v6 == 276)
        {
          v7 = *v5 == 0x7472657373616E75;
          v8 = 21;
        }

        else
        {
          if (v6 != 311)
          {
            return result;
          }

          v7 = (*v5 ^ 0x6F69736E65747865 | *(v5 + 8) ^ 0x6ELL) == 0;
          v8 = 25;
        }

        goto LABEL_72;
      }

      v17 = *v5;
      v18 = *(v5 + 3);
      v20 = v17 == 1818455657 && v18 == 1701082476;
      return (8 * v20);
    }

    else
    {
      if (v6 > 492)
      {
        if (v6 == 493)
        {
          v7 = (*v5 ^ 0x7461766972705F5FLL | *(v5 + 7) ^ 0x6F7263616D5F6574) == 0;
          v8 = 23;
        }

        else
        {
          if (v6 != 518)
          {
            return result;
          }

          v7 = (*v5 ^ 0x64756C636E695F5FLL | *(v5 + 1) ^ 0x736F7263616D5F65) == 0;
          v8 = 9;
        }

        goto LABEL_72;
      }

      if (v6 != 394)
      {
        if (v6 != 461)
        {
          return result;
        }

        v7 = (*v5 ^ 0x63696C6275705F5FLL | *(v5 + 3) ^ 0x6F7263616D5F6369) == 0;
        v8 = 22;
        goto LABEL_72;
      }

      v13 = *v5;
      v14 = *(v5 + 2);
      v16 = v13 == 0x5F6564756C636E69 && v14 == 1954047342;
      return (16 * v16);
    }
  }

  return result;
}

uint64_t sub_29783C018(const void **a1, uint64_t *a2, int a3)
{
  LODWORD(v3) = a3;
  result = sub_2978039F8(a1, a3);
  if (v3)
  {
    v3 = v3;
    do
    {
      v7 = *a2++;
      result = sub_2978038A4(a1, v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

void *sub_29783C06C(void *a1)
{
  v2 = sub_2977FA198(160);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[8] = 0u;
  v2[9] = 0u;
  *a1 = sub_29783C0B8();
  return a1;
}

void *sub_29783C0C0(void *a1)
{
  v2 = sub_29783C0F0(*a1);
  j__free(v2);
  return a1;
}

void *sub_29783C0F8(void *a1)
{
  result = sub_29783C12C(a1);
  *result = &unk_2A1E55038;
  return result;
}

uint64_t sub_29783C17C(unsigned int *a1)
{
  v2 = sub_29783C224(a1);
  v3 = sub_29783C230(a1);
  v4 = sub_29783C23C(a1);
  v5 = sub_29783C248(a1);
  result = sub_29783C254(a1);
  v7 = 0x4000000;
  if ((v2 & 1) == 0 && (v3 & 1) == 0 && (v4 & 1) == 0 && (v5 & 1) == 0 && (result & 1) == 0)
  {
    result = sub_29783C260(a1);
    if ((result & 1) == 0)
    {
      result = sub_29783C26C(a1);
      if (result)
      {
        v7 = 0x4000000;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  *a1 = *a1 & 0xFBFFFFFF | v7;
  return result;
}

unsigned int *sub_29783C278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a2;
  v11[1] = a3;
  v4 = sub_297828E58(a1, a2, a3);
  result = *sub_297819E7C(v4);
  if (!result)
  {
    v6 = sub_297828E6C(a1);
    v7 = sub_297828E70(v6, 1);
    v10 = sub_297830E6C(v7);
    sub_297828E60(v4, &v10);
    *(v10 + 2) = v4;
    sub_2977FB7B4(v9, "import");
    v8 = sub_2977FB778(v11, v9[0], v9[1]);
    result = v10;
    if (v8)
    {
      sub_297831F68(v10, 1);
      return v10;
    }
  }

  return result;
}

unsigned int *sub_29783C318(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  result = sub_297828D2C();
  *result = *result & 0xFFFFFE00 | a4 & 0x1FF;
  return result;
}

unsigned int *sub_29783C348(unsigned int *a1, int a2)
{
  if (a2)
  {
    v2 = 0x400000;
  }

  else
  {
    v2 = 0;
  }

  v3 = *a1 & 0xFFBFFFFF | v2;
  *a1 = v3;
  if (!a2)
  {
    return sub_29783C17C(a1);
  }

  *a1 = v3 | 0x4000000;
  return a1;
}

unsigned int *sub_29783C378(unsigned int *a1, int a2)
{
  if (a2)
  {
    v2 = 0x800000;
  }

  else
  {
    v2 = 0;
  }

  v3 = *a1 & 0xFF7FFFFF | v2;
  *a1 = v3;
  if (!a2)
  {
    return sub_29783C17C(a1);
  }

  *a1 = v3 | 0x4000000;
  return a1;
}

unsigned int *sub_29783C3A8(unsigned int *a1, int a2)
{
  if (a2)
  {
    v2 = 0x2000000;
  }

  else
  {
    v2 = 0;
  }

  v3 = *a1 & 0xFDFFFFFF | v2;
  *a1 = v3;
  if (!a2)
  {
    return sub_29783C17C(a1);
  }

  *a1 = v3 | 0x4000000;
  return a1;
}

uint64_t sub_29783C3E8(uint64_t a1)
{
  v2 = sub_29783C41C(a1, 6);
  sub_297817C28((v2 + 24));
  return a1;
}

void *sub_29783C420(uint64_t a1, char a2)
{
  result = sub_297803B90(a1, a2);
  *result = &unk_2A1E55060;
  return result;
}

void sub_29783C458()
{
  v0 = sub_29783C454();

  j__free(v0);
}

uint64_t sub_29783C480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return sub_29783C4C8(v3, a3);
}

BOOL sub_29783C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a2 - 8;
  }

  else
  {
    v5 = 0;
  }

  return sub_29783C524(v5, a3, a4, a5);
}

uint64_t sub_29783C4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return sub_29783C568(v3, a3);
}

uint64_t sub_29783C4CC(_DWORD *a1, const void **a2)
{
  v4 = sub_297806460(a1);
  v5 = sub_29783C00C(a1);

  return sub_29783C018(a2, v4, v5);
}

BOOL sub_29783C524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29783C4C8(a1, a4);

  return sub_297803AB8(a4, a2);
}

uint64_t sub_29783C568(uint64_t a1, uint64_t a2)
{
  sub_29783C4C8(a1, a2);

  return sub_297803A2C(a2);
}

uint64_t sub_29783C5A0(uint64_t a1)
{
  sub_297818154(a1 + 24);

  return sub_29783C454(a1);
}

uint64_t sub_29783C5DC(uint64_t a1)
{
  sub_29783C720((a1 + 68));
  sub_297802744(a1 + 88);
  sub_297802744(a1 + 112);
  sub_297802744(a1 + 136);
  sub_297802744(a1 + 160);
  sub_297809B88((a1 + 184));
  sub_29783C724((a1 + 208));
  *a1 = *a1 & 0xF000000000000000 | 0x144430203A04000;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFE000 | 0xC00;
  sub_29783C728(a1, 0);
  v2 = *(a1 + 24) & 0xFFFFFFFFFE000000 | 0x8028;
  *(a1 + 16) &= 0xFFFF9FFFuLL;
  *(a1 + 24) = v2;
  sub_29783C738(a1, 0);
  *(a1 + 24) &= 0xFFFFFFFFF1FFFFFFLL;
  sub_29783C750(a1, 0);
  sub_29783C768(a1, 2);
  sub_29783C780(a1, 2);
  sub_29783C798(a1, 0);
  sub_29783C7B0(a1, 0);
  *(a1 + 28) = 256;
  *(a1 + 32) = xmmword_2978FAE90;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a1 + 56) & 0xF8 | 1;
  sub_29783C7C0(a1, 0);
  *(a1 + 56) &= 0xE7u;
  *(a1 + 60) = 0;
  return a1;
}

_DWORD *sub_29783C7D4(_DWORD *a1)
{
  *a1 = 0;
  sub_29783C800(a1 + 1);
  return a1;
}

uint64_t sub_29783C804(uint64_t result)
{
  *result &= 0x8000000080000000;
  *(result + 8) = 0;
  *(result + 12) &= 0xFCu;
  return result;
}

uint64_t sub_29783C824(void *a1)
{
  result = sub_297809B88(a1);
  *(result + 24) = 0;
  return result;
}

uint64_t sub_29783C840(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v20 = a2;
  v21 = a3;
  sub_297801F5C(&v20, a1);
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  sub_29783CA04(a1 + 40);
  sub_297809B88((a1 + 48));
  sub_29783CA08(a1 + 72);
  *(a1 + 104) = 0;
  sub_29783CA0C(a1 + 112);
  sub_297809B88((a1 + 200));
  sub_29783CA10(a1 + 224, 0);
  sub_29782A6EC(a1 + 248);
  sub_29782A6EC(a1 + 288);
  sub_29782A6EC(a1 + 328);
  sub_29783CA14(a1 + 368);
  sub_29783CA18(a1 + 440);
  if (a7)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    v13 = 10;
  }

  else
  {
    v13 = 2;
  }

  *(a1 + 528) = v13 | v12 | *(a1 + 528) & 0xF000;
  *(a1 + 532) = 0;
  sub_297829180((a1 + 536));
  sub_297829180((a1 + 540));
  sub_29782A6EC(a1 + 544);
  sub_29782A6EC(a1 + 584);
  sub_29783CA1C(a1 + 624);
  sub_29782A6EC(a1 + 856);
  sub_29783CA20(a1 + 896);
  sub_29783CA18(a1 + 1096);
  sub_297809B88((a1 + 1184));
  sub_297809B88((a1 + 1208));
  sub_297809B88((a1 + 1232));
  if (a5)
  {
    v14 = sub_29783CA24(a5);
    v15 = *(a1 + 528);
    if ((v14 & 1) == 0)
    {
      v15 &= ~2u;
      *(a1 + 528) = v15;
    }

    v16 = *(a5 + 528);
    if ((v16 & 0x20) != 0)
    {
      v15 |= 0x20u;
      *(a1 + 528) = v15;
      v16 = *(a5 + 528);
    }

    if ((v16 & 0x40) != 0)
    {
      v15 |= 0x40u;
      *(a1 + 528) = v15;
      v16 = *(a5 + 528);
    }

    *(a1 + 528) = v15 & 0xFFFE | v16 & 1;
    v17 = sub_29780BD00((a5 + 48));
    *sub_29783CA30(a5 + 72, v20, v21) = v17;
    v19 = a1;
    sub_29781B720(a5 + 48, &v19);
  }

  return a1;
}

uint64_t sub_29783CA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29783E064(a1, a2, a3);

  return sub_29783D400(v3);
}

void sub_29783CA60(std::string *a1, uint64_t a2)
{
  v6 = sub_29783CB7C(a1, a2);
  v5 = sub_29783CB84(a1, v3);
  while (sub_29780852C(&v6, &v5))
  {
    if (*sub_2977FB720(&v6))
    {
      v4 = sub_29783CB8C();
      j__free(v4);
    }

    sub_29781B504(&v6);
  }

  sub_29782D694(&a1[51].__r_.__value_.__r.__words[1]);
  sub_29783CB90(&a1[50].__r_.__value_.__r.__words[1]);
  sub_297809B8C(&a1[49].__r_.__value_.__r.__words[1]);
  sub_29783CB94(&a1[45].__r_.__value_.__r.__words[2]);
  sub_29783CB98(&a1[37].__r_.__value_.__r.__words[1]);
  sub_2977FD134(&a1[35].__r_.__value_.__r.__words[2]);
  sub_29783CB9C(&a1[26]);
  sub_2977FD134(&a1[24].__r_.__value_.__r.__words[1]);
  sub_2977FD134(&a1[22].__r_.__value_.__r.__words[2]);
  sub_29783CB94(&a1[18].__r_.__value_.__r.__words[1]);
  sub_29783CBA0(&a1[15].__r_.__value_.__r.__words[1]);
  sub_2977FD134(&a1[13].__r_.__value_.__r.__words[2]);
  sub_2977FD134(&a1[12]);
  sub_2977FD134(&a1[10].__r_.__value_.__r.__words[1]);
  sub_29783CBA4(&a1[9].__r_.__value_.__r.__words[1]);
  sub_297809B8C(&a1[8].__r_.__value_.__r.__words[1]);
  sub_29783CBA8(&a1[4].__r_.__value_.__r.__words[2]);
  sub_29783CBAC(&a1[3]);
  sub_29781B950(&a1[2]);
  std::string::~string(a1);
}

BOOL sub_29783CBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[0] = a1;
  v32[1] = a2;
  sub_2978102C8(v31, a1, a2);
  LOBYTE(v22) = (*a3 & 0x400000000) != 0;
  v8 = sub_2978102CC(v31, "altivec", &v22);
  v30 = *(a3 + 6) & 1;
  v9 = sub_297810504(v8, "blocks", &v30);
  v29 = (*a3 & 0x40) != 0;
  v10 = sub_297812160(v9, "cplusplus", &v29);
  v28 = (*a3 & 0x80) != 0;
  v11 = sub_297811E3C(v10, "cplusplus11", &v28);
  v27 = (*a3 & 0x400) != 0;
  v12 = sub_29781049C(v11, "objc", &v27);
  v26 = (*(a3 + 24) & 0x200000) != 0;
  v13 = sub_297810578(v12, "objc_arc", &v26);
  v25 = (*(a3 + 16) & 0x4000) != 0;
  v14 = sub_297810504(v13, "opencl", &v25);
  v24 = sub_29783D8D0(a4);
  v15 = sub_297810428(v14, "tls", &v24);
  v23 = (*(*a4 + 192))(a4, a1, a2);
  if (sub_297828CA4(v15, &v23))
  {
    return 1;
  }

  v18 = sub_29780A294((a3 + 184), v16);
  v20 = sub_297809B0C(a3 + 184, v19);
  v31[0] = sub_29783D8D8(v18, v20, v32);
  v22 = sub_297809B0C(a3 + 184, v21);
  return sub_29780852C(v31, &v22);
}

BOOL sub_29783CDBC(uint64_t a1, uint64_t a2)
{
  do
  {
    v2 = a1;
    if (a1 == a2)
    {
      break;
    }

    a1 = *(a1 + 32);
  }

  while (a1);
  return v2 == a2;
}

uint64_t sub_29783CDDC(uint64_t a1)
{
  do
  {
    v1 = a1;
    a1 = *(a1 + 32);
  }

  while (a1);
  return v1;
}

uint64_t sub_29783CDF0@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  sub_29783CEF0(v11);
  for (; a1; a1 = *(a1 + 32))
  {
    sub_2978044E8(&v10, a1);
    sub_297803F88(v11, &v10);
  }

  sub_297802744(a2);
  *&v10 = sub_29783CEF4(v11);
  *(&v10 + 1) = v4;
  v9[0] = sub_29783CF24(v11);
  v9[1] = v5;
  while (sub_29783CF54(&v10, v9))
  {
    if (!sub_29780347C(a2))
    {
      sub_297804334(a2, 46);
    }

    v6 = sub_29780A9C0(&v10);
    sub_29780435C(a2, *v6, v6[1]);
    sub_29783CF8C(&v10);
  }

  result = sub_2977FD134(v11);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29783CEF4(uint64_t a1)
{
  v1 = sub_2977FB7B8(a1);
  sub_29783E2AC(&v3, v1);
  return v3;
}

uint64_t sub_29783CF24(uint64_t a1)
{
  v1 = sub_2977FB720(a1);
  sub_29783E2AC(&v3, v1);
  return v3;
}

uint64_t sub_29783CF9C(uint64_t a1)
{
  v2 = sub_29783CFF4(a1);
  if (v2)
  {

    return sub_29783CFFC(v2);
  }

  else
  {

    return sub_29783D004((a1 + 40));
  }
}

uint64_t sub_29783D004(unsigned __int8 *a1)
{
  if (!sub_29783E2B8(a1))
  {
    return 0;
  }

  return sub_29783DA74(a1, v2);
}

uint64_t sub_29783D050(uint64_t a1, uint64_t *a2)
{
  v4 = sub_29783DAC8(a1, *a2);
  if (v4)
  {
    sub_2978040A4(a1 + 48, a2);
  }

  return v4;
}

uint64_t sub_29783D09C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  v13 = a3;
  v11 = a4;
  sub_29783D198(&v10, &v12, &v11);
  sub_29783D128((a1 + 440), &v10);
  j_std::string::~string(&v10);
  result = sub_29783CBE8(v12, v13, a5, a6);
  if (v11 != result)
  {
    return sub_29783D19C(a1, 1);
  }

  return result;
}

uint64_t sub_29783D128(void *a1, uint64_t a2)
{
  if (a1[1] >= a1[2])
  {
    sub_29783E310(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_29783E400(v4, a2);
  v5 = sub_2977FB7B8(a1) + 32;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_29783D19C(uint64_t result, __int16 a2)
{
  v12[5] = *MEMORY[0x29EDCA608];
  if ((*(result + 528) & 2) != 0)
  {
    v3 = result;
    sub_29782A6EC(v12);
    v11 = v3;
    sub_2978040A4(v12, &v11);
    while (!sub_297806904(v12))
    {
      v4 = *sub_29783D2C4(v12);
      sub_29783D2E0(v12);
      v6 = *(v4 + 528);
      if ((v6 & 2) != 0)
      {
        *(v4 + 528) = (v6 | a2) & 0xFFFD;
        v11 = sub_29783CB7C(v4, v5);
        v10 = sub_29783CB84(v4, v7);
        while (sub_29780852C(&v11, &v10))
        {
          if ((*(*sub_2977FB720(&v11) + 528) & 2) != 0)
          {
            v8 = sub_2977FB720(&v11);
            sub_2978040A4(v12, v8);
          }

          sub_29781B504(&v11);
        }
      }
    }

    result = sub_2977FD134(v12);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29783D2E0(uint64_t a1)
{
  v2 = sub_2977FB7B8(a1) - 8;

  return sub_2977FD5DC(a1, v2);
}

uint64_t sub_29783D31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_29783D390((a1 + 72), a2, a3);
  v7 = sub_29783BFD4(a1 + 72);
  if (sub_297815520(&v8, &v7))
  {
    return 0;
  }

  v5 = sub_29781AD54(&v8);
  v6 = sub_29783D400(v5);
  return *sub_2977FE5F8((a1 + 48), *v6);
}

uint64_t sub_29783D390(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29780EF2C(a1, a2, a3);
  if (v4 == -1)
  {

    return sub_29783BFD4(a1);
  }

  else
  {
    sub_29781C1DC(&v6, *a1 + 8 * v4, 1);
    return v6;
  }
}

void *sub_29783D4E0(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_29783D538(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

void sub_29783D538(std::string *a1, std::string *a2)
{
  if (a2 != a1)
  {
    v2 = a2;
    do
    {
      v2 = (v2 - 32);
      j_std::string::~string(v2);
    }

    while (v2 != a1);
  }
}

void *sub_29783D580(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_29783D5D8(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

uint64_t sub_29783D5D8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v2 -= 88;
      result = sub_29783CB94(v2);
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_29783D620(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_29783D678(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

uint64_t sub_29783D678(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v2 -= 104;
      result = sub_29783D6BC(v2);
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_29783D6F0(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_29783D748(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

uint64_t sub_29783D748(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v2 -= 40;
      result = sub_29782D764(v2);
    }

    while (v2 != v3);
  }

  return result;
}

void **sub_29783D794(void **a1)
{
  sub_29783D7C4(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_29783D7C4(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_29782F360();
    v4 = sub_29782F70C();
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

uint64_t sub_29783D884(uint64_t a1)
{
  sub_2977FD134(a1 + 48);

  return sub_29783D8C0(a1);
}

uint64_t sub_29783D8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780C8A4(a1);
  v7 = sub_29780C8A4(a2);
  v8 = sub_29783D944(v6, v7, a3, &v10);
  return sub_29783D940(a1, v8);
}

uint64_t sub_29783D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = a1; i != a2; i += 24)
  {
    v8 = sub_297813268(a4, i);
    sub_2978044E8(v10, v8);
    if (sub_297804D28(v10[0], v10[1], *a3, *(a3 + 8)))
    {
      break;
    }
  }

  return i;
}

uint64_t sub_29783D9C0(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v3 = sub_29780C8D4(&v5);
  return sub_297829774(&v5, 0xAAAAAAAAAAAAAAABLL * ((a2 - v3) >> 3));
}

uint64_t sub_29783DA10(unsigned __int8 *a1)
{
  if (!sub_29783DA5C(a1))
  {
    return 0;
  }

  return sub_29783DA74(a1, v2);
}

uint64_t sub_29783DA74(void *a1, uint64_t a2)
{
  v2 = sub_29783D408(a1, a2);

  return j_nullsub_1(v2, v3);
}

uint64_t sub_29783DAC8(uint64_t a1, uint64_t a2)
{
  v3 = j_nullsub_1(a2, a2);

  return sub_29780A3EC(a1, v3);
}

uint64_t sub_29783DB18(uint64_t a1)
{
  v2 = sub_29783DB48();
  sub_29782A6EC(v2 + 48);
  return a1;
}

uint64_t sub_29783DB60(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  sub_29783DB90(a1);
  return a1;
}

void *sub_29783DB90(uint64_t a1)
{
  if (sub_29780A4F8(a1))
  {
    v2 = *(a1 + 16);
LABEL_3:
    result = memset(*(a1 + 8), 255, 8 * v2);
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    return result;
  }

  v2 = *(a1 + 16);
  if (v2 <= 4 * *(a1 + 20) || v2 < 0x21)
  {
    goto LABEL_3;
  }

  return sub_29780A338(a1);
}

uint64_t sub_29783DC0C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_29783DC40(v4, v2);
  return a1;
}

uint64_t sub_29783DC40(uint64_t a1, unsigned int a2)
{
  result = sub_29783DC8C(a1, a2);
  if (result)
  {

    return sub_29783DCD8(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

BOOL sub_29783DC8C(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = a2;
  if (a2)
  {
    v4 = sub_2977FA198(16 * a2);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return a2 != 0;
}

uint64_t sub_29783DCD8(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  sub_29782AF58(a1, 0);
  v2 = sub_29782F360();
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

uint64_t sub_29783DDD8(uint64_t a1)
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
          sub_29783DE54(v5, a1 + 24);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void sub_29783DE54(unsigned int *a1, int a2)
{
  sub_2977FB5F0(a1);

  sub_29781827C(a2, a1);
}

uint64_t sub_29783DE98(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29783DED8(&v3);
  return a1;
}

uint64_t *sub_29783DED8(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29783DF48(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_29783DF94(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

uint64_t sub_29783DF48(uint64_t *a1)
{
  v2 = sub_29783D4B8(a1);
  sub_29783DFBC(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_29783DFBC(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_29783E018(v3, v5))
  {
    i -= 112;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_29783E028(uint64_t a1)
{
  std::string::~string((a1 + 88));

  return sub_29783CB94(a1);
}

uint64_t sub_29783E06C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  sub_29783E1BC(v11, &v10, v7);
  v8 = sub_29783E0C8(a1, v7);
  v9 = v5;
  return sub_29781AD54(&v8);
}

uint64_t sub_29783E0C8(uint64_t a1, uint64_t a2)
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

  *(v5 + 8 * v6) = sub_29783E1CC(*a2, *(a2 + 8), a1 + 24, *(a2 + 16));
  ++*(a1 + 12);
  v8 = sub_29780F0F4(a1, v6);
  sub_29781C144(v11, *a1 + 8 * v8, 0);
  v10 = 1;
  return sub_29780EB40(v11, &v10);
}

void *sub_29783E1CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v12[0] = a1;
  v12[1] = a2;
  v6 = sub_2977FB7B8(v12);
  sub_297811B28();
  v7 = sub_297803F78(a3, (v6 + 9));
  v8 = sub_29783E260(v7, v6, a4);
  v9 = sub_297819E7C(v8);
  v10 = sub_2977FB720(v12);
  memcpy(v9, v10, v6);
  *(v9 + v6) = 0;
  return v7;
}

_DWORD *sub_29783E264(_DWORD *a1, int a2, int a3)
{
  result = sub_29780819C(a1, a2);
  result[1] = a3;
  return result;
}

__n128 sub_29783E290(__n128 *a1, __n128 *a2, unsigned __int32 *a3)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u32[0] = *a3;
  return result;
}

void *sub_29783E2B0(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = a2;
  return result;
}

uint64_t sub_29783E2D4(uint64_t a1, void *a2, _BYTE *a3)
{
  sub_297801F5C(a2, a1);
  *(a1 + 24) = *a3;
  return a1;
}

uint64_t sub_29783E310(void *a1, unint64_t a2)
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

  v8 = malloc_type_malloc(32 * v7, 0x101204042049022uLL);
  v9 = sub_2977FB720(a1);
  v10 = sub_2977FB7B8(a1);
  sub_29783E43C(v9, v10, v8);
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

uint64_t sub_29783E43C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = sub_29783E400(a3, v5);
      v5 += 32;
      a3 += 32;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t sub_29783E494(uint64_t a1, uint64_t a2)
{
  result = sub_297808AB4(a1, a2);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t sub_29783E4D0(_DWORD *a1, unsigned int a2)
{
  v6 = a2;
  v3 = sub_29782D9A0(&v6);
  v4 = v6;
  if (!v3)
  {
    return sub_297840F48(a1, v6);
  }

  return v4;
}

uint64_t sub_29783E548(_DWORD *a1, int a2)
{
  v5 = a2;
  v3 = sub_29783E760(&v5);
  if (sub_29783E76C(a1, a1[134], v3))
  {
    return a1[134];
  }

  else
  {
    return sub_297840AF4(a1, v3);
  }
}

uint64_t sub_29783E5C0(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v12 = 0;
  v5 = sub_29783E808(a1, a2, &v12);
  if ((v12 & 1) != 0 || (v6 = v5, (sub_29783E940(v5) & 1) == 0))
  {
    if (a3)
    {
      *a3 = 1;
    }

    return sub_29784027C(a1);
  }

  else
  {
    v7 = sub_297819E7C(v6);
    v8 = sub_29783E95C(v7);
    v9 = *(a1 + 8);
    sub_297829180(&v11);
    return sub_29783EB40(v8, v9, a1, v11, a3);
  }
}

uint64_t sub_29783E664(_DWORD *a1, int a2)
{
  v12 = a2;
  v11 = sub_29783E548(a1, a2);
  v10 = 0;
  v3 = sub_29783E808(a1, v11, &v10);
  if (v10 == 1)
  {
    sub_297829180(&v8);
    v7 = 0;
    v9 = sub_2978182B8(&v8, &v7);
    sub_2978182E8(&v13, &v9);
    return v13;
  }

  else
  {
    v5 = v3;
    v6 = sub_29783E760(&v12);
    LODWORD(v9) = v6 - sub_29783E830(v5);
    return sub_2978182B8(&v11, &v9);
  }
}

void *sub_29783E718(uint64_t a1, uint64_t a2)
{
  result = sub_29781EBB0(a1, 0);
  *result = &unk_2A1E54E90;
  result[5] = a2;
  return result;
}

BOOL sub_29783E76C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_29783E808(a1, a2, 0);
  if (sub_29783E830(v6) > a3)
  {
    return 0;
  }

  if (a2 == -2)
  {
    return 1;
  }

  v8 = a2 + 1;
  if (v8 == sub_29783E83C(a1 + 224))
  {
    return *(a1 + 496) > a3;
  }

  else
  {
    v10 = sub_29783E880(a1, v8, 0);
    return sub_29783E830(v10) > a3;
  }
}

uint64_t sub_29783E808(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 + 1 > 1)
  {
    return sub_29783E880(a1, a2, a3);
  }

  if (a3)
  {
    *a3 = 1;
  }

  return sub_29783E88C(a1 + 224, 0);
}

uint64_t sub_29783E880(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return sub_29783E8B8(a1, a2, a3);
  }

  else
  {
    return sub_29783E8C4(a1, a2);
  }
}

uint64_t sub_29783E8CC(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v8[0] = sub_29781B500((a1 + 504), a2);
  v8[1] = v6;
  if (sub_2978100D8(v8))
  {
    return sub_29783E88C(a1 + 440, a2);
  }

  else
  {
    return sub_2978400B8(a1, a2, a3);
  }
}

uint64_t sub_29783E974(uint64_t a1)
{
  if (sub_29783E9D0(a1))
  {
    v3 = sub_29783D408((a1 + 8), v2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

uint64_t sub_29783E9F8(uint64_t a1, uint64_t a2)
{
  if (!sub_29783D408((a1 + 8), a2))
  {
    return sub_2977FB7B8(*(a1 + 24));
  }

  v4 = sub_29783D408((a1 + 8), v3);
  return sub_2978059FC(v4);
}

unint64_t *sub_29783EA3C(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2 || (v6 = (a1 + 8), sub_29783D408((a1 + 8), a2) != a2))
  {
    if (sub_29783E9D0(a1))
    {
      v8 = sub_29783D408((a1 + 8), v7);
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    v6 = (a1 + 8);
    sub_29783EB08((a1 + 8), a2);
  }

  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  return sub_29783EAF0(v6, v9);
}

uint64_t sub_29783EB08(uint64_t *a1, uint64_t a2)
{
  result = nullsub_1(a2, a2);
  *a1 = *a1 & 3 | result;
  return result;
}

uint64_t sub_29783EB40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  if (!sub_29783D408((a1 + 8), a2) && *(a1 + 24))
  {
    sub_297802744(&v76);
    if (sub_29783F010(a3))
    {
      v12 = (*(a1 + 44) & 1) == 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_2977FD5B0(a3);
    v14 = sub_29782EA20(v13, *(a1 + 24), &v76, v12, 1);
    sub_29783EB08((a1 + 8), v14);
    if (sub_29783D408((a1 + 8), v15))
    {
      v17 = sub_29783F060(a1, v16);
      v18 = sub_2978059FC(v17);
      if (v18 == sub_2977FB7B8(*(a1 + 24)))
      {
        v20 = sub_29783D408((a1 + 8), v19);
        v21 = sub_297805334(v20);
        sub_2978102C8(v71, v21, v22);
        v74 = "UTF-16 (BE)";
        v23 = sub_29783F068(v71, "\xFE\xFF", &v74);
        v72 = "UTF-16 (LE)";
        v24 = sub_29783F068(v23, "\xFF\xFE", &v72);
        v70 = "UTF-32 (BE)";
        v25 = sub_297811EF4(v24, &dword_2978FAEA0, &v70);
        v69 = "UTF-32 (LE)";
        v26 = sub_297811EF4(v25, &dword_2978FAEA5, &v69);
        v68 = "UTF-7";
        v27 = sub_29781258C(v26, "+/v", &v68);
        v67 = "UTF-1";
        v28 = sub_29781258C(v27, "\xF7\x64\x4CUTF-1", &v67);
        v66 = "UTF-EBCDIC";
        v29 = sub_297811EF4(v28, "\xDD\x73fs", &v66);
        v65 = "SDSU";
        v30 = sub_29781258C(v29, "\x0E\xFE\xFF", &v65);
        v64 = "BOCU-1";
        v31 = sub_29781258C(v30, "\xFB\xEE\x28BOCU-1", &v64);
        v63 = "GB-18030";
        v32 = sub_297811EF4(v31, "\x841\x953", &v63);
        v62 = 0;
        v33 = sub_297811CC0(v32, &v62);
        if (v33)
        {
          v35 = v33;
          sub_29782B128(a2, a4, 37, v71);
          v36 = sub_29783F028(v71, v35);
          v37 = sub_2977FB720(*(a1 + 24));
          sub_29783F028(v36, v37);
          sub_29782963C(v71);
          v38 = sub_29783F054((a1 + 8));
          sub_29783EAF0((a1 + 8), v38 | 1);
        }

        if (a5)
        {
          *a5 = sub_29783EFF0(a1);
        }

LABEL_30:
        v61 = sub_29783D408((a1 + 8), v34);
        std::string::~string(&v76);
        return v61;
      }

      if (sub_29783F018(a2))
      {
        v55 = sub_2977FB720(*(a1 + 24));
        sub_2977FB7B4(v71, v55);
        sub_2977FB7B4(&v74, &byte_2978FC3E5);
        v49 = v71[0];
        v50 = v71[1];
        v51 = v74;
        v52 = v75;
        v53 = a2;
        v54 = 14;
        goto LABEL_24;
      }

      sub_29782B128(a2, a4, 14, v71);
      v59 = sub_2977FB720(*(a1 + 24));
      sub_29783F028(v71, v59);
      v58 = v71;
    }

    else
    {
      sub_2977FB7B4(v71, "<<<MISSING SOURCE FILE>>>\n");
      v39 = sub_2977FB7B8(*(a1 + 24));
      sub_2977FB7B4(&v74, "<invalid>");
      v40 = sub_297804C54(v39, v74, v75);
      sub_29783EB08((a1 + 8), v40);
      v42 = sub_29783D408((a1 + 8), v41);
      v43 = sub_2977FB7B8(v42);
      v44 = sub_2977FB7B8(*(a1 + 24));
      v45 = v44;
      if (v44)
      {
        v46 = 0;
        do
        {
          v47 = sub_2977FB7B8(v71);
          *(v43 + v46) = sub_297803A20(v71, v46 % v47);
          ++v46;
        }

        while (v45 != v46);
      }

      if (sub_29783F018(a2))
      {
        v48 = sub_2977FB720(*(a1 + 24));
        sub_2977FB7B4(&v74, v48);
        sub_2978044E8(&v72, &v76);
        v49 = v74;
        v50 = v75;
        v51 = v72;
        v52 = v73;
        v53 = a2;
        v54 = 4;
LABEL_24:
        sub_2978294C0(v53, v54, v49, v50, v51, v52);
        goto LABEL_28;
      }

      sub_29782B128(a2, a4, 4, &v74);
      v56 = sub_2977FB720(*(a1 + 24));
      v57 = sub_29783F028(&v74, v56);
      sub_2978044E8(&v72, &v76);
      sub_2978295C0(v57, v72, v73);
      v58 = &v74;
    }

    sub_29782963C(v58);
LABEL_28:
    v60 = sub_29783F054((a1 + 8));
    sub_29783EAF0((a1 + 8), v60 | 1);
    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_30;
  }

  if (a5)
  {
    *a5 = sub_29783EFF0(a1);
  }

  return sub_29783D408((a1 + 8), v10);
}

uint64_t sub_29783F068(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) >= 2 && *a2 == *sub_2977FB720(a1))
  {
    *(a1 + 16) = a3;
  }

  return a1;
}

uint64_t sub_29783F0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29783F158(a1, a2, a3, -1);
  if (*sub_29783D400(v4) != -1)
  {
    return *sub_29783D400(v4);
  }

  v7 = sub_29780BD00((a1 + 160));
  sub_29783F1B4(v4, &v7);
  v6 = v4;
  sub_29781B720(a1 + 160, &v6);
  return sub_29780BD00((a1 + 160)) - 1;
}

uint64_t sub_29783F158(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  sub_29783E1BC(v11, &v10, v7);
  v8 = sub_297844384(a1, v7);
  v9 = v5;
  return sub_29781AD54(&v8);
}

uint64_t sub_29783F1C0(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v13 = a2;
  v8 = sub_29783F278(a1 + 184, &v13);
  if (sub_297806904(v8))
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    if (a5 == -1)
    {
      a5 = *(sub_29783F2E8(v8) + 8);
    }

    v9 = *(sub_29783F2E8(v8) + 12);
    v10 = *(sub_29783F2E8(v8) + 16);
  }

  sub_29783F2F8(a3, a4, a5, v9, v10, v12);
  return sub_29783F2F4(v8, v12);
}

uint64_t sub_29783F278(uint64_t a1, _DWORD *a2)
{
  v10 = sub_297819C3C(a2);
  nullsub_1(v10, v4);
  v11 = sub_29784450C(a1, a2, &unk_2978FAEAA, &v10, &v9);
  v12 = v5;
  v6 = sub_297819804(&v11);
  return nullsub_1(v6, v7) + 8;
}

uint64_t sub_29783F2F8@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, _DWORD *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_29783F308(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v21 = a2;
  v13 = sub_29783F278(a1 + 184, &v21);
  v14 = v13;
  if (a6 == 2)
  {
    v17 = v21;
    v18 = sub_29783F2E8(v13);
    v15 = sub_29783F3F4(a1, v17, *(v18 + 16));
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a6 != 1)
  {
    if (!a6 && !sub_297806904(v13))
    {
      v15 = sub_29783F2E8(v14);
LABEL_8:
      v16 = *(v15 + 16);
      goto LABEL_10;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  v16 = a3 - 1;
LABEL_10:
  sub_29783F2F8(a3, a4, a5, a7, v16, v20);
  return sub_29783F2F4(v14, v20);
}

uint64_t sub_29783F3F4(uint64_t a1, int a2, unsigned int a3)
{
  v15 = a2;
  v14 = a3;
  v4 = sub_29783F278(a1 + 184, &v15);
  if (*sub_29783F2E8(v4) <= a3)
  {
    return sub_29783F2E8(v4);
  }

  v6 = sub_29780A294(v4, v5);
  v8 = sub_297809B0C(v4, v7);
  v13 = sub_29783F4A8(v6, v8, &v14);
  v12 = sub_29780A294(v4, v9);
  if (sub_297808558(&v13, &v12))
  {
    return 0;
  }

  v11 = sub_29783F4AC(&v13);
  return sub_2977FB720(v11);
}

uint64_t sub_29783F4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 544);
  if (!v6)
  {
    v7 = sub_2977FA198(208);
    v6 = sub_29783F51C(v7);
    *(a1 + 544) = v6;
  }

  return sub_29783F0D0(v6, a2, a3);
}

uint64_t sub_29783F520(uint64_t a1, int a2, int a3, int a4)
{
  v7 = sub_29783F5D4(a1, a2);
  v15 = 0;
  v8 = v7;
  v9 = sub_29783E808(a1, v7, &v15);
  result = sub_29783E940(v9);
  if (result && (v15 & 1) == 0)
  {
    v11 = HIDWORD(v7);
    v12 = sub_297819E7C(v9);
    sub_29783F6AC(v12);
    v13 = *(a1 + 544);
    if (!v13)
    {
      v14 = sub_2977FA198(208);
      v13 = sub_29783F51C(v14);
      *(a1 + 544) = v13;
    }

    return sub_29783F1C0(v13, v8, v11, a3, a4);
  }

  return result;
}

uint64_t sub_29783F5D4(_DWORD *a1, int a2)
{
  v12 = a2;
  v11 = sub_29783E548(a1, a2);
  v10 = 0;
  v3 = sub_29783E808(a1, v11, &v10);
  if (v10 == 1)
  {
    sub_297829180(&v8);
    v7 = 0;
    v9 = sub_2978182B8(&v8, &v7);
    sub_2978182E8(&v13, &v9);
    return v13;
  }

  else
  {
    v5 = v3;
    v6 = sub_29783E760(&v12);
    LODWORD(v9) = v6 - sub_29783E830(v5);
    if (sub_29782D9A0(&v12))
    {
      return sub_2978182B8(&v11, &v9);
    }

    else
    {
      return sub_29784118C(a1, v5);
    }
  }
}

uint64_t sub_29783F6BC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if (a4 == -1)
  {

    return sub_29783F520(a1, a2, a3, -1);
  }

  else
  {
    v15 = sub_29783F5D4(a1, a2);
    v26 = 0;
    v16 = v15;
    v17 = sub_29783E808(a1, v15, &v26);
    result = sub_29783E940(v17);
    if (result && (v26 & 1) == 0)
    {
      v19 = HIDWORD(v15);
      v20 = sub_297819E7C(v17);
      sub_29783F6AC(v20);
      v21 = *(a1 + 544);
      if (!v21)
      {
        v22 = sub_2977FA198(208);
        v21 = sub_29783F51C(v22);
        *(a1 + 544) = v21;
      }

      if (a8)
      {
        v23 = 2;
      }

      else
      {
        v23 = a7;
      }

      if (a6)
      {
        v24 = 2;
      }

      else
      {
        v24 = 0;
      }

      if (a5)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      return sub_29783F308(v21, v16, v19, a3, a4, v25, v23);
    }
  }

  return result;
}

uint64_t sub_29783F7F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_29782916C(a1);
  v8[1] = a2;
  v8[2] = a3;
  sub_297817C28(v8 + 3);
  sub_29783DC08(a1 + 160, 0);
  *(a1 + 184) = 1;
  *(a1 + 185) = a4;
  sub_29780AE44(a1 + 192);
  sub_297809B88((a1 + 200));
  sub_29783F900(a1 + 224);
  sub_29783F904(a1 + 440);
  sub_297809B88((a1 + 504));
  *(a1 + 528) = 0;
  sub_297829180((a1 + 536));
  *(a1 + 544) = 0;
  sub_297829180((a1 + 552));
  sub_297829180((a1 + 576));
  sub_297829180((a1 + 580));
  *(a1 + 584) = 0;
  sub_29783F908(a1 + 592, 0);
  sub_29783F90C(a1 + 616, 0);
  sub_29783F910((a1 + 640));
  sub_29780AE44(a1 + 664);
  sub_29780AE44(a1 + 672);
  sub_29783F914(a1 + 680, 0);
  sub_29783F918(a1 + 704);
  sub_29783F91C(a1);
  sub_29783F9DC(a2, a1);
  return a1;
}

uint64_t sub_29783F91C(uint64_t a1)
{
  sub_297829180(&v6);
  *(a1 + 576) = v6;
  sub_2977FD800((a1 + 224));
  sub_2977FD800((a1 + 440));
  sub_29781B1B8(a1 + 504);
  sub_297829180(&v6);
  *(a1 + 552) = v6;
  *(a1 + 560) = 0;
  sub_297829180(&v6);
  *(a1 + 536) = v6;
  v2 = *(a1 + 544);
  if (v2)
  {
    sub_29783FD78(v2);
  }

  *(a1 + 496) = -0.0;
  sub_297829180(&v6);
  sub_297829180(&v5);
  sub_297829180(&v4);
  return sub_29783FDB8(a1, v6, v5, v4, 1, 0, 0);
}

uint64_t sub_29783F9E8(uint64_t a1)
{
  v2 = *(a1 + 544);
  if (v2)
  {
    v3 = sub_29783FB90(v2);
    j__free(v3);
  }

  v4 = sub_29780BD00((a1 + 200));
  v5 = v4;
  if (v4)
  {
    v6 = 0;
    do
    {
      if (*sub_2977FE5F8((a1 + 200), v6))
      {
        v7 = sub_2977FE5F8((a1 + 200), v6);
        sub_29783E9F4(*v7);
        v8 = sub_2977FE5F8((a1 + 200), v6);
        sub_29783FB94(a1 + 24, *v8);
      }

      ++v6;
    }

    while (v5 != v6);
  }

  sub_29783FBA0(a1 + 160, v14);
  sub_29783FC30(a1 + 160, v13);
  sub_29782DA30(v12, v13);
  while (sub_29782EE3C(v14, v12))
  {
    if (*(sub_2977FB720(v14) + 8))
    {
      v9 = sub_2977FB720(v14);
      sub_29783E9F4(*(v9 + 8));
      v10 = sub_2977FB720(v14);
      sub_29783FB94(a1 + 24, *(v10 + 8));
    }

    sub_29783FC8C(v14);
    sub_29782DA30(v12, v13);
  }

  sub_29783FCC0(a1 + 680);
  sub_29783FD5C(a1 + 704);
  sub_29783FD60(a1 + 680);
  sub_29783FD64(a1 + 672);
  sub_29780548C(a1 + 664);
  sub_29783FD68(a1 + 616);
  sub_29783FD6C(a1 + 592);
  sub_29781A490(a1 + 504);
  sub_2977FD134(a1 + 440);
  sub_2977FD134(a1 + 224);
  sub_29781B950(a1 + 200);
  sub_29783FD70(a1 + 192);
  sub_29783D790(a1 + 160);
  sub_297818154(a1 + 24);
  return a1;
}

uint64_t sub_29783FBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_297844224())
  {

    return sub_29783FC30(a1, a2);
  }

  else
  {
    v5 = sub_297803A7C(a1);
    v6 = sub_29783D84C(a1);

    return sub_297844294(a2, v5, v6, 0);
  }
}

uint64_t sub_29783FC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29783D84C(a1);
  v5 = sub_29783D84C(a1);

  return sub_297844294(a2, v4, v5, 1);
}

uint64_t **sub_29783FC8C(uint64_t **a1)
{
  *a1 += 2;
  sub_2978442CC(a1);
  return a1;
}

uint64_t sub_29783FCC0(uint64_t a1)
{
  sub_2978459C0(a1, v6);
  sub_297845A50(a1, v5);
  sub_29782DA30(v4, v5);
  while (sub_29782EE3C(v6, v4))
  {
    if (*(sub_2977FB720(v6) + 8))
    {
      v2 = sub_297845AAC();
      j__free(v2);
    }

    sub_297845AB0(v6);
    sub_29782DA30(v4, v5);
  }

  return sub_297845AE4(a1);
}

uint64_t sub_29783FD78(uint64_t a1)
{
  sub_297843C94(a1);
  sub_29780C6B8((a1 + 160));

  return sub_297843D14(a1 + 184);
}

uint64_t sub_29783FDB8(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7)
{
  v13 = sub_2978407CC(a2, a3, a4);
  v14 = v11;
  return sub_297840710(a1, &v13, a5, a6, a7);
}

uint64_t sub_29783FE24(uint64_t a1, uint64_t a2, char a3)
{
  v19 = a2;
  v5 = sub_29783FF40(a1 + 160, &v19);
  result = *v5;
  if (!*v5)
  {
    *v5 = sub_29783FF5C(a1 + 24, 1);
    if (sub_29780B1BC((a1 + 192)))
    {
      v7 = sub_2977FB720(a1 + 192);
      sub_29783FF6C(v7, &v19, v18);
      v8 = sub_2977FB720(a1 + 192);
      sub_29783FC30(v8, v16);
      sub_29782DA30(v17, v16);
      v9 = sub_29783FFE0(v18, v17);
      v10 = *v5;
      if (!v9)
      {
        if (*(a1 + 184))
        {
          v13 = &v19;
        }

        else
        {
          v13 = (sub_2977FB720(v18) + 8);
        }

        v14 = *v13;
        v15 = sub_2977FB720(v18);
        sub_297840014(v10, v14, *(v15 + 8));
        goto LABEL_11;
      }

      v11 = v19;
      v12 = *v5;
    }

    else
    {
      v12 = *v5;
      v11 = v19;
    }

    sub_297840010(v12, v11);
LABEL_11:
    *(*v5 + 44) = *(*v5 + 44) & 0xFE | a3;
    return *v5;
  }

  return result;
}

uint64_t sub_29783FF6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 0;
  if (!sub_297844348(a1, a2, &v8))
  {
    return sub_29783FC30(a1, a3);
  }

  v5 = v8;
  v6 = sub_29783D84C(a1);
  return sub_297844294(a3, v5, v6, 1);
}

uint64_t sub_297840018(uint64_t a1, uint64_t a2)
{
  v5 = sub_29783FF5C(a1 + 24, 1);
  sub_297840010(v5, 0);
  sub_29781B720(a1 + 200, &v5);
  sub_297840078(v5, a2);
  return v5;
}

unint64_t *sub_297840078(uint64_t a1, uint64_t a2)
{
  sub_29783EB08((a1 + 8), a2);

  return sub_29783EAF0((a1 + 8), 0);
}

uint64_t sub_2978400B8(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if ((*(**(a1 + 528) + 16))(*(a1 + 528), -2 - a2))
  {
    if (a3)
    {
      *a3 = 1;
    }

    *&v12 = sub_29781B500((a1 + 504), a2);
    *(&v12 + 1) = v6;
    if (!sub_2978100D8(&v12))
    {
      sub_297829180(&v12);
      sub_297840200(a1);
      v11.n128_u64[0] = sub_2978401BC(v12);
      v11.n128_u64[1] = v7;
      sub_2978401A8(0, &v11, &v12);
      v8 = sub_29783E88C(a1 + 440, a2);
      v9 = v13;
      *v8 = v12;
      *(v8 + 16) = v9;
    }
  }

  return sub_29783E88C(a1 + 440, a2);
}

__n128 sub_2978401A8@<Q0>(int a1@<W0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 2 * a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t sub_297840200(uint64_t a1)
{
  if (!sub_29780B1BC((a1 + 672)))
  {
    sub_2978402F4(&v5);
    sub_297840340((a1 + 672), &v5);
    sub_29783FD64(&v5);
    v2 = sub_2977FB720(a1 + 672);
    v3 = sub_29784027C(a1);
    sub_29783EA3C(v2, v3, 1);
  }

  return sub_2977FB720(a1 + 672);
}

uint64_t sub_29784027C(uint64_t a1)
{
  if (!sub_29780B1BC((a1 + 664)))
  {
    sub_2977FB7B4(v5, "<<<INVALID BUFFER>>");
    sub_2977FB7B4(v4, &byte_2978FC3E5);
    v2 = sub_297804A04(v5[0], v5[1], v4[0], v4[1]);
    sub_2978054BC((a1 + 664), v2);
  }

  return sub_2977FB720(a1 + 664);
}

void *sub_2978402F4@<X0>(void *a1@<X8>)
{
  v2 = sub_2977FA198(48);
  sub_297840010(v2, 0);

  return sub_2977FDEF4(a1, v2);
}

uint64_t *sub_297840340(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_2978058AC(a2);
  sub_2978458B4(a1, v4);
  nullsub_1(a2, v5);
  return a1;
}

uint64_t sub_297840384(uint64_t a1, int a2)
{
  v6 = a2;
  if (sub_297829730(&v6) || v6 == -1)
  {
    goto LABEL_5;
  }

  v3 = (v6 - 1);
  if (v6 < 1)
  {
    v5 = ~v6;
    if (sub_29783E83C(a1 + 440) <= v5)
    {
      goto LABEL_5;
    }

    return sub_29784040C(v3);
  }

  if (v6 != 1)
  {
    return sub_29784040C(v3);
  }

LABEL_5:
  sub_297829180(&v7);
  return v7;
}

uint64_t sub_297840440(uint64_t a1, int a2)
{
  v5 = a2;
  if (!sub_297829730(&v5))
  {
    if (v5 < 1)
    {
      if (v5 <= -3)
      {
        v3 = (v5 + 1);
        return sub_29784040C(v3);
      }
    }

    else
    {
      v3 = (v5 + 1);
      if (v3 < sub_2978404C4(a1))
      {
        return sub_29784040C(v3);
      }
    }
  }

  sub_297829180(&v6);
  return v6;
}

uint64_t sub_2978404E0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a5 & 0x80000000) != 0)
  {
    v15 = (-2 - a5);
    v20.n128_u64[0] = sub_2978401BC(a3);
    v20.n128_u64[1] = v16;
    sub_2978401A8(a6, &v20, &v21);
    v17 = sub_29783E88C(a1 + 440, v15);
    v18 = v22;
    *v17 = v21;
    *(v17 + 16) = v18;
    *&v21 = sub_29781B500((a1 + 504), v15);
    *(&v21 + 1) = v19;
    sub_297810070(&v21, 1);
    return sub_29784040C(a5);
  }

  else
  {
    v8 = *(a1 + 496);
    v20.n128_u64[0] = sub_2978401BC(a3);
    v20.n128_u64[1] = v9;
    sub_2978401A8(v8, &v20, &v21);
    sub_2978405F8(a1 + 224, &v21);
    *(a1 + 496) += sub_29783E9F8(a2, v10) + 1;
    v11 = sub_29783E83C(a1 + 224);
    result = sub_29784040C((v11 - 1));
    *(a1 + 536) = result;
  }

  return result;
}

uint64_t sub_2978405F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_297846128(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  v6 = sub_2977FB7B8(a1) + 24;

  return sub_2977FD5DC(a1, v6);
}

uint64_t sub_297840670(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v8 = sub_2978406C8(a2, a3);
  v9 = v6;
  return sub_297840710(a1, &v8, a4, 0, 0);
}

uint64_t sub_297840710(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (a4 < 0)
  {
    v7 = a5;
    v8 = (-2 - a4);
    sub_297840828(a5, a2, &v13);
    v9 = sub_29783E88C(a1 + 440, v8);
    v10 = v14;
    *v9 = v13;
    *(v9 + 16) = v10;
    *&v13 = sub_29781B500((a1 + 504), v8);
    *(&v13 + 1) = v11;
    sub_297810070(&v13, 1);
  }

  else
  {
    sub_297840828(*(a1 + 496), a2, &v13);
    sub_2978405F8(a1 + 224, &v13);
    v7 = *(a1 + 496);
    *(a1 + 496) = a3 + v7 + 1;
  }

  return sub_297840848(v7);
}

unint64_t sub_2978407CC(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v7 = a2;
  v8 = a1;
  v6 = a3;
  v3 = sub_2977FB5F0(&v8);
  v4 = sub_2977FB5F0(&v7);
  sub_2977FB5F0(&v6);
  return v3 | (v4 << 32);
}

uint64_t sub_297840828@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = (2 * result) | 1;
  *(a3 + 8) = *a2;
  *(a3 + 16) = *(a2 + 8);
  return result;
}

uint64_t sub_29784087C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = sub_29783FE24(a1, a2, 0);
  v6 = *(a1 + 8);
  sub_297829180(&v8);
  return sub_29783EB40(v5, v6, a1, v8, a3);
}

uint64_t sub_2978408E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = a2;
  v7 = sub_29783FE24(a1, a2, 0);
  sub_29783EA3C(v7, a3, a4);
  *(v7 + 40) |= 0x80000000;
  v8 = sub_297840958(a1);
  return sub_2978409B4(v8 + 24, &v11, &v10);
}

uint64_t sub_297840958(uint64_t a1)
{
  if (!sub_29780B1BC((a1 + 192)))
  {
    v2 = sub_2977FA198(48);
    sub_297843EA0(v2);
    sub_297843E88((a1 + 192), v2);
  }

  return sub_2977FB720(a1 + 192);
}

uint64_t sub_2978409B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = sub_2978461F8(a2, &v7);
  v9 = v5;
  sub_297846228(v10, &v8);
  sub_297846138(a1, v10, v11);
  return sub_29784622C(a3, v11);
}

uint64_t sub_297840A24(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v14 = 0;
  v5 = sub_29783E808(a1, a2, &v14);
  if (sub_29783E940(v5) && v14 != 1)
  {
    v6 = sub_297819E7C(v5);
    v7 = sub_29783E95C(v6);
    v8 = *(a1 + 8);
    sub_297829180(&v13);
    v9 = sub_29783EB40(v7, v8, a1, v13, &v14);
    v10 = v14;
    if (a3)
    {
      *a3 = v14;
    }

    if ((v10 & 1) == 0)
    {
      v15[0] = sub_297805334(v9);
      v15[1] = v12;
      return v15[0];
    }
  }

  else if (a3)
  {
    *a3 = 1;
  }

  sub_2977FB7B4(v15, "<<<<<INVALID SOURCE LOCATION>>>>>");
  return v15[0];
}

uint64_t sub_297840AF4(_DWORD *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_29784040C(0);
  }

  if (a1[124] <= a2)
  {
    return sub_297840CF4(a1, a2);
  }

  return sub_297840B14(a1, a2);
}

uint64_t sub_297840B14(_DWORD *a1, unsigned int a2)
{
  v4 = a1[134];
  if ((v4 & 0x80000000) != 0 || (v5 = sub_29783E88C((a1 + 56), v4), sub_29783E830(v5) < a2))
  {
    v6 = sub_2977FB7B8((a1 + 56));
  }

  else
  {
    v6 = sub_2977FB720((a1 + 56)) + 24 * a1[134];
  }

  v7 = -v6;
  v8 = (v6 - 24);
  v9 = -1;
  while (sub_29783E830(v8) > a2)
  {
    --v9;
    v7 += 24;
    v8 -= 6;
    if (v9 == -9)
    {
      v10 = -1431655765 * (-(sub_2977FB720((a1 + 56)) + v7) >> 3);
      v11 = v10 >> 1;
      v12 = sub_29783E8C4(a1, v10 >> 1);
      v13 = sub_29783E830(v12);
      v14 = 0;
      for (i = 1; ; ++i)
      {
        if (v13 <= a2)
        {
          v16 = sub_29784040C(v11);
          if (sub_29783E76C(a1, v16, a2))
          {
            v19 = sub_29784040C(v11);
            v21 = sub_29783E88C((a1 + 56), v11);
            if ((sub_29783E968(v21) & 1) == 0)
            {
              a1[134] = v19;
            }

            a1[147] += i;
            return v19;
          }

          v14 = v11;
        }

        else
        {
          v10 = v11;
        }

        v11 = v14 + ((v10 - v14) >> 1);
        v17 = sub_29783E8C4(a1, v14 + ((v10 - v14) >> 1));
        v13 = sub_29783E830(v17);
      }
    }
  }

  v18 = sub_2977FB720((a1 + 56));
  v19 = sub_29784040C(-1431655765 * ((-24 - v7 - v18) >> 3));
  if ((sub_29783E968(v8) & 1) == 0)
  {
    a1[134] = v19;
  }

  a1[146] -= v9;
  return v19;
}

uint64_t sub_297840CF4(_DWORD *a1, unsigned int a2)
{
  if (a1[125] > a2)
  {
    goto LABEL_2;
  }

  v4 = a1[134];
  if (v4 < 0)
  {
    v6 = sub_29783E8B8(a1, a1[134], 0);
    if (sub_29783E830(v6) >= a2)
    {
      v5 = ~v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
  v8 = -v5;
  while (1)
  {
    v9 = sub_29783E8CC(a1, v5, 0);
    if (sub_29783E830(v9) <= a2)
    {
      break;
    }

    ++v5;
    --v8;
    if (--v7 == -8)
    {
      v10 = sub_29783E83C((a1 + 110));
      v11 = v5 + ((v10 + v8) >> 1);
      v12 = sub_29783E8CC(a1, v11, 0);
      if (sub_29783E830(v12))
      {
        v13 = v10 - v5;
        v14 = 2;
        do
        {
          if (sub_29783E830(v12) <= a2)
          {
            v15 = sub_29784040C(-2 - v11);
            if (sub_29783E76C(a1, v15, a2))
            {
              v19 = sub_29784040C(-2 - v11);
              v20 = v19;
              if ((sub_29783E968(v12) & 1) == 0)
              {
                a1[134] = v19;
              }

              a1[147] += v14;
              return v20;
            }

            v16 = v10 == v11;
            v10 = v11;
            if (v16)
            {
              break;
            }
          }

          else
          {
            v5 = v11;
            if (v13 <= 1)
            {
              break;
            }
          }

          v13 = v10 - v5;
          v11 = v5 + ((v10 - v5) >> 1);
          v12 = sub_29783E8CC(a1, v11, 0);
          v14 += 2;
        }

        while (sub_29783E830(v12));
      }

LABEL_2:
      sub_297829180(&v20);
      return v20;
    }
  }

  v17 = sub_29784040C(-2 - v5);
  v20 = v17;
  if ((sub_29783E968(v9) & 1) == 0)
  {
    a1[134] = v17;
  }

  a1[146] = a1[146] - v7 + 1;
  return v20;
}

uint64_t sub_297840EDC(_DWORD *a1, unsigned int a2)
{
  v7 = a2;
  do
  {
    v3 = sub_29783E548(a1, v7);
    v4 = sub_29783E808(a1, v3, 0);
    v5 = sub_297819E7C(v4);
    v7 = sub_297840F40(v5);
  }

  while (!sub_29782D9A0(&v7));
  return v7;
}

uint64_t sub_297840F48(_DWORD *a1, unsigned int a2)
{
  v8 = a2;
  do
  {
    v3 = sub_29783E664(a1, v8);
    v4 = HIDWORD(v3);
    v5 = sub_29783E808(a1, v3, 0);
    v6 = sub_297819E7C(v5);
    v8 = sub_297840FC0(v6);
    v8 = sub_297840FC8(&v8, v4);
  }

  while (!sub_29782D9A0(&v8));
  return v8;
}

uint64_t sub_297841004(_DWORD *a1, unsigned int a2)
{
  v5 = a2;
  do
  {
    if (sub_29784106C(a1, v5))
    {
      v3 = sub_2978410C8(a1, v5);
    }

    else
    {
      v3 = sub_297841140(a1, v5);
    }

    v5 = v3;
  }

  while (!sub_29782D9A0(&v5));
  return v5;
}

uint64_t sub_29784106C(_DWORD *a1, int a2)
{
  v7 = a2;
  result = sub_29783C26C(&v7);
  if (result)
  {
    v4 = sub_29783E548(a1, v7);
    v5 = sub_29783E808(a1, v4, 0);
    v6 = sub_297819E7C(v5);
    return sub_2978413F0(v6);
  }

  return result;
}

uint64_t sub_2978410C8(_DWORD *a1, unsigned int a2)
{
  v10 = a2;
  v3 = sub_29782D9A0(&v10);
  v4 = v10;
  if (!v3)
  {
    v5 = sub_29783E664(a1, v10);
    v6 = HIDWORD(v5);
    v7 = sub_29783E808(a1, v5, 0);
    v8 = sub_297819E7C(v7);
    v10 = sub_297840FC0(v8);
    return sub_297840FC8(&v10, v6);
  }

  return v4;
}

uint64_t sub_297841140(_DWORD *a1, int a2)
{
  v3 = sub_29783E548(a1, a2);
  v4 = sub_29783E808(a1, v3, 0);
  v5 = sub_297819E7C(v4);

  return sub_2978412F8(v5);
}

uint64_t sub_29784118C(_DWORD *a1, _DWORD *a2)
{
  sub_297829180(&v9);
  sub_297829180(&v8);
  do
  {
    v4 = sub_297819E7C(a2);
    v8 = sub_297840F40(v4);
    v9 = sub_29783E548(a1, v8);
    a2 = sub_29783E808(a1, v9, 0);
    v5 = sub_29783E760(&v8);
    v7 = v5 - sub_29783E830(a2);
  }

  while (!sub_29782D9A0(&v8));
  return sub_2978182B8(&v9, &v7);
}

uint64_t sub_297841238(_DWORD *a1, _DWORD *a2, int a3)
{
  sub_297829180(&v10);
  sub_297829180(&v9);
  do
  {
    v6 = sub_297819E7C(a2);
    v9 = sub_297840FC0(v6);
    v9 = sub_297840FC8(&v9, a3);
    v10 = sub_29783E548(a1, v9);
    a2 = sub_29783E808(a1, v10, 0);
    v7 = sub_29783E760(&v9);
    a3 = v7 - sub_29783E830(a2);
    v11 = a3;
  }

  while (!sub_29782D9A0(&v9));
  return sub_2978182B8(&v10, &v11);
}

uint64_t sub_2978412F8(uint64_t a1)
{
  v4 = sub_297840F40(a1);
  v3 = sub_297841738(a1);
  return sub_2978182B8(&v4, &v3);
}

uint64_t sub_297841340(_DWORD *a1, int a2)
{
  v4 = a2;
  if (sub_29782D9A0(&v4))
  {
    return sub_2978182B8(&v4, &v4);
  }

    ;
  }

    ;
  }

  return i;
}

BOOL sub_2978413F0(uint64_t a1)
{
  v4 = sub_297840F40(a1);
  result = sub_297805430(&v4);
  if (result)
  {
    v3 = sub_29784040C(*(a1 + 8));
    return sub_297829730(&v3);
  }

  return result;
}

uint64_t sub_297841440(_DWORD *a1, int a2, _DWORD *a3)
{
  v5 = sub_29783E664(a1, a2);
  if (HIDWORD(v5))
  {
    return 0;
  }

  v6 = v5;
  v16 = 0;
  v7 = sub_29783E808(a1, v5, &v16);
  v8 = sub_297819E7C(v7);
  result = 0;
  if (v16)
  {
    return result;
  }

  v15 = sub_297840F40(v8);
  if (sub_2978413F0(v8))
  {
    v14 = sub_297840384(a1, v6);
    if (!sub_297829730(&v14))
    {
      v10 = sub_29783E808(a1, v14, &v16);
      if (v16)
      {
        return 0;
      }

      v11 = v10;
      if (sub_29783E968(v10))
      {
        v12 = sub_297819E7C(v11);
        v13 = sub_297840F40(v12);
        if (sub_297841544(&v13, &v15))
        {
          return 0;
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v15;
  }

  return 1;
}

uint64_t sub_29784157C(_DWORD *a1, int a2, _DWORD *a3)
{
  v18 = a2;
  v5 = sub_29783E548(a1, a2);
  v6 = sub_297840FC8(&v18, 1);
  v7 = v5;
  if (sub_2978416A8(a1, v6, v5, 0))
  {
    return 0;
  }

  v17 = 0;
  v9 = sub_29783E808(a1, v5, &v17);
  v10 = sub_297819E7C(v9);
  result = 0;
  if ((v17 & 1) == 0)
  {
    if (sub_2978413F0(v10))
    {
      v16 = sub_297840440(a1, v7);
      if (!sub_297829730(&v16))
      {
        v11 = sub_29783E808(a1, v16, &v17);
        if (v17)
        {
          return 0;
        }

        v12 = v11;
        if (sub_29783E968(v11))
        {
          v13 = sub_297819E7C(v12);
          v15 = sub_297840F40(v13);
          v14 = sub_297840F40(v10);
          if (sub_297841544(&v15, &v14))
          {
            return 0;
          }
        }
      }
    }

    if (a3)
    {
      *a3 = sub_297841738(v10);
    }

    return 1;
  }

  return result;
}

BOOL sub_2978416A8(uint64_t a1, int a2, unsigned int a3, _DWORD *a4)
{
  v13 = a2;
  v7 = sub_29783E760(&v13);
  v8 = a3;
  v9 = sub_29783E76C(a1, a3, v7);
  v10 = v9;
  if (a4 && v9)
  {
    v11 = sub_29783E808(a1, v8, 0);
    *a4 = v7 - sub_29783E830(v11);
  }

  return v10;
}

uint64_t sub_297841738(uint64_t a1)
{
  v3 = sub_29784040C(*(a1 + 8));
  if (sub_297829730(&v3))
  {
    return sub_297840F40(a1);
  }

  else
  {
    return v3;
  }
}

const char *sub_297841788(uint64_t a1, int a2, _BYTE *a3)
{
  v5 = sub_297841868(a1, a2);
  v17 = 0;
  v6 = sub_29783E808(a1, v5, &v17);
  if ((v17 & 1) != 0 || (v7 = v6, (sub_29783E940(v6) & 1) == 0))
  {
    if (a3)
    {
      *a3 = 1;
    }

    return "<<<<INVALID BUFFER>>>>";
  }

  else
  {
    v8 = HIDWORD(v5);
    v9 = sub_297819E7C(v7);
    v10 = sub_29783E95C(v9);
    v11 = *(a1 + 8);
    sub_297829180(&v16);
    v12 = sub_29783EB40(v10, v11, a1, v16, &v17);
    if (a3)
    {
      *a3 = v17;
    }

    v13 = sub_2977FB7B8(v12);
    if (v17)
    {
      v14 = 0;
    }

    else
    {
      v14 = v8;
    }

    return (v13 + v14);
  }
}

uint64_t sub_297841868(_DWORD *a1, int a2)
{
  v13 = a2;
  v12 = sub_29783E548(a1, a2);
  v11 = 0;
  v3 = sub_29783E808(a1, v12, &v11);
  if (v11 == 1)
  {
    sub_297829180(&v9);
    v8 = 0;
    v10 = sub_2978182B8(&v9, &v8);
    sub_2978182E8(&v14, &v10);
    return v14;
  }

  else
  {
    v5 = v3;
    v6 = sub_29783E760(&v13);
    v7 = v6 - sub_29783E830(v5);
    LODWORD(v10) = v7;
    if (sub_29782D9A0(&v13))
    {
      return sub_2978182B8(&v12, &v10);
    }

    else
    {
      return sub_297841238(a1, v5, v7);
    }
  }
}

uint64_t sub_297841944(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v22 = a2;
  v21 = 0;
  v7 = sub_29783E5C0(a1, a2, &v21);
  v8 = v7;
  v9 = v21;
  if (a4)
  {
    *a4 = v21;
  }

  if (v9)
  {
    return 1;
  }

  if (sub_2978059FC(v7) >= a3)
  {
    if (sub_29782B07C((a1 + 552), &v22) && (v11 = *(a1 + 560), (v12 = *(v11 + 32)) != 0) && (v13 = *(a1 + 572), v13 < (*(v11 + 40) & 0x7FFFFFFFu)) && (v14 = *(v12 + 4 * (v13 - 1)), v14 <= a3) && *(v12 + 4 * v13) > a3)
    {
      v15 = a3 - v14;
    }

    else
    {
      v16 = a3;
      v17 = sub_2977FB7B8(v8);
      v18 = a3 + 1;
      while (v16)
      {
        v19 = *(v17 - 1 + v16--);
        --v18;
        if (v19 == 13 || v19 == 10)
        {
          goto LABEL_23;
        }
      }

      v18 = 0;
LABEL_23:
      v15 = a3 - v18;
    }

    return v15 + 1;
  }

  else
  {
    result = 1;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return result;
}

BOOL sub_297841A60(int a1, _BYTE *a2)
{
  v4 = a1;
  result = sub_297829730(&v4);
  if (a2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_297841A9C(_DWORD *a1, int a2, _BYTE *a3)
{
  if (sub_297841A60(a2, a3))
  {
    return 0;
  }

  v7 = sub_29783F5D4(a1, a2);

  return sub_297841944(a1, v7, HIDWORD(v7), a3);
}

uint64_t sub_297841B1C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v31 = a2;
  if (sub_297829730(&v31))
  {
    return sub_297842370(a4);
  }

  v7 = sub_29783F5D4(a1, v31);
  v30 = 0;
  v8 = v7;
  v9 = sub_29783E808(a1, v7, &v30);
  if (v30)
  {
    return sub_297842370(a4);
  }

  v10 = v9;
  if ((sub_29783E940(v9) & 1) == 0)
  {
    return sub_297842370(a4);
  }

  v11 = HIDWORD(v7);
  v12 = sub_297819E7C(v10);
  v13 = sub_29783E95C(v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = sub_2977FB720(v14);
  }

  else
  {
    v16 = *(a1 + 8);
    sub_297829180(&v29);
    v17 = sub_29783EB40(v13, v16, a1, v29, 0);
    v15 = (*(*v17 + 16))(v17);
  }

  v18 = v15;
  v19 = sub_297841D38(a1, v8, v11, &v30);
  if (v30 == 1)
  {
    return sub_297842370(a4);
  }

  v20 = v19;
  v21 = sub_297841944(a1, v8, v11, &v30);
  if (v30 == 1)
  {
    return sub_297842370(a4);
  }

  v23 = v21;
  v24 = sub_297840FC0(v12);
  v28 = v24;
  if (a3)
  {
    if (sub_2978422B4(v12))
    {
      v25 = sub_29783F3F4(*(a1 + 544), v8, v11);
      if (v25)
      {
        v26 = v25;
        v27 = *(v25 + 8);
        if (v27 != -1)
        {
          v18 = sub_297842374(*(a1 + 544), v27);
        }

        v20 += v26[1] + ~sub_297841D38(a1, v8, *v26, 0);
        if (v26[4])
        {
          v28 = sub_2978423A8(a1, v8);
          v24 = sub_297840FC8(&v28, v26[4]);
          v28 = v24;
        }
      }
    }
  }

  return sub_29784240C(a4, v18, v20, v23, v24);
}

unint64_t sub_297841D38(uint64_t a1, unsigned int a2, int a3, _BYTE *a4)
{
  v26 = a2;
  if (!sub_297829730(&v26))
  {
    if (sub_29782B07C((a1 + 552), &v26))
    {
      v8 = *(a1 + 560);
    }

    else
    {
      v25 = 0;
      v9 = sub_29783E808(a1, v26, &v25);
      if ((v25 & 1) != 0 || (v10 = v9, (sub_29783E940(v9) & 1) == 0))
      {
        if (a4)
        {
          *a4 = 1;
        }

        return 1;
      }

      v11 = sub_297819E7C(v10);
      v8 = sub_29783E95C(v11);
    }

    if (*(v8 + 32))
    {
      if (a4)
      {
        *a4 = 0;
      }

      goto LABEL_18;
    }

    v24 = 0;
    sub_297841F1C(*(a1 + 8), v8, a1 + 24, a1, &v24);
    v12 = v24;
    if (a4)
    {
      *a4 = v24;
    }

    if ((v12 & 1) == 0)
    {
LABEL_18:
      v13 = *(v8 + 32);
      v14 = v13 + 4 * (*(v8 + 40) & 0x7FFFFFFF);
      v15 = a3 + 1;
      v23 = v15;
      if (sub_29782B07C((a1 + 552), &v26))
      {
        v16 = *(a1 + 572);
        if (v15 >= *(a1 + 568))
        {
          v20 = (v13 + 4 * v16);
          v19 = (v20 - 1);
          v21 = v20 + 4;
          if ((v20 + 4) < v14)
          {
            if (*v21 <= v15)
            {
              v21 = v20 + 9;
              if ((v20 + 9) >= v14)
              {
                goto LABEL_23;
              }

              if (*v21 <= v15)
              {
                v22 = v20 + 19;
                if (v22 < v14 && *v22 > v15)
                {
                  v14 = v22;
                }

                goto LABEL_23;
              }
            }

            v14 = v21;
          }

LABEL_23:
          result = (sub_2978420C8(v19, v14, &v23) - v13) >> 2;
          *(a1 + 552) = v26;
          *(a1 + 560) = v8;
          *(a1 + 568) = v23;
          *(a1 + 572) = result;
          return result;
        }

        v17 = v16 >= (*(v8 + 40) & 0x7FFFFFFFu);
        v18 = v13 + 4 * v16 + 4;
        if (!v17)
        {
          v14 = v18;
        }
      }

      v19 = v13;
      goto LABEL_23;
    }

    return 1;
  }

  result = 1;
  if (a4)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_297841F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  sub_297829180(v30);
  result = sub_29783EB40(a2, a1, a4, v30[0], a5);
  if ((*a5 & 1) == 0)
  {
    v11 = result;
    sub_2978297BC(v30);
    v29 = 0;
    sub_297803988(v30, &v29);
    v12 = sub_2977FB7B8(v11);
    v13 = sub_2977FD5B0(v11);
    v29 = 0;
    while (1)
    {
      for (i = 0; ; --i)
      {
        v15 = *v12;
        v16 = v15 > 0xD;
        v17 = (1 << v15) & 0x2401;
        if (!v16 && v17 != 0)
        {
          break;
        }

        ++v12;
      }

      v19 = v29;
      v20 = v29 - i;
      v29 -= i;
      v21 = *v12;
      if (v21 == 13 || v21 == 10)
      {
        v23 = v12[1];
        if (v21 == v23)
        {
          v24 = v12;
        }

        else
        {
          ++v19;
          v24 = v12 + 1;
        }

        v25 = v19 - i;
        if (v23 == 10 || v23 == 13)
        {
          v12 = v24;
        }

        else
        {
          v25 = v20;
        }

        v29 = v25 + 1;
        sub_297803988(v30, &v29);
      }

      else
      {
        if (v12 == v13)
        {
          *(a2 + 40) = *(a2 + 40) & 0x80000000 | sub_297803A80(v30) & 0x7FFFFFFF;
          v27 = sub_297803A80(v30);
          *(a2 + 32) = sub_297803B84(a3, v27);
          sub_2977FB720(v30);
          sub_2977FB7B8(v30);
          v28 = *(a2 + 32);
          sub_297844084();
          return sub_2977FD134(v30);
        }

        v29 = v20 + 1;
      }

      ++v12;
    }
  }

  return result;
}

unint64_t sub_2978420CC(_DWORD *a1, int a2, _BYTE *a3)
{
  if (sub_297841A60(a2, a3))
  {
    return 0;
  }

  v6 = sub_297841868(a1, a2);

  return sub_297841D38(a1, v6, SHIDWORD(v6), 0);
}

unint64_t sub_29784213C(_DWORD *a1, int a2, _BYTE *a3)
{
  if (sub_297841A60(a2, a3))
  {
    return 0;
  }

  v6 = sub_29783F5D4(a1, a2);

  return sub_297841D38(a1, v6, SHIDWORD(v6), 0);
}

uint64_t sub_2978421AC(uint64_t a1, int a2, _BYTE *a3)
{
  if (sub_297841A60(a2, a3))
  {
    return 0;
  }

  sub_297841B1C(a1, a2, 1, v6);
  return sub_29782B550(v6);
}

uint64_t sub_29784220C(uint64_t a1, int a2)
{
  v3 = sub_29783F5D4(a1, a2);
  v4 = HIDWORD(v3);
  v11 = 0;
  v5 = v3;
  v6 = sub_29783E808(a1, v3, &v11);
  if (v11)
  {
    return 0;
  }

  v8 = v6;
  result = sub_29783E940(v6);
  if (result)
  {
    v9 = sub_297819E7C(v8);
    if ((sub_2978422B4(v9) & 1) != 0 && (v10 = sub_29783F3F4(*(a1 + 544), v5, v4)) != 0)
    {
      return *(v10 + 12);
    }

    else
    {
      return sub_2978422C0(v9);
    }
  }

  return result;
}

const char *sub_2978422CC(_DWORD *a1, int a2, _BYTE *a3)
{
  if (sub_297841A60(a2, a3))
  {
    return "<invalid loc>";
  }

  v7 = sub_29783E548(a1, a2);
  v8 = *(*sub_29783E5C0(a1, v7, a3) + 16);

  return v8();
}

uint64_t sub_297842374(uint64_t a1, unsigned int a2)
{
  v2 = *sub_2977FE5F8((a1 + 160), a2);

  return sub_297819E7C(v2);
}

uint64_t sub_2978423A8(uint64_t a1, unsigned int a2)
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
    v4 = sub_29783E830(v3);
    return sub_29784040C(v4);
  }
}

uint64_t sub_297842414(uint64_t a1, int a2)
{
  v13 = a2;
  if (sub_297829730(&v13))
  {
    return 0;
  }

  v3 = sub_29783F5D4(a1, v13);
  v4 = HIDWORD(v3);
  v12 = 0;
  v5 = v3;
  v6 = sub_29783E808(a1, v3, &v12);
  if (v12)
  {
    return 0;
  }

  v8 = v6;
  result = sub_29783E940(v6);
  if (result)
  {
    v9 = sub_297819E7C(v8);
    if (!sub_2978422B4(v9) || (v10 = sub_29783F3F4(*(a1 + 544), v5, v4)) == 0 || !*(v10 + 16))
    {
      v11 = sub_297840FC0(v9);
      return sub_297829730(&v11);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2978424E4(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = sub_297842538(a1, a2);

  return sub_2978429C8(a1, v7, a3, a4);
}

uint64_t sub_297842538(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x29EDCA608];
  sub_297829180(&v71);
  sub_297842B98(v75);
  sub_297842B98(v74);
  v4 = (a1 + 576);
  if (!sub_297829730((a1 + 576)))
  {
    v70 = 0;
    v12 = sub_29783E808(a1, *(a1 + 576), &v70);
    if (v70)
    {
      goto LABEL_12;
    }

    v14 = v12;
    if (sub_29783E940(v12))
    {
      v15 = sub_297819E7C(v14);
      v16 = sub_29783E95C(v15);
      if (v16)
      {
        v17 = *(v16 + 16);
        if (v17 == a2)
        {
          v71 = *v4;
        }

        else
        {
          v18 = sub_2977FB720(a2);
          sub_2977FB7B4(&v69, v18);
          v73.n128_u64[0] = sub_297806BB4(v69, *(&v69 + 1));
          v73.n128_u64[1] = v19;
          sub_297842B9C(v74, &v73);
          v21 = j_nullsub_1(v74, v20);
          v22 = *v21;
          v23 = v21[1];
          v24 = sub_2977FB720(v17);
          sub_2977FB7B4(&v73, v24);
          v25 = sub_297806BB4(v73.n128_i64[0], v73.n128_i64[1]);
          if (sub_297804D28(v22, v23, v25, v26))
          {
            sub_297842BF4(a2, v27, &v73);
            sub_297842CA0(v75, &v73);
            sub_297842CF8(&v73, v28);
            if (sub_297807D1C(v75))
            {
              sub_297842BF4(v17, v29, &v73);
              if (sub_297807D1C(&v73))
              {
                v31 = j_nullsub_1(v75, v30);
                v33 = j_nullsub_1(&v73, v32);
                if (sub_2978074C4(v31, v33))
                {
                  v71 = *v4;
                  a2 = v17;
                }
              }

              sub_297842CF8(&v73, v30);
            }
          }
        }
      }
    }
  }

  if (sub_297829730(&v71))
  {
    v5 = sub_2978404C4(a1);
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v73.n128_u8[0] = 0;
        v8 = sub_29783E8C4(a1, v7);
        if (v73.n128_u8[0])
        {
          goto LABEL_12;
        }

        v9 = v8;
        if (sub_29783E940(v8))
        {
          v10 = sub_297819E7C(v9);
          if (sub_29783E95C(v10))
          {
            v11 = sub_297819E7C(v9);
            if (*(sub_29783E95C(v11) + 16) == a2)
            {
              v71 = sub_29784040C(v7);
              break;
            }
          }
        }

        v7 = (v7 + 1);
      }

      while (v6 != v7);
    }

    if (sub_297829730(&v71))
    {
      v34 = sub_297842CFC(a1);
      if (v34)
      {
        v35 = -v34;
        v36 = 2;
        while (1)
        {
          v37 = sub_29783E8CC(a1, v36 - 2, 0);
          if (sub_29783E940(v37))
          {
            v38 = sub_297819E7C(v37);
            if (sub_29783E95C(v38))
            {
              v39 = sub_297819E7C(v37);
              if (*(sub_29783E95C(v39) + 16) == a2)
              {
                break;
              }
            }
          }

          ++v36;
          if (v35 + v36 == 2)
          {
            goto LABEL_33;
          }
        }

        v71 = sub_29784040C(-v36);
      }
    }
  }

LABEL_33:
  if (!sub_297829730(&v71))
  {
    goto LABEL_49;
  }

  if ((sub_297807D1C(v74) & 1) == 0)
  {
    v40 = sub_2977FB720(a2);
    sub_2977FB7B4(&v73, v40);
    *&v69 = sub_297806BB4(v73.n128_i64[0], v73.n128_i64[1]);
    *(&v69 + 1) = v41;
    v42 = sub_297842B9C(v74, &v69);
    if (!sub_297807D1C(v42))
    {
      goto LABEL_49;
    }
  }

  if ((sub_297807D1C(v75) & 1) == 0 && (sub_297842BF4(a2, v43, &v73), v44 = sub_297842CA0(v75, &v73), v45 = sub_297807D1C(v44), sub_297842CF8(&v73, v46), !v45) || (v70 = 0, (v47 = sub_2978404C4(a1)) == 0))
  {
LABEL_49:
    v72 = v71;
    goto LABEL_50;
  }

  v48 = 0;
  v49 = v47;
  while (1)
  {
    sub_297829180(&v69);
    LODWORD(v69) = v48;
    v50 = sub_29783E808(a1, v48, &v70);
    if (v70)
    {
      break;
    }

    v51 = v50;
    if (sub_29783E940(v50))
    {
      v52 = sub_297819E7C(v51);
      v53 = sub_29783E95C(v52);
      if (v53)
      {
        v54 = *(v53 + 16);
        if (v54)
        {
          v55 = j_nullsub_1(v74, v13);
          v56 = *v55;
          v57 = v55[1];
          v58 = sub_2977FB720(v54);
          sub_2977FB7B4(&v73, v58);
          v59 = sub_297806BB4(v73.n128_i64[0], v73.n128_i64[1]);
          if (sub_297804D28(v56, v57, v59, v60))
          {
            sub_297842BF4(v54, v13, &v73);
            if (sub_297807D1C(&v73))
            {
              v62 = j_nullsub_1(v75, v61);
              v64 = j_nullsub_1(&v73, v63);
              if (sub_2978074C4(v62, v64))
              {
                v71 = sub_29784040C(v48);
                sub_297842CF8(&v73, v68);
                goto LABEL_49;
              }
            }

            sub_297842CF8(&v73, v61);
          }
        }
      }
    }

    if (v49 == ++v48)
    {
      goto LABEL_49;
    }
  }

LABEL_12:
  sub_297829180(&v72);
LABEL_50:
  sub_297842CF8(v74, v13);
  sub_297842CF8(v75, v65);
  result = v72;
  v67 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978429C8(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v30 = a2;
  if (sub_297829730(&v30))
  {
    goto LABEL_9;
  }

  v29 = 0;
  v7 = sub_29783E808(a1, v30, &v29);
  if (v29 == 1)
  {
    goto LABEL_9;
  }

  v8 = v7;
  if ((sub_29783E940(v7) & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = sub_29783E830(v8);
  v10 = sub_29784040C(v9);
  v28 = v10;
  if (a3 == 1 && a4 == 1)
  {
    return v10;
  }

  v11 = sub_297819E7C(v8);
  v12 = sub_29783E95C(v11);
  if (v12)
  {
    v13 = v12;
    if (*(v12 + 32) || (LOBYTE(v27) = 0, sub_297841F1C(*(a1 + 8), v12, a1 + 24, a1, &v27), v27 != 1))
    {
      v15 = *(a1 + 8);
      if ((*(v13 + 40) & 0x7FFFFFFFu) >= a3)
      {
        sub_297829180(&v27);
        v19 = sub_29783EB40(v13, v15, a1, v27, 0);
        v20 = *(*(v13 + 32) + 4 * (a3 - 1));
        v21 = sub_2977FB7B8(v19);
        v22 = sub_2978059FC(v19);
        if (v20 != v22)
        {
          LODWORD(v23) = v22 + ~v20;
          if (v23 >= a4 - 1)
          {
            v23 = (a4 - 1);
          }

          else
          {
            v23 = v23;
          }

          if (v23)
          {
            v24 = 0;
            while (1)
            {
              v25 = *(v21 + v20 + v24);
              if (v25 == 10 || v25 == 13)
              {
                break;
              }

              if (v23 == ++v24)
              {
                goto LABEL_28;
              }
            }

            LODWORD(v23) = v24;
          }

LABEL_28:
          LODWORD(v20) = v23 + v20;
        }

        v18 = v20;
      }

      else
      {
        sub_297829180(&v27);
        v16 = sub_29783EB40(v13, v15, a1, v27, 0);
        v17 = sub_2978059FC(v16);
        if (v17)
        {
          v18 = v17 - 1;
        }

        else
        {
          v18 = 0;
        }
      }

      return sub_297840FC8(&v28, v18);
    }
  }

LABEL_9:
  sub_297829180(&v31);
  return v31;
}

uint64_t sub_297842B9C(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 16) == 1)
  {
    *j_nullsub_1(a1, a2) = *a2;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = 1;
  }

  return a1;
}

double sub_297842BF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  if (a1)
  {
    j_nullsub_1(&v10, a2);
    v5 = sub_2977FB720(a1);
    sub_2978036E0(v8, v5);
    v9[0] = sub_297807004(v8, &v10);
    v9[1] = v6;
    if (sub_297805430(v9))
    {
      sub_297842B98(a3);
    }

    else
    {
      *&result = sub_2978441E8(a3, &v10).n128_u64[0];
    }
  }

  else
  {

    sub_297842B98(a3);
  }

  return result;
}

uint64_t sub_297842CA0(uint64_t a1, uint64_t a2)
{
  if (sub_297807D1C(a2))
  {
    v5 = j_nullsub_1(a2, v4);
    sub_297842B9C(a1, v5);
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  sub_2978466B8(v6, v4);
  return a1;
}

uint64_t sub_297842D48(uint64_t a1, _DWORD *a2)
{
  v2 = a2;
  *sub_297803A7C(a1) = *a2;
  LODWORD(v2) = v2[1];
  *sub_29782FD1C(a1) = v2;
  return a1;
}

uint64_t sub_297842D8C(_DWORD *a1, unsigned int a2)
{
  v17 = a2;
  if (sub_297829730(&v17))
  {
    sub_297829180(&v13);
    v12 = 0;
    v15[0] = sub_2978182B8(&v13, &v12);
    sub_2978182E8(&v18, v15);
    return v18;
  }

  else
  {
    sub_297842FAC(&v12);
    v13 = sub_297842F78(&v17, &v12);
    v14 = v4;
    sub_297842EB8((a1 + 148), &v13, v15);
    v5 = sub_2977FB720(v15);
    if (v16)
    {
      sub_297829180(&v12);
      v11 = 0;
      v6 = sub_29783E808(a1, v17, &v11);
      if ((v11 & 1) == 0)
      {
        v7 = v6;
        if (sub_29783E968(v6))
        {
          v8 = sub_297819E7C(v7);
          v9 = sub_297840F40(v8);
        }

        else
        {
          v10 = sub_297819E7C(v7);
          v9 = sub_297840FC0(v10);
        }

        v12 = v9;
      }

      if (sub_297805430(&v12))
      {
        v13 = sub_29783E664(a1, v12);
        sub_29780B1D4((v5 + 4), &v13);
      }
    }

    return *(v5 + 4);
  }
}

uint64_t sub_297842EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 0;
  if (sub_2978467C4(a1, a2, &v13))
  {
    v6 = v13;
    v7 = sub_29784522C(a1);
    sub_297846800(v12, v6, v7, 1);
    v11 = 0;
  }

  else
  {
    v8 = sub_297846804(a1, a2, (a2 + 4), v13);
    v13 = v8;
    v9 = sub_29784522C(a1);
    sub_297846800(v12, v8, v9, 1);
    v11 = 1;
  }

  return sub_29782D9B0(v12, &v11, a3);
}

int *sub_297842FB0(uint64_t a1, int a2, int a3)
{
  v9 = a3;
  v10 = a2;
  sub_297818318(&v8, &v10, &v9);
  if (sub_297843058(a1 + 616) <= 0x12B)
  {
    return sub_29784305C(a1 + 616, &v8);
  }

  sub_297843078(a1 + 616, &v8, v7);
  sub_2978430EC(a1 + 616, v5);
  sub_29782DA30(v6, v5);
  if (sub_29782EE3C(v7, v6))
  {
    return (sub_2977FB720(v7) + 8);
  }

  else
  {
    return (a1 + 640);
  }
}

uint64_t sub_297843078@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 0;
  if (!sub_297846CDC(a1, a2, &v8))
  {
    return sub_2978430EC(a1, a3);
  }

  v5 = v8;
  v6 = sub_29784541C(a1);
  return sub_297847144(a3, v5, v6, 1);
}

uint64_t sub_2978430EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29784541C(a1);
  v5 = sub_29784541C(a1);

  return sub_297847144(a2, v4, v5, 1);
}

uint64_t sub_297843148(_DWORD *a1, int a2, int a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v20 = a3;
  v21 = a2;
  if (sub_297841544(&v21, &v20))
  {
    goto LABEL_6;
  }

  v19 = sub_29783E664(a1, v21);
  v18 = sub_29783E664(a1, v20);
  if (!sub_297829730(&v19) && !sub_297829730(&v18))
  {
    if (sub_29782B07C(&v19, &v18))
    {
      v4 = HIDWORD(v19) < HIDWORD(v18);
      goto LABEL_7;
    }

    v7 = sub_297842FB0(a1, v19, v18);
    if (sub_297843454(v7, v19, v18))
    {
      v4 = sub_297843498(v7, HIDWORD(v19), HIDWORD(v18));
      goto LABEL_7;
    }

    sub_297843504(v7, v19, v18, v19 < v18);
    sub_297843510(v22, 0);
    do
    {
      sub_297843514(v22, &v19, v17);
    }

    while (sub_2978435D4(&v19, &v18) && !sub_2978435F0(&v19, a1));
    sub_297804560(v17);
    do
    {
      sub_29784364C(v22, &v18, &v16);
      *v17 = v16;
      sub_2978436C0(v22, v14);
      sub_29782DA30(v15, v14);
    }

    while (sub_29783FFE0(v17, v15) && !sub_2978435F0(&v18, a1));
    sub_2978436C0(v22, v15);
    sub_29782DA30(&v16, v15);
    if (sub_29782EE3C(v17, &v16))
    {
      v8 = sub_2977FB720(v17);
      sub_29780B1D4(&v19, v8);
    }

    if (sub_29782B07C(&v19, &v18))
    {
      sub_29784371C(v7, v19, SHIDWORD(v19), SHIDWORD(v18));
      v9 = sub_297843498(v7, HIDWORD(v19), HIDWORD(v18));
    }

    else
    {
      sub_297843728(v7);
      v10 = sub_29783E5C0(a1, v19, 0);
      v11 = (*(*v10 + 16))(v10);
      v4 = strcmp("<built-in>", v11) == 0;
      v12 = sub_29783E5C0(a1, v18, 0);
      v13 = (*(*v12 + 16))(v12);
      if (v4 == (strcmp("<built-in>", v13) != 0))
      {
LABEL_25:
        sub_297843778(v22);
        goto LABEL_7;
      }

      v9 = sub_297843764(&v19, &v18);
    }

    v4 = v9;
    goto LABEL_25;
  }

  if (!sub_297829730(&v19))
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = !sub_297829730(&v18);
LABEL_7:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

BOOL sub_297843454(_DWORD *a1, int a2, int a3)
{
  v5 = a3;
  v6 = a2;
  result = sub_29782B07C(a1, &v6);
  if (result)
  {
    return sub_29782B07C(a1 + 1, &v5);
  }

  return result;
}

uint64_t sub_297843498(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (sub_2978435D4(a1, (a1 + 12)))
  {
    a2 = *(a1 + 16);
  }

  if (sub_2978435D4((a1 + 4), (a1 + 12)))
  {
    a3 = *(a1 + 20);
  }

  if (a2 == a3)
  {
    v6 = *(a1 + 8);
  }

  else
  {
    v6 = a2 < a3;
  }

  return v6 & 1;
}

uint64_t sub_297843504(uint64_t result, int a2, int a3, char a4)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  return result;
}

uint64_t sub_297843514@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 0;
  if (sub_297847598(a1, a2, &v13))
  {
    v6 = v13;
    v7 = sub_2978473D4(a1);
    sub_2978475D4(v12, v6, v7, 1);
    v11 = 0;
  }

  else
  {
    v8 = sub_2978475D8(a1, a2, (a2 + 4), v13);
    v13 = v8;
    v9 = sub_2978473D4(a1);
    sub_2978475D4(v12, v8, v9, 1);
    v11 = 1;
  }

  return sub_29782D9B0(v12, &v11, a3);
}

BOOL sub_2978435F0(unsigned int *a1, _DWORD *a2)
{
  v5 = sub_297842D8C(a2, *a1);
  v3 = sub_297829730(&v5);
  if (!v3)
  {
    sub_29780B1D4(a1, &v5);
  }

  return v3;
}

uint64_t sub_29784364C@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 0;
  if (!sub_297847598(a1, a2, &v8))
  {
    return sub_2978436C0(a1, a3);
  }

  v5 = v8;
  v6 = sub_2978473D4(a1);
  return sub_2978475D4(a3, v5, v6, 1);
}

uint64_t sub_2978436C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2978473D4(a1);
  v5 = sub_2978473D4(a1);

  return sub_2978475D4(a2, v4, v5, 1);
}

_DWORD *sub_29784371C(_DWORD *result, int a2, int a3, int a4)
{
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

_DWORD *sub_297843728(uint64_t a1)
{
  result = sub_297829180(&v4);
  v3 = v4;
  *a1 = v4;
  *(a1 + 4) = v3;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_29784377C(uint64_t result, uint64_t a2, char a3)
{
  *(*result + *(result + 8) + 289) = a3;
  v3 = *(result + 8);
  v4 = *result + 8 * v3;
  *(result + 8) = v3 + 1;
  *(v4 + 544) = a2;
  return result;
}

uint64_t sub_2978437A8(uint64_t a1)
{
  v2 = sub_2978437E0();
  sub_297809B88((v2 + 160));
  sub_297817C2C(a1 + 184, v3);
  return a1;
}

uint64_t sub_2978437E4(uint64_t a1)
{
  v2 = sub_29781BBE0(a1, 8);
  sub_297817C28((v2 + 24));
  return a1;
}

_DWORD *sub_297843818(_DWORD *a1)
{
  v2 = sub_297829180(a1);
  sub_297829180(v2 + 1);
  sub_297829180(a1 + 3);
  return a1;
}

uint64_t sub_297843850(uint64_t a1)
{
  sub_297843894(a1 + 184);
  sub_29781B950(a1 + 160);

  return sub_297843898(a1);
}

uint64_t sub_2978438A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_297818B70(a1, a2);
  sub_2978438D8(a1, v3);
  return a1;
}

uint64_t sub_2978438D8(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_2978438D8(result, *a2);
    sub_2978438D8(v3, a2[1]);
    v5 = nullsub_1(v3, v4);
    v7 = j_nullsub_1(a2 + 4, v6);
    sub_297843954(v5, v7);

    return sub_297809C98(v5, a2, 1);
  }

  return result;
}

uint64_t sub_297843994(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_2978439D4(&v3);
  return a1;
}

uint64_t *sub_2978439D4(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_297843A44(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_297843A90(v4);

    return sub_29780C704(v4, v5, v6);
  }

  return result;
}

uint64_t sub_297843A44(uint64_t *a1)
{
  v2 = sub_297843AB0(a1);
  sub_297843ACC(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_297843ACC(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = j_nullsub_1(v3, v5))
  {
    i -= 20;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_297843B28(uint64_t a1)
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
          sub_297843BB0(v5, a1 + 24);
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

uint64_t sub_297843BB0(unsigned int *a1, uint64_t a2)
{
  sub_2977FB5F0(a1);

  return nullsub_1(a2, a1);
}

void *sub_297843BF8(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_297843C50(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

void sub_297843C50(std::string *a1, std::string *a2)
{
  if (a2 != a1)
  {
    v2 = a2;
    do
    {
      v2 = (v2 - 40);
      j_std::string::~string(v2);
    }

    while (v2 != a1);
  }
}

uint64_t sub_297843C94(uint64_t a1)
{
  result = sub_29781BCA4(a1);
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8 * v3;
      do
      {
        v6 = *a1;
        v7 = *(*a1 + v4);
        if (v7)
        {
          result = sub_2978027E4();
          if (v7 != result)
          {
            result = sub_297843BB0(*(v6 + v4), a1 + 24);
          }
        }

        *(v6 + v4) = 0;
        v4 += 8;
      }

      while (v5 != v4);
    }

    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

void *sub_297843D18(uint64_t a1, uint64_t a2)
{
  v3 = sub_297818B70(a1, a2);
  sub_2978438D8(a1, v3);
  *sub_297806460(a1) = 0;
  v5 = sub_297818B94(a1, v4);
  *nullsub_1(a1, v6) = v5;
  result = sub_297818B94(a1, v7);
  *result = 0;
  return result;
}

uint64_t sub_297843D78(uint64_t a1, uint64_t a2)
{
  sub_297843DC8(a1 + 8, 0, 0);
  *(a1 + 16) = a2;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) &= ~1u;
  return a1;
}

uint64_t sub_297843DF4(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  result = nullsub_1(a2, a2);
  *a1 = result | a3;
  return result;
}

uint64_t sub_297843E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297843DC8(a1 + 8, 0, 0);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) &= ~1u;
  return a1;
}

void sub_297843E88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_297843EA4(a1, v3);
  }
}

void sub_297843EA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_297843ED8(a2);

    j__free(v2);
  }
}

uint64_t sub_297843EDC(uint64_t a1)
{
  sub_297843F18(a1 + 24);

  return sub_29783D790(a1);
}

uint64_t sub_297843F20(uint64_t a1)
{
  v2 = sub_29783DC08(a1, 0);
  sub_297843F58(v2 + 24, 0);
  return a1;
}

uint64_t sub_297843F60(uint64_t a1, uint64_t *a2, uint64_t **a3)
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

uint64_t sub_2978440A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_297844134(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_297844144(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_29784419C(a3, a1, (a2 - a1) >> 2);
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

void *sub_29784419C(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, 4 * a3);
  }

  return result;
}

uint64_t sub_2978441AC(uint64_t a1)
{
  *a1 = 0;
  sub_297829180((a1 + 16));
  return a1;
}

uint64_t sub_2978441D8(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  *(result + 16) = a5;
  return result;
}

__n128 sub_2978441F4(__n128 *a1, __n128 *a2)
{
  a1[1].n128_u8[0] = 1;
  result = *a2;
  *a1 = *a2;
  return result;
}

_DWORD *sub_297844208(_DWORD *a1)
{
  result = sub_297829180(a1);
  result[1] = 0;
  return result;
}

uint64_t sub_297844244(uint64_t a1)
{
  v2 = sub_29783D84C(a1);
  v3 = sub_29783D84C(a1);
  sub_297844294(&v5, v2, v3, 1);
  return v5;
}

uint64_t sub_297844298(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a4 & 1) == 0)
  {
    sub_2978442CC(a1);
  }

  return a1;
}

uint64_t sub_2978442CC(uint64_t **a1)
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
      v4 = *a1 + 2;
      *a1 = v4;
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t sub_297844348(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = 0;
  result = sub_297843F60(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_297844384(uint64_t a1, uint64_t a2)
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

  *(v5 + 8 * v6) = sub_297844478(*a2, *(a2 + 8), (a1 + 24), *(a2 + 16));
  ++*(a1 + 12);
  v8 = sub_29780F0F4(a1, v6);
  sub_29781C144(v11, *a1 + 8 * v8, 0);
  v10 = 1;
  return sub_29780EB40(v11, &v10);
}

uint64_t sub_297844478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v13[0] = a1;
  v13[1] = a2;
  v6 = sub_2977FB7B8(v13);
  v7 = sub_297811B28();
  v8 = sub_297803E1C(a3, (v6 + 9), v7);
  v9 = sub_29783E260(v8, v6, a4);
  v10 = sub_297819E7C(v9);
  v11 = sub_2977FB720(v13);
  memcpy(v10, v11, v6);
  *(v10 + v6) = 0;
  return v8;
}

uint64_t sub_29784450C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2978445E0(a1, &v17, a2);
  v10 = *v9;
  v16 = 0;
  if (!v10)
  {
    v11 = v9;
    sub_29784469C(a1, a3, a4, a5, v15);
    v12 = v17;
    v13 = sub_2977FB720(v15);
    sub_297819DD8(a1, v12, v11, v13);
    v10 = sub_2978058AC(v15);
    v16 = 1;
    sub_297844750(v15);
  }

  sub_2977FDEF4(v15, v10);
  sub_29780EB70(&v18, v15, &v16);
  return v18;
}

void *sub_2978445E0(uint64_t a1, void *a2, _DWORD *a3)
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
        if (!sub_297844754(v12, a3, (v6 + 4)))
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
      if (!sub_29784479C(v13, (v6 + 4), a3))
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

uint64_t sub_29784469C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = nullsub_1(a1, a2);
  v10 = sub_297819E6C(v9, 1);
  sub_297819E70(&v16, v9, 0);
  v11 = sub_297819E74(a5, v10, &v16);
  v12 = sub_2977FB720(v11);
  v14 = j_nullsub_1(v12 + 32, v13);
  sub_2978447F0(v9, v14, a2, a3, a4);
  result = sub_297819E7C(a5);
  *(result + 8) = 1;
  return result;
}

BOOL sub_297844754(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = nullsub_1(a3, a2);

  return sub_2978447E4(a1, a2, v5);
}

BOOL sub_29784479C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = nullsub_1(a2, a2);

  return sub_2978447E4(a1, v5, a3);
}

uint64_t sub_297844830(uint64_t a1, uint64_t a2)
{
  *a1 = *sub_297803A7C(a2);
  sub_297809B88((a1 + 8));
  return a1;
}

uint64_t *sub_297844898(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978448B4((result + 1), v3);
  }

  return result;
}

uint64_t sub_2978448B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 8) == 1)
  {
    v4 = *result;
    v5 = j_nullsub_1(a2 + 32, a2);
    result = sub_297843954(v4, v5);
  }

  if (a2)
  {
    v6 = *v3;

    return sub_297809C98(v6, a2, 1);
  }

  return result;
}

uint64_t sub_297844934(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2978449DC(a1, a2);
  }

  else
  {
    sub_297844974(a1, a2);
    result = v3 + 20;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_297844974(uint64_t a1, uint64_t a2)
{
  sub_297844A80(v7, a1, 1);
  v5 = nullsub_1(v8, v4);
  sub_297844A84(a1, v5, a2);
  v8 += 20;
  return sub_297809E88(v7);
}

uint64_t sub_2978449DC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_297843AB0(a1);
  v5 = sub_297844AB4(a1, v4 + 1);
  v6 = sub_297843AB0(a1);
  sub_297844B2C(v11, v5, v6, a1);
  v8 = nullsub_1(v12, v7);
  sub_297844A84(a1, v8, a2);
  v12 += 20;
  sub_297844B30(a1, v11);
  v9 = a1[1];
  sub_297844C14(v11);
  return v9;
}

void *sub_297844A88(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  v3 = *(a2 + 8);
  result[1] = v3;
  result[2] = v3 + 20 * a3;
  return result;
}

__n128 sub_297844AA0(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u32[0] = a3[1].n128_u32[0];
  *a2 = result;
  return result;
}

unint64_t sub_297844AB4(void *a1, unint64_t a2)
{
  v9 = a2;
  v4 = sub_297844C18();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  v6 = sub_297843A90(a1);
  if (v6 < v5 >> 1)
  {
    v8 = 2 * v6;
    return *sub_29780338C(&v8, &v9);
  }

  return v5;
}

uint64_t sub_297844B30(uint64_t *a1, uint64_t *a2)
{
  nullsub_1(a1, a2);
  v4 = a2[1] + *a1 - a1[1];
  v6 = nullsub_1(*a1, v5);
  v8 = nullsub_1(a1[1], v7);
  v10 = nullsub_1(v4, v9);
  sub_29780A154(a1, v6, v8, v10);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  v11 = sub_297843AB0(a1);

  return nullsub_1(a1, v11);
}

uint64_t sub_297844C18()
{
  v2 = sub_297844C54();
  v1 = sub_297803390();
  return *sub_297802578(&v2, &v1);
}

uint64_t *sub_297844C64(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_297844CB8(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 20 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 20 * a2;
  return a1;
}

uint64_t sub_297844CE0(uint64_t a1, unint64_t a2)
{
  if (sub_297844C54() < a2)
  {
    sub_29780339C();
  }

  return sub_297844D28(a2);
}

uint64_t *sub_297844D34(uint64_t *a1)
{
  sub_297844D88(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_297844D90(a1);
    sub_29780C704(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_297844DB4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 20;
      v6 = nullsub_1(v2 - 20, a2);
      result = j_nullsub_1(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_297844E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v17 = a1;
  v9 = sub_297844F00();
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = sub_297813258(v10);
      sub_297844F04(&v17, v11);
      v16 = v12;
      v13 = sub_2977FB720(&v16);
      v14 = sub_297813268(a5, v13);
      if ((sub_297844F0C(a4, a3, v14) & 1) == 0)
      {
        v17 = *sub_297844F10(&v16);
        v11 = v10 + ~v11;
      }

      v10 = v11;
    }

    while (v11);
    return v17;
  }

  return v8;
}

unint64_t sub_297844F24(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return sub_297844F50(&v3, &v4);
}

uint64_t sub_297844FC0(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2, a2);

  return sub_297845000(a1, v3);
}

uint64_t sub_297845050(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_297845084(v4, v2);
  return a1;
}

uint64_t sub_297845084(uint64_t a1, unsigned int a2)
{
  result = sub_2978450D0(a1, a2);
  if (result)
  {

    return sub_297845120(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

BOOL sub_2978450D0(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = a2;
  if (a2)
  {
    v4 = sub_2977FA198(12 * a2);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return a2 != 0;
}

uint64_t sub_297845120(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  sub_29782AF58(a1, 0);
  v2 = sub_297845228();
  v3 = sub_297803A7C(a1);
  result = sub_29784522C(a1);
  if (v3 != result)
  {
    v5 = 0;
    v6 = (result - v3 - 12) / 0xCuLL;
    v7 = vdupq_n_s64(v6);
    v8 = (v6 + 4) & 0x3FFFFFFFFFFFFFFCLL;
    v9 = (v3 + 24);
    do
    {
      v10 = vdupq_n_s64(v5);
      v11 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_2978F4C70)));
      if (vuzp1_s16(v11, *v7.i8).u8[0])
      {
        *(v9 - 6) = v2;
      }

      if (vuzp1_s16(v11, *&v7).i8[2])
      {
        *(v9 - 3) = v2;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_2978F4C80)))).i32[1])
      {
        *v9 = v2;
        v9[3] = v2;
      }

      v5 += 4;
      v9 += 12;
    }

    while (v8 != v5);
  }

  return result;
}

uint64_t sub_29784528C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_2978452C0(v4, v2);
  return a1;
}

uint64_t sub_2978452C0(uint64_t a1, unsigned int a2)
{
  result = sub_29784530C(a1, a2);
  if (result)
  {

    return sub_297845358(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

BOOL sub_29784530C(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = a2;
  if (a2)
  {
    v4 = sub_2977FA198(32 * a2);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return a2 != 0;
}

uint64_t sub_297845358(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  v2 = sub_29782AF58(a1, 0);
  v3 = sub_297845418(v2);
  v4 = sub_297803A7C(a1);
  result = sub_29784541C(a1);
  if (v4 != result)
  {
    v6 = 0;
    v7 = (result - v4 - 32) >> 5;
    v8 = (v7 + 2) & 0xFFFFFFFFFFFFFFELL;
    v9 = vdupq_n_s64(v7);
    v10 = (v4 + 32);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v6), xmmword_2978F4C70)));
      if (v11.i8[0])
      {
        *(v10 - 4) = v3;
      }

      if (v11.i8[4])
      {
        *v10 = v3;
      }

      v6 += 2;
      v10 += 8;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t sub_297845454()
{
  v2 = sub_297845264();
  v1 = sub_297845264();
  return sub_2978182B8(&v2, &v1);
}

uint64_t sub_29784548C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_2978454C0(v4, v2);
  return a1;
}

uint64_t sub_2978454C0(uint64_t a1, unsigned int a2)
{
  result = sub_29783DC8C(a1, a2);
  if (result)
  {

    return sub_29784550C(a1);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_29784550C(uint64_t a1)
{
  sub_29782AF54(a1, 0);
  sub_29782AF58(a1, 0);
  v2 = sub_297845228();
  v3 = sub_297803A7C(a1);
  result = sub_29783D84C(a1);
  if (v3 != result)
  {
    v5 = 0;
    v6 = (result - v3 - 16) >> 4;
    v7 = vdupq_n_s64(v6);
    v8 = (v6 + 4) & 0x1FFFFFFFFFFFFFFCLL;
    v9 = (v3 + 32);
    do
    {
      v10 = vdupq_n_s64(v5);
      v11 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_2978F4C70)));
      if (vuzp1_s16(v11, *v7.i8).u8[0])
      {
        *(v9 - 8) = v2;
      }

      if (vuzp1_s16(v11, *&v7).i8[2])
      {
        *(v9 - 4) = v2;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_2978F4C80)))).i32[1])
      {
        *v9 = v2;
        v9[4] = v2;
      }

      v5 += 4;
      v9 += 16;
    }

    while (v8 != v5);
  }

  return result;
}

void **sub_29784563C(void **a1)
{
  sub_29784566C(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_29784566C(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_297845228();
    v4 = sub_2978456FC();
    v5 = sub_297803A7C(a1);
    result = sub_29784522C(a1);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        result = sub_297845700(*v5, v3);
        if ((result & 1) == 0)
        {
          result = sub_297845700(*v5, v4);
        }

        v5 += 3;
      }

      while (v5 != v6);
    }
  }

  return result;
}

BOOL sub_297845700(int a1, int a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29782B07C(&v4, &v3);
}

void **sub_29784573C(void **a1)
{
  sub_29784576C(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_29784576C(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v6 = sub_297845418(result);
    v5 = sub_2978457F4();
    v3 = sub_297803A7C(a1);
    result = sub_29784541C(a1);
    if (v3 != result)
    {
      v4 = result;
      do
      {
        result = sub_2978457F8(v3, &v6);
        if ((result & 1) == 0)
        {
          result = sub_2978457F8(v3, &v5);
        }

        v3 += 8;
      }

      while (v3 != v4);
    }
  }

  return result;
}

BOOL sub_2978457F8(int *a1, int *a2)
{
  result = sub_297845700(*a1, *a2);
  if (result)
  {
    v5 = a1[1];
    v6 = a2[1];

    return sub_297845700(v5, v6);
  }

  return result;
}

uint64_t sub_297845850()
{
  v2 = sub_297845730();
  v1 = sub_297845730();
  return sub_2978182B8(&v2, &v1);
}

void sub_2978458B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978458CC(a1, v3);
  }
}

void sub_2978458CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29783E9F4(a2);

    j__free(v2);
  }
}

void **sub_297845900(void **a1)
{
  sub_297845930(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_297845930(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v3 = sub_297845228();
    v4 = sub_2978456FC();
    v5 = sub_297803A7C(a1);
    result = sub_29783D84C(a1);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        result = sub_297845700(*v5, v3);
        if ((result & 1) == 0)
        {
          result = sub_297845700(*v5, v4);
        }

        v5 += 4;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_2978459C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_297844224())
  {

    return sub_297845A50(a1, a2);
  }

  else
  {
    v5 = sub_297803A7C(a1);
    v6 = sub_29783D84C(a1);

    return sub_297845C18(a2, v5, v6, 0);
  }
}

uint64_t sub_297845A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29783D84C(a1);
  v5 = sub_29783D84C(a1);

  return sub_297845C18(a2, v4, v5, 1);
}

int **sub_297845AB0(int **a1)
{
  *a1 += 4;
  sub_297845C50(a1);
  return a1;
}

uint64_t sub_297845AE4(uint64_t a1)
{
  if ((sub_29782B4CC)() || (result = sub_29782B4D4(a1), result))
  {
    v3 = sub_29782B4CC(a1);
    if (sub_29782AFAC(a1) <= 4 * v3 || sub_29782AFAC(a1) < 0x41)
    {
      v4 = sub_297845228();
      v5 = sub_2978456FC();
      v6 = sub_297803A7C(a1);
      v7 = sub_29783D84C(a1);
      if (v6 != v7)
      {
        v8 = v7;
        do
        {
          if (!sub_297845700(*v6, v4))
          {
            if (!sub_297845700(*v6, v5))
            {
              sub_297845D8C(a1);
            }

            *v6 = v4;
          }

          v6 += 4;
        }

        while (v6 != v8);
      }

      return sub_29782AF58(a1, 0);
    }

    else
    {

      return sub_297845D88(a1);
    }
  }

  return result;
}

uint64_t sub_297845C1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a4 & 1) == 0)
  {
    sub_297845C50(a1);
  }

  return a1;
}

uint64_t sub_297845C50(int **a1)
{
  v2 = sub_297845264();
  result = sub_297845730();
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v5 = result;
    do
    {
      result = sub_297845700(*v4, v2);
      if ((result & 1) == 0)
      {
        result = sub_297845700(**a1, v5);
        if (!result)
        {
          break;
        }
      }

      v6 = a1[1];
      v4 = *a1 + 4;
      *a1 = v4;
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t sub_297845CD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_297818B70(a1, a2);
  sub_297845D0C(a1, v3);
  return a1;
}

uint64_t sub_297845D0C(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_297845D0C(result, *a2);
    sub_297845D0C(v3, a2[1]);
    v5 = nullsub_1(v3, v4);
    v7 = j_nullsub_1(a2 + 28, v6);
    sub_297818B8C(v5, v7);

    return sub_297809C98(v5, a2, 1);
  }

  return result;
}

uint64_t sub_297845D8C(uint64_t a1)
{
  v2 = sub_29782B4CC() - 1;

  return sub_29782AF54(a1, v2);
}

uint64_t sub_297845DC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_297845930(a1);
  if (v2)
  {
    v5 = 64;
    v4 = 1 << (sub_29780A3C4(v2) + 1);
    v2 = *sub_29782CF54(&v5, &v4);
  }

  if (v2 == *(a1 + 16))
  {
    return sub_29784550C(a1);
  }

  j__free(*a1);
  return sub_2978454C0(a1, v2);
}

uint64_t *sub_297845E58(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  if (sub_297844348(a1, a2, &v6))
  {
    return v6;
  }

  v5 = 0;
  return sub_297845EB4(a1, a2, &v5, v6);
}

uint64_t *sub_297845EB4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_297845EF0(a1, a2, a4);
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t *sub_297845EF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_297845FDC(a1, (2 * v6));
    sub_297844348(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_297845FDC(a1, v7);
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

void sub_297845FE0(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29783DC8C(a1, *v5);
  if (v4)
  {
    sub_29784606C(a1, v4, &v4[2 * v3]);
    j__free(v4);
  }

  else
  {
    sub_29783DCD8(a1);
  }
}

uint64_t sub_29784606C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_29783DCD8(a1);
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
          sub_297844348(a1, a2, &v9);
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

uint64_t sub_297846138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 0;
  if (sub_297844348(a1, a2, &v13))
  {
    v6 = v13;
    v7 = sub_29783D84C(a1);
    sub_297844294(v12, v6, v7, 1);
    v11 = 0;
  }

  else
  {
    v8 = sub_297846230(a1, a2, (a2 + 8), v13);
    v13 = v8;
    v9 = sub_29783D84C(a1);
    sub_297844294(v12, v8, v9, 1);
    v11 = 1;
  }

  return sub_29782D9B0(v12, &v11, a3);
}

uint64_t *sub_297846230(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t *a4)
{
  result = sub_29784626C(a1, a2, a4);
  *result = *a2;
  *(result + 8) = *a3;
  return result;
}

uint64_t *sub_29784626C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_297846358(a1, (2 * v6));
    sub_297844348(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_297846358(a1, v7);
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

void sub_29784635C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29783DC8C(a1, *v5);
  if (v4)
  {
    sub_2978463E8(a1, v4, v4 + 16 * v3);
    j__free(v4);
  }

  else
  {
    sub_29783DCD8(a1);
  }
}

uint64_t sub_2978463E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29783DCD8(a1);
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
          sub_297844348(a1, a2, &v9);
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

uint64_t sub_2978464A8(uint64_t result, void *a2, _DWORD *a3)
{
  *result = *a2;
  *(result + 8) = *a3;
  return result;
}

uint64_t sub_2978464BC(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_2978464D0(uint64_t a1, uint64_t a2)
{
  result = sub_2978464FC();
  *(result + 16) = *(a2 + 16);
  return result;
}

uint64_t sub_297846530(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_29784658C();

  return sub_297846590(a1, a3, v9, a4, a5);
}

uint64_t sub_297846590(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = a3;
    do
    {
      v10 = sub_297813258(v8);
      v14 = a1;
      sub_297846638(&v14, v10);
      v11 = sub_297813268(a5, v14);
      v12 = sub_29784663C(a4, v11, a2);
      if (v12)
      {
        v8 += ~v10;
      }

      else
      {
        v8 = v10;
      }

      if (v12)
      {
        a1 = v14 + 4;
      }
    }

    while (v8);
  }

  return a1;
}

void *sub_297846640(void *a1, uint64_t a2)
{
  v3 = nullsub_1(a2, a2);

  return sub_297846680(a1, v3);
}

uint64_t sub_2978466B8(uint64_t result, uint64_t a2)
{
  if (*(result + 16) == 1)
  {
    v2 = result;
    result = j_nullsub_1(result, a2);
    *(v2 + 16) = 0;
  }

  return result;
}

uint64_t sub_2978466F8(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {

    return sub_297846770(v2);
  }

  else
  {
      ;
    }

    return sub_2977FD5B0(v1);
  }
}

uint64_t sub_297846770(uint64_t a1)
{
  do
  {
    v1 = a1;
    a1 = *(a1 + 8);
  }

  while (a1);
  return v1;
}

uint64_t sub_2978467B0(uint64_t result, _DWORD *a2, void *a3)
{
  *result = *a2;
  *(result + 4) = *a3;
  return result;
}

uint64_t sub_2978467C4(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = 0;
  result = sub_297846840(a1, a2, &v5);
  *a3 = v5;
  return result;
}

int *sub_297846804(uint64_t a1, unsigned int *a2, void *a3, int *a4)
{
  result = sub_297846A30(a1, a2, a4);
  *result = *a2;
  *(result + 1) = *a3;
  return result;
}

uint64_t sub_297846840(uint64_t a1, unsigned int *a2, int **a3)
{
  v6 = sub_297803A7C(a1);
  result = sub_29782AFAC(a1);
  if (result)
  {
    v8 = result;
    v9 = sub_297845228();
    v10 = sub_2978456FC();
    v11 = v8 - 1;
    v12 = sub_297846974(a2) & (v8 - 1);
    v13 = (v6 + 12 * v12);
    if (sub_297845700(*a2, *v13))
    {
      result = 1;
    }

    else
    {
      v16 = a3;
      v14 = 0;
      v15 = 1;
      while (!sub_297845700(*v13, v9))
      {
        if (sub_297845700(*v13, v10) && v14 == 0)
        {
          v14 = v13;
        }

        v12 = (v12 + v15) & v11;
        v13 = (v6 + 12 * v12);
        ++v15;
        if (sub_297845700(*a2, *v13))
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

uint64_t sub_29784697C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a4 & 1) == 0)
  {
    sub_2978469B0(a1);
  }

  return a1;
}

uint64_t sub_2978469B0(int **a1)
{
  v2 = sub_297845264();
  result = sub_297845730();
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v5 = result;
    do
    {
      result = sub_297845700(*v4, v2);
      if ((result & 1) == 0)
      {
        result = sub_297845700(**a1, v5);
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

int *sub_297846A30(uint64_t a1, unsigned int *a2, int *a3)
{
  v10 = a3;
  v5 = sub_29782B4CC();
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_297846B20(a1, (2 * v6));
    sub_2978467C4(a1, a2, &v10);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_297846B20(a1, v7);
    sub_2978467C4(a1, a2, &v10);
  }

  sub_29782B4D8(a1);
  v8 = sub_297845228();
  if (!sub_297845700(*v10, v8))
  {
    sub_29782B514(a1);
  }

  return v10;
}

void sub_297846B24(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_2978450D0(a1, *v5);
  if (v4)
  {
    sub_297846BB4(a1, v4, v4 + 12 * v3);
    j__free(v4);
  }

  else
  {
    sub_297845120(a1);
  }
}

uint64_t sub_297846BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297845120(a1);
  v6 = sub_297845228();
  result = sub_2978456FC();
  if (a2 != a3)
  {
    v8 = result;
    do
    {
      result = sub_297845700(*a2, v6);
      if ((result & 1) == 0)
      {
        result = sub_297845700(*a2, v8);
        if ((result & 1) == 0)
        {
          v9 = 0;
          sub_2978467C4(a1, a2, &v9);
          *v9 = *a2;
          *(v9 + 4) = *(a2 + 4);
          result = sub_29782B4D8(a1);
        }
      }

      a2 += 12;
    }

    while (a2 != a3);
  }

  return result;
}

int *sub_297846C74(uint64_t a1, int *a2)
{
  v6 = 0;
  if (sub_297846CDC(a1, a2, &v6))
  {
    return v6;
  }

  memset(v5, 0, sizeof(v5));
  sub_29783F910(v5);
  return sub_297846D18(a1, a2, v5, v6);
}

uint64_t sub_297846CDC(uint64_t a1, int *a2, void *a3)
{
  v5 = 0;
  result = sub_297846D6C(a1, a2, &v5);
  *a3 = v5;
  return result;
}

int *sub_297846D18(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  v6 = sub_297846F10(a1, a2, a4);
  sub_29780B1D4(v6, a2);
  v7 = *(a3 + 16);
  *(v6 + 2) = *a3;
  *(v6 + 3) = v7;
  return v6;
}

uint64_t sub_297846D6C(uint64_t a1, int *a2, int **a3)
{
  v6 = sub_297803A7C(a1);
  result = sub_29782AFAC(a1);
  if (result)
  {
    v8 = result;
    v15 = sub_297845418();
    v14 = sub_2978457F4();
    v9 = v8 - 1;
    v10 = sub_297846E80(a2) & (v8 - 1);
    v11 = (v6 + 32 * v10);
    if (sub_2978457F8(a2, v11))
    {
LABEL_8:
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (!sub_2978457F8(v11, &v15))
      {
        if (sub_2978457F8(v11, &v14) && v12 == 0)
        {
          v12 = v11;
        }

        v10 = (v10 + v13) & v9;
        v11 = (v6 + 32 * v10);
        ++v13;
        if (sub_2978457F8(a2, v11))
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

uint64_t sub_297846E84(unsigned int *a1)
{
  v2 = sub_297846784(*a1);
  v3 = sub_297846784(a1[1]);

  return sub_297846ED0(v2, v3);
}

uint64_t sub_297846ED0(uint64_t a1, unsigned int a2)
{
  v2 = (a2 | (a1 << 32)) + ~(a2 << 32);
  v3 = (v2 ^ (v2 >> 22)) + ~((v2 ^ (v2 >> 22)) << 13);
  v4 = (9 * (v3 ^ (v3 >> 8))) ^ ((9 * (v3 ^ (v3 >> 8))) >> 15);
  return ((v4 + ~(v4 << 27)) >> 31) ^ (v4 + ~(v4 << 27));
}

int *sub_297846F10(uint64_t a1, int *a2, int *a3)
{
  v11 = a3;
  v5 = sub_29782B4CC();
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_297846FFC(a1, (2 * v6));
    sub_297846CDC(a1, a2, &v11);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_297846FFC(a1, v7);
    sub_297846CDC(a1, a2, &v11);
  }

  v8 = sub_29782B4D8(a1);
  v10 = sub_297845418(v8);
  if (!sub_2978457F8(v11, &v10))
  {
    sub_29782B514(a1);
  }

  return v11;
}

void sub_297847000(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29784530C(a1, *v5);
  if (v4)
  {
    sub_29784708C(a1, v4, v4 + 32 * v3);
    j__free(v4);
  }

  else
  {
    sub_297845358(a1);
  }
}

uint64_t sub_29784708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_297845358(a1);
  v12 = sub_297845418(v6);
  result = sub_2978457F4();
  v11 = result;
  while (a2 != a3)
  {
    result = sub_2978457F8(a2, &v12);
    if ((result & 1) == 0)
    {
      result = sub_2978457F8(a2, &v11);
      if ((result & 1) == 0)
      {
        v10 = 0;
        sub_297846CDC(a1, a2, &v10);
        sub_29780B1D4(v10, a2);
        v8 = v10;
        v9 = *(a2 + 24);
        *(v10 + 2) = *(a2 + 8);
        *(v8 + 3) = v9;
        result = sub_29782B4D8(a1);
      }
    }

    a2 += 32;
  }

  return result;
}

uint64_t sub_297847148(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a4 & 1) == 0)
  {
    sub_29784717C(a1);
  }

  return a1;
}

int *sub_29784717C(int **a1)
{
  v5 = sub_297845454();
  v4 = sub_297845850();
  result = *a1;
  if (*a1 != a1[1])
  {
    do
    {
      if (!sub_2978457F8(result, &v5))
      {
        result = sub_2978457F8(*a1, &v4);
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

uint64_t sub_2978471F0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nullsub_1(a1, a2);
  sub_297847224(v4, v2);
  return a1;
}

uint64_t sub_297847224(int *a1, unsigned int a2)
{
  v3 = *a1;
  *a1 |= 1u;
  if (a2 >= 0x11)
  {
    *a1 = v3 & 0xFFFFFFFE;
    v5 = sub_29784729C(a1);
    *v5 = sub_2978472A0(a1, a2);
    v5[1] = v6;
  }

  return sub_2978472CC(a1);
}

uint64_t sub_2978472CC(int *a1)
{
  sub_2978473C8(a1, 0);
  sub_2978473CC(a1, 0);
  v2 = sub_297845228();
  v3 = sub_2978473D0(a1);
  result = sub_2978473D4(a1);
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

uint64_t sub_297847424(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    return *sub_297819E7C(a1);
  }

  return sub_297819E7C(a1);
}

uint64_t sub_29784745C(_BYTE *a1)
{
  if (*a1)
  {
    return 16;
  }

  else
  {
    return *(sub_297819E7C(a1) + 8);
  }
}

_BYTE *sub_29784748C(_BYTE *a1)
{
  sub_2978474BC(a1);
  sub_29784754C(a1);
  return a1;
}

uint64_t sub_2978474BC(uint64_t a1)
{
  result = sub_297847458(a1);
  if (result)
  {
    v3 = sub_297845228();
    v4 = sub_2978456FC();
    v5 = sub_2978473D0(a1);
    result = sub_2978473D4(a1);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        result = sub_297845700(*v5, v3);
        if ((result & 1) == 0)
        {
          result = sub_297845700(*v5, v4);
        }

        v5 += 2;
      }

      while (v5 != v6);
    }
  }

  return result;
}

_BYTE *sub_29784754C(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v1 = result;
    v2 = sub_29784729C(result);
    j__free(*v2);

    return sub_29784729C(v1);
  }

  return result;
}

uint64_t sub_297847598(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = 0;
  result = sub_297847614(a1, a2, &v5);
  *a3 = v5;
  return result;
}

int *sub_2978475D8(int *a1, unsigned int *a2, int *a3, int *a4)
{
  result = sub_2978477F4(a1, a2, a4);
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t sub_297847614(uint64_t a1, unsigned int *a2, int **a3)
{
  v6 = sub_297847420();
  result = sub_297847458(a1);
  if (result)
  {
    v8 = result;
    v9 = sub_297845228();
    v10 = sub_2978456FC();
    v11 = v8 - 1;
    v12 = sub_297846974(a2) & (v8 - 1);
    v13 = (v6 + 8 * v12);
    if (sub_297845700(*a2, *v13))
    {
      result = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (!sub_297845700(*v13, v9))
      {
        if (sub_297845700(*v13, v10) && v14 == 0)
        {
          v14 = v13;
        }

        v12 = (v12 + v15) & v11;
        v13 = (v6 + 8 * v12);
        ++v15;
        if (sub_297845700(*a2, *v13))
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

uint64_t sub_297847740(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if ((a4 & 1) == 0)
  {
    sub_297847774(a1);
  }

  return a1;
}

uint64_t sub_297847774(int **a1)
{
  v2 = sub_297845264();
  result = sub_297845730();
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v5 = result;
    do
    {
      result = sub_297845700(*v4, v2);
      if ((result & 1) == 0)
      {
        result = sub_297845700(**a1, v5);
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

int *sub_2978477F4(int *a1, unsigned int *a2, int *a3)
{
  v10 = a3;
  v5 = sub_2978478E4(a1);
  v6 = sub_297847458(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978478E8(a1, (2 * v6));
    sub_297847598(a1, a2, &v10);
    sub_297847458(a1);
  }

  else if (v6 + ~v5 - sub_2978478EC(a1) <= v6 >> 3)
  {
    sub_2978478E8(a1, v7);
    sub_297847598(a1, a2, &v10);
  }

  sub_2978478F0(a1);
  v8 = sub_297845228();
  if (!sub_297845700(*v10, v8))
  {
    sub_29784792C(a1);
  }

  return v10;
}

int *sub_2978478F0(int *a1)
{
  v2 = sub_2978478E4(a1) + 1;

  return sub_2978473C8(a1, v2);
}

uint64_t sub_29784792C(uint64_t a1)
{
  v2 = sub_2978478EC() - 1;

  return sub_2978473CC(a1, v2);
}

void sub_297847968(int *a1, unsigned int a2)
{
  v2 = a2;
  v19 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x10)
  {
    v18[0] = 64;
    v17 = sub_2977FB4FC(a2 - 1);
    v2 = *sub_2977FF288(v18, &v17);
  }

  if (*a1)
  {
    if (v2 >= 0x10)
    {
      v7 = sub_297845228();
      v8 = sub_2978456FC();
      v9 = sub_297847420(a1);
      v10 = v18;
      v11 = 128;
      do
      {
        if (!sub_297845700(*v9, v7) && !sub_297845700(*v9, v8))
        {
          *v10 = *v9;
          v10[1] = v9[1];
          v10 += 2;
        }

        v9 += 2;
        v11 -= 8;
      }

      while (v11);
      *a1 &= ~1u;
      v12 = sub_29784729C(a1);
      *v12 = sub_2978472A0(a1, v2);
      v12[1] = v13;
      sub_297847B20(a1, v18, v10);
    }
  }

  else
  {
    v4 = sub_29784729C(a1);
    v5 = *v4;
    v6 = *(v4 + 8);
    sub_29784729C(a1);
    if (v2 > 0x10)
    {
      v14 = sub_29784729C(a1);
      *v14 = sub_2978472A0(a1, v2);
      v14[1] = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    sub_297847B20(a1, v5, &v5[2 * v6]);
    j__free(v5);
  }

  v16 = *MEMORY[0x29EDCA608];
}

int *sub_297847B20(int *a1, int *a2, int *a3)
{
  sub_2978472CC(a1);
  v6 = sub_297845228();
  result = sub_2978456FC();
  if (a2 != a3)
  {
    v8 = result;
    do
    {
      result = sub_297845700(*a2, v6);
      if ((result & 1) == 0)
      {
        result = sub_297845700(*a2, v8);
        if ((result & 1) == 0)
        {
          v9 = 0;
          sub_297847598(a1, a2, &v9);
          *v9 = *a2;
          v9[1] = a2[1];
          result = sub_2978478F0(a1);
        }
      }

      a2 += 2;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t sub_297847BE8(uint64_t a1, uint64_t a2)
{
  sub_29782916C((a1 + 8));
  *a1 = &unk_2A1E55098;
  sub_297804560((a1 + 16));
  sub_297811CBC((a1 + 32), a2);
  sub_297829180((a1 + 172));
  sub_297804560((a1 + 184));
  sub_29783C800(a1 + 200);
  *(a1 + 80) = 0x2008082020000101;
  *(a1 + 99) = 1077944352;
  *(a1 + 103) = 64;
  *(a1 + 88) = 537923616;
  *(a1 + 92) = 32;
  *(a1 + 93) = 1077952576;
  *(a1 + 97) = 0;
  *(a1 + 108) = 0;
  *(a1 + 220) = xmmword_2978FAEE0;
  *(a1 + 236) = xmmword_2978FAEF0;
  *(a1 + 252) = 0x500000009;
  *(a1 + 260) = 5;
  *(a1 + 264) = *(a1 + 264) & 0xF8 | 3;
  *(a1 + 268) = 0;
  *(a1 + 144) = &unk_2978F4C38;
  *(a1 + 152) = &unk_2978F4C40;
  *(a1 + 160) = &unk_2978F4C40;
  *(a1 + 112) = 0;
  *(a1 + 120) = "_";
  *(a1 + 128) = "mcount";
  *(a1 + 136) = &unk_2978F4C30;
  *(a1 + 168) = 0;
  *(a1 + 216) &= 0xE0u;
  if (sub_297847D8C(a1 + 32))
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  sub_29780819C((a1 + 172), v4);
  *(a1 + 176) = &unk_2978FAF00;
  *(a1 + 272) = 0;
  sub_2977FB7B4(&v6, "unknown");
  *(a1 + 184) = v6;
  sub_29783C800(&v6);
  *(a1 + 200) = v6;
  *(a1 + 205) = *(&v6 + 5);
  return a1;
}

uint64_t sub_297847DD0(uint64_t a1)
{
  *a1 = &unk_2A1E55098;
  v2 = a1 + 16;
  j_std::string::~string((a1 + 32));
  sub_297847E24(v2);
  return a1;
}

uint64_t sub_297847E40(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xA)
  {
    goto LABEL_8;
  }

  if (((1 << a2) & 0x60) != 0)
  {
    return sub_297847E30(a1);
  }

  if (((1 << a2) & 0x180) != 0)
  {
    return sub_297847E90(a1);
  }

  if (((1 << a2) & 0x600) != 0)
  {
    return sub_297847E98(a1);
  }

LABEL_8:
  if (a2 - 1 >= 2)
  {
    return sub_297847E38();
  }

  return sub_29781C25C();
}

uint64_t sub_297847EA0(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 26) & 8) != 0)
  {
    *(result + 264) &= ~2u;
  }

  v2 = *(a2 + 16);
  if ((v2 & 0x1000) != 0)
  {
    *(result + 236) = 4;
    if ((*(a2 + 16) & 0x4000) == 0)
    {
      return result;
    }
  }

  else if ((v2 & 0x4000) == 0)
  {
    return result;
  }

  *(result + 99) = -2139078592;
  *(result + 87) = 269492256;
  *(result + 91) = 8224;
  if (*(result + 93) != 32)
  {
    *(result + 93) = 16448;
    *(result + 152) = &unk_2978F4C40;
  }

  *(result + 95) = -32640;
  if (*(result + 83) == 32)
  {
    v3 = 6;
  }

  else
  {
    v3 = 8;
  }

  if (*(result + 83) == 32)
  {
    v4 = 5;
  }

  else
  {
    v4 = 7;
  }

  *(result + 228) = v4;
  *(result + 232) = v4;
  *(result + 220) = v3;
  *(result + 224) = 9;
  *(result + 252) = 7;
  *(result + 136) = &unk_2978F4C30;
  *(result + 144) = &unk_2978F4C38;
  *(result + 160) = &unk_2978F4C48;
  return result;
}

uint64_t sub_297847F94@<X0>(_BYTE **a1@<X1>, uint64_t a2@<X8>)
{
  if (**a1 == 112)
  {
    return sub_297804638(a2, "r");
  }

  else
  {
    return sub_29780BCFC(a2, 1);
  }
}

_BYTE *sub_297848000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_29784809C(a2, a3, a4);
  *result = a5;
  return result;
}

uint64_t sub_29784806C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    return (*(*a1 + 232))();
  }

  else
  {
    return a1[83];
  }
}

uint64_t sub_29784809C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2978480C4(a1, a2, a3);

  return sub_29783D400(v3);
}

uint64_t sub_2978480CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  sub_29784821C(v11, &v10, v7);
  v8 = sub_297848128(a1, v7);
  v9 = v5;
  return sub_29781AD54(&v8);
}

uint64_t sub_297848128(uint64_t a1, uint64_t a2)
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

  *(v5 + 8 * v6) = sub_29784822C(*a2, *(a2 + 8), a1 + 24, *(a2 + 16));
  ++*(a1 + 12);
  v8 = sub_29780F0F4(a1, v6);
  sub_29781C144(v11, *a1 + 8 * v8, 0);
  v10 = 1;
  return sub_29780EB40(v11, &v10);
}

void *sub_29784822C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v12[0] = a1;
  v12[1] = a2;
  v6 = sub_2977FB7B8(v12);
  sub_297811B28();
  v7 = sub_297803F78(a3, (v6 + 9));
  v8 = sub_2978482C0(v7, v6, a4);
  v9 = sub_297819E7C(v8);
  v10 = sub_2977FB720(v12);
  memcpy(v9, v10, v6);
  *(v9 + v6) = 0;
  return v7;
}

_DWORD *sub_2978482C4(_DWORD *a1, int a2, char a3)
{
  result = sub_29780819C(a1, a2);
  *(result + 4) = a3;
  return result;
}

__n128 sub_2978482F0(__n128 *a1, __n128 *a2, unsigned __int8 *a3)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = *a3;
  return result;
}

char *sub_297848314(int a1)
{
  if ((a1 - 19) > 0x37)
  {
    return 0;
  }

  else
  {
    return off_29EE7F598[(a1 - 19)];
  }
}

char *sub_29784833C(int a1)
{
  if ((a1 - 75) > 0x1A3)
  {
    return 0;
  }

  else
  {
    return off_29EE7F758[(a1 - 75)];
  }
}

uint64_t sub_297848364(uint64_t a1, int *a2)
{
  sub_297802744(a1);
  *(a1 + 24) = sub_2978070F8(a2);
  *(a1 + 32) = v4;
  *(a1 + 40) = sub_297807464(a2);
  *(a1 + 48) = v5;
  *(a1 + 56) = sub_297811C4C(a2);
  *(a1 + 60) = sub_2978483EC(a2);
  *(a1 + 64) = sub_297805510(a2);
  *(a1 + 72) = sub_297805508(a2);
  *(a1 + 76) = sub_2978483F4(a2);
  *(a1 + 80) = 0;
  return a1;
}

BOOL sub_297848400(uint64_t a1, uint64_t a2)
{
  v7[0] = sub_297830E48(a1);
  v7[1] = v3;
  v6[0] = sub_297830E48(a2);
  v6[1] = v4;
  return sub_2978074C4(v7, v6);
}

uint64_t sub_297848478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29780AE44(v16);
  v17 = (*(*a1 + 24))(a1, a2, v16);
  v18 = v12;
  if (!sub_297805430(&v17))
  {
    v13 = sub_2977FB720(v16);
    v17 = (*(*v13 + 24))(v13, a2, a3, a4, a5, a6);
    v18 = v14;
  }

  sub_29782E714(v16);
  return v17;
}

void *sub_29784855C@<X0>(void *a1@<X8>)
{
  v2 = off_2A1A90168;
  if ((*off_2A1A90168(&off_2A1A90168) & 1) == 0)
  {
    v6 = off_2A1A90150(&off_2A1A90150);
    sub_297804560(v6);
    _tlv_atexit(sub_29782DDAC, v6);
    *v2(&off_2A1A90168) = 1;
  }

  v3 = off_2A1A90150(&off_2A1A90150);
  if (!sub_29782DD44(v3))
  {
    v4 = sub_2977FA198(8);
    *v4 = 0;
    sub_29784865C();
    sub_297848660(v7, v4);
    sub_29782DD64(v3, v7);
    sub_29782DDAC(v7);
  }

  return sub_29782DD34(a1, v3);
}

uint64_t sub_297848688(uint64_t a1)
{
  *a1 = &unk_2A1E551C8;
  j_std::string::~string((a1 + 8));
  return a1;
}

uint64_t *sub_2978486DC(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a1 = a2;
  sub_297804560(a1 + 1);
  (*(**a1 + 32))(v11);
  if (!sub_297805430(a4))
  {
    sub_2978487D4(v10);
    v6 = sub_2978487B8(v11, v10);
    sub_2978487D8(v10);
    if (v6)
    {
      sub_2978487DC(v7, v10);
      sub_297848818(a1 + 1, v10);
      sub_297847E24(v10);
      v8 = sub_2977FB720((a1 + 1));
      sub_297848860(v8, v11);
    }
  }

  sub_2978487D8(v11);
  return a1;
}

uint64_t *sub_297848818(uint64_t *a1, void *a2)
{
  sub_29782F718(v4, a2);
  sub_29782F71C(v4, a1);
  sub_297847E24(v4);
  return a1;
}

uint64_t *sub_297848868(uint64_t *a1, _DWORD *a2)
{
  sub_2978487D4(v24);
  v4 = sub_2977FB720((a1 + 1));
  v5 = sub_2978489C8(v4);
  v6 = sub_2978489CC(v5);
  if (sub_297848448(v6))
  {
    v7 = *a1;
    v8 = sub_2977FB720((a1 + 1));
    v9 = sub_2978489C8(v8);
    v10 = sub_2978489CC(v9);
    v21[0] = sub_297830E08(v10);
    v21[1] = v11;
    sub_2978036E8(v22, v21);
    (*(*v7 + 32))(v23, v7, v22, a2);
    if (sub_297805430(a2))
    {
LABEL_5:
      sub_2978487D8(v23);
      goto LABEL_12;
    }

    if (sub_2978487B8(v23, v24))
    {
      v12 = sub_2977FB720((a1 + 1));
      sub_297848860(v12, v23);
      goto LABEL_5;
    }

    sub_2978487D8(v23);
  }

  v13 = sub_2977FB720((a1 + 1));
  if (!sub_2978489E8(v13))
  {
    do
    {
      v14 = sub_2977FB720((a1 + 1));
      v15 = sub_2978489C8(v14);
      v16 = sub_2978489EC(v15, a2);
      if (!sub_297848A68(v16, v24))
      {
        break;
      }

      v17 = sub_2977FB720((a1 + 1));
      sub_297848AFC(v17);
      v18 = sub_2977FB720((a1 + 1));
    }

    while (!sub_2978489E8(v18));
  }

  v19 = sub_2977FB720((a1 + 1));
  if (sub_2978489E8(v19))
  {
    sub_297848B00(a1 + 1);
  }

LABEL_12:
  sub_2978487D8(v24);
  return a1;
}

uint64_t *sub_2978489EC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2977FB720(a1);
  *a2 = (*(*v4 + 16))(v4);
  *(a2 + 8) = v5;
  if (sub_297805430(a2) || (v6 = sub_2977FB720(a1), !sub_297848458(v6 + 8)))
  {
    sub_297848B00(a1);
  }

  return a1;
}

BOOL sub_297848A68(uint64_t a1, uint64_t a2)
{
  if (sub_29782DD44(a1) && sub_29782DD44(a2))
  {
    v4 = sub_2977FB720(a1);
    v5 = sub_2977FB720(a2);

    return sub_297848400(v4 + 8, v5 + 8);
  }

  else
  {
    return !sub_29782DD44(a1) && !sub_29782DD44(a2);
  }
}

uint64_t sub_297848B00(uint64_t *a1)
{
  sub_297804560(v3);
  sub_29782F71C(v3, a1);
  return sub_297847E24(v3);
}

void *sub_297848B44(void *a1)
{
  result = sub_297848664(a1);
  *result = &unk_2A1E55268;
  return result;
}

void sub_297848B80(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  sub_297805504(v9);
  v8.__r_.__value_.__r.__words[0] = sub_297807078(a1, v9);
  v8.__r_.__value_.__l.__size_ = v4;
  if (sub_297805430(&v8))
  {
    sub_297848684(a2, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    sub_2978483FC(&v8, v9);
    sub_297812960(a1, &v6);
    sub_2978044E8(v7, &v6);
    sub_297848D80(&v8, v7[0], v7[1]);
    std::string::~string(&v6);
    sub_297848DCC(&v5, &v8);
    sub_297848DD0(a2, &v5);
    j_std::string::~string(&v5);
    j_std::string::~string(&v8);
  }
}

uint64_t sub_297848C48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v11 = 0;
  v12[0] = sub_297807130(a2, &v11);
  v12[1] = v5;
  if (!sub_297805430(v12))
  {
    v6 = sub_2977FA198(104);
    sub_297848E70(v6, v11);
    sub_29782E910(a3, v6);
    v7 = sub_2977FB720(a3);
    sub_297812960(a2, &v9);
    sub_2978044E8(v10, &v9);
    (*(*v7 + 40))(v7, v10[0], v10[1]);
    std::string::~string(&v9);
    sub_2978055DC(v12);
  }

  return v12[0];
}

uint64_t sub_297848D20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_2978492AC(v5, a1, a2);
  sub_29782F718(v6, v5);
  sub_2978486D4(a3, v6);
  sub_297847E24(v6);
  return sub_297847E24(v5);
}

void sub_297848D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  sub_297801F5C(v5, &v4);
  sub_2978046C4(a1, &v4);
  std::string::~string(&v4);
}

__n128 sub_297848DD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_297808AB4(a1, a2);
  result = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  *(v3 + 65) = *(a2 + 65);
  *(v3 + 56) = v6;
  *(v3 + 40) = v5;
  *(v3 + 24) = result;
  return result;
}

uint64_t sub_297848E18(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) &= ~1u;
  v4 = nullsub_1(a1, a2);
  v6 = nullsub_1(a2, v5);
  sub_297848DCC(v4, v6);
  return a1;
}

void *sub_297848E74(void *a1, int a2)
{
  v4 = sub_297848EC8(a1);
  *v4 = &unk_2A1E552A0;
  *(v4 + 2) = a2;
  sub_297848EE8((v4 + 2));
  return a1;
}

void sub_297848EF0()
{
  v0 = sub_297848EEC();

  j__free(v0);
}

void sub_297848F18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_297848458(a1 + 16))
  {
    sub_297805504(v9);
    v8.__r_.__value_.__r.__words[0] = sub_297807698(*(a1 + 8), v9);
    v8.__r_.__value_.__l.__size_ = v4;
    if (sub_297805430(&v8))
    {
      sub_297848684(a2, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
      return;
    }

    sub_2978483FC(&v8, v9);
    v5 = sub_297830E08(a1 + 16);
    sub_297848D80(&v8, v5, v6);
    sub_2978491D4(a1 + 16, &v8);
    j_std::string::~string(&v8);
  }

  sub_297849220(v7, a1 + 16);
  sub_297848DD0(a2, v7);
  j_std::string::~string(v7);
}

uint64_t sub_297848FEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6)
{
  v21 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 8);
  sub_297812960(a2, &v18);
  v11 = sub_2978037C8(&v18);
  sub_297804EDC(v10, v11, a4, a5, a6, v20);
  std::string::~string(&v18);
  v19[0] = sub_29780CBC8(v20, v12);
  v19[1] = v13;
  if (!sub_297805430(v19))
  {
    v15 = j_nullsub_1(v20, v14);
    sub_297849268(a3, v15);
    sub_2978055DC(v19);
  }

  sub_29780A9E0(v20, v14);
  result = v19[0];
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2978490D8(uint64_t a1)
{
  if (close(*(a1 + 8)))
  {
    v2 = *__error();
    v3 = std::generic_category();
    sub_29780562C(&v5, v2, v3);
  }

  else
  {
    *(a1 + 8) = -1;
    sub_2978055DC(&v5);
  }

  return v5;
}

uint64_t sub_297849148(uint64_t a1)
{
  v2 = sub_297802744(a1);
  j_nullsub_1(v2 + 24, v3);
  sub_2978074A4(a1 + 40);
  *(a1 + 72) = 0;
  return a1;
}

void *sub_297849184(void *a1)
{
  *a1 = &unk_2A1E552A0;
  v2 = (a1 + 2);
  sub_2978490D8(a1);
  j_std::string::~string(v2);
  return a1;
}

uint64_t sub_2978491D4(uint64_t a1, uint64_t a2)
{
  sub_2978046C4(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 65);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 65) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  return a1;
}

__n128 sub_297849224(std::string *a1, uint64_t a2)
{
  v3 = std::string::basic_string(a1, a2);
  result = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  *(&v3[2].__r_.__value_.__r.__words[2] + 1) = *(a2 + 65);
  *&v3[2].__r_.__value_.__r.__words[1] = v6;
  *&v3[1].__r_.__value_.__r.__words[2] = v5;
  *&v3[1].__r_.__value_.__l.__data_ = result;
  return result;
}

uint64_t *sub_297849268(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_2978058AC(a2);
  sub_2978054BC(a1, v4);
  nullsub_1(a2, v5);
  return a1;
}

uint64_t sub_2978492B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11[3] = *MEMORY[0x29EDCA608];
  sub_297849354(v11);
  v6 = sub_2977FD5B0(v11);
  sub_297849358(v6, a1, a2);
  v7 = sub_29782C270(v11);
  v8 = sub_297829064(v7);
  sub_29784935C(v8, v7, a3);
  result = sub_29784938C(v11);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_29784935C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_297804560(a3);
  *result = a1;
  result[1] = a2;
  return result;
}

uint64_t sub_297849390(uint64_t a1)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = sub_2978493C4();
  return a1;
}

void *sub_2978493D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_297849440(a1, 0);
  *v6 = &unk_2A1E552E0;
  v7 = sub_297829064(v6);
  sub_297849484(v7, a2, a3);
  return a1;
}

void *sub_297849440(void *a1, uint64_t a2)
{
  result = sub_2978494BC(a1, a2);
  *result = MEMORY[0x29EDC9598] + 16;
  result[2] = a2;
  return result;
}

void sub_29784948C()
{
  v0 = sub_297849488();

  j__free(v0);
}

void *sub_2978494BC(void *result, uint64_t a2)
{
  *result = MEMORY[0x29EDC9550] + 16;
  result[1] = a2;
  return result;
}

void *sub_2978494E4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_297849608(a1);
  v6->__r_.__value_.__r.__words[0] = &unk_2A1E55318;
  v7 = &v6[5];
  sub_297812960(a2, v6 + 4);
  sub_2978036E4(&v15, (a1 + 12));
  sub_29784964C(v7, &v15, a3);
  if (!sub_297805430(a3))
  {
    sub_29784966C(&v15);
    v8 = sub_297849650(v7, &v15);
    sub_297849670(&v15);
    if (v8)
    {
      sub_297805504(v16);
      v9 = sub_297849674(v7);
      *a3 = sub_297807424(v9, v16);
      *(a3 + 8) = v10;
      if (!sub_297805430(a3))
      {
        sub_2978483FC(&v15, v16);
        sub_2978491D4((a1 + 1), &v15);
        j_std::string::~string(&v15);
        v11 = sub_297849674(v7);
        v13 = nullsub_1(v11, v12);
        sub_2978044E8(&v15, v13);
        sub_297848D80((a1 + 1), v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
      }
    }
  }

  return a1;
}

void *sub_297849608(void *a1)
{
  *a1 = &unk_2A1E551C8;
  sub_297848EE8((a1 + 1));
  return a1;
}

void sub_297849694()
{
  v0 = sub_297849690();

  j__free(v0);
}

uint64_t sub_2978496BC(uint64_t a1)
{
  sub_2978055DC(v11);
  sub_297849AC4(a1 + 120, v11);
  if (!sub_297805430(v11))
  {
    sub_29784966C(&v10);
    v2 = sub_297849984((a1 + 120), &v10);
    sub_297849670(&v10);
    if (v2)
    {
      sub_297848EE8(&v10);
      sub_2978491D4(a1 + 8, &v10);
      j_std::string::~string(&v10);
    }

    else
    {
      sub_297805504(v9);
      v3 = sub_297849674(a1 + 120);
      v11[0] = sub_297807424(v3, v9);
      v11[1] = v4;
      sub_2978483FC(&v10, v9);
      sub_2978491D4(a1 + 8, &v10);
      j_std::string::~string(&v10);
      v5 = sub_297849674(a1 + 120);
      v7 = nullsub_1(v5, v6);
      sub_2978044E8(&v10, v7);
      sub_297848D80(a1 + 8, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }
  }

  return v11[0];
}

uint64_t *sub_2978497AC(uint64_t *a1, char **a2, uint64_t *a3)
{
  sub_29780AE44(a1);
  v6 = sub_2977FA198(88);
  sub_297849860();
  sub_297829178(&v13, v6);
  sub_297849864(a1, &v13);
  sub_29784988C(&v13);
  sub_297806EC8(v12);
  v7 = sub_2977FB720(a1);
  v8 = sub_297812A04(a2, v12);
  *a3 = sub_2978078EC(v7, v8, v9);
  a3[1] = v10;
  sub_297801F60(v12);
  return a1;
}

_DWORD *sub_297849890(_DWORD *a1)
{
  v2 = sub_29782916C(a1);
  *(v2 + 1) = 0;
  sub_297807C20((v2 + 4));
  return a1;
}

uint64_t *sub_2978498C4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = *result;
  *result = v2;
  return result;
}

uint64_t sub_297849900(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return sub_297849910();
  }

  return result;
}

void sub_297849914(_DWORD *a1)
{
  if ((*a1)-- == 1)
  {
    v3 = sub_297849950(a1);

    j__free(v3);
  }
}

uint64_t sub_297849954(uint64_t a1)
{
  sub_297807BC0(a1);
  j_std::string::~string((a1 + 16));
  return a1;
}

uint64_t sub_297849984(void *a1, void *a2)
{
  if (sub_297808558(a1, a2))
  {
    return 1;
  }

  if (!sub_29780B1BC(a2))
  {
    v8 = a1;
LABEL_10:
    v9 = sub_2977FB720(v8);
    sub_297807C20(&v10);
    v4 = sub_297849A50(v9 + 16, &v10);
    j_std::string::~string(&v10);
    return v4;
  }

  if (!sub_29780B1BC(a1))
  {
    v8 = a2;
    goto LABEL_10;
  }

  v5 = sub_2977FB720(a1);
  v6 = sub_2977FB720(a2);

  return sub_297849A50(v5 + 16, v6 + 16);
}

uint64_t sub_297849A60(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = &unk_2A1E55318;
  v2 = a1 + 4;
  sub_297849670(&a1[5]);
  std::string::~string(v2);

  return sub_297848688(a1);
}

uint64_t sub_297849AC4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2977FB720(a1);
  *a2 = sub_297807A98(v4);
  a2[1] = v5;
  return a1;
}

uint64_t sub_297849B18(uint64_t a1)
{
  v1 = sub_297829064(a1);

  return sub_297849B40(v1);
}

uint64_t sub_297849B98(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return sub_297849B68();
  }

  return result;
}

uint64_t *sub_297849BA8(uint64_t *a1, void *a2)
{
  v3 = sub_29782DD34(a1, a2);
  v4 = sub_2977FB720(v3);
  if (!sub_297848458(v4 + 8))
  {
    sub_297848B00(a1);
  }

  return a1;
}

uint64_t sub_297849C20(uint64_t result, uint64_t a2)
{
  if (*(result + 1) == 1)
  {
    v2 = result;
    result = j_nullsub_1(result, a2);
    *(v2 + 1) = 0;
  }

  return result;
}

uint64_t sub_297849C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 88) |= 1u;
  v6 = nullsub_1(a1, a2);
  *v6 = a2;
  v6[1] = a3;
  return a1;
}

uint64_t *sub_297849CA0(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  sub_2977FDEF4(&v7, a2);
  v4 = sub_2977FA198(32);
  a1[1] = sub_297849D0C(v4, a2);
  sub_29780C4DC(&v7);
  nullsub_1(a1, v5);
  sub_297849D10(&v7);
  return a1;
}

void *sub_297849D14(void *a1, uint64_t a2)
{
  result = sub_297849440(a1, 0);
  *result = &unk_2A1E55340;
  result[3] = a2;
  return result;
}

void sub_297849D60(std::__shared_weak_count *a1)
{
  j_std::__shared_weak_count::~__shared_weak_count(a1);

  j__free(v1);
}

uint64_t sub_297849D98(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_297849DEC(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return sub_297849D98(result);
  }

  return result;
}

uint64_t sub_297849E08@<X0>(void *a1@<X8>)
{
  v8[3] = *MEMORY[0x29EDCA608];
  sub_297849E98(v8, 1);
  v2 = sub_2977FD5B0(v8);
  sub_297849E9C(v2);
  v3 = sub_29782C270(v8);
  v5 = sub_297849EE0(v3, v4);
  sub_297849EA0(v5, v3, a1);
  result = sub_29782C280(v8);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297849EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_297804560(a3);
  *v5 = a1;
  v5[1] = a2;
  return nullsub_1(v5, v6);
}

uint64_t sub_297849EE8(uint64_t a1, uint64_t a2)
{
  *(j_j_nullsub_1(a1, &v4) + 8) = a2;
  *(a1 + 16) = sub_297849F30();
  return a1;
}

uint64_t sub_297849F34(uint64_t a1, unint64_t a2)
{
  if (sub_297849F7C() < a2)
  {
    sub_29780339C();
  }

  return sub_297849F80(a2);
}

void *sub_297849F98(void *a1)
{
  v2 = sub_297849440(a1, 0);
  *v2 = &unk_2A1E55378;
  sub_29784A00C((v2 + 3), &v8);
  sub_297849EE0(a1, v3);
  v5 = sub_297849EE0(a1, v4);
  sub_29784A010(&v7, v5);
  return a1;
}

void sub_29784A018()
{
  v0 = sub_29784A014();

  j__free(v0);
}

uint64_t sub_29784A044(uint64_t a1, uint64_t a2)
{
  v3 = sub_297849EE0(a1, a2);
  j_j_nullsub_1(&v8, v3);
  sub_29784A00C(a1 + 24, v4);
  v6 = nullsub_1(a1, v5);
  return sub_297809C98(&v8, v6, 1);
}

void sub_29784A0D4(std::__shared_weak_count *a1, uint64_t a2)
{
  a1->__vftable = &unk_2A1E55378;
  sub_29784A00C(&a1[1], a2);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

uint64_t sub_29784A128(uint64_t a1, uint64_t a2)
{
  sub_297849EE0(a1, a2);
  v4 = sub_297849EE0(a1, v3);
  return sub_29784A168(&v6, v4);
}

uint64_t sub_29784A180(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29784A1C0(&v3);
  return a1;
}

uint64_t *sub_29784A1C0(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29784A230(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_29780C31C(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

uint64_t sub_29784A230(uint64_t *a1)
{
  v2 = sub_29780AAE8(a1);
  sub_29784A27C(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_29784A27C(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_29784A2D8(v3, v5))
  {
    i -= 16;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_29784A2E8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29784A390(a1, a2);
  }

  else
  {
    sub_29784A328(a1, a2);
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_29784A328(uint64_t a1, uint64_t a2)
{
  sub_29780C154(v7, a1, 1);
  v5 = nullsub_1(v8, v4);
  sub_29784A434(a1, v5, a2);
  v8 += 16;
  return sub_297809E88(v7);
}

uint64_t sub_29784A390(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29780AAE8(a1);
  v5 = sub_29780C17C(a1, v4 + 1);
  v6 = sub_29780AAE8(a1);
  sub_29780C1F4(v11, v5, v6, a1);
  v8 = nullsub_1(v12, v7);
  sub_29784A434(a1, v8, a2);
  v12 += 16;
  sub_29784A44C(a1, v11);
  v9 = a1[1];
  sub_29784A530(v11);
  return v9;
}

uint64_t sub_29784A44C(uint64_t *a1, uint64_t *a2)
{
  nullsub_1(a1, a2);
  v4 = a2[1] + *a1 - a1[1];
  v6 = nullsub_1(*a1, v5);
  v8 = nullsub_1(a1[1], v7);
  v10 = nullsub_1(v4, v9);
  sub_29784A534(a1, v6, v8, v10);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  v11 = sub_29780AAE8(a1);

  return nullsub_1(a1, v11);
}

uint64_t sub_29784A534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_29784A5EC(a1, v10, v9);
      v9 += 16;
      v8 = v16 + 16;
      v16 += 16;
    }

    while (v9 != a3);
  }

  sub_29780CE64(&v14);
  sub_29784A5F0(a1, a2, a3);
  return j_nullsub_1(&v14, v11);
}

uint64_t sub_29784A5F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = nullsub_1(v4, a2);
      result = sub_29784A2D8(v5, v6);
      v4 += 16;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t *sub_29784A660(uint64_t *a1)
{
  sub_29784A6B4(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29780C460(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_29784A6C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 16;
      v6 = nullsub_1(v2 - 16, a2);
      result = sub_29784A2D8(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_29784A730(void *a1, uint64_t a2)
{
  v4 = sub_29780AAE8(a1);
  sub_29784A27C(a1, a2);

  return nullsub_1(a1, v4);
}

uint64_t *sub_29784A790(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_29784A80C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = a2;
  if (v2 == 1)
  {
    return sub_2977FF77C(a2);
  }

  return result;
}

unint64_t sub_29784A82C(uint64_t *a1, unsigned int a2)
{
  v3 = (sub_2977FB7B8(*a1) + 12 * a2);
  if ((v3 + 9) > sub_2977FD5B0(*a1))
  {
    return 0;
  }

  v5 = sub_29784A80C(a1, v3[6]);
  v6 = sub_29784A80C(a1, v3[7]);
  sub_29784A80C(a1, v3[8]);
  return v5 | (v6 << 32);
}

unint64_t sub_29784A8C4(uint64_t *a1, int a2)
{
  v4 = sub_29784A824(a1);
  v5 = sub_29784A80C(a1, *(v4 + 8)) + a2;
  if (sub_2978059FC(*a1) <= v5)
  {
    return 0;
  }

  else
  {
    return sub_2977FB7B8(*a1) + v5;
  }
}

uint64_t sub_29784A920(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29784A9BC(v13);
  v11 = sub_29784A9C0(a1, a2, a3, v13);
  v12 = v8;
  if (sub_297806914(&v11))
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_29782E354(a4, v11, v12, 0, 1);
  }

  sub_297801F60(v13);
  return v9;
}

uint64_t sub_29784A9C0(uint64_t *a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v31[0] = a2;
  v31[1] = a3;
  v8 = sub_29784A824(a1);
  v9 = sub_29784A80C(a1, *(v8 + 16));
  v10 = v9 - 1;
  if ((v9 & (v9 - 1)) != 0 || (v11 = sub_29784AB70(a2, a3), v13 = sub_29784A82C(a1, v11 & v10), !v13))
  {
LABEL_8:
    sub_297804560(&v32);
    return v32;
  }

  v14 = v12;
  v15 = sub_29784A8C4(a1, v13);
  sub_2977FB7B4(&v29, v15);
  if (!sub_29780ECA4(v31, v29, v30))
  {
    v16 = v11 + 1;
    do
    {
      v13 = sub_29784A82C(a1, v16 & v10);
      if (!v13)
      {
        goto LABEL_8;
      }

      v14 = v17;
      v18 = sub_29784A8C4(a1, v13);
      sub_2977FB7B4(&v29, v18);
      ++v16;
    }

    while (!sub_29780ECA4(v31, v29, v30));
  }

  v19 = sub_29784A8C4(a1, SHIDWORD(v13));
  sub_2977FB7B4(&v29, v19);
  v20 = sub_29784A8C4(a1, v14);
  sub_2977FB7B4(v28, v20);
  sub_2977FD800(a4);
  v21 = sub_2977FB720(&v29);
  v22 = sub_2977FB728(&v29);
  sub_2977FD4F8(a4, v21, v22);
  v23 = sub_2977FB720(v28);
  v24 = sub_2977FB728(v28);
  sub_2977FD4F8(a4, v23, v24);
  v25 = sub_2977FB720(a4);
  v26 = sub_2977FD0D4(a4);
  sub_2977FB7C0(&v32, v25, v26);
  return v32;
}

uint64_t sub_29784AB70(uint64_t a1, uint64_t a2)
{
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_2977FB720(v8);
  v3 = sub_2977FB728(v8);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = v3;
  LODWORD(v5) = 0;
  do
  {
    v6 = *v2++;
    v5 = v5 + 13 * sub_29784ABE8(v6);
  }

  while (v2 != v4);
  return v5;
}

uint64_t sub_29784ABE8(unsigned __int8 a1)
{
  v2 = sub_29784AC20(a1);
  v3 = a1 + 32;
  if (!v2)
  {
    return a1;
  }

  return v3;
}

uint64_t sub_29784AC40(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (!result && a2)
  {
    if (*(a1 + 4))
    {
      result = (*(*a2 + 16))(a2, *(a1 + 4));
      *(a1 + 8) = result;
    }
  }

  return result;
}

uint64_t sub_29784ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *(sub_297829174(a1, a2) + 8) = a4;
  *(a1 + 16) = sub_2977FD5B0(a3);
  sub_297809B88((a1 + 24));
  sub_297809B88((a1 + 64));
  sub_297802744(a1 + 88);
  sub_297809B88((a1 + 112));
  sub_29784AD90(a1 + 136);
  sub_29784AD94(a1 + 296, 64);
  sub_29780AE44(a1 + 456);
  sub_297809B88((a1 + 464));
  sub_29785BB6C((a1 + 488), a3, a4, a5, a6, a1);
  sub_29783DC08(a1 + 992, 0);
  sub_29784AD98(a1 + 1016);
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = (*a5 & 0x10000000000000) != 0;
  return a1;
}

uint64_t sub_29784ADA0(uint64_t a1)
{
  v2 = sub_29780AAE8((a1 + 464));
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    do
    {
      v5 = *(sub_29780AAF8((a1 + 464), v4) + 8);
      if (v5)
      {
        v6 = sub_29784A7E0(v5);
        j__free(v6);
      }

      ++v4;
    }

    while (v3 != v4);
  }

  sub_29784AE70(a1 + 1016);
  sub_29783D790(a1 + 992);
  sub_29785BC4C(a1 + 488);
  sub_29780A9D8(a1 + 464);
  sub_29784AE74(a1 + 456);
  sub_29784AE78(a1 + 296);
  sub_29784AE78(a1 + 136);
  sub_29784AE7C(a1 + 112);
  std::string::~string((a1 + 88));
  sub_29784AE80(a1 + 64);
  sub_29780A9D8(a1 + 24);

  return sub_29784AE84(a1);
}

uint64_t sub_29784AE94(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  v42 = a2;
  v43 = a3;
  v6 = sub_29785F688(a1 + 488, a2, a3);
  if (!v6 && a4)
  {
    v7 = sub_29780AAE8((a1 + 24));
    v8 = v7;
    if (v7)
    {
      for (i = 0; v8 != i; ++i)
      {
        v10 = sub_29780AAF8((a1 + 24), i);
        if (sub_29784B19C(v10))
        {
          sub_297806EC8(v41);
          v11 = sub_29780AAF8((a1 + 24), i);
          v12 = sub_29784B1BC(v11);
          v13 = sub_2977FB720(v12);
          sub_2977FB7B4(&v39, v13);
          sub_297811C58(v41, v39, v40);
          sub_297811CAC(&v42, ".framework", &v39);
          sub_2978036E0(v38, &byte_2978FC3E5);
          sub_2978036E0(v37, &byte_2978FC3E5);
          sub_2978036E0(v36, &byte_2978FC3E5);
          sub_297806664(v41, &v39, v38, v37, v36);
          v14 = *(a1 + 16);
          v15 = sub_2978059B8(v41);
          v17 = sub_29782DFB8(v14, v15, v16, 1);
          if (v17)
          {
            v18 = v17;
            v19 = sub_29780AAF8((a1 + 24), i);
            v20 = sub_29784B1F0(v19) != 0;
            v21 = sub_29784B1FC(a1, v42, v43, v18, v20);
            if (v21)
            {
              goto LABEL_19;
            }
          }

          sub_297801F60(v41);
        }

        v22 = sub_29780AAF8((a1 + 24), i);
        if (sub_29784B2D8(v22))
        {
          v23 = sub_29780AAF8((a1 + 24), i);
          v24 = sub_29784B2F8(v23);
          v25 = sub_29780AAF8((a1 + 24), i);
          v26 = sub_29784B3F4(v25);
          if (sub_29784B318(a1, v26, v24, 0) == 1)
          {
            v27 = sub_29785F688(a1 + 488, v42, v43);
            if (v27)
            {
              return v27;
            }
          }

          sub_297806EC8(v41);
          v28 = sub_29780AAF8((a1 + 24), i);
          v29 = sub_29784B3F4(v28);
          v30 = sub_2977FB720(v29);
          sub_2977FB7B4(&v39, v30);
          sub_29784B428(v41, v39, v40);
          sub_2978036E8(&v39, &v42);
          sub_2978036E0(v38, &byte_2978FC3E5);
          sub_2978036E0(v37, &byte_2978FC3E5);
          sub_2978036E0(v36, &byte_2978FC3E5);
          sub_297806664(v41, &v39, v38, v37, v36);
          v31 = sub_2978059B8(v41);
          if (sub_29784B478(a1, v31, v32, v24, 0) == 1 && (v21 = sub_29785F688(a1 + 488, v42, v43)) != 0 || (v33 = sub_29780AAF8((a1 + 24), i), (sub_29784B4EC(v33) & 1) == 0) && (v34 = sub_29780AAF8((a1 + 24), i), sub_29784B4F8(a1, v34), (v21 = sub_29785F688(a1 + 488, v42, v43)) != 0))
          {
LABEL_19:
            v6 = v21;
            sub_297801F60(v41);
            return v6;
          }

          sub_297801F60(v41);
        }
      }
    }

    return 0;
  }

  return v6;
}

uint64_t sub_29784B1BC(uint64_t a1)
{
  if (sub_29784B19C(a1))
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

const std::string *sub_29784B1FC(uint64_t a1, const void *a2, size_t a3, void *a4, uint64_t a5)
{
  result = sub_29785F688(a1 + 488, a2, a3);
  if (!result)
  {
    v11 = sub_29784B318(a1, a4, a5, 1);
    result = 0;
    if (v11)
    {
      if (v11 != 2)
      {
        v12 = (a1 + 488);
        if (v11 == 1)
        {

          return sub_29785F688(v12, a2, a3);
        }

        else
        {

          return sub_29785F6F0(v12, a2, a3, a4, a5, 0);
        }
      }
    }
  }

  return result;
}

uint64_t sub_29784B318(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = a2;
  sub_29783FF6C(a1 + 992, &v13, v12);
  sub_29783FC30(a1 + 992, v10);
  sub_29782DA30(v11, v10);
  if (sub_29782EE3C(v12, v11))
  {
    if (*(sub_2977FB720(v12) + 8))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v8 = sub_29784DA74(a1, v13, a4);
    if (v8)
    {
      result = sub_29784D80C(a1, v8, a3);
      if (result == 1)
      {
        v9 = sub_29784D7EC(a1 + 992, &v13);
        result = 1;
        *v9 = 1;
      }
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t sub_29784B3F4(uint64_t a1)
{
  if (sub_29784B2D8(a1))
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

const void **sub_29784B428(const void **a1, uint64_t a2, uint64_t a3)
{
  sub_2977FD800(a1);

  return sub_297811C58(a1, a2, a3);
}

uint64_t sub_29784B478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = sub_29782DFB8(*(a1 + 16), a2, a3, 1);
  if (!v8)
  {
    return 2;
  }

  return sub_29784B318(a1, v8, a4, a5);
}

uint64_t sub_29784B4F8(uint64_t a1, uint64_t a2)
{
  result = sub_29784B4EC(a2);
  if ((result & 1) == 0)
  {
    sub_2978055DC(v17);
    sub_297806EC8(v16);
    v5 = sub_29784B3F4(a2);
    v6 = sub_2977FB720(v5);
    sub_2978036E0(v15, v6);
    sub_297806AF4(v15, v16);
    v13[0] = sub_297801F10(v16);
    v13[1] = v7;
    sub_2978036E8(v15, v13);
    sub_29784964C(&v14, v15, v17);
    sub_29784966C(v13);
    if (sub_297849650(&v14, v13))
    {
      do
      {
        if (sub_297805430(v17))
        {
          break;
        }

        v8 = sub_297849674(&v14);
        v10 = nullsub_1(v8, v9);
        sub_2978044E8(v15, v10);
        v11 = sub_29784B2F8(a2);
        v12 = sub_29784B19C(a2);
        sub_29784B478(a1, v15[0], v15[1], v11, v12);
        sub_297849AC4(&v14, v17);
      }

      while ((sub_297849650(&v14, v13) & 1) != 0);
    }

    sub_297849670(v13);
    sub_297849670(&v14);
    sub_29784DD2C(a2, 1);
    return sub_297801F60(v16);
  }

  return result;
}

uint64_t sub_29784B638(uint64_t a1)
{
  if (sub_29784B2D8(a1))
  {
    v2 = sub_29784B3F4(a1);
LABEL_5:

    return sub_2977FB720(v2);
  }

  if (sub_29784B19C(a1))
  {
    v2 = sub_29784B1BC(a1);
    goto LABEL_5;
  }

  v4 = sub_29784B6B4(a1);

  return sub_29784A7E4(v4);
}

uint64_t sub_29784B6B4(uint64_t a1)
{
  if (sub_29784DC5C(a1))
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29784B6E8(uint64_t a1, uint64_t *a2, uint64_t a3, const void **a4, const void **a5, const void **a6, _BYTE *a7, _BYTE *a8, const void **a9)
{
  *a7 = 0;
  *a8 = 0;
  sub_29784A9BC(v54);
  if (sub_29784B2D8(a1))
  {
    v17 = sub_29784B3F4(a1);
    v18 = sub_2977FB720(v17);
    sub_2977FB7B4(v49, v18);
    sub_29784B428(v54, v49[0], v49[1]);
    sub_2978036E8(v49, a2);
    sub_2978036E0(&v53, &byte_2978FC3E5);
    sub_2978036E0(&v51, &byte_2978FC3E5);
    sub_2978036E0(v50, &byte_2978FC3E5);
    sub_297806664(v54, v49, &v53, &v51, v50);
    if (a4)
    {
      v19 = sub_29784B3F4(a1);
      v20 = sub_2977FB720(v19);
      sub_2977FB7B4(v49, v20);
      sub_2977FD800(a4);
      v21 = sub_2977FB720(v49);
      v22 = sub_2977FB728(v49);
      sub_2977FD4F8(a4, v21, v22);
    }

    if (a5)
    {
      sub_2977FD800(a5);
      v23 = sub_2977FB720(a2);
      v24 = sub_2977FB728(a2);
      sub_2977FD4F8(a5, v23, v24);
    }

    v25 = sub_297801F10(v54);
    v27 = v26;
    v28 = sub_29784B3F4(a1);
    v29 = sub_29784B2F8(a1);
    v30 = sub_29784BA58(a3, v25, v27, v28, v29, a6);
    goto LABEL_9;
  }

  if (sub_29784B19C(a1))
  {
    v30 = sub_29784BB54(a1, *a2, a2[1], a3, a4, a5, a6, a7);
LABEL_9:
    v31 = v30;
    goto LABEL_21;
  }

  v32 = sub_29784B6B4(a1);
  sub_29784A9BC(v49);
  v51 = sub_29784A9C0(v32, *a2, a2[1], v49);
  v52 = v33;
  if (sub_297806914(&v51))
  {
    v31 = 0;
  }

  else
  {
    sub_2978036E8(&v53, &v51);
    if (sub_297806FE8(&v53))
    {
      sub_2977FD800(a9);
      v34 = sub_2977FB720(&v51);
      v35 = sub_2977FB728(&v51);
      sub_2977FD4F8(a9, v34, v35);
      v36 = sub_2977FB720(a9);
      v37 = sub_2977FD0D4(a9);
      sub_2977FB7C0(&v53, v36, v37);
      *a2 = v53;
      *a8 = 1;
      v38 = *a2;
      v39 = a2[1];
      v40 = sub_2977FD5B0(a3);
      v41 = sub_29784A920(v32, v38, v39, v40);
    }

    else
    {
      v42 = sub_2977FD5B0(a3);
      v41 = sub_29782E354(v42, v51, v52, 0, 1);
    }

    v31 = v41;
    if (v41)
    {
      if (a4)
      {
        v43 = sub_29784B638(a1);
        sub_2977FB7B4(&v53, v43);
        sub_2977FD800(a4);
        v44 = sub_2977FB720(&v53);
        v45 = sub_2977FB728(&v53);
        sub_2977FD4F8(a4, v44, v45);
      }

      if (a5)
      {
        sub_2977FD800(a5);
        v46 = sub_2977FB720(a2);
        v47 = sub_2977FB728(a2);
        sub_2977FD4F8(a5, v46, v47);
      }
    }
  }

  sub_297801F60(v49);
LABEL_21:
  sub_297801F60(v54);
  return v31;
}

uint64_t sub_29784BA58(uint64_t a1, const void *a2, size_t a3, void *a4, uint64_t a5, const void **a6)
{
  sub_29784D678(a1, a2, a3, a4, a5);
  v12 = sub_2977FD5B0(a1);
  if (a6)
  {
    v13 = sub_29782E354(v12, a2, a3, 0, 1);
    if (v13)
    {
      *a6 = sub_29784C1AC(a1, v13);
      if (!sub_29784DD58(a6, v14))
      {
        if (sub_29784D678(a1, a2, a3, a4, a5))
        {
          *a6 = sub_29784C1AC(a1, v13);
        }
      }
    }

    return v13;
  }

  else
  {

    return sub_29782E354(v12, a2, a3, 1, 1);
  }
}

uint64_t sub_29784BB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6, const void **a7, _BYTE *a8)
{
  v64 = *MEMORY[0x29EDCA608];
  v61[0] = a2;
  v61[1] = a3;
  v14 = sub_2977FD5B0(a4);
  v15 = sub_2978044F0(v61, 0x2Fu, 0);
  if (v15 != -1)
  {
    v16 = v15;
    v17 = sub_297805EA4(v61, 0, v15);
    v19 = sub_29784C040(a4, v17, v18);
    if (!*v19 || (v20 = *v19, v20 == sub_29784B1BC(a1)))
    {
      sub_29784A9BC(v60);
      v22 = sub_29784B1BC(a1);
      v23 = sub_2977FB720(v22);
      sub_2977FB7B4(&v62, v23);
      sub_297811C58(v60, v62, v63);
      if (sub_297806904(v60) || *sub_29784C06C(v60) != 47)
      {
        LOBYTE(v62) = 47;
        sub_2977FCD50(v60, &v62);
      }

      v24 = sub_2977FB720(v61);
      sub_2977FB7C0(v59, v24, v16);
      sub_297811C58(v60, v59[0], v59[1]);
      sub_2977FB7B4(&v62, ".framework/");
      sub_297811C58(v60, v62, v63);
      if (!*v19)
      {
        sub_29784C088(a4);
        v44 = sub_297801F10(v60);
        if (!sub_29782DFB8(v14, v44, v45, 1))
        {
          v21 = 0;
LABEL_33:
          sub_297801F60(v60);
          goto LABEL_34;
        }

        *v19 = sub_29784B1BC(a1);
        if (!sub_29784B1F0(a1))
        {
          sub_29784C098(&v62, v60);
          sub_2977FB7B4(&v57, ".system_framework");
          sub_297811C58(&v62, v57, v58);
          v55 = sub_297801F10(&v62);
          v56 = v46;
          sub_2978036E8(&v57, &v55);
          if (sub_29780871C(&v57))
          {
            *(v19 + 8) = 1;
          }

          sub_297801F60(&v62);
        }
      }

      *a8 = *(v19 + 8);
      if (a6)
      {
        sub_2977FD800(a6);
        v25 = sub_2977FB720(v61) + v16;
        v26 = sub_2977FB728(v61);
        sub_2977FD4F8(a6, (v25 + 1), v26);
      }

      v27 = sub_2977FD0D4(v60);
      sub_2977FB7B4(&v62, "Headers/");
      sub_297811C58(v60, v62, v63);
      if (a5)
      {
        sub_2977FD800(a5);
        v28 = sub_2977FB720(v60);
        v29 = sub_2977FB7B8(v60);
        sub_2977FD4F8(a5, v28, (v29 - 1));
      }

      v30 = sub_2977FB720(v61) + v16;
      v31 = sub_2977FB728(v61);
      sub_29781295C(v60, (v30 + 1), v31);
      v32 = sub_297801F10(v60);
      v21 = sub_29782E354(v14, v32, v33, a7 == 0, 1);
      if (!v21)
      {
        v34 = sub_2977FB720(v60);
        sub_297817464(v60, v34 + v27, "Private", "");
        if (a5)
        {
          v35 = sub_2977FB720(a5);
          sub_297817464(a5, v35 + v27, "Private", "");
        }

        v36 = sub_297801F10(v60);
        v21 = sub_29782E354(v14, v36, v37, a7 == 0, 1);
      }

      if (a7 && v21)
      {
        v38 = sub_29783CFFC(v21);
        v39 = sub_2977FB720(v38);
        sub_2977FB7B4(&v57, v39);
        while (1)
        {
          if (!sub_29782DFB8(v14, v57, v58, 1))
          {
LABEL_23:
            *a7 = sub_29784C1AC(a4, v21);
            goto LABEL_33;
          }

          v40 = sub_297806CC0(v57, v58);
          v42 = v41;
          sub_2977FB7B4(&v62, ".framework");
          if (sub_297804D28(v40, v42, v62, v63))
          {
            break;
          }

          v57 = sub_297806980(v57, v58);
          v58 = v43;
          if (sub_297806914(&v57))
          {
            goto LABEL_23;
          }
        }

        sub_29784C09C(&v62);
        v47 = sub_29784C0A0(v14, v57, v58, &v62);
        v48 = sub_2977FB720(v47);
        sub_2977FB7B4(&v55, v48);
        v49 = sub_297806BE8(v55, v56);
        v51 = v50;
        v52 = sub_29784B1F0(a1) != 0;
        if (sub_29784B1FC(a4, v49, v51, v47, v52))
        {
          *a7 = sub_29784C1AC(a4, v21);
        }

        sub_29784C200(&v62);
      }

      goto LABEL_33;
    }
  }

  v21 = 0;
LABEL_34:
  v53 = *MEMORY[0x29EDCA608];
  return v21;
}

uint64_t sub_29784C040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29784D30C(a1 + 296, a2, a3);

  return sub_297819E7C(v3);
}

void *sub_29784C0A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_29782DFB8(a1, a2, a3, 1);
  v7 = sub_29782EC8C(a1, v6);
  v20 = sub_297806980(v7, v8);
  for (i = v9; !sub_297806914(&v20); i = v16)
  {
    v10 = sub_29782DFB8(a1, v20, i, 1);
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = sub_297806CC0(v20, i);
    v14 = v13;
    sub_2977FB7B4(&v19, ".framework");
    if (sub_297804D28(v12, v14, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_))
    {
      v18[0] = sub_297806BE8(v20, i);
      v18[1] = v15;
      sub_297801F5C(v18, &v19);
      sub_29784DDA8(a4, &v19);
      std::string::~string(&v19);
      v6 = v11;
    }

    v20 = sub_297806980(v20, i);
  }

  return v6;
}

const void *sub_29784C1AC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1184))
  {
    sub_29784D808(a1, a2);
  }

  return sub_29785C484((a1 + 488), a2, 0);
}

uint64_t sub_29784C20C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, const void **a11, const void **a12, const void **a13, char a14)
{
  *&v102[0] = a2;
  *(&v102[0] + 1) = a3;
  v101[0] = a9;
  v101[1] = a10;
  v19 = sub_2977FB720(a1);
  if (!sub_29784CA78(v19 + 632))
  {
    v20 = sub_2977FB720(a1);
    *&v97[0] = sub_29784CA80(v20 + 632, v21);
    v22 = sub_2977FB720(a1);
    v98 = sub_29784CAB8(v22 + 632, v23);
    while (sub_29780852C(v97, &v98))
    {
      v24 = *(a1 + 16);
      v25 = sub_2977FB720(v97);
      sub_2978044E8(v99, v25);
      v26 = sub_29782E354(v24, *&v99[0], *(&v99[0] + 1), 0, 1);
      if (v26)
      {
        sub_29784CAF0(a1, v26, 0);
      }

      sub_2978297A4(v97);
    }

    v27 = sub_2977FB720(a1);
    sub_29784CB10((v27 + 632));
  }

  if (a13)
  {
    sub_29784CB48(v99);
    *a13 = *&v99[0];
  }

  sub_2978036E8(v99, v102);
  if (!sub_297806F84(v99))
  {
    v95 = a4;
    sub_29784CB48(&v100);
    v28 = 0;
    v92 = a6;
    v94 = a5;
    if (!sub_297806914(v101))
    {
      v31 = a12;
      if (a5)
      {
        goto LABEL_26;
      }

      if (*(a1 + 56))
      {
        v28 = 0;
        goto LABEL_26;
      }

      sub_29784A9BC(v99);
      v32 = sub_2977FB720(v101);
      v33 = sub_29784CB4C(v101);
      if (v32 == v33)
      {
LABEL_24:
        sub_297801F60(v99);
        v28 = 0;
        a6 = v92;
        a5 = v94;
      }

      else
      {
        v34 = v33;
        v35 = (v32 + 8);
        v36 = 1;
        while (1)
        {
          v38 = v35 - 1;
          v37 = *(v35 - 1);
          v39 = sub_2977FB720(*v35);
          sub_2977FB7B4(v97, v39);
          sub_29784B428(v99, *&v97[0], *(&v97[0] + 1));
          LOBYTE(v97[0]) = 47;
          sub_2977FCD50(v99, v97);
          v40 = sub_2977FB720(v102);
          v41 = sub_2977FB728(v102);
          sub_29781295C(v99, v40, v41);
          v42 = (*sub_29784CB58(a1, v37) & 0xC) != 0;
          v43 = sub_297801F10(v99);
          v45 = sub_29784BA58(a1, v43, v44, *v35, v42, a13);
          if (v45)
          {
            break;
          }

          v36 = 0;
          v35 += 2;
          if (v38 + 2 == v34)
          {
            goto LABEL_24;
          }
        }

        v28 = v45;
        v70 = sub_29784CB58(a1, v37);
        v71 = *v70;
        v97[0] = *(v70 + 1);
        v72 = sub_29784CB58(a1, v28);
        *v72 = *v72 & 0xFBF3 | v71 & 0x40C;
        *(v72 + 1) = v97[0];
        if (a11)
        {
          v73 = sub_2977FB720(*v35);
          sub_2977FB7B4(&v98, v73);
          sub_2977FD800(a11);
          v74 = sub_2977FB720(&v98);
          v75 = sub_2977FB728(&v98);
          sub_2977FD4F8(a11, v74, v75);
        }

        a6 = v92;
        a5 = v94;
        if (a12)
        {
          sub_2977FD800(a12);
          v76 = sub_2977FB720(v102);
          v77 = sub_2977FB728(v102);
          sub_2977FD4F8(a12, v76, v77);
        }

        if (v36)
        {
          sub_297801F60(v99);
          return v28;
        }

        v84 = sub_29784CC2C(*(a1 + 8), 0x323u, v95);
        v85 = v84;
        if (!a13 || v84)
        {
          sub_297801F60(v99);
          v31 = a12;
          if (v85)
          {
            return v28;
          }

LABEL_26:
          *a7 = 0;
          if (a5)
          {
            LODWORD(v46) = *(a1 + 48);
          }

          else
          {
            LODWORD(v46) = 0;
          }

          v93 = a7;
          if (a6)
          {
            v46 = (a6 - sub_29780AAF8((a1 + 24), 0)) >> 4;
          }

          v47 = sub_29784CC7C(a1 + 136, *&v102[0], *(&v102[0] + 1));
          v48 = sub_297819E7C(v47);
          v49 = v48;
          if (a14)
          {
            v50 = v46 + 1;
          }

          else
          {
            v50 = v46 + 1;
            if (*v48 == v46 + 1)
            {
              LODWORD(v46) = *(v48 + 4);
              v51 = *(v48 + 8);
              if (v51)
              {
                sub_2977FB7B4(v99, v51);
                v102[0] = v99[0];
              }

LABEL_37:
              sub_297811C54(v97);
              if (sub_29780AAE8((a1 + 24)) == v46)
              {
LABEL_43:
                if (!sub_297806914(v101) && (v94 & 1) == 0 && sub_2978044F0(v102, 0x2Fu, 0) == -1)
                {
                  v59 = sub_2977FB720(v101);
                  v60 = sub_29784CB58(a1, *v59);
                  if ((*v60 & 0x400) != 0)
                  {
                    v78 = v60;
                    sub_297806EC8(v99);
                    sub_297811C58(v99, *(v78 + 2), *(v78 + 3));
                    sub_29784CE18(v99, 47);
                    sub_297811C58(v99, *&v102[0], *(&v102[0] + 1));
                    v79 = sub_2978059B8(v99);
                    v81 = v80;
                    v82 = sub_2977FB720(v101);
                    sub_29784CE50(&v98, v82);
                    v83 = sub_29784C20C(a1, v79, v81, v95, 1, v92, v93);
                    if (sub_29784CDB0(*(a1 + 8), v28, v83, v95))
                    {
                      if (a13)
                      {
                        *a13 = v100;
                      }
                    }

                    else
                    {
                      v86 = sub_29784CC7C(a1 + 136, *&v102[0], *(&v102[0] + 1));
                      v87 = sub_297819E7C(v86);
                      v88 = sub_2978059B8(v99);
                      v90 = sub_29784CC7C(a1 + 136, v88, v89);
                      *(v87 + 4) = *(sub_297819E7C(v90) + 4);
                      v28 = v83;
                    }

                    sub_297801F60(v99);
                    goto LABEL_77;
                  }
                }

                if (sub_29784CDB0(*(a1 + 8), v28, 0, v95))
                {
                  goto LABEL_60;
                }

                v28 = 0;
                *(v49 + 4) = sub_29780AAE8((a1 + 24));
              }

              else
              {
                v52 = v46;
                while (1)
                {
                  LOBYTE(v98) = 0;
                  v96 = 0;
                  v53 = sub_29780AAF8((a1 + 24), v52);
                  v54 = sub_29784B6E8(v53, v102, a1, a11, v31, a13, &v98, &v96, v97);
                  if (v96 == 1)
                  {
                    v56 = *(&v102[0] + 1);
                    v55 = *&v102[0];
                    v57 = sub_297829064(a1 + 136);
                    v58 = v55;
                    v31 = a12;
                    *(v49 + 8) = sub_29784CCDC(v58, v56, v57);
                  }

                  if (v54)
                  {
                    break;
                  }

                  LODWORD(v46) = v46 + 1;
                  v52 = v46;
                  if (sub_29780AAE8((a1 + 24)) == v46)
                  {
                    goto LABEL_43;
                  }
                }

                *v93 = sub_29780AAF8((a1 + 24), v52);
                v61 = sub_29784CB58(a1, v54);
                v62 = sub_29784B1F0(*v93);
                v63 = *v61;
                *v61 = *v61 & 0xFFF3 | (4 * (v62 & 3));
                if ((v62 & 3) == 0 && v98 == 1)
                {
                  *v61 = v63 & 0xFFF3 | 4;
                }

                v64 = sub_29782D8A4((a1 + 64));
                while (v64)
                {
                  v65 = sub_29782D994((a1 + 64), --v64);
                  sub_2978044E8(v99, v65);
                  if (sub_297807C54(v102, *&v99[0], *(&v99[0] + 1)))
                  {
                    *v61 = *v61 & 0xFFF3 | (4 * (*(sub_29782D994((a1 + 64), v64) + 24) & 1));
                    break;
                  }
                }

                if (sub_29784CD54(*v93))
                {
                  v66 = sub_2978044F0(v102, 0x2Fu, 0);
                  if (v66 != -1)
                  {
                    v67 = v66;
                    *v61 |= 0x400u;
                    v68 = sub_2977FB720(v102);
                    sub_2977FB7C0(v99, v68, v67);
                    *(v61 + 2) = sub_29784CD84(a1, *&v99[0], *(&v99[0] + 1));
                    *(v61 + 3) = v69;
                  }
                }

                if (sub_29784CDB0(*(a1 + 8), v28, v54, v95))
                {
LABEL_60:
                  if (a13)
                  {
                    *a13 = v100;
                  }

                  goto LABEL_77;
                }

                *(v49 + 4) = v46;
                v28 = v54;
              }

LABEL_77:
              sub_297801F60(v97);
              return v28;
            }
          }

          sub_29784CCD0(v48, v50);
          goto LABEL_37;
        }

        v100 = *a13;
        sub_29784CB48(&v98);
        *a13 = v98;
        sub_297801F60(v99);
      }
    }

    v31 = a12;
    goto LABEL_26;
  }

  v28 = 0;
  *a7 = 0;
  if (!a6)
  {
    if (a11)
    {
      sub_2977FD800(a11);
    }

    if (a12)
    {
      sub_2977FD800(a12);
      v29 = sub_2977FB720(v102);
      v30 = sub_2977FB728(v102);
      sub_2977FD4F8(a12, v29, v30);
    }

    return sub_29782E354(*(a1 + 16), *&v102[0], *(&v102[0] + 1), 1, 1);
  }

  return v28;
}