uint64_t sub_21495774C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x6567616D69;
  v7 = 0xE600000000000000;
  v8 = 0x6C6F626D7973;
  if (a1 != 4)
  {
    v8 = 0x726F6C6F63;
    v7 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (a1 != 1)
  {
    v10 = 0x65546C6961746564;
    v9 = 0xEA00000000007478;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE500000000000000;
      v14 = 1734438249;
LABEL_26:
      if (v11 != (v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6C6F626D7973)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x726F6C6F63)
      {
LABEL_33:
        v15 = sub_214990080();
        goto LABEL_34;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v13 = 0xEA00000000007478;
        if (v11 != 0x65546C6961746564)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      v13 = 0xE500000000000000;
      v14 = 1819568500;
      goto LABEL_26;
    }

    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_33;
    }
  }

LABEL_31:
  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v15 = 1;
LABEL_34:

  return v15 & 1;
}

uint64_t sub_214957908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6C6562616CLL;
    }

    else
    {
      v3 = 0x74616E6974736564;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xEB000000006E6F69;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6576697463417369;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (a2 != 2)
  {
    v8 = 0x74616E6974736564;
    v7 = 0xEB000000006E6F69;
  }

  if (a2)
  {
    v6 = 0x6576697463417369;
    v5 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_214957A4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  v5 = 0x697461676976616ELL;
  v6 = 0xEE006B6E694C6E6FLL;
  if (a1 != 5)
  {
    v5 = 0x6C65656877;
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x657474656C6170;
  if (a1 != 3)
  {
    v8 = 0x65746E656D676573;
    v7 = 0xE900000000000064;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656E696C6E69;
  if (a1 != 1)
  {
    v10 = 1970169197;
    v9 = 0xE400000000000000;
  }

  if (!a1)
  {
    v10 = 0x6974616D6F747561;
    v9 = 0xE900000000000063;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x656E696C6E69)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1970169197)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEE006B6E694C6E6FLL;
        if (v11 != 0x697461676976616ELL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x6C65656877)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x657474656C6170)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x65746E656D676573;
    v2 = 0xE900000000000064;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_214990080();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_214957C60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x736D657469;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xD000000000000016;
    v13 = 0x80000002149A0400;
    if (a1 != 2)
    {
      v12 = 0xD000000000000018;
      v13 = 0x80000002149A0420;
    }

    v14 = 0x6C69616D65;
    if (!a1)
    {
      v14 = 0x736D657469;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }

    if (v3 <= 1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v4 = 0x7365636375536E6FLL;
    v5 = 0xE900000000000073;
    v6 = 0xE700000000000000;
    v7 = 0x726F7272456E6FLL;
    if (a1 != 7)
    {
      v7 = 0x656C706D6F436E6FLL;
      v6 = 0xEC0000006E6F6974;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0xD000000000000016;
    v9 = 0x80000002149A0440;
    if (a1 != 4)
    {
      v8 = 0xD00000000000001ALL;
      v9 = 0x80000002149A0460;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xE900000000000073;
        if (v10 != 0x7365636375536E6FLL)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      if (a2 == 7)
      {
        v15 = 0xE700000000000000;
        if (v10 != 0x726F7272456E6FLL)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v2 = 0x656C706D6F436E6FLL;
      v15 = 0xEC0000006E6F6974;
      goto LABEL_45;
    }

    if (a2 != 4)
    {
      v15 = 0x80000002149A0460;
      if (v10 != 0xD00000000000001ALL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v16 = "delayUnsubscribeLinkMs";
LABEL_38:
    v15 = (v16 - 32) | 0x8000000000000000;
    if (v10 != 0xD000000000000016)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v15 = 0x80000002149A0420;
      if (v10 != 0xD000000000000018)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v16 = "delayPostUnsubscribeMs";
    goto LABEL_38;
  }

  v15 = 0xE500000000000000;
  if (a2)
  {
    if (v10 != 0x6C69616D65)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (v10 != v2)
  {
LABEL_49:
    v17 = sub_214990080();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_214957F28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x656C706D6F436E6FLL;
  v5 = 0xEC0000006E6F6974;
  if (a1 != 5)
  {
    v4 = 2036625250;
    v5 = 0xE400000000000000;
  }

  v6 = 0x7365636375536E6FLL;
  v7 = 0xE900000000000073;
  if (a1 != 3)
  {
    v6 = 0x726F7272456E6FLL;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x646F6874656DLL;
  if (a1 != 1)
  {
    v9 = 0x6D6F437469617761;
    v8 = 0xEF6E6F6974656C70;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7107189;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x646F6874656DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEF6E6F6974656C70;
        if (v10 != 0x6D6F437469617761)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7107189)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x656C706D6F436E6FLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 2036625250)
      {
LABEL_39:
        v13 = sub_214990080();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE900000000000073;
    if (v10 != 0x7365636375536E6FLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x726F7272456E6FLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_214958168(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    v2 = 0xE200000000000000;
    v3 = 25705;
    v4 = 0xE300000000000000;
    v5 = 7107189;
    v6 = a1 == 0;
  }

  else
  {
    v2 = 0xE600000000000000;
    v3 = 0x646F6874656DLL;
    v4 = 0xE400000000000000;
    v5 = 2036625250;
    if (a1 != 3)
    {
      v5 = 0xD000000000000011;
      v4 = 0x80000002149A04B0;
    }

    v6 = a1 == 2;
  }

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 7107189;
    }

    else
    {
      v13 = 25705;
    }

    if (a2)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xE200000000000000;
    }

    if (v7 != v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v9 = 2036625250;
    v10 = 0x80000002149A04B0;
    if (a2 == 3)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v11 = 0x646F6874656DLL;
    }

    else
    {
      v11 = v9;
    }

    if (a2 == 2)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = v10;
    }

    if (v7 != v11)
    {
      goto LABEL_33;
    }
  }

  if (v8 != v12)
  {
LABEL_33:
    v14 = sub_214990080();
    goto LABEL_34;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_2149582BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x52474F52505F4E49;
    }

    else
    {
      v3 = 0x474E49444E4550;
    }

    if (v2)
    {
      v4 = 0xEB00000000535345;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x524F525245;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x454C54544F524854;
    }

    else
    {
      v3 = 0x4554454C504D4F43;
    }

    v4 = 0xE900000000000044;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x52474F52505F4E49;
    }

    else
    {
      v8 = 0x474E49444E4550;
    }

    if (a2)
    {
      v7 = 0xEB00000000535345;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x454C54544F524854;
    if (a2 != 3)
    {
      v5 = 0x4554454C504D4F43;
    }

    if (a2 == 2)
    {
      v6 = 0x524F525245;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE900000000000044;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v7)
  {
LABEL_34:
    v9 = sub_214990080();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_214958458(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1163284301;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x47455441435F4552;
    }

    else
    {
      v4 = 0xD000000000000018;
    }

    if (v3 == 2)
    {
      v5 = 0xED0000455A49524FLL;
    }

    else
    {
      v5 = 0x80000002149A09E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4145525F4B52414DLL;
    }

    else
    {
      v4 = 1163284301;
    }

    if (v3)
    {
      v5 = 0xE900000000000044;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x47455441435F4552;
  v8 = 0x80000002149A09E0;
  if (a2 == 2)
  {
    v8 = 0xED0000455A49524FLL;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (a2)
  {
    v2 = 0x4145525F4B52414DLL;
    v6 = 0xE900000000000044;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_2149585B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x736D657469;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x736E6F6974636573;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x80000002149A0930;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D6F74737563;
    }

    else
    {
      v4 = 0x736D657469;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x736E6F6974636573;
  v8 = 0x80000002149A0930;
  if (a2 == 2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (a2)
  {
    v2 = 0x6D6F74737563;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_2149586EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4449656C646E7562;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656C797473;
    }

    else
    {
      v4 = 0x726F4D6E7261656CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1954047348;
    }

    else
    {
      v4 = 0x4449656C646E7562;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x656C797473;
  if (a2 != 2)
  {
    v8 = 0x726F4D6E7261656CLL;
    v7 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 1954047348;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_214958820(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x614E6D6574737973;
    }

    else
    {
      v5 = 25705;
    }

    if (v2)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701667182;
    if (a1 != 3)
    {
      v4 = 0xD000000000000010;
      v3 = 0x80000002149A0770;
    }

    if (a1 == 2)
    {
      v5 = 0x646F4D6567616D69;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xEE00737265696669;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x614E6D6574737973;
    }

    else
    {
      v11 = 25705;
    }

    if (a2)
    {
      v10 = 0xEA0000000000656DLL;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 1701667182;
    v8 = 0x80000002149A0770;
    if (a2 == 3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x646F4D6567616D69;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEE00737265696669;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_214990080();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_2149589B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6C69616D65;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1701667182;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6C6F686563616C70;
    }

    else
    {
      v3 = 0x646F4D6567616D69;
    }

    if (v2 == 3)
    {
      v4 = 0xEB00000000726564;
    }

    else
    {
      v4 = 0xEE00737265696669;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6C69616D65;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1701667182)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000726564;
    if (v3 != 0x6C6F686563616C70)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEE00737265696669;
    if (v3 != 0x646F4D6567616D69)
    {
LABEL_34:
      v7 = sub_214990080();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_214958B58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_214990080();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_214958D5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x80000002149A0700;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000002149A0720;
    }

    v5 = 0x80000002149A06C0;
    if (a1 != 3)
    {
      v5 = 0x80000002149A06E0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_214990080();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x80000002149A0700;
    }

    else
    {
      v10 = 0x80000002149A0720;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x80000002149A06C0;
    }

    else
    {
      v10 = 0x80000002149A06E0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_214958F34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x2065727574616546;
    v12 = 0xED00002977654E28;
    v13 = 0x6D65636E61686E45;
    v14 = 0xEB00000000746E65;
    if (a1 != 8)
    {
      v13 = 1802723668;
      v14 = 0xE400000000000000;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0x2073756F69726553;
    v16 = 0xEB00000000677542;
    if (a1 != 5)
    {
      v15 = 0x754220726568744FLL;
      v16 = 0xE900000000000067;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x7265776F50;
    v6 = 0x616D726F66726550;
    v7 = 0xEB0000000065636ELL;
    if (a1 != 3)
    {
      v6 = 0x69626173552F4955;
      v7 = 0xEC0000007974696CLL;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xD000000000000014;
    if (a1)
    {
      v3 = 0x80000002149A05E0;
    }

    else
    {
      v8 = 0x7974697275636553;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 != 5)
      {
        v19 = 0xE900000000000067;
        if (v9 != 0x754220726568744FLL)
        {
LABEL_56:
          v20 = sub_214990080();
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      v17 = 0x2073756F69726553;
      v18 = 6780226;
    }

    else
    {
      if (a2 == 7)
      {
        v19 = 0xED00002977654E28;
        if (v9 != 0x2065727574616546)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (a2 != 8)
      {
        v19 = 0xE400000000000000;
        if (v9 != 1802723668)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      v17 = 0x6D65636E61686E45;
      v18 = 7630437;
    }

LABEL_41:
    v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v17)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v19 = 0xE500000000000000;
      if (v9 != 0x7265776F50)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    if (a2 != 3)
    {
      v19 = 0xEC0000007974696CLL;
      if (v9 != 0x69626173552F4955)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v17 = 0x616D726F66726550;
    v18 = 6644590;
    goto LABEL_41;
  }

  if (a2)
  {
    v19 = 0x80000002149A05E0;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    if (v9 != 0x7974697275636553)
    {
      goto LABEL_56;
    }
  }

LABEL_54:
  if (v10 != v19)
  {
    goto LABEL_56;
  }

  v20 = 1;
LABEL_57:

  return v20 & 1;
}

uint64_t sub_214959274(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x5654656C707041;
  v6 = 0xE700000000000000;
  v7 = 0x646F50656D6F48;
  if (a1 != 4)
  {
    v7 = 6512973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (a1 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x5654656C707041)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x646F50656D6F48)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6512973)
      {
LABEL_34:
        v13 = sub_214990080();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1684099177)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6863746157)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x656E6F685069)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_214959430(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C62617369447369;
    }

    else
    {
      v4 = 0x736E6F69746361;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6964616F4C7369;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v3)
    {
      v5 = 0xE900000000000067;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x6C62617369447369;
  v8 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v7 = 0x736E6F69746361;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6E6964616F4C7369;
    v6 = 0xE900000000000067;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_214959580(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0x65546C6961746564;
    v14 = 0xEA00000000007478;
    if (a1 != 2)
    {
      v13 = 0x6D49726564616568;
      v14 = 0xEB00000000656761;
    }

    if (a1)
    {
      v12 = 0x656C746974;
      v11 = 0xE500000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E6F6974706163;
    v5 = 0x427972616D697270;
    v6 = 0xED00006E6F747475;
    if (a1 != 7)
    {
      v5 = 0x7261646E6F636573;
      v6 = 0xEF6E6F7474754279;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xE700000000000000;
    v8 = 0x746E65746E6F63;
    if (a1 != 4)
    {
      v8 = 0x4C746E65746E6F63;
      v7 = 0xED000074756F7961;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xEA00000000007478;
        if (v9 != 0x65546C6961746564)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0xEB00000000656761;
        if (v9 != 0x6D49726564616568)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a2)
    {
      v17 = 0xE500000000000000;
      if (v9 != 0x656C746974)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v17 = 0xE200000000000000;
      if (v9 != 25705)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x746E65746E6F63)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v15 = 0x4C746E65746E6F63;
      v16 = 0x74756F7961;
    }

    else
    {
      if (a2 == 6)
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x6E6F6974706163)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if (a2 != 7)
      {
        v17 = 0xEF6E6F7474754279;
        if (v9 != 0x7261646E6F636573)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v15 = 0x427972616D697270;
      v16 = 0x6E6F747475;
    }

    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v9 != v15)
    {
LABEL_51:
      v18 = sub_214990080();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v17)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_214959884(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E55;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64656E696C636544;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465747065636341;
    }

    else
    {
      v5 = 0x6564696365646E55;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656E696C636544;
  if (a2 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6465747065636341;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t static iCloudMailAssistantProviderSwift.isMailCleanupFeatureAvailable.getter()
{
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  return byte_281194E48;
}

void sub_214959A58(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_214959AA4(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_214959B34;
}

void sub_214959B34(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_214959BB0()
{
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 != 1)
  {
    return 0;
  }

  v1 = *(v0 + 64);

  v2 = sub_21494F020();

  return v2 & 1;
}

uint64_t sub_214959C34(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = sub_21498E690();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214959D04, 0, 0);
}

uint64_t sub_214959D04()
{
  if (v0[5] > 0.0)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 10);
    v2 = *(v0 + 7);
    v3 = *(v0 + 8);
    v4 = __swift_project_value_buffer(v2, qword_281194E18);
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_21498E670();
    v6 = sub_21498FBA0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 5);
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v7;
      _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] init - cacheLoadDelayInSeconds: %f", v8, 0xCu);
      MEMORY[0x216059AC0](v8, -1, -1);
    }

    v9 = *(v0 + 10);
    v10 = *(v0 + 7);
    v11 = *(v0 + 8);
    v12 = v0[5];

    v13 = (*(v11 + 8))(v9, v10);
    v14 = v12 * 1000000000.0;
    if (COERCE_UNSIGNED_INT64(v12 * 1000000000.0) >> 52 <= 0x7FE)
    {
      if (v14 <= -1.0)
      {
        __break(1u);
      }

      else if (v14 < 1.84467441e19)
      {
        v15 = v14;
        v16 = *(MEMORY[0x277D857E8] + 4);
        v17 = swift_task_alloc();
        *(v0 + 11) = v17;
        *v17 = v0;
        v17[1] = sub_21495A0DC;
        v13 = v15;

        return MEMORY[0x282200480](v13);
      }

      __break(1u);
      return MEMORY[0x282200480](v13);
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_281190DA0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v19 = *(v0 + 8);
  v18 = *(v0 + 9);
  v20 = *(v0 + 7);
  v21 = __swift_project_value_buffer(v20, qword_281194E18);
  (*(v19 + 16))(v18, v21, v20);
  v22 = sub_21498E670();
  v23 = sub_21498FBA0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_21488E000, v22, v23, "[iCloudMailAssistantProviderSwift] init - cacheLoadDelayInSeconds - passed", v24, 2u);
    MEMORY[0x216059AC0](v24, -1, -1);
  }

  v26 = *(v0 + 8);
  v25 = *(v0 + 9);
  v28 = *(v0 + 6);
  v27 = *(v0 + 7);

  (*(v26 + 8))(v25, v27);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[12] = *(Strong + 64);

    v30 = swift_task_alloc();
    *(v0 + 13) = v30;
    *v30 = v0;
    v30[1] = sub_21495A404;

    return sub_21494D3E0();
  }

  else
  {
    v33 = *(v0 + 9);
    v32 = *(v0 + 10);

    v34 = *(v0 + 1);

    return v34();
  }
}

uint64_t sub_21495A0DC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_21496A354;
  }

  else
  {
    v3 = sub_21495A1F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21495A1F4()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] init - cacheLoadDelayInSeconds - passed", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[6];
  v10 = v0[7];

  (*(v9 + 8))(v8, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[12] = *(Strong + 64);

    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_21495A404;

    return sub_21494D3E0();
  }

  else
  {
    v16 = v0[9];
    v15 = v0[10];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21495A404()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v8 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  v6 = *(v8 + 8);

  return v6();
}

void *iCloudMailAssistantProviderSwift.__allocating_init(appleAccount:accountStore:)(void *a1, void *a2)
{
  v4 = sub_21498F710();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21498E350();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MARepositoryDefault();
  v14 = swift_allocObject();
  v15 = a2;
  v16 = a1;
  sub_21498E340();
  v17 = sub_21498E330();
  v19 = v18;
  (*(v9 + 8))(v12, v8);
  v14[2] = v17;
  v14[3] = v19;
  v14[4] = v15;
  v14[5] = v16;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v21 = v20;
  v22 = [objc_opt_self() defaultCenter];
  sub_21496BCB8(v7);
  v23 = type metadata accessor for NetworkStatusProvider();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_214988258();
  v36[3] = v13;
  v36[4] = &off_2826CB168;
  v36[0] = v14;
  type metadata accessor for iCloudMailAssistantProviderSwift();
  v27 = swift_allocObject();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v36, v13);
  v29 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v36[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = sub_2148D72D0(v16, v15, *v31, v21, v22, v7, v26, 0x3FE0000000000000, 0, v27);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v33;
}

uint64_t sub_21495A814()
{
  v1[2] = v0;
  v2 = sub_21498E690();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21495A8E0, 0, 0);
}

uint64_t sub_21495A8E0()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v0[7] = v4;
  v5 = *(v3 + 16);
  v0[8] = v5;
  v0[9] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "[iCloudMailAssistantProviderSwift] prepare()", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[10] = v13;
  v13(v9, v10);
  v0[11] = *(v12 + 64);

  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_21495AAA0;

  return sub_21494B3A8(0, 1);
}

uint64_t sub_21495AAA0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_21495ABB8, 0, 0);
}

uint64_t sub_21495ABB8()
{
  v1 = *(v0 + 72);
  (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 24));
  v2 = sub_21498E670();
  v3 = sub_21498FBA0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21488E000, v2, v3, "[iCloudMailAssistantProviderSwift] prepare - done", v4, 2u);
    MEMORY[0x216059AC0](v4, -1, -1);
  }

  v5 = *(v0 + 80);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);

  v5(v7, v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_21495ACD8()
{
  v1 = *(v0 + 64);

  v2 = sub_21494AE50();

  return v2 & 1;
}

BOOL sub_21495AD14()
{
  v1 = *(v0 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  return *(*(v1 + *(type metadata accessor for MailCleanupState() + 56)) + 16) != 0;
}

uint64_t sub_21495AD78()
{
  v1 = *(v0 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  v2 = (v1 + *(type metadata accessor for MailCleanupState() + 60));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21495ADF8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  result = type metadata accessor for MailCleanupState();
  v5 = *(v3 + *(result + 36));
  if (v5 == 4)
  {
    LOBYTE(v5) = 3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_21495AE64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 != 1)
  {
    return 0;
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_21498E670();
  v13 = sub_21498FB90();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21488E000, v12, v13, "[iCloudMailAssistantProviderSwift] isSenderEmailAddressBlocked", v14, 2u);
    MEMORY[0x216059AC0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = *(v3 + 64);

  sub_21494CC60(a1, a2, v17);

  if (!v18)
  {
    return 0;
  }

  sub_21489DFCC(v17, &qword_27CA1AAA0, &qword_214993640);
  return 1;
}

uint64_t sub_21495B0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_21498E5D0();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v10 = sub_21498E600();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v13 = sub_21498E690();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21495B22C, 0, 0);
}

uint64_t sub_21495B22C()
{
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 == 1)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v2 = v0[16];
    v1 = v0[17];
    v3 = v0[15];
    v4 = __swift_project_value_buffer(v3, qword_281194E18);
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_21498E670();
    v6 = sub_21498FB90();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] blockSender", v7, 2u);
      MEMORY[0x216059AC0](v7, -1, -1);
    }

    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];

    (*(v9 + 8))(v8, v10);
    if (qword_281190DA8 != -1)
    {
      swift_once();
    }

    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];
    v17 = v0[3];
    v18 = __swift_project_value_buffer(v13, qword_281194E30);
    (*(v12 + 16))(v11, v18, v13);

    sub_21498E5F0();
    sub_21498E5B0();
    v19 = sub_21498E5F0();
    v20 = sub_21498FC80();
    if (sub_21498FCE0())
    {
      v21 = v0[11];
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_21498E5C0();
      _os_signpost_emit_with_name_impl(&dword_21488E000, v19, v20, v23, "BlockSender", "", v22, 2u);
      MEMORY[0x216059AC0](v22, -1, -1);
    }

    v25 = v0[10];
    v24 = v0[11];
    v26 = v0[8];
    v27 = v0[9];
    v28 = v0[7];
    v30 = v0[2];
    v29 = v0[3];

    (*(v27 + 16))(v25, v24, v26);
    v31 = sub_21498E650();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v0[18] = sub_21498E640();
    v0[19] = *(v28 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
    v34 = swift_allocObject();
    v0[20] = v34;
    *(v34 + 16) = xmmword_214991720;
    *(v34 + 32) = v30;
    *(v34 + 40) = v29;

    v35 = swift_task_alloc();
    v0[21] = v35;
    *v35 = v0;
    v35[1] = sub_21495B634;
    v36 = v0[5];
    v37 = v0[6];
    v38 = v0[4];

    return sub_21494DD78(v34, v38, v36, v37);
  }

  else
  {
    v40 = v0[17];
    v41 = v0[14];
    v43 = v0[10];
    v42 = v0[11];

    v44 = v0[1];

    return v44();
  }
}

uint64_t sub_21495B634()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_21495B890;
  }

  else
  {
    v6 = *(v2 + 152);
    v5 = *(v2 + 160);

    v4 = sub_21495B758;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21495B758()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v16 = v0[6];
  v17 = v0[12];
  v8 = v0[5];
  v9 = v0[3];
  sub_21497EFE0(v2, "BlockSender", 11, 2);

  (*(v6 + 8))(v4, v5);

  (*(v3 + 8))(v2, v17);
  v10 = v0[17];
  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_21495B890()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v16 = v0[12];
  v17 = v0[17];
  v7 = v0[9];
  v18 = v0[10];
  v9 = v0[7];
  v8 = v0[8];
  v14 = v0[5];
  v15 = v0[6];
  v10 = v0[3];

  sub_21497EFE0(v5, "BlockSender", 11, 2);

  (*(v7 + 8))(v6, v8);

  (*(v4 + 8))(v5, v16);

  v11 = v0[1];
  v12 = v0[22];

  return v11();
}

uint64_t sub_21495B9D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21498E600();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_21498E690();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21495BAF8, 0, 0);
}

uint64_t sub_21495BAF8()
{
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 == 1)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[8];
    v4 = __swift_project_value_buffer(v3, qword_281194E18);
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_21498E670();
    v6 = sub_21498FB90();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] blockSender", v7, 2u);
      MEMORY[0x216059AC0](v7, -1, -1);
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];

    (*(v9 + 8))(v8, v10);
    if (qword_281190DA8 != -1)
    {
      swift_once();
    }

    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    v14 = v0[3];
    v15 = __swift_project_value_buffer(v13, qword_281194E30);
    (*(v12 + 16))(v11, v15, v13);

    v16 = swift_task_alloc();
    v0[11] = v16;
    *v16 = v0;
    v16[1] = sub_21495BDC0;
    v17 = v0[7];
    v19 = v0[3];
    v18 = v0[4];
    v20 = v0[2];

    return sub_21497E294(sub_21497E294, "BlockSender", 11, 2, v17, v18, v20, v19);
  }

  else
  {
    v22 = v0[10];
    v23 = v0[7];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_21495BDC0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_21495BFA0;
  }

  else
  {
    v6 = sub_21495BF30;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21495BF30()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21495BFA0()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_21495C010(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21498E600();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_21498E690();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21495C130, 0, 0);
}

uint64_t sub_21495C130()
{
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 == 1)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[8];
    v4 = __swift_project_value_buffer(v3, qword_281194E18);
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_21498E670();
    v6 = sub_21498FB90();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] unblockSender", v7, 2u);
      MEMORY[0x216059AC0](v7, -1, -1);
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];

    (*(v9 + 8))(v8, v10);
    if (qword_281190DA8 != -1)
    {
      swift_once();
    }

    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    v14 = v0[3];
    v15 = __swift_project_value_buffer(v13, qword_281194E30);
    (*(v12 + 16))(v11, v15, v13);

    v16 = swift_task_alloc();
    v0[11] = v16;
    *v16 = v0;
    v16[1] = sub_21495C3F8;
    v17 = v0[7];
    v19 = v0[3];
    v18 = v0[4];
    v20 = v0[2];

    return sub_21497E88C(sub_21497E88C, "UnblockSender", 13, 2, v17, v18, v20, v19);
  }

  else
  {
    v22 = v0[10];
    v23 = v0[7];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_21495C3F8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_21496A358;
  }

  else
  {
    v6 = sub_21496A340;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21495C568()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 == 1)
  {
    v6 = *(v0 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
    swift_beginAccess();
    if (*(v6 + *(type metadata accessor for MailCleanupState() + 36)) == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_214990080();
    }

    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v8, v1);
    v9 = sub_21498E670();
    v10 = sub_21498FB90();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v7 & 1;
      _os_log_impl(&dword_21488E000, v9, v10, "[iCloudMailAssistantProviderSwift] isConsentAccepted: %{BOOL}d", v11, 8u);
      MEMORY[0x216059AC0](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21495C828()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 == 1)
  {
    v6 = *(v0 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
    swift_beginAccess();
    v7 = *(v6 + *(type metadata accessor for MailCleanupState() + 28));
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v5, v8, v1);
    v9 = sub_21498E670();
    v10 = sub_21498FB90();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v7 & 1;
      _os_log_impl(&dword_21488E000, v9, v10, "[iCloudMailAssistantProviderSwift] isUnsubscribeEnabled: %{BOOL}d", v11, 8u);
      MEMORY[0x216059AC0](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21495CA74()
{
  v0[3] = *(v0[2] + 64);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21495CB20;

  return sub_21494B3A8(1, 1);
}

uint64_t sub_21495CB20()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21495CC30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C660, &qword_21499B530);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v19 - v3;
  v5 = sub_21498FC90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB78, &unk_21499D710);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  v19[0] = v0;
  v15 = *(v0 + 40);
  if (qword_281190CB8 != -1)
  {
    swift_once();
  }

  sub_21498FCA0();
  sub_2148FFDCC();
  v16 = sub_21498FC20();
  v19[1] = v16;
  v17 = sub_21498FC00();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_214969664(&qword_281190CB0, MEMORY[0x277CC9DB0]);
  sub_214969664(&qword_281190CC8, sub_2148FFDCC);
  sub_21498EA60();
  sub_21489DFCC(v4, &qword_27CA1C660, &qword_21499B530);

  (*(v6 + 8))(v9, v5);
  swift_allocObject();
  swift_weakInit();
  sub_2148B4C20(&qword_281190D98, &qword_27CA1CB78, &unk_21499D710);
  sub_21498EA70();

  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  sub_21498E9A0();
  swift_endAccess();
}

uint64_t sub_21495CFF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C660, &qword_21499B530);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v20 - v3;
  v5 = sub_21498FC90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB78, &unk_21499D710);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v15 = *MEMORY[0x277D76758];
  v16 = *(v0 + 40);
  sub_21498FCA0();
  sub_2148FFDCC();
  v17 = sub_21498FC20();
  v20[1] = v17;
  v18 = sub_21498FC00();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_214969664(&qword_281190CB0, MEMORY[0x277CC9DB0]);
  sub_214969664(&qword_281190CC8, sub_2148FFDCC);
  sub_21498EA60();
  sub_21489DFCC(v4, &qword_27CA1C660, &qword_21499B530);

  (*(v6 + 8))(v9, v5);
  swift_allocObject();
  swift_weakInit();
  sub_2148B4C20(&qword_281190D98, &qword_27CA1CB78, &unk_21499D710);
  sub_21498EA70();

  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  sub_21498E9A0();
  swift_endAccess();
}

uint64_t sub_21495D384()
{
  v0 = sub_21498F510();
  v34 = *(v0 - 8);
  v35 = v0;
  v1 = *(v34 + 64);
  MEMORY[0x28223BE20](v0);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21498F540();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21498F560();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v36);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = sub_21498E690();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_281194E18);
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_21498E670();
  v20 = sub_21498FB90();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21488E000, v19, v20, "[iCloudMailAssistantProviderSwift] handleAppWillEnterForeground", v21, 2u);
    MEMORY[0x216059AC0](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  sub_2148FFDCC();
  v22 = sub_21498FC20();
  sub_21498F550();
  sub_21498F570();
  v29 = *(v6 + 8);
  v29(v10, v36);
  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_214969760;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2148A457C;
  aBlock[3] = &block_descriptor_63_0;
  v24 = _Block_copy(aBlock);

  v25 = v30;
  sub_21498F530();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_214969664(&qword_281190D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_2148B4C20(&qword_281190D00, &qword_27CA1C348, &qword_21499A980);
  v26 = v31;
  v27 = v35;
  sub_21498FD60();
  MEMORY[0x216058C80](v12, v25, v26, v24);
  _Block_release(v24);

  (*(v34 + 8))(v26, v27);
  (*(v32 + 8))(v25, v33);
  return (v29)(v12, v36);
}

uint64_t sub_21495D8C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_21498FAE0();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_21498FAB0();

    v7 = sub_21498FAA0();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v5;
    sub_214926978(0, 0, v3, &unk_21499D738, v8);
  }

  return result;
}

uint64_t sub_21495DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21498FAB0();
  v4[3] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21495DAAC, v6, v5);
}

uint64_t sub_21495DAAC()
{
  v0[6] = *(v0[2] + 64);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_21495DB58;

  return sub_21494B3A8(0, 0);
}

uint64_t sub_21495DB58()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21496A374, v5, v4);
}

uint64_t sub_21495DC9C()
{
  v0 = sub_21498F510();
  v13 = *(v0 - 8);
  v1 = *(v13 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21498F540();
  v4 = *(v12 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2148FFDCC();
  v8 = sub_21498FC20();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_214969644;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2148A457C;
  aBlock[3] = &block_descriptor_9;
  v10 = _Block_copy(aBlock);

  sub_21498F530();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_214969664(&qword_281190D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_2148B4C20(&qword_281190D00, &qword_27CA1C348, &qword_21499A980);
  sub_21498FD60();
  MEMORY[0x216058CD0](0, v7, v3, v10);
  _Block_release(v10);

  (*(v13 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v12);
}

uint64_t sub_21495DF84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 64);
    v6 = result;

    sub_21494CF34();

    v7 = sub_21498FAE0();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_21498FAB0();

    v8 = sub_21498FAA0();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    sub_214926978(0, 0, v3, &unk_21499D728, v9);
  }

  return result;
}

uint64_t sub_21495E0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21498FAB0();
  v4[3] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21495E190, v6, v5);
}

uint64_t sub_21495E190()
{
  v0[6] = *(v0[2] + 64);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_21495E23C;

  return sub_21494B3A8(0, 0);
}

uint64_t sub_21495E23C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21495E380, v5, v4);
}

uint64_t sub_21495E380()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21495E3E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_21498E670();
  v13 = sub_21498FB90();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21488E000, v12, v13, "[iCloudMailAssistantProviderSwift] startObservingCleanupJobUpdates", v14, 2u);
    MEMORY[0x216059AC0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  return sub_214895734(v15);
}

uint64_t sub_21495E5A4()
{
  v1 = v0;
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281194E18);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_21498E670();
  v9 = sub_21498FB90();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21488E000, v8, v9, "[iCloudMailAssistantProviderSwift] stopObservingCleanupJobUpdates", v10, 2u);
    MEMORY[0x216059AC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return sub_214895734(v11);
}

uint64_t sub_21495E748()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C660, &qword_21499B530);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v20 - v3;
  v5 = sub_21498FC90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB78, &unk_21499D710);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v15 = *(v0 + 40);
  v16 = *MEMORY[0x277CBE620];
  sub_21498FCA0();
  sub_2148FFDCC();
  v17 = sub_21498FC20();
  v20[1] = v17;
  v18 = sub_21498FC00();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_214969664(&qword_281190CB0, MEMORY[0x277CC9DB0]);
  sub_214969664(&qword_281190CC8, sub_2148FFDCC);
  sub_21498EA60();
  sub_21489DFCC(v4, &qword_27CA1C660, &qword_21499B530);

  (*(v6 + 8))(v9, v5);
  swift_allocObject();
  swift_weakInit();
  sub_2148B4C20(&qword_281190D98, &qword_27CA1CB78, &unk_21499D710);
  sub_21498EA70();

  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  sub_21498E9A0();
  swift_endAccess();
}

uint64_t sub_21495EADC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_21495EB3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_21498E380();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_21498E670();
  v17 = sub_21498FB90();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = v6;
    v21 = v20;
    v35 = v20;
    *v19 = 136315138;
    sub_21498E370();
    v22 = sub_21498E360();
    v33 = v1;
    v24 = v23;
    (*(v34 + 8))(v9, v31);
    v25 = sub_2149079F4(v22, v24, &v35);
    v1 = v33;

    *(v19 + 4) = v25;
    _os_log_impl(&dword_21488E000, v16, v17, "[iCloudMailAssistantProviderSwift] handleLocaleChange() - %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x216059AC0](v21, -1, -1);
    v26 = v19;
    v5 = v32;
    MEMORY[0x216059AC0](v26, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v27 = sub_21498FAE0();
  (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v1;

  sub_214926978(0, 0, v5, &unk_21499D700, v28);
}

uint64_t sub_21495EEF8()
{
  v0[5] = *(v0[4] + 64);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_21495EF9C;

  return sub_21494FA90();
}

uint64_t sub_21495EF9C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 48);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_21495F09C, 0, 0);
}

uint64_t sub_21495F09C()
{
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = *(v0 + 24);
  v1 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21495F138, v1, 0);
}

uint64_t sub_21495F138()
{
  v1 = v0[7];
  sub_21496CB54();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_21495F1D8;
  v3 = v0[5];

  return sub_21494B3A8(0, 1);
}

uint64_t sub_21495F1D8()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21496A350, 0, 0);
}

uint64_t iCloudMailAssistantProviderSwift.deinit()
{
  v1 = v0;
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281194E18);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_21498E670();
  v9 = sub_21498FB90();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21488E000, v8, v9, "[iCloudMailAssistantProviderSwift] deinit()", v10, 2u);
    MEMORY[0x216059AC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 24);
  sub_214895734(*(v1 + 16));

  v12 = *(v1 + 64);

  v13 = *(v1 + 72);

  MEMORY[0x216059B90](v1 + 80);
  return v1;
}

uint64_t iCloudMailAssistantProviderSwift.__deallocating_deinit()
{
  iCloudMailAssistantProviderSwift.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21495F4E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_21498E670();
  v13 = sub_21498FBA0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21488E000, v12, v13, "[iCloudMailAssistantProviderSwift] clearCache()", v14, 2u);
    MEMORY[0x216059AC0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = sub_21498FAE0();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;

  sub_214926978(0, 0, v5, &unk_21499D588, v16);
}

uint64_t sub_21495F77C()
{
  v0[5] = *(v0[4] + 64);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_21495F820;

  return sub_21494FA90();
}

uint64_t sub_21495F820(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 48);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_21495F920, 0, 0);
}

uint64_t sub_21495F920()
{
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = *(v0 + 24);
  v1 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21495F9BC, v1, 0);
}

uint64_t sub_21495F9BC()
{
  v1 = *(v0 + 56);
  sub_21496E454();

  return MEMORY[0x2822009F8](sub_21495FA24, 0, 0);
}

uint64_t sub_21495FA24()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21495FAB0()
{
  v1 = *(v0[2] + 64);
  v0[3] = v1;
  v2 = (v1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository);
  v3 = *(v1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository + 24);

  v4 = *__swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_21495FB70;

  return sub_21492A40C();
}

uint64_t sub_21495FB70(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_21495FC70, 0, 0);
}

uint64_t sub_21495FC70()
{
  v2 = v0[2];
  v1 = v0[3];

  (*(*v2 + 416))(v3);
  v8 = (*v2 + 344);
  v9 = (*v8 + **v8);
  v4 = (*v8)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_21495FDCC;
  v6 = v0[2];

  return v9();
}

uint64_t sub_21495FDCC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v6 + 8);
  v4 = *(v1 + 40);

  return v3(v4);
}

void *sub_21495FED8@<X0>(void (*a1)(char *, uint64_t)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v29 = a1;
  v30 = a3;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v14, v15, v10);

  v16 = sub_21498E670();
  v17 = sub_21498FBA0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27 = v6;
    v21 = v20;
    *&v31[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_2149079F4(v29, a2, v31);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_2149079F4(v30, a4, v31);
    _os_log_impl(&dword_21488E000, v16, v17, "[iCloudMailAssistantProviderSwift] getTip(for: %s, %s)", v19, 0x16u);
    swift_arrayDestroy();
    v22 = v21;
    v6 = v27;
    MEMORY[0x216059AC0](v22, -1, -1);
    v23 = v19;
    a5 = v28;
    MEMORY[0x216059AC0](v23, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48)
  {
    v24 = *(v6 + 64);

    sub_21494BABC(v29, a2, v30, a4, a5);
  }

  else
  {
    sub_2148DA328(v31);
    return memcpy(a5, v31, 0x179uLL);
  }
}

uint64_t sub_2149601B4(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v66 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v57 - v11;
  v13 = sub_21498E690();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v57 - v20;
  if (qword_281191830 != -1)
  {
    result = swift_once();
  }

  if (byte_281194E48 != 1)
  {
    return result;
  }

  v63 = v18;
  v58 = a4;
  v59 = v12;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v57 = a3;
  v22 = __swift_project_value_buffer(v13, qword_281194E18);
  v61 = v14[2];
  v62 = v22;
  v61(v21);

  v23 = sub_21498E670();
  v24 = sub_21498FB90();

  v25 = os_log_type_enabled(v23, v24);
  v64 = v14;
  v65 = a2;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v60 = v5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v72[0] = v28;
    *v27 = 136315138;
    v29 = v66;
    *(v27 + 4) = sub_2149079F4(v66, v65, v72);
    _os_log_impl(&dword_21488E000, v23, v24, "[iCloudMailAssistantProviderSwift] acceptTip(for: %s)", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x216059AC0](v28, -1, -1);
    v30 = v27;
    v5 = v60;
    MEMORY[0x216059AC0](v30, -1, -1);

    v31 = v14[1];
    v31(v21, v13);
  }

  else
  {

    v31 = v14[1];
    v31(v21, v13);
    v29 = v66;
  }

  v32 = *(v5 + 64);
  sub_21494F990(v29, v65, v70);
  memcpy(v71, v70, 0x179uLL);
  if (get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(v71) == 1)
  {
LABEL_15:
    v38 = v63;
    (v61)(v63, v62, v13);
    v39 = sub_21498E670();
    v40 = sub_21498FB90();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_21488E000, v39, v40, "[iCloudMailAssistantProviderSwift] acceptTip - Not found", v41, 2u);
      MEMORY[0x216059AC0](v41, -1, -1);
    }

    return (v31)(v38, v13);
  }

  memcpy(v72, v71, 0x179uLL);
  v33 = *(&v71[6] + 1);
  if (!*(&v71[6] + 1))
  {
    sub_21489DFCC(v70, &qword_27CA1AAB0, &qword_214993648);
    goto LABEL_15;
  }

  v66 = *&v71[6];
  v76 = v71[7];
  v77 = v71[8];
  v78 = v71[9];
  v34 = v71[0];
  if (__PAIR128__(0x80000002149A31C0, 0xD000000000000014) == v71[0] || (sub_214990080() & 1) != 0)
  {
    v35 = *(v5 + 32);
    v36 = v5;
    sub_2148AA824(&v71[6], v69, &qword_27CA1B9F0, &qword_2149970D0);

    v37 = sub_21498F840();
    [v35 setURL:0 forKey:v37];
  }

  else
  {
    sub_2148AA824(&v71[6], v69, &qword_27CA1B9F0, &qword_2149970D0);

    v36 = v5;
  }

  v42 = sub_21498FAE0();
  v43 = v59;
  v65 = *(*(v42 - 8) + 56);
  v65(v59, 1, 1, v42);
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v36;
  memcpy((v44 + 40), v72, 0x179uLL);
  *(v44 + 424) = v66;
  *(v44 + 432) = v33;
  v45 = v77;
  *(v44 + 440) = v76;
  *(v44 + 456) = v45;
  *(v44 + 472) = v78;
  v46 = v57;
  v47 = v58;
  *(v44 + 488) = v57;
  *(v44 + 496) = v47;
  v60 = v36;

  sub_2148AA824(v70, v69, &qword_27CA1AAB0, &qword_214993648);
  sub_21490D9F8(v46);
  sub_214926978(0, 0, v43, &unk_21499D5A0, v44);

  v48 = *(&v71[19] + 1);
  if (*(&v71[19] + 1))
  {
    v49 = *&v71[19];
    v73 = v71[20];
    v74 = v71[21];
    v75 = v71[22];
    v67 = 0x4B43494C435F4E4FLL;
    v68 = 0xE90000000000005FLL;
    sub_2148AA824(&v71[19], v69, &qword_27CA1B9F0, &qword_2149970D0);
    MEMORY[0x2160589C0](v34, *(&v34 + 1));

    v50 = sub_2148EDBD4(v67, v68);

    if (v50)
    {
      v51 = v59;
      v65(v59, 1, 1, v42);
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      *(v52 + 24) = 0;
      *(v52 + 32) = v60;
      memcpy((v52 + 40), v72, 0x179uLL);
      *(v52 + 424) = v49;
      *(v52 + 432) = v48;
      v53 = v74;
      *(v52 + 440) = v73;
      *(v52 + 456) = v53;
      *(v52 + 472) = v75;

      sub_214926978(0, 0, v51, &unk_21499D5B0, v52);
    }

    sub_21489DFCC(v70, &qword_27CA1AAB0, &qword_214993648);
    v54 = &qword_27CA1B9F0;
    v55 = &qword_2149970D0;
    v56 = &v71[19];
  }

  else
  {

    v54 = &qword_27CA1AAB0;
    v55 = &qword_214993648;
    v56 = v70;
  }

  return sub_21489DFCC(v56, v54, v55);
}

uint64_t sub_214960940(int a1, int a2, int a3, int a4, void *__src, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x179uLL);
  v12 = a6[1];
  *(v8 + 400) = *a6;
  *(v8 + 416) = v12;
  v13 = a6[3];
  *(v8 + 432) = a6[2];
  *(v8 + 448) = v13;
  v14 = swift_task_alloc();
  *(v8 + 464) = v14;
  *v14 = v8;
  v14[1] = sub_21496A370;

  return sub_214960A1C((v8 + 16), (v8 + 400), a7, a8);
}

uint64_t sub_214960A1C(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 144) = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0) - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700) - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v10 = sub_21498E1B0();
  *(v5 + 192) = v10;
  v11 = *(v10 - 8);
  *(v5 + 200) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v13 = sub_21498E690();
  *(v5 + 224) = v13;
  v14 = *(v13 - 8);
  *(v5 + 232) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  v16 = swift_task_alloc();
  v17 = *a1;
  v18 = a1[1];
  *(v5 + 280) = v16;
  *(v5 + 288) = v17;
  *(v5 + 296) = v18;
  v19 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v19;
  v20 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v20;
  *(v5 + 304) = sub_21498FAB0();
  *(v5 + 312) = sub_21498FAA0();
  v22 = sub_21498FA50();
  *(v5 + 320) = v22;
  *(v5 + 328) = v21;

  return MEMORY[0x2822009F8](sub_214960C60, v22, v21);
}

id sub_214960C60()
{
  v102 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FB90();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "[iCloudMailAssistantProviderSwift] processAction()", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = *(v0 + 280);
  v10 = *(v0 + 224);
  v11 = *(v0 + 232);

  v12 = *(v11 + 8);
  v12(v9, v10);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  if (v13 == 0x7373696D736964 && v14 == 0xE700000000000000 || (v15 = *(v0 + 16), v16 = *(v0 + 24), (sub_214990080() & 1) != 0))
  {
    *(v0 + 336) = *(*(v0 + 160) + 64);

    v17 = swift_task_alloc();
    *(v0 + 344) = v17;
    *v17 = v0;
    v17[1] = sub_2149615D8;

    return sub_21494FA90();
  }

  if ((v13 != 0x6C61646F6DLL || v14 != 0xE500000000000000) && (sub_214990080() & 1) == 0)
  {
    if ((v13 != 1802398060 || v14 != 0xE400000000000000) && (sub_214990080() & 1) == 0)
    {
      v67 = *(v0 + 312);

      if ((v13 != 0x6B63616264656566 || v14 != 0xE800000000000000) && (sub_214990080() & 1) == 0)
      {
        v5(*(v0 + 240), v4, *(v0 + 224));

        v28 = sub_21498E670();
        v29 = sub_21498FBB0();

        v86 = os_log_type_enabled(v28, v29);
        v87 = *(v0 + 232);
        v31 = *(v0 + 240);
        v33 = *(v0 + 224);
        if (v86)
        {
          v99 = *(v0 + 240);
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v101 = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_2149079F4(v13, v14, &v101);
          v36 = "[iCloudMailAssistantProviderSwift] processAction - unsupported tip action type: %s";
          goto LABEL_18;
        }

        goto LABEL_40;
      }

      v68 = *(v0 + 304);
      v70 = *(v0 + 160);
      v69 = *(v0 + 168);
      v72 = *(v0 + 144);
      v71 = *(v0 + 152);
      v73 = sub_21498FAE0();
      (*(*(v73 - 8) + 56))(v69, 1, 1, v73);

      sub_2148F6BD0(v0 + 16, v0 + 80);
      sub_21490D9F8(v72);
      v74 = sub_21498FAA0();
      v75 = swift_allocObject();
      v76 = *(v0 + 32);
      *(v75 + 40) = *(v0 + 16);
      *(v75 + 56) = v76;
      v77 = *(v0 + 64);
      *(v75 + 72) = *(v0 + 48);
      v78 = MEMORY[0x277D85700];
      *(v75 + 16) = v74;
      *(v75 + 24) = v78;
      *(v75 + 32) = v70;
      *(v75 + 88) = v77;
      *(v75 + 104) = v72;
      *(v75 + 112) = v71;
      sub_214926978(0, 0, v69, &unk_21499D770, v75);

      goto LABEL_43;
    }

    v20 = *(v0 + 40);
    if (v20)
    {
      v21 = *(v0 + 32);
      v46 = *(v0 + 192);
      v47 = *(v0 + 200);
      v48 = *(v0 + 176);
      v49 = *(v0 + 40);
      sub_21498E1A0();
      if ((*(v47 + 48))(v48, 1, v46) != 1)
      {
        (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 176), *(v0 + 192));
        result = [objc_opt_self() defaultWorkspace];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v79 = result;
        v80 = *(v0 + 312);
        v82 = *(v0 + 200);
        v81 = *(v0 + 208);
        v83 = *(v0 + 192);

        v84 = sub_21498E140();
        sub_2148E0B1C(MEMORY[0x277D84F90]);
        v85 = sub_21498F7D0();

        [v79 openSensitiveURL:v84 withOptions:v85];

        (*(v82 + 8))(v81, v83);
        goto LABEL_43;
      }

      v50 = *(v0 + 312);
      v51 = *(v0 + 256);
      v52 = *(v0 + 224);
      v53 = *(v0 + 176);

      sub_21489DFCC(v53, &qword_27CA1A348, &qword_214991700);
      v5(v51, v4, v52);

      v28 = sub_21498E670();
      v29 = sub_21498FBB0();

      v54 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 256);
      v33 = *(v0 + 224);
      v55 = *(v0 + 232);
      if (v54)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }

    v62 = *(v0 + 312);
    v63 = *(v0 + 248);
    v64 = *(v0 + 224);

    v5(v63, v4, v64);
    v38 = sub_21498E670();
    v39 = sub_21498FBB0();
    v65 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 248);
    v42 = *(v0 + 224);
    v66 = *(v0 + 232);
    if (v65)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v19 = *(v0 + 312);

  v20 = *(v0 + 40);
  if (!v20)
  {
    v5(*(v0 + 264), v4, *(v0 + 224));
    v38 = sub_21498E670();
    v39 = sub_21498FBB0();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 264);
    v42 = *(v0 + 224);
    v43 = *(v0 + 232);
    if (v40)
    {
LABEL_20:
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_21488E000, v38, v39, "[iCloudMailAssistantProviderSwift] processAction - url missing", v44, 2u);
      MEMORY[0x216059AC0](v44, -1, -1);
    }

LABEL_21:

    v37 = v41;
    v45 = v42;
LABEL_42:
    v12(v37, v45);
    goto LABEL_43;
  }

  v21 = *(v0 + 32);
  v22 = *(v0 + 192);
  v23 = *(v0 + 200);
  v24 = *(v0 + 184);
  v25 = *(v0 + 40);
  sub_21498E1A0();
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
    v26 = *(v0 + 272);
    v27 = *(v0 + 224);
    sub_21489DFCC(*(v0 + 184), &qword_27CA1A348, &qword_214991700);
    v5(v26, v4, v27);

    v28 = sub_21498E670();
    v29 = sub_21498FBB0();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 272);
    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    if (v30)
    {
LABEL_17:
      v99 = v31;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v101 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_2149079F4(v21, v20, &v101);
      v36 = "[iCloudMailAssistantProviderSwift] processAction - url invalid: %s";
LABEL_18:
      _os_log_impl(&dword_21488E000, v28, v29, v36, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x216059AC0](v35, -1, -1);
      MEMORY[0x216059AC0](v34, -1, -1);

      v37 = v99;
LABEL_41:
      v45 = v33;
      goto LABEL_42;
    }

LABEL_40:

    v37 = v31;
    goto LABEL_41;
  }

  v56 = *(v0 + 216);
  v57 = *(v0 + 192);
  v58 = *(v0 + 200);
  v60 = *(v0 + 152);
  v59 = *(v0 + 160);
  v61 = *(v0 + 144);
  (*(v58 + 32))(v56, *(v0 + 184), v57);
  sub_214962E84(v56, *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v61, v60);
  (*(v58 + 8))(v56, v57);
LABEL_43:
  v89 = *(v0 + 272);
  v88 = *(v0 + 280);
  v91 = *(v0 + 256);
  v90 = *(v0 + 264);
  v93 = *(v0 + 240);
  v92 = *(v0 + 248);
  v95 = *(v0 + 208);
  v94 = *(v0 + 216);
  v97 = *(v0 + 176);
  v96 = *(v0 + 184);
  v100 = *(v0 + 168);

  v98 = *(v0 + 8);

  return v98();
}

uint64_t sub_2149615D8(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_2149616D8, 0, 0);
}

uint64_t sub_2149616D8()
{
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v0 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21496176C, v0, 0);
}

uint64_t sub_21496176C()
{
  v1 = v0[44];
  sub_21496D0E4(v0[36], v0[37]);

  return MEMORY[0x2822009F8](sub_2149617D8, 0, 0);
}

uint64_t sub_2149617D8()
{
  v1 = v0[44];
  v2 = v0[42];

  v3 = v0[40];
  v4 = v0[41];

  return MEMORY[0x2822009F8](sub_214961848, v3, v4);
}

uint64_t sub_214961848()
{
  v0[45] = *(v0[20] + 64);

  v1 = swift_task_alloc();
  v0[46] = v1;
  *v1 = v0;
  v1[1] = sub_2149618F4;

  return sub_21494B3A8(0, 1);
}

uint64_t sub_2149618F4()
{
  v1 = *v0;
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v7 = *v0;

  v4 = *(v1 + 328);
  v5 = *(v1 + 320);

  return MEMORY[0x2822009F8](sub_214961A38, v5, v4);
}

uint64_t sub_214961A38()
{
  v1 = v0[39];
  v2 = v0[18];

  if (v2)
  {
    v4 = v0[19];
    (v0[18])(v3);
  }

  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v12 = v0[26];
  v11 = v0[27];
  v14 = v0[22];
  v13 = v0[23];
  v17 = v0[21];

  v15 = v0[1];

  return v15();
}

uint64_t sub_214961B3C(int a1, int a2, int a3, int a4, void *__src, _OWORD *a6)
{
  memcpy((v6 + 16), __src, 0x179uLL);
  v8 = a6[1];
  *(v6 + 400) = *a6;
  *(v6 + 416) = v8;
  v9 = a6[3];
  *(v6 + 432) = a6[2];
  *(v6 + 448) = v9;
  v10 = swift_task_alloc();
  *(v6 + 464) = v10;
  *v10 = v6;
  v10[1] = sub_21496A370;

  return sub_214960A1C((v6 + 16), (v6 + 400), 0, 0);
}

void sub_214961C3C(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v13 = sub_21498E690();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v23 = &v62 - v22;
  if (qword_281191830 != -1)
  {
    v66 = v21;
    v71 = a1;
    v60 = v20;
    swift_once();
    v20 = v60;
    a1 = v71;
    v21 = v66;
  }

  if (byte_281194E48)
  {
    v65 = v12;
    v66 = v21;
    v64 = v19;
    v70 = a4;
    v71 = v4;
    if (qword_281190DA0 != -1)
    {
      v61 = v20;
      swift_once();
      v20 = v61;
    }

    v24 = v20;
    v25 = __swift_project_value_buffer(v20, qword_281194E18);
    v26 = *(v14 + 16);
    v67 = v25;
    v68 = v26;
    v69 = v14 + 16;
    (v26)(v23);

    v27 = v24;
    v28 = v14;
    v29 = sub_21498E670();
    v30 = sub_21498FB90();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v63 = a3;
      v33 = v32;
      v75[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2149079F4(a1, a2, v75);
      _os_log_impl(&dword_21488E000, v29, v30, "[iCloudMailAssistantProviderSwift] dismissTip(for: %s)", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v34 = v33;
      a3 = v63;
      MEMORY[0x216059AC0](v34, -1, -1);
      MEMORY[0x216059AC0](v31, -1, -1);
    }

    v35 = *(v28 + 8);
    v36 = v23;
    v37 = v27;
    v35(v36, v27);
    v38 = v71;
    v39 = *(v71 + 64);
    sub_21494F990(a1, a2, v73);
    memcpy(v74, v73, 0x179uLL);
    if (get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(v74) == 1)
    {
      v40 = v66;
      v68(v66, v67, v37);
      v41 = sub_21498E670();
      v42 = sub_21498FB90();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_21488E000, v41, v42, "[iCloudMailAssistantProviderSwift] dismissTip - Not found", v43, 2u);
        MEMORY[0x216059AC0](v43, -1, -1);
      }

      v44 = v40;
    }

    else
    {
      memcpy(v75, v74, 0x179uLL);
      if (__PAIR128__(0x80000002149A31C0, 0xD000000000000014) == v74[0] || (sub_214990080() & 1) != 0)
      {
        sub_21489DFCC(v73, &qword_27CA1AAB0, &qword_214993648);
        v45 = *(v38 + 32);
        v46 = *&v45[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey];
        v47 = *&v45[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_turnOffMailCleanupTipDismissedKey + 8];

        v48 = sub_21498F840();

        [v45 setBool:1 forKey:v48];

        if (!a3)
        {
          return;
        }

        goto LABEL_19;
      }

      v49 = *(&v74[11] + 1);
      if (*(&v74[11] + 1))
      {
        v50 = *&v74[11];
        v76 = v74[12];
        v77 = v74[13];
        v78 = v74[14];
        v51 = sub_21498FAE0();
        v52 = v65;
        (*(*(v51 - 8) + 56))(v65, 1, 1, v51);
        v53 = swift_allocObject();
        *(v53 + 16) = 0;
        *(v53 + 24) = 0;
        *(v53 + 32) = v38;
        memcpy((v53 + 40), v75, 0x179uLL);
        *(v53 + 424) = v50;
        *(v53 + 432) = v49;
        v54 = v77;
        *(v53 + 440) = v76;
        *(v53 + 456) = v54;
        *(v53 + 472) = v78;
        v55 = v70;
        *(v53 + 488) = a3;
        *(v53 + 496) = v55;
        sub_2148AA824(&v74[11], &v72, &qword_27CA1B9F0, &qword_2149970D0);

        sub_21490D9F8(a3);
        sub_214926978(0, 0, v52, &unk_21499D5C0, v53);

        return;
      }

      sub_21489DFCC(v73, &qword_27CA1AAB0, &qword_214993648);
      v56 = v64;
      v68(v64, v67, v37);
      v57 = sub_21498E670();
      v58 = sub_21498FB90();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_21488E000, v57, v58, "[iCloudMailAssistantProviderSwift] dismissTip - No cancel action provided", v59, 2u);
        MEMORY[0x216059AC0](v59, -1, -1);
      }

      v44 = v56;
    }

    v35(v44, v37);
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

LABEL_19:
  a3();
}

uint64_t sub_2149622E8(int a1, int a2, int a3, int a4, void *__src, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  memcpy((v8 + 16), __src, 0x179uLL);
  v12 = a6[1];
  *(v8 + 400) = *a6;
  *(v8 + 416) = v12;
  v13 = a6[3];
  *(v8 + 432) = a6[2];
  *(v8 + 448) = v13;
  v14 = swift_task_alloc();
  *(v8 + 464) = v14;
  *v14 = v8;
  v14[1] = sub_2149623C4;

  return sub_214960A1C((v8 + 16), (v8 + 400), a7, a8);
}

uint64_t sub_2149623C4()
{
  v1 = *(*v0 + 464);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2149624B8(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v61 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - v11;
  v13 = sub_21498E690();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v52 - v20;
  if (qword_281191830 != -1)
  {
    result = swift_once();
  }

  if (byte_281194E48)
  {
    v58 = v18;
    v53 = v12;
    v54 = a4;
    v60 = a3;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v13, qword_281194E18);
    v23 = v14[2];
    v56 = v22;
    v57 = v14 + 2;
    v55 = v23;
    (v23)(v21);

    v24 = sub_21498E670();
    v25 = sub_21498FB90();

    v26 = os_log_type_enabled(v24, v25);
    v27 = a2;
    v59 = v14;
    if (v26)
    {
      v28 = swift_slowAlloc();
      v52 = v5;
      v29 = v28;
      v30 = swift_slowAlloc();
      v67[0] = v30;
      *v29 = 136315138;
      v31 = v61;
      *(v29 + 4) = sub_2149079F4(v61, v27, v67);
      _os_log_impl(&dword_21488E000, v24, v25, "[iCloudMailAssistantProviderSwift] onAppearTip(for: %s)", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x216059AC0](v30, -1, -1);
      v32 = v29;
      v5 = v52;
      MEMORY[0x216059AC0](v32, -1, -1);

      v33 = v14[1];
      v33(v21, v13);
    }

    else
    {

      v33 = v14[1];
      v33(v21, v13);
      v31 = v61;
    }

    v34 = *(v5 + 64);
    v35 = v27;
    sub_21494F990(v31, v27, v65);
    memcpy(v66, v65, 0x179uLL);
    if (get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(v66) == 1)
    {
      v36 = v58;
      v55(v58, v56, v13);
      v37 = sub_21498E670();
      v38 = sub_21498FB90();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_21488E000, v37, v38, "[iCloudMailAssistantProviderSwift] onAppearTip - Not found", v39, 2u);
        MEMORY[0x216059AC0](v39, -1, -1);
      }

      result = (v33)(v36, v13);
      if (v60)
      {
        return (v60)(result);
      }
    }

    else
    {
      memcpy(v67, v66, 0x179uLL);
      v40 = *(&v66[15] + 1);
      if (*(&v66[15] + 1))
      {
        v41 = *&v66[15];
        v68 = v66[16];
        v69 = v66[17];
        v70 = v66[18];
        v63 = 0x41455050415F4E4FLL;
        v64 = 0xEA00000000005F52;
        sub_2148AA824(&v66[15], &v62, &qword_27CA1B9F0, &qword_2149970D0);
        MEMORY[0x2160589C0](v31, v35);
        v42 = sub_2148EDBD4(v63, v64);

        if (v42)
        {
          v43 = sub_21498FAE0();
          v44 = v53;
          (*(*(v43 - 8) + 56))(v53, 1, 1, v43);
          v45 = swift_allocObject();
          *(v45 + 16) = 0;
          *(v45 + 24) = 0;
          *(v45 + 32) = v5;
          memcpy((v45 + 40), v67, 0x179uLL);
          *(v45 + 424) = v41;
          *(v45 + 432) = v40;
          v46 = v69;
          *(v45 + 440) = v68;
          *(v45 + 456) = v46;
          *(v45 + 472) = v70;
          v47 = v60;
          v48 = v54;
          *(v45 + 488) = v60;
          *(v45 + 496) = v48;

          sub_21490D9F8(v47);
          sub_214926978(0, 0, v44, &unk_21499D5D0, v45);
        }

        sub_21489DFCC(v65, &qword_27CA1AAB0, &qword_214993648);
        v49 = &qword_27CA1B9F0;
        v50 = &qword_2149970D0;
        v51 = &v66[15];
      }

      else
      {
        v49 = &qword_27CA1AAB0;
        v50 = &qword_214993648;
        v51 = v65;
      }

      return sub_21489DFCC(v51, v49, v50);
    }
  }

  else if (a3)
  {
    return a3();
  }

  return result;
}

uint64_t sub_214962AB8(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_21498E1B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281191830 != -1)
  {
    result = swift_once();
  }

  if (byte_281194E48 == 1)
  {
    v30 = v9;
    v31 = v2;
    v28 = a1;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v29 = a2;
    v20 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v19, v20, v14);
    v21 = sub_21498E670();
    v22 = sub_21498FB90();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21488E000, v21, v22, "[iCloudMailAssistantProviderSwift] presentConsentView", v23, 2u);
      MEMORY[0x216059AC0](v23, -1, -1);
    }

    (*(v15 + 8))(v19, v14);
    v24 = sub_21489E320(*(v31 + 48));
    v34 = 0xD00000000000002DLL;
    v35 = 0x80000002149A1950;
    v32 = v24;
    v33 = v25;
    v32 = sub_21498F970();
    v33 = v26;
    sub_21498F920();
    sub_21498E1A0();
    v27 = v30;
    result = (*(v10 + 48))(v8, 1, v30);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {

      (*(v10 + 32))(v13, v8, v27);
      sub_214962E84(v13, 1414745936, 0xE400000000000000, 0, 0xE000000000000000, v28, v29);
      return (*(v10 + 8))(v13, v27);
    }
  }

  return result;
}

uint64_t sub_214962E84(uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void), uint64_t (*a4)(uint64_t a1), uint64_t (*a5)(uint64_t a1), uint64_t a6, void *a7)
{
  v8 = v7;
  v139 = a6;
  v140 = a7;
  v125 = a5;
  v137 = a4;
  v126 = a3;
  v124 = a2;
  v127 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v136 = &v117 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v133 = &v117 - v14;
  v15 = sub_21498E510();
  v130 = *(v15 - 8);
  v131 = v15;
  v16 = *(v130 + 64);
  MEMORY[0x28223BE20](v15);
  v128 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v132 = (&v117 - v20);
  v123 = type metadata accessor for TracingContext(0);
  v21 = *(*(v123 - 1) + 64);
  MEMORY[0x28223BE20](v123);
  v23 = (&v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = type metadata accessor for MALiftUISource(0);
  v129 = *(v141 - 8);
  v24 = *(v129 + 64);
  v25 = MEMORY[0x28223BE20](v141);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v117 - v28;
  v122 = type metadata accessor for MARemoteView(0);
  v30 = *(*(v122 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v122);
  v134 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v135 = (&v117 - v33);
  v34 = sub_21498E690();
  v35 = *(v34 - 8);
  v36 = v35[8];
  v37 = MEMORY[0x28223BE20](v34);
  v121 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v117 - v39;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v34, qword_281194E18);
  v42 = v35[2];
  v120 = v41;
  v119 = v42;
  (v42)(v40);
  v43 = sub_21498E670();
  v44 = sub_21498FBB0();
  v45 = os_log_type_enabled(v43, v44);
  v138 = v29;
  v142 = v27;
  if (v45)
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_21488E000, v43, v44, "[iCloudMailAssistantProviderSwift] presentRemoteView()", v46, 2u);
    v47 = v46;
    v27 = v142;
    v29 = v138;
    MEMORY[0x216059AC0](v47, -1, -1);
  }

  v48 = v35[1];
  v49 = v48(v40, v34);
  v50 = (*(*v8 + 216))(v49);
  if (v50)
  {
    v121 = v50;
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v53 = v23;
    v118 = v23;
    v54 = v52;
    v56 = v139;
    v55 = v140;
    v52[2] = v51;
    v52[3] = v56;
    v52[4] = v55;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
    v58 = v27;
    v59 = &v29[*(v57 + 48)];
    v60 = &v29[*(v57 + 64)];
    v61 = sub_21498E1B0();
    (*(*(v61 - 8) + 16))(v29, v127, v61);
    v62 = v126;
    *v59 = v124;
    *(v59 + 1) = v62;
    v63 = v125;
    *v60 = v137;
    v60[1] = v63;
    swift_storeEnumTagMultiPayload();
    v137 = type metadata accessor for MALiftUISource;
    sub_21496987C(v29, v58, type metadata accessor for MALiftUISource);
    v64 = v8[6];
    v120 = v8[7];
    v65 = swift_allocObject();
    *(v65 + 16) = sub_214969AF8;
    *(v65 + 24) = v54;
    v124 = v51;

    sub_21490D9F8(v139);

    v140 = v54;

    v66 = sub_21498E170();
    v68 = v67;
    v69 = v122;
    v70 = v123[5];
    v125 = v70;
    v127 = sub_21498E5D0();
    v71 = *(v127 - 8);
    v126 = *(v71 + 56);
    v139 = v71 + 56;
    v126(v70 + v53, 1, 1, v127);
    *v53 = v66;
    v53[1] = v68;
    v72 = v135;
    *v135 = v66;
    *(v72 + 8) = v68;
    v73 = v142;
    sub_21496987C(v142, v72 + v69[5], v137);
    v74 = v120;
    *(v72 + v69[9]) = v120;
    *(v72 + v69[10]) = v64;
    v75 = (v72 + v69[7]);
    *v75 = sub_21496A344;
    v75[1] = v65;
    v76 = sub_21498E8C0();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();

    v79 = v74;
    v123 = v64;
    v80 = sub_21498E8B0();
    v81 = swift_allocObject();
    v83 = v130;
    v82 = v131;
    v84 = v128;
    (*(v130 + 104))(v128, *MEMORY[0x277D245A0], v131);
    LOBYTE(v63) = sub_21498E500();
    (*(v83 + 8))(v84, v82);
    *(v81 + 16) = v63 & 1;
    v85 = v132;
    *v132 = v81;
    v86 = *MEMORY[0x277D23258];
    v87 = sub_21498E7C0();
    v88 = *(v87 - 8);
    (*(v88 + 104))(v85, v86, v87);
    (*(v88 + 56))(v85, 0, 1, v87);
    sub_21498E8E0();
    v89 = v133;
    sub_21496987C(v73, v133, v137);
    (*(v129 + 56))(v89, 0, 1, v141);
    v90 = type metadata accessor for MARemoteViewModel(0);
    aBlock = 0u;
    v144 = 0u;
    v145 = 0;
    v91 = *(v90 + 48);
    v92 = *(v90 + 52);
    swift_allocObject();
    v93 = v123;

    v94 = sub_21490B164(v93, v89, v80, &aBlock);
    v95 = v72 + v69[6];
    *v95 = sub_21496A348;
    *(v95 + 8) = v94;
    *(v95 + 16) = 0;
    v96 = v125;
    v97 = v118;
    sub_2148AA824(v125 + v118, v72 + v69[11], &qword_27CA1A320, &unk_2149916D0);
    v98 = v97;
    v99 = v136;
    sub_2148AA824(v96 + v97, v136, &qword_27CA1A320, &unk_2149916D0);
    v100 = type metadata accessor for MARemoteViewDelegate(0);
    v101 = *(v100 + 48);
    v102 = *(v100 + 52);
    v103 = swift_allocObject();
    v104 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
    v126(v103 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID, 1, 1, v127);
    v105 = qword_281190DA8;
    swift_retain_n();
    if (v105 != -1)
    {
      swift_once();
    }

    sub_2149698E8(v98, type metadata accessor for TracingContext);
    sub_2149698E8(v142, type metadata accessor for MALiftUISource);
    sub_2149698E8(v138, type metadata accessor for MALiftUISource);
    v106 = sub_21498E600();
    __swift_project_value_buffer(v106, qword_281194E30);
    *(v103 + 16) = "LoadRemoteView";
    *(v103 + 24) = 14;
    *(v103 + 32) = 2;
    swift_beginAccess();
    sub_21489B818(v99, v103 + v104);
    swift_endAccess();
    v107 = (v103 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
    *v107 = sub_21496A34C;
    v107[1] = v94;

    *(v72 + v69[8]) = v103;
    sub_21496987C(v72, v134, type metadata accessor for MARemoteView);
    v108 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB68, &qword_21499D5E0));
    v109 = sub_21498EE80();
    v145 = sub_21496720C;
    v146 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v144 = sub_2148A457C;
    *(&v144 + 1) = &block_descriptor_113;
    v110 = _Block_copy(&aBlock);
    v111 = v121;
    [v121 presentViewController:v109 animated:1 completion:v110];
    _Block_release(v110);

    return sub_2149698E8(v72, type metadata accessor for MARemoteView);
  }

  else
  {
    v113 = v121;
    v119(v121, v120, v34);
    v114 = sub_21498E670();
    v115 = sub_21498FBB0();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_21488E000, v114, v115, "[iCloudMailAssistantProviderSwift] presentRemoteView - delegate is not set", v116, 2u);
      MEMORY[0x216059AC0](v116, -1, -1);
    }

    return v48(v113, v34);
  }
}

uint64_t sub_214963B74(void *a1, char *a2)
{
  v4 = type metadata accessor for MARemoteView(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_214963C88(a1, a2, (&v14 - v9));
  sub_21496987C(v10, v8, type metadata accessor for MARemoteView);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB68, &qword_21499D5E0));
  v12 = sub_21498EE80();
  sub_2149698E8(v10, type metadata accessor for MARemoteView);
  return v12;
}

uint64_t sub_214963C88@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v118 = a2;
  v117 = a1;
  v119 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v126 = &v106 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v125 = &v106 - v9;
  v10 = sub_21498E510();
  v122 = *(v10 - 8);
  v123 = v10;
  v11 = *(v122 + 64);
  MEMORY[0x28223BE20](v10);
  v120 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = (&v106 - v15);
  v116 = type metadata accessor for TracingContext(0);
  v16 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for MALiftUISource(0);
  v121 = *(v130 - 8);
  v19 = *(v121 + 64);
  v20 = MEMORY[0x28223BE20](v130);
  v129 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v131 = &v106 - v22;
  v23 = sub_21498F8C0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v106 - v27;
  v29 = sub_21498E1B0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v115 = *(v3 + 48);
  v35 = sub_21489E320(v115);
  *&v132[0] = 0xD00000000000002DLL;
  *(&v132[0] + 1) = 0x80000002149A1950;
  v134 = v35;
  v135 = v36;
  v134 = sub_21498F970();
  v135 = v37;
  sub_21498F920();
  sub_21498E1A0();
  result = (*(v30 + 48))(v28, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v127 = v29;
    v128 = v30;
    (*(v30 + 32))(v33, v28, v29);
    v39 = sub_21498DF70();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    sub_21498DF60();
    LOBYTE(v132[0]) = 2;
    sub_21496999C();
    v42 = sub_21498DF50();
    v113 = v18;
    v43 = v42;
    v45 = v44;

    sub_21498F8B0();
    v46 = sub_21498F890();
    if (v47)
    {
      v48 = v47;
      v114 = v46;
      sub_21489B4F8(v43, v45);
    }

    else
    {
      sub_21489B4F8(v43, v45);
      v114 = 0;
      v48 = 0xE000000000000000;
    }

    v49 = v131;
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = swift_allocObject();
    v52 = v117;
    v51[2] = v50;
    v51[3] = v52;
    v51[4] = v118;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
    v54 = *(v53 + 48);
    v55 = (v49 + *(v53 + 64));
    (*(v128 + 16))(v49, v33, v127);
    *(v49 + v54) = xmmword_214994690;
    *v55 = v114;
    v55[1] = v48;
    swift_storeEnumTagMultiPayload();
    v56 = v129;
    v108 = type metadata accessor for MALiftUISource;
    sub_21496987C(v49, v129, type metadata accessor for MALiftUISource);
    v107 = *(v34 + 56);
    v57 = v56;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_2149699F0;
    *(v58 + 24) = v51;
    v114 = v50;

    sub_21490D9F8(v52);
    v117 = v51;

    v118 = v33;
    v59 = sub_21498E170();
    v61 = v60;
    v62 = *(v116 + 20);
    v109 = v62;
    v111 = sub_21498E5D0();
    v63 = *(v111 - 8);
    v110 = *(v63 + 56);
    v112 = v63 + 56;
    v64 = v113;
    v110(v113 + v62, 1, 1, v111);
    *v64 = v59;
    v64[1] = v61;
    v65 = v119;
    *v119 = v59;
    v65[1] = v61;
    v66 = v65;
    v67 = type metadata accessor for MARemoteView(0);
    sub_21496987C(v57, v66 + v67[5], type metadata accessor for MALiftUISource);
    v68 = v107;
    *(v66 + v67[9]) = v107;
    v69 = v115;
    *(v66 + v67[10]) = v115;
    v70 = (v66 + v67[7]);
    *v70 = sub_21496A344;
    v70[1] = v58;
    v71 = sub_21498E8C0();
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();

    v74 = v68;
    v75 = v64;
    v115 = v69;
    v116 = v58;
    v76 = v66;

    v77 = sub_21498E8B0();
    v78 = swift_allocObject();
    v80 = v122;
    v79 = v123;
    v81 = v120;
    (*(v122 + 104))(v120, *MEMORY[0x277D245A0], v123);
    v82 = sub_21498E500();
    (*(v80 + 8))(v81, v79);
    v83 = v82 & 1;
    v84 = v129;
    *(v78 + 16) = v83;
    v85 = v124;
    *v124 = v78;
    v86 = *MEMORY[0x277D23258];
    v87 = sub_21498E7C0();
    v88 = *(v87 - 8);
    (*(v88 + 104))(v85, v86, v87);
    (*(v88 + 56))(v85, 0, 1, v87);
    sub_21498E8E0();
    v89 = v125;
    sub_21496987C(v84, v125, v108);
    (*(v121 + 56))(v89, 0, 1, v130);
    v90 = type metadata accessor for MARemoteViewModel(0);
    memset(v132, 0, sizeof(v132));
    v133 = 0;
    v91 = *(v90 + 48);
    v92 = *(v90 + 52);
    swift_allocObject();
    v93 = v115;

    v94 = sub_21490B164(v93, v89, v77, v132);
    v95 = v76 + v67[6];
    *v95 = sub_21496A348;
    *(v95 + 8) = v94;
    *(v95 + 16) = 0;
    v96 = v109;
    sub_2148AA824(v75 + v109, v76 + v67[11], &qword_27CA1A320, &unk_2149916D0);
    v97 = v126;
    sub_2148AA824(v75 + v96, v126, &qword_27CA1A320, &unk_2149916D0);
    v98 = type metadata accessor for MARemoteViewDelegate(0);
    v99 = *(v98 + 48);
    v100 = *(v98 + 52);
    v101 = swift_allocObject();
    v102 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
    v110((v101 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID), 1, 1, v111);
    v103 = qword_281190DA8;
    swift_retain_n();
    if (v103 != -1)
    {
      swift_once();
    }

    sub_2149698E8(v75, type metadata accessor for TracingContext);
    sub_2149698E8(v84, type metadata accessor for MALiftUISource);
    sub_2149698E8(v131, type metadata accessor for MALiftUISource);
    (*(v128 + 8))(v118, v127);
    v104 = sub_21498E600();
    __swift_project_value_buffer(v104, qword_281194E30);
    *(v101 + 16) = "LoadRemoteView";
    *(v101 + 24) = 14;
    *(v101 + 32) = 2;
    swift_beginAccess();
    sub_21489B818(v97, v101 + v102);
    swift_endAccess();
    v105 = (v101 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
    *v105 = sub_21496A34C;
    v105[1] = v94;

    *(v76 + v67[8]) = v101;
  }

  return result;
}

uint64_t sub_214964878(int a1)
{
  v2 = type metadata accessor for MARemoteView(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  sub_21496497C(a1, (&v12 - v7));
  sub_21496987C(v8, v6, type metadata accessor for MARemoteView);
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB68, &qword_21499D5E0));
  v10 = sub_21498EE80();
  sub_2149698E8(v8, type metadata accessor for MARemoteView);
  return v10;
}

uint64_t sub_21496497C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  LODWORD(v115) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v110 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = &v110 - v10;
  v11 = sub_21498E510();
  v120 = *(v11 - 8);
  v121 = v11;
  v12 = *(v120 + 64);
  MEMORY[0x28223BE20](v11);
  v118 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v122 = (&v110 - v16);
  v117 = type metadata accessor for TracingContext(0);
  v17 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v124 = (&v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = type metadata accessor for MALiftUISource(0);
  v119 = *(v130 - 8);
  v19 = *(v119 + 64);
  v20 = MEMORY[0x28223BE20](v130);
  v129 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v131 = &v110 - v22;
  v23 = sub_21498F8C0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v113 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v110 - v28;
  v30 = sub_21498E1B0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = *(v3 + 48);
  v35 = sub_21489E320(v116);
  *&v132[0] = 0xD00000000000002FLL;
  *(&v132[0] + 1) = 0x80000002149A34E0;
  v134 = v35;
  v135 = v36;
  v134 = sub_21498F970();
  v135 = v37;
  sub_21498F920();
  sub_21498E1A0();
  result = (*(v31 + 48))(v29, 1, v30);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v127 = v30;
    v128 = v31;
    v39 = *(v31 + 32);
    v40 = v34;
    v39(v34, v29, v30);
    v41 = v3;
    v42 = *(v3 + 32);
    v43 = *&v42[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCategoryDisabledKey];
    v44 = *&v42[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_mailCleanupIsCategoryDisabledKey + 8];
    v45 = sub_21498F840();
    v46 = [v42 BOOLForKey_];

    v47 = *&v42[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_useBulkActionServiceForDashboardKey];
    v48 = *&v42[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_useBulkActionServiceForDashboardKey + 8];
    v49 = sub_21498F840();
    v50 = [v42 BOOLForKey_];

    v51 = sub_21498DF70();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    sub_21498DF60();
    LOBYTE(v132[0]) = v115;
    BYTE1(v132[0]) = v46;
    BYTE2(v132[0]) = v50;
    sub_214969948();
    v54 = sub_21498DF50();
    v126 = a2;
    v55 = v54;
    v57 = v56;

    sub_21498F8B0();
    v58 = sub_21498F890();
    if (v59)
    {
      v60 = v58;
      v61 = v59;
      sub_21489B4F8(v55, v57);
    }

    else
    {
      sub_21489B4F8(v55, v57);
      v60 = 0;
      v61 = 0xE000000000000000;
    }

    v62 = v131;
    v114 = v40;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
    v64 = *(v63 + 48);
    v65 = (v62 + *(v63 + 64));
    (*(v128 + 16))(v62, v40, v127);
    *(v62 + v64) = xmmword_214994690;
    *v65 = v60;
    v65[1] = v61;
    swift_storeEnumTagMultiPayload();
    v66 = v129;
    v110 = type metadata accessor for MALiftUISource;
    sub_21496987C(v62, v129, type metadata accessor for MALiftUISource);
    v67 = *(v41 + 56);
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    v69 = sub_21498E170();
    v71 = v70;
    v72 = *(v117 + 20);
    v111 = v72;
    v113 = sub_21498E5D0();
    v73 = *(v113 - 1);
    v112 = *(v73 + 56);
    v115 = v73 + 56;
    v74 = v124;
    v112(v124 + v72, 1, 1, v113);
    *v74 = v69;
    v74[1] = v71;
    v75 = v126;
    *v126 = v69;
    v75[1] = v71;
    v76 = type metadata accessor for MARemoteView(0);
    sub_21496987C(v66, v75 + v76[5], type metadata accessor for MALiftUISource);
    *(v75 + v76[9]) = v67;
    v77 = v116;
    *(v75 + v76[10]) = v116;
    v78 = (v75 + v76[7]);
    *v78 = sub_21496A344;
    v78[1] = v68;
    v79 = sub_21498E8C0();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();

    v82 = v67;
    v116 = v77;
    v117 = v68;

    v83 = sub_21498E8B0();
    v84 = swift_allocObject();
    v86 = v120;
    v85 = v121;
    v87 = v118;
    (*(v120 + 104))(v118, *MEMORY[0x277D245A0], v121);
    LOBYTE(v68) = sub_21498E500();
    (*(v86 + 8))(v87, v85);
    *(v84 + 16) = v68 & 1;
    v88 = v122;
    *v122 = v84;
    v89 = *MEMORY[0x277D23258];
    v90 = sub_21498E7C0();
    v91 = *(v90 - 8);
    (*(v91 + 104))(v88, v89, v90);
    (*(v91 + 56))(v88, 0, 1, v90);
    v92 = v126;
    sub_21498E8E0();
    v93 = v123;
    sub_21496987C(v66, v123, v110);
    (*(v119 + 56))(v93, 0, 1, v130);
    v94 = type metadata accessor for MARemoteViewModel(0);
    memset(v132, 0, sizeof(v132));
    v133 = 0;
    v95 = *(v94 + 48);
    v96 = *(v94 + 52);
    swift_allocObject();
    v97 = v116;

    v98 = sub_21490B164(v97, v93, v83, v132);
    v99 = v92 + v76[6];
    *v99 = sub_21496A348;
    *(v99 + 1) = v98;
    v99[16] = 0;
    v100 = v111;
    sub_2148AA824(v74 + v111, v92 + v76[11], &qword_27CA1A320, &unk_2149916D0);
    v101 = v125;
    sub_2148AA824(v74 + v100, v125, &qword_27CA1A320, &unk_2149916D0);
    v102 = type metadata accessor for MARemoteViewDelegate(0);
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    v105 = swift_allocObject();
    v106 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
    v112((v105 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID), 1, 1, v113);
    v107 = qword_281190DA8;

    if (v107 != -1)
    {
      swift_once();
    }

    sub_2149698E8(v74, type metadata accessor for TracingContext);
    sub_2149698E8(v129, type metadata accessor for MALiftUISource);
    sub_2149698E8(v131, type metadata accessor for MALiftUISource);
    (*(v128 + 8))(v114, v127);
    v108 = sub_21498E600();
    __swift_project_value_buffer(v108, qword_281194E30);
    *(v105 + 16) = "LoadRemoteView";
    *(v105 + 24) = 14;
    *(v105 + 32) = 2;
    swift_beginAccess();
    sub_21489B818(v101, v105 + v106);
    result = swift_endAccess();
    v109 = (v105 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
    *v109 = sub_21496A34C;
    v109[1] = v98;
    *(v92 + v76[8]) = v105;
  }

  return result;
}

uint64_t sub_2149654E8(void (*a1)(char *, uint64_t), uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB70, &qword_21499D5E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v19 - v6);
  v8 = type metadata accessor for MARemoteView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_2149656D4(a1, a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21489DFCC(v7, &qword_27CA1CB70, &qword_21499D5E8);
    return 0;
  }

  else
  {
    sub_21490D5B4(v7, v15);
    sub_21496987C(v15, v13, type metadata accessor for MARemoteView);
    v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB68, &qword_21499D5E0));
    v18 = sub_21498EE80();
    sub_2149698E8(v15, type metadata accessor for MARemoteView);
    return v18;
  }
}

uint64_t sub_2149656D4@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v163 = a2;
  v165 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v145 = &v139 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v152 = &v139 - v9;
  v10 = sub_21498E510();
  v149 = *(v10 - 8);
  v150 = v10;
  v11 = *(v149 + 64);
  MEMORY[0x28223BE20](v10);
  v147 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v151 = (&v139 - v15);
  v146 = type metadata accessor for TracingContext(0);
  v16 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v18 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for MALiftUISource(0);
  v148 = *(v154 - 8);
  v19 = *(v148 + 64);
  v20 = MEMORY[0x28223BE20](v154);
  v22 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v139 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v156 = &v139 - v27;
  v28 = sub_21498E1B0();
  v158 = *(v28 - 8);
  v29 = *(v158 + 64);
  MEMORY[0x28223BE20](v28);
  v157 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21498E690();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v159 = &v139 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v139 - v39;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v31, qword_281194E18);
  v166 = v31;
  v167 = v32;
  v42 = *(v32 + 16);
  v160 = v41;
  v161 = v42;
  v162 = v32 + 16;
  v42(v40);
  v43 = sub_21498E670();
  v44 = sub_21498FB90();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v155 = v28;
    v46 = v24;
    v47 = v22;
    v48 = a3;
    v49 = v45;
    *v45 = 0;
    _os_log_impl(&dword_21488E000, v43, v44, "[iCloudMailAssistantProviderSwift] createTipModalViewController()", v45, 2u);
    v50 = v49;
    a3 = v48;
    v22 = v47;
    v24 = v46;
    v28 = v155;
    MEMORY[0x216059AC0](v50, -1, -1);
  }

  v153 = v18;
  v51 = a3;

  v52 = v166;
  v53 = v167[1];
  ++v167;
  v53(v40, v166);
  v54 = *(v164 + 64);
  v55 = v163;
  sub_21494F990(v165, v163, v172);
  memcpy(v173, v172, 0x179uLL);
  if (get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(v173) == 1)
  {
    v56 = v36;
    (v161)(v36, v160, v52);

    v57 = sub_21498E670();
    v58 = sub_21498FB90();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = v53;
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v171[0] = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_2149079F4(v165, v55, v171);
      _os_log_impl(&dword_21488E000, v57, v58, "[iCloudMailAssistantProviderSwift] createTipModalViewController -- tip not found: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x216059AC0](v61, -1, -1);
      MEMORY[0x216059AC0](v60, -1, -1);

      v59(v56, v52);
    }

    else
    {

      v53(v36, v52);
    }

    v82 = type metadata accessor for MARemoteView(0);
    v83 = *(*(v82 - 8) + 56);
    v84 = v51;
    return v83(v84, 1, 1, v82);
  }

  v165 = v53;
  v62 = v173[13];
  v63 = v51;
  if (!v173[13] || !v173[15])
  {
LABEL_13:
    v71 = v159;
    v72 = v166;
    (v161)(v159, v160, v166);
    memcpy(v171, v172, 0x179uLL);
    sub_2148D8FC8(v171, v170);
    v73 = sub_21498E670();
    v74 = sub_21498FB90();
    sub_21489DFCC(v172, &qword_27CA1AAB0, &qword_214993648);
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v169 = v76;
      *v75 = 136315138;
      memcpy(v168, v173, sizeof(v168));
      v77 = MATip.description.getter();
      v78 = v63;
      v80 = v79;
      memcpy(v170, v168, 0x179uLL);
      sub_2148F6AF8(v170);
      v81 = sub_2149079F4(v77, v80, &v169);
      v63 = v78;

      *(v75 + 4) = v81;
      _os_log_impl(&dword_21488E000, v73, v74, "[iCloudMailAssistantProviderSwift] createTipModalViewController -- modal action not found: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x216059AC0](v76, -1, -1);
      MEMORY[0x216059AC0](v75, -1, -1);
    }

    else
    {
      sub_21489DFCC(v172, &qword_27CA1AAB0, &qword_214993648);
    }

    v165(v71, v72);
    v82 = type metadata accessor for MARemoteView(0);
    v83 = *(*(v82 - 8) + 56);
    v84 = v63;
    return v83(v84, 1, 1, v82);
  }

  v144 = v24;
  v163 = v51;
  v64 = v173[12];
  v65 = v173[17];
  v141 = v173[18];
  v142 = v173[16];
  v143 = v173[19];
  sub_2148AA824(&v173[12], v171, &qword_27CA1B9F0, &qword_2149970D0);

  v66 = v156;
  sub_21498E1A0();

  v67 = v158;
  if ((*(v158 + 48))(v66, 1, v28) == 1)
  {
    sub_21489DFCC(&v173[12], &qword_27CA1B9F0, &qword_2149970D0);
    v68 = &qword_27CA1A348;
    v69 = &qword_214991700;
    v70 = v66;
LABEL_12:
    sub_21489DFCC(v70, v68, v69);
    v63 = v163;
    goto LABEL_13;
  }

  (*(v67 + 32))(v157, v66, v28);
  if ((v64 != 0x6C61646F6DLL || v62 != 0xE500000000000000) && (sub_214990080() & 1) == 0)
  {
    (*(v67 + 8))(v157, v28);
    v68 = &qword_27CA1B9F0;
    v69 = &qword_2149970D0;
    v70 = &v173[12];
    goto LABEL_12;
  }

  sub_21489DFCC(v172, &qword_27CA1AAB0, &qword_214993648);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
  v87 = v144;
  v88 = &v144[*(v86 + 48)];
  v89 = v28;
  v90 = &v144[*(v86 + 64)];
  v91 = *(v67 + 16);
  v155 = v89;
  v91(v144, v157);
  v92 = v141;
  *v88 = v142;
  *(v88 + 1) = v65;
  v93 = v143;
  *v90 = v92;
  *(v90 + 1) = v93;
  swift_storeEnumTagMultiPayload();
  v94 = v22;
  v140 = v22;
  v161 = type metadata accessor for MALiftUISource;
  sub_21496987C(v87, v22, type metadata accessor for MALiftUISource);
  v95 = *(v164 + 48);
  v167 = *(v164 + 56);
  v96 = swift_allocObject();
  *(v96 + 16) = 0;
  *(v96 + 24) = 0;

  v97 = sub_21498E170();
  v99 = v98;
  v100 = *(v146 + 20);
  v162 = v100;
  v165 = sub_21498E5D0();
  v101 = *(v165 - 1);
  v164 = *(v101 + 56);
  v166 = v101 + 56;
  v102 = v153;
  (v164)(v153 + v100, 1, 1, v165);
  *v102 = v97;
  v102[1] = v99;
  v103 = v163;
  *v163 = v97;
  v103[1] = v99;
  v104 = type metadata accessor for MARemoteView(0);
  sub_21496987C(v94, v103 + v104[5], type metadata accessor for MALiftUISource);
  v105 = v167;
  *(v103 + v104[9]) = v167;
  *(v103 + v104[10]) = v95;
  v106 = (v103 + v104[7]);
  *v106 = sub_2149698E4;
  v106[1] = v96;
  v107 = sub_21498E8C0();
  v108 = *(v107 + 48);
  v109 = *(v107 + 52);
  swift_allocObject();

  v110 = v105;
  v160 = v95;
  v167 = v96;

  v111 = sub_21498E8B0();
  v112 = swift_allocObject();
  v114 = v149;
  v113 = v150;
  v115 = v147;
  (*(v149 + 104))(v147, *MEMORY[0x277D245A0], v150);
  LOBYTE(v105) = sub_21498E500();
  (*(v114 + 8))(v115, v113);
  v116 = v105 & 1;
  v117 = v145;
  *(v112 + 16) = v116;
  v118 = v151;
  *v151 = v112;
  v119 = *MEMORY[0x277D23258];
  v120 = sub_21498E7C0();
  v121 = *(v120 - 8);
  (*(v121 + 104))(v118, v119, v120);
  (*(v121 + 56))(v118, 0, 1, v120);
  sub_21498E8E0();
  v122 = v152;
  sub_21496987C(v140, v152, v161);
  (*(v148 + 56))(v122, 0, 1, v154);
  v123 = type metadata accessor for MARemoteViewModel(0);
  memset(v171, 0, 40);
  v124 = *(v123 + 48);
  v125 = *(v123 + 52);
  swift_allocObject();
  v126 = v160;

  v127 = sub_21490B164(v126, v122, v111, v171);
  v128 = v103 + v104[6];
  *v128 = sub_21489B760;
  *(v128 + 1) = v127;
  v128[16] = 0;
  v129 = v162;
  v130 = v153;
  sub_2148AA824(v153 + v162, v103 + v104[11], &qword_27CA1A320, &unk_2149916D0);
  sub_2148AA824(v130 + v129, v117, &qword_27CA1A320, &unk_2149916D0);
  v131 = type metadata accessor for MARemoteViewDelegate(0);
  v132 = *(v131 + 48);
  v133 = *(v131 + 52);
  v134 = swift_allocObject();
  v135 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  (v164)(v134 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID, 1, 1, v165);
  v136 = qword_281190DA8;
  swift_retain_n();
  if (v136 != -1)
  {
    swift_once();
  }

  sub_21489DFCC(&v173[12], &qword_27CA1B9F0, &qword_2149970D0);

  sub_2149698E8(v130, type metadata accessor for TracingContext);
  sub_2149698E8(v140, type metadata accessor for MALiftUISource);
  sub_2149698E8(v144, type metadata accessor for MALiftUISource);
  (*(v158 + 8))(v157, v155);
  v137 = sub_21498E600();
  __swift_project_value_buffer(v137, qword_281194E30);
  *(v134 + 16) = "LoadRemoteView";
  *(v134 + 24) = 14;
  *(v134 + 32) = 2;
  swift_beginAccess();
  sub_21489B818(v117, v134 + v135);
  swift_endAccess();
  v138 = (v134 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
  *v138 = sub_21489B7D8;
  v138[1] = v127;
  *(v103 + v104[8]) = v134;
  return (*(*(v104 - 1) + 56))(v103, 0, 1, v104);
}

uint64_t sub_2149666BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for iCloudMailAssistantProviderSwift();
  result = sub_21498E9D0();
  *a1 = result;
  return result;
}

uint64_t sub_2149666F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  sub_21498FAB0();
  v7[14] = sub_21498FAA0();
  v9 = sub_21498FA50();
  v7[15] = v9;
  v7[16] = v8;

  return MEMORY[0x2822009F8](sub_214966794, v9, v8);
}

uint64_t sub_214966794()
{
  *(v0 + 136) = *(*(v0 + 80) + 64);

  return MEMORY[0x2822009F8](sub_214966808, 0, 0);
}

uint64_t sub_214966808()
{
  v1 = *(v0 + 88);
  v2 = *__swift_project_boxed_opaque_existential_1((*(v0 + 136) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository), *(*(v0 + 136) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository + 24));
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  *(v0 + 64) = v3;
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_2149668D0;

  return sub_21493A828((v0 + 16));
}

uint64_t sub_2149668D0()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2149669CC, 0, 0);
}

uint64_t sub_2149669CC()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[13];
    v1();
  }

  v3 = v0[17];

  v4 = v0[15];
  v5 = v0[16];

  return MEMORY[0x2822009F8](sub_214966A44, v4, v5);
}

uint64_t sub_214966A44()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_214966AA4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v39[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v39 - v7;
  v9 = sub_21498E320();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + 32);

    sub_21498E310();
    v16 = sub_21498E2B0();
    v17 = *&v15[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey];
    v18 = *&v15[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_tipsStaleSinceKey + 8];
    v19 = sub_21498F840();
    [v15 setValue:v16 forKey:v19];

    (*(v10 + 8))(v13, v9);
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21 = *(v20 + 32);

    sub_21498E310();
    v22 = sub_21498E2B0();
    v23 = *&v21[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey];
    v24 = *&v21[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_rulesStaleSinceKey + 8];
    v25 = sub_21498F840();
    [v21 setValue:v22 forKey:v25];

    (*(v10 + 8))(v13, v9);
  }

  swift_beginAccess();
  v26 = swift_weakLoadStrong();
  if (v26)
  {
    v27 = *(v26 + 32);

    sub_21498E310();
    v28 = sub_21498E2B0();
    v29 = *&v27[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey];
    v30 = *&v27[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey + 8];
    v31 = sub_21498F840();
    [v27 setValue:v28 forKey:v31];

    (*(v10 + 8))(v13, v9);
  }

  swift_beginAccess();
  v32 = swift_weakLoadStrong();
  if (v32)
  {
    v33 = *(v32 + 64);

    sub_21494CF34();
  }

  if (a2)
  {
    a2(v32);
  }

  v34 = sub_21498FAE0();
  (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
  sub_21498FAB0();

  v35 = sub_21498FAA0();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = a1;
  sub_214926C38(0, 0, v8, &unk_21499D758, v36);
}

uint64_t sub_214966E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21498FAB0();
  v4[7] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_214966F30, v6, v5);
}

uint64_t sub_214966F30()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 64);

    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_214967054;

    return sub_21494B3A8(0, 1);
  }

  else
  {
    v5 = *(v0 + 56);

    **(v0 + 40) = *(v0 + 80) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_214967054()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_214967198, v5, v4);
}

uint64_t sub_214967198()
{
  v1 = *(v0 + 56);

  **(v0 + 40) = *(v0 + 80) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21496720C()
{
  v0 = sub_21498E690();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281194E18);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_21498E670();
  v7 = sub_21498FBB0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "[iCloudMailAssistantProviderSwift] presentRemoteView - presented", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_214967398(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26[-v6];
  v8 = sub_21498E320();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + 32);

    sub_21498E310();
    v15 = sub_21498E2B0();
    v16 = *&v14[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey];
    v17 = *&v14[OBJC_IVAR____TtCE19iCloudMailAssistantCSo14NSUserDefaults23MailCleanupUserDefaults_preferencesStaleSinceKey + 8];
    v18 = sub_21498F840();
    [v14 setValue:v15 forKey:v18];

    (*(v9 + 8))(v12, v8);
  }

  swift_beginAccess();
  v19 = swift_weakLoadStrong();
  if (v19)
  {
    v20 = *(v19 + 64);

    sub_21494CF34();
  }

  if (a2)
  {
    a2(v19);
  }

  v21 = sub_21498FAE0();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  sub_21498FAB0();

  v22 = sub_21498FAA0();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a1;
  sub_214926C38(0, 0, v7, &unk_21499D748, v23);
}

uint64_t sub_21496764C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_21498FAB0();
  v4[7] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2149676E4, v6, v5);
}

uint64_t sub_2149676E4()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 64);

    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_214967808;

    return sub_21494B3A8(0, 1);
  }

  else
  {
    v5 = *(v0 + 56);

    **(v0 + 40) = *(v0 + 80) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_214967808()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_21496A364, v5, v4);
}

uint64_t sub_21496794C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB90, &qword_21499D838);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214969EE8();
  sub_2149901C0();
  v10[15] = 0;
  sub_21498FFD0();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v10[14] = 1;
  sub_21498FFD0();
  v10[13] = 2;
  sub_21498FFD0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_214967AEC()
{
  v1 = 0x5341426573557369;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_214967B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21496A214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214967B7C(uint64_t a1)
{
  v2 = sub_214969EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214967BB8(uint64_t a1)
{
  v2 = sub_214969EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214967C18(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CBA0, &qword_21499D840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214969F3C();
  sub_2149901C0();
  v11[15] = a2;
  sub_214969F90();
  sub_21498FFE0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_214967D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x507972746E456163 && a2 == 0xEC000000746E696FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214967E0C(uint64_t a1)
{
  v2 = sub_214969F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214967E48(uint64_t a1)
{
  v2 = sub_214969F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214967EA0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_214967EB0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_214967F24@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *_s19iCloudMailAssistant01iabC13ProviderSwiftC12appleAccount12accountStore13shouldPrepare0J10ClearCacheACSo9ACAccountC_So0nI0CS2btcfC_0(void *a1, void *a2, int a3, char a4)
{
  LODWORD(v5) = a3;
  v60 = a1;
  v7 = sub_21498F710();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = sub_21498E350();
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v59);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_21498E690();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v57[-v20];
  if (a4)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v21, v22, v14);
    v23 = sub_21498E670();
    v24 = sub_21498FBB0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v58 = v5;
      v5 = a2;
      v26 = v25;
      *v25 = 0;
      _os_log_impl(&dword_21488E000, v23, v24, "[iCloudMailAssistantProviderSwift] init - shouldClearCache is no longer supported.", v25, 2u);
      v27 = v26;
      a2 = v5;
      LOBYTE(v5) = v58;
      MEMORY[0x216059AC0](v27, -1, -1);
    }

    (*(v15 + 8))(v21, v14);
  }

  if (v5)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v14, qword_281194E18);
    (*(v15 + 16))(v19, v28, v14);
    v29 = sub_21498E670();
    v30 = sub_21498FBB0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = a2;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_21488E000, v29, v30, "[iCloudMailAssistantProviderSwift] init - shouldPrepare is no longer supported.", v32, 2u);
      v33 = v32;
      a2 = v31;
      MEMORY[0x216059AC0](v33, -1, -1);
    }

    (*(v15 + 8))(v19, v14);
  }

  v34 = type metadata accessor for MARepositoryDefault();
  v35 = swift_allocObject();
  v36 = a2;
  v37 = v60;
  sub_21498E340();
  v38 = sub_21498E330();
  v40 = v39;
  (*(v10 + 8))(v13, v59);
  v35[2] = v38;
  v35[3] = v40;
  v35[4] = v36;
  v35[5] = v37;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v42 = v41;
  v43 = [objc_opt_self() defaultCenter];
  v44 = v61;
  sub_21496BCB8(v61);
  v45 = type metadata accessor for NetworkStatusProvider();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_214988258();
  v62[3] = v34;
  v62[4] = &off_2826CB168;
  v62[0] = v35;
  type metadata accessor for iCloudMailAssistantProviderSwift();
  v49 = swift_allocObject();
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v62, v34);
  v51 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v57[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v54 + 16))(v53);
  v55 = sub_2148D72D0(v37, v36, *v53, v42, v43, v44, v48, 0x3FE0000000000000, 0, v49);
  __swift_destroy_boxed_opaque_existential_1(v62);
  return v55;
}

uint64_t sub_2149684D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899138;

  return sub_21495F75C(a1, v4, v5, v6);
}

uint64_t sub_21496858C(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 488);
  v8 = *(v1 + 496);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_214960940(a1, v4, v5, v6, (v1 + 40), (v1 + 424), v7, v8);
}

uint64_t sub_214968664(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_214961B3C(a1, v4, v5, v6, (v1 + 40), (v1 + 424));
}

uint64_t sub_214968728(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 488);
  v8 = *(v1 + 496);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2149622E8(a1, v4, v5, v6, (v1 + 40), (v1 + 424), v7, v8);
}

uint64_t objectdestroy_13Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  if (v0[8])
  {

    v4 = v0[10];
  }

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  if (v0[18])
  {

    v8 = v0[20];

    v9 = v0[22];

    v10 = v0[24];
  }

  v11 = v0[26];

  if (v0[28])
  {

    v12 = v0[30];

    v13 = v0[32];

    v14 = v0[34];
  }

  if (v0[36])
  {

    v15 = v0[38];

    v16 = v0[40];

    v17 = v0[42];
  }

  if (v0[44])
  {

    v18 = v0[46];

    v19 = v0[48];

    v20 = v0[50];
  }

  v21 = v0[51];

  v22 = v0[54];

  v23 = v0[56];

  v24 = v0[58];

  v25 = v0[60];

  if (v0[61])
  {
    v26 = v0[62];
  }

  return MEMORY[0x2821FE8E8](v0, 504, 7);
}

uint64_t sub_214968944(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 488);
  v8 = *(v1 + 496);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_214960940(a1, v4, v5, v6, (v1 + 40), (v1 + 424), v7, v8);
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.prepare()()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214899964;

  return v6();
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.blockSender(sender:entryPoint:analytics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 304);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_214899138;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.blockSender(sender:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 312);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_214899964;

  return v10(a1, a2);
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.unblockSender(sender:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 320);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_214899964;

  return v10(a1, a2);
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.forceSync()()
{
  v2 = *(*v0 + 344);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214899964;

  return v6();
}

uint64_t dispatch thunk of iCloudMailAssistantProviderSwift.resetMailCleanup()()
{
  v2 = *(*v0 + 424);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21493093C;

  return v6();
}

uint64_t sub_214969560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21495EED8(a1, v4, v5, v6);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_214969664(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2149696AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21495E0F8(a1, v4, v5, v6);
}

uint64_t sub_214969768(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21495DA14(a1, v4, v5, v6);
}

uint64_t sub_21496987C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2149698E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214969948()
{
  result = qword_27CA1CB80;
  if (!qword_27CA1CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB80);
  }

  return result;
}

unint64_t sub_21496999C()
{
  result = qword_27CA1CB88;
  if (!qword_27CA1CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB88);
  }

  return result;
}

uint64_t sub_2149699FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_21496764C(a1, v4, v5, v6);
}

uint64_t objectdestroy_86Tm()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_72Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214969B44()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_214969B74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_214966E98(a1, v4, v5, v6);
}

uint64_t sub_214969C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2149666F8(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t getEnumTagSinglePayload for MAConsentRequestBody(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MADashboardRequestBody(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MADashboardRequestBody(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_214969EE8()
{
  result = qword_27CA1CB98;
  if (!qword_27CA1CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB98);
  }

  return result;
}

unint64_t sub_214969F3C()
{
  result = qword_27CA1CBA8;
  if (!qword_27CA1CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBA8);
  }

  return result;
}

unint64_t sub_214969F90()
{
  result = qword_27CA1CBB0;
  if (!qword_27CA1CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBB0);
  }

  return result;
}

unint64_t sub_21496A008()
{
  result = qword_27CA1CBB8;
  if (!qword_27CA1CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBB8);
  }

  return result;
}

unint64_t sub_21496A060()
{
  result = qword_27CA1CBC0;
  if (!qword_27CA1CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBC0);
  }

  return result;
}

unint64_t sub_21496A0B8()
{
  result = qword_27CA1CBC8;
  if (!qword_27CA1CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBC8);
  }

  return result;
}

unint64_t sub_21496A110()
{
  result = qword_27CA1CBD0;
  if (!qword_27CA1CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBD0);
  }

  return result;
}

unint64_t sub_21496A168()
{
  result = qword_27CA1CBD8;
  if (!qword_27CA1CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBD8);
  }

  return result;
}

unint64_t sub_21496A1C0()
{
  result = qword_27CA1CBE0;
  if (!qword_27CA1CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CBE0);
  }

  return result;
}

uint64_t sub_21496A214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000002149A3510 == a2;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002149A3530 == a2 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5341426573557369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21496A378(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65756C6176;
  if (v2 != 1)
  {
    v3 = 0x79616C6564;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x636E657265666572;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  v6 = 0x65756C6176;
  if (*a2 != 1)
  {
    v6 = 0x79616C6564;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x636E657265666572;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_214990080();
  }

  return v9 & 1;
}

uint64_t sub_21496A46C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21496A50C()
{
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_21496A598()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21496A634@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21496BC58();
  *a2 = result;
  return result;
}

void sub_21496A664(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x65756C6176;
  if (v2 != 1)
  {
    v4 = 0x79616C6564;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x636E657265666572;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_21496A6C0()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x79616C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636E657265666572;
  }
}

uint64_t sub_21496A718@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21496BC58();
  *a1 = result;
  return result;
}

uint64_t sub_21496A740(uint64_t a1)
{
  v2 = sub_21496BAEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21496A77C(uint64_t a1)
{
  v2 = sub_21496BAEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21496A7B8()
{
  v0 = sub_21498E690();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_21498E7C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21498E7B0();
  sub_21498E8A0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t *sub_21496AAD8(uint64_t *a1)
{
  v45 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = v32 - v5;
  v42 = sub_21498E7C0();
  v38 = *(v42 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v42);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C988, &qword_21499DB80);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC08, &qword_21499DB88);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21496BAEC();
  v17 = v43;
  sub_2149901B0();
  if (v17)
  {
    v28 = *(*v1 + 48);
    v29 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v1;
  }

  else
  {
    v43 = v15;
    v18 = v12;
    v19 = v39;
    v34 = v9;
    sub_2148994D0(a1, v44);
    sub_21496BAA4(&qword_27CA1A550, MEMORY[0x277D232B0]);
    v20 = v40;
    v21 = v42;
    sub_21498E740();
    v22 = *(v19 + 32);
    v32[1] = OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_reference;
    v33 = v1;
    v22(v1 + OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_reference, v20, v34);
    v44[0] = 1;
    v23 = v8;
    v24 = v18;
    v25 = v43;
    sub_21498FFA0();
    (*(v38 + 32))(v33 + OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_value, v23, v21);
    v44[0] = 2;
    sub_2148B4C20(&qword_27CA1A930, &qword_27CA1A848, &qword_214993160);
    v27 = v36;
    v26 = v37;
    sub_21498FFA0();
    (*(v41 + 8))(v25, v24);
    v30 = v33;
    (*(v35 + 32))(v33 + OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_delay, v26, v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v30;
  }
}

uint64_t sub_21496B05C()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_reference;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C988, &qword_21499DB80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_value;
  v4 = sub_21498E7C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC19iCloudMailAssistant16DelayedSetAction_delay;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DelayedSetAction()
{
  result = qword_27CA1CBE8;
  if (!qword_27CA1CBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21496B1E4()
{
  sub_214949624();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_21498E7C0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2148F7A38();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_21496B2E8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return (sub_21496B5A8)(a1);
}

uint64_t *sub_21496B4C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_21496AAD8(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_21496B5A8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_21498F510();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = sub_21498F540();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v9 = sub_21498F560();
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21496B72C, 0, 0);
}

uint64_t sub_21496B72C()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  sub_21498E750();
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];
  v21 = v0[16];
  v22 = v0[15];
  v20 = v0[13];
  v17 = v0[14];
  v18 = v0[12];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  sub_2148FFDCC();
  v16 = sub_21498FC20();
  sub_21498F550();
  sub_21498F570();
  v19 = *(v6 + 8);
  v19(v3, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v0[6] = sub_21496BA84;
  v0[7] = v11;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2148A457C;
  v0[5] = &block_descriptor_10;
  v12 = _Block_copy(v0 + 2);

  sub_21498F530();
  v0[9] = MEMORY[0x277D84F90];
  sub_21496BAA4(&qword_281190D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_2148B4C20(&qword_281190D00, &qword_27CA1C348, &qword_21499A980);
  sub_21498FD60();
  MEMORY[0x216058C80](v4, v7, v17, v12);
  _Block_release(v12);

  (*(v20 + 8))(v17, v18);
  (*(v21 + 8))(v7, v22);
  v19(v4, v5);
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_21496BA84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21496A7B8();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21496BAA4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21496BAEC()
{
  result = qword_27CA1CC10;
  if (!qword_27CA1CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CC10);
  }

  return result;
}

unint64_t sub_21496BB54()
{
  result = qword_27CA1CC18;
  if (!qword_27CA1CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CC18);
  }

  return result;
}

unint64_t sub_21496BBAC()
{
  result = qword_27CA1CC20;
  if (!qword_27CA1CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CC20);
  }

  return result;
}

unint64_t sub_21496BC04()
{
  result = qword_27CA1CC28;
  if (!qword_27CA1CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CC28);
  }

  return result;
}

uint64_t sub_21496BC58()
{
  v0 = sub_21498FEF0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21496BCB8@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_21498F700();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_21498E690();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_21498E1B0();
  v8 = *(v55 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v55);
  v49 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v42[-v12];
  v14 = sub_21498F6E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v42[-v20];
  sub_21498F6D0();
  v22 = [objc_opt_self() defaultManager];
  v50 = "tegoriesDisabledTimestamp";
  v23 = sub_21498F840();
  v24 = [v22 containerURLForSecurityApplicationGroupIdentifier_];

  if (v24)
  {
    v46 = v19;
    sub_21498E160();

    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v47 = v14;
    v48 = v4;
    v25 = v52;
    v26 = __swift_project_value_buffer(v52, qword_281194E18);
    v27 = v51;
    (*(v51 + 16))(v54, v26, v25);
    v28 = v8[2];
    v29 = v49;
    v45 = v13;
    v30 = v13;
    v31 = v55;
    v28(v49, v30, v55);
    v32 = sub_21498E670();
    v33 = sub_21498FB90();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = v44;
      *v34 = 136315138;
      sub_214976158(&unk_281192700, MEMORY[0x277CC9260]);
      v43 = v33;
      v35 = sub_214990050();
      v37 = v36;
      v38 = v8[1];
      v38(v29, v55);
      v39 = sub_2149079F4(v35, v37, &v56);
      v31 = v55;

      *(v34 + 4) = v39;
      _os_log_impl(&dword_21488E000, v32, v43, "makeMailCleanupModelConfiguration - sharedContainerURL: %s", v34, 0xCu);
      v40 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x216059AC0](v40, -1, -1);
      MEMORY[0x216059AC0](v34, -1, -1);

      (*(v27 + 8))(v54, v52);
    }

    else
    {

      v38 = v8[1];
      v38(v29, v31);
      (*(v27 + 8))(v54, v25);
    }

    v19 = v46;
    sub_21498F6C0();
    v38(v45, v31);
    v14 = v47;
    (*(v15 + 8))(v21, v47);
    (*(v15 + 32))(v21, v19, v14);
  }

  sub_21498F7C0();
  sub_214976104();
  sub_21498F730();
  (*(v15 + 16))(v19, v21, v14);
  sub_21498F6D0();
  sub_21498F720();
  return (*(v15 + 8))(v21, v14);
}

void *sub_21496C298@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 32);
    while (1)
    {
      memcpy(__dst, v7, 0x179uLL);
      memcpy(__src, v7, 0x179uLL);
      sub_2148D8FC8(__dst, v11);
      v8 = a1(__src);
      if (v3)
      {
        memcpy(v11, __src, 0x179uLL);
        return sub_2148F6AF8(v11);
      }

      if (v8)
      {
        break;
      }

      memcpy(v11, __src, 0x179uLL);
      sub_2148F6AF8(v11);
      v7 += 384;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    memcpy(v11, __src, 0x179uLL);
    nullsub_1(v11);
    v9 = v11;
  }

  else
  {
LABEL_6:
    sub_2148DA328(__dst);
    v9 = __dst;
  }

  return memcpy(a3, v9, 0x179uLL);
}

uint64_t sub_21496C3B4()
{
  v1 = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___modelContext;
  v2 = *(v0 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___modelContext);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_21496C424(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_214976060(v4);
  }

  sub_2149760F4(v2);
  return v3;
}

uint64_t sub_21496C424(uint64_t a1)
{
  v2 = sub_21498E690();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_21498F640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5F0, &qword_21499DEA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_214991720;
  v5 = type metadata accessor for MailCleanupSchemaV1.DataModel();
  v6 = sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC50, &qword_21499DEA8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_214991720;
  v8 = sub_21498F710();
  *(v7 + 56) = v8;
  *(v7 + 64) = sub_214976158(&qword_281190D88, MEMORY[0x277CDD500]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore_modelConfiguration, v8);
  sub_21498F630();
  v10 = sub_21498F610();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  return sub_21498F620();
}

id sub_21496C7C0()
{
  v1 = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel;
  if (*(v0 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel);
  }

  else
  {
    v2 = sub_21496E74C();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_21496C824(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailCleanupState();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_21498E690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_281194E18);
  (*(v12 + 16))(v15, v16, v11);
  sub_214975F78(a1, v10, type metadata accessor for MailCleanupState);
  v17 = sub_21498E670();
  v18 = sub_21498FBA0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = v2;
    v32 = v21;
    v22 = v21;
    *v20 = 136315138;
    sub_214975F78(v10, v8, type metadata accessor for MailCleanupState);
    v23 = sub_21498F8D0();
    v25 = v24;
    sub_214950444(v10, type metadata accessor for MailCleanupState);
    v26 = sub_2149079F4(v23, v25, &v32);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_21488E000, v17, v18, "[DataStore] onStateChange(%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x216059AC0](v22, -1, -1);
    v27 = v20;
    a1 = v30;
    MEMORY[0x216059AC0](v27, -1, -1);
  }

  else
  {

    sub_214950444(v10, type metadata accessor for MailCleanupState);
  }

  (*(v12 + 8))(v15, v11);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21494B028(a1);
    swift_unknownObjectRelease();
  }

  return sub_21496F778();
}

uint64_t sub_21496CB54()
{
  v1 = v0;
  v2 = type metadata accessor for MailCleanupState();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v29 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = sub_21498E380();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21496C7C0();
  sub_21498E370();
  v15 = sub_21498E360();
  v17 = v16;
  (*(v10 + 8))(v13, v9);
  v33 = v14;
  swift_getKeyPath();
  v30 = v14;
  v31 = v15;
  v32 = v17;
  v28[4] = sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3C0();
  v28[0] = 0;

  v18 = *(v1 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel);
  v28[3] = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___observationRegistrar;
  v33 = v18;
  swift_getKeyPath();

  sub_21498E3D0();

  swift_getKeyPath();
  v28[2] = sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
  v28[1] = sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState);
  v19 = v29;
  sub_21498F6A0();

  v20 = MEMORY[0x277D84F90];
  *v8 = MEMORY[0x277D84F90];
  v21 = v3[7];
  v22 = sub_21498E320();
  v23 = *(*(v22 - 8) + 56);
  v23(v8 + v21, 1, 1, v22);
  *(v8 + v3[8]) = v20;
  *(v8 + v3[9]) = 2;
  *(v8 + v3[10]) = 2;
  *(v8 + v3[11]) = 3;
  v23(v8 + v3[12], 1, 1, v22);
  *(v8 + v3[13]) = v20;
  *(v8 + v3[14]) = v20;
  v23(v8 + v3[15], 1, 1, v22);
  v24 = v3[16];
  sub_214950444(v19, type metadata accessor for MailCleanupState);
  *(v8 + v24) = v20;
  v25 = (v8 + v3[17]);
  *v25 = 0;
  v25[1] = 0;
  v23(v8 + v3[18], 1, 1, v22);
  v33 = v18;
  swift_getKeyPath();
  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  LOBYTE(v22) = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v19, v8);
  sub_214950444(v19, type metadata accessor for MailCleanupState);
  if ((v22 & 1) == 0)
  {
    sub_214975F78(v8, v19, type metadata accessor for MailCleanupState);
    v33 = v18;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v28[-2] = v18;
    v28[-1] = v19;
    sub_21498E3C0();

    sub_214950444(v19, type metadata accessor for MailCleanupState);
    sub_2148E3F20();
  }

  return sub_214950444(v8, type metadata accessor for MailCleanupState);
}

uint64_t sub_21496D0E4(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = type metadata accessor for MailCleanupState();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v15 - v8);
  v10 = sub_21496C7C0();
  v11 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___observationRegistrar;
  v17 = v10;
  swift_getKeyPath();
  v15 = sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState);
  sub_21498F6A0();

  sub_21496D43C(v7, a1, v16, v9);
  sub_214950444(v7, type metadata accessor for MailCleanupState);
  v17 = v10;
  swift_getKeyPath();
  v16 = v11;
  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  v12 = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v7, v9);
  sub_214950444(v7, type metadata accessor for MailCleanupState);
  if (!v12)
  {
    sub_214975F78(v9, v7, type metadata accessor for MailCleanupState);
    v17 = v10;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v10;
    *(&v15 - 1) = v7;
    sub_21498E3C0();

    sub_214950444(v7, type metadata accessor for MailCleanupState);
    sub_2148E3F20();
  }

  return sub_214950444(v9, type metadata accessor for MailCleanupState);
}

uint64_t sub_21496D43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MATipDismissal();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - v14);
  sub_214975F78(a1, a4, type metadata accessor for MailCleanupState);
  v16 = 0;
  v27 = *(type metadata accessor for MailCleanupState() + 24);
  v28 = a4;
  v17 = *(a4 + v27);
  v18 = v17[2];
  while (v18 != v16)
  {
    if (v16 >= v17[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    sub_214975F78(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v15, type metadata accessor for MATipDismissal);
    if (*v15 == a2 && v15[1] == a3)
    {
      return sub_214950444(v15, type metadata accessor for MATipDismissal);
    }

    ++v16;
    v20 = sub_214990080();
    result = sub_214950444(v15, type metadata accessor for MATipDismissal);
    if (v20)
    {
      return result;
    }
  }

  v22 = *(v8 + 20);

  sub_21498E310();
  *v13 = a2;
  v13[1] = a3;
  *(v13 + *(v8 + 24)) = 0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_16:
  v17 = sub_2148A9994(0, v17[2] + 1, 1, v17);
LABEL_11:
  v24 = v27;
  v23 = v28;
  v26 = v17[2];
  v25 = v17[3];
  if (v26 >= v25 >> 1)
  {
    v17 = sub_2148A9994(v25 > 1, v26 + 1, 1, v17);
  }

  v17[2] = v26 + 1;
  result = sub_214976070(v13, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26);
  *(v23 + v24) = v17;
  return result;
}

uint64_t sub_21496D6C4(char a1, char a2)
{
  *(v3 + 808) = v2;
  *(v3 + 394) = a2;
  *(v3 + 393) = a1;
  v4 = type metadata accessor for MATipDismissal();
  *(v3 + 816) = v4;
  v5 = *(v4 - 8);
  *(v3 + 824) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 832) = swift_task_alloc();
  *(v3 + 840) = swift_task_alloc();
  v7 = type metadata accessor for MailCleanupState();
  *(v3 + 848) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 856) = swift_task_alloc();
  *(v3 + 864) = swift_task_alloc();
  *(v3 + 872) = swift_task_alloc();
  v9 = sub_21498E690();
  *(v3 + 880) = v9;
  v10 = *(v9 - 8);
  *(v3 + 888) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 896) = swift_task_alloc();
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  v12 = qword_281194E50;
  *(v3 + 904) = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21496D874, v12, 0);
}

void *sub_21496D874()
{
  v27 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBA0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 896);
  v9 = *(v0 + 888);
  v10 = *(v0 + 880);
  if (v7)
  {
    v11 = *(v0 + 393);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    if (v11)
    {
      v14 = 0x646563726F66;
    }

    else
    {
      v14 = 0;
    }

    if (v11)
    {
      v15 = 0xE600000000000000;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16 = sub_2149079F4(v14, v15, &v26);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21488E000, v5, v6, "[DataStore] sync(%s)", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x216059AC0](v13, -1, -1);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v17 = *(v0 + 808);
  result = sub_21496C7C0();
  *(v0 + 912) = result;
  v19 = result[2];
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    result[2] = v21;
    v22 = swift_task_alloc();
    *(v0 + 920) = v22;
    *v22 = v0;
    v22[1] = sub_21496DABC;
    v23 = *(v0 + 808);
    v24 = *(v0 + 394);
    v25 = *(v0 + 393);

    return sub_21497274C(v25, v24);
  }

  return result;
}

uint64_t sub_21496DABC()
{
  v1 = *v0;
  v2 = *(*v0 + 920);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 928) = v4;
  *v4 = v3;
  v4[1] = sub_21496DC08;
  v5 = *(v1 + 808);
  v6 = *(v1 + 394);
  v7 = *(v1 + 393);

  return sub_214971EE8(v7, v6);
}

uint64_t sub_21496DC08()
{
  v1 = *v0;
  v2 = *(*v0 + 928);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 936) = v4;
  *v4 = v3;
  v4[1] = sub_21496DD54;
  v5 = *(v1 + 808);
  v6 = *(v1 + 394);
  v7 = *(v1 + 393);

  return sub_214973180(v7, v6);
}

uint64_t sub_21496DD54()
{
  v1 = *(*v0 + 936);
  v2 = *(*v0 + 904);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_21496DE64, v2, 0);
}

uint64_t sub_21496DE64()
{
  v45 = v0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 864);
  v42 = *(v0 + 848);
  v3 = *(*(v0 + 808) + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel);
  *(v0 + 784) = v3;
  swift_getKeyPath();
  sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel);

  sub_21498E3D0();

  swift_getKeyPath();
  sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
  sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState);
  v40 = v3;
  sub_21498F6A0();

  sub_214975F78(v2, v1, type metadata accessor for MailCleanupState);
  v39 = v1;
  v38 = *(v42 + 24);
  v4 = *(*(v1 + v38) + 16);

  if (v4)
  {
    v6 = *(v0 + 824);
    v7 = *(v6 + 72);
    v41 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v43 = *(v0 + 816);
    v8 = v5 + v41;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = *(v0 + 872);
      v12 = *(v0 + 840);
      sub_214975F78(v8, v12, type metadata accessor for MATipDismissal);
      v13 = *v11;
      *(swift_task_alloc() + 16) = v12;

      sub_21496C298(sub_21492610C, v13, __src);

      memcpy((v0 + 400), __src, 0x179uLL);
      memcpy((v0 + 16), __src, 0x179uLL);
      if (get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(v0 + 16) == 1)
      {
        v10 = *(v0 + 840);
      }

      else
      {
        sub_21489DFCC(v0 + 400, &qword_27CA1AAB0, &qword_214993648);
        v10 = *(v0 + 840);
        if ((*(v0 + 392) & 1) != 0 && *(v10 + *(v43 + 24)) <= 2)
        {
          sub_214976070(v10, *(v0 + 832));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2148A9C5C(0, *(v9 + 16) + 1, 1);
          }

          v15 = *(v9 + 16);
          v14 = *(v9 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_2148A9C5C(v14 > 1, v15 + 1, 1);
          }

          v16 = *(v0 + 832);
          *(v9 + 16) = v15 + 1;
          sub_214976070(v16, v9 + v41 + v15 * v7);
          goto LABEL_5;
        }
      }

      sub_214950444(v10, type metadata accessor for MATipDismissal);
LABEL_5:
      v8 += v7;
      if (!--v4)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_15:
  v17 = *(v0 + 872);
  v18 = *(v0 + 864);
  v19 = *(v0 + 856);

  sub_214950444(v18, type metadata accessor for MailCleanupState);

  *(v39 + v38) = v9;
  *(v0 + 792) = v40;
  swift_getKeyPath();
  sub_21498E3D0();

  swift_getKeyPath();
  sub_21498F6A0();

  v20 = _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(v19, v17);
  sub_214950444(v19, type metadata accessor for MailCleanupState);
  if (!v20)
  {
    v21 = *(v0 + 856);
    sub_214975F78(*(v0 + 872), v21, type metadata accessor for MailCleanupState);
    *(v0 + 800) = v40;
    swift_getKeyPath();
    v22 = swift_task_alloc();
    *(v22 + 16) = v40;
    *(v22 + 24) = v21;
    sub_21498E3C0();

    sub_214950444(v21, type metadata accessor for MailCleanupState);
    sub_2148E3F20();
  }

  v23 = *(v0 + 912);
  v24 = *(v0 + 872);

  result = sub_214950444(v24, type metadata accessor for MailCleanupState);
  v26 = *(v23 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(*(v0 + 912) + 16) = v28;
    v29 = *(v0 + 912);
    if (!v28 && *(v29 + 24) == 1)
    {
      *(v29 + 24) = 0;
      sub_2148E3F20();
      v30 = *(v0 + 912);
    }

    v31 = *(v0 + 896);
    v32 = *(v0 + 872);
    v33 = *(v0 + 864);
    v34 = *(v0 + 856);
    v35 = *(v0 + 840);
    v36 = *(v0 + 832);

    v37 = *(v0 + 8);

    return v37();
  }

  return result;
}

uint64_t sub_21496E454()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC38, &qword_21499DE30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC40, &qword_21499DE38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  result = sub_21496C3B4();
  if (result)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC48, &qword_21499DE40);
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    type metadata accessor for MailCleanupSchemaV1.DataModel();
    sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
    sub_21498F650();
    v12 = sub_21498F5E0();
    (*(v6 + 8))(v9, v5);
    v18[0] = v0;
    if (v12 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21498FE90())
    {
      v14 = 0;
      while ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x216058EB0](v14, v12);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        sub_21498F5F0();

        ++v14;
        if (v16 == i)
        {
          goto LABEL_15;
        }
      }

      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v14 + 32);

      v16 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_21496F778(v17);
  }

  return result;
}

id sub_21496E74C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B600, &qword_214995ED8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v101 = &v93 - v4;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  v110 = v5;
  v111 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v105 = &v93 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v102 = &v93 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v103 = &v93 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v99 = &v93 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v100 = &v93 - v18;
  MEMORY[0x28223BE20](v17);
  v104 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC38, &qword_21499DE30);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v93 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC40, &qword_21499DE38);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v93 - v27;
  v29 = sub_21498E380();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(*__swift_project_boxed_opaque_existential_1((v1 + 16) *(v1 + 40)) + 40)];
  if (result)
  {
    v35 = result;
    v107 = sub_21498F870();
    v108 = v36;

    sub_21498E370();
    v106 = sub_21498E360();
    v38 = v37;
    (*(v30 + 8))(v33, v29);
    v39 = sub_21496C3B4();
    v40 = v1;
    v109 = v38;
    if (!v39)
    {
LABEL_9:
      v52 = type metadata accessor for MailCleanupSchemaV1.DataModel();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      v55 = v108;

      v56 = sub_2148E5368(v107, v55, v106, v38, v40, &off_2826CCA70);

      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v57 = v110;
      v58 = __swift_project_value_buffer(v110, qword_281194E18);
      v59 = v111;
      v60 = v105;
      (*(v111 + 16))(v105, v58, v57);
      v61 = sub_21498E670();
      v62 = sub_21498FBA0();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_21488E000, v61, v62, "[DataStore] inserting newly created model", v63, 2u);
        MEMORY[0x216059AC0](v63, -1, -1);
      }

      (*(v59 + 8))(v60, v57);
      v64 = *(v40 + OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___modelContext);
      if (v64)
      {
        sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);

        sub_21498F600();
        sub_214976060(v64);
      }

      return v56;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CC48, &qword_21499DE40);
    (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
    type metadata accessor for MailCleanupSchemaV1.DataModel();
    v42 = sub_214976158(&qword_281191F50, type metadata accessor for MailCleanupSchemaV1.DataModel);
    sub_21498F650();
    v43 = sub_21498F5E0();
    (*(v25 + 8))(v28, v24);

    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v44 = v110;
    v45 = __swift_project_value_buffer(v110, qword_281194E18);
    v46 = *(v111 + 16);
    v98 = v45;
    v46(v104);

    v47 = sub_21498E670();
    v48 = sub_21498FBA0();
    v49 = os_log_type_enabled(v47, v48);
    v38 = v109;
    v96 = v42;
    v97 = v43 >> 62;
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      if (v43 >> 62)
      {
        v51 = sub_21498FE90();
        v44 = v110;
      }

      else
      {
        v51 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v50 + 4) = v51;

      _os_log_impl(&dword_21488E000, v47, v48, "[DataStore] Total Cached Models %ld", v50, 0xCu);
      MEMORY[0x216059AC0](v50, -1, -1);

      v38 = v109;
    }

    else
    {
    }

    v66 = (v111 + 8);
    v65 = *(v111 + 8);
    result = v65(v104, v44);
    v95 = v46;
    if (v97)
    {
      v92 = v40;
      if (sub_21498FE90() != 1)
      {
LABEL_48:
        v104 = v66;
        v77 = sub_21498FE90();
        v40 = v92;
LABEL_36:

        if (v77)
        {
          (v46)(v103, v98, v44);
          v78 = sub_21498E670();
          v79 = sub_21498FBA0();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = v65;
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_21488E000, v78, v79, "[DataStore] Cache does not match user id and locale. Clearing...", v81, 2u);
            v82 = v81;
            v65 = v80;
            MEMORY[0x216059AC0](v82, -1, -1);
          }

          v65(v103, v44);
          sub_21496E454();
          v83 = v102;
          v95(v102, v98, v44);
          v84 = sub_21498E670();
          v85 = sub_21498FBA0();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = v65;
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&dword_21488E000, v84, v85, "[DataStore] Cleared", v87, 2u);
            MEMORY[0x216059AC0](v87, -1, -1);

            v86(v83, v44);
            goto LABEL_9;
          }
        }

        else
        {
          v88 = v46;
          v83 = v99;
          v88(v99, v98, v44);
          v84 = sub_21498E670();
          v89 = sub_21498FBA0();
          if (os_log_type_enabled(v84, v89))
          {
            v90 = v65;
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&dword_21488E000, v84, v89, "[DataStore] Cache is empty", v91, 2u);
            MEMORY[0x216059AC0](v91, -1, -1);

            v90(v83, v44);
            goto LABEL_9;
          }
        }

        v65(v83, v44);
        goto LABEL_9;
      }

      result = sub_21498FE90();
      if (!result)
      {
LABEL_47:
        v92 = v40;
        goto LABEL_48;
      }
    }

    else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
LABEL_35:
      v104 = v66;
      v77 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_36;
    }

    v94 = v65;
    if ((v43 & 0xC000000000000001) != 0)
    {
      v56 = MEMORY[0x216058EB0](0, v43);
      goto LABEL_23;
    }

    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v56 = *(v43 + 32);

LABEL_23:
      v67 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel___observationRegistrar;
      v112 = v56;
      swift_getKeyPath();
      sub_214976158(&qword_281191F48, type metadata accessor for MailCleanupSchemaV1.DataModel);
      v104 = v67;
      sub_21498E3D0();

      swift_getKeyPath();
      sub_21498F6A0();

      if (v112 == v107 && v113 == v108)
      {
      }

      else
      {
        v68 = sub_214990080();

        if ((v68 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v112 = v56;
      swift_getKeyPath();
      sub_21498E3D0();

      swift_getKeyPath();
      sub_21498F6A0();

      if (v112 == v106 && v113 == v109)
      {

LABEL_31:

        v70 = v100;
        v95(v100, v98, v44);
        v71 = sub_21498E670();
        v72 = sub_21498FBA0();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_21488E000, v71, v72, "[DataStore] Found cached model", v73, 2u);
          MEMORY[0x216059AC0](v73, -1, -1);
        }

        v94(v70, v44);
        *(v56 + 40) = &off_2826CCA70;
        swift_unknownObjectWeakAssign();
        swift_retain_n();

        v112 = v56;
        swift_getKeyPath();
        sub_21498E3D0();

        swift_getKeyPath();
        sub_214976158(&qword_281192040, type metadata accessor for MailCleanupState);
        v74 = v101;
        sub_21498F6A0();

        v75 = type metadata accessor for MailCleanupState();
        (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
        v76 = OBJC_IVAR____TtCO19iCloudMailAssistant19MailCleanupSchemaV19DataModel_persistedState;
        swift_beginAccess();
        sub_214975FF0(v74, v56 + v76);
        swift_endAccess();

        return v56;
      }

      v69 = sub_214990080();

      if (v69)
      {
        goto LABEL_31;
      }

LABEL_34:

      v38 = v109;
      v65 = v94;
      v46 = v95;
      if (!v97)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}